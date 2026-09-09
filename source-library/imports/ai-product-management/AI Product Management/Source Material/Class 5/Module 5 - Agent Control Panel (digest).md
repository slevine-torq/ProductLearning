# M5 - Agent Control Panel — Digest

**What it is:** the M5 Lab 2 workspace tool, run after the AWSpec. Specs the **4 levers** + **4 rules of engagement** exactly as named in both the Notes and the Slides. Generates `05-agentic-workflows/agent-control-panel.md`, the second M5 final-project deliverable, plus a live SVG control diagram (download PNG/SVG).

**QA:** `localStorage` present (`m5-control-v2`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

Single-page tool (no preset tabs like the AWSpec Builder — instead a "Load example" / "Start blank" button pair).

### Four levers
1. **Define Stop Conditions** — `max_steps` + failure/timeout rules.
2. **Structure Tool Outputs** — what shape each API/tool returns, to prevent hallucinated observations.
3. **Set Confidence Thresholds** — what score triggers what action (auto-post / review / block).
4. **Manage the North Star** — the system instruction the agent re-reads every loop.

### Four rules of engagement
1. **Agency Permission** — the autonomy threshold (what the agent may act on vs. only draft).
2. **Access Control** — read/write boundaries per tool/database.
3. **Fallback Protocols** — what happens when loops break or gates trigger.
4. **Checkpoints** — red-zone triggers requiring human intervention.

Self-review checklist (5 items), emphasizing "every rule names a cannot, not only a can" and "confidence threshold matches the handoff line in your AWSpec" (an explicit cross-reference back to the Lab 1 tool).

**This tool's structure fully confirms the Notes' 4-lever + 4-rule description and directly contradicts the Glossary's separate "Agent Control Panel" entry**, which lists a different five-item set (triggers, tools, memory scope, stop conditions, observability). **RESOLVED: 4 levers (Stop Conditions, Structured Tool Outputs, Confidence Thresholds, North Star) + 4 rules of engagement (Agency Permission, Access Control, Fallback Protocols, Checkpoints) is the correct/authoritative structure.** The Glossary's 5-lever list does not match the Slides or this tool and should be treated as an error, not an alternate framing.

---

## Embedded exercise data — Load Example (verbatim, abridged)

Same Juno P0-triage scenario as the AWSpec Builder's preset B, specced at the control-panel level:

- **Stop conditions:** "max_steps: 8. Abort if same tool fails 2x in a row. Hard timeout: 90s wall clock."
- **Tool outputs:** "corpus.retrieve → {chunks:[{text,source,score}], summary, confidence}. salesforce.lookup_arr → {arr_usd, contract_end, churn_risk}."
- **Confidence thresholds:** "Score 80%+ auto-posts to #pm-daily. 70-79% posts to #pm-juno-review with @on-call-pm. Below 70% requires PM approval."
- **North Star:** "You are Juno. Your single goal is to surface the top-3 strategic risks from #escalations every weekday morning. Always cite a strategic pillar. Never invent customer names. Escalate ambiguity to the PM."
- **Agency permission:** "Agent can draft a P0 risk summary and Jira stub. Agent CANNOT auto-close threads or DM customers."
- **Access control:** "READ: Slack #escalations, Strategy KB, Salesforce ARR. WRITE: #pm-daily only, Jira stubs only. CANNOT edit Salesforce or post outside #pm-daily."
- **Fallback:** "After 3 failed retrievals, degrade to 'cautious mode' (no priorities, just thread links). After 2 tool errors, escalate to PM with full trace."
- **Checkpoints:** "Any thread mentioning 'churn', 'legal', or 'security' requires PM approval. Any P0 with confidence below 70% goes to PM review."

Note the 80%/70-79%/<70% confidence banding here is more granular than — but consistent with — the AWSpec's single "<70% → escalate" threshold; this tool's example expands the same threshold into a 3-tier action table. Not a contradiction, an elaboration.

---

## Markdown export template (`agent-control-panel.md`)

```
# Agent Control Panel · Juno

## Autonomy level
{ruAgency}

## Controls
- Kill switch: {lvStop}
- Rate / cost caps: {lvTools}
- Escalate-on-stuck: {ruFallback}

## Monitoring
**Confidence thresholds (map to actions):** {lvConfidence}
**Checkpoints:** {ruCheckpoint}
**North Star (re-read every loop):** {lvNorth}

## Permissions
{ruAccess}

## Self-review
[5-item checklist, unchecked]
```

Note the exported file's section headings (Autonomy level / Controls / Monitoring / Permissions) are a **third naming layer** on top of the UI's "4 levers + 4 rules" framing — e.g. "Kill switch" in the output file corresponds to the "Stop Conditions" lever input; "Rate / cost caps" corresponds to the "Structured Tool Outputs" lever input (a slightly odd mapping, since that lever is about output schemas, not rate/cost limits per se). Flag as a minor internal relabeling inside the tool itself, worth tightening if Torq rebuilds this file template — the input label and output label for lever 2 don't obviously mean the same thing.

---

## Interaction logic

- **Live SVG control diagram**: central "Juno" agent node surrounded by 4 lever boxes (top-left/top-right/bottom-left/bottom-right), each connected by a dashed arrow, each opacity-keyed to whether its field is filled. Same visual grammar as the AWSpec Builder's diagram (placeholder fade, live text wrapping into each box).
- No preset-tab structure like the AWSpec Builder (no separate non-Juno worked example here) — just blank vs. one Juno example, toggled via buttons rather than tabs.
- PNG/SVG export identical mechanism to the AWSpec Builder (canvas render with `#07162C` fill, 2x scale for PNG).

---

## Torq-rebuild notes

- **Confirms 4 levers + 4 rules of engagement as the authoritative Agent Control Panel structure** — resolves the Glossary's conflicting 5-lever entry, which should be corrected (not carried forward) in the Torq rebuild.
- The lever-to-output-field relabeling (e.g., "Structured Tool Outputs" input → "Rate / cost caps" output heading) is a small but real internal inconsistency worth fixing when Torq rebuilds this artifact — the markdown template's headings should match the UI's lever names 1:1 for clarity.
- The 3-tier confidence-banding example (80%/70-79%/<70%) is a nicely concrete pattern worth carrying forward as the default confidence-threshold example in Torq's own agent-governance content.
