# Module 2 — Slides — Digest

**Source:** standalone self-contained HTML slide-deck artifact (`Module 2, Prioritization & Roadmapping for Product Leaders · Product Leadership`). Same scroll-snap presentation shell as Module 1 (identical CSS/JS engine: nav dots, progress bar, skip/sorter system, deck-sync BroadcastChannel, print stylesheet, reduced-motion handling — see Module 1 Slides digest for full mechanism writeup, unchanged here). QA marker: `scroll-snap-type: y mandatory`, zero `__next_f`.

## What it is
The full instructor-facing slide deck for Module 2 ("Prioritization & Roadmapping for Product Leaders"). 31 sections — lighter than Module 1 (32 sections) since it skips first-day-only content (no Introductions, no Final Project overview, no repo-setup section — those only appear in Module 1). Covers prioritization frameworks and roadmap construction, with two hands-on lab sprints.

## Structure (31 sections, in order)
1. **Hero** ("Module 2") — title, subtitle, 4 waypoints (prioritize effectively / choose your approach / build a roadmap / two hands-on sprints).
2. **Class Expectations** — same 6 cohort norms as Module 1 (cameras on, arrive on time, engage to network, tool readiness, use Slack, class momentum), reworded slightly.
3. **Syllabus** — 6-module card grid, Module 2 marked "You are here."
4. **Agenda** — 4 waypoints for today's session.
5. **Section break 01** — "How Product Leaders Prioritize Effectively."
6. **Q&A · Making the Prioritization Call** (10 min) — discussion prompt: "Think of a time when you and your team couldn't agree on what to build first. What did you use to make the call?" Instructor landing point: the gap between strategy and execution is a prioritization problem, not a communication problem.
7. **Rocks / Pebbles / Sand** — the jar metaphor, 3 tiers: Rocks (strategic bets — "if these don't ship, your strategy fails"), Pebbles (customer-requested improvements/delight, builds trust), Sand (maintenance/debt/polish — necessary but fills every space if unmanaged).
8. **Three Products That Got Their Rocks Right** — Stripe (API reliability & docs), Notion (block-based editor architecture), Linear (performance/architectural speed) — each framed as an unglamorous foundational bet that made later features possible.
9. **Section break 02** — "Choose Your Prioritization Approach."
10. **Impact vs. Effort Matrix** — framework 1 of 3, visual 2×2 with axis labels (Business impact ↑, Effort/complexity →). 4 quadrants: Do Now (high impact/low effort), Plan Carefully (high impact/high effort), Fill Gaps (low impact/low effort), Avoid (high effort/low impact) — mapped directly onto Rocks/Pebbles/Sand from the previous section.
11. **Asana · Effort Just Moved** (case study) — the Enzyme-to-RTL test migration: staffed since 2022, ~5 years from done at old pace (Plan Carefully forever) → 4 coding agents, one directory each, overnight, ~2 weeks, ~$12K in model/infra vs. Asana's own ~$6M napkin-math comparison. Leadership takeaway: re-score Effort on any item that's partitionable with a testable definition of done — don't let an outdated Effort estimate keep an item stuck in "Plan Carefully." (Source cited: Asana Engineering blog, "We migrated off Enzyme in 2 weeks.") Same source/example as in the Class 2 Notes.
12. **RICE** — framework 2 of 3. 4-card breakdown (Reach/Impact/Confidence/Effort) + formula card: `RICE Score = (Reach × Impact × Confidence) ÷ Effort`.
13. **WSJF (Weighted Shortest Job First)** — framework 3 of 3. 4-card breakdown (Time Criticality/Feature Value/Risk Reduction/Job Size) + a visual fraction-style formula (numerator: Time Criticality + Value + Risk Reduction; denominator: Job Size). Callout: best for SAFe environments or when delay has a measurable cost.
14. **Weighted Scorecards** — worked example table, 5 features scored across Customer Value (30%), Strategy Alignment (25%), AARRR Impact (25%), Effort (-20% — negative weight), with computed scores (Offline mode 82, AI RFI drafting 77, Daily log v2 71, Executive dashboard 57, UI refresh 34). Different worked example from the Notes' abstract description of the mechanic — this is the first place the actual numbers appear.
15. **Additional Frameworks Reference Card** — same 5 frameworks as Notes (MoSCoW, Now/Next/Later, Feature ROI, Buy a Feature, Affinity Grouping), each with a 🎯 best-for and ⚠️ watch-out card. Explicitly framed as skim-now-reference-later.
16. **Lab · Sprint 1 (20 min, individual)** — "Audit and Prioritize Your Backlog": review a 14-item backlog (referenced, not shown inline — lives in the Lab Guide), score with Impact vs Effort, identify 3 Rocks (each must connect to an M1 OKR), write a Hard No list (3 items, one-sentence rationale each). Callout: must have at least one Rock and one Hard No ready for peer review. Links to `Module 2 - Lab Guide.html` (Exercise 1).
17. **Show and Swap · Priorities and Hard Nos** (10 min, breakout/peer exercise) — swap Rocks/Hard Nos with a partner, 1-minute silent cold-read (no verbal context), then discuss: do the Rocks feel traceable to strategy, and defend one Hard No as if it should be a Rock instead.
18. **Break** (5 min).
19. **Cameras On** reminder (photo-strip visual, no unique text).
20. **Section break 03** — "Building an Effective Product Roadmap."
21. **Five Roadmap Types** — Outcome-based (CPO/board audience), Now/Next/Later (team/stakeholders), Timeline (engineering/ops), Opportunity-based (product/design), OKR-Linked (anyone needing the work↔outcome connection) — each with a 1-2 sentence "best when your audience is X, because Y" card. Slightly different framing than the Notes (Notes describe by format properties; Slides describe by audience-fit).
22. **Now / Next / Later** (primary format for the lab) — 3-column breakdown: Now (committed, max 3 items, each an outcome-based bet linked to an OKR), Next (sequenced but not locked, max 5 items, one-line rationale for sequencing), Later (bets not commitments, labeled honestly). Callout: every Now item must follow the template "We bet [action] will [outcome] for [who]."
23. **ClearTrack · Outcome-Based Roadmap** (worked example) — full Q3 roadmap for the fictional ClearTrack tool (same example as the Notes), laid out as 3 visual columns (Now/Next/Later) with 3 items each, each item showing its KR link (e.g. "Teams complete sprint planning in under 30 minutes → KR1") and a 1-sentence rationale. This is the fullest visual rendering of the ClearTrack example across all Module 2 artifacts so far — includes an "✦AI" tag on one Now item ("Teams get an AI-generated project status summary without pulling a report").
24. **Common Roadmap Failures** — 4-card grid: Hidden Roadmap, Stale Artifact, Over-Promised, Feature Factory — each with a ✅ fix, matching the Notes' 4 pitfalls (reordered).
25. **Section break 04** — "Hands-On Lab: Create Your Product Roadmap."
26. **Lab · Sprint 2 (20 min, individual)** — "Create Your Product Roadmap": open an LLM, feed in M1 strategy/OKRs/3 Rocks using the prompt in the Lab Guide (prompt not shown inline in Slides — only referenced), review/reframe Now items as outcome-based bets, refine through 2+ rounds, save the final roadmap. Links to `Module 2 - Lab Guide.html` (Exercise 2).
27. **Quick Debrief** (2 min) — "Was there an item the AI flagged in your roadmap that you hadn't thought about, and was it valid?"
28. **Key Takeaways** — 4 cards, same core points as the Notes' takeaways (rocks vs. sand/pebbles, hard-no discipline, roadmap as a public betting statement, no-perfect-framework/know-when-to-reach).
29. **Extra Practice & Next Session** — 2 optional exercises (stress-test real backlog; road-test roadmap with a colleague) + next-session preview (Module 3: Lead and Develop High-Performing Teams) + deliverable-check reminder (add Product Roadmap to final project repo).
30. **Resources & Templates** — 2-card grid: Module 2 Lab Guide (`Module 2 - Lab Guide.html`, not yet captured), On-Demand Content (`Module 2 - On-Demand Content (Shareable).html`, not yet captured). No third interactive-builder-tool card this time (Module 1 had a 5-card grid including the Strategy Sprint Builder and Repo Template; Module 2 has neither).
31. **Q&A** — closing slide, async-learner note.

## Embedded exercise data / worked examples
- **Weighted Scorecard example** (5 features, exact scores) — captured in full under Structure §14, not present in the Notes (Notes only described the mechanic abstractly).
- **ClearTrack outcome-based roadmap** (9 items across Now/Next/Later with KR links and rationale) — captured in full under Structure §23; same objective/KRs as in the Notes (Objective: become the tool teams trust to run their work, not just track it; KR1 overrun rate 42%→18%; KR2 weekly active teams 61%→80%; KR3 time-to-first-plan <10 min), but the Slides render the full item-by-item breakdown that the Notes only partially quoted.
- **Asana Enzyme migration case** — same as Notes, condensed into 3 cards (old score / what changed / leadership move) rather than prose.

## Reusable AI prompts
**None embedded directly in this deck.** Unlike Module 1's Slides (which included the full pressure-test prompt inline), Module 2's roadmap-generation prompt is referenced only ("use the prompt in your lab guide") and lives in `Module 2 - Lab Guide.html`, not yet captured. Flag as priority to capture from the Lab Guide when pasted.

## Key interaction logic
Identical engine to Module 1 Slides — scroll-snap presentation, IntersectionObserver-driven progress bar, nav dots, `K`/`M` skip/sorter system with `localStorage` key `skip-sections-<title>`, deck-sync `BroadcastChannel` for instructor/shareable-twin scroll sync, print stylesheet, reduced-motion support. No module-specific interaction logic beyond the standard visual card/grid/table components (jar tiers, RICE cards, WSJF formula card, 2×2 matrix, Now/Next/Later columns) — all pure CSS/static content, no new JS behavior introduced for Module 2.

## Torq-rebuild notes
- Confirms the Module 1 slide-deck shell (scroll-snap + skip/sorter + deck-sync) is a **shared, reused component across modules**, not a one-off — strengthens the case for lifting it as a standalone reusable Torq component.
- The Rocks/Pebbles/Sand jar framework + the Do Now/Plan Carefully/Fill Gaps/Avoid 2×2 mapping is a clean, teachable one-two combination — good candidate for direct reuse in a Torq prioritization module.
- The Weighted Scorecard's exact worked numbers (§14) are a nice concrete artifact — more useful for a rebuild than the abstract mechanic alone.
- ClearTrack (fictional PM tool) joins HealthTrack (M1) as a second recurring fictional-company example — worth deciding whether to standardize on one running example across a Torq rebuild or keep the module-specific-example pattern.
- Missing from this deck (present in M1): no interactive Sprint-Builder-style tool referenced for M2 — confirms the earlier session-state note that M2's Resources list is lighter than M1's. If Torq wants parity across modules, an M2-equivalent interactive builder (backlog auditor + roadmap builder) would be net-new work, not a port.
