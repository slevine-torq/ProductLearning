# Module 5 · Notes: Run Effective Product Experimentation

> Shareable class notes. Pairs with the slides, the lab guide, the Experiment Brief Builder, and the Sample Experiment Brief.

## 1 · The experimentation mindset

The best PMs aren't the ones who trust their gut the least, they're the ones who know how to **test** it. Every opinion in the room, including yours, is just a hypothesis until you put it in front of real users and measure what happens. Experimentation is how you replace the most senior person's opinion with evidence.

It's a **decision-making system**, not a feature-validation checkbox. PMs who build a structured experiment practice ship with more confidence and reverse fewer decisions after launch.

**What separates great product teams** is discipline across four areas that compound over time:

- **Trustworthy experiments (the foundation)**: standardize methodology, align on metric definitions, and run tests long enough to beat novelty effects. Two teams running the same test should get the same answer.
- **Data culture (the hardest part)**: treat data as the truth, not a tool to win arguments. Methodology and documentation mean nothing if the team doesn't trust the data as objective.
- **Institutional memory (what you've learned)**: document every experiment *at setup*, keep a cross-team learning library, and capture the business rationale so no one re-tests a proven idea.
- **AI acceleration (the multiplier)**: AI doesn't replace discipline; it removes bottlenecks. Pressure-test hypotheses before committing eng, synthesize results in minutes, and surface cross-experiment patterns at scale.

> The goal isn't more experiments, it's an org where every experiment makes the next one faster, cheaper, and smarter.

## 2 · Four methods, and how to choose

These four are the core toolkit, and they're **not mutually exclusive**: they're often combined.

- **A/B test**: measure the impact of *one* change. The discipline is restraint: change two variables and you can't trust the result. (~1,000 users, low risk.)
- **Multivariate**: find the best *combination* when you suspect variables interact. Needs ~10x the traffic of an A/B test. (Medium risk.)
- **Feature flag**: safely expose a feature to a segment with instant rollback. It's about *control*, not measurement. (Any size, very low risk.)
- **Canary release**: ship to a small percentage first to detect instability before ramping. (Any size, very low risk.)

**Choosing** comes down to three filters: the **question** you're answering, the **traffic** you have, and the **risk** you'll take. Low traffic or high stakes? Start with a flag or canary. Have the traffic and a clear hypothesis? Run the A/B test. Only reach for multivariate when you have the sample size and a specific interaction effect to understand.

The real power comes from combining them: a **flag** controls who sees the change, an **A/B test** measures whether it works, and a **canary** protects everyone else while you find out.

## 3 · Setting up an A/B test (8 steps)

Optimizely is widely used, but the logic transfers to Statsig, LaunchDarkly, or any platform.

1. **Define the hypothesis**: the most important step, and the one most PMs rush. The formula forces you to name the change, the user, the expected outcome, and the metric *before* you see a data point. Decide what "shippable" means now, setting the bar after results is rationalization.
2. **Tag your page / app**: instrument it so the platform knows where to inject the experiment. A one-time eng task, but know who owns it and whether it's in place.
3. **Create templates**: remove friction from repeated setups. This is how teams go from a few experiments a quarter to several a week.
4. **Define your experiment**: name, description, target pages. Every field is the documented record for whoever reads this in six months.
5. **Define control & variant**: control is today's product; variant is exactly one change. Set the exposure split on real numbers (50/50 standard, 10/10 when risk or traffic is tight).
6. **Choose your metrics**: one primary metric and your guardrails, defined before launch so the goalposts can't move.
7. **Launch**: review every setting, then don't touch it. Changing targeting, variant, or metrics mid-flight makes the arms incomparable.
8. **Evaluate**: compare control vs. variant on every metric you defined.

## 4 · Reading the result: five questions

A moved primary metric isn't automatically a green light. Run every result through these five before calling anything a win:

1. **Is this a repeatable win or a random ripple?** The **p-value** is the probability the result is chance. p = 0.03 means 3%. Most teams use 0.05 as the threshold.
2. **Is the lift worth acting on?** A result can be statistically real and still too small. If it's below your **MDE**, it doesn't clear the bar.
3. **What's my floor and ceiling?** The **confidence interval** is the range the data supports. `[+0.1%, +9.4%]` is too wide to act on. Read the bracket, not the midpoint.
4. **Did improving one thing break another?** **Guardrail metrics** catch what else moved. +4% conversion with −20% session length is a trade-off, not a win.
5. **Did everyone benefit, or just some users?** **Segment analysis** turns a headline number into an honest one. +3% overall retention hiding −8% for new users is a problem waiting to happen.

## 5 · Making the decision: the four outcomes

Every experiment ends in one of four states:

- **🚢 Ship**: positive and statistically significant, nothing broke. Roll to 100% and **log the learnings** (an undocumented win can't be repeated).
- **🔁 Iterate**: direction is promising but the lift doesn't clear the MDE. Increase sample, extend duration, or sharpen the variant. Don't ship on a feeling.
- **🔍 Investigate**: primary improved but a guardrail broke, or segments contradict each other. Dig into segment data to find who was harmed before deciding.
- **☠️ Kill**: negative or null. Not failure, a question answered. Log it and let it sharpen the next bet.

**Two case reads from class:**

- **Spotify autoplay** (streams +13.4%, retention +1.3%, but satisfaction −7.5% and skip rate +19%) → a textbook **Investigate**. A strong primary isn't a green light when two guardrails break. Understand who was harmed before shipping.
- **Amazon 1-Click Reorder** (repeat purchases +16.5%, revenue +13.5%, guardrails moved but stayed under threshold, 99% confidence) → a clean **Ship**. Recognise a clear result and make the call without manufacturing doubt. Indecision on a clean result costs as much as shipping on a bad one.

## 6 · Six common mistakes (Meta, Microsoft, EA, Whatnot)

1. **Multiple metrics without correction**: cap primary metrics at three; apply Bonferroni.
2. **The peeking problem**: checking early inflates false positives; use sequential testing and wait for sample size.
3. **Not defining success upfront**: set the threshold before launch and hold to it.
4. **Ignoring segment-level impacts**: always segment by power users, new users, device type.
5. **Fearing interaction effects**: concurrent tests rarely distort each other; run in parallel and protect velocity.
6. **The single-metric trap**: pair primary metrics with guardrails so gains don't mask health drops.

> The through line: **discipline before launch beats damage control after it.**

## 7 · The lab & key takeaways

**Lab · Design Your A/B Experiment (35 min).** Translate your M3 hypothesis and M4 feature into a fully scoped experiment brief: fill the parameters table, define control vs. variant, size your sample, and write your hypothesis and shipping criteria. Build it in the Experiment Brief Builder following the lab guide. This brief feeds directly into your final project.

**Key takeaways:**

1. Experimentation is a decision-making system, not a checkbox.
2. Match the method to the question, the traffic, and the risk.
3. Read past the primary metric, significance, magnitude, confidence, guardrails, segments.
4. Most mistakes happen *before* the test runs; disciplined pre-launch habits produce cleaner decisions.

**Next session, Module 6 · Launch Impactful GTM Plans:** the anatomy of a GTM plan, sizing the launch and choosing channels, and the post-launch iteration mindset that turns a release into continuous improvement.
