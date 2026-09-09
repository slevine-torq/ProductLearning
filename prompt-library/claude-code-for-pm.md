# Claude Code for PM prompt catalog

Internal-use finding aid. The [Streakly scenario](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md>) is the authoritative prompt sequence. It contains four confirmed live-class parts plus an extended artifact through Part 8.

## Start with a repository

### CC-16 — PM-level GitHub codebase tour

- Type: Copy-ready AI prompt
- Fidelity: **Verbatim capture**
- Source: [Streakly P4L1 — Codebase tour](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p4l1-codebase-tour>)
- Use: Orient a PM to a real repository, map a feature to the implementation, and discover spec constraints before kickoff.

```text
Query this GitHub repo directly:
https://github.com/HabitRPG/habitica

I am a PM working on a Comeback screen feature, an in-app experience shown
when a user breaks a streak, offering a best-streak stat, a 60-second comeback
lesson, and a one-tap streak-freeze.

Do three things:

1. Give me a PM-level tour:
- What this product does in one sentence
- How the codebase is organized, what each major folder does
- The 3 most important files I should know about as a PM
- The key data models and what they tell me about product decisions

2. Map the Comeback screen feature to the codebase:
- Where would this feature live in the existing structure?
- What existing components (streaks, tasks, notifications) would it touch or depend on?
- What is the blast radius, what else could break if this feature ships with a bug?

3. Flag anything that would affect how I write the spec:
- Any data that does not exist yet that the feature needs (e.g. a streak-freeze field)
- Any existing constraints I should call out in the ticket
- The one thing engineers will ask that I should answer before I schedule the kickoff

Save your summary to docs/codebase-summary.md.
```

For an unfamiliar repository, replace the URL, role, feature, and output path. If you only have read access, remove the last save instruction or save in your own copied workspace.

### CC-00 — Environment visibility check

- Type: Copy-ready AI prompt
- Fidelity: Verbatim capture
- Source: [Pre-Class Setup](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/Pre-course/artifacts/Pre-Class Setup (digest).md>)

```text
What can you do in this session? What files can you see?
```

## Confirmed live-class sequence: Parts 1–4

Each row is one distinct prompt. The source link opens the prompt body and its scenario context.

| ID | Source lesson | Type | Fidelity | Outcome |
|---|---|---|---|---|
| CC-01 | [P1L1 Slack thread](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p1l1-the-slack-thread>) | Copy-ready AI prompt | Verbatim capture | Turn an ambiguous thread into a PRD skeleton in `project.md` |
| CC-02 | [P1L2 AI Interview](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p1l2-the-ai-interview>) | Copy-ready AI prompt | Verbatim capture | Interview the PM to expose assumptions and missing context |
| CC-03 | [P1L3 CLAUDE.md](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p1l3-claudemd>) | Copy-ready AI prompt | Verbatim capture | Confirm persistent project context and working rules |
| CC-04 | [P1L4 Three Core Files](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p1l4-your-three-core-files>) | Copy-ready AI prompt | Verbatim capture | Create project, strategy, and change-log foundations |
| CC-05 | [P1L5 First Reusable Skill](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p1l5-your-first-reusable-skill>) | Copy-ready AI prompt | Verbatim capture | Create a weekly-status skill |
| CC-06 | [P2L1 Interview excerpts](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p2l1-interview-excerpts>) | Copy-ready AI prompt | Verbatim capture | Synthesize interviews into themes and decisions |
| CC-07 | [P2L2 NPS verbatims](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p2l2-nps-verbatims>) | Copy-ready AI prompt | Verbatim capture | Analyze verbatims and preserve evidence |
| CC-08 | [P2L3 Competitive research](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p2l3-competitive-research>) | Copy-ready AI prompt | Verbatim capture | Research competitors and build a matrix |
| CC-09 | [P2L3 Bonus Reddit sentiment](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p2l3-bonus-reddit-sentiment>) | Copy-ready AI prompt | Verbatim capture | Add recent qualitative market signals |
| CC-10 | [P2L4 Decision brief inputs](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p2l4-decision-brief-inputs>) | Copy-ready AI prompt | Verbatim capture | Combine research into a decision brief |
| CC-11 | [P3L1 Prototype brief](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p3l1-prototype-brief>) | Copy-ready AI prompt | Verbatim capture | Convert evidence into prototype requirements |
| CC-12 | [P3L2 Usability testing](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p3l2-usability-testing>) | Copy-ready AI prompt | Verbatim capture | Plan a focused usability test |
| CC-13 | [P3L2a Agentic Interview](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p3l2a-agentic-interview>) | Copy-ready AI prompt | Verbatim capture | Simulate a structured prototype interview |
| CC-14 | [P3L3 Hypothesis](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p3l3-hypothesis>) | Copy-ready AI prompt | Verbatim capture | Write an evidence-backed hypothesis |
| CC-15 | [P3L4 Triad session](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p3l4-triad-session>) | Copy-ready AI prompt | Verbatim capture | Prepare an effective product/design/engineering triad |
| CC-16 | [P4L1 Codebase tour](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p4l1-codebase-tour>) | Copy-ready AI prompt | Verbatim capture | Orient to a GitHub repository and map a feature |
| CC-17 | [P4L1.5 Stakeholder profiles](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p4l15-beta-build-your-stakeholder-profiles>) | Dynamic template | Verbatim capture | Build evidence-based working profiles |
| CC-18 | [P4L2 Spec readiness](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p4l2-spec-readiness>) | Copy-ready AI prompt | Verbatim capture | Pressure-test the spec from engineering's viewpoint |
| CC-19 | [P4L3 Design review](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p4l3-design-review>) | Copy-ready AI prompt | Verbatim capture | Check prototype and research alignment |
| CC-20 | [P4L4 QA and launch](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p4l4-qa-and-launch>) | Copy-ready AI prompt | Verbatim capture | Create implementation and launch QA |

## Extended Streakly artifact: Parts 5–8

These prompts are valuable self-directed continuation. They are **not confirmed as live classes**.

| ID | Source lesson | Type | Fidelity | Outcome |
|---|---|---|---|---|
| CC-21 | [P5L1 Answers without SQL](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p5l1-getting-answers-from-data-without-writing-sql>) | Copy-ready AI prompt | Verbatim capture | Analyze a published data sheet |
| CC-22 | [P5L2 Diagnose metric movement](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p5l2-diagnosing-what-moved-a-metric>) | Copy-ready AI prompt | Verbatim capture | Diagnose likely causes and evidence gaps |
| CC-23 | [P5L3 Decision recommendation](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p5l3-writing-recommendations-that-get-decisions>) | Copy-ready AI prompt | Verbatim capture | Write a decision-oriented recommendation memo |
| CC-24 | [P5L4 Experiment design](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p5l4-designing-experiments-you-can-actually-run>) | Copy-ready AI prompt | Verbatim capture | Design a runnable experiment |
| CC-25 | [P6L1 PRD process](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p6l1-a-prd-process-that-improves-every-time>) | Copy-ready AI prompt | Verbatim capture | Draft a traceable PRD from workspace evidence |
| CC-26 | [P6L2 Pressure-test docs](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p6l2-pressure-testing-docs-before-the-meeting>) | Copy-ready AI prompt | Verbatim capture | Generate objections before the meeting |
| CC-27 | [P6L3 Status update](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p6l3-status-updates-in-under-two-minutes>) | Dynamic template | Verbatim capture | Create a reusable audience-aware status workflow |
| CC-28 | [P6L4 Presentation argument](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p6l4-presentations-that-make-an-argument>) | Copy-ready AI prompt | Verbatim capture | Design narrative and speaker notes |
| CC-29 | [P7L1 Workspace audit](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p7l1-setting-up-a-workspace-that-works-for-you>) | Copy-ready AI prompt | Verbatim capture | Audit structure and update repository context |
| CC-30 | [P7L2 One-command workflows](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p7l2-turning-repetitive-work-into-one-command-workflows>) | Copy-ready AI prompt | Verbatim capture | Convert repeated work into skills |
| CC-31 | [P7L3 Agents while you sleep](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p7l3-building-agents-that-work-while-you-sleep>) | Copy-ready AI prompt | Verbatim capture | Specify a scheduled autonomous workflow |
| CC-32 | [P7L4 Full session](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p7l4-putting-it-all-together-full-session>) | Copy-ready AI prompt | Verbatim capture | Connect context, agents, and workspace audit |
| CC-33 | [P7L5 Team onboarding](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p7l5-getting-your-team-started>) | Copy-ready AI prompt | Verbatim capture | Create onboarding guide and demo script |
| CC-34 | [P8L1 Metric Pulse](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p8l1-the-metric-pulse-agent>) | Dynamic template | Verbatim capture | Specify the sensing agent |
| CC-35 | [P8L2 Weekly Insight](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p8l2-the-weekly-insight-report>) | Dynamic template | Verbatim capture | Specify the synthesis agent |
| CC-36 | [P8L3 Anomaly to Hypothesis](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p8l3-the-anomaly-to-hypothesis-agent>) | Dynamic template | Verbatim capture | Specify the diagnosis agent |
| CC-37 | [P8L4 Agent registry](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#p8l4-connecting-the-comeback-coach-and-its-learning-loop>) | Dynamic template | Verbatim capture | Connect agents and their learning loop |
| CC-38 | [Appendix Workspace Catch-Up](<../source-library/imports/claude-code-for-pm/Claude Code For PM/Source Material/The Streakly Scenario.md#appendix--workspace-catch-up-prompt>) | Copy-ready AI prompt | Verbatim capture | Reconstruct the complete training workspace |

## Interpretation note

Claude QA prompts test implementation completeness, traceability, and handoff readiness. They do not replace AI Product Management evals, which test the quality and safety of probabilistic model outputs.
