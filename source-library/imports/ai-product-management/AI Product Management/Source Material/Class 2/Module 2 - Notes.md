# Module 2: Validate AI Opportunities and Technical Feasibility (Shareable Notes)

A faithful expansion of the Module 2 slides. Read in sequence. Individual format throughout.

By the end of this module you will commit two artifacts to your `juno-pm/` fork:

- `02-strategy/decision-matrix.md`, scored Build / Buy / Fine-tune call (The decision, options table, recommendation)
- `02-strategy/strategy-one-pager.md`, the six-section one-page justification

---

## 1. The traditional assumption M2 breaks

Traditional PM ranks features by ICE / RICE / WSJF and ships. AI breaks this:

- The same feature can be a *fake-good* (great demo, dies in production) or a *boring killer* (looks dull, prints money).
- The right autonomy level is a strategic decision, not an engineering one.
- Bets fail more often than they succeed, your job is to kill bad bets fast and cheap.

**You don't have feature lists. You have bets.**

---

## 2. Where does AI actually fit?

### Fake-Good vs. Boring Killer

| Fake-Good | Boring Killer |
|---|---|
| Demos brilliantly | Looks dull on a slide |
| No clear value frame | Ladders to a real value frame |
| Loses to a platform feature in 6 months | Survives a 3x cost stress test |
| "Generate a summary" | "Cut on-call escalations by 40%" |

A feature is a *boring killer* only if it passes both filters:

1. Does it ladder to a real value frame?
2. Would it survive a 3x cost stress test?

### The Four AI Value Propositions

Every shippable AI bet ladders to one of these:

- **Cost reduction**: replace human labour, lower OPEX per unit of work.
- **Revenue generation**: new product surfaces, new willingness to pay.
- **Risk mitigation**: catch what humans miss (compliance, fraud, escalation).
- **User delight**: anticipate intent, reduce friction, surprise positively.

If your AI bet doesn't ladder cleanly to one of these, it's a fake-good.

### The Three-Layer Model

PMs own three layers. Most fail at the Mechanic layer.

| Layer | Question | For Juno PM |
|---|---|---|
| **Strategy** | Which bet? Why now? What value frame? | Risk mitigation, RocketShip is in Signal Collapse |
| **Mechanic** | What does the product actually do? | Synthesize + draft + prioritize, inside Slack/Notion/Jira |
| **Implementation** | How is it built? | System prompt + RAG over RocketShip corpus + bounded agent |

---

## 3. Balancing AI Bets with Autonomy

### Jobs × Risk × Autonomy

The strategy lens for choosing how independently an AI feature can act.

- **Job**: what task is the AI doing?
- **Risk**: what's the cost of a wrong output? (reputation, regulation, revenue)
- **Autonomy**: how independently can it act?

As autonomy increases, the cost of an error skyrockets. **High-risk jobs cap at Draft.**

### The Autonomy Levels

| Level | Behaviour | Where Juno's pillars live |
|---|---|---|
| **Suggest** | AI proposes; human decides | Prioritise Risks (early, until trust is built) |
| **Draft** | AI drafts v0.1; human edits + approves | Draft Specs (medium-risk, must be PM-edited) |
| **Execute** | AI acts; human reviews after | Synthesize Insights (low-risk, high-volume) |
| **Operate** | AI runs long horizons | Not appropriate for Juno's risk profile |

For Juno: each pillar lives at a different autonomy level. That's healthy.

### Individual Exercise (Was breakout group, now solo): Map Juno's Strategic Bet (25 min)

This is the first M2 deliverable.

1. Open `M2 - Three-Layer Model Mapper.html`.
2. Fill Layer 1, Layer 2, Layer 3, then The call: the decision, scores for Build / Buy / API / Fine-tune, and the recommendation.
3. Click **Copy as markdown** and paste over `02-strategy/decision-matrix.md`. The file should be: The decision, the options table, and the recommendation.
4. **Self-review checklist** (on the tool):
   - Layer 1 names a concrete pain point (not "poor decisions").
   - Layer 2 picks the minimum capability that solves Layer 1.
   - Autonomy is justified, not aspirational.
   - The decision names what you are deciding, and why now.
   - Build, Buy / API, and Fine-tune are scored 1 to 5 on Cost, Speed, Control, Moat, and Risk.
   - The recommendation names one option and a business reason.
5. **Async share:** commit, push, post the link in `#ai-pm-cohort`.

---

## 4. Making Product Decisions Based on Technical Needs

### The AI Solution Decision Matrix

Pressure-test every proposed AI bet on five axes, scored 1 to 5.

| Axis | Question | Score 1 (red flag) | Score 5 (boring killer) |
|---|---|---|---|
| **Value clarity** | Does it ladder to a value frame? | Vague | Quantified outcome ($$ saved / leads gained / risk cut) |
| **Technical feasibility** | Can current models actually do this well enough? | Novel research required | Standard pattern, off-the-shelf |
| **Data availability** | Do you have / can you get the corpus? | No corpus | Clean labelled corpus exists |
| **Risk tolerance** | Can you tolerate wrong outputs? | Regulatory / reputational | Internal, reversible |
| **Strategic fit** | Does it earn company oxygen? | Pet project | Directly serves a top-3 priority |

**Score <3 average = don't ship. Score 4+ on all five = boring killer.**

> The 5-axis tool is a pressure-test, not a second repo file. Do not paste it over `02-strategy/decision-matrix.md`. That file is the scored Build / Buy / Fine-tune call from Lab 1.

### Responsible AI as Strategic Guardrails

Risk is a strategic lever, not a checklist. Four buckets:

- **Compliance**: regulatory (GDPR, EU AI Act, sector-specific).
- **Safety**: content, prompt injection, misuse.
- **Reliability**: uptime, fallback paths, graceful degradation.
- **Reputation**: public failure scenarios + response playbook.

Each guardrail you commit to is a sales asset for enterprise buyers, not just a cost.

---

## 5. The AI Strategy One-Pager

Seven blocks. One page. The second M2 deliverable.

1. **The bet**: one sentence, with the value frame it ladders to.
2. **The user / job**: who and what.
3. **The mechanic**: what the product actually does.
4. **The autonomy**: Suggest / Draft / Execute / Operate.
5. **The technical approach**: prompt / RAG / fine-tune / agent.
6. **The risk + guardrail**: what can go wrong + how you block it.
7. **The success metric**: how you'll know it works (measurable in 30 days).

### Individual Exercise (Was breakout group, now solo): Build Juno's AI Strategy One-Pager (30 min)

1. Open `M2 - AI Strategy One-Pager Builder.html`.
2. Fill in the 6 sections for Juno PM.
3. Click **Copy as markdown** and paste over `02-strategy/strategy-one-pager.md`. The live preview is the file. Keep the six numbered headings. No ChatGPT or Claude step.
4. **Self-review checklist** (on the tool):
   - Section 1 names a single bad decision Juno is preventing.
   - Section 2 has a metric measurable in 30 days.
   - Section 3 names one autonomy level avoided, and why.
   - Section 4 names one shortcut not taken, and why.
   - Section 5 has one scary risk (not a list) plus a specific mitigation.
   - Section 6 has at least two specific OUT items.
5. **Async share:** commit, push, post the link in `#ai-pm-cohort` with a 1-paragraph reflection on the trade-off you made in section 4 or 5.

---

## Key takeaways

1. Most AI features are fake-good. Use the four value frames to filter.
2. Strategy / Mechanic / Implementation, own all three.
3. Autonomy is a strategic decision. Job × Risk → Autonomy.
4. The AI Solution Decision Matrix is your reusable rubric for any future bet.
5. The AI Strategy One-Pager fits on a page and survives a board challenge.

---

## Before Module 3 (~20 min)

- Skim **`Module 3 - Pre-Read.md`** (context engineering + RAG primer).
- Identify what corpus Juno would need to do its job for RocketShip. (Slack history? Notion docs? Jira metadata? Support tickets? Strategy one-pagers?)
- Post your `02-strategy/` links in `#ai-pm-cohort` if you haven't.

---

## Learning objectives (mapped to outcomes)

| LO | What you produced |
|---|---|
| Evaluate AI opportunities within a product ecosystem | The bet block of `strategy-one-pager.md` + four-value-frame filter |
| Analyze the relationship between risk and model independence | The Risk column and recommendation in `decision-matrix.md` |
| Formulate product decisions using the AI Solution Decision Matrix | The scored Build / Buy / Fine-tune table in `decision-matrix.md` |
| Synthesize complex technical and strategic data into a concise technical one-page document | `strategy-one-pager.md` |
