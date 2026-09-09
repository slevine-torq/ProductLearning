# M6 - Eval Stack Designer — Digest

**What it is:** the M6 Lab 2 workspace tool. Plans all three eval-stack layers (User Feedback / Human Evaluation / Automated Assessment) plus an optional "PM Execution Plan — hard/soft gates" block. Generates `06-evals/eval-stack.md`, the second M6 final-project deliverable, plus a live SVG pyramid diagram (download PNG/SVG).

**QA:** `localStorage` present (`m6-eval-stack-v2`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

Single-page tool. Three preset buttons: **Load Juno P0 Triage starter**, **Worked example: HR Agent**, **Start blank**.

### Layer 3 · User Feedback (online evals, highest volume)
- Signals captured (active + passive)
- Cadence
- Pass bar (numeric)
- Owner

### Layer 2 · Human Evaluation (system-level evals, highest fidelity)
- What gets sampled (with stratification)
- Rubric reference (points at `human-rubric.md`)
- Cadence
- Pass bar (numeric)
- Who grades + disagreement protocol

### Layer 1 · Automated Assessment (component-level evals, highest scale)
- Golden set (versioned)
- Eval checks (LLM-judge + format/safety)
- Cadence
- Pass bar (numeric)
- Owner (CI / Eng / PM)

### PM Execution Plan · hard gates & failure taxonomy (labeled "optional but recommended")
- Hard gates (auto-block)
- Soft gates (PM sign-off)

Self-review checklist (7 items), including "Layer 2 references the human-rubric.md file" and "Layer 3 has a versioned golden set" — direct cross-tool consistency checks against Lab 1's output.

Note the tool's own layer-numbering is inverted from its visual stacking order: the UI presents "Layer 1" as automated (bottom of the pyramid, highest scale) and counts upward to "Layer 3" as user feedback (top, highest volume) — matching the Slides' pyramid layer numbers (Layer 1 = Component-level at the base, Layer 3 = Online at the top), not the Notes' un-numbered top-to-bottom table order (User feedback listed first, then Human, then Automated). Purely a numbering-direction quirk, not a content conflict — worth flagging only so a Torq rebuild picks one consistent numbering direction.

---

## Embedded exercise data — Preset: Juno P0 Triage starter (verbatim, abridged)

- **User Feedback:** Active = thumbs up/down + regenerate + edit-before-send + free-text on thumbs-down. Passive = dismiss/suppress, time-to-first-action, abandon rate. Cadence: real-time + weekly aggregate. Pass bar: "≥80% thumbs-up; regenerate rate ≤15%; abandon rate ≤20% on non-trivial intents." Owner: PM reviews weekly; on-call PM triages ≥2 thumbs-down on same intent within 24h.
- **Human Evaluation:** Sample = 50 P0 runs/week, stratified by confidence, 100% of hand-off cases included. Rubric ref: `06-evals/human-rubric.md`. Cadence: weekly Friday batch. Pass bar: "≥4.0/5 mean across accuracy + safety; 0 critical safety fails." Graders: 2 + PM tiebreak.
- **Automated Assessment:** Golden set = 200 anonymised P0 threads with PM-curated expected top-3 risks, versioned in `06-evals/golden-set/`, refreshed quarterly + post-incident. Checks: LLM-judge accuracy scoring, format check, citation check, refusal check. Cadence: every PR (CI gate) + nightly cron. Pass bar: "≥90% golden-set accuracy; 100% format/citation/refusal pass." Owner: CI fails the PR; Eng owns format/citation; PM owns the accuracy bar.
- **Hard gates:** 0% PII leakage; 0 critical safety fails on the human-eval layer; citation-check fail → block. **Soft gates:** P99 latency >5s requires PM justification; off-brand tone flags >2% require PM review.

This is the exact same numeric bars introduced in the Human Evaluation Rubric Builder's Juno preset (≥4.0/5, 0 critical safety fails), confirming the two Lab 1/Lab 2 tools are built to be filled in sequence with consistent numbers — a nice piece of cross-tool internal consistency.

## Worked example — HR Agent preset (verbatim, abridged)

Same HR Policy Agent scenario as the Rubric Builder's HR preset, extended into a full 3-layer stack: 80 conversations/week sampled by policy domain, 300-item golden set covering 12 policy domains refreshed quarterly, hard gates on PII leakage/wrong-policy-citation/refusal-check failures. Numerically consistent with the Rubric Builder's HR preset (≥4.5/5 pass bar, 0 wrong-policy citations carried through).

---

## Interaction logic

- **Live SVG pyramid diagram**: same 3-trapezoid pyramid shape as the Slides deck's static illustration, but here it's data-driven — each layer's status text updates live from form input (e.g., "sample: 50 P0 runs / week...", "cadence: Every PR (CI gate)...", truncated to fit). A 4th box below the pyramid shows the hard/soft gate lines live. Faded "empty"/placeholder text pattern consistent with M5's tools.
- **Markdown export deliberately restructures the input data**: rather than mirroring the tool's own 3-layer + gates UI 1:1, the exported `eval-stack.md` groups content differently — "The stack" table has rows for **Code-based**, **LLM-as-judge**, and **Human** (3 rows), which doesn't map cleanly onto the UI's Layer 1/2/3 structure (the UI's single "Automated Assessment" layer gets split into two separate output rows, "Code-based" and "LLM-as-judge"). This is a real internal structure mismatch between the tool's input form and its own output file — worth normalizing in a Torq rebuild so the exported document's sections match the UI sections 1:1.
- Regex-based self-review checks mirror the Rubric Builder's approach (numeric-pattern detection via `%|>=|<=|≥|≤`, keyword detection for "rubric"/"golden"/"version"/"refresh").
- PNG/SVG export mechanism identical to M5's tools (canvas render with `#07162C` fill, 2x scale).

---

## Torq-rebuild notes

- **Fix the export/UI structure mismatch** before reusing this tool's pattern: the input form cleanly separates 3 layers, but the markdown template collapses/reorganizes them into a different 3-row table ("Code-based / LLM-as-judge / Human") that doesn't correspond 1:1 to the form sections. A rebuild should either match the input structure in the output, or make the intentional remapping explicit in the UI copy.
- The layer-numbering direction (Layer 1 = base/automated vs. a top-down reading order) is a minor but real inconsistency across the Notes (unordered), the Slides (1=base), and this tool (1=base, matching Slides) — worth standardizing on the pyramid-order numbering (1=base) since two of three sources already agree on it.
- The cross-tool numeric consistency between this tool and the Human Evaluation Rubric Builder (same ≥4.0/5 bar, same "0 critical safety fails" language) is a good signal of deliberate course design — worth preserving that level of cross-artifact consistency when Torq rebuilds any multi-lab-in-sequence flow.
