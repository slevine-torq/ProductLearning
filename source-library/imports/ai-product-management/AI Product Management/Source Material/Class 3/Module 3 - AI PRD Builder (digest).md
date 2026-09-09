# M3 - AI PRD Builder — Digest

**What it is:** The M3 Lab 2 workspace tool — builds Juno's "Evidence Engine" RAG architecture spec. Generates `03-rag-prd/prd.md`, the M3 final-project deliverable.

**QA:** `localStorage` present (`m3-prd-builder-v2`) ✅. Zero `__next_f` ✅. Genuine capture.

**✅ Confirms `prd.md` as the correct filename** (not `ai-prd.md`): the download function saves the file as `prd.md`, and the generated markdown's own header comment says "Paste over `03-rag-prd/prd.md`." Consistent with the Slides deck and the RAG Lab tool — see the naming discrepancy already logged in `_SESSION-STATE.md`.

---

## Structure

Two top-level tabs: **✏️ Build Yours** and **📖 Worked Example · Airbnb Smart Dispute Mediator**.

**Build Yours** — 4 input sections matching the Slides deck exactly:
1. **Data Requirements**: knowledge-base sources/quantity + sync frequency/refresh requirement.
2. **Model Requirements**: retrieval-strategy dropdown (Long Context / Modular RAG / Hybrid) + free-text justification.
3. **AI Costs & Latency**: Top-K limit + p95 latency target (free text) + retrieval-pattern dropdown (Semantic / Keyword / Hybrid).
4. **AI User Experience**: grounded-trust requirement + fail-safe behavior.

Two presets: blank, or "Load Juno example (Evidence Engine)" — full seed text below.

**Worked Example tab** — the Airbnb Smart Dispute Mediator, same 4 sections fully filled, **plus a unique added feature**: a "Why this works" annotated critique panel on the right (5 bullets explaining *why* each of Airbnb's answers is good — surgical sources, event-driven sync, justified hybrid choice, hard numbers, verbatim fail-safe script) and a mirrored "Use this when you build" self-check list. This is a more elaborate worked-example treatment than the Prompt Anatomy Builder or One-Pager Builder gave their reference examples — it teaches the *reasoning*, not just the answer.

---

## ⚠️ Important structural quirk: the output markdown does NOT mirror the 4 input sections 1:1

The generated `prd.md` restructures into **5 different sections**, some of which are **fixed boilerplate never exposed as editable fields**:

```
# AI PRD · Juno

## Problem & user          ← HARDCODED, not derived from any input field
## Solution overview        ← from Model Requirements (strategy + justification)
## Retrieval requirements (RAG)  ← merges Data Requirements + Costs pattern + UX trust + Data sync
## Requirements              ← a 3-row table built from Costs/UX fields, relabeled as "Must" priority rows
## Out of scope              ← HARDCODED, not derived from any input field
```

The "Problem & user" and "Out of scope" sections are **always the same fixed text** regardless of what the learner fills in (a generic RocketShip/Juno description and a generic "can't be cited" scope line) — they are not editable anywhere in the UI. This is worth knowing before treating the tool's output as fully learner-authored: two of five sections in every generated PRD are template boilerplate.

---

## Embedded exercise data — verbatim

### Juno example preset ("Evidence Engine")

- **Data Requirements — sources**: "Sources: RocketShip Strategy One-Pager (M2 deliverable) + last 90 days of Slack #voice-of-customer + Zendesk tickets tagged P0/P1 + Salesforce closed-lost notes. Quantity: ~600 documents total. Strategy doc is the one true authority - all other sources are evidence in support."
- **Data Requirements — sync**: "Strategy One-Pager: sync on commit (it lives in the team Notion / git). Slack + Zendesk: refresh hourly to keep recent customer signal current. Salesforce: daily sync at 02:00 UTC - lost-deal notes are a leading indicator, not a real-time channel."
- **Model Requirements — strategy**: Hybrid. **Justification**: "PMs ask both kinds of questions. Specific: 'What did the Pearson Co Oct 14 ticket cite as blocker?' - needs keyword retrieval. Vibes: 'What is the dominant frustration theme this week?' - needs semantic. Going RAG-only sacrifices narrative; long-context only sacrifices precision and budget."
- **AI Costs & Latency — Top-K/latency**: "Top-K = 8 retrieval segments per prioritization run. p95 latency target < 3s end-to-end (from 'Process' click to ranked PRD draft). At our $0.03/1k token blended cost, this lands at ~$0.07 per Juno run - acceptable for daily PM use." Pattern: Hybrid (Semantic + Keyword).
- **AI User Experience — trust**: "Every priority Juno produces (P0-P3 or notRecommended) cites at least one strategy clause AND at least one piece of evidence (ticket ID, Slack permalink, deal note ID). The PRD draft renders citations inline as footnotes the PM can click to verify."
- **AI User Experience — fail-safe**: "If retrieval returns < 3 relevant segments OR if no strategy doc is loaded, Juno does NOT produce a P0/P1 ranking. Instead it returns a clear banner: 'Insufficient evidence to recommend priority - load a strategy document or escalate to PM judgement.' This is a feature, not a failure."

### Airbnb Smart Dispute Mediator worked example

- **Data Requirements**: Sources = Listing House Rules (PDF/Text), Damage Claim Form (JSON), last 48 hours of Guest/Host Messaging History. Quantity limited to the specific booking ID to prevent cross-contamination. Sync: real-time trigger on new claim/message; House Rules must be a live production-DB pull at claim-filing time for legal accuracy.
- **Model Requirements**: Hybrid. Justification: needs both specific detail lookup (exact house-rule line, photo caption item) *and* broader conversational context (is the guest aggressive or genuinely confused).
- **AI Costs & Latency**: Top-K = 8. Justification: too many segments → slow, expensive, loses focus on key facts; keeps response under 3s.
- **AI User Experience**: Grounded trust — the AI cannot give a bare Yes/No; every decision must point to the specific rule or photo used. Fail-safe: "I don't have enough evidence to decide," routes to a human — cautious over guessing.

### Output template (fixed structure, 5 sections)
```
# AI PRD · Juno

## Problem & user
[fixed: RocketShip PMs need evidence-based prioritization...]

## Solution overview
**Retrieval strategy:** {modelStrategy}
{modelJustif}

## Retrieval requirements (RAG)
- **Sources:** {dataKb}
- **Chunking / indexing:** {costsPattern}
- **Grounding rule:** {uxTrust}
- **Freshness:** {dataSync}

## Requirements
| # | Requirement | Priority | Acceptance criteria |
| 1 | Retrieval quality and latency | Must | {costsTopk} |
| 2 | Fail-safe on empty retrieval | Must | {uxFailsafe} |
| 3 | Grounded trust | Must | {uxTrust} |

## Out of scope
[fixed: decisions that cannot be cited to a source...]
```

---

## Interaction logic

- Badges use simple "how many of the 2 fields in this section are filled" counters (`empty` / `1/2` / `done`), not regex-based grading.
- Preset loader (`applyPreset`) overwrites all 8 fields at once and re-renders.
- Airbnb tab is entirely static HTML — not wired to the state object at all, purely a reading reference (unlike the Prompt Anatomy Builder's Vibe tab, there's no "copy Airbnb into my draft" action here).
- State persists to `localStorage` under `m3-prd-builder-v2`.

---

## Torq-rebuild notes

- **Flag the fixed-boilerplate sections before reuse.** If Torq rebuilds this tool, either make "Problem & user" and "Out of scope" genuinely editable, or be explicit to learners that those two sections are templated — silently mixing authored and boilerplate content in one generated deliverable is a design smell worth fixing.
- **The "Why this works" annotated critique panel** on the Airbnb worked example is the strongest teaching device seen across all the M1–M3 builder tools — it doesn't just show a good answer, it explains *why* each answer is good against explicit criteria (surgical sourcing, event-driven sync, justified — not hand-waved — architecture choice, hard numbers, verbatim fail-safe scripts). Worth making this the standard worked-example format for all Torq builder tools going forward, replacing the simpler "here's a filled example" pattern used earlier in the course.
- **The fail-safe "insufficient evidence" banner pattern**, repeated across the Juno and Airbnb examples ("this is a feature, not a failure" / "cautious over guessing"), is a strong, repeatable UX principle for any Torq AI product spec: an AI that refuses to guess when ungrounded is more trustworthy than one that always answers.
