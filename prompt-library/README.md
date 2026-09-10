# Torq AI workflow prompts

Use these Torq-authored, tool-neutral prompts with an approved repository-aware assistant such as Claude Code, Codex, Kiro, or Cursor. They help a product practitioner learn from this repository or apply its methods on a client engagement.

This is intentionally **not** a catalog or reproduction of Product School prompts. Product School material in `source-library/imports/` is restricted builder reference: do not extract, republish, or present it as Torq curriculum. These prompts are original Torq working aids.

Before using client material, confirm the engagement's approved AI tools, repository permissions, and data-handling rules. Never paste secrets, credentials, personal data, or client-confidential content into an unapproved tool.

## 1. Choose a useful route

Use this when you are not sure where to begin.

```text
Act as my product-learning guide for this repository. Do not modify files.

First ask me, one question at a time:
- What is my role and level of product experience?
- What client problem or deliverable am I working on?
- Which AI tools and data are approved for this engagement?
- Do I want to learn a concept, apply it now, build training, or lead others?

Then recommend:
1. The smallest relevant learning path.
2. No more than five repository files to read, in order.
3. A practical first session that takes no more than 60 minutes.
4. One client-safe exercise adapted to my situation.
5. The decisions that require human judgment.

Separate Torq-created guidance from restricted reference captures. Cite a repository
path for each recommendation. Do not expose or reproduce restricted source text.
```

## 2. Understand a repository as a product person

Use this inside a client repository only when you have authorized access.

```text
Do not change code or files. Give me a product-manager-level tour of this repository.

Explain:
1. What the product or service appears to do, with evidence.
2. The major folders and how they relate to the user experience.
3. The likely entry points, key data objects, integrations, and operational boundaries.
4. Where the feature [NAME THE FEATURE] appears to live.
5. What I would need to clarify before writing a responsible ticket for that feature.

For every claim, cite the relevant file path and say when you are inferring. Do not
reveal secrets or copy sensitive values. End with questions for engineering rather
than pretending the code answers product or business decisions it cannot establish.
```

## 3. Turn evidence into a decision brief

```text
Read only the approved files I identify. Do not modify them.

Create a decision brief for [DECISION] with:
- the decision and why it is needed now;
- evidence, each item linked to its source file;
- assumptions and unanswered questions;
- viable options and their trade-offs;
- a recommendation and confidence level;
- the smallest next test or validation step.

Keep facts, interpretations, and recommendations visibly separate. Do not invent
customer evidence or fill gaps with generic claims. Flag any input that may contain
sensitive client information before quoting it.
```

## 4. Pressure-test a specification

```text
Review [SPEC PATH] without editing it. Act as a skeptical product, engineering,
design, security, and operations review group.

Identify:
1. Ambiguous user behavior or acceptance criteria.
2. Missing edge cases, failure states, permissions, or data handling.
3. Dependencies and assumptions not supported by repository evidence.
4. Questions that must be answered before implementation.
5. A proposed revision list ranked as blocking, important, or optional.

Cite repository evidence. Do not broaden scope silently, and do not rewrite the
spec until I approve the proposed changes.
```

## 5. Continue building this curriculum safely

Use this only in a copied course starter, not in the canonical ProductLearning clone.

```text
Read AGENTS.md, the course plan, source index, progress log, and decision log.
Do not modify the canonical source library.

Tell me:
1. What has been completed and what remains.
2. Which Torq syllabus or coverage-map requirement should be addressed next.
3. Which restricted sources may be consulted as evidence but must not be reproduced.
4. The smallest draft you recommend creating in modules/ or outputs/.
5. How we will verify originality, accuracy, source boundaries, and completion.

Wait for my approval of the proposed draft scope before writing. Record meaningful
curriculum decisions in decisions.md and progress in progress.md.
```

## How these prompts relate to the learning paths

- **Learn:** start with the route selector and the relevant [program guide](../README.md#start-here).
- **Apply at a client:** copy only the relevant Torq prompt into an approved client workspace; do not copy the ProductLearning source library.
- **Build training:** create an independent [course starter](../course-starters/README.md), then use the curriculum-continuation prompt.
- **Lead others:** use the same workflows to review evidence and decisions, while keeping accountability with people.

AI output is a draft. The practitioner remains responsible for client confidentiality, evidence quality, product judgment, and final decisions.
