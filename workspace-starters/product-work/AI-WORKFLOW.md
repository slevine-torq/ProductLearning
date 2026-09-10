# AI-assisted product-work workflow

## Start a session

1. Read `AGENTS.md` and `WORKSPACE.md`.
2. Review `product-context.md`, `strategy.md`, `stakeholders.md`, and `evidence-index.md`.
3. Read the recent entries in `decisions.md` and `change-log.md`.
4. Confirm the desired outcome, approved evidence, intended deliverable, and definition of done.
5. Propose the smallest useful next step before creating a new deliverable.

Use this opening prompt:

```text
Read AGENTS.md, WORKSPACE.md, AI-WORKFLOW.md, product-context.md, strategy.md,
stakeholders.md, evidence-index.md, decisions.md, and change-log.md.

Summarize the product context, current outcome, evidence available, constraints,
open decisions, and latest change. Identify anything that conflicts or is stale.
Then recommend the smallest next step and where its output should live. Do not
modify files or an attached client codebase until I approve the scope.
```

## Do the work

- Put unreviewed thinking, meeting preparation, and scratch synthesis in `working-notes/`.
- Put approved source material or links in `research/` and register it in `evidence-index.md`.
- Put artifacts intended for review or delivery in `deliverables/`.
- Document repeated, stable routines in `workflows/` with explicit inputs, outputs, stop conditions, and human review.
- Preserve links between evidence, decisions, and deliverables.
- Pressure-test important outputs against their evidence and acceptance criteria.

## Close a session

1. Update `decisions.md` for choices that affect scope, users, design, delivery, risk, or measurement.
2. Update `change-log.md` with what changed and why.
3. Leave the next action and unresolved questions explicit.
4. Verify that no prohibited information or secrets entered the workspace.
5. Commit a coherent checkpoint when appropriate; do not push without confirming the remote.
