# The learner's local workspace

Every Torq Product Practice learner sets up one folder on their own computer, modeled directly on Product School's own final-project repo pattern (`github.com/kickingit10/PMC` — fork once, one folder per module, README dashboard, commit as you go). The difference: **a real local git repo, not a GitHub.com repo.**

## Why local git, not GitHub

Git and GitHub are two different things. Git is the version-control tool — free, works completely offline, needs no account, no sign-up, nothing but a folder and a terminal. GitHub.com is a *hosting service* for git repos, and that's the part that needs an account. Not every Torq consultant has (or wants) a GitHub account, so the workspace is designed around **git alone** — real commits, real history, entirely on the learner's own machine. GitHub is mentioned exactly once, as an optional add-on for someone who already has an account and wants an off-machine backup.

## Folder structure

```
Torq Product Practice/            ← git init this folder once
├── README.md                     ← dashboard: course list + a checkbox per task artifact
├── .gitignore
├── 01-strategic-thinking/
│   └── (each task's downloaded .md artifact lands here)
├── 02-discovery/
├── 03-analytics/
├── 04-roadmaps/
├── 05-experimentation/
└── 06-launch/
```

## Setup — three commands, no account

Walked through in the Course 0 orientation:

```bash
mkdir -p "Torq Product Practice"/{01-strategic-thinking,02-discovery,03-analytics,04-roadmaps,05-experimentation,06-launch}
cd "Torq Product Practice"
git init
```

That's the entire setup. No sign-up, no login, no internet connection required.

## Per-task workflow

1. Finish a task's takeaway artifact in TorqHub.
2. Click **Download as .md** — the file is named to match its destination (e.g. `three-pillars-backlog-audit.md`).
3. Move it into the matching numbered folder.
4. Commit:
   ```bash
   git add .
   git commit -m "Course 1, Task 1: Three Pillars Backlog Audit"
   ```
5. `git log` at any point shows real progress over time — the same benefit Product School's repo gives its students, just local-only.

## Optional: back it up on GitHub

If a learner already has a GitHub account and wants a remote copy (backup, or to share with a manager), they can add one at any point — this never blocks anything and is never required:

```bash
gh repo create --private torq-product-practice --source=. --remote=origin
git push -u origin main
```

## Fallback: no git installed at all

Rare on a modern laptop, but possible on a locked-down corporate machine. The folder structure and downloaded `.md` files still work fine without git — the learner just loses commit history. Don't design lessons around this case; it's a degraded path, not the target.

## README.md dashboard template

```md
# Torq Product Practice — my workspace

Downloaded artifacts from each task land in the matching folder below.
Check items off as you go. This repo is yours — nothing here uploads anywhere
unless you choose to push it to GitHub yourself.

## 01 · Strategic Product Thinking
- [ ] Task 1 — The Modern PM Mindset → `three-pillars-backlog-audit.md`
- [ ] Task 2 — The Skill Stack & Your Place in the Team → `skill-stack-self-assessment.md`
- [ ] Task 3 — Turning AI Output Into Strategy → `ai-prompt-escalation-reflections.md`
- [ ] Task 4 — The Product Development Life Cycle → `lifecycle-health-check.md`
- [ ] Task 5 — Your Problem Hook & Value Proposition → `problem-hook-value-proposition.md`

## 02 · Discovering Product Opportunities
- [ ] (tasks TBD)

## 03 · Analytics & Metrics for Product Decisions
- [ ] (tasks TBD)

## 04 · High-Velocity Product Roadmaps
- [ ] (tasks TBD)

## 05 · Product Experimentation
- [ ] (tasks TBD)

## 06 · Go-to-Market Launch Plans
- [ ] (tasks TBD)

---
Set up once: `cd` into this folder and run `git init`. No GitHub account needed —
that's a local command. Commit after each task (`git add . && git commit -m "..."`)
for real history, same benefit as Product School's own project-repo pattern.
Optional: if you have GitHub and want a backup/remote copy, add it as a remote and push.
```
