# Other Product School courses — capture intel

> **⚠️ Superseded in part.** The build method that used to live here has moved to [`_TORQHUB-PRODUCTION-GUIDE.md`](_TORQHUB-PRODUCTION-GUIDE.md) (pipeline, hierarchy, roadmaps), [`_LD-BUILD-METHOD.md`](_LD-BUILD-METHOD.md) (instructional method, failure modes), and [`_TORQ-LENS-PLAYBOOK.md`](_TORQ-LENS-PLAYBOOK.md) (how source content gets rewritten — Origin tagging, the 80/20 weighting, the de-duplication gate, altitude framing). **Start there.** This file is kept only for the per-course catalogue intel below.
>
> Specifically retired: the old step 2, *"map each module to a stage of the Torq consultant's workflow rather than the source course's own structure."* That thematic-remix approach scattered content across courses and made completeness unverifiable — it cost four rebuild rounds on PMC. **The current rule is 1:1 with the source module structure**, with the audience reframe living in the writing.

**Nothing in this file is captured source material.** PMC went through a real capture pass (see `../Source Material/_CAPTURE-GUIDE.md`) — every module's Notes, Glossary, and artifacts pulled from the actual LMS. The courses below have **not** been captured; everything here is a first-pass hypothesis built from public course-catalog descriptions (web search, 2026-08-21), so titles/module counts are directionally right but not verified against real content. Treat this as "where to start capturing," not "ready to build."

---

## Still-valid guidance

1. **Capture the real source first.** Notes/Glossary as Markdown, designed artifacts (slides, exercise guides, builders) as HTML or digests. Never build from a course-catalog description — that's marketing copy, not curriculum.
2. **Structure 1:1 with the source.** Course N = Module N. Task count comes from the module's coverage map.
3. **Identify what needs an audience swap** — but put it in the *writing*, not the structure. Anywhere the source assumes a permanent in-house owner, check what changes for someone embedded on a fixed engagement.
4. **Define the takeaway artifact per task**, targeting the learner's own live work.
5. **Flag industry-translation points.** Torq's clients span automotive, airlines, healthcare, consumer/F&B, aerospace & defense, and financial services — several regulated. Anything touching compliance, data privacy, or long approval cycles needs the standard callout.

---

## Product Leadership → hypothesis

Source: Product School's **Product Leader Certification (PLC)** ([productschool.com/certifications/product-leader](https://productschool.com/certifications/product-leader), confirmed via search 2026-08-21). Public structure is 4 core modules + on-demand add-ons:

1. Craft Your Advanced Product Strategy
2. Translate Your Product Strategy Into Action (OKRs)
3. Orchestrate Your Product Portfolio (Product Portfolio Management, PPM)
4. Put Everything Together (final presentation — growth strategy with priority ranking)
   + on-demand: communicating product strategy, leading high-performing product teams

**Reframe problem:** PLC is written for someone who **is** the product leader of an org — sets the vision, owns the portfolio, has direct reports. A Torq consultant at 3–5 yrs experience is not usually walking into a client as their VP of Product. The useful skill isn't "run your own portfolio," it's **"advise a client's product leader,"** or **"stand in for portfolio-level thinking on a short engagement without the standing authority a real product leader has."**

**First-pass stage hypothesis** (needs real capture + Scott's read before trusting it):
- *Advising up*: how a consultant builds enough strategic credibility that a client's actual product leader listens to them
- *Portfolio thinking without portfolio authority*: using PPM frameworks to advise prioritization across a client's initiatives, when you don't control headcount or budget
- *The growth-strategy readout*: PLC's capstone (final presentation) maps closely to PMC's Course 5 capstone — likely worth merging into one strong "client executive readout" course shared across both certs rather than duplicating

**Open question for Scott:** is this cert meant for Torq consultants who might one day *become* a client's interim product leader (different framing — teach real ownership), or for consultants who advise leaders without taking the seat (framing above)? Changes the whole course.

---

## Claude Code for PMs → hypothesis

Source: Product School's **Claude Code Certification for Product Managers** ([productschool.com/certifications/claude-code](https://productschool.com/certifications/claude-code), confirmed via search 2026-08-21) — taught by a product leader, structured around how PMs discover/scope/ship using Claude Code: extracting insights from interviews, synthesizing large feedback sets, running competitive analysis.

Also exists as a sibling family Scott may want to pull from later, same publisher: **AI Product Management** (foundational vocabulary), **Advanced AI Agents & Vibe Coding**, **AI Evals Certification**, **AI Product Strategy for Leaders**.

**Reframe problem:** this one probably needs the *least* audience-swap of any Product School course — "use Claude Code to move faster on PM grunt work" is nearly as true for a consultant as an FTE PM. The real Torq-specific twist is **client data handling**: a consultant running a client's interview transcripts or feedback data through an AI tool has confidentiality/SOW obligations an in-house PM doesn't. That's a genuinely new section, not just a reframe of existing content.

**First-pass stage hypothesis:**
- Core workflows carry over close to as-is: extracting insights from interviews, synthesizing feedback, competitive analysis
- New Torq-only section: what's safe to paste into an AI tool given a client SOW/NDA — **confirmed to already exist**, see below
- Possible tie-in: since this skill is itself "how to work faster with an AI agent," the TorqHub build for *this* course is a natural place to practice the self-contained-HTML-artifact pattern the rest of the rebuild uses — the medium can double as the message

**Resolved (2026-08-21):** Torq already has a real, live TorqHub course on this — "AI at Torq Intro" (`gotorqhub.com/learning/36`) — confirming a real engagement-level AI/data policy exists: "confirm the engagement's policy and approved tools before using [client] information" with AI, plus a named "Torq's approved AI workspace." That course also states Torq's actual AI point of view — *"AI helps people work faster and better, while human judgment remains the edge"* / *"People are the edge. AI sharpens it."* — and a 4-level AI-maturity model (**Observer → Passenger → Driver → Designer**) worth reusing verbatim as Torq's canonical language rather than inventing a parallel framework. A "Claude Code for PMs" remix should treat that existing course as a prerequisite/companion, not duplicate its policy or maturity-model content.

---

## "Any other ones" — template for adding a course

When Scott names another Product School course to remix, fill this in and it becomes a durable planning doc alongside the two above:

```
## <Course name> → hypothesis

Source: <Product School cert page URL, confirmed via search on <date>>
Public structure: <module list, from search — flag as unverified until captured>

**Reframe problem:** <what breaks when you swap "embedded FTE" for "staffed consultant">

**First-pass stage hypothesis:** <bulleted, tentative>

**Open question for Scott:** <the one thing that changes the whole course if answered differently>
```

Do **not** move any of these from hypothesis to build until the same capture pass PMC got (`_CAPTURE-GUIDE.md`) has actually happened — LMS Notes/Glossary as Markdown, artifacts as HTML digests.
