# Set up an AI product-work workspace

Use this guide to create a persistent, tool-neutral workspace for real product work. It gives Claude Code, Codex, Kiro, Cursor, or another approved repository-aware assistant the context and operating rules needed to help across sessions.

This workspace is not a course and does not include the ProductLearning source library. It belongs to the practitioner or approved client team and should use its own private Git repository.

## Before you begin

Confirm:

- the AI tool is approved for the engagement;
- the client information and repositories it may access;
- what must never enter the tool or Git history;
- who owns the workspace and its future repository;
- whether the workspace may contain client deliverables or only non-sensitive working notes.

## 1. Create the workspace

From a local clone of ProductLearning on Windows:

```powershell
.\scripts\new-product-workspace.ps1 `
  -Name "Client Product Workspace" `
  -Destination "$env:USERPROFILE\Documents\client-product-workspace"
```

On macOS or Linux:

```bash
./scripts/new-product-workspace.sh \
  "Client Product Workspace" \
  "$HOME/work/client-product-workspace"
```

The script:

- refuses to overwrite an existing destination;
- refuses to create the workspace inside ProductLearning;
- copies only the Torq-authored product-work template;
- initializes an independent Git repository on `main`;
- configures no remote;
- never copies restricted ProductLearning source material.

## 2. Complete the workspace boundary

Open `WORKSPACE.md` first. Record the purpose, owner, approved tools, approved information, and restrictions before adding evidence.

Then complete:

| File or folder | Purpose |
|---|---|
| `product-context.md` | Product, users, problem, outcome, scope, and constraints |
| `strategy.md` | Hypothesis, measures, choices, trade-offs, and next validation |
| `stakeholders.md` | Roles, decisions, working agreements, and alignment questions |
| `evidence-index.md` | Approved evidence, its location, what it supports, and handling rules |
| `research/` | Approved research notes or exports with source and limitations |
| `working-notes/` | Rough thinking, meeting preparation, and draft synthesis |
| `deliverables/` | Reviewed PRDs, briefs, plans, and other shareable outputs |
| `workflows/` | Reusable product routines with approved inputs and human review |
| `decisions.md` | Product decisions, evidence, ownership, and revisit triggers |
| `change-log.md` | Material workspace changes and the next action |

## 3. Open it in your assistant

Open the new workspace folder—not the ProductLearning clone—as the active project. Tell any assistant to read `AGENTS.md`; tool-specific instruction files reinforce the same policy where supported.

Start with:

```text
Read AGENTS.md, WORKSPACE.md, AI-WORKFLOW.md, product-context.md, strategy.md,
stakeholders.md, evidence-index.md, decisions.md, and change-log.md.

Do not modify files yet. Summarize the product context, current outcome, evidence,
constraints, open decisions, and latest change. Identify missing or conflicting
context. Then recommend the smallest useful next step and the file where its
output should live.
```

The assistant should be able to explain:

1. What outcome the workspace supports.
2. Which evidence it may use.
3. What information is prohibited.
4. What is known versus inferred.
5. What decision or artifact comes next.
6. Which files it may update.

If it cannot, improve the workspace files before asking it to produce a deliverable.

## 4. Use the workspace on real work

Choose a copy-ready prompt from [Starter prompts](STARTER-PROMPTS.md). Add approved evidence to the workspace or link it in `evidence-index.md`, then ask the assistant to work toward a specific outcome.

A useful rhythm is:

1. **Orient:** refresh context, evidence, constraints, and the desired outcome.
2. **Explore:** analyze evidence or draft in `working-notes/`.
3. **Decide:** record important choices and ownership in `decisions.md`.
4. **Deliver:** create a reviewable artifact in `deliverables/`.
5. **Systematize:** document a repeated, stable routine in `workflows/` when useful.
6. **Close:** update `change-log.md`, unresolved questions, and the next action.

AI output remains a draft. The practitioner is responsible for evidence quality, client confidentiality, product judgment, and final decisions.

## 5. Connect an optional private GitHub repository

Create a new, empty private repository owned by the practitioner or approved team. From the product-work workspace:

```powershell
git add .
git commit -m "Initialize product workspace"
git remote add origin https://github.com/OWNER/WORKSPACE-REPOSITORY.git
git remote -v
git push -u origin main
```

Before pushing, verify that `origin` is the intended new repository. It must not be `slevine-torq/ProductLearning`.

## 6. Verify the setup

Ask the assistant:

```text
What repository root are you using? Summarize the active workspace instructions,
approved evidence, restrictions, writable locations, Git remote, and next product
decision. Do not modify anything.
```

A correct answer identifies the independent product-work folder, respects `WORKSPACE.md`, treats attached client repositories as read-only by default, and does not propose changes to ProductLearning.

For cloning ProductLearning and opening folders in Codex, see [Connect Codex to ProductLearning](CONNECT-CODEX.md). For the broader client workflow, see [Use ProductLearning with AI on client work](CLIENT-AI-GUIDE.md).
