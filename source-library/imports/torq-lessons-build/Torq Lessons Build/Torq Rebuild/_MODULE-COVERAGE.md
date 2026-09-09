# Module coverage maps

**One row per section of each module's slide deck, mapped to the Task that covers it.** A course is not done until every teaching row has a home.

This file exists because rounds 1–4 lost content silently: lessons were written from `Notes.md` (itself a summary of the slides), against a "match Notes.md density" rule, and each round fixed one symptom without re-checking total coverage. Module 1 shipped at well under half the source's teaching content before this was caught. The inventory now lives here, in writing, instead of in anyone's head.

**Row types:**
- **TEACHING** — real instructional content. Must map to a Task. No exceptions without an explicit signed-off drop.
- **ADAPT** — content that exists but needs translation for self-paced Torq delivery (e.g. cohort-specific project scenarios → the learner's own engagement).
- **LOGISTICS** — live-cohort mechanics with no self-paced equivalent (cameras on, breaks, introductions). Legitimately dropped.
- **STRUCTURAL** — navigation/agenda slides. Folded into course framing, not a Task of their own.

**Origin tags** (added round 6 — Type answers *did we cover it*, Origin answers *how do we write it*):

| Origin | What it means | What we do |
|---|---|---|
| **Industry-standard** | A concept that exists in the field independently of PMC | Teach the real canonical version, not PMC's renaming of it. Credit the originator in the program-level Sources task |
| **PMC-original framing** | PMC's own coined term, bespoke table structure, or exercise design | Replace with the real-world equivalent. A source's *packaging* of a generic idea is the protected part — this is the single biggest lever on copyright exposure |
| **Real public case** | Netflix, Spotify, Amazon, iPhone, New Coke… | **Keep.** Factual business history, not PMC's IP, and it's the actual teaching. Don't strip it chasing the no-fabricated-examples rule |
| **Torq-added** | New content with no PMC equivalent | Flag explicitly as a Torq addition so it's never mistaken for source coverage |

Why Origin exists: round 6 found Tasks 1, 2 and 4 at 26–32% verbatim overlap with the deck. Coverage was being audited; originality never was. Origin makes the rewrite decision auditable per row, the same way Type makes coverage auditable. See [`_TORQ-LENS-PLAYBOOK.md`](_TORQ-LENS-PLAYBOOK.md) Steps 1 and 3.

---

## Module 1 → Course 1: Strategic Product Thinking

Source: `Source Material/Class 1/artifacts/Module 1 - Slides (Shareable).html` (3,734 words), plus `Module 1 - Notes.md`, `Module 1 - Glossary.md`, `Exercise 1 Guide.html`, `Exercise 2 Guide.html`, `Problem Hook Builder.html`.

| # | Slide section | Type | Origin | Covered by |
|---|---|---|---|---|
| 1 | Title + the deck's own 4-topic list | STRUCTURAL | — | Course intro / task split derives from this |
| 2 | Cohort Norms (cameras on, arrive on time, Slack) | LOGISTICS | — | — dropped, live-cohort only |
| 3 | Introductions | LOGISTICS | — | — dropped |
| 4 | Final Project overview (6 deliverables, repo submission) | ADAPT | PMC-original framing | Course 0 (what you build across the program) |
| 5 | Final Project · Your Repo (fork, one folder per module) | ADAPT | Industry-standard | Course 0 workspace setup + `_TORQ-WORKSPACE.md` |
| 6 | Certification Syllabus (all 6 modules) | ADAPT | — | Course 0 course table |
| 7 | Agenda | STRUCTURAL | — | Course intro |
| 8 | Section 01 divider — the flood-of-requests framing; value = turning noise into defensible direction | TEACHING | Industry-standard | **Task 1** opening |
| 9 | **The PM identity crisis** — missing North Star; everything urgent = nothing prioritized; the oversized backlog; value = clarity, *how* of shipping → *why* of the business | TEACHING | Industry-standard | **Task 1** |
| 10 | **Feature factory → value driver** — 4-row old/new contrast (Role, Focus, Asks, Success) + "this isn't 'shipping doesn't matter'" | TEACHING | **PMC-original framing** → rebuild as outcome-vs-output per **Marty Cagan** (*Inspired*) / **Teresa Torres**; "feature factory" itself is **John Cutler's** term, not PMC's. Drop PMC's 4-row table structure and its cell wording | **Task 1** |
| 11 | **The three pillars of prioritization** — Customer Needs / Business Goals / Feasibility + the three trade-off cases | TEACHING | **PMC-original framing** → this is **desirability / viability / feasibility** (IDEO / design thinking, popularised by **Tim Brown**). Teach it under the canonical names. ⚠️ Source of the 121-word verbatim run in Task 1 — the pillar descriptions and trade-off bullets were copied intact | **Task 1** |
| 12 | **The PM skill stack** — 5 skills with descriptions + "passenger to driver" framing | TEACHING | **PMC-original framing** (the 5-skill grouping is PMC's packaging) → keep the underlying competencies, rebuild the grouping and every description. ⚠️ Note the "passenger/driver" language collides with Torq's own Observer→Passenger→Driver→Designer AI model — see open item #5; don't imply they're the same framework | **Task 2** |
| 13 | **The PM as strategic arbiter** — center of 6 functions; not the boss but the only whole-picture role; connect the dots | TEACHING | Industry-standard (cross-functional PM positioning; cf. Cagan on the PM's role) | **Task 2** ⚠️ *deleted in round 4, restored round 5 — do not cut again* |
| 14 | **B2C vs B2B** — 4 bullets each + filtering data noise vs. stakeholder noise | TEACHING | Industry-standard | **Task 2** |
| 15 | Section 02 divider — AI generates tidy feature lists; your job is spotting where the output is noise | TEACHING | Industry-standard | **Task 3** opening |
| 16 | **Hands-on lab: strategic discovery map** — 5 steps (baseline → structural upgrade → strategic polish → compare V1/V3 → share) | TEACHING | **PMC-original framing** (their exercise design) → keep the shallow→structured→strategic *escalation structure*, write new prompts against the learner's own product | **Task 3** |
| 17 | **Quick debrief** — AI organisation ≠ strategy; grouping isn't judgment about engineering time | TEACHING | Industry-standard | **Task 3** |
| 18 | Break | LOGISTICS | — | — dropped |
| 19 | Reminder / cameras on | LOGISTICS | — | — dropped |
| 20 | Section 03 divider — PDLC framing (guessing → knowing) | TEACHING | Industry-standard | **Task 4** opening |
| 21 | **PDLC: 7 stages** (Discovery→Iteration) + "naming varies, logic is the same" + "your safety net" | TEACHING | Industry-standard (the product development lifecycle is common industry knowledge; PMC's 7-stage cut is one of many) | **Task 4** |
| 22 | **The PM across the lifecycle** — Discover / Build / Deliver, each with 3 responsibilities + a Goal + a Netflix "Play Something" beat | TEACHING | Industry-standard **+ Real public case** (Netflix — keep the beats, they're factual and they're the teaching) | **Task 4** ⚠️ *was compressed to a 5-line list; restored at full depth* |
| 23 | **The AI-powered life cycle** — Discover/Design/Deliver: PM role + AI assist + output per phase | TEACHING | Industry-standard | **Task 4** |
| 24 | Section 04 divider — the commitment moment; define the why | TEACHING | Industry-standard | **Task 5** opening |
| 25 | Choose your scenario (StreamLine B2C / RouteLogic B2B / bring your own) | ADAPT | PMC-original framing (their fictional companies — excluded by the no-shared-scenario rule) | **Task 5** — Torq learners use their own current engagement, which is the source's own third option |
| 26 | **Draft your problem hook & value prop** — strategic crisis / moment of misery / hook / value prop + cold-read check | TEACHING | **PMC-original framing** ("problem hook," "moment of misery," and the FOR/WE WILL/BECAUSE template are PMC's coinages) → the underlying idea is a **value proposition statement** (Osterwalder's Value Proposition Canvas) plus **jobs-to-be-done** pain framing. Rebuild under Torq's own terms | **Task 5** |
| 27 | **Key takeaways — Module 1 in four lines** | TEACHING | Industry-standard | Distributed across Tasks 1–5 takeaways; all four source points land |
| 28 | **Extra practice 01** — audit your own backlog against the three lenses | TEACHING | Industry-standard | **Task 1** artifact (Backlog Audit) |
| 29 | **Extra practice 02** — stress-test the opposite scenario | TEACHING | Industry-standard | **Task 5** optional closer |
| 30 | Next session · Module 2 preview | STRUCTURAL | — | Task 5 footer |
| 31 | Resources & Templates | STRUCTURAL | — | Artifact links per task |
| 32 | Q&A | LOGISTICS | — | — dropped |

**Teaching rows: 19. Mapped: 19. Unmapped: 0.**

**Origin summary:** 13 Industry-standard · 5 PMC-original framing (rows 10, 11, 12, 16, 26 — these drive the Phase D rewrites) · 1 Real public case (row 22, Netflix — keep) · 0 Torq-added.

**Altitude note:** no Module 1 row sits above Consultant/PM level, so Course 1 needs no "One level up" callout. Expect those in Modules 4 and 6 (roadmap ownership, GTM/SOW scoping).

Supporting sources folded in:
- `Module 1 - Glossary.md` (~25 terms) → Card Flipping Block on Task 1 and Task 4
- `Exercise 1 Guide.html` → Task 3's prompt-escalation structure and reflection questions (prompts rewritten, not copied verbatim — frameworks not prose)
- `Exercise 2 Guide.html` + `Problem Hook Builder.html` → Task 5's worksheet fields and the three cold-read self-checks

---

## Module 2 → Course 2: Discovering Product Opportunities

Source: `Class 2/artifacts/Module 2 - Slides (Shareable).html` (3,559w), plus `Module 2 - Notes.md` (1,430w), `Module 2 - Glossary.md` (755w), `Exercise 1 Guide.html` (2,242w, embeds two full UXR/bug-report datasets for the fictional StreamLine/RouteLogic scenarios), `Exercise 2 Guide.html` (944w), `Persona & Journey Builder.html` (328w). All six files read in full.

⚠️ **Shrink-and-reframe module.** Module 2 teaches running discovery from scratch — personas, journey maps, your own qualitative research, all built around PMC's fictional StreamLine/RouteLogic companies. A Torq consultant more often arrives to find research already done (or done badly, or ignored) on an initiative that's already scoped. Every TEACHING row still gets mapped — **no drops** — but the framing targets *critically using and stress-testing a client's existing research*, and running discovery only where the engagement actually calls for it. See the weighting rule in [`Build/_BUILD-NOTES.md`](Build/_BUILD-NOTES.md).

**✅ Built** — 5 tasks + Blocks sheet, all passing de-dup (0–0.1% overlap) and brand audit. This was also the course that settles `Build/_BUILD-NOTES.md` open item #11 (1:1 vs. engagement-lifecycle structure) — tentatively yes, 1:1 holds, pending Scott's confirmation.

| # | Slide section | Type | Origin | Covered by |
|---|---|---|---|---|
| 1 | Title + 4-topic agenda | STRUCTURAL | — | Course intro / task split derives from this |
| 2 | Cohort Norms | LOGISTICS | — | — dropped |
| 3 | Certification Syllabus | ADAPT | — | Already in Course 0 |
| 4 | Agenda | STRUCTURAL | — | Course intro |
| 5 | Section 01 divider — synthesis isn't strategy; your value is discernment | TEACHING | Industry-standard | **Task 1** opening |
| 6 | Instructor Q&A takeaway — "AI provides synthesis, PM provides discernment" | TEACHING | Industry-standard | **Task 1** |
| 7 | **The evolution of discovery** — traditional vs. AI-powered (old/new comparison table) | TEACHING | **PMC-original framing** (the specific table wording/structure) → keep the real underlying shift (AI compresses research cycle time; judgment moves from "what did they say" to "what does it mean"), rebuild the table | **Task 1** |
| 8 | **Co-pilot vs. pilot** — AI scales synthesis, PM owns judgment and curation | TEACHING | Industry-standard ("AI as co-pilot" is now common industry usage, not PMC-coined) — keep the concept, don't copy PMC's exact phrasing | **Task 1** |
| 9 | **Core values as a discovery filter** — Strategic Alignment / Problem Filter / Success Criteria | TEACHING | **PMC-original framing** (no single external originator for this specific 3-part cut) → rebuild under Torq's own naming, kept as a legitimate prioritization-filter concept | **Task 1** |
| 10 | **Discovery methods** — Foundational / Evaluative / Strategic buckets; attitudinal (say) vs. behavioral (do) | TEACHING | **Industry-standard** — say-vs-do is standard UX research literature (cf. Nielsen Norman Group, "What Users Say vs. What Users Do"); the three-bucket research-type taxonomy is common UX research practice (cf. Erika Hall, *Just Enough Research*) → teach under the canonical framing, not PMC's exact bucket wording | **Task 1** |
| 11 | "The gold is often behavioral" — Slack example (spreadsheet workaround → App Directory) | TEACHING | Real public case, but ⚠️ **unverified specifics** — the "PM shadowed a user with a spreadsheet" origin detail is undocumented product lore, not a citable fact. Rebuild around the verifiable part only: Slack's third-party App Directory is real and well documented; drop the unverifiable origin anecdote | **Task 1** |
| 12 | **User personas: behavioral anchors, not bios** — the "average user" trap; LinkedIn Learning Completionist/Explorer example | TEACHING | Industry-standard concept (behavior-based personas over demographic personas is well-established UX practice), but ⚠️ **the LinkedIn Learning attribution is unverified** — do not present as confirmed LinkedIn Learning research. Rebuild as an illustrative behavioral-persona pattern without naming the company, or replace with a verifiable example | **Task 2** |
| 13 | "Prioritize via intentional trade-offs" | TEACHING | Industry-standard | **Task 2** |
| 14 | **Three categories of discovery insight** — Behaviors / Needs / Pain Points, with Duolingo (Streaks), Dropbox (Dropbox for Business), Canva (Magic Resize) examples | TEACHING | **PMC-original framing** for the 3-bucket cut → real equivalent is **Osterwalder's Jobs / Pains / Gains** (*Value Proposition Design*, already cited in Course 1's Sources task) — rebuild under that framing. **Real public cases** (Duolingo, Dropbox, Canva) are well-documented and stay | **Task 2** |
| 15 | **Good vs. bad discovery questions** (Quick Vote) — past/present reality vs. future hypotheticals | TEACHING | Industry-standard (avoiding hypothetical/leading questions is standard interview-research practice) | **Task 2** |
| 16 | Section 02 divider — AI will smooth over a moment of misery; your job is to catch it | TEACHING | Industry-standard | **Task 3** opening |
| 17 | **Hands-on lab: AI synthesis for discovery** — baseline → deploy Lead-PM prompt → audit → catch logic leaks → share takeaway | TEACHING | **PMC-original framing** (their specific exercise design + the StreamLine/RouteLogic datasets, excluded by the no-shared-scenario rule) → keep the baseline-then-audit *structure*, rewrite the prompt for the learner's own product/engagement, drop the fictional datasets | **Task 3** |
| 18 | "Trust, but verify" / evidence ≠ execution — why the prompt omits a roadmap | TEACHING | Industry-standard | **Task 3** |
| 19 | Break / cameras-on reminder | LOGISTICS | — | — dropped |
| 20 | **Journey mapping: from pain point to solution** — 6-step playbook (goal → persona → scope → steps → touchpoints → key moments) | TEACHING | Industry-standard — journey mapping is a standard UX/service-design method (cf. Nielsen Norman Group) | **Task 5** — grouped with the journey-map lab (Section 04) by concept, not by its physical placement in the deck next to Section 02 |
| 21 | Spotify music-sharing journey map (real public case) — the Share→Receive experience gap | TEACHING | Real public case — keep, it's the teaching | **Task 5** |
| 22 | Section 03 divider — the status quo is your #1 competitor | TEACHING | Industry-standard | **Task 4** opening |
| 23 | **Status quo as #1 competitor** — "no decision," the breaking point, the strategic gap | TEACHING | **PMC-original framing** for the specific terms → the real, well-documented equivalent is **status-quo bias** (Samuelson & Zeckhauser, 1988) and the **Challenger Sale**'s "your biggest competitor is often no decision" (Dixon & Adamson) → rebuild under that framing, cite both in the Sources task | **Task 4** |
| 24 | **Competitive intelligence, AI-powered** — identify competitors / create CI assets / get intel from sources (old/new table) | TEACHING | **PMC-original framing** (the specific table) → underlying practice (competitive intelligence workflows) is industry-standard; rebuild the table | **Task 4** |
| 25 | Section 04 divider — journey-map your competitive edge | TEACHING | Industry-standard | **Task 5** opening (paired with row 20/21) |
| 26 | **Hands-on lab: journey-map your competitive edge** — define persona → document workaround → map future state → name your edge → save deliverable | TEACHING | **PMC-original framing** (their exercise design + StreamLine/RouteLogic scenarios) → keep the current-state-to-future-state structure, rewrite for the learner's own engagement, drop the fictional scenarios | **Task 5** |
| 27 | "You're beating a habit, not an app" | TEACHING | Industry-standard | **Task 5** |
| 28 | Key takeaways — Module 2 in four lines | TEACHING | Industry-standard | Distributed across Tasks 1–5 takeaways |
| 29 | Extra practice 01 — synthesize your own real feedback | TEACHING | Industry-standard | **Task 3** artifact extension |
| 30 | Extra practice 02 — expand your journey map with team actions/technical requirements | TEACHING | Industry-standard | **Task 5** optional closer |
| 31 | Next session preview | STRUCTURAL | — | Task 5 footer |
| 32 | Project deliverable check (StreamLine/RouteLogic repo submission) | ADAPT | PMC-original framing (fictional scenario) | Folded into Torq's own workspace convention, not the fictional repo |
| 33 | Resources & Templates | STRUCTURAL | — | Artifact links per task |
| 34 | Q&A | LOGISTICS | — | — dropped |

**Teaching rows: 24. Mapped: 24. Unmapped: 0.**

**Origin summary:** 13 Industry-standard · 7 PMC-original framing (rows 7, 9, 14, 17, 23, 24, 26 — drive Phase D/F rewrites) · 3 Real public case (rows 11 ⚠️partial, 14 sub-cases, 21) · 1 flagged unverified attribution (row 12, LinkedIn Learning) · 0 Torq-added.

**Altitude note:** no row here clearly sits above Consultant/PM level — discovery and competitive analysis are core PM craft at any tenure. No "One level up" callout expected for this course, unless Course 4 or 6 drafting reveals a natural cross-reference.

**Shrink-and-reframe application:** every task keeps its real framework (research methods, personas, journey mapping, competitive intelligence) — a well-rounded PM needs to recognize good research and a good journey map even when not producing them from scratch. What changes is the artifact instruction: Tasks 1–2 and 5 ask the learner to *audit and apply* the framework to research/intel a client already has; Tasks 3–4 (the two hands-on labs) keep a build-something artifact, since AI-synthesis literacy and journey mapping are skills a consultant does exercise directly, just against their own engagement's real material instead of a fictional company's.

**Task count: 5**, matching the deck's natural 4-section shape plus a split of Section 01 (rows 5–15, dense enough for two tasks — discovery filter + methods, then personas + insight categories) — same pattern as Module 1's Section 01 split.

## Module 3 → Course 3: Analytics & Metrics for Product Decisions

Source: `Class 3/artifacts/Module 3 - Slides (Shareable).html` (3,965w), plus `Module 3 - Notes.md` (1,240w), `Module 3 - Glossary.md` (553w), `Exercise Guide.html` (1,979w, both scenarios' full data snapshots), `Hypothesis Builder.html` (395w, same fields as the Exercise Guide's worksheet), `Pre-Read.html` (557w). All six files read in full.

Execution-oriented already — this is core analytical craft a consultant exercises directly on real engagement data, at any tenure. No shrink-and-reframe treatment needed; the standard consulting-context pass (regulated-client callout where relevant) is enough.

⚠️ **A fabrication issue, distinct from the usual copyright rewrite.** Two "Instructor-Led Q&A" diagnostics in Section 02 stage a crisis at a **named real company** — "You're a senior PM at Spotify, mobile DAU dropped 37%..." and "You're a senior PM for Amazon Checkout, conversion collapsed 72%..." — with fabricated numbers and dates. This isn't documented business history (which would be a legitimate Real public case); it's an invented incident wearing a real company's name, which is exactly the pattern Torq's own no-fabrication rule exists to prevent (`Build/_BUILD-NOTES.md`: "no real client specifics... reuse document shapes"). Rebuild both as genuinely anonymized scenarios — "a streaming platform," "a checkout flow" — per the de-identified-pattern convention in `_TORQ-CLIENT-INTAKE.md`.

| # | Slide section | Type | Origin | Covered by |
|---|---|---|---|---|
| 1 | Title + 3-topic agenda | STRUCTURAL | — | Course intro |
| 2 | Cohort Norms | LOGISTICS | — | — dropped |
| 3 | Certification Syllabus | ADAPT | — | Already in Course 0 |
| 4 | Agenda | STRUCTURAL | — | Course intro |
| 5 | Section 01 divider — data is cheap, the right metric is expensive | TEACHING | Industry-standard | **Task 1** opening |
| 6 | Quick Vote — "success metric showdown" (Instant Transfer example) | TEACHING | PMC-original framing (their specific illustrative example) → keep as a generic hypothetical, reworded, not attributed to a real company | **Task 1** |
| 7 | **Vanity vs. strategic metric** | TEACHING | **Industry-standard** — "vanity metric" is Eric Ries's term (*The Lean Startup*, 2011); cite in Sources | **Task 1** |
| 8 | **Three pillars / three traps** — clarify goal, focus on control, maintain balance; false signals, lack of context, averages | TEACHING | **PMC-original framing** for this specific cut → real equivalent is **actionable/accessible/auditable metrics** and the counter-metric concept from Croll & Yoskovitz, *Lean Analytics* — rebuild under that framing, cite in Sources | **Task 1** |
| 9 | **Leading indicator vs. lagging result** | TEACHING | Industry-standard — standard business/OKR vocabulary, predates this course (cf. Kaplan & Norton, Balanced Scorecard) | **Task 1** |
| 10 | **AARRR funnel** | TEACHING | **Industry-standard** — "Pirate Metrics," coined by **Dave McClure** (500 Startups, ~2007); cite by name, don't present as generic or PMC-original | **Task 2** opening |
| 11 | Activation & Retention as the "sweet spots" | TEACHING | Industry-standard | **Task 2** |
| 12 | **The outcome hierarchy** — YouTube example (Consumers/Creators/Advertisers funnels) | TEACHING | Industry-standard concept (map distinct personas' funnels separately), but ⚠️ **the specific YouTube figures are illustrative, not documented public data** — present as a hypothetical multi-sided-marketplace example, not attributed to YouTube's real reported metrics | **Task 2** |
| 13 | Section 02 divider — slice finds where, size finds how urgent | TEACHING | Industry-standard | **Task 3** opening |
| 14 | **Segmentation — four lenses** (behavioral, tenure, environmental, account tier) | TEACHING | Industry-standard practice (segmentation dimensions are standard analytics vocabulary); PMC's specific 4-lens labels are their own cut, reword | **Task 3** |
| 15 | Segmentation examples — Instagram (camera tools), Duolingo (180 seconds), Airbnb (Android parity), Zoom (40-min limit) | TEACHING | ⚠️ **Unverified specifics attributed to real companies**, same caution as Module 2 row 12 — genericize (e.g. "a video app," "a language-learning app") rather than present as confirmed fact about these companies | **Task 3** |
| 16 | E-commerce slice example (result signals vs. segment table) | TEACHING | Industry-standard — explicitly generic already, no attribution issue | **Task 3** |
| 17 | **Cohort analysis** — decline (leak) vs. flatline (ceiling); reading the heatmap | TEACHING | Industry-standard — cohort analysis is foundational analytics practice, no single originator to cite | **Task 3** |
| 18 | **AI as your data analyst** — slicing/sizing/auditing prompts | TEACHING | Industry-standard practice description | **Task 3** |
| 19 | Instructor Q&A — Spotify DAU −37% diagnostic | TEACHING | ⚠️ **Fabricated incident, real company name** — see note above. Rebuild fully anonymized | **Task 4** |
| 20 | Instructor Q&A — Amazon checkout −72% diagnostic | TEACHING | ⚠️ **Fabricated incident, real company name** — same treatment | **Task 4** |
| 21 | Section 03 divider — data alone isn't the goal, the bet is | TEACHING | Industry-standard | **Task 5** opening |
| 22 | **The decision formula** — hypothesis template with worked example | TEACHING | Industry-standard concept (hypothesis-driven product development is well-established, cf. Lean Startup / GO Practice hypothesis templates) — rebuild the specific wording | **Task 5** |
| 23 | "Lead with the bet, not the build" | TEACHING | Industry-standard | **Task 5** |
| 24 | **Optimizing the existing vs. exploring the blue sky** — Slack folders / early Netflix DVD-by-mail | TEACHING | **PMC-original framing** for the 2-bucket cut → related to general strategic-horizon thinking (cf. Ansoff Matrix; McKinsey Three Horizons) — rebuild the framing. Slack and early-Netflix examples are **real, documented public cases** — keep | **Task 5** |
| 25 | **Four common pitfalls** in hypotheses — vague, biased, not testable, misaligned | TEACHING | PMC-original framing for the specific cut → concepts (testability, avoiding solution-bias) are standard experimentation-design language — reword | **Task 5** |
| 26 | Section 04 — individual exercise: formulate your hypothesis using data | TEACHING | **PMC-original framing** (their exercise design + StreamLine/RouteLogic fabricated data snapshots) → keep the anchor→reconcile→formulate structure, rewrite for the learner's own engagement, drop the fictional datasets | **Task 5** |
| 27 | Key takeaways — Module 3 in four lines | TEACHING | Industry-standard | Distributed across Tasks 1–5 |
| 28 | Extra practice 01 — audit your own funnel | TEACHING | Industry-standard | **Task 3** artifact extension |
| 29 | Extra practice 02 — build your own hypothesis from your real roadmap | TEACHING | Industry-standard | **Task 5** optional closer |
| 30 | Next session preview | STRUCTURAL | — | Task 5 footer |
| 31 | Project deliverable check (fictional-scenario repo) | ADAPT | PMC-original framing | Folded into Torq's own workspace convention |
| 32 | Resources & Templates | STRUCTURAL | — | Artifact links per task |
| 33 | Q&A | LOGISTICS | — | — dropped |

**Teaching rows: 23. Mapped: 23. Unmapped: 0.**

**Origin summary:** 12 Industry-standard · 6 PMC-original framing (rows 6, 8, 14, 24, 25, 26) · 2 Real public case (row 24's Slack/Netflix) · 3 flagged unverified/fabricated attribution (rows 12, 15, 19+20 — the last is the fabrication issue, not just an originality one) · 0 Torq-added.

**Task count: 5** — Task 1 (metric quality), Task 2 (AARRR/outcome hierarchy), Task 3 (segmentation + cohorts + AI analyst), Task 4 (diagnostic practice, rebuilt anonymized), Task 5 (hypothesis formula + audit + the hands-on lab, merged the way Module 1 Task 5 merged teaching with its own exercise).

**Altitude note:** none of this sits above Consultant/PM level — reading and defending metrics is core craft at any tenure.

## Module 4 → Course 4: High-Velocity Product Roadmaps

Source: `Class 4/artifacts/Module 4 - Slides (Shareable).html` (3,702w, full HTML), plus `Notes.md` (832w), `Glossary.md` (652w), `Pre-Read.md` (615w), `Lab 1 Guide (digest).md`, `Roadmap Builder (digest).md`, `Lab 2 Guide (digest).md`, `PRD Builder (digest).md`, `Example Roadmap (digest).md`, `Sample PRD (digest).md`. All ten files read in full.

Execution-oriented — this is the closest PMC content gets to "the actual build" a Torq consultant does day to day. No shrink-and-reframe needed. This is also where the already-planned **Torq-added task on acceptance criteria & QA** lives — genuinely new content, no PMC equivalent, tagged `Torq-added` and flagged in-lesson as a Torq addition. Roadmap-sequencing authority (who ultimately owns Now/Next/Later trade-offs on a client account) is one place a light **"One level up"** callout fits.

| # | Slide section | Type | Origin | Covered by |
|---|---|---|---|---|
| 1 | Title + 3-topic agenda | STRUCTURAL | — | Course intro |
| 2 | Cohort Norms | LOGISTICS | — | — dropped |
| 3 | Certification Syllabus | ADAPT | — | Already in Course 0 |
| 4 | Agenda (5 numbered sections) | STRUCTURAL | — | Course intro / task split derives from this |
| 5 | Section 01 divider — reflect: is a roadmap planning, communication, or something else? | TEACHING | Industry-standard | **Task 1** opening |
| 6 | "It's all three" — a roadmap is planning + communication + negotiation at once | TEACHING | Industry-standard | **Task 1** |
| 7 | **The product roadmap: What & Why** — visual strategy / prioritized sequence / living document / outcome map; forces alignment / protects focus / manages change / drives impact | TEACHING | Industry-standard concept, PMC's specific 8-item cut is their own packaging — reword | **Task 1** |
| 8 | **Three steps to build a roadmap** — Ideate & Collect / Prioritize & Sequence / Communicate & Manage | TEACHING | PMC-original framing (no single external originator for this exact 3-step cut) → rebuild under Torq's own naming | **Task 1** |
| 9 | Roadmap tools (dedicated SaaS, vibecoding, generic productivity) | TEACHING | Industry-standard (real, current tool categories) — keep tool names, not brand endorsements | **Task 1** |
| 10 | Interactive example roadmap (StreamLine, "what good looks like") | TEACHING | PMC-original framing (fictional scenario) → this is the natural slot for Torq's own **"Loopline" worked-example** artifact (already approved, unbuilt — see `_PMC-REMIX-STRUCTURE.md` open question 3) | **Task 1** |
| 11 | **Effort vs. Value matrix** — Quick Win / Major Project / Fill-In / Time Sinker | TEACHING | **Industry-standard** — the effort/value 2×2 and these exact quadrant names are common, widely-taught PM vocabulary, not PMC's invention | **Task 1** |
| 12 | **70/20/10 split** | TEACHING | **Industry-standard** — Google's public innovation-allocation model (70% core / 20% adjacent / 10% new bets); cite by name in Sources | **Task 1** |
| 13 | Spotify Effort/Value example (Search Optimization etc.) | TEACHING | ⚠️ Unverified specifics attributed to a real company, same caution as Module 3 — genericize | **Task 1** |
| 14 | Section 02 — Hands-on Lab: build a dynamic, clickable feature roadmap | TEACHING | **PMC-original framing** (their exercise design, the two fictional backlogs, and the reusable "Senior PM scoring" + "generate my roadmap" prompts) → keep the human-baseline→AI-baseline→audit-and-override structure and the prompt *patterns*, rewrite for the learner's own backlog, drop the fictional scenarios | **Task 2** |
| 15 | "Your judgment beats the AI's generic scoring" | TEACHING | Industry-standard | **Task 2** |
| 16 | Section 03 divider — a roadmap says what to build first, scoping says how much | TEACHING | Industry-standard | **Task 3** opening |
| 17 | **MVP** — define the core value + map the essential flow (happy path) | TEACHING | **Industry-standard** — MVP is Frank Robinson's term, popularized by Eric Ries (*The Lean Startup*); cite both in Sources | **Task 3** |
| 18 | **MoSCoW** — Must / Should / Could / Won't-Have, the "kill test" | TEACHING | **Industry-standard** — created by **Dai Clegg** (Oracle, 1994), formalized through **DSDM**; genuinely predates this course by decades, cite properly rather than presenting as generic | **Task 3** |
| 19 | Spotify MoSCoW example (Search Optimization sliced) | TEACHING | ⚠️ Same unverified-attribution caution as row 13 | **Task 3** |
| 20 | Section 04 divider — from PRD to functional prototype | TEACHING | Industry-standard | **Task 4** opening |
| 21 | **The rapid validation loop** — Discover (hypothesis) → Design (PRD → AI prototype) → Deliver (experiment → GTM) | TEACHING | Industry-standard concept — this is Lean Startup's **Build-Measure-Learn** loop (Eric Ries) applied to AI prototyping; cite, rebuild PMC's specific stage labels | **Task 4** |
| 22 | **The PRD** — centralizes the why, forces clarity, bridges strategy to execution | TEACHING | Industry-standard — PRDs are decades-old standard practice, no single originator | **Task 4** |
| 23 | **Traditional vs. Simplified PRD** — Vision / Press Release / Smart Behaviors / Edge Cases / Eval | TEACHING | **PMC-original framing** for the specific 5-part Simplified structure → but the **Press Release** technique specifically maps to **Amazon's "Working Backwards" PR/FAQ process** (Ian McAllister et al.) — cite that directly. Smart Behaviors/Edge Cases/Eval reflect current, genuinely industry-standard AI-development practice (structured behavior specs, eval sets) even though PMC packaged them together first for this course | **Task 4** |
| 24 | PulseAI sample PRD (from PRD to prototype example) | TEACHING | PMC-original framing (their own invented demo company, not a real-company attribution issue) → natural second slot for the **Loopline** reference example — an experiment brief/PRD version alongside Task 1's roadmap version | **Task 4** |
| 25 | **The alignment handshake** — Manager / Eng Lead / Design Lead | TEACHING | PMC-original framing for the specific 3-role "handshake" terminology, general stakeholder-alignment practice is standard — reword. **One level up:** on a client account, who actually plays "Manager" here is itself an engagement-structure question worth a short callout | **Task 4** |
| 26 | Section 05 — Hands-on Lab: PRD-to-prototype rapid validation loop | TEACHING | **PMC-original framing** (their exercise + the Universal PRD prompt template + builder-hook technique + same-thread iteration technique) → the **Universal PRD prompt's exact section structure is the single most reusable framework artifact in this module** (per `_SESSION-STATE.md`'s own capture notes) — keep the structure, rewrite the fictional-scenario framing | **Task 5** |
| 27 | "A V1 is enough" | TEACHING | Industry-standard | **Task 5** |
| 28 | Key takeaways — Module 4 in four lines | TEACHING | Industry-standard | Distributed across Tasks 1–5 |
| 29 | Extra practice 01 — apply MoSCoW-to-PRD to your own real backlog | TEACHING | Industry-standard | **Task 5** optional closer |
| 30 | Extra practice 02 — stress-test your prototype | TEACHING | Industry-standard | **Task 5** optional closer |
| 31 | Next session preview | STRUCTURAL | — | Task 6 footer |
| 32 | Project deliverable check (fictional-scenario repo) | ADAPT | PMC-original framing | Folded into Torq's own workspace convention |
| 33 | Resources & Templates | STRUCTURAL | — | Artifact links per task |
| 34 | Q&A | LOGISTICS | — | — dropped |
| 35 | *(no source row)* — **acceptance criteria & QA / UAT discipline** | TEACHING | **Torq-added** — PMC's "Eval" section covers whether an AI prototype behaves correctly; it does not cover writing acceptance criteria a client's QA function can test a delivered feature against, or what UAT looks like inside someone else's engineering process. No PMC equivalent | **Task 6** — new, flagged as a Torq addition in-lesson |

**Teaching rows: 24 (23 from source + 1 Torq-added). Mapped: 24. Unmapped: 0.**

**Origin summary:** 10 Industry-standard · 8 PMC-original framing (rows 8, 14, 23, 24, 25, 26 — drive rewrites; rows 10 and 24 also feed the Loopline reference example) · 5 real/cited frameworks worth naming precisely (rows 12 Google 70/20/10, 17 MVP/Ries, 18 MoSCoW/Clegg, 21 Build-Measure-Learn/Ries, 23 Amazon Working Backwards) · 2 flagged unverified attribution (rows 13, 19) · 1 Torq-added (row 35).

**Task count: 6** — the deck's own 5 sections map 1:1 to Tasks 1–5, plus Task 6 (Torq-added, acceptance criteria & QA), matching the count already committed in `_PMC-REMIX-STRUCTURE.md`.

**Loopline note:** this module is the natural home for both halves of the approved-but-unbuilt Loopline reference example (`_BUILD-NOTES.md` open item 6) — a filled-in Now/Next/Later roadmap (Task 1, replacing row 10's fictional StreamLine example) and a filled-in Simplified PRD (Task 4, replacing row 24's PulseAI example). Building Loopline once here means Courses 5 and 6 can reuse the same fictional company for their own worked examples instead of inventing separate ones.

**✅ Built** — 6 tasks + Blocks sheet, all passing de-dup (0–1.0% overlap) and brand audit. Loopline built as a B2B helpdesk tool (Task 1 roadmap, Task 4 PRD) — Courses 5/6 should reuse this same fictional company for their own worked examples rather than inventing a new one.

## Module 5 → Course 5: Product Experimentation

Source: `Class 5/artifacts/Module 5 - Slides (Shareable).html` (full deck, recaptured by Scott — supersedes the earlier 1,156w digest), plus `Module 5 - Notes.md` (1,318w), `Module 5 - Glossary.md` (710w), `Module 5 - Pre-Read.md` (623w) (all already full), and the existing digests for `Lab Guide`, `Experiment Brief Builder`, `Sample Experiment Brief` (supplementary mechanics — acceptable per the project's own digest convention). All read in full. Keep the source's real two-proportion z-test sample-size calculator.

Execution-oriented — running and reading experiments is core consultant craft at any tenure. No shrink-and-reframe needed.

⚠️ **Same fabrication issue as Module 3.** Two "Case read" sections stage full experiment write-ups — specific invented numbers (streams per session, satisfaction scores, sample sizes) — under real company names (Spotify, Amazon), presented as if real reported results. Rebuild both fully anonymized, same treatment as Module 3's diagnostics.

| # | Slide section | Type | Origin | Covered by |
|---|---|---|---|---|
| 1 | Title + 3-topic agenda | STRUCTURAL | — | Course intro |
| 2 | Cohort Norms | LOGISTICS | — | — dropped |
| 3 | Certification Syllabus | ADAPT | — | Already in Course 0 |
| 4 | Presentation-reminder (volunteer to present next class) | LOGISTICS | — | — dropped, live-cohort only |
| 5 | Agenda | STRUCTURAL | — | Course intro |
| 6 | Section 01 divider — best PMs test their gut, don't just trust it | TEACHING | Industry-standard | **Task 1** opening |
| 7 | Reflect — the cost of gut decisions | TEACHING | Industry-standard | **Task 1** |
| 8 | **What separates great product teams** — Trustworthy Experiments / Data Culture / Institutional Memory / AI Acceleration | TEACHING | PMC-original framing for this specific 4-pillar cut → underlying idea (experimentation-maturity culture) is common in industry writing but no single named framework to cite — rebuild in fresh words | **Task 1** |
| 9 | **Four experimentation methods** — A/B / Multivariate / Feature Flag / Canary, with real-practice examples (Netflix thumbnail testing, Amazon multivariate, Google flags, Spotify canary) | TEACHING | Industry-standard — all four are well-established, widely-documented methods; the four brief practice examples are general, non-fabricated descriptions (not invented internal data) — keep as Real public case | **Task 2** |
| 10 | **Matching methods to goals** — question / min traffic / risk table | TEACHING | PMC-original framing for the specific numeric table → underlying decision logic is industry-standard, rebuild the table | **Task 2** |
| 11 | Section 02 divider — method to mechanics | TEACHING | Industry-standard | **Task 3** opening |
| 12 | **Anatomy of an A/B test** — same traffic, one change, identical measurement | TEACHING | Industry-standard | **Task 3** |
| 13 | **A/B setup steps 1–3** — hypothesis formula, instrumentation, templates | TEACHING | Industry-standard — Optimizely's real, publicly documented workflow; the hypothesis formula is the same Lean-Startup-style pattern already cited in Course 3 | **Task 3** |
| 14 | **A/B setup steps 4–5** — define the experiment, control & variant | TEACHING | Industry-standard (real tool workflow) | **Task 3** |
| 15 | **A/B setup steps 6–8** — metrics, launch discipline, evaluate | TEACHING | Industry-standard | **Task 3** |
| 16 | **Hands-on lab: Design Your A/B Experiment** — parameters table, control/variant, sample-size calculator, shipping criteria | TEACHING | **PMC-original framing** (their exercise design, references PMC's own M3/M4) → keep the parameters-table structure, repoint to Torq's own Course 3 hypothesis and Course 4 scoped feature (which map 1:1 already) | **Task 4** |
| 17 | Quick debrief | LOGISTICS | — | folded into Task 4 |
| 18 | **Interpreting the results** — 5 reality-check questions (p-value, MDE, confidence interval, guardrails, segments) | TEACHING | Industry-standard — real, standard A/B-testing statistical literacy, not PMC's invention | **Task 5** |
| 19 | Break / cameras-on | LOGISTICS | — | — dropped |
| 20 | Section 03 divider — reading results vs. deciding what to do | TEACHING | Industry-standard | **Task 6** opening |
| 21 | **The four outcomes** — Ship / Iterate / Investigate / Kill | TEACHING | PMC-original framing for the specific 4-way cut and labels (ship/iterate/kill is common industry parlance; "Investigate" as a distinct 4th state appears to be this course's own addition) → rebuild, keep the underlying decision logic | **Task 6** |
| 22 | Case read — Spotify autoplay track test | TEACHING | ⚠️ **Fabricated experiment, real company name** — invented streams/satisfaction/skip-rate numbers presented as a real Spotify test. Rebuild fully anonymized | **Task 6** |
| 23 | Case read — Amazon 1-Click reorder button test | TEACHING | ⚠️ **Fabricated experiment, real company name** — same treatment | **Task 6** |
| 24 | **6 common mistakes in A/B testing** — multiple metrics, peeking, undefined success, ignoring segments, interaction-effect fear, single-metric trap | TEACHING | Industry-standard statistical content (multiple-comparisons and "peeking"/sequential testing are real, well-documented issues, e.g. Kohavi's work at Microsoft's ExP team) — but ⚠️ **the attribution "from the experimentation teams at Meta, Microsoft, EA, and Whatnot" is an unverified specific claim** — genericize the attribution, keep the legitimate statistical content | **Task 7** |
| 25 | Key takeaways — Module 5 in four lines | TEACHING | Industry-standard | Distributed across Tasks 1–7 |
| 26 | Extra practice 01 — design a real experiment | TEACHING | Industry-standard | **Task 4** optional closer |
| 27 | Extra practice 02 — read a real result | TEACHING | Industry-standard | **Task 6** optional closer |
| 28 | Next session preview | STRUCTURAL | — | Task 7 footer |
| 29 | Resources & Templates | STRUCTURAL | — | Artifact links per task |
| 30 | Q&A | LOGISTICS | — | — dropped |

**Teaching rows: 21. Mapped: 21. Unmapped: 0.**

**Origin summary:** 13 Industry-standard · 4 PMC-original framing (rows 8, 10, 16, 21) · 1 Real public case (row 9's four brief examples) · 3 flagged (row 24 attribution unverified; rows 22–23 fabricated experiments under real company names — the more serious issue, same as Module 3).

**Task count: 7** — the deck's own 3 sections split further given density (mirrors how Modules 1–4 split their densest sections): Task 1 (mindset/culture), Task 2 (methods), Task 3 (A/B setup mechanics), Task 4 (hands-on lab), Task 5 (reading results), Task 6 (four outcomes + cases), Task 7 (common mistakes).

**Altitude note:** none of this sits above Consultant/PM level — running and reading experiments is core craft at any tenure. No "One level up" callout expected.

## Module 6 → Course 6: Go-to-Market Launch Plans (capstone)

Source: `Class 6/artifacts/Module 6 - Slides (Shareable).html` (full deck, recaptured by Scott — supersedes the earlier 946w digest), plus `Module 6 - Notes.md` (2,111w), `Module 6 - Glossary.md` (817w) (already full), and the existing digests for `Lab Guide`, `GTM Launch Plan Builder`, `Sample GTM Launch Plan`, `Final Presentation Generator`. All read in full. No Pre-Read for this module (confirmed, not a capture gap).

The **Final Presentation Generator** digest is flagged in `_SESSION-STATE.md` as the single highest-value artifact captured across the whole project — a portable spec of the PS deck design system. Worth preserving as a Torq capstone pattern, rebuilt to assemble Torq's own 6 course artifacts rather than PMC's 6 modules.

⚠️ **Shrink-and-reframe module**, same treatment as Module 2 — framing targets *supporting a client's launch* and understanding how the engagement got scoped, rather than owning GTM strategy end to end. Expect **"One level up"** callouts on the SOW-scoping/enablement content.

All four "four launches, four lessons" cases (Apple iPhone, ChatGPT, New Coke, Google Glass) are **real, well-documented public business history** — none carry the fabrication issue found in Modules 3/5; these are broad narrative facts, not invented internal test data. Keep all four as Real public case.

| # | Slide section | Type | Origin | Covered by |
|---|---|---|---|---|
| 1 | Title + capstone framing | STRUCTURAL | — | Course intro |
| 2 | Cohort Norms | LOGISTICS | — | — dropped |
| 3 | Certification Syllabus | ADAPT | — | Already in Course 0 |
| 4 | Agenda | STRUCTURAL | — | Course intro |
| 5 | Section 01 divider — most launches are forgotten in a week, the plan is the difference | TEACHING | Industry-standard | **Task 1** opening |
| 6 | **Four launches, four lessons** — Apple iPhone, ChatGPT (success); New Coke, Google Glass (flop) | TEACHING | Real public case — all four are genuine, well-documented business history, keep as the teaching | **Task 1** |
| 7 | **The 7-part launch checklist** — Goal & Audience / Launch Tier / Channel Plan / Enablement & Assets / Budget & Resources / Timeline / Success Metrics | TEACHING | PMC-original framing for this specific 7-part cut → GTM-plan checklists are common in product-marketing practice generally, no single external framework to cite — rebuild in fresh words | **Task 1** |
| 8 | Reflect — GTM meets reality | TEACHING | Industry-standard | **Task 1** |
| 9 | **GTM goals** — Awareness / Engagement / Conversion, each with audience + PM action | TEACHING | Industry-standard — maps to standard marketing-funnel-stage vocabulary | **Task 2** |
| 10 | **Launch tiers** — S/M/L/XL, t-shirt sizing | TEACHING | PMC-original framing for applying it to GTM tiers specifically → t-shirt sizing itself is a well-known agile-estimation technique — rebuild wording, note the real technique it borrows from | **Task 2** |
| 11 | "Launch ≠ release" | TEACHING | Industry-standard | **Task 2** |
| 12 | **Owned, earned, paid channels** | TEACHING | **Industry-standard** — a real, well-established marketing framework (commonly traced to Forrester Research's paid/owned/earned media model) → cite properly in Sources rather than presenting as generic | **Task 2** |
| 13 | **Enablement** — the internal brief (Sales/CS/Support), assets by tier | TEACHING | Industry-standard | **Task 3** |
| 14 | Section 02 divider — plan vs. execution capacity | TEACHING | Industry-standard | **Task 3** opening |
| 15 | **Resources & budget** — ownership, budgeting, assets vs. resources | TEACHING | Industry-standard | **Task 3** |
| 16 | **AI toolkit for launches** — content/assets, design/visuals, automation agents, analytics/signals | TEACHING | PMC-original framing for this 4-part cut → rebuild in fresh words, no external citation needed | **Task 4** |
| 17 | **What AI cannot replace** — market intuition, contrarian bets, trust relationships | TEACHING | PMC-original framing → rebuild, genuinely useful judgment content | **Task 4** |
| 18 | **The three launch phases** — Beta/Early Access → Launch Moment → Post-Launch Adoption | TEACHING | PMC-original framing for the specific 3-phase cut → the underlying idea (phased rollout: beta → GA → post-launch monitoring) is standard SaaS/product practice — rebuild wording | **Task 5** |
| 19 | **Post-launch metrics matched to goal** | TEACHING | Industry-standard — explicitly ties back to Torq's own Course 3 AARRR content, a genuine cross-course callback worth keeping | **Task 5** |
| 20 | **Post-launch decisions** — Double-Down / Iterate / Pivot / Deprioritize | TEACHING | PMC-original framing for 3 of the 4 labels; "Pivot" is Eric Ries's term (Lean Startup, already cited in Course 3) — rebuild the framing, cite Ries for "pivot" specifically | **Task 5** |
| 21 | Section 03 divider — six modules become one deck | TEACHING | Industry-standard | **Task 6** opening |
| 22 | **Hands-on lab: Craft Your GTM Launch Plan** | TEACHING | **PMC-original framing** (their exercise, references PMC's own M4/M5) → repoint to Torq's own Course 4 scoped feature and Course 5 experiment (map 1:1 already) | **Task 6** |
| 23 | Learner journey — six-module recap | STRUCTURAL/TEACHING | PMC-original framing (their own 6-module summary) → adapt as a genuine Course 1–6 recap device for Torq's program, not dropped | **Task 7** opening |
| 24 | **Final deliverables deck** — 6 slides (Strategy/Research/Blueprint/Validation/Launch Plan/Story) + the Final Presentation Generator | TEACHING | **PMC-original framing**, but flagged as the single highest-value artifact in the whole capture (`_SESSION-STATE.md`) → rebuild as a Torq capstone tool assembling Torq's own 6 course artifacts, preserving the underlying "markdown-in, single HTML deck out" pattern | **Task 7** |
| 25 | Presentation kick-off / student presentations | LOGISTICS | — | — dropped, live-cohort only |
| 26 | Key takeaways — Module 6 in four lines | TEACHING | Industry-standard | Distributed across Tasks 1–7 |
| 27 | Resources & Templates | STRUCTURAL | — | Artifact links per task |
| 28 | Q&A | LOGISTICS | — | — dropped |

**Teaching rows: 20. Mapped: 20. Unmapped: 0.**

**Origin summary:** 9 Industry-standard · 7 PMC-original framing (rows 7, 10, 16, 17, 18, 20, 22, 23, 24 — several drive rewrites, several are genuine reframe opportunities) · 5 Real public case (row 6's four launches) · 1 real-and-citable framework worth naming precisely (row 12, Forrester's owned/earned/paid).

**Task count: 7** — Task 1 (launches + checklist), Task 2 (goals/tiers/channels), Task 3 (enablement/resources), Task 4 (AI toolkit + its limits), Task 5 (launch phases + post-launch metrics/decisions), Task 6 (hands-on GTM lab), Task 7 (capstone deliverables deck).

**Altitude note:** Task 1's checklist item "Budget & Resources" and Task 3's resourcing content are where a genuine "One level up" callout fits — budget sign-off and named ownership at the account level are often an AD/Director-level call, not the day-to-day consultant's.

**Loopline note:** Task 7's capstone deliverables deck is a strong place to complete the Loopline reference example started in Course 4 — a filled-in GTM plan slide for the same fictional B2B helpdesk tool, closing the loop across Courses 4, 5 (once built), and 6.

---

## Recapture checklist — Modules 5 & 6 (Scott's action) — ✅ resolved

Scott recaptured the single highest-priority item for each module — the full Slides deck — and pasted both in directly. Both are now saved as the `artifacts/Module N - Slides (Shareable).html` files referenced in each module's section above, and both Course 5 and Course 6 were built from them, not the earlier digests.

**Module 5 — resolved:**
- [x] `Module 5 - Slides (Shareable).html` ← the spec; used to build all 7 Course 5 tasks
- [ ] `Module 5 - Lab Guide.html` — still digest-only; not needed, its content is covered by the Slides deck
- [ ] `Module 5 - Experiment Brief Builder.html` — still digest-only; acceptable per the project's digest convention (supplementary mechanics, not core teaching)
- [ ] `Module 5 - Sample Experiment Brief.html` — still digest-only; same as above

**Module 6 — resolved:**
- [x] `Module 6 - Slides (Shareable).html` ← the spec; used to build all 7 Course 6 tasks
- [ ] `Module 6 - Lab Guide.html` — still digest-only; not needed, covered by the Slides deck
- [ ] `Module 6 - GTM Launch Plan Builder.html` — still digest-only; acceptable per the digest convention
- [ ] `Module 6 - Sample GTM Launch Plan.html` — still digest-only; same as above
- [ ] `Module 6 - Final Presentation Generator.html` — still digest-only; its pattern was rebuilt directly from the digest as Course 6 Task 7's Capstone Deck, not blocked on the full source

**Already complete, nothing to do:** Modules 1–4 (all artifacts), and Modules 5–6's Notes, Glossary, and Pre-Read.

**Outcome:** Both courses were built at full parity with Modules 1–4 — no thinner-by-construction limitation, since the one artifact that actually mattered (the Slides deck) was recaptured in full for both modules.
