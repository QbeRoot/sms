.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global frexp
frexp:
/* 80086A88 000839C8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80086A8C 000839CC  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80086A90 000839D0  38 80 00 00 */	li r4, 0
/* 80086A94 000839D4  D8 21 00 08 */	stfd f1, 8(r1)
/* 80086A98 000839D8  80 A1 00 08 */	lwz r5, 8(r1)
/* 80086A9C 000839DC  81 01 00 0C */	lwz r8, 0xc(r1)
/* 80086AA0 000839E0  54 A6 00 7E */	clrlwi r6, r5, 1
/* 80086AA4 000839E4  7C 06 00 00 */	cmpw r6, r0
/* 80086AA8 000839E8  90 83 00 00 */	stw r4, 0(r3)
/* 80086AAC 000839EC  38 E5 00 00 */	addi r7, r5, 0
/* 80086AB0 000839F0  38 86 00 00 */	addi r4, r6, 0
/* 80086AB4 000839F4  40 80 00 0C */	bge lbl_80086AC0
/* 80086AB8 000839F8  7C 80 43 79 */	or. r0, r4, r8
/* 80086ABC 000839FC  40 82 00 0C */	bne lbl_80086AC8
lbl_80086AC0:
/* 80086AC0 00083A00  C8 21 00 08 */	lfd f1, 8(r1)
/* 80086AC4 00083A04  48 00 00 58 */	b lbl_80086B1C
lbl_80086AC8:
/* 80086AC8 00083A08  3C 00 00 10 */	lis r0, 0x10
/* 80086ACC 00083A0C  7C 04 00 00 */	cmpw r4, r0
/* 80086AD0 00083A10  40 80 00 28 */	bge lbl_80086AF8
/* 80086AD4 00083A14  C8 21 00 08 */	lfd f1, 8(r1)
/* 80086AD8 00083A18  38 00 FF CA */	li r0, -54
/* 80086ADC 00083A1C  C8 02 8A 08 */	lfd f0, $$2100-_SDA2_BASE_(r2)
/* 80086AE0 00083A20  FC 01 00 32 */	fmul f0, f1, f0
/* 80086AE4 00083A24  D8 01 00 08 */	stfd f0, 8(r1)
/* 80086AE8 00083A28  80 81 00 08 */	lwz r4, 8(r1)
/* 80086AEC 00083A2C  90 03 00 00 */	stw r0, 0(r3)
/* 80086AF0 00083A30  38 E4 00 00 */	addi r7, r4, 0
/* 80086AF4 00083A34  54 84 00 7E */	clrlwi r4, r4, 1
lbl_80086AF8:
/* 80086AF8 00083A38  80 A3 00 00 */	lwz r5, 0(r3)
/* 80086AFC 00083A3C  7C 84 A6 70 */	srawi r4, r4, 0x14
/* 80086B00 00083A40  54 E0 03 00 */	rlwinm r0, r7, 0, 0xc, 0
/* 80086B04 00083A44  7C 84 2A 14 */	add r4, r4, r5
/* 80086B08 00083A48  38 84 FC 02 */	addi r4, r4, -1022
/* 80086B0C 00083A4C  90 83 00 00 */	stw r4, 0(r3)
/* 80086B10 00083A50  64 00 3F E0 */	oris r0, r0, 0x3fe0
/* 80086B14 00083A54  90 01 00 08 */	stw r0, 8(r1)
/* 80086B18 00083A58  C8 21 00 08 */	lfd f1, 8(r1)
lbl_80086B1C:
/* 80086B1C 00083A5C  38 21 00 18 */	addi r1, r1, 0x18
/* 80086B20 00083A60  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
.global $$2100
$$2100:
	.incbin "baserom.dol", 0x3E4708, 0x8
