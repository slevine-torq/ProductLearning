# M5 - Agent Workflow Spec Builder — Digest

**What it is:** the M5 Lab 1 workspace tool. Builds the AWSpec across **4 pillars** (Actors, Pattern Plan, Memory, Tools) — confirms the Slides' structure, **not** the Notes' 9-section description. Generates `05-agentic-workflows/awspec.md`, the first M5 final-project deliverable, plus a live SVG agent-workflow diagram (download PNG/SVG).

**QA:** `localStorage` present (`m5-awspec-v1`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

Two top-level tabs: **Build Yours** (the working tool) and **Worked Example · HR Triage Agent** (fully worked, non-interactive reference).

Preset row in Build Yours: **A — Start blank**, **B — Load Juno example (P0 Triage Agent)**.

### Pillar 1 · Actors
- Goal (one sentence, names value frame)
- Trigger (precise, testable condition)
- Primary actor / pilot — select: Agent (autonomous) / Agent + Human-in-the-loop / Human + Agent co-pilot / Planner + Executor agents
- Humans in the loop — when control passes back

### Pillar 2 · Pattern Plan
- Pattern — select: ReAct / Planner-Executor / Hybrid (ReAct inside Planner-Executor)
- Sequential steps (2-5, action-verb list)
- Stop conditions (≥3: success, failure, escalation, timeout)

### Pillar 3 · Memory
- Episodic (sequence of actions in this run)
- Semantic (persistent behaviours/preferences — explicitly prompts for "out of scope" entries too)
- Working/Contextual (live in-flight data)
- External tools (sources of truth via APIs)

### Pillar 4 · Tools
- Tool inventory (one per line, `tool.method(args)`: scope)
- Schemas (what each tool returns)
- Read/write boundaries

Self-review checklist (7 items) below the form, mirrors the Notes' checklist closely but adds "Read/write boundaries match the access control in your AI PRD (M3)" as a cross-module consistency check.

---

## Embedded exercise data — Preset B, Juno "P0 Triage Agent" (verbatim, abridged)

- **Goal:** "Triage P0 escalations into a daily prioritised top-3 risk list, with a strategic-rationale citation per item (Risk mitigation)."
- **Trigger:** "New message in #escalations tagged P0 AND thread length >= 5 messages within 10 minutes."
- **Primary actor:** Agent + Human-in-the-loop.
- **Humans in the loop:** "PM reviews any P0 with confidence < 70% before posting. Daily 8:55am: PM has a 5-min review window before the agent auto-posts to #pm-daily."
- **Pattern:** ReAct.
- **Steps:** 1. Read thread + retrieve customer ID/ARR. 2. RAG retrieval over RocketShip Strategy One-Pager (M3 KB), top-K=6. 3. Score risk + strategic alignment, emit P0-P3 with rationale. 4. Draft summary card (transcript quote + strategic citation). 5. Post to #pm-daily OR route to PM review by confidence threshold.
- **Stop conditions:** success (list posted); failure (>2 tool errors → abort); escalation (confidence < 70% → PM); timeout (90s wall clock).
- **Memory:** Episodic = tool results/scores, end of run. Semantic = RocketShip taxonomy + Juno prompt + PM preferences (weekly refresh); explicitly out of scope: customer contracts, PII. Working = thread/customer ID/ARR/chunks/confidence, in-context only. External = Slack (read), Strategy KB (read), Salesforce ARR (read), #pm-daily (write), Jira (write, stub only).
- **Tools:** `slack.read_thread(id)` read-only; `corpus.retrieve(query,k=6)` read-only; `salesforce.lookup_arr(customer_id)` read-only; `jira.create_stub(payload)` write, confidence ≥80%; `slack.post(channel,payload)` write, restricted to #pm-daily.
- **Boundaries:** Agent can READ Slack #escalations + Strategy KB + Salesforce ARR; can WRITE to #pm-daily and create Jira stubs; CANNOT edit Salesforce, edit Jira post-creation, or post outside #pm-daily.

This is the same RocketShip/Strategy-KB/#escalations/P0-triage scenario thread that's been used since M3, now extended into agent form — reinforcing that Juno's "daily risk triage" capability is the throughline final-project feature across M3 (RAG), M4 (user flow), and M5 (agent workflow).

## Worked example tab — HR Triage Agent (verbatim, abridged)

A fully separate scenario (not Juno/RocketShip) illustrating all 4 pillars: an HR agent that routes requests into policy-question / vacation-entry / escalate-to-HRBP lanes. Includes its own goal, trigger, ReAct pattern with 5 steps, stop conditions (incl. a 75% confidence escalation threshold), 4-type memory scoping (explicitly excludes persisting compensation data), and a 3-tool inventory with schemas and read/write boundaries (cannot edit payroll/benefits/comp data). Structurally identical template to the Juno preset — used purely as a second fully-worked reference example, same pedagogical role as Airbnb's "Smart Dispute Mediator" in M3.

---

## Markdown export template (`awspec.md`)

```
# Agent Workflow Spec (AWSpec) · Juno

## Goal
{goal}
**Primary actor:** {pilot label}

## Trigger
{trigger}

## Steps & tools
**Pattern:** {pattern label}
| Step | Action | Tool / model | Guardrail |
|---|---|---|---|
[... one row per step, guardrail only on row 1]

**Schemas**
{toolSchemas}

**Memory (in or out of scope)**
- Episodic / Semantic / Working / External: {...}

## Human-in-the-loop
{actHumans}

## Success & failure
- Done when: {patStop}
- Fails safe when: {toolBoundaries}

## Self-review
[7-item checklist, unchecked]
```

Note the exported markdown's own internal headings (Goal / Trigger / Steps & tools / Human-in-the-loop / Success & failure / Self-review) are **yet a third shape**, different from both the 4-pillar UI and the Notes' 9-section list — it's a compressed narrative rendering of the same 4-pillar data, not a new structural claim. Worth noting for Torq rebuild only as "the file's shape is a derived view, not the source of truth; the 4 pillars are."

---

## Interaction logic

- **Live SVG agent-workflow diagram**: renders Actors (human/agent/HIL circles+capsule), Pattern Plan (sequential step boxes with arrows, count driven by parsed step list), Memory (4 fixed boxes, opacity keyed to whether each field is filled), and Tools (diamond nodes, count driven by parsed tool list) — all regenerated live from form state. Faded/dashed placeholder states when fields are empty, matching the "not set" pattern used in M4's AI User Flow Architect diagram.
- Badges per pillar ("empty" / "specced") — same pattern as M3/M4 tools.
- PNG export renders the SVG to canvas with a `#07162C` background fill (matches deck background) at 2x scale.
- No AI-prompt copy-paste step anywhere in this tool — it is explicitly a structured-form builder, not an LLM-prompting exercise (the tool's own copy repeats "No ChatGPT step" twice).

---

## Torq-rebuild notes

- **Confirms the 4-pillar (Actors/Pattern Plan/Memory/Tools) AWSpec structure as authoritative** — resolves the internal inconsistency flagged when the Notes were first captured. The Notes' 9-section description (Goal/Trigger/Inputs/Tools/Memory/Pattern/Stop conditions/Handoff rules/Eval hooks) does not match any real artifact and should not be carried into the Torq rebuild as the AWSpec's structure.
- The live-diagram-from-form-state pattern (opacity-keyed placeholders, count-driven node generation) is consistent across M4 and M5 tools now — a strong, reusable Torq component pattern: "structured form on the left, auto-generated SVG diagram on the right, both exported."
- Worked-example-as-second-tab (HR Triage Agent) rather than a baked-in low-quality preset is a cleaner pattern than M4 Trust Gap Checker's "load a deliberately bad preset" approach — consider standardizing on the separate-tab worked-example pattern for Torq.
