# Product Practice prompt catalog

Internal-use finding aid. Replace bracketed fields and verify wording and surrounding instructions in the linked capture. HTML-source prompts below are **Formatting normalized**: tags and collapsed whitespace were removed without changing wording.

## Strategic thinking and discovery

### PP-01 — Shallow mind map

- Type: Copy-ready AI prompt
- Fidelity: Formatting normalized
- Source: [M1 Exercise 1 Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 1/artifacts/Module 1 - Exercise 1 Guide.html>)

```text
Create a mindmap for a water tracking app.
```

### PP-02 — Structured mind map

- Type: Copy-ready AI prompt
- Fidelity: Formatting normalized
- Source: [M1 Exercise 1 Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 1/artifacts/Module 1 - Exercise 1 Guide.html>)

```text
You are a product manager. Create a mindmap for a mobile app that helps people
track daily water intake. Include features, user needs, and potential problems.
```

### PP-03 — Strategic discovery mind map

- Type: Copy-ready AI prompt
- Fidelity: Formatting normalized
- Source: [M1 Exercise 1 Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 1/artifacts/Module 1 - Exercise 1 Guide.html>)

```text
You are a senior product manager at a health-tech startup preparing for a
discovery sprint. Create a structured brainstorm mindmap for a mobile
water-tracking app targeting busy adults aged 25 to 40 who know they should drink
more but forget. Organize branches around: (1) core user jobs-to-be-done,
(2) key friction points in existing behavior, (3) feature ideas ranked by effort
vs. impact, (4) monetization paths with tradeoffs, (5) retention risks and how to
address them. Flag any area where there's a real strategic tension to debate.
```

### PP-04 — Product health synthesis

- Type: Copy-ready AI prompt
- Fidelity: Formatting normalized
- Source: [M2 Exercise 1 Guide, “The Lead PM prompt”](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 2/artifacts/Module 2 - Exercise 1 Guide.html>)

```text
Role: You are a Lead Product Manager. You have been provided with raw user
interview notes and bug reports.

Task: Perform a thematic synthesis of the provided data into a professional
"Product Health & Insights Summary." Your goal is to transform raw, fragmented
data into an executive-level overview.

Instructions for Output:
- Executive Summary: a 3-sentence summary of overall product health, focusing on
  the tension between technical stability and the user experience.
- Thematic Synthesis: group all issues into logical categories (e.g., Technical
  Stability, Discovery/UX, Algorithmic Curation, Platform Sync). Do not use raw
  data tables. For each category, give a concise narrative summary, then use
  bullet points to list specific pain points with their severity
  (Critical / High / Medium / Low).

Constraints:
- Do NOT include a "Roadmap" or "Actionable Recommendations" section.
- Synthesize recurring issues rather than listing every individual bug report.
- Maintain a professional, objective, analytical tone.
- Aggregate low-priority items into a single line titled "Minor Technical Debt."

Input Data:
[Pick Scenario A or B above, your dataset drops in here]
```

### PP-05 to PP-08 — Discovery follow-ons

| ID | Prompt | Fidelity | Source |
|---|---|---|---|
| PP-05 | Drill into a selected product-health category with more technical evidence | Formatting normalized | [M2 Exercise 1 Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 2/artifacts/Module 2 - Exercise 1 Guide.html>) |
| PP-06 | Generate one or two personas from a Problem Hook and Executive Summary | Formatting normalized / dynamic occurrence | [M2 Exercise 2 Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 2/artifacts/Module 2 - Exercise 2 Guide.html>) · [builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 2/artifacts/Module 2 - Persona & Journey Builder.html>) |
| PP-07 | Identify a persona's workaround and connect its inefficiency to the business crisis | Formatting normalized / dynamic occurrence | [M2 Exercise 2 Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 2/artifacts/Module 2 - Exercise 2 Guide.html>) · [builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 2/artifacts/Module 2 - Persona & Journey Builder.html>) |
| PP-08 | Create a four-stage future-state journey in Action → Benefit form | Formatting normalized / dynamic occurrence | [M2 Exercise 2 Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 2/artifacts/Module 2 - Exercise 2 Guide.html>) · [builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 2/artifacts/Module 2 - Persona & Journey Builder.html>) |

## Roadmap, PRD, experiment, and launch

| ID | Type | Fidelity | Use | Source occurrence(s) |
|---|---|---|---|---|
| PP-09 | Copy-ready AI prompt | Verbatim capture / dynamic occurrence | Score a backlog as a Senior PM using evidence-bound Effort vs. Value | [M4 Lab 1](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 4/Module 4 - Lab 1 Guide (digest).md>) · [Roadmap Builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 4/Module 4 - Roadmap Builder (digest).md>) |
| PP-10 | Dynamic template | Dynamic template | Generate a single-file Now/Next/Later HTML roadmap from live scores | [Roadmap Builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 4/Module 4 - Roadmap Builder (digest).md>) |
| PP-11 | Copy-ready AI prompt | Verbatim capture / dynamic occurrence | Scope one selected feature with MoSCoW | [M4 Lab 2](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 4/Module 4 - Lab 2 Guide (digest).md>) · [PRD Builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 4/Module 4 - PRD Builder (digest).md>) |
| PP-12 | Copy-ready AI prompt | Verbatim capture | Produce the required Universal Simplified PRD structure | [M4 Lab 2](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 4/Module 4 - Lab 2 Guide (digest).md>) |
| PP-13 | Copy-ready AI prompt | Verbatim capture | Build a working prototype from the PRD, using its story and requirements as constraints | [M4 Lab 2](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 4/Module 4 - Lab 2 Guide (digest).md>) · [PRD Builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 4/Module 4 - PRD Builder (digest).md>) |
| PP-14 | Dynamic template | Dynamic template | Pressure-test a filled A/B experiment brief against attribution, metrics, guardrails, feasibility, and decision rules | [Experiment Brief Builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 5/Module 5 - Experiment Brief Builder (digest).md>) |
| PP-15 | Dynamic template | Dynamic template | Pressure-test a GTM plan against goal, audience, tier, channel, ownership, and metrics | [GTM Launch Plan Builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 6/Module 6 - GTM Launch Plan Builder (digest).md>) |
| PP-16 | Copy-ready AI prompt | Verbatim capture | Have a CPO apply a cold “fund this bet” test to the rendered capstone | [Final Presentation Generator](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 6/Module 6 - Final Presentation Generator (digest).md>) |

The PP-09 through PP-16 source links open directly beside the complete prompt text or builder specification. This avoids copying a partial digest as though it were the full live-builder output.

## Human and builder templates

| ID | Type | What it produces | Source occurrence(s) |
|---|---|---|---|
| PP-R01 | Reflection question | Strategic problem-hook and value-proposition thinking | [M1 Exercise 2](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 1/artifacts/Module 1 - Exercise 2 Guide.html>) |
| PP-T01 | Dynamic template | Problem Hook artifact | [M1 Problem Hook Builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 1/artifacts/Module 1 - Problem Hook Builder.html>) |
| PP-R02 | Reflection sequence | Confirm/contradict/nuance analysis over three quantitative snapshots | [M3 Exercise Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 3/artifacts/Module 3 - Exercise Guide.html>) |
| PP-T02 | Dynamic template | Data-backed hypothesis with success metric, guardrail, and decision window | [M3 Exercise Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 3/artifacts/Module 3 - Exercise Guide.html>) · [Hypothesis Builder](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 3/artifacts/Module 3 - Hypothesis Builder.html>) |
| PP-T03 | Dynamic template | Experiment hypothesis and parameters | [M5 Lab Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 5/Module 5 - Lab Guide (digest).md>) |
| PP-T04 | Dynamic template | Ship / iterate / kill criteria | [M5 Lab Guide](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 5/Module 5 - Lab Guide (digest).md>) |
| PP-T05 | Dynamic template | Self-contained HTML capstone deck from all six module artifacts | [Final Presentation Generator](<../source-library/imports/torq-lessons-build/Torq Lessons Build/Source Material/Class 6/Module 6 - Final Presentation Generator (digest).md>) |

No Torq-adapted prompt is presented as verbatim. A future Torq adaptation should preserve the reasoning pattern while replacing Product School brands, scenarios, and design-system tokens.
