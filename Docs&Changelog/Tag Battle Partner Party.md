# Tag Battle Partner Party

In an AI-partner tag battle (player + AI ally vs two trainers, e.g. Lance in Team Rocket HQ) the in-battle "Choose a Pokémon" screen also lists the
partner's Pokémon, in the last slots, drawn with the game's partner palette. They can be opened (Summary, Check Moves) but not switched to.

Enabled by `TAG_BATTLE_PARTNER_PARTY` in `include/config.h`. Code: `src/battle/tag_party.c`, shim in `asm/battle/battle_hooks.s`, hooks in `hooks`.

## When it applies
- battle type exactly `TRAINER | DOUBLES | MULTI | AI` (what `multi_battle` / the Tag Battle Party Select commands start), and
- the screen is a switch screen (normal or forced switch) - NOT the Bag's item screen and NOT the learn-move screen, and
- the player has at most 3 Pokémon in the battle and player + partner is at most 6.
Anything else (a tag battle with a bigger party, link / Frontier multi battles which already had their own interleaved layout) is unchanged.

## Layout
Player's Pokémon in the first slots, the partner's in the LAST slots (3 + 3: slots 0-2 and 3-5; slot order is top-left, top-right, middle-left,
middle-right, bottom-left, bottom-right). With fewer than 3 of the player's Pokémon the partner's still take the last slots and the panels between stay empty.

## How it works
The party shown by the screen is one `Party` built by the player-side party-list task (overlay 12, 0x0225F4E0, state 1). A hook at its join point
(0x0225F746) calls `TagParty_AfterBuild`, which appends the partner's mons (taken in the partner's current battle order) and stores the first partner slot in
the spare byte `args+0x37` of the screen's argument block. `BattlePartyMenu_IsPartnerMon` (overlay 8, 0x0221DB24) is replaced by `TagParty_IsPartnerMon`:
the game's own multi-battle behaviour when `IsMultiBattle` is true, otherwise "slot >= stored start slot" for switch screens. That one predicate is what
draws the partner palette, makes switching refuse with a message naming the partner trainer, and keeps Summary / moves available.

## Not done / notes
- The partner palette is the game's own (gold/yellow), not blue.
- Partner HP / status shown are whatever the battle has copied back to the partner's party.
