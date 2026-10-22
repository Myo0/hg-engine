#include "../../include/config.h"
#include "../../include/types.h"
#include "../../include/script.h"
#include "../../include/message.h"
#include "../../include/window.h"
#include "../../include/system.h"
#include "../../include/sound.h"
#include "../../include/sprite.h"
#include "../../include/constants/file.h"
#include "../../include/constants/sndseq.h"
#include "../../include/constants/buttons.h"

#ifdef CREDITS_READER

/*
 * Credits reader: a full-top-screen text panel drawn on the overworld's own BG3 (main screen, priority 0).
 * Driven from a script through two 0xD0 sub-commands (see src/script_new_cmds.c and Docs&Changelog/Credits.md):
 *     CREDITS_OPEN : build the panel and show the list
 *     CREDITS_TICK : handle one frame of input; result 1 when the player has closed the reader
 *
 * All content lives in one text bank, data/text/854.txt (CREDITS_BANK):
 *     message 0   title shown at the top of every screen
 *     message 1   footer hint on the list screen
 *     message 2   footer hint on the reading screen
 *     message 3+  one entry each, in display order
 * An entry whose text starts with the diamond character is a SECTION HEADER (shown in the list, not selectable).
 * Any other entry is a PERSON/PROJECT: its first line is the list label and reading title, the rest is the body.
 * The body is split into pages wherever the text contains the page marker \r.
 *
 * Fit: the body area is 9 lines of about 45 characters. A message must stay under CREDITS_BUF_CHARS characters.
 *
 * BG3 tiles 1..768 are used for the window. They are free while no dialog box or map-name popup is open (those
 * load their graphics at 0x197+/0x237+/0x2A3+/0x3E2+ every time they open), and the script runs with the player locked.
 */

#define CREDITS_BANK    854
#define MSG_TITLE       0
#define MSG_FOOTER_LIST 1
#define MSG_FOOTER_READ 2
#define MSG_FIRST_ENTRY 3

#define MAX_ENTRIES      128
#define MAX_PAGES        16
#define CREDITS_BUF_CHARS 1024

#define PANEL_BG   3
#define PANEL_W    32
#define PANEL_H    24
#define PANEL_PAL  12
#define PANEL_TILE 1

#define TEXT_X     8
#define TITLE_Y    4
#define RULE_Y     22
#define BODY_Y     28
#define ROW_H      16
#define LIST_ROWS  9
#define FOOTER_Y   174
#define COUNTER_X  214

#define CH_NEWLINE 0xE000
#define CH_PAGE    0x25BC
#define CH_EOS     0xFFFF
#define CH_HEADER  0x01CF // the diamond
#define CH_CURSOR  0x011E // the right arrow
#define CH_SPACE   0x01E2
#define CH_DIGIT0  0x0121
#define CH_SLASH   0x01B1

#define MODE_LIST 0
#define MODE_READ 1

#define KEY_REPEAT_DELAY 18
#define KEY_REPEAT_RATE  4

extern void LONG_CALL PutWindowTilemap(void *window);

static struct Window sWin;
static MsgData *sMsg;
static String *sStr;
static u16 sBuf[CREDITS_BUF_CHARS];  // the entry being shown
static u16 sTmp[CREDITS_BUF_CHARS];  // scratch line/page being printed
static u16 sFoot[160];               // footer / title scratch
static u8 sIsHeader[MAX_ENTRIES];
static u16 sPageStart[MAX_PAGES];
static u16 sPageEnd[MAX_PAGES];
static u16 sCount;
static s16 sCursor;
static s16 sTop;
static u8 sMode;
static u8 sPage;
static u8 sPageCount;
static u8 sOpen;
static u16 sPrevKeys;
static u8 sHoldFrames;

static void PrintChars(const u16 *chars, u32 n, u32 x, u32 y)
{
    u32 i;

    if (n > CREDITS_BUF_CHARS - 1) {
        n = CREDITS_BUF_CHARS - 1;
    }
    for (i = 0; i < n; i++) {
        sTmp[i] = chars[i];
    }
    sTmp[n] = CH_EOS;
    CopyU16ArrayToString(sStr, sTmp);
    AddTextPrinterParameterized(&sWin, 1, sStr, x, y, 0, NULL);
}

static u32 CharsUntil(const u16 *chars, u16 stop)
{
    u32 n = 0;

    while (chars[n] != CH_EOS && chars[n] != stop) {
        n++;
    }
    return n;
}

// prints a whole short message from the bank (title and footers)
static void PrintBankMessage(u32 id, u32 x, u32 y)
{
    ReadMsgDataIntoU16Array(sMsg, id, sFoot);
    PrintChars(sFoot, CharsUntil(sFoot, CH_EOS), x, y);
}

// prints "a/b" with plain digits; a and b are expected to be below 100
static void PrintFraction(u32 a, u32 b, u32 x, u32 y)
{
    u16 s[8];
    u32 n = 0;

    if (a >= 10) {
        s[n++] = CH_DIGIT0 + (a / 10) % 10;
    }
    s[n++] = CH_DIGIT0 + a % 10;
    s[n++] = CH_SLASH;
    if (b >= 10) {
        s[n++] = CH_DIGIT0 + (b / 10) % 10;
    }
    s[n++] = CH_DIGIT0 + b % 10;
    PrintChars(s, n, x, y);
}

static void ReadEntry(u32 index)
{
    ReadMsgDataIntoU16Array(sMsg, MSG_FIRST_ENTRY + index, sBuf);
}

static void FlushPanel(void)
{
    ScheduleWindowCopyToVram(&sWin);
}

static void DrawFrameParts(void)
{
    FillWindowPixelBuffer(&sWin, 15);
    FillWindowPixelRect(&sWin, 1, TEXT_X, RULE_Y, 240, 1);
}

static void DrawList(void)
{
    u32 r;
    u32 selectable = 0;
    u32 rank = 0;
    s32 i;

    DrawFrameParts();
    PrintBankMessage(MSG_TITLE, TEXT_X, TITLE_Y);

    for (r = 0; r < LIST_ROWS; r++) {
        u32 idx = sTop + r;
        u32 n = 0;
        u32 k;
        u32 labelLen;

        if (idx >= sCount) {
            break;
        }
        ReadEntry(idx);
        labelLen = CharsUntil(sBuf, CH_NEWLINE);
        if (sIsHeader[idx]) {
            // headers print as written (they start with the diamond)
        } else {
            sFoot[n++] = (idx == (u32)sCursor) ? CH_CURSOR : CH_SPACE;
            sFoot[n++] = CH_SPACE;
        }
        for (k = 0; k < labelLen && n < 100; k++) {
            sFoot[n++] = sBuf[k];
        }
        PrintChars(sFoot, n, TEXT_X, BODY_Y + r * ROW_H);
    }

    for (i = 0; i < sCount; i++) {
        if (!sIsHeader[i]) {
            selectable++;
            if (i == sCursor) {
                rank = selectable;
            }
        }
    }
    PrintBankMessage(MSG_FOOTER_LIST, TEXT_X, FOOTER_Y);
    PrintFraction(rank, selectable, COUNTER_X, FOOTER_Y);
    FlushPanel();
}

static void DrawRead(void)
{
    u32 labelLen;

    DrawFrameParts();
    ReadEntry(sCursor);
    labelLen = CharsUntil(sBuf, CH_NEWLINE);
    PrintChars(sBuf, labelLen, TEXT_X, TITLE_Y);
    if (sPageCount != 0) {
        PrintChars(sBuf + sPageStart[sPage], sPageEnd[sPage] - sPageStart[sPage], TEXT_X, BODY_Y);
    }
    PrintBankMessage(MSG_FOOTER_READ, TEXT_X, FOOTER_Y);
    PrintFraction(sPage + 1, sPageCount == 0 ? 1 : sPageCount, COUNTER_X, FOOTER_Y);
    FlushPanel();
}

// splits the body of entry sCursor (already in sBuf) into pages at the page marker
static void SplitPages(void)
{
    u32 pos = CharsUntil(sBuf, CH_NEWLINE);

    sPageCount = 0;
    if (sBuf[pos] == CH_EOS) {
        return;
    }
    pos++; // first character after the title line
    while (sBuf[pos] != CH_EOS && sPageCount < MAX_PAGES) {
        u32 start = pos;
        u32 end = start;

        while (sBuf[end] != CH_EOS && sBuf[end] != CH_PAGE) {
            end++;
        }
        if (end > start) {
            sPageStart[sPageCount] = start;
            sPageEnd[sPageCount] = end;
            sPageCount++;
        }
        pos = (sBuf[end] == CH_PAGE) ? end + 1 : end;
    }
}

static void OpenEntry(void)
{
    ReadEntry(sCursor);
    SplitPages();
    sPage = 0;
    sMode = MODE_READ;
    DrawRead();
}

static void FixScroll(void)
{
    if (sCursor < sTop) {
        sTop = sCursor;
    }
    if (sCursor > 0 && sIsHeader[sCursor - 1] && sTop == sCursor) {
        sTop = sCursor - 1; // keep the section header above the first row of its section visible
    }
    if (sCursor >= sTop + LIST_ROWS) {
        sTop = sCursor - LIST_ROWS + 1;
    }
    if (sTop < 0) {
        sTop = 0;
    }
}

static void MoveCursor(s32 dir, s32 steps)
{
    s32 pos = sCursor;
    s32 moved = 0;

    while (moved < steps) {
        s32 j = pos + dir;

        while (j >= 0 && j < (s32)sCount && sIsHeader[j]) {
            j += dir;
        }
        if (j < 0 || j >= (s32)sCount) {
            break;
        }
        pos = j;
        moved++;
    }
    if (moved != 0) {
        sCursor = pos;
        FixScroll();
        PlaySE(SEQ_SE_DP_SELECT);
        DrawList();
    }
}

// raw held keys, edge detected here because gSystem.newKeys is masked while a script is running
static u16 PollKeys(void)
{
    u16 cur = gSystem.heldKeysRaw;
    u16 pressed = cur & ~sPrevKeys;

    if (cur & (PAD_KEY_UP | PAD_KEY_DOWN)) {
        sHoldFrames++;
        if (sHoldFrames >= KEY_REPEAT_DELAY && (sHoldFrames - KEY_REPEAT_DELAY) % KEY_REPEAT_RATE == 0) {
            pressed |= cur & (PAD_KEY_UP | PAD_KEY_DOWN);
        }
    } else {
        sHoldFrames = 0;
    }
    sPrevKeys = cur;
    return pressed;
}

void CreditsPanel_Open(SCRIPTCONTEXT *ctx)
{
    FieldSystem *fsys = ctx->fsys;
    u32 i;

    sMsg = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, 27, CREDITS_BANK, HEAPID_WORLD);
    sStr = String_New(CREDITS_BUF_CHARS, HEAPID_WORLD);
    sCount = 0;
    if (sMsg->direct->count > MSG_FIRST_ENTRY) {
        sCount = sMsg->direct->count - MSG_FIRST_ENTRY;
        if (sCount > MAX_ENTRIES) {
            sCount = MAX_ENTRIES;
        }
    }
    sCursor = -1;
    for (i = 0; i < sCount; i++) {
        ReadEntry(i);
        sIsHeader[i] = (sBuf[0] == CH_HEADER);
        if (!sIsHeader[i] && sCursor < 0) {
            sCursor = i;
        }
    }
    if (sCursor < 0) {
        sCursor = 0;
    }
    sTop = 0;
    sMode = MODE_LIST;
    sPage = 0;
    sPageCount = 0;
    sPrevKeys = gSystem.heldKeysRaw; // the key that opened the reader must not count as a press
    sHoldFrames = 0;

    AddWindowParameterized(fsys->bg_config, &sWin, PANEL_BG, 0, 0, PANEL_W, PANEL_H, PANEL_PAL, PANEL_TILE);
    sOpen = TRUE;
    DrawList();
    PutWindowTilemap(&sWin);
}

static void ClosePanel(SCRIPTCONTEXT *ctx)
{
    if (!sOpen) {
        return;
    }
    BgClearTilemapBufferAndCommit(ctx->fsys->bg_config, PANEL_BG);
    RemoveWindow(&sWin);
    String_Delete(sStr);
    DestroyMsgData(sMsg);
    sOpen = FALSE;
}

// one frame of input; returns TRUE once the reader has been closed
BOOL CreditsPanel_Tick(SCRIPTCONTEXT *ctx)
{
    u16 keys;

    if (!sOpen) {
        return TRUE;
    }
    keys = PollKeys();

    if (sMode == MODE_LIST) {
        if (keys & PAD_KEY_UP) {
            MoveCursor(-1, 1);
        } else if (keys & PAD_KEY_DOWN) {
            MoveCursor(1, 1);
        } else if (keys & PAD_BUTTON_L) {
            MoveCursor(-1, LIST_ROWS - 1);
        } else if (keys & PAD_BUTTON_R) {
            MoveCursor(1, LIST_ROWS - 1);
        } else if ((keys & PAD_BUTTON_A) && sCount != 0) {
            PlaySE(SEQ_SE_DP_SELECT);
            OpenEntry();
        } else if (keys & PAD_BUTTON_B) {
            ClosePanel(ctx);
            return TRUE;
        }
    } else {
        if ((keys & (PAD_KEY_UP | PAD_KEY_LEFT)) && sPage > 0) {
            sPage--;
            PlaySE(SEQ_SE_DP_SELECT);
            DrawRead();
        } else if ((keys & (PAD_KEY_DOWN | PAD_KEY_RIGHT)) && sPage + 1 < sPageCount) {
            sPage++;
            PlaySE(SEQ_SE_DP_SELECT);
            DrawRead();
        } else if ((keys & PAD_BUTTON_A) && sPage + 1 < sPageCount) {
            sPage++;
            PlaySE(SEQ_SE_DP_SELECT);
            DrawRead();
        } else if (keys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sMode = MODE_LIST;
            DrawList();
        }
    }
    return FALSE;
}

#endif // CREDITS_READER
