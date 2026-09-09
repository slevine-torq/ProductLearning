# Module 5 — Lab Guide — Digest

**Source:** standalone self-contained HTML artifact (`Module 5 · Lab Guide · Product Leadership`). Same reusable auto-fieldification/autosave/export engine as M1–M4 Lab Guides. QA marker: `localStorage` key `plc-m5-labguide`, zero `__next_f`.

## What it is
Worksheet covering both Module 5 exercises: Exercise 1 (Make a Funding Decision, ~15 min, before break) and the Lab Exercise (Write Your Business Case One-Pager, ~25 min, lab section, 2 steps). Any table cell starting with `✍️` becomes a live textarea/input; autosaves to `localStorage`; Copy/Download-as-Markdown/Reset toolbar.

## Structure
1. Header/lead — "Judge a case, build your own."
2. Callout: guide covers both exercises; need a strategic Rock from M2 backlog for the lab.
3. **Exercise 1 divider** — Make a Funding Decision (individual, ~15 min, before the break).
4. **Read your assigned case** — scenario-picker card showing **both** full pre-built cases side by side (Fable students read Case A, Meridian read Case B):
   - **Case A · Fable · Team & Enterprise Tier**: bet = team tier at $12/seat/month targeting SMB wellness leads who adopted individually. Assumptions: individual-to-team conversion 4% of weekly-actives; avg team size 6 seats; annual team churn 15%; CAC/individual $38. Expected return: $864/converting user first-year ($12×6×12); at 4% across 3,000 weekly-actives = 120 converting users/quarter = $103,680 net-new ARR in Q1; payback 4.7 months. **Kill criterion:** if individual-to-team conversion has not reached 3% by end of Q2, go-to-market approach reassessed before Q3 headcount committed.
   - **Case B · Meridian · AI Bid Estimation**: bet = AI-assisted bid estimation in Standard tier, cuts time-to-quote 20% for PMs. Assumptions: Standard-to-Enterprise upsell improves 6%→8% within two quarters; avg Enterprise contract $28,000/yr; annual Enterprise churn 12%; Standard CAC $620. Expected return: $28,000 incremental ARR/upsell; at 8% across 400 Standard accounts = 32 upsells Year 1 = $896,000 incremental ARR; payback for $180,000 feature build = 2.4 months post-launch. **Kill criterion:** if Standard-to-Enterprise upsell has not reached 7% by end of Q3, AI estimation feature paused and Q4 engineering capacity reallocated before headcount committed.
5. **Step 2 (12 min)** — 4-question evaluation table: load-bearing assumption / structural problem hiding past headline numbers / is kill criterion complete and actionable / verdict (FUND / FUND WITH ONE CONDITION / DO NOT FUND, name the condition).
6. **Lab Exercise divider** — Write Your Business Case One-Pager (individual, ~25 min).
7. **Lab Step 1 (15 min)** — Write your business case: 4-field table (strategic bet / assumptions ranked / expected return unit+scale / kill criterion metric+threshold+timeline+consequence), using a Rock from M2 backlog.
8. **Lab Step 2 (10 min)** — Stress-test and finalize: full **CFO stress-test prompt** (verbatim below), then a field to paste the finalized one-pager.
9. Deliverable-commit callout: add business case one-pager to `04-financial-model/` — **confirmed Module 5 repo deliverable**.
10. Toolbar (Copy/Download/Reset).

## Embedded exercise data
Both full pre-built business cases (Case A/Fable, Case B/Meridian) captured verbatim above — richer and more numerically complete than the Slides' Cursor example or the Notes' summary.

## Reusable AI prompts
**CFO stress-test prompt** (verbatim):
> You are a Chief Financial Officer reviewing a product business case. Your job is to stress-test it using four checks, then give a verdict.
>
> The four checks are:
> 1. Load-bearing assumption: which single assumption, if 20-30% off, most changes whether this case holds? Name it and tell me what breaks.
> 2. Retention sensitivity: what does the model look like if churn is 10 points higher than projected? Does the LTV:CAC ratio still hold above 3:1?
> 3. Payback reality check: what is the payback period if acquisition cost runs 20% higher than projected? Is the business still willing to wait for it?
> 4. Kill criterion: score my kill criterion. Does it name a specific metric, a specific number, a specific timeline, and a specific financial consequence?
>
> After the four checks, give me one sentence: "I would / would not approve this case because ___." Then tell me the one thing I should fix before presenting it.
>
> Here is my business case:
> [PASTE YOUR CASE HERE]

This is the module's only AI prompt (consistent with the M2–M4 pattern of prompts living in the Lab Guide, not the Slides).

## Key interaction logic
Same auto-fieldification/autosave/Markdown-export engine as M1–M4. **`.bfg` briefing-toggle system**: the JS wiring (`document.querySelector('.bfg')`) is present but **no `.bfg` markup exists in this file's body** — dead/unused here, same as M1–M3 (M4 remains the only Lab Guide where `.bfg` is actually live).

## Torq-rebuild notes
- The paired pre-built business cases (Case A/B) are the most numerically complete worked examples in the course — strong candidates for a canonical "evaluate a business case" exercise, reusable independent of Fable/Meridian branding.
- The CFO stress-test prompt is a clean, reusable "adversarial review" prompt pattern — structurally similar to the M3 AI role-play prompt (assign AI a senior persona, give it a fixed evaluation rubric, request a verdict) — worth abstracting as a general "stress-test any case/plan through an AI persona with a fixed rubric" Torq prompt template.
- Confirms Module 5 produces a real repo deliverable (`04-financial-model/`), closing the loop with the Slides digest's finding.
