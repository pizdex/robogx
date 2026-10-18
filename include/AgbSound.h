#ifndef _AGB_SOUND_H
#define _AGB_SOUND_H

#include "gba/types.h"

#define ID_NUMBER 0x68736D53 // "Smsh"

// Structure of wave data
typedef struct {
	u16 type;	// Type
	u16 stat;	// Status
	u32 freq;	// Frequency calculation value
	u32 loop;	// Loop start position
	u32 size;	// Number of samples
	s8 data[1]; // Sampling data array
} WaveData;

#define WAVE_STAT_LOOP 0xc000

// Structure of tone data
typedef struct {
	u8 typ;		   // Type
	u8 key;		   // Original key
	u8 len;		   // Sound length (compatible sound)
	u8 p_s;		   // Panpot or sweep (compatible sound 1)
	WaveData *wav; // Address of wave data
	u8 att;		   // Attack
	u8 dec;		   // Decay
	u8 sus;		   // Sustain
	u8 rel;		   // Release
} ToneData;

#define TONEDATA_TYP_RHY 0x80
#define TONEDATA_TYP_SPL 0x40
#define TONEDATA_TYP_FIX 0x08
#define TONEDATA_TYP_CGB 0x07

#define TONEDATA_P_S_PAM 0xc0

typedef struct {
	u32 typ;
	ToneData *ta;
	u8 *st;
} SplitTone;
typedef union {
	ToneData t;
	SplitTone s;
} ToneDataArr;

#define RHYTHM_TONE(TA) { TONEDATA_TYP_RHY, 0, 0, 0, (WaveData *)(TA) }
#define SPLIT_TONE(TA, ST)                             \
	(ToneDataArr)(SplitTone) {                         \
		TONEDATA_TYP_SPL, (ToneData *)(TA), (u8 *)(ST) \
	}
#define RHY_SPL_TONE(TA, ST)                                              \
	(ToneDataArr)(SplitTone) {                                            \
		TONEDATA_TYP_RHY | TONEDATA_TYP_SPL, (ToneData *)(TA), (u8 *)(ST) \
	}

// Structure of virtual channel (DirectSound)
typedef struct {
	u8 sf;		  // Status flag
	u8 ty;		  // Type
	u8 rv;		  // Right volume
	u8 lv;		  // Left volume
	u8 at;		  // Attack
	u8 de;		  // Decay
	u8 su;		  // Sustain
	u8 re;		  // Release
	u8 ky;		  // Actual pitch
	u8 ev;		  // ENV level
	u8 er;		  // ENV right volume
	u8 el;		  // ENV left volume
	u8 iev;		  // Pseudo-echo volume
	u8 iel;		  // Pseudo-echo length
	u8 d1;		  // (reserved)
	u8 d2;		  // (reserved)
	u8 gt;		  // GATE counter
	u8 mk;		  // Pitch (MIDI KEY)
	u8 ve;		  // Velocity
	u8 pr;		  // Priority
	u8 d3[4];	  // (reserved)
	u32 ct;		  // Playback counter
	u32 fw;		  // DDA work variable
	u32 fr;		  // Frequency calculation value
	WaveData *wp; // Wave pointer
	s8 *cp;		  // Playback pointer
	void *tp;	  // Track pointer
	void *pp;	  // Previous SoundChannel pointer
	void *np;	  // Next SoundChannel pointer
	u32 d4[2];	  // (reserved)
} SoundChannel;

#define MAX_DIRECTSOUND_CHANNEL 12
#define SOUND_CHANNEL_SF_START 0x80
#define SOUND_CHANNEL_SF_STOP 0x40
#define SOUND_CHANNEL_SF_LOOP 0x10
#define SOUND_CHANNEL_SF_IEC 0x04
#define SOUND_CHANNEL_SF_ENV 0x03
#define SOUND_CHANNEL_SF_ON (SOUND_CHANNEL_SF_START | SOUND_CHANNEL_SF_STOP | SOUND_CHANNEL_SF_IEC | SOUND_CHANNEL_SF_ENV)

#define SOUND_CHANNEL_SF_ENV_AT 0x03
#define SOUND_CHANNEL_SF_ENV_DE 0x02
#define SOUND_CHANNEL_SF_ENV_SU 0x01
#define SOUND_CHANNEL_SF_ENV_SB 0x01

#define SOUND_CHANNEL_TY_FIX TONEDATA_TYP_FIX
#define SOUND_CHANNEL_TY_CGB TONEDATA_TYP_CGB

// Structure of CGB-compatible channel
typedef struct {
	u8 sf;	   // Status flag
	u8 ty;	   // Type
	u8 rv;	   // Right volume
	u8 lv;	   // Left volume
	u8 at;	   // Attack
	u8 de;	   // Decay
	u8 su;	   // Sustain
	u8 re;	   // Release
	u8 ky;	   // Actual pitch
	u8 ev;	   // ENV current level
	u8 eg;	   // ENV target volume
	u8 ec;	   // ENV counter
	u8 iev;	   // Pseudo-echo volume
	u8 iel;	   // Pseudo-echo length
	u8 d1;	   // (reserved)
	u8 d2;	   // (reserved)
	u8 gt;	   // GATE counter
	u8 mk;	   // Pitch (MIDI KEY)
	u8 ve;	   // Velocity
	u8 pr;	   // Priority
	u8 d3[4];  // (reserved)
	u8 d5;	   // (reserved)
	u8 sg;	   // Sustain target volume
	u8 n4;	   // NRx4 register
	u8 pa;	   // Panpot
	u8 pb;	   // Pan bits
	u8 mo;	   // Modify
	u8 le;	   // Sound length
	u8 sw;	   // Sweep
	u32 fr;	   // Frequency calculation value
	u32 *wp;   // Wave pointer
	u32 *cp;   // Current bank wave
	void *tp;  // Track pointer
	void *pp;  // Previous channel pointer
	void *np;  // Next channel pointer
	u32 d4[2]; // (reserved)
} CgbChannel;

#define CGB_CHANNEL_MO_PIT 0x02
#define CGB_CHANNEL_MO_VOL 0x01

// Structure of song data
typedef struct {
	u8 trks;		// Number of tracks
	u8 blks;		// Number of blocks
	u8 prio;		// Priority
	u8 rvrb;		// Reverb
	ToneData *tone; // Tone table
	u8 *part[1];
} SongHeader;

// Structure of each track of the music player
#define MTRACK_PATSIZ 3

typedef struct {
	u8 flg;	 // Flags
	u8 wai;	 // Wait counter
	u8 patP; // Pattern stack pointer
	u8 repN; // Repeat counter

	u8 gat, key, vel; // Gate time, key, velocity
	u8 run;			  // Running status

	s8 keyM;
	u8 pitM; // Modulation key / pitch
	s8 ksh;
	s8 kshX; // Key shift
	s8 tun;
	u8 pitX; // Tune
	s8 bnd;
	u8 bndR; // Bend / bend range

	u8 volMR, volML; // Computed right / left volume
	u8 vol, volX;	 // Volume
	s8 pam, pamX;	 // Panpot

	s8 modM;	  // Modulation value
	u8 mod, modT; // Modulation depth / type
	u8 lfo, lfoC; // LFO speed / counter
	u8 ldl, ldlC; // LFO delay / counter

	u8 prio;	 // Priority
	u8 iev, iel; // Pseudo-echo volume / length

	SoundChannel *chn; // Head of playing channel chain

	u8 typ, _key, len, p_s; // Current tone (copy of ToneData)
	WaveData *wav;
	u8 att, dec, sus, rel;

	u8 dmy2[16];

	u8 *adr;				 // Current read address
	u8 *patS[MTRACK_PATSIZ]; // Pattern return addresses
} MusicPlayerTrack;

#define MPT_FLG_EXIST 0x80
#define MPT_FLG_START 0x40
#define MPT_FLG_PITCHG 0x0c
#define MPT_FLG_PITSET 0x04
#define MPT_FLG_VOLCHG 0x03
#define MPT_FLG_VOLSET 0x01

#define MAX_MUSICPLAYER_TRACK 16

// Structure of music player work area
typedef struct {
	SongHeader *song; // Current song pointer
	u32 stat;		  // Status

	u8 mtrk; // Number of tracks
	u8 prio; // Current priority
	u8 cmd;
	u8 unk_B;
	u32 clock;
	u8 dmy2[8];
	u8 *memAccArea;

	u16 TempoD;
	u16 TempoU;
	u16 TempoI;
	u16 TempoC;

	u16 FadeOI;
	u16 FadeOC;
	u16 FadeOV;
	u16 dmy3;

	MusicPlayerTrack *PlyTrk;
	ToneData *tone;

	u32 ident;
	void (*func)();
	u32 intp;
} MusicPlayerArea;

#define MUSICPLAYER_STATUS_TRACK 0x0000ffff
#define MUSICPLAYER_STATUS_PAUSE 0x80000000

// Music player command / track constants
#define W00 0x80
#define W96 (W00 + 48)
#define RUNSTT 0xBD
#define TIE 0xCF
#define CENTER 0x40
#define MOD_VIB 0
#define MOD_TRE 1
#define MOD_PAM 2
#define TEMPOBASE 150

#define MPLYJMPTBLSIZ 36

// Size of the DirectSound transfer buffer
#define PCM_DMA_BUF 1584

// Structure of sound work area
typedef struct {
	u32 ident;
	vu8 DmaCount;
	u8 reverb; // DirectSound reverb value
	u8 maxchn; // DirectSound number of simultaneous voices
	u8 masvol; // DirectSound master volume
	u8 freq;   // DirectSound playback frequency number (1=5734Hz ~ 12=42048Hz)
	u8 mode;   // Sound driver operating mode
	u8 c15;
	u8 pcmDT;
	u8 maxLines;
	u8 r3[3];
	s32 pcmVB;
	s32 pcmFQ; // (pcmVB * 59.7275)
	s32 divFQ; // (0x1000000/pcmFQ)
	CgbChannel *vcgb;
	void (*func)();
	u32 intp;
	void (*CgbSound)();
	void (*CgbOscOff)(u8);
	u32 (*MK2CgbFr)(u8, u8, u8);
	void (**MPlyJmpTbl)();
	void (*plynote)(u8, MusicPlayerArea *, MusicPlayerTrack *);
	void (*ExtVolPit)(MusicPlayerArea *, MusicPlayerTrack *);
	u32 r9[4]; // (reserved)
	SoundChannel vchn[MAX_DIRECTSOUND_CHANNEL];
	s8 pcmbuf[PCM_DMA_BUF * 2];
} SoundArea;

#define SOUND_MODE_REVERB_VAL 0x0000007f
#define SOUND_MODE_REVERB_SET 0x00000080
#define SOUND_MODE_MAXCHN 0x00000f00
#define SOUND_MODE_MAXCHN_SHIFT 8
#define SOUND_MODE_MASVOL 0x0000f000
#define SOUND_MODE_MASVOL_SHIFT 12
#define SOUND_MODE_FREQ_05734 0x00010000
#define SOUND_MODE_FREQ_07884 0x00020000
#define SOUND_MODE_FREQ_10512 0x00030000
#define SOUND_MODE_FREQ_13379 0x00040000
#define SOUND_MODE_FREQ_15768 0x00050000
#define SOUND_MODE_FREQ_18157 0x00060000
#define SOUND_MODE_FREQ_21024 0x00070000
#define SOUND_MODE_FREQ_26758 0x00080000
#define SOUND_MODE_FREQ_31536 0x00090000
#define SOUND_MODE_FREQ_36314 0x000a0000
#define SOUND_MODE_FREQ_40137 0x000b0000
#define SOUND_MODE_FREQ_42048 0x000c0000
#define SOUND_MODE_FREQ_SHIFT 16
#define SOUND_MODE_FREQ_VALUE 0x000f0000
#define SOUND_MODE_DA_BIT_9 0x00800000
#define SOUND_MODE_DA_BIT_8 0x00900000
#define SOUND_MODE_DA_BIT_7 0x00a00000
#define SOUND_MODE_DA_BIT_6 0x00b00000
#define SOUND_MODE_DA_BIT_SHIFT 20
#define SOUND_MODE_DA_BIT_VAL 0x00300000
#define SOUND_MODE_DA_BIT_SET 0x00800000

// Music player / song tables
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

extern const u8 ScaleTable[];
extern const u32 FreqTable[];

extern u8 gUnknown_03000748[]; // IWRAM copy of SoundMainRAM (0x400 bytes)
extern SoundArea gUnknown_02000860;
extern CgbChannel gUnknown_02001960[];
extern u8 gUnknown_02001B60[];		  // music player memacc area
extern const u16 gUnknown_08044120[]; // samples per VBlank, indexed by freq-1
extern const u8 gUnknown_08044138[];  // CGB scale table (132 entries)
extern const s16 gUnknown_080441BC[]; // CGB freq table (12 entries)
extern const u8 gUnknown_080441D4[];  // CGB noise table (60 entries)
extern const u8 gUnknown_08044210[];  // gCgb3Vol: wave channel volume table

#define CGB_NRx2_ENV_DIR_DEC 0x00
#define CGB_NRx2_ENV_DIR_INC 0x08

extern void (*gUnknown_020018D0[])();	  // music player jump table (0x24 entries)
extern void (*gUnknown_02001958)(void *); // jump table [34]: ClearChain hook
extern void (*gUnknown_0200195C)(void *); // jump table [35]: Clear64byte hook

typedef void (*MPlayFunc)(MusicPlayerArea *, MusicPlayerTrack *);
extern const MPlayFunc gUnknown_08044254[]; // extended command table

extern char gMaxLines[];
#define MAX_LINES ((u32)gMaxLines)

#define SOUND_AREA_ADR 0x03007FF0
#define SOUND_AREA_PTR (*(SoundArea **)SOUND_AREA_ADR)

#define READ_XCMD_BYTE(var, n)       \
	{                                \
		u32 byte = tp->adr[(n)];     \
		byte <<= n * 8;              \
		(var) &= ~(0xFF << (n * 8)); \
		(var) |= byte;               \
	}

#define MEMACC_COND_JUMP(cond) \
	if(cond)                   \
		goto cond_true;        \
	else                       \
		goto cond_false;

#endif // _AGB_SOUND_H
