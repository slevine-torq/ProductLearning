# M5 - Juno Langflow Walkthrough — Digest

**What it is:** the optional M5 post-class lab guide. A static, tabbed, step-by-step walkthrough (not an interactive builder — no data entry, no export) for running Juno's agent workflow in a real Langflow graph. Not required for course completion.

**QA note:** does not contain `scroll-snap`, `localStorage`, or `progressBar` (the three named artifact fingerprints), but is clearly a genuine self-contained artifact — full inline CSS/JS, tab-switching logic, zero `__next_f`. Treat "instructional walkthrough with no persistence" as a fourth legitimate artifact shape alongside deck/builder/pre-read.

---

## Structure

Two path tabs, switched via a simple `switchPath()` JS toggle (no localStorage — path choice doesn't persist across reloads):

### Path 1 · Import the starter (15 min)
1. Install + launch Langflow (Docker or pip; `http://localhost:7860`).
2. Import `juno-pm/05-agentic-workflows/Juno Agent.json` — starter graph already has: chat trigger → mock RAG retriever → OpenAI LLM → confidence guardrail → Slack post node.
3. Add `OPENAI_API_KEY` as a Credential-type variable (explicitly warns "never plaintext").
4. Replace the mock retriever with a real Chroma/Pinecone retriever pointed at the M3 KB index (RocketShip Strategy One-Pager + transcripts).
5. Set the confidence threshold on the guardrail node to match `agent-control-panel.md`'s value (example uses 0.70, matching the AWSpec Builder/Control Panel Juno examples).
6. Run in Playground with a sample P0 thread; verify ≥3 cited chunks + a confidence score + correct guardrail routing; screenshot canvas + output.

### Path 2 · Rebuild from scratch (45 min)
1. Drop a `Chat input` (or `Webhook` for production) as the trigger node.
2. Add a vector-store retriever (Chroma/Pinecone) against the M3 KB, Top-K=6, embedding model `text-embedding-3-small`.
3. Wire an `OpenAI` node: paste the North Star (from `agent-control-panel.md`) as system prompt, temperature 0.2 ("agents should be boring"), structured output `{risks, confidence, citations}`.
4. Add a `Conditional`/`Custom code` guardrail node branching on `output.confidence` vs. the threshold.
5. Wire action/tool nodes: `Slack post` → `#pm-daily` (matches Access Control rule), `Webhook` → PM review queue, both `max_retries: 2` (matches stop conditions).
6. Run + iterate in Playground; troubleshooting tips tie directly back to AWSpec concepts (low confidence → tighten prompt/raise Top-K; invented names → add explicit "never invent" line to North Star; missed retrieval → check embedding chunking).

Both paths end with the same "Definition of done": screenshots committed to `05-agentic-workflows/langflow-screenshots/` + a one-paragraph reflection in `05-agentic-workflows/langflow-notes.md` on what surprised the student vs. their AWSpec. Path 2 adds an optional bonus: export the final flow as JSON and replace the starter `Juno Agent.json`.

---

## Notable content details

- This is the first place in the course that explicitly operationalizes the AWSpec/Control Panel outputs into a **real runnable system** — every step explicitly cross-references a specific field from `awspec.md` or `agent-control-panel.md` (Top-K, North Star text, confidence threshold, Access Control channel restriction, stop-condition retry count), reinforcing that the two Lab deliverables are meant to be literally implementable, not just planning artifacts.
- Confirms the confidence threshold value used across the AWSpec Builder and Control Panel examples (0.70 / 70%) is the same value carried into this walkthrough — internally consistent.
- Confirms Top-K=6 from the M3 RAG lab / AI PRD Builder is the same retrieval parameter carried forward into M5 — a nice piece of continuity across M3 → M5.
- Introduces one new file not mentioned elsewhere: `05-agentic-workflows/langflow-notes.md` (the reflection paragraph) — worth adding to the per-class deliverables list; it's a lightweight, ungated (optional-lab-only) file, not a graded deliverable.

---

## Torq-rebuild notes

- This step-by-step "path tabs + numbered step cards + small illustrative SVG per step" format is a clean, reusable pattern for Torq's own optional/advanced tooling walkthroughs — notably lighter-weight than the interactive builders (no state, no export), appropriate for an optional stretch lab.
- The explicit cross-referencing back to specific AWSpec/Control Panel field values (rather than generic Langflow instructions) is the differentiator that makes this feel like a continuation of Juno's story rather than a generic tool tutorial — worth preserving that level of narrative specificity in the Torq rebuild rather than genericizing the walkthrough.
- Minor gap: `langflow-notes.md` is mentioned only here, not in the Notes.md deliverables list or the Resources card description — low-stakes since it's optional, but worth a one-line mention if the Notes doc's optional-lab section is ever revised.
