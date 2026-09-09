# Product Leadership Repo Template — Digest

**Source:** GitHub template repo `kickingit10/ProductLeadership` (https://github.com/kickingit10/ProductLeadership), default branch `main`. Fetched via `gh api` (file tree + raw file contents), not a `view-source:` HTML paste — this is the actual external template students fork via "Use this template," referenced throughout the Final Project Brief and Module 1 Slides/Lab Guide/Sprint Builder digests. No LMS app-shell risk applies to a GitHub API fetch, so the `__next_f` QA check is n/a here; confirmed genuine by successfully listing the repo tree and reading real file content.

## What it is
The actual starter repo students fork to build their final project. A README dashboard + one Markdown template file per deliverable, each pre-structured with the exact questions/tables from the corresponding module's lab. This is the "back end" that all the Module 1–6 artifacts point students toward.

## Repo structure (confirmed via GitHub API)
```
ProductLeadership/
├── README.md
├── 01-strategy/strategy-and-okrs.md          ← M1 deliverable
├── 02-roadmap/outcome-roadmap.md             ← M2 deliverable
├── 03-team-charter/team-charter.md           ← M3 deliverable
├── 04-financial-model/financial-model.md     ← M5 deliverable
├── 05-insights/individual-insights.md        ← M6 deliverable
├── 05-insights/final-presentation.md         ← M6 final submission guide
├── LICENSE
└── .gitignore
```
Confirms and slightly refines the folder structure already noted in the Final Project Brief and Slides digests — the earlier digests only knew "Deliverable 5 = Individual Insights"; the repo splits Module 6 into **two** files: `individual-insights.md` (the reflection deliverable) and `final-presentation.md` (a separate guide for building the submitted deck, not itself a deliverable file to fill in).

## Full file contents (verbatim — short enough to capture in full rather than digest)

### `README.md`
```markdown
# My Strategy: Product Leadership Final Project

> My final project for Product School's **Product Leadership** certification. One scenario, **Fable Growth** (B2C) or **Meridian Foundations** (B2B), or my own instructor-approved initiative, taken from a board-ready product strategy to a complete business case across six in-class labs.

This is a **template repo**. Click **Use this template → Create a new repository**, name it something like `product-leadership-final`, and fill in one folder per deliverable as you go. This is an **individual project**: your work is yours alone.

---

## Deliverables at a glance

| # | Deliverable | Module | Status | File |
|---|---|---|---|---|
| 1 | **Product Strategy One-Pager & OKRs** | M1 | ☐ | `01-strategy/strategy-and-okrs.md` |
| 2 | **Outcome Roadmap & Trade-off Memo** | M2 | ☐ | `02-roadmap/outcome-roadmap.md` |
| 3 | **Team Charter** (What We Own + How We Decide) | M3 | ☐ | `03-team-charter/team-charter.md` |
| 4 | **Financial Model** (business case + kill criteria) | M5 | ☐ | `04-financial-model/financial-model.md` |
| 5 | **Individual Insights** (reflection) | M6 | ☐ | `05-insights/individual-insights.md` |
| ★ | **Final Project Presentation** (generated in M6, committed to your repo) | M6 | ☐ | `05-insights/final-presentation.md` |

> Module 4 (*Drive Alignment & Executive Influence*) sharpens **how** you land these deliverables with executives rather than producing a separate submitted artifact.

## The strategy in one sentence

_What is your scenario, where will you play, and what is the single hard bet you're making?_

## How to submit

- In Module 6, generate your final deck (Google Slides or PDF) from the deliverable files and commit it to your repo. The quickest path: use the **Final Project Deliverables Template**, or paste your files into an AI tool like **Gamma** or **Canva** (see `05-insights/final-presentation.md`).
- Submit **both** your **repo URL** and your **presentation** (a published link, or the file uploaded to the learning platform) within **7 days** of your cohort ending.
```
(repo-structure tree omitted here, shown above)

### `01-strategy/strategy-and-okrs.md`
```markdown
# Product Strategy One-Pager & OKRs: [Fable / Meridian / your initiative]

> Module 1 · Craft an Advanced Product Strategy, ★ Deliverable 1
> Your one spine: the Playing to Win cascade, one deliberate hard no, and an OKR cascade that flows directly from it.
> Draft the cascade + hard no in Sprint 1, then add the OKRs in Sprint 2.

## 0. Chosen scenario
Path: Fable Growth (B2C) / Meridian Foundations (B2B) / my own initiative — one line on why.

## 1. Playing to Win cascade
Table: Winning aspiration / Where to play / How to win / Capabilities required / Management systems, each a blank "Your choice" cell.

## 2. Your one hard no
Blockquote fill-in: "We will not … because …"

## 3. OKR cascade
Objective + KR1/KR2/KR3, each "[metric] from [baseline] to [target] by [date]".

## 4. AI pressure-test notes
Table: Prompt question | What the AI surfaced | Change or defend? — pre-seeded with the 5 pressure-test questions as rows.

## 5. Self-diagnostic (6 questions)
Checkbox list of the same six self-diagnostic questions from the Slides/Notes/On-Demand Content.

## Link to full artifact
Placeholder to link the student's Strategy Sprint Builder export.
```

### `02-roadmap/outcome-roadmap.md`
```markdown
# Outcome Roadmap & Trade-off Memo: [scenario]
> Module 2 · Prioritization & Roadmapping, ★ Deliverable 2

## 1. Outcome roadmap
Table: Horizon (Now 0-3mo / Next 3-6mo / Later 6-12mo) × Outcome/bet × Owning team(s) × Success signal.

## 2. Trade-off memo
Blockquote fill-ins: sequenced first because… / pushed out because… / cut entirely because… (WSJF/cost-of-delay reasoning suggested).

## Link to full artifact
```

### `03-team-charter/team-charter.md`
```markdown
# Team Charter: [scenario]
> Module 3 · Lead and Develop High-Performing Teams, ★ Deliverable 3

## 1. What We Own
Table: Area | We own it | We influence it (don't own). Plus a one-line mission statement fill-in.

## 2. How We Decide
Table: Decision type | Who decides | Who's consulted | How we break a tie. Plus a "default decider + escalation" fill-in.

## Link to full artifact
```

### `04-financial-model/financial-model.md`
```markdown
# Financial Model: [scenario]
> Module 5 · Master Product Financials & Strategic Bets, ★ Deliverable 5

## 1. Business case
Table: Assumption (CAC, LTV, Payback period, Investment required, Expected return) | Value | Source/rationale. Plus "the case in one paragraph" fill-in.

## 2. Kill criteria
Blockquote fill-in: "If [metric] does not reach [threshold] by [date], we will [decision]."

## Link to full artifact
```

### `05-insights/final-presentation.md`
```markdown
# Final Project Presentation
> Module 6 · Final submission — a single deck built from the repo's deliverable files.

## What it contains
5 slides, one per deliverable (Strategy / Roadmap / Team Charter / Financial Model / Individual Insights), each mapped to its source file.

## How to build it
1. Open the Final Project Deliverables Template, click Use Template.
2. Fill each slide from the matching deliverable file.
3. Optional: paste deliverable files into Gamma, Canva, Claude, or ChatGPT for a polished deck.
4. Commit the deck to the repo, submit repo URL within 7 days of cohort end.

## Grading (for reference)
Restates the Final Project Brief's rubric: 1 Poor (0-49) / 2 Sufficient (50-79) / 3 Excellent (80-100), on Application of Concepts / Credibility & Reasoning / Clarity / Strategic Thinking.
```

### `05-insights/individual-insights.md`
```markdown
# Individual Insights: Strategy Development Process
> Module 6 · Leverage AI Tools for Leadership Execution — personal reflection.

## Friction points
Fill-in: hardest part of building the strategy, and how you worked through it.

## Key learnings
Fill-in: surprising discoveries from the course overall.

## "Aha!" moment
Fill-in: main aha moment during the project process.
```

## Key structural logic
- Every deliverable file follows the same shape: **frontmatter blockquote** (module + deliverable number + one-line purpose) → **numbered sections mirroring that module's framework** → a table or blockquote fill-in per concept → a closing **"Link to full artifact"** placeholder (for linking out to a richer export, e.g. the Strategy Sprint Builder's Markdown output, in `01-strategy/`).
- The AI pressure-test table in `01-strategy/strategy-and-okrs.md` is pre-seeded with the same 5 questions as the canonical prompt (captured in the Slides/Lab Guide/Sprint Builder digests) — confirms the prompt's 5 questions are meant to map 1:1 onto this table's rows, i.e. the repo template is explicitly designed to receive the Sprint Builder's prompt output.
- README's deliverable table uses `☐` checkboxes for status tracking — purely manual (students presumably edit the markdown themselves), no automation/CI in the repo.

## Torq-rebuild notes
- **This is the cleanest, most directly reusable asset captured so far.** It's a complete, working "final project" scaffold: dashboard README + one lightweight fill-in template per module deliverable + a closing presentation-build guide. Could be lifted close to verbatim (with Torq branding/scenario swaps) as the final-project repo template for a rebuilt cert.
- The **"Link to full artifact"** pattern (a lightweight repo template file + a link out to the richer interactive-tool export) is a good practice worth preserving: keeps the repo skim-able while still connecting to the fuller Strategy Sprint Builder output.
- Confirms Module 6 has **two** distinct files, not one — worth correcting the earlier digests' shorthand ("Deliverable 5 = Individual Insights") to "Deliverable 5 = Individual Insights, plus a non-deliverable presentation-build guide (`final-presentation.md`)."
- No CI/automation, no issue templates, no GitHub Actions in this repo — it's intentionally minimal. If Torq wants progress tracking beyond manual checkbox-editing, that would be a net-new addition, not something to port over.
