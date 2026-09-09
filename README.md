# ProductLearning

ProductLearning is Torq's private, read-only learning library for two independent programs:

1. [Product Management for Consultants](programs/product-management-for-consultants/README.md)
2. [Technical Fluency for Transform Practice](programs/technical-fluency/README.md)

The repository contains captured references, completed Torq lessons, plans for unfinished material, and clean starter workspaces. The source library is evidence—not an editable course workspace. Build in a copied starter, never inside `source-library/`.

## Understand this repository with an AI assistant

Open this repository in a repository-aware assistant and start with this tool-neutral orientation prompt:

```text
I'm a product manager getting oriented to this repository. Do not modify files.
Give me a PM-level tour:
1. What this repository is for in one sentence.
2. How the two programs differ and who each is for.
3. What each major folder contains.
4. Which files are current guidance versus immutable source or history.
5. Where work is complete, partial, or planned.
6. The best next step for [learning / building / continuing Scott's work].
Cite repository paths for every recommendation. If I want to create content,
direct me to a copied course starter.
```

The source course also includes an exact, feature-specific [Habitica/Streakly GitHub codebase-tour prompt](<source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p4l1-codebase-tour>). It is reproduced with provenance in the [Claude Code for PM prompt catalog](prompt-library/claude-code-for-pm.md#cc-16--pm-level-github-codebase-tour).

## Start here

```mermaid
flowchart TD
    A[Choose a program] --> PM[Product Management for Consultants]
    A --> TF[Technical Fluency for Transform Practice]
    PM --> PML[Follow the tiered learning path]
    PM --> PMB[Build or adapt a PM course]
    TF --> TFL[Follow the seven-course program]
    TF --> TFB[Build or extend Technical Fluency]
    PML --> R[Read from the protected source library]
    TFL --> R
    PMB --> CP[Copy the matching course starter]
    TFB --> CP
    CP --> G[Initialize your own private Git repository]
    G --> AI[Open it in a repository-aware AI assistant]
    click PM "programs/product-management-for-consultants/README.md" "Open Product Management for Consultants"
    click TF "programs/technical-fluency/README.md" "Open Technical Fluency"
    click PML "programs/product-management-for-consultants/README.md#choose-your-route" "Choose the PM learning route"
    click TFL "programs/technical-fluency/README.md#seven-course-map" "Open the Technical Fluency map"
    click PMB "course-starters/product-management-consultants/README.md" "Open the PM course starter"
    click TFB "course-starters/technical-fluency/README.md" "Open the Technical Fluency starter"
    click R "source-library/STATUS.md" "Read source status"
    click CP "course-starters/README.md" "Choose a starter"
```

| I want to… | Go here |
|---|---|
| Follow the consultant product-management route | [Product Management for Consultants](programs/product-management-for-consultants/README.md) |
| Follow the standalone technical-fluency program | [Technical Fluency for Transform Practice](programs/technical-fluency/README.md) |
| Pick up the curriculum build where Scott stopped | [Pick up here](PICK-UP-HERE.md) |
| See what is current, contradictory, or historical | [Curriculum coherence audit](CURRICULUM-AUDIT.md) |
| Find captured prompts by course and type | [Prompt library](prompt-library/README.md) |
| Understand TorqHub's learning structure | [How Torq learning is structured](TORQ-LEARNING-STRUCTURE.md) |
| Build a PM course from a protected source copy | [PM course starter](course-starters/product-management-consultants/README.md) |
| Build or extend the Technical Fluency course | [Technical Fluency course starter](course-starters/technical-fluency/README.md) |
| Understand what was imported | [Import inventory](IMPORT-INVENTORY.md) |
| Know which captured files to surface | [Source library status](source-library/STATUS.md) |
| Understand source-use restrictions | [Source-use policy](SOURCE-USE.md) |
| Configure safe learner access | [Access and protection](ACCESS.md) |

## Content states

| State | Meaning |
|---|---|
| **Completed** | Torq-branded lesson files exist and can be reviewed or prepared for TorqHub. |
| **Captured** | Source notes and artifacts exist, but a Torq rebuild has not been completed. |
| **Partial** | Some expected source or rebuilt material is missing; the program guide names the gap. |
| **Planned** | A specification or coverage map exists, but lesson files have not been built. |
| **Starter** | A safe, editable workspace intended to be copied into a learner-owned repository. |

## Read-only operating model

The intended model is for selected collaborators to receive **Read** access. They may clone and pull, but should not build directly in the clone or push to this repository. The repository's current GitHub plan does not support private-repository branch protection, so do not add learners until a read-only role can be verified; see [Access and protection](ACCESS.md).

To create or adapt a course:

```powershell
.\scripts\new-course.ps1 -Program product-management-consultants -Name "My PM Course" -Destination "C:\work\my-pm-course"
```

```bash
./scripts/new-course.sh product-management-consultants "My PM Course" "$HOME/work/my-pm-course"
```

Replace `product-management-consultants` with `technical-fluency` for the other starter. The scripts refuse to overwrite an existing destination, copy only the starter, initialize an independent Git repository, and do not configure a remote.

After creation, open the new folder in your chosen AI assistant and ask:

> Read the repository instructions and source index. Explain the course-building workflow, the sources I can use, and where you are allowed to write.

## Maintainer controls

- Keep the GitHub repository private.
- Grant learners the **Read** role only after the repository is on a GitHub owner/plan that supports granular private-repository permissions.
- Protect `main`, require owner review, and enforce [CODEOWNERS](.github/CODEOWNERS) after branch protection becomes available.
- Do not add a public/open-source license: this repository contains mixed-provenance internal reference material.
