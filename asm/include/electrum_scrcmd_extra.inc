// Raw scrcmds missing from the upstream-generated scriptmacros.inc (confirmed absent from
// upstream/main as of the 64-commit merge, 2026-09-27 -- neighbors 148,149,151,152... are all
// defined there, 150 alone is skipped). Restored here so Electrum's own scripts that call it
// (scr_seq_00003_commonscript.s) keep assembling. Safe to delete once/if upstream ever adds it.

.macro scrcmd_150
.hword 150
.endm
