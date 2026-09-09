# Capture Guide — AI Product Management (Product School)

Purpose: capture all source material for this course so it can later be rebuilt as **Torq-branded L&D content**. Same workflow already proven on the PM Certification course.

Course: **AI Product Management**
Modules: **6** (Module 1 … Module 6), one folder per module (`Class N/`)
Known module slugs (from the Juno repo structure referenced in the M1 pre-read): `01-prompting/` … `06-evals/`

---

## Method

### 1. Prose — Notes / Glossary / Reference Card
Scott pastes the **LMS class-material page's full page source** (`view-source:` of the class page — a React/Next.js app, auth-gated, so Claude cannot fetch it).
Claude extracts clean Markdown from the embedded HTML strings into:
- `Class N/Module N - Notes.md`
- `Class N/Module N - Glossary.md`
- `Class N/Module N - Reference Card.md` (only if one exists)

### 2. Artifacts — Slides, Exercise/Lab Guides, interactive Builders, worked examples
Scott pastes the **artifact's own `view-source:` HTML** (standalone, self-contained file, inline CSS/JS, usually localStorage autosave).
Claude does **not** save raw HTML verbatim. Instead it writes a compact **digest** to:
- `Class N/Module N - <Name> (digest).md`

Each digest captures:
- What it is (type, purpose, where it sits in the session)
- Structure / sections (slide-by-slide or step-by-step outline)
- Any embedded exercise data, scenarios, worked examples
- **Exact reusable AI prompts** contained inside it (verbatim)
- Key interaction logic (scoring formulas, auto-suggest rules, validation, branching)
- **Torq-rebuild notes** — what's most reusable, what needs replacing

Skipped deliberately: CSS/JS boilerplate. That's re-grabbable from the LMS in one paste if ever needed.

### 3. Exception — short static prose artifacts
If an artifact is short static prose (Pre-Read page, under ~1 page), save it as clean Markdown directly — no digest:
- `Class N/Module N - Pre-Read.md`

Treat it exactly like Notes/Glossary.

---

## File placement
- All Markdown output lives at the **class root**: `Class N/`
- `Class N/artifacts/` is reserved for any raw source files worth keeping verbatim (rare — default is the digest)

---

## QA check — real capture vs. broken paste

A genuine artifact page contains **at least one** of:
- `scroll-snap` → slide deck
- `localStorage` → interactive builder
- `progressBar` → pre-read

…and contains **zero** occurrences of `__next_f`.

> If `__next_f` appears **in an artifact paste**, Scott pasted the broken LMS app shell instead of the artifact.
> **Claude must say so immediately and extract nothing.**

**Scoping note:** this check applies only to **artifact pastes** (step 2 — self-contained decks/builders). It does **not** apply to **class-material LMS page pastes** (step 1) — those are legitimately Next.js pages and always contain `__next_f`; that's exactly where the Notes/Glossary HTML lives. If the paste is clearly a `/courses/.../materials/class-N` page, extract normally.

---

## Token economy rules
- Never re-emit full raw HTML as confirmation
- No over-narration of each save
- Response = short confirmation + running checklist for the current class

---

## Per-class checklist

| Class | Notes | Glossary | Ref Card | Slides | Exercises / Labs | Pre-Read |
|-------|-------|----------|----------|--------|------------------|----------|
| Class 1 | ✅ | ✅ | — (none on page) | ✅ | ✅ (3: Prompt Anatomy Builder, System Prompt Configurator, PM Toolkit Picker not found on page) | ✅ |
| Class 2 | ✅ | ✅ | — (none on page) | ✅ | ✅ (2: Three-Layer Model Mapper, AI Strategy One-Pager Builder) | ☐ (not yet pasted) |
| Class 3 | ✅ | ✅ | — (none on page) | ✅ | ✅ (2: Juno RAG Lab, AI PRD Builder) | ☐ (not yet pasted) |
| Class 4 | ✅ | ✅ | — (none on page) | ✅ | ✅ (3: AI User Flow Architect, Juno AI-Native Lab [optional], AI-UX Trust Gap Checker) | ☐ (not yet pasted) |
| Class 5 | ✅ | ✅ | — (none on page) | ✅ | ✅ (2 required: AWSpec Builder, Agent Control Panel; 1 optional: Juno Langflow Walkthrough) | ☐ (not yet pasted) |
| Class 6 | ✅ | ✅ | — (none on page) | ✅ | ✅ (3: Human Evaluation Rubric Builder, Eval Stack Designer, Final Project Deliverables Builder) | ☐ (not yet pasted) |

Legend: ✅ captured · ☐ not yet captured · — confirmed not to exist for that class
