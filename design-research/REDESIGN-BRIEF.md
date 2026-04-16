# Consilix Website Redesign Brief

*Design research prepared for the rebuild of consilix.ai. Not a build spec. No code.*

Prepared: 2026-04-16

---

## Summary

The current [consilix.ai](https://consilix.ai) reads as a generic AI-consultancy template: orange accent bars, 3D brain, "Transform your business" hero, four-pillar icon grid. The FINN proposal is a far better starting point — editorial, quiet, confident. The target buyer (UK, non-technical, ops-heavy, AI-late) is not looking for futurism but for a calm adult who removes risk. Three imperatives: (1) replace AI-agency visual language entirely, (2) lead with real process and outcomes not capability claims, (3) make James visible — the solo founder is the single strongest trust signal.

---

## 1. Competitor & reference teardowns

Ten live references, pulled and read for this brief.

### 1.1 Anthropic — [anthropic.com](https://anthropic.com)
- **Does:** Frontier AI research lab.
- **Visual win:** Cream background (`~#f5f0e8`), warm terracotta accent (`#d97757`), near-black text (`#131314`). Fluid type, generous whitespace, restrained Lottie animation. The warmth disarms — this is the *opposite* of the "dark mode AI company" cliché.
- **Copy win:** "AI research and products that put safety at the frontier." Plain, grown-up, no verbs like "transform."
- **Fails:** Nothing significant for a reference of this level.
- **Steal:** The warm cream + terracotta + near-black triad. A single Lottie moment on the hero that respects `prefers-reduced-motion`.

### 1.2 Koto — [koto.com](https://koto.com)
- **Does:** Global branding studio.
- **Visual win:** Black base, white type, restraint. Slow reveals, video thumbnails with year + category tag + one-line challenge.
- **Copy win:** *"We make ambitious ideas for ambitious brands. Five offices, one studio, united by optimism, collaboration, and craft."* Aspiration + operational detail.
- **Fails:** Ruthlessly minimal — not a template for a solo founder who needs to establish credibility fast.
- **Steal:** Case-study card format: *Year · Category · One-line challenge · Outcome.*

### 1.3 Pentagram — [pentagram.com](https://pentagram.com)
- **Does:** Design partnership.
- **Visual win:** White, black, red only. Projects as modular cards with sector tags. Partner quotes punctuate the page.
- **Copy win:** *"We design Everything for Everyone."* Flat declarative. Confidence without adjectives.
- **Fails:** IA is enormous — irrelevant at Consilix's scale.
- **Steal:** Pull-quote from the founder as an editorial device. Sector/discipline tagging on case studies.

### 1.4 Red Antler — [redantler.com](https://redantler.com)
- **Does:** Brand agency for startups.
- **Visual win:** Off-black + beige, contrast-swapped section by section. Asymmetric grid. Kickers ("Featured," "We wrote the book on").
- **Copy win:** Client credential callouts as micro-copy ($32B valuation, iPhone App of the Year). Proof without paragraphs.
- **Fails:** Video-heavy hero — not right for a solo consultancy.
- **Steal:** Kicker label above every h2. Beige/black contrast swap between sections.

### 1.5 Wolff Olins — [wolffolins.com](https://wolffolins.com)
- **Does:** Global brand consultancy.
- **Visual win:** White/black/grey, generous leading (1.1–1.2), full-bleed imagery, underline hover only. Institutional.
- **Copy win:** Impact framing ("move businesses, people and the world forward") without hype.
- **Fails:** Uses the word "transformative" which we want to avoid for Consilix.
- **Steal:** Generous leading on display type. Underline-only hover states.

### 1.6 Ragged Edge — [ragged-edge.com](https://ragged-edge.com)
- **Does:** London independent brand company.
- **Visual win:** ABC Diatype (sans) + Grit (display), 4:5 vertical case-study imagery, one-line "client committed to…" framing.
- **Copy win:** *"Never be the same again. A brand company for people who refuse to settle for average."* Pugnacious and specific.
- **Fails:** Tone is loud — Consilix shouldn't copy the attitude, only the structure.
- **Steal:** Case-study card: "[Client] committed to [verb-led outcome]. [One metric.]"

### 1.7 Work & Co — [work.co](https://work.co)
- **Does:** Product + digital for enterprise.
- **Visual win:** Clean, structured, long-form case study copy on the homepage itself.
- **Copy win:** *"We solve complex problems through design & technology."* + Fast Company pull-quote.
- **Fails:** Corporate-serious, feels like Accenture-lite now that they're owned by Accenture Song.
- **Steal:** A single third-party editorial pull-quote on the homepage as a credibility anchor.

### 1.8 Delve — [delve.co](https://delve.co)
- **Does:** AI compliance automation.
- **Visual win:** Geist Mono + Inter Tight, dark aesthetic, pain-point narrative panels (rejected vendor emails, deal-loss reasons).
- **Copy win:** *"Compliance in days, Security that lasts."* Hard specifics: "$2.3B in new revenue unlocked," "43k hours eliminated," "8.7x faster audit cycles."
- **Fails:** Dark / techy palette; not the tone our UK ops buyer responds to.
- **Steal:** The pain-point scenario panel. A "here is what we removed, in numbers" stats block.

### 1.9 Fractional AI — [fractional.ai](https://fractional.ai)
- **Does:** Closest direct competitor — AI engineering-as-a-service.
- **Visual win:** Manrope type, dark gradient, client logos + CTO testimonials.
- **Copy win:** *"100% of our projects are currently in production or on track for production deployment."* Specific, falsifiable, anti-hype.
- **Fails:** Hero reads "AI Transformation, Powered by Engineering Excellence" — exactly the cliché Consilix should avoid. Blue-on-navy is generic 2023-AI-company.
- **Steal:** The "100% in production" style of claim. Lift the *structure* of proof; reject the visual language.

### 1.10 Freeman Clarke — [freemanclarke.com](https://freemanclarke.com)
- **Does:** UK fractional IT leadership.
- **Visual win:** EB Garamond display + Roboto body. Regional team structure (North, Midlands, South, London).
- **Copy win:** "The largest and most experienced team of IT leaders." Plain claim, British tone.
- **Fails:** Palette (money green + sea blue + rose pink) is dated. Video testimonials are YouTube embeds.
- **Steal:** Serif-for-headline / sans-for-body pairing for a mid-market UK buyer. Explicit role/seniority framing ("Chief AI Officer," "IT Director"), which UK buyers like.

### Bad-example references (what to avoid)

- **Current consilix.ai** — 3D brain, pulsating circle, orange bar under every h2, icon-card grid, hero copy: *"AI Strategy Meets Real-World Execution · Transform your business with strategic AI implementation that delivers measurable results and sustainable growth."* Every clause is interchangeable with any other AI consultancy.
- **Accenture Applied Intelligence** ([accenture.com](https://www.accenture.com/us-en/services/applied-intelligence-index)) — "transform everything," "scale AI across the enterprise," abstract circuit imagery, context-free stats ("97% of executives…"). Swap the name and it could be IBM, Deloitte, Capgemini. Worth showing the client so they viscerally understand what "generic" looks like.
- **Neoteric** ([neoteric.eu](https://neoteric.eu)) — Poppins headings, six-step process with emoji-ish icons, logos of Boeing/Nestlé/Siemens (unverifiable at their scale), "5★ Clutch rating." Template smell.

---

## 2. Buyer psychology — what converts the AI-late ops leader

**The persona, in one line:** mid-50s COO/MD of a 50–500-person UK firm, drowning in manual docs and reports, has watched peers get burned by an AI vendor, does not trust anyone under 30 in a hoodie, will read a whole page if it respects them.

### Top 10 conversion levers, ranked

1. **Self-serve clarity.** 90% of B2B buyers research before ever speaking to a vendor; up to 70–90% of the purchase decision is done pre-call ([6sense 2025 Buyer Experience Report](https://6sense.com/science-of-b2b/buyer-experience-report-2025/); [Sopro 2025](https://sopro.io/resources/blog/b2b-buyer-statistics-and-insights/)). Every page must answer "what is this, what does it cost-shape, and what happens next" without a call.
2. **Plain-language outcome over capability.** "Cut manual data entry by 80% in 30 days" beats "leverage cutting-edge AI" ([Trajectory Web Design 2025](https://www.trajectorywebdesign.com/blog/b2b-website-design-best-practices)). 88% of B2B buyers report losing trust when they hear buzzwords like "leveraging synergistic solutions" ([The Insight Collective](https://www.theinsightcollective.com/insights/overused-b2b-buzzwords)).
3. **Quantified proof, not adjectives.** B2B buyers interact with ~13 pieces of content before deciding; promotional content is skipped, specific metrics are kept ([Sopro 2025](https://sopro.io/resources/blog/b2b-buyer-statistics-and-insights/)).
4. **Named founder, real photography.** Genuine imagery increases trust 2.4× vs stock ([Accelerated Web Systems](https://acceleratedwebsystems.com/marketing/authentic-photography-vs-stock/)). For solo/founder-led businesses, SMEs/B2B brands benefit most from putting the leader's face, name and bio front-and-centre ([Webstacks](https://www.webstacks.com/blog/trust-signals)).
5. **Data-privacy & expertise reassurance early.** Mid-market's top three blockers: lack of in-house expertise (39%), integration with legacy systems (35%), data-privacy concerns (33%) ([Sharp UK SME study, 2025](https://www.sharp.co.uk/news-and-events/news/european-and-uk-smes-accelerate-ai-adoption-amid-economic-uncertainty-but)). Address all three explicitly, high on the page.
6. **Educate, don't evangelise.** 43% of UK SME leaders say they need clearer guidance on *how* to adopt AI safely ([YouGov Business 2025](https://business.yougov.com/content/52730-we-polled-uk-sme-leaders-about-ai-adoption-heres-what-they-said)). An "insights" or "field notes" section of short, useful writing converts better than a blog.
7. **Fixed-scope, fixed-fee signalling.** 33% of UK employees worry AI use is a shortcut; ROI uncertainty (25%) is a top barrier ([YouGov Business 2025](https://business.yougov.com/content/52730-we-polled-uk-sme-leaders-about-ai-adoption-heres-what-they-said)). Exposing fixed-price stages (Audit, Build Sprint) directly on the services page removes perceived downside.
8. **Anti-hype positioning.** "AI that works" / "production, not prototypes" language converts skeptical buyers. Thoughtworks leads with *"We don't just do AI. We do AI that works."* Fractional AI claims *"100% of our projects are currently in production."* Both work because they acknowledge the reader's skepticism.
9. **Third-party validation over self-claim.** One editorial pull-quote (client, journalist, conference) outperforms three self-authored statements ([Consulting Success](https://www.consultingsuccess.com/consulting-testimonials)).
10. **Clear, low-commitment next step.** A 30-minute "Workflow audit call" is a better CTA than "Book a consultation." Specificity reduces perceived risk.

### Language that reassures vs inflames

| Reassures | Inflames the skeptic |
| --- | --- |
| "Used on real client work since [date]" | "Cutting-edge," "revolutionary" |
| "Fixed fee, fixed scope" | "Scalable," "at enterprise scale" |
| "One build at a time" | "End-to-end transformation" |
| "On your existing tools (Claude, ChatGPT, Perplexity)" | "Proprietary platform" |
| "We train your team, we don't replace them" | "AI-powered workforce" |
| "Here's what this won't do" | "Unlock unlimited potential" |

---

## 3. Information architecture

### Site map (in header order)

1. **Home** (`/`)
2. **Process** (`/process`) — the four-stage programme, dedicated page
3. **Work** (`/work`) — case studies, filterable by sector
4. **Writing** (`/writing`) — short field notes (replaces "Blog")
5. **About** (`/about`) — James, philosophy, how Consilix works
6. **Contact** (`/contact`) — audit-call booking, plain form
7. *(Legal in footer only: Privacy, Terms, Cookies.)*

**Rationale:** six items. "Services" becomes "Process" because the four stages *are* the service — a wording shift that foregrounds how Consilix thinks, not what it sells. "Work" not "Case Studies." "Writing" not "Blog." Every label is shorter and less generic than the current site.

### Home page section order

1. **Hero** — kicker ("A fractional AI team for operations-heavy firms") + h1 + sub + single primary CTA ("Book a workflow audit call"). *Rationale: answers "what is this" in one viewport.*
2. **Who this is for** — three short, named segments (e.g. "Owner-led boutiques," "Communications agencies," "Mid-market operations"). *Rationale: the buyer self-selects and feels seen; this is the most under-used lever on the current site.*
3. **The four-stage programme** — numbered 01 · Audit, 02 · Enablement, 03 · Build, 04 · Embedded. One line each, link to `/process`. *Rationale: this is the product; surface it on the home page.*
4. **Manifesto / philosophy** — the four-line tenet block from the FINN proposal ("Strategy before code. Real-world ROI…"). Editorial, centred, serif-italic. *Rationale: differentiates from template-AI firms in 5 seconds.*
5. **Selected work** — 3 case cards: Modus Concierge, FINN audit, Polymarket trading swarm. *Rationale: proof before pitch.*
6. **One editorial pull-quote** — a real client or third-party line. *Rationale: external voice outperforms founder voice for trust.*
7. **Field notes** — 3 most recent short pieces. *Rationale: demonstrates thinking without a blog obligation.*
8. **Founder card** — photo of James, one-paragraph bio, LinkedIn. *Rationale: solo-led firms must put the founder on the home page — it's the single strongest trust signal.*
9. **CTA block** — "Book a workflow audit call. 30 minutes. No pitch." *Rationale: low-commitment, specific, anti-sales.*
10. **Footer** — contact email, company reg, ICO reg, legal.

### Process page section order

01 Hero — "How we work." 02 The four stages (deep dive, one per scroll-block, with deliverable, duration, pricing structure). 03 What we do not do. 04 FAQ (5 items max: legacy integration, data privacy, tooling, timelines, pricing). 05 Audit-call CTA.

### Work page

Grid of case studies, sector tags (Travel, Communications, Finance, Property, etc.), each card = *Client · Sector · One-line challenge · One metric*. Click opens a long-form case page.

### Case study page template

Client → Context (2–3 sentences) → Problem (bullets) → What we built → Outcome (metrics + one client quote if available) → Stack used → Related stages.

### About page

Hero line → James bio (real photo, 3 paragraphs) → Philosophy (expanded manifesto) → How we work (retainer model, billing, on-site vs remote) → Who we don't work with (explicit disqualifier — converts counter-intuitively).

### Where proof lives

- Home: 3 case cards + 1 pull-quote
- Process: one mini-case per stage as a sidebar
- Work: all cases
- Case page: full detail
- About: client logos (only if permitted), ICO + Companies House reg
- Every page: client logo bar in footer

---

## 4. Three visual directions

The client has flagged flexibility on colour. Three meaningfully different directions follow; all are editorial and all avoid the "AI company" visual trope.

### Direction 1 — "Editorial Cream" *(evolution of the FINN proposal)*

| Token | Value |
| --- | --- |
| Background | `#0B0B0E` (near-black) |
| Foreground | `#F0E8D5` (cream) |
| Secondary text | `rgba(240, 232, 213, 0.64)` |
| Accent (kicker only) | `#EB7300` (existing brand orange) |
| Border / rule | `rgba(240, 232, 213, 0.10)` |

**Type pair:** Lora Italic (display + pull-quotes) / Outfit (body, UI, captions). Both Google Fonts.

**Scale:**
- Display: Lora Italic, 72–96px, leading 1.05
- H1: Lora Italic, 48–64px, leading 1.1
- H2: Outfit Semibold, 28–32px, tracking -0.01em
- Body: Outfit Regular, 17–18px, leading 1.6
- Small / kicker: Outfit Medium, 12–13px, uppercase, tracking 0.08em, in orange

**Feel:** Editorial. Quiet. Confident. Considered. Magazine.

**Mood:** Reads like a well-set long-form essay in a Sunday paper. Cream on black is warm, not cold; orange is used as a kicker rule and a single accent word per section, never as an H2 underline. Numbered sections (`01`, `02`, `03`). Generous whitespace. Static layout with one subtle text animation on the hero.

**Best for:** Owner-led boutiques (luxury travel/events, boutique wealth, boutique law) — the reader who admires the FT's weekend edition. Also the strongest for PR & comms agencies, who judge visual taste ruthlessly.

### Direction 2 — "Quiet Modernist" *(light, warm, institutional)*

| Token | Value |
| --- | --- |
| Background | `#F5F0E8` (warm cream, Anthropic-adjacent) |
| Foreground | `#131314` (near-black) |
| Secondary text | `#5A5A5E` |
| Accent 1 | `#B54A1F` (burnt terracotta) |
| Accent 2 (links) | `#0B3A2E` (deep forest green, used extremely sparingly) |
| Border / rule | `rgba(19, 19, 20, 0.08)` |

**Type pair:** GT Sectra (display, serif with knifed terminals — paid) *or* Instrument Serif (Google, free alternative) / Inter (body). Swap to Söhne + Söhne Mono if the client has budget for Klim.

**Scale:**
- Display: Instrument Serif, 80–120px, leading 1.0
- H1: Instrument Serif, 52–68px, leading 1.05
- H2: Inter Semibold, 24–28px
- Body: Inter Regular, 17–18px, leading 1.55
- Mono caption: JetBrains Mono, 12–13px, for metrics and code

**Feel:** Institutional. Adult. Warm. Restrained. British.

**Mood:** Feels like the annual report of a very expensive private bank. Cream-white warmth disarms AI-anxiety; one warm terracotta accent carries all emphasis. Monospace is used only for metrics (£numbers, percentages, durations) — a subtle signal that Consilix is engineering-credible without any tech iconography.

**Best for:** Boutique wealth/IFAs, boutique law, mid-market property managers, legal/professional services. Anyone over 45 buying services for a regulated firm.

### Direction 3 — "Chambers & Partners" *(structural, high-density editorial)*

| Token | Value |
| --- | --- |
| Background | `#FAFAF7` (paper off-white) |
| Foreground | `#111111` |
| Secondary text | `#4A4A4A` |
| Accent 1 (rules, kickers) | `#8A1538` (deep oxblood) |
| Accent 2 (ink / links) | `#1A1A1A` (no blue) |
| Border / rule | `#111111` at 1px (hard, not translucent) |

**Type pair:** Söhne (or Inter Display as free fallback) + Source Serif 4 for italicised emphasis and pull-quotes. Think a UK trade publication like *The Lawyer*, *PR Week*, or a Chambers directory.

**Scale:**
- Display: Inter Display Semibold, 56–72px, tight (-0.03em)
- H1: Inter Display Semibold, 40–52px
- H2: Inter Display Medium, 22–26px, with a hairline `#111` rule above
- Body: Inter Regular, 16–17px, leading 1.5, measures capped at ~64ch
- Emphasis / quote: Source Serif 4 Italic
- Small / metadata: Inter Medium, 12px, uppercase, tracking 0.1em

**Feel:** Dense. Organised. Trustworthy. Legal-grade. Unflashy.

**Mood:** The visual logic of a directory or a law firm's ranked report. Multi-column layouts, hard 1px hairline rules, metadata chips (sector, stage, region, year). Oxblood is the only decorative colour. No gradients, no rounded corners beyond 4px.

**Best for:** Mid-market professional services, IT MSPs, legal, compliance-heavy ops. The buyer who judges seriousness by density of information, not by whitespace.

### Direction picker

| Buyer | Strongest | Second |
| --- | --- | --- |
| Owner-led luxury travel / events | D1 Editorial Cream | D2 Quiet Modernist |
| PR & comms agencies | D1 | D3 |
| Boutique wealth / law | D2 | D3 |
| Mid-market property / legal / MSP | D3 | D2 |
| Ops-heavy scale-up (fintech/logistics) | D2 | D1 |

**Recommendation:** D1 as primary (lowest distance from the FINN proposal the client already likes), with D2 as the formal alternative to pitch. D3 is strongest for segmented landing pages in the legal/professional-services vertical.

---

## 5. Component / section library

Each archetype: layout, type, what to avoid.

### Hero
- **Layout:** Full-viewport. Left-aligned on desktop, kicker above h1, sub below, one primary CTA, one secondary text-link CTA. No hero image.
- **Type:** Kicker in accent colour, small uppercase. H1 in display serif (D1/D2) or tight display sans (D3). Sub in body type, capped at 52ch.
- **Avoid:** 3D brain. Animated gradient. Autoplay video. Two competing CTAs of equal weight. The word "transform."

### Who this is for
- **Layout:** Three columns on desktop, stacked on mobile. Each column = sector label + 2-sentence description + example firm type.
- **Type:** Sector label as kicker in accent. Description in body. No icons.
- **Avoid:** Icon grids. Emoji. Rounded cards with drop shadows.

### Four-stage programme (Process)
- **Layout:** Numbered list (`01`, `02`, `03`, `04`). Each stage as a wide row: number (display-serif or display-sans, large) · name · deliverable · duration · pricing shape. Thin rule between.
- **Type:** Stage numbers in accent colour or foreground, display size. Name in h2. Meta in body. One-line italic philosophy note optional.
- **Avoid:** Circular process diagrams. Arrows. "1. Discover 2. Design 3. Deliver" style. Icons.

### Case proof (home card)
- **Layout:** 4:5 vertical image or colour block + client name + sector tag + one-line challenge + one metric. Card is a link.
- **Type:** Client name in H3. Challenge in body italic. Metric in display number (the one place big type earns its place).
- **Avoid:** Full testimonial pulled onto the card. Star ratings. "Trusted by."

### Case study full page
- **Layout:** Long-form, single column, max ~64ch. Numbered section headings. One pull-quote. Metric block at the bottom.
- **Type:** Body workhorse. Italic pull-quote. Monospace for metrics.
- **Avoid:** Slide-deck style. Before/after hero images generated by AI. Percentages without a denominator.

### Manifesto / philosophy
- **Layout:** Centred block, generous whitespace top and bottom (min 160px). Four tenets as four lines.
- **Type:** Display serif italic (D1/D2) or display-sans medium (D3). ~44–56px. Each tenet on its own line, separated by thin rules or line breaks, not bullets.
- **Avoid:** Quote marks. Attribution ("— James Wood"). Signature image.

### Founder card
- **Layout:** Real photo (50/50 with copy on desktop). Name, one-paragraph bio, LinkedIn, email. Optional: two bullet credentials (prior role, notable build).
- **Type:** Name in h3. Bio in body. Link in accent.
- **Avoid:** Stock photo. Headshot taken on a phone against a blank wall. Marketing-speak bio ("passionate about unlocking…"). Fake team plural ("our team").

### FAQ
- **Layout:** Accordion or stacked. 5–7 items max. Questions in the reader's voice ("What happens in the first three weeks?" not "Our methodology").
- **Type:** Question in h3 / display-small. Answer in body.
- **Avoid:** More than 10 items. Questions Consilix wrote for itself ("What makes you different?"). AI-generated answers that read as AI-generated.

### Field notes (writing) index
- **Layout:** Chronological list. Date · Title · One-line dek. No thumbnails.
- **Type:** Title in h3 serif/italic (D1/D2) or h3 sans (D3). Dek in secondary text.
- **Avoid:** Featured-post carousels. Reading-time chips. Categories with more than 4 tags.

### Contact / audit-call CTA
- **Layout:** One page. Name, company, email, one free-text field ("What's the problem you'd bring to a 30-minute call?"). Calendly embed below.
- **Type:** Plain.
- **Avoid:** Multi-step forms. Phone-number required. "Tell us about your AI journey" framing.

### Explicit don'ts (visual)
- No generic icon grids (Lucide/Feather line icons for "Efficiency, Innovation, Trust, Results").
- No 3D brain, no pulsating circle, no orange bar under every h2.
- No gradient meshes / "aurora" hero backgrounds.
- No stock photography of anyone in a headset.
- No "Trusted by" logos unless every logo represents a real, delivered piece of work.
- No glowing border hover states.
- No "AI" written in a variable font that slowly morphs.

---

## 6. Copy voice guidelines

**Anchors:** plain, quiet, confident, editorial, British.

**Sentence length.** Vary. A short one. Then a longer one that carries the argument for another half-dozen words and lands with a fact. Average 12–18 words. Occasional fragment for rhythm.

**Pronoun.** First person plural sparingly ("we believe"). First person singular where James speaks directly ("I spend the first three weeks on-site"). Never third person ("Consilix believes that…") — that's brochure voice.

**Jargon.** Avoid unless the reader uses the word in their own meetings. A COO says "retainer," "SOW," "integration" — those are fine. A COO does not say "agentic" or "orchestration layer" — those are not.

**Specificity.** Replace adjectives with numbers wherever possible. "Fast" → "2–3 weeks." "Scalable" → "handled up to 40 agents in parallel."

**Humour.** Dry, infrequent, never at the reader's expense.

### Banned words and phrases

- Transform / transformation (primary offender; the current site opens with it)
- Leverage / leveraging / leveraged
- Cutting-edge, bleeding-edge, state-of-the-art
- Harness the power of
- Revolutionary, game-changing, disruptive
- Unlock / unleash / supercharge
- Seamless, frictionless, end-to-end
- Bespoke (overused in UK consulting copy; prefer "custom" or "one-off")
- Journey (as in "AI journey")
- Empower, empowering
- Scalable (unless genuinely meant technically)
- Next-generation, future-proof
- "Our passion is…"
- "Driven by innovation"
- "Partnering with you to…"

### Preferred phrasing shifts

| From | To |
| --- | --- |
| "AI solutions for modern businesses" | "AI workflow builds for operations-heavy firms" |
| "Transform your business" | "Remove the manual work" |
| "Leverage cutting-edge AI" | "Build on Claude, ChatGPT and Perplexity — tools your team already has" |
| "Seamless integration" | "Plugs into your existing stack" |
| "End-to-end partnership" | "Monthly retainer; we're on Slack" |
| "Trusted by industry leaders" | "Built for FINN Partners, Modus Concierge, Polymarket" |

---

## 7. Hero copy formulas

Five candidates. All assume kicker + h1 + sub + single CTA.

### Candidate A — Direct (what Consilix does)
> *Kicker:* A fractional AI team for non-technical firms.
> *H1:* We audit your workflows, train your people, and build the automations that pay for themselves.
> *Sub:* Four stages. Fixed fees. One builder on the other end of Slack.
> *CTA:* Book a 30-minute workflow call.

**Why:** Maximum clarity. Answers "what is this" in the first 25 words. Strong for the skeptical COO who scans.

### Candidate B — Outcome-led (what the buyer gets)
> *Kicker:* For operations-heavy firms that are AI-late.
> *H1:* Less manual work. Fewer tools. More of the week back.
> *Sub:* Consilix is a fractional AI and automation team for UK businesses without an internal AI lead. We audit, train, build, and stay on as your retained partner.
> *CTA:* Book a workflow audit.

**Why:** Leads with the feeling the reader has at 7pm on a Wednesday. Converts well for the 50-person agency MD.

### Candidate C — Editorial (credibility anchor)
> *Kicker:* Strategy before code.
> *H1:* *Real-world ROI over proof-of-concept polish.*
> *Sub:* Consilix is a fractional AI team for operations-heavy firms. We take the long way round — audit first, build second, stay on to run it.
> *CTA:* See how we work.

**Why:** Uses the FINN manifesto as hero copy itself. Most differentiated; highest taste signal. Best for D1/D2.

### Candidate D — Contrarian / anti-hype
> *Kicker:* No platforms. No decks about agents. No "AI journey."
> *H1:* Just the specific automations that remove specific work.
> *Sub:* Consilix is a fractional AI and automation team for 20–500-person UK firms. Fixed-fee audit, fixed-fee builds, optional retainer.
> *CTA:* Book an audit call.

**Why:** Directly addresses the skeptic's objection before they raise it. Strongest for readers who have already been pitched by three other AI agencies.

### Candidate E — Process-first
> *Kicker:* Four stages. Start at one.
> *H1:* Audit. Train. Build. Run.
> *Sub:* A fractional AI team for operations-heavy UK firms. We spend three weeks finding the work worth automating, then build it one piece at a time.
> *CTA:* Start with the audit.

**Why:** Surfaces the product on the hero. Strong for D3 where structural density is the aesthetic.

**Recommendation:** Ship Candidate C on D1, Candidate B on D2, Candidate D on D3. Test C vs B after launch.

---

## 8. Trust stack

Solo founder. Handful of real builds. Here is the credible, non-cheesy stack.

### Tier 1 — Named, specific, verifiable
- **FINN Partners workflow audit.** Full programme proposal delivered. Use as a "How we work" reference on the Process page.
- **Modus Concierge.** Named client with a concrete build. Put on the home page.
- **Polymarket 40-agent trading swarm.** Specific, technically credible, single sentence: "Ran 40 parallel trading agents across Polymarket markets."
- **Crypto trading data platform.** Sector-coded ("financial data infrastructure"); don't overclaim.
- **Santara OAuth.** A credibility detail for technical readers, not a hero item.

### Tier 2 — Founder credentials
- One real photograph of James (natural light, simple background, not retouched into a LinkedIn cover).
- Three-paragraph bio, plainly written: what he did before, why he started Consilix, what he personally builds.
- LinkedIn link. Direct email. Phone optional.

### Tier 3 — Institutional proofs
- Companies House registration number in the footer.
- ICO registration number in the footer (UK data-privacy signal; matters to the target buyer more than most agencies realise).
- Plain-English data and security page: what tools we use, where client data lives, what happens at the end of an engagement. Half a page is enough.

### Tier 4 — Editorial proofs
- One pull-quote on the home page. Prioritise: client > journalist > conference/panel mention > podcast.
- Field notes (writing) as implicit proof of thinking.

### What to avoid
- "Trusted by" logo bars of companies Consilix has not delivered real work for (even "we had a coffee with them" logos — buyers check).
- Star-rating widgets.
- "Featured in" bars unless Consilix was genuinely featured (not an AI-generated roundup).
- Fake plural ("our team of experts") — if it's James, it's James. This is the strength, not a weakness.
- Testimonials with first-name-only attribution.

### Credible framing templates
- *"[Client, named] · [What we built, one line] · [Metric or outcome, specific]"* — home card format.
- *"Built since 2024 for clients including FINN Partners, Modus Concierge, and Polymarket."* — a single factual sentence, no adjectives.
- *"I'm the person who runs the audit and writes the code. There is no handoff."* — direct, first-person, in the About page.

---

## 9. Concrete DO and DON'T

### DO
1. Use cream-on-dark or warm-cream-on-near-black as the primary palette (D1 or D2).
2. Put James's real face and name on the home page.
3. Number the four stages `01 02 03 04` and show them on the home page.
4. Lead with one specific outcome metric per case card.
5. Use one serif or serif-italic face for display and a neutral sans for body.
6. Keep the primary CTA specific ("Book a 30-minute workflow audit") and singular per page.
7. Publish prices (or price shapes — "fixed fee," "per-build," "monthly retainer from £X") on the Process page.
8. Use one editorial pull-quote on the home page as third-party validation.
9. Write first-person where James speaks directly; first-person plural otherwise; never third-person.
10. Keep every page under 3 primary sections above the fold, with generous whitespace.

### DON'T
1. Don't use a 3D brain, pulsating dot, or any "AI orb" visual.
2. Don't put an orange horizontal bar under every h2.
3. Don't use the word "transform," "leverage," "cutting-edge," or "harness."
4. Don't use a "Trusted by" logo bar of companies without delivered work.
5. Don't show icons for Efficiency / Innovation / Trust / Results (or any four-pillar grid).
6. Don't use stock photography of people in headsets, or AI-generated hero art.
7. Don't use fake plurals ("our team," "our engineers") — Consilix is solo-led; own it.
8. Don't stack more than one hero animation; respect `prefers-reduced-motion`.
9. Don't write FAQ questions in Consilix's voice ("What makes us different?") — write them in the reader's voice.
10. Don't hide case studies behind a nav item users can't find; feature them in the top-level nav as "Work."

---

## Appendix — sources

- [6sense 2025 B2B Buyer Experience Report](https://6sense.com/science-of-b2b/buyer-experience-report-2025/)
- [Sopro — 68 B2B buyer statistics for 2025](https://sopro.io/resources/blog/b2b-buyer-statistics-and-insights/)
- [Consensus 2025 B2B Buyer Behavior Report](https://goconsensus.com/research/2025-b2b-buyer-behavior-report)
- [YouGov Business — UK SME AI adoption poll, 2025](https://business.yougov.com/content/52730-we-polled-uk-sme-leaders-about-ai-adoption-heres-what-they-said)
- [Sharp UK — European/UK SME AI adoption, 2025](https://www.sharp.co.uk/news-and-events/news/european-and-uk-smes-accelerate-ai-adoption-amid-economic-uncertainty-but)
- [techUK — barriers to AI adoption report](https://www.techuk.org/resource/major-barriers-to-ai-adoption-remain-for-uk-businesses-despite-growing-demand-new-report-reveals.html)
- [Profile Tree — AI adoption rates in UK SMEs 2025](https://profiletree.com/ai-adoption-rates-in-uk-smes-2025-survey-insights/)
- [BCG — AI Adoption Puzzle, 2025](https://www.bcg.com/publications/2025/ai-adoption-puzzle-why-usage-up-impact-not)
- [Consultancy.uk — AI in consulting, 2025](https://www.consultancy.uk/news/amp/43733/the-future-of-consulting-in-the-ai-age-technology-is-ready-organisations-are-not)
- [The Insight Collective — B2B buzzwords](https://www.theinsightcollective.com/insights/overused-b2b-buzzwords)
- [Creative Review — the new rules of B2B voice](https://www.creativereview.co.uk/new-rules-b2b-voice-orlaith-wood-reed-words/)
- [Trajectory Web Design — B2B website best practices 2025](https://www.trajectorywebdesign.com/blog/b2b-website-design-best-practices)
- [Webstacks — 8 trust signals](https://www.webstacks.com/blog/trust-signals)
- [Accelerated Web Systems — authentic photography vs stock](https://acceleratedwebsystems.com/marketing/authentic-photography-vs-stock/)
- [Consulting Success — powerful consulting testimonials](https://www.consultingsuccess.com/consulting-testimonials)
- [Burning Red — consulting case study guide](https://www.burningred.co.uk/latest/essential-guide-writing-business-case-studies)
- Competitor sites fetched: [anthropic.com](https://anthropic.com), [koto.com](https://koto.com), [pentagram.com](https://pentagram.com), [redantler.com](https://redantler.com), [wolffolins.com](https://wolffolins.com), [ragged-edge.com](https://ragged-edge.com), [work.co](https://work.co), [delve.co](https://delve.co), [fractional.ai](https://fractional.ai), [freemanclarke.com](https://www.freemanclarke.com), [thoughtworks.com](https://www.thoughtworks.com), [cartesian.com](https://cartesian.com), [scaleai.ca](https://www.scaleai.ca), [consilix.ai](https://consilix.ai) (current state), [accenture.com Applied Intelligence](https://www.accenture.com/us-en/services/applied-intelligence-index) (bad-example).
