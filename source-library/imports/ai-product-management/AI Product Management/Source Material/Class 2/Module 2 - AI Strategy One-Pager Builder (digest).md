# M2 - AI Strategy One-Pager Builder — Digest

**What it is:** The M2 Lab 2 workspace tool — builds the 6-section AI Strategy One-Pager for Juno's Automated Prioritization bet. Generates `02-strategy/strategy-one-pager.md`, the second of the two M2 final-project deliverables.

**QA:** `localStorage` present (`m2-onepager-v2`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

Three presets: **Option A** (Build Your Own, empty), **Option B** (Juno Baseline, seeded), and **📖 Airbnb worked example** (a fully-filled reference case, viewable in its own tab — this resolves the "not yet captured" flag left in the [Module 2 - Slides digest](Module%202%20-%20Slides%20%28Shareable%29%20%28digest%29.md)).

Six sections, left panel, each a single textarea: Problem & Workflow, Target Metrics, Autonomy Level, Data & Model Approach, Risks & Mitigations, V1 Scope — matching the anatomy from Notes/Slides exactly (unlike the toolkit/autonomy-scale discrepancies elsewhere, this 6-section structure is consistent everywhere it appears).

Right panel: two tabs — **Markdown for repo** (live preview + 6-item self-review checklist) and **Airbnb worked example** (static reference, same 6-section shape, fully filled).

---

## Embedded exercise data — verbatim

### Option B (Juno Baseline)

1. **Problem & Workflow:** "The Problem: roadmap discussions at RocketShip are driven by the loudest voice in Slack rather than customer evidence. Priorities reverse weekly; stakeholder trust is eroding. Prevention: Juno explicitly prevents 'opinion-driven prioritization' - the bad decision of moving a feature up the backlog because someone in #leadership posted strongly, instead of because the cited evidence outweighs the alternatives."
2. **Target Metrics:** "Cycle time: reduce average weekly roadmap prioritization from 2 hours to 30 minutes (75% reduction). Leadership proof: under-10% rate of decisions reversed within 1 week, AND 90%+ of prioritised items have at least 2 cited sources from the corpus. Both metrics measurable in the first 30 days post-launch."
3. **Autonomy Level:** "Choice: Copilot. Juno drafts a ranked backlog with written reasoning + source citations; the PM reviews and clicks 'approve' before publish. Explicitly avoiding: Agent. Letting Juno move sprint priorities or shift live dates without a human approval step is a one-way trust-erosion door - a single wrong call lets stakeholders dismiss the system permanently."
4. **Data & Model Approach:** "Approach: Ground (RAG). We will ground the model in the RocketShip corpus - Slack #escalations, support tickets, interview notes, Notion product pages, Jira tickets - so every priority cites a source ID. Explicitly avoiding: a generic LLM (Buy). Without RAG grounding, Juno would hallucinate plausible-sounding priorities and invent customer signals that don't exist - the failure mode that kills trust fastest."
5. **Risks & Mitigations:** "Risk: training data lag. Juno could over-weight whichever signal type was loudest in the past 60 days (e.g. enterprise escalations) and systematically under-weight quieter but more strategic signals (e.g. SMB churn). One quarter of skewed priorities and the roadmap drifts. Mitigation: a hard 'evidence balance' eval gate - reject any priority list where less than 20% of cited sources come from any one source type. Run weekly; PM reviews."
6. **V1 Scope:** "In: ranking the existing backlog with cited evidence; surfacing under-cited items; flagging conflicts between Slack escalations and Jira priorities. Out: (1) hiring or headcount decisions, (2) customer-facing comms about why a feature was deprioritised. Both stay 100% with the human PM."

### Airbnb worked example ("Smart Dispute Mediator")

1. **Problem & Workflow:** "The Problem: resolving host-guest damage claims is slow, emotionally charged, and inconsistent across support agents. Prevention: explicitly prevents 'arbitrary settlement' - a human agent issuing a refund or charge based on gut feeling rather than a cross-referenced audit of house rules and check-in photos."
2. **Target Metrics:** "Resolution Cycle Time: reduction in time-to-closed-claim from 72 hours to 15 minutes. Leadership proof: 20% reduction in appeal rates - both guests and hosts accept the AI's first decision more often than a human's, proving the logic is fairer and more defensible."
3. **Autonomy Level:** "Choice: Copilot. AI reviews evidence and drafts the decision letter with a recommended payout; a human supervisor must click 'approve' for any transaction over $500. Explicitly avoiding: Agent. We will not give AI end-to-end autonomy to move money out of user bank accounts without a safety valve - a single error in damage assessment is a trust-erosion event hard to undo."
4. **Data & Model Approach:** "Approach: Ground (RAG). Ground the model in the specific house rules of that listing and the metadata from uploaded photos (timestamps/location) to verify when damage occurred. Explicitly avoiding: generic LLM (Buy). Using a general model without RAG grounding would lead to hallucinations of standard policies that might contradict the host's specific legal house rules."
5. **Risks & Mitigations:** "Risk: if the training data for past human settlements favoured Power Hosts, the AI might instinctively penalise new guests in any dispute - a 'one-way door' where guests stop using the platform and structural bias compounds. Mitigation: a hard eval gate where 5% of all AI-mediated decisions are blind-reviewed by a third-party legal team to ensure parity between guest and host outcomes."
6. **V1 Scope:** "In: claims under $1,000 involving physical property damage with photo evidence. Out: (1) personal injury claims, (2) disputes involving local noise ordinances. Both require human judgement that the model cannot reliably reproduce."

**`strategy-one-pager.md` output template:**
```
# AI Strategy One-Pager - Juno Automated Prioritization

## 1. Problem & Workflow
{f1}

## 2. Target Metrics
{f2}

## 3. Autonomy Level
{f3}

## 4. Data & Model Approach
{f4}

## 5. Risks & Mitigations
{f5}

## 6. V1 Scope
{f6}
```

---

## Interaction logic

- Simple length-based badges: each section is "filled" once its textarea exceeds 30 characters — no regex/keyword grading here (unlike the M1 tools or the Three-Layer Mapper's Layer-2 dropdown-gating).
- The Airbnb tab renders from a hardcoded object, entirely separate from the editable state — switching to preset C copies that object into the live editable fields too, so a learner can start from Airbnb's text and edit it directly if they want.
- State persists to `localStorage` under `m2-onepager-v2`.

---

## Torq-rebuild notes

- **The "explicitly avoiding X, because Y" phrasing pattern**, used consistently across both Autonomy Level and Data & Model Approach in every seed and in the Airbnb example, is the single most valuable reusable technique in this artifact: it forces a stated trade-off, not just a stated choice. Worth mandating as a required phrasing pattern in any Torq strategy-doc template.
- **The Airbnb Smart Dispute Mediator** is a strong, well-constructed independent worked example (different domain from Juno, same 6-section shape) — good evidence that the 6-section anatomy generalizes cleanly across product types. Reusable directly as a teaching example in Torq material, or as a template for writing additional cross-domain worked examples.
- Two consecutive "one-way door" risk framings appear across this course (M2 Slides' autonomy discussion, this tool's Juno and Airbnb risk sections) — "one-way door" is being used as a recurring vocabulary term for irreversible-decision risk. Worth carrying forward as defined course vocabulary if not already in the cross-cutting `Glossary.md`.
