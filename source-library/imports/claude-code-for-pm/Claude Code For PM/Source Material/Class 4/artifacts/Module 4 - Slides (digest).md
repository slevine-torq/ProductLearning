# Module 4 — Slides (digest)

**Type:** Standalone scroll-snap slide deck (`Module 4 - Slides (Shareable).html`), embedded via iframe on the LMS Class 4 page.
**QA:** `scroll-snap` present, `localStorage` present (skip-state), zero `__next_f` — genuine artifact capture.

---

## What it is

Same shared slide-deck engine as Modules 1–3 (identical script + deck-sync). Covers Module 4 (Work with Your Team) in 12 sections. Content is verbatim-identical to [`Module 4 - Notes.md`](../Module%204%20-%20Notes.md), including the Anthropic Bun-rewrite verification-effort callout on lesson 4.4.

## Structure (12 sections, in order)

1. **Hero** — "Work with Your Team," 4 waypoints previewing lessons 4.1–4.4, footer "2-hour live session · ~2h 20m of self-paced labs." Label: "Claude Code for PMs · Module 4 of 6."
2. **How this module runs** — same 4-card expect-grid pattern. Commits `04-team/` + the four Module 4 artifacts.
3. **Course arc** — same 6-node arc-flow diagram, **M4 Collaborate** active this time.
4. **Section break** — "Part 4 · Work with Your Team / Across the full delivery cycle."
5–8. **Lessons 4.1–4.4** — each: demo-tag, 4 concept cards, `artifact-preview` lab box, Streakly Scenario link (`#p4l1`–`#p4l4`, anchor scheme holds), starter-prompt block, takeaway. Lesson 4.4 additionally carries the gold "Real-world example · Anthropic" callout (Bun rewrite: ~15% implementation / ~85% verification effort split, cited to the same Pragmatic Engineer source used in Modules 1 and 3).
9. **Key takeaways** — 5-line recap, verbatim match.
10. **Module complete** — "Committed to 04-team/."

## ⚠ Key new finding — "Next: Module 5, Numbers & Comms"

The Module complete section's teaser line reads **"Next: Module 5, Numbers & Comms"** — not "Decide" (the generic arc-diagram label seen in every deck so far). This is the **first real title** for any module beyond Class 4, and it doesn't match the Streakly Scenario's P5 title ("Data") or P6 title ("Communicate Clearly") individually — it reads like a *combined* title spanning both. This is strong direct evidence for the earlier theory that the 6-stage "Module" arc absorbs 2 of the 8 granular "P" parts per late-course module:
- **Module 5 "Numbers & Comms"** ≈ P5 (Data) + P6 (Communicate Clearly) combined
- By extension, **Module 6 "Systematize"** likely ≈ P7 (Make It Stick) + P8 (Your Agent Stack / Comeback Coach) combined — consistent with the "becomes a scheduled agent in M6" labels seen in Module 2's deck.

**Still unresolved:** no LMS materialSlug, resource link, or Pre-Read pointer to Module 5/6 content has appeared anywhere in Classes 1–4. The cohort JSON's `classes` array only goes up to `class-4` (session 4, Work with Your Team) — there is no `class-5` or `class-6` entry, and no live session dates exist for them in this cohort's schedule (course runs May 11–20, 2026, only 4 live sessions). **Working conclusion: Modules 5–6 are very likely self-paced/async-only, delivered outside the live-class LMS structure** — possibly through a different materials path (e.g. a "self-paced" or "capstone" section) not yet discovered, or possibly not yet built out for this early cohort. Recommend Scott check the LMS course home page (`/courses/ccpm/onccpm4437`) directly, outside the class-1..class-4 materials flow, for any Module 5/6 link — that's the next place to look, not another class-N page.

## Key interaction logic

Identical engine to Modules 1–3 — scroll-snap, IntersectionObserver progress bar, keyboard nav, localStorage skip-state, BroadcastChannel deck-sync, reduced-motion/print handling. Fourth consecutive module confirming one shared, reused template.

## Torq-rebuild notes

- Fourth and final confirmation (for the 4 live classes) that the slide-deck engine is a single reusable component — safe to lift once.
- Lesson 4.2/4.3's "spec readiness" and "design review structure" prompt patterns (role-play a skeptical stakeholder to pressure-test a document) are a clean, reusable technique independent of Streakly — good candidate for a general Torq "pressure-test this doc" prompt template.
- The Anthropic verification-effort statistic (85% of effort on Torq verification/testing vs. 15% on implementation) is a strong, quotable stat worth preserving verbatim if Torq keeps real-world-example callouts in its own version.
