.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global pushBreakPoint__16TDrawSyncManagerFv
pushBreakPoint__16TDrawSyncManagerFv:
/* 800FCA8C 000F99CC  7C 08 02 A6 */	mflr r0
/* 800FCA90 000F99D0  90 01 00 04 */	stw r0, 4(r1)
/* 800FCA94 000F99D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FCA98 000F99D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FCA9C 000F99DC  7C 7F 1B 78 */	mr r31, r3
/* 800FCAA0 000F99E0  A0 03 03 4C */	lhz r0, 0x34c(r3)
/* 800FCAA4 000F99E4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800FCAA8 000F99E8  40 82 00 28 */	bne lbl_800FCAD0
/* 800FCAAC 000F99EC  4B FA B7 65 */	bl GXFlush
/* 800FCAB0 000F99F0  4B FA 9C D9 */	bl GXGetCPUFifo
/* 800FCAB4 000F99F4  38 81 00 10 */	addi r4, r1, 0x10
/* 800FCAB8 000F99F8  38 A1 00 0C */	addi r5, r1, 0xc
/* 800FCABC 000F99FC  4B FA 99 C5 */	bl GXGetFifoPtrs
/* 800FCAC0 000F9A00  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800FCAC4 000F9A04  38 7F 03 28 */	addi r3, r31, 0x328
/* 800FCAC8 000F9A08  38 A0 00 01 */	li r5, 1
/* 800FCACC 000F9A0C  4B F9 3F E5 */	bl OSSendMessage
lbl_800FCAD0:
/* 800FCAD0 000F9A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FCAD4 000F9A14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FCAD8 000F9A18  38 21 00 20 */	addi r1, r1, 0x20
/* 800FCADC 000F9A1C  7C 08 03 A6 */	mtlr r0
/* 800FCAE0 000F9A20  4E 80 00 20 */	blr 

.global drawSyncCallbackSub__16TDrawSyncManagerFUs
drawSyncCallbackSub__16TDrawSyncManagerFUs:
/* 800FCAE4 000F9A24  7C 08 02 A6 */	mflr r0
/* 800FCAE8 000F9A28  90 01 00 04 */	stw r0, 4(r1)
/* 800FCAEC 000F9A2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FCAF0 000F9A30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FCAF4 000F9A34  54 9F 04 3F */	clrlwi. r31, r4, 0x10
/* 800FCAF8 000F9A38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FCAFC 000F9A3C  3B C3 00 00 */	addi r30, r3, 0
/* 800FCB00 000F9A40  40 82 00 24 */	bne lbl_800FCB24
/* 800FCB04 000F9A44  A0 1E 03 4C */	lhz r0, 0x34c(r30)
/* 800FCB08 000F9A48  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800FCB0C 000F9A4C  40 82 00 84 */	bne lbl_800FCB90
/* 800FCB10 000F9A50  38 9F 00 00 */	addi r4, r31, 0
/* 800FCB14 000F9A54  38 7E 03 28 */	addi r3, r30, 0x328
/* 800FCB18 000F9A58  38 A0 00 01 */	li r5, 1
/* 800FCB1C 000F9A5C  4B F9 3F 95 */	bl OSSendMessage
/* 800FCB20 000F9A60  48 00 00 70 */	b lbl_800FCB90
lbl_800FCB24:
/* 800FCB24 000F9A64  80 DE 00 04 */	lwz r6, 4(r30)
/* 800FCB28 000F9A68  80 BE 00 08 */	lwz r5, 8(r30)
/* 800FCB2C 000F9A6C  48 00 00 5C */	b lbl_800FCB88
lbl_800FCB30:
/* 800FCB30 000F9A70  80 66 00 04 */	lwz r3, 4(r6)
/* 800FCB34 000F9A74  28 03 00 00 */	cmplwi r3, 0
/* 800FCB38 000F9A78  41 82 00 4C */	beq lbl_800FCB84
/* 800FCB3C 000F9A7C  A0 06 00 00 */	lhz r0, 0(r6)
/* 800FCB40 000F9A80  7C 00 F8 40 */	cmplw r0, r31
/* 800FCB44 000F9A84  41 81 00 40 */	bgt lbl_800FCB84
/* 800FCB48 000F9A88  A0 06 00 02 */	lhz r0, 2(r6)
/* 800FCB4C 000F9A8C  7C 1F 00 40 */	cmplw r31, r0
/* 800FCB50 000F9A90  41 81 00 34 */	bgt lbl_800FCB84
/* 800FCB54 000F9A94  81 83 00 00 */	lwz r12, 0(r3)
/* 800FCB58 000F9A98  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FCB5C 000F9A9C  7D 88 03 A6 */	mtlr r12
/* 800FCB60 000F9AA0  4E 80 00 21 */	blrl 
/* 800FCB64 000F9AA4  A0 1E 03 4C */	lhz r0, 0x34c(r30)
/* 800FCB68 000F9AA8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800FCB6C 000F9AAC  40 82 00 24 */	bne lbl_800FCB90
/* 800FCB70 000F9AB0  38 9F 00 00 */	addi r4, r31, 0
/* 800FCB74 000F9AB4  38 7E 03 28 */	addi r3, r30, 0x328
/* 800FCB78 000F9AB8  38 A0 00 01 */	li r5, 1
/* 800FCB7C 000F9ABC  4B F9 3F 35 */	bl OSSendMessage
/* 800FCB80 000F9AC0  48 00 00 10 */	b lbl_800FCB90
lbl_800FCB84:
/* 800FCB84 000F9AC4  38 C6 00 08 */	addi r6, r6, 8
lbl_800FCB88:
/* 800FCB88 000F9AC8  7C 06 28 40 */	cmplw r6, r5
/* 800FCB8C 000F9ACC  40 82 FF A4 */	bne lbl_800FCB30
lbl_800FCB90:
/* 800FCB90 000F9AD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FCB94 000F9AD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FCB98 000F9AD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FCB9C 000F9ADC  7C 08 03 A6 */	mtlr r0
/* 800FCBA0 000F9AE0  38 21 00 20 */	addi r1, r1, 0x20
/* 800FCBA4 000F9AE4  4E 80 00 20 */	blr 

.global setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback:
/* 800FCBA8 000F9AE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FCBAC 000F9AEC  54 84 18 38 */	slwi r4, r4, 3
/* 800FCBB0 000F9AF0  B0 A1 00 28 */	sth r5, 0x28(r1)
/* 800FCBB4 000F9AF4  B0 C1 00 2A */	sth r6, 0x2a(r1)
/* 800FCBB8 000F9AF8  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 800FCBBC 000F9AFC  80 A3 00 04 */	lwz r5, 4(r3)
/* 800FCBC0 000F9B00  80 61 00 28 */	lwz r3, 0x28(r1)
/* 800FCBC4 000F9B04  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800FCBC8 000F9B08  7C 85 22 14 */	add r4, r5, r4
/* 800FCBCC 000F9B0C  38 21 00 30 */	addi r1, r1, 0x30
/* 800FCBD0 000F9B10  90 64 00 00 */	stw r3, 0(r4)
/* 800FCBD4 000F9B14  90 04 00 04 */	stw r0, 4(r4)
/* 800FCBD8 000F9B18  4E 80 00 20 */	blr 

.global DestroyElement___Q27JGadget116TVector$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$4Q27JGadget53TAllocator$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$1$$1FPQ216TDrawSyncManager19TDrawSyncTokenRangePQ216TDrawSyncManager19TDrawSyncTokenRange
DestroyElement___Q27JGadget116TVector$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$4Q27JGadget53TAllocator$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$1$$1FPQ216TDrawSyncManager19TDrawSyncTokenRangePQ216TDrawSyncManager19TDrawSyncTokenRange:
/* 800FCBDC 000F9B1C  48 00 00 08 */	b lbl_800FCBE4
lbl_800FCBE0:
/* 800FCBE0 000F9B20  38 84 00 08 */	addi r4, r4, 8
lbl_800FCBE4:
/* 800FCBE4 000F9B24  7C 04 28 40 */	cmplw r4, r5
/* 800FCBE8 000F9B28  40 82 FF F8 */	bne lbl_800FCBE0
/* 800FCBEC 000F9B2C  4E 80 00 20 */	blr 

.global threadFunc__16TDrawSyncManagerFPv
threadFunc__16TDrawSyncManagerFPv:
/* 800FCBF0 000F9B30  7C 08 02 A6 */	mflr r0
/* 800FCBF4 000F9B34  90 01 00 04 */	stw r0, 4(r1)
/* 800FCBF8 000F9B38  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800FCBFC 000F9B3C  93 E1 00 34 */	stw r31, 0x34(r1)
/* 800FCC00 000F9B40  3F E0 80 00 */	lis r31, 0x8000
/* 800FCC04 000F9B44  93 C1 00 30 */	stw r30, 0x30(r1)
/* 800FCC08 000F9B48  3B C3 00 00 */	addi r30, r3, 0
/* 800FCC0C 000F9B4C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 800FCC10 000F9B50  3F A0 00 01 */	lis r29, 1
/* 800FCC14 000F9B54  93 81 00 28 */	stw r28, 0x28(r1)
lbl_800FCC18:
/* 800FCC18 000F9B58  38 7E 03 28 */	addi r3, r30, 0x328
/* 800FCC1C 000F9B5C  38 81 00 20 */	addi r4, r1, 0x20
/* 800FCC20 000F9B60  38 A0 00 01 */	li r5, 1
/* 800FCC24 000F9B64  4B F9 3F 55 */	bl OSReceiveMessage
/* 800FCC28 000F9B68  80 81 00 20 */	lwz r4, 0x20(r1)
/* 800FCC2C 000F9B6C  7C 04 F8 40 */	cmplw r4, r31
/* 800FCC30 000F9B70  41 80 00 78 */	blt lbl_800FCCA8
/* 800FCC34 000F9B74  80 BE 03 48 */	lwz r5, 0x348(r30)
/* 800FCC38 000F9B78  80 05 00 0C */	lwz r0, 0xc(r5)
/* 800FCC3C 000F9B7C  80 65 00 00 */	lwz r3, 0(r5)
/* 800FCC40 000F9B80  54 00 10 3A */	slwi r0, r0, 2
/* 800FCC44 000F9B84  7C 83 01 2E */	stwx r4, r3, r0
/* 800FCC48 000F9B88  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800FCC4C 000F9B8C  80 65 00 04 */	lwz r3, 4(r5)
/* 800FCC50 000F9B90  38 84 00 01 */	addi r4, r4, 1
/* 800FCC54 000F9B94  38 03 00 01 */	addi r0, r3, 1
/* 800FCC58 000F9B98  7C 04 00 40 */	cmplw r4, r0
/* 800FCC5C 000F9B9C  41 80 00 08 */	blt lbl_800FCC64
/* 800FCC60 000F9BA0  38 80 00 00 */	li r4, 0
lbl_800FCC64:
/* 800FCC64 000F9BA4  90 85 00 0C */	stw r4, 0xc(r5)
/* 800FCC68 000F9BA8  80 7E 03 48 */	lwz r3, 0x348(r30)
/* 800FCC6C 000F9BAC  80 83 00 08 */	lwz r4, 8(r3)
/* 800FCC70 000F9BB0  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 800FCC74 000F9BB4  7C 04 28 40 */	cmplw r4, r5
/* 800FCC78 000F9BB8  41 81 00 0C */	bgt lbl_800FCC84
/* 800FCC7C 000F9BBC  7C 04 28 50 */	subf r0, r4, r5
/* 800FCC80 000F9BC0  48 00 00 14 */	b lbl_800FCC94
lbl_800FCC84:
/* 800FCC84 000F9BC4  80 63 00 04 */	lwz r3, 4(r3)
/* 800FCC88 000F9BC8  38 03 00 01 */	addi r0, r3, 1
/* 800FCC8C 000F9BCC  7C 05 02 14 */	add r0, r5, r0
/* 800FCC90 000F9BD0  7C 04 00 50 */	subf r0, r4, r0
lbl_800FCC94:
/* 800FCC94 000F9BD4  28 00 00 02 */	cmplwi r0, 2
/* 800FCC98 000F9BD8  40 82 FF 80 */	bne lbl_800FCC18
/* 800FCC9C 000F9BDC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800FCCA0 000F9BE0  4B FA 98 79 */	bl GXEnableBreakPt
/* 800FCCA4 000F9BE4  4B FF FF 74 */	b lbl_800FCC18
lbl_800FCCA8:
/* 800FCCA8 000F9BE8  7C 04 E8 40 */	cmplw r4, r29
/* 800FCCAC 000F9BEC  40 80 00 98 */	bge lbl_800FCD44
/* 800FCCB0 000F9BF0  80 BE 03 48 */	lwz r5, 0x348(r30)
/* 800FCCB4 000F9BF4  80 85 00 08 */	lwz r4, 8(r5)
/* 800FCCB8 000F9BF8  80 65 00 04 */	lwz r3, 4(r5)
/* 800FCCBC 000F9BFC  38 84 00 01 */	addi r4, r4, 1
/* 800FCCC0 000F9C00  38 03 00 01 */	addi r0, r3, 1
/* 800FCCC4 000F9C04  7C 04 00 40 */	cmplw r4, r0
/* 800FCCC8 000F9C08  41 80 00 08 */	blt lbl_800FCCD0
/* 800FCCCC 000F9C0C  38 80 00 00 */	li r4, 0
lbl_800FCCD0:
/* 800FCCD0 000F9C10  90 85 00 08 */	stw r4, 8(r5)
/* 800FCCD4 000F9C14  83 9E 03 48 */	lwz r28, 0x348(r30)
/* 800FCCD8 000F9C18  80 9C 00 08 */	lwz r4, 8(r28)
/* 800FCCDC 000F9C1C  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 800FCCE0 000F9C20  7C 04 28 40 */	cmplw r4, r5
/* 800FCCE4 000F9C24  41 81 00 0C */	bgt lbl_800FCCF0
/* 800FCCE8 000F9C28  7C 04 28 50 */	subf r0, r4, r5
/* 800FCCEC 000F9C2C  48 00 00 14 */	b lbl_800FCD00
lbl_800FCCF0:
/* 800FCCF0 000F9C30  80 7C 00 04 */	lwz r3, 4(r28)
/* 800FCCF4 000F9C34  38 03 00 01 */	addi r0, r3, 1
/* 800FCCF8 000F9C38  7C 05 02 14 */	add r0, r5, r0
/* 800FCCFC 000F9C3C  7C 04 00 50 */	subf r0, r4, r0
lbl_800FCD00:
/* 800FCD00 000F9C40  28 00 00 00 */	cmplwi r0, 0
/* 800FCD04 000F9C44  41 82 FF 14 */	beq lbl_800FCC18
/* 800FCD08 000F9C48  28 00 00 01 */	cmplwi r0, 1
/* 800FCD0C 000F9C4C  40 82 00 0C */	bne lbl_800FCD18
/* 800FCD10 000F9C50  4B FA 98 A1 */	bl GXDisableBreakPt
/* 800FCD14 000F9C54  4B FF FF 04 */	b lbl_800FCC18
lbl_800FCD18:
/* 800FCD18 000F9C58  28 00 00 02 */	cmplwi r0, 2
/* 800FCD1C 000F9C5C  41 80 FE FC */	blt lbl_800FCC18
/* 800FCD20 000F9C60  80 9C 00 08 */	lwz r4, 8(r28)
/* 800FCD24 000F9C64  38 7C 00 00 */	addi r3, r28, 0
/* 800FCD28 000F9C68  38 84 00 01 */	addi r4, r4, 1
/* 800FCD2C 000F9C6C  48 00 00 3D */	bl getLoopIdx__5TFifoFUl
/* 800FCD30 000F9C70  80 9C 00 00 */	lwz r4, 0(r28)
/* 800FCD34 000F9C74  54 60 10 3A */	slwi r0, r3, 2
/* 800FCD38 000F9C78  7C 64 00 2E */	lwzx r3, r4, r0
/* 800FCD3C 000F9C7C  4B FA 97 DD */	bl GXEnableBreakPt
/* 800FCD40 000F9C80  4B FF FE D8 */	b lbl_800FCC18
lbl_800FCD44:
/* 800FCD44 000F9C84  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800FCD48 000F9C88  38 60 00 00 */	li r3, 0
/* 800FCD4C 000F9C8C  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 800FCD50 000F9C90  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 800FCD54 000F9C94  7C 08 03 A6 */	mtlr r0
/* 800FCD58 000F9C98  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 800FCD5C 000F9C9C  83 81 00 28 */	lwz r28, 0x28(r1)
/* 800FCD60 000F9CA0  38 21 00 38 */	addi r1, r1, 0x38
/* 800FCD64 000F9CA4  4E 80 00 20 */	blr 

.global getLoopIdx__5TFifoFUl
getLoopIdx__5TFifoFUl:
/* 800FCD68 000F9CA8  80 63 00 04 */	lwz r3, 4(r3)
/* 800FCD6C 000F9CAC  38 03 00 01 */	addi r0, r3, 1
/* 800FCD70 000F9CB0  7C 04 00 40 */	cmplw r4, r0
/* 800FCD74 000F9CB4  41 80 00 08 */	blt lbl_800FCD7C
/* 800FCD78 000F9CB8  38 80 00 00 */	li r4, 0
lbl_800FCD7C:
/* 800FCD7C 000F9CBC  7C 83 23 78 */	mr r3, r4
/* 800FCD80 000F9CC0  4E 80 00 20 */	blr 

.global drawSyncCallback__16TDrawSyncManagerFUs
drawSyncCallback__16TDrawSyncManagerFUs:
/* 800FCD84 000F9CC4  7C 08 02 A6 */	mflr r0
/* 800FCD88 000F9CC8  38 83 00 00 */	addi r4, r3, 0
/* 800FCD8C 000F9CCC  90 01 00 04 */	stw r0, 4(r1)
/* 800FCD90 000F9CD0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800FCD94 000F9CD4  80 0D 98 40 */	lwz r0, smInstance__16TDrawSyncManager-_SDA_BASE_(r13)
/* 800FCD98 000F9CD8  28 00 00 00 */	cmplwi r0, 0
/* 800FCD9C 000F9CDC  41 82 00 0C */	beq lbl_800FCDA8
/* 800FCDA0 000F9CE0  7C 03 03 78 */	mr r3, r0
/* 800FCDA4 000F9CE4  4B FF FD 41 */	bl drawSyncCallbackSub__16TDrawSyncManagerFUs
lbl_800FCDA8:
/* 800FCDA8 000F9CE8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800FCDAC 000F9CEC  38 21 00 08 */	addi r1, r1, 8
/* 800FCDB0 000F9CF0  7C 08 03 A6 */	mtlr r0
/* 800FCDB4 000F9CF4  4E 80 00 20 */	blr 

.global start__16TDrawSyncManagerFUlUll
start__16TDrawSyncManagerFUlUll:
/* 800FCDB8 000F9CF8  7C 08 02 A6 */	mflr r0
/* 800FCDBC 000F9CFC  90 01 00 04 */	stw r0, 4(r1)
/* 800FCDC0 000F9D00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800FCDC4 000F9D04  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800FCDC8 000F9D08  3B 43 00 00 */	addi r26, r3, 0
/* 800FCDCC 000F9D0C  3B E4 00 00 */	addi r31, r4, 0
/* 800FCDD0 000F9D10  3B 65 00 00 */	addi r27, r5, 0
/* 800FCDD4 000F9D14  80 0D 98 40 */	lwz r0, smInstance__16TDrawSyncManager-_SDA_BASE_(r13)
/* 800FCDD8 000F9D18  28 00 00 00 */	cmplwi r0, 0
/* 800FCDDC 000F9D1C  40 82 00 FC */	bne lbl_800FCED8
/* 800FCDE0 000F9D20  38 60 03 50 */	li r3, 0x350
/* 800FCDE4 000F9D24  4B F0 FA CD */	bl __nw__FUl
/* 800FCDE8 000F9D28  7C 7E 1B 79 */	or. r30, r3, r3
/* 800FCDEC 000F9D2C  41 82 00 E8 */	beq lbl_800FCED4
/* 800FCDF0 000F9D30  93 C1 00 14 */	stw r30, 0x14(r1)
/* 800FCDF4 000F9D34  38 61 00 18 */	addi r3, r1, 0x18
/* 800FCDF8 000F9D38  38 80 00 00 */	li r4, 0
/* 800FCDFC 000F9D3C  38 A0 00 00 */	li r5, 0
/* 800FCE00 000F9D40  38 C0 00 00 */	li r6, 0
/* 800FCE04 000F9D44  48 00 04 95 */	bl __ct__Q216TDrawSyncManager19TDrawSyncTokenRangeFUsUsP17TDrawSyncCallback
/* 800FCE08 000F9D48  83 81 00 14 */	lwz r28, 0x14(r1)
/* 800FCE0C 000F9D4C  3B A0 00 00 */	li r29, 0
/* 800FCE10 000F9D50  88 01 00 20 */	lbz r0, 0x20(r1)
/* 800FCE14 000F9D54  7F 45 D3 78 */	mr r5, r26
/* 800FCE18 000F9D58  38 7C 00 00 */	addi r3, r28, 0
/* 800FCE1C 000F9D5C  98 1C 00 00 */	stb r0, 0(r28)
/* 800FCE20 000F9D60  38 C1 00 18 */	addi r6, r1, 0x18
/* 800FCE24 000F9D64  93 BC 00 04 */	stw r29, 4(r28)
/* 800FCE28 000F9D68  80 1C 00 04 */	lwz r0, 4(r28)
/* 800FCE2C 000F9D6C  90 1C 00 08 */	stw r0, 8(r28)
/* 800FCE30 000F9D70  93 BC 00 0C */	stw r29, 0xc(r28)
/* 800FCE34 000F9D74  C0 02 92 78 */	lfs f0, $$21665-_SDA2_BASE_(r2)
/* 800FCE38 000F9D78  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 800FCE3C 000F9D7C  93 BC 00 14 */	stw r29, 0x14(r28)
/* 800FCE40 000F9D80  80 9C 00 08 */	lwz r4, 8(r28)
/* 800FCE44 000F9D84  48 00 00 AD */	bl insert__Q27JGadget116TVector$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$4Q27JGadget53TAllocator$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$1$$1FPQ216TDrawSyncManager19TDrawSyncTokenRangeUlRCQ216TDrawSyncManager19TDrawSyncTokenRange
/* 800FCE48 000F9D88  B3 BC 03 4C */	sth r29, 0x34c(r28)
/* 800FCE4C 000F9D8C  38 60 10 00 */	li r3, 0x1000
/* 800FCE50 000F9D90  4B F0 FB 61 */	bl __nwa__FUl
/* 800FCE54 000F9D94  38 C3 00 00 */	addi r6, r3, 0
/* 800FCE58 000F9D98  3C 80 80 10 */	lis r4, threadFunc__16TDrawSyncManagerFPv@ha
/* 800FCE5C 000F9D9C  38 84 CB F0 */	addi r4, r4, threadFunc__16TDrawSyncManagerFPv@l
/* 800FCE60 000F9DA0  38 BC 00 00 */	addi r5, r28, 0
/* 800FCE64 000F9DA4  39 1B 00 00 */	addi r8, r27, 0
/* 800FCE68 000F9DA8  38 7C 00 18 */	addi r3, r28, 0x18
/* 800FCE6C 000F9DAC  38 C6 10 00 */	addi r6, r6, 0x1000
/* 800FCE70 000F9DB0  38 E0 10 00 */	li r7, 0x1000
/* 800FCE74 000F9DB4  39 20 00 00 */	li r9, 0
/* 800FCE78 000F9DB8  4B F9 63 F1 */	bl OSCreateThread
/* 800FCE7C 000F9DBC  38 60 00 50 */	li r3, 0x50
/* 800FCE80 000F9DC0  4B F0 FB 31 */	bl __nwa__FUl
/* 800FCE84 000F9DC4  38 83 00 00 */	addi r4, r3, 0
/* 800FCE88 000F9DC8  38 7C 03 28 */	addi r3, r28, 0x328
/* 800FCE8C 000F9DCC  38 A0 00 14 */	li r5, 0x14
/* 800FCE90 000F9DD0  4B F9 3B C1 */	bl OSInitMessageQueue
/* 800FCE94 000F9DD4  38 60 00 10 */	li r3, 0x10
/* 800FCE98 000F9DD8  4B F0 FA 19 */	bl __nw__FUl
/* 800FCE9C 000F9DDC  7C 7A 1B 79 */	or. r26, r3, r3
/* 800FCEA0 000F9DE0  41 82 00 24 */	beq lbl_800FCEC4
/* 800FCEA4 000F9DE4  93 FA 00 04 */	stw r31, 4(r26)
/* 800FCEA8 000F9DE8  93 BA 00 08 */	stw r29, 8(r26)
/* 800FCEAC 000F9DEC  93 BA 00 0C */	stw r29, 0xc(r26)
/* 800FCEB0 000F9DF0  80 7A 00 04 */	lwz r3, 4(r26)
/* 800FCEB4 000F9DF4  38 03 00 01 */	addi r0, r3, 1
/* 800FCEB8 000F9DF8  54 03 10 3A */	slwi r3, r0, 2
/* 800FCEBC 000F9DFC  4B F0 FA F5 */	bl __nwa__FUl
/* 800FCEC0 000F9E00  90 7A 00 00 */	stw r3, 0(r26)
lbl_800FCEC4:
/* 800FCEC4 000F9E04  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800FCEC8 000F9E08  93 43 03 48 */	stw r26, 0x348(r3)
/* 800FCECC 000F9E0C  38 63 00 18 */	addi r3, r3, 0x18
/* 800FCED0 000F9E10  4B F9 69 39 */	bl OSResumeThread
lbl_800FCED4:
/* 800FCED4 000F9E14  93 CD 98 40 */	stw r30, smInstance__16TDrawSyncManager-_SDA_BASE_(r13)
lbl_800FCED8:
/* 800FCED8 000F9E18  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800FCEDC 000F9E1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800FCEE0 000F9E20  38 21 00 40 */	addi r1, r1, 0x40
/* 800FCEE4 000F9E24  80 6D 98 40 */	lwz r3, smInstance__16TDrawSyncManager-_SDA_BASE_(r13)
/* 800FCEE8 000F9E28  7C 08 03 A6 */	mtlr r0
/* 800FCEEC 000F9E2C  4E 80 00 20 */	blr 

.global insert__Q27JGadget116TVector$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$4Q27JGadget53TAllocator$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$1$$1FPQ216TDrawSyncManager19TDrawSyncTokenRangeUlRCQ216TDrawSyncManager19TDrawSyncTokenRange
insert__Q27JGadget116TVector$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$4Q27JGadget53TAllocator$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$1$$1FPQ216TDrawSyncManager19TDrawSyncTokenRangeUlRCQ216TDrawSyncManager19TDrawSyncTokenRange:
/* 800FCEF0 000F9E30  7C 08 02 A6 */	mflr r0
/* 800FCEF4 000F9E34  90 01 00 04 */	stw r0, 4(r1)
/* 800FCEF8 000F9E38  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800FCEFC 000F9E3C  BF 21 00 E4 */	stmw r25, 0xe4(r1)
/* 800FCF00 000F9E40  7C BD 2B 79 */	or. r29, r5, r5
/* 800FCF04 000F9E44  3B C3 00 00 */	addi r30, r3, 0
/* 800FCF08 000F9E48  3B E6 00 00 */	addi r31, r6, 0
/* 800FCF0C 000F9E4C  41 82 03 78 */	beq lbl_800FD284
/* 800FCF10 000F9E50  7C 9B 23 78 */	mr r27, r4
/* 800FCF14 000F9E54  40 82 00 08 */	bne lbl_800FCF1C
/* 800FCF18 000F9E58  48 00 03 2C */	b lbl_800FD244
lbl_800FCF1C:
/* 800FCF1C 000F9E5C  80 BE 00 04 */	lwz r5, 4(r30)
/* 800FCF20 000F9E60  28 05 00 00 */	cmplwi r5, 0
/* 800FCF24 000F9E64  40 82 00 0C */	bne lbl_800FCF30
/* 800FCF28 000F9E68  38 60 00 00 */	li r3, 0
/* 800FCF2C 000F9E6C  48 00 00 14 */	b lbl_800FCF40
lbl_800FCF30:
/* 800FCF30 000F9E70  80 1E 00 08 */	lwz r0, 8(r30)
/* 800FCF34 000F9E74  7C 05 00 50 */	subf r0, r5, r0
/* 800FCF38 000F9E78  7C 03 1E 70 */	srawi r3, r0, 3
/* 800FCF3C 000F9E7C  7C 63 01 94 */	addze r3, r3
lbl_800FCF40:
/* 800FCF40 000F9E80  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800FCF44 000F9E84  7C 7D 1A 14 */	add r3, r29, r3
/* 800FCF48 000F9E88  7C 03 00 40 */	cmplw r3, r0
/* 800FCF4C 000F9E8C  41 81 01 AC */	bgt lbl_800FD0F8
/* 800FCF50 000F9E90  57 A0 18 38 */	slwi r0, r29, 3
/* 800FCF54 000F9E94  80 FE 00 08 */	lwz r7, 8(r30)
/* 800FCF58 000F9E98  7D 1B 02 14 */	add r8, r27, r0
/* 800FCF5C 000F9E9C  7C 08 38 40 */	cmplw r8, r7
/* 800FCF60 000F9EA0  40 80 01 3C */	bge lbl_800FD09C
/* 800FCF64 000F9EA4  7D 20 38 50 */	subf r9, r0, r7
/* 800FCF68 000F9EA8  38 C7 00 00 */	addi r6, r7, 0
/* 800FCF6C 000F9EAC  38 A9 00 00 */	addi r5, r9, 0
/* 800FCF70 000F9EB0  48 00 00 2C */	b lbl_800FCF9C
lbl_800FCF74:
/* 800FCF74 000F9EB4  28 06 00 00 */	cmplwi r6, 0
/* 800FCF78 000F9EB8  41 82 00 1C */	beq lbl_800FCF94
/* 800FCF7C 000F9EBC  A0 65 00 00 */	lhz r3, 0(r5)
/* 800FCF80 000F9EC0  B0 66 00 00 */	sth r3, 0(r6)
/* 800FCF84 000F9EC4  A0 65 00 02 */	lhz r3, 2(r5)
/* 800FCF88 000F9EC8  B0 66 00 02 */	sth r3, 2(r6)
/* 800FCF8C 000F9ECC  80 65 00 04 */	lwz r3, 4(r5)
/* 800FCF90 000F9ED0  90 66 00 04 */	stw r3, 4(r6)
lbl_800FCF94:
/* 800FCF94 000F9ED4  38 C6 00 08 */	addi r6, r6, 8
/* 800FCF98 000F9ED8  38 A5 00 08 */	addi r5, r5, 8
lbl_800FCF9C:
/* 800FCF9C 000F9EDC  7C 05 38 40 */	cmplw r5, r7
/* 800FCFA0 000F9EE0  40 82 FF D4 */	bne lbl_800FCF74
/* 800FCFA4 000F9EE4  38 A9 00 07 */	addi r5, r9, 7
/* 800FCFA8 000F9EE8  80 FE 00 08 */	lwz r7, 8(r30)
/* 800FCFAC 000F9EEC  7C BB 28 50 */	subf r5, r27, r5
/* 800FCFB0 000F9EF0  7C 09 D8 40 */	cmplw r9, r27
/* 800FCFB4 000F9EF4  54 A5 E8 FE */	srwi r5, r5, 3
/* 800FCFB8 000F9EF8  40 81 00 CC */	ble lbl_800FD084
/* 800FCFBC 000F9EFC  54 A3 E8 FF */	rlwinm. r3, r5, 0x1d, 3, 0x1f
/* 800FCFC0 000F9F00  7C 69 03 A6 */	mtctr r3
/* 800FCFC4 000F9F04  41 82 00 98 */	beq lbl_800FD05C
lbl_800FCFC8:
/* 800FCFC8 000F9F08  80 C9 FF F8 */	lwz r6, -8(r9)
/* 800FCFCC 000F9F0C  80 69 FF FC */	lwz r3, -4(r9)
/* 800FCFD0 000F9F10  90 C7 FF F8 */	stw r6, -8(r7)
/* 800FCFD4 000F9F14  90 67 FF FC */	stw r3, -4(r7)
/* 800FCFD8 000F9F18  80 C9 FF F0 */	lwz r6, -0x10(r9)
/* 800FCFDC 000F9F1C  80 69 FF F4 */	lwz r3, -0xc(r9)
/* 800FCFE0 000F9F20  90 C7 FF F0 */	stw r6, -0x10(r7)
/* 800FCFE4 000F9F24  90 67 FF F4 */	stw r3, -0xc(r7)
/* 800FCFE8 000F9F28  80 C9 FF E8 */	lwz r6, -0x18(r9)
/* 800FCFEC 000F9F2C  80 69 FF EC */	lwz r3, -0x14(r9)
/* 800FCFF0 000F9F30  90 C7 FF E8 */	stw r6, -0x18(r7)
/* 800FCFF4 000F9F34  90 67 FF EC */	stw r3, -0x14(r7)
/* 800FCFF8 000F9F38  80 C9 FF E0 */	lwz r6, -0x20(r9)
/* 800FCFFC 000F9F3C  80 69 FF E4 */	lwz r3, -0x1c(r9)
/* 800FD000 000F9F40  90 C7 FF E0 */	stw r6, -0x20(r7)
/* 800FD004 000F9F44  90 67 FF E4 */	stw r3, -0x1c(r7)
/* 800FD008 000F9F48  80 C9 FF D8 */	lwz r6, -0x28(r9)
/* 800FD00C 000F9F4C  80 69 FF DC */	lwz r3, -0x24(r9)
/* 800FD010 000F9F50  90 C7 FF D8 */	stw r6, -0x28(r7)
/* 800FD014 000F9F54  90 67 FF DC */	stw r3, -0x24(r7)
/* 800FD018 000F9F58  80 C9 FF D0 */	lwz r6, -0x30(r9)
/* 800FD01C 000F9F5C  80 69 FF D4 */	lwz r3, -0x2c(r9)
/* 800FD020 000F9F60  90 C7 FF D0 */	stw r6, -0x30(r7)
/* 800FD024 000F9F64  90 67 FF D4 */	stw r3, -0x2c(r7)
/* 800FD028 000F9F68  80 C9 FF C8 */	lwz r6, -0x38(r9)
/* 800FD02C 000F9F6C  80 69 FF CC */	lwz r3, -0x34(r9)
/* 800FD030 000F9F70  90 C7 FF C8 */	stw r6, -0x38(r7)
/* 800FD034 000F9F74  90 67 FF CC */	stw r3, -0x34(r7)
/* 800FD038 000F9F78  80 C9 FF C0 */	lwz r6, -0x40(r9)
/* 800FD03C 000F9F7C  80 69 FF C4 */	lwz r3, -0x3c(r9)
/* 800FD040 000F9F80  39 29 FF C0 */	addi r9, r9, -64
/* 800FD044 000F9F84  90 C7 FF C0 */	stw r6, -0x40(r7)
/* 800FD048 000F9F88  90 67 FF C4 */	stw r3, -0x3c(r7)
/* 800FD04C 000F9F8C  38 E7 FF C0 */	addi r7, r7, -64
/* 800FD050 000F9F90  42 00 FF 78 */	bdnz lbl_800FCFC8
/* 800FD054 000F9F94  70 A5 00 07 */	andi. r5, r5, 7
/* 800FD058 000F9F98  41 82 00 2C */	beq lbl_800FD084
lbl_800FD05C:
/* 800FD05C 000F9F9C  7C A9 03 A6 */	mtctr r5
lbl_800FD060:
/* 800FD060 000F9FA0  80 C9 FF F8 */	lwz r6, -8(r9)
/* 800FD064 000F9FA4  80 69 FF FC */	lwz r3, -4(r9)
/* 800FD068 000F9FA8  39 29 FF F8 */	addi r9, r9, -8
/* 800FD06C 000F9FAC  90 C7 FF F8 */	stw r6, -8(r7)
/* 800FD070 000F9FB0  90 67 FF FC */	stw r3, -4(r7)
/* 800FD074 000F9FB4  38 E7 FF F8 */	addi r7, r7, -8
/* 800FD078 000F9FB8  42 00 FF E8 */	bdnz lbl_800FD060
/* 800FD07C 000F9FBC  48 00 00 08 */	b lbl_800FD084
lbl_800FD080:
/* 800FD080 000F9FC0  3B 7B 00 08 */	addi r27, r27, 8
lbl_800FD084:
/* 800FD084 000F9FC4  7C 1B 40 40 */	cmplw r27, r8
/* 800FD088 000F9FC8  40 82 FF F8 */	bne lbl_800FD080
/* 800FD08C 000F9FCC  80 7E 00 08 */	lwz r3, 8(r30)
/* 800FD090 000F9FD0  7C 03 02 14 */	add r0, r3, r0
/* 800FD094 000F9FD4  90 1E 00 08 */	stw r0, 8(r30)
/* 800FD098 000F9FD8  48 00 01 AC */	b lbl_800FD244
lbl_800FD09C:
/* 800FD09C 000F9FDC  7F 65 DB 78 */	mr r5, r27
/* 800FD0A0 000F9FE0  48 00 00 2C */	b lbl_800FD0CC
lbl_800FD0A4:
/* 800FD0A4 000F9FE4  28 08 00 00 */	cmplwi r8, 0
/* 800FD0A8 000F9FE8  41 82 00 1C */	beq lbl_800FD0C4
/* 800FD0AC 000F9FEC  A0 65 00 00 */	lhz r3, 0(r5)
/* 800FD0B0 000F9FF0  B0 68 00 00 */	sth r3, 0(r8)
/* 800FD0B4 000F9FF4  A0 65 00 02 */	lhz r3, 2(r5)
/* 800FD0B8 000F9FF8  B0 68 00 02 */	sth r3, 2(r8)
/* 800FD0BC 000F9FFC  80 65 00 04 */	lwz r3, 4(r5)
/* 800FD0C0 000FA000  90 68 00 04 */	stw r3, 4(r8)
lbl_800FD0C4:
/* 800FD0C4 000FA004  39 08 00 08 */	addi r8, r8, 8
/* 800FD0C8 000FA008  38 A5 00 08 */	addi r5, r5, 8
lbl_800FD0CC:
/* 800FD0CC 000FA00C  7C 05 38 40 */	cmplw r5, r7
/* 800FD0D0 000FA010  40 82 FF D4 */	bne lbl_800FD0A4
/* 800FD0D4 000FA014  80 7E 00 08 */	lwz r3, 8(r30)
/* 800FD0D8 000FA018  48 00 00 08 */	b lbl_800FD0E0
lbl_800FD0DC:
/* 800FD0DC 000FA01C  3B 7B 00 08 */	addi r27, r27, 8
lbl_800FD0E0:
/* 800FD0E0 000FA020  7C 1B 18 40 */	cmplw r27, r3
/* 800FD0E4 000FA024  40 82 FF F8 */	bne lbl_800FD0DC
/* 800FD0E8 000FA028  80 7E 00 08 */	lwz r3, 8(r30)
/* 800FD0EC 000FA02C  7C 03 02 14 */	add r0, r3, r0
/* 800FD0F0 000FA030  90 1E 00 08 */	stw r0, 8(r30)
/* 800FD0F4 000FA034  48 00 01 50 */	b lbl_800FD244
lbl_800FD0F8:
/* 800FD0F8 000FA038  28 05 00 00 */	cmplwi r5, 0
/* 800FD0FC 000FA03C  40 82 00 0C */	bne lbl_800FD108
/* 800FD100 000FA040  38 60 00 00 */	li r3, 0
/* 800FD104 000FA044  48 00 00 14 */	b lbl_800FD118
lbl_800FD108:
/* 800FD108 000FA048  80 1E 00 08 */	lwz r0, 8(r30)
/* 800FD10C 000FA04C  7C 05 00 50 */	subf r0, r5, r0
/* 800FD110 000FA050  7C 03 1E 70 */	srawi r3, r0, 3
/* 800FD114 000FA054  7C 63 01 94 */	addze r3, r3
lbl_800FD118:
/* 800FD118 000FA058  90 61 00 DC */	stw r3, 0xdc(r1)
/* 800FD11C 000FA05C  3C 00 43 30 */	lis r0, 0x4330
/* 800FD120 000FA060  C8 42 92 80 */	lfd f2, $$21825-_SDA2_BASE_(r2)
/* 800FD124 000FA064  7F 23 EA 14 */	add r25, r3, r29
/* 800FD128 000FA068  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 800FD12C 000FA06C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800FD130 000FA070  C8 21 00 D8 */	lfd f1, 0xd8(r1)
/* 800FD134 000FA074  EC 21 10 28 */	fsubs f1, f1, f2
/* 800FD138 000FA078  EC 21 00 32 */	fmuls f1, f1, f0
/* 800FD13C 000FA07C  4B F8 5A 81 */	bl __cvt_fp2unsigned
/* 800FD140 000FA080  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800FD144 000FA084  7C 00 1A 14 */	add r0, r0, r3
/* 800FD148 000FA088  7C 19 00 40 */	cmplw r25, r0
/* 800FD14C 000FA08C  40 81 00 08 */	ble lbl_800FD154
/* 800FD150 000FA090  48 00 00 08 */	b lbl_800FD158
lbl_800FD154:
/* 800FD154 000FA094  7C 19 03 78 */	mr r25, r0
lbl_800FD158:
/* 800FD158 000FA098  57 23 18 38 */	slwi r3, r25, 3
/* 800FD15C 000FA09C  4B F0 F7 55 */	bl __nw__FUl
/* 800FD160 000FA0A0  7C 7A 1B 79 */	or. r26, r3, r3
/* 800FD164 000FA0A4  40 82 00 0C */	bne lbl_800FD170
/* 800FD168 000FA0A8  80 9E 00 08 */	lwz r4, 8(r30)
/* 800FD16C 000FA0AC  48 00 00 D8 */	b lbl_800FD244
lbl_800FD170:
/* 800FD170 000FA0B0  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 800FD174 000FA0B4  7F 5C D3 78 */	mr r28, r26
/* 800FD178 000FA0B8  93 41 00 CC */	stw r26, 0xcc(r1)
/* 800FD17C 000FA0BC  80 7E 00 04 */	lwz r3, 4(r30)
/* 800FD180 000FA0C0  48 00 00 2C */	b lbl_800FD1AC
lbl_800FD184:
/* 800FD184 000FA0C4  28 1C 00 00 */	cmplwi r28, 0
/* 800FD188 000FA0C8  41 82 00 1C */	beq lbl_800FD1A4
/* 800FD18C 000FA0CC  A0 03 00 00 */	lhz r0, 0(r3)
/* 800FD190 000FA0D0  B0 1C 00 00 */	sth r0, 0(r28)
/* 800FD194 000FA0D4  A0 03 00 02 */	lhz r0, 2(r3)
/* 800FD198 000FA0D8  B0 1C 00 02 */	sth r0, 2(r28)
/* 800FD19C 000FA0DC  80 03 00 04 */	lwz r0, 4(r3)
/* 800FD1A0 000FA0E0  90 1C 00 04 */	stw r0, 4(r28)
lbl_800FD1A4:
/* 800FD1A4 000FA0E4  3B 9C 00 08 */	addi r28, r28, 8
/* 800FD1A8 000FA0E8  38 63 00 08 */	addi r3, r3, 8
lbl_800FD1AC:
/* 800FD1AC 000FA0EC  7C 03 D8 40 */	cmplw r3, r27
/* 800FD1B0 000FA0F0  40 82 FF D4 */	bne lbl_800FD184
/* 800FD1B4 000FA0F4  57 A0 18 38 */	slwi r0, r29, 3
/* 800FD1B8 000FA0F8  80 7E 00 08 */	lwz r3, 8(r30)
/* 800FD1BC 000FA0FC  7C 9C 02 14 */	add r4, r28, r0
/* 800FD1C0 000FA100  48 00 00 2C */	b lbl_800FD1EC
lbl_800FD1C4:
/* 800FD1C4 000FA104  28 04 00 00 */	cmplwi r4, 0
/* 800FD1C8 000FA108  41 82 00 1C */	beq lbl_800FD1E4
/* 800FD1CC 000FA10C  A0 1B 00 00 */	lhz r0, 0(r27)
/* 800FD1D0 000FA110  B0 04 00 00 */	sth r0, 0(r4)
/* 800FD1D4 000FA114  A0 1B 00 02 */	lhz r0, 2(r27)
/* 800FD1D8 000FA118  B0 04 00 02 */	sth r0, 2(r4)
/* 800FD1DC 000FA11C  80 1B 00 04 */	lwz r0, 4(r27)
/* 800FD1E0 000FA120  90 04 00 04 */	stw r0, 4(r4)
lbl_800FD1E4:
/* 800FD1E4 000FA124  38 84 00 08 */	addi r4, r4, 8
/* 800FD1E8 000FA128  3B 7B 00 08 */	addi r27, r27, 8
lbl_800FD1EC:
/* 800FD1EC 000FA12C  7C 1B 18 40 */	cmplw r27, r3
/* 800FD1F0 000FA130  40 82 FF D4 */	bne lbl_800FD1C4
/* 800FD1F4 000FA134  80 9E 00 04 */	lwz r4, 4(r30)
/* 800FD1F8 000FA138  7F C3 F3 78 */	mr r3, r30
/* 800FD1FC 000FA13C  80 BE 00 08 */	lwz r5, 8(r30)
/* 800FD200 000FA140  4B FF F9 DD */	bl DestroyElement___Q27JGadget116TVector$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$4Q27JGadget53TAllocator$$0Q216TDrawSyncManager19TDrawSyncTokenRange$$1$$1FPQ216TDrawSyncManager19TDrawSyncTokenRangePQ216TDrawSyncManager19TDrawSyncTokenRange
/* 800FD204 000FA144  80 1E 00 04 */	lwz r0, 4(r30)
/* 800FD208 000FA148  90 01 00 CC */	stw r0, 0xcc(r1)
/* 800FD20C 000FA14C  80 7E 00 04 */	lwz r3, 4(r30)
/* 800FD210 000FA150  80 1E 00 08 */	lwz r0, 8(r30)
/* 800FD214 000FA154  7C 03 00 50 */	subf r0, r3, r0
/* 800FD218 000FA158  7C 00 1E 70 */	srawi r0, r0, 3
/* 800FD21C 000FA15C  7C 00 01 94 */	addze r0, r0
/* 800FD220 000FA160  7C 1D 02 14 */	add r0, r29, r0
/* 800FD224 000FA164  54 00 18 38 */	slwi r0, r0, 3
/* 800FD228 000FA168  7C 1A 02 14 */	add r0, r26, r0
/* 800FD22C 000FA16C  90 1E 00 08 */	stw r0, 8(r30)
/* 800FD230 000FA170  93 5E 00 04 */	stw r26, 4(r30)
/* 800FD234 000FA174  93 3E 00 0C */	stw r25, 0xc(r30)
/* 800FD238 000FA178  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 800FD23C 000FA17C  4B F0 F8 75 */	bl __dl__FPv
/* 800FD240 000FA180  7F 84 E3 78 */	mr r4, r28
lbl_800FD244:
/* 800FD244 000FA184  80 1E 00 08 */	lwz r0, 8(r30)
/* 800FD248 000FA188  7C 04 00 40 */	cmplw r4, r0
/* 800FD24C 000FA18C  41 82 00 38 */	beq lbl_800FD284
/* 800FD250 000FA190  28 1D 00 00 */	cmplwi r29, 0
/* 800FD254 000FA194  7F A9 03 A6 */	mtctr r29
/* 800FD258 000FA198  41 82 00 2C */	beq lbl_800FD284
lbl_800FD25C:
/* 800FD25C 000FA19C  28 04 00 00 */	cmplwi r4, 0
/* 800FD260 000FA1A0  41 82 00 1C */	beq lbl_800FD27C
/* 800FD264 000FA1A4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 800FD268 000FA1A8  B0 04 00 00 */	sth r0, 0(r4)
/* 800FD26C 000FA1AC  A0 1F 00 02 */	lhz r0, 2(r31)
/* 800FD270 000FA1B0  B0 04 00 02 */	sth r0, 2(r4)
/* 800FD274 000FA1B4  80 1F 00 04 */	lwz r0, 4(r31)
/* 800FD278 000FA1B8  90 04 00 04 */	stw r0, 4(r4)
lbl_800FD27C:
/* 800FD27C 000FA1BC  38 84 00 08 */	addi r4, r4, 8
/* 800FD280 000FA1C0  42 00 FF DC */	bdnz lbl_800FD25C
lbl_800FD284:
/* 800FD284 000FA1C4  BB 21 00 E4 */	lmw r25, 0xe4(r1)
/* 800FD288 000FA1C8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 800FD28C 000FA1CC  38 21 01 00 */	addi r1, r1, 0x100
/* 800FD290 000FA1D0  7C 08 03 A6 */	mtlr r0
/* 800FD294 000FA1D4  4E 80 00 20 */	blr 

.global __ct__Q216TDrawSyncManager19TDrawSyncTokenRangeFUsUsP17TDrawSyncCallback
__ct__Q216TDrawSyncManager19TDrawSyncTokenRangeFUsUsP17TDrawSyncCallback:
/* 800FD298 000FA1D8  B0 83 00 00 */	sth r4, 0(r3)
/* 800FD29C 000FA1DC  B0 A3 00 02 */	sth r5, 2(r3)
/* 800FD2A0 000FA1E0  90 C3 00 04 */	stw r6, 4(r3)
/* 800FD2A4 000FA1E4  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
.global $$21665
$$21665:
	.incbin "baserom.dol", 0x3E4F78, 0x8
.global $$21825
$$21825:
	.incbin "baserom.dol", 0x3E4F80, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global smInstance__16TDrawSyncManager
smInstance__16TDrawSyncManager:
	.skip 0x8
