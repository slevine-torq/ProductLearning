# Module 5 · Sample Experiment Brief (digest): StreamLine Spotlight Discovery Rail Test

**Format:** Static reference page (not interactive) — a fully worked example of the experiment brief produced by the Experiment Brief Builder. Referenced from the deck, Lab Guide, and Notes.md.

## Why it matters
This is the worked example that shows the parameters table, hypothesis, and shipping-criteria templates fully filled in with realistic, internally-consistent numbers — the answer key for the Lab.

## Header
Scenario: StreamLine (B2C) · Author: Me · Status: Ready to launch · Feeds: final project repo

## 1 · Experiment parameters

| Parameter | Value |
|---|---|
| Feature under test | **Spotlight**: a personalized discovery rail at the top of the home screen with a one-line "Why you'll love this" reason on each title |
| Persona | The **Casual Explorer**: a time-poor commuter who wants something new but abandons the app when the homepage feels generic |
| Expected outcome | More Explorers start a meaningful listening session directly from discovery instead of bouncing |
| Primary success metric | **% of sessions ≥30 min started from the discovery rail** — proves the "nothing to play" moment of misery is resolved |
| Baseline rate | **11%** of sessions today are 30+ min and start from discovery |
| Guardrail metric | **7-day retention rate** — must not drop as a side effect of changing the homepage |
| Guardrail boundary | Retention must not fall more than **2 percentage points**. Below that → investigate before rollout |
| Second guardrail | **Skip rate within first 30s** (catches a different harm: irrelevant recommendations driving frustration). Ceiling: no more than **+15% relative** |
| MDE | **+2 percentage points** (11% → 13%) — anything smaller isn't worth the engineering/maintenance cost |
| Sample size per arm | **≈4,200 users per arm** (≈8,400 total) — from the calculator: baseline 11%, MDE 2pts, power 80%, significance 5% |
| Traffic split | **50/50** — StreamLine has the traffic to support an even split and reach significance in-window |
| Test duration | **14 days** — two full weekly usage cycles, absorbs weekday/weekend pattern, avoids novelty effects |
| Significance threshold | **p < 0.05** (95% confidence), industry standard, no deviation |

## 2 · Control vs. variant

- **Control (A):** Current home screen — algorithmic rows ("Recently played", "Made for you", "Popular"), no editorial framing. Per M3 funnel data, Explorers scroll, hesitate, and bounce; only 11% of sessions become 30+ min discovery sessions.
- **Variant (B):** Add a single **Spotlight rail** pinned to the top of the home screen — 6 personalized titles, each with a one-line "Why you'll love this" reason generated from the user's taste profile. *Nothing else on the home screen changes.*
- **Isolation check:** Recommendation engine logic, the algorithmic rows below the rail, notification settings, onboarding flow, playback engine, and app version are all identical between arms. The only perceivable difference is the presence of the Spotlight rail.

## 3 · Hypothesis
> I believe that the Spotlight discovery rail for the Casual Explorer will result in more meaningful sessions started from discovery, as measured by a +2 pt change in the % of 30+ min sessions started from the discovery rail within 14 days. We will protect 7-day retention throughout the test.

## 4 · Shipping criteria
> We will **SHIP** if the discovery-session rate improves by ≥2 pts at p<0.05 and 7-day retention does not fall more than 2 pts (and skip rate stays within +15%) after 14 days.
> We will **ITERATE** if the direction is positive but the lift is below the 2 pt MDE — extend duration or sharpen the "Why you'll love this" copy and re-run.
> We will **KILL** if the primary metric shows no improvement or moves negatively.
> The read date is fixed at day 14: no results reviewed before then (no peeking).

## Why this brief is called "shippable" (explicit callout in the source)
> "The variant is exactly one change, the primary metric directly measures the persona's moment of misery, the guardrails catch two different kinds of harm, and every threshold was committed before launch. A stakeholder could hold the PM to this decision rule."

This one sentence is effectively the rubric for grading any experiment brief — four criteria: (1) single-variable isolation, (2) primary metric traces to the persona's core problem, (3) guardrails cover *different* failure modes (not redundant), (4) all thresholds pre-committed.

## Torq-rebuild notes
- The dual-guardrail pattern (retention as the "don't break the business" guardrail, skip-rate as the "don't break the specific experience" guardrail) is a good template — shows guardrails should catch *different* categories of harm, not just be a second copy of the primary metric.
- The closing "why this brief is shippable" callout is worth preserving verbatim or near-verbatim as a rubric/checklist artifact — it's the clearest, most compact statement of "what makes an experiment brief good" in the whole module.
- Numbers are internally consistent with the Experiment Brief Builder's actual sample-size formula (11% baseline, 2pt MDE → ~4,200/arm), confirming the calculator and this worked example were generated together — good sign of a validated teaching example.
