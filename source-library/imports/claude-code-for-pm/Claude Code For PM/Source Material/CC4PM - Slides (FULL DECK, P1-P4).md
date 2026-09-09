# CC4PM_ProductSchool_P1toP4

Extracted from `PS Claude/CC4PM_ProductSchool_P1toP4.pptx` — 31 slides.

## Slide 1

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- About Me
- FARAN NAJAM
- Staff PM
- Intuit · Connections Platform
- Course creator
- Claude Code for PMs
- Product School Instructor
- PS alum, 2016
- Started as a Product School student. A decade later came back as the instructor — building the course I wish I had.
- 15+ years in PM
- Platform and infrastructure products across fintech, workplace analytics, and developer tooling.
- AI-native
- Using Claude Code and Cursor daily for prototyping, data, and agents — built this course from that practice.

## Slide 2

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- Sessions 1 & 2
- WHAT WE ARE COVERING
- 4 parts.
- 2 sessions.
- Setup to shipping — everything you need to work with Claude Code.
- P1
- Get Oriented
- Research & Setup
- How Claude Code works
- AI interview habit
- CLAUDE.md + memory
- Three core files
- Reusable skills
- P2
- Know Users
- Research & Synthesis
- Interview synthesis
- Feedback analysis
- Competitive matrix
- Decision brief
- P3
- Build Fast
- Prototype & Test
- 0→1 prototype
- Rapid iteration
- Hypothesis statement
- Vibe code with triad
- P4
- Team Work
- Ship Together
- Read a codebase
- Pair with eng
- Pair with design
- QA and launch

## Slide 3

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- What You Take Away
- WHAT YOU WALK AWAY WITH
- Every lesson ends withsomething you keep and use.
- Every exercise uses Nudge — a consumer fintech app with a real retention problem.
- P1
- Your project stack
- CLAUDE.md, project.md, strategy.md — loaded for Nudge Engage v2 from day one
- P1
- Weekly status skill
- A reusable skill that formats your update automatically every time
- P2
- Interview synthesis
- Themes + verbatim quotes from Priya, Tom, and Amara
- P2
- Decision brief
- One-page brief for Marcus recommending what to investigate next
- P3
- Working prototype
- Nudge weekly summary screen — click on it, share it in Slack
- P3
- Hypothesis statement
- Learning synthesis and a testable prediction grounded in what users did
- P4
- Codebase summary
- PM-level tour of maybe-finance/maybe — your stand-in for the Nudge repo
- P4
- PM QA checklist
- Edge cases, launch checklist, and your first meaningful PR comment

## Slide 4

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- How This Works
- HOW THIS WORKS
- The format for every session.
- Camera on
- This is a cohort, not a webinar. Cameras on the whole time — it changes the room.
- Demo before explain
- Every concept gets shown before it gets explained. You will see it working before you understand why.
- Full Nudge
- Every exercise uses Nudge Engage v2. Same scenario, every lesson. Your CLAUDE.md from P1 carries through to P4.
- 50 / 50
- Half the time is me talking. Half is you building. We use breakout rooms — you will not just watch.
- One output per session
- Every session ends with something in your hands. Not notes. A working artifact you use Monday morning.
- Debug live
- When something breaks I keep going. Debugging live teaches more than a polished demo. That is the point.

## Slide 5

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P1
- P1
- Get Oriented
- 1.
- How Claude Code Actually Works
- 2.
- The AI Interview — Getting to What You Actually Need
- 3.
- Persistent Memory Across Sessions
- 4.
- Your Three Core Files: project.md, strategy.md, change_
- 5.
- Building Skills You Reuse

## Slide 6

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- Your File Architecture
- YOUR PROJECT FILE ARCHITECTURE
- Every artifact from every lesson has a home. This is the map.
- Core files
- P1
- CLAUDE.md
- Project memory — loads every session
- project.md
- What Nudge is, your squad, current phase
- strategy.md
- Your current hypothesis
- research/
- P2 + P3
- interview-synthesis.md
- Themes and verbatims from Priya, Tom, Amara
- nps-analysis.md
- NPS themes and actionable signals
- competitive-matrix.md
- Competitor gaps and Nudge white space
- docs/
- P2 + P4
- decision-brief.md
- One-pager for Marcus — recommendation and why now
- codebase-summary.md
- PM-level tour of the maybe-finance repo
- prototype/ + skills/
- P1 + P3
- prototype/index.html
- Nudge weekly summary — clickable, shareable
- prototype/README.md
- PM brief baked in for Raj handoff
- skills/weekly-status.md
- Reusable status update skill

## Slide 7

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P1 · 1 of 5
- P1 · 1 of 5
- How Claude Code Actually Works
- Understand what Claude Code is, how it differs from Claude.ai, and run your first rea
- CONCEPTS
- 1
- The REPL Loop
- How Claude Code processes your requests in a continuous cycle
- 2
- Context Window
- The working memory Claude holds during a session
- 3
- Actions vs. Answers
- Claude can do things, not just respond to questions
- 4
- CC vs Claude.ai
- When to use each and why CC is built for PM work
- BEFORE YOU RUN THIS
- Open Claude Code. Paste the P1L1 Slack thread from the Nudge scenario doc.
- nudge/engage-v2
- >
- Here are some messy notes from a product meeting.Organize them into a PRD skeleton:Problem, Goals, Non-Goals, Success Metrics.[paste notes]
- ✓
- YOU WALK OUT WITH
- Your first PRD skeleton — from a Slack thread
- save to:  docs/prd-skeleton.md

## Slide 8

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P1 · 2 of 5
- P1 · 2 of 5
- The AI Interview — Getting to What You Actually Need
- You have the PRD skeleton. Before Claude builds anything from it — run this.
- CONCEPTS
- 1
- Interview Before Build
- Claude asks you questions before writing a single file — the most important habit in the whole cours
- 2
- Plan Mode
- A structured sequence: interview, synthesize, get approval, then build. Nothing gets created until y
- 3
- 95% Confidence Threshold
- Claude keeps asking until it can accurately explain back what you need — not what you said, what you
- 4
- One Question at a Time
- Sequential questioning forces depth. Ten questions at once gets shallow answers. One question at a t
- BEFORE YOU RUN THIS
- Your project is Nudge Engage v2. Run this before building anything.
- nudge/engage-v2
- >
- Before you create any files or write any code,interview me. One question at a time until youhave 95% confidence you understand what Iactually need — not just what I said I want.
- ✓
- YOU WALK OUT WITH
- A Claude-generated plan you approved before a file was written
- save to:  project.md

## Slide 9

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P1 · 3 of 5
- P1 · 3 of 5
- Persistent Memory Across Sessions
- Claude's memory resets every session — unless you build this. CLAUDE.md loads your Nu
- CONCEPTS
- 1
- CLAUDE.md
- A file Claude reads automatically at the start of every session
- 2
- Project Memory
- Persistent facts about your project Claude retains
- 3
- Session vs. Persistent
- What Claude knows in one session vs. what it knows across all of them
- 4
- Living Document
- CLAUDE.md should evolve as your project does
- BEFORE YOU RUN THIS
- Create a new file called CLAUDE.md in your project folder. Then run this.
- nudge/engage-v2
- >
- Help me build a CLAUDE.md for my project.Ask me one question at a time to gather:my role, the product, the key metric,the main tension I am navigating.
- ✓
- YOU WALK OUT WITH
- A CLAUDE.md that primes every future session
- save to:  CLAUDE.md

## Slide 10

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P1 · 4 of 5
- P1 · 4 of 5
- Your Three Core Files: project.md, strategy.md, change_l
- CLAUDE.md tells Claude who you are. These three files tell it what you are building.
- CONCEPTS
- 1
- project.md
- Your source of truth — what the product is, who it serves, what success looks like
- 2
- strategy.md
- The living output — where Claude writes the current strategic direction
- 3
- change_log.md
- The decision trail — what changed, when, and why
- 4
- Chat to Code handoff
- Think in Claude.ai, execute in Claude Code, pass context via these files
- BEFORE YOU RUN THIS
- Create three empty files: project.md, strategy.md, change_log.md. Then run this.
- nudge/engage-v2
- >
- I have three files: project.md, strategy.md,change_log.md. Help me populate them formy current initiative.
- ✓
- YOU WALK OUT WITH
- project.md, strategy.md, and change_log.md — ready to use
- save to:  project.md  /  strategy.md  /  change_log.md

## Slide 11

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P1 · 5 of 5
- P1 · 5 of 5
- Building Skills You Reuse
- You just built the Nudge stack. Now make it reusable — a skill you run every week wit
- CONCEPTS
- 1
- SKILL.md Files
- Reusable prompt packages Claude reads and applies automatically
- 2
- Trigger Conditions
- How Claude knows when to use a skill without being told
- 3
- Prompt Templates
- Parameterized prompts with fill-in slots for variable inputs
- 4
- Skill Iteration
- Each use is an opportunity to improve the skill for next time
- BEFORE YOU RUN THIS
- Open Claude Code in your Nudge project folder. Run this.
- nudge/engage-v2
- >
- Build me a SKILL.md that takes raw notesand formats them as a weekly status update.Keep it simple — I want to see what askill file looks like.
- ✓
- YOU WALK OUT WITH
- A reusable Weekly Status Update skill
- save to:  skills/weekly-status.md

## Slide 12

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- PART RECAP
- PART RECAP
- P1  Get Oriented
- You just built:
- How Claude Code Actually Works
- Your first Claude Code-generated PRD skeleton — built from a messy Slack thread in under 2
- The AI Interview — Getting to What You A
- A Claude-generated plan summary you approved before a single file was written — and the ha
- Persistent Memory Across Sessions
- A CLAUDE.md file that primes every future session
- Your Three Core Files: project.md, strat
- A three-file project architecture you use every session from here on
- Building Skills You Reuse
- A reusable Weekly Status Update skill

## Slide 13

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P2
- P2
- Know Your Users
- 1.
- Extracting Insights from User Interviews
- 2.
- Making Sense of Large Feedback Sets
- 3.
- Running Competitive Analysis with Claude
- 4.
- From Research to a Decision Brief

## Slide 14

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P2 · 1 of 4
- P2 · 1 of 4
- Extracting Insights from User Interviews
- Three Nudge users. Three different relationships with the product. Raw transcripts to
- CONCEPTS
- 1
- Transcript Parsing
- Extracting structured data from messy interview text
- 2
- Quote Extraction
- Pulling the most signal-rich verbatims
- 3
- Theme Clustering
- Grouping observations into patterns across multiple interviews
- 4
- Outlier Detection
- Spotting the one-off that changes the direction
- BEFORE YOU RUN THIS
- Open the Nudge scenario doc. Copy the three interview excerpts (Priya, Tom, Amara).
- nudge/engage-v2
- >
- Here are 3 user interview transcripts.Identify the top 5 themes, extract the3 best verbatim quotes per theme, andproduce a structured insight synthesis.[paste transcripts]
- ✓
- YOU WALK OUT WITH
- An insight synthesis with themes and verbatims from Priya, Tom, Amara
- save to:  research/interview-synthesis.md

## Slide 15

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P2 · 2 of 4
- P2 · 2 of 4
- Making Sense of Large Feedback Sets
- You have the interview themes. Now layer in the NPS verbatims and find what keeps com
- CONCEPTS
- 1
- Sentiment Bucketing
- Grouping feedback by positive, negative, neutral
- 2
- Theme Extraction
- Finding what keeps coming up across hundreds of responses
- 3
- Priority Ranking
- Scoring themes by frequency and severity together
- 4
- Actionable Findings
- Translating patterns into specific next steps
- BEFORE YOU RUN THIS
- Open the Nudge scenario doc. Copy the 10 NPS verbatims.
- nudge/engage-v2
- >
- Here is a set of raw NPS feedback.Extract themes mentioned more than twice,rank by frequency, separate praise fromcomplaints, identify top 3 actionable issues.[paste feedback]
- ✓
- YOU WALK OUT WITH
- A prioritized NPS feedback report ready for leadership
- save to:  research/nps-analysis.md

## Slide 16

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P2 · 3 of 4
- P2 · 3 of 4
- Running Competitive Analysis with Claude
- You know what your users said. Now find out who else is trying to solve this — and wh
- CONCEPTS
- 1
- Structured Research
- Instructing Claude to research systematically, not randomly
- 2
- Competitor Matrix
- A structured comparison across features, positioning, and pricing
- 3
- Gap Identification
- Where your product has space competitors have left open
- 4
- Repeatability
- A workflow you run fresh every quarter with one prompt
- BEFORE YOU RUN THIS
- Nudge is a consumer personal finance app focused on week-1 engagement and retention.
- nudge/engage-v2
- >
- Search the web and identify the 3 mostrelevant competitors to Nudge in personalfinance. For each: how do they keep usersengaged after initial account connection?
- ✓
- YOU WALK OUT WITH
- A competitive matrix with positioning gaps called out
- save to:  research/competitive-matrix.md

## Slide 17

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P2 · 4 of 4
- P2 · 4 of 4
- From Research to a Decision Brief
- Interviews, NPS, competitive gaps — you have everything. Turn it into the one-pager M
- CONCEPTS
- 1
- Evidence Hierarchy
- Ranking sources by how much weight they should carry
- 2
- Brief Structure
- Situation → Findings → Options → Recommendation
- 3
- One Page Rule
- One page forces clarity; two pages invites debate
- 4
- Recommendation Framing
- How to phrase a recommendation so it generates a decision, not a discussion
- BEFORE YOU RUN THIS
- Gather your P2L1, P2L2, and P2L3 outputs from your research/ folder. Paste them below.
- nudge/engage-v2
- >
- Here are my research outputs: interviewsynthesis, NPS themes, competitive matrix.Synthesize into a 1-page decision brief:Situation, Key Findings, Options,Recommendation, Why Now.[paste outputs]
- ✓
- YOU WALK OUT WITH
- A 1-page decision brief ready to send to Marcus
- save to:  docs/decision-brief.md

## Slide 18

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- PART RECAP
- PART RECAP
- P2  Know Your Users
- You just built:
- Extracting Insights from User Interviews
- An insight synthesis document with themes and verbatim quotes
- Making Sense of Large Feedback Sets
- A prioritized feedback report ready for leadership
- Running Competitive Analysis with Claude
- A competitive matrix with positioning gaps called out
- From Research to a Decision Brief
- A 1-page decision brief ready to send

## Slide 19

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P3
- P3
- Build and Learn Fast
- 1.
- The PM Brief: From Problem to Working Prototype
- 2.
- Rapid Iterative Testing: 1 to 1.n in a Day
- 3.
- When to Stop Iterating — Forming a Hypothesis Worth Shi
- 4.
- Vibe Coding with Your Triad — PM as Catalyst

## Slide 20

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P3 · 1 of 4
- P3 · 1 of 4
- The PM Brief: From Problem to Working Prototype
- You have the decision brief. Marcus is aligned. Now build something Raj and Lena can
- CONCEPTS
- 1
- The PM Brief
- A precise problem description that gives Claude enough context to build the right thing — not just a
- 2
- User + Context + Constraint
- The three inputs that separate a good brief from a vague one
- 3
- 0 to 1
- Going from no artifact to a working, clickable prototype in a single session
- 4
- Brief Iteration
- When the first prototype is wrong, the brief was wrong — how to diagnose and fix it
- BEFORE YOU RUN THIS
- Run the AI interview first. Approve the plan. Then watch Claude build.
- nudge/engage-v2
- >
- I want to build a working prototype.Here is my PM brief: [brief].Before you build anything — interview me.
- ✓
- YOU WALK OUT WITH
- A working, clickable Nudge weekly summary prototype
- save to:  prototype/index.html  /  prototype/README.md

## Slide 21

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P3 · 2 of 4
- P3 · 2 of 4
- Rapid Iterative Testing: 1 to 1.n in a Day
- You have a working prototype. Now test it and update between rounds.
- CONCEPTS
- 1
- 1 to 1.n
- Running multiple rapid iteration cycles on a working prototype before writing production code
- 2
- Lightweight Usability Sessions
- 15-minute sessions with real users that produce actionable signal — not a formal study
- 3
- Structured Feedback Capture
- Capturing what you observe in a format Claude can synthesize across rounds
- 4
- Between-Session Updates
- Using Claude to update the prototype between sessions so each round tests something new
- BEFORE YOU RUN THIS
- Show the prototype to 2-3 people. Take notes on what you observe. Then run this.
- nudge/engage-v2
- >
- I just ran usability sessions on myNudge prototype. Here are my observations:[notes].What is working? Top 2 friction points?Single highest-priority change?
- ✓
- YOU WALK OUT WITH
- A prototype refined across test rounds with a change log
- save to:  prototype/  +  change_log.md

## Slide 22

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P3 · 3 of 4
- P3 · 3 of 4
- When to Stop Iterating — Forming a Hypothesis Worth Ship
- Recognize when to stop iterating and form a hypothesis worth shipping.
- CONCEPTS
- 1
- Diminishing Return Signal
- How to recognize when additional iteration rounds are producing noise, not signal
- 2
- Learning Synthesis
- Combining observations across multiple rounds into a coherent picture of what users need
- 3
- The Hypothesis Statement
- A specific, testable prediction about what will happen when you ship — and how you will measure it
- 4
- From Prototype to Spec
- What the prototype and test rounds tell eng and design before a line of production code is written
- BEFORE YOU RUN THIS
- Gather your notes from all prototype testing rounds. Paste them below.
- nudge/engage-v2
- >
- Here are my prototype testing notes.Write a learning synthesis and ahypothesis statement:We believe [feature] will [outcome]as measured by [metric].
- ✓
- YOU WALK OUT WITH
- A learning synthesis and a testable hypothesis statement
- save to:  research/hypothesis.md

## Slide 23

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P3 · 4 of 4
- P3 · 4 of 4
- Vibe Coding with Your Triad — PM as Catalyst
- You have a tested prototype and a hypothesis. This is the handoff to Raj and Lena.
- CONCEPTS
- 1
- PM as Catalyst
- The PM role in vibe coding is not to build everything alone — it is to produce a working artifact th
- 2
- Shared Working Surface
- A prototype everyone can react to in the same room — faster than a PRD, more concrete than a wirefra
- 3
- Design Handoff
- What design needs from a Claude prototype to take it further — and what they do not need to rebuild
- 4
- Eng Handoff
- How a prototype changes the eng conversation — from estimating an abstraction to reacting to somethi
- BEFORE YOU RUN THIS
- You have a tested prototype and a hypothesis. Bring Raj and Lena in.
- nudge/engage-v2
- >
- I have a tested prototype and I ambringing it to Raj and Lena in 30 min.Help me write the session agenda andpost-session alignment doc template.
- ✓
- YOU WALK OUT WITH
- A triad session plan and post-session alignment doc
- save to:  docs/triad-session.md  +  change_log.md

## Slide 24

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- PART RECAP
- PART RECAP
- P3  Build and Learn Fast
- You just built:
- The PM Brief: From Problem to Working Pr
- A working prototype built from a precise PM brief — and the brief itself as a reusable tem
- Rapid Iterative Testing: 1 to 1.n in a D
- A prototype updated across multiple test rounds and a synthesis document showing what chan
- When to Stop Iterating — Forming a Hypot
- A learning synthesis document and a hypothesis statement ready to hand to the triad
- Vibe Coding with Your Triad — PM as Cata
- A triad session plan and a post-session alignment doc — decisions made, open questions res

## Slide 25

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P4
- P4
- Work with Your Team
- 1.
- Reading a Codebase Without Writing Code
- 2.
- Pairing with Engineering
- 3.
- Pairing with Design
- 4.
- QA, Handoffs, and Getting to Launch

## Slide 26

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P4 · 1 of 4
- P4 · 1 of 4
- Reading a Codebase Without Writing Code
- The maybe-finance repo mirrors Nudge. Reading it lets you write a better ticket for t
- CONCEPTS
- 1
- File Structure
- How codebases are organized and what each folder signals
- 2
- Code as a Map
- Reading for intent and structure, not syntax
- 3
- Plain-English Tours
- Asking Claude to explain any file in language you can use
- 4
- Data Models
- What the database schema tells you about product decisions made long ago
- BEFORE YOU RUN THIS
- Clone github.com/maybe-finance/maybe — it mirrors the Nudge structure. Run this in the folder.
- nudge/engage-v2
- >
- I have cloned this codebase. Give mea PM-level tour:- What it does in one sentence- How it is organized- 3 most important files- Key data modelsgithub.com/maybe-finance/maybe
- ✓
- YOU WALK OUT WITH
- A plain-English codebase summary for sprint planning
- save to:  docs/codebase-summary.md

## Slide 27

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P4 · 2 of 4
- P4 · 2 of 4
- Pairing with Engineering
- You understand the codebase. Now take the Nudge weekly summary spec to Raj.
- CONCEPTS
- 1
- Spec Readiness
- The bar a spec needs to clear before eng picks it up
- 2
- Proposing Changes
- Structuring a change request so eng can move without back-and-forth
- 3
- Unblocking vs. Deciding
- When PM should step in vs. when to let eng figure it out
- 4
- Async Communication
- How to communicate with eng in a way that respects deep work
- BEFORE YOU RUN THIS
- Open the Nudge weekly summary spec. Run this with Raj's perspective in mind.
- nudge/engage-v2
- >
- I am working with my tech lead onthe Nudge weekly summary.Play a skeptical engineer — identifythe top 3 questions this spec does notanswer. Suggest what resolves each.
- ✓
- YOU WALK OUT WITH
- A spec readiness checklist and async eng communication template
- save to:  docs/spec-readiness.md  +  change_log.md

## Slide 28

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P4 · 3 of 4
- P4 · 3 of 4
- Pairing with Design
- Raj is aligned. Now bring the Nudge prototype to Lena with feedback grounded in user
- CONCEPTS
- 1
- Design Review Structure
- How to run a review that generates useful feedback, not opinion soup
- 2
- Needs vs. Solutions
- Separating what users need from how design chose to solve it
- 3
- Research-Grounded Feedback
- Using what you learned in testing to make feedback specific rather than subjective
- 4
- Approval vs. Sign-off
- When PM approves direction vs. when design owns the final call
- BEFORE YOU RUN THIS
- Open Lena's design comp for the Nudge weekly summary. Run this.
- nudge/engage-v2
- >
- I need to review this design comp forthe Nudge weekly summary.What user needs does it address well?What is missing? What one change hasthe highest impact? Evidence only.
- ✓
- YOU WALK OUT WITH
- A structured design review grounded in user evidence
- save to:  docs/design-review.md

## Slide 29

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- P4 · 4 of 4
- P4 · 4 of 4
- QA, Handoffs, and Getting to Launch
- Design is done. Engineering is ready. The last 20% — QA, edge cases, and your first m
- CONCEPTS
- 1
- PM QA
- What a PM should test before eng closes a ticket
- 2
- Edge Case Thinking
- Using Claude to find the scenarios eng did not spec for
- 3
- Launch Readiness
- The checklist that keeps you from discovering problems in production
- 4
- Participating in Code Review
- What to look for in a pull request — scope, user impact, and what changed beyond the spec
- BEFORE YOU RUN THIS
- The Nudge weekly summary is heading into QA. Open the spec and run this.
- nudge/engage-v2
- >
- Here is the spec for the Nudge weeklysummary notification ranking feature.Generate: edge case list, PM QA checklist(top 10), and a PR comment template.
- ✓
- YOU WALK OUT WITH
- An edge case list, PM QA checklist, and first meaningful PR comment
- save to:  docs/qa-checklist.md  +  change_log.md

## Slide 30

### CLAUDE CODE FOR PMs  ·  PRODUCT SCHOOL

- PART RECAP
- PART RECAP
- P4  Work with Your Team
- You just built:
- Reading a Codebase Without Writing Code
- A plain-English codebase summary you can reference in sprint planning
- Pairing with Engineering
- A spec readiness checklist and an async eng communication template
- Pairing with Design
- A structured design review document you can share with your designer
- QA, Handoffs, and Getting to Launch
- An edge case list, a PM QA checklist, and your first meaningful PR comment

## Slide 31

### Just start building.

- fnajam325.github.io/claude-code-for-the-product-triad
- 34 lessons · Nudge scenario included · Live cohort at Product School
- SCANOR VISIT
- Faran Najam  ·  faran.najam@gmail.com
