.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global TRKInitializeEventQueue
TRKInitializeEventQueue:
/* 80087C68 00084BA8  7C 08 02 A6 */	mflr r0
/* 80087C6C 00084BAC  3C 60 80 3F */	lis r3, gTRKEventQueue@ha
/* 80087C70 00084BB0  90 01 00 04 */	stw r0, 4(r1)
/* 80087C74 00084BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80087C78 00084BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80087C7C 00084BBC  3B E3 90 E0 */	addi r31, r3, gTRKEventQueue@l
/* 80087C80 00084BC0  38 7F 00 00 */	addi r3, r31, 0
/* 80087C84 00084BC4  48 00 25 C9 */	bl TRKInitializeMutex
/* 80087C88 00084BC8  7F E3 FB 78 */	mr r3, r31
/* 80087C8C 00084BCC  48 00 25 C9 */	bl TRKAcquireMutex
/* 80087C90 00084BD0  38 60 00 00 */	li r3, 0
/* 80087C94 00084BD4  90 7F 00 04 */	stw r3, 4(r31)
/* 80087C98 00084BD8  38 00 01 00 */	li r0, 0x100
/* 80087C9C 00084BDC  90 7F 00 08 */	stw r3, 8(r31)
/* 80087CA0 00084BE0  7F E3 FB 78 */	mr r3, r31
/* 80087CA4 00084BE4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80087CA8 00084BE8  48 00 25 B5 */	bl TRKReleaseMutex
/* 80087CAC 00084BEC  38 60 00 00 */	li r3, 0
/* 80087CB0 00084BF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80087CB4 00084BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80087CB8 00084BF8  80 01 00 04 */	lwz r0, 4(r1)
/* 80087CBC 00084BFC  7C 08 03 A6 */	mtlr r0
/* 80087CC0 00084C00  4E 80 00 20 */	blr 

.global TRKCopyEvent
TRKCopyEvent:
/* 80087CC4 00084C04  7C 08 02 A6 */	mflr r0
/* 80087CC8 00084C08  38 A0 00 0C */	li r5, 0xc
/* 80087CCC 00084C0C  90 01 00 04 */	stw r0, 4(r1)
/* 80087CD0 00084C10  94 21 FF F8 */	stwu r1, -8(r1)
/* 80087CD4 00084C14  4B F7 B5 71 */	bl TRK_memcpy
/* 80087CD8 00084C18  38 21 00 08 */	addi r1, r1, 8
/* 80087CDC 00084C1C  80 01 00 04 */	lwz r0, 4(r1)
/* 80087CE0 00084C20  7C 08 03 A6 */	mtlr r0
/* 80087CE4 00084C24  4E 80 00 20 */	blr 

.global TRKGetNextEvent
TRKGetNextEvent:
/* 80087CE8 00084C28  7C 08 02 A6 */	mflr r0
/* 80087CEC 00084C2C  3C 80 80 3F */	lis r4, gTRKEventQueue@ha
/* 80087CF0 00084C30  90 01 00 04 */	stw r0, 4(r1)
/* 80087CF4 00084C34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80087CF8 00084C38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80087CFC 00084C3C  3B E4 90 E0 */	addi r31, r4, gTRKEventQueue@l
/* 80087D00 00084C40  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80087D04 00084C44  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80087D08 00084C48  3B A0 00 00 */	li r29, 0
/* 80087D0C 00084C4C  93 81 00 08 */	stw r28, 8(r1)
/* 80087D10 00084C50  3B 83 00 00 */	addi r28, r3, 0
/* 80087D14 00084C54  38 7F 00 00 */	addi r3, r31, 0
/* 80087D18 00084C58  48 00 25 3D */	bl TRKAcquireMutex
/* 80087D1C 00084C5C  3B DF 00 04 */	addi r30, r31, 4
/* 80087D20 00084C60  80 1F 00 04 */	lwz r0, 4(r31)
/* 80087D24 00084C64  2C 00 00 00 */	cmpwi r0, 0
/* 80087D28 00084C68  40 81 00 50 */	ble lbl_80087D78
/* 80087D2C 00084C6C  3B BF 00 08 */	addi r29, r31, 8
/* 80087D30 00084C70  80 1F 00 08 */	lwz r0, 8(r31)
/* 80087D34 00084C74  38 7C 00 00 */	addi r3, r28, 0
/* 80087D38 00084C78  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80087D3C 00084C7C  7C 9F 02 14 */	add r4, r31, r0
/* 80087D40 00084C80  38 84 00 0C */	addi r4, r4, 0xc
/* 80087D44 00084C84  4B FF FF 81 */	bl TRKCopyEvent
/* 80087D48 00084C88  80 7E 00 00 */	lwz r3, 0(r30)
/* 80087D4C 00084C8C  38 03 FF FF */	addi r0, r3, -1
/* 80087D50 00084C90  90 1E 00 00 */	stw r0, 0(r30)
/* 80087D54 00084C94  80 7D 00 00 */	lwz r3, 0(r29)
/* 80087D58 00084C98  38 03 00 01 */	addi r0, r3, 1
/* 80087D5C 00084C9C  90 1D 00 00 */	stw r0, 0(r29)
/* 80087D60 00084CA0  80 1D 00 00 */	lwz r0, 0(r29)
/* 80087D64 00084CA4  2C 00 00 02 */	cmpwi r0, 2
/* 80087D68 00084CA8  40 82 00 0C */	bne lbl_80087D74
/* 80087D6C 00084CAC  38 00 00 00 */	li r0, 0
/* 80087D70 00084CB0  90 1D 00 00 */	stw r0, 0(r29)
lbl_80087D74:
/* 80087D74 00084CB4  3B A0 00 01 */	li r29, 1
lbl_80087D78:
/* 80087D78 00084CB8  3C 60 80 3F */	lis r3, gTRKEventQueue@ha
/* 80087D7C 00084CBC  38 63 90 E0 */	addi r3, r3, gTRKEventQueue@l
/* 80087D80 00084CC0  48 00 24 DD */	bl TRKReleaseMutex
/* 80087D84 00084CC4  7F A3 EB 78 */	mr r3, r29
/* 80087D88 00084CC8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80087D8C 00084CCC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80087D90 00084CD0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80087D94 00084CD4  83 81 00 08 */	lwz r28, 8(r1)
/* 80087D98 00084CD8  38 21 00 18 */	addi r1, r1, 0x18
/* 80087D9C 00084CDC  80 01 00 04 */	lwz r0, 4(r1)
/* 80087DA0 00084CE0  7C 08 03 A6 */	mtlr r0
/* 80087DA4 00084CE4  4E 80 00 20 */	blr 

.global TRKPostEvent
TRKPostEvent:
/* 80087DA8 00084CE8  7C 08 02 A6 */	mflr r0
/* 80087DAC 00084CEC  3C 80 80 3F */	lis r4, gTRKEventQueue@ha
/* 80087DB0 00084CF0  90 01 00 04 */	stw r0, 4(r1)
/* 80087DB4 00084CF4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80087DB8 00084CF8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80087DBC 00084CFC  3B E3 00 00 */	addi r31, r3, 0
/* 80087DC0 00084D00  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80087DC4 00084D04  3B C4 90 E0 */	addi r30, r4, gTRKEventQueue@l
/* 80087DC8 00084D08  38 7E 00 00 */	addi r3, r30, 0
/* 80087DCC 00084D0C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80087DD0 00084D10  93 81 00 08 */	stw r28, 8(r1)
/* 80087DD4 00084D14  3B 80 00 00 */	li r28, 0
/* 80087DD8 00084D18  48 00 24 7D */	bl TRKAcquireMutex
/* 80087DDC 00084D1C  3B BE 00 04 */	addi r29, r30, 4
/* 80087DE0 00084D20  80 7E 00 04 */	lwz r3, 4(r30)
/* 80087DE4 00084D24  2C 03 00 02 */	cmpwi r3, 2
/* 80087DE8 00084D28  40 82 00 0C */	bne lbl_80087DF4
/* 80087DEC 00084D2C  3B 80 01 00 */	li r28, 0x100
/* 80087DF0 00084D30  48 00 00 68 */	b lbl_80087E58
lbl_80087DF4:
/* 80087DF4 00084D34  80 1E 00 08 */	lwz r0, 8(r30)
/* 80087DF8 00084D38  38 9F 00 00 */	addi r4, r31, 0
/* 80087DFC 00084D3C  7C 00 1A 14 */	add r0, r0, r3
/* 80087E00 00084D40  7C 03 0E 70 */	srawi r3, r0, 1
/* 80087E04 00084D44  7C 63 01 94 */	addze r3, r3
/* 80087E08 00084D48  54 63 08 3C */	slwi r3, r3, 1
/* 80087E0C 00084D4C  7C 63 00 10 */	subfc r3, r3, r0
/* 80087E10 00084D50  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80087E14 00084D54  7F FE 02 14 */	add r31, r30, r0
/* 80087E18 00084D58  38 7F 00 0C */	addi r3, r31, 0xc
/* 80087E1C 00084D5C  4B FF FE A9 */	bl TRKCopyEvent
/* 80087E20 00084D60  38 9E 00 24 */	addi r4, r30, 0x24
/* 80087E24 00084D64  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80087E28 00084D68  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80087E2C 00084D6C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80087E30 00084D70  38 03 00 01 */	addi r0, r3, 1
/* 80087E34 00084D74  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80087E38 00084D78  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80087E3C 00084D7C  28 00 01 00 */	cmplwi r0, 0x100
/* 80087E40 00084D80  40 80 00 0C */	bge lbl_80087E4C
/* 80087E44 00084D84  38 00 01 00 */	li r0, 0x100
/* 80087E48 00084D88  90 04 00 00 */	stw r0, 0(r4)
lbl_80087E4C:
/* 80087E4C 00084D8C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80087E50 00084D90  38 03 00 01 */	addi r0, r3, 1
/* 80087E54 00084D94  90 1D 00 00 */	stw r0, 0(r29)
lbl_80087E58:
/* 80087E58 00084D98  3C 60 80 3F */	lis r3, gTRKEventQueue@ha
/* 80087E5C 00084D9C  38 63 90 E0 */	addi r3, r3, gTRKEventQueue@l
/* 80087E60 00084DA0  48 00 23 FD */	bl TRKReleaseMutex
/* 80087E64 00084DA4  7F 83 E3 78 */	mr r3, r28
/* 80087E68 00084DA8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80087E6C 00084DAC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80087E70 00084DB0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80087E74 00084DB4  83 81 00 08 */	lwz r28, 8(r1)
/* 80087E78 00084DB8  38 21 00 18 */	addi r1, r1, 0x18
/* 80087E7C 00084DBC  80 01 00 04 */	lwz r0, 4(r1)
/* 80087E80 00084DC0  7C 08 03 A6 */	mtlr r0
/* 80087E84 00084DC4  4E 80 00 20 */	blr 

.global TRKConstructEvent
TRKConstructEvent:
/* 80087E88 00084DC8  98 83 00 00 */	stb r4, 0(r3)
/* 80087E8C 00084DCC  38 80 00 00 */	li r4, 0
/* 80087E90 00084DD0  38 00 FF FF */	li r0, -1
/* 80087E94 00084DD4  90 83 00 04 */	stw r4, 4(r3)
/* 80087E98 00084DD8  90 03 00 08 */	stw r0, 8(r3)
/* 80087E9C 00084DDC  4E 80 00 20 */	blr 

.global TRKDestructEvent
TRKDestructEvent:
/* 80087EA0 00084DE0  7C 08 02 A6 */	mflr r0
/* 80087EA4 00084DE4  90 01 00 04 */	stw r0, 4(r1)
/* 80087EA8 00084DE8  94 21 FF F8 */	stwu r1, -8(r1)
/* 80087EAC 00084DEC  80 63 00 08 */	lwz r3, 8(r3)
/* 80087EB0 00084DF0  48 00 03 19 */	bl TRKReleaseBuffer
/* 80087EB4 00084DF4  38 21 00 08 */	addi r1, r1, 8
/* 80087EB8 00084DF8  80 01 00 04 */	lwz r0, 4(r1)
/* 80087EBC 00084DFC  7C 08 03 A6 */	mtlr r0
/* 80087EC0 00084E00  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
.global gTRKEventQueue
gTRKEventQueue:
	.skip 0x28
