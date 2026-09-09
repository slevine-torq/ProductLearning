# Pre-Class Setup — Shareable (digest)

**Type:** Standalone scroll-snap slide deck (`Pre-Class Setup (Shareable).html`), linked from the Module 1 Pre-Read but course-wide in scope (not module-specific) — filed under `Pre-course/`, not `Class 1/`.
**QA:** `scroll-snap` present, `localStorage` present (skip-state), zero `__next_f` — genuine artifact capture.

---

## What it is

A mandatory pre-course onboarding deck (~20 min) walking students through account setup, Claude Code installation, project-folder creation, and GitHub signup, before Module 1 (Get Oriented) begins. Same slide-deck engine as the Module 1 Slides artifact, minus the deck-sync BroadcastChannel script (not present in this file). Also has a fixed "← Back" button (`ps-qa-back` class, top-left, `history.back()`) — looks like capture/QA-tooling chrome rather than original course content; likely safe to ignore/strip when rebuilding.

## Structure (11 sections, in order)

1. **Hero** — "Mandatory Pre-Course Work," subtitle "about twenty minutes," 4 waypoints: (1) Anthropic Pro account, (2) Install Claude Code, (3) Create project folder & run first prompt, (4) Free GitHub account.
2. **Mandatory pre-course work** — warning tag; callout: instructor will not troubleshoot logins live, budget 20 min with buffer for install hiccups.
3. **Core tool requirement** — create an Anthropic account at claude.ai; callout: Claude Code **requires Pro ($20/mo) or higher**, free tier excluded.
4. **Using Claude Cowork?** — comparison for teams on Cowork (Anthropic's non-developer desktop tool) instead of terminal Claude Code:
   - **Works in both** (~60% of course): research synthesis (**P2**), prototyping (**P3**), writing docs (**P6**), status updates, decision briefs, prompt rigor — all prompt-based workflows.
   - **Requires Claude Code specifically**: reading codebases + running SQL (**P4, P5**), building scheduled agents + the full agent stack (**P7, P8**).
5. **Mac setup** — intro; Cowork desktop-app users can do most of the course in its "Code" tab but should still install the terminal version for later lessons (same account/files, nothing wasted).
6. **Mac steps 1–3** — Open Terminal (Cmd+Space → "Terminal"); install command; finish setup (PATH note handling).
7. **Mac steps 4–5** — verify install (`claude --version`); start + sign in (`claude`); note on macOS permission pop-ups (safe to allow, not needed for the course, changeable later in System Settings).
8. **Project folder setup** — create first project folder; run a first verification prompt.
9. **GitHub account** — sign up free at github.com; fork `pm-workspace/` template in Module 1's first lab; commit one artifact per module — the repo becomes the course portfolio. Callout: also bring one real day-job situation (feature to spec, a metric that moved, a research question) — labs are more useful with a real scenario, not just Streakly's.
10. **Troubleshooting** — 6-row reference table (PATH note is normal; sign-in fails → `claude logout` then `claude`; "command not found" → PATH fix; subscription error → confirm signed into Pro account; installer won't download → network/IT; anything else → paste exact error + macOS version via `sw_vers` into claude.ai and ask for help) plus a repeated PATH fix command block.
11. **You're ready** — completion checklist (Pro account, Claude Code installed + verified, project folder responding, GitHub account), "See you in Module 1."

## Verbatim commands (exact, for accurate reproduction)

```
curl -fsSL https://claude.ai/install.sh | sh
```
```
claude --version
```
```
claude
```
```
mkdir my-pm-workspace && cd my-pm-workspace
```
First verification prompt:
```
What can you do in this session? What files can you see?
```
PATH fix (also shown in Troubleshooting):
```
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
```

## ⚠ New discrepancy to flag — "P1–P8" curriculum labels

Section 4 (Cowork comparison) references curriculum parts **P2, P3, P4, P5, P6, P7, P8** — an 8-part numbering scheme distinct from both the "Module 1 of 6" language seen in the Module 1 Slides deck *and* the 4-class cohort structure (`class-1`–`class-4`) from the LMS JSON. Possible explanations: P-numbers are lesson-level (not module-level) labels spanning the whole course; or this deck is reused/shared across a differently-structured course version. **Not resolved — third structural clue now on the pile alongside the "Module 1 of 6" discrepancy.** Keep watching for P-numbers or module-count references in each new capture and reconcile once we've seen Class 4.

## Torq-rebuild notes

- **Highly reusable:** same slide-deck engine as Module 1 Slides (scroll-snap, nav dots, keyboard shortcuts, skip/sorter, localStorage persistence) — no BroadcastChannel deck-sync here, so this is the simpler baseline version of that engine.
- **Content is tool-onboarding specific to Claude Code** — very directly reusable for Torq if Torq's L&D also onboards people onto Claude Code; would need light edits only if Torq standardizes on a different AI tool or install path.
- **Reusable structural pattern:** the "works in both / requires the fuller tool" comparison card pair is a good template for any course that supports two skill tiers of the same tool family.
- **Strip before reuse:** the `ps-qa-back` fixed back-button — appears to be capture-tooling chrome, not original Product School content.
- **Repo/portfolio model** (fork `pm-workspace/`, commit one artifact per module) is a clean, reusable course-portfolio mechanic worth carrying into Torq's version.
