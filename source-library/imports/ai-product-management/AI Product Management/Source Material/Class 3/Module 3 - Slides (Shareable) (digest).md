# Module 3 Slides (Shareable) — Digest

**What it is:** Full Module 3 slide deck ("Improve AI Product Requirements with RAG Architecture"), scroll-snap format, 31 sections. Same chrome as M1/M2's decks.

**QA:** `scroll-snap-type: y mandatory` ✅. Zero `__next_f` ✅. Genuine capture.

**⚠️ Naming split confirmed, bigger than first thought.** Every single reference to the M3 deliverable in this deck — hero closing line, Recall panel, Final-Project Progress tracker, both lab CTAs, and the final repo-cta — says `03-rag-prd/prd.md`. Module 3 - Notes.md uses `ai-prd.md` everywhere except one spot (previously flagged as a likely typo there). Given this deck is 100% consistent on `prd.md`, this isn't a stray typo in one file — it's a genuine split between two "sources of truth" in the same course. The Final Project Brief and Final-Project-Brief-referencing tracker rows elsewhere say `ai-prd.md`. **Recommend Scott pick one before the Torq rebuild rather than trusting either source blindly.**

---

## Structure (31 sections)

1. **Hero** — title, 4 waypoints (Context Engineering / RAG Lab / RAG→PRD mapping / Costs & Trade-offs).
2. **Class Expectations** — same 6 cards as M1/M2.
3. **Recall · Repo so far** — M1+M2 done (4 files) vs. M3 today (`prd.md`).
4. **Final-Project Progress** — full 7-deliverable tracker, M1/M2 marked done, M3 `prd.md` marked "today."
5. **Syllabus** — 6 module cards, M1+M2 marked done, M3 "today."
6. **Agenda** — 4 items.
7. **Section break** — Section 01: The Power of Context and Context Engineering.
8. **Prompt vs Context Engineering** — side-by-side comparison (Focus/Levers/Strengths/Weaknesses each). Prompt engineering: "words to the model," fast UX experimentation, struggles with factual grounding. Context engineering: "data around the prompt," high reliability/cost control, architectural complexity + latency. Callout: "you need both to be an AI PM, but context engineering is where systems become real products."
9. **RAG Process Overview** — 3 steps here (**Retrieve → Augment → Generate**) — Notes describes 4 (Index → Retrieve → Augment → Generate). Not contradictory (this slide's "Data Preparation" step later covers indexing separately), but worth noting the step count differs by slide vs. Notes framing.
10. **How RAG Works In Practice** — detailed two-pipeline diagram: **Offline** (Raw data sources → Extract → Chunk → Embed, feeding a shared **Vector Database**) and **Online** (User Query → Search Vector DB → Augment prompt → LLM → Response). Good visual reference for the actual data flow, more concrete than the Notes' bullet list.
11. **Solo Reflection: RAG In Your Workplace** (5 min) — prompt verbatim below.
12. **Section break** — Section 02: Hands-On Lab, Improve Juno's Capabilities with RAG.
13. **Lab Outcome Preview** — before/after Juno dashboard: **Before** = generic 3-column (Transcript/Insights/PRD draft), hardcoded mock priorities, treats "dark mode" and "CSV crash" equally. **After** = RAG-grounded 4-column (+Strategy, Transcript, Insights w/ P0–P3, PRD with citations), cites RocketShip's strategy doc, flags "not recommended" with reasons. Punchline: "Juno stops guessing. It starts citing."
14. **Improve Juno's Capabilities with RAG** (lab, 30 min) — 4 steps: (1) re-baseline in Lovable with the test transcript, (2) paste the **RAG Refactor Prompt** (adds a 4th strategy-document column, removes hardcoded pillars), (3) paste the **Logic Ingestion Prompt** and approve Lovable Cloud when asked (otherwise Juno stays in mock mode), (4) test with/without the strategy doc pasted and save the diff. Points to `M3 - Juno RAG Lab.html` (not yet captured — the actual prompt text for the two named prompts lives there).
15. **Section break** — Section 03: Mapping RAG To Your AI PRD.
16. **What's New in an AI PRD** — ⚠️ **Much richer than Notes' "3 new sections."** This slide gives **7 categories**: Model Requirements, Data Requirements, Prompt Requirements, AI User Experience, AI Testing & Measurement, AI Risks & Mitigations, AI Costs & Latency. Notes' three (data corpus+retrieval, eval plan, failure modes+guardrails) map roughly onto a subset of these seven — Notes gives the compressed version, this slide gives the full taxonomy. Framing line: "Traditional PRD: if-then rules. AI PRD: statistical thresholds."
17. **How to Incorporate RAG Into Your Requirements** — a Step→PRD-Section→Example-Requirement mapping table (Step 0 Data Preparation → Data Requirements; Step 1 Retrieve → Model Requirements; Step 2 Augment → AI Costs & Latency; Step 3 Generate → AI User Experience), each with a concrete example requirement (verbatim below). Very actionable — directly reusable as a PRD-writing checklist.
18. **Three RAG Trade-offs** — ⚠️ **Different from Notes' Cost/Speed/Accuracy table.** This slide pairs opposing pressures: **Accuracy vs Cost**, **Latency vs Reasoning**, **Control vs Speed**, each with an explicit "you prioritize / you sacrifice" framing. Different cut of the same underlying tension, more decision-oriented.
19. **Break** — filler.
20. **Cameras On** — reminder graphic, non-content.
21. **Section break** — Section 04: RAG Costs, Control, and Trade-offs.
22. **Data Preparation** — PM responsibilities (define authoritative documents, freshness SLAs, ingestion rules) + questions PMs must answer (which systems are the source? update cadence? who's authorized to view what?). Risk callout: "if the AI indexes three different versions of an expense policy, it will eventually give the wrong answer."
23. **Augmentation Considerations** — 3 levers: **Filters** (metadata rules, e.g. region-based access), **Top-K** (segment count — high for synthesis, low for quick answers), **Re-Ranking** (source priority when documents conflict, e.g. "latest doc wins, legal-approved trumps draft").
24. **The Physics of RAG** — tokens + context windows explained with a tokenized-sentence visual and a sliding-context-window timeline diagram (older turns fall out of the window over multiple prompt/response turns — the "lost in the middle" failure mode). Cost formula and a concrete PM-facing spec example, both verbatim below.
25. **Choosing Your RAG Architecture** — 3 options: **Long Context Only** (best for prototyping/limited data, downside = token tax + "lost in the middle"), **RAG** (best for accuracy/citations/cost predictability, downside = engineering complexity), **Hybrid** (best for mature products needing global search + deep reasoning, downside = complexity + latency).
26. **Architecture Decision Factors** — ⚠️ **Different from Notes' 5-question list.** This slide frames 3 factors — **Where** (data volatility: RAG for dynamic/updated data, Long Context for static narrative), **How** (task type: RAG for pinpoint lookups, Long Context for holistic analysis), **Scale** (RAG for 10,000+ docs, Long Context/Hybrid for focused per-user sessions) — each with a RAG-vs-Long-Context recommendation. Notes' version (data freshness / corpus size / query latency / update cadence / privacy-tenancy) is a different, more granular 5-axis cut of essentially the same decision space.
27. **Specifying Juno's Architecture in Your AI PRD** (lab, 30 min) — the M3 Lab 2 walkthrough, 4 sections (Data Requirements, Model Requirements, AI Costs & Latency, AI User Experience) with Juno seeds (verbatim below) and a mention of an inline Airbnb worked example inside the AI PRD Builder tool (not yet captured — flag when that tool is pasted).
28. **Takeaways** — 4 items.
29. **Extra Practice** — 2 optional exercises + M4 preview blurb.
30. **Resources & Templates** — 4 cards: Juno RAG Lab, AI PRD Builder, Final Project Brief, `ai-product-management-template`.
31. **Q&A** — closer.

---

## Verbatim content

**Solo Reflection prompt (slide 11):** "What is one messy set of documents or workflows you wish you could 'talk to' using this exact RAG method?"

**RAG-step → PRD-section example requirements (slide 17):**
- Data Preparation → Data Requirements: "Sync the Legal repo every 4 hours so policy changes propagate."
- Retrieve → Model Requirements: "Hybrid search must recognise exact product SKU codes and natural-language queries."
- Augment → AI Costs & Latency: "Limit retrieval loop to top 5 segments. Maintain p95 < 2s."
- Generate → AI User Experience: "Every output cites a source link. If retrieval is empty, AI must say so, not hallucinate."

**Token cost formula and PM spec example (slide 24):**
- "Cost / query = tokens(prompt) + tokens(retrieved) + tokens(response)"
- PM job example: "This feature must resolve queries using fewer than 4,000 tokens to maintain our $0.05 per-query cost target."

**AI PRD Builder — Juno seeds for the 4 sections (slide 27):**
- Data Requirements: "Sources: RocketShip strategy doc + last 90 days Slack/tickets. Sync on change."
- Model Requirements: "Hybrid. RAG indexes the corpus; long context handles single-doc deep reads."
- AI Costs & Latency: "Top-K = 8. Hybrid retrieval. p95 < 3s for prioritization."
- AI User Experience: "Every priority cites the strategy clause. Empty retrieval → flag 'insufficient evidence', escalate."

---

## Interaction logic
Same boilerplate as M1/M2 decks — scroll-snap, IntersectionObserver progress bar, nav dots, `localStorage` skip/sorter, deck-sync `BroadcastChannel`. No new patterns.

---

## Framework discrepancies vs. Module 3 - Notes.md (summary)

| Concept | This deck (Slides) | Notes.md |
|---|---|---|
| M3 deliverable filename | `03-rag-prd/prd.md` (100% consistent) | `03-rag-prd/ai-prd.md` (all but one spot) |
| RAG process step count | 3 (Retrieve/Augment/Generate) | 4 (Index/Retrieve/Augment/Generate) |
| "New in an AI PRD" | 7 categories (Model/Data/Prompt Requirements, AI UX, AI Testing, AI Risks, AI Costs & Latency) | 3 sections (data corpus+retrieval, eval plan, failure modes+guardrails) |
| RAG trade-offs | Paired tensions: Accuracy↔Cost, Latency↔Reasoning, Control↔Speed | Cost / Speed / Accuracy (3 independent axes) |
| Architecture Decision Factors | 3 factors (Where/How/Scale), RAG-vs-Long-Context recommendation each | 5 questions (freshness, corpus size, latency, update cadence, privacy/tenancy) |

As with M2, these read like two content passes that didn't fully reconcile. None are factually wrong, but a Torq rebuild should pick one canonical version per concept.

---

## Torq-rebuild notes

- **The offline/online RAG pipeline diagram** (slide 10) is the clearest visual explanation of RAG mechanics in the course so far — worth adapting directly for Torq material teaching RAG to non-engineers.
- **The Step→PRD-Section→Example-Requirement table** (slide 17) is an excellent, directly actionable template: it turns an abstract "add RAG considerations to your PRD" instruction into four concrete, fill-in-the-blank requirement statements. Strongly recommend preserving this pattern as-is.
- **The "lost in the middle" context-window visual** (slide 24) makes an abstract failure mode concrete and is a good teaching device regardless of which architecture-factors framework Torq ultimately adopts.
- **The 7-category "What's New in an AI PRD" taxonomy** (slide 16) is more complete and more useful as a real PRD template than the Notes' 3-section version — recommend using the slide's version as the canonical one when rebuilding, since it maps cleanly to real PRD sections a team would actually write (vs. Notes' higher-level summary).
- Resolve the `prd.md` vs `ai-prd.md` naming split explicitly and pick one — this is exactly the kind of small inconsistency that erodes trust in a course's own deliverable templates if carried into a Torq rebuild.
