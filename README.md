# Be A Recovery Coach - Hugo Site

**ICF-accredited family recovery coach training website**

Built with Hugo + custom editorial design theme.

## 🎨 Design Philosophy

**Aesthetic:** Editorial Transformation  
**Fonts:** Cormorant Garamond (display) + Source Sans 3 (body)  
**Colors:** Deep navy, warm coral accents, cream backgrounds  
**Style:** Magazine-inspired, bold typography, generous spacing  
**Motion:** Purposeful fade-ins, scroll animations, staggered reveals

Avoids generic AI aesthetics (Inter, purple gradients, cookie-cutter layouts).

## 🚀 Quick Start

### Preview Locally:
```bash
cd bearecoverycoach-hugo
../bin/hugo server -D
```

Then open: http://localhost:1313

### Build for Production:
```bash
cd bearecoverycoach-hugo
../bin/hugo
```

Output goes to `public/` folder.

## 📁 Structure

```
bearecoverycoach-hugo/
├── content/              # Markdown content pages
│   ├── apply.md
│   ├── pricing.md
│   └── ... (add more pages here)
├── themes/bearc/         # Custom theme
│   ├── layouts/          # HTML templates
│   │   ├── _default/
│   │   ├── partials/
│   │   └── index.html
│   └── static/           # CSS, JS, images
│       ├── css/main.css
│       └── js/main.js
├── static/               # Site-wide static files
├── hugo.toml             # Site configuration
└── public/               # Generated site (after build)
```

## 📝 Adding Content

### Create a new page:
```bash
../bin/hugo new content/curriculum.md
```

Edit the markdown file, add frontmatter:
```yaml
---
title: "Curriculum"
description: "9-module ICF curriculum"
label: "What You'll Learn"
---
```

### Create a blog post:
```bash
../bin/hugo new content/blog/my-post.md
```

## 🎨 Customization

### Change colors:
Edit `themes/bearc/static/css/main.css` CSS variables:
```css
:root {
    --primary-navy: #0a2540;
    --accent-coral: #ff6b5a;
    /* etc */
}
```

### Update site config:
Edit `hugo.toml` for menu, params, etc.

### Add images:
Place in `static/images/` and reference as `/images/yourfile.jpg`

## 🚀 Deployment

### Option 1: Netlify (Recommended - FREE)
1. Push to GitHub
2. Connect repo to Netlify
3. Build command: `hugo`
4. Publish directory: `public`
5. Add domain: bearecoverycoach.com

### Option 2: Vercel (FREE)
Similar to Netlify.

### Option 3: Traditional Hosting
Build site (`hugo`), upload `public/` folder.

## ✅ What's Complete

- [x] Hugo site structure
- [x] Custom editorial design theme
- [x] Homepage (full sales page)
- [x] Apply page (application form)
- [x] Pricing & FAQ page
- [x] Responsive mobile design
- [x] Scroll animations
- [x] Navigation & footer
- [x] SEO-optimized structure

## 📋 Still Needed

### Content Pages:
- [ ] `/content/curriculum.md` - Full curriculum details
- [ ] `/content/platform.md` - Same Page Notes showcase
- [ ] `/content/success-stories.md` - Testimonials
- [ ] `/content/about.md` - Mission & story

### Assets:
- [ ] Logo image
- [ ] Photos/screenshots
- [ ] ICF badge

### Technical:
- [ ] Form submission backend
- [ ] Email capture integration
- [ ] Analytics tracking

## 🎯 Next Steps

1. **Preview the site:** `../bin/hugo server -D`
2. **Create remaining pages** (curriculum, platform, etc.)
3. **Add images** to `static/images/`
4. **Deploy to Netlify**
5. **Point domain DNS**

## 💡 Tips

- **Content is in Markdown** - easy to edit, no HTML needed
- **Templates handle layout** - change once, applies everywhere
- **Static = fast & secure** - no database, no server-side code
- **Hugo is FAST** - builds in milliseconds

---

**Questions?** Check Hugo docs: https://gohugo.io/

Ready to launch! 🚀
