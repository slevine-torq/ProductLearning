# Technical Fluency Program — Session Prompts

Three ready-to-run prompts, in order. Each is self-contained — paste it into a fresh Claude Code session in this folder and it has everything it needs, no prior conversation required.

**Why split across sessions:** each of these is a substantial build in its own right, and `_LD-BUILD-METHOD.md`'s core discipline — read the source completely, build a coverage map before writing — works best with a session's full attention on one artifact at a time.

**Run order:** mind map → book mining → reference tables. The tables should absorb what the book mining surfaces, and both should slot into the tiers the mind map defines.

---

## Prompt 1 — Learning path mind map (run first)

```
Build a "Torq Consultant Learning Path" cross-reference for the Product School folder at
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School

Read first, in full: PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md,
PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md, Torq Scoping Response.md,
PMC/Torq Lessons Build/Torq Rebuild/_REMIX-OTHER-COURSES.md, and
PMC/Torq Lessons Build/Torq Rebuild/Syllabus/Syllabus.md.

Goal: show how a Torq consultant should combine the existing course lines — Product Leadership,
PMC/Torq Rebuild (Torq Product Practice), AI Product Management / AI-PM-Cert, and Claude Code For PM —
rather than taking them as separate, siloed tracks.

Group consultants into 3 tiers: (1) Associate / Sr. Associate, (2) Consultant / Sr. Consultant,
(3) Principal Consultant / Associate Director / Director. For each tier, recommend which course(s)
or specific modules combine, and why that combination serves that tier's actual client-room needs —
ground this in _TORQ-COMPANY-CONTEXT.md's point that consultants get staffed fast, aren't embedded
FTEs, and are judged on client-visible deliverables. Use Torq Scoping Response.md and
_REMIX-OTHER-COURSES.md as your starting hypothesis, not the final answer — verify against the actual
course/module contents before finalizing.

This is a cross-reference and path-building exercise ONLY. Do not rewrite, restructure, or edit any
existing course content — per _LD-BUILD-METHOD.md Part 4 §5, that kind of remix has caused real damage
here before.

Deliverable: a new file at the top level of the Product School folder,
"Torq Consultant Learning Path.md", with a visual mind map (mermaid) plus a per-tier table:
tier → recommended course combination → why. Note explicitly where the Technical Fluency Reference
Guide (built in a later session) will plug into each tier's path once it exists — leave a placeholder
reference, don't build it here.
```

---

## Prompt 2 — Book mining (run second)

```
Research two books for content relevant to a Torq consultant technical-fluency program, in the Product
School folder at /Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product
School:

1. "Tech Simplified for PMs and Entrepreneurs"
2. "Cracking the PM Career: The Skills, Frameworks, and Practices To Become a Great Product Manager"

No PDF or ebook file is available for either book — first check whether one exists anyway in this
project or elsewhere on this machine (it may have been added since this prompt was written). If not,
work from legitimate online sources instead: the publisher's/author's own site, the book's official
table of contents and chapter descriptions, author interviews/podcasts/talks covering the book's
frameworks, the author's blog posts or LinkedIn posts that cover the same material, published reviews
that summarize its structure and key frameworks, and retailer "look inside" previews. Do NOT seek out
or use pirated full-text copies, and do not reproduce more than a short quote (attributed) from
anything you find — the goal is to identify and describe the book's frameworks in your own words, not
to reconstruct its text.

Search enough to build real coverage — not just the back-cover blurb. For "Tech Simplified for PMs and
Entrepreneurs": identify every technical concept, framework, or explanation-of-a-technology the book is
known for that a PM/consultant should be able to speak to — this directly feeds a later Technical
Fluency Reference Guide (tables covering things like React, Django, CRUD, cron jobs, MCP, etc., each
with what/why/where/example). For "Cracking the PM Career": identify its skill/competency frameworks
relevant to differentiating what an Associate-tier vs. Consultant-tier vs. Principal/Director-tier
consultant should know or be able to do — this feeds the 3-tier structure already established in
"Torq Consultant Learning Path.md" (read that file first for the tier definitions).

Follow the coverage-map discipline in PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md Part 2 —
one row per identified section/framework/chapter-topic, tagged Type (TEACHING/ADAPT/etc.) and a Source
column (which online source it came from) — before writing prose. Write notes in your own words,
clean-room style, not lifted from any single source's phrasing (see _LD-BUILD-METHOD.md Part 4 §7 on
why that produces near-copies). Where research coverage of a book is thin or a claim can't be verified
across at least one credible source, flag it explicitly as low-confidence rather than presenting it as
settled — this is reconstructed-from-secondary-sources content, not a direct read of the book, and that
limitation should be visible in the output.

Deliverable: two source-notes files (not a polished guide yet) — "Tech Simplified — Source Notes.md"
and "Cracking the PM Career — Source Notes.md" — each with a coverage map (including sources and
confidence per row) and extracted concepts/frameworks in your own words, ready for a later session to
build final tables/content from.
```

---

## Prompt 3 — Technical fluency reference tables (run third)

```
Build the Technical Fluency Reference Guide for Torq consultants in the Product School folder at
/Users/scottlevine/Library/Mobile Documents/com~apple~CloudDocs/01 Projects/Product School.

Read first: "Torq Consultant Learning Path.md" (tier definitions and where this guide plugs in),
"Tech Simplified — Source Notes.md" (if present), PMC/Torq Lessons Build/Torq Rebuild/_LD-BUILD-METHOD.md,
and PMC/Torq Lessons Build/Torq Rebuild/_TORQ-COMPANY-CONTEXT.md.

Goal: consultants (Associate through Director, including Transform/Enterprise Transformation PMs and
program/project managers) should never hear a technical term for the first time in a client room. This
is fluency — what it is, why it's used, where it shows up, one relatable real-world example — not "learn
to code." Cover at minimum: Swift, React, React Native, JSON, Django, Bootstrap, CSS, Java, HTML,
Python, CRUD, cron jobs, MCP, IDEs, plus whatever else "Tech Simplified — Source Notes.md" surfaced.

Structure: one master table (every term, one row, tagged by category — e.g. Language, Frontend
Framework, Backend Framework, Data Format, Concept, AI/Agentic Tooling) PLUS a separate deep-dive table
per category (e.g. a standalone "Frontend Frameworks" table covering React, React Native, Bootstrap,
CSS in more depth). A term legitimately appears in both the master table and its category table — that
overlap is intentional, not a duplication bug.

Differentiate content across the 3 consulting tiers already defined in "Torq Consultant Learning
Path.md": Tier 1 (Associate/Sr. Associate) gets broad exposure framing, Tier 2 (Consultant/Sr.
Consultant) gets working-fluency framing (can discuss trade-offs), Tier 3 (Principal/AD/Director) gets
strategic/risk framing — same underlying facts, different "why this matters to you" column or note per
tier. Every example must be real and verifiable (e.g., a real product/company known to use the
technology) — never a fabricated scenario, per _LD-BUILD-METHOD.md Part 4 §3.

Deliverable: a new file, "Technical Fluency Reference Guide.md", at the top level of the Product School
folder. Update "Torq Consultant Learning Path.md" to replace its placeholder reference with a real link
to this new file.
```

---

## Scoped out (for now)

*Decode and Conquer* and *Cracking the PM Interview* are interview-prep frameworks, not technical-fluency or learning-path material — they don't have an obvious home in this program. Worth a separate project later if there's appetite for an interview-prep module.
