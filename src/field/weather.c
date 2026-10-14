#include "types.h"

#include "constants/sndseq.h"

#include "pokemon.h"
#include "sound.h"
#include "weather.h"

#define PLANEMASK_BG2 4

#define REG_BG2HOFS (*(volatile u16 *)0x04000018)
#define REG_BG2VOFS (*(volatile u16 *)0x0400001A)

#define SANDSTORM_FOG_SLOPE 3
#define SANDSTORM_FOG_OFFSET 28399
#define SANDSTORM_FOG_COLOR GX_RGB(26, 20, 5)

typedef char WeatherAssert_Sequence[(__builtin_offsetof(WEATHER_SYS_WORK, Sequence) == 0xF62) ? 1 : -1];
typedef char WeatherAssert_ContFlag[(__builtin_offsetof(WEATHER_SYS_WORK, ContFlag) == 0xF66) ? 1 : -1];
typedef char WeatherAssert_FogUse[(__builtin_offsetof(WEATHER_SYS_WORK, fog_use) == 0xF64) ? 1 : -1];
typedef char WeatherAssert_Work[(__builtin_offsetof(WEATHER_SYS_WORK, work) == 0xF58) ? 1 : -1];
typedef char WeatherAssert_Normal[(sizeof(WEATHER_SYSW_NORMAL) == 0xDC) ? 1 : -1];

static void WeatherSandstorm_AddParticles(WEATHER_SYS_WORK *pWork, int num)
{
    static const int sSpeedX[8] = { -3, -5, -5, -4, -5, -6, -10, -6 };
    static const int sSpeedY[8] = { 2, 2, 2, 4, 4, 2, 2, 2 };
    WEATHER_SYSW_NORMAL *state = pWork->work;
    int phase;
    int i;

    state->work[1] = (state->work[1] + 1) % (40 * 8);
    phase = state->work[1] / 40;

    for (i = 0; i < num; i++) {
        WAETHER_OBJ_DATA *obj = addObj(pWork, sizeof(s32) * 8);
        s32 *w;
        int size;
        VecFx32 pos;

        if (obj == NULL) {
            break;
        }

        w = obj->work;
        w[0] = 0;
        w[1] = 15 + (gf_rand() % (35 - 15));

        size = 3 - ((w[1] - 15) / (((35 - 15) / 4) + 1));

        w[2] = sSpeedY[phase] * (size + 1);
        w[4] = sSpeedX[phase] * (size + 1);
        w[3] = 0;
        w[5] = sSpeedX[phase];

        if (gf_rand() % 1000 == 777) {
            size = 4;
            w[2] += w[2] / 2;
        }

        CLACT_AnmFrameSet(obj->clact_w, size);

        pos = getObjMat(obj);
        pos.x = (262 + (gf_rand() % 24)) * 0x1000;
        pos.y = (-64 + (gf_rand() % 192)) * 0x1000;
        setClactMatrix(obj->clact_w, &pos);
    }
}

static void WeatherSandstorm_MoveParticle(WAETHER_OBJ_DATA *obj)
{
    s32 *w = obj->work;
    VecFx32 pos = getObjMat(obj);

    switch (w[3]) {
    case 0:
        pos.x += w[4] * 0x1000;
        pos.y += w[2] * 0x1000;

        if ((w[0] % 5) == 0) {
            w[4] += w[5];
        }

        if (w[0]++ > w[1]) {
            w[3] = 1;
        }

        setClactMatrix(obj->clact_w, &pos);
        break;
    case 1:
        destObj(obj);
        break;
    }
}

void LONG_CALL WeatherSandstorm_Task(void *task, WEATHER_SYS_WORK *pWork)
{
    static const int sRampX[8] = { -3, -5, -5, -3, -5, -6, -10, -6 };
    WEATHER_SYSW_NORMAL *state = pWork->work;
    int objState;
    int fogState;
    int scrollX;
    int scrollY;

    (void)task;

    switch (pWork->Sequence) {
    case 0:
        weatherSysObjFadeInit(&state->objFade, pWork, 1, 15, 8, 1, -2, 4, 2, WeatherSandstorm_AddParticles);
        weatherSysFogFadeInInitPack(&state->fogWithFade, &state->fogFade, pWork->pWSysCont->fsys->fog_data,
                                    SANDSTORM_FOG_SLOPE, SANDSTORM_FOG_OFFSET, SANDSTORM_FOG_COLOR, 1, pWork->fog_use);
        state->work[0] = 0;
        state->work[1] = 0;
        state->work[2] = 0;
        state->work[3] = 0;
        pWork->Sequence = 1;
        break;
    case 1:
        objState = weatherSysObjFade(&state->objFade);

        if (state->work[0] > 0) {
            state->work[0]--;
        } else {
            fogState = weatherSysFogFadeInMainPack(&state->fogWithFade, (WEATHER_SYS_OBJ_FADE *)&state->fogFade, pWork->fog_use);

            if (fogState == 1 && objState == 3) {
                pWork->Sequence = 3;
                GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
            }
        }
        break;
    case 2:
        weatherSysObjFadeInit(&state->objFade, pWork, 8, 1, 8, 1, -2, 4, 2, WeatherSandstorm_AddParticles);

        if (pWork->fog_use != 0) {
            state->fogFade.Fog = pWork->pWSysCont->fsys->fog_data;
            weatherSysFogParamSet(state->fogFade.Fog, SANDSTORM_FOG_SLOPE, SANDSTORM_FOG_OFFSET, SANDSTORM_FOG_COLOR);
            weatherSysFogSet(&state->fogFade);
        }

        state->work[1] = 0;
        state->work[2] = 0;
        state->work[3] = 0;

        weatherDustObj(pWork, WeatherSandstorm_AddParticles, 24, 2, 2, WeatherSandstorm_MoveParticle);
        pWork->Sequence = 3;
        GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
        break;
    case 3:
        if (state->objFade.objAddTmg-- <= 0) {
            state->work[3] = sRampX[state->work[1] / 40];

            if (state->work[3] <= -6) {
                WeatherSandstorm_AddParticles(pWork, state->objFade.objAddNum * 2);
            } else {
                WeatherSandstorm_AddParticles(pWork, state->objFade.objAddNum);
            }

            state->objFade.objAddTmg = state->objFade.objAddTmgMax;
        }

        if (pWork->ContFlag == 5) {
            weatherSysObjFadeOutSet(&state->objFade, 0, 15, 2, -3);

            if (pWork->fog_use != 0) {
                weatherSysFogFadeInit(&state->fogFade, 1, FALSE);
            }

            state->work[0] = 31;
            pWork->Sequence = 4;
            GX_EngineAToggleLayers(PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        objState = weatherSysObjFade(&state->objFade);

        if (state->work[0] > 0) {
            state->work[0]--;
        } else {
            if (pWork->fog_use != 0) {
                fogState = weatherSysFogFade(&state->fogFade);
            } else {
                fogState = 1;
            }

            if (fogState == 1 && objState == 3) {
                if (pWork->Dummy.pNext == &pWork->Dummy) {
                    pWork->Sequence = 5;
                }
            }
        }
        break;
    case 5:
        if (pWork->fog_use != 0) {
            SetFogData(state->fogFade.Fog, 1, FALSE, 0, 0, 0);
        }

        stopWeatherWork_local(pWork->pWSD);
        break;
    }

    if (pWork->Sequence != 5 && pWork->Sequence != 0) {
        moveFuncObj(&pWork->Dummy, WeatherSandstorm_MoveParticle);
        scrollObj(pWork, &scrollX, &scrollY);

        state->work[2] = (state->work[2] + 6) % 256;
        REG_BG2HOFS = state->work[2] * 2 - scrollX;
        REG_BG2VOFS = -state->work[2] + scrollY;
    }
}

#define STRONG_RAIN_FOG_SLOPE 3
#define STRONG_RAIN_FOG_OFFSET 0x6F6F
#define STRONG_RAIN_FOG_COLOR GX_RGB(26, 26, 26)

static void WeatherStrongRain_AddDrops(WEATHER_SYS_WORK *pWork, int num)
{
    static const int sIntensity[5] = { 1, 1, 2, 1, 3 };
    WEATHER_SYSW_NORMAL *state = pWork->work;
    int i;

    for (i = 0; i < num; i++) {
        WAETHER_OBJ_DATA *obj = addObj(pWork, sizeof(s32) * 8);
        s32 *w;
        u32 r;
        int frame;
        int mult;
        VecFx32 pos;

        if (obj == NULL) {
            break;
        }

        w = obj->work;
        r = gf_rand();
        mult = sIntensity[state->work[2] / 60];
        frame = r % 3;

        w[0] = 0;
        CLACT_AnmFrameSet(obj->clact_w, frame);

        w[4] = -24 * (frame + 1) * mult;
        w[2] = 24 * (frame + 1) * mult;
        w[3] = 0;
        w[1] = (r % 4) / mult;

        pos = getObjMat(obj);
        pos.x = (r % 512) * 0x1000;
        pos.y = (-80 + (r % 48)) * 0x1000;
        pos.z = 0;
        setClactMatrix(obj->clact_w, &pos);
    }
}

static void WeatherStrongRain_MoveDrop(WAETHER_OBJ_DATA *obj)
{
    s32 *w = obj->work;
    VecFx32 pos = getObjMat(obj);

    switch (w[3]) {
    case 0:
        pos.x += (w[4] * 2) * 0x1000;
        pos.y += (w[2] * 2) * 0x1000;
        w[0] += 2;

        if (w[0] > w[1]) {
            if ((gf_rand() % 10) < 5) {
                w[3] = 2;
            } else {
                w[3] = 1;
                w[0] = 4;
                CLACT_AnmFrameSet(obj->clact_w, 3);
            }
        }

        setClactMatrix(obj->clact_w, &pos);
        break;
    case 1:
        if (w[0]-- <= 0) {
            w[3] = 2;
        }
        break;
    case 2:
        destObj(obj);
        break;
    }
}

typedef struct {
    WEATHER_SYSW_NORMAL base;
    s32 flash[8];
} WEATHER_SYSW_THUNDER;

typedef char WeatherAssert_Thunder[(sizeof(WEATHER_SYSW_THUNDER) == 0xFC) ? 1 : -1];

static void WeatherThunder_Start(WEATHER_SYSW_THUNDER *thunder)
{
    thunder->flash[0] = 0;
    thunder->flash[1] = 0;
    thunder->flash[4] = 0;

    WeatherBGAlphaDef(0, 31);
    GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
}

static void WeatherThunder_Stop(void)
{
    WeatherBGAlphaDef(0, 31);
    GX_EngineAToggleLayers(PLANEMASK_BG2, 0);
}

static void WeatherThunder_Update(WEATHER_SYSW_THUNDER *thunder)
{
    s32 *f = thunder->flash;

    if (f[4] >= 0) {
        f[4]--;
        return;
    }

    switch (f[1]) {
    case 0:
        f[1] = 1;
        f[5] = 0;
        f[6] = 200 + (gf_rand() % 480);
        f[7] = 0;

        if ((gf_rand() % 3) != 0) {
            f[2] = 36;
            PlaySE(SEQ_SE_DP_T_KAMI2);
        } else {
            f[2] = 200;
            PlaySE(SEQ_SE_DP_T_KAMI);
        }
        break;
    case 1:
        f[5]++;
        f[7] += f[6];

        if (f[5] >= 2) {
            f[1] = 2;
        }

        WeatherBGAlphaDef(f[7] / 100, 31);
        break;
    case 2:
        f[7] -= f[2];

        if (f[7] <= 0) {
            f[1] = 0;
            f[7] = 0;

            if (f[2] == 200) {
                f[4] = gf_rand() % 15;
            } else {
                f[4] = ((f[6] * 50) / 100) + (gf_rand() % 120);
            }
        }

        WeatherBGAlphaDef(f[7] / 100, 31);
        break;
    }
}

static void WeatherRain_Run(WEATHER_SYS_WORK *pWork, BOOL thunder)
{
    WEATHER_SYSW_THUNDER *thunderState = pWork->work;
    WEATHER_SYSW_NORMAL *state = &thunderState->base;
    int objState;
    int fogState;

    switch (pWork->Sequence) {
    case 0:
        weatherSysObjFadeInit(&state->objFade, pWork, 1, 15, 10, 0, -3, 2, 1, WeatherStrongRain_AddDrops);
        weatherSysFogFadeInInitPack(&state->fogWithFade, &state->fogFade, pWork->pWSysCont->fsys->fog_data,
                                    STRONG_RAIN_FOG_SLOPE, STRONG_RAIN_FOG_OFFSET, STRONG_RAIN_FOG_COLOR, 1, pWork->fog_use);
        state->work[0] = 0;
        state->work[1] = 0;
        state->work[2] = 0;
        Weather_StartSE(pWork, SEQ_SE_DP_T_OOAME);

        if (thunder) {
            WeatherThunder_Start(thunderState);
        }

        pWork->Sequence = 1;
        break;
    case 1:
        objState = weatherSysObjFade(&state->objFade);

        if (state->work[0] > 0) {
            state->work[0]--;
        } else {
            fogState = weatherSysFogFadeInMainPack(&state->fogWithFade, (WEATHER_SYS_OBJ_FADE *)&state->fogFade, pWork->fog_use);

            if (fogState == 1 && objState == 3) {
                pWork->Sequence = 3;
            }
        }
        break;
    case 2:
        weatherSysObjFadeInit(&state->objFade, pWork, 10, 0, 10, 0, -3, 2, 1, WeatherStrongRain_AddDrops);

        if (pWork->fog_use != 0) {
            state->fogFade.Fog = pWork->pWSysCont->fsys->fog_data;
            weatherSysFogParamSet(state->fogFade.Fog, STRONG_RAIN_FOG_SLOPE, STRONG_RAIN_FOG_OFFSET, STRONG_RAIN_FOG_COLOR);
            weatherSysFogSet(&state->fogFade);
        }

        state->work[1] = 0;
        state->work[2] = 0;

        weatherDustObj(pWork, WeatherStrongRain_AddDrops, 20, 5, 1, WeatherStrongRain_MoveDrop);
        Weather_StartSE(pWork, SEQ_SE_DP_T_OOAME);

        if (thunder) {
            WeatherThunder_Start(thunderState);
        }

        pWork->Sequence = 3;
        break;
    case 3:
        state->work[2] = (state->work[2] + 1) % (60 * 5);

        if (state->objFade.objAddTmg-- <= 0) {
            WeatherStrongRain_AddDrops(pWork, state->objFade.objAddNum);
            state->objFade.objAddTmg = state->objFade.objAddTmgMax;
        }

        if (pWork->ContFlag == 5) {
            weatherSysObjFadeOutSet(&state->objFade, 0, 15, 3, -3);

            if (pWork->fog_use != 0) {
                weatherSysFogFadeInit(&state->fogFade, 1, FALSE);
            }

            state->work[0] = 0;
            Weather_StopSE(pWork);

            if (thunder) {
                WeatherThunder_Stop();
            }

            pWork->Sequence = 4;
        }
        break;
    case 4:
        objState = weatherSysObjFade(&state->objFade);

        if (state->work[0] > 0) {
            state->work[0]--;
        } else {
            if (pWork->fog_use != 0) {
                fogState = weatherSysFogFade(&state->fogFade);
            } else {
                fogState = 1;
            }

            if (fogState == 1 && objState == 3) {
                if (pWork->Dummy.pNext == &pWork->Dummy) {
                    pWork->Sequence = 5;
                }
            }
        }
        break;
    case 5:
        if (pWork->fog_use != 0) {
            SetFogData(state->fogFade.Fog, 1, FALSE, 0, 0, 0);
        }

        stopWeatherWork_local(pWork->pWSD);
        break;
    }

    if (pWork->Sequence != 5 && pWork->Sequence != 0) {
        moveFuncObj(&pWork->Dummy, WeatherStrongRain_MoveDrop);
        scrollObj(pWork, NULL, NULL);
    }

    if (thunder && (pWork->Sequence == 1 || pWork->Sequence == 3)) {
        WeatherThunder_Update(thunderState);
    }
}

void LONG_CALL WeatherStrongRain_Task(void *task, WEATHER_SYS_WORK *pWork)
{
    (void)task;
    WeatherRain_Run(pWork, FALSE);
}

void LONG_CALL WeatherThunderstorm_Task(void *task, WEATHER_SYS_WORK *pWork)
{
    (void)task;
    WeatherRain_Run(pWork, TRUE);
}

#define BLIZZARD_FOG_SLOPE 3
#define BLIZZARD_FOG_OFFSET (0x6F6F - 0x400)
#define BLIZZARD_FOG_COLOR GX_RGB(24, 24, 24)

static const int sBlizzardSpeedX[4] = { -4, -6, -8, -10 };
static const int sBlizzardSpeedY[4] = { 2, 4, 2, 4 };

static void WeatherBlizzard_AddFlakes(WEATHER_SYS_WORK *pWork, int num)
{
    WEATHER_SYSW_NORMAL *state = pWork->work;
    int phase;
    int i;

    state->work[1]++;

    if (state->work[1] >= 512 * 4) {
        state->work[1] = 0;
    }

    phase = state->work[1] / 512;

    for (i = 0; i < num * 4; i++) {
        WAETHER_OBJ_DATA *obj = addObj(pWork, sizeof(s32) * 8);
        s32 *w;
        int frame;
        VecFx32 pos;

        if (obj == NULL) {
            break;
        }

        w = obj->work;
        w[0] = 0;
        w[1] = 18 + (gf_rand() % (24 - 18));
        frame = gf_rand() % 4;

        CLACT_AnmFrameSet(obj->clact_w, frame);

        w[4] = sBlizzardSpeedX[phase] * (frame + 1);
        w[2] = sBlizzardSpeedY[phase] * (frame + 1);
        w[3] = 0;

        if (frame == 3) {
            w[4] += sBlizzardSpeedX[phase];
            w[2] += sBlizzardSpeedY[phase];
        }

        w[5] = sBlizzardSpeedX[phase];

        pos = getObjMat(obj);
        pos.x = (256 + (gf_rand() % 24)) * 0x1000;
        pos.y = (-32 + (gf_rand() % 168)) * 0x1000;
        pos.z = 0;
        setClactMatrix(obj->clact_w, &pos);
    }
}

static void WeatherBlizzard_MoveFlake(WAETHER_OBJ_DATA *obj)
{
    s32 *w = obj->work;
    VecFx32 pos = getObjMat(obj);

    switch (w[3]) {
    case 0:
        pos.x += w[4] * 0x1000;
        pos.y += w[2] * 0x1000;

        if (w[0]++ > w[1]) {
            w[3] = 1;
        }

        if ((w[0] % 4) == 0) {
            w[4] += w[5];

            if (w[2] > 1) {
                w[2]--;
            }
        }

        setClactMatrix(obj->clact_w, &pos);
        break;
    case 1:
        destObj(obj);
        break;
    }
}

void LONG_CALL WeatherBlizzard_Task(void *task, WEATHER_SYS_WORK *pWork)
{
    WEATHER_SYSW_NORMAL *state = pWork->work;
    int objState;
    int fogState;

    (void)task;

    switch (pWork->Sequence) {
    case 0:
        weatherSysObjFadeInit(&state->objFade, pWork, 1, 30, 10, 1, -4, 2, 3, WeatherBlizzard_AddFlakes);
        weatherSysFogFadeInInitPack(&state->fogWithFade, &state->fogFade, pWork->pWSysCont->fsys->fog_data,
                                    BLIZZARD_FOG_SLOPE, BLIZZARD_FOG_OFFSET, BLIZZARD_FOG_COLOR, 1, pWork->fog_use);
        state->work[0] = 16;
        state->work[1] = 0;
        state->work[2] = 0;
        pWork->Sequence = 1;
        break;
    case 1:
        objState = weatherSysObjFade(&state->objFade);

        if (state->work[0] > 0) {
            state->work[0]--;
        } else {
            fogState = weatherSysFogFadeInMainPack(&state->fogWithFade, (WEATHER_SYS_OBJ_FADE *)&state->fogFade, pWork->fog_use);

            if (fogState == 1 && objState == 3) {
                pWork->Sequence = 3;
                GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
            }
        }
        break;
    case 2:
        weatherSysObjFadeInit(&state->objFade, pWork, 10, 1, 10, 1, -4, 2, 3, WeatherBlizzard_AddFlakes);

        if (pWork->fog_use != 0) {
            state->fogFade.Fog = pWork->pWSysCont->fsys->fog_data;
            weatherSysFogParamSet(state->fogFade.Fog, BLIZZARD_FOG_SLOPE, BLIZZARD_FOG_OFFSET, BLIZZARD_FOG_COLOR);
            weatherSysFogSet(&state->fogFade);
        }

        state->work[1] = 0;
        state->work[2] = 0;

        weatherDustObj(pWork, WeatherBlizzard_AddFlakes, 20, 2, 2, WeatherBlizzard_MoveFlake);
        pWork->Sequence = 3;
        GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
        break;
    case 3:
        if (state->objFade.objAddTmg-- <= 0) {
            if (sBlizzardSpeedX[state->work[1] / 512] <= -8) {
                WeatherBlizzard_AddFlakes(pWork, state->objFade.objAddNum * 2);
            } else {
                WeatherBlizzard_AddFlakes(pWork, state->objFade.objAddNum);
            }

            state->objFade.objAddTmg = state->objFade.objAddTmgMax;
        }

        if (pWork->ContFlag == 5) {
            weatherSysObjFadeOutSet(&state->objFade, 0, 12, 4, -4);

            if (pWork->fog_use != 0) {
                weatherSysFogFadeInit(&state->fogFade, 1, FALSE);
            }

            state->work[0] = 20;
            pWork->Sequence = 4;
            GX_EngineAToggleLayers(PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        objState = weatherSysObjFade(&state->objFade);

        if (state->work[0] > 0) {
            state->work[0]--;
        } else {
            if (pWork->fog_use != 0) {
                fogState = weatherSysFogFade(&state->fogFade);
            } else {
                fogState = 1;
            }

            if (fogState == 1 && objState == 3) {
                if (pWork->Dummy.pNext == &pWork->Dummy) {
                    pWork->Sequence = 5;
                }
            }
        }
        break;
    case 5:
        if (pWork->fog_use != 0) {
            SetFogData(state->fogFade.Fog, 1, FALSE, 0, 0, 0);
        }

        stopWeatherWork_local(pWork->pWSD);
        break;
    }

    if (pWork->Sequence != 5 && pWork->Sequence != 0) {
        moveFuncObj(&pWork->Dummy, WeatherBlizzard_MoveFlake);

        state->work[2] = (state->work[2] + 12) % 256;
        REG_BG2HOFS = state->work[2] * 2;
        REG_BG2VOFS = -state->work[2];
    }
}

#define ASHFALL_FOG_SLOPE 3
#define ASHFALL_FOG_OFFSET (0x6F6F - 0x40)
#define ASHFALL_FOG_COLOR GX_RGB(20, 20, 14)

// work[1] = "steady state reached" flag (doubles spawn rate), work[5] = "stopping" flag; both are read by the particles
static void WeatherAshfall_AddAsh(WEATHER_SYS_WORK *pWork, int num)
{
    WEATHER_SYSW_NORMAL *state = pWork->work;
    int i;

    if (state->work[1] == 1) {
        num *= 2;
    }

    for (i = 0; i < num; i++) {
        WAETHER_OBJ_DATA *obj = addObj(pWork, sizeof(s32) * 8);
        s32 *w;
        VecFx32 pos;

        if (obj == NULL) {
            break;
        }

        w = obj->work;
        CLACT_AnmFrameSet(obj->clact_w, gf_rand() % 4);

        w[4] = 10;
        w[5] = 0;
        w[1] = ((gf_rand() % 2) == 0) ? 1 : -1;
        w[3] = 1;
        w[0] = (s32)(u32)&state->work[1];
        w[6] = (s32)(u32)&state->work[5];
        w[7] = 10 + (gf_rand() % 20);

        pos = getObjMat(obj);
        pos.x = (-32 + (gf_rand() % 414)) * 0x1000;

        if (state->work[1] == 1 && i >= (num / 2)) {
            pos.y = (-40 - (gf_rand() % 20)) * 0x1000;
        } else {
            pos.y = (-8 - (gf_rand() % 20)) * 0x1000;
        }

        pos.z = 0;
        setClactMatrix(obj->clact_w, &pos);
    }
}

static void WeatherAshfall_MoveAsh(WAETHER_OBJ_DATA *obj)
{
    s32 *w = obj->work;
    VecFx32 pos = getObjMat(obj);
    BOOL done = FALSE;
    int y;

    if (w[5] >= w[3]) {
        pos.y += 0x1000;
        w[5] = 0;
        setClactMatrix(obj->clact_w, &pos);
    }

    w[5]++;
    y = pos.y >> 12;

    if (*(s32 *)(u32)w[6] == 1) {
        w[7]--;

        if (w[7] <= 0) {
            done = TRUE;
        }
    }

    if ((y < -284 && y > -296) || (y > 212 && y < 232)) {
        done = TRUE;
    }

    if (done) {
        *(s32 *)(u32)w[0] = 1;
        destObj(obj);
    }
}

void LONG_CALL WeatherAshfall_Task(void *task, WEATHER_SYS_WORK *pWork)
{
    WEATHER_SYSW_NORMAL *state = pWork->work;
    int objState;
    int fogState;
    int scrollX;
    int scrollY;
    short bgX;
    short bgY;

    (void)task;

    switch (pWork->Sequence) {
    case 0:
        weatherSysObjFadeInit(&state->objFade, pWork, 1, 12, 1, 6, -1, 4, 0, WeatherAshfall_AddAsh);
        state->work[1] = 0;
        state->work[2] = 0;
        state->work[4] = 0;
        state->work[5] = 0;
        weatherSysFogFadeInInitPack(&state->fogWithFade, &state->fogFade, pWork->pWSysCont->fsys->fog_data,
                                    ASHFALL_FOG_SLOPE, ASHFALL_FOG_OFFSET, ASHFALL_FOG_COLOR, 1, pWork->fog_use);
        state->work[0] = 0;
        pWork->Sequence = 1;
        break;
    case 1:
        objState = weatherSysObjFade(&state->objFade);

        if (state->work[0] > 0) {
            state->work[0]--;
        } else {
            fogState = weatherSysFogFadeInMainPack(&state->fogWithFade, (WEATHER_SYS_OBJ_FADE *)&state->fogFade, pWork->fog_use);

            if (fogState == 1 && objState == 3) {
                pWork->Sequence = 3;
                GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
            }
        }
        break;
    case 2:
        weatherSysObjFadeInit(&state->objFade, pWork, 1, 6, 1, 6, -1, 4, 0, WeatherAshfall_AddAsh);
        state->work[1] = 0;
        state->work[2] = 0;
        state->work[4] = 0;
        state->work[5] = 0;

        if (pWork->fog_use != 0) {
            state->fogFade.Fog = pWork->pWSysCont->fsys->fog_data;
            weatherSysFogParamSet(state->fogFade.Fog, ASHFALL_FOG_SLOPE, ASHFALL_FOG_OFFSET, ASHFALL_FOG_COLOR);
            weatherSysFogSet(&state->fogFade);
        }

        weatherDustObj(pWork, WeatherAshfall_AddAsh, 20, 2, 16, WeatherAshfall_MoveAsh);
        pWork->Sequence = 3;
        GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
        break;
    case 3:
        if (state->objFade.objAddTmg-- <= 0) {
            WeatherAshfall_AddAsh(pWork, state->objFade.objAddNum);
            state->objFade.objAddTmg = state->objFade.objAddTmgMax;
        }

        if (pWork->ContFlag == 5) {
            weatherSysObjFadeOutSet(&state->objFade, 0, 12, 1, -1);

            if (pWork->fog_use != 0) {
                weatherSysFogFadeInit(&state->fogFade, 1, FALSE);
            }

            state->work[0] = 9;
            pWork->Sequence = 4;
            state->work[5] = 1;
            GX_EngineAToggleLayers(PLANEMASK_BG2, 0);
        }
        break;
    case 4:
        objState = weatherSysObjFade(&state->objFade);

        if (state->work[0] > 0) {
            state->work[0]--;
        } else {
            if (pWork->fog_use != 0) {
                fogState = weatherSysFogFade(&state->fogFade);
            } else {
                fogState = 1;
            }

            if (fogState == 1 && objState == 3) {
                if (pWork->Dummy.pNext == &pWork->Dummy) {
                    pWork->Sequence = 5;
                }
            }
        }
        break;
    case 5:
        if (pWork->fog_use != 0) {
            SetFogData(state->fogFade.Fog, 1, FALSE, 0, 0, 0);
        }

        stopWeatherWork_local(pWork->pWSD);
        break;
    }

    if (pWork->Sequence != 5 && pWork->Sequence != 0) {
        moveFuncObj(&pWork->Dummy, WeatherAshfall_MoveAsh);
        scrollObj(pWork, &scrollX, &scrollY);

        bgX = state->work[2] >> 16;
        bgY = state->work[2] & 0xFFFF;
        bgX += scrollX;
        bgY -= scrollY * 5;

        if (bgX < 0) {
            bgX += 256;
        } else if (bgX >= 256) {
            bgX -= 256;
        }

        if (bgY < 0) {
            bgY += 2048;
        }

        state->work[4] += 2;

        if (state->work[4] > 60) {
            state->work[4] = 0;
            bgX = (bgX + 32) % 256;
        }

        bgY = (bgY + 2) % 2048;
        REG_BG2HOFS = bgX;
        REG_BG2VOFS = -bgY / 5;

        state->work[2] = (bgX << 16) | (bgY & 0xFFFF);
    }
}

// Sun: a dim flat BG2 colour overlay (BG overlay 5, about (57,57,65)) blended additively (EVB = 16) whose
// strength follows a raised-cosine pulse. A dim overlay colour makes each of the 16 blend steps a small
// brightness change, which is what keeps the pulse smooth. Tune SUN_LEVEL_MIN/MAX (0-16, 16 = the full overlay
// colour added) and SUN_PULSE_FRAMES.
#define SUN_FADE_FRAMES 30
#define SUN_PULSE_FRAMES 30
#define SUN_LEVEL_MIN 3
#define SUN_LEVEL_MAX 12

static const u16 sSunPulse[SUN_PULSE_FRAMES] = {
    0, 3, 11, 24, 42, 64, 88, 115, 141, 168, 192, 214, 232, 245, 253,
    256, 253, 245, 232, 214, 192, 168, 141, 115, 88, 64, 42, 24, 11, 3
};

typedef struct {
    s32 fade;
    s32 phase;
} WEATHER_SYSW_SUN;

static void WeatherSun_Apply(WEATHER_SYSW_SUN *sun)
{
    int level = SUN_LEVEL_MIN * 256 + (SUN_LEVEL_MAX - SUN_LEVEL_MIN) * sSunPulse[sun->phase];
    int strength = (level * sun->fade / SUN_FADE_FRAMES + 128) / 256;

    WeatherBGAlphaDef(strength, 16);
}

void LONG_CALL WeatherSun_Task(void *task, WEATHER_SYS_WORK *pWork)
{
    WEATHER_SYSW_SUN *sun = pWork->work;

    (void)task;

    switch (pWork->Sequence) {
    case 0:
        sun->fade = 0;
        sun->phase = 0;
        WeatherBGAlphaDef(0, 16);
        GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
        pWork->Sequence = 1;
        break;
    case 1:
        sun->fade++;
        sun->phase = (sun->phase + 1) % SUN_PULSE_FRAMES;
        WeatherSun_Apply(sun);

        if (sun->fade >= SUN_FADE_FRAMES) {
            sun->fade = SUN_FADE_FRAMES;
            pWork->Sequence = 3;
        }
        break;
    case 2:
        sun->fade = SUN_FADE_FRAMES;
        sun->phase = 0;
        WeatherSun_Apply(sun);
        GX_EngineAToggleLayers(PLANEMASK_BG2, 1);
        pWork->Sequence = 3;
        break;
    case 3:
        sun->phase = (sun->phase + 1) % SUN_PULSE_FRAMES;
        WeatherSun_Apply(sun);

        if (pWork->ContFlag == 5) {
            pWork->Sequence = 4;
        }
        break;
    case 4:
        sun->fade--;
        sun->phase = (sun->phase + 1) % SUN_PULSE_FRAMES;
        WeatherSun_Apply(sun);

        if (sun->fade <= 0) {
            GX_EngineAToggleLayers(PLANEMASK_BG2, 0);
            pWork->Sequence = 5;
        }
        break;
    case 5:
        stopWeatherWork_local(pWork->pWSD);
        break;
    }
}
