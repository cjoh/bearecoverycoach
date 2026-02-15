const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);

function buffer(req) {
  return new Promise((resolve, reject) => {
    const chunks = [];
    req.on('data', (chunk) => chunks.push(chunk));
    req.on('end', () => resolve(Buffer.concat(chunks)));
    req.on('error', reject);
  });
}

async function handler(req, res) {
  if (req.method !== 'POST') {
    res.setHeader('Allow', 'POST');
    return res.status(405).json({ error: 'Method not allowed' });
  }

  const rawBody = await buffer(req);
  const sig = req.headers['stripe-signature'];

  let event;
  try {
    event = stripe.webhooks.constructEvent(
      rawBody,
      sig,
      process.env.STRIPE_WEBHOOK_SECRET
    );
  } catch (err) {
    console.error('Webhook signature verification failed:', err.message);
    return res.status(400).json({ error: 'Invalid signature' });
  }

  if (event.type === 'checkout.session.completed') {
    const session = event.data.object;
    const meta = session.metadata || {};

    const sheetsUrl = process.env.GOOGLE_SHEETS_WEBHOOK_URL;
    if (!sheetsUrl) {
      console.error('GOOGLE_SHEETS_WEBHOOK_URL not configured');
      return res.status(500).json({ error: 'Sheets webhook not configured' });
    }

    try {
      const response = await fetch(sheetsUrl, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          date: new Date().toISOString(),
          name: meta.fullName || '',
          email: meta.email || '',
          phone: meta.phone || '',
          background: meta.background || '',
          whyCoaching: meta.whyCoaching || '',
          paymentId: session.payment_intent,
          amount: (session.amount_total / 100).toFixed(2),
          status: session.payment_status,
        }),
      });

      if (!response.ok) {
        console.error('Google Sheets POST failed:', response.status);
      }
    } catch (err) {
      console.error('Google Sheets POST error:', err.message);
    }
  }

  return res.status(200).json({ received: true });
}

// Disable Vercel's body parsing so we can verify the Stripe signature
module.exports = handler;
module.exports.config = {
  api: {
    bodyParser: false,
  },
};
