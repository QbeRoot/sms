.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global fwide
fwide:
/* 80086528 00083468  A0 03 00 04 */	lhz r0, 4(r3)
/* 8008652C 0008346C  54 00 D7 7F */	rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 80086530 00083470  40 82 00 0C */	bne lbl_8008653C
/* 80086534 00083474  38 60 00 00 */	li r3, 0
/* 80086538 00083478  4E 80 00 20 */	blr 
lbl_8008653C:
/* 8008653C 0008347C  88 A3 00 05 */	lbz r5, 5(r3)
/* 80086540 00083480  54 A0 E7 BE */	rlwinm r0, r5, 0x1c, 0x1e, 0x1f
/* 80086544 00083484  2C 00 00 01 */	cmpwi r0, 1
/* 80086548 00083488  41 82 00 58 */	beq lbl_800865A0
/* 8008654C 0008348C  40 80 00 10 */	bge lbl_8008655C
/* 80086550 00083490  2C 00 00 00 */	cmpwi r0, 0
/* 80086554 00083494  40 80 00 14 */	bge lbl_80086568
/* 80086558 00083498  4E 80 00 20 */	blr 
lbl_8008655C:
/* 8008655C 0008349C  2C 00 00 03 */	cmpwi r0, 3
/* 80086560 000834A0  4C 80 00 20 */	bgelr 
/* 80086564 000834A4  48 00 00 34 */	b lbl_80086598
lbl_80086568:
/* 80086568 000834A8  2C 04 00 00 */	cmpwi r4, 0
/* 8008656C 000834AC  40 81 00 14 */	ble lbl_80086580
/* 80086570 000834B0  38 00 00 02 */	li r0, 2
/* 80086574 000834B4  50 05 26 B6 */	rlwimi r5, r0, 4, 0x1a, 0x1b
/* 80086578 000834B8  98 A3 00 05 */	stb r5, 5(r3)
/* 8008657C 000834BC  48 00 00 14 */	b lbl_80086590
lbl_80086580:
/* 80086580 000834C0  40 80 00 10 */	bge lbl_80086590
/* 80086584 000834C4  38 00 00 01 */	li r0, 1
/* 80086588 000834C8  50 05 26 B6 */	rlwimi r5, r0, 4, 0x1a, 0x1b
/* 8008658C 000834CC  98 A3 00 05 */	stb r5, 5(r3)
lbl_80086590:
/* 80086590 000834D0  7C 83 23 78 */	mr r3, r4
/* 80086594 000834D4  4E 80 00 20 */	blr 
lbl_80086598:
/* 80086598 000834D8  38 60 00 01 */	li r3, 1
/* 8008659C 000834DC  4E 80 00 20 */	blr 
lbl_800865A0:
/* 800865A0 000834E0  38 60 FF FF */	li r3, -1
/* 800865A4 000834E4  4E 80 00 20 */	blr 
