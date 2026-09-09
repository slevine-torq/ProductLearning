# Module 3 — Slides (digest)

**Type:** Standalone scroll-snap slide deck (`Module 3 - Slides (Shareable).html`), embedded via iframe on the LMS Class 3 page.
**QA:** `scroll-snap` present, `localStorage` present (skip-state), zero `__next_f` — genuine artifact capture.

---

## What it is

Same shared slide-deck engine as Modules 1 and 2 (identical script + deck-sync). Covers Module 3 (Build and Learn Fast) in 12 sections. Content is verbatim-identical to [`Module 3 - Notes.md`](../Module%203%20-%20Notes.md), including the Anthropic "prefers HTML over Markdown" real-world example callout on lesson 3.1.

## Structure (12 sections, in order)

1. **Hero** — "Build and Learn Fast," 4 waypoints previewing lessons 3.1–3.4, footer "2-hour live session · ~2h 50m of self-paced labs." Label: "Claude Code for PMs · Module 3 of 6."
2. **How this module runs** — same 4-card expect-grid pattern. Commits `03-build/` + the four Module 3 artifacts.
3. **Course arc** — same 6-node arc-flow diagram, **M3 Build** active this time.
4. **Section break** — "Part 3 · Build and Learn Fast / Idea to validated prototype."
5–8. **Lessons 3.1–3.4** — each: demo-tag, 4 concept cards, `artifact-preview` lab box, Streakly Scenario link (`#p3l1`–`#p3l4`, anchor scheme holds), starter-prompt block, takeaway. Lesson 3.1 additionally carries the gold "Real-world example · Anthropic" callout (HTML-over-Markdown preference, cited to the same Pragmatic Engineer source as Notes.md).
9. **Key takeaways** — 5-line recap, verbatim match.
10. **Module complete** — "Committed to 03-build/," teaser for "Module 4, Work with Your Team."

No separate Pre-class-setup section (consistent with Module 2 — that's a one-time course-level step).

## Key interaction logic

Identical engine to Modules 1 and 2 — scroll-snap, IntersectionObserver progress bar, keyboard nav, localStorage skip-state, BroadcastChannel deck-sync, reduced-motion/print handling. Third consecutive module confirming this is one shared, reused template rather than a per-module rebuild.

## Torq-rebuild notes

- Further confirms the slide-deck engine is a single reusable component across the whole course — safe to lift once, parameterize by module content only.
- Lesson 3.1's PM-brief structure (`User + context + constraint` → HTML prototype) is a clean, reusable prompt pattern independent of Streakly specifics — good candidate for a Torq "brief-to-prototype" template.
- The Anthropic real-world-example callout pattern (gold-highlighted box + cited source) is a nice credibility device worth keeping as a component, content obviously needs a Torq-appropriate citation each time it's reused.
