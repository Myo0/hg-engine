#!/usr/bin/env python3
"""
Mirror the scripts and zone event data of a DSPRE-edited ROM into the repo.

DSPRE is the editor; data/scr_seq/*.s, data/scr_seq/include/event_*.inc and
data/eventdata/zone_event/*.json in this repo are a mirror of what the ROM holds, so that they can be read and
worked on here. This runs the repo's own dump tool (tools/source/dumptools/dump_event_scripts.py) in a private
scratch copy, so base/ and build/ are never touched, and then copies over ONLY the files whose content changed.

    make pull_scripts                       pull from rom.nds (or PULL_ROM=path/to/rom.nds)
    make pull_scripts PULL_FLAGS=--force    pull even if nothing looks changed
    make pull_scripts PULL_FLAGS=--dry-run  show what would change, write nothing

It also runs automatically at the start of every `make` (--auto): quiet and instant when rom.nds has not changed
since the last pull, never fails the build.

What counts as "changed" is decided by hashing the individual members of the script narc (a/0/1/2) and the zone
event narc (a/0/3/2) - not the ROM file, and not the generated text. The members hg-engine itself owns
(scr_seq_NNNNN_*.s: the common and trainer scripts) are ignored, since the build rewrites those on every ROM.
The hashes of the last pull are kept in .script_pull_state.json (gitignored).

When BUILD_DUMPED_SCR_SEQ or BUILD_DUMPED_EVENTDATA is on, the repo is the source of truth for the build, so --auto
does not pull. It only checks that the repo is not stale relative to rom.nds and fails the build if it is, because
building would overwrite what was saved in DSPRE. PULL_SKIP_GUARD=1 overrides that check.

Every file this overwrites is first copied to .script_pull_backup/<timestamp>/ (gitignored, last 5 runs kept).
"""

import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import time

REPO = os.path.realpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
STATE_FILE = os.path.join(REPO, ".script_pull_state.json")
BACKUP_ROOT = os.path.join(REPO, ".script_pull_backup")
BACKUPS_KEPT = 5

SCRIPT_NARC = "a/0/1/2"
EVENT_NARC = "a/0/3/2"
MAPNAME_FILE = "fielddata/maptable/mapname.bin"

# the trees the dump tool writes and that this mirrors into the repo
TREES = ("data/scr_seq", "data/eventdata/zone_event")
DUMP_TOOL = os.path.join("tools", "source", "dumptools", "dump_event_scripts.py")

# top level entries that must not be linked into the scratch copy of the repo (.git stays linked: the Makefile that the
# dump tool shells out to refuses to run outside a git work tree; nothing in the scratch run writes to it)
SCRATCH_SKIP = {"base", "build", "data"}


def log(msg):
    print(f"[pull_scripts] {msg}", flush=True)


def sha1(data):
    return hashlib.sha1(bytes(data)).hexdigest()


def engine_managed_members():
    """Script narc members whose source is hand-maintained (scr_seq_NNNNN_*.s); the dump never writes them."""
    members = set()
    for name in os.listdir(os.path.join(REPO, "data", "scr_seq")):
        m = re.match(r"scr_seq_(\d{5})_", name)
        if m:
            members.add(int(m.group(1)))
    return members


def load_rom(path):
    import ndspy.rom

    return ndspy.rom.NintendoDSRom.fromFile(path)


def fingerprint(rom):
    """sha1 of every non-engine-managed script member and every zone event member."""
    import ndspy.narc

    skip = engine_managed_members()
    scripts = ndspy.narc.NARC(rom.getFileByName(SCRIPT_NARC)).files
    events = ndspy.narc.NARC(rom.getFileByName(EVENT_NARC)).files
    return {
        "scripts": {str(i): sha1(f) for i, f in enumerate(scripts) if i not in skip},
        "events": {str(i): sha1(f) for i, f in enumerate(events)},
    }


def rom_stat(path):
    st = os.stat(path)
    return {"path": os.path.realpath(path), "size": st.st_size, "mtime_ns": st.st_mtime_ns}


def load_state():
    try:
        with open(STATE_FILE, encoding="utf-8") as fp:
            return json.load(fp)
    except (OSError, ValueError):
        return None


def save_state(rom_info, fp_now):
    tmp = STATE_FILE + ".tmp"
    with open(tmp, "w", encoding="utf-8") as fp:
        json.dump({"rom": rom_info, **fp_now}, fp, indent=0, sort_keys=True)
    os.replace(tmp, STATE_FILE)


def changed_members(state, fp_now):
    """Members whose hash differs from the last pull (or that the last pull never saw)."""
    out = []
    for kind in ("scripts", "events"):
        old = (state or {}).get(kind, {})
        for idx, h in fp_now[kind].items():
            if old.get(idx) != h:
                out.append((kind, int(idx)))
    return out


def describe(members, limit=8):
    names = [f"{'script' if k == 'scripts' else 'event'} {i}" for k, i in members]
    s = ", ".join(names[:limit])
    return s + (f" (+{len(names) - limit} more)" if len(names) > limit else "")


def build_scratch(scratch, rom, rom_path, ndstool):
    """A private repo-shaped directory: symlinks to everything except base/, build/ and the two dumped trees."""
    for entry in os.listdir(REPO):
        if entry in SCRATCH_SKIP:
            continue
        os.symlink(os.path.join(REPO, entry), os.path.join(scratch, entry))

    os.makedirs(os.path.join(scratch, "data"))
    for child in os.listdir(os.path.join(REPO, "data")):
        src, dst = os.path.join(REPO, "data", child), os.path.join(scratch, "data", child)
        if child == "scr_seq":
            shutil.copytree(src, dst)
        elif child == "eventdata":
            os.makedirs(dst)
            for sub in os.listdir(src):
                if sub == "zone_event":
                    shutil.copytree(os.path.join(src, sub), os.path.join(dst, sub))
                else:
                    os.symlink(os.path.join(src, sub), os.path.join(dst, sub))
        else:
            os.symlink(src, dst)

    # the two inputs the dump tool reads out of base/ (it reads them relative to the working directory)
    os.makedirs(os.path.join(scratch, "build"))
    mapname_dir = os.path.join(scratch, "base", "root", "fielddata", "maptable")
    os.makedirs(mapname_dir)
    with open(os.path.join(mapname_dir, "mapname.bin"), "wb") as fp:
        fp.write(bytes(rom.getFileByName(MAPNAME_FILE)))
    res = subprocess.run([ndstool, "-x", rom_path, "-9", os.path.join(scratch, "base", "arm9.bin")], capture_output=True, text=True)
    if res.returncode != 0 or not os.path.exists(os.path.join(scratch, "base", "arm9.bin")):
        raise RuntimeError(f"ndstool could not extract arm9 from {rom_path}: {res.stderr.strip() or res.stdout.strip()}")


def run_dump(scratch, rom_path):
    cmd = [sys.executable, os.path.join(REPO, DUMP_TOOL), "--scripts-only", "--repo-root", scratch, rom_path]
    res = subprocess.run(cmd, cwd=scratch, capture_output=True, text=True)
    if res.returncode != 0:
        tail = "\n".join((res.stdout + res.stderr).strip().splitlines()[-12:])
        raise RuntimeError(f"the dump tool failed (exit {res.returncode}):\n{tail}")


def diff_trees(scratch):
    """(relative path, is_new) for every dumped file whose content differs from the repo's."""
    out = []
    for tree in TREES:
        for root, _dirs, files in os.walk(os.path.join(scratch, tree)):
            for name in sorted(files):
                new_path = os.path.join(root, name)
                rel = os.path.relpath(new_path, scratch)
                old_path = os.path.join(REPO, rel)
                with open(new_path, "rb") as fp:
                    new = fp.read()
                if not os.path.exists(old_path):
                    out.append((rel, True))
                    continue
                with open(old_path, "rb") as fp:
                    if fp.read() != new:
                        out.append((rel, False))
    return sorted(out)


def apply_changes(scratch, changes):
    stamp = time.strftime("%Y%m%d-%H%M%S")
    backup_dir = os.path.join(BACKUP_ROOT, stamp)
    for rel, is_new in changes:
        dst = os.path.join(REPO, rel)
        if not is_new:
            os.makedirs(os.path.dirname(os.path.join(backup_dir, rel)), exist_ok=True)
            shutil.copy2(dst, os.path.join(backup_dir, rel))
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        shutil.copyfile(os.path.join(scratch, rel), dst)
    # keep only the most recent backups
    if os.path.isdir(BACKUP_ROOT):
        runs = sorted(os.listdir(BACKUP_ROOT))
        for old in runs[:-BACKUPS_KEPT]:
            shutil.rmtree(os.path.join(BACKUP_ROOT, old), ignore_errors=True)
    return backup_dir if any(not new for _, new in changes) else None


def pull(rom_path, rom, ndstool, dry_run):
    start = time.time()
    scratch = tempfile.mkdtemp(prefix="pull_scripts_")
    try:
        build_scratch(scratch, rom, rom_path, ndstool)
        run_dump(scratch, rom_path)
        changes = diff_trees(scratch)
        if dry_run:
            log(f"dry run: {len(changes)} file(s) would change")
            for rel, is_new in changes:
                log(f"  {'new     ' if is_new else 'modified'} {rel}")
            return changes
        backup_dir = apply_changes(scratch, changes) if changes else None
    finally:
        shutil.rmtree(scratch, ignore_errors=True)

    scr = [r for r, _ in changes if r.startswith("data/scr_seq/") and r.endswith(".s")]
    inc = [r for r, _ in changes if r.startswith("data/scr_seq/include/")]
    evt = [r for r, _ in changes if r.startswith("data/eventdata/")]
    log(f"updated {len(scr)} script(s), {len(inc)} event header(s), {len(evt)} event file(s) in {time.time() - start:.0f}s")
    for rel, is_new in changes:
        log(f"  {'new     ' if is_new else 'modified'} {rel}")
    if backup_dir:
        log(f"previous versions saved in {os.path.relpath(backup_dir, REPO)}/")
    return changes


def main():
    ap = argparse.ArgumentParser(description="Mirror DSPRE-edited scripts and zone events from a ROM into the repo.")
    ap.add_argument("--rom", default=os.path.join(REPO, "rom.nds"), help="ROM saved by DSPRE (default: rom.nds)")
    ap.add_argument("--ndstool", default=os.path.join(REPO, "tools", "ndstool"))
    ap.add_argument("--auto", action="store_true", help="run as part of the build: quiet when up to date, never fails it")
    ap.add_argument("--force", action="store_true", help="pull even if no member looks changed")
    ap.add_argument("--dry-run", action="store_true", help="list what would change, write nothing")
    ap.add_argument("--scr-seq-built", default="0", help="value of BUILD_DUMPED_SCR_SEQ from the Makefile")
    ap.add_argument("--eventdata-built", default="0", help="value of BUILD_DUMPED_EVENTDATA from the Makefile")
    args = ap.parse_args()

    built_from_repo = args.scr_seq_built == "1" or args.eventdata_built == "1"
    rom_path = os.path.realpath(args.rom)
    if not os.path.exists(rom_path):
        if args.auto:
            log(f"{args.rom} not found, skipping")
            return 0
        sys.exit(f"{args.rom} not found")

    try:
        state = load_state()
        info = rom_stat(rom_path)

        # cheap path: the ROM file is exactly the one seen at the last pull
        if state and state.get("rom") == info and not args.force:
            if not args.auto:
                log("up to date")
            return 0

        rom = load_rom(rom_path)
        fp_now = fingerprint(rom)
        changed = changed_members(state, fp_now)

        if built_from_repo and args.auto:
            # the build is about to overwrite those scripts from the repo; refuse if the repo is behind the ROM
            if changed and os.environ.get("PULL_SKIP_GUARD") != "1":
                log("STOP: BUILD_DUMPED_SCR_SEQ/BUILD_DUMPED_EVENTDATA is on, so this build would overwrite what is saved in")
                log(f"{os.path.basename(rom_path)} with the repo's older copy. Not yet pulled: {describe(changed)}")
                log("Run `make pull_scripts` first (or PULL_SKIP_GUARD=1 to build anyway).")
                return 1
            if state:
                # nothing to pull: remember this ROM file so the next build takes the cheap path
                save_state(info, {"scripts": state.get("scripts", {}), "events": state.get("events", {})})
            return 0

        if not changed and not args.force:
            if not args.dry_run:
                save_state(info, fp_now)
            if not args.auto:
                log("scripts and events unchanged since the last pull")
            return 0

        log(f"{len(changed)} changed member(s): {describe(changed)}" if changed else "forced pull")
        pull(rom_path, rom, args.ndstool, args.dry_run)
        if not args.dry_run:
            save_state(info, fp_now)
        return 0
    except Exception as exc:  # noqa: BLE001 - the auto pull is a convenience and must never break a build
        if args.auto and not built_from_repo:
            log(f"WARNING: automatic pull skipped: {exc}")
            return 0
        raise


if __name__ == "__main__":
    sys.exit(main())
