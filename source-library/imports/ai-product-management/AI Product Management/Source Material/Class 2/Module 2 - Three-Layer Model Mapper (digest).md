# M2 - Three-Layer Model Mapper — Digest

**What it is:** The M2 Lab 1 workspace tool — applies the Three-Layer Model to Juno's "Automated Prioritization" bet, then scores Build/Buy/Fine-tune. Generates `02-strategy/decision-matrix.md`, one of the two M2 final-project deliverables.

**QA:** `localStorage` present (`m2-three-layer-v3`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

Two presets: **Option A** (Build Your Own, empty) / **Option B** (Juno Prioritization Engine, fully seeded).

Four blocks, left panel:
1. **Layer 1 — User Workflow**: free-text pain point.
2. **Layer 2 — Technical AI Solution + Autonomy**: two dropdowns (**AI capability**: Base Model/LLM, Grounded Knowledge/RAG, Multi-Step Logic/Agentic, Visual/Multimodal, Hybrid RAG+Agentic) and (**Autonomy dial**: Assist, Copilot, Agent — **confirms the deck's 3-level autonomy scale is the one actually wired into the tools**, not just a slide simplification) + a free-text "why this combo" field.
3. **Layer 3 — Business Outcome**: free-text measurable metric.
4. **The Call — Decision matrix**: this block *is* the repo file. Contains a free-text "the decision" field, a **scored table** (rows: Build / Buy-API / Fine-tune; columns: Cost, Speed, Control, Moat, Risk, each 1-5, with a computed average), and a free-text "recommendation" field.

Right panel: live markdown preview + 7-item self-review checklist (auto-graded, see below).

**⚠️ Naming collision worth flagging:** the generated markdown's H1 is literally **`# AI Solution Decision Matrix · Juno`** — the same name Module 2 - Notes.md uses for the *separate* 5-axis pressure-test tool (Value clarity/Technical feasibility/Data availability/Risk tolerance/Strategic fit), which the Notes explicitly warn is NOT the same file as `decision-matrix.md`. So the tool that produces `decision-matrix.md` titles its own output "AI Solution Decision Matrix," while the Notes use that exact phrase to mean a different tool entirely. This is a real naming bug in the course materials, not a rebuild-design decision — worth fixing outright in a Torq rebuild rather than just picking a side.

---

## Embedded exercise data — Option B ("Juno Prioritization Engine") verbatim

**Layer 1:** "Roadmap discussions are driven by the loudest voice in Slack rather than customer evidence. The PM can't defend reasoning when leadership pushes back, leading to constant priority reversals and stakeholder mistrust."

**Layer 2:** capability = **Hybrid**, autonomy = **Copilot**. Why: "Hybrid: RAG over the RocketShip corpus (Slack threads, support tickets, interview notes, Notion docs) so every priority cites source IDs. Bounded Agentic orchestration to cross-check Jira priority vs. Slack escalations and flag conflicts. Autonomy: Copilot. Juno drafts a ranked backlog with written reasoning and source citations; the PM reviews and clicks approve before publish. Explicitly avoiding Agent autonomy. Letting Juno move sprint priorities or shift live dates without human approval is a one-way trust-erosion door."

**Layer 3:** "Reduce average weekly roadmap prioritization time from 2 hours to 30 minutes (75% reduction). Cut the rate of decisions reversed within 1 week to under 10%. Track evidence-coverage % - target 90% of prioritised items have at least 2 cited sources."

**The decision:** "Whether RocketShip builds Automated Prioritization in Juno as a Hybrid (RAG + Agentic) Copilot, vs buying a generic LLM API or fine-tuning a model on our corpus. Why now: roadmap discussions are driven by the loudest voice in Slack rather than customer evidence. Priorities reverse weekly, and the PM cannot defend the call to leadership."

**Scored table (Cost/Speed/Control/Moat/Risk, 1-5):**

| Option | Cost | Speed | Control | Moat | Risk | Avg |
|---|---|---|---|---|---|---|
| Build | 2 | 2 | 5 | 5 | 4 | 3.6 |
| Buy / API | 5 | 5 | 2 | 1 | 2 | 3.0 |
| Fine-tune | 3 | 2 | 4 | 4 | 3 | 3.2 |

**Recommendation:** "Build. Highest score because Control and Moat are the axes that matter for a ranking system leadership will trust. A generic Buy / API is cheaper and faster, but it cannot cite RocketShip sources, so it recreates the loudest-voice problem. Fine-tune is slower than we can wait and still needs the corpus Juno would retrieve live. Autonomy stays Copilot: Juno drafts the ranked backlog with citations; the PM approves before publish."

**`decision-matrix.md` output template:**
```
# AI Solution Decision Matrix · Juno

## The decision
{decision}

## Options scored
| Option | Cost | Speed | Control | Moat | Risk | Score |
|---|---|---|---|---|---|---|
{rows}

## Recommendation
{rec}
```

---

## Interaction logic

- Score-table averages compute live per option, requiring all 5 axes filled to show a number (otherwise shows "-").
- Badge/checklist logic is simpler than M1's regex-heavy tools: Layer badges go "filled" purely on text length thresholds (L1/L3 > 40 chars; L2 requires both dropdowns set + why-text > 20 chars); "The Call" badge requires decision text > 40 chars, all three options fully scored, AND recommendation > 40 chars.
- 7-item self-review checklist mirrors the Notes' checklist almost exactly, auto-checked off the same underlying booleans as the badges.
- State persists to `localStorage` under `m2-three-layer-v3`.

---

## Torq-rebuild notes

- **Fix the naming collision** described above before reuse — a Torq rebuild should not have two different frameworks both called "AI Solution Decision Matrix."
- **The Cost/Speed/Control/Moat/Risk build-vs-buy-vs-fine-tune scorecard** is a clean, directly reusable rubric for any make-or-buy AI decision — the axis set (not the labels above) is genuinely well-chosen and worth keeping as-is in Torq material.
- The **"why this combo" free-text field paired with dropdowns** (rather than pure free text) is a good pattern for guiding structure while still capturing reasoning — worth replicating where Torq wants both consistency and nuance.
