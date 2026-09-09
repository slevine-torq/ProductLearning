# AI Product Management prompt catalog

Internal-use finding aid. Use the [curriculum audit](../CURRICULUM-AUDIT.md#ai-product-management) when notes, slides, and builders disagree. The live builders and fuller slide frameworks govern the future Torq rebuild.

## Prompting and system behavior

| ID | Type | Fidelity | Prompt asset | Source |
|---|---|---|---|---|
| AIPM-01 | Copy-ready AI prompt | Verbatim capture | Zero-shot example | [M1 shareable slides](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - Slides (Shareable) (digest).md>) |
| AIPM-02 | Copy-ready AI prompt | Verbatim capture | Few-shot example | [M1 shareable slides](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - Slides (Shareable) (digest).md>) |
| AIPM-03 | Copy-ready AI prompt | Verbatim capture | Chain-of-thought teaching example | [M1 shareable slides](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - Slides (Shareable) (digest).md>) |
| AIPM-04 | System prompt | Verbatim capture | Juno system-prompt seed | [M1 shareable slides](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - Slides (Shareable) (digest).md>) |
| AIPM-T01 | Dynamic template | Dynamic template | Role + Task + Format + Rules Lovable prompt | [Prompt Anatomy Builder](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - Prompt Anatomy Builder (digest).md>) |
| AIPM-05 | Copy-ready AI prompt | Verbatim capture | Align prototype UI to an uploaded brand screenshot | [Prompt Anatomy Builder](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - Prompt Anatomy Builder (digest).md>) |
| AIPM-06 | Dynamic template | Dynamic template | Match a named company's visual language | [Prompt Anatomy Builder](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - Prompt Anatomy Builder (digest).md>) |
| AIPM-R01 | Reflection question | Verbatim capture | M1 reflection questions | [M1 shareable slides](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - Slides (Shareable) (digest).md>) |

### AIPM-S01 — Complete Juno system-prompt seed

- Type: System prompt
- Fidelity: **Verbatim capture**
- Source: [M1 System Prompt Configurator, “Embedded seeds”](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 1/Module 1 - System Prompt Configurator (digest).md>)

The linked source preserves the exact five-section seed. Its required components are:

- role and objective: Juno is a risk watchdog and strategic partner, not an autonomous executor;
- context: only approved Slack, Notion, and Jira surfaces;
- guardrails: cite source IDs, mark ambiguity, never invent sensitive facts, draft rather than send, and do not modify Jira;
- output contracts: bounded Markdown tables, PRDs, or grouped synthesis;
- refusal and handoff: external publishing, missing ARR, legal/regulatory work, and low-confidence P0 risk.

This entry is cataloged separately from AIPM-04 because the Configurator seed is the complete system artifact, while the slide example teaches prompt anatomy.

## RAG and AI-native implementation prompts

| ID | Type | Fidelity | Outcome | Source |
|---|---|---|---|---|
| AIPM-07 | Copy-ready AI prompt | Verbatim capture | Refactor Juno to ingest an arbitrary strategy document and remove hardcoded strategy | [M3 RAG Lab, “RAG Refactor Prompt”](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 3/Module 3 - Juno RAG Lab Walkthrough (digest).md>) |
| AIPM-08 | Copy-ready AI prompt | Verbatim capture | Wire a real edge function with Strategy Mode, Quality Mode, anti-pattern checks, and lenient schema | [M3 RAG Lab, “Logic Ingestion Prompt”](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 3/Module 3 - Juno RAG Lab Walkthrough (digest).md>) |
| AIPM-09 | Copy-ready AI prompt | Verbatim capture | Path 1 L1: strategic traceability | [M4 AI-Native Lab](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 4/Module 4 - Juno AI-Native Lab (digest).md>) |
| AIPM-10 | Copy-ready AI prompt | Verbatim capture | Path 1 L2: modular editable PRD | [M4 AI-Native Lab](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 4/Module 4 - Juno AI-Native Lab (digest).md>) |
| AIPM-11 | Copy-ready AI prompt | Verbatim capture | Path 1 L3: live-sync architecture | [M4 AI-Native Lab](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 4/Module 4 - Juno AI-Native Lab (digest).md>) |
| AIPM-12 | Copy-ready AI prompt | Verbatim capture | Path 2 L1: source Logic Map | [M4 AI-Native Lab](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 4/Module 4 - Juno AI-Native Lab (digest).md>) |
| AIPM-13 | Copy-ready AI prompt | Verbatim capture | Path 2 L2: reviewed Slack/Jira action modals | [M4 AI-Native Lab](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 4/Module 4 - Juno AI-Native Lab (digest).md>) |
| AIPM-14 | Copy-ready AI prompt | Verbatim capture | Path 2 L3: threshold-triggered AI Risk Watchdog | [M4 AI-Native Lab](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 4/Module 4 - Juno AI-Native Lab (digest).md>) |

The standalone schema-fix block is not a second prompt: it repeats the lenient-schema instructions inside AIPM-08 and is listed as another occurrence of that entry.

## Builder and reflection index

| ID | Type | Canonical interpretation | Source |
|---|---|---|---|
| AIPM-T02 | Dynamic template | AI Strategy one-pager; use mechanism and business-outcome lenses as separate layers | [M2 Strategy Builder](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 2/Module 2 - AI Strategy One-Pager Builder (digest).md>) |
| AIPM-T03 | Dynamic template | User Workflow / Technical AI Solution / Business Outcome mapper using Assist/Copilot/Agent | [M2 Three-Layer Mapper](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 2/Module 2 - Three-Layer Model Mapper (digest).md>) |
| AIPM-T04 | Dynamic template | `prd.md` using the seven-category AI PRD taxonomy | [M3 AI PRD Builder](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 3/Module 3 - AI PRD Builder (digest).md>) |
| AIPM-T05 | Dynamic template | Four-pillar AI user flow | [M4 User Flow Architect](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 4/Module 4 - AI User Flow Architect (digest).md>) |
| AIPM-T06 | Dynamic template | Required trust-gap audit; canonical `04-ai-ux/trust-gaps.md` | [M4 Trust Gap Checker](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 4/Module 4 - AI-UX Trust Gap Checker (digest).md>) |
| AIPM-T07 | Dynamic template | Four-pillar AWSpec: Actors / Pattern Plan / Memory / Tools; explicitly no AI copy/paste | [M5 AWSpec Builder](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 5/Module 5 - Agent Workflow Spec Builder (digest).md>) |
| AIPM-T08 | Dynamic template | Eval stack and human rubric | [M6 Eval Stack Designer](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 6/Module 6 - Eval Stack Designer (digest).md>) · [Human Evaluation Rubric Builder](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 6/Module 6 - Human Evaluation Rubric Builder (digest).md>) |
| AIPM-R02 | Reflection question | Five-section execution plan self-critique; not presented as a ChatGPT prompt | [Final Deliverables Builder](<../source-library/imports/ai-product-management/AI Product Management/Source Material/Class 6/Final Project Deliverables Builder (digest).md>) |

## Naming safeguards for a future Torq adaptation

- Use **Execution Ownership Modes** for AI-alone / AI+human / human-alone.
- Use **Latency–Cost–Accuracy Trade-off Triangle** for system trade-offs.
- Use `trust-gaps-native-audit.md` for the optional M4 lab so it cannot overwrite the required trust-gap artifact.
- Label Prompt → Model → Data → Architecture as a **Torq synthesis**, not verbatim Product School source.
