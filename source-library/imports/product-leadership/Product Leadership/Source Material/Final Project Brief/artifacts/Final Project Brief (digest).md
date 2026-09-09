# Final Project Brief — Digest

**Source:** standalone self-contained HTML artifact (`Final Project Brief.html`), single-page brief, no localStorage/scroll-snap — QA marker is `progressBar` (scroll-progress bar). Fonts: Poppins (display) + Lato (body) + IBM Plex Mono (labels/mono). Dark navy theme (`#07162C`) with blue accent (`#3b82f6`/`#60a5fa`).

## What it is
The final-project instructions page for the Product Leadership certification. Explains the project format, the two scenario options, the 5 required deliverables (each mapped to a specific module), how/where to submit, grading rubric, and FAQs. Linked from course footer nav alongside `content-overview.html` and `Module 1 - Slides (Shareable).html`.

## Structure / sections (in order, anchor-linked from a sticky topnav)
1. **Hero / Overview** (`#overview`) — framing: individual project, built entirely during in-class labs (no homework), submit a GitHub repo URL + final presentation, due within 7 days of cohort end.
2. **"What you'll build & submit"** — meta cards: Format=Individual, Build time=During in-class labs, Deliverable=5 deliverable slides, Showcase=Optional/volunteers. Callout: set up repo in Module 1 from the **Product Leadership Repo Template**.
3. **Scenarios** (`#scenario`) — commit to ONE path, no switching after Module 1:
   - **Scenario 1 — Fable (B2C, "The Growth Wall")**: mental-wellness app, 25-45 demo, peaked at 4.2M MAU, growth flatlined — users resolve their need in 90-120 days and stop opening the app (success causes churn). Threats: Headspace/Calm own brand awareness, AI-native rivals targeting same demo. Goal: lead "Fable Growth" initiative — define what the product becomes post-acute-phase, build durable engagement beyond first 90 days, without repositioning as clinical or replacing core content.
   - **Scenario 2 — Meridian (B2B, "The Field Gap")**: construction PM platform for large GCs on $50M+ projects, system of record for 38 of top 100 US firms — but field teams (superintendents/foremen) don't use it, run on phone cameras/group texts instead. Mid-market ($5-50M firms) churning to mobile-first competitors. Goal: lead "Meridian Foundations" initiative — make platform indispensable to field teams without stripping enterprise depth (no removing finance/compliance features), win the field first.
   - **Bring your own**: real problem from own org, instructor-approval required.
4. **Deliverables** (`#deliverables`) — fork the `product-leadership-template` GitHub repo (CTA button links to `github.com/new?template_name=product-leadership-template&template_owner=Product-School-Platform`), one folder per deliverable:
   | # | Deliverable | Module |
   |---|---|---|
   | 1 | Product Strategy — Playing to Win cascade + OKRs flowing from it | Module 1 |
   | 2 | Outcome Roadmap — multi-team roadmap + trade-off memo defending prioritization | Module 2 |
   | 3 | Team Charter — "What We Own" + "How We Decide" components | Module 3 |
   | 4 | Financial Model — business case + explicit kill criteria | Module 5 |
   | 5 | Individual Insights into the Build Process — reflection: friction points, key learning, "Aha!" moment | Module 6 |

   Pro tip callout: template is just a base — OK to use AI presentation tools (Gamma, Canva) fed with the content.
5. **Submit** (`#submit`) — two required items: **repo URL** + **final presentation** (published link or uploaded file). Steps: build presentation in Module 6 from repo (Deliverables Template or Gamma/Canva/Slides) → publish (GitHub Pages or export HTML/PDF/Slides) → find "Upload Your Product Leadership Final Project" section on course dashboard → submit both repo URL and presentation link/file. Deadline: 7 days after cohort end, late submissions may miss certification eligibility and instructor feedback. Optional final showcase at end of Module 6 for volunteers (present strategy, defend 1-2 favorite artifacts + trade-offs, share insights) — not required for certification.
6. **Grading** (`#grading`) — 4 criteria, each qualitatively described (no numeric weights given):
   - Application of Concepts
   - Credibility & Reasoning
   - Clarity
   - Strategic Thinking

   Overall score bands: **1 Poor (0-49)**, **2 Sufficient (50-79)**, **3 Excellent (80-100)**.
7. **FAQs** (`#faqs`) — 4 `<details>` accordions: submission deadline, in-class build time confirmation, bring-your-own-product allowed (with approval), presenting is optional.

## Embedded exercise data / scenarios
Full Fable and Meridian scenario text captured above under Structure §3 — these are the two canonical case scenarios referenced throughout the rest of the course (Notes/Slides for each module likely build on whichever scenario a student picks).

## Reusable AI prompts
None embedded — this artifact is pure instructional/reference content, no AI-prompt boxes or interactive tooling.

## Key interaction logic
- Scroll progress bar (`#progressBar`) — width driven by `scrollTop / (scrollHeight - clientHeight)`.
- Scroll-reveal animation via `IntersectionObserver` on `.reveal` elements (threshold 0.08), fade+translateY on enter, unobserves after first reveal.
- Sticky topnav with anchor links to each section id.
- No scoring/quiz logic, no localStorage — purely presentational.

## Torq-rebuild notes
- **Highly reusable structural pattern**: dual-scenario (B2C vs B2B) case-study framing with a "bring your own" escape hatch — good template for any Torq cohort-based cert needing a capstone.
- **Deliverables-to-module mapping table** is the single most reusable artifact here — cleanly ties each capstone output to the module that teaches it. Worth preserving as a structured data table (not just prose) in the Torq rebuild so it can drive a progress tracker UI.
- **Grading rubric** (4 qualitative criteria + 3-tier score bands) is generic enough to reuse across any Torq capstone, not PLC-specific.
- External dependency to note: the actual submission mechanic depends on a GitHub template repo (`product-leadership-template` under org `Product-School-Platform`) — that repo's structure (folder-per-deliverable) is referenced but not itself captured here. Flag as a separate capture item if the Torq rebuild wants to replicate the repo-based submission flow.
- Footer links to `content-overview.html` (course overview artifact — not yet captured) and `Module 1 - Slides (Shareable).html` (Module 1 deck — not yet captured).
