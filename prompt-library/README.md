# Prompt library

This is the finding aid for prompt-bearing material in the protected source capture. It catalogs a distinct prompt once, points to every known occurrence, and separates copy-ready AI prompts from system prompts, builder templates, reflection questions, and Torq adaptations.

> **Internal use only.** Product School wording remains restricted source material. Do not redistribute this library, publish its prompts, or apply an open-source license. Before using client data, confirm the engagement's approved AI tools and data-handling rules.

## Start here

| Collection | What it is best for | Catalog |
|---|---|---|
| Product Practice | Foundational product discovery, prioritization, PRDs, experimentation, and GTM | [Product Practice prompts](product-practice.md) |
| Claude Code for PM | Repository orientation, research synthesis, codebase collaboration, QA, communication, and reusable agents | [Claude Code for PM prompts](claude-code-for-pm.md) |
| AI Product Management | Prompt anatomy, system prompts, RAG, AI-native UX, agent workflows, and evals | [AI Product Management prompts](ai-product-management.md) |
| Product Leadership | Strategy, roadmaps, influence, finance, decision pressure tests, and leadership routines | [Product Leadership prompts](product-leadership.md) |

The [prompt inventory](INVENTORY.md) records every reviewed prompt-bearing source and its disposition.

## Classification

| Type | Meaning |
|---|---|
| **Copy-ready AI prompt** | Pasteable into an approved assistant after replacing bracketed data. |
| **System prompt** | Persistent role, behavior, constraints, or refusal policy for an AI product. |
| **Dynamic template** | A builder assembles the final text from form fields or workspace files. |
| **Reflection question** | A human learning prompt; it should not be mistaken for an AI instruction. |
| **Torq adaptation** | New Torq wording derived from the source and clearly separated from captured text. |

## Fidelity

| Label | Meaning |
|---|---|
| **Verbatim capture** | Character-for-character wording is reproduced from the linked source. |
| **Formatting normalized** | Wording is preserved, but HTML tags, collapsed whitespace, or list formatting are repaired. |
| **Dynamic template** | Exact output depends on learner inputs or builder state; the source fields and assembly point are linked. |
| **Torq adaptation** | Wording or structure has been changed; it is not represented as source text. |

## How to use a prompt safely

1. Choose the prompt in the relevant catalog.
2. Open the linked immutable source and read its scenario, prerequisites, and expected output.
3. Replace placeholders; remove source-specific names when adapting it.
4. Use only approved data and tools.
5. Save output in a copied [course starter](../course-starters/README.md), never in `source-library/`.
6. Treat the model's response as a draft that needs evidence and human review.

Catalog entries link to the authoritative source text rather than making a second uncontrolled prompt copy. The high-value repository-orientation prompt is reproduced verbatim in the Claude catalog and surfaced from the root README.
