# Import inventory

Imported on 2026-09-09 from the six ZIP files supplied by Scott. The original archives in `C:\Users\scott\Downloads` were read but not modified or deleted.

| Supplied archive | SHA-256 | Imported location | Retained files | Program use |
|---|---|---|---:|---|
| `Torq Lessons Build-20260909T192037Z-1-001.zip` | `61CE765B8182CD8D1A100AFE148669AF0493BD9C52983F124601050D2CBA3259` | [`torq-lessons-build`](source-library/imports/torq-lessons-build/) | 119 | Product Management for Consultants; shared build standards |
| `AI Product Management-20260909T192048Z-1-001.zip` | `AAB55D976DE1674351098CB0F11F9B67337D86639229F25092AFAEA9AFBF56A1` | [`ai-product-management`](source-library/imports/ai-product-management/) | 43 | Product Management for Consultants |
| `Technical Fluency Build-20260909T192057Z-1-001.zip` | `A80A6FACC313A78F8CB9052CDC49E0E1F35A531872134D43F0D9DD64A77230A9` | [`technical-fluency-build`](source-library/imports/technical-fluency-build/) | 21 | Technical Fluency for Transform Practice |
| `Product Leadership-20260909T192019Z-1-001.zip` | `A932F1CF8855F3268B35BCAFD914E2982D528F1BD882EC8A3F5CC2F8AB811E3B` | [`product-leadership`](source-library/imports/product-leadership/) | 37 | Product Management for Consultants |
| `Claude Code For PM-20260909T191720Z-1-001.zip` | `0A9BF0FD38FB635C8C3C727189E03F8D120C4896A2130909BF8A2ABED03DCE74` | [`claude-code-for-pm`](source-library/imports/claude-code-for-pm/) | 28 | Product Management for Consultants; starter reference |
| `drive-download-20260909T192103Z-1-001.zip` | `61FF37128C4669A8F504BD5209D1E53A4A389AB69B60A807401A7BFE1CEECFF0` | [`supplemental-library`](source-library/imports/supplemental-library/) | 10 | Cross-program maps, specifications, build prompts, and reference notes |

**Total retained:** 258 files.

## Intentional exclusions

| Exclusion | Count | Reason |
|---|---:|---|
| Third-party book PDFs | 2 | Avoid redistributing full book copies; retain citations and research notes instead. |
| Nested `.git` files from `pm-workspace` | 42 | Prevent an embedded repository and accidental reuse of historical remotes. |
| `.DS_Store` | 15 | Machine-specific macOS metadata. |
| `.claude/settings.local.json` | 2 | Local tool configuration, not portable source. |
| Microsoft Office lock file | 1 | Temporary file, not the underlying document. |

## Known content gaps and state corrections

- The supplied AI Product Management session state says Modules 2–6 are missing their standalone pre-reads. The supplied archive contains captured notes and tools but no Torq distillation directory.
- Product Leadership and Claude Code for PM are captured source lines; no completed Torq rebuild is present in the supplied files.
- Technical Fluency's program specification defines Courses 0–6 and 39 tasks. The supplied build contains lesson HTML for Courses 0–2 only; Courses 3–6 remain planned.
- Torq Product Practice contains completed Course 0–6 lesson HTML, while its `Source Material` remains captured third-party reference content.

## Import integrity

Files were copied from temporary extractions without changing their contents. Folder names inside each imported archive were preserved. Exclusions were applied during the copy, so the original ZIP hashes above remain the provenance record for the complete supplied packages.
