# Product Practices for an AI-Accelerated Team

Seven connected practices covering how a product team decides what to build, specifies it precisely enough to execute, validates intent before committing engineering time, and proves the result delivered value. Each section pairs the working method with current industry research and links out for deeper reading.

---

## 1. Product Strategy, Discovery, Prioritization, and Outcome-Based Roadmapping

Strategy sets direction; discovery tests whether that direction survives contact with real customers; prioritization decides what earns engineering time; roadmapping sequences the result. The common failure is a roadmap that lists features to ship rather than outcomes to achieve — which makes it impossible to tell whether the work succeeded.

### In practice

- **Strategy hierarchy** — Vision to Strategy to Roadmap to Execution, so every item traces upward to a stated intent.
- **Playing to Win cascade** — five linked choices: winning aspiration, where to play, how to win, capabilities required, management systems.
- **Continuous discovery** — weekly customer touchpoints run by the team building the product, weighting observed behavior over stated preference.
- **Prioritization frameworks** — RICE (reach, impact, confidence, effort), WSJF with cost-of-delay for sequencing, weighted scorecards where criteria differ by business, and an effort-vs-value 2x2 for fast triage.
- **Scoping discipline** — MVP to find the smallest testable version, MoSCoW to separate must-have from nice-to-have.
- **Roadmap formats** — outcome-based, Now/Next/Later, timeline, opportunity-based, and OKR-linked; the right choice depends on the audience and how much certainty you actually have.
- **Capacity allocation** — a 70/20/10 split across core work, adjacent bets, and exploration, so innovation isn't perpetually deferred.
- **Roadmap health** — every item traces to a metric, a review cadence is set, and the cut list stays visible so tradeoffs are explicit.

### What the research says

- Most roadmaps report output, not outcomes — teams perform better when handed problems to solve, not pre-built features to ship. — *[SVPG](https://www.svpg.com/the-alternative-to-roadmaps/)*
- Continuous discovery means weekly, structured customer touchpoints run by the team building the product, not a periodic research phase. — *[Product Talk](https://www.producttalk.org/glossary-discovery-continuous-discovery/)*

### Learn more

[Silicon Valley Product Group — "The Alternative to Roadmaps"](https://www.svpg.com/the-alternative-to-roadmaps/) · [Product Talk — "Continuous Discovery"](https://www.producttalk.org/glossary-discovery-continuous-discovery/)

---

## 2. Spec-Driven Development and Feature-Level Specifications

Spec-driven development means the specification, not a conversation or a ticket title, is the source of truth for what gets built. It works when the spec is written to be executed against — precise enough that engineering can move without a round of clarifying questions, and lean enough that it actually gets read.

### In practice

- **Press release first** — write the customer-facing announcement before the technical spec. If the value isn't articulable in plain language, the feature isn't ready to specify.
- **Lean over exhaustive** — a spec long enough to be complete but short enough to stay current; stale detail is worse than absent detail.
- **Explicit non-goals** — state what is out of scope as clearly as what is in scope, so the boundary is unambiguous.
- **Spec-readiness bar** — a checklist a spec must clear before engineering picks it up: problem stated, success defined, edge cases named, decisions logged, open questions closed or explicitly deferred.
- **Decision log** — record what was decided and why, so the same debate doesn't reopen mid-build.
- **Structured behavior rules** — express conditional logic as explicit if/then statements rather than prose, removing interpretation from implementation.
- **Living document** — when the build reveals a gap, update the spec rather than patching only the code; the spec stays the source of truth.

### What the research says

- Amazon writes the customer-facing press release before the technical spec, forcing clarity on why a feature matters before deciding how to build it. — *[Working Backwards](https://workingbackwards.com/concepts/working-backwards-pr-faq-process/)*
- A strong PRD balances full detail with clarity for both technical and non-technical stakeholders, and explicitly states what's out of scope. — *[Atlassian](https://www.atlassian.com/agile/product-management/requirements)*

### Learn more

[Working Backwards — "The Amazon Working Backwards PR/FAQ Process"](https://workingbackwards.com/concepts/working-backwards-pr-faq-process/) · [Atlassian — "What is a Product Requirements Document?"](https://www.atlassian.com/agile/product-management/requirements)

---

## 3. Writing Concise, Structured Specifications

A complete feature specification has a consistent anatomy. Each field answers a question someone will otherwise ask mid-build, and the discipline is keeping each one short — a spec that covers all eight fields in two pages beats one that covers three fields in ten.

### The eight fields

- **Problem** — what is broken or missing today, stated from the user's perspective with evidence, not assumption.
- **Outcome** — the measurable change this produces, with the metric that will move and a guardrail metric that must not degrade.
- **User journey** — the path the user takes end to end, including entry point, the steps through the feature, and what happens after.
- **Business rules** — the conditional logic governing behavior, written as explicit if/then statements: what the system does under each condition, including precedence when rules conflict.
- **Constraints** — technical, legal, compliance, timeline, and platform limits that bound the solution space.
- **Acceptance criteria** — testable, binary pass/fail conditions, typically Given/When/Then, that a tester can execute without having read the spec.
- **Dependencies** — what must exist first: upstream services, data availability, other teams' work, third-party contracts, and required sequencing.
- **Definition of done** — the completion bar beyond "it works": code reviewed, tests passing, documentation updated, telemetry instrumented, UAT signed off, rollout plan agreed.

### In practice

- Write acceptance criteria before the build, not after — they define the target rather than describing what was produced.
- Keep business rules in a scannable table or list rather than embedded in narrative prose.
- Name dependencies with an owner and a needed-by date; an unowned dependency is a scheduling risk in disguise.
- Distinguish acceptance criteria (does the feature behave correctly?) from definition of done (is it genuinely ready to release?).

### What the research says

- Acceptance criteria should be testable, binary pass/fail conditions — often Given/When/Then — so a tester can execute them without guessing. — *[ProductPlan](https://www.productplan.com/glossary/acceptance-criteria)*
- A complete requirements template names dependencies and a definition of done as their own sections, separate from acceptance criteria. — *[Atlassian](https://www.atlassian.com/software/confluence/templates/product-requirements)*

### Learn more

[ProductPlan Glossary — "Acceptance Criteria"](https://www.productplan.com/glossary/acceptance-criteria) · [Atlassian — free PRD template](https://www.atlassian.com/software/confluence/templates/product-requirements)

---

## 4. Rapid Prototyping to Validate Intent Before Development

A prototype's job is to test whether the intent is right before engineering commits. It collapses the gap between a written description and a shared understanding — a working artifact in a planning session settles debates that a document keeps open.

### In practice

- **Brief before building** — user, job to be done, the flow, the success condition, and the constraints. Five lines, written before anything is made.
- **Function over finish** — prioritize a working flow over visual polish; a polished mockup with a broken flow validates nothing.
- **Short test rounds** — 15-minute sessions with a handful of real users, structured observation captured against the success condition, prototype updated between rounds so each round tests something new.
- **Staged fidelity** — advance deliberately from functional baseline, to reliable, to refined, validating at each stage rather than polishing prematurely.
- **Stop signal** — when rounds stop producing new information, convert findings into a hypothesis: we believe [change] will produce [outcome] for [users] as measured by [metric].
- **Feed results back** — gaps the prototype exposes update the specification, not just the prototype.

### What the research says

- Testing with as few as five users can surface roughly 85% of usability problems — low-fidelity is usually enough to catch most of it. — *[Nielsen Norman Group](https://www.nngroup.com/videos/paper-prototyping-101/)*
- Prioritize functionality over visual polish — a good-looking prototype with broken workflows still fails validation. — *[Maze](https://maze.co/blog/rapid-prototyping/)*

### Learn more

[Nielsen Norman Group — "Paper Prototyping 101"](https://www.nngroup.com/videos/paper-prototyping-101/) · [Maze — "What is Rapid Prototyping?"](https://maze.co/blog/rapid-prototyping/)

---

## 5. AI Across Discovery, Requirements, Analysis, Testing, and Documentation

AI compresses synthesis, not judgment. It can summarize a hundred interviews before lunch, draft a specification in minutes, or generate an experiment design on request — but deciding what matters, whether the output is true, and what the team should do about it stays with the product manager. The practices below all assume a human audit step.

### In practice

- **Discovery** — read the raw material first to build your own baseline, then run a constrained synthesis pass that forbids inventing anything not in the source, then audit the output against your baseline for what got smoothed over or overstated.
- **Requirements** — turn scattered inputs (threads, transcripts, tickets) into a structured first-draft spec, then edit for judgment: scope, tradeoffs, and what to leave out.
- **Analysis** — natural-language querying against product data, metric-tree decomposition to isolate where a number moved, and experiment design walkthroughs covering significance, minimum detectable effect, and sample size before any calculation runs.
- **Testing** — generate edge cases and adversarial scenarios a spec author would miss; convert behavior rules into executable acceptance criteria; for AI-powered features, run a three-layer evaluation stack of user feedback, scored human review, and automated evals together.
- **Documentation** — draft status updates and narratives calibrated per audience, and pressure-test a spec by having AI argue the position of each skeptical stakeholder before the real review.
- **Guardrail** — treat generated output as a draft with unknown error distribution. Spot-checking a good-looking result is not verification.

### What the research says

- AI's share of product-management conversation topics jumped from under 4% to 67% in a few years, shifting focus from growth loops to evals and agentic architecture. — *[Lenny's Newsletter](https://www.lennysnewsletter.com/p/how-ai-will-impact-product-management)*
- The soft skills — communication, taste, judgment, vision — are what AI struggles hardest to replace; that's where PM leverage concentrates. — *[Lenny's Newsletter](https://www.lennysnewsletter.com/p/why-pms-are-best-positioned-to-thrive)*

### Learn more

[Lenny's Newsletter — "How AI will impact product management"](https://www.lennysnewsletter.com/p/how-ai-will-impact-product-management) · [Lenny's Newsletter — "Why PMs are best positioned to thrive in an AI world"](https://www.lennysnewsletter.com/p/why-pms-are-best-positioned-to-thrive)

---

## 6. Product Metrics, UAT, and Value Realization

These three form one chain: metrics define what success means, UAT confirms the delivered feature meets the business need, and value realization verifies the promised outcome actually materialized in production. Skipping the last step is how teams ship successfully and still deliver nothing.

### In practice

- **Metric quality test** — a real metric cannot rise while the user is worse off. If it can, it is a vanity metric.
- **Paired counter-metrics** — every primary metric ships with a guardrail that catches collateral damage.
- **Attribution discipline** — track what the team's work can plausibly move; company-level revenue is not an actionable target for a single release.
- **Leading over lagging** — instrument the indicators you can influence this sprint, not only the results that are already locked in.
- **AARRR funnel** — acquisition, activation, retention, referral, revenue, with activation and retention usually the most directly movable; run separate funnels per user type on multi-sided products.
- **UAT distinct from QA** — QA confirms the feature functions as specified; UAT confirms it does what the business needed, signed off by the person accountable for that outcome. In regulated contexts this is a formal compliance gate.
- **Value realization review** — a scheduled post-launch checkpoint comparing the outcome metric against the target stated in the spec, with an explicit decision: continue, iterate, or roll back.
- **Evals for AI features** — user feedback at volume, scored human review against a rubric with defined anchors, and automated checks; informal spot-checks are not a substitute.

### What the research says

- AARRR — acquisition, activation, retention, referral, revenue — was coined in 2007 specifically to stop startups chasing vanity metrics. — *[Amplitude](https://amplitude.com/blog/pirate-metrics-framework)*
- Value realization is the point a customer actually experiences the value they were promised — distinct from, and downstream of, simply shipping the work. — *[IBM](https://www.ibm.com/think/topics/value-realization)*

### Learn more

[Amplitude — "AARRR: Come Aboard the Pirate Metrics Framework"](https://amplitude.com/blog/pirate-metrics-framework) · [IBM — "What is Value Realization?"](https://www.ibm.com/think/topics/value-realization)

---

## 7. Product Roles and Artifacts in an Agentic Engineering Model

When agents write a large share of the code, implementation stops being the bottleneck and specification and verification become it. Documented large-scale AI-assisted rewrites have put only a small fraction of total effort into writing code, with the majority going to compiling, testing, reviewing, and confirming correctness. That redistribution changes what product artifacts need to contain.

### In practice

- **Specs become executable** — written precisely enough for an agent to implement without inferring intent: explicit conditional logic, named edge cases, defined failure behavior, no ambiguous adjectives.
- **Acceptance criteria become the contract** — machine-checkable Given/When/Then conditions are what verification runs against, so they carry more weight than prose description.
- **Guardrails are specified, not assumed** — stop conditions, escalation paths, confidence thresholds, and actions the agent must never take are part of the artifact.
- **Review becomes the constraint** — as generation volume rises, the limiting factor is human capacity to verify. Product's leverage moves toward defining what must be checked and what "correct" means.
- **Engineering shifts to supervision** — architecture, domain modeling, and agent oversight displace routine implementation as the highest-value engineering work.
- **Product roles shift upstream** — problem framing, tradeoff decisions, and unambiguous specification become the scarce skills, since the cost of building the wrong thing correctly has dropped but the cost of specifying it wrong has risen.
- **Traceability matters more** — with faster change throughput, every change should trace to a stated intent and a metric, or the team loses the ability to explain why the product is what it is.

### What the research says

- As agents write more code, engineering roles shift from producing artifacts to supervising the system that produces them. — *[McKinsey](https://www.mckinsey.com/capabilities/mckinsey-technology/our-insights/rewiring-software-delivery-for-the-agentic-era)*
- When agents handle execution, the PM who can write an unambiguous, executable spec becomes the highest-leverage person on the team. — *[McKinsey](https://www.mckinsey.com/capabilities/mckinsey-technology/our-insights/rewiring-software-delivery-for-the-agentic-era)*

### Learn more

[McKinsey — "Rewiring software delivery for the agentic era"](https://www.mckinsey.com/capabilities/mckinsey-technology/our-insights/rewiring-software-delivery-for-the-agentic-era) · [Lenny's Newsletter — "Make product management fun again with AI agents"](https://www.lennysnewsletter.com/p/make-product-management-fun-again)
