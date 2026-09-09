# Course 4 — Blocks to add by hand

These are **Blocks**, not Tasks. Each one gets added inside an existing Task via **"+ Add block"**, alongside that Task's HTML upload. They share the Task's single *Mark Complete* — none of them needs its own Task title.

Terms rebuilt from `Source Material/Class 4/Module 4 - Glossary.md` under Course 4's own vocabulary; questions answerable from each Task's own content. Task 6 has no PMC-glossary equivalent — its terms are Torq-added.

---

## Task 1 — What a Roadmap Is Actually For

### Block: Roadmap Key Terms — Type: Card flipping

1. Term: Quick win | Definition: High value, low effort — build it now, it's your core.
2. Term: Major project | Definition: High value, high effort — a real bet worth scheduling deliberately.
3. Term: Time sinker | Definition: Low value, high effort — kill it before it ever reaches the roadmap.
4. Term: 70/20/10 | Definition: A rough capacity balance across core work, adjacent bets, and genuine exploration.

### Block: Quadrant Sort — Type: Card classification

**Buckets:** Quick Win, Major Project, Fill-In, Time Sinker

1. "High value, low effort" → Quick Win
2. "High value, high effort" → Major Project
3. "Low value, low effort" → Fill-In
4. "Low value, high effort" → Time Sinker

---

## Task 2 — Scoring and Sequencing Your Backlog

### Block: Roadmap Lab Check — Type: Quiz

1. What's the point of setting a human baseline before running the AI scoring prompt?
   A. It's not necessary
   B. It gives you something to check the AI's output against ← correct
   C. AI can't score without it
   D. It speeds up the AI's response

2. The AI inflates the value score of a feature only Sales has asked for, with no user evidence. What should you do?
   A. Trust the AI's score
   B. Override it — the AI can't tell evidence-backed asks from loud ones ← correct
   C. Escalate to Sales for a tiebreaker
   D. Average it with your own guess

---

## Task 3 — Scoping With MVP and MoSCoW

### Block: MoSCoW Key Terms — Type: Card flipping

1. Term: MVP | Definition: The most pared-down version of something that still delivers its core value — popularized by Eric Ries, coined by Frank Robinson.
2. Term: Must-have | Definition: A ship-blocker — the feature doesn't function without it.
3. Term: Should-have | Definition: Real value, but the feature still works without it if capacity runs short.
4. Term: Won't-have (now) | Definition: An explicit, written exclusion — the thing that actually prevents scope creep.
5. Term: The kill test | Definition: "If we removed this, could the user still reach the outcome?" Yes means it's not a Must-Have.

### Block: Must, Should, Could, or Won't — Type: Card classification

**Buckets:** Must-have, Should-have, Could-have, Won't-have (now)

1. "The feature doesn't work at all without this." → Must-have
2. "Valuable, but the feature still functions without it this sprint." → Should-have
3. "Nice polish for a later release." → Could-have
4. "Explicitly excluded — a much bigger decision for another time." → Won't-have (now)

---

## Task 4 — Writing a PRD That Actually Works

### Block: PRD Key Terms — Type: Card flipping

1. Term: Build-Measure-Learn | Definition: Eric Ries's loop — build something small, measure what happened, learn, repeat. This course's rapid validation cycle applies it to PRD-to-prototype work.
2. Term: Press release technique | Definition: Writing the announcement you'd want to publish once something ships, before writing detailed requirements — a technique associated with Amazon's product development process.
3. Term: Smart behavior | Definition: An if/then rule — situation in, outcome out — that tells an AI tool exactly how to respond.
4. Term: Light eval | Definition: A short list of measurable targets that define whether an AI tool's output is actually good, not just plausible-looking.

### Block: PRD Check — Type: Quiz

1. Why write a press release before the detailed requirements?
   A. It's a formality
   B. It forces real clarity and doubles as a strong first AI prompt ← correct
   C. It's required by every PRD template
   D. It replaces the need for smart behaviors

2. Why show a PRD and its prototype together, never separately?
   A. It's faster
   B. The PRD carries the reasoning, the prototype carries the feel — together they make a decision concrete ← correct
   C. Stakeholders won't read a PRD alone
   D. It isn't necessary, either works fine alone

---

## Task 5 — From PRD to Working Prototype

### Block: Prototyping Discipline — Type: Quiz

1. Why stay in one continuous chat thread across scoping, PRD, and prototyping?
   A. It's required by the tool
   B. The thread already holds your persona, metric, and scope in context ← correct
   C. It's faster to type in
   D. It prevents the AI from making mistakes

2. Which feedback gets a more targeted fix from an AI prototyping tool?
   A. "This feels off, can you improve it?"
   B. "Smart Behavior 2 isn't met — no inline error shows on an empty required field" ← correct
   C. Both work equally well
   D. Neither — always describe the whole flow again

---

## Task 6 — Acceptance Criteria and QA

### Block: QA Key Terms — Type: Card flipping

1. Term: Acceptance criteria | Definition: A translation of a requirement into something testable — no interpretation needed, no need to have been in the room when it was written.
2. Term: Given/When/Then | Definition: A format for writing a criterion: a starting state, a trigger, and a specific, observable outcome.
3. Term: UAT (user acceptance testing) | Definition: Confirmation that a feature does what the business actually needed — a different check than whether it merely functions.

### Block: Testable or Not — Type: Card classification

**Buckets:** Testable as written, Needs rewriting first

1. "The system should handle errors gracefully." → Needs rewriting first
2. "When a required field is empty and the user clicks Submit, an inline error appears within one second and the form does not submit." → Testable as written
3. "The UI should feel intuitive." → Needs rewriting first
4. "Given an injury/pain signal, when the user sends that message, then the system halts all suggestions and shows the safety screen." → Testable as written
