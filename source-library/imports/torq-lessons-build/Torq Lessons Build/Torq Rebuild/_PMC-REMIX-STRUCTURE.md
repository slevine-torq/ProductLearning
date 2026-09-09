# PMC → Torq Product Practice — course structure

**Structure: 1:1. Course N = Module N.** One Program ("Torq Product Practice") containing Course 0 (orientation) plus Courses 1–6, taken in sequence — each unlocks when the one before it is complete, matching how Programs work in TorqHub's admin panel.

Audience: Torq product/product-owner **consultants** working on Fortune 500 client engagements across automotive, airlines, healthcare, consumer/F&B, aerospace & defense, and financial services ([gotorq.com](https://www.gotorq.com)) — at any tenure, whether currently sitting in a client's product-owner seat or building general craft.

## Why 1:1 (and why the remix was retired)

Earlier rounds used a 5-course "engagement lifecycle" remix that cross-shuffled module content — Module 3's metrics split across three courses, Module 4 split across two, and so on. It read well as a narrative arc and it was a mistake: **scattering each module across courses made "are we missing anything?" unanswerable**, and content went missing for four consecutive rounds without anyone being able to prove it.

1:1 makes coverage verifiable by construction. Does Course 1 cover every section of Module 1? That's a checkable question, and [`_MODULE-COVERAGE.md`](_MODULE-COVERAGE.md) is where it gets answered in writing.

**The Torq reframe didn't go away — it moved.** It now lives entirely in the *writing*: consulting-context framing, the regulated-client callouts, engagement-aware examples, and artifacts designed to be filled in against the learner's own current work. What it no longer does is re-cut the curriculum.

## Structure

| Course | Source | Tasks | Artifacts |
|---|---|---|---|
| **0 · Before You Start** | New | 1 | None — orientation, pacing, workspace setup |
| **1 · Strategic Product Thinking** | Module 1 | 5 | Three Pillars Backlog Audit · Skill Stack Self-Assessment · AI prompt-escalation reflections · Lifecycle Health Check · Problem Hook & Value Proposition Worksheet |
| **2 · Discovering Product Opportunities** | Module 2 | TBD | TBD |
| **3 · Analytics & Metrics for Product Decisions** | Module 3 | TBD | TBD |
| **4 · High-Velocity Product Roadmaps** | Module 4 | TBD (+1 Torq-added) | TBD + Acceptance Criteria / UAT checklist |
| **5 · Product Experimentation** | Module 5 | TBD | TBD (keeps the source's real two-proportion z-test sample-size calculator) |
| **6 · Go-to-Market Launch Plans** | Module 6 | TBD | TBD + the capstone Master Prompt, re-themed to Torq's brand tokens |

**Task counts come from each module's coverage map, never from an assumption.** Course 1 turned out to need 5. Assuming 2 elsewhere is precisely how content got dropped before.

### Course 1 as built

| Task | Covers | Artifact |
|---|---|---|
| 1 · The Modern PM Mindset | PM identity crisis & the missing North Star; feature factory → value driver (full contrast + "this isn't 'shipping doesn't matter'"); three pillars of prioritization + the three trade-off cases | Three Pillars Backlog Audit |
| 2 · The Skill Stack & Your Place in the Team | All 5 skills with full descriptions; **PM as strategic arbiter** at the centre of 6 functions; connect-the-dots; B2C vs B2B + data noise / stakeholder noise | Skill Stack Self-Assessment |
| 3 · Turning AI Output Into Strategy | The three-prompt escalation (shallow → structured → strategic), V1-vs-V3 comparison, "organisation isn't strategy" | The prompts + reflections |
| 4 · The Product Development Life Cycle | 7 stages / 3 groups + "your safety net"; per-stage-group responsibilities, goals and Netflix beats; the AI-accelerated lifecycle | Lifecycle Health Check |
| 5 · Your Problem Hook & Value Proposition | Pick your initiative; strategic crisis; moment of misery; the hook; FOR/WE WILL/BECAUSE; cold-read test + 3 self-checks; Extra Practice closer | Problem Hook & Value Proposition Worksheet |

4,641 words across 5 tasks, against a source deck of 3,734 (~3,000 teaching). Coverage: 19/19 teaching rows mapped.

## Cross-cutting layer (in the writing, not the structure)

- **Regulated-industry callouts.** Healthcare, aerospace & defense, and financial-services engagements carry approval and certification gates that change feasibility, testing, and launch. Repeatable callout component, not bespoke per task.
- **Artifacts target the learner's own engagement.** No shared fictional practice scenario — this audience has real work to apply it to, which is a better substrate than a made-up company.
- **Native Blocks for recall.** Card flipping, matching, classification, and quizzes are added as Blocks inside the same Task as the content, sharing one Mark Complete. Terms feed from each module's `Glossary.md`.

## Correction history

Kept because it's why the rules in `Build/_BUILD-NOTES.md` exist.

| Round | Correction |
|---|---|
| 1 | First lesson rejected — too long, assumed a newly-staffed reader, contained a fabricated client scenario |
| 2 | Over-corrected into "outside advisor without authority"; real Torq positioning is embedded ownership |
| 3 | Lessons were being written from `Notes.md` alone, never the slides — full deep-read of all 6 modules followed |
| 4 | PDLC over-weighted while the Problem Hook section was missing entirely; hierarchy corrected to Program → Course → Task → Block; **the strategic-arbiter section was deleted as "duplicate" — a real loss caused by a fix** |
| 5 | Root cause found: the *"match `Notes.md` density"* rule. Notes is a summary of the slides, so the rule guaranteed a summary of a summary. Rule deleted, coverage maps introduced, remix retired for 1:1, Course 1 rebuilt at 5 tasks with all missing content restored |

## Open questions

1. Does 1:1 hold for every module, or does one of Modules 2–6 genuinely warrant splitting into two courses? Decide from its coverage map, not in advance.
2. Where exactly does the Torq-added QA / acceptance-criteria task sit in Course 4 — and should it be flagged in-lesson as a Torq addition rather than PMC content?
3. The answer-key reference example ("Loopline", a generic B2B helpdesk tool) is approved but unbuilt — it applies to Course 4's PRD, Course 5's Experiment Brief, and Course 6's GTM Plan.
