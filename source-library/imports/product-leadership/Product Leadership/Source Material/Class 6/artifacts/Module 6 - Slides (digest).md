# Module 6 — Slides — Digest

**Source:** standalone self-contained HTML slide-deck artifact (`Module 6, Leverage AI Tools for Leadership Execution · Product Leadership`). Same reusable scroll-snap presentation shell as Modules 1–5 (nav dots, progress bar, K/M skip-sorter, deck-sync via BroadcastChannel, print stylesheet, reduced-motion handling). QA marker: `scroll-snap-type: y mandatory`, zero `__next_f`.

## What it is
The final class's slide deck — capstone module. 26 sections. Combines new Module 6 content (AI leverage/governance) with the course-closing Final Project Showcase. No AI prompt embedded directly (same M2–M5 pattern) — points to `Module 6 - Lab Guide.html` for the skill-file-building prompt.

## Structure (26 sections, in order)
1. **Hero** ("Module 6") — 4 waypoints (AI user→leader / governing AI bets / build your leadership skill file / final project showcase). Subtitle notes: "Individual format · the capstone module."
2. **Class Expectations** — same 6 norms as M1–M5.
3. **Syllabus** — 6-module grid, Module 6 marked "You are here" (last module).
4. **Agenda** — 3 waypoints (mapped to the deck's 3 sections).
5. **Section break 01** — "From AI User to AI Leader."
6. **Q&A · How AI Shows Up Around You** (10 min) — same discussion prompt/landing point as Notes.
7. **The Stages of AI Leverage** — 3-card grid (Personal Productivity / Team Capability / Org Advantage), each with a concrete example not in Notes: Stage 1 = PRD draft in minutes; Stage 2 = every PM writes PRDs to the same prompt so quality holds; Stage 3 = PRDs feed a shared system the whole org builds against.
8. **Where AI Earns Its Place** — 5-row list (Strategy/Prioritization & Roadmapping/Development & Coaching/Stakeholder Alignment/Financial Bets), same content as Notes.
9. **Leading a Team That Builds With AI** — 3-card grid (Norms/Risks/Culture), each paired with an explicit **"Action" callout** (new, more prescriptive than Notes) plus the same 3 real-world examples (Chevrolet $1-car bot, Aalto accounting-team study, Air Canada tribunal case). Actions: Norms → "write the one-page rule for which tasks ship on AI output alone"; Risks → "name the one skill you will not let AI absorb, require reps by hand"; Culture → "put one name against every AI-assisted deliverable."
10. **Section break 02** — "Governing AI Bets."
11. **Build, Buy, or Partner on AI** — 3-column card (Build/Buy/Partner) + a distinct "moat test" 3-column band, each naming what you should be able to articulate to justify the path (competitor-can't-assemble inputs / first-mover advantage that can't be taken back / integration value the partner can't offer directly). More structured than the Notes' prose version.
12. **What AI Adds to Every Path** — 4-card grid (Infrastructure scales with usage / Vendor dependency / Maintenance is permanent / Data ownership is a strategic stake), matches Notes content, slightly condensed phrasing.
13. **The Same Discipline, With Harder Terrain** — 4-card grid (Name the Bet 🎯 / Define Success First 📏 / Give It a Fair Run ⏱️ / Set the Kill Criteria 🛑), matches Notes.
14. **Responsible AI Decisions** — 3-card grid (Trust 🤝/Explainability 🔍/Bias 👨‍⚖️), each with the "question you own" callout verbatim matching Notes.
15. **Lab · Build Your Leadership Skill File** (15 min, individual) — 4 flow-steps (gather standards → prompt your tool → read and refine → keep going). Links to `Module 6 - Lab Guide.html`.
16. **The Toolkit You Built (Learner Journey)** — 6-row recap of all modules, each with a "· The [X]" subtitle framing (Strategic Leap/Focus Reframe/Leadership Reset/Influence Edge/Language Shift/Leverage Range) and a "the win:" sentence — matches the Notes' learner-journey section almost verbatim.
17. **Finalize Your Deliverables** (15 min, individual) — 5-item stacked list (Strategy/Roadmap/Team Charter/Financial Model/Individual Insights), same descriptions as Notes. Callout: adapt the template, submit finalized repo to qualify for certification.
18. **Break** (5 min).
19. **Cameras On** reminder.
20. **Section break 03** — "Final Project Showcase: Deliver Your Product Strategy."
21. **Presentation Kick-Off** — 2-card callout: "roughly 7 minutes each" to demo + share insights; "7 days to submit" final deliverables post-course.
22. **Student Presentations** — **new content not in Notes**: describes presentations running "roughly 2 to 3 minutes each, back to back, so everyone presents. Lead with your headline recommendation, then the evidence behind it." **Note: this conflicts with the "roughly 7 minutes each" figure given one slide earlier in the Presentation Kick-Off section** — worth flagging as an internal inconsistency in the source material (possibly the ~7-min figure is for optional volunteers demoing live per the Notes' "Extra Practice" wording, while the 2–3 min figure is the actual full-class presentation format; not resolved by the deck itself).
23. **Key Takeaways** — 4 cards, same content as Notes' 4 bullets.
24. **Certification Reminder** — restates the 5 deliverables and the 7-day submission window.
25. **Resources & Templates** — 2-card grid: Module 6 Lab Guide, On-Demand Content. No third interactive tool (matches M2–M5 pattern).
26. **Q&A** — closing slide, notes async learners can post questions in `#cohort-channel`.

## Embedded exercise data / worked examples
No new fictional-scenario (Fable/Meridian) data in this deck — Module 6 exercises are personal/reflective (skill file, deliverable finalization), not scenario-based.

## Reusable AI prompts
**None embedded in this deck** — consistent with the M2–M5 pattern. The skill-file-building prompt and "prompt library" are in `Module 6 - Lab Guide.html`, not yet captured (priority for this final module).

## Key interaction logic
Same shared engine as M1–M5 Slides — no new JS behavior beyond the standard scroll-snap/nav-dot/skip-sorter/deck-sync/print/reduced-motion system, confirmed present in full in this deck's `<script>` blocks.

## Torq-rebuild notes
- This deck doubles as the **course-closing recap** — the "Toolkit You Built" section is a clean single-slide summary of all 6 modules' deliverables and "wins," useful as a template for how Torq could close out any multi-module program.
- The Build/Buy/Partner "moat test" framing (name what a competitor can't assemble / can't take back / can't get directly) is a crisp, reusable strategic-decision rubric independent of AI — could generalize to any make-vs-buy leadership module.
- The Norms/Risks/Culture + Action + real-world-example card pattern (Chevrolet/Aalto/Air Canada) is the most "prescriptive" version of a framework in the course — pairing a rule with an explicit action and a real failure case is a strong reusable teaching template for governance-type content.
- **Flag: verify the 7-minutes-vs-2–3-minutes presentation-time discrepancy** (Structure §21 vs §22) if this timing detail matters for a Torq rebuild — likely a source-content inconsistency rather than a capture error, since both figures are stated plainly and adjacently in the same deck.
