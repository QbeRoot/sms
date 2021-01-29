.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global load__24JPAEmitterLoaderDataBaseFPCUcP7JKRHeapP18JPATextureResource
load__24JPAEmitterLoaderDataBaseFPCUcP7JKRHeapP18JPATextureResource:
/* 8007FCDC 0007CC1C  7C 08 02 A6 */	mflr r0
/* 8007FCE0 0007CC20  90 01 00 04 */	stw r0, 4(r1)
/* 8007FCE4 0007CC24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007FCE8 0007CC28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8007FCEC 0007CC2C  3B E5 00 00 */	addi r31, r5, 0
/* 8007FCF0 0007CC30  80 C3 00 00 */	lwz r6, 0(r3)
/* 8007FCF4 0007CC34  3C 06 B5 BB */	addis r0, r6, 0xb5bb
/* 8007FCF8 0007CC38  28 00 46 46 */	cmplwi r0, 0x4646
/* 8007FCFC 0007CC3C  40 82 00 4C */	bne lbl_8007FD48
/* 8007FD00 0007CC40  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007FD04 0007CC44  3C 05 95 90 */	addis r0, r5, 0x9590
/* 8007FD08 0007CC48  28 00 61 31 */	cmplwi r0, 0x6131
/* 8007FD0C 0007CC4C  40 82 00 3C */	bne lbl_8007FD48
/* 8007FD10 0007CC50  38 A3 00 00 */	addi r5, r3, 0
/* 8007FD14 0007CC54  38 C3 00 00 */	addi r6, r3, 0
/* 8007FD18 0007CC58  38 61 00 14 */	addi r3, r1, 0x14
/* 8007FD1C 0007CC5C  48 00 00 A1 */	bl __ct__20JPAEmitterLoader_v10FP7JKRHeapPCUcPC15JPABinaryHeader
/* 8007FD20 0007CC60  38 61 00 14 */	addi r3, r1, 0x14
/* 8007FD24 0007CC64  38 9F 00 00 */	addi r4, r31, 0
/* 8007FD28 0007CC68  48 00 01 11 */	bl load__20JPAEmitterLoader_v10FP18JPATextureResource
/* 8007FD2C 0007CC6C  3C 80 80 3B */	lis r4, __vt__20JPAEmitterLoader_v10@ha
/* 8007FD30 0007CC70  38 04 CC 18 */	addi r0, r4, __vt__20JPAEmitterLoader_v10@l
/* 8007FD34 0007CC74  3C 80 80 3B */	lis r4, __vt__16JPAEmitterLoader@ha
/* 8007FD38 0007CC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007FD3C 0007CC7C  38 04 CC 0C */	addi r0, r4, __vt__16JPAEmitterLoader@l
/* 8007FD40 0007CC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007FD44 0007CC84  48 00 00 08 */	b lbl_8007FD4C
lbl_8007FD48:
/* 8007FD48 0007CC88  38 60 00 00 */	li r3, 0
lbl_8007FD4C:
/* 8007FD4C 0007CC8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007FD50 0007CC90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007FD54 0007CC94  38 21 00 30 */	addi r1, r1, 0x30
/* 8007FD58 0007CC98  7C 08 03 A6 */	mtlr r0
/* 8007FD5C 0007CC9C  4E 80 00 20 */	blr 

.global __dt__20JPAEmitterLoader_v10Fv
__dt__20JPAEmitterLoader_v10Fv:
/* 8007FD60 0007CCA0  7C 08 02 A6 */	mflr r0
/* 8007FD64 0007CCA4  90 01 00 04 */	stw r0, 4(r1)
/* 8007FD68 0007CCA8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8007FD6C 0007CCAC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8007FD70 0007CCB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007FD74 0007CCB4  41 82 00 30 */	beq lbl_8007FDA4
/* 8007FD78 0007CCB8  3C 60 80 3B */	lis r3, __vt__20JPAEmitterLoader_v10@ha
/* 8007FD7C 0007CCBC  38 03 CC 18 */	addi r0, r3, __vt__20JPAEmitterLoader_v10@l
/* 8007FD80 0007CCC0  90 1F 00 00 */	stw r0, 0(r31)
/* 8007FD84 0007CCC4  41 82 00 10 */	beq lbl_8007FD94
/* 8007FD88 0007CCC8  3C 60 80 3B */	lis r3, __vt__16JPAEmitterLoader@ha
/* 8007FD8C 0007CCCC  38 03 CC 0C */	addi r0, r3, __vt__16JPAEmitterLoader@l
/* 8007FD90 0007CCD0  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007FD94:
/* 8007FD94 0007CCD4  7C 80 07 35 */	extsh. r0, r4
/* 8007FD98 0007CCD8  40 81 00 0C */	ble lbl_8007FDA4
/* 8007FD9C 0007CCDC  7F E3 FB 78 */	mr r3, r31
/* 8007FDA0 0007CCE0  4B F8 CD 11 */	bl __dl__FPv
lbl_8007FDA4:
/* 8007FDA4 0007CCE4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8007FDA8 0007CCE8  7F E3 FB 78 */	mr r3, r31
/* 8007FDAC 0007CCEC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8007FDB0 0007CCF0  38 21 00 18 */	addi r1, r1, 0x18
/* 8007FDB4 0007CCF4  7C 08 03 A6 */	mtlr r0
/* 8007FDB8 0007CCF8  4E 80 00 20 */	blr 

.global __ct__20JPAEmitterLoader_v10FP7JKRHeapPCUcPC15JPABinaryHeader
__ct__20JPAEmitterLoader_v10FP7JKRHeapPCUcPC15JPABinaryHeader:
/* 8007FDBC 0007CCFC  3C E0 80 3B */	lis r7, __vt__16JPAEmitterLoader@ha
/* 8007FDC0 0007CD00  38 07 CC 0C */	addi r0, r7, __vt__16JPAEmitterLoader@l
/* 8007FDC4 0007CD04  90 03 00 00 */	stw r0, 0(r3)
/* 8007FDC8 0007CD08  3C E0 80 3B */	lis r7, __vt__20JPAEmitterLoader_v10@ha
/* 8007FDCC 0007CD0C  39 00 00 00 */	li r8, 0
/* 8007FDD0 0007CD10  90 A3 00 08 */	stw r5, 8(r3)
/* 8007FDD4 0007CD14  38 07 CC 18 */	addi r0, r7, __vt__20JPAEmitterLoader_v10@l
/* 8007FDD8 0007CD18  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8007FDDC 0007CD1C  91 03 00 10 */	stw r8, 0x10(r3)
/* 8007FDE0 0007CD20  90 83 00 04 */	stw r4, 4(r3)
/* 8007FDE4 0007CD24  90 03 00 00 */	stw r0, 0(r3)
/* 8007FDE8 0007CD28  4E 80 00 20 */	blr 

.global __dt__16JPAEmitterLoaderFv
__dt__16JPAEmitterLoaderFv:
/* 8007FDEC 0007CD2C  7C 08 02 A6 */	mflr r0
/* 8007FDF0 0007CD30  90 01 00 04 */	stw r0, 4(r1)
/* 8007FDF4 0007CD34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8007FDF8 0007CD38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8007FDFC 0007CD3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007FE00 0007CD40  41 82 00 20 */	beq lbl_8007FE20
/* 8007FE04 0007CD44  3C 60 80 3B */	lis r3, __vt__16JPAEmitterLoader@ha
/* 8007FE08 0007CD48  38 63 CC 0C */	addi r3, r3, __vt__16JPAEmitterLoader@l
/* 8007FE0C 0007CD4C  7C 80 07 35 */	extsh. r0, r4
/* 8007FE10 0007CD50  90 7F 00 00 */	stw r3, 0(r31)
/* 8007FE14 0007CD54  40 81 00 0C */	ble lbl_8007FE20
/* 8007FE18 0007CD58  7F E3 FB 78 */	mr r3, r31
/* 8007FE1C 0007CD5C  4B F8 CC 95 */	bl __dl__FPv
lbl_8007FE20:
/* 8007FE20 0007CD60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8007FE24 0007CD64  7F E3 FB 78 */	mr r3, r31
/* 8007FE28 0007CD68  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8007FE2C 0007CD6C  38 21 00 18 */	addi r1, r1, 0x18
/* 8007FE30 0007CD70  7C 08 03 A6 */	mtlr r0
/* 8007FE34 0007CD74  4E 80 00 20 */	blr 

.global load__20JPAEmitterLoader_v10FP18JPATextureResource
load__20JPAEmitterLoader_v10FP18JPATextureResource:
/* 8007FE38 0007CD78  7C 08 02 A6 */	mflr r0
/* 8007FE3C 0007CD7C  38 A0 00 00 */	li r5, 0
/* 8007FE40 0007CD80  90 01 00 04 */	stw r0, 4(r1)
/* 8007FE44 0007CD84  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 8007FE48 0007CD88  BE E1 00 34 */	stmw r23, 0x34(r1)
/* 8007FE4C 0007CD8C  3A E4 00 00 */	addi r23, r4, 0
/* 8007FE50 0007CD90  3B E3 00 00 */	addi r31, r3, 0
/* 8007FE54 0007CD94  80 83 00 04 */	lwz r4, 4(r3)
/* 8007FE58 0007CD98  38 60 00 08 */	li r3, 8
/* 8007FE5C 0007CD9C  4B F8 CA E9 */	bl __nw__FUlP7JKRHeapi
/* 8007FE60 0007CDA0  28 03 00 00 */	cmplwi r3, 0
/* 8007FE64 0007CDA4  41 82 00 0C */	beq lbl_8007FE70
/* 8007FE68 0007CDA8  38 00 00 00 */	li r0, 0
/* 8007FE6C 0007CDAC  90 03 00 00 */	stw r0, 0(r3)
lbl_8007FE70:
/* 8007FE70 0007CDB0  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8007FE74 0007CDB4  38 A0 00 20 */	li r5, 0x20
/* 8007FE78 0007CDB8  3B 00 00 00 */	li r24, 0
/* 8007FE7C 0007CDBC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8007FE80 0007CDC0  3B 20 00 00 */	li r25, 0
/* 8007FE84 0007CDC4  3B 40 00 00 */	li r26, 0
/* 8007FE88 0007CDC8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8007FE8C 0007CDCC  28 00 00 00 */	cmplwi r0, 0
/* 8007FE90 0007CDD0  7C 09 03 A6 */	mtctr r0
/* 8007FE94 0007CDD4  40 81 00 54 */	ble lbl_8007FEE8
lbl_8007FE98:
/* 8007FE98 0007CDD8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8007FE9C 0007CDDC  7C 60 2A 14 */	add r3, r0, r5
/* 8007FEA0 0007CDE0  80 83 00 00 */	lwz r4, 0(r3)
/* 8007FEA4 0007CDE4  80 63 00 04 */	lwz r3, 4(r3)
/* 8007FEA8 0007CDE8  3C 04 B9 B4 */	addis r0, r4, 0xb9b4
/* 8007FEAC 0007CDEC  28 00 44 31 */	cmplwi r0, 0x4431
/* 8007FEB0 0007CDF0  40 82 00 0C */	bne lbl_8007FEBC
/* 8007FEB4 0007CDF4  3B 18 00 01 */	addi r24, r24, 1
/* 8007FEB8 0007CDF8  48 00 00 28 */	b lbl_8007FEE0
lbl_8007FEBC:
/* 8007FEBC 0007CDFC  3C 04 AB BB */	addis r0, r4, 0xabbb
/* 8007FEC0 0007CE00  28 00 58 31 */	cmplwi r0, 0x5831
/* 8007FEC4 0007CE04  40 82 00 0C */	bne lbl_8007FED0
/* 8007FEC8 0007CE08  3B 39 00 01 */	addi r25, r25, 1
/* 8007FECC 0007CE0C  48 00 00 14 */	b lbl_8007FEE0
lbl_8007FED0:
/* 8007FED0 0007CE10  3C 04 B4 BA */	addis r0, r4, 0xb4ba
/* 8007FED4 0007CE14  28 00 41 31 */	cmplwi r0, 0x4131
/* 8007FED8 0007CE18  40 82 00 08 */	bne lbl_8007FEE0
/* 8007FEDC 0007CE1C  3B 5A 00 01 */	addi r26, r26, 1
lbl_8007FEE0:
/* 8007FEE0 0007CE20  7C A5 1A 14 */	add r5, r5, r3
/* 8007FEE4 0007CE24  42 00 FF B4 */	bdnz lbl_8007FE98
lbl_8007FEE8:
/* 8007FEE8 0007CE28  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8007FEEC 0007CE2C  38 00 00 01 */	li r0, 1
/* 8007FEF0 0007CE30  38 A0 00 00 */	li r5, 0
/* 8007FEF4 0007CE34  B0 03 00 04 */	sth r0, 4(r3)
/* 8007FEF8 0007CE38  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8007FEFC 0007CE3C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8007FF00 0007CE40  A0 03 00 04 */	lhz r0, 4(r3)
/* 8007FF04 0007CE44  54 03 10 3A */	slwi r3, r0, 2
/* 8007FF08 0007CE48  4B F8 CB 3D */	bl __nwa__FUlP7JKRHeapi
/* 8007FF0C 0007CE4C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8007FF10 0007CE50  38 A0 00 00 */	li r5, 0
/* 8007FF14 0007CE54  90 64 00 00 */	stw r3, 0(r4)
/* 8007FF18 0007CE58  38 60 00 24 */	li r3, 0x24
/* 8007FF1C 0007CE5C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8007FF20 0007CE60  4B F8 CA 25 */	bl __nw__FUlP7JKRHeapi
/* 8007FF24 0007CE64  7C 7D 1B 79 */	or. r29, r3, r3
/* 8007FF28 0007CE68  41 82 00 34 */	beq lbl_8007FF5C
/* 8007FF2C 0007CE6C  38 00 00 00 */	li r0, 0
/* 8007FF30 0007CE70  90 1D 00 00 */	stw r0, 0(r29)
/* 8007FF34 0007CE74  90 1D 00 04 */	stw r0, 4(r29)
/* 8007FF38 0007CE78  90 1D 00 08 */	stw r0, 8(r29)
/* 8007FF3C 0007CE7C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8007FF40 0007CE80  90 1D 00 10 */	stw r0, 0x10(r29)
/* 8007FF44 0007CE84  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8007FF48 0007CE88  90 1D 00 18 */	stw r0, 0x18(r29)
/* 8007FF4C 0007CE8C  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8007FF50 0007CE90  98 1D 00 20 */	stb r0, 0x20(r29)
/* 8007FF54 0007CE94  98 1D 00 21 */	stb r0, 0x21(r29)
/* 8007FF58 0007CE98  98 1D 00 22 */	stb r0, 0x22(r29)
lbl_8007FF5C:
/* 8007FF5C 0007CE9C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8007FF60 0007CEA0  9B 5D 00 22 */	stb r26, 0x22(r29)
/* 8007FF64 0007CEA4  41 82 00 18 */	beq lbl_8007FF7C
/* 8007FF68 0007CEA8  80 9F 00 04 */	lwz r4, 4(r31)
/* 8007FF6C 0007CEAC  54 03 10 3A */	slwi r3, r0, 2
/* 8007FF70 0007CEB0  38 A0 00 00 */	li r5, 0
/* 8007FF74 0007CEB4  4B F8 CA D1 */	bl __nwa__FUlP7JKRHeapi
/* 8007FF78 0007CEB8  48 00 00 08 */	b lbl_8007FF80
lbl_8007FF7C:
/* 8007FF7C 0007CEBC  38 60 00 00 */	li r3, 0
lbl_8007FF80:
/* 8007FF80 0007CEC0  90 7D 00 14 */	stw r3, 0x14(r29)
/* 8007FF84 0007CEC4  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8007FF88 0007CEC8  9B 1D 00 20 */	stb r24, 0x20(r29)
/* 8007FF8C 0007CECC  41 82 00 18 */	beq lbl_8007FFA4
/* 8007FF90 0007CED0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8007FF94 0007CED4  54 03 10 3A */	slwi r3, r0, 2
/* 8007FF98 0007CED8  38 A0 00 00 */	li r5, 0
/* 8007FF9C 0007CEDC  4B F8 CA A9 */	bl __nwa__FUlP7JKRHeapi
/* 8007FFA0 0007CEE0  48 00 00 08 */	b lbl_8007FFA8
lbl_8007FFA4:
/* 8007FFA4 0007CEE4  38 60 00 00 */	li r3, 0
lbl_8007FFA8:
/* 8007FFA8 0007CEE8  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8007FFAC 0007CEEC  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 8007FFB0 0007CEF0  9B 3D 00 21 */	stb r25, 0x21(r29)
/* 8007FFB4 0007CEF4  41 82 00 18 */	beq lbl_8007FFCC
/* 8007FFB8 0007CEF8  80 BF 00 04 */	lwz r5, 4(r31)
/* 8007FFBC 0007CEFC  54 03 08 3C */	slwi r3, r0, 1
/* 8007FFC0 0007CF00  38 80 00 04 */	li r4, 4
/* 8007FFC4 0007CF04  4B F8 C4 89 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 8007FFC8 0007CF08  48 00 00 08 */	b lbl_8007FFD0
lbl_8007FFCC:
/* 8007FFCC 0007CF0C  38 60 00 00 */	li r3, 0
lbl_8007FFD0:
/* 8007FFD0 0007CF10  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 8007FFD4 0007CF14  57 39 06 3E */	clrlwi r25, r25, 0x18
/* 8007FFD8 0007CF18  3B C0 00 20 */	li r30, 0x20
/* 8007FFDC 0007CF1C  3B 40 00 00 */	li r26, 0
/* 8007FFE0 0007CF20  3B 60 00 00 */	li r27, 0
/* 8007FFE4 0007CF24  3B 80 00 00 */	li r28, 0
/* 8007FFE8 0007CF28  48 00 01 C0 */	b lbl_800801A8
lbl_8007FFEC:
/* 8007FFEC 0007CF2C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8007FFF0 0007CF30  7C 60 F2 14 */	add r3, r0, r30
/* 8007FFF4 0007CF34  80 83 00 00 */	lwz r4, 0(r3)
/* 8007FFF8 0007CF38  83 03 00 04 */	lwz r24, 4(r3)
/* 8007FFFC 0007CF3C  3C 04 B9 B4 */	addis r0, r4, 0xb9b4
/* 80080000 0007CF40  28 00 44 31 */	cmplwi r0, 0x4431
/* 80080004 0007CF44  40 82 00 3C */	bne lbl_80080040
/* 80080008 0007CF48  80 9F 00 04 */	lwz r4, 4(r31)
/* 8008000C 0007CF4C  38 60 00 08 */	li r3, 8
/* 80080010 0007CF50  38 A0 00 00 */	li r5, 0
/* 80080014 0007CF54  4B F8 C9 31 */	bl __nw__FUlP7JKRHeapi
/* 80080018 0007CF58  28 03 00 00 */	cmplwi r3, 0
/* 8008001C 0007CF5C  41 82 00 14 */	beq lbl_80080030
/* 80080020 0007CF60  80 1F 00 08 */	lwz r0, 8(r31)
/* 80080024 0007CF64  80 BF 00 04 */	lwz r5, 4(r31)
/* 80080028 0007CF68  7C 80 F2 14 */	add r4, r0, r30
/* 8008002C 0007CF6C  4B FF FC 31 */	bl __ct__12JPADataBlockFPCUcP7JKRHeap
lbl_80080030:
/* 80080030 0007CF70  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 80080034 0007CF74  7C 64 D1 2E */	stwx r3, r4, r26
/* 80080038 0007CF78  3B 5A 00 04 */	addi r26, r26, 4
/* 8008003C 0007CF7C  48 00 01 64 */	b lbl_800801A0
lbl_80080040:
/* 80080040 0007CF80  3C 04 B4 BA */	addis r0, r4, 0xb4ba
/* 80080044 0007CF84  28 00 41 31 */	cmplwi r0, 0x4131
/* 80080048 0007CF88  40 82 00 3C */	bne lbl_80080084
/* 8008004C 0007CF8C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80080050 0007CF90  38 60 00 08 */	li r3, 8
/* 80080054 0007CF94  38 A0 00 00 */	li r5, 0
/* 80080058 0007CF98  4B F8 C8 ED */	bl __nw__FUlP7JKRHeapi
/* 8008005C 0007CF9C  28 03 00 00 */	cmplwi r3, 0
/* 80080060 0007CFA0  41 82 00 14 */	beq lbl_80080074
/* 80080064 0007CFA4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80080068 0007CFA8  80 BF 00 04 */	lwz r5, 4(r31)
/* 8008006C 0007CFAC  7C 80 F2 14 */	add r4, r0, r30
/* 80080070 0007CFB0  48 00 01 B1 */	bl __ct__16JPAKeyFrameAnimeFPCUcP7JKRHeap
lbl_80080074:
/* 80080074 0007CFB4  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 80080078 0007CFB8  7C 64 D9 2E */	stwx r3, r4, r27
/* 8008007C 0007CFBC  3B 7B 00 04 */	addi r27, r27, 4
/* 80080080 0007CFC0  48 00 01 20 */	b lbl_800801A0
lbl_80080084:
/* 80080084 0007CFC4  3C 04 BD BB */	addis r0, r4, 0xbdbb
/* 80080088 0007CFC8  28 00 4D 31 */	cmplwi r0, 0x4d31
/* 8008008C 0007CFCC  40 82 00 34 */	bne lbl_800800C0
/* 80080090 0007CFD0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80080094 0007CFD4  38 60 00 08 */	li r3, 8
/* 80080098 0007CFD8  38 A0 00 00 */	li r5, 0
/* 8008009C 0007CFDC  4B F8 C8 A9 */	bl __nw__FUlP7JKRHeapi
/* 800800A0 0007CFE0  28 03 00 00 */	cmplwi r3, 0
/* 800800A4 0007CFE4  41 82 00 14 */	beq lbl_800800B8
/* 800800A8 0007CFE8  80 1F 00 08 */	lwz r0, 8(r31)
/* 800800AC 0007CFEC  80 BF 00 04 */	lwz r5, 4(r31)
/* 800800B0 0007CFF0  7C 80 F2 14 */	add r4, r0, r30
/* 800800B4 0007CFF4  4B FF FB A9 */	bl __ct__12JPADataBlockFPCUcP7JKRHeap
lbl_800800B8:
/* 800800B8 0007CFF8  90 7D 00 00 */	stw r3, 0(r29)
/* 800800BC 0007CFFC  48 00 00 E4 */	b lbl_800801A0
lbl_800800C0:
/* 800800C0 0007D000  3C 04 BD AD */	addis r0, r4, 0xbdad
/* 800800C4 0007D004  28 00 50 31 */	cmplwi r0, 0x5031
/* 800800C8 0007D008  40 82 00 34 */	bne lbl_800800FC
/* 800800CC 0007D00C  80 9F 00 04 */	lwz r4, 4(r31)
/* 800800D0 0007D010  38 60 00 88 */	li r3, 0x88
/* 800800D4 0007D014  38 A0 00 00 */	li r5, 0
/* 800800D8 0007D018  4B F8 C8 6D */	bl __nw__FUlP7JKRHeapi
/* 800800DC 0007D01C  28 03 00 00 */	cmplwi r3, 0
/* 800800E0 0007D020  41 82 00 14 */	beq lbl_800800F4
/* 800800E4 0007D024  80 1F 00 08 */	lwz r0, 8(r31)
/* 800800E8 0007D028  80 BF 00 04 */	lwz r5, 4(r31)
/* 800800EC 0007D02C  7C 80 F2 14 */	add r4, r0, r30
/* 800800F0 0007D030  48 00 04 39 */	bl __ct__12JPABaseShapeFPCUcP7JKRHeap
lbl_800800F4:
/* 800800F4 0007D034  90 7D 00 04 */	stw r3, 4(r29)
/* 800800F8 0007D038  48 00 00 A8 */	b lbl_800801A0
lbl_800800FC:
/* 800800FC 0007D03C  3C 04 BA AD */	addis r0, r4, 0xbaad
/* 80080100 0007D040  28 00 50 31 */	cmplwi r0, 0x5031
/* 80080104 0007D044  40 82 00 30 */	bne lbl_80080134
/* 80080108 0007D048  80 9F 00 04 */	lwz r4, 4(r31)
/* 8008010C 0007D04C  38 60 00 80 */	li r3, 0x80
/* 80080110 0007D050  38 A0 00 00 */	li r5, 0
/* 80080114 0007D054  4B F8 C8 31 */	bl __nw__FUlP7JKRHeapi
/* 80080118 0007D058  28 03 00 00 */	cmplwi r3, 0
/* 8008011C 0007D05C  41 82 00 10 */	beq lbl_8008012C
/* 80080120 0007D060  80 1F 00 08 */	lwz r0, 8(r31)
/* 80080124 0007D064  7C 80 F2 14 */	add r4, r0, r30
/* 80080128 0007D068  48 00 09 BD */	bl __ct__13JPAExtraShapeFPCUc
lbl_8008012C:
/* 8008012C 0007D06C  90 7D 00 08 */	stw r3, 8(r29)
/* 80080130 0007D070  48 00 00 70 */	b lbl_800801A0
lbl_80080134:
/* 80080134 0007D074  3C 04 AC AD */	addis r0, r4, 0xacad
/* 80080138 0007D078  28 00 50 31 */	cmplwi r0, 0x5031
/* 8008013C 0007D07C  40 82 00 30 */	bne lbl_8008016C
/* 80080140 0007D080  80 9F 00 04 */	lwz r4, 4(r31)
/* 80080144 0007D084  38 60 00 50 */	li r3, 0x50
/* 80080148 0007D088  38 A0 00 00 */	li r5, 0
/* 8008014C 0007D08C  4B F8 C7 F9 */	bl __nw__FUlP7JKRHeapi
/* 80080150 0007D090  28 03 00 00 */	cmplwi r3, 0
/* 80080154 0007D094  41 82 00 10 */	beq lbl_80080164
/* 80080158 0007D098  80 1F 00 08 */	lwz r0, 8(r31)
/* 8008015C 0007D09C  7C 80 F2 14 */	add r4, r0, r30
/* 80080160 0007D0A0  48 00 0F 91 */	bl __ct__13JPASweepShapeFPCUc
lbl_80080164:
/* 80080164 0007D0A4  90 7D 00 0C */	stw r3, 0xc(r29)
/* 80080168 0007D0A8  48 00 00 38 */	b lbl_800801A0
lbl_8008016C:
/* 8008016C 0007D0AC  3C 04 BA AC */	addis r0, r4, 0xbaac
/* 80080170 0007D0B0  28 00 58 31 */	cmplwi r0, 0x5831
/* 80080174 0007D0B4  40 82 00 2C */	bne lbl_800801A0
/* 80080178 0007D0B8  80 9F 00 04 */	lwz r4, 4(r31)
/* 8008017C 0007D0BC  38 60 00 2C */	li r3, 0x2c
/* 80080180 0007D0C0  38 A0 00 00 */	li r5, 0
/* 80080184 0007D0C4  4B F8 C7 C1 */	bl __nw__FUlP7JKRHeapi
/* 80080188 0007D0C8  28 03 00 00 */	cmplwi r3, 0
/* 8008018C 0007D0CC  41 82 00 10 */	beq lbl_8008019C
/* 80080190 0007D0D0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80080194 0007D0D4  7C 80 F2 14 */	add r4, r0, r30
/* 80080198 0007D0D8  4B FF F8 FD */	bl __ct__13JPAExTexShapeFPCUc
lbl_8008019C:
/* 8008019C 0007D0DC  90 7D 00 10 */	stw r3, 0x10(r29)
lbl_800801A0:
/* 800801A0 0007D0E0  7F DE C2 14 */	add r30, r30, r24
/* 800801A4 0007D0E4  3B 9C 00 01 */	addi r28, r28, 1
lbl_800801A8:
/* 800801A8 0007D0E8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 800801AC 0007D0EC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800801B0 0007D0F0  7C 19 00 50 */	subf r0, r25, r0
/* 800801B4 0007D0F4  7C 1C 00 40 */	cmplw r28, r0
/* 800801B8 0007D0F8  41 80 FE 34 */	blt lbl_8007FFEC
/* 800801BC 0007D0FC  3B 60 00 00 */	li r27, 0
/* 800801C0 0007D100  3B 00 00 00 */	li r24, 0
/* 800801C4 0007D104  48 00 00 30 */	b lbl_800801F4
lbl_800801C8:
/* 800801C8 0007D108  80 1F 00 08 */	lwz r0, 8(r31)
/* 800801CC 0007D10C  7E E3 BB 78 */	mr r3, r23
/* 800801D0 0007D110  80 BF 00 04 */	lwz r5, 4(r31)
/* 800801D4 0007D114  7C 80 F2 14 */	add r4, r0, r30
/* 800801D8 0007D118  83 44 00 04 */	lwz r26, 4(r4)
/* 800801DC 0007D11C  48 00 0C 89 */	bl registration__18JPATextureResourceFPCUcP7JKRHeap
/* 800801E0 0007D120  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 800801E4 0007D124  7F DE D2 14 */	add r30, r30, r26
/* 800801E8 0007D128  3B 7B 00 01 */	addi r27, r27, 1
/* 800801EC 0007D12C  7C 64 C3 2E */	sthx r3, r4, r24
/* 800801F0 0007D130  3B 18 00 02 */	addi r24, r24, 2
lbl_800801F4:
/* 800801F4 0007D134  7C 1B C8 00 */	cmpw r27, r25
/* 800801F8 0007D138  41 80 FF D0 */	blt lbl_800801C8
/* 800801FC 0007D13C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80080200 0007D140  80 63 00 00 */	lwz r3, 0(r3)
/* 80080204 0007D144  93 A3 00 00 */	stw r29, 0(r3)
/* 80080208 0007D148  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8008020C 0007D14C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80080210 0007D150  BA E1 00 34 */	lmw r23, 0x34(r1)
/* 80080214 0007D154  38 21 00 58 */	addi r1, r1, 0x58
/* 80080218 0007D158  7C 08 03 A6 */	mtlr r0
/* 8008021C 0007D15C  4E 80 00 20 */	blr 

.global __ct__16JPAKeyFrameAnimeFPCUcP7JKRHeap
__ct__16JPAKeyFrameAnimeFPCUcP7JKRHeap:
/* 80080220 0007D160  7C 08 02 A6 */	mflr r0
/* 80080224 0007D164  90 01 00 04 */	stw r0, 4(r1)
/* 80080228 0007D168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008022C 0007D16C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80080230 0007D170  7C 7F 1B 78 */	mr r31, r3
/* 80080234 0007D174  4B FF FA 29 */	bl __ct__12JPADataBlockFPCUcP7JKRHeap
/* 80080238 0007D178  3C 60 80 3B */	lis r3, __vt__16JPAKeyFrameAnime@ha
/* 8008023C 0007D17C  38 03 CC 00 */	addi r0, r3, __vt__16JPAKeyFrameAnime@l
/* 80080240 0007D180  90 1F 00 00 */	stw r0, 0(r31)
/* 80080244 0007D184  7F E3 FB 78 */	mr r3, r31
/* 80080248 0007D188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008024C 0007D18C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80080250 0007D190  38 21 00 20 */	addi r1, r1, 0x20
/* 80080254 0007D194  7C 08 03 A6 */	mtlr r0
/* 80080258 0007D198  4E 80 00 20 */	blr 

.global __dt__16JPAKeyFrameAnimeFv
__dt__16JPAKeyFrameAnimeFv:
/* 8008025C 0007D19C  7C 08 02 A6 */	mflr r0
/* 80080260 0007D1A0  90 01 00 04 */	stw r0, 4(r1)
/* 80080264 0007D1A4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80080268 0007D1A8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8008026C 0007D1AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80080270 0007D1B0  41 82 00 30 */	beq lbl_800802A0
/* 80080274 0007D1B4  3C 60 80 3B */	lis r3, __vt__16JPAKeyFrameAnime@ha
/* 80080278 0007D1B8  38 03 CC 00 */	addi r0, r3, __vt__16JPAKeyFrameAnime@l
/* 8008027C 0007D1BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80080280 0007D1C0  41 82 00 10 */	beq lbl_80080290
/* 80080284 0007D1C4  3C 60 80 3B */	lis r3, __vt__12JPADataBlock@ha
/* 80080288 0007D1C8  38 03 CB F4 */	addi r0, r3, __vt__12JPADataBlock@l
/* 8008028C 0007D1CC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80080290:
/* 80080290 0007D1D0  7C 80 07 35 */	extsh. r0, r4
/* 80080294 0007D1D4  40 81 00 0C */	ble lbl_800802A0
/* 80080298 0007D1D8  7F E3 FB 78 */	mr r3, r31
/* 8008029C 0007D1DC  4B F8 C8 15 */	bl __dl__FPv
lbl_800802A0:
/* 800802A0 0007D1E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800802A4 0007D1E4  7F E3 FB 78 */	mr r3, r31
/* 800802A8 0007D1E8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800802AC 0007D1EC  38 21 00 18 */	addi r1, r1, 0x18
/* 800802B0 0007D1F0  7C 08 03 A6 */	mtlr r0
/* 800802B4 0007D1F4  4E 80 00 20 */	blr 