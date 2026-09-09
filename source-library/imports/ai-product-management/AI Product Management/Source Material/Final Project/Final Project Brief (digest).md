# Final Project Brief — Digest

**What it is:** A 6-slide scroll-snap deck (Product School LMS artifact format) presented at the end of the course, laying out the capstone submission requirements. Course-level, not tied to a single module — governs the whole `juno-pm/` repo submission.

**QA:** Contains `scroll-snap-type: y mandatory` ✅. Zero `__next_f` occurrences ✅. Genuine capture.

---

## Structure (6 slides)

1. **Hero** — "Final Project Brief · 2026 cohort." Subtitle: submit `juno-pm/` repo within 7 days post-cohort, solo. Three waypoints: (1) Six artifacts, one per module, all committed; (2) Build Insights — 1 friction · 1 learning · 1 aha moment; (3) Optional Module 6 demo for volunteers. Closing line: "Out: a finalised, certifiable juno-pm/ repo."

2. **What You Submit** (Framework tag) — The repo URL is the entire submission, not a deck or doc.
   | Aspect | Detail |
   |---|---|
   | Format | Public or private GitHub repo, created from `ai-product-management-template` |
   | Window | Within 7 days of cohort end |
   | Voice | Solo, individual repo per learner |
   | Live demo? | Optional — dedicated time at end of M6 for volunteers to walk through builds/decisions/insights |
   | Instructor response | Async, in-thread, ~5 days |

3. **What's In the Repo** (Framework tag) — Six module folders + root README, confirming the full folder/artifact map:
   | Folder | Module | Artifact(s) |
   |---|---|---|
   | `01-prompting/` | M1 | `system-prompt.md` · `lovable-prototype.md` |
   | `02-strategy/` | M2 | `decision-matrix.md` · `strategy-one-pager.md` |
   | `03-rag-prd/` | M3 | `ai-prd.md` · `before-after-rag.md` |
   | `04-ai-ux/` | M4 | `user-flow.md` · `trust-gaps.md` |
   | `05-agentic-workflows/` | M5 | `awspec.md` · `agent-control-panel.md` (optional: `Juno Agent.json`) |
   | `06-evals/` | M6 | `eval-stack.md` · `human-rubric.md` |
   | `README.md` (root) | M6 | PM Execution Plan · the pitch · Build Insights |

4. **Grading Rubric** (Framework tag) — 4 dimensions × 3-point scale:
   - **Application of Concepts** — how well M1–M6 frameworks land in artifacts
   - **Credibility & Reasoning** — whether decisions hold up to scrutiny
   - **Clarity** — whether a stranger could read the README and "get" Juno
   - **Strategic Thinking** — whether the bet, the bar, and trade-offs are coherent
   - Scale: 1 Poor (0–49) · 2 Sufficient (50–79) · 3 Excellent (80–100)

5. **Submission Walkthrough** (Lecture tag) — 5 steps:
   1. **Create** — fork `ai-product-management-template`, name it `juno-pm/`
   2. **Build** — commit each module's artifact to its folder
   3. **Finalise** — open `Final Project Deliverables Builder.html`, generate both a visual `pitch.html` and the repo `README.md`
   4. **Reflect** — add 1 friction · 1 learning · 1 aha to the README
   5. **Submit** — post repo URL in `#ai-pm-cohort` within 7 days of cohort end
   - Includes a CTA button linking to `https://github.com/new?template_name=ai-product-management-template&template_owner=Product-School-Platform`
   - Closing line: "That's it. No deck. No group. The repo is the certificate."

6. **Q&A** — closer slide, park unresolved questions in `#ai-pm-cohort`, instructor responds within ~5 days.

---

## Notable embedded reference (new tool)

Step 3 references a tool artifact not yet captured: **`Final Project Deliverables Builder.html`** — an interactive builder (likely localStorage-backed) that generates both `pitch.html` (visual) and `README.md` (repo) from the learner's six module artifacts. **Flag for capture** when encountered — this is likely a high-value interactive builder artifact (auto-suggest / templating logic worth digesting in full).

---

## No AI prompts embedded
This deck is pure logistics/rubric content — no reusable AI prompts inside it.

## Interaction logic
Standard deck chrome only (scroll-snap sections, IntersectionObserver progress bar, nav dots, keyboard nav, skip/sorter via localStorage keyed to `document.title`). No scoring or content-generation logic — boilerplate, skippable per convention.

---

## Torq-rebuild notes
- The **repo-as-submission model** (no deck, no group deliverable, URL is the certificate) is a strong, reusable capstone pattern for Torq L&D — cheap to grade, forces real artifacts over performative ones.
- The **4-dimension / 3-tier rubric** (Application of Concepts, Credibility & Reasoning, Clarity, Strategic Thinking — Poor/Sufficient/Excellent with numeric bands) is a clean, directly reusable rubric shape for any Torq capstone.
- The **"1 friction · 1 learning · 1 aha" reflection prompt** is a lightweight, reusable retro format worth carrying into Torq's own final-project template.
- The confirmed folder map (`01-prompting` … `06-evals`) resolves the previously-unknown M2–M5 slugs: **`02-strategy`, `03-rag-prd`, `04-ai-ux`, `05-agentic-workflows`**. Also confirms M2–M6 artifact filenames — valuable for scoping what's still to capture per class.
- The optional-demo-at-M6 mechanic (no forced presentation, but a slot for volunteers) is a good low-pressure closing ritual to replicate.
