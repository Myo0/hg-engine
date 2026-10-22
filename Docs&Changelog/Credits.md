# Credits reader

A full-top-screen text reader for crediting the people whose code and assets are used. It shows a scrolling list of
sections and names; selecting a name opens its pages. It is opened by a script, so any launcher (the planned 8th X-menu
icon, a key item, a debug button) just runs common script **2076**.

## Using it

- **List:** Up/Down moves between names (section headers are skipped), L/R jumps a screenful, A reads, B closes the reader.
- **Reading:** Up/Down (or Left/Right) changes page, A goes to the next page and, on the last page, back to the list, B goes back
  to the list.

To open it from a script: `callstd 2076` (or `EventSet_Script(fsys, 2076, NULL)` from C). It locks the player while open and
releases them when closed.

For testing without a launcher, uncomment `CREDITS_READER_DEBUG_TRIGGER` in `include/config.h`: the R button then opens the
reader instead of the Porta PC. Leave it off otherwise.

## Editing the content

Everything is in one text bank, `data/text/854.txt`. One line = one message:

| Message | What it is |
|---|---|
| 0 | the title at the top of every screen |
| 1 | the footer on the list screen |
| 2 | the footer on the reading screen |
| 3 and up | the entries, in display order |

An entry that **starts with the diamond (◆)** is a section header: shown in the list, not selectable. Any other entry is a
person or project:

```
Name or title\nFirst line of the body\nsecond line\r Next page starts here\nand continues\r
```

- the first line (up to the first `\n`) is both the list label and the title shown while reading
- the rest is the body; `\r` ends a page; `\n` is a line break
- the file keeps CRLF line endings like the other text banks

Limits (checked by `scripts/check_credits_text.py` on every build, which fails the build on a hard limit):

- 9 lines per page; about 45 characters per line before the right edge clips (the font is proportional, so this is a guide,
  and the check only warns)
- at most 16 pages per entry, 128 entries, 1000 characters per message

Characters must exist in `charmap.txt` (the build validates the bank). No links or markup.

## How it works

- `src/field/credits_panel.c`: the whole reader. It draws a 32x24-tile window on the overworld's own BG3 (main screen, priority 0,
  char base 0x8000), tiles 1 to 768. Those tiles are free while no dialog box or map-name popup is open, because those reload
  their graphics at 0x197 and above every time they open.
- `src/field/script_new_cmds.c` (see below): script sub-commands `DummyTextTrap 9, 0` (open) and `DummyTextTrap 10, 0` (one frame
  of input; sets `VAR_SPECIAL_RESULT` to 1 once closed).
- `data/scr_seq/scr_seq_00003_commonscript.s`: `scr_seq_0003_076_credits` (id 2076) opens the reader and ticks it one frame at a
  time with `wait 1` until it returns 1.
- `rom.ld`: `PutWindowTilemap = 0x0201D618|1`, the call that makes a drawn window visible.
- `gSystem.newKeys` is masked while a script is running, so the reader reads `gSystem.heldKeysRaw` and detects new presses
  itself.

### script_new_cmds.c moved

`script_new_cmds.c` (the `0xD0` sub-command dispatcher and the berry plant / EXP priming handlers) now lives in `src/field/`
(overlay 131) instead of `src/`, because the main code overlay was out of space. Nothing else changes: it is still hooked through
the `routinepointers` file, which finds the function wherever it is linked.
