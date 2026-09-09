# ProductLearning

ProductLearning is Torq's private, read-only learning library for two independent programs:

1. [Product Management for Consultants](programs/product-management-for-consultants/README.md)
2. [Technical Fluency for Transform Practice](programs/technical-fluency/README.md)

The repository contains captured references, completed Torq lessons, plans for unfinished material, and clean starter workspaces. The source library is evidence—not an editable course workspace. Build in a copied starter, never inside `source-library/`.

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
```

| I want to… | Go here |
|---|---|
| Follow the consultant product-management route | [Product Management for Consultants](programs/product-management-for-consultants/README.md) |
| Follow the standalone technical-fluency program | [Technical Fluency for Transform Practice](programs/technical-fluency/README.md) |
| Build a PM course from a protected source copy | [PM course starter](course-starters/product-management-consultants/README.md) |
| Build or extend the Technical Fluency course | [Technical Fluency course starter](course-starters/technical-fluency/README.md) |
| Understand what was imported | [Import inventory](IMPORT-INVENTORY.md) |
| Understand source-use restrictions | [Source-use policy](SOURCE-USE.md) |

## Content states

| State | Meaning |
|---|---|
| **Completed** | Torq-branded lesson files exist and can be reviewed or prepared for TorqHub. |
| **Captured** | Source notes and artifacts exist, but a Torq rebuild has not been completed. |
| **Partial** | Some expected source or rebuilt material is missing; the program guide names the gap. |
| **Planned** | A specification or coverage map exists, but lesson files have not been built. |
| **Starter** | A safe, editable workspace intended to be copied into a learner-owned repository. |

## Read-only operating model

Selected collaborators receive **Read** access to this private repository. They may clone and pull it, but they should not build directly in the clone or push to this repository. To create or adapt a course:

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
- Grant learners the **Read** role through the Torq organization or a read-only team.
- Protect `main`, require owner review, and use [CODEOWNERS](.github/CODEOWNERS) for the source library and navigation.
- Do not add a public/open-source license: this repository contains mixed-provenance internal reference material.
