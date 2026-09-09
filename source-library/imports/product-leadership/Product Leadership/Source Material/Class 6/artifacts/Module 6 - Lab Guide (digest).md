# Module 6 — Lab Guide — Digest

**Source:** standalone self-contained HTML artifact (`Module 6 · Lab Guide · Product Leadership`). Same reusable auto-fieldification/autosave/export engine as M1–M5 Lab Guides. QA marker: `localStorage` key `plc-m6-labguide`, zero `__next_f`.

## What it is
The final module's lab guide — a single exercise (Build Your Leadership Skill File, ~15 min) rather than the scenario-based exercises of M1–M5. Personal/reflective, not Fable/Meridian-based: the goal is a portable markdown "skill file" encoding the learner's own leadership judgment for reuse with any AI tool. Explicitly **not a submitted deliverable** — a personal artifact the learner keeps.

## Structure
1. Header/lead — "Build your leadership skill file."
2. Callout: this guide covers the one Module 6 exercise; the scenarios were practice, this file is about you.
3. **Individual Exercise divider** — Build Your Leadership Skill File (~15 min).
4. **Step 1 · Gather your standards** — instructs reading all 7 prompts first, then writing properly in only 2–3 where the learner's point of view is strongest (explicit anti-pattern warning: "a thin answer in every box makes a weaker file than a sharp answer in three"). 7-row table: Company context / Strategy / Prioritization / Teams / Alignment / Financials / AI (where do you let AI lead, where does a human sign off, what do you never hand over). Tip callout: if you lead a team today, write the calls you actually make; if aspiring, write how you believe the calls should be made.
5. **Step 2 · Add key stakeholders** — 4-row table (who they are/role, what they care about, what they push back on, what earns their yes) for 1–2 stakeholders from the learner's own context (not Fable/Meridian). Notes it enables later "review this as [stakeholder] would" prompting.
6. **Step 3 · Prompt and refine your file** — full **skill-file-generation prompt** (verbatim below), framed as "the real work is in the refining, not the first draft." Tip callout: don't rush to finish in 15 min — treat as start of an ongoing artifact, not a finished deliverable.
7. **Post-class · Put it to work** — 3-tier adoption guidance: Simplest (paste at top of any chat) / Make it stick (Claude Project custom instructions, Gemini Gem, Custom GPT) / Go further (Claude Code / Cowork project file or skill).
8. **Appendix · Prompt library** — 5-row reference table of "chief of staff" style follow-on prompts assuming the skill file is connected to the learner's tools (verbatim below).
9. Definition-of-done callout — markdown file saved somewhere findable, covering context + 2-3 standards + 1-2 stakeholders; the model's flagged vague standards and sharpening questions are for later, not required today.
10. **Deliverable-status callout** (warn): explicitly **not one of the five submitted final-project deliverables** — nothing here is handed in.
11. Toolbar (Copy/Download/Reset).

## Embedded exercise data
None (no Fable/Meridian scenario data) — this exercise is personal-context-driven by design, the first Lab Guide in the course without pre-built scenario content.

## Reusable AI prompts

**Leadership skill file prompt** (verbatim):
> I am a product leader creating a reusable skill file I can load into any AI tool so it applies my judgment without me re-explaining it each time.
>
> Here is my context: [paste your context].
> Here are the standards I hold, in my own words: [paste your two or three].
> Here are the key stakeholders I need to convince: [paste your stakeholders].
>
> Write them into a concise markdown file with these sections:
> - Context (who I am and what I lead)
> - My Standards (each rewritten as a specific instruction an AI can act on, so it would actually behave differently and not just know what I value)
> - How to Work With Me (including one rule for how to push back on me rather than agree by default)
> - Where I Keep the Judgment (the calls I never hand off)
> - Key Stakeholders (each person's role, what they care about, what they push on, and what earns their yes, so you can review my work from their point of view when I ask)
>
> Write it in my voice. Where any of my standards are too vague to act on, flag it. Then end with two or three short questions that would make the file sharper, so I can keep refining it after today.

**Prompt library** (appendix, 5 follow-on prompts, verbatim):
| Use it to | The prompt |
|---|---|
| Prep my week | Using my skill file and my calendar, tell me where to focus this week, which meetings need real preparation, and what I am likely to be underestimating. |
| Review as a stakeholder | Review the attached document as [stakeholder from my file] would. Tell me where they would push back and what I should tighten before I share it. |
| Turn notes into action | From these meeting notes, pull the decisions made, the owners, and anything unresolved, and flag what conflicts with my priorities. |
| Draft in my voice | Using my skill file, draft a reply to this message that reflects how I would decide and how I want to push back rather than just agree. |
| Pressure-test a decision | Here is a call I am about to make. Using my standards, argue the strongest case against it before I commit. |

## Key interaction logic
Same auto-fieldification/autosave/Markdown-export engine as M1–M5. `.bfg` briefing-toggle JS is present but unused (no matching markup in this file) — consistent with M1–M3/M5.

## Torq-rebuild notes
- The **skill-file-generation prompt** is the single most reusable artifact in the entire course for a Torq rebuild: it's a generic "encode this person's judgment into a portable AI-context file" pattern, fully decoupled from Product Leadership content — directly usable as a standalone Torq tool/prompt for any leadership-development context.
- The prompt library (prep my week / review as stakeholder / notes-to-action / draft in my voice / pressure-test a decision) is a clean starter "chief of staff" prompt pack — reusable as-is once a skill file exists, regardless of course.
- The explicit "read all 7, write only 2-3 well" instruction models a good general UX pattern for any self-assessment tool: fewer, sharper answers over exhaustive shallow ones — worth carrying into how a Torq skill-file builder is designed (e.g., don't force all fields).
- This is the only Lab Guide in the course with no fictional-scenario data — confirms Module 6 is structurally different (reflective/personal capstone vs. applied scenario practice), useful to note if Torq preserves the module's position as a closing capstone.
- Confirms (final instance) the "prompt lives in Lab Guide, not Slides" pattern held for all of M2–M6.
