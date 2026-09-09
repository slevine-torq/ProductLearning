# Module 4, Work with Your Team (Shareable Notes)

A faithful expansion of the Module 4 slides. Read in sequence. Use as revision or as a substitute if you missed the live session. Individual format throughout, every lab has a self-review pass and an async share in `#cohort-channel`.

> **What this module ships:** `04-team/`, a plain-English codebase tour, a spec-readiness checklist, a structured design review, and an edge-case list with a PM QA checklist.

---

## Where this sits in the arc

A validated hypothesis has to survive contact with delivery. This stage makes you a sharper collaborator, reading code as a map, front-loading decisions for eng, grounding design feedback in evidence, and catching what breaks before users do.

## Across the full delivery cycle

*Four lessons on collaborating with engineering and design from spec to launch.*

### 4.1 Reading a Codebase Without Writing Code · *30 min*

Navigate a real codebase and understand what it does, no prior experience needed.

**Core ideas**

- **File structure** — How codebases are organized and what each folder signals.
- **Code as a map** — Reading for intent and structure, not syntax.
- **Plain-English tours** — Asking Claude to explain any file in language you can use.
- **Data models** — What the schema tells you about product decisions made long ago.

**Lab**

Use github.com/HabitRPG/habitica as a stand-in for the Streakly codebase. Ask Claude for a PM-level tour: what each major folder does, the key data models, and what you'd need to know to write a good ticket for a notification-ranking feature. Then write the ticket.

*Starter prompt:*

```
I have cloned this repo. Give me a PM-level tour: (1) what this product does in one sentence, (2) how the codebase is organized, key folders and what they contain, (3) where the main user-facing features are implemented, (4) what the database models tell us about the data model. Explain as if I've never read code before.
```

**You walk away with:** A plain-English codebase summary you can reference in sprint planning.

---

### 4.2 Pairing with Engineering · *35 min*

Work alongside your tech lead without slowing them down or stepping on their toes.

**Core ideas**

- **Spec readiness** — The bar a spec must clear before eng picks it up.
- **Proposing changes** — Structuring a change request so eng can move without back-and-forth.
- **Unblocking vs. deciding** — When PM should step in vs. let eng figure it out.
- **Async communication** — Communicating with eng in a way that respects deep work.

**Lab**

Take the Streakly Comeback screen spec. Use Claude to run a spec-readiness check, ask it to play a skeptical Raj and find the top 3 questions the spec doesn't answer. Fix them. Then write an async Slack message proposing a scope constraint before sprint kickoff.

*Starter prompt:*

```
I'm working with my tech lead on [feature]. Help me: (1) create a spec-readiness checklist, what should be resolved before eng picks up a ticket, (2) draft an async status-update request that respects their focus time, (3) list the decisions I own as PM vs. the ones I should defer to eng judgment.
```

**You walk away with:** A spec-readiness checklist and an async eng communication template.

---

### 4.3 Pairing with Design · *35 min*

Give design feedback that is specific, actionable, and grounded in user needs, not personal taste.

**Core ideas**

- **Design review structure** — How to run a review that generates useful feedback, not opinion soup.
- **Needs vs. solutions** — Separating what users need from how design chose to solve it.
- **Research-grounded feedback** — Using what you learned in testing to make feedback specific.
- **Approval vs. sign-off** — When PM approves direction vs. when design owns the call.

**Lab**

Lena shared her first pass on the Streakly Comeback screen. Use Claude to write structured design feedback: separate what users need from how to solve it, cite at least 2 pieces of evidence from the Priya/Tom/Amara interviews, and keep it to one page.

*Starter prompt:*

```
I need to review this design comp for [feature]. Help me structure feedback: (1) what user needs it addresses well, (2) what specific elements raise questions, framed in user terms, not aesthetics, (3) questions to bring to the designer, (4) what I'm prepared to sign off on as PM.
```

**You walk away with:** A structured design review document you can share with your designer.

---

### 4.4 QA, Handoffs, and Getting to Launch · *40 min*

The last 20% of a feature is where PMs earn their keep, or let things slip.

**Core ideas**

- **PM QA** — What a PM should test before eng closes a ticket.
- **Edge-case thinking** — Using Claude to find the scenarios eng didn't spec for.
- **Launch readiness** — The checklist that keeps problems out of production.
- **Code review for PMs** — What to look for in a PR, scope, user impact, what changed beyond the spec.

**Real-world example · Anthropic**

When Anthropic rewrote Bun (500K+ lines) to Rust with AI, only ~15% of the effort was writing code, the other ~85% was compiling, fixing tests, and verifying it worked, backed by automated Claude code review, 11 security-scan runs, and fuzz testing. As one engineer put it, most tokens now go to verification, not implementation. The PM takeaway: the last 20%, QA, edge cases, reading the PR, is where your leverage now sits. *(Source: [How building software is changing at Anthropic, The Pragmatic Engineer (2026)](https://newsletter.pragmaticengineer.com/p/inside-anthropic))*

**Lab**

The Streakly Comeback screen is heading into QA. Use Claude to generate an edge-case list for the notification-ranking logic. Write 5 QA test cases and one PR comment from a PM perspective.

*Starter prompt:*

```
Here is the spec for [feature]: [paste]. Generate: (1) a comprehensive edge-case list grouped by category (empty states, errors, permissions, data limits, concurrent users), (2) the 5 most likely to cause a user-facing bug, (3) a PM QA checklist I can run before sign-off. Also: here's a recent PR diff: [paste]. Explain what it changes in plain English and suggest 2-3 questions to ask before it ships.
```

**You walk away with:** An edge-case list, a PM QA checklist, and your first meaningful PR comment.

---

## Key takeaways

- You don't write code, you read it like a map to ask better questions and catch scope issues early.
- Engineers need decisions front-loaded so they can build without constant interruption.
- Useful design feedback is specific and tied to a user need, not "this feels busy."
- PM QA tests reality: weird inputs, empty states, users doing things in the wrong order.
- A spec grounded in actual user context before eng touches it prevents the 14-Slack-message handoff.

---

## Self-review before you share

- Did you run the **AI interview / plan step** before building (Module 1 habit)?
- Is the artifact committed to the right folder with a clear filename?
- Could a teammate open your artifact cold and understand the decision behind it?
- Drop the repo link in `#cohort-channel`; the instructor responds in-thread within ~5 days.
