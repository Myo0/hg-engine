#include "config.h"
#include "debug.h"
#include "types.h"

#include "constants/ability.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/species.h"

#include "battle.h"
#include "pokemon.h"
#include "sound.h"

void AnimScrCmd_ChangePermanentBattleBackground(ANIM_CMD_STRUCT *animCmdStruct);
void AnimScrCmd_InvertPalettes(ANIM_CMD_STRUCT *animCmdStruct);

// need this to change the permanent battle bg properly
ALIGN4 struct BattleSystem *gBattleSystem = NULL;

ALIGN4 const anim_scr_cmd_func gNewAnimScrTable[] = {
    [0x58 - NUM_VANILLA_ANIM_SCRIPT_COMMANDS] = AnimScrCmd_ChangePermanentBattleBackground,
    [0x59 - NUM_VANILLA_ANIM_SCRIPT_COMMANDS] = AnimScrCmd_InvertPalettes,
};

anim_scr_cmd_func GrabAnimScriptCommand(u32 command)
{
    if (command >= NUM_VANILLA_ANIM_SCRIPT_COMMANDS) {
        return gNewAnimScrTable[command - NUM_VANILLA_ANIM_SCRIPT_COMMANDS];
    }
    return gAnimScrTable[command];
}

void AnimScrCmd_ChangePermanentBattleBackground(ANIM_CMD_STRUCT *animCmdStruct)
{
    u32 bg, terrain;
    struct BattleSystem *bw = gBattleSystem;
    animCmdStruct->animScriptPtr++;

    bg = *(animCmdStruct->animScriptPtr);
    animCmdStruct->animScriptPtr++;

    terrain = *(animCmdStruct->animScriptPtr);
    animCmdStruct->animScriptPtr++;

    if (bg == -1u) {
        bg = bw->sp->original_bgId;
    }
    if (terrain == -1u) {
        terrain = bw->sp->original_terrain;
    }
    LoadDifferentBattleBackground(bw, bg, terrain);
}

// ---- animation command 0x59: invertpalettes <on>
// on = 1: every colour of the battle scene becomes its negative; on = 0: the colours that were saved when it was switched on are put back.
// The scene is made of two kinds of palette:
//  - the battle field (sky, ground, terrain platform): main-screen background palette banks 0-7 of the battle's PaletteData (checked in a real
//    battle: bank 7 is the terrain platform, banks 8-11 are the text window frame, the move's effect background and the font, which stay as they are).
//  - the Pokemon pictures: 3D textures whose palettes sit in the PokepicManager (one 16-colour slot per picture, shadows after them), as an
//    unfaded and a faded copy. The manager uploads the faded copy only in a frame in which it blended something, so after changing the buffers
//    every active picture is given a zero-length fade (blend 0 of the unfaded colours = a plain copy) which makes it upload them.
// Particle effects, the text window and the HP bars are not touched. The original colours are saved so that "off" restores them exactly.
//
// hg-engine's PokepicManager/Pokepic structs are 8 bytes off from the game's own, so the fields used here are addressed by offset (taken from
// pokeheartgold's pokepic.h and confirmed against the memory of a real battle).
#define PM_PLTT_SIZE        0x2F8 // u32, bytes
#define PM_PLTT_FADED       0x300 // u16 *, what is uploaded
#define PM_PLTT_UNFADED     0x304 // u16 *, what fades start from
#define PM_PIC_SIZE         0xAC
#define PM_PIC_COUNT        4
#define PIC_FADE_CUR        0x48  // u8, then fadeEnd, fadeDelayCounter, fadeDelayLength
#define PIC_FADE_TARGET     0x4C  // u32
#define PIC_FLAGS           0x54  // u32 bit field: bit 12 = fadeActive
#define PIC_ACTIVE_BIT      0x1   // bit 0 of the first word

struct AnimPaletteBuffer { // first element of PaletteData.buffers (PLTTBUF_MAIN_BG); same layout as pokeheartgold's PaletteBuffer
    u16 *opaque;      // unfaded colours (what fades start from)
    u16 *transparent; // faded colours (what is uploaded to the hardware)
    u32 size;
    u16 selected[4];
};

#define INVERT_BG_COLORS  0x80  // banks 0-7
#define INVERT_PIC_COLORS 0x100 // more than the picture palettes use (a real battle: 0x60 colours)

#define MAIN_BG_PALETTE_RAM ((volatile u16 *)0x05000000)

static u16 sInvertBgOpaque[INVERT_BG_COLORS];
static u16 sInvertBgTransparent[INVERT_BG_COLORS];
static u16 sInvertPicUnfaded[INVERT_PIC_COLORS];
static u16 sInvertPicFaded[INVERT_PIC_COLORS];
static u32 sInvertPicCount;
static u8 sPalettesInverted;

// everything touched here must be a buffer in main RAM; anything else is left alone
static BOOL IsMainRam(const void *p, u32 bytes)
{
    u32 a = (u32)p;
    return a >= 0x02000000 && a + bytes <= 0x02400000;
}

static void InvertColors(u16 *colors, u32 count)
{
    u32 i;
    for (i = 0; i < count; i++) {
        colors[i] ^= 0x7FFF; // 15-bit colour: 31 - each channel
    }
}

static void CopyColors(u16 *dest, const u16 *src, u32 count)
{
    u32 i;
    for (i = 0; i < count; i++) {
        dest[i] = src[i];
    }
}

// a fade of length zero on every active picture: the manager blends (unfaded -> faded) once and uploads the result
static void RefreshPokepicPalettes(u8 *pics)
{
    u32 i;
    for (i = 0; i < PM_PIC_COUNT; i++) {
        u8 *pic = pics + i * PM_PIC_SIZE;
        if ((*(u32 *)pic & PIC_ACTIVE_BIT) == 0) {
            continue;
        }
        pic[PIC_FADE_CUR] = 0;
        pic[PIC_FADE_CUR + 1] = 0;
        pic[PIC_FADE_CUR + 2] = 0;
        pic[PIC_FADE_CUR + 3] = 0;
        *(u32 *)(pic + PIC_FADE_TARGET) = 0;
        *(u32 *)(pic + PIC_FLAGS) |= (1 << 12);
    }
}

void AnimScrCmd_InvertPalettes(ANIM_CMD_STRUCT *animCmdStruct)
{
    struct BattleSystem *bw = gBattleSystem;
    struct AnimPaletteBuffer *bg = (struct AnimPaletteBuffer *)bw->palette;
    u8 *pics = (u8 *)BattleSystem_GetPokepicManager(bw);
    u16 *picFaded = NULL, *picUnfaded = NULL;
    u32 on, i, count = 0;

    animCmdStruct->animScriptPtr++;
    on = *(animCmdStruct->animScriptPtr);
    animCmdStruct->animScriptPtr++;

    if (bg == NULL || !IsMainRam(bg, sizeof(*bg)) || !IsMainRam(bg->opaque, INVERT_BG_COLORS * 2) || !IsMainRam(bg->transparent, INVERT_BG_COLORS * 2)) {
        return;
    }
    if ((on != 0) == (sPalettesInverted != 0)) {
        return; // already in the wanted state
    }

    if (pics != NULL && IsMainRam(pics, 0x338)) {
        picFaded = *(u16 **)(pics + PM_PLTT_FADED);
        picUnfaded = *(u16 **)(pics + PM_PLTT_UNFADED);
        count = *(u32 *)(pics + PM_PLTT_SIZE) / 2;
        if (count > INVERT_PIC_COLORS) {
            count = INVERT_PIC_COLORS;
        }
        if (!IsMainRam(picFaded, count * 2) || !IsMainRam(picUnfaded, count * 2)) {
            count = 0;
        }
    }

    if (on) {
        CopyColors(sInvertBgOpaque, bg->opaque, INVERT_BG_COLORS);
        CopyColors(sInvertBgTransparent, bg->transparent, INVERT_BG_COLORS);
        InvertColors(bg->opaque, INVERT_BG_COLORS);
        InvertColors(bg->transparent, INVERT_BG_COLORS);
        sInvertPicCount = count;
        if (count != 0) {
            CopyColors(sInvertPicUnfaded, picUnfaded, count);
            CopyColors(sInvertPicFaded, picFaded, count);
            InvertColors(picUnfaded, count);
            InvertColors(picFaded, count);
        }
    } else {
        CopyColors(bg->opaque, sInvertBgOpaque, INVERT_BG_COLORS);
        CopyColors(bg->transparent, sInvertBgTransparent, INVERT_BG_COLORS);
        if (count > sInvertPicCount) {
            count = sInvertPicCount;
        }
        if (count != 0) {
            CopyColors(picUnfaded, sInvertPicUnfaded, count);
            CopyColors(picFaded, sInvertPicFaded, count);
        }
    }
    sPalettesInverted = on != 0;

    // show it now: the background palette goes to the hardware directly (the buffers hold the same colours, so any later upload agrees)
    for (i = 0; i < INVERT_BG_COLORS; i++) {
        MAIN_BG_PALETTE_RAM[i] = bg->transparent[i];
    }
    if (count != 0) {
        RefreshPokepicPalettes(pics);
    }
}

// if the form is nonzero, then ensure the PlayCry command just plays the cry itself and return
BOOL AnimCmd_PlayCryEdit(u32 client)
{
    struct BattleStruct *sp = gBattleSystem->sp;
    u32 form = sp->battlemon[client].form_no;
    if (form) {
        PlayCry(sp->battlemon[client].species, form);
    }
    return form != 0;
}

#ifdef DEBUG_BATTLE_SCENARIOS
BOOL LONG_CALL CheckTrainerMessage(struct BattleSystem *bw UNUSED, struct BattleStruct *sp UNUSED)
{
    return FALSE;
}
#endif // DEBUG_BATTLE_SCENARIOS
