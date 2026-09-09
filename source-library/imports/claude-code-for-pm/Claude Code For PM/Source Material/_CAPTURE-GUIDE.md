# Capture Guide — Claude Code for PMs

Source-material capture for later rebuild as **Torq-branded L&D content**.
Same proven workflow used for the PM Certification course. Do not deviate.

---

## Course

- **Course:** Claude Code for PMs (Product School–style certification, React/Next.js LMS)
- **Cohort:** `ccpm` / `onccpm4437` — Starts May 11, 2026, Mondays & Wednesdays (Weeknights)
- **Modules/Classes:** 4 (confirmed from LMS cohort data), plus a Pre-course module
  1. **Class 1 — Get Oriented** (`01-orient/`) — May 11, 2026
  2. **Class 2 — Know Your Users** — May 13, 2026
  3. **Class 3 — Build and Learn Fast** — May 18, 2026
  4. **Class 4 — Work with Your Team** — May 20, 2026
  - Final project due May 28, 2026
- **Beyond the 4 live classes:** the curriculum has 8 granular parts (P1–P8, per the Streakly Scenario doc) compressed into a 6-stage "Module" arc (Orient/Discover/Build/Collaborate/Decide/Systematize). Module 4's Slides deck revealed the real title for what's next: **"Module 5, Numbers & Comms"** — likely = P5 (Data) + P6 (Communicate Clearly) combined. Module 6 (Systematize) likely = P7 (Make It Stick) + P8 (Your Agent Stack/Comeback Coach). **Not yet located in the LMS** — no class-5/6 materialSlug or live session exists in the cohort schedule. See `_SESSION-STATE.md` for the open question of where to find this content.
- **Throughline scenario:** PM on the Engagement squad at **Streakly** (consumer habit + micro-learning app). Day-7 retention slipped 48% → 39% after a v2 redesign. Tension: more re-engagement nudges vs. notification fatigue. The learner builds toward the **Comeback experience** and the **Comeback Coach** agent stack. Every lab commits a real artifact to a `pm-workspace/` repo fork.

> Note: an earlier assumption of 6 classes (made before the LMS page was pasted) was wrong — corrected to 4 + Pre-course once the actual cohort JSON was captured from the Class 1 page.

---

## The method

### 1. Prose pages (Notes / Glossary / Reference Card)
Scott pastes the **full page source** of the LMS class-material page (`view-source:` of the class page — a React/Next.js app, auth-gated, so Claude cannot fetch it).
Claude extracts clean Markdown from the embedded HTML strings into:

- `Class N/Module N - Notes.md`
- `Class N/Module N - Glossary.md`
- `Class N/Module N - Reference Card.md` (only if one exists)

### 2. Artifacts (Slides, Exercise/Lab Guides, interactive Builders, worked examples)
Scott pastes the artifact's own `view-source:` HTML. Each artifact is a standalone, self-contained file with inline CSS/JS, usually using `localStorage` for autosave.

**Do not save raw HTML verbatim.** Write a compact **digest** at
`Class N/artifacts/Module N - <Name> (digest).md` capturing:

- What it is (type, purpose, where it sits in the module)
- Structure / sections / slide list
- Any embedded exercise data, scenarios, or seeded content
- The **exact reusable AI prompts** inside it (verbatim)
- Key interaction logic (scoring formulas, auto-suggest rules, gating, state model)
- **Torq-rebuild notes** — what's most reusable, what's Streakly-specific and needs reskinning

Skip CSS/JS boilerplate — that's re-grabbable from the LMS in one paste if ever needed.

### 3. Exception — short static prose artifacts
If an artifact is short static prose (e.g. a Pre-Read page, under ~1 page), save it as clean Markdown directly — `Class N/Module N - Pre-Read.md` — no digest needed. Treat it like Notes/Glossary.

---

## QA check — real capture vs. broken paste

A genuine artifact page contains **at least one** of:

| Signal | Means |
|---|---|
| `scroll-snap` | slide deck |
| `localStorage` | interactive builder / lab |
| `progressBar` | pre-read / companion page |

…and contains **zero** occurrences of `__next_f`.

> `__next_f` present = the broken LMS app shell was pasted instead of the artifact.
> **Say so immediately. Do not attempt extraction.**

---

## Token economy

- Never re-emit full raw HTML back as confirmation.
- No per-save narration.
- Every reply = short confirmation + running checklist for the current class.

---

## Per-class checklist

Legend: ✅ captured · ⬜ not yet · — not applicable / doesn't exist

| Class | Notes | Glossary | Ref Card | Pre-Read | Slides | Exercises / Labs | Other artifacts |
|---|---|---|---|---|---|---|---|
| **Pre-course** | — | — | — | — | — | — | ✅ Pre-Class Setup |
| **Class 1** — Get Oriented | ✅ | ✅ | — | ✅ | ✅ | — | ✅ Streakly Scenario · ⚠ Repo Template unavailable (404, not yet published — see session state) |
| **Class 2** — Know Your Users | ✅ | ✅ | — | — | ✅ | — | ✅ Streakly Scenario (shared) · ⚠ Repo Template unavailable |
| **Class 3** — Build and Learn Fast | ✅ | ✅ | — | — | ✅ | — | ✅ Streakly Scenario (shared) · ⚠ Repo Template unavailable |
| **Class 4** — Work with Your Team | ✅ | ✅ | — | — | ✅ | — | ✅ Streakly Scenario (shared) · ⚠ Repo Template unavailable |

> Pre-course has no Notes/Glossary/Slides in the LMS materials-page sense — it's captured entirely through the standalone Pre-Class Setup artifact linked from Module 1's Pre-Read.

---

## Folder structure

```
Source Material/
├── _CAPTURE-GUIDE.md
├── _SESSION-STATE.md
├── Class 1/            (Get Oriented)
│   ├── Module 1 - Pre-Read.md
│   ├── Module 1 - Notes.md
│   ├── Module 1 - Glossary.md
│   └── artifacts/
├── Class 2/            (Know Your Users)
│   └── artifacts/
├── Class 3/            (Build and Learn Fast)
│   └── artifacts/
└── Class 4/            (Work with Your Team)
    └── artifacts/
```
