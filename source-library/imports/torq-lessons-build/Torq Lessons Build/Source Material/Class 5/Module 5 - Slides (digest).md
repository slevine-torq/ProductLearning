# Module 5 · Slides (digest): Run Effective Product Experimentation

**Format:** Full scroll-snap deck (same design system as Modules 1-4: dark navy `#07162C`, Poppins/Lato/IBM Plex Mono, nav dots, progress bar, section sorter, keyboard nav, deck-sync). Content mirrors and extends the Notes.md already captured — this digest focuses on what's **only** in the deck: the two worked case studies with full data tables, the SVG diagrams' content, and slide-level structure.

## Deck structure (agenda, 3 sections)

1. **Experimentation Principles & Mindset** — mindset reflection, "what separates great product teams" (4 areas: trustworthy experiments, data culture, institutional memory, AI acceleration), four methods table, method-selection table.
2. **How to Run Effective Experiments** — A/B test anatomy diagram, the 8-step Optimizely setup process (split across 3 slides: steps 1-3, 4-5, 6-8), the Lab, the 5 reading-the-result questions with a confidence-interval visual.
3. **Making Decisions Based on Results** — Four Outcomes framework, two full case studies (Spotify, Amazon), Six Common Mistakes, key takeaways, extra practice, resources.

Notes.md already covers the prose/definitions for all of this. **New content below is deck-only.**

## Four methods table (with real-world examples — not in Notes.md)

| Method | Goal | Real-world example | Key insight |
|---|---|---|---|
| A/B Test | Measure the impact of one change | Netflix tests a character face vs. abstract artwork for a thumbnail, whichever drives more plays wins | Test one variable at a time — change two things and you can't trust the result |
| Multivariate | Find the best combination | Amazon tests image size, price placement, and CTA label at once to find the highest-converting page | Some combinations outperform their individual parts — A/B alone won't catch it |
| Feature Flag | Safe operational rollout | Google rolls a feature 0%→100% with automatic rollback if error rates spike | Flags give operational control — they're the safety net, not the experiment itself |
| Canary Release | Detect instability early | Spotify ships app updates to a small % first, watching for performance issues before ramping | Pair with a flag for exposure and an A/B test for outcome — three Lego bricks, one strategy |

## Method-selection table (traffic/risk specifics)

| Method | Question it answers | Min. traffic | Risk to production |
|---|---|---|---|
| A/B Test | Does variant B outperform A on metric X? | ~1,000 users | Low |
| Multivariate | Which combination of changes works best? | ~10,000 users | Medium |
| Feature Flag | Can I safely expose a feature to a segment? | Any size | Very Low |
| Canary Release | Is this code stable at scale? | Any size | Very Low |

## A/B test anatomy diagram (SVG content)
Traffic → 50/50 split → Control (A, unchanged baseline) / Variant (B, one change under test) → both measured against the same Primary metric + Guardrails. Visual reinforces: identical measurement across both arms is what makes a result trustworthy.

## Confidence interval visual (reading results slide)
Two intervals plotted on a lift axis (-4% to +10%), MDE marked at +2%:
- **Clean win**: interval [+4%, +8%], clears the MDE line entirely → labeled **SHIP**
- **Too wide**: interval [-1%, +8%], crosses zero → labeled **ITERATE**
Visually reinforces "read the bracket, not just the midpoint."

## Case Study 1 — Spotify Autoplay (full data, worked example of "Investigate")

**Hypothesis:** Auto-advancing after a song ends will increase streams per session without reducing satisfaction.
**Setup:** Control = manual next · Variant B = auto-advance to next track · 14 days · 50/50 split · n = 2.4M · 97% confidence

| Metric | Type | Control | Variant | Delta |
|---|---|---|---|---|
| Streams per session | Primary | 14.2 | 16.1 | **+13.4%** |
| 7-day retention | Secondary | 38.1% | 39.4% | +1.3% |
| Satisfaction (1-5) | Guardrail | 4.12 | 3.81 | **−7.5%** |
| Skip rate after auto-advance | Guardrail | 18% | 21.4% | **+19%** |

**Verdict taught: Investigate.** A strong primary is not automatically a green light — two guardrails broke. Lesson: understand who was harmed before shipping to everyone; shipping on a partial read is a common way PMs damage user trust.

## Case Study 2 — Amazon 1-Click Reorder (full data, worked example of "Ship")

**Hypothesis:** Surfacing a personalised '1-Click Reorder' button on the homepage will increase repeat purchases without raising support contacts.
**Setup:** Control = standard homepage · Variant B = personalised reorder widget · 21 days · 50/50 split · n = 3.8M · 99% confidence

| Metric | Type | Control | Variant | Delta |
|---|---|---|---|---|
| Repeat purchase rate | Primary | 22.4% | 26.1% | **+16.5%** |
| Revenue per user (30-day) | Secondary | $48.2 | $54.7 | +13.5% |
| Support contacts / 1k | Guardrail | 3.8 | 3.9 | +2.6% (under threshold) |
| Return / refund rate | Guardrail | 5.2% | 5.3% | +1.9% (under threshold) |

**Verdict taught: Ship.** High confidence, strong primary lift, guardrails moved but stayed under the pre-set threshold. Lesson: recognize a clear result and make the call without manufacturing doubt — indecision on a clean result costs as much as shipping on a bad one.

## Lab pointer (on the "Design Your A/B Experiment" slide, 35 min)
5-step flow: (1) open your M3 hypothesis/metric/guardrail + M4 PRD feature, (2) fill the parameters table (feature, persona, expected outcome, primary metric, baseline, guardrail + boundary, MDE, sample size, split, duration, significance), (3) define control & variant (copy screen descriptions from the PRD, don't rewrite from memory), (4) size your sample using the built-in calculator (baseline rate + MDE in points, power 80%/significance 5% fixed), (5) write the hypothesis sentence + commit to ship/iterate/kill shipping criteria and a fixed read date *before* data arrives.

## Resources & Templates footer (confirms artifact list)
Lab Guide · Experiment Brief Builder · Sample Experiment Brief · Pre-Read · Shareable Notes · **Reference Card** (linked as `Module 5 - Notes (Shareable).html#reference-card` — i.e. NOT a separate file, it's an anchor/section inside the Notes (Shareable) HTML page, unlike Module 3's standalone Reference Card).

## Also referenced in this class (non-lab)
A "Presentation Reminder" slide flags that the **next class (Class 6) includes an optional final-project showcase** — first-come-first-served volunteer slots for live feedback, signup via `#cohort-channel`.

## Torq-rebuild notes
- The two full case studies (Spotify, Amazon) are excellent worked examples of "read past the primary metric" — real numbers, clean contrast between an Investigate and a Ship verdict. Strong candidates to adapt directly (swap in security-automation-flavored metrics) for a Torq experimentation module.
- The 4-methods + method-selection tables are a clean, reusable "which tool for which job" reference, portable as-is.
- Notable process discipline: the lab explicitly instructs students to lock in shipping criteria and a read date *before* seeing data — worth preserving as an explicit anti-rationalization technique in any Torq rebuild.
