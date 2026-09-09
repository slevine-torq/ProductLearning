# M1 - Prompt Anatomy Builder ("Juno Prototype Prompt Builder") — Digest

**What it is:** Interactive lab tool for the M1 hands-on lab "Prompt-to-Prototype Your Copilot with Lovable." Walks the learner through all 4 lab steps (build → refine → test → save), ending in two copyable outputs: a Lovable-ready prompt, and the markdown for `01-prompting/lovable-prototype.md`.

**QA:** `localStorage` present (`m1-juno-prototype-prompt-v3`) ✅. Zero `__next_f` ✅. Genuine capture.

---

## Structure

**Header:** preset toggle — Option A (Build Your Own) / Option B (Juno Baseline) / Reset.

**Left panel — Step 1, Build the prompt.** 4 fields, each badged "filled/empty": Role, Task, Constraints, Format. Right panel has two tabs: **Lovable Prompt** (live-combined text) and **lovable-prototype.md** (live markdown preview). A self-review checklist (5 items, auto-checked — see Interaction logic) sits under the preview.

**Step 2, Refine the design** (below the checklist): two side-by-side paths, each with a copy button —
- **Path A · Brand Alignment**: upload a real screenshot, prompt tunes Juno's styling to match.
- **Path B · Vibe Match**: mimic a named company's design language (editable input, defaults to "Linear"); prompt regenerates live as you type the company name.

**Step 3, Test the prototype**: one embedded test artifact — a messy user-interview transcript ("Sarah, Data Analyst") to paste into the live Lovable prototype and press Process, to expose the "Beautiful Liar" gap (pretty UI, ungrounded/generic summary).

**Step 4, Save the prototype link**: instructions not to connect GitHub inside Lovable (it can only create a new repo, can't attach to the existing `juno-pm` template), plus repo-file fields (Prototype link URL, What it demonstrates, What worked, What broke, What I'd change) that feed the `lovable-prototype.md` tab.

---

## Embedded exercise data (verbatim)

**Option A preset (the richer starter, "Build Your Own"):**
- Role: "Act as a Senior Frontend Engineer with 8+ years of experience shipping production React dashboards for B2B SaaS products. You specialise in clean, dark-mode interfaces that balance information density with breathing room."
- Task: "Build a clickable three-column dashboard for 'Juno PM', an AI Associate PM at RocketShip. Juno helps PMs synthesise messy raw inputs (interview transcripts, support tickets, executive emails) into evidence-backed PRD drafts, replacing the chaos of jumping between Slack, Notion, and Jira."
- Constraints: "- Use a dark-mode aesthetic with a single accent colour for emphasis (no rainbow palettes).\n- Three columns of equal width that don't reflow on a standard laptop screen (1280px+).\n- Keep the 'Process Transcript' button persistently visible, never hidden behind a scroll.\n- Do not add settings, configuration panels, login screens, or auth flows for V1.\n- Do not add a sidebar or top navigation, go straight to the dashboard."
- Format: "Three columns:\n• LEFT, 'Raw User Transcripts': a large textarea where users paste interviews, tickets, and emails.\n• MIDDLE, 'Structured Insights': cards with Priority and Sentiment tags, generated from the raw input.\n• RIGHT, 'Draft PRD': a markdown preview pane showing a rendered Opportunity Brief.\nAdd a prominent 'Process Transcript' button between LEFT and MIDDLE that triggers a loading state for 1.5s before populating the other two columns."

**Option B preset (Juno Baseline, minimal/free-tier-friendly):**
- Role: "Act as a Senior Frontend Engineer."
- Task: "Build a clean, dark-mode Dashboard for 'Juno.'"
- Constraints: "Add a 'Process' button that triggers a loading state."
- Format: "Left Column: Input area for 'Raw User Transcripts.'\nMiddle Column: 'Structured Insights' (Cards with Priority/Sentiment).\nRight Column: 'Draft PRD' (Markdown preview)."

**Path A — Brand Alignment prompt:** "I am uploading a screenshot of my company's current dashboard. Update Juno's colours, typography, and component styling to match this design system exactly. Match the rounded-corner radii, button styles, font weights, and accent colour usage. Keep the three-column structure intact."

**Path B — Vibe Match prompt template** (company name interpolated, default "Linear"): "Refine the dashboard UI to match the aesthetic of {company}. Use their specific colour palette, border styles, typography, and spacing to make Juno feel like it belongs in that ecosystem. Keep the three-column layout and the Process Transcript button intact."

**Test artifact — "Sarah, Data Analyst" interview transcript** (paste-and-process test data, verbatim):
> Interviewer: So, tell me about your workflow.
> User (Sarah, Data Analyst): honestly, it's been a week. My dog has been barking all morning, sorry if you hear him. Anyway, I log into RocketShip every Monday. The first thing I notice is that the new blue navigation bar is really bright, like hurts my eyes bright. Can we change that? But yeah, so I go to the 'Quarterly Reports' tab. I select my date range, usually last 90 days, and hit 'Generate PDF.' That works fine. But then, and this is the part that makes me want to scream, I try to click 'Export to CSV' because I need to pivot this in Excel. It spins for like 5 minutes and then just crashes. No error message. Just blank. I've lost hours because of this. I end up just taking screenshots of the table, which is stupid. Oh, and I'd love a dark mode.

Designed signal-to-noise: the real "Revenue Blocker" is the CSV export crash; the nav-bar color complaint and dark-mode request are deliberate noise the AI is expected to filter out (or fail to, illustrating the "Beautiful Liar" pattern from the Slides deck).

**`lovable-prototype.md` output template:**
```
# Lovable Prototype · Juno

## Prototype link
{url}

## What it demonstrates
{demo}

## Debrief
- **What worked:** {worked}
- **What broke / felt like a toy:** {broke}
- **What I'd change next pass:** {next}
```

---

## Interaction logic

- **Preset loader**: switching Option A ↔ B prompts a confirm dialog before overwriting edited fields; both presets stored as JS objects, field values persisted to `localStorage` under `m1-juno-prototype-prompt-v3`.
- **Lovable prompt assembly**: concatenates Role + Task + blank line + Format + blank line + "Rules:" + Constraints, in that fixed order — not a simple field dump, it reorders for prompt quality (Format before Constraints/Rules).
- **Self-review checklist — auto-graded via regex/length heuristics**, not manual: (1) Role check passes if length > 30 **and** matches `/senior|engineer|specialist|expert|years|architect|designer/i`; (2) Task check passes if length > 30 **and** starts with an action verb from `/act|build|design|create|generate|develop|implement|construct|prototype/i`; (3) Constraints check passes if ≥3 bullet-style lines **and** contains a negation word (`do not|never|avoid|don't|no |without`); (4) Format check passes if length > 40 **and** contains a UI-component keyword (`column|panel|card|button|component|section|preview|state|loading`); (5) Length check passes if total word count of the assembled prompt is between 80–350 words.
- **Vibe prompt** regenerates live on every keystroke in the company-name input (`oninput`), no submit step.
- Copy/download actions use `navigator.clipboard.writeText` and a Blob-based `.md` download, with a toast confirmation.

---

## Torq-rebuild notes

- **The regex-driven self-review checklist** is the most reusable mechanic here: instead of a manual checkbox list, it programmatically infers whether a field is "good enough" from surface patterns (keyword presence, bullet count, word count band). This is a cheap, effective pattern worth replicating in Torq lab tools — it teaches the learner what good input structurally looks like without needing an LLM call to grade it.
- **The deliberately noisy test transcript (Sarah)** is an excellent teaching artifact — embedding one true signal buried in plausible-sounding noise, to expose whether a learner's prompt/system actually filters for relevance. Worth building an equivalent "noisy input fixture" for any Torq exercise that teaches signal-extraction.
- **Option A/B (rich vs. baseline preset)** with a toggle + confirm-before-overwrite is a good UX pattern for serving both fast-and-cheap and thorough-and-guided learners from one tool.
- **The Brand Alignment vs. Vibe Match refinement fork** (bring-your-own-screenshot vs. name-a-reference-company) is a nice reusable pattern for any "make this look professional" step in a build lab.
