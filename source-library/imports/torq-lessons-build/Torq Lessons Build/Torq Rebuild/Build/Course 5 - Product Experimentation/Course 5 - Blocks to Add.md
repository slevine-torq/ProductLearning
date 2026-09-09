# Course 5 — Blocks to add by hand

These are **Blocks**, not Tasks. Each one gets added inside an existing Task via **"+ Add block"**, alongside that Task's HTML upload. They share the Task's single *Mark Complete* — none of them needs its own Task title.

Terms and questions are answerable from each Task's own content — no PMC glossary was usable as-is for this module (Module 5's Glossary carries the same PMC-original framing issue flagged in `_MODULE-COVERAGE.md`), so terms below are rebuilt directly from the rewritten lessons.

---

## Task 1 — Testing Your Gut Instead of Trusting It

### Block: Four Pillars Key Terms — Type: Card flipping

1. Term: Trustworthy experiments | Definition: A shared methodology across the team, real guardrails against novelty effects, and tests run long enough to see real behavior settle.
2. Term: A real data culture | Definition: Treating a result as truth rather than ammunition in an argument you'd already decided to win.
3. Term: Institutional memory | Definition: Writing down what a test was for at launch, not after you already know the answer — so the same idea doesn't get re-tested blind.
4. Term: AI as an accelerant | Definition: AI speeds up hypothesis pressure-testing and result synthesis — it doesn't replace the discipline underneath it.

### Block: Culture Check — Type: Quiz

1. A senior stakeholder's result-contradicting opinion gets treated as final anyway. Which pillar is actually missing?
   A. Trustworthy experiments
   B. A real data culture ← correct
   C. Institutional memory
   D. AI as an accelerant

2. A team keeps re-running a test that already failed twice, because nobody remembers it happened. Which pillar is missing?
   A. Trustworthy experiments
   B. A real data culture
   C. Institutional memory ← correct
   D. AI as an accelerant

---

## Task 2 — Choosing the Right Experiment Method

### Block: Method Key Terms — Type: Card flipping

1. Term: A/B test | Definition: Measures the effect of one specific change against a control — needs roughly 1,000+ users per arm, low risk.
2. Term: Multivariate test | Definition: Finds the best combination of several changes tested together — needs roughly 10,000+ users, medium risk.
3. Term: Feature flag | Definition: Controls who sees a change, safely — works at any traffic size, very low risk.
4. Term: Canary release | Definition: Ships to a small slice first to catch instability before ramping further — any traffic size, very low risk.

### Block: Match the Method — Type: Card classification

**Buckets:** A/B test, Multivariate, Feature flag, Canary release

1. "Does the new version beat the old one?" → A/B test
2. "Which combination of these three changes works best?" → Multivariate
3. "Can I safely expose this to just one customer segment?" → Feature flag
4. "Is this stable once it's running at real scale?" → Canary release

---

## Task 3 — Setting Up a Trustworthy A/B Test

### Block: Setup Key Terms — Type: Card flipping

1. Term: Isolation | Definition: One variable changed, identical measurement on both arms — the entire reason a result means anything.
2. Term: Control | Definition: The product exactly as it exists today, unchanged.
3. Term: Guardrail | Definition: A metric you can't afford to move the wrong way, locked before launch alongside the primary metric.
4. Term: Instrumentation | Definition: Confirmation that the platform can actually detect and measure the page or event being tested — checked before a launch date is set.

### Block: Setup Order Check — Type: Quiz

1. What should happen first, writing the hypothesis or building the test?
   A. Build first, write the hypothesis once you see early results
   B. Write the hypothesis first, before anything is built ← correct
   C. Order doesn't matter
   D. Only write a hypothesis if the result is ambiguous

2. Once an A/B test is live, what should you do if the early trend looks weak?
   A. Adjust the targeting to improve it
   B. Leave it alone — changing it mid-flight breaks the comparison ← correct
   C. Add a new variant
   D. Widen the traffic split immediately

---

## Task 5 — Reading Results Honestly

### Block: Reality-Check Quiz — Type: Quiz

1. A test hits a big "significant" result three days into a two-week plan. What should you do?
   A. Ship it immediately — the result is already clear
   B. Let it run to the planned sample size before deciding ← correct
   C. Stop it and start a new test
   D. Average it with last quarter's number

2. The primary metric was flat, but a secondary metric moved during the same test. What does that tell you?
   A. Ship based on the secondary metric
   B. It's a new hypothesis worth its own test — not evidence for this one ← correct
   C. The test was run incorrectly
   D. Ignore both metrics

---

## Task 6 — Making the Call

### Block: Outcome Key Terms — Type: Card flipping

1. Term: Ship | Definition: Primary metric moved as predicted, guardrails held, effect holds across segments — roll it out.
2. Term: Iterate | Definition: Directionally right but not enough to ship as-is — refine the variant and test again.
3. Term: Investigate | Definition: The result doesn't match what you expected — find out why before you ship or kill it.
4. Term: Kill | Definition: No effect, or a guardrail broke — the idea was worth testing and is now worth dropping.

### Block: Call It — Type: Card classification

**Buckets:** Ship, Iterate, Investigate, Kill

1. "Metric moved as predicted, every guardrail held, effect consistent across every segment." → Ship
2. "Metric moved a little in the right direction, but one guardrail dipped slightly." → Iterate
3. "Metric moved a lot, but only in one segment and flat everywhere else." → Investigate
4. "Metric didn't move at all, and a guardrail broke." → Kill

---

## Task 7 — Common Mistakes in A/B Testing

### Block: Mistakes Check — Type: Quiz

1. A test is watched on five different metrics at once, and the team ships because one of them moved. What mistake is this?
   A. Peeking early
   B. Tracking too many metrics at once ← correct
   C. Skipping segments
   D. Treating one test as final

2. A topline result looks flat, so the team doesn't check whether any individual segment moved. What mistake is this?
   A. Undefined success threshold
   B. Fear of interaction effects
   C. Reading the topline and skipping segments ← correct
   D. Peeking early
