.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__10JKRArchiveFv
__ct__10JKRArchiveFv:
/* 8000566C 000025AC  7C 08 02 A6 */	mflr r0
/* 80005670 000025B0  90 01 00 04 */	stw r0, 4(r1)
/* 80005674 000025B4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80005678 000025B8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000567C 000025BC  7C 7F 1B 78 */	mr r31, r3
/* 80005680 000025C0  48 00 64 51 */	bl __ct__13JKRFileLoaderFv
/* 80005684 000025C4  3C 60 80 3B */	lis r3, __vt__10JKRArchive@ha
/* 80005688 000025C8  38 03 84 38 */	addi r0, r3, __vt__10JKRArchive@l
/* 8000568C 000025CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80005690 000025D0  38 60 00 00 */	li r3, 0
/* 80005694 000025D4  38 00 00 01 */	li r0, 1
/* 80005698 000025D8  98 7F 00 30 */	stb r3, 0x30(r31)
/* 8000569C 000025DC  7F E3 FB 78 */	mr r3, r31
/* 800056A0 000025E0  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 800056A4 000025E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800056A8 000025E8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800056AC 000025EC  38 21 00 18 */	addi r1, r1, 0x18
/* 800056B0 000025F0  7C 08 03 A6 */	mtlr r0
/* 800056B4 000025F4  4E 80 00 20 */	blr 

.global __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
__ct__10JKRArchiveFlQ210JKRArchive10EMountMode:
/* 800056B8 000025F8  7C 08 02 A6 */	mflr r0
/* 800056BC 000025FC  90 01 00 04 */	stw r0, 4(r1)
/* 800056C0 00002600  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800056C4 00002604  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800056C8 00002608  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800056CC 0000260C  3B C5 00 00 */	addi r30, r5, 0
/* 800056D0 00002610  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800056D4 00002614  3B A4 00 00 */	addi r29, r4, 0
/* 800056D8 00002618  90 61 00 08 */	stw r3, 8(r1)
/* 800056DC 0000261C  80 61 00 08 */	lwz r3, 8(r1)
/* 800056E0 00002620  48 00 63 F1 */	bl __ct__13JKRFileLoaderFv
/* 800056E4 00002624  3C 60 80 3B */	lis r3, __vt__10JKRArchive@ha
/* 800056E8 00002628  83 E1 00 08 */	lwz r31, 8(r1)
/* 800056EC 0000262C  38 03 84 38 */	addi r0, r3, __vt__10JKRArchive@l
/* 800056F0 00002630  90 1F 00 00 */	stw r0, 0(r31)
/* 800056F4 00002634  38 00 00 00 */	li r0, 0
/* 800056F8 00002638  38 7F 00 00 */	addi r3, r31, 0
/* 800056FC 0000263C  98 1F 00 30 */	stb r0, 0x30(r31)
/* 80005700 00002640  38 00 00 01 */	li r0, 1
/* 80005704 00002644  9B DF 00 3C */	stb r30, 0x3c(r31)
/* 80005708 00002648  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8000570C 0000264C  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80005710 00002650  48 00 6E 5D */	bl findFromRoot__7JKRHeapFPv
/* 80005714 00002654  90 7F 00 38 */	stw r3, 0x38(r31)
/* 80005718 00002658  38 7F 00 38 */	addi r3, r31, 0x38
/* 8000571C 0000265C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80005720 00002660  28 00 00 00 */	cmplwi r0, 0
/* 80005724 00002664  40 82 00 0C */	bne lbl_80005730
/* 80005728 00002668  80 0D 8D 6C */	lwz r0, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 8000572C 0000266C  90 03 00 00 */	stw r0, 0(r3)
lbl_80005730:
/* 80005730 00002670  80 61 00 08 */	lwz r3, 8(r1)
/* 80005734 00002674  93 A3 00 40 */	stw r29, 0x40(r3)
/* 80005738 00002678  80 0D 8D 60 */	lwz r0, sCurrentVolume__13JKRFileLoader-_SDA_BASE_(r13)
/* 8000573C 0000267C  28 00 00 00 */	cmplwi r0, 0
/* 80005740 00002680  40 82 00 10 */	bne lbl_80005750
/* 80005744 00002684  38 00 00 00 */	li r0, 0
/* 80005748 00002688  90 6D 8D 60 */	stw r3, sCurrentVolume__13JKRFileLoader-_SDA_BASE_(r13)
/* 8000574C 0000268C  90 0D 8D 00 */	stw r0, sCurrentDirID__10JKRArchive-_SDA_BASE_(r13)
lbl_80005750:
/* 80005750 00002690  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80005754 00002694  80 61 00 08 */	lwz r3, 8(r1)
/* 80005758 00002698  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000575C 0000269C  7C 08 03 A6 */	mtlr r0
/* 80005760 000026A0  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80005764 000026A4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80005768 000026A8  38 21 00 28 */	addi r1, r1, 0x28
/* 8000576C 000026AC  4E 80 00 20 */	blr 

.global __dt__10JKRArchiveFv
__dt__10JKRArchiveFv:
/* 80005770 000026B0  7C 08 02 A6 */	mflr r0
/* 80005774 000026B4  90 01 00 04 */	stw r0, 4(r1)
/* 80005778 000026B8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000577C 000026BC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80005780 000026C0  3B E4 00 00 */	addi r31, r4, 0
/* 80005784 000026C4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80005788 000026C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8000578C 000026CC  41 82 00 2C */	beq lbl_800057B8
/* 80005790 000026D0  3C 60 80 3B */	lis r3, __vt__10JKRArchive@ha
/* 80005794 000026D4  38 03 84 38 */	addi r0, r3, __vt__10JKRArchive@l
/* 80005798 000026D8  90 1E 00 00 */	stw r0, 0(r30)
/* 8000579C 000026DC  38 7E 00 00 */	addi r3, r30, 0
/* 800057A0 000026E0  38 80 00 00 */	li r4, 0
/* 800057A4 000026E4  48 00 63 8D */	bl __dt__13JKRFileLoaderFv
/* 800057A8 000026E8  7F E0 07 35 */	extsh. r0, r31
/* 800057AC 000026EC  40 81 00 0C */	ble lbl_800057B8
/* 800057B0 000026F0  7F C3 F3 78 */	mr r3, r30
/* 800057B4 000026F4  48 00 72 FD */	bl __dl__FPv
lbl_800057B8:
/* 800057B8 000026F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800057BC 000026FC  7F C3 F3 78 */	mr r3, r30
/* 800057C0 00002700  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800057C4 00002704  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800057C8 00002708  7C 08 03 A6 */	mtlr r0
/* 800057CC 0000270C  38 21 00 18 */	addi r1, r1, 0x18
/* 800057D0 00002710  4E 80 00 20 */	blr 

.global findDirectory__10JKRArchiveCFPCcUl
findDirectory__10JKRArchiveCFPCcUl:
/* 800057D4 00002714  7C 08 02 A6 */	mflr r0
/* 800057D8 00002718  90 01 00 04 */	stw r0, 4(r1)
/* 800057DC 0000271C  94 21 FD B8 */	stwu r1, -0x248(r1)
/* 800057E0 00002720  BF 41 02 30 */	stmw r26, 0x230(r1)
/* 800057E4 00002724  7C 9D 23 79 */	or. r29, r4, r4
/* 800057E8 00002728  3B 83 00 00 */	addi r28, r3, 0
/* 800057EC 0000272C  3B 45 00 00 */	addi r26, r5, 0
/* 800057F0 00002730  40 82 00 14 */	bne lbl_80005804
/* 800057F4 00002734  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 800057F8 00002738  57 40 20 36 */	slwi r0, r26, 4
/* 800057FC 0000273C  7C 63 02 14 */	add r3, r3, r0
/* 80005800 00002740  48 00 01 80 */	b lbl_80005980
lbl_80005804:
/* 80005804 00002744  38 9D 00 00 */	addi r4, r29, 0
/* 80005808 00002748  38 61 01 28 */	addi r3, r1, 0x128
/* 8000580C 0000274C  38 A0 00 2F */	li r5, 0x2f
/* 80005810 00002750  48 00 05 3D */	bl store__Q210JKRArchive8CArcNameFPCcc
/* 80005814 00002754  80 BC 00 48 */	lwz r5, 0x48(r28)
/* 80005818 00002758  57 40 20 36 */	slwi r0, r26, 4
/* 8000581C 0000275C  80 9C 00 4C */	lwz r4, 0x4c(r28)
/* 80005820 00002760  3B A3 00 00 */	addi r29, r3, 0
/* 80005824 00002764  7F E5 02 14 */	add r31, r5, r0
/* 80005828 00002768  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8000582C 0000276C  3B 41 01 2C */	addi r26, r1, 0x12c
/* 80005830 00002770  3B C0 00 00 */	li r30, 0
/* 80005834 00002774  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80005838 00002778  7F 64 02 14 */	add r27, r4, r0
/* 8000583C 0000277C  48 00 01 34 */	b lbl_80005970
lbl_80005840:
/* 80005840 00002780  A0 61 01 28 */	lhz r3, 0x128(r1)
/* 80005844 00002784  A0 1B 00 02 */	lhz r0, 2(r27)
/* 80005848 00002788  80 9B 00 04 */	lwz r4, 4(r27)
/* 8000584C 0000278C  7C 03 00 40 */	cmplw r3, r0
/* 80005850 00002790  54 83 02 3E */	clrlwi r3, r4, 8
/* 80005854 00002794  41 82 00 0C */	beq lbl_80005860
/* 80005858 00002798  38 00 00 00 */	li r0, 0
/* 8000585C 0000279C  48 00 00 20 */	b lbl_8000587C
lbl_80005860:
/* 80005860 000027A0  80 1C 00 50 */	lwz r0, 0x50(r28)
/* 80005864 000027A4  38 9A 00 00 */	addi r4, r26, 0
/* 80005868 000027A8  7C 60 1A 14 */	add r3, r0, r3
/* 8000586C 000027AC  48 08 03 F1 */	bl strcmp
/* 80005870 000027B0  7C 03 00 D0 */	neg r0, r3
/* 80005874 000027B4  7C 00 00 34 */	cntlzw r0, r0
/* 80005878 000027B8  54 00 D9 7E */	srwi r0, r0, 5
lbl_8000587C:
/* 8000587C 000027BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80005880 000027C0  41 82 00 E8 */	beq lbl_80005968
/* 80005884 000027C4  80 1B 00 04 */	lwz r0, 4(r27)
/* 80005888 000027C8  54 00 47 BD */	rlwinm. r0, r0, 8, 0x1e, 0x1e
/* 8000588C 000027CC  41 82 00 F0 */	beq lbl_8000597C
/* 80005890 000027D0  28 1D 00 00 */	cmplwi r29, 0
/* 80005894 000027D4  83 5B 00 08 */	lwz r26, 8(r27)
/* 80005898 000027D8  7F A4 EB 78 */	mr r4, r29
/* 8000589C 000027DC  40 82 00 14 */	bne lbl_800058B0
/* 800058A0 000027E0  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 800058A4 000027E4  57 40 20 36 */	slwi r0, r26, 4
/* 800058A8 000027E8  7C 63 02 14 */	add r3, r3, r0
/* 800058AC 000027EC  48 00 00 D4 */	b lbl_80005980
lbl_800058B0:
/* 800058B0 000027F0  38 61 00 1C */	addi r3, r1, 0x1c
/* 800058B4 000027F4  38 A0 00 2F */	li r5, 0x2f
/* 800058B8 000027F8  48 00 04 95 */	bl store__Q210JKRArchive8CArcNameFPCcc
/* 800058BC 000027FC  80 BC 00 48 */	lwz r5, 0x48(r28)
/* 800058C0 00002800  57 40 20 36 */	slwi r0, r26, 4
/* 800058C4 00002804  80 9C 00 4C */	lwz r4, 0x4c(r28)
/* 800058C8 00002808  3B A3 00 00 */	addi r29, r3, 0
/* 800058CC 0000280C  7F C5 02 14 */	add r30, r5, r0
/* 800058D0 00002810  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800058D4 00002814  3B E1 00 20 */	addi r31, r1, 0x20
/* 800058D8 00002818  3B 60 00 00 */	li r27, 0
/* 800058DC 0000281C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800058E0 00002820  7F 44 02 14 */	add r26, r4, r0
/* 800058E4 00002824  48 00 00 70 */	b lbl_80005954
lbl_800058E8:
/* 800058E8 00002828  A0 61 00 1C */	lhz r3, 0x1c(r1)
/* 800058EC 0000282C  A0 1A 00 02 */	lhz r0, 2(r26)
/* 800058F0 00002830  80 9A 00 04 */	lwz r4, 4(r26)
/* 800058F4 00002834  7C 03 00 40 */	cmplw r3, r0
/* 800058F8 00002838  54 83 02 3E */	clrlwi r3, r4, 8
/* 800058FC 0000283C  41 82 00 0C */	beq lbl_80005908
/* 80005900 00002840  38 00 00 00 */	li r0, 0
/* 80005904 00002844  48 00 00 20 */	b lbl_80005924
lbl_80005908:
/* 80005908 00002848  80 1C 00 50 */	lwz r0, 0x50(r28)
/* 8000590C 0000284C  38 9F 00 00 */	addi r4, r31, 0
/* 80005910 00002850  7C 60 1A 14 */	add r3, r0, r3
/* 80005914 00002854  48 08 03 49 */	bl strcmp
/* 80005918 00002858  7C 03 00 D0 */	neg r0, r3
/* 8000591C 0000285C  7C 00 00 34 */	cntlzw r0, r0
/* 80005920 00002860  54 00 D9 7E */	srwi r0, r0, 5
lbl_80005924:
/* 80005924 00002864  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80005928 00002868  41 82 00 24 */	beq lbl_8000594C
/* 8000592C 0000286C  80 1A 00 04 */	lwz r0, 4(r26)
/* 80005930 00002870  54 00 47 BD */	rlwinm. r0, r0, 8, 0x1e, 0x1e
/* 80005934 00002874  41 82 00 2C */	beq lbl_80005960
/* 80005938 00002878  80 BA 00 08 */	lwz r5, 8(r26)
/* 8000593C 0000287C  38 7C 00 00 */	addi r3, r28, 0
/* 80005940 00002880  38 9D 00 00 */	addi r4, r29, 0
/* 80005944 00002884  4B FF FE 91 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 80005948 00002888  48 00 00 38 */	b lbl_80005980
lbl_8000594C:
/* 8000594C 0000288C  3B 5A 00 14 */	addi r26, r26, 0x14
/* 80005950 00002890  3B 7B 00 01 */	addi r27, r27, 1
lbl_80005954:
/* 80005954 00002894  A0 1E 00 0A */	lhz r0, 0xa(r30)
/* 80005958 00002898  7C 1B 00 00 */	cmpw r27, r0
/* 8000595C 0000289C  41 80 FF 8C */	blt lbl_800058E8
lbl_80005960:
/* 80005960 000028A0  38 60 00 00 */	li r3, 0
/* 80005964 000028A4  48 00 00 1C */	b lbl_80005980
lbl_80005968:
/* 80005968 000028A8  3B 7B 00 14 */	addi r27, r27, 0x14
/* 8000596C 000028AC  3B DE 00 01 */	addi r30, r30, 1
lbl_80005970:
/* 80005970 000028B0  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80005974 000028B4  7C 1E 00 00 */	cmpw r30, r0
/* 80005978 000028B8  41 80 FE C8 */	blt lbl_80005840
lbl_8000597C:
/* 8000597C 000028BC  38 60 00 00 */	li r3, 0
lbl_80005980:
/* 80005980 000028C0  BB 41 02 30 */	lmw r26, 0x230(r1)
/* 80005984 000028C4  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 80005988 000028C8  38 21 02 48 */	addi r1, r1, 0x248
/* 8000598C 000028CC  7C 08 03 A6 */	mtlr r0
/* 80005990 000028D0  4E 80 00 20 */	blr 

.global findTypeResource__10JKRArchiveCFUlPCc
findTypeResource__10JKRArchiveCFUlPCc:
/* 80005994 000028D4  7C 08 02 A6 */	mflr r0
/* 80005998 000028D8  90 01 00 04 */	stw r0, 4(r1)
/* 8000599C 000028DC  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 800059A0 000028E0  BF 61 01 2C */	stmw r27, 0x12c(r1)
/* 800059A4 000028E4  7C 9B 23 79 */	or. r27, r4, r4
/* 800059A8 000028E8  3B A3 00 00 */	addi r29, r3, 0
/* 800059AC 000028EC  41 82 00 C8 */	beq lbl_80005A74
/* 800059B0 000028F0  38 61 00 20 */	addi r3, r1, 0x20
/* 800059B4 000028F4  38 85 00 00 */	addi r4, r5, 0
/* 800059B8 000028F8  48 00 02 F5 */	bl store__Q210JKRArchive8CArcNameFPCc
/* 800059BC 000028FC  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 800059C0 00002900  83 9D 00 48 */	lwz r28, 0x48(r29)
/* 800059C4 00002904  80 03 00 00 */	lwz r0, 0(r3)
/* 800059C8 00002908  28 00 00 00 */	cmplwi r0, 0
/* 800059CC 0000290C  7C 09 03 A6 */	mtctr r0
/* 800059D0 00002910  40 81 00 1C */	ble lbl_800059EC
lbl_800059D4:
/* 800059D4 00002914  80 1C 00 00 */	lwz r0, 0(r28)
/* 800059D8 00002918  7C 00 D8 40 */	cmplw r0, r27
/* 800059DC 0000291C  40 82 00 08 */	bne lbl_800059E4
/* 800059E0 00002920  48 00 00 10 */	b lbl_800059F0
lbl_800059E4:
/* 800059E4 00002924  3B 9C 00 10 */	addi r28, r28, 0x10
/* 800059E8 00002928  42 00 FF EC */	bdnz lbl_800059D4
lbl_800059EC:
/* 800059EC 0000292C  3B 80 00 00 */	li r28, 0
lbl_800059F0:
/* 800059F0 00002930  28 1C 00 00 */	cmplwi r28, 0
/* 800059F4 00002934  41 82 00 80 */	beq lbl_80005A74
/* 800059F8 00002938  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 800059FC 0000293C  3B E1 00 24 */	addi r31, r1, 0x24
/* 80005A00 00002940  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 80005A04 00002944  3B C0 00 00 */	li r30, 0
/* 80005A08 00002948  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80005A0C 0000294C  7F 63 02 14 */	add r27, r3, r0
/* 80005A10 00002950  48 00 00 58 */	b lbl_80005A68
lbl_80005A14:
/* 80005A14 00002954  A0 61 00 20 */	lhz r3, 0x20(r1)
/* 80005A18 00002958  A0 1B 00 02 */	lhz r0, 2(r27)
/* 80005A1C 0000295C  80 9B 00 04 */	lwz r4, 4(r27)
/* 80005A20 00002960  7C 03 00 40 */	cmplw r3, r0
/* 80005A24 00002964  54 83 02 3E */	clrlwi r3, r4, 8
/* 80005A28 00002968  41 82 00 0C */	beq lbl_80005A34
/* 80005A2C 0000296C  38 00 00 00 */	li r0, 0
/* 80005A30 00002970  48 00 00 20 */	b lbl_80005A50
lbl_80005A34:
/* 80005A34 00002974  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 80005A38 00002978  38 9F 00 00 */	addi r4, r31, 0
/* 80005A3C 0000297C  7C 60 1A 14 */	add r3, r0, r3
/* 80005A40 00002980  48 08 02 1D */	bl strcmp
/* 80005A44 00002984  7C 03 00 D0 */	neg r0, r3
/* 80005A48 00002988  7C 00 00 34 */	cntlzw r0, r0
/* 80005A4C 0000298C  54 00 D9 7E */	srwi r0, r0, 5
lbl_80005A50:
/* 80005A50 00002990  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80005A54 00002994  41 82 00 0C */	beq lbl_80005A60
/* 80005A58 00002998  7F 63 DB 78 */	mr r3, r27
/* 80005A5C 0000299C  48 00 00 1C */	b lbl_80005A78
lbl_80005A60:
/* 80005A60 000029A0  3B 7B 00 14 */	addi r27, r27, 0x14
/* 80005A64 000029A4  3B DE 00 01 */	addi r30, r30, 1
lbl_80005A68:
/* 80005A68 000029A8  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 80005A6C 000029AC  7C 1E 00 00 */	cmpw r30, r0
/* 80005A70 000029B0  41 80 FF A4 */	blt lbl_80005A14
lbl_80005A74:
/* 80005A74 000029B4  38 60 00 00 */	li r3, 0
lbl_80005A78:
/* 80005A78 000029B8  BB 61 01 2C */	lmw r27, 0x12c(r1)
/* 80005A7C 000029BC  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80005A80 000029C0  38 21 01 40 */	addi r1, r1, 0x140
/* 80005A84 000029C4  7C 08 03 A6 */	mtlr r0
/* 80005A88 000029C8  4E 80 00 20 */	blr 

.global findFsResource__10JKRArchiveCFPCcUl
findFsResource__10JKRArchiveCFPCcUl:
/* 80005A8C 000029CC  7C 08 02 A6 */	mflr r0
/* 80005A90 000029D0  90 01 00 04 */	stw r0, 4(r1)
/* 80005A94 000029D4  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80005A98 000029D8  BF 41 01 28 */	stmw r26, 0x128(r1)
/* 80005A9C 000029DC  7C 9E 23 79 */	or. r30, r4, r4
/* 80005AA0 000029E0  3B A3 00 00 */	addi r29, r3, 0
/* 80005AA4 000029E4  3B 45 00 00 */	addi r26, r5, 0
/* 80005AA8 000029E8  41 82 00 D0 */	beq lbl_80005B78
/* 80005AAC 000029EC  38 9E 00 00 */	addi r4, r30, 0
/* 80005AB0 000029F0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80005AB4 000029F4  38 A0 00 2F */	li r5, 0x2f
/* 80005AB8 000029F8  48 00 02 95 */	bl store__Q210JKRArchive8CArcNameFPCcc
/* 80005ABC 000029FC  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 80005AC0 00002A00  57 40 20 36 */	slwi r0, r26, 4
/* 80005AC4 00002A04  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 80005AC8 00002A08  3B C3 00 00 */	addi r30, r3, 0
/* 80005ACC 00002A0C  7F E5 02 14 */	add r31, r5, r0
/* 80005AD0 00002A10  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80005AD4 00002A14  3B 81 00 20 */	addi r28, r1, 0x20
/* 80005AD8 00002A18  3B 40 00 00 */	li r26, 0
/* 80005ADC 00002A1C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80005AE0 00002A20  7F 64 02 14 */	add r27, r4, r0
/* 80005AE4 00002A24  48 00 00 88 */	b lbl_80005B6C
lbl_80005AE8:
/* 80005AE8 00002A28  A0 61 00 1C */	lhz r3, 0x1c(r1)
/* 80005AEC 00002A2C  A0 1B 00 02 */	lhz r0, 2(r27)
/* 80005AF0 00002A30  80 9B 00 04 */	lwz r4, 4(r27)
/* 80005AF4 00002A34  7C 03 00 40 */	cmplw r3, r0
/* 80005AF8 00002A38  54 83 02 3E */	clrlwi r3, r4, 8
/* 80005AFC 00002A3C  41 82 00 0C */	beq lbl_80005B08
/* 80005B00 00002A40  38 00 00 00 */	li r0, 0
/* 80005B04 00002A44  48 00 00 20 */	b lbl_80005B24
lbl_80005B08:
/* 80005B08 00002A48  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 80005B0C 00002A4C  38 9C 00 00 */	addi r4, r28, 0
/* 80005B10 00002A50  7C 60 1A 14 */	add r3, r0, r3
/* 80005B14 00002A54  48 08 01 49 */	bl strcmp
/* 80005B18 00002A58  7C 03 00 D0 */	neg r0, r3
/* 80005B1C 00002A5C  7C 00 00 34 */	cntlzw r0, r0
/* 80005B20 00002A60  54 00 D9 7E */	srwi r0, r0, 5
lbl_80005B24:
/* 80005B24 00002A64  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80005B28 00002A68  41 82 00 3C */	beq lbl_80005B64
/* 80005B2C 00002A6C  80 1B 00 04 */	lwz r0, 4(r27)
/* 80005B30 00002A70  54 00 47 BD */	rlwinm. r0, r0, 8, 0x1e, 0x1e
/* 80005B34 00002A74  41 82 00 18 */	beq lbl_80005B4C
/* 80005B38 00002A78  80 BB 00 08 */	lwz r5, 8(r27)
/* 80005B3C 00002A7C  38 7D 00 00 */	addi r3, r29, 0
/* 80005B40 00002A80  38 9E 00 00 */	addi r4, r30, 0
/* 80005B44 00002A84  4B FF FF 49 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 80005B48 00002A88  48 00 00 34 */	b lbl_80005B7C
lbl_80005B4C:
/* 80005B4C 00002A8C  28 1E 00 00 */	cmplwi r30, 0
/* 80005B50 00002A90  40 82 00 0C */	bne lbl_80005B5C
/* 80005B54 00002A94  7F 63 DB 78 */	mr r3, r27
/* 80005B58 00002A98  48 00 00 24 */	b lbl_80005B7C
lbl_80005B5C:
/* 80005B5C 00002A9C  38 60 00 00 */	li r3, 0
/* 80005B60 00002AA0  48 00 00 1C */	b lbl_80005B7C
lbl_80005B64:
/* 80005B64 00002AA4  3B 7B 00 14 */	addi r27, r27, 0x14
/* 80005B68 00002AA8  3B 5A 00 01 */	addi r26, r26, 1
lbl_80005B6C:
/* 80005B6C 00002AAC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80005B70 00002AB0  7C 1A 00 00 */	cmpw r26, r0
/* 80005B74 00002AB4  41 80 FF 74 */	blt lbl_80005AE8
lbl_80005B78:
/* 80005B78 00002AB8  38 60 00 00 */	li r3, 0
lbl_80005B7C:
/* 80005B7C 00002ABC  BB 41 01 28 */	lmw r26, 0x128(r1)
/* 80005B80 00002AC0  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80005B84 00002AC4  38 21 01 40 */	addi r1, r1, 0x140
/* 80005B88 00002AC8  7C 08 03 A6 */	mtlr r0
/* 80005B8C 00002ACC  4E 80 00 20 */	blr 

.global findIdxResource__10JKRArchiveCFUl
findIdxResource__10JKRArchiveCFUl:
/* 80005B90 00002AD0  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 80005B94 00002AD4  80 05 00 08 */	lwz r0, 8(r5)
/* 80005B98 00002AD8  7C 04 00 40 */	cmplw r4, r0
/* 80005B9C 00002ADC  40 80 00 14 */	bge lbl_80005BB0
/* 80005BA0 00002AE0  1C 04 00 14 */	mulli r0, r4, 0x14
/* 80005BA4 00002AE4  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 80005BA8 00002AE8  7C 63 02 14 */	add r3, r3, r0
/* 80005BAC 00002AEC  4E 80 00 20 */	blr 
lbl_80005BB0:
/* 80005BB0 00002AF0  38 60 00 00 */	li r3, 0
/* 80005BB4 00002AF4  4E 80 00 20 */	blr 

.global findNameResource__10JKRArchiveCFPCc
findNameResource__10JKRArchiveCFPCc:
/* 80005BB8 00002AF8  7C 08 02 A6 */	mflr r0
/* 80005BBC 00002AFC  90 01 00 04 */	stw r0, 4(r1)
/* 80005BC0 00002B00  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80005BC4 00002B04  93 E1 01 2C */	stw r31, 0x12c(r1)
/* 80005BC8 00002B08  93 C1 01 28 */	stw r30, 0x128(r1)
/* 80005BCC 00002B0C  93 A1 01 24 */	stw r29, 0x124(r1)
/* 80005BD0 00002B10  93 81 01 20 */	stw r28, 0x120(r1)
/* 80005BD4 00002B14  7C 7C 1B 78 */	mr r28, r3
/* 80005BD8 00002B18  83 C3 00 4C */	lwz r30, 0x4c(r3)
/* 80005BDC 00002B1C  38 61 00 18 */	addi r3, r1, 0x18
/* 80005BE0 00002B20  48 00 00 CD */	bl store__Q210JKRArchive8CArcNameFPCc
/* 80005BE4 00002B24  3B E1 00 1C */	addi r31, r1, 0x1c
/* 80005BE8 00002B28  3B A0 00 00 */	li r29, 0
/* 80005BEC 00002B2C  48 00 00 58 */	b lbl_80005C44
lbl_80005BF0:
/* 80005BF0 00002B30  A0 61 00 18 */	lhz r3, 0x18(r1)
/* 80005BF4 00002B34  A0 1E 00 02 */	lhz r0, 2(r30)
/* 80005BF8 00002B38  80 9E 00 04 */	lwz r4, 4(r30)
/* 80005BFC 00002B3C  7C 03 00 40 */	cmplw r3, r0
/* 80005C00 00002B40  54 83 02 3E */	clrlwi r3, r4, 8
/* 80005C04 00002B44  41 82 00 0C */	beq lbl_80005C10
/* 80005C08 00002B48  38 00 00 00 */	li r0, 0
/* 80005C0C 00002B4C  48 00 00 20 */	b lbl_80005C2C
lbl_80005C10:
/* 80005C10 00002B50  80 1C 00 50 */	lwz r0, 0x50(r28)
/* 80005C14 00002B54  38 9F 00 00 */	addi r4, r31, 0
/* 80005C18 00002B58  7C 60 1A 14 */	add r3, r0, r3
/* 80005C1C 00002B5C  48 08 00 41 */	bl strcmp
/* 80005C20 00002B60  7C 03 00 D0 */	neg r0, r3
/* 80005C24 00002B64  7C 00 00 34 */	cntlzw r0, r0
/* 80005C28 00002B68  54 00 D9 7E */	srwi r0, r0, 5
lbl_80005C2C:
/* 80005C2C 00002B6C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80005C30 00002B70  41 82 00 0C */	beq lbl_80005C3C
/* 80005C34 00002B74  7F C3 F3 78 */	mr r3, r30
/* 80005C38 00002B78  48 00 00 20 */	b lbl_80005C58
lbl_80005C3C:
/* 80005C3C 00002B7C  3B DE 00 14 */	addi r30, r30, 0x14
/* 80005C40 00002B80  3B BD 00 01 */	addi r29, r29, 1
lbl_80005C44:
/* 80005C44 00002B84  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 80005C48 00002B88  80 03 00 08 */	lwz r0, 8(r3)
/* 80005C4C 00002B8C  7C 1D 00 40 */	cmplw r29, r0
/* 80005C50 00002B90  41 80 FF A0 */	blt lbl_80005BF0
/* 80005C54 00002B94  38 60 00 00 */	li r3, 0
lbl_80005C58:
/* 80005C58 00002B98  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80005C5C 00002B9C  83 E1 01 2C */	lwz r31, 0x12c(r1)
/* 80005C60 00002BA0  83 C1 01 28 */	lwz r30, 0x128(r1)
/* 80005C64 00002BA4  7C 08 03 A6 */	mtlr r0
/* 80005C68 00002BA8  83 A1 01 24 */	lwz r29, 0x124(r1)
/* 80005C6C 00002BAC  83 81 01 20 */	lwz r28, 0x120(r1)
/* 80005C70 00002BB0  38 21 01 30 */	addi r1, r1, 0x130
/* 80005C74 00002BB4  4E 80 00 20 */	blr 

.global findPtrResource__10JKRArchiveCFPCv
findPtrResource__10JKRArchiveCFPCv:
/* 80005C78 00002BB8  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 80005C7C 00002BBC  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 80005C80 00002BC0  80 05 00 08 */	lwz r0, 8(r5)
/* 80005C84 00002BC4  28 00 00 00 */	cmplwi r0, 0
/* 80005C88 00002BC8  7C 09 03 A6 */	mtctr r0
/* 80005C8C 00002BCC  40 81 00 18 */	ble lbl_80005CA4
lbl_80005C90:
/* 80005C90 00002BD0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80005C94 00002BD4  7C 00 20 40 */	cmplw r0, r4
/* 80005C98 00002BD8  4D 82 00 20 */	beqlr 
/* 80005C9C 00002BDC  38 63 00 14 */	addi r3, r3, 0x14
/* 80005CA0 00002BE0  42 00 FF F0 */	bdnz lbl_80005C90
lbl_80005CA4:
/* 80005CA4 00002BE4  38 60 00 00 */	li r3, 0
/* 80005CA8 00002BE8  4E 80 00 20 */	blr 

.global store__Q210JKRArchive8CArcNameFPCc
store__Q210JKRArchive8CArcNameFPCc:
/* 80005CAC 00002BEC  7C 08 02 A6 */	mflr r0
/* 80005CB0 00002BF0  90 01 00 04 */	stw r0, 4(r1)
/* 80005CB4 00002BF4  38 00 00 00 */	li r0, 0
/* 80005CB8 00002BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80005CBC 00002BFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80005CC0 00002C00  3B E0 00 00 */	li r31, 0
/* 80005CC4 00002C04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80005CC8 00002C08  3B C4 00 00 */	addi r30, r4, 0
/* 80005CCC 00002C0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80005CD0 00002C10  3B A3 00 00 */	addi r29, r3, 0
/* 80005CD4 00002C14  B0 03 00 00 */	sth r0, 0(r3)
/* 80005CD8 00002C18  48 00 00 3C */	b lbl_80005D14
lbl_80005CDC:
/* 80005CDC 00002C1C  7C 63 07 74 */	extsb r3, r3
/* 80005CE0 00002C20  48 07 DB A5 */	bl tolower
/* 80005CE4 00002C24  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80005CE8 00002C28  2C 1F 01 00 */	cmpwi r31, 0x100
/* 80005CEC 00002C2C  1C 00 00 03 */	mulli r0, r0, 3
/* 80005CF0 00002C30  7C 03 02 14 */	add r0, r3, r0
/* 80005CF4 00002C34  B0 1D 00 00 */	sth r0, 0(r29)
/* 80005CF8 00002C38  40 80 00 18 */	bge lbl_80005D10
/* 80005CFC 00002C3C  38 9F 00 00 */	addi r4, r31, 0
/* 80005D00 00002C40  7C 63 07 74 */	extsb r3, r3
/* 80005D04 00002C44  38 04 00 04 */	addi r0, r4, 4
/* 80005D08 00002C48  7C 7D 01 AE */	stbx r3, r29, r0
/* 80005D0C 00002C4C  3B FF 00 01 */	addi r31, r31, 1
lbl_80005D10:
/* 80005D10 00002C50  3B DE 00 01 */	addi r30, r30, 1
lbl_80005D14:
/* 80005D14 00002C54  88 7E 00 00 */	lbz r3, 0(r30)
/* 80005D18 00002C58  7C 60 07 75 */	extsb. r0, r3
/* 80005D1C 00002C5C  40 82 FF C0 */	bne lbl_80005CDC
/* 80005D20 00002C60  B3 FD 00 02 */	sth r31, 2(r29)
/* 80005D24 00002C64  7C 7D FA 14 */	add r3, r29, r31
/* 80005D28 00002C68  38 00 00 00 */	li r0, 0
/* 80005D2C 00002C6C  98 03 00 04 */	stb r0, 4(r3)
/* 80005D30 00002C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80005D34 00002C74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80005D38 00002C78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80005D3C 00002C7C  7C 08 03 A6 */	mtlr r0
/* 80005D40 00002C80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80005D44 00002C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80005D48 00002C88  4E 80 00 20 */	blr 

.global store__Q210JKRArchive8CArcNameFPCcc
store__Q210JKRArchive8CArcNameFPCcc:
/* 80005D4C 00002C8C  7C 08 02 A6 */	mflr r0
/* 80005D50 00002C90  90 01 00 04 */	stw r0, 4(r1)
/* 80005D54 00002C94  38 00 00 00 */	li r0, 0
/* 80005D58 00002C98  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80005D5C 00002C9C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80005D60 00002CA0  7C BF 07 74 */	extsb r31, r5
/* 80005D64 00002CA4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80005D68 00002CA8  3B C0 00 00 */	li r30, 0
/* 80005D6C 00002CAC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80005D70 00002CB0  3B A4 00 00 */	addi r29, r4, 0
/* 80005D74 00002CB4  93 81 00 18 */	stw r28, 0x18(r1)
/* 80005D78 00002CB8  3B 83 00 00 */	addi r28, r3, 0
/* 80005D7C 00002CBC  B0 03 00 00 */	sth r0, 0(r3)
/* 80005D80 00002CC0  48 00 00 3C */	b lbl_80005DBC
lbl_80005D84:
/* 80005D84 00002CC4  7C 63 07 74 */	extsb r3, r3
/* 80005D88 00002CC8  48 07 DA FD */	bl tolower
/* 80005D8C 00002CCC  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80005D90 00002CD0  2C 1E 01 00 */	cmpwi r30, 0x100
/* 80005D94 00002CD4  1C 00 00 03 */	mulli r0, r0, 3
/* 80005D98 00002CD8  7C 03 02 14 */	add r0, r3, r0
/* 80005D9C 00002CDC  B0 1C 00 00 */	sth r0, 0(r28)
/* 80005DA0 00002CE0  40 80 00 18 */	bge lbl_80005DB8
/* 80005DA4 00002CE4  38 9E 00 00 */	addi r4, r30, 0
/* 80005DA8 00002CE8  7C 63 07 74 */	extsb r3, r3
/* 80005DAC 00002CEC  38 04 00 04 */	addi r0, r4, 4
/* 80005DB0 00002CF0  7C 7C 01 AE */	stbx r3, r28, r0
/* 80005DB4 00002CF4  3B DE 00 01 */	addi r30, r30, 1
lbl_80005DB8:
/* 80005DB8 00002CF8  3B BD 00 01 */	addi r29, r29, 1
lbl_80005DBC:
/* 80005DBC 00002CFC  88 7D 00 00 */	lbz r3, 0(r29)
/* 80005DC0 00002D00  7C 60 07 75 */	extsb. r0, r3
/* 80005DC4 00002D04  41 82 00 10 */	beq lbl_80005DD4
/* 80005DC8 00002D08  7C 60 07 74 */	extsb r0, r3
/* 80005DCC 00002D0C  7C 00 F8 00 */	cmpw r0, r31
/* 80005DD0 00002D10  40 82 FF B4 */	bne lbl_80005D84
lbl_80005DD4:
/* 80005DD4 00002D14  B3 DC 00 02 */	sth r30, 2(r28)
/* 80005DD8 00002D18  7C 7C F2 14 */	add r3, r28, r30
/* 80005DDC 00002D1C  38 00 00 00 */	li r0, 0
/* 80005DE0 00002D20  98 03 00 04 */	stb r0, 4(r3)
/* 80005DE4 00002D24  88 1D 00 00 */	lbz r0, 0(r29)
/* 80005DE8 00002D28  7C 00 07 75 */	extsb. r0, r0
/* 80005DEC 00002D2C  40 82 00 0C */	bne lbl_80005DF8
/* 80005DF0 00002D30  38 60 00 00 */	li r3, 0
/* 80005DF4 00002D34  48 00 00 08 */	b lbl_80005DFC
lbl_80005DF8:
/* 80005DF8 00002D38  38 7D 00 01 */	addi r3, r29, 1
lbl_80005DFC:
/* 80005DFC 00002D3C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80005E00 00002D40  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80005E04 00002D44  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80005E08 00002D48  7C 08 03 A6 */	mtlr r0
/* 80005E0C 00002D4C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80005E10 00002D50  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80005E14 00002D54  38 21 00 28 */	addi r1, r1, 0x28
/* 80005E18 00002D58  4E 80 00 20 */	blr 

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global sCurrentDirID__10JKRArchive
sCurrentDirID__10JKRArchive:
	.skip 0x8
