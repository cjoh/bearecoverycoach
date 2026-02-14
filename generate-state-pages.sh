#!/bin/bash

# Generate state-specific recovery coach training pages

states=(
    "Alabama:AL:Montgomery"
    "Alaska:AK:Juneau"
    "Arizona:AZ:Phoenix"
    "Arkansas:AR:Little Rock"
    "California:CA:Sacramento"
    "Colorado:CO:Denver"
    "Connecticut:CT:Hartford"
    "Delaware:DE:Dover"
    "Florida:FL:Tallahassee"
    "Georgia:GA:Atlanta"
    "Hawaii:HI:Honolulu"
    "Idaho:ID:Boise"
    "Illinois:IL:Springfield"
    "Indiana:IN:Indianapolis"
    "Iowa:IA:Des Moines"
    "Kansas:KS:Topeka"
    "Kentucky:KY:Frankfort"
    "Louisiana:LA:Baton Rouge"
    "Maine:ME:Augusta"
    "Maryland:MD:Annapolis"
    "Massachusetts:MA:Boston"
    "Michigan:MI:Lansing"
    "Minnesota:MN:Saint Paul"
    "Mississippi:MS:Jackson"
    "Missouri:MO:Jefferson City"
    "Montana:MT:Helena"
    "Nebraska:NE:Lincoln"
    "Nevada:NV:Carson City"
    "New Hampshire:NH:Concord"
    "New Jersey:NJ:Trenton"
    "New Mexico:NM:Santa Fe"
    "New York:NY:Albany"
    "North Carolina:NC:Raleigh"
    "North Dakota:ND:Bismarck"
    "Ohio:OH:Columbus"
    "Oklahoma:OK:Oklahoma City"
    "Oregon:OR:Salem"
    "Pennsylvania:PA:Harrisburg"
    "Rhode Island:RI:Providence"
    "South Carolina:SC:Columbia"
    "South Dakota:SD:Pierre"
    "Tennessee:TN:Nashville"
    "Texas:TX:Austin"
    "Utah:UT:Salt Lake City"
    "Vermont:VT:Montpelier"
    "Virginia:VA:Richmond"
    "Washington:WA:Olympia"
    "West Virginia:WV:Charleston"
    "Wisconsin:WI:Madison"
    "Wyoming:WY:Cheyenne"
)

mkdir -p content/states

for state in "${states[@]}"; do
    IFS=':' read -r name abbr capital <<< "$state"
    
    filename=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
    
    cat > "content/states/${filename}.md" << EOF
---
title: "How to Become a Recovery Coach in ${name}: Training & Certification Guide"
description: "Complete guide to becoming an ICF-certified recovery coach in ${name}. Requirements, training programs, salary data, and career opportunities in ${abbr}."
date: 2026-02-14
state: "${name}"
stateAbbr: "${abbr}"
---

# How to Become a Recovery Coach in ${name}

**Want to become a certified recovery coach in ${name}?** This guide covers everything you need to know: training requirements, ICF certification, salary data, and career opportunities specific to ${abbr}.

---

## Quick Summary: Recovery Coach Requirements in ${name}

**Training Required:**
- 60-125 hours ICF-accredited coach training (online programs accepted)
- Recovery/addiction specialization recommended
- No state license required in ${abbr}

**Certification Options:**
- ICF ACC (Associate Certified Coach) - Gold standard
- State-specific certifications (varies by ${abbr})
- Peer Recovery Specialist certification (optional)

**Timeline:**
- Training: 20 weeks (part-time)
- Building practice: 3-6 months
- ICF ACC credential: 8-12 months total

**Cost:**
- Training: \$1,099-3,000
- ICF credential: ~\$300 application fee
- Total investment: \$1,500-3,500

**Salary in ${name}:**
- Part-time: \$20,000-40,000/year
- Full-time: \$50,000-80,000/year
- Experienced (ICF PCC): \$80,000-120,000/year

---

## Step 1: Understand Recovery Coaching in ${name}

### What Recovery Coaches Do

Recovery coaches in ${name} help individuals and families:
- Set recovery-focused goals
- Create action plans with accountability
- Navigate post-treatment transitions
- Build recovery capital (internal + external resources)
- Connect to local ${abbr} recovery resources

**Key distinction:** Coaches don't provide therapy or clinical treatment. They focus on forward-looking goals and sustainable lifestyle design.

### Recovery Coaching vs Other Roles

**Recovery Coach:**
- Future-focused, goal-oriented
- No license required in ${abbr}
- 60-125 hours training
- \$75-200/session typical

**Licensed Therapist (LCSW, LPC):**
- Past-focused, trauma treatment
- State license required
- Master's degree + 2,000+ supervised hours
- \$100-250/session

**Sponsor (12-Step):**
- Peer mentorship, step work
- No training required
- Free (12-step tradition)

**Peer Recovery Specialist:**
- Lived experience credential
- State certification (varies)
- Often employed by treatment facilities
- \$15-25/hour typical

### The ${name} Recovery Landscape

**Key stats for ${abbr}:**
- Substance use treatment facilities: [varies by state]
- Active recovery community (AA, NA, Al-Anon meetings)
- Growing demand for recovery coaches post-COVID
- Insurance coverage: Limited but emerging

**Major cities for recovery coaching:**
${name === "Utah" ? "- Salt Lake City, Provo, Ogden, St. George" :
  name === "California" ? "- Los Angeles, San Francisco, San Diego, Sacramento" :
  name === "Texas" ? "- Houston, Dallas, Austin, San Antonio" :
  name === "Florida" ? "- Miami, Orlando, Tampa, Jacksonville" :
  name === "New York" ? "- New York City, Buffalo, Rochester, Albany" :
  "- ${capital} and major metro areas"}

---

## Step 2: Choose ICF-Accredited Training (Online Works!)

### Why ICF Accreditation Matters in ${name}

**International Coaching Federation (ICF)** is the global standard for coaching credentials.

**Benefits in ${abbr}:**
- Treatment centers increasingly require ICF for employment
- Families search "ICF recovery coach ${name}"
- Higher rates (\$125-200/session vs \$50-75 non-credentialed)
- Differentiates you from uncredentialed coaches
- Portable (move to another state, credential transfers)

### Online Training (Accepted in ${name})

**You don't need to live near a training center.** ICF-accredited online programs are fully accepted in ${abbr}.

**CVR Level 1 Training (Recommended):**
- ✅ ICF Level 1 Accredited (80 hours)
- ✅ Family recovery specialization
- ✅ 100% online (live Zoom + self-paced)
- ✅ Platform included (Same Page Notes)
- ✅ \$1,099 total

**Timeline:** 20 weeks part-time

[Learn more about CVR training →](/curriculum/)

### What to Look For in Training

**Must-haves:**
- ICF accreditation (Level 1 or 2)
- Recovery/addiction specialization
- Includes mentor coaching (saves \$500-1,500 later)
- Business training (how to get clients)

**Nice-to-haves:**
- Platform/tools included
- Referral network
- Alumni community
- Job board access

---

## Step 3: Complete Training & Launch Practice

### During Training (Weeks 1-20)

**What you'll learn:**
- ICF 8 Core Competencies
- Recovery-specific coaching frameworks
- Ethics and boundaries
- Client assessment tools
- Business basics (pricing, contracts, marketing)

**Practice clients:**
- Start coaching during training
- 10-20 practice sessions typical
- Some programs provide client referrals

### Immediately Post-Training

**Launch your ${abbr} practice:**

**1. Set up infrastructure:**
- Professional email (yourname@recoverycoach.com)
- Website or online presence
- Scheduling system
- Session note platform

**2. Get first paying clients:**
- Treatment center partnerships (${abbr} facilities)
- Therapist referrals (local ${name} providers)
- Recovery community connections (meetings, events)
- Online presence (Google My Business, LinkedIn)

**3. Pricing for ${name} market:**
- Starting rate: \$75-100/session
- After 10 clients: \$100-125
- With ICF ACC: \$125-175
- Experienced: \$175-250

${name === "California" || name === "New York" || name === "Massachusetts" ? 
  "**Note:** Higher cost of living in major ${abbr} metros supports premium pricing (\$150-300/session in metro areas)." :
  name === "Utah" || name === "Texas" || name === "Florida" ?
  "**Note:** Growing ${abbr} recovery market with strong demand for credentialed coaches." :
  ""}

---

## Step 4: Pursue ICF ACC Credential (8-12 Months)

### ACC Requirements (Same in All States)

**What you need:**
1. ✅ 60+ hours ICF-accredited training
2. ✅ 100 coaching hours (75 paid)
3. ✅ 10 hours mentor coaching
4. ✅ Performance evaluation (submit recorded session)
5. ✅ ICF application + fee (~\$300)

### Building Your 100 Hours in ${name}

**If you coach:**
- 5 clients × 2 sessions/month = 10 hours/month → 10 months to 100 hours
- 10 clients × 2 sessions/month = 20 hours/month → 5 months to 100 hours

**Client pipeline strategies for ${abbr}:**
- Partner with local treatment centers
- Network with ${name} therapists (ask for referrals)
- Join ${abbr} recovery professional organizations
- Attend addiction counselor conferences in ${name}
- Google Ads targeting "${name} recovery coach"

---

## Recovery Coach Salary in ${name}

### Realistic Income Expectations (${abbr})

**Part-Time (5-10 clients):**
- \$1,500-4,000/month
- \$18,000-48,000/year

**Full-Time (15-20 clients):**
- \$5,000-10,000/month
- \$60,000-120,000/year

**Employed (Treatment Centers in ${abbr}):**
- \$40,000-65,000/year salary
- Benefits included

${name === "California" ? 
  "**California note:** Higher salaries in metro areas. SF Bay Area coaches charge \$150-300/session." :
  name === "New York" ?
  "**New York note:** NYC coaches command premium rates (\$200-300). Upstate NY more moderate (\$100-150)." :
  name === "Utah" ?
  "**Utah note:** Strong recovery community + growing demand. Coaches in SLC area: \$100-175/session typical." :
  ""}

### Factors Affecting ${name} Salary

**Higher earnings:**
- ✅ ICF ACC/PCC credential
- ✅ Niche specialization (family recovery, executive, trauma-informed)
- ✅ Urban/metro location
- ✅ Business skills (marketing, referrals)
- ✅ Years of experience

**Lower earnings:**
- ❌ No credential
- ❌ Generic positioning
- ❌ Rural location
- ❌ Poor marketing
- ❌ Early career

---

## Career Opportunities for ${name} Recovery Coaches

### Employment Options in ${abbr}

**1. Private Practice (Self-Employed):**
- Set your own rates
- Choose your clients
- Flexible schedule
- Income: \$40,000-120,000/year potential

**2. Treatment Centers (${name} facilities):**
- Residential programs
- Outpatient centers
- Sober living homes
- Income: \$40,000-65,000/year salary + benefits

**3. Healthcare Systems:**
- Hospital-based addiction programs
- Integrated behavioral health
- Expanding in ${abbr}
- Income: \$50,000-75,000/year

**4. Telehealth (Virtual Coaching):**
- Serve clients anywhere (not just ${abbr})
- Lower overhead
- Growing market
- Income: Similar to private practice

**5. Corporate/EAP Programs:**
- Employee assistance programs
- Corporate wellness
- Emerging market
- Income: \$60,000-90,000/year

---

## ${name}-Specific Resources

### Treatment Centers & Recovery Organizations

**Major treatment providers in ${abbr}:**
${name === "Utah" ? 
  "- Odyssey House\n- Volunteers of America\n- The Other Side Academy\n- Utah County Drug Court" :
  "- [Check SAMHSA treatment locator for ${name} facilities]"}

**Recovery community:**
- AA Intergroup (${abbr})
- NA Regional Service Office
- Al-Anon Family Groups (${name})
- SMART Recovery meetings
- Celebrate Recovery churches

### Professional Associations

**National:**
- International Coaching Federation (ICF)
- Association of Recovery Community Organizations (ARCO)
- NAADAC (addiction professionals)

**State-specific:**
- ${name} Counselor Association
- ${abbr} Addiction Professionals
- Recovery community coalitions

### Continuing Education in ${name}

**Where to find training:**
- ICF ${abbr} chapter events
- Addiction conferences (NAADAC, etc.)
- Online webinars and courses
- University extension programs

---

## Legal & Regulatory Considerations in ${name}

### Licensing Requirements

**Recovery coaching in ${abbr}:**
- ❌ No state license required (as of 2026)
- ✅ Voluntary certification (ICF, state peer specialist)
- ⚠️ Don't call yourself "counselor" or "therapist" (those are licensed)

### Scope of Practice

**What you CAN do in ${name}:**
- Provide coaching services
- Set goals and create action plans
- Offer accountability support
- Connect clients to resources
- Teach skills (communication, boundaries, etc.)

**What you CANNOT do:**
- Diagnose mental health conditions
- Provide clinical therapy
- Prescribe medication
- Hold yourself out as licensed professional (unless you are)

### Insurance & Liability

**Recommendations for ${abbr} coaches:**
- Professional liability insurance (\$200-500/year)
- Business liability if seeing clients in-person
- Contracts with clear scope of work
- HIPAA compliance if working with healthcare providers

---

## Frequently Asked Questions (${name})

**Q: Do I need to live in ${name} to coach ${abbr} residents?**  
A: No! Online coaching is fully accepted. You can be licensed/certified anywhere and coach ${name} clients virtually.

**Q: Can I coach in ${name} if I'm certified in another state?**  
A: Yes. Recovery coaching has no state-specific licensing (unlike therapy). ICF credentials are portable.

**Q: Do I need lived recovery experience to coach in ${abbr}?**  
A: Not required, but common. Many successful coaches have personal or family recovery experience.

**Q: Will insurance cover recovery coaching in ${name}?**  
A: Rarely (as of 2026), but changing. Some insurance companies piloting coaching coverage. Check with individual plans.

**Q: How long until I can support myself as a coach in ${abbr}?**  
A: Most coaches: 6-12 months to replace part-time income, 12-24 months for full-time if building from scratch.

**Q: Are there grants or scholarships for training in ${name}?**  
A: Some programs offer scholarships for people in recovery. Ask training providers. Workforce development funds may apply in ${abbr}.

---

## Next Steps: Become a Recovery Coach in ${name}

### This Week:
1. **Research ICF-accredited programs** (online works!)
2. **Connect with ${name} recovery coaches** (ask about their experience)
3. **Attend ${abbr} recovery meetings** (build network)

### This Month:
4. **Enroll in training** (20-week timeline)
5. **Join ICF ${abbr} chapter** (if exists)
6. **Plan your ${name} practice** (niche, pricing, marketing)

### This Year:
7. **Complete training** (graduate!)
8. **Launch ${abbr} practice** (first clients)
9. **Work toward ICF ACC** (100 hours)

---

<div style="background: var(--primary-navy); color: white; padding: 3rem; text-align: center; margin: 4rem 0;">

## Ready to Start Your ${name} Recovery Coaching Career?

**CVR Level 1 Training:**
- ✅ ICF Level 1 Accredited (accepted in ${abbr})
- ✅ 100% online (live from anywhere)
- ✅ Family recovery specialization
- ✅ Platform + tools included
- ✅ \$1,099 total

**Serves coaches in all 50 states, including ${name}.**

<a href="/apply/" class="btn btn--large btn--primary" style="margin-top: 2rem;">Apply for Next Cohort</a>

**Questions?** Email [clay@bearecoverycoach.com](mailto:clay@bearecoverycoach.com)

</div>

---

**Related Pages:**
- [How to Become an ICF-Certified Recovery Coach](/blog/how-to-become-icf-certified-recovery-coach/)
- [Recovery Coach Salary Guide](/blog/recovery-coach-salary/)
- [Recovery Coach vs Therapist vs Sponsor](/recovery-coach-vs-therapist-vs-sponsor/)
- [Full Curriculum Details](/curriculum/)

---

*Last updated: February 2026. Requirements and regulations may change. Verify current ${name} requirements with state agencies and professional organizations.*
EOF
    
    echo "Created: content/states/${filename}.md"
done

echo ""
echo "✅ Generated 50 state pages in content/states/"
echo "Run 'hugo' to build site with new pages."
