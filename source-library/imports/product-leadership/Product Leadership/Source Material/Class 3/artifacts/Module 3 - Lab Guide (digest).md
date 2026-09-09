# Module 3 — Lab Guide — Digest

**Source:** standalone self-contained HTML artifact (`Module 3 · Lab Guide · Product Leadership`), interactive worksheet — same engine as the M1/M2 Lab Guides. QA marker: `localStorage` (key `plc-m3-labguide`). Same unused `.bfg` briefing-toggle dead code present again (4th confirmation across Lab Guides — established shared-template boilerplate, no further comment needed per file).

## What it is
The combined lab guide for both Module 3 exercises. Contains the **AI role-play prompt** for rehearsing a hard team conversation, and the **team-charter generation prompt** — both referenced but not shown in the Slides. Also introduces two new pieces of scenario-specific content not seen in earlier modules: a **cross-team tension** brief for each scenario (Fable/Meridian), and a **third fictional worked example** (a podcast app) for the charter fields.

## Structure
1. **Header** — title, "~35 min" meta chip, tip callout (covers both exercises; need M1 strategy + M2 roadmap for the charter).
2. **Exercise 1 divider** — "Diagnose a Team Situation and Make a Call," individual, ~15 min, before the break.
3. **Step 1 (4 min) — Name the situation** — 1 fillable field: describe a real situation (role not name, observation, duration), facts only. Note: ICs without reports can use a situation experienced from below.
4. **Step 2 (3 min) — Make a diagnosis** — restates the 4 types with slightly reworded definitions (Feedback: clear expectations but repeated behavior, never named directly; Clarity: expectations/ownership/decision rights never made explicit; System: structural/resourcing block; Hiring mismatch: growing evidence of role misfit). 1 fillable field: diagnosis + reasoning, prompted with "Is your frustration with their behavior, or with a decision you made?"
5. **Step 3 (3 min) — Write your opening line** — 2 fillable fields: next action (2 weeks), first sentence of the conversation (SBI-structured: Situation → Behavior → Impact).
6. **Step 4 (5 min) — AI role-play** — the role-play prompt (verbatim below), instructions to run 3 exchanges then type "step out" for a debrief, a tip for handling an AI that caves too easily, and 1 fillable reflection field (what did the role-play change about how you'll open the real conversation).
7. **Exercise 2/Lab divider** — "Draft Your Team Charter," individual, ~20 min, lab section.
8. **Cross-team tension briefs** (new content, not in Slides/Notes) — see full text below.
9. **Lab Step 2 (12 min) — Generate your first draft** — the team-charter prompt (verbatim below), tip that it's a starting point.
10. **Lab Step 3 (8 min) — Refine and complete your charter** — 6 fillable fields (What We Own / out of scope / cross-boundary joint-call triggers / How We Decide who decides / escalation path / who resolves external escalations), each placeholder-seeded with a **third worked example** using a fictional podcast app (see below) — distinct from both Fable/Meridian and from M1's HealthTrack/Thursday-dinner examples.
11. **Peer Review phase** — "Show and swap your team charter": 1-minute silent read protocol, 1 fillable field for the partner's answer to "where does the charter leave room for interpretation that could cause a conflict?"
12. **Warn-callout** — commit charter components to `03-team-charter/` in the repo.
13. **Lab toolbar** — Copy as Markdown / Download .md / Reset (same pattern as M1/M2 Lab Guides).
14. **Footer** — back-link to the Module 3 deck.

## Embedded exercise data (new content, not present in the Slides or Notes)

**Cross-team tension briefs:**
- **Fable · team of 14:** "You own the core Fable product. PM 1 owns onboarding, PM 2 owns retention, PM 3 owns the AI check-in layer, which intersects both PM 1's onboarding surface and PM 2's retention surface. The Growth team also has a stake. Who owns what, and who decides when they overlap?"
- **Meridian · team of 10:** "You own the Foundations initiative. PM 1 owns field adoption and the mobile experience; PM 2 owns enterprise. Enterprise sales is pushing features onto PM 2's roadmap tied to a renewal, pulling engineering away from PM 1's field adoption work. Who protects the field bet?"

These are the first team-size and team-composition details given for either scenario anywhere in the captured materials so far (Fable = 14-person team with 3 PMs + Growth stakeholder; Meridian = 10-person team with 2 PMs).

**Third worked example — fictional podcast app** (charter field placeholders):
- What We Own: "Podcast discovery, playback, and creator tools through first-listen completion"
- Out of scope: "Recommendation algorithm (Core team), push strategy (CRM team)"
- Cross-boundary joint-call trigger: "Any home-screen feature or one that uses the recommendation engine"
- Who decides scope: "The PM decides scope within their surface alone; shared surfaces need a joint call"
- Escalation path: "Escalate to both PMs' leaders within 24h via a synchronous call, not Slack"
- External escalation owner: "The product leader owns external escalations; response within 48h"

## Reusable AI prompts (exact text)

**AI role-play prompt:**
```
I want to practice a workplace conversation before I have it for real. Below is a situation I wrote and my read on what is going on. Treat it as roleplay.

SITUATION: [Paste your paragraph from Step 1]
MY DIAGNOSIS: [Paste your diagnosis from Step 2]

Play the other person in this situation, not me. Based on what I described, infer how they most likely feel and what they are worried about, and stay in character.
How to play them:
- Respond the way the person I described would, given what they are worried about, not the way you think I want them to respond.
- Do not agree just to be agreeable or resolve the tension in one move. If my opening would make them guarded or defensive, show that.
- Keep replies to two or three sentences, like real speech.
- Stay realistic but never abusive. If the situation involves a safety issue, harassment, or a formal HR matter, say so and stop.
- Do not coach me or break character until I say "step out."

I will open. After three exchanges I will say "step out." Then drop the role and help me have a better version of this conversation: name where it got tense and what to try instead. Wait for my opening line before responding.
```
Escalation tip if the AI is too agreeable: add "Respond the way a guarded, surprised person actually would, and stay in character."

**Team charter prompt:**
```
You are helping a product leader draft two components of a team charter. Based on the context below, generate a first draft of "What We Own" and "How We Decide".

My scenario: [FABLE or MERIDIAN, delete the one that is not yours]
My strategy: [PASTE YOUR PLAYING TO WIN CASCADE HERE]
My roadmap: [PASTE YOUR NOW/NEXT/LATER ROADMAP HERE]
The cross-team tension I need to resolve: [PASTE THE TENSION FOR YOUR SCENARIO HERE]

For "What We Own" include: what this team owns, what is explicitly out of scope, and what requires a joint call before action for cross-boundary decisions.
For "How We Decide" include: who decides what, and the specific escalation path for cross-team conflicts, including who, how, and within what timeframe.
```

Both prompts fill the gap flagged from the Slides digest, which only referenced "Open the exercise guide & AI role-play prompt" and "Open the Team Charter lab walkthrough."

## Key interaction logic
Identical to the M1/M2 Lab Guides — `✍️`-prefixed cell auto-fieldification, `localStorage` autosave (key `plc-m3-labguide`), Markdown export grouped by `.phase` section heading, Copy/Download/Reset toolbar. The role-play prompt is notable as a genuinely different *kind* of AI prompt from the pressure-test/generation prompts seen in M1/M2 — it sets up a persistent multi-turn roleplay with explicit persona-consistency instructions ("do not agree just to be agreeable," "stay in character until I say 'step out'") and a built-in safety carve-out (stops the roleplay if it touches a safety/harassment/HR matter).

## Torq-rebuild notes
- **The AI role-play prompt is the most novel prompt pattern captured so far across all three modules** — a stateful, persona-driven simulation rather than a one-shot analysis/generation request, with real thought put into keeping the AI in character and not just being agreeable. Strong candidate for a reusable Torq "practice a hard conversation" tool, independent of this specific team-leadership context.
- The cross-team tension briefs are the first place team size/composition is specified for either scenario — worth cross-referencing if Torq wants a fully consistent Fable/Meridian org chart across all six modules' materials.
- Third distinct fictional worked example (podcast app) reinforces the pattern already flagged in M1: this course generates a fresh illustrative example per artifact rather than reusing one canonical company throughout. If Torq wants tighter narrative consistency in a rebuild, this is a deliberate choice to make, not an oversight to fix.
- 4th confirmed instance of the `.bfg` dead-code pattern.
