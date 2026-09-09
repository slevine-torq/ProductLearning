# M1 - System Prompt Configurator — Digest

**What it is:** The workspace tool for the M1 individual exercise "Configure Juno's System Prompt" — the actual **M1 final-project deliverable**. Six input fields, live markdown preview that doubles as the deliverable file, auto-graded self-review checklist.

**QA:** `localStorage` present (`m1-system-prompt`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

Two-panel layout. **Left panel**, 6 fields, each with a hint line and a click-to-fill **"Use Juno seed →"** button:
1. Role & objective
2. Context & knowledge
3. Rules & guardrails
4. Output format
5. Refusal conditions
6. Few-shot examples (optional, no seed provided)

**Right panel**: live preview of `system-prompt.md`, a 5-item auto-graded self-review checklist, and an "Async share" reminder (commit + post to `#ai-pm-cohort` with a reflection paragraph on what was cut/kept/would-add).

Header actions: Copy as markdown, Copy raw prompt, Download .md, Reset.

**Note on field-to-heading mapping**: the tool has **6 input fields** but the output markdown has only **5 headings** — "Rules & guardrails" and "Refusal conditions" are two separate input fields but get merged into one `## Rules & guardrails` section in the generated file (concatenated with a blank line between). This matches the Slides deck's 4-field framing (Role/Task/Constraints/Format) loosely but is really its own 5-heading structure once "Context & knowledge" and "Refusal conditions" are folded in.

---

## Embedded seeds (verbatim — the actual Juno system prompt content)

**Role & objective seed:**
> You are Juno PM, an AI Associate PM embedded in RocketShip's Slack, Notion, and Jira. RocketShip is a B2B SaaS platform for Enterprise Data Teams in Signal Collapse. You act as a risk watchdog and strategic partner, you do not execute tasks autonomously; you synthesise, draft, and prioritise.

**Context & knowledge seed:**
> Operate on: (a) Slack threads in #escalations tagged P0/P1, (b) Notion pages in the RocketShip Product workspace, (c) Jira tickets in the ROCKET project. Do not act outside these surfaces.

**Rules & guardrails seed:**
> - Cite the Slack ticket ID or Jira key for every claim you make.
> - If a source thread is ambiguous, mark the output 'NEEDS CLARIFICATION' instead of guessing.
> - Never invent customer names, ARR figures, contractual terms, or PII.
> - Refuse to draft external customer comms; route those to the human PM.
> - Do not modify Jira tickets autonomously; only suggest edits.

**Output format seed:**
> Default output: markdown table with columns Rank | Risk | Customer signal | Source ID | Suggested action. Max 5 rows.
> If the user asks for a draft PRD: markdown doc with sections Problem / Goal / Scope / Out of scope / Open questions.
> If the user asks for a synthesis: markdown bullet list, max 7 bullets, grouped by theme.

**Refusal conditions seed:**
> - Refuse to publish anything externally (Slack, email, Intercom). Output a draft, never a send.
> - If asked to assess customer churn risk without ARR data, ask for the ARR sheet first.
> - Hand off to human PM if a request involves contracts, legal, or a regulator.
> - Hand off to human PM if confidence is below 70% on any P0 risk.

(No seed for Few-shot examples — placeholder only: "Example, Input: 12 Slack threads about an auth issue. Output table with auth-retry-storm at rank 1, citing TICK-4421...")

**`system-prompt.md` output template:**
```
# System Prompt · Juno

## Role & objective
{P}

## Context & knowledge
{S}

## Rules & guardrails
{G}

{R}

## Output format
{O}

## Few-shot examples
{E}
```

---

## Interaction logic (auto-graded self-review — regex/heuristic, not LLM-based)

- **bG badge** (Rules & guardrails): "filled" only if ≥3 bullet-style lines across Rules+Refusal fields combined **and** a refusal-pattern match against `/do not|never|must not|refuse|decline|hand off|escalate|if .*(missing|ambiguous|unclear|below)/i`. Partial states surface as "add more" or "add refusal" rather than a flat pass/fail.
- **bR badge** (Refusal conditions): "filled" if ≥2 bullet lines.
- **Checklist c1–c5**, each independently regex/length-gated:
  1. Role: length > 40 chars.
  2. Context: length > 30 **and** matches `/slack|notion|jira|channel|tag|project|workspace|scope|only|operate|source/i`.
  3. Rules: ≥3 bullets **and** the same refusal-pattern regex as bG.
  4. Output format: non-empty **and** matches `/markdown|json|table|list|schema|max|length|rows|columns|format/i`.
  5. Refusal: ≥2 bullets.
- Seeds inject raw text with literal `\n`/`\'` escape sequences that get unescaped on click (`seed()` function does `.replace(/\\n/g,'\n').replace(/\\'/g,"'")`) — a minor implementation detail, not learner-facing.
- All fields persist to `localStorage` under key `m1-system-prompt`; reload restores from there rather than the seed defaults (seeds only fire on explicit click).

---

## Torq-rebuild notes

- **This is the most content-rich artifact captured so far** — the seed text *is* a complete, well-constructed example system prompt for an AI PM assistant (persona + scope + citation requirement + ambiguity handling + hallucination guardrail + refusal + escalation threshold). Directly reusable as a template system prompt for a Torq-branded AI assistant character, swapping RocketShip/Juno specifics for Torq's own scenario.
- **The confidence-threshold refusal rule** ("Hand off to human PM if confidence is below 70% on any P0 risk") is a notably sophisticated guardrail example — worth calling out explicitly in Torq material as a technique (quantified confidence gating, not just qualitative "when unsure").
- Same regex-based auto-grading pattern as the Prompt Anatomy Builder — reinforces that this is the course's house style for self-review tooling. Worth adopting as a standard Torq lab-tool pattern: cheap, instant, deterministic feedback loop instead of requiring an LLM call to grade every learner submission.
- The **6-fields-into-5-headings merge** (Rules & guardrails + Refusal conditions → one heading) is worth deciding deliberately in a Torq rebuild rather than inheriting silently — either keep them separate headings (clearer) or keep the merge (more compact system prompt).
