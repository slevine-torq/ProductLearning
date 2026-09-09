# Module 1, Get Oriented (Shareable Notes)

A faithful expansion of the Module 1 slides. Read in sequence. Use as revision or as a substitute if you missed the live session. Individual format throughout, every lab has a self-review pass and an async share in `#cohort-channel`.

> **What this module ships:** `01-orient/`, your CLAUDE.md, the three core files (project.md, strategy.md, change_log.md), and your first reusable skill, the foundation every later module reads from.

---

## Where this sits in the arc

Before research, before building, you configure Claude Code to know your product, remember it across sessions, and interview you before it writes a thing.

## From chatting to configuring

*Five lessons that turn Claude Code from a clever assistant into the operating layer of your PM practice.*

### 1.1 How Claude Code Actually Works · *30 min*

What Claude Code is, how it differs from Claude.ai, and your first real session.

**Core ideas**

- **The REPL loop** — How Claude Code processes your requests in a continuous read-eval-print cycle.
- **Context window** — The working memory Claude holds during a session, and why you manage it deliberately.
- **Actions vs. answers** — Claude can do things, read files, run code, edit docs, not just respond.
- **CC vs. Claude.ai** — When to use each, and why Claude Code is built for the way PM work actually happens.

**Lab**

Open Claude Code. Paste the Streakly #product-growth Slack thread from the scenario doc, where Marcus, Raj, and Lena debate the Day-7 retention drop. Ask Claude to organize it into a PRD skeleton: Problem Statement, Goals, Non-Goals, Success Metrics.

*Starter prompt:*

```
Here are my raw notes from our planning meeting. Please organize these into a PRD skeleton with sections: Problem Statement, Goals, Non-Goals, Success Metrics, and Open Questions. Preserve the original intent but clean up the language.

[paste your notes here]
```

**You walk away with:** Your first Claude Code-generated PRD skeleton, built from a messy Slack thread in under two minutes.

---

### 1.2 The AI Interview, Getting to What You Actually Need · *30 min*

Before Claude builds anything, it should interview you. This is the most important habit in the course.

**Core ideas**

- **Interview before build** — Claude asks you questions before writing a single file.
- **Plan mode** — Interview, synthesize, get approval, then build. Nothing is created until you sign off.
- **95% confidence threshold** — Claude keeps asking until it can explain back what you actually need.
- **One question at a time** — Sequential questioning forces depth. Ten at once gets shallow answers.

**Real-world example · Anthropic**

Anthropic's most complex platform project of the year, Claude Managed Agents, still started with planning, not building. Its engineering lead said the early prototyping "was more about understanding the requirements" than writing code, and the team leaned on documents dating back two years before kicking off. Even at a frontier AI lab, the interview-and-plan step comes first. *(Source: [How building software is changing at Anthropic, The Pragmatic Engineer (2026)](https://newsletter.pragmaticengineer.com/p/inside-anthropic))*

**Lab**

Your project is Streakly. Run the AI interview before building anything, let Claude ask one question at a time. When it summarizes, check: did it get the Day-7 retention drop right? Did it surface the tension between re-engagement nudges and notification fatigue?

*Starter prompt:*

```
Before you create any files or write any code, interview me. Ask me one question at a time until you have 95% confidence you understand what I actually need, not just what I said I want. When you are confident, summarize what you have learned and wait for my approval before proceeding.
```

**You walk away with:** A Claude-generated plan summary you approved before a single file was written, and the habit of running this before every project.

---

### 1.3 Persistent Memory Across Sessions · *25 min*

Set up CLAUDE.md so Claude always knows your project the moment you open a session.

**Core ideas**

- **CLAUDE.md** — A file Claude reads automatically at the start of every session.
- **Project memory** — Persistent facts about your product Claude retains across sessions.
- **Session vs. persistent** — What Claude knows in one session vs. what it knows across all of them.
- **Living document** — CLAUDE.md evolves as your project does, it is never finished.

**Real-world example · Anthropic**

Anthropic's own guidance is to treat context as a finite resource you curate, not a bucket you fill: find the smallest set of high-signal tokens that get the outcome, and place what matters most where the model attends to it. Treat your CLAUDE.md the same way, keep it lean, revisit it each model generation, and cut anything the model can now infer on its own. *(Source: [Effective context engineering for AI agents, Anthropic Engineering (2025)](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents))*

**Lab**

Build your CLAUDE.md for Streakly. Role: PM on the Engagement squad. Product: Streakly, a consumer habit + micro-learning app. Key metric: Day-7 retention (39%, down from 48%). Key tension: re-engagement nudges vs. notification fatigue. Put your most important context at the top and bottom of the file.

*Starter prompt:*

```
Context engineering tip: put your most important context, strategy, constraints, current priorities, at the TOP and BOTTOM of your CLAUDE.md, not buried in the middle; model attention is weakest over the middle of a long context.

I want to create a CLAUDE.md file for my project. Ask me 5 questions to understand what to include, then generate the file in proper markdown.
```

**You walk away with:** A CLAUDE.md file that primes every future session, the spine of your workspace.

---

### 1.4 Your Three Core Files · *35 min*

project.md, strategy.md, change_log.md, the document architecture that keeps every session grounded and every decision traceable.

**Core ideas**

- **project.md** — Your source of truth, what the product is, who it serves, what success looks like.
- **strategy.md** — The living output, where Claude writes the current strategic direction.
- **change_log.md** — The decision trail, what changed, when, and why.
- **Chat-to-code handoff** — Think in Claude.ai, execute in Claude Code, pass context via these files.

**Lab**

Create project.md, strategy.md, and change_log.md for Streakly. project.md: what Streakly is, your squad, current phase (discovery). strategy.md: the hypothesis, winning users back the moment they break a streak recovers the 9-point Day-7 retention drop. change_log.md: log today as day 1 of discovery.

*Starter prompt:*

```
I have three files: project.md, strategy.md, and change_log.md. Please read project.md first, then help me think through [decision]. When we reach a conclusion, write it into strategy.md and log the decision with reasoning in change_log.md.
```

**You walk away with:** A three-file project architecture you use in every session from here on.

---

### 1.5 Building Skills You Reuse · *40 min*

Create reusable skills so Claude gets more efficient every time you use it.

**Core ideas**

- **SKILL.md files** — Reusable prompt packages Claude reads and applies automatically.
- **Trigger conditions** — How Claude knows when to use a skill without being told.
- **Prompt templates** — Parameterized prompts with fill-in slots for variable inputs.
- **Skill iteration** — Each use is a chance to improve the skill for next time.

**Lab**

Build a Weekly Status Update skill. It takes raw notes from anywhere and outputs a formatted leadership update: Shipped, In Progress, Blockers, Next Week. Test it with a real week of notes.

*Starter prompt:*

```
Help me build a SKILL.md file for generating weekly status updates. The skill should accept raw bullet-point input, produce a formatted update with Shipped / In Progress / Blockers / Next Week sections, match a professional but concise tone, and be reusable without modification. Generate the full SKILL.md file.
```

**You walk away with:** A reusable Weekly Status Update skill, your first piece of compounding infrastructure.

---

## Key takeaways

- Claude Code takes actions, reads files, runs queries, edits documents, it isn't a chat window.
- Interview before build. Plan mode forces Claude to reach 95% confidence and get your sign-off before writing a file.
- CLAUDE.md is context engineering, put your most important context at the top and bottom; the middle degrades.
- Three files run the show: project.md (truth), strategy.md (current direction), change_log.md (why, not just what).
- A skill compounds; a saved prompt is static. Build the skill once, improve it every use.

---

## Self-review before you share

- Did you run the **AI interview / plan step** before building (Module 1 habit)?
- Is the artifact committed to the right folder with a clear filename?
- Could a teammate open your artifact cold and understand the decision behind it?
- Drop the repo link in `#cohort-channel`; the instructor responds in-thread within ~5 days.
