.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global GetValue__Q24Koga8ToolDataCFiPCcRPCc
GetValue__Q24Koga8ToolDataCFiPCcRPCc:
/* 800D209C 000CEFDC  80 E3 00 04 */	lwz r7, 4(r3)
/* 800D20A0 000CEFE0  3C 60 02 00 */	lis r3, 0x01FFFFD9@ha
/* 800D20A4 000CEFE4  38 63 FF D9 */	addi r3, r3, 0x01FFFFD9@l
/* 800D20A8 000CEFE8  81 67 00 04 */	lwz r11, 4(r7)
/* 800D20AC 000CEFEC  39 40 00 00 */	li r10, 0
/* 800D20B0 000CEFF0  39 00 13 81 */	li r8, 0x1381
/* 800D20B4 000CEFF4  48 00 00 30 */	b lbl_800D20E4
lbl_800D20B8:
/* 800D20B8 000CEFF8  7D 29 07 74 */	extsb r9, r9
/* 800D20BC 000CEFFC  55 40 40 2E */	slwi r0, r10, 8
/* 800D20C0 000CF000  7D 49 02 14 */	add r10, r9, r0
/* 800D20C4 000CF004  7D 28 50 16 */	mulhwu r9, r8, r10
/* 800D20C8 000CF008  7C 09 50 50 */	subf r0, r9, r10
/* 800D20CC 000CF00C  54 00 F8 7E */	srwi r0, r0, 1
/* 800D20D0 000CF010  7C 00 4A 14 */	add r0, r0, r9
/* 800D20D4 000CF014  54 00 46 3E */	srwi r0, r0, 0x18
/* 800D20D8 000CF018  7C 00 19 D6 */	mullw r0, r0, r3
/* 800D20DC 000CF01C  7D 40 50 50 */	subf r10, r0, r10
/* 800D20E0 000CF020  38 A5 00 01 */	addi r5, r5, 1
lbl_800D20E4:
/* 800D20E4 000CF024  89 25 00 00 */	lbz r9, 0(r5)
/* 800D20E8 000CF028  7D 20 07 75 */	extsb. r0, r9
/* 800D20EC 000CF02C  40 82 FF CC */	bne lbl_800D20B8
/* 800D20F0 000CF030  2C 0B 00 00 */	cmpwi r11, 0
/* 800D20F4 000CF034  7D 69 03 A6 */	mtctr r11
/* 800D20F8 000CF038  38 A0 00 00 */	li r5, 0
/* 800D20FC 000CF03C  38 65 00 00 */	addi r3, r5, 0
/* 800D2100 000CF040  40 81 00 24 */	ble lbl_800D2124
lbl_800D2104:
/* 800D2104 000CF044  38 03 00 10 */	addi r0, r3, 0x10
/* 800D2108 000CF048  7C 07 00 2E */	lwzx r0, r7, r0
/* 800D210C 000CF04C  7C 0A 00 40 */	cmplw r10, r0
/* 800D2110 000CF050  40 82 00 08 */	bne lbl_800D2118
/* 800D2114 000CF054  48 00 00 14 */	b lbl_800D2128
lbl_800D2118:
/* 800D2118 000CF058  38 A5 00 01 */	addi r5, r5, 1
/* 800D211C 000CF05C  38 63 00 0C */	addi r3, r3, 0xc
/* 800D2120 000CF060  42 00 FF E4 */	bdnz lbl_800D2104
lbl_800D2124:
/* 800D2124 000CF064  38 A0 FF FF */	li r5, -1
lbl_800D2128:
/* 800D2128 000CF068  2C 05 00 00 */	cmpwi r5, 0
/* 800D212C 000CF06C  40 80 00 0C */	bge lbl_800D2138
/* 800D2130 000CF070  38 60 00 00 */	li r3, 0
/* 800D2134 000CF074  4E 80 00 20 */	blr 
lbl_800D2138:
/* 800D2138 000CF078  80 07 00 0C */	lwz r0, 0xc(r7)
/* 800D213C 000CF07C  1C 65 00 0C */	mulli r3, r5, 0xc
/* 800D2140 000CF080  80 A7 00 08 */	lwz r5, 8(r7)
/* 800D2144 000CF084  7C 84 01 D6 */	mullw r4, r4, r0
/* 800D2148 000CF088  38 03 00 18 */	addi r0, r3, 0x18
/* 800D214C 000CF08C  7C 07 02 2E */	lhzx r0, r7, r0
/* 800D2150 000CF090  7C 85 22 14 */	add r4, r5, r4
/* 800D2154 000CF094  38 60 00 01 */	li r3, 1
/* 800D2158 000CF098  7C 04 02 14 */	add r0, r4, r0
/* 800D215C 000CF09C  7C 07 02 14 */	add r0, r7, r0
/* 800D2160 000CF0A0  90 06 00 00 */	stw r0, 0(r6)
/* 800D2164 000CF0A4  4E 80 00 20 */	blr 

.global GetValue__Q24Koga8ToolDataCFiPCcRl
GetValue__Q24Koga8ToolDataCFiPCcRl:
/* 800D2168 000CF0A8  80 E3 00 04 */	lwz r7, 4(r3)
/* 800D216C 000CF0AC  3C 60 02 00 */	lis r3, 0x01FFFFD9@ha
/* 800D2170 000CF0B0  38 63 FF D9 */	addi r3, r3, 0x01FFFFD9@l
/* 800D2174 000CF0B4  81 67 00 04 */	lwz r11, 4(r7)
/* 800D2178 000CF0B8  39 40 00 00 */	li r10, 0
/* 800D217C 000CF0BC  39 00 13 81 */	li r8, 0x1381
/* 800D2180 000CF0C0  48 00 00 30 */	b lbl_800D21B0
lbl_800D2184:
/* 800D2184 000CF0C4  7D 29 07 74 */	extsb r9, r9
/* 800D2188 000CF0C8  55 40 40 2E */	slwi r0, r10, 8
/* 800D218C 000CF0CC  7D 49 02 14 */	add r10, r9, r0
/* 800D2190 000CF0D0  7D 28 50 16 */	mulhwu r9, r8, r10
/* 800D2194 000CF0D4  7C 09 50 50 */	subf r0, r9, r10
/* 800D2198 000CF0D8  54 00 F8 7E */	srwi r0, r0, 1
/* 800D219C 000CF0DC  7C 00 4A 14 */	add r0, r0, r9
/* 800D21A0 000CF0E0  54 00 46 3E */	srwi r0, r0, 0x18
/* 800D21A4 000CF0E4  7C 00 19 D6 */	mullw r0, r0, r3
/* 800D21A8 000CF0E8  7D 40 50 50 */	subf r10, r0, r10
/* 800D21AC 000CF0EC  38 A5 00 01 */	addi r5, r5, 1
lbl_800D21B0:
/* 800D21B0 000CF0F0  89 25 00 00 */	lbz r9, 0(r5)
/* 800D21B4 000CF0F4  7D 20 07 75 */	extsb. r0, r9
/* 800D21B8 000CF0F8  40 82 FF CC */	bne lbl_800D2184
/* 800D21BC 000CF0FC  2C 0B 00 00 */	cmpwi r11, 0
/* 800D21C0 000CF100  7D 69 03 A6 */	mtctr r11
/* 800D21C4 000CF104  38 A0 00 00 */	li r5, 0
/* 800D21C8 000CF108  38 65 00 00 */	addi r3, r5, 0
/* 800D21CC 000CF10C  40 81 00 24 */	ble lbl_800D21F0
lbl_800D21D0:
/* 800D21D0 000CF110  38 03 00 10 */	addi r0, r3, 0x10
/* 800D21D4 000CF114  7C 07 00 2E */	lwzx r0, r7, r0
/* 800D21D8 000CF118  7C 0A 00 40 */	cmplw r10, r0
/* 800D21DC 000CF11C  40 82 00 08 */	bne lbl_800D21E4
/* 800D21E0 000CF120  48 00 00 14 */	b lbl_800D21F4
lbl_800D21E4:
/* 800D21E4 000CF124  38 A5 00 01 */	addi r5, r5, 1
/* 800D21E8 000CF128  38 63 00 0C */	addi r3, r3, 0xc
/* 800D21EC 000CF12C  42 00 FF E4 */	bdnz lbl_800D21D0
lbl_800D21F0:
/* 800D21F0 000CF130  38 A0 FF FF */	li r5, -1
lbl_800D21F4:
/* 800D21F4 000CF134  2C 05 00 00 */	cmpwi r5, 0
/* 800D21F8 000CF138  40 80 00 0C */	bge lbl_800D2204
/* 800D21FC 000CF13C  38 60 00 00 */	li r3, 0
/* 800D2200 000CF140  4E 80 00 20 */	blr 
lbl_800D2204:
/* 800D2204 000CF144  80 07 00 0C */	lwz r0, 0xc(r7)
/* 800D2208 000CF148  1C 65 00 0C */	mulli r3, r5, 0xc
/* 800D220C 000CF14C  80 A7 00 08 */	lwz r5, 8(r7)
/* 800D2210 000CF150  7C 84 01 D6 */	mullw r4, r4, r0
/* 800D2214 000CF154  38 03 00 18 */	addi r0, r3, 0x18
/* 800D2218 000CF158  7C 07 02 2E */	lhzx r0, r7, r0
/* 800D221C 000CF15C  7C 85 22 14 */	add r4, r5, r4
/* 800D2220 000CF160  38 60 00 01 */	li r3, 1
/* 800D2224 000CF164  7C 04 02 14 */	add r0, r4, r0
/* 800D2228 000CF168  7C 07 00 2E */	lwzx r0, r7, r0
/* 800D222C 000CF16C  90 06 00 00 */	stw r0, 0(r6)
/* 800D2230 000CF170  4E 80 00 20 */	blr 

.global Attach__Q24Koga8ToolDataFPCv
Attach__Q24Koga8ToolDataFPCv:
/* 800D2234 000CF174  28 04 00 00 */	cmplwi r4, 0
/* 800D2238 000CF178  40 82 00 0C */	bne lbl_800D2244
/* 800D223C 000CF17C  38 60 00 00 */	li r3, 0
/* 800D2240 000CF180  4E 80 00 20 */	blr 
lbl_800D2244:
/* 800D2244 000CF184  90 83 00 04 */	stw r4, 4(r3)
/* 800D2248 000CF188  38 60 00 01 */	li r3, 1
/* 800D224C 000CF18C  4E 80 00 20 */	blr 

.global __dt__Q24Koga8ToolDataFv
__dt__Q24Koga8ToolDataFv:
/* 800D2250 000CF190  7C 08 02 A6 */	mflr r0
/* 800D2254 000CF194  90 01 00 04 */	stw r0, 4(r1)
/* 800D2258 000CF198  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800D225C 000CF19C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800D2260 000CF1A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800D2264 000CF1A4  41 82 00 20 */	beq lbl_800D2284
/* 800D2268 000CF1A8  3C 60 80 3B */	lis r3, __vt__Q24Koga8ToolData@ha
/* 800D226C 000CF1AC  38 63 34 80 */	addi r3, r3, __vt__Q24Koga8ToolData@l
/* 800D2270 000CF1B0  7C 80 07 35 */	extsh. r0, r4
/* 800D2274 000CF1B4  90 7F 00 00 */	stw r3, 0(r31)
/* 800D2278 000CF1B8  40 81 00 0C */	ble lbl_800D2284
/* 800D227C 000CF1BC  7F E3 FB 78 */	mr r3, r31
/* 800D2280 000CF1C0  4B F3 A8 31 */	bl __dl__FPv
lbl_800D2284:
/* 800D2284 000CF1C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800D2288 000CF1C8  7F E3 FB 78 */	mr r3, r31
/* 800D228C 000CF1CC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800D2290 000CF1D0  38 21 00 18 */	addi r1, r1, 0x18
/* 800D2294 000CF1D4  7C 08 03 A6 */	mtlr r0
/* 800D2298 000CF1D8  4E 80 00 20 */	blr 

.global __ct__Q24Koga8ToolDataFv
__ct__Q24Koga8ToolDataFv:
/* 800D229C 000CF1DC  3C 80 80 3B */	lis r4, __vt__Q24Koga8ToolData@ha
/* 800D22A0 000CF1E0  38 04 34 80 */	addi r0, r4, __vt__Q24Koga8ToolData@l
/* 800D22A4 000CF1E4  90 03 00 00 */	stw r0, 0(r3)
/* 800D22A8 000CF1E8  38 00 00 00 */	li r0, 0
/* 800D22AC 000CF1EC  90 03 00 04 */	stw r0, 4(r3)
/* 800D22B0 000CF1F0  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__Q24Koga8ToolData
__vt__Q24Koga8ToolData:
	.incbin "baserom.dol", 0x3B0480, 0x10
