# Module 5 · Lab Guide (digest): Design Your A/B Experiment

**Format:** Fillable guide page (~35 min, individual). Pairs with the interactive "Experiment Brief Builder" tool (not yet captured). Auto-saves to `localStorage` key `pm-m5-labguide`; same Copy-as-Markdown / Download / Reset export mechanism as prior modules.

## Purpose
Translate the M3 hypothesis + M4 scoped feature into a fully parameterized, ready-to-run A/B experiment brief: parameters table, isolated control/variant, hypothesis statement, and pre-committed shipping criteria.

## Scenario pick (3 options — new "Own product" option not seen in earlier modules)
- **A · StreamLine** (B2C, consumer audio) — test the Spotlight feature on discovery/retention.
- **B · RouteLogic** (B2B, logistics) — test the Velocity feature on compliance/dispatch workflow.
- **C · My product** — use the student's real baseline and M4-scoped feature.

## Structure (pre-work + 3 steps)

**Pre-Work (60 sec):** gather M3 hypothesis sentence, M3 primary metric & guardrail, M4 PRD feature (the thing being tested).

**Step 1 — Define experiment parameters.** A 10-row table, first 6 rows pull from prior work, last 5 are new decisions:
1. Feature under test (from M4 PRD)
2. Persona (from M2)
3. Expected outcome (from M3 hypothesis)
4. Primary success metric (from M3)
5. Baseline rate (today's rate, from M3 data)
6. Guardrail metric & boundary (what must not break + how far it can move before investigating)
7. **MDE** (Minimum Detectable Effect — smallest improvement worth shipping)
8. Sample size per arm (via calculator: baseline + MDE)
9. Traffic split & test duration (50/50 standard; ≥2 weekly cycles)
10. Significance threshold (p < 0.05 standard, explain any deviation)

Two explicit traps flagged: (1) don't conflate primary metric with guardrail — they're different numbers; (2) the variant description must be build-ready — "if you handed this to an engineer right now, would they know exactly what to build?"

**Step 2 — Define control & variant (isolation).** Control = product as it exists today. Variant = exactly one change (the M4 feature) — copy PRD screen descriptions directly rather than rewriting from memory. Includes an **"isolation check"** field: list everything that has *not* changed between arms (app version, recommendation engine, notifications, onboarding, etc.) — if something changed inadvertently, the test is compromised.

**Step 3 — Formalize hypothesis & shipping criteria.** Two fill-in-the-blank templates (see below), committed *before* any data arrives.

## The two reusable templates

### Hypothesis formula
```
I believe that [FEATURE UNDER TEST] for [PERSONA] will result in [EXPECTED OUTCOME],
as measured by a [X%] change in [PRIMARY METRIC] within [TEST DURATION].
We will protect [GUARDRAIL METRIC] throughout the test.
```

### Shipping criteria template — the key reusable artifact
```
We will SHIP if [PRIMARY METRIC] improves by ≥ [MDE] at [SIGNIFICANCE THRESHOLD]
and [GUARDRAIL METRIC] does not reach [GUARDRAIL BOUNDARY] after [TEST DURATION].

We will ITERATE if direction is positive but lift is below the MDE.

We will KILL if the primary metric shows no improvement or moves negatively.

The read date is fixed at the end of [TEST DURATION], no results reviewed before this date.
```
This operationalizes the Notes.md concept of "decide what shippable means now" into a literal fill-in template covering all 3 of the 4 outcomes (Ship/Iterate/Kill are pre-committed; Investigate is implicitly the fallback when a guardrail is crossed) plus a hard "no peeking" rule (fixed read date).

## Sample-size calculator note
Only two inputs needed: baseline rate (e.g. 11%) and MDE in percentage points (e.g. 2). Power fixed at 80%, significance fixed at 5%. Returns users-per-arm.

## Reflection prompt
Hardest parameter to define, and did nailing it down change the hypothesis? (mirrors the Notes.md quick-debrief question)

## Torq-rebuild notes
- The **shipping criteria template** is the single most valuable reusable artifact in this module — it forces a written, dated, pre-committed decision rule instead of a post-hoc judgment call. Directly portable to any Torq experimentation framework regardless of domain.
- The **isolation check** field (explicitly listing what did NOT change) is a good lightweight rigor-check worth keeping — cheap to include, catches a real class of experiment-design errors.
- Still needed from this artifact: the **Experiment Brief Builder** (interactive tool + sample-size calculator, referenced repeatedly) — separate HTML file.
