# Module 4 · Glossary: Build High-Velocity Product Roadmaps

**Product roadmap**: A visual strategy that communicates where the product is going and in what order. Functions as a planning, communication, and negotiation tool at once: it forces alignment, protects focus, manages change, and drives impact.

**Now / Next / Later**: The three lanes of a high-velocity roadmap. *Now* = building this sprint (the MVP core); *Next* = the following 1 to 2 sprints (big bets); *Later* = backlog / spare capacity.

**Effort vs. Value matrix**: A 2×2 prioritization framework. **Value** = the anticipated lift on your success metric; **Effort** = the total technical cost. It produces four quadrants:

- **Quick Win** (high value, low effort) → *Now*. Your MVP core.
- **Major Project** (high value, high effort) → *Next*. A big bet to schedule properly.
- **Fill-In** (low value, low effort) → *Later*. Cheap, non-strategic; do in spare capacity.
- **Time Sinker** (low value, high effort) → *defer / kill*. Cut before it touches the roadmap.

**70 / 20 / 10**: A balanced split of roadmap capacity: ~70% core product, ~20% adjacent growth, ~10% exploratory innovation.

**ROI (Return on Investment)**: The value delivered relative to the engineering cost; the lens for protecting your most limited resource (engineering capacity).

**MVP (Minimum Viable Product)**: The most pared-down version of a solution that still delivers the core value proposition. Defined by two steps: *define the core value* (the single high-value outcome) and *map the essential flow* (the shortest "happy path" to it).

**Happy path**: The shortest, simplest sequence of steps a user takes to reach the core value, stripped of edge cases and polish.

**MoSCoW**: A scoping framework that sorts requirements into:

- **Must-Have**: a ship-blocker; required for the feature to function at all.
- **Should-Have**: high priority; valuable if capacity allows, otherwise V1.1.
- **Could-Have**: polish or enhancement; a next-sprint / V2 nice-to-have.
- **Won't-Have (now)**: an explicit exclusion that prevents scope creep.

**Scope creep**: The uncontrolled expansion of a build's requirements; MoSCoW and explicit Won't-Haves are the guardrails against it.

**PRD (Product Requirements Document)**: The central communication tool that aligns a team on the purpose, functionality, and success of a feature; a living blueprint guiding design and development.

**Traditional PRD**: The heavy "alignment doc" used to coordinate large cross-functional teams over months. Thorough but slow.

**Simplified PRD**: A lean "build doc" optimized for the rapid validation loop. Trades long scenarios and logistics for a **Vision**, a **Press Release**, **Smart Behaviors**, **Edge Cases**, and a light **Eval**: and doubles as a functional prompt for an AI prototyping tool.

**Press Release**: A short, punchy announcement format inside a Simplified PRD that defines user value in one or two paragraphs; also a great high-level prompt for an AI tool.

**Smart Behaviors**: The If/Then logic rules (Situation → Outcome) that tell an AI prototyping tool how the system should respond, preventing hallucinated behavior.

**Edge cases / Unhappy paths**: Non-ideal inputs and states (empty input, errors) the prototype must handle, including a **safety / hallucination guard** defining what the system must never do or invent.

**Eval (Light Eval)**: A short set of measurable targets (e.g., % accuracy, time-on-task, safety triggers) that define whether the AI's output is actually accurate and helpful.

**Rapid validation loop**: The high-velocity design cycle: prompt the tool → test the functional output → identify logic gaps → update the PRD → repeat, until the logic is bulletproof.

**Vibe coding**: Using AI prototyping tools (e.g., Lovable, Bolt, AI Studio) to generate functional, clickable prototypes from natural-language requirements.

**Builder hook**: A short executive instruction pasted above a PRD in a vibe-coding tool ("Build a working prototype based on this PRD…") that frames how the tool should interpret the document.

**Alignment handshake**: Shopping the PRD *and* prototype together to three stakeholders: the **Manager** (strategic green light), the **Eng Lead** (technical feasibility), and the **Design Lead** (UX polish). The PRD provides the rules; the prototype provides the feeling.
