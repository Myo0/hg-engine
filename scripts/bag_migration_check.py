#!/usr/bin/env python3
"""Oracle for the bag layout migration (src/bag.c Bag_MigrateLegacyLayout).

Reads an OLD-layout .sav, works out where every stack must land (item data .fieldPocket in
data/itemdata/itemdata.c), and compares with a decoded in-RAM bag dumped from the emulator
(bag_dump.json from stone_tools/bag_rework/emu_bag.py).

Checks: same multiset of (item, quantity) overall, every stack in the pocket its item data says
(unless that pocket overflowed), nothing lost, registered items preserved, marker present.

Usage: bag_migration_check.py <old.sav> <bag_dump.json>
       bag_migration_check.py <old.sav>            (just print the expected landing summary)
"""
import json
import re
import struct
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OLD = [("items", 245), ("key", 92), ("tm", 101), ("mail", 12), ("med", 40), ("berry", 64), ("ball", 26), ("battle", 30)]
NEWCAP = {"items": 126, "key": 39, "tm": 101, "held": 117, "med": 40, "berry": 64, "ball": 26, "mega": 96}
POCKET_NAMES = {0: "items", 1: "med", 2: "ball", 3: "tm", 4: "berry", 5: "held", 6: "mega", 7: "key"}
BAG_OFFSET = 96 + 48 + 1460  # sysinfo + player data + party chunk, into the active general copy
MARKER = (0xB46A, 2)


def pocket_table():
    hdr = (ROOT / "include/constants/item.h").read_text(encoding="utf-8", errors="ignore")
    alias = dict(re.findall(r"#define (\w+)\s+(\w+)\s*(?://.*)?$", hdr, re.M))
    ids = {}
    for m in re.finditer(r"#define (ITEM_[A-Z0-9_]+)\s+(\d+)\b", hdr):
        ids.setdefault(m.group(1), int(m.group(2)))
    for k, v in alias.items():  # aliases like ITEM_INFINITE_CANDY -> ITEM_SEED_OF_MASTERY_PLZA share an id; the later itemdata entry wins
        if k.startswith("ITEM_") and v in ids:
            ids.setdefault(k, ids[v])

    def resolve(sym, depth=0):
        if sym.isdigit():
            return int(sym)
        if depth > 8 or sym not in alias:
            raise KeyError(sym)
        return resolve(alias[sym], depth + 1)

    src = (ROOT / "data/itemdata/itemdata.c").read_text(encoding="utf-8")
    src = re.sub(r"^#if 0.*?^#endif", "", src, flags=re.M | re.S)  # disabled entries (the PLZA Seed of Mastery duplicate)
    out = {}
    for m in re.finditer(r"^\[(ITEM_[A-Z0-9_]+)\]\s*=\s*\n\{(.*?)^\},", src, re.M | re.S):
        f = re.search(r"\.fieldPocket\s*=\s*(\w+)", m.group(2))
        if f and m.group(1) in ids:
            out[ids[m.group(1)]] = POCKET_NAMES[resolve(f.group(1))]
    id2name = {}
    for k, v in ids.items():
        id2name.setdefault(v, k)
    return out, id2name


def read_old_bag(sav):
    d = Path(sav).read_bytes()
    c0 = struct.unpack_from("<I", d, 0xFF90)[0]
    c1 = struct.unpack_from("<I", d, 0x4FF90)[0]
    o = (0x40000 if c1 > c0 else 0) + BAG_OFFSET
    stacks = []
    for _name, n in OLD:
        for i in range(n):
            iid, q = struct.unpack_from("<HH", d, o + 4 * i)
            if iid or q:
                stacks.append((iid, q))
        o += 4 * n
    return stacks, struct.unpack_from("<HH", d, o)


def main():
    sav = sys.argv[1]
    pockets, id2name = pocket_table()
    stacks, regs = read_old_bag(sav)
    want = {k: Counter() for k in NEWCAP}
    for iid, q in stacks:
        want[pockets.get(iid, "items")][(iid, q)] += 1
    print(f"{sav}: {len(stacks)} stacks; expected landing (used/cap):",
          {k: f"{sum(v.values())}/{NEWCAP[k]}" for k, v in want.items()})
    over = {k: sum(v.values()) - NEWCAP[k] for k, v in want.items() if sum(v.values()) > NEWCAP[k]}
    print("expected overflow:", over or "none")
    if len(sys.argv) < 3:
        return 0
    dump = json.load(open(sys.argv[2]))
    got = {k: Counter(tuple(s) for s in v if s[0] or s[1]) for k, v in dump["pockets"].items()}
    ok = True
    if tuple(dump["marker"]) != MARKER:
        print("FAIL marker", dump["marker"]); ok = False
    if tuple(dump["regs"]) != tuple(regs):
        print("FAIL registered items", dump["regs"], "expected", regs); ok = False
    for k in NEWCAP:
        if got.get(k, Counter()) != want[k] and not over:
            print(f"FAIL pocket {k}: missing {dict(want[k] - got[k])} extra {dict(got[k] - want[k])}")
            ok = False
    all_got = sum((got[k] for k in got), Counter())
    all_want = sum((want[k] for k in want), Counter())
    if all_got != all_want:
        print("FAIL multiset: missing", dict(all_want - all_got), "extra", dict(all_got - all_want)); ok = False
    print("RESULT:", "PASS" if ok else "FAIL",
          "- in-RAM bag:", {k: sum(v.values()) for k, v in got.items()})
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
