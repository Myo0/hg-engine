#include "../include/config.h"
#include "../include/types.h"
#include "../include/constants/file.h"

#ifdef FRONTIER_BRAIN_INTRO

/*
 * Native Battle Frontier "Frontier Brain" intro (dim scene, horizontal band, VS logo, the Brain's bust slides in, name, white flash),
 * played automatically before every trainer battle against one of the five Brain trainer classes.  See Docs&Changelog/Frontier Brain Intro.md.
 * Which classes get it, and which Brain is shown, comes from the music-combo tables (src/music_tables.c): TrainerClassToMusicCombo gives the
 * class's combo, MainMusicComboTable gives that combo's transition effect id (0x31-0x35, VS_EFFECT_* in src/vs_screen.c) and music.
 *
 * How a trainer battle starts (encounter.c Task_StartEncounter): transition effect -> CallTask_LeaveOverworld -> Task_StartBattle.
 * The Brain effect ids use a "do nothing" transition effect (VsScreen_NullGetter in src/vs_screen.c): the transition still starts the combo's
 * music at once, and the effect queues the intro with FrontierIntro_QueueFromEffect().  Task_StartBattle is hooked here (hooks file): if an
 * intro is queued it first runs it as a tiny standalone application, then launches the battle exactly like the vanilla task does.  The
 * overworld is already gone at that point, so no restore/fade is needed in between.
 *
 * The intro itself is vanilla code in overlay 80 (FrontierBrainIntro_Start = ov80_0223A00C), loaded by the app template (template.ovyId).
 * Everything here is resident (overlay 129) because the field overlays are unloaded while it runs.  The setup is the part of the game's
 * own FrontierMap_Init / FrontierMap_Free that the intro needs; the Frontier map's own functions (VRAM/BG layout, sprite system, VBlank)
 * are reused through a fake FrontierMap block with the same field offsets.
 */

#define FBI_HEAP    0x65 // HEAP_ID_101, the Frontier's heap (the intro allocates from it too)
#define FBI_MAP_ID  0    // FrontierMap_SetVramBank parameter row (only the VRAM/BG layout matters here)

#define FBI_PLANE_BG0 0x01
#define FBI_PLANE_BG1 0x02
#define FBI_PLANE_OBJ 0x10

#define FBI_LYR_MAIN_1 1
#define FBI_LYR_MAIN_2 2
#define FBI_LYR_MAIN_3 3
#define FBI_LYR_SUB_0  4

typedef BOOL (*FbiOvlFunc)(void *man, int *state);

struct FbiTemplate { // OverlayManagerTemplate
    FbiOvlFunc init;
    FbiOvlFunc exec;
    FbiOvlFunc exit;
    u32 ovyId;
};

enum { FBI_MAP_BGCONFIG = 0, FBI_MAP_PALETTE = 1, FBI_MAP_SPRITESYSTEM = 0x34 / 4, FBI_MAP_SPRITEMANAGER = 0x38 / 4, FBI_MAP_WORDS = 0x40 / 4 };

struct FbiApp {
    u32 map[FBI_MAP_WORDS]; // fake FrontierMap: [0] BgConfig*, [4] PaletteData*, [0x34] SpriteSystem*, [0x38] SpriteManager*
    void *updateTask;
    u16 brain;
    u16 done;
};

// arm9 (addresses in rom.ld)
void LONG_CALL Heap_Free(void *ptr);
void LONG_CALL Heap_Create(int parent, int heapId, u32 size);
void LONG_CALL Heap_Destroy(int heapId);
void LONG_CALL MI_CpuFill8(void *dst, u8 fill, u32 size);
void LONG_CALL MIi_CpuClear16(u16 value, void *dst, u32 size);
void LONG_CALL Main_SetVBlankIntrCB(void *cb, void *arg);
void LONG_CALL HBlankInterruptDisable(void);
void LONG_CALL GfGfx_DisableEngineAPlanes(void);
void LONG_CALL GfGfx_DisableEngineBPlanes(void);
void LONG_CALL GfGfx_BothDispOn(void);
void LONG_CALL GfGfx_EngineATogglePlanes(u32 planeMask, int toggle);
void LONG_CALL GfGfx_EngineBTogglePlanes(u32 planeMask, int toggle);
void *LONG_CALL PaletteData_Init(int heapId);
void LONG_CALL PaletteData_SetAutoTransparent(void *pltt, int on);
void LONG_CALL PaletteData_AllocBuffers(void *pltt, int bufferId, u32 size, int heapId);
void LONG_CALL PaletteData_FreeBuffers(void *pltt, int bufferId);
void LONG_CALL PaletteData_Free(void *pltt);
void LONG_CALL PaletteData_FillPaletteInBuffer(void *pltt, int bufferId, int sel, u32 start, u32 value, u32 count);
void LONG_CALL FreeBgTilemapBuffer(void *bgConfig, int layer);
void LONG_CALL ToggleBgLayer(int layer, int toggle);
void LONG_CALL FontID_Alloc(int fontId, int heapId);
void LONG_CALL FontID_Release(int fontId);
void LONG_CALL GF_CreateVramTransferManager(u32 count, int heapId);
void LONG_CALL GF_DestroyVramTransferManager(void);
void *LONG_CALL SysTask_CreateOnMainQueue(void *func, void *data, u32 priority);
void LONG_CALL DestroySysTask(void *task);
void LONG_CALL SpriteSystem_DrawSprites(void *spriteManager);
void LONG_CALL SpriteSystem_UpdateTransfer(void);
void LONG_CALL SpriteSystem_FreeResourcesAndManager(void *spriteSystem, void *spriteManager);
void LONG_CALL SpriteSystem_Free(void *spriteSystem);
void *LONG_CALL OverlayManager_GetArgs(void *man);
void LONG_CALL FieldSystem_LaunchApplication(void *fsys, const struct FbiTemplate *tmpl, void *parentWork);
BOOL LONG_CALL FieldSystem_ApplicationIsRunning(void *fsys);
void *LONG_CALL TaskManager_GetFieldSystem(void *taskManager);
void *LONG_CALL TaskManager_GetEnvironment(void *taskManager);
u32 *LONG_CALL TaskManager_GetStatePtr(void *taskManager);
void LONG_CALL Battle_LaunchApp(void *fsys, void *battleSetup);
void LONG_CALL Field_SetEnvironmentSoundState_None_Unk2(void);
void *LONG_CALL BgConfig_Alloc(u32 heapId);

// overlay 80 (only callable while it is loaded, i.e. from the app callbacks below)
void LONG_CALL FrontierMap_SetVramBank(void *bgConfig, u32 mapId);
void LONG_CALL FrontierMap_InitSpriteSystem(void *fakeMap);
void LONG_CALL FrontierMap_VBlank(void *fakeMap);
void LONG_CALL FrontierBrainIntro_Start(int brain, void *bgConfig, void *spriteSystem, void *spriteManager, void *paletteData, u16 *done, s16 x, s16 y);

#define FBI_REG16(addr) (*(volatile u16 *)(addr))
#define FBI_REG32(addr) (*(volatile u32 *)(addr))
#define FBI_DISPCNT_A   0x04000000
#define FBI_DISPCNT_B   0x04001000
#define FBI_BLDCNT_A    0x04000050
#define FBI_BLDCNT_B    0x04001050
#define FBI_POWCNT1     0x04000304

static struct FbiApp sFbiApp; // resident: this code outlives the field overlays being unloaded

static void FbiUpdateTask(void *task, void *work)
{
    struct FbiApp *app = work;
    (void)task;
    // The intro darkens BG2/BG3/backdrop with a brightness-decrease blend (BLDCNT effect 3). Add BG0, the 3D layer that still holds the
    // field's last frame, so the scene behind the band is dimmed exactly like the Gym Leader VS screen.
    if ((FBI_REG16(FBI_BLDCNT_A) & 0xC0) == 0xC0) {
        FBI_REG16(FBI_BLDCNT_A) |= 0x01;
    }
    FBI_REG16(0x0400106C) = 0; // the bottom screen's master brightness is left at full white by the leave-overworld step; show its (black) backdrop instead
    SpriteSystem_DrawSprites((void *)app->map[FBI_MAP_SPRITEMANAGER]);
    SpriteSystem_UpdateTransfer();
}

static BOOL FbiInit(void *man, int *state)
{
    struct FbiApp *app = OverlayManager_GetArgs(man);
    (void)state;

    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    FBI_REG32(FBI_DISPCNT_A) &= 0xFFFFE0FF; // GX_SetVisiblePlane(0)
    FBI_REG32(FBI_DISPCNT_B) &= 0xFFFFE0FF;
    FBI_REG32(FBI_DISPCNT_A) &= 0xFFFF1FFF; // GX_SetVisibleWnd(0)
    FBI_REG32(FBI_DISPCNT_B) &= 0xFFFF1FFF;
    FBI_REG16(FBI_BLDCNT_A) = 0; // G2_BlendNone
    FBI_REG16(FBI_BLDCNT_B) = 0;
    FBI_REG16(FBI_POWCNT1) |= 0x8000; // GX_SetDispSelect(MAIN_SUB)

    Heap_Create(3, FBI_HEAP, 0x90000);
    MIi_CpuClear16(0x0000, (void *)0x05000000, 0x200); // BG/OBJ palettes of both engines: black, so the backdrop does not flash the field colours
    MIi_CpuClear16(0x0000, (void *)0x05000200, 0x200);
    MIi_CpuClear16(0x0000, (void *)0x05000400, 0x200);
    MIi_CpuClear16(0x0000, (void *)0x05000600, 0x200);

    app->map[FBI_MAP_PALETTE] = (u32)PaletteData_Init(FBI_HEAP);
    PaletteData_SetAutoTransparent((void *)app->map[FBI_MAP_PALETTE], TRUE);
    PaletteData_AllocBuffers((void *)app->map[FBI_MAP_PALETTE], 0, 0x200, FBI_HEAP); // MAIN_BG
    PaletteData_AllocBuffers((void *)app->map[FBI_MAP_PALETTE], 1, 0x200, FBI_HEAP); // SUB_BG
    PaletteData_AllocBuffers((void *)app->map[FBI_MAP_PALETTE], 2, 0x1C0, FBI_HEAP); // MAIN_OBJ
    PaletteData_AllocBuffers((void *)app->map[FBI_MAP_PALETTE], 3, 0x200, FBI_HEAP); // SUB_OBJ
    PaletteData_FillPaletteInBuffer((void *)app->map[FBI_MAP_PALETTE], 0, 2, 0, 0, 1); // MAIN_BG colour 0 (backdrop) = black, both buffers
    PaletteData_FillPaletteInBuffer((void *)app->map[FBI_MAP_PALETTE], 1, 2, 0, 0, 1); // SUB_BG colour 0 = black
    FBI_REG16(0x0400006C) = 0; // master brightness back to normal
    FBI_REG16(0x0400106C) = 0;
    app->map[FBI_MAP_BGCONFIG] = (u32)BgConfig_Alloc(FBI_HEAP);
    GF_CreateVramTransferManager(64, FBI_HEAP);
    FontID_Alloc(4, FBI_HEAP); // the intro prints the Brain name with font 4

    FrontierMap_SetVramBank((void *)app->map[FBI_MAP_BGCONFIG], FBI_MAP_ID); // VRAM banks, graphics modes, BG layers
    FrontierMap_InitSpriteSystem(app->map);                                   // fills map[0x34] / map[0x38]

    GfGfx_BothDispOn();
    GfGfx_EngineATogglePlanes(FBI_PLANE_BG1, 1); // the intro's background band lives on BG1 (the map turns it on itself)
    // The 3D layer (BG0) still holds the field's last frame and SetVramBank puts it on top (priority 0); push it to the back so the
    // band on BG1 is drawn in front of it (BG0CNT / BG1CNT priority bits).
    FBI_REG16(0x04000008) = (FBI_REG16(0x04000008) & ~3) | 3;
    FBI_REG16(0x0400000A) = (FBI_REG16(0x0400000A) & ~3) | 1;
    GfGfx_EngineATogglePlanes(FBI_PLANE_OBJ, 1);
    GfGfx_EngineBTogglePlanes(FBI_PLANE_OBJ, 1);

    app->updateTask = SysTask_CreateOnMainQueue(FbiUpdateTask, app, 80000);
    Main_SetVBlankIntrCB(FrontierMap_VBlank, app->map);

    app->done = 0;
    FrontierBrainIntro_Start(app->brain, (void *)app->map[FBI_MAP_BGCONFIG], (void *)app->map[FBI_MAP_SPRITESYSTEM],
        (void *)app->map[FBI_MAP_SPRITEMANAGER], (void *)app->map[FBI_MAP_PALETTE], &app->done, 0, 0);
    return TRUE;
}

static BOOL FbiExec(void *man, int *state)
{
    struct FbiApp *app = OverlayManager_GetArgs(man);
    (void)state;
    return app->done == TRUE;
}

static BOOL FbiExit(void *man, int *state)
{
    struct FbiApp *app = OverlayManager_GetArgs(man);
    void *bg = (void *)app->map[FBI_MAP_BGCONFIG];
    void *pltt = (void *)app->map[FBI_MAP_PALETTE];
    (void)state;

    GfGfx_EngineATogglePlanes(FBI_PLANE_BG0, 0);
    GfGfx_EngineATogglePlanes(FBI_PLANE_BG1, 0);
    FreeBgTilemapBuffer(bg, FBI_LYR_MAIN_1);
    FreeBgTilemapBuffer(bg, FBI_LYR_MAIN_2);
    FreeBgTilemapBuffer(bg, FBI_LYR_MAIN_3);
    ToggleBgLayer(FBI_LYR_SUB_0, 0);
    FreeBgTilemapBuffer(bg, FBI_LYR_SUB_0);
    SpriteSystem_FreeResourcesAndManager((void *)app->map[FBI_MAP_SPRITESYSTEM], (void *)app->map[FBI_MAP_SPRITEMANAGER]);
    SpriteSystem_Free((void *)app->map[FBI_MAP_SPRITESYSTEM]);
    GF_DestroyVramTransferManager();
    PaletteData_FreeBuffers(pltt, 0);
    PaletteData_FreeBuffers(pltt, 1);
    PaletteData_FreeBuffers(pltt, 2);
    PaletteData_FreeBuffers(pltt, 3);
    PaletteData_Free(pltt);
    Heap_Free(bg);
    DestroySysTask(app->updateTask);
    FBI_REG32(FBI_DISPCNT_A) &= 0xFFFF1FFF; // GX_SetVisibleWnd(0)
    FBI_REG32(FBI_DISPCNT_B) &= 0xFFFF1FFF;
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    FontID_Release(4);
    Heap_Destroy(FBI_HEAP);
    MIi_CpuClear16(0x7FFF, (void *)0x05000000, 0x200); // HW_BG_PLTT
    MIi_CpuClear16(0x7FFF, (void *)0x05000200, 0x200); // HW_OBJ_PLTT
    MIi_CpuClear16(0x7FFF, (void *)0x05000400, 0x200); // HW_DB_BG_PLTT
    MIi_CpuClear16(0x7FFF, (void *)0x05000600, 0x200); // HW_DB_OBJ_PLTT
    FBI_REG16(FBI_BLDCNT_A) = 0; // G2_BlendNone
    FBI_REG16(FBI_BLDCNT_B) = 0;
    // The intro ends with a fade to white; hand the screens over fully black (master brightness: darken, level 16) for the battle to start from.
    FBI_REG16(0x0400006C) = 0x8010;
    FBI_REG16(0x0400106C) = 0x8010;
    return TRUE;
}

static const struct FbiTemplate sFbiTemplate = { FbiInit, FbiExec, FbiExit, OVERLAY_FRONTIER };

static u32 sFbiPendingBrain; // Brain number queued by the transition effect (1 Palmer, 2 Thorton, 3 Thorton variant, 4 Darach/Caitlin, 5 Argenta, 6 Dahlia)

// Called by the do-nothing transition effect (src/vs_screen.c) with the effect id from MainMusicComboTable.
void FrontierIntro_QueueFromEffect(u32 effectId)
{
    switch (effectId) {
    case 0x31: // Palmer (Tower Tycoon)
        sFbiPendingBrain = 1;
        break;
    case 0x32: // Argenta (Hall Matron)
        sFbiPendingBrain = 5;
        break;
    case 0x33: // Thorton (Factory Head)
        sFbiPendingBrain = 2;
        break;
    case 0x34: // Dahlia (Arcade Star)
        sFbiPendingBrain = 6;
        break;
    case 0x35: // Darach (Castle Valet)
        sFbiPendingBrain = 4;
        break;
    default:
        break;
    }
}

// Replacement for the game's Task_StartBattle (arm9 0x02050660); its original states are 2 and 3 here, states 0/1 are the intro.
BOOL Task_StartBattle_Hook(void *taskManager)
{
    void *fsys = TaskManager_GetFieldSystem(taskManager);
    void *setup = TaskManager_GetEnvironment(taskManager);
    u32 *state = TaskManager_GetStatePtr(taskManager);
    u32 brain;

    switch (*state) {
    case 0:
        brain = sFbiPendingBrain;
        sFbiPendingBrain = 0;
        if (brain != 0) {
            MI_CpuFill8(&sFbiApp, 0, sizeof(sFbiApp));
            sFbiApp.brain = brain;
            FieldSystem_LaunchApplication(fsys, &sFbiTemplate, &sFbiApp);
            *state = 1;
            break;
        }
        *state = 2;
        FALLTHROUGH;
    case 2:
        Battle_LaunchApp(fsys, setup);
        Field_SetEnvironmentSoundState_None_Unk2();
        *state = 3;
        break;
    case 1:
        if (!FieldSystem_ApplicationIsRunning(fsys)) {
            *state = 2;
        }
        break;
    case 3:
        if (!FieldSystem_ApplicationIsRunning(fsys)) {
            return TRUE;
        }
        break;
    }
    return FALSE;
}

#endif // FRONTIER_BRAIN_INTRO
