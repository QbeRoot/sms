.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global SMS_InitChangeNpcColor__FPC6MActorPC16TColorChangeInfosPC8_GXColor
SMS_InitChangeNpcColor__FPC6MActorPC16TColorChangeInfosPC8_GXColor:
/* 801770EC 0017402C  7C 08 02 A6 */	mflr r0
/* 801770F0 00174030  90 01 00 04 */	stw r0, 4(r1)
/* 801770F4 00174034  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801770F8 00174038  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 801770FC 0017403C  7C 9C 23 78 */	mr r28, r4
/* 80177100 00174040  7C BB 2B 78 */	mr r27, r5
/* 80177104 00174044  7C DD 33 78 */	mr r29, r6
/* 80177108 00174048  80 E3 00 04 */	lwz r7, 4(r3)
/* 8017710C 0017404C  80 84 00 04 */	lwz r4, 4(r4)
/* 80177110 00174050  80 67 00 04 */	lwz r3, 4(r7)
/* 80177114 00174054  7C FE 3B 78 */	mr r30, r7
/* 80177118 00174058  80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 8017711C 0017405C  4B E9 BE D5 */	bl getIndex__10JUTNameTabCFPCc
/* 80177120 00174060  80 1C 00 00 */	lwz r0, 0(r28)
/* 80177124 00174064  3B E3 00 00 */	addi r31, r3, 0
/* 80177128 00174068  2C 00 00 01 */	cmpwi r0, 1
/* 8017712C 0017406C  41 82 00 88 */	beq lbl_801771B4
/* 80177130 00174070  40 80 00 10 */	bge lbl_80177140
/* 80177134 00174074  2C 00 00 00 */	cmpwi r0, 0
/* 80177138 00174078  40 80 00 14 */	bge lbl_8017714C
/* 8017713C 0017407C  48 00 01 CC */	b lbl_80177308
lbl_80177140:
/* 80177140 00174080  2C 00 00 03 */	cmpwi r0, 3
/* 80177144 00174084  40 80 01 C4 */	bge lbl_80177308
/* 80177148 00174088  48 00 00 B8 */	b lbl_80177200
lbl_8017714C:
/* 8017714C 0017408C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80177150 00174090  28 00 00 00 */	cmplwi r0, 0
/* 80177154 00174094  41 82 01 B4 */	beq lbl_80177308
/* 80177158 00174098  38 60 00 04 */	li r3, 4
/* 8017715C 0017409C  4B E9 57 55 */	bl __nw__FUl
/* 80177160 001740A0  7F 60 07 34 */	extsh r0, r27
/* 80177164 001740A4  80 9C 00 08 */	lwz r4, 8(r28)
/* 80177168 001740A8  54 08 18 38 */	slwi r8, r0, 3
/* 8017716C 001740AC  7C 04 42 AE */	lhax r0, r4, r8
/* 80177170 001740B0  7C 66 1B 78 */	mr r6, r3
/* 80177174 001740B4  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80177178 001740B8  98 03 00 00 */	stb r0, 0(r3)
/* 8017717C 001740BC  38 00 00 FF */	li r0, 0xff
/* 80177180 001740C0  38 7E 00 00 */	addi r3, r30, 0
/* 80177184 001740C4  80 BC 00 08 */	lwz r5, 8(r28)
/* 80177188 001740C8  7C A5 42 14 */	add r5, r5, r8
/* 8017718C 001740CC  A8 E5 00 02 */	lha r7, 2(r5)
/* 80177190 001740D0  38 A0 00 00 */	li r5, 0
/* 80177194 001740D4  98 E6 00 01 */	stb r7, 1(r6)
/* 80177198 001740D8  80 FC 00 08 */	lwz r7, 8(r28)
/* 8017719C 001740DC  7C E7 42 14 */	add r7, r7, r8
/* 801771A0 001740E0  A8 E7 00 04 */	lha r7, 4(r7)
/* 801771A4 001740E4  98 E6 00 02 */	stb r7, 2(r6)
/* 801771A8 001740E8  98 06 00 03 */	stb r0, 3(r6)
/* 801771AC 001740EC  4B F5 9F 31 */	bl SMS_InitPacket_MatColor__FP8J3DModelUs12_GXChannelIDPC8_GXColor
/* 801771B0 001740F0  48 00 01 58 */	b lbl_80177308
lbl_801771B4:
/* 801771B4 001740F4  80 7C 00 08 */	lwz r3, 8(r28)
/* 801771B8 001740F8  28 03 00 00 */	cmplwi r3, 0
/* 801771BC 001740FC  41 82 01 4C */	beq lbl_80177308
/* 801771C0 00174100  7F 60 07 34 */	extsh r0, r27
/* 801771C4 00174104  54 00 18 38 */	slwi r0, r0, 3
/* 801771C8 00174108  28 1D 00 00 */	cmplwi r29, 0
/* 801771CC 0017410C  7C C3 02 14 */	add r6, r3, r0
/* 801771D0 00174110  41 82 00 1C */	beq lbl_801771EC
/* 801771D4 00174114  38 7E 00 00 */	addi r3, r30, 0
/* 801771D8 00174118  38 FD 00 00 */	addi r7, r29, 0
/* 801771DC 0017411C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 801771E0 00174120  38 A0 00 01 */	li r5, 1
/* 801771E4 00174124  4B F5 9A 35 */	bl SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
/* 801771E8 00174128  48 00 01 20 */	b lbl_80177308
lbl_801771EC:
/* 801771EC 0017412C  38 7E 00 00 */	addi r3, r30, 0
/* 801771F0 00174130  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 801771F4 00174134  38 A0 00 01 */	li r5, 1
/* 801771F8 00174138  4B F5 9E 5D */	bl SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
/* 801771FC 0017413C  48 00 01 0C */	b lbl_80177308
lbl_80177200:
/* 80177200 00174140  80 9C 00 08 */	lwz r4, 8(r28)
/* 80177204 00174144  28 04 00 00 */	cmplwi r4, 0
/* 80177208 00174148  41 82 00 5C */	beq lbl_80177264
/* 8017720C 0017414C  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80177210 00174150  28 03 00 00 */	cmplwi r3, 0
/* 80177214 00174154  41 82 00 50 */	beq lbl_80177264
/* 80177218 00174158  7F 60 07 34 */	extsh r0, r27
/* 8017721C 0017415C  54 00 18 38 */	slwi r0, r0, 3
/* 80177220 00174160  28 1D 00 00 */	cmplwi r29, 0
/* 80177224 00174164  7D 03 02 14 */	add r8, r3, r0
/* 80177228 00174168  7C C4 02 14 */	add r6, r4, r0
/* 8017722C 0017416C  41 82 00 20 */	beq lbl_8017724C
/* 80177230 00174170  38 7E 00 00 */	addi r3, r30, 0
/* 80177234 00174174  39 3D 00 00 */	addi r9, r29, 0
/* 80177238 00174178  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 8017723C 0017417C  38 A0 00 02 */	li r5, 2
/* 80177240 00174180  38 E0 00 03 */	li r7, 3
/* 80177244 00174184  4B F5 99 45 */	bl SMS_InitPacket_TwoTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10PC8_GXColor
/* 80177248 00174188  48 00 00 C0 */	b lbl_80177308
lbl_8017724C:
/* 8017724C 0017418C  38 7E 00 00 */	addi r3, r30, 0
/* 80177250 00174190  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80177254 00174194  38 A0 00 02 */	li r5, 2
/* 80177258 00174198  38 E0 00 03 */	li r7, 3
/* 8017725C 0017419C  4B F5 9D 71 */	bl SMS_InitPacket_TwoTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
/* 80177260 001741A0  48 00 00 A8 */	b lbl_80177308
lbl_80177264:
/* 80177264 001741A4  28 04 00 00 */	cmplwi r4, 0
/* 80177268 001741A8  41 82 00 50 */	beq lbl_801772B8
/* 8017726C 001741AC  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80177270 001741B0  28 00 00 00 */	cmplwi r0, 0
/* 80177274 001741B4  40 82 00 44 */	bne lbl_801772B8
/* 80177278 001741B8  7F 60 07 34 */	extsh r0, r27
/* 8017727C 001741BC  54 00 18 38 */	slwi r0, r0, 3
/* 80177280 001741C0  28 1D 00 00 */	cmplwi r29, 0
/* 80177284 001741C4  7C C4 02 14 */	add r6, r4, r0
/* 80177288 001741C8  41 82 00 1C */	beq lbl_801772A4
/* 8017728C 001741CC  38 7E 00 00 */	addi r3, r30, 0
/* 80177290 001741D0  38 FD 00 00 */	addi r7, r29, 0
/* 80177294 001741D4  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80177298 001741D8  38 A0 00 02 */	li r5, 2
/* 8017729C 001741DC  4B F5 99 7D */	bl SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
/* 801772A0 001741E0  48 00 00 68 */	b lbl_80177308
lbl_801772A4:
/* 801772A4 001741E4  38 7E 00 00 */	addi r3, r30, 0
/* 801772A8 001741E8  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 801772AC 001741EC  38 A0 00 02 */	li r5, 2
/* 801772B0 001741F0  4B F5 9D A5 */	bl SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
/* 801772B4 001741F4  48 00 00 54 */	b lbl_80177308
lbl_801772B8:
/* 801772B8 001741F8  28 04 00 00 */	cmplwi r4, 0
/* 801772BC 001741FC  40 82 00 4C */	bne lbl_80177308
/* 801772C0 00174200  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801772C4 00174204  28 03 00 00 */	cmplwi r3, 0
/* 801772C8 00174208  41 82 00 40 */	beq lbl_80177308
/* 801772CC 0017420C  7F 60 07 34 */	extsh r0, r27
/* 801772D0 00174210  54 00 18 38 */	slwi r0, r0, 3
/* 801772D4 00174214  28 1D 00 00 */	cmplwi r29, 0
/* 801772D8 00174218  7C C3 02 14 */	add r6, r3, r0
/* 801772DC 0017421C  41 82 00 1C */	beq lbl_801772F8
/* 801772E0 00174220  38 7E 00 00 */	addi r3, r30, 0
/* 801772E4 00174224  38 FD 00 00 */	addi r7, r29, 0
/* 801772E8 00174228  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 801772EC 0017422C  38 A0 00 03 */	li r5, 3
/* 801772F0 00174230  4B F5 99 29 */	bl SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
/* 801772F4 00174234  48 00 00 14 */	b lbl_80177308
lbl_801772F8:
/* 801772F8 00174238  38 7E 00 00 */	addi r3, r30, 0
/* 801772FC 0017423C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80177300 00174240  38 A0 00 03 */	li r5, 3
/* 80177304 00174244  4B F5 9D 51 */	bl SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
lbl_80177308:
/* 80177308 00174248  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8017730C 0017424C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80177310 00174250  38 21 00 38 */	addi r1, r1, 0x38
/* 80177314 00174254  7C 08 03 A6 */	mtlr r0
/* 80177318 00174258  4E 80 00 20 */	blr 
