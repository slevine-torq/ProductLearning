# M4 - AI-UX Trust Gap Checker — Digest

**What it is:** The M4 Lab 2 workspace tool — scores any AI feature against the three trust gaps **plus a fourth scored dimension, the Intelligence Tax**. Generates `04-ai-ux/trust-gaps.md`, the second M4 final-project deliverable (per the Notes; the Slides deck tags this tool "🔍 Bonus Audit Tool" instead — a labeling inconsistency worth noting alongside the other M4 discrepancies).

**QA:** `localStorage` present (`m4-trust-gaps-v2`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

One preset row (blank "audit your real product," or "Load Juno example (M1 baseline)"), a feature-name field, then **4 scored gap cards** (not 3 — this confirms the Intelligence Tax is a formally scored 4th row, not just a paragraph as the Notes' prose suggested):

1. **The Black-box Gap** — "Can the user see why the AI decided?" Examples: source citations, chain-of-thought visibility, hover-to-show-source, confidence meter.
2. **The Hallucination Gap** — "Could this confidently be wrong?" Examples: confidence thresholds, "Draft" watermarks, regenerate button, alternative interpretations.
3. **The Control Gap** — "Can the user steer or stop?" Examples: one-click undo, manual override, direct edit, "don't suggest this again," scoped re-generation.
4. **The Intelligence Tax** — "Is the latency/privacy/cognitive load worth the value?" Examples: streaming responses, "Juno is reasoning…" breadcrumbs, p95 latency cap, opt-in memory, privacy badge.

Each card: a 1-5 slider ("Wide open" → "Closed") with a color-coded score badge (red at 1, amber at 3, green at 5) plus a free-text "mitigation in product terms" field and an inline examples hint.

Below the cards: a live **Verdict** banner (Shippable / Hold / Unsafe).

---

## Embedded exercise data — Juno example preset ("M1 baseline"), verbatim

Feature audited: "Juno PM v1 (M1 Lovable prototype, no RAG yet)."

- **Black-box: 1/5.** Mitigation: "Add a 'Why this priority?' expand panel on every Insight Card showing the 1-2 source sentences from the transcript + the strategic pillar matched. Reduce cost of verification under 3 seconds."
- **Hallucination: 2/5.** Mitigation: "Tag any Insight Card without strategic-pillar match as 'low confidence' with a dotted border. Add a Regenerate button per PRD section so users can retry without losing the rest."
- **Control: 2/5.** Mitigation: "Make every PRD section an EditableBlock with one-click revert. Manual P0-P3 override on every priority card. Never present AI output read-only."
- **Intelligence Tax: 3/5.** Mitigation: "Stream the PRD draft character-by-character. Show 'Juno is scanning Strategy…' breadcrumb during retrieval. Cap end-to-end at p95 < 3s."

This preset is a deliberately low-scoring "before" state — modeling the M1 baseline as genuinely untrustworthy, presumably to be re-scored higher after M4's lab work or the optional AI-Native Lab upgrades.

**`trust-gaps.md` (this tool's version) output template:**
```
# Trust-Gap Mitigations · Juno

## Trust gaps
| Gap | Where it shows up | User cost | Mitigation |
|---|---|---|---|
| **The Black-box Gap** | {question, tags stripped} | {cost label} ({score}/5 closed) | {mit} |
[... 4 rows total, including Intelligence Tax]

## Highest-priority fix
**{worst-scoring gap name}** ({score}/5). {its mitigation text}

## Verdict
{Shippable / Hold / Unsafe paragraph}
```

---

## Interaction logic

- **Automated verdict computation**: takes the *minimum* score across all 4 gaps (not an average) — one badly-open gap sinks the whole verdict, matching a "weakest link" philosophy. Thresholds: min ≥ 4 → **Shippable** ("Confirm with M6 eval data"); min ≥ 2 → **Hold** ("close it or down-scope"); min < 2 → **Unsafe** ("do not ship, re-spec from Level 1").
- **User-cost narrative generator**: a fixed lookup table maps each 1-5 score to a plain-English consequence string (1 = "User will lose trust after one failure" through 5 = "Closed") — auto-inserted into the markdown table so the artifact reads as a real risk memo, not just raw numbers.
- **"Highest-priority fix" auto-selection**: finds the single lowest-scoring gap and surfaces its mitigation text as the headline recommendation — a simple but effective "don't boil the ocean, fix this one thing first" nudge.
- Sliders use native `<input type="range">` with custom-styled thumb/track (red→amber→green gradient track, independent of the score-badge coloring which uses discrete color bands per value).
- State persists to `localStorage` under `m4-trust-gaps-v2`.

---

## Torq-rebuild notes

- **The weakest-link verdict logic (min, not average) paired with an auto-generated "highest-priority fix" callout** is an excellent, directly reusable pattern for any Torq readiness-gate tool — it turns a multi-axis score into one clear next action instead of a vague overall grade.
- **The score→plain-English-cost lookup table** is a good technique worth reusing anywhere Torq wants a scored rubric to also read as a narrative risk memo without extra authoring effort per use.
- Resolve the **required-vs-bonus labeling conflict**: Notes call this tool's output a required M4 deliverable; the Slides deck's Resources section tags it "Bonus Audit Tool." Pick one status in the Torq rebuild.
- Resolve the **shared trust-gaps.md file path** with the (optional) Juno AI-Native Lab tool — see that tool's digest for detail.
