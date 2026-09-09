# Session State — AI Product Management capture

**Last updated:** 2026-08-25

## What this is
Scott is capturing all source material for the Product School **AI Product Management** course (React/Next.js LMS, auth-gated) so it can later be rebuilt as Torq-branded L&D content. This repeats a workflow already run successfully for the PM Certification course.

## Method (do not deviate — see `_CAPTURE-GUIDE.md` for full detail)
1. **Prose** — Scott pastes LMS class-page `view-source:`; Claude extracts clean Markdown → `Class N/Module N - Notes.md`, `Module N - Glossary.md`, and a Reference Card if one exists.
2. **Artifacts** — Scott pastes the artifact's own `view-source:` HTML; Claude writes a **digest** → `Class N/Module N - <Name> (digest).md` (what it is, structure, embedded exercise data, verbatim AI prompts, interaction logic, Torq-rebuild notes). No raw HTML saved.
3. **Exception** — short static prose artifacts (Pre-Read, <~1 page) are saved as clean Markdown directly, no digest.

## QA check on every paste
Genuine artifact = contains `scroll-snap` (deck) **or** `localStorage` (builder) **or** `progressBar` (pre-read), and **zero** `__next_f`.
If `__next_f` is present → the LMS app shell was pasted by mistake. **Tell Scott immediately, extract nothing.**

## Response style
Short confirmation + running checklist for the current class. Never echo raw HTML. Don't over-narrate.

## Course facts established so far
- Course: **AI Product Management** (LMS shortCode `aipmc`, cohort `onaipmc7547`), 6 modules
- Final project throughline: **Juno PM**, an AI Associate PM built for fictional company **RocketShip** (B2B SaaS for Enterprise Data Teams, in "Signal Collapse")
- Students fork `ai-product-management-template` → their own `juno-pm/` repo with six folders `01-prompting/` … `06-evals/`
- Every module commits a real artifact to that repo; M6 finalises repo + optional async demo
- Format: 100% individual, no group breakouts. Each exercise = self-review checklist + async share in `#ai-pm-cohort` (Slack: product-school.slack.com/archives/C0ACE1974AC)
- Tools: GitHub (free), Lovable (free tier). M1 lab = prompt-to-prototype Juno homepage in Lovable
- Final project due 7 days after cohort end (this cohort: due 2026-05-14). Repo URL = submission. Rubric: Application of Concepts / Credibility & Reasoning / Clarity / Strategic Thinking, each 1 (0-49) / 2 (50-79) / 3 (80-100). See [Final Project Brief digest](Final%20Project/Final%20Project%20Brief%20(digest).md).

### Confirmed module map (folder + title + date, this cohort)
| # | Folder | Title | Date |
|---|---|---|---|
| M1 | `01-prompting/` | Drive AI-First Execution with Prompting | Apr 20, 2026 |
| M2 | `02-strategy/` | Validate AI Opportunities and Technical Feasibility | Apr 22, 2026 |
| M3 | `03-rag-prd/` | Improve AI Product Requirements with RAG Architecture | Apr 27, 2026 |
| M4 | `04-ai-ux/` | Design AI-Native User Experiences | Apr 29, 2026 |
| M5 | `05-agentic-workflows/` | Deploy Agentic Systems and Workflows | May 4, 2026 |
| M6 | `06-evals/` | Measure AI Quality with Evals and Guardrails | May 6, 2026 |

### Class 1 page layout (confirmed — likely template for all classes)
Sections in order: **Slides** (iframe embed) → **Resources & templates** → **Class notes** → **Glossary**. (No separate "Reference Card" section on Class 1 — likely doesn't exist for every class; confirm per-class.)

### Class 1 artifacts — status
All captured except one unresolved item:
- ✅ `Module 1 - Slides (Shareable).html` — 35-section deck, digest captured. Confirmed 7-category PM AI Toolkit (differs from Notes' 5-category version — flagged as discrepancy), full syllabus module descriptions, model-config reference table (Temperature/Top P/Max Tokens with real-company examples), Optimisation Decision Framework, deck-sync BroadcastChannel presenter mechanic (new pattern, not seen before).
- ✅ `M1 - Prompt Anatomy Builder.html` ("Juno Prototype Prompt Builder") — digest captured. Contains Option A/B prompt presets, Brand/Vibe refinement prompts, the "Sarah/Data Analyst" noisy test transcript, regex-graded self-review checklist.
- ✅ `M1 - System Prompt Configurator.html` — digest captured. Contains the full verbatim Juno system-prompt seed text (Role/Context/Rules/Output format/Refusal conditions) — this is the richest single artifact so far, a complete worked example of an AI PM system prompt.
- ❓ `M1 - PM Toolkit Picker.html` — referenced inline in Notes §2 ("Use `M1 - PM Toolkit Picker.html` to pick one tool per category") but **not linked** anywhere on the Class 1 LMS page (Resources & Templates only lists Prompt Anatomy Builder + System Prompt Configurator) nor in the Slides deck's Resources section. May not exist as a separate file, or may be reachable only via a different path. **Ask Scott to check the LMS directly, or treat as skippable** if it can't be found — everything else for Class 1 is complete.

## QA rule clarification (important, learned this session)
The `__next_f` check applies to **artifact pastes** (self-contained HTML with inline CSS/JS — decks, builders) — those should never contain `__next_f`; if they do, the LMS app shell was pasted by mistake instead of the artifact.
It does **not** apply to **class-material LMS page pastes** (step 1 of the method) — those are Next.js pages and legitimately contain `__next_f` in their streaming payload; the Notes/Glossary content is extracted from inside that payload (or the hydrated DOM). Don't flag `__next_f` as broken when the paste is clearly a `/courses/.../materials/class-N` page.

## Status
| Class | Captured | Missing |
|-------|----------|---------|
| Class 1 | Pre-Read, Notes, Glossary, Slides, Prompt Anatomy Builder, System Prompt Configurator | **DONE** except unresolved PM Toolkit Picker (may not exist, see above) |
| Class 2 | Notes, Glossary, Slides, Three-Layer Model Mapper, AI Strategy One-Pager Builder | **Only Pre-Read left** (Module 2 Pre-Read, separate page — not yet pasted; confirmed with Scott this hasn't been given) |
| Class 3 | Notes, Glossary, Slides, Juno RAG Lab Walkthrough, AI PRD Builder | **Only Pre-Read left** (Module 3's, not yet pasted) |
| Class 4 | Notes, Glossary, Slides, AI User Flow Architect, Juno AI-Native Lab, AI-UX Trust Gap Checker | **Only Pre-Read left** (Module 4's, not yet pasted) |
| Class 5 | Notes, Glossary, Slides, Agent Workflow Spec Builder, Agent Control Panel, Juno Langflow Walkthrough (optional) | **Only Pre-Read left** (Module 5's, not yet pasted) |
| Class 6 | Notes, Glossary, Slides, Human Evaluation Rubric Builder, Eval Stack Designer, Final Project Deliverables Builder | **Only Pre-Read left** (Module 6's, not yet pasted) |
| Final Project | Final Project Brief (digest) | — (Final Project Deliverables Builder.html now captured, see Class 6) |

## Next action
**The entire course content is now captured except 5 Pre-Reads** (Modules 2, 3, 4, 5, and 6 — none of these five short standalone pages have been pasted; only Module 1's Pre-Read was ever provided). Every class's Notes, Glossary, Slides deck, and lab/builder tools are done across all 6 classes. Next session's only remaining task, if Scott wants full completeness, is pasting those 5 Pre-Read pages. Otherwise the capture is functionally complete and ready for the Torq-rebuild phase — see the discrepancy log below for every open decision to resolve first.

### Class 4 key concepts captured (M4: Design AI-Native User Experiences) — DONE except Pre-Read
- **Invisible by design**: AI-native UX default — anticipate intent, act at the right moment, never sit at a chat box waiting for input
- **The AI Iceberg**: Surface (what users see) vs. Underwater (what runs) — most PMs only design the surface
- **Three Trust Gaps + Intelligence Tax** (4 scored dimensions in the actual tool): Black-box, Hallucination, Control, Intelligence Tax — each with named mitigations
- M4 deliverables: `04-ai-ux/user-flow.md`, `04-ai-ux/trust-gaps.md`, optional `04-ai-ux/screenshots/`

### ⚠️ RESOLVED — M4 uses 4 pillars, not 7 nodes
Module 4 - Notes.md describes the AI user flow as **7 nodes** (Trigger→Capture→Retrieve→Reason→Act→Surface→Confirm/Correct). But the Slides deck AND the actual `M4 - AI User Flow Architect.html` tool are both built entirely around **4 pillars**: Trigger → Processing State → Presentation → Feedback Loop. The tool is the real deliverable generator and has zero trace of the 7-node model. **Treat 4 pillars as authoritative; the Notes' 7-node framing is the outdated/wrong one** — this is more consequential than the earlier naming-only discrepancies since it's the literal shape of the artifact, not just vocabulary.

### Other M4 discrepancies/issues found
- Hero slide names only `user-flow.md` as the required artefact, omitting `trust-gaps.md` (Notes lists both as required) — likely a copy oversight.
- Value→UX mapping: Slides use Automation/Augmentation/Insights/Personalization (matches M2-Slides' vocabulary); Notes use Cost/Revenue/Risk/Delight (matches M2-Notes' vocabulary) — confirms the Slide-decks-vs-Notes-docs vocabulary split is consistent across modules, not module-specific.
- Intelligence Tax: Slides name 2 taxes (Latency, **Privacy** — not in Notes at all); the actual Trust Gap Checker tool scores Intelligence Tax as one unified 4th dimension.
- **Required-vs-bonus status conflict**: Notes call `trust-gaps.md` (from the AI-UX Trust Gap Checker) a required M4 deliverable; the Slides' Resources section tags that same tool "🔍 Bonus Audit Tool."
- **File-path collision**: both the AI-UX Trust Gap Checker (required, per Notes) and the Juno AI-Native Lab (explicitly optional/post-class) write to `04-ai-ux/trust-gaps.md`, with two different document structures. If a learner runs the optional lab too, it would silently overwrite the required deliverable with a different-shaped file.

### Naming question — RESOLVED: `prd.md` is correct, not `ai-prd.md`
Module 3 - Notes.md mostly says `ai-prd.md` (matching the Final Project Brief), but the **Slides deck, the Juno RAG Lab tool, and the AI PRD Builder tool are all 100% consistent on `prd.md`** — including the AI PRD Builder's own `download()` function literally saving the file as `prd.md`, and the RAG Lab's generated diff text explicitly saying "Do not paste over `03-rag-prd/prd.md` — that file comes from the AI PRD Builder." Treat `03-rag-prd/prd.md` as correct; `ai-prd.md` (Notes + Final Project Brief) is the outlier this time, opposite of what was initially assumed. Worth a single clean decision when rebuilding for Torq rather than carrying the ambiguity forward.

### Another "referenced but not linked" tool — Module 3
`M3 - RAG Architecture Decider.html` is referenced inline in Module 3 - Notes.md ("Use `M3 - RAG Architecture Decider.html`: answer the five questions...") but is **not** listed in the Class 3 page's Resources & Templates section (which only lists Juno RAG Lab and AI PRD Builder). Same pattern as M1's "PM Toolkit Picker" — may not actually exist as a separate resource, or may only be reachable from inside one of the other tools. Ask Scott / check the LMS directly if it doesn't surface on its own.

### Module 3 Slides — additional framework discrepancies vs. Notes (see Slides digest for full detail)
- "What's new in an AI PRD": Notes gives 3 sections; Slides gives a richer 7-category taxonomy (Model/Data/Prompt Requirements, AI UX, AI Testing, AI Risks, AI Costs & Latency) — recommend using the Slides' fuller version as canonical.
- RAG trade-offs: Notes = independent Cost/Speed/Accuracy axes; Slides = paired tensions (Accuracy↔Cost, Latency↔Reasoning, Control↔Speed).
- Architecture Decision Factors: Notes = 5 questions (freshness/corpus size/latency/update cadence/privacy); Slides = 3 factors (Where/How/Scale) with a RAG-vs-Long-Context recommendation each.

### Notable tool design quirk — AI PRD Builder (Module 3)
Its generated `prd.md` has 5 output sections, but 2 of them ("Problem & user" and "Out of scope") are **fixed boilerplate text, never exposed as editable input fields** — every learner's PRD gets identical text in those two sections regardless of what they filled in. Flagged in the tool's digest; worth deciding whether to fix this (make them editable) or keep it (and disclose it) in a Torq rebuild.

### Naming collision found in M2 materials (real course bug, not a capture error)
The Three-Layer Model Mapper's generated `decision-matrix.md` titles itself `# AI Solution Decision Matrix · Juno` — but Module 2 - Notes.md uses that exact same name, "AI Solution Decision Matrix," for a **different**, separate 5-axis pressure-test tool (Value clarity/Technical feasibility/Data availability/Risk tolerance/Strategic fit) that the Notes explicitly say is NOT the same file as `decision-matrix.md`. This is a genuine naming bug in the source course, not something to silently carry into a Torq rebuild — pick one name per concept when rebuilding.

### Other M2 framework discrepancies to reconcile before Torq rebuild (deck vs. Notes — see Slides digest for full table)
- Autonomy scale: **Notes has 4 levels** (Suggest/Draft/Execute/Operate); **Slides + both lab tools use 3** (Assist/Copilot/Agent) — the tools confirm 3-level is what's actually "live," so that's likely the more current version.
- Value framing: Notes' "Four AI Value Propositions" (Cost/Revenue/Risk/Delight) vs. Slides' "Four Ways AI Creates Value" (Automation/Augmentation/Insights/Personalization, with real-company examples).
- Three-Layer Model layer names: Notes (Strategy/Mechanic/Implementation) vs. Slides+tools (User Workflow/Technical AI Solution/Business Outcome) — same concept, different labels.
- Responsible AI buckets: Notes (Compliance/Safety/Reliability/Reputation) vs. Slides (Human Oversight/Transparency/Bias Awareness/Privacy, each with a real incident case study — Belgium chatbot, CNET, Amazon, Samsung).

## Class 5 (M5: Deploy Agentic Systems and Workflows) — DONE except Pre-Read

Deliverables: `05-agentic-workflows/awspec.md` (Lab 1, AWSpec Builder), `05-agentic-workflows/agent-control-panel.md` (Lab 2, Agent Control Panel), optional `05-agentic-workflows/langflow-screenshots/` + `langflow-notes.md` (Juno Langflow Walkthrough, not graded).

### ⚠️ RESOLVED — AWSpec is 4 pillars, not 9 sections
Module 5 - Notes.md originally described the AWSpec as **9 sections** (Goal/Trigger/Inputs/Tools/Memory/Pattern/Stop conditions/Handoff rules/Eval hooks). Both the Slides deck AND the actual `M5 - Agent Workflow Spec Builder.html` tool confirm the AWSpec is **4 pillars**: Actors, Pattern Plan, Memory, Tools. Notes.md and the Glossary have both been corrected in place. Same pattern as the M4 pillars-vs-nodes conflict — the tool is the source of truth, not the prose.

### ⚠️ RESOLVED — Agent Control Panel is 4 levers + 4 rules, not 5 levers
The M5 Glossary originally listed the Agent Control Panel as **five** levers (triggers, tools, memory scope, stop conditions, observability). Both the Slides deck AND the actual `M5 - Agent Control Panel.html` tool confirm **four levers** (Stop Conditions, Structured Tool Outputs, Confidence Thresholds, North Star) **plus four separate rules of engagement** (Agency Permission, Access Control, Fallback Protocols, Checkpoints) — matching what the Notes said all along. The Glossary has been corrected in place.

### ⚠️ UNRESOLVED — "PM Decision Triangle" naming collision (new pattern: same name, unrelated concepts)
Different in kind from the naming/label variances logged elsewhere — this is one name pointing at **two unrelated frameworks** on the same materials page:
- **Notes' framing**: a three-mode decision-authority triangle — AI alone / AI + human checkpoint / human alone.
- **Slides' framing**: an interactive Latency / Cost / Accuracy trade-off triangle (draggable balance point, "what are you sacrificing" readout).

No shared content between the two beyond the word "triangle" and the number three. Flagged inline in both Module 5 - Notes.md and Module 5 - Glossary.md. **Needs a decision for the Torq rebuild**: keep both under different names, or decide one is the "real" PM Decision Triangle and rename the other.

### Other M5 naming variances (lower-stakes than the two RESOLVED items above — vocabulary drift, not structural conflicts)
- **Agent Spectrum labels**: Notes = Tool/Assistant/Agent/Autonomous Agent; Slides = Reactive(No Autonomy)/Function-Calling(Assisted Autonomy)/Semi-Autonomous(Human-in-the-Loop)/Fully Autonomous(Goal-Driven). Same 4-rung shape, different names — consistent with the Notes-vs-Slides vocabulary drift seen in M2 and M4.
- **Memory-type labels**: Notes = Short-term/Long-term/Episodic/Semantic; Slides = Episodic/Semantic/Working-Contextual/External Tools. Only "Episodic" and "Semantic" survive under the same name in both; definitions still roughly align.
- **Failure-mode lists partially overlap but aren't identical**: Notes' 5 failure modes (Hallucinated tool calls, Memory poisoning, Runaway loops, Silent handoff failure, Drift across sessions) vs. Slides' 4 "Orchestration Gap" failure modes (Silent Failures, Reasoning Drift, Infinite Loops, The Latency Tax) — 2 of 4 roughly map 1:1, the rest don't.
- **Agent anatomy layer labels**: Slides' SVG diagram uses Strategy Layer/Reasoning Engine/Action Layer/Context Layer, a different label set than the Notes' plain 4-trait list (Goals/Tool use/Memory/Iteration) for what's conceptually the same idea.

**Pattern note**: this is now the 3rd module in a row (after M2, M4) where the Slides+tool pairing is demonstrably more reliable than the Notes prose, and M5 specifically had 2 structural (not just naming) corrections. Recommend treating Slides+tool output as canonical by default in the Torq rebuild whenever they conflict with a module's Notes document, rather than adjudicating case-by-case.

### Class 5 key concepts captured (for context on later Torq-rebuild work)
- **Chat → Copilot → Agent**: the shift is "model acts," not just drafts — specs move from output shape to rules of action.
- **4 traits of agency**: Goals, Tool use, Memory, Iteration — all four required to count as an agent (vs. tool/assistant).
- **Agentic Design Patterns**: ReAct (single-agent reason-act-observe loop, the default) vs. Planner-Executor (multi-agent, for parallelism).
- **4 types of agentic memory** (per Notes): short-term, long-term, episodic, semantic — spec each explicitly, including the "no's."
- **AWSpec** (4 pillars): Actors, Pattern Plan, Memory, Tools — `05-agentic-workflows/awspec.md`.
- **Agent Control Panel** (4 levers + 4 rules): Stop Conditions/Structured Tool Outputs/Confidence Thresholds/North Star + Agency Permission/Access Control/Fallback Protocols/Checkpoints — `05-agentic-workflows/agent-control-panel.md`.
- Same RocketShip/Strategy-KB/#escalations P0-triage scenario carried forward from M3→M4→M5 as Juno's throughline capability, now extended into full agent form in the AWSpec/Control Panel worked examples.
- Optional post-class: rebuild or import-and-run Juno's workflow in Langflow, two paths (15 min import vs. 45 min from-scratch), producing screenshots + a reflection note (not graded).

## Class 6 (M6: Measure AI Quality with Evals and Guardrails) — course finale, DONE except Pre-Read

Final module. Deliverables: `06-evals/human-rubric.md` (Lab 1), `06-evals/eval-stack.md` (Lab 2), top-level `README.md` of the `juno-pm` fork (Lab 3, via the **Final Project Deliverables Builder** — filename has no "M6 -" prefix, unlike every other module tool, confirmed directly from its `<title>` tag). Optional: `06-evals/loom.md` (3-min async showcase link) and a `pitch.html` one-pager (generated by the same Lab 3 tool, mentioned only in the Slides, not the Notes).

### ⚠️ UNRESOLVED — "AI Levers for Optimization" is a different 3-item list in Notes vs. Slides
Notes' §3 lists **Model → Data → Architecture** as the three optimization levers (in that trying-order). The Slides' "Three Levers" section lists **The Prompt → The Model → The Data** instead — Architecture is dropped entirely and Prompt is added as the new (and recommended-first) lever. This is a genuine 3-item-list conflict, not just relabeling — the two documents disagree about what the third lever even is. **Decide for the Torq rebuild:** likely resolution is that Prompt/Model/Data (Slides) is correct and cheaper/faster, since Architecture-as-a-lever doesn't fit "try these before rebuilding" framing as well; but confirm before rebuilding since no tool exists to arbitrate this one (unlike the AWSpec/Control-Panel conflicts, which the M5 tools resolved).

### Other M6 Notes-vs-Slides variances (additive, not contradictory — Slides simply go deeper)
- "Why vibe checks fail": Notes give a 4-bullet list; Slides give a different 3-item framing (Invisible Failures / Subjectivity Trap / Performance Gap) — same argument, different structure.
- "How to build a human eval rubric": Notes list 5 flat components (Dimensions/Scale/Examples/Disagreement protocol/Sampling cadence); Slides describe a 5-step *process* across 3 phases (Create/Calibrate/Monitor) — components vs. process, complementary.
- "PM's Role in Evaluations": Notes give a 4-bullet ownership list; Slides give a different 3-item audit-responsibility framing — complementary, not contradictory.
- "Governance": Notes only name the 4 buckets (Compliance/Safety/Reliability/Reputation, unchanged since M2 — this framework has been the most stable one across the whole course); Slides add an entirely new layer of risk *metrics* (Blocked Request Rate, Hallucination Rate, Human Override Rate, Model Drift & Latency, each with a formula) and gate *mechanics* (Hard vs. Soft Gates, Zero-Tolerance Metrics, Grounding for Trust, Failure Taxonomy) that the Notes never mention at all.
- "PM Execution Plan": Notes only say governance buckets "get a row" in it, never defining its shape; Slides define a full 4-step framework (Build Your Eval Plan → Set Your Gatekeepers → Add Production Guardrails → Evolve Your Roadmap, each with a named trade-off). The **Final Project Deliverables Builder tool's actual PM Execution Plan output** (5 sections: Where Juno is today / What ships next / What I watch / Red lines / Governance) matches **neither** the Notes' vague mention nor the Slides' 4-step framework — a third distinct shape. **The tool is authoritative** per the established pattern; note this for the Torq rebuild as yet another Notes/Slides/tool three-way mismatch, though lower-stakes since Notes never really committed to a shape here.
- The Google Assistant case study is richer in Slides (6-step case study, 26-question rubric, graded every conversation not a sample) than the Notes' one-paragraph mention.

### Confirmed stable across the whole course
The **4-bucket Governance framework** (Compliance/Safety/Reliability/Reputation) is the only major framework that has survived unchanged from its first appearance in M2 all the way through to the M6 Final Project Deliverables Builder's actual output template — no drift, no renaming, no tool contradiction. Worth flagging as the one piece of course architecture that's fully trustworthy as-is for the Torq rebuild.

### Class 6 key concepts captured (for context on later Torq-rebuild work)
- **Why vibe checks fail**: a good demo proves capability, not reliability across the long tail; without a harness you can't tell if a change helped.
- **The 95% accuracy trap**: at production volume, 5% wrong can mean 50 wrong outputs/day, and one high-stakes miss can outweigh 950 correct ones.
- **The AI Eval Stack**: 3 layers, always all three — User Feedback (online, highest volume/lowest fidelity), Human Evaluation (system-level, calibrated rubric), Automated Assessment (component-level, golden set + LLM-judge + format/safety checks).
- **Human Eval Rubric**: 5 components — dimensions, 1-5 scale with anchors, examples, disagreement protocol, sampling cadence. Real-world reference: Google Assistant's 26-question rubric.
- **PM's Role**: owns the rubric/golden set/pass bar/regression cadence; acts on eval data (model swap, data fix, architecture change).
- **Governance framework** (stable since M2): Compliance, Safety, Reliability, Reputation.
- **Certification submission**: repo URL only, within 7 days of cohort end, graded on Application of Concepts / Credibility & Reasoning / Clarity / Strategic Thinking (1-3 scale each). The Slides explicitly validate 3 equally-acceptable submission paths: live demo, async Loom, or just the URL.
- This module closes the Juno/RocketShip throughline: the Final Project Deliverables Builder pulls every M1-M6 artefact path into one README + a separately generated `pitch.html`.

## COURSE CAPTURE STATUS: functionally complete as of 2026-08-25
All 6 classes have Notes, Glossary, Slides digest, and every lab/builder tool digest captured. Only outstanding items across the entire course: **5 Pre-Reads** (Modules 2-6; only Module 1's was ever pasted) and the two never-located "referenced but not linked" tools (M1 PM Toolkit Picker, M3 RAG Architecture Decider) which may not exist as separate files — pending Scott checking the live LMS directly. See the discrepancy entries above (tagged RESOLVED or UNRESOLVED) for the full list of framework conflicts to adjudicate before the Torq rebuild begins.

### Class 2 key concepts captured (for context on later Torq-rebuild work)
- **Fake-good vs. boring killer** framing — two-question filter (value frame? survives 3x cost stress?)
- **Four AI Value Propositions**: Cost, Revenue, Risk, Delight
- **Three-Layer Model**: Strategy / Mechanic / Implementation
- **Autonomy levels**: Suggest → Draft → Execute → Operate (Jobs × Risk × Autonomy lens)
- **AI Solution Decision Matrix**: 5-axis pressure-test (Value clarity, Technical feasibility, Data availability, Risk tolerance, Strategic fit), scored 1-5, "<3 avg = don't ship, 4+ on all five = boring killer" — explicitly a pressure-test tool, NOT the same file as `decision-matrix.md` (which is the separate Build/Buy/Fine-tune scored call)
- **Responsible AI** = Compliance + Safety + Reliability + Reputation
- **AI Strategy One-Pager**: 7 blocks (bet, user/job, mechanic, autonomy, technical approach, risk+guardrail, success metric)
