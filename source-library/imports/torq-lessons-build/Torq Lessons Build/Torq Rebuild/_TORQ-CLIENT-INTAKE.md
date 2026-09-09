# Torq client & engagement intake — for de-identified lesson examples

**Status: empty, waiting on Scott.** Nothing here is required to build a
course. Until it's filled in, lessons use the six Torq verticals from
[`_TORQ-COMPANY-CONTEXT.md`](_TORQ-COMPANY-CONTEXT.md) at industry level —
same as Course 1's regulated-client callout does today.

## What this file is for

Lessons currently read as generic PM training with Torq branding. Roughly 150
of Course 1's ~4,600 words are actually Torq-specific. The fix is concrete
examples that sound like Torq's real work — but the project rule is firm and
doesn't bend for an internal-only audience:

> **No lesson, template, or instruction sheet may name a real client, contact,
> or figure.** Reuse the document *shapes* with generic subject matter.
> — `Build/_BUILD-NOTES.md`, Lesson-writing convention

So this file is a **private staging area**. Scott fills in real detail; the
lessons only ever get the de-identified pattern that comes out of it.

**Example of the transform:**

| What goes in this file (private) | What reaches a lesson (published) |
|---|---|
| *[real airline name]* — crew-scheduling system rebuild, 14-month phased SOW, FAA record-keeping constraints | "a regional airline's crew-scheduling rebuild, where record-keeping rules set the testing bar" |
| *[real payer name]* — claims portal, HIPAA review gate added 6 weeks to launch | "a healthcare payer's claims portal, where a compliance review gate sat between 'done' and 'launched'" |

⚠️ **Before filling this in, confirm Torq's confidentiality policy.** Scott
flagged in conversation that he doesn't currently know what it says. Even
though this file stays local and unpublished, check whether engagement names
and project details can be written down here at all. If policy is restrictive,
skip straight to the "Pattern library" section at the bottom and write only
the de-identified shapes — that's all the lessons ever consume anyway.

---

## Part 1 — Which verticals is Torq actually staffed in right now?

`_TORQ-COMPANY-CONTEXT.md` lists six target industries. Which ones have live
or recent engagements? (Lowest-effort, lowest-risk input — no client names
needed, and it alone makes examples feel less generic.)

- [ ] Automotive
- [ ] Airlines
- [ ] Healthcare
- [ ] Consumer services / food & beverage
- [ ] Aerospace & defense
- [ ] Financial services
- [ ] Other: _______________

Which two or three are most common? _______________

---

## Part 2 — Engagement shapes (repeat per engagement)

One block per engagement worth drawing on. Everything here stays private.

```
### Engagement [N]

Vertical:                      (e.g. airlines)
Client name (private):         [never leaves this file]
What was being built:          (e.g. crew-scheduling system rebuild)
Engagement length / phasing:   (e.g. 14 months, 3 SOW phases)
Torq's role:                   (embedded PO? advisory? mixed team with client staff?)
Team shape:                    (which functions were Torq's, which were the client's,
                                which didn't exist on the account at all)
The hard part:                 (what actually made this engagement difficult —
                                the thing a consultant would want warning about)
Regulatory/approval gates:     (compliance review, certification, audit — and what
                                they cost in time)
Handoff:                       (what had to be true for the work to survive Torq leaving)
How success was judged:        (the client-visible deliverable or readout that mattered)
```

---

## Part 3 — Questions worth answering even without client names

These sharpen the lessons more than client names would, and carry no
confidentiality risk:

1. **What's the most common way a Torq product engagement starts?** Is the
   initiative already scoped and funded when the consultant arrives, or is
   scoping part of the work?
2. **What does a consultant most often walk into that the course should
   prepare them for?** (No roadmap? A backlog nobody owns? Research that was
   done but never used? A team mid-build with no acceptance criteria?)
3. **What's the weekly cadence with a client?** What recurring meeting or
   artifact does the consultant own?
4. **What does the readout at the end actually look like?** Deck? Written
   summary? Live demo? Who's in the room?
5. **What's the most common reason an engagement gets extended — or doesn't?**
6. **Where do consultants most often get stuck?** This one probably deserves
   its own task somewhere in the program.
7. **What's the realistic authority level?** `_BUILD-NOTES.md` says embedded
   ownership, not outside advising — does that hold across all six verticals,
   or does it change in regulated ones?

---

## Part 4 — Pattern library (the only part lessons consume)

De-identified shapes, ready to drop into a lesson. Written by hand from
Parts 1–3, or written directly here if confidentiality policy rules out the
sections above.

Format: one line, industry-level, no names, no figures that could identify an
account.

```
- a regional airline's crew-scheduling rebuild, where record-keeping rules set the testing bar
- a healthcare payer's claims portal, where a compliance review gate sat between "done" and "launched"
- a manufacturer's dealer-facing parts-ordering tool, replacing a system nobody had documented
- (add as they're needed)
```

**Rule for anything added here:** if a Torq employee reading the line could
name the client from it, it's not de-identified enough. Broaden it.

---

## How to use this once it's populated

1. Fill in Parts 1–3 (or just Part 4 if policy is restrictive).
2. Tell the next session this file has content — it's referenced from
   [`_TORQ-LENS-PLAYBOOK.md`](_TORQ-LENS-PLAYBOOK.md) Step 7 and will be read
   automatically during a course build.
3. Lessons pull from **Part 4 only**. Parts 1–3 are calibration material for
   whoever's writing — they never get quoted.
4. Already-built courses can be enriched without a rebuild: the pattern
   examples slot into existing callouts and artifact prompts.
