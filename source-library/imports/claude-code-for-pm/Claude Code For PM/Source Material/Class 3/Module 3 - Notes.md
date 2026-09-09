# Module 3, Build and Learn Fast (Shareable Notes)

A faithful expansion of the Module 3 slides. Read in sequence. Use as revision or as a substitute if you missed the live session. Individual format throughout, every lab has a self-review pass and an async share in `#cohort-channel`.

> **What this module ships:** `03-build/`, a working prototype, an iteration log across test rounds, a hypothesis statement, and a triad session plan.

---

## Where this sits in the arc

Research told you what to investigate. Now make it tangible: a precise brief produces a working prototype, rapid testing compresses weeks into hours, and you hand your triad something real to react to.

## Idea to validated prototype

*Four lessons that turn the PM into the fastest path from a problem to evidence.*

### 3.1 The PM Brief: From Problem to Working Prototype · *40 min*

The quality of what Claude builds is set by the quality of your brief.

**Core ideas**

- **The PM brief** — A precise problem description that gives Claude enough to build the right thing.
- **User + context + constraint** — The three inputs that separate a good brief from a vague one.
- **0 to 1** — From no artifact to a working, clickable prototype in one session.
- **Brief iteration** — When the prototype is wrong, the brief was wrong, diagnose and fix it.

**Real-world example · Anthropic**

The Claude Code team now prefers HTML over Markdown as an output format, Claude turned out to be far better at HTML than expected, and HTML carries richer information and is easier to read and share. That is exactly why this lab has Claude build an HTML prototype you can open in a browser and hand to a user the same day. *(Source: [How building software is changing at Anthropic, The Pragmatic Engineer (2026)](https://newsletter.pragmaticengineer.com/p/inside-anthropic))*

**Lab**

Build the Streakly Comeback screen prototype. Brief: the screen a user sees when they return after breaking a streak, their best-streak stat, one bite-sized lesson to restart, and a one-tap 'streak-freeze' to protect the next day. Primary user: a 28-year-old who hit a 6-day streak, missed two days, and hasn't opened the app since. Constraint: no new data integrations. Run the AI interview first, approve the plan, watch it build.

*Starter prompt:*

```
I want to build a working prototype. Here is my PM brief:

User: [who this is for and their context]
Job to be done: [what they're trying to accomplish]
Flow: [each step]
Success condition: [what good looks like at the end]
Constraints: [mobile only, simple, no login, etc.]

Build an HTML prototype I can open in a browser and share with users today.
```

**You walk away with:** A working prototype built from a precise PM brief, and the brief itself as a reusable template.

---

### 3.2 Rapid Iterative Testing: 1 to 1.n in a Day · *50 min*

Run multiple rounds of feedback on a working prototype, updating between sessions.

**Core ideas**

- **1 to 1.n** — Multiple rapid iteration cycles before writing production code.
- **Lightweight sessions** — 15-minute sessions with real users that still produce actionable signal.
- **Structured capture** — Recording what you observe in a format Claude can synthesize across rounds.
- **Between-session updates** — Using Claude to update the prototype so each round tests something new.

**Lab**

Take the Streakly Comeback screen prototype. Show it to 2–3 people. Ask: what do you think this does? Would you open a push notification to see it? What would make you actually restart the habit? Update the prototype between sessions based on what you hear.

*Starter prompt:*

```
I just ran [N] usability sessions on my prototype. Here are my structured observations:

[paste session notes]

Please: (1) identify the top 3 patterns across all sessions, (2) separate flow observations from UI observations, (3) flag anything that surprised you, (4) recommend the highest-impact change for the next version, (5) update the prototype with that change.
```

**You walk away with:** A prototype updated across multiple test rounds plus a synthesis of what changed and why.

---

### 3.3 When to Stop Iterating, Forming a Hypothesis Worth Shipping · *35 min*

Recognize diminishing returns, synthesize what you learned, and translate it into a measurable hypothesis.

**Core ideas**

- **Diminishing-return signal** — When more rounds produce noise, not signal.
- **Learning synthesis** — Combining observations across rounds into a coherent picture.
- **The hypothesis statement** — A specific, testable prediction about what happens when you ship.
- **From prototype to spec** — What the prototype tells eng and design before any production code.

**Lab**

Take everything you learned testing the Streakly prototype. Ask Claude to synthesize a learning summary and a hypothesis: "We believe [this feature] will [produce this outcome] for Streakly users in their first week, as measured by Day-7 retention."

*Starter prompt:*

```
Here are my notes from [N] rounds of prototype testing:

[paste notes and iteration decisions]

Please: (1) synthesize the top 3 things we learned with confidence, (2) identify what we still don't know, (3) draft a hypothesis in the format: we believe [change] will result in [outcome] because [evidence], (4) list what this prototype tells eng and design that a spec from scratch would not.
```

**You walk away with:** A learning synthesis and a hypothesis statement ready to hand to the triad.

---

### 3.4 Vibe Coding with Your Triad, PM as Catalyst · *45 min*

Use Claude-generated prototypes as a shared working surface for design and engineering.

**Core ideas**

- **PM as catalyst** — Your job is a working artifact that collapses the abstraction gap, not to build it all alone.
- **Shared working surface** — A prototype everyone reacts to in the same room, faster than a PRD, more concrete than a wireframe.
- **Design handoff** — What design needs from a prototype to take it further, and what they shouldn't rebuild.
- **Guardrails** — What vibe coding is not, when to slow down and write production code properly.

**Lab**

Take the Streakly prototype and hypothesis to a 30-minute session with Raj (tech lead) and Lena (designer). Use Claude to prep the agenda: what to show, the questions you need answered, and the decisions you need to walk out with.

*Starter prompt:*

```
I have a working prototype that's been through [N] rounds of testing. I'm about to share it with my designer and tech lead. Help me prepare: (1) a framing for the designer, what it solves, what we learned, what I want their reaction on, (2) a framing for the tech lead, what it shows, the open technical questions, what I need before we write a spec, (3) a list of decisions this session should produce.
```

**You walk away with:** A triad session plan and a post-session alignment doc, decisions made, questions resolved, next steps owned.

---

## Key takeaways

- Prototype quality is set by brief quality, user + context + constraint, not feature complexity.
- The power of rapid testing is the loop: update the prototype between rounds and test again.
- Stop iterating when rounds repeat themselves and you have a testable hypothesis.
- In vibe coding, the PM is a catalyst, you collapse the abstraction gap, you don't replace the triad.
- A working artifact in sprint planning beats a verbal description every time, eng estimates against something real.

---

## Self-review before you share

- Did you run the **AI interview / plan step** before building (Module 1 habit)?
- Is the artifact committed to the right folder with a clear filename?
- Could a teammate open your artifact cold and understand the decision behind it?
- Drop the repo link in `#cohort-channel`; the instructor responds in-thread within ~5 days.
