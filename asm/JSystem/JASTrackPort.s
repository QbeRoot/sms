.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global init__Q28JASystem10TTrackPortFv
init__Q28JASystem10TTrackPortFv:
/* 80068A34 00065974  38 00 00 02 */	li r0, 2
/* 80068A38 00065978  38 80 00 00 */	li r4, 0
/* 80068A3C 0006597C  7C 09 03 A6 */	mtctr r0
/* 80068A40 00065980  38 E4 00 00 */	addi r7, r4, 0
/* 80068A44 00065984  38 C4 00 00 */	addi r6, r4, 0
/* 80068A48 00065988  38 A4 00 00 */	addi r5, r4, 0
/* 80068A4C 0006598C  39 20 00 00 */	li r9, 0
lbl_80068A50:
/* 80068A50 00065990  7D 03 4A 14 */	add r8, r3, r9
/* 80068A54 00065994  98 E8 00 00 */	stb r7, 0(r8)
/* 80068A58 00065998  38 04 00 20 */	addi r0, r4, 0x20
/* 80068A5C 0006599C  39 29 00 01 */	addi r9, r9, 1
/* 80068A60 000659A0  98 C8 00 10 */	stb r6, 0x10(r8)
/* 80068A64 000659A4  7D 03 4A 14 */	add r8, r3, r9
/* 80068A68 000659A8  39 29 00 01 */	addi r9, r9, 1
/* 80068A6C 000659AC  7C A3 03 2E */	sthx r5, r3, r0
/* 80068A70 000659B0  38 04 00 22 */	addi r0, r4, 0x22
/* 80068A74 000659B4  98 E8 00 00 */	stb r7, 0(r8)
/* 80068A78 000659B8  98 C8 00 10 */	stb r6, 0x10(r8)
/* 80068A7C 000659BC  7D 03 4A 14 */	add r8, r3, r9
/* 80068A80 000659C0  39 29 00 01 */	addi r9, r9, 1
/* 80068A84 000659C4  7C A3 03 2E */	sthx r5, r3, r0
/* 80068A88 000659C8  38 04 00 24 */	addi r0, r4, 0x24
/* 80068A8C 000659CC  98 E8 00 00 */	stb r7, 0(r8)
/* 80068A90 000659D0  98 C8 00 10 */	stb r6, 0x10(r8)
/* 80068A94 000659D4  7D 03 4A 14 */	add r8, r3, r9
/* 80068A98 000659D8  39 29 00 01 */	addi r9, r9, 1
/* 80068A9C 000659DC  7C A3 03 2E */	sthx r5, r3, r0
/* 80068AA0 000659E0  38 04 00 26 */	addi r0, r4, 0x26
/* 80068AA4 000659E4  98 E8 00 00 */	stb r7, 0(r8)
/* 80068AA8 000659E8  98 C8 00 10 */	stb r6, 0x10(r8)
/* 80068AAC 000659EC  7D 03 4A 14 */	add r8, r3, r9
/* 80068AB0 000659F0  39 29 00 01 */	addi r9, r9, 1
/* 80068AB4 000659F4  7C A3 03 2E */	sthx r5, r3, r0
/* 80068AB8 000659F8  38 04 00 28 */	addi r0, r4, 0x28
/* 80068ABC 000659FC  98 E8 00 00 */	stb r7, 0(r8)
/* 80068AC0 00065A00  98 C8 00 10 */	stb r6, 0x10(r8)
/* 80068AC4 00065A04  7D 03 4A 14 */	add r8, r3, r9
/* 80068AC8 00065A08  39 29 00 01 */	addi r9, r9, 1
/* 80068ACC 00065A0C  7C A3 03 2E */	sthx r5, r3, r0
/* 80068AD0 00065A10  38 04 00 2A */	addi r0, r4, 0x2a
/* 80068AD4 00065A14  98 E8 00 00 */	stb r7, 0(r8)
/* 80068AD8 00065A18  98 C8 00 10 */	stb r6, 0x10(r8)
/* 80068ADC 00065A1C  7D 03 4A 14 */	add r8, r3, r9
/* 80068AE0 00065A20  39 29 00 01 */	addi r9, r9, 1
/* 80068AE4 00065A24  7C A3 03 2E */	sthx r5, r3, r0
/* 80068AE8 00065A28  38 04 00 2C */	addi r0, r4, 0x2c
/* 80068AEC 00065A2C  98 E8 00 00 */	stb r7, 0(r8)
/* 80068AF0 00065A30  98 C8 00 10 */	stb r6, 0x10(r8)
/* 80068AF4 00065A34  7D 03 4A 14 */	add r8, r3, r9
/* 80068AF8 00065A38  39 29 00 01 */	addi r9, r9, 1
/* 80068AFC 00065A3C  7C A3 03 2E */	sthx r5, r3, r0
/* 80068B00 00065A40  38 04 00 2E */	addi r0, r4, 0x2e
/* 80068B04 00065A44  38 84 00 10 */	addi r4, r4, 0x10
/* 80068B08 00065A48  98 E8 00 00 */	stb r7, 0(r8)
/* 80068B0C 00065A4C  98 C8 00 10 */	stb r6, 0x10(r8)
/* 80068B10 00065A50  7C A3 03 2E */	sthx r5, r3, r0
/* 80068B14 00065A54  42 00 FF 3C */	bdnz lbl_80068A50
/* 80068B18 00065A58  4E 80 00 20 */	blr 
