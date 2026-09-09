# Tech Simplified for PMs and Entrepreneurs — Source Notes

**Status: research notes, not a deliverable.** Raw material for the later Technical Fluency Reference Guide build (Prompt 3 in [`Technical Fluency Program — Session Prompts.md`](Technical%20Fluency%20Program%20—%20Session%20Prompts.md)). Nothing here is finished prose.

**Book:** *Tech Simplified for PMs and Entrepreneurs* — Deepak Singh (author), Priya Singh (editor). Self-published, January 2022. ISBN 9789355664990. ~294–304 pages depending on the listing. Author is an ex-Flipkart / upGrad / MX Player / Unacademy product leader (IIT Kharagpur, chemical engineering — non-CS himself) who now runs the PM ed-tech firm pmcurve.

---

## ⚠️ Read this before using anything below

**No copy of this book was read.** A filesystem and Spotlight search of this project and the wider machine on 2026-08-27 found no PDF, EPUB, or other copy — only `The_Product_Book_2nd_Edition-EN.pdf` and `ProductMindset-byPS.pdf`, which are different books. Everything below is **reconstructed from secondary sources**: reviewer write-ups, the publisher/retailer description, and the Goodreads review corpus. No pirated full text was opened, and nothing here reproduces the book's wording.

Three practical consequences:

1. **The section list is reconstructed, not transcribed.** Two independent review sources agree on ten sections and their order, which is strong for a secondary reconstruction — but section *titles* below are descriptive labels, not guaranteed to match the printed table of contents verbatim.
2. **Sub-topic granularity is uneven.** Sections 4, 7, 8, and 9 are described in detail by reviewers; sections 1, 2, 6, and 10 are described only in outline. Confidence is tagged per row.
3. **This book will not cover the whole Technical Fluency Reference Guide term list.** See [§4 — Gaps](#4--gaps-the-book-does-not-cover-important). This is the single most important finding for the next session.

---

## 1 — Coverage map

One row per identified section, per `_LD-BUILD-METHOD.md` Part 2. **Type** governs coverage; **Source** records where the row came from; **Confidence** records how well corroborated it is.

Confidence key — **High:** two or more independent sources agree. **Medium:** one detailed source, consistent with the others' general description. **Low:** inferred, or a single passing mention.

| # | Section (reconstructed) | Sub-topics identified | Type | Source | Confidence |
|---|---|---|---|---|---|
| 0 | Framing: five levels of tech understanding (1 no clue → 2 broad understanding → 3 understands implications for a digital product → 4 understands each decision and trade-off → 5 writes code) | Self-placement model; book explicitly targets moving a reader from L1 to roughly L3 | **TEACHING** | Bhat review (Medium) | Medium — one source, but described as the author's own explicit framing |
| 1 | Computers | Binary; hardware classes — input, output, storage, processing | **TEACHING** | Bhat (Medium); ProductLeadership.com review | High |
| 2 | Software | What software is; operating systems on desktop and mobile; open-source software | **TEACHING** | Bhat; ProductLeadership.com | High |
| 3 | Internet | Network-of-networks concept; ISPs; Wi-Fi, modem, router, WAP; internet protocols (postal-system analogy); encryption; VPNs. TCP, IP, DNS, HTTP named as terminology taught | **TEACHING** | Bhat; ProductLeadership.com; Goodreads/retailer descriptions naming HTTP/TCP/IP/DNS/VCS | High |
| 4 | Websites | World Wide Web; front-end vs. back-end as a division of labour; SQL vs. NoSQL databases; a full request trace using google.com — client→server, server→database→server, server→client. CSS named as terminology taught | **TEACHING** | Bhat; ProductLeadership.com; retailer descriptions | High |
| 5 | Key development concepts | APIs (restaurant/waiter analogy); types of API; REST APIs | **TEACHING** | Bhat; ProductLeadership.com | High |
| 6 | Mobile apps | Android vs. iOS; building a mobile website vs. building a native app | **TEACHING** | Bhat; ProductLeadership.com | High |
| 7 | DevOps | Dev / staging / production environments (car-factory analogy); version control, Git, GitHub; why DevOps emerged; CI/CD; standing up infrastructure; cloud computing; infrastructure as code; microservices | **TEACHING** | Bhat; ProductLeadership.com; ProgramStrategyHQ review | High |
| 8 | System design | Non-functional requirements as the entry point; scalability; load balancing and distributed systems; performance levers — partitioning, caching, redundancy, replication; choosing SQL vs. NoSQL for a given case | **TEACHING** | Bhat; ProductLeadership.com; ProgramStrategyHQ; multiple Goodreads reviewers single this section out | High |
| 9 | System design of real products | Five worked builds — URL shortener (Bitly), social feed (Twitter), marketplace (Airbnb), mobility (Uber), messaging (WhatsApp). Each worked in the same four steps: functional + non-functional requirements → high-level design → databases and APIs → design choices that satisfy the NFRs | **TEACHING** | Bhat; ProductLeadership.com; corroborated by Goodreads reviewers naming Twitter/Uber/WhatsApp | High |
| 10 | Working with tech as a PM | Interview/conversation with Ankit Tomar (CPTO Bizongo, ex-Microsoft PM): what engineering leaders expect of PMs, and the characteristic gaps in product leaders who don't understand tech | **ADAPT** | Bhat | Medium — one source; a second reviewer independently notes the PM-behaviour material is confined to the last few pages, which is consistent |
| 11 | Cybersecurity | Named as a covered area, but no reviewer places it in a section of its own | **TEACHING** | ProgramStrategyHQ | **Low** — likely the encryption/VPN material inside §3 rather than a standalone section. Do not treat as a separate section without verification |

**Teaching rows: 10 (plus 1 framing row, 1 low-confidence row). Mapped to the Technical Fluency Guide: see §3. Unmapped: 0.**

**Type summary:** 10 TEACHING · 1 ADAPT · 1 low-confidence TEACHING · 0 LOGISTICS · 0 STRUCTURAL.

---

## 2 — Concepts in our own words

Written from the coverage map, source pages closed. These are working definitions for the guide build, not the book's explanations.

### The organising idea

The book's premise is that "understanding technology" and "knowing how to code" are two different skills that get conflated, and that the first one is learnable in weeks rather than years if someone explains it without assuming a CS background. It is deliberately breadth-first: reviewers consistently describe it as covering a lot at shallow depth, which several treat as the point and one or two treat as a weakness. For our purposes that shape is a good match — a fluency guide has the same job.

The **five-level self-placement model** is the most directly reusable framing in the book, and it maps onto the Torq tiers almost cleanly:

| Book level | Rough Torq tier equivalent | Note |
|---|---|---|
| L1 — no clue | below Tier 1 | |
| L2 — broad understanding | Tier 1 target (broad-exposure framing) | |
| L3 — understands what a technical choice implies for the product | Tier 2 target (working fluency) | |
| L4 — understands each decision and its trade-offs in detail | above what any Torq tier needs | This is an engineer's bar, not a consultant's |
| L5 — writes code | out of scope | |

Worth noting for the guide: the book's own ceiling is L3. It does **not** claim to get a reader to L4, and neither should the guide. Tier 3's "strategic/risk framing" is not L4 — it is L3 plus commercial consequence, which is a *different axis*, not a deeper one. That's a useful thing to say out loud in the guide's front matter.

### Layer-by-layer content

**Computers and software (§1–2).** Bottom-of-the-stack grounding: binary, the four hardware roles (input, output, storage, processing), what an operating system does and why the desktop and phone answers differ, and what "open source" actually means as a licensing and distribution model rather than as "free." Low value for a consultant guide in isolation — but the open-source thread matters at Tier 3, because it's the root of vendor-lock-in and licensing-risk conversations.

**Internet (§3).** How a request physically gets from a home to a server: ISPs, the modem/router/access-point chain, and the protocol stack. The named terms — TCP, IP, DNS, HTTP — are exactly the ones that show up unexplained in a client engineering standup. Encryption and VPNs are taught here, which is where the "cybersecurity coverage" claim in one review most likely comes from. The book uses a postal-delivery analogy for protocols (addressing, routing, packets arriving out of order).

**Websites (§4).** The single most load-bearing section for a PM. Three ideas: (a) front-end vs. back-end as a division of responsibility, which is why a "small visual change" and a "small data change" can have wildly different costs; (b) SQL vs. NoSQL as a real choice with consequences, not a preference; (c) a full request trace using a familiar site, walking client→server, server→database→server, server→client. That trace is the mental model everything else hangs off. **For the guide: this is where React, Django, Bootstrap, CSS, HTML and the language rows belong — but see §4, the book itself does not name most of those.**

**APIs (§5).** APIs as a contract for asking another system to do something, with a defined request format and a defined response — the restaurant analogy (you order from a menu; you don't walk into the kitchen). Then the taxonomy, and REST specifically as the dominant web convention. The consultant-relevant point the book is making: "we'll just call their API" is a scoping claim that hides the questions of whether the API exposes the needed data, at what rate limit, and with what auth.

**Mobile (§6).** Android vs. iOS as two ecosystems with different review, distribution, and update dynamics, and the mobile-web vs. native-app decision. **The guide needs Swift and React Native rows here** — the book covers the decision, and probably names the platforms, but no source confirms it names those specific technologies.

**DevOps (§7).** The richest section for consultant fluency after §4, because it's about *how work ships*, which is what a consultant is actually advising on:
- **Environments** — dev, staging, production as three separate copies of the system; the car-factory analogy (assembly line, test track, customer's driveway). Explains why "it works on my machine" and "we can't test that in prod" are real constraints, not excuses.
- **Version control, Git, GitHub** — change history, branching, and why "just revert it" is sometimes trivial and sometimes not.
- **CI/CD** — automated build, test, and release. The consultant-relevant version: a team's CI/CD maturity is the ceiling on how fast the roadmap can actually move, and it's observable in week one.
- **Cloud computing and infrastructure as code** — renting rather than owning compute, and describing infrastructure in files so it can be versioned and rebuilt.
- **Microservices** — splitting a system into independently deployable services; the trade-off (independent teams and releases vs. much more operational complexity) is a genuine Tier 3 delivery-risk conversation.

**System design (§8).** Starts at non-functional requirements — the qualities a system must have (how fast, how many concurrent users, how much downtime is tolerable, how much data loss is tolerable) as distinct from what it does. Then the levers: scalability, load balancing across many machines, and performance through partitioning (split the data), caching (keep hot answers close), redundancy (spare capacity), and replication (multiple copies). Closes on choosing a database for a specific case.

The transferable claim for a consultant: **NFRs are where product decisions turn into cost.** "Real-time" and "eventually consistent within a minute" describe the same feature and price very differently. A consultant who can ask for NFRs explicitly is doing something a client's PM often isn't.

**Worked system designs (§9).** Five familiar products, each run through the same four-step method: requirements (functional + non-functional) → high-level design → databases and APIs → the design choices that satisfy the NFRs. Reviewers repeatedly name this as the best part of the book because it's where the earlier abstractions become concrete. **The repeatable four-step structure is the reusable asset here, more than any individual product's architecture** — it's a template a consultant can run on a client's system to ask better questions.

**Working with tech (§10).** A practitioner conversation rather than instruction: what engineering leadership expects from PMs, and the specific failure modes of product leaders who lack technical grounding. Tagged ADAPT — the content is relevant to the guide's framing but is interview-shaped, not table-shaped.

---

## 3 — Mapping to the Technical Fluency Reference Guide

Prompt 3 specifies a master table plus per-category deep-dive tables. Here is what this book actually supplies against that.

| Guide category | Terms the prompt names | Book coverage | Where from |
|---|---|---|---|
| **Concept** | CRUD, cron jobs | ⚠️ **Not confirmed.** CRUD is plausibly implicit in §4 (databases) and §5 (REST); cron jobs are not mentioned by any source | — |
| **Data format** | JSON | ⚠️ **Not confirmed.** Implied by §5 (REST APIs) but never named in any source | — |
| **Frontend framework** | React, React Native, Bootstrap, CSS | Partial — CSS confirmed as a taught term (§4). React, React Native, Bootstrap **not named in any source** | §4, §6 for the underlying concepts |
| **Backend framework** | Django | ⚠️ **Not named in any source.** §4's back-end material is framework-agnostic | — |
| **Language** | Swift, Java, Python, HTML | ⚠️ **Not confirmed.** §6 covers iOS/Android natively-vs-web but no source names Swift or Java | — |
| **AI / agentic tooling** | MCP | ❌ **Impossible.** Book published January 2022; MCP was introduced in late 2024 | — |
| **Tooling** | IDEs | ⚠️ Not named; §7 covers Git/GitHub, which is adjacent but not the same thing | §7 |
| *(book-supplied, not in prompt)* | HTTP, TCP, IP, DNS, VCS/Git, GitHub, CI/CD, REST, SQL, NoSQL, cloud, IaC, microservices, load balancing, caching, replication, partitioning, NFRs, dev/staging/prod | ✅ **Well covered** — the strongest contribution this book makes | §3, §4, §5, §7, §8 |

### The honest read

**This book is a strong source for the infrastructure, delivery, and system-design half of the guide, and a weak source for the named-technology half.** It teaches *layers and concepts* — protocols, environments, databases, scaling levers — not a catalogue of named frameworks and languages. The prompt's own term list (React, Django, Bootstrap, Swift, MCP…) is mostly *not* what this book is about.

Recommendation for the next session: treat this book as the source for **structure and sequencing** — the layer order (hardware → software → network → web → APIs → mobile → delivery → system design) is a genuinely good spine for the master table's category ordering — and source the individual named-technology rows from current primary documentation instead. That also sidesteps a real problem: a 2022 book is stale on exactly the fast-moving rows (AI tooling, agentic frameworks) that a 2026 Torq consultant most needs.

### Rows this book adds that the prompt's list is missing

Worth adding to the guide on the strength of this source. All would be new **Added** rows in Origin terms, not source coverage.

- **Non-functional requirements** — arguably the highest-leverage single concept in the book for a consultant.
- **Dev / staging / production environments** — near-universal in client conversation, easy to teach, rarely taught.
- **CI/CD** — and its use as a fast, observable read on a client team's delivery ceiling.
- **SQL vs. NoSQL** — as a decision with consequences, not two brand names.
- **Load balancing, caching, replication, partitioning** — the four scaling levers, which is the vocabulary of any "will it scale" conversation.
- **Microservices vs. monolith** — Tier 3 delivery-risk and org-shape material.
- **Cloud computing / infrastructure as code** — the cost and lock-in conversation.
- **Git / version control** — the shape of "can we roll that back."
- **The four-step system-design walkthrough** — as an *exercise format* for the guide, not just a term.

---

## 4 — Gaps (the book does not cover; important)

Flagged so a later session doesn't go looking for these in this book and conclude the research was thin.

1. **No named frontend or backend frameworks confirmed.** No source mentions React, Django, Bootstrap, Vue, Rails, Spring, or any equivalent. The book teaches the front-end/back-end *split*, not the market of tools that fill it.
2. **No AI or agentic content at all.** Published January 2022 — pre-ChatGPT. Nothing on LLMs, RAG, agents, evals, or MCP. The guide's entire AI/agentic tooling category has to come from elsewhere; the Torq AI PM line and current Anthropic documentation are the realistic sources.
3. **India-centric and consumer-internet-centric.** One Goodreads reviewer notes the focus is squarely on internet businesses. Enterprise, regulated-industry, and legacy-systems contexts — which is a lot of Torq's actual client base — are not the frame.
4. **2022 currency generally.** Cloud, CI/CD, and microservices content ages slowly; anything about specific tools or the mobile ecosystem ages fast.
5. **Thin on the PM/consultant behaviour side by design.** Multiple reviewers note the PM-practice material is confined to the closing pages. This is a tech-explainer book, not a PM book — which is fine, because that half comes from *Cracking the PM Career*.

---

## 5 — Sources used

All are legitimate, publicly accessible secondary sources. No pirated full-text copy was opened; several search results pointed to obvious pirate mirrors and those were deliberately not fetched.

| Source | What it supplied | Weight |
|---|---|---|
| [Pranav Bhat — "Technology for non-technology people from basics to system design," Medium, May 2023](https://medium.com/@pranavbhatblog/book-review-3-tech-simplified-6fce0565ca4e) | **The primary source.** Section-by-section walkthrough of all ten sections with sub-topics, plus the five-level framing and the author's background | Heavy |
| [ProductLeadership.com — "Tech Simplified Book Review: Learn Technology Without Coding"](https://www.productleadership.com/blog/book-review-tech-simplified/) | Independent section-by-section confirmation of the same ten-section structure and sub-topics | Heavy — but note it may be partly derivative of the Bhat review; treat the two as ~1.5 sources, not 2 |
| [ProgramStrategyHQ — "Book Review: Tech Simplified for PMs & Entrepreneurs"](https://www.programstrategyhq.com/post/book-review-tech-simplified-deepak-singh) | Confirms DevOps, cloud, APIs, system design, architecture, cybersecurity as covered domains; program-manager framing | Medium |
| [Goodreads book page + 34-review corpus](https://www.goodreads.com/book/show/60128654-tech-simplified-for-pms-and-entrepreneurs) | Publisher description (author's own stated purpose); independent corroboration of the system-design sections, the Twitter/Uber/WhatsApp examples, breadth-over-depth character, and the consumer-internet skew | Medium |
| [Google Books record](https://books.google.com/books/about/Tech_Simplified.html?id=ERmLzwEACAAJ) | Bibliographic facts — publisher, year, page count, ISBN | Light |
| [Retailer listings — Bindass Books](https://bindassbooks.in/products/tech-simplified-by-deepak-singh), [AbeBooks](https://www.abebooks.com/9789355664990/Tech-Simplified-PMs-Entrepreneurs-Singh-9355664990/plp) | Publisher marketing description; the four stated benefits (complexity simplified, communication gap, empathy, confidence) | Light |
| [pmcurve newsletter — "Tech Simplified Assessment"](https://newsletter.pmcurve.com/p/tech-simplified-assessment) | Confirms a 50-question companion assessment exists; **did not disclose its topics** | Light — a lead, not a source |

### Unresolved leads for a future session

- **pmcurve's "Everything Tech for PMs" self-paced program** is the author's own extension of the book and would very likely give a precise topic list. `pmcurve.com` returned 404s on guessed paths and the browser was blocked from the domain. Worth a manual look.
- **The 50-question Tech Simplified assessment** would establish the book's exact term list. Behind a form.
- **Amazon "Look Inside"** would give the verbatim table of contents. Amazon returned 500/503 to automated fetches throughout; worth 60 seconds in a normal browser and would upgrade every "reconstructed" tag in §1 to verified.
