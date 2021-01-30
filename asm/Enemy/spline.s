.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global calcSpline__11TSplinePathFfPfPfPf
calcSpline__11TSplinePathFfPfPfPf:
/* 80281D14 0027EC54  80 63 00 00 */	lwz r3, 0(r3)
/* 80281D18 0027EC58  2C 03 00 01 */	cmpwi r3, 1
/* 80281D1C 0027EC5C  40 82 00 0C */	bne lbl_80281D28
/* 80281D20 0027EC60  C0 25 00 00 */	lfs f1, 0(r5)
/* 80281D24 0027EC64  4E 80 00 20 */	blr 
lbl_80281D28:
/* 80281D28 0027EC68  2C 03 00 02 */	cmpwi r3, 2
/* 80281D2C 0027EC6C  40 82 00 20 */	bne lbl_80281D4C
/* 80281D30 0027EC70  C0 42 E5 E8 */	lfs f2, $$21601-_SDA2_BASE_(r2)
/* 80281D34 0027EC74  C0 05 00 04 */	lfs f0, 4(r5)
/* 80281D38 0027EC78  EC 42 08 28 */	fsubs f2, f2, f1
/* 80281D3C 0027EC7C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80281D40 0027EC80  EC 00 00 72 */	fmuls f0, f0, f1
/* 80281D44 0027EC84  EC 23 00 BA */	fmadds f1, f3, f2, f0
/* 80281D48 0027EC88  4E 80 00 20 */	blr 
lbl_80281D4C:
/* 80281D4C 0027EC8C  39 03 FF FF */	addi r8, r3, -1
/* 80281D50 0027EC90  38 E0 00 00 */	li r7, 0
/* 80281D54 0027EC94  48 00 00 2C */	b lbl_80281D80
lbl_80281D58:
/* 80281D58 0027EC98  7C 07 42 14 */	add r0, r7, r8
/* 80281D5C 0027EC9C  7C 03 0E 70 */	srawi r3, r0, 1
/* 80281D60 0027ECA0  7C 63 01 94 */	addze r3, r3
/* 80281D64 0027ECA4  54 60 10 3A */	slwi r0, r3, 2
/* 80281D68 0027ECA8  7C 04 04 2E */	lfsx f0, r4, r0
/* 80281D6C 0027ECAC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80281D70 0027ECB0  40 80 00 0C */	bge lbl_80281D7C
/* 80281D74 0027ECB4  38 E3 00 01 */	addi r7, r3, 1
/* 80281D78 0027ECB8  48 00 00 08 */	b lbl_80281D80
lbl_80281D7C:
/* 80281D7C 0027ECBC  7C 68 1B 78 */	mr r8, r3
lbl_80281D80:
/* 80281D80 0027ECC0  7C 07 40 00 */	cmpw r7, r8
/* 80281D84 0027ECC4  41 80 FF D4 */	blt lbl_80281D58
/* 80281D88 0027ECC8  2C 07 00 00 */	cmpwi r7, 0
/* 80281D8C 0027ECCC  40 81 00 08 */	ble lbl_80281D94
/* 80281D90 0027ECD0  38 E7 FF FF */	addi r7, r7, -1
lbl_80281D94:
/* 80281D94 0027ECD4  54 E0 10 3A */	slwi r0, r7, 2
/* 80281D98 0027ECD8  C0 02 E5 F0 */	lfs f0, $$21603-_SDA2_BASE_(r2)
/* 80281D9C 0027ECDC  7C 66 02 14 */	add r3, r6, r0
/* 80281DA0 0027ECE0  7C 84 04 2E */	lfsx f4, r4, r0
/* 80281DA4 0027ECE4  7C A6 04 2E */	lfsx f5, r6, r0
/* 80281DA8 0027ECE8  7C 84 02 14 */	add r4, r4, r0
/* 80281DAC 0027ECEC  C0 C3 00 04 */	lfs f6, 4(r3)
/* 80281DB0 0027ECF0  7C 65 02 14 */	add r3, r5, r0
/* 80281DB4 0027ECF4  ED 01 20 28 */	fsubs f8, f1, f4
/* 80281DB8 0027ECF8  EC 46 28 28 */	fsubs f2, f6, f5
/* 80281DBC 0027ECFC  C0 64 00 04 */	lfs f3, 4(r4)
/* 80281DC0 0027ED00  7C E5 04 2E */	lfsx f7, r5, r0
/* 80281DC4 0027ED04  EC 20 31 7A */	fmadds f1, f0, f5, f6
/* 80281DC8 0027ED08  C0 03 00 04 */	lfs f0, 4(r3)
/* 80281DCC 0027ED0C  EC 83 20 28 */	fsubs f4, f3, f4
/* 80281DD0 0027ED10  C0 62 E5 EC */	lfs f3, $$21602-_SDA2_BASE_(r2)
/* 80281DD4 0027ED14  EC 48 00 B2 */	fmuls f2, f8, f2
/* 80281DD8 0027ED18  EC 00 38 28 */	fsubs f0, f0, f7
/* 80281DDC 0027ED1C  EC 42 20 24 */	fdivs f2, f2, f4
/* 80281DE0 0027ED20  EC 00 20 24 */	fdivs f0, f0, f4
/* 80281DE4 0027ED24  EC 43 11 7A */	fmadds f2, f3, f5, f2
/* 80281DE8 0027ED28  EC 04 00 7C */	fnmsubs f0, f4, f1, f0
/* 80281DEC 0027ED2C  EC 08 00 BA */	fmadds f0, f8, f2, f0
/* 80281DF0 0027ED30  EC 28 38 3A */	fmadds f1, f8, f0, f7
/* 80281DF4 0027ED34  4E 80 00 20 */	blr 

.global calcTable__11TSplinePathFv
calcTable__11TSplinePathFv:
/* 80281DF8 0027ED38  7C 08 02 A6 */	mflr r0
/* 80281DFC 0027ED3C  90 01 00 04 */	stw r0, 4(r1)
/* 80281E00 0027ED40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80281E04 0027ED44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80281E08 0027ED48  7C 7F 1B 78 */	mr r31, r3
/* 80281E0C 0027ED4C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80281E10 0027ED50  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80281E14 0027ED54  80 03 00 00 */	lwz r0, 0(r3)
/* 80281E18 0027ED58  2C 00 00 02 */	cmpwi r0, 2
/* 80281E1C 0027ED5C  41 81 00 10 */	bgt lbl_80281E2C
/* 80281E20 0027ED60  38 00 00 01 */	li r0, 1
/* 80281E24 0027ED64  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80281E28 0027ED68  48 00 01 14 */	b lbl_80281F3C
lbl_80281E2C:
/* 80281E2C 0027ED6C  C0 02 E5 F4 */	lfs f0, $$21630-_SDA2_BASE_(r2)
/* 80281E30 0027ED70  3B A0 00 01 */	li r29, 1
/* 80281E34 0027ED74  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80281E38 0027ED78  3B C0 00 04 */	li r30, 4
/* 80281E3C 0027ED7C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80281E40 0027ED80  48 00 00 70 */	b lbl_80281EB0
lbl_80281E44:
/* 80281E44 0027ED84  80 1F 00 04 */	lwz r0, 4(r31)
/* 80281E48 0027ED88  38 61 00 10 */	addi r3, r1, 0x10
/* 80281E4C 0027ED8C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80281E50 0027ED90  7C C0 F2 14 */	add r6, r0, r30
/* 80281E54 0027ED94  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80281E58 0027ED98  C0 26 00 00 */	lfs f1, 0(r6)
/* 80281E5C 0027ED9C  7C A4 F2 14 */	add r5, r4, r30
/* 80281E60 0027EDA0  C0 06 FF FC */	lfs f0, -4(r6)
/* 80281E64 0027EDA4  7C 80 F2 14 */	add r4, r0, r30
/* 80281E68 0027EDA8  C0 65 00 00 */	lfs f3, 0(r5)
/* 80281E6C 0027EDAC  C0 45 FF FC */	lfs f2, -4(r5)
/* 80281E70 0027EDB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80281E74 0027EDB4  C0 84 00 00 */	lfs f4, 0(r4)
/* 80281E78 0027EDB8  C0 24 FF FC */	lfs f1, -4(r4)
/* 80281E7C 0027EDBC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80281E80 0027EDC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80281E84 0027EDC4  EC 04 08 28 */	fsubs f0, f4, f1
/* 80281E88 0027EDC8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80281E8C 0027EDCC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80281E90 0027EDD0  4B E1 30 A5 */	bl PSVECMag
/* 80281E94 0027EDD4  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80281E98 0027EDD8  3B BD 00 01 */	addi r29, r29, 1
/* 80281E9C 0027EDDC  7C 60 F2 14 */	add r3, r0, r30
/* 80281EA0 0027EDE0  C0 03 FF FC */	lfs f0, -4(r3)
/* 80281EA4 0027EDE4  3B DE 00 04 */	addi r30, r30, 4
/* 80281EA8 0027EDE8  EC 00 08 2A */	fadds f0, f0, f1
/* 80281EAC 0027EDEC  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80281EB0:
/* 80281EB0 0027EDF0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80281EB4 0027EDF4  7C 1D 00 00 */	cmpw r29, r0
/* 80281EB8 0027EDF8  41 80 FF 8C */	blt lbl_80281E44
/* 80281EBC 0027EDFC  38 C0 00 01 */	li r6, 1
/* 80281EC0 0027EE00  38 60 00 04 */	li r3, 4
/* 80281EC4 0027EE04  48 00 00 28 */	b lbl_80281EEC
lbl_80281EC8:
/* 80281EC8 0027EE08  54 04 10 3A */	slwi r4, r0, 2
/* 80281ECC 0027EE0C  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 80281ED0 0027EE10  38 04 FF FC */	addi r0, r4, -4
/* 80281ED4 0027EE14  7C 25 1C 2E */	lfsx f1, r5, r3
/* 80281ED8 0027EE18  38 C6 00 01 */	addi r6, r6, 1
/* 80281EDC 0027EE1C  7C 05 04 2E */	lfsx f0, r5, r0
/* 80281EE0 0027EE20  EC 01 00 24 */	fdivs f0, f1, f0
/* 80281EE4 0027EE24  7C 05 1D 2E */	stfsx f0, r5, r3
/* 80281EE8 0027EE28  38 63 00 04 */	addi r3, r3, 4
lbl_80281EEC:
/* 80281EEC 0027EE2C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80281EF0 0027EE30  7C 06 00 00 */	cmpw r6, r0
/* 80281EF4 0027EE34  41 80 FF D4 */	blt lbl_80281EC8
/* 80281EF8 0027EE38  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80281EFC 0027EE3C  7F E3 FB 78 */	mr r3, r31
/* 80281F00 0027EE40  80 BF 00 04 */	lwz r5, 4(r31)
/* 80281F04 0027EE44  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 80281F08 0027EE48  48 00 00 51 */	bl makeTable__11TSplinePathFPfPfPf
/* 80281F0C 0027EE4C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80281F10 0027EE50  7F E3 FB 78 */	mr r3, r31
/* 80281F14 0027EE54  80 BF 00 08 */	lwz r5, 8(r31)
/* 80281F18 0027EE58  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 80281F1C 0027EE5C  48 00 00 3D */	bl makeTable__11TSplinePathFPfPfPf
/* 80281F20 0027EE60  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80281F24 0027EE64  7F E3 FB 78 */	mr r3, r31
/* 80281F28 0027EE68  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80281F2C 0027EE6C  80 DF 00 18 */	lwz r6, 0x18(r31)
/* 80281F30 0027EE70  48 00 00 29 */	bl makeTable__11TSplinePathFPfPfPf
/* 80281F34 0027EE74  38 00 00 01 */	li r0, 1
/* 80281F38 0027EE78  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_80281F3C:
/* 80281F3C 0027EE7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80281F40 0027EE80  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80281F44 0027EE84  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80281F48 0027EE88  7C 08 03 A6 */	mtlr r0
/* 80281F4C 0027EE8C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80281F50 0027EE90  38 21 00 30 */	addi r1, r1, 0x30
/* 80281F54 0027EE94  4E 80 00 20 */	blr 

.global makeTable__11TSplinePathFPfPfPf
makeTable__11TSplinePathFPfPfPf:
/* 80281F58 0027EE98  C0 62 E5 F4 */	lfs f3, $$21630-_SDA2_BASE_(r2)
/* 80281F5C 0027EE9C  39 40 00 00 */	li r10, 0
/* 80281F60 0027EEA0  38 E0 00 00 */	li r7, 0
/* 80281F64 0027EEA4  D0 66 00 00 */	stfs f3, 0(r6)
/* 80281F68 0027EEA8  80 03 00 00 */	lwz r0, 0(r3)
/* 80281F6C 0027EEAC  54 00 10 3A */	slwi r0, r0, 2
/* 80281F70 0027EEB0  7D 06 02 14 */	add r8, r6, r0
/* 80281F74 0027EEB4  D0 68 FF FC */	stfs f3, -4(r8)
/* 80281F78 0027EEB8  C0 42 E5 F8 */	lfs f2, $$21672-_SDA2_BASE_(r2)
/* 80281F7C 0027EEBC  48 00 00 68 */	b lbl_80281FE4
lbl_80281F80:
/* 80281F80 0027EEC0  7D 24 3A 14 */	add r9, r4, r7
/* 80281F84 0027EEC4  81 03 00 20 */	lwz r8, 0x20(r3)
/* 80281F88 0027EEC8  C0 29 00 04 */	lfs f1, 4(r9)
/* 80281F8C 0027EECC  C0 09 00 00 */	lfs f0, 0(r9)
/* 80281F90 0027EED0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80281F94 0027EED4  7C 08 3D 2E */	stfsx f0, r8, r7
/* 80281F98 0027EED8  81 03 00 20 */	lwz r8, 0x20(r3)
/* 80281F9C 0027EEDC  7C 88 3C 2E */	lfsx f4, r8, r7
/* 80281FA0 0027EEE0  FC 00 22 10 */	fabs f0, f4
/* 80281FA4 0027EEE4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80281FA8 0027EEE8  40 80 00 14 */	bge lbl_80281FBC
/* 80281FAC 0027EEEC  81 03 00 24 */	lwz r8, 0x24(r3)
/* 80281FB0 0027EEF0  38 07 00 04 */	addi r0, r7, 4
/* 80281FB4 0027EEF4  7C 68 05 2E */	stfsx f3, r8, r0
/* 80281FB8 0027EEF8  48 00 00 24 */	b lbl_80281FDC
lbl_80281FBC:
/* 80281FBC 0027EEFC  7D 25 3A 14 */	add r9, r5, r7
/* 80281FC0 0027EF00  81 03 00 24 */	lwz r8, 0x24(r3)
/* 80281FC4 0027EF04  C0 29 00 04 */	lfs f1, 4(r9)
/* 80281FC8 0027EF08  38 07 00 04 */	addi r0, r7, 4
/* 80281FCC 0027EF0C  C0 09 00 00 */	lfs f0, 0(r9)
/* 80281FD0 0027EF10  EC 01 00 28 */	fsubs f0, f1, f0
/* 80281FD4 0027EF14  EC 00 20 24 */	fdivs f0, f0, f4
/* 80281FD8 0027EF18  7C 08 05 2E */	stfsx f0, r8, r0
lbl_80281FDC:
/* 80281FDC 0027EF1C  39 4A 00 01 */	addi r10, r10, 1
/* 80281FE0 0027EF20  38 E7 00 04 */	addi r7, r7, 4
lbl_80281FE4:
/* 80281FE4 0027EF24  81 03 00 00 */	lwz r8, 0(r3)
/* 80281FE8 0027EF28  38 08 FF FF */	addi r0, r8, -1
/* 80281FEC 0027EF2C  7C 0A 00 00 */	cmpw r10, r0
/* 80281FF0 0027EF30  41 80 FF 90 */	blt lbl_80281F80
/* 80281FF4 0027EF34  81 03 00 24 */	lwz r8, 0x24(r3)
/* 80281FF8 0027EF38  39 60 00 01 */	li r11, 1
/* 80281FFC 0027EF3C  80 E3 00 20 */	lwz r7, 0x20(r3)
/* 80282000 0027EF40  38 A0 00 04 */	li r5, 4
/* 80282004 0027EF44  C0 28 00 08 */	lfs f1, 8(r8)
/* 80282008 0027EF48  C0 08 00 04 */	lfs f0, 4(r8)
/* 8028200C 0027EF4C  C0 47 00 00 */	lfs f2, 0(r7)
/* 80282010 0027EF50  EC 01 00 28 */	fsubs f0, f1, f0
/* 80282014 0027EF54  C0 26 00 00 */	lfs f1, 0(r6)
/* 80282018 0027EF58  EC 02 00 7C */	fnmsubs f0, f2, f1, f0
/* 8028201C 0027EF5C  D0 06 00 04 */	stfs f0, 4(r6)
/* 80282020 0027EF60  C0 24 00 08 */	lfs f1, 8(r4)
/* 80282024 0027EF64  C0 04 00 00 */	lfs f0, 0(r4)
/* 80282028 0027EF68  C0 82 E5 F0 */	lfs f4, $$21603-_SDA2_BASE_(r2)
/* 8028202C 0027EF6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80282030 0027EF70  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 80282034 0027EF74  EC 04 00 32 */	fmuls f0, f4, f0
/* 80282038 0027EF78  D0 07 00 04 */	stfs f0, 4(r7)
/* 8028203C 0027EF7C  C0 62 E5 F8 */	lfs f3, $$21672-_SDA2_BASE_(r2)
/* 80282040 0027EF80  48 00 00 84 */	b lbl_802820C4
lbl_80282044:
/* 80282044 0027EF84  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 80282048 0027EF88  7C 07 2C 2E */	lfsx f0, r7, r5
/* 8028204C 0027EF8C  FC 00 02 10 */	fabs f0, f0
/* 80282050 0027EF90  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80282054 0027EF94  40 80 00 08 */	bge lbl_8028205C
/* 80282058 0027EF98  7C 67 2D 2E */	stfsx f3, r7, r5
lbl_8028205C:
/* 8028205C 0027EF9C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80282060 0027EFA0  7D 26 2A 14 */	add r9, r6, r5
/* 80282064 0027EFA4  80 E3 00 20 */	lwz r7, 0x20(r3)
/* 80282068 0027EFA8  7D 44 2A 14 */	add r10, r4, r5
/* 8028206C 0027EFAC  7D 00 2A 14 */	add r8, r0, r5
/* 80282070 0027EFB0  7C 47 2C 2E */	lfsx f2, r7, r5
/* 80282074 0027EFB4  38 05 00 04 */	addi r0, r5, 4
/* 80282078 0027EFB8  C0 08 00 00 */	lfs f0, 0(r8)
/* 8028207C 0027EFBC  39 6B 00 01 */	addi r11, r11, 1
/* 80282080 0027EFC0  C0 28 00 08 */	lfs f1, 8(r8)
/* 80282084 0027EFC4  EC A2 00 24 */	fdivs f5, f2, f0
/* 80282088 0027EFC8  C0 08 00 04 */	lfs f0, 4(r8)
/* 8028208C 0027EFCC  C0 49 00 00 */	lfs f2, 0(r9)
/* 80282090 0027EFD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80282094 0027EFD4  EC 05 00 BC */	fnmsubs f0, f5, f2, f0
/* 80282098 0027EFD8  D0 09 00 04 */	stfs f0, 4(r9)
/* 8028209C 0027EFDC  80 E3 00 20 */	lwz r7, 0x20(r3)
/* 802820A0 0027EFE0  C0 4A 00 08 */	lfs f2, 8(r10)
/* 802820A4 0027EFE4  7C 07 2C 2E */	lfsx f0, r7, r5
/* 802820A8 0027EFE8  38 A5 00 04 */	addi r5, r5, 4
/* 802820AC 0027EFEC  C0 2A 00 00 */	lfs f1, 0(r10)
/* 802820B0 0027EFF0  EC 05 00 32 */	fmuls f0, f5, f0
/* 802820B4 0027EFF4  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 802820B8 0027EFF8  EC 22 08 28 */	fsubs f1, f2, f1
/* 802820BC 0027EFFC  EC 04 00 78 */	fmsubs f0, f4, f1, f0
/* 802820C0 0027F000  7C 07 05 2E */	stfsx f0, r7, r0
lbl_802820C4:
/* 802820C4 0027F004  80 E3 00 00 */	lwz r7, 0(r3)
/* 802820C8 0027F008  38 07 FF FE */	addi r0, r7, -2
/* 802820CC 0027F00C  7C 0B 00 00 */	cmpw r11, r0
/* 802820D0 0027F010  41 80 FF 74 */	blt lbl_80282044
/* 802820D4 0027F014  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802820D8 0027F018  54 E5 10 3A */	slwi r5, r7, 2
/* 802820DC 0027F01C  7C 86 2A 14 */	add r4, r6, r5
/* 802820E0 0027F020  7C A0 2A 14 */	add r5, r0, r5
/* 802820E4 0027F024  C0 24 FF FC */	lfs f1, -4(r4)
/* 802820E8 0027F028  C0 45 FF F8 */	lfs f2, -8(r5)
/* 802820EC 0027F02C  C0 04 FF F8 */	lfs f0, -8(r4)
/* 802820F0 0027F030  EC 02 00 7C */	fnmsubs f0, f2, f1, f0
/* 802820F4 0027F034  D0 04 FF F8 */	stfs f0, -8(r4)
/* 802820F8 0027F038  80 83 00 00 */	lwz r4, 0(r3)
/* 802820FC 0027F03C  34 04 FF FE */	addic. r0, r4, -2
/* 80282100 0027F040  7C 04 03 78 */	mr r4, r0
/* 80282104 0027F044  54 05 10 3A */	slwi r5, r0, 2
/* 80282108 0027F048  4C 81 00 20 */	blelr 
/* 8028210C 0027F04C  54 80 E8 FF */	rlwinm. r0, r4, 0x1d, 3, 0x1f
/* 80282110 0027F050  7C 09 03 A6 */	mtctr r0
/* 80282114 0027F054  41 82 01 70 */	beq lbl_80282284
lbl_80282118:
/* 80282118 0027F058  81 03 00 20 */	lwz r8, 0x20(r3)
/* 8028211C 0027F05C  7D 26 2A 14 */	add r9, r6, r5
/* 80282120 0027F060  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 80282124 0027F064  7C 68 2C 2E */	lfsx f3, r8, r5
/* 80282128 0027F068  C0 49 00 04 */	lfs f2, 4(r9)
/* 8028212C 0027F06C  C0 29 00 00 */	lfs f1, 0(r9)
/* 80282130 0027F070  7C 07 2C 2E */	lfsx f0, r7, r5
/* 80282134 0027F074  38 A5 FF FC */	addi r5, r5, -4
/* 80282138 0027F078  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 8028213C 0027F07C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80282140 0027F080  D0 09 00 00 */	stfs f0, 0(r9)
/* 80282144 0027F084  7D 26 2A 14 */	add r9, r6, r5
/* 80282148 0027F088  81 03 00 20 */	lwz r8, 0x20(r3)
/* 8028214C 0027F08C  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 80282150 0027F090  7C 68 2C 2E */	lfsx f3, r8, r5
/* 80282154 0027F094  7C 07 2C 2E */	lfsx f0, r7, r5
/* 80282158 0027F098  38 A5 FF FC */	addi r5, r5, -4
/* 8028215C 0027F09C  C0 49 00 04 */	lfs f2, 4(r9)
/* 80282160 0027F0A0  C0 29 00 00 */	lfs f1, 0(r9)
/* 80282164 0027F0A4  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 80282168 0027F0A8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8028216C 0027F0AC  D0 09 00 00 */	stfs f0, 0(r9)
/* 80282170 0027F0B0  7D 26 2A 14 */	add r9, r6, r5
/* 80282174 0027F0B4  81 03 00 20 */	lwz r8, 0x20(r3)
/* 80282178 0027F0B8  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 8028217C 0027F0BC  7C 68 2C 2E */	lfsx f3, r8, r5
/* 80282180 0027F0C0  7C 07 2C 2E */	lfsx f0, r7, r5
/* 80282184 0027F0C4  38 A5 FF FC */	addi r5, r5, -4
/* 80282188 0027F0C8  C0 49 00 04 */	lfs f2, 4(r9)
/* 8028218C 0027F0CC  C0 29 00 00 */	lfs f1, 0(r9)
/* 80282190 0027F0D0  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 80282194 0027F0D4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80282198 0027F0D8  D0 09 00 00 */	stfs f0, 0(r9)
/* 8028219C 0027F0DC  7D 26 2A 14 */	add r9, r6, r5
/* 802821A0 0027F0E0  81 03 00 20 */	lwz r8, 0x20(r3)
/* 802821A4 0027F0E4  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 802821A8 0027F0E8  7C 68 2C 2E */	lfsx f3, r8, r5
/* 802821AC 0027F0EC  7C 07 2C 2E */	lfsx f0, r7, r5
/* 802821B0 0027F0F0  38 A5 FF FC */	addi r5, r5, -4
/* 802821B4 0027F0F4  C0 49 00 04 */	lfs f2, 4(r9)
/* 802821B8 0027F0F8  C0 29 00 00 */	lfs f1, 0(r9)
/* 802821BC 0027F0FC  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 802821C0 0027F100  EC 01 00 24 */	fdivs f0, f1, f0
/* 802821C4 0027F104  D0 09 00 00 */	stfs f0, 0(r9)
/* 802821C8 0027F108  7D 26 2A 14 */	add r9, r6, r5
/* 802821CC 0027F10C  81 03 00 20 */	lwz r8, 0x20(r3)
/* 802821D0 0027F110  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 802821D4 0027F114  7C 68 2C 2E */	lfsx f3, r8, r5
/* 802821D8 0027F118  7C 07 2C 2E */	lfsx f0, r7, r5
/* 802821DC 0027F11C  38 A5 FF FC */	addi r5, r5, -4
/* 802821E0 0027F120  C0 49 00 04 */	lfs f2, 4(r9)
/* 802821E4 0027F124  C0 29 00 00 */	lfs f1, 0(r9)
/* 802821E8 0027F128  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 802821EC 0027F12C  EC 01 00 24 */	fdivs f0, f1, f0
/* 802821F0 0027F130  D0 09 00 00 */	stfs f0, 0(r9)
/* 802821F4 0027F134  7D 26 2A 14 */	add r9, r6, r5
/* 802821F8 0027F138  81 03 00 20 */	lwz r8, 0x20(r3)
/* 802821FC 0027F13C  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 80282200 0027F140  7C 68 2C 2E */	lfsx f3, r8, r5
/* 80282204 0027F144  7C 07 2C 2E */	lfsx f0, r7, r5
/* 80282208 0027F148  38 A5 FF FC */	addi r5, r5, -4
/* 8028220C 0027F14C  C0 49 00 04 */	lfs f2, 4(r9)
/* 80282210 0027F150  C0 29 00 00 */	lfs f1, 0(r9)
/* 80282214 0027F154  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 80282218 0027F158  EC 01 00 24 */	fdivs f0, f1, f0
/* 8028221C 0027F15C  D0 09 00 00 */	stfs f0, 0(r9)
/* 80282220 0027F160  7D 26 2A 14 */	add r9, r6, r5
/* 80282224 0027F164  81 03 00 20 */	lwz r8, 0x20(r3)
/* 80282228 0027F168  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 8028222C 0027F16C  7C 68 2C 2E */	lfsx f3, r8, r5
/* 80282230 0027F170  7C 07 2C 2E */	lfsx f0, r7, r5
/* 80282234 0027F174  38 A5 FF FC */	addi r5, r5, -4
/* 80282238 0027F178  C0 49 00 04 */	lfs f2, 4(r9)
/* 8028223C 0027F17C  C0 29 00 00 */	lfs f1, 0(r9)
/* 80282240 0027F180  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 80282244 0027F184  EC 01 00 24 */	fdivs f0, f1, f0
/* 80282248 0027F188  D0 09 00 00 */	stfs f0, 0(r9)
/* 8028224C 0027F18C  7D 26 2A 14 */	add r9, r6, r5
/* 80282250 0027F190  81 03 00 20 */	lwz r8, 0x20(r3)
/* 80282254 0027F194  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 80282258 0027F198  7C 68 2C 2E */	lfsx f3, r8, r5
/* 8028225C 0027F19C  7C 07 2C 2E */	lfsx f0, r7, r5
/* 80282260 0027F1A0  38 A5 FF FC */	addi r5, r5, -4
/* 80282264 0027F1A4  C0 49 00 04 */	lfs f2, 4(r9)
/* 80282268 0027F1A8  C0 29 00 00 */	lfs f1, 0(r9)
/* 8028226C 0027F1AC  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 80282270 0027F1B0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80282274 0027F1B4  D0 09 00 00 */	stfs f0, 0(r9)
/* 80282278 0027F1B8  42 00 FE A0 */	bdnz lbl_80282118
/* 8028227C 0027F1BC  70 84 00 07 */	andi. r4, r4, 7
/* 80282280 0027F1C0  4D 82 00 20 */	beqlr 
lbl_80282284:
/* 80282284 0027F1C4  7C 89 03 A6 */	mtctr r4
lbl_80282288:
/* 80282288 0027F1C8  81 03 00 20 */	lwz r8, 0x20(r3)
/* 8028228C 0027F1CC  7D 26 2A 14 */	add r9, r6, r5
/* 80282290 0027F1D0  80 E3 00 24 */	lwz r7, 0x24(r3)
/* 80282294 0027F1D4  7C 68 2C 2E */	lfsx f3, r8, r5
/* 80282298 0027F1D8  C0 49 00 04 */	lfs f2, 4(r9)
/* 8028229C 0027F1DC  C0 29 00 00 */	lfs f1, 0(r9)
/* 802822A0 0027F1E0  7C 07 2C 2E */	lfsx f0, r7, r5
/* 802822A4 0027F1E4  38 A5 FF FC */	addi r5, r5, -4
/* 802822A8 0027F1E8  EC 23 08 BC */	fnmsubs f1, f3, f2, f1
/* 802822AC 0027F1EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 802822B0 0027F1F0  D0 09 00 00 */	stfs f0, 0(r9)
/* 802822B4 0027F1F4  42 00 FF D4 */	bdnz lbl_80282288
/* 802822B8 0027F1F8  4E 80 00 20 */	blr 

.global __ct__11TSplinePathFi
__ct__11TSplinePathFi:
/* 802822BC 0027F1FC  7C 08 02 A6 */	mflr r0
/* 802822C0 0027F200  90 01 00 04 */	stw r0, 4(r1)
/* 802822C4 0027F204  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802822C8 0027F208  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802822CC 0027F20C  7C 7F 1B 78 */	mr r31, r3
/* 802822D0 0027F210  90 83 00 00 */	stw r4, 0(r3)
/* 802822D4 0027F214  80 03 00 00 */	lwz r0, 0(r3)
/* 802822D8 0027F218  54 03 10 3A */	slwi r3, r0, 2
/* 802822DC 0027F21C  4B D8 A6 D5 */	bl __nwa__FUl
/* 802822E0 0027F220  90 7F 00 04 */	stw r3, 4(r31)
/* 802822E4 0027F224  80 1F 00 00 */	lwz r0, 0(r31)
/* 802822E8 0027F228  54 03 10 3A */	slwi r3, r0, 2
/* 802822EC 0027F22C  4B D8 A6 C5 */	bl __nwa__FUl
/* 802822F0 0027F230  90 7F 00 08 */	stw r3, 8(r31)
/* 802822F4 0027F234  80 1F 00 00 */	lwz r0, 0(r31)
/* 802822F8 0027F238  54 03 10 3A */	slwi r3, r0, 2
/* 802822FC 0027F23C  4B D8 A6 B5 */	bl __nwa__FUl
/* 80282300 0027F240  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80282304 0027F244  80 1F 00 00 */	lwz r0, 0(r31)
/* 80282308 0027F248  54 03 10 3A */	slwi r3, r0, 2
/* 8028230C 0027F24C  4B D8 A6 A5 */	bl __nwa__FUl
/* 80282310 0027F250  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80282314 0027F254  80 1F 00 00 */	lwz r0, 0(r31)
/* 80282318 0027F258  54 03 10 3A */	slwi r3, r0, 2
/* 8028231C 0027F25C  4B D8 A6 95 */	bl __nwa__FUl
/* 80282320 0027F260  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80282324 0027F264  80 1F 00 00 */	lwz r0, 0(r31)
/* 80282328 0027F268  54 03 10 3A */	slwi r3, r0, 2
/* 8028232C 0027F26C  4B D8 A6 85 */	bl __nwa__FUl
/* 80282330 0027F270  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80282334 0027F274  80 1F 00 00 */	lwz r0, 0(r31)
/* 80282338 0027F278  54 03 10 3A */	slwi r3, r0, 2
/* 8028233C 0027F27C  4B D8 A6 75 */	bl __nwa__FUl
/* 80282340 0027F280  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80282344 0027F284  80 1F 00 00 */	lwz r0, 0(r31)
/* 80282348 0027F288  54 03 10 3A */	slwi r3, r0, 2
/* 8028234C 0027F28C  4B D8 A6 65 */	bl __nwa__FUl
/* 80282350 0027F290  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80282354 0027F294  80 1F 00 00 */	lwz r0, 0(r31)
/* 80282358 0027F298  54 03 10 3A */	slwi r3, r0, 2
/* 8028235C 0027F29C  4B D8 A6 55 */	bl __nwa__FUl
/* 80282360 0027F2A0  90 7F 00 24 */	stw r3, 0x24(r31)
/* 80282364 0027F2A4  38 A0 00 00 */	li r5, 0
/* 80282368 0027F2A8  38 C0 00 00 */	li r6, 0
/* 8028236C 0027F2AC  90 BF 00 28 */	stw r5, 0x28(r31)
/* 80282370 0027F2B0  3C 80 43 30 */	lis r4, 0x4330
/* 80282374 0027F2B4  C8 22 E6 00 */	lfd f1, $$21683-_SDA2_BASE_(r2)
/* 80282378 0027F2B8  48 00 00 38 */	b lbl_802823B0
lbl_8028237C:
/* 8028237C 0027F2BC  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80282380 0027F2C0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80282384 0027F2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80282388 0027F2C8  38 C6 00 01 */	addi r6, r6, 1
/* 8028238C 0027F2CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80282390 0027F2D0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80282394 0027F2D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80282398 0027F2D8  7C 03 2D 2E */	stfsx f0, r3, r5
/* 8028239C 0027F2DC  80 7F 00 08 */	lwz r3, 8(r31)
/* 802823A0 0027F2E0  7C 03 2D 2E */	stfsx f0, r3, r5
/* 802823A4 0027F2E4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802823A8 0027F2E8  7C 03 2D 2E */	stfsx f0, r3, r5
/* 802823AC 0027F2EC  38 A5 00 04 */	addi r5, r5, 4
lbl_802823B0:
/* 802823B0 0027F2F0  80 1F 00 00 */	lwz r0, 0(r31)
/* 802823B4 0027F2F4  7C 06 00 00 */	cmpw r6, r0
/* 802823B8 0027F2F8  41 80 FF C4 */	blt lbl_8028237C
/* 802823BC 0027F2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802823C0 0027F300  7F E3 FB 78 */	mr r3, r31
/* 802823C4 0027F304  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802823C8 0027F308  38 21 00 20 */	addi r1, r1, 0x20
/* 802823CC 0027F30C  7C 08 03 A6 */	mtlr r0
/* 802823D0 0027F310  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
.global $$21601
$$21601:
	.incbin "baserom.dol", 0x3EA2E8, 0x4
.global $$21602
$$21602:
	.incbin "baserom.dol", 0x3EA2EC, 0x4
.global $$21603
$$21603:
	.incbin "baserom.dol", 0x3EA2F0, 0x4
.global $$21630
$$21630:
	.incbin "baserom.dol", 0x3EA2F4, 0x4
.global $$21672
$$21672:
	.incbin "baserom.dol", 0x3EA2F8, 0x8
.global $$21683
$$21683:
	.incbin "baserom.dol", 0x3EA300, 0x8
