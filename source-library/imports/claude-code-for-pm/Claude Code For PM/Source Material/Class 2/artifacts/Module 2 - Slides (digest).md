# Module 2 — Slides (digest)

**Type:** Standalone scroll-snap slide deck (`Module 2 - Slides (Shareable).html`), embedded via iframe on the LMS Class 2 page.
**QA:** `scroll-snap` present, `localStorage` present (skip-state), zero `__next_f` — genuine artifact capture.

---

## What it is

Same slide-deck engine as Module 1's deck (including the BroadcastChannel deck-sync script), covering Module 2 (Know Your Users) in 11 sections. Content is verbatim-identical to [`Module 2 - Notes.md`](../Module%202%20-%20Notes.md) — no new prompt text to re-transcribe.

## Structure (11 sections, in order)

1. **Hero** — "Know Your Users," 4 waypoints previewing lessons 2.1–2.4, footer "2-hour live session · ~2h 20m of self-paced labs." Label: "Claude Code for PMs · Module 2 of 6."
2. **How this module runs** — same 4-card expect-grid pattern as Module 1 (Pre-read/Live session/Self-paced labs/Async share). Commits `02-research/` + the four Module 2 artifacts.
3. **Course arc** — same 6-node arc-flow diagram as Module 1's deck, this time with **M2 Discover** active.
4. **Section break** — "Part 2 · Know Your Users / Signals into decisions."
5–8. **Lessons 2.1–2.4** — each: demo-tag, 4 concept cards, `artifact-preview` lab box, Streakly Scenario link (`#p2l1`–`#p2l4`, confirming the `p<module>l<lesson>` anchor scheme continues), starter-prompt block, takeaway.
9. **Key takeaways** — 5-line recap, verbatim match to Notes.md.
10. **Module complete** — "Committed to 02-research/," teaser for "Module 3, Build & Learn Fast."

Note: this deck has **no separate "Pre-class setup" section** (Module 1 had one) — consistent with setup being a one-time, course-wide step, not repeated per module.

## New detail not in Notes.md — "becomes a scheduled agent in M6" prompt labels

Lessons 2.2 (Making Sense of Large Feedback Sets) and 2.3 (Running Competitive Analysis) each carry a prompt-label suffix not present in the plain-text Notes: **"Starter prompt · becomes a scheduled agent in M6."** This is a stronger, more specific corroboration of the M-vs-P numbering theory than the takeaway line alone — it explicitly flags *which* of this module's prompts get promoted into the Module 6 (Systematize / Comeback Coach) agent stack:
- The feedback-synthesis prompt (2.2) → likely becomes the "Weekly Insight Report" or feedback-monitor agent.
- The competitive-analysis prompt (2.3) → likely becomes a "competitive pulse check" scheduled agent.

This lines up with P7L2 in the Streakly Scenario ("Turning Repetitive Work into One-Command Workflows"), which explicitly lists a weekly research synthesis and a competitive pulse check as two of the three repetitive-task-to-agent examples. Good evidence P5–P8 (or at least P6–P7 content) maps into "Module 6" Systematize.

## Key interaction logic

Identical engine to Module 1's Slides digest — scroll-snap sections, IntersectionObserver progress bar (active-sections-only), keyboard nav (↑↓/space, K skip, M sorter), localStorage-persisted skip state (keyed per-deck by sanitized `document.title`), BroadcastChannel deck-sync with instructor twin, reduced-motion/print handling. No deck-specific differences from Module 1 found in the script block — this appears to be a shared, reused template across all module decks.

## Torq-rebuild notes

- Confirms the slide-deck engine documented in the Module 1 digest is a **shared reusable template**, not rebuilt per module — strengthens the case for lifting it wholesale as a single Torq component.
- The "becomes a scheduled agent in M6" prompt-label pattern is a nice pedagogical device worth keeping: it primes students early that today's one-off prompt is tomorrow's automation, without requiring them to build the agent yet. Cheap to replicate (just a label on the prompt block) and reinforces the course's "compounding infrastructure" narrative.
- Content (Streakly-specific research targets: Duolingo/Babbel/Elevate, NPS verbatims, Priya/Tom/Amara interviews) needs full reskin for Torq; structure and prompt patterns (interview synthesis → feedback synthesis → competitive matrix → decision brief) are cleanly reusable for any product-research module.
