.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global read__13TMarioGamePadFv
read__13TMarioGamePadFv:
/* 800FBA58 000F8998  7C 08 02 A6 */	mflr r0
/* 800FBA5C 000F899C  90 01 00 04 */	stw r0, 4(r1)
/* 800FBA60 000F89A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FBA64 000F89A4  4B F1 61 75 */	bl read__10JUTGamePadFv
/* 800FBA68 000F89A8  38 60 00 00 */	li r3, 0
/* 800FBA6C 000F89AC  34 01 00 0C */	addic. r0, r1, 0xc
/* 800FBA70 000F89B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 800FBA74 000F89B4  41 82 00 0C */	beq lbl_800FBA80
/* 800FBA78 000F89B8  80 0D 8D E4 */	lwz r0, sResetOccurredPort__Q210JUTGamePad13C3ButtonReset-_SDA_BASE_(r13)
/* 800FBA7C 000F89BC  90 01 00 0C */	stw r0, 0xc(r1)
lbl_800FBA80:
/* 800FBA80 000F89C0  88 0D 8D E1 */	lbz r0, sResetOccurred__Q210JUTGamePad13C3ButtonReset-_SDA_BASE_(r13)
/* 800FBA84 000F89C4  28 00 00 00 */	cmplwi r0, 0
/* 800FBA88 000F89C8  41 82 00 40 */	beq lbl_800FBAC8
/* 800FBA8C 000F89CC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800FBA90 000F89D0  2C 04 FF FF */	cmpwi r4, -1
/* 800FBA94 000F89D4  40 82 00 14 */	bne lbl_800FBAA8
/* 800FBA98 000F89D8  A0 0D 98 28 */	lhz r0, mResetFlag__13TMarioGamePad-_SDA_BASE_(r13)
/* 800FBA9C 000F89DC  60 00 00 0F */	ori r0, r0, 0xf
/* 800FBAA0 000F89E0  B0 0D 98 28 */	sth r0, mResetFlag__13TMarioGamePad-_SDA_BASE_(r13)
/* 800FBAA4 000F89E4  48 00 00 1C */	b lbl_800FBAC0
lbl_800FBAA8:
/* 800FBAA8 000F89E8  38 00 00 01 */	li r0, 1
/* 800FBAAC 000F89EC  A0 6D 98 28 */	lhz r3, mResetFlag__13TMarioGamePad-_SDA_BASE_(r13)
/* 800FBAB0 000F89F0  7C 00 20 30 */	slw r0, r0, r4
/* 800FBAB4 000F89F4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800FBAB8 000F89F8  7C 60 03 78 */	or r0, r3, r0
/* 800FBABC 000F89FC  B0 0D 98 28 */	sth r0, mResetFlag__13TMarioGamePad-_SDA_BASE_(r13)
lbl_800FBAC0:
/* 800FBAC0 000F8A00  38 00 00 00 */	li r0, 0
/* 800FBAC4 000F8A04  98 0D 8D E1 */	stb r0, sResetOccurred__Q210JUTGamePad13C3ButtonReset-_SDA_BASE_(r13)
lbl_800FBAC8:
/* 800FBAC8 000F8A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FBACC 000F8A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FBAD0 000F8A10  7C 08 03 A6 */	mtlr r0
/* 800FBAD4 000F8A14  4E 80 00 20 */	blr 

.global onNeutralMarioKey__13TMarioGamePadFv
onNeutralMarioKey__13TMarioGamePadFv:
/* 800FBAD8 000F8A18  38 00 00 3C */	li r0, 0x3c
/* 800FBADC 000F8A1C  B0 03 00 E4 */	sth r0, 0xe4(r3)
/* 800FBAE0 000F8A20  4E 80 00 20 */	blr 

.global updateMeaning__13TMarioGamePadFv
updateMeaning__13TMarioGamePadFv:
/* 800FBAE4 000F8A24  7C 08 02 A6 */	mflr r0
/* 800FBAE8 000F8A28  90 01 00 04 */	stw r0, 4(r1)
/* 800FBAEC 000F8A2C  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 800FBAF0 000F8A30  93 E1 01 8C */	stw r31, 0x18c(r1)
/* 800FBAF4 000F8A34  93 C1 01 88 */	stw r30, 0x188(r1)
/* 800FBAF8 000F8A38  7C 7E 1B 78 */	mr r30, r3
/* 800FBAFC 000F8A3C  93 A1 01 84 */	stw r29, 0x184(r1)
/* 800FBB00 000F8A40  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 800FBB04 000F8A44  2C 03 00 00 */	cmpwi r3, 0
/* 800FBB08 000F8A48  40 81 00 0C */	ble lbl_800FBB14
/* 800FBB0C 000F8A4C  38 03 FF FF */	addi r0, r3, -1
/* 800FBB10 000F8A50  90 1E 00 E8 */	stw r0, 0xe8(r30)
lbl_800FBB14:
/* 800FBB14 000F8A54  A0 9E 00 DC */	lhz r4, 0xdc(r30)
/* 800FBB18 000F8A58  38 00 00 00 */	li r0, 0
/* 800FBB1C 000F8A5C  B0 1E 00 DC */	sth r0, 0xdc(r30)
/* 800FBB20 000F8A60  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBB24 000F8A64  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 800FBB28 000F8A68  41 82 00 10 */	beq lbl_800FBB38
/* 800FBB2C 000F8A6C  A0 1E 00 DC */	lhz r0, 0xdc(r30)
/* 800FBB30 000F8A70  60 00 00 01 */	ori r0, r0, 1
/* 800FBB34 000F8A74  B0 1E 00 DC */	sth r0, 0xdc(r30)
lbl_800FBB38:
/* 800FBB38 000F8A78  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800FBB3C 000F8A7C  41 82 00 24 */	beq lbl_800FBB60
/* 800FBB40 000F8A80  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 800FBB44 000F8A84  C0 02 92 50 */	lfs f0, $$22115-_SDA2_BASE_(r2)
/* 800FBB48 000F8A88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBB4C 000F8A8C  40 81 00 30 */	ble lbl_800FBB7C
/* 800FBB50 000F8A90  A0 1E 00 DC */	lhz r0, 0xdc(r30)
/* 800FBB54 000F8A94  60 00 00 01 */	ori r0, r0, 1
/* 800FBB58 000F8A98  B0 1E 00 DC */	sth r0, 0xdc(r30)
/* 800FBB5C 000F8A9C  48 00 00 20 */	b lbl_800FBB7C
lbl_800FBB60:
/* 800FBB60 000F8AA0  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 800FBB64 000F8AA4  C0 02 92 54 */	lfs f0, $$22116-_SDA2_BASE_(r2)
/* 800FBB68 000F8AA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBB6C 000F8AAC  40 81 00 10 */	ble lbl_800FBB7C
/* 800FBB70 000F8AB0  A0 1E 00 DC */	lhz r0, 0xdc(r30)
/* 800FBB74 000F8AB4  60 00 00 01 */	ori r0, r0, 1
/* 800FBB78 000F8AB8  B0 1E 00 DC */	sth r0, 0xdc(r30)
lbl_800FBB7C:
/* 800FBB7C 000F8ABC  A0 7E 00 DC */	lhz r3, 0xdc(r30)
/* 800FBB80 000F8AC0  38 A0 00 08 */	li r5, 8
/* 800FBB84 000F8AC4  20 05 00 0A */	subfic r0, r5, 0xa
/* 800FBB88 000F8AC8  7C 63 20 78 */	andc r3, r3, r4
/* 800FBB8C 000F8ACC  7C 09 03 A6 */	mtctr r0
/* 800FBB90 000F8AD0  B0 7E 00 DE */	sth r3, 0xde(r30)
/* 800FBB94 000F8AD4  2C 05 00 0A */	cmpwi r5, 0xa
/* 800FBB98 000F8AD8  54 A3 10 3A */	slwi r3, r5, 2
/* 800FBB9C 000F8ADC  A0 1E 00 DC */	lhz r0, 0xdc(r30)
/* 800FBBA0 000F8AE0  7C 80 00 78 */	andc r0, r4, r0
/* 800FBBA4 000F8AE4  B0 1E 00 E0 */	sth r0, 0xe0(r30)
/* 800FBBA8 000F8AE8  C0 02 92 4C */	lfs f0, $$21807-_SDA2_BASE_(r2)
/* 800FBBAC 000F8AEC  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 800FBBB0 000F8AF0  D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 800FBBB4 000F8AF4  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 800FBBB8 000F8AF8  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
/* 800FBBBC 000F8AFC  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 800FBBC0 000F8B00  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 800FBBC4 000F8B04  D0 1E 00 C0 */	stfs f0, 0xc0(r30)
/* 800FBBC8 000F8B08  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 800FBBCC 000F8B0C  40 80 00 14 */	bge lbl_800FBBE0
lbl_800FBBD0:
/* 800FBBD0 000F8B10  38 03 00 A8 */	addi r0, r3, 0xa8
/* 800FBBD4 000F8B14  7C 1E 05 2E */	stfsx f0, r30, r0
/* 800FBBD8 000F8B18  38 63 00 04 */	addi r3, r3, 4
/* 800FBBDC 000F8B1C  42 00 FF F4 */	bdnz lbl_800FBBD0
lbl_800FBBE0:
/* 800FBBE0 000F8B20  83 FE 00 D0 */	lwz r31, 0xd0(r30)
/* 800FBBE4 000F8B24  38 00 00 00 */	li r0, 0
/* 800FBBE8 000F8B28  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 800FBBEC 000F8B2C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBBF0 000F8B30  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800FBBF4 000F8B34  40 82 00 18 */	bne lbl_800FBC0C
/* 800FBBF8 000F8B38  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBBFC 000F8B3C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800FBC00 000F8B40  41 82 00 18 */	beq lbl_800FBC18
/* 800FBC04 000F8B44  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 800FBC08 000F8B48  41 82 00 10 */	beq lbl_800FBC18
lbl_800FBC0C:
/* 800FBC0C 000F8B4C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBC10 000F8B50  60 00 00 01 */	ori r0, r0, 1
/* 800FBC14 000F8B54  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBC18:
/* 800FBC18 000F8B58  A0 7E 00 E2 */	lhz r3, 0xe2(r30)
/* 800FBC1C 000F8B5C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 800FBC20 000F8B60  41 82 00 70 */	beq lbl_800FBC90
/* 800FBC24 000F8B64  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBC28 000F8B68  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FBC2C 000F8B6C  40 82 00 18 */	bne lbl_800FBC44
/* 800FBC30 000F8B70  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBC34 000F8B74  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FBC38 000F8B78  41 82 00 18 */	beq lbl_800FBC50
/* 800FBC3C 000F8B7C  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 800FBC40 000F8B80  41 82 00 10 */	beq lbl_800FBC50
lbl_800FBC44:
/* 800FBC44 000F8B84  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBC48 000F8B88  60 00 00 20 */	ori r0, r0, 0x20
/* 800FBC4C 000F8B8C  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBC50:
/* 800FBC50 000F8B90  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBC54 000F8B94  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FBC58 000F8B98  40 82 00 18 */	bne lbl_800FBC70
/* 800FBC5C 000F8B9C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBC60 000F8BA0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FBC64 000F8BA4  41 82 00 18 */	beq lbl_800FBC7C
/* 800FBC68 000F8BA8  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 800FBC6C 000F8BAC  41 82 00 10 */	beq lbl_800FBC7C
lbl_800FBC70:
/* 800FBC70 000F8BB0  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBC74 000F8BB4  60 00 00 40 */	ori r0, r0, 0x40
/* 800FBC78 000F8BB8  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBC7C:
/* 800FBC7C 000F8BBC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 800FBC80 000F8BC0  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
/* 800FBC84 000F8BC4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 800FBC88 000F8BC8  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 800FBC8C 000F8BCC  48 00 06 C0 */	b lbl_800FC34C
lbl_800FBC90:
/* 800FBC90 000F8BD0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800FBC94 000F8BD4  41 82 00 E0 */	beq lbl_800FBD74
/* 800FBC98 000F8BD8  3C 60 08 00 */	lis r3, 0x08000008@ha
/* 800FBC9C 000F8BDC  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 800FBCA0 000F8BE0  38 03 00 08 */	addi r0, r3, 0x08000008@l
/* 800FBCA4 000F8BE4  7C 80 00 39 */	and. r0, r4, r0
/* 800FBCA8 000F8BE8  41 82 00 10 */	beq lbl_800FBCB8
/* 800FBCAC 000F8BEC  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBCB0 000F8BF0  60 00 00 02 */	ori r0, r0, 2
/* 800FBCB4 000F8BF4  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBCB8:
/* 800FBCB8 000F8BF8  3C 60 04 00 */	lis r3, 0x04000004@ha
/* 800FBCBC 000F8BFC  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 800FBCC0 000F8C00  38 03 00 04 */	addi r0, r3, 0x04000004@l
/* 800FBCC4 000F8C04  7C 80 00 39 */	and. r0, r4, r0
/* 800FBCC8 000F8C08  41 82 00 10 */	beq lbl_800FBCD8
/* 800FBCCC 000F8C0C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBCD0 000F8C10  60 00 00 04 */	ori r0, r0, 4
/* 800FBCD4 000F8C14  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBCD8:
/* 800FBCD8 000F8C18  3C 60 01 00 */	lis r3, 0x01000001@ha
/* 800FBCDC 000F8C1C  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 800FBCE0 000F8C20  38 03 00 01 */	addi r0, r3, 0x01000001@l
/* 800FBCE4 000F8C24  7C 80 00 39 */	and. r0, r4, r0
/* 800FBCE8 000F8C28  41 82 00 10 */	beq lbl_800FBCF8
/* 800FBCEC 000F8C2C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBCF0 000F8C30  60 00 00 08 */	ori r0, r0, 8
/* 800FBCF4 000F8C34  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBCF8:
/* 800FBCF8 000F8C38  3C 60 02 00 */	lis r3, 0x02000002@ha
/* 800FBCFC 000F8C3C  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 800FBD00 000F8C40  38 03 00 02 */	addi r0, r3, 0x02000002@l
/* 800FBD04 000F8C44  7C 80 00 39 */	and. r0, r4, r0
/* 800FBD08 000F8C48  41 82 00 10 */	beq lbl_800FBD18
/* 800FBD0C 000F8C4C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBD10 000F8C50  60 00 00 10 */	ori r0, r0, 0x10
/* 800FBD14 000F8C54  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBD18:
/* 800FBD18 000F8C58  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBD1C 000F8C5C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FBD20 000F8C60  40 82 00 18 */	bne lbl_800FBD38
/* 800FBD24 000F8C64  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBD28 000F8C68  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FBD2C 000F8C6C  41 82 00 18 */	beq lbl_800FBD44
/* 800FBD30 000F8C70  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 800FBD34 000F8C74  41 82 00 10 */	beq lbl_800FBD44
lbl_800FBD38:
/* 800FBD38 000F8C78  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBD3C 000F8C7C  60 00 00 20 */	ori r0, r0, 0x20
/* 800FBD40 000F8C80  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBD44:
/* 800FBD44 000F8C84  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBD48 000F8C88  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FBD4C 000F8C8C  40 82 00 18 */	bne lbl_800FBD64
/* 800FBD50 000F8C90  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBD54 000F8C94  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FBD58 000F8C98  41 82 05 F4 */	beq lbl_800FC34C
/* 800FBD5C 000F8C9C  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 800FBD60 000F8CA0  41 82 05 EC */	beq lbl_800FC34C
lbl_800FBD64:
/* 800FBD64 000F8CA4  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBD68 000F8CA8  60 00 00 40 */	ori r0, r0, 0x40
/* 800FBD6C 000F8CAC  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 800FBD70 000F8CB0  48 00 05 DC */	b lbl_800FC34C
lbl_800FBD74:
/* 800FBD74 000F8CB4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800FBD78 000F8CB8  41 82 05 D4 */	beq lbl_800FC34C
/* 800FBD7C 000F8CBC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 800FBD80 000F8CC0  41 82 01 5C */	beq lbl_800FBEDC
/* 800FBD84 000F8CC4  3C 60 08 00 */	lis r3, 0x08000008@ha
/* 800FBD88 000F8CC8  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 800FBD8C 000F8CCC  38 03 00 08 */	addi r0, r3, 0x08000008@l
/* 800FBD90 000F8CD0  7C 80 00 39 */	and. r0, r4, r0
/* 800FBD94 000F8CD4  41 82 00 10 */	beq lbl_800FBDA4
/* 800FBD98 000F8CD8  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBD9C 000F8CDC  64 00 00 08 */	oris r0, r0, 8
/* 800FBDA0 000F8CE0  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBDA4:
/* 800FBDA4 000F8CE4  3C 60 04 00 */	lis r3, 0x04000004@ha
/* 800FBDA8 000F8CE8  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 800FBDAC 000F8CEC  38 03 00 04 */	addi r0, r3, 0x04000004@l
/* 800FBDB0 000F8CF0  7C 80 00 39 */	and. r0, r4, r0
/* 800FBDB4 000F8CF4  41 82 00 10 */	beq lbl_800FBDC4
/* 800FBDB8 000F8CF8  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBDBC 000F8CFC  64 00 00 10 */	oris r0, r0, 0x10
/* 800FBDC0 000F8D00  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBDC4:
/* 800FBDC4 000F8D04  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBDC8 000F8D08  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FBDCC 000F8D0C  40 82 00 18 */	bne lbl_800FBDE4
/* 800FBDD0 000F8D10  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBDD4 000F8D14  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FBDD8 000F8D18  41 82 00 18 */	beq lbl_800FBDF0
/* 800FBDDC 000F8D1C  57 E0 03 9D */	rlwinm. r0, r31, 0, 0xe, 0xe
/* 800FBDE0 000F8D20  41 82 00 10 */	beq lbl_800FBDF0
lbl_800FBDE4:
/* 800FBDE4 000F8D24  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBDE8 000F8D28  64 00 00 02 */	oris r0, r0, 2
/* 800FBDEC 000F8D2C  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBDF0:
/* 800FBDF0 000F8D30  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBDF4 000F8D34  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FBDF8 000F8D38  40 82 00 18 */	bne lbl_800FBE10
/* 800FBDFC 000F8D3C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBE00 000F8D40  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FBE04 000F8D44  41 82 00 18 */	beq lbl_800FBE1C
/* 800FBE08 000F8D48  57 E0 03 5B */	rlwinm. r0, r31, 0, 0xd, 0xd
/* 800FBE0C 000F8D4C  41 82 00 10 */	beq lbl_800FBE1C
lbl_800FBE10:
/* 800FBE10 000F8D50  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBE14 000F8D54  64 00 00 04 */	oris r0, r0, 4
/* 800FBE18 000F8D58  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBE1C:
/* 800FBE1C 000F8D5C  88 1E 00 26 */	lbz r0, 0x26(r30)
/* 800FBE20 000F8D60  3C 60 43 30 */	lis r3, 0x4330
/* 800FBE24 000F8D64  C8 22 92 58 */	lfd f1, $$22118-_SDA2_BASE_(r2)
/* 800FBE28 000F8D68  90 01 01 7C */	stw r0, 0x17c(r1)
/* 800FBE2C 000F8D6C  90 61 01 78 */	stw r3, 0x178(r1)
/* 800FBE30 000F8D70  C8 01 01 78 */	lfd f0, 0x178(r1)
/* 800FBE34 000F8D74  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FBE38 000F8D78  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 800FBE3C 000F8D7C  88 1E 00 27 */	lbz r0, 0x27(r30)
/* 800FBE40 000F8D80  90 01 01 74 */	stw r0, 0x174(r1)
/* 800FBE44 000F8D84  90 61 01 70 */	stw r3, 0x170(r1)
/* 800FBE48 000F8D88  C8 01 01 70 */	lfd f0, 0x170(r1)
/* 800FBE4C 000F8D8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FBE50 000F8D90  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
/* 800FBE54 000F8D94  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBE58 000F8D98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FBE5C 000F8D9C  40 82 00 18 */	bne lbl_800FBE74
/* 800FBE60 000F8DA0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBE64 000F8DA4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FBE68 000F8DA8  41 82 00 18 */	beq lbl_800FBE80
/* 800FBE6C 000F8DAC  57 E0 05 6B */	rlwinm. r0, r31, 0, 0x15, 0x15
/* 800FBE70 000F8DB0  41 82 00 10 */	beq lbl_800FBE80
lbl_800FBE74:
/* 800FBE74 000F8DB4  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBE78 000F8DB8  60 00 04 00 */	ori r0, r0, 0x400
/* 800FBE7C 000F8DBC  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBE80:
/* 800FBE80 000F8DC0  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBE84 000F8DC4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FBE88 000F8DC8  40 82 00 18 */	bne lbl_800FBEA0
/* 800FBE8C 000F8DCC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBE90 000F8DD0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FBE94 000F8DD4  41 82 00 18 */	beq lbl_800FBEAC
/* 800FBE98 000F8DD8  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 800FBE9C 000F8DDC  41 82 00 10 */	beq lbl_800FBEAC
lbl_800FBEA0:
/* 800FBEA0 000F8DE0  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBEA4 000F8DE4  60 00 10 00 */	ori r0, r0, 0x1000
/* 800FBEA8 000F8DE8  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBEAC:
/* 800FBEAC 000F8DEC  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBEB0 000F8DF0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FBEB4 000F8DF4  40 82 00 18 */	bne lbl_800FBECC
/* 800FBEB8 000F8DF8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBEBC 000F8DFC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FBEC0 000F8E00  41 82 04 8C */	beq lbl_800FC34C
/* 800FBEC4 000F8E04  57 E0 04 A5 */	rlwinm. r0, r31, 0, 0x12, 0x12
/* 800FBEC8 000F8E08  41 82 04 84 */	beq lbl_800FC34C
lbl_800FBECC:
/* 800FBECC 000F8E0C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBED0 000F8E10  60 00 20 00 */	ori r0, r0, 0x2000
/* 800FBED4 000F8E14  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 800FBED8 000F8E18  48 00 04 74 */	b lbl_800FC34C
lbl_800FBEDC:
/* 800FBEDC 000F8E1C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800FBEE0 000F8E20  40 82 04 6C */	bne lbl_800FC34C
/* 800FBEE4 000F8E24  80 1E 00 E8 */	lwz r0, 0xe8(r30)
/* 800FBEE8 000F8E28  2C 00 00 00 */	cmpwi r0, 0
/* 800FBEEC 000F8E2C  41 81 04 60 */	bgt lbl_800FC34C
/* 800FBEF0 000F8E30  80 6D A8 B0 */	lwz r3, gpCamera-_SDA_BASE_(r13)
/* 800FBEF4 000F8E34  80 83 00 50 */	lwz r4, 0x50(r3)
/* 800FBEF8 000F8E38  48 26 75 09 */	bl isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
/* 800FBEFC 000F8E3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FBF00 000F8E40  41 82 01 B0 */	beq lbl_800FC0B0
/* 800FBF04 000F8E44  88 1E 00 26 */	lbz r0, 0x26(r30)
/* 800FBF08 000F8E48  3C 60 43 30 */	lis r3, 0x4330
/* 800FBF0C 000F8E4C  C8 22 92 58 */	lfd f1, $$22118-_SDA2_BASE_(r2)
/* 800FBF10 000F8E50  90 01 01 74 */	stw r0, 0x174(r1)
/* 800FBF14 000F8E54  90 61 01 70 */	stw r3, 0x170(r1)
/* 800FBF18 000F8E58  C8 01 01 70 */	lfd f0, 0x170(r1)
/* 800FBF1C 000F8E5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FBF20 000F8E60  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 800FBF24 000F8E64  88 1E 00 27 */	lbz r0, 0x27(r30)
/* 800FBF28 000F8E68  90 01 01 7C */	stw r0, 0x17c(r1)
/* 800FBF2C 000F8E6C  90 61 01 78 */	stw r3, 0x178(r1)
/* 800FBF30 000F8E70  C8 01 01 78 */	lfd f0, 0x178(r1)
/* 800FBF34 000F8E74  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FBF38 000F8E78  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
/* 800FBF3C 000F8E7C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBF40 000F8E80  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FBF44 000F8E84  40 82 00 18 */	bne lbl_800FBF5C
/* 800FBF48 000F8E88  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBF4C 000F8E8C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FBF50 000F8E90  41 82 00 18 */	beq lbl_800FBF68
/* 800FBF54 000F8E94  57 E0 05 6B */	rlwinm. r0, r31, 0, 0x15, 0x15
/* 800FBF58 000F8E98  41 82 00 10 */	beq lbl_800FBF68
lbl_800FBF5C:
/* 800FBF5C 000F8E9C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBF60 000F8EA0  60 00 04 00 */	ori r0, r0, 0x400
/* 800FBF64 000F8EA4  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBF68:
/* 800FBF68 000F8EA8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBF6C 000F8EAC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FBF70 000F8EB0  40 82 00 18 */	bne lbl_800FBF88
/* 800FBF74 000F8EB4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBF78 000F8EB8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FBF7C 000F8EBC  41 82 00 18 */	beq lbl_800FBF94
/* 800FBF80 000F8EC0  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 800FBF84 000F8EC4  41 82 00 10 */	beq lbl_800FBF94
lbl_800FBF88:
/* 800FBF88 000F8EC8  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBF8C 000F8ECC  60 00 10 00 */	ori r0, r0, 0x1000
/* 800FBF90 000F8ED0  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBF94:
/* 800FBF94 000F8ED4  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBF98 000F8ED8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FBF9C 000F8EDC  40 82 00 18 */	bne lbl_800FBFB4
/* 800FBFA0 000F8EE0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBFA4 000F8EE4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FBFA8 000F8EE8  41 82 00 18 */	beq lbl_800FBFC0
/* 800FBFAC 000F8EEC  57 E0 04 A5 */	rlwinm. r0, r31, 0, 0x12, 0x12
/* 800FBFB0 000F8EF0  41 82 00 10 */	beq lbl_800FBFC0
lbl_800FBFB4:
/* 800FBFB4 000F8EF4  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBFB8 000F8EF8  60 00 20 00 */	ori r0, r0, 0x2000
/* 800FBFBC 000F8EFC  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBFC0:
/* 800FBFC0 000F8F00  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 800FBFC4 000F8F04  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 800FBFC8 000F8F08  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 800FBFCC 000F8F0C  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 800FBFD0 000F8F10  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FBFD4 000F8F14  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FBFD8 000F8F18  40 82 00 18 */	bne lbl_800FBFF0
/* 800FBFDC 000F8F1C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FBFE0 000F8F20  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FBFE4 000F8F24  41 82 00 18 */	beq lbl_800FBFFC
/* 800FBFE8 000F8F28  57 E0 03 DF */	rlwinm. r0, r31, 0, 0xf, 0xf
/* 800FBFEC 000F8F2C  41 82 00 10 */	beq lbl_800FBFFC
lbl_800FBFF0:
/* 800FBFF0 000F8F30  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FBFF4 000F8F34  64 00 00 01 */	oris r0, r0, 1
/* 800FBFF8 000F8F38  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FBFFC:
/* 800FBFFC 000F8F3C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC000 000F8F40  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FC004 000F8F44  40 82 00 18 */	bne lbl_800FC01C
/* 800FC008 000F8F48  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC00C 000F8F4C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FC010 000F8F50  41 82 00 18 */	beq lbl_800FC028
/* 800FC014 000F8F54  57 E0 03 DF */	rlwinm. r0, r31, 0, 0xf, 0xf
/* 800FC018 000F8F58  41 82 00 10 */	beq lbl_800FC028
lbl_800FC01C:
/* 800FC01C 000F8F5C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC020 000F8F60  64 00 00 01 */	oris r0, r0, 1
/* 800FC024 000F8F64  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC028:
/* 800FC028 000F8F68  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC02C 000F8F6C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800FC030 000F8F70  40 82 00 18 */	bne lbl_800FC048
/* 800FC034 000F8F74  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC038 000F8F78  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800FC03C 000F8F7C  41 82 00 18 */	beq lbl_800FC054
/* 800FC040 000F8F80  57 E0 04 63 */	rlwinm. r0, r31, 0, 0x11, 0x11
/* 800FC044 000F8F84  41 82 00 10 */	beq lbl_800FC054
lbl_800FC048:
/* 800FC048 000F8F88  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC04C 000F8F8C  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FC050 000F8F90  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC054:
/* 800FC054 000F8F94  A0 1E 00 DE */	lhz r0, 0xde(r30)
/* 800FC058 000F8F98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800FC05C 000F8F9C  40 82 00 18 */	bne lbl_800FC074
/* 800FC060 000F8FA0  A0 1E 00 DC */	lhz r0, 0xdc(r30)
/* 800FC064 000F8FA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800FC068 000F8FA8  41 82 00 18 */	beq lbl_800FC080
/* 800FC06C 000F8FAC  57 E0 05 AD */	rlwinm. r0, r31, 0, 0x16, 0x16
/* 800FC070 000F8FB0  41 82 00 10 */	beq lbl_800FC080
lbl_800FC074:
/* 800FC074 000F8FB4  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC078 000F8FB8  60 00 02 00 */	ori r0, r0, 0x200
/* 800FC07C 000F8FBC  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC080:
/* 800FC080 000F8FC0  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC084 000F8FC4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800FC088 000F8FC8  40 82 00 18 */	bne lbl_800FC0A0
/* 800FC08C 000F8FCC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC090 000F8FD0  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800FC094 000F8FD4  41 82 02 B8 */	beq lbl_800FC34C
/* 800FC098 000F8FD8  57 E0 02 95 */	rlwinm. r0, r31, 0, 0xa, 0xa
/* 800FC09C 000F8FDC  41 82 02 B0 */	beq lbl_800FC34C
lbl_800FC0A0:
/* 800FC0A0 000F8FE0  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC0A4 000F8FE4  64 00 00 20 */	oris r0, r0, 0x20
/* 800FC0A8 000F8FE8  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 800FC0AC 000F8FEC  48 00 02 A0 */	b lbl_800FC34C
lbl_800FC0B0:
/* 800FC0B0 000F8FF0  A8 7E 00 E4 */	lha r3, 0xe4(r30)
/* 800FC0B4 000F8FF4  3B A0 00 00 */	li r29, 0
/* 800FC0B8 000F8FF8  C0 22 92 48 */	lfs f1, $$21806-_SDA2_BASE_(r2)
/* 800FC0BC 000F8FFC  2C 03 00 00 */	cmpwi r3, 0
/* 800FC0C0 000F9000  40 81 00 0C */	ble lbl_800FC0CC
/* 800FC0C4 000F9004  38 03 FF FF */	addi r0, r3, -1
/* 800FC0C8 000F9008  B0 1E 00 E4 */	sth r0, 0xe4(r30)
lbl_800FC0CC:
/* 800FC0CC 000F900C  A8 7E 00 E4 */	lha r3, 0xe4(r30)
/* 800FC0D0 000F9010  7C 60 07 35 */	extsh. r0, r3
/* 800FC0D4 000F9014  40 81 00 2C */	ble lbl_800FC100
/* 800FC0D8 000F9018  20 03 00 3D */	subfic r0, r3, 0x3d
/* 800FC0DC 000F901C  7C 05 07 34 */	extsh r5, r0
/* 800FC0E0 000F9020  2C 05 00 28 */	cmpwi r5, 0x28
/* 800FC0E4 000F9024  3B A0 00 01 */	li r29, 1
/* 800FC0E8 000F9028  41 81 00 0C */	bgt lbl_800FC0F4
/* 800FC0EC 000F902C  C0 22 92 4C */	lfs f1, $$21807-_SDA2_BASE_(r2)
/* 800FC0F0 000F9030  48 00 00 10 */	b lbl_800FC100
lbl_800FC0F4:
/* 800FC0F4 000F9034  38 60 00 28 */	li r3, 0x28
/* 800FC0F8 000F9038  38 80 00 3C */	li r4, 0x3c
/* 800FC0FC 000F903C  48 00 02 FD */	bl CLBCalcRatio$$0s$$1__Fsss
lbl_800FC100:
/* 800FC100 000F9040  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800FC104 000F9044  41 82 00 20 */	beq lbl_800FC124
/* 800FC108 000F9048  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 800FC10C 000F904C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FC110 000F9050  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 800FC114 000F9054  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 800FC118 000F9058  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FC11C 000F905C  D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 800FC120 000F9060  48 00 00 14 */	b lbl_800FC134
lbl_800FC124:
/* 800FC124 000F9064  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 800FC128 000F9068  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 800FC12C 000F906C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 800FC130 000F9070  D0 1E 00 AC */	stfs f0, 0xac(r30)
lbl_800FC134:
/* 800FC134 000F9074  88 1E 00 26 */	lbz r0, 0x26(r30)
/* 800FC138 000F9078  3C 60 43 30 */	lis r3, 0x4330
/* 800FC13C 000F907C  C8 22 92 58 */	lfd f1, $$22118-_SDA2_BASE_(r2)
/* 800FC140 000F9080  90 01 01 74 */	stw r0, 0x174(r1)
/* 800FC144 000F9084  90 61 01 70 */	stw r3, 0x170(r1)
/* 800FC148 000F9088  C8 01 01 70 */	lfd f0, 0x170(r1)
/* 800FC14C 000F908C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FC150 000F9090  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 800FC154 000F9094  88 1E 00 27 */	lbz r0, 0x27(r30)
/* 800FC158 000F9098  90 01 01 7C */	stw r0, 0x17c(r1)
/* 800FC15C 000F909C  90 61 01 78 */	stw r3, 0x178(r1)
/* 800FC160 000F90A0  C8 01 01 78 */	lfd f0, 0x178(r1)
/* 800FC164 000F90A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FC168 000F90A8  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
/* 800FC16C 000F90AC  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC170 000F90B0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FC174 000F90B4  40 82 00 18 */	bne lbl_800FC18C
/* 800FC178 000F90B8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC17C 000F90BC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800FC180 000F90C0  41 82 00 18 */	beq lbl_800FC198
/* 800FC184 000F90C4  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 800FC188 000F90C8  41 82 00 10 */	beq lbl_800FC198
lbl_800FC18C:
/* 800FC18C 000F90CC  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC190 000F90D0  60 00 00 80 */	ori r0, r0, 0x80
/* 800FC194 000F90D4  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC198:
/* 800FC198 000F90D8  A0 7E 00 E2 */	lhz r3, 0xe2(r30)
/* 800FC19C 000F90DC  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 800FC1A0 000F90E0  41 82 00 34 */	beq lbl_800FC1D4
/* 800FC1A4 000F90E4  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC1A8 000F90E8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FC1AC 000F90EC  40 82 00 18 */	bne lbl_800FC1C4
/* 800FC1B0 000F90F0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC1B4 000F90F4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FC1B8 000F90F8  41 82 00 50 */	beq lbl_800FC208
/* 800FC1BC 000F90FC  57 E0 05 29 */	rlwinm. r0, r31, 0, 0x14, 0x14
/* 800FC1C0 000F9100  41 82 00 48 */	beq lbl_800FC208
lbl_800FC1C4:
/* 800FC1C4 000F9104  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC1C8 000F9108  60 00 08 00 */	ori r0, r0, 0x800
/* 800FC1CC 000F910C  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 800FC1D0 000F9110  48 00 00 38 */	b lbl_800FC208
lbl_800FC1D4:
/* 800FC1D4 000F9114  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 800FC1D8 000F9118  40 82 00 30 */	bne lbl_800FC208
/* 800FC1DC 000F911C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC1E0 000F9120  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FC1E4 000F9124  40 82 00 18 */	bne lbl_800FC1FC
/* 800FC1E8 000F9128  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC1EC 000F912C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800FC1F0 000F9130  41 82 00 18 */	beq lbl_800FC208
/* 800FC1F4 000F9134  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 800FC1F8 000F9138  41 82 00 10 */	beq lbl_800FC208
lbl_800FC1FC:
/* 800FC1FC 000F913C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC200 000F9140  60 00 01 00 */	ori r0, r0, 0x100
/* 800FC204 000F9144  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC208:
/* 800FC208 000F9148  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC20C 000F914C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FC210 000F9150  40 82 00 18 */	bne lbl_800FC228
/* 800FC214 000F9154  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC218 000F9158  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FC21C 000F915C  41 82 00 18 */	beq lbl_800FC234
/* 800FC220 000F9160  57 E0 05 6B */	rlwinm. r0, r31, 0, 0x15, 0x15
/* 800FC224 000F9164  41 82 00 10 */	beq lbl_800FC234
lbl_800FC228:
/* 800FC228 000F9168  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC22C 000F916C  60 00 04 00 */	ori r0, r0, 0x400
/* 800FC230 000F9170  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC234:
/* 800FC234 000F9174  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC238 000F9178  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FC23C 000F917C  40 82 00 18 */	bne lbl_800FC254
/* 800FC240 000F9180  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC244 000F9184  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FC248 000F9188  41 82 00 18 */	beq lbl_800FC260
/* 800FC24C 000F918C  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 800FC250 000F9190  41 82 00 10 */	beq lbl_800FC260
lbl_800FC254:
/* 800FC254 000F9194  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC258 000F9198  60 00 10 00 */	ori r0, r0, 0x1000
/* 800FC25C 000F919C  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC260:
/* 800FC260 000F91A0  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC264 000F91A4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FC268 000F91A8  40 82 00 18 */	bne lbl_800FC280
/* 800FC26C 000F91AC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC270 000F91B0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FC274 000F91B4  41 82 00 18 */	beq lbl_800FC28C
/* 800FC278 000F91B8  57 E0 04 A5 */	rlwinm. r0, r31, 0, 0x12, 0x12
/* 800FC27C 000F91BC  41 82 00 10 */	beq lbl_800FC28C
lbl_800FC280:
/* 800FC280 000F91C0  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC284 000F91C4  60 00 20 00 */	ori r0, r0, 0x2000
/* 800FC288 000F91C8  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC28C:
/* 800FC28C 000F91CC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 800FC290 000F91D0  D0 1E 00 C0 */	stfs f0, 0xc0(r30)
/* 800FC294 000F91D4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 800FC298 000F91D8  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 800FC29C 000F91DC  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC2A0 000F91E0  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800FC2A4 000F91E4  40 82 00 18 */	bne lbl_800FC2BC
/* 800FC2A8 000F91E8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC2AC 000F91EC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800FC2B0 000F91F0  41 82 00 18 */	beq lbl_800FC2C8
/* 800FC2B4 000F91F4  57 E0 04 63 */	rlwinm. r0, r31, 0, 0x11, 0x11
/* 800FC2B8 000F91F8  41 82 00 10 */	beq lbl_800FC2C8
lbl_800FC2BC:
/* 800FC2BC 000F91FC  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC2C0 000F9200  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FC2C4 000F9204  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC2C8:
/* 800FC2C8 000F9208  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC2CC 000F920C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FC2D0 000F9210  40 82 00 18 */	bne lbl_800FC2E8
/* 800FC2D4 000F9214  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC2D8 000F9218  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FC2DC 000F921C  41 82 00 18 */	beq lbl_800FC2F4
/* 800FC2E0 000F9220  57 E0 04 21 */	rlwinm. r0, r31, 0, 0x10, 0x10
/* 800FC2E4 000F9224  41 82 00 10 */	beq lbl_800FC2F4
lbl_800FC2E8:
/* 800FC2E8 000F9228  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC2EC 000F922C  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FC2F0 000F9230  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC2F4:
/* 800FC2F4 000F9234  A0 1E 00 DE */	lhz r0, 0xde(r30)
/* 800FC2F8 000F9238  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800FC2FC 000F923C  40 82 00 18 */	bne lbl_800FC314
/* 800FC300 000F9240  A0 1E 00 DC */	lhz r0, 0xdc(r30)
/* 800FC304 000F9244  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800FC308 000F9248  41 82 00 18 */	beq lbl_800FC320
/* 800FC30C 000F924C  57 E0 05 AD */	rlwinm. r0, r31, 0, 0x16, 0x16
/* 800FC310 000F9250  41 82 00 10 */	beq lbl_800FC320
lbl_800FC314:
/* 800FC314 000F9254  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC318 000F9258  60 00 02 00 */	ori r0, r0, 0x200
/* 800FC31C 000F925C  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC320:
/* 800FC320 000F9260  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800FC324 000F9264  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800FC328 000F9268  40 82 00 18 */	bne lbl_800FC340
/* 800FC32C 000F926C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800FC330 000F9270  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800FC334 000F9274  41 82 00 18 */	beq lbl_800FC34C
/* 800FC338 000F9278  57 E0 02 95 */	rlwinm. r0, r31, 0, 0xa, 0xa
/* 800FC33C 000F927C  41 82 00 10 */	beq lbl_800FC34C
lbl_800FC340:
/* 800FC340 000F9280  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC344 000F9284  64 00 00 20 */	oris r0, r0, 0x20
/* 800FC348 000F9288  90 1E 00 D0 */	stw r0, 0xd0(r30)
lbl_800FC34C:
/* 800FC34C 000F928C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC350 000F9290  7C 00 F8 78 */	andc r0, r0, r31
/* 800FC354 000F9294  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 800FC358 000F9298  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800FC35C 000F929C  7F E0 00 78 */	andc r0, r31, r0
/* 800FC360 000F92A0  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 800FC364 000F92A4  80 01 01 94 */	lwz r0, 0x194(r1)
/* 800FC368 000F92A8  83 E1 01 8C */	lwz r31, 0x18c(r1)
/* 800FC36C 000F92AC  83 C1 01 88 */	lwz r30, 0x188(r1)
/* 800FC370 000F92B0  83 A1 01 84 */	lwz r29, 0x184(r1)
/* 800FC374 000F92B4  38 21 01 90 */	addi r1, r1, 0x190
/* 800FC378 000F92B8  7C 08 03 A6 */	mtlr r0
/* 800FC37C 000F92BC  4E 80 00 20 */	blr 

.global reset__13TMarioGamePadFv
reset__13TMarioGamePadFv:
/* 800FC380 000F92C0  7C 08 02 A6 */	mflr r0
/* 800FC384 000F92C4  90 01 00 04 */	stw r0, 4(r1)
/* 800FC388 000F92C8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800FC38C 000F92CC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800FC390 000F92D0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800FC394 000F92D4  7C 7E 1B 78 */	mr r30, r3
/* 800FC398 000F92D8  4B FF F2 45 */	bl SMSGetAnmFrameRate__Fv
/* 800FC39C 000F92DC  C0 02 92 64 */	lfs f0, $$22122-_SDA2_BASE_(r2)
/* 800FC3A0 000F92E0  EC 20 08 24 */	fdivs f1, f0, f1
/* 800FC3A4 000F92E4  4B F8 68 19 */	bl __cvt_fp2unsigned
/* 800FC3A8 000F92E8  7C 7F 1B 78 */	mr r31, r3
/* 800FC3AC 000F92EC  4B FF F2 31 */	bl SMSGetAnmFrameRate__Fv
/* 800FC3B0 000F92F0  C0 02 92 60 */	lfs f0, $$22121-_SDA2_BASE_(r2)
/* 800FC3B4 000F92F4  EC 20 08 24 */	fdivs f1, f0, f1
/* 800FC3B8 000F92F8  4B F8 68 05 */	bl __cvt_fp2unsigned
/* 800FC3BC 000F92FC  3C 80 0F 00 */	lis r4, 0x0F00000F@ha
/* 800FC3C0 000F9300  38 A3 00 00 */	addi r5, r3, 0
/* 800FC3C4 000F9304  38 7E 00 00 */	addi r3, r30, 0
/* 800FC3C8 000F9308  38 DF 00 00 */	addi r6, r31, 0
/* 800FC3CC 000F930C  38 84 00 0F */	addi r4, r4, 0x0F00000F@l
/* 800FC3D0 000F9310  4B F1 66 B9 */	bl setButtonRepeat__10JUTGamePadFUlUlUl
/* 800FC3D4 000F9314  38 00 00 00 */	li r0, 0
/* 800FC3D8 000F9318  B0 1E 00 E4 */	sth r0, 0xe4(r30)
/* 800FC3DC 000F931C  90 1E 00 E8 */	stw r0, 0xe8(r30)
/* 800FC3E0 000F9320  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800FC3E4 000F9324  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800FC3E8 000F9328  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800FC3EC 000F932C  38 21 00 18 */	addi r1, r1, 0x18
/* 800FC3F0 000F9330  7C 08 03 A6 */	mtlr r0
/* 800FC3F4 000F9334  4E 80 00 20 */	blr 

.global CLBCalcRatio$$0s$$1__Fsss
CLBCalcRatio$$0s$$1__Fsss:
/* 800FC3F8 000F9338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FC3FC 000F933C  7C 66 07 34 */	extsh r6, r3
/* 800FC400 000F9340  7C 80 07 34 */	extsh r0, r4
/* 800FC404 000F9344  7C 06 00 00 */	cmpw r6, r0
/* 800FC408 000F9348  C0 22 92 4C */	lfs f1, $$21807-_SDA2_BASE_(r2)
/* 800FC40C 000F934C  41 82 00 4C */	beq lbl_800FC458
/* 800FC410 000F9350  7C 06 00 50 */	subf r0, r6, r0
/* 800FC414 000F9354  C8 42 92 68 */	lfd f2, $$22128-_SDA2_BASE_(r2)
/* 800FC418 000F9358  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800FC41C 000F935C  C0 22 92 48 */	lfs f1, $$21806-_SDA2_BASE_(r2)
/* 800FC420 000F9360  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC424 000F9364  3C 00 43 30 */	lis r0, 0x4330
/* 800FC428 000F9368  7C A3 07 34 */	extsh r3, r5
/* 800FC42C 000F936C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800FC430 000F9370  7C 66 18 50 */	subf r3, r6, r3
/* 800FC434 000F9374  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 800FC438 000F9378  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800FC43C 000F937C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800FC440 000F9380  EC 00 10 28 */	fsubs f0, f0, f2
/* 800FC444 000F9384  90 01 00 18 */	stw r0, 0x18(r1)
/* 800FC448 000F9388  EC 01 00 24 */	fdivs f0, f1, f0
/* 800FC44C 000F938C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800FC450 000F9390  EC 21 10 28 */	fsubs f1, f1, f2
/* 800FC454 000F9394  EC 21 00 32 */	fmuls f1, f1, f0
lbl_800FC458:
/* 800FC458 000F9398  38 21 00 20 */	addi r1, r1, 0x20
/* 800FC45C 000F939C  4E 80 00 20 */	blr 

.global __sinit_MarioGamePad_cpp
__sinit_MarioGamePad_cpp:
/* 800FC460 000F93A0  38 00 00 00 */	li r0, 0
/* 800FC464 000F93A4  B0 0D 98 28 */	sth r0, mResetFlag__13TMarioGamePad-_SDA_BASE_(r13)
/* 800FC468 000F93A8  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
	.incbin "baserom.dol", 0x36CC3C, 0x4

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
.global $$21806
$$21806:
	.incbin "baserom.dol", 0x3E4F48, 0x4
.global $$21807
$$21807:
	.incbin "baserom.dol", 0x3E4F4C, 0x4
.global $$22115
$$22115:
	.incbin "baserom.dol", 0x3E4F50, 0x4
.global $$22116
$$22116:
	.incbin "baserom.dol", 0x3E4F54, 0x4
.global $$22118
$$22118:
	.incbin "baserom.dol", 0x3E4F58, 0x8
.global $$22121
$$22121:
	.incbin "baserom.dol", 0x3E4F60, 0x4
.global $$22122
$$22122:
	.incbin "baserom.dol", 0x3E4F64, 0x4
.global $$22128
$$22128:
	.incbin "baserom.dol", 0x3E4F68, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global mResetFlag__13TMarioGamePad
mResetFlag__13TMarioGamePad:
	.skip 0x8
