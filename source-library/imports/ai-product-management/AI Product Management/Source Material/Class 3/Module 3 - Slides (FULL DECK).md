# M3_ Improve AI Product Requirements with RAG Architecture

Extracted from `AI-PM-Cert/M3-RAG-Architecture/M3_ Improve AI Product Requirements with RAG Architecture.pptx` — 30 slides.

## Slide 1

### Improve AI Product Requirements with RAG Architecture

- Module 3

**Speaker notes:**

> Module 3: Improve AI Product Requirements with RAG Architecture

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

- 02	Hands-On Lab: Improve Juno’s Capabilities with RAG
- 01	The Power of Context and Context Engineering
- 03	Mapping RAG To Your AI PRD
- 04	RAG Costs, Control, and Trade-offs

**Speaker notes:**

> Agenda
> The Power of Context and Context Engineering
> Hands-On Lab: Improve Juno’s Capabilities with RAG
> Mapping RAG To Your AI PRD
> RAG Costs, Control, and Trade-offs

## Slide 5

### The Power of Context and Context Engineering


**Speaker notes:**

> 01. The Power of Context and Context Engineering

## Slide 6

### FocusInstructions, formatting, and wording.

- LeversSystem prompts, few-shot examples, and hyperparameters.
- StrengthsFast UX experimentation and early-stage prototyping.
- WeaknessesStruggles with factual grounding and scaling across proprietary data
- Prompt Engineering
- FocusDesigning data inputs, including documents, chunks, and metadata.
- LeversIngestion, chunking, embeddings, and vector search.
- StrengthsHigh reliability, maintainability, and cost control.
- WeaknessesIncreased architectural complexity and higher initial latency.
- Context Engineering
- You need both to be an AI PM, but context engineering is where systems become “real products.”
- VS

**Speaker notes:**

> Notes
> Earlier in this course, you learned that prompt engineering is an AI PM's new means of execution. While this remains true as the primary tool you have to shape your model's behavior , it can only get you so far. That's where context engineering comes in. So what is the difference?
> Prompt Engineering:
> Focuses on instructions, formatting, and the specific wording used to guide the model.
> You can do this by adjusting system prompts, providing few-shot examples, or tuning hyperparameters.
> This means it's great at fast UX experimentation and building early-stage prototypes.
> However, it struggles with scaling and cannot effectively ground responses in proprietary data.
> Context Engineering:
> This focuses on designing the data inputs the model sees, including documents, chunks, and metadata.
> You do this by managing ingestion, chunking strategies, embeddings, and vector search.
> It's great for achieving high reliability, maintainability, and enterprise-grade cost control.
> However, this means it also introduces increased architectural complexity and requires planning for higher initial latency.
> Remember, you need both to be an AI PM, but context engineering is where your AI systems become "real products"

## Slide 7

### Overview

- RAG Process
- RetrieveBefore answering,the model searches a defined knowledge base to find relevant context.
- 1
- GenerateThe model uses the retrieved context, along with the user's original query, to generate a factually grounded answer.
- 3
- THREE-STEP PROCESS
- AugmentWithin the knowledge base, it works to find the most relevant information as context to help it complete its task.
- 2
- 🧠 Keep in mind: The quality of the final answer depends entirely on how well you've curated the library it's searching from.
- Retrieval-Augmented Generation (RAG) is a  technical pattern that combines an LLM with a targeted search over your own proprietary data.

**Speaker notes:**

> Notes
> Let’s go deeper into the specific "how" of RAG architecture. While you’ve seen RAG at a high level before, we are now looking at it through the lens of a system architect where the data, not just the instruction, becomes the product logic.
> Let’s start with a quick review of what RAG is: Retrieval-Augmented Generation (RAG) is a technical architecture that effectively bridges your static LLM with dynamic, proprietary data. Instead of the model guessing based on its training data, it follows a multi-step process: it retrieves relevant docs, augments the query with that data, and then generates an answer.
> In a nutshell, while a standard model relies solely on what it learned during training, a RAG-enabled system is forced to "consult the library" before it ever opens its mouth. Here’s a quick overview of how the process works:
> Retrieve: Before the model attempts to answer, it first searches through a knowledge base that you, the PM, have defined. This is the phase where the system looks for any data, documents, or snippets that might be relevant to the user's specific request.
> Augment: Once the search is complete, the system sifts through those results to find the most relevant context needed to complete the task. It effectively "augments" the user's original query by wrapping it in these factual findings, giving the model a much narrower, safer sandbox to work in.
> Generate: Finally, the model looks at both the user’s query and that retrieved context to generate a response that is factually grounded in your data. Because it has the "answers" right in front of it, it doesn't have to guess, which is what allows it to provide accurate information and even cite its specific sources.
> Just keep in mind: The quality of the final answer depends entirely on how well you've curated the library it's searching from.

## Slide 8

### How RAG Works in Practice

- 0. Data Preparation
- A
- B
- C
- D
- 2
- 3
- 1
- 4
- 5
- Chunking
- Raw DataSources
- Embedding
- InformationExtraction
- Vector Database
- RelevantData
- Embedding
- Query
- Response
- LLM(s)
- (OCR, PDF data extraction, web crawlers, etc.)
- 3.Generate
- 2. Augment
- 1. Retrieve

**Speaker notes:**

> Notes
> Let’s dive into the details:First, data needs to be prepared for RAG to work (Steps A-D in diagram):
> This is the offline process of building the Vector Database. It involves taking Raw Data Sources (A), Extracting the text (B), breaking it into smaller Chunks (C), and converting those chunks into Embeddings (D) to be loaded into the database for future searching.
> Then, the actual RAG (Retrieve, Augment, Generate) occurs:
> Retrieval: (Steps 1-3 in diagram)
> The user's Query (1) is converted into an embedding and sent to the Vector Database (2) to search for and retrieve the most semantically similar Relevant Data (3).
> Augmented: (Step 4 in diagram)
> The retrieved Relevant Data (3) is combined with the original Query and passed as augmented, factual context to the LLM(s) (4).
> Generation: (Step 5 in diagram)
> The LLM (4) uses this augmented context (the query + retrieved data) to synthesize a final, fact-based Response (5) for the user.

## Slide 9

### Discuss the following question

- What is one messy set of documents or workflows you wish you could “talk to” using this exact method of RAG?
- Instructor-Led Q&A
- RAG In Your Workplace
- 5 minutes
- Q&A DISCUSSION
- Feel free to unmute and share, or post your thoughts in the chat!
- To get you started thinking about how you might leverage RAG, share your perspective on:

**Speaker notes:**

> Notes
> 💥Activity: Instructor-Led Q&A
> 💬Topic: RAG In Your Workplace
> ⏱️Time: 5 Minutes
> 📌Note for Instructors: Use this quick Q&A to anchor the basic RAG architecture to a real PM problem. This will help students grasp the concept before we go deeper into mechanics and hands-on.
> Instructions: To get you started thinking about how you might leverage RAG, ask student to share their insights on the following question:
> Questions:
> What is one messy set of documents or workflows you wish you could “talk to” using this exact method of RAG?

## Slide 10

### Improve Juno’s Capabilities with RAG

- Hands-On Lab

**Speaker notes:**

> Hands-On Lab: Build a Custom GPT With RAG Capabilities

## Slide 11

### Instructor-LedExercise

- Improve Juno’s Capabilities with RAG
- LAB EXERCISE OUTCOME

**Speaker notes:**

> Notes📌 Note for Instructors:  Briefly give a sneak peak of what students will be building, highlighting that this will be the final outcome of the exercise, and together with students you will walk through the steps together.

## Slide 12

### Steps to follow:

- ℹ️ NOTE: If you wish to use a different tool, try 🔗Google Stitch, 🔗 Bolt or feel free to pay and upgrade to a Pro Lovable plan for more credits.
- Open your existing Juno project in 🔗 Lovable and paste Artifact 1 into your "Raw Insights" column to re-establish a baseline.
- Refactor the dashboard for strategy ingestion and paste the "RAG Refactor Prompt" into the builder to evolve your UI.
- Enable RAG logic and cloud processing by pasasting the "Logic Ingestion Prompt" to connect your UI to a real AI backend. When prompted, click "Approve" to enable Lovable Cloud.
- Paste the text from the RocketShip Strategy One-Pager into your new strategy column and re-process the transcript. Observe how Juno’s priorities shift to align with company goals, explicitly citing your strategy document to defend its reasoning.
- Individual Exercise
- Improve Juno’s Capabilities with RAG
- In this hands-on lab, you'll return to your Lovable prototype to add the RAG architecture to your AI Copilot, Juno.
- Your goal is to prompt Lovable to evolve Juno from a generic assistant into a judgment-scaling PM copilot by grounding its prioritization decisions in RocketShip’s internal strategy.
- LAB EXERCISE
- 30 minutes
- ✍️  Follow along and complete this lab with our walkthrough here

**Speaker notes:**

> Notes
> 💥 Activity: Individual Exercise
> ✏️ Task: Improve Juno’s Capabilities with RAG
> ⏱️ Time: 30 minutes
> 📌 Note for Instructors: Students should be completing the activity WITH YOU IN REAL TIME. The best way for students to learn is that you have one student volunteer to share their screen, and you walk them through the steps in the document, while all other students are also completing the task on THEIR own. That way, everyone is following along and learning in real-time.
> Make sure you share the link to the guided walkthrough in the chat so everyone has access.
> Key things to watch out for:
> Baseline Test: Ensure students actually test the transcript before adding the strategy document. This contrast is the "lightbulb moment" where they see the difference between generic AI and RAG-grounded AI.
> Enabling Cloud: Students must click "Approve" or "Allow" when prompted to enable Lovable Cloud, or the backend edge function will not trigger, and Juno will stay in "mock" mode.
> Scenario: In this hands-on lab, students will return to their Lovable prototype to evolve Juno from a generic assistant into a judgment-scaling PM copilot. Their goal is to build the RAG (Retrieval-Augmented Generation) layer that allows Juno to prioritize customer feedback based on RocketShip’s actual internal strategy documents.
> Instructions:
> 👉 Make sure students are following along with the detailed walkthrough guide.
> Instruct students to open Lovable, launch their Juno project, and paste the user transcript (Artifact 1) to see how poorly a generic model prioritizes "Dark Mode" over "CSV crashes." (or any other mock data it applies)
> Guide students to paste the "RAG Refactor Prompt" to update their UI with the Strategy Document input column and clean out old mock data.
> Instruct students to paste the "Logic Ingestion Prompt." Crucially, remind them to click "Approve" for Lovable Cloud to enable the real AI backend.
> Have students test the system in "Quality Mode" (no strategy document) first to see the improved reasoning logic.
> Finally, have students paste the RocketShip Strategy One-Pager (also linked in exercise guide) text into the new column and re-process. Call out how Juno now cites the document to justify why the CSV crash is a P0 and the navigation bar color is not recommended.
> ℹ️ How did it go? Quick rebrief to follow on the next slide.

## Slide 13

### Mapping RAG To Your AI PRD


**Speaker notes:**

> 02. Mapping RAG To Your AI PRD

## Slide 14

### What’s New in an AI PRD?

- Model Requirements: Specifies theprovider, context window limits, and latencytargets. Includes requirements for modality andthe choice between open or proprietary sources.
- Data Requirements: Defines sources for grounding or fine-tuning and the preparation process, such as chunking and metadata tagging.
- Prompt Requirements: Outlines functional instructions for the system prompt, prohibited content guardrails, and behavioral constraintslike brand voice.
- AI User Experience: Focuses onbuilding trust through citations anduser education on AI capabilities.
- AI Testing & Measurement: Establishes a validation plan using a Golden Dataset as ground truth. Defines specific thresholds for accuracy, bias, and robustness.
- AI Risks & Mitigations: Identifies failure modes like PII leakage or model drift.Sets “Hard Eval Gates" to block releasesif safety thresholds are not met.
- AI Costs & Latency: Forecasts variable operational expenses based on token usage anddevelopment costs for data acquisition.
- Check out an example AI PRD here
- Beyond traditional user stories, an AI PRD must define the rules of engagement for your AI model.Here are the critical new pillars you must also include:
- ✍️

**Speaker notes:**

> Notes
> A traditional PRD is about features. An AI PRD is about performance and trust. You are setting the statistical standards that the model must hit before it's allowed to talk to your customers.While many traditional elements remain the same and look similar, these additional requirements move from "if-then" rules to statistical (probabilistic) boundaries.
> Some of these new additions include:
> Model Requirements: This section is where you decide on the "brain" of the product. You aren't just picking a name like GPT-5; you are specifying the context window size and latency priorities that dictate how fast and "smart" the user experience feels.
> Data Requirements: Unlike standard databases, you must define the Data Preparation process here. This includes how you collect proprietary info and the specific way it is "chunked" so the AI can retrieve it accurately.
> Prompt Requirements: This is where you write the "Code of Conduct" for the AI. You specify the functional instructions the model must follow and the prohibited content it must refuse to generate.
> AI Testing & Measurement: Testing moves from catching bugs to measuring accuracy against a Golden Dataset. You define the specific thresholds, like a hallucination rate under 3%, that the model must hit to be considered "good".
> AI User Experience: AI UX is about Trust and Verification. You must require the system to "show its work" via citations or provide "Fall Gracefully" options like creating a support ticket if the AI is unsure.
> AI Risks & Mitigations: You must identify specific failure modes like PII leakage. The PRD establishes Hard Gates—automated blocks that prevent a release if the model fails a safety audit.
> AI Costs & Latency: Because RAG uses proprietary data in every query, costs are no longer fixed. You must forecast operational expenses based on variable token usage, which scales with the volume of data you decide to retrieve.
> 👉 You can check out an example AI PRD here.

## Slide 15

### 2. Augment

- 0.  Data Preparation
- 1. Retrieve
- 3. Generate
- How to Incorporate RAG into Your Requirements
- Before the AI can search, you must build the "Knowledge Library". This is a background process where raw data is ingested, sliced into chunks, and tagged with metadata.
- PM Strategic Objective
- Set Information Volume Constraints:Define the "Top-k" limit, which is the specific number of information pieces the AI reviews before answering.
- Require Grounded Citations & Failure Logic:Mandate that every claim includes a verifiable source link and define how the AI handles queries when no relevant data is found.
- Mandate Search Strategy & Security Filters: Guarantee the system finds the right information regardless of how a user phrases their query.
- Define Source of Truth & Freshness:Specify which repositories the AI is permitted to access and how frequently the data must be updated.
- AI PRD Example:
- AI PRD Section: Data RequirementsE.g., Knowledge Base Requirement:The system must sync with the Legal Department’s internal repository every 4 hours to ensure policy changes are reflected.
- AI PRD Section: Model RequirementsE.g., Search Requirement:The system must utilize Hybrid Search to recognize exact product SKU codes and general natural language queries like “shipping delays.”
- AI PRD Section: AI Costs & LatencyE.g., Context Requirement: The retrieval loop must be limited to the top 5 most relevant document segments to maintain a response latency of under 2 seconds.
- AI PRD Section: AI User ExperienceE.g.., Grounded Trust Requirement: Every output must include a verifiable source link; if no data is retrieved, the AI must state it cannot find the info.
- AI PRD Location

**Speaker notes:**

> Notes
> Up to this point, we’ve looked at RAG as a three-step technical loop: Retrieve, Augment, and Generate.  But if you want to ship this as a product, your AI PRD needs to account for a step zero, which is all about preparation and the specific storage constraints that keep your data secure.
> Step 0: Data Preparation: Technically, RAG starts with Retrieval, but as a PM, your work starts with Preparation. You can't "Retrieve" a policy if it hasn't been ingested, chunked, and tagged. In your PRD, this is your Data Strategy. You aren't just saying "use our data"; you are defining the "SLA of Truth"—how fast a new document on a server becomes an answer in the AI.
> Step 1: Retrieve: This maps to the Model Requirements section of your AI PRD. Your objective is to guarantee the system finds the right info even if the user is vague. By mandating "Hybrid Search," you ensure the system is built to handle both technical data, like SKU codes, and conversational intent, like "shipping delays.”
> Step 2: Augment: This phase is where you manage your AI Costs and Latency. "Augmenting" means adding retrieved text to the user's prompt, but every word costs money in tokens. By setting a "Top-k" constraint and limiting the AI to the top 5 most relevant segments, you are effectively setting the budget and speed for every single query.
> Step 3: Generate: Finally, in the AI User Experience section, you define the rules for the final answer and the AI’s output. Your goal is verifiability. You must require grounded citations so users can fact-check the AI. Crucially, you must also define the failure logic: if the retriever finds nothing, the AI must admit it doesn't know rather than hallucinating an answer.
> But RAG architecture isn’t just what is new in a PRD for AI products. Let’s quickly touch upon what else an AI PRD must cover.

## Slide 16

### The Three Key RAG Trade-offs

- These are the decision boundaries you must define in the Model Requirements and AI Costs sections of your AI PRD.
- Accuracy: Higher factual integrity by retrieving more document segments via a higher Top-K
- Operational Cost: Increased token consumption from passing larger volumes of data into the prompt.
- Latency: Faster response times for
- real-time interaction by using smaller models or fewer retrieval steps.
- Sophistication: Lower reasoning depth as smaller models may struggle with complex logic or nuance.
- Control: Stricter data sovereignty and privacy by building custom, self-hosted infrastructure.
- Accuracy vs. Cost
- Latency vs. Reasoning Time
- WHAT YOU PRIORITIZE
- WHAT YOU SACRIFICE
- Time-To-Market: Slower product rollout due to heavy engineering overhead.
- Control vs. Implementation Speed
- THE TRADE-OFF

**Speaker notes:**

> Notes
> As an PM knows, your world revolves around trade-offs.  In your AI PRD, you’ll also need to make compromises between the optimal choice, specific requirements, constraints and goals. In a traditional product, you might just say "the search should be fast." In an AI product using RAG, you have to acknowledge that every benefit comes with a price tag.
> These  are the strategic decision boundaries you must document in your AI PRD. You are deciding what the system values most, and what it is willing to give up to get there.
> Accuracy vs. Cost: If you prioritize Accuracy, you are choosing to retrieve more data segments to ensure the model has every possible fact. The sacrifice is your Operational Cost; every extra paragraph you "augment" the prompt with is an extra token you are paying for on every single user query.
> Latency vs. Reasoning Quality: If you prioritize Latency to keep the user experience feeling snappy and real-time, you might use a smaller model or skip complex steps. The cost is Sophistication; you are sacrificing the deep reasoning "horsepower" that only larger, slower models can provide for complex logic.
> Control vs. Implementation Speed: If you prioritize Data Control to keep sensitive information on your own proprietary servers, you gain total sovereignty. The sacrifice is Time-to-Market; you are trading away the speed of using a managed cloud API for the heavy engineering lift of building it all yourself.

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

### RAG Costs, Control, and Trade-offs


**Speaker notes:**

> 04. RAG Costs, Control, and Trade-offs

## Slide 20

### Data Preparation

- Defining a RAG “Knowledge Library" means determining exactly which data types, such as policies, contracts, tickets, or wiki pages, are necessary to ground your AI.
- PMs Main Responsibilities
- PMs Must Be Able To Answer
- Define the authoritative documents represent the "truth" to prevent AI contradictions.
- Decide freshness requirements and speed of knowledge based on how quickly your data changes.
- Capture high‑level ingestion rules, taxonomy, and data types in your AI PRD.
- Which specific systems (e.g., Google Drive, Confluence, HRIS) will act as the data source?
- How often should the system update (e.g., daily, weekly, or triggered by a change)
- Who is authorized to view specific documents within the AI interface?(e.g., external vs. internal users)

**Speaker notes:**

> Notes
> Data preparation for RAG ingestion is about deciding what the AI is actually allowed to know. You are moving from a world of general knowledge to a world of proprietary "truth," and that requires a level of data hygiene that most PMs overlook until the system starts hallucinating outdated policies.
> Your main responsibilities at this point are to:
> Identify Authoritative Sources: You are the curator of the "library." If you allow the system to index three different versions of an expense policy, the AI will eventually give the wrong answer. You must define which documents are the "source of truth" and ensure only those are fed into the pipeline.
> This requires you to answer the question: “Where does that “truth” live?” Are you pulling from a public Google Drive, a locked Confluence space, or a specialized HRIS system? Each source comes with its own technical debt and connection complexity.
> Set Freshness SLAs: You need to determine how "live" this data needs to be. For an HR bot, a 24-hour sync might be perfect, but for a technical support tool, you might need a "sync on change" trigger. You are setting the service level agreement that your engineering team will build toward.
> You need to be able to answer the question: “How often are we updating?” This is where you balance cost and relevance. Every sync consumes tokens and compute time, so you have to decide if the business value of a real-time update justifies the added architectural overhead.
> Document Ingestion Rules: Don't treat this as a one-time upload. You should capture the specific ingestion rules, like which file types are supported, which folders are excluded, and who has viewing access to them, directly in your PRD so there is no ambiguity about the system's knowledge or user access boundaries.
> You must be able to answer: “Who is authorized to view these documents?” This is your primary risk mitigation lever. You must ensure that the AI respects existing document permissions so that a junior employee cannot "query" their way into seeing executive-level payroll or legal secrets.
> Once you’ve defined this library of knowledge, how is it stored?

## Slide 21

### Augmentation Considerations

- Augmentation is where you transition from the wording of prompt engineering to the data design of context engineering. It is the process of "packaging" retrieved data into the system prompt to ground the model in your proprietary facts.
- PM Requirement Levers
- AI PRD Connection
- Filters: Define the hard rules for your metadata to ensure the AI never retrieves restricted or outdated data.
- Top-K: Specify the exact number of document segments to include; High for deep synthesis, low for fast, low-cost production.
- Re-Ranking: Tell the system how to prioritize conflicting information to ensure the most authoritative sources appear first.
- These are your Model and Data Requirements. You are specifying the "Physics" of the prompt to prevent hallucinations and manage token costs.

**Speaker notes:**

> Notes
> When it comes to the augmentation phase of RAG, you must consider and decide exactly which facts are allowed into the "Context Sandwich" that you feed the LLM.
> Here are your requirement levers:
> Filters: This is where you define your Data Requirements in the PRD. You specify that if a user is in the EU, the system must filter for region=EU. This prevents the AI from accidentally giving a French employee a US-only benefits answer.
> Top-K: This is your primary Cost and Latency lever. In your requirements, you define the "Top-K"—the number of chunks the model reviews. At RocketShip, if Juno is synthesizing 50 user interviews, you might set a high Top-K (10+ chunks). If it's just a quick "how-to" question, you set it to 3 chunks to save money and speed up the response.
> Re-Ranking: This is your "Authority Filter". If your search returns three different documents about a feature, you specify the logic to re-rank them so the "Golden Source" or the most recent version is at the top of the prompt.
> This is how you shift from managing files to managing knowledge units. By documenting these logic filters in your AI PRD, you are defining the "Physics" of the prompt, ensuring the system is maintainable and scalable.

## Slide 22

### Language Learning Models (LLMs) have revolutionized the field of natural language processing, enabling machines to understand and generate human- like text. At the core of LLMs lies the concept of tokens, which serve as the fundamental building blocks for processing and representing text data. In this blog post, we'll demystify tokens in LLMs, unraveling their significance and exploring how they contribute to the power and flexibility of these remarkable models.

- The Physics of RAG
- Tokens and Context Windows
- Data  lost out of context windows
- Context window
- (number of tokens long)
- Time
- 1st
- Response
- 2nd Prompt
- 2nd
- Response
- 3rd Prompt
- 1st Prompt
- Source: Understanding Context Windows in LLMs
- A token is the fundamental unit of compute. Your Cost Per Query is the sum of tokens in the prompt, the context retrieved via RAG, and the generated response.
- A context window is the model's "short-term memory" limit for a single session. Exceeding or bloating this window increases latency and causes the model to lose facts buried in the middle of the text.
- Use the Top-K requirements to stay within this "memory" limit without breaking the bank.

**Speaker notes:**

> Notes
> We’ve talked about the trade-offs of cost and latency, but to own those decisions, you have to understand the Physics of how these models actually process information. To fill out the AI Costs section of your PRD, you have to speak the language of tokens and understand where their limit lies in the context window of the model you choose. If your RAG system retrieves 10 chunks of 500 tokens each, you are paying for 5,000 tokens of "context" before the AI even starts typing its answer.
> What is a token? A token is the fundamental unit of compute; it can be a word, part of a word, or punctuation. On average, one token works out to about 0.75 words.
> Why do tokens matter for RAG? Your Cost Per Query is the sum of the tokens in your prompt, plus the document "chunks" retrieved via RAG, plus the tokens generated in the final answer.
> What is a context window? A context window refers to the amount of information an AI model can process and retain in a single session. It is the model's "short-term memory" limit. Once the limit is reached, older data in a conversation is no longer factored into the AI's responses.
> Why do context windows matter for RAG? The limit isn't just about storage; it is key to performance. "Stuffing" too much data into the window causes the "Lost in the Middle" phenomenon, where the AI ignores the most important facts because they were buried in the middle of a massive prompt.
> Your job as a PM is to define the token ceiling in your PRD: "This feature must resolve queries using fewer than 4,000 tokens to maintain our $0.05 per-query cost target".

## Slide 23

### Choosing Your RAG Architecture

- A large frontier model processes all relevant documents directly in the prompt using a massive context window.🥇Best when speed to prototype matters and data volume is limited. Main downside is high “token tax" costs and risk of the model missing facts buried in the middle.
- A mid-sized model uses a vector database to retrieve only the most relevant document segments per query.🥇Best when accuracy, citations, and cost predictability matter. Main downside is higher upfront engineering complexity to build and maintain the retrieval pipeline.
- RAG identifies the correct files while a large context window allows the model to "read" those specific results in full.🥇Best for mature products requiring both global search and deep document reasoning. Main downside is increased system complexity and higher latency from the loop.
- Long Context Only
- RAG
- Hybrid Approach
- VS
- VS

**Speaker notes:**

> Notes
> When you make the choice between models and their capabilities in terms of their RAG abilities, it’s not always about a"smarter" model. Each model (including its token costs and context window) steer your unit economics and user experience of your feature. These choices determine if your product is profitable, fast, and reliable, which is why architecture must be made explicit in your AI PRD.
> So how do you decide between a long context vs shorter context vs hybrid approach?
> Long Context: This is often the starting point for a V1 because it requires the least engineering. However, you are accepting a high "Token Tax" on every query because you’re paying to send the whole library when the user only needs one sentence.
> RAG: This is where you move from "paying for tokens" to "engineering for precision." It’s the standard for scaling because it keeps margins high and hallucinations low by only showing the model exactly what it needs to see.
> Hybrid: This represents the most mature strategy. It balances the "search" power of RAG with the "reasoning" power of long context, ensuring the model doesn't lose the "big picture" of a document while still keeping the global search efficient.
> As a PM, you are the one who decides which trade-offs the product can live with by specifying the architecture that aligns with your business goals and user needs.

## Slide 24

### The “Where” of Your Data

- Dynamic and Frequently Updated:Use RAG when your data changes hourly or daily because it only requires updating the index, not the model.
- —
- Static and Deep Context: Use Long Context when you have a fixed set of documents where the relationship between the beginning and end of the text is the primary goal.
- The “How” of a User Task
- Pinpoint Information Retrieval:Use RAG if the user asks targeted questions like, "What was the specific SKU for the October order?" where a verifiable source link is required.
- —
- Holistic Narrative Analysis: Use Long Context if the user needs to "Compare the tone of these three 50-page scripts" or identify implicit themes that are spread across thousands of lines of text.
- The “Scale” of the Product
- Massive Libraries:Use RAG for knowledge bases with 10,000+ documents that physically cannot fit into a single context window without breaking the system.
- —
- Focused Sessions: Use Long Context or a Hybrid approach for personalized user sessions where the AI only needs to remember specific data uploaded by that one user in that moment.
- Your Architecture Decision Factors

**Speaker notes:**

> Notes
> When it comes time to sit down with your Engineering Lead, they aren't going to ask which model is "better," they’re going to ask which costs you want to optimize and which errors you’re willing to tolerate. These three factors—Where, How, and Scale—are the levers you use to define the product’s unit economics and the user’s trust in the output. They are also the trade-offs you’ll have to make in terms of which architecture you go with.
> The “Where” (Data Dynamics): You have to choose between a live feed or a deep dive. If your value proposition relies on data that expires every few hours, RAG is your only choice because it keeps the model current without a full rebuild. However, if you are asking the AI to understand the structural logic of a 300-page technical manual, Long Context is superior because it maintains the "narrative thread" that gets lost when you chop data into small RAG chunks.
> The “How” (User Task): Think of this as the difference between a fact checker and a strategist. Use RAG when the user needs a needle in a haystack, like a specific SKU, where a verifiable source link is the primary requirement for trust. Choose Long Context when the task is about connecting the dots, like comparing the "vibe" of two different scripts, where the model needs to see the entire landscape to catch subtle, implicit themes.
> The “Scale” (Operational Limits): Finally, you must define the boundaries of the knowledge library. RAG is built for infinite scale; it’s how you query 10,000+ documents without crashing the system or your budget. Long Context is for high-intensity, "one-to-one" sessions where the user is focused on a specific project. As a PM, specifying these limits in your PRD prevents "architectural bloat" and ensures you aren't paying for a supercomputer when a focused reader will do.

## Slide 25

### Steps to follow:

- In your groups, return to your exercise guide and complete the AI PRD sections. Start with your Data Requirements for Juno; define what you will use for your RAG knowledge base, the quantity of data required to find a signal, and the frequency at which you plan to update it
- Detail your Model Requirements by selecting your retrieval strategy.
- Set your AI Costs & Latency boundaries. Use the Top K limit to manage the retrieval loop and costs.
- Define your AI User Experience for grounded trust. Specify exactly how Juno will present its sources and how it should respond when evidence is missing.
- Breakout Group Exercise
- Specifying Juno’s Architecture in Your AI PRD
- INSTRUCTIONS
- 30 minutes
- In this exercise, your group will complete snippets of your AI PRD, specifying the exact RAG architecture and retrieval logic needed for Juno to justify its prioritization choices.
- Your goal is to define how Juno retrieves and accesses knowledge, based on your AI Strategy One-Pager from Module 2,  to ensure the roadmap decisions are backed by verifiable evidence rather than just AI opinion.
- ✍️ Complete the activity using the same lab guide from earlier

**Speaker notes:**

> Notes
> 💥Activity: Breakout Group Exercise
> ✏️Task: Specifying Juno’s Architecture in Your AI PRD
> ⏱️Time: 30 Minutes
> 📌 Note for Instructors: Students are moving from "What should Juno do?" to "How must the system be built to actually do it?"
> Let students know that the content from their PRD snippet is a core component of their final project deliverables. The content should be added to the corresponding slide in their deck in the “RAG Architecture” section: Data Sources (data Requirements) and Data Strategy (Model Requirements + AI User Experience)
> Make sure you pop into breakout groups to ensure students are on the right track.
> Share the link to the exercise guide in the chat to avoid friction!
> Scenario: In this breakout group exercise, students will take the “evidence engine" concept and formalize the RAG and Model requirements into buildable AI PRD snippets. This document acts as the bridge between their strategy and implementation.
> Instructions:
> 👉 Make sure students return to their lab guide from earlier and go to the “Breakout Group Exercise” section.
> Remind students they can/should use their AI Strategy One-Pager as their source of truth for the Data and Model requirements sections.
> Students should work together to complete the four sections (Data, Model, AI Costs & Latency) and AI User Experience) to define the RAG architecture, specifically setting the Top K and Retrieval Strategy. This is where they decide how Juno "finds" the evidence.
> Remind students that the content from this AI PRD snippet is a required deliverable; they must add the content to the corresponding slide (RAG Architecture - Slide 7) in their deliverables deck.
> ➡️ Reminder to create Breakout Groups in Zoom

## Slide 26

### Product Managers must master context engineering to move AI beyond brittle prompts into scalable, production-grade RAG systems . This shift ensures factual grounding by designing the data inputs and constraints that govern model behavior.

- Strategic PMs determine intentional trade-offs between accuracy, latency, and cost by tuning architecture levers like Top-K . These technical decisions directly impact the product's operational margins and the final user experience.
- Key Takeaways
- Improve AI Product Requirements with RAG Architecture
- PMs must define precise data ingestion, chunking, and metadata rules within the AI PRD to ensure retrieval accuracy . This bridges the gap between high-level specs and the technical execution of a RAG knowledge library.
- PMs must balance architecture choices to trade implementation speed for operational cost and system control . This selection dictates whether the product prioritizes rapid prototyping or long-term financial and technical sustainability.

**Speaker notes:**

> Notes
> At the end of each module, recap key concepts and content covered in today’s lesson.

## Slide 27

### Extra Practice

- Optional: Dig deeper into your activities and experiences; try these exercises on your own.
- 1. The Prompt-to-RAG Prototype
- Identify one high-value "Knowledge Source" from your real-world job (e.g., your team's actual PRD folder, a specific API documentation set, or your last 5 customer discovery transcripts) and rewrite the example System Prompt to include instructions for citations and grounding. Define what your specific "Top K" would be to ensure the AI doesn't hallucinate company facts.
- 2. The "Real-World" PRD Snippet
- Draft a "Model & Data" requirement snippet for a feature you are actually planning or wish existed in your current product roadmap.Using the four sections from today’s exercise (Data, Model, Costs, UX), spec out a RAG-backed feature for your own product.
- Design AI-Native User Experiences
- ⏩  Next Session
- Overview
- Master the principles of AI-native UX to move beyond simple chat interfaces and design systems that prioritize user agency and trust.
- Leverage rapid prototyping to stress-test your AI features, transitioning from static product flows to dynamic, intent-driven interactions.

**Speaker notes:**

> Notes
> 📌 Note: that the “Dig Deeper” section is optional for students who want to get additional practice with more advanced topics or explore further on their own time.
> Next Session: Give a brief overview of what students can expect during the next session.
> ‹#›

## Slide 28

### Bonus

- Resources & Templates
- PRODUCT SCHOOL TEMPLATE
- View template
- AI PRD Template
- HANDS-ON LAB WALKTHROUGH
- Module 3 Exercise Guide
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

_(no text)_

**Speaker notes:**

> Thank you 💥
