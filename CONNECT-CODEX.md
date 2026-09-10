# Connect Codex to ProductLearning

Use this guide to let Codex answer questions about ProductLearning or help continue a course build safely.

The key idea is simple: **Git connects a folder to GitHub; Codex opens that local folder as a project.** Codex does not need to own the canonical repository. It reads the checked-out files and automatically loads the root `AGENTS.md` instructions.

> ProductLearning is the read-only source of truth. New course work belongs in a learner-owned workspace and, optionally, a separate private GitHub repository.

## Before you start

You need:

1. GitHub access to the private `slevine-torq/ProductLearning` repository.
2. [Git](https://git-scm.com/downloads) installed.
3. The [ChatGPT desktop app](https://learn.chatgpt.com/docs/app), signed in with an account that can use Codex.
4. Optional: [GitHub CLI](https://cli.github.com/) for easier GitHub authentication. On Windows, the Codex documentation recommends `gh auth login` after installation.

The [official Codex quickstart](https://learn.chatgpt.com/docs/quickstart?setup=app) explains how to install the app, select Codex, and open a folder. The [Windows guide](https://learn.chatgpt.com/docs/windows/windows-app) covers Git and GitHub CLI integration.

## Path 1: Ask questions about the library

### 1. Clone the canonical repository

Open a terminal in the parent folder where you keep work repositories:

```powershell
git clone https://github.com/slevine-torq/ProductLearning.git
cd ProductLearning
```

Because the repository is private, GitHub will require an account that has been granted access. If GitHub authentication is not already configured, run `gh auth login` or complete Git's browser sign-in flow.

### 2. Open the folder in Codex

1. Open the ChatGPT desktop app and sign in.
2. Select **Codex**.
3. Choose **Add new project** or press **Ctrl+O** on Windows.
4. Select the cloned `ProductLearning` folder.
5. Keep **Ask for approval** enabled so Codex remains sandboxed to the selected project and asks before elevated actions.

Codex reads [AGENTS.md](AGENTS.md) automatically when the project starts. That file tells it that `source-library/` is immutable and that question-answering is the default behavior.

### 3. Start with this prompt

```text
Read AGENTS.md, README.md, CURRICULUM-AUDIT.md, and source-library/STATUS.md.
Do not modify files. Give me a short tour of the two learning programs, tell me
what is complete versus planned, and recommend where I should start based on my
role and goal. Cite repository paths for every recommendation.
```

Then ask normal questions such as:

- “What should a Tier 2 consultant complete before owning a product workstream?”
- “Where is product research first taught and where is it reinforced?”
- “Show me the prompts for becoming familiar with a GitHub repository.”
- “What is the next unfinished Technical Fluency lesson?”

To receive later library updates without changing local history:

```powershell
git pull --ff-only
```

## Path 2: Continue building in your own repository

Do not draft inside the canonical clone. Create an independent workspace from one of its starters.

### 1. Create the workspace

From the cloned ProductLearning folder on Windows:

```powershell
.\scripts\new-course.ps1 `
  -Program product-management-consultants `
  -Name "My PM Course" `
  -Destination "$env:USERPROFILE\Documents\my-pm-course"
```

For Technical Fluency, change `-Program` to `technical-fluency`.

On macOS or Linux:

```bash
./scripts/new-course.sh technical-fluency "My Technical Fluency Course" "$HOME/work/my-technical-fluency-course"
```

The script refuses to overwrite an existing folder, initializes a new Git repository on `main`, and configures no remote.

### 2. Open the new workspace in Codex

Use **Add new project** and select the new learner workspace—not the canonical ProductLearning clone. Start with:

```text
Read AGENTS.md, AI-WORKFLOW.md, course-plan.md, and source-index.md.
This is my writable course workspace. The ProductLearning clone at
[PASTE THE FULL LOCAL PATH] is read-only evidence. Explain the next build step,
the sources you need, and the files you are allowed to change. Do not draft yet.
```

If Codex asks for access to the separate ProductLearning folder, grant only the access needed to read the sources. Do not approve changes to that folder.

### 3. Connect the learner workspace to its own private GitHub repository

Create a new, empty **private** GitHub repository owned by the learner or approved team. Then run these commands from the learner workspace:

```powershell
git add .
git commit -m "Initialize course workspace"
git remote add origin https://github.com/OWNER/LEARNER-REPOSITORY.git
git push -u origin main
```

Verify the destination before pushing:

```powershell
git remote -v
```

The learner repository must appear as `origin`. `slevine-torq/ProductLearning` must **not** be the learner workspace's writable remote.

## Optional: use Codex CLI

The desktop app is the recommended route for this library. A CLI user can instead authenticate and launch Codex from a local checkout:

```powershell
codex login
codex --cd "C:\path\to\ProductLearning"
```

Use the canonical checkout for read-only questions and the learner workspace for changes. Codex CLI and the desktop app both load repository `AGENTS.md` guidance at session start; restart the session after changing instruction files.

## Verify the connection

Ask Codex:

```text
What repository root are you using? Summarize the active AGENTS.md instructions,
identify the Git remote, and tell me whether this is the canonical read-only
library or a writable learner workspace. Do not modify anything.
```

A correct answer should show:

- the expected local folder;
- ProductLearning described as immutable/read-only, or the copied starter described as writable;
- the correct `origin` remote;
- no proposal to edit `source-library/imports/`.

## Common problems

| Problem | Fix |
|---|---|
| GitHub says the repository does not exist | Confirm the user accepted the private-repository invitation and is signed into the correct GitHub account. |
| Codex cannot find `AGENTS.md` | Confirm the selected folder is the Git root, then start a new Codex task. |
| Codex cannot read the separate source clone | Provide its full local path and approve read access when requested, or ask questions from a task opened directly in ProductLearning. |
| Git controls are missing in Codex | Install native Git. Install GitHub CLI and run `gh auth login` for GitHub-specific functionality. |
| The learner workspace points to ProductLearning | Stop before pushing, remove the incorrect remote, and add the learner's private repository as `origin`. |

For repository permissions and the canonical access model, see [Access and protection](ACCESS.md).
