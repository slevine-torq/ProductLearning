# Torq Scoping Response

Seven areas, mapped against what's already built and taught across the AI PM Cert, PMC/Torq Rebuild, Claude Code For PM, and Product Leadership programs. Six of the seven have real, citable material behind them today. The seventh is a natural next module, not a blind spot — flagged honestly below.

---

## 1. Modern product strategy, discovery, prioritization, and outcome-based roadmapping

This is the deepest-covered area in the library, taught at two altitudes: strategic (Product Leadership) and execution (PMC/Torq Rebuild).

**Frameworks already in the curriculum:** strategy hierarchy (Vision → Strategy → Roadmap → Execution), Playing to Win's five-choice cascade, RICE, WSJF (with cost-of-delay), Weighted Scorecard, five distinct roadmap formats (outcome-based, Now/Next/Later, timeline, opportunity-based, OKR-linked) with guidance on which audience each fits, plus a fully worked outcome-based roadmap example. On the execution side: a "discovery filter" for validating findings before they earn a place on the roadmap, an Effort-vs-Value 2x2, a 70/20/10 allocation model, and MVP/MoSCoW scoping (both properly attributed to their original sources — Ries, Clegg).

**What the research says:**
- Most roadmaps report output, not outcomes — teams perform better when handed problems to solve, not pre-built features to ship. — *[SVPG](https://www.svpg.com/the-alternative-to-roadmaps/)*
- Continuous discovery means weekly, structured customer touchpoints run by the team building the product, not a periodic research phase. — *[Product Talk](https://www.producttalk.org/glossary-discovery-continuous-discovery/)*

**Learn more:** [Silicon Valley Product Group — "The Alternative to Roadmaps"](https://www.svpg.com/the-alternative-to-roadmaps/) · [Product Talk — "Continuous Discovery"](https://www.producttalk.org/glossary-discovery-continuous-discovery/)

*One small gap worth naming: OKRs show up constantly as an input to these frameworks but aren't taught as a standalone lesson yet.*

---

## 2. Spec-driven development and feature-level specifications

Covered as a full pipeline, not a single template: a lean/press-release-first PRD that doubles as an AI prompt, and an explicit engineering-handoff step that most PM curricula skip.

**Frameworks:** the "Universal PRD prompt" — an exact, reusable section structure (Big Picture → Details → Logistics) — paired with a "spec readiness" checklist that defines the bar a spec must clear before engineering picks it up, so PMs stop generating back-and-forth after handoff.

**What the research says:**
- Amazon writes the customer-facing press release before the technical spec, forcing clarity on why a feature matters before deciding how to build it. — *[Working Backwards](https://workingbackwards.com/concepts/working-backwards-pr-faq-process/)*
- A strong PRD balances full detail with clarity for both technical and non-technical stakeholders, and explicitly states what's out of scope. — *[Atlassian](https://www.atlassian.com/agile/product-management/requirements)*

**Learn more:** [Working Backwards — "The Amazon Working Backwards PR/FAQ Process"](https://workingbackwards.com/concepts/working-backwards-pr-faq-process/) · [Atlassian — "What is a Product Requirements Document?"](https://www.atlassian.com/agile/product-management/requirements)

---

## 3. Concise, structured specs — problem, outcome, user journey, business rules, constraints, acceptance criteria, dependencies, definition of done

Closest existing single artifact: a fully worked sample PRD paired with a dedicated Given/When/Then acceptance-criteria lesson — six of your eight fields land cleanly (problem, outcome, user journey as an upstream artifact, constraints, acceptance criteria, and a UAT-flavored definition-of-done).

**Straight talk on the other two:** business rules and dependencies aren't first-class named fields in the current template yet — that's a gap in what's been taught so far, not a gap in the field itself; industry-standard templates treat both as standard sections. The seed for business rules already exists (an if/then "Smart Behaviors" table used for AI features) and the journey-map lesson already exists separately (Course 2) — folding both into the PRD template as explicit sections is a quick extension, not new content to build from scratch.

**What the research says:**
- Acceptance criteria should be testable, binary pass/fail conditions — often Given/When/Then — so a tester can execute them without guessing. — *[ProductPlan](https://www.productplan.com/glossary/acceptance-criteria)*
- A complete requirements template names dependencies and a definition of done as their own sections, separate from acceptance criteria. — *[Atlassian](https://www.atlassian.com/software/confluence/templates/product-requirements)*

**Learn more:** [ProductPlan Glossary — "Acceptance Criteria"](https://www.productplan.com/glossary/acceptance-criteria) · [Atlassian — free PRD template](https://www.atlassian.com/software/confluence/templates/product-requirements)

---

## 4. Rapid prototyping to validate intent before development

Taught as a disciplined loop, not "just vibe-code it": a PM Brief (User + job-to-be-done + Flow + Success condition + Constraints) drives a working prototype in a single session, tested in short rounds with real people, with an explicit rule to prioritize a working flow over visual polish and to update the spec — not just the prototype — when the build reveals a gap.

**Frameworks:** press-release-before-PRD (Amazon Working Backwards, cited), the "1 to 1.n" rapid-iteration loop, a staged fidelity ladder (Functional Baseline → Reliable → Magical) for AI-native flows.

**What the research says:**
- Testing with as few as five users can surface roughly 85% of usability problems — low-fidelity is usually enough to catch most of it. — *[Nielsen Norman Group](https://www.nngroup.com/videos/paper-prototyping-101/)*
- Prioritize functionality over visual polish — a good-looking prototype with broken workflows still fails validation. — *[Maze](https://maze.co/blog/rapid-prototyping/)*

**Learn more:** [Nielsen Norman Group — "Paper Prototyping 101"](https://www.nngroup.com/videos/paper-prototyping-101/) · [Maze — "What is Rapid Prototyping?"](https://maze.co/blog/rapid-prototyping/)

---

## 5. How AI can accelerate product discovery, requirements, analysis, testing, and documentation

One line recurs, independently, across nearly every course in the library: **AI compresses synthesis, not judgment.** That's the organizing principle, backed by a concrete workflow at each stage:

- **Discovery:** read the raw material yourself first, then run a constrained AI synthesis pass, then audit the output against your own baseline for anything smoothed over or invented.
- **Requirements:** a raw Slack thread turned into a PRD skeleton in minutes, reading prior workspace files directly instead of re-pasting context.
- **Analysis:** natural-language-to-SQL, metric-tree decomposition, and full experiment-design walkthroughs (significance, MDE, sample size) explained in plain English before any calculation.
- **Testing:** a three-layer eval stack (user feedback, human evaluation, automated evals) — explicitly flagging "vibe checks" as the anti-pattern to avoid.
- **Documentation:** AI role-playing named skeptical stakeholders to pressure-test a PRD before it ships, plus narrative/deck generation calibrated per recipient.

**What the research says:**
- AI's share of product-management conversation topics jumped from under 4% to 67% in a few years, shifting focus from growth loops to evals and agentic architecture. — *[Lenny's Newsletter](https://www.lennysnewsletter.com/p/how-ai-will-impact-product-management)*
- The soft skills — communication, taste, judgment, vision — are what AI struggles hardest to replace; that's where PM leverage concentrates. — *[Lenny's Newsletter](https://www.lennysnewsletter.com/p/why-pms-are-best-positioned-to-thrive)*

**Learn more:** [Lenny's Newsletter — "How AI will impact product management"](https://www.lennysnewsletter.com/p/how-ai-will-impact-product-management) · [Lenny's Newsletter — "Why PMs are best positioned to thrive in an AI world"](https://www.lennysnewsletter.com/p/why-pms-are-best-positioned-to-thrive)

---

## 6. Product metrics, UAT, and value realization

Metrics discipline, UAT, and post-launch decision-making are all individually strong. The frameworks: a vanity-vs-real metric test (a real metric can't rise while the user is worse off), paired counter-metrics, leading vs. lagging indicators, and the AARRR/outcome hierarchy for choosing what to track. UAT is treated as genuinely distinct from QA — QA confirms the feature works, UAT confirms it does what the business needed, sometimes with a formal sign-off. AI evals serve as the AI-native equivalent of UAT for AI-assisted features.

**Straight talk:** "value realization" isn't one named lesson yet — that's a gap in the curriculum, not in the discipline; it's an established concept industry-wide (IBM has a whole framework for it). It's the natural throughline connecting metrics discipline, UAT sign-off, and post-experiment decision-making, all three of which already exist. Stringing them into one narrative is quick synthesis work, not new material.

**What the research says:**
- AARRR — acquisition, activation, retention, referral, revenue — was coined in 2007 specifically to stop startups chasing vanity metrics. — *[Amplitude](https://amplitude.com/blog/pirate-metrics-framework)*
- Value realization is the point a customer actually experiences the value they were promised — distinct from, and downstream of, simply shipping the work. — *[IBM](https://www.ibm.com/think/topics/value-realization)*

**Learn more:** [Amplitude — "AARRR: Come Aboard the Pirate Metrics Framework"](https://amplitude.com/blog/pirate-metrics-framework) · [IBM — "What is Value Realization?"](https://www.ibm.com/think/topics/value-realization)

---

## 7. How product roles and artifacts need to evolve when engineering is increasingly agentic

The honest one: no existing lesson answers this directly yet, but the raw ingredients are strong.

**What's already there to build from:** Anthropic's own Bun rewrite is used as a worked example — roughly 15% of the effort was writing code, 85% was verification (review, tests, security/fuzz scans) — with the explicit takeaway already in the material that PM leverage shifts toward QA, edge-case coverage, and reading the PR rather than writing the spec from a blank page. Separately, the Agent Workflow Spec / Agent Control Panel pattern (built for specifying *product-facing* AI agents) is a usable template for the adjacent question of what a PM artifact looks like when an agent, not a human, executes the plan.

**Straight talk:** this is the natural next module to build — not a knowledge gap so much as a not-yet-taught one, since the field itself (McKinsey, Lenny's Newsletter) is actively documenting this shift right now. Pairing the Bun-rewrite verification shift with the Agent Workflow Spec pattern gets most of the way there, but it needs original synthesis rather than a lift from an existing lesson.

**What the research says:**
- As agents write more code, engineering roles shift from producing artifacts to supervising the system that produces them. — *[McKinsey](https://www.mckinsey.com/capabilities/mckinsey-technology/our-insights/rewiring-software-delivery-for-the-agentic-era)*
- When agents handle execution, the PM who can write an unambiguous, executable spec becomes the highest-leverage person on the team. — *[McKinsey](https://www.mckinsey.com/capabilities/mckinsey-technology/our-insights/rewiring-software-delivery-for-the-agentic-era)*

**Learn more:** [McKinsey — "Rewiring software delivery for the agentic era"](https://www.mckinsey.com/capabilities/mckinsey-technology/our-insights/rewiring-software-delivery-for-the-agentic-era) · [Lenny's Newsletter — "Make product management fun again with AI agents"](https://www.lennysnewsletter.com/p/make-product-management-fun-again)

---

Happy to turn any of these into a working session outline, or pull the actual lesson files for a walkthrough — six of the seven already exist as taught material, and the seventh is a short build from parts that already exist.
