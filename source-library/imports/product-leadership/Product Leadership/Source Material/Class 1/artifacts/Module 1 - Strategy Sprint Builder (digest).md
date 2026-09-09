# Module 1 — Strategy Sprint Builder — Digest

**Source:** standalone self-contained HTML artifact (`Strategy Sprint Builder, Product Leadership`), interactive form/builder tool. QA marker: `localStorage` (key `plc-m1-strategy-sprint-builder`). Fonts: Poppins/Lato/IBM Plex Mono. Same dark navy/cyan visual system as the Lab Guide, one step more polished (progress bar, live preview panel, radio-pill scenario picker).

## What it is
A purpose-built, single-purpose form tool that produces the Module 1 final-project deliverable (`01-strategy/strategy-and-okrs.md`) directly. Distinct from the Lab Guide (which retrofits a worksheet table into fields): this is a ground-up form with a scenario picker, the 5-field Playing to Win cascade, a hard-no field, an OKR grid, a live-updating preview, a progress counter, and **two separate exports** — a Markdown deliverable and a fully-populated AI pressure-test prompt (not just a static template with a paste placeholder, this one interpolates the user's actual answers).

## Structure
1. **Header** — title, lead paragraph explaining the tool's purpose and workflow (fill in → copy prompt → export Markdown to `01-strategy/strategy-and-okrs.md`).
2. **Progress bar** — "X / 10 complete" (10 tracked fields: scenario + 5 cascade fields + hardno + objective + kr1 + kr2 — note KR3 is *not* counted toward completion, likely an oversight or intentional "nice to have").
3. **Card: Choose your scenario** — 3-option radio-pill picker: Fable Growth (B2C) / Meridian Foundations (B2B) / My own initiative. Framed as a commitment ("no switching after today").
4. **Card: Playing to Win** — 5 labeled textareas (Winning aspiration, Where to play, How to win, Capabilities required, Management systems), each with a sub-label clarifying the question and a fill-in-the-blank style placeholder (e.g. "[Product] is the one [customers] reach for when…").
5. **Card: Your one hard no** — single textarea, placeholder "We will not … because …".
6. **Card: OKR cascade** — a label+input grid: OBJECTIVE, KR1, KR2, KR3, each with a `[metric] from [baseline] to [target] by [date]`-style placeholder.
7. **Live preview panel** — "📄 Your strategy one-pager, live preview" — read-only rows mirroring every field, updating on every keystroke, showing italic placeholder text ("…", "choose a scenario…") until filled.
8. **Toolbar** (sticky bottom) — 🤖 Copy AI pressure-test prompt / 📋 Copy Markdown / ⬇ Download .md / ↺ Reset, plus a "✓ Saved" flash indicator.

## Reusable AI prompts (exact text — dynamically populated template)

Unlike the static Lab Guide prompt (paste-your-own-content), this tool's prompt is generated live from the form state via a JS template literal:

```
You are a skeptical Chief Strategy Officer reviewing a product strategy draft. Your job is to find where it is soft, vague, or likely to fail, not to validate it.

Here is the strategy:
- Scenario: {scenario or "[not filled in]"}
- Winning aspiration: {aspiration or "[not filled in]"}
- Where to play: {where or "[not filled in]"}
- How to win: {how or "[not filled in]"}
- Capabilities required: {capabilities or "[not filled in]"}
- Management systems: {systems or "[not filled in]"}
- One hard no: {hardno or "[not filled in]"}
- Objective: {objective or "[not filled in]"}
- KR1: {kr1 or "[not filled in]"}
- KR2: {kr2 or "[not filled in]"}
- KR3: {kr3 or "[not filled in]"}

Please:
1. Identify the single biggest assumption I am making that could be wrong.
2. Ask me the one question a board member would ask that I cannot yet answer.
3. Tell me if any of my KRs are actually outputs disguised as outcomes.
4. Point out one thing I said I would not do and make the case for reconsidering.
5. In one sentence: is this a strategy or a wish list? Why?

If your response feels too gentle, add: "Now be harsher, what would a competitor's strategy team say about this plan?"
```

This is the **third** appearance of the same core pressure-test prompt across Module 1 artifacts (Slides, Lab Guide, this Builder) — always the same 5-question structure and closing "be harsher" escalation line, with only the "how the strategy gets pasted in" mechanic differing (manual paste vs. auto-interpolated).

## Markdown export template (exact structure)
```markdown
# Product Strategy One-Pager & OKRs, Module 1

- **Scenario:** {value}

## Playing to Win cascade

| Question | Choice |
|---|---|
| Winning aspiration | {value} |
| Where to play | {value} |
| How to win | {value} |
| Capabilities required | {value} |
| Management systems | {value} |

## One hard no
{value}

## OKR cascade
- **Objective:** {value}
- **KR1:** {value}
- **KR2:** {value}
- **KR3:** {value}
```
Empty fields render as `_(not filled in)_` in the Markdown export vs. `[not filled in]` in the AI prompt (deliberate formatting difference: Markdown italics vs. plain bracket for prompt clarity).

## Key interaction logic
- **State model**: every field carries `data-k="<key>"`; radios are grouped via a wrapping `[data-radio="scenario"]` container. `gather()` walks both into one flat object (radio values prefixed with `_`, e.g. `_scenario`).
- **Autosave**: identical pattern to the Lab Guide — single JSON blob in `localStorage` (key `plc-m1-strategy-sprint-builder`) on every `input`/`change` event, "✓ Saved" flash for 1.2s.
- **Load**: restores field values and re-checks the matching radio via `CSS.escape()`-guarded attribute selector on load.
- **Live preview + progress bar recompute together** in one `render()` call, invoked after every `save()`. Progress = count of 10 specific non-empty fields (scenario, 5 cascade fields, hardno, objective, kr1, kr2) ÷ 10 — **KR3 is excluded from the completion count**, likely a minor inconsistency in the original build (KR3 is filled in the OKR grid and included in exports/prompts, just not counted toward "10 complete").
- **Two distinct clipboard actions**: `copyMd()` (deliverable) vs. `copyPrompt()` (AI prompt), each with its own toast message; `downloadMd()` triggers a file save named `plc-m1-strategy-and-okrs.md`.
- **Reset**: `confirm()`-gated, clears `localStorage`, blanks all textareas/inputs and unchecks radios, re-renders.

## Torq-rebuild notes
- **This is the more production-ready sibling of the Lab Guide** — purpose-built form vs. retrofitted worksheet. If Torq rebuilds only one "fill in your strategy" tool per module, this pattern (dedicated fields + live preview + dual export) is the better template to copy, not the auto-fieldified table.
- **The live-preview-mirrors-form-state pattern** (a read-only panel with `pv-*` ids updated in the same `render()` pass as the progress bar) is a clean, reusable UX idea for any multi-field Torq worksheet — gives the user a WYSIWYG sense of their deliverable while filling out fields.
- **Dynamically-interpolated AI prompt** (vs. static paste-placeholder) is a nicer pattern than the Lab Guide's version — one click to get a fully-formed, ready-to-run prompt with no manual copy-paste of the student's own answers required. Worth carrying forward as the standard approach if Torq rebuilds similar AI-pressure-test tooling.
- Minor bug/inconsistency to note (not fix, just flag): progress denominator excludes KR3. If Torq rebuilds this pattern, decide deliberately whether KR3 should count.
- Confirms (a third time) the canonical Module 1 AI pressure-test prompt structure — safe to treat Slides/Lab-Guide/Builder as one shared asset, not three independent prompts.
