# Module 5 — Master Product Financials & Strategic Bets · Product Leadership

Full deck extraction. **29 sections.** Source: instructor HTML deck (scroll-snap), supplied 2026-08-27.

> **Torq relevance: highest for Tier 3.** `Torq Consultant Learning Path.md` §4 calls this *"the highest-leverage module in this entire folder for Tier 3 — it teaches answering 'what does this return, and when' in financial terms and holding that number under questioning, the exact moment a Torq engagement gets extended or doesn't."*

---

## Section 1 — Hero: Module 5

**Master Product Financials & Strategic Bets.** Build financial acumen to guide strategic product decisions. Apply financial modeling to evaluate opportunities and secure stakeholder confidence in your bet.

Four waypoints: **Why your stakes have changed** (product metrics → P&L lines) · **Your financial toolkit** (CAC, LTV, payback, LTV:CAC; reading a model you didn't build) · **Build and defend the bet** (true cost, kill criteria, one-page business case) · **Two hands-on exercises**.

---

## Sections 2–5 — Class Expectations · Presentation Reminder · Syllabus · Agenda · LOGISTICS

---

## Section 6 — SECTION BREAK 01: Why Your Stakes Have Changed

> You already make sound product judgments. What changes at this level is that **someone builds a budget, a headcount plan, or a board commitment around your number** — so how you reason about it financially becomes part of how the whole bet is judged.

---

## Section 7 — Q&A: Speaking the language of the business · 5 min

*Think of a time someone asked you to justify a product decision in financial terms. How did you respond?*

**Where it lands:** The skills behind a strong financial answer are mostly ones you already have. Today adds **the language to express that judgment in financial terms and the confidence to hold it under questioning.**

---

## Section 8 — Traditional product metrics: AARRR · FRAMEWORK

The metrics you already track — *they show where in the user journey your product needs to evolve, but they are rarely the ones that tell finance whether it is worth funding.*

| Stage | What it is | Metric |
|---|---|---|
| **Acquisition** | Getting users in the door | Signup rate |
| **Activation** | Delivering the "Aha!" moment | Key action & time to first key action |
| **Retention** | Building a lasting habit | % of returning DAUs / MAUs |
| **Revenue** | Converting user value into business sustainability | Accrued revenue from signups or ad spend |
| **Referral** | Turning users into a low-cost growth engine | NPS |

---

## Section 9 — Where your decisions count: the P&L · FRAMEWORK

**Finance is reading a different document.** Knowing which lines your decisions move is what lets you follow a financial conversation wherever it goes.

| Line | What your decisions do to it |
|---|---|
| **Revenue** | Where pricing decisions and retention rates show up first. Churn, tier changes, and new monetization all move this line before anything else. |
| **COGS** | Where your variable delivery costs live. Every infrastructure, support, and build-vs-buy call authors this line, even when nobody names it. |
| **Gross Margin** | Is the product economically sound at the unit level, before team costs? Speaking to it directionally signals real financial fluency. |
| **Operating Expenses** | Where resourcing decisions land, directly connected to revenue. **A headcount ask that can't be tied to a revenue outcome is a hard conversation.** |
| **Operating Income** | Where the strategic bet is ultimately judged: is the product worth what it costs to run? A good business case is always arguing about this line. |

---

## Section 10 — What gets lost in translation

*You are trained to speak in product outcomes; finance is trained to listen for financial ones.*

| What the PM said | What finance heard | The bridge that works |
|---|---|---|
| "This will improve retention" | "That is a hypothesis. What does it return and when?" | "A 5-point lift in retention returns roughly $X in ARR per cohort, because activation drives early retention, and early retention extends LTV." |
| "Our DAU is up 15%" | "DAU is an input. What does it do to a number we report externally?" | "A 15% DAU lift correlates with a 3–4 point improvement in 90-day retention, worth roughly $X in incremental LTV per cohort." |
| "We will be live in Q2" | "You are committing budget with no financial signal until Q4. What is time-to-value?" | "You'll see your first signal in activation by week 6, revenue impact by Q3, and full payback within [X] months of launch." |

---

## Section 11 — SECTION BREAK 02: Your Financial Toolkit

> You do not need to build the models. You need to know what the numbers mean, which move each decision calls for, and where the weakest assumption is hiding.

---

## Section 12 — Unit economics · FRAMEWORK

| | **CAC — Customer Acquisition Cost** | **LTV — Lifetime Value** |
|---|---|---|
| What it is | The fully loaded cost of acquiring one customer. Sets the **floor** on what you need to earn from each customer. | Total revenue a customer generates over their relationship with the product. Sets the **ceiling** on what you can spend to acquire and keep them. |
| **Key signal** | Most CAC figures **undercount** because they leave out sales overhead, onboarding, and support. **Always ask what is included before you accept it.** | Retention is the most dangerous assumption underneath LTV, **because it compounds.** Ask for the churn rate before you accept an LTV. |

---

## Section 13 — LTV : CAC and the payback period · FRAMEWORK

*You never run the calculation yourself — what matters is knowing what the signal means and what move it calls for.*

| Ratio | Reading | What it means |
|---|---|---|
| **< 1:1** | Burning runway | The model cannot sustain the investment it is receiving |
| **3:1** | Sustainable | Three dollars back for every one spent acquiring a customer |
| **> 5:1** | Room to accelerate | Not just a green light — **permission to push harder, or you leave runway on the table** |

**Payback period** — how long before the investment in a customer pays for itself. The longer it runs, the more committed the business is before you know if it worked.
**Contribution margin** — what the product actually earns per customer before fixed costs.

---

## Section 14 — How to read a model you did not build · FRAMEWORK

> **You will rarely build the financial model yourself. You will almost always be asked to approve one. Knowing what to ask is more powerful than knowing how to calculate.**

1. **Which assumption is doing the most work?** Every model has one number that, if wrong, changes the conclusion. 💡 *Ask which single assumption, if it turned out to be 30% off, would most change the outcome.*
2. **What does the retention curve look like?** Optimistic retention is the most common way a model flatters a bet. 💡 *Ask to see the churn rate and what happens to LTV if it is 10 points higher.*
3. **What is the payback period at realistic CAC?** Models built during enthusiasm underestimate acquisition cost at scale. 💡 *Ask what payback looks like if acquisition costs run 20% higher than projected.*
4. **What are the kill criteria?** A model without kill criteria has not been stress-tested against failure. 💡 *Ask what specific number would tell the team to stop before spending a quarter finding out.*

---

## Section 15 — Every decision moves a number

Ask in every product review: **"Which P&L line does this discussion concern, and does it move in the right direction?"**

**Forward — the direction you know:**
- Reduce onboarding friction → 30-day retention improves → LTV extends → CAC payback shortens
- Automate a manual CS step → cost-to-serve drops → contribution margin per customer improves

**Backward — the harder task:**
- *"Our NRR dropped below 100%"* → NRR sits on Revenue; name both candidates (expansion slowed **or** churn rose) before you know which
- Gross margin compressing → a feature or tier costs more to serve than modeled. CAC payback lengthening → go into activation or early retention

> **The product leaders who hold their ground can move in both directions on command.**

---

## Section 16 — LAB (Exercise 1) · 15 min · Make a funding decision

Evaluate a **pre-built** business case and decide whether you'd fund it.

1. **Read your case**
2. **Find the weak point** — the assumption doing the most work, and the structural problem hiding in the numbers
3. **Judge the kill criterion** — is it complete, or does it hand the decision back to the room?
4. **Give your verdict** — name one condition you'd attach, then decide: fund / fund with one condition / do not fund

---

## Sections 17–18 — Break · Cameras On

---

## Section 19 — SECTION BREAK 03: Build and Defend the Bet

> Every bet costs more than its budget line. A business case names the full cost, expresses the return in terms finance can evaluate, and **sets the number that ends the bet before the work begins.**

---

## Section 20 — What your bet actually costs

*None of these appear automatically in a financial model. They surface in the room, raised by the people whose time and priorities your bet affects. Naming them yourself is what makes a case complete.*

- **How high is the ceiling?** A bet can clear its costs and still not be worth the room's attention if the total market underneath it is too small to move the business.
- **People beyond engineering** — every bet that ships creates net-new demand on implementation, customer success, and support.
- **Opportunity cost** — every team staffed to this bet is a team not staffed to something else, and that something else usually has someone's KPI attached.
- **Time to value** — the longer the window before the bet returns, the more the business is exposed before any signal arrives.

---

## Section 21 — Kill criteria · FRAMEWORK

The specific, **pre-agreed** number that tells the team to stop before they've spent a quarter finding out the bet is wrong.

| Quality | Example | Why |
|---|---|---|
| 🌑 **Too vague** | *"We will reassess if the numbers are not where we need them to be by Q3."* | Leaves room for negotiation at exactly the moment the team is most invested in continuing |
| 🌓 **Specific but incomplete** | *"If 90-day retention has not reached 28% by end of Q3, we will discuss next steps."* | Names the number, but hands the financial decision back to the room when it is hardest to make clearly |
| 🌕 **Complete and actionable** | *"If 90-day retention has not reached 28% by end of Q3, **we stop funding the initiative and reallocate the Q4 headcount before it is committed**."* | Metric, threshold, timeline, **and financial consequence**, all agreed before anyone builds against the bet |

---

## Section 22 — The one-page business case · REAL PUBLIC CASE: Cursor

Four components, each illustrated with Cursor:

| Component | What it is | Cursor example |
|---|---|---|
| **The strategic bet** | The specific *mechanism* connecting the product decision to a financial outcome — not a summary of the strategy | Developers who experience a measurable productivity gain in week one convert their team to a paid plan within 90 days. **Individual adoption is the acquisition channel.** |
| **The assumptions, ranked** | Every number rests on assumptions. The discipline is ranking them: which single one changes the conclusion if it moves? | Conversion holds above 4%, average team size is 8 seats, month-12 retention stays above 70%. **The first assumption carries the most weight.** |
| **The expected return** | Expressed **two ways**, because two audiences read it: a per-unit figure for finance and a volume target for the board | Each converting developer represents $5,760 in lifetime team revenue. The business needs 500 converting developers per quarter to hit its growth target. |
| **The kill criteria** | Metric, number, deadline, and consequence set before the work begins | If individual-to-team conversion has not reached 4% by end of Q2, the go-to-market approach changes before Q3 headcount is committed. |

---

## Sections 23–25 — LAB (Exercise 2) · 25 min · Write your business case one-pager

Take a strategic Rock from M2, write a one-page business case, stress-test with AI.

1. **Write the four sections** — the bet, assumptions ranked by weight, expected return, kill criterion
2. **CFO stress-test** — run through the prompt and refine, especially the kill criterion
3. **Save it** — commit to your project repo

**Goal:** a kill criterion specific enough that **someone outside your team could enforce it without asking you what it means.**

*Note: a vague bet produces vague assumptions, so the more specific the Rock you choose, the easier everything after it becomes.*

**Debrief:** *While building your case, what judgment call became clearer once you had to put a number behind it?*

---

## Section 26 — Key takeaways: Module 5 in four lines

1. **Product leaders are trained to speak in product outcomes, while finance listens for financial ones.** Closing that gap is a matter of translation, and product leaders who learn it hold their ground in the room.
2. **Unit economics like CAC, LTV, and payback are not finance's numbers to own alone.** Product leaders who can read and challenge a model someone else built bring judgment finance cannot supply.
3. **A bet costs more than its engineering estimate, and a business case names the full cost alongside the number that ends it.** Setting that kill criterion early protects your own credibility.
4. **A product decision and a financial signal are two directions of the same line.** Leaders who can trace forward from a decision and diagnose backward from a number stay fluent in either direction.

---

## Sections 27–29 — Extra practice · Resources · Q&A

**Extra practice:** (1) *Translate your own numbers* — pick a metric you report regularly and write the financial sentence it actually supports. If you can't find the connection, that's the gap worth bringing to your next finance conversation. (2) *Write the kill criterion you're missing* for a bet your team is currently running; compare it to what's actually being tracked.

**Next — Module 6: Leverage AI Tools for Leadership Execution.**

---

## Extraction notes

### Why this is the Tier 3 module

`_TORQ-COMPANY-CONTEXT.md` says a Torq consultant is judged on client-visible deliverables and that engagements get extended or don't. This module is the machinery for that conversation:

- **§14 how to read a model you did not build** is *precisely* the consultant's position — you're approving a client's numbers, not building them. The four questions transfer verbatim.
- **§21 kill criteria** maps directly onto scoping a phased SOW: metric, threshold, timeline, **and consequence**, agreed before work starts.
- **§10 the translation table** is the readout skill — turning a product outcome into a number a client executive can act on.
- **§20 what your bet actually costs** — opportunity cost and people-beyond-engineering are exactly what a client under-scopes, and naming them is a credibility move.

### Other notes

- **Industry-standard**: AARRR (Dave McClure), CAC/LTV/payback/contribution margin (standard SaaS unit economics), P&L structure (standard accounting).
- **Real public case:** **Cursor** — the whole §22 business case is worked through it. Individual-adoption-as-acquisition-channel is a documented PLG motion. Keep it; it's factual and it's the teaching.
- **Source-original:** the pre-built Case A / Case B for the lab, and the retention/$X figures in §10, which are illustrative placeholders. Replace with the learner's engagement.
- **Structural/logistics:** sections 2, 3, 4, 5, 17, 18, 28, 29.
