# Module 1 — Slides (digest)

**Type:** Standalone scroll-snap slide deck (`Module 1 - Slides (Shareable).html`), embedded via iframe on the LMS Class 1 page.
**QA:** `scroll-snap` present, `localStorage` present (skip-state), zero `__next_f` — genuine artifact capture.

---

## What it is

A full-bleed, one-section-per-viewport slide deck (dark navy/blue theme) covering all of Module 1's content in slide form — content is a close structural match to `Module 1 - Notes.md`, chunked into 12 sections with added interaction chrome (nav dots, keyboard nav, section skip/sorter, deck-sync).

## Structure (12 sections, in order)

1. **Hero** — "Get Oriented" title, subtitle, 5 waypoint cards previewing lessons 1.1–1.5, footer note "2-hour live session · ~2h 40m of self-paced labs." **Label reads "Claude Code for PMs · Module 1 of 6"** — see discrepancy note below.
2. **How this module runs** — 4-card expect-grid: Pre-read (15 min), Live session (2h), Self-paced labs (~2h40m), Async share. Callout: module commits `01-orient/`, CLAUDE.md, three core files, first reusable skill.
3. **Pre-class setup** — warning-style callout, links to `Pre-Class Setup (Shareable).html`.
4. **Course arc** — 6-node arc-flow diagram: **M1 Orient (active) → M2 Discover → M3 Build → M4 Collaborate → M5 Decide → M6 Systematize.** Matches Notes.md "Where this sits in the arc" framing.
5. **Section break** — "Part 1 · Get Oriented / From chatting to configuring."
6–10. **Lessons 1.1–1.5** — each: demo-tag with lesson number + duration, 4 concept cards, an `artifact-preview` lab box, a link into the Streakly Scenario doc (`The Streakly Scenario.html#p1l1` through `#p1l5` — i.e. anchors `p{module}l{lesson}`), a verbatim starter-prompt block, and a "you walk away with" takeaway. Lessons 1.2 and 1.3 additionally carry a gold-highlighted "Real-world example · Anthropic" callout with a cited source link.
11. **Key takeaways** — 5-line recap, verbatim match to Notes.md.
12. **Module complete** — "Committed to 01-orient/" summary box, teaser for "Module 2, Know Your Users," repo/Slack CTA.

## Content vs. Notes.md

All core-idea text, lab descriptions, and starter prompts in this deck are **verbatim identical** to what's already captured in [`Module 1 - Notes.md`](../Module%201%20-%20Notes.md) — no new prompt text to re-transcribe. The deck's unique value is structural/interactive, not textual.

## Embedded scenario cross-references (new info, not in Notes.md)

Each lesson's lab links to a specific anchor in the not-yet-captured **Streakly Scenario** doc:
- 1.1 → `#p1l1`, 1.2 → `#p1l2`, 1.3 → `#p1l3`, 1.4 → `#p1l4`, 1.5 → `#p1l5`

Pattern is `p<module>l<lesson>` — expect the same anchor scheme in every future module's slide deck, all pointing into one shared Streakly Scenario document.

## Key interaction logic

- **Scroll-snap deck engine:** `IntersectionObserver` (threshold 0.35) marks the active section, drives a top progress bar computed only over *non-skipped* sections, and highlights the matching nav dot.
- **Keyboard nav:** ↓/→/Space and ↑/← step between active (non-skipped) sections; `K` toggles skip on the current section; `M` opens a full-grid "section sorter" overlay (click to jump, per-card skip toggle).
- **Skip persistence:** skipped-section indices are stored in `localStorage` under a per-deck key derived from `document.title` (sanitized, 60-char cap) — persists across visits to the same deck.
- **Deck-sync (BroadcastChannel):** a self-contained script syncs scroll position between two open tabs of the *same module* — an instructor (notes) deck and its `(Shareable)` student twin — by matching a channel name built from the file path + filename with "(Shareable)" stripped. No-ops silently if no peer tab is open or `BroadcastChannel` is unsupported. Presenter can read notes privately while the clean deck is screen-shared, both scroll in lockstep.
- Reduced-motion and print media queries are handled (snap disabled, animations killed, single-column printable layout).

## ⚠ Discrepancy to flag

This slide's hero says **"Module 1 of 6"** and the course-arc diagram shows **6 stages** (Orient/Discover/Build/Collaborate/Decide/Systematize) — but the LMS cohort JSON captured from the Class 1 page only listed **4 scheduled classes** (`class-1`–`class-4`, dates May 11–20, 2026) plus Pre-course. Possibilities: (a) modules 5–6 are self-paced/async with no live "class" session and so don't appear in the cohort's `classes` array, (b) one or more `class-N` material pages bundle more than one module's content, or (c) the cohort JSON's `modules` sidebar list was incomplete at capture time. **Not resolved — flagging for Scott rather than guessing.** Worth checking the Class 4 page's structure carefully when we get there (module labels, arc-node counts) to see if 2 extra modules are nested inside it.

## Torq-rebuild notes

- **Highly reusable, brand-agnostic:** the entire slide-deck engine (scroll-snap sections, nav dots + tooltips, progress bar over active sections, skip/sorter overlay, keyboard shortcuts, reduced-motion/print handling, deck-sync BroadcastChannel pairing) is content-independent CSS/JS — good candidate to lift wholesale as a Torq slide-deck template/component.
- **Reusable UI patterns:** hero "waypoints" list, 4-up `cards-grid` concept cards, `expect-grid` icon cards, gold "real-world example" callout, `prompt` code-style block, arc-flow stage diagram — all clean, restyleable patterns.
- **Needs full reskin:** Streakly-specific scenario text, product-school color palette/logo, the `p{module}l{lesson}` anchor scheme (fine to keep the *mechanism*, just repoint to Torq's own scenario doc).
- **Worth preserving as-is for internal reference:** the deck-sync BroadcastChannel trick (instructor/student twin decks) — clever, non-obvious, and easy to lose if only descriptive notes are kept instead of the actual code pattern.
