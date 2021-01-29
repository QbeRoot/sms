.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global GDSetCurrentMtx
GDSetCurrentMtx:
/* 800B286C 000AF7AC  7C 08 02 A6 */	mflr r0
/* 800B2870 000AF7B0  54 8B 30 32 */	slwi r11, r4, 6
/* 800B2874 000AF7B4  90 01 00 04 */	stw r0, 4(r1)
/* 800B2878 000AF7B8  55 29 30 32 */	slwi r9, r9, 6
/* 800B287C 000AF7BC  54 C6 90 1A */	slwi r6, r6, 0x12
/* 800B2880 000AF7C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800B2884 000AF7C4  54 E7 C0 0E */	slwi r7, r7, 0x18
/* 800B2888 000AF7C8  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 800B288C 000AF7CC  82 E1 00 58 */	lwz r23, 0x58(r1)
/* 800B2890 000AF7D0  81 8D 95 B8 */	lwz r12, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2894 000AF7D4  80 8C 00 08 */	lwz r4, 8(r12)
/* 800B2898 000AF7D8  80 0C 00 0C */	lwz r0, 0xc(r12)
/* 800B289C 000AF7DC  54 AC 60 26 */	slwi r12, r5, 0xc
/* 800B28A0 000AF7E0  7C 65 5B 78 */	or r5, r3, r11
/* 800B28A4 000AF7E4  38 64 00 01 */	addi r3, r4, 1
/* 800B28A8 000AF7E8  7C 03 00 40 */	cmplw r3, r0
/* 800B28AC 000AF7EC  7D 84 2B 78 */	or r4, r12, r5
/* 800B28B0 000AF7F0  7C C5 23 78 */	or r5, r6, r4
/* 800B28B4 000AF7F4  55 43 60 26 */	slwi r3, r10, 0xc
/* 800B28B8 000AF7F8  7D 00 4B 78 */	or r0, r8, r9
/* 800B28BC 000AF7FC  56 E4 90 1A */	slwi r4, r23, 0x12
/* 800B28C0 000AF800  7C 60 03 78 */	or r0, r3, r0
/* 800B28C4 000AF804  7C F8 2B 78 */	or r24, r7, r5
/* 800B28C8 000AF808  7C 97 03 78 */	or r23, r4, r0
/* 800B28CC 000AF80C  40 81 00 08 */	ble lbl_800B28D4
/* 800B28D0 000AF810  4B FF C8 85 */	bl GDOverflowed
lbl_800B28D4:
/* 800B28D4 000AF814  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B28D8 000AF818  38 A0 00 08 */	li r5, 8
/* 800B28DC 000AF81C  80 64 00 08 */	lwz r3, 8(r4)
/* 800B28E0 000AF820  38 03 00 01 */	addi r0, r3, 1
/* 800B28E4 000AF824  90 04 00 08 */	stw r0, 8(r4)
/* 800B28E8 000AF828  98 A3 00 00 */	stb r5, 0(r3)
/* 800B28EC 000AF82C  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B28F0 000AF830  80 64 00 08 */	lwz r3, 8(r4)
/* 800B28F4 000AF834  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B28F8 000AF838  38 63 00 01 */	addi r3, r3, 1
/* 800B28FC 000AF83C  7C 03 00 40 */	cmplw r3, r0
/* 800B2900 000AF840  40 81 00 08 */	ble lbl_800B2908
/* 800B2904 000AF844  4B FF C8 51 */	bl GDOverflowed
lbl_800B2908:
/* 800B2908 000AF848  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B290C 000AF84C  38 A0 00 30 */	li r5, 0x30
/* 800B2910 000AF850  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2914 000AF854  38 03 00 01 */	addi r0, r3, 1
/* 800B2918 000AF858  90 04 00 08 */	stw r0, 8(r4)
/* 800B291C 000AF85C  98 A3 00 00 */	stb r5, 0(r3)
/* 800B2920 000AF860  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2924 000AF864  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2928 000AF868  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B292C 000AF86C  38 63 00 04 */	addi r3, r3, 4
/* 800B2930 000AF870  7C 03 00 40 */	cmplw r3, r0
/* 800B2934 000AF874  40 81 00 08 */	ble lbl_800B293C
/* 800B2938 000AF878  4B FF C8 1D */	bl GDOverflowed
lbl_800B293C:
/* 800B293C 000AF87C  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2940 000AF880  57 1F 46 3E */	srwi r31, r24, 0x18
/* 800B2944 000AF884  57 1E 86 3E */	rlwinm r30, r24, 0x10, 0x18, 0x1f
/* 800B2948 000AF888  80 64 00 08 */	lwz r3, 8(r4)
/* 800B294C 000AF88C  57 1D C6 3E */	rlwinm r29, r24, 0x18, 0x18, 0x1f
/* 800B2950 000AF890  57 1C 06 3E */	clrlwi r28, r24, 0x18
/* 800B2954 000AF894  38 03 00 01 */	addi r0, r3, 1
/* 800B2958 000AF898  90 04 00 08 */	stw r0, 8(r4)
/* 800B295C 000AF89C  9B E3 00 00 */	stb r31, 0(r3)
/* 800B2960 000AF8A0  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2964 000AF8A4  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2968 000AF8A8  38 03 00 01 */	addi r0, r3, 1
/* 800B296C 000AF8AC  90 04 00 08 */	stw r0, 8(r4)
/* 800B2970 000AF8B0  9B C3 00 00 */	stb r30, 0(r3)
/* 800B2974 000AF8B4  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2978 000AF8B8  80 64 00 08 */	lwz r3, 8(r4)
/* 800B297C 000AF8BC  38 03 00 01 */	addi r0, r3, 1
/* 800B2980 000AF8C0  90 04 00 08 */	stw r0, 8(r4)
/* 800B2984 000AF8C4  9B A3 00 00 */	stb r29, 0(r3)
/* 800B2988 000AF8C8  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B298C 000AF8CC  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2990 000AF8D0  38 03 00 01 */	addi r0, r3, 1
/* 800B2994 000AF8D4  90 04 00 08 */	stw r0, 8(r4)
/* 800B2998 000AF8D8  9B 03 00 00 */	stb r24, 0(r3)
/* 800B299C 000AF8DC  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B29A0 000AF8E0  80 64 00 08 */	lwz r3, 8(r4)
/* 800B29A4 000AF8E4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B29A8 000AF8E8  38 63 00 01 */	addi r3, r3, 1
/* 800B29AC 000AF8EC  7C 03 00 40 */	cmplw r3, r0
/* 800B29B0 000AF8F0  40 81 00 08 */	ble lbl_800B29B8
/* 800B29B4 000AF8F4  4B FF C7 A1 */	bl GDOverflowed
lbl_800B29B8:
/* 800B29B8 000AF8F8  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B29BC 000AF8FC  38 A0 00 08 */	li r5, 8
/* 800B29C0 000AF900  80 64 00 08 */	lwz r3, 8(r4)
/* 800B29C4 000AF904  38 03 00 01 */	addi r0, r3, 1
/* 800B29C8 000AF908  90 04 00 08 */	stw r0, 8(r4)
/* 800B29CC 000AF90C  98 A3 00 00 */	stb r5, 0(r3)
/* 800B29D0 000AF910  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B29D4 000AF914  80 64 00 08 */	lwz r3, 8(r4)
/* 800B29D8 000AF918  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B29DC 000AF91C  38 63 00 01 */	addi r3, r3, 1
/* 800B29E0 000AF920  7C 03 00 40 */	cmplw r3, r0
/* 800B29E4 000AF924  40 81 00 08 */	ble lbl_800B29EC
/* 800B29E8 000AF928  4B FF C7 6D */	bl GDOverflowed
lbl_800B29EC:
/* 800B29EC 000AF92C  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B29F0 000AF930  38 A0 00 40 */	li r5, 0x40
/* 800B29F4 000AF934  80 64 00 08 */	lwz r3, 8(r4)
/* 800B29F8 000AF938  38 03 00 01 */	addi r0, r3, 1
/* 800B29FC 000AF93C  90 04 00 08 */	stw r0, 8(r4)
/* 800B2A00 000AF940  98 A3 00 00 */	stb r5, 0(r3)
/* 800B2A04 000AF944  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2A08 000AF948  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2A0C 000AF94C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B2A10 000AF950  38 63 00 04 */	addi r3, r3, 4
/* 800B2A14 000AF954  7C 03 00 40 */	cmplw r3, r0
/* 800B2A18 000AF958  40 81 00 08 */	ble lbl_800B2A20
/* 800B2A1C 000AF95C  4B FF C7 39 */	bl GDOverflowed
lbl_800B2A20:
/* 800B2A20 000AF960  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2A24 000AF964  56 FB 46 3E */	srwi r27, r23, 0x18
/* 800B2A28 000AF968  56 FA 86 3E */	rlwinm r26, r23, 0x10, 0x18, 0x1f
/* 800B2A2C 000AF96C  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2A30 000AF970  56 F9 C6 3E */	rlwinm r25, r23, 0x18, 0x18, 0x1f
/* 800B2A34 000AF974  56 F8 06 3E */	clrlwi r24, r23, 0x18
/* 800B2A38 000AF978  38 03 00 01 */	addi r0, r3, 1
/* 800B2A3C 000AF97C  90 04 00 08 */	stw r0, 8(r4)
/* 800B2A40 000AF980  9B 63 00 00 */	stb r27, 0(r3)
/* 800B2A44 000AF984  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2A48 000AF988  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2A4C 000AF98C  38 03 00 01 */	addi r0, r3, 1
/* 800B2A50 000AF990  90 04 00 08 */	stw r0, 8(r4)
/* 800B2A54 000AF994  9B 43 00 00 */	stb r26, 0(r3)
/* 800B2A58 000AF998  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2A5C 000AF99C  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2A60 000AF9A0  38 03 00 01 */	addi r0, r3, 1
/* 800B2A64 000AF9A4  90 04 00 08 */	stw r0, 8(r4)
/* 800B2A68 000AF9A8  9B 23 00 00 */	stb r25, 0(r3)
/* 800B2A6C 000AF9AC  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2A70 000AF9B0  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2A74 000AF9B4  38 03 00 01 */	addi r0, r3, 1
/* 800B2A78 000AF9B8  90 04 00 08 */	stw r0, 8(r4)
/* 800B2A7C 000AF9BC  9A E3 00 00 */	stb r23, 0(r3)
/* 800B2A80 000AF9C0  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2A84 000AF9C4  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2A88 000AF9C8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B2A8C 000AF9CC  38 63 00 01 */	addi r3, r3, 1
/* 800B2A90 000AF9D0  7C 03 00 40 */	cmplw r3, r0
/* 800B2A94 000AF9D4  40 81 00 08 */	ble lbl_800B2A9C
/* 800B2A98 000AF9D8  4B FF C6 BD */	bl GDOverflowed
lbl_800B2A9C:
/* 800B2A9C 000AF9DC  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2AA0 000AF9E0  38 A0 00 10 */	li r5, 0x10
/* 800B2AA4 000AF9E4  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2AA8 000AF9E8  38 03 00 01 */	addi r0, r3, 1
/* 800B2AAC 000AF9EC  90 04 00 08 */	stw r0, 8(r4)
/* 800B2AB0 000AF9F0  98 A3 00 00 */	stb r5, 0(r3)
/* 800B2AB4 000AF9F4  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2AB8 000AF9F8  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2ABC 000AF9FC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B2AC0 000AFA00  38 63 00 02 */	addi r3, r3, 2
/* 800B2AC4 000AFA04  7C 03 00 40 */	cmplw r3, r0
/* 800B2AC8 000AFA08  40 81 00 08 */	ble lbl_800B2AD0
/* 800B2ACC 000AFA0C  4B FF C6 89 */	bl GDOverflowed
lbl_800B2AD0:
/* 800B2AD0 000AFA10  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2AD4 000AFA14  38 C0 00 00 */	li r6, 0
/* 800B2AD8 000AFA18  38 A0 00 01 */	li r5, 1
/* 800B2ADC 000AFA1C  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2AE0 000AFA20  38 03 00 01 */	addi r0, r3, 1
/* 800B2AE4 000AFA24  90 04 00 08 */	stw r0, 8(r4)
/* 800B2AE8 000AFA28  98 C3 00 00 */	stb r6, 0(r3)
/* 800B2AEC 000AFA2C  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2AF0 000AFA30  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2AF4 000AFA34  38 03 00 01 */	addi r0, r3, 1
/* 800B2AF8 000AFA38  90 04 00 08 */	stw r0, 8(r4)
/* 800B2AFC 000AFA3C  98 A3 00 00 */	stb r5, 0(r3)
/* 800B2B00 000AFA40  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2B04 000AFA44  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2B08 000AFA48  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B2B0C 000AFA4C  38 63 00 02 */	addi r3, r3, 2
/* 800B2B10 000AFA50  7C 03 00 40 */	cmplw r3, r0
/* 800B2B14 000AFA54  40 81 00 08 */	ble lbl_800B2B1C
/* 800B2B18 000AFA58  4B FF C6 3D */	bl GDOverflowed
lbl_800B2B1C:
/* 800B2B1C 000AFA5C  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2B20 000AFA60  38 C0 00 10 */	li r6, 0x10
/* 800B2B24 000AFA64  38 A0 00 18 */	li r5, 0x18
/* 800B2B28 000AFA68  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2B2C 000AFA6C  38 03 00 01 */	addi r0, r3, 1
/* 800B2B30 000AFA70  90 04 00 08 */	stw r0, 8(r4)
/* 800B2B34 000AFA74  98 C3 00 00 */	stb r6, 0(r3)
/* 800B2B38 000AFA78  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2B3C 000AFA7C  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2B40 000AFA80  38 03 00 01 */	addi r0, r3, 1
/* 800B2B44 000AFA84  90 04 00 08 */	stw r0, 8(r4)
/* 800B2B48 000AFA88  98 A3 00 00 */	stb r5, 0(r3)
/* 800B2B4C 000AFA8C  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2B50 000AFA90  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2B54 000AFA94  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B2B58 000AFA98  38 63 00 04 */	addi r3, r3, 4
/* 800B2B5C 000AFA9C  7C 03 00 40 */	cmplw r3, r0
/* 800B2B60 000AFAA0  40 81 00 08 */	ble lbl_800B2B68
/* 800B2B64 000AFAA4  4B FF C5 F1 */	bl GDOverflowed
lbl_800B2B68:
/* 800B2B68 000AFAA8  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2B6C 000AFAAC  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2B70 000AFAB0  38 03 00 01 */	addi r0, r3, 1
/* 800B2B74 000AFAB4  90 04 00 08 */	stw r0, 8(r4)
/* 800B2B78 000AFAB8  9B E3 00 00 */	stb r31, 0(r3)
/* 800B2B7C 000AFABC  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2B80 000AFAC0  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2B84 000AFAC4  38 03 00 01 */	addi r0, r3, 1
/* 800B2B88 000AFAC8  90 04 00 08 */	stw r0, 8(r4)
/* 800B2B8C 000AFACC  9B C3 00 00 */	stb r30, 0(r3)
/* 800B2B90 000AFAD0  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2B94 000AFAD4  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2B98 000AFAD8  38 03 00 01 */	addi r0, r3, 1
/* 800B2B9C 000AFADC  90 04 00 08 */	stw r0, 8(r4)
/* 800B2BA0 000AFAE0  9B A3 00 00 */	stb r29, 0(r3)
/* 800B2BA4 000AFAE4  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2BA8 000AFAE8  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2BAC 000AFAEC  38 03 00 01 */	addi r0, r3, 1
/* 800B2BB0 000AFAF0  90 04 00 08 */	stw r0, 8(r4)
/* 800B2BB4 000AFAF4  9B 83 00 00 */	stb r28, 0(r3)
/* 800B2BB8 000AFAF8  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2BBC 000AFAFC  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2BC0 000AFB00  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B2BC4 000AFB04  38 63 00 04 */	addi r3, r3, 4
/* 800B2BC8 000AFB08  7C 03 00 40 */	cmplw r3, r0
/* 800B2BCC 000AFB0C  40 81 00 08 */	ble lbl_800B2BD4
/* 800B2BD0 000AFB10  4B FF C5 85 */	bl GDOverflowed
lbl_800B2BD4:
/* 800B2BD4 000AFB14  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2BD8 000AFB18  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2BDC 000AFB1C  38 03 00 01 */	addi r0, r3, 1
/* 800B2BE0 000AFB20  90 04 00 08 */	stw r0, 8(r4)
/* 800B2BE4 000AFB24  9B 63 00 00 */	stb r27, 0(r3)
/* 800B2BE8 000AFB28  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2BEC 000AFB2C  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2BF0 000AFB30  38 03 00 01 */	addi r0, r3, 1
/* 800B2BF4 000AFB34  90 04 00 08 */	stw r0, 8(r4)
/* 800B2BF8 000AFB38  9B 43 00 00 */	stb r26, 0(r3)
/* 800B2BFC 000AFB3C  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2C00 000AFB40  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2C04 000AFB44  38 03 00 01 */	addi r0, r3, 1
/* 800B2C08 000AFB48  90 04 00 08 */	stw r0, 8(r4)
/* 800B2C0C 000AFB4C  9B 23 00 00 */	stb r25, 0(r3)
/* 800B2C10 000AFB50  80 8D 95 B8 */	lwz r4, __GDCurrentDL-_SDA_BASE_(r13)
/* 800B2C14 000AFB54  80 64 00 08 */	lwz r3, 8(r4)
/* 800B2C18 000AFB58  38 03 00 01 */	addi r0, r3, 1
/* 800B2C1C 000AFB5C  90 04 00 08 */	stw r0, 8(r4)
/* 800B2C20 000AFB60  9B 03 00 00 */	stb r24, 0(r3)
/* 800B2C24 000AFB64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800B2C28 000AFB68  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 800B2C2C 000AFB6C  38 21 00 50 */	addi r1, r1, 0x50
/* 800B2C30 000AFB70  7C 08 03 A6 */	mtlr r0
/* 800B2C34 000AFB74  4E 80 00 20 */	blr 