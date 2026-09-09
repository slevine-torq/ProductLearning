# Module 2 · Prioritization & Roadmapping for Product Leaders: Notes

> Product Leadership Certification · shareable class notes. Work through every concept from the module at your own pace. Each idea is written out in full, with the context and examples you need to understand it and apply it to your own product. Pair with the slides and on-demand content.

---

## 01 · How Product Leaders Prioritize Effectively

### {06} Making the prioritization call

Think of a time when you and your team couldn't agree on what to build first. What did you use to make the call?

The gap between a clear strategy and a team that knows what to build next is almost never a communication problem. It is a prioritization problem. Without a shared system for making decisions, every team defaults to its own logic and you end up with alignment on paper and fragmentation in execution. A prioritization system is what turns a strategy into a direction everyone can act on independently.

So let's dive into how to make those decisions as a product leader.

### {07} Rocks, Pebbles, and Sand

The jar metaphor is simple but the insight behind it is one of the most practically useful things a product leader can internalize. If you fill a jar with sand first, the rocks never fit. Most teams do exactly this with their sprints without realizing it. So ask yourself honestly: where is your focus right now, and what are you filling your jar with?

**Rocks** are your strategic bets, the work that only exists because of the specific direction your strategy points. These are not just important features. They are the foundational moves that make everything else possible: the capability that unlocks the next phase of growth, the architectural decision that five other teams are waiting on, the platform investment that your How to Win depends on. If these do not ship, the strategy does not just slow down. It becomes a document.

**Pebbles** are the improvements and delight features that keep customers trusting the product while the rocks are being built. The risk with pebbles is not that they are unimportant. It is that they are immediately visible and feel productive. A sprint full of pebbles generates positive feedback and zero strategic progress. The discipline is knowing how many pebbles are enough to maintain trust without letting them displace the work that actually moves the needle.

**Sand** is the maintenance work that is genuinely non-negotiable over time but has no natural limit if left unmanaged. Tech debt, bug fixes, performance work: all of it is real and all of it will expand to fill the space you give it. Your job as a product leader is not to eliminate sand but to give it a container so it cannot crowd out the rocks.

The question to bring to every sprint: are your rocks actually getting the most engineering time this quarter? In most organizations the honest answer is no.

### {08} Three products that got their rocks right

These three examples are worth studying because in each case the rock was not the most visible investment the company made: it was the least glamorous one. No user ever opened Stripe and said "I love this API documentation." No Notion user ever celebrated the block-based architecture. Nobody chose Linear because of its performance benchmarks. But in every case, without that foundational bet landing first, none of the product's most celebrated features would have been possible.

**Stripe: API reliability & developer docs.** Stripe made the deliberate choice to invest in API reliability and developer documentation before building any customer-facing UI. That decision meant developers could trust the platform enough to build on it, which gave Stripe the distribution it needed to compete against incumbents with far greater resources. The rock was not the product. The rock was what made the product trustworthy enough to build on.

**Notion: block-based editor architecture.** Notion's block-based editor architecture was the decision that made everything else technically possible. Databases, templates, and real-time collaboration all depend on that foundational choice. A team that had shipped a polished notes app first would have had to rebuild the entire architecture later to support those features. The rock came first because it had to.

**Linear: performance & architectural speed.** Linear made speed non-negotiable at the architecture level before anything else. That decision is what allowed enterprise teams to adopt a tool that felt as fast as a consumer app, without the complexity that typically comes with scaling up. Speed was not a feature they added. It was a constraint they built the entire product around.

The pattern across all three is the same. The rock was the unglamorous foundational bet that made every subsequent feature possible. Ask yourself: what is the equivalent bet in your product right now?

---

## 02 · Choose Your Prioritization Approach

### {10} Impact vs. Effort matrix

This is the framework you reach for first, not because it is the most sophisticated tool in your toolkit, but because it aligns teams fast. The most valuable thing that happens when you run this exercise is not the final matrix. It is the debate that surfaces when two people score the same feature differently. That disagreement reveals misaligned assumptions about customer value, technical complexity, or strategic priority that would have stayed hidden until the wrong thing was halfway built.

The four quadrants map directly back to the buckets you just learned:

- **Do Now** (high impact, low effort) is where your rocks live: the bets that move your north star without draining the team.
- **Plan Carefully** (high impact, high effort) is your strategic bets bucket: work that is worth doing but needs careful sequencing and OKR alignment before it gets resourced.
- **Fill Gaps** (low impact, low effort) is your pebbles: the small improvements that maintain trust without moving the strategy.
- **Avoid** (high effort, low impact) is your sand in its most dangerous form: work that consumes capacity and produces nothing meaningful.

Here's how you run it in five steps: list your candidates, score Impact and Effort independently, plot and surface the disagreements, focus on the near term only, and use your OKRs as the tiebreaker for anything in the Plan Carefully quadrant. One practical tip worth internalizing: double your effort estimate and halve your impact estimate before you commit to anything. Teams are consistently over-optimistic on both dimensions, and the matrix helps most when it is calibrated against reality.

#### Asana: a five-year item just became a two-week experiment

Keep doubling Effort on messy work. Then re-score Effort on anything that is partitionable and has a testable definition of done. Asana's Enzyme-to-RTL test migration had been staffed since 2022 and was still about five years from done. Four coding agents, one directory each, overnight, a five-sentence prompt, humans merging every PR: about two weeks, about $12K in model and infra. Asana's ~$6M comparison for the old plan is napkin math. The leadership question is not "can AI do five years of anything?" It is "which Plan Carefully item is high-effort because last year's estimate is still sitting there?" *(Source: [We migrated off Enzyme in 2 weeks, Asana Engineering](https://asana.com/inside-asana/migrating-off-enzyme-2-weeks))*

### {11} RICE: when gut feeling isn't enough

Impact vs Effort gets you aligned fast. RICE gets you precise. Reach for this framework when your backlog is full of items that are hard to compare directly: different user segments, different surfaces, different levels of certainty, where gut feel alone is not going to hold up in a room full of stakeholders. The formula forces you to be explicit about four things most teams leave implicit.

> RICE Score = (Reach × Impact × Confidence) ÷ Effort

**Reach:** how many users will actually be affected in a given quarter, not how many could theoretically benefit. Ground it in real analytics data: the realistic number who will encounter this feature, not your total user base.

**Impact:** how significantly does this move the needle for each of those users individually? Use the Intercom scale: 3 for massive, 2 for high, 1 for medium, 0.5 for low, 0.25 for minimal. The scale forces a concrete judgment rather than a vague sense that something is important.

**Confidence:** how certain are you in your Reach and Impact estimates? Score between 50% and 100%. Anything below 50% means the feature has not been researched enough to prioritize yet. This is where intellectual honesty either shows up or does not.

**Effort:** how many person-months will this require across the full team, not just engineering? The higher the effort, the lower the final score. This is intentional: dividing by effort means RICE naturally rewards smaller, faster, high-confidence bets over large uncertain ones. It is a built-in check against teams that default to big swings.

One important caveat: RICE works best when you have reliable data to ground your Reach and Impact estimates. In early stage products or for exploratory bets where the data does not yet exist, the formula becomes as subjective as the gut feel it was designed to replace. In those cases, Impact vs Effort is the better tool.

The most common mistake is inflating Reach and Impact while underestimating Effort. If your score feels too good, it probably is.

### {12} WSJF: when time and urgency matter

If RICE tells you which features deliver the most impact per unit of effort, WSJF adds the dimension RICE leaves out: what it costs you to wait. Reach for it when delay has a measurable price, a market window closing, a regulatory deadline, a competitor moving, or a dependency that blocks three other teams. The formula has three numerator components and one denominator.

> WSJF = (Time Criticality + Feature Value + Risk Reduction) ÷ Job Size

**Time Criticality** is the most important and most underused component. It forces you to ask not just whether something is valuable but whether it is valuable *right now*. A feature that will be equally useful in six months scores low. A feature tied to a specific market moment, a seasonal event, or a dependency that expires scores high.

Cost of delay is the underlying principle that makes Time Criticality so important. It is not about urgency for its own sake. It is about quantifying what you lose by not doing something now: the revenue that does not come in, the market window that closes, the dependency that blocks three other teams for another quarter. Most prioritization frameworks ignore this entirely. WSJF is built around it.

**Feature Value** is the direct business return from completing the work, revenue unlocked, costs reduced, efficiency gained. This maps most closely to Impact in RICE, but WSJF asks you to think in business terms rather than user terms.

**Risk Reduction** is the indirect value that does not show up in a revenue model but is real nonetheless. Paying down a compliance risk, unblocking a platform dependency, or removing a technical constraint that is slowing three other teams all belong here. Teams that ignore this component systematically underprioritize foundational work.

**Job Size** is your denominator. Shorter jobs float higher, all else being equal, which means WSJF naturally favors getting smaller high-value items out of the way quickly rather than letting large projects dominate the roadmap for months.

The scores are only as honest as the team running them. Time Criticality in particular is easy to inflate when someone wants their project to win. Agreeing on scoring criteria and weights before anyone fills in a number is what keeps the framework honest.

### {13} Weighted Scorecards: when you need cross-team alignment

This is the framework experienced product leaders reach for when the prioritization conversation involves multiple stakeholders with competing criteria. Impact vs Effort tells you what to do first. RICE quantifies your intuition. The Weighted Scorecard does something different: it surfaces the disagreements about what matters most before anyone debates a single feature. The most valuable part is not the final ranking, it is the conversation that happens when you agree on the weights.

When a team debates whether Customer Value should be weighted at 30% or 40%, they are really debating what kind of company they are and what their strategy actually means in practice. That conversation has more strategic value than any individual feature decision.

The mechanics are straightforward. Each criterion gets a weight that reflects its strategic importance. Customer Value, Strategy Alignment, and AARRR Impact are positive weights because more is better. Effort carries a negative weight because higher effort reduces the score, the same logic as RICE. The final score is the sum of each criterion multiplied by its weight.

In the example on the slide, Offline Mode scores highest not because it performs best on any single dimension but because it is consistently strong across the criteria that matter most to this team's strategy. UI Refresh scores lowest because even though it might be easy to build, it barely moves the needle on customer value, strategy alignment, or growth metrics.

Amazon uses a variant of this approach in their Working Backwards process: every feature is scored against customer benefit before a line of code is written. Make the criteria explicit, agree on the weights, and let the scorecard surface what the team actually believes rather than what the loudest voice in the room argues for.

### {14} Additional frameworks: your reference card

These five frameworks round out your prioritization toolkit. The three above, Impact vs Effort, RICE, and WSJF, are the ones you will reach for most often under pressure. These are the ones you pull out when the situation calls for something more specific: a workshop format, a financial justification, a discovery sprint, or a stakeholder alignment session where you need the room to make the decision rather than making it for them.

- **MoSCoW:** best for sprint planning and MVP scoping. Watch out: teams overload Must Have when strategy is unclear.
- **Now/Next/Later:** best for stakeholder communication and quarterly planning. Watch out: becomes a wish list if not tied to OKRs.
- **Feature ROI:** best for financial justification and enterprise sales support. Watch out: requires reliable revenue estimates, rare in early stage.
- **Buy a Feature:** best for stakeholder alignment workshops. Watch out: customers choose comfort over strategy.
- **Affinity Grouping:** best for discovery synthesis and opportunity sizing. Watch out: time intensive for feature-level decisions.

### {15} Exercise · Audit and prioritize your backlog

Apply the Impact vs Effort matrix to a 14-item backlog for your chosen scenario and make your first real prioritization call as a product leader. Your goal is to identify your three Rocks for this quarter and your Hard No list, with every decision traceable back to your M1 strategy and OKRs.

1. Review the 14-item backlog for your scenario in the lab guide.
2. Use the Impact vs Effort matrix as your guide to make a decision on each item.
3. Identify your three Rocks, each must connect to one of your M1 OKRs.
4. Write your Hard No list of three items you are explicitly deprioritizing this quarter, with a one-sentence rationale for each.

At least one item on the list will feel uncomfortable or difficult to deprioritize. That is intentional, a prioritization call is only as strong as the "no" you can defend.

### {16} Show and swap your priorities and hard nos

To validate whether your prioritization decisions hold up without context, pair up with a peer and let them cold-read your choices. Swap your Rocks and Hard Nos, then read your partner's silently for one minute, no verbal context, no explanations, before you discuss. Then swap roles.

- Do the Rock selections feel traceable to a clear strategy, or do they read like a feature list? If your partner cannot connect each Rock back to a strategic bet without being told what the strategy is, the selections are not specific enough or are not clearly framed as outcome-based bets.
- Pick one Hard No and make the case for why it should actually be a Rock; the person who chose it defends the trade-off. If you cannot articulate why you said no beyond "it is not a priority right now," the rationale needs sharpening before you face a real stakeholder.

---

## 03 · Building an Effective Product Roadmap

### {20} Choose the roadmap that fits your audience

You have your prioritization framework. You know what your rocks are, you have scored your backlog, and you have made your bets. Now it is time to put that thinking into a roadmap your organization can actually execute against. There are five common types, and the right one depends entirely on who is reading it.

**Outcome-based** roadmaps are the language of the boardroom. When you are presenting to a CPO or board, they do not need to see features. They need to see the bets you are making and the outcomes you are accountable for. Strip the features out entirely and speak in strategic terms only.

**Now/Next/Later** is the most forgiving format because it replaces date precision with honest communication about confidence. What is in Now is committed. What is in Next is sequenced but not locked. What is in Later is validated thinking, not a promise, which is exactly what most teams and stakeholders actually need to hear.

**Timeline** is the one format where dates actually matter and are expected. Engineering and ops need to see dependencies, sequencing, and delivery windows clearly in order to plan resourcing and coordinate across teams.

**Opportunity-based** roadmaps start with the customer problem rather than the solution. They are most useful when the team is still in discovery and needs to stay open to multiple possible approaches before committing to a build direction.

**OKR-linked** is the most defensible format at any level of the organization because every item traces directly back to an outcome the strategy committed to. If an item on your roadmap cannot be linked to an OKR, it is worth asking whether it belongs there at all.

### {21} An outcome-based roadmap in practice

The five roadmap types are not five different documents to maintain. They are five different views of the same source of truth, each formatted for a different audience. The outcome-based format keeps the connection between strategy and execution most visible, which is why it is the right starting point before you decide how to render it for the room you are in.

An outcome-based roadmap starts from the OKRs and works backward to the work, so every item is traceable to a specific result the strategy has already committed to. Imagine ClearTrack, a fictional project management tool similar to Asana, building its Q3 roadmap from exactly that logic. Its objective: become the tool teams trust to run their work, not just track it. From that, three key results, reduce project overrun rate, increase weekly active teams, and cut time-to-first-plan for new users. Here is how those three results map directly to the work chosen for now, next, and later.

**Now.** Each item names a change in how users behave, not a feature to build. "Teams complete sprint planning in under 30 minutes" does not describe an interface redesign, it describes the outcome that drives the overrun rate down, and the KR link makes that connection explicit. The feature version would have said "redesign planning view" or "add automated reporting." Neither tells the team what success looks like. The outcome version does.

**Next.** These items are sequenced by dependency, not by priority score. Stakeholder updates follow the AI status summary because they extend the same underlying signal to a different audience. Delivery risk alerts follow scope-change detection because they need reliable project data before they can surface anything accurate. That sequencing rationale is what separates a roadmap from a backlog: a backlog lists what to build, a roadmap explains why things come in the order they do.

**Later.** These are validated bets, not commitments. A roadmap that treats Later with the same visual weight as Now is making promises it cannot keep. The visual distinction signals to every audience that these items are directional, not scheduled, an honest and defensible position to hold.

While this is not the only format you will use, the outcome-based roadmap is the one source of truth worth maintaining. Every other view, the timeline for engineering, the Now/Next/Later for the team, the OKR-linked version for the board, is a rendering of this. Your job as a product leader is to keep that source of truth connected to the strategy and translate it for whoever is in the room.

### {22} Roadmap pitfalls and what to do instead

A roadmap that was once a strategic tool can quietly become something else: a communication artifact that exists to satisfy stakeholders rather than to drive decisions. When that happens, the team stops using it to think and starts using it to report. Four failures are how that shift shows up in practice.

**Feature Factory:** a list of features with no outcome attached. When every item is a feature rather than a bet, the team optimizes for shipping rather than for outcomes. The fix is not just rewriting the items; it is changing the standard for what gets resourced. Require every item to be written as a bet with a linked OKR before it gets resourced.

**Over-Promised:** dates committed before confidence is high enough. Every missed date erodes trust with the stakeholders who planned around it. Separate visibility from commitment: items can be on the roadmap without a date. Only add dates when you would stake your credibility on them.

**Stale Artifact:** updated once a quarter and out of date by week three. The problem is not the cadence of updates; it is the absence of a clear owner and a review rhythm tied to how the work actually moves. Assign a clear owner and a review cadence tied to sprint cycles, not planning seasons.

**Hidden Roadmap:** lives in a document nobody can find or read independently. If stakeholders are still asking you what is on the roadmap, it is not visible enough. Make it self-service at the stakeholder tier with one source of truth.

Every one of these failures has the same root cause: the roadmap stopped being a tool the team uses to make decisions and became a document the team produces to manage relationships. Keeping it honest, visible, and outcome-based is what prevents that drift.

---

## 04 · Hands-On Lab: Create Your Product Roadmap

### {24} Build your Now/Next/Later roadmap

In this hands-on lab you'll use AI to generate a Now/Next/Later roadmap for your chosen scenario, then refine it until every "Now" item reads as a strategic bet traceable to an OKR. Your goal is a roadmap clear enough that someone who has never seen your strategy can tell what problem you are solving this quarter. You'll need your M1 strategy, OKRs, and your three Rocks from earlier in this module.

1. Open an LLM of your choice.
2. Feed in your M1 strategy, OKRs, and three Rocks using the prompt in your lab guide.
3. Review the output and check that every Now item is framed as an outcome-based bet, not a feature description. If it reads like a feature list, prompt the AI to reframe it.
4. Refine through at least two rounds of prompting until the roadmap reflects your actual strategic thinking.
5. Screenshot or save your final roadmap. This goes into your project deliverables, and the foundation for the prototype you'll build next module.

### {25} Quick debrief

In one sentence: was there an item the AI flagged in your roadmap that you hadn't thought about, and was it valid? The moment worth noticing is when the AI surfaces an item or a sequencing decision you had not considered, and you have to decide whether to accept or reject it. That is the difference between a roadmap that reads like a feature list and one that is clearly traceable to a strategy.

### {26} Key takeaways

- Product leaders who fill their sprints with sand and pebbles wonder why the rocks never ship. Strategic bets that do not get resourced are not bets. They are intentions.
- No prioritization framework is perfect, but product leaders without one default to the loudest voice in the room. Impact vs Effort, RICE, and WSJF each serve a different moment: the skill is knowing which to reach for and when.
- Product leaders who cannot defend a hard no have not made a strategic decision. Every prioritization call is only as strong as the rationale behind what was left out.
- A roadmap is a public statement of what a product leader is betting on and in what order. If it does not make clear what is *not* being built, it is not a roadmap.

### {27} Keep practicing

Two optional exercises to deepen what you built today:

1. **Stress-test your real backlog.** Take your current product backlog at work and run it through the Impact vs Effort matrix. Identify your three Rocks for next quarter and write a one-sentence rationale for your two hardest nos.
2. **Road-test your roadmap.** Share your Now/Next/Later roadmap with a colleague or stakeholder who has not seen your strategy. Ask them if they can tell what problem you are solving this quarter without any context from you. Use their answer to refine your framing.

Next up, Module 3: *Lead and Develop High-Performing Teams.* Discover how to navigate the shift from doing the work to leading the people who do it, and how to design team structures and accountability systems that build ownership without micromanagement.
