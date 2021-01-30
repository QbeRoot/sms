.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global init__Q28JASystem6KernelFv
init__Q28JASystem6KernelFv:
/* 80060618 0005D558  7C 08 02 A6 */	mflr r0
/* 8006061C 0005D55C  90 01 00 04 */	stw r0, 4(r1)
/* 80060620 0005D560  94 21 FF F8 */	stwu r1, -8(r1)
/* 80060624 0005D564  48 00 0E 61 */	bl resetCallback__Q28JASystem6KernelFv
/* 80060628 0005D568  48 00 00 21 */	bl initSystem__Q28JASystem6KernelFv
/* 8006062C 0005D56C  48 00 12 21 */	bl portCmdInit__Q28JASystem6KernelFv
/* 80060630 0005D570  48 00 13 15 */	bl init__Q28JASystem3DvdFv
/* 80060634 0005D574  48 00 06 B9 */	bl initSinfT__Q28JASystem4CalcFv
/* 80060638 0005D578  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006063C 0005D57C  38 21 00 08 */	addi r1, r1, 8
/* 80060640 0005D580  7C 08 03 A6 */	mtlr r0
/* 80060644 0005D584  4E 80 00 20 */	blr 

.global initSystem__Q28JASystem6KernelFv
initSystem__Q28JASystem6KernelFv:
/* 80060648 0005D588  7C 08 02 A6 */	mflr r0
/* 8006064C 0005D58C  3C 60 80 3E */	lis r3, dac__Q28JASystem6Kernel@ha
/* 80060650 0005D590  90 01 00 04 */	stw r0, 4(r1)
/* 80060654 0005D594  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80060658 0005D598  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8006065C 0005D59C  3B E0 00 00 */	li r31, 0
/* 80060660 0005D5A0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80060664 0005D5A4  3B C3 63 D0 */	addi r30, r3, dac__Q28JASystem6Kernel@l
/* 80060668 0005D5A8  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8006066C 0005D5AC  93 81 00 08 */	stw r28, 8(r1)
/* 80060670 0005D5B0  3B 80 00 00 */	li r28, 0
lbl_80060674:
/* 80060674 0005D5B4  80 0D 81 FC */	lwz r0, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060678 0005D5B8  54 03 08 3C */	slwi r3, r0, 1
/* 8006067C 0005D5BC  48 00 37 B1 */	bl allocFromSysDram__Q28JASystem6KernelFUl
/* 80060680 0005D5C0  7F BE FA 14 */	add r29, r30, r31
/* 80060684 0005D5C4  90 7D 00 00 */	stw r3, 0(r29)
/* 80060688 0005D5C8  80 0D 81 FC */	lwz r0, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 8006068C 0005D5CC  80 7D 00 00 */	lwz r3, 0(r29)
/* 80060690 0005D5D0  54 04 08 3C */	slwi r4, r0, 1
/* 80060694 0005D5D4  48 00 0B 8D */	bl bzero__Q28JASystem4CalcFPvUl
/* 80060698 0005D5D8  80 0D 81 FC */	lwz r0, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 8006069C 0005D5DC  80 7D 00 00 */	lwz r3, 0(r29)
/* 800606A0 0005D5E0  54 04 08 3C */	slwi r4, r0, 1
/* 800606A4 0005D5E4  48 02 D9 3D */	bl DCStoreRange
/* 800606A8 0005D5E8  3B 9C 00 01 */	addi r28, r28, 1
/* 800606AC 0005D5EC  2C 1C 00 03 */	cmpwi r28, 3
/* 800606B0 0005D5F0  3B FF 00 04 */	addi r31, r31, 4
/* 800606B4 0005D5F4  41 80 FF C0 */	blt lbl_80060674
/* 800606B8 0005D5F8  38 60 00 00 */	li r3, 0
/* 800606BC 0005D5FC  48 03 CB 69 */	bl AIInit
/* 800606C0 0005D600  3C 60 80 3E */	lis r3, dac__Q28JASystem6Kernel@ha
/* 800606C4 0005D604  80 0D 81 FC */	lwz r0, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800606C8 0005D608  38 63 63 D0 */	addi r3, r3, dac__Q28JASystem6Kernel@l
/* 800606CC 0005D60C  80 63 00 08 */	lwz r3, 8(r3)
/* 800606D0 0005D610  54 04 08 3C */	slwi r4, r0, 1
/* 800606D4 0005D614  48 03 C7 59 */	bl AIInitDMA
/* 800606D8 0005D618  48 00 3C C5 */	bl initVloadBuffers__Q28JASystem5VloadFv
/* 800606DC 0005D61C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800606E0 0005D620  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800606E4 0005D624  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800606E8 0005D628  7C 08 03 A6 */	mtlr r0
/* 800606EC 0005D62C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 800606F0 0005D630  83 81 00 08 */	lwz r28, 8(r1)
/* 800606F4 0005D634  38 21 00 18 */	addi r1, r1, 0x18
/* 800606F8 0005D638  4E 80 00 20 */	blr 

.global registerMixCallback__Q28JASystem6KernelFPFl_PsUc
registerMixCallback__Q28JASystem6KernelFPFl_PsUc:
/* 800606FC 0005D63C  90 6D 91 48 */	stw r3, extMixCallback__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060700 0005D640  98 8D 91 4C */	stb r4, extMixMode__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060704 0005D644  4E 80 00 20 */	blr 

.global vframeWork__Q28JASystem6KernelFv
vframeWork__Q28JASystem6KernelFv:
/* 80060708 0005D648  7C 08 02 A6 */	mflr r0
/* 8006070C 0005D64C  3C 60 80 3E */	lis r3, dac__Q28JASystem6Kernel@ha
/* 80060710 0005D650  90 01 00 04 */	stw r0, 4(r1)
/* 80060714 0005D654  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80060718 0005D658  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8006071C 0005D65C  3B E3 63 D0 */	addi r31, r3, dac__Q28JASystem6Kernel@l
/* 80060720 0005D660  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80060724 0005D664  88 0D 91 54 */	lbz r0, init$141-_SDA_BASE_(r13)
/* 80060728 0005D668  7C 00 07 75 */	extsb. r0, r0
/* 8006072C 0005D66C  40 82 00 14 */	bne lbl_80060740
/* 80060730 0005D670  38 60 00 00 */	li r3, 0
/* 80060734 0005D674  38 00 00 01 */	li r0, 1
/* 80060738 0005D678  90 6D 91 50 */	stw r3, dacp$140-_SDA_BASE_(r13)
/* 8006073C 0005D67C  98 0D 91 54 */	stb r0, init$141-_SDA_BASE_(r13)
lbl_80060740:
/* 80060740 0005D680  80 6D 91 44 */	lwz r3, JASVframeCounter__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060744 0005D684  80 8D 81 FC */	lwz r4, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060748 0005D688  38 03 00 01 */	addi r0, r3, 1
/* 8006074C 0005D68C  90 0D 91 44 */	stw r0, JASVframeCounter__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060750 0005D690  54 83 F8 7E */	srwi r3, r4, 1
/* 80060754 0005D694  4B FF E3 39 */	bl mixDSP__Q28JASystem6DSPBufFl
/* 80060758 0005D698  80 0D 91 50 */	lwz r0, dacp$140-_SDA_BASE_(r13)
/* 8006075C 0005D69C  38 83 00 00 */	addi r4, r3, 0
/* 80060760 0005D6A0  80 AD 81 F8 */	lwz r5, gFrameSamples__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060764 0005D6A4  80 CD 81 FC */	lwz r6, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060768 0005D6A8  54 00 10 3A */	slwi r0, r0, 2
/* 8006076C 0005D6AC  54 A3 08 3C */	slwi r3, r5, 1
/* 80060770 0005D6B0  7C BF 00 2E */	lwzx r5, r31, r0
/* 80060774 0005D6B4  7C 64 1A 14 */	add r3, r4, r3
/* 80060778 0005D6B8  54 C6 F8 7E */	srwi r6, r6, 1
/* 8006077C 0005D6BC  48 00 06 F1 */	bl imixcopy__Q28JASystem4CalcFPCsPCsPsl
/* 80060780 0005D6C0  80 AD 91 48 */	lwz r5, extMixCallback__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060784 0005D6C4  28 05 00 00 */	cmplwi r5, 0
/* 80060788 0005D6C8  41 82 00 9C */	beq lbl_80060824
/* 8006078C 0005D6CC  88 0D 91 4C */	lbz r0, extMixMode__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060790 0005D6D0  2C 00 00 02 */	cmpwi r0, 2
/* 80060794 0005D6D4  41 82 00 5C */	beq lbl_800607F0
/* 80060798 0005D6D8  40 80 00 14 */	bge lbl_800607AC
/* 8006079C 0005D6DC  2C 00 00 00 */	cmpwi r0, 0
/* 800607A0 0005D6E0  41 82 00 18 */	beq lbl_800607B8
/* 800607A4 0005D6E4  40 80 00 30 */	bge lbl_800607D4
/* 800607A8 0005D6E8  48 00 00 7C */	b lbl_80060824
lbl_800607AC:
/* 800607AC 0005D6EC  2C 00 00 04 */	cmpwi r0, 4
/* 800607B0 0005D6F0  40 80 00 74 */	bge lbl_80060824
/* 800607B4 0005D6F4  48 00 00 58 */	b lbl_8006080C
lbl_800607B8:
/* 800607B8 0005D6F8  80 0D 91 50 */	lwz r0, dacp$140-_SDA_BASE_(r13)
/* 800607BC 0005D6FC  80 8D 81 FC */	lwz r4, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800607C0 0005D700  54 00 10 3A */	slwi r0, r0, 2
/* 800607C4 0005D704  7C 7F 00 2E */	lwzx r3, r31, r0
/* 800607C8 0005D708  54 84 F8 7E */	srwi r4, r4, 1
/* 800607CC 0005D70C  48 00 01 75 */	bl mixMonoTrack__Q28JASystem6KernelFPslPFl_Ps
/* 800607D0 0005D710  48 00 00 54 */	b lbl_80060824
lbl_800607D4:
/* 800607D4 0005D714  80 0D 91 50 */	lwz r0, dacp$140-_SDA_BASE_(r13)
/* 800607D8 0005D718  80 8D 81 FC */	lwz r4, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800607DC 0005D71C  54 00 10 3A */	slwi r0, r0, 2
/* 800607E0 0005D720  7C 7F 00 2E */	lwzx r3, r31, r0
/* 800607E4 0005D724  54 84 F8 7E */	srwi r4, r4, 1
/* 800607E8 0005D728  48 00 02 55 */	bl mixMonoTrackWide__Q28JASystem6KernelFPslPFl_Ps
/* 800607EC 0005D72C  48 00 00 38 */	b lbl_80060824
lbl_800607F0:
/* 800607F0 0005D730  80 0D 91 50 */	lwz r0, dacp$140-_SDA_BASE_(r13)
/* 800607F4 0005D734  80 8D 81 FC */	lwz r4, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800607F8 0005D738  54 00 10 3A */	slwi r0, r0, 2
/* 800607FC 0005D73C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80060800 0005D740  54 84 F8 7E */	srwi r4, r4, 1
/* 80060804 0005D744  48 00 03 35 */	bl mixExtraTrack__Q28JASystem6KernelFPslPFl_Ps
/* 80060808 0005D748  48 00 00 1C */	b lbl_80060824
lbl_8006080C:
/* 8006080C 0005D74C  80 0D 91 50 */	lwz r0, dacp$140-_SDA_BASE_(r13)
/* 80060810 0005D750  80 8D 81 FC */	lwz r4, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060814 0005D754  54 00 10 3A */	slwi r0, r0, 2
/* 80060818 0005D758  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8006081C 0005D75C  54 84 F8 7E */	srwi r4, r4, 1
/* 80060820 0005D760  48 00 04 31 */	bl mixInterleaveTrack__Q28JASystem6KernelFPslPFl_Ps
lbl_80060824:
/* 80060824 0005D764  48 02 F9 A9 */	bl OSDisableInterrupts
/* 80060828 0005D768  80 0D 91 50 */	lwz r0, dacp$140-_SDA_BASE_(r13)
/* 8006082C 0005D76C  3B C3 00 00 */	addi r30, r3, 0
/* 80060830 0005D770  80 8D 81 FC */	lwz r4, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060834 0005D774  54 00 10 3A */	slwi r0, r0, 2
/* 80060838 0005D778  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8006083C 0005D77C  54 84 08 3C */	slwi r4, r4, 1
/* 80060840 0005D780  48 02 D7 A1 */	bl DCStoreRange
/* 80060844 0005D784  7F C3 F3 78 */	mr r3, r30
/* 80060848 0005D788  48 02 F9 AD */	bl OSRestoreInterrupts
/* 8006084C 0005D78C  80 8D 91 50 */	lwz r4, dacp$140-_SDA_BASE_(r13)
/* 80060850 0005D790  54 80 10 3A */	slwi r0, r4, 2
/* 80060854 0005D794  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80060858 0005D798  38 04 00 01 */	addi r0, r4, 1
/* 8006085C 0005D79C  90 0D 91 50 */	stw r0, dacp$140-_SDA_BASE_(r13)
/* 80060860 0005D7A0  80 0D 91 50 */	lwz r0, dacp$140-_SDA_BASE_(r13)
/* 80060864 0005D7A4  90 6D 91 34 */	stw r3, lastRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060868 0005D7A8  28 00 00 03 */	cmplwi r0, 3
/* 8006086C 0005D7AC  40 82 00 0C */	bne lbl_80060878
/* 80060870 0005D7B0  38 00 00 00 */	li r0, 0
/* 80060874 0005D7B4  90 0D 91 50 */	stw r0, dacp$140-_SDA_BASE_(r13)
lbl_80060878:
/* 80060878 0005D7B8  38 00 00 00 */	li r0, 0
/* 8006087C 0005D7BC  90 0D 91 3C */	stw r0, vframeWorkRunning__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060880 0005D7C0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80060884 0005D7C4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80060888 0005D7C8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8006088C 0005D7CC  7C 08 03 A6 */	mtlr r0
/* 80060890 0005D7D0  38 21 00 18 */	addi r1, r1, 0x18
/* 80060894 0005D7D4  4E 80 00 20 */	blr 

.global updateDac__Q28JASystem6KernelFv
updateDac__Q28JASystem6KernelFv:
/* 80060898 0005D7D8  7C 08 02 A6 */	mflr r0
/* 8006089C 0005D7DC  90 01 00 04 */	stw r0, 4(r1)
/* 800608A0 0005D7E0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800608A4 0005D7E4  80 0D 91 38 */	lwz r0, useRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800608A8 0005D7E8  28 00 00 00 */	cmplwi r0, 0
/* 800608AC 0005D7EC  40 82 00 14 */	bne lbl_800608C0
/* 800608B0 0005D7F0  80 6D 91 34 */	lwz r3, lastRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800608B4 0005D7F4  38 00 00 00 */	li r0, 0
/* 800608B8 0005D7F8  90 6D 91 38 */	stw r3, useRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800608BC 0005D7FC  90 0D 91 34 */	stw r0, lastRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
lbl_800608C0:
/* 800608C0 0005D800  80 6D 91 38 */	lwz r3, useRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800608C4 0005D804  28 03 00 00 */	cmplwi r3, 0
/* 800608C8 0005D808  41 82 00 1C */	beq lbl_800608E4
/* 800608CC 0005D80C  80 0D 81 FC */	lwz r0, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800608D0 0005D810  54 04 08 3C */	slwi r4, r0, 1
/* 800608D4 0005D814  48 03 C5 59 */	bl AIInitDMA
/* 800608D8 0005D818  38 00 00 00 */	li r0, 0
/* 800608DC 0005D81C  90 0D 91 38 */	stw r0, useRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800608E0 0005D820  48 00 00 10 */	b lbl_800608F0
lbl_800608E4:
/* 800608E4 0005D824  80 6D 91 30 */	lwz r3, JASUniversalDacCounter__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800608E8 0005D828  38 03 00 01 */	addi r0, r3, 1
/* 800608EC 0005D82C  90 0D 91 30 */	stw r0, JASUniversalDacCounter__Q28JASystem6Kernel-_SDA_BASE_(r13)
lbl_800608F0:
/* 800608F0 0005D830  80 0D 91 34 */	lwz r0, lastRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800608F4 0005D834  28 00 00 00 */	cmplwi r0, 0
/* 800608F8 0005D838  40 82 00 14 */	bne lbl_8006090C
/* 800608FC 0005D83C  80 0D 91 3C */	lwz r0, vframeWorkRunning__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060900 0005D840  2C 00 00 00 */	cmpwi r0, 0
/* 80060904 0005D844  40 82 00 08 */	bne lbl_8006090C
/* 80060908 0005D848  4B FF FE 01 */	bl vframeWork__Q28JASystem6KernelFv
lbl_8006090C:
/* 8006090C 0005D84C  48 00 20 2D */	bl main__Q28JASystem10HardStreamFv
/* 80060910 0005D850  81 8D 91 40 */	lwz r12, dacCallbackFunc__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060914 0005D854  28 0C 00 00 */	cmplwi r12, 0
/* 80060918 0005D858  41 82 00 18 */	beq lbl_80060930
/* 8006091C 0005D85C  80 0D 81 FC */	lwz r0, gDacSize__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060920 0005D860  7D 88 03 A6 */	mtlr r12
/* 80060924 0005D864  80 6D 91 34 */	lwz r3, lastRspMadep__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060928 0005D868  54 04 F8 7E */	srwi r4, r0, 1
/* 8006092C 0005D86C  4E 80 00 21 */	blrl 
lbl_80060930:
/* 80060930 0005D870  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80060934 0005D874  38 21 00 08 */	addi r1, r1, 8
/* 80060938 0005D878  7C 08 03 A6 */	mtlr r0
/* 8006093C 0005D87C  4E 80 00 20 */	blr 

.global mixMonoTrack__Q28JASystem6KernelFPslPFl_Ps
mixMonoTrack__Q28JASystem6KernelFPslPFl_Ps:
/* 80060940 0005D880  7C 08 02 A6 */	mflr r0
/* 80060944 0005D884  3C C0 80 37 */	lis r6, $$2197@ha
/* 80060948 0005D888  90 01 00 04 */	stw r0, 4(r1)
/* 8006094C 0005D88C  38 06 13 58 */	addi r0, r6, $$2197@l
/* 80060950 0005D890  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80060954 0005D894  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80060958 0005D898  3B E5 00 00 */	addi r31, r5, 0
/* 8006095C 0005D89C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80060960 0005D8A0  3B C4 00 00 */	addi r30, r4, 0
/* 80060964 0005D8A4  7C 04 03 78 */	mr r4, r0
/* 80060968 0005D8A8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8006096C 0005D8AC  3B A3 00 00 */	addi r29, r3, 0
/* 80060970 0005D8B0  38 60 00 05 */	li r3, 5
/* 80060974 0005D8B4  48 00 34 59 */	bl probeStart__Q28JASystem6KernelFlPc
/* 80060978 0005D8B8  39 9F 00 00 */	addi r12, r31, 0
/* 8006097C 0005D8BC  7D 88 03 A6 */	mtlr r12
/* 80060980 0005D8C0  38 7E 00 00 */	addi r3, r30, 0
/* 80060984 0005D8C4  4E 80 00 21 */	blrl 
/* 80060988 0005D8C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8006098C 0005D8CC  41 82 00 94 */	beq lbl_80060A20
/* 80060990 0005D8D0  38 60 00 05 */	li r3, 5
/* 80060994 0005D8D4  48 00 34 3D */	bl probeFinish__Q28JASystem6KernelFl
/* 80060998 0005D8D8  7F C0 F3 79 */	or. r0, r30, r30
/* 8006099C 0005D8DC  38 9D 00 00 */	addi r4, r29, 0
/* 800609A0 0005D8E0  38 BF 00 00 */	addi r5, r31, 0
/* 800609A4 0005D8E4  7C 09 03 A6 */	mtctr r0
/* 800609A8 0005D8E8  40 81 00 78 */	ble lbl_80060A20
lbl_800609AC:
/* 800609AC 0005D8EC  A8 64 00 00 */	lha r3, 0(r4)
/* 800609B0 0005D8F0  A8 05 00 00 */	lha r0, 0(r5)
/* 800609B4 0005D8F4  7C 03 02 14 */	add r0, r3, r0
/* 800609B8 0005D8F8  2C 00 80 00 */	cmpwi r0, -32768
/* 800609BC 0005D8FC  40 80 00 0C */	bge lbl_800609C8
/* 800609C0 0005D900  38 00 80 01 */	li r0, -32767
/* 800609C4 0005D904  48 00 00 18 */	b lbl_800609DC
lbl_800609C8:
/* 800609C8 0005D908  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 800609CC 0005D90C  40 81 00 0C */	ble lbl_800609D8
/* 800609D0 0005D910  38 00 7F FF */	li r0, 0x7fff
/* 800609D4 0005D914  48 00 00 08 */	b lbl_800609DC
lbl_800609D8:
/* 800609D8 0005D918  7C 00 07 34 */	extsh r0, r0
lbl_800609DC:
/* 800609DC 0005D91C  B0 04 00 00 */	sth r0, 0(r4)
/* 800609E0 0005D920  AC 64 00 02 */	lhau r3, 2(r4)
/* 800609E4 0005D924  A8 05 00 00 */	lha r0, 0(r5)
/* 800609E8 0005D928  7C 03 02 14 */	add r0, r3, r0
/* 800609EC 0005D92C  2C 00 80 00 */	cmpwi r0, -32768
/* 800609F0 0005D930  40 80 00 0C */	bge lbl_800609FC
/* 800609F4 0005D934  38 00 80 01 */	li r0, -32767
/* 800609F8 0005D938  48 00 00 18 */	b lbl_80060A10
lbl_800609FC:
/* 800609FC 0005D93C  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80060A00 0005D940  40 81 00 0C */	ble lbl_80060A0C
/* 80060A04 0005D944  38 00 7F FF */	li r0, 0x7fff
/* 80060A08 0005D948  48 00 00 08 */	b lbl_80060A10
lbl_80060A0C:
/* 80060A0C 0005D94C  7C 00 07 34 */	extsh r0, r0
lbl_80060A10:
/* 80060A10 0005D950  B0 04 00 00 */	sth r0, 0(r4)
/* 80060A14 0005D954  38 84 00 02 */	addi r4, r4, 2
/* 80060A18 0005D958  38 A5 00 02 */	addi r5, r5, 2
/* 80060A1C 0005D95C  42 00 FF 90 */	bdnz lbl_800609AC
lbl_80060A20:
/* 80060A20 0005D960  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80060A24 0005D964  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80060A28 0005D968  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80060A2C 0005D96C  7C 08 03 A6 */	mtlr r0
/* 80060A30 0005D970  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80060A34 0005D974  38 21 00 28 */	addi r1, r1, 0x28
/* 80060A38 0005D978  4E 80 00 20 */	blr 

.global mixMonoTrackWide__Q28JASystem6KernelFPslPFl_Ps
mixMonoTrackWide__Q28JASystem6KernelFPslPFl_Ps:
/* 80060A3C 0005D97C  7C 08 02 A6 */	mflr r0
/* 80060A40 0005D980  3C C0 80 37 */	lis r6, $$2216@ha
/* 80060A44 0005D984  90 01 00 04 */	stw r0, 4(r1)
/* 80060A48 0005D988  38 06 13 64 */	addi r0, r6, $$2216@l
/* 80060A4C 0005D98C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80060A50 0005D990  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80060A54 0005D994  3B E5 00 00 */	addi r31, r5, 0
/* 80060A58 0005D998  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80060A5C 0005D99C  3B C4 00 00 */	addi r30, r4, 0
/* 80060A60 0005D9A0  7C 04 03 78 */	mr r4, r0
/* 80060A64 0005D9A4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80060A68 0005D9A8  3B A3 00 00 */	addi r29, r3, 0
/* 80060A6C 0005D9AC  38 60 00 05 */	li r3, 5
/* 80060A70 0005D9B0  48 00 33 5D */	bl probeStart__Q28JASystem6KernelFlPc
/* 80060A74 0005D9B4  39 9F 00 00 */	addi r12, r31, 0
/* 80060A78 0005D9B8  7D 88 03 A6 */	mtlr r12
/* 80060A7C 0005D9BC  38 7E 00 00 */	addi r3, r30, 0
/* 80060A80 0005D9C0  4E 80 00 21 */	blrl 
/* 80060A84 0005D9C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80060A88 0005D9C8  41 82 00 94 */	beq lbl_80060B1C
/* 80060A8C 0005D9CC  38 60 00 05 */	li r3, 5
/* 80060A90 0005D9D0  48 00 33 41 */	bl probeFinish__Q28JASystem6KernelFl
/* 80060A94 0005D9D4  7F C0 F3 79 */	or. r0, r30, r30
/* 80060A98 0005D9D8  38 9D 00 00 */	addi r4, r29, 0
/* 80060A9C 0005D9DC  38 BF 00 00 */	addi r5, r31, 0
/* 80060AA0 0005D9E0  7C 09 03 A6 */	mtctr r0
/* 80060AA4 0005D9E4  40 81 00 78 */	ble lbl_80060B1C
lbl_80060AA8:
/* 80060AA8 0005D9E8  A8 64 00 00 */	lha r3, 0(r4)
/* 80060AAC 0005D9EC  A8 05 00 00 */	lha r0, 0(r5)
/* 80060AB0 0005D9F0  7C 03 02 14 */	add r0, r3, r0
/* 80060AB4 0005D9F4  2C 00 80 00 */	cmpwi r0, -32768
/* 80060AB8 0005D9F8  40 80 00 0C */	bge lbl_80060AC4
/* 80060ABC 0005D9FC  38 00 80 01 */	li r0, -32767
/* 80060AC0 0005DA00  48 00 00 18 */	b lbl_80060AD8
lbl_80060AC4:
/* 80060AC4 0005DA04  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80060AC8 0005DA08  40 81 00 0C */	ble lbl_80060AD4
/* 80060ACC 0005DA0C  38 00 7F FF */	li r0, 0x7fff
/* 80060AD0 0005DA10  48 00 00 08 */	b lbl_80060AD8
lbl_80060AD4:
/* 80060AD4 0005DA14  7C 00 07 34 */	extsh r0, r0
lbl_80060AD8:
/* 80060AD8 0005DA18  B0 04 00 00 */	sth r0, 0(r4)
/* 80060ADC 0005DA1C  A8 65 00 00 */	lha r3, 0(r5)
/* 80060AE0 0005DA20  AC 04 00 02 */	lhau r0, 2(r4)
/* 80060AE4 0005DA24  7C 03 00 50 */	subf r0, r3, r0
/* 80060AE8 0005DA28  2C 00 80 00 */	cmpwi r0, -32768
/* 80060AEC 0005DA2C  40 80 00 0C */	bge lbl_80060AF8
/* 80060AF0 0005DA30  38 00 80 01 */	li r0, -32767
/* 80060AF4 0005DA34  48 00 00 18 */	b lbl_80060B0C
lbl_80060AF8:
/* 80060AF8 0005DA38  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80060AFC 0005DA3C  40 81 00 0C */	ble lbl_80060B08
/* 80060B00 0005DA40  38 00 7F FF */	li r0, 0x7fff
/* 80060B04 0005DA44  48 00 00 08 */	b lbl_80060B0C
lbl_80060B08:
/* 80060B08 0005DA48  7C 00 07 34 */	extsh r0, r0
lbl_80060B0C:
/* 80060B0C 0005DA4C  B0 04 00 00 */	sth r0, 0(r4)
/* 80060B10 0005DA50  38 84 00 02 */	addi r4, r4, 2
/* 80060B14 0005DA54  38 A5 00 02 */	addi r5, r5, 2
/* 80060B18 0005DA58  42 00 FF 90 */	bdnz lbl_80060AA8
lbl_80060B1C:
/* 80060B1C 0005DA5C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80060B20 0005DA60  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80060B24 0005DA64  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80060B28 0005DA68  7C 08 03 A6 */	mtlr r0
/* 80060B2C 0005DA6C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80060B30 0005DA70  38 21 00 28 */	addi r1, r1, 0x28
/* 80060B34 0005DA74  4E 80 00 20 */	blr 

.global mixExtraTrack__Q28JASystem6KernelFPslPFl_Ps
mixExtraTrack__Q28JASystem6KernelFPslPFl_Ps:
/* 80060B38 0005DA78  7C 08 02 A6 */	mflr r0
/* 80060B3C 0005DA7C  90 01 00 04 */	stw r0, 4(r1)
/* 80060B40 0005DA80  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80060B44 0005DA84  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80060B48 0005DA88  3B E5 00 00 */	addi r31, r5, 0
/* 80060B4C 0005DA8C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80060B50 0005DA90  3B C4 00 00 */	addi r30, r4, 0
/* 80060B54 0005DA94  38 82 86 B0 */	addi r4, r2, $$2236-_SDA2_BASE_
/* 80060B58 0005DA98  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80060B5C 0005DA9C  3B A3 00 00 */	addi r29, r3, 0
/* 80060B60 0005DAA0  38 60 00 05 */	li r3, 5
/* 80060B64 0005DAA4  48 00 32 69 */	bl probeStart__Q28JASystem6KernelFlPc
/* 80060B68 0005DAA8  39 9F 00 00 */	addi r12, r31, 0
/* 80060B6C 0005DAAC  7D 88 03 A6 */	mtlr r12
/* 80060B70 0005DAB0  38 7E 00 00 */	addi r3, r30, 0
/* 80060B74 0005DAB4  4E 80 00 21 */	blrl 
/* 80060B78 0005DAB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80060B7C 0005DABC  41 82 00 B8 */	beq lbl_80060C34
/* 80060B80 0005DAC0  38 60 00 05 */	li r3, 5
/* 80060B84 0005DAC4  48 00 32 4D */	bl probeFinish__Q28JASystem6KernelFl
/* 80060B88 0005DAC8  38 60 00 06 */	li r3, 6
/* 80060B8C 0005DACC  38 82 86 B8 */	addi r4, r2, $$2237-_SDA2_BASE_
/* 80060B90 0005DAD0  48 00 32 3D */	bl probeStart__Q28JASystem6KernelFlPc
/* 80060B94 0005DAD4  7F C3 F3 79 */	or. r3, r30, r30
/* 80060B98 0005DAD8  80 0D 81 F8 */	lwz r0, gFrameSamples__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060B9C 0005DADC  38 9D 00 00 */	addi r4, r29, 0
/* 80060BA0 0005DAE0  54 00 08 3C */	slwi r0, r0, 1
/* 80060BA4 0005DAE4  7C 69 03 A6 */	mtctr r3
/* 80060BA8 0005DAE8  38 BF 00 00 */	addi r5, r31, 0
/* 80060BAC 0005DAEC  7C DF 02 14 */	add r6, r31, r0
/* 80060BB0 0005DAF0  40 81 00 7C */	ble lbl_80060C2C
lbl_80060BB4:
/* 80060BB4 0005DAF4  A8 64 00 00 */	lha r3, 0(r4)
/* 80060BB8 0005DAF8  A8 06 00 00 */	lha r0, 0(r6)
/* 80060BBC 0005DAFC  7C 03 02 14 */	add r0, r3, r0
/* 80060BC0 0005DB00  2C 00 80 00 */	cmpwi r0, -32768
/* 80060BC4 0005DB04  40 80 00 0C */	bge lbl_80060BD0
/* 80060BC8 0005DB08  38 00 80 01 */	li r0, -32767
/* 80060BCC 0005DB0C  48 00 00 18 */	b lbl_80060BE4
lbl_80060BD0:
/* 80060BD0 0005DB10  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80060BD4 0005DB14  40 81 00 0C */	ble lbl_80060BE0
/* 80060BD8 0005DB18  38 00 7F FF */	li r0, 0x7fff
/* 80060BDC 0005DB1C  48 00 00 08 */	b lbl_80060BE4
lbl_80060BE0:
/* 80060BE0 0005DB20  7C 00 07 34 */	extsh r0, r0
lbl_80060BE4:
/* 80060BE4 0005DB24  B0 04 00 00 */	sth r0, 0(r4)
/* 80060BE8 0005DB28  AC 64 00 02 */	lhau r3, 2(r4)
/* 80060BEC 0005DB2C  A8 05 00 00 */	lha r0, 0(r5)
/* 80060BF0 0005DB30  7C 03 02 14 */	add r0, r3, r0
/* 80060BF4 0005DB34  2C 00 80 00 */	cmpwi r0, -32768
/* 80060BF8 0005DB38  40 80 00 0C */	bge lbl_80060C04
/* 80060BFC 0005DB3C  38 00 80 01 */	li r0, -32767
/* 80060C00 0005DB40  48 00 00 18 */	b lbl_80060C18
lbl_80060C04:
/* 80060C04 0005DB44  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80060C08 0005DB48  40 81 00 0C */	ble lbl_80060C14
/* 80060C0C 0005DB4C  38 00 7F FF */	li r0, 0x7fff
/* 80060C10 0005DB50  48 00 00 08 */	b lbl_80060C18
lbl_80060C14:
/* 80060C14 0005DB54  7C 00 07 34 */	extsh r0, r0
lbl_80060C18:
/* 80060C18 0005DB58  B0 04 00 00 */	sth r0, 0(r4)
/* 80060C1C 0005DB5C  38 84 00 02 */	addi r4, r4, 2
/* 80060C20 0005DB60  38 C6 00 02 */	addi r6, r6, 2
/* 80060C24 0005DB64  38 A5 00 02 */	addi r5, r5, 2
/* 80060C28 0005DB68  42 00 FF 8C */	bdnz lbl_80060BB4
lbl_80060C2C:
/* 80060C2C 0005DB6C  38 60 00 06 */	li r3, 6
/* 80060C30 0005DB70  48 00 31 A1 */	bl probeFinish__Q28JASystem6KernelFl
lbl_80060C34:
/* 80060C34 0005DB74  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80060C38 0005DB78  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80060C3C 0005DB7C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80060C40 0005DB80  7C 08 03 A6 */	mtlr r0
/* 80060C44 0005DB84  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80060C48 0005DB88  38 21 00 28 */	addi r1, r1, 0x28
/* 80060C4C 0005DB8C  4E 80 00 20 */	blr 

.global mixInterleaveTrack__Q28JASystem6KernelFPslPFl_Ps
mixInterleaveTrack__Q28JASystem6KernelFPslPFl_Ps:
/* 80060C50 0005DB90  7C 08 02 A6 */	mflr r0
/* 80060C54 0005DB94  39 85 00 00 */	addi r12, r5, 0
/* 80060C58 0005DB98  90 01 00 04 */	stw r0, 4(r1)
/* 80060C5C 0005DB9C  7D 88 03 A6 */	mtlr r12
/* 80060C60 0005DBA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80060C64 0005DBA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80060C68 0005DBA8  3B E4 00 00 */	addi r31, r4, 0
/* 80060C6C 0005DBAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80060C70 0005DBB0  3B C3 00 00 */	addi r30, r3, 0
/* 80060C74 0005DBB4  38 7F 00 00 */	addi r3, r31, 0
/* 80060C78 0005DBB8  4E 80 00 21 */	blrl 
/* 80060C7C 0005DBBC  28 03 00 00 */	cmplwi r3, 0
/* 80060C80 0005DBC0  41 82 00 54 */	beq lbl_80060CD4
/* 80060C84 0005DBC4  57 E0 08 3D */	rlwinm. r0, r31, 1, 0, 0x1e
/* 80060C88 0005DBC8  38 BE 00 00 */	addi r5, r30, 0
/* 80060C8C 0005DBCC  7C 09 03 A6 */	mtctr r0
/* 80060C90 0005DBD0  40 81 00 44 */	ble lbl_80060CD4
lbl_80060C94:
/* 80060C94 0005DBD4  A8 85 00 00 */	lha r4, 0(r5)
/* 80060C98 0005DBD8  A8 03 00 00 */	lha r0, 0(r3)
/* 80060C9C 0005DBDC  7C 04 02 14 */	add r0, r4, r0
/* 80060CA0 0005DBE0  2C 00 80 00 */	cmpwi r0, -32768
/* 80060CA4 0005DBE4  40 80 00 0C */	bge lbl_80060CB0
/* 80060CA8 0005DBE8  38 00 80 01 */	li r0, -32767
/* 80060CAC 0005DBEC  48 00 00 18 */	b lbl_80060CC4
lbl_80060CB0:
/* 80060CB0 0005DBF0  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80060CB4 0005DBF4  40 81 00 0C */	ble lbl_80060CC0
/* 80060CB8 0005DBF8  38 00 7F FF */	li r0, 0x7fff
/* 80060CBC 0005DBFC  48 00 00 08 */	b lbl_80060CC4
lbl_80060CC0:
/* 80060CC0 0005DC00  7C 00 07 34 */	extsh r0, r0
lbl_80060CC4:
/* 80060CC4 0005DC04  B0 05 00 00 */	sth r0, 0(r5)
/* 80060CC8 0005DC08  38 A5 00 02 */	addi r5, r5, 2
/* 80060CCC 0005DC0C  38 63 00 02 */	addi r3, r3, 2
/* 80060CD0 0005DC10  42 00 FF C4 */	bdnz lbl_80060C94
lbl_80060CD4:
/* 80060CD4 0005DC14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80060CD8 0005DC18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80060CDC 0005DC1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80060CE0 0005DC20  7C 08 03 A6 */	mtlr r0
/* 80060CE4 0005DC24  38 21 00 20 */	addi r1, r1, 0x20
/* 80060CE8 0005DC28  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
.global $$2197
$$2197:
	.incbin "baserom.dol", 0x36E358, 0xC
.global $$2216
$$2216:
	.incbin "baserom.dol", 0x36E364, 0xC

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
.global $$2236
$$2236:
	.incbin "baserom.dol", 0x3E43B0, 0x8
.global $$2237
$$2237:
	.incbin "baserom.dol", 0x3E43B8, 0x8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
.global dac__Q28JASystem6Kernel
dac__Q28JASystem6Kernel:
	.skip 0x10

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global JASUniversalDacCounter__Q28JASystem6Kernel
JASUniversalDacCounter__Q28JASystem6Kernel:
	.skip 0x4
.global lastRspMadep__Q28JASystem6Kernel
lastRspMadep__Q28JASystem6Kernel:
	.skip 0x4
.global useRspMadep__Q28JASystem6Kernel
useRspMadep__Q28JASystem6Kernel:
	.skip 0x4
.global vframeWorkRunning__Q28JASystem6Kernel
vframeWorkRunning__Q28JASystem6Kernel:
	.skip 0x4
.global dacCallbackFunc__Q28JASystem6Kernel
dacCallbackFunc__Q28JASystem6Kernel:
	.skip 0x4
.global JASVframeCounter__Q28JASystem6Kernel
JASVframeCounter__Q28JASystem6Kernel:
	.skip 0x4
.global extMixCallback__Q28JASystem6Kernel
extMixCallback__Q28JASystem6Kernel:
	.skip 0x4
.global extMixMode__Q28JASystem6Kernel
extMixMode__Q28JASystem6Kernel:
	.skip 0x4
.global dacp$140
dacp$140:
	.skip 0x4
.global init$141
init$141:
	.skip 0x4
