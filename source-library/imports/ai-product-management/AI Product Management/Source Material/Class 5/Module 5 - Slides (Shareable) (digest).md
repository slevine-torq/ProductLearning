# Module 5 Slides (Shareable) — Digest

**What it is:** the M5 instructor slide deck (Shareable / student-facing twin). Scroll-snap sections, progress bar, nav dots, skip/section-sorter, deck-sync BroadcastChannel. Standard chrome, consistent with M1-M4 decks.

**QA:** `scroll-snap` present ✅. Zero `__next_f` ✅. Genuine capture.

---

## Section outline

1. Hero — "Deploy Agentic Systems and Workflows." Waypoints: (1) Shift to Agentic Orchestration, (2) Agentic Design Patterns, (3) Managing the Agentic Handoff. States up front: two required artifacts (`awspec.md`, `agent-control-panel.md`) + optional Langflow lab; `Juno Agent.json` left as-is unless that lab is run.
2. Class Expectations (standard, matches prior decks).
3. Syllabus recap — 6-module status grid, M1-M4 done, M5 "Today," M6 upcoming.
4. Presentation Reminder — volunteer slot for final-project showcase next class; async cohort posts repo URL in `#ai-pm-cohort` by Friday.
5. Agenda — 3 sections + bonus post-class Langflow build.
6. **Section break: 01 — The Shift to Agentic Orchestration**
7. The Evolution of Value — Chatbot → Workflows → Agents, each with value-prop + operating-model (Reactive / Human-supervised / Autonomous).
8. What Is an Agent? — proactive / task-oriented / integrated.
9. Agent Anatomy — SVG diagram: Strategy Layer (Planning) → Reasoning Engine (The Brain / LLM) flanked by Memory and Tools ("Arms") → Action Layer → Context Layer. Matches Notes §2 traits conceptually but uses different layer labels (Strategy/Reasoning/Action/Context) than the Notes' plain trait list (Goals/Tool use/Memory/Iteration) — a naming variance, not a contradiction.
10. **The Agent Spectrum** — 4 levels: Reactive (No Autonomy) → Function-Calling (Assisted Autonomy) → Semi-Autonomous (Human-in-the-Loop) → Fully Autonomous (Goal-Driven), each with a named PM accountability. **Different label set than the Notes' 4-level spectrum** (Tool/Assistant/Agent/Autonomous Agent) — same 4-rung shape, different names. Log as a naming variance.
11. Real-World Examples — J&J (drug discovery), Uber/Klarna (support), Stripe (financial ops), Shopify Sidekick (merchant ops), Asana/Codex (dev workflows, same example as Notes).
12. **Section break: 02 — Agentic Design Patterns**
13. Why Patterns Matter — patterns as shared vocabulary + reasoning-structure enforcement.
14. **ReAct** — Think → Act → Observe loop diagram (SVG) + mechanism/value/cost callouts. Matches Notes.
15. **Planner-Executor** — Planner Agent → Executor Agent diagram + task-list example. Matches Notes.
16. Types of Agentic Memory — **Episodic / Semantic / Working-Contextual / External Tools** (4 types). **Different label set than the Notes' 4 types** (Short-term/Long-term/Episodic/Semantic) — the Slides swap out "Short-term" and "Long-term" for "Working/Contextual" and "External Tools." Only "Episodic" and "Semantic" survive with the same name across both documents, and their definitions still roughly match. Log as a naming variance, same pattern as other module memory-model mismatches.
17. Break slide.
18. Cameras On (standard filler slide).
19. **Section break: 03 — Managing the Agentic Handoff**
20. **The AWSpec** — explicitly **4 pillars**: Actors / Pattern Plan / Memory / Tools, each with a one-line question (Who's in the loop? / Which wiring + steps? / What persists, where? / Which APIs, what scope?). **This directly contradicts the Notes' "9 sections" AWSpec description** and matches the actual `M5 - Agent Workflow Spec Builder.html` tool's 4-pillar UI exactly. **RESOLVED: 4 pillars (Actors, Pattern Plan, Memory, Tools) is the correct/authoritative AWSpec structure** — the Notes' 9-section list (Goal/Trigger/Inputs/Tools/Memory/Pattern/Stop conditions/Handoff rules/Eval hooks) does not match either the Slides or the tool and should be treated as superseded prose, not the real deliverable shape.
21. Write Juno's AWSpec — Lab 1 (30 min) instructions, individual (explicitly notes "was a group breakout, converted to solo"), 4-step walkthrough referencing the 4 pillars, cross-check against `03-rag-prd/prd.md`.
22. The Orchestration Gap — 4 failure modes with code-block examples: Silent Failures, Reasoning Drift, Infinite Loops, The Latency Tax. This is a slides-only elaboration; Notes' §5 "Common Failure Modes" uses a different 5-item list (Hallucinated tool calls, Memory poisoning, Runaway loops, Silent handoff failure, Drift across sessions) — partial overlap (Silent Failures≈Silent handoff failure, Reasoning Drift≈Drift) but not identical. Log as a naming/scope variance.
23. **A PM's Agent Control Panel** — explicitly **4 levers**: Define Stop Conditions / Structure Tool Outputs / Set Confidence Thresholds / Manage the North Star. **Matches the Notes exactly** (same 4 levers, same names).
24. **Rules of Engagement** — explicitly **4 rules**: Agency Permission / Access Control / Fallback Protocols / Checkpoints, each with a worked example. **Matches the Notes exactly.**
25. Spec Juno's Agent Control Panel — Lab 2 (20 min) instructions, 4-step walkthrough.
26. **The PM Decision Triangle** — ⚠️ **naming collision, not just a naming variance.** The Slides implement this as an **interactive Latency / Cost / Accuracy trade-off triangle** (drag a dot inside a triangle; the three corners are Latency, Cost, Accuracy; the tool computes which corner is being "sacrificed" and gives a live readout). This is a **completely different concept** from the Notes' "PM Decision Triangle" (§6), which is a **three-mode decision-authority framework**: AI alone / AI + human checkpoint / Human alone. Both are called "The PM Decision Triangle" on the same LMS page's materials. **Unresolved — flag for Torq rebuild: pick one meaning, or rename one of the two frameworks**, since as captured they contradict each other under an identical name.
27. Takeaways (4 items, matches Notes' key takeaways in spirit).
28. Extra Practice — (1) Langflow build (optional/post-class), (2) architect a reasoning pattern to solve drift on a real system. Next: Module 6.
29. Resources & Templates — links to `M5 - Agent Workflow Spec Builder.html` (described "4-pillar walkthrough (Actors, Pattern Plan, Memory, Tools)" — matches the Slides/tool, confirms the Notes' 9-section description is the outlier), `M5 - Agent Control Panel.html` ("Four levers + four rules of engagement"), `M5 - Juno Langflow Walkthrough.html` (optional), repo template link.
30. Q&A.
31. Optional Post-Class Lab intro slide + outcome slide (Langflow walkthrough, two paths: rebuild from scratch vs. import `Juno Agent.json` starter).

---

## Interaction logic (notable)

- **PM Decision Triangle widget**: barycentric-coordinate math clamps a draggable dot inside an SVG triangle (vertices = Latency/Cost/Accuracy); computes live percentage split across the three axes, auto-generates a "sacrificing X" readout and a plain-English trade-off sentence, and auto-animates through a fixed keyframe path when not being dragged (pauseable). Same interactive-widget craft level as other modules' custom SVG diagrams, but this is the first *fully interactive, physics-like* one across the course so far (not just hover/click reveals).
- Standard deck-sync BroadcastChannel + skip/section-sorter + localStorage skip-state, unchanged from prior decks.

---

## Torq-rebuild notes

- **Use the Slides' Agent Spectrum, memory-type, and AWSpec-pillar language as canon** over the Notes' versions — the Notes document is the one that drifted across at least 3 separate points in this module (agent-spectrum labels, memory-type labels, AWSpec section count). This is now the third module (after M2, M4) where the "Notes" prose is demonstrably less reliable than the Slides+tool pairing; consider **deprioritizing the Notes doc as a source of truth** in the Torq rebuild and treating Slides+builder-tool output as canonical everywhere they conflict.
- The barycentric drag-triangle (Latency/Cost/Accuracy) is a strong, directly reusable interaction pattern for any three-way trade-off in Torq content (e.g., speed/cost/quality framing elsewhere).
- Resolve the **"PM Decision Triangle" naming collision** before rebuilding — do not carry the same name forward for two different frameworks.
