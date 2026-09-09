# Course 2 — Blocks to add by hand

These are **Blocks**, not Tasks. Each one gets added inside an existing Task via **"+ Add block"**, alongside that Task's HTML upload. They share the Task's single *Mark Complete* — none of them needs its own Task title.

Course 2 is the vocabulary-heaviest course in the program, so card flipping and card classification carry most of the load here. Every question below is answerable purely from having read that Task.

| Task | Blocks |
|---|---|
| 1 — Reading a Payload | 2 |
| 2 — APIs and the Four Hidden Questions | 2 |
| 3 — REST, GraphQL, and Webhooks | 3 |
| 4 — SQL, NoSQL, and the Data Warehouse | 2 |
| 5 — The Network Path | 3 |
| 6 — Identity and Encryption | 2 |

---

## Task: Reading a payload — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Payload Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: JSON | Definition: How systems send structured data to each other. Six types, no comments, no date type, and no schema of its own.
2. Term: XML | Definition: Verbose and nested, with a formal schema language. Nobody picks it for a new project, so finding it means the integration is old and probably standards-mandated.
3. Term: CSV | Definition: A flat text table. Universally supported and opens in Excel, which is how business data actually moves between organizations.
4. Term: YAML | Definition: An indentation-based configuration format. Carries config, not data — CI/CD pipelines, Kubernetes manifests, GitHub Actions workflows.
5. Term: Schema | Definition: The written contract for what fields mean. JSON has none by default, which is why undocumented payloads break quietly after a consultant leaves.

### Block: Data or configuration? — Type: Card classification
**Buckets:** Carries data, Carries configuration

1. "A JSON response from a customer API" → CARRIES DATA
2. "A GitHub Actions workflow file" → CARRIES CONFIGURATION
3. "A CSV export of last quarter's orders" → CARRIES DATA
4. "A Kubernetes manifest" → CARRIES CONFIGURATION
5. "An XML message from a hospital system" → CARRIES DATA
6. "A CI/CD pipeline definition" → CARRIES CONFIGURATION

---

## Task: APIs, and the four hidden questions — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: API Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: API | Definition: The contract for asking another system for something. Specifies endpoints, request and response format, authentication, rate limits, and versioning.
2. Term: Rate limit | Definition: How often you're allowed to ask. The difference between 10,000 calls a day and 10 a second is an architecture decision, not a detail.
3. Term: Versioning | Definition: What happens to your integration when the provider changes theirs.
4. Term: Vendor dependency | Definition: A third-party API is someone else's roadmap sitting inside your delivery date. It belongs in the risk register by name.

### Block: The four hidden questions — Type: Quiz
1. A stakeholder says "we'll just call their API — should be straightforward." What is that sentence?
   A. A reasonable plan you can estimate against
   B. A scoping claim that hides four unanswered questions  ← correct
   C. A technical decision that belongs to engineering
   D. A risk that should be escalated immediately

2. Which of these is NOT one of the four hidden questions?
   A. Does it expose the data we need?
   B. What's the rate limit?
   C. Which programming language is the API written in?  ← correct
   D. Who owns the credentials?

3. Why does "who owns the credentials?" matter to your schedule?
   A. It determines the security model
   B. Credentials are often held by a team outside your sponsor's control, with its own queue  ← correct
   C. It sets the rate limit
   D. It decides the response format

---

## Task: REST, GraphQL, and webhooks — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Interface Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: REST | Definition: An API organised around resources addressed by URL, acted on with HTTP verbs. Stateless, cacheable, and the lowest-risk default.
2. Term: GraphQL | Definition: One endpoint with a typed schema, where the client asks for exactly the fields it wants. Solves over-fetching; makes caching harder.
3. Term: Webhook | Definition: The provider POSTs an event to a URL you host. They tell you, instead of you asking.
4. Term: Over-fetching | Definition: Downloading a large response to display a small part of it — the problem GraphQL exists to solve.
5. Term: Duplicate delivery | Definition: Webhooks can and do arrive twice. Handling that is a requirement, not an edge case.

### Block: REST verb to CRUD operation — Type: Card matching
**Pairs (prompt → match):**
1. Prompt: POST | Match: Create
2. Prompt: GET | Match: Read
3. Prompt: PUT / PATCH | Match: Update
4. Prompt: DELETE | Match: Delete
5. Prompt: A single endpoint with a typed schema | Match: GraphQL
6. Prompt: The provider calls you when something changes | Match: Webhook

### Block: Which interface? — Type: Quiz
1. A mobile app downloads a large customer record to display three fields. What is this, and what addresses it?
   A. A rate-limit problem, addressed by caching
   B. Over-fetching, addressed by GraphQL  ← correct
   C. A webhook failure, addressed by retries
   D. A schema problem, addressed by XML

2. Your team is building a webhook receiver. What must be in the acceptance criteria?
   A. That the endpoint responds within 100ms
   B. That duplicate deliveries are handled  ← correct
   C. That it uses GraphQL
   D. That it polls as a fallback

3. A client built something bespoke instead of REST. What's the right response?
   A. Recommend migrating to REST
   B. Ask why — the answer is either a real constraint or accumulated debt  ← correct
   C. Treat it as a security finding
   D. Assume the team lacked experience

---

## Task: SQL, NoSQL, and the data warehouse — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Data Store Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: SQL database | Definition: Enforces a schema and guarantees transactions complete fully or not at all.
2. Term: NoSQL database | Definition: Relaxes schema and transactional guarantees in exchange for scale and flexibility, typically offering eventual consistency.
3. Term: Eventual consistency | Definition: For some window of time, two parts of the system can give different answers to the same question. A business decision disguised as a technical one.
4. Term: Data warehouse | Definition: Column-oriented storage optimised for analytical queries, loaded from production on a schedule — which is why the dashboard says "as of last night."

### Block: SQL or NoSQL? — Type: Card classification
**Buckets:** Says SQL, Can say NoSQL

1. "Account balances" → SAYS SQL
2. "A product catalogue" → CAN SAY NOSQL
3. "Patient medication records" → SAYS SQL
4. "Clickstream event data" → CAN SAY NOSQL
5. "Flight seat bookings" → SAYS SQL
6. "User session data" → CAN SAY NOSQL

---

## Task: The network path — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Network Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: DNS | Definition: Maps names to addresses. The address book — and a single point of failure most risk registers omit.
2. Term: TCP/IP | Definition: IP is the address and the route; TCP guarantees the data arrives complete and in order.
3. Term: HTTP | Definition: The request/response language, carrying methods, headers, and status codes.
4. Term: HTTPS | Definition: HTTP wrapped in TLS encryption — the sealed envelope.
5. Term: TTL | Definition: How long a DNS answer stays cached. The reason a cutover isn't instant.

### Block: Status code to meaning — Type: Card matching
**Pairs (prompt → match):**
1. Prompt: 200 | Match: OK — not a network problem
2. Prompt: 401 | Match: Unauthenticated — we're not logged in
3. Prompt: 403 | Match: Forbidden — logged in, but not allowed
4. Prompt: 404 | Match: Missing — wrong URL, or it's gone
5. Prompt: 500 | Match: Server error — their side broke
6. Prompt: 301 | Match: Moved — a redirect

### Block: Reading the failure — Type: Quiz
1. An integration returns 403. What kind of problem is it?
   A. The service is down
   B. The URL is wrong
   C. You're authenticated but not permitted  ← correct
   D. The network is unreachable

2. A migration cutover is planned for 9am. Why won't all users move at 9am?
   A. TCP retries delay the switch
   B. DNS answers stay cached until their TTL expires  ← correct
   C. HTTPS certificates take time to reissue
   D. Load balancers warm up gradually

3. The October 2016 Dyn attack took Twitter, Spotify, and Reddit offline. What does it illustrate?
   A. That DDoS attacks target large consumer brands
   B. That DNS is a shared single point of failure outside a company's own architecture  ← correct
   C. That those companies had inadequate redundancy in their applications
   D. That HTTPS does not protect against outages

---

## Task: Identity and encryption — additional Blocks

Add these to the same Task as the lesson's HTML upload, via "+ Add block."
They share that Task's one Mark Complete — no new Task title needed for any of them.

### Block: Identity Key Terms — Type: Card flipping
**Cards (term → definition):**
1. Term: Encryption in transit | Definition: Protects data moving across a network, using TLS. The S in HTTPS.
2. Term: Encryption at rest | Definition: Protects data sitting in storage — disks, databases, and backups. A separate control from in transit.
3. Term: VPN | Definition: An encrypted tunnel making a remote machine appear to be inside a private network. Often why something works in the client's office and not on your laptop.
4. Term: OAuth 2.0 | Definition: Issues scoped tokens so an app can act on a user's behalf without ever seeing their password.
5. Term: SSO | Definition: Centralises identity through one provider so a single login works across many systems. Reliably takes longer to integrate than estimated.

### Block: Where does it slip? — Type: Quiz
1. A client says "we're secure — everything is over HTTPS." What have they actually answered?
   A. Both encryption controls
   B. Encryption in transit only  ← correct
   C. Encryption at rest only
   D. Neither

2. An integration works from the client's office and fails from your laptop. What do you check first?
   A. The API rate limit
   B. The VPN  ← correct
   C. The DNS TTL
   D. The database schema

3. A deliverable requires SSO integration. What belongs in the plan from day one?
   A. A longer testing window
   B. The client's identity team as a critical-path dependency  ← correct
   C. A fallback password login
   D. A second identity provider
