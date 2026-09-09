# Module 5 · Glossary: Run Effective Product Experimentation

Quick definitions for the terms used in the deck, the lab, and the Experiment Brief Builder.

| Term | Definition |
|---|---|
| **Experimentation** | A decision-making system for replacing opinion with evidence, not a feature-validation checkbox. Every opinion is a hypothesis until real users prove it. |
| **A/B test** | Splitting traffic between an unchanged control and a variant with exactly one change, then measuring both against the same metrics. Answers: *does B beat A on metric X?* (~1,000 users, low risk.) |
| **Multivariate test** | Testing several changes (and their combinations) at once to find the best-performing mix. Needs ~10x the traffic of an A/B test; surfaces interaction effects A/B alone can't. (Medium risk.) |
| **Feature flag** | A switch that exposes a feature to a chosen segment with instant rollback. About operational *control*, not measurement. (Any size, very low risk.) |
| **Canary release** | Shipping to a small percentage of users first to detect instability before ramping to 100%. (Any size, very low risk.) |
| **Control (A)** | Your product exactly as it exists today, the unchanged baseline. |
| **Variant (B)** | The control plus exactly **one** change, the feature under test. Change more than one thing and you can't attribute the result. |
| **Hypothesis** | A testable prediction: *"We believe [FEATURE] for [PERSONA] will result in [OUTCOME], measured by an [X%] change in [PRIMARY METRIC] within [DURATION]. We will protect [GUARDRAIL] throughout."* |
| **Primary metric** | The single number that defines success for the experiment. If it doesn't measure whether the persona's moment of misery is resolved, it isn't your primary metric. |
| **Guardrail metric** | What must **not** break while you chase the primary metric (e.g. satisfaction, retention, support load). |
| **Baseline rate** | The current rate of your primary metric before the experiment starts. |
| **MDE (Minimum Detectable Effect)** | The smallest improvement worth shipping, your decision floor. A real result below the MDE is too small to act on. |
| **Guardrail boundary** | How far a guardrail can move before it changes your decision, your ceiling. Cross it and you investigate. |
| **Sample size per arm** | How many users you need in each group to detect your MDE at your chosen power and significance. |
| **Traffic split** | The share of users assigned to the variant. 50/50 is standard; a smaller split means a longer run to reach significance. |
| **Test duration** | How long the test runs, cover at least two full weekly usage cycles to avoid novelty effects and day-of-week bias. |
| **Statistical significance / p-value** | The probability a result happened by chance. p = 0.03 means a 3% chance it's random. Industry threshold: p < 0.05. |
| **Significance threshold** | The confidence level you require before acting (commonly 95%, i.e. p < 0.05). |
| **Confidence interval** | The range of outcomes the data supports. Wide = high uncertainty; narrow = high predictability. Read the bracket, not just the midpoint. |
| **Statistical power** | The probability of detecting a real effect if one exists. Standard is 80%. |
| **Segment analysis** | Breaking results down by user group (power users, new users, device) to check whether the average is hiding harm to a subset. |
| **The peeking problem** | Checking results before reaching sample size, which mathematically inflates false positives. Solved with sequential testing. |
| **Bonferroni correction** | Adjusting the significance threshold to account for testing many metrics at once. Cleaner habit: cap primary metrics at three. |
| **Interaction effect** | When concurrent tests influence each other's results, rare in practice, so running tests in parallel is usually safe. |
| **The four outcomes** | The states an experiment can end in: **Ship** (positive & significant), **Iterate** (positive but noisy), **Kill** (negative or null), **Investigate** (mixed signals / guardrail broke). |
| **Shipping criteria** | The pre-committed decision rule: what conditions trigger ship, iterate, or kill, set before launch, with a fixed read date. |
| **Sample size calculator** | A tool that returns users-per-arm from your baseline rate and MDE (with power 80% and significance 5%). |
