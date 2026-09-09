# M3 - Juno RAG Lab Walkthrough — Digest

**What it is:** The M3 Lab 1 workspace tool — a 4-step guided walkthrough for refactoring the M1 Juno Lovable prototype into a RAG-grounded copilot. Produces a "Diagnostic Diff" working-notes block, explicitly **not** the same file as `03-rag-prd/prd.md` (that comes from the separate AI PRD Builder).

**QA:** `localStorage` present (`juno-rag-lab-v1`) ✅. Zero `__next_f` ✅. Genuine capture.

**✅ Resolves the `prd.md` vs `ai-prd.md` naming question**: this tool's generated markdown includes the line *"Do not paste over `03-rag-prd/prd.md`. That file comes from the AI PRD Builder."* — confirming `prd.md` is the real, intended filename (matching the Slides deck, not the Notes/Final Project Brief's `ai-prd.md`).

---

## Structure — 4 steps, each with a click-to-copy block

1. **Re-baseline in Lovable** — paste the reused "Sarah, Data Analyst" test transcript (same one from the M1 Prompt Anatomy Builder) to confirm Juno still returns generic mock priorities.
2. **Refactor for strategy ingestion** — paste the **RAG Refactor Prompt** (full Lovable code-change instructions, verbatim below) to add a 4th "Strategy Document" input column and strip hardcoded pillar data.
3. **Wire the RAG backend** — paste the **Logic Ingestion Prompt** (verbatim below) to wire a real Supabase Edge Function with dual-mode analysis. Includes an explicit warning to click "Approve"/"Allow" when Lovable asks to enable Cloud/AI, otherwise Juno silently stays in mock mode.
4. **Test with + without strategy** — process the same transcript twice (Quality Mode empty, Strategy Mode with the **RocketShip Strategy One-Pager** pasted, verbatim below) and capture the diff. Includes a **troubleshooting section** for real Lovable/Vite errors encountered building this (verbatim below) plus a **Schema Fix Prompt** for a specific structured-output bug.

Below the steps: a diff-capture form (prototype URL, before/after top-3 priorities, one-line takeaway) that renders into the "Diagnostic Diff" markdown block, plus a 6-item self-review checklist and an "Example" preset that pre-fills a worked diff.

---

## Verbatim prompts and data

### RAG Refactor Prompt (paste into Lovable chat)
> Refactor my Juno prototype to add a strategy document upload and remove all hardcoded strategy data.
>
> CURRENT STATE: 3-column layout (Transcript Input, Insights Panel, PRD Preview); possibly hardcoded strategy data in `src/data/strategy.ts`; `InsightCard`/`StrategyBadge` reference hardcoded pillar IDs.
>
> REQUIRED CHANGES:
> 1. Add a 4th column (leftmost) — `StrategyDocumentInput`: textarea + file upload (.txt/.md), word count, "Strategy loaded" indicator.
> 2. Add `ActiveStrategyBadge` — shows word count, expandable to full doc, "No strategy document loaded" when empty.
> 3. Update `Dashboard.tsx` — add `strategyDocument` state, pass it to the edge function, make it optional, show a warning toast if processing without it.
> 4. Update `InsightCard.tsx` — remove hardcoded pillar lookups, display `strategicPillar` as a plain string from the AI response, handle missing strategic data gracefully, add a `notRecommended` visual treatment (red border, strikethrough, warning icon).
> 5. Update `StrategyBadge.tsx` — remove hardcoded pillar data, accept `pillarName` as a string prop, keep P0–P3 as semantic design tokens, use generic priority descriptions.
> 6. Delete any hardcoded `src/data/strategy.ts`-style files.
> 7. Update the `Insight` interface — `strategicPillar: string` (not an ID), add `notRecommended?: boolean` and `notRecommendedReason?: string`.
>
> IMPORTANT: no hardcoded company names, pillar names, or strategy content anywhere — all strategic info must come from AI analysis of the uploaded document; the UI must work with *any* strategy document.

### Logic Ingestion Prompt (paste into Lovable chat — wires the real backend)
> REQUIRED PLATFORM SETUP: enable Lovable Cloud; use the built-in backend and AI model access; implement AI processing via a Supabase Edge Function; replace any mock/simulated AI outputs with real edge-function calls.
>
> Update `analyze-transcript` to support dual-mode analysis:
> - **Strategy Mode** (strategy doc provided): the document is the only source of truth. Priority (P0–P3) is based on explicit strategy support; `strategicPillar` = extracted pillar name; `strategicAlignment` = 0–100 score; `strategicRationale` cites the document.
> - **Quality Mode** (no strategy doc): score on Quality Signals instead — Problem Clarity (0–25), Evidence Quality (0–25), Requirement Specificity (0–25), Anti-Pattern Check (0–25). Mapping: 80–100→P1, 50–79→P2, 20–49→P3, 0–19→P3 + `notRecommended`. `strategicPillar` becomes a descriptive category (e.g. "User Experience"); `strategicAlignment` = the quality score; `strategicRationale` notes it's quality-based, not strategy-based.
>
> **Anti-patterns to flag in both modes**: competitor-driven ("they have this, we need it"), vanity/optics ("make it pop"), vague requirements, arbitrary deadlines without justification, exec opinions without user evidence. Multiple anti-patterns → `notRecommended: true`.
>
> Edge function: accept `{ transcript: string, strategyDocument?: string }`, return `{ insights: Insight[], prdContent: string }`, select system prompt by mode.
>
> **Tool schema — keep it lenient** (prevents "response did not match schema" errors): only `id`, `title`, `description`, `priority` are required; `strategicPillar`, `strategicAlignment`, `strategicRationale`, `notRecommended` (default `false`), `notRecommendedReason` are optional/nullable; accept `priority` as a plain string and normalize to P0–P3 *after* parsing rather than a strict enum; instruct the model to return only the structured object, no prose; wrap the AI call in try/catch and surface a clear toast error on failure.
>
> PRD generation: with strategy → group by strategic priority, cite the document; without → group by quality score, include a quality-based-prioritization warning.

### RocketShip Strategy One-Pager (Q3 2026 — the grounding corpus)
> **North Star:** Become the fastest, most reliable analytics platform for mid-market data teams who currently rely on Excel + Salesforce.
>
> **Three Strategic Pillars:**
> 1. **Reliability First** — the platform must work, every export/report/load. Losing enterprise deals (Pearson Co, Acme) to P0 reliability bugs — CSV export crashes, 403 errors, queue overflows. Zero new feature work ships if the legacy reporting API is redlining.
> 2. **Enterprise Compliance** — win/lose on SAML/SSO, audit logs, RBAC. The Acme deal ($200k ARR) is dead without Okta SSO by Oct 1. Not optional.
> 3. **Speed-to-Insight** — mid-market analysts choose RocketShip over Salesforce because it feels fast. Anything that slows the dashboard (heavy AI summarization, 30+ second exports) is a step backwards.
>
> **What we are NOT doing this quarter:** aesthetic refreshes (dark mode, "make it pop"), competitor-mimicking AI features without user evidence, TikTok/social plumbing, dashboard summarization requiring DB sharding.
>
> **Decision rules:** reduces reliability or slows exports → P3/notRecommended · unblocks an enterprise deal with stated $ARR → P0 · exec opinion without user evidence → notRecommended · fixes a workflow blocker → P0/P1.

### Real troubleshooting notes (verbatim — valuable "what actually breaks" content)
- **"SSR rendering failed"**: a transient Vite glitch after a big refactor. Hard-refresh the preview (Cmd+Shift+R). Do NOT click "Disable SSR" or "Add SSR."
- **"Processing in Quality Mode / No strategy document loaded"**: expected — the intended warning toast on the first (no-strategy) pass.
- **"AI analysis failed: No object generated: response did not match schema"**: the real bug, caused by the tool schema marking optional fields as required on older builds. Fixed via the **Schema Fix Prompt** (same lenient-schema instructions as embedded in the Logic Ingestion Prompt, offered standalone for re-application).

### Expected result after grounding
CSV export crash jumps to **P0** (cites "Reliability First"). Dark mode and nav-bar color drop to **notRecommended** (cites "What we are NOT doing"). Every priority now defends itself with a strategy clause.

---

## Interaction logic
- Copy-to-clipboard buttons per code block with a "Copied!" state flash.
- Diff-capture form → live-rendered "Diagnostic Diff" markdown (Lovable URL + Before/Quality-Mode + After/Strategy-Mode + Takeaway), persisted to `localStorage` under `juno-rag-lab-v1`.
- "Load example" button fills a complete worked diff (P1 dark mode/nav bar → P0 CSV crash / notRecommended dark mode+nav) for demonstration.
- No regex/keyword auto-grading here (unlike M1/M2 tools) — self-review is a manual checklist only.

---

## Torq-rebuild notes

- **The dual-mode (Strategy Mode / Quality Mode) fallback design** is the most sophisticated piece of prompt engineering captured in the course so far — it defines graceful degradation (score on request-quality signals when no grounding doc exists) rather than just failing or hallucinating. Directly reusable as a pattern for any Torq AI feature that depends on optional context.
- **The lenient-schema instruction block** ("mark only these fields required... normalize after parsing, not via a strict enum") is a genuinely useful, battle-tested engineering guardrail worth keeping verbatim in any Torq prompt-engineering reference — it's the fix for a real, named class of structured-output failure.
- **The troubleshooting section distinguishing real bugs from expected behavior** (SSR glitch vs. intentional warning toast vs. actual schema bug) is a valuable template for any Torq lab tool: tell learners explicitly which errors are noise vs. signal, so they don't waste time debugging expected behavior.
- The RocketShip Strategy One-Pager's **explicit "Decision Rules"** section (if X then P0, if Y then notRecommended) is a clean example of making a strategy doc *machine-actionable*, not just readable — a good model for how Torq's own strategy docs should be written if they're meant to ground an AI assistant.
