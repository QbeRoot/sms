.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global DecidePixelFmt__6JDramaFbb
DecidePixelFmt__6JDramaFbb:
/* 80042F08 0003FE48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80042F0C 0003FE4C  41 82 00 0C */	beq lbl_80042F18
/* 80042F10 0003FE50  38 60 00 02 */	li r3, 2
/* 80042F14 0003FE54  4E 80 00 20 */	blr 
lbl_80042F18:
/* 80042F18 0003FE58  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80042F1C 0003FE5C  41 82 00 0C */	beq lbl_80042F28
/* 80042F20 0003FE60  38 60 00 01 */	li r3, 1
/* 80042F24 0003FE64  4E 80 00 20 */	blr 
lbl_80042F28:
/* 80042F28 0003FE68  38 60 00 00 */	li r3, 0
/* 80042F2C 0003FE6C  4E 80 00 20 */	blr 

.global IssueGXPixelFormatSetting__6JDramaFbbbbb
IssueGXPixelFormatSetting__6JDramaFbbbbb:
/* 80042F30 0003FE70  7C 08 02 A6 */	mflr r0
/* 80042F34 0003FE74  90 01 00 04 */	stw r0, 4(r1)
/* 80042F38 0003FE78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80042F3C 0003FE7C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80042F40 0003FE80  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80042F44 0003FE84  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80042F48 0003FE88  3B C7 00 00 */	addi r30, r7, 0
/* 80042F4C 0003FE8C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80042F50 0003FE90  3B A6 00 00 */	addi r29, r6, 0
/* 80042F54 0003FE94  93 81 00 18 */	stw r28, 0x18(r1)
/* 80042F58 0003FE98  3B 85 00 00 */	addi r28, r5, 0
/* 80042F5C 0003FE9C  41 82 00 0C */	beq lbl_80042F68
/* 80042F60 0003FEA0  38 00 00 02 */	li r0, 2
/* 80042F64 0003FEA4  48 00 00 18 */	b lbl_80042F7C
lbl_80042F68:
/* 80042F68 0003FEA8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80042F6C 0003FEAC  41 82 00 0C */	beq lbl_80042F78
/* 80042F70 0003FEB0  38 00 00 01 */	li r0, 1
/* 80042F74 0003FEB4  48 00 00 08 */	b lbl_80042F7C
lbl_80042F78:
/* 80042F78 0003FEB8  38 00 00 00 */	li r0, 0
lbl_80042F7C:
/* 80042F7C 0003FEBC  7C 1F 03 78 */	mr r31, r0
/* 80042F80 0003FEC0  38 7F 00 00 */	addi r3, r31, 0
/* 80042F84 0003FEC4  38 80 00 00 */	li r4, 0
/* 80042F88 0003FEC8  48 06 99 A5 */	bl GXSetPixelFmt
/* 80042F8C 0003FECC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80042F90 0003FED0  38 60 00 00 */	li r3, 0
/* 80042F94 0003FED4  41 82 00 24 */	beq lbl_80042FB8
/* 80042F98 0003FED8  38 1F FF FF */	addi r0, r31, -1
/* 80042F9C 0003FEDC  28 00 00 01 */	cmplwi r0, 1
/* 80042FA0 0003FEE0  38 00 00 01 */	li r0, 1
/* 80042FA4 0003FEE4  40 81 00 08 */	ble lbl_80042FAC
/* 80042FA8 0003FEE8  7C 60 1B 78 */	mr r0, r3
lbl_80042FAC:
/* 80042FAC 0003FEEC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80042FB0 0003FEF0  41 82 00 08 */	beq lbl_80042FB8
/* 80042FB4 0003FEF4  38 60 00 01 */	li r3, 1
lbl_80042FB8:
/* 80042FB8 0003FEF8  48 06 9A 85 */	bl GXSetDither
/* 80042FBC 0003FEFC  38 7D 00 00 */	addi r3, r29, 0
/* 80042FC0 0003FF00  38 9E 00 00 */	addi r4, r30, 0
/* 80042FC4 0003FF04  48 06 9B 45 */	bl GXSetFieldMode
/* 80042FC8 0003FF08  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80042FCC 0003FF0C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80042FD0 0003FF10  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80042FD4 0003FF14  7C 08 03 A6 */	mtlr r0
/* 80042FD8 0003FF18  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80042FDC 0003FF1C  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80042FE0 0003FF20  38 21 00 28 */	addi r1, r1, 0x28
/* 80042FE4 0003FF24  4E 80 00 20 */	blr 

.global IssueGXPixelFormatSetting__6JDramaFRC16_GXRenderModeObjbb
IssueGXPixelFormatSetting__6JDramaFRC16_GXRenderModeObjbb:
/* 80042FE8 0003FF28  7C 08 02 A6 */	mflr r0
/* 80042FEC 0003FF2C  90 01 00 04 */	stw r0, 4(r1)
/* 80042FF0 0003FF30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80042FF4 0003FF34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80042FF8 0003FF38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80042FFC 0003FF3C  3B C4 00 00 */	addi r30, r4, 0
/* 80043000 0003FF40  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80043004 0003FF44  3B A3 00 00 */	addi r29, r3, 0
/* 80043008 0003FF48  93 81 00 10 */	stw r28, 0x10(r1)
/* 8004300C 0003FF4C  3B 85 00 00 */	addi r28, r5, 0
/* 80043010 0003FF50  48 00 2B A5 */	bl IsRenderModeHalfAspectRatio__6JDramaFRC16_GXRenderModeObj
/* 80043014 0003FF54  88 9D 00 18 */	lbz r4, 0x18(r29)
/* 80043018 0003FF58  3B E3 00 00 */	addi r31, r3, 0
/* 8004301C 0003FF5C  88 1D 00 19 */	lbz r0, 0x19(r29)
/* 80043020 0003FF60  7C 84 00 D0 */	neg r4, r4
/* 80043024 0003FF64  30 64 FF FF */	addic r3, r4, -1
/* 80043028 0003FF68  7C 83 21 10 */	subfe r4, r3, r4
/* 8004302C 0003FF6C  7C 60 00 D0 */	neg r3, r0
/* 80043030 0003FF70  30 03 FF FF */	addic r0, r3, -1
/* 80043034 0003FF74  7C 00 19 10 */	subfe r0, r0, r3
/* 80043038 0003FF78  54 9D 06 3E */	clrlwi r29, r4, 0x18
/* 8004303C 0003FF7C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80043040 0003FF80  38 9E 00 00 */	addi r4, r30, 0
/* 80043044 0003FF84  4B FF FE C5 */	bl DecidePixelFmt__6JDramaFbb
/* 80043048 0003FF88  3B C3 00 00 */	addi r30, r3, 0
/* 8004304C 0003FF8C  38 80 00 00 */	li r4, 0
/* 80043050 0003FF90  48 06 98 DD */	bl GXSetPixelFmt
/* 80043054 0003FF94  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80043058 0003FF98  38 60 00 00 */	li r3, 0
/* 8004305C 0003FF9C  41 82 00 24 */	beq lbl_80043080
/* 80043060 0003FFA0  38 1E FF FF */	addi r0, r30, -1
/* 80043064 0003FFA4  28 00 00 01 */	cmplwi r0, 1
/* 80043068 0003FFA8  38 00 00 01 */	li r0, 1
/* 8004306C 0003FFAC  40 81 00 08 */	ble lbl_80043074
/* 80043070 0003FFB0  7C 60 1B 78 */	mr r0, r3
lbl_80043074:
/* 80043074 0003FFB4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80043078 0003FFB8  41 82 00 08 */	beq lbl_80043080
/* 8004307C 0003FFBC  38 60 00 01 */	li r3, 1
lbl_80043080:
/* 80043080 0003FFC0  48 06 99 BD */	bl GXSetDither
/* 80043084 0003FFC4  38 7D 00 00 */	addi r3, r29, 0
/* 80043088 0003FFC8  38 9F 00 00 */	addi r4, r31, 0
/* 8004308C 0003FFCC  48 06 9A 7D */	bl GXSetFieldMode
/* 80043090 0003FFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80043094 0003FFD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80043098 0003FFD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004309C 0003FFDC  7C 08 03 A6 */	mtlr r0
/* 800430A0 0003FFE0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800430A4 0003FFE4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800430A8 0003FFE8  38 21 00 20 */	addi r1, r1, 0x20
/* 800430AC 0003FFEC  4E 80 00 20 */	blr 

.global IssueGXSetCopyFilter__6JDramaFbPA2_CUcbPCUc
IssueGXSetCopyFilter__6JDramaFbPA2_CUcbPCUc:
/* 800430B0 0003FFF0  7C 08 02 A6 */	mflr r0
/* 800430B4 0003FFF4  90 01 00 04 */	stw r0, 4(r1)
/* 800430B8 0003FFF8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800430BC 0003FFFC  38 A0 00 00 */	li r5, 0
/* 800430C0 00040000  94 21 FF F8 */	stwu r1, -8(r1)
/* 800430C4 00040004  41 82 00 10 */	beq lbl_800430D4
/* 800430C8 00040008  28 06 00 00 */	cmplwi r6, 0
/* 800430CC 0004000C  41 82 00 08 */	beq lbl_800430D4
/* 800430D0 00040010  38 A0 00 01 */	li r5, 1
lbl_800430D4:
/* 800430D4 00040014  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800430D8 00040018  38 60 00 00 */	li r3, 0
/* 800430DC 0004001C  41 82 00 10 */	beq lbl_800430EC
/* 800430E0 00040020  28 04 00 00 */	cmplwi r4, 0
/* 800430E4 00040024  41 82 00 08 */	beq lbl_800430EC
/* 800430E8 00040028  38 60 00 01 */	li r3, 1
lbl_800430EC:
/* 800430EC 0004002C  48 06 62 DD */	bl GXSetCopyFilter
/* 800430F0 00040030  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800430F4 00040034  38 21 00 08 */	addi r1, r1, 8
/* 800430F8 00040038  7C 08 03 A6 */	mtlr r0
/* 800430FC 0004003C  4E 80 00 20 */	blr 

.global IssueGXSetCopyClear__6JDramaFQ28JUtility6TColorUlUs
IssueGXSetCopyClear__6JDramaFQ28JUtility6TColorUlUs:
/* 80043100 00040040  7C 08 02 A6 */	mflr r0
/* 80043104 00040044  90 01 00 04 */	stw r0, 4(r1)
/* 80043108 00040048  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8004310C 0004004C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80043110 00040050  3B E0 00 01 */	li r31, 1
/* 80043114 00040054  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80043118 00040058  54 BE 04 3E */	clrlwi r30, r5, 0x10
/* 8004311C 0004005C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80043120 00040060  54 BD 07 FF */	clrlwi. r29, r5, 0x1f
/* 80043124 00040064  38 BF 00 00 */	addi r5, r31, 0
/* 80043128 00040068  41 82 00 10 */	beq lbl_80043138
/* 8004312C 0004006C  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 80043130 00040070  41 82 00 08 */	beq lbl_80043138
/* 80043134 00040074  38 A0 00 00 */	li r5, 0
lbl_80043138:
/* 80043138 00040078  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8004313C 0004007C  40 82 00 10 */	bne lbl_8004314C
/* 80043140 00040080  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 80043144 00040084  41 82 00 08 */	beq lbl_8004314C
/* 80043148 00040088  3B E0 00 00 */	li r31, 0
lbl_8004314C:
/* 8004314C 0004008C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80043150 00040090  41 82 00 68 */	beq lbl_800431B8
/* 80043154 00040094  80 03 00 00 */	lwz r0, 0(r3)
/* 80043158 00040098  38 61 00 14 */	addi r3, r1, 0x14
/* 8004315C 0004009C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043160 000400A0  48 06 62 01 */	bl GXSetCopyClear
/* 80043164 000400A4  7C 1D 00 D0 */	neg r0, r29
/* 80043168 000400A8  7C 00 00 34 */	cntlzw r0, r0
/* 8004316C 000400AC  54 03 D9 7E */	srwi r3, r0, 5
/* 80043170 000400B0  48 06 96 85 */	bl GXSetColorUpdate
/* 80043174 000400B4  57 C0 07 BC */	rlwinm r0, r30, 0, 0x1e, 0x1e
/* 80043178 000400B8  7C 00 00 D0 */	neg r0, r0
/* 8004317C 000400BC  7C 00 00 34 */	cntlzw r0, r0
/* 80043180 000400C0  54 03 D9 7E */	srwi r3, r0, 5
/* 80043184 000400C4  48 06 96 B1 */	bl GXSetAlphaUpdate
/* 80043188 000400C8  57 C0 07 7A */	rlwinm r0, r30, 0, 0x1d, 0x1d
/* 8004318C 000400CC  7C 00 00 D0 */	neg r0, r0
/* 80043190 000400D0  7C 00 00 34 */	cntlzw r0, r0
/* 80043194 000400D4  54 1D D9 7E */	srwi r29, r0, 5
/* 80043198 000400D8  38 7D 00 00 */	addi r3, r29, 0
/* 8004319C 000400DC  38 BD 00 00 */	addi r5, r29, 0
/* 800431A0 000400E0  38 80 00 07 */	li r4, 7
/* 800431A4 000400E4  48 06 96 D1 */	bl GXSetZMode
/* 800431A8 000400E8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800431AC 000400EC  41 82 00 0C */	beq lbl_800431B8
/* 800431B0 000400F0  38 60 00 01 */	li r3, 1
/* 800431B4 000400F4  48 06 97 39 */	bl GXSetZCompLoc
lbl_800431B8:
/* 800431B8 000400F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800431BC 000400FC  7F E3 FB 78 */	mr r3, r31
/* 800431C0 00040100  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800431C4 00040104  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800431C8 00040108  7C 08 03 A6 */	mtlr r0
/* 800431CC 0004010C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800431D0 00040110  38 21 00 30 */	addi r1, r1, 0x30
/* 800431D4 00040114  4E 80 00 20 */	blr 

.global IssueGXCopyDisp__6JDramaFPvRCQ26JDrama5TRectRC16_GXRenderModeObjQ28JUtility6TColorUl10_GXFBClampUs
IssueGXCopyDisp__6JDramaFPvRCQ26JDrama5TRectRC16_GXRenderModeObjQ28JUtility6TColorUl10_GXFBClampUs:
/* 800431D8 00040118  7C 08 02 A6 */	mflr r0
/* 800431DC 0004011C  90 01 00 04 */	stw r0, 4(r1)
/* 800431E0 00040120  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800431E4 00040124  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 800431E8 00040128  3B 43 00 00 */	addi r26, r3, 0
/* 800431EC 0004012C  3B 64 00 00 */	addi r27, r4, 0
/* 800431F0 00040130  3B 85 00 00 */	addi r28, r5, 0
/* 800431F4 00040134  3B E6 00 00 */	addi r31, r6, 0
/* 800431F8 00040138  3B A7 00 00 */	addi r29, r7, 0
/* 800431FC 0004013C  3B 29 00 00 */	addi r25, r9, 0
/* 80043200 00040140  38 68 00 00 */	addi r3, r8, 0
/* 80043204 00040144  48 06 5D 45 */	bl GXSetCopyClamp
/* 80043208 00040148  88 1C 00 19 */	lbz r0, 0x19(r28)
/* 8004320C 0004014C  57 24 06 B5 */	rlwinm. r4, r25, 0, 0x1a, 0x1a
/* 80043210 00040150  57 3E 04 3E */	clrlwi r30, r25, 0x10
/* 80043214 00040154  7C 60 00 D0 */	neg r3, r0
/* 80043218 00040158  30 03 FF FF */	addic r0, r3, -1
/* 8004321C 0004015C  7C 00 19 10 */	subfe r0, r0, r3
/* 80043220 00040160  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80043224 00040164  38 A0 00 00 */	li r5, 0
/* 80043228 00040168  41 82 00 10 */	beq lbl_80043238
/* 8004322C 0004016C  34 1C 00 32 */	addic. r0, r28, 0x32
/* 80043230 00040170  41 82 00 08 */	beq lbl_80043238
/* 80043234 00040174  38 A0 00 01 */	li r5, 1
lbl_80043238:
/* 80043238 00040178  28 03 00 00 */	cmplwi r3, 0
/* 8004323C 0004017C  38 60 00 00 */	li r3, 0
/* 80043240 00040180  41 82 00 10 */	beq lbl_80043250
/* 80043244 00040184  34 1C 00 1A */	addic. r0, r28, 0x1a
/* 80043248 00040188  41 82 00 08 */	beq lbl_80043250
/* 8004324C 0004018C  38 60 00 01 */	li r3, 1
lbl_80043250:
/* 80043250 00040190  38 9C 00 1A */	addi r4, r28, 0x1a
/* 80043254 00040194  38 DC 00 32 */	addi r6, r28, 0x32
/* 80043258 00040198  48 06 61 71 */	bl GXSetCopyFilter
/* 8004325C 0004019C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80043260 000401A0  3B E0 00 01 */	li r31, 1
/* 80043264 000401A4  57 D9 07 FF */	clrlwi. r25, r30, 0x1f
/* 80043268 000401A8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8004326C 000401AC  7F E3 FB 78 */	mr r3, r31
/* 80043270 000401B0  41 82 00 10 */	beq lbl_80043280
/* 80043274 000401B4  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 80043278 000401B8  41 82 00 08 */	beq lbl_80043280
/* 8004327C 000401BC  38 60 00 00 */	li r3, 0
lbl_80043280:
/* 80043280 000401C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80043284 000401C4  40 82 00 10 */	bne lbl_80043294
/* 80043288 000401C8  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 8004328C 000401CC  41 82 00 08 */	beq lbl_80043294
/* 80043290 000401D0  3B E0 00 00 */	li r31, 0
lbl_80043294:
/* 80043294 000401D4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80043298 000401D8  41 82 00 6C */	beq lbl_80043304
/* 8004329C 000401DC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800432A0 000401E0  38 61 00 24 */	addi r3, r1, 0x24
/* 800432A4 000401E4  7F A4 EB 78 */	mr r4, r29
/* 800432A8 000401E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800432AC 000401EC  48 06 60 B5 */	bl GXSetCopyClear
/* 800432B0 000401F0  7C 19 00 D0 */	neg r0, r25
/* 800432B4 000401F4  7C 00 00 34 */	cntlzw r0, r0
/* 800432B8 000401F8  54 03 D9 7E */	srwi r3, r0, 5
/* 800432BC 000401FC  48 06 95 39 */	bl GXSetColorUpdate
/* 800432C0 00040200  57 C0 07 BC */	rlwinm r0, r30, 0, 0x1e, 0x1e
/* 800432C4 00040204  7C 00 00 D0 */	neg r0, r0
/* 800432C8 00040208  7C 00 00 34 */	cntlzw r0, r0
/* 800432CC 0004020C  54 03 D9 7E */	srwi r3, r0, 5
/* 800432D0 00040210  48 06 95 65 */	bl GXSetAlphaUpdate
/* 800432D4 00040214  57 C0 07 7A */	rlwinm r0, r30, 0, 0x1d, 0x1d
/* 800432D8 00040218  7C 00 00 D0 */	neg r0, r0
/* 800432DC 0004021C  7C 00 00 34 */	cntlzw r0, r0
/* 800432E0 00040220  54 1D D9 7E */	srwi r29, r0, 5
/* 800432E4 00040224  38 7D 00 00 */	addi r3, r29, 0
/* 800432E8 00040228  38 BD 00 00 */	addi r5, r29, 0
/* 800432EC 0004022C  38 80 00 07 */	li r4, 7
/* 800432F0 00040230  48 06 95 85 */	bl GXSetZMode
/* 800432F4 00040234  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800432F8 00040238  41 82 00 0C */	beq lbl_80043304
/* 800432FC 0004023C  38 60 00 01 */	li r3, 1
/* 80043300 00040240  48 06 95 ED */	bl GXSetZCompLoc
lbl_80043304:
/* 80043304 00040244  80 1B 00 00 */	lwz r0, 0(r27)
/* 80043308 00040248  7F F9 FB 78 */	mr r25, r31
/* 8004330C 0004024C  80 9B 00 04 */	lwz r4, 4(r27)
/* 80043310 00040250  80 BB 00 08 */	lwz r5, 8(r27)
/* 80043314 00040254  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80043318 00040258  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8004331C 0004025C  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80043320 00040260  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 80043324 00040264  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 80043328 00040268  48 06 58 C1 */	bl GXSetDispCopySrc
/* 8004332C 0004026C  7F 83 E3 78 */	mr r3, r28
/* 80043330 00040270  48 00 28 A1 */	bl GetRenderModeYScale__6JDramaFRC16_GXRenderModeObj
/* 80043334 00040274  48 06 5F 59 */	bl GXSetDispCopyYScale
/* 80043338 00040278  A0 BC 00 04 */	lhz r5, 4(r28)
/* 8004333C 0004027C  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80043340 00040280  38 05 00 0F */	addi r0, r5, 0xf
/* 80043344 00040284  54 03 00 36 */	rlwinm r3, r0, 0, 0, 0x1b
/* 80043348 00040288  48 06 5A 21 */	bl GXSetDispCopyDst
/* 8004334C 0004028C  38 7A 00 00 */	addi r3, r26, 0
/* 80043350 00040290  38 99 00 00 */	addi r4, r25, 0
/* 80043354 00040294  48 06 62 B9 */	bl GXCopyDisp
/* 80043358 00040298  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 8004335C 0004029C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80043360 000402A0  38 21 00 50 */	addi r1, r1, 0x50
/* 80043364 000402A4  7C 08 03 A6 */	mtlr r0
/* 80043368 000402A8  4E 80 00 20 */	blr 