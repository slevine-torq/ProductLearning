# Module 5 · Pre-Read: Run Effective Product Experimentation

> ~10 minutes. Read this before class so we can spend our time deciding, not catching up.

## Why this module matters

In Modules 1 to 4 you framed a problem, discovered it, turned it into a data-backed hypothesis, and scoped a feature into a roadmap and PRD. Module 5 is where you find out whether your bet is actually right. You'll learn to **choose the right experiment method**, **set up an A/B test end to end**, **read the result honestly**, and **make a confident call**: ship, iterate, kill, or investigate.

The through-line: **the best PMs aren't the ones who trust their gut the least, they're the ones who know how to test it. Every opinion in the room, including yours, is just a hypothesis until real users prove it.**

## The three things to anchor on

1. **Match the method to the decision.** There are four core methods, and they're not mutually exclusive. An **A/B test** measures the impact of one change (needs ~1,000 users, low risk). A **multivariate test** finds the best *combination* of changes (needs ~10x the traffic, medium risk). A **feature flag** safely exposes a feature to a segment with instant rollback (any size, very low risk). A **canary release** detects instability before a full rollout (any size, very low risk). Choose based on your **question**, your **traffic**, and your **risk tolerance**: low traffic or high stakes? Start with a flag or canary.
2. **Set the rules before you launch.** Define your **hypothesis** with the formula (*feature, persona, outcome, metric, duration, guardrail*), pick your **primary metric** and **guardrails**, and decide your **MDE** (minimum detectable effect) and **significance threshold** *before* a single data point arrives. Setting the bar after you see results isn't success, it's rationalization. Once the test is live, don't touch it.
3. **Read past the headline number.** A moved primary metric isn't automatically a green light. Run every result through five questions: Is it **significant** (p-value)? Is the **magnitude** worth it (vs. MDE)? What's the **confidence interval** (floor and ceiling)? Did a **guardrail** break? Did **every segment** benefit, or is the average hiding harm? Then place the result in one of four boxes: **Ship**, **Iterate**, **Kill**, or **Investigate**.

## Key terms (full list in the Glossary)

- **A/B test**: splitting traffic to measure the impact of a single change against an unchanged control.
- **Control vs. variant**: the unchanged baseline (A) vs. the version with exactly one change (B).
- **Primary metric**: the one number that defines success. **Guardrail metric**: what must not break to get there.
- **MDE (Minimum Detectable Effect)**: the smallest lift worth shipping; your decision floor.
- **p-value & significance threshold**: the probability a result is chance; industry standard is p < 0.05.
- **Confidence interval**: the range of outcomes the data supports; read the bracket, not just the midpoint.
- **The four outcomes**: Ship, Iterate, Kill, Investigate, what to do with any result.

## Come ready with

- Your **Module 3 outputs**: your hypothesis sentence, primary success metric, and guardrail metric.
- Your **Module 4 PRD**: the feature you scoped, this is exactly what you'll be testing.
- A reaction to our opening question: *think of a product decision you've seen made by data, by intuition, or by the most senior person in the room. What happened, and would you do it the same way?*

## What you'll produce today

A fully scoped **A/B experiment brief**: your parameters table, control vs. variant definition, formalized hypothesis, and shipping criteria, that feeds directly into your final project. Build it in the Experiment Brief Builder; the Lab Guide walks you through each step, and the Sample Experiment Brief shows a finished one to model yours on.
