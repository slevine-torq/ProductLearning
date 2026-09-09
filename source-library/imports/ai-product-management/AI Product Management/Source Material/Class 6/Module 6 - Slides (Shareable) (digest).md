# Module 6 Slides (Shareable) — Digest

**What it is:** the M6 instructor slide deck (Shareable / student-facing twin) — the final module deck of the course. Standard scroll-snap chrome, deck-sync BroadcastChannel, skip/section-sorter, consistent with M1-M5.

**QA:** `scroll-snap` present ✅. Zero `__next_f` ✅. Genuine capture.

---

## Section outline

1. Hero — "Measure AI Quality with Evals and Guardrails." Waypoints: (1) Production-Grade Evaluation Requirements, (2) Measuring AI-Powered Product Outputs, (3) AI Levers for Output Optimization. States 3 required artifacts up front: `human-rubric.md` (Lab 1), `eval-stack.md` (Lab 2), and the polished `README.md` (Lab 3).
2. Class Expectations (standard).
3. Syllabus recap — all 6 modules done through M5, M6 "Today."
4. Agenda — 4 sections listed (the 4th, "Final Project Showcase: Demo Your Juno Copilot," is the async-showcase wrap-up, not a new content section) + explicit "solo course adaptation" callout converting the original group showcase to an individual repo submission with optional Loom.
5. **Section break: 01 — Production-Grade Evaluation Requirements**
6. Why "Vibe Checks" Fail — 3 reasons: Invisible Failures, The Subjectivity Trap, The Performance Gap. Different 3-item framing than the Notes' 4-bullet "why vibe checks fail" list, but same underlying argument (no coverage of long tail, drift, no harness to compare against).
7. The 95% Accuracy Trap — same core math as the Notes (1,000 calls/day × 5% wrong = 50 wrong/day), reframed as two categories: "Accuracy/Precision/Recall/F1" (lab metrics, blind to UX) vs. "User experience/Trust/Safety" (what evals actually measure) + a new example ("95% accurate medical bot still fails if the 5% includes a wrong dosage").
8. **Section break: 02 — Measuring AI-Powered Product Outputs**
9. **The AI Eval Stack** — same 3-layer concept as Notes (User Feedback / Human Evaluation / Automated Assessment), rendered as a pyramid SVG with an added naming layer: **Online evals (User Feedback) / System-level evals (Human Evaluation) / Component-level evals (Automated Assessment)** — this "online/system-level/component-level" labeling doesn't appear in the Notes at all. Same volume/fidelity axes as Notes' table.
10. How to Build a Human Eval Rubric — a **5-step process** (Value Proposition → Eval Criteria → Scalable Questions → Calibrate Reviewers → Validate & Iterate, grouped into 3 phases: Create/Calibrate/Monitor). This is a different, more detailed framework than the Notes' flat "5 components" list (Dimensions/Scale/Examples/Disagreement protocol/Sampling cadence) — the Slides describe the *process* of building a rubric; the Notes describe the *components* of a finished rubric. Complementary, not contradictory.
11. Real-World Example: Google Assistant — 6-step case study (Context/Goal/Method/Training/Assessment/Outcome), richer than the Notes' one-paragraph mention. New detail: the rubric had **26 questions** across 4 dimensions, calibrated across Product/UX/UXR, and importantly — every conversation was graded, not a sample (the Slides' own PM-lift-out callout recommends stratified sampling instead, for scale).
12. Build Juno's Human Eval Rubric — Lab 1 (20 min) instructions.
13. The PM's Role in Evaluations — 3-item framing (Drafting the Definition of Quality / Setting the Pass Thresholds / Auditing the Automated Judges), a different 3-item list than the Notes' 4-bullet version (owns rubric+golden set / defines pass bar / decides cadence / acts on eval data) — again complementary, not contradictory; the Slides frame it as *audit responsibilities*, the Notes as *ownership responsibilities*.
14. Plan Your Eval Stack for Juno — Lab 2 (25 min) instructions.
15. **Section break: 03 — AI Levers for Output Optimization**
16. Operationalizing AI Risks — 4 performance signals with formulas and examples: Blocked Request Rate, Hallucination Rate, Human Override Rate, Model Drift & Latency. **This is new content not in the Notes at all** — the Notes' equivalent section only lists the 4 governance buckets (Compliance/Safety/Reliability/Reputation) with no metrics. The Slides supply the missing "how do you actually measure this" layer.
17. The Governance Framework — 4 strategies: Hard vs. Soft Gates, Zero-Tolerance Metrics, Grounding for Trust, Build a Failure Taxonomy. Also not in the Notes — a deeper elaboration of "governance" than the Notes' bucket list, focused on gate mechanics rather than risk categories. Notes' 4 buckets (Compliance/Safety/Reliability/Reputation) and Slides' governance strategies address different questions (what risks exist vs. how do you gate on them) — complementary.
18. **Three Levers** — ⚠️ explicitly **The Prompt, The Model, The Data** (in that order), each with a "trade-off axis" and "try" suggestions. **This does not match the Notes' "AI Levers for Optimization" section**, which lists **Model → Data → Architecture** (a different 3rd item — Architecture instead of Prompt — and no "try Prompt first" framing at all). The Slides put Prompt first as the cheapest/fastest lever; the Notes never mention prompt-tuning as a lever and treat Architecture as the (expensive, last-resort) third option. **Flag as a real discrepancy, not just relabeling** — the two documents disagree on what the third lever even is.
19. The PM Execution Plan — a 4-step framework (Build Your Eval Plan → Set Your Gatekeepers → Add Production Guardrails → Evolve Your Roadmap), each with a named trade-off ("Speed vs. Certainty," "Brand Protection vs. Hype," "Safety vs. Utility," "Feature vs. Data"). **Entirely new framework, not present in the Notes**, which only says governance buckets "get a row in your PM Execution Plan" without defining what the plan's steps are.
20. Prepare & Finalise Your Project Deliverables — Lab 3 (20 min) instructions. Names the **Final Project Deliverables Builder** tool's two outputs: `pitch.html` (a visual one-pager) and `README.md` (the repo deliverable) — the Notes only mention the README output, not `pitch.html`. New artifact surfaced here. Also lists a 7-item "source-slide checklist" (Final System Message, AI Strategy One-Pager, RAG Architecture & Data Strategy, Juno UX Design, AWSpec, Eval Stack Plan, Build Insights) mapping directly to each of the 6 modules' key deliverable.
21. Learner Journey — 6-row course recap table, one mindset-shift + one win per module. Useful concise summary of the whole course's throughline.
22. Break slide, Cameras On (standard fillers).
23. Final Project Showcase intro slide.
24. Important Reminder — submission mechanics: URL of the finalised `juno-pm` fork uploaded to the learning platform within 7 days; no deck or video required.
25. Your Time to Shine — **3 valid submission paths**: (A) volunteer to demo live (~10-min slots, first-come via Slack), (B) record a 3-min Loom, (C) just submit the URL. All three explicitly count for certification — this resolves any ambiguity about whether the async Loom is "less than" a live demo; the Slides state all three are equally valid.
26. Takeaways (4 items).
27. Resources & Templates — links to `M6 - Eval Stack Designer.html`, `M6 - Human Evaluation Rubric.html`, **`Final Project Deliverables Builder.html`** (no "M6 -" prefix, unlike the other two files, and unlike how the Notes glossary names it "M6 - Final Project Deliverables Builder.html" — a small naming-prefix inconsistency, worth flagging as trivial but real), and the repo template link.
28. Q&A (standard closer — no explicit "course complete" slide beyond this).

---

## Interaction logic (notable)

- Eval Stack pyramid: static SVG (unlike M5's interactive drag-triangle) — three trapezoids stacked, each annotated with volume/fidelity axis labels and a side-callout card per layer. No interactivity, purely illustrative.
- PM Execution Plan: a 4-node curving-arrow SVG flow diagram (S-curve connecting the 4 steps) — a new diagram shape not used in any prior module's Slides deck (M1-M5 favored straight arrows, loops, or triangles).
- Standard deck-sync, skip/sorter, localStorage skip-state — unchanged from all prior decks.

---

## Torq-rebuild notes

- **The Prompt/Model/Data vs. Model/Data/Architecture lever conflict is a genuine content bug, not a labeling variance** — decide once for the Torq rebuild whether "Architecture" or "Prompt" belongs as the third optimization lever, and don't carry both framings forward as if they're the same list.
- The Slides materially extend the Notes in 4 places with no contradiction (rubric-building process, risk metrics/formulas, governance-gate mechanics, PM Execution Plan) — treat these as additive canon rather than discrepancies; the Notes were simply thinner here, not wrong.
- The `pitch.html` artifact (mentioned only in the Slides, not the Notes) should be added to the M6/final-deliverables list for Torq's rebuild — it's a real second output of the Final Project Deliverables Builder tool.
- The three-equally-valid-submission-paths framing (live demo / Loom / just the URL) is a clean, low-friction async-cohort pattern worth preserving as-is in a Torq rebuild of any capstone/certification flow.
