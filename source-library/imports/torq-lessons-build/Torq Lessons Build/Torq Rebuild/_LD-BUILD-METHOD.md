# L&D build method — research, principles, and the process that survives contact

**Portable file.** Self-contained — copy into any project where you're turning source material (a course, a deck, a certification, a body of documentation) into structured learning content. Nothing here is Torq-specific; the Torq details live in `_TORQ-COMPANY-CONTEXT.md`.

Two halves: **what the research says** about how adults actually retain professional training, and **the build process** — including the failure modes that cost five rebuild rounds on this project. The second half is the more valuable one, because it was earned rather than read.

---

## Part 1 — What the research says

### Microlearning is the 2026 default, and the reason is retention, not attention span

Short, focused sessions (roughly 3–5 minutes of content per unit) have become the operating standard for corporate L&D. The driver isn't that people have gotten lazier — it's forgetting curves. **Most new material is lost within 24–48 hours without reinforcement.** Spaced repetition — returning to material at intervals — is the most effective countermeasure available, and short units are what make spacing practical to schedule.

Practical consequence: **spread beats binge.** A learner doing 20–30 minutes a day across a week retains materially more than the same total hours consumed in one sitting.

### Compression is not the same as microlearning

This is the trap, and it's the one this project fell into. Microlearning does **not** mean "say less." Cutting content without attention to how people process and retain it produces confusion, not efficiency. The discipline is *cognitive precision* — sequencing, chunking, progressive reveal — while the substance stays intact.

The practical test: if a learner couldn't act on the material afterward, it wasn't shortened, it was gutted.

### The modern workplace is not a distraction-free classroom

Learners toggle between tools, carry asynchronous communication load, and work hybrid. Design assumes interruption: each unit should stand alone, be resumable, and not require holding four earlier units in working memory.

### Consulting-firm training patterns

Public detail on McKinsey/BCG/Bain internal curricula is thin, but the consistent, documented shape is: **structured onboarding → learn-by-doing on real client work → a regular feedback cadence.** The through-line is that training attaches to work the person is actually doing, rather than to a simulation.

This validates an artifact-first design: every unit should end in something the learner builds against their own live work, not a hypothetical.

### Sources

- [Designing Microlearning That Works: Applying Cognitive Load Theory in Practice — Learning Guild](https://www.learningguild.com/articles/designing-microlearning-that-works-applying-cognitive-load-theory-in-practice)
- [Microlearning in 2026: The Ultimate Guide for L&D Professionals — Door Training](https://doortraining.co.in/a-complete-guide-to-microlearning-for-ld-leaders-in-2026/)
- [Why Microlearning Is Replacing Traditional Corporate Training in 2026 — ActWitty](https://actwitty.com/education/why-microlearning-is-replacing-traditional-corporate-training-in-2026/)
- [Corporate Instructional Design Best Practices — Mindstamp](https://mindstamp.com/blog/instructional-design-best-practices)
- [Training at McKinsey: What New Consultants Actually Learn](https://www.caseinterviewhub.com/post/training-at-mckinsey-the-learning-journey-of-a-fresh-consultant)

---

## Part 2 — Design principles that follow

| Principle | What it means in practice |
|---|---|
| **Spread, don't binge** | Recommend a daily time budget (~20–30 min), not a unit count. Units vary in length; total time is the real constraint. |
| **Each unit stands alone** | Resumable after an interruption. No dependency on holding three previous units in memory. |
| **Artifact-first, not lecture-first** | Every unit ends in something the learner builds and keeps — a canvas, worksheet, checklist, template — applied to their real work. |
| **Their own work is the practice substrate** | If the audience has live work to apply this to, use it. A shared fictional scenario is a fallback for audiences who don't (students, pre-hires), not an upgrade. |
| **Recall drills are the seasoning, not the meal** | Flashcards/quizzes/sorting build fluency in terminology. They don't teach judgment. Keep them small and adjacent to the content. |
| **Cover the source; tighten the prose** | Tables and short bullets over essayistic paragraphs. Tightening is a *prose* operation, never a *coverage* operation. |

---

## Part 3 — The build process

### Step 1 — Capture the source completely

Read **every file** in the source folder before writing anything. Not the summary. Not the highlights.

Where source material has both a summary document and a full deck/transcript, **the full version is the spec.** A summary is by definition a compression, and building from it produces a compression of a compression.

### Step 2 — Build a coverage map *before* writing

One row per section of the source. Give each row **two** tags — Type (did we cover it?) and Origin (how do we write it?) — then map it to the unit that will cover it.

**Type — governs coverage:**

| Type | Meaning | Rule |
|---|---|---|
| **TEACHING** | Real instructional content | Must map to a unit. No exceptions without a recorded, signed-off drop. |
| **ADAPT** | Exists but needs translation for the new delivery mode | Map it, note the translation. |
| **LOGISTICS** | Live-session mechanics with no self-paced equivalent (breaks, introductions, "cameras on") | Legitimately dropped. |
| **STRUCTURAL** | Navigation, agenda, syllabus slides | Folded into framing, not its own unit. |

**Origin — governs originality:**

| Origin | Meaning | Rule |
|---|---|---|
| **Industry-standard** | The concept exists in the field independently of this source | Teach the canonical version, not the source's renaming of it. Credit the real originator. |
| **Source-original framing** | The source's own coined term, bespoke table structure, or exercise design | Replace with the real-world equivalent. A source's *packaging* of a generic idea is the protected part. |
| **Real public case** | Documented business history (Netflix, Spotify, Amazon…) | **Keep.** Factual, not the source's IP, and usually the actual teaching. |
| **Added** | New content with no source equivalent | Flag explicitly so it's never mistaken for source coverage. |

**Template:**

```md
## [Source module] → [Course/unit name]

Source: `path/to/deck` (N words), plus notes, glossary, exercise guides.

| # | Section | Type | Origin | Covered by |
|---|---|---|---|---|
| 1 | ... | TEACHING | Industry-standard | **Unit 2** |

**Teaching rows: N. Mapped: N. Unmapped: 0.**
**Origin summary:** N Industry-standard · N Source-original · N Real public case · N Added.
```

Type makes "are we missing anything?" a **checkable question** instead of a matter of opinion. Origin does the same for "did we actually rebuild this, or just reword it?" — a question that turns out to need its own answer (see Part 4 §7).

### Step 3 — Let the map decide the unit count

Do not decide "this'll be two lessons" and then fit content into it. Count the source's real sections and split accordingly. Its own agenda/overview slides usually tell you where the natural boundaries are — use the author's structure rather than inventing one.

### Step 4 — Write, with the source open

Cover every TEACHING row. Keep prose tight and table-first. If a unit gets long, **split it into two units — never cut content to hit a length.**

### Step 5 — Audit before shipping

- Every TEACHING row mapped, zero unmapped.
- Rough word-count sanity check against the source's teaching content. Landing at half is a red flag, not an efficiency.
- Whatever technical/brand checks the project requires.

---

## Part 4 — Failure modes (all of these actually happened here)

Read this section before writing rules for yourself. Each of these was a well-intentioned rule that caused damage.

### 1. Targeting a summary's density

**What happened:** After feedback that a lesson was too long, the rule *"match the summary document's density"* got written into the build notes. But the summary was itself a compression of the deck. Every subsequent lesson became a summary of a summary. The course shipped at under half the source's teaching content.

**The fix:** the full source is the spec. Density rules can govern *prose style*; they must never govern *coverage*.

### 2. "Too long" misread as "cut content"

**What happened:** the real complaint was essayistic prose and a fabricated example. The correction applied was a length cap, which cut teaching material.

**The fix:** ask what specifically is too long. Almost always the answer is padding, not substance.

### 3. "No invented examples" over-applied

**What happened:** a correct rule (don't fabricate case studies) got applied to the source's *own* worked examples — real public cases, concrete trade-off scenarios — which were the teaching. The result read as thin and abstract.

**The fix:** the rule bans *you* inventing scenarios. It never licensed deleting the source's. Real public case studies are factual history, not fabrication.

### 4. Deleting content as "duplicate" without checking the concept

**What happened:** a section on cross-functional position was deleted as duplicative of a section on prioritization criteria, because both used similar phrasing about deciding direction. Different concepts. Real loss, caused by a fix.

**The fix:** confirm two sections teach the same *idea* before merging. When unsure, keep both.

### 5. Restructuring the curriculum before you understand it

**What happened:** an early decision remixed 6 source modules into 5 thematically-organized courses. It read well as a narrative and it scattered each module across multiple courses — which made completeness impossible to verify. Losses hid inside the reshuffling for four rounds.

**The fix:** default to **1:1 with the source structure.** Coverage becomes verifiable by construction. Audience reframing belongs in the *writing* — voice, examples, artifacts — not in re-cutting the curriculum. Restructure later, deliberately, once nothing is missing.

### 6. Fixing symptoms without re-checking the whole

**What happened:** each round addressed the specific complaint raised and never re-verified total coverage. New holes surfaced every round instead of the work converging.

**The fix:** after any content change, re-run the coverage check. That's what the map is for.

### 7. A rule nobody can mechanically check is a preference, not a rule

**What happened:** the build notes said *"rebuild the frameworks, not the prose"* from early on. Five rounds later, an 8-word n-gram check found three of five shipped lessons at **26–32% verbatim overlap** with the source deck — one passage 121 words long, copied intact. Nobody was ignoring the rule; the writing was done with the source open, paraphrasing in place, which produces near-copies while feeling like rewriting. And because every audit measured *coverage*, the problem was invisible for five rounds.

Worse, it was made *more* likely by a good fix: round 5 correctly restored missing content by pushing writers back to the full deck — which put the source text right next to the draft.

**The fix, in two parts:**
1. **Make it mechanical.** An n-gram overlap check per unit before it ships: ≤8–10% overlap, no matched run over ~15 words. Both thresholds matter — a unit can pass on percentage and still carry one lifted paragraph, which is exactly what two of the five did.
2. **Make it structural.** Write from the coverage map with the source file *closed*. The map carries what to cover; the source's sentences shouldn't be on screen while the new ones are being written.

**Generalises past copyright:** any quality bar stated only in prose ("keep it tight," "make it practical," "don't over-explain") will drift unless something checks it. If a rule matters, find the measurement — or expect to rediscover the violation several rounds later.

---

## Part 5 — Pre-ship checklist

- [ ] Every file in the source folder read — full deck, not just the summary
- [ ] Coverage map written, every TEACHING row mapped, zero unmapped
- [ ] Origin tagged on every TEACHING row; source-original framings replaced with real industry-standard equivalents
- [ ] Unit count derived from the map, not assumed in advance
- [ ] Written clean-room — from the map, with the source file closed
- [ ] **De-duplication gate passed: ≤8–10% n-gram overlap, no matched run over ~15 words**
- [ ] The source's own worked examples present, not stripped
- [ ] Nothing deleted as "duplicate" without a concept-level check
- [ ] Word count in a sane ratio to the source's teaching content
- [ ] Every unit ends in an artifact the learner keeps
- [ ] Artifacts target the learner's real work where the audience has any
- [ ] Recommended pace stated as a time budget, not a unit count
- [ ] Units stand alone and are resumable
- [ ] Attribution exists somewhere (one program-level sources page beats per-unit citations)
- [ ] Project-specific brand/technical audits pass
