.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global __ct__15J3DShapeFactoryFRC13J3DShapeBlock
__ct__15J3DShapeFactoryFRC13J3DShapeBlock:
/* 80032380 0002F2C0  7C 08 02 A6 */	mflr r0
/* 80032384 0002F2C4  90 01 00 04 */	stw r0, 4(r1)
/* 80032388 0002F2C8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003238C 0002F2CC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80032390 0002F2D0  7C 9F 23 78 */	mr r31, r4
/* 80032394 0002F2D4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80032398 0002F2D8  3B C3 00 00 */	addi r30, r3, 0
/* 8003239C 0002F2DC  38 7F 00 00 */	addi r3, r31, 0
/* 800323A0 0002F2E0  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800323A4 0002F2E4  4B FF FF C5 */	bl JSUConvertOffsetToPtr$$016J3DShapeInitData$$1__FPCvUl
/* 800323A8 0002F2E8  90 7E 00 00 */	stw r3, 0(r30)
/* 800323AC 0002F2EC  7F E3 FB 78 */	mr r3, r31
/* 800323B0 0002F2F0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 800323B4 0002F2F4  4B FF C9 CD */	bl JSUConvertOffsetToPtr$$0Us$$1__FPCvUl
/* 800323B8 0002F2F8  90 7E 00 04 */	stw r3, 4(r30)
/* 800323BC 0002F2FC  7F E3 FB 78 */	mr r3, r31
/* 800323C0 0002F300  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 800323C4 0002F304  48 00 04 2D */	bl JSUConvertOffsetToPtr$$014_GXVtxDescList$$1__FPCvUl
/* 800323C8 0002F308  90 7E 00 08 */	stw r3, 8(r30)
/* 800323CC 0002F30C  7F E3 FB 78 */	mr r3, r31
/* 800323D0 0002F310  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 800323D4 0002F314  4B FF C9 AD */	bl JSUConvertOffsetToPtr$$0Us$$1__FPCvUl
/* 800323D8 0002F318  90 7E 00 0C */	stw r3, 0xc(r30)
/* 800323DC 0002F31C  7F E3 FB 78 */	mr r3, r31
/* 800323E0 0002F320  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 800323E4 0002F324  48 00 03 F5 */	bl JSUConvertOffsetToPtr$$0Uc$$1__FPCvUl
/* 800323E8 0002F328  90 7E 00 10 */	stw r3, 0x10(r30)
/* 800323EC 0002F32C  7F E3 FB 78 */	mr r3, r31
/* 800323F0 0002F330  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 800323F4 0002F334  48 00 03 CD */	bl JSUConvertOffsetToPtr$$019J3DShapeMtxInitData$$1__FPCvUl
/* 800323F8 0002F338  90 7E 00 14 */	stw r3, 0x14(r30)
/* 800323FC 0002F33C  7F E3 FB 78 */	mr r3, r31
/* 80032400 0002F340  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80032404 0002F344  48 00 03 A5 */	bl JSUConvertOffsetToPtr$$020J3DShapeDrawInitData$$1__FPCvUl
/* 80032408 0002F348  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8003240C 0002F34C  38 00 00 00 */	li r0, 0
/* 80032410 0002F350  38 7E 00 00 */	addi r3, r30, 0
/* 80032414 0002F354  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80032418 0002F358  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003241C 0002F35C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80032420 0002F360  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80032424 0002F364  38 21 00 18 */	addi r1, r1, 0x18
/* 80032428 0002F368  7C 08 03 A6 */	mtlr r0
/* 8003242C 0002F36C  4E 80 00 20 */	blr 

.global create__15J3DShapeFactoryFi14J3DMdlDataFlagP14_GXVtxDescList
create__15J3DShapeFactoryFi14J3DMdlDataFlagP14_GXVtxDescList:
/* 80032430 0002F370  7C 08 02 A6 */	mflr r0
/* 80032434 0002F374  90 01 00 04 */	stw r0, 4(r1)
/* 80032438 0002F378  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8003243C 0002F37C  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 80032440 0002F380  3B 63 00 00 */	addi r27, r3, 0
/* 80032444 0002F384  3B 84 00 00 */	addi r28, r4, 0
/* 80032448 0002F388  3B A5 00 00 */	addi r29, r5, 0
/* 8003244C 0002F38C  38 60 00 60 */	li r3, 0x60
/* 80032450 0002F390  4B FD A4 61 */	bl __nw__FUl
/* 80032454 0002F394  7C 7A 1B 79 */	or. r26, r3, r3
/* 80032458 0002F398  41 82 00 30 */	beq lbl_80032488
/* 8003245C 0002F39C  38 00 00 3C */	li r0, 0x3c
/* 80032460 0002F3A0  98 1A 00 3C */	stb r0, 0x3c(r26)
/* 80032464 0002F3A4  7F 43 D3 78 */	mr r3, r26
/* 80032468 0002F3A8  98 1A 00 3D */	stb r0, 0x3d(r26)
/* 8003246C 0002F3AC  98 1A 00 3E */	stb r0, 0x3e(r26)
/* 80032470 0002F3B0  98 1A 00 3F */	stb r0, 0x3f(r26)
/* 80032474 0002F3B4  98 1A 00 40 */	stb r0, 0x40(r26)
/* 80032478 0002F3B8  98 1A 00 41 */	stb r0, 0x41(r26)
/* 8003247C 0002F3BC  98 1A 00 42 */	stb r0, 0x42(r26)
/* 80032480 0002F3C0  98 1A 00 43 */	stb r0, 0x43(r26)
/* 80032484 0002F3C4  4B FF 75 5D */	bl initialize__8J3DShapeFv
lbl_80032488:
/* 80032488 0002F3C8  80 7B 00 04 */	lwz r3, 4(r27)
/* 8003248C 0002F3CC  57 9F 08 3C */	slwi r31, r28, 1
/* 80032490 0002F3D0  80 9B 00 00 */	lwz r4, 0(r27)
/* 80032494 0002F3D4  7C 03 FA 2E */	lhzx r0, r3, r31
/* 80032498 0002F3D8  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8003249C 0002F3DC  7C 64 02 14 */	add r3, r4, r0
/* 800324A0 0002F3E0  A0 03 00 02 */	lhz r0, 2(r3)
/* 800324A4 0002F3E4  B0 1A 00 06 */	sth r0, 6(r26)
/* 800324A8 0002F3E8  80 7B 00 04 */	lwz r3, 4(r27)
/* 800324AC 0002F3EC  80 9B 00 00 */	lwz r4, 0(r27)
/* 800324B0 0002F3F0  7C 03 FA 2E */	lhzx r0, r3, r31
/* 800324B4 0002F3F4  1C 00 00 28 */	mulli r0, r0, 0x28
/* 800324B8 0002F3F8  7C 64 02 14 */	add r3, r4, r0
/* 800324BC 0002F3FC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800324C0 0002F400  D0 1A 00 0C */	stfs f0, 0xc(r26)
/* 800324C4 0002F404  80 7B 00 04 */	lwz r3, 4(r27)
/* 800324C8 0002F408  80 9B 00 00 */	lwz r4, 0(r27)
/* 800324CC 0002F40C  7C 03 FA 2E */	lhzx r0, r3, r31
/* 800324D0 0002F410  80 BB 00 08 */	lwz r5, 8(r27)
/* 800324D4 0002F414  1C 00 00 28 */	mulli r0, r0, 0x28
/* 800324D8 0002F418  7C 64 02 14 */	add r3, r4, r0
/* 800324DC 0002F41C  A0 03 00 04 */	lhz r0, 4(r3)
/* 800324E0 0002F420  7C 05 02 14 */	add r0, r5, r0
/* 800324E4 0002F424  90 1A 00 2C */	stw r0, 0x2c(r26)
/* 800324E8 0002F428  A0 1A 00 06 */	lhz r0, 6(r26)
/* 800324EC 0002F42C  54 03 10 3A */	slwi r3, r0, 2
/* 800324F0 0002F430  4B FD A4 C1 */	bl __nwa__FUl
/* 800324F4 0002F434  90 7A 00 34 */	stw r3, 0x34(r26)
/* 800324F8 0002F438  A0 1A 00 06 */	lhz r0, 6(r26)
/* 800324FC 0002F43C  54 03 10 3A */	slwi r3, r0, 2
/* 80032500 0002F440  4B FD A4 B1 */	bl __nwa__FUl
/* 80032504 0002F444  90 7A 00 38 */	stw r3, 0x38(r26)
/* 80032508 0002F448  1C 1C 00 C0 */	mulli r0, r28, 0xc0
/* 8003250C 0002F44C  80 7B 00 04 */	lwz r3, 4(r27)
/* 80032510 0002F450  80 9B 00 00 */	lwz r4, 0(r27)
/* 80032514 0002F454  3B C0 00 00 */	li r30, 0
/* 80032518 0002F458  7C 63 FA 2E */	lhzx r3, r3, r31
/* 8003251C 0002F45C  3B 20 00 00 */	li r25, 0
/* 80032520 0002F460  1C 63 00 28 */	mulli r3, r3, 0x28
/* 80032524 0002F464  38 63 00 10 */	addi r3, r3, 0x10
/* 80032528 0002F468  7C A4 1A 14 */	add r5, r4, r3
/* 8003252C 0002F46C  80 85 00 00 */	lwz r4, 0(r5)
/* 80032530 0002F470  80 65 00 04 */	lwz r3, 4(r5)
/* 80032534 0002F474  90 9A 00 10 */	stw r4, 0x10(r26)
/* 80032538 0002F478  90 7A 00 14 */	stw r3, 0x14(r26)
/* 8003253C 0002F47C  80 65 00 08 */	lwz r3, 8(r5)
/* 80032540 0002F480  90 7A 00 18 */	stw r3, 0x18(r26)
/* 80032544 0002F484  80 7B 00 04 */	lwz r3, 4(r27)
/* 80032548 0002F488  80 9B 00 00 */	lwz r4, 0(r27)
/* 8003254C 0002F48C  7C 63 FA 2E */	lhzx r3, r3, r31
/* 80032550 0002F490  1C 63 00 28 */	mulli r3, r3, 0x28
/* 80032554 0002F494  38 63 00 1C */	addi r3, r3, 0x1c
/* 80032558 0002F498  7C A4 1A 14 */	add r5, r4, r3
/* 8003255C 0002F49C  80 85 00 00 */	lwz r4, 0(r5)
/* 80032560 0002F4A0  80 65 00 04 */	lwz r3, 4(r5)
/* 80032564 0002F4A4  90 9A 00 1C */	stw r4, 0x1c(r26)
/* 80032568 0002F4A8  90 7A 00 20 */	stw r3, 0x20(r26)
/* 8003256C 0002F4AC  80 65 00 08 */	lwz r3, 8(r5)
/* 80032570 0002F4B0  90 7A 00 24 */	stw r3, 0x24(r26)
/* 80032574 0002F4B4  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 80032578 0002F4B8  7C 03 02 14 */	add r0, r3, r0
/* 8003257C 0002F4BC  90 1A 00 28 */	stw r0, 0x28(r26)
/* 80032580 0002F4C0  48 00 00 40 */	b lbl_800325C0
lbl_80032584:
/* 80032584 0002F4C4  38 7B 00 00 */	addi r3, r27, 0
/* 80032588 0002F4C8  38 9C 00 00 */	addi r4, r28, 0
/* 8003258C 0002F4CC  38 BE 00 00 */	addi r5, r30, 0
/* 80032590 0002F4D0  48 00 00 59 */	bl newShapeMtx__15J3DShapeFactoryCFii
/* 80032594 0002F4D4  80 DA 00 34 */	lwz r6, 0x34(r26)
/* 80032598 0002F4D8  38 9C 00 00 */	addi r4, r28, 0
/* 8003259C 0002F4DC  38 BE 00 00 */	addi r5, r30, 0
/* 800325A0 0002F4E0  7C 66 C9 2E */	stwx r3, r6, r25
/* 800325A4 0002F4E4  38 7B 00 00 */	addi r3, r27, 0
/* 800325A8 0002F4E8  38 DD 00 00 */	addi r6, r29, 0
/* 800325AC 0002F4EC  48 00 01 31 */	bl newShapeDraw__15J3DShapeFactoryCFii14J3DMdlDataFlag
/* 800325B0 0002F4F0  80 9A 00 38 */	lwz r4, 0x38(r26)
/* 800325B4 0002F4F4  3B DE 00 01 */	addi r30, r30, 1
/* 800325B8 0002F4F8  7C 64 C9 2E */	stwx r3, r4, r25
/* 800325BC 0002F4FC  3B 39 00 04 */	addi r25, r25, 4
lbl_800325C0:
/* 800325C0 0002F500  A0 1A 00 06 */	lhz r0, 6(r26)
/* 800325C4 0002F504  7C 1E 00 00 */	cmpw r30, r0
/* 800325C8 0002F508  41 80 FF BC */	blt lbl_80032584
/* 800325CC 0002F50C  B3 9A 00 04 */	sth r28, 4(r26)
/* 800325D0 0002F510  7F 43 D3 78 */	mr r3, r26
/* 800325D4 0002F514  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 800325D8 0002F518  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800325DC 0002F51C  38 21 00 50 */	addi r1, r1, 0x50
/* 800325E0 0002F520  7C 08 03 A6 */	mtlr r0
/* 800325E4 0002F524  4E 80 00 20 */	blr 

.global newShapeMtx__15J3DShapeFactoryCFii
newShapeMtx__15J3DShapeFactoryCFii:
/* 800325E8 0002F528  7C 08 02 A6 */	mflr r0
/* 800325EC 0002F52C  90 01 00 04 */	stw r0, 4(r1)
/* 800325F0 0002F530  54 80 08 3C */	slwi r0, r4, 1
/* 800325F4 0002F534  54 A4 18 38 */	slwi r4, r5, 3
/* 800325F8 0002F538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800325FC 0002F53C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80032600 0002F540  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80032604 0002F544  7C 7E 1B 78 */	mr r30, r3
/* 80032608 0002F548  80 63 00 04 */	lwz r3, 4(r3)
/* 8003260C 0002F54C  80 FE 00 00 */	lwz r7, 0(r30)
/* 80032610 0002F550  7C 03 02 2E */	lhzx r0, r3, r0
/* 80032614 0002F554  38 60 00 00 */	li r3, 0
/* 80032618 0002F558  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 8003261C 0002F55C  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80032620 0002F560  7C E7 02 14 */	add r7, r7, r0
/* 80032624 0002F564  A0 A7 00 06 */	lhz r5, 6(r7)
/* 80032628 0002F568  88 07 00 00 */	lbz r0, 0(r7)
/* 8003262C 0002F56C  54 A5 18 38 */	slwi r5, r5, 3
/* 80032630 0002F570  7F E5 22 14 */	add r31, r5, r4
/* 80032634 0002F574  2C 00 00 03 */	cmpwi r0, 3
/* 80032638 0002F578  7F E6 FA 14 */	add r31, r6, r31
/* 8003263C 0002F57C  41 82 00 3C */	beq lbl_80032678
/* 80032640 0002F580  40 80 00 84 */	bge lbl_800326C4
/* 80032644 0002F584  2C 00 00 00 */	cmpwi r0, 0
/* 80032648 0002F588  40 80 00 08 */	bge lbl_80032650
/* 8003264C 0002F58C  48 00 00 78 */	b lbl_800326C4
lbl_80032650:
/* 80032650 0002F590  38 60 00 08 */	li r3, 8
/* 80032654 0002F594  4B FD A2 5D */	bl __nw__FUl
/* 80032658 0002F598  28 03 00 00 */	cmplwi r3, 0
/* 8003265C 0002F59C  41 82 00 68 */	beq lbl_800326C4
/* 80032660 0002F5A0  3C 80 80 3B */	lis r4, __vt__11J3DShapeMtx@ha
/* 80032664 0002F5A4  A0 BF 00 00 */	lhz r5, 0(r31)
/* 80032668 0002F5A8  38 04 99 4C */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 8003266C 0002F5AC  90 03 00 00 */	stw r0, 0(r3)
/* 80032670 0002F5B0  B0 A3 00 04 */	sth r5, 4(r3)
/* 80032674 0002F5B4  48 00 00 50 */	b lbl_800326C4
lbl_80032678:
/* 80032678 0002F5B8  38 60 00 10 */	li r3, 0x10
/* 8003267C 0002F5BC  4B FD A2 35 */	bl __nw__FUl
/* 80032680 0002F5C0  28 03 00 00 */	cmplwi r3, 0
/* 80032684 0002F5C4  41 82 00 40 */	beq lbl_800326C4
/* 80032688 0002F5C8  80 BF 00 04 */	lwz r5, 4(r31)
/* 8003268C 0002F5CC  3C 80 80 3B */	lis r4, __vt__11J3DShapeMtx@ha
/* 80032690 0002F5D0  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 80032694 0002F5D4  38 04 99 4C */	addi r0, r4, __vt__11J3DShapeMtx@l
/* 80032698 0002F5D8  A1 1F 00 02 */	lhz r8, 2(r31)
/* 8003269C 0002F5DC  A0 FF 00 00 */	lhz r7, 0(r31)
/* 800326A0 0002F5E0  3C 80 80 3B */	lis r4, __vt__16J3DShapeMtxMulti@ha
/* 800326A4 0002F5E4  54 A5 08 3C */	slwi r5, r5, 1
/* 800326A8 0002F5E8  90 03 00 00 */	stw r0, 0(r3)
/* 800326AC 0002F5EC  38 04 99 0C */	addi r0, r4, __vt__16J3DShapeMtxMulti@l
/* 800326B0 0002F5F0  7C 86 2A 14 */	add r4, r6, r5
/* 800326B4 0002F5F4  B0 E3 00 04 */	sth r7, 4(r3)
/* 800326B8 0002F5F8  90 03 00 00 */	stw r0, 0(r3)
/* 800326BC 0002F5FC  B1 03 00 08 */	sth r8, 8(r3)
/* 800326C0 0002F600  90 83 00 0C */	stw r4, 0xc(r3)
lbl_800326C4:
/* 800326C4 0002F604  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800326C8 0002F608  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800326CC 0002F60C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800326D0 0002F610  7C 08 03 A6 */	mtlr r0
/* 800326D4 0002F614  38 21 00 20 */	addi r1, r1, 0x20
/* 800326D8 0002F618  4E 80 00 20 */	blr 

.global newShapeDraw__15J3DShapeFactoryCFii14J3DMdlDataFlag
newShapeDraw__15J3DShapeFactoryCFii14J3DMdlDataFlag:
/* 800326DC 0002F61C  7C 08 02 A6 */	mflr r0
/* 800326E0 0002F620  90 01 00 04 */	stw r0, 4(r1)
/* 800326E4 0002F624  54 A0 18 38 */	slwi r0, r5, 3
/* 800326E8 0002F628  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800326EC 0002F62C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800326F0 0002F630  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800326F4 0002F634  7C 7E 1B 78 */	mr r30, r3
/* 800326F8 0002F638  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800326FC 0002F63C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80032700 0002F640  54 83 08 3C */	slwi r3, r4, 1
/* 80032704 0002F644  80 FE 00 00 */	lwz r7, 0(r30)
/* 80032708 0002F648  7C 86 1A 2E */	lhzx r4, r6, r3
/* 8003270C 0002F64C  38 60 00 0C */	li r3, 0xc
/* 80032710 0002F650  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 80032714 0002F654  1C 84 00 28 */	mulli r4, r4, 0x28
/* 80032718 0002F658  38 84 00 08 */	addi r4, r4, 8
/* 8003271C 0002F65C  7C 87 22 2E */	lhzx r4, r7, r4
/* 80032720 0002F660  54 84 18 38 */	slwi r4, r4, 3
/* 80032724 0002F664  7F E4 02 14 */	add r31, r4, r0
/* 80032728 0002F668  7F E5 FA 14 */	add r31, r5, r31
/* 8003272C 0002F66C  4B FD A1 85 */	bl __nw__FUl
/* 80032730 0002F670  7C 7D 1B 79 */	or. r29, r3, r3
/* 80032734 0002F674  41 82 00 1C */	beq lbl_80032750
/* 80032738 0002F678  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8003273C 0002F67C  7F A3 EB 78 */	mr r3, r29
/* 80032740 0002F680  80 1F 00 04 */	lwz r0, 4(r31)
/* 80032744 0002F684  80 BF 00 00 */	lwz r5, 0(r31)
/* 80032748 0002F688  7C 84 02 14 */	add r4, r4, r0
/* 8003274C 0002F68C  4B FF 72 51 */	bl __ct__12J3DShapeDrawFPCUcUl
lbl_80032750:
/* 80032750 0002F690  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80032754 0002F694  7F A3 EB 78 */	mr r3, r29
/* 80032758 0002F698  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8003275C 0002F69C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80032760 0002F6A0  7C 08 03 A6 */	mtlr r0
/* 80032764 0002F6A4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80032768 0002F6A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8003276C 0002F6AC  4E 80 00 20 */	blr 

.global allocVcdVatCmdBuffer__15J3DShapeFactoryFUl
allocVcdVatCmdBuffer__15J3DShapeFactoryFUl:
/* 80032770 0002F6B0  7C 08 02 A6 */	mflr r0
/* 80032774 0002F6B4  90 01 00 04 */	stw r0, 4(r1)
/* 80032778 0002F6B8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003277C 0002F6BC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80032780 0002F6C0  3B E3 00 00 */	addi r31, r3, 0
/* 80032784 0002F6C4  1C 64 00 C0 */	mulli r3, r4, 0xc0
/* 80032788 0002F6C8  38 80 00 20 */	li r4, 0x20
/* 8003278C 0002F6CC  4B FD A2 6D */	bl __nwa__FUli
/* 80032790 0002F6D0  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80032794 0002F6D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80032798 0002F6D8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003279C 0002F6DC  38 21 00 18 */	addi r1, r1, 0x18
/* 800327A0 0002F6E0  7C 08 03 A6 */	mtlr r0
/* 800327A4 0002F6E4  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$020J3DShapeDrawInitData$$1__FPCvUl
JSUConvertOffsetToPtr$$020J3DShapeDrawInitData$$1__FPCvUl:
/* 800327A8 0002F6E8  28 04 00 00 */	cmplwi r4, 0
/* 800327AC 0002F6EC  40 82 00 0C */	bne lbl_800327B8
/* 800327B0 0002F6F0  38 60 00 00 */	li r3, 0
/* 800327B4 0002F6F4  4E 80 00 20 */	blr 
lbl_800327B8:
/* 800327B8 0002F6F8  7C 63 22 14 */	add r3, r3, r4
/* 800327BC 0002F6FC  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$019J3DShapeMtxInitData$$1__FPCvUl
JSUConvertOffsetToPtr$$019J3DShapeMtxInitData$$1__FPCvUl:
/* 800327C0 0002F700  28 04 00 00 */	cmplwi r4, 0
/* 800327C4 0002F704  40 82 00 0C */	bne lbl_800327D0
/* 800327C8 0002F708  38 60 00 00 */	li r3, 0
/* 800327CC 0002F70C  4E 80 00 20 */	blr 
lbl_800327D0:
/* 800327D0 0002F710  7C 63 22 14 */	add r3, r3, r4
/* 800327D4 0002F714  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Uc$$1__FPCvUl
JSUConvertOffsetToPtr$$0Uc$$1__FPCvUl:
/* 800327D8 0002F718  28 04 00 00 */	cmplwi r4, 0
/* 800327DC 0002F71C  40 82 00 0C */	bne lbl_800327E8
/* 800327E0 0002F720  38 60 00 00 */	li r3, 0
/* 800327E4 0002F724  4E 80 00 20 */	blr 
lbl_800327E8:
/* 800327E8 0002F728  7C 63 22 14 */	add r3, r3, r4
/* 800327EC 0002F72C  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$014_GXVtxDescList$$1__FPCvUl
JSUConvertOffsetToPtr$$014_GXVtxDescList$$1__FPCvUl:
/* 800327F0 0002F730  28 04 00 00 */	cmplwi r4, 0
/* 800327F4 0002F734  40 82 00 0C */	bne lbl_80032800
/* 800327F8 0002F738  38 60 00 00 */	li r3, 0
/* 800327FC 0002F73C  4E 80 00 20 */	blr 
lbl_80032800:
/* 80032800 0002F740  7C 63 22 14 */	add r3, r3, r4
/* 80032804 0002F744  4E 80 00 20 */	blr 