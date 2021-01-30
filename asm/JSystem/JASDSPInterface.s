.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global DSP_CreateMap__Fv
DSP_CreateMap__Fv:
/* 8005F760 0005C6A0  7C 08 02 A6 */	mflr r0
/* 8005F764 0005C6A4  90 01 00 04 */	stw r0, 4(r1)
/* 8005F768 0005C6A8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8005F76C 0005C6AC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8005F770 0005C6B0  3B E0 00 00 */	li r31, 0
/* 8005F774 0005C6B4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8005F778 0005C6B8  3B C0 00 00 */	li r30, 0
/* 8005F77C 0005C6BC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8005F780 0005C6C0  3B A0 00 00 */	li r29, 0
/* 8005F784 0005C6C4  48 00 00 38 */	b lbl_8005F7BC
lbl_8005F788:
/* 8005F788 0005C6C8  38 7F 00 00 */	addi r3, r31, 0
/* 8005F78C 0005C6CC  38 9E 00 00 */	addi r4, r30, 0
/* 8005F790 0005C6D0  38 A0 00 01 */	li r5, 1
/* 8005F794 0005C6D4  48 02 38 99 */	bl __shl2i
/* 8005F798 0005C6D8  3B E3 00 00 */	addi r31, r3, 0
/* 8005F79C 0005C6DC  3B C4 00 00 */	addi r30, r4, 0
/* 8005F7A0 0005C6E0  38 7D 00 00 */	addi r3, r29, 0
/* 8005F7A4 0005C6E4  48 00 00 49 */	bl getDSPHandle__Q28JASystem12DSPInterfaceFUc
/* 8005F7A8 0005C6E8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8005F7AC 0005C6EC  28 00 00 00 */	cmplwi r0, 0
/* 8005F7B0 0005C6F0  41 82 00 08 */	beq lbl_8005F7B8
/* 8005F7B4 0005C6F4  63 DE 00 01 */	ori r30, r30, 1
lbl_8005F7B8:
/* 8005F7B8 0005C6F8  3B BD 00 01 */	addi r29, r29, 1
lbl_8005F7BC:
/* 8005F7BC 0005C6FC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8005F7C0 0005C700  28 00 00 40 */	cmplwi r0, 0x40
/* 8005F7C4 0005C704  41 80 FF C4 */	blt lbl_8005F788
/* 8005F7C8 0005C708  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8005F7CC 0005C70C  38 9E 00 00 */	addi r4, r30, 0
/* 8005F7D0 0005C710  38 7F 00 00 */	addi r3, r31, 0
/* 8005F7D4 0005C714  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8005F7D8 0005C718  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8005F7DC 0005C71C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8005F7E0 0005C720  7C 08 03 A6 */	mtlr r0
/* 8005F7E4 0005C724  38 21 00 18 */	addi r1, r1, 0x18
/* 8005F7E8 0005C728  4E 80 00 20 */	blr 

.global getDSPHandle__Q28JASystem12DSPInterfaceFUc
getDSPHandle__Q28JASystem12DSPInterfaceFUc:
/* 8005F7EC 0005C72C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8005F7F0 0005C730  80 6D 91 28 */	lwz r3, CH_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F7F4 0005C734  1C 00 01 80 */	mulli r0, r0, 0x180
/* 8005F7F8 0005C738  7C 63 02 14 */	add r3, r3, r0
/* 8005F7FC 0005C73C  4E 80 00 20 */	blr 

.global invalChannelAll__Q28JASystem12DSPInterfaceFv
invalChannelAll__Q28JASystem12DSPInterfaceFv:
/* 8005F800 0005C740  7C 08 02 A6 */	mflr r0
/* 8005F804 0005C744  38 80 60 00 */	li r4, 0x6000
/* 8005F808 0005C748  90 01 00 04 */	stw r0, 4(r1)
/* 8005F80C 0005C74C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8005F810 0005C750  80 6D 91 28 */	lwz r3, CH_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F814 0005C754  48 02 E7 69 */	bl DCInvalidateRange
/* 8005F818 0005C758  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8005F81C 0005C75C  38 21 00 08 */	addi r1, r1, 8
/* 8005F820 0005C760  7C 08 03 A6 */	mtlr r0
/* 8005F824 0005C764  4E 80 00 20 */	blr 

.global initBuffer__Q28JASystem12DSPInterfaceFv
initBuffer__Q28JASystem12DSPInterfaceFv:
/* 8005F828 0005C768  7C 08 02 A6 */	mflr r0
/* 8005F82C 0005C76C  38 60 60 00 */	li r3, 0x6000
/* 8005F830 0005C770  90 01 00 04 */	stw r0, 4(r1)
/* 8005F834 0005C774  38 A0 00 20 */	li r5, 0x20
/* 8005F838 0005C778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005F83C 0005C77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005F840 0005C780  93 C1 00 08 */	stw r30, 8(r1)
/* 8005F844 0005C784  80 8D 92 00 */	lwz r4, JASDram-_SDA_BASE_(r13)
/* 8005F848 0005C788  4B FA D1 FD */	bl __nwa__FUlP7JKRHeapi
/* 8005F84C 0005C78C  90 6D 91 28 */	stw r3, CH_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F850 0005C790  38 60 00 80 */	li r3, 0x80
/* 8005F854 0005C794  80 8D 92 00 */	lwz r4, JASDram-_SDA_BASE_(r13)
/* 8005F858 0005C798  38 A0 00 20 */	li r5, 0x20
/* 8005F85C 0005C79C  4B FA D1 E9 */	bl __nwa__FUlP7JKRHeapi
/* 8005F860 0005C7A0  90 6D 91 2C */	stw r3, FX_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F864 0005C7A4  3B C0 00 00 */	li r30, 0
/* 8005F868 0005C7A8  48 00 00 20 */	b lbl_8005F888
lbl_8005F86C:
/* 8005F86C 0005C7AC  80 6D 91 2C */	lwz r3, FX_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F870 0005C7B0  57 C0 2C F4 */	rlwinm r0, r30, 5, 0x13, 0x1a
/* 8005F874 0005C7B4  38 80 00 00 */	li r4, 0
/* 8005F878 0005C7B8  7C 63 02 14 */	add r3, r3, r0
/* 8005F87C 0005C7BC  38 A0 00 00 */	li r5, 0
/* 8005F880 0005C7C0  48 00 00 C5 */	bl setFXLine__Q38JASystem12DSPInterface8FXBufferFPsPQ38JASystem12DSPInterface13FxlineConfig_
/* 8005F884 0005C7C4  3B DE 00 01 */	addi r30, r30, 1
lbl_8005F888:
/* 8005F888 0005C7C8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8005F88C 0005C7CC  28 00 00 04 */	cmplwi r0, 4
/* 8005F890 0005C7D0  41 80 FF DC */	blt lbl_8005F86C
/* 8005F894 0005C7D4  3B C0 00 00 */	li r30, 0
/* 8005F898 0005C7D8  3B FE 00 00 */	addi r31, r30, 0
lbl_8005F89C:
/* 8005F89C 0005C7DC  80 0D 91 28 */	lwz r0, CH_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F8A0 0005C7E0  38 80 01 80 */	li r4, 0x180
/* 8005F8A4 0005C7E4  7C 60 FA 14 */	add r3, r0, r31
/* 8005F8A8 0005C7E8  48 00 19 79 */	bl bzero__Q28JASystem4CalcFPvUl
/* 8005F8AC 0005C7EC  3B DE 00 01 */	addi r30, r30, 1
/* 8005F8B0 0005C7F0  28 1E 00 40 */	cmplwi r30, 0x40
/* 8005F8B4 0005C7F4  3B FF 01 80 */	addi r31, r31, 0x180
/* 8005F8B8 0005C7F8  41 80 FF E4 */	blt lbl_8005F89C
/* 8005F8BC 0005C7FC  3B C0 00 00 */	li r30, 0
/* 8005F8C0 0005C800  3B E0 00 00 */	li r31, 0
lbl_8005F8C4:
/* 8005F8C4 0005C804  80 0D 91 2C */	lwz r0, FX_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F8C8 0005C808  38 80 00 20 */	li r4, 0x20
/* 8005F8CC 0005C80C  7C 60 FA 14 */	add r3, r0, r31
/* 8005F8D0 0005C810  48 00 19 51 */	bl bzero__Q28JASystem4CalcFPvUl
/* 8005F8D4 0005C814  3B DE 00 01 */	addi r30, r30, 1
/* 8005F8D8 0005C818  28 1E 00 04 */	cmplwi r30, 4
/* 8005F8DC 0005C81C  3B FF 00 20 */	addi r31, r31, 0x20
/* 8005F8E0 0005C820  41 80 FF E4 */	blt lbl_8005F8C4
/* 8005F8E4 0005C824  3C A0 80 3B */	lis r5, DSPRES_FILTER__Q28JASystem12DSPInterface@ha
/* 8005F8E8 0005C828  80 8D 91 28 */	lwz r4, CH_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F8EC 0005C82C  3C 60 80 3B */	lis r3, DSPADPCM_FILTER__Q28JASystem12DSPInterface@ha
/* 8005F8F0 0005C830  80 ED 91 2C */	lwz r7, FX_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F8F4 0005C834  38 C3 B2 00 */	addi r6, r3, DSPADPCM_FILTER__Q28JASystem12DSPInterface@l
/* 8005F8F8 0005C838  38 A5 B2 40 */	addi r5, r5, DSPRES_FILTER__Q28JASystem12DSPInterface@l
/* 8005F8FC 0005C83C  38 60 00 40 */	li r3, 0x40
/* 8005F900 0005C840  48 02 23 81 */	bl DsetupTable__FUlUlUlUlUl
/* 8005F904 0005C844  80 6D 91 28 */	lwz r3, CH_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F908 0005C848  38 80 60 00 */	li r4, 0x6000
/* 8005F90C 0005C84C  48 02 E6 A1 */	bl DCFlushRange
/* 8005F910 0005C850  80 6D 91 2C */	lwz r3, FX_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F914 0005C854  38 80 00 80 */	li r4, 0x80
/* 8005F918 0005C858  48 02 E6 95 */	bl DCFlushRange
/* 8005F91C 0005C85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005F920 0005C860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005F924 0005C864  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005F928 0005C868  7C 08 03 A6 */	mtlr r0
/* 8005F92C 0005C86C  38 21 00 10 */	addi r1, r1, 0x10
/* 8005F930 0005C870  4E 80 00 20 */	blr 

.global getFXHandle__Q28JASystem12DSPInterfaceFUc
getFXHandle__Q28JASystem12DSPInterfaceFUc:
/* 8005F934 0005C874  80 8D 91 2C */	lwz r4, FX_BUF__Q28JASystem12DSPInterface-_SDA_BASE_(r13)
/* 8005F938 0005C878  54 60 2C F4 */	rlwinm r0, r3, 5, 0x13, 0x1a
/* 8005F93C 0005C87C  7C 64 02 14 */	add r3, r4, r0
/* 8005F940 0005C880  4E 80 00 20 */	blr 

.global setFXLine__Q38JASystem12DSPInterface8FXBufferFPsPQ38JASystem12DSPInterface13FxlineConfig_
setFXLine__Q38JASystem12DSPInterface8FXBufferFPsPQ38JASystem12DSPInterface13FxlineConfig_:
/* 8005F944 0005C884  7C 08 02 A6 */	mflr r0
/* 8005F948 0005C888  90 01 00 04 */	stw r0, 4(r1)
/* 8005F94C 0005C88C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8005F950 0005C890  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 8005F954 0005C894  3B 83 00 00 */	addi r28, r3, 0
/* 8005F958 0005C898  3B A4 00 00 */	addi r29, r4, 0
/* 8005F95C 0005C89C  3B C5 00 00 */	addi r30, r5, 0
/* 8005F960 0005C8A0  48 03 08 6D */	bl OSDisableInterrupts
/* 8005F964 0005C8A4  38 00 00 00 */	li r0, 0
/* 8005F968 0005C8A8  28 1E 00 00 */	cmplwi r30, 0
/* 8005F96C 0005C8AC  B0 1C 00 00 */	sth r0, 0(r28)
/* 8005F970 0005C8B0  3B E3 00 00 */	addi r31, r3, 0
/* 8005F974 0005C8B4  41 82 00 8C */	beq lbl_8005FA00
/* 8005F978 0005C8B8  A8 1E 00 04 */	lha r0, 4(r30)
/* 8005F97C 0005C8BC  3C 60 80 3B */	lis r3, SEND_TABLE__Q28JASystem12DSPInterface@ha
/* 8005F980 0005C8C0  38 83 B7 68 */	addi r4, r3, SEND_TABLE__Q28JASystem12DSPInterface@l
/* 8005F984 0005C8C4  B0 1C 00 0A */	sth r0, 0xa(r28)
/* 8005F988 0005C8C8  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8005F98C 0005C8CC  54 00 08 3C */	slwi r0, r0, 1
/* 8005F990 0005C8D0  7C 64 02 14 */	add r3, r4, r0
/* 8005F994 0005C8D4  A0 03 00 00 */	lhz r0, 0(r3)
/* 8005F998 0005C8D8  B0 1C 00 08 */	sth r0, 8(r28)
/* 8005F99C 0005C8DC  A8 1E 00 08 */	lha r0, 8(r30)
/* 8005F9A0 0005C8E0  B0 1C 00 0E */	sth r0, 0xe(r28)
/* 8005F9A4 0005C8E4  A0 1E 00 06 */	lhz r0, 6(r30)
/* 8005F9A8 0005C8E8  54 00 08 3C */	slwi r0, r0, 1
/* 8005F9AC 0005C8EC  7C 64 02 14 */	add r3, r4, r0
/* 8005F9B0 0005C8F0  A0 03 00 00 */	lhz r0, 0(r3)
/* 8005F9B4 0005C8F4  B0 1C 00 0C */	sth r0, 0xc(r28)
/* 8005F9B8 0005C8F8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8005F9BC 0005C8FC  B0 1C 00 02 */	sth r0, 2(r28)
/* 8005F9C0 0005C900  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 8005F9C4 0005C904  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 8005F9C8 0005C908  A8 1E 00 12 */	lha r0, 0x12(r30)
/* 8005F9CC 0005C90C  B0 1C 00 12 */	sth r0, 0x12(r28)
/* 8005F9D0 0005C910  A8 1E 00 14 */	lha r0, 0x14(r30)
/* 8005F9D4 0005C914  B0 1C 00 14 */	sth r0, 0x14(r28)
/* 8005F9D8 0005C918  A8 1E 00 16 */	lha r0, 0x16(r30)
/* 8005F9DC 0005C91C  B0 1C 00 16 */	sth r0, 0x16(r28)
/* 8005F9E0 0005C920  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 8005F9E4 0005C924  B0 1C 00 18 */	sth r0, 0x18(r28)
/* 8005F9E8 0005C928  A8 1E 00 1A */	lha r0, 0x1a(r30)
/* 8005F9EC 0005C92C  B0 1C 00 1A */	sth r0, 0x1a(r28)
/* 8005F9F0 0005C930  A8 1E 00 1C */	lha r0, 0x1c(r30)
/* 8005F9F4 0005C934  B0 1C 00 1C */	sth r0, 0x1c(r28)
/* 8005F9F8 0005C938  A8 1E 00 1E */	lha r0, 0x1e(r30)
/* 8005F9FC 0005C93C  B0 1C 00 1E */	sth r0, 0x1e(r28)
lbl_8005FA00:
/* 8005FA00 0005C940  28 1D 00 00 */	cmplwi r29, 0
/* 8005FA04 0005C944  41 82 00 34 */	beq lbl_8005FA38
/* 8005FA08 0005C948  28 1E 00 00 */	cmplwi r30, 0
/* 8005FA0C 0005C94C  41 82 00 2C */	beq lbl_8005FA38
/* 8005FA10 0005C950  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8005FA14 0005C954  38 7D 00 00 */	addi r3, r29, 0
/* 8005FA18 0005C958  1F 60 00 A0 */	mulli r27, r0, 0xa0
/* 8005FA1C 0005C95C  93 BC 00 04 */	stw r29, 4(r28)
/* 8005FA20 0005C960  7F 64 DB 78 */	mr r4, r27
/* 8005FA24 0005C964  48 00 17 FD */	bl bzero__Q28JASystem4CalcFPvUl
/* 8005FA28 0005C968  38 7D 00 00 */	addi r3, r29, 0
/* 8005FA2C 0005C96C  38 9B 00 00 */	addi r4, r27, 0
/* 8005FA30 0005C970  48 02 E5 7D */	bl DCFlushRange
/* 8005FA34 0005C974  48 00 00 18 */	b lbl_8005FA4C
lbl_8005FA38:
/* 8005FA38 0005C978  28 1E 00 00 */	cmplwi r30, 0
/* 8005FA3C 0005C97C  41 82 00 0C */	beq lbl_8005FA48
/* 8005FA40 0005C980  28 1D 00 00 */	cmplwi r29, 0
/* 8005FA44 0005C984  41 82 00 08 */	beq lbl_8005FA4C
lbl_8005FA48:
/* 8005FA48 0005C988  93 BC 00 04 */	stw r29, 4(r28)
lbl_8005FA4C:
/* 8005FA4C 0005C98C  80 1C 00 04 */	lwz r0, 4(r28)
/* 8005FA50 0005C990  28 00 00 00 */	cmplwi r0, 0
/* 8005FA54 0005C994  41 82 00 10 */	beq lbl_8005FA64
/* 8005FA58 0005C998  88 1E 00 00 */	lbz r0, 0(r30)
/* 8005FA5C 0005C99C  B0 1C 00 00 */	sth r0, 0(r28)
/* 8005FA60 0005C9A0  48 00 00 0C */	b lbl_8005FA6C
lbl_8005FA64:
/* 8005FA64 0005C9A4  38 00 00 00 */	li r0, 0
/* 8005FA68 0005C9A8  B0 1C 00 00 */	sth r0, 0(r28)
lbl_8005FA6C:
/* 8005FA6C 0005C9AC  38 7C 00 00 */	addi r3, r28, 0
/* 8005FA70 0005C9B0  38 80 00 20 */	li r4, 0x20
/* 8005FA74 0005C9B4  48 02 E5 39 */	bl DCFlushRange
/* 8005FA78 0005C9B8  7F E3 FB 78 */	mr r3, r31
/* 8005FA7C 0005C9BC  48 03 07 79 */	bl OSRestoreInterrupts
/* 8005FA80 0005C9C0  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8005FA84 0005C9C4  38 60 00 01 */	li r3, 1
/* 8005FA88 0005C9C8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8005FA8C 0005C9CC  38 21 00 38 */	addi r1, r1, 0x38
/* 8005FA90 0005C9D0  7C 08 03 A6 */	mtlr r0
/* 8005FA94 0005C9D4  4E 80 00 20 */	blr 

.global allocInit__Q38JASystem12DSPInterface9DSPBufferFv
allocInit__Q38JASystem12DSPInterface9DSPBufferFv:
/* 8005FA98 0005C9D8  7C 08 02 A6 */	mflr r0
/* 8005FA9C 0005C9DC  90 01 00 04 */	stw r0, 4(r1)
/* 8005FAA0 0005C9E0  38 00 00 00 */	li r0, 0
/* 8005FAA4 0005C9E4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8005FAA8 0005C9E8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8005FAAC 0005C9EC  3B E3 00 00 */	addi r31, r3, 0
/* 8005FAB0 0005C9F0  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8005FAB4 0005C9F4  B0 1F 00 02 */	sth r0, 2(r31)
/* 8005FAB8 0005C9F8  B0 1F 01 0A */	sth r0, 0x10a(r31)
/* 8005FABC 0005C9FC  B0 1F 00 00 */	sth r0, 0(r31)
/* 8005FAC0 0005CA00  B0 1F 00 58 */	sth r0, 0x58(r31)
/* 8005FAC4 0005CA04  48 00 03 7D */	bl initFilter__Q38JASystem12DSPInterface9DSPBufferFv
/* 8005FAC8 0005CA08  7F E3 FB 78 */	mr r3, r31
/* 8005FACC 0005CA0C  48 00 02 A9 */	bl flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
/* 8005FAD0 0005CA10  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8005FAD4 0005CA14  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8005FAD8 0005CA18  38 21 00 18 */	addi r1, r1, 0x18
/* 8005FADC 0005CA1C  7C 08 03 A6 */	mtlr r0
/* 8005FAE0 0005CA20  4E 80 00 20 */	blr 

.global playStart__Q38JASystem12DSPInterface9DSPBufferFv
playStart__Q38JASystem12DSPInterface9DSPBufferFv:
/* 8005FAE4 0005CA24  38 A0 00 00 */	li r5, 0
/* 8005FAE8 0005CA28  90 A3 01 0C */	stw r5, 0x10c(r3)
/* 8005FAEC 0005CA2C  38 80 00 00 */	li r4, 0
/* 8005FAF0 0005CA30  38 00 00 01 */	li r0, 1
/* 8005FAF4 0005CA34  90 A3 00 68 */	stw r5, 0x68(r3)
/* 8005FAF8 0005CA38  2C 04 00 14 */	cmpwi r4, 0x14
/* 8005FAFC 0005CA3C  B0 A3 00 60 */	sth r5, 0x60(r3)
/* 8005FB00 0005CA40  B0 03 00 08 */	sth r0, 8(r3)
/* 8005FB04 0005CA44  B0 A3 00 66 */	sth r5, 0x66(r3)
/* 8005FB08 0005CA48  B0 A3 00 78 */	sth r5, 0x78(r3)
/* 8005FB0C 0005CA4C  B0 A3 00 A8 */	sth r5, 0xa8(r3)
/* 8005FB10 0005CA50  B0 A3 00 7A */	sth r5, 0x7a(r3)
/* 8005FB14 0005CA54  B0 A3 00 AA */	sth r5, 0xaa(r3)
/* 8005FB18 0005CA58  B0 A3 00 7C */	sth r5, 0x7c(r3)
/* 8005FB1C 0005CA5C  B0 A3 00 AC */	sth r5, 0xac(r3)
/* 8005FB20 0005CA60  B0 A3 00 7E */	sth r5, 0x7e(r3)
/* 8005FB24 0005CA64  B0 A3 00 AE */	sth r5, 0xae(r3)
/* 8005FB28 0005CA68  40 80 00 6C */	bge lbl_8005FB94
/* 8005FB2C 0005CA6C  B0 A3 00 80 */	sth r5, 0x80(r3)
/* 8005FB30 0005CA70  38 80 00 10 */	li r4, 0x10
/* 8005FB34 0005CA74  20 04 00 14 */	subfic r0, r4, 0x14
/* 8005FB38 0005CA78  B0 A3 00 82 */	sth r5, 0x82(r3)
/* 8005FB3C 0005CA7C  2C 04 00 14 */	cmpwi r4, 0x14
/* 8005FB40 0005CA80  7C 09 03 A6 */	mtctr r0
/* 8005FB44 0005CA84  54 84 08 3C */	slwi r4, r4, 1
/* 8005FB48 0005CA88  B0 A3 00 84 */	sth r5, 0x84(r3)
/* 8005FB4C 0005CA8C  B0 A3 00 86 */	sth r5, 0x86(r3)
/* 8005FB50 0005CA90  B0 A3 00 88 */	sth r5, 0x88(r3)
/* 8005FB54 0005CA94  B0 A3 00 8A */	sth r5, 0x8a(r3)
/* 8005FB58 0005CA98  B0 A3 00 8C */	sth r5, 0x8c(r3)
/* 8005FB5C 0005CA9C  B0 A3 00 8E */	sth r5, 0x8e(r3)
/* 8005FB60 0005CAA0  B0 A3 00 90 */	sth r5, 0x90(r3)
/* 8005FB64 0005CAA4  B0 A3 00 92 */	sth r5, 0x92(r3)
/* 8005FB68 0005CAA8  B0 A3 00 94 */	sth r5, 0x94(r3)
/* 8005FB6C 0005CAAC  B0 A3 00 96 */	sth r5, 0x96(r3)
/* 8005FB70 0005CAB0  B0 A3 00 98 */	sth r5, 0x98(r3)
/* 8005FB74 0005CAB4  B0 A3 00 9A */	sth r5, 0x9a(r3)
/* 8005FB78 0005CAB8  B0 A3 00 9C */	sth r5, 0x9c(r3)
/* 8005FB7C 0005CABC  B0 A3 00 9E */	sth r5, 0x9e(r3)
/* 8005FB80 0005CAC0  40 80 00 14 */	bge lbl_8005FB94
lbl_8005FB84:
/* 8005FB84 0005CAC4  38 04 00 80 */	addi r0, r4, 0x80
/* 8005FB88 0005CAC8  7C A3 03 2E */	sthx r5, r3, r0
/* 8005FB8C 0005CACC  38 84 00 02 */	addi r4, r4, 2
/* 8005FB90 0005CAD0  42 00 FF F4 */	bdnz lbl_8005FB84
lbl_8005FB94:
/* 8005FB94 0005CAD4  38 00 00 01 */	li r0, 1
/* 8005FB98 0005CAD8  B0 03 00 00 */	sth r0, 0(r3)
/* 8005FB9C 0005CADC  4E 80 00 20 */	blr 

.global setWaveInfo__Q38JASystem12DSPInterface9DSPBufferFPQ38JASystem6Driver5Wave_Ul
setWaveInfo__Q38JASystem12DSPInterface9DSPBufferFPQ38JASystem6Driver5Wave_Ul:
/* 8005FBA0 0005CAE0  90 A3 01 18 */	stw r5, 0x118(r3)
/* 8005FBA4 0005CAE4  38 CD 81 BC */	addi r6, r13, COMP_BLOCKSAMPLES$234-_SDA_BASE_
/* 8005FBA8 0005CAE8  38 AD 81 C4 */	addi r5, r13, COMP_BLOCKBYTES$235-_SDA_BASE_
/* 8005FBAC 0005CAEC  88 04 00 01 */	lbz r0, 1(r4)
/* 8005FBB0 0005CAF0  7C 06 00 AE */	lbzx r0, r6, r0
/* 8005FBB4 0005CAF4  B0 03 00 64 */	sth r0, 0x64(r3)
/* 8005FBB8 0005CAF8  88 04 00 01 */	lbz r0, 1(r4)
/* 8005FBBC 0005CAFC  7C 05 00 AE */	lbzx r0, r5, r0
/* 8005FBC0 0005CB00  B0 03 01 00 */	sth r0, 0x100(r3)
/* 8005FBC4 0005CB04  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 8005FBC8 0005CB08  28 00 00 04 */	cmplwi r0, 4
/* 8005FBCC 0005CB0C  4D 80 00 20 */	bltlr 
/* 8005FBD0 0005CB10  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8005FBD4 0005CB14  90 03 01 1C */	stw r0, 0x11c(r3)
/* 8005FBD8 0005CB18  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8005FBDC 0005CB1C  B0 03 01 02 */	sth r0, 0x102(r3)
/* 8005FBE0 0005CB20  A0 03 01 02 */	lhz r0, 0x102(r3)
/* 8005FBE4 0005CB24  28 00 00 00 */	cmplwi r0, 0
/* 8005FBE8 0005CB28  41 82 00 28 */	beq lbl_8005FC10
/* 8005FBEC 0005CB2C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8005FBF0 0005CB30  90 03 01 10 */	stw r0, 0x110(r3)
/* 8005FBF4 0005CB34  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8005FBF8 0005CB38  90 03 01 14 */	stw r0, 0x114(r3)
/* 8005FBFC 0005CB3C  A8 04 00 20 */	lha r0, 0x20(r4)
/* 8005FC00 0005CB40  B0 03 01 04 */	sth r0, 0x104(r3)
/* 8005FC04 0005CB44  A8 04 00 22 */	lha r0, 0x22(r4)
/* 8005FC08 0005CB48  B0 03 01 06 */	sth r0, 0x106(r3)
/* 8005FC0C 0005CB4C  48 00 00 0C */	b lbl_8005FC18
lbl_8005FC10:
/* 8005FC10 0005CB50  80 03 01 1C */	lwz r0, 0x11c(r3)
/* 8005FC14 0005CB54  90 03 01 14 */	stw r0, 0x114(r3)
lbl_8005FC18:
/* 8005FC18 0005CB58  38 00 00 00 */	li r0, 0
/* 8005FC1C 0005CB5C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8005FC20 0005CB60  4C 80 00 20 */	bgelr 
/* 8005FC24 0005CB64  38 00 00 00 */	li r0, 0
/* 8005FC28 0005CB68  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 8005FC2C 0005CB6C  B0 03 00 B2 */	sth r0, 0xb2(r3)
/* 8005FC30 0005CB70  B0 03 00 B4 */	sth r0, 0xb4(r3)
/* 8005FC34 0005CB74  B0 03 00 B6 */	sth r0, 0xb6(r3)
/* 8005FC38 0005CB78  B0 03 00 B8 */	sth r0, 0xb8(r3)
/* 8005FC3C 0005CB7C  B0 03 00 BA */	sth r0, 0xba(r3)
/* 8005FC40 0005CB80  B0 03 00 BC */	sth r0, 0xbc(r3)
/* 8005FC44 0005CB84  B0 03 00 BE */	sth r0, 0xbe(r3)
/* 8005FC48 0005CB88  B0 03 00 C0 */	sth r0, 0xc0(r3)
/* 8005FC4C 0005CB8C  B0 03 00 C2 */	sth r0, 0xc2(r3)
/* 8005FC50 0005CB90  B0 03 00 C4 */	sth r0, 0xc4(r3)
/* 8005FC54 0005CB94  B0 03 00 C6 */	sth r0, 0xc6(r3)
/* 8005FC58 0005CB98  B0 03 00 C8 */	sth r0, 0xc8(r3)
/* 8005FC5C 0005CB9C  B0 03 00 CA */	sth r0, 0xca(r3)
/* 8005FC60 0005CBA0  B0 03 00 CC */	sth r0, 0xcc(r3)
/* 8005FC64 0005CBA4  B0 03 00 CE */	sth r0, 0xce(r3)
/* 8005FC68 0005CBA8  4E 80 00 20 */	blr 

.global setOscInfo__Q38JASystem12DSPInterface9DSPBufferFUl
setOscInfo__Q38JASystem12DSPInterface9DSPBufferFUl:
/* 8005FC6C 0005CBAC  38 00 00 00 */	li r0, 0
/* 8005FC70 0005CBB0  90 03 01 18 */	stw r0, 0x118(r3)
/* 8005FC74 0005CBB4  38 00 00 10 */	li r0, 0x10
/* 8005FC78 0005CBB8  B0 03 00 64 */	sth r0, 0x64(r3)
/* 8005FC7C 0005CBBC  B0 83 01 00 */	sth r4, 0x100(r3)
/* 8005FC80 0005CBC0  4E 80 00 20 */	blr 

.global initAutoMixer__Q38JASystem12DSPInterface9DSPBufferFv
initAutoMixer__Q38JASystem12DSPInterface9DSPBufferFv:
/* 8005FC84 0005CBC4  A0 03 00 58 */	lhz r0, 0x58(r3)
/* 8005FC88 0005CBC8  28 00 00 00 */	cmplwi r0, 0
/* 8005FC8C 0005CBCC  41 82 00 10 */	beq lbl_8005FC9C
/* 8005FC90 0005CBD0  A0 03 00 56 */	lhz r0, 0x56(r3)
/* 8005FC94 0005CBD4  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8005FC98 0005CBD8  4E 80 00 20 */	blr 
lbl_8005FC9C:
/* 8005FC9C 0005CBDC  38 00 00 00 */	li r0, 0
/* 8005FCA0 0005CBE0  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8005FCA4 0005CBE4  38 00 00 01 */	li r0, 1
/* 8005FCA8 0005CBE8  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8005FCAC 0005CBEC  4E 80 00 20 */	blr 

.global setAutoMixer__Q38JASystem12DSPInterface9DSPBufferFUsUcUcUcUc
setAutoMixer__Q38JASystem12DSPInterface9DSPBufferFUsUcUcUcUc:
/* 8005FCB0 0005CBF0  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8005FCB4 0005CBF4  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 8005FCB8 0005CBF8  B0 03 00 50 */	sth r0, 0x50(r3)
/* 8005FCBC 0005CBFC  54 E0 44 2E */	rlwinm r0, r7, 8, 0x10, 0x17
/* 8005FCC0 0005CC00  B0 03 00 52 */	sth r0, 0x52(r3)
/* 8005FCC4 0005CC04  38 00 00 01 */	li r0, 1
/* 8005FCC8 0005CC08  B0 83 00 56 */	sth r4, 0x56(r3)
/* 8005FCCC 0005CC0C  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8005FCD0 0005CC10  4E 80 00 20 */	blr 

.global setPitch__Q38JASystem12DSPInterface9DSPBufferFUs
setPitch__Q38JASystem12DSPInterface9DSPBufferFUs:
/* 8005FCD4 0005CC14  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8005FCD8 0005CC18  28 00 7F FF */	cmplwi r0, 0x7fff
/* 8005FCDC 0005CC1C  41 80 00 08 */	blt lbl_8005FCE4
/* 8005FCE0 0005CC20  38 80 7F FF */	li r4, 0x7fff
lbl_8005FCE4:
/* 8005FCE4 0005CC24  B0 83 00 04 */	sth r4, 4(r3)
/* 8005FCE8 0005CC28  4E 80 00 20 */	blr 

.global setMixerInitDelayMax__Q38JASystem12DSPInterface9DSPBufferFUc
setMixerInitDelayMax__Q38JASystem12DSPInterface9DSPBufferFUc:
/* 8005FCEC 0005CC2C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8005FCF0 0005CC30  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8005FCF4 0005CC34  4E 80 00 20 */	blr 

.global setMixerInitVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
setMixerInitVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc:
/* 8005FCF8 0005CC38  54 84 1D 78 */	rlwinm r4, r4, 3, 0x15, 0x1c
/* 8005FCFC 0005CC3C  38 84 00 10 */	addi r4, r4, 0x10
/* 8005FD00 0005CC40  7C 83 22 14 */	add r4, r3, r4
/* 8005FD04 0005CC44  B0 A4 00 04 */	sth r5, 4(r4)
/* 8005FD08 0005CC48  54 C0 44 2E */	rlwinm r0, r6, 8, 0x10, 0x17
/* 8005FD0C 0005CC4C  50 C0 06 3E */	rlwimi r0, r6, 0, 0x18, 0x1f
/* 8005FD10 0005CC50  B0 A4 00 02 */	sth r5, 2(r4)
/* 8005FD14 0005CC54  B0 04 00 06 */	sth r0, 6(r4)
/* 8005FD18 0005CC58  4E 80 00 20 */	blr 

.global setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc
setMixerVolume__Q38JASystem12DSPInterface9DSPBufferFUcsUc:
/* 8005FD1C 0005CC5C  A0 03 01 0A */	lhz r0, 0x10a(r3)
/* 8005FD20 0005CC60  28 00 00 00 */	cmplwi r0, 0
/* 8005FD24 0005CC64  4C 82 00 20 */	bnelr 
/* 8005FD28 0005CC68  54 84 1D 78 */	rlwinm r4, r4, 3, 0x15, 0x1c
/* 8005FD2C 0005CC6C  38 84 00 10 */	addi r4, r4, 0x10
/* 8005FD30 0005CC70  7C 83 22 14 */	add r4, r3, r4
/* 8005FD34 0005CC74  B0 A4 00 02 */	sth r5, 2(r4)
/* 8005FD38 0005CC78  A0 04 00 06 */	lhz r0, 6(r4)
/* 8005FD3C 0005CC7C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8005FD40 0005CC80  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 8005FD44 0005CC84  B0 04 00 06 */	sth r0, 6(r4)
/* 8005FD48 0005CC88  4E 80 00 20 */	blr 

.global setMixerVolumeOnly__Q38JASystem12DSPInterface9DSPBufferFUcs
setMixerVolumeOnly__Q38JASystem12DSPInterface9DSPBufferFUcs:
/* 8005FD4C 0005CC8C  A0 03 01 0A */	lhz r0, 0x10a(r3)
/* 8005FD50 0005CC90  28 00 00 00 */	cmplwi r0, 0
/* 8005FD54 0005CC94  4C 82 00 20 */	bnelr 
/* 8005FD58 0005CC98  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 8005FD5C 0005CC9C  7C 63 02 14 */	add r3, r3, r0
/* 8005FD60 0005CCA0  B0 A3 00 12 */	sth r5, 0x12(r3)
/* 8005FD64 0005CCA4  4E 80 00 20 */	blr 

.global setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc
setPauseFlag__Q38JASystem12DSPInterface9DSPBufferFUc:
/* 8005FD68 0005CCA8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8005FD6C 0005CCAC  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8005FD70 0005CCB0  4E 80 00 20 */	blr 

.global flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
flushChannel__Q38JASystem12DSPInterface9DSPBufferFv:
/* 8005FD74 0005CCB4  7C 08 02 A6 */	mflr r0
/* 8005FD78 0005CCB8  38 80 01 80 */	li r4, 0x180
/* 8005FD7C 0005CCBC  90 01 00 04 */	stw r0, 4(r1)
/* 8005FD80 0005CCC0  94 21 FF F8 */	stwu r1, -8(r1)
/* 8005FD84 0005CCC4  48 02 E2 91 */	bl DCFlushRangeNoSync
/* 8005FD88 0005CCC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8005FD8C 0005CCCC  38 21 00 08 */	addi r1, r1, 8
/* 8005FD90 0005CCD0  7C 08 03 A6 */	mtlr r0
/* 8005FD94 0005CCD4  4E 80 00 20 */	blr 

.global setIIRFilterParam__Q38JASystem12DSPInterface9DSPBufferFPs
setIIRFilterParam__Q38JASystem12DSPInterface9DSPBufferFPs:
/* 8005FD98 0005CCD8  A8 04 00 00 */	lha r0, 0(r4)
/* 8005FD9C 0005CCDC  B4 03 01 48 */	sthu r0, 0x148(r3)
/* 8005FDA0 0005CCE0  AC 04 00 02 */	lhau r0, 2(r4)
/* 8005FDA4 0005CCE4  B0 03 00 02 */	sth r0, 2(r3)
/* 8005FDA8 0005CCE8  A8 04 00 02 */	lha r0, 2(r4)
/* 8005FDAC 0005CCEC  B0 03 00 04 */	sth r0, 4(r3)
/* 8005FDB0 0005CCF0  A8 04 00 04 */	lha r0, 4(r4)
/* 8005FDB4 0005CCF4  B0 03 00 06 */	sth r0, 6(r3)
/* 8005FDB8 0005CCF8  4E 80 00 20 */	blr 

.global setFIR8FilterParam__Q38JASystem12DSPInterface9DSPBufferFPs
setFIR8FilterParam__Q38JASystem12DSPInterface9DSPBufferFPs:
/* 8005FDBC 0005CCFC  A8 04 00 00 */	lha r0, 0(r4)
/* 8005FDC0 0005CD00  B4 03 01 20 */	sthu r0, 0x120(r3)
/* 8005FDC4 0005CD04  AC 04 00 02 */	lhau r0, 2(r4)
/* 8005FDC8 0005CD08  B0 03 00 02 */	sth r0, 2(r3)
/* 8005FDCC 0005CD0C  A8 04 00 02 */	lha r0, 2(r4)
/* 8005FDD0 0005CD10  B0 03 00 04 */	sth r0, 4(r3)
/* 8005FDD4 0005CD14  A8 04 00 04 */	lha r0, 4(r4)
/* 8005FDD8 0005CD18  B0 03 00 06 */	sth r0, 6(r3)
/* 8005FDDC 0005CD1C  A8 04 00 06 */	lha r0, 6(r4)
/* 8005FDE0 0005CD20  B0 03 00 08 */	sth r0, 8(r3)
/* 8005FDE4 0005CD24  A8 04 00 08 */	lha r0, 8(r4)
/* 8005FDE8 0005CD28  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8005FDEC 0005CD2C  A8 04 00 0A */	lha r0, 0xa(r4)
/* 8005FDF0 0005CD30  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8005FDF4 0005CD34  A8 04 00 0C */	lha r0, 0xc(r4)
/* 8005FDF8 0005CD38  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8005FDFC 0005CD3C  4E 80 00 20 */	blr 

.global setFilterMode__Q38JASystem12DSPInterface9DSPBufferFUs
setFilterMode__Q38JASystem12DSPInterface9DSPBufferFUs:
/* 8005FE00 0005CD40  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8005FE04 0005CD44  54 85 06 B4 */	rlwinm r5, r4, 0, 0x1a, 0x1a
/* 8005FE08 0005CD48  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 8005FE0C 0005CD4C  41 82 00 14 */	beq lbl_8005FE20
/* 8005FE10 0005CD50  28 00 00 14 */	cmplwi r0, 0x14
/* 8005FE14 0005CD54  40 81 00 18 */	ble lbl_8005FE2C
/* 8005FE18 0005CD58  38 00 00 14 */	li r0, 0x14
/* 8005FE1C 0005CD5C  48 00 00 10 */	b lbl_8005FE2C
lbl_8005FE20:
/* 8005FE20 0005CD60  28 00 00 18 */	cmplwi r0, 0x18
/* 8005FE24 0005CD64  40 81 00 08 */	ble lbl_8005FE2C
/* 8005FE28 0005CD68  38 00 00 18 */	li r0, 0x18
lbl_8005FE2C:
/* 8005FE2C 0005CD6C  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 8005FE30 0005CD70  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8005FE34 0005CD74  7C 04 02 14 */	add r0, r4, r0
/* 8005FE38 0005CD78  B0 03 01 08 */	sth r0, 0x108(r3)
/* 8005FE3C 0005CD7C  4E 80 00 20 */	blr 

.global initFilter__Q38JASystem12DSPInterface9DSPBufferFv
initFilter__Q38JASystem12DSPInterface9DSPBufferFv:
/* 8005FE40 0005CD80  38 80 00 00 */	li r4, 0
/* 8005FE44 0005CD84  B0 83 01 20 */	sth r4, 0x120(r3)
/* 8005FE48 0005CD88  38 00 7F FF */	li r0, 0x7fff
/* 8005FE4C 0005CD8C  B0 83 01 22 */	sth r4, 0x122(r3)
/* 8005FE50 0005CD90  B0 83 01 24 */	sth r4, 0x124(r3)
/* 8005FE54 0005CD94  B0 83 01 26 */	sth r4, 0x126(r3)
/* 8005FE58 0005CD98  B0 83 01 28 */	sth r4, 0x128(r3)
/* 8005FE5C 0005CD9C  B0 83 01 2A */	sth r4, 0x12a(r3)
/* 8005FE60 0005CDA0  B0 83 01 2C */	sth r4, 0x12c(r3)
/* 8005FE64 0005CDA4  B0 83 01 2E */	sth r4, 0x12e(r3)
/* 8005FE68 0005CDA8  B0 03 01 20 */	sth r0, 0x120(r3)
/* 8005FE6C 0005CDAC  B0 83 01 48 */	sth r4, 0x148(r3)
/* 8005FE70 0005CDB0  B0 83 01 4A */	sth r4, 0x14a(r3)
/* 8005FE74 0005CDB4  B0 83 01 4C */	sth r4, 0x14c(r3)
/* 8005FE78 0005CDB8  B0 83 01 4E */	sth r4, 0x14e(r3)
/* 8005FE7C 0005CDBC  B0 03 01 48 */	sth r0, 0x148(r3)
/* 8005FE80 0005CDC0  B0 83 01 50 */	sth r4, 0x150(r3)
/* 8005FE84 0005CDC4  4E 80 00 20 */	blr 

.global setDistFilter__Q38JASystem12DSPInterface9DSPBufferFs
setDistFilter__Q38JASystem12DSPInterface9DSPBufferFs:
/* 8005FE88 0005CDC8  B0 83 01 50 */	sth r4, 0x150(r3)
/* 8005FE8C 0005CDCC  4E 80 00 20 */	blr 

.global setBusConnect__Q38JASystem12DSPInterface9DSPBufferFUcUc
setBusConnect__Q38JASystem12DSPInterface9DSPBufferFUcUc:
/* 8005FE90 0005CDD0  3C C0 80 3B */	lis r6, connect_table$341@ha
/* 8005FE94 0005CDD4  54 A5 0D FC */	rlwinm r5, r5, 1, 0x17, 0x1e
/* 8005FE98 0005CDD8  38 06 B7 80 */	addi r0, r6, connect_table$341@l
/* 8005FE9C 0005CDDC  7C A0 2A 14 */	add r5, r0, r5
/* 8005FEA0 0005CDE0  54 84 1D 78 */	rlwinm r4, r4, 3, 0x15, 0x1c
/* 8005FEA4 0005CDE4  A0 A5 00 00 */	lhz r5, 0(r5)
/* 8005FEA8 0005CDE8  38 04 00 10 */	addi r0, r4, 0x10
/* 8005FEAC 0005CDEC  7C A3 03 2E */	sthx r5, r3, r0
/* 8005FEB0 0005CDF0  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global SEND_TABLE__Q28JASystem12DSPInterface
SEND_TABLE__Q28JASystem12DSPInterface:
	.incbin "baserom.dol", 0x3A8768, 0x18
.global connect_table$341
connect_table$341:
	.incbin "baserom.dol", 0x3A8780, 0x18

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
.global JAS_DSP_PREFIX__Q28JASystem12DSPInterface
JAS_DSP_PREFIX__Q28JASystem12DSPInterface:
	.incbin "baserom.dol", 0x3E31B8, 0x4
.global COMP_BLOCKSAMPLES$234
COMP_BLOCKSAMPLES$234:
	.incbin "baserom.dol", 0x3E31BC, 0x8
.global COMP_BLOCKBYTES$235
COMP_BLOCKBYTES$235:
	.incbin "baserom.dol", 0x3E31C4, 0xC

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global CH_BUF__Q28JASystem12DSPInterface
CH_BUF__Q28JASystem12DSPInterface:
	.skip 0x4
.global FX_BUF__Q28JASystem12DSPInterface
FX_BUF__Q28JASystem12DSPInterface:
	.skip 0x4
