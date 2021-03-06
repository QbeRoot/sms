.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global TRKSuppAccessFile
TRKSuppAccessFile:
/* 80089DD0 00086D10  7C 08 02 A6 */	mflr r0
/* 80089DD4 00086D14  90 01 00 04 */	stw r0, 4(r1)
/* 80089DD8 00086D18  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80089DDC 00086D1C  BE A1 00 1C */	stmw r21, 0x1c(r1)
/* 80089DE0 00086D20  7C 9B 23 79 */	or. r27, r4, r4
/* 80089DE4 00086D24  3B 23 00 00 */	addi r25, r3, 0
/* 80089DE8 00086D28  3A E5 00 00 */	addi r23, r5, 0
/* 80089DEC 00086D2C  3B 46 00 00 */	addi r26, r6, 0
/* 80089DF0 00086D30  3A C7 00 00 */	addi r22, r7, 0
/* 80089DF4 00086D34  3B C8 00 00 */	addi r30, r8, 0
/* 80089DF8 00086D38  41 82 00 10 */	beq lbl_80089E08
/* 80089DFC 00086D3C  80 17 00 00 */	lwz r0, 0(r23)
/* 80089E00 00086D40  28 00 00 00 */	cmplwi r0, 0
/* 80089E04 00086D44  40 82 00 0C */	bne lbl_80089E10
lbl_80089E08:
/* 80089E08 00086D48  38 60 00 02 */	li r3, 2
/* 80089E0C 00086D4C  48 00 02 88 */	b lbl_8008A094
lbl_80089E10:
/* 80089E10 00086D50  38 00 00 00 */	li r0, 0
/* 80089E14 00086D54  98 1A 00 00 */	stb r0, 0(r26)
/* 80089E18 00086D58  3B 00 00 00 */	li r24, 0
/* 80089E1C 00086D5C  3B 80 00 00 */	li r28, 0
/* 80089E20 00086D60  3A A0 00 00 */	li r21, 0
/* 80089E24 00086D64  48 00 02 40 */	b lbl_8008A064
lbl_80089E28:
/* 80089E28 00086D68  7C 1C 18 50 */	subf r0, r28, r3
/* 80089E2C 00086D6C  28 00 08 00 */	cmplwi r0, 0x800
/* 80089E30 00086D70  40 81 00 0C */	ble lbl_80089E3C
/* 80089E34 00086D74  3B E0 08 00 */	li r31, 0x800
/* 80089E38 00086D78  48 00 00 08 */	b lbl_80089E40
lbl_80089E3C:
/* 80089E3C 00086D7C  7C 1F 03 78 */	mr r31, r0
lbl_80089E40:
/* 80089E40 00086D80  38 61 00 0C */	addi r3, r1, 0xc
/* 80089E44 00086D84  38 81 00 10 */	addi r4, r1, 0x10
/* 80089E48 00086D88  4B FF E2 B9 */	bl TRKGetFreeBuffer
/* 80089E4C 00086D8C  7C 75 1B 79 */	or. r21, r3, r3
/* 80089E50 00086D90  40 82 00 58 */	bne lbl_80089EA8
/* 80089E54 00086D94  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 80089E58 00086D98  80 07 00 0C */	lwz r0, 0xc(r7)
/* 80089E5C 00086D9C  28 00 08 80 */	cmplwi r0, 0x880
/* 80089E60 00086DA0  41 80 00 0C */	blt lbl_80089E6C
/* 80089E64 00086DA4  38 A0 03 01 */	li r5, 0x301
/* 80089E68 00086DA8  48 00 00 3C */	b lbl_80089EA4
lbl_80089E6C:
/* 80089E6C 00086DAC  2C 1E 00 00 */	cmpwi r30, 0
/* 80089E70 00086DB0  41 82 00 0C */	beq lbl_80089E7C
/* 80089E74 00086DB4  38 C0 00 D1 */	li r6, 0xd1
/* 80089E78 00086DB8  48 00 00 08 */	b lbl_80089E80
lbl_80089E7C:
/* 80089E7C 00086DBC  38 C0 00 D0 */	li r6, 0xd0
lbl_80089E80:
/* 80089E80 00086DC0  80 87 00 0C */	lwz r4, 0xc(r7)
/* 80089E84 00086DC4  38 A0 00 00 */	li r5, 0
/* 80089E88 00086DC8  38 64 00 01 */	addi r3, r4, 1
/* 80089E8C 00086DCC  38 04 00 10 */	addi r0, r4, 0x10
/* 80089E90 00086DD0  90 67 00 0C */	stw r3, 0xc(r7)
/* 80089E94 00086DD4  7C C7 01 AE */	stbx r6, r7, r0
/* 80089E98 00086DD8  80 67 00 08 */	lwz r3, 8(r7)
/* 80089E9C 00086DDC  38 03 00 01 */	addi r0, r3, 1
/* 80089EA0 00086DE0  90 07 00 08 */	stw r0, 8(r7)
lbl_80089EA4:
/* 80089EA4 00086DE4  7C B5 2B 78 */	mr r21, r5
lbl_80089EA8:
/* 80089EA8 00086DE8  2C 15 00 00 */	cmpwi r21, 0
/* 80089EAC 00086DEC  40 82 00 14 */	bne lbl_80089EC0
/* 80089EB0 00086DF0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80089EB4 00086DF4  7F 24 CB 78 */	mr r4, r25
/* 80089EB8 00086DF8  4B FF E5 6D */	bl TRKAppendBuffer1_ui32
/* 80089EBC 00086DFC  7C 75 1B 78 */	mr r21, r3
lbl_80089EC0:
/* 80089EC0 00086E00  2C 15 00 00 */	cmpwi r21, 0
/* 80089EC4 00086E04  40 82 00 14 */	bne lbl_80089ED8
/* 80089EC8 00086E08  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80089ECC 00086E0C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80089ED0 00086E10  4B FF E5 01 */	bl TRKAppendBuffer1_ui16
/* 80089ED4 00086E14  7C 75 1B 78 */	mr r21, r3
lbl_80089ED8:
/* 80089ED8 00086E18  2C 1E 00 00 */	cmpwi r30, 0
/* 80089EDC 00086E1C  40 82 00 20 */	bne lbl_80089EFC
/* 80089EE0 00086E20  2C 15 00 00 */	cmpwi r21, 0
/* 80089EE4 00086E24  40 82 00 18 */	bne lbl_80089EFC
/* 80089EE8 00086E28  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80089EEC 00086E2C  38 BF 00 00 */	addi r5, r31, 0
/* 80089EF0 00086E30  7C 9B E2 14 */	add r4, r27, r28
/* 80089EF4 00086E34  4B FF E6 1D */	bl TRKAppendBuffer_ui8
/* 80089EF8 00086E38  7C 75 1B 78 */	mr r21, r3
lbl_80089EFC:
/* 80089EFC 00086E3C  2C 15 00 00 */	cmpwi r21, 0
/* 80089F00 00086E40  40 82 01 58 */	bne lbl_8008A058
/* 80089F04 00086E44  2C 16 00 00 */	cmpwi r22, 0
/* 80089F08 00086E48  41 82 01 44 */	beq lbl_8008A04C
/* 80089F0C 00086E4C  38 00 00 00 */	li r0, 0
/* 80089F10 00086E50  2C 1E 00 00 */	cmpwi r30, 0
/* 80089F14 00086E54  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80089F18 00086E58  98 01 00 08 */	stb r0, 8(r1)
/* 80089F1C 00086E5C  41 82 00 10 */	beq lbl_80089F2C
/* 80089F20 00086E60  28 19 00 00 */	cmplwi r25, 0
/* 80089F24 00086E64  40 82 00 08 */	bne lbl_80089F2C
/* 80089F28 00086E68  38 00 00 01 */	li r0, 1
lbl_80089F2C:
/* 80089F2C 00086E6C  2C 1E 00 00 */	cmpwi r30, 0
/* 80089F30 00086E70  41 82 00 0C */	beq lbl_80089F3C
/* 80089F34 00086E74  38 A0 00 05 */	li r5, 5
/* 80089F38 00086E78  48 00 00 08 */	b lbl_80089F40
lbl_80089F3C:
/* 80089F3C 00086E7C  38 A0 00 05 */	li r5, 5
lbl_80089F40:
/* 80089F40 00086E80  7C 00 00 34 */	cntlzw r0, r0
/* 80089F44 00086E84  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80089F48 00086E88  54 07 D9 7E */	srwi r7, r0, 5
/* 80089F4C 00086E8C  38 81 00 14 */	addi r4, r1, 0x14
/* 80089F50 00086E90  38 C0 00 03 */	li r6, 3
/* 80089F54 00086E94  48 00 01 55 */	bl TRKRequestSend
/* 80089F58 00086E98  7C 75 1B 79 */	or. r21, r3, r3
/* 80089F5C 00086E9C  40 82 00 18 */	bne lbl_80089F74
/* 80089F60 00086EA0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80089F64 00086EA4  4B FF E2 39 */	bl TRKGetBuffer
/* 80089F68 00086EA8  3B A3 00 00 */	addi r29, r3, 0
/* 80089F6C 00086EAC  38 80 00 02 */	li r4, 2
/* 80089F70 00086EB0  4B FF E3 01 */	bl TRKSetBufferPosition
lbl_80089F74:
/* 80089F74 00086EB4  2C 15 00 00 */	cmpwi r21, 0
/* 80089F78 00086EB8  40 82 00 14 */	bne lbl_80089F8C
/* 80089F7C 00086EBC  38 7D 00 00 */	addi r3, r29, 0
/* 80089F80 00086EC0  38 81 00 08 */	addi r4, r1, 8
/* 80089F84 00086EC4  4B FF E6 71 */	bl TRKReadBuffer1_ui8
/* 80089F88 00086EC8  7C 75 1B 78 */	mr r21, r3
lbl_80089F8C:
/* 80089F8C 00086ECC  2C 15 00 00 */	cmpwi r21, 0
/* 80089F90 00086ED0  40 82 00 14 */	bne lbl_80089FA4
/* 80089F94 00086ED4  38 7D 00 00 */	addi r3, r29, 0
/* 80089F98 00086ED8  38 81 00 0A */	addi r4, r1, 0xa
/* 80089F9C 00086EDC  4B FF E6 7D */	bl TRKReadBuffer1_ui16
/* 80089FA0 00086EE0  7C 75 1B 78 */	mr r21, r3
lbl_80089FA4:
/* 80089FA4 00086EE4  2C 1E 00 00 */	cmpwi r30, 0
/* 80089FA8 00086EE8  41 82 00 58 */	beq lbl_8008A000
/* 80089FAC 00086EEC  2C 15 00 00 */	cmpwi r21, 0
/* 80089FB0 00086EF0  40 82 00 50 */	bne lbl_8008A000
/* 80089FB4 00086EF4  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 80089FB8 00086EF8  80 9D 00 08 */	lwz r4, 8(r29)
/* 80089FBC 00086EFC  38 03 00 05 */	addi r0, r3, 5
/* 80089FC0 00086F00  7C 04 00 40 */	cmplw r4, r0
/* 80089FC4 00086F04  41 82 00 20 */	beq lbl_80089FE4
/* 80089FC8 00086F08  88 01 00 08 */	lbz r0, 8(r1)
/* 80089FCC 00086F0C  38 64 FF FB */	addi r3, r4, -5
/* 80089FD0 00086F10  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80089FD4 00086F14  28 00 00 00 */	cmplwi r0, 0
/* 80089FD8 00086F18  40 82 00 0C */	bne lbl_80089FE4
/* 80089FDC 00086F1C  38 00 00 01 */	li r0, 1
/* 80089FE0 00086F20  98 01 00 08 */	stb r0, 8(r1)
lbl_80089FE4:
/* 80089FE4 00086F24  A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 80089FE8 00086F28  7C 05 F8 40 */	cmplw r5, r31
/* 80089FEC 00086F2C  41 81 00 14 */	bgt lbl_8008A000
/* 80089FF0 00086F30  38 7D 00 00 */	addi r3, r29, 0
/* 80089FF4 00086F34  7C 9B E2 14 */	add r4, r27, r28
/* 80089FF8 00086F38  4B FF E7 E1 */	bl TRKReadBuffer_ui8
/* 80089FFC 00086F3C  7C 75 1B 78 */	mr r21, r3
lbl_8008A000:
/* 8008A000 00086F40  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8008A004 00086F44  7C 03 F8 40 */	cmplw r3, r31
/* 8008A008 00086F48  41 82 00 30 */	beq lbl_8008A038
/* 8008A00C 00086F4C  2C 1E 00 00 */	cmpwi r30, 0
/* 8008A010 00086F50  41 82 00 0C */	beq lbl_8008A01C
/* 8008A014 00086F54  7C 03 F8 40 */	cmplw r3, r31
/* 8008A018 00086F58  41 80 00 18 */	blt lbl_8008A030
lbl_8008A01C:
/* 8008A01C 00086F5C  88 01 00 08 */	lbz r0, 8(r1)
/* 8008A020 00086F60  28 00 00 00 */	cmplwi r0, 0
/* 8008A024 00086F64  40 82 00 0C */	bne lbl_8008A030
/* 8008A028 00086F68  38 00 00 01 */	li r0, 1
/* 8008A02C 00086F6C  98 01 00 08 */	stb r0, 8(r1)
lbl_8008A030:
/* 8008A030 00086F70  3B E3 00 00 */	addi r31, r3, 0
/* 8008A034 00086F74  3B 00 00 01 */	li r24, 1
lbl_8008A038:
/* 8008A038 00086F78  88 01 00 08 */	lbz r0, 8(r1)
/* 8008A03C 00086F7C  98 1A 00 00 */	stb r0, 0(r26)
/* 8008A040 00086F80  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8008A044 00086F84  4B FF E1 85 */	bl TRKReleaseBuffer
/* 8008A048 00086F88  48 00 00 10 */	b lbl_8008A058
lbl_8008A04C:
/* 8008A04C 00086F8C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8008A050 00086F90  4B FF E0 09 */	bl TRKMessageSend
/* 8008A054 00086F94  7C 75 1B 78 */	mr r21, r3
lbl_8008A058:
/* 8008A058 00086F98  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8008A05C 00086F9C  4B FF E1 6D */	bl TRKReleaseBuffer
/* 8008A060 00086FA0  7F 9C FA 14 */	add r28, r28, r31
lbl_8008A064:
/* 8008A064 00086FA4  2C 18 00 00 */	cmpwi r24, 0
/* 8008A068 00086FA8  40 82 00 24 */	bne lbl_8008A08C
/* 8008A06C 00086FAC  80 77 00 00 */	lwz r3, 0(r23)
/* 8008A070 00086FB0  7C 1C 18 40 */	cmplw r28, r3
/* 8008A074 00086FB4  40 80 00 18 */	bge lbl_8008A08C
/* 8008A078 00086FB8  2C 15 00 00 */	cmpwi r21, 0
/* 8008A07C 00086FBC  40 82 00 10 */	bne lbl_8008A08C
/* 8008A080 00086FC0  88 1A 00 00 */	lbz r0, 0(r26)
/* 8008A084 00086FC4  28 00 00 00 */	cmplwi r0, 0
/* 8008A088 00086FC8  41 82 FD A0 */	beq lbl_80089E28
lbl_8008A08C:
/* 8008A08C 00086FCC  93 97 00 00 */	stw r28, 0(r23)
/* 8008A090 00086FD0  7E A3 AB 78 */	mr r3, r21
lbl_8008A094:
/* 8008A094 00086FD4  BA A1 00 1C */	lmw r21, 0x1c(r1)
/* 8008A098 00086FD8  38 21 00 48 */	addi r1, r1, 0x48
/* 8008A09C 00086FDC  80 01 00 04 */	lwz r0, 4(r1)
/* 8008A0A0 00086FE0  7C 08 03 A6 */	mtlr r0
/* 8008A0A4 00086FE4  4E 80 00 20 */	blr 

.global TRKRequestSend
TRKRequestSend:
/* 8008A0A8 00086FE8  7C 08 02 A6 */	mflr r0
/* 8008A0AC 00086FEC  90 01 00 04 */	stw r0, 4(r1)
/* 8008A0B0 00086FF0  38 00 FF FF */	li r0, -1
/* 8008A0B4 00086FF4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8008A0B8 00086FF8  BE C1 00 10 */	stmw r22, 0x10(r1)
/* 8008A0BC 00086FFC  3A E4 00 00 */	addi r23, r4, 0
/* 8008A0C0 00087000  3C 80 04 C5 */	lis r4, 0x04C4B3EC@ha
/* 8008A0C4 00087004  3B 66 00 01 */	addi r27, r6, 1
/* 8008A0C8 00087008  3A C3 00 00 */	addi r22, r3, 0
/* 8008A0CC 0008700C  3B E4 B3 EC */	addi r31, r4, 0x04C4B3EC@l
/* 8008A0D0 00087010  3B 05 00 00 */	addi r24, r5, 0
/* 8008A0D4 00087014  3B 27 00 00 */	addi r25, r7, 0
/* 8008A0D8 00087018  3B C0 00 00 */	li r30, 0
/* 8008A0DC 0008701C  3B 40 00 01 */	li r26, 1
/* 8008A0E0 00087020  90 17 00 00 */	stw r0, 0(r23)
/* 8008A0E4 00087024  48 00 01 24 */	b lbl_8008A208
lbl_8008A0E8:
/* 8008A0E8 00087028  7E C3 B3 78 */	mr r3, r22
/* 8008A0EC 0008702C  4B FF DF 6D */	bl TRKMessageSend
/* 8008A0F0 00087030  7C 7E 1B 79 */	or. r30, r3, r3
/* 8008A0F4 00087034  40 82 01 10 */	bne lbl_8008A204
/* 8008A0F8 00087038  2C 19 00 00 */	cmpwi r25, 0
/* 8008A0FC 0008703C  41 82 00 08 */	beq lbl_8008A104
/* 8008A100 00087040  3B 80 00 00 */	li r28, 0
lbl_8008A104:
/* 8008A104 00087044  4B FF E7 C5 */	bl TRKTestForPacket
/* 8008A108 00087048  90 77 00 00 */	stw r3, 0(r23)
/* 8008A10C 0008704C  80 77 00 00 */	lwz r3, 0(r23)
/* 8008A110 00087050  2C 03 FF FF */	cmpwi r3, -1
/* 8008A114 00087054  40 82 00 18 */	bne lbl_8008A12C
/* 8008A118 00087058  2C 19 00 00 */	cmpwi r25, 0
/* 8008A11C 0008705C  41 82 FF E8 */	beq lbl_8008A104
/* 8008A120 00087060  3B 9C 00 01 */	addi r28, r28, 1
/* 8008A124 00087064  7C 1C F8 40 */	cmplw r28, r31
/* 8008A128 00087068  41 80 FF DC */	blt lbl_8008A104
lbl_8008A12C:
/* 8008A12C 0008706C  2C 03 FF FF */	cmpwi r3, -1
/* 8008A130 00087070  41 82 00 4C */	beq lbl_8008A17C
/* 8008A134 00087074  3B 40 00 00 */	li r26, 0
/* 8008A138 00087078  4B FF E0 65 */	bl TRKGetBuffer
/* 8008A13C 0008707C  3B A3 00 00 */	addi r29, r3, 0
/* 8008A140 00087080  38 80 00 00 */	li r4, 0
/* 8008A144 00087084  4B FF E1 2D */	bl TRKSetBufferPosition
/* 8008A148 00087088  38 7D 00 00 */	addi r3, r29, 0
/* 8008A14C 0008708C  38 81 00 08 */	addi r4, r1, 8
/* 8008A150 00087090  4B FF E4 A5 */	bl TRKReadBuffer1_ui8
/* 8008A154 00087094  7C 7E 1B 79 */	or. r30, r3, r3
/* 8008A158 00087098  40 82 00 24 */	bne lbl_8008A17C
/* 8008A15C 0008709C  88 01 00 08 */	lbz r0, 8(r1)
/* 8008A160 000870A0  28 00 00 80 */	cmplwi r0, 0x80
/* 8008A164 000870A4  40 80 00 18 */	bge lbl_8008A17C
/* 8008A168 000870A8  80 77 00 00 */	lwz r3, 0(r23)
/* 8008A16C 000870AC  4B FF E8 A9 */	bl TRKProcessInput
/* 8008A170 000870B0  38 00 FF FF */	li r0, -1
/* 8008A174 000870B4  90 17 00 00 */	stw r0, 0(r23)
/* 8008A178 000870B8  4B FF FF 8C */	b lbl_8008A104
lbl_8008A17C:
/* 8008A17C 000870BC  80 17 00 00 */	lwz r0, 0(r23)
/* 8008A180 000870C0  2C 00 FF FF */	cmpwi r0, -1
/* 8008A184 000870C4  41 82 00 80 */	beq lbl_8008A204
/* 8008A188 000870C8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8008A18C 000870CC  7C 00 C0 40 */	cmplw r0, r24
/* 8008A190 000870D0  40 80 00 08 */	bge lbl_8008A198
/* 8008A194 000870D4  3B 40 00 01 */	li r26, 1
lbl_8008A198:
/* 8008A198 000870D8  2C 1E 00 00 */	cmpwi r30, 0
/* 8008A19C 000870DC  40 82 00 1C */	bne lbl_8008A1B8
/* 8008A1A0 000870E0  2C 1A 00 00 */	cmpwi r26, 0
/* 8008A1A4 000870E4  40 82 00 14 */	bne lbl_8008A1B8
/* 8008A1A8 000870E8  38 7D 00 00 */	addi r3, r29, 0
/* 8008A1AC 000870EC  38 81 00 09 */	addi r4, r1, 9
/* 8008A1B0 000870F0  4B FF E4 45 */	bl TRKReadBuffer1_ui8
/* 8008A1B4 000870F4  7C 7E 1B 78 */	mr r30, r3
lbl_8008A1B8:
/* 8008A1B8 000870F8  2C 1E 00 00 */	cmpwi r30, 0
/* 8008A1BC 000870FC  40 82 00 28 */	bne lbl_8008A1E4
/* 8008A1C0 00087100  2C 1A 00 00 */	cmpwi r26, 0
/* 8008A1C4 00087104  40 82 00 20 */	bne lbl_8008A1E4
/* 8008A1C8 00087108  88 01 00 08 */	lbz r0, 8(r1)
/* 8008A1CC 0008710C  28 00 00 80 */	cmplwi r0, 0x80
/* 8008A1D0 00087110  40 82 00 10 */	bne lbl_8008A1E0
/* 8008A1D4 00087114  88 01 00 09 */	lbz r0, 9(r1)
/* 8008A1D8 00087118  28 00 00 00 */	cmplwi r0, 0
/* 8008A1DC 0008711C  41 82 00 08 */	beq lbl_8008A1E4
lbl_8008A1E0:
/* 8008A1E0 00087120  3B 40 00 01 */	li r26, 1
lbl_8008A1E4:
/* 8008A1E4 00087124  2C 1E 00 00 */	cmpwi r30, 0
/* 8008A1E8 00087128  40 82 00 0C */	bne lbl_8008A1F4
/* 8008A1EC 0008712C  2C 1A 00 00 */	cmpwi r26, 0
/* 8008A1F0 00087130  41 82 00 14 */	beq lbl_8008A204
lbl_8008A1F4:
/* 8008A1F4 00087134  80 77 00 00 */	lwz r3, 0(r23)
/* 8008A1F8 00087138  4B FF DF D1 */	bl TRKReleaseBuffer
/* 8008A1FC 0008713C  38 00 FF FF */	li r0, -1
/* 8008A200 00087140  90 17 00 00 */	stw r0, 0(r23)
lbl_8008A204:
/* 8008A204 00087144  3B 7B FF FF */	addi r27, r27, -1
lbl_8008A208:
/* 8008A208 00087148  2C 1B 00 00 */	cmpwi r27, 0
/* 8008A20C 0008714C  41 82 00 18 */	beq lbl_8008A224
/* 8008A210 00087150  80 17 00 00 */	lwz r0, 0(r23)
/* 8008A214 00087154  2C 00 FF FF */	cmpwi r0, -1
/* 8008A218 00087158  40 82 00 0C */	bne lbl_8008A224
/* 8008A21C 0008715C  2C 1E 00 00 */	cmpwi r30, 0
/* 8008A220 00087160  41 82 FE C8 */	beq lbl_8008A0E8
lbl_8008A224:
/* 8008A224 00087164  80 17 00 00 */	lwz r0, 0(r23)
/* 8008A228 00087168  2C 00 FF FF */	cmpwi r0, -1
/* 8008A22C 0008716C  40 82 00 08 */	bne lbl_8008A234
/* 8008A230 00087170  3B C0 08 00 */	li r30, 0x800
lbl_8008A234:
/* 8008A234 00087174  7F C3 F3 78 */	mr r3, r30
/* 8008A238 00087178  BA C1 00 10 */	lmw r22, 0x10(r1)
/* 8008A23C 0008717C  38 21 00 38 */	addi r1, r1, 0x38
/* 8008A240 00087180  80 01 00 04 */	lwz r0, 4(r1)
/* 8008A244 00087184  7C 08 03 A6 */	mtlr r0
/* 8008A248 00087188  4E 80 00 20 */	blr 
