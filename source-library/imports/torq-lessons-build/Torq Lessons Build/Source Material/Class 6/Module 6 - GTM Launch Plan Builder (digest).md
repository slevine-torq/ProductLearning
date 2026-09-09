# Module 6 · GTM Launch Plan Builder (digest) — Interactive Tool

**Format:** Single-file interactive HTML tool (companion to Lab Guide). Auto-saves to `localStorage` key `pm-m6-gtm-plan`. Live-renders a formatted GTM plan; includes a pressure-test prompt (same pattern as Module 5's Experiment Brief Builder).

## Structure (6 steps)

0. **Scenario & feature anchor** — StreamLine / RouteLogic / "My own product" + the single feature being launched (pulled from M4 PRD, explicitly "not a list").
1. **Goal & audience** — radio pick of Awareness / Engagement / Conversion, plus free-text "why this goal" and "target audience" (pulled from M2 persona). Enforces the lesson: goal first, audience follows.
2. **Launch tier** — S/M/L/XL radio (defaults to L), plus a required justification field (reach + revenue impact + risk of silence).
3. **Channels** — exactly 3 channel slots, each with an Owned/Earned/Paid type toggle plus free text. Also one shared "Enablement & assets" field (what Sales/CS/Support need + what needs building).
4. **Ownership & timeline** — named-owner/budget field, and a phased timeline field (Phase 1 beta → Phase 2 launch moment → Phase 3 post-launch).
5. **Success metrics** — metrics field, plus two paired fields: "bad signal to watch for" and "most likely post-launch decision" (double-down/iterate/pivot/deprioritize + trigger).

## Live features
- **Progress bar** — 12 tracked fields.
- **Live plan preview** — renders the full GTM plan document from form state.
- **Pressure-test prompt** (auto-generated, live-interpolated) — same self-critique pattern as Module 5's builder:

```
Act as a senior product marketing leader reviewing a GTM launch plan before sign-off.

Scenario: [scenario]
Feature: [feature]
Goal: [goal], [why]
Audience: [audience]
Launch tier: [tier], [justification]
Channels: 1) [type] [channel 1]; 2) [type] [channel 2]; 3) [type] [channel 3]
Enablement & assets: [enablement]
Ownership, budget & timeline: [ownership] | [timeline]
Success metrics: [metrics] (bad signal: [bad signal])

Pressure-test it:
1. Does the audience actually follow from the goal, or did I default to "awareness"?
2. Is the launch tier honest about reach and revenue impact, or over/under-sized?
3. Does each channel reach THIS audience where they already are? Flag any channel
   that won't.
4. Does every activity have a named owner, and is every budget/asset gap surfaced
   before launch?
5. Do the success metrics match the goal, and is the bad signal a real early-warning
   I could act on?
Rewrite anything vague into something a stakeholder could hold me to.
```

- **Markdown export** — `gtm-and-dashboard.md`, structured as a table (feature/goal/tier) + sectioned document (Goal & Audience, Launch Tier, Channels, Enablement & Assets, Ownership/Budget/Timeline, Success Metrics).

## Torq-rebuild notes
- This confirms the "form → live doc + live pressure-test prompt" pattern (seen in M4's PRD Builder and M5's Experiment Brief Builder) is now a **standardized 3-part template across the whole course**: structured input → live document assembly → AI self-critique prompt tailored to that artifact's specific failure modes. This is the single strongest reusable component pattern to build once for Torq and reuse across every interactive tool.
- The 5 pressure-test questions are a genuinely good "reviewer checklist" for any GTM plan (goal-audience alignment, tier honesty, channel-audience fit, ownership completeness, metric-goal match) — portable almost verbatim to a Torq security-automation GTM/rollout-plan context.
- Locking channels to exactly 3 slots (vs. an open list) forces prioritization discipline — worth keeping as a deliberate constraint, not a technical limitation, if rebuilt.
