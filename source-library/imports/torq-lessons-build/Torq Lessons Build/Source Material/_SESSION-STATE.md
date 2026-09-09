# Session state — PMC source capture (resume note)

**Goal:** capture Product School PMC course source (6 modules total — the course's own syllabus is "Module N of 6") as clean Markdown (prose) + standalone HTML/digests (artifacts), to later rebuild as Torq L&D. See `_CAPTURE-GUIDE.md` for the full convention. **Capture phase is COMPLETE.**

## The proven method
- **Prose (Notes / Glossary / Reference Card):** user pastes the **LMS class-material page** (React/Next.js source) → I extract clean Markdown into `Class N/Module N - Notes.md` and `... - Glossary.md`.
- **Artifacts (Slides / Exercise Guides / Builders / Pre-Read):** user pastes the artifact's `view-source:` HTML → I write a **compact DIGEST** (`Class N/Module N - <Name> (digest).md`), NOT verbatim HTML. Digest captures: what it is, structure/sections, embedded exercise data + scenarios, the exact AI prompts, interactions, localStorage keys. Skip the CSS/JS boilerplate. (Raw HTML is re-grabbable from the LMS in one paste if a pixel rebuild is ever needed.)
- Artifact URL pattern: `https://app.productschool.com/lms/student/content/pmc%402026.1/outputs/certifications/pmc/2026.1/Modules/Module N - <Name>.html`

## METHOD CHANGE (2026-08-21) — token economy
- Scott flagged high token use. Two fixes adopted: (1) **use Sonnet for capture/distillation**, save Opus for the Torq rebuild; (2) **stop re-emitting verbatim HTML** — distill artifacts into digests instead. Notes/Glossary Markdown unchanged.
- Class 1–3 artifacts + Class 4 Slides were saved verbatim under the OLD method (already on disk, fine). Class 4's REMAINING artifacts onward use the digest method.
- Torq build format (Q from Scott): PS artifacts are single-file self-contained HTML (inline CSS/JS, localStorage). Likely the right target for Torq self-paced reference too — CONFIRM once Scott sends Torq LMS reference/screenshots (CSP, iframe, custom-HTML support).

## Status (as of this note)
- **Class 1 — COMPLETE**: Notes, Glossary, Slides, Exercise 1 Guide, Exercise 2 Guide, Problem Hook Builder.
- **Class 2 — COMPLETE**: Notes, Glossary, Slides, Exercise 1 Guide (+embedded UXR datasets), Exercise 2 Guide, Persona & Journey Builder.
- **Class 3 — COMPLETE**: Notes, Glossary, Slides, Exercise Guide (+both scenarios' data snapshots), Hypothesis Builder, Pre-Read. (Optional not-grabbed: `Module 3 - Metrics & Hypothesis Reference Card.md`.)
- **Class 4 — COMPLETE**: Notes, Glossary, Pre-Read (full .md), Slides (full HTML, captured before the digest-method switch). Lab 1 Guide, Roadmap Builder, Lab 2 Guide, Sample PRD, Example Roadmap, PRD Builder all captured as DIGESTS (not verbatim HTML) per the 2026-08-21 method change below.
- **Class 5 — COMPLETE**: Notes, Glossary, Pre-Read (full .md), Slides digest, Lab Guide digest, Experiment Brief Builder digest (incl. real sample-size formula), Sample Experiment Brief digest. No separate Reference Card file (it's an anchor inside Notes (Shareable).html for this module).
- **Class 6 — COMPLETE (capstone)**: Notes, Glossary, Slides digest, Lab Guide digest, GTM Launch Plan Builder digest, Sample GTM Launch Plan digest, Final Presentation Generator digest. No Pre-Read for this module (LMS resource list only had 4 items, confirmed — not a miss). Final Presentation Generator's Master Prompt is a full portable spec of the PS deck design system — flagged as the single highest-value artifact captured for the Torq rebuild.
- **ALL 6 MODULES COMPLETE — this is the entire course.** Classes 1–6 fully captured (Notes/Glossary + all artifacts as digests or full .md where short). Classes 7–12 in the LMS were never real content (`moduleTitle: null`, no materials ever published) — Scott confirmed the course is 6 modules and deleted the empty 7–12 placeholder folders on 2026-08-21. Do not recreate them or look for more classes to unlock.

## Next action
**Source capture is fully DONE — no more classes to capture.** Next focus is the **Torq Rebuild** (see `../Torq Rebuild/_TORQ-REBUILD-BRIEF.md`) — awaiting Scott's new brand/reference material + screenshots before starting build-approach decisions.

## Plan decisions (from Scott)
- **Capture scope:** all 6 modules — DONE. (Earlier note said "all 12 classes," superseded once it became clear the course only has 6 modules; 7–12 folders deleted.)
- **Torq rebuild:** planning lives in `../Torq Rebuild/` (sibling of Source Material). See `Torq Rebuild/_TORQ-REBUILD-BRIEF.md`.
- **Clean slate for rebuild:** FORGET all previous Torq builds (old `CC4PM-for-Torq`, old brandkit). Scott is sending NEW brand/reference material + screenshots (into `Torq Rebuild/reference-screenshots/`). Do not reuse old tokens/layout.
- Primary delivery mode stays **self-paced reference**. Build approach (content-model+generator vs single template) still TBD, pending Scott's new reference + intake answers.

## Notes / cleanup
- Legacy `.docx` in Class 1 & Class 2 (and Class 2's `Resources and Templates/`) are the OLD captures — superseded by the new .md/.html. Retire when convenient.
- Junk to delete anytime: `Source Material/Product School LMS.html` and `Source Material/Prepare for Day 1/Product School LMS.html` (broken "Save Page As" shells).
