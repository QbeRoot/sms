.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global SMSGetMessageData__FPvUl
SMSGetMessageData__FPvUl:
/* 80218F94 00215ED4  7C 08 02 A6 */	mflr r0
/* 80218F98 00215ED8  90 01 00 04 */	stw r0, 4(r1)
/* 80218F9C 00215EDC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80218FA0 00215EE0  BF 01 00 90 */	stmw r24, 0x90(r1)
/* 80218FA4 00215EE4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80218FA8 00215EE8  3B A4 00 00 */	addi r29, r4, 0
/* 80218FAC 00215EEC  40 82 00 0C */	bne lbl_80218FB8
/* 80218FB0 00215EF0  38 60 00 00 */	li r3, 0
/* 80218FB4 00215EF4  48 00 02 B4 */	b lbl_80219268
lbl_80218FB8:
/* 80218FB8 00215EF8  3B 01 00 70 */	addi r24, r1, 0x70
/* 80218FBC 00215EFC  93 01 00 40 */	stw r24, 0x40(r1)
/* 80218FC0 00215F00  3B E0 00 00 */	li r31, 0
/* 80218FC4 00215F04  3C 80 80 3B */	lis r4, __vt__10JSUIosBase@ha
/* 80218FC8 00215F08  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80218FCC 00215F0C  3B C4 87 68 */	addi r30, r4, __vt__10JSUIosBase@l
/* 80218FD0 00215F10  93 E1 00 88 */	stw r31, 0x88(r1)
/* 80218FD4 00215F14  3C C0 80 3B */	lis r6, __vt__14JSUInputStream@ha
/* 80218FD8 00215F18  3C A0 80 3B */	lis r5, __vt__20JSURandomInputStream@ha
/* 80218FDC 00215F1C  93 E1 00 84 */	stw r31, 0x84(r1)
/* 80218FE0 00215F20  3B 45 87 88 */	addi r26, r5, __vt__20JSURandomInputStream@l
/* 80218FE4 00215F24  3C 80 80 3B */	lis r4, __vt__20JSUMemoryInputStream@ha
/* 80218FE8 00215F28  93 C3 00 00 */	stw r30, 0(r3)
/* 80218FEC 00215F2C  3B 66 87 AC */	addi r27, r6, __vt__14JSUInputStream@l
/* 80218FF0 00215F30  3B 24 87 F0 */	addi r25, r4, __vt__20JSUMemoryInputStream@l
/* 80218FF4 00215F34  9B E3 00 04 */	stb r31, 4(r3)
/* 80218FF8 00215F38  38 9C 00 00 */	addi r4, r28, 0
/* 80218FFC 00215F3C  38 A0 00 20 */	li r5, 0x20
/* 80219000 00215F40  93 63 00 00 */	stw r27, 0(r3)
/* 80219004 00215F44  93 43 00 00 */	stw r26, 0(r3)
/* 80219008 00215F48  93 23 00 00 */	stw r25, 0(r3)
/* 8021900C 00215F4C  4B DF 60 41 */	bl setBuffer__20JSUMemoryInputStreamFPCvl
/* 80219010 00215F50  38 78 00 00 */	addi r3, r24, 0
/* 80219014 00215F54  38 80 00 08 */	li r4, 8
/* 80219018 00215F58  4B DF 58 DD */	bl skip__20JSURandomInputStreamFl
/* 8021901C 00215F5C  38 78 00 00 */	addi r3, r24, 0
/* 80219020 00215F60  38 81 00 88 */	addi r4, r1, 0x88
/* 80219024 00215F64  38 A0 00 04 */	li r5, 4
/* 80219028 00215F68  4B DF 55 69 */	bl read__14JSUInputStreamFPvl
/* 8021902C 00215F6C  38 78 00 00 */	addi r3, r24, 0
/* 80219030 00215F70  38 81 00 84 */	addi r4, r1, 0x84
/* 80219034 00215F74  38 A0 00 04 */	li r5, 4
/* 80219038 00215F78  4B DF 55 59 */	bl read__14JSUInputStreamFPvl
/* 8021903C 00215F7C  93 21 00 70 */	stw r25, 0x70(r1)
/* 80219040 00215F80  38 78 00 00 */	addi r3, r24, 0
/* 80219044 00215F84  38 80 00 00 */	li r4, 0
/* 80219048 00215F88  93 41 00 70 */	stw r26, 0x70(r1)
/* 8021904C 00215F8C  4B DF 54 E9 */	bl __dt__14JSUInputStreamFv
/* 80219050 00215F90  38 01 00 54 */	addi r0, r1, 0x54
/* 80219054 00215F94  80 61 00 88 */	lwz r3, 0x88(r1)
/* 80219058 00215F98  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8021905C 00215F9C  38 9C 00 20 */	addi r4, r28, 0x20
/* 80219060 00215FA0  54 65 28 34 */	slwi r5, r3, 5
/* 80219064 00215FA4  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80219068 00215FA8  38 A5 FF E0 */	addi r5, r5, -32
/* 8021906C 00215FAC  93 E1 00 68 */	stw r31, 0x68(r1)
/* 80219070 00215FB0  93 C3 00 00 */	stw r30, 0(r3)
/* 80219074 00215FB4  3B C0 00 00 */	li r30, 0
/* 80219078 00215FB8  9B E3 00 04 */	stb r31, 4(r3)
/* 8021907C 00215FBC  93 63 00 00 */	stw r27, 0(r3)
/* 80219080 00215FC0  93 43 00 00 */	stw r26, 0(r3)
/* 80219084 00215FC4  93 23 00 00 */	stw r25, 0(r3)
/* 80219088 00215FC8  4B DF 5F C5 */	bl setBuffer__20JSUMemoryInputStreamFPCvl
/* 8021908C 00215FCC  3C 60 44 41 */	lis r3, 0x44415431@ha
/* 80219090 00215FD0  3C 80 49 4E */	lis r4, 0x494E4631@ha
/* 80219094 00215FD4  3B 43 54 31 */	addi r26, r3, 0x44415431@l
/* 80219098 00215FD8  3B 24 46 31 */	addi r25, r4, 0x494E4631@l
/* 8021909C 00215FDC  3B E0 00 00 */	li r31, 0
/* 802190A0 00215FE0  48 00 01 38 */	b lbl_802191D8
lbl_802190A4:
/* 802190A4 00215FE4  38 61 00 54 */	addi r3, r1, 0x54
/* 802190A8 00215FE8  38 81 00 38 */	addi r4, r1, 0x38
/* 802190AC 00215FEC  38 A0 00 04 */	li r5, 4
/* 802190B0 00215FF0  4B DF 54 E1 */	bl read__14JSUInputStreamFPvl
/* 802190B4 00215FF4  83 01 00 38 */	lwz r24, 0x38(r1)
/* 802190B8 00215FF8  38 61 00 54 */	addi r3, r1, 0x54
/* 802190BC 00215FFC  38 81 00 34 */	addi r4, r1, 0x34
/* 802190C0 00216000  38 A0 00 04 */	li r5, 4
/* 802190C4 00216004  4B DF 54 CD */	bl read__14JSUInputStreamFPvl
/* 802190C8 00216008  7C 18 C8 00 */	cmpw r24, r25
/* 802190CC 0021600C  83 61 00 34 */	lwz r27, 0x34(r1)
/* 802190D0 00216010  41 82 00 14 */	beq lbl_802190E4
/* 802190D4 00216014  40 80 00 F8 */	bge lbl_802191CC
/* 802190D8 00216018  7C 18 D0 00 */	cmpw r24, r26
/* 802190DC 0021601C  41 82 00 DC */	beq lbl_802191B8
/* 802190E0 00216020  48 00 00 EC */	b lbl_802191CC
lbl_802190E4:
/* 802190E4 00216024  38 61 00 54 */	addi r3, r1, 0x54
/* 802190E8 00216028  38 81 00 32 */	addi r4, r1, 0x32
/* 802190EC 0021602C  38 A0 00 02 */	li r5, 2
/* 802190F0 00216030  4B DF 54 A1 */	bl read__14JSUInputStreamFPvl
/* 802190F4 00216034  A0 01 00 32 */	lhz r0, 0x32(r1)
/* 802190F8 00216038  7C 1D 00 40 */	cmplw r29, r0
/* 802190FC 0021603C  41 80 00 30 */	blt lbl_8021912C
/* 80219100 00216040  3C 60 80 3B */	lis r3, __vt__20JSUMemoryInputStream@ha
/* 80219104 00216044  38 03 87 F0 */	addi r0, r3, __vt__20JSUMemoryInputStream@l
/* 80219108 00216048  3C 60 80 3B */	lis r3, __vt__20JSURandomInputStream@ha
/* 8021910C 0021604C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80219110 00216050  38 03 87 88 */	addi r0, r3, __vt__20JSURandomInputStream@l
/* 80219114 00216054  90 01 00 54 */	stw r0, 0x54(r1)
/* 80219118 00216058  38 61 00 54 */	addi r3, r1, 0x54
/* 8021911C 0021605C  38 80 00 00 */	li r4, 0
/* 80219120 00216060  4B DF 54 15 */	bl __dt__14JSUInputStreamFv
/* 80219124 00216064  38 60 00 00 */	li r3, 0
/* 80219128 00216068  48 00 01 40 */	b lbl_80219268
lbl_8021912C:
/* 8021912C 0021606C  38 61 00 54 */	addi r3, r1, 0x54
/* 80219130 00216070  38 81 00 30 */	addi r4, r1, 0x30
/* 80219134 00216074  38 A0 00 02 */	li r5, 2
/* 80219138 00216078  4B DF 54 59 */	bl read__14JSUInputStreamFPvl
/* 8021913C 0021607C  A3 01 00 30 */	lhz r24, 0x30(r1)
/* 80219140 00216080  38 61 00 54 */	addi r3, r1, 0x54
/* 80219144 00216084  38 80 00 04 */	li r4, 4
/* 80219148 00216088  4B DF 57 AD */	bl skip__20JSURandomInputStreamFl
/* 8021914C 0021608C  7F 1D C1 D6 */	mullw r24, r29, r24
/* 80219150 00216090  38 98 00 00 */	addi r4, r24, 0
/* 80219154 00216094  38 61 00 54 */	addi r3, r1, 0x54
/* 80219158 00216098  4B DF 57 9D */	bl skip__20JSURandomInputStreamFl
/* 8021915C 0021609C  38 61 00 54 */	addi r3, r1, 0x54
/* 80219160 002160A0  38 81 00 68 */	addi r4, r1, 0x68
/* 80219164 002160A4  38 A0 00 04 */	li r5, 4
/* 80219168 002160A8  4B DF 54 29 */	bl read__14JSUInputStreamFPvl
/* 8021916C 002160AC  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80219170 002160B0  28 00 00 00 */	cmplwi r0, 0
/* 80219174 002160B4  40 82 00 30 */	bne lbl_802191A4
/* 80219178 002160B8  3C 60 80 3B */	lis r3, __vt__20JSUMemoryInputStream@ha
/* 8021917C 002160BC  38 03 87 F0 */	addi r0, r3, __vt__20JSUMemoryInputStream@l
/* 80219180 002160C0  3C 60 80 3B */	lis r3, __vt__20JSURandomInputStream@ha
/* 80219184 002160C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80219188 002160C8  38 03 87 88 */	addi r0, r3, __vt__20JSURandomInputStream@l
/* 8021918C 002160CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80219190 002160D0  38 61 00 54 */	addi r3, r1, 0x54
/* 80219194 002160D4  38 80 00 00 */	li r4, 0
/* 80219198 002160D8  4B DF 53 9D */	bl __dt__14JSUInputStreamFv
/* 8021919C 002160DC  38 60 00 00 */	li r3, 0
/* 802191A0 002160E0  48 00 00 C8 */	b lbl_80219268
lbl_802191A4:
/* 802191A4 002160E4  7C 98 D8 50 */	subf r4, r24, r27
/* 802191A8 002160E8  38 61 00 54 */	addi r3, r1, 0x54
/* 802191AC 002160EC  38 84 FF EC */	addi r4, r4, -20
/* 802191B0 002160F0  4B DF 57 45 */	bl skip__20JSURandomInputStreamFl
/* 802191B4 002160F4  48 00 00 24 */	b lbl_802191D8
lbl_802191B8:
/* 802191B8 002160F8  83 C1 00 64 */	lwz r30, 0x64(r1)
/* 802191BC 002160FC  38 61 00 54 */	addi r3, r1, 0x54
/* 802191C0 00216100  38 9B FF F8 */	addi r4, r27, -8
/* 802191C4 00216104  4B DF 57 31 */	bl skip__20JSURandomInputStreamFl
/* 802191C8 00216108  48 00 00 10 */	b lbl_802191D8
lbl_802191CC:
/* 802191CC 0021610C  38 61 00 54 */	addi r3, r1, 0x54
/* 802191D0 00216110  38 9B FF F8 */	addi r4, r27, -8
/* 802191D4 00216114  4B DF 57 21 */	bl skip__20JSURandomInputStreamFl
lbl_802191D8:
/* 802191D8 00216118  2C 1E 00 00 */	cmpwi r30, 0
/* 802191DC 0021611C  41 82 00 10 */	beq lbl_802191EC
/* 802191E0 00216120  80 01 00 68 */	lwz r0, 0x68(r1)
/* 802191E4 00216124  28 00 00 00 */	cmplwi r0, 0
/* 802191E8 00216128  40 82 00 38 */	bne lbl_80219220
lbl_802191EC:
/* 802191EC 0021612C  81 81 00 54 */	lwz r12, 0x54(r1)
/* 802191F0 00216130  38 61 00 54 */	addi r3, r1, 0x54
/* 802191F4 00216134  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802191F8 00216138  7D 88 03 A6 */	mtlr r12
/* 802191FC 0021613C  4E 80 00 21 */	blrl 
/* 80219200 00216140  81 81 00 54 */	lwz r12, 0x54(r1)
/* 80219204 00216144  3B 63 00 00 */	addi r27, r3, 0
/* 80219208 00216148  38 61 00 54 */	addi r3, r1, 0x54
/* 8021920C 0021614C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80219210 00216150  7D 88 03 A6 */	mtlr r12
/* 80219214 00216154  4E 80 00 21 */	blrl 
/* 80219218 00216158  7C 03 D8 51 */	subf. r0, r3, r27
/* 8021921C 0021615C  40 82 FE 88 */	bne lbl_802190A4
lbl_80219220:
/* 80219220 00216160  2C 1E 00 00 */	cmpwi r30, 0
/* 80219224 00216164  41 82 00 1C */	beq lbl_80219240
/* 80219228 00216168  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8021922C 0021616C  28 00 00 00 */	cmplwi r0, 0
/* 80219230 00216170  41 82 00 10 */	beq lbl_80219240
/* 80219234 00216174  7C 7E 02 14 */	add r3, r30, r0
/* 80219238 00216178  3B E3 00 20 */	addi r31, r3, 0x20
/* 8021923C 0021617C  7F FC FA 14 */	add r31, r28, r31
lbl_80219240:
/* 80219240 00216180  3C 60 80 3B */	lis r3, __vt__20JSUMemoryInputStream@ha
/* 80219244 00216184  38 03 87 F0 */	addi r0, r3, __vt__20JSUMemoryInputStream@l
/* 80219248 00216188  3C 60 80 3B */	lis r3, __vt__20JSURandomInputStream@ha
/* 8021924C 0021618C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80219250 00216190  38 03 87 88 */	addi r0, r3, __vt__20JSURandomInputStream@l
/* 80219254 00216194  90 01 00 54 */	stw r0, 0x54(r1)
/* 80219258 00216198  38 61 00 54 */	addi r3, r1, 0x54
/* 8021925C 0021619C  38 80 00 00 */	li r4, 0
/* 80219260 002161A0  4B DF 52 D5 */	bl __dt__14JSUInputStreamFv
/* 80219264 002161A4  7F E3 FB 78 */	mr r3, r31
lbl_80219268:
/* 80219268 002161A8  BB 01 00 90 */	lmw r24, 0x90(r1)
/* 8021926C 002161AC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80219270 002161B0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80219274 002161B4  7C 08 03 A6 */	mtlr r0
/* 80219278 002161B8  4E 80 00 20 */	blr 

.global SMSMakeTextBuffer__FP10J2DTextBoxi
SMSMakeTextBuffer__FP10J2DTextBoxi:
/* 8021927C 002161BC  7C 08 02 A6 */	mflr r0
/* 80219280 002161C0  90 01 00 04 */	stw r0, 4(r1)
/* 80219284 002161C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80219288 002161C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021928C 002161CC  3B E4 00 00 */	addi r31, r4, 0
/* 80219290 002161D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80219294 002161D4  3B C3 00 00 */	addi r30, r3, 0
/* 80219298 002161D8  38 7F 00 00 */	addi r3, r31, 0
/* 8021929C 002161DC  4B DF 37 15 */	bl __nwa__FUl
/* 802192A0 002161E0  34 1F FF FF */	addic. r0, r31, -1
/* 802192A4 002161E4  38 83 00 00 */	addi r4, r3, 0
/* 802192A8 002161E8  38 A0 00 00 */	li r5, 0
/* 802192AC 002161EC  40 81 00 80 */	ble lbl_8021932C
/* 802192B0 002161F0  38 1F FF FF */	addi r0, r31, -1
/* 802192B4 002161F4  2C 00 00 08 */	cmpwi r0, 8
/* 802192B8 002161F8  38 7F FF F7 */	addi r3, r31, -9
/* 802192BC 002161FC  40 81 00 48 */	ble lbl_80219304
/* 802192C0 00216200  38 03 00 07 */	addi r0, r3, 7
/* 802192C4 00216204  54 00 E8 FE */	srwi r0, r0, 3
/* 802192C8 00216208  2C 03 00 00 */	cmpwi r3, 0
/* 802192CC 0021620C  7C 09 03 A6 */	mtctr r0
/* 802192D0 00216210  38 00 00 20 */	li r0, 0x20
/* 802192D4 00216214  40 81 00 30 */	ble lbl_80219304
lbl_802192D8:
/* 802192D8 00216218  7C 64 2A 14 */	add r3, r4, r5
/* 802192DC 0021621C  98 03 00 00 */	stb r0, 0(r3)
/* 802192E0 00216220  38 A5 00 08 */	addi r5, r5, 8
/* 802192E4 00216224  98 03 00 01 */	stb r0, 1(r3)
/* 802192E8 00216228  98 03 00 02 */	stb r0, 2(r3)
/* 802192EC 0021622C  98 03 00 03 */	stb r0, 3(r3)
/* 802192F0 00216230  98 03 00 04 */	stb r0, 4(r3)
/* 802192F4 00216234  98 03 00 05 */	stb r0, 5(r3)
/* 802192F8 00216238  98 03 00 06 */	stb r0, 6(r3)
/* 802192FC 0021623C  98 03 00 07 */	stb r0, 7(r3)
/* 80219300 00216240  42 00 FF D8 */	bdnz lbl_802192D8
lbl_80219304:
/* 80219304 00216244  38 7F FF FF */	addi r3, r31, -1
/* 80219308 00216248  7C 05 18 50 */	subf r0, r5, r3
/* 8021930C 0021624C  7C 05 18 00 */	cmpw r5, r3
/* 80219310 00216250  7C 09 03 A6 */	mtctr r0
/* 80219314 00216254  7C 64 2A 14 */	add r3, r4, r5
/* 80219318 00216258  38 00 00 20 */	li r0, 0x20
/* 8021931C 0021625C  40 80 00 10 */	bge lbl_8021932C
lbl_80219320:
/* 80219320 00216260  98 03 00 00 */	stb r0, 0(r3)
/* 80219324 00216264  38 63 00 01 */	addi r3, r3, 1
/* 80219328 00216268  42 00 FF F8 */	bdnz lbl_80219320
lbl_8021932C:
/* 8021932C 0021626C  7C 64 FA 14 */	add r3, r4, r31
/* 80219330 00216270  4C C6 31 82 */	crclr 6
/* 80219334 00216274  38 00 00 00 */	li r0, 0
/* 80219338 00216278  98 03 FF FF */	stb r0, -1(r3)
/* 8021933C 0021627C  7F C3 F3 78 */	mr r3, r30
/* 80219340 00216280  4B E0 09 E5 */	bl setString__10J2DTextBoxFPCce
/* 80219344 00216284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80219348 00216288  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021934C 0021628C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80219350 00216290  7C 08 03 A6 */	mtlr r0
/* 80219354 00216294  38 21 00 20 */	addi r1, r1, 0x20
/* 80219358 00216298  4E 80 00 20 */	blr 
