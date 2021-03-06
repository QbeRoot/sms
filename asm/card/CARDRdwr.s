.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global BlockReadCallback
BlockReadCallback:
/* 800A1148 0009E088  7C 08 02 A6 */	mflr r0
/* 800A114C 0009E08C  90 01 00 04 */	stw r0, 4(r1)
/* 800A1150 0009E090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A1154 0009E094  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A1158 0009E098  3B E3 00 00 */	addi r31, r3, 0
/* 800A115C 0009E09C  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A1160 0009E0A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A1164 0009E0A4  1C BF 01 10 */	mulli r5, r31, 0x110
/* 800A1168 0009E0A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A116C 0009E0AC  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A1170 0009E0B0  7C 9D 23 79 */	or. r29, r4, r4
/* 800A1174 0009E0B4  7F C0 2A 14 */	add r30, r0, r5
/* 800A1178 0009E0B8  41 80 00 50 */	blt lbl_800A11C8
/* 800A117C 0009E0BC  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 800A1180 0009E0C0  38 03 02 00 */	addi r0, r3, 0x200
/* 800A1184 0009E0C4  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 800A1188 0009E0C8  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 800A118C 0009E0CC  38 03 02 00 */	addi r0, r3, 0x200
/* 800A1190 0009E0D0  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 800A1194 0009E0D4  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 800A1198 0009E0D8  38 03 02 00 */	addi r0, r3, 0x200
/* 800A119C 0009E0DC  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 800A11A0 0009E0E0  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 800A11A4 0009E0E4  34 03 FF FF */	addic. r0, r3, -1
/* 800A11A8 0009E0E8  90 1E 00 AC */	stw r0, 0xac(r30)
/* 800A11AC 0009E0EC  40 81 00 1C */	ble lbl_800A11C8
/* 800A11B0 0009E0F0  3C 60 80 0A */	lis r3, BlockReadCallback@ha
/* 800A11B4 0009E0F4  38 83 11 48 */	addi r4, r3, BlockReadCallback@l
/* 800A11B8 0009E0F8  38 7F 00 00 */	addi r3, r31, 0
/* 800A11BC 0009E0FC  4B FF E5 D5 */	bl __CARDReadSegment
/* 800A11C0 0009E100  7C 7D 1B 79 */	or. r29, r3, r3
/* 800A11C4 0009E104  40 80 00 44 */	bge lbl_800A1208
lbl_800A11C8:
/* 800A11C8 0009E108  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800A11CC 0009E10C  28 00 00 00 */	cmplwi r0, 0
/* 800A11D0 0009E110  40 82 00 10 */	bne lbl_800A11E0
/* 800A11D4 0009E114  38 7E 00 00 */	addi r3, r30, 0
/* 800A11D8 0009E118  38 9D 00 00 */	addi r4, r29, 0
/* 800A11DC 0009E11C  4B FF EA 71 */	bl __CARDPutControlBlock
lbl_800A11E0:
/* 800A11E0 0009E120  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 800A11E4 0009E124  28 00 00 00 */	cmplwi r0, 0
/* 800A11E8 0009E128  7C 0C 03 78 */	mr r12, r0
/* 800A11EC 0009E12C  41 82 00 1C */	beq lbl_800A1208
/* 800A11F0 0009E130  38 00 00 00 */	li r0, 0
/* 800A11F4 0009E134  7D 88 03 A6 */	mtlr r12
/* 800A11F8 0009E138  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 800A11FC 0009E13C  38 7F 00 00 */	addi r3, r31, 0
/* 800A1200 0009E140  38 9D 00 00 */	addi r4, r29, 0
/* 800A1204 0009E144  4E 80 00 21 */	blrl 
lbl_800A1208:
/* 800A1208 0009E148  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A120C 0009E14C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A1210 0009E150  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A1214 0009E154  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A1218 0009E158  38 21 00 20 */	addi r1, r1, 0x20
/* 800A121C 0009E15C  7C 08 03 A6 */	mtlr r0
/* 800A1220 0009E160  4E 80 00 20 */	blr 

.global __CARDRead
__CARDRead:
/* 800A1224 0009E164  7C 08 02 A6 */	mflr r0
/* 800A1228 0009E168  1D 23 01 10 */	mulli r9, r3, 0x110
/* 800A122C 0009E16C  90 01 00 04 */	stw r0, 4(r1)
/* 800A1230 0009E170  3D 00 80 3F */	lis r8, __CARDBlock@ha
/* 800A1234 0009E174  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A1238 0009E178  38 08 BF 60 */	addi r0, r8, __CARDBlock@l
/* 800A123C 0009E17C  7D 00 4A 14 */	add r8, r0, r9
/* 800A1240 0009E180  80 08 00 00 */	lwz r0, 0(r8)
/* 800A1244 0009E184  2C 00 00 00 */	cmpwi r0, 0
/* 800A1248 0009E188  40 82 00 0C */	bne lbl_800A1254
/* 800A124C 0009E18C  38 60 FF FD */	li r3, -3
/* 800A1250 0009E190  48 00 00 28 */	b lbl_800A1278
lbl_800A1254:
/* 800A1254 0009E194  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 800A1258 0009E198  54 A0 BA 7E */	srwi r0, r5, 9
/* 800A125C 0009E19C  3C A0 80 0A */	lis r5, BlockReadCallback@ha
/* 800A1260 0009E1A0  90 08 00 AC */	stw r0, 0xac(r8)
/* 800A1264 0009E1A4  38 05 11 48 */	addi r0, r5, BlockReadCallback@l
/* 800A1268 0009E1A8  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 800A126C 0009E1AC  7C 04 03 78 */	mr r4, r0
/* 800A1270 0009E1B0  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 800A1274 0009E1B4  4B FF E5 1D */	bl __CARDReadSegment
lbl_800A1278:
/* 800A1278 0009E1B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A127C 0009E1BC  38 21 00 08 */	addi r1, r1, 8
/* 800A1280 0009E1C0  7C 08 03 A6 */	mtlr r0
/* 800A1284 0009E1C4  4E 80 00 20 */	blr 

.global BlockWriteCallback
BlockWriteCallback:
/* 800A1288 0009E1C8  7C 08 02 A6 */	mflr r0
/* 800A128C 0009E1CC  90 01 00 04 */	stw r0, 4(r1)
/* 800A1290 0009E1D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A1294 0009E1D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A1298 0009E1D8  3B E3 00 00 */	addi r31, r3, 0
/* 800A129C 0009E1DC  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A12A0 0009E1E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A12A4 0009E1E4  1C BF 01 10 */	mulli r5, r31, 0x110
/* 800A12A8 0009E1E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A12AC 0009E1EC  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A12B0 0009E1F0  7C 9D 23 79 */	or. r29, r4, r4
/* 800A12B4 0009E1F4  7F C0 2A 14 */	add r30, r0, r5
/* 800A12B8 0009E1F8  41 80 00 50 */	blt lbl_800A1308
/* 800A12BC 0009E1FC  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 800A12C0 0009E200  38 03 00 80 */	addi r0, r3, 0x80
/* 800A12C4 0009E204  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 800A12C8 0009E208  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 800A12CC 0009E20C  38 03 00 80 */	addi r0, r3, 0x80
/* 800A12D0 0009E210  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 800A12D4 0009E214  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 800A12D8 0009E218  38 03 00 80 */	addi r0, r3, 0x80
/* 800A12DC 0009E21C  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 800A12E0 0009E220  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 800A12E4 0009E224  34 03 FF FF */	addic. r0, r3, -1
/* 800A12E8 0009E228  90 1E 00 AC */	stw r0, 0xac(r30)
/* 800A12EC 0009E22C  40 81 00 1C */	ble lbl_800A1308
/* 800A12F0 0009E230  3C 60 80 0A */	lis r3, BlockWriteCallback@ha
/* 800A12F4 0009E234  38 83 12 88 */	addi r4, r3, BlockWriteCallback@l
/* 800A12F8 0009E238  38 7F 00 00 */	addi r3, r31, 0
/* 800A12FC 0009E23C  4B FF E5 C9 */	bl __CARDWritePage
/* 800A1300 0009E240  7C 7D 1B 79 */	or. r29, r3, r3
/* 800A1304 0009E244  40 80 00 44 */	bge lbl_800A1348
lbl_800A1308:
/* 800A1308 0009E248  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 800A130C 0009E24C  28 00 00 00 */	cmplwi r0, 0
/* 800A1310 0009E250  40 82 00 10 */	bne lbl_800A1320
/* 800A1314 0009E254  38 7E 00 00 */	addi r3, r30, 0
/* 800A1318 0009E258  38 9D 00 00 */	addi r4, r29, 0
/* 800A131C 0009E25C  4B FF E9 31 */	bl __CARDPutControlBlock
lbl_800A1320:
/* 800A1320 0009E260  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 800A1324 0009E264  28 00 00 00 */	cmplwi r0, 0
/* 800A1328 0009E268  7C 0C 03 78 */	mr r12, r0
/* 800A132C 0009E26C  41 82 00 1C */	beq lbl_800A1348
/* 800A1330 0009E270  38 00 00 00 */	li r0, 0
/* 800A1334 0009E274  7D 88 03 A6 */	mtlr r12
/* 800A1338 0009E278  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 800A133C 0009E27C  38 7F 00 00 */	addi r3, r31, 0
/* 800A1340 0009E280  38 9D 00 00 */	addi r4, r29, 0
/* 800A1344 0009E284  4E 80 00 21 */	blrl 
lbl_800A1348:
/* 800A1348 0009E288  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A134C 0009E28C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A1350 0009E290  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A1354 0009E294  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A1358 0009E298  38 21 00 20 */	addi r1, r1, 0x20
/* 800A135C 0009E29C  7C 08 03 A6 */	mtlr r0
/* 800A1360 0009E2A0  4E 80 00 20 */	blr 

.global __CARDWrite
__CARDWrite:
/* 800A1364 0009E2A4  7C 08 02 A6 */	mflr r0
/* 800A1368 0009E2A8  1D 23 01 10 */	mulli r9, r3, 0x110
/* 800A136C 0009E2AC  90 01 00 04 */	stw r0, 4(r1)
/* 800A1370 0009E2B0  3D 00 80 3F */	lis r8, __CARDBlock@ha
/* 800A1374 0009E2B4  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A1378 0009E2B8  38 08 BF 60 */	addi r0, r8, __CARDBlock@l
/* 800A137C 0009E2BC  7D 00 4A 14 */	add r8, r0, r9
/* 800A1380 0009E2C0  80 08 00 00 */	lwz r0, 0(r8)
/* 800A1384 0009E2C4  2C 00 00 00 */	cmpwi r0, 0
/* 800A1388 0009E2C8  40 82 00 0C */	bne lbl_800A1394
/* 800A138C 0009E2CC  38 60 FF FD */	li r3, -3
/* 800A1390 0009E2D0  48 00 00 28 */	b lbl_800A13B8
lbl_800A1394:
/* 800A1394 0009E2D4  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 800A1398 0009E2D8  54 A0 C9 FE */	srwi r0, r5, 7
/* 800A139C 0009E2DC  3C A0 80 0A */	lis r5, BlockWriteCallback@ha
/* 800A13A0 0009E2E0  90 08 00 AC */	stw r0, 0xac(r8)
/* 800A13A4 0009E2E4  38 05 12 88 */	addi r0, r5, BlockWriteCallback@l
/* 800A13A8 0009E2E8  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 800A13AC 0009E2EC  7C 04 03 78 */	mr r4, r0
/* 800A13B0 0009E2F0  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 800A13B4 0009E2F4  4B FF E5 11 */	bl __CARDWritePage
lbl_800A13B8:
/* 800A13B8 0009E2F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A13BC 0009E2FC  38 21 00 08 */	addi r1, r1, 8
/* 800A13C0 0009E300  7C 08 03 A6 */	mtlr r0
/* 800A13C4 0009E304  4E 80 00 20 */	blr 
