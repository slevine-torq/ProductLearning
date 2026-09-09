# Source Capture Guide — PMC → Torq L&D

How to gather Product School PMC source material so it's clean, consistent, and ready to rebuild into Torq lessons. **Markdown for prose, standalone HTML for designed artifacts. No Word docs.**

---

## Folder convention (per class)

```
Class N/
├── Module N - Notes.md            ← prose (Markdown)
├── Module N - Glossary.md         ← prose (Markdown)
├── Module N - Reference Card.md   ← prose (Markdown, if the class has one)
└── artifacts/                     ← designed, self-contained HTML files
    ├── Module N - Slides (Shareable).html
    ├── Module N - Exercise Guide.html
    ├── Module N - Hypothesis Builder.html   (name varies by class)
    └── Module N - Pre-Read.html
```

- **Prose files** live at the class-folder root, named `Module N - <Thing>.md`.
- **Designed artifacts** (anything with a real layout/interactivity) go in `artifacts/` as **HTML Only** saves.
- Don't save the LMS wrapper page — it's 95% framework scaffolding. Save the *individual* artifact, or paste me the page and I'll extract the Markdown.

---

## How to grab each piece

**Prose (Notes / Glossary / Reference Card):**
- Best: open the direct `.md`/content URL and save it, OR
- Easiest: paste me the class material page (like you did for Class 3) and I extract clean Markdown into the right files.

**Artifacts (Slides, Exercise Guide, Builder, Pre-Read):**
- ⚠️ **Do NOT "Save Page As" from the LMS class page.** The LMS is a React/Next.js app that renders with JavaScript — a static save captures only a broken shell (logo + blank box).
- ✅ **Go to the artifact's OWN URL first, then save.** Each artifact is a standalone, static HTML file, so saving *that* page is lossless.
  - Slides: click **Fullscreen** (or copy the iframe `src`); Resources links open the artifact directly in a new tab.
  - Then **Cmd+S → "Page Source" / "HTML Only"** into that class's `artifacts/`. One keystroke, complete file.
  - Or use `view-source:<artifact-url>`, select all, and save/paste.
- Note: these decks link a few external images (`../Design/*.png` logos, cameras-on). Those won't come with the HTML — that's fine; we're capturing structure + content + the design system, not pixel-perfect assets.

**URL pattern** (swap the number; spaces are `%20`, `&` is `%26`):
```
https://app.productschool.com/lms/student/content/pmc%402026.1/outputs/certifications/pmc/2026.1/Modules/Module N - Slides (Shareable).html
                                                                                        .../Module N - Exercise Guide.html
                                                                                        .../Module N - Pre-Read.html
                                                                                        .../Module N - <Builder/Worksheet>.html
                                                                                        .../Module N - <Reference Card>.md
```

---

## Class map & capture checklist

**The course is 6 modules, fully captured.** Classes 7–12 in the LMS are not additional content — they never unlocked real modules (`moduleTitle: null` for all six), and the syllabus itself only ever listed "Module N of 6." Their placeholder folders have been deleted; there is nothing more to capture.

| Class | Module title | Notes | Glossary | Ref Card | Slides | Exercise/Builder | Pre-Read |
|---|---|:--:|:--:|:--:|:--:|:--:|:--:|
| 1 | Develop Strategic Product Thinking | ✅ | ✅ | n/a | ✅ | ✅ (Ex1, Ex2, Hook Builder) | n/a |
| 2 | Discover Product Opportunities via Qualitative Signals | ✅ | ✅ | n/a | ✅ | ✅ (Ex1 +UXR data, Ex2, Persona&Journey Builder) | n/a |
| 3 | Use Analytics and Metrics for Data-Driven Decisions | ✅ | ✅ | ☐ (opt) | ✅ | ✅ (Exercise Guide, Hypothesis Builder) | ✅ |
| 4 | Build High-Velocity Product Roadmaps | ✅ | ✅ | n/a | ✅ | ✅ (Lab1+Roadmap Builder, Lab2+PRD Builder, Example Roadmap, Sample PRD, digests) | ✅ |
| 5 | Run Effective Product Experimentation | ✅ | ✅ | n/a (anchor in Notes Shareable, not a file) | ✅ (digest) | ✅ (Lab Guide + Experiment Brief Builder, digests) | ✅ (+ Sample Experiment Brief, digest) |
| 6 | Launch Impactful GTM Plans (capstone) | ✅ | ✅ | n/a | ✅ (digest) | ✅ (Lab Guide + GTM Builder, digests) | n/a — no Pre-Read this module; capstone Final Presentation Generator captured instead |

**Source capture is DONE.** All 6 modules complete. Next step is the Torq Rebuild (see `../Torq Rebuild/_TORQ-REBUILD-BRIEF.md`).

> **Legacy note:** Class 1 and Class 2 currently hold the old `.docx` captures. Keep them for now; I'll convert them to Markdown (and pull the real artifacts) when we work those classes. Class 2's existing `Resources and Templates/` folder is the old artifact stash — I'll fold it into `artifacts/`.

---

## What "done" looks like for a class

A class is fully captured when its folder has: `Notes.md`, `Glossary.md`, any `Reference Card.md`, and every designed artifact saved as HTML in `artifacts/`. Then it's ready to rebuild in Torq brand.

---

## Project scope reminder

We rebuild on the **frameworks and structure** (not copyrightable) with Torq's own examples, data, and voice — not Product School's prose verbatim. These captures are reference material for that rebuild.
