# Module 2, Know Your Users (Shareable Notes)

A faithful expansion of the Module 2 slides. Read in sequence. Use as revision or as a substitute if you missed the live session. Individual format throughout, every lab has a self-review pass and an async share in `#cohort-channel`.

> **What this module ships:** `02-research/`, an interview insight synthesis, a prioritized feedback report, a competitive matrix with gaps, and a one-page decision brief.

---

## Where this sits in the arc

You have a grounded workspace. Now feed it signal: synthesize interviews, process feedback at scale, map competitors, and land on a one-page brief that drives a decision.

## Signals into decisions

*Four lessons that compress weeks of research synthesis into an afternoon, without losing rigor.*

### 2.1 Extracting Insights from User Interviews · *35 min*

Turn raw transcripts into structured insight documents in minutes, not hours.

**Core ideas**

- **Transcript parsing** — Extracting structured data from messy interview text.
- **Quote extraction** — Pulling the most signal-rich verbatims.
- **Theme clustering** — Grouping observations into patterns across interviews.
- **Outlier detection** — Spotting the one-off that changes the direction.

**Lab**

Paste the three Streakly interview excerpts, Priya (power user, 18 months), Tom (churned after 5 weeks), and Amara (new, 10 days in). Ask Claude to identify themes, extract the top 3 verbatim quotes per theme, and produce a structured insight synthesis.

*Starter prompt:*

```
Here are 3 user interview transcripts. Please: (1) identify the top 5 themes across all 3, (2) extract the 3 best verbatim quotes per theme, (3) note any contradictions or outliers, (4) produce a structured insight synthesis document.

[paste transcripts]
```

**You walk away with:** An insight synthesis document with themes and verbatim quotes.

---

### 2.2 Making Sense of Large Feedback Sets · *30 min*

Process NPS verbatims, support tickets, and survey responses at scale.

**Core ideas**

- **Sentiment bucketing** — Grouping feedback by positive, negative, neutral.
- **Theme extraction** — Finding what keeps coming up across hundreds of responses.
- **Priority ranking** — Scoring themes by frequency and severity together.
- **Actionable findings** — Translating patterns into specific next steps.

**Lab**

Paste the 10 Streakly NPS verbatims. Ask Claude to identify top themes, separate praise from complaints, and call out the most actionable signal. Check: does it surface notification fatigue and the lack of a reason to come back after a broken streak?

*Starter prompt:*

```
Here is a set of raw customer feedback. Please: (1) extract all themes mentioned more than twice, (2) rank by frequency, (3) separate praise from complaints, (4) identify the top 3 actionable issues, (5) produce a findings report I can share with leadership.

[paste feedback]
```

**You walk away with:** A prioritized feedback report ready for leadership, and a candidate for a weekly feedback-monitor agent.

---

### 2.3 Running Competitive Analysis with Claude · *40 min*

Build a repeatable workflow for competitive research you can run any time.

**Core ideas**

- **Structured research** — Instructing Claude to research systematically, not randomly.
- **Competitor matrix** — A structured comparison across features, positioning, and pricing.
- **Gap identification** — Where your product has space competitors left open.
- **Repeatability** — A workflow you run fresh every quarter with one prompt.

**Lab**

Research Duolingo, Babbel, and Elevate. For each: how do they keep users engaged after the first week? What do their streak, reminder, and comeback (win-back) systems look like? Produce a matrix and identify 2 gaps none of them own, the white space for Streakly.

*Starter prompt:*

```
Research these 3 competitors: [A], [B], [C]. For each: core features, pricing model, target customer, key differentiators, notable recent changes. Then produce a comparison matrix and identify 2 gaps none of them are owning well.
```

**You walk away with:** A competitive matrix with positioning gaps called out.

---

### 2.4 From Research to a Decision Brief · *35 min*

Combine everything you have learned into one brief leadership can act on.

**Core ideas**

- **Evidence hierarchy** — Ranking sources by how much weight they should carry.
- **Brief structure** — Situation → Findings → Options → Recommendation.
- **One-page rule** — One page forces clarity; two pages invites debate.
- **Recommendation framing** — Phrasing a recommendation so it generates a decision, not a discussion.

**Lab**

Take your interview synthesis, feedback analysis, and competitive matrix from this module. Ask Claude to synthesize them into a one-page decision brief for Marcus, Head of Product. Recommendation: investigate the streak-break drop-off before committing to any solution scope.

*Starter prompt:*

```
I have these research outputs: [paste]. Please synthesize into a 1-page decision brief: Situation (2 sentences), Key Findings (max 5 bullets), Options Considered (2-3), Recommended Action (1 sentence), Why Now. Audience: my VP of Product.
```

**You walk away with:** A one-page decision brief ready to send.

---

## Key takeaways

- Verbatim quotes carry weight a paraphrase never will, extract them, don't summarize them away.
- A finding is actionable only when it points to a specific change the team can make.
- Competitive analysis exists to find gaps, space no one owns, not to copy feature lists.
- A decision brief ends with a recommended action; a research report just presents findings.
- Several of these workflows become part of your Comeback Coach in Module 6, note the agent-style prompts as you go.

---

## Self-review before you share

- Did you run the **AI interview / plan step** before building (Module 1 habit)?
- Is the artifact committed to the right folder with a clear filename?
- Could a teammate open your artifact cold and understand the decision behind it?
- Drop the repo link in `#cohort-channel`; the instructor responds in-thread within ~5 days.
