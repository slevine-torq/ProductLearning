# Module 4 · Lab 1 Guide (digest): Build a Dynamic, Clickable Feature Roadmap

**Format:** Fillable guide page (~25 min, individual). Pairs with a separate interactive "Roadmap Builder" tool (not yet captured). Auto-saves to `localStorage` key `pm-m4-labguide-ex1`; has Copy-as-Markdown / Download .md / Reset buttons that compile all filled fields into a structured export.

## Purpose
Score a pre-built backlog with an Effort vs. Value matrix, use an LLM for a fast baseline score, then override with the student's own M2/M3 research evidence, and convert the finalized table into a Now/Next/Later roadmap with a Cut List.

## Structure (5 phases)

1. **Scenario pick** — student commits to one of two ongoing case scenarios:
   - **Scenario A — StreamLine Spotlight** (B2C streaming). Team: 2 eng + 1 designer, 3-week sprint. Goal: increase activation/retention.
   - **Scenario B — RouteLogic Velocity** (B2B logistics). Team: 2 eng + 1 designer + 1 CS lead, 4-week pilot across 3 accounts. Goal: cut compliance friction.

2. **Pre-Work (60 sec)** — student fills in 4 "strategic anchors" pulled from their own M2/M3 work: Persona, Primary success metric, Moment of misery, Guardrail metric. Explicit rule: *"If a feature doesn't move your primary metric, its Value score can't be a 5."*

3. **Step 1 — Review backlog, set human baseline.** Student scans the 10-item backlog and flags 2–3 instinctive "quick wins" before touching AI.

4. **Step 2 — AI baseline scoring prompt** (the reusable asset — see below).

5. **Step 3 — Audit & override.** Student overrides AI scores using their own research evidence; guiding questions ask where the AI over-valued a Sales/Eng request unsupported by user interviews, or underweighted something the data supports.

6. **Step 4 — Generate roadmap.** A second prompt (referenced, not fully shown — lives in the Roadmap Builder) turns the finalized table into a single-file clickable HTML Now/Next/Later roadmap. Deliverable: screenshot for project repo; the top "Now" feature carries into Lab 2.

## The reusable AI prompt ("Senior PM" scoring prompt)

```
Act as a Senior Product Manager at [StreamLine / RouteLogic]. Score each feature
for the '[Spotlight / Velocity]' initiative using the Effort vs. Value framework.

Strategic Anchors:
- Persona: [INSERT YOUR PERSONA]
- Primary Metric: [INSERT YOUR SUCCESS METRIC]
- Moment of Misery: [INSERT YOUR FRICTION POINT]
- Guardrail: [INSERT YOUR GUARDRAIL]

Constraints: [team size + sprint/pilot window].

For each feature give:
- Value (1 to 5): 1 = negligible impact, 5 = directly moves my Primary Metric
- Effort (1 to 5): 1 = days of engineering, 5 = months / high complexity
- Quadrant: Quick Win / Major Project / Fill-In / Time Sinker
- Rationale: one sentence based on my specific anchors

Be ruthless. Favour the persona's core friction over Sales or Engineering preferences.
Score the following features: [paste the backlog list].
```

Design pattern worth reusing for Torq: the prompt forces the LLM to justify against the student's *own* research anchors rather than generic best practice, and explicitly instructs it to discount internal-stakeholder noise (Sales/Eng asks) in favor of user evidence.

## Scenario A backlog — StreamLine Spotlight (10 items)

| ID | Feature | What it does | Origin |
|---|---|---|---|
| A1 | Spotlight Curated Rail | Hand-picked homepage rail bypassing the algorithm | M2 UXR |
| A2 | "Why You'll Love This" Label | Hover-reveal AI reason a title matches taste | M2 UXR |
| A3 | Hidden Gem Badge | Badge on high-quality, low-viewcount titles | M3 Data |
| A4 | Mood-Based Entry Point | Pick a mood on login to filter the rail | M2 UXR |
| A5 | Personalized Spotlight Queue | AI "Your Spotlight" list per taste profile | M3 Cohort |
| A6 | Spotlight Digest Email | Weekly email, 3 personalized picks | M3 Retention |
| A7 | Curator Profiles | Follow editorial curators' taste | M2 Interview |
| A8 | Watch Party (Spotlight) | Synchronized group viewing + chat | Sales |
| A9 | Advanced Filter Engine | Filter by decade, language, runtime | Engineering |
| A10 | Offline Download | Download Spotlight titles offline | Sales |

## Scenario B backlog — RouteLogic Velocity (10 items)

| ID | Feature | What it does | Origin |
|---|---|---|---|
| B1 | One-Click Compliance Checklist | Collapses the 14.6-min compliance step into a smart pre-filled form | M3 Data |
| B2 | Smart Daily Report Auto-Fill | AI auto-populates daily report; review & submit in one click | M3 Data |
| B3 | Shift Handoff Wizard | Guided handoff flow, saves ~6.8 min/day | M2 UXR |
| B4 | Mobile-First Coordinator Dashboard | Core dispatch/compliance/handoff in 2 taps | M2 Journey |
| B5 | Step Progress Indicator | Shows position in the dispatch workflow | M3 Funnel |
| B6 | Driver Alert Notifications | Push alerts on route changes/compliance flags | M2 Interview |
| B7 | Contextual AI ETA Display | Surfaces predictive ETA inline (current adoption 11%) | M3 Adoption |
| B8 | Fleet Analytics Manager View | Exec dashboard with drill-down | Sales |
| B9 | Compliance Audit Trail Export | One-click PDF for regulatory audits | Legal/CS |
| B10 | In-App Coordinator Training | Guided onboarding for new Coordinators | CS |

## Reflection prompts embedded throughout
- Instinctive quick-win picks (pre-AI) + why
- Where the student overrode the AI (feature, old vs. new score, why)
- Whether AI over-valued a Sales/Eng ask unsupported by M2 interviews
- Whether AI underweighted something M3 cohort/funnel data supports
- Final "Now" lane (2–3 quick wins)
- What got cut, and the "no" being protected
- Roadmap screenshot link

## Torq-rebuild notes
- The two-scenario (B2C vs. B2B) structure with matched-fidelity fake backlogs, each item tagged by its research origin (UXR/Data/Interview/Sales/Engineering), is a strong reusable pattern — gives every prioritization call a traceable "why."
- The auto-save + Markdown export mechanism (`localStorage` + compile-fields-to-.md) is a lightweight, dependency-free way to make a static HTML page feel like a real tool. Worth replicating for Torq's self-paced guides regardless of what LMS platform is chosen.
- Still needed from this artifact: the **Roadmap Builder** itself (interactive scoring/quadrant tool + "generate my roadmap" prompt) — referenced repeatedly but is a separate HTML file.
