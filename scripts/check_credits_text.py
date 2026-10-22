#!/usr/bin/env python3
"""Sanity-check the credits reader text bank (data/text/854.txt) against the limits in src/credits_panel.c.

Hard limits (build fails): at least 3 messages + 1 entry, at most 128 entries, each message < 1000 characters,
at most 16 pages per entry, at most 9 lines per page. Soft limit (warning only): lines over ~46 characters may be
clipped at the right edge of the panel (the font is proportional, so this is only a guide).
"""
import re
import sys
from pathlib import Path

BANK = Path(__file__).resolve().parent.parent / "data/text/854.txt"
MAX_ENTRIES, MAX_PAGES, MAX_LINES, MAX_CHARS, WARN_WIDTH = 128, 16, 9, 1000, 46


def main():
    msgs = [m for m in BANK.read_bytes().decode("utf-8").split("\r\n")]
    if msgs and msgs[-1] == "":
        msgs.pop()
    errors, warnings = [], []
    if len(msgs) < 4:
        errors.append("need the title, two footers and at least one entry")
    entries = msgs[3:]
    if len(entries) > MAX_ENTRIES:
        errors.append(f"{len(entries)} entries (max {MAX_ENTRIES})")
    for i, m in enumerate(entries):
        where = f"entry {i} ({m.split(chr(92) + 'n')[0][:30]!r})"
        if len(m) >= MAX_CHARS:
            errors.append(f"{where}: {len(m)} characters (max {MAX_CHARS - 1})")
        if m.startswith("◆"):
            continue
        if "\\n" not in m:
            warnings.append(f"{where}: no body (needs a title line, then \\n, then text)")
            continue
        body = m.split("\\n", 1)[1]
        pages = [p for p in body.split("\\r") if p != ""]
        if len(pages) > MAX_PAGES:
            errors.append(f"{where}: {len(pages)} pages (max {MAX_PAGES})")
        for n, p in enumerate(pages, 1):
            lines = p.split("\\n")
            if len(lines) > MAX_LINES:
                errors.append(f"{where} page {n}: {len(lines)} lines (max {MAX_LINES})")
            for ln in lines:
                if len(re.sub(r"\{[^}]*\}", "", ln)) > WARN_WIDTH:
                    warnings.append(f"{where} page {n}: line may clip ({len(ln)} chars): {ln[:40]!r}...")
    for w in warnings:
        print("credits text warning:", w)
    for e in errors:
        print("credits text ERROR:", e)
    if errors:
        sys.exit(1)
    print(f"credits text: {len(entries)} entries OK")


if __name__ == "__main__":
    main()
