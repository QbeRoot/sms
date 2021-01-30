.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global calc__11J3DTexNoAnmCFPUs
calc__11J3DTexNoAnmCFPUs:
/* 80039858 00036798  7C 08 02 A6 */	mflr r0
/* 8003985C 0003679C  38 C3 00 00 */	addi r6, r3, 0
/* 80039860 000367A0  90 01 00 04 */	stw r0, 4(r1)
/* 80039864 000367A4  38 A4 00 00 */	addi r5, r4, 0
/* 80039868 000367A8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8003986C 000367AC  80 63 00 08 */	lwz r3, 8(r3)
/* 80039870 000367B0  A0 86 00 04 */	lhz r4, 4(r6)
/* 80039874 000367B4  4B FF 3F 19 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80039878 000367B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8003987C 000367BC  38 21 00 08 */	addi r1, r1, 8
/* 80039880 000367C0  7C 08 03 A6 */	mtlr r0
/* 80039884 000367C4  4E 80 00 20 */	blr 

.global initialize__14J3DMaterialAnmFv
initialize__14J3DMaterialAnmFv:
/* 80039888 000367C8  38 00 00 00 */	li r0, 0
/* 8003988C 000367CC  90 03 00 04 */	stw r0, 4(r3)
/* 80039890 000367D0  90 03 00 08 */	stw r0, 8(r3)
/* 80039894 000367D4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80039898 000367D8  90 03 00 30 */	stw r0, 0x30(r3)
/* 8003989C 000367DC  90 03 00 34 */	stw r0, 0x34(r3)
/* 800398A0 000367E0  90 03 00 38 */	stw r0, 0x38(r3)
/* 800398A4 000367E4  90 03 00 3C */	stw r0, 0x3c(r3)
/* 800398A8 000367E8  90 03 00 40 */	stw r0, 0x40(r3)
/* 800398AC 000367EC  90 03 00 44 */	stw r0, 0x44(r3)
/* 800398B0 000367F0  90 03 00 48 */	stw r0, 0x48(r3)
/* 800398B4 000367F4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 800398B8 000367F8  90 03 00 50 */	stw r0, 0x50(r3)
/* 800398BC 000367FC  90 03 00 54 */	stw r0, 0x54(r3)
/* 800398C0 00036800  90 03 00 58 */	stw r0, 0x58(r3)
/* 800398C4 00036804  90 03 00 5C */	stw r0, 0x5c(r3)
/* 800398C8 00036808  90 03 00 60 */	stw r0, 0x60(r3)
/* 800398CC 0003680C  90 03 00 64 */	stw r0, 0x64(r3)
/* 800398D0 00036810  90 03 00 68 */	stw r0, 0x68(r3)
/* 800398D4 00036814  90 03 00 0C */	stw r0, 0xc(r3)
/* 800398D8 00036818  90 03 00 10 */	stw r0, 0x10(r3)
/* 800398DC 0003681C  90 03 00 14 */	stw r0, 0x14(r3)
/* 800398E0 00036820  90 03 00 18 */	stw r0, 0x18(r3)
/* 800398E4 00036824  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800398E8 00036828  90 03 00 20 */	stw r0, 0x20(r3)
/* 800398EC 0003682C  90 03 00 24 */	stw r0, 0x24(r3)
/* 800398F0 00036830  90 03 00 28 */	stw r0, 0x28(r3)
/* 800398F4 00036834  4E 80 00 20 */	blr 

.global calc__14J3DMaterialAnmCFP11J3DMaterial
calc__14J3DMaterialAnmCFP11J3DMaterial:
/* 800398F8 00036838  7C 08 02 A6 */	mflr r0
/* 800398FC 0003683C  90 01 00 04 */	stw r0, 4(r1)
/* 80039900 00036840  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80039904 00036844  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 80039908 00036848  3B C3 00 00 */	addi r30, r3, 0
/* 8003990C 0003684C  3B E4 00 00 */	addi r31, r4, 0
/* 80039910 00036850  3B 60 00 00 */	li r27, 0
/* 80039914 00036854  3B A0 00 00 */	li r29, 0
lbl_80039918:
/* 80039918 00036858  3B 9D 00 04 */	addi r28, r29, 4
/* 8003991C 0003685C  7F 9E E2 14 */	add r28, r30, r28
/* 80039920 00036860  80 1C 00 00 */	lwz r0, 0(r28)
/* 80039924 00036864  28 00 00 00 */	cmplwi r0, 0
/* 80039928 00036868  41 82 00 3C */	beq lbl_80039964
/* 8003992C 0003686C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80039930 00036870  7F 64 DB 78 */	mr r4, r27
/* 80039934 00036874  81 83 00 00 */	lwz r12, 0(r3)
/* 80039938 00036878  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8003993C 0003687C  7D 88 03 A6 */	mtlr r12
/* 80039940 00036880  4E 80 00 21 */	blrl 
/* 80039944 00036884  80 9C 00 00 */	lwz r4, 0(r28)
/* 80039948 00036888  7C 65 1B 78 */	mr r5, r3
/* 8003994C 0003688C  80 64 00 04 */	lwz r3, 4(r4)
/* 80039950 00036890  A0 84 00 00 */	lhz r4, 0(r4)
/* 80039954 00036894  81 83 00 0C */	lwz r12, 0xc(r3)
/* 80039958 00036898  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8003995C 0003689C  7D 88 03 A6 */	mtlr r12
/* 80039960 000368A0  4E 80 00 21 */	blrl 
lbl_80039964:
/* 80039964 000368A4  3B 7B 00 01 */	addi r27, r27, 1
/* 80039968 000368A8  28 1B 00 02 */	cmplwi r27, 2
/* 8003996C 000368AC  3B BD 00 04 */	addi r29, r29, 4
/* 80039970 000368B0  41 80 FF A8 */	blt lbl_80039918
/* 80039974 000368B4  3B 60 00 00 */	li r27, 0
/* 80039978 000368B8  3B A0 00 00 */	li r29, 0
lbl_8003997C:
/* 8003997C 000368BC  38 1D 00 2C */	addi r0, r29, 0x2c
/* 80039980 000368C0  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80039984 000368C4  28 03 00 00 */	cmplwi r3, 0
/* 80039988 000368C8  41 82 00 34 */	beq lbl_800399BC
/* 8003998C 000368CC  81 83 00 00 */	lwz r12, 0(r3)
/* 80039990 000368D0  38 81 00 18 */	addi r4, r1, 0x18
/* 80039994 000368D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80039998 000368D8  7D 88 03 A6 */	mtlr r12
/* 8003999C 000368DC  4E 80 00 21 */	blrl 
/* 800399A0 000368E0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 800399A4 000368E4  7F 64 DB 78 */	mr r4, r27
/* 800399A8 000368E8  A0 A1 00 18 */	lhz r5, 0x18(r1)
/* 800399AC 000368EC  81 83 00 00 */	lwz r12, 0(r3)
/* 800399B0 000368F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800399B4 000368F4  7D 88 03 A6 */	mtlr r12
/* 800399B8 000368F8  4E 80 00 21 */	blrl 
lbl_800399BC:
/* 800399BC 000368FC  3B 7B 00 01 */	addi r27, r27, 1
/* 800399C0 00036900  28 1B 00 08 */	cmplwi r27, 8
/* 800399C4 00036904  3B BD 00 04 */	addi r29, r29, 4
/* 800399C8 00036908  41 80 FF B4 */	blt lbl_8003997C
/* 800399CC 0003690C  3B 60 00 00 */	li r27, 0
/* 800399D0 00036910  3B A0 00 00 */	li r29, 0
lbl_800399D4:
/* 800399D4 00036914  3B 9D 00 4C */	addi r28, r29, 0x4c
/* 800399D8 00036918  7F 9E E2 14 */	add r28, r30, r28
/* 800399DC 0003691C  80 1C 00 00 */	lwz r0, 0(r28)
/* 800399E0 00036920  28 00 00 00 */	cmplwi r0, 0
/* 800399E4 00036924  41 82 00 30 */	beq lbl_80039A14
/* 800399E8 00036928  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 800399EC 0003692C  7F 64 DB 78 */	mr r4, r27
/* 800399F0 00036930  81 83 00 00 */	lwz r12, 0(r3)
/* 800399F4 00036934  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800399F8 00036938  7D 88 03 A6 */	mtlr r12
/* 800399FC 0003693C  4E 80 00 21 */	blrl 
/* 80039A00 00036940  80 9C 00 00 */	lwz r4, 0(r28)
/* 80039A04 00036944  7C 65 1B 78 */	mr r5, r3
/* 80039A08 00036948  80 64 00 04 */	lwz r3, 4(r4)
/* 80039A0C 0003694C  A0 84 00 00 */	lhz r4, 0(r4)
/* 80039A10 00036950  4B FF 40 1D */	bl getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10
lbl_80039A14:
/* 80039A14 00036954  3B 7B 00 01 */	addi r27, r27, 1
/* 80039A18 00036958  28 1B 00 03 */	cmplwi r27, 3
/* 80039A1C 0003695C  3B BD 00 04 */	addi r29, r29, 4
/* 80039A20 00036960  41 80 FF B4 */	blt lbl_800399D4
/* 80039A24 00036964  3B 60 00 00 */	li r27, 0
/* 80039A28 00036968  3B A0 00 00 */	li r29, 0
lbl_80039A2C:
/* 80039A2C 0003696C  3B 9D 00 5C */	addi r28, r29, 0x5c
/* 80039A30 00036970  7F 9E E2 14 */	add r28, r30, r28
/* 80039A34 00036974  80 1C 00 00 */	lwz r0, 0(r28)
/* 80039A38 00036978  28 00 00 00 */	cmplwi r0, 0
/* 80039A3C 0003697C  41 82 00 30 */	beq lbl_80039A6C
/* 80039A40 00036980  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80039A44 00036984  7F 64 DB 78 */	mr r4, r27
/* 80039A48 00036988  81 83 00 00 */	lwz r12, 0(r3)
/* 80039A4C 0003698C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80039A50 00036990  7D 88 03 A6 */	mtlr r12
/* 80039A54 00036994  4E 80 00 21 */	blrl 
/* 80039A58 00036998  80 9C 00 00 */	lwz r4, 0(r28)
/* 80039A5C 0003699C  7C 65 1B 78 */	mr r5, r3
/* 80039A60 000369A0  80 64 00 04 */	lwz r3, 4(r4)
/* 80039A64 000369A4  A0 84 00 00 */	lhz r4, 0(r4)
/* 80039A68 000369A8  4B FF 43 11 */	bl getTevKonstReg__15J3DAnmTevRegKeyCFUsP8_GXColor
lbl_80039A6C:
/* 80039A6C 000369AC  3B 7B 00 01 */	addi r27, r27, 1
/* 80039A70 000369B0  28 1B 00 04 */	cmplwi r27, 4
/* 80039A74 000369B4  3B BD 00 04 */	addi r29, r29, 4
/* 80039A78 000369B8  41 80 FF B4 */	blt lbl_80039A2C
/* 80039A7C 000369BC  3B 60 00 00 */	li r27, 0
/* 80039A80 000369C0  3B A0 00 00 */	li r29, 0
lbl_80039A84:
/* 80039A84 000369C4  3B 9D 00 0C */	addi r28, r29, 0xc
/* 80039A88 000369C8  7F 9E E2 14 */	add r28, r30, r28
/* 80039A8C 000369CC  80 1C 00 00 */	lwz r0, 0(r28)
/* 80039A90 000369D0  28 00 00 00 */	cmplwi r0, 0
/* 80039A94 000369D4  41 82 00 34 */	beq lbl_80039AC8
/* 80039A98 000369D8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80039A9C 000369DC  7F 64 DB 78 */	mr r4, r27
/* 80039AA0 000369E0  81 83 00 00 */	lwz r12, 0(r3)
/* 80039AA4 000369E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80039AA8 000369E8  7D 88 03 A6 */	mtlr r12
/* 80039AAC 000369EC  4E 80 00 21 */	blrl 
/* 80039AB0 000369F0  80 9C 00 00 */	lwz r4, 0(r28)
/* 80039AB4 000369F4  38 A3 00 10 */	addi r5, r3, 0x10
/* 80039AB8 000369F8  80 64 00 04 */	lwz r3, 4(r4)
/* 80039ABC 000369FC  A0 84 00 00 */	lhz r4, 0(r4)
/* 80039AC0 00036A00  C0 23 00 04 */	lfs f1, 4(r3)
/* 80039AC4 00036A04  4B FF 2A C9 */	bl calcTransform__19J3DAnmTextureSRTKeyCFfUsP17J3DTextureSRTInfo
lbl_80039AC8:
/* 80039AC8 00036A08  3B 7B 00 01 */	addi r27, r27, 1
/* 80039ACC 00036A0C  28 1B 00 08 */	cmplwi r27, 8
/* 80039AD0 00036A10  3B BD 00 04 */	addi r29, r29, 4
/* 80039AD4 00036A14  41 80 FF B0 */	blt lbl_80039A84
/* 80039AD8 00036A18  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 80039ADC 00036A1C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80039AE0 00036A20  38 21 00 38 */	addi r1, r1, 0x38
/* 80039AE4 00036A24  7C 08 03 A6 */	mtlr r0
/* 80039AE8 00036A28  4E 80 00 20 */	blr 

.global __dt__14J3DMaterialAnmFv
__dt__14J3DMaterialAnmFv:
/* 80039AEC 00036A2C  7C 08 02 A6 */	mflr r0
/* 80039AF0 00036A30  90 01 00 04 */	stw r0, 4(r1)
/* 80039AF4 00036A34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80039AF8 00036A38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80039AFC 00036A3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80039B00 00036A40  41 82 00 20 */	beq lbl_80039B20
/* 80039B04 00036A44  3C 60 80 3B */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80039B08 00036A48  38 63 9E 98 */	addi r3, r3, __vt__14J3DMaterialAnm@l
/* 80039B0C 00036A4C  7C 80 07 35 */	extsh. r0, r4
/* 80039B10 00036A50  90 7F 00 00 */	stw r3, 0(r31)
/* 80039B14 00036A54  40 81 00 0C */	ble lbl_80039B20
/* 80039B18 00036A58  7F E3 FB 78 */	mr r3, r31
/* 80039B1C 00036A5C  4B FD 2F 95 */	bl __dl__FPv
lbl_80039B20:
/* 80039B20 00036A60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80039B24 00036A64  7F E3 FB 78 */	mr r3, r31
/* 80039B28 00036A68  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80039B2C 00036A6C  38 21 00 18 */	addi r1, r1, 0x18
/* 80039B30 00036A70  7C 08 03 A6 */	mtlr r0
/* 80039B34 00036A74  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__14J3DMaterialAnm
__vt__14J3DMaterialAnm:
	.incbin "baserom.dol", 0x3A6E98, 0x10
.global __vt__11J3DTexNoAnm
__vt__11J3DTexNoAnm:
	.incbin "baserom.dol", 0x3A6EA8, 0x10
