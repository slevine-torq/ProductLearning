# Module 5 — Slides — Digest

**Source:** standalone self-contained HTML slide-deck artifact (`Module 5, Master Product Financials & Strategic Bets · Product Leadership`). Same reusable scroll-snap presentation shell as Modules 1–4. QA marker: `scroll-snap-type: y mandatory`, zero `__next_f`.

## What it is
The full instructor-facing slide deck for Module 5 ("Master Product Financials & Strategic Bets"). 29 sections. Same pattern as M2–M4: no AI prompt embedded directly — both lab exercises link to `Module 5 - Lab Guide.html`, which is expected to carry the "CFO stress-test prompt" referenced here.

## Structure (29 sections, in order)
1. **Hero** ("Module 5") — title, subtitle, 4 waypoints.
2. **Class Expectations** — same 6 norms as M1–M4.
3. **Presentation Reminder** (new section type, not seen in M1–M4) — heads-up that the *next* class (Module 6) has an optional showcase: instructor will ask for 2–3 volunteers in Slack, first-come-first-served, to present final deliverables for live feedback.
4. **Syllabus** — 6-module grid, Module 5 marked "You are here."
5. **Agenda** — 4 waypoints.
6. **Section break 01** — "Why Your Stakes Have Changed."
7. **Q&A · Speaking the Language of the Business** (5 min) — same discussion prompt and landing point as the Notes.
8. **Traditional Product Metrics** — AARRR rendered as a visual narrowing funnel (Acquisition 100% width → Referral 48% width), each row labeled with its metric and a short framing phrase (e.g. Retention: "Building a lasting habit").
9. **Where Your Decisions Count** — P&L rendered as 5 stacked full-width rows (Revenue/COGS/Gross Margin/OpEx/Operating Income), same content as Notes reformatted visually.
10. **What Gets Lost** — **full 3-row table** (new, more concrete than Notes): "What the PM said" / "What finance heard" / "The bridge that works" — see full text below, includes concrete bridge sentences with placeholder dollar figures not present in the Notes' prose version.
11. **Section break 02** — "Your Financial Toolkit for Decision-Making."
12. **Unit Economics** — 2-card CAC/LTV comparison, each with a "Key signal" callout (CAC: most figures undercount, ask what's included; LTV: retention is the most dangerous compounding assumption).
13. **LTV:CAC and Payback** — 3-card ratio-threshold visual: **<1:1 "Burning runway"**, **3:1 "Sustainable"**, **>5:1 "Room to accelerate"** — more explicit banding than the Notes' prose (Notes only said "below 3:1... at 3:1... above 5:1").
14. **How to Read a Model You Did Not Build** — same 4-step checklist as Notes, each with its "ask" phrased as a green tip callout.
15. **Every Decision Moves a Number** — 2-card Forward/Backward comparison, each with 2 example chains (Forward: onboarding friction→retention→LTV→CAC payback; also a new second example — automating a manual CS step → cost-to-serve drops → contribution margin improves. Backward: NRR-drop diagnosis from Notes; also a new second example — gross margin compressing → a feature/tier costs more to serve than modeled).
16. **Lab · Make a Funding Decision** (15 min, individual) — 4 flow-steps matching Notes' exercise 1. Links to `Module 5 - Lab Guide.html` (Exercise 1).
17. **Break** (5 min).
18. **Cameras On** reminder.
19. **Section break 03** — "Build and Defend the Bet."
20. **What Your Bet Actually Costs** — 4-card grid (ceiling size/people beyond engineering/opportunity cost/time to value), condensed from Notes.
21. **Kill Criteria** — **3-tier card grid with full exact example sentences** (new, more concrete than Notes' abbreviated versions): Too vague ("We will reassess if the numbers are not where we need them to be by Q3"), Specific but incomplete ("If 90-day retention has not reached 28% by end of Q3, we will discuss next steps"), Complete and actionable ("If 90-day retention has not reached 28% by end of Q3, we stop funding the initiative and reallocate the Q4 headcount before it is committed").
22. **The Business Case** — 4-card grid (strategic bet/ranked assumptions/expected return/kill criteria), each paired with a **fuller Cursor worked example** than the Notes gives (see below — the Notes only summarized this; the Slides give the actual example text for all 4 parts).
23. **Section break 04** — "Hands-On Lab: Write Your Business Case One-Pager."
24. **Lab · Write Your Business Case One-Pager** (25 min, individual) — 3 flow-steps (write 4 sections → CFO stress-test → save/commit). Links to `Module 5 - Lab Guide.html` (Exercise 2).
25. **Quick Debrief** (2 min) — "While building your case, what judgment call became clearer once you had to put a number behind it?"
26. **Key Takeaways** — 4 cards, identical to Notes.
27. **Extra Practice & Next Session** — 2 optional exercises (matches Notes) + next-session preview (Module 6) + deliverable-check reminder (add Business Case to repo).
28. **Resources & Templates** — 2-card grid: Module 5 Lab Guide, On-Demand Content. Same lighter pattern as M2–M4 (no dedicated interactive builder).
29. **Q&A** — closing slide.

## Embedded exercise data / worked examples

**"What Gets Lost" full table** (new, fuller than Notes):
| What the PM said | What finance heard | The bridge that works |
|---|---|---|
| "This will improve retention" | "That is a hypothesis. What does it return and when?" | "A 5-point lift in retention returns roughly $X in ARR per cohort, because activation drives early retention, and early retention extends LTV." |
| "Our DAU is up 15%" | "DAU is an input. What does it do to a number we report externally?" | "A 15% DAU lift correlates with a 3 to 4 point improvement in 90-day retention, worth roughly $X in incremental LTV per cohort." |
| "We will be live in Q2" | "You are committing budget with no financial signal until Q4. What is time-to-value?" | "You'll see your first signal in activation by week 6, revenue impact by Q3, and full payback within [X] months of launch." |

**Cursor business-case worked example** (fuller than Notes' summary):
- Strategic bet: "Developers who experience a measurable productivity gain in week one convert their team to a paid plan within 90 days. Individual adoption is the acquisition channel."
- Assumptions, ranked: "Conversion holds above 4%, average team size is 8 seats, month-12 retention stays above 70%. The first assumption carries the most weight."
- Expected return: "Each converting developer represents $5,760 in lifetime team revenue. The business needs 500 converting developers per quarter to hit its growth target." (matches Notes' numbers, now with full sentence context)
- Kill criteria: "If individual-to-team conversion has not reached 4% by end of Q2, the go-to-market approach changes before Q3 headcount is committed."

**Kill criteria 3-tier examples** (full text, new) — see Structure §21 above.

## Reusable AI prompts
**None embedded in this deck** — same as M2–M4 pattern. References "the CFO stress-test prompt from the guide," pointing to `Module 5 - Lab Guide.html`, not yet captured (priority — this is where the pre-built Fable/Meridian business cases for Exercise 1 should also live).

## Key interaction logic
Identical engine to M1–M4 Slides — no new JS behavior. Module-specific visual components (AARRR narrowing funnel, P&L stacked rows, LTV:CAC threshold cards, kill-criteria traffic-light cards) are pure CSS/static content.

## Torq-rebuild notes
- **The AARRR-funnel-to-P&L-bridge structure (metrics you track → P&L lines finance reads → phrase-to-financial-sentence table) is an unusually clean three-step teaching arc** for translating product fluency into financial fluency — strong candidate to lift close to verbatim for a Torq financial-literacy module, generic beyond this course's scenarios.
- The kill-criteria vague/incomplete/complete 3-tier pattern (with exact sentence examples) mirrors the M3 team-charter bad-vs-good pattern and the M4 BLUF buried-vs-bottom-line pattern — this course consistently teaches "specificity" via matched before/after example sentences. Worth recognizing as a reusable pedagogical template across any Torq module needing to teach precise language.
- The Cursor business-case example is the fullest, most concrete worked example in the course so far (real numbers: $5,760 LTV, 500/quarter, 4% conversion threshold) — good candidate for a canonical "business case" reference example if Torq wants one outside the Fable/Meridian scenarios.
- Confirms (5th time) the Lab-Guide-carries-the-prompts pattern.
