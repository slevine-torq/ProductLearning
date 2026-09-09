# Build notes — Torq Product Practice

How lessons are built and how they map into TorqHub. Read before adding a lesson.

> **Method and research:** the instructional-design research behind the pacing/structure decisions, the reusable build process, and the catalogue of failure modes that produced the rules below all live in [`_LD-BUILD-METHOD.md`](../_LD-BUILD-METHOD.md) — a portable file, not Torq-specific, meant to be copied into future L&D projects.
>
> **The Torq lens:** how *any* source course gets rebuilt for Torq — Origin tagging, the 80/20 weighting, the de-duplication gate, altitude framing, where brand/structure/workspace rules come from — lives in [`_TORQ-LENS-PLAYBOOK.md`](../_TORQ-LENS-PLAYBOOK.md). This file is PMC-specific; that one is the portable method for Product Leadership, Claude Code for PMs, and whatever comes next.

## Decisions locked

| Decision | Choice | Why |
|---|---|---|
| Structure | **1:1 — Course N = Module N**, 6 courses + Course 0 orientation (see [_PMC-REMIX-STRUCTURE.md](../_PMC-REMIX-STRUCTURE.md)) | Corrected round 5. The 5-course "engagement lifecycle" remix scattered each module across courses, which made "are we missing anything?" unanswerable. 1:1 makes coverage verifiable by construction. The Torq reframe now lives in the **writing** — consulting examples, regulated callouts, artifacts for the learner's own engagement — not in re-cutting the curriculum |
| Task count per course | **Derived from the module's coverage map**, never assumed | Course 1 needed 5 tasks. Assuming 2 everywhere is how content got dropped the first time |
| File model | **One self-contained HTML file per lesson** | TorqHub uploads per-file; no shared shell, no build step |
| TorqHub render target | Assumed **iframe / sandboxed** | ⚠️ UNCONFIRMED — see open items |
| Interactive builders | Dropped the live form→doc→AI-prompt pattern | Static canvases/templates instead |
| Quizzes & card mechanics | Use TorqHub's **native task types**, entered manually by Scott from a plain instruction sheet | Don't hand-roll what the platform has; Scott doesn't want HTML for these at all |
| Brand source of truth | `Torq Work/brandkit/` (governed, 3 files) | Confirmed over the loose `brand-profile.yaml` |
| Lesson audience | Any Torq consultant currently working as a product/epic owner on a client team, or a lower-level consultant leveling up — **any tenure** | Corrected 2026-08-21 after Lesson 1's first draft presumed a "just staffed" reader |
| Worked examples | **None invented — but the source's own are required.** No fabricated scenarios; real public cases (Netflix, Spotify, Amazon…) and the source's own worked examples stay in | Refined round 5 — the original "none invented" phrasing got over-applied and the source's real examples were cut too, which is what made drafts feel thin |
| Coverage proof | Every module gets a row-per-section map in [`_MODULE-COVERAGE.md`](../_MODULE-COVERAGE.md) before its course ships | Added round 5 — coverage was previously asserted, never verified, so losses went unnoticed for four rounds |
| Ownership framing | Torq consultants have **real decision ownership within the engagement** — embedded PM/PO, not an outside advisor | Corrected 2026-08-21 (round 2) — real Torq proposals state an embedded team "replaces the need to hire a dedicated product manager and QA analyst... those roles are built into how Torq works" |
| Source reading | **Every file** in a module's folder gets read before writing its lesson — Notes, Glossary, Slides, every Exercise/Lab Guide, every Pre-Read, every Builder, every Sample/Example digest. Not just Notes+Slides. | Corrected 2026-08-21 (round 3) — even after the "read Slides too" fix, two Exercise Guides and several Pre-Reads/Sample digests were still unread; Scott caught it |
| Local workspace | A **real local git repo** (`git init`, no GitHub.com account) — not plain folders, not GitHub-required | Corrected 2026-08-21 (round 3) — git the tool needs no account; conflating "no GitHub access" with "no git" was wrong |
| TorqHub hierarchy | **Program → Course → Task → Block.** A "Lesson" in this build's own vocabulary = one **Task**. Native quiz/flashcard/matching/sorting content = **Blocks added to that same Task**, not separate Tasks. | Corrected 2026-08-21 (round 4) — confirmed from real admin-panel screenshots; the whole build should be one **Program** ("Torq Product Practice") of Courses 0–6 in sequence |
| Audience / exposure | **Internal Torq only** (TorqHub). Not client-facing, not sold. | Confirmed 2026-08-22 (round 6). Internal-only lowers legal risk; it does **not** remove the obligation to rebuild rather than copy — see the de-duplication gate below |
| Rewrite depth | **Clean-room.** Write each task from its coverage-map row list with the source file *closed*. | Round 6 — an 8-gram overlap audit found Tasks 1/2/4 at 32%/29%/26% verbatim overlap with the PMC deck (one 121-word run copied intact), while Tasks 3/5 — genuinely rewritten — sat at 8%/3.6%. Paraphrasing in place from an open source doesn't work; the rule existed and was never mechanically checked |
| Source-original framings | **Replace with the real industry-standard equivalent**, and credit the actual originator (desirability/viability/feasibility → IDEO; outcome vs. output → Cagan/Torres). Real public cases stay. | Round 6 — a source's *packaging* of a generic idea is the protected part. Teaching the canonical version is both safer and better |
| Task length | **~900 words / ~8 min, 5–7 tasks per course.** Task count still derives from the coverage map, never from an assumption. | Round 6 — "not too short, not too long" pinned to a number, because vagueness here caused four rounds of over/under-correction. Coverage is handled by *adding tasks*, never by compressing them |
| Citations | **One program-level "Sources & Further Reading" task**, not a citation block per lesson. | Round 6 — keeps lessons clean while making the industry-canon provenance visible |
| Execution / strategy weighting | **~80% execution, ~20% upstream strategy/discovery**, program-wide. | Round 6 — PMC is a generic B2C/B2B PM curriculum assuming the learner decides *whether* to build and takes it to market. Torq consultants mostly execute inside someone else's already-scoped initiative. Both get covered (well-rounded PM), not equally weighted |
| Modules 2 & 6 | **Shrink-and-reframe** — full coverage-map compliance, no dropped TEACHING rows, but framed toward *using* a client's existing research and *supporting* a client's launch rather than owning discovery/GTM end to end. | Round 6 — these two are the weakest fit for the real job. Cutting them would fail the coverage rule; shipping them unreframed would teach the wrong altitude |
| Level-gating | **None.** Single program, any tenure. Above-Consultant-level content gets the "One level up" callout, not a separate track. | Round 6 — Scott: "anyone can take it and I am not intending to gatekeep" |
| Client specifics | **Anonymized patterns only**, regardless of the internal-only audience. Real detail stages privately in [`_TORQ-CLIENT-INTAKE.md`](../_TORQ-CLIENT-INTAKE.md); only de-identified shapes reach a lesson. | Round 6 — reaffirms the existing no-real-client rule and gives it somewhere to draw from. Torq's confidentiality policy is unconfirmed, so the conservative rule holds until it is |

## Lesson-writing convention

Every lesson, no exceptions:

- **Audience:** write to a consultant at *any* point in an engagement — someone currently sitting in a client's product/epic owner seat filling a skill gap, or a junior consultant building general craft. Never write "you just arrived" or "by now you should already know" — both exclude part of the real audience.
- **Ownership, not advisory hedging.** A Torq consultant has real decision ownership within the engagement — they *are* the client's product function for the duration of the SOW, not an outsider advising without authority. Never write "you can't decide this" or "access/authority is earned, not automatic" as the lead framing on a skill — that undersells what the role actually is. The consulting-specific layer (phased/SOW-bound scope, weekly client cadence, multi-client context-switching, regulated-industry approval gates) is a thin overlay on top of full PM/PO craft, not a dilution of it. (Source: Torq's own proposal language — general/non-confidential positioning, safe to state directly; see `_TORQ-COMPANY-CONTEXT.md`.)
- **Structure:** 2–4 sentence framing (why this matters) → the framework itself, in tables/bullet lists, doing the actual teaching → a short "consulting context" note only where genuinely additive (e.g. the regulated-client callout) → numbered Key Takeaways (4–5 items, one line each) → the lesson's practical artifact.
- **No invented case studies — clarified.** No fabricated Torq-client scenarios, no named companies/people/incidents I make up. **Real public case studies are not fabrication** — Spotify, Amazon, Netflix, iPhone, ChatGPT, New Coke, Google Glass are factual business history and stay in wherever the PMC source uses them to teach a framework. What does NOT come back: Product School's own fictional running companies (StreamLine/RouteLogic) — Torq's audience already has real engagements to practice on, so every artifact is designed to be filled in with the learner's **own current work**, not a shared practice scenario.
- **The source's own worked examples are required content, not optional colour.** The per-stage Netflix beats, the three prioritization trade-off cases, the good/bad question pairs — these are the teaching, and cutting them is what made earlier drafts feel thin. The no-invention rule bans *me* making up scenarios; it never licensed deleting the source's.
- **Rebuild the frameworks, not the prose.** Structure and frameworks aren't copyrightable and are the point of this rebuild. Verbatim exercise text isn't — e.g. Task 3's three-prompt escalation keeps the shallow→structured→strategic *structure* and its teaching points, with prompts rewritten for the learner's own product rather than copying the source's exercise wording.
- **⛔ Clean-room, or this rule fails again.** Round 6 proved the rule above isn't self-enforcing: Tasks 1, 2, and 4 shipped at 26–32% verbatim overlap with the deck while this exact line sat in the build notes. **Write each task from its coverage-map rows with the source file closed.** Paraphrasing in place from an open source document reliably produces near-copies — the writer thinks they're rewriting and isn't. Then run the de-duplication gate (per-lesson checklist item 8) before shipping. The gate is the check; this is the practice that passes it.
- **Replace source-original framings with the industry-standard equivalent.** Where the coverage map's Origin column says *Course-original framing* — a coined term, a bespoke table structure, an exercise design — teach the real canonical version instead and credit its actual originator in the program-level Sources task. A source's *packaging* of a generic idea is exactly the protected part, even when the underlying idea is common industry knowledge. Where Origin says *Industry-standard*, teach the canonical version directly rather than the source's renaming of it.
- **Weighting: ~80% execution, ~20% strategy.** A Torq consultant is usually staffed onto someone else's already-scoped initiative — the bulk of the job is specs, feasibility conversations with engineering, prioritising within a decided initiative, acceptance criteria/QA, delivery, and the client-visible readout. Upstream strategy/discovery (market/opportunity discovery, portfolio or GTM ownership, SOW-level scoping) is covered because a Torq PM should be well-rounded, not because it's half the job. **This governs framing and emphasis, never coverage** — every TEACHING row still gets a home. In practice it means a discovery- or GTM-heavy module gets *shrunk and reframed* toward the version of the skill a consultant actually exercises ("critically use the client's existing research," "support the client's launch"), never cut and never shipped exactly as the source wrote it.
- **"One level up" callout — for altitude, never gatekeeping.** Some content reflects decisions made above day-to-day Consultant/PM level: how an initiative got scoped into an SOW, portfolio trade-offs, budget or headcount calls. Don't cut it and don't wall it into a separate track — the program is open to any tenure. Use a repeatable callout, same mechanism as the regulated-client one:

  > **One level up:** Scoping this into a phased SOW is usually an AD/Director call rather than yours. Knowing how the decision gets made is what lets you feed it good input now — and make it yourself later.

  Reuse this pattern rather than inventing new phrasing per lesson.
- **No real client specifics either.** Real Torq engagement material (proposals, discovery docs, SOW notes) is fine to use as *private background* for calibrating tone and structure, but no lesson, template, or instruction sheet may name a real client, contact, or figure from it. Reuse the document *shapes* (a phased requirements table, a journey map with satisfaction scoring, a decision-prompts table, a tech-options comparison with a numbered recommendation) with generic subject matter.
- **⛔ The slide deck is the spec — never target a summary's density.** `Notes.md` is *itself a compression of the slides*. The old rule here ("match Notes.md density") is what caused rounds 1–4 to ship a summary of a summary — Module 1 landed at well under half its source's teaching content. **Every section of the deck gets covered.** There is no length cap. Prose stays tight and table-first, but a section is never dropped or compressed to a single bullet to hit a word count. If a task runs long, split it into two tasks; don't cut content.
- **Coverage is proven in writing, not asserted.** Before a course ships, fill in its row-per-section table in [`_MODULE-COVERAGE.md`](../_MODULE-COVERAGE.md). Every TEACHING row maps to a Task. Unmapped rows block completion. Drops require an explicit sign-off recorded in that file.
- **Never delete a section as "duplicate" without confirming it's the same *concept*.** Round 4 cut the strategic-arbiter section as duplicative of the three lenses — they're different ideas (cross-functional position vs. prioritization criteria), and it was a real content loss caused by a "fix." When unsure, keep both.
- **Read the whole module folder, not just Notes+Slides.** Before writing or revising any task: `Module N - Notes.md`, `Module N - Glossary.md`, the Slides (full HTML or digest), every Exercise/Lab Guide, every Pre-Read, every interactive Builder, and every Sample/Example digest if the module has one. Sample/Example digests are **answer keys** (a fully filled-in worked example of the artifact template, usually closing with an explicit quality rubric) — different from a case study, and worth mining for that rubric text specifically.
- **Every artifact ends in Copy as text AND Download as .md.** Copy-as-text is the reliable fallback (works even if TorqHub's iframe blocks downloads, unconfirmed either way). Download names the file to match its destination in the learner's local workspace (see `_TORQ-WORKSPACE.md`) — e.g. `strategic-clarity-canvas.md`.

## Brand rules for every lesson file

Tokens are **inlined** as a `:root` block at the top of each file — not `@import`ed — because each file ships standalone. If the kit changes, re-inline.

- Only these hexes: `#2D53F2` `#3A79F8` `#43A8FF` `#10213D` `#F6F9FF` `#E5E5E9` `#F2F2F2` `#FFFFFF`, plus `#00B050`/`#E5484D` for **status semantics only**.
- **Never**: `#3F39B8` indigo, `#51DCFE` cyan, `#5EFFCC`/`#BEFFEA` mint, `#B9F1FE`, `#030F36`, `#FAFAFB`, `#1F1A78`.
- Inter only, from Google Fonts, with the kit's fallback stack. No second face.
- Hero gradient exactly `linear-gradient(120deg, #2D53F2, #3A79F8 55%, #43A8FF)`.

**Derived values (not new brand hexes):** the kit has no muted-text token, so lessons use canonical dark-ink at alpha — `rgba(16,33,61,0.66)` for muted (5.3:1 on white, passes AA), `0.42` for faint, `0.10` for hairlines. Flagged below as a possible real addition to the kit.

**Contrast constraint worth knowing:** `#43A8FF` sky blue is only 2.5:1 on white — it **fails for text**. Use it for rules, dividers, gradient stops, and dark-surface accents only. `#2D53F2` is 5.8:1 on white and is safe for headings and body links.

## Per-lesson checklist

1. Inline the token block; no hard-coded colors in component CSS.
2. Real `href` on every link; `:focus-visible` rings; skip link.
3. Body ≥16px, measure ~60–75ch, 4pt spacing scale, two radius steps.
4. Any `localStorage` wrapped in try/catch — LMS iframes partition or block storage.
5. Pass `event`/`this` explicitly into handlers; never rely on global `event`.
6. Print styles: hide nav and buttons, keep the takeaway artifact.
7. Run the audit greps (banned hexes = 0; every hex in the kit; gradient exact; Inter only).
8. **Run the de-duplication gate.** Non-negotiable, and the reason rounds 1–5 didn't catch a real problem.

### The de-duplication gate

An 8-word n-gram overlap check against **every** source file for that module — Notes, Glossary, Slides, every Exercise/Lab Guide, every Pre-Read, every Builder, every Sample/Example digest.

| Threshold | Meaning |
|---|---|
| **≤8–10% overlap** | Ship it. Tasks 3 and 5 hit 8% and 3.6% honestly, so this is achievable, not aspirational |
| **>10% overlap** | Rewrite. Not a judgment call |
| **Any single matched run >15 words** | Rewrite that passage, regardless of the file's overall percentage |

For reference, the round-6 audit that triggered this rule: Task 1 = 32% (longest run 121 words), Task 2 = 29% (49), Task 4 = 26% (48), Task 3 = 8% (22), Task 5 = 3.6% (21).

Overlap is measured on normalised prose — lowercased, punctuation and smart quotes stripped, HTML/CSS/JS removed. Shared *structure* (a framework's step names, a glossary term) isn't the target; contiguous copied *sentences* are. Brand-boilerplate CSS and the repeated artifact scaffolding don't count against a task, since they're Torq's own and identical across every file.

## Local workspace

Every learner sets up a **real local git repo** — no GitHub.com account, no plain-folders-as-primary-design. Full design in [_TORQ-WORKSPACE.md](../_TORQ-WORKSPACE.md); short version: `git init` a `Torq Product Practice/` folder once (Course 0 walks through this), one subfolder per course, each lesson's "Download as .md" button names the file to match its destination, commit after each lesson. Git needs no account and no internet connection — GitHub.com (a remote backup/share option) is optional and mentioned once, never required.

## TorqHub hierarchy: Program → Course → Task → Block

Confirmed from real admin-panel screenshots, 2026-08-21 (round 4):

- **Program** — "an ordered set of courses. Learners take them in sequence — each course unlocks when the one before it is complete." The whole certification is **one Program**, proposed name **"Torq Product Practice"** — Courses 0–5 in sequence, each gated behind the last. Created once in TorqHub's admin UI after the courses exist; nothing to build.
- **Course** — same meaning used throughout this build already (e.g. "Course 1: Strategic Product Thinking"). Confirmed correct, no change.
- **Task** — a *numbered item inside a course* (real example: "1. AI at Torq Intro," "2. Getting Access," "3. Additional Info"). **This is what this build calls a "Lesson."** One Lesson = one Task. Keep "Lesson N" as the file-naming/content-design term (renaming 13 files isn't worth it) but call it **Task** whenever describing TorqHub's own structure.
- **Block** — the individual content pieces *inside one Task*. A single Task can hold several Blocks of different types (HTML, PDF, Card Flipping, Card Matching, Card Classification, Quiz, External, Built-in course), all sharing that Task's one *Mark Complete*. The real "AI at Torq Intro" Task has 6 Blocks: HTML, PDF, Card Flipping, +3 more.

A course module becomes one Task per Lesson, each Task holding a small stack of Blocks:

| Piece | Block type | Deliverable format |
|---|---|---|
| The lesson content | **HTML** | Self-contained `.html` file — this is Block 1 |
| The takeaway artifact | Inside that same HTML block, or a **Link button** if hosted separately | Inside the `.html` |
| Knowledge check | **Quiz** — added as another Block on the *same* Task | Plain instruction sheet — Scott enters it manually |
| Terminology drilling | **Card flipping** — feed from the module's Glossary.md, another Block on the *same* Task | Plain instruction sheet |
| Prompt/match exercises | **Card matching** — another Block on the *same* Task | Plain instruction sheet |
| Sorting/categorisation exercises | **Card classification** — another Block on the *same* Task | Plain instruction sheet |

**Confirmed by a real, live example** — "AI at Torq Intro" (`gotorqhub.com/learning/36`), screenshots + PDF export reviewed 2026-08-21:
- Multiple Blocks stack inside one Task and share a single *Mark complete* (that Task: an HTML intro, a flashcard deck, a sorting activity, a matching activity, and an 11-question quiz all gate one completion — "4 activities still to finish to mark this complete").
- Each Block shows its own live progress count ("0 of 8 sorted," "0 of 11 answered").
- Sorting Blocks support drag-and-drop *or* select-card-then-select-bucket — don't design content that only works one way.

### Native Blocks are never built in HTML — Scott adds them by hand, to the same Task

He reads a plain Markdown instruction sheet top to bottom and, inside the lesson's existing Task, clicks **"+ Add block"** for each one, picking Type → filling the type's own fields. **These are not new Tasks and get no "Task title" field of their own** — the sheet describes Blocks being added to one already-named Task. Template:

```md
## Task: [Lesson name] — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: [Block name] — Type: Card flipping
**Cards (term → definition):**
1. Term: <text> | Definition: <1–2 sentences>

### Block: [Block name] — Type: Card matching
**Pairs (prompt → match):**
1. Prompt: <text> | Match: <text>

### Block: [Block name] — Type: Card classification
**Buckets:** <Bucket A>, <Bucket B>, <Bucket C>, <Bucket D>
**Cards to sort (statement → correct bucket):**
1. "<statement>" → <BUCKET>

### Block: [Block name] — Type: Quiz
1. <question text>
   A. <option>
   B. <option>
   C. <option>  ← correct
   D. <option>
```

Source terms/definitions from the module's `Glossary.md`; source quiz questions from the lesson's own Key Takeaways and tables — a question should be answerable purely from having read the lesson.

## Status

Program: **"Torq Product Practice"** — Courses 0–6 in sequence, each unlocking the next. Coverage per module is tracked in [`_MODULE-COVERAGE.md`](../_MODULE-COVERAGE.md); course structure in [`_PMC-REMIX-STRUCTURE.md`](../_PMC-REMIX-STRUCTURE.md).

| Course | Source | Tasks | State |
|---|---|---|---|
| 0 — Before You Start | New | 2 | ✅ Built — orientation (no artifact) + Sources & Further Reading (reference only, populated incrementally as each course ships) |
| **1 — Strategic Product Thinking** | Module 1 | **5** | ✅ **Rewritten round 6 — all 6 files pass the de-duplication gate (0.3–3.2% overlap, longest run 15 words) and the brand audit clean** |
| **2 — Discovering Product Opportunities** | Module 2 | **5** | ✅ **Built round 6 as the proof case — all 6 files pass de-dup (0–0.1% overlap) and brand audit clean.** Shrink-and-reframe applied throughout |
| **3 — Analytics & Metrics for Product Decisions** | Module 3 | **5** | ✅ **Built round 6 — all 6 files pass de-dup (0–0.9% overlap) and brand audit clean.** Rebuilt the Spotify/Amazon fabricated diagnostics fully anonymized |
| **4 — High-Velocity Product Roadmaps** | Module 4 | **6** | ✅ **Built round 6 — all 7 files pass de-dup (0–1.0% overlap) and brand audit clean.** Includes the Torq-added acceptance criteria/QA task and the Loopline worked-example roadmap + PRD |
| **5 — Product Experimentation** | Module 5 | **7** | ✅ **Built — all 7 files pass de-dup (0–2.7% overlap, longest run 14 words) and brand audit clean.** Rebuilt the Spotify/Amazon fabricated case studies as anonymized composites; genericized the mistakes-list attribution to real, publicly documented experimentation research |
| **6 — Go-to-Market Launch Plans (capstone)** | Module 6 | **7** | ✅ **Built — all 7 files pass de-dup (0% overlap) and brand audit clean.** All four launch cases (iPhone, ChatGPT, New Coke, Google Glass) kept as real public cases; Forrester's owned/earned/paid cited; Ries cited for "pivot"; capstone deck closes the Loopline example started in Course 4. **All six courses now built — program complete.** |

**Course 1 tasks as built:** 1 · The Modern PM Mindset (969w) · 2 · The Skill Stack & Your Place in the Team (920w) · 3 · Turning AI Output Into Strategy (906w) · 4 · The Product Development Life Cycle (873w) · 5 · Your Problem Hook & Value Proposition (973w). **Total 4,641 words** vs. 2,198 for the retired 3-lesson version, against a source deck of 3,734 (~3,000 teaching).

**Round-6 de-duplication audit — before and after the rewrite**, run with [`../dedup-check.py`](../dedup-check.py):

| File | Before | After | What changed |
|---|---|---|---|
| Task 1 — The Modern PM Mindset | 32.1% / 121w run | **1.8% / 14w** ✅ | Full clean-room rewrite. "Three pillars" → desirability/viability/feasibility; feature-factory table → output/outcome |
| Task 2 — The Skill Stack | 28.7% / 49w run | **0.3% / 9w** ✅ | Full clean-room rewrite. Arbiter + B2C/B2B sections rebuilt; "passenger to driver" dropped (collided with Torq's real AI-maturity model) |
| Task 4 — The Product Development Life Cycle | 25.7% / 48w run | **2.9% / 13w** ✅ | Full clean-room rewrite. Netflix example kept (real public case); all surrounding prose rebuilt |
| Task 3 — Turning AI Output Into Strategy | 8.2% / 22w run | **3.2% / 13w** ✅ | Passage-level fixes — 3 flagged runs rewritten |
| Task 5 — Your Problem Hook & Value Proposition | 3.6% / 21w run | **1.1% / 12w** ✅ | Passage-level fixes — 2 flagged runs rewritten |
| Course 1 — Blocks to Add.md | 9.2% / 27w run | **3.1% / 15w** ✅ | Glossary-sourced definitions rewritten; Task 1/2 flashcards & quiz updated to match rewritten terminology |

Tasks 3 and 5 initially passed on percentage and failed only the run-length rule — that's the rule doing its job. A file can be 96% original and still carry one lifted paragraph; both thresholds have to hold independently.

**A correctness bug the gate doesn't catch, caught by inspection instead:** rewriting Task 1's core terminology (feature factory/value driver → output/outcome; three pillars → desirability/viability/feasibility) left its Blocks-to-Add flashcards and quiz testing concepts that no longer existed in the lesson. Fixed alongside the de-dup pass. **Lesson for every future course rewrite: after renaming a lesson's core terms, always re-check that course's Blocks sheet — it's a second copy of the same vocabulary and won't self-update.**

### Revision history — how the content loss happened, so it doesn't repeat

1. **Draft 1** ("Your First Two Weeks") — rejected: too long, presumed a newly-staffed reader, and included a fabricated worked example (invented client, VP, incident).
2. **Draft 2** ("...Strategic Advisor") — fixed length/audience/fabrication but over-corrected into "outsider advisor without authority." Real Torq proposal language (private background only) states an embedded team "replaces the need to hire a dedicated product manager and QA analyst" — real decision ownership, not hedged advising.
3. **Draft 3** — renamed to "Strategic Owner," reframed around embedded ownership, three-lenses section asserts authority.
4. **Round 3** — Scott asked whether all source content was being used. It wasn't: lessons were written from `Notes.md` alone. Deep-read of every file across all 6 classes followed.
5. **Round 4** — split PDLC and restored Problem Hook content; cut Course 0's ownership framing; corrected the hierarchy to Program → Course → Task → Block. **This round also deleted the strategic-arbiter section as "duplicate" — a real content loss caused by a fix.**
6. **Round 5** — root cause finally identified: the *"match `Notes.md` density"* rule in this file. `Notes.md` is a summary of the slides, so targeting its density guaranteed a summary of a summary. Module 1 had shipped at under half its teaching content. Fixes: the density rule is deleted and replaced (see Lesson-writing convention), coverage now proven in `_MODULE-COVERAGE.md`, the 5-course lifecycle remix retired for 1:1, and Course 1 rebuilt as 5 tasks with the arbiter section, the prioritization trade-offs, the AI lab, the full per-stage PDLC detail, and Extra Practice all restored.
7. **Round 6** — a different failure mode, invisible to every previous round because every previous round measured *coverage* and never measured *originality*. Round 5 fixed "are we missing anything?" and in doing so pushed the writing closer to the source: Tasks 1, 2 and 4 shipped at 26–32% verbatim overlap with the PMC deck, including a 121-word run copied intact — while the rule "rebuild the frameworks, not the prose" sat in this file the whole time. Fixes: the de-duplication gate is now mechanical (checklist item 8, `dedup-check.py`), clean-room writing is mandatory, source-original framings get replaced with real industry-standard equivalents, and the whole method is portable in [`_TORQ-LENS-PLAYBOOK.md`](../_TORQ-LENS-PLAYBOOK.md). Also settled this round: the ~80/20 execution/strategy weighting, the "One level up" altitude callout, ~900w/~8min task length, one program-level Sources task, and the client-intake staging file. **The lesson that generalises: a rule nobody can mechanically check is a preference, not a rule.**

## Open items

1. **Confirm the iframe assumption with Torq engineering.** If TorqHub injects uploaded HTML into its own DOM instead of sandboxing it, every lesson needs its CSS scoped under a unique wrapper class and its JS kept off globals. Cheap to fix now, expensive after 20 lessons.
2. **Confirm Google Fonts is reachable** under TorqHub's CSP. If blocked, Inter silently falls back to the system stack — acceptable, but worth knowing.
3. **No logo asset exists.** `brandkit/brand.md` references `./logo/` but the folder isn't there. Lessons currently use a text wordmark in the eyebrow. Add the SVG when available.
4. **Consider adding a muted-text token to the kit.** Three lessons in, if `rgba(16,33,61,0.66)` keeps recurring, it should become canonical per the TorqBranding skill's value-addition procedure rather than being re-derived per file.
5. **Reuse Torq's existing AI-maturity language, don't invent a parallel one.** The live "AI at Torq Intro" course already has a canonical model (Observer → Passenger → Driver → Designer) and a stated principle ("People are the edge. AI sharpens it."). Any future AI-fluency content in this build should point to/reuse that course rather than re-deriving the framework.
6. **Answer-key reference example — ✅ done.** "Loopline," the generic B2B helpdesk/ticketing tool (deliberately unlike any of Torq's six real client verticals), runs as a continuous worked example across Course 4 (roadmap + PRD), Course 5 (experiment brief), and Course 6 (launch plan + the capstone deck's closing slide) — the same learner scenario carried through and resolved at the end, not a one-off case study.
7. **Confirm downloads work inside TorqHub's iframe.** The copy+download artifact convention assumes a `<a download>` or Blob-based download isn't blocked by the iframe's sandbox flags — unconfirmed, same open question as #1.
8. **Create the "Torq Product Practice" Program in TorqHub once Courses 0–6 exist.** Not a content task — an admin-panel setup step for whoever has TorqHub admin access, using the same sequential-unlock behavior shown in the "AI Academy Foundations" Program example.
9. **Recapture Modules 5 & 6 from the PMC LMS — ✅ done.** Scott supplied both full decks; Courses 5 and 6 were built from them, not the earlier digests. Checklist in [`../_MODULE-COVERAGE.md`](../_MODULE-COVERAGE.md) can be treated as closed.
10. **Confirm Torq's confidentiality policy before populating [`../_TORQ-CLIENT-INTAKE.md`](../_TORQ-CLIENT-INTAKE.md).** Scott flagged he doesn't currently know what it permits. The file stays local and unpublished, but check whether engagement names can be written down there at all. Lessons are unaffected either way — they only ever consume the de-identified Part 4 patterns.
11. **1:1 vs. engagement-lifecycle structure — held up across both shrink-and-reframe modules, pending Scott's final sign-off.** Round 6 raised a real question: PMC's shape assumes the learner decides *whether* to build and takes it to market, while a Torq consultant mostly executes inside someone else's scoped initiative. Course 2 was the first test case; Course 6 (the capstone, and the other shrink-and-reframe module) is now built too, using the same approach — shrink-and-reframe in the writing alone (support a client's launch, understand how budget/resourcing gets decided one level up, close the loop with a real client-readout-style deck) rather than a structural rewrite. Both flagged test cases now confirm 1:1 holds. **Still not unilaterally closing this** — all six courses are built, so this is ready for Scott's explicit confirmation rather than further build-side evidence.
