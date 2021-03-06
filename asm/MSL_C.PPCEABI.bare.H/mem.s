.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global memcmp
memcmp:
/* 80083BC4 00080B04  38 C3 FF FF */	addi r6, r3, -1
/* 80083BC8 00080B08  38 84 FF FF */	addi r4, r4, -1
/* 80083BCC 00080B0C  38 A5 00 01 */	addi r5, r5, 1
/* 80083BD0 00080B10  48 00 00 28 */	b lbl_80083BF8
lbl_80083BD4:
/* 80083BD4 00080B14  8C 66 00 01 */	lbzu r3, 1(r6)
/* 80083BD8 00080B18  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80083BDC 00080B1C  7C 03 00 40 */	cmplw r3, r0
/* 80083BE0 00080B20  41 82 00 18 */	beq lbl_80083BF8
/* 80083BE4 00080B24  40 80 00 0C */	bge lbl_80083BF0
/* 80083BE8 00080B28  38 60 FF FF */	li r3, -1
/* 80083BEC 00080B2C  4E 80 00 20 */	blr 
lbl_80083BF0:
/* 80083BF0 00080B30  38 60 00 01 */	li r3, 1
/* 80083BF4 00080B34  4E 80 00 20 */	blr 
lbl_80083BF8:
/* 80083BF8 00080B38  34 A5 FF FF */	addic. r5, r5, -1
/* 80083BFC 00080B3C  40 82 FF D8 */	bne lbl_80083BD4
/* 80083C00 00080B40  38 60 00 00 */	li r3, 0
/* 80083C04 00080B44  4E 80 00 20 */	blr 

.global memchr
memchr:
/* 80083C08 00080B48  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80083C0C 00080B4C  38 63 FF FF */	addi r3, r3, -1
/* 80083C10 00080B50  38 A5 00 01 */	addi r5, r5, 1
/* 80083C14 00080B54  48 00 00 10 */	b lbl_80083C24
lbl_80083C18:
/* 80083C18 00080B58  8C 03 00 01 */	lbzu r0, 1(r3)
/* 80083C1C 00080B5C  7C 00 20 40 */	cmplw r0, r4
/* 80083C20 00080B60  4D 82 00 20 */	beqlr 
lbl_80083C24:
/* 80083C24 00080B64  34 A5 FF FF */	addic. r5, r5, -1
/* 80083C28 00080B68  40 82 FF F0 */	bne lbl_80083C18
/* 80083C2C 00080B6C  38 60 00 00 */	li r3, 0
/* 80083C30 00080B70  4E 80 00 20 */	blr 

.global memmove
memmove:
/* 80083C34 00080B74  7C 08 02 A6 */	mflr r0
/* 80083C38 00080B78  28 05 00 20 */	cmplwi r5, 0x20
/* 80083C3C 00080B7C  90 01 00 04 */	stw r0, 4(r1)
/* 80083C40 00080B80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80083C44 00080B84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80083C48 00080B88  3B E3 00 00 */	addi r31, r3, 0
/* 80083C4C 00080B8C  7C 7F 20 10 */	subfc r3, r31, r4
/* 80083C50 00080B90  7C 00 01 10 */	subfe r0, r0, r0
/* 80083C54 00080B94  7C 60 00 D0 */	neg r3, r0
/* 80083C58 00080B98  41 80 00 54 */	blt lbl_80083CAC
/* 80083C5C 00080B9C  7F E0 22 78 */	xor r0, r31, r4
/* 80083C60 00080BA0  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80083C64 00080BA4  41 82 00 24 */	beq lbl_80083C88
/* 80083C68 00080BA8  2C 03 00 00 */	cmpwi r3, 0
/* 80083C6C 00080BAC  40 82 00 10 */	bne lbl_80083C7C
/* 80083C70 00080BB0  7F E3 FB 78 */	mr r3, r31
/* 80083C74 00080BB4  48 00 01 4D */	bl __copy_longs_unaligned
/* 80083C78 00080BB8  48 00 00 2C */	b lbl_80083CA4
lbl_80083C7C:
/* 80083C7C 00080BBC  7F E3 FB 78 */	mr r3, r31
/* 80083C80 00080BC0  48 00 00 91 */	bl __copy_longs_rev_unaligned
/* 80083C84 00080BC4  48 00 00 20 */	b lbl_80083CA4
lbl_80083C88:
/* 80083C88 00080BC8  2C 03 00 00 */	cmpwi r3, 0
/* 80083C8C 00080BCC  40 82 00 10 */	bne lbl_80083C9C
/* 80083C90 00080BD0  7F E3 FB 78 */	mr r3, r31
/* 80083C94 00080BD4  48 00 02 9D */	bl __copy_longs_aligned
/* 80083C98 00080BD8  48 00 00 0C */	b lbl_80083CA4
lbl_80083C9C:
/* 80083C9C 00080BDC  7F E3 FB 78 */	mr r3, r31
/* 80083CA0 00080BE0  48 00 01 E5 */	bl __copy_longs_rev_aligned
lbl_80083CA4:
/* 80083CA4 00080BE4  7F E3 FB 78 */	mr r3, r31
/* 80083CA8 00080BE8  48 00 00 54 */	b lbl_80083CFC
lbl_80083CAC:
/* 80083CAC 00080BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80083CB0 00080BF0  40 82 00 28 */	bne lbl_80083CD8
/* 80083CB4 00080BF4  38 64 FF FF */	addi r3, r4, -1
/* 80083CB8 00080BF8  38 9F FF FF */	addi r4, r31, -1
/* 80083CBC 00080BFC  38 A5 00 01 */	addi r5, r5, 1
/* 80083CC0 00080C00  48 00 00 0C */	b lbl_80083CCC
lbl_80083CC4:
/* 80083CC4 00080C04  8C 03 00 01 */	lbzu r0, 1(r3)
/* 80083CC8 00080C08  9C 04 00 01 */	stbu r0, 1(r4)
lbl_80083CCC:
/* 80083CCC 00080C0C  34 A5 FF FF */	addic. r5, r5, -1
/* 80083CD0 00080C10  40 82 FF F4 */	bne lbl_80083CC4
/* 80083CD4 00080C14  48 00 00 24 */	b lbl_80083CF8
lbl_80083CD8:
/* 80083CD8 00080C18  7C 64 2A 14 */	add r3, r4, r5
/* 80083CDC 00080C1C  7C 9F 2A 14 */	add r4, r31, r5
/* 80083CE0 00080C20  38 A5 00 01 */	addi r5, r5, 1
/* 80083CE4 00080C24  48 00 00 0C */	b lbl_80083CF0
lbl_80083CE8:
/* 80083CE8 00080C28  8C 03 FF FF */	lbzu r0, -1(r3)
/* 80083CEC 00080C2C  9C 04 FF FF */	stbu r0, -1(r4)
lbl_80083CF0:
/* 80083CF0 00080C30  34 A5 FF FF */	addic. r5, r5, -1
/* 80083CF4 00080C34  40 82 FF F4 */	bne lbl_80083CE8
lbl_80083CF8:
/* 80083CF8 00080C38  7F E3 FB 78 */	mr r3, r31
lbl_80083CFC:
/* 80083CFC 00080C3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80083D00 00080C40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80083D04 00080C44  38 21 00 20 */	addi r1, r1, 0x20
/* 80083D08 00080C48  7C 08 03 A6 */	mtlr r0
/* 80083D0C 00080C4C  4E 80 00 20 */	blr 
