# Module 1 — Craft an Advanced Product Strategy · Product Leadership

Full deck extraction. **32 sections**, matching `Module 1 - Slides (digest).md`. Source: instructor HTML deck (scroll-snap, `scroll-snap-type: y mandatory`), supplied 2026-08-27.

Section tags in the source: `tag-lecture`, `tag-framework`, `tag-case`, `tag-exercise`, `tag-activity`, `tag-break`, `tag-complete`, `tag-debrief`.

---

## Section 1 — Hero: Module 1

**Craft an Advanced Product Strategy.** Set the vision that guides your company's product direction. Craft a winning strategy and translate it into a prioritized plan your teams can execute. The leadership operating system every other module builds on.

Four waypoints:
1. **What is product strategy?** — The leap from IC to leader: vision vs. strategy vs. roadmap, and three tests for a defensible vision.
2. **Playing to Win: your strategy spine** — One cascade of five choices that must cohere, with Rumelt's kernel and JTBD nested inside it.
3. **From strategy to execution** — OKRs as the bridge, deciding under ambiguity, and a six-question strategy self-diagnostic.
4. **Two hands-on sprints** — Write a one-page strategy early, then stress-test the full OKR cascade with AI as your devil's advocate.

Format: individual — build one strategy, submit one repo.

---

## Section 2 — Class Expectations · LOGISTICS

Six cohort norms: Cameras On · Arrive On Time · Engage to Network · Tool Readiness (accounts active before class; no stopping for setup) · Use Slack · Class Momentum (individual/deep-dive questions move to after-class support).

---

## Section 3 — Introductions · LOGISTICS

Instructor shares background, career path, milestones. Learners post in `#cohort-channel`: name/location/role, course goals, fun fact + LinkedIn.

---

## Section 4 — Final Project: a board-ready product strategy

Across six modules, take one scenario (**Fable** or **Meridian**) from product strategy to a complete, defensible business case. Artifacts built during in-class labs. **Individual project.**

- **Goal** — Develop and deliver your product strategy and business plan via key artifacts, then share your key insights.
- **Deliverable** — Leadership portfolio in a GitHub repo, your own copy, submitted as instructed to qualify for certification.
- **Timing** — *[Optional]* demo in Module 6, 5 minutes per learner. Not mandatory for certification, but everyone submits their repo.

Five deliverables:
1. Product Strategy One-Pager & OKRs — **Module 1 focus**
2. Outcome Roadmap & Trade-off Memo
3. Team Charter — What We Own + How We Decide
4. Financial Model — Business Case + Kill Criteria
5. Individual Insights into the Build Process

> **Don't panic, it's staged.** Module 1 only needs the Product Strategy One-Pager & OKRs. Each later module fills in the next artifact.

---

## Section 5 — Set Up Your Repo · STRUCTURAL

Repo structure, created once from a template and filled per module:

| Path | Contents |
|---|---|
| `README.md` | Project dashboard: the five deliverables at a glance |
| `01-strategy/` | **M1** — Playing to Win one-pager, hard no & OKRs |
| `02-roadmap/` | M2 — outcome roadmap & trade-off memo |
| `03-team-charter/` | M3 — What We Own & How We Decide |
| `04-financial-model/` | M5 — business case & kill criteria |
| `05-insights/` | M6 — individual insights into the build process |

Three steps: use the template → name it `product-leadership-final` → commit per lab.

---

## Section 6 — Syllabus · STRUCTURAL

| Module | Title | Covers |
|---|---|---|
| **1** | Craft an Advanced Product Strategy | Set the vision, craft a winning strategy with Playing to Win, translate into a prioritized plan |
| 2 | Prioritization & Roadmapping for Product Leaders | Prioritize across competing demands with WSJF and cost of delay; roadmaps that reflect strategy |
| 3 | Lead and Develop High-Performing Teams | Shift from IC to player-coach. Habits, structures, accountability |
| 4 | Drive Alignment and Executive Influence | Frame narratives, lead high-stakes conversations, secure buy-in |
| 5 | Master Product Financials & Strategic Bets | Financial acumen. Model opportunities, secure stakeholder confidence |
| 6 | Leverage AI Tools for Leadership Execution | Integrate AI into execution workflow; lead teams that build with AI |

---

## Section 7 — Agenda · STRUCTURAL

01 What is Product Strategy? · 02 Playing to Win · 03 Sprint 1: Write Your Strategy · 04 From Strategy to Execution → Lab

---

## Section 8 — SECTION BREAK 01: What is Product Strategy?

> The work that got you here — shipping features well — is not the work that makes you a product leader. Strategy is a deliberate set of choices about where to play, how to win, and what to say no to.

---

## Section 9 — Q&A: The leap to leadership · ACTIVITY

**Discussion question:** *What did you see a product leader doing that made you realize the job was fundamentally different from being a great PM?*

**Where the discussion lands:** What makes the leadership role fundamentally different is not seniority or scope. It is a complete change in what the job is for. Product leaders are no longer responsible for the quality of their own output. They are responsible for the quality of the direction others execute against. When that direction is clear, teams move fast and make good decisions without the leader in every room.

---

## Section 10 — What actually changes when you lead

Four shifts. None are about shipping faster — they are about owning the *why*.

| Shift | From | To |
|---|---|---|
| **Bets** | Shipping features | Making bets on where to play and how to win |
| **Direction** | Executing on someone else's direction | Setting the direction others execute against |
| **Insights** | Being handed analysis | Deciding what questions are worth asking in the first place |
| **Scope** | Owning one product area | Making strategic decisions across multiple teams and workstreams |

---

## Section 11 — The strategy hierarchy: vision → strategy → roadmap → execution

Each layer only makes sense in the context of the one above it. Vision is stable and aspirational; execution is concrete and changes weekly. Most teams blur these and pay for it in thrash.

| Layer | Definition |
|---|---|
| **Vision** | Aspirational and stable. The *why we exist*: who we serve, what problem, why now. |
| **Strategy** | Informed principles guiding development. How we deliver value, how we differentiate, how we make money. Adaptable as we learn. |
| **Roadmap** | Specific products, features, milestones, timelines. Who builds what, by when. |
| **Execution** | Build, launch, iterate. Collect data to inform changes in roadmap and strategy. |

**The handoff:** Vision is the input; from here we build strategy.

---

## Section 12 — Three tests for a defensible vision · FRAMEWORK

Pressure-test the vision before building strategy on it. If it cannot pass all three, it is not ready.

| Test | Ask | Why it matters | Real case |
|---|---|---|---|
| **Why now?** *(market timing)* | What shifted in the last 2–3 years that makes this the right moment? | A good vision is tethered to a real shift in the world. If the vision would have been equally valid five years ago, it is a description, not a vision. | In 2013 Zoom recognized async video was growing, but the world wasn't ready. By 2020 remote work became the default overnight and the timing bet paid off. |
| **Why us?** *(competitive position)* | What do we understand about this market that others haven't seen yet? | Vision must reflect an honest read of where you have, or can build, a durable right to win. It connects ambition to genuine asymmetry. | Figma didn't set out to build a better design tool. It bet that design could become a team sport — something only a browser-native product could credibly claim. |
| **Why us, now?** *(org readiness)* | What would need to be true inside the org to make this happen? | The strongest visions are ones the team can actually begin executing on. Tension between ambition and readiness is healthy. A complete disconnect is fatal. | A 12-person team declaring they will be the global standard has ambition but no anchor. A 12-person team committing to own one city by end of year has a vision. |

**Micro-beat (2 min):** Apply one test to a product you work on now.

---

## Section 13 — SECTION BREAK 02: Playing to Win — Your Strategy Spine

> From here, everything runs on one framework. Playing to Win is the output you produce; the six-step process is how you produce it; Rumelt's kernel and JTBD are lenses nested inside it. One spine, end to end.

---

## Section 14 — The Playing to Win cascade · PRIMARY FRAMEWORK

Five questions that cascade and cohere top to bottom. The moment one contradicts another, you know your strategy has a hole.

| Question | Decision it forces | Example — HealthTrack |
|---|---|---|
| **Winning Aspiration** | Define what winning looks like in the customer's terms, not the internal metrics you want to see. | *The app recreational athletes open on race day because it tells them the truth.* |
| **Where to Play** | Get specific about the segment, geography, channel, and use case you serve — and which you will not. The no's carry as much weight as the yes's. | *Recreational runners and cyclists, 28–45, US & UK only. Not elite athletes. Not gym-based fitness.* |
| **How to Win** | Name your differentiator: the advantage that is durable and hard for competitors to replicate. | *Heart-rate, pace, and sleep in one training signal. Six years of data competitors cannot buy.* |
| **Capabilities Required** | Name what you must be world-class at to execute your How to Win. Be honest about build, buy, or partner. | *Predictive readiness modeling. Garmin and Whoop partnerships. Race-specific content team.* |
| **Management Systems** | Define the metrics and rituals that keep your choices alive quarter to quarter. | *Weekly retention by cohort. Monthly readiness-model accuracy. Quarterly win/loss review.* |

**Keep in mind:** Capabilities that sound impressive but don't connect back to *how you win* are just noise. Every row must reinforce the one above it.

---

## Section 15 — The process you run: how you actually produce the cascade

Playing to Win is the **output you produce**. These six steps are the **process you run** — the same spine viewed as a workflow.

1. **Set your product vision** — A single statement telling every team what you are optimizing for and what you are not. If it cannot settle a disagreement, it is not specific enough.
2. **Generate insights** — Synthesize competitive signals, internal capability gaps, and market shifts into a point of view only your team can hold. Raw data is not an insight.
3. **Identify challenges** — Name the real obstacles honestly, including uncomfortable ones. A diagnosis that softens the truth produces a strategy that solves the wrong problem.
4. **Define approaches** — Make deliberate bets on where to play and how to win. The hardest part is not choosing what to do, but committing to what you will *not* do.
5. **Build accountability** — Cascade strategy into OKRs with clear owners, kill criteria, and review cadences. Strategy without accountability is a document, not a direction.
6. **Share early, iterate** — Share across the org before it feels ready; treat pushback as an input. A strategy nobody has challenged has not been tested.

---

## Section 16 — Strategy autopsy: Figma vs. Adobe XD · REAL PUBLIC CASE

Read both through **Rumelt's kernel**: *diagnosis → guiding policy → coherent actions*. Same market, same information. The gap in outcomes comes down to the quality of the strategy.

**✅ Figma — coherent**

| | |
|---|---|
| **Diagnosis** | Design was file-based and siloed. Designers, PMs, and engineers worked in different tools with broken handoffs. Real work was lost in Slack threads and email. |
| **Guiding Policy** | Make design a team sport. Browser-first, multiplayer by default. Not a better Sketch: a fundamentally different model. |
| **Coherent Actions** | Launched in the browser with no install friction. Prototyping and dev handoff in the same file. Priced per editor, not per seat, so adoption incentives aligned. |
| **Verdict** | Every choice reinforced the others. The constraint of no desktop app became the strategy's lever, forcing a collaboration-first architecture competitors could not easily copy. |

**❌ Adobe XD — incoherent**

| | |
|---|---|
| **Diagnosis** | Adobe had a distribution advantage no startup could match. It never asked what would convert that advantage into a product worth staying for. |
| **Guiding Policy** | Defend the Creative Cloud ecosystem. Integration with existing Adobe tools was the lever, not winning on product merit. |
| **Coherent Actions** | Added cloud storage, co-editing, and prototyping to close feature gaps. Each addressed a specific deficit but none reinforced a single defining bet. |
| **Verdict** | Adobe had the assets to win but never defined what winning looked like on its own terms. **XD was discontinued in 2023.** Resources without a guiding policy is motion, not progress. |

**The lesson:** Rumelt's kernel lives *inside* Playing to Win — **diagnosis** sharpens Where to Play, **guiding policy** is How to Win, **coherent actions** are the capabilities and systems that make it real.

---

## Section 17 — Framework toolkit: two lenses that sharpen the cascade

| Lens | Sharpens | Use when | Key question | Real case |
|---|---|---|---|---|
| **Jobs-to-be-Done** | Winning Aspiration | Your team debates features or personas but cannot agree what the customer actually needs | What progress is the customer trying to make — functionally, socially, emotionally? | Spotify realized users were not using the app to *own* music. They were using it to have the right song for every moment of their day. |
| **Platform vs. Product** | How to Win | Facing a decision about how broadly to scope your architecture, data, or ecosystem | Are we building a product that wins, or a platform that makes others win with us? | Salesforce launched as a CRM. Opening it as a platform turned it into an ecosystem competitors could not replicate. |

---

## Section 18 — AI as your strategic co-pilot

AI does not make the strategic call — you do. It removes the ceiling on how much ground you can cover.

- **Competitive monitoring** — Track competitor moves across newsletters, social profiles, and product updates. Turn a manual, inconsistent process into a continuous signal that feeds directly into strategy.
- **Synthesizing information** — You will never be across everything. Monitor signals across markets, competitors, and customers; surface what matters most. The best product leaders know the right details across the most ground.
- **Stress-testing your thinking** — Use AI as a devil's advocate. Ask it to poke holes from both sides, write the brief your CFO would write, or argue your biggest competitor's case. The strategic judgment is yours; AI helps you find where it is soft.

---

## Section 19 — Choose your scenario · FINAL PROJECT

Commitment moment. **No switching after today.**

| | **Scenario 1 · B2C · Fable** | **Scenario 2 · B2B · Meridian** |
|---|---|---|
| **Name** | The Growth Wall | The Field Gap |
| **Focus** | Retention + engagement | Adoption + expansion |
| **Situation** | A mental wellness app that grew fast during a period of heightened anxiety. Then its core value prop worked *too* well: users resolved their acute need and quietly stopped opening the app. Define what the product becomes for users after the acute phase, without losing the simplicity and trust that got them there. | A construction project management platform built for enterprise complexity. But the people closest to the actual work — field superintendents and foremen on job sites — never adopted it; they run their days on phone cameras and group texts. Make the platform indispensable to field teams without stripping the enterprise depth your largest customers pay for. |
| **Your competitor** | The user deciding they don't need Fable at all | A foreman's phone camera and a group text |

Learners may substitute a real, instructor-approved problem from their own organization.

---

## Section 20 — LAB (Sprint 1 of 2) · 20 min · Run your first strategic sprint

Write a one-page strategy for your scenario, then name your hard no. Goal: specific enough that a skeptical board member could not poke a hole in it.

1. **Commit** — Choose your scenario. Don't spend more than two minutes.
2. **Complete the cascade** — Fill all five Playing to Win sections. Short, specific answers.
3. **Name your hard no** — One valuable thing you're deliberately choosing NOT to do, and why it protects your focus.
4. **Pressure-test** — Run the AI devil's-advocate prompt, then decide what you'd change and what you'd defend.

**Why before the break:** You write the strategy while the cascade is fresh. After the break we turn this one-pager into an OKR cascade and stress-test the *whole* picture in Sprint 2. Use your own product thinking first — AI is a thinking partner, not the author.

---

## Section 21 — Break · 5 min · LOGISTICS

## Section 22 — Cameras On reminder · LOGISTICS

---

## Section 23 — SECTION BREAK 03: From Strategy to Execution

> A strategy nobody can act on is just a document. OKRs are the bridge from your cascade to the work teams ship, and the discipline that turns ambiguity into a defensible bet.

---

## Section 24 — OKRs bridge strategy and execution · FRAMEWORK

Flow: **Strategy → OKRs → Roadmap → Execution.** Strategy says where to play and how to win. OKRs say what we'll achieve and how we'll measure progress.

| Bad KR — a delivery milestone | Good KR — a measurable result |
|---|---|
| *"Ship readiness model by Q2"* | *"Race-week retention 34% → 62%"* |
| Measures activity, not impact. You can hit it and still fail the user. | Measures a real change in behavior: the outcome the strategy promised. |

**HealthTrack worked example.** Objective: *Become the app serious recreational athletes trust to make their race-week decisions.* KR1 — 7-day race-week retention 34% → 62%. KR2 — readiness-model opens/user 1.2 → 4.5. KR3 — race-week NPS 31 → 58.

---

## Section 25 — How to make decisions without data

Product leaders are paid to decide, not to wait for certainty that never comes. Four steps, each with its trap.

| Step | What to do | ⚠ Trap |
|---|---|---|
| **1. Name what you know** | List only facts not in dispute, separating data from interpretation. | Treating assumptions as facts because they feel obvious. |
| **2. Name what you don't know** | Map unknowns into two buckets: knowable with research, and unknowns you have to live with. | Letting structural unknowns paralyze you when knowable ones can be resolved. |
| **3. Check reversibility** | Two-way door (reversible, low cost to undo) or one-way door (hard or expensive to reverse)? | Applying one-way-door rigor to two-way-door decisions. |
| **4. Make a provisional bet & set a trigger** | State your best call given current information and name what would cause you to revisit it. | Deciding without naming what would change your mind. |

---

## Section 26 — Your strategy self-diagnostic in six questions

A strong strategy answers yes to all six, with specifics, not adjectives.

1. **Is it clear?** Can a new PM read it and know exactly what you will and won't do?
2. **Does it name the real challenge?** Is the diagnosis specific enough to be uncomfortable?
3. **Does it make a hard bet?** Does it say no to something valuable? If not, it's not a strategy.
4. **Can it be cascaded?** Can your team translate it directly into their own OKRs?
5. **Do the actions cohere?** Do all initiatives reinforce each other, or can you remove one without affecting the rest?
6. **Is it being committed to?** Are resources actually moving toward it? Strategy without resources is theater.

---

## Section 27 — SECTION BREAK 04: Hands-On Lab — Stress-Test Your Execution Plan

> Sprint 2. Turn the strategy you wrote before the break into a tight OKR cascade, then let AI try to find the gap between your strategy and your execution plan.

---

## Section 28 — LAB (Sprint 2 of 2) · 15 min · Stress-test your execution plan

1. **Write three OKRs** — One Objective + three Key Results flowing from your strategy. Each KR is a measurable outcome.
2. **AI pressure-test** — Paste your cascade, hard no, and OKRs into the prompt. Run it in any LLM.
3. **Change or defend** — Which challenge is most valid? Decide what you'd change and what you'd defend.

**The AI pressure-test prompt (verbatim from the deck):**

```
You are a skeptical Chief Strategy Officer reviewing a product strategy draft. Your job is
to find where it is soft, vague, or likely to fail, not to validate it.

Here is the strategy:
[PASTE YOUR CASCADE, HARD NO, AND OKRs HERE]

Please:
1. Identify the single biggest assumption I am making that could be wrong.
2. Ask me the one question a board member would ask that I cannot yet answer.
3. Tell me if any of my KRs are actually outputs disguised as outcomes.
4. Point out one thing I said I would not do and make the case for reconsidering.
5. In one sentence: is this a strategy or a wish list? Why?

If your response feels too gentle, add: "Now be harsher: what would a competitor's
strategy team say?"
```

---

## Section 29 — Key takeaways: Module 1 in four lines

1. **Product strategy is not a roadmap or a vision statement.** The most effective product leaders treat it as a deliberate set of choices about where to play, how to win, and what to say no to.
2. **Good strategy starts with an honest diagnosis of the real challenge, not a description of market conditions.** Product leaders who soften the diagnosis to protect feelings will design a strategy that solves the wrong problem.
3. **Playing to Win gives product leaders a cascade of five choices that have to cohere from top to bottom.** Those who can answer all five with specificity, and show how they connect, have a strategy worth committing to.
4. **OKRs are the bridge between strategic intent and the work teams ship every day.** Product leaders who build that cascade clearly give their teams the one thing that drives execution: knowing exactly what they are optimizing for and why it matters.

---

## Section 30 — Extra practice & next session

1. **Run the sprint for the other scenario** — Complete the full cascade, one hard no, and three OKRs for the scenario you did not choose. Compare side by side; decide which you'd feel more confident defending to a board.
2. **Build a strategy for your own product** — Use the same five questions for a real initiative you're working on.

**Next — Module 2: Prioritization & Roadmapping for Product Leaders.** Translate strategy into an outcome-driven roadmap teams can execute against; use WSJF and cost of delay to make, defend, and communicate prioritization decisions across teams.

---

## Section 31 — Resources & Templates · STRUCTURAL

Final Project Brief & Deliverables · Project Repo Template · Module 1 Lab Guide · Strategy Sprint Builder (interactive one-pager with cascade, hard no, OKRs, AI pressure-test prompt, Markdown export) · On-Demand Content.

---

## Section 32 — Q&A · LOGISTICS

---

## Extraction notes

- **Named frameworks, all industry-standard** (tag Origin accordingly, credit originators): Playing to Win (Lafley & Martin), Rumelt's kernel (Richard Rumelt), Jobs-to-be-Done (Christensen), OKRs (Doerr/Grove), two-way vs. one-way doors (Bezos/Amazon).
- **Real public cases present and required content:** Zoom (2013 → 2020 timing), Figma (browser-native, per-editor pricing), Adobe XD (**discontinued 2023**), Spotify (JTBD), Salesforce (product → platform).
- **Source-original framing to replace:** "HealthTrack" is the deck's invented worked example running through the cascade and the OKR section. Per `_LD-BUILD-METHOD.md`, replace with the learner's own engagement rather than reusing or inventing a substitute.
- **Fable / Meridian** are the course's fictional final-project scenarios — the same class of asset as Product School's StreamLine/RouteLogic, which `_BUILD-NOTES.md` rules out. Torq learners use their own live engagement instead.
- **Structural/logistics sections** (2, 3, 5, 6, 7, 21, 22, 31, 32) carry no teaching content.
