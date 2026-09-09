# Module 1 — Lab Guide — Digest

**Source:** standalone self-contained HTML artifact (`Module 1 · Lab Guide · Product Leadership`), interactive worksheet, not a slide deck. QA marker: `localStorage` (key `plc-m1-labguide`). Fonts: Poppins/Lato/IBM Plex Mono. Dark navy theme, cyan accent (`#22d3ee`), purple accent (`#a855f7`) for the second exercise.

## What it is
The combined lab guide for both Module 1 hands-on exercises (referenced from the Slides deck as "Open the lab guide"). Turns the exercise prompts into a fillable worksheet: every blank in the page becomes a live text field that autosaves to `localStorage` and can be exported as Markdown (copy or download) to paste into the student's final-project repo.

## Structure
1. **Header** — title, "~35 min" meta chip, tip callout explaining the guide covers both exercises.
2. **Exercise 1 divider** — "Run Your First Strategic Sprint," individual, ~20 min, before the break.
3. **Pre-work: choose your scenario** — restates Fable (B2C, Growth Wall) and Meridian (B2B, Field Gap) one-paragraph summaries, consistent with Final Project Brief / Slides.
4. **Step 1 (12 min) — Write your one-page strategy** — 5-row Playing to Win table (Winning Aspiration / Where to Play / How to Win / Capabilities Required / Management Systems), each row = a question + a fillable answer field, placeholder-seeded with a worked example (see below).
5. **Step 2 (3 min) — Name your one hard no** — single fillable field, placeholder-seeded with an example.
6. **Lab Exercise divider** — "Stress-Test Your Execution Plan," individual, ~15 min, lab section.
7. **Lab Step 1 (6 min) — Write your three OKRs** — Objective + KR1/KR2/KR3 fillable fields, each placeholder-seeded with an example.
8. **Lab Step 2 (9 min) — AI pressure-test** — instructions to run the prompt in any LLM, the prompt itself (verbatim below), then two fillable reflection fields ("Which challenge is most valid?" / "What would you change vs. defend?"). Tip callout: the prompt is a starting point, not a requirement.
9. **Closing warn-callout** — commit cascade/hard-no/OKRs to `01-strategy/` in the repo, this is the Module 1 final-project deliverable.
10. **Lab toolbar** (sticky bottom bar) — Copy as Markdown / Download .md / Reset buttons + a "✓ Saved" indicator.
11. **Footer** — back-link to the Module 1 deck.

## Embedded exercise data — worked example (placeholder text, a *third* distinct example alongside HealthTrack in the slides and the Fable/Meridian scenarios)
This guide uses a **food-delivery "Thursday-night dinner" app** as its illustrative example, seeded into the field placeholders:
- Winning Aspiration: "the app suburban families open on Thursday evening when nobody wants to cook"
- Where to Play: "suburban household accounts with 2+ users, US only, existing app home screen"
- How to Win: "four years of household order data and a preference model that predicts Thursday-night choices"
- Capabilities Required: "a household-level personalization engine and restaurant partner agreements for family bundles"
- Management Systems: "weekly order frequency by household cohort, monthly retention review"
- Hard no: "We will not expand into grocery or convenience delivery as part of this initiative, because it is a different business model with a different margin structure"
- OKR Objective: "become the default Thursday-night dinner solution for suburban household accounts in the US"
- KR1: "weekly order frequency for household accounts: 1.1 to 2.4 by Q3"
- KR2: "90-day retention for household accounts: 41% to 65% by Q3"
- KR3: "household account NPS: 28 to 52 by Q3"

## Reusable AI prompts (exact text)

**AI pressure-test prompt** (same role/intent as the Slides version, near-identical wording — minor phrasing differences noted):
```
You are a skeptical Chief Strategy Officer reviewing a product strategy draft. Your job is to find where the strategy is soft, vague, or likely to fail, not to validate it.

Here is the strategy:
[PASTE YOUR STRATEGY, HARD NO, AND OKRs HERE]

Please do the following:
1. Identify the single biggest assumption I am making that could be wrong.
2. Ask me the one question a board member would ask that I cannot yet answer.
3. Tell me if any of my KRs are actually outputs disguised as outcomes.
4. Point out one thing I said I would not do and make the case for why I should reconsider.
5. In one sentence: is this a strategy or a wish list? Why?

If your response feels too gentle, add: "Now be harsher. What would a competitor's strategy team say about this plan?"
```
(Cf. the Slides digest's version: same 5 numbered asks, slightly different lead-in phrasing — "Please:" vs. "Please do the following:" and "PASTE YOUR CASCADE, HARD NO, AND OKRs HERE" vs. "PASTE YOUR STRATEGY, HARD NO, AND OKRs HERE." Functionally identical prompt duplicated across two artifacts.)

## Key interaction logic
- **Auto-fieldification**: on load, JS scans all `<td>`/`<th>` cells whose text starts with `✍️` (and isn't a `.q` label cell), replaces each with a live `<textarea>` (or `<input>` for `<th>` cells) styled as `.fill`. The original cell text becomes the field's `placeholder`. The field's label is derived from the sibling `.q` cell in the same `<tr>` (or, for headers, the cell's own cleaned text).
- **Autosave**: every field has a unique key (`f0`, `f1`, …); on `input`, all field values are serialized to a single JSON blob in `localStorage` under key `plc-m1-labguide`; a "✓ Saved" indicator flashes for 1.2s (debounced). Values are restored from `localStorage` on page load.
- **Markdown export**: `md()` groups fields by the `<h2>` text of their enclosing `.phase` container (falls back to "Responses"), then emits `## <section>` headers with `- **<label>:** <value>` bullets; empty fields render as `_(not filled in)_`. Exposed via **Copy as Markdown** (`navigator.clipboard.writeText`, with a toast confirming or reporting failure) and **Download .md** (blob → object URL → synthetic `<a download>` click, filename `plc-m1-lab.md`).
- **Reset**: confirms via native `confirm()`, then clears `localStorage` and blanks all fields.
- **Toast system**: a single fixed-position toast element, shown for ~1.8s per action.
- **Dead/inert code**: the script includes a full "Briefing toggle" handler (`.bfg` scenario × player two-axis selector, reveals a matching `.bfg-panel`) with complete CSS (`.bfg`, `.bfg-controls`, `.bfg-btn`, `.bfg-card`, etc.) — but **no `.bfg` markup exists anywhere in this document's body**. The script no-ops safely (`if (bfg) {...}`). This is evidently shared boilerplate carried over from a different artifact template (likely a role-play/scenario-briefing lab elsewhere in the course) and never wired up here — not a bug to fix, just unused capacity in this specific file.

## Torq-rebuild notes
- **The auto-fieldification + localStorage autosave + Markdown export pattern is the single most valuable, fully generic piece of engineering in this artifact.** It turns any static Q&A table into a fillable, autosaving worksheet with zero per-field JS — just mark answer cells with a leading `✍️` and it wires itself up. Strong candidate for a reusable Torq "lab worksheet" component/shell.
- The export groups by enclosing section heading automatically — good design for producing clean, well-organized Markdown deliverables students can drop straight into a repo.
- The unused `.bfg` briefing-toggle code is worth noting only as evidence that Product School reuses a shared JS/CSS bundle across multiple lab-guide artifacts — if Torq recaptures other modules' Lab Guides, watch for that same dead code and don't assume it's meaningful to this specific file.
- Cross-reference: this is the **second** appearance of the identical AI pressure-test prompt (first was in the Slides digest) — confirms it's the canonical Module 1 prompt, safe to treat as one reusable asset rather than two.
- Third worked example (Thursday-night dinner delivery app) alongside HealthTrack (Slides) and Fable/Meridian (official scenarios) — if Torq wants a single consistent example across a rebuilt module, this is a decision point: pick one worked example rather than inheriting three.
