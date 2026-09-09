# M4 - Juno AI-Native Lab — Digest

**What it is:** The **optional, post-class** M4 lab — moves Juno up an "AI-UX Ladder" (Functional Baseline → Reliable → Magical) via real Lovable refactor prompts. Explicitly not required for course completion. Generates a "Trust-Gap Audit" document.

**QA:** `localStorage` present (`m4-native-v1`) ✅. Zero `__next_f` ✅. Genuine capture.

**⚠️ File-path collision with the AI-UX Trust Gap Checker.** This tool's `download()`/`buildMarkdown()` also targets `04-ai-ux/trust-gaps.md` — the **same path** the (separately captured) AI-UX Trust Gap Checker tool writes to, with a **different document structure** (this one: "Juno PM, Trust-Gap Audit" — Path run / Prototype URL / 3 gap write-ups / one-sentence "Forever takeaway"; the Checker: a 4-row scored table with Intelligence Tax included and a Shippable/Hold/Unsafe verdict). Since this lab is optional and the Checker is the one the Notes describe as producing the required deliverable, **the Checker's output should be treated as the canonical `trust-gaps.md`** — but if a learner runs this optional lab too, they'd overwrite it with a differently-shaped file. Worth flagging in a Torq rebuild: either don't have two tools target the same path, or clearly sequence which one is "the real deliverable" vs. supplementary notes.

---

## Structure

Two selectable **Paths**, each with 3 **Levels** (Functional Baseline → Reliability & Verification → Magical/Invisible), each level pairing a copy-ready Lovable prompt with a "Validation" check:

### Path 1 · Strategic Trust Ladder
Framing: "you can't scale judgment if you don't trust the AI's reasoning." Turns Juno from an answer-giver into something that proves its work.
1. **Level 1 (Transparency)**: add a "Strategic Traceability" footer to every Insight Card — rationale text, a source-pillar citation badge, and a 5-bar confidence-meter sparkline mapped to the `strategicAlignment` score.
2. **Level 2 (Reliability)**: make the PRD modular — wrap each PRD section in an `EditableBlock` with inline edit + a per-section "Regenerate" button (re-runs only that section, in a "more concise" tone), state persisted so edits survive navigation.
3. **Level 3 (Magical)**: remove the manual "Process" button; add a 2500ms debounce on transcript input; a global workflow state (listening → thinking → processing → complete) drives per-column status text ("Juno is listening…" / "thinking…" / "synthesizing…"); PRD output streams character-by-character.

### Path 2 · Frictionless Architect
Framing: "your bottleneck is the admin tax of moving data between tools." Turns Juno from a dashboard into a command center.
1. **Level 1 (Transparency)**: add a "Logic Map" hover icon on each Insight Card that highlights the source transcript sentences and the matching strategy-pillar badge simultaneously (shared `hoveredInsightId` state across columns).
2. **Level 2 (Reliability)**: a sticky "Action Bar" on the PRD column with "Share to Slack" and "Create Jira Ticket" buttons, each opening a pre-filled, editable modal (Slack = 2-sentence executive summary; Jira = auto-extracted Requirements section), each with a "Confirm & Send" → success toast.
3. **Level 3 (Magical)**: an "AI Risk Watchdog" — a floating sidecar that auto-slides in only when an insight is `notRecommended` or scores below 30 alignment, pre-drafts a "Mitigation Plan," and offers a one-click "Draft Mitigation Slack Message" quick action; dismissible but re-appears on new high-risk input.

Shared: the same reused "Sarah, Data Analyst" test transcript (its **fourth** appearance in the course — M1 Prompt Anatomy Builder, M3 Juno RAG Lab, M4 Slides preview, and here).

Below the levels: a trust-gap-audit capture form (path run, prototype URL, 3 gap write-ups, one-sentence "forever takeaway") and a 4-item self-review checklist.

---

## Verbatim prompts (all copy-ready Lovable refactor instructions)

**Path 1, Level 1 — Strategic Traceability:**
> Refactor the InsightCard.tsx component to prioritize Transparency. 1. Add a new section at the bottom of the card titled "Strategic Traceability." 2. Display the strategicRationale in a slightly smaller, italicized font. 3. If a strategicPillar is identified, wrap it in a "Source" badge that looks like a citation. 4. Add a visual "Confidence Meter" (a simple 5-bar sparkline) that maps to the strategicAlignment score (0-100). 5. Ensure this layout remains clean and doesn't break the existing 3-column grid.

**Path 1, Level 2 — Modular editable PRD:**
> Refactor the "Draft PRD" column to move from static text to a modular, editable workspace. Wrap each major section (Problem Statement, Requirements, Risks) in an "EditableBlock" component with an Edit icon that turns text into a textarea. Add a "Regenerate" (sparkle icon) button per block that re-triggers the AI to rewrite only that section, more concisely. Keep dark-mode styling consistent; persist changes to local state.

**Path 1, Level 3 — Live-sync architecture:**
> Remove the "Process" button. Implement a 2500ms debounce on the Transcript Input. Create a global workflow state (listening/thinking/processing/complete) in Dashboard.tsx. Column 1 shows "Juno is listening..." with a pulse icon while listening. Column 2 shows "Juno is thinking..." with a pulsing brain animation before insight cards fade in. Column 3 shows "Juno is synthesizing..." with sparkles, then transitions to character-by-character streaming. Header shows a "Synced" green checkmark only when complete.

**Path 2, Level 1 — Logic Map:**
> Add a "Map" icon (top right of each InsightCard). On hover: highlight the specific transcript sentences that led to this insight in a subtle blue background, and simultaneously highlight the matching Strategic Pillar badge. Tooltip: "Hover to see source connections." Manage via a shared hoveredInsightId state in Dashboard.tsx.

**Path 2, Level 2 — Slack/Jira command modals:**
> Add a sticky "Action Bar" pinned atop the PRD Preview column with "Share to Slack" and "Create Jira Ticket" buttons. Slack modal pre-fills a 2-sentence AI-generated executive summary (editable). Jira modal auto-extracts the Requirements section into the description field. Each has "Confirm & Send" → success toast ("Draft sent to [Tool]"). PRD content scrolls independently below the fixed bar.

**Path 2, Level 3 — AI Risk Watchdog:**
> Create a floating "Risk Alert" sidecar that slides in from the right ONLY when the AI detects a high-risk assumption. Title: "Juno's Risk Assessment," pulsing amber warning icon. In the edge function: if any insight is `notRecommended` or has alignment < 30, auto-populate a "Mitigation Plan" (e.g. "Request Platform Team Review," "Conduct User Interview"). Include a "Draft Mitigation Slack Message" quick action reusing the Share-to-Slack modal logic. Dismissible, but re-appears on new high-risk input; smooth slide-in animation.

**`trust-gaps.md` (this tool's version) output template:**
```
# Juno PM, Trust-Gap Audit

## 0. What you ran
- Path: {pathRun}
- Lovable prototype URL: {protoUrl}

## 1. Black-box gap, what changed
{gapBlackbox}

## 2. Hallucination gap, what changed
{gapHall}

## 3. Control gap, what changed
{gapControl}

## Forever takeaway
> {lesson}

## Self-review
[4-item checklist]
```

---

## Interaction logic
- Path toggle swaps the visible level cards; each level's prompt is in its own click-to-copy block with a "Copied!" flash state.
- Explicit Lovable-credit-management warning: free accounts get 2-3 prompts/day; suggests using Lovable's non-build "Chat" mode to ask questions without burning a build credit; reiterates "do not round-trip through ChatGPT."
- Diff-capture form → live markdown, persisted to `localStorage` under `m4-native-v1`; an "Example" preset fills a complete worked audit.

---

## Torq-rebuild notes

- **The two-path (Trust Ladder vs. Frictionless Architect) structure** is a strong pattern for offering the same maturity progression through two different lenses (transparency-first vs. efficiency-first) — worth keeping as a template for advanced/optional labs elsewhere in a Torq curriculum.
- **The Risk Watchdog sidecar** (Path 2 Level 3) is one of the more sophisticated "invisible AI" patterns in the whole course — an agent that stays silent until a quantified risk threshold triggers it, then proactively drafts a mitigation and hands off to a human channel. Good template for any Torq feature needing proactive-but-not-noisy AI behavior.
- **Fix the file-path collision** described above before reuse — decide whether the optional lab writes to a distinct file (e.g. `trust-gaps-native-audit.md`) or is explicitly framed as "notes only, not the deliverable."
