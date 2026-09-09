# Session State — Claude Code for PMs capture

**Last updated:** 2026-08-24

Resume note. A future session should be able to pick this up cold by reading this file plus `_CAPTURE-GUIDE.md`.

---

## What this is

Scott is capturing all source material for the **Claude Code for PMs** certification (Product School–style, hosted on a React/Next.js LMS) so it can later be rebuilt as **Torq-branded L&D content**. This is a repeat of a workflow already run successfully for the PM Certification course.

**Confirmed course structure** (from LMS cohort JSON, captured via the Class 1 page source): **4 classes + Pre-course**, cohort `ccpm`/`onccpm4437`, Mon/Wed weeknights starting May 11, 2026.

1. Class 1 — **Get Oriented** (`01-orient/`) — May 11, 2026
2. Class 2 — **Know Your Users** — May 13, 2026
3. Class 3 — **Build and Learn Fast** — May 18, 2026
4. Class 4 — **Work with Your Team** — May 20, 2026
- Final project due May 28, 2026

> Correction note: the initial folder scaffold assumed 6 classes before any LMS data was seen. Corrected to 4 + Pre-course once real data arrived. Class 5/Class 6 folders were deleted.

---

## Method (condensed — full version in `_CAPTURE-GUIDE.md`)

1. **LMS class-material page** → Scott pastes `view-source:` of the auth-gated Next.js page (expected to contain `__next_f` — that's normal for this page type, unlike artifact pastes). Claude extracts clean Markdown from the embedded HTML strings → `Class N/Module N - Notes.md`, `Module N - Glossary.md`, Reference Card if one exists.
2. **Artifacts** (slides, exercise/lab guides, interactive builders, worked examples) → Scott pastes the artifact's own `view-source:` HTML. Claude writes a **compact digest**, not the raw HTML → `Class N/artifacts/Module N - <Name> (digest).md`. Digest covers: what it is, structure, embedded exercise data/scenarios, exact reusable AI prompts, key interaction logic, and a "Torq-rebuild notes" section. Skip CSS/JS boilerplate.
3. **Exception:** short static prose artifacts (Pre-Read, under ~1 page) → clean Markdown directly, no digest.

**QA check (artifacts only):** genuine artifact contains `scroll-snap` (slides) OR `localStorage` (builders) OR `progressBar` (pre-reads), and **zero** `__next_f`. If `__next_f` appears in an artifact paste, that's the broken LMS app shell — tell Scott immediately, extract nothing. (This check does NOT apply to LMS class-material page pastes, which legitimately contain `__next_f`.)

**Token economy:** don't echo raw HTML back, don't over-narrate saves, keep replies to a short confirmation + running checklist for the current class.

---

## Status

| Class | Status | Captured so far |
|---|---|---|
| Class 1 — Get Oriented | ✅ complete | Pre-Read, Notes, Glossary, Slides, Streakly Scenario (Repo Template confirmed unavailable) |
| Class 2 — Know Your Users | ✅ complete | Notes, Glossary, Slides |
| Class 3 — Build and Learn Fast | ✅ complete | Notes, Glossary, Slides |
| Class 4 — Work with Your Team | ✅ complete | Notes, Glossary, Slides |

### Class 1 detail
- ✅ `Module 1 - Pre-Read.md` — clean Markdown (prose exception).
- ✅ `Module 1 - Notes.md` — extracted from LMS class-material page ("Class notes" section).
- ✅ `Module 1 - Glossary.md` — extracted from LMS class-material page ("Glossary" section).
- ✅ `artifacts/Module 1 - Slides (digest).md` — QA passed (scroll-snap + localStorage present, zero `__next_f`). Content is verbatim-identical to Notes.md; digest focuses on deck structure/interaction (nav dots, keyboard shortcuts, skip/sorter, BroadcastChannel deck-sync) and the Streakly Scenario anchor scheme (`#p1l1`–`#p1l5`).
- ⬜ Reference Card — none found; Notes + Glossary + Slides + Resources appear to be the full section set per the page's own nav (Slides / Resources & templates / Class notes / Glossary).
- ⬜ **The Streakly Scenario** — resource link (`.../Modules/<The Streakly Scenario.html>`). Slides reference per-lesson anchors into it (`#p1l1`...`#p1l5`) — capture this soon since every module's deck will link into it.
- ⬜ **Claude Code Repo Template** — resource link (`.../Modules/<Claude Code Repo Template.html>`) — likely describes the `pm-workspace/` fork structure.

### ✅ Discrepancy mostly resolved — module count
**The Streakly Scenario** (captured, see below) confirms the real curriculum has **8 parts, P1–P8**, and P1–P4 map exactly to the 4 confirmed live classes:
- P1 Get Oriented = Class 1, P2 Know Your Users = Class 2, P3 Build and Learn Fast = Class 3, P4 Work with Your Team = Class 4
- P5 Data, P6 Communicate Clearly, P7 Make It Stick, P8 Your Agent Stack (Comeback Coach) have **no corresponding live class** in the cohort JSON — likely self-paced/async continuation after Class 4, possibly delivered as their own LMS material pages not yet captured (materialSlugs unknown — maybe `class-5`–`class-8`, or a distinct "self-paced" section).

**Still open:** the Module 1 Slides said "Module 1 of 6" with a 6-stage arc (Orient/Discover/Build/Collaborate/Decide/Systematize) — that's a different, looser naming scheme than the 8 literal P-parts, seemingly just marketing/conceptual grouping rather than a literal count. Not fully reconciled, but no longer blocking — treat P1–P8 as the authoritative structure. **When we reach Class 4, check its LMS page for links to P5–P8 material** (may appear as "what's next" links or a separate self-paced section) to find the actual capture path for those 4 parts.

### 📌 Note on stray pastes
Twice now Scott has pasted full page source of *external, copyrighted, non-course* pages (the Anthropic engineering blog post and a paywalled Substack article) — both happen to be sources cited in Module 1's Notes.md. Neither was extracted or saved (out of scope + copyright). Worth a quick heads-up to Scott if it keeps happening — may be a clipboard mix-up on his end.

### ⚠ Claude Code Repo Template — confirmed unavailable
The LMS link for this resource 404s. Checked via `gh` CLI: Scott's own GitHub (16 repos, none are forks) has no `pm-workspace` fork, and Product School's official GitHub org (`product-school`, 90+ repos, prefixed `AIC-`/`PDMC-`/`PECM-`/`PLMC-`/`PPCM-` for their other certs) has **zero** repos matching `pm-workspace`, `CCPM`, `claude`, or `workspace`. Conclusion: the template repo genuinely hasn't been published yet — likely because this course (starts May 11, 2026) is new and Product School hasn't shipped it to GitHub. Not a capture-workflow problem. **Don't keep retrying this — revisit only if Scott finds it another way, or check back late in the capture pass in case it goes live.**

### 📌 New corroborating clue on M-vs-P numbering
Module 2 Notes.md says: *"Several of these workflows become part of your Comeback Coach in **Module 6**"* — referring to what the Streakly Scenario calls **P8** (Your Agent Stack: The Comeback Coach). This supports the theory that the 6-stage "Module" arc (Orient/Discover/Build/Collaborate/Decide/Systematize) is a coarser grouping than the 8 granular "P" parts, with M1–M4 mapping 1:1 to P1–P4/Class 1–4, and M5–M6 likely compressing P5–P8 two-per-module. Still not confirmed which LMS page(s) host P5–P8 — watch for this in Class 3 and especially Class 4.

### Class 2 detail — complete
- ✅ `Module 2 - Notes.md`, `Module 2 - Glossary.md` — extracted from LMS class-material page.
- ✅ `artifacts/Module 2 - Slides (digest).md` — QA passed. Confirms the slide-deck engine is a shared template reused across modules (identical script logic to Module 1's deck). No Pre-Read section found for Class 2 (Module 1's was a one-time course-level step, not repeated).
- Resources & templates repeats Class 1's two items: Streakly Scenario (shared, already captured) and Claude Code Repo Template (confirmed unavailable).

### 📌 Stronger corroboration on M-vs-P numbering
Module 2 Slides label two prompts "Starter prompt · becomes a scheduled agent in M6": the feedback-synthesis prompt (2.2) and the competitive-analysis prompt (2.3). This matches P7L2 in the Streakly Scenario, which lists a weekly research synthesis and a competitive pulse check as exactly the kind of repetitive task turned into a one-command workflow. Good evidence that "Module 6" (Systematize) absorbs content from multiple P-parts (at least P6/P7-flavored material), not a strict 1:1 mapping. Still don't know the exact LMS page(s) for P5–P8 — keep watching in Class 3/4.

### Class 3 detail — complete
- ✅ `Module 3 - Notes.md`, `Module 3 - Glossary.md` — extracted from LMS class-material page.
- ✅ `artifacts/Module 3 - Slides (digest).md` — QA passed. Third consecutive module confirming the slide-deck engine is one shared, reused template (identical script/deck-sync each time).
- Resources & templates repeats the same two items again: Streakly Scenario (shared, captured) and Claude Code Repo Template (confirmed unavailable).
- Notable new content: Lesson 3.1 cites the same Anthropic/Pragmatic Engineer source as before, this time for a different point — Claude Code team prefers HTML over Markdown output, which is why this lab has students build an HTML prototype.

### Class 4 detail — complete
- ✅ `Module 4 - Notes.md`, `Module 4 - Glossary.md` — extracted from LMS class-material page.
- ✅ `artifacts/Module 4 - Slides (digest).md` — QA passed. Fourth consecutive module confirming the shared slide-deck engine.
- Resources & templates repeats the same two items: Streakly Scenario (shared, captured) and Claude Code Repo Template (confirmed unavailable).

### ⚠⚠ Major finding — real title for what's beyond Class 4
The Module 4 Slides deck's "Module complete" screen says **"Next: Module 5, Numbers & Comms."** This is the first real (non-generic) title seen for content past Class 4 — previous decks only showed the generic arc label "M5 Decide." "Numbers & Comms" strongly suggests Module 5 = P5 (Data) + P6 (Communicate Clearly) combined from the Streakly Scenario's 8-part structure. By extension Module 6 (Systematize) likely = P7 (Make It Stick) + P8 (Your Agent Stack: Comeback Coach).

**This is now the #1 open question for the capture.** All 4 live classes (Class 1–4) are done, and none of them contained any link, resource, or Pre-Read pointing to Module 5/6 material — no `class-5`/`class-6` materialSlug exists in the cohort JSON, and there's no live session scheduled for them (the cohort only runs 4 sessions, May 11–20, 2026). Two live theories for where to look next:
1. **Course home page** (`/courses/ccpm/onccpm4437`, i.e. the cohort landing page above the class-1..class-4 materials flow) may have a separate self-paced/capstone materials link not yet pasted.
2. Modules 5–6 may simply **not be built out yet** for this early cohort (course hasn't started as of this capture — cohort starts May 11, 2026) and may only appear closer to the course's actual run, or may need to be checked back on later.

**Ask Scott to check the LMS course home page directly** (not another class materials page) for anything beyond Class 4 before assuming this content doesn't exist yet.

---

## Next action

**All 4 confirmed live classes (1–4) are now complete.** The remaining open item is locating Module 5 ("Numbers & Comms") and Module 6 ("Systematize") content — ask Scott to check the LMS course home page / cohort landing page for a link beyond Class 4, since no class-5/6 materials page exists in the confirmed structure so far.
