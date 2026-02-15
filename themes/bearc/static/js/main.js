// Be A Recovery Coach - Main JavaScript
// Editorial Transformation Design

document.addEventListener('DOMContentLoaded', function() {
    
    // Sticky header with shadow on scroll
    const header = document.querySelector('.site-header');
    let lastScroll = 0;
    
    window.addEventListener('scroll', () => {
        const currentScroll = window.pageYOffset;
        
        if (currentScroll > 50) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
        
        lastScroll = currentScroll;
    });
    
    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                const headerOffset = 80;
                const elementPosition = target.getBoundingClientRect().top;
                const offsetPosition = elementPosition + window.pageYOffset - headerOffset;
                
                window.scrollTo({
                    top: offsetPosition,
                    behavior: 'smooth'
                });
            }
        });
    });
    
    // Intersection Observer for scroll animations
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -100px 0px'
    };
    
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('animate-on-scroll');
                // Unobserve after animation to prevent re-triggering
                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);
    
    // Observe cards and sections
    document.querySelectorAll('.card, .section-header').forEach((el) => {
        observer.observe(el);
    });
    
    // Staggered animation delays for cards in grids
    document.querySelectorAll('.grid').forEach(grid => {
        const cards = grid.querySelectorAll('.card');
        cards.forEach((card, index) => {
            card.style.animationDelay = `${index * 0.1}s`;
        });
    });
    
    // Application form: validate and submit to Stripe Checkout
    const appForm = document.getElementById('application-form');
    if (appForm) {
        appForm.addEventListener('submit', async function(e) {
            e.preventDefault();

            const requiredFields = appForm.querySelectorAll('[required]');
            let isValid = true;

            requiredFields.forEach(field => {
                if (!field.value.trim()) {
                    isValid = false;
                    field.style.borderColor = '#ff6b5a';
                } else {
                    field.style.borderColor = '#e5e7eb';
                }
            });

            if (!isValid) {
                alert('Please fill in all required fields.');
                return;
            }

            const submitBtn = appForm.querySelector('button[type="submit"]');
            const originalText = submitBtn.textContent;
            submitBtn.disabled = true;
            submitBtn.textContent = 'Processing...';

            try {
                const res = await fetch('/api/create-checkout-session', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        fullName: appForm.querySelector('[name="full-name"]').value.trim(),
                        email: appForm.querySelector('[name="email"]').value.trim(),
                        phone: appForm.querySelector('[name="phone"]').value.trim(),
                        background: appForm.querySelector('[name="background"]').value.trim(),
                        whyCoaching: appForm.querySelector('[name="why-coaching"]').value.trim(),
                    }),
                });

                const data = await res.json();

                if (data.url) {
                    window.location.href = data.url;
                } else {
                    throw new Error(data.error || 'Something went wrong');
                }
            } catch (err) {
                alert('There was a problem submitting your application. Please try again or contact clay@bearecoverycoach.com for help.');
                submitBtn.disabled = false;
                submitBtn.textContent = originalText;
            }
        });
    }

    // Generic form validation for other forms
    const otherForms = document.querySelectorAll('form:not(#application-form)');
    otherForms.forEach(form => {
        form.addEventListener('submit', function(e) {
            const requiredFields = form.querySelectorAll('[required]');
            let isValid = true;

            requiredFields.forEach(field => {
                if (!field.value.trim()) {
                    isValid = false;
                    field.style.borderColor = '#ff6b5a';
                } else {
                    field.style.borderColor = '#e5e7eb';
                }
            });

            if (!isValid) {
                e.preventDefault();
                alert('Please fill in all required fields.');
            }
        });
    });
    
    // Add parallax effect to hero content (subtle)
    const heroContent = document.querySelector('.hero-content');
    if (heroContent) {
        window.addEventListener('scroll', () => {
            const scrolled = window.pageYOffset;
            const heroHeight = heroContent.closest('.hero').offsetHeight;
            // Only apply parallax while hero is in view
            if (scrolled < heroHeight) {
                heroContent.style.transform = `translateY(${scrolled * 0.3}px)`;
                heroContent.style.opacity = 1 - (scrolled / heroHeight) * 0.5;
            }
        });
    }
    
    // Mobile menu toggle (placeholder for future implementation)
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    const navMenu = document.querySelector('.nav-menu');
    
    if (menuToggle && navMenu) {
        menuToggle.addEventListener('click', () => {
            navMenu.classList.toggle('active');
            menuToggle.classList.toggle('active');
        });
    }
    
});

// Number counter animation for stats
function animateCounter(element, target, duration = 2000) {
    const start = 0;
    const increment = target / (duration / 16); // 60fps
    let current = start;
    
    const timer = setInterval(() => {
        current += increment;
        if (current >= target) {
            element.textContent = target;
            clearInterval(timer);
        } else {
            element.textContent = Math.floor(current);
        }
    }, 16);
}

// Trigger counter animations when stats come into view
const statsObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            const statNumber = entry.target.querySelector('.stat-number');
            if (statNumber && !statNumber.dataset.animated) {
                const targetValue = parseInt(statNumber.textContent);
                if (!isNaN(targetValue)) {
                    animateCounter(statNumber, targetValue);
                    statNumber.dataset.animated = 'true';
                }
            }
        }
    });
}, { threshold: 0.5 });

document.querySelectorAll('.stat').forEach(stat => {
    statsObserver.observe(stat);
});
