@echo off
rem Pulls the scripts and zone events saved by DSPRE in rom.nds into the repo (data/scr_seq, data/eventdata/zone_event).
rem Run from cmd.exe or double-click. Extra arguments are passed to make, e.g.:
rem   pull_scripts.bat PULL_FLAGS=--dry-run
rem   pull_scripts.bat PULL_ROM=other.nds
wsl -d Ubuntu-Restore -e bash -lc "cd /home/hgengine/hg-engine-electrum-dev && make pull_scripts %*"
