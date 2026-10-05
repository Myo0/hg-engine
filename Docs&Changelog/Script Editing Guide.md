# Script Editing Guide (new dump-based format)

This covers how to write/edit `data/scr_seq/*.s` scripts now that they build directly into the
ROM (`BUILD_DUMPED_SCR_SEQ` is on -- see the upstream-merge-64 notes). The command and movement
**names are different from the old DSPRE-dumped scripts** you may remember editing -- this doc
exists to bridge that gap. Two full reference tables are cross-referenced straight from this
repo's actual `asm/include/scriptmacros.inc` / `asm/include/movements.inc` (not just copied from
the source CSVs), so the "Real macro"/"Named constant" columns are what you actually type.

Source CSVs this was built from live in `~/script help/` (not part of the repo):
`new scrcmd database - HGSS (2).csv` and `new scrcmd database - Movements.csv`.

## The core naming shift

The whole new toolchain mirrors the pret/pokeheartgold decompilation's own naming, not DSPRE's.
**Most commands are just the "Decomp name" column, snake_cased** (`NPCMsg` -> `npc_msg`,
`CloseMsg` -> `closemsg`, `LockAll` -> `lockall`). The "DSPRE name" column is what the old dumps
used and is a completely different scheme -- grepping for a DSPRE name in `scriptmacros.inc` will
not find anything.

**Important gotcha, found the hard way**: `asm/include/scriptmacros.inc` actually defines *two*
macros for most opcodes -- a snake_case one and a DSPRE-style CamelCase alias (both compile).
The dump tool consistently emits the snake_case one, so that's what you'll see in essentially
every real dumped script (verified by scanning actual usage across all 964 dumped files: 692 of
853 opcodes have real-script evidence, and of those only 5 ever show the CamelCase alias in
practice, always outnumbered 100:1+ by the snake_case form). **Do not trust the CSV's "Decomp
name" column as the real macro name** -- e.g. `CheckBadge`/`CountBadges`/`GivePokemon`/
`GetRandom` (all plausible-looking CamelCase names) are wrong; the real ones are `check_badge`/
`count_badges`/`give_mon`/`random`. Always check the table below (or `grep -i` the concept in
`scriptmacros.inc` and look for which spelling actually appears in a real `data/scr_seq/*.s`
file) rather than guessing from the CSV.

Commands with no real decompiled name (CSV shows a placeholder like `ScrCmd_260`/`CMD_260`) use
`scrcmd_NNN` (decimal opcode) as their real macro name.

## Everyday commands (quick reference -- see the full table below for everything else)

| What you're doing | DSPRE name | Real macro | Params |
|---|---|---|---|
| End script | `End` | `end` | |
| NPC dialogue box | `Message` | `npc_msg` | text slot |
| Field message (no NPC) | `MessageAll` | `non_npc_msg` | text slot |
| Close message | `CloseMessage` | `closemsg` | |
| Wait for button | `WaitButton` | `wait_button` | |
| Yes/No box | `YesNoBox` | `yesno` | var |
| Wait N frames | `WaitTime` | `wait` | time, var |
| Call common script | `CommonScript` | `callstd` | global script ID |
| Jump | `Jump` | `goto` | label |
| Conditional jump | `JumpIf` | `goto_if`, or `goto_if_eq`/`goto_if_ne`/`goto_if_gt`/`goto_if_ge`/`goto_if_le` | label |
| Call subroutine | `Call` | `call` (+ `call_if_eq`/`call_if_set`/etc.) | label |
| Return | `Return` | `return` | |
| Compare var<->value or var<->var | `CompareVarValue`/`CompareVars` | `compare` (auto-picks the right one) | var, value/var |
| Set/clear/check flag | `SetFlag`/`ClearFlag`/`CheckFlag` | `setflag`/`clearflag`/`checkflag` | flag |
| Set var | `SetVar` | `setvar` | var, value |
| Var += / -= | `IncrementVar`/`DecrementVar` | `addvar`/`subvar` | var, amount |
| Copy var | `SetVarFromVariable` | `copyvar` | dst, src |
| Apply movement | `Movement` | `apply_movement` | object, label |
| Wait for movement | `WaitMovement` | `wait_movement` | |
| Lock/release everyone | `LockAll`/`ReleaseAll` | `lockall`/`releaseall` | |
| Lock/release one object | `Lock`/`Release` | `lock`/`release` | event ID |
| Give/take item | `GiveItem`/`TakeItem` | `giveitem`/`takeitem` | item, amount, var |
| Check item | `CheckItem` | `hasitem` | item, amount, var |
| Play sound effect | `PlayFanfare` | `play_se` | sound |
| Play music | `PlayMusic` | `play_bgm` | music |
| Trainer battle | (custom in old dumps) | `trainer_battle` | trainer, arg1, arg2, arg3 |

`compare` (`scriptmacros.inc:5240`) inspects its second argument and expands to
`compare_var_to_var` if it looks like a variable, or `compare_var_to_value` otherwise -- real
scripts almost never call the two base compare commands directly.

`goto_if`/`call_if` take a numeric condition code; the convenience wrappers bake it in:
`_eq`=1 (equal), `_gt`=2 (greater than), `_le`=3 (less than or equal), `_ge`=4 (greater or
equal), `_ne`=5 (not equal). `call_if_lt` uses 0 (less than); `call_if_set`/`call_if_unset` do a
`checkflag` first and then `call_if 1`/`call_if 0`.

## Movement syntax

Real scripts don't use named movement macros for most actions -- they use a generic macro under a
label that `apply_movement <object>, <label>` points at:
```
_0126:
    step <code>, <repeat count>
    step_end
```
`<code>` is the **decimal** value of the movements table's hex ID column (e.g. hex `0x4B` ->
`step 75, 1` for an exclamation emote). Only a small, common subset has a named constant in
`asm/include/movements.inc` (see the "Named constant" column in the full table below) -- use
those where they exist, fall back to the raw decimal code otherwise. Note the movements CSV's
"Decomp name" column uses compass directions (`WalkNormalNorth`) but the actual named constants
use screen-relative `UP/DOWN/LEFT/RIGHT` -- match by hex code, not by name, between the two.

## File structure

- Every script opens with the same handful of `.include`s (`interop_macros.inc`,
  `scriptmacros.inc`, `flags.inc`, `soundeffects.inc`, `vars.inc`) plus whatever category-specific
  ones it needs (`events.inc`, `maps.inc`, `trainers.inc`, `items.inc`, etc.) -- copy the block
  from a neighboring script rather than guessing which ones you need.
- Every file opens with a `scrdef name_1, name_2, ...` / `scrdef_end` block declaring every label
  the script defines, then the actual `label:` bodies follow.
- Movement tables are separate auto-numbered labels (like `_0126`) referenced from the main
  script body via `apply_movement` -- not inlined into the main flow.
- `.balign 4` appears after each block in dumped files; the assembler/dump tool already handles
  this per block, you don't need to add it by hand unless writing something entirely new.
- No `.close`/`.create` wrapper anymore (that was the old armips format) -- each script file is
  its own standalone compiled unit.
- Custom raw scrcmds that upstream's auto-generated `scriptmacros.inc` is missing (confirmed at
  least `scrcmd_150`) live in `asm/include/electrum_scrcmd_extra.inc` -- check there before
  assuming a "bad instruction" error means the command doesn't exist.

## Worked examples

Real, syntactically-correct patterns pulled straight from scripts already in this repo (or
matching them exactly). Copy the shape, swap the arguments.

**Simple NPC dialogue** (talk, show one message, wait for the player, close):
```
scr_seq_XXXX_000:
    lockall
    faceplayer
    npc_msg 0
    wait_button
    closemsg
    releaseall
    end
```

**Yes/No branch** (ask a question, do something different depending on the answer):
```
scr_seq_XXXX_001:
    lockall
    faceplayer
    npc_msg 1
    yesno VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq _decline
    npc_msg 2
    wait_button
    closemsg
    releaseall
    end
_decline:
    npc_msg 3
    wait_button
    closemsg
    releaseall
    end
```

**Give an item with a full-bag check** (`giveitem`'s var comes back 1 on success, 0 if the bag
was full):
```
    giveitem ITEM_POTION, 1, VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 0
    goto_if_eq _bag_full
    play_fanfare SEQ_ME_ASA
    wait_fanfare
    npc_msg 4
    wait_button
    closemsg
    goto _done
_bag_full:
    npc_msg 5
    wait_button
    closemsg
_done:
    releaseall
    end
```

**Movement** (walk an NPC, wait for it, keep talking) -- the movement table is a *separate*
label the main flow points at with `apply_movement`, not inlined:
```
    apply_movement obj_player, _walk_forward
    wait_movement
    npc_msg 6
    wait_button
    closemsg
    releaseall
    end

_walk_forward:
    step MOVEMENT_STEP_UP, 2
    step MOVEMENT_FACE_DOWN, 1
    step_end
```

**Badge check** (the same gate used for Rock Climb -- `check_badge`/`count_badges` are exactly
the snake_case-vs-CamelCase-alias gotcha above: the CSV's "Decomp name" shows `CheckBadge`/
`CountBadges`, but the real macros dumped scripts actually use are lowercase):
```
    count_badges VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 12
    goto_if_lt _not_enough_badges
```
(`check_badge <badge index>, <var>` is the single-badge equivalent when you only care about one
specific badge rather than a total count.)

**Trainer battle**:
```
    trainer_battle TRAINER_SOMEONE, 0, 0, 0
```

**Common script call** (hands off to a shared script by global ID, waits for it to finish):
```
    callstd 2075
```

## Full scrcmd command reference (853 commands, sorted by opcode, cross-checked against real usage in all 964 dumped scripts -- 692 confirmed directly, 161 marked * where no real dumped script uses that opcode yet and the name is a best-guess fallback)

| Opcode | Real macro (seen in dumped scripts unless marked *) | Decomp name | DSPRE name | Parameters | Function | Notes |
|---|---|---|---|---|---|---|
| 0x000 | `snop` | Noop | Nop |  | Dummy command |  |
| 0x001 | `dummy`* | Dummy | Dummy |  | Dummy command | Has exactly the same ASM code as Nop. |
| 0x002 | `end` | End | End |  | Exits script execution and returns control to the player |  |
| 0x003 | `wait` | Wait | WaitTime | u16: Time; Var: Countdown Variable | Pauses for some frames, tracks the timer in a script variable |  |
| 0x004 | `loadbyte`* | LoadByte | RegValueSet | u8: Script Register; u8: Val | Loads 8-bit value into the specified script register |  |
| 0x005 | `loadword`* | LoadWord | RegDataSet | u8: Script Register; u32: Val | Loads 32-bit value into the specified script register |  |
| 0x006 | `loadbytefromaddr`* | LoadByteFromAddr | RegAdrsSet | u8: Script Register; u32: Address | Reads byte at a specific memory address into a script register Because scripts are compiled in a code-agnostic fashion, this command can never be assembled. |  |
| 0x007 | `writebytetoaddr`* | WriteByteToAddr | AdrsValueSet | u32: Address; u8: Reg | Writes byte to a specific memory address from a script register Because scripts are compiled in a code-agnostic fashion, this command can never be assembled. |  |
| 0x008 | `AdrsRegSet` | SetPtrByte | AdrsRegSet | u32: Address; u8: Script Register | Writes byte literal to a specific memory address Because scripts are compiled in a code-agnostic fashion, this command can never be assembled. |  |
| 0x009 | `copylocal`* | CopyLocal | RegRegSet | u8: Script Register 1; u8: Script Register 2 | Copies a byte between script registers |  |
| 0x00A | `copybyte`* | CopyByte | AdrsAdrsSet | u32: Address 1; u32: Address 2 | Copies a byte between two memory addresses Because scripts are compiled in a code-agnostic fashion, this command can never be assembled. |  |
| 0x00B | `compare_local_to_local`* | CompareLocalToLocal | CompareRegs | u8: Script Register; u8: Script Register | Compares values between script reg and script reg |  |
| 0x00C | `compare_local_to_value`* | CompareLocalToValue | CompareRegValue | u8: Script Register; u8: Val | Compares script reg to byte literal |  |
| 0x00D | `compare_local_to_addr`* | CompareLocalToAddr | CompareRegAdrs | u8: Script Register; u32: Address | Compares script reg to memory address Because scripts are compiled in a code-agnostic fashion, this command can never be assembled. |  |
| 0x00E | `compare_addr_to_local`* | CompareAddrToLocal | CompareAdrsReg | u32: Address; u8: Script Register | Compares memory address to script reg Because scripts are compiled in a code-agnostic fashion, this command can never be assembled. |  |
| 0x00F | `compare_addr_to_value`* | CompareAddrToValue | CompareAdrsValue | u32: Address; u8: Val | Compares memory address to byte literal Because scripts are compiled in a code-agnostic fashion, this command can never be assembled. |  |
| 0x010 | `compare_addr_to_addr`* | CompareAddrToAddr | CompareAdrsAdrs | u32: Address 1; u32: Address 2 | Compares bytes at two memory addresses Because scripts are compiled in a code-agnostic fashion, this command can never be assembled. |  |
| 0x011 | `compare_var_to_value`* | CompareVarToValue | CompareVarValue | Var: Variable; u16: Val | Compares variable to 16-bit literal |  |
| 0x012 | `compare_var_to_var`* | CompareVarToVar | CompareVars | u16: Variable 1; u16: Variable 2 | Compares two variables |  |
| 0x013 | `runscript`* | RunScript | ParallelCommonScript | u16: ID | Creates a new script context to run the indicated script asynchronously | Somehow related with parallel common script execution. |
| 0x014 | `callstd` | CallStd | CommonScript | u16: Global Script ID | Creates a new script context to run the indicated script and wait | The Common Script table is located at 0xFA48C in IPKS arm9.bin, ordered from highest to lowest with structure: u16 Global Script ID / u16 Script file / u16 Text file. The executed script inside script file is determined as: used Global Script ID - tabulated Global Script ID. |
| 0x015 | `endstd` | RestartCurrentScript | LocalScript |  | Yield to parent context |  |
| 0x016 | `goto` | GoTo | Jump | u32: Relative Jump | Absolute branch to offset in script | Relative Jump can have negative values (backward jump). |
| 0x017 | `objectgoto`* | ObjectGoTo | JumpIfObjID | u8: Event ID; u32: Relative Jump | Branch to offset in script if interacting with a specific object |  |
| 0x018 | `bggoto`* | BGGoTo | JumpIfBgID | u8: Bg; u32: Relative Jump | Branch to offset in script if interacting with a specific bg event | Maybe jumps to a function if invoking event has a specific ID. |
| 0x019 | `directiongoto`* | DirectionGoTo | JumpIfPlayerDir | u8: Player Direction; u32: Relative Jump | Branch to offset in script if facing a specific direction | Supposed. Needs to be tested in game. |
| 0x01A | `call` | Call | Call | u32: Relative Jump | Call script as a subroutine | Can be used to make loops when calling the own invoking function. |
| 0x01B | `return` | Return | Return |  | Return from subroutine |  |
| 0x01C | `goto_if`* | GoToIf | JumpIf | u8: Condition; u32: Relative Jump | Conditional branch to offset in script | Ask AdAstra for the condition list. Condition table is updated after a IfVarValue, IfVarVar, CheckFlag... |
| 0x01D | `call_if`* | CallIf | CallIf | u8: Condition; u32: Relative Jump | Conditional call subroutine |  |
| 0x01E | `setflag` | SetFlag | SetFlag | u16: Flag | Set event flag |  |
| 0x01F | `clearflag` | ClearFlag | ClearFlag | u16: Flag | Clear event flag |  |
| 0x020 | `checkflag`* | CheckFlag | CheckFlag | u16: Flag | Check event flag, store result on context | It updates the internal condition flag and maybe part of the condition table. |
| 0x021 | `setflagvar` | SetFlagVar | SetFlagFromVar | Var: Flag | Set event flag referenced in var |  |
| 0x022 | `clearflagvar` | ClearFlagVar | ClearFlagFromVar | Var: Flag | Clear event flag referenced in var |  |
| 0x023 | `checkflagvar` | CheckFlagVar | FlagStatusToVar | Var: Var Flag; Var: Var Dest | Check event flag referenced in var, store result in other var |  |
| 0x024 | `settrainerflag` | SetTrainerFlag | SetTrainerFlag | Var: Var Or Trno | Set trainer defeated flag | So this trainer will not battle against you. Used in every Gym after the leader is beaten. |
| 0x025 | `cleartrainerflag` | ClearTrainerFlag | ClearTrainerFlag | Var: Var Or Trno | Clear trainer defeated flag | So this trainer can be challenged again. |
| 0x026 | `checktrainerflag`* | CheckTrainerFlag | CheckTrainerFlag | Var: Var Or Trno | Check trainer defeated flag, store result on context | It updates the internal condition flag and maybe part of the condition table. |
| 0x027 | `addvar` | AddVar | IncrementVar | Var: Variable; Var: Var Or Addend | Increment var value by value |  |
| 0x028 | `subvar` | SubVar | DecrementVar | Var: Variable; Var: Var Or Addend | Decrement var value by value |  |
| 0x029 | `setvar` | SetVar | SetVar | Var: Variable; u16: Val | Set var to short literal |  |
| 0x02A | `copyvar` | CopyVar | SetVarFromVariable | u16: Variable 1; u16: Variable 2 | Set var from other var |  |
| 0x02B | `setorcopyvar` | SetOrCopyVar | SetVarFromFlexible | u16: Dst; u16: Flexible Value | Set var from other var or short literal |  |
| 0x02C | `non_npc_msg` | NonNPCMsg | MessageAll | u8: Text Slot | Print non_npc_msg in field window from current map message bank |  |
| 0x02D | `npc_msg` | NPCMsg | Message | u8: Text Slot | NPC dialogue window |  |
| 0x02E | `non_npc_msg_var` | NonNPCMsgVar | MessageFlex | u16: Text Slot | Not sure what to call this but it is also a message printer | Unlike 002D, this command also accepts a variable as the input field. |
| 0x02F | `npc_msg_var` | NPCMsgVar | MessageNoSkip | u16: Text Slot | ??? |  |
| 0x030 | `scrcmd_048` | ScrCmd_048 | CMD_48 | u8: Text Slot | ??? |  |
| 0x031 | `wait_ab_press` | WaitABPress | WaitAB |  | Waits for A or B button | Somehow it uses ScrReg 0 as countdown. |
| 0x032 | `wait_button` | WaitButton | WaitButton |  | Waits for A, B, or dpad. On pressing dpad, does a turn frame. | It seems only A, B, X and direction pad buttons work. |
| 0x033 | `wait_button_or_dpad` | WaitButtonOrDpad | WaitABPad |  | Waits for A, B, or dpad. No turn frame. | Supposed. Needs to be tested in game. |
| 0x034 | `openmsg` | OpenMsg | OpenMessage |  | ??? |  |
| 0x035 | `closemsg` | CloseMsg | CloseMessage |  | Closes message box | SDSME name is misleading, for no button is needed to be pressed. |
| 0x036 | `holdmsg` | HoldMsg | FreezeMessage |  | Like closemsg but does not clear the graphics. | Probably keeps the message box alive after a script. ASM differs with CloseMessage only in a BL instruction. |
| 0x037 | `direction_signpost` | DirectionSignpost | SetIconBoard | u8: Text Slot; u8: Type; u16: Icon; u16: Out | Prepares an icon board message box displaying Text Slot message, of Type type, and with Icon image if chosen type supports it | Type values from 0 to 3 are: brown (with icon), green (with icon), gray and blue. |
| 0x038 | `scrcmd_055` | SetSignpostMap | SetTextBoard | u8: Type; u16: Icon | Prepares a text board message box of Type type, and with Icon image if chosen type supports it | Type values from 0 to 3 are: brown (with icon), green (with icon), gray and blue. |
| 0x039 | `scrcmd_057` | SetSignpostAction | ShowBoard | u8: Process | Triggers different Process processes for the board | Process value 0 keeps the board, value 1 creates the board, value 2 hides the board, value 3 shows the board and value 4 deletes the board. |
| 0x03A | `scrcmd_058` | WaitSignpostAction | WaitBoard |  | Waits the board last process to end | Supposed. |
| 0x03B | `trainer_tips` | TrainerTips | BoardMessage | u8: Text Slot; u16: Out | Displays Text Slot message in the current text box, stores the current text box status in Variable |  |
| 0x03C | `scrcmd_060` | WaitSignpost | CloseBoard | u16: Out | Returns 1 to Variable if the player has pressed a button so the board must close, 0 otherwise | Variable is stored in ScrReg 0. Command waits for a button to be pressed and stores result in Variable. |
| 0x03D | `scrcmd_061` | ScrCmd_061 | Menu |  |  |  |
| 0x03E | `scrcmd_062`* | ScrCmd_062 | CMD_62 | u8: ???; u8: ???; u8: ???; u8: ???; u8: ???; u8: ??? |  |  |
| 0x03F | `yesno` | YesNo | YesNoBox | u16: Variable | Opens a Yes-No dialog and stores user response in Variable | Variable is stored in ScrReg 0. |
| 0x040 | `scrcmd_064` | ScrCmd_064 | MultiStandardText | u8: X; u8: Y; u8: Cursor; u8: Cancel; u16: Selection | Prepares a multiple selection menu at X and Y screen position, with Cursor default selected option and possibility of cancelling depending on Cancel, with text bank #321, returns selected slot ID in Selection | If Cancel is 1, the user can select the last option by pressing B button. |
| 0x041 | `scrcmd_065` | ScrCmd_065 | MultiLocalText | u8: X; u8: Y; u8: Cursor; u8: Cancel; u16: Selection | Prepares a multiple selection menu at X and Y screen position, with Cursor default selected option and possibility of cancelling depending on Cancel, with local texts, returns selected slot ID in Selection | If Cancel is 1, the user can select the last option by pressing B button. |
| 0x042 | `scrcmd_066` | ScrCmd_066 | AddMultiOption | u8: Text Slot; u8: Multi Slot | Adds an option with Multi Slot ID showing Text Slot text |  |
| 0x043 | `scrcmd_067` | ScrCmd_067 | ShowMulti |  | Shows the prepared multi in screen | The game will hide it when the player has selected an option. |
| 0x044 | `scrcmd_068` | ScrCmd_068 | ListStandardText | u8: X; u8: Y; u8: Cursor; u8: Cancel; u16: Selection | Prepares a multiple selection list at X and Y screen position, with Cursor default selected option and possibility of cancelling depending on Cancel, with text bank #321, returns selected slot ID in Selection | If Cancel is 1, the user can select the last option by pressing B button. The difference between a Multi and a List seems to be that lists are scrollable. |
| 0x045 | `scrcmd_069` | ScrCmd_069 | ListLocalText | u8: X; u8: Y; u8: Cursor; u8: Cancel; u16: Selection | Prepares a multiple selection list at X and Y screen position, with Cursor default selected option and possibility of cancelling depending on Cancel, with local texts, returns selected slot ID in Selection | If Cancel is 1, the user can select the last option by pressing B button. The difference between a Multi and a List seems to be that lists are scrollable. |
| 0x046 | `scrcmd_070` | ScrCmd_070 | AddListOption | u16: Option Msg; u16: Highlight Msg; u16: List Slot | Adds a new option to the list, with List Slot ID and showing text line Option MSG. It also displays text line Highlight MSG when that option is highlighted. | If Highlight MSG is set to 255 [0xFF], no message will be displayed when the option is highlighted. This command relies on an open message box in order to display the highlight messages. Trying to highlight an option with Highlight MSG different than 255 [0xFF] will result in a crash if no message box is already being displayed. |
| 0x047 | `scrcmd_071` | ScrCmd_071 | ShowList |  | Shows the prepared list in screen | The game will hide it when the player has selected an option. |
| 0x048 | `scrcmd_072`* | ScrCmd_072 | MultiColumn | u8: Columns | Splits the multi window in Columns different columns |  |
| 0x049 | `play_se` | PlaySE | PlayFanfare | u16: Sound | Plays Sound |  |
| 0x04A | `stop_se` | StopSE | StopFanfare | u16: Sound | Stops Sound |  |
| 0x04B | `wait_se` | WaitSE | WaitFanfare | u16: Sound | Waits Sound to finish |  |
| 0x04C | `play_cry` | PlayCry | PlayCry | u16: Pokémon; u16: Unused | Plays a Pokémon cry | Types: 0 = Normal Playback 1 = Reduced playback in a double battle 2 = ? 3 = Howl? 4 = Hyper Voice? 5 = Defeated Pokemon 6 = Hyper Voice? 7 = Roar? 8 = Roar? 9 = ? 10 = ? 11 = Statused (e.g. sick Miltank on Route 39) 12 = Reduced playback in a double battle when the Pokemon is statused |
| 0x04D | `wait_cry` | WaitCry | WaitCry |  | Waits the current cry to finish |  |
| 0x04E | `play_fanfare` | PlayFanfare | PlaySound | u16: Sound | Pauses current music, then Plays Sound |  |
| 0x04F | `wait_fanfare` | WaitFanfare | WaitSound |  | Waits for Sound to finish, then resumes music |  |
| 0x050 | `play_bgm` | PlayBGM | PlayMusic | u16: Music | Plays Music |  |
| 0x051 | `stop_bgm` | StopBGM | StopMusic | u16: Unused | Stops current music | Parameter is ignored because the game identifies what music is playing. |
| 0x052 | `reset_bgm` | ResetBGM | PlayDefaultMusic |  | Plays map default music |  |
| 0x053 | `scrcmd_083`* | ScrCmd_083 | SetMusic | u16: Music | ??? |  |
| 0x054 | `fade_out_bgm` | FadeOutBGM | FadeOutMusic | u16: Volume; u16: Time | Fade out the music to the target level in the designated number of frames |  |
| 0x055 | `fade_in_bgm` | FadeInBGM | FadeInMusic | u16: Time | Fades in the current music to normal volume in Time frames |  |
| 0x056 | `scrcmd_086`* | ScrCmd_086 | SetMusicPauseStatus | u8: Sseq Player ID; u8: Status | ??? |  |
| 0x057 | `temp_bgm` | TempBGM | TempMusic | u16: Music | ??? |  |
| 0x058 | `scrcmd_088`* | ScrCmd_088 | SetBGMFlag | u8: ??? | ??? | Seems to set a flag related to the music system. |
| 0x059 | `chatot_has_cry` | ChatotHasCry | CheckChatotCry | u16: Variable | Checks if Chatot has custom sound, stores answer in Variable | Returns 0 or 1 to the specified Variable. Not for a specific Chatot but for all (they share a custom sound). |
| 0x05A | `chatot_start_recording` | ChatotStartRecording | StartChatotCry | u16: Variable | Starts Chatot microphone record, stores answer in Variable | Returns 0 or 1 to the specified Variable depending on successful recording. |
| 0x05B | `chatot_stop_recording` | ChatotStopRecording | StopChatotCry |  | Stops recording Chatot custom sound |  |
| 0x05C | `chatot_save_recording` | ChatotSaveRecording | SaveChatotCry |  | ??? | Maybe saves the custom Chatot sound in the savegame. |
| 0x05D | `scrcmd_093`* | ScrCmd_093 | CMD_93 |  | ??? |  |
| 0x05E | `apply_movement` | ApplyMovement | Movement | u16: Event ID; u32: Relative Jump | Applies movement at Relative Jump to Event ID | Movements must be halfword-aligned in the script file. If you're using an old tool which doesn't align them, force the alignment with a TextPlayerName 0x0 or some unnoticeable command of 3, 5, 7 or 9 bytes length. |
| 0x05F | `wait_movement` | WaitMovement | WaitMovement |  | Waits for all movements to finish |  |
| 0x060 | `lockall` | LockAll | LockAll |  | Locks every event in the map |  |
| 0x061 | `releaseall` | ReleaseAll | ReleaseAll |  | Releases every event in the map |  |
| 0x062 | `lock` | Lock | Lock | u16: Event ID | Locks Event ID |  |
| 0x063 | `release` | Release | Release | u16: Event ID | Releases Event ID |  |
| 0x064 | `show_person` | ShowPerson | AddOW | u16: Event ID | Add Event ID overworld in the map | It is probable that, if executing this having Event ID overworld already in the map, it gets duplicated. |
| 0x065 | `hide_person` | HidePerson | RemoveOW | u16: Event ID | Removes Event ID overworld from the map |  |
| 0x066 | `scrcmd_102` | ScrCmd_102 | LockCamera | u16: X; u16: Y | Locks the camera at position X and Y | Seems to place a invisible NPC at coords X and Y. It appears that both must be the current player position. |
| 0x067 | `scrcmd_103` | ScrCmd_103 | ReleaseCamera |  | Releases the camera |  |
| 0x068 | `faceplayer` | FacePlayer | FacePlayer |  | Makes the invoking event look at the player | In fact it simply takes the current player direction and makes the NPC look at the opposite direction. |
| 0x069 | `get_player_coords` | GetPlayerCoords | GetPlayerPosition | u16: X; u16: Y | Saves the current player position in X and Y |  |
| 0x06A | `get_person_coords` | GetPersonCoords | GetOWPosition | u16: Event ID; u16: X; u16: Y | Saves the current Event ID position in X and Y | If Event ID is deleted (via RemoveOW) it gives 0xFF for both coordinates. |
| 0x06B | `scrcmd_107`* | ScrCmd_107 | SetFollowingOverworld | u16: X; u16: Z; u16: Y | ??? | Maybe teleports the player to other coords? |
| 0x06C | `scrcmd_108`* | ScrCmd_108 | KeepOverworld | u16: Event ID; u8: Value | If Value is 1, prevents Event ID from disappearing when entering on a new map header |  |
| 0x06D | `scrcmd_109` | ScrCmd_109 | SetOWMovement | u16: Event ID; u16: Movement | Changes the Event ID's movement number to Movement |  |
| 0x06E | `addmoney` | AddMoney | GiveMoney | u32: Money | Adds Money to the player's money |  |
| 0x06F | `submoneyimmediate` | SubMoneyImmediate | TakeMoney | u32: Money | Subtracts Money from the player's money |  |
| 0x070 | `hasenoughmoneyimmediate` | HasEnoughMoneyImmediate | CompareMoney | u16: Variable; u32: Money | Stores 1 into Variable if the player has Money or more money. Stores 0 otherwise. |  |
| 0x071 | `show_money_box` | ShowMoneyBox | ShowMoney | u16: X; u16: Y | Shows the money box at X and Y coordinates of the screen | Each X and Y unit implies 8 pixels. Values of 0 or higher than the screen may glitch the screen. |
| 0x072 | `hide_money_box` | HideMoneyBox | HideMoney |  | Hides the money box |  |
| 0x073 | `update_money_box` | UpdateMoneyBox | UpdateMoney |  | Updates the current money in the money box |  |
| 0x074 | `scrcmd_116` | ScrCmd_116 | ShowSpecialCurrency | u8: Currency; u16: X Coord; u16: Y Coord | Shows the Currency box at X and Y coordinates of the screen. | Currency: 0 = Coins 1 = Battle Points 2 = Athlete Points |
| 0x075 | `scrcmd_117` | ScrCmd_117 | HideSpecialCurrency |  | Hides the currently displayed special currency box. |  |
| 0x076 | `scrcmd_118` | ScrCmd_118 | UpdateSpecialCurrency | u8: Currency | Updates the current Currency in the currency box. | Currency types are the same as above [0074]. |
| 0x077 | `get_coin_amount` | GetCoinAmount | GetCoins | u16: Variable | Stores the current casino coin amount in Variable |  |
| 0x078 | `give_coins` | GiveCoins | GiveCoins | u16: Coins | Adds Coins to the player's casino coins |  |
| 0x079 | `take_coins` | TakeCoins | TakeCoins | u16: Coins | Subtracts Coins from the player's casino coins |  |
| 0x07A | `give_athlete_points` | GiveAthletePoints | GiveAthletePoints | u16: Amount | Adds the given Amount to the player's Athlete Points |  |
| 0x07B | `take_athlete_points` | TakeAthletePoints | TakeAthletePoints | u16: Amount | Subtracts the given Amount from the player's Athlete Points |  |
| 0x07C | `check_athlete_points` | CheckAthletePoints | CompareAthletePoints | u16: Result; u16: Amount | Stores 1 into Variable if the player has the given Amount of Athlete Points or more. Stores 0 otherwise. |  |
| 0x07D | `giveitem` | GiveItem | GiveItem | u16: Item; u16: Amount; u16: Variable | Adds Amount of Item item, stores 1 in Variable if the player had less than 1000 - Amount (100 - Amount if TM/HM), stores 0 otherwise | Both Item and Amount are flexible, but if you use CommonScript 0x7F1 after that (as it is meant to be) you must place these two values in 0x8004 and 0x8005 in order to make the script work properly. |
| 0x07E | `takeitem` | TakeItem | TakeItem | u16: Item; u16: Amount; u16: Variable | Subs Amount of Item item, stores 1 in Variable if the player had at least Amount items in the bag, stores 0 otherwise |  |
| 0x07F | `hasspaceforitem` | HasSpaceForItem | CheckItemSpace | u16: Item; u16: Amount; u16: Variable | Stores 1 in Variable if the player has less than 1000 - Amount of Item items (100 - Amount if TM/HM), stores 0 otherwise |  |
| 0x080 | `hasitem` | HasItem | CheckItem | u16: Item; u16: Amount; u16: Variable | Stores 1 in Variable if the player has at least Amount of Item items in the bag, stores 0 otherwise | Even if the Amount to check for is 0, the check will return 0 if you don't have the item at all. |
| 0x081 | `itemistmorhm` | ItemIsTMOrHM | CheckItemIsMachine | u16: Item; u16: Variable | Stores 1 in Variable if Item is TM or HM, stores 0 otherwise |  |
| 0x082 | `getitempocket` | GetItemPocket | GetItemPocket | u16: Item; u16: Variable | Stores the bag pocket of Item in Variable | Items = 0 Medicine = 1 Poke Balls = 2 TMs & HMs = 3 Berries = 4 Mail = 5 Battle Items = 6 Key Items = 7 |
| 0x083 | `set_starter_choice` | SetStarterChoice | SetStarter | u16: Pokémon | Stores Pokémon as the starting Pokémon in the game save data |  |
| 0x084 | `gender_msgbox` | GenderMsgBox | GenderMessage | u8: Male Text; u8: Female Text | Displays Male Text or Female Text message depending on player's gender |  |
| 0x085 | `get_seal_quantity` | GetSealQuantity | CheckSeals | u16: Seal ID; u16: Number Of Seals In Seal Case | Checks the number of a certain type of Ball Seals that the player has. The Variable is the output of how many Seals you have. | Example: Farmhouse on Route 39 |
| 0x086 | `give_or_take_seal` | GiveOrTakeSeal | GiveSeals | u16: Seal ID; u16: Number Of Seals To Be Given | Gives the player Ball Seals. | Example: Farmhouse on Route 39 |
| 0x087 | `give_random_seal` | GiveRandomSeal | GiveRandomSeals | u16: Random Seal ID 1; u16: Random Seal ID 2; u16: Random Seal ID 3 | Generates three random types of Ball Seals and gives them to the player (repeats are possible). Each Variable will yield a 0 if the player has no more room for the Seal(s) in the Seal Case. | Example: House in top right of Olivine City |
| 0x088 | `scrcmd_136`* | ScrCmd_136 | CheckPokemonForm | u16: Party Position; u16: Variable | Checks the form of the Pokemon in party slot Party Position and returns the form ID in Variable. |  |
| 0x089 | `give_mon` | GiveMon | GivePokemon | u16: Pokémon; u16: Level; u16: Item; u16: Form; u16: Ability; Var: Retvar | Gives Pokémon at level Level, store 1 in Variable if succeed and 0 otherwise |  |
| 0x08A | `give_egg` | GiveEgg | GivePokemonEgg | u16: Pokémon; u16: Location | Gives a Pokémon egg received from Location text slot at text bank #281 |  |
| 0x08B | `set_mon_move` | SetMonMove | ReplaceMove | u16: Party Slot; u16: Move Slot; u16: Move ID | Overwrites Move Slot of the Pokémon at the specified Party Slot with Move ID. | Party slot and move slot start at 0 rather than 1, so the ranges are 0-5 and 0-3 respectively. https://bulbapedia.bulbagarden.net/wiki/List_of_moves |
| 0x08C | `mon_has_move` | MonHasMove | CheckPokemonHasMove | u16: Variable; u16: Move ID; u16: Party Slot | Checks if a Pokémon at the specified Party Slot knows a move with given Move ID. Stores 1 into Variable if yes, 0 otherwise. | Example: Headbutt tutor in Ilex Forest (Script File 92, Script 3) |
| 0x08D | `get_party_slot_with_move` | GetPartySlotWithMove | CheckMoveInParty | u16: Variable; u16: Move ID | Checks if any Pokémon in the party knows Move ID move, stores in Variable the position of the first Pokémon that knows it or stores 6 if no Pokémon in the party knows the move |  |
| 0x08E | `get_phone_book_rematch` | GetPhoneBookRematch | CheckPokeGearRematch | u16: Phone Number; u16: Variable | Stores in Variable the trainer ID the contact is waiting to rematch with, or 0 if no rematch is waiting. Kenji (contact 16) only returns a trainer during the day. | Gets used when deciding when to let Gym Leaders appear in the overworld for a photo shoot after they are defeated in the Dojo, in the Dojo itself, etc. |
| 0x08F | `name_rival` | NameRival | ChooseRivalName | u16: Variable | Opens the keyboard for naming the rival, stores 1 in Variable if user cancels the proccess |  |
| 0x090 | `get_friend_sprite` | GetFriendSprite | GetCounterpartSprite | u16: Variable | Stores 97 (Lyra sprite ID) into the Variable if you're playing as Ethan; Stores 0 (Ethan sprite ID) into the Variable if you're playing as Lyra. | Remember that Overworld Entities with sprite IDs 101 to 116 refer to the value of vars 0x4020-0x402F for the sprite to display. |
| 0x091 | `register_pokegear_card` | RegisterPokegearCard | UpgradePokegear | u8: Module | Adds the map to the Pokégear if Module is 1 and the radio if Module is 2. Any other value removes both, leaving only the phone. |  |
| 0x092 | `register_gear_number` | RegisterGearNumber | RecordPokegearNumber | u16: Phone Number | Adds Phone Number to the player's Pokégear. Numbers 75 and above are ignored, and a number already registered is left as it is. |  |
| 0x093 | `check_registered_phone_number` | CheckRegisteredPhoneNumber | CheckPokegearNumberRegistered | u16: Phone Number; u16: Variable | Stores 0 into Variable if Phone Number has not been registered, and 1 if it has been registered. | Example: Sabrina in Olivine Harbor (Script File 153, Script 7). Used frequently by Gym Leaders appearing in the overworld. |
| 0x094 | `scrcmd_148` | ScrCmd_148 | CMD_148 | u8: Trigger; u8: Expedite | Queues event phone call Trigger (0-12). If Expedite is not 0, the call can ring after one more minute instead of the usual wait. | 0 = Elm: Togepi Egg hatched 1 = Elm: Pokérus 2 = Bike Shop: cycling steps 3 = Bill: PC full 4 = Oak: Pokédex progress 5 = Day-Care Man: Egg waiting 6-11 = Safari Zone Warden progress 12 = Mom bought something |
| 0x095 | `scrcmd_149` | UnsetPhoneCallTrigger | CMD_149 | u8: Trigger | Clears queued event phone call Trigger, using the same numbers as command 0x0094. |  |
| 0x096 | `restore_overworld` | RestoreOverworld | ReturnScreen |  | Restores the normal overworld screen |  |
| 0x097 | `scrcmd_151` | ScrCmd_151 | CMD_151 |  |  |  |
| 0x098 | `scrcmd_152` | ScrCmd_152 | CMD_152 |  |  |  |
| 0x099 | `scrcmd_153`* | ScrCmd_153 | DressPokemon | u16: Arg 0 |  |  |
| 0x09A | `scrcmd_154` | ScrCmd_154 | ContestDressupScreen | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x09B | `scrcmd_155` | ScrCmd_155 | DressUpArtworkScreen | u16: Arg 0; u16: Var 1 |  |  |
| 0x09C | `scrcmd_156` | ScrCmd_156 | SealCapsuleScreen |  |  |  |
| 0x09D | `town_map` | TownMap | WorldMapScreen |  | Opens the worldmap screen |  |
| 0x09E | `scrcmd_158` | ScrCmd_158 | PCBoxScreen | u8: Arg 0 |  |  |
| 0x09F | `scrcmd_159` | ScrCmd_159 | DrawScreenUnion |  |  |  |
| 0x0A0 | `scrcmd_160` | ScrCmd_160 | TrainerCaseUnion |  |  |  |
| 0x0A1 | `scrcmd_161` | ScrCmd_161 | TradeScreenUnion |  |  |  |
| 0x0A2 | `scrcmd_162` | ScrCmd_162 | RecordMixingUnion |  |  |  |
| 0x0A3 | `hof_credits` | HOFCredits | EndGameScreen | u16: Location | If Location is 0, Hall of Fame and Credits sequence plays -- used for Indigo Plateau. If Location is 1, only the Credits sequence plays -- used for Mt. Silver battle against Red |  |
| 0x0A4 | `scrcmd_164` | ScrCmd_164 | HallOfFameData |  |  |  |
| 0x0A5 | `scrcmd_165` | ScrCmd_165 | StoreGTSStatus | u16: Arg; u16: Var 1 |  |  |
| 0x0A6 | `scrcmd_166` | ScrCmd_166 | InitWFC | u16: Arg |  |  |
| 0x0A7 | `choose_starter` | ChooseStarter | StarterSelectionScreen |  | Opens the starter Pokémon selection screen |  |
| 0x0A8 | `get_trainer_path_to_player` | GetTrainerPathToPlayer | GetTrainerPathToPlayer | u16: ??? |  |  |
| 0x0A9 | `trainer_step_towards_player` | TrainerStepTowardsPlayer | TrainerStepTowardsPlayer | u16: ???; u16: Variable |  |  |
| 0x0AA | `get_trainer_eye_type` | GetTrainerEyeType | GetTrainerEyeType | u16: Variable |  |  |
| 0x0AB | `get_eye_trainer_num` | GetEyeTrainerNum | GetEyeTrainerNum | u16: ???; u16: Variable | For when one or more trainers see you |  |
| 0x0AC | `name_player`* | NamePlayer | ChoosePlayerName | u16: Variable | Opens the keyboard for naming the player, stores 1 in Variable if user cancels the proccess |  |
| 0x0AD | `nickname_input` | NicknameInput | ChoosePokemonNickname | u16: Party Position; u16: Variable | Opens the keyboard for naming a Pokémon in Party Position, stores 1 in Variable if user cancels the proccess |  |
| 0x0AE | `fade_screen` | FadeScreen | FadeScreen | u16: Frame Count; u16: Duration; u16: Fade Style; u16: Color | Fades screen to chosen 15-bit Color, using the chosen Fade Style. The transition will render Frame Count images, of Duration length each. | Type 0 for fade in, Type 1 for fade out. Color has 15-bit format. Transition is the number of color changes that the game does in the fading. |
| 0x0AF | `wait_fade` | WaitFade | WaitFadeScreen |  | Waits for the screen fade to end |  |
| 0x0B0 | `warp` | Warp | Warp | u16: Map; u16: Door; u16: X; u16: Y; u16: Dir | Warps to X and Y position of Map header with initial Dir direction, using Door warp | When Door is 0 it doesn't use any door animation. |
| 0x0B1 | `rock_climb` | RockClimb | RockClimbAnimation | u16: Party Position | Uses rock climb with the Pokémon at Party Position position |  |
| 0x0B2 | `surf` | Surf | SurfAnimation | u16: Party Position | Uses surf with the Pokémon at Party Position position |  |
| 0x0B3 | `waterfall` | Waterfall | WaterfallAnimation | u16: Party Position | Uses waterfall with the Pokémon at Party Position position |  |
| 0x0B4 | `scrcmd_180`* | ScrCmd_180 | FlyAnimation | u16: Map; u16: X; u16: Y | Flies to Map header map, to coordinates X and Y |  |
| 0x0B5 | `flash_effect` | FlashEffect | FlashAnimation |  | Sets weather to 12 (darkness after flash) and then updates the weather graphics |  |
| 0x0B6 | `whirlpool` | Whirlpool | WhirlpoolAnimation | u16: Party Position | Uses whirlpool with the Pokémon at Party Position position |  |
| 0x0B7 | `scrcmd_183` | ScrCmd_183 | CutAnimation | u16: Party Position | Displays the Hidden Machine summon animation with the Pokémon at Party Position position |  |
| 0x0B8 | `player_on_bike_check` | PlayerOnBikeCheck | CheckBike | u16: Variable | Stores 1 in Variable if player is riding the bike, stores 0 otherwise |  |
| 0x0B9 | `player_on_bike_set` | PlayerOnBikeSet | RideBike | u8: Action | Changes player form from normal to riding the bike if Action is 1, otherwise it sets the normal form to the player |  |
| 0x0BA | `scrcmd_186` | SetBikeStateLock | CyclingRoad | u8: Action | If `lock` is 1, the player's bike state will be locked, meaning they cannot mount or dismount their bike; otherwise, if `lock` is any other value, the bike state will be unlocked. The main use for this command was to block the player from dismounting their bike while they were on Cycling Road. |  |
| 0x0BB | `get_player_state` | GetPlayerState | CheckPlayerForm | Var: Variable | Get the player's overworld state. Used in some places to determine whether the player is masquerading as a member of Team Rocket. | Values 0 is for normal form, value 1 for riding the bike, value 2 for surfing, value 3 for Rocket clothing |
| 0x0BC | `set_avatar_bits` | SetAvatarBits | SetPlayerForm | u16: Form | Activates the Form bit in the internal player form data | The purpose of the different bits still needs to be researched. |
| 0x0BD | `update_avatar_state` | UpdateAvatarState | UpdatePlayerForm |  | Updates changes in the internal player form data in the screen |  |
| 0x0BE | `buffer_players_name` | BufferPlayersName | TextPlayerName | u8: String Buffer | In the buffer_XXX commands, the maximum acceptable value for the slot arg is 7. This sets the message format placeholder to whatever is buffered. |  |
| 0x0BF | `buffer_rivals_name` | BufferRivalsName | TextRivalName | u8: String Buffer | If you use this before naming your rival, this will be an empty string. |  |
| 0x0C0 | `buffer_friends_name` | BufferFriendsName | TextCounterpart | u8: String Buffer | Stores counterpart's name in String Buffer |  |
| 0x0C1 | `buffer_mon_species_name` | BufferMonSpeciesName | TextPartyPokemon | u8: String Buffer; u16: Party Position | For these commands, the additional argument is a flex arg, meaning it can be a literal or a variable. |  |
| 0x0C2 | `buffer_item_name` | BufferItemName | TextItem | u8: String Buffer; u16: Item | Stores Item's name in String Buffer |  |
| 0x0C3 | `buffer_pocket_name` | BufferPocketName | TextPocket | u8: String Buffer; u16: Pocket | Stores Pocket's name in String Buffer |  |
| 0x0C4 | `buffer_tmhm_move_name` | BufferTMHMMoveName | TextAttackItem | u8: String Buffer; u16: Item | Stores the name of the move contained in Item TM/HM in String Buffer |  |
| 0x0C5 | `buffer_move_name` | BufferMoveName | TextMove | u8: String Buffer; u16: Move | Stores battle Move's name in String Buffer |  |
| 0x0C6 | `buffer_int` | BufferInt | TextNumber | u8: String Buffer; u16: Number | Stores a Number in String Buffer |  |
| 0x0C7 | `bufferpartymonnick` | BufferPartyMonNick | TextPokeNickname | u8: String Buffer; u16: Party Position | Stores the nickname of the Pokémon in Party Position in String Buffer |  |
| 0x0C8 | `buffer_trainer_class_name`* | BufferTrainerClassName | CMD_200 | u8: Slot; u16: Trcls |  |  |
| 0x0C9 | `buffer_player_union_avatar_class_name` | BufferPlayerUnionAvatarClassName | TextPlayerTrainerType | u8: String Buffer | Stores player's Union Room trainer type in String Buffer |  |
| 0x0CA | `buffer_species_name` | BufferSpeciesName | TextPokemon | u8: String Buffer; u16: Pokémon; u16: Unused; u8: Unused | The other two args here are unused | The two Unused parameters are for defining male/female nouns and singular/plural nouns respectively. However both don't apply in this command. |
| 0x0CB | `buffer_starter_species_name`* | BufferStarterSpeciesName | TextStarterPokemon | u8: String Buffer | Stores the name of the player' starter Pokémon in String Buffer |  |
| 0x0CC | `buffer_dppt_rival_starter_species_name`* | BufferDPPtRivalStarterSpeciesName | TextRivalStarter | u8: String Buffer | These two commands are leftover from Platinum. As such, they are configured to check for the Sinnoh starters instead of the Johto starters. Since the player will never start with any of Turtwig, Chimchar, or Piplup, this command will always return TURTWIG, and the following CHIMCHAR. These commands are unused in HGSS. |  |
| 0x0CD | `buffer_dppt_friend_starter_species_name`* | BufferDPPtFriendStarterSpeciesName | TextCounterpartStarter | u8: String Buffer | Stores the name of the counterpart' starter Pokémon in String Buffer |  |
| 0x0CE | `get_starter_choice` | GetStarterChoice | CheckStarter | Var: Variable | Gets your starter species into the indicated variable. Used to calculate which rival party to use. |  |
| 0x0CF | `buffer_decoration_name`* | BufferDecorationName | DummyTextGoods | u8: String Buffer; u16: Unused | Loads an empty string in String Buffer |  |
| 0x0D0 | `scrcmd_208` | ScrCmd_208 | DummyTextTrap | u8: Unused; u16: Unused | Dummy |  |
| 0x0D1 | `scrcmd_209`* | ScrCmd_209 | DummyTextTreasure | u8: Unused; u16: Unused | Dummy |  |
| 0x0D2 | `buffer_map_sec_name`* | BufferMapSecName | TextMapName | u8: String Buffer; u16: Map | Stores Map header name in String Buffer |  |
| 0x0D3 | `scrcmd_211`* | ScrCmd_211 | GetSwarmInfo | u16: Map; u16: Pokémon | Selects a zone depending on a random seed, then stores the zone ID in Map and the corresponding swarm Pokémon of that zone in Pokémon | Predicted. Needs to be checked. |
| 0x0D4 | `get_trainer_num` | GetTrainerNum | TrainerID | u16: Variable | For when you talk to a trainer | This means you shouldn't use this command in a normal script. |
| 0x0D5 | `trainer_battle` | TrainerBattle | TrainerBattle | u16: Trainer 1; u16: Trainer 2; u8: Result; u8: ??? | Starts a battle against Trainer 1 and, if Trainer 2 is neither 0 nor the same as Trainer 1, a double battle against both. Continues without warping to Pokemon Center/home if Result is equal to 1. | Your party will also be fully healed after the battle if Result is 1. Example: Cherrygrove City fight with Rival |
| 0x0D6 | `trainer_message` | TrainerMessage | TrainerMessage | u16: Trainer ID; u16: Type | Displays the text of Trainer ID trainer at condition Type | The possible Type values are the following (expand the note for see them) |
| 0x0D7 | `get_trainer_msg_params` | GetTrainerMsgParams | TrainerMsgCheck | u16: Noticing; u16: Defeat; u16: One Pokémon | If the script ID corresponds to a single battle trainer, stores 0 in Noticing, 2 in Defeat and 0 in One Pokémon. If it corresponds to a double battle, stores 3, 5 and 6 or 7, 9 and 10 depending on whether it's the first or the second trainer | This means you shouldn't use this command in a normal script. |
| 0x0D8 | `get_rematch_msg_params` | GetRematchMsgParams | TrainerRematchMsgCheck | u16: Noticing; u16: Defeat; u16: One Pokémon | If the script ID corresponds to a single battle trainer, stores 17 in Noticing, 0 in Defeat and 0 in One Pokémon. If it corresponds to a double battle, stores 18, 0 and 6 or 19, 0 and 10 depending on whether it's the first or the second trainer | This means you shouldn't use this command in a normal script. |
| 0x0D9 | `trainer_is_double_battle` | TrainerIsDoubleBattle | TrainerTypeCheck | u16: Variable | Stores 0 in Variable if the script ID corresponds to a single battle, stores 1 if it corresponds to a double battle | This means you shouldn't use this command in a normal script. |
| 0x0DA | `encounter_music` | EncounterMusic | TrainerMusic | u16: Trainer ID | Plays Trainer's overworld music | It checks if player is in Johto or Kanto for that. |
| 0x0DB | `white_out` | WhiteOut | LostBattle |  | Return to Pokémon Center or player's house after being defeated |  |
| 0x0DC | `check_battle_won` | CheckBattleWon | CheckBattleIsLost | Var: Variable | Is this loss? |  |
| 0x0DD | `static_wild_won_or_caught` | StaticWildWonOrCaughtCheck | CheckDefeatedPokemon | u16: Variable; u8: ??? | Stores 0 in Variable if player defeated or catched the wild Pokemon, stores 1 otherwise |  |
| 0x0DE | `party_check_for_double` | PartyCheckForDouble | Check2vs2 | u16: Variable | Stores 1 in Variable if player has at least 2 not fainted Pokémon, stores 0 otherwise |  |
| 0x0DF | `scrcmd_223`* | ScrCmd_223 | DummyTrainerBattle |  | Starts a battle against trainer with ID 1 |  |
| 0x0E0 | `scrcmd_224`* | ScrCmd_224 | DummyTrainerFlag |  | Sets the trainer flag with the same ID as the invoking event |  |
| 0x0E1 | `goto_if_trainer_defeated`* | GoToIfTrainerDefeated | DummyTrainerFlagJump | u32: Relative Jump | Jumps to a function, Relative Jump bytes forward or backward, if trainer flag with the invoking event ID is set |  |
| 0x0E2 | `scrcmd_226` | ScrCmd_226 | CMD_226 | u16: Var 0; u16: Var 1; u16: Var 2; u16: Var 3 |  |  |
| 0x0E3 | `scrcmd_227` | ScrCmd_227 | CMD_227 | u16: Var 0; u16: Var 1; u16: Var 2; u16: Var 3 |  |  |
| 0x0E4 | `scrcmd_228`* | ScrCmd_228 | CMD_228 | u16: Arg 0 |  |  |
| 0x0E5 | `scrcmd_229`* | ScrCmd_229 | CMD_229 | u16: Arg 0 |  |  |
| 0x0E6 | `scrcmd_230` | ScrCmd_230 | CMD_230 |  |  |  |
| 0x0E7 | `scrcmd_231`* | ScrCmd_231 | CMD_231 |  |  |  |
| 0x0E8 | `scrcmd_232` | ScrCmd_232 | CMD_232 | u16: Arg 0 |  |  |
| 0x0E9 | `scrcmd_233` | ScrCmd_233 | CMD_233 | u16: Arg 0 |  |  |
| 0x0EA | `scrcmd_234` | ScrCmd_234 | CMD_234 | u16: Var 0; u16: Var 1; u16: Var 2; u16: Var 3 |  |  |
| 0x0EB | `scrcmd_235` | ScrCmd_235 | CMD_235 | u16: Result |  |  |
| 0x0EC | `scrcmd_236`* | ScrCmd_236 | CMD_236 | u16: Arg 0 |  |  |
| 0x0ED | `scrcmd_237` | ScrCmd_237 | CMD_237 |  |  |  |
| 0x0EE | `party_has_pokerus` | PartyHasPokerus | CheckPokerus | u16: Variable | Stores 1 in Variable if one or more Pokémon in the party are infected with the Pokérus |  |
| 0x0EF | `mon_get_gender` | MonGetGender | GetPokemonGender | u16: Party Position; u16: Variable | Stores 0 in Variable if Pokémon at Party Position is male, 1 if is female and 2 if gender is unknown | Unknown gender value is supposed and should be checked. |
| 0x0F0 | `set_dynamic_warp` | SetDynamicWarp | SetElevatorWarp | u16: Variable; u16: Arg 1; u16: Arg 2; u16: Arg 3; u16: Arg 4 |  |  |
| 0x0F1 | `get_dynamic_warp_floor_no` | GetDynamicWarpFloorNo | GetElevatorFloor | u16: Variable | Stores in Variable the current floor in a elevator |  |
| 0x0F2 | `elevator_cur_floor_box` | ElevatorCurFloorBox | ElevatorBox | u8: X; u8: Y; u16: Variable; u16: Floor | Shows the current floor number in a box at X and Y coordinates in the screen | Each X and Y unit implies 8 pixels. Values of 0 or higher than the screen may glitch the screen. Set Variable to 0xFFFF to remove the window when you're done. |
| 0x0F3 | `count_johto_dex_seen` | CountJohtoDexSeen | CountJohtoDexSeen | Var: Variable | Stores in Variable the total seen Pokemon in the Johto Pokédex |  |
| 0x0F4 | `count_johto_dex_owned` | CountJohtoDexOwned | CountJohtoDexObtained | Var: Variable | Stores in Variable the total obtained Pokemon in the Johto Pokédex |  |
| 0x0F5 | `count_national_dex_seen` | CountNationalDexSeen | CountNationalDexSeen | Var: Variable | Stores in Variable the total seen Pokemon in the National Pokédex |  |
| 0x0F6 | `count_national_dex_owned` | CountNationalDexOwned | CountNationalDexObtained | Var: Variable | Stores in Variable the total obtained Pokemon in the National Pokédex |  |
| 0x0F7 | `scrcmd_247` | ScrCmd_247 | DummyNationalDexCheck |  | Dummy |  |
| 0x0F8 | `get_dex_eval_result` | GetDexEvalResult | GetDexProgressMsg | u8: Mode; u16: Message; u16: Unknown | The actual Pokedex evaluation. national: 0 = Johto dex, 1 = National dex msg: Variable to return the message ID fanfare: Variable to return the fanfare ID |  |
| 0x0F9 | `rocket_trap_battle` | RocketTrapBattle | WildBattle | u16: Pokémon; u16: Level | Starts a wild battle against a Pokémon of level Level |  |
| 0x0FA | `scrcmd_250` | ScrCmd_250 | WildBattleNoButtons | u16: Pokémon; u16: Level | Starts a first wild battle against a Pokémon of level Level | The difference between this and other similar commands is that Bag, Run and Pokémon buttons are disabled. |
| 0x0FB | `catching_tutorial`* | CatchingTutorial | CatchTutorial |  | Starts the catch tutorial battle |  |
| 0x0FC | `scrcmd_252` | ScrCmd_252 | CMD_252 |  |  |  |
| 0x0FD | `get_save_file_state` | GetSaveFileState | CheckSaveGame | u16: Variable | Stores 0 in Variable if a different savegame exists and it's not possible to save, stores 1 if no previous savegame exists, stores 2 if game has to save a lot of data and stores 3 if game can perform a quick save |  |
| 0x0FE | `step_end` | SaveGameNormal | SaveGame | u16: Arg 0 |  |  |
| 0x0FF | `scrcmd_255` | ScrCmd_255 | CheckPortrait | u16: Arg 0; u16: Var 1 |  |  |
| 0x100 | `scrcmd_256` | ScrCmd_256 | SetPortraitTitle | u16: Result |  |  |
| 0x101 | `scrcmd_257` | ScrCmd_257 | CMD_257 | u16: Arg 0 |  |  |
| 0x102 | `scrcmd_258` | ScrCmd_258 | CMD_258 |  |  |  |
| 0x103 | `scrcmd_259`* | ScrCmd_259 | CMD_259 | u16: Arg 0 |  |  |
| 0x104 | `scrcmd_260` | ScrCmd_260 | CMD_260 | u16: Result |  |  |
| 0x105 | `scrcmd_261` | ScrCmd_261 | CMD_261 | u16: Arg 0 |  |  |
| 0x106 | `scrcmd_262` | ScrCmd_262 | CMD_262 |  |  |  |
| 0x107 | `scrcmd_263` | ScrCmd_263 | CMD_263 |  |  |  |
| 0x108 | `scrcmd_264` | ScrCmd_264 | CMD_264 | u16: Arg 0 |  |  |
| 0x109 | `scrcmd_265` | ScrCmd_265 | CMD_265 |  |  |  |
| 0x10A | `scrcmd_266` | ScrCmd_266 | CMD_266 |  |  |  |
| 0x10B | `scrcmd_267` | ScrCmd_267 | CMD_267 | u16: Arg 0; u16: Var 1 |  |  |
| 0x10C | `scrcmd_268` | ScrCmd_268 | CMD_268 | u16: Result |  |  |
| 0x10D | `scrcmd_269` | ScrCmd_269 | CMD_269 | u16: Result |  |  |
| 0x10E | `scrcmd_270` | ScrCmd_270 | CMD_270 |  |  |  |
| 0x10F | `scrcmd_271` | ScrCmd_271 | CMD_271 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x110 | `scrcmd_272` | ScrCmd_272 | CMD_272 | u16: Result |  |  |
| 0x111 | `scrcmd_273` | ScrCmd_273 | CMD_273 | u16: Result |  |  |
| 0x112 | `scrcmd_274` | ScrCmd_274 | CMD_274 | u16: Var 0; u16: Var 1 |  |  |
| 0x113 | `mart_buy` | MartBuy | MartScreen | u16: Unused | Opens the common mart shopping screen |  |
| 0x114 | `special_mart_buy` | SpecialMartBuy | SpMartScreen | u16: Mart ID | Opens the Mart ID mart shopping screen | Used in the Departament Store for a shop with specific fixed items. At 0x48188 of arm9.bin (IPKS) is the pointer to the shops table, each entry of the table being a pointer to an item table. |
| 0x115 | `decoration_mart`* | DecorationMart | GoodsMartScreen | u16: Mart ID | Opens the Mart ID goods mart shopping screen |  |
| 0x116 | `seal_mart`* | SealMart | SealMartScreen | u16: Mart ID | Opens the Mart ID seal mart shopping screen |  |
| 0x117 | `overworld_white_out` | OverworldWhiteOut | DummyLostBattle |  | Used with poison faint, but due to overworld poison mechanics in gen 4, this is never reached. | Same code as LostBattle command. |
| 0x118 | `set_spawn` | SetSpawn | SetLastWarp | u16: Warp ID | Sets the player's last warp as Warp ID. This affects Fly, whiting out, Escape Rope, etc. | This would affect actions like Escape Rope use, Game Over, etc. NONE = 0 NEW_BARK = 1 CHERRYGROVE = 2 VIOLET = 3 AZALEA = 4 GOLDENROD = 5 ECRUTEAK = 6 OLIVINE = 7 CIANWOOD = 8 MAHOGANY = 9 LAKE_OF_RAGE = 10 BLACKTHORN = 11 MT_SILVER = 12 PALLET = 13 VIRIDIAN = 14 PEWTER = 15 CERULEAN = 16 LAVENDER = 17 VERMILION = 18 CELADON = 19 FUCHSIA = 20 CINNABAR = 21 INDIGO = 22 SAFFRON = 23 SAFARI = 24 FRONTIER = 25 POKEATHLON = 26 VICTORY_ROAD = 27 UNION_CAVE = 28 MT_MOON = 29 ROCK_TUNNEL = 30 |
| 0x119 | `get_player_gender` | GetPlayerGender | CheckPlayerGender | Var: Variable | Are you a boy? Or are you a girl? |  |
| 0x11A | `heal_party` | HealParty | HealPokemon |  | Heals every Pokémon in the player's party | That does not include the black fade nor the healing sound. |
| 0x11B | `scrcmd_283` | ScrCmd_283 | EndWirelessComms |  |  |  |
| 0x11C | `scrcmd_284` | ScrCmd_284 | EnterBattleRoom |  |  |  |
| 0x11D | `scrcmd_285`* | ScrCmd_285 | SetPlayerDirComm | u16: Arg 0 |  |  |
| 0x11E | `scrcmd_286` | ScrCmd_286 | UnionMapChange |  |  |  |
| 0x11F | `buffer_union_room_avatar_choices` | BufferUnionRoomAvatarChoices | TextUnionRoomTrainerClassOptions |  | Generates the four Union Room Trainer class options based on Trainer ID and gender into String Buffers 0, 1, 2, and 3 |  |
| 0x120 | `union_room_avatar_idx_to_trainer_class` | UnionRoomAvatarIdxToTrainerClass | CheckUnionRoomTrainerClass | u16: Choice; u16: Variable | Returns the Trainer class that the player chose for the Union Room to Variable based on the Choice | The Choice is made through a MultiTouchStandardText with the Trainer class options generated with TextUnionRoomTrainerClassOptions, not through the command itself |
| 0x121 | `scrcmd_289` | ScrCmd_289 | SetUnionRoomSprite | u16: Variable | Sets the player Trainer class sprite for the Union Room as determined by CheckUnionRoomTrainerSprite |  |
| 0x122 | `check_pokedex`* | CheckPokedex | CheckPokedex | u16: Variable | Stores 1 in Variable if player has the Pokédex, stores 0 otherwise |  |
| 0x123 | `give_pokedex` | GivePokedex | GivePokedex |  | Gives the Pokédex to the player |  |
| 0x124 | `check_running_shoes`* | CheckRunningShoes | CheckShoes | u16: Variable | Stores 1 in Variable if player has the running shoes, stores 0 otherwise |  |
| 0x125 | `give_running_shoes` | GiveRunningShoes | GiveShoes |  | Gives the running shoes to the player |  |
| 0x126 | `check_badge` | CheckBadge | CheckBadge | u16: Badge ID; Var: Variable | Checks if player has Badge ID badge, stores result in Variable |  |
| 0x127 | `give_badge` | GiveBadge | GiveBadge | u16: Badge ID | Gives the player Badge ID badge |  |
| 0x128 | `count_badges` | CountBadges | CountBadges | Var: Variable | This command is never used because it is assumed that you cannot get the 8th badge before the other 7, or the 16th before the other 15. This assumption does not account for tweaking. |  |
| 0x129 | `scrcmd_297`* | ScrCmd_297 | DummyCheckBag | u16: Variable | Stores 1 in Variable if flag 0x960 is set, stores 0 otherwise |  |
| 0x12A | `scrcmd_298`* | ScrCmd_298 | DummyGiveBag |  | Sets flag 0x960 |  |
| 0x12B | `check_escort_mode` | CheckEscortMode | CheckPartner | u16: Variable | Stores 1 in Variable if the following event flag is activated, stores 0 otherwise |  |
| 0x12C | `set_escort_mode`* | SetEscortMode | SetPartner |  | Activates the following event flag, so you can no longer use the bike, surf, rock climb... |  |
| 0x12D | `clear_escort_mode`* | ClearEscortMode | ClearPartner |  | Deactivates the following event flag, so you can use the bike, surf, rock climb... again |  |
| 0x12E | `scrcmd_302`* | CheckStepTakenFlag | CheckStepFlag | u16: Arg 0 |  |  |
| 0x12F | `scrcmd_303`* | SetStepTakenFlag | SetStepFlag |  |  |  |
| 0x130 | `scrcmd_304`* | GetStepTakenFlag | ClearStepFlag |  |  |  |
| 0x131 | `scrcmd_305`* | CheckGameClearFlag | DummyCheckGameCompleted | u16: Variable | Stores 1 in Variable if flag 0x964 is set, stores 0 otherwise |  |
| 0x132 | `scrcmd_306`* | SetGameClearFlag | DummyGameCompleted |  | Sets flag 0x964 |  |
| 0x133 | `scrcmd_307` | ScrCmd_307 | DoorAnimation | u16: Matrix X; u16: Matrix Y; u16: Map X; u16: Map Y; u8: Door ID | Prepares a building located at Map X and Map Y coordinates in a map located at Matrix X and Matrix Y in the current matrix for animation, with Door ID animation ID |  |
| 0x134 | `scrcmd_308` | ScrCmd_308 | WaitDoor | u8: Door ID | Wait animation of building with Door ID animation ID |  |
| 0x135 | `scrcmd_309` | ScrCmd_309 | FreeDoor | u8: Door ID | Free animation of building with Door ID animation ID |  |
| 0x136 | `scrcmd_310` | ScrCmd_310 | OpenDoor | u8: Door ID | Triggers first animation of building with Door ID animation ID |  |
| 0x137 | `scrcmd_311` | ScrCmd_311 | CloseDoor | u8: Door ID | Triggers second animation of building with Door ID animation ID |  |
| 0x138 | `buffer_day_care_mon_nicks` | BufferDaycareMonNicks | GetDaycareNames |  | Stores first daycare Pokémon nickname in string buffer 0, the second daycare Pokémon nickname in string buffer 1 and the first Pokémon trainer's name in buffer 2 | If there's only one Pokémon in the daycare, string buffer 1 does not change. If no Pokémon is in the daycare, commands does nothing. |
| 0x139 | `get_day_care_state` | GetDaycareState | GetDaycareStatus | u16: Variable | If daycare Pokémon have an egg, stores 1 in Variable. Otherwise it stores 0 if no Pokémon is in the daycare, 2 if only one Pokémon is in the daycare or 3 if there are two Pokémon |  |
| 0x13A | `ecruteak_gym_init` | EcruteakGymInit | InitEcruteakGym |  |  |  |
| 0x13B | `scrcmd_315` | ScrCmd_315 | CMD_315 |  | ??? Something to do with the Goldenrod Dept. Store Basement, probably moving around blocks or opening access to doors. |  |
| 0x13C | `scrcmd_316` | ScrCmd_316 | CMD_316 |  | In 953 trainer scripts. |  |
| 0x13D | `scrcmd_317` | ScrCmd_317 | CMD_317 | u8: Arg 0 | In 953 trainer scripts. |  |
| 0x13E | `cianwood_gym_init` | CianwoodGymInit | CianwoodGymInit |  |  |  |
| 0x13F | `cianwood_gym_turn_winch` | CianwoodGymTurnWinch | CianwoodGymTurnWinch | u16: Result |  |  |
| 0x140 | `vermilion_gym_init` | VermilionGymInit | VermilionGymInit |  |  |  |
| 0x141 | `vermilion_gym_lock_action` | VermilionGymLockAction | VermillionGymAnimation | u8: Arg 0; u8: Arg 1 |  |  |
| 0x142 | `vermilion_gym_can_check` | VermilionGymCanCheck | VermillionGymBin | u8: Arg 0; u16: Var 1 |  |  |
| 0x143 | `resample_vermilion_gym_cans` | ResampleVermilionGymCans | ResetVermilionGymCans |  |  |  |
| 0x144 | `violet_gym_init` | VioletGymInit | InitVioletGym |  | Initializes Violet Gym internal data and 3D model animations |  |
| 0x145 | `violet_gym_elevator` | VioletGymElevator | VioletGymElevator |  | Triggers model #111 to move up or down |  |
| 0x146 | `azalea_gym_init` | AzaleaGymInit | InitAzaleaGym |  |  |  |
| 0x147 | `azalea_gym_spinarak` | AzaleaGymSpinarak | AzaleaGym | u8: Arg 0 |  |  |
| 0x148 | `azalea_gym_switch` | AzaleaGymSwitch | AzaleaGym2 | u8: Arg 0 |  |  |
| 0x149 | `blackthorn_gym_init` | BlackthornGymInit | BlackthornGymInit |  |  |  |
| 0x14A | `fuchsia_gym_init` | FuchsiaGymInit | FuchsiaGymInit |  |  |  |
| 0x14B | `viridian_gym_init` | ViridianGymInit | ViridianGymInit |  |  |  |
| 0x14C | `get_party_count` | GetPartyCount | GetPartyCount | Var: Variable | Stores in Variable the current number of Pokémon in the party |  |
| 0x14D | `scrcmd_333`* | ScrCmd_333 | BagScreen | u8: Bag Pocket | Opens up the Bag screen with the user only being able to select an item from the specified pocket. WARNING: this command is nonfunctional after opening the Bag -- you will be unable to select anything. |  |
| 0x14E | `scrcmd_334`* | ScrCmd_334 | BagScreenSelection | u16: Arg 0 |  |  |
| 0x14F | `scrcmd_335`* | ScrCmd_335 | CheckPocketItems | u16: Arg 0; u16: Arg 1 |  |  |
| 0x150 | `buffer_berry_name`* | BufferBerryName | DummyTextBerry | u8: Slot; u16: Item; u16: Quantity |  |  |
| 0x151 | `buffer_nature_name`* | BufferNatureName | TextNature? | u8: Slot; u16: Nature |  |  |
| 0x152 | `move_person` | MovePerson | SetOWDefaultPosition | u16: Event ID; u16: X; u16: Y | Sets Event ID spawn position to global coords X and Y |  |
| 0x153 | `move_person_facing` | MovePersonFacing | SetOWPosition | u16: Event ID; u16: X; u16: Z; u16: Y; u16: Dir | Moves Event ID to global coords X, Y, Z with Dir direction | Even though some maps are higher, the Z parameter is often 0. Game seems to calculate the correct Z position if it is wrong. |
| 0x154 | `set_object_movement_type` | SetObjectMovementType | SetOWDefaultMovement | u16: Event ID; u16: Movement ID | Sets Event ID's default move code to Movement ID |  |
| 0x155 | `set_object_facing` | SetObjectFacing | SetOWDefaultDirection | u16: Event ID; u16: Direction | Sets Event ID's default direction to Direction ID |  |
| 0x156 | `move_warp` | MoveWarp | SetWarpPosition | u16: Warp ID; u16: X; u16: Y | Moves Warp ID to global coords X and Y |  |
| 0x157 | `move_bg_event`* | MoveBGEvent | SetSpawnablePosition | u16: Spawnable ID; u16: X; u16: Y | Moves Spawnable ID to global coords X and Y |  |
| 0x158 | `scrcmd_344` | ScrCmd_344 | SetOWDirection | u16: Event ID; u16: Direction | Sets Event ID's current direction to Direction ID |  |
| 0x159 | `add_waiting_icon` | AddWaitingIcon | AddWaitingIcon |  |  |  |
| 0x15A | `remove_waiting_icon` | RemoveWaitingIcon | RemoveWaitingIcon |  |  |  |
| 0x15B | `scrcmd_347` | ScrCmd_347 | ReturnScriptWkSet | u16: Result |  |  |
| 0x15C | `wait_button_or_delay` | WaitButtonOrDelay | WaitTimeOrAB | u16: Time | Stops script execution until Time frames have passed or until user presses A or B buttons |  |
| 0x15D | `party_select_ui` | PartySelectUI | ChoosePokemonSelection |  | Opens up the UI to select a Pokémon from the party |  |
| 0x15E | `scrcmd_350` | ScrCmd_350 | UnionChoosePKMNSelection |  |  |  |
| 0x15F | `get_party_selection` | GetPartySelection | GetSelectedPartySlot | u16: Variable | Stores in Variable the selected party slot in a party Pokémon screen, or 0xFF is user cancelled the selection |  |
| 0x160 | `pokemon_summary_screen` | PokemonSummaryScreen | PokemonSummaryScreen | u8: Menu; u16: Party Slot; u16: Move | If Menu is 1, open the summary screen on the learn/forget move UI; otherwise, open the Pokemon summary screen |  |
| 0x161 | `get_move_selection` | GetMoveSelection | GetMoveSelection | u8: ???; u16: Variable | Returns the selected move slot to Variable. Returns 4 if the player cancels |  |
| 0x162 | `get_partymon_species` | GetPartyMonSpecies | GetPartyPokemonID | u16: Party Position; Var: Variable | Stores in Variable the ID of the Pokémon at Party Position | It will return 0 if Pokémon is an egg. |
| 0x163 | `partymon_is_mine` | PartyMonIsMine | CheckTradedPokemon | u16: Party Position; Var: Variable | Stores 0 in Variable if trainer ID and secret ID of the Pokémon at Party Position are the player's ones, stores 1 otherwise |  |
| 0x164 | `party_count_not_egg` | PartyCountNotEgg | CountPartyBornPokemon | Var: Variable | Stores in Variable the number of Pokémon in the Pokémon party, excluding the eggs |  |
| 0x165 | `count_alive_mons` | CountAliveMons | CountAlivePokemonExceptFirst | Var: Variable; u16: Party Position | Count Pokemon that are not fainted. If except is set, exclude that slot from the tally. Use 6 to disable. | Eggs and fainted Pokémon are excluded from the count. If Party Position is ≥ 6, all valid Pokémon will be counted. This command is called CountAlivePokemonExceptFirst in older DSPRE versions. |
| 0x166 | `count_alive_mons_and_pc` | CountAliveMonsAndPC | CountTotalAlivePokemon | u16: Variable | Stores in Variable the number of Pokémon in the Pokémon party and PC boxes, excluding the eggs and fainted Pokémon | As Pokémon can't be fainted in the PC boxes, only eggs are not taken into account in the PC boxes count. |
| 0x167 | `party_count_egg` | PartyCountEgg | CountPartyEggs | u16: Variable | Stores in Variable the number of eggs in the Pokémon party |  |
| 0x168 | `submoneyvar` | SubMoneyVar | TakeMoneyFlex | Var: Money | Subtracts Money from the player's money |  |
| 0x169 | `retrieve_day_care_mon` | RetrieveDaycareMon | RetrieveDayCareMon | u16: Var 0; u16: Var 1 |  |  |
| 0x16A | `give_loan_mon` | GiveLoanMon | GiveLoanPokemon | u8: Pokémon; u8: Level; u16: Header | Gives you Pokémon at Level with Header name on the summary screen. Used for NPC-given Pokémon | Pokémon: 1) Rocky the Onix 2) Muscle the Machop 3) Billy the Voltorb 4) Doris the Dodrio 5) Sprints the Rapidash 6) Rusty the Steelix 7) Shuckie the Shuckle 8) Kenya the Spearow 9) Maggie the Magneton 10) Paul the Xatu 11) Volty the Pikachu 12) Hornlette the Rhyhorn 13) Iron the Beldum |
| 0x16B | `check_return_loan_mon` | CheckReturnLoanMon | CheckReturnLoanPokemon | u8: Arg 0; u16: Var 1; u16: Var 2 |  |  |
| 0x16C | `return_loan_mon` | ReturnLoanMon | DeletePartyPokemon | u16: Party Position | Deletes the Pokémon at Party Position from the party | The Pokémon data is destroyed. |
| 0x16D | `reset_day_care_egg` | ResetDaycareEgg | RemoveDayCareEgg |  |  |  |
| 0x16E | `give_day_care_egg` | GiveDaycareEgg | GiveDayCareEgg |  |  |  |
| 0x16F | `buffer_day_care_withdraw_cost` | BufferDaycareWithdrawCost | TextDayCareCost | u16: Var 0; u16: Var 1 |  |  |
| 0x170 | `hasenoughmoneyvar` | HasEnoughMoneyVar | CompareMoneyFlex | Var: Variable; u16: Money | Returns 1 to Variable if the player has Money or more money, returns 0 otherwise |  |
| 0x171 | `egg_hatch_anim` | EggHatchAnim | EggHatchScreen |  | Opens the egg hatching screen with an egg in the Pokémon party that has 0 steps left for hatching | This may crash if there's no ready egg in the Pokémon party. It's better not to use this command unless you know what are you doing. |
| 0x172 | `scrcmd_370`* | ScrCmd_370 | CMD_370 | u8: Arg 0 |  |  |
| 0x173 | `buffer_day_care_mon_growth` | BufferDaycareMonGrowth | CheckDaycareLevelGain | u16: Variable; u16: Position | Stores the amount of levels a Pokémon in the Daycare has gained from being in the Daycare |  |
| 0x174 | `get_tail_day_care_mon_species_and_nick` | GetTailDaycareMonSpeciesAndNick | GetDayCareSpeciesandNick | u16: Result |  |  |
| 0x175 | `put_mon_in_day_care` | PutMonInDaycare | GiveDayCareMon | u16: Result |  |  |
| 0x176 | `scrcmd_374` | ScrCmd_374 | UnvanishOverworld | u16: Event ID | Makes Event ID visible again if it was invisible | Can be used on Following Pokémon. Useful for scripting events that happen as soon as the player walks into a buidling and their Following Pokémon hasn't spawned yet. The Following Pokémon will "unvanish" on the same tile as the player, so account for this in movement scripts. |
| 0x177 | `make_object_visible` | MakeObjectVisible | VanishOverworld | u16: Event ID | Makes Event ID invisible, but still collisionable | It's a great idea to use this command in a level script for blocking doors with invisible events. |
| 0x178 | `scrcmd_376` | ScrCmd_376 | MailScreen |  | Opens the mail screen |  |
| 0x179 | `scrcmd_377` | ScrCmd_377 | CountMail | u16: Variable | Stores in Variable the current amount of mails in the mailbox |  |
| 0x17A | `view_rankings` | ViewRankings | RankingView | [0] u16: Scope; u16: Page; u16: Record |  |  |
| 0x17B | `scrcmd_379` | ScrCmd_379 | GetTimePeriod | u16: Variable | Stores in Variable the current time period of the day | The different values are: 0: From 04:00 AM to 09:59 AM (Morning) 1: From 10:00 AM to 04:59 PM (Noon) 2: From 05:00 PM to 07:59 PM (Evening) 3: From 08:00 PM to 11:59 PM (Night) 4: From 00:00 AM to 03:59 AM (Midnight) |
| 0x17C | `random` | Random | GetRandom | u16: Variable; u16: Range | Generates a random number between 0 and Range - 1, and stores it in Variable |  |
| 0x17D | `scrcmd_381`* | ScrCmd_381 | DummyGetRandom | u16: Variable; u16: Range | Generates a random number between 0 and Range - 1, and stores it in Variable | Exactly the same code as the command above. |
| 0x17E | `mon_get_friendship` | MonGetFriendship | GetPokemonHappiness | u16: Variable; u16: Party Position | Stores in Variable the happiness of Pokémon in Party Position |  |
| 0x17F | `mon_add_friendship` | MonAddFriendship | AddHappiness | u16: Happiness; u16: Party Position | Adds Happiness to the happiness of Pokémon in Party Position |  |
| 0x180 | `mon_subtract_friendship`* | MonSubtractFriendship | SubHappiness | u16: Happiness; u16: Party Position | Subs Happiness to the happiness of Pokémon in Party Position |  |
| 0x181 | `buffer_day_care_mon_stats` | BufferDaycareMonStats | TextDaycareMonData | u16: Arg 0; u16: Arg 1; u16: Arg 2; u16: Arg 3 |  |  |
| 0x182 | `get_player_facing` | GetPlayerFacing | GetPlayerDirection | u16: Variable | Stores in Variable the direction the player is looking at | Predicted. Seeing up gives 0, seeing down gives 1, seeing left gives 2 and seeing right gives 3. |
| 0x183 | `get_day_care_compatibility` | GetDaycareCompatibility | GetDayCareMonCompatibility | u16: Result |  |  |
| 0x184 | `check_day_care_egg` | CheckDaycareEgg | CheckDayCareEgg | u16: Result |  |  |
| 0x185 | `player_has_species` | PlayerHasSpecies | CheckBornPokemonInParty | u16: Variable; u16: Pokémon | Stores 1 in Variable if Pokémon is currently in the Pokémon party, stores 0 otherwise | Eggs do not count as Pokémon, so they will be ignored. |
| 0x186 | `size_record_compare` | SizeRecordCompare | ComparePokemonPlayerSize | u16: Variable; u16: Party Position | Stores 0 in Variable if Pokémon at Party Position does not have a bigger relative size than player's record, stores 1 if it's the same size and stores 2 if it has a bigger relative size |  |
| 0x187 | `size_record_update` | SizeRecordUpdate | SetPokemonSizeRecord | u16: Party Position | Stores the relative size of Pokémon at Party Position as player's record |  |
| 0x188 | `buffer_mon_size` | BufferMonSize | TextPartyPokemonSize | u16: Integer String Buffer; u16: Decimal String Buffer; u16: Party Position | Stores the Integer part of Pokémon at Party Position size in Integer String Buffer (1 to 3 digits) and the decimal part of the size in Decimal String Buffer (1 digit) |  |
| 0x189 | `buffer_record_size` | BufferRecordSize | TextPokemonRecordSize | u16: Integer String Buffer; u16: Decimal String Buffer; u16: Pokémon ID | Stores the Integer part of player's record size, normalized to Pokémon ID range, in Integer String Buffer (1 to 3 digits) and the decimal part of the size in Decimal String Buffer (1 digit) |  |
| 0x18A | `scrcmd_394` | ScrCmd_394 | CMD_394 | u16: Result |  |  |
| 0x18B | `scrcmd_395` | ScrCmd_395 | CMD_395 | u16: Result |  |  |
| 0x18C | `count_mon_moves` | CountMonMoves | GetMoveCount | u16: Variable; u16: Party Position | Stores in Variable the total amount of moves that the Pokémon at Party Position currently has |  |
| 0x18D | `mon_forget_move` | MonForgetMove | DeleteMove | u16: Party Position; u16: Move Slot | Deletes the move in Move Slot from the Pokémon at Party Position |  |
| 0x18E | `mon_get_move` | MonGetMove | GetPartyPokemonMove | u16: Variable; u16: Party Position; u16: Move Slot | Stores in Variable the ID of the move in Move Slot from the Pokémon at Party Position |  |
| 0x18F | `buffer_party_mon_move_name` | BufferPartyMonMoveName | TextPartyPokemonMove | u8: String Buffer; u16: Party Position; u16: Move Slot | Stores the name of the move in Move Slot from the Pokémon at Party Position in String Buffer |  |
| 0x190 | `strength_flag_action` | StrengthFlagAction | Strength | [0] u8: Mode=0 - Disables Strength so player can no longer move boulders [1] u8: Mode=1 - Allows the player to automatically move Strength boulders [2] u8: Mode=2; u16: Arg 0 - Checks if Strength is activated, store answer in Variable | action = 0: Deactivate strength action = 1: Activate strength action = 2: Check whether strength is active |  |
| 0x191 | `flash_action` | FlashAction | Flash | [0] u8: Mode=0 - Clears the Flash system flag [1] u8: Mode=1 - Sets the Flash system flag [2] u8: Mode=2; u16: Arg 0 - Checks if Flash is activated, store answer in Variable | Function depends on the first parameter: 0: Clears the Flash system flag 1: Sets the Flash system flag 2: Checks if Flash is activated, store answer in Variable |  |
| 0x192 | `defog_action`* | DefogAction | DefogAction | [0] u8: Mode=0 - Clears the Defog system flag [1] u8: Mode=1 - Sets the Defog system flag [2] u8: Mode=2; u16: Arg 0 - Checks if Defog is activated, store answer in Variable | Function depends on the first parameter: 0: Clears the Defog system flag 1: Sets the Defog system flag 2: Checks if Defog is activated, store answer in Variable |  |
| 0x193 | `scrcmd_403` | ScrCmd_403 | GiveAccessory | u16: Var 0; u16: Var 1 |  |  |
| 0x194 | `scrcmd_404` | ScrCmd_404 | CheckGivenAccessory | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x195 | `scrcmd_405`* | ScrCmd_405 | CheckAccessory | u16: Arg 0; u16: Arg 1; u16: Arg 2 |  |  |
| 0x196 | `scrcmd_406` | ScrCmd_406 | GiveDressupBackground | u16: Background |  |  |
| 0x197 | `scrcmd_407` | ScrCmd_407 | CheckBGAccessory | u16: Var 0; u16: Var 1 |  |  |
| 0x198 | `scrcmd_408` | ScrCmd_408 | CMD_408 | u16: Var 0; u16: Var 1 |  |  |
| 0x199 | `scrcmd_409` | ScrCmd_409 | CMD_409 |  |  |  |
| 0x19A | `scrcmd_410` | ScrCmd_410 | CMD_410 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x19B | `scrcmd_411` | ScrCmd_411 | CMD_411 |  |  |  |
| 0x19C | `scrcmd_412` | ScrCmd_412 | CMD_412 | u16: Arg 0; u16: Var 1; u16: Var 2 |  |  |
| 0x19D | `scrcmd_413` | ScrCmd_413 | CMD_413 | u16: Var 0; u16: Arg 1; u16: Var 2; u16: Var 3 |  |  |
| 0x19E | `scrcmd_414` | ScrCmd_414 | CMD_414 | u16: Result |  |  |
| 0x19F | `scrcmd_415` | ScrCmd_415 | CMD_415 | u16: Result |  |  |
| 0x1A0 | `scrcmd_416` | ScrCmd_416 | CMD_416 | u16: Arg 0; u16: Arg 1; u16: Var 2 |  |  |
| 0x1A1 | `scrcmd_417` | ScrCmd_417 | CMD_417 | u16: Arg 0; u16: Var 1 |  |  |
| 0x1A2 | `scrcmd_418` | ScrCmd_418 | CMD_418 | u16: Var 0; u16: Var 1 |  |  |
| 0x1A3 | `scrcmd_419` | ScrCmd_419 | CMD_419 | u16: Result |  |  |
| 0x1A4 | `scrcmd_420` | ScrCmd_420 | CMD_420 | u16: Arg 0 |  |  |
| 0x1A5 | `scrcmd_421`* | ScrCmd_421 | CMD_421 | u16: Arg 0; u16: Arg 1; u16: Arg 2 |  |  |
| 0x1A6 | `scrcmd_422`* | ScrCmd_422 | CMD_422 | u16: Arg 0; u16: Arg 1; u16: Arg 2; u8: Arg 3 |  |  |
| 0x1A7 | `check_johto_dex_complete` | CheckJohtoDexComplete | CheckCompleteJohtoDex | u16: Variable | Stores 1 in Variable if every Pokémon in the Johto Pokédex has been seen, stores 0 otherwise |  |
| 0x1A8 | `check_national_dex_complete` | CheckNationalDexComplete | CheckCompleteNationalDex | u16: Variable | Stores 1 in Variable if every Pokémon in the National Pokédex has been caught, stores 0 otherwise |  |
| 0x1A9 | `show_certificate` | ShowCertificate | OpenPokedexScreen | u16: Arg 0 |  | Requires a fadescreen before using 0 = Johto Dex Complete 1 = Natioanl Dex Complete |
| 0x1AA | `kenya_check` | KenyaCheck | CheckPokemonMail | u16: Var 0; u16: Var 1; u8: Arg 2 |  |  |
| 0x1AB | `scrcmd_427`* | ScrCmd_427 | CMD_427 | u16: Arg 0 |  |  |
| 0x1AC | `mon_give_mail` | MonGiveMail | TakePokemonMail | u16: Result |  |  |
| 0x1AD | `countfossils` | CountFossils | GetFossilCount | u16: Variable | Stores in Variable the current amount of fossils in the bag | Technically it's the number of items in the bag whose ID is between 99 and 105. |
| 0x1AE | `set_phone_call` | SetPhoneCall | PreparePokeGearCall | u16: Caller ID; u16: Call Kind; u16: Call Script | Sets up a phone call from Caller ID for RunPhoneCall. Scripts pass 2 as Call Kind. Call Script picks which of Prof. Elm's scripted calls plays (0-4); other callers ignore it. Only rings on maps that allow incoming calls. | The PhoneCall macro stores the three values in 0x8004-0x8006 and calls a standard script that runs SetPhoneCall and RunPhoneCall. |
| 0x1AF | `run_phone_call` | RunPhoneCall | StartPokeGearCall |  | Starts the PokéGear phone call that was previously set. |  |
| 0x1B0 | `getfossilpokemon` | GetFossilPokemon | GetPokeNameFromFossil | u16: Variable; u16: Item ID | Stores in Variable the ID of the Pokémon to which Item ID fossil belongs |  |
| 0x1B1 | `getfossilminimumamount` | GetFossilMinimumAmount | CheckFossil | u16: Position; u16: Item ID; u16: Amount | Stores in Item ID the ID of the first fossil item in the bag that the player has at least Amount quantity of, and stores in Position the amount of fossils in the bag before the first fossil that met the quantity condition | Stores 0 in both variables if there's no fossil in the bag. |
| 0x1B2 | `party_count_mons_at_or_below_level` | PartyCountMonsAtOrBelowLevel | CountPokemonUnderLevel | u16: Variable; u16: Level | Stores in Variable the amount of Pokémon in party whose level is equal or lower than Level | Eggs are completely ignored. |
| 0x1B3 | `survive_poisoning` | SurvivePoisoning | SurvivePoison | u16: Variable; u16: Party Position | If Pokémon at Party Position is poisoned and at 1 HP, it cures the poison and stores 1 in Variable, otherwise it stores 0 |  |
| 0x1B4 | `scrcmd_436` | ScrCmd_436 | FinishOverworldScreen |  |  |  |
| 0x1B5 | `debugwatch` | DebugWatch | DummyGetVar | u16: Result |  |  |
| 0x1B6 | `get_std_msg_naix` | GetStdMsgNaix | GetCommonMessageArchive | u16: Archive Number; u16: Result | If Archive Number exists in the array, return the number of the text archive in Result; otherwise, return 0. E.g.: in Cameron the Photographer scripts, ``GetCommonMessageArchive 2 0x800C`` is used, then followed up with ``MessageFromArchive 0x800C X``; the 2 refers to the entry in the array in the Notes to the right of this box, and because number 2 is text archive 30 in the array, the command returns 30 to 0x800C. It then loads text archive 30 and displays message X when followed by the ``MessageFromArchive 0x800C X`` | Archive Array Entry 0: day of the week siblings (text archive 752) Entry 1: field moves (text arhive 211) Entry 2: Cameron the photographer (text archive 30) Entry 3: pokemart and various shops (text archive 435) |
| 0x1B7 | `non_npc_msg_extern`* | NonNPCMsgExtern | CMD_439 | u16: Var 0; u16: Var 1 |  |  |
| 0x1B8 | `msgbox_extern` | MsgBoxExtern | MessageFromArchive | u16: Archive Number, Flex: Message ID; u16: Var 1 | Loads Message ID in text archive Archive Number |  |
| 0x1B9 | `scrcmd_441`* | ScrCmd_441 | CMD_441 | u16: Arg 0; u16: Arg 1; u16: Arg 2; u16: Arg 3 |  |  |
| 0x1BA | `scrcmd_442`* | ScrCmd_442 | CMD_442 | u16: Arg 0; u16: Arg 1; u16: Arg 2; u16: Arg 3 |  |  |
| 0x1BB | `scrcmd_443`* | ScrCmd_443 | CMD_443 | u8: Arg 0 |  |  |
| 0x1BC | `scrcmd_444` | ScrCmd_444 | CMD_444 | u8: Arg 0; u16: Arg 1; u16: Arg 2; u8: Arg 3 |  |  |
| 0x1BD | `scrcmd_445` | ScrCmd_445 | GetPreviousHeaderID | u16: Variable | Stores in Variable the header ID of the previous accessed map |  |
| 0x1BE | `scrcmd_446` | ScrCmd_446 | GetCurrentHeaderID | u16: Variable | Stores in Variable the header ID of the map the player is currently on |  |
| 0x1BF | `safari_zone_action` | SafariZoneAction | SetSafariFlag | u8: Flag; u8: Mode | If Flag is 0 safari encounters are activated, if Flag is 1 safari encounters are deactivated, being the own safari encounters if Mode is 0 or using the Safari Zone link if 1 |  |
| 0x1C0 | `scrcmd_448` | ScrCmd_448 | BattleRoomWarp | u16: Arg 0; u16: Arg 1; u16: Var 2; u16: Var 3; u16: Arg 4 |  |  |
| 0x1C1 | `scrcmd_449` | ScrCmd_449 | ExitBattleRoom |  |  |  |
| 0x1C2 | `scrcmd_450` | ScrCmd_450 | GeonetScreen |  | Opens the Geonet screen |  |
| 0x1C3 | `scrcmd_451` | ScrCmd_451 | CMD_451 | u16: Result |  |  |
| 0x1C4 | `scrcmd_452` | ScrCmd_452 | ShowPokemonPic | u16: Pokémon; u16: Gender | Opens a window with the picture of Pokémon with Gender gender and registers the Pokémon in the Pokédex as seen | 0 = Male or Genderless; 1 = Female |
| 0x1C5 | `scrcmd_453` | ScrCmd_453 | HidePokemonPic |  | Hides the window of a Pokémon picture |  |
| 0x1C6 | `scrcmd_454` | ScrCmd_454 | CMD_454 |  |  |  |
| 0x1C7 | `scrcmd_455` | ScrCmd_455 | CMD_455 |  |  |  |
| 0x1C8 | `scrcmd_456`* | ScrCmd_456 | CMD_456 | u8: Arg 0 |  |  |
| 0x1C9 | `mon_get_nature`* | MonGetNature | GetPokemonNature | u16: Variable; u16: Party Position |  |  |
| 0x1CA | `get_party_slot_with_nature`* | GetPartySlotWithNature | CheckPartyNature | u16: Variable; u16: Nature ID |  |  |
| 0x1CB | `scrcmd_459` | ScrCmd_459 | CMD_459 |  |  |  |
| 0x1CC | `load_phone_dat` | LoadPhoneDat | LoadPokegearData | u16: Trainer ID; u16: Phone Number | Loads the first phone book entry for Trainer ID, for the phone commands that follow, and stores its phone number in Phone Number, or 255 if no entry has that trainer. |  |
| 0x1CD | `get_phone_contact_msg_ids` | GetPhoneContactMsgIds | SetRebattleTrainerID | u8: Line; u16: Message Archive; u16: Message | For the entry loaded by LoadPhoneDat, stores the contact's message archive and message number Line + 1. Line is 0-4; anything higher counts as 0. |  |
| 0x1CE | `scrcmd_462` | ScrCmd_462 | DisablePokegearRematch | u16: Phone Contact | Clears the rematch Phone Contact is waiting for, so GetPhoneBookRematch returns 0 until they offer another one. |  |
| 0x1CF | `enable_mass_outbreaks` | EnableMassOutbreaks | EnableMassOutbreaks |  |  | Supposed |
| 0x1D0 | `create_roamer` | CreateRoamer | AddRoamingPokemon | u8: ID | Activates a roaming Pokémon depending on the ID | Uses ID to determine which roaming Pokémon must appear: 0 for Entei, 1 for Raikou, 2 for Latias and 3 for Latios. |
| 0x1D1 | `scrcmd_465` | ScrCmd_465 | UnionGroup | [0] u16: Mode=0; u16: Arg 0; u16: Arg 1 - Checks if group ID exists, returns answer in Variable [1] u16: Mode=1; u16: Arg 0; u16: Arg 1 - Checks if group ID is accesible, returns answer in Variable [2] u16: Mode=2; u16: Arg 0; u16: Arg 1 - Writes group ID name in String Buffer [3] u16: Mode=3; u16: Arg 0; u16: Arg 1 - Writes leader's name of Group ID in String Buffer [4] u16: Mode=4; u16: Arg 0 - Opens keyboard, stores 1 in Variable if user cancels, 2 if group name already exists, 0 otherwise [5] u16: Mode=5; u16: Arg 0 - Enter in group ID [6] u16: Mode=6 - Creates a group [7] u16: Mode=7; u16: Arg 0 - ??? | Function depends on the first parameter: 0: Checks if group ID exists, returns answer in Variable 1: Checks if group ID is accesible, returns answer in Variable 2: Writes group ID name in String Buffer 3: Writes leader's name of Group ID in String Buffer 4: Opens keyboard, stores 1 in Variable if user cancels, 2 if group name already exists, 0 otherwise 5: Enter in group ID 6: Creates a group 7: ??? | This command is the devil. |
| 0x1D2 | `scrcmd_466` | ScrCmd_466 | CheckHasLearnableMoves | u16: Variable; u16: Party Slot | Returns 0 to Var if the Pokémon has no learnable moves in its learnset at that level. | For example, a Magikarp at level 10 would return 0 because it has no learnable moves in its learnset at that level. This command is used for the Move Reminder |
| 0x1D3 | `move_relearner_init` | MoveRelearnerInit | RememberMoveScreen | u16: Result |  |  |
| 0x1D4 | `move_tutor_init` | MoveTutorInit | TeachMovesScreen | u16: Var 0; u16: Arg 1 |  |  |
| 0x1D5 | `move_relearner_get_result` | MoveRelearnerGetResult | ResponseTeachMove | u16: Result |  |  |
| 0x1D6 | `load_npc_trade` | LoadNPCTrade | InitTrade | u8: Trade ID | Initializes Trade ID trade data |  |
| 0x1D7 | `get_offered_species`* | GetOfferedSpecies | GetOfferedPokemon | u16: Variable | Stores in Variable the ID of the offered Pokémon of the current trade data |  |
| 0x1D8 | `npc_trade_get_req_species` | NPCTradeGetReqSpecies | GetRequestedPokemon | u16: Variable | Stores in Variable the ID of the requested Pokémon of the current trade data |  |
| 0x1D9 | `npc_trade_exec` | NPCTradeExec | TradePokemonScreen | u16: Party Position | Opens the trade Pokémon screen, giving the Pokémon at Party Position and receiving the offered Pokémon of the current trade data |  |
| 0x1DA | `npc_trade_end` | NPCTradeEnd | EndTrade |  | Frees the current trade data from the memory |  |
| 0x1DB | `scrcmd_475`* | ScrCmd_475 | DummyInternationalDex |  | Nothing |  |
| 0x1DC | `scrcmd_476`* | EnablePokedexFormDetection | DummyDimorphismDex |  | Nothing | In fact it does activate a dimorphism flag in the Pokédex data, but since the HGSS Pokédex has the gender comparision by default, command's actual purpose is not noticeable. |
| 0x1DD | `nat_dex_flag_action` | NatDexFlagAction | NationalDex | u8: Mode; u16: Mode | Function depends on the first parameter: 1: Activates the National Pokédex mode 2: Stores 1 in Variable if player has the National Pokédex, otherwise it stores 0 |  |
| 0x1DE | `mon_get_ribbon_count`* | MonGetRibbonCount | PokemonRibbonCount | u16: Variable; u16: Party Position | Stores in Variable the amount of ribbons that the Pokémon in Party Position has |  |
| 0x1DF | `party_get_ribbon_count`* | GetPartyRibbonCount | PartyRibbonCount | u16: Variable | Stores in Variable the total amount of different ribbons in the current Pokémon party |  |
| 0x1E0 | `mon_has_ribbon` | MonHasRibbon | CheckRibbon | u16: Variable; u16: Party Position; u16: Ribbon | Stores 1 in Variable if the Pokémon in Party Position has the Ribbon ribbon, stores 0 otherwise |  |
| 0x1E1 | `give_ribbon` | GiveRibbon | GiveRibbon | u16: Party Position; u16: Ribbon | Gives the Ribbon ribbon to Pokémon in Party Position | Check the note for what each ribbon's number is |
| 0x1E2 | `buffer_ribbon_name`* | BufferRibbonName | TextRibbon | u8: String Buffer; u16: Ribbon | Stores the name of the Ribbon in String Buffer |  |
| 0x1E3 | `get_ev_total` | GetEVTotal | CountPokemonEVs | u16: Variable; u16: Party Position | Stores in Variable the total amount of effort values of Pokémon in Party Position | Predicted. |
| 0x1E4 | `get_weekday` | GetWeekday | GetDayOfWeek | u16: Variable | Stores in Variable the current day of the week | Value 0 is the first possible value and it's for Sunday. |
| 0x1E5 | `scrcmd_485`* | StartBattleRegulationMenuTask | ShowRulesList | u16: Variable | ??? |  |
| 0x1E6 | `dummy_486` | Dummy486 | DummyGetPokemonFootprint |  | Nothing |  |
| 0x1E7 | `pokecen_anim` | PokeCenAnim | PCHealAnimation | u16: Pokéballs | Triggers the Pokémon Center healing animation with PokéBalls number of player's Pokémon |  |
| 0x1E8 | `elevator_anim` | ElevatorAnim | ElevatorAnimation | u16: Direction; u16: Count | Triggers the animation of building #208 down (if Direction is 0) or up (if Direction is 1) Count consecutive times |  |
| 0x1E9 | `mystery_gift` | MysteryGift | MysteryGiftGive | [0] u16: Mode=0 - Initializes the data for receiving a Mystery Gift [1] u16: Mode=1; u16: Arg 0 - Checks if there is a Mystery Gift, stores answer in Variable [2] u16: Mode=2; u16: Arg 0 - Stores the Mystery Gift ID in Variable [3] u16: Mode=3; u16: Arg 0 - Checks if player can receive the Mystery Gift, stores answer in Variable [4] u16: Mode=4 - Gives the Mystery Gift to the player [5] u16: Mode=5; u16: Arg 0; u16: Arg 1 - Shows the succeed text at Text File file and Text Line slot [6] u16: Mode=6; u16: Arg 0; u16: Arg 1 - Shows the unable text at Text File file and Text Line slot [7] u16: Mode=7 - Ends the Mystery Gift process [8] u16: Mode=8 - Saves data and ends the Mystery Gift process | Function depends on the first parameter: 0: Initializes the data for receiving a Mystery Gift 1: Checks if there is a Mystery Gift, stores answer in Variable 2: Stores the Mystery Gift ID in Variable 3: Checks if player can receive the Mystery Gift, stores answer in Variable 4: Gives the Mystery Gift to the player 5: Shows the succeed text at Text File file and Text Line slot 6: Shows the unable text at Text File file and Text Line slot 7: Ends the Mystery Gift process 8: Saves data and ends the Mystery Gift process | This one too. |
| 0x1EA | `nop_var_490` | NopVar490 | CMD_490 | u16: Result |  |  |
| 0x1EB | `scrcmd_491` | ScrCmd_491 | CMD_491 | u16: Arg 0 |  |  |
| 0x1EC | `scrcmd_492` | ScrCmd_492 | CMD_492 | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x1ED | `prompt_easy_chat` | PromptEasyChat | EasyChat | u16: Result; u16: Option 1; u16: Option 2 | Opens up the Easy Chat UI. Returns 0 if Cancel is selected |  |
| 0x1EE | `scrcmd_494` | ScrCmd_494 | CMD_494 | u16: Arg 0; u16: Var 1 |  |  |
| 0x1EF | `get_game_version` | GetGameVersion | CheckVersion | u16: Variable | Returns 0x7 to Variable if game is HeartGold, 0x8 if SoulSilver |  |
| 0x1F0 | `get_party_lead`* | GetPartyLead | FirstPokemonInParty | u16: Variable | Stores in Variable the slot of the first Pokémon in the party that is not an egg |  |
| 0x1F1 | `get_mon_types` | GetMonTypes | GetPartyPokemonTypes | u16: Type 1; u16: Type 2; u16: Party Position | Return Type 1 and Type 2 of the Pokémon in Party Position in Variables | TYPE_NORMAL 0 TYPE_FIGHTING 1 TYPE_FLYING 2 TYPE_POISON 3 TYPE_GROUND 4 TYPE_ROCK 5 TYPE_BUG 6 TYPE_GHOST 7 TYPE_STEEL 8 TYPE_??? 9 TYPE_FIRE 10 TYPE_WATER 11 TYPE_GRASS 12 TYPE_ELECTRIC 13 TYPE_PSYCHIC 14 TYPE_ICE 15 TYPE_DRAGON 16 TYPE_DARK 17 |
| 0x1F2 | `primo_password_check_1` | PrimoPasswordCheck1 | CheckPrimoPasswordWallpaper | u16: Result; u16: Response 1; u16: Response 2; u16: Response 3; u16: Response 4 | Determines if the given responses for Primo's Easy Chat will give a wallpaper. Returns 255 to Result if ??? and the following command should be used to check for Eggs, or 0 to Result if the bonus wallpapers are already unlocked. Otherwise, give a random bonus wallpaper | Currently unknown when/why it returns 255, but it is something to do with the password not matching any for the wallpapers and thus moving on to check for Eggs. |
| 0x1F3 | `primo_password_check_2` | PrimoPasswordCheck2 | CheckPrimoPasswordEggs | u16: Result; u16: Response 1; u16: Response 2; u16: Response 3; u16: Response 4 |  |  |
| 0x1F4 | `scrcmd_500` | ScrCmd_500 | PreparePCAnimation | u8: Arg 0 |  |  |
| 0x1F5 | `scrcmd_501` | ScrCmd_501 | OpenPCAnimation | u8: Arg 0 |  |  |
| 0x1F6 | `scrcmd_502` | ScrCmd_502 | ClosePCAnimation | u8: Arg 0 |  |  |
| 0x1F7 | `loto_id_get` | LotoIDGet | GetLottoNumber | u16: Variable | Stores Lotto random number in Variable | Supposed by analogy with Platinum. |
| 0x1F8 | `loto_id_search` | LotoIDSearch | CheckWinLotto | u16: Matchpos; u16: Digits; u16: Pc; u16: Winning Number | Takes a Winning Number as input and responds as follows. If no matching Pokémon could be found or an error occurs: MatchPos: 0; Digits: 0; PC: 0. For all other cases: If the matching Pokémon is in the Player's party, PC will be assigned 0. Otherwise, if it's in the Player's Storage System, PC will be assigned 1. MatchPos stores the zero-based position of the winning Pokémon (either as Party pos or Storage System pos, depending on the value of PC). When there's a match, the Digits var is assigned the number of matching digits of the Winning Pokémon's PID. In case of multiple matches, priority is always given to the one with the most matching digits. | Supposed by analogy with Platinum. To retrieve the exact position of a winning Pokémon in the Storage System, first make sure PC equals 1. The zero-based PC Page and Position indices can be calculated: PC Page index = MatchPos / 30 Position in page = MatchPos % 30 where % is the modulo operator. |
| 0x1F9 | `loto_id_set` | LotoIDSet | InitLotto |  | Generates two random numbers and assigns them to two system lottery Variables. | Supposed by analogy with Platinum. |
| 0x1FA | `bufferboxmonnick` | BufferBoxMonNick | BufferBoxPokemonNick | u8: Arg 0; u16: Var 1 |  |  |
| 0x1FB | `count_pc_empty_space` | CountPCEmptySpace | CountPCFreeSpace | u16: Variable | Stores in Variable the amount of free Pokémon slots in PC boxes |  |
| 0x1FC | `palpark_action` | PalParkAction | PalParkControl | u16: Arg 0 |  |  |
| 0x1FD | `scrcmd_509` | ScrCmd_509 | PalParkDepositCountCheck | u16: Result |  |  |
| 0x1FE | `scrcmd_510` | ScrCmd_510 | PalParkBoxPokemonCaught |  |  |  |
| 0x1FF | `pal_park_score_get` | PalParkScoreGet | PalParkScoreResult | u16: Arg 0; u16: Var 1 |  |  |
| 0x200 | `player_movement_saving_set` | PlayerMovementSavingSet | PlayerMovementSavingSet |  |  |  |
| 0x201 | `player_movement_saving_clear` | PlayerMovementSavingClear | PlayerMovementSavingClear |  |  |  |
| 0x202 | `hall_of_fame_anim` | HallOfFameAnim | HallOfFameAnime | u16: Result | Animate placing the balls on the machine for the Hall of Fame |  |
| 0x203 | `add_special_game_stat` | AddSpecialGameStat | AddTrainerScore | u16: Score | Adds Score to the Trainer Score seen on the Trainer Card |  |
| 0x204 | `buffer_fashion_name` | BufferFashionName | TextAccessory | u8: String Buffer; u16: Accesory | Stores Accesory's name in String Buffer |  |
| 0x205 | `scrcmd_517` | ScrCmd_517 | CheckPokemonInParty | u16: Pokémon; u16: Variable | Stores 1 in Variable if Pokémon (or its egg) is currently in the Pokémon party, stores 0 otherwise |  |
| 0x206 | `scrcmd_518` | ScrCmd_518 | SetDeoxysForm | u16: Form | Sets every Deoxys in the Pokémon party the Form form | Form 0 is Normal, form 1 is Attack, form 2 is Defense and form 3 is Speed. |
| 0x207 | `scrcmd_519`* | ScrCmd_519 | CheckBurmyForms | u16: Variable | Stores in Variable the number of current different Burmy forms in the Pokémon party | Returns 0 if player has no Burmy in the party, 1 if only one different form, 2 if two different forms and 3 if has three or more Burmy with three different forms. |
| 0x208 | `scrcmd_520` | ScrCmd_520 | CMD_520 |  | ??? | Sets a internal flag. |
| 0x209 | `scrcmd_521` | ScrCmd_521 | CMD_521 |  | ??? | Resets a internal flag. |
| 0x20A | `scrcmd_522` | ScrCmd_522 | GetHour | u16: Variable | Stores current hour from RTC in Variable |  |
| 0x20B | `scrcmd_523` | ScrCmd_523 | ShakeOverworld | u16: Event ID; u16: Count; u16: Time; u16: X; u16: Y | Makes Event ID overworld shake Count times in Time frames, moving X horizontally and Y vertically each shake | Event ID must be released before this command in order to see the animation. |
| 0x20C | `scrcmd_524`* | ScrCmd_524 | BlinkOverworld | u16: ???; u16: ???; u16: ??? | ??? |  |
| 0x20D | `scrcmd_525`* | ScrCmd_525 | CheckRegis | u16: Variable | Stores 1 in Variable if player has the 3 Regis in the party, stores 0 otherwise |  |
| 0x20E | `scrcmd_526`* | ScrCmd_526 | CMD_526 | u16: Arg 0 |  |  |
| 0x20F | `scrcmd_527` | ScrCmd_527 | MessageUnown | u16: Text Slot | Display line Text Slot from the text file with the Unown font | Predicted. |
| 0x210 | `scrcmd_528` | ScrCmd_528 | CheckGBACartidge | u16: Variable | Stores the current GBA cartridge ID in Variable | Stores 0 if no cartridge, 1 if Pokémon Sapphire, 2 if Pokémon Ruby, 3 if Pokémon Emerald, 4 if Pokémon FireRed and 5 if Pokémon LeafGreen. Somehow it could also set 7 if Pokémon Gold, 8 if Pokémon Silver, 10 if Pokémon Diamond, 11 if Pokémon Pearl, 12 if Pokémon Platinum and 15 if Pokémon Colosseum. |
| 0x211 | `get_party_lead_alive` | GetPartyLeadAlive | GetFirstAlivePokemonSlot | u16: Variable | Stores in Variable the slot of the first Pokémon in the party that is not an egg nor is fainted | Predicted. |
| 0x212 | `scrcmd_530` | ScrCmd_530 | SetMatrixAlternativeMap | u16: Alternative ID; u8: Status | Permanently changes a worldmap matrix cell corresponding to Alternative ID if Status is 1, reverts the change if 0 | It only changes the map file value in the matrix, not the map header nor the map height. Seems that the only Alternative ID available values are 0 and 1, corresponding to Mahogany Town and to the Lake of Rage. |
| 0x213 | `buffer_background_name` | BufferBackgroundName | TextBackgroundName | u8: Arg 0; u16: Var 1 |  |  |
| 0x214 | `check_coins_immediate` | CheckCoinsImmediate | HasCoinsImmediate | u16: Result; u32: Coins | Stores 1 in Result if player has at least Coins coins, stores 0 otherwise |  |
| 0x215 | `checkgivecoins` | CheckGiveCoins | CanGiveCoins | u16: Result; Flex: Coins | Stores 1 in Result if player can receive Coins coins (i.e. it won't exceed the cap), stores 0 otherwise |  |
| 0x216 | `scrcmd_534`* | ScrCmd_534 | CheckVar4041 | u16: Result | Stores 1 in Result if Var 0x4041 is set to 1, stores 0 otherwise |  |
| 0x217 | `mon_get_level`* | MonGetLevel | GetPokemonLevel | u16: Result; u16: Party Slot | Stores into Result the level of the Pokémon at a given Party Slot. |  |
| 0x218 | `scrcmd_536`* | ScrCmd_536 | CMD_536 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x219 | `scrcmd_537`* | ScrCmd_537 | CMD_537 |  |  |  |
| 0x21A | `scrcmd_538` | ScrCmd_538 | CMD_538 | u16: Var 0; u16: Arg 1 |  |  |
| 0x21B | `scrcmd_539`* | ScrCmd_539 | CMD_539 | u16: Arg 0 |  |  |
| 0x21C | `scrcmd_540` | ScrCmd_540 | CMD_540 | u16: Result |  | Only checks words in the Tough category |
| 0x21D | `buffer_int_ex` | BufferIntEx | TextNumberSp | u8: String Buffer; u16: Number; u8: Alignment Type; u8: Digits | Stores a Number in String Buffer with Alignment Type alignment and Digits length | Predicted. Alignment Type 0 is left-alignment, 1 is right alignment padded with spaces and 2 is right alignment padded with zeros. Digits is used only in these last two types. |
| 0x21E | `mon_get_contest_value`* | MonGetContestValue | MonGetContestValue | u16: Arg 0; u16: Arg 1; u16: Arg 2 |  |  |
| 0x21F | `scrcmd_543`* | ScrCmd_543 | CheckBirthday | u16: Variable | Stores 1 in Variable if the current day is the player's birthday, stores 0 otherwise |  |
| 0x220 | `scrcmd_544`* | ScrCmd_544 | MusicVolumeSet | u16: Music ID; u16: Volume | Identifies the BGM Player which is playing Music ID and sets its Volume |  |
| 0x221 | `scrcmd_545` | ScrCmd_545 | CountSeenUnown | u16: Variable | Stores in Variable the number of different seen Unown forms |  |
| 0x222 | `scrcmd_546` | ScrCmd_546 | CMD_546 | u8: Arg 0; u16: Var 1 |  | Used in the script with Latias/Latios in Pewter City to check if the event is active. Mode must be 0 or 1. 0 is only used, so for vanilla purposes, this command checks if variable 0x4043 is equal to 0x06F2. |
| 0x223 | `scrcmd_547` | ScrCmd_547 | CMD_547 | u16: Result |  |  |
| 0x224 | `scrcmd_548` | ScrCmd_548 | CMD_548 |  |  |  |
| 0x225 | `scrcmd_549` | ScrCmd_549 | CMD_549 | u16: Result |  |  |
| 0x226 | `scrcmd_550`* | ScrCmd_550 | CountHallOfFameEntries | u16: Arg 0 |  |  |
| 0x227 | `scrcmd_551` | ScrCmd_551 | CMD_551 | u16: Result |  |  |
| 0x228 | `scrcmd_552` | ScrCmd_552 | CMD_552 | u16: Var 0; u16: Var 1 |  |  |
| 0x229 | `scrcmd_553` | ScrCmd_553 | CMD_553 | u8: Arg 0; u16: Var 1 |  |  |
| 0x22A | `scrcmd_554`* | ScrCmd_554 | CMD_554 | u16: Arg 0 |  |  |
| 0x22B | `scrcmd_555` | ScrCmd_555 | GiveBP | u16: Bp Amount | Gives BP (Battle Points) | Gives BP (Trainer House). Requires Special Currency overlay loading via OverlayManager. |
| 0x22C | `scrcmd_556` | ScrCmd_556 | TakeBP | u16: Bp Amount | Takes BP (Battle Points) | Takes BP. Requires Special Currency overlay loading via OverlayManager. |
| 0x22D | `check_battle_points` | CheckBattlePoints | CheckBP | u16: Bp Amount; u16: Result | Returns 0 in Result if you do not have enough battle points |  |
| 0x22E | `scrcmd_558` | UnionRoomAvatarIdxToSprite | CheckUnionRoomTrainerSprite | u16: Choice; u16: Variable | Returns the Trainer sprite corresponding to the Trainer class selection for the Union Room to Variable depending on the Choice. | The Choice is made through a MultiTouchStandardText with the Trainer class options generated with TextUnionRoomTrainerClassOptions, not through the command itself |
| 0x22F | `scrcmd_559`* | ScrCmd_559 | CMD_559 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x230 | `scrcmd_560` | ScrCmd_560 | HiddenMachineEffect | u16: Effect; u16: Variable | Begins the Hidden Machine effect. Variable is set to 1 when the effect is complete. | 0 = Cut 1 = Rock Smash 2 = Rock Smash, follower 3 = Cut, follower 4 = Headbutt 5 = Headbutt, follower |
| 0x231 | `screen_shake` | ScreenShake | ShakeCamera | u16: X Magnitude; u16: Y Magnitude; u16: Count; u16: Time | Shakes the screen vertically and/or horizontally, moving the camera X Magnitude pixels horizontally and Y Magnitude pixels vertically in each shake, with Count total shakes of Time frames each one | Don't abuse this command, as it seems that camera might end up 1 pixel up or down in each animation, especially when Count is an odd number. |
| 0x232 | `multi_battle` | MultiBattle | Battle2vs2 | u16: Partner Trainer ID; u16: Trainer 1 ID; u16: Trainer 2 ID; u8: ??? | Starts a double battle with Partner Trainer ID versus Trainer 1 ID and Trainer 2 ID |  |
| 0x233 | `scrcmd_563`* | ScrCmd_563 | CMD_563 | u16: Arg 0; u16: Arg 1; u16: Arg 2 |  |  |
| 0x234 | `scrcmd_564` | ScrCmd_564 | CMD_564 | u16: Result |  |  |
| 0x235 | `scrcmd_565` | ScrCmd_565 | CMD_565 | u16: ??? | ??? |  |
| 0x236 | `scrcmd_566` | ScrCmd_566 | PartyPokemonTradeScreen |  | Opens the party Pokémon screen for a trade |  |
| 0x237 | `getdpplprizeitemidandcost`* | GetDPPlPrizeItemIDAndCost | GetDPPtPrizeItemIdAndCost | u16: Arg 0; u16: Arg 1; u16: Arg 2 |  |  |
| 0x238 | `scrcmd_568`* | ScrCmd_568 | CMD_568 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x239 | `scrcmd_569`* | ScrCmd_569 | CMD_569 | u16: Arg 0 |  |  |
| 0x23A | `check_coins_var`* | CheckCoinsVar | HasCoinsVar | u16: Result; u16: Coin Amount |  |  |
| 0x23B | `scrcmd_571`* | ScrCmd_571 | CMD_571 | u16: Arg 0; u16: Arg 1; u16: Arg 2; u16: Arg 3; u16: Arg 4 |  |  |
| 0x23C | `get_unique_seals_quantity` | GetUniqueSealsQuantity | GetUniqueSealsQuantity | u16: Result |  |  |
| 0x23D | `scrcmd_573` | ScrCmd_573 | DummyActivateMysteryGift |  |  |  |
| 0x23E | `scrcmd_574` | ScrCmd_574 | GetOWMovement | u16: Result; u16: Overworld ID | Returns Overworld ID's movement ID to Result |  |
| 0x23F | `scrcmd_575`* | ScrCmd_575 | CMD_575 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x240 | `scrcmd_576` | ScrCmd_576 | CMD_576 | u16: Result |  |  |
| 0x241 | `scrcmd_577`* | ScrCmd_577 | CMD_577 |  |  |  |
| 0x242 | `scrcmd_578`* | ScrCmd_578 | CMD_578 |  |  |  |
| 0x243 | `scrcmd_579` | ScrCmd_579 | CMD_579 |  |  |  |
| 0x244 | `buffer_seal_name` | BufferSealName | TextSealSingular | u8: String Buffer; u16: Seal ID | Stores Seal's singular noun in String Buffer | International release exclusive(supposed). Text archive 15. |
| 0x245 | `lock_last_talked`* | LockLastTalked | DummyLockAll |  |  |  |
| 0x246 | `scrcmd_582` | ScrCmd_582 | CMD_582 | u16: Arg 0; u16: Var 1; u16: Var 2 |  |  |
| 0x247 | `scrcmd_583`* | ScrCmd_583 | CMD_583 | u16: Arg 0; u8: Arg 1 |  |  |
| 0x248 | `party_legal_check` | PartyLegalCheck | PartyLegalCheck | u16: Result | Checks legality of party, at least for WIFI stuff. If RESULT is 1, party check failed and you have an "illegal" mon | Used by the attendants in the PC to check your Pokemon before going into the Union Room, may be used elsewhere too |
| 0x249 | `scrcmd_585` | ScrCmd_585 | CMD_585 |  |  |  |
| 0x24A | `scrcmd_586` | ScrCmd_586 | CMD_586 | u16: Result |  |  |
| 0x24B | `scrcmd_587` | ScrCmd_587 | CMD_587 |  | ??? |  |
| 0x24C | `lati_caught_check` | LatiCaughtCheck | LastBattleCheckCaught | u16: Arg |  |  |
| 0x24D | `wild_battle` | WildBattle | WildBattleSp | u16: Pokémon; u16: Level; u8: Shiny Flag | Starts a wild battle against a Pokémon of level Level, and shiny if Shiny Flag is 1 |  |
| 0x24E | `get_trcard_stars` | GetTrcardStars | CheckTrainerCardLevel | u16: Variable | Stores in Variable the current trainer card level |  |
| 0x24F | `scrcmd_591`* | ScrCmd_591 | DummyRideBike |  | Nothing | Seems to allocate the bike music in the RAM but doesn't play it. |
| 0x250 | `scrcmd_592` | ScrCmd_592 | CMD_592 | u16: Result |  |  |
| 0x251 | `show_save_stats` | ShowSaveStats | ShowSaveBox |  | Displays the save data box (current map name, player's name, the amount of badges, the Pokédex counter and the play time) |  |
| 0x252 | `hide_save_stats` | HideSaveStats | HideSaveBox |  | Hides the save data box |  |
| 0x253 | `scrcmd_595`* | ScrCmd_595 | ScopeMode | u8: Mode | If Mode is 1, activates the scope mode, otherwise the command deactivates the scope mode | The scope mode prevents the game to do certain actions (like reseting system flags) when changing map, and probably it's related with more things. |
| 0x254 | `scrcmd_596` | ScrCmd_596 | GetFollowingPokeSize | u16: Variable | Stores 0 in Variable if the current following Pokémon is small and can follow the player indoors, stores 1 if it's big and can't follow the player indoors | In fact it returns the second byte of the following Pokémon data files, stored in a/1/4/1.narc, which is the one that the game reads for allowing Pokémon entering in buildings. This command will work even if a SendBackFollowingPoke is used and the following Pokémon is hidden at that moment. |
| 0x255 | `scrcmd_597`* | ScrCmd_597 | CMD_597 |  | ??? | Draws a heart icon above the following Pokémon. Maybe a dummy command? |
| 0x256 | `scrcmd_598` | ScrCmd_598 | SwapFollowingPokeAndPlayerPositions | u16: ??? | ??? | Parameter must be 1 or 2, otherwise command won't do anything. Seems to trigger a default movement for switching current player's and following Pokémon positions (for example, when using a HM). |
| 0x257 | `scrcmd_599` | ScrCmd_599 | FollowingPokePCAnimation |  | Triggers the animation of sending the current following Pokémon back to its PokéBall over the Pokémon Center healing counter |  |
| 0x258 | `scrcmd_600` | ScrCmd_600 | SendBackFollowingPoke |  | Triggers the animation of sending the current following Pokémon back to its PokéBall and deactivates the following Pokémon until the game is reset or a warp is used |  |
| 0x259 | `follow_poke_face_player` | FollowMonFacePlayer | FollowingPokeFacePlayer |  | Makes the invoking event look at the player, but with a size limitation | When the following Pokemon has a big size, it won't turn to the player if there is an overworld on the opposite side so it would collide. The checked flag is the second byte of the Parameter 1 field, which could be called "double size overworlds" flag, as it is also used for drawing two grass patches in the tall grass for the following Pokemon. |
| 0x25A | `toggle_following_pokemon_movement` | ToggleFollowingPokemonMovement | LockFollowingPoke | u16: Operation | Releases the following Pokemon animation if Operation is 0, locks the animation otherwise | Predicted comparing ASM with Lock and Release commands. |
| 0x25B | `wait_following_pokemon_movement` | WaitFollowingPokemonMovement | WaitFollowingPoke |  | Waits the following Pokemon to end its last movement | Predicted comparing ASM with Lock and Release commands. |
| 0x25C | `following_pokemon_movement` | FollowingPokemonMovement | SetFollowingPokeMovement | u16: Move Code | Changes the following Pokemon default movement to Move Code | The most important movement IDs are 0x30 and 0x38 (following and ghost-following behaviours respectively). |
| 0x25D | `scrcmd_605` | ScrCmd_605 | SetFollowingPokePosition | u8: Position; u8: Direction | Moves the following Pokémon to one tile Position next to player and facing at Direction | For both parameters, up is 0, down is 1, left is 2 and right is 3. |
| 0x25E | `scrcmd_606` | ScrCmd_606 | BallResetFollowingPoke |  | Moves the following Pokémon to the current player's position, and triggers the animation of sending the Pokémon out of its PokéBall after the player walks a step | This is commonly used after a different event following the player, so the player sends out the following Pokémon in the next step (instead of forcing it automatically with SendOutFollowingPoke). |
| 0x25F | `scrcmd_607` | ScrCmd_607 | NoBallResetFollowingPoke |  | Moves the following Pokémon to the current player's position | Almost same as BallResetFollowingPoke, but without the PokéBall animation (exactly like when a small Pokémon spawns after the player uses a warp). |
| 0x260 | `scrcmd_608` | ScrCmd_608 | SendOutFollowingPoke |  | Triggers the animation of sending the first non-fainted Pokémon out of its PokéBall and spawns it on the last player position | Seems to be needed for refreshing/forcing its apparition after a Warp on the same map. |
| 0x261 | `scrcmd_609` | ScrCmd_609 | MecScript |  | ??? | It's used in a lot of scripts that involve following Pokémon movements, placed at the top of them. Seems that it resets a lot of following Pokémon movement parameters and data. |
| 0x262 | `scrcmd_610`* | ScrCmd_610 | CMD_610 | u16: Arg 0 |  |  |
| 0x263 | `pokeathlon` | Pokeathlon | Pokeathlon | u8: Arg 0; u8: Arg 1; u16: Var 2; u16: Var 3; u16: Var 4; u16: Var 5; u16: Var 6 |  |  |
| 0x264 | `get_npc_trade_unused_flag`* | GetNPCTradeUnusedFlag | CMD_612 | u16: Arg 0 |  |  |
| 0x265 | `get_phone_contact_random_gift_berry` | GetPhoneContactRandomGiftBerry | GetPokegearContactRandomGiftBerry | u16: Item | Stores the rematch gift of the entry loaded by LoadPhoneDat. A Cheri Berry becomes a random berry from Cheri Berry to Sitrus Berry. |  |
| 0x266 | `get_phone_contact_gift_item` | GetPhoneContactGiftItem | GetPokegearContactGiftItem | u16: Item | Stores the item the contact loaded by LoadPhoneDat promised in a phone call, or 0 if none, and clears it. |  |
| 0x267 | `cameron_photo` | CameronPhoto | TakePhoto | u16: Index |  |  |
| 0x268 | `count_saved_photos` | CountSavedPhotos | CMD_616 | u16: Result |  |  |
| 0x269 | `open_photo_album` | OpenPhotoAlbum | CMD_617 |  |  |  |
| 0x26A | `photo_album_is_full` | PhotoAlbumIsFull | CheckAlbumPhoto | u16: Result |  |  |
| 0x26B | `rocket_costume_flag_check`* | RocketCostumeFlagCheck | CheckRocketCostume | u16: Arg 0 |  |  |
| 0x26C | `rocket_costume_flag_action` | RocketCostumeFlagAction | ActivateRocketCostume | u8: Arg 0 |  |  |
| 0x26D | `place_starter_balls_in_elms_lab` | PlaceStarterBallsInElmsLab | UpdateStarterSelectionMachine |  |  |  |
| 0x26E | `scrcmd_622` | ScrCmd_622 | GetOWDirection | u16: Event ID; u16: Variable | Stores in Variable the current direction which Event ID is facing | Up is 0, Down is 1, Left is 2 and Right is 3. |
| 0x26F | `anim_apricorn_tree` | AnimApricornTree | HarvestApricorn | u16: Variable | Returns 0 to Variable if there is no Apricorn on the tree (references 0x800D, aka the last interacted-with object/NPC) |  |
| 0x270 | `apricorn_tree_get_apricorn` | ApricornTreeGetApricorn | GetApricornColor | u16: Variable | Returns Apricorn type to Variable based on the pre-defined array of trees in the Notes column. For example, the white Apricorn from Azalea Town would return 6 to Variable. Defaults to 1 for red Apricorn if undefined | Red = 1 Yellow = 2 Blue = 3 Green = 4 Pink = 5 White = 6 Black = 7 Check the note for documentation of the trees found in Johto and Kanto |
| 0x271 | `give_apricorn_from_tree` | GiveApricornFromTree | GiveApricorn | u16: Apricorn; u16: Quantity; u16: Result | Gives Apricorn of Quantity if current Apricorn count in the box plus Quantity is <= 99. Returns 0 to Var if Apricorn count = 99 to stop the player from obtaining more than 99 | Apricorn type indices (e.g. Red = 1) are written above. |
| 0x272 | `buffer_apricorn_name` | BufferApricornName | TextApricorn | u8: String Buffer; u16: Apricorn Name | Stores Apricorn Name in String Buffer | Apricorn type indices (e.g. Red = 1) are written above. |
| 0x273 | `scrcmd_627` | ScrCmd_627 | CMD_627 | u8: Arg 0 |  |  |
| 0x274 | `scrcmd_628` | ScrCmd_628 | CMD_628 | u16: Var 0; u16: Var 1 |  |  |
| 0x275 | `scrcmd_629` | ScrCmd_629 | CMD_629 |  |  |  |
| 0x276 | `scrcmd_630` | ScrCmd_630 | CMD_630 | u16: Result |  |  |
| 0x277 | `scrcmd_631` | ScrCmd_631 | CMD_631 | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x278 | `count_party_mons_of_species` | CountPartyMonsOfSpecies | CountPartyMonsOfSpecies | u16: Var 0; u16: Arg 1 |  |  |
| 0x279 | `scrcmd_633` | ScrCmd_633 | CMD_633 | u16: Arg 0; u16: Var 1; u16: Var 2 |  |  |
| 0x27A | `scrcmd_634` | ScrCmd_634 | CMD_634 | u16: Var 0; u16: Var 1 |  |  |
| 0x27B | `scrcmd_635` | ScrCmd_635 | CMD_635 | u16: Var 0; u16: Var 1 |  |  |
| 0x27C | `scrcmd_636` | ScrCmd_636 | CMD_636 | u16: Result |  |  |
| 0x27D | `scrcmd_637` | ScrCmd_637 | CMD_637 | u16: Arg 0; u16: Var 1; u16: Var 2 |  |  |
| 0x27E | `scrcmd_638` | ScrCmd_638 | CMD_638 | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x27F | `scrcmd_639` | ScrCmd_639 | CMD_639 | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x280 | `scrcmd_640` | ScrCmd_640 | CMD_640 | u16: Result |  |  |
| 0x281 | `save_wipe_extra_chunks` | SaveWipeExtraChunks | SaveWipeExtraChunks |  |  |  |
| 0x282 | `scrcmd_642` | ScrCmd_642 | CMD_642 | u16: Variable | ??? |  |
| 0x283 | `scrcmd_643` | ScrCmd_643 | CMD_643 | u16: Arg 0; u16: Var 1; u16: Var 2 |  |  |
| 0x284 | `scrcmd_644` | ScrCmd_644 | CMD_644 | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x285 | `scrcmd_645` | ScrCmd_645 | CMD_645 | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x286 | `scrcmd_646` | ScrCmd_646 | CMD_646 | u16: Result |  |  |
| 0x287 | `get_party_slot_with_species` | GetPartySlotWithSpecies | GetPartySlotWithSpecies | u16: Slot; u16: Pokemon ID | Checks party for the presence of a Pokemon, and returns which slot they are in. | Assume that it checks for the first instance and then stops, so if you have multiple of the same Pokemon, it stops at the first instance and returns which slot it is in (0-5). Used in Silph Co. for Rotom |
| 0x288 | `scrcmd_648`* | ScrCmd_648 | CMD_648 | u16: Arg 0; u16: Arg 1; u16: Arg 2; u16: Arg 3; u16: Arg 4 |  |  |
| 0x289 | `scratch_off_card` | ScratchOffCard | ScratchOffScreen |  |  |  |
| 0x28A | `scratch_off_card_end` | ScratchOffCardEnd | ReleaseScriptApp |  |  |  |
| 0x28B | `get_scratch_off_prize` | GetScratchOffPrize | GetScratchCardPrize | u16: Arg 0; u16: Var 1; u16: Var 2 |  |  |
| 0x28C | `scrcmd_652` | ScrCmd_652 | GetTutorPageQuantity | u16: Party Slot; u16: Tutor; u16: Variable | Checks the number of pages to display for the tutors in Frontier Access. Returns 0 if there are no learnable moves, 1 if the number of learnable moves is <= 7, else (((number of learnable moves)/6)+1) |  |
| 0x28D | `move_tutor_choose_move` | MoveTutorChooseMove | MoveTutorChooseMove | u16: Party Slot; u16: Tutor; u16: Page; u16: Variable | Choose a move for the Pokémon in Party Slot from Tutor on Page and returns the selected move slot from the list to Variable. Variable equals 0xFFFD if the NEXT button was selected, or 0xFFFE if the player cancels teaching a move |  |
| 0x28E | `tutor_move_teach_in_slot` | TutorMoveTeachInSlot | TutorMoveTeachInSlot | u16: Party Slot; u16: Move Slot; u16: Move |  |  |
| 0x28F | `tutor_move_get_price` | TutorMoveGetPrice | TutorMoveGetPrice | u16: ???; u16: Variable |  | Unsure if the first parameter is the move selected, the move's ID within the array of tutor moves, or if it's the slot of the move in the current page of the list |
| 0x290 | `scrcmd_656` | ScrCmd_656 | CheckHeadbuttCompatibility | u16: Party Slot; u16: Variable | Stores 1 into Variable if the Pokémon at the given Party Slot can learn Headbutt. | Ilex Forest Tutor: Script File 92, Script 3 |
| 0x291 | `stat_judge` | StatJudge | IVCheckerJudge | u16: Mon Slot; u16: Iv Sum; u16: Best Stat; u16: Best Iv |  |  |
| 0x292 | `buffer_stat_name`* | BufferStatName | BufferStatName | u8: Arg 0; u16: Var 1 |  |  |
| 0x293 | `set_mon_forme`* | SetMonForm | SetMonForme | u16: Arg 0; u16: Arg 1 |  |  |
| 0x294 | `buffer_trainer_name`* | BufferTrainerName | TextTrainerName | u8: Arg 0; u16: Arg 1 |  |  |
| 0x295 | `scrcmd_661`* | ScrCmd_661 | CMD_661 | u8: Arg 0; u32: Arg 1; u8: Arg 2; u8: Arg 3 |  |  |
| 0x296 | `scrcmd_662` | ScrCmd_662 | CMD_662 | u16: Var 0; u16: Var 1; u16: Var 2 |  |  |
| 0x297 | `scrcmd_663` | ScrCmd_663 | CMD_663 | u16: Result |  |  |
| 0x298 | `scrcmd_664`* | ScrCmd_664 | CMD_664 |  |  |  |
| 0x299 | `scrcmd_665`* | ScrCmd_665 | CMD_665 | u16: Arg 0 |  |  |
| 0x29A | `scrcmd_666`* | ScrCmd_666 | GetCurrentMusic | u16: Variable | Returns the currently playing BGM to Variable |  |
| 0x29B | `scrcmd_667`* | ScrCmd_667 | CMD_667 | u16: Arg 0 |  |  |
| 0x29C | `buffer_type_name` | BufferTypeName | TextTypeName | u8: Arg 0; u16: Var 1 |  |  |
| 0x29D | `getitemquantity` | GetItemQuantity | GetItemQuantity | u16: Item; u16: Result | Returns quantity of Item to Result |  |
| 0x29E | `get_hidden_power_type` | GetHiddenPowerType | GetHiddenPowerType | u16: Var 0; u16: Var 1 |  |  |
| 0x29F | `set_favorite_mon` | SetFavoriteMon | SetFavoriteMon |  |  |  |
| 0x2A0 | `scrcmd_672`* | GetFavoriteMon | GetFavoriteMon | u16: Arg 0; u16: Arg 1; u16: Arg 2 |  |  |
| 0x2A1 | `get_owned_rotom_formes` | GetOwnedRotomForms | GetOwnedRotomFormes | u16: Var 0; u16: Var 1; u16: Var 2; u16: Var 3; u16: Var 4 |  |  |
| 0x2A2 | `count_transformed_rotoms_in_party` | CountTranformedRotomsInParty | CountTranformedRotomsInParty | u16: Var 0; u16: Var 1 |  |  |
| 0x2A3 | `update_rotom_forme` | UpdateRotomForm | UpdateRotomForme | u16: Var 0; u16: Var 1; u16: Var 2; u16: Var 3 |  |  |
| 0x2A4 | `get_party_mon_forme` | GetPartyMonForm | GetPartyPokemonForm | u16: Var 0; u16: Var 1 |  |  |
| 0x2A5 | `scrcmd_677`* | ScrCmd_677 | CMD_677 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x2A6 | `scrcmd_678`* | ScrCmd_678 | CMD_678 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x2A7 | `scrcmd_679`* | ScrCmd_679 | CMD_679 |  |  |  |
| 0x2A8 | `add_special_game_stat_2` | AddSpecialGameStat2 | CMD_680 | u16: Arg 0 |  |  |
| 0x2A9 | `scrcmd_681` | ScrCmd_681 | CMD_681 | u16: Result |  |  |
| 0x2AA | `scrcmd_682` | ScrCmd_682 | CMD_682 | u16: Arg 0 |  |  |
| 0x2AB | `get_static_encounter_outcome` | GetStaticEncounterOutcome | GetBattleOutcome | u16: Variable | Checks the outcome of a static encounter, like Mewtwo in Cerulean Cave, and stores the result in Variable | NONE = 0 WIN = 1 LOSE = 2 DRAW = 3 MON CAUGHT = 4 PLAYER FLED = 5 MON FLED = 6 |
| 0x2AC | `scrcmd_684`* | ScrCmd_684 | GetCurrentWeather | u16: Variable | Stores the current weather in Variable |  |
| 0x2AD | `get_player_xyz`* | GetPlayerXYZ | GetPlayerPositionFull | u16: Arg 0; u16: Arg 1; u16: Arg 2 |  |  |
| 0x2AE | `scrcmd_686`* | ScrCmd_686 | WildBattleFateful | u16: Arg 0; u16: Arg 1 |  |  |
| 0x2AF | `scrcmd_687`* | ScrCmd_687 | RegisterSeenPokemon | u16: Arg 0 |  |  |
| 0x2B0 | `get_party_slot_with_fateful_encounter` | GetPartySlotWithFatefulEncounter | CheckFatefulEncounter | u16: Var 0; u16: Arg 1 |  |  |
| 0x2B1 | `comm_sanitize_party` | CommSanitizeParty | CommSanitizeParty | Var: Var Result | Attempt to remove all Griseous Orbs and reset Pokemon to forms present in Diamond and Pearl, to avoid problems communicating with those games. |  |
| 0x2B2 | `day_care_sanitize_mon` | DaycareSanitizeMon | DayCareSanitizeMon | u16: Var 0; u16: Var 1 |  |  |
| 0x2B3 | `scrcmd_691` | ScrCmd_691 | CMD_691 | u16: Result |  |  |
| 0x2B4 | `buffer_battle_hall_streak` | BufferBattleHallStreak | TextBattleHallStreak | u8: Arg 0; u8: Arg 1; u8: Arg 2; u8: Arg 3; u16: Var 4; u16: Var 5 |  |  |
| 0x2B5 | `battle_hall_count_used_species` | BattleHallCountUsedSpecies | BattleHallCountUsedSpecies | u16: Result |  |  |
| 0x2B6 | `battle_hall_get_total_streak` | BattleHallGetTotalStreak | BattleHallGetTotalStreak | u16: Result |  |  |
| 0x2B7 | `scrcmd_695`* | ScrCmd_695 | CMD_695 | u16: Arg 0 |  |  |
| 0x2B8 | `scrcmd_696`* | ScrCmd_696 | CMD_696 | u16: Arg 0 |  |  |
| 0x2B9 | `scrcmd_697`* | ScrCmd_697 | CMD_697 | u16: Arg 0 |  |  |
| 0x2BA | `follower_poke_is_event_trigger` | FollowerPokeIsEventTrigger | FollowingPokemonIsEventTrigger | u8: Event; u16: Party Position; u16: Result | Checks if the Pokémon in Party Position matches the criteria for the Event. Stores 1 in Var if true. | Spiky-Earred Pichu = 0 Hall of Origin Arceus = 1 Arceus and the Jewel of Life = 2 Celebi = 3 If the original Trainer ID of the Pokémon matches your Trainer ID, none of the Pokémon will meet the criteria. |
| 0x2BB | `scrcmd_699`* | ScrCmd_699 | CMD_699 |  |  |  |
| 0x2BC | `scrcmd_700`* | ScrCmd_700 | CMD_700 |  |  |  |
| 0x2BD | `mon_has_item`* | MonHasItem | PokemonHasItem | u16: Arg 0; u16: Arg 1 |  |  |
| 0x2BE | `battle_tower_setup_multi_battle` | BattleTowerSetUpMultiBattle | BattleTowerSetUpMultiBattle |  |  |  |
| 0x2BF | `set_player_volume`* | SetPlayerVolume | SetFieldVolume | u16: Arg 0 |  |  |
| 0x2C0 | `scrcmd_704`* | ScrCmd_704 | CMD_704 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x2C1 | `scrcmd_705`* | ScrCmd_705 | CMD_705 | u16: Arg 0; u32: Arg 1 |  |  |
| 0x2C2 | `scrcmd_706` | ScrCmd_706 | CMD_706 | u16: Result |  |  |
| 0x2C3 | `check_mon_seen` | CheckMonSeen | CheckPokemonIsSeen | u16: Arg 0; u16: Var 1 |  |  |
| 0x2C4 | `scrcmd_708` | ScrCmd_708 | FloorTrapAnimation | u16: Arg 0 | Triggers Team Rocket HQ trap-floor's graphical effect in the player's current position |  |
| 0x2C5 | `scrcmd_709` | ScrCmd_709 | CMD_709 |  |  |  |
| 0x2C6 | `scrcmd_710` | ScrCmd_710 | CMD_710 |  |  |  |
| 0x2C7 | `follow_poke_interact` | FollowMonInteract | TalkFollowingPoke |  | The following Pokémon triggers a random movement, and then a random following message | This seems to be the command that executes when the player talks to the following Pokémon (at script #163). Files in a/2/2/0.narc link map names to possible texts. The following Pokémon ends up locked, so a Release should be used after this command. |
| 0x2C8 | `scrcmd_712` | ScrCmd_712 | CMD_712 | u8: Arg 0 |  |  |
| 0x2C9 | `alph_puzzle` | AlphPuzzle | OpenAlphaPuzzle | u8: Puzzle ID | Loads the stone-panel puzzle of Puzzle ID. | ID 0 = Kabuto, ID 1 = Aerodactyl, ID 2 = Omanyte, ID 3 = Ho-Oh Appears to check Flag 2423, 2424, 2425, 2426 for the completion of puzzles 0 to 3 respectively. |
| 0x2CA | `open_alph_hidden_room` | OpenAlphHiddenRoom | OpenRuinsofAlphHiddenRoom | u8: Room ID | Something to do with the secret room, not the puzzle trapdoor. | ID 0 = Kabuto Room, ID 1 = Aerodactyl Room, ID 2 = Omanyte Room, ID 3 = Ho-Oh Room |
| 0x2CB | `update_day_care_mon_objects` | UpdateDaycareMonObjects | UpdateDayCareMonOverworlds |  |  |  |
| 0x2CC | `scrcmd_716` | ScrCmd_716 | CMD_716 |  |  |  |
| 0x2CD | `scrcmd_717` | ScrCmd_717 | CMD_717 | u16: Result |  |  |
| 0x2CE | `scrcmd_718` | ScrCmd_718 | CMD_718 | u8: Arg 0; u16: Var 1 |  |  |
| 0x2CF | `scrcmd_719` | ScrCmd_719 | CMD_719 | u16: Var 0; u16: Var 1 |  |  |
| 0x2D0 | `scrcmd_720` | ScrCmd_720 | CMD_720 | u16: Result |  |  |
| 0x2D1 | `scrcmd_721` | ScrCmd_721 | CMD_721 | u16: Result |  |  |
| 0x2D2 | `scrcmd_722` | ScrCmd_722 | CMD_722 | u8: ???; u8: ???; u16: ???; u16: ???; u16: ??? | ??? |  |
| 0x2D3 | `scrcmd_723` | ScrCmd_723 | BoatAnimation | u8: Animation; u8: ???; u16: Header; u16: X Coord; u16: Y Coord | Plays the S.S. Aqua animation of leaving the port. Animation is either 0 or 1, with 0 being Olivine and 1 being Vermilion. X and Y coordinates are for the destination map |  |
| 0x2D4 | `scrcmd_724` | ScrCmd_724 | CMD_724 | u16: Arg 0; u16: Var 1 |  |  |
| 0x2D5 | `scrcmd_725` | ScrCmd_725 | CMD_725 | u8: Arg 0; u16: Arg 1 |  |  |
| 0x2D6 | `scrcmd_726` | ProcessSoundplate | CMD_726 |  |  |  |
| 0x2D7 | `get_follow_poke_party_index` | GetFollowPokePartyIndex | GetFollowingPokePartySlot | u16: Variable | Returns the following Pokémon's party slot to Variable. Crashes if there are no alive Pokémon in the party |  |
| 0x2D8 | `scrcmd_728` | ScrCmd_728 | FollowingPokeFlash | u8: ???; u8: ??? | Makes the following Pokémon flash white | Used in the Flash scripts |
| 0x2D9 | `scrcmd_729` | ScrCmd_729 | CheckPokemonAlive | u16: Variable | Checks if player has at least 1 not fainted Pokémon, stores the result in Variable |  |
| 0x2DA | `scrcmd_730` | ScrCmd_730 | CheckFollowingPoke | u16: Variable | Checks if player has a following Pokémon, stores the result in Variable. Returns False if you have a following Pokémon | Supposed. |
| 0x2DB | `scrcmd_731` | ScrCmd_731 | CMD_731 |  | ??? |  |
| 0x2DC | `scrcmd_732` | ScrCmd_732 | AdjustFollowingPokeMood | u8: Mood | Increases or decreases following Pokémon mood with a signed 8-bit Integer. Maximum values are 127 and -127 |  |
| 0x2DD | `scrcmd_733` | ScrCmd_733 | GetBornPokemonPartyPos | u8: Type; u16: Variable | Checks if the following Pokémon's type matches Type. Returns True if so |  |
| 0x2DE | `scrcmd_734` | ScrCmd_734 | FollowingPokeJump | u8: Jumps | Makes the following Pokémon jump in place Jumps number of times | Used before Hidden Machine effects |
| 0x2DF | `scrcmd_735` | ScrCmd_735 | CheckKurtApricorn | u16: Result | Checks if Kurt currently has an Apricorn for turning into a ball. If Result is 1, Kurt has an Apricorn already. | If not 0, script continues to check if daily flag is reset, then gives you the apricorns |
| 0x2E0 | `clear_kurt_apricorn` | ClearKurtApricorn | ClearKurtApricornData |  |  |  |
| 0x2E1 | `scrcmd_737` | ScrCmd_737 | GetApricornBallID | u16: ID | Gets the ID of the Ball Kurt has made and returns it to Var |  |
| 0x2E2 | `get_total_apricorn_count` | GetTotalApricornCount | GetApricornCount | u16: Count | Returns how many total Apricorns you have to Var |  |
| 0x2E3 | `scrcmd_739` | ScrCmd_739 | KurtApricornMenuScreen |  |  |  |
| 0x2E4 | `scrcmd_740` | ScrCmd_740 | StoreApricornJuice | u16: Var 0; u16: Var 1 |  |  |
| 0x2E5 | `scrcmd_741` | ScrCmd_741 | CheckJuice | u16: Var 0; u16: Var 1; u16: Var 2; u16: Var 3 |  |  |
| 0x2E6 | `scrcmd_742`* | ScrCmd_742 | CMD_742 | u16: Arg 0; u16: Arg 1; u16: Arg 2 |  |  |
| 0x2E7 | `scrcmd_743` | ScrCmd_743 | CMD_743 | u16: Result |  |  |
| 0x2E8 | `create_friendship_room_statues` | CreatePokeathlonFriendshipRoomStatues | CreatePokeathlonFriendshipRoomStatues |  |  |  |
| 0x2E9 | `buffer_pokeathlon_course_name` | BufferPokeathlonCourseName | TextPokeathlonCourseName | u8: Arg 0; u16: Var 1 |  |  |
| 0x2EA | `touchscreen_menu_hide` | TouchscreenMenuHide | OpenTouchScreen |  | Changes the low screen design to the green Pokéball background |  |
| 0x2EB | `touchscreen_menu_show` | TouchscreenMenuShow | CloseTouchScreen |  | Sets the default low screen design |  |
| 0x2EC | `getmenuchoice` | GetMenuChoice | YesNoTouchScreen | u16: Variable | Opens a Yes-No selection, stores player's answer in Variable | Crashes if OpenTouchScreen is not used previously. |
| 0x2ED | `menu_init_std_gmm` | MenuInitStdGmm | MultiTouchStandardText | u8: ???; u8: ???; u8: ???; u8: ???; u16: Selection | Prepares a multiple selection menu with text bank #191, returns selected slot ID in Selection |  |
| 0x2EE | `menu_init` | MenuInit | MultiTouchLocalText | u8: ???; u8: ???; u8: ???; u8: Close Status; u16: Selection | Prepares a multiple selection menu with local texts, returns selected slot ID in Selection. If Close Status is 1, pressing B will automatically select the last option in the list. |  |
| 0x2EF | `menu_item_add` | MenuItemAdd | CreateMultiTouchBox | u16: Text Slot; u16: Top Screen Text; u16: Multi Box Slot | Adds a box with Multi Box Slot ID showing Text Slot text on the bottom screen and Top Screen Text on the top in a message box. Text depends on whether you use MultiTouchStandardText or MultiTouchLocalText |  |
| 0x2F0 | `menu_exec` | MenuExec | CloseMultiTouch |  | Closes the multiple selection boxes |  |
| 0x2F1 | `scrcmd_rock_smash_item_check` | RockSmashItemCheck | RockSmashItemCheck | u16: Following Poke Status; u16: Result; u16: Item | Checks if an item was generated after using Rock Smash. If Following Poke Status is 0, the bonus granted from the following Pokémon being present is not granted. If an item is generated, Result equals TRUE. The item is returned to Item |  |
| 0x2F2 | `try_headbutt_encounter` | TryHeadbuttEncounter | HeadbuttEncounter | u16: Variable | Tries to generate a Headbutt encounter. If an encounter is generated, Variable is set to TRUE |  |
| 0x2F3 | `legend_cutscene_clear_bell_anim_begin` | LegendCutsceneClearBellAnimBegin | CMD_755 |  |  |  |
| 0x2F4 | `legend_cutscene_clear_bell_anim_end` | LegendCutsceneClearBellAnimEnd | CMD_756 |  |  |  |
| 0x2F5 | `legend_cutscene_clear_bell_rise_from_bag` | LegendCutsceneClearBellRiseFromBag | CMD_757 |  |  |  |
| 0x2F6 | `legend_cutscene_clear_bell_shimmer` | LegendCutsceneClearBellShimmer | CMD_758 | u16: Arg 0 |  |  |
| 0x2F7 | `legend_cutscene_lugia_eye_glimmer_effect` | LegendCutsceneLugiaEyeGlimmerEffect | CMD_759 |  |  |  |
| 0x2F8 | `scrcmd_760`* | ScrCmd_760 | CMD_760 |  |  |  |
| 0x2F9 | `legend_cutscene_move_camera_to` | LegendCutsceneMoveCameraTo | CMD_761 | u16: Arg 0 |  |  |
| 0x2FA | `legend_cutscene_pan_camera_to` | LegendCutscenePanCameraTo | CMD_762 | u16: Arg 0 |  |  |
| 0x2FB | `legend_cutscene_wait_camera_pan` | LegendCutsceneWaitCameraPan | CMD_763 |  |  |  |
| 0x2FC | `legend_cutscene_bird_final_approach` | LegendCutsceneBirdFinalApproach | CMD_764 |  |  |  |
| 0x2FD | `legend_cutscene_waves_or_leaves_effect_begin` | LegendCutsceneWavesOrLeavesEffectBegin | CMD_765 |  |  |  |
| 0x2FE | `legend_cutscene_waves_or_leaves_effect_end` | LegendCutsceneWavesOrLeavesEffectEnd | CMD_766 |  |  |  |
| 0x2FF | `legend_cutscene_lugia_arrives_effect_begin` | LegendCutsceneLugiaArrivesEffectBegin | CMD_767 |  | ??? |  |
| 0x300 | `legend_cutscene_lugia_arrives_effect_end` | LegendCutsceneLugiaArrivesEffectEnd | CMD_768 |  |  |  |
| 0x301 | `legend_cutscene_lugia_arrives_effect_camera_pan` | LegendCutsceneLugiaArrivesEffectCameraPan | CMD_769 |  |  |  |
| 0x302 | `check_seen_all_letter_unown` | CheckSeenAllLetterUnown | CMD_770 | u16: Result |  |  |
| 0x303 | `scrcmd_771` | ScrCmd_771 | CMD_771 |  |  |  |
| 0x304 | `scrcmd_772` | ScrCmd_772 | CMD_772 |  |  |  |
| 0x305 | `cinematic` | Cinematic | RenderCutscene | u16: ??? | Renders a cutscene 0 = Ho-Oh appearing from the sky 1 = Lugia bursting out of the waterfall 2 = Arceus stock image cutscene |  |
| 0x306 | `show_legendary_wing` | ShowLegendaryWing | ShowLegendaryWing | u16: Wing | Shows the Rainbow Wing (0) or the Silver Wing (1) above the player |  |
| 0x307 | `scrcmd_775` | ScrCmd_775 | CMD_775 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x308 | `give_togepi_egg`* | GiveTogepiEgg | GiveTogepiEgg |  | Gives an egg containing a Togepi that knows Extrasensory | Effectively a hardcoded version of GivePokemonEgg, but programmed to teach the Togepi Extrasensory. |
| 0x309 | `scrcmd_777`* | ScrCmd_777 | CMD_777 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x30A | `give_spiky_ear_pichu` | GiveSpikyEarPichu | GiveSpikyEaredPichu |  | Gives the player a Pichu in Spiky-Eared form |  |
| 0x30B | `radio_music_is_playing` | RadioMusicIsPlaying | CheckCurrentRadioSong | u16: Seq; u16: Result | Stores 1 in Result if the current Seq is playing from the Pokégear radio. Stores 0 otherwise. | 1 = SEQ_GS_RADIO_MARCH, SEQ_GS_P_RADIO_MARCH 2 = SEQ_GS_RADIO_KOMORIUTA, SEQ_GS_P_RADIO_KOMORIUTA 3 = SEQ_GS_RADIO_R_101 4 = SEQ_GS_RADIO_R_201 5 = SEQ_GS_HUE, SEQ_GS_P_HUE 6 = SEQ_GS_RADIO_UNKNOWN |
| 0x30C | `casino_game` | CasinoGame | OpenVoltorbFlip | u8: Arg 0; u8: Arg 1 |  | In every other version of HGSS, Machine and City are both 0 in the final scripts for both Game Corners |
| 0x30D | `kenya_check_party_or_mailbox` | KenyaCheckPartyOrMailbox | KenyaCheckPartyOrMailbox | u16: Result |  |  |
| 0x30E | `mart_sell` | MartSell | MartSell |  | ??? | Related with the mart interface. |
| 0x30F | `set_follow_poke_inhibit_state` | SetFollowMonInhibitState | SetFollowingPokeStatus | u8: Status | 0 = Following Pokémon allowed 1 = Following Pokémon unallowed |  |
| 0x310 | `script_overlay_cmd` | ScriptOverlayCmd | OverlayManager | u8: Overlay; u8: Action | If Action is 0, load an overlay from the list in the Notes column. Otherwise, unload the overlay | 0 = Overlay 20 (Size Record) 1 = Overlay 24 (Bug-Catching Contest) 2 = Overlay 21 (Fossils) 3 = Overlay 22 (Special Currency) 4 = Overlay 25 (Trainer House) |
| 0x311 | `bug_contest_action` | BugContestAction | BugContestControl | u8: Action; u16: Day | If Action is 0, check to initialize the Bug Catching Contest based on Day. Otherwise, end the Bug Catching Contest |  |
| 0x312 | `buffer_bug_contest_winner` | BufferBugContestWinner | TextBugContestPlacement | u8: Rank | Stores the name of the person that placed in rank Rank. If the player places at rank Rank, the player's name is stored in string buffer 0. If another Trainer places at rank Rank, the Trainer Class and Trainer name are stored in string buffers 2 and 0 respectively. The obtained Pokemon is stored in string buffer 1, and the score is stored in string buffer 3 |  |
| 0x313 | `judge_bug_contest` | JudgeBugContest | BugContestResults | u16: Ranking; u16: Item; u16: Species | Generates the results of the Bug Catching Contest |  |
| 0x314 | `buffer_bug_contest_mon_nick` | BufferBugContestMonNick | TextBugContestPokeNickname | u8: String Buffer; u16: Variable | Stores the name of the captured bug from the Bug Catching Contest in String Buffer. Returns 1 to Variable if the party is already full |  |
| 0x315 | `scrcmd_789` | BugContestGetTimeLeft | TextBugContestRemainingTime | u8: String Buffer | Stores remaining time in the Bug Catching Contest in String Buffer |  |
| 0x316 | `is_npc_bug_contestant_registered` | IsBugContestantRegistered | CheckBugContestParticipant | u16: Participant; u16: Variable | Checks if the Participant is participating in the Bug Catching Contest. Returns 1 if true to Variable. | 0 = Bug Catcher Don 1 = Bug Catcher Ed 2 = Ace Trainer Abby 3 = Poke Fan William 4 = Bug Catcher Benny 5 = Camper Barry 6 = Picnicker Cindy 7 = Bug Catcher Josh 8 = Youngster Samuel 9 = School Boy Kipp |
| 0x317 | `scrcmd_791` | CheckSafariZoneChallengeCompleted | CMD_791 | u8: Arg 0; u16: Var 1 |  |  |
| 0x318 | `scrcmd_792` | UpdateSafariZoneIGT | CMD_792 |  |  |  |
| 0x319 | `bank_transaction` | BankTransaction | TakeMomMoney | u16: Arg 0; u16: Var 1 |  |  |
| 0x31A | `check_bank_balance` | CheckBankBalance | CheckMomMoneyBalance | u16: Var 0; u32: Arg 1 |  |  |
| 0x31B | `scrcmd_795` | ScrCmd_795 | ShowMomMoney | u16: X; u16: Y | Shows mom savings money box at X and Y coordinates of the screen |  |
| 0x31C | `scrcmd_796` | ScrCmd_796 | HideMomMoney |  | Hides mom savings money box |  |
| 0x31D | `scrcmd_797`* | ScrCmd_797 | CMD_797 |  |  |  |
| 0x31E | `buffer_ruleset_name` | BufferRulesetName | TextRulesetName | u16: Arg 0 |  |  |
| 0x31F | `scrcmd_799` | ScrCmd_799 | CMD_799 | u16: Result |  |  |
| 0x320 | `scrcmd_800` | ScrCmd_800 | CMD_800 | u16: Result |  |  |
| 0x321 | `scrcmd_801` | ScrCmd_801 | CMD_801 | u16: Result |  |  |
| 0x322 | `scrcmd_802` | ScrCmd_802 | CMD_802 |  |  |  |
| 0x323 | `scrcmd_803` | ScrCmd_803 | CMD_803 | u16: Var 0; u16: Var 1 |  |  |
| 0x324 | `scrcmd_804` | ScrCmd_804 | UpdateTownMap | u8: Unlock Level | Sets how much of the Pokégear map is unlocked. 0 = Johto only 1 = adds Routes 26-28, Victory Road and Indigo Plateau 2 = adds the rest of Kanto |  |
| 0x325 | `scrcmd_805` | ScrCmd_805 | CMD_805 |  |  |  |
| 0x326 | `scrcmd_806` | ScrCmd_806 | CMD_806 |  |  |  |
| 0x327 | `set_trainer_house_sprite` | SetTrainerHouseSprite | CMD_807 | u16: Arg 0; u16: Arg 1 |  |  |
| 0x328 | `scrcmd_808` | ScrCmd_808 | CMD_808 | u16: Result |  |  |
| 0x329 | `show_trainer_house_intro_message` | ShowTrainerHouseIntroMessage | CMD_809 | u16: Result |  |  |
| 0x32A | `scrcmd_810` | ScrCmd_810 | CelebiTimeTravelAnimation |  |  |  |
| 0x32B | `scrcmd_811` | ScrCmd_811 | CMD_811 | u16: Var 0; u16: Var 1 |  |  |
| 0x32C | `scrcmd_812` | ScrCmd_812 | CMD_812 |  |  |  |
| 0x32D | `mom_gift_check` | MomGiftCheck | CheckMomGift | u16: Variable | Checks if there is currently a gift from Mom to be picked up |  |
| 0x32E | `scrcmd_814` | ScrCmd_814 | CMD_814 |  |  | Used in Cerulean City Gym so that the Gym theme is not overwritten by the Surf music |
| 0x32F | `scrcmd_815` | ScrCmd_815 | CMD_815 | u16: Arg 0 | u16: ??? | Updates an unknown part of the FieldSystem data structure |
| 0x330 | `unown_circle` | UnownCircle | UnownCircle |  |  |  |
| 0x331 | `scrcmd_817` | ScrCmd_817 | CMD_817 | u8: Arg 0 |  |  |
| 0x332 | `mystry_stage_gymmick_init` | MystriStageGymmickInit | InitMystriStageAnimation |  |  |  |
| 0x333 | `scrcmd_819` | ScrCmd_819 | CMD_819 |  |  |  |
| 0x334 | `scrcmd_820` | ScrCmd_820 | CMD_820 | u8: Arg 0 |  |  |
| 0x335 | `get_buenas_password` | GetBuenasPassword | GetBuenasPassword | u16: Var 0; u16: Var 1 |  |  |
| 0x336 | `scrcmd_822` | ScrCmd_822 | CMD_822 |  |  |  |
| 0x337 | `scrcmd_823` | ScrCmd_823 | CMD_823 | u16: Result |  |  |
| 0x338 | `scrcmd_824` | ScrCmd_824 | CMD_824 | u16: Result |  |  |
| 0x339 | `get_shiny_leaf_count` | GetShinyLeafCount | GetShinyLeafCount | u16: Var 0; u16: Var 1 |  |  |
| 0x33A | `try_give_shiny_leaf_crown` | TryGiveShinyLeafCrown | TryGiveShinyLeafCrown | u16: Result |  |  |
| 0x33B | `get_partymon_forme` | GetPartyMonForm2 | CheckPartyPokemonForm | u16: Party Slot; u16: Variable | Checks what form Pokémon at Party Slot position has. The Variable stores the form ID. |  |
| 0x33C | `mon_add_contest_value` | MonAddContestValue | CMD_828 | u16: Var 0; u8: Arg 1; u16: Arg 2 |  |  |
| 0x33D | `scrcmd_829` | ScrCmd_829 | CheckFollowingPokeNextToPlayer | u16: Variable | Checks if the following Pokémon is next to the player in any direction |  |
| 0x33E | `scrcmd_830` | ScrCmd_830 | CMD_830 | u16: Result |  |  |
| 0x33F | `scrcmd_831` | ScrCmd_831 | CMD_831 | u16: Result |  |  |
| 0x340 | `scrcmd_832` | ScrCmd_832 | CMD_832 | u16: Result |  |  |
| 0x341 | `scrcmd_833` | ScrCmd_833 | CMD_833 | u16: Result |  |  |
| 0x342 | `scrcmd_834` | ScrCmd_834 | CMD_834 | u16: Variable | ??? |  |
| 0x343 | `scrcmd_835` | ScrCmd_835 | CMD_835 | u16: Variable | ??? |  |
| 0x344 | `scrcmd_836` | CheckKyogreGroudonInParty | CheckJadeOrbRequirements | u16: Variable | Stores 1 in Variable if player has both Kyogre and Groudon in the Pokémon party and they have been caught in Johto, stores 0 otherwise |  |
| 0x345 | `scrcmd_837` | ScrCmd_837 | CMD_837 | u16: Variable | ??? |  |
| 0x346 | `bank_or_wallet_is_full` | BankOrWalletIsFull | CheckMoneyFull | u16: Money Account; u16: Variable | Stores 1 in Variable if the chosen money account is full. Money account 0 = Mom's savings; Money account 1 = Player; |  |
| 0x347 | `sys_set_sleep_flag` | SysSetSleepFlag | SystemSetSleepFlag | u16: Arg 0 |  |  |
| 0x348 | `scrcmd_840` | ScrCmd_840 | CMD_840 | Flex: Arg 0; u16: Var 1 |  |  |
| 0x349 | `scrcmd_841` | ScrCmd_841 | CMD_841 | u8: ??? |  |  |
| 0x34A | `scrcmd_842`* | ScrCmd_842 | ScrCmd_842 | u8: Arg 0 |  |  |
| 0x34B | `buffer_item_name_indef` | BufferItemNameIndef | TextItemLowercase | u8: String Buffer; u16: Item | Stores Item's lowercase name in String Buffer | International release exclusive. |
| 0x34C | `buffer_item_name_plural` | BufferItemNamePlural | TextItemPlural | u8: String Buffer; u16: Item | Stores Item's plural noun in String Buffer | International release exclusive. |
| 0x34D | `buffer_party_mon_species_name_indef` | BufferPartyMonSpeciesNameIndef | TextPartyPokemonDefault | u8: String Buffer; u16: Party Position | Stores the name of the Pokémon in Party Position in String Buffer with default color tags encoding | International release exclusive. Names stored at text file 238. |
| 0x34E | `buffer_species_name_indef` | BufferSpeciesNameIndef | CMD_846 | u8: ???; u16: ???; u16: ???; u8: ??? |  | International release exclusive. |
| 0x34F | `buffer_dppt_friend_starter_species_name_indef`* | BufferDPPtFriendStarterSpeciesNameIndef | BufferDPPtFriendStarterSpeciesNameIndef | u8: Arg 0 |  | International release exclusive. |
| 0x350 | `buffer_fashion_name_indef`* | BufferFashionNameIndef | BufferFashionNameIndef | u8: Arg 0; u16: Arg 1 |  | International release exclusive. |
| 0x351 | `buffer_trainer_class_name_indef` | BufferTrainerClassNameIndef | TextTrainerClass | u8: String Buffer; u16: Trainer Class | Stores Trainer class' lowercase noun in String Buffer | International release exclusive. |
| 0x352 | `buffer_seal_name_plural` | BufferSealNamePlural | TextSealPlural | u8: String Buffer; u16: Seal | Stores Seal's plural noun in String Buffer | International release exclusive. Text archive 16. |
| 0x353 | `capitalize` | Capitalize | TextCapitalize | u8: String Buffer | Capitalizes the string currently stored in String Buffer | International release exclusive. |
| 0x354 | `buffer_dept_store_floor_no` | BufferDeptStoreFloorNo | TextFloor | u8: String Buffer; u8: Floor | Stores Floor's name in String Buffer | International release exclusive. Names stored at text file 191, lines 0x74 to 0x7A. |

## Full movement action reference (155 actions, sorted by code)

| Code (dec) | Code (hex) | Named constant | Decomp name | DSPRE name | Function | Notes |
|---|---|---|---|---|---|---|
| 0 | 0x00 | `MOVEMENT_FACE_UP` | FaceNorth | FaceNorth | Event faces up |  |
| 1 | 0x01 | `MOVEMENT_FACE_DOWN` | FaceSouth | FaceSouth | Event faces down |  |
| 2 | 0x02 | `MOVEMENT_FACE_LEFT` | FaceWest | FaceWest | Event faces left |  |
| 3 | 0x03 | `MOVEMENT_FACE_RIGHT` | FaceEast | FaceEast | Event faces right |  |
| 4 | 0x04 | — | WalkSlowerNorth | WalkNorth32 | Event faces up and moves northwards at 1 tile per 32 frames | Equivalent to 0.94 tiles per second. |
| 5 | 0x05 | — | WalkSlowerSouth | WalkSouth32 | Event faces down and moves southwards at 1 tile per 32 frames | Equivalent to 0.94 tiles per second. |
| 6 | 0x06 | — | WalkSlowerWest | WalkWest32 | Event faces left and moves westwards at 1 tile per 32 frames | Equivalent to 0.94 tiles per second. |
| 7 | 0x07 | — | WalkSlowerEast | WalkEast32 | Event faces right and moves eastwards at 1 tile per 32 frames | Equivalent to 0.94 tiles per second. |
| 8 | 0x08 | — | WalkSlowNorth | WalkNorth16 | Event faces up and moves northwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 9 | 0x09 | — | WalkSlowSouth | WalkSouth16 | Event faces down and moves southwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 10 | 0x0A | — | WalkSlowWest | WalkWest16 | Event faces left and moves westwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 11 | 0x0B | — | WalkSlowEast | WalkEast16 | Event faces right and moves eastwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 12 | 0x0C | `MOVEMENT_STEP_UP` | WalkNormalNorth | WalkNorth8 | Event faces up and moves northwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. This should be taken as the standard speed. |
| 13 | 0x0D | `MOVEMENT_STEP_DOWN` | WalkNormalSouth | WalkSouth8 | Event faces down and moves southwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. This should be taken as the standard speed. |
| 14 | 0x0E | `MOVEMENT_STEP_LEFT` | WalkNormalWest | WalkWest8 | Event faces left and moves westwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. This should be taken as the standard speed. |
| 15 | 0x0F | `MOVEMENT_STEP_RIGHT` | WalkNormalEast | WalkEast8 | Event faces right and moves eastwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. This should be taken as the standard speed. |
| 16 | 0x10 | `MOVEMENT_RUN_UP` | WalkFastNorth | WalkNorth4 | Event faces up and moves northwards at 1 tile per 4 frames | Equivalent to 7.5 tiles per second. |
| 17 | 0x11 | `MOVEMENT_RUN_DOWN` | WalkFastSouth | WalkSouth4 | Event faces down and moves southwards at 1 tile per 4 frames | Equivalent to 7.5 tiles per second. |
| 18 | 0x12 | `MOVEMENT_RUN_LEFT` | WalkFastWest | WalkWest4 | Event faces left and moves westwards at 1 tile per 4 frames | Equivalent to 7.5 tiles per second. |
| 19 | 0x13 | `MOVEMENT_RUN_RIGHT` | WalkFastEast | WalkEast4 | Event faces right and moves eastwards at 1 tile per 4 frames | Equivalent to 7.5 tiles per second. |
| 20 | 0x14 | — | WalkFasterNorth | WalkNorth2 | Event faces up and moves northwards at 1 tile per 2 frames | Equivalent to 15 tiles per second. |
| 21 | 0x15 | — | WalkFasterSouth | WalkSouth2 | Event faces down and moves southwards at 1 tile per 2 frames | Equivalent to 15 tiles per second. |
| 22 | 0x16 | — | WalkFasterWest | WalkWest2 | Event faces left and moves westwards at 1 tile per 2 frames | Equivalent to 15 tiles per second. |
| 23 | 0x17 | — | WalkFasterEast | WalkEast2 | Event faces right and moves eastwards at 1 tile per 2 frames | Equivalent to 15 tiles per second. |
| 24 | 0x18 | — | WalkOnSpotSlowerNorth | WalkOnSpotNorth32 | Event faces up and moves on the spot at 1 tile per 32 frames | Equivalent to 0.94 tiles per second. |
| 25 | 0x19 | — | WalkOnSpotSlowerSouth | WalkOnSpotSouth32 | Event faces down and moves on the spot at 1 tile per 32 frames | Equivalent to 0.94 tiles per second. |
| 26 | 0x1A | — | WalkOnSpotSlowerWest | WalkOnSpotWest32 | Event faces left and moves on the spot at 1 tile per 32 frames | Equivalent to 0.94 tiles per second. |
| 27 | 0x1B | — | WalkOnSpotSlowerEast | WalkOnSpotEast32 | Event faces right and moves on the spot at 1 tile per 32 frames | Equivalent to 0.94 tiles per second. |
| 28 | 0x1C | — | WalkOnSpotSlowNorth | WalkOnSpotNorth16 | Event faces up and moves on the spot at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 29 | 0x1D | — | WalkOnSpotSlowSouth | WalkOnSpotSouth16 | Event faces down and moves on the spot at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 30 | 0x1E | — | WalkOnSpotSlowWest | WalkOnSpotWest16 | Event faces left and moves on the spot at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 31 | 0x1F | — | WalkOnSpotSlowEast | WalkOnSpotEast16 | Event faces right and moves on the spot at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 32 | 0x20 | — | WalkOnSpotNormalNorth | WalkOnSpotNorth8 | Event faces up and moves on the spot at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. This should be taken as the standard speed. |
| 33 | 0x21 | — | WalkOnSpotNormalSouth | WalkOnSpotSouth8 | Event faces down and moves on the spot at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. This should be taken as the standard speed. |
| 34 | 0x22 | — | WalkOnSpotNormalWest | WalkOnSpotWest8 | Event faces left and moves on the spot at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. This should be taken as the standard speed. |
| 35 | 0x23 | — | WalkOnSpotNormalEast | WalkOnSpotEast8 | Event faces right and moves on the spot at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. This should be taken as the standard speed. |
| 36 | 0x24 | — | WalkOnSpotFastNorth | WalkOnSpotNorth4 | Event faces up and moves on the spot at 1 tile per 4 frames | Equivalent to 7.5 tiles per second. |
| 37 | 0x25 | `MOVEMENT_WALK_IN_PLACE_FACE_DOWN` | WalkOnSpotFastSouth | WalkOnSpotSouth4 | Event faces down and moves on the spot at 1 tile per 4 frames | Equivalent to 7.5 tiles per second. |
| 38 | 0x26 | — | WalkOnSpotFastWest | WalkOnSpotWest4 | Event faces left and moves on the spot at 1 tile per 4 frames | Equivalent to 7.5 tiles per second. |
| 39 | 0x27 | `MOVEMENT_WALK_IN_PLACE_FACE_RIGHT` | WalkOnSpotFastEast | WalkOnSpotEast4 | Event faces right and moves on the spot at 1 tile per 4 frames | Equivalent to 7.5 tiles per second. |
| 40 | 0x28 | — | WalkOnSpotFasterNorth | WalkOnSpotNorth2 | Event faces up and moves on the spot at 1 tile per 2 frames | Equivalent to 15 tiles per second. |
| 41 | 0x29 | — | WalkOnSpotFasterSouth | WalkOnSpotSouth2 | Event faces down and moves on the spot at 1 tile per 2 frames | Equivalent to 15 tiles per second. |
| 42 | 0x2A | — | WalkOnSpotFasterWest | WalkOnSpotWest2 | Event faces left and moves on the spot at 1 tile per 2 frames | Equivalent to 15 tiles per second. |
| 43 | 0x2B | — | WalkOnSpotFasterEast | WalkOnSpotEast2 | Event faces right and moves on the spot at 1 tile per 2 frames | Equivalent to 15 tiles per second. |
| 44 | 0x2C | — | JumpOnSpotSlowNorth | JumpOnSpotNorth16 | Event faces up and jumps on the spot at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 45 | 0x2D | — | JumpOnSpotSlowSouth | JumpOnSpotSouth16 | Event faces down and jumps on the spot at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 46 | 0x2E | — | JumpOnSpotSlowWest | JumpOnSpotWest16 | Event faces left and jumps on the spot at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 47 | 0x2F | — | JumpOnSpotSlowEast | JumpOnSpotEast16 | Event faces right and jumps on the spot at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 48 | 0x30 | `MOVEMENT_WALK_UNK_48` | JumpOnSpotFastNorth | JumpOnSpotNorth8 | Event faces up and jumps on the spot at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. |
| 49 | 0x31 | — | JumpOnSpotFastSouth | JumpOnSpotSouth8 | Event faces down and jumps on the spot at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. |
| 50 | 0x32 | — | JumpOnSpotFastWest | JumpOnSpotWest8 | Event faces left and jumps on the spot at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. |
| 51 | 0x33 | — | JumpOnSpotFastEast | JumpOnSpotEast8 | Event faces right and jumps on the spot at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. |
| 52 | 0x34 | — | JumpNearFastNorth | JumpNorth8 | Event faces up and jumps northwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. |
| 53 | 0x35 | — | JumpNearFastSouth | JumpSouth8 | Event faces down and jumps southwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. |
| 54 | 0x36 | — | JumpNearFastWest | JumpWest8 | Event faces left and jumps westwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. |
| 55 | 0x37 | — | JumpNearFastEast | JumpEast8 | Event faces right and jumps eastwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second. |
| 56 | 0x38 | — | JumpFarNorth | JumpFarNorth | Event faces up and jumps 2 tiles northwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second; 16 frames in total. |
| 57 | 0x39 | — | JumpFarSouth | JumpFarSouth | Event faces down and jumps 2 tiles southwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second; 16 frames in total. |
| 58 | 0x3A | — | JumpFarWest | JumpFarWest | Event faces left and jumps 2 tiles westwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second; 16 frames in total. |
| 59 | 0x3B | — | JumpFarEast | JumpFarEast | Event faces right and jumps 2 tiles eastwards at 1 tile per 8 frames | Equivalent to 3.75 tiles per second; 16 frames in total. |
| 60 | 0x3C | — | Delay1 | Delay1 | Event waits for 1 frame | Equivalent to ~0.033 seconds (1/30s). |
| 61 | 0x3D | — | Delay2 | Delay2 | Event waits for 2 frames | Equivalent to ~0.067 seconds (2/30s). |
| 62 | 0x3E | — | Delay4 | Delay4 | Event waits for 4 frames | Equivalent to ~0.133 seconds (4/30s). |
| 63 | 0x3F | — | Delay8 | Delay8 | Event waits for 8 frames | Equivalent to ~0.267 seconds (8/30s). |
| 64 | 0x40 | — | Delay15 | Delay15 | Event waits for 15 frames | Equivalent to 0.5 seconds (15/30s). |
| 65 | 0x41 | — | Delay16 | Delay16 | Event waits for 16 frames | Equivalent to ~0.533 seconds (16/30s). |
| 66 | 0x42 | — | Delay32 | Delay32 | Event waits for 32 frames | Equivalent to ~1.067 seconds (32/30s). |
| 67 | 0x43 | — | WarpOut | TeleportUp | Makes overworld ascend to the sky. No rotation involved. |  |
| 68 | 0x44 | — | WarpIn | TeleportDown | Makes overworld fall from the sky. No rotation involved. |  |
| 69 | 0x45 | — | SetInvisible | SetInvisible | Makes event invisible. It can still be interacted with and will still have collision. |  |
| 70 | 0x46 | — | SetVisible | SetVisible | Makes event visible. |  |
| 71 | 0x47 | `MOVEMENT_UNK_71` | LockDir | LockDir | Prevents event from changing direction. It can still move, but it will always face the same direction. |  |
| 72 | 0x48 | `MOVEMENT_UNK_72` | UnlockDir | ReleaseDir | Allows event to change direction again. |  |
| 73 | 0x49 | — | PauseAnimation | PauseAnimation | Disables event's animation. It can still move, but it will not animate. |  |
| 74 | 0x4A | — | ResumeAnimation | ResumeAnimation | Resumes event's animation. |  |
| 75 | 0x4B | `MOVEMENT_EMOTE_EXCLAMATION` | EmoteExclamationMark | EmoteExclamation | Shows an exclamation mark above the event's head. Used commonly to indicate that the event is surprised or has noticed something. |  |
| 76 | 0x4C | — | WalkSlightlyFastNorth | WalkNorth6 | Event faces up and walks northwards at 1 tile per 6 frames | Equivalent to 5 tiles per second. |
| 77 | 0x4D | — | WalkSlightlyFastSouth | WalkSouth6 | Event faces down and walks southwards at 1 tile per 6 frames | Equivalent to 5 tiles per second. |
| 78 | 0x4E | — | WalkSlightlyFastWest | WalkWest6 | Event faces right and walks westwards at 1 tile per 6 frames | Equivalent to 5 tiles per second. |
| 79 | 0x4F | — | WalkSlightlyFastEast | WalkEast6 | Event faces right and walks eastwards at 1 tile per 6 frames | Equivalent to 5 tiles per second. |
| 80 | 0x50 | — | WalkSlightlyFasterNorth | WalkNorth3 | Event faces up and walks northwards at 1 tile per 3 frames | Equivalent to 10 tiles per second. |
| 81 | 0x51 | — | WalkSlightlyFasterSouth | WalkSouth3 | Event faces down and walks southwards at 1 tile per 3 frames | Equivalent to 10 tiles per second. |
| 82 | 0x52 | — | WalkSlightlyFasterWest | WalkWest3 | Event faces left and walks westwards at 1 tile per 3 frames | Equivalent to 10 tiles per second. |
| 83 | 0x53 | — | WalkSlightlyFasterEast | WalkEast3 | Event faces right and walks eastwards at 1 tile per 3 frames | Equivalent to 10 tiles per second. |
| 84 | 0x54 | — | WalkFastestNorth | WalkNorth1 | Event faces up and walks nothwards at 1 tile per frame | Equivalent to 30 tiles per second. Walk animation isn't triggered. |
| 85 | 0x55 | — | WalkFastestSouth | WalkSouth1 | Event faces down and walks southwards at 1 tile per frame | Equivalent to 30 tiles per second. Walk animation isn't triggered. |
| 86 | 0x56 | — | WalkFastestWest | WalkWest1 | Event faces left and walks westwards at 1 tile per frame | Equivalent to 30 tiles per second. Walk animation isn't triggered. |
| 87 | 0x57 | — | WalkFastestEast | WalkEast1 | Event faces right and walks eastwards at 1 tile per frame | Equivalent to 30 tiles per second. Walk animation isn't triggered. |
| 88 | 0x58 | — | RunNorth | RunNorth | Event faces up and walks northwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. Walk animation isn't triggered. |
| 89 | 0x59 | — | RunSouth | RunSouth | Event faces down and walks southwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. Walk animation isn't triggered. |
| 90 | 0x5A | — | RunWest | RunWest | Event faces left and walks westwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. Walk animation isn't triggered. |
| 91 | 0x5B | — | RunEast | RunEast | Event faces right and walks eastwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. Walk animation isn't triggered. |
| 92 | 0x5C | — | JumpNearSlowWest | JumpWest16 | Event faces left and jumps westwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 93 | 0x5D | — | JumpNearSlowEast | JumpEast16 | Event faces right and jumps eastwards at 1 tile per 16 frames | Equivalent to 1.875 tiles per second. |
| 94 | 0x5E | — | JumpFartherWest | JumpVeryFarWest | Event faces left and jumps 3 tiles westwards at 1 tile per 4 frames | Equivalent to 10 tiles per second. 12 frames in total. |
| 95 | 0x5F | — | JumpFartherEast | JumpVeryFarEast | Event faces right and jumps 3 tiles eastwards at 1 tile per 4 frames | Equivalent to 10 tiles per second. 12 frames in total. |
| 96 | 0x60 | — | WalkEverSoSlightlyFastNorth | WalkNorth7 | Event faces up and moves northwards at 1 tile per 7 frames | Equivalent to 4.29 tiles per second. |
| 97 | 0x61 | — | WalkEverSoSlightlyFastSouth | WalkSouth7 | Event faces down and moves southwards at 1 tile per 7 frames | Equivalent to 4.29 tiles per second. |
| 98 | 0x62 | — | WalkEverSoSlightlyFastWest | WalkWest7 | Event faces left and moves westwards at 1 tile per 7 frames | Equivalent to 4.29 tiles per second. |
| 99 | 0x63 | — | WalkEverSoSlightlyFastEast | WalkEast7 | Event faces right and moves eastwards at 1 tile per 7 frames | Equivalent to 4.29 tiles per second. |
| 100 | 0x64 | — | PokecenterNurseBow | NurseJoyBow | Nurse Joy bows. Used in the Pokémon Center. |  |
| 101 | 0x65 | — | RevealTrainer | RevealTrainer | Used by the ninja boys when popping out of the ground. |  |
| 102 | 0x66 | — | PlayerGive | PlayerGive |  |  |
| 103 | 0x67 | — | EmoteDoubleExclamationMark | EmoteDoubleExclamation | Shows a double exclamation mark above the event's head. |  |
| 104 | 0x68 | — | PlayerReceive | PlayerReceive |  |  |
| 105 | 0x69 | — | MoveAction_105 | MoveAction_105 |  |  |
| 106 | 0x6A | — | MoveAction_106 | MoveAction_106 |  |  |
| 107 | 0x6B | — | MoveAction_107 | MoveAction_107 |  |  |
| 108 | 0x6C | — | MoveAction_108 | MoveAction_108 |  |  |
| 109 | 0x6D | — | MoveAction_109 | MoveAction_109 |  |  |
| 110 | 0x6E | — | MoveAction_110 | MoveAction_110 |  |  |
| 111 | 0x6F | — | MoveAction_111 | MoveAction_111 |  |  |
| 112 | 0x70 | — | MoveAction_112 | MoveAction_112 |  |  |
| 113 | 0x71 | — | MoveAction_113 | MoveAction_113 |  |  |
| 114 | 0x72 | — | MoveAction_114 | MoveAction_114 |  |  |
| 115 | 0x73 | — | MoveAction_115 | MoveAction_115 |  |  |
| 116 | 0x74 | — | MoveAction_116 | MoveAction_116 |  |  |
| 117 | 0x75 | — | JumpDistortionWorldNorth | JumpDistortionWorldNorth |  |  |
| 118 | 0x76 | — | JumpDistortionWorldSouth | JumpDistortionWorldSouth |  |  |
| 119 | 0x77 | — | JumpDistortionWorldWest | JumpDistortionWorldWest |  |  |
| 120 | 0x78 | — | JumpDistortionWorldEast | JumpDistortionWorldEast |  |  |
| 121 | 0x79 | — | MoveAction_121 | MoveAction_121 |  |  |
| 122 | 0x7A | — | MoveAction_122 | MoveAction_122 |  |  |
| 123 | 0x7B | — | MoveAction_123 | MoveAction_123 |  |  |
| 124 | 0x7C | — | MoveAction_124 | MoveAction_124 |  |  |
| 125 | 0x7D | — | MoveAction_125 | MoveAction_125 |  |  |
| 126 | 0x7E | — | MoveAction_126 | MoveAction_126 |  |  |
| 127 | 0x7F | — | MoveAction_127 | MoveAction_127 |  |  |
| 128 | 0x80 | — | MoveAction_128 | MoveAction_128 |  |  |
| 129 | 0x81 | — | MoveAction_129 | MoveAction_129 |  |  |
| 130 | 0x82 | — | MoveAction_130 | MoveAction_130 |  |  |
| 131 | 0x83 | — | MoveAction_131 | MoveAction_131 |  |  |
| 132 | 0x84 | — | MoveAction_132 | MoveAction_132 |  |  |
| 133 | 0x85 | — | MoveAction_133 | MoveAction_133 |  |  |
| 134 | 0x86 | — | MoveAction_134 | MoveAction_134 |  |  |
| 135 | 0x87 | — | MoveAction_135 | MoveAction_135 |  |  |
| 136 | 0x88 | — | MoveAction_136 | MoveAction_136 |  |  |
| 137 | 0x89 | — | MoveAction_137 | MoveAction_137 |  |  |
| 138 | 0x8A | — | MoveAction_138 | MoveAction_138 |  |  |
| 139 | 0x8B | — | MoveAction_139 | MoveAction_139 |  |  |
| 140 | 0x8C | — | MoveAction_140 | MoveAction_140 |  |  |
| 141 | 0x8D | — | MoveAction_141 | MoveAction_141 |  |  |
| 142 | 0x8E | — | MoveAction_142 | MoveAction_142 |  |  |
| 143 | 0x8F | — | MoveAction_143 | MoveAction_143 |  |  |
| 144 | 0x90 | — | MoveAction_144 | MoveAction_144 |  |  |
| 145 | 0x91 | — | MoveAction_145 | MoveAction_145 |  |  |
| 146 | 0x92 | — | MoveAction_146 | MoveAction_146 |  |  |
| 147 | 0x93 | — | MoveAction_147 | MoveAction_147 |  |  |
| 148 | 0x94 | — | MoveAction_148 | MoveAction_148 |  |  |
| 149 | 0x95 | — | MoveAction_149 | MoveAction_149 |  |  |
| 150 | 0x96 | — | MoveAction_150 | MoveAction_150 |  |  |
| 151 | 0x97 | — | MoveAction_151 | MoveAction_151 |  |  |
| 152 | 0x98 | — | MoveAction_152 | MoveAction_152 |  |  |
| 153 | 0x99 | — | MoveAction_153 | EmoteExclamation2 | Shows an exclamation mark above the event's head. Duplicate of EmoteExclamation (0x004B). |  |
| 254 | 0xFE | `MOVEMENT_STEP_END` | EndMovement | End | Action end marker. Used to indicate the end of a movement sequence. |  |
