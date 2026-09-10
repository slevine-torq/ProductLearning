# Curriculum coherence audit

This is the curator's overlay for the two ProductLearning programs. It does not replace or rewrite a captured syllabus. It tells a learner or successor which supplied files are authoritative, how repeated concepts progress, and which preserved files are historical.

**Boundary:** Torq Product Practice and the completed Technical Fluency lessons are learner-facing Torq work. Claude Code for PM, AI Product Management, and Product Leadership are restricted Product School captures used only as builder evidence until original Torq adaptations are completed and reviewed. The detailed source analysis below is a build aid, not a learner assignment.

For file-level warnings, see [Source library status](source-library/STATUS.md). For Torq's instructional pattern, see [How Torq learning is structured](TORQ-LEARNING-STRUCTURE.md).

## Authority order

Use evidence in this order when two files disagree:

1. Completed lesson files prove what is built.
2. The current syllabus, program specification, and coverage map govern intended sequence.
3. This audit and the two curated build handoffs resolve known contradictions.
4. Capture session states describe source completeness, not current curriculum completion.
5. Pre-build intake, early remix hypotheses, and stale production notes are history only.

Never “fix” a contradiction by editing `source-library/imports/`. Record a new resolution in this overlay or in a copied course workspace.

## Program status at a glance

| Course line | Status on 2026-09-09 | Current authority | Known gap or next action |
|---|---|---|---|
| **Torq Product Practice** | **Completed:** Course 0 and Courses 1–6; **37 built HTML tasks** | [Syllabus](<source-library/imports/torq-lessons-build/Torq Lessons Build/Torq Rebuild/Syllabus/Syllabus.md>), [coverage map](<source-library/imports/torq-lessons-build/Torq Lessons Build/Torq Rebuild/_MODULE-COVERAGE.md>), [completed build](<source-library/imports/torq-lessons-build/Torq Lessons Build/Torq Rebuild/Build/>), and [PM handoff](programs/product-management-for-consultants/BUILD-HANDOFF.md) | Review for TorqHub publishing; do not follow older “in progress” notes. |
| **Claude Code for PM** | **Restricted reference capture:** four confirmed live classes, 17 lessons; no Torq rebuild supplied | [Class captures](<source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/>), [scenario artifact](<source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md>), and [workspace scaffold](<source-library/imports/claude-code-for-pm/Claude Code For PM/pm-workspace/README.md>) | Do not assign directly. Build an original Torq adaptation; the six-stage arc is conceptual and source Parts 5–8 are not confirmed live classes. |
| **AI Product Management** | **Restricted partial reference capture:** six modules; five standalone pre-reads are missing; no Torq rebuild supplied | [Capture state](<source-library/imports/ai-product-management/AI Product Management/Source Material/_SESSION-STATE.md>), module slides, builders, and the resolutions below | Do not assign directly. Build an original Torq distillation using the canonical choices below. |
| **Product Leadership** | **Restricted reference capture:** six modules; no Torq rebuild supplied | [Module captures](<source-library/imports/product-leadership/Product Leadership/Source Material/>), [final project brief](<source-library/imports/product-leadership/Product Leadership/Source Material/Final Project Brief/artifacts/Final Project Brief (digest).md>), and [PM handoff](programs/product-management-for-consultants/BUILD-HANDOFF.md) | Do not assign directly. Build an original Torq adaptation that retains executive-altitude treatment. |
| **Technical Fluency** | **15 built / 24 planned:** Courses 0–2 built; Courses 3–6 planned | [Program specification](<source-library/imports/supplemental-library/Technical Fluency — Program Spec.md>), [reference guide](<source-library/imports/supplemental-library/Technical Fluency Reference Guide.md>), [built lessons](<source-library/imports/technical-fluency-build/Technical Fluency Build/Build/>), and [TF handoff](programs/technical-fluency/BUILD-HANDOFF.md) | Begin with Course 3, Task 1. Preserve the independent 7-course, 39-task design. |

## Intended progression for future Torq adaptations

This is design guidance for the builder of a future Torq adaptation. “Safe to skip” means a future Torq course may allow a learner to bypass a repeated explanation after demonstrating mastery; the applied exercise or higher-altitude treatment should remain.

| Concept | First taught | Reinforced | What the later treatment adds | Safe to skip |
|---|---|---|---|---|
| PM execution foundations | Product Practice | Product Leadership | Strategy, roadmapping, influence, finance, and executive decision pressure | Product Leadership's recap of basic PM vocabulary, not its executive exercise |
| Research and synthesis | Product Practice discovery | Claude Code for PM research | Repository-aware synthesis, competitive research, traceability, and reusable workflows | Claude's research-method recap; complete the repository workflow |
| PRDs and prototypes | Product Practice roadmap course | Claude Code for PM; AI Product Management | Claude adds codebase collaboration, spec readiness, and QA; AI PM adds AI architecture, UX, and evaluation | Generic PRD anatomy when mastered; not codebase verification or AI-specific fields |
| Technical AI fluency | Technical Fluency | AI PM; Claude Code; Product Leadership | Product decisions; tool operation; organizational governance, respectively | Definition-level recaps; not the decision, operating, or governance exercise |
| Quality | Product Practice acceptance criteria | Claude QA; AI PM evals | Claude checks implementation and handoff readiness; AI PM evaluates probabilistic AI-output quality | Repeated QA definitions; neither applied QA nor eval design |
| CSS | Technical Fluency Course 1 | Frontend/backend context | One appearance treats CSS as a language; the other explains its role in the client/server split | Either definition recap after mastery; keep the contextual comparison |
| REST and CRUD | Technical Fluency Course 2 | Data and system discussions | Cross-reference connects HTTP operations to data operations | The second definition, not the mapping exercise |

## Recorded source resolutions

These decisions govern a future Torq rebuild. The conflicting captures remain unchanged.

### Claude Code for PM

- **Schedule:** four live classes are confirmed. The six-stage arc is a conceptual learning model.
- **Scenario:** the eight-part Streakly scenario is an extended learning artifact. Parts 5–8 are useful self-directed continuation, but are not confirmed as live classes.
- **Build implication:** use the captured structure only as restricted builder reference. A future Torq course must be independently written and should label any self-directed continuation clearly; do not publish or reproduce the eight-part source prompt sequence.

### AI Product Management

| Module | Conflict | Resolution for future Torq build |
|---|---|---|
| M1 | Five-category notes versus seven-category slide toolkit | Use the fuller **seven-category** toolkit. |
| M2 | Four autonomy levels versus the live tool's three levels | Use **Assist / Copilot / Agent** and the live tool labels. |
| M2 | Cost/Revenue/Risk/Delight versus Automation/Augmentation/Insights/Personalization | Keep both and name their jobs: **business-outcome lens** versus **mechanism lens**. |
| M2 | Two different “AI Solution Decision Matrix” concepts | Give each a unique Torq name during the rebuild. |
| M2 | Strategy/Mechanic/Implementation versus live mapper terminology | Use **User Workflow / Technical AI Solution / Business Outcome**; record the earlier wording as aliases. |
| M3 | `ai-prd.md` versus `prd.md`; shorter versus fuller taxonomy | `prd.md` and the fuller **seven-category AI PRD taxonomy** are canonical. |
| M4 | Seven-node notes versus four-pillar live flow | Use the **four-pillar** flow. The Trust Gap checker is required. A future optional Juno lab must write `trust-gaps-native-audit.md`, not overwrite `04-ai-ux/trust-gaps.md`. |
| M5 | Nine-section notes versus four-pillar live AWSpec | Use **Actors / Pattern Plan / Memory / Tools**. |
| M5 | “PM Decision Triangle” names two unrelated frameworks | Rename them **Execution Ownership Modes** and **Latency–Cost–Accuracy Trade-off Triangle**. |
| M6 | Builder and notes disagree on execution-plan shape | Use the builder's five sections: **Where Juno is today / What ships next / What I watch / Red lines / Governance**. |
| M6 | Prompt/Model/Data versus Model/Data/Architecture optimization lists | Use **Prompt → Model → Data → Architecture**, explicitly labeled a Torq synthesis. |

All identified AI PM contradictions are resolved above; no pending choice remains. Missing source files remain a capture gap rather than a curriculum contradiction.

### Product Leadership

- Product Practice remains the foundation; Product Leadership does not supersede its execution artifacts.
- Module 6 timing is audience-dependent: use **2–3 minutes per learner when everyone presents** and **about 7 minutes for a smaller volunteer showcase**.
- On-demand files for Modules 2–6 point to the same notes by design; do not create duplicate copies.

### Technical Fluency

- CSS appearing in two contexts and the REST-to-CRUD cross-reference are deliberate reinforcement.
- The program remains independent, visible at all three tiers, and non-gated.
- Course 3, Task 1 is the next build item; do not invent an eighth course or consolidate it into the PM program.

## Historical and superseded material

Do not use the following as current build guidance. The exact list and safer replacements are in [Source library status](source-library/STATUS.md):

- three superseded Product Practice DOCX captures;
- two broken Product School LMS shell pages;
- Product Practice state files that still say “in progress” or “Course 2 next”;
- early remix hypotheses and pre-build intake documents;
- supplemental learning-path prose with old `PMC/…` paths and pre-build status claims.

## Audit acceptance record

| Check | Result |
|---|---|
| Product Practice task count | **37 built**, confirmed from HTML files in the completed build |
| Technical Fluency task count | **15 built / 24 planned**, totaling 39 |
| Course boundaries | Preserved: four PM course lines plus independent Technical Fluency |
| Contradictions | Every identified contradiction is resolved above; missing captures are explicitly gaps |
| Overlap | Every major overlap states later value and a safe-skip rule |
| Product School prompts | Retained only inside the restricted source capture; no learner-facing extraction or catalog |
| Imported files | Remain immutable; validation compares the 258-file source set and a pre-change hash snapshot was used for this audit |
| Historical broken links | Recorded in [Source library status](source-library/STATUS.md); imports were not edited |

Last audited: **2026-09-09**.
