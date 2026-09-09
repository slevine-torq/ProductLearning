# TorqHub production guide

**Portable file.** Everything needed to turn a captured course into a TorqHub build — the platform's structure, the production pipeline, what's reusable, and per-course roadmaps. Copy into any Torq L&D project.

Companions: [`_LD-BUILD-METHOD.md`](_LD-BUILD-METHOD.md) (platform-agnostic instructional method + failure modes) · [`_TORQ-COMPANY-CONTEXT.md`](_TORQ-COMPANY-CONTEXT.md) (audience) · [`_TASK-TEMPLATE.html`](_TASK-TEMPLATE.html) (the scaffold you start from).

---

## Part 1 — The hierarchy

```
Program            "An ordered set of courses. Learners take them in sequence —
  │                 each course unlocks when the one before it is complete."
  │                 Admin Panel → Programs. Shows "N courses · N assigned".
  │
  ├── Course       Title + optional blurb + optional cover image (falls back to a colour).
  │     │          Admin Panel → Courses. Shows "N tasks", expand/collapse, edit, delete.
  │     │
  │     ├── Task   A numbered item inside a course ("1. AI at Torq Intro").
  │     │    │     ONE Task = ONE "Mark complete" for the learner.
  │     │    │     Admin row shows "6 BLOCKS · HTML, PDF, CARD FLIPPING +3".
  │     │    │
  │     │    └── Block   One content piece inside a Task. A Task can hold several,
  │     │                of mixed types, all gated by that Task's single Mark complete.
  │     │                Added via "+ Add block" in the New/Edit Task modal.
  │     └── Task 2, 3…
  └── Course 2, 3…
```

**The single most important consequence:** a lesson's written content and its quiz/flashcards/sorting are **Blocks on the same Task**, not separate Tasks. Getting this wrong produces a course where every activity demands its own completion click.

### Block types (from the New Task modal)

| Type | Sub-options | Use for |
|---|---|---|
| **Content** | Video · **HTML** · PDF · Embedded page | The lesson itself. HTML accepts **Rich text** (their WYSIWYG) or **Upload HTML** (a file) |
| **Quiz** | — | Multiple-choice knowledge check |
| **Card flipping** | — | Two-sided study deck — term → definition |
| **Card matching** | — | Link each prompt to its match |
| **Card classification** | — | Sort statement-cards into named buckets |
| **External course** | — | Link out (e.g. OpenAI Academy) |
| **Built-in course** | — | TorqHub's own interactive course type |

Plus, on a Content block: an optional **Link button** (URL + label) that opens a URL in a new tab without hyperlinking inline text.

### Learner-side behaviour (confirmed from a live course)

Reference build: **"AI at Torq Intro"** — `gotorqhub.com/learning/36`.

- Multiple Blocks stack on one page under one Mark complete: *"4 activities still to finish to mark this complete."*
- Each Block shows its own progress: *"0 of 3 reviewed," "0 of 8 sorted," "0 of 5 linked," "0 of 11 answered."*
- Sorting supports **drag-and-drop OR select-card-then-select-bucket** — don't design content that only works one way.
- Matching is *select a prompt, then select its match* — so every prompt needs exactly one unambiguous answer. (A 2-category comparison belongs in Card classification, not matching.)

### Still unconfirmed — worth asking whoever runs TorqHub

1. **Is uploaded HTML iframed or injected into TorqHub's DOM?** Everything built so far assumes iframe/sandboxed. If it's injected, every task needs its CSS scoped under a unique wrapper and its JS kept off globals. Cheap now, expensive after 20 tasks.
2. **Do file downloads work inside that frame?** Artifacts offer Copy-as-text *and* Download-as-.md precisely because this is unknown; copy is the safe fallback.
3. **Is Google Fonts reachable under the CSP?** If blocked, Inter falls back to the system stack — acceptable, but worth knowing.
4. **Max upload size**, and whether Programs assign to individuals, groups, or both.

---

## Part 2 — The production pipeline

Six steps. Steps 1–2 are where the quality is won or lost; step 4 is where the time goes.

| # | Step | Output | Reusable? |
|---|---|---|---|
| 1 | **Capture the source** | Notes/Glossary as `.md`, decks + exercise guides + builders as HTML or digests | Method reusable — see `Source Material/_CAPTURE-GUIDE.md` |
| 2 | **Build the coverage map** | One row per source section → the Task covering it | Template reusable — see `_MODULE-COVERAGE.md` |
| 3 | **Derive the task split** | Task count and boundaries, *from the map* | Per-course |
| 4 | **Write the Task HTML** | One self-contained `.html` per Task | **Scaffold reusable — `_TASK-TEMPLATE.html`** |
| 5 | **Write the Blocks sheet** | One `.md` listing the flashcard/matching/sorting/quiz Blocks per Task | **Format reusable** |
| 6 | **Enter into TorqHub** | Program → Courses → Tasks → upload HTML + hand-add Blocks | Manual, by whoever has admin |

### Non-negotiables carried from the PMC build

- **The deck is the spec, not the summary.** Building from a `Notes.md` produces a summary of a summary. This cost four rebuild rounds.
- **1:1 with the source module structure.** Course N = Module N. Thematic remixes scatter content and make completeness unverifiable.
- **Task count comes from the coverage map**, never assumed up front.
- **Audience reframing lives in the writing** — examples, voice, artifacts, callouts — not in re-cutting the curriculum.
- Full rationale and the failure-mode catalogue: [`_LD-BUILD-METHOD.md`](_LD-BUILD-METHOD.md).

---

## Part 3 — What's already built that you don't rebuild

This is the actual answer to "cut down the time next time."

| Asset | What it saves | Where |
|---|---|---|
| **Task HTML scaffold** | ~300 lines of tokens, components, a11y, print styles, and the artifact JS — per task | `_TASK-TEMPLATE.html` |
| **Artifact pattern** | Checklist canvas + localStorage persistence + Copy-as-text + Download-as-.md, all iframe-guarded | In the template |
| **Brand token block** | Canonical hexes, gradient, fallback stack, contrast constraints already resolved | In the template; source of truth is `Torq Work/brandkit/` |
| **Coverage-map format** | The completeness mechanism | `_MODULE-COVERAGE.md` |
| **Blocks sheet format** | Correct Task/Block structure, modal-matching field order | `Build/Course 1 .../Course 1 - Blocks to Add.md` |
| **Audit script** | Banned hexes, exact gradient, focus rings, global `event`, JS parse, word count | Part 5 below |
| **Workspace design** | Local-git learner repo + README dashboard | `_TORQ-WORKSPACE.md` |
| **Orientation course** | Course 0 — pacing, structure, workspace setup | `Build/Course 0 - Before You Start/` |
| **Settled decisions** | Hierarchy, 1:1 structure, ownership framing, example rules, artifact conventions | `Build/_BUILD-NOTES.md` |

**Realistic effect:** Course 1 took five rounds and a full rebuild. The next course should be one pass — because the structure question is settled, the scaffold exists, and the coverage map catches omissions before review rather than after.

### Known drift to fix on next touch

The `:root` token block has already diverged slightly across the five Course 1 tasks (Task 1 carries an extra comment; Task 3 adds a mono font var). Harmless today, but it's why `_TASK-TEMPLATE.html` exists — start from it rather than copy-pasting a sibling task.

---

## Part 4 — Course roadmaps

### PMC — Product Management Certification · IN PROGRESS

Captured in full (6 modules). Structure: 1:1, one Program of Course 0 + Courses 1–6.

| Course | Source | Status |
|---|---|---|
| 0 · Before You Start | New | ✅ Built |
| 1 · Strategic Product Thinking | Module 1 | ✅ Built — 5 tasks, 19/19 coverage |
| 2 · Discovering Product Opportunities | Module 2 | Next — **build its coverage map first** |
| 3 · Analytics & Metrics for Product Decisions | Module 3 | Mapped, not built |
| 4 · High-Velocity Product Roadmaps | Module 4 | Mapped, not built (+1 Torq QA task) |
| 5 · Product Experimentation | Module 5 | Mapped, not built |
| 6 · Go-to-Market Launch Plans | Module 6 | Mapped, not built |

Detail: [`_PMC-REMIX-STRUCTURE.md`](_PMC-REMIX-STRUCTURE.md).

### The other courses — capture status: NONE

⚠️ **Everything below is from public catalogue pages, not captured curriculum.** Marketing copy, not source material. Treat as "where to start capturing." Nothing here is buildable until it goes through step 1.

#### Claude Code for PMs
[productschool.com/certifications/claude-code](https://productschool.com/certifications/claude-code) — structured around how PMs discover, scope, and ship using Claude Code: extracting insights from interviews, synthesising feedback, competitive analysis.

- **Least audience-reframing needed of any of these** — "use AI to move faster on PM work" is nearly as true for a consultant as an in-house PM.
- **Genuinely new section required:** client-data handling. A consultant running client transcripts through an AI tool has SOW/NDA obligations an in-house PM doesn't. Torq already has a real policy here — the live "AI at Torq Intro" course states *"confirm the engagement's policy and approved tools"* and references a *"Torq approved AI workspace."*
- **Reuse, don't reinvent, Torq's existing AI language:** the maturity model **Observer → Passenger → Driver → Designer** and the principle *"People are the edge. AI sharpens it."* are already canonical. Point at that course as a prerequisite rather than duplicating it.

#### Product Leadership (PLC)
[productschool.com/certifications/product-leader](https://productschool.com/certifications/product-leader) — public structure: 4 core modules (Advanced Product Strategy · Strategy Into Action/OKRs · Product Portfolio Management · capstone growth-strategy presentation) plus on-demand add-ons.

- **The open question that changes the whole course:** is this for consultants who might become a client's *interim* product leader (teach real ownership), or for consultants who *advise* a leader without taking the seat (teach influence)? Different course. Ask before capturing.
- Its capstone (growth strategy + priority ranking) overlaps PMC Module 6's final presentation — likely one shared "executive readout" treatment rather than two.

#### AI Product Management
Same publisher family. Related certs: Advanced AI Agents & Vibe Coding, AI Evals, AI Product Strategy for Leaders.

- **Sequencing question before capture:** Product School positions AI PM as foundational and Claude Code as the technical-execution follow-on. If Torq builds both, that ordering probably wants preserving — and both should sit downstream of the existing "AI at Torq Intro."

#### Template for adding a course

```md
### <Course name>
Source: <catalogue URL, confirmed <date>>
Public structure: <module list — UNVERIFIED until captured>

**Capture status:** none / partial / complete
**Audience reframe needed:** <what breaks for a Torq consultant>
**New content required:** <anything Torq needs that the source lacks>
**Overlap with existing Torq courses:** <what to point at instead of rebuilding>
**Open question that changes the course:** <the one thing to ask first>
```

---

## Part 5 — The audit script

Run against every Task HTML before it ships.

```bash
D="path/to/Course N - Name"
find "$D" -name "*.html" -print0 | while IFS= read -r -d '' f; do
  n=$(basename "$f")
  b=$(grep -cioE '#(3F39B8|51DCFE|5EFFCC|BEFFEA|B9F1FE|030F36|FAFAFB|1F1A78)' "$f" || true)
  g=$(grep -c 'linear-gradient(120deg, #2D53F2, #3A79F8 55%, #43A8FF)' "$f" || true)
  fv=$(grep -c 'focus-visible' "$f" || true)
  ge=$(grep -c '[^.]event\.' "$f" || true)
  j=$(node -e '
    const fs=require("fs");const h=fs.readFileSync(process.argv[1],"utf8");
    const m=h.match(/<script>([\s\S]*?)<\/script>/);
    try{ if(m) new Function(m[1]); console.log("OK"); }catch(e){ console.log("FAIL"); }' "$f")
  w=$(python3 -c "
import re,sys
t=re.sub(r'<script.*?</script>','',open(sys.argv[1]).read(),flags=re.S)
t=re.sub(r'<style.*?</style>','',t,flags=re.S); t=re.sub(r'<[^>]+>',' ',t)
print(len(t.split()))" "$f")
  echo "$n | banned:$b (want 0)  gradient:$g (want 1)  focus:$fv  globalEvent:$ge (want 0)  js:$j  words:$w"
done
```

Pass bar: `banned:0` · `gradient:1` · `focus:3` · `globalEvent:0` · `js:OK`. Also grep for confidential client names and any residue from renamed concepts.

---

## Part 6 — Quick start for the next course

1. Read [`_LD-BUILD-METHOD.md`](_LD-BUILD-METHOD.md) Part 4 (failure modes) — 5 minutes, saves rounds.
2. Confirm the source is fully captured. If not, capture it. Don't build from catalogue copy.
3. **Read every file in the module folder** — deck included, not just `Notes.md`.
4. Add the module's section table to [`_MODULE-COVERAGE.md`](_MODULE-COVERAGE.md). Classify every row. Map each TEACHING row to a Task.
5. Task count = what the map needs. The deck's own agenda usually reveals the natural boundaries.
6. Copy `_TASK-TEMPLATE.html` once per Task. Fill the marked regions. Delete unused component CSS.
7. Write one `Course N - Blocks to Add.md` — Blocks grouped under their parent Task, never as separate Tasks.
8. Run the audit script. Confirm coverage map has zero unmapped TEACHING rows.
9. Update `Build/_BUILD-NOTES.md` status and the `_TORQ-WORKSPACE.md` README dashboard.
10. Review before starting the next course.
