.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global searchF__11TObjManagerFUsPCc
searchF__11TObjManagerFUsPCc:
/* 80115C5C 00112B9C  7C 08 02 A6 */	mflr r0
/* 80115C60 00112BA0  90 01 00 04 */	stw r0, 4(r1)
/* 80115C64 00112BA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80115C68 00112BA8  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80115C6C 00112BAC  3B 63 00 00 */	addi r27, r3, 0
/* 80115C70 00112BB0  3B 84 00 00 */	addi r28, r4, 0
/* 80115C74 00112BB4  3B A5 00 00 */	addi r29, r5, 0
/* 80115C78 00112BB8  4B F2 EC 39 */	bl searchF__Q26JDrama8TNameRefFUsPCc
/* 80115C7C 00112BBC  28 03 00 00 */	cmplwi r3, 0
/* 80115C80 00112BC0  41 82 00 08 */	beq lbl_80115C88
/* 80115C84 00112BC4  48 00 00 54 */	b lbl_80115CD8
lbl_80115C88:
/* 80115C88 00112BC8  3B C0 00 00 */	li r30, 0
/* 80115C8C 00112BCC  3B E0 00 00 */	li r31, 0
/* 80115C90 00112BD0  48 00 00 38 */	b lbl_80115CC8
lbl_80115C94:
/* 80115C94 00112BD4  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 80115C98 00112BD8  38 9C 00 00 */	addi r4, r28, 0
/* 80115C9C 00112BDC  38 BD 00 00 */	addi r5, r29, 0
/* 80115CA0 00112BE0  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80115CA4 00112BE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80115CA8 00112BE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80115CAC 00112BEC  7D 88 03 A6 */	mtlr r12
/* 80115CB0 00112BF0  4E 80 00 21 */	blrl 
/* 80115CB4 00112BF4  28 03 00 00 */	cmplwi r3, 0
/* 80115CB8 00112BF8  41 82 00 08 */	beq lbl_80115CC0
/* 80115CBC 00112BFC  48 00 00 1C */	b lbl_80115CD8
lbl_80115CC0:
/* 80115CC0 00112C00  3B DE 00 01 */	addi r30, r30, 1
/* 80115CC4 00112C04  3B FF 00 04 */	addi r31, r31, 4
lbl_80115CC8:
/* 80115CC8 00112C08  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 80115CCC 00112C0C  7C 1E 00 00 */	cmpw r30, r0
/* 80115CD0 00112C10  41 80 FF C4 */	blt lbl_80115C94
/* 80115CD4 00112C14  38 60 00 00 */	li r3, 0
lbl_80115CD8:
/* 80115CD8 00112C18  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80115CDC 00112C1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80115CE0 00112C20  38 21 00 30 */	addi r1, r1, 0x30
/* 80115CE4 00112C24  7C 08 03 A6 */	mtlr r0
/* 80115CE8 00112C28  4E 80 00 20 */	blr 

.global getModelDataKeeper__11TObjManagerFv
getModelDataKeeper__11TObjManagerFv:
/* 80115CEC 00112C2C  7C 08 02 A6 */	mflr r0
/* 80115CF0 00112C30  90 01 00 04 */	stw r0, 4(r1)
/* 80115CF4 00112C34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80115CF8 00112C38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80115CFC 00112C3C  7C 7F 1B 78 */	mr r31, r3
/* 80115D00 00112C40  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80115D04 00112C44  28 00 00 00 */	cmplwi r0, 0
/* 80115D08 00112C48  40 82 00 18 */	bne lbl_80115D20
/* 80115D0C 00112C4C  7F E3 FB 78 */	mr r3, r31
/* 80115D10 00112C50  81 9F 00 00 */	lwz r12, 0(r31)
/* 80115D14 00112C54  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80115D18 00112C58  7D 88 03 A6 */	mtlr r12
/* 80115D1C 00112C5C  4E 80 00 21 */	blrl 
lbl_80115D20:
/* 80115D20 00112C60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80115D24 00112C64  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80115D28 00112C68  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80115D2C 00112C6C  7C 08 03 A6 */	mtlr r0
/* 80115D30 00112C70  38 21 00 18 */	addi r1, r1, 0x18
/* 80115D34 00112C74  4E 80 00 20 */	blr 

.global createAnmData__11TObjManagerFv
createAnmData__11TObjManagerFv:
/* 80115D38 00112C78  7C 08 02 A6 */	mflr r0
/* 80115D3C 00112C7C  90 01 00 04 */	stw r0, 4(r1)
/* 80115D40 00112C80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80115D44 00112C84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80115D48 00112C88  3B E3 00 00 */	addi r31, r3, 0
/* 80115D4C 00112C8C  38 60 00 4C */	li r3, 0x4c
/* 80115D50 00112C90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80115D54 00112C94  4B EF 6B 5D */	bl __nw__FUl
/* 80115D58 00112C98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80115D5C 00112C9C  41 82 00 0C */	beq lbl_80115D68
/* 80115D60 00112CA0  7F C3 F3 78 */	mr r3, r30
/* 80115D64 00112CA4  4B FC 20 A1 */	bl __ct__13MActorAnmDataFv
lbl_80115D68:
/* 80115D68 00112CA8  93 DF 00 20 */	stw r30, 0x20(r31)
/* 80115D6C 00112CAC  38 A0 00 00 */	li r5, 0
/* 80115D70 00112CB0  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80115D74 00112CB4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80115D78 00112CB8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80115D7C 00112CBC  4B FC 19 E1 */	bl init__13MActorAnmDataFPCcPPCc
/* 80115D80 00112CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80115D84 00112CC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80115D88 00112CC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80115D8C 00112CCC  7C 08 03 A6 */	mtlr r0
/* 80115D90 00112CD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80115D94 00112CD4  4E 80 00 20 */	blr 

.global createModelData__11TObjManagerFv
createModelData__11TObjManagerFv:
/* 80115D98 00112CD8  7C 08 02 A6 */	mflr r0
/* 80115D9C 00112CDC  3C 80 80 38 */	lis r4, entry$1734@ha
/* 80115DA0 00112CE0  90 01 00 04 */	stw r0, 4(r1)
/* 80115DA4 00112CE4  38 84 A2 04 */	addi r4, r4, entry$1734@l
/* 80115DA8 00112CE8  94 21 FF F8 */	stwu r1, -8(r1)
/* 80115DAC 00112CEC  81 83 00 00 */	lwz r12, 0(r3)
/* 80115DB0 00112CF0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80115DB4 00112CF4  7D 88 03 A6 */	mtlr r12
/* 80115DB8 00112CF8  4E 80 00 21 */	blrl 
/* 80115DBC 00112CFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80115DC0 00112D00  38 21 00 08 */	addi r1, r1, 8
/* 80115DC4 00112D04  7C 08 03 A6 */	mtlr r0
/* 80115DC8 00112D08  4E 80 00 20 */	blr 

.global createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc:
/* 80115DCC 00112D0C  7C 08 02 A6 */	mflr r0
/* 80115DD0 00112D10  90 01 00 04 */	stw r0, 4(r1)
/* 80115DD4 00112D14  38 00 00 00 */	li r0, 0
/* 80115DD8 00112D18  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80115DDC 00112D1C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80115DE0 00112D20  3B E4 00 00 */	addi r31, r4, 0
/* 80115DE4 00112D24  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80115DE8 00112D28  3B C3 00 00 */	addi r30, r3, 0
/* 80115DEC 00112D2C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80115DF0 00112D30  93 81 00 18 */	stw r28, 0x18(r1)
/* 80115DF4 00112D34  3B 85 00 00 */	addi r28, r5, 0
/* 80115DF8 00112D38  90 03 00 28 */	stw r0, 0x28(r3)
/* 80115DFC 00112D3C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80115E00 00112D40  48 00 00 28 */	b lbl_80115E28
lbl_80115E04:
/* 80115E04 00112D44  80 03 00 08 */	lwz r0, 8(r3)
/* 80115E08 00112D48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80115E0C 00112D4C  41 82 00 10 */	beq lbl_80115E1C
/* 80115E10 00112D50  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80115E14 00112D54  38 03 00 01 */	addi r0, r3, 1
/* 80115E18 00112D58  90 1E 00 2C */	stw r0, 0x2c(r30)
lbl_80115E1C:
/* 80115E1C 00112D5C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80115E20 00112D60  38 03 00 01 */	addi r0, r3, 1
/* 80115E24 00112D64  90 1E 00 28 */	stw r0, 0x28(r30)
lbl_80115E28:
/* 80115E28 00112D68  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80115E2C 00112D6C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80115E30 00112D70  7C 7F 02 14 */	add r3, r31, r0
/* 80115E34 00112D74  80 03 00 00 */	lwz r0, 0(r3)
/* 80115E38 00112D78  28 00 00 00 */	cmplwi r0, 0
/* 80115E3C 00112D7C  40 82 FF C8 */	bne lbl_80115E04
/* 80115E40 00112D80  38 60 00 14 */	li r3, 0x14
/* 80115E44 00112D84  4B EF 6A 6D */	bl __nw__FUl
/* 80115E48 00112D88  7C 7D 1B 79 */	or. r29, r3, r3
/* 80115E4C 00112D8C  41 82 00 10 */	beq lbl_80115E5C
/* 80115E50 00112D90  38 7D 00 00 */	addi r3, r29, 0
/* 80115E54 00112D94  38 9C 00 00 */	addi r4, r28, 0
/* 80115E58 00112D98  48 00 0D 21 */	bl __ct__16TModelDataKeeperFPCc
lbl_80115E5C:
/* 80115E5C 00112D9C  93 BE 00 24 */	stw r29, 0x24(r30)
/* 80115E60 00112DA0  3B 80 00 00 */	li r28, 0
/* 80115E64 00112DA4  3B A0 00 00 */	li r29, 0
/* 80115E68 00112DA8  48 00 00 20 */	b lbl_80115E88
lbl_80115E6C:
/* 80115E6C 00112DAC  7C BF EA 14 */	add r5, r31, r29
/* 80115E70 00112DB0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80115E74 00112DB4  80 85 00 00 */	lwz r4, 0(r5)
/* 80115E78 00112DB8  80 A5 00 04 */	lwz r5, 4(r5)
/* 80115E7C 00112DBC  48 00 0E D9 */	bl createAndKeepData__16TModelDataKeeperFPCcUl
/* 80115E80 00112DC0  3B 9C 00 01 */	addi r28, r28, 1
/* 80115E84 00112DC4  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80115E88:
/* 80115E88 00112DC8  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80115E8C 00112DCC  7C 1C 00 00 */	cmpw r28, r0
/* 80115E90 00112DD0  41 80 FF DC */	blt lbl_80115E6C
/* 80115E94 00112DD4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80115E98 00112DD8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80115E9C 00112DDC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80115EA0 00112DE0  7C 08 03 A6 */	mtlr r0
/* 80115EA4 00112DE4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80115EA8 00112DE8  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80115EAC 00112DEC  38 21 00 28 */	addi r1, r1, 0x28
/* 80115EB0 00112DF0  4E 80 00 20 */	blr 

.global createModelDataArray__11TObjManagerFPC19TModelDataLoadEntry
createModelDataArray__11TObjManagerFPC19TModelDataLoadEntry:
/* 80115EB4 00112DF4  7C 08 02 A6 */	mflr r0
/* 80115EB8 00112DF8  90 01 00 04 */	stw r0, 4(r1)
/* 80115EBC 00112DFC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80115EC0 00112E00  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 80115EC4 00112E04  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80115EC8 00112E08  4B FF FF 05 */	bl createModelDataArrayBase__11TObjManagerFPC19TModelDataLoadEntryPCc
/* 80115ECC 00112E0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80115ED0 00112E10  38 21 00 08 */	addi r1, r1, 8
/* 80115ED4 00112E14  7C 08 03 A6 */	mtlr r0
/* 80115ED8 00112E18  4E 80 00 20 */	blr 

.global perform__11TObjManagerFUlPQ26JDrama9TGraphics
perform__11TObjManagerFUlPQ26JDrama9TGraphics:
/* 80115EDC 00112E1C  7C 08 02 A6 */	mflr r0
/* 80115EE0 00112E20  90 01 00 04 */	stw r0, 4(r1)
/* 80115EE4 00112E24  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80115EE8 00112E28  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 80115EEC 00112E2C  7C 7B 1B 78 */	mr r27, r3
/* 80115EF0 00112E30  3B 84 00 00 */	addi r28, r4, 0
/* 80115EF4 00112E34  3B A5 00 00 */	addi r29, r5, 0
/* 80115EF8 00112E38  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80115EFC 00112E3C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80115F00 00112E40  41 82 00 48 */	beq lbl_80115F48
/* 80115F04 00112E44  38 00 00 FF */	li r0, 0xff
/* 80115F08 00112E48  83 CD 98 38 */	lwz r30, _instance__8TTimeRec-_SDA_BASE_(r13)
/* 80115F0C 00112E4C  98 01 00 34 */	stb r0, 0x34(r1)
/* 80115F10 00112E50  28 1E 00 00 */	cmplwi r30, 0
/* 80115F14 00112E54  98 01 00 35 */	stb r0, 0x35(r1)
/* 80115F18 00112E58  98 01 00 36 */	stb r0, 0x36(r1)
/* 80115F1C 00112E5C  98 01 00 37 */	stb r0, 0x37(r1)
/* 80115F20 00112E60  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80115F24 00112E64  41 82 00 24 */	beq lbl_80115F48
/* 80115F28 00112E68  4B F7 DE E9 */	bl OSGetTick
/* 80115F2C 00112E6C  80 1E 08 14 */	lwz r0, 0x814(r30)
/* 80115F30 00112E70  38 83 00 00 */	addi r4, r3, 0
/* 80115F34 00112E74  38 BF 00 00 */	addi r5, r31, 0
/* 80115F38 00112E78  1C 60 04 08 */	mulli r3, r0, 0x408
/* 80115F3C 00112E7C  38 63 00 04 */	addi r3, r3, 4
/* 80115F40 00112E80  7C 7E 1A 14 */	add r3, r30, r3
/* 80115F44 00112E84  4B FE 6B 15 */	bl append__10TTimeArrayFUlUl
lbl_80115F48:
/* 80115F48 00112E88  3B C0 00 00 */	li r30, 0
/* 80115F4C 00112E8C  3B E0 00 00 */	li r31, 0
/* 80115F50 00112E90  48 00 00 20 */	b lbl_80115F70
lbl_80115F54:
/* 80115F54 00112E94  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 80115F58 00112E98  38 9C 00 00 */	addi r4, r28, 0
/* 80115F5C 00112E9C  38 BD 00 00 */	addi r5, r29, 0
/* 80115F60 00112EA0  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80115F64 00112EA4  4B F3 10 09 */	bl testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
/* 80115F68 00112EA8  3B DE 00 01 */	addi r30, r30, 1
/* 80115F6C 00112EAC  3B FF 00 04 */	addi r31, r31, 4
lbl_80115F70:
/* 80115F70 00112EB0  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 80115F74 00112EB4  7C 1E 00 00 */	cmpw r30, r0
/* 80115F78 00112EB8  41 80 FF DC */	blt lbl_80115F54
/* 80115F7C 00112EBC  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 80115F80 00112EC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80115F84 00112EC4  41 82 00 30 */	beq lbl_80115FB4
/* 80115F88 00112EC8  83 CD 98 38 */	lwz r30, _instance__8TTimeRec-_SDA_BASE_(r13)
/* 80115F8C 00112ECC  28 1E 00 00 */	cmplwi r30, 0
/* 80115F90 00112ED0  41 82 00 24 */	beq lbl_80115FB4
/* 80115F94 00112ED4  4B F7 DE 7D */	bl OSGetTick
/* 80115F98 00112ED8  80 1E 08 14 */	lwz r0, 0x814(r30)
/* 80115F9C 00112EDC  38 83 00 00 */	addi r4, r3, 0
/* 80115FA0 00112EE0  38 A0 00 00 */	li r5, 0
/* 80115FA4 00112EE4  1C 60 04 08 */	mulli r3, r0, 0x408
/* 80115FA8 00112EE8  38 63 00 04 */	addi r3, r3, 4
/* 80115FAC 00112EEC  7C 7E 1A 14 */	add r3, r30, r3
/* 80115FB0 00112EF0  4B FE 6A A9 */	bl append__10TTimeArrayFUlUl
lbl_80115FB4:
/* 80115FB4 00112EF4  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 80115FB8 00112EF8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80115FBC 00112EFC  38 21 00 50 */	addi r1, r1, 0x50
/* 80115FC0 00112F00  7C 08 03 A6 */	mtlr r0
/* 80115FC4 00112F04  4E 80 00 20 */	blr 

.global getMActorAnmData__11TObjManagerFv
getMActorAnmData__11TObjManagerFv:
/* 80115FC8 00112F08  7C 08 02 A6 */	mflr r0
/* 80115FCC 00112F0C  90 01 00 04 */	stw r0, 4(r1)
/* 80115FD0 00112F10  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80115FD4 00112F14  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80115FD8 00112F18  7C 7F 1B 78 */	mr r31, r3
/* 80115FDC 00112F1C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80115FE0 00112F20  28 00 00 00 */	cmplwi r0, 0
/* 80115FE4 00112F24  40 82 00 18 */	bne lbl_80115FFC
/* 80115FE8 00112F28  7F E3 FB 78 */	mr r3, r31
/* 80115FEC 00112F2C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80115FF0 00112F30  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80115FF4 00112F34  7D 88 03 A6 */	mtlr r12
/* 80115FF8 00112F38  4E 80 00 21 */	blrl 
lbl_80115FFC:
/* 80115FFC 00112F3C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80116000 00112F40  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80116004 00112F44  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80116008 00112F48  7C 08 03 A6 */	mtlr r0
/* 8011600C 00112F4C  38 21 00 18 */	addi r1, r1, 0x18
/* 80116010 00112F50  4E 80 00 20 */	blr 

.global load__11TObjManagerFR20JSUMemoryInputStream
load__11TObjManagerFR20JSUMemoryInputStream:
/* 80116014 00112F54  7C 08 02 A6 */	mflr r0
/* 80116018 00112F58  90 01 00 04 */	stw r0, 4(r1)
/* 8011601C 00112F5C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80116020 00112F60  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 80116024 00112F64  93 C1 01 38 */	stw r30, 0x138(r1)
/* 80116028 00112F68  3B C4 00 00 */	addi r30, r4, 0
/* 8011602C 00112F6C  93 A1 01 34 */	stw r29, 0x134(r1)
/* 80116030 00112F70  3B A3 00 00 */	addi r29, r3, 0
/* 80116034 00112F74  4B F2 E8 1D */	bl load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
/* 80116038 00112F78  38 7E 00 00 */	addi r3, r30, 0
/* 8011603C 00112F7C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80116040 00112F80  38 A0 01 00 */	li r5, 0x100
/* 80116044 00112F84  4B EF 86 79 */	bl readString__14JSUInputStreamFPcUs
/* 80116048 00112F88  80 8D 8E E0 */	lwz r4, instance__Q26JDrama11TNameRefGen-_SDA_BASE_(r13)
/* 8011604C 00112F8C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80116050 00112F90  83 E4 00 04 */	lwz r31, 4(r4)
/* 80116054 00112F94  4B F2 E6 39 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80116058 00112F98  81 9F 00 00 */	lwz r12, 0(r31)
/* 8011605C 00112F9C  38 83 00 00 */	addi r4, r3, 0
/* 80116060 00112FA0  38 7F 00 00 */	addi r3, r31, 0
/* 80116064 00112FA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80116068 00112FA8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8011606C 00112FAC  7D 88 03 A6 */	mtlr r12
/* 80116070 00112FB0  4E 80 00 21 */	blrl 
/* 80116074 00112FB4  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 80116078 00112FB8  38 7E 00 00 */	addi r3, r30, 0
/* 8011607C 00112FBC  38 81 00 28 */	addi r4, r1, 0x28
/* 80116080 00112FC0  38 A0 00 04 */	li r5, 4
/* 80116084 00112FC4  4B EF 85 0D */	bl read__14JSUInputStreamFPvl
/* 80116088 00112FC8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8011608C 00112FCC  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80116090 00112FD0  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80116094 00112FD4  54 03 10 3A */	slwi r3, r0, 2
/* 80116098 00112FD8  4B EF 69 19 */	bl __nwa__FUl
/* 8011609C 00112FDC  90 7D 00 18 */	stw r3, 0x18(r29)
/* 801160A0 00112FE0  80 01 01 44 */	lwz r0, 0x144(r1)
/* 801160A4 00112FE4  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 801160A8 00112FE8  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 801160AC 00112FEC  7C 08 03 A6 */	mtlr r0
/* 801160B0 00112FF0  83 A1 01 34 */	lwz r29, 0x134(r1)
/* 801160B4 00112FF4  38 21 01 40 */	addi r1, r1, 0x140
/* 801160B8 00112FF8  4E 80 00 20 */	blr 

.global manageObj__11TObjManagerFP9THitActor
manageObj__11TObjManagerFP9THitActor:
/* 801160BC 00112FFC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801160C0 00113000  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 801160C4 00113004  54 00 10 3A */	slwi r0, r0, 2
/* 801160C8 00113008  7C 85 01 2E */	stwx r4, r5, r0
/* 801160CC 0011300C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801160D0 00113010  38 04 00 01 */	addi r0, r4, 1
/* 801160D4 00113014  90 03 00 14 */	stw r0, 0x14(r3)
/* 801160D8 00113018  4E 80 00 20 */	blr 

.global __ct__11TObjManagerFPCc
__ct__11TObjManagerFPCc:
/* 801160DC 0011301C  7C 08 02 A6 */	mflr r0
/* 801160E0 00113020  3C A0 80 3B */	lis r5, __vt__Q26JDrama8TNameRef@ha
/* 801160E4 00113024  90 01 00 04 */	stw r0, 4(r1)
/* 801160E8 00113028  38 05 A8 60 */	addi r0, r5, __vt__Q26JDrama8TNameRef@l
/* 801160EC 0011302C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801160F0 00113030  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801160F4 00113034  3B E3 00 00 */	addi r31, r3, 0
/* 801160F8 00113038  90 03 00 00 */	stw r0, 0(r3)
/* 801160FC 0011303C  7C 83 23 78 */	mr r3, r4
/* 80116100 00113040  90 9F 00 04 */	stw r4, 4(r31)
/* 80116104 00113044  4B F2 E5 89 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80116108 00113048  B0 7F 00 08 */	sth r3, 8(r31)
/* 8011610C 0011304C  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 80116110 00113050  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 80116114 00113054  90 1F 00 00 */	stw r0, 0(r31)
/* 80116118 00113058  38 80 00 00 */	li r4, 0
/* 8011611C 0011305C  3C 60 80 3B */	lis r3, __vt__11TObjManager@ha
/* 80116120 00113060  B0 9F 00 0C */	sth r4, 0xc(r31)
/* 80116124 00113064  38 03 4E A8 */	addi r0, r3, __vt__11TObjManager@l
/* 80116128 00113068  38 7F 00 00 */	addi r3, r31, 0
/* 8011612C 0011306C  90 1F 00 00 */	stw r0, 0(r31)
/* 80116130 00113070  90 9F 00 10 */	stw r4, 0x10(r31)
/* 80116134 00113074  90 9F 00 14 */	stw r4, 0x14(r31)
/* 80116138 00113078  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8011613C 0011307C  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 80116140 00113080  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80116144 00113084  90 9F 00 24 */	stw r4, 0x24(r31)
/* 80116148 00113088  90 9F 00 28 */	stw r4, 0x28(r31)
/* 8011614C 0011308C  90 9F 00 2C */	stw r4, 0x2c(r31)
/* 80116150 00113090  90 9F 00 30 */	stw r4, 0x30(r31)
/* 80116154 00113094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80116158 00113098  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011615C 0011309C  38 21 00 20 */	addi r1, r1, 0x20
/* 80116160 001130A0  7C 08 03 A6 */	mtlr r0
/* 80116164 001130A4  4E 80 00 20 */	blr 

.global getRes__9TObjCharaCFPCc
getRes__9TObjCharaCFPCc:
/* 80116168 001130A8  7C 08 02 A6 */	mflr r0
/* 8011616C 001130AC  38 E4 00 00 */	addi r7, r4, 0
/* 80116170 001130B0  90 01 00 04 */	stw r0, 4(r1)
/* 80116174 001130B4  4C C6 31 82 */	crclr 6
/* 80116178 001130B8  38 80 01 00 */	li r4, 0x100
/* 8011617C 001130BC  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80116180 001130C0  38 A2 96 E8 */	addi r5, r2, $$21841-_SDA2_BASE_
/* 80116184 001130C4  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80116188 001130C8  38 61 00 10 */	addi r3, r1, 0x10
/* 8011618C 001130CC  4B F6 DF 39 */	bl snprintf
/* 80116190 001130D0  38 61 00 10 */	addi r3, r1, 0x10
/* 80116194 001130D4  4B EF 5B 29 */	bl getGlbResource__13JKRFileLoaderFPCc
/* 80116198 001130D8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8011619C 001130DC  38 21 01 10 */	addi r1, r1, 0x110
/* 801161A0 001130E0  7C 08 03 A6 */	mtlr r0
/* 801161A4 001130E4  4E 80 00 20 */	blr 

.global __dt__9TObjCharaFv
__dt__9TObjCharaFv:
/* 801161A8 001130E8  7C 08 02 A6 */	mflr r0
/* 801161AC 001130EC  90 01 00 04 */	stw r0, 4(r1)
/* 801161B0 001130F0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801161B4 001130F4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801161B8 001130F8  3B E4 00 00 */	addi r31, r4, 0
/* 801161BC 001130FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801161C0 00113100  7C 7E 1B 79 */	or. r30, r3, r3
/* 801161C4 00113104  41 82 00 3C */	beq lbl_80116200
/* 801161C8 00113108  3C 60 80 3B */	lis r3, __vt__9TObjChara@ha
/* 801161CC 0011310C  38 03 4E D8 */	addi r0, r3, __vt__9TObjChara@l
/* 801161D0 00113110  90 1E 00 00 */	stw r0, 0(r30)
/* 801161D4 00113114  41 82 00 1C */	beq lbl_801161F0
/* 801161D8 00113118  3C 60 80 3B */	lis r3, __vt__Q26JDrama10TCharacter@ha
/* 801161DC 0011311C  38 03 A4 50 */	addi r0, r3, __vt__Q26JDrama10TCharacter@l
/* 801161E0 00113120  90 1E 00 00 */	stw r0, 0(r30)
/* 801161E4 00113124  38 7E 00 00 */	addi r3, r30, 0
/* 801161E8 00113128  38 80 00 00 */	li r4, 0
/* 801161EC 0011312C  4B F2 E6 11 */	bl __dt__Q26JDrama8TNameRefFv
lbl_801161F0:
/* 801161F0 00113130  7F E0 07 35 */	extsh. r0, r31
/* 801161F4 00113134  40 81 00 0C */	ble lbl_80116200
/* 801161F8 00113138  7F C3 F3 78 */	mr r3, r30
/* 801161FC 0011313C  4B EF 68 B5 */	bl __dl__FPv
lbl_80116200:
/* 80116200 00113140  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80116204 00113144  7F C3 F3 78 */	mr r3, r30
/* 80116208 00113148  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8011620C 0011314C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80116210 00113150  7C 08 03 A6 */	mtlr r0
/* 80116214 00113154  38 21 00 18 */	addi r1, r1, 0x18
/* 80116218 00113158  4E 80 00 20 */	blr 

.global load__9TObjCharaFR20JSUMemoryInputStream
load__9TObjCharaFR20JSUMemoryInputStream:
/* 8011621C 0011315C  7C 08 02 A6 */	mflr r0
/* 80116220 00113160  90 01 00 04 */	stw r0, 4(r1)
/* 80116224 00113164  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80116228 00113168  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8011622C 0011316C  3B E4 00 00 */	addi r31, r4, 0
/* 80116230 00113170  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80116234 00113174  3B C3 00 00 */	addi r30, r3, 0
/* 80116238 00113178  4B F2 E6 19 */	bl load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
/* 8011623C 0011317C  7F E3 FB 78 */	mr r3, r31
/* 80116240 00113180  4B EF 83 A9 */	bl readString__14JSUInputStreamFv
/* 80116244 00113184  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80116248 00113188  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8011624C 0011318C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80116250 00113190  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80116254 00113194  7C 08 03 A6 */	mtlr r0
/* 80116258 00113198  38 21 00 18 */	addi r1, r1, 0x18
/* 8011625C 0011319C  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
.global $$21490
$$21490:
	.incbin "baserom.dol", 0x377118, 0xC
.global $$21526
$$21526:
	.incbin "baserom.dol", 0x377124, 0x14
.global $$21598
$$21598:
	.incbin "baserom.dol", 0x377138, 0x30
.global $$21599
$$21599:
	.incbin "baserom.dol", 0x377168, 0x38
.global $$21600
$$21600:
	.incbin "baserom.dol", 0x3771A0, 0x34
.global $$21601
$$21601:
	.incbin "baserom.dol", 0x3771D4, 0x24
.global $$21735
$$21735:
	.incbin "baserom.dol", 0x3771F8, 0xC
.global entry$1734
entry$1734:
	.incbin "baserom.dol", 0x377204, 0x1C

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__11TObjManager
__vt__11TObjManager:
	.incbin "baserom.dol", 0x3B1EA8, 0x30
.global __vt__9TObjChara
__vt__9TObjChara:
	.incbin "baserom.dol", 0x3B1ED8, 0x28

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
.global $$21841
$$21841:
	.incbin "baserom.dol", 0x3E53E8, 0x8
