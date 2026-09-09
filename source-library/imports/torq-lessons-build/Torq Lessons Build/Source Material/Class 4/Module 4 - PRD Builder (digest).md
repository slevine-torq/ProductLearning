# Module 4 · PRD Builder (digest) — Interactive Tool

**Format:** Single-file interactive HTML tool (companion to Lab 2 Guide). Auto-saves to `localStorage` key `pm-m4-prd-builder`. Live-renders a formatted PRD preview as fields are filled; exports Markdown.

## What it does
A guided form that assembles a Simplified PRD live as the student types, mirroring the exact structure from the Lab 2 Guide's "Universal PRD prompt."

### Structure (5 steps → 1 live-rendered document)

1. **Scenario & feature anchor** — scenario radio (StreamLine/RouteLogic) + feature name + persona text fields.
2. **MoSCoW scope** — 4 side-by-side textareas (Must/Should/Could/Won't), one line per sub-requirement. Includes a **live-interpolated MoSCoW prompt** (same template as Lab 2 Guide, auto-filled with the feature name and persona).
3. **Big Picture** — Vision (1 line), Press release (paragraph textarea), Primary success metric, Guardrail metric.
4. **Details** — User stories, Screens to build (exactly 3), Functional requirements (5–8), Smart behaviors (Situation→Outcome), Technical constraints ("what not to build").
5. **Logistics** — Features out, Edge cases & safety guard, Decision log, Evals.

### Live features
- **Progress bar** — tracks completion across 9 key fields (feature, must, vision, press, success, stories, screens, funcs, smart), shown as "N / 9 complete."
- **Live PRD preview panel** — renders all filled fields into a formatted document in real time, with placeholder italic hints for empty fields (e.g. *"one sentence on the future state…"*).
- **Static builder hook block** (always visible, not user-edited): *"Build a working prototype based on this PRD. Use the User Story as the core flow, Functional Requirements as build constraints, and prioritize speed and clarity over visual complexity."* — separately copyable via its own button.
- **Markdown export** — compiles everything (including MoSCoW lists and the builder hook) into one `.md` file (`prd-and-prototype.md`), copy or download.

## Torq-rebuild notes
- This is the same "form fields → live-interpolated AI prompt + live document preview" pattern as the Roadmap Builder — confirms it's a deliberate, repeated design system across the course, not a one-off. Strong candidate to build as a **single reusable Torq component** (config-driven form schema → live doc + live prompt) rather than rebuilding bespoke per-lesson.
- The **progress bar tied to required-field completion** is a nice lightweight motivational/orientation device worth keeping — cheap to implement (just a filled/total field count), no server needed.
- No new backlog/content data here — this is purely the *PRD-assembly mechanism*, complementary to the Universal PRD prompt template already captured in the Lab 2 Guide digest.
