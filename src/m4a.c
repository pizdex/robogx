#include "global.h"
#include "AgbSound.h"
#include "functions.h"

u32 MidiKey2fr(WaveData *wa, u8 mk, u8 fp) {
	u32 fw, f0, f1;

	fw = (u32)fp << 24;
	if(mk > 178) {
		mk = 178;
		fw = 0xff000000;
	}

	f0 = ScaleTable[mk];
	f0 = FreqTable[f0 & 0x0f] >> (f0 >> 4);

	f1 = ScaleTable[mk + 1];
	f1 = FreqTable[f1 & 0x0f] >> (f1 >> 4);

	return umul3232H32(wa->freq, f0 + umul3232H32(f1 - f0, fw));
}

void UnusedDummyFunc(void) {
}

void MPlayContinue(MusicPlayerArea *ma) {
	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	ma->stat &= ~MUSICPLAYER_STATUS_PAUSE;

	ma->ident = ID_NUMBER;
}

void MPlayFadeOut(MusicPlayerArea *ma, u16 sp) {
	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	ma->FadeOI = ma->FadeOC = sp;
	ma->FadeOV = 0x0100;

	ma->ident = ID_NUMBER;
}

void m4aSoundInit(void) {
	s32 i;

	CpuSet((void *)((s32)SoundMainRAM & ~1), gUnknown_03000748, 0x04000000 | 0x100);

	SoundInit(&gUnknown_02000860);
	MPlayExtender(gUnknown_02001960);
	SoundMode(SOUND_MODE_DA_BIT_8 | SOUND_MODE_FREQ_18157 | (14 << SOUND_MODE_MASVOL_SHIFT) | (12 << SOUND_MODE_MAXCHN_SHIFT));

	for(i = 0; i < NUM_MUSIC_PLAYERS; i++) {
		MusicPlayerArea *mplayInfo = gMusicPlayerTable[i].ma;

		MPlayOpen(mplayInfo, gMusicPlayerTable[i].ta, gMusicPlayerTable[i].tn);
		mplayInfo->unk_B = gMusicPlayerTable[i].unk_A;
		mplayInfo->memAccArea = gUnknown_02001B60;
	}
}

void m4aSoundMain(void) {
	SoundMain();
}

void m4aSongNumStart(u16 n) {
	const MusicPlayerTable *mplayTable = gMusicPlayerTable;
	const SongTable *songTable = gSongTable;
	const SongTable *song = &songTable[n];
	const MusicPlayerTable *mplay = &mplayTable[song->ms];

	MPlayStart(mplay->ma, song->header);
}

void m4aSongNumStartOrChange(u16 n) {
	const MusicPlayerTable *mplayTable = gMusicPlayerTable;
	const SongTable *songTable = gSongTable;
	const SongTable *song = &songTable[n];
	const MusicPlayerTable *mplay = &mplayTable[song->ms];

	if(mplay->ma->song != song->header)
		MPlayStart(mplay->ma, song->header);
	else if((mplay->ma->stat & MUSICPLAYER_STATUS_TRACK) == 0 || (mplay->ma->stat & MUSICPLAYER_STATUS_PAUSE))
		MPlayStart(mplay->ma, song->header);
}

void m4aSongNumStartOrContinue(u16 n) {
	const MusicPlayerTable *mplayTable = gMusicPlayerTable;
	const SongTable *songTable = gSongTable;
	const SongTable *song = &songTable[n];
	const MusicPlayerTable *mplay = &mplayTable[song->ms];

	if(mplay->ma->song != song->header)
		MPlayStart(mplay->ma, song->header);
	else if((mplay->ma->stat & MUSICPLAYER_STATUS_TRACK) == 0)
		MPlayStart(mplay->ma, song->header);
	else if(mplay->ma->stat & MUSICPLAYER_STATUS_PAUSE)
		MPlayContinue(mplay->ma);
}

void m4aSongNumStop(u16 n) {
	const MusicPlayerTable *mplayTable = gMusicPlayerTable;
	const SongTable *songTable = gSongTable;
	const SongTable *song = &songTable[n];
	const MusicPlayerTable *mplay = &mplayTable[song->ms];

	if(mplay->ma->song == song->header)
		MPlayStop(mplay->ma);
}

void m4aSongNumContinue(u16 n) {
	const MusicPlayerTable *mplayTable = gMusicPlayerTable;
	const SongTable *songTable = gSongTable;
	const SongTable *song = &songTable[n];
	const MusicPlayerTable *mplay = &mplayTable[song->ms];

	if(mplay->ma->song == song->header)
		MPlayContinue(mplay->ma);
}

void m4aMPlayAllStop(void) {
	s32 i;

	for(i = 0; i < NUM_MUSIC_PLAYERS; i++)
		MPlayStop(gMusicPlayerTable[i].ma);
}

void m4aMPlayContinue(MusicPlayerArea *ma) {
	MPlayContinue(ma);
}

void m4aMPlayAllContinue(void) {
	s32 i;

	for(i = 0; i < NUM_MUSIC_PLAYERS; i++)
		MPlayContinue(gMusicPlayerTable[i].ma);
}

void m4aMPlayFadeOut(MusicPlayerArea *ma, u16 speed) {
	MPlayFadeOut(ma, speed);
}

void m4aMPlayFadeOutTemporarily(MusicPlayerArea *ma, u16 speed) {
	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	ma->FadeOI = ma->FadeOC = speed;
	ma->FadeOV = 0x0101;

	ma->ident = ID_NUMBER;
}

void m4aMPlayFadeIn(MusicPlayerArea *ma, u16 speed) {
	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	ma->FadeOI = ma->FadeOC = speed;
	ma->FadeOV = 0x0002;
	ma->stat &= ~MUSICPLAYER_STATUS_PAUSE;

	ma->ident = ID_NUMBER;
}

void m4aMPlayImmInit(MusicPlayerArea *ma) {
	s32 trackCount = ma->mtrk;
	MusicPlayerTrack *tp = ma->PlyTrk;

	while(trackCount > 0) {
		if(tp->flg & MPT_FLG_EXIST) {
			if(tp->flg & MPT_FLG_START) {
				Clear64byte(tp);
				tp->flg = MPT_FLG_EXIST;
				tp->bndR = 2;
				tp->volX = 64;
				tp->lfo = 22;
				tp->typ = 1;
			}
		}
		trackCount--;
		tp++;
	}
}

void MPlayExtender(CgbChannel *cgbChans) {
	SoundArea *soundInfo;
	u32 ident;

	REG_SOUNDCNT_X = 0x8f;
	REG_SOUNDCNT_L = 0;
	REG_NR12 = 0x8;
	REG_NR22 = 0x8;
	REG_NR42 = 0x8;
	REG_NR14 = 0x80;
	REG_NR24 = 0x80;
	REG_NR44 = 0x80;
	REG_NR30 = 0;
	REG_NR50 = 0x77;

	soundInfo = SOUND_AREA_PTR;
	ident = soundInfo->ident;

	if(ident != ID_NUMBER)
		return;

	soundInfo->ident++;

	gUnknown_020018D0[8] = ply_memacc;
	gUnknown_020018D0[17] = ply_lfos;
	gUnknown_020018D0[19] = ply_mod;
	gUnknown_020018D0[28] = ply_xcmd;
	gUnknown_020018D0[29] = ply_endtie;
	gUnknown_020018D0[30] = SampFreqSet;
	gUnknown_020018D0[31] = TrackStop;
	gUnknown_020018D0[32] = FadeOutBody;
	gUnknown_020018D0[33] = TrkVolPitSet;

	soundInfo->vcgb = cgbChans;
	soundInfo->CgbSound = CgbSound;
	soundInfo->CgbOscOff = CgbOscOff;
	soundInfo->MK2CgbFr = MidiKey2CgbFr;
	soundInfo->maxLines = MAX_LINES;

	CpuFill32(0, cgbChans, sizeof(CgbChannel) * 4);

	cgbChans[0].ty = 1;
	cgbChans[0].pb = 0x11;
	cgbChans[1].ty = 2;
	cgbChans[1].pb = 0x22;
	cgbChans[2].ty = 3;
	cgbChans[2].pb = 0x44;
	cgbChans[3].ty = 4;
	cgbChans[3].pb = 0x88;

	soundInfo->ident = ident;
}

void MusicPlayerJumpTableCopy(void) {
	asm("svc 0x2A");
}

void ClearChain(void *x) {
	void (*func)(void *) = gUnknown_02001958;
	func(x);
}

void Clear64byte(void *x) {
	void (*func)(void *) = gUnknown_0200195C;
	func(x);
}

void SoundInit(SoundArea *soundInfo) {
	soundInfo->ident = 0;

	if(REG_DMA1CNT & (DMA_REPEAT << 16))
		REG_DMA1CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

	if(REG_DMA2CNT & (DMA_REPEAT << 16))
		REG_DMA2CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

	REG_DMA1CNT_H = DMA_32BIT;
	REG_DMA2CNT_H = DMA_32BIT;
	REG_SOUNDCNT_X = SOUND_MASTER_ENABLE | SOUND_4_ON | SOUND_3_ON | SOUND_2_ON | SOUND_1_ON;
	REG_SOUNDCNT_H = SOUND_B_FIFO_RESET | SOUND_B_TIMER_0 | SOUND_B_LEFT_OUTPUT | SOUND_A_FIFO_RESET | SOUND_A_TIMER_0 | SOUND_A_RIGHT_OUTPUT | SOUND_ALL_MIX_FULL;
	REG_SOUNDBIAS_H = (REG_SOUNDBIAS_H & 0x3F) | 0x40;

	REG_DMA1SAD = (s32)soundInfo->pcmbuf;
	REG_DMA1DAD = (s32)&REG_FIFO_A;
	REG_DMA2SAD = (s32)soundInfo->pcmbuf + PCM_DMA_BUF;
	REG_DMA2DAD = (s32)&REG_FIFO_B;

	SOUND_AREA_PTR = soundInfo;
	CpuFill32(0, soundInfo, sizeof(SoundArea));

	soundInfo->maxchn = 8;
	soundInfo->masvol = 15;

	soundInfo->plynote = ply_note;
	soundInfo->CgbSound = DummyFunc;
	soundInfo->CgbOscOff = (void (*)(u8))DummyFunc;
	soundInfo->MK2CgbFr = (u32 (*)(u8, u8, u8))DummyFunc;
	soundInfo->ExtVolPit = (void (*)(MusicPlayerArea *, MusicPlayerTrack *))DummyFunc;

	MPlyJmpTblCopy(gUnknown_020018D0);
	soundInfo->MPlyJmpTbl = gUnknown_020018D0;

	SampFreqSet(SOUND_MODE_FREQ_13379);

	soundInfo->ident = ID_NUMBER;
}

void SampFreqSet(u32 freq) {
	SoundArea *soundInfo = SOUND_AREA_PTR;

	freq = (freq & 0xF0000) >> 16;
	soundInfo->freq = freq;
	soundInfo->pcmVB = gUnknown_08044120[freq - 1];
	soundInfo->pcmDT = PCM_DMA_BUF / soundInfo->pcmVB;

	// LCD refresh rate 59.7275Hz
	soundInfo->pcmFQ = (597275 * soundInfo->pcmVB + 5000) / 10000;

	// CPU clock / sample rate, rounded
	soundInfo->divFQ = (16777216 / soundInfo->pcmFQ + 1) >> 1;

	REG_TM0CNT_H = 0;
	REG_TM0CNT_L = -(280896 / soundInfo->pcmVB);

	SoundVSyncOn();

	while(*(vu8 *)REG_ADDR_VCOUNT == 159)
		;
	while(*(vu8 *)REG_ADDR_VCOUNT != 159)
		;

	REG_TM0CNT_H = TIMER_ENABLE | TIMER_1CLK;
}

void SoundMode(u32 mode) {
	SoundArea *soundInfo = SOUND_AREA_PTR;
	u32 temp;

	if(soundInfo->ident != ID_NUMBER)
		return;

	soundInfo->ident++;

	temp = mode & (SOUND_MODE_REVERB_SET | SOUND_MODE_REVERB_VAL);
	if(temp)
		soundInfo->reverb = temp & SOUND_MODE_REVERB_VAL;

	temp = mode & SOUND_MODE_MAXCHN;
	if(temp) {
		SoundChannel *chan;
		soundInfo->maxchn = temp >> SOUND_MODE_MAXCHN_SHIFT;
		temp = MAX_DIRECTSOUND_CHANNEL;
		chan = soundInfo->vchn;
		while(temp != 0) {
			chan->sf = 0;
			temp--;
			chan++;
		}
	}

	temp = mode & SOUND_MODE_MASVOL;
	if(temp)
		soundInfo->masvol = temp >> SOUND_MODE_MASVOL_SHIFT;

	temp = mode & (SOUND_MODE_DA_BIT_SET | SOUND_MODE_DA_BIT_VAL);
	if(temp) {
		temp = (temp & SOUND_MODE_DA_BIT_VAL) >> 14;
		REG_SOUNDBIAS_H = (REG_SOUNDBIAS_H & 0x3F) | temp;
	}

	temp = mode & SOUND_MODE_FREQ_VALUE;
	if(temp) {
		SoundVSyncOff();
		SampFreqSet(temp);
	}

	soundInfo->ident = ID_NUMBER;
}

void SoundClear(void) {
	SoundArea *soundInfo = SOUND_AREA_PTR;
	s32 i;
	void *chan;

	if(soundInfo->ident != ID_NUMBER)
		return;

	soundInfo->ident++;

	i = MAX_DIRECTSOUND_CHANNEL;
	chan = &soundInfo->vchn[0];

	while(i > 0) {
		((SoundChannel *)chan)->sf = 0;
		i--;
		chan = (void *)((s32)chan + sizeof(SoundChannel));
	}

	chan = soundInfo->vcgb;

	if(chan) {
		i = 1;

		while(i <= 4) {
			soundInfo->CgbOscOff(i);
			((CgbChannel *)chan)->sf = 0;
			i++;
			chan = (void *)((s32)chan + sizeof(CgbChannel));
		}
	}

	soundInfo->ident = ID_NUMBER;
}

void SoundVSyncOff(void) {
	SoundArea *soundInfo = SOUND_AREA_PTR;

	if(soundInfo->ident >= ID_NUMBER && soundInfo->ident <= ID_NUMBER + 1) {
		soundInfo->ident += 10;

		if(REG_DMA1CNT & (DMA_REPEAT << 16))
			REG_DMA1CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

		if(REG_DMA2CNT & (DMA_REPEAT << 16))
			REG_DMA2CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

		REG_DMA1CNT_H = DMA_32BIT;
		REG_DMA2CNT_H = DMA_32BIT;

		CpuFill32(0, soundInfo->pcmbuf, sizeof(soundInfo->pcmbuf));
	}
}

void SoundVSyncOn(void) {
	SoundArea *soundInfo = SOUND_AREA_PTR;
	u32 ident = soundInfo->ident;

	if(ident == ID_NUMBER)
		return;

	REG_DMA1CNT_H = DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT;
	REG_DMA2CNT_H = DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT;

	soundInfo->DmaCount = 0;
	soundInfo->ident = ident - 10;
}

void MPlayOpen(MusicPlayerArea *ma, MusicPlayerTrack *tp, u8 trackCount) {
	SoundArea *soundInfo;

	if(trackCount == 0)
		return;
	if(trackCount > MAX_MUSICPLAYER_TRACK)
		trackCount = MAX_MUSICPLAYER_TRACK;

	soundInfo = SOUND_AREA_PTR;
	if(soundInfo->ident != ID_NUMBER)
		return;

	soundInfo->ident++;

	Clear64byte(ma);

	ma->PlyTrk = tp;
	ma->mtrk = trackCount;
	ma->stat = MUSICPLAYER_STATUS_PAUSE;

	while(trackCount) {
		tp->flg = 0;
		trackCount--;
		tp++;
	}

	if(soundInfo->func != 0) {
		ma->func = soundInfo->func;
		ma->intp = soundInfo->intp;
		soundInfo->func = 0;
	}

	soundInfo->intp = (u32)ma;
	soundInfo->func = MPlayMain;
	soundInfo->ident = ID_NUMBER;
	ma->ident = ID_NUMBER;
}

void MPlayStart(MusicPlayerArea *ma, SongHeader *songHeader) {
	s32 i;
	u8 unk_B;
	MusicPlayerTrack *tp;

	if(ma->ident != ID_NUMBER)
		return;

	unk_B = ma->unk_B;

	if(!unk_B || ((!ma->song || !(ma->PlyTrk[0].flg & MPT_FLG_START)) && ((ma->stat & MUSICPLAYER_STATUS_TRACK) == 0 || (ma->stat & MUSICPLAYER_STATUS_PAUSE))) || (ma->prio <= songHeader->prio)) {
		ma->ident++;
		ma->stat = 0;
		ma->song = songHeader;
		ma->tone = songHeader->tone;
		ma->prio = songHeader->prio;
		ma->clock = 0;
		ma->TempoD = 150;
		ma->TempoI = 150;
		ma->TempoU = 0x100;
		ma->TempoC = 0;
		ma->FadeOI = 0;

		i = 0;
		tp = ma->PlyTrk;

		while(i < songHeader->trks && i < ma->mtrk) {
			TrackStop(ma, tp);
			tp->flg = MPT_FLG_EXIST | MPT_FLG_START;
			tp->chn = 0;
			tp->adr = songHeader->part[i];
			i++;
			tp++;
		}

		while(i < ma->mtrk) {
			TrackStop(ma, tp);
			tp->flg = 0;
			i++;
			tp++;
		}

		if(songHeader->rvrb & SOUND_MODE_REVERB_SET)
			SoundMode(songHeader->rvrb);

		ma->ident = ID_NUMBER;
	}
}

void MPlayStop(MusicPlayerArea *ma) {
	s32 i;
	MusicPlayerTrack *tp;

	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;
	ma->stat |= MUSICPLAYER_STATUS_PAUSE;

	i = ma->mtrk;
	tp = ma->PlyTrk;

	while(i > 0) {
		TrackStop(ma, tp);
		i--;
		tp++;
	}

	ma->ident = ID_NUMBER;
}

void FadeOutBody(MusicPlayerArea *ma) {
	s32 i;
	MusicPlayerTrack *tp;
	u16 mask;

	if(ma->FadeOI == 0)
		return;

	if(ma->FadeOI == 0)
		return;
	if(--ma->FadeOC != 0)
		return;

	ma->FadeOC = ma->FadeOI;

	if(ma->FadeOV & 2) {
		if((u16)(ma->FadeOV += (4 << 2)) >= (64 << 2)) {
			ma->FadeOV = (64 << 2);
			ma->FadeOI = 0;
		}
	} else {
		if((s16)(ma->FadeOV -= (4 << 2)) <= 0) {
			i = ma->mtrk;
			tp = ma->PlyTrk;

			while(i > 0) {
				u32 val;

				TrackStop(ma, tp);

				val = 1;
				val &= ma->FadeOV;
				if(!val)
					tp->flg = 0;

				i--;
				tp++;
			}

			if(ma->FadeOV & 1)
				ma->stat |= MUSICPLAYER_STATUS_PAUSE;
			else
				ma->stat = MUSICPLAYER_STATUS_PAUSE;

			ma->FadeOI = 0;
			return;
		}
	}

	i = ma->mtrk;
	tp = ma->PlyTrk;

	while(i > 0) {
		if(tp->flg & MPT_FLG_EXIST) {
			tp->volX = ma->FadeOV >> 2;
			tp->flg |= MPT_FLG_VOLCHG;
		}

		i--;
		tp++;
	}
}

void TrkVolPitSet(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	if(tp->flg & MPT_FLG_VOLSET) {
		s32 x;
		s32 y;

		x = (u32)(tp->vol * tp->volX) >> 5;

		if(tp->modT == MOD_TRE)
			x = (u32)(x * (tp->modM + 128)) >> 7;

		y = 2 * tp->pam + tp->pamX;

		if(tp->modT == MOD_PAM)
			y += tp->modM;

		if(y < -128)
			y = -128;
		else if(y > 127)
			y = 127;

		tp->volMR = (u32)((y + 128) * x) >> 8;
		tp->volML = (u32)((127 - y) * x) >> 8;
	}

	if(tp->flg & MPT_FLG_PITSET) {
		s32 bend = tp->bnd * tp->bndR;
		s32 x = (tp->tun + bend) * 4 + (tp->ksh << 8) + (tp->kshX << 8) + tp->pitX;

		if(tp->modT == MOD_VIB)
			x += 16 * tp->modM;

		tp->keyM = x >> 8;
		tp->pitM = x;
	}

	tp->flg &= ~(MPT_FLG_PITSET | MPT_FLG_VOLSET);
}

u32 MidiKey2CgbFr(u8 chanNum, u8 key, u8 fineAdjust) {
	if(chanNum == 4) {
		if(key <= 20)
			key = 0;
		else {
			key -= 21;
			if(key > 59)
				key = 59;
		}

		return gUnknown_080441D4[key];
	} else {
		s32 val1;
		s32 val2;

		if(key <= 35) {
			fineAdjust = 0;
			key = 0;
		} else {
			key -= 36;
			if(key > 130) {
				key = 130;
				fineAdjust = 255;
			}
		}

		val1 = gUnknown_08044138[key];
		val1 = gUnknown_080441BC[val1 & 0xF] >> (val1 >> 4);

		val2 = gUnknown_08044138[key + 1];
		val2 = gUnknown_080441BC[val2 & 0xF] >> (val2 >> 4);

		return 0x800 + (val1 + ((val2 - val1) * fineAdjust >> 8));
	}
}

void CgbOscOff(u8 chanNum) {
	switch(chanNum) {
		case 1:
			REG_NR12 = 0x8;
			REG_NR14 = 0x80;
			break;
		case 2:
			REG_NR22 = 0x8;
			REG_NR24 = 0x80;
			break;
		case 3:
			REG_NR30 = 0;
			break;
		default:
			REG_NR42 = 0x8;
			REG_NR44 = 0x80;
	}
}

static inline int CgbPan(CgbChannel *chan) {
	u32 rightVolume = chan->rv;
	u32 leftVolume = chan->lv;

	if((rightVolume = (u8)rightVolume) >= (leftVolume = (u8)leftVolume)) {
		if(rightVolume / 2 >= leftVolume) {
			chan->pa = 0x0F;
			return 1;
		}
	} else {
		if(leftVolume / 2 >= rightVolume) {
			chan->pa = 0xF0;
			return 1;
		}
	}

	return 0;
}

void CgbModVol(CgbChannel *chan) {
	if(!CgbPan(chan)) {
		chan->pa = 0xFF;
		chan->eg = (u32)(chan->lv + chan->rv);
		chan->eg /= 16;
	} else {
		chan->eg = (u32)(chan->lv + chan->rv);
		chan->eg /= 16;
		if(chan->eg > 15)
			chan->eg = 15;
	}

	chan->sg = (chan->eg * chan->su + 15) >> 4;
	chan->pa &= chan->pb;
}

void CgbSound(void) {
	s32 ch;
	CgbChannel *channels;
	s32 prevC15;
	SoundArea *soundInfo = SOUND_AREA_PTR;
	vu8 *nrx0ptr;
	vu8 *nrx1ptr;
	vu8 *nrx2ptr;
	vu8 *nrx3ptr;
	vu8 *nrx4ptr;
	s32 envelopeStepTimeAndDir;

	int mask = 0xff;

	if(soundInfo->c15)
		soundInfo->c15--;
	else
		soundInfo->c15 = 14;

	for(ch = 1, channels = soundInfo->vcgb; ch <= 4; ch++, channels++) {
		if(!(channels->sf & SOUND_CHANNEL_SF_ON))
			continue;

		// determine hardware channel registers
		switch(ch) {
			case 1:
				nrx0ptr = (vu8 *)(REG_ADDR_NR10);
				nrx1ptr = (vu8 *)(REG_ADDR_NR11);
				nrx2ptr = (vu8 *)(REG_ADDR_NR12);
				nrx3ptr = (vu8 *)(REG_ADDR_NR13);
				nrx4ptr = (vu8 *)(REG_ADDR_NR14);
				break;
			case 2:
				nrx0ptr = (vu8 *)(REG_ADDR_NR10 + 1);
				nrx1ptr = (vu8 *)(REG_ADDR_NR21);
				nrx2ptr = (vu8 *)(REG_ADDR_NR22);
				nrx3ptr = (vu8 *)(REG_ADDR_NR23);
				nrx4ptr = (vu8 *)(REG_ADDR_NR24);
				break;
			case 3:
				nrx0ptr = (vu8 *)(REG_ADDR_NR30);
				nrx1ptr = (vu8 *)(REG_ADDR_NR31);
				nrx2ptr = (vu8 *)(REG_ADDR_NR32);
				nrx3ptr = (vu8 *)(REG_ADDR_NR33);
				nrx4ptr = (vu8 *)(REG_ADDR_NR34);
				break;
			default:
				nrx0ptr = (vu8 *)(REG_ADDR_NR30 + 1);
				nrx1ptr = (vu8 *)(REG_ADDR_NR41);
				nrx2ptr = (vu8 *)(REG_ADDR_NR42);
				nrx3ptr = (vu8 *)(REG_ADDR_NR43);
				nrx4ptr = (vu8 *)(REG_ADDR_NR44);
				break;
		}

		prevC15 = soundInfo->c15;
		envelopeStepTimeAndDir = *nrx2ptr;

		// calculate envelope volume
		if(channels->sf & SOUND_CHANNEL_SF_START) {
			if(!(channels->sf & SOUND_CHANNEL_SF_STOP)) {
				channels->sf = SOUND_CHANNEL_SF_ENV_AT;
				channels->mo = CGB_CHANNEL_MO_PIT | CGB_CHANNEL_MO_VOL;
				CgbModVol(channels);
				switch(ch) {
					case 1:
						*nrx0ptr = channels->sw;
						// fallthrough
					case 2:
						*nrx1ptr = ((u32)channels->wp << 6) + channels->le;
						goto init_env_step_time_dir;
					case 3:
						if(channels->wp != channels->cp) {
							*nrx0ptr = 0x40;
							REG_WAVE_RAM0 = channels->wp[0];
							REG_WAVE_RAM1 = channels->wp[1];
							REG_WAVE_RAM2 = channels->wp[2];
							REG_WAVE_RAM3 = channels->wp[3];
							channels->cp = channels->wp;
						}
						*nrx0ptr = 0;
						*nrx1ptr = channels->le;
						if(channels->le)
							channels->n4 = 0xC0;
						else
							channels->n4 = 0x80;
						break;
					default:
						*nrx1ptr = channels->le;
						*nrx3ptr = (u32)channels->wp << 3;
					init_env_step_time_dir:
						envelopeStepTimeAndDir = channels->at + CGB_NRx2_ENV_DIR_INC;
						if(channels->le)
							channels->n4 = 0x40;
						else
							channels->n4 = 0x00;
						break;
				}
				channels->ec = channels->at;
				if((s8)(channels->at & mask)) {
					channels->ev = 0;
					goto envelope_step_complete;
				} else {
					// skip attack phase if attack is instantaneous (=0)
					goto envelope_decay_start;
				}
			} else {
				goto oscillator_off;
			}
		} else if(channels->sf & SOUND_CHANNEL_SF_IEC) {
			channels->iel--;
			if((s8)(channels->iel & mask) <= 0) {
			oscillator_off:
				CgbOscOff(ch);
				channels->sf = 0;
				goto channel_complete;
			}
			goto envelope_complete;
		} else if((channels->sf & SOUND_CHANNEL_SF_STOP) && (channels->sf & SOUND_CHANNEL_SF_ENV)) {
			channels->sf &= ~SOUND_CHANNEL_SF_ENV;
			channels->ec = channels->re;
			if((s8)(channels->re & mask)) {
				channels->mo |= CGB_CHANNEL_MO_VOL;
				if(ch != 3)
					envelopeStepTimeAndDir = channels->re | CGB_NRx2_ENV_DIR_DEC;
				goto envelope_step_complete;
			} else {
				goto envelope_pseudoecho_start;
			}
		} else {
		envelope_step_repeat:
			if(channels->ec == 0) {
				if(ch == 3)
					channels->mo |= CGB_CHANNEL_MO_VOL;

				CgbModVol(channels);
				if((channels->sf & SOUND_CHANNEL_SF_ENV) == 0) {
					channels->ev--;
					if((s8)(channels->ev & mask) <= 0) {
					envelope_pseudoecho_start:
						channels->ev = ((channels->eg * channels->iev) + 0xFF) >> 8;
						if(channels->ev) {
							channels->sf |= SOUND_CHANNEL_SF_IEC;
							channels->mo |= CGB_CHANNEL_MO_VOL;
							if(ch != 3)
								envelopeStepTimeAndDir = 0 | CGB_NRx2_ENV_DIR_INC;
							goto envelope_complete;
						} else {
							goto oscillator_off;
						}
					} else {
						channels->ec = channels->re;
					}
				} else if((channels->sf & SOUND_CHANNEL_SF_ENV) == SOUND_CHANNEL_SF_ENV_SU) {
				envelope_sustain:
					channels->ev = channels->sg;
					channels->ec = 7;
				} else if((channels->sf & SOUND_CHANNEL_SF_ENV) == SOUND_CHANNEL_SF_ENV_DE) {
					int envelopeVolume, sustainGoal;

					channels->ev--;
					envelopeVolume = (s8)(channels->ev & mask);
					sustainGoal = (s8)(channels->sg);
					if(envelopeVolume <= sustainGoal) {
					envelope_sustain_start:
						if(channels->su == 0) {
							channels->sf &= ~SOUND_CHANNEL_SF_ENV;
							goto envelope_pseudoecho_start;
						} else {
							channels->sf--;
							channels->mo |= CGB_CHANNEL_MO_VOL;
							if(ch != 3)
								envelopeStepTimeAndDir = 0 | CGB_NRx2_ENV_DIR_INC;
							goto envelope_sustain;
						}
					} else {
						channels->ec = channels->de;
					}
				} else {
					channels->ev++;
					if((u8)(channels->ev & mask) >= channels->eg) {
					envelope_decay_start:
						channels->sf--;
						channels->ec = channels->de;
						if((u8)(channels->ec & mask)) {
							channels->mo |= CGB_CHANNEL_MO_VOL;
							channels->ev = channels->eg;
							if(ch != 3)
								envelopeStepTimeAndDir = channels->de | CGB_NRx2_ENV_DIR_DEC;
						} else {
							goto envelope_sustain_start;
						}
					} else {
						channels->ec = channels->at;
					}
				}
			}
		}

	envelope_step_complete:
		// every 15 frames, envelope calculation has to be done twice
		// to keep up with the hardware envelope rate (1/64 s)
		channels->ec--;
		if(prevC15 == 0) {
			prevC15--;
			goto envelope_step_repeat;
		}

	envelope_complete:
		// apply pitch to HW registers
		if(channels->mo & CGB_CHANNEL_MO_PIT) {
			if(ch < 4 && (channels->ty & TONEDATA_TYP_FIX)) {
				int dac_pwm_rate = REG_SOUNDBIAS_H;

				if(dac_pwm_rate < 0x40) // if PWM rate = 32768 Hz
					channels->fr = (channels->fr + 2) & 0x7fc;
				else if(dac_pwm_rate < 0x80) // if PWM rate = 65536 Hz
					channels->fr = (channels->fr + 1) & 0x7fe;
			}

			if(ch != 4)
				*nrx3ptr = channels->fr;
			else
				*nrx3ptr = (*nrx3ptr & 0x08) | channels->fr;
			channels->n4 = (channels->n4 & 0xC0) + (*((u8 *)(&channels->fr) + 1));
			*nrx4ptr = (s8)(channels->n4 & mask);
		}

		// apply envelope & volume to HW registers
		if(channels->mo & CGB_CHANNEL_MO_VOL) {
			REG_NR51 = (REG_NR51 & ~channels->pb) | channels->pa;
			if(ch == 3) {
				*nrx2ptr = gUnknown_08044210[channels->ev];
				if(channels->n4 & 0x80) {
					*nrx0ptr = 0x80;
					*nrx4ptr = channels->n4;
					channels->n4 &= 0x7f;
				}
			} else {
				u32 envMask = 0xF;
				*nrx2ptr = (envelopeStepTimeAndDir & envMask) + (channels->ev << 4);
				*nrx4ptr = channels->n4 | 0x80;
				if(ch == 1 && !(*nrx0ptr & 0x08))
					*nrx4ptr = channels->n4 | 0x80;
			}
		}

	channel_complete:
		channels->mo = 0;
	}
}

void MPlayTempoControl(MusicPlayerArea *ma, u16 tempo) {
	if(ma->ident == ID_NUMBER) {
		ma->ident++;
		ma->TempoU = tempo;
		ma->TempoI = (ma->TempoD * ma->TempoU) >> 8;
		ma->ident = ID_NUMBER;
	}
}

void MPlayVolumeControl(MusicPlayerArea *ma, u16 trackBits, u16 volume) {
	s32 i;
	u32 bit;
	MusicPlayerTrack *tp;

	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	i = ma->mtrk;
	tp = ma->PlyTrk;
	bit = 1;

	while(i > 0) {
		if(trackBits & bit) {
			if(tp->flg & MPT_FLG_EXIST) {
				tp->volX = volume / 4;
				tp->flg |= MPT_FLG_VOLCHG;
			}
		}

		i--;
		tp++;
		bit <<= 1;
	}

	ma->ident = ID_NUMBER;
}

void MPlayPitchControl(MusicPlayerArea *ma, u16 trackBits, s16 pitch) {
	s32 i;
	u32 bit;
	MusicPlayerTrack *tp;

	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	i = ma->mtrk;
	tp = ma->PlyTrk;
	bit = 1;

	while(i > 0) {
		if(trackBits & bit) {
			if(tp->flg & MPT_FLG_EXIST) {
				tp->kshX = pitch >> 8;
				tp->pitX = pitch;
				tp->flg |= MPT_FLG_PITCHG;
			}
		}

		i--;
		tp++;
		bit <<= 1;
	}

	ma->ident = ID_NUMBER;
}

void MPlayPanpotControl(MusicPlayerArea *ma, u16 trackBits, s8 pan) {
	s32 i;
	u32 bit;
	MusicPlayerTrack *tp;

	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	i = ma->mtrk;
	tp = ma->PlyTrk;
	bit = 1;

	while(i > 0) {
		if(trackBits & bit) {
			if(tp->flg & MPT_FLG_EXIST) {
				tp->pamX = pan;
				tp->flg |= MPT_FLG_VOLCHG;
			}
		}

		i--;
		tp++;
		bit <<= 1;
	}

	ma->ident = ID_NUMBER;
}

void MP_clear_modM(MusicPlayerTrack *tp) {
	tp->lfoC = 0;
	tp->modM = 0;

	if(tp->modT == 0)
		tp->flg |= MPT_FLG_PITCHG;
	else
		tp->flg |= MPT_FLG_VOLCHG;
}

void MPlayModDepthSet(MusicPlayerArea *ma, u16 trackBits, u8 modDepth) {
	s32 i;
	u32 bit;
	MusicPlayerTrack *tp;

	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	i = ma->mtrk;
	tp = ma->PlyTrk;
	bit = 1;

	while(i > 0) {
		if(trackBits & bit) {
			if(tp->flg & MPT_FLG_EXIST) {
				tp->mod = modDepth;
				if(!tp->mod)
					MP_clear_modM(tp);
			}
		}

		i--;
		tp++;
		bit <<= 1;
	}

	ma->ident = ID_NUMBER;
}

void MPlayLFOSpeedSet(MusicPlayerArea *ma, u16 trackBits, u8 lfoSpeed) {
	s32 i;
	u32 bit;
	MusicPlayerTrack *tp;

	if(ma->ident != ID_NUMBER)
		return;

	ma->ident++;

	i = ma->mtrk;
	tp = ma->PlyTrk;
	bit = 1;

	while(i > 0) {
		if(trackBits & bit) {
			if(tp->flg & MPT_FLG_EXIST) {
				tp->lfo = lfoSpeed;
				if(!tp->lfo)
					MP_clear_modM(tp);
			}
		}

		i--;
		tp++;
		bit <<= 1;
	}

	ma->ident = ID_NUMBER;
}

void ply_memacc(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	u32 op;
	u8 *addr;
	u8 data;

	op = *tp->adr;
	tp->adr++;

	addr = ma->memAccArea + *tp->adr;
	tp->adr++;

	data = *tp->adr;
	tp->adr++;

	switch(op) {
		case 0:
			*addr = data;
			return;
		case 1:
			*addr += data;
			return;
		case 2:
			*addr -= data;
			return;
		case 3:
			*addr = ma->memAccArea[data];
			return;
		case 4:
			*addr += ma->memAccArea[data];
			return;
		case 5:
			*addr -= ma->memAccArea[data];
			return;
		case 6:
			MEMACC_COND_JUMP(*addr == data)
			return;
		case 7:
			MEMACC_COND_JUMP(*addr != data)
			return;
		case 8:
			MEMACC_COND_JUMP(*addr > data)
			return;
		case 9:
			MEMACC_COND_JUMP(*addr >= data)
			return;
		case 10:
			MEMACC_COND_JUMP(*addr <= data)
			return;
		case 11:
			MEMACC_COND_JUMP(*addr < data)
			return;
		case 12:
			MEMACC_COND_JUMP(*addr == ma->memAccArea[data])
			return;
		case 13:
			MEMACC_COND_JUMP(*addr != ma->memAccArea[data])
			return;
		case 14:
			MEMACC_COND_JUMP(*addr > ma->memAccArea[data])
			return;
		case 15:
			MEMACC_COND_JUMP(*addr >= ma->memAccArea[data])
			return;
		case 16:
			MEMACC_COND_JUMP(*addr <= ma->memAccArea[data])
			return;
		case 17:
			MEMACC_COND_JUMP(*addr < ma->memAccArea[data])
			return;
		default:
			return;
	}

cond_true:
	{
		// *& is required for matching
		(*&gUnknown_020018D0[1])(ma, tp);
		return;
	}

cond_false:
	tp->adr += 4;
}

void ply_xcmd(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	u32 n = *tp->adr;
	tp->adr++;

	gUnknown_08044254[n](ma, tp);
}

void ply_xxx(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	gUnknown_020018D0[0](ma, tp);
}

void ply_xwave(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	u32 wav;

	READ_XCMD_BYTE(wav, 0) // UB: uninitialized variable
	READ_XCMD_BYTE(wav, 1)
	READ_XCMD_BYTE(wav, 2)
	READ_XCMD_BYTE(wav, 3)

	tp->wav = (WaveData *)wav;
	tp->adr += 4;
}

void ply_xtype(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->typ = *tp->adr;
	tp->adr++;
}

void ply_xatta(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->att = *tp->adr;
	tp->adr++;
}

void ply_xdeca(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->dec = *tp->adr;
	tp->adr++;
}

void ply_xsust(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->sus = *tp->adr;
	tp->adr++;
}

void ply_xrele(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->rel = *tp->adr;
	tp->adr++;
}

void ply_xiecv(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->iev = *tp->adr;
	tp->adr++;
}

void ply_xiecl(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->iel = *tp->adr;
	tp->adr++;
}

void ply_xleng(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->len = *tp->adr;
	tp->adr++;
}

void ply_xswee(MusicPlayerArea *ma, MusicPlayerTrack *tp) {
	tp->p_s = *tp->adr;
	tp->adr++;
}

void DummyFunc(void) {
}
