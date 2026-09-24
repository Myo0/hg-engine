#!/usr/bin/env python3
"""
Write Electrum's National Park Bug-Catching Contest wild-encounter table into
data/mushi/mushi_encount.bin (a plain file in the ROM's filesystem, not a NARC).

The vanilla contest reads this file directly (BugContest_InitEncounters, still
native/unhooked code -- see src/BugContestJudge.c for why it's not hooked) and
picks a species via a cascading-threshold roll against each entry's `rate`:
    roll = rand() % 100
    for each of the 10 entries in order: if roll >= entry.rate, use it
So an entry's REAL odds are the gap between its own rate and the previous
entry's rate, not the raw number -- vanilla's own curve (80/60/50/40/30/20/
15/10/5/0) works out to 20/20/10/10/10/10/5/5/5/5%. The last entry's rate must
stay 0 (it's the catch-all for every roll nothing earlier matched).

Species list matches data/Encounters.c's ENCDATA_D22R0102_NATIONAL_PARK_BUG_
CATCHING_CONTEST land slots (cosmetic-only table that drives PKCalc's location
panel) -- keep the two in sync if this ever changes. That table has 12 slots;
only the first 10 are used here (BUGMON_COUNT), the last 2 are SPECIES_NONE.

Same 10 entries repeat for all 4 of the file's day-of-week sets (Electrum's
own table doesn't vary by day either).

Run every build (base/ is wiped on `make clean`, and this file isn't part of
any NARC hg-engine's own build pipeline regenerates -- see project memory).

Usage: patch_bug_contest_encounters.py <path to base/root>
"""
import os
import struct
import sys

# (species id, min level, max level, rate, score) -- species ids are National
# Dex numbers, same convention the vanilla file already used.
ENTRIES = [
    (415, 18, 18, 80, 60),   # Combee
    (193, 18, 18, 60, 60),   # Yanma
    (451, 18, 18, 50, 60),   # Skorupi
    (666, 18, 18, 40, 60),   # Shelmet
    (638, 18, 18, 30, 80),   # Karrablast
    (283, 18, 18, 20, 80),   # Surskit
    (645, 18, 18, 15, 80),   # Joltik
    (214, 18, 18, 10, 80),   # Heracross
    ( 15, 18, 18,  5, 100),  # Beedrill
    (123, 18, 18,  0, 100),  # Scyther
]


def build_table():
    out = b""
    for _ in range(4):  # 4 day-of-week sets, identical
        for species, lvlmin, lvlmax, rate, score in ENTRIES:
            out += struct.pack("<HBBBBBB", species, lvlmin, lvlmax, rate, score, 0, 0)
    assert len(out) == 320, len(out)
    return out


def main():
    if len(sys.argv) != 2:
        print("Usage: patch_bug_contest_encounters.py <path to base/root>")
        sys.exit(1)

    root = sys.argv[1]
    path = os.path.join(root, "data", "mushi", "mushi_encount.bin")
    with open(path, "wb") as f:
        f.write(build_table())
    print("patch_bug_contest_encounters: wrote", path)


if __name__ == "__main__":
    main()
