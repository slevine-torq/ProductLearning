# M6_ Measure AI Quality with Evals and Guardrails

Extracted from `AI-PM-Cert/M6-Evals-Guardrails/M6_ Measure AI Quality with Evals and Guardrails.pptx` — 28 slides.

## Slide 1

### Module 6

- Measure AI Quality with Evals and Guardrails

**Speaker notes:**

> Module 6: Measure AI Quality with Evals and Guardrails

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

### Agenda

- 03	AI Levers for Output Optimization
- 01	Production-Grade Evaluation Requirements
- 02	Measuring AI-Powered Product Outputs
- 04	Group Project Showcase: Demo Your Juno Copilot

**Speaker notes:**

> Agenda
> Production-Grade Evaluation Requirements
> Measuring AI-Powered Product Outputs
> AI Levers for Output Optimization
> Group Project Showcase: Demo Your Juno Copilot

## Slide 5

### Production-Grade Evaluation Requirements


**Speaker notes:**

> 01. Production-Grade Evaluation Requirements

## Slide 6

### Why “Vibe Checks” Fail in Production

- A single successful output proves an AI can perform a task, but it does not prove it will do so reliably across 1,000 different intents.
- Without systematic measurement, high-stakes hallucinations and edge cases remain invisible until they reach the end user.
- Relying on "Does this look good?" creates a vibe check culture that cannot scale or provide objective data for a Go/No-Go launch decision.
- Trust is earned through consistent, measurable performance in a live environment, not through a curated set of successful examples.
- Invisible Failures
- The Subjectivity Trap
- The Performance Gap

**Speaker notes:**

> Notes
> We’ve talked alot about evolution, and in the world of AI Product Management, testing evolves too. The fundamental shift for an AI PM is moving from the excitement of a successful prototype to the cold discipline of a production-grade evaluation harness. Up until this point, we have been architects and creators; now, we must become the stewards of reliability. Why?
> Demos show capability, but evaluations prove reliability. A curated demo is a happy path that proves the AI is capable of performing a task, but it doesn't give you a statistical guarantee that it will behave correctly when 10,000 users hit it with messy, unrefined inputs.
> This means that vibe checks create a false sense of security. Relying on subjective intuition, or where you or your team manually review a handful of outputs and decide "this looks right,” is a trap that scales poorly and hides systemic failures like silent hallucinations or biased patterns.
> Trust is an operational metric, not a feeling. In the AI-native world, trust is earned through consistent, repeatable behavior that stays within your defined guardrails, and without an objective measurement system, you have no way to defend your product against reputational or safety risks.
> This transition is about moving your mindset from "Does this look good?" to "Does this consistently meet our specific requirements for launch?”

## Slide 7

### The 95% Accuracy Trap

- The Gap Between Lab and Reality
- High academic accuracy scores do not guarantee a high-quality product; a "95% accurate" model still fails if it compromises core user needs like speed or safety.
- Accuracy, Precision, Recall, F1
- Standard benchmarks are excellent for static datasets in controlled environments but are blind to the nuanced failures in user experience and trust.
- 🧪 What LabMetrics Measure
- VS
- User Experience, Trust and Safety
- Evals look beyond lab scores to measure the specific friction, like latency, bias, and inconsistency, that leads to product failure and loss of trust.
- 📝 What EvalsCapture

**Speaker notes:**

> Notes
> As any seasoned PM knows, there’s always a trade-off. In the world of AI, the single most important mental model you can adopt is this: a high accuracy score is not the same as a high-quality product. The "95% Accuracy" trap provides a false sense of security. This is a common pitfall because a clean number feels like success, and it is often the primary metric data science teams are incentivized to improve. However, your job as a PM is to provide the broader product context that these scores ignore .
> Lab metrics are blind to real-world friction. Standard academic benchmarks are measured in a vacuum. They can tell you if a model is "correct" on a static dataset, but they are completely blind to the silent failures—like a 10-second latency or a subtle toxic bias—that will cause a user to abandon your product immediately .
> Evals are your actionable trust signal. While the lab measures the model, your Evals measure the product. You must move the conversation from "How smart is this model?" to "Is this system trustworthy, safe, and usable for our specific customers?"

## Slide 8

### Measuring AI-Powered Product Outputs


**Speaker notes:**

> 02. Measuring AI-Powered Product Outputs

## Slide 9

### The AI Eval Stack

- These are machine-detectable tests used to filter obvious failures, check formatting, and measure technical metrics like speed and accuracy at scale.
- PMs must oversee a multi-layered evaluation plan that balances speed, cost, and depth of insight.
- COMPONENT LEVELEVALS
- 01 AutomatedAssessment
- This is where experts use structured rubrics to judge nuance, tone, and helpfulness and provide the calibration needed for the rest of the system.
- SYSTEM LEVELEVALS
- 02 HumanEvals
- The final reality check where production data like regeneration rates and task completion confirms if the product is actually delivering value.
- ONLINE EVALS
- 03 UserFeedback

**Speaker notes:**

> Notes
> To build a product you can actually trust, you have to architect a measurement flow that protects your team's time while catching failures at every level. These are organized into three distinct layers based on the depth of insight they provide.
> Automated Assessment - Component Level Evals: The Technical Signal. This is your foundation. These are fast, cheap, automated checks—usually code-based—that verify the individual parts of your stack are working. If the "plumbing" fails (like a bad JSON format), there is no reason to waste human time or user attention on the output.
> Human Evals - System Level Evals: The Gold Standard. This is the middle layer where you define what "good" actually looks like. Because AI is subjective, you need humans to grade the entire system output against a rubric. This "Gold Standard" data is what you use to train and calibrate your automated tests.
> User Feedback - Online Evals: The Reality Check. This is the top of your pyramid. No matter how well a model performs in a lab, its true value is determined by user behavior in production. We look at signals like "did the user keep the answer or hit regenerate?" to know if we've actually solved the problem.
> As a PM, you architect this flow so that the easiest failures are caught at the bottom (Component) and only the most nuanced, high-stakes decisions reach your human experts or your live users.

## Slide 10

### 2. Evaluation Criteria

- 3. Scalable Questions
- 4. Calibrate Reviewers
- 1. Value Proposition
- 5. Continually Validate
- Define the core user needs and product promises your AI must fulfill.
- Define the specific dimensions, such as factuality, tone, logic, that measure those promises.
- Use binary yes/no or 1-5 scale questions to turn qualitative "vibes" into quantitative data.
- Create prototypical assessments so all reviewers are trained on the same expectations.
- Have reviewers justify their ratings to identify edge cases and rubric drift.
- Create Assessment
- PHASE 1
- Calibrate
- PHASE 2
- Monitor
- PHASE 3
- Your rubric must convert subjective human judgment into an objective system-level signal to identify launch blockers
- Step-By-Step
- How to Build a Human Eval Rubric
- ✍️ Find Your Own Human Eval Rubric Here!

**Speaker notes:**

> Notes
> 👉 Let students know they have their own copy they can use to start this process here
> Imagine you are a college professor grading essays. To ensure every student is graded fairly, you don't just "vibe check" the papers; you build a rubric so you, your Teaching Assistants (TAs), or anyone substituting, can reach the same conclusions. In AI, your rubric is what transforms subjective human judgment into a repeatable technical signal.
> Phase 1: Create the Assessment: You start with your product's promise. If you promised a concise research tool, you must define criteria like factuality and brevity. Use binary yes/no questions or 1-5 scales. This turns qualitative feelings into the quantitative data your engineers need to set pass thresholds.
> Phase 2: Calibrate Your Reviewers: To avoid inconsistent grading, you must provide your team with prototype assessments—examples of a perfect 5 and a total failure. This ensures that whether you use an in-house team or an outsourced vendor, everyone is aligned on what constitutes a launch blocker, a good output or a bad one.
> Phase 3: Monitor and Validate: Your job as a PM is to prevent rubric drift. Ask your reviewers to justify their ratings. This justification is where you'll find your most valuable product insights, as it highlights edge cases where the model's logic or your own criteria might be failing.
> Your goal is to build the answer key. By following this process, you create the ground truth needed to identify hallucinations and eventually calibrate the automated layers of your eval stack

## Slide 11

### 1️⃣ CONTEXT

- 2️⃣ GOAL
- 3️⃣ METHOD
- Google was building a human-in-the-loop personal assistant product that combined humans and AI to fulfill complex user tasks.
- They needed to assess task fulfillment quality to quantify how the product delivered real-world value.
- 4️⃣ TRAINING
- 5️⃣ ASSESSMENT
- 6️⃣ OUTCOME
- The rubric was calibrated across Product, UX, and UXR, then used to train a dedicated team of manual reviewers.
- After each conversation, the transcript was sent to a reviewer to evaluate the system's end-to-end performance
- The data identified specific failure modes, allowing the team to eliminate launch blockers and improve the experience.
- The rubric consisted of 26 questions, and included:
- Simple technical criteria
- Specific desired outcomes
- Subjective human evaluations
- Real-World Example
- Human Evaluation at Google Assistant

**Speaker notes:**

> Notes
> You can see the power of a structured rubric in how Google handled the evaluation for their Assistant. They were building a human-in-the-loop product where the AI had to fulfill actual user tasks, meaning the stakes for quality were high.
> The Goal: They moved beyond simple accuracy by using a 26-question rubric to determine if a task was actually fulfilled. This included a mix of binary technical checks and subjective evaluations to ensure the product was hitting its value proposition.
> The Training: They did not do this in a silo. The rubric was calibrated across product, ux, and user research to ensure the gold standard was holistic. Once the rubric was set, they trained a team of reviewers to ensure every transcript was assessed with the same level of objectivity.
> The Outcome: By manually reviewing transcripts, the team identified exactly where the intelligence tax was too high or where the model logic was failing. This data provided a roadmap for improvements that academic benchmarks would never have caught.
> The Lesson: This shows that as an AI PM, you own the definition of quality. A detailed, multi-departmental rubric is the only way to truly measure a complex, system-level AI experience.

## Slide 12

### Drafting the Definition of Quality

- Synthesis
- The PM’s Role in Evaluations
- You own the Gold Standard. Your primary deliverable isn't a feature spec, but a rubric that defines exactly what a "perfect" response looks like for your specific user.
- 1
- 2
- 3
- Setting the Pass Thresholds
- You decide the Acceptability Gap. You work with engineering to determine which failure modes are minor annoyances and which are launch blockers that stop a release.
- Auditing the Automated Judges
- You provide the Ground Truth. You periodically audit the automated and "LLM-as-a-judge" layers to ensure the machine’s version of quality hasn't drifted away from the human reality.

**Speaker notes:**

> Notes
> When it comes to Evals, you are the architect of the product’s standards. Here are there of your main roles:
> You draft the definition of quality. In traditional software, the code defines the output. In AI, we know that output is probabilistic. This means your most important document is the rubric. Because you best know your users, you are the only person on the team responsible for translating vague user needs into the specific criteria that a model must be measured against.
> You set the pass thresholds. Engineering can tell you how accurate a model is, but only you can decide if 85% is "good enough" for your users. You define the thresholds. You identify the unforgivables—those specific errors that constitute a launch blocker and mean the system is not yet ready for production.
> You audit the automated judges. Automation is the goal, but it requires constant calibration. Your role is to act as the final check. You periodically review the automated scores against real human judgment to ensure your machine judge hasn't become lazy or biased. If the automated layer drifts, the whole system fails.

## Slide 13

### In your groups, open the AI Evals Stack Template and start by considering Juno as a whole product that you have built throughout this course.

- Begin building your stack with User Feedback and define two specific mechanisms (active and passive) to track Juno's performance in real time.
- Move to Human Evaluations and develop 3 rubric questions a Senior PM would use to grade Juno’s output.
- Finalize with Automated Assessment and identify one binary metric to automate via a script or “LLM-as-a-Judge.”
- 💡 Once finalized, add your Eval Stack Plan into your final project deliverables deck.
- Breakout Group Exercise
- Plan Your Eval Stack for Juno
- In this final exercise, you’ll return to Juno and build the trust architecture required to scale your judgment and move from a prototype to a reliable product.
- Your goal is to plan your Eval Stack for Juno by defining how to measure user feedback, codify your product sense with human eval questions, and establish the automated hard gates assessment that act as Juno’s safety net.
- INSTRUCTIONS
- 25 minutes
- ✍️ Complete the activity with AI Evals Stack Template here

**Speaker notes:**

> Notes
> 💥Activity: Breakout Group Exercise
> ✏️Task: Plan Your Eval Stack for Juno
> ⏱️Time: 25 Minutes
> 📌 Note for Instructors: Remind students that the information from their Eval Stack  will be part of their deliverables for their final project, so when they finish, they can paste the link and details in the their final project deliverables template (slide 10) to save time later.
> Make sure to hop into breakout groups after a few minutes to help groups along and poke holes in their ideas.
> Scenario: In this final breakout group exercise, students will transition Juno from a "vibe-checked" prototype to a trusted strategic partner by defining the measurement required to ensure its judgment matches their own.
> Instructions:
> 👉 Make sure students have access to and open the Eval Stack template here. Share the link directly in the chat for quick access.
> Instruct students to open their template and evaluate Juno as a complete, functioning product. They should focus on the intelligence tax—the overhead created if Juno’s outputs require too much manual correction.
> Guide students to fill out the three different types, starting with User.
> User Feedback: Define one active mechanism (like an accept/reject UI) and one passive mechanism (like time-to-edit) to capture performance in the flow of work.
> Human: Develop 3 question they would use in a human evals rubric to codify product sense. They must include two Yes/No questions for strategy and hallucinations, and one 1-5 scale for identifying "underwater" risks.
> Automated: Identify one binary check (like PII leakage or missing headers) and the exact numerical threshold that triggers an automatic block.
> Finally, remind students that when finalized, they should copy their refined Eval Stack logic directly into Slide 10 of their Final Project deck to ensure its ready for the final presentation after the break.
> ➡️ Reminder to create Breakout Groups in Zoom

## Slide 14

### AI Levers for Output Optimization


**Speaker notes:**

> 03. AI Levers for Output Optimization

## Slide 15

### Operationalizing and Measuring AI Risks

- Use these performance signals as your dashboard to monitor live AI product quality and safety.
- E.g., Finding that 15% of finance queries are being blocked, indicating your guardrails are too sensitive and hurting the UX.
- Blocked Request Rate
- Measurement
- The frequency at which automated safety filters trigger to stop a response.
- Total Denied Prompts /Total User Inputs
- E.g., Monitoring if medical bot’s error rate rises above 1%, ittriggers an immediate rollback to a previous version.
- Hallucination Rate
- Measurement
- The percentage of responses containing factually incorrect or ungrounded claims.
- Total Hallucinations /Total Responses
- E.g., A customer service tool where experts have to rewrite 40% of AI drafts, signaling the model isn't saving time yet.
- Human Override Rate
- Measurement
- The rate at which a human-in-the-loop must correct the AI before the user sees the output.
- Total Human Edits /
- Total AI Outputs
- E.g, Identifying that a model has become 10% less accurate or 5s slower after a vendor updated the underlying LLM.
- Model Drift & Latency
- Measurement
- The monitoring of performance degradation and response speed over time.
- Change in Accuracy + P99 Latency

**Speaker notes:**

> Notes
> Back in Module 2, we talked about why responsible AI mattered. Now, we are talking about how you actually audit those ethics in production. You need a dashboard for these technical risks because "vibes" don't help you decide whether to ship or roll back a feature.
> Hallucination Rate: You own this. While researchers focus on entropy, you focus on the brand. If you are building a legal or medical tool, even a small hallucination rate can be a launch blocker. You track this by comparing your "Gold Standard" rubrics against what the model actually outputs in the wild.
> Blocked Request Rate: This is your primary lever for balancing safety and utility. If your safety filters are blocking 15% or 20% of your users' questions, you have a "False Positive" problem—your guardrails are too aggressive. Your job is to find the "Goldilocks zone" where you block harm without silencing helpfulness.
> Human Override Rate: In high-stakes human-in-the-loop systems, this is your most honest reliability metric. If your experts are overriding the AI 40% of the time, the AI isn't an assistant—it's a liability that is actually creating more work for your team.
> Model Drift & Latency: This is your technical pulse. AI models aren't static; they can lose precision or increase in latency after a vendor update or as the underlying data distribution shifts. If your P99 latency spikes or your accuracy drops, user trust will vanish before they even finish reading the response.
> These are quality signals. If you don't track them, you aren't managing the product responsibly.

## Slide 16

### Strategic Logic

- The Governance Framework
- 1
- 2
- 3
- 4
- Hard vs. Soft Gates: Determine which failures must automatically block a release versus those that only require a manual PM sign-off.
- Zero-Tolerance Metrics: For hard gates, establish the specific numerical thresholds that trigger an immediate production block.
- Grounding for Trust: Define specific output requirements that provide users with evidence of the AI’s reasoning.
- Build a Failure Taxonomy: Categorize potential AI failures into a clear document to align technical and business stakeholders on risk priority.
- EXAMPLE: A safety failure triggers an automatic block, whereas a high latency result requires a PM to justify the release.
- EXAMPLE: We require 0% PII leakage to ensure the system never reveals sensitive data like employee salaries.
- EXAMPLE: The model must provide direct citations or links to the HR policy it used to answer the question.
- EXAMPLE: A Severity vs. Frequency map prioritizes fixing hallucinations in vacation policies over minor "off-brand" tone issues.
- Dive deep into each of these governance strategies in our AI Evals Certification

**Speaker notes:**

> Notes
> This is the policy layer of your product. You have your dashboard and your guardrails; now you are defining the internal logic that governs how they are used.
> Hard vs. Soft Gates: This is your first line of defense in the deployment pipeline. Hard Gates are your "automated blocks." If the agent fails a specific test, the code simply cannot be pushed to production—no exceptions. Soft Gates are for "gray areas." If the agent hits a soft gate, it triggers a manual review where you, the PM, have to look at the data and justify the release using the pyramid principle.
> Zero-Tolerance Metrics: These are the specific, numerical "kill switches" for your Hard Gates. For an agent handling employee data, your threshold for PII (Personally Identifiable Information) must be absolute. If there is even a 0.1% chance of the model revealing a colleague's salary or SSN, the system must stay in the lab.
> Grounding for Trust: Trust isn't just about accuracy; it’s about evidence. AI hallucinates when it has no anchor. You prevent this by requiring grounding, which forces the model to provide the receipts. If an agent tells a user they have 10 days of vacation left, it must show the specific policy link it used to calculate that number so the user can verify it.
> Failure Taxonomy: You cannot solve every AI bug at once. You need a taxonomy, which acts as a way to categorize failures so you know what to fix first. Use a matrix to map Severity vs. Frequency. A high-severity, low-frequency error (like a single, massive security leak) is a P0 priority, while a low-severity, high-frequency error (like a robotic tone) might just be a "nice to fix" for next quarter.

## Slide 17

### Three Levers to Optimize AI Product Performance

- When your evaluations signal a gap in quality, these are the three levers you pull to improve the system:
- Adjust the instructions or formatting to influence the AI’s output.
- Try: Few-shot, chain-of-thought prompting, or adding delimiters to structure your data.
- BEHAVIOR & LOGICThe Prompt
- INTELLIGENCE & COST:The Model
- KNOWLEDGE & ACCURACYThe Data
- Swap models or versions to find the best balance of quality, speed, and price.
- Try: Comparing Gemini Pro vs. Flash for different task types or adjusting hyperparameters.
- Refine the information the AI accesses to ensure relevant and accurate responses.
- Try: Cleaning the RAG dataset, adding more diverse data points, or fine-tuning the model.

**Speaker notes:**

> Notes
> This is your tactical toolkit. Once your dashboard shows a problem, like a high hallucination rate, you don’t just tweak the AI. You choose which lever is the most efficient fix.
> The Prompt is your fastest lever. It changes how the model behaves. If the AI is too wordy, you don't change the model; you change the prompt. Use techniques like few-shot, or chain-of-thought you learned in Module 1 to guide the AI's logic without touching a single line of code.
> The Model is your capability lever. Sometimes a prompt can't fix a logic failure. If you need deeper reasoning, you might move from a Flash model to a Pro model. As a PM, you are balancing the cost and latency of a more powerful model against the needs of your users.
> The Data is your knowledge lever. If your AI is hallucinating facts, the problem is likely the data it’s reading. You optimize this by refining the dataset used in RAG or, in advanced cases, investing in fine-tuning so the model truly understands your specific domain.

## Slide 18

### The PM Execution Plan

- Determine when the system must block a response, degrade to a safe script, or escalate to a human reviewer.
- Key Decision: Safety vs. Utility
- Add Production Guardrails
- 3
- Use performance gaps to decide whether to pivot your strategy or update your roadmap with new goals.
- Key Decision: Feature vs. Data
- Evolve Your Roadmap
- 4
- Compare systematic results against your gold standard. Reject any launch based on a "good demo" if the data fails the bar.
- Key Decision: Brand Protection vs. Hype
- Set Your Gatekeepers
- 2
- Define exactly what to measure, how often to test, and assign a clear  quality owner for the final score.
- Key Decision: Speed vs. Certainty
- Build Your Eval Plan
- 1

**Speaker notes:**

> Notes
> Consider this your launch playbook or evals execution plan to ensure that your product is safe, reliable and ready for your users.  For each step, you’ll have to make some hard calls to move to the next stage.
> Step 1: Build Your Eval Plan (Speed vs. Certainty): This step is about establishing your "Gold Standard" and success metrics before you start iterating.
> Your big decision here is Speed vs. Certainty. It is tempting to start coding immediately, but as a PM, you must often choose to delay development to ensure your measurement framework is solid. You are choosing to be right over being fast.
> Step 2: Set Your Gatekeepers (Brand Protection vs. Hype): This is the systematic audit where you compare model results against your human-verified bar.
> Your decision here is Brand Protection vs. Hype. You will face pressure to ship because a cherry-picked demo looked amazing to leadership. You must have the backbone to say "No" if the data shows the model isn't actually reliable enough for the public.
> Step 3: Add Production Guardrails (Safety vs. Utility): This step involves setting the automated laws of the product, such as deciding when the AI should block or escalate a response.
> Your decision is Safety vs. Utility. You are deciding the friction of your product: is it better to frustrate a user with a safe canned response, or risk an AI error that could lead to a PR or legal crisis?
> Step 4: Evolve Your Roadmap (Features vs. Data): Here, you use performance gaps to decide where to invest your engineering resources next.
> Your decision is Features vs. Data. If evaluations show the model's knowledge has hit a ceiling, the right move is to stop building "new bells and whistles" and reallocate that budget toward data cleaning or RAG optimization.
> Keep in mind, these are more than just technical tasks. These are the moments where you exercise your authority as a PM to ensure the AI is a value-add, not a liability.

## Slide 19

### Slide 5: Paste your final System Message including the few-shot examples.

- Slide 6: A high-level overview of your AI Strategy One-Pager and a shareable link to the full, completed artifact.
- Slide 7: Detail your RAG Architecture and Data Strategy to ground Juno in RocketShip data.
- Slide 8: Show your Juno UX design with 1-2 high-fidelity screenshots of the interface you built in Lovable.
- Slide 9: A high-level overview of your Agentic Workflow (AWSpec) logic and a shareable link to the full, completed artifact.
- Slide 10: An overview of your Eval Stack plan  including your human rubric questions and your automated hard gate threshold.
- Slide 11: General insights into the build process, focusing on your biggest strategic friction points and your "aha" moments.
- Breakout Group Exercise
- Prepare & Finalize Your Project Deliverables Deck
- 20 minutes
- KEY SLIDES
- To ensure you’ve got time to finalize the details, get together in your groups to work on your deck.
- 🚀 Feel free to adapt, add and adjust the template as best suits your needs. It’s there to give you a baseline, but you can make it your own! The project brief is also linked on slide 2 if you need it.
- Remember, each member of your team must submit a copy of the deck into the LSM, but you can all build from one shared deck, then download a copy separately once finished.
- 🔗 ACCESS: AI Product Management Final Project Deliverables Template

**Speaker notes:**

> Notes
> 💥Activity: Breakout Group Exercise
> ✏️Task: Prepare and Finalize Your Project Deliverables
> ⏱️Time: 20 Minutes
> Instructions: You will have 20 minutes to get together in your groups and finalize the slide deliverables you must submit into the LMS. Student should  Final Project Deliverables Template. Students will be all building from one shared deck, but remember that each member must download and submit a finalized copy individually to the LMS to get credit.
> Students should use this time to polish their prompts, verify the links work, and ensure their screenshots are clear. Remind them you aren't looking for perfection; you're looking for their strategic logic and what they learned during the build.
> Slides in the Template to Cover:
> On Slide 5, show the Brain. Share the specific System Prompt you developed. Highlight the role and constraints, and especially the few-shot example you used to make Juno think like an Associate PM.
> On Slide 6, show the Foundation. Summarize your Strategy One-Pager. What is the core AI opportunity you identified for RocketShip? Provide the link to your full artifact.
> On Slide 7, show the Data. Detail your RAG Architecture. Explain your retrieval logic and the specific sources Juno uses to minimize hallucination and stay grounded.
> On Slide 8, show the Interface. Show Juno in action where the work happens. Provide 1-2 high-fidelity screenshots of Juno’s interface built in Lovable.
> On Slide 9, show the Logic. Present your Agentic Workflow (AWSpec). Detail the core agentic pattern used to handle complex tasks and include the link to your full spec.
> On Slide 10, show the Trust. Summarize your Evaluation Plan. Show us your 3-2-1 methodology—how you defined "good" and which automated "hard gates" you put in place to mitigate risk.
> On Slide 11, tell the Story. Share your insights from the build process. Identify the biggest technical or strategic friction points and your key "aha" moments from the course.
> After the break, we will start hearing from groups that volunteered to present!

## Slide 20

### Learner Journey

- Drive AI-First Execution with Prompting
- Validate AI Opportunities and Technical Feasibility
- Improve AI Product Requirements with RAG Architecture
- Design AI-Native User Experiences
- Deploy Agentic Systems and Workflows
- Measure AI Quality with Evals and Guardrails
- 1
- 2
- 3
- 4
- 5
- 6
- The Mindset Shift: Moving from deterministic rules to governing probabilistic systems.The Win:Mastering prompt anatomy to move beyond basic chat and establish reliable, system-level logic for AI-native features.
- The Context Shift: Moving from stateless prompts to context-aware systems that ground AI outputs in verifiable data.The Win: Defining an AI PRD to specify needs and owning technical trade-offs through precise retrieval requirements.
- The Interface Evolution: Moving from static menus to invisible UIs that proactively surface tools based on needs.
- The Win: Architecting the AI iceberg flow, mapping hidden logic and system triggers to build magical experiences that maintain trust with transparency.
- The Autonomy Dial: Moving from reactive to autonomous systems that interpret intent, make decisions, and execute multi-step tasks.
- The WinDeveloping the AW Spec to scale product judgment with reasoning patterns for resilient, goal-driven systems.
- The Validation Shift: Replacing subjective vibe checks with systematic evaluation for reliability at scale.
- The Win: Engineering a multi-layered eval stack to establish hard gate thresholds that protect and maintain trust in a live environment.
- The Strategic Lens: Shifting from shiny distractions to boring killer features that prioritize business scale.The Win: Writing the AI strategy One-Pager to bridge technical feasibility and business impact, forcing a rigorous defense of every bet.

**Speaker notes:**

> NotesAs we near the end of this course, let's review the specific toolkit you've built towards mastering
> Hopefully, you now feel ready to validate any idea, anytime, without waiting for permission!

## Slide 21

### Estimated time: 5 minutes


**Speaker notes:**

> Notes
> Time for a 5-minute break—you’ve earned it! ☕

## Slide 22

### Reminder! 🚨

- It's always better to see your smiling face! Be present and visible to stay engaged and keep interactions valuable.
- Cameras On

## Slide 23

### Final Project Showcase:Demo Your Juno Copilot


**Speaker notes:**

> 04. Final Project Showcase: Demo Your Juno Copilot

## Slide 24

### Important Reminder:

- LAUNCH LMS
- To qualify for certification, please ensure you upload and submit your own copy of the final project deliverables in our LMS.

**Speaker notes:**

> Notes
> 📌 Note for Instructors: Give students a quick overview again of what students must cover in their deliverables.
> Note that all students are required to submit their final project deliverable in Doebo in order to qualify for certification. Students will have seven days from when course is finished to submit.

## Slide 25

### Presentation Kick-Off:

- Your Time to Shine 🌟
- Make sure to keep track of time! You'll have roughly 10 minutes to demo and share your insights.
- IMPORTANT
- You have 7 days after the course completes to submit.

**Speaker notes:**

> Notes
> Now its group’s turns! Call on the first group to present and get them to share their screen. Let them know they will have about 10 min to present, and you might need to cut them off if they’re going over.
> Feel free to give a 6-7 minute warning as group’s present.
> Your live feedback should reflect the same as the rubric, but in more detail:
> Project Clarity
> Credibility and Reasoning
> Strategic Thinking
> Application of Conce

## Slide 26

### Key Takeaways

- Measure AI Quality with Evals and Guardrails
- Product Managers must replace "vibe checks" with systematic evaluation harnesses to ensure reliability across diverse user intents . This allows PMs to catch invisible failures and make objective, data-driven launch decisions.
- AI governance requires PMs to define hard gates based on zero-tolerance metrics and clear failure taxonomies. Establishing these sensitivity thresholds protects the brand by balancing safety against necessary product utility.
- PMs should implement an evaluation stack balancing automated checks, human evals, and real-time user feedback . This tiered approach ensures technical accuracy, nuanced tone, and actual value delivery are all measured for production.
- To optimize performance, PMs must strategically adjust three levers: behavior via prompts, intelligence via models, or accuracy via data. Identifying whether to refine instructions, swap models, or clean RAG datasets allows for targeted system improvement.

**Speaker notes:**

> Notes
> At the end of each module, recap key concepts and content covered in today’s lesson.

## Slide 27

### Resources

- & Templates
- PRODUCT SCHOOL TEMPLATE
- View template
- AI Evals Stack
- AI PRODUCT MANAGEMENT CERTIFICATION
- View resource
- Final Project Rubric Guide
- PRODUCT SCHOOL TEMPLATE
- View template
- Human Evaluation Rubric

**Speaker notes:**

> 🗂 Bonus Resources
> Here are some additional resources students can learn to deepen their knowledge of what we have covered in this section.
> ‹#›

## Slide 28

### Q&A


**Speaker notes:**

> Notes
> 💥Activity: Q&A
> This is a chance to dive deeper into the topics covered and answer any additional questions students may have!
