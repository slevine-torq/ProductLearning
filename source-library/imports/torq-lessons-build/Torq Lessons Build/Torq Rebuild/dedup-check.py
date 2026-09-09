#!/usr/bin/env python3
"""
De-duplication gate for the Torq rebuild.

Measures 8-word n-gram overlap between a built lesson and its source material,
so "rebuild the frameworks, not the prose" is a checkable claim instead of an
assertion. See Build/_BUILD-NOTES.md -> "The de-duplication gate".

Usage
-----
    # Check one course against one source module
    python3 dedup-check.py --source "../Source Material/Class 1" \
                           --built  "Build/Course 1 - Strategic Product Thinking"

    # Check a single file
    python3 dedup-check.py --source "../Source Material/Class 2" \
                           --built  "Build/Course 2 .../Task 1 - Whatever.html"

Thresholds (from _BUILD-NOTES.md)
---------------------------------
    <=8-10% overlap ............ pass
    >10% overlap ............... rewrite
    any matched run >15 words .. rewrite that passage regardless of the total

Exit code is 1 if anything fails, so this can gate a build step.
"""

import argparse
import html
import os
import re
import sys

NGRAM = 8
PCT_LIMIT = 10.0
RUN_LIMIT = 15

SKIP_NAMES = {".gitkeep", ".DS_Store"}


def read_text(path):
    """Plain prose from .md/.html — scripts, styles and tags stripped."""
    with open(path, encoding="utf-8", errors="replace") as fh:
        raw = fh.read()
    if path.lower().endswith((".html", ".htm")):
        raw = re.sub(r"<script[\s\S]*?</script>", " ", raw, flags=re.I)
        raw = re.sub(r"<style[\s\S]*?</style>", " ", raw, flags=re.I)
        raw = re.sub(r"<!--[\s\S]*?-->", " ", raw)
        raw = re.sub(r"<[^>]+>", " ", raw)
    return html.unescape(raw)


def normalise(text):
    """Lowercase word list, punctuation and smart quotes flattened."""
    text = (text.lower()
                .replace("’", "'").replace("‘", "'")
                .replace("“", '"').replace("”", '"')
                .replace("—", " ").replace("–", " ")
                .replace("·", " "))
    return re.sub(r"[^a-z0-9' ]+", " ", text).split()


def collect(path):
    """One file, or every readable file under a directory."""
    if os.path.isfile(path):
        return [path]
    found = []
    for root, _dirs, files in os.walk(path):
        for name in sorted(files):
            if name in SKIP_NAMES or name.startswith("~$"):
                continue
            if name.lower().endswith((".md", ".html", ".htm", ".txt")):
                found.append(os.path.join(root, name))
    return found


def shingles(tokens, n=NGRAM):
    return [tuple(tokens[i:i + n]) for i in range(len(tokens) - n + 1)]


def runs_of_matches(grams, source_set):
    """Contiguous stretches of matching n-grams -> (start, end) index pairs."""
    out, cur = [], None
    for i, gram in enumerate(grams):
        if gram in source_set:
            cur = [i, i] if cur is None else [cur[0], i]
        elif cur:
            out.append(cur)
            cur = None
    if cur:
        out.append(cur)
    return out


def main():
    ap = argparse.ArgumentParser(
        description="8-gram overlap check: built lessons vs. source material.")
    ap.add_argument("--source", required=True,
                    help="Source module file or folder (e.g. 'Source Material/Class 1')")
    ap.add_argument("--built", required=True,
                    help="Built lesson file or course folder")
    ap.add_argument("--pct-limit", type=float, default=PCT_LIMIT)
    ap.add_argument("--run-limit", type=int, default=RUN_LIMIT)
    ap.add_argument("--show", type=int, default=3,
                    help="Longest matched passages to print per file (default 3)")
    args = ap.parse_args()

    source_files = collect(args.source)
    built_files = collect(args.built)

    if not source_files:
        sys.exit(f"No source files found under {args.source!r}")
    if not built_files:
        sys.exit(f"No built files found under {args.built!r}")

    source_tokens = []
    for path in source_files:
        source_tokens += normalise(read_text(path))
    source_set = set(shingles(source_tokens))

    print(f"Source: {len(source_files)} files, {len(source_tokens):,} words")
    print(f"Gate:   <={args.pct_limit}% overlap, no matched run >{args.run_limit} words\n")

    failures = 0
    for path in built_files:
        tokens = normalise(read_text(path))
        grams = shingles(tokens)
        if not grams:
            continue

        hits = sum(1 for g in grams if g in source_set)
        pct = 100.0 * hits / len(grams)
        runs = runs_of_matches(grams, source_set)
        longest = max((r[1] - r[0] + NGRAM for r in runs), default=0)

        bad_pct = pct > args.pct_limit
        bad_run = longest > args.run_limit
        status = "FAIL" if (bad_pct or bad_run) else "pass"
        if status == "FAIL":
            failures += 1

        print(f"[{status}] {os.path.basename(path)}")
        print(f"        {len(tokens):,} words | overlap {pct:.1f}%"
              f"{'  <-- over limit' if bad_pct else ''}"
              f" | longest run {longest} words"
              f"{'  <-- over limit' if bad_run else ''}"
              f" | {len(runs)} matched passages")

        if status == "FAIL" and args.show:
            for start, end in sorted(runs, key=lambda r: r[1] - r[0], reverse=True)[:args.show]:
                length = end - start + NGRAM
                if length <= args.run_limit:
                    continue
                excerpt = " ".join(tokens[start:end + NGRAM])
                print(f"          [{length} words] {excerpt[:150]}...")
        print()

    total = len(built_files)
    if failures:
        print(f"{failures} of {total} file(s) FAILED the gate — rewrite before shipping.")
        return 1
    print(f"All {total} file(s) passed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
