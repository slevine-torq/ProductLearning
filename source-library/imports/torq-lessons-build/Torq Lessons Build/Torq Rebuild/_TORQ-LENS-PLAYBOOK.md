# The Torq Lens — how source content becomes Torq content

**Portable file.** This is the *content* layer: how a captured course's teaching gets rewritten so it's legally clean, pitched at the right altitude, and actually useful to a Torq consultant. Copy into any Torq L&D project.

**It deliberately does not cover production.** Platform hierarchy, the build pipeline, the task scaffold, brand tokens, the audit script, and per-course roadmaps all live in [`_TORQHUB-PRODUCTION-GUIDE.md`](_TORQHUB-PRODUCTION-GUIDE.md) — don't restate them here, and don't let the two drift.

| Question | File |
|---|---|
| How do I build and ship a Task? | [`_TORQHUB-PRODUCTION-GUIDE.md`](_TORQHUB-PRODUCTION-GUIDE.md) |
| **How do I write what goes in it?** | **this file** |
| Why do the rules exist? | [`_LD-BUILD-METHOD.md`](_LD-BUILD-METHOD.md) — research + failure modes |
| Who am I writing for? | [`_TORQ-COMPANY-CONTEXT.md`](_TORQ-COMPANY-CONTEXT.md) |

Added round 6 (2026-08-22), after an overlap audit found three of five shipped Course 1 tasks at 26–32% verbatim overlap with the Product School deck — while a rule saying "rebuild the frameworks, not the prose" sat unenforced in the build notes.

---

## 1 — Tag every coverage-map row with Origin

The coverage map already tags each row with **Type** (TEACHING / ADAPT / LOGISTICS / STRUCTURAL), which answers *did we cover it*. Add **Origin**, which answers *how do we write it*:

| Origin | Meaning | What you do |
|---|---|---|
| **Industry-standard** | The concept exists in the field independently of this source | Teach the canonical version, not the source's renaming of it. Credit the real originator in the program-level Sources task |
| **Source-original framing** | The source's own coined term, bespoke table structure, or exercise design | Replace with the real-world equivalent. **This is the single biggest lever on copyright exposure** — a source's *packaging* of a generic idea is exactly the protected part, even when the idea underneath is common knowledge |
| **Real public case** | Documented business history — Netflix, Spotify, Amazon, iPhone, New Coke | **Keep.** Factual, not the source's IP, and usually the actual teaching. Don't strip it chasing the no-fabricated-examples rule |
| **Torq-added** | New content with no source equivalent | Flag explicitly so it's never mistaken for source coverage |

Worked example, from Module 1: the source's "three pillars of prioritization" is **Source-original framing** — the underlying idea is desirability/viability/feasibility (IDEO), so the lesson teaches it under the canonical names. The Netflix "Play Something" beats in the lifecycle section are **Real public case** and stay exactly as they are.

## 2 — Weight it ~80% execution, ~20% strategy

A Torq consultant is usually staffed onto **someone else's already-scoped initiative**. Most Product School-style curricula assume the opposite — that the learner decides *whether* to build something and then takes it to market.

- **Execution (~80%)** — specs, feasibility conversations with engineering, prioritising inside a decided initiative, acceptance criteria and QA, delivery, the client-visible readout.
- **Strategy / discovery (~20%)** — market and opportunity discovery, portfolio or GTM ownership, SOW-level scoping. Covered because a Torq PM should be well-rounded, not because it's half the job.

**This governs framing and emphasis, never coverage.** Every TEACHING row still gets a home. In practice a discovery- or GTM-heavy module gets *shrunk and reframed* toward the version of the skill a consultant actually exercises — "critically use and stress-test the client's existing research" rather than "run discovery from scratch"; "support the client's launch" rather than "own GTM end to end." Never cut, never shipped exactly as the source wrote it.

## 3 — Use "One level up" for altitude, never gatekeeping

Some content reflects decisions made above day-to-day Consultant/PM level: how an initiative got scoped into an SOW, portfolio trade-offs, budget or headcount calls. Don't cut it, and don't wall it into a separate track — the program is open to any tenure.

Repeatable callout, same mechanism as the regulated-client one:

> **One level up:** Scoping this into a phased SOW is usually an AD/Director call rather than yours. Knowing how the decision gets made is what lets you feed it good input now — and make it yourself later.

Reuse the pattern rather than inventing new phrasing per lesson.

## 4 — Write clean-room, then run the gate

**Clean-room:** write each task from its coverage-map rows with the source file *closed*. Paraphrasing in place from an open source document reliably produces near-copies while feeling like rewriting — that's the mechanism that produced the 121-word verbatim run in Course 1 Task 1, with the anti-copying rule sitting right there in the notes.

**The gate**, before any task ships — [`dedup-check.py`](dedup-check.py):

```bash
python3 dedup-check.py --source "../Source Material/Class N" \
                       --built  "Build/Course N - Name"
```

| Threshold | Verdict |
|---|---|
| ≤8–10% 8-gram overlap | Pass |
| >10% overlap | Rewrite — not a judgment call |
| Any single matched run >15 words | Rewrite that passage, whatever the file's percentage |

Both thresholds matter independently. Course 1's Tasks 3 and 5 sat at 8.2% and 3.6% — comfortably passing on percentage — and still failed on 22- and 21-word lifted runs. A file can be 96% original and carry one copied paragraph.

Shared *structure* isn't the target; contiguous copied *sentences* are.

## 5 — Attribute once, at program level

One "Sources & Further Reading" task per program, not a citation block per lesson. It cites the real originators behind anything tagged Industry-standard or Source-original-framing, plus any public cases used. Built incrementally as courses ship.

For a consulting audience this does double duty: it's better scholarship, and it makes the course visibly built on industry canon rather than repackaged from one vendor.

## 6 — Anonymised client patterns only

No named clients, contacts, or figures in a lesson — ever, regardless of whether the audience is internal-only. Real engagement detail stages privately in [`_TORQ-CLIENT-INTAKE.md`](_TORQ-CLIENT-INTAKE.md); only de-identified shapes reach a lesson:

> "a regional airline's crew-scheduling rebuild, where record-keeping rules set the testing bar"

Test: if a colleague could name the account from the line, broaden it. Until that file is populated, use the six verticals in [`_TORQ-COMPANY-CONTEXT.md`](_TORQ-COMPANY-CONTEXT.md) at industry level.

---

## Content pre-ship checklist

Production checks (brand, a11y, JS, structure) are in `_TORQHUB-PRODUCTION-GUIDE.md` Part 5. These are the content ones:

- [ ] Origin tagged on every TEACHING row
- [ ] Source-original framings replaced with real industry-standard equivalents
- [ ] Real public cases kept, not stripped
- [ ] 80/20 weighting applied — strategy content reframed, not cut, not shipped unreframed
- [ ] Written clean-room, source file closed
- [ ] **`dedup-check.py` passes: ≤8–10% overlap, no run >15 words**
- [ ] "One level up" callout wherever content sits above Consultant/PM altitude
- [ ] No named clients, contacts, or figures anywhere
- [ ] Task length ~900 words / ~8 min; coverage handled by adding tasks, never by compressing them
- [ ] Program-level Sources & Further Reading task updated

## Applying this to a new course

Course-specific status and hypotheses live in [`_REMIX-OTHER-COURSES.md`](_REMIX-OTHER-COURSES.md); the production sequence is in `_TORQHUB-PRODUCTION-GUIDE.md` Part 6. This file adds four things to that sequence:

1. Tag Origin while building the coverage map (not after).
2. Sort the source's modules by the 80/20 split before deciding task emphasis.
3. Write clean-room and run `dedup-check.py` per task.
4. Add the course's real originators to the program-level Sources task.

The lens travels unchanged to Product Leadership, Claude Code for PMs, or anything else — none of it is PMC-specific.
