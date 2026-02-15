const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);

module.exports = async (req, res) => {
  if (req.method !== 'POST') {
    res.setHeader('Allow', 'POST');
    return res.status(405).json({ error: 'Method not allowed' });
  }

  try {
    const { fullName, email, phone, background, whyCoaching } = req.body;

    if (!fullName || !email || !phone || !whyCoaching) {
      return res.status(400).json({ error: 'Missing required fields' });
    }

    const baseUrl = process.env.BASE_URL || 'https://bearecoverycoach.com';

    const session = await stripe.checkout.sessions.create({
      payment_method_types: ['card'],
      mode: 'payment',
      customer_email: email,
      line_items: [
        {
          price_data: {
            currency: 'usd',
            product_data: {
              name: 'Core Values Recovery Coach Certification',
              description: '20-week ICF ACC based program with lifetime support',
            },
            unit_amount: 237900, // $2,379.00 in cents
          },
          quantity: 1,
        },
      ],
      metadata: {
        fullName,
        email,
        phone,
        background: (background || '').substring(0, 500),
        whyCoaching: whyCoaching.substring(0, 500),
      },
      success_url: `${baseUrl}/application-success/`,
      cancel_url: `${baseUrl}/apply/`,
    });

    return res.status(200).json({ url: session.url });
  } catch (err) {
    console.error('Checkout session error:', err.message);
    return res.status(500).json({ error: 'Failed to create checkout session' });
  }
};
