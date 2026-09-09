# Module 5: Deploy Agentic Systems and Workflows (Shareable Notes)

A faithful expansion of the Module 5 slides. Individual format throughout.

By the end of this module you commit two artifacts to `05-agentic-workflows/`:

- `05-agentic-workflows/awspec.md`, Lab 1 in class (~30 min). The Agent Workflow Spec.
- `05-agentic-workflows/agent-control-panel.md`, Lab 2 in class (~20 min), after the AWSpec. Four levers plus four rules of engagement.

`Juno Agent.json` is a Langflow starter. Leave it as-is unless you run the optional post-class lab.

Plus, optional post-class: `05-agentic-workflows/langflow-screenshots/` from the Langflow lab.

> ⚠️ **RESOLVED (was open):** the "9 sections" AWSpec structure described below (§6) does **not** match reality. Both the Slides deck AND the actual `M5 - Agent Workflow Spec Builder.html` tool confirm the AWSpec is **4 pillars**: Actors, Pattern Plan, Memory, Tools. Treat the 9-section list in §6 below as superseded prose — same pattern as the M4 pillar/node conflict, where the tool itself, not this document, is the source of truth.

---

## 1. The Shift to Agentic Orchestration

- **Chat** (Year 1): model generates text. Human acts.
- **Copilot** (Year 2): model drafts, human approves, human acts.
- **Agent** (Year 3, now): model plans, calls tools, observes, iterates. **Model acts.**

The big change: "model acts." Up until now we've spec'd outputs. From here on we spec rules of action.

---

## 2. What is an agent?

### Key traits of agency

If a system has all four, it's an agent. If it has one or two, it's a tool or assistant.

- **Goals**: pursues a goal, not just responds.
- **Tool use**: calls functions on the world.
- **Memory**: state persists across turns or sessions.
- **Iteration**: observes results, re-plans.

### The Agent Spectrum

Pick the **lowest** level that delivers the job. Higher levels need explicit handoff rules.

| Level | Behaviour | Juno example |
|---|---|---|
| Tool | Does one thing on request | "Summarise this thread" |
| Assistant | Drafts, recommends | Juno suggests 3 risks; PM picks |
| Agent | Plans + calls tools + iterates | Juno triages P0s, opens Jira stubs, posts to #pm-daily |
| Autonomous Agent | Operates long horizons unsupervised | Not appropriate for Juno's risk profile |

### Examples in the wild

- **Asana (Codex)**: four coding agents migrated a five-year Enzyme test rewrite in two weeks; humans reviewed every PR.
- **Salesforce Agentforce**: customer service + sales workflows.
- **Klarna AI assistant**: resolves 2.3M customer queries/month.
- **Anthropic Computer Use**: controls a desktop to complete tasks.

Common pattern: bounded scope, explicit tools, human checkpoint at high-risk steps.

### The Hidden Costs of Autonomy

- **Cascading errors**: one wrong tool call → next step builds on it.
- **Cost blowup**: autonomous loops without stop conditions burn tokens.
- **Audit opacity**: "the agent decided" is not an audit log.
- **Drift**: long-term memory pulls behaviour off-spec over weeks.

The PM job: make these costs visible and bounded in the spec.

---

## 3. Agentic Design Patterns

### ReAct

*Reason → Act → Observe → loop.* Single-agent reasoning. Best for bounded, sequential tasks with feedback loops.

Juno triaging one P0 thread: read the thread, decide to query the strategy corpus, see the result, decide to query the ARR sheet, etc.

### Planner-Executor

One planner agent decomposes the task; one or many executors run the steps; the planner re-plans on failure. Best for multi-step tasks with parallelism.

Juno running the full daily risk pipeline across all `#escalations` channels.

For most PM purposes, ReAct is the workhorse. Planner-Executor enters when you have parallel sub-tasks or when a single agent's context window can't hold the whole plan.

---

## 4. Types of Agentic Memory

| Type | Lifetime | Use for |
|---|---|---|
| Short-term | Within one task | Tool results, intermediate reasoning |
| Long-term | Across sessions | User preferences, learned facts |
| Episodic | Specific past events | "Last week the user said X" |
| Semantic | General knowledge | Org context, domain facts |

Memory choices shape privacy, cost, and behaviour. **Spec each one explicitly**: including the no's. "Juno does not maintain long-term memory of customer-specific contracts" is a spec line worth writing.

---

## 5. Common Failure Modes

Spec for the failure, not just the success path.

- **Hallucinated tool calls**: the agent invents an API.
- **Memory poisoning**: bad data persisted as fact.
- **Runaway loops**: no stop condition; cost explosion.
- **Silent handoff failure**: should have escalated, didn't.
- **Drift across sessions**: long-term memory off-spec.

The AWSpec has explicit handling for each.

---

## 6. Managing the Agentic Handoff

### The PM's Agent Control Panel

Four levers a PM specs. Engineering implements. You measure.

- **Stop conditions**: max steps, timeout, failure budget.
- **Structured tool outputs**: what a tool must return so the agent cannot hallucinate an observation.
- **Confidence thresholds**: when thoughts trigger a human review.
- **North Star**: the instruction the agent re-reads every loop.

Plus four rules of engagement: agency permission, access control, fallback, checkpoints. Each rule names a cannot.

> Use **`M5 - Agent Control Panel.html`** in Lab 2 (after Rules of Engagement): spec each lever and each rule against *your* AWSpec; copy as markdown over `05-agentic-workflows/agent-control-panel.md`.

### Agent Workflow Spec (AWSpec): 4 pillars

The M5 deliverable. *(Corrected from an earlier 9-section draft of this document — the Slides deck and the actual builder tool both confirm 4 pillars, not 9 sections. See capture note above.)*

1. **Actors** — who's in the loop? Goal, trigger, primary actor/pilot, humans-in-the-loop handoff rules.
2. **Pattern Plan** — which wiring + steps? Pattern choice (ReAct / Planner-Executor / Hybrid), sequential steps, stop conditions.
3. **Memory** — what persists, where? Episodic, semantic, working/contextual, external tools.
4. **Tools** — which APIs, what scope? Tool inventory, schemas, read/write boundaries.

> Use **`M5 - Agent Workflow Spec Builder.html`**: fill all 4 pillars; export to `05-agentic-workflows/awspec.md`.

### The PM Decision Triangle — ⚠️ two different frameworks share this name

This LMS page uses "The PM Decision Triangle" for **two unrelated frameworks**:

**As described in this Notes document** — a three-mode decision-authority framework:

| Mode | When | Example for Juno |
|---|---|---|
| **AI alone** | Low risk, high earned trust | Auto-tagging P0/P1 |
| **AI + human checkpoint** | High-risk steps | Drafting a P0 spec |
| **Human alone** | Contracts, regulators, novel situations | Customer escalation calls |

The triangle (in this framing) is the **boundary contract** between PM and agent.

**As implemented in the Slides deck** — a completely different interactive **Latency / Cost / Accuracy trade-off triangle**: an SVG triangle with those three corners, a draggable balance dot, and a live readout of which corner is being "sacrificed." No connection to the AI-alone/AI+human/human-alone framing above.

Both are titled identically on the same materials page. **Unresolved for the Torq rebuild — pick one meaning for "PM Decision Triangle," or rename one of the two.**

---

## 7. Individual Exercise: Write Juno's Agent Workflow Spec (30 min)

(Was previously a breakout group exercise. Now solo.)

1. Open `M5 - Agent Workflow Spec Builder.html`.
2. Take your M4 user-flow's **Act** node and turn it into an AWSpec.
3. Use ReAct as the default pattern unless you have a specific reason for Planner-Executor.
4. Be precise about stop conditions and handoff rules.
5. Copy as markdown → `05-agentic-workflows/awspec.md`. The live preview is the file. No ChatGPT or Claude step.

### Self-review checklist

- Goal is one sentence and names the value frame.
- Trigger is a precise, testable condition.
- Tools are listed with scope (read-only? write?).
- Memory section names each of the 4 types as in-scope or out-of-scope.
- Stop conditions list at least 3 (success, failure, escalation).
- Handoff rules name a confidence threshold.

### Async share

Commit, push, post link in `#ai-pm-cohort`.

---

## 8. Individual Exercise: Spec Juno's Agent Control Panel (20 min)

Lab 2. Run this after the Control Panel and Rules of Engagement slides, before the Decision Triangle.

1. Open `M5 - Agent Control Panel.html`.
2. Load the example, then rewrite it so it matches *your* `awspec.md`.
3. Four levers: stop conditions, structured tool outputs, confidence thresholds, North Star. Each one is a number or a sentence you could implement tomorrow.
4. Four rules of engagement: agency permission, access control, fallback, checkpoints. Each rule names something the agent **cannot** do.
5. Copy as markdown → `05-agentic-workflows/agent-control-panel.md`. Download PNG if you want the diagram. Push.

`Juno Agent.json` is not this lab. That file is the optional Langflow import after class.

### Self-review checklist

- Every lever is a number or an implementable sentence, not a vibe.
- Every rule names a cannot, not only a can.
- Confidence threshold matches the handoff line in your AWSpec.
- North Star is the same goal sentence as the AWSpec.

---

## 9. Optional Post-Class Lab: Build Juno's Agentic Workflow in Langflow

Open `juno-pm/05-agentic-workflows/Juno Agent.json`. Import into Langflow. Add an OpenAI API key. Run the workflow with a test P0 thread. Capture screenshots to `05-agentic-workflows/langflow-screenshots/`.

Requires Langflow + OpenAI API credits. Encourage radical experimentation, change the pattern, add a tool, remove memory and see what breaks.

---

## Key takeaways

1. Pick the lowest agent level that delivers the job.
2. Spec the four traits (goals, tools, memory, iteration), including the no's.
3. ReAct is the default pattern. Planner-Executor for parallel/long.
4. The AWSpec has 4 pillars (Actors, Pattern Plan, Memory, Tools). All of them required.
5. Lab 2 locks the operator contract in `agent-control-panel.md`. If you cannot stop it, cap it, or hand it back, you do not ship it.
6. The PM Decision Triangle is the boundary contract.

---

## Before Module 6 (~20 min)

- Skim **`Module 6 - Pre-Read.md`** (AI Evals Stack).
- Re-read your AWSpec's **Eval hooks** section, M6 turns it into a real eval stack.
- Post your `05-agentic-workflows/` links in `#ai-pm-cohort`.

---

## Learning objectives (mapped to outcomes)

| LO | What you produced |
|---|---|
| Evaluate the transition to agentic orchestration | The agent-spectrum placement in `awspec.md` |
| Analyze the agentic reasoning stack | ReAct vs. Planner-Executor choice in `awspec.md` |
| Deconstruct common agentic design patterns | Pattern + memory sections of `awspec.md` |
| Construct a framework for human-agent collaboration | Handoff rules section of `awspec.md`; `agent-control-panel.md` |
| Apply technical orchestration principles to a functional system | Optional Langflow lab output |
