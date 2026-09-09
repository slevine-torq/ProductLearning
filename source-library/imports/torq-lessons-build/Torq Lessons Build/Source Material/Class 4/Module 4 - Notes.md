# Module 4 · Notes: Build High-Velocity Product Roadmaps

> Shareable class notes. Pairs with the slides, the two lab guides, and the Roadmap & PRD builders.

## 1 · How to build a strategic roadmap

A product roadmap is not a static feature list, in high-growth environments it's your primary **strategic communication tool**, the bridge between vision and execution.

**The What**: a roadmap is a *visual strategy* (where you're going, in what order), a *prioritized sequence* (every item earned its place), a *living document* (only as good as its last update), and an *outcome map* (the goal is solving problems, not shipping code).

**The Why**: it *forces alignment* (agree on direction, not just dates), *protects focus* (the data to say "no"), *manages change* (pivot without churning the team), and *drives impact* (shifts from "what are we shipping" to "what problem are we solving").

**Three steps to build one:**

1. **Ideate & Collect**: secure leadership buy-in early, gather design/eng inputs as a feasibility reality-check, centralize concepts in one doc.
2. **Prioritize & Sequence**: score every initiative on Impact vs. Effort, maintain a 70/20/10 balance, map dependencies and risks.
3. **Communicate & Manage**: review with Sales/Compliance, publish a single source of truth, iterate on a defined cadence.

**Tools:** dedicated SaaS (ProductBoard, Aha!, Airfocus, Roadmunk, ProductPlan), vibecoding tools (AI Studio, Lovable, Bolt), or generic productivity (Airtable, Sheets, Excel/PowerPoint).

### The Effort vs. Value matrix

Your reality filter for the backlog. **Value** = anticipated lift on your M3 success metric; **Effort** = total technical cost, sized with engineering. You are the **gatekeeper of engineering time**.

- **Quick Win** (high value, low effort) → build now; the backbone of your 70% core.
- **Major Project** (high value, high effort) → a big bet for 20% adjacent / 10% innovation; schedule it properly.
- **Fill-In** (low value, low effort) → only when capacity frees up.
- **Time Sinker** (low value, high effort) → identify and kill before it ever reaches the roadmap.

*Spotify example (goal: retention):* Search Optimization = Quick Win · Personalized Recommendations / Offline Listening = Major Projects · Lyrics Integration = Fill-In · Social API Expansion = Time Sinker.

## 2 · Lab 1: Build a dynamic, clickable feature roadmap

Score your scenario's backlog with **Effort vs. Value**, use an LLM for a baseline, then **override with your M2/M3 evidence**: your research-backed judgment beats the AI's generic scoring. Convert the finalized table into a clickable **Now / Next / Later** roadmap with a **Cut List** for the time-sinkers. → Lab 1 Guide · Roadmap Builder

## 3 · Foundations of effective scoping

**MVP** = the most pared-down version that still delivers the core value. Two steps: **define the core value** (one high-value outcome) and **map the essential flow** (the shortest happy path). Focus on the experience, not the interface.

**MoSCoW** slices scope: **Must** (ship-blocker) · **Should** (high-priority-if-capacity) · **Could** (next-sprint polish) · **Won't (now)** (explicit exclusion). The kill test: *"if we remove this, can the user still achieve the primary outcome?"*

*Spotify Search example:* Core Keyword Matching = Must · Auto-Suggest = Should · Voice-to-Text = Could · Social Search = Won't (now).

## 4 · From requirements to a functional prototype

The build is moving from waterfall (write a huge doc, wait months) to a **rapid validation loop**: Discover (your hypothesis) → **Design** (Simplified PRD → AI prototype, iterate) → Deliver (experiment, then GTM).

**The PRD** centralizes the *why*, forces clarity (if you can't describe it in plain English, the AI will hallucinate the gaps), and bridges strategy to execution. It's never "finished", in the loop it *is* the functional prompt.

**Traditional vs. Simplified PRD:** the Simplified PRD swaps long scenarios and logistics for a **Vision**, a **Press Release**, **Smart Behaviors**, **Edge Cases**, and a light **Eval**: making it feedable straight into a prototyping tool. See the sample PRD (PulseAI) for a worked example.

**The alignment handshake:** shop the PRD *and* prototype together to the **Manager** (strategic green light), the **Eng Lead** (feasibility + simpler paths), and the **Design Lead** (UX polish). The PRD gives the rules; the prototype gives the feeling.

## 5 · Lab 2: PRD-to-Prototype rapid validation loop

Zoom into your top "Now" feature, scope it with **MoSCoW**, write a **Simplified PRD**, and feed it into Lovable or Bolt to generate a clickable prototype. A V1 is enough, focus on whether the core "moment of misery" solution functions. → Lab 2 Guide · PRD Builder

## Key takeaways

1. **Roadmaps prioritize problems, not features**: aligned on continuous, validated value.
2. **Scoping prevents mission creep**: MoSCoW separates non-negotiables from enhancements to protect the timeline.
3. **The Simplified PRD is a functional blueprint**: it bridges strategy and execution to drive an automated build.
4. **Rapid prototyping de-risks before you commit eng**: turn theoretical requirements into clickable realities in minutes.

## Deliverables

- A **Now / Next / Later roadmap** (in your project repo).
- A **shareable, clickable prototype** link.

*Next module: Run Effective Product Experimentation, A/B testing to ship, kill, or iterate.*
