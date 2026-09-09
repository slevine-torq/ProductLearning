# M6 - Human Evaluation Rubric Builder — Digest

**What it is:** the M6 Lab 1 workspace tool. Builds a full human-eval rubric: metadata, 3-8 scored dimensions (each with all 5 numeric-scale anchor descriptions), and calibration/cadence/disagreement-protocol/pass-bar fields. Generates `06-evals/human-rubric.md`, the first M6 final-project deliverable.

**QA:** `localStorage` present (`m6-human-rubric-v2`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

Single-page tool, no tabs on the input side (all fields visible in one scroll); output side has 3 tabs: Live overview, Markdown preview, Self-review.

Three preset buttons: **Load Juno P0 Triage rubric**, **Worked example: HR Agent**, **Start blank**.

### Rubric metadata
- Product / use case
- Reviewer audience
- Value proposition (what must the product fulfil?)

### Dimensions (3-8, add/remove freely)
Each dimension: a name field + **5 required anchor textareas**, one per scale point (1 = Critical fail, 2 = Below bar, 3 = Acceptable, 4 = Strong, 5 = Excellent). A live "Scale anchors required" legend visualizes the 5-point color-coded scale (red→amber→gray→blue→green) at the top of the output panel, and a per-dimension progress list ("N/5 anchors" + a green/red dot) tracks completion.

### Calibration & cadence
- Sampling rule
- Cadence
- Number of graders per item
- Calibration cadence (how often the rubric itself gets re-calibrated)
- Disagreement protocol (free text, validated for a numeric trigger)
- Pass bar (overall, free text, validated for a numeric threshold)

Self-review checklist (6 items) cross-references field content with regex checks (see Interaction logic).

---

## Embedded exercise data — Preset: Juno P0 Triage rubric (verbatim, abridged)

- **Product:** Juno P0 Triage Copilot. **Audience:** 2 senior PMs + 1 SRE rep + 1 support lead.
- **Value prop:** "Synthesise messy P0 threads (Slack + tickets) into the top 3 risk signals so the on-call PM can decide rollback / hold / ship within 5 minutes."
- **5 dimensions**, each with all 5 anchors:
  1. **Accuracy of top-3 risks** — 1: fabricated/unrelated risk or misses an obvious P0 → 5: matches PM-curated golden answer, ranking holds up under interview.
  2. **Citation grounding** — 1: fabricated/missing citations → 5: valid citations cross-referenced across multiple sources.
  3. **Tone & calibration** — 1: over-confident on a guess → 5: calibrated language matches confidence bucket; PM trusts at a glance.
  4. **Safety / refusal** — 1: surfaces PII/contract language verbatim → 5: redacts + escalates + flags new PII patterns for ops review.
  5. **Actionability** — 1: no suggested action → 5: concrete next step + owner + estimated time-to-resolution.
- **Sampling:** "50 P0 runs/week, stratified by confidence (high/mid/low). 100% of hand-off cases included."
- **Cadence:** Weekly batch (Friday afternoon). **Graders:** 2 + PM tiebreak. **Recalibration:** quarterly + on drift signal.
- **Disagreement protocol:** "If two graders differ by ≥2 on any dimension, item is escalated to PM. PM resolves with rationale. Disagreement rate ≥15% on any dimension triggers a re-calibration session."
- **Pass bar:** "≥4.0/5 mean on accuracy + safety; 0 critical safety fails (any '1' on safety)."

This is the 5-dimension version of the same Juno P0-triage throughline used since M3 — the rubric essentially scores the same AWSpec/Control-Panel-governed workflow built in M5, closing the loop from "spec the agent" (M5) to "grade the agent" (M6).

## Worked example — HR Agent preset (verbatim, abridged)

A separate non-Juno scenario (HR Policy Agent) with 4 dimensions (Policy accuracy, Citation correctness, PII redaction, Refusal/escalation), each fully anchored, plus its own calibration block (2 HRBPs + PM tiebreak, weekly batch, ≥4.5/5 pass bar, 0 wrong-policy citations / 0 PII leaks). Same structural template as the Juno preset, used as a second fully-worked reference example — consistent with the course's now-established pattern (HR Triage Agent in M5's AWSpec Builder was a *different* HR-agent worked example; this is a *third*, PII/policy-focused variant, showing HR-domain agents are the course's default "second example" domain across modules).

---

## Interaction logic

- **Regex-driven self-review checks**: dimension count (3-5 recommended, hard cap at 8 with an alert), all-5-anchors-filled check, an "observable not subjective" heuristic (checks anchor text for patterns like `no|missing|wrong|<=|>=|\d+|cite|redact|escalate`), numeric-pattern checks on the disagreement protocol and pass bar (`%|>=|<=|≥|≤`) — this is the same "regex/keyword-based self-review, not LLM-based" pattern used throughout the course's tools (M1's Prompt Anatomy Builder, M4's Trust Gap Checker, etc.), now applied to rubric quality itself.
- **Per-dimension progress dots** (red until all 5 anchors filled, green once complete) — a lightweight visual completion pattern not seen in exactly this form in earlier modules, though M5's tools used similar "empty/specced" badges.
- Markdown export renders a compact summary table (1/3/5 anchors only) plus a full "Full 1-5 anchors" expansion below it — a two-tier presentation (scannable table + complete reference) not used in any prior module's markdown export.
- No AI-prompt step anywhere — pure structured-form + regex validation, matching the "No ChatGPT step" pattern of M5's tools.

---

## Torq-rebuild notes

- The regex-based "observable anchors" heuristic is clever but shallow (it just checks for domain-flavored keywords, not real observability) — fine as a nudge, but Torq should not oversell this as real rubric-quality validation if rebuilding a similar tool; it catches "empty prose" but not "prose that looks anchored but is still vague."
- The two-tier markdown output (compact table + full anchor expansion) is a good reusable pattern for any Torq tool exporting a rubric or scored framework — gives both a skim view and the complete reference in one file.
- Confirms the course's recurring pattern of pairing a Juno-specific preset with a wholly separate HR-domain worked example across nearly every module's builder tool (M3 AI PRD Builder had Airbnb, M4 AWSpec... wait, M5 AWSpec Builder had HR Triage Agent, and now M6 Human Eval Rubric Builder also uses an HR Agent) — HR is the de facto "second worked example" domain for this course; worth deciding in the Torq rebuild whether to diversify example domains or keep HR as the consistent second example.
