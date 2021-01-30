.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __CARDSeek
__CARDSeek:
/* 800A4210 000A1150  7C 08 02 A6 */	mflr r0
/* 800A4214 000A1154  90 01 00 04 */	stw r0, 4(r1)
/* 800A4218 000A1158  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A421C 000A115C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800A4220 000A1160  3B E6 00 00 */	addi r31, r6, 0
/* 800A4224 000A1164  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800A4228 000A1168  3B C5 00 00 */	addi r30, r5, 0
/* 800A422C 000A116C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800A4230 000A1170  3B A4 00 00 */	addi r29, r4, 0
/* 800A4234 000A1174  38 81 00 18 */	addi r4, r1, 0x18
/* 800A4238 000A1178  93 81 00 20 */	stw r28, 0x20(r1)
/* 800A423C 000A117C  7C 7C 1B 78 */	mr r28, r3
/* 800A4240 000A1180  80 63 00 00 */	lwz r3, 0(r3)
/* 800A4244 000A1184  4B FF B9 51 */	bl __CARDGetControlBlock
/* 800A4248 000A1188  2C 03 00 00 */	cmpwi r3, 0
/* 800A424C 000A118C  40 80 00 08 */	bge lbl_800A4254
/* 800A4250 000A1190  48 00 01 58 */	b lbl_800A43A8
lbl_800A4254:
/* 800A4254 000A1194  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 800A4258 000A1198  28 00 00 05 */	cmplwi r0, 5
/* 800A425C 000A119C  41 80 00 28 */	blt lbl_800A4284
/* 800A4260 000A11A0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800A4264 000A11A4  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 800A4268 000A11A8  7C 00 28 40 */	cmplw r0, r5
/* 800A426C 000A11AC  40 80 00 18 */	bge lbl_800A4284
/* 800A4270 000A11B0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 800A4274 000A11B4  80 1C 00 08 */	lwz r0, 8(r28)
/* 800A4278 000A11B8  7C 85 21 D6 */	mullw r4, r5, r4
/* 800A427C 000A11BC  7C 04 00 00 */	cmpw r4, r0
/* 800A4280 000A11C0  41 81 00 14 */	bgt lbl_800A4294
lbl_800A4284:
/* 800A4284 000A11C4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800A4288 000A11C8  38 80 FF 80 */	li r4, -128
/* 800A428C 000A11CC  4B FF B9 C1 */	bl __CARDPutControlBlock
/* 800A4290 000A11D0  48 00 01 18 */	b lbl_800A43A8
lbl_800A4294:
/* 800A4294 000A11D4  4B FF D4 9D */	bl __CARDGetDirBlock
/* 800A4298 000A11D8  80 1C 00 04 */	lwz r0, 4(r28)
/* 800A429C 000A11DC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 800A42A0 000A11E0  54 00 30 32 */	slwi r0, r0, 6
/* 800A42A4 000A11E4  7C 83 02 14 */	add r4, r3, r0
/* 800A42A8 000A11E8  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800A42AC 000A11EC  A0 04 00 38 */	lhz r0, 0x38(r4)
/* 800A42B0 000A11F0  7C 60 19 D6 */	mullw r3, r0, r3
/* 800A42B4 000A11F4  7C 03 F0 00 */	cmpw r3, r30
/* 800A42B8 000A11F8  40 81 00 10 */	ble lbl_800A42C8
/* 800A42BC 000A11FC  7C 1E EA 14 */	add r0, r30, r29
/* 800A42C0 000A1200  7C 03 00 00 */	cmpw r3, r0
/* 800A42C4 000A1204  40 80 00 14 */	bge lbl_800A42D8
lbl_800A42C8:
/* 800A42C8 000A1208  38 65 00 00 */	addi r3, r5, 0
/* 800A42CC 000A120C  38 80 FF F5 */	li r4, -11
/* 800A42D0 000A1210  4B FF B9 7D */	bl __CARDPutControlBlock
/* 800A42D4 000A1214  48 00 00 D4 */	b lbl_800A43A8
lbl_800A42D8:
/* 800A42D8 000A1218  93 85 00 C0 */	stw r28, 0xc0(r5)
/* 800A42DC 000A121C  93 BC 00 0C */	stw r29, 0xc(r28)
/* 800A42E0 000A1220  80 1C 00 08 */	lwz r0, 8(r28)
/* 800A42E4 000A1224  7C 1E 00 00 */	cmpw r30, r0
/* 800A42E8 000A1228  40 80 00 40 */	bge lbl_800A4328
/* 800A42EC 000A122C  38 00 00 00 */	li r0, 0
/* 800A42F0 000A1230  90 1C 00 08 */	stw r0, 8(r28)
/* 800A42F4 000A1234  A0 04 00 36 */	lhz r0, 0x36(r4)
/* 800A42F8 000A1238  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 800A42FC 000A123C  A0 9C 00 10 */	lhz r4, 0x10(r28)
/* 800A4300 000A1240  28 04 00 05 */	cmplwi r4, 5
/* 800A4304 000A1244  41 80 00 14 */	blt lbl_800A4318
/* 800A4308 000A1248  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800A430C 000A124C  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 800A4310 000A1250  7C 04 00 40 */	cmplw r4, r0
/* 800A4314 000A1254  41 80 00 14 */	blt lbl_800A4328
lbl_800A4318:
/* 800A4318 000A1258  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800A431C 000A125C  38 80 FF FA */	li r4, -6
/* 800A4320 000A1260  4B FF B9 2D */	bl __CARDPutControlBlock
/* 800A4324 000A1264  48 00 00 84 */	b lbl_800A43A8
lbl_800A4328:
/* 800A4328 000A1268  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800A432C 000A126C  4B FF D0 9D */	bl __CARDGetFatBlock
/* 800A4330 000A1270  48 00 00 4C */	b lbl_800A437C
lbl_800A4334:
/* 800A4334 000A1274  80 1C 00 08 */	lwz r0, 8(r28)
/* 800A4338 000A1278  7C 00 22 14 */	add r0, r0, r4
/* 800A433C 000A127C  90 1C 00 08 */	stw r0, 8(r28)
/* 800A4340 000A1280  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 800A4344 000A1284  54 00 08 3C */	slwi r0, r0, 1
/* 800A4348 000A1288  7C 03 02 2E */	lhzx r0, r3, r0
/* 800A434C 000A128C  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 800A4350 000A1290  A0 BC 00 10 */	lhz r5, 0x10(r28)
/* 800A4354 000A1294  28 05 00 05 */	cmplwi r5, 5
/* 800A4358 000A1298  41 80 00 14 */	blt lbl_800A436C
/* 800A435C 000A129C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800A4360 000A12A0  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 800A4364 000A12A4  7C 05 00 40 */	cmplw r5, r0
/* 800A4368 000A12A8  41 80 00 14 */	blt lbl_800A437C
lbl_800A436C:
/* 800A436C 000A12AC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800A4370 000A12B0  38 80 FF FA */	li r4, -6
/* 800A4374 000A12B4  4B FF B8 D9 */	bl __CARDPutControlBlock
/* 800A4378 000A12B8  48 00 00 30 */	b lbl_800A43A8
lbl_800A437C:
/* 800A437C 000A12BC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800A4380 000A12C0  80 BC 00 08 */	lwz r5, 8(r28)
/* 800A4384 000A12C4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800A4388 000A12C8  38 04 FF FF */	addi r0, r4, -1
/* 800A438C 000A12CC  7F C0 00 78 */	andc r0, r30, r0
/* 800A4390 000A12D0  7C 05 00 40 */	cmplw r5, r0
/* 800A4394 000A12D4  41 80 FF A0 */	blt lbl_800A4334
/* 800A4398 000A12D8  93 DC 00 08 */	stw r30, 8(r28)
/* 800A439C 000A12DC  38 60 00 00 */	li r3, 0
/* 800A43A0 000A12E0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800A43A4 000A12E4  90 1F 00 00 */	stw r0, 0(r31)
lbl_800A43A8:
/* 800A43A8 000A12E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A43AC 000A12EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800A43B0 000A12F0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800A43B4 000A12F4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800A43B8 000A12F8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800A43BC 000A12FC  38 21 00 30 */	addi r1, r1, 0x30
/* 800A43C0 000A1300  7C 08 03 A6 */	mtlr r0
/* 800A43C4 000A1304  4E 80 00 20 */	blr 

.global ReadCallback
ReadCallback:
/* 800A43C8 000A1308  7C 08 02 A6 */	mflr r0
/* 800A43CC 000A130C  90 01 00 04 */	stw r0, 4(r1)
/* 800A43D0 000A1310  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800A43D4 000A1314  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 800A43D8 000A1318  3B A3 00 00 */	addi r29, r3, 0
/* 800A43DC 000A131C  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A43E0 000A1320  1C BD 01 10 */	mulli r5, r29, 0x110
/* 800A43E4 000A1324  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A43E8 000A1328  7C 9E 23 79 */	or. r30, r4, r4
/* 800A43EC 000A132C  7F E0 2A 14 */	add r31, r0, r5
/* 800A43F0 000A1330  41 80 00 C8 */	blt lbl_800A44B8
/* 800A43F4 000A1334  83 9F 00 C0 */	lwz r28, 0xc0(r31)
/* 800A43F8 000A1338  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 800A43FC 000A133C  2C 04 00 00 */	cmpwi r4, 0
/* 800A4400 000A1340  40 80 00 0C */	bge lbl_800A440C
/* 800A4404 000A1344  3B C0 FF F2 */	li r30, -14
/* 800A4408 000A1348  48 00 00 B0 */	b lbl_800A44B8
lbl_800A440C:
/* 800A440C 000A134C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 800A4410 000A1350  80 DC 00 08 */	lwz r6, 8(r28)
/* 800A4414 000A1354  38 05 FF FF */	addi r0, r5, -1
/* 800A4418 000A1358  7C 03 00 F8 */	nor r3, r0, r0
/* 800A441C 000A135C  7C 06 2A 14 */	add r0, r6, r5
/* 800A4420 000A1360  7C 60 00 38 */	and r0, r3, r0
/* 800A4424 000A1364  7F 66 00 50 */	subf r27, r6, r0
/* 800A4428 000A1368  7C 1B 20 50 */	subf r0, r27, r4
/* 800A442C 000A136C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 800A4430 000A1370  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 800A4434 000A1374  2C 00 00 00 */	cmpwi r0, 0
/* 800A4438 000A1378  40 81 00 80 */	ble lbl_800A44B8
/* 800A443C 000A137C  7F E3 FB 78 */	mr r3, r31
/* 800A4440 000A1380  4B FF CF 89 */	bl __CARDGetFatBlock
/* 800A4444 000A1384  80 1C 00 08 */	lwz r0, 8(r28)
/* 800A4448 000A1388  7C 00 DA 14 */	add r0, r0, r27
/* 800A444C 000A138C  90 1C 00 08 */	stw r0, 8(r28)
/* 800A4450 000A1390  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 800A4454 000A1394  54 00 08 3C */	slwi r0, r0, 1
/* 800A4458 000A1398  7C 03 02 2E */	lhzx r0, r3, r0
/* 800A445C 000A139C  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 800A4460 000A13A0  A0 7C 00 10 */	lhz r3, 0x10(r28)
/* 800A4464 000A13A4  28 03 00 05 */	cmplwi r3, 5
/* 800A4468 000A13A8  41 80 00 10 */	blt lbl_800A4478
/* 800A446C 000A13AC  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 800A4470 000A13B0  7C 03 00 40 */	cmplw r3, r0
/* 800A4474 000A13B4  41 80 00 0C */	blt lbl_800A4480
lbl_800A4478:
/* 800A4478 000A13B8  3B C0 FF FA */	li r30, -6
/* 800A447C 000A13BC  48 00 00 3C */	b lbl_800A44B8
lbl_800A4480:
/* 800A4480 000A13C0  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 800A4484 000A13C4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800A4488 000A13C8  7C 05 00 00 */	cmpw r5, r0
/* 800A448C 000A13CC  40 80 00 08 */	bge lbl_800A4494
/* 800A4490 000A13D0  48 00 00 08 */	b lbl_800A4498
lbl_800A4494:
/* 800A4494 000A13D4  7C 05 03 78 */	mr r5, r0
lbl_800A4498:
/* 800A4498 000A13D8  7C 80 19 D6 */	mullw r4, r0, r3
/* 800A449C 000A13DC  80 DF 00 B4 */	lwz r6, 0xb4(r31)
/* 800A44A0 000A13E0  3C 60 80 0A */	lis r3, ReadCallback@ha
/* 800A44A4 000A13E4  38 E3 43 C8 */	addi r7, r3, ReadCallback@l
/* 800A44A8 000A13E8  38 7D 00 00 */	addi r3, r29, 0
/* 800A44AC 000A13EC  4B FF CD 79 */	bl __CARDRead
/* 800A44B0 000A13F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A44B4 000A13F4  40 80 00 30 */	bge lbl_800A44E4
lbl_800A44B8:
/* 800A44B8 000A13F8  83 7F 00 D0 */	lwz r27, 0xd0(r31)
/* 800A44BC 000A13FC  38 00 00 00 */	li r0, 0
/* 800A44C0 000A1400  38 7F 00 00 */	addi r3, r31, 0
/* 800A44C4 000A1404  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 800A44C8 000A1408  7F C4 F3 78 */	mr r4, r30
/* 800A44CC 000A140C  4B FF B7 81 */	bl __CARDPutControlBlock
/* 800A44D0 000A1410  39 9B 00 00 */	addi r12, r27, 0
/* 800A44D4 000A1414  7D 88 03 A6 */	mtlr r12
/* 800A44D8 000A1418  38 7D 00 00 */	addi r3, r29, 0
/* 800A44DC 000A141C  38 9E 00 00 */	addi r4, r30, 0
/* 800A44E0 000A1420  4E 80 00 21 */	blrl 
lbl_800A44E4:
/* 800A44E4 000A1424  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 800A44E8 000A1428  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800A44EC 000A142C  38 21 00 28 */	addi r1, r1, 0x28
/* 800A44F0 000A1430  7C 08 03 A6 */	mtlr r0
/* 800A44F4 000A1434  4E 80 00 20 */	blr 

.global CARDReadAsync
CARDReadAsync:
/* 800A44F8 000A1438  7C 08 02 A6 */	mflr r0
/* 800A44FC 000A143C  90 01 00 04 */	stw r0, 4(r1)
/* 800A4500 000A1440  54 C0 05 FF */	clrlwi. r0, r6, 0x17
/* 800A4504 000A1444  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800A4508 000A1448  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800A450C 000A144C  3B A3 00 00 */	addi r29, r3, 0
/* 800A4510 000A1450  3B C4 00 00 */	addi r30, r4, 0
/* 800A4514 000A1454  3B E5 00 00 */	addi r31, r5, 0
/* 800A4518 000A1458  3B 67 00 00 */	addi r27, r7, 0
/* 800A451C 000A145C  40 82 00 0C */	bne lbl_800A4528
/* 800A4520 000A1460  57 E0 05 FF */	clrlwi. r0, r31, 0x17
/* 800A4524 000A1464  41 82 00 0C */	beq lbl_800A4530
lbl_800A4528:
/* 800A4528 000A1468  38 60 FF 80 */	li r3, -128
/* 800A452C 000A146C  48 00 01 00 */	b lbl_800A462C
lbl_800A4530:
/* 800A4530 000A1470  38 7D 00 00 */	addi r3, r29, 0
/* 800A4534 000A1474  38 9F 00 00 */	addi r4, r31, 0
/* 800A4538 000A1478  38 A6 00 00 */	addi r5, r6, 0
/* 800A453C 000A147C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 800A4540 000A1480  4B FF FC D1 */	bl __CARDSeek
/* 800A4544 000A1484  2C 03 00 00 */	cmpwi r3, 0
/* 800A4548 000A1488  40 80 00 08 */	bge lbl_800A4550
/* 800A454C 000A148C  48 00 00 E0 */	b lbl_800A462C
lbl_800A4550:
/* 800A4550 000A1490  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 800A4554 000A1494  4B FF D1 DD */	bl __CARDGetDirBlock
/* 800A4558 000A1498  80 1D 00 04 */	lwz r0, 4(r29)
/* 800A455C 000A149C  54 00 30 32 */	slwi r0, r0, 6
/* 800A4560 000A14A0  7F 83 02 14 */	add r28, r3, r0
/* 800A4564 000A14A4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 800A4568 000A14A8  7F 84 E3 78 */	mr r4, r28
/* 800A456C 000A14AC  4B FF F6 79 */	bl __CARDAccess
/* 800A4570 000A14B0  38 83 00 00 */	addi r4, r3, 0
/* 800A4574 000A14B4  2C 04 FF F6 */	cmpwi r4, -10
/* 800A4578 000A14B8  40 82 00 10 */	bne lbl_800A4588
/* 800A457C 000A14BC  7F 83 E3 78 */	mr r3, r28
/* 800A4580 000A14C0  4B FF F6 FD */	bl __CARDIsPublic
/* 800A4584 000A14C4  7C 64 1B 78 */	mr r4, r3
lbl_800A4588:
/* 800A4588 000A14C8  2C 04 00 00 */	cmpwi r4, 0
/* 800A458C 000A14CC  40 80 00 10 */	bge lbl_800A459C
/* 800A4590 000A14D0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 800A4594 000A14D4  4B FF B6 B9 */	bl __CARDPutControlBlock
/* 800A4598 000A14D8  48 00 00 94 */	b lbl_800A462C
lbl_800A459C:
/* 800A459C 000A14DC  38 7E 00 00 */	addi r3, r30, 0
/* 800A45A0 000A14E0  38 9F 00 00 */	addi r4, r31, 0
/* 800A45A4 000A14E4  4B FE 99 D9 */	bl DCInvalidateRange
/* 800A45A8 000A14E8  28 1B 00 00 */	cmplwi r27, 0
/* 800A45AC 000A14EC  41 82 00 0C */	beq lbl_800A45B8
/* 800A45B0 000A14F0  7F 60 DB 78 */	mr r0, r27
/* 800A45B4 000A14F4  48 00 00 0C */	b lbl_800A45C0
lbl_800A45B8:
/* 800A45B8 000A14F8  3C 60 80 0A */	lis r3, __CARDDefaultApiCallback@ha
/* 800A45BC 000A14FC  38 03 EC 4C */	addi r0, r3, __CARDDefaultApiCallback@l
lbl_800A45C0:
/* 800A45C0 000A1500  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 800A45C4 000A1504  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 800A45C8 000A1508  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 800A45CC 000A150C  80 9D 00 08 */	lwz r4, 8(r29)
/* 800A45D0 000A1510  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 800A45D4 000A1514  38 05 FF FF */	addi r0, r5, -1
/* 800A45D8 000A1518  7C 88 00 38 */	and r8, r4, r0
/* 800A45DC 000A151C  7C 68 28 50 */	subf r3, r8, r5
/* 800A45E0 000A1520  7C 1F 18 00 */	cmpw r31, r3
/* 800A45E4 000A1524  40 80 00 08 */	bge lbl_800A45EC
/* 800A45E8 000A1528  7F E3 FB 78 */	mr r3, r31
lbl_800A45EC:
/* 800A45EC 000A152C  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 800A45F0 000A1530  3C 80 80 0A */	lis r4, ReadCallback@ha
/* 800A45F4 000A1534  3B E3 00 00 */	addi r31, r3, 0
/* 800A45F8 000A1538  80 7D 00 00 */	lwz r3, 0(r29)
/* 800A45FC 000A153C  7C 05 01 D6 */	mullw r0, r5, r0
/* 800A4600 000A1540  38 E4 43 C8 */	addi r7, r4, ReadCallback@l
/* 800A4604 000A1544  38 BF 00 00 */	addi r5, r31, 0
/* 800A4608 000A1548  38 DE 00 00 */	addi r6, r30, 0
/* 800A460C 000A154C  7C 88 02 14 */	add r4, r8, r0
/* 800A4610 000A1550  4B FF CC 15 */	bl __CARDRead
/* 800A4614 000A1554  7C 7D 1B 79 */	or. r29, r3, r3
/* 800A4618 000A1558  40 80 00 10 */	bge lbl_800A4628
/* 800A461C 000A155C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 800A4620 000A1560  7F A4 EB 78 */	mr r4, r29
/* 800A4624 000A1564  4B FF B6 29 */	bl __CARDPutControlBlock
lbl_800A4628:
/* 800A4628 000A1568  7F A3 EB 78 */	mr r3, r29
lbl_800A462C:
/* 800A462C 000A156C  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 800A4630 000A1570  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800A4634 000A1574  38 21 00 38 */	addi r1, r1, 0x38
/* 800A4638 000A1578  7C 08 03 A6 */	mtlr r0
/* 800A463C 000A157C  4E 80 00 20 */	blr 

.global CARDRead
CARDRead:
/* 800A4640 000A1580  7C 08 02 A6 */	mflr r0
/* 800A4644 000A1584  3C E0 80 0A */	lis r7, __CARDSyncCallback@ha
/* 800A4648 000A1588  90 01 00 04 */	stw r0, 4(r1)
/* 800A464C 000A158C  38 E7 EC 50 */	addi r7, r7, __CARDSyncCallback@l
/* 800A4650 000A1590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A4654 000A1594  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A4658 000A1598  3B E3 00 00 */	addi r31, r3, 0
/* 800A465C 000A159C  4B FF FE 9D */	bl CARDReadAsync
/* 800A4660 000A15A0  2C 03 00 00 */	cmpwi r3, 0
/* 800A4664 000A15A4  40 80 00 08 */	bge lbl_800A466C
/* 800A4668 000A15A8  48 00 00 0C */	b lbl_800A4674
lbl_800A466C:
/* 800A466C 000A15AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 800A4670 000A15B0  4B FF B7 91 */	bl __CARDSync
lbl_800A4674:
/* 800A4674 000A15B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A4678 000A15B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A467C 000A15BC  38 21 00 20 */	addi r1, r1, 0x20
/* 800A4680 000A15C0  7C 08 03 A6 */	mtlr r0
/* 800A4684 000A15C4  4E 80 00 20 */	blr 
