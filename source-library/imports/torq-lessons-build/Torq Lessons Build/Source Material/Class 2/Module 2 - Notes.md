# Module 2 · Notes: Discover Product Opportunities via Qualitative Signals

> Shareable notes covering everything from the Module 2 session. Pair with the slides, the Exercise 1 Guide, the Exercise 2 Guide, and the Persona & Journey Builder.

---

## The big idea

AI can summarise thousands of interviews, tickets, and reviews in seconds, but **synthesis is not strategy.** Your value as a PM is the *discernment* to ground those insights in strategy so you solve a problem that actually moves the needle, not just the loudest complaint in the dataset.

Think of it as a partnership: **AI is the co-pilot that scales discovery; you are the pilot who decides what it means and what to build.**

---

## 1 · Strategic discovery & problem validation

### The evolution of discovery

| | 🕰️ Old way · traditional | ⚡ New way · AI-powered |
|---|---|---|
| Speed | Slow, high-effort, batch-based | Fast, iterative, minutes to insight |
| Cadence | Long cycles between insight and action | Continuous discovery |
| PM's time | "What did the users *say*?" | "What does it *mean* for our product?" |
| Synthesis | Read every ticket and transcript by hand | AI aggregates; you decide what matters |

> **AI (co-pilot)** scales the heavy lifting and ensures you never start from a blank page. **You (pilot)** curate the data sources and apply judgment: *is this insight strategically aligned, or just a loud distraction?*

### Core values as a discovery filter

Discovery doesn't start with a user interview, it starts with knowing what your company stands for. Without that filter you'll find thousands of problems and have no idea which to ignore.

1. **Strategic alignment**: insights must move the company toward its long-term destination, not just a short-term fix.
2. **The problem filter**: the non-negotiables that separate a loud complaint from a problem worth company resources. Your professional permission to ignore the noise.
3. **Success criteria**: the benchmark for a "win": market share, profitability, or customer delight.

### Discovery methods: choose the right evidence

Three buckets, balancing what users **say** (attitudinal) with what they **do** (behavioral):

| Bucket | Goal | Methods |
|---|---|---|
| **Foundational** | Explore needs before building | User interviews, focus groups *(say)* · contextual inquiry, diary studies *(do)* |
| **Evaluative** | Test designs & prototypes | Usability & unmoderated testing, session recordings, A/B testing *(do)* |
| **Strategic** | Measure, prioritize, validate | Surveys *(say)* · continuous discovery, product analytics, card sorting *(do)* |

> **The gold is often behavioral.** Early Slack PMs *shadowed* users and saw them tracking tasks in spreadsheets to escape the chat UI, a workaround no feature request ever mentioned. Later they proved the scale of it with analytics (thousands exporting to CSV daily), turning a hunch into the Slack App Directory.

### User personas: behavioral anchors, not bios

Define a persona by age or location and you fall into the "average user" trap. Map the ecosystem by *shared goals* and the *workarounds* users build to bypass friction. LinkedIn Learning found two behaviors needing different product decisions:

- **The Completionist**: driven by structured paths, progress, and recognition → course-completion badges and progress tracking.
- **The Explorer**: driven by flexibility and quick answers → customizable playlists and modular lessons.

> Prioritize via **intentional trade-offs**: decide which behavior to reward first based on pain severity and business impact, without becoming an everything-for-everyone mess.

### Three categories of discovery insight

Collecting data is half the battle, your value is synthesis. Group raw feedback into three buckets:

1. **Behaviors (actions)**: what users actually do. *Duolingo:* users churned when progress plateaued → gamified **Streaks**.
2. **Needs (goals)**: the job they're trying to get done. *Dropbox:* teams hacking shared folders → **Dropbox for Business**.
3. **Pain points (friction)**: the moments of misery. *Canva:* manually recreating sizes → pre-set formats & **Magic Resize**.

### Good vs. bad discovery questions

**Past/present reality is gold; future-tense hypotheticals are noise.**

- ✅ "Talk me through the last time that problem happened." · "What else have you tried to fix this?" · "How are you dealing with this right now?"
- ❌ "Do you think it's a good idea?" · "Would you buy a product that did X?" · "How much would you pay?" · "What would your dream product look like?"

---

## 2 · Hands-on lab · Leverage AI synthesis for discovery

Use Claude to turn messy UXR notes and bug reports into a **Product Health & Insights Summary**:

1. **Establish your truth baseline**: read the raw data for ~5 minutes and write down three moments of misery *before* touching the AI.
2. **Deploy the Lead PM prompt**: synthesize the data into severity-tagged themes, with **no roadmap** and no recommendations.
3. **Audit, compare & refine**: did the AI catch your moments of misery, or smooth them into generic bullets? Drill down where it's too broad.
4. **Catch the logic leaks**: flag where it invented features or a roadmap despite the constraints.

> **Trust, but verify.** Why leave out the roadmap? *Evidence ≠ execution.* If the AI builds the roadmap, that's pattern-matching, not strategy. Omitting it keeps **ownership** with the PM, you decide which fire to fight first based on goals, budget, and capacity. The AI maps the crime scene; you decide what to do about it.

---

## 3 · Journey mapping: from pain point to solution

A journey map visualises a user's experience over time, what they do, think, and feel at every touchpoint. Its value: it reveals the **experience gaps** where users get stuck or drop off.

**The 6-step playbook:** Set the goal → Choose a persona → Define the scope → Outline the steps → Add touchpoints → Spot key moments.

**Worked example, Spotify music sharing:** Spotify mapped the journey across seven phases (Visit → Listen → Discover → Share → Discuss → Receive → Respond). The emotional curve dipped hard at *Receive*, "Why must I open it in Spotify? That's annoying." That dip was the **experience gap**; fixing the Share → Receive flow turned frustrated moments into happy ones.

> Map the **emotion**, not just the steps, the low point is your next product opportunity.

---

## 4 · Market & competitive analysis

### Your #1 competitor is the status quo

The biggest threat isn't a rival, it's **"no decision."** Users stick with familiar friction because change feels riskier than staying the same. To move them, discovery must prove:

1. **The breaking point**: make inaction the liability. Solve a problem so critical the cumulative cost of doing nothing outweighs the pain of switching.
2. **The strategic gap**: render the workaround obsolete. The user's Excel-and-macros routine *is* your real competitor.

### Competitive intelligence, supercharged by AI

The fundamentals haven't changed, your *time to insight* has. The shift moves the PM from "researcher" to "orchestrator."

| Best practice | 🕒 Old · manual | ⚡ New · AI-powered |
|---|---|---|
| Identify competitors | Google searches, asking Sales | Prompt with ICP & use case → tiered list in minutes |
| Create CI assets | Write comparison docs from scratch | Feed site + G2 reviews → structured doc to edit |
| Get intel from sources | Read docs & press releases | AI agents alert you to pricing/feature/review changes |

> Your job shifts from *writing* to *editing and deciding.*

---

## 5 · Hands-on lab · Journey-map your competitive edge

Return to the same Claude conversation and use your Executive Summary to:

1. **Define your persona**: role, goal, and primary friction, filtered through your Module 1 Problem Hook.
2. **Document the workaround**: the external tools, manual steps, core frustration, and evidence.
3. **Map the future state**: a 4-stage journey in *Action → Benefit* format that eliminates the manual hacks.
4. **Name your edge**: the 3 competitive advantages your journey delivers over the status quo.

> You're beating a *habit*, not an app. Make the workaround obsolete and the switch becomes obvious.

---

## Key takeaways

1. **AI scales synthesis; the PM stays the pilot**: AI themes the data, you decide what to build.
2. **Core values are your discovery filter**: they separate a loud complaint from a problem worth resources.
3. **Personas and journey maps are behavioral anchors**: they reveal the friction points worth fixing.
4. **Your #1 competitor is the status quo**: make the cost of doing nothing outweigh the effort of switching.

📍 **Project deliverable check:** add your Competitive Analysis artifacts, workaround summary and future-state journey map, to your project repo.

➡️ **Next module:** Use Analytics and Metrics for Data-Driven Decisions.
