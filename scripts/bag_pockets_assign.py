#!/usr/bin/env python3
"""Assign .fieldPocket in data/itemdata/itemdata.c for the reworked bag pockets.

Lists (single source of truth):
  data/bag_pockets/held_items.txt   -> POCKET_HELD_ITEMS   (117 items)
  data/bag_pockets/mega_stones.txt  -> POCKET_MEGA_STONES  (92 stones)
Everything that still points at the old pockets (real Mail, the old Battle Items
such as X Attack) is moved to POCKET_ITEMS. Nothing else is touched.

Idempotent: re-running prints "0 changed" once the file is up to date.
Usage: python3 scripts/bag_pockets_assign.py [--check]
  --check  only verify; exit 1 if the file is not up to date.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ITEMDATA = ROOT / "data/itemdata/itemdata.c"
HELD = ROOT / "data/bag_pockets/held_items.txt"
STONES = ROOT / "data/bag_pockets/mega_stones.txt"
EXPECT_HELD, EXPECT_STONES = 117, 92


def read_list(path):
    return [l.strip() for l in path.read_text(encoding="utf-8").splitlines() if l.strip() and not l.startswith("#")]


def main():
    check_only = "--check" in sys.argv
    held = read_list(HELD)
    stones = read_list(STONES)
    assert len(held) == EXPECT_HELD and len(set(held)) == EXPECT_HELD, f"held list must be {EXPECT_HELD} unique items"
    assert len(stones) == EXPECT_STONES and len(set(stones)) == EXPECT_STONES, f"stone list must be {EXPECT_STONES} unique items"
    assert not set(held) & set(stones)
    held, stones = set(held), set(stones)

    src = ITEMDATA.read_text(encoding="utf-8")
    block_re = re.compile(r"^\[(ITEM_[A-Z0-9_]+)\]\s*=\s*\n\{.*?^\},", re.M | re.S)
    seen_held, seen_stones = set(), set()
    changed = {"held": 0, "stone": 0, "mail": 0, "battle": 0}
    problems = []

    def fix(m):
        name, block = m.group(1), m.group(0)
        cur = re.search(r"^(\s*\.fieldPocket\s*=\s*)(\w+)(,)", block, re.M)
        if not cur:
            return block
        pocket = cur.group(2)
        if name in held:
            new, key = "POCKET_HELD_ITEMS", "held"
            seen_held.add(name)
        elif name in stones:
            new, key = "POCKET_MEGA_STONES", "stone"
            seen_stones.add(name)
        elif pocket == "POCKET_MAIL":
            new, key = "POCKET_ITEMS", "mail"
        elif pocket == "POCKET_BATTLE_ITEMS":
            new, key = "POCKET_ITEMS", "battle"
        else:
            return block
        if name in held or name in stones:
            use = re.search(r"\.fieldUseFunc\s*=\s*(\w+)", block)
            bp = re.search(r"\.battlePocket\s*=\s*(\w+)", block)
            if use and use.group(1) not in ("0", "FALSE"):
                problems.append(f"{name}: fieldUseFunc={use.group(1)} (must be 0 in a Held/Mega pocket)")
            if bp and bp.group(1) not in ("BATTLE_POCKET_NONE", "FALSE", "0"):
                problems.append(f"{name}: battlePocket={bp.group(1)} (must be NONE)")
        if pocket == new:
            return block
        changed[key] += 1
        return block[: cur.start(2)] + new + block[cur.end(2):]

    out = block_re.sub(fix, src)
    assert seen_held == held, f"held items missing from itemdata: {sorted(held - seen_held)}"
    assert seen_stones == stones, f"stones missing from itemdata: {sorted(stones - seen_stones)}"
    left = re.findall(r"\.fieldPocket\s*=\s*(POCKET_MAIL|POCKET_BATTLE_ITEMS)\b", out)
    assert not left, f"{len(left)} items still use the removed pockets"
    if problems:
        print("\n".join(problems))
        sys.exit(2)
    total = sum(changed.values())
    print(f"changed {total}: held {changed['held']}, mega {changed['stone']}, mail->items {changed['mail']}, battle->items {changed['battle']}")
    if check_only:
        sys.exit(1 if total else 0)
    if total:
        ITEMDATA.write_text(out, encoding="utf-8", newline="")


if __name__ == "__main__":
    main()
