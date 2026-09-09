# Module 2 — Lab Guide — Digest

**Source:** standalone self-contained HTML artifact (`Module 2 · Lab Guide · Product Leadership`), interactive worksheet — same engine as the Module 1 Lab Guide (auto-fieldification of `✍️`-prefixed cells, `localStorage` autosave, Markdown export). QA marker: `localStorage` (key `plc-m2-labguide`). Same unused `.bfg` briefing-toggle dead code present again (no matching markup in this file either — confirms it's shared boilerplate across the Lab Guide template family, not specific to any one module).

## What it is
The combined lab guide for both Module 2 hands-on exercises. Contains the **full 14-item backlog for both scenarios** (Fable and Meridian) — the actual exercise data referenced but not shown in the Slides — plus the Now/Next/Later roadmap-generation AI prompt that the Slides only pointed to.

## Structure
1. **Header** — title, "~40 min" meta chip, tip callout (covers both exercises; need M1 strategy + OKRs in hand).
2. **Exercise 1 divider** — "Audit and Prioritize Your Backlog," individual, ~20 min, before the break.
3. **Pick your scenario backlog** — restates both scenarios with a scenario-specific prioritization hint (Fable: watch for high-visibility requests conflicting with post-acute strategy; Meridian: watch for items that feel urgent from commercial pressure but ask whether they move field adoption).
4. **Step 1 (6 min) — Review your backlog** — full 14-item table per scenario, each with a **source** column (see full data below).
5. **Step 2 (12 min) — Prioritize your Rocks and Hard Nos** — restates the Impact-vs-Effort quadrant mapping (Do Now=Rocks, Plan Carefully=OKR-decided, Fill Gaps=quick wins, Avoid=Hard No), same "double effort, halve impact" reality-check tip as the Slides. 6 fillable fields: 3 Rocks (item #, name, OKR connection) + 3 Hard Nos (item #, name, one-sentence rationale).
6. **Peer Review phase** — "Show and swap": 1-minute silent read protocol, 2 fillable fields for the partner's observations (traceability read; case-for-promoting-a-Hard-No-to-a-Rock).
7. **Warn-callout** — save Rocks/Hard Nos, they feed Sprint 2 and the final roadmap deliverable.
8. **Lab Exercise divider** — "Create Your Product Roadmap," individual, ~20 min, lab section. Tip callout: gather your M1 cascade/OKRs and your 3 Rocks first.
9. **Step 1 (8 min) — Generate your roadmap** — the Now/Next/Later prompt (verbatim below), with a tip that it's a starting point, not a requirement.
10. **Step 2 (8 min) — Review and refine** — 3 fillable pressure-test questions (does Now read as bets not features; traceable to OKRs; would a stranger understand the quarter's problem from Now alone), plus a separate **refinement prompt** (verbatim below) to run if any answer is no. Instructs at least 2 refinement rounds.
11. **Step 3 (4 min) — Save your roadmap** — 1 fillable field to record where the roadmap was saved.
12. **Warn-callout** — commit the roadmap + trade-off memo to `02-roadmap/` in the repo.
13. **Lab toolbar** — Copy as Markdown / Download .md / Reset, same as Module 1's Lab Guide.
14. **Footer** — back-link to the Module 2 deck.

## Embedded exercise data — full 14-item backlogs (both scenarios, verbatim)

### Scenario A: Fable Growth (B2C)
| # | Backlog item | Source |
|---|---|---|
| 1 | Redesign the onboarding flow based on 40% drop-off data | Product analytics |
| 2 | Add a daily streak feature to drive habit formation | Growth team |
| 3 | Build a social layer: share your progress with friends | User research |
| 4 | Fix the notification system (wrong times, timezone bug) | Engineering |
| 5 | Launch a premium tier with therapist-matching | CEO |
| 6 | Add AI-generated daily check-in prompts personalised to user history | Product |
| 7 | Localise the app into Spanish and Portuguese | Sales (LATAM) |
| 8 | Build a web version (frequently requested in reviews) | Community |
| 9 | Create a "crisis mode" flow for acute anxiety moments | Clinical advisor |
| 10 | Close WCAG 2.1 accessibility compliance gap flagged in audit | Legal |
| 11 | Add Apple Watch integration | 3 partnership requests |
| 12 | Build a content library: guided meditations, articles, audio | Content team |
| 13 | Introduce "Fable for Teams," a B2B workplace wellbeing play | Business dev |
| 14 | Reduce app load time from 4.2s to under 2s on 4G | Engineering |

### Scenario B: Meridian Foundations (B2B)
| # | Backlog item | Source |
|---|---|---|
| 1 | Build offline-first mobile experience for job sites with poor connectivity | Field research |
| 2 | Add photo markup and annotation tool for field teams | Field superintendent interviews |
| 3 | Migrate the data model to support multi-project dashboards | Engineering (tech debt) |
| 4 | Simplify the daily log: reduce from 14 required fields to 4 | Foreman feedback |
| 5 | Build an automated compliance checklist generator | Enterprise sales (3 clients) |
| 6 | Add real-time weather data integration to the scheduling module | PM request |
| 7 | Create a foreman-facing mobile app (separate from the PM web app) | Field research |
| 8 | Fix the Procore import/export integration (broken for 2 clients) | Customer success |
| 9 | Add AI-assisted RFI (Request for Information) drafting | Product innovation |
| 10 | Build an executive reporting dashboard with custom KPIs | 2 renewals at risk |
| 11 | Enable push notifications for schedule changes | Field superintendent request |
| 12 | Add a time-tracking module | 3 clients in contract negotiations |
| 13 | Refresh the web UI (feedback: "looks outdated" from prospects) | Sales team |
| 14 | Build a subcontractor portal with document sharing | Enterprise sales |

Both backlogs are deliberately mixed: each contains items sourced from a CEO/exec, sales/commercial pressure, engineering tech-debt, legal/compliance, and genuine field/user research — the exercise's implicit teaching point is that source ≠ priority signal (a CEO request and a legal compliance gap sit alongside routine bug fixes; the student must apply Impact-vs-Effort rather than defer to whoever asked loudest or most senior).

## Reusable AI prompts (exact text)

**Now/Next/Later roadmap generation prompt:**
```
You are an experienced product leader helping me build a Now/Next/Later roadmap for my product initiative. I am going to share my strategy, OKRs, and prioritized Rocks. Your job is to generate a Now/Next/Later roadmap that is outcome-based, not feature-based. Every item in the Now column must be framed as a strategic bet, not a delivery milestone.

Here is my context:
My strategy (Playing to Win cascade): [PASTE YOUR M1 STRATEGY HERE]
My OKRs: [PASTE YOUR THREE OKRs HERE]
My three Rocks for this quarter: [PASTE YOUR THREE ROCKS HERE]

Please generate a Now/Next/Later roadmap with the following:
Now: maximum three items, each framed as a one-line outcome-based bet linked to one of my OKRs
Next: maximum five items, each with a one-line rationale for why it comes after Now
Later: any remaining strategic items that are right but not yet resourceable, labeled as bets not commitments

Format it cleanly so I can read it at a glance.
```

**Refinement prompt** (run if the pressure-test questions in Step 2 fail):
```
Rewrite the Now column so that every item is framed as an outcome-based bet rather than a feature description. Use this format: "We bet [action] will [outcome] for [who]."
```

This confirms and completes the Slides digest's flagged gap — the Slides only referenced "the prompt in your lab guide"; this is that prompt, now captured. The output format constraints (max 3 Now / max 5 Next, "We bet [action] will [outcome] for [who]" template) match exactly what the Slides' Now/Next/Later section described.

## Key interaction logic
Identical mechanism to the Module 1 Lab Guide digest: auto-fieldification of `✍️`-prefixed table cells into live `textarea`/`input` fields with labels derived from sibling `.q` cells, `localStorage` autosave (key `plc-m2-labguide`), Markdown export grouped by enclosing `.phase` section heading, Copy/Download/Reset toolbar with toast feedback. The dead `.bfg` briefing-toggle script/CSS is present again with no matching markup — second confirmation (after Module 1) that this is inert shared boilerplate across the entire Lab Guide template family, safe to ignore when rebuilding rather than something to investigate further.

## Torq-rebuild notes
- **The two full 14-item backlogs are the single most reusable teaching asset in this artifact** — a ready-made prioritization exercise with realistic organizational noise (exec pressure, sales pressure, compliance, tech debt, genuine research) baked into the "source" column. Directly portable to a Torq prioritization module with minimal edits.
- The roadmap-generation prompt's tight output constraints (max-count limits per column + a fill-in-the-blank sentence template for Now items) is a good pattern for keeping AI-assisted deliverables consistent and gradable — worth preserving verbatim if Torq rebuilds an AI-assisted roadmap exercise.
- Third confirmed instance of the `.bfg` dead-code pattern — if a future module's Lab Guide is captured and again shows this unused briefing-toggle code, it no longer needs individual comment; it's now established as boilerplate baked into the Lab Guide template itself.
- Unlike Module 1 (which had a dedicated Strategy Sprint Builder tool beyond the Lab Guide), Module 2 has no separate interactive builder — this Lab Guide is the only interactive artifact for the module, confirming the asymmetry already noted in the Slides digest and session state.
