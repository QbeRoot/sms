.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global __close_console
__close_console:
/* 800863A8 000832E8  38 60 00 00 */	li r3, 0
/* 800863AC 000832EC  4E 80 00 20 */	blr 

.global __write_console
__write_console:
/* 800863B0 000832F0  7C 08 02 A6 */	mflr r0
/* 800863B4 000832F4  38 60 00 00 */	li r3, 0
/* 800863B8 000832F8  90 01 00 04 */	stw r0, 4(r1)
/* 800863BC 000832FC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800863C0 00083300  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800863C4 00083304  3B E5 00 00 */	addi r31, r5, 0
/* 800863C8 00083308  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800863CC 0008330C  3B C4 00 00 */	addi r30, r4, 0
/* 800863D0 00083310  80 0D 92 B0 */	lwz r0, initialized$16-_SDA_BASE_(r13)
/* 800863D4 00083314  2C 00 00 00 */	cmpwi r0, 0
/* 800863D8 00083318  40 82 00 20 */	bne lbl_800863F8
/* 800863DC 0008331C  3C 60 00 01 */	lis r3, 0x0000E100@ha
/* 800863E0 00083320  38 63 E1 00 */	addi r3, r3, 0x0000E100@l
/* 800863E4 00083324  48 02 F9 09 */	bl InitializeUART
/* 800863E8 00083328  2C 03 00 00 */	cmpwi r3, 0
/* 800863EC 0008332C  40 82 00 0C */	bne lbl_800863F8
/* 800863F0 00083330  38 00 00 01 */	li r0, 1
/* 800863F4 00083334  90 0D 92 B0 */	stw r0, initialized$16-_SDA_BASE_(r13)
lbl_800863F8:
/* 800863F8 00083338  2C 03 00 00 */	cmpwi r3, 0
/* 800863FC 0008333C  41 82 00 0C */	beq lbl_80086408
/* 80086400 00083340  38 60 00 01 */	li r3, 1
/* 80086404 00083344  48 00 00 2C */	b lbl_80086430
lbl_80086408:
/* 80086408 00083348  7F C3 F3 78 */	mr r3, r30
/* 8008640C 0008334C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80086410 00083350  48 02 F9 55 */	bl WriteUARTN
/* 80086414 00083354  2C 03 00 00 */	cmpwi r3, 0
/* 80086418 00083358  41 82 00 14 */	beq lbl_8008642C
/* 8008641C 0008335C  38 00 00 00 */	li r0, 0
/* 80086420 00083360  90 1F 00 00 */	stw r0, 0(r31)
/* 80086424 00083364  38 60 00 01 */	li r3, 1
/* 80086428 00083368  48 00 00 08 */	b lbl_80086430
lbl_8008642C:
/* 8008642C 0008336C  38 60 00 00 */	li r3, 0
lbl_80086430:
/* 80086430 00083370  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80086434 00083374  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80086438 00083378  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8008643C 0008337C  7C 08 03 A6 */	mtlr r0
/* 80086440 00083380  38 21 00 28 */	addi r1, r1, 0x28
/* 80086444 00083384  4E 80 00 20 */	blr 

.global __read_console
__read_console:
/* 80086448 00083388  7C 08 02 A6 */	mflr r0
/* 8008644C 0008338C  38 60 00 00 */	li r3, 0
/* 80086450 00083390  90 01 00 04 */	stw r0, 4(r1)
/* 80086454 00083394  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80086458 00083398  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8008645C 0008339C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80086460 000833A0  3B C5 00 00 */	addi r30, r5, 0
/* 80086464 000833A4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80086468 000833A8  3B A4 00 00 */	addi r29, r4, 0
/* 8008646C 000833AC  80 0D 92 B0 */	lwz r0, initialized$16-_SDA_BASE_(r13)
/* 80086470 000833B0  2C 00 00 00 */	cmpwi r0, 0
/* 80086474 000833B4  40 82 00 20 */	bne lbl_80086494
/* 80086478 000833B8  3C 60 00 01 */	lis r3, 0x0000E100@ha
/* 8008647C 000833BC  38 63 E1 00 */	addi r3, r3, 0x0000E100@l
/* 80086480 000833C0  48 02 F8 6D */	bl InitializeUART
/* 80086484 000833C4  2C 03 00 00 */	cmpwi r3, 0
/* 80086488 000833C8  40 82 00 0C */	bne lbl_80086494
/* 8008648C 000833CC  38 00 00 01 */	li r0, 1
/* 80086490 000833D0  90 0D 92 B0 */	stw r0, initialized$16-_SDA_BASE_(r13)
lbl_80086494:
/* 80086494 000833D4  2C 03 00 00 */	cmpwi r3, 0
/* 80086498 000833D8  41 82 00 0C */	beq lbl_800864A4
/* 8008649C 000833DC  38 60 00 01 */	li r3, 1
/* 800864A0 000833E0  48 00 00 6C */	b lbl_8008650C
lbl_800864A4:
/* 800864A4 000833E4  83 FE 00 00 */	lwz r31, 0(r30)
/* 800864A8 000833E8  38 00 00 00 */	li r0, 0
/* 800864AC 000833EC  38 60 00 00 */	li r3, 0
/* 800864B0 000833F0  90 1E 00 00 */	stw r0, 0(r30)
/* 800864B4 000833F4  48 00 00 2C */	b lbl_800864E0
lbl_800864B8:
/* 800864B8 000833F8  38 7D 00 00 */	addi r3, r29, 0
/* 800864BC 000833FC  38 80 00 01 */	li r4, 1
/* 800864C0 00083400  48 02 F8 9D */	bl ReadUARTN
/* 800864C4 00083404  80 9E 00 00 */	lwz r4, 0(r30)
/* 800864C8 00083408  38 04 00 01 */	addi r0, r4, 1
/* 800864CC 0008340C  90 1E 00 00 */	stw r0, 0(r30)
/* 800864D0 00083410  88 1D 00 00 */	lbz r0, 0(r29)
/* 800864D4 00083414  28 00 00 0D */	cmplwi r0, 0xd
/* 800864D8 00083418  41 82 00 1C */	beq lbl_800864F4
/* 800864DC 0008341C  3B BD 00 01 */	addi r29, r29, 1
lbl_800864E0:
/* 800864E0 00083420  80 1E 00 00 */	lwz r0, 0(r30)
/* 800864E4 00083424  7C 00 F8 40 */	cmplw r0, r31
/* 800864E8 00083428  41 81 00 0C */	bgt lbl_800864F4
/* 800864EC 0008342C  2C 03 00 00 */	cmpwi r3, 0
/* 800864F0 00083430  41 82 FF C8 */	beq lbl_800864B8
lbl_800864F4:
/* 800864F4 00083434  2C 03 00 00 */	cmpwi r3, 0
/* 800864F8 00083438  40 82 00 0C */	bne lbl_80086504
/* 800864FC 0008343C  38 00 00 00 */	li r0, 0
/* 80086500 00083440  48 00 00 08 */	b lbl_80086508
lbl_80086504:
/* 80086504 00083444  38 00 00 01 */	li r0, 1
lbl_80086508:
/* 80086508 00083448  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8008650C:
/* 8008650C 0008344C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80086510 00083450  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80086514 00083454  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80086518 00083458  7C 08 03 A6 */	mtlr r0
/* 8008651C 0008345C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80086520 00083460  38 21 00 30 */	addi r1, r1, 0x30
/* 80086524 00083464  4E 80 00 20 */	blr 