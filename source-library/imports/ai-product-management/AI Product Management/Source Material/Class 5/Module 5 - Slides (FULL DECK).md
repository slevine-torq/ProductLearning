# M5_ Deploy Agentic Systems and Workflows

Extracted from `AI-PM-Cert/M5-Agentic-Systems/M5_ Deploy Agentic Systems and Workflows.pptx` — 32 slides.

## Slide 1

### Module 5

- Deploy Agentic Systems and Workflows

**Speaker notes:**

> Module 5: Deploy Agentic Systems and Workflows

## Slide 2

### Class Expectations

- Cameras On
- Be present and visible with your camera on to stay engaged in class.
- 📹
- Arrive On Time
- Respect everyone’s time by arriving promptly to sessions.
- Active Engagement
- During exercises and labs, participate actively in all discussions and activities.
- Network
- During class, connect with peers and build your learning network.
- Use Slack
- Use Slack for all communication to keep questions and comments organized.
- Instructor Support
- Save deeper questions for after class with your instructor so as to not stop class flow.
- ⏰
- ✋
- 🌐
- 🎓

**Speaker notes:**

> Notes
> 📌Note for instructors: Please do not share the link to the slide deck with students. If they want to view the deck, send them to the LMS where they can view it from there.
> Where to access content?You can view the deck from Docebo.
> ℹ️ All students should have access to the LMS (Docebo) with all the class materials by now. If not, please reach out to Student Success directly in Slack.

## Slide 3

### Improve AI Product Requirements with RAG Architecture

- Bridge the gap between product specs and RAG systems. Understand how embeddings, vector stores, and retrieval impact product performance to define the technical requirements of a modern AI PRD.
- MODULE 1
- AI Product Management Syllabus
- MODULE 2
- MODULE 3
- Deploy Agentic Systems and Workflows
- Transition from single prompts to autonomous agents and multi-step workflows. Configure reasoning paths and tool triggers to execute complex tasks and drive operational efficiency.
- MODULE 4
- Design AI-Native User Experiences
- Design seamless user flows and AI features to unlock new ways for users to interact with your product. Use prototyping to validate experiences and transition from static interfaces to dynamic, intelligent systems.
- MODULE 6
- Measure AI Quality with Evals and Guardrails
- Replace "vibe checks" with systematic evaluation harnesses to ensure production-grade performance. Build robust eval sets and safety guardrails to mitigate risk and embed trust into the user experience.
- MODULE 5
- Drive AI-First Execution with Prompting
- Adopt the new AI PM execution language to accelerate delivery and command outputs. Master the systematic use of context, parameters, and prompt engineering to guide AI behavior with precision.
- Validate AI Opportunities and Technical Feasibility
- Become an AI strategist capable of selecting and shaping AI bets that ship and move business metrics. Learn to evaluate feasibility and viability to prioritize features that deliver tangible value.

**Speaker notes:**

> AI Product Management Certification Syllabus
> Bridge product management and AI to build AI-powered products that create real customer value.

## Slide 4

### Presentation Reminder

- We’re almost at the end! Now is your opportunity to volunteer and present your group’s final presentation next class.
- We highly recommend this approach so you get live, actionable feedback. Your instructor will ask for 2-3 groups in Slack. First come, first serve.

**Speaker notes:**

> Notes
> 📌 Note for instructors: Please remind students that the optional project showcase is next class. You will ask for volunteers in the Slack channel today for 2-3 groups to demo their agent and present their deliverables deck. Stress that this is a great opportunity to get live feedback, so really push for students to get excited and volunteer!

## Slide 5

### 01	The Shift to Agentic Orchestration

- Agenda
- 02	Agentic Design Patterns
- 03	Managing the Agentic Handoff
- [OPTIONAL] POST CLASS: Hands-On Lab: Build Juno’s Agentic Workflow in Langflow

**Speaker notes:**

> Agenda
> The Shift to Agentic Orchestration
> Agentic Design Patterns
> Managing the Agentic Handoff
> [OPTIONAL] Hands-On Lab: Build Juno’s Agentic Workflow in Langflow

## Slide 6

### The Shift to Agentic Orchestration


**Speaker notes:**

> 01. The Shift to Agentic Orchestration

## Slide 7

### Provide answers based on knowledge base.

- This changes the dynamic between your user and your product; you need to design for goals and guardrails.
- From Answers to Judgement
- The Evolution of Value
- Value Prop
- Chatbot
- Operating Model
- Provide execution of predefined steps across systems.
- Value Prop
- Workflows
- Human-Supervised: System follows a rigid track; human monitors the process.
- Operating Model
- Provide judgment for path choice based on real-time context.
- Value Prop
- Agents
- Human-Governed: User sets the goal; agent autonomously navigates the how.
- Operating Model
- Human-Led: User prompts for every response and manually pulls value.

**Speaker notes:**

> Notes
> As the AI wave continues, we’ve seen an evolution:
> Chatbots provided answers, but the user still had to do the work.
> Workflows provided execution, but they were brittle—they broke if the environment changed.
> Agents provide judgment. You are effectively moving from selling a "tool" to selling a "result.”
> This changes the dynamic between your user and your product. You are moving from a human-led model, where the user pulls every response, to a human-governed model. Instead of designing a chat interface, you are now designing the goals and the guardrails that allow the agent to navigate the "how" autonomously. So, to understand how to govern that judgment, let’s first define what an agent actually is and how it differs from the traditional LLMs we've used so far.

## Slide 8

### What is an Agent?

- An agent is an intelligent system that interprets intent, makes decisions, and takes actions autonomously to achieve a goal. Unlike standard LLMs that only respond to prompts, agents move from conversation to delegation.
- 1
- Proactive
- 2
- 3
- Task-Oriented
- Integrated
- Acts on environmental triggers without direct user prompts or input.
- Executes multi-step workflows to deliver finished outcomes.
- Connects with tool stacks to perform actions in the real world.

**Speaker notes:**

> Notes
> In Modules 1 through 4, we’ve focused on AI as a conversational partner. But agents represent a fundamental shift: they move from conversation to delegation. A standard LLM is a reactive brain; an agent is a system you give a job description to, rather than just a list of instructions
> So what is an agent?  An agent is an intelligent system that can understand input, make decisions, and take actions autonomously or semi-autonomously to achieve a specific goal. While a standard LLM waits for you to say, "Summarize this," an agent asks, "What is the goal?" and then goes to work. This means they are:
> Proactive: Traditional LLMs are reactive, meaning they sit idle until you prompt them. Agents act on environmental triggers, like a meeting ending, a file being uploaded, or a specific data threshold being hit, without needing a human to start every single sub-task
> Task-Oriented: Unlike a chatbot that focuses on generating a high-quality response, an agent focuses on delivering a finished outcome. It executes multi-step workflows like searching, comparing, and drafting, to deliver a research report or an updated project tracker, rather than just a block of text.
> Integrated: An agent isn't an island. While a standard LLM is trapped in a chat box, an agent is connected to your tool stack via APIs. It has the hands to perform actions in other software, such as sending a Slack message, updating a Jira ticket, or querying a CRM to close the loop on a task.
> Because agents are proactive and integrated, they are programmed differently than the prompts you've been writing. So, what are the three technical traits required to actually build this level of agency?

## Slide 9

### Planning

- Memory
- The Brain (LLM)
- Arms (Tools)
- Reasoning Engine
- Strategy Layer
- Action Layer
- Context Layer
- User Goal
- Search
- Compare
- Book
- Past results
- Logs
- User preferences
- The Anatomy of an Agent
- Key Traits of Agency
- 1
- 2
- 3
- Reasoning Engine
- Strategy Layer
- Action Layer
- The brain moving products from predicting text to predicting autonomous actions.
- Logic that deconstructs high-level goals into verifiable, multi-step execution plans.
- The bridge connecting AI logic to existing product capabilities and persistent APIs.
- 4
- Context Layer
- The infrastructure providing workplace memory to maintain task state over time.

**Speaker notes:**

> Notes
> To move from a chatbot to an agent, engineering teams have to build four specific pillars into the system architecture to support those three traits of agency we just defined:
> Reasoning Engine: Everything starts with the brain. Its job has evolved from predicting the next word to predicting the next action. It analyzes the high-level goal and determines the autonomous logic required to get the job done.
> Strategy Layer: Because agents handle complex tasks, they need a way to deconstruct them. This is where the agent takes a broad goal and turns it into a verifiable, multi-step plan. It creates the roadmap for its own execution, moving from a single intent to a sequence of sub-tasks.
> Action Layer: This is the bridge that connects the AI’s logic to your product’s functional capabilities. By connecting to persistent APIs and internal databases, the agent moves from 'talking' to 'doing.' These are the 'arms and legs' that allow it to trigger real-world work.
> Context Layer: Finally, agents require 'Workplace Memory.' Standard LLMs are stateless—they forget. This layer provides the infrastructure to maintain the task state over time, allowing the agent to remember it finished step one so it can successfully move to step two without the user reminding them.
> When you combine this internal anatomy with the proactive behaviors we’ve covered, you get a system capable of massive scale. But as a PM, your most important job is deciding how much of this power you actually hand over to the system.

## Slide 10

### The Agent Spectrum

- Reactive (No Autonomy)
- PM owns the prompt quality and response accuracy.
- More autonomy means assuming a higher level of operational accountability.
- 0
- 3
- 1
- 2
- Function-Calling(Assisted Autonomy)
- Semi-Autonomous (Human-in-the-Loop)
- Fully Autonomous(Goal-Driven)
- PM ACCOUNTABILITY
- PM owns tool selection logic and fallback behaviors.
- PM owns checkpoint design and escalation paths.
- PM owns trust, system rollback, and auditability.

**Speaker notes:**

> Notes
> In previous modules, you looked at autonomy as a list of capabilities. Now, let’s look at it through the lens of product risk. As you move from zero to three, you are assuming a higher level of operational accountability.
> Your job is to decide how much autonomy is safe & valuable for your product and take on the accountability that comes with it.
> Level 0: Reactive: This is the baseline. Your accountability is simple: Did the model answer the prompt correctly? It’s a closed loop.
> Level 1: Function-Calling: This is your first level of evolution. In Module 4, you mapped the 'Handshake.' in your AI-UX flow. Here, we move into Assisted Autonomy. The agent is given a toolkit. Your job isn't just managing the API; it’s owning the selection logic. You must define the rules for when the agent is allowed to call a tool and what happens if that tool fails to return a result.
> Level 2: Semi-Autonomous: This introduces the reasoning Loop. The agent can perform multiple steps, but you are architecting the checkpoints. You own the 'Human-in-the-loop' design—defining exactly where the agent must stop and wait for a PM’s approval before moving to the next action.
> Level 3: Fully Autonomous: This is the peak. Here, the agent is goal-driven. You aren't managing steps; you are managing the outcome. Your accountability shifts to the highest level: governance. You own the system rollback, the auditability of the agent’s decisions, and the overall trust in the system's 'judgment.'

## Slide 11

### Drug Discovery Agents: Johnson and Johnson’s lab agents optimize chemical synthesis by determining optimal reaction conditions and accelerating processes traditionally done manually, leveraging digital twins and machine learning for precision.

- Support & Resolution Agents: Uber’s agents autonomously diagnose ride issues and fraud by gathering evidence, triggering refunds, and executing internal workflows, escalating to humans only when low confidence or policy requires it.
- Financial Operations Agents:  Stripe’s agents investigate failed payments and regulatory compliance by retrieving policy context and analyzing transaction data to recommend or execute financial next steps across fragmented systems.
- Merchant Operations Agents: Shopify’s agents manage store setups and inventory by reasoning over merchant context and calling internal APIs to resolve disputes or configure marketing campaigns directly within administrative systems.
- Developer Workflow Agents: Cursor embeds agents into the IDE that plan refactors and apply code edits across multiple files simultaneously, allowing the agent to determine execution steps while the developer validates the outcome.
- Real-World Examples
- How Companies are Using Agents

**Speaker notes:**

> Notes
> Let’s look at how the world’s leading AI products are actually deploying these patterns to solve high-stakes business problems:
> Johnson & Johnson – Drug Discovery Agents: In drug discovery, the goal is broad, but the steps are highly technical. The agent acts as the Planner, determining which chemical combinations to test, while the 'Digital Twin' serves as the Executor. This moves the scientist from the role of a manual lab technician to a systems governor who audits the agent’s simulated results to find the most viable path for physical synthesis..
> Uber – Support & Resolution Agents: Their system acts as a dispatcher, classifying the signal—is this a simple lost item or a complex safety report? If it’s simple, the agent executes the action layer immediately (e.g., triggering a refund API). If it's complex, it gathers context (GPS data, ride history) and prepares a dossier for a human, effectively managing the Autonomy Threshold based on the risk level of the case.
> Stripe – Financial Operations Agents: Stripe’s agents solve the handoff failure between fragmented financial systems. Unlike a simple chatbot that tells you why a payment failed, these agents use their knowledge layer to pull internal tax and regulatory policies, compare them against live transaction data, and then autonomously execute the fix. They are essentially Autonomous Compliance Officers that can navigate the underwater logic of global finance that would take a human hours to trace.
> Shopify – Merchant Operations Agents: Shopify uses agents to manage the context layer of a merchant's business. To a merchant, 'running a marketing campaign' is one goal, but it requires five different tools. The agent uses dynamic decomposition to realize that to start a campaign, it must first check inventory (Tool 1), pull customer segments (Tool 2), and then draft the creative (Tool 3). As a PM at Shopify, you aren't designing a wizard; you are designing the tool layer that allows the agent to act as a virtual COO.
> Cursor – Developer Workflow Agents: When a developer asks for a code change, the agent plans a multi-file refactor, writes the code, and then effectively critiques its own work by checking for syntax errors or logical breaks across the codebase before it presents the final version. It moves the developer’s job from 'Writing' to 'Auditing,' showcasing how agents handle high-complexity tasks when they have a robust internal feedback loop.

## Slide 12

### Agentic Design Patterns


**Speaker notes:**

> 02. Agentic Design Patterns

## Slide 13

### WHY PATTERNS MATTER

- Patterns provide a common vocabulary to help you define expected AI output behaviors in your AI PRD.
- Designing for Outcomes
- You don't solve complex agentic problems with a better prompt; you solve them by choosing how the agent is wired to think.
- 1
- 2
- Patterns enforce a specific reasoning structure, preventing the orchestration gap failures like drift and infinite loops.

**Speaker notes:**

> Notes
> Being an AI PM means you are moving towards being a builder. Agentic patterns are the blueprints you use to organize how an agent solves a problem. Why does this matter for you?
> Strategy over Syntax: The way you wire the agent dictates the user experience. If you design a system that "over-thinks" a simple task, your user waits 30 seconds for a 2-second answer. If you design a system that is too "reactive," it might miss critical details in a high-stakes workflow.
> AI PRD Requirements: Your job is to look at your AI PRD, specifically your success criteria and cost budgets, and help Engineering pick the "lightest" architecture that still gets the job done reliably. You are trading off Accuracy, Speed, and Cost with every decision you make here.
> Let’s look at 2 common patterns so you know exactly which blueprint to pull out for your next product feature.

## Slide 14

### Example

- Agentic Pattern
- ReAct
- The agent that thinks before it acts.
- ⚙️ Mechanism: The agent uses a continuous "Reason-Action-Observe" loop to verify its logic against real-world data before delivering a final result.By observing outcomes, the system can re-plan its next step if it encounters missing data or technical failures.
- 💡Value: It solves high-variability problems by thinking out loud and a visible reasoning trace for easier debugging.However, every loop adds a latency tax, trading instant response times for higher task accuracy.
- The Inner Monologue
- FinalResponse
- Observe“Reads API Result:Data Found”
- Think“I need to find the source”
- Act“Calls Search Tool”
- “Does this answer the question?”
- YES
- NO

**Speaker notes:**

> Notes
> ReAct: This pattern mimics a human thinking through a problem out loud . Instead of jumping straight to a final answer, the agent uses a Reason-Action-Observe loop to verify its logic against real-world data . The "Reasoning Trace" acts as a hidden internal monologue where the system identifies what it needs, triggers a tool to get it, and then evaluates the result before deciding on the next step.Value & Risk: This solves the hallucination gap. By forcing the agent to observe the output of a tool (e.g.,  a database query or a search result) the system can catch its own errors or recognize when data is missing, allowing it to re-plan rather than making up a fact. It provides a transparent paper trail of the AI's logic, which is essential for debugging complex workflows.
> The risk is the Latency Tax: because every "thought" and "action" requires a separate model rotation, this pattern is significantly slower than a direct response.
> PMs must define Max Steps and Token Caps to prevent the agent from getting stuck in expensive, infinite loops.
> Real-World Examples:
> Google AI Overviews: These use a reasoning loop to break down a user query, search for multiple sources, and synthesize a verified answer rather than just predicting the next word.
> Grammarly: Their assistant uses a reasoning loop for complex rewrites, first reasoning about the intent of the sentence, acting by applying a change, and observing if the new version still meets the user's tone requirements.

## Slide 15

### Example

- Agentic Pattern
- Planner-Executor
- The agent that maps out its own roadmap.
- Handoff
- User Input:
- Task List:
- Book Flight
- Book Hotel
- ¨Plan a trip”
- Planner Agent(The Brain)
- Executor  Agent(The Doer)
- Completes Task 1
- ReportsStatus
- StartsTask 2
- ⚙️ Mechanism: One "Planner" loop deconstructs a goal into a roadmap, while a second "Executor" loop processes the tasks.Separating the "thinking" from the "doing" ensures the system remains focused on the original user objective.
- 💡Value: It prevents reasoning drift by keeping high-level objective separate from the technical details of tool-use. However, this increases complexity in your system trace, as you now have to monitor two distinct reasoning chains.
- The Task Architect

**Speaker notes:**

> Notes
> Planner-Executor: This pattern mimics a human project manager and a specialist. The Planner is a high-reasoning model that stays "above the fray," focusing only on the sequence of steps. The Executor is the "worker" that focuses on the technical execution of each individual step. The Planner holds the "State" of the project, while the Executor holds the "Action" logic.Value & Risk: This solves "Reasoning Drift." In long tasks, models often get "distracted" by a technical error in Step 2 and forget the goal of Step 10. By separating the two, the Planner keeps the system on track even if the Executor hits a snag.
> The risk is State Synchronization: if the Executor finds information that makes the rest of the Plan impossible, the Planner needs a robust "Re-planning" trigger to avoid wasting credits on a broken roadmap.
> Real-World Examples:
> Expedia: Their flight agents breaks a "Plan a Paris Vacation" request into a sequential list (Flight > Hotel > Dinner). The Executor books the flight first to confirm dates before booking the hotel.
> GitHub Copilot Workspace: The coding agent acts as the Planner to generate a "Spec List" for a bug fix. The Executor then writes the code for each file sequentially based on that plan.

## Slide 16

### Types of Agentic Memory

- Just like humans have different ways of remembering, agents leverage distinct memory types for different purposes.
- 1
- 2
- 3
- 4
- Track the sequence of actions taken within a specific multi-step task.
- Store persistent behaviors, user preferences, and core system instructions.
- Manage the immediate data and variables currently being processed.
- Access real-world systems and live databases via persistent APIs.
- Episodic
- Semantic
- Contextual
- Linked

**Speaker notes:**

> Notes
> When we talk about agent memory, it's easy to think of just storing a chat log. But sophisticated agents use a combination of different memory mechanisms, each serving a distinct purpose. The type of memory you choose will directly impact capabilities, user experience, risks, cost, and system complexity.
> Some common types are:
> Episodic: This is about progress and sequence. It tracks the specific steps and past actions taken within a multi-step task so the agent doesn't get stuck in a loop or repeat mistakes.
> Semantic: This is about persistent behavior. It’s where you store the "rules of the road" as the core system instructions, learned user preferences, and business logic that dictate how the agent should consistently behave.
> Contextual: This is the immediate "state." It holds the variables and data the agent is currently processing in the active workflow, ensuring it maintains logic as it moves from one step to the next.
> External: This is the agent’s live wire. It isn't stored in the AI's training data; it’s the agent reaching into your actual SQL database or CRM via persistent APIs to pull and act on real-time ground truth.
> As a PM, you have to spec which type of memory your use case requires. Does the agent need to remember a complex sequence of actions (Episodic) or just maintain the current thread's logic (Contextual)? Choosing the right layer is how you balance intelligence with system performance.

## Slide 17

### Estimated time: 5 minutes


**Speaker notes:**

> Notes
> Time for a 5-minute break—you’ve earned it! ☕

## Slide 18

### Reminder! 🚨

- It's always better to see your smiling face! Be present and visible to stay engaged and keep interactions valuable.
- Cameras On

## Slide 19

### Managing the Agentic Handoff


**Speaker notes:**

> 03. Managing the Agentic Handoff

## Slide 20

### The AWSpec is your technical bridge for translating a high-level agentic feature into a structured, governable design that your engineering team can actually build and measure.

- One-Page Blueprint
- The Agent Workflow Spec
- Tools: List the specific APIs and internal databases the agent is authorized to call. Define the required schemas and "Read/Write" boundaries to ensure the agent has the capability to act without overstepping its permissions
- 4
- Memory: Specify what information must persist across the session and define the scope. Determine what needs to be in working memory versus what requires historical context to prevent the agent from drifting.
- 3
- Pattern Plan: Identify which core agentic pattern(s) will be used. Map the key sequential steps the agent must take to transform the initial user intent into the final outcome.
- 2
- Actors: Define which agents, tools, and humans are involved in the loop. Be explicit about who is the pilot driving the goal and exactly where the human must step in as a mandatory decision-maker.
- 1

**Speaker notes:**

> Notes
> While you already mastered the AI PRD in Module 3, think of the AWSpec as its technical addendum—specifically designed for agentic features. While the PRD defines the user experience, the AWSpec defines the underwater orchestration required to deliver that experience safely and reliably. Creating the AWSpec is a core PM responsibility. It’s your primary communication tool to ensure your vision is translated into a governable, reliable agent that meets business objectives. This document forces you to make explicit decisions on the architectural blocks of agents we’ve covered.
> You must specify:
> Actors: Define which agents, tools, and humans are involved in the loop. Be explicit about who is the pilot driving the goal and exactly where the human must step in as a mandatory decision-maker.
> Plan: Identify which core agentic pattern(s) will be used. Map the key sequential steps the agent must take to transform the initial user intent into the final outcome.
> Memory: Specify what information must persist across the session and define the scope. Determine what needs to be in working memory versus what requires historical context to prevent the agent from drifting.
> Tools: List the specific APIs and internal databases the agent is authorized to call. Define the required schemas and 'Read/Write' boundaries to ensure the agent has the capability to act without overstepping its permissions.
> By defining these four pillars, you move from a general 'intent' to a structured design that your engineering team can actually build, audit, and scale. Now let’s put it into practice with Juno!

## Slide 21

### Review your Juno prototype in Lovable to identify the transition points between synthesizing data, prioritizing risks, and drafting your spec.

- Using AWSpec template, complete the system logic required to move from static screens to a functional agent by defining:
- Actors: The specific roles for Juno, any sub-agents, and the user.
- Plan: The core pattern and the sequential steps.
- Memory: The persistence policy for carrying context across the entire workflow.
- Tools: The API schemas and read/write boundaries for your data sources.
- Align your architecture with your Module 3 AI PRD to ensure your tool permissions and data flows are technically grounded for an engineering handoff.
- 💡 Once finalized, add your AWSpec into your final project deliverables deck.
- Breakout Group Exercise
- Write Your AWSpec for Juno
- In this exercise, you’ll return to your final project group and write out the autonomous system logic required to transition Juno from a static prototype to a functional product agent.
- Your goal is to map the specific rules of engagement for Juno by defining the actors involved, the reasoning patterns sit uses, what it  must remember, and the precise boundaries of the tools it is allowed to trigger.
- INSTRUCTIONS
- 30 minutes
- ✍️ Complete the activity with the exercise guide here

**Speaker notes:**

> Notes
> 💥Activity: Breakout Group Exercise
> ✏️Task: Write Your AWSpec for Juno
> ⏱️Time: 30 Minutes
> 📌 Note for Instructors: Remind students that the AWSpec will be part of their deliverables for their final project, so when they finish, they can paste the link and details in the their final project deliverables template (slide 9) to save time later.
> Scenario: In this breakout group exercise, students move from their static Lovable prototype to the functional system logic. They must map the specific rules of engagement for Juno by defining the actors, the reasoning patterns, and the technical boundaries of the tools Juno is allowed to trigger.
> Instructions:
> 👉 Make sure students have access to and open the exercise guide here. Share the link directly in the chat for quick access.
> Instruct students to review their Juno prototype in Lovable. They need to pinpoint exactly where the system moves from synthesizing data to prioritizing risks and finally drafting the spec.
> Guide students to fill out the four pillars of their system architecture:
> Actors: Define the specific roles for Juno, any sub-agents, and the user.
> Plan: Outline the core reasoning pattern and the sequential steps Juno takes.
> Memory: Establish the persistence policy—what context must Juno carry across the entire workflow.
> Tools: Define the API schemas and the "read/write" boundaries for the data sources.
> Ground the Engineering Handoff: Ensure students align this architecture with their Module 3 AI PRD. The tool permissions and data flows must be technically grounded so they are ready for an actual engineering handoff.
> ➡️ Reminder to create Breakout Groups in Zoom

## Slide 22

### The Orchestration Gap

- Common Failure Modes
- Silent Failures
- Reasoning Drift
- Infinite Loops
- The Latency Tax
- When a tool returns "No data," the agent may falsely assume the task is complete instead of verifying the query logic.
- Each autonomous reasoning step adds cumulative seconds; a 5-step loop can force a user to wait 40+ seconds for a result.
- The agent gets stuck in a thought-action cycle, repeatedly trying a failing tool without recognizing a logical dead end.
- After multiple loops, the agent can lose its "North Star" and begin autonomously solving for the wrong sub-task.

**Speaker notes:**

> Notes
> As a PM, you need to know exactly where these mechanics break. In production, agents are powerful but notoriously difficult to stabilize. You don't fix these problems with a better prompt; you fix them with system design.
> Reasoning Drift: Every time the agent goes through a ReAct loop, it’s adding more text to its scratchpad. Eventually, the signal-to-noise ratio flips. The agent starts focusing on the result of the last tool call and forgets the original user goal. This is the 'Agentic' version of a hallucination. In a RAG system, it just finds the wrong data. In an agentic system, it creates a new plan for a goal the user never asked for.
> The Infinite Loop: An agent gets stuck in a "Thought-Action" cycle where they keep trying the same failing API or search query five times in a row, burning tokens and time because they don't recognize they’ve hit a dead end. Because the agent is autonomous, it might spend your entire API budget trying to open a 'locked door' (a broken API) because it thinks it’s just one more 'Thought' away from success.
> Silent Failures: A tool returns an empty result or a "404," and the agent, trying to be helpful, assumes that means the data doesn't exist or, worse, hallucinates a "success" message to satisfy the loop. This is why PMs own the Function-Calling logic. If an agent decides that 'No data' means 'The user has no debt,' and proceed to close a billing ticket incorrectly, you must design the guardrails for 'null' results.
> The Latency Tax: In an agentic world, every thought is a token generation. Every action is an API call. These add up. Because the agent is building its own path, it might take five paths. You have to decide: is the autonomy worth the 40-second wait, or should you revert to a L1 Function-Calling approach? You have to decide if that wait is worth the judgment provided.
> But you don't fix these problems by just getting a smarter LLM. You fix them by building better guardrails. You have to define the "Max Steps," the "Failure Logic," and the "Human-in-the-Loop" triggers that keep these loops from going off the rails.

## Slide 23

### From Logic to Control

- A PM’s Agent Control Panel
- Set the number of max steps to prevent infinite loops and cost overruns.
- Partner with engineering to ensure APIs return clear observations and avoid hallucinations.
- Define when agent’s thoughts trigger human-in-the-loop reviews.
- Provide the system instructions an agent re-reads in every loop to prevent reasoning drift.
- Define Stop Conditions
- Structure Tool Outputs
- Set Confidence Thresholds
- Manage the North Star

**Speaker notes:**

> Notes
> In order to ensure the failure modes are under control, you need to help build the control panel that keeps your agent from breaking. While you might not be doing the technical implementation, many of these controls can—and should—be written into your Agent Workflow Spec (more on that soon!). This document is how you communicate the required guardrails to your engineering team.
> These controls include:
> Stop Conditions: This is your primary lever for cost and UX. You decide how many times an agent is allowed to try a task before it admits defeat. If you don't set this, you risk a $50 token bill for a single user query.
> Tool Structure: This is a deep collaboration with Engineering. If an API fails, the agent needs to know why. You ensure the observation the agent receives is descriptive enough for it to re-plan effectively instead of hallucinating a success.
> Confidence Thresholds: Not every task needs to (or should!) be 100% autonomous. You define the uncertainty limit. If an agent's reasoning confidence drops below a certain level, or if the task involves a high-value transaction, you program the hard stop that hands the reins to a human.
> The North Star: To fight reasoning drift, you have to ensure the agent doesn't get tunnel vision on the last tool result. You do this by architecting the system for Loop Persistence, re-injecting the original user goal into the prompt at the start of every single cycle to keep the agent anchored.

## Slide 24

### Defining the Rules of Engagement

- You define the autonomy threshold.E.g., An agent can draft a $5k quote but cannot hit "Send."
- Agency Permission
- You identity the specific read/write boundaries for every tool and database.E.g., The agent can read the HR handbook but cannotedit payroll.
- Access Control
- You specify the fallback experience when loops break or gates are triggered. E.g., After 3 failed attempts to resolve, the agent must escalate.
- Fallback Protocols
- You set the red zone triggers for human intervention based on risk, value, or ambiguity.E.g., Any legal policy changes by an agent require a human moderator's signature.
- Checkpoints

**Speaker notes:**

> Notes
> You’ve balanced the triangle and set your safety gates. Now, you have to write the rules of engagement because agents typically fail by policy and design, not just intelligence. Here’s what you’re responsible for defining:
> Agency: One of your biggest decisions is the Autonomy Threshold. If you give an agent too much agency, it becomes risky; too little, and it’s just a fancy search bar. You have to decide: at what point does the agent stop acting and start asking for a "Human in the Loop" (HITL). This is the shift from a Co-pilot that suggests to an Autopilot that executes.
> Tool Access: In Section 2, we talked about tools as the hands of an agent. As a PM, you define their scope. Does it have access to the live production database, or just a curated knowledge base? Setting these permissions is a product decision, not just a security one. You are effectively defining the 'Blast Radius' of an autonomous failure.
> Failure Protocols: Traditional software crashes; agents 'drift' or loop. You must define the exit strategy. If the agent gets stuck in a reasoning loop or its confidence score drops below your threshold, what is the fallback? You are architecting the graceful degradation, ensuring that when the AI hits a wall, the user experience doesn't fall apart.
> Checkpoints: These are your red zones. These are the hard gates where human intervention isn't just suggested, they are 100% mandatory. You identify the specific high-stakes triggers, like a legal policy change or a high-value financial transaction, where the agent is forbidden from moving forward without a manual signature.
> So where do you define all of this? You codify these rules in your Agent Workflow Spec

## Slide 25

### Balancing Trade-Offs

- The PM Decision Triangle
- Latency (Speed/UX)
- Single-pass
- Routing
- Small Models
- Cost (Efficiency/ROI)
- Open-source models
- Prompt Caching
- Slimmer Context
- Accuracy (Quality/Reasoning)
- Reflection
- Multi-step Planning

**Speaker notes:**

> Notes
> As a PM, you are the "optimizer-in-chief." Your engineers will always want to build the most accurate agent possible, but your job is to ensure that agent actually fits the business constraints. Every design choice comes with a price tag.
> Think of this triangle as a physical space. As a PM, you are standing in the center, and you only have enough slack to pull the system toward one corner. The moment you push for a specific priority, you are effectively moving away from the other two. You cannot maximize all three—you are choosing which trade-offs your product can survive.
> Pushing for Accuracy: When you demand human-level precision, you are forced to move into the deep-reasoning patterns we discussed in Section 3, like Reflection or Planner-Executor. As you move toward this corner, you are pulling away from Speed and Cost. The system gets smarter, but it also gets significantly slower and more expensive to run.
> Pushing for Latency: If your user experience requires a "snappy," real-time response, like a live sales assistant, you must move toward the Speed corner. By doing this, you are pulling away from Accuracy and Cost. You’ll likely have to skip the multi-step "thinking" loops and might need to use more expensive, high-speed compute to keep things moving.
> Pushing for Cost: When the business model requires a low cost-per-task, you move toward the Efficiency corner. This move pulls you away from Accuracy and Speed. You’ll be forced to use smaller, "Flash" models and minimize the number of tokens the agent processes, which limits how much it can reason or how fast it can compute complex logic.
> A "perfect" agent is a product failure if it’s too slow for the user to wait for, or too expensive for the company to provide.

## Slide 26

### PMs must shift from manual prompting to governing agents that exercise judgment based on goals and real-time context . This transition moves the product dynamic from simple conversation to autonomous delegation.

- Agent anatomy uses a reasoning engine and strategy layer to deconstruct goals into multi-step execution plans . PMs oversee this "underwater" orchestration to prevent reasoning drift and infinite loops.
- Key Takeaways
- Deploy Agentic Systemsand Workflows
- Agentic patterns like Reflection, Planner-Executor,  or Routing replace rigid "if-then" rules with scalable, resilient reasoning logic . Selecting the right pattern allows PMs to balance trade-offs between accuracy, latency, and cost.
- PMs define "Rules of Engagement" by setting stop conditions, access boundaries, and human-in-the-loop checkpoints . The AWSpec acts as the technical bridge for engineering to build these governable systems.

**Speaker notes:**

> Notes
> At the end of each module, recap key concepts and content covered in today’s lesson.

## Slide 27

### Extra Practice

- Optional: Dig deeper into your activities and experiences; try these exercises on your own.1. Try Building the Juno Agent in Langflow
- Return to your exercise guide and follow the instructions to try and build Juno’s workflow yourself.
- 2. Architect a Reasoning Pattern to Solve Drift
- Select a specific workflow where your current AI solutions suffer from reasoning drift or silent failures. Design a new technical requirement that applies a Reflection or Planner-Executor pattern to force a self-correction loop or separate the "thinking" from the "doing.”
- Measure AI Quality with Evals and Guardrails
- ⏩  Next Session
- Overview
- Learn the importance of building robust eval sets and safety guardrails to mitigate risks and ensure production-grade performance.
- (Optional) Deliver your final Juno artifact and share your key design and learnings in the project showcase.
- We will ask via Slack for a few groups to volunteer and   share their final project deliverables for next session.
- All groups will have time during Module 6 to finalize any slides before the course is finished.

**Speaker notes:**

> Notes
> 📌 Note: that the “Dig Deeper” section is optional for students who want to get additional practice with more advanced topics or explore further on their own time.
> Next Session: Give a brief overview of what students can expect during the next session.
> ‹#›

## Slide 28

### Bonus

- Resources & Templates
- HANDS-ON LAB WALKTHROUGH
- Module 5 Exercise Guide
- View resource

**Speaker notes:**

> 🗂 More Resources
> Here are some additional resources students can learn to deepen their knowledge of what we have covered in this section.

## Slide 29

### Q&A


**Speaker notes:**

> Notes
> 💥Activity: Q&A
> This is a chance to dive deeper into the topics covered and answer any additional questions students may have!

## Slide 30

### Build Juno’s Agentic Workflow in Langflow

- OPTIONAL POST CLASS: Hands-On Lab

**Speaker notes:**

> OPTIONAL: POST-CLASSHands-On Lab: Build Juno’s Agentic Workflow in Langflow

## Slide 31

### OptionalPost-ClassPractice

- Build Juno’s Agentic Workflow in Langflow
- ✍️  Follow along and complete this lab with our walkthrough here

**Speaker notes:**

> Notes
> Preparation & Setup
> Download the JSON here
> Create a New Blank Flow in Langflow and simply drag the JSON file onto the canvas.
> Note: The build will preload the architecture but not your API keys. You can add your OpenAI key to the three agents if you wish to run a live test, or simply keep them empty to focus solely on the structural walk-through.
> Live Demo Steps
> Start with Juno: Open the System Prompt of the Juno Orchestrator. Show the # ROLE and # OPERATING MODES
> Highlight the Context Stitcher and Stall Protocol. Explain that Juno isn't just "chatting"; she is a manager who decides which specialist to call and remembers the conversation history to "stitch" missing data together.
> Move to the Specialists: Open their Prompt Templates. Show how the Auditor is programmed to be "clinical" and only output a grade (Match/Fuzzy/Vague). Then show the "Handshake"—how the Auditor’s scorecard is the only thing the PRD Writer is allowed to look at.
> Point out this "Logic Gate" ensures the Writer never builds on "Fuzzy" data.
> Finally, point to the North Star: Show the File Component and explain  how this document is connected to the Prompt Templates via variables.
> Stress that, that without this file, the agents have no "conscience." This file is what allows the AI to say "No" to bad ideas, protecting the product roadmap from feature bloat.
> Close with the wiring: Point out the Toolset connections going into Juno’s Tools port.
> Briefly explain that toggling "Tool Mode" is what gives Juno the power to "hire" the Auditor and Writer. Without these lines, Juno is just a solo agent with no support staff.
> Close the demo by explaining that this isn't just a chatbot; it’s a System of Record. By separating the "Auditor" (The Judge) from the "Writer" (The Builder), we’ve created a professional workflow that mirrors how high-performing product teams actually work.

## Slide 32

_(no text)_

**Speaker notes:**

> Thank you 💥
