# 🚀 Deploy Be A Recovery Coach to Netlify

## Quick Deploy (5 Minutes)

### Step 1: Build the Site

```bash
cd bearecoverycoach-hugo
../bin/hugo
```

This creates the `public/` folder with your complete website.

### Step 2: Deploy to Netlify

#### Option A: Drag & Drop (Easiest)

1. Go to [netlify.com](https://netlify.com)
2. Sign up (free account)
3. Drag the `public/` folder onto Netlify's drop zone
4. Done! Your site is live at `random-name.netlify.app`

#### Option B: Git Deploy (Recommended for Updates)

1. **Create GitHub repo:**
   ```bash
   cd bearecoverycoach-hugo
   git init
   git add .
   git commit -m "Initial Hugo site for Be A Recovery Coach"
   ```

2. **Push to GitHub:**
   - Create new repo at github.com
   - Follow their push instructions

3. **Connect to Netlify:**
   - Log in to netlify.com
   - Click "New site from Git"
   - Choose GitHub
   - Select your repo
   - Build settings:
     - **Build command:** `hugo`
     - **Publish directory:** `public`
   - Click "Deploy site"

4. **Wait 1 minute**
   - Netlify builds and deploys automatically
   - You'll get a URL like `random-name.netlify.app`

### Step 3: Add Custom Domain

1. In Netlify, go to **Domain settings**
2. Click **Add custom domain**
3. Enter: `bearecoverycoach.com`
4. Netlify gives you DNS instructions
5. Go to your domain registrar (where you bought bearecoverycoach.com)
6. Update DNS records:
   ```
   A Record: @ → 75.2.60.5
   CNAME: www → your-site.netlify.app
   ```
7. Wait 5-60 minutes for DNS propagation
8. Netlify auto-enables SSL (HTTPS)

Done! Your site is live at bearecoverycoach.com 🎉

---

## Netlify Features You Get (FREE)

✅ **Hosting** - Unlimited bandwidth  
✅ **SSL** - Auto HTTPS  
✅ **CDN** - Global fast loading  
✅ **Form handling** - 100 submissions/month free  
✅ **Deploy previews** - See changes before going live  
✅ **Auto deploys** - Push to GitHub → auto updates  
✅ **Rollback** - Undo bad deploys instantly  

---

## Enable Netlify Forms

Edit `content/apply.md`, add `netlify` attribute to form:

```html
<form netlify name="application" method="POST">
```

Netlify will:
- Capture all form submissions
- Email you when someone applies
- Store data in Netlify dashboard
- Prevent spam (built-in)

**No backend code needed!**

---

## Update Workflow (After Initial Deploy)

### Make changes:

1. Edit content files (markdown in `content/`)
2. Preview locally: `./preview.sh`
3. Commit changes:
   ```bash
   git add .
   git commit -m "Updated pricing page"
   git push
   ```

4. Netlify auto-deploys! (1-2 minutes)

---

## Environment Variables (If Needed)

For API keys, secrets, etc:

1. Netlify dashboard → Site settings → Environment variables
2. Add variables
3. Access in Hugo config or JS

---

## Custom 404 Page

Create `content/404.md`:

```markdown
---
title: "Page Not Found"
---

Oops! This page doesn't exist.

[Go home](/) or [apply now](/apply/)
```

Hugo auto-creates 404.html, Netlify serves it.

---

## Analytics Setup

### Google Analytics:

1. Get tracking ID from analytics.google.com
2. Edit `themes/bearc/layouts/_default/baseof.html`
3. Add before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

### Plausible (Privacy-friendly alternative):

1. Sign up at plausible.io
2. Add one line before `</head>`:

```html
<script defer data-domain="bearecoverycoach.com" src="https://plausible.io/js/script.js"></script>
```

---

## Performance Optimization

Hugo sites are already fast, but:

### Image Optimization:

Install Hugo extended (already have it!), use:

```markdown
{{< figure src="/images/photo.jpg" alt="Description" >}}
```

Hugo will auto-resize/optimize.

### Minify CSS/JS:

Edit `hugo.toml`:

```toml
[minify]
  minifyOutput = true
```

### Lazy Loading:

Add to images:

```html
<img src="/images/photo.jpg" loading="lazy" alt="Description">
```

---

## Troubleshooting

### Site not building?

Check Netlify build log:
- Netlify dashboard → Deploys → Click latest deploy → View logs
- Look for errors

Common issues:
- Hugo version mismatch → Set in `netlify.toml`
- Missing theme → Make sure `themes/bearc/` is committed

### Create `netlify.toml`:

```toml
[build]
  publish = "public"
  command = "hugo"

[build.environment]
  HUGO_VERSION = "0.139.3"
```

### Domain not working?

- Check DNS propagation: dnschecker.org
- Verify DNS records match Netlify's instructions
- Wait up to 48 hours (usually 5-60 minutes)

### Forms not working?

- Make sure form has `netlify` attribute
- Check Netlify dashboard → Forms
- Verify site is deployed (not just preview)

---

## Next Steps After Deploy

1. **Test everything:**
   - Click all links
   - Submit test application
   - Check mobile
   - Verify HTTPS

2. **Set up Google Search Console:**
   - Add bearecoverycoach.com
   - Submit sitemap: `bearecoverycoach.com/sitemap.xml`

3. **Monitor:**
   - Netlify analytics
   - Google Analytics
   - Form submissions

4. **Launch marketing:**
   - Google Ads → new site
   - LinkedIn posts
   - Email pilot grads

---

## Support

**Netlify docs:** https://docs.netlify.com  
**Hugo docs:** https://gohugo.io  
**Need help?** Just ask me!

Ready to deploy! 🚀
