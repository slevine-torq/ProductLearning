# Starter prompts

These Torq-authored prompts help product practitioners use ProductLearning with Claude Code, Codex, Kiro, Cursor, or another approved repository-aware assistant. Choose the prompt closest to your goal and replace the bracketed text.

These prompts do not reproduce Product School material. Treat `source-library/imports/` as restricted builder reference, not learner-facing content. Before using client information, confirm the approved AI tool, repository access, and data-handling rules.

## Begin every client task with this context

```text
My role is [ROLE].
My desired client outcome is [OUTCOME].
My approved AI tool is [TOOL].
I may use [APPROVED DATA, FILES, OR REPOSITORIES].
I may not share [RESTRICTIONS].

Use evidence from approved sources, cite repository paths, label inference, and
keep decisions that require human or client judgment explicit.
```

## Learn

### 1. Find my path

```text
Read AGENTS.md, README.md, CLIENT-AI-GUIDE.md, and the two program guides.
Do not modify files or open source-library/imports.

Ask me about my role, current client responsibility, goal, available time, and
technical confidence. Then recommend the smallest relevant completed Torq path.
Give me no more than five items in order, explain why each matters, and propose
a first session that takes no more than 60 minutes.
```

### 2. Explain a product concept

```text
Teach me [CONCEPT] using learner-ready Torq material in this repository.
Explain it in plain language, give me one client-relevant example, and ask me one
question that tests whether I can apply it. Cite the exact lesson or guide used.
Do not use restricted source captures as learner-facing material.
```

### 3. Build a short learning plan

```text
Create a [ONE-WEEK / TWO-WEEK / 30-DAY] learning plan for [GOAL]. Use only
completed Torq lessons and clearly labeled planned material. Keep each session
under [TIME LIMIT]. For every session, name the lesson, expected takeaway,
practice activity, and evidence that I learned it. Cite repository paths.
```

### 4. Translate a technical topic for a product person

```text
Explain [TECHNICAL TOPIC] at the level a product practitioner needs for a client
conversation. Cover what it is, why it matters to product decisions, questions
to ask engineering, and common misunderstandings. Use the Technical Fluency
program when relevant and cite repository paths. Do not pretend I need to become
an engineer to participate responsibly.
```

## Apply

### 5. Understand an approved client repository

```text
Do not modify files. Give me a product-manager-level tour of this authorized
repository. Explain what the product appears to do, how the major folders relate
to the user experience, the important data objects and integrations, and where
[FEATURE OR WORKFLOW] appears to live. Cite a file path for every claim, label
inference, avoid exposing secrets, and end with questions I should ask engineering.
```

### 6. Turn research into evidence

```text
Analyze the approved research in [PATHS]. Do not modify the originals. Separate
direct evidence, themes, contradictions, assumptions, and unanswered questions.
For each finding, cite its source and state confidence. End with the three most
important product implications and the next evidence we should collect. Do not
invent customer quotes, counts, or consensus.
```

### 7. Draft a product artifact

```text
Using only the approved evidence in [PATHS], draft a [PRD / USER STORY / ROADMAP
OPTION / EXPERIMENT PLAN / DECISION BRIEF] for [OUTCOME]. Separate facts,
assumptions, decisions, risks, and open questions. Cite evidence inline. Identify
missing inputs before filling gaps, and save nothing until I approve the outline
and destination.
```

### 8. Pressure-test a PRD or specification

```text
Review [DOCUMENT PATH] without editing it. Evaluate it from product, engineering,
design, security, data, operations, and user perspectives. Identify ambiguous
behavior, missing acceptance criteria, edge cases, dependencies, unsupported
assumptions, and decisions that need an owner. Rank findings as blocking,
important, or optional and cite repository evidence.
```

### 9. Prepare for an engineering conversation

```text
Help me prepare for a conversation with engineering about [TOPIC OR DECISION].
Using the approved repository and Technical Fluency guidance, give me the context
I should understand, five useful questions, likely trade-offs, terms I should use
carefully, and decisions the group needs to make. Cite evidence and distinguish
technical facts from product choices.
```

### 10. Check an AI-generated deliverable

```text
Evaluate [OUTPUT PATH] against [SOURCE PATHS OR ACCEPTANCE CRITERIA]. Check factual
grounding, completeness, internal consistency, unsupported claims, sensitive
information, and whether the recommendation follows from the evidence. Produce
a pass / revise / block decision with cited findings. Do not repair the output
until I approve the revision plan.
```

## Lead

### 11. Create a decision brief

```text
Prepare an executive decision brief for [DECISION]. Include why the decision is
needed now, evidence, options, trade-offs, recommendation, confidence, risks,
decision owner, and next validation step. Keep it concise and cite each factual
claim. State what remains uncertain and what requires client judgment.
```

### 12. Evaluate an AI-product opportunity

```text
Assess [AI-PRODUCT OPPORTUNITY] using approved evidence. Explain the user problem,
why AI may or may not be appropriate, required data and system capabilities,
quality and evaluation needs, human ownership, failure modes, cost and latency
trade-offs, governance concerns, and the smallest responsible test. Separate
current Torq guidance from curriculum areas that are still planned.
```

## Build

### 13. Continue the curriculum

Use this only in a copied course starter.

```text
Read AGENTS.md, course-plan.md, source-index.md, progress.md, and decisions.md.
Do not modify the canonical ProductLearning repository or source library.

Summarize what is complete, identify the next syllabus or coverage-map gap, name
the restricted references that may inform but must not be reproduced, and propose
the smallest original Torq draft to create. Include acceptance checks for accuracy,
originality, source boundaries, and completion. Wait for approval before writing.
```

## Prompt-writing pattern

When adapting a prompt, specify the outcome, relevant context, allowed evidence, constraints, expected output, and what success means. Keep tool-specific instructions only when they materially change the task. This follows the outcome-first approach in the [official OpenAI model guidance](https://developers.openai.com/api/docs/guides/latest-model?model=gpt-5.5#prompting).

For the guided client-work intake, see [Use ProductLearning with AI on client work](CLIENT-AI-GUIDE.md). For longer reusable workflows, see [Torq AI workflow prompts](prompt-library/README.md).
