# Module 4 · Roadmap Builder (digest) — Interactive Tool

**Format:** Single-file interactive HTML tool (companion to the Lab 1 Guide). Auto-saves to `localStorage` key `pm-m4-roadmap-builder`. Exports a Markdown deliverable via Copy/Download buttons.

## What it does
An end-to-end, live-computing prioritization tool:

1. **Scenario picker** — radio toggle between StreamLine (B2C) and RouteLogic (B2B); swaps the entire backlog table when changed. (Same two backlogs as the Lab 1 Guide digest — not re-listed here.)
2. **Strategic anchors form** — 4 text inputs (Persona, Primary metric, Moment of misery, Guardrail) that feed live into the generated AI prompts below.
3. **Scoring table** — one row per backlog feature, with:
   - Value dropdown (1–5)
   - Effort dropdown (1–5)
   - **Auto-computed Quadrant badge** (color-coded): `Value≥4 & Effort≤2` → Quick Win · `Value≥4 & Effort>2` → Major Project · `Value<4 & Effort≤2` → Fill-In · else → Time Sinker
   - Decision dropdown (Now/Next/Later/Cut) — **auto-suggests** the decision the first time both scores are entered (Quick Win→Now, Major Project→Next, Fill-In→Later, Time Sinker→Cut), but stays fully editable/overridable
   - Rationale text field
4. **Live roadmap preview** — Now/Next/Later lane cards + a "Cut List" panel, all populated in real time from the Decision column.
5. **Two auto-generated, copyable AI prompts** (in `<details>` disclosure widgets), both dynamically interpolated with the student's actual anchors/scenario/scores:
   - **Scoring prompt** — same "Senior PM... Effort vs. Value" prompt pattern as the Lab 1 Guide, but auto-filled with the live anchor values and the full feature list.
   - **"Generate my roadmap" prompt** — new artifact not seen elsewhere:
     ```
     You are a Senior PM and front-end developer. Build me a clean, interactive,
     single-file HTML roadmap I can open in any browser.

     Brand: [brand] · Team: [team]
     Lanes: NOW ([timing]), NEXT ([timing]), LATER (backlog).
     Each feature is a card showing its name, my rationale, and a colour-coded
     quadrant badge. Add a 'Cut List' at the bottom for the items I cut.

     Here is my finalized prioritization:
     [lanes with feature id/name/rationale, grouped Now/Next/Later/Cut]

     Output only the complete HTML file. No explanation needed.
     ```
6. **Markdown export** — compiles anchors + full scoring table + roadmap lanes + cut list into one structured `.md` file (`roadmap-prd-prototype.md`), copy-to-clipboard or download.

## Quadrant logic (reusable rule, exact thresholds)
```
if Value >= 4 and Effort <= 2 → Quick Win     (suggested lane: Now)
if Value >= 4 and Effort >  2 → Major Project (suggested lane: Next)
if Value <  4 and Effort <= 2 → Fill-In       (suggested lane: Later)
else                          → Time Sinker   (suggested lane: Cut)
```

## Torq-rebuild notes
- The killer mechanic is **prompt auto-fill from live form state** — the AI prompts aren't static text blocks, they're templates that pull the student's actual anchors/scenario/scoring data at click-time. This turns a "worksheet + separate copy-paste prompt" into one continuous tool. Strong pattern to replicate for Torq builders generally.
- Auto-suggesting a lane from the computed quadrant (but leaving it fully overridable) models the lesson's core teaching point directly in the UI: "AI gives a baseline, your judgment makes the call."
- The "generate my roadmap" prompt is itself a mini spec for a follow-on single-file HTML generator — same self-contained artifact pattern used throughout this course. Confirms Torq should probably standardize on this single-file-HTML-with-localStorage pattern for any interactive tools, pending confirmation of Torq's LMS constraints.
- No new backlog/content data beyond what's already in the Lab 1 Guide digest — this file is purely the *mechanism* (scoring logic + prompt templates + export format).
