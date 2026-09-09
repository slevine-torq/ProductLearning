# Module 4 · Lab 2 Guide (digest): Run a PRD-to-Prototype Rapid Validation Loop

**Format:** Fillable guide page (~30 min, individual). Pairs with a separate interactive "PRD Builder" tool (not yet captured) and a "Sample PRD" reference (not yet captured). Auto-saves to `localStorage` key `pm-m4-labguide-ex2`; same Copy-as-Markdown / Download / Reset export mechanism as Lab 1.

## Purpose
Take the top "Now" feature from the Lab 1 roadmap, scope its internal DNA with MoSCoW, write a Simplified PRD, and feed it into a vibe-coding tool (Lovable/Bolt) to produce a functional clickable prototype.

## Structure (3 phases)

**Step 1 — Pick & scope with MoSCoW.** Student names the single top "Now" quick win from Lab 1, then runs the MoSCoW prompt *in the same chat thread as Lab 1* (deliberately, so the AI retains Persona/Problem/Roadmap context). Explicit audit instruction after: is the Must-Have list actually lean enough to ship? Move items to Should/Won't manually if AI was optimistic.

**Step 2 — Generate the Simplified PRD.** Either via the PRD Builder tool, or the "Universal PRD prompt" below, run in the same chat so it inherits Persona/Metric/MoSCoW context.

**Step 3 — Prompt-to-prototype sprint.** Student pastes the PRD into Lovable/Bolt, prefaced by a short "builder hook" instruction, then iterates using follow-up messages that cite specific PRD sections by name when fixing gaps.

## The three reusable prompts (chained in one continuous chat thread)

### 1. MoSCoW scoping prompt
```
Act as a Senior Product Manager at [StreamLine / RouteLogic]. I'm about to write a
PRD for my selected feature: [INSERT FEATURE NAME].

Use the Persona, Moment of Misery, Primary Metric, and Constraints defined earlier
to guide your decisions.

List the sub-requirements for this feature in MoSCoW categories:
- MUST HAVE: required for the feature to function at all in the first sprint
- SHOULD HAVE: valuable additions if sprint capacity allows
- COULD HAVE: polish or enhancements for V2
- WON'T HAVE (NOW): explicit exclusions that prevent scope creep

Be ruthless. Every must-have must directly address the moment of misery. If removing
it still lets the core persona [INSERT CORE FEATURE GOAL] it's not a must-have.
```

### 2. Universal PRD prompt (both scenarios) — the key reusable artifact
Produces a Simplified PRD with an exact required structure:
```
HEADER: Title · Author (Me) · Status (Draft) · Target (High-Fidelity Prototype).

1. THE BIG PICTURE — Vision (1 sentence) · Press Release (2 short paras on solving
   the moment of misery) · Success Metrics (primary + one guardrail).

2. THE DETAILS — User Stories (3, "As a… I want… so that…" + acceptance criteria) ·
   Screens to Build (exactly 3: entry point, feature core, success/confirmation;
   list UI elements for each) · Functional Requirements (5-8 measurable rules from
   MUST HAVE) · Smart Behaviors (Situation → Outcome If/Then table) · Technical
   Constraints ("what not to build": no external APIs, no login, useState only).

3. THE LOGISTICS — Features Out (from WON'T HAVE) · Edge Cases (unhappy paths +
   a safety/hallucination guard) · Decision Log (2 scope-protecting choices) ·
   Evals (3 targets: % accuracy, time-on-task, or safety triggers).

Be ruthless. Reference our specific performance targets and persona data throughout.
Do not use generic filler text.
```
This is the operational definition of a "Simplified PRD" referenced in the Notes/deck — worth preserving verbatim as the template.

### 3. Builder hook (pasted above the PRD, into Lovable/Bolt)
```
Build a working prototype based on this PRD. Use the User Scenario as the core flow,
Functional Requirements as build constraints, and prioritize speed and clarity over
visual complexity.
```

## Iteration technique taught
Reference PRD sections by name when giving the AI corrective feedback, e.g.:
> "Functional requirement 3 isn't met, there's no inline field-level error when I leave a required field empty."

This ties every bug-fix request back to a specific numbered PRD clause rather than vague feedback — a transferable prompting discipline.

## Reflection prompts embedded throughout
- The "Now" feature being scoped (name + one-line description)
- Finalized Must-Haves after overriding the AI
- What got demoted from Must → Should/Won't, and why
- One thing the PRD made explicit that a vague brief would have missed
- Where the prototype revealed a gap in the PRD logic (what got updated)
- Shareable prototype URL

## Torq-rebuild notes
- The "same chat thread" instruction across all 3 labs (scoring → MoSCoW → PRD → prototype) is a deliberate context-continuity technique — worth calling out explicitly as a technique, not just baking it into instructions silently.
- The Universal PRD prompt's exact section structure (Big Picture / Details / Logistics, each with fixed sub-fields) is the single most reusable framework artifact captured so far — it operationalizes "Simplified PRD" into something copy-pasteable.
- Still needed from this artifact: the **PRD Builder** (interactive tool referenced repeatedly) and the **Sample PRD** (worked example, PulseAI) — both separate HTML files.
