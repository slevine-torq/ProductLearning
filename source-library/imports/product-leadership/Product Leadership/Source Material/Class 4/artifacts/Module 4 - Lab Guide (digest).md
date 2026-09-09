# Module 4 — Lab Guide — Digest

**Source:** standalone self-contained HTML artifact (`Module 4 · Lab Guide · Product Leadership`), interactive worksheet — same engine as M1–M3 Lab Guides. QA marker: `localStorage` (key `plc-m4-labguide`).

**Important correction to prior digests:** the `.bfg` briefing-toggle system, flagged as unused dead code in every Lab Guide since Module 1, **is fully wired up and used in this artifact**. It powers the scenario/role picker that reveals one of four private negotiation briefings (Fable A/B, Meridian A/B). This confirms the `.bfg` component was built for exactly this kind of paired asymmetric-information exercise, and was simply inert boilerplate carried into modules that didn't need it — not a bug anywhere, just unused capacity until now.

## What it is
The combined lab guide for both Module 4 exercises: an individual alignment-communication exercise (with an optional AI pressure-test prompt), and a paired negotiation role-play with **four private, scenario/role-specific briefings** containing real hidden information (positions, true interests, BATNAs) that the two players don't share with each other until the debrief.

## Structure
1. **Header** — title, "Individual + paired · 2 exercises · ~45 min" chip, tip callout (need M2 Hard No + M3 cross-team tension).
2. **Exercise 1 divider** — "Write Your Alignment Communication," individual, ~15 min, before the break.
3. **Step 1 (10 min) — Write your message** — 7 fillable fields walking the full alignment-communication structure: Hard No (from M2) → stakeholder (Fable: Growth lead; Meridian: Enterprise sales lead) → what they're protecting → what stays open → the no stated plainly → hold-firm-stay-generous acknowledgment → specific path forward. Each field placeholder-seeded with a worked example using the Fable "social layer" scenario (see below).
4. **Step 2 (5 min) — Audit and finalize** — read-back self-check, an **optional AI pressure-test prompt** (verbatim below), 1 fillable field for the finalized message. Tip callout restates the M4 Slides' deliverable-scope note: this exercise is practice, not one of the 5 submitted deliverables.
5. **Lab Exercise divider** — "Negotiating an Outcome," paired role-play, ~30 min, lab section.
6. **Shared scenario setup** — Q3 planning, fixed engineering capacity, two product leaders with competing claims. Explicit instruction: pair up, decide who is Player A/B, read only your own briefing, don't reveal until after Round 4.
7. **Briefing selector (`.bfg` component, live)** — scenario buttons (Fable/Meridian) × role buttons (Player A/Player B) reveal exactly one of 4 private briefing cards (full text below). Each ends with a 🔒 "read only your own briefing" reminder.
8. **Round 1 (5 min, before/alone) — Come prepared** — 4 fillable fields: Position / Interest / BATNA / hypothesis about partner's interest.
9. **Round 2 (8 min, opening) — Observe then ask** — technique callout (labeling + calibrated questions, example phrasings), 1 fillable field for the partner's most useful response.
10. **Round 3 (10 min, during) — State disagreements** — rule: "the reason I need this is Y," not "I need X." At 5-minute mark, both generate 2+ new options. 3 fillable option fields.
11. **Round 4 (5 min, stuck?) — Invite new options** — reveal interests to partner. 3 fillable fields: what was agreed / blocking issue if not / honest self-read on whether you shared full interest or just position. Tip: optional post-class AI negotiation-coach scoring.
12. **Reference callout** — reusable negotiation language ("language you can steal") — labeling template, mirroring technique, interest-shifting phrases, impasse-naming phrase (verbatim below).
13. **Lab toolbar** — Copy as Markdown / Download .md / Reset (same pattern as all Lab Guides).
14. **Footer** — back-link to Module 4 deck.

## Embedded exercise data

**Exercise 1 worked example** (Fable "social layer" scenario, seeded into Step 1 placeholders):
- What stays open: "The social layer is not on the roadmap this quarter, but the content library is moving forward and that is where your users will see the most impact."
- The no, stated plainly: "The social layer is not being resourced this quarter. That decision is not changing."
- Hold-firm-stay-generous: "I know this creates a gap in your activation strategy, and I want to help you find a path around it."
- Path forward: "What I can commit to is scoping the social layer properly for Q1 so it is ready to resource the moment the content library ships."

**Negotiation briefings (full text, all 4)** — the first genuine asymmetric-information exercise data captured in this course:

*Fable · Player A · Core Product Leader*
> Position: the AI check-in layer locked exclusively for retention work this quarter, no Growth experiments until Q4.
> Interest (private): actually only needs it locked for 8 weeks, not the full 13-week quarter — weeks 9–13 are integration/testing.
> BATNA: escalate to CPO with a written brief — would win the resource but damage the relationship with the Growth lead.
> Goal: a written agreement protecting the 8-week build window and a workable relationship.

*Fable · Player B · Growth Product Leader*
> Context: Q3 OKR is 15% Day-7 activation improvement; the AI check-in personalization layer is the highest-confidence experiment. Core is blocking access.
> Position: two engineers + AI-layer access for six weeks.
> Interest (private): actually only needs one component built first — the personalized prompt trigger (~2 weeks) — then can run in parallel. Hasn't proposed this, assuming Core would refuse a split.
> BATNA: a lower-confidence secondary experiment (~7% vs. 15% activation) — means missing the OKR.
> Goal: a written agreement getting the prompt-trigger component built in time to run the experiment before Q3 ends.

*Meridian · Player A · Foundations Leader*
> Context: offline-first mobile experience for field teams is the strategic Rock this quarter, needs 4 engineers for 10 weeks. Enterprise sales pushing renewal-tied features; Platform Leader wants 2 engineers.
> Position: cannot release any engineers this quarter — mobile build is at minimum viable resourcing.
> Interest (private): could release one engineer for 3 weeks (weeks 1–3) without derailing the build, if the compliance feature is scoped to a simple checklist, not a full workflow. Worried any yes opens the door to more sales asks.
> BATNA: escalate to CPO — believes they'd win, but creates a hostile dynamic with enterprise sales, whom they need for the rollout co-design.
> Goal: a written agreement protecting the mobile-build timeline and setting a boundary on future sales requests.

*Meridian · Player B · Platform Leader*
> Context: a $340K ARR enterprise customer's renewal is at risk; legal flagged a compliance checklist as a procurement requirement. Sales needs something to show within 6 weeks.
> Position: two engineers from Foundations for six weeks, starting now.
> Interest (private): the renewal isn't really about the feature — it's about the customer feeling heard and seeing forward motion. A working prototype or a dated commitment letter might hold the renewal while the full feature is built next quarter. Hasn't explored this, not wanting to reveal a prototype might suffice.
> BATNA: escalate to CPO — might win on revenue grounds, but Foundations' field-adoption work matters more to the CPO right now, so probably loses and damages the relationship.
> Goal: a commitment to show the customer within 6 weeks — engineers, a prototype, or a dated delivery commitment.

Each briefing follows the identical shape: Position (what they'd say out loud) → private Interest (the real reason, deliberately not yet proposed) → BATNA → Goal. The pedagogical design is that **both parties' "true needs" are compatible and smaller than their stated positions** — Player A in both scenarios can actually give up less than demanded, and Player B in both scenarios actually needs something narrower/different than what they first asked for. The exercise is built so that if both sides get to interests, a good-faith deal is available; if they stay at positions, it looks zero-sum.

## Reusable AI prompts (exact text)

**Optional AI pressure-test** (Exercise 1, Step 2):
```
I have written a communication delivering a hard decision to a specific stakeholder. Here is the context:
My decision: [paste your Hard No from M2]
The stakeholder: [paste who they are and what they are protecting]
My communication: [paste your full message]

Read this as that stakeholder and tell me: does it read as a clear no or could it be interpreted as a maybe? Does it acknowledge what they are protecting? Does it offer a specific path forward? Be direct.
```

**Reference — reusable negotiation language** (not an AI prompt, but a "steal this phrasing" callout):
- Labeling: "It sounds like [the constraint they are protecting]."
- Mirroring: repeat their last 2–3 words as a question, then wait.
- Shifting to interests: "The reason I need this is…" / "The outcome I need, not the input, is…"
- Naming the impasse: "We both have real constraints and neither of us wants to escalate. What have we not tried yet?"

## Key interaction logic
Standard Lab Guide engine (auto-fieldification, `localStorage` autosave key `plc-m4-labguide`, Markdown export, Copy/Download/Reset). **Plus the now-confirmed-live `.bfg` system**: two independent button groups (`data-scn`, `data-ply`) each toggle an `.active` state; `refresh()` shows exactly the one `.bfg-panel` matching both selections (`data-scn` + `data-ply` combination), hides all others, and shows an empty-state placeholder until both are picked. This is a clean, minimal "reveal exactly one of N private views based on two independent selectors" pattern.

## Torq-rebuild notes
- **This resolves the standing question from every prior Lab Guide digest**: the `.bfg` system is real, general-purpose functionality (asymmetric-briefing reveal for role-play exercises), not vestigial code. Worth explicitly re-flagging: if any *other* not-yet-captured Lab Guide (e.g., Module 5 or 6) also has unused `.bfg` CSS/JS, don't assume it's dead — check for actual `.bfg` markup first.
- **The four negotiation briefings are an excellent, fully-formed asymmetric-negotiation exercise** — directly reusable for a Torq negotiation-skills module, generic beyond the Fable/Meridian framing (the underlying pattern: stated position vs. private true interest vs. BATNA vs. goal, with a compatible-but-undisclosed solution space). This is the strongest single teaching artifact captured in the course so far for interactive-exercise design.
- The reusable "language you can steal" phrase bank is a nice lightweight pattern — a short glossary of exact sentences to use live, not just describe. Worth preserving verbatim in any negotiation-training rebuild.
- Confirms the deliverable-scope note from the Slides digest: Module 4 produces no repo file, consistent across both artifacts.
