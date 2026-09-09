# Module 1 Slides (Shareable) — Digest

**What it is:** The full Module 1 slide deck ("Drive AI-First Execution with Prompting"), scroll-snap format, 35 sections. Shown embedded via iframe on the Class 1 LMS page. This is the "Shareable" variant (student-facing; no separate instructor-notes variant captured).

**QA:** `scroll-snap-type: y mandatory` ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure (35 sections, in order)

1. **Hero** — title, 4 waypoints (Mindset shift / Prompt anatomy / Lovable lab / Prompting as config), closing line: finish M1 with Juno's system prompt + Lovable share URL in `juno-pm`.
2. **Class Expectations** — 6 ground rules: Cameras On (optional live), Arrive On Time, Engage Async (`#ai-pm-cohort`), Tool Readiness (Lovable+GitHub before class), Use Slack, Class Momentum (async Q&A, ~5 day turnaround).
3. **Introductions** — async, individual, not live round-robin. Instructor: background/career path/milestones. Student: who you are/course goal/fun fact, post to `#ai-pm-cohort` with LinkedIn URL.
4. **Final Project Deliverables** — the 7 deliverables (see table below), links to `Final Project Brief.html`.
5. **Set Up Your juno-pm Repo** — 4-step setup (GitHub signup → use template → name it `juno-pm` → pick editor: Web UI/Codespaces/Cursor), repo tree diagram, "each module" 5-step workflow (open tool → build artefact → copy as markdown → paste into named file → self-review → commit/push).
6. **AI Product Management Syllabus** — 6 module cards with **fuller descriptions** than the Pre-Read/Notes gave (see Syllabus table below).
7. **Agenda** — today's 4 sections (mindset / anatomy / lab / config).
8. **Section break** — Section 01: The AI-First Product Mindset.
9. **AI-First Product Thinking** — solo reflection, 5 min, 2 questions (see Prompts/Questions section).
10. **Every PM is now an AI PM** — framing: 2023 "AI PM" = wrapper; today the bar is managing probabilistic outcomes.
11. **From Rules to Probabilities** — deterministic vs. probabilistic systems, side-by-side SVG diagrams (input→code→100% predictable output vs. input→model→3 different outputs A/B/C). Callout: "you no longer write 'the output will be X,' you define qualities and guardrails of an acceptable output."
12. **The PM's Dual Role** — building AI products (city planner, not architect) vs. using AI in workflows (steer via prompt iteration), with a central "AI uncertainty" orb diagram.
13. **How the AI-Era PM Role Has Evolved** — 4-step framework: (1) Assess AI-ability of the problem, (2) Own the "vibe" & trade-offs, (3) Define the failure state, (4) Prototype as spec.
14. **A PM's AI Toolkit** — **7-category tool directory** (Research & Discovery, PRDs & Documentation, Roadmapping & Prioritisation, Prototyping & Design, Experimentation & Insights, Messaging & GTM, Presentation & Enablement) with example tools per category. ⚠️ **Discrepancy**: differs from the 5-category toolkit in Module 1 - Notes.md (Prompt-to-prototype / LLM playground / No-code agent builder / Eval-observability / Repo+VC). Slide footnote: "Tool list refreshed May 2026. Categories are stable; vendors rotate, check the repo README for updates." Flag for Scott — likely two separate toolkit framings used at different points in the course; worth reconciling in the Torq rebuild.
15. **Section break** — Section 02: The Anatomy of a High-Quality Prompt.
16. **The Anatomy of a High-Quality Prompt** — 4 cards this time (ROLE / TASK / CONSTRAINTS / FORMAT — note: 4 here, not the 5-element version from Notes which also includes Examples/few-shot as a 5th).
17. **Section break** — Section 03: Hands-On Lab: Prompt-to-Prototype with Lovable.
18. **Prompt-to-Prototype Your Copilot with Lovable** — 25-min lab, 4 steps (build prompt in the Prompt Anatomy Builder tool → refine design in Lovable → test with a "Sarah / Data-Analyst transcript" → save the share URL to `01-prompting/lovable-prototype.md`). Credit-saver + free-tier-rule callouts (Lovable free tier = 2-3 prompts/day; decline "cloud integration" prompts, or swap to Stitch/Bolt).
19. **Quick Debrief, Your Copilot Prototype** — 2 min, one-sentence share in `#ai-pm-cohort` on where the prototype fell short ("Beautiful Liar" pattern: looks right, generic/ungrounded text). Bridges to Section 04 idea: "we gave the AI a design system but not a product brain."
20. **Break** — coffee emoji, filler slide.
21. **Cameras On** — reminder graphic slide (photo strip + copy), non-content.
22. **Section break** — Section 04: Prompting as Product Configuration.
23. **Prompt Layers for Product Configuration** — 3-layer model: Tools & Functions (top, what the model can *do*) / User Prompts (middle, dynamic intent) / System Messages (foundational, the model's "constitution").
24. **The Prompting Strategy Matrix** — Zero-shot (rapid ideation) / Few-shot (output consistency) / Chain-of-thought (complex logic), each with definition + use case + example (verbatim in Prompts section below).
25. **Few-Shot Prompting in Practice** — before/after worked example (verbatim below).
26. **Chain-of-Thought Prompting in Practice** — before/after worked example (verbatim below).
27. **Configure Juno's System Prompt** — 30-min lab, the M1 deliverable. 4 seed fields (Role/Persona, Task, Constraints, Output format) each with a "Use Juno seed →" pattern, plus a "plus-one" Few-Shot+CoT tip. Points to the System Prompt Configurator tool. Output: `01-prompting/system-prompt.md`.
28. **From Strategy to Spec, Model Configuration** — Temperature / Top P / Max Tokens, each with a "when" rule and an "in the wild" example (Spotify, Netflix, Salesforce, Figma — see table below).
29. **The Role of Fine-Tuning** — behaviour-not-knowledge framing; GitHub Copilot example; explicitly routes "stop hallucinations on data" to RAG (M3 preview).
30. **The Optimisation Decision Framework** — 3 symptom→tool mappings (inconsistent answers→Few-Shot; doesn't know our data→RAG; wrong voice/format→Fine-tuning).
31. **From PRDs to Prompts** — Old Way (static paper spec, 2 weeks, guesswork) vs. New Way (live prompt spec, 30 min, proof) side-by-side, with the punchline: "The prompt *is* the requirement *is* the prototype."
32. **Takeaways** — 3 key takeaways (probabilistic lifecycle / system prompts as invisible code / optimize with the right tool).
33. **Extra Practice** — 2 optional exercises (expand Lovable prototype with a dashboard view; audit a manual work task for AI-ability) + preview of Module 2.
34. **Resources & Templates** — 4 cards: Juno Prototype Prompt Builder, System Prompt Configurator, Final Project Brief, `ai-product-management-template` (GitHub one-click).
35. **Q&A** — closer, park questions in `#ai-pm-cohort`.

---

## Verbatim prompts / questions embedded in this deck

**Solo reflection (slide 9):**
> Q1: In an AI-first product, what user signals (like intent or behavior) do you think matter more than a list of rigid feature requirements?
> Q2: If you could stop writing every single "if/then" rule for your engineers, what would you stop doing as a PM to focus on higher-level strategy?

**Anatomy example snippets (slide 16):**
- Role: "Act as a senior B2B product researcher"
- Task: "Synthesise insights from raw feedback"
- Constraints: "Do not speculate. Use only the provided transcript."
- Format: "Return a markdown table with headers."

**Prompting Strategy Matrix examples (slide 24):**
- Zero-shot: "List 10 potential user problems for a new pet sitting app."
- Few-shot: "Here are 3 examples of our user stories. Write a new story for the 'Export PDF' feature following this exact format."
- CoT: "Think step-by-step. First, estimate the total addressable market (TAM). Then apply our segment filters to calculate the SAM."

**Few-Shot before/after (slide 25):**
- Bad: "Classify this user feedback as a Feature Request, Bug, or Praise: 'The reports load slowly'" → wrongly tags inconsistently.
- Good: "Classify this user feedback as a Feature Request, Bug, or Praise. Use these examples: 1. 'Login is slow' → Feature Request 2. 'Login returns 404' → Bug 3. 'Love the login!' → Praise. Input: 'The reports load slowly.'" → correctly tags Feature Request.

**Chain-of-Thought before/after (slide 26):**
- Bad: "Is 'Add AI Avatars' a high priority feature? (Context: our Q3 goal is reducing churn.)" → wrongly says High (pattern-matches on "AI" being trendy).
- Good: "Is 'Add AI Avatars' a high priority feature? Think step-by-step: 1. Define the primary driver of our churn. 2. Evaluate if 'AI Avatars' directly solves that driver. 3. Assign priority based only on that evaluation." → correctly reasons to Low.

**Juno System Prompt seed fields (slide 27) — the actual seeds for the M1 deliverable:**
- Role/Persona: "You are Juno PM. You synthesise, draft, and prioritise, you do not execute autonomously."
- Task: "Synthesise raw artefacts into one Opportunity Brief: Problem · Persona · Evidence Table."
- Constraints: "Cite Slack/Jira key for every claim. Never invent ARR or PII. Refuse external comms, route to PM."
- Output format: "Markdown | Rank | Risk | Signal | Source ID | Action |. Max 5 rows. No prose preamble."
- Plus-one (Few-Shot + CoT upgrade): "List assumptions and risks step-by-step before drafting."

---

## Syllabus module descriptions (fuller than Pre-Read — worth using as canonical)

| # | Title | Description |
|---|---|---|
| M1 | Drive AI-First Execution with Prompting | Adopt the new AI PM execution language to accelerate delivery and command outputs. Master the systematic use of context, parameters, and prompt engineering to guide AI behavior with precision. |
| M2 | Validate AI Opportunities and Technical Feasibility | Become an AI strategist capable of selecting and shaping AI bets that ship and move business metrics. Learn to evaluate feasibility and viability to prioritize features that deliver tangible value. |
| M3 | Improve AI Product Requirements with RAG Architecture | Bridge the gap between product specs and RAG systems. Understand how embeddings, vector stores, and retrieval impact product performance to define the technical requirements of a modern AI PRD. |
| M4 | Design AI-Native User Experiences | Design seamless user flows and AI features to unlock new ways for users to interact with your product. Use prototyping to validate experiences and transition from static interfaces to dynamic, intelligent systems. |
| M5 | Deploy Agentic Systems and Workflows | Transition from single prompts to autonomous agents and multi-step workflows. Configure reasoning paths and tool triggers to execute complex tasks and drive operational efficiency. |
| M6 | Measure AI Quality with Evals and Guardrails | Replace "vibe checks" with systematic evaluation harnesses to ensure production-grade performance. Build robust eval sets and safety guardrails to mitigate risk and embed trust into the user experience. |

## The 7 Final Project deliverables (per this deck's framing)

| # | Deliverable | Module |
|---|---|---|
| 1 | System Message (Juno's persona + scope + refusal rules) | M1 |
| 2 | AI Strategy One-Pager & link | M2 |
| 3 | RAG Architecture & Data Strategy | M3 |
| 4 | UX Design Screenshots from Lovable | M4 |
| 5 | Agentic Workflow Spec & link | M5 |
| 6 | Evaluation Plan | M6 |
| 7 | Build Insights (1 friction · 1 learning · 1 aha, in README) | M6 |

Note: slightly different framing from the Final Project Brief digest's folder/file table — this version names deliverables by content type, the Brief names them by exact filename. Both describe the same 6-folder + README structure.

## Model configuration reference table (slide 28)

| Parameter | Role | When | "In the wild" example |
|---|---|---|---|
| Temperature | The Risk Slider — controls randomness | Low (0.2) for product logic/code/data; High (0.7+) for ideation/chat | Spotify: low temp for support summaries. Netflix: high temp for title brainstorms. |
| Top P | The Quality Bar — limits to top % likely words | Cuts long-tail hallucination without being boring | Salesforce: lower for legal content. Netflix: wider for diverse storytelling. |
| Max Tokens | The Budget Knob — hard output cap | Always set one; prevents rambling/cost blowout | Spotify: concise summaries. Salesforce: compressed CRM notes. Figma: stops repetitive UI copy. |

---

## Interaction logic (deck chrome — mostly boilerplate, one notable addition)

- Standard: scroll-snap sections, IntersectionObserver-driven progress bar, nav dots, keyboard nav (arrows/space), skip-section + section-sorter via `localStorage` keyed to `document.title`.
- **New this capture — deck-sync via `BroadcastChannel`**: a same-browser presenter-sync mechanic. It links an instructor deck and its "(Shareable)" twin (matched by folder + filename with "(shareable)" stripped) so scrolling one scrolls the other, letting a presenter read private notes while screen-sharing the clean deck. Self-contained, does nothing if no peer tab is open, degrades silently if `BroadcastChannel` unsupported.
- Reduced-motion and print stylesheets included (accessibility/export pass, marked "PS-READABILITY-PASS v1" in a CSS comment — a template versioning marker, not board-specific).

---

## Torq-rebuild notes

- **The deterministic-vs-probabilistic framing** (slide 11) with the paired SVG diagrams is an excellent, reusable teaching device for introducing any AI feature to a non-technical audience — directly portable to Torq L&D.
- **The PM's Dual Role framing** (building AI products = city planner vs. using AI = conversational steering) is a sharp, quotable distinction worth keeping verbatim.
- **The 4-part prompt anatomy (Role/Task/Constraints/Format) + worked before/after pairs** for Few-Shot and Chain-of-Thought (slides 25–26) are ready-made teaching pairs — the "bad prompt → wrong result → good prompt → right result" pattern is very effective and directly reusable with Torq's own product examples swapped in.
- **The Optimisation Decision Framework** (symptom → tool: inconsistency→Few-shot, missing-data→RAG, wrong-voice→Fine-tune) is a clean, memorable triage lens — reusable as-is.
- **The deck-sync BroadcastChannel mechanic** is a nice presenter feature worth carrying into Torq's own instructor-deck tooling if Torq ever splits instructor-notes vs. shareable decks.
- **Toolkit discrepancy** (5-category in Notes vs. 7-category in Slides) — when rebuilding, pick one canonical toolkit list rather than propagating both; the 7-category version is more PM-workflow-shaped (research, PRDs, roadmap, prototyping, experimentation, messaging, presentation) and probably the better one to adapt for Torq's own tool bookmarks page.
- The "Beautiful Liar" pattern name (AI output that looks polished but isn't grounded in real data) is a sticky, reusable term worth keeping in Torq's own AI-quality vocabulary.
