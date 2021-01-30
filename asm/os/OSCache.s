.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global DCEnable
DCEnable:
/* 8008DF68 0008AEA8  7C 00 04 AC */	sync 0
/* 8008DF6C 0008AEAC  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8008DF70 0008AEB0  60 63 40 00 */	ori r3, r3, 0x4000
/* 8008DF74 0008AEB4  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 8008DF78 0008AEB8  4E 80 00 20 */	blr 

.global DCInvalidateRange
DCInvalidateRange:
/* 8008DF7C 0008AEBC  28 04 00 00 */	cmplwi r4, 0
/* 8008DF80 0008AEC0  4C 81 00 20 */	blelr 
/* 8008DF84 0008AEC4  54 65 06 FF */	clrlwi. r5, r3, 0x1b
/* 8008DF88 0008AEC8  41 82 00 08 */	beq lbl_8008DF90
/* 8008DF8C 0008AECC  38 84 00 20 */	addi r4, r4, 0x20
lbl_8008DF90:
/* 8008DF90 0008AED0  38 84 00 1F */	addi r4, r4, 0x1f
/* 8008DF94 0008AED4  54 84 D9 7E */	srwi r4, r4, 5
/* 8008DF98 0008AED8  7C 89 03 A6 */	mtctr r4
lbl_8008DF9C:
/* 8008DF9C 0008AEDC  7C 00 1B AC */	dcbi 0, r3
/* 8008DFA0 0008AEE0  38 63 00 20 */	addi r3, r3, 0x20
/* 8008DFA4 0008AEE4  42 00 FF F8 */	bdnz lbl_8008DF9C
/* 8008DFA8 0008AEE8  4E 80 00 20 */	blr 

.global DCFlushRange
DCFlushRange:
/* 8008DFAC 0008AEEC  28 04 00 00 */	cmplwi r4, 0
/* 8008DFB0 0008AEF0  4C 81 00 20 */	blelr 
/* 8008DFB4 0008AEF4  54 65 06 FF */	clrlwi. r5, r3, 0x1b
/* 8008DFB8 0008AEF8  41 82 00 08 */	beq lbl_8008DFC0
/* 8008DFBC 0008AEFC  38 84 00 20 */	addi r4, r4, 0x20
lbl_8008DFC0:
/* 8008DFC0 0008AF00  38 84 00 1F */	addi r4, r4, 0x1f
/* 8008DFC4 0008AF04  54 84 D9 7E */	srwi r4, r4, 5
/* 8008DFC8 0008AF08  7C 89 03 A6 */	mtctr r4
lbl_8008DFCC:
/* 8008DFCC 0008AF0C  7C 00 18 AC */	dcbf 0, r3
/* 8008DFD0 0008AF10  38 63 00 20 */	addi r3, r3, 0x20
/* 8008DFD4 0008AF14  42 00 FF F8 */	bdnz lbl_8008DFCC
/* 8008DFD8 0008AF18  44 00 00 02 */	sc 
/* 8008DFDC 0008AF1C  4E 80 00 20 */	blr 

.global DCStoreRange
DCStoreRange:
/* 8008DFE0 0008AF20  28 04 00 00 */	cmplwi r4, 0
/* 8008DFE4 0008AF24  4C 81 00 20 */	blelr 
/* 8008DFE8 0008AF28  54 65 06 FF */	clrlwi. r5, r3, 0x1b
/* 8008DFEC 0008AF2C  41 82 00 08 */	beq lbl_8008DFF4
/* 8008DFF0 0008AF30  38 84 00 20 */	addi r4, r4, 0x20
lbl_8008DFF4:
/* 8008DFF4 0008AF34  38 84 00 1F */	addi r4, r4, 0x1f
/* 8008DFF8 0008AF38  54 84 D9 7E */	srwi r4, r4, 5
/* 8008DFFC 0008AF3C  7C 89 03 A6 */	mtctr r4
lbl_8008E000:
/* 8008E000 0008AF40  7C 00 18 6C */	dcbst 0, r3
/* 8008E004 0008AF44  38 63 00 20 */	addi r3, r3, 0x20
/* 8008E008 0008AF48  42 00 FF F8 */	bdnz lbl_8008E000
/* 8008E00C 0008AF4C  44 00 00 02 */	sc 
/* 8008E010 0008AF50  4E 80 00 20 */	blr 

.global DCFlushRangeNoSync
DCFlushRangeNoSync:
/* 8008E014 0008AF54  28 04 00 00 */	cmplwi r4, 0
/* 8008E018 0008AF58  4C 81 00 20 */	blelr 
/* 8008E01C 0008AF5C  54 65 06 FF */	clrlwi. r5, r3, 0x1b
/* 8008E020 0008AF60  41 82 00 08 */	beq lbl_8008E028
/* 8008E024 0008AF64  38 84 00 20 */	addi r4, r4, 0x20
lbl_8008E028:
/* 8008E028 0008AF68  38 84 00 1F */	addi r4, r4, 0x1f
/* 8008E02C 0008AF6C  54 84 D9 7E */	srwi r4, r4, 5
/* 8008E030 0008AF70  7C 89 03 A6 */	mtctr r4
lbl_8008E034:
/* 8008E034 0008AF74  7C 00 18 AC */	dcbf 0, r3
/* 8008E038 0008AF78  38 63 00 20 */	addi r3, r3, 0x20
/* 8008E03C 0008AF7C  42 00 FF F8 */	bdnz lbl_8008E034
/* 8008E040 0008AF80  4E 80 00 20 */	blr 

.global DCZeroRange
DCZeroRange:
/* 8008E044 0008AF84  28 04 00 00 */	cmplwi r4, 0
/* 8008E048 0008AF88  4C 81 00 20 */	blelr 
/* 8008E04C 0008AF8C  54 65 06 FF */	clrlwi. r5, r3, 0x1b
/* 8008E050 0008AF90  41 82 00 08 */	beq lbl_8008E058
/* 8008E054 0008AF94  38 84 00 20 */	addi r4, r4, 0x20
lbl_8008E058:
/* 8008E058 0008AF98  38 84 00 1F */	addi r4, r4, 0x1f
/* 8008E05C 0008AF9C  54 84 D9 7E */	srwi r4, r4, 5
/* 8008E060 0008AFA0  7C 89 03 A6 */	mtctr r4
lbl_8008E064:
/* 8008E064 0008AFA4  7C 00 1F EC */	dcbz 0, r3
/* 8008E068 0008AFA8  38 63 00 20 */	addi r3, r3, 0x20
/* 8008E06C 0008AFAC  42 00 FF F8 */	bdnz lbl_8008E064
/* 8008E070 0008AFB0  4E 80 00 20 */	blr 

.global ICInvalidateRange
ICInvalidateRange:
/* 8008E074 0008AFB4  28 04 00 00 */	cmplwi r4, 0
/* 8008E078 0008AFB8  4C 81 00 20 */	blelr 
/* 8008E07C 0008AFBC  54 65 06 FF */	clrlwi. r5, r3, 0x1b
/* 8008E080 0008AFC0  41 82 00 08 */	beq lbl_8008E088
/* 8008E084 0008AFC4  38 84 00 20 */	addi r4, r4, 0x20
lbl_8008E088:
/* 8008E088 0008AFC8  38 84 00 1F */	addi r4, r4, 0x1f
/* 8008E08C 0008AFCC  54 84 D9 7E */	srwi r4, r4, 5
/* 8008E090 0008AFD0  7C 89 03 A6 */	mtctr r4
lbl_8008E094:
/* 8008E094 0008AFD4  7C 00 1F AC */	icbi 0, r3
/* 8008E098 0008AFD8  38 63 00 20 */	addi r3, r3, 0x20
/* 8008E09C 0008AFDC  42 00 FF F8 */	bdnz lbl_8008E094
/* 8008E0A0 0008AFE0  7C 00 04 AC */	sync 0
/* 8008E0A4 0008AFE4  4C 00 01 2C */	isync 
/* 8008E0A8 0008AFE8  4E 80 00 20 */	blr 

.global ICFlashInvalidate
ICFlashInvalidate:
/* 8008E0AC 0008AFEC  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8008E0B0 0008AFF0  60 63 08 00 */	ori r3, r3, 0x800
/* 8008E0B4 0008AFF4  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 8008E0B8 0008AFF8  4E 80 00 20 */	blr 

.global ICEnable
ICEnable:
/* 8008E0BC 0008AFFC  4C 00 01 2C */	isync 
/* 8008E0C0 0008B000  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8008E0C4 0008B004  60 63 80 00 */	ori r3, r3, 0x8000
/* 8008E0C8 0008B008  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 8008E0CC 0008B00C  4E 80 00 20 */	blr 

.global __LCEnable
__LCEnable:
/* 8008E0D0 0008B010  7C A0 00 A6 */	mfmsr r5
/* 8008E0D4 0008B014  60 A5 10 00 */	ori r5, r5, 0x1000
/* 8008E0D8 0008B018  7C A0 01 24 */	mtmsr r5
/* 8008E0DC 0008B01C  3C 60 80 00 */	lis r3, 0x80000020@ha
/* 8008E0E0 0008B020  38 80 04 00 */	li r4, 0x400
/* 8008E0E4 0008B024  7C 89 03 A6 */	mtctr r4
lbl_8008E0E8:
/* 8008E0E8 0008B028  7C 00 1A 2C */	dcbt 0, r3
/* 8008E0EC 0008B02C  7C 00 18 6C */	dcbst 0, r3
/* 8008E0F0 0008B030  38 63 00 20 */	addi r3, r3, 0x80000020@l
/* 8008E0F4 0008B034  42 00 FF F4 */	bdnz lbl_8008E0E8
/* 8008E0F8 0008B038  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8008E0FC 0008B03C  64 84 10 0F */	oris r4, r4, 0x100f
/* 8008E100 0008B040  7C 98 E3 A6 */	mtspr 0x398, r4
/* 8008E104 0008B044  60 00 00 00 */	nop 
/* 8008E108 0008B048  60 00 00 00 */	nop 
/* 8008E10C 0008B04C  60 00 00 00 */	nop 
/* 8008E110 0008B050  60 00 00 00 */	nop 
/* 8008E114 0008B054  60 00 00 00 */	nop 
/* 8008E118 0008B058  60 00 00 00 */	nop 
/* 8008E11C 0008B05C  60 00 00 00 */	nop 
/* 8008E120 0008B060  60 00 00 00 */	nop 
/* 8008E124 0008B064  60 00 00 00 */	nop 
/* 8008E128 0008B068  60 00 00 00 */	nop 
/* 8008E12C 0008B06C  60 00 00 00 */	nop 
/* 8008E130 0008B070  60 00 00 00 */	nop 
/* 8008E134 0008B074  3C 60 E0 00 */	lis r3, 0xE0000002@h
/* 8008E138 0008B078  60 63 00 02 */	ori r3, r3, 0xE0000002@l
/* 8008E13C 0008B07C  7C 7F 83 A6 */	mtdbatl 3, r3
/* 8008E140 0008B080  60 63 01 FE */	ori r3, r3, 0x1fe
/* 8008E144 0008B084  7C 7E 83 A6 */	mtdbatu 3, r3
/* 8008E148 0008B088  4C 00 01 2C */	isync 
/* 8008E14C 0008B08C  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 8008E150 0008B090  38 C0 02 00 */	li r6, 0x200
/* 8008E154 0008B094  7C C9 03 A6 */	mtctr r6
/* 8008E158 0008B098  38 C0 00 00 */	li r6, 0
lbl_8008E15C:
/* 8008E15C 0008B09C  10 06 1F EC */	dcbz_l r6, r3
/* 8008E160 0008B0A0  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 8008E164 0008B0A4  42 00 FF F8 */	bdnz lbl_8008E15C
/* 8008E168 0008B0A8  60 00 00 00 */	nop 
/* 8008E16C 0008B0AC  60 00 00 00 */	nop 
/* 8008E170 0008B0B0  60 00 00 00 */	nop 
/* 8008E174 0008B0B4  60 00 00 00 */	nop 
/* 8008E178 0008B0B8  60 00 00 00 */	nop 
/* 8008E17C 0008B0BC  60 00 00 00 */	nop 
/* 8008E180 0008B0C0  60 00 00 00 */	nop 
/* 8008E184 0008B0C4  60 00 00 00 */	nop 
/* 8008E188 0008B0C8  60 00 00 00 */	nop 
/* 8008E18C 0008B0CC  60 00 00 00 */	nop 
/* 8008E190 0008B0D0  60 00 00 00 */	nop 
/* 8008E194 0008B0D4  60 00 00 00 */	nop 
/* 8008E198 0008B0D8  4E 80 00 20 */	blr 

.global LCEnable
LCEnable:
/* 8008E19C 0008B0DC  7C 08 02 A6 */	mflr r0
/* 8008E1A0 0008B0E0  90 01 00 04 */	stw r0, 4(r1)
/* 8008E1A4 0008B0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008E1A8 0008B0E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008E1AC 0008B0EC  48 00 20 21 */	bl OSDisableInterrupts
/* 8008E1B0 0008B0F0  7C 7F 1B 78 */	mr r31, r3
/* 8008E1B4 0008B0F4  4B FF FF 1D */	bl __LCEnable
/* 8008E1B8 0008B0F8  7F E3 FB 78 */	mr r3, r31
/* 8008E1BC 0008B0FC  48 00 20 39 */	bl OSRestoreInterrupts
/* 8008E1C0 0008B100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008E1C4 0008B104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008E1C8 0008B108  38 21 00 10 */	addi r1, r1, 0x10
/* 8008E1CC 0008B10C  7C 08 03 A6 */	mtlr r0
/* 8008E1D0 0008B110  4E 80 00 20 */	blr 

.global LCDisable
LCDisable:
/* 8008E1D4 0008B114  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 8008E1D8 0008B118  38 80 02 00 */	li r4, 0x200
/* 8008E1DC 0008B11C  7C 89 03 A6 */	mtctr r4
lbl_8008E1E0:
/* 8008E1E0 0008B120  7C 00 1B AC */	dcbi 0, r3
/* 8008E1E4 0008B124  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 8008E1E8 0008B128  42 00 FF F8 */	bdnz lbl_8008E1E0
/* 8008E1EC 0008B12C  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8008E1F0 0008B130  54 84 01 04 */	rlwinm r4, r4, 0, 4, 2
/* 8008E1F4 0008B134  7C 98 E3 A6 */	mtspr 0x398, r4
/* 8008E1F8 0008B138  4E 80 00 20 */	blr 

.global LCStoreBlocks
LCStoreBlocks:
/* 8008E1FC 0008B13C  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 8008E200 0008B140  54 63 01 3E */	clrlwi r3, r3, 4
/* 8008E204 0008B144  7C C6 1B 78 */	or r6, r6, r3
/* 8008E208 0008B148  7C DA E3 A6 */	mtspr 0x39a, r6
/* 8008E20C 0008B14C  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 8008E210 0008B150  7C C6 23 78 */	or r6, r6, r4
/* 8008E214 0008B154  60 C6 00 02 */	ori r6, r6, 2
/* 8008E218 0008B158  7C DB E3 A6 */	mtspr 0x39b, r6
/* 8008E21C 0008B15C  4E 80 00 20 */	blr 

.global LCStoreData
LCStoreData:
/* 8008E220 0008B160  7C 08 02 A6 */	mflr r0
/* 8008E224 0008B164  90 01 00 04 */	stw r0, 4(r1)
/* 8008E228 0008B168  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8008E22C 0008B16C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8008E230 0008B170  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8008E234 0008B174  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8008E238 0008B178  93 81 00 18 */	stw r28, 0x18(r1)
/* 8008E23C 0008B17C  7C 7C 1B 78 */	mr r28, r3
/* 8008E240 0008B180  7C 9D 23 78 */	mr r29, r4
/* 8008E244 0008B184  38 05 00 1F */	addi r0, r5, 0x1f
/* 8008E248 0008B188  54 03 D9 7E */	srwi r3, r0, 5
/* 8008E24C 0008B18C  38 03 00 7F */	addi r0, r3, 0x7f
/* 8008E250 0008B190  7C 7F 1B 78 */	mr r31, r3
/* 8008E254 0008B194  54 1E C9 FE */	srwi r30, r0, 7
/* 8008E258 0008B198  48 00 00 04 */	b lbl_8008E25C
lbl_8008E25C:
/* 8008E25C 0008B19C  48 00 00 04 */	b lbl_8008E260
lbl_8008E260:
/* 8008E260 0008B1A0  48 00 00 40 */	b lbl_8008E2A0
lbl_8008E264:
/* 8008E264 0008B1A4  28 1F 00 80 */	cmplwi r31, 0x80
/* 8008E268 0008B1A8  40 80 00 1C */	bge lbl_8008E284
/* 8008E26C 0008B1AC  7F 83 E3 78 */	mr r3, r28
/* 8008E270 0008B1B0  7F A4 EB 78 */	mr r4, r29
/* 8008E274 0008B1B4  7F E5 FB 78 */	mr r5, r31
/* 8008E278 0008B1B8  4B FF FF 85 */	bl LCStoreBlocks
/* 8008E27C 0008B1BC  3B E0 00 00 */	li r31, 0
/* 8008E280 0008B1C0  48 00 00 20 */	b lbl_8008E2A0
lbl_8008E284:
/* 8008E284 0008B1C4  7F 83 E3 78 */	mr r3, r28
/* 8008E288 0008B1C8  7F A4 EB 78 */	mr r4, r29
/* 8008E28C 0008B1CC  38 A0 00 00 */	li r5, 0
/* 8008E290 0008B1D0  4B FF FF 6D */	bl LCStoreBlocks
/* 8008E294 0008B1D4  3B FF FF 80 */	addi r31, r31, -128
/* 8008E298 0008B1D8  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 8008E29C 0008B1DC  3B BD 10 00 */	addi r29, r29, 0x1000
lbl_8008E2A0:
/* 8008E2A0 0008B1E0  28 1F 00 00 */	cmplwi r31, 0
/* 8008E2A4 0008B1E4  40 82 FF C0 */	bne lbl_8008E264
/* 8008E2A8 0008B1E8  7F C3 F3 78 */	mr r3, r30
/* 8008E2AC 0008B1EC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8008E2B0 0008B1F0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8008E2B4 0008B1F4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8008E2B8 0008B1F8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8008E2BC 0008B1FC  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8008E2C0 0008B200  38 21 00 28 */	addi r1, r1, 0x28
/* 8008E2C4 0008B204  7C 08 03 A6 */	mtlr r0
/* 8008E2C8 0008B208  4E 80 00 20 */	blr 

.global LCQueueWait
LCQueueWait:
/* 8008E2CC 0008B20C  38 63 00 01 */	addi r3, r3, 1
lbl_8008E2D0:
/* 8008E2D0 0008B210  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8008E2D4 0008B214  54 84 47 3E */	rlwinm r4, r4, 8, 0x1c, 0x1f
/* 8008E2D8 0008B218  7D 04 18 00 */	cmpw cr2, r4, r3
/* 8008E2DC 0008B21C  40 88 FF F4 */	bge cr2, lbl_8008E2D0
/* 8008E2E0 0008B220  4E 80 00 20 */	blr 

.global L2GlobalInvalidate
L2GlobalInvalidate:
/* 8008E2E4 0008B224  7C 08 02 A6 */	mflr r0
/* 8008E2E8 0008B228  90 01 00 04 */	stw r0, 4(r1)
/* 8008E2EC 0008B22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008E2F0 0008B230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008E2F4 0008B234  7C 00 04 AC */	sync 0
/* 8008E2F8 0008B238  4B FF E0 C9 */	bl PPCMfl2cr
/* 8008E2FC 0008B23C  54 63 00 7E */	clrlwi r3, r3, 1
/* 8008E300 0008B240  4B FF E0 C9 */	bl PPCMtl2cr
/* 8008E304 0008B244  7C 00 04 AC */	sync 0
/* 8008E308 0008B248  4B FF E0 B9 */	bl PPCMfl2cr
/* 8008E30C 0008B24C  64 63 00 20 */	oris r3, r3, 0x20
/* 8008E310 0008B250  4B FF E0 B9 */	bl PPCMtl2cr
/* 8008E314 0008B254  48 00 00 04 */	b lbl_8008E318
lbl_8008E318:
/* 8008E318 0008B258  48 00 00 04 */	b lbl_8008E31C
lbl_8008E31C:
/* 8008E31C 0008B25C  4B FF E0 A5 */	bl PPCMfl2cr
/* 8008E320 0008B260  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 8008E324 0008B264  28 00 00 00 */	cmplwi r0, 0
/* 8008E328 0008B268  40 82 FF F4 */	bne lbl_8008E31C
/* 8008E32C 0008B26C  4B FF E0 95 */	bl PPCMfl2cr
/* 8008E330 0008B270  54 63 02 D2 */	rlwinm r3, r3, 0, 0xb, 9
/* 8008E334 0008B274  4B FF E0 95 */	bl PPCMtl2cr
/* 8008E338 0008B278  48 00 00 04 */	b lbl_8008E33C
lbl_8008E33C:
/* 8008E33C 0008B27C  3C 60 80 3B */	lis r3, $$269@ha
/* 8008E340 0008B280  3B E3 F6 98 */	addi r31, r3, $$269@l
/* 8008E344 0008B284  48 00 00 04 */	b lbl_8008E348
lbl_8008E348:
/* 8008E348 0008B288  48 00 00 10 */	b lbl_8008E358
lbl_8008E34C:
/* 8008E34C 0008B28C  7F E3 FB 78 */	mr r3, r31
/* 8008E350 0008B290  4C C6 31 82 */	crclr 6
/* 8008E354 0008B294  4B FF E1 85 */	bl DBPrintf
lbl_8008E358:
/* 8008E358 0008B298  4B FF E0 69 */	bl PPCMfl2cr
/* 8008E35C 0008B29C  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 8008E360 0008B2A0  28 00 00 00 */	cmplwi r0, 0
/* 8008E364 0008B2A4  40 82 FF E8 */	bne lbl_8008E34C
/* 8008E368 0008B2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008E36C 0008B2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008E370 0008B2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8008E374 0008B2B4  7C 08 03 A6 */	mtlr r0
/* 8008E378 0008B2B8  4E 80 00 20 */	blr 

.global DMAErrorHandler
DMAErrorHandler:
/* 8008E37C 0008B2BC  7C 08 02 A6 */	mflr r0
/* 8008E380 0008B2C0  90 01 00 04 */	stw r0, 4(r1)
/* 8008E384 0008B2C4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8008E388 0008B2C8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8008E38C 0008B2CC  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8008E390 0008B2D0  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8008E394 0008B2D4  40 86 00 24 */	bne cr1, lbl_8008E3B8
/* 8008E398 0008B2D8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8008E39C 0008B2DC  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8008E3A0 0008B2E0  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8008E3A4 0008B2E4  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8008E3A8 0008B2E8  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8008E3AC 0008B2EC  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8008E3B0 0008B2F0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8008E3B4 0008B2F4  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8008E3B8:
/* 8008E3B8 0008B2F8  90 61 00 08 */	stw r3, 8(r1)
/* 8008E3BC 0008B2FC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8008E3C0 0008B300  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8008E3C4 0008B304  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8008E3C8 0008B308  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8008E3CC 0008B30C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8008E3D0 0008B310  91 21 00 20 */	stw r9, 0x20(r1)
/* 8008E3D4 0008B314  91 41 00 24 */	stw r10, 0x24(r1)
/* 8008E3D8 0008B318  7C 9D 23 78 */	mr r29, r4
/* 8008E3DC 0008B31C  3C 60 80 3B */	lis r3, $$269@ha
/* 8008E3E0 0008B320  3B E3 F6 98 */	addi r31, r3, $$269@l
/* 8008E3E4 0008B324  4B FF E0 11 */	bl PPCMfhid2
/* 8008E3E8 0008B328  7C 7E 1B 78 */	mr r30, r3
/* 8008E3EC 0008B32C  4C C6 31 82 */	crclr 6
/* 8008E3F0 0008B330  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8008E3F4 0008B334  48 00 0B 71 */	bl OSReport
/* 8008E3F8 0008B338  80 BD 01 9C */	lwz r5, 0x19c(r29)
/* 8008E3FC 0008B33C  7F C4 F3 78 */	mr r4, r30
/* 8008E400 0008B340  38 7F 00 44 */	addi r3, r31, 0x44
/* 8008E404 0008B344  4C C6 31 82 */	crclr 6
/* 8008E408 0008B348  48 00 0B 5D */	bl OSReport
/* 8008E40C 0008B34C  57 C0 02 16 */	rlwinm r0, r30, 0, 8, 0xb
/* 8008E410 0008B350  28 00 00 00 */	cmplwi r0, 0
/* 8008E414 0008B354  41 82 00 14 */	beq lbl_8008E428
/* 8008E418 0008B358  80 1D 01 9C */	lwz r0, 0x19c(r29)
/* 8008E41C 0008B35C  54 00 02 94 */	rlwinm r0, r0, 0, 0xa, 0xa
/* 8008E420 0008B360  28 00 00 00 */	cmplwi r0, 0
/* 8008E424 0008B364  40 82 00 1C */	bne lbl_8008E440
lbl_8008E428:
/* 8008E428 0008B368  38 7F 00 60 */	addi r3, r31, 0x60
/* 8008E42C 0008B36C  4C C6 31 82 */	crclr 6
/* 8008E430 0008B370  48 00 0B 35 */	bl OSReport
/* 8008E434 0008B374  7F A3 EB 78 */	mr r3, r29
/* 8008E438 0008B378  48 00 06 8D */	bl OSDumpContext
/* 8008E43C 0008B37C  4B FF DF A5 */	bl PPCHalt
lbl_8008E440:
/* 8008E440 0008B380  38 7F 00 90 */	addi r3, r31, 0x90
/* 8008E444 0008B384  4C C6 31 82 */	crclr 6
/* 8008E448 0008B388  48 00 0B 1D */	bl OSReport
/* 8008E44C 0008B38C  38 7F 00 CC */	addi r3, r31, 0xcc
/* 8008E450 0008B390  4C C6 31 82 */	crclr 6
/* 8008E454 0008B394  48 00 0B 11 */	bl OSReport
/* 8008E458 0008B398  57 C0 02 10 */	rlwinm r0, r30, 0, 8, 8
/* 8008E45C 0008B39C  28 00 00 00 */	cmplwi r0, 0
/* 8008E460 0008B3A0  41 82 00 10 */	beq lbl_8008E470
/* 8008E464 0008B3A4  38 7F 01 04 */	addi r3, r31, 0x104
/* 8008E468 0008B3A8  4C C6 31 82 */	crclr 6
/* 8008E46C 0008B3AC  48 00 0A F9 */	bl OSReport
lbl_8008E470:
/* 8008E470 0008B3B0  57 C0 02 52 */	rlwinm r0, r30, 0, 9, 9
/* 8008E474 0008B3B4  28 00 00 00 */	cmplwi r0, 0
/* 8008E478 0008B3B8  41 82 00 10 */	beq lbl_8008E488
/* 8008E47C 0008B3BC  38 7F 01 44 */	addi r3, r31, 0x144
/* 8008E480 0008B3C0  4C C6 31 82 */	crclr 6
/* 8008E484 0008B3C4  48 00 0A E1 */	bl OSReport
lbl_8008E488:
/* 8008E488 0008B3C8  57 C0 02 94 */	rlwinm r0, r30, 0, 0xa, 0xa
/* 8008E48C 0008B3CC  28 00 00 00 */	cmplwi r0, 0
/* 8008E490 0008B3D0  41 82 00 10 */	beq lbl_8008E4A0
/* 8008E494 0008B3D4  38 7F 01 70 */	addi r3, r31, 0x170
/* 8008E498 0008B3D8  4C C6 31 82 */	crclr 6
/* 8008E49C 0008B3DC  48 00 0A C9 */	bl OSReport
lbl_8008E4A0:
/* 8008E4A0 0008B3E0  57 C0 02 D6 */	rlwinm r0, r30, 0, 0xb, 0xb
/* 8008E4A4 0008B3E4  28 00 00 00 */	cmplwi r0, 0
/* 8008E4A8 0008B3E8  41 82 00 10 */	beq lbl_8008E4B8
/* 8008E4AC 0008B3EC  38 7F 01 90 */	addi r3, r31, 0x190
/* 8008E4B0 0008B3F0  4C C6 31 82 */	crclr 6
/* 8008E4B4 0008B3F4  48 00 0A B1 */	bl OSReport
lbl_8008E4B8:
/* 8008E4B8 0008B3F8  7F C3 F3 78 */	mr r3, r30
/* 8008E4BC 0008B3FC  4B FF DF 41 */	bl PPCMthid2
/* 8008E4C0 0008B400  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8008E4C4 0008B404  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8008E4C8 0008B408  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8008E4CC 0008B40C  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8008E4D0 0008B410  38 21 00 80 */	addi r1, r1, 0x80
/* 8008E4D4 0008B414  7C 08 03 A6 */	mtlr r0
/* 8008E4D8 0008B418  4E 80 00 20 */	blr 

.global __OSCacheInit
__OSCacheInit:
/* 8008E4DC 0008B41C  7C 08 02 A6 */	mflr r0
/* 8008E4E0 0008B420  90 01 00 04 */	stw r0, 4(r1)
/* 8008E4E4 0008B424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008E4E8 0008B428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008E4EC 0008B42C  93 C1 00 08 */	stw r30, 8(r1)
/* 8008E4F0 0008B430  3C 60 80 3B */	lis r3, $$269@ha
/* 8008E4F4 0008B434  3B E3 F6 98 */	addi r31, r3, $$269@l
/* 8008E4F8 0008B438  4B FF DE B9 */	bl PPCMfhid0
/* 8008E4FC 0008B43C  54 60 04 20 */	rlwinm r0, r3, 0, 0x10, 0x10
/* 8008E500 0008B440  28 00 00 00 */	cmplwi r0, 0
/* 8008E504 0008B444  40 82 00 14 */	bne lbl_8008E518
/* 8008E508 0008B448  4B FF FB B5 */	bl ICEnable
/* 8008E50C 0008B44C  38 7F 01 AC */	addi r3, r31, 0x1ac
/* 8008E510 0008B450  4C C6 31 82 */	crclr 6
/* 8008E514 0008B454  4B FF DF C5 */	bl DBPrintf
lbl_8008E518:
/* 8008E518 0008B458  4B FF DE 99 */	bl PPCMfhid0
/* 8008E51C 0008B45C  54 60 04 62 */	rlwinm r0, r3, 0, 0x11, 0x11
/* 8008E520 0008B460  28 00 00 00 */	cmplwi r0, 0
/* 8008E524 0008B464  40 82 00 14 */	bne lbl_8008E538
/* 8008E528 0008B468  4B FF FA 41 */	bl DCEnable
/* 8008E52C 0008B46C  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 8008E530 0008B470  4C C6 31 82 */	crclr 6
/* 8008E534 0008B474  4B FF DF A5 */	bl DBPrintf
lbl_8008E538:
/* 8008E538 0008B478  4B FF DE 89 */	bl PPCMfl2cr
/* 8008E53C 0008B47C  54 60 00 00 */	rlwinm r0, r3, 0, 0, 0
/* 8008E540 0008B480  28 00 00 00 */	cmplwi r0, 0
/* 8008E544 0008B484  40 82 00 58 */	bne lbl_8008E59C
/* 8008E548 0008B488  4B FF DE 59 */	bl PPCMfmsr
/* 8008E54C 0008B48C  7C 7E 1B 78 */	mr r30, r3
/* 8008E550 0008B490  7C 00 04 AC */	sync 0
/* 8008E554 0008B494  38 60 00 30 */	li r3, 0x30
/* 8008E558 0008B498  4B FF DE 51 */	bl PPCMtmsr
/* 8008E55C 0008B49C  7C 00 04 AC */	sync 0
/* 8008E560 0008B4A0  7C 00 04 AC */	sync 0
/* 8008E564 0008B4A4  4B FF DE 5D */	bl PPCMfl2cr
/* 8008E568 0008B4A8  54 63 00 7E */	clrlwi r3, r3, 1
/* 8008E56C 0008B4AC  4B FF DE 5D */	bl PPCMtl2cr
/* 8008E570 0008B4B0  7C 00 04 AC */	sync 0
/* 8008E574 0008B4B4  4B FF FD 71 */	bl L2GlobalInvalidate
/* 8008E578 0008B4B8  7F C3 F3 78 */	mr r3, r30
/* 8008E57C 0008B4BC  4B FF DE 2D */	bl PPCMtmsr
/* 8008E580 0008B4C0  4B FF DE 41 */	bl PPCMfl2cr
/* 8008E584 0008B4C4  64 60 80 00 */	oris r0, r3, 0x8000
/* 8008E588 0008B4C8  54 03 02 D2 */	rlwinm r3, r0, 0, 0xb, 9
/* 8008E58C 0008B4CC  4B FF DE 3D */	bl PPCMtl2cr
/* 8008E590 0008B4D0  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 8008E594 0008B4D4  4C C6 31 82 */	crclr 6
/* 8008E598 0008B4D8  4B FF DF 41 */	bl DBPrintf
lbl_8008E59C:
/* 8008E59C 0008B4DC  3C 60 80 09 */	lis r3, DMAErrorHandler@ha
/* 8008E5A0 0008B4E0  38 83 E3 7C */	addi r4, r3, DMAErrorHandler@l
/* 8008E5A4 0008B4E4  38 60 00 01 */	li r3, 1
/* 8008E5A8 0008B4E8  48 00 0B 69 */	bl OSSetErrorHandler
/* 8008E5AC 0008B4EC  38 7F 01 FC */	addi r3, r31, 0x1fc
/* 8008E5B0 0008B4F0  4C C6 31 82 */	crclr 6
/* 8008E5B4 0008B4F4  4B FF DF 25 */	bl DBPrintf
/* 8008E5B8 0008B4F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008E5BC 0008B4FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008E5C0 0008B500  83 C1 00 08 */	lwz r30, 8(r1)
/* 8008E5C4 0008B504  38 21 00 10 */	addi r1, r1, 0x10
/* 8008E5C8 0008B508  7C 08 03 A6 */	mtlr r0
/* 8008E5CC 0008B50C  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global $$269
$$269:
	.incbin "baserom.dol", 0x3AC698, 0x2C
.global $$290
$$290:
	.incbin "baserom.dol", 0x3AC6C4, 0x18
.global $$291
$$291:
	.incbin "baserom.dol", 0x3AC6DC, 0x1C
.global $$292
$$292:
	.incbin "baserom.dol", 0x3AC6F8, 0x30
.global $$293
$$293:
	.incbin "baserom.dol", 0x3AC728, 0x3C
.global $$294
$$294:
	.incbin "baserom.dol", 0x3AC764, 0x38
.global $$295
$$295:
	.incbin "baserom.dol", 0x3AC79C, 0x40
.global $$296
$$296:
	.incbin "baserom.dol", 0x3AC7DC, 0x2C
.global $$297
$$297:
	.incbin "baserom.dol", 0x3AC808, 0x20
.global $$298
$$298:
	.incbin "baserom.dol", 0x3AC828, 0x1C
.global $$2110
$$2110:
	.incbin "baserom.dol", 0x3AC844, 0x1C
.global $$2111
$$2111:
	.incbin "baserom.dol", 0x3AC860, 0x1C
.global $$2112
$$2112:
	.incbin "baserom.dol", 0x3AC87C, 0x18
.global $$2113
$$2113:
	.incbin "baserom.dol", 0x3AC894, 0x34
