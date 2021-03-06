.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global storeBuffer__14JAIStreamEntryFPP8JAISoundP8JAIActorUlUlUcPv
storeBuffer__14JAIStreamEntryFPP8JAISoundP8JAIActorUlUlUcPv:
/* 8004F9CC 0004C90C  7C 08 02 A6 */	mflr r0
/* 8004F9D0 0004C910  90 01 00 04 */	stw r0, 4(r1)
/* 8004F9D4 0004C914  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8004F9D8 0004C918  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 8004F9DC 0004C91C  7C 77 1B 78 */	mr r23, r3
/* 8004F9E0 0004C920  3B 46 00 00 */	addi r26, r6, 0
/* 8004F9E4 0004C924  3B A9 00 00 */	addi r29, r9, 0
/* 8004F9E8 0004C928  3B 25 00 00 */	addi r25, r5, 0
/* 8004F9EC 0004C92C  3B 04 00 00 */	addi r24, r4, 0
/* 8004F9F0 0004C930  3B 67 00 00 */	addi r27, r7, 0
/* 8004F9F4 0004C934  3B 88 00 00 */	addi r28, r8, 0
/* 8004F9F8 0004C938  38 BA 00 00 */	addi r5, r26, 0
/* 8004F9FC 0004C93C  38 DD 00 00 */	addi r6, r29, 0
/* 8004FA00 0004C940  80 63 00 00 */	lwz r3, 0(r3)
/* 8004FA04 0004C944  83 C3 00 00 */	lwz r30, 0(r3)
/* 8004FA08 0004C948  38 77 00 00 */	addi r3, r23, 0
/* 8004FA0C 0004C94C  4B FF F7 F9 */	bl checkSoundHandle__8JAIEntryFPP8JAISoundUlPv
/* 8004FA10 0004C950  28 03 00 00 */	cmplwi r3, 0
/* 8004FA14 0004C954  40 82 00 A4 */	bne lbl_8004FAB8
/* 8004FA18 0004C958  80 77 00 00 */	lwz r3, 0(r23)
/* 8004FA1C 0004C95C  38 9E 02 1C */	addi r4, r30, 0x21c
/* 8004FA20 0004C960  4B FF D3 2D */	bl getControllerHandle__8JAIBasicFP13JAILinkBuffer
/* 8004FA24 0004C964  7C 7F 1B 79 */	or. r31, r3, r3
/* 8004FA28 0004C968  40 82 00 10 */	bne lbl_8004FA38
/* 8004FA2C 0004C96C  38 00 00 00 */	li r0, 0
/* 8004FA30 0004C970  90 18 00 00 */	stw r0, 0(r24)
/* 8004FA34 0004C974  48 00 00 84 */	b lbl_8004FAB8
lbl_8004FA38:
/* 8004FA38 0004C978  80 77 00 00 */	lwz r3, 0(r23)
/* 8004FA3C 0004C97C  4B FF D3 E1 */	bl getStreamParameter__8JAIBasicFv
/* 8004FA40 0004C980  90 7F 00 38 */	stw r3, 0x38(r31)
/* 8004FA44 0004C984  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8004FA48 0004C988  28 00 00 00 */	cmplwi r0, 0
/* 8004FA4C 0004C98C  40 82 00 10 */	bne lbl_8004FA5C
/* 8004FA50 0004C990  38 00 00 00 */	li r0, 0
/* 8004FA54 0004C994  90 18 00 00 */	stw r0, 0(r24)
/* 8004FA58 0004C998  48 00 00 60 */	b lbl_8004FAB8
lbl_8004FA5C:
/* 8004FA5C 0004C99C  7F E3 FB 78 */	mr r3, r31
/* 8004FA60 0004C9A0  48 00 7F 5D */	bl getStreamParameter__8JAISoundFv
/* 8004FA64 0004C9A4  38 83 00 00 */	addi r4, r3, 0
/* 8004FA68 0004C9A8  38 7E 00 00 */	addi r3, r30, 0
/* 8004FA6C 0004C9AC  4B FF E7 C1 */	bl initStreamParameter__7JAIDataFP18JAIStreamParameter
/* 8004FA70 0004C9B0  38 00 00 01 */	li r0, 1
/* 8004FA74 0004C9B4  98 1F 00 01 */	stb r0, 1(r31)
/* 8004FA78 0004C9B8  38 60 00 0A */	li r3, 0xa
/* 8004FA7C 0004C9BC  38 00 00 00 */	li r0, 0
/* 8004FA80 0004C9C0  98 7F 00 02 */	stb r3, 2(r31)
/* 8004FA84 0004C9C4  38 77 00 00 */	addi r3, r23, 0
/* 8004FA88 0004C9C8  38 9F 00 00 */	addi r4, r31, 0
/* 8004FA8C 0004C9CC  80 F7 00 00 */	lwz r7, 0(r23)
/* 8004FA90 0004C9D0  38 B8 00 00 */	addi r5, r24, 0
/* 8004FA94 0004C9D4  38 D9 00 00 */	addi r6, r25, 0
/* 8004FA98 0004C9D8  81 27 00 00 */	lwz r9, 0(r7)
/* 8004FA9C 0004C9DC  38 FA 00 00 */	addi r7, r26, 0
/* 8004FAA0 0004C9E0  39 1B 00 00 */	addi r8, r27, 0
/* 8004FAA4 0004C9E4  81 69 01 84 */	lwz r11, 0x184(r9)
/* 8004FAA8 0004C9E8  39 3C 00 00 */	addi r9, r28, 0
/* 8004FAAC 0004C9EC  39 5D 00 00 */	addi r10, r29, 0
/* 8004FAB0 0004C9F0  98 0B 00 02 */	stb r0, 2(r11)
/* 8004FAB4 0004C9F4  4B FF F8 0D */	bl initSoundParameter__8JAIEntryFP8JAISoundPP8JAISoundP8JAIActorUlUlUcPv
lbl_8004FAB8:
/* 8004FAB8 0004C9F8  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 8004FABC 0004C9FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8004FAC0 0004CA00  38 21 00 50 */	addi r1, r1, 0x50
/* 8004FAC4 0004CA04  7C 08 03 A6 */	mtlr r0
/* 8004FAC8 0004CA08  4E 80 00 20 */	blr 
