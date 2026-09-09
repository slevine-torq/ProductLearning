# Technical Fluency — Course Session Prompts

Seven prompts, one per course. Each is self-contained — paste into a fresh Claude Code session in this folder and it has everything it needs.

**Run order matters twice.** Course 0 runs **first** because it produces `_TASK-TEMPLATE-TIERED.html`, which every other course builds from. Course 6 runs **last** because its capstone reuses artifacts produced in Courses 1–5. Courses 1–5 in between can run in any order, though sequential is simplest.

Full task assignments, term coverage, and production rules live in [`Technical Fluency — Program Spec.md`](Technical%20Fluency%20—%20Program%20Spec.md). Every prompt below tells the session to read it.

**Per task, each session produces two deliverables:** the `Task N - <Title>.html` file (which *is* Block 1 of the Task), and that task's section inside the course's single `Course N - Blocks to Add.md` instruction sheet. A session that ships HTML without blocks is incomplete.

---

## Prompt 1 — Course 0: Before You Start · RUN FIRST

```
Build Course 0 of the "Technical Fluency for Transform Practice" program for TorqHub, in
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School

Read in full before writing anything:
- "Technical Fluency — Program Spec.md" — §2 Course 0 task list, §3 deliverables, §6 production spec
- "Technical Fluency Reference Guide.md" — §1 (the fluency ladder and the one rule) and §14 (sources)
- "Torq Consultant Learning Path.md" — §2a–§2d, the source for Tasks 2 and 3
- PMC/Torq Lessons Build/Torq Rebuild/Build/_BUILD-NOTES.md — locked decisions, lesson-writing
  convention, brand rules, per-lesson checklist, and the Blocks instruction-sheet template
- PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md — read Part 4 (failure modes) FIRST
- PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md — audience framing, regulated callout
- PMC/Torq Lessons Build/Torq Rebuild/_TASK-TEMPLATE.html — the scaffold
- Shipped exemplars to match in tone and length:
  PMC/Torq Lessons Build/Torq Rebuild/Build/Course 0 - Before You Start/ (both files)
  PMC/Torq Lessons Build/Torq Rebuild/Build/Course 3 - Analytics and Metrics for Product
    Decisions/Task 3 - Slicing and Sizing the Problem.html (median-length exemplar)

FIRST DELIVERABLE — the tiered template. Before writing any task, design and save
"Technical Fluency Build/_TASK-TEMPLATE-TIERED.html": _TASK-TEMPLATE.html extended with a
reusable tier component that presents three labeled reads inline —
  "A level deeper" / "Tier 2 — the trade-off you can discuss" / "Tier 3 — strategic & risk read"
Courses 1-6 all build from this file, so it must be right before anything else ships. It must pass
the same audit bar as any task. #43A8FF may separate the tiers as a rule or divider but NEVER as
text (2.5:1 on white). Do not gate or hide content by tier — a Tier 1 reader sees all three and
knows which is theirs.

Then build 4 tasks into Technical Fluency Build/Build/Course 0 - Before You Start/:
1. "How to use this program" — the L1-L5 fluency ladder from Guide §1, and the one rule. NO artifact.
2. "What tier am I?" — scope, autonomy, impact (Learning Path §2a-§2b). Artifact: tier
   self-placement canvas.
3. "What moving up takes" — observable behaviors, the five currencies, the rubric guardrail
   (Learning Path §2c-§2d). Artifact: behavior self-assessment.
4. "Sources and Further Reading" — program-level attribution (Guide §14). NO artifact.

Task 1 must land the one rule, and it is load-bearing for the whole program: fluency is for
understanding and asking, not performing. The move being trained is "I know what that is — tell me
why you chose it," never "ah, of course, classic microservices play." Recognition buys the right to
ask a good question; it does not buy an opinion on a client's architecture.

Task 2 must be honest that Tier 3 is NOT a deeper technical level than Tier 2 — it's the same facts
plus the commercial consequence. A different axis, not a higher one.

Task 3 must carry the "Tier 2 is a destination, not a waiting room" framing from Learning Path §2b.
Most Torq client work happens at Tier 2, and a program that reads as "everyone is en route to Tier 3"
misdescribes its own audience.

ALSO produce "Course 0 - Blocks to Add.md" — one section per task, using the EXACT template in
_BUILD-NOTES.md. Course 0 is lighter on blocks than the rest: Tasks 2 and 3 get 1-2 each (card
flipping for the tier vocabulary, a quiz on scope/autonomy/impact). Tasks 1 and 4 get none.

Non-negotiables:
- ~900 words / ~8 min per task. NO length cap — if a task runs long, SPLIT it, never cut content.
- Artifact canvases: localStorage wrapped in try/catch, Copy as text AND Download as .md, filename
  matching the learner's local workspace folder.
- Artifacts target the learner's REAL engagement and REAL current level. No fictional scenario.
- Every example must be a real, verifiable public case. Never invent one.
- Brand: allowed hexes only, Inter only, exact hero gradient, #43A8FF never as text.
- Audit bar: banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK
- Reuse the existing "Regulated client?" and "One level up:" callouts verbatim.
- Blocks are NEVER built in HTML — markdown instruction sheet only.
```

---

## Prompt 2 — Course 1: How Software Is Built

```
Build Course 1 of the "Technical Fluency for Transform Practice" program for TorqHub, in
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School

Read in full before writing anything:
- "Technical Fluency — Program Spec.md" — §2 Course 1 task list and term assignments, §3, §4, §6
- "Technical Fluency Reference Guide.md" — §3 Languages, §4 Frontend, §5 Backend (your source
  content), plus §1 for the tier framing
- PMC/Torq Lessons Build/Torq Rebuild/Build/_BUILD-NOTES.md — locked decisions, lesson-writing
  convention, brand rules, per-lesson checklist, and the Blocks instruction-sheet template
- PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md — read Part 4 (failure modes) FIRST
- PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md — audience framing, regulated callout
- Technical Fluency Build/_TASK-TEMPLATE-TIERED.html — START EVERY TASK FROM THIS FILE. Never copy
  a sibling task; that causes token drift. (Built in the Course 0 session — if it doesn't exist,
  stop and run Course 0 first.)
- Shipped exemplar: PMC/Torq Lessons Build/Torq Rebuild/Build/Course 3 - Analytics and Metrics for
  Product Decisions/Task 3 - Slicing and Sizing the Problem.html

Build 5 tasks into Technical Fluency Build/Build/Course 1 - How Software Is Built/:
1. "Languages and the hiring market attached" — HTML, CSS (§3 row), JavaScript, TypeScript
2. "The languages behind the logic" — Python, Java, Swift, Kotlin, SQL
3. "Frontend frameworks" — React, React Native, Angular/Vue, Bootstrap, CSS (§4 row), PWA
4. "Backend frameworks" — Django, Node.js/Express, Spring/Spring Boot, .NET/C#, ORM
5. "The frontend/backend split" — why a "small change" costs what it costs (§7's frontend/backend
   split row is homed HERE, not in Course 3)

CSS appears in both Task 1 and Task 3 — §3 covers it as a language, §4 as a frontend concern with
the design-system trade-off. Both rows are required. This is intentional, not a duplication bug.

ARTIFACT THREAD — this course establishes the pattern the whole program uses. Tasks 1-4 each
capture one slice of the client's stack (languages, platforms, frontend, backend). Task 5's artifact
ASSEMBLES them into the complete client stack map. Make the continuity explicit in each task so a
learner knows they're building toward something.

Task 1 must make the point that HTML and CSS are not programming languages — they describe structure
and appearance, not logic — and that calling them languages in the wrong room is a small tell.

Task 5 is the highest-leverage task in the course. The guide calls the frontend/backend split "the
single most load-bearing distinction in this guide" and says learning to predict which one you're
asking for is the highest-value skill in it. Give it the strongest treatment.

ALSO produce "Course 1 - Blocks to Add.md" — one section per task, using the EXACT template in
_BUILD-NOTES.md. 2-3 blocks per task. Card classification is especially strong here: sorting
technologies into Frontend / Backend / Neither is the literal fluency assessment for this course.
Use Card matching for term → real public example (React → Netflix, Django → Instagram,
Swift → Airbnb's 2018 return to native).

Non-negotiables:
- ~900 words / ~8 min per task. NO length cap — if a task runs long, SPLIT it, never cut content.
- Artifact canvases: localStorage wrapped in try/catch, Copy as text AND Download as .md.
- Artifacts target the learner's REAL client engagement. No fictional running scenario.
- Every example must be a real, verifiable public case — the guide's examples are already sourced
  this way, so keep them rather than substituting your own.
- Every task presents all three tier reads, labeled, using the tiered component. Never gate by tier.
- Brand: allowed hexes only, Inter only, exact hero gradient, #43A8FF never as text.
- Audit bar: banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK
- Reuse the existing "Regulated client?" and "One level up:" callouts verbatim.
- Blocks are NEVER built in HTML — markdown instruction sheet only.
```

---

## Prompt 3 — Course 2: How Systems Talk

```
Build Course 2 of the "Technical Fluency for Transform Practice" program for TorqHub, in
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School

Read in full before writing anything:
- "Technical Fluency — Program Spec.md" — §2 Course 2 task list and term assignments, §3, §4, §6
- "Technical Fluency Reference Guide.md" — §6 Data formats/interfaces/stores and §8 Networking
  (your source content), plus §2 master table for CSV and YAML, and §1 for the tier framing
- PMC/Torq Lessons Build/Torq Rebuild/Build/_BUILD-NOTES.md
- PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md — read Part 4 (failure modes) FIRST
- PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md
- Technical Fluency Build/_TASK-TEMPLATE-TIERED.html — START EVERY TASK FROM THIS FILE
- Shipped exemplar: PMC/Torq Lessons Build/Torq Rebuild/Build/Course 3 - Analytics and Metrics for
  Product Decisions/Task 3 - Slicing and Sizing the Problem.html

Build 6 tasks into Technical Fluency Build/Build/Course 2 - How Systems Talk/:
1. "Reading a payload" — JSON, XML, CSV, YAML
2. "APIs and the four hidden questions" — API
3. "REST, GraphQL, and webhooks" — REST, GraphQL, Webhook
4. "SQL vs. NoSQL and the data warehouse" — SQL vs. NoSQL, Data warehouse
5. "The network path" — HTTP/HTTPS, TCP/IP, DNS
6. "Identity and encryption" — encryption at rest/in transit, VPN, OAuth/SSO

Task 2 is built around the guide's four hidden questions inside "we'll just call their API": does it
expose the data we need, at what rate limit, with what authentication, and who owns the credentials?
Make those four the spine of the task and the artifact.

Task 3 MUST land that REST's verbs ARE CRUD — GET reads, POST creates, PUT/PATCH updates, DELETE
removes. Course 3 Task 1 builds directly on this. Add a forward cross-reference here, and note in
your handoff that Course 3 Task 1 needs the backward reference.

Task 5 should use the postal-service analogy the guide already establishes: DNS is the address book,
IP is the address, TCP makes sure the package arrives complete and in order, HTTP is the language
on the form inside, HTTPS means the envelope is sealed.

ARTIFACT THREAD — Tasks 1-5 each capture one layer of how the client's systems exchange data.
Task 6's artifact assembles them into a complete integration and data-flow map.

This course carries heavy regulated-client exposure — inbound webhook endpoints, what data crosses
which boundary, encryption controls, VPN onboarding lead times. Use the "Regulated client?" callout
in Tasks 3, 4, and 6 at minimum.

ALSO produce "Course 2 - Blocks to Add.md" — one section per task, using the EXACT template in
_BUILD-NOTES.md. 2-3 blocks per task. Strong fits here: card classification sorting a mixed list
into Data Format / Interface / Data Store / Protocol; card matching for HTTP status codes → meaning
(200, 301, 401, 403, 404, 500); a quiz on the four API questions.

Non-negotiables:
- ~900 words / ~8 min per task. NO length cap — if a task runs long, SPLIT it, never cut content.
- Artifact canvases: localStorage wrapped in try/catch, Copy as text AND Download as .md.
- Artifacts target the learner's REAL client engagement. No fictional running scenario.
- Every example must be a real, verifiable public case.
- Every task presents all three tier reads, labeled. Never gate by tier.
- Brand: allowed hexes only, Inter only, exact hero gradient, #43A8FF never as text.
- Audit bar: banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK
- Reuse the existing "Regulated client?" and "One level up:" callouts verbatim.
- Blocks are NEVER built in HTML — markdown instruction sheet only.
```

---

## Prompt 4 — Course 3: The Concepts Behind the Estimate

```
Build Course 3 of the "Technical Fluency for Transform Practice" program for TorqHub, in
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School

Read in full before writing anything:
- "Technical Fluency — Program Spec.md" — §2 Course 3 task list and term assignments, §3, §4, §6
- "Technical Fluency Reference Guide.md" — §7 Core concepts (your source content), plus §1 for the
  tier framing. NOTE: §7's frontend/backend split row belongs to Course 1 Task 5, not here.
- PMC/Torq Lessons Build/Torq Rebuild/Build/_BUILD-NOTES.md
- PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md — read Part 4 (failure modes) FIRST
- PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md
- Technical Fluency Build/_TASK-TEMPLATE-TIERED.html — START EVERY TASK FROM THIS FILE
- Shipped exemplar: PMC/Torq Lessons Build/Torq Rebuild/Build/Course 3 - Analytics and Metrics for
  Product Decisions/Task 3 - Slicing and Sizing the Problem.html

Build 6 tasks into Technical Fluency Build/Build/Course 3 - The Concepts Behind the Estimate/:
1. "CRUD as a permissions model and a scoping shortcut" — CRUD
2. "Cron jobs and where invisible business logic hides" — cron job
3. "NFRs — where scope turns into money" — non-functional requirements
4. "Monolith vs. microservices" — monolith vs. microservices
5. "Technical debt as a prioritization conversation" — technical debt
6. "Caching, scaling, and environments" — caching, the four scaling levers (partitioning, caching,
   redundancy, replication), dev/staging/production

This is the heaviest judgment content in the program. These are the concepts that turn a client's
words into an estimate, and the tasks should read that way — less vocabulary, more "here is what
this tells you and what to do about it."

Task 1 needs a backward cross-reference to Course 2 Task 3: REST's verbs ARE CRUD.

Task 3 IS THE HIGHEST-VALUE TASK IN THE ENTIRE PROGRAM. The guide states it directly: "the most
useful question in this entire guide is 'what are the non-functional requirements?'" — because a
client's PM often hasn't been asked. It reframes vague ambition into priced options; 99.9% and
99.99% availability are the same feature at very different costs. HealthCare.gov (October 2013) is
the canonical case — the functionality shipped, the concurrency requirement didn't. Give this task
the strongest artifact in the course, and let it run long and split into two tasks if it needs to.

Task 2 must land that cron jobs are where invisible business logic hides — nightly reconciliation,
billing runs, syncs, cleanups — and that it is rarely in the documentation and frequently
load-bearing. The instruction "explicitly ask what runs on a schedule" is the takeaway.

Task 4 must use Netflix's roughly eight-year datacenter-to-cloud-microservices migration (completed
January 2016) as the calibration case, and the guide's conclusion: a client proposing a similar move
on an eighteen-month program is describing an ambition, not a plan.

Task 5 must use Southwest Airlines' December 2022 disruption (~16,700 cancelled flights, roughly
$750M-$1.1B reported impact, publicly attributed to crew-scheduling systems that hadn't kept pace).

ARTIFACT THREAD — Tasks 1-5 each produce one input; Task 6's artifact assembles a complete NFR
worksheet the learner can take into a real scoping conversation.

ALSO produce "Course 3 - Blocks to Add.md" — one section per task, using the EXACT template in
_BUILD-NOTES.md. 2-3 blocks per task. The Program Spec §4 contains a fully worked example for
Task 1 — follow its shape exactly. Quiz blocks matter more in this course than elsewhere, because
the content is judgment rather than vocabulary: write scenario questions ("a client says X — what's
the strongest next question?") rather than definition recall.

Non-negotiables:
- ~900 words / ~8 min per task. NO length cap — if a task runs long, SPLIT it, never cut content.
- Artifact canvases: localStorage wrapped in try/catch, Copy as text AND Download as .md.
- Artifacts target the learner's REAL client engagement. No fictional running scenario.
- Every example must be a real, verifiable public case.
- Every task presents all three tier reads, labeled. Never gate by tier.
- Brand: allowed hexes only, Inter only, exact hero gradient, #43A8FF never as text.
- Audit bar: banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK
- Reuse the existing "Regulated client?" and "One level up:" callouts verbatim. Task 1's soft-delete
  point and Task 6's staging-data point both need the regulated callout.
- Blocks are NEVER built in HTML — markdown instruction sheet only.
```

---

## Prompt 5 — Course 4: How Software Ships

```
Build Course 4 of the "Technical Fluency for Transform Practice" program for TorqHub, in
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School

Read in full before writing anything:
- "Technical Fluency — Program Spec.md" — §2 Course 4 task list and term assignments, §3, §4, §6
- "Technical Fluency Reference Guide.md" — §9 Delivery and tooling and §10 Infrastructure (your
  source content), plus §2 master table for GitHub/GitLab/Bitbucket, and §1 for the tier framing
- PMC/Torq Lessons Build/Torq Rebuild/Build/_BUILD-NOTES.md
- PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md — read Part 4 (failure modes) FIRST
- PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md
- Technical Fluency Build/_TASK-TEMPLATE-TIERED.html — START EVERY TASK FROM THIS FILE
- Shipped exemplar: PMC/Torq Lessons Build/Torq Rebuild/Build/Course 3 - Analytics and Metrics for
  Product Decisions/Task 3 - Slicing and Sizing the Problem.html

Build 7 tasks into Technical Fluency Build/Build/Course 4 - How Software Ships/:
1. "IDEs, Git, and code review" — IDE, Git/version control, code review/PR, GitHub/GitLab/Bitbucket
2. "CI/CD — the velocity ceiling you can read in week one" — CI/CD
3. "Feature flags and automated testing" — feature flags, automated testing
4. "Observability — how anyone knows it broke" — observability
5. "Cloud and infrastructure as code" — cloud (IaaS/PaaS/SaaS), infrastructure as code
6. "Containers, Kubernetes, and the CDN" — containers/Docker, Kubernetes, CDN
7. "Open source — leverage and obligation" — open source

Task 2 IS THE FLAGSHIP of this course. The guide's claim: CI/CD is the fastest read available on a
client's real velocity ceiling, and it's observable in week one. A team releasing monthly cannot
deliver a two-week feedback loop no matter what the roadmap says. The three questions — how often do
you deploy, how long does the pipeline take, can any engineer trigger it — are the task's spine.
Use both executive-legible cases: Knight Capital (roughly $440M in 45 minutes, August 2012, a manual
deployment reaching seven of eight servers) and CrowdStrike (July 2024, millions of Windows machines,
a content update with insufficient staged rollout). Release process IS enterprise risk at a
magnitude executives already recognize.

Task 1 must name the forced constraints, not just the preferences: Xcode is REQUIRED to build and
submit iOS apps; Android Studio is the practical requirement for Android. Those are hardware and
licensing constraints, not developer taste. Also cover the AI-assisted IDE policy question — what
code may be sent to a third-party model is a live constraint on Torq's own delivery team, and it
must be confirmed against the engagement's AI-and-data policy before the engagement starts.

Task 7 must use Log4Shell (December 2021) and connect it to SBOM requirements, plus the license
distinction that actually matters commercially: permissive (MIT, Apache 2.0) vs. copyleft (GPL) vs.
source-available (BSL). Copyleft in a distributed product is a real legal problem, not a formality.

Task 6 must include the Fastly June 2021 outage as the CDN concentration-risk case.

ARTIFACT THREAD — Tasks 1-6 each produce one read on the client's delivery health. Task 7's artifact
assembles them into a "week-one delivery-health questions" list the learner can actually run.

ALSO produce "Course 4 - Blocks to Add.md" — one section per task, using the EXACT template in
_BUILD-NOTES.md. 2-3 blocks per task. Strong fits: card classification sorting tools into Delivery /
Infrastructure / Neither; card matching for incident → root cause (Knight Capital → manual
deployment, Log4Shell → open-source dependency, Fastly → CDN concentration); quiz questions on what
a given CI/CD answer implies for the roadmap.

Non-negotiables:
- ~900 words / ~8 min per task. NO length cap — if a task runs long, SPLIT it, never cut content.
- Artifact canvases: localStorage wrapped in try/catch, Copy as text AND Download as .md.
- Artifacts target the learner's REAL client engagement. No fictional running scenario.
- Every example must be a real, verifiable public case.
- Every task presents all three tier reads, labeled. Never gate by tier.
- Brand: allowed hexes only, Inter only, exact hero gradient, #43A8FF never as text.
- Audit bar: banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK
- Reuse the existing "Regulated client?" and "One level up:" callouts verbatim. Task 1's AI-IDE
  policy point and the code-review-as-control point both need the regulated callout.
- Blocks are NEVER built in HTML — markdown instruction sheet only.
```

---

## Prompt 6 — Course 5: AI and Agentic Tooling

```
Build Course 5 of the "Technical Fluency for Transform Practice" program for TorqHub, in
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School

Read in full before writing anything:
- "Technical Fluency — Program Spec.md" — §2 Course 5 task list and term assignments, §3, §4, §6
- "Technical Fluency Reference Guide.md" — §11 AI and agentic tooling (your source content), plus
  §1 for the tier framing
- "Torq Consultant Learning Path.md" — §4 Tier 3, for the named agentic-PM gap that Task 7 surfaces
- PMC/Torq Lessons Build/Torq Rebuild/Build/_BUILD-NOTES.md
- PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md — read Part 4 (failure modes) FIRST
- PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md
- Technical Fluency Build/_TASK-TEMPLATE-TIERED.html — START EVERY TASK FROM THIS FILE
- Shipped exemplar: PMC/Torq Lessons Build/Torq Rebuild/Build/Course 3 - Analytics and Metrics for
  Product Decisions/Task 3 - Slicing and Sizing the Problem.html

Build 7 tasks into Technical Fluency Build/Build/Course 5 - AI and Agentic Tooling/:
1. "What an LLM actually does — and where AI cost comes from" — LLM, tokens/context window
2. "RAG and the ownership boundary" — RAG
3. "Embeddings, vector databases, and retrieval quality" — embeddings/vector DB
4. "Fine-tuning vs. RAG — the expensive misunderstanding" — fine-tuning
5. "Agents and MCP" — agent, MCP
6. "Evals, the accuracy trap, and hallucination" — evals, hallucination
7. "AI coding assistants and the verification shift" — AI coding assistant

THIS CONTENT AGES FASTEST. The guide says so explicitly. Every task must carry an "accurate as of
August 2026 — verify before quoting a client anything time-sensitive" framing. Do not write it as
though it will be true indefinitely.

Task 1 must land the distinction that resolves most client confusion: the model has GENERAL
knowledge from training and SPECIFIC knowledge only from what's in its context. "It doesn't know our
products" is a context problem, not a model problem. The task's artifact is a token-cost estimate —
per-request token estimate × expected volume = a monthly number — and the guide's point that the
consultant who supplies cost-per-transaction BEFORE the pilot is the one asked back for phase two.

Task 2 must land the most transferable ownership boundary in AI product work: engineers own
retrieval mechanics; PMs own WHAT should be retrieved and WHY. Which documents are authoritative,
which are stale, who decides. A client's team often has no owner for this.

Task 4 must correct the most common and most expensive client misunderstanding in AI scoping:
fine-tuning is usually the WRONG answer to "it doesn't know our facts." That's RAG. Fine-tuning is
for consistent behavior and format, and it creates the strongest provider lock-in available.

Task 5 must include the honest boundary — agents excel where steps are variable and verification is
cheap, and are a poor fit where a deterministic workflow would do the same job more reliably and
cheaply. "Could this be a script?" is a fair question. For MCP: introduced by Anthropic in November
2024, adopted by OpenAI in March 2025; the cross-vendor adoption is what makes it a standard rather
than a vendor feature. An MCP server is an access-control boundary — the security review is on the
server's scope, not on the model.

Task 6 MUST include the accuracy-trap arithmetic, which the guide calls the single most useful
number in a client AI conversation: 95% accuracy on 1,000 transactions a day is 50 wrong outputs
daily, some of them silently wrong. Ask what happens to those fifty. It converts an enthusiasm
conversation into a risk conversation with arithmetic, which is what an executive audience responds
to. Make this the centerpiece of the task and its artifact.

Task 7 MUST surface the honest gap that both "Torq Scoping Response.md" §7 and "Torq Consultant
Learning Path.md" §4 name: NO course line in the Torq library teaches how product roles and
artifacts change when engineering is increasingly agentic. Flag it explicitly as a known gap; do not
quietly fill it. The closest evidence is Anthropic's Bun-runtime rewrite account — roughly 15% of
effort writing code, 85% verification — and its implication that PM and QA leverage rises while raw
implementation cost falls, which changes team shape, estimates, and what a client should be buying.

ARTIFACT THREAD — Tasks 1-6 each produce one input. Task 7's artifact assembles a complete AI
feasibility and risk read.

This course carries the heaviest regulated-client exposure in the program. RAG puts client data into
a model's context — that is a data-governance question first, and permission leakage through
retrieval is a genuine and under-appreciated exposure. Use the "Regulated client?" callout in Tasks
2, 5, and 6 at minimum. Every task must also point back to the engagement's own AI-and-data policy
and Torq's "AI at Torq Intro" course, which carries the actual rules.

ALSO produce "Course 5 - Blocks to Add.md" — one section per task, using the EXACT template in
_BUILD-NOTES.md. 2-3 blocks per task. Strong fits: card classification sorting AI problems into
"RAG solves this" / "fine-tuning solves this" / "neither — it's a product problem"; a quiz built on
the accuracy-trap arithmetic; card flipping for the AI vocabulary, which is the newest and least
familiar in the program.

Non-negotiables:
- ~900 words / ~8 min per task. NO length cap — if a task runs long, SPLIT it, never cut content.
- Artifact canvases: localStorage wrapped in try/catch, Copy as text AND Download as .md.
- Artifacts target the learner's REAL client engagement. No fictional running scenario.
- Every example must be a real, verifiable public case.
- Every task presents all three tier reads, labeled. Never gate by tier.
- Brand: allowed hexes only, Inter only, exact hero gradient, #43A8FF never as text.
- Audit bar: banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK
- Reuse the existing "Regulated client?" and "One level up:" callouts verbatim.
- Blocks are NEVER built in HTML — markdown instruction sheet only.
```

---

## Prompt 7 — Course 6: In the Client Room · RUN LAST

```
Build Course 6 of the "Technical Fluency for Transform Practice" program for TorqHub, in
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School

This course runs LAST. Its capstone reuses the artifacts produced in Courses 1-5, so those must
exist before you start. If Technical Fluency Build/Build/Course 5 - AI and Agentic Tooling/ is
missing, stop and build the earlier courses first.

Read in full before writing anything:
- "Technical Fluency — Program Spec.md" — §2 Course 6 task list, §3, §4, §6
- "Technical Fluency Reference Guide.md" — §12 Client-room phrasebook and §13 The four-step system
  read (your source content), plus §1 for the tier framing
- Every "Course N - Blocks to Add.md" and the artifact section of every task already built in
  Technical Fluency Build/Build/ — the capstone assembles these, so you need to know exactly what
  the learner is holding by the time they arrive
- PMC/Torq Lessons Build/Torq Rebuild/Build/_BUILD-NOTES.md
- PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md — read Part 4 (failure modes) FIRST
- PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md
- Technical Fluency Build/_TASK-TEMPLATE-TIERED.html — START EVERY TASK FROM THIS FILE
- Shipped exemplar for a capstone: PMC/Torq Lessons Build/Torq Rebuild/Build/Course 6 - Go-to-Market
  Launch Plans/ (its final task assembles the whole program's artifacts)

Build 4 tasks into Technical Fluency Build/Build/Course 6 - In the Client Room/:
1. "Phrasebook I — what they say about code and change" — the first 6 rows of §12
2. "Phrasebook II — what they say about data, AI, and process" — the remaining 6 rows of §12
3. "The four-step system read" — §13
4. "Capstone — run the system read on your live engagement" — the assembled artifact

Tasks 1 and 2 teach the same move twelve times: what they say → what it usually means → the question
that makes you useful rather than decorative. Keep the three-column shape from §12; it's the whole
teaching. Each phrase should point back to the course that covered its underlying concept, so the
phrasebook doubles as an index into the program.

Task 3 teaches §13's four steps: requirements (functional and non-functional), high-level design,
data and interfaces, and design choices against NFRs. The crucial framing is that you don't need to
understand the answers deeply to learn a great deal from HOW they're answered — if nobody can state
a load or availability target, the estimate has no floor; if no current architecture diagram exists,
producing one is a genuinely valuable and highly visible early deliverable.

Task 4 is the capstone. The learner runs the four-step system read on their actual client
engagement, pulling in the stack map (Course 1), integration map (Course 2), NFR worksheet
(Course 3), delivery-health questions (Course 4), and AI feasibility read (Course 5). The artifact
is the assembled system read — a real deliverable they can put in front of a client.

Task 3 must include the tier note from §13: Tier 1 observes and takes the notes, Tier 2 runs the
conversation and produces the diagram, Tier 3 reads the answers as delivery risk and prices phase
two accordingly. This is the clearest place in the program where the three tiers do genuinely
different work with the same material.

Close the program by restating the one rule from Course 0 Task 1 — recognition buys the right to ask
a good question, not an opinion on the client's architecture — and by pointing the learner at
"Technical Fluency Reference Guide.md" as the lookup reference that outlives the course.

ALSO produce "Course 6 - Blocks to Add.md" — one section per task, using the EXACT template in
_BUILD-NOTES.md. 2-3 blocks per task. Card matching is the standout fit here: "what they say" →
"what to ask" is literally a matching exercise, and it's the best assessment of whether the
phrasebook landed. Use it in both Task 1 and Task 2. Task 3 gets a card classification sorting
questions into the four system-read steps.

Non-negotiables:
- ~900 words / ~8 min per task. NO length cap — if a task runs long, SPLIT it, never cut content.
- Artifact canvases: localStorage wrapped in try/catch, Copy as text AND Download as .md.
- Artifacts target the learner's REAL client engagement. No fictional running scenario.
- Every example must be a real, verifiable public case.
- Every task presents all three tier reads, labeled. Never gate by tier.
- Brand: allowed hexes only, Inter only, exact hero gradient, #43A8FF never as text.
- Audit bar: banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK
- Reuse the existing "Regulated client?" and "One level up:" callouts verbatim.
- Blocks are NEVER built in HTML — markdown instruction sheet only.
```

---

## After all seven

Two things remain that no course session covers:

1. **Create the Program in TorqHub.** Courses 0–6 in sequence, each gated behind the last. Done once in the admin UI after the courses exist; nothing to build.
2. **Hand-enter ~95 blocks** from the seven `Course N - Blocks to Add.md` sheets. Each sheet is read top to bottom, clicking **+ Add block** inside the already-named Task and picking Type → filling that type's fields. These are never new Tasks and get no Task title of their own.

## Related files

- [`Technical Fluency — Program Spec.md`](Technical%20Fluency%20—%20Program%20Spec.md) — the coverage map, deliverables, block plan, and production spec every prompt above references
- [`Technical Fluency Reference Guide.md`](Technical%20Fluency%20Reference%20Guide.md) — the source content, and the lookup reference that survives alongside the program
- [`Torq Consultant Learning Path.md`](Torq%20Consultant%20Learning%20Path.md) — tier definitions, the source for Course 0
