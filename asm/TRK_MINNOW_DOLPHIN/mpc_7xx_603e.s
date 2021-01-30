.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global TRKSaveExtended1Block
TRKSaveExtended1Block:
/* 8008BC54 00088B94  3C 40 80 3E */	lis r2, gTRKCPUState@h
/* 8008BC58 00088B98  60 42 AC 30 */	ori r2, r2, gTRKCPUState@l
/* 8008BC5C 00088B9C  7E 00 04 A6 */	mfsr r16, 0
/* 8008BC60 00088BA0  7E 21 04 A6 */	mfsr r17, 1
/* 8008BC64 00088BA4  7E 42 04 A6 */	mfsr r18, 2
/* 8008BC68 00088BA8  7E 63 04 A6 */	mfsr r19, 3
/* 8008BC6C 00088BAC  7E 84 04 A6 */	mfsr r20, 4
/* 8008BC70 00088BB0  7E A5 04 A6 */	mfsr r21, 5
/* 8008BC74 00088BB4  7E C6 04 A6 */	mfsr r22, 6
/* 8008BC78 00088BB8  7E E7 04 A6 */	mfsr r23, 7
/* 8008BC7C 00088BBC  7F 08 04 A6 */	mfsr r24, 8
/* 8008BC80 00088BC0  7F 29 04 A6 */	mfsr r25, 9
/* 8008BC84 00088BC4  7F 4A 04 A6 */	mfsr r26, 0xa
/* 8008BC88 00088BC8  7F 6B 04 A6 */	mfsr r27, 0xb
/* 8008BC8C 00088BCC  7F 8C 04 A6 */	mfsr r28, 0xc
/* 8008BC90 00088BD0  7F AD 04 A6 */	mfsr r29, 0xd
/* 8008BC94 00088BD4  7F CE 04 A6 */	mfsr r30, 0xe
/* 8008BC98 00088BD8  7F EF 04 A6 */	mfsr r31, 0xf
/* 8008BC9C 00088BDC  BE 02 01 A8 */	stmw r16, $$23016-_SDA2_BASE_(r2)
/* 8008BCA0 00088BE0  7D 4C 42 E6 */	mftb r10, 0x10c
/* 8008BCA4 00088BE4  7D 6D 42 E6 */	mftbu r11
/* 8008BCA8 00088BE8  7D 90 FA A6 */	mfspr r12, 0x3f0
/* 8008BCAC 00088BEC  7D B1 FA A6 */	mfspr r13, 0x3f1
/* 8008BCB0 00088BF0  7D DB 02 A6 */	mfspr r14, 0x1b
/* 8008BCB4 00088BF4  7D FF 42 A6 */	mfpvr r15
/* 8008BCB8 00088BF8  7E 10 82 A6 */	mfibatu r16, 0
/* 8008BCBC 00088BFC  7E 31 82 A6 */	mfibatl r17, 0
/* 8008BCC0 00088C00  7E 52 82 A6 */	mfibatu r18, 1
/* 8008BCC4 00088C04  7E 73 82 A6 */	mfibatl r19, 1
/* 8008BCC8 00088C08  7E 94 82 A6 */	mfibatu r20, 2
/* 8008BCCC 00088C0C  7E B5 82 A6 */	mfibatl r21, 2
/* 8008BCD0 00088C10  7E D6 82 A6 */	mfibatu r22, 3
/* 8008BCD4 00088C14  7E F7 82 A6 */	mfibatl r23, 3
/* 8008BCD8 00088C18  7F 18 82 A6 */	mfdbatu r24, 0
/* 8008BCDC 00088C1C  7F 39 82 A6 */	mfdbatl r25, 0
/* 8008BCE0 00088C20  7F 5A 82 A6 */	mfdbatu r26, 1
/* 8008BCE4 00088C24  7F 7B 82 A6 */	mfdbatl r27, 1
/* 8008BCE8 00088C28  7F 9C 82 A6 */	mfdbatu r28, 2
/* 8008BCEC 00088C2C  7F BD 82 A6 */	mfdbatl r29, 2
/* 8008BCF0 00088C30  7F DE 82 A6 */	mfdbatu r30, 3
/* 8008BCF4 00088C34  7F FF 82 A6 */	mfdbatl r31, 3
/* 8008BCF8 00088C38  BD 42 01 E8 */	stmw r10, $$23140-_SDA2_BASE_(r2)
/* 8008BCFC 00088C3C  7E D9 02 A6 */	mfspr r22, 0x19
/* 8008BD00 00088C40  7E F3 02 A6 */	mfdar r23
/* 8008BD04 00088C44  7F 12 02 A6 */	mfdsisr r24
/* 8008BD08 00088C48  7F 30 42 A6 */	mfspr r25, 0x110
/* 8008BD0C 00088C4C  7F 51 42 A6 */	mfspr r26, 0x111
/* 8008BD10 00088C50  7F 72 42 A6 */	mfspr r27, 0x112
/* 8008BD14 00088C54  7F 93 42 A6 */	mfspr r28, 0x113
/* 8008BD18 00088C58  3B A0 00 00 */	li r29, 0
/* 8008BD1C 00088C5C  7F D2 FA A6 */	mfspr r30, 0x3f2
/* 8008BD20 00088C60  7F FA 42 A6 */	mfspr r31, 0x11a
/* 8008BD24 00088C64  BE C2 02 5C */	stmw r22, $$25722-_SDA2_BASE_(r2)
/* 8008BD28 00088C68  7E 90 E2 A6 */	mfspr r20, 0x390
/* 8008BD2C 00088C6C  7E B1 E2 A6 */	mfspr r21, 0x391
/* 8008BD30 00088C70  7E D2 E2 A6 */	mfspr r22, 0x392
/* 8008BD34 00088C74  7E F3 E2 A6 */	mfspr r23, 0x393
/* 8008BD38 00088C78  7F 14 E2 A6 */	mfspr r24, 0x394
/* 8008BD3C 00088C7C  7F 35 E2 A6 */	mfspr r25, 0x395
/* 8008BD40 00088C80  7F 56 E2 A6 */	mfspr r26, 0x396
/* 8008BD44 00088C84  7F 77 E2 A6 */	mfspr r27, 0x397
/* 8008BD48 00088C88  7F 98 E2 A6 */	mfspr r28, 0x398
/* 8008BD4C 00088C8C  7F B9 E2 A6 */	mfspr r29, 0x399
/* 8008BD50 00088C90  7F DA E2 A6 */	mfspr r30, 0x39a
/* 8008BD54 00088C94  7F FB E2 A6 */	mfspr r31, 0x39b
/* 8008BD58 00088C98  BE 82 02 FC */	stmw r20, $$23382-_SDA2_BASE_(r2)
/* 8008BD5C 00088C9C  48 00 00 48 */	b lbl_8008BDA4
/* 8008BD60 00088CA0  7E 00 EA A6 */	mfspr r16, 0x3a0
/* 8008BD64 00088CA4  7E 27 EA A6 */	mfspr r17, 0x3a7
/* 8008BD68 00088CA8  7E 48 EA A6 */	mfspr r18, 0x3a8
/* 8008BD6C 00088CAC  7E 69 EA A6 */	mfspr r19, 0x3a9
/* 8008BD70 00088CB0  7E 8A EA A6 */	mfspr r20, 0x3aa
/* 8008BD74 00088CB4  7E AB EA A6 */	mfspr r21, 0x3ab
/* 8008BD78 00088CB8  7E CC EA A6 */	mfspr r22, 0x3ac
/* 8008BD7C 00088CBC  7E ED EA A6 */	mfspr r23, 0x3ad
/* 8008BD80 00088CC0  7F 0E EA A6 */	mfspr r24, 0x3ae
/* 8008BD84 00088CC4  7F 2F EA A6 */	mfspr r25, 0x3af
/* 8008BD88 00088CC8  7F 50 EA A6 */	mfspr r26, 0x3b0
/* 8008BD8C 00088CCC  7F 77 EA A6 */	mfspr r27, 0x3b7
/* 8008BD90 00088CD0  7F 9F EA A6 */	mfspr r28, 0x3bf
/* 8008BD94 00088CD4  7F B6 FA A6 */	mfspr r29, 0x3f6
/* 8008BD98 00088CD8  7F D7 FA A6 */	mfspr r30, 0x3f7
/* 8008BD9C 00088CDC  7F FF FA A6 */	mfspr r31, 0x3ff
/* 8008BDA0 00088CE0  BE 02 02 B8 */	stmw r16, $$22960-_SDA2_BASE_(r2)
lbl_8008BDA4:
/* 8008BDA4 00088CE4  7E 75 FA A6 */	mfspr r19, 0x3f5
/* 8008BDA8 00088CE8  7E 99 EA A6 */	mfspr r20, 0x3b9
/* 8008BDAC 00088CEC  7E BA EA A6 */	mfspr r21, 0x3ba
/* 8008BDB0 00088CF0  7E DD EA A6 */	mfspr r22, 0x3bd
/* 8008BDB4 00088CF4  7E FE EA A6 */	mfspr r23, 0x3be
/* 8008BDB8 00088CF8  7F 1B EA A6 */	mfspr r24, 0x3bb
/* 8008BDBC 00088CFC  7F 38 EA A6 */	mfspr r25, 0x3b8
/* 8008BDC0 00088D00  7F 5C EA A6 */	mfspr r26, 0x3bc
/* 8008BDC4 00088D04  7F 7C FA A6 */	mfspr r27, 0x3fc
/* 8008BDC8 00088D08  7F 9D FA A6 */	mfspr r28, 0x3fd
/* 8008BDCC 00088D0C  7F BE FA A6 */	mfspr r29, 0x3fe
/* 8008BDD0 00088D10  7F DB FA A6 */	mfspr r30, 0x3FB
/* 8008BDD4 00088D14  7F F9 FA A6 */	mfspr r31, 0x3f9
/* 8008BDD8 00088D18  BE 62 02 84 */	stmw r19, $$23126-_SDA2_BASE_(r2)
/* 8008BDDC 00088D1C  48 00 00 2C */	b lbl_8008BE08
/* 8008BDE0 00088D20  7F 30 F2 A6 */	mfspr r25, 0x3d0
/* 8008BDE4 00088D24  7F 51 F2 A6 */	mfspr r26, 0x3d1
/* 8008BDE8 00088D28  7F 72 F2 A6 */	mfspr r27, 0x3d2
/* 8008BDEC 00088D2C  7F 93 F2 A6 */	mfspr r28, 0x3d3
/* 8008BDF0 00088D30  7F B4 F2 A6 */	mfspr r29, 0x3D4
/* 8008BDF4 00088D34  7F D5 F2 A6 */	mfspr r30, 0x3D5
/* 8008BDF8 00088D38  7F F6 F2 A6 */	mfspr r31, 0x3d6
/* 8008BDFC 00088D3C  BF 22 02 40 */	stmw r25, $$25410-_SDA2_BASE_(r2)
/* 8008BE00 00088D40  7F F6 02 A6 */	mfspr r31, 0x16
/* 8008BE04 00088D44  93 E2 02 78 */	stw r31, $$23103-_SDA2_BASE_(r2)
lbl_8008BE08:
/* 8008BE08 00088D48  4E 80 00 20 */	blr 

.global TRKRestoreExtended1Block
TRKRestoreExtended1Block:
/* 8008BE0C 00088D4C  3C 40 80 3E */	lis r2, gTRKCPUState@h
/* 8008BE10 00088D50  60 42 AC 30 */	ori r2, r2, gTRKCPUState@l
/* 8008BE14 00088D54  3C A0 80 3A */	lis r5, gTRKRestoreFlags@h
/* 8008BE18 00088D58  60 A5 F0 18 */	ori r5, r5, gTRKRestoreFlags@l
/* 8008BE1C 00088D5C  88 65 00 00 */	lbz r3, 0(r5)
/* 8008BE20 00088D60  88 C5 00 01 */	lbz r6, 1(r5)
/* 8008BE24 00088D64  38 00 00 00 */	li r0, 0
/* 8008BE28 00088D68  98 05 00 00 */	stb r0, 0(r5)
/* 8008BE2C 00088D6C  98 05 00 01 */	stb r0, 1(r5)
/* 8008BE30 00088D70  2C 03 00 00 */	cmpwi r3, 0
/* 8008BE34 00088D74  41 82 00 14 */	beq lbl_8008BE48
/* 8008BE38 00088D78  83 02 01 E8 */	lwz r24, $$23140-_SDA2_BASE_(r2)
/* 8008BE3C 00088D7C  83 22 01 EC */	lwz r25, lbl_8041364C-_SDA2_BASE_(r2)
/* 8008BE40 00088D80  7F 1C 43 A6 */	mttbl r24
/* 8008BE44 00088D84  7F 3D 43 A6 */	mttbu r25
lbl_8008BE48:
/* 8008BE48 00088D88  BA 82 02 FC */	lmw r20, $$23382-_SDA2_BASE_(r2)
/* 8008BE4C 00088D8C  7E 90 E3 A6 */	mtspr 0x390, r20
/* 8008BE50 00088D90  7E B1 E3 A6 */	mtspr 0x391, r21
/* 8008BE54 00088D94  7E D2 E3 A6 */	mtspr 0x392, r22
/* 8008BE58 00088D98  7E F3 E3 A6 */	mtspr 0x393, r23
/* 8008BE5C 00088D9C  7F 14 E3 A6 */	mtspr 0x394, r24
/* 8008BE60 00088DA0  7F 35 E3 A6 */	mtspr 0x395, r25
/* 8008BE64 00088DA4  7F 56 E3 A6 */	mtspr 0x396, r26
/* 8008BE68 00088DA8  7F 77 E3 A6 */	mtspr 0x397, r27
/* 8008BE6C 00088DAC  7F 98 E3 A6 */	mtspr 0x398, r28
/* 8008BE70 00088DB0  7F DA E3 A6 */	mtspr 0x39a, r30
/* 8008BE74 00088DB4  7F FB E3 A6 */	mtspr 0x39b, r31
/* 8008BE78 00088DB8  48 00 00 1C */	b lbl_8008BE94
/* 8008BE7C 00088DBC  BB 42 02 E0 */	lmw r26, $$23051-_SDA2_BASE_(r2)
/* 8008BE80 00088DC0  7F 50 EB A6 */	mtspr 0x3b0, r26
/* 8008BE84 00088DC4  7F 77 EB A6 */	mtspr 0x3b7, r27
/* 8008BE88 00088DC8  7F B6 FB A6 */	mtspr 0x3f6, r29
/* 8008BE8C 00088DCC  7F D7 FB A6 */	mtspr 0x3f7, r30
/* 8008BE90 00088DD0  7F FF FB A6 */	mtspr 0x3ff, r31
lbl_8008BE94:
/* 8008BE94 00088DD4  BA 62 02 84 */	lmw r19, $$23126-_SDA2_BASE_(r2)
/* 8008BE98 00088DD8  7E 75 FB A6 */	mtspr 0x3f5, r19
/* 8008BE9C 00088DDC  7E 99 EB A6 */	mtspr 0x3b9, r20
/* 8008BEA0 00088DE0  7E BA EB A6 */	mtspr 0x3ba, r21
/* 8008BEA4 00088DE4  7E DD EB A6 */	mtspr 0x3bd, r22
/* 8008BEA8 00088DE8  7E FE EB A6 */	mtspr 0x3be, r23
/* 8008BEAC 00088DEC  7F 1B EB A6 */	mtspr 0x3bb, r24
/* 8008BEB0 00088DF0  7F 38 EB A6 */	mtspr 0x3b8, r25
/* 8008BEB4 00088DF4  7F 5C EB A6 */	mtspr 0x3bc, r26
/* 8008BEB8 00088DF8  7F 7C FB A6 */	mtspr 0x3fc, r27
/* 8008BEBC 00088DFC  7F 9D FB A6 */	mtspr 0x3fd, r28
/* 8008BEC0 00088E00  7F BE FB A6 */	mtspr 0x3fe, r29
/* 8008BEC4 00088E04  7F DB FB A6 */	mtictc r30
/* 8008BEC8 00088E08  7F F9 FB A6 */	mtspr 0x3f9, r31
/* 8008BECC 00088E0C  48 00 00 34 */	b lbl_8008BF00
/* 8008BED0 00088E10  2C 06 00 00 */	cmpwi r6, 0
/* 8008BED4 00088E14  41 82 00 0C */	beq lbl_8008BEE0
/* 8008BED8 00088E18  83 42 02 78 */	lwz r26, $$23103-_SDA2_BASE_(r2)
/* 8008BEDC 00088E1C  7F 56 03 A6 */	mtspr 0x16, r26
lbl_8008BEE0:
/* 8008BEE0 00088E20  BB 22 02 40 */	lmw r25, $$25410-_SDA2_BASE_(r2)
/* 8008BEE4 00088E24  7F 30 F3 A6 */	mtspr 0x3d0, r25
/* 8008BEE8 00088E28  7F 51 F3 A6 */	mtspr 0x3d1, r26
/* 8008BEEC 00088E2C  7F 72 F3 A6 */	mtspr 0x3d2, r27
/* 8008BEF0 00088E30  7F 93 F3 A6 */	mtspr 0x3d3, r28
/* 8008BEF4 00088E34  7F B4 F3 A6 */	mtspr 0x3D4, r29
/* 8008BEF8 00088E38  7F D5 F3 A6 */	mtspr 0x3D5, r30
/* 8008BEFC 00088E3C  7F F6 F3 A6 */	mtspr 0x3d6, r31
lbl_8008BF00:
/* 8008BF00 00088E40  BA 02 01 A8 */	lmw r16, $$23016-_SDA2_BASE_(r2)
/* 8008BF04 00088E44  7E 00 01 A4 */	mtsr 0, r16
/* 8008BF08 00088E48  7E 21 01 A4 */	mtsr 1, r17
/* 8008BF0C 00088E4C  7E 42 01 A4 */	mtsr 2, r18
/* 8008BF10 00088E50  7E 63 01 A4 */	mtsr 3, r19
/* 8008BF14 00088E54  7E 84 01 A4 */	mtsr 4, r20
/* 8008BF18 00088E58  7E A5 01 A4 */	mtsr 5, r21
/* 8008BF1C 00088E5C  7E C6 01 A4 */	mtsr 6, r22
/* 8008BF20 00088E60  7E E7 01 A4 */	mtsr 7, r23
/* 8008BF24 00088E64  7F 08 01 A4 */	mtsr 8, r24
/* 8008BF28 00088E68  7F 29 01 A4 */	mtsr 9, r25
/* 8008BF2C 00088E6C  7F 4A 01 A4 */	mtsr 0xa, r26
/* 8008BF30 00088E70  7F 6B 01 A4 */	mtsr 0xb, r27
/* 8008BF34 00088E74  7F 8C 01 A4 */	mtsr 0xc, r28
/* 8008BF38 00088E78  7F AD 01 A4 */	mtsr 0xd, r29
/* 8008BF3C 00088E7C  7F CE 01 A4 */	mtsr 0xe, r30
/* 8008BF40 00088E80  7F EF 01 A4 */	mtsr 0xf, r31
/* 8008BF44 00088E84  B9 82 01 F0 */	lmw r12, $$23435-_SDA2_BASE_(r2)
/* 8008BF48 00088E88  7D 90 FB A6 */	mtspr 0x3f0, r12
/* 8008BF4C 00088E8C  7D B1 FB A6 */	mtspr 0x3f1, r13
/* 8008BF50 00088E90  7D DB 03 A6 */	mtspr 0x1b, r14
/* 8008BF54 00088E94  7D FF 43 A6 */	mtspr 0x11f, r15
/* 8008BF58 00088E98  7E 10 83 A6 */	mtibatu 0, r16
/* 8008BF5C 00088E9C  7E 31 83 A6 */	mtibatl 0, r17
/* 8008BF60 00088EA0  7E 52 83 A6 */	mtibatu 1, r18
/* 8008BF64 00088EA4  7E 73 83 A6 */	mtibatl 1, r19
/* 8008BF68 00088EA8  7E 94 83 A6 */	mtibatu 2, r20
/* 8008BF6C 00088EAC  7E B5 83 A6 */	mtibatl 2, r21
/* 8008BF70 00088EB0  7E D6 83 A6 */	mtibatu 3, r22
/* 8008BF74 00088EB4  7E F7 83 A6 */	mtibatl 3, r23
/* 8008BF78 00088EB8  7F 18 83 A6 */	mtdbatu 0, r24
/* 8008BF7C 00088EBC  7F 39 83 A6 */	mtdbatl 0, r25
/* 8008BF80 00088EC0  7F 5A 83 A6 */	mtdbatu 1, r26
/* 8008BF84 00088EC4  7F 7B 83 A6 */	mtdbatl 1, r27
/* 8008BF88 00088EC8  7F 9C 83 A6 */	mtdbatu 2, r28
/* 8008BF8C 00088ECC  7F BD 83 A6 */	mtdbatl 2, r29
/* 8008BF90 00088ED0  7F DE 83 A6 */	mtdbatu 3, r30
/* 8008BF94 00088ED4  7F FF 83 A6 */	mtdbatl 3, r31
/* 8008BF98 00088ED8  BA C2 02 5C */	lmw r22, $$25722-_SDA2_BASE_(r2)
/* 8008BF9C 00088EDC  7E D9 03 A6 */	mtspr 0x19, r22
/* 8008BFA0 00088EE0  7E F3 03 A6 */	mtdar r23
/* 8008BFA4 00088EE4  7F 12 03 A6 */	mtdsisr r24
/* 8008BFA8 00088EE8  7F 30 43 A6 */	mtspr 0x110, r25
/* 8008BFAC 00088EEC  7F 51 43 A6 */	mtspr 0x111, r26
/* 8008BFB0 00088EF0  7F 72 43 A6 */	mtspr 0x112, r27
/* 8008BFB4 00088EF4  7F 93 43 A6 */	mtspr 0x113, r28
/* 8008BFB8 00088EF8  7F D2 FB A6 */	mtspr 0x3f2, r30
/* 8008BFBC 00088EFC  7F FA 43 A6 */	mtspr 0x11a, r31
/* 8008BFC0 00088F00  4E 80 00 20 */	blr 

.global TRKTargetCPUMinorType
TRKTargetCPUMinorType:
/* 8008BFC4 00088F04  38 60 00 54 */	li r3, 0x54
/* 8008BFC8 00088F08  4E 80 00 20 */	blr 
