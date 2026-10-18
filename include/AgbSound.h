#ifndef _AGB_SOUND_H
#define _AGB_SOUND_H


#include "gba/types.h"

#define ID_NUMBER 0x68736D53

//Structure of wave data
typedef struct {
    u16 type;   //Type
    u16 stat;   //Status
    u32 freq;   //Frequency calculation value
    u32 loop;   //Loop start position
    u32 size;   //Number of samples
    s8 data[1]; //Sampling data array
} WaveData;

#define WAVE_STAT_LOOP  0xc000


//Structure of tone data
typedef struct {
    u8 typ;         //Type
    u8 key;         //Original key
    u8 len;         //Sound length (compatible sound)
    u8 p_s;         //Panpot or sweep (compatible sound 1)
    WaveData *wav;  //Address of wave data
    u8 att;         //Attack
    u8 dec;         //Decay
    u8 sus;         //Sustain
    u8 rel;         //Release
} ToneData;

#define TONEDATA_TYP_RHY    0x80
#define TONEDATA_TYP_SPL    0x40
#define TONEDATA_TYP_FIX    0x08
#define TONEDATA_TYP_CGB    0x07

#define TONEDATA_P_S_PAM    0xc0

typedef struct { u32 typ; ToneData *ta; u8 *st; } SplitTone;
typedef union { ToneData t; SplitTone s; } ToneDataArr;

#define RHYTHM_TONE(TA)     {TONEDATA_TYP_RHY,0,0,0,(WaveData *)(TA)}
#define SPLIT_TONE(TA,ST)   (ToneDataArr)(SplitTone)\
                {TONEDATA_TYP_SPL, (ToneData *)(TA), (u8 *)(ST)}
#define RHY_SPL_TONE(TA,ST) (ToneDataArr)(SplitTone)\
                {TONEDATA_TYP_RHY|TONEDATA_TYP_SPL, (ToneData *)(TA), (u8 *)(ST)}


//Structure of virtual channel
typedef struct {
    u8 sf;          //Status
    u8 ty;          //Type
    u8 rv;          //Right volume
    u8 lv;          //Left volume
    u8 at;          //Attack
    u8 de;          //Decay
    u8 su;          //Sustain
    u8 re;          //Release
    u8 r1[24];      // (reserved)
    u32 fr;         //Frequency calculation value
    WaveData *wp;   //Wave pointer
    u32 r3[6];      // (reserved)
} SoundChannel;

#define MAX_DIRECTSOUND_CHANNEL 12
#define SOUND_CHANNEL_SF_START  0x80
#define SOUND_CHANNEL_SF_STOP   0x40
#define SOUND_CHANNEL_SF_LOOP   0x10
#define SOUND_CHANNEL_SF_IEC    0x04
#define SOUND_CHANNEL_SF_ENV    0x03
#define SOUND_CHANNEL_SF_ON     (SOUND_CHANNEL_SF_START|SOUND_CHANNEL_SF_STOP\
                                |SOUND_CHANNEL_SF_IEC|SOUND_CHANNEL_SF_ENV)

#define SOUND_CHANNEL_TY_FIX    TONEDATA_TYP_FIX
#define SOUND_CHANNEL_TY_CGB    TONEDATA_TYP_CGB


//Size of the DirectSound transfer buffer
#define PCM_DMA_BUF 1584


//Structure of sound work area
typedef struct {
    u32 r1;     // (reserved)
    vu8 DmaCount;
    u8 reverb;  //DirectSound reverb value
    u8 maxchn;  //DirectSound number of simultaneous voices
    u8 masvol;  //DirectSound master volume
    u8 freq;    //DirectSound playback frequency number (1=5734Hz ~ 12=42048Hz)
    u8 mode;    //Sound driver operating mode
    u8 r2[6];   // (reserved)
    u32 r3[16]; // (reserved)
    SoundChannel vchn[MAX_DIRECTSOUND_CHANNEL];
    s8 pcmbuf[PCM_DMA_BUF*2];
} SoundArea;

#define SOUND_MODE_REVERB_VAL   0x0000007f
#define SOUND_MODE_REVERB_SET   0x00000080
#define SOUND_MODE_MAXCHN       0x00000f00
#define SOUND_MODE_MAXCHN_SHIFT 8
#define SOUND_MODE_MASVOL       0x0000f000
#define SOUND_MODE_MASVOL_SHIFT 12
#define SOUND_MODE_FREQ_05734   0x00010000
#define SOUND_MODE_FREQ_07884   0x00020000
#define SOUND_MODE_FREQ_10512   0x00030000
#define SOUND_MODE_FREQ_13379   0x00040000
#define SOUND_MODE_FREQ_15768   0x00050000
#define SOUND_MODE_FREQ_18157   0x00060000
#define SOUND_MODE_FREQ_21024   0x00070000
#define SOUND_MODE_FREQ_26758   0x00080000
#define SOUND_MODE_FREQ_31536   0x00090000
#define SOUND_MODE_FREQ_36314   0x000a0000
#define SOUND_MODE_FREQ_40137   0x000b0000
#define SOUND_MODE_FREQ_42048   0x000c0000
#define SOUND_MODE_FREQ_SHIFT   16
#define SOUND_MODE_DA_BIT_9     0x00800000
#define SOUND_MODE_DA_BIT_8     0x00900000
#define SOUND_MODE_DA_BIT_7     0x00a00000
#define SOUND_MODE_DA_BIT_6     0x00b00000
#define SOUND_MODE_DA_BIT_SHIFT 20


//Structure of song data
typedef struct {
    u8 trks;            //Number of tracks
    u8 blks;            //Number of blocks
    u8 prio;            //Priority
    u8 rvrb;            //Reverb
    ToneData *tone;     //Tone table
    u8 *part[1];
} SongHeader;


//Structure of music player work area
typedef struct {
    SongHeader *song;   //Current song pointer
    u32 stat;           //Status
    u8 mtrk;            //Number of tracks
    u8 prio;            //Current priority
    u8 d[54];
} MusicPlayerArea;

//Structure of each track of the music player
typedef struct {
    u8 d[80];
} MusicPlayerTrack;

#define MAX_MUSICPLAYER_TRACK       16
#define MUSICPLAYER_STATUS_TRACK    0x0000ffff
#define MUSICPLAYER_STATUS_PAUSE    0x80000000

typedef struct {
    MusicPlayerArea *ma;
    MusicPlayerTrack *ta;
    u8 tn;
    u16 unk_A;
} MusicPlayerTable;

typedef struct {
    SongHeader *header;
    u16 ms;
    u16 me;
} SongTable;

extern const MusicPlayerTable gMusicPlayerTable[];
extern const SongTable gSongTable[];

extern char gNumMusicPlayers[];
#define NUM_MUSIC_PLAYERS ((u16)gNumMusicPlayers)

#endif // _AGB_SOUND_H