#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *battleSys, int battler);

int TrainerAI_PickCommand(struct BattleSystem *battleSys, int battler)
{
    if (TrainerAI_ShouldSwitch(battleSys, battler))
        return PLAYER_INPUT_PARTY;
    return PLAYER_INPUT_FIGHT;
}

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *battleSys, int battler)
{
    (void)battleSys;
    (void)battler;
    // TODO: implement sophisticated switch logic
    return FALSE;
}
