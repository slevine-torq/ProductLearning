# Module 4 Slides (Shareable) — Digest

**What it is:** Full Module 4 slide deck ("Design AI-Native User Experiences"), scroll-snap format, ~33 sections. Same chrome as M1-M3 decks. This deck is visually the richest so far — several custom SVG diagrams (iceberg, HR Agent flow) and animated mock-UI snippets (Perplexity, Gemini, Midjourney) embedded directly.

**QA:** `scroll-snap-type: y mandatory` ✅. Zero `__next_f` ✅. Genuine capture.

**⚠️ Major structural discrepancy — not just naming this time.** The Notes describe the AI user flow as **7 nodes** (Trigger→Capture→Retrieve→Reason→Act→Surface→Confirm/Correct). This deck — and critically, **the actual lab exercise and lab tool** — are built around **4 architecture pillars** (Trigger→Processing State→Presentation→Feedback Loop) with a 5-shape "builder's legend." The M4 lab walkthrough (slide "Architect Juno's Core AI User Flow") explicitly uses the 4-pillar steps (Identify the signal / Map the hidden logic / Design the maneuver / Build the kill switch), not the 7-node model. **This means the Notes' 7-node framework may not match what `M4 - AI User Flow Architect.html` actually asks the learner to fill in** — worth checking that tool directly before assuming which model governs the real deliverable.

---

## Structure (33 sections)

1. **Hero** — title, 4 waypoints (Intent-Driven Design / Invisible UI / AI Iceberg / Trust Gaps). ⚠️ Closing line names only **one** required artefact (`04-ai-ux/user-flow.md`) — omits `trust-gaps.md`, which the Notes list as the second required M4 deliverable. Likely an oversight in this slide's copy.
2. **Class Expectations** — same 6 cards.
3. **Syllabus** — M1-3 marked done, M4 "today."
4. **Agenda** — 4 items + explicit note that the Lovable AI-Native rebuild is "Bonus · Post-class... Optional, not required for completion."
5. **Section break** — Section 01: Intent-Driven AI Design Systems.
6. **Your Experience With Clunky AI-UX** (Instructor Q&A, 5 min) — 3 reflection questions, verbatim below.
7. **AI-UX Implementations** — new framing not in Notes: **Traditional AI-UX** (AI "layered" onto a static UI, user-driven, e.g. Google Search AI Overviews — a summary block above the same 10-blue-links page) vs. **AI-Native UX** (the model *is* the workflow, intent-driven, e.g. Perplexity — the link list is gone entirely, replaced by a generated answer).
8. **Why AI-Native UX Matters** — 4 pillars, new content not in Notes: Lowered Interaction Costs, Shifted Cognitive Load, Increased System Resilience, Contextual Relevance. Framing line: "users move from *builder* to *strategic reviewer*."
9. **Section break** — Section 02: Designing Invisible UI for AI-Native Outcomes.
10. **Invisible by Design, three patterns** — new 3-pattern breakdown not in Notes: (1) environmental-signal triggers (Glean — indexes activity before you open the app), (2) intent-prediction micro-UIs (Adobe Firefly — Generative Fill bar appears only after selecting an area), (3) automated inter-workflow data flow (Salesforce — AI extracts a lead from a transcript and auto-maps to CRM + drafts follow-up).
11. **AI Interaction Placement** — 3 placement types, new content: Inline & Embedded (Google Docs "Help me write"), Floating & Contextual (Figma AI's floating pill), Full-Page Canvas & Hubs (Gamma/Canva Magic decks open full-screen).
12. **Spot the Friction** (Instructor Q&A, 10 min) — a recruiter/candidate-profile chat-sidecar scenario, verbatim below, used to critique a *non*-AI-native design.
13. **Mapping Value to UX Treatment** — ⚠️ **Uses a completely different value vocabulary than both M4-Notes and matches M2-Slides instead.** This table maps **Automation→Full-Page Canvas, Augmentation→Inline & Embedded, Insights→Floating & Contextual, Personalization→Floating & Contextual** — the Automation/Augmentation/Insights/Personalization framing is the same one used in the [Module 2 Slides digest](../Class%202/Module%202%20-%20Slides%20%28Shareable%29%20%28digest%29.md)'s "Four Ways AI Creates Value," not M2's or M4's own Notes (which both use Cost/Revenue/Risk/Delight-style framing). This is a cross-module consistency point worth knowing: the Slide decks share one value vocabulary; the Notes docs share a different one.
14. **Section break** — Section 03: How to Architect an AI User Flow.
15. **Architecting the AI Iceberg** — custom SVG iceberg graphic. Traditional mapping (clicks/navigation/inputs) vs. AI-native mapping (background orchestration between intent and output). "Top Tip" callout: decide what stays invisible (effortless) vs. visible (trust).
16. **Four Architecture Pillars** — ⚠️ **the actual 4-pillar model**, each split into Underwater (PM-specced logic) / Surface (what user feels), verbatim below.
17. **How to Architect an AI User Flow (Builder's Legend)** — a 5-shape visual vocabulary (Signal=circle, Hidden Logic=blue rectangle, Interaction=small square, Data Flow=diamond, Generated Output=parallelogram) mapped onto the 4 pillars, plus the "Four steps to map a flow" (Identify the signal → Map the hidden logic → Design the maneuver → Build the kill switch).
18. **Example: HR Agent** — a large custom SVG flow diagram illustrating the shapes end-to-end across 3 layers (Surface/User Experience, Handshake/Connection, Underwater/AI Workflow), showing a router splitting into a RAG path (question → HR policy KB → generated answer) and an API-call path (vacation request → Workday API → AI-driven backend update → generated confirmation), with dashed return arrows back to the surface (including a dimmer fallback route to a support-ticket failsafe). This is the fullest worked example of the 4-pillar model in the whole course — a strong reference diagram.
19. **Break** — filler.
20. **Cameras On** — reminder graphic, non-content.
21. **Architect Juno's Core AI User Flow** (lab, 30 min) — the M4 Lab 1 walkthrough, explicitly framed with the same 4-step Signal/Hidden-Logic/Maneuver/Kill-Switch structure (not 7 nodes), with Juno-specific examples for each step (verbatim below). Tip callout: reuse the M3 PRD's Knowledge Base/Top-K/latency spec for the "hidden logic" step. Links to `M4 - AI User Flow Architect.html`.
22. **Section break** — Section 04: The PM's Playbook for Closing AI Trust Gaps.
23. **Trust Gap 1 · Black Box** — solution: source scaffolding (inline citations/hover states) + chain-of-thought visibility. Example: Perplexity's numbered-citation UI (animated mock included in the deck).
24. **Trust Gap 2 · Hallucination** — solution: visual metadata (grey text/dotted underlines/"Draft" watermarks below a confidence threshold) + proactive caveats. Example: Gemini for Workspace showing a "Draft · Low confidence" chip with alternative phrasings and a regenerate action (animated mock included).
25. **Trust Gap 3 · Control** — solution: one-click reversion (undo/restore original, "cost of a mistake = zero") + direct-edit access (never read-only). Example: Midjourney's "Vary Region" — regenerate just a selected part of an image (animated mock included).
26. **AI-UX Readiness Checklist** — new maturity model not in Notes, 3 levels: (1) Trigger Accuracy/Functional Baseline — ship only when confidence ≥ 90%; (2) System Transparency/Reliability & Verification — user must verify output in under 3 seconds; (3) Invisible Integration/Magical Flow — the interaction must remove more labor than it creates (measure correction rate). Rule of thumb: "if you can't pass Level 2 yet, ship a Level-2 UI. A 'reliable validator' product beats a 'magical liar' product every time."
27. **Managing the Intelligence Tax** — ⚠️ **Different framing than Notes.** This slide names 2 specific "taxes": **Latency Tax** (mitigate with streaming/status breadcrumbs) and **Privacy Tax** (mitigate with permission-first architecture + opt-in memory) — a concept (Privacy Tax) not present in the Notes' Intelligence Tax section at all. Notes focuses on p95 latency/streaming/reasoning-indicator/kill-if-tax-exceeds-value; this slide adds the privacy dimension.
28. **Takeaways** — 4 items.
29. **Extra Practice** — 2 optional exercises + M5 preview.
30. **Resources & Templates** — 4 cards, each labeled with a role tag: "✏️ In-Class Lab Tool" (AI User Flow Architect), "🚀 Optional Post-Class" (Juno AI-Native Lab), "🔍 Bonus Audit Tool" (AI-UX Trust Gap Checker), "📚 Project Repo Template."
31. **Q&A** — mid-deck closer for the required portion.
32. **Section break** — Optional Post-Class Hands-On Lab.
33. **Reimagine Juno as an AI-Native Copilot** — preview of the optional lab: **Path 1 (Strategic Trust Ladder)** or **Path 2 (Frictionless Architect)**, each with 3 levels (Functional → Reliable → Magical), pre-loaded Lovable prompts, and the reused "Sarah, Data Analyst" test transcript (now its fourth appearance across M1/M3/M4).

---

## Verbatim content

**"Your Experience With Clunky AI-UX" questions (slide 6):**
> 1. What's a product you've tried where AI *technically* works, but the experience feels wrong, annoying, or pointless?
> 2. On the flip side, where have you seen AI change *how* you interact with a product, not just *what* it can do?
> 3. Did it remove steps? Did it change who is 'in control'? Did it make the product feel more proactive?

**"Spot the Friction" scenario (slide 12):**
> A recruiter opens a candidate's profile. A "sidecar" chat box pops up and says: "I have analyzed this profile. Ask me anything or tell me to write an outreach email." Why is this *not* an AI-native 'invisible' design, and what would you change to make it effortless?

**Four Architecture Pillars, Underwater/Surface pairs (slide 16):**
1. **The Trigger** — Underwater: "Meeting recording ends, PDF uploaded, page loads." Surface: "An 'AI summary in progress' notification appears instantly, before the user clicks anything."
2. **The Processing State** — Underwater: "Routes the request, fetches data, reasons, drafts an output." Surface: "Breadcrumbs: 'Scanning policy docs…', turns latency into transparency."
3. **The Presentation** — Underwater: "Inline draft, floating overlay, or full-page canvas." Surface: "'V1 outreach email' renders directly in the message field."
4. **The Feedback Loop** — Underwater: "Logs corrections back into the model state." Surface: "'Don't use this tone again' updates the user's tone profile."

**Architect Juno's Core AI User Flow — lab steps (slide 21):**
1. Identify the signal: "A new P0 transcript is uploaded to the Raw Input column."
2. Map the hidden logic: "RAG retrieval of Strategy Doc → Comparison logic → Risk + alignment scoring. Steal from your M3 PRD."
3. Design the maneuver: "'Scanning Strategy…' breadcrumb in the Handshake Layer + inline V1 priority cards on the surface."
4. Build the kill switch: "A Manual Override on the priority score. Always a path back to a human-controlled state if logic fails."

---

## Interaction logic
Same boilerplate as prior decks (scroll-snap, progress bar, nav dots, `localStorage` skip/sorter, deck-sync `BroadcastChannel`). The animated mock-UI snippets (Perplexity citations pulsing, Gemini regenerate icon spinning, Midjourney selection breathing) use pure CSS keyframe animations scoped per-section — decorative, no state logic.

---

## Framework discrepancies vs. Module 4 - Notes.md (summary)

| Concept | This deck (Slides) | Notes.md |
|---|---|---|
| M4 required artefacts (hero line) | Names only `user-flow.md` | Names both `user-flow.md` and `trust-gaps.md` |
| AI user flow structure | **4 pillars**: Trigger / Processing State / Presentation / Feedback Loop | **7 nodes**: Trigger / Capture / Retrieve / Reason / Act / Surface / Confirm-Correct |
| Value→UX mapping vocabulary | Automation / Augmentation / Insights / Personalization (matches M2-Slides) | Cost reduction / Revenue generation / Risk mitigation / User delight (matches M2-Notes) |
| Intelligence Tax | 2 named taxes: Latency Tax, **Privacy Tax** | p95 latency / streaming / reasoning-indicator / kill-if-exceeds-value (no privacy tax) |

The 4-pillar vs. 7-node discrepancy is the most consequential of the course so far, since it's not just teaching-material framing — it's the actual shape of the lab exercise and (presumably) the tool. **Flag this prominently for whoever rebuilds M4 for Torq**, and check `M4 - AI User Flow Architect.html` directly to see which model the tool's form fields actually implement.

---

## Torq-rebuild notes

- **The HR Agent flow diagram** (slide 18) is the single best "show, don't tell" artifact in the entire course for explaining agentic/RAG architecture to a non-technical PM audience — worth recreating faithfully for Torq material regardless of which node/pillar model is chosen.
- **The AI-UX Readiness Checklist's 3-level maturity model** (slide 26) with its "reliable validator beats magical liar" rule is an excellent, quotable ship-gate — directly reusable as Torq's own AI-feature readiness bar.
- **The three trust-gap mock-UI examples** (Perplexity/Gemini/Midjourney, each with a working CSS-animated mini-mockup) are a strong pattern: showing the *actual* UI treatment, not just describing it, made the trust-gap solutions far more concrete than a bullet list would. Worth the extra design effort in a Torq rebuild.
- Resolve the **4-pillar vs. 7-node** conflict before anything else in M4 — this determines the literal shape of the deliverable template.
