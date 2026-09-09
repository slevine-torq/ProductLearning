# Module 4 · Sample PRD (digest): PulseAI, The Adaptive Fitness Companion

**Format:** Static reference page — a fully worked example of the "Simplified PRD" template from the Lab 2 Guide. Not interactive (no localStorage/forms). Referenced from the deck ("From PRD to Prototype" section) and from Lab 2 Guide.

## Why it matters
This is the **worked example that proves the Universal PRD prompt template actually works** — every section from that prompt's required structure is filled in concretely. Best captured near-verbatim since its value *is* its specificity (the whole teaching point is "don't use generic filler text").

## Full content

**Header:** Author: Natalie PM · Status: Draft (ready for rapid validation loop) · Target: Executive buy-in & high-fidelity prototype

### 1 · The Big Picture
- **Vision:** "Eliminate 'failure guilt' by transforming static fitness plans into a living, empathetic dialogue that adapts to a user's real-time energy and schedule."
- **Press release:** *"FlowFast unveils PulseAI: the first fitness app that actually listens when you say 'I'm tired.'"* — Traditional apps punish users for missing a session due to stress/fatigue. PulseAI pivots instead: after a rough day, it suggests a 10-min "De-stress Stretch" rather than nagging for a 5-mile run. Philosophy: "not about doing the most, about doing something that fits your life right now."
- **Success metrics:** Primary = **Consistency Rate** (% of users completing *any* activity on a scheduled day, even modified). Guardrail = AI response latency < 1.5s.

### 2 · The Details
**User stories** (Given/When/Then format):
- *Exhausted:* Given a scheduled HIIT session, when user says "I had a rough night and I'm exhausted," then PulseAI acknowledges fatigue and offers two Recovery-Mode alternatives.
- *Time-constrained:* Given a 45-min session, when user says "I only have 15 minutes," then PulseAI compresses it into a 12-min high-efficiency circuit.

**Screens to build (exactly 3):**
1. **Home** — today's workout card, primary "Start Workout" button, "Not feeling it? Tell PulseAI" link, 7-day streak badge. Both links open Chat.
2. **Chat** — the core screen. User right, AI left. Pre-populated first exchange; 4 quick-reply chips ("I'm exhausted", "Only 15 min", "I'm feeling great!", "I have an injury") shown until first message sent.
3. **Safety Guard** — triggered only on injury/pain; replaces chat entirely. Shield icon, "Your safety comes first.", single "Got it, take me home" button.

**Approved workout library (closed set, AI may not invent others):** Mobility Flow (15min, low) · De-stress Stretch (10min, low) · Essential Lifts Circuit (12min, medium) · Low-Power Yoga (15min, low) · Welcome Back Walk (20min, low) · Level Up HIIT Challenge (50min, high).

**Smart Behaviors — Situation → Signals → Outcome table:**

| Situation | Signals (intent, not keywords) | Outcome |
|---|---|---|
| 1. Exhausted | tired, rough, long day, drained, gentle | "Rest IS training." → Mobility Flow + De-stress Stretch |
| 2. Time-bound | a number of minutes, quick, meeting, busy | "I'll strip it to the essentials." → Essential Lifts Circuit |
| 3. Great | pumped, ready, bring it, energised | "Love that energy!" → Level Up HIIT Challenge |
| 4. Returning | skipped, missed, back, been a while | "Welcome back, no guilt." → Welcome Back Walk + Low-Power Yoga |
| 5. Injury | injury, sharp pain, hurt, pain | Halt all suggestions → Safety Guard (check this signal first, overrides all others) |
| Default | no clear match | "Here's something gentle to reset." → Mobility Flow + Low-Power Yoga |

**Technical constraints:** No AI API calls — all responses hardcoded to the logic table above. No `<form>` tags (onClick/onChange only). No localStorage — React `useState` only.

**Design callout:** *"PulseAI is a coach, not a form. If there's enough info to suggest a workout, suggest it immediately, don't ask 'rate your energy 1 to 5.' A default suggestion is always better than a question."* — this is the core UX philosophy encoded directly into the PRD.

### 3 · The Logistics
- **Features out:** no login/settings/history/profile screens; no bottom nav/tab bar; no wearable integration or social (pushed to "Icebox V2").
- **Edge cases:** nonsensical/empty input → single reprompt ("Tell me how you're feeling..."); injury/pain → hard safety halt + professional-consult disclaimer; hallucination guard (AI must never invent exercises outside the approved library).
- **Decision log:** no "Strict Mode"/hard deadlines — 100% focused on adaptability as the differentiator; chat-first over menu-first to simulate a real coach.
- **Evals:** Tone accuracy (correct situation matched ≥90% on a 100-message test set) · Feel rating (1–5 star, target mean ≥4.0 in first 30 days, segmented by situation) · Safety precision (every injury/pain message triggers Safety Guard, zero misses).

## Torq-rebuild notes
- This is the single best model for a Torq "worked example" artifact — it's short, fully concrete, and every field ties back to a measurable eval. The pattern (signals → outcome table, closed content library, explicit "what NOT to build" constraints) generalizes well beyond fitness to e.g. a security-automation assistant flow.
- The **Smart Behaviors table format** (Situation / Signals / Outcome, injury-style hard overrides listed first) is a strong reusable template for any Torq PRD involving conversational/AI logic — directly portable to a SOAR/security-automation "assistant responds to X situation" spec.
- The **"coach not a form"** callout is a good one-liner design principle to preserve verbatim if Torq builds any AI-assisted tools.
