# Technical Fluency for Transform Practice — Program Spec

**A TorqHub program built from [`Technical Fluency Reference Guide.md`](Technical%20Fluency%20Reference%20Guide.md).** This file is the coverage proof that `_LD-BUILD-METHOD.md` Part 2 requires *before* any writing starts. Task count is derived from the map below, never assumed.

**Built:** 2026-08-27. **Governed by:** [`_LD-BUILD-METHOD.md`](PMC/Torq%20Lessons%20Build/Torq%20Rebuild/_LD-BUILD-METHOD.md) · [`_BUILD-NOTES.md`](PMC/Torq%20Lessons%20Build/Torq%20Rebuild/Build/_BUILD-NOTES.md) · [`_TORQ-COMPANY-CONTEXT.md`](PMC/Torq%20Lessons%20Build/Torq%20Rebuild/_TORQ-COMPANY-CONTEXT.md)

---

## 1. Shape

**Program:** Technical Fluency for Transform Practice · **7 courses (0–6)** · **39 tasks** · **no artifacts** · **~95 blocks** · ~2 weeks at 20–30 min/day.

Deliberately proportional to the shipped Torq Product Practice program (7 courses / 37 tasks), so pacing, per-course length, and learner expectations transfer without re-teaching anyone how the program works.

| Course | Title | Tasks | Guide sections |
|---|---|---|---|
| **0** | Before You Start | 4 | §1 · Learning Path §2a–§2d · §14  |
| **1** | How Software Is Built | 5 | §3 Languages · §4 Frontend · §5 Backend  |
| **2** | How Systems Talk | 6 | §6 Data & interfaces · §8 Networking  |
| **3** | The Concepts Behind the Estimate | 6 | §7 Core concepts  |
| **4** | How Software Ships | 7 | §9 Delivery · §10 Infrastructure  |
| **5** | AI and Agentic Tooling | 7 | §11 AI & agentic  |
| **6** | In the Client Room | 4 | §12 Phrasebook · §13 System read  |

### Audience and level-gating

**None.** Single program, any tenure — matching the locked decision in `_BUILD-NOTES.md`: *"anyone can take it and I am not intending to gatekeep."* Every task presents all three tier reads, labeled. A Tier 1 consultant sees the Tier 3 strategic framing and knows it's above their current altitude; nothing is hidden.

Per the guide's §1, **Tier 3 is not a deeper technical level than Tier 2.** It's the same L3 facts plus the commercial consequence. That's a different axis, not a higher one, and every task must be written on that assumption.

---

## 2. Coverage map

One row per deep-dive term in the reference guide, mapped to the task that covers it. **66 term rows across §3–§11. Mapped: 66. Unmapped: 0.**

Four master-table-only terms (CSV, YAML, GitHub/GitLab/Bitbucket) also get homes below. Load balancing, replication/redundancy, and partitioning/sharding are covered collectively as §7's "four scaling levers."

### Course 0 — Before You Start (4 tasks)

| # | Task | Source |
|---|---|---|
| 1 | How to use this program · the L1–L5 fluency ladder · the one rule | §1  |
| 2 | What tier am I? Scope, autonomy, impact | Learning Path §2a–§2b  |
| 3 | What moving up takes — observable behaviors, five currencies, the rubric guardrail | Learning Path §2c–§2d  |
| 4 | Sources & Further Reading | §14  |

**The one rule (T1) is load-bearing and must survive into the writing:** fluency is for understanding and asking, not performing. *"I know what that is — tell me why you chose it,"* never *"ah, of course, classic microservices play."* Recognition buys the right to ask a good question; it does not buy an opinion on a client's architecture.

### Course 1 — How Software Is Built (5 tasks) · 21 rows

| # | Task | Terms covered |
|---|---|---|
| 1 | Languages and the hiring market attached | HTML, CSS *(§3)*, JavaScript, TypeScript  |
| 2 | The languages behind the logic | Python, Java, Swift, Kotlin, SQL  |
| 3 | Frontend frameworks | React, React Native, Angular/Vue, Bootstrap, CSS *(§4)*, PWA  |
| 4 | Backend frameworks | Django, Node.js/Express, Spring/Spring Boot, .NET/C#, ORM  |
| 5 | The frontend/backend split — why a "small change" costs what it costs | Frontend/backend split *(§7 row, homed here)*  |

CSS legitimately appears twice — §3 covers it as a language, §4 as a frontend concern with the design-system trade-off. Both rows are required; this is not a duplication bug.

### Course 2 — How Systems Talk (6 tasks) · 14 rows + 2 master-only

| # | Task | Terms covered |
|---|---|---|
| 1 | Reading a payload | JSON, XML, **CSV**, **YAML**  |
| 2 | APIs and the four hidden questions | API  |
| 3 | REST, GraphQL, webhooks | REST, GraphQL, Webhook  |
| 4 | SQL vs. NoSQL and the data warehouse | SQL vs. NoSQL, Data warehouse  |
| 5 | The network path | HTTP/HTTPS, TCP/IP, DNS  |
| 6 | Identity and encryption | Encryption at rest/in transit, VPN, OAuth/SSO  |

T3 must land that **REST's verbs *are* CRUD** — Course 3 T1 builds directly on it. Cross-reference in both directions.

### Course 3 — The Concepts Behind the Estimate (6 tasks) · 8 rows

| # | Task | Terms covered |
|---|---|---|
| 1 | CRUD as a permissions model and a scoping shortcut | CRUD  |
| 2 | Cron jobs and where invisible business logic hides | Cron job  |
| 3 | **NFRs — where scope turns into money** | Non-functional requirements  |
| 4 | Monolith vs. microservices | Monolith vs. microservices  |
| 5 | Technical debt as a prioritization conversation | Technical debt  |
| 6 | Caching, the four scaling levers, and environments | Caching, Scaling levers *(partitioning · caching · redundancy · replication)*, Dev/staging/production  |

T3 is the highest-value task in the program. The guide names it directly: *"the most useful question in this entire guide is 'what are the non-functional requirements?'"* — because a client's PM often hasn't been asked. Give it the strongest artifact.

### Course 4 — How Software Ships (7 tasks) · 13 rows + 1 master-only

| # | Task | Terms covered |
|---|---|---|
| 1 | IDEs, Git, and code review | IDE, Git/version control, Code review/PR, **GitHub/GitLab/Bitbucket**  |
| 2 | **CI/CD — the velocity ceiling you can read in week one** | CI/CD  |
| 3 | Feature flags and automated testing | Feature flags, Automated testing  |
| 4 | Observability — how anyone knows it broke | Observability  |
| 5 | Cloud and infrastructure as code | Cloud (IaaS/PaaS/SaaS), Infrastructure as code  |
| 6 | Containers, Kubernetes, CDN | Containers/Docker, Kubernetes, CDN  |
| 7 | Open source — leverage and obligation | Open source  |

T2 is the flagship. Knight Capital (~$440M in 45 minutes, August 2012) and CrowdStrike (July 2024) are the executive-legible cases — release process *is* enterprise risk at a magnitude executives already recognize.

### Course 5 — AI and Agentic Tooling (7 tasks) · 10 rows

| # | Task | Terms covered |
|---|---|---|
| 1 | What an LLM actually does — and where AI cost comes from | LLM, Tokens/context window  |
| 2 | RAG and the ownership boundary | RAG  |
| 3 | Embeddings, vector databases, retrieval quality | Embeddings/vector DB  |
| 4 | Fine-tuning vs. RAG — the expensive misunderstanding | Fine-tuning  |
| 5 | Agents and MCP | Agent, MCP  |
| 6 | Evals, the accuracy trap, and hallucination | Evals, Hallucination  |
| 7 | AI coding assistants and the verification shift | AI coding assistant  |

§11 ages fastest — the guide states it explicitly. Every task carries an "accurate as of August 2026, verify before quoting a client" framing. T6 must include the accuracy-trap arithmetic (95% on 1,000/day = 50 wrong outputs daily, some silently wrong) — it converts an enthusiasm conversation into a risk conversation with a number.

T7 must surface the honest gap both `Torq Scoping Response.md` §7 and `Torq Consultant Learning Path.md` §4 name: **no course line teaches how PM artifacts change when engineering is agentic.** Flag it; don't quietly fill it.

### Course 6 — In the Client Room (4 tasks)

| # | Task | Source |
|---|---|---|
| 1 | Phrasebook I — what they say about code and change | §12, 6 phrases  |
| 2 | Phrasebook II — what they say about data, AI, and process | §12, 6 phrases  |
| 3 | The four-step system read | §13  |
| 4 | Capstone — run the system read on your live engagement | §13 + Courses 1–5 artifacts  |

**Note (2026-08-28):** T4 originally reused artifacts produced in Courses 1–5. Artifacts are gone (§5b), so the capstone must run the four-step system read from the learner's own engagement directly, in the task itself. Course 6 is still written last, but the dependency is on the *material* of Courses 1–5, not on saved files.

---

## 3. Deliverables per task

Every task produces **two** things. The HTML file *is* Block 1 of the Task (Content → HTML → Upload HTML). Everything else stacks onto that same Task via **+ Add block** and shares one *Mark complete*.

| # | Deliverable | Format | Built by |
|---|---|---|
| 1 | `Task N - <Title>.html` | Self-contained HTML, ~900 words, audit-passing  |
| 2 | That task's section inside `Course N - Blocks to Add.md` | Plain markdown instruction sheet  |

**Inside the HTML,** per `_TASK-TEMPLATE.html`:

1. Hero — eyebrow (`Technical Fluency for Transform Practice · Course N · Task N of TOTAL`), h1, standfirst, meta (Course · Read time · Artifact)
2. Lede — 2–3 sentences, why this matters in the learner's real situation
3. 3–5 `<section>` blocks doing the teaching
4. **Tier component** — the three tier reads, labeled
5. Callouts where they apply — `Regulated client?` and `One level up:`, reused verbatim
6. Key takeaways — 4–5 one-liners
7. ~~Artifact canvas~~ — **removed, 2026-08-28.** See §5b. Tasks end at Key takeaways.

**Per course:** N HTML files + exactly one blocks sheet covering every task in that course.

### Task length

**~900 words / ~8 min.** Measured shipped range: 442–1,034, median 694. Hard rule: **no length cap — if a task runs long, split it into two; never cut content.** Coverage is handled by adding tasks.

---

## 4. Block plan — ~95 blocks across 39 tasks

2–3 blocks per task, weighted toward **Card flipping** and **Card classification**.

| Type | Size | Used for |
|---|---|---|
| **Card flipping** | 3–6 cards | Terminology. Always named `<Topic> Key Terms` |
| **Card classification** | 3–8 items into 2–3 buckets | The core fluency assessment — sort technologies into layers |
| **Card matching** | 4–6 pairs | Term → real public example (React → Netflix). In Course 6: "what they say" → "what to ask" |
| **Quiz** | 2–5 questions, 4 options | Judgment. Must be answerable purely from having read that task |

Blocks are **never** built in HTML. They go in the markdown instruction sheet only, using the exact template in `_BUILD-NOTES.md`. There is no end-of-course quiz convention — blocks attach to the task whose content they test.

### Worked example — Course 3, Task 1

```md
## Task: CRUD as a permissions model and a scoping shortcut — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: CRUD Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: CRUD | Definition: Create, Read, Update, Delete — the four operations any
   data-holding application performs on a record.
2. Term: Soft delete | Definition: Marking a record inactive rather than removing it,
   so history and audit trails survive.

### Block: Which CRUD operation? — Type: Card classification
**Buckets:** Create, Read, Update, Delete
**Cards to sort (statement → correct bucket):**
1. "A user changes their shipping address" → UPDATE
2. "An admin exports the customer list" → READ

### Block: Scoping a CRUD claim — Type: Quiz
1. A client says "it's just a CRUD app." What's the strongest next question?
   A. "What framework are you using?"
   B. "Walk me through delete — is it a real delete or a status change?"  ← correct
   C. "How many users does it have?"
   D. "Is it in the cloud?"
```

---

## 5. Two deliberate deviations from `_LD-BUILD-METHOD.md`

Recorded here so nobody "corrects" them in a later round.

### 1. Block density rises

~95 blocks across 39 tasks, versus 55 across 32 in the shipped program. The method says recall drills are *"the seasoning, not the meal"* — but that rule was written for judgment-teaching content, where terminology fluency is a means to an end.

Here **recognition is the learning objective itself.** The program's stated goal is that no consultant hears a term for the first time in a client room. Card classification ("sort these 12 technologies into Frontend / Backend / Data / Infrastructure") is not a warm-up for the assessment — it *is* the assessment.

The method's underlying concern still holds and is respected: drills don't teach judgment. That's what the Quiz blocks and Course 6 are for.

### 2. The de-duplication gate does not target the reference guide

`Technical Fluency Reference Guide.md` is Torq's own content, written for this purpose. Running an 8-gram overlap check between a task and the guide would fail a file for reusing material it was built from.

The gate's real target is the **external** material behind the guide: run the check against `Tech Simplified — Source Notes.md` and against the vendor documentation and public write-ups the guide cites. Thresholds unchanged — ≤8–10% overlap, no matched run over ~15 words.

---

### 3. Task length rebased to ~1,150 words

The ~900 figure was calibrated against the shipped Torq Product Practice tasks (measured 442–1,034, median 694). Those tasks carry **no tier component.** This program's mandatory three-read block adds ~250 words to every task before a word of teaching is written.

Course 0 shipped at 1,082–1,299 words in `<main>`. Net out the tier block and the teaching bodies sit at ~830–1,050 — inside the shipped range. **Target ~1,150 for this program**, and keep the real rule intact: no cap, split rather than cut. Splitting 39 tasks into ~50 to protect a number that predates the component would be the tail wagging the dog.

### 4. Course 0 Task 1 also carries workspace setup

Tasks 2 and 3 download `.md` files that are supposed to match a local workspace folder, and §2's task list never created one. Task 1 sets up `Technical Fluency/00-before-you-start/` … `06-in-the-client-room/`, mirroring the shipped program's orientation task. ~200 of Task 1's length is this, and it is not teaching content.

---

## 5b. Decisions locked while building Course 0

| Decision | Choice | Why |
|---|---|---|
| **Eyebrow** | `Technical Fluency · Course N · Task N of TOTAL`, with `&nbsp;` binding the Task segment | Measured, not assumed. The full five-word name renders 554px at Inter 600/13px/0.08em — fits the 720px measure on desktop, but at 375px wraps to `…FOR TRANSFORM / PRACTICE · COURSE 0 ·`, severing the name so "PRACTICE" reads as part of the course marker. The short form is 347px and breaks like the shipped 385px eyebrow. Without the `&nbsp;` entities, "OF 4" orphans. **Full program name stays in `<title>`, the artifact export header, the lesson foot, this spec, and the TorqHub program record** |
| **Tier label 1** | `Tier 1 — a level deeper` | Originally specced as "A level deeper". It was the only label not naming its tier, so in the stack it read asymmetrically against "Tier 2 —" / "Tier 3 —" and a Tier 1 reader had to infer which read was theirs. Fixed strings; do not reword per task |
| **Artifact canvases removed entirely** | No canvases, no per-task deliverable, no workspace repo, **no JavaScript in any task**. Tasks end at Key takeaways | Scott's call, 2026-08-28, and the right one. Two independent reasons: (1) the mechanism was probably inert in the target LMS — `_BUILD-NOTES.md` open items **#1 and #7** record that TorqHub's iframe sandboxing of `localStorage` **and** of blob downloads were both *never confirmed*, so a convention the whole artifact design depended on may simply not have worked; (2) it cost ~250–300 words of boilerplate per task, which is where the entire length overrun came from. Removing it dropped all nine built tasks to 941–1,195 words with no teaching content lost. **Removed from `_TASK-TEMPLATE-TIERED.html`, so Courses 2–6 inherit the change** |
| **De-duplication gate target** | External source notes only — `Tech Simplified` and `Cracking the PM Career` | Per §5.2. Course 0 passed at 0.1–2.4%, longest run 15 words |

---

## 6. Production spec

Full detail in [`_BUILD-NOTES.md`](PMC/Torq%20Lessons%20Build/Torq%20Rebuild/Build/_BUILD-NOTES.md). The non-negotiables:

- **Start every task from `_TASK-TEMPLATE.html`**, never by copying a sibling task — token drift is a known failure.
- **Allowed hexes only:** `#2D53F2` `#3A79F8` `#43A8FF` `#10213D` `#F6F9FF` `#E5E5E9` `#F2F2F2` `#FFFFFF`, plus `#00B050`/`#E5484D` for status semantics only.
- **Banned:** `#3F39B8` `#51DCFE` `#5EFFCC` `#BEFFEA` `#B9F1FE` `#030F36` `#FAFAFB` `#1F1A78`.
- **`#43A8FF` is 2.5:1 on white — never text.** Rules, dividers, gradient stops, dark-surface accents only.
- Hero gradient exactly `linear-gradient(120deg, #2D53F2, #3A79F8 55%, #43A8FF)`.
- Inter only, from Google Fonts, with the kit's fallback stack.
- Tokens **inlined** as a `:root` block per file — not `@import`ed. Each file ships standalone.
- **Audit bar:** `banned:0 · gradient:1 · focus:3 · globalEvent:0 · js:OK`
- **Tasks ship with no JavaScript at all** (see §5b). If any task ever reintroduces script: `localStorage` wrapped in try/catch, and pass `event`/`this` explicitly into handlers — never rely on global `event`.

### Content rules

- **Every example must be a real, verifiable public case.** No invented scenarios, no fictional running company. The guide's examples are already sourced this way — keep them.
- **Reuse the two existing callout patterns verbatim** rather than inventing new phrasing: `Regulated client?` and `One level up:`.

---

## 7. Build order and output location

Output into `Technical Fluency Build/Build/Course N - <Title>/`, mirroring the shipped program's folder structure.

| Order | Course | Why this position |
|---|---|---|
| 1 | **Course 0**  |
| 2–6 | Courses 1, 2, 3, 4, 5 | Any order, but sequential is simplest; Course 2 T3 and Course 3 T1 cross-reference |
| 7 | **Course 6**  |

Session prompts: [`Technical Fluency — Course Session Prompts.md`](Technical%20Fluency%20—%20Course%20Session%20Prompts.md)

---

## 8. Related files

- [`Technical Fluency Reference Guide.md`](Technical%20Fluency%20Reference%20Guide.md) — the source content, and the lookup reference that survives alongside the program
- [`Torq Consultant Learning Path.md`](Torq%20Consultant%20Learning%20Path.md) — tier definitions (§2a–§2d), the source for Course 0 T2–T3
- [`_BUILD-NOTES.md`](PMC/Torq%20Lessons%20Build/Torq%20Rebuild/Build/_BUILD-NOTES.md) — locked decisions, brand rules, the blocks-sheet template
- [`_LD-BUILD-METHOD.md`](PMC/Torq%20Lessons%20Build/Torq%20Rebuild/_LD-BUILD-METHOD.md) — the method, and Part 4's failure modes
- [`_TASK-TEMPLATE.html`](PMC/Torq%20Lessons%20Build/Torq%20Rebuild/_TASK-TEMPLATE.html) — the scaffold
