# M4 - AI User Flow Architect — Digest

**What it is:** The M4 Lab 1 workspace tool — architects Juno's AI-native user flow as an "iceberg" (Surface/Handshake/Underwater). Generates `04-ai-ux/user-flow.md`, the first of two M4 final-project deliverables, **plus a rendered SVG/PNG flow diagram** — the most technically sophisticated output of any tool captured so far.

**QA:** `localStorage` present (`m4-flow-v1`) ✅. Zero `__next_f` ✅. Genuine capture.

**✅ Resolves the 4-pillar vs. 7-node discrepancy flagged in the Slides digest.** This tool's form is built entirely around **4 pillars** — Trigger, Processing State, Presentation, Feedback Loop — with no trace of the Notes' 7-node model (Trigger/Capture/Retrieve/Reason/Act/Surface/Confirm-Correct) anywhere in the actual deliverable structure. **The 4-pillar model is what ships in the real repo file.** Treat the Notes' 7-node framing as the outdated/mismatched one when reconciling for Torq.

---

## Structure

Two tabs: **✏️ Build Yours** and **🧩 Worked Example · HR Agent**.

**Build Yours** — a 5-shape visual legend (Signal=circle/entry point, Hidden logic=rectangle/major step, Maneuver=small square/sub-step, Feedback loop=diamond/kill switch — note the legend's shape-to-concept mapping differs slightly from the Slides deck's version, worth a closer look if exact shape semantics matter later) followed by the 4 pillar sections, each with 2-3 fields:

1. **Pillar 1 — The Trigger**: signal-type dropdown (file upload, message received, page load, meeting end, scheduled, user action, threshold, other), specific-signal free text, surface-response free text.
2. **Pillar 2 — The Processing State**: hidden-logic steps (2-4 lines), handshake breadcrumbs, optional router-decision field for multi-path flows.
3. **Pillar 3 — The Presentation**: placement dropdown (Inline & Embedded / Floating & Contextual / Full-Page Canvas / Hybrid), generated-output free text, "why this maneuver" justification tying back to the M2 value prop.
4. **Pillar 4 — The Feedback Loop**: kill-switch description, captured-training-signal description, fail-safe-on-failure description.

Right panel: a **live-rendered SVG flow diagram** (see Interaction logic) plus the markdown preview.

Two presets: blank, or "Load Juno example (Strategic-Alignment Flow)" — full seed text below.

---

## Embedded exercise data — Juno example preset, verbatim

- **Signal type**: message-received. **Specific signal**: "A new P0 customer transcript is uploaded to the 'Raw Input' column in Juno (the dashboard built in M1)." **Surface response**: "'Juno is reading your transcript…' status pill appears under the input column. Empty Insights and PRD columns dim to ~40% to signal the agent is working."
- **Hidden logic**: "1. RAG retrieval over the RocketShip Strategy One-Pager (M3 KB), top-K = 6. 2. Comparison logic, does the transcript pain point map to a strategic pillar? 3. Risk + alignment scoring, emit P0-P3 with a strategic-rationale citation. 4. Confidence check, score < 30 → notRecommended; score ≥ 70 → P0/P1."
- **Breadcrumbs**: "'Scanning Strategy One-Pager…' → 'Cross-referencing 1 transcript with 4 strategic pillars…' → 'Synthesising priorities + drafting PRD section…'"
- **Router**: "Path A (Strategy loaded) → grounded prioritization with citations. Path B (Strategy missing) → 'Cautious mode', generic priorities tagged 'low confidence' + nudge to load the strategy doc."
- **Placement**: inline. **Output**: "Three Insight Cards in column 2 (Insights), each with: P0-P3 badge, evidence quote from the transcript, and a Strategic Traceability footer citing the strategic pillar. PRD draft in column 3 references the cards." **Why this maneuver**: "Value prop = augmentation (M2). The PM is the validator, they edit and approve, not create from blank. Inline keeps them in flow with the raw transcript on the left."
- **Kill switch**: "Every Insight Card has a 'Manual Override' button → re-tag P0-P3, edit the rationale, or mark notRecommended. PRD blocks are individually editable + regenerable." **Training signal**: "Manual demote → logged as 'strategic-alignment correction.' 3+ similar overrides → flag the strategic pillar as ambiguous + tighten retrieval." **Fail-safe**: "If RAG returns no match for a transcript pain → Juno tags the card 'Outside current strategy' + amber warning. Never invents an alignment. PM can promote manually or send back for clarification."

### HR Agent worked example (second tab)
A parallel, fully-filled 4-pillar walkthrough in a different domain (an internal HR chatbot handling policy questions and vacation requests). Notably includes a **confidence-based router**: "Confidence < 70% → route to clarification step" — a quantified escalation threshold, matching the pattern already seen in the M1 System Prompt Configurator's "confidence below 70%" rule. Also documents a fail-safe policy of never inventing an HR policy match, and a training-signal rule (5+ cancels within a week → route that employee's intents through clarification by default).

**`user-flow.md` output template** (5 sections, not literally named after the 4 pillars but derived from them):
```
# AI-Native User Flow · Juno

## Entry point
**Signal type:** {sigLabel}
{sigDetail}
**What they see instantly**
{sigSurface}

## The flow
1. {logicSteps}
2. {breadcrumbs}
3. {router}  (only if provided)

## AI moments
**Placement:** {placementLabel}
{output}
{maneuverWhy}

## Fallbacks
**Kill switch** {killSwitch}
**Training signal** {trainingSignal}
**Fail-safe** {failSafe}

## Self-review
[6-item checklist as markdown checkboxes]
```

---

## Interaction logic — the standout feature: generated SVG diagram

- The tool **programmatically builds an SVG flow diagram** from the form data (not a static illustration) — a 3-band layered canvas (Surface / Handshake / Underwater, matching the Slides' HR Agent diagram layout) with a signal circle, response/output rectangles, a router rectangle sized dynamically to its text length, a chain of "hidden logic" nodes that auto-detect shape (diamond if the text mentions RAG/retrieval/API/database-type keywords, rectangle otherwise), a generated-output parallelogram, a fail-safe parallelogram, and routed arrows (including curved dashed return-paths color-coded green for success and red for fail-safe) — all recalculated live as the learner types.
- **Text-wrapping helper** (`wrap()`) truncates and line-wraps free text into the SVG boxes, with an ellipsis if content overflows.
- **Export functions**: Download PNG (renders the SVG to a canvas at 2x scale with a `#07162C` background fill, then exports as PNG) and Download SVG (serializes the live DOM node directly) — both fully client-side, no external rendering service.
- An explicit in-UI instruction: "Do not paste a prompt into ChatGPT or Excalidraw to redraw it" — reinforcing the course's consistent "no LLM round-trip" rule for these builder tools.
- State persists to `localStorage` under `m4-flow-v1`.

---

## Torq-rebuild notes

- **The programmatic SVG-diagram generation from structured form input** is the single most advanced piece of tooling captured across the entire course — most other tools only ever produce markdown text. This pattern (structured fields → auto-laid-out, exportable diagram) is highly reusable for any Torq builder tool where a visual artifact (not just a doc) is the real deliverable.
- **The auto-shape-detection heuristic** (keyword-sniffing "hidden logic" text to decide diamond vs. rectangle) is a clever, low-effort way to make a generated diagram feel hand-drawn/intentional rather than uniform — worth reusing.
- Confirm with Scott/the course before rebuild: since this tool proves the 4-pillar model is authoritative, the M4 Notes document should be corrected to match (or the Torq rebuild should simply adopt 4 pillars outright and not carry the 7-node framing forward at all).
