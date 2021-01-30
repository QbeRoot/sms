.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global init__Q28JASystem13WaveArcLoaderFv
init__Q28JASystem13WaveArcLoaderFv:
/* 8005AEB4 00057DF4  7C 08 02 A6 */	mflr r0
/* 8005AEB8 00057DF8  90 01 00 04 */	stw r0, 4(r1)
/* 8005AEBC 00057DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005AEC0 00057E00  38 61 00 08 */	addi r3, r1, 8
/* 8005AEC4 00057E04  48 00 90 29 */	bl allocFromSysAramFull__Q28JASystem6KernelFPUl
/* 8005AEC8 00057E08  7C 64 1B 79 */	or. r4, r3, r3
/* 8005AECC 00057E0C  40 82 00 0C */	bne lbl_8005AED8
/* 8005AED0 00057E10  38 60 00 00 */	li r3, 0
/* 8005AED4 00057E14  48 00 00 1C */	b lbl_8005AEF0
lbl_8005AED8:
/* 8005AED8 00057E18  3C 60 80 3E */	lis r3, sAramHeap__Q28JASystem13WaveArcLoader@ha
/* 8005AEDC 00057E1C  80 A1 00 08 */	lwz r5, 8(r1)
/* 8005AEE0 00057E20  38 63 63 34 */	addi r3, r3, sAramHeap__Q28JASystem13WaveArcLoader@l
/* 8005AEE4 00057E24  38 C0 00 00 */	li r6, 0
/* 8005AEE8 00057E28  48 00 89 4D */	bl initMotherHeap__Q38JASystem6Kernel5THeapFUlUlUc
/* 8005AEEC 00057E2C  38 60 00 01 */	li r3, 1
lbl_8005AEF0:
/* 8005AEF0 00057E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005AEF4 00057E34  38 21 00 10 */	addi r1, r1, 0x10
/* 8005AEF8 00057E38  7C 08 03 A6 */	mtlr r0
/* 8005AEFC 00057E3C  4E 80 00 20 */	blr 

.global setCurrentDir__Q28JASystem13WaveArcLoaderFPCc
setCurrentDir__Q28JASystem13WaveArcLoaderFPCc:
/* 8005AF00 00057E40  7C 08 02 A6 */	mflr r0
/* 8005AF04 00057E44  3C 80 80 3B */	lis r4, sCurrentDir__Q28JASystem13WaveArcLoader@ha
/* 8005AF08 00057E48  90 01 00 04 */	stw r0, 4(r1)
/* 8005AF0C 00057E4C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8005AF10 00057E50  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8005AF14 00057E54  3B E4 AF 10 */	addi r31, r4, sCurrentDir__Q28JASystem13WaveArcLoader@l
/* 8005AF18 00057E58  38 83 00 00 */	addi r4, r3, 0
/* 8005AF1C 00057E5C  38 7F 00 00 */	addi r3, r31, 0
/* 8005AF20 00057E60  48 02 AE D1 */	bl strcpy
/* 8005AF24 00057E64  7F E3 FB 78 */	mr r3, r31
/* 8005AF28 00057E68  48 02 AF 7D */	bl strlen
/* 8005AF2C 00057E6C  7C 9F 1A 14 */	add r4, r31, r3
/* 8005AF30 00057E70  88 04 FF FF */	lbz r0, -1(r4)
/* 8005AF34 00057E74  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8005AF38 00057E78  41 82 00 14 */	beq lbl_8005AF4C
/* 8005AF3C 00057E7C  38 00 00 2F */	li r0, 0x2f
/* 8005AF40 00057E80  7C 1F 19 AE */	stbx r0, r31, r3
/* 8005AF44 00057E84  38 00 00 00 */	li r0, 0
/* 8005AF48 00057E88  98 04 00 01 */	stb r0, 1(r4)
lbl_8005AF4C:
/* 8005AF4C 00057E8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8005AF50 00057E90  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8005AF54 00057E94  38 21 00 18 */	addi r1, r1, 0x18
/* 8005AF58 00057E98  7C 08 03 A6 */	mtlr r0
/* 8005AF5C 00057E9C  4E 80 00 20 */	blr 

.global getCurrentDir__Q28JASystem13WaveArcLoaderFv
getCurrentDir__Q28JASystem13WaveArcLoaderFv:
/* 8005AF60 00057EA0  3C 60 80 3B */	lis r3, sCurrentDir__Q28JASystem13WaveArcLoader@ha
/* 8005AF64 00057EA4  38 63 AF 10 */	addi r3, r3, sCurrentDir__Q28JASystem13WaveArcLoader@l
/* 8005AF68 00057EA8  4E 80 00 20 */	blr 

.global loadWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject
loadWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject:
/* 8005AF6C 00057EAC  7C 08 02 A6 */	mflr r0
/* 8005AF70 00057EB0  90 01 00 04 */	stw r0, 4(r1)
/* 8005AF74 00057EB4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8005AF78 00057EB8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8005AF7C 00057EBC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8005AF80 00057EC0  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8005AF84 00057EC4  7C 7D 1B 78 */	mr r29, r3
/* 8005AF88 00057EC8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8005AF8C 00057ECC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8005AF90 00057ED0  7D 88 03 A6 */	mtlr r12
/* 8005AF94 00057ED4  4E 80 00 21 */	blrl 
/* 8005AF98 00057ED8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8005AF9C 00057EDC  40 82 00 0C */	bne lbl_8005AFA8
/* 8005AFA0 00057EE0  38 60 00 00 */	li r3, 0
/* 8005AFA4 00057EE4  48 00 00 DC */	b lbl_8005B080
lbl_8005AFA8:
/* 8005AFA8 00057EE8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8005AFAC 00057EEC  28 00 00 00 */	cmplwi r0, 0
/* 8005AFB0 00057EF0  41 82 00 0C */	beq lbl_8005AFBC
/* 8005AFB4 00057EF4  38 60 00 00 */	li r3, 0
/* 8005AFB8 00057EF8  48 00 00 C8 */	b lbl_8005B080
lbl_8005AFBC:
/* 8005AFBC 00057EFC  3C 60 80 3B */	lis r3, sCurrentDir__Q28JASystem13WaveArcLoader@ha
/* 8005AFC0 00057F00  38 83 AF 10 */	addi r4, r3, sCurrentDir__Q28JASystem13WaveArcLoader@l
/* 8005AFC4 00057F04  38 61 00 10 */	addi r3, r1, 0x10
/* 8005AFC8 00057F08  48 02 AE 29 */	bl strcpy
/* 8005AFCC 00057F0C  7F A3 EB 78 */	mr r3, r29
/* 8005AFD0 00057F10  81 9D 00 00 */	lwz r12, 0(r29)
/* 8005AFD4 00057F14  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8005AFD8 00057F18  7D 88 03 A6 */	mtlr r12
/* 8005AFDC 00057F1C  4E 80 00 21 */	blrl 
/* 8005AFE0 00057F20  38 83 00 00 */	addi r4, r3, 0
/* 8005AFE4 00057F24  38 61 00 10 */	addi r3, r1, 0x10
/* 8005AFE8 00057F28  48 02 AD 99 */	bl strcat
/* 8005AFEC 00057F2C  38 61 00 10 */	addi r3, r1, 0x10
/* 8005AFF0 00057F30  48 00 70 59 */	bl checkFileExtend__Q28JASystem3DvdFPc
/* 8005AFF4 00057F34  7C 7E 1B 79 */	or. r30, r3, r3
/* 8005AFF8 00057F38  40 82 00 0C */	bne lbl_8005B004
/* 8005AFFC 00057F3C  38 60 00 00 */	li r3, 0
/* 8005B000 00057F40  48 00 00 80 */	b lbl_8005B080
lbl_8005B004:
/* 8005B004 00057F44  3C 60 80 3E */	lis r3, sAramHeap__Q28JASystem13WaveArcLoader@ha
/* 8005B008 00057F48  38 83 63 34 */	addi r4, r3, sAramHeap__Q28JASystem13WaveArcLoader@l
/* 8005B00C 00057F4C  38 7F 00 00 */	addi r3, r31, 0
/* 8005B010 00057F50  38 BE 00 00 */	addi r5, r30, 0
/* 8005B014 00057F54  48 00 8A 31 */	bl alloc__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUl
/* 8005B018 00057F58  28 03 00 00 */	cmplwi r3, 0
/* 8005B01C 00057F5C  40 82 00 0C */	bne lbl_8005B028
/* 8005B020 00057F60  38 60 00 00 */	li r3, 0
/* 8005B024 00057F64  48 00 00 5C */	b lbl_8005B080
lbl_8005B028:
/* 8005B028 00057F68  7F A3 EB 78 */	mr r3, r29
/* 8005B02C 00057F6C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8005B030 00057F70  81 8C 00 08 */	lwz r12, 8(r12)
/* 8005B034 00057F74  7D 88 03 A6 */	mtlr r12
/* 8005B038 00057F78  4E 80 00 21 */	blrl 
/* 8005B03C 00057F7C  38 00 00 00 */	li r0, 0
/* 8005B040 00057F80  90 03 00 00 */	stw r0, 0(r3)
/* 8005B044 00057F84  39 03 00 00 */	addi r8, r3, 0
/* 8005B048 00057F88  38 FE 00 00 */	addi r7, r30, 0
/* 8005B04C 00057F8C  80 BF 00 08 */	lwz r5, 8(r31)
/* 8005B050 00057F90  38 81 00 10 */	addi r4, r1, 0x10
/* 8005B054 00057F94  38 60 00 00 */	li r3, 0
/* 8005B058 00057F98  38 C0 00 00 */	li r6, 0
/* 8005B05C 00057F9C  39 20 00 00 */	li r9, 0
/* 8005B060 00057FA0  48 00 6F 35 */	bl loadToAramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v
/* 8005B064 00057FA4  2C 03 FF FF */	cmpwi r3, -1
/* 8005B068 00057FA8  40 82 00 14 */	bne lbl_8005B07C
/* 8005B06C 00057FAC  7F E3 FB 78 */	mr r3, r31
/* 8005B070 00057FB0  48 00 8A 15 */	bl free__Q38JASystem6Kernel5THeapFv
/* 8005B074 00057FB4  38 60 00 00 */	li r3, 0
/* 8005B078 00057FB8  48 00 00 08 */	b lbl_8005B080
lbl_8005B07C:
/* 8005B07C 00057FBC  38 60 00 01 */	li r3, 1
lbl_8005B080:
/* 8005B080 00057FC0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8005B084 00057FC4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8005B088 00057FC8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8005B08C 00057FCC  7C 08 03 A6 */	mtlr r0
/* 8005B090 00057FD0  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8005B094 00057FD4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8005B098 00057FD8  4E 80 00 20 */	blr 

.global eraseWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject
eraseWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject:
/* 8005B09C 00057FDC  7C 08 02 A6 */	mflr r0
/* 8005B0A0 00057FE0  90 01 00 04 */	stw r0, 4(r1)
/* 8005B0A4 00057FE4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8005B0A8 00057FE8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8005B0AC 00057FEC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8005B0B0 00057FF0  7C 7E 1B 78 */	mr r30, r3
/* 8005B0B4 00057FF4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8005B0B8 00057FF8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8005B0BC 00057FFC  7D 88 03 A6 */	mtlr r12
/* 8005B0C0 00058000  4E 80 00 21 */	blrl 
/* 8005B0C4 00058004  7C 7F 1B 79 */	or. r31, r3, r3
/* 8005B0C8 00058008  40 82 00 0C */	bne lbl_8005B0D4
/* 8005B0CC 0005800C  38 60 00 00 */	li r3, 0
/* 8005B0D0 00058010  48 00 00 40 */	b lbl_8005B110
lbl_8005B0D4:
/* 8005B0D4 00058014  80 1F 00 08 */	lwz r0, 8(r31)
/* 8005B0D8 00058018  28 00 00 00 */	cmplwi r0, 0
/* 8005B0DC 0005801C  40 82 00 0C */	bne lbl_8005B0E8
/* 8005B0E0 00058020  38 60 00 00 */	li r3, 0
/* 8005B0E4 00058024  48 00 00 2C */	b lbl_8005B110
lbl_8005B0E8:
/* 8005B0E8 00058028  7F C3 F3 78 */	mr r3, r30
/* 8005B0EC 0005802C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8005B0F0 00058030  81 8C 00 08 */	lwz r12, 8(r12)
/* 8005B0F4 00058034  7D 88 03 A6 */	mtlr r12
/* 8005B0F8 00058038  4E 80 00 21 */	blrl 
/* 8005B0FC 0005803C  38 00 00 00 */	li r0, 0
/* 8005B100 00058040  90 03 00 00 */	stw r0, 0(r3)
/* 8005B104 00058044  7F E3 FB 78 */	mr r3, r31
/* 8005B108 00058048  48 00 89 7D */	bl free__Q38JASystem6Kernel5THeapFv
/* 8005B10C 0005804C  38 60 00 01 */	li r3, 1
lbl_8005B110:
/* 8005B110 00058050  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8005B114 00058054  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8005B118 00058058  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8005B11C 0005805C  7C 08 03 A6 */	mtlr r0
/* 8005B120 00058060  38 21 00 18 */	addi r1, r1, 0x18
/* 8005B124 00058064  4E 80 00 20 */	blr 

.global getRootHeap__Q28JASystem13WaveArcLoaderFv
getRootHeap__Q28JASystem13WaveArcLoaderFv:
/* 8005B128 00058068  3C 60 80 3E */	lis r3, sAramHeap__Q28JASystem13WaveArcLoader@ha
/* 8005B12C 0005806C  38 63 63 34 */	addi r3, r3, sAramHeap__Q28JASystem13WaveArcLoader@l
/* 8005B130 00058070  4E 80 00 20 */	blr 

.global __sinit_JASWaveArcLoader_cpp
__sinit_JASWaveArcLoader_cpp:
/* 8005B134 00058074  7C 08 02 A6 */	mflr r0
/* 8005B138 00058078  3C 60 80 3E */	lis r3, sAramHeap__Q28JASystem13WaveArcLoader@ha
/* 8005B13C 0005807C  90 01 00 04 */	stw r0, 4(r1)
/* 8005B140 00058080  38 63 63 34 */	addi r3, r3, sAramHeap__Q28JASystem13WaveArcLoader@l
/* 8005B144 00058084  94 21 FF F8 */	stwu r1, -8(r1)
/* 8005B148 00058088  48 00 85 A1 */	bl __ct__Q38JASystem6Kernel5THeapFv
/* 8005B14C 0005808C  3C 80 80 06 */	lis r4, __dt__Q38JASystem6Kernel5THeapFv@ha
/* 8005B150 00058090  3C A0 80 3E */	lis r5, $$2257@ha
/* 8005B154 00058094  38 84 96 6C */	addi r4, r4, __dt__Q38JASystem6Kernel5THeapFv@l
/* 8005B158 00058098  38 A5 63 28 */	addi r5, r5, $$2257@l
/* 8005B15C 0005809C  48 02 75 CD */	bl __register_global_object
/* 8005B160 000580A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8005B164 000580A4  38 21 00 08 */	addi r1, r1, 8
/* 8005B168 000580A8  7C 08 03 A6 */	mtlr r0
/* 8005B16C 000580AC  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
	.incbin "baserom.dol", 0x36CBF0, 0x4

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global sCurrentDir__Q28JASystem13WaveArcLoader
sCurrentDir__Q28JASystem13WaveArcLoader:
	.incbin "baserom.dol", 0x3A7F10, 0x40

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
.global $$2257
$$2257:
	.skip 0xC
.global sAramHeap__Q28JASystem13WaveArcLoader
sAramHeap__Q28JASystem13WaveArcLoader:
	.skip 0x2C
