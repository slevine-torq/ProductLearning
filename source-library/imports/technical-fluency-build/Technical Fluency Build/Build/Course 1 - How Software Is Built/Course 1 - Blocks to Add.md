# Course 1 — Blocks to add by hand

These are **Blocks**, not Tasks. Each one gets added inside an existing Task via **"+ Add block"**, alongside that Task's HTML upload. They share the Task's single *Mark Complete* — none of them needs its own Task title.

Course 1 is the first course where recognition *is* the learning objective, so block density rises here versus Course 0 — per the Program Spec §5.1 deviation. Card classification carries the most weight: sorting technologies into layers is the assessment, not a warm-up for it.

| Task | Blocks |
|---|---|
| 1 — Languages and the Hiring Market | 2 |
| 2 — The Languages Behind the Logic | 2 |
| 3 — Frontend Frameworks | 3 |
| 4 — Backend Frameworks | 2 |
| 5 — The Frontend/Backend Split | 2 |

Every question below is answerable purely from having read that Task.

---

## Task: Languages, and the hiring market attached — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Language Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: HTML | Definition: Declarative markup describing a page's structure and meaning. Not a programming language — it expresses no logic.
2. Term: Semantic HTML | Definition: Using the right element for the job, so a heading is a heading and a button is a button. What screen readers and search engines depend on.
3. Term: CSS | Definition: The rules controlling appearance. Not a programming language either.
4. Term: Design system | Definition: Named tokens for color, spacing, and type that components draw from. Its presence or absence decides what a UI change costs.
5. Term: JavaScript | Definition: The language that makes a page interactive. Runs in every browser, and on servers via Node.js. Largest developer population of any language.
6. Term: TypeScript | Definition: A compile-time type layer over JavaScript. The types are checked, then disappear — what runs is JavaScript.

### Block: Is it a programming language? — Type: Card classification
**Buckets:** Programming language, Not a programming language

1. "HTML" → NOT A PROGRAMMING LANGUAGE
2. "CSS" → NOT A PROGRAMMING LANGUAGE
3. "JavaScript" → PROGRAMMING LANGUAGE
4. "TypeScript" → PROGRAMMING LANGUAGE
5. "Python" → PROGRAMMING LANGUAGE
6. "Bootstrap" → NOT A PROGRAMMING LANGUAGE

---

## Task: The languages behind the logic — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Platform Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: Python | Definition: Interpreted and fast to develop in. Owns data science and machine learning. If a client does anything serious with data or AI, it's in the stack.
2. Term: Java | Definition: Statically typed, runs on the JVM. The language under most Fortune 500 core systems in Torq's industries, with an enormous replacement cost.
3. Term: Swift | Definition: Apple's language for iOS. Requires Mac hardware, an Apple developer account, and App Store review inside your release timeline.
4. Term: Kotlin | Definition: Google's preferred Android language since 2019. Interoperates with Java, so migration can happen file by file.
5. Term: SQL | Definition: A declarative language for asking a database a question. The highest-return technical skill available to a consultant.

### Block: What does it tell you? — Type: Card matching
**Pairs (prompt → match):**
1. Prompt: "Our core platform is Java" | Match: Deep hiring pool and decades of operation — "rewrite it" is almost never credible
2. Prompt: "The data science team uses Python" | Match: A dependency chain someone has to own for security scanning
3. Prompt: "We're shipping a native iOS app" | Match: App Store review is a dependency in your timeline with no SLA you control
4. Prompt: "We're migrating Android to Kotlin" | Match: One of the rare modernizations that genuinely works incrementally
5. Prompt: "Any number takes two weeks from the data team" | Match: An operating-model finding, not a tooling complaint

---

## Task: Frontend frameworks — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Frontend Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: React | Definition: A component-based rendering library — not a full framework. Teams assemble routing, state, and data fetching around it themselves.
2. Term: React Native | Definition: React for mobile, rendering genuine native components. Shares roughly 70–90% of code across iOS and Android.
3. Term: Angular | Definition: A full opinionated framework with routing, forms, and dependency injection included. Written in TypeScript.
4. Term: AngularJS | Definition: The discontinued 1.x line, end-of-life since December 2021. Running it means running unsupported software.
5. Term: Bootstrap | Definition: A CSS framework of pre-styled components. Fast for internal tools; the wrong tool for a customer-facing brand experience.
6. Term: PWA | Definition: A website that installs, works offline, and sends notifications — with no app store, no review, and instant updates.

### Block: Sort the frontend claim — Type: Card classification
**Buckets:** A preference to discuss, A finding to raise

1. "They're on Angular" → A PREFERENCE TO DISCUSS
2. "They're on AngularJS" → A FINDING TO RAISE
3. "Bootstrap on an internal admin panel" → A PREFERENCE TO DISCUSS
4. "Bootstrap on the customer-facing product" → A FINDING TO RAISE
5. "They chose React over Vue" → A PREFERENCE TO DISCUSS
6. "The customer-facing product has never had an accessibility audit" → A FINDING TO RAISE

### Block: The cross-platform call — Type: Quiz
1. Airbnb abandoned React Native in 2018 and Shopify committed to it in 2020. What does that tell you?
   A. Shopify was right and Airbnb moved too early
   B. The technology matured between 2018 and 2020
   C. They had different requirements — the answer is situational  ← correct
   D. Neither company understood the trade-off

2. Which question actually settles a native-versus-cross-platform debate?
   A. "Which has better performance?"
   B. "Does this product's differentiation depend on native platform capability?"  ← correct
   C. "Which is cheaper per developer?"
   D. "What does the engineering team prefer?"

3. A client says "we're a React shop." What have they told you?
   A. Exactly which libraries their codebase uses
   B. Their hiring market and component reuse story — but not the assembly around React  ← correct
   C. That any React developer can be productive immediately
   D. That they also use React Native

---

## Task: Backend frameworks — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Backend Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: Backend framework | Definition: Pre-built structure so a team doesn't write authentication, routing, and database plumbing from scratch.
2. Term: Django | Definition: The Python one. Ships with an ORM, migrations, auth, and an admin interface that can remove weeks of internal-tool work.
3. Term: Express | Definition: The JavaScript one. Deliberately minimal, so every team invents its own conventions.
4. Term: Spring Boot | Definition: The Java one. What's actually running under most of Torq's client industries — and rarely the real modernization target.
5. Term: .NET | Definition: The Microsoft one. Buys integration efficiency and vendor lock-in in the same purchase.
6. Term: ORM | Definition: Object-Relational Mapper. Lets engineers treat database rows as objects, and hides which queries actually run.

### Block: Framework to language — Type: Card matching
**Pairs (prompt → match):**
1. Prompt: Django | Match: Python
2. Prompt: Express | Match: JavaScript
3. Prompt: Spring Boot | Match: Java
4. Prompt: .NET | Match: C#
5. Prompt: A thin API layer in front of a mainframe | Match: The pragmatic modernization play — more credible than a rewrite
6. Prompt: "The app got slow as the data grew" | Match: Check the ORM's generated queries before proposing re-architecture

---

## Task: The frontend/backend split — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Which layers does it touch? — Type: Card classification
**Buckets:** Frontend only, Crosses backend too

1. "Change this button from grey to blue" → FRONTEND ONLY
2. "Add the customer's account tier to this screen" → CROSSES BACKEND TOO
3. "Reorder the fields on this form" → FRONTEND ONLY
4. "Let users filter the list by a date range we don't currently store" → CROSSES BACKEND TOO
5. "Fix the spacing on mobile" → FRONTEND ONLY
6. "Show how many orders each customer has placed" → CROSSES BACKEND TOO

### Block: Reading the estimate — Type: Quiz
1. A stakeholder says "just add one field — should be quick." What's the strongest next move?
   A. Agree, and flag it later if it turns out bigger
   B. Explain that nothing in software is ever quick
   C. Ask whether it's frontend-only or needs something new from the backend  ← correct
   D. Escalate it to the engineering lead

2. The frontend team releases continuously; the backend team releases fortnightly behind a change window. What does that mean for cross-cutting features?
   A. Nothing — the teams work in parallel
   B. Coordination cost that estimates routinely omit, because it's waiting rather than work  ← correct
   C. The frontend team should slow down to match
   D. It only matters for urgent fixes

3. Which rough heuristic predicts whether a change is cheap?
   A. Whether the change is visual
   B. Whether the information is already on the screen  ← correct
   C. How many users the feature affects
   D. Whether the team uses React
