#include "../../include/config.h"
#include "../../include/types.h"
#include "../../include/message.h"
#include "../../include/window.h"
#include "../../include/system.h"
#include "../../include/sound.h"
#include "../../include/constants/buttons.h"
#include "../../include/constants/sndseq.h"
#include "../../include/save.h"

#ifdef CREDITS_ICON

/*
 * Credits icon on the X menu (8th icon, bottom of the right-hand column).
 *
 * The bottom-screen touch menu (overlay 27, "ov27", pret's touchscreen_menu.c) was written for 7 icons. This file
 * replaces the icon handling functions of that overlay with versions that know about one more icon, and leaves the
 * rest of the overlay (running shoes, action button, phone ring, safari/bug contest layouts, ...) untouched. The
 * replaced functions are hooked in the `hooks` file (overlay 27 is decompressed at build time, see scripts/make.py).
 *
 * The credits icon only exists in the NORMAL layout. It borrows what the Safari/Park ball item uses in other layouts:
 *   resource 10   (char/palette slot, header index 10)     -> the credits button art (NARC a/0/1/4, CREDITS_CHAR_FILE)
 *   sprite 15     (TouchscreenMenuData.sprites[15])        -> its sprite; this number is also its "selection" slot
 *   iconWindows[7] (label window at tile 11,21)            -> its label ("CREDITS", text bank 196)
 * so TouchscreenMenuData keeps its original layout and nothing in the unchanged functions has to move.
 *
 * Menu index: the start menu (ARM9 start_menu.c) addresses buttons by menu index: 0-6 icons, 7/8 registered items,
 * 9 = credits. A bytereplacement makes StartMenu_BuildActionLists put the (repurposed) running-shoes action at display
 * position 9, and routinepointers point that action's handler at TouchMenu_CreditsAction below, which closes the menu
 * and runs common script 2076 (the credits reader).
 */

#define CREDITS_SLOT        15 // sprite index == selection slot of the credits icon
#define CREDITS_MENU_INDEX  9
#define CREDITS_CHAR_FILE   78 // new member appended to NARC a/0/1/4 by scripts/patch_touch_icon.py
#define CREDITS_MSG_ID      37 // new message appended to text bank 196
#define CREDITS_POS_X       104
#define CREDITS_POS_Y       142
#define CREDITS_SCRIPT_ID   2076

#define NUM_ICONS        7
#define NUM_RESOURCES    11
#define ICON_NONE        13
#define NO_HIGHLIGHT     (-1)
#define SPRITE_ITEM_1    7
#define SPRITE_ITEM_2    8
#define SPRITE_MENU      14

#define LAYOUT_NORMAL  0
#define LAYOUT_SAFARI  1
#define LAYOUT_BUG     2
#define LAYOUT_PALPARK 3
#define LAYOUT_5       5

#define HEAP_ID_8 8

// ---- overlay 27 / ARM9 / overlay 1 entry points (rom.ld; addresses found by matching pret's asm/overlay_27.s) ----
extern void LONG_CALL GXS_LoadOBJPltt(const void *src, u32 offset, u32 size);
extern int LONG_CALL TouchscreenHitbox_FindRectAtTouchNew(const void *hitboxes);
extern u32 LONG_CALL PlayerAvatar_GetPlayerMoveState(void *playerAvatar);
extern BOOL LONG_CALL IsPaletteFadeFinished(void);
extern void *LONG_CALL Save_Bag_Get(void *saveData);
extern u16 LONG_CALL Bag_GetRegisteredItem1(void *bag);
extern u16 LONG_CALL Bag_GetRegisteredItem2(void *bag);
extern void LONG_CALL Sprite_SetDrawFlag(void *sprite, BOOL flag);
extern void LONG_CALL Sprite_SetAnimCtrlSeq(void *sprite, u32 seq);
extern void LONG_CALL Sprite_SetOamMode(void *sprite, u32 mode);
extern void *LONG_CALL Sprite_CreateAffine(void *template);
extern void LONG_CALL Sprite_SetAnimActiveFlag(void *sprite, BOOL flag);
extern void LONG_CALL Sprite_SetPriority(void *sprite, u32 priority);
extern void LONG_CALL Sprite_SetAffineOverwriteMode(void *sprite, u32 mode);
extern BOOL LONG_CALL FieldSystem_ShouldDrawStartMenuIcon(void *fieldSystem, u32 icon);
extern void *LONG_CALL AddCharResObjFromNarc(void *resMan, u32 narc, u32 fileId, BOOL compressed, u32 resId, u32 vramType, u32 heapId);
extern void *LONG_CALL AddPlttResObjFromNarc(void *resMan, u32 narc, u32 fileId, BOOL compressed, u32 resId, u32 vramType, u32 plttNum, u32 heapId);
extern void LONG_CALL SpriteTransfer_CreateCharTransferTask_AllocAtEnd(void *charResObj);
extern void LONG_CALL SpriteTransfer_CreatePlttTransferTask(void *plttResObj);
extern void LONG_CALL GF2DGfxResObj_FreeData(void *resObj);
extern u32 LONG_CALL GetItemIndexMapping(u16 item, u32 kind);
extern void *LONG_CALL FieldSystem_BugContest_Get(void *fieldSystem);
extern u32 LONG_CALL GetMonIconPlttNaix(void);
extern u32 LONG_CALL Pokemon_GetIconNaix(void *mon);
extern u32 LONG_CALL TouchscreenMenu_GetBallItem(u32 layout);               // ov27_0225AE8C
extern BOOL LONG_CALL TouchscreenMenu_LayoutHasRegisteredItems(void *data); // ov27_0225BDAC
extern BOOL LONG_CALL TouchscreenMenu_HasRunningShoes(void *data);          // ov27_0225BDC8
extern void LONG_CALL TouchscreenMenu_SetButtonsActive(void *data, BOOL active); // ov27_0225A690
extern int LONG_CALL TouchscreenMenu_GetActionType(void *data);                  // ov27_0225A594
extern void LONG_CALL TouchscreenMenu_PrintActionLabel(void *data, int actionType); // ov27_0225A61C
extern void LONG_CALL BufferPlayersName(void *msgFormat, u32 slot, void *profile);
extern void *LONG_CALL Save_PlayerData_GetProfile(void *saveData);
extern String *LONG_CALL ReadMsgData_ExpandPlaceholders(void *msgFormat, void *msgData, u32 msgId, u32 heapId);
extern void LONG_CALL String_Delete(void *string);
extern u32 LONG_CALL FontID_String_GetWidth(u32 fontId, void *string, u32 letterSpacing);
extern void LONG_CALL CopyWindowToVram(void *window);
// layout 5 (Union Room / club link) checks, see TouchMenu_HandleTouchInput
extern u32 LONG_CALL Comm_GetLocalNetId(void);                       // sub_0203769C
extern BOOL LONG_CALL CommClubLink_IsWalkingInRoom(void);            // sub_02058740
extern BOOL LONG_CALL CommClubLink_CardExchangeFinished(void);       // sub_02058258
extern BOOL LONG_CALL CommPlayerManager_IsInitialized(void);         // sub_02056EE0
extern BOOL LONG_CALL CommPlayerManager_IsLocalPlayerConnected(void);// sub_02057A0C
extern u32 LONG_CALL CommPlayerManager_GetMoveTimer(u32 netId);      // sub_02057F18
extern BOOL LONG_CALL Comm_IsSendingMoveKeys(void);                  // sub_02037958
// start menu (ARM9 start_menu.c, static functions) and tasks
extern void *LONG_CALL TaskManager_GetFieldSystem(void *taskManager);
extern void *LONG_CALL TaskManager_GetEnvironment(void *taskManager);
extern void LONG_CALL StartMenu_RemoveCursorAndIcons(void *startMenu, void *fieldSystem);
extern void LONG_CALL StartScriptFromMenu(void *taskManager, u32 scriptId, void *obj);

// ---- TouchscreenMenuData, original layout (size 0x540). Verified against pret's asm/overlay_27.s ----
typedef struct TouchIcon {
    u8 shown;
    String *label;
} TouchIcon;

typedef struct TouchMenuData {
    u32 bgVariant;                // 0x000
    void *bgConfig;               // 0x004
    void *task;                   // 0x008
    u16 *lastTouchMenuInput;      // 0x00C
    void *fieldSystem;            // 0x010
    s32 selection;                // 0x014
    void *spriteList;             // 0x018
    u8 renderer[0x128];           // 0x01C
    void *resMans[4];             // 0x144
    void *resObjs[11][4];         // 0x154
    u8 headers[11][0x24];         // 0x204
    void *sprites[16];            // 0x390
    struct Window actionWindow;   // 0x3D0
    struct Window menuWindow;     // 0x3E0
    struct Window iconWindows[8]; // 0x3F0
    TouchIcon icons[NUM_ICONS];   // 0x470
    void *msgData;                // 0x4A8
    void *msgFormat;              // 0x4AC
    String *actionStrings[5];     // 0x4B0
    String *menuString;           // 0x4C4
    String *unk_4C8;              // 0x4C8
    u16 iconPalettes[32];         // 0x4CC
    u8 runningShoesShown;         // 0x50C
    s32 actionType;               // 0x510
    u8 iconShown[8];              // 0x514 (the 8th byte was padding)
    u32 flags;                    // 0x51C  bit0 buttonsActive, bits1-4 layout, bit5 selectedIconAnim, bits6-7 registeredItemAnim
    u8 phoneRing[0x20];           // 0x520
} TouchMenuData;

_Static_assert(__builtin_offsetof(TouchMenuData, selection) == 0x14, "layout");
_Static_assert(__builtin_offsetof(TouchMenuData, headers) == 0x204, "layout");
_Static_assert(__builtin_offsetof(TouchMenuData, sprites) == 0x390, "layout");
_Static_assert(__builtin_offsetof(TouchMenuData, iconWindows) == 0x3F0, "layout");
_Static_assert(__builtin_offsetof(TouchMenuData, icons) == 0x470, "layout");
_Static_assert(__builtin_offsetof(TouchMenuData, msgData) == 0x4A8, "layout");
_Static_assert(__builtin_offsetof(TouchMenuData, iconPalettes) == 0x4CC, "layout");
_Static_assert(__builtin_offsetof(TouchMenuData, iconShown) == 0x514, "layout");
_Static_assert(__builtin_offsetof(TouchMenuData, flags) == 0x51C, "layout");
_Static_assert(sizeof(TouchMenuData) == 0x540, "layout");

#define DATA_LAYOUT(d)            (((d)->flags >> 1) & 0xF)
#define DATA_BUTTONS_ACTIVE(d)    ((d)->flags & 1)
#define DATA_SELECTED_ICON_ANIM(d) (((d)->flags >> 5) & 1)

// FieldSystem fields used here (offsets from the ROM: startMenuState is the low 6 bits of byte 0xD2, see
// Task_StartMenu_HandleSelection_Retire; the fields after it follow pret's field_system.h order)
#define FSYS_BYTE(fsys, off)   (*(u8 *)((u8 *)(fsys) + (off)))
#define FSYS_START_STATE(f)    (FSYS_BYTE(f, 0xD2) & 0x3F)
#define FSYS_SUPPRESS_DIM_SET(f) (FSYS_BYTE(f, 0xD2) |= 0x80)
#define FSYS_CURSOR_POS(f)     FSYS_BYTE(f, 0xD3)
#define FSYS_SAVEDATA(f)       (*(void **)((u8 *)(f) + 0x0C))
#define FSYS_PLAYER_AVATAR(f)  (*(void **)((u8 *)(f) + 0x40))

typedef struct TouchHitbox {
    u8 top, bottom, left, right;
} TouchHitbox;

typedef struct TouchIconAnim {
    u16 sprite;
    u16 anim;
    u8 window;
    u8 pad;
} TouchIconAnim;

typedef struct TouchIconInfo {
    u16 charFileId;       // 0xFFFF: the Bug Contest mon icon
    u16 msgIdAndEnabled;  // bits 0-14 msg id, bit 15 enabled
} TouchIconInfo;

typedef struct TouchSpriteTemplate {
    void *spriteList;
    const void *header;
    s32 posX, posY, posZ;
    s32 scaleX, scaleY, scaleZ;
    u16 rotation;
    u32 drawPriority;
    u32 whichScreen;
    u32 heapId;
} TouchSpriteTemplate;

// original overlay 27 read-only data (it stays loaded and unchanged)
#define sLayouts   ((const u8 (*)[8])0x0225CFC8)
#define sIconInfo  ((const TouchIconInfo *)0x0225CF94)
#define sIconAnims ((const TouchIconAnim *)0x0225CF10)

// original hitboxes (MENU bar, 4 left icons, 3 right icons, 2 registered items) plus the credits button, then the terminator
static const TouchHitbox sHitboxes[] = {
    { 0, 16, 8, 160 },
    { 22, 54, 16, 76 },
    { 62, 94, 16, 76 },
    { 102, 134, 16, 76 },
    { 142, 174, 16, 76 },
    { 22, 54, 96, 156 },
    { 62, 94, 96, 156 },
    { 102, 134, 96, 156 },
    { 8, 39, 203, 255 },
    { 46, 77, 203, 255 },
    { 142, 190, 96, 156 }, // credits (hit 10); runs down over its label (y 168-184), which people tend to tap
    { 0xFF, 0, 0, 0 },
};
#define HIT_MENU        0
#define HIT_ITEM_1      8
#define HIT_ITEM_2      9
#define HIT_CREDITS     10

// d-pad neighbours: [logical slot 0-7][up, down, left, right][3 candidates, first shown wins]; logical slot 7 is the
// credits icon. With the credits icon hidden every first candidate matches the original table.
static const u8 sNeighbors[8][4][3] = {
    { { 3, 2, 1 }, { 1, 2, 3 }, { 4, 0, 0 }, { 4, 0, 0 } },
    { { 0, 3, 2 }, { 2, 3, 0 }, { 5, 1, 0 }, { 5, 1, 0 } },
    { { 1, 0, 3 }, { 3, 0, 1 }, { 6, 2, 0 }, { 6, 2, 0 } },
    { { 2, 1, 0 }, { 0, 1, 2 }, { 7, 6, 3 }, { 7, 6, 3 } },
    { { 7, 6, 5 }, { 5, 6, 7 }, { 0, 4, 0 }, { 0, 4, 0 } },
    { { 4, 7, 6 }, { 6, 7, 4 }, { 1, 5, 0 }, { 1, 5, 0 } },
    { { 5, 4, 7 }, { 7, 4, 5 }, { 2, 6, 0 }, { 2, 6, 0 } },
    { { 6, 5, 4 }, { 4, 5, 6 }, { 3, 7, 0 }, { 3, 7, 0 } },
};

// credits state that does not fit in TouchscreenMenuData (only one touch menu exists at a time)
static String *sCreditsLabel;
static u8 sCreditsShown;  // the icon is unlocked and drawn
static u8 sCreditsExists; // NORMAL layout: its sprite, label and palette are set up (it may still be locked)
static u8 sCreditsPress; // frames left in which the simulated A press for a touch on the credits icon is repeated

#define FLAG_GOT_OPTIONS_BUTTON      286
#define VAR_SCENE_PLAYERS_HOUSE_1F   0x4106

// Mom's script sets CREDITS_UNLOCK_FLAG after the four vanilla buttons. A save that finished her scene before that flag existed
// has the Options button and a non-zero scene variable (the script sets it to 1 as its last command), so it gets the icon too.
static BOOL CreditsUnlocked(void)
{
    if (CheckScriptFlag(CREDITS_UNLOCK_FLAG)) {
        return TRUE;
    }
    return CheckScriptFlag(FLAG_GOT_OPTIONS_BUTTON) && GetScriptVar(VAR_SCENE_PLAYERS_HOUSE_1F) != 0;
}

static inline BOOL IsNormalLayout(TouchMenuData *data)
{
    return DATA_LAYOUT(data) == LAYOUT_NORMAL;
}

static inline BOOL SlotShown(TouchMenuData *data, s32 slot)
{
    if (slot == CREDITS_SLOT) {
        return sCreditsShown;
    }
    return data->icons[slot].shown != FALSE;
}

static inline s32 LogicalToSlot(s32 logical)
{
    return logical == 7 ? CREDITS_SLOT : logical;
}

static inline s32 SlotToLogical(s32 slot)
{
    return slot == CREDITS_SLOT ? 7 : slot;
}

// --------------------------------------------------------------------------------------------------------------
// replaced functions

// ov27_0225C10C: shown flags of the icons of this layout (+ credits)
void TouchMenu_InitIconFlags(TouchMenuData *data)
{
    int i;

    for (i = 0; i < NUM_ICONS; i++) {
        int icon = sLayouts[DATA_LAYOUT(data)][i];
        if (icon != ICON_NONE) {
            if (icon < NUM_ICONS) {
                data->iconShown[i] = FieldSystem_ShouldDrawStartMenuIcon(data->fieldSystem, icon);
            } else {
                data->iconShown[i] = (sIconInfo[icon].msgIdAndEnabled >> 15) & 1;
            }
        }
        data->icons[i].shown = data->iconShown[i];
    }
    sCreditsLabel = NULL;
    sCreditsPress = 0;
    sCreditsExists = IsNormalLayout(data);
    sCreditsShown = sCreditsExists && CreditsUnlocked();
    data->iconShown[7] = sCreditsShown;
}

// ov27_0225C170: slot -> menu index (items 7/8 pass through; credits is menu index 9)
int TouchMenu_GetMenuIndex(TouchMenuData *data, int slot)
{
    int menuIndex = -1;
    int i;

    if (slot == CREDITS_SLOT) {
        return CREDITS_MENU_INDEX;
    }
    if ((u32)(slot - 7) <= 1) {
        return slot;
    }
    for (i = 0; i < slot + 1; i++) {
        if (data->icons[i].shown != FALSE) {
            menuIndex++;
        }
    }
    return menuIndex;
}

// ov27_0225C1AC: menu index -> slot
int TouchMenu_GetSlotFromMenuIndex(TouchMenuData *data, int menuIndex)
{
    int i;
    int slot = -1;
    int count = 0;

    if (menuIndex == CREDITS_MENU_INDEX && sCreditsShown) {
        return CREDITS_SLOT;
    }
    for (i = 0; i < NUM_ICONS; i++) {
        if (data->icons[i].shown) {
            if (menuIndex == count) {
                slot = i;
                break;
            }
            count++;
        }
    }
    if (slot == -1) {
        FSYS_CURSOR_POS(data->fieldSystem) = 0;
        slot = 0;
    }
    return slot;
}

// ov27_0225C1EC: if the selected icon is hidden, move to the first shown one
void TouchMenu_ValidateSelection(TouchMenuData *data)
{
    int i;

    if (!SlotShown(data, data->selection)) {
        for (i = 0; i < NUM_ICONS; i++) {
            if (data->icons[i].shown) {
                FSYS_CURSOR_POS(data->fieldSystem) = i;
                data->selection = TouchMenu_GetSlotFromMenuIndex(data, FSYS_CURSOR_POS(data->fieldSystem));
                return;
            }
        }
    }
}

// ov27_0225B398: selected icon gets the highlighted palette, the others the normal one
void TouchMenu_HighlightIcon(TouchMenuData *data, int selection)
{
    int i = 0;
    int offset = 0;

    while (i < NUM_ICONS) {
        u8 icon = sLayouts[DATA_LAYOUT(data)][i];
        u16 charFileId = sIconInfo[icon].charFileId;
        int palette = 0;
        if (icon != ICON_NONE && charFileId != 0xFFFF) {
            if (i == selection) {
                palette = 16;
            }
            GXS_LoadOBJPltt(&data->iconPalettes[palette], offset, 0x20);
        }
        offset += 0x20;
        i++;
    }
    if (sCreditsExists) {
        // resource 10: after the 9 one-palette resources and the 4-palette button resource (slots 9-12)
        GXS_LoadOBJPltt(&data->iconPalettes[selection == CREDITS_SLOT ? 16 : 0], 13 * 0x20, 0x20);
    }
}

// ov27_0225A7DC
void TouchMenu_HighlightSelectionAndDisable(TouchMenuData *data)
{
    TouchMenu_HighlightIcon(data, data->selection);
    TouchscreenMenu_SetButtonsActive(data, FALSE);
}

// ov27_0225A86C: the menu was closed (or a script started from it has finished): put the touch screen back to normal.
// The only change from the original is clearing selectedIconAnim. The game sets it when a start menu action is launched and
// relies on the touch menu being destroyed and recreated afterwards (every app that leaves the field does that). The credits
// reader runs in place, so without this the flag stays set and TouchMenu_HandleTouchInput ignores every touch, including the
// registered item buttons, until the menu is recreated.
void TouchMenu_RestoreAfterStartMenu(TouchMenuData *data)
{
    data->flags &= ~(1u << 5);
    TouchscreenMenu_PrintActionLabel(data, TouchscreenMenu_GetActionType(data));
    TouchMenu_HighlightIcon(data, NO_HIGHLIGHT);
    CopyWindowToVram(&data->actionWindow);
    TouchscreenMenu_SetButtonsActive(data, TRUE);
}

// ov27_0225B4AC: all but the selected icon translucent
void TouchMenu_SetIconsTranslucent(void **sprites, int selection)
{
    int i;

    for (i = 0; i < 9; i++) {
        if (sprites[i] != NULL) {
            Sprite_SetOamMode(sprites[i], selection != i ? 1 : 0);
        }
    }
    if (sprites[CREDITS_SLOT] != NULL && sCreditsShown) {
        Sprite_SetOamMode(sprites[CREDITS_SLOT], selection != CREDITS_SLOT ? 1 : 0);
    }
}

// first shown candidate of the neighbour table, as a slot; -1 if none
static int FindNeighborIcon(TouchMenuData *data, int selection, int dir)
{
    int i;
    int logical = SlotToLogical(selection);

    for (i = 0; i < 3; i++) {
        int cand = sNeighbors[logical][dir][i];
        if (SlotShown(data, LogicalToSlot(cand))) {
            return LogicalToSlot(cand);
        }
    }
    return -1;
}

// ov27_0225B404
void TouchMenu_HandleDpadInput(TouchMenuData *data)
{
    int dir = -1;
    int selection = data->selection;

    if (gSystem.newKeys & PAD_KEY_UP) {
        dir = 0;
    } else if (gSystem.newKeys & PAD_KEY_DOWN) {
        dir = 1;
    } else if (gSystem.newKeys & PAD_KEY_LEFT) {
        dir = 2;
    } else if (gSystem.newKeys & PAD_KEY_RIGHT) {
        dir = 3;
    }
    if (dir >= 0) {
        selection = FindNeighborIcon(data, selection, dir);
    }
    if (selection != -1 && data->selection != selection) {
        data->selection = selection;
        PlaySE(SEQ_SE_DP_SELECT);
        if ((u32)dir <= 1) {
            Sprite_SetAnimCtrlSeq(data->sprites[data->selection], 3);
        } else if ((u32)(dir - 2) <= 1) {
            Sprite_SetAnimCtrlSeq(data->sprites[data->selection], 1);
        }
        TouchMenu_HighlightIcon(data, data->selection);
        FSYS_CURSOR_POS(data->fieldSystem) = TouchMenu_GetMenuIndex(data, data->selection);
    }
}

// ov27_0225B4D8: returns FALSE when a touch was handled (or hit a hidden icon), TRUE when input is still free
BOOL TouchMenu_HandleTouchInput(TouchMenuData *data)
{
    int hit;
    void *bag;

    if (sCreditsPress != 0) {
        // a quick tap (the touch is released within a frame or two) can lose a single simulated A press, so keep pressing
        // until the start menu has acted on it (TouchMenu_CreditsAction stops this)
        sCreditsPress--;
        if (sCreditsPress & 1) {
            gSystem.simulatedInputs = PAD_BUTTON_A; // every other frame, so each press is a fresh edge
        }
        return FALSE;
    }
    if (PlayerAvatar_GetPlayerMoveState(FSYS_PLAYER_AVATAR(data->fieldSystem)) != 0 || (gSystem.newKeys & PAD_PLUS_KEY_MASK) != 0) {
        return TRUE;
    }
    if (DATA_LAYOUT(data) == LAYOUT_5) {
        u32 netId = Comm_GetLocalNetId();
        if (!CommClubLink_IsWalkingInRoom() || !CommClubLink_CardExchangeFinished() || !CommPlayerManager_IsInitialized() || !CommPlayerManager_IsLocalPlayerConnected() || CommPlayerManager_GetMoveTimer(netId) || Comm_IsSendingMoveKeys()) {
            return TRUE;
        }
    }
    if (!IsPaletteFadeFinished()) {
        return TRUE;
    }
    if (DATA_SELECTED_ICON_ANIM(data) == TRUE) {
        return TRUE;
    }
    hit = TouchscreenHitbox_FindRectAtTouchNew(sHitboxes);
    if (hit > 0 && hit < 8) {
        if (data->icons[hit - 1].shown == FALSE) {
            return FALSE;
        }
    }
    if (hit == HIT_CREDITS && !sCreditsShown) {
        return TRUE;
    }
    bag = Save_Bag_Get(FSYS_SAVEDATA(data->fieldSystem));
    if ((u32)(hit - HIT_ITEM_1) <= 1) {
        if (!DATA_BUTTONS_ACTIVE(data)) {
            return TRUE;
        }
        if (!TouchscreenMenu_LayoutHasRegisteredItems(data)) {
            return TRUE;
        }
    }
    if (hit == HIT_ITEM_1) {
        if (Bag_GetRegisteredItem1(bag) == 0) {
            return TRUE;
        }
    } else if (hit == HIT_ITEM_2 && Bag_GetRegisteredItem2(bag) == 0) {
        return TRUE;
    }
    if (hit == -1) {
        return TRUE;
    }
    if (hit == HIT_MENU) {
        *data->lastTouchMenuInput = 1;
    } else if (hit == HIT_CREDITS) {
        // the start menu's own key handler runs the action for the selected menu index (see Docs&Changelog/Credits Icon.md),
        // so a touch is turned into an A press on the credits icon
        data->selection = CREDITS_SLOT;
        FSYS_CURSOR_POS(data->fieldSystem) = CREDITS_MENU_INDEX;
        TouchMenu_HighlightIcon(data, CREDITS_SLOT);
        if (FSYS_START_STATE(data->fieldSystem) == 0) {
            // touched while the X menu is closed: the start menu task does not exist yet, so open it first, exactly as a
            // touch on the MENU button does, then keep pressing A until it has run the credits action
            *data->lastTouchMenuInput = 1;
        }
        gSystem.simulatedInputs = PAD_BUTTON_A;
        sCreditsPress = 120;
    } else if (data->sprites[hit - 1] != NULL) {
        if (hit < 8) {
            data->selection = hit - 1;
            FSYS_CURSOR_POS(data->fieldSystem) = TouchMenu_GetMenuIndex(data, data->selection);
            TouchMenu_HighlightIcon(data, data->selection);
        }
        *data->lastTouchMenuInput = TouchMenu_GetMenuIndex(data, hit - 1) + 2;
    }
    return FALSE;
}

// ov27_0225AA7C
void TouchMenu_ShowIcons(TouchMenuData *data)
{
    int i;

    for (i = 0; i < NUM_ICONS; i++) {
        Sprite_SetDrawFlag(data->sprites[i], data->iconShown[i]);
    }
    if (data->sprites[CREDITS_SLOT] != NULL && sCreditsShown) {
        Sprite_SetDrawFlag(data->sprites[CREDITS_SLOT], TRUE);
    }
    data->runningShoesShown = TRUE;
    if (!TouchscreenMenu_HasRunningShoes(data)) {
        Sprite_SetDrawFlag(data->sprites[11], FALSE);
        Sprite_SetDrawFlag(data->sprites[13], FALSE);
        data->runningShoesShown = FALSE;
    }
}

static u8 SumBytes(const u8 *values, int count)
{
    int i;
    int sum = 0;
    for (i = 0; i < count; i++) {
        sum += values[i];
    }
    return sum;
}

// ov27_0225AAD4: icons unlocked while the menu is shown appear with an animation (credits included, see CreditsUnlocked)
void TouchMenu_ShowNewIcons(TouchMenuData *data)
{
    int i;
    int count;
    int oldCount;
    const TouchIconAnim *iconAnim;

    oldCount = SumBytes(data->iconShown, NUM_ICONS);
    count = oldCount;
    iconAnim = sIconAnims;
    i = 0;
    while (i < NUM_ICONS) {
        if (FieldSystem_ShouldDrawStartMenuIcon(data->fieldSystem, i) == TRUE && data->iconShown[i] == FALSE) {
            Sprite_SetDrawFlag(data->sprites[iconAnim->sprite], TRUE);
            Sprite_SetAnimCtrlSeq(data->sprites[iconAnim->sprite], iconAnim->anim);
            CopyWindowToVram(&data->iconWindows[iconAnim->window]);
            data->iconShown[i] = TRUE;
            data->icons[i].shown = TRUE;
            FSYS_SUPPRESS_DIM_SET(data->fieldSystem);
            count++;
        }
        iconAnim++;
        i++;
    }
    if (sCreditsExists && !sCreditsShown && CreditsUnlocked()) {
        // unlocked while the menu is on screen (Mom's script): appears like the vanilla icons, with the same animation (4)
        sCreditsShown = TRUE;
        data->iconShown[7] = TRUE;
        Sprite_SetDrawFlag(data->sprites[CREDITS_SLOT], TRUE);
        Sprite_SetAnimCtrlSeq(data->sprites[CREDITS_SLOT], 4);
        CopyWindowToVram(&data->iconWindows[7]);
        FSYS_SUPPRESS_DIM_SET(data->fieldSystem);
    }
    if (count != 0 && oldCount == 0) {
        Sprite_SetDrawFlag(data->sprites[SPRITE_MENU], TRUE);
        CopyWindowToVram(&data->menuWindow);
    }
    if (oldCount != count) {
        FSYS_CURSOR_POS(data->fieldSystem) = 0;
        data->selection = TouchMenu_GetSlotFromMenuIndex(data, FSYS_CURSOR_POS(data->fieldSystem));
        TouchMenu_ValidateSelection(data);
    }
    if (TouchscreenMenu_HasRunningShoes(data) == TRUE && data->runningShoesShown == FALSE) {
        Sprite_SetDrawFlag(data->sprites[11], TRUE);
        Sprite_SetDrawFlag(data->sprites[13], TRUE);
        Sprite_SetAnimCtrlSeq(data->sprites[11], 10);
        data->runningShoesShown = TRUE;
    }
}

// ov27_0225AEA8: char/palette resources of one sprite slot (resource index 10 is the credits button in the NORMAL layout)
void TouchMenu_LoadIconResources(void *fieldSystem, void **resMans, void **resObjs, int index, int resId, int gender, void *bag, int layout)
{
    u8 icon = sLayouts[layout][index];
    u32 narcId = 14; // NARC_a_0_1_4
    u32 charFileId = 18;
    u32 plttFileId = 14;
    BOOL compressed = TRUE;
    u32 plttNum = 1;

    if (icon != ICON_NONE) {
        if (icon == 2 && gender == 1) {
            charFileId = 27;
        } else {
            charFileId = sIconInfo[icon].charFileId;
            if (charFileId == 0xFFFF) {
                u8 *contest = FieldSystem_BugContest_Get(fieldSystem);
                if (contest != NULL && (contest[0x17] & 1)) {
                    compressed = FALSE;
                    narcId = 20; // NARC_poketool_icongra_poke_icon
                    plttNum = 3;
                    plttFileId = GetMonIconPlttNaix();
                    charFileId = Pokemon_GetIconNaix(*(void **)(contest + 0x10));
                } else {
                    charFileId = 18;
                }
            }
        }
    }
    if (index == 7) {
        compressed = FALSE;
        narcId = 18; // NARC_itemtool_itemdata_item_icon
        plttFileId = GetItemIndexMapping(Bag_GetRegisteredItem1(bag), 2);
        charFileId = GetItemIndexMapping(Bag_GetRegisteredItem1(bag), 1);
    } else if (index == 8) {
        compressed = FALSE;
        narcId = 18;
        plttFileId = GetItemIndexMapping(Bag_GetRegisteredItem2(bag), 2);
        charFileId = GetItemIndexMapping(Bag_GetRegisteredItem2(bag), 1);
    } else if (index == 9) {
        plttFileId = 7;
        charFileId = 70;
        plttNum = 4;
    } else if (index == 10) {
        if (layout == LAYOUT_NORMAL) {
            // the credits button: same art format and palette as the other icons
            charFileId = CREDITS_CHAR_FILE;
        } else {
            u32 item = TouchscreenMenu_GetBallItem(layout);
            compressed = FALSE;
            narcId = 18;
            plttFileId = GetItemIndexMapping(item, 2);
            charFileId = GetItemIndexMapping(item, 1);
        }
    }
    resObjs[0] = AddCharResObjFromNarc(resMans[0], narcId, charFileId, compressed, resId, 2, HEAP_ID_8);
    resObjs[1] = AddPlttResObjFromNarc(resMans[1], narcId, plttFileId, FALSE, resId, 2, plttNum, HEAP_ID_8);
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(resObjs[0]);
    GF2DGfxResObj_FreeData(resObjs[0]);
    SpriteTransfer_CreatePlttTransferTask(resObjs[1]);
    GF2DGfxResObj_FreeData(resObjs[1]);
}

// creates the credits sprite (called right after the original CreateSprites, from LoadStrings)
static void CreateCreditsSprite(TouchMenuData *data)
{
    TouchSpriteTemplate template;
    void *sprite;

    template.spriteList = data->spriteList;
    template.header = data->headers[10];
    template.posX = CREDITS_POS_X << 12;
    template.posY = (CREDITS_POS_Y << 12) + (256 << 12); // sub-screen offset, as for the other sprites
    template.posZ = 0;
    template.scaleX = 0x1000;
    template.scaleY = 0x1000;
    template.scaleZ = 0x1000;
    template.rotation = 0;
    template.drawPriority = 1;
    template.whichScreen = 2; // NNS_G2D_VRAM_TYPE_2DSUB
    template.heapId = HEAP_ID_8;
    sprite = Sprite_CreateAffine(&template);
    Sprite_SetAnimActiveFlag(sprite, TRUE);
    Sprite_SetPriority(sprite, 0);
    Sprite_SetAffineOverwriteMode(sprite, 0); // NNS_G2D_RND_AFFINE_OVERWRITE_NORMAL
    data->sprites[CREDITS_SLOT] = sprite;
    Sprite_SetDrawFlag(sprite, sCreditsShown);
}

// ov27_0225BB6C
void TouchMenu_LoadStrings(TouchMenuData *data, u32 unused UNUSED)
{
    int i;
    int j;
    const u32 *actionMsgIds = (const u32 *)0x0225CED8; // ov27 rodata sTouchscreenMenuActionMsgIds

    BufferPlayersName(data->msgFormat, 0, Save_PlayerData_GetProfile(FSYS_SAVEDATA(data->fieldSystem)));
    for (i = 0; i < NUM_ICONS; i++) {
        u8 icon = sLayouts[DATA_LAYOUT(data)][i];
        if (icon != ICON_NONE) {
            data->icons[i].label = ReadMsgData_ExpandPlaceholders(data->msgFormat, data->msgData, sIconInfo[icon].msgIdAndEnabled & 0x7FFF, HEAP_ID_8);
        }
    }
    for (j = 0; j < 5; j++) {
        data->actionStrings[j] = NewString_ReadMsgData(data->msgData, actionMsgIds[j]);
    }
    data->menuString = ReadMsgData_ExpandPlaceholders(data->msgFormat, data->msgData, 12, HEAP_ID_8);
    data->unk_4C8 = ReadMsgData_ExpandPlaceholders(data->msgFormat, data->msgData, 13, HEAP_ID_8);
    if (sCreditsExists) {
        sCreditsLabel = ReadMsgData_ExpandPlaceholders(data->msgFormat, data->msgData, CREDITS_MSG_ID, HEAP_ID_8);
        CreateCreditsSprite(data);
    }
}

// ov27_0225BC34
void TouchMenu_FreeStrings(TouchMenuData *data)
{
    int i;

    String_Delete(data->unk_4C8);
    String_Delete(data->menuString);
    for (i = 0; i < 5; i++) {
        String_Delete(data->actionStrings[i]);
    }
    for (i = 0; i < NUM_ICONS; i++) {
        if (data->icons[i].label != NULL) {
            String_Delete(data->icons[i].label);
        }
    }
    if (sCreditsLabel != NULL) {
        String_Delete(sCreditsLabel);
        sCreditsLabel = NULL;
    }
    sCreditsShown = FALSE;
    sCreditsExists = FALSE;
}

// ov27_0225BCE8
void TouchMenu_PrintIconLabels(TouchMenuData *data)
{
    int i = 0;
    struct Window *window = data->iconWindows;

    while (i < NUM_ICONS) {
        if (data->icons[i].label != NULL) {
            int margin = 0x48 - (int)FontID_String_GetWidth(0, data->icons[i].label, 0);
            AddTextPrinterParameterizedWithColor(window, 0, data->icons[i].label, margin / 2, 0, 0xFF /* TEXT_SPEED_NOTRANSFER */, (14 << 16) | (2 << 8) | 0 /* MAKE_TEXT_COLOR(14, 2, 0) */, NULL);
        }
        i++;
        window++;
    }
    if (sCreditsLabel != NULL) {
        int margin = 0x48 - (int)FontID_String_GetWidth(0, sCreditsLabel, 0);
        AddTextPrinterParameterizedWithColor(&data->iconWindows[7], 0, sCreditsLabel, margin / 2, 0, 0xFF, (14 << 16) | (2 << 8) | 0, NULL);
    }
}

// ov27_0225BC84
void TouchMenu_CopyIconLabelsToVram(TouchMenuData *data)
{
    BOOL draw[8];
    int i;
    int count = 0;

    for (i = 0; i < 8; i++) {
        draw[i] = FieldSystem_ShouldDrawStartMenuIcon(data->fieldSystem, i);
    }
    if (sCreditsExists) {
        draw[7] = sCreditsShown; // window 7 is only the credits label in the NORMAL layout, so it follows the unlock
    }
    for (i = 0; i < 8; i++) {
        if (draw[i]) {
            CopyWindowToVram(&data->iconWindows[i]);
            count++;
        }
    }
    if (count) {
        Sprite_SetDrawFlag(data->sprites[SPRITE_MENU], TRUE);
        CopyWindowToVram(&data->menuWindow);
    }
}

// --------------------------------------------------------------------------------------------------------------
// start menu action: the (repurposed) running-shoes action, now at menu index 9. Mirrors
// Task_StartMenu_HandleSelection_Retire: remove the menu, run a script, free the start menu task data.
BOOL TouchMenu_CreditsAction(void *taskManager)
{
    void *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    void *startMenu = TaskManager_GetEnvironment(taskManager);

    sCreditsPress = 0;
    StartMenu_RemoveCursorAndIcons(startMenu, fieldSystem);
    FSYS_BYTE(fieldSystem, 0xD2) &= ~0x3F; // startMenuState = 0
    StartScriptFromMenu(taskManager, CREDITS_SCRIPT_ID, NULL);
    sys_FreeMemoryEz(startMenu);
    return FALSE;
}

#endif // CREDITS_ICON
