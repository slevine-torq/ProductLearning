# Module 1: Pre-Read

*AI Product Management · Pre-Read · Module 1*

10 to 15 minutes. Skim before the live session. The course assumes you've taken AIPC or know AI basics (tokens, prompts, RAG as a concept). This pre-read covers only what's specific to M1.

---

## What you'll do in M1

By the end of the 2-hour session you will have committed three artifacts to your `juno-pm/` repo fork:

- `01-prompting/system-prompt.md`, Juno PM's system prompt (the M1 deliverable for the final project).
- `01-prompting/lovable-prototype.md`, the Lovable share URL, what it demonstrates, and a short debrief.

---

## Setup checklist: before class

This session is hands-on, so walk in with your tools working. **Setup is light and free:** a GitHub account and a free Lovable account.

### ☐ GitHub account + your Juno repo fork

Everything you build across all six modules lives in one repo, so fork it now and the `01-prompting/` folder is ready for today's artifacts.

1. Sign in to **GitHub** (a free account is fine, create one at [github.com/signup](https://github.com/signup) if you don't have one).
2. Fork `juno-project-template/` from the course repo into your own GitHub, it becomes your `juno-pm/` fork.
3. Confirm you see the six numbered folders (`01-prompting/` … `06-evals/`). If you can't fork before class, do it in the first 5 minutes of M1, it's quick.

### ☐ Lovable account (free tier)

Lovable is the prompt-to-prototype tool you'll use to build the Juno homepage in the hands-on lab.

1. Sign up at [lovable.dev](https://lovable.dev), the free tier is enough.
2. Confirm you can create a new project and see the build canvas. That's all, we configure everything else live.

---

## The mindset shift you're walking into

> **Stop chatting with AI. Start configuring it.**

A working AI PM doesn't sit in a chat window iterating on phrasing. They write a **system prompt** once, spec the **data corpus**, define the **eval set**, and treat all three as product config, versioned, reviewed, deployed.

If you've been using AI as a personal assistant, M1 is the moment you stop and start using it as **product infrastructure**.

---

## The 5-element prompt anatomy (in advance)

You'll see this on slide 9 of the M1 deck. Get familiar now:

1. **Context**: who the AI is, what system it lives in, what it knows.
2. **Task**: the explicit instruction (verb-first).
3. **Constraints**: must-not-do, format requirements, scope.
4. **Output format**: schema, length, structure.
5. **Examples**: 1 to 3 ideal input/output pairs (optional but high-leverage).

If any of these is missing from your production prompt, your output will drift.

---

## The course scenario in 90 seconds

You are the AI PM at **RocketShip**, a hyper-growth B2B SaaS platform for Enterprise Data Teams. The company is in **Signal Collapse**: a wall of P0 escalations, thousands of stalled tickets, sales velocity stalling, every stakeholder piling on. You have innovation budget but **zero** for headcount.

To survive, you're building **Juno PM**: an AI Associate PM that lives inside Slack, Notion, and Jira and handles three pillars:

- **Synthesize insights**: turn the multi-channel roar into structured clarity.
- **Draft specs**: turn raw findings into "Version 0.1" PRDs.
- **Prioritize risks**: flag edge cases, technical debt, risky assumptions.

Juno is the throughline. Every module's exercise commits a real artifact to your `juno-pm/` repo. M6 finalises the repo and the optional async demo.

---

## Format reminder

This course is **100% individual**. No group breakouts. No team deliverables. Every exercise has:

- A **self-review checklist** you tick against your own artifact.
- An **async share** in `#ai-pm-cohort`, commit, push, post the link.

That's it. No partners, no rotations, no team velocity drift.

---

## One question to come prepared with

> *Pick one real AI bet you're considering at your day job. Could be a feature you're about to spec, a workflow you want to automate, or a chatbot someone is asking for. Bring it to M2, you'll pressure-test it through the AI Solution Decision Matrix.*

This is the only homework that travels across modules. The course is more useful when the scenario is yours, not just RocketShip's.

---

*Footer: Keep this open while you build. · AI Product Management · Reference companion*
