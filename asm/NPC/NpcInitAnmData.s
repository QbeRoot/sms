.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global SMSGetNpcInitAnmData__FUl
SMSGetNpcInitAnmData__FUl:
/* 8017AA20 00177960  3C 80 80 38 */	lis r4, sAllNpcInitAnmData$1577@ha
/* 8017AA24 00177964  54 63 18 38 */	slwi r3, r3, 3
/* 8017AA28 00177968  38 04 6D 88 */	addi r0, r4, sAllNpcInitAnmData$1577@l
/* 8017AA2C 0017796C  7C 60 1A 14 */	add r3, r0, r3
/* 8017AA30 00177970  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21490:
	.incbin "baserom.dol", 0x3814B8, 0xC
$$21526:
	.incbin "baserom.dol", 0x3814C4, 0x14
sMonteM_AnmIndex:
	.incbin "baserom.dol", 0x3814D8, 0x1D0
sMonteME_AnmIndex:
	.incbin "baserom.dol", 0x3816A8, 0x1D0
sMonteMF_AnmIndex:
	.incbin "baserom.dol", 0x381878, 0x1D0
sMonteMG_AnmIndex:
	.incbin "baserom.dol", 0x381A48, 0x1D0
sMonteMH_AnmIndex:
	.incbin "baserom.dol", 0x381C18, 0x1D0
sMonteW_AnmIndex:
	.incbin "baserom.dol", 0x381DE8, 0x1D0
sMonteWC_AnmIndex:
	.incbin "baserom.dol", 0x381FB8, 0x1D0
sMareM_AnmIndex:
	.incbin "baserom.dol", 0x382188, 0x1D0
sMareMA_AnmIndex:
	.incbin "baserom.dol", 0x382358, 0x1D0
sMareMB_AnmIndex:
	.incbin "baserom.dol", 0x382528, 0x1D0
sMareMC_AnmIndex:
	.incbin "baserom.dol", 0x3826F8, 0x1D0
sMareMD_AnmIndex:
	.incbin "baserom.dol", 0x3828C8, 0x1D0
sMareW_AnmIndex:
	.incbin "baserom.dol", 0x382A98, 0x1D0
sMareWA_AnmIndex:
	.incbin "baserom.dol", 0x382C68, 0x1D0
sMareWB_AnmIndex:
	.incbin "baserom.dol", 0x382E38, 0x1D0
sKinopio_AnmIndex:
	.incbin "baserom.dol", 0x383008, 0x1D0
sKinojii_AnmIndex:
	.incbin "baserom.dol", 0x3831D8, 0x1D0
sPeach_AnmIndex:
	.incbin "baserom.dol", 0x3833A8, 0x1D0
sRaccoonDog_AnmIndex:
	.incbin "baserom.dol", 0x383578, 0x1D0
sSunflowerL_AnmIndex:
	.incbin "baserom.dol", 0x383748, 0x1D0
sSunflowerS_AnmIndex:
	.incbin "baserom.dol", 0x383918, 0x1D0
sMonteMA_IndividualBtp:
	.incbin "baserom.dol", 0x383AE8, 0x70
sMonteMB_IndividualBtp:
	.incbin "baserom.dol", 0x383B58, 0x70
sMonteMC_IndividualBtp:
	.incbin "baserom.dol", 0x383BC8, 0x70
sMonteMD_IndividualBtp:
	.incbin "baserom.dol", 0x383C38, 0x70
sMonteWA_IndividualBtp:
	.incbin "baserom.dol", 0x383CA8, 0x70
sMonteWB_IndividualBtp:
	.incbin "baserom.dol", 0x383D18, 0x70
sAllNpcInitAnmData$1577:
	.incbin "baserom.dol", 0x383D88, 0xE8
