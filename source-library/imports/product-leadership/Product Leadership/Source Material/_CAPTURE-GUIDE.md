# Capture Guide — Product Leadership (PLC)

Method for capturing LMS source material so it can later be rebuilt as Torq-branded L&D content. Same workflow already run successfully for the PM Certification course.

## The method

**1. Prose (Notes / Glossary / Reference Card)**
Paste the LMS class-material page's full page source (`view-source:` of the class page — a React/Next.js app, auth-gated, can't be fetched directly). Extract clean Markdown from the embedded HTML strings into:
- `Class N/Module N - Notes.md`
- `Class N/Module N - Glossary.md`
- `Class N/Module N - Reference Card.md` (if one exists)

**2. Artifacts (Slides, Exercise/Lab Guides, interactive Builders, worked examples)**
Paste the artifact's own `view-source:` HTML (each artifact is a standalone, self-contained file with inline CSS/JS, usually using `localStorage` for autosave). Instead of saving raw HTML verbatim, write a compact **digest** as `Class N/artifacts/Module N - <Name> (digest).md` capturing:
- what it is, its structure/sections
- any embedded exercise data or scenarios
- the exact reusable AI prompts inside it
- key interaction logic (scoring formulas, auto-suggest rules, etc.)
- a short "Torq-rebuild notes" section flagging what's most reusable

Skip CSS/JS boilerplate — regrappable from the LMS in one paste if ever needed.

**3. Exception — short static prose**
If an artifact is short static prose (like a Pre-Read page, under ~1 page), save it as clean Markdown directly (`Module N - Pre-Read.md`), no digest needed — treat it like Notes/Glossary.

## QA check — genuine artifact vs. broken paste

A genuine **artifact page** (from step 2/3) contains `scroll-snap` (slide decks) or `localStorage` (interactive builders) or a `progressBar` (pre-reads), and contains **zero** occurrences of `__next_f`.

`__next_f` means the broken LMS app shell was pasted instead of the artifact itself — flag immediately, don't try to extract.

Note: the **class-material LMS page** itself (step 1 paste) legitimately contains `__next_f` — it's the Next.js app shell. The QA check applies only to artifact pastes (step 2/3), where the artifact should be a fully standalone HTML file with no Next.js scaffolding at all.

## Token economy

Long, multi-message capture process. Don't re-emit full raw HTML as confirmation. Don't over-narrate each save. Keep responses to a short confirmation + running checklist of what's captured vs. still needed for the current class.

## Course structure

Product Leadership (cohort `onplc5852`) — Pre-course, 6 classes, Final Project Brief.

| Module | Title | Date |
|---|---|---|
| Pre-course | Prepare for Day 1 | — |
| Final Project Brief | — | — |
| Class 1 | Craft an Advanced Product Strategy | Jun 9, 2026 |
| Class 2 | Prioritization & Roadmapping for Product Leaders | Jun 18, 2026 |
| Class 3 | Lead and Develop High-Performing Teams | Jun 23, 2026 |
| Class 4 | Drive Alignment and Executive Influence | Jun 25, 2026 |
| Class 5 | Master Product Financials & Strategic Bets | Jun 30, 2026 |
| Class 6 | Leverage AI Tools for Leadership Execution | Jul 2, 2026 |

## Per-class checklist

Legend: ☐ not started · ◐ partial/detected not captured · ✅ captured

| Module | Notes | Glossary | Ref Card | Slides | Exercises | Pre-Read |
|---|---|---|---|---|---|---|
| Pre-course | — | — | — | — | — | ✅ |
| Final Project Brief | — | — | — | — | ✅ (digest, brief itself) | — |
| Class 1 | ✅ | ✅ | — (no Ref Card tab) | ✅ (digest) | ✅ (Lab Guide + Sprint Builder digests) | ✅ (in Pre-course) |
| Class 2 | ✅ | — (no tab) | — (no tab) | ✅ (digest) | ✅ (Lab Guide digest) | — (n/a, classes have no Pre-Read) |
| Class 3 | ✅ | — (no tab) | — (no tab) | ✅ (digest) | ✅ (Lab Guide digest) | — (n/a, classes have no Pre-Read) |
| Class 4 | ✅ | — (no tab) | — (no tab) | ✅ (digest) | ✅ (Lab Guide digest) | — (n/a, classes have no Pre-Read) |
| Class 5 | ✅ | — (no tab) | — (no tab) | ✅ (digest) | ✅ (Lab Guide digest) | — (n/a, classes have no Pre-Read) |
| Class 6 | ✅ | — (no tab) | — (no tab) | ✅ (digest) | ✅ (Lab Guide digest) | — (n/a, classes have no Pre-Read) |

**COURSE FULLY CAPTURED as of 2026-08-24.** Every row above is complete. See `_SESSION-STATE.md` for full capture history and per-module notes.

(`—` = column not applicable to this module; update as each module's actual section list becomes known from its class-material page paste.)
