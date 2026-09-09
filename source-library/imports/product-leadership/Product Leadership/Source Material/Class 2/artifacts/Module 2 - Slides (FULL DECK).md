# Module 2 — Prioritization & Roadmapping for Product Leaders · Product Leadership

Full deck extraction. **31 sections.** Source: instructor HTML deck (scroll-snap), supplied 2026-08-27.

---

## Section 1 — Hero: Module 2

**Prioritization & Roadmapping for Product Leaders.** Go beyond a single product and learn to prioritize across competing demands. Build roadmaps that reflect strategy and drive long-term growth.

Four waypoints:
1. **How product leaders prioritize** — The Rocks/Pebbles/Sand jar, why most sprints fill with sand, and the four buckets of focus.
2. **Choose your prioritization approach** — Impact vs Effort to align fast; RICE to quantify; WSJF to account for the cost of delay.
3. **Building an effective product roadmap** — Five roadmap types, one source of truth. Now/Next/Later replaces date promises with honest confidence levels.
4. **Two hands-on sprints** — Audit and prioritize a 14-item backlog, then build an outcome roadmap with AI until every Now item traces to an OKR.

Format: individual — one backlog, one roadmap, one memo.

---

## Sections 2–4 — Class Expectations · Syllabus · Agenda · LOGISTICS / STRUCTURAL

Same six cohort norms as M1. Syllabus identical to M1's (Module 2 marked "You are here").

Agenda: 01 How Product Leaders Prioritize Effectively · 02 Choose Your Prioritization Approach · 03 Building an Effective Product Roadmap · 04 Hands-On Lab: Create Your Product Roadmap

---

## Section 5 — SECTION BREAK 01: How Product Leaders Prioritize Effectively

> The gap between a clear strategy and a team that knows what to build next is almost never a communication problem. It is a prioritization problem.

---

## Section 6 — Q&A: Making the Prioritization Call · ACTIVITY · 10 min

**Discussion question:** *Think of a time when you and your team couldn't agree on what to build first. What did you use to make the call?*

**Where the discussion lands:** Without a shared system for making decisions, every team defaults to its own logic — and you end up with alignment on paper and fragmentation in execution. A prioritization system is what turns a strategy into a direction everyone can act on independently.

---

## Section 7 — Rocks / Pebbles / Sand · FRAMEWORK

Most teams fill their sprints with sand and wonder why the rocks never ship. **Put the rocks in first.**

| Tier | What it is | Examples |
|---|---|---|
| 🪨 **Rocks** | Strategic bets that move your north star. If these don't ship, your strategy fails. | New core capability · Platform foundation · Architecture bet |
| 🪨 **Pebbles** | Customer-requested improvements and delight features. Build trust and fill gaps. | Key feature request · Onboarding improvement · Integration |
| 🏖️ **Sand** | Maintenance, debt repayment, polish. Necessary — but fills every space if you let it. | Bug fixes · Tech debt · UI polish · Performance |

---

## Section 8 — Three products that got their rocks right · REAL PUBLIC CASES

| Company | The Rock | Why it mattered |
|---|---|---|
| **Stripe** | API reliability & developer docs | Made developers trust them enough to build on them before any UI existed — which allowed them to win against incumbents with 10× the headcount. |
| **Notion** | Block-based editor architecture | Made databases, templates, and collaboration technically possible — every feature built on a foundation that could actually support it. |
| **Linear** | Performance & architectural speed | Made speed the product's core differentiator, letting enterprise teams adopt it without sacrificing the simplicity that made it work. |

---

## Section 9 — SECTION BREAK 02: Choose Your Prioritization Approach

> Impact vs Effort gets you aligned fast. RICE gets you precise. WSJF adds the dimension both miss: what it costs you to wait.

---

## Section 10 — Impact vs. Effort Matrix · FRAMEWORK 1 of 3

**The key teaching point:** the most valuable thing that happens is *not* the final matrix — it's the debate that surfaces when two PMs score the same feature differently. That disagreement reveals misaligned assumptions about customer value and technical complexity.

Axes: Business impact (low → high) × Effort/complexity (low → high)

| | Low effort | High effort |
|---|---|---|
| **High impact** | **Do Now** | **Plan Carefully** |
| **Low impact** | **Fill Gaps** | **Avoid** |

---

## Section 11 — Asana: a five-year item just became a two-week experiment · REAL PUBLIC CASE

Impact vs Effort only works if the **Effort axis is current.** Agent-shaped migrations can move a "Plan Carefully" rock into "Do Now" without the strategy changing.

| | |
|---|---|
| **The old score** | Frontend test migration off Enzyme. Staffed since 2022. Still ~five years from done at the old pace. High impact, very high effort — classic Plan Carefully, forever. |
| **What changed** | Four coding agents, one directory each, overnight, a five-sentence prompt. Humans reviewed twice a day and merged every PR. About two weeks. About **$12K** in model and infra. |
| **The leadership move** | Re-score Effort on any item that is partitionable and has a testable definition of done. Keep doubling Effort on messy work. Don't keep last year's estimate on work an agent can fan out over a weekend. |

The $12K vs ~$6M gap is Asana's napkin math. The question isn't "can AI do five years of anything?" It's **"which sand item have we stopped re-scoring?"**

---

## Section 12 — RICE: when gut feeling isn't enough · FRAMEWORK 2 of 3

| Letter | Meaning |
|---|---|
| **R — Reach** | How many users will this affect in a given quarter? Ground the estimate in real data. |
| **I — Impact** | How significantly will this move the needle for each individual user? |
| **C — Confidence** | How certain are you in your Reach and Impact estimates? Score between 50% and 100%. |
| **E — Effort** | How many person-months will this require across the full team? |

**RICE Score = (Reach × Impact × Confidence) ÷ Effort.** A higher score means more total impact per unit of work.

---

## Section 13 — WSJF: Weighted Shortest Job First · FRAMEWORK 3 of 3

Four inputs:
- **Time Criticality** — how much value is lost the longer you wait to start
- **Feature Value** — the direct business value delivered by completing the work
- **Risk Reduction** — future risks avoided or future work unblocked by doing this now
- **Job Size** — the estimated duration required to complete the work

**WSJF Score = (Time Criticality + Value + Risk Reduction) ÷ Job Size**

**Best for:** SAFe environments, or situations where delay has a measurable cost.

---

## Section 14 — Weighted Scorecards: when you need cross-team alignment · FRAMEWORK

**Score = Σ (criterion × weight).** Negative weight on Effort means higher effort reduces the score.

| Feature | Customer Value (30%) | Strategy Align (25%) | AARRR Impact (25%) | Effort (−20%) | Score |
|---|---|---|---|---|---|
| Offline mode | 10 | 8 | 9 | 6 | **82** |
| AI RFI drafting | 7 | 9 | 7 | 5 | **77** |
| Daily log v2 | 9 | 6 | 8 | 8 | **71** |
| Executive dashboard | 5 | 7 | 4 | 3 | **57** |
| UI refresh | 4 | 3 | 3 | 2 | **34** |

---

## Section 15 — Additional frameworks reference card

| Framework | Best for | Watch out |
|---|---|---|
| **MoSCoW** | Sprint planning, MVP scoping | Teams overload Must Have when strategy is unclear |
| **Now/Next/Later** | Stakeholder communication, quarterly planning | Becomes a wish list if not tied to OKRs |
| **Feature ROI** | Financial justification, enterprise sales support | Requires reliable revenue estimates — rare in early stage |
| **Buy a Feature** | Stakeholder alignment workshops | Customers choose comfort over strategy |
| **Affinity Grouping** | Discovery synthesis, opportunity sizing | Time intensive for feature-level decisions |

---

## Section 16 — LAB (Sprint 1 of 2) · 20 min · Audit and Prioritize Your Backlog

Apply Impact vs Effort to a 14-item backlog. Identify three Rocks for the quarter and a Hard No list, every decision traceable to the M1 strategy and OKRs.

1. **Review the backlog** — all 14 items for your scenario
2. **Score each item** — use the Impact vs Effort matrix
3. **Identify 3 Rocks** — each must connect to an M1 OKR
4. **Write your Hard No list** — three items explicitly deprioritized, one-sentence rationale each. **At least one should feel uncomfortable.**

---

## Section 17 — Show and Swap: Priorities and Hard Nos · BREAKOUT · 10 min

Validate whether prioritization decisions hold up *without context*. Swap Rocks and Hard Nos with a peer; **cold read** silently for 1 minute with no verbal context; then discuss:

- Do the Rock selections feel traceable to a clear strategy, or do they read like a feature list?
- Pick one Hard No and make the case for why it should actually be a Rock. Your partner must defend the trade-off.

---

## Sections 18–19 — Break (5 min) · Cameras On · LOGISTICS

---

## Section 20 — SECTION BREAK 03: Building an Effective Product Roadmap

> You have your Rocks. Now put that thinking into a roadmap your organisation can actually execute against. Five formats, one source of truth. The skill is knowing which view to pull up for which audience.

---

## Section 21 — Five roadmap types · FRAMEWORK

| Type | Best when your audience is… | Because |
|---|---|---|
| **Outcome-based** | CPO or board | They need the strategic bets and outcomes, not the features behind them |
| **Now / Next / Later** | Your team and stakeholders | Communicates confidence level and priority without date commitments you can't stand behind |
| **Timeline** | Engineering and ops | They need release sequencing, dependency management, and what's coming when |
| **Opportunity-based** | Product and design | Frames around jobs to be done and discovery opportunities rather than predetermined solutions |
| **OKR-linked** | Anyone needing the connection | Shows the direct link between work being done and the outcomes strategy committed to |

---

## Section 22 — Now / Next / Later · PRIMARY FORMAT FOR THE LAB

Replaces date precision with honest communication about confidence.

| Column | Status | Rules |
|---|---|---|
| **Now** | Committed | **Max 3 items.** Each framed as an outcome-based bet linked to an OKR. *"We bet [action] will [outcome] for [who]."* In Now = you're staking credibility on it. No features, only strategic bets. |
| **Next** | Sequenced | **Max 5 items.** Each with a one-line rationale for why it comes after Now. Validated thinking, not locked. Sequence reflects dependencies. |
| **Later** | Bets, not commitments | Remaining strategic items that are right but not yet resourceable. Labeled as bets, not delivery promises. Honest about confidence level. |

**If your Now column reads like a feature list, it's not done yet.**

---

## Section 23 — ClearTrack: Q3 outcome-based roadmap · WORKED EXAMPLE

**Objective:** Become the tool teams trust to run their work, not just track it.
**KR1:** Project overrun rate 42%→18% · **KR2:** Weekly active teams 61%→80% · **KR3:** Time-to-first-plan <10 min

**NOW**
- Teams complete sprint planning in under 30 minutes *(→ KR1)* — reduces coordination overhead that causes plans to slip before work starts
- Teams get an AI-generated project status summary without pulling a report *(→ KR2)* — removes the manual overhead that stops teams checking in regularly
- New teams ship their first project plan without contacting support *(→ KR3)* — removes onboarding friction that causes early churn

**NEXT**
- Teams resolve blockers without escalating to their manager — only valuable once teams run consistent plans
- Stakeholders get progress updates without asking — extends the same signal to external stakeholders
- PMs alerted to delivery risk before it becomes a miss — needs reliable project data first

**LATER**
- Portfolio leads get a single view across all team workstreams — requires cross-team adoption to be meaningful
- Teams receive proactive suggestions to unblock stalled projects — requires sufficient project history
- External partners contribute without a full account — depends on core collaboration model being proven

**The format in practice:** an outcome-based roadmap starts from the OKRs and works backward to the work.

---

## Section 24 — Roadmap pitfalls and what to do instead

Every failure has the same root cause: **the roadmap stopped being a strategic tool and became a communication artifact.**

| Failure | What it looks like | ✅ Fix |
|---|---|---|
| **Hidden Roadmap** | Lives in a document nobody can find or read independently | Make it self-service at stakeholder tier with one source of truth |
| **Stale Artifact** | Updated once a quarter, out of date by week three | Assign a clear owner and a review cadence tied to sprint cycles, not planning seasons |
| **Over-Promised** | Dates committed before confidence is high enough | Only add dates when you'd stake your credibility on them |
| **Feature Factory** | A list of features with no outcome attached | Require every item to be written as a bet with a linked OKR before it gets resourced |

---

## Sections 25–26 — LAB (Sprint 2 of 2) · 20 min · Create Your Product Roadmap

Use AI to generate a Now/Next/Later roadmap from strategy, OKRs, and three Rocks; refine until every Now item reads as a strategic bet traceable to an OKR.

1. **Open an LLM** and use the prompt in the lab guide
2. **Feed in your inputs** — M1 strategy, OKRs, three Rocks
3. **Review and reframe** — every Now item must be an outcome-based bet, not a feature description
4. **Refine and save** — at least two rounds of prompting

**Goal:** a roadmap clear enough that someone who has never seen your strategy can tell what problem you're solving this quarter.

---

## Section 27 — Quick debrief · 2 min

*Was there an item the AI flagged in your roadmap that you hadn't thought about — and was it valid?*

---

## Section 28 — Key takeaways: Module 2 in four lines

1. **Product leaders who fill their sprints with sand and pebbles wonder why the rocks never ship.** Strategic bets that don't get resourced are not bets. They are intentions.
2. **Product leaders who can't defend a hard no have not made a strategic decision.** Every prioritization call is only as strong as the rationale behind what was left out.
3. **A roadmap is a public statement of what a product leader is betting on and in what order.** If it doesn't make clear what is *not* being built, it is not a roadmap.
4. **No prioritization framework is perfect, but product leaders without one default to the loudest voice in the room.** Impact vs Effort, RICE, and WSJF each serve a different moment; the skill is knowing which to reach for and when.

---

## Sections 29–31 — Extra practice · Resources · Q&A

**Extra practice:** (1) Stress-test your real backlog through Impact vs Effort — three Rocks for next quarter, one-sentence rationale for your two hardest nos. (2) Road-test your roadmap — share with someone who hasn't seen your strategy; can they tell what problem you're solving this quarter without context?

**Next — Module 3: Lead and Develop High-Performing Teams.**

---

## Extraction notes

- **Industry-standard frameworks** (credit originators): RICE (Intercom), WSJF (SAFe/Reinertsen, cost of delay), MoSCoW (Clegg), Impact vs Effort 2×2, Now/Next/Later (Janna Bastow / ProdPad), MoSCoW, AARRR (Dave McClure), Rocks/Pebbles/Sand (Covey's jar metaphor).
- **Real public cases — required content:** Stripe (API/docs), Notion (block architecture), Linear (performance), **Asana's Enzyme test migration** (four coding agents, ~2 weeks, ~$12K vs ~$6M / five years). The Asana case is unusually valuable — it is direct evidence that AI agents re-score the Effort axis, and it connects to the agentic-PM gap flagged elsewhere in this project.
- **Source-original framings to replace:** "ClearTrack" is the deck's invented worked example. Fable/Meridian scenarios and the 14-item backlog are course fixtures — Torq learners use their own engagement backlog instead.
- **Structural/logistics:** sections 2, 3, 4, 18, 19, 30, 31.
