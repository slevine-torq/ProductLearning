# Module 2 Slides (Shareable) — Digest

**What it is:** Full Module 2 slide deck ("Validate AI Opportunities and Technical Feasibility"), scroll-snap format, 29 sections. Same chrome as M1's deck (progress bar, nav dots, skip/sorter, deck-sync BroadcastChannel).

**QA:** `scroll-snap-type: y mandatory` ✅. Zero `__next_f` ✅. Genuine capture.

**⚠️ Important — this deck uses different framework labels than [Module 2 - Notes.md](Module%202%20-%20Notes.md) for several of the same concepts.** Flagged inline below and summarized at the end. Treat the Notes doc as the "official" written version (it's what students study from) and this deck as the live-session framing — but reconcile before any Torq rebuild rather than propagating both silently.

---

## Structure (29 sections)

1. **Hero** — title, 4 waypoints (Where AI fits / Autonomy / Technical decisions / Strategy One-Pager). Closing line: finish M2 with `decision-matrix.md` + `strategy-one-pager.md`.
2. **Class Expectations** — same 6 ground-rule cards as M1.
3. **Recall · Repo so far** — 2-column recap: M1 committed files (done) vs. M2 files (today).
4. **Final-Project Progress** — full 9-row tracker across all 6 modules with status badges (done/today/later), listing every deliverable filename by module. Useful as a canonical deliverable-filename reference (matches Final Project Brief).
5. **AI Product Management Syllabus** — same 6 module cards as M1's deck, M2 card now marked "You are here."
6. **Agenda** — 4 items matching the waypoints.
7. **Section break** — Section 01: Where Does AI Actually Fit In Your Product?
8. **Fake Good vs Boring Killer** — two-column comparison with different example phrasing than Notes ("Generic chatbots on every screen that hallucinate or loop" vs. "Auto-reconcile support tickets to CRM data"). Same concept as Notes' Fake-Good/Boring-Killer table.
9. **Solo Reflection: Fake Good or Boring Killer?** (5 min) — 2 reflection questions, verbatim below.
10. **Four Ways AI Creates Value** — ⚠️ **Different framing than Notes.** This slide's 4 categories are **Automation, Augmentation, Insights, Personalization**, each with two real-company examples (Zapier/Zendesk AI, GitHub Copilot/Glean, Gong/Tableau Pulse, Spotify AI DJ/Netflix). Notes' "Four AI Value Propositions" are **Cost, Revenue, Risk, Delight** — a different, more business-outcome-oriented cut of the same "which value frame" idea. Both appear to be legitimate but distinct framings taught in the same module.
11. **The Three-Layer Model** — ⚠️ **Different layer names than Notes.** Slide layers: **User Workflow → Technical AI Solution → Business Outcome** (with a Juno-specific worked example per layer: PM synthesizing interviews → multimodal RAG → cut discovery cycle 5 days→4 hours). Notes' layers: **Strategy → Mechanic → Implementation**. Conceptually parallel (top-down bet framing → what it does → how it's built) but the labels don't map 1:1 — worth reconciling.
12. **Section break** — Section 02: Balancing AI Bets With Autonomy.
13. **Choosing Your Level of Autonomy** — ⚠️ **Only 3 levels here: Assist, Copilot, Agent** (with icons, example use cases, and a "when to use" rule each). Notes' Autonomy Levels has **4: Suggest, Draft, Execute, Operate**. This is the most significant discrepancy in the deck — different scale entirely, not just renamed. Flag prominently for Scott.
14. **Strategy Lens: Jobs × Risk × Autonomy** — a 2×2 grid (Low/High Risk × Low/High Impact) with one Juno-relevant example per quadrant and an autonomy recommendation per quadrant (High-Impact/Low-Risk→Agent; High-Impact/High-Risk→stay at Assist; Low-Impact/Low-Risk→Copilot; Low-Impact/High-Risk→don't build). This visual 2×2 doesn't appear in the Notes doc at all — worth capturing as a standalone tool.
15. **Mapping Juno's Strategic Bet** (lab, 25 min) — the M2 Lab 1, live walkthrough of the Three-Layer Model Mapper tool with the actual Juno seeds for each layer (verbatim below). Feeds `decision-matrix.md`.
16. **Strategic Scorecard** — ⚠️ **A second, different 4-axis scoring tool**: Data Readiness, UX Complexity, Risk & Governance Load, Potential Impact (1-5 sliders). This is distinct from the Notes' 5-axis "AI Solution Decision Matrix" (Value clarity, Technical feasibility, Data availability, Risk tolerance, Strategic fit). Both are pressure-test scorecards but with different axes — neither maps to the other cleanly. Sweet spot stated as "High Impact + High Data Readiness + Manageable UX."
17. **Break** — coffee filler slide.
18. **Cameras On** — reminder graphic, non-content.
19. **Section break** — Section 03: Making Product Decisions Based on Technical Needs.
20. **Responsible AI: Strategic Guardrails** — ⚠️ **4 pillars here: Human Oversight, Transparency, Bias Awareness, Privacy** — each paired with a **real-world incident case study** (verbatim below). Notes' 4 Responsible-AI buckets are **Compliance, Safety, Reliability, Reputation**. Different categorization of the same governance theme; this slide's version is grounded in concrete, high-value incident examples worth preserving.
21. **Run Your Bets Through the Matrix** — 4 quick questions (Approach, Candidate, Strategy, Safety) for a lightweight technical pressure-test, each with a Juno-style example answer.
22. **Section break** — Section 04: AI Strategy One-Pager.
23. **AI Strategy One-Pager** (definition slide) — 3 reasons the one-pager matters (neutralize skepticism, prioritize scarce engineering resources, verify strategy under scrutiny).
24. **One-Pager Anatomy** — the 6 sections (Problem & Workflow, Target Metrics, Autonomy Level, Data & Model Approach, Risks & Mitigations, V1 Scope), each illustrated with a **Grammarly worked example** (verbatim below). Matches Notes' 7-block "AI Strategy One-Pager" concept but compresses to 6 named sections here (Notes lists 7 blocks including a separate "user/job" block that isn't broken out as its own section here — minor structural difference, not a contradiction).
25. **Build Juno's AI Strategy One-Pager** (lab, 30 min) — the M2 Lab 2, live walkthrough of the One-Pager Builder tool with Juno seeds per section (verbatim below) and a mention of an embedded **Airbnb "Smart Dispute Mediator" worked example** inside the tool itself (not yet captured — flag if that tool gets pasted).
26. **Takeaways** — 4 items.
27. **Extra Practice** — 2 optional exercises + M3 preview blurb.
28. **Resources & Templates** — 4 cards: Three-Layer Model Mapper, AI Strategy One-Pager Builder, Final Project Brief, `ai-product-management-template`.
29. **Q&A** — closer.

---

## Verbatim content

**Solo Reflection questions (slide 9):**
> Q1 (Fake Good): In your own experience managing or using AI-powered products, where has a flashy AI feature flopped, and why?
> Q2 (Boring Killer): Where has a quiet automation become indispensable in your daily workflow, the thing you'd riot if it disappeared?

**Three-Layer Model Juno example (slide 11):**
- Layer 1 (User Workflow): "A PM needs to synthesise 10 user interviews into a strategy doc."
- Layer 2 (Technical AI Solution): "Multimodal RAG, processes interview transcripts and screenshots."
- Layer 3 (Business Outcome): "Reduce discovery cycle time from 5 days to 4 hours per feature."

**Mapping Juno's Strategic Bet — the actual Three-Layer Model Mapper seeds (slide 15):**
- Layer 1 (User Workflow) seed: "Roadmap discussions are driven by the loudest voice in Slack, not by customer evidence. The PM can't defend reasoning when leadership pushes back."
- Layer 2 (Technical AI Solution + Autonomy) seed: "RAG over the RocketShip corpus + bounded Agentic orchestration. Autonomy: Copilot: drafts a ranked backlog with reasoning; PM approves before publish."
- Layer 3 (Business Outcome) seed: "Reduce average weekly roadmap prioritization time from 2 hours to 30 minutes; cut the rate of decisions reversed within 1 week to under 10%."

**Responsible AI real-world incident case studies (slide 20) — high-value, reusable teaching material:**
- **Human Oversight** — Belgium, 2023: "A man tragically took his life after following advice from an unmonitored chatbot during a conversation about climate anxiety."
- **Transparency** — CNET: "Published AI-generated finance articles with factual errors. Brand reputation hit once the lack of disclosure was revealed."
- **Bias Awareness** — Amazon: "AI recruitment tool penalised resumes containing the word 'women's', favouring male-coded language. Tool scrapped."
- **Privacy** — Samsung: "Engineers leaked trade secrets by pasting confidential source code into a public LLM. Data became part of the global model."

**One-Pager Anatomy — Grammarly worked example (slide 24), all 6 sections:**
1. Problem & Workflow: "Professional writing is slow and prone to tone errors that damage credibility."
2. Target Metrics: "Improved 'Time-to-Publish' and 'Message Clarity Score'."
3. Autonomy Level: "Copilot, suggests rewrites, requires human approval to apply."
4. Data & Model Approach: "Hybrid, general LLMs grounded with company-specific style guides via RAG."
5. Risks & Mitigations: "Risk: hallucinated facts. Mitigation: scope to grammar/tone, not to factual content."
6. V1 Scope: "In: tone & clarity edits. Out: drafting legal contracts or autonomous sending."

**Build Juno's AI Strategy One-Pager — the actual One-Pager Builder seeds (slide 25):**
1. Problem & Workflow: "Prevent opinion-driven roadmap decisions where evidence is buried in 200+ Slack threads."
2. Target Metrics: "Cycle time 2h→30min. Reversal rate < 10%."
3. Autonomy Level: "Copilot. Avoiding Agent: can't move headcount autonomously."
4. Data & Model: "Ground (RAG). Not generic LLM, would hallucinate priorities."
5. Risks & Mitigations: "Risk: AI weights latest squeaky-wheel signal. Mitigation: 7-day signal window."
6. V1 Scope: "In: backlog. Out: hiring decisions, customer-facing comms."

---

## Interaction logic
Same boilerplate as M1's deck: scroll-snap + IntersectionObserver progress bar, nav dots, keyboard nav, `localStorage`-backed skip/sorter, and the deck-sync `BroadcastChannel` presenter mechanic. No new interaction patterns in this deck.

---

## Framework discrepancies vs. Module 2 - Notes.md (summary — resolve before Torq rebuild)

| Concept | This deck (Slides) | Notes.md | 
|---|---|---|
| Value framing | Automation / Augmentation / Insights / Personalization (with real-company examples) | Four AI Value Propositions: Cost / Revenue / Risk / Delight |
| Three-Layer Model labels | User Workflow / Technical AI Solution / Business Outcome | Strategy / Mechanic / Implementation |
| Autonomy scale | 3 levels: Assist / Copilot / Agent | 4 levels: Suggest / Draft / Execute / Operate |
| Bet-scoring tool | "Strategic Scorecard": Data Readiness, UX Complexity, Risk & Governance Load, Potential Impact | "AI Solution Decision Matrix": Value clarity, Technical feasibility, Data availability, Risk tolerance, Strategic fit |
| Responsible AI buckets | Human Oversight, Transparency, Bias Awareness, Privacy (with incident case studies) | Compliance, Safety, Reliability, Reputation |

None of these are wrong exactly — they read like two passes of content development that didn't get fully reconciled (deck vs. written notes). For the Torq rebuild, pick one canonical version per concept rather than keeping both.

---

## Torq-rebuild notes

- **The real-world incident case studies** (Belgium chatbot, CNET, Amazon, Samsung) are the standout reusable asset in this deck — concrete, memorable, and directly transferable to a Torq Responsible-AI section regardless of which 4-bucket taxonomy is used.
- **The Jobs × Risk × Autonomy 2×2 grid** (slide 14) is a clean, visual decision-support tool not present in the Notes doc — worth adopting as-is; it's more actionable than a table.
- **The Fake-Good vs. Boring-Killer framing** (carried over from Notes) continues to be one of the strongest reusable concepts in the whole course — the punchline "if you can't map your AI feature to concrete leverage in a real workflow, it probably shouldn't be built" is a good pull-quote.
- **The Grammarly and Airbnb worked examples** embedded directly in the teaching slides (rather than only in the lab tools) is a good pattern — pairing an abstract framework with a recognizable real-product example immediately every time. Worth replicating in Torq material: always ground a new framework in a real, recognizable product before asking the learner to apply it to their own case.
- Recommend Scott decide, before rebuilding, whether Torq's version keeps **4 autonomy levels** (finer-grained, matches most of the AI industry's "human-in-the-loop" ladders) or **3** (simpler, easier to teach) — this is the discrepancy most likely to actually confuse a learner if left unresolved.
