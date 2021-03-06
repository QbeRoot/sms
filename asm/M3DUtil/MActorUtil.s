.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global SMS_MakeMActor__FPCcPCcUlUl
SMS_MakeMActor__FPCcPCcUlUl:
/* 800D9A74 000D69B4  7C 08 02 A6 */	mflr r0
/* 800D9A78 000D69B8  90 01 00 04 */	stw r0, 4(r1)
/* 800D9A7C 000D69BC  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800D9A80 000D69C0  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800D9A84 000D69C4  3B 63 00 00 */	addi r27, r3, 0
/* 800D9A88 000D69C8  3B 84 00 00 */	addi r28, r4, 0
/* 800D9A8C 000D69CC  3B A5 00 00 */	addi r29, r5, 0
/* 800D9A90 000D69D0  3B C6 00 00 */	addi r30, r6, 0
/* 800D9A94 000D69D4  38 60 00 4C */	li r3, 0x4c
/* 800D9A98 000D69D8  4B F3 2E 19 */	bl __nw__FUl
/* 800D9A9C 000D69DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 800D9AA0 000D69E0  41 82 00 0C */	beq lbl_800D9AAC
/* 800D9AA4 000D69E4  7F E3 FB 78 */	mr r3, r31
/* 800D9AA8 000D69E8  4B FF E3 5D */	bl __ct__13MActorAnmDataFv
lbl_800D9AAC:
/* 800D9AAC 000D69EC  38 7F 00 00 */	addi r3, r31, 0
/* 800D9AB0 000D69F0  38 9B 00 00 */	addi r4, r27, 0
/* 800D9AB4 000D69F4  38 A0 00 00 */	li r5, 0
/* 800D9AB8 000D69F8  4B FF DC A5 */	bl init__13MActorAnmDataFPCcPPCc
/* 800D9ABC 000D69FC  38 7C 00 00 */	addi r3, r28, 0
/* 800D9AC0 000D6A00  38 9F 00 00 */	addi r4, r31, 0
/* 800D9AC4 000D6A04  38 DD 00 00 */	addi r6, r29, 0
/* 800D9AC8 000D6A08  38 FE 00 00 */	addi r7, r30, 0
/* 800D9ACC 000D6A0C  38 A0 00 01 */	li r5, 1
/* 800D9AD0 000D6A10  48 00 00 B9 */	bl SMS_MakeMActorsWithAnmData__FPCcP13MActorAnmDataiUlUl
/* 800D9AD4 000D6A14  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 800D9AD8 000D6A18  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800D9ADC 000D6A1C  38 21 00 38 */	addi r1, r1, 0x38
/* 800D9AE0 000D6A20  80 63 00 00 */	lwz r3, 0(r3)
/* 800D9AE4 000D6A24  7C 08 03 A6 */	mtlr r0
/* 800D9AE8 000D6A28  4E 80 00 20 */	blr 

.global SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl:
/* 800D9AEC 000D6A2C  7C 08 02 A6 */	mflr r0
/* 800D9AF0 000D6A30  90 01 00 04 */	stw r0, 4(r1)
/* 800D9AF4 000D6A34  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800D9AF8 000D6A38  93 E1 00 34 */	stw r31, 0x34(r1)
/* 800D9AFC 000D6A3C  93 C1 00 30 */	stw r30, 0x30(r1)
/* 800D9B00 000D6A40  3B C6 00 00 */	addi r30, r6, 0
/* 800D9B04 000D6A44  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 800D9B08 000D6A48  3B A5 00 00 */	addi r29, r5, 0
/* 800D9B0C 000D6A4C  93 81 00 28 */	stw r28, 0x28(r1)
/* 800D9B10 000D6A50  3B 84 00 00 */	addi r28, r4, 0
/* 800D9B14 000D6A54  4B F3 21 A9 */	bl getGlbResource__13JKRFileLoaderFPCc
/* 800D9B18 000D6A58  7F C4 F3 78 */	mr r4, r30
/* 800D9B1C 000D6A5C  4B F5 6F 49 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 800D9B20 000D6A60  3B C3 00 00 */	addi r30, r3, 0
/* 800D9B24 000D6A64  38 60 00 1C */	li r3, 0x1c
/* 800D9B28 000D6A68  4B F3 2D 89 */	bl __nw__FUl
/* 800D9B2C 000D6A6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800D9B30 000D6A70  41 82 00 10 */	beq lbl_800D9B40
/* 800D9B34 000D6A74  38 7F 00 00 */	addi r3, r31, 0
/* 800D9B38 000D6A78  38 9E 00 00 */	addi r4, r30, 0
/* 800D9B3C 000D6A7C  4B FF FA 09 */	bl __ct__12SDLModelDataFP12J3DModelData
lbl_800D9B40:
/* 800D9B40 000D6A80  3B DF 00 00 */	addi r30, r31, 0
/* 800D9B44 000D6A84  38 60 00 04 */	li r3, 4
/* 800D9B48 000D6A88  4B F3 2E 69 */	bl __nwa__FUl
/* 800D9B4C 000D6A8C  3B E3 00 00 */	addi r31, r3, 0
/* 800D9B50 000D6A90  38 7E 00 00 */	addi r3, r30, 0
/* 800D9B54 000D6A94  38 9C 00 00 */	addi r4, r28, 0
/* 800D9B58 000D6A98  38 BD 00 00 */	addi r5, r29, 0
/* 800D9B5C 000D6A9C  48 00 01 71 */	bl SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl
/* 800D9B60 000D6AA0  90 7F 00 00 */	stw r3, 0(r31)
/* 800D9B64 000D6AA4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800D9B68 000D6AA8  80 7F 00 00 */	lwz r3, 0(r31)
/* 800D9B6C 000D6AAC  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 800D9B70 000D6AB0  7C 08 03 A6 */	mtlr r0
/* 800D9B74 000D6AB4  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 800D9B78 000D6AB8  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 800D9B7C 000D6ABC  83 81 00 28 */	lwz r28, 0x28(r1)
/* 800D9B80 000D6AC0  38 21 00 38 */	addi r1, r1, 0x38
/* 800D9B84 000D6AC4  4E 80 00 20 */	blr 

.global SMS_MakeMActorsWithAnmData__FPCcP13MActorAnmDataiUlUl
SMS_MakeMActorsWithAnmData__FPCcP13MActorAnmDataiUlUl:
/* 800D9B88 000D6AC8  7C 08 02 A6 */	mflr r0
/* 800D9B8C 000D6ACC  90 01 00 04 */	stw r0, 4(r1)
/* 800D9B90 000D6AD0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800D9B94 000D6AD4  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 800D9B98 000D6AD8  3B A4 00 00 */	addi r29, r4, 0
/* 800D9B9C 000D6ADC  3B C5 00 00 */	addi r30, r5, 0
/* 800D9BA0 000D6AE0  3B E6 00 00 */	addi r31, r6, 0
/* 800D9BA4 000D6AE4  3B 07 00 00 */	addi r24, r7, 0
/* 800D9BA8 000D6AE8  4B F3 21 15 */	bl getGlbResource__13JKRFileLoaderFPCc
/* 800D9BAC 000D6AEC  7F 04 C3 78 */	mr r4, r24
/* 800D9BB0 000D6AF0  4B F5 6E B5 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 800D9BB4 000D6AF4  3B 83 00 00 */	addi r28, r3, 0
/* 800D9BB8 000D6AF8  38 60 00 1C */	li r3, 0x1c
/* 800D9BBC 000D6AFC  4B F3 2C F5 */	bl __nw__FUl
/* 800D9BC0 000D6B00  7C 78 1B 79 */	or. r24, r3, r3
/* 800D9BC4 000D6B04  41 82 00 10 */	beq lbl_800D9BD4
/* 800D9BC8 000D6B08  38 78 00 00 */	addi r3, r24, 0
/* 800D9BCC 000D6B0C  38 9C 00 00 */	addi r4, r28, 0
/* 800D9BD0 000D6B10  4B FF F9 75 */	bl __ct__12SDLModelDataFP12J3DModelData
lbl_800D9BD4:
/* 800D9BD4 000D6B14  3B 58 00 00 */	addi r26, r24, 0
/* 800D9BD8 000D6B18  57 C3 10 3A */	slwi r3, r30, 2
/* 800D9BDC 000D6B1C  4B F3 2D D5 */	bl __nwa__FUl
/* 800D9BE0 000D6B20  3B 23 00 00 */	addi r25, r3, 0
/* 800D9BE4 000D6B24  3B 00 00 00 */	li r24, 0
/* 800D9BE8 000D6B28  3B 80 00 00 */	li r28, 0
/* 800D9BEC 000D6B2C  48 00 00 60 */	b lbl_800D9C4C
lbl_800D9BF0:
/* 800D9BF0 000D6B30  38 60 00 AC */	li r3, 0xac
/* 800D9BF4 000D6B34  4B F3 2C BD */	bl __nw__FUl
/* 800D9BF8 000D6B38  7C 7B 1B 79 */	or. r27, r3, r3
/* 800D9BFC 000D6B3C  41 82 00 18 */	beq lbl_800D9C14
/* 800D9C00 000D6B40  38 7B 00 00 */	addi r3, r27, 0
/* 800D9C04 000D6B44  38 9A 00 00 */	addi r4, r26, 0
/* 800D9C08 000D6B48  38 BF 00 00 */	addi r5, r31, 0
/* 800D9C0C 000D6B4C  38 C0 00 01 */	li r6, 1
/* 800D9C10 000D6B50  4B FF F6 69 */	bl __ct__8SDLModelFP12SDLModelDataUlUl
lbl_800D9C14:
/* 800D9C14 000D6B54  38 60 00 48 */	li r3, 0x48
/* 800D9C18 000D6B58  4B F3 2C 99 */	bl __nw__FUl
/* 800D9C1C 000D6B5C  7C 77 1B 79 */	or. r23, r3, r3
/* 800D9C20 000D6B60  41 82 00 10 */	beq lbl_800D9C30
/* 800D9C24 000D6B64  38 77 00 00 */	addi r3, r23, 0
/* 800D9C28 000D6B68  38 9D 00 00 */	addi r4, r29, 0
/* 800D9C2C 000D6B6C  4B FF BA AD */	bl __ct__6MActorFP13MActorAnmData
lbl_800D9C30:
/* 800D9C30 000D6B70  38 77 00 00 */	addi r3, r23, 0
/* 800D9C34 000D6B74  38 9B 00 00 */	addi r4, r27, 0
/* 800D9C38 000D6B78  38 A0 00 00 */	li r5, 0
/* 800D9C3C 000D6B7C  4B FF B7 A5 */	bl setModel__6MActorFP8J3DModelUl
/* 800D9C40 000D6B80  7E F9 E1 2E */	stwx r23, r25, r28
/* 800D9C44 000D6B84  3B 18 00 01 */	addi r24, r24, 1
/* 800D9C48 000D6B88  3B 9C 00 04 */	addi r28, r28, 4
lbl_800D9C4C:
/* 800D9C4C 000D6B8C  7C 18 F0 00 */	cmpw r24, r30
/* 800D9C50 000D6B90  41 80 FF A0 */	blt lbl_800D9BF0
/* 800D9C54 000D6B94  7F 23 CB 78 */	mr r3, r25
/* 800D9C58 000D6B98  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 800D9C5C 000D6B9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800D9C60 000D6BA0  38 21 00 50 */	addi r1, r1, 0x50
/* 800D9C64 000D6BA4  7C 08 03 A6 */	mtlr r0
/* 800D9C68 000D6BA8  4E 80 00 20 */	blr 

.global SMS_MakeSDLModelData__FPCcUl
SMS_MakeSDLModelData__FPCcUl:
/* 800D9C6C 000D6BAC  7C 08 02 A6 */	mflr r0
/* 800D9C70 000D6BB0  90 01 00 04 */	stw r0, 4(r1)
/* 800D9C74 000D6BB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D9C78 000D6BB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D9C7C 000D6BBC  7C 9F 23 78 */	mr r31, r4
/* 800D9C80 000D6BC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D9C84 000D6BC4  4B F3 20 39 */	bl getGlbResource__13JKRFileLoaderFPCc
/* 800D9C88 000D6BC8  7F E4 FB 78 */	mr r4, r31
/* 800D9C8C 000D6BCC  4B F5 6D D9 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 800D9C90 000D6BD0  3B E3 00 00 */	addi r31, r3, 0
/* 800D9C94 000D6BD4  38 60 00 1C */	li r3, 0x1c
/* 800D9C98 000D6BD8  4B F3 2C 19 */	bl __nw__FUl
/* 800D9C9C 000D6BDC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800D9CA0 000D6BE0  41 82 00 10 */	beq lbl_800D9CB0
/* 800D9CA4 000D6BE4  38 7E 00 00 */	addi r3, r30, 0
/* 800D9CA8 000D6BE8  38 9F 00 00 */	addi r4, r31, 0
/* 800D9CAC 000D6BEC  4B FF F8 99 */	bl __ct__12SDLModelDataFP12J3DModelData
lbl_800D9CB0:
/* 800D9CB0 000D6BF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D9CB4 000D6BF4  7F C3 F3 78 */	mr r3, r30
/* 800D9CB8 000D6BF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D9CBC 000D6BFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D9CC0 000D6C00  7C 08 03 A6 */	mtlr r0
/* 800D9CC4 000D6C04  38 21 00 20 */	addi r1, r1, 0x20
/* 800D9CC8 000D6C08  4E 80 00 20 */	blr 

.global SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl
SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl:
/* 800D9CCC 000D6C0C  7C 08 02 A6 */	mflr r0
/* 800D9CD0 000D6C10  90 01 00 04 */	stw r0, 4(r1)
/* 800D9CD4 000D6C14  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800D9CD8 000D6C18  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800D9CDC 000D6C1C  3B E5 00 00 */	addi r31, r5, 0
/* 800D9CE0 000D6C20  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800D9CE4 000D6C24  3B C4 00 00 */	addi r30, r4, 0
/* 800D9CE8 000D6C28  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800D9CEC 000D6C2C  3B A3 00 00 */	addi r29, r3, 0
/* 800D9CF0 000D6C30  38 60 00 AC */	li r3, 0xac
/* 800D9CF4 000D6C34  93 81 00 18 */	stw r28, 0x18(r1)
/* 800D9CF8 000D6C38  4B F3 2B B9 */	bl __nw__FUl
/* 800D9CFC 000D6C3C  7C 7C 1B 79 */	or. r28, r3, r3
/* 800D9D00 000D6C40  41 82 00 18 */	beq lbl_800D9D18
/* 800D9D04 000D6C44  38 7C 00 00 */	addi r3, r28, 0
/* 800D9D08 000D6C48  38 9D 00 00 */	addi r4, r29, 0
/* 800D9D0C 000D6C4C  38 BF 00 00 */	addi r5, r31, 0
/* 800D9D10 000D6C50  38 C0 00 01 */	li r6, 1
/* 800D9D14 000D6C54  4B FF F5 65 */	bl __ct__8SDLModelFP12SDLModelDataUlUl
lbl_800D9D18:
/* 800D9D18 000D6C58  3B FC 00 00 */	addi r31, r28, 0
/* 800D9D1C 000D6C5C  38 60 00 48 */	li r3, 0x48
/* 800D9D20 000D6C60  4B F3 2B 91 */	bl __nw__FUl
/* 800D9D24 000D6C64  7C 7C 1B 79 */	or. r28, r3, r3
/* 800D9D28 000D6C68  41 82 00 10 */	beq lbl_800D9D38
/* 800D9D2C 000D6C6C  38 7C 00 00 */	addi r3, r28, 0
/* 800D9D30 000D6C70  38 9E 00 00 */	addi r4, r30, 0
/* 800D9D34 000D6C74  4B FF B9 A5 */	bl __ct__6MActorFP13MActorAnmData
lbl_800D9D38:
/* 800D9D38 000D6C78  38 7C 00 00 */	addi r3, r28, 0
/* 800D9D3C 000D6C7C  38 9F 00 00 */	addi r4, r31, 0
/* 800D9D40 000D6C80  38 A0 00 00 */	li r5, 0
/* 800D9D44 000D6C84  4B FF B6 9D */	bl setModel__6MActorFP8J3DModelUl
/* 800D9D48 000D6C88  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800D9D4C 000D6C8C  7F 83 E3 78 */	mr r3, r28
/* 800D9D50 000D6C90  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800D9D54 000D6C94  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800D9D58 000D6C98  7C 08 03 A6 */	mtlr r0
/* 800D9D5C 000D6C9C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800D9D60 000D6CA0  83 81 00 18 */	lwz r28, 0x18(r1)
/* 800D9D64 000D6CA4  38 21 00 28 */	addi r1, r1, 0x28
/* 800D9D68 000D6CA8  4E 80 00 20 */	blr 
