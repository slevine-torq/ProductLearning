# Module 6 · Final Presentation Generator (digest) — Capstone Interactive Tool

**Format:** Single-file interactive HTML tool, the capstone artifact of the entire course. Auto-saves to `localStorage` key `pm-m6-finalpres-v2`. Unlike the per-module builders, this one **assembles inputs from all 6 modules** into a master AI prompt that generates a complete presentation deck.

## What it does
A "prompt → HTML" meta-tool: collects the deliverable from every prior module into structured cards, then produces (a) a master prompt to paste into an LLM to generate a finished presentation HTML file, (b) a README.md for the student's repo, (c) a repo file-tree visualization showing what's filled/missing, and (d) a self-review "CPO Critic" prompt.

### Structure — one card per final-deck slide
- **Cover**: title, one-line pitch, name/cohort, repo URL, prototype link.
- **Slide 5 · Strategy** (M1+M3): problem hook, value proposition, hypothesis.
- **Slide 6 · Research** (M2): competitive analysis/workaround, journey map.
- **Slide 7 · Blueprint** (M4): roadmap/prioritization, PRD highlights.
- **Slide 8 · Validation** (M5): experiment plan.
- **Slide 9 · Launch** (M6): GTM strategy summary, success metrics + bad signal.
- **Slide 10 · Story**: friction points/aha moment, key takeaways/next steps.

Note: this tool uses the deck's "Slide 5–10" numbering (not "Slide 1–6" as in Notes.md) — see the numbering-discrepancy flag in the Slides digest.

### Input methods (three ways to fill the cards)
1. **Manual entry** into each textarea.
2. **Bulk file upload** — drag in multiple `.md` files at once; a keyword-matching router (`FILE_ROUTES`) auto-assigns each file to the right card by filename (e.g. any filename containing "hypothesis" or "metric" → Slide 5 hypothesis field; "gtm"/"launch"/"dashboard" → Slide 9).
3. **Direct GitHub repo pull** — student pastes their repo URL; the tool fetches raw files via `raw.githubusercontent.com` for a fixed list of expected paths (auto-detects `main` vs `master` branch), and routes them through the same keyword matcher. Only fills currently-empty cards (won't overwrite edits). Repo must be public.

### Expected repo structure (encoded in the tool, confirms the standard project layout for the whole course)
```
pm-final-project/
├── 01-product-thinking/problem-hook.md
├── 02-discovery/competitive-and-journey.md
├── 03-analytics/hypothesis-and-metrics.md
├── 04-roadmap/roadmap-prd-prototype.md  (or prd-and-prototype.md)
├── 05-experimentation/experimentation-plan.md
├── 06-launch/
│   ├── gtm-and-dashboard.md
│   ├── individual-insights.md
│   └── final-presentation.html   ← the LLM-generated output goes here
└── README.md
```

### The Master Prompt (the key output — full design spec for the LLM to generate the deck)
Instructs the LLM to produce **one complete, self-contained HTML5 file** with:
- Exact design tokens: `#07162C` background, white text, accent palette (`#fb923c` orange primary + cyan/teal/blue/violet/pink), Poppins/Lato/IBM Plex Mono fonts, rounded 14-16px cards, `rgba(251,146,60,0.25)` borders.
- Scroll-snap full-viewport sections, one per slide, in a fixed 8-section order (Cover → Strategy → Research → Blueprint → Validation → Launch → Story → Thank-you/Submit).
- Keyboard nav (Arrow keys/Space/Home/End/Esc), progress bar, dot nav — same interaction pattern as the course's own slide decks.
- No external JS libraries, no React — inline CSS + a small vanilla script only.
- All content injected verbatim from the filled cards (with tasteful placeholders for anything left blank) — "do not editorialize."

This prompt is essentially a **portable spec for the entire Product School slide-deck design system**, written out in enough detail that any LLM can reproduce it. High-value artifact for Torq: this is the actual design system documented as an executable prompt.

### The "CPO Critic" self-review prompt (new pattern — a *meta* pressure-test, one level up from Modules 4-6's inline pressure-test prompts)
```
You are a Chief Product Officer reviewing this Product Management capstone submission.

I am pasting (1) the rendered HTML presentation and (2) the README. Score it as if
it landed in your inbox as a "fund this product bet" pitch from a PM on your team.

Answer in 3 short paragraphs:

(a) Would you fund this bet on the strength of this submission alone? Cite the
    strongest slide and the weakest slide by name.

(b) Where is the product thinking strongest — strategy (Slide 5), research (Slide 6),
    blueprint (Slide 7), validation (Slide 8), or launch (Slide 9)? Where is it weakest?

(c) What single change would move this from "good cohort submission" to
    "fundable bet"?

Be direct. No soft-pedaling. Use the language of a CPO under quarterly planning pressure.
```
Instructed to be run in a **fresh LLM session** ("the stranger test") against the *rendered* output, not the inputs — testing the final artifact cold, the way a real reviewer would.

### Self-review checklist (in-tool, tracks completion)
Cover · Strategy · Research · Blueprint · Validation · Launch · Story — each marked done once its required fields are filled.

## Two full worked presets (complete end-to-end examples, one per scenario track)

Both presets are fully filled, cross-consistent narratives threading a single feature through all 6 modules. Worth having as reference for what a "complete" final project looks like in each track.

**StreamLine (B2C) — "Spotlight" discovery rail:**
- Problem: Casual Explorers bounce from a generic home screen ("nothing to play" = #1 cause of short sessions).
- Hypothesis: +2pt lift in 30-min discovery-started sessions within 14 days, protecting 7-day retention.
- Roadmap: MoSCoW — Must=pinned rail+reason line, Should=taste-tuning controls, Could=social-proof badges, Won't=full redesign.
- Experiment: 50/50, 14 days, baseline 11%, MDE +2pt, guardrail retention ≤2pt drop.
- GTM: goal=engagement, tier=M, channels=in-app announcement + lifecycle email + push (all owned).
- Reflection: "the aha moment was realising the reason copy, not the algorithm, was the product."

**RouteLogic (B2B) — "Velocity" real-time dispatch view:**
- Problem: coordinators abandon RouteLogic mid-shift for spreadsheets/phone calls because live dispatch is buried under HQ-built admin panels; a top enterprise account is trialing a leaner competitor.
- Hypothesis: +15pt lift in coordinator DAU during shifts within 30 days, without hurting HQ admin-feature usage.
- Roadmap: Must=live dispatch board+one-tap reroute, Should=exception alerts+driver ETA, Could=shift-handoff summary, Won't=admin-suite rebuild.
- Experiment: matched depots, 50/50, 30 days, baseline 41% DAU, MDE +15pt, guardrail admin usage ≤3pt drop.
- GTM: goal=adoption, tier=L (revenue protection), channels=CSM-led rollout + in-app announcement + depot-manager enablement kit.
- Reflection: "the fix was subtraction, not features... for B2B tools, the workflow at the moment of decision beats feature breadth."

## Torq-rebuild notes
- **This is the single most valuable artifact in the entire captured course for the Torq rebuild.** The Master Prompt is a complete, portable specification of Product School's slide-deck design system (colors, fonts, layout mechanics, interaction pattern) expressed as an executable LLM prompt — Torq could adapt this almost directly by swapping the color tokens/fonts to Torq's brand and reusing the entire scroll-snap/keyboard-nav/progress-bar mechanic.
- The **repo-pull-by-convention** pattern (fixed expected file paths + keyword-based auto-routing) is a clean, low-effort way to stitch a multi-module course together into one capstone without building real backend infrastructure — worth replicating if Torq's rebuild has a similar multi-module → capstone structure.
- The **"CPO Critic" stranger-test prompt** is a distinct, higher-order technique from the per-module pressure-test prompts: it evaluates the *rendered final output* from a fresh, adversarial persona rather than the inputs. Good closing technique for any Torq capstone module (e.g. a "would a Torq exec sign off on this runbook/plan" reviewer prompt).
- The two full worked presets are strong "gold standard" reference submissions — useful for Torq to see what a maximally coherent, cross-module-consistent narrative looks like end to end.
