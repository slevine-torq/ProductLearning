# Module 5 · Experiment Brief Builder (digest) — Interactive Tool

**Format:** Single-file interactive HTML tool (companion to Lab Guide). Auto-saves to `localStorage` key `pm-m5-experiment-brief`. Live-renders a formatted experiment brief; includes a real statistical sample-size calculator.

## What it does
Same design pattern as Module 4's builders (form → live doc + live prompt), extended with an actual working stats calculator.

### Structure
0. **Scenario picker** — StreamLine / RouteLogic / "My own product" (3-way, matches Lab Guide).
1. **Parameters table** — same 13 fields as the Lab Guide (feature, persona, expected outcome, primary metric, baseline, guardrail + boundary, optional 2nd guardrail, MDE, sample/arm, split, duration, significance), each tagged with a small pill showing whether it "pulls from M2-M4" or is a "decision you make today."
2. **Sample-size calculator** (embedded in the parameters card) — see formula below. Has a "Use this →" button that writes the computed number directly into the Sample-size-per-arm field.
3. **Control & Variant** — same isolation-check pattern as the Lab Guide (textarea for "what has NOT changed").
4. **Live preview panel** — renders the full brief: parameters table, hypothesis statement, control/variant/isolation, and shipping criteria, all interpolated live from form state.
5. **Pressure-test prompt** (new — not in the Lab Guide) — an auto-generated, live-interpolated LLM prompt that asks the AI to critique the student's own brief. See below.
6. **Markdown export** — same brief structure, downloadable/copyable.

## Sample-size calculator — actual formula used (real stats, not decorative)

Two-proportion sample size test, two-sided, α = 0.05 (z=1.959964), power = 80% (z=0.841621):

```js
function sampleSize(basePct, mdePts){
  const p1 = basePct/100, p2 = (basePct+mdePts)/100;
  const za = 1.959964, zb = 0.841621;
  const pbar = (p1+p2)/2;
  const num = za*Math.sqrt(2*pbar*(1-pbar)) + zb*Math.sqrt(p1*(1-p1)+p2*(1-p2));
  const n = (num*num)/Math.pow(p2-p1,2);
  return Math.ceil(n);
}
```
Inputs: baseline rate (%) and MDE (percentage points). Output: users needed per arm (displayed with total = n×2 across both arms). This is a legitimate two-proportion z-test sample size formula — worth preserving exactly if Torq wants a working calculator rather than a lookup table.

## Pressure-test prompt (new reusable artifact, auto-filled from form state)

```
Act as a senior product manager reviewing an A/B experiment brief before launch.

Scenario: [scenario]
Hypothesis: I believe [feature] for [persona] will result in [outcome], measured by a
[X%] change in [primary metric] within [duration]. We will protect [guardrail].
Baseline: [baseline] · MDE: [MDE] · Sample/arm: [n] · Split: [split] · Significance: [threshold]
Control: [control]
Variant: [variant]
Held constant: [isolation]

Pressure-test it:
1. Is the variant exactly ONE change, or does it bundle several? Flag anything that
   breaks attribution.
2. Does the primary metric actually measure whether the persona's moment of misery
   is resolved?
3. Is the primary metric distinct from the guardrail, or am I conflating them?
4. Given the baseline and MDE, is the sample size and duration realistic, or will
   this never reach significance?
5. Are my shipping criteria a real decision rule a stakeholder could hold me to?
   Rewrite anything vague.
```

This is a strong pattern: the student doesn't just fill out a form, they get a one-click way to have an AI critique their own experiment design against the same 5 principles taught in Notes.md (single-variable isolation, metric-goal alignment, primary/guardrail distinction, statistical feasibility, decision-rule concreteness).

## Torq-rebuild notes
- The **pressure-test prompt** is the standout new artifact here — a self-critique loop where the tool's own output becomes the input to an AI review pass. This "build it, then have AI stress-test it against the rubric" pattern is highly reusable for Torq builders generally (PRDs, roadmaps, experiment briefs, security runbooks, etc.).
- The sample-size calculator being a real working formula (not a static lookup table) means it's worth porting as actual JS if Torq rebuilds this as a live tool, rather than approximating it.
- No new backlog/content data — purely the *assembly + calculation + self-critique mechanism*, complementary to the Lab Guide digest.
