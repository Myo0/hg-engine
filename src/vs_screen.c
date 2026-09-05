#include "config.h"
#include "debug.h"
#include "types.h"

#include "overlay.h"

// ============================================================================
// Custom Gym-Leader-style VS screens for Lyra / Ethan + the 5 Frontier Brains
// ============================================================================
//
// Vanilla HGSS gives the 16 Gym Leaders + 4 Elite Four + Champion + Rival a
// dramatic "VS" intro drawn by overlay 115 (OVY_115).  Selection runs:
//
//   trainerClass -> TrainerClassToMusicCombo (music_tables.c) -> combo index
//   combo index  -> MainMusicComboTable      (music_tables.c) -> (effectId, seq)
//   effectId     -> ov01_021EFB64  : load OVY_115 (for ids 12..33)
//   effectId     -> ov01_021EFB38  : per-frame, blx ov01_022068C4[effectId]
//                                    (a per-slot getter in OVY_115)
//   getter       -> ov115_0225F220 : the 16-state GL render machine, fed a
//                                    20-byte struct that points at the portrait
//                                    art members inside NARC a/1/0/9 (id 109).
//   effectId     -> ov01_021EFC04  : unload OVY_115 when the transition ends.
//
// This file adds new effect ids that reuse the exact GL render path with the
// portrait art repointed to busts that already ship, unused, in NARC 109:
//
//   Lyra    : NCLR 211, NCGR 212, NCER 213, NANR 214   (palette shared w/ Ethan)
//   Ethan   : NCLR 211, NCGR 208, NCER 209, NANR 210
//   Palmer  : NCLR 186, NCGR 185, NCER 187, NANR 188   (Frontier Brain busts,
//   Thorton : NCLR 174, NCGR 173, NCER 175, NANR 176    natively drawn by the
//   Argenta : NCLR 182, NCGR 181, NCER 183, NANR 184    overlay-80 renderer;
//   Dahlia  : NCLR 178, NCGR 177, NCER 179, NANR 180    reused here through the
//   Darach  : NCLR 170, NCGR 169, NCER 171, NANR 172    GL path instead)
//
// No existing Gym Leader is touched.  music_tables.c emits one new effect id per
// character; the three ov01_* dispatch points in overlay 1 are re-pointed here
// via the `hooks` file and reimplemented 1:1 with the new ids folded in.
// ============================================================================

#define VS_EFFECT_LYRA    0x2F
#define VS_EFFECT_ETHAN   0x30
#define VS_EFFECT_PALMER  0x31
#define VS_EFFECT_ARGENTA 0x32
#define VS_EFFECT_THORTON 0x33
#define VS_EFFECT_DAHLIA  0x34
#define VS_EFFECT_DARACH  0x35
#define VS_EFFECT_MIN     VS_EFFECT_LYRA
#define VS_EFFECT_MAX     VS_EFFECT_DARACH

// Fixed addresses inside overlay 1 (loads at 0x021E5900, always resident while
// the field/transition code that calls into here is running).
#define OV01_TRANSITION_CTL   ((u32 *)0x02209B64)        // ov01_02209B64
#define OV01_GETTER_TABLE     ((VsGetterFn *)0x022068C4) // ov01_022068C4

// ---- ROM / overlay entry points (addresses in rom.ld) ----
extern u32  LONG_CALL ov115_0225F220(void *taskEnv, u32 heapId, const void *vsStruct);
extern void LONG_CALL ov01_021EFCDC(void *taskEnv, void *task);
extern u64  LONG_CALL OS_GetTick(void);
extern void LONG_CALL OS_SetTick(u64 tick);

typedef void (*VsGetterFn)(void *task, void *taskEnv);

// ---- 20-byte Gym-Leader VS struct (matches ov115_022603B0 family) ----------
typedef struct VsScreenGL {
    /*0x00*/ u32 magic;        // always 0x000D6000
    /*0x04*/ u16 trainerId;    // whose name the box shows (BufferTrainerName)
    /*0x06*/ u16 trainerIdHi;  // high half of the +0x04 word; always 0
    /*0x08*/ u16 nameMsgId;    // only 0x17 (Rival) is special-cased; anything else = static name
    /*0x0A*/ u16 flag;         // 0 or 1
    /*0x0C*/ u8  portrait[4];  // NARC 109 members: { NCLR, NCGR, NCER, NANR }
    /*0x10*/ u8  background[3]; // NARC 109 members: { bg1, bg0, bg2 }
    /*0x13*/ u8  pad;
} VsScreenGL; // size 0x14

// Base = Falkner's slot (ov115_022603B0) verbatim, except the portrait quad,
// the name-box trainer id, and the banner scene (background triple).
//   Banner sources: Falkner {21,20,22} blue / Bugsy {24,23,25} green /
//   Whitney {27,26,28} pink / Morty {30,29,31} purple / Jasmine {33,32,34} gray
//   / Rival {45,44,46} red.

static const VsScreenGL sLyraVsStruct = {
    .magic = 0x000D6000, .trainerId = 19, .trainerIdHi = 0, .nameMsgId = 0x42, .flag = 1,
    .portrait = { 211, 212, 213, 214 }, .background = { 27, 26, 28 }, .pad = 0,  // Whitney pink
};
static const VsScreenGL sEthanVsStruct = {
    .magic = 0x000D6000, .trainerId = 40, .trainerIdHi = 0, .nameMsgId = 0x42, .flag = 1,
    .portrait = { 211, 208, 209, 210 }, .background = { 21, 20, 22 }, .pad = 0,  // Falkner blue
};
static const VsScreenGL sPalmerVsStruct = {  // Tower Tycoon
    .magic = 0x000D6000, .trainerId = 707, .trainerIdHi = 0, .nameMsgId = 0x42, .flag = 1,
    .portrait = { 186, 185, 187, 188 }, .background = { 45, 44, 46 }, .pad = 0,  // Rival red
};
static const VsScreenGL sArgentaVsStruct = {  // Hall Matron
    .magic = 0x000D6000, .trainerId = 708, .trainerIdHi = 0, .nameMsgId = 0x42, .flag = 1,
    .portrait = { 182, 181, 183, 184 }, .background = { 27, 26, 28 }, .pad = 0,  // Whitney pink
};
static const VsScreenGL sThortonVsStruct = {  // Factory Head
    .magic = 0x000D6000, .trainerId = 709, .trainerIdHi = 0, .nameMsgId = 0x42, .flag = 1,
    .portrait = { 174, 173, 175, 176 }, .background = { 24, 23, 25 }, .pad = 0,  // Bugsy green
};
static const VsScreenGL sDahliaVsStruct = {  // Arcade Star
    .magic = 0x000D6000, .trainerId = 710, .trainerIdHi = 0, .nameMsgId = 0x42, .flag = 1,
    .portrait = { 178, 177, 179, 180 }, .background = { 33, 32, 34 }, .pad = 0,  // Jasmine gray
};
static const VsScreenGL sDarachVsStruct = {  // Castle Valet
    .magic = 0x000D6000, .trainerId = 338, .trainerIdHi = 0, .nameMsgId = 0x42, .flag = 1,
    .portrait = { 170, 169, 171, 172 }, .background = { 30, 29, 31 }, .pad = 0,  // Morty purple
};

// ---- per-slot getters (model: ov115_0225F704) -----------------------------
// ov01_021EFB38 invokes these as (r0 = SysTask *task, r1 = void *taskEnv).
static void vs_run(void *task, void *taskEnv, const VsScreenGL *s)
{
    if (ov115_0225F220(taskEnv, 4, s) == 1) {
        ov01_021EFCDC(taskEnv, task);
    }
}

void VsScreen_LyraGetter(void *task, void *taskEnv)    { vs_run(task, taskEnv, &sLyraVsStruct); }
void VsScreen_EthanGetter(void *task, void *taskEnv)   { vs_run(task, taskEnv, &sEthanVsStruct); }
void VsScreen_PalmerGetter(void *task, void *taskEnv)  { vs_run(task, taskEnv, &sPalmerVsStruct); }
void VsScreen_ArgentaGetter(void *task, void *taskEnv) { vs_run(task, taskEnv, &sArgentaVsStruct); }
void VsScreen_ThortonGetter(void *task, void *taskEnv) { vs_run(task, taskEnv, &sThortonVsStruct); }
void VsScreen_DahliaGetter(void *task, void *taskEnv)  { vs_run(task, taskEnv, &sDahliaVsStruct); }
void VsScreen_DarachGetter(void *task, void *taskEnv)  { vs_run(task, taskEnv, &sDarachVsStruct); }

static VsGetterFn vs_getter_for(u32 effectId)
{
    switch (effectId) {
    case VS_EFFECT_LYRA:    return VsScreen_LyraGetter;
    case VS_EFFECT_ETHAN:   return VsScreen_EthanGetter;
    case VS_EFFECT_PALMER:  return VsScreen_PalmerGetter;
    case VS_EFFECT_ARGENTA: return VsScreen_ArgentaGetter;
    case VS_EFFECT_THORTON: return VsScreen_ThortonGetter;
    case VS_EFFECT_DAHLIA:  return VsScreen_DahliaGetter;
    case VS_EFFECT_DARACH:  return VsScreen_DarachGetter;
    default:                return (VsGetterFn)0;
    }
}

// ---- hook: ov01_021EFB64 (effectId -> load the right transition overlay) ---
// Entry replacement. r0 = effectId, lr = caller. 1:1 with the vanilla range
// dispatcher plus the new ids (0x2F..0x35) mapping to OVY_115.
void VsScreen_LoadTransitionOverlay(int effectId)
{
    u32 ovy;

    if (effectId >= 0x0C && effectId <= 0x21)                            ovy = 115;
    else if (effectId >= 0x22 && effectId <= 0x24)                       ovy = 116;
    else if (effectId >= 0x27 && effectId <= 0x2C)                       ovy = 117;
    else if (effectId == 0x2D)                                           ovy = 118;
    else if (effectId >= 0x00 && effectId <= 0x05)                       ovy = 120;
    else if (effectId >= 0x06 && effectId <= 0x0B)                       ovy = 119;
    else if (effectId == 0x2E)                                           ovy = 120;
    else if (effectId >= VS_EFFECT_MIN && effectId <= VS_EFFECT_MAX)     ovy = 115; // NEW
    else                                                                ovy = 114;

    HandleLoadOverlay(ovy, 2);
}

// ---- hook: ov01_021EFC04 (effectId -> unload that overlay) ----------------
void VsScreen_UnloadTransitionOverlay(int effectId)
{
    u32 ovy;

    if (effectId >= 0x0C && effectId <= 0x21)                            ovy = 115;
    else if (effectId >= 0x22 && effectId <= 0x24)                       ovy = 116;
    else if (effectId >= 0x27 && effectId <= 0x2C)                       ovy = 117;
    else if (effectId == 0x2D)                                           ovy = 118;
    else if (effectId >= 0x00 && effectId <= 0x05)                       ovy = 120;
    else if (effectId >= 0x06 && effectId <= 0x0B)                       ovy = 119;
    else if (effectId == 0x2E)                                           ovy = 120;
    else if (effectId >= VS_EFFECT_MIN && effectId <= VS_EFFECT_MAX)     ovy = 115; // NEW
    else                                                                ovy = 114;

    UnloadOverlayByID(ovy);
}

// ---- hook: ov01_021EFB38 (per-frame transition task) ---------------------
// Entry replacement. r0 = SysTask *task, r1 = void *taskEnv. 1:1 with vanilla
// except our ids dispatch to our getters instead of the (out-of-range)
// ov01_022068C4[] slot.
void VsScreen_FrameTask(void *task, void *taskEnv)
{
    u32 *ctl = OV01_TRANSITION_CTL;
    u32 effectId = ctl[1];            // ov01_02209B64[+4] = stored effect id
    VsGetterFn getter = vs_getter_for(effectId);

    if (getter == (VsGetterFn)0) {
        getter = OV01_GETTER_TABLE[effectId];
    }
    getter(task, taskEnv);

    ctl[2] += 1;                      // ov01_02209B64[+8]++  (frame counter)
    OS_GetTick();
    OS_SetTick(0);
}
