#include "config.h"
#include "debug.h"
#include "types.h"

#include "constants/ability.h"
#include "constants/file.h"
#include "constants/game.h"
#include "constants/generated/learnsets.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/weather_numbers.h"

#include "bag.h"
#include "battle.h"
#include "message.h"
#include "party_menu.h"
#include "pokemon.h"
#include "rtc.h"
#include "save.h"
#include "script.h"
#include "window.h"

#define MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     0
#define MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    1
#define MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT 2
#define MOVE_TUTOR_NPC_HEADBUTT              3
// Electrum: Route 35 Pokéathlon-gate Black Belt (scr_seq_0242_R35R0201 script 003). Free (cost 0).
// One booth per move: move_tutor_choose_move's own selection UI renders blank/unlabeled option
// boxes in this hg-engine port regardless of booth (confirmed even with the Special Currency
// overlay loaded first), so the script builds its own labeled menu instead and uses
// GetTutorPageQuantity (scrcmd_652) per move purely as a species-eligibility check, not for UI.
#define MOVE_TUTOR_NPC_BLACK_BELT_BRICK_BREAK    4
#define MOVE_TUTOR_NPC_BLACK_BELT_ICE_PUNCH      5
#define MOVE_TUTOR_NPC_BLACK_BELT_FIRE_PUNCH     6
#define MOVE_TUTOR_NPC_BLACK_BELT_THUNDER_PUNCH  7
#define MOVE_TUTOR_NPC_BLACK_BELT_POISON_JAB     8
#define MOVE_TUTOR_NPC_BLACK_BELT_SHADOW_PUNCH   9
#define MOVE_TUTOR_NPC_BLACK_BELT_MEGA_PUNCH     10

typedef struct TutorMove {
    u16 move;
    u8 cost;
    u8 tutorNpc;
} TutorMove;

TutorMove sTutorMoves[] = {
    { MOVE_DIVE, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_MUD_SLAP, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_FURY_CUTTER, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_ICY_WIND, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_ROLLOUT, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_THUNDER_PUNCH, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_FIRE_PUNCH, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_SUPERPOWER, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_ICE_PUNCH, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_IRON_HEAD, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_AQUA_TAIL, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_OMINOUS_WIND, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_GASTRO_ACID, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_SNORE, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SPITE, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_AIR_CUTTER, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_HELPING_HAND, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_ENDEAVOR, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_OUTRAGE, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_ANCIENT_POWER, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_SYNTHESIS, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SIGNAL_BEAM, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_ZEN_HEADBUTT, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_VACUUM_WAVE, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_EARTH_POWER, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_GUNK_SHOT, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_TWISTER, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_SEED_BOMB, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_IRON_DEFENSE, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_MAGNET_RISE, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_LAST_RESORT, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_BOUNCE, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_TRICK, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_HEAT_WAVE, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_KNOCK_OFF, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_SUCKER_PUNCH, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_SWIFT, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_UPROAR, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SUPER_FANG, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_PAIN_SPLIT, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_STRING_SHOT, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_TAILWIND, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_GRAVITY, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_WORRY_SEED, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_MAGIC_COAT, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_ROLE_PLAY, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_HEAL_BELL, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_LOW_KICK, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_SKY_ATTACK, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_BLOCK, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_BUG_BITE, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_HEADBUTT, 0, MOVE_TUTOR_NPC_HEADBUTT },
    { MOVE_BRICK_BREAK, 0, MOVE_TUTOR_NPC_BLACK_BELT_BRICK_BREAK },
    { MOVE_ICE_PUNCH, 0, MOVE_TUTOR_NPC_BLACK_BELT_ICE_PUNCH },
    { MOVE_FIRE_PUNCH, 0, MOVE_TUTOR_NPC_BLACK_BELT_FIRE_PUNCH },
    { MOVE_THUNDER_PUNCH, 0, MOVE_TUTOR_NPC_BLACK_BELT_THUNDER_PUNCH },
    { MOVE_POISON_JAB, 0, MOVE_TUTOR_NPC_BLACK_BELT_POISON_JAB },
    { MOVE_SHADOW_PUNCH, 0, MOVE_TUTOR_NPC_BLACK_BELT_SHADOW_PUNCH },
    { MOVE_MEGA_PUNCH, 0, MOVE_TUTOR_NPC_BLACK_BELT_MEGA_PUNCH },
};

u16 LONG_CALL GetLearnableTutorMoves(struct PartyPokemon *mon, u32 moveTutorNpc, u8 dest[])
{
    int i;
    u16 currentMoves[MAX_MON_MOVES];
    for (i = 0; i < MAX_MON_MOVES; i++) {
        currentMoves[i] = GetMonData(mon, MON_DATA_MOVE1 + i, NULL);
    }

    u32 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    u32 form = GetMonData(mon, MON_DATA_FORM, NULL);
    u32 tutorLearnset[TUTOR_LEARNSETS_BITFIELD_COUNT];

    ReadFromNarcMemberByIdPair(tutorLearnset, ARC_CODE_ADDONS, CODE_ADDON_TUTOR_LEARNSETS, PokeOtherFormMonsNoGet(species, form) * TUTOR_LEARNSETS_BITFIELD_COUNT * sizeof(u32), TUTOR_LEARNSETS_BITFIELD_COUNT * sizeof(u32));

    u16 numLearnableMoves = 0;
    for (u32 j = 0; j < NELEMS(sTutorMoves); j++) {
        BOOL canLearnMove = (tutorLearnset[j / 32] >> (j % 32)) & 1;
        if (canLearnMove && moveTutorNpc == sTutorMoves[j].tutorNpc) {
            for (i = 0; i < MAX_MON_MOVES; i++) {
                if (currentMoves[i] == sTutorMoves[j].move) {
                    break;
                }
            }
            if (i < MAX_MON_MOVES) {
                continue;
            }
            if (dest != NULL) {
                dest[numLearnableMoves] = j;
            }
            numLearnableMoves++;
        }
    }

    return numLearnableMoves;
}
