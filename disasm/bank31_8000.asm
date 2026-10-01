; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank31_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank31.bin

	org 08000h

	ld hl,00000h		;8000
	ld bc,00202h		;8003
	ld (bc),a		;8006
	ld (bc),a		;8007
	nop			;8008
	dec bc			;8009
	nop			;800a
	nop			;800b
	ld bc,00808h		;800c
	ld (bc),a		;800f
	ex af,af'		;8010
	nop			;8011
	ld a,(bc)		;8012
	nop			;8013
	nop			;8014
	ld bc,01010h		;8015
	ld (bc),a		;8018
	nop			;8019
	nop			;801a
	ld bc,01010h		;801b
	ld bc,00000h		;801e
	ld bc,01010h		;8021
	ld bc,00010h		;8024
	inc b			;8027
	nop			;8028
	nop			;8029
	ld bc,00101h		;802a
	ld bc,00001h		;802d
	ld b,000h		;8030
	nop			;8032
	ld bc,00808h		;8033
	ex af,af'		;8036
	ex af,af'		;8037
	nop			;8038
	ld bc,01010h		;8039
	ld (bc),a		;803c
	nop			;803d
	nop			;803e
	ld bc,01010h		;803f
	ld bc,00000h		;8042
	ld bc,01010h		;8045
	ld bc,00010h		;8048
	ld bc,00000h		;804b
	ld bc,01010h		;804e
	ld b,000h		;8051
	nop			;8053
	ld bc,00101h		;8054
	inc b			;8057
	ld bc,00100h		;8058
	add hl,bc		;805b
	ex af,af'		;805c
	ld (de),a		;805d
	ex af,af'		;805e
	nop			;805f
	inc bc			;8060
	nop			;8061
	nop			;8062
	ld bc,00404h		;8063
	ld b,004h		;8066
	nop			;8068
	inc b			;8069
	nop			;806a
	nop			;806b
	ld bc,00202h		;806c
	inc b			;806f
	ld (bc),a		;8070
	nop			;8071
	ld bc,00406h		;8072
	ld (bc),a		;8075
	ld b,000h		;8076
	ld (bc),a		;8078
	nop			;8079
	nop			;807a
	ld bc,01010h		;807b
	ld (bc),a		;807e
	nop			;807f
	nop			;8080
	ld bc,01010h		;8081
	ex af,af'		;8084
	nop			;8085
	nop			;8086
	ld bc,00101h		;8087
	inc bc			;808a
	ld bc,00100h		;808b
	dec b			;808e
	inc b			;808f
	add hl,bc		;8090
	dec b			;8091
	nop			;8092
	ld b,000h		;8093
	nop			;8095
	ld bc,01010h		;8096
	ld bc,00010h		;8099
	dec b			;809c
	nop			;809d
	nop			;809e
	ld bc,00808h		;809f
	rlca			;80a2
	ex af,af'		;80a3
	nop			;80a4
	dec b			;80a5
	nop			;80a6
	nop			;80a7
	ld bc,01414h		;80a8
	ld bc,00014h		;80ab
	ld bc,00004h		;80ae
	ld bc,00000h		;80b1
	ld bc,01010h		;80b4
	inc bc			;80b7
	nop			;80b8
	nop			;80b9
	ld bc,01010h		;80ba
	ld bc,00414h		;80bd
	inc bc			;80c0
	inc b			;80c1
	nop			;80c2
	ld bc,01010h		;80c3
	dec b			;80c6
	nop			;80c7
	nop			;80c8
	ld bc,00808h		;80c9
	ld a,(bc)		;80cc
	ex af,af'		;80cd
	nop			;80ce
	ld bc,0020ah		;80cf
	inc b			;80d2
	ld a,(bc)		;80d3
	nop			;80d4
	ld (bc),a		;80d5
	ld (bc),a		;80d6
	nop			;80d7
	ld bc,00406h		;80d8
	inc bc			;80db
	ld b,000h		;80dc
	inc bc			;80de
	nop			;80df
	nop			;80e0
	ld bc,00404h		;80e1
	ld bc,01014h		;80e4
	ld bc,00004h		;80e7
	ld bc,00000h		;80ea
	ld bc,01010h		;80ed
	ld bc,00000h		;80f0
	ld bc,01414h		;80f3
	ld bc,00014h		;80f6
	ld bc,00105h		;80f9
	inc b			;80fc
	dec b			;80fd
	nop			;80fe
	ld bc,01015h		;80ff
	ld (bc),a		;8102
	nop			;8103
	nop			;8104
	ld bc,01010h		;8105
	ld bc,00404h		;8108
	ld (bc),a		;810b
	inc b			;810c
	nop			;810d
	ld (bc),a		;810e
	nop			;810f
	nop			;8110
	ld bc,00a0ah		;8111
	ld (bc),a		;8114
	ld a,(bc)		;8115
	nop			;8116
	inc b			;8117
	ex af,af'		;8118
	nop			;8119
	ld bc,00000h		;811a
	ld bc,01010h		;811d
	ld bc,00101h		;8120
	ld bc,00405h		;8123
	ld bc,01015h		;8126
	ld bc,00005h		;8129
	ld bc,01015h		;812c
	ld bc,00005h		;812f
	ld bc,01015h		;8132
	ld bc,00015h		;8135
	ld bc,00005h		;8138
	ld bc,01015h		;813b
	ld (bc),a		;813e
	dec b			;813f
	nop			;8140
	ld (bc),a		;8141
	nop			;8142
	nop			;8143
	ld bc,00202h		;8144
	ld (bc),a		;8147
	ld (bc),a		;8148
	nop			;8149
	ld bc,0080ah		;814a
	ld bc,0000ah		;814d
	inc b			;8150
	ex af,af'		;8151
	nop			;8152
	ld bc,0020ah		;8153
	ld de,0000ah		;8156
	inc c			;8159
	nop			;815a
	nop			;815b
	ld bc,00404h		;815c
	inc bc			;815f
	inc b			;8160
	nop			;8161
	ex af,af'		;8162
	nop			;8163
	nop			;8164
	ld bc,00404h		;8165
	ld (bc),a		;8168
	inc b			;8169
	nop			;816a
	ex af,af'		;816b
	nop			;816c
	nop			;816d
	ld bc,01515h		;816e
	ld bc,00005h		;8171
	ld bc,00000h		;8174
	ld bc,01010h		;8177
	ld bc,00000h		;817a
	ld bc,01414h		;817d
	ld (bc),a		;8180
	inc b			;8181
	nop			;8182
	ld bc,01010h		;8183
	ld bc,00000h		;8186
	ld bc,01010h		;8189
	ld bc,00010h		;818c
	ld bc,00505h		;818f
	ld bc,01015h		;8192
	ld bc,00005h		;8195
	ld bc,01010h		;8198
	ld bc,00000h		;819b
	ld bc,01515h		;819e
	ld bc,00015h		;81a1
	ld (bc),a		;81a4
	dec b			;81a5
	nop			;81a6
	ld bc,01015h		;81a7
	ld bc,00005h		;81aa
	ld bc,01015h		;81ad
	ld bc,00015h		;81b0
	ld (bc),a		;81b3
	dec b			;81b4
	nop			;81b5
	inc b			;81b6
	nop			;81b7
	nop			;81b8
	ld bc,00808h		;81b9
	ld (bc),a		;81bc
	ex af,af'		;81bd
	nop			;81be
	ld bc,0020ah		;81bf
	inc c			;81c2
	ld a,(bc)		;81c3
	nop			;81c4
	ld (bc),a		;81c5
	ld (bc),a		;81c6
	nop			;81c7
	ld bc,01010h		;81c8
	ld bc,00010h		;81cb
	ld bc,00000h		;81ce
	ld bc,01010h		;81d1
	ld bc,00010h		;81d4
	ld bc,00000h		;81d7
	ld bc,01010h		;81da
	ex af,af'		;81dd
	nop			;81de
	nop			;81df
	ld bc,01111h		;81e0
	ld bc,00011h		;81e3
	ld (bc),a		;81e6
	ld bc,00100h		;81e7
	ld de,00110h		;81ea
	ld de,00200h		;81ed
	ld bc,00100h		;81f0
	dec b			;81f3
	inc b			;81f4
	inc bc			;81f5
	dec b			;81f6
	nop			;81f7
	ld bc,01014h		;81f8
	ld bc,00206h		;81fb
	ld bc,00006h		;81fe
	inc b			;8201
	ld (bc),a		;8202
	nop			;8203
	ld bc,0080ah		;8204
	inc bc			;8207
	ld a,(bc)		;8208
	nop			;8209
	ld bc,0101ah		;820a
	ld (bc),a		;820d
	ld a,(de)		;820e
	nop			;820f
	ld (bc),a		;8210
	ld a,(bc)		;8211
	nop			;8212
	ld bc,0101ah		;8213
	ld bc,0000ah		;8216
	dec b			;8219
	nop			;821a
	nop			;821b
	ld bc,01010h		;821c
	ld bc,00111h		;821f
	ld (bc),a		;8222
	ld bc,00100h		;8223
	ex af,af'		;8226
	ex af,af'		;8227
	ld (bc),a		;8228
	ex af,af'		;8229
	nop			;822a
	ld (bc),a		;822b
	nop			;822c
	nop			;822d
	ld bc,00808h		;822e
	inc b			;8231
	ex af,af'		;8232
	nop			;8233
	inc bc			;8234
	nop			;8235
	nop			;8236
	ld bc,00101h		;8237
	inc b			;823a
	ld bc,00100h		;823b
	ld de,00110h		;823e
	djnz l8243h		;8241
l8243h:
	ld bc,00000h		;8243
	ld bc,01515h		;8246
	ld (bc),a		;8249
	dec b			;824a
	nop			;824b
	ld bc,01015h		;824c
	ld bc,00000h		;824f
	ld bc,01010h		;8252
	ld bc,00414h		;8255
	ld bc,00105h		;8258
	ld bc,00005h		;825b
	ld bc,00000h		;825e
	ld bc,00505h		;8261
	ld bc,01015h		;8264
	ld bc,00015h		;8267
	ld bc,01015h		;826a
	ld bc,00015h		;826d
	ld bc,01015h		;8270
	ld bc,00015h		;8273
	ld bc,00005h		;8276
	ld bc,01014h		;8279
	ld (bc),a		;827c
	nop			;827d
	nop			;827e
	ld bc,00404h		;827f
	ld bc,00004h		;8282
	ld bc,00105h		;8285
	ld bc,00005h		;8288
	ld bc,01005h		;828b
	ld bc,00000h		;828e
	ld (bc),a		;8291
	djnz $+18		;8292
	ld bc,00010h		;8294
	ld (bc),a		;8297
	nop			;8298
	nop			;8299
	ld bc,00404h		;829a
	inc bc			;829d
	inc b			;829e
	nop			;829f
	inc b			;82a0
	nop			;82a1
	nop			;82a2
	ld bc,00a0ah		;82a3
	ld c,00ah		;82a6
	nop			;82a8
	inc b			;82a9
	ld (bc),a		;82aa
	nop			;82ab
	ld bc,00406h		;82ac
	ld bc,00006h		;82af
	dec b			;82b2
	nop			;82b3
	nop			;82b4
	ld bc,00202h		;82b5
	inc b			;82b8
	nop			;82b9
	nop			;82ba
	ld bc,01010h		;82bb
	ld bc,00010h		;82be
	ld bc,00404h		;82c1
	ld (bc),a		;82c4
	inc b			;82c5
	nop			;82c6
	ld bc,00105h		;82c7
	ld (bc),a		;82ca
	dec b			;82cb
	nop			;82cc
	ld bc,01011h		;82cd
	ld bc,00010h		;82d0
	inc bc			;82d3
	nop			;82d4
	nop			;82d5
	ld bc,00101h		;82d6
	inc bc			;82d9
	ld bc,00100h		;82da
	dec b			;82dd
	inc b			;82de
	ld bc,00005h		;82df
	ld (bc),a		;82e2
	inc b			;82e3
	nop			;82e4
	ld bc,00206h		;82e5
	inc bc			;82e8
	ld b,000h		;82e9
	dec b			;82eb
	ld (bc),a		;82ec
	nop			;82ed
	ld (bc),a		;82ee
	nop			;82ef
	nop			;82f0
	ld bc,01010h		;82f1
	ld bc,00010h		;82f4
	dec b			;82f7
	nop			;82f8
	nop			;82f9
	ld bc,00505h		;82fa
	ld bc,00001h		;82fd
	ld bc,00000h		;8300
	ld bc,01010h		;8303
	ld bc,00010h		;8306
	ld bc,00505h		;8309
	ld bc,01015h		;830c
	ld bc,00005h		;830f
	inc bc			;8312
	nop			;8313
	nop			;8314
	ld bc,00808h		;8315
	ld (bc),a		;8318
	ex af,af'		;8319
	nop			;831a
	ld bc,0020ah		;831b
	ld bc,0000ah		;831e
	ld (bc),a		;8321
	ld (bc),a		;8322
	nop			;8323
	ld bc,00406h		;8324
	ld bc,00006h		;8327
	ld (bc),a		;832a
	nop			;832b
	nop			;832c
	ld bc,00505h		;832d
	inc bc			;8330
	dec b			;8331
	nop			;8332
	ld bc,00000h		;8333
	ld bc,01010h		;8336
	ld (bc),a		;8339
	nop			;833a
	nop			;833b
	ld bc,01010h		;833c
	ld (bc),a		;833f
	nop			;8340
	nop			;8341
	ld bc,00505h		;8342
	ld bc,00005h		;8345
	ld (bc),a		;8348
	nop			;8349
	nop			;834a
	ld bc,00101h		;834b
	ex af,af'		;834e
	ld bc,00100h		;834f
	ex af,af'		;8352
	ex af,af'		;8353
	inc b			;8354
	ex af,af'		;8355
	nop			;8356
	ld bc,01010h		;8357
	ld bc,00010h		;835a
	ld bc,00000h		;835d
	ld bc,01010h		;8360
	ld bc,00010h		;8363
	inc c			;8366
	nop			;8367
	nop			;8368
	ld bc,00404h		;8369
	dec b			;836c
	inc b			;836d
	nop			;836e
	inc bc			;836f
	nop			;8370
	nop			;8371
	ld bc,00808h		;8372
	dec b			;8375
	ex af,af'		;8376
	nop			;8377
	ld bc,00101h		;8378
	ld (bc),a		;837b
	ld bc,00400h		;837c
	nop			;837f
	nop			;8380
	ld bc,00202h		;8381
	ld b,000h		;8384
	nop			;8386
	ld bc,01414h		;8387
	ld (bc),a		;838a
	inc b			;838b
	nop			;838c
	ld bc,01014h		;838d
	ld bc,00014h		;8390
	ld bc,00004h		;8393
	ld bc,01014h		;8396
	inc bc			;8399
	nop			;839a
	nop			;839b
	ld bc,00808h		;839c
	ex af,af'		;839f
	ex af,af'		;83a0
	nop			;83a1
	ld bc,00109h		;83a2
	ld bc,01019h		;83a5
	ld bc,00001h		;83a8
	ld bc,00809h		;83ab
	ld bc,01019h		;83ae
	ld bc,00008h		;83b1
	ld bc,00202h		;83b4
	inc bc			;83b7
	ld (bc),a		;83b8
	nop			;83b9
	ld bc,01012h		;83ba
	ld bc,00416h		;83bd
	ld bc,00006h		;83c0
	ld bc,01014h		;83c3
	ld bc,00010h		;83c6
	ld bc,00404h		;83c9
	ld bc,00004h		;83cc
	inc bc			;83cf
	nop			;83d0
	nop			;83d1
	ld bc,00101h		;83d2
	ld bc,00001h		;83d5
	ld bc,00809h		;83d8
	inc bc			;83db
	ex af,af'		;83dc
	nop			;83dd
	ld bc,01018h		;83de
	ld bc,00018h		;83e1
	ld (bc),a		;83e4
	ex af,af'		;83e5
	nop			;83e6
	ld bc,01212h		;83e7
	ld bc,00002h		;83ea
	ld bc,0080ah		;83ed
	ld (bc),a		;83f0
	ex af,af'		;83f1
	nop			;83f2
	ld bc,00202h		;83f3
	ld bc,00002h		;83f6
	ld bc,01818h		;83f9
	ld bc,00111h		;83fc
	ld bc,00405h		;83ff
	ld bc,01015h		;8402
	ld bc,00216h		;8405
	ld bc,00006h		;8408
	inc bc			;840b
	ld (bc),a		;840c
	nop			;840d
	ld bc,00406h		;840e
	ld bc,00006h		;8411
	ld bc,00002h		;8414
	ld bc,01012h		;8417
	ld bc,00002h		;841a
	ld bc,01010h		;841d
	ld bc,00212h		;8420
	inc bc			;8423
	ld (bc),a		;8424
	nop			;8425
	ld (bc),a		;8426
	nop			;8427
	nop			;8428
	ld bc,00202h		;8429
	ld bc,00002h		;842c
	ld bc,00404h		;842f
	ld bc,00000h		;8432
	ld bc,01010h		;8435
	ld bc,00404h		;8438
	ld bc,00004h		;843b
	ld (bc),a		;843e
	djnz l8451h		;843f
	inc bc			;8441
	nop			;8442
	nop			;8443
	ld bc,00101h		;8444
	ld bc,00405h		;8447
	ld (bc),a		;844a
	ld bc,00100h		;844b
	ex af,af'		;844e
	ex af,af'		;844f
	inc b			;8450
l8451h:
	ex af,af'		;8451
	nop			;8452
	ld (bc),a		;8453
	nop			;8454
	nop			;8455
	ld bc,01010h		;8456
	ld bc,00111h		;8459
	ld bc,00415h		;845c
	ld (bc),a		;845f
	dec d			;8460
	nop			;8461
	ld bc,00011h		;8462
	ld bc,00809h		;8465
	dec b			;8468
	add hl,bc		;8469
	nop			;846a
	ld bc,00001h		;846b
	ld bc,00000h		;846e
	ld bc,00404h		;8471
	ld (bc),a		;8474
	inc b			;8475
	nop			;8476
	ld bc,00206h		;8477
	inc b			;847a
	ld b,000h		;847b
	rlca			;847d
	ld (bc),a		;847e
	nop			;847f
	inc bc			;8480
	nop			;8481
	nop			;8482
	ld bc,00202h		;8483
	inc b			;8486
	nop			;8487
	nop			;8488
	ld bc,01010h		;8489
	inc b			;848c
	nop			;848d
	nop			;848e
	ld bc,00505h		;848f
	add hl,bc		;8492
	dec b			;8493
	nop			;8494
	inc b			;8495
	inc b			;8496
	nop			;8497
	ld (bc),a		;8498
	nop			;8499
	nop			;849a
	ld bc,00505h		;849b
	dec b			;849e
	dec b			;849f
	nop			;84a0
	ld bc,00001h		;84a1
	ld bc,00809h		;84a4
	ld bc,00009h		;84a7
	inc bc			;84aa
	ex af,af'		;84ab
	nop			;84ac
	ld bc,01018h		;84ad
	ld bc,0020ah		;84b0
	ld bc,0101ah		;84b3
	ld bc,0001ah		;84b6
	ld bc,0101ah		;84b9
	ld (bc),a		;84bc
	ld a,(de)		;84bd
	nop			;84be
	ld bc,00002h		;84bf
	dec b			;84c2
	nop			;84c3
	nop			;84c4
	ld bc,01212h		;84c5
	ld bc,00002h		;84c8
	ld (bc),a		;84cb
	nop			;84cc
	nop			;84cd
	ld bc,00202h		;84ce
	dec b			;84d1
	nop			;84d2
	nop			;84d3
	ld bc,01010h		;84d4
	ld bc,00010h		;84d7
	ld bc,00000h		;84da
	ld bc,01010h		;84dd
	ld bc,00000h		;84e0
	ld bc,01010h		;84e3
	ld bc,00000h		;84e6
	ld bc,01010h		;84e9
	ld bc,00010h		;84ec
	ld bc,00404h		;84ef
	ld (bc),a		;84f2
	inc b			;84f3
	nop			;84f4
	ld bc,00105h		;84f5
	inc bc			;84f8
	dec b			;84f9
	nop			;84fa
	inc b			;84fb
	ld bc,00100h		;84fc
	ex af,af'		;84ff
	ex af,af'		;8500
	dec c			;8501
	ex af,af'		;8502
	nop			;8503
	ld bc,01018h		;8504
	ld bc,00018h		;8507
	ld bc,00119h		;850a
	ld bc,00001h		;850d
	inc bc			;8510
	nop			;8511
	nop			;8512
	ld bc,01010h		;8513
	ld bc,00414h		;8516
	ld bc,00014h		;8519
	ld (bc),a		;851c
	inc b			;851d
	nop			;851e
	dec l			;851f
	nop			;8520
	nop			;8521
	ld bc,00808h		;8522
	inc b			;8525
	ex af,af'		;8526
	nop			;8527
	rlca			;8528
	nop			;8529
	nop			;852a
	ld bc,01010h		;852b
	ld bc,00010h		;852e
	dec de			;8531
	nop			;8532
	nop			;8533
	ld bc,00202h		;8534
	ld bc,00002h		;8537
	ld bc,0080ah		;853a
	ld (bc),a		;853d
	ld a,(bc)		;853e
	nop			;853f
	inc b			;8540
	nop			;8541
	nop			;8542
	ld bc,00808h		;8543
	dec b			;8546
	ex af,af'		;8547
	nop			;8548
	ld bc,0020ah		;8549
	inc bc			;854c
	ld (bc),a		;854d
	nop			;854e
	ld (bc),a		;854f
	nop			;8550
	nop			;8551
	ld bc,00404h		;8552
	inc b			;8555
	inc b			;8556
	nop			;8557
	ld bc,00105h		;8558
	ld bc,01015h		;855b
	dec b			;855e
	nop			;855f
	nop			;8560
	ld bc,00404h		;8561
	inc b			;8564
	inc b			;8565
	nop			;8566
	inc bc			;8567
	nop			;8568
	nop			;8569
	ld bc,00202h		;856a
	ld (bc),a		;856d
	ld (bc),a		;856e
	nop			;856f
	inc bc			;8570
	nop			;8571
	nop			;8572
	ld bc,00202h		;8573
	ld bc,00406h		;8576
	ld bc,00006h		;8579
	ld bc,00004h		;857c
	ld bc,00105h		;857f
	dec b			;8582
	dec b			;8583
	nop			;8584
	ld bc,00808h		;8585
	inc b			;8588
	ex af,af'		;8589
	nop			;858a
	ld bc,0020ah		;858b
	ld (bc),a		;858e
	ld a,(bc)		;858f
	nop			;8590
	ld (bc),a		;8591
	ld (bc),a		;8592
	nop			;8593
	ld bc,00406h		;8594
	dec b			;8597
	ld b,000h		;8598
	ld bc,00000h		;859a
	ld bc,01010h		;859d
	ld bc,00010h		;85a0
	inc bc			;85a3
	nop			;85a4
	nop			;85a5
	ld bc,00404h		;85a6
	ld bc,00004h		;85a9
	ld bc,00105h		;85ac
	ld (bc),a		;85af
	dec b			;85b0
	nop			;85b1
	ld bc,00000h		;85b2
	ld bc,00101h		;85b5
	ld (bc),a		;85b8
	ld bc,00100h		;85b9
	add hl,bc		;85bc
	ex af,af'		;85bd
	ld bc,00009h		;85be
	dec b			;85c1
	ex af,af'		;85c2
	nop			;85c3
	ld bc,00109h		;85c4
	inc b			;85c7
	add hl,bc		;85c8
	nop			;85c9
	ld (bc),a		;85ca
	ex af,af'		;85cb
	nop			;85cc
	ld bc,0020ah		;85cd
	ld (bc),a		;85d0
	ld a,(bc)		;85d1
	nop			;85d2
	ld (bc),a		;85d3
	ld (bc),a		;85d4
	nop			;85d5
	ld bc,00406h		;85d6
	ld (bc),a		;85d9
	ld b,000h		;85da
	ld bc,01016h		;85dc
	ld (bc),a		;85df
	ld d,000h		;85e0
	ld (bc),a		;85e2
	ld b,000h		;85e3
	ld bc,00004h		;85e5
	inc bc			;85e8
	nop			;85e9
	nop			;85ea
	ld bc,00404h		;85eb
	ld bc,01014h		;85ee
	ld (bc),a		;85f1
	inc b			;85f2
	nop			;85f3
	ld b,000h		;85f4
	nop			;85f6
	ld bc,00101h		;85f7
	rlca			;85fa
	ld bc,00100h		;85fb
	ex af,af'		;85fe
	ex af,af'		;85ff
	ld bc,00008h		;8600
	ld bc,0020ah		;8603
	ld bc,00002h		;8606
	ld bc,00406h		;8609
	inc bc			;860c
	ld b,000h		;860d
	inc b			;860f
	ld (bc),a		;8610
	nop			;8611
	inc bc			;8612
	nop			;8613
	nop			;8614
	ld bc,01212h		;8615
	ld bc,00012h		;8618
	dec b			;861b
	nop			;861c
	nop			;861d
	ld bc,01010h		;861e
	ld bc,00414h		;8621
	ld bc,00004h		;8624
	inc b			;8627
	nop			;8628
	nop			;8629
	ld bc,00404h		;862a
	ld bc,01014h		;862d
	ld (bc),a		;8630
	inc b			;8631
	nop			;8632
	ld b,000h		;8633
	nop			;8635
	ld bc,00202h		;8636
	ld bc,00404h		;8639
	ld bc,00105h		;863c
	ld (bc),a		;863f
	dec b			;8640
	nop			;8641
	rlca			;8642
	nop			;8643
	nop			;8644
	ld bc,00101h		;8645
	dec b			;8648
	ld bc,00100h		;8649
	add hl,bc		;864c
	ex af,af'		;864d
	ld c,008h		;864e
	nop			;8650
	ld bc,01018h		;8651
	ld bc,00010h		;8654
	ld (bc),a		;8657
	nop			;8658
	nop			;8659
	ld bc,01010h		;865a
	ld bc,00010h		;865d
	ld bc,00000h		;8660
	ld bc,00404h		;8663
	ld bc,01216h		;8666
	ld bc,00016h		;8669
	dec b			;866c
	nop			;866d
	nop			;866e
	ld bc,01010h		;866f
	ld bc,00212h		;8672
	ld bc,00002h		;8675
	inc bc			;8678
	nop			;8679
	nop			;867a
	ld bc,00404h		;867b
	ld bc,00004h		;867e
	ld bc,01014h		;8681
	ld bc,00010h		;8684
	inc bc			;8687
	nop			;8688
	nop			;8689
	ld bc,00404h		;868a
	ld bc,01014h		;868d
	ld bc,00115h		;8690
	dec b			;8693
	nop			;8694
	nop			;8695
	ld bc,00101h		;8696
	inc b			;8699
	ld bc,00100h		;869a
	add hl,bc		;869d
	ex af,af'		;869e
	dec b			;869f
	add hl,bc		;86a0
	nop			;86a1
	ld (bc),a		;86a2
	ld bc,00100h		;86a3
	nop			;86a6
	nop			;86a7
	ld bc,01010h		;86a8
	ld bc,00010h		;86ab
	ld bc,00000h		;86ae
	ld bc,01010h		;86b1
	ld bc,00000h		;86b4
	ld bc,01010h		;86b7
	ld bc,00414h		;86ba
	ld bc,00004h		;86bd
	ld bc,01014h		;86c0
	ld (bc),a		;86c3
	inc b			;86c4
	nop			;86c5
	ld bc,01014h		;86c6
	ld bc,00004h		;86c9
	ld bc,01010h		;86cc
	ld bc,00010h		;86cf
	ld bc,00000h		;86d2
	ld bc,01010h		;86d5
	dec b			;86d8
	nop			;86d9
	nop			;86da
	ld bc,0ffffh		;86db
	rst 38h			;86de
	rst 38h			;86df
	rst 38h			;86e0
	rst 38h			;86e1
	rst 38h			;86e2
	rst 38h			;86e3
	add hl,de		;86e4
	nop			;86e5
	nop			;86e6
	ld bc,00202h		;86e7
	ld (bc),a		;86ea
	ld (bc),a		;86eb
	nop			;86ec
	dec b			;86ed
	nop			;86ee
	nop			;86ef
	ld bc,01010h		;86f0
	ld (bc),a		;86f3
	nop			;86f4
	nop			;86f5
	ld bc,01010h		;86f6
	ld bc,00000h		;86f9
	ld bc,00404h		;86fc
	inc bc			;86ff
	inc b			;8700
	nop			;8701
	ld bc,00206h		;8702
	ld bc,00006h		;8705
	ld bc,00002h		;8708
	ld bc,00000h		;870b
	ld bc,01010h		;870e
	ld bc,00010h		;8711
	ld bc,00000h		;8714
	ld bc,01010h		;8717
	ld bc,00010h		;871a
	inc bc			;871d
	nop			;871e
	nop			;871f
	ld bc,00808h		;8720
	ld c,008h		;8723
	nop			;8725
	ld bc,00109h		;8726
	ld bc,00009h		;8729
	inc bc			;872c
	ld bc,00100h		;872d
	dec b			;8730
	inc b			;8731
	ld b,005h		;8732
	nop			;8734
	ld bc,01014h		;8735
	ld bc,00000h		;8738
	ld bc,01010h		;873b
	ld bc,00010h		;873e
	ld bc,00404h		;8741
	ld bc,00004h		;8744
	ld bc,00000h		;8747
	ld bc,00404h		;874a
	ld (bc),a		;874d
	inc b			;874e
	nop			;874f
	ld bc,00202h		;8750
	ld (bc),a		;8753
	ld (bc),a		;8754
	nop			;8755
	ld bc,0080ah		;8756
	ld bc,0000ah		;8759
	inc bc			;875c
	ex af,af'		;875d
	nop			;875e
	ld bc,00109h		;875f
	ld (bc),a		;8762
	add hl,bc		;8763
	nop			;8764
	ld (bc),a		;8765
	ld bc,00300h		;8766
	nop			;8769
	nop			;876a
	ld bc,00a0ah		;876b
	inc c			;876e
	ld a,(bc)		;876f
	nop			;8770
	dec bc			;8771
	ex af,af'		;8772
	nop			;8773
	inc b			;8774
	nop			;8775
	nop			;8776
	ld bc,00101h		;8777
	ld bc,00001h		;877a
	ld bc,00000h		;877d
	ld bc,01010h		;8780
	ld bc,00010h		;8783
	inc bc			;8786
	nop			;8787
	nop			;8788
	ld bc,01010h		;8789
	ld bc,00a1ah		;878c
	ld (bc),a		;878f
	ld a,(bc)		;8790
	nop			;8791
	ld bc,00000h		;8792
	ld bc,00101h		;8795
	inc bc			;8798
	ld bc,00100h		;8799
	add hl,bc		;879c
	ex af,af'		;879d
	dec b			;879e
	add hl,bc		;879f
	nop			;87a0
	ld bc,00008h		;87a1
	inc bc			;87a4
	nop			;87a5
	nop			;87a6
	ld bc,00101h		;87a7
	ld (bc),a		;87aa
	ld bc,00300h		;87ab
	nop			;87ae
	nop			;87af
	ld bc,00404h		;87b0
	ld bc,00206h		;87b3
	inc b			;87b6
	ld (bc),a		;87b7
	nop			;87b8
	inc bc			;87b9
	nop			;87ba
	nop			;87bb
	ld bc,00505h		;87bc
	dec b			;87bf
	dec b			;87c0
	nop			;87c1
	add hl,bc		;87c2
	nop			;87c3
	nop			;87c4
	ld bc,00404h		;87c5
	ld bc,00105h		;87c8
	ld bc,00001h		;87cb
	dec b			;87ce
	nop			;87cf
	nop			;87d0
	ld bc,00404h		;87d1
	ld (bc),a		;87d4
	inc b			;87d5
	nop			;87d6
	inc bc			;87d7
	nop			;87d8
	nop			;87d9
	ld bc,00404h		;87da
	ld (bc),a		;87dd
	inc b			;87de
	nop			;87df
	inc b			;87e0
	nop			;87e1
	nop			;87e2
	ld bc,00202h		;87e3
	ld bc,00002h		;87e6
	inc b			;87e9
	nop			;87ea
	nop			;87eb
	ld bc,00404h		;87ec
	ld (bc),a		;87ef
	inc b			;87f0
	nop			;87f1
	inc b			;87f2
	nop			;87f3
	nop			;87f4
	ld bc,00202h		;87f5
	ld (bc),a		;87f8
	ld (bc),a		;87f9
	nop			;87fa
	dec b			;87fb
	nop			;87fc
	nop			;87fd
	ld bc,00202h		;87fe
	ld bc,00002h		;8801
	inc bc			;8804
	nop			;8805
	nop			;8806
	ld bc,00202h		;8807
	ld bc,0080ah		;880a
	ld (bc),a		;880d
	ld a,(bc)		;880e
	nop			;880f
	ld bc,00008h		;8810
	ld bc,00000h		;8813
	ld bc,01010h		;8816
	ld bc,00010h		;8819
	ld bc,00808h		;881c
	ld bc,01010h		;881f
	ld bc,00010h		;8822
	ld bc,00000h		;8825
	ld bc,01212h		;8828
	ld bc,00012h		;882b
	ld bc,00002h		;882e
	ld bc,01010h		;8831
	ld bc,00000h		;8834
	ld bc,01010h		;8837
	ld bc,00010h		;883a
	ld bc,00808h		;883d
	ld bc,00109h		;8840
	ex af,af'		;8843
	add hl,bc		;8844
	nop			;8845
	dec b			;8846
	ld bc,00100h		;8847
	dec b			;884a
	inc b			;884b
	inc bc			;884c
	nop			;884d
	nop			;884e
	ld bc,00404h		;884f
	ld bc,00004h		;8852
	ld bc,02024h		;8855
	inc bc			;8858
	inc b			;8859
	nop			;885a
	ld bc,02024h		;885b
	ld bc,00004h		;885e
	ld bc,00206h		;8861
	inc bc			;8864
	ld b,000h		;8865
	rlca			;8867
	ld (bc),a		;8868
	nop			;8869
	ld bc,01010h		;886a
	ld (bc),a		;886d
	nop			;886e
	nop			;886f
	ld bc,00404h		;8870
	ld bc,00105h		;8873
	ld bc,01015h		;8876
	ld bc,00014h		;8879
	ld bc,00010h		;887c
	ld (bc),a		;887f
	nop			;8880
	nop			;8881
	ld bc,00505h		;8882
	ld bc,01015h		;8885
	ld bc,00015h		;8888
	ld bc,00004h		;888b
	inc bc			;888e
	nop			;888f
	nop			;8890
	ld bc,01010h		;8891
	ld bc,00515h		;8894
	ld (bc),a		;8897
	dec b			;8898
	nop			;8899
	ld bc,00001h		;889a
	inc bc			;889d
	nop			;889e
	nop			;889f
	ld bc,00101h		;88a0
	inc b			;88a3
	ld bc,00100h		;88a4
	add hl,bc		;88a7
	ex af,af'		;88a8
	rlca			;88a9
	ex af,af'		;88aa
	nop			;88ab
	ld (bc),a		;88ac
	nop			;88ad
	nop			;88ae
	ld bc,00202h		;88af
	ld (bc),a		;88b2
	ld (bc),a		;88b3
	nop			;88b4
	inc bc			;88b5
	nop			;88b6
	nop			;88b7
	ld bc,00202h		;88b8
	ld b,002h		;88bb
	nop			;88bd
	dec bc			;88be
	nop			;88bf
	nop			;88c0
	ld bc,00202h		;88c1
	ld (bc),a		;88c4
	ld (bc),a		;88c5
	nop			;88c6
	inc bc			;88c7
	nop			;88c8
	nop			;88c9
	ld bc,00202h		;88ca
	ld (bc),a		;88cd
	ld (bc),a		;88ce
	nop			;88cf
	inc bc			;88d0
	nop			;88d1
	nop			;88d2
	ld bc,00202h		;88d3
	ld (bc),a		;88d6
	ld (bc),a		;88d7
	nop			;88d8
	ld bc,01010h		;88d9
	ld (bc),a		;88dc
	djnz l88dfh		;88dd
l88dfh:
	rrca			;88df
	nop			;88e0
	nop			;88e1
	ld bc,00606h		;88e2
	ld bc,00006h		;88e5
	ld bc,00004h		;88e8
	dec b			;88eb
	nop			;88ec
	nop			;88ed
	ld bc,00202h		;88ee
	rlca			;88f1
	ld (bc),a		;88f2
	nop			;88f3
	ld bc,00000h		;88f4
	ld bc,00404h		;88f7
	inc bc			;88fa
	inc b			;88fb
	nop			;88fc
	ld bc,00105h		;88fd
	ld (bc),a		;8900
	dec b			;8901
	nop			;8902
	ld bc,00001h		;8903
	dec b			;8906
	nop			;8907
	nop			;8908
	ld bc,00808h		;8909
	ld bc,00008h		;890c
	ld bc,0020ah		;890f
	dec b			;8912
	nop			;8913
	nop			;8914
	ld bc,00404h		;8915
	inc b			;8918
	inc b			;8919
	nop			;891a
	dec b			;891b
	nop			;891c
	nop			;891d
	ld bc,00404h		;891e
	inc b			;8921
	inc b			;8922
	nop			;8923
	ld bc,00105h		;8924
	ld bc,01015h		;8927
	ld bc,00015h		;892a
	ld bc,00005h		;892d
	inc b			;8930
	nop			;8931
	nop			;8932
	ld bc,00101h		;8933
	ld (bc),a		;8936
	ld bc,00100h		;8937
	ex af,af'		;893a
	ex af,af'		;893b
	inc b			;893c
	ex af,af'		;893d
	nop			;893e
	ld b,000h		;893f
	nop			;8941
	ld bc,00101h		;8942
	dec b			;8945
	ld bc,00d00h		;8946
	nop			;8949
	nop			;894a
	ld bc,00808h		;894b
	inc b			;894e
	ex af,af'		;894f
	nop			;8950
	ld bc,00000h		;8951
	ld bc,01111h		;8954
	ld (bc),a		;8957
	djnz l895ah		;8958
l895ah:
	ld bc,00000h		;895a
	ld bc,01010h		;895d
	ld (bc),a		;8960
	djnz l8963h		;8961
l8963h:
	ld bc,00808h		;8963
	inc c			;8966
	ex af,af'		;8967
	nop			;8968
	ld bc,01018h		;8969
	ld bc,00018h		;896c
	ld bc,00008h		;896f
	ld bc,02028h		;8972
	inc bc			;8975
	nop			;8976
	nop			;8977
	ld bc,01010h		;8978
	inc bc			;897b
	nop			;897c
	nop			;897d
	ld bc,01818h		;897e
	ld bc,00008h		;8981
	ld bc,00101h		;8984
	ld (bc),a		;8987
	ld bc,00100h		;8988
	add hl,bc		;898b
	ex af,af'		;898c
	ld bc,00009h		;898d
	inc bc			;8990
	ex af,af'		;8991
	nop			;8992
	ld a,(bc)		;8993
	nop			;8994
	nop			;8995
	ld bc,00505h		;8996
	ld (bc),a		;8999
	dec b			;899a
	nop			;899b
	dec b			;899c
	nop			;899d
	nop			;899e
	ld bc,00404h		;899f
	inc b			;89a2
	inc b			;89a3
	nop			;89a4
	dec b			;89a5
	nop			;89a6
	nop			;89a7
	ld bc,00808h		;89a8
	inc bc			;89ab
	ex af,af'		;89ac
	nop			;89ad
	ld bc,00101h		;89ae
	dec b			;89b1
	nop			;89b2
	nop			;89b3
	ld bc,00101h		;89b4
	inc b			;89b7
	ld bc,00500h		;89b8
	nop			;89bb
	nop			;89bc
	ld bc,00404h		;89bd
	ld bc,00004h		;89c0
	ld bc,00105h		;89c3
	ld bc,00004h		;89c6
	inc bc			;89c9
	nop			;89ca
	nop			;89cb
	ld bc,00404h		;89cc
	inc b			;89cf
	inc b			;89d0
	nop			;89d1
	ld bc,00206h		;89d2
	ld (bc),a		;89d5
	ld (bc),a		;89d6
	nop			;89d7
	rlca			;89d8
	nop			;89d9
	nop			;89da
	ld bc,00202h		;89db
	ld b,002h		;89de
	nop			;89e0
	ld b,000h		;89e1
	nop			;89e3
	ld bc,00202h		;89e4
	dec b			;89e7
	ld (bc),a		;89e8
	nop			;89e9
	ld (bc),a		;89ea
	nop			;89eb
	nop			;89ec
	ld bc,00808h		;89ed
	ld bc,00008h		;89f0
	dec b			;89f3
	nop			;89f4
	nop			;89f5
	ld bc,00808h		;89f6
	ld bc,01018h		;89f9
	ld bc,00018h		;89fc
	dec b			;89ff
	nop			;8a00
	nop			;8a01
	ld bc,00808h		;8a02
	ld bc,00008h		;8a05
	ld bc,01018h		;8a08
	ld bc,00008h		;8a0b
	ld bc,00000h		;8a0e
	ld bc,00101h		;8a11
	ld (bc),a		;8a14
	ld bc,00100h		;8a15
	nop			;8a18
	nop			;8a19
	ld bc,01010h		;8a1a
	ld bc,00010h		;8a1d
	dec b			;8a20
	nop			;8a21
	nop			;8a22
	ld bc,00101h		;8a23
	ld (bc),a		;8a26
	ld bc,00600h		;8a27
	nop			;8a2a
	nop			;8a2b
	ld bc,00202h		;8a2c
	ld (bc),a		;8a2f
	ld (bc),a		;8a30
	nop			;8a31
	ld bc,01010h		;8a32
	ld (bc),a		;8a35
	djnz l8a38h		;8a36
l8a38h:
	ld bc,00808h		;8a38
	ld (bc),a		;8a3b
	ex af,af'		;8a3c
	nop			;8a3d
	ld b,000h		;8a3e
	nop			;8a40
	ld bc,00101h		;8a41
	ld bc,01011h		;8a44
	ld (bc),a		;8a47
	ld de,00100h		;8a48
	ld bc,00100h		;8a4b
	inc b			;8a4e
	inc b			;8a4f
	ld bc,00004h		;8a50
	ld bc,00206h		;8a53
	ex af,af'		;8a56
	ld b,000h		;8a57
	ld bc,01010h		;8a59
	ld bc,00010h		;8a5c
	inc bc			;8a5f
	nop			;8a60
	nop			;8a61
	ld bc,00404h		;8a62
	ld (bc),a		;8a65
	inc b			;8a66
	nop			;8a67
	ld bc,00206h		;8a68
	inc b			;8a6b
	ld b,000h		;8a6c
	rlca			;8a6e
	ld (bc),a		;8a6f
	nop			;8a70
	ld bc,00404h		;8a71
	ld (bc),a		;8a74
	inc b			;8a75
	nop			;8a76
	ld bc,00105h		;8a77
	ex af,af'		;8a7a
	dec b			;8a7b
	nop			;8a7c
	ld (bc),a		;8a7d
	ld bc,00100h		;8a7e
	add hl,bc		;8a81
	ex af,af'		;8a82
	inc bc			;8a83
	add hl,bc		;8a84
	nop			;8a85
	ld bc,00008h		;8a86
	ld bc,01018h		;8a89
	ld bc,00018h		;8a8c
	inc b			;8a8f
	ex af,af'		;8a90
	nop			;8a91
	ld bc,01018h		;8a92
	ld bc,00018h		;8a95
	ld (bc),a		;8a98
	nop			;8a99
	nop			;8a9a
	ld bc,01010h		;8a9b
	inc bc			;8a9e
	nop			;8a9f
	nop			;8aa0
	ld bc,01010h		;8aa1
	ld bc,00010h		;8aa4
	ld bc,00404h		;8aa7
	ld bc,01014h		;8aaa
	ld bc,00010h		;8aad
	ld bc,00000h		;8ab0
	ld bc,01010h		;8ab3
	ld bc,00010h		;8ab6
	ld bc,00404h		;8ab9
	ld bc,01010h		;8abc
	ld (bc),a		;8abf
	nop			;8ac0
	nop			;8ac1
	ld bc,00404h		;8ac2
	ld bc,00004h		;8ac5
	ld bc,01010h		;8ac8
	ld bc,00010h		;8acb
	ld bc,00404h		;8ace
	ld bc,00004h		;8ad1
	ld bc,01014h		;8ad4
	inc b			;8ad7
	nop			;8ad8
	nop			;8ad9
	ld bc,00404h		;8ada
	inc bc			;8add
	inc b			;8ade
	nop			;8adf
	ld bc,00000h		;8ae0
	ld bc,02020h		;8ae3
	ld bc,00a2ah		;8ae6
	ld bc,0002ah		;8ae9
	ld (bc),a		;8aec
	ld a,(bc)		;8aed
	nop			;8aee
	ld bc,00000h		;8aef
	ld bc,01010h		;8af2
	ld bc,00404h		;8af5
	ld bc,00004h		;8af8
	ld bc,01111h		;8afb
	ld bc,00000h		;8afe
	ld bc,01010h		;8b01
	ld bc,00000h		;8b04
	ld bc,01010h		;8b07
	ld bc,00000h		;8b0a
	ld bc,01010h		;8b0d
	ld bc,00000h		;8b10
	ld bc,01010h		;8b13
	ld bc,00202h		;8b16
	ld (bc),a		;8b19
	ld (bc),a		;8b1a
	nop			;8b1b
	ld bc,0080ah		;8b1c
	ld bc,0000ah		;8b1f
	ld bc,00008h		;8b22
	ld bc,01111h		;8b25
	ld (bc),a		;8b28
	ld bc,00100h		;8b29
	dec d			;8b2c
	inc d			;8b2d
	ld bc,00005h		;8b2e
	ld bc,01015h		;8b31
	ld bc,00005h		;8b34
	ld bc,01015h		;8b37
	ld bc,00005h		;8b3a
	ld (bc),a		;8b3d
	dec d			;8b3e
	djnz l8b42h		;8b3f
	dec d			;8b41
l8b42h:
	nop			;8b42
	inc bc			;8b43
	dec b			;8b44
	nop			;8b45
	ld bc,00001h		;8b46
	ld (bc),a		;8b49
	nop			;8b4a
	nop			;8b4b
	ld bc,00808h		;8b4c
	rlca			;8b4f
	ex af,af'		;8b50
	nop			;8b51
	ld bc,0020ah		;8b52
	inc bc			;8b55
	ld a,(bc)		;8b56
	nop			;8b57
	ld bc,0202ah		;8b58
	ld bc,0002ah		;8b5b
	inc bc			;8b5e
	nop			;8b5f
	nop			;8b60
	ld bc,01010h		;8b61
	ld (bc),a		;8b64
	djnz l8b67h		;8b65
l8b67h:
	ld bc,00000h		;8b67
	ld bc,01414h		;8b6a
	ld bc,00014h		;8b6d
	ld bc,00004h		;8b70
	ld bc,01014h		;8b73
	ld bc,00014h		;8b76
	dec b			;8b79
	nop			;8b7a
	nop			;8b7b
	ld bc,02424h		;8b7c
	ld bc,00024h		;8b7f
	ld (bc),a		;8b82
	inc b			;8b83
	nop			;8b84
	ld bc,01010h		;8b85
	ld bc,00000h		;8b88
	ld bc,01414h		;8b8b
	ld bc,00004h		;8b8e
	ld bc,01014h		;8b91
	ld bc,00004h		;8b94
	ld bc,00000h		;8b97
	ld bc,01000h		;8b9a
	ld (bc),a		;8b9d
	nop			;8b9e
	nop			;8b9f
	ld bc,01010h		;8ba0
	ld bc,00000h		;8ba3
	ld bc,01010h		;8ba6
	ld bc,00414h		;8ba9
	ld bc,01014h		;8bac
	ld bc,00014h		;8baf
	ld bc,00000h		;8bb2
	ld bc,01000h		;8bb5
	ld bc,00000h		;8bb8
	ld bc,00808h		;8bbb
	dec b			;8bbe
	ex af,af'		;8bbf
	nop			;8bc0
	ld bc,01018h		;8bc1
	ld (bc),a		;8bc4
	ex af,af'		;8bc5
	nop			;8bc6
	ld bc,01018h		;8bc7
	ld bc,00008h		;8bca
	ld bc,01018h		;8bcd
	ld bc,00000h		;8bd0
	ld bc,01414h		;8bd3
	ld (bc),a		;8bd6
	inc b			;8bd7
	nop			;8bd8
	ld bc,01000h		;8bd9
	ld bc,01010h		;8bdc
	ld bc,00010h		;8bdf
	ld bc,00202h		;8be2
	ld (bc),a		;8be5
	ld (bc),a		;8be6
	nop			;8be7
	inc b			;8be8
	nop			;8be9
	nop			;8bea
	ld bc,00202h		;8beb
	inc b			;8bee
	ld (bc),a		;8bef
	nop			;8bf0
	inc b			;8bf1
	nop			;8bf2
	nop			;8bf3
	ld bc,00808h		;8bf4
	ld bc,0020ah		;8bf7
	inc bc			;8bfa
	ld a,(bc)		;8bfb
	nop			;8bfc
	inc bc			;8bfd
	nop			;8bfe
	nop			;8bff
	ld bc,00808h		;8c00
	ld (bc),a		;8c03
	ex af,af'		;8c04
	nop			;8c05
	inc bc			;8c06
	nop			;8c07
	nop			;8c08
	ld bc,01010h		;8c09
	ld bc,00414h		;8c0c
	ld (bc),a		;8c0f
	inc b			;8c10
	nop			;8c11
	ld bc,01014h		;8c12
	ld bc,00000h		;8c15
	ld bc,01010h		;8c18
	ld bc,00414h		;8c1b
	ld bc,00004h		;8c1e
	ld bc,01014h		;8c21
	ld bc,00004h		;8c24
	ld bc,01014h		;8c27
	ld bc,00010h		;8c2a
	ld bc,00000h		;8c2d
	ld bc,01414h		;8c30
	ld (bc),a		;8c33
	inc b			;8c34
	nop			;8c35
	ld bc,01014h		;8c36
	ld bc,00014h		;8c39
	inc bc			;8c3c
	nop			;8c3d
	nop			;8c3e
	ld bc,00808h		;8c3f
	ld a,(bc)		;8c42
	ex af,af'		;8c43
	nop			;8c44
	ld bc,02028h		;8c45
	ld bc,00028h		;8c48
	ld (bc),a		;8c4b
	nop			;8c4c
	nop			;8c4d
	ld bc,01010h		;8c4e
	ld bc,00111h		;8c51
	ld bc,00405h		;8c54
	ld bc,01011h		;8c57
	ld bc,00001h		;8c5a
	ld bc,01415h		;8c5d
	ld (bc),a		;8c60
	dec b			;8c61
	nop			;8c62
	ld bc,01011h		;8c63
	ld bc,00809h		;8c66
	ld (bc),a		;8c69
	add hl,bc		;8c6a
	nop			;8c6b
	ld bc,00001h		;8c6c
	ld bc,00000h		;8c6f
	ld bc,01818h		;8c72
	ld bc,00018h		;8c75
	ld (bc),a		;8c78
	ex af,af'		;8c79
	nop			;8c7a
	ld (bc),a		;8c7b
	nop			;8c7c
	nop			;8c7d
	ld bc,00505h		;8c7e
	ld bc,00005h		;8c81
	ld bc,01015h		;8c84
	ld (bc),a		;8c87
	dec b			;8c88
	nop			;8c89
	ld bc,01015h		;8c8a
	ld bc,00015h		;8c8d
	add hl,bc		;8c90
	dec b			;8c91
	nop			;8c92
	ld bc,00004h		;8c93
	ld bc,00206h		;8c96
	inc bc			;8c99
	ld b,000h		;8c9a
	ld bc,01012h		;8c9c
	ld bc,00010h		;8c9f
	inc bc			;8ca2
	nop			;8ca3
	nop			;8ca4
	ld bc,00202h		;8ca5
	dec b			;8ca8
	ld (bc),a		;8ca9
	nop			;8caa
	ld bc,0ffffh		;8cab
	rst 38h			;8cae
	rst 38h			;8caf
	rst 38h			;8cb0
	rst 38h			;8cb1
	rst 38h			;8cb2
	rst 38h			;8cb3
	ld d,000h		;8cb4
	nop			;8cb6
	ld bc,00202h		;8cb7
	ld (bc),a		;8cba
	ld (bc),a		;8cbb
	nop			;8cbc
	ld bc,0080ah		;8cbd
	dec c			;8cc0
	ld a,(bc)		;8cc1
	nop			;8cc2
	dec bc			;8cc3
	nop			;8cc4
	nop			;8cc5
	ld bc,01010h		;8cc6
	ld bc,00010h		;8cc9
	dec b			;8ccc
	nop			;8ccd
	nop			;8cce
	ld bc,00808h		;8ccf
	ex af,af'		;8cd2
	ex af,af'		;8cd3
	nop			;8cd4
	ld bc,00109h		;8cd5
	ld (bc),a		;8cd8
	add hl,bc		;8cd9
	nop			;8cda
	inc bc			;8cdb
	ld bc,00100h		;8cdc
	dec b			;8cdf
	inc b			;8ce0
	inc c			;8ce1
	dec b			;8ce2
	nop			;8ce3
	inc c			;8ce4
	inc b			;8ce5
	nop			;8ce6
	ld bc,00206h		;8ce7
	inc bc			;8cea
	ld b,000h		;8ceb
	dec c			;8ced
	ld (bc),a		;8cee
	nop			;8cef
	inc b			;8cf0
	nop			;8cf1
	nop			;8cf2
	ld bc,01010h		;8cf3
	ld bc,00010h		;8cf6
	dec b			;8cf9
	nop			;8cfa
	nop			;8cfb
	ld bc,00808h		;8cfc
	ld b,008h		;8cff
	nop			;8d01
	rlca			;8d02
	nop			;8d03
	nop			;8d04
	ld bc,00404h		;8d05
	dec bc			;8d08
	inc b			;8d09
	nop			;8d0a
	inc d			;8d0b
	nop			;8d0c
	nop			;8d0d
	ld bc,01010h		;8d0e
	inc b			;8d11
	nop			;8d12
	nop			;8d13
	ld bc,00808h		;8d14
	rlca			;8d17
	ex af,af'		;8d18
	nop			;8d19
	ld bc,00109h		;8d1a
	rlca			;8d1d
	add hl,bc		;8d1e
	nop			;8d1f
	djnz l8d23h		;8d20
	nop			;8d22
l8d23h:
	inc c			;8d23
	nop			;8d24
	nop			;8d25
	ld bc,01010h		;8d26
	ld bc,00010h		;8d29
	ex af,af'		;8d2c
	nop			;8d2d
	nop			;8d2e
	ld bc,00a0ah		;8d2f
	ld b,00ah		;8d32
	nop			;8d34
	dec b			;8d35
	ex af,af'		;8d36
	nop			;8d37
	ld bc,00109h		;8d38
	ld bc,00009h		;8d3b
	inc bc			;8d3e
	ld bc,00100h		;8d3f
	dec b			;8d42
	inc b			;8d43
	ld bc,00005h		;8d44
	ld bc,00004h		;8d47
	dec b			;8d4a
	nop			;8d4b
	nop			;8d4c
	ld bc,01212h		;8d4d
	ld (bc),a		;8d50
	ld (de),a		;8d51
	nop			;8d52
	add hl,bc		;8d53
	ld (bc),a		;8d54
	nop			;8d55
	ld b,000h		;8d56
	nop			;8d58
	ld bc,00808h		;8d59
	inc b			;8d5c
	ex af,af'		;8d5d
	nop			;8d5e
	ld bc,00109h		;8d5f
	ld (bc),a		;8d62
	add hl,bc		;8d63
	nop			;8d64
	ld bc,00008h		;8d65
	ld bc,0020ah		;8d68
	ld (bc),a		;8d6b
	ld (bc),a		;8d6c
	nop			;8d6d
	ld bc,00406h		;8d6e
	rrca			;8d71
	ld b,000h		;8d72
	ld bc,00002h		;8d74
	inc bc			;8d77
	nop			;8d78
	nop			;8d79
	ld bc,00101h		;8d7a
	inc bc			;8d7d
	ld bc,00100h		;8d7e
	add hl,bc		;8d81
	ex af,af'		;8d82
	ex af,af'		;8d83
	add hl,bc		;8d84
	nop			;8d85
	ld b,008h		;8d86
	nop			;8d88
	ld b,000h		;8d89
	nop			;8d8b
	ld bc,00202h		;8d8c
	ld bc,00002h		;8d8f
	ld bc,00000h		;8d92
	ld bc,01010h		;8d95
	ld bc,00515h		;8d98
	ld bc,00005h		;8d9b
	ld bc,01015h		;8d9e
	ld bc,00809h		;8da1
	ld bc,01019h		;8da4
	ld bc,00008h		;8da7
	ld bc,01010h		;8daa
	ld bc,00000h		;8dad
	ld bc,01515h		;8db0
	ld bc,00005h		;8db3
	ld bc,01015h		;8db6
	ld (bc),a		;8db9
	dec b			;8dba
	nop			;8dbb
	ld bc,01005h		;8dbc
	dec b			;8dbf
	nop			;8dc0
	nop			;8dc1
	ld bc,00606h		;8dc2
	rlca			;8dc5
	ld b,000h		;8dc6
	ld bc,00002h		;8dc8
	dec bc			;8dcb
	nop			;8dcc
	nop			;8dcd
	ld bc,00404h		;8dce
	ld bc,00206h		;8dd1
	ld bc,00006h		;8dd4
	rlca			;8dd7
	nop			;8dd8
	nop			;8dd9
	ld bc,01010h		;8dda
	ld (bc),a		;8ddd
	djnz l8de0h		;8dde
l8de0h:
	inc b			;8de0
	nop			;8de1
	nop			;8de2
	ld bc,00404h		;8de3
	inc bc			;8de6
	inc b			;8de7
	nop			;8de8
	dec b			;8de9
	nop			;8dea
	nop			;8deb
	ld bc,00808h		;8dec
	ld (bc),a		;8def
	ex af,af'		;8df0
	nop			;8df1
	ld bc,0020ah		;8df2
	ld a,(bc)		;8df5
	ld a,(bc)		;8df6
	nop			;8df7
	ld b,000h		;8df8
	nop			;8dfa
	ld bc,00101h		;8dfb
	dec b			;8dfe
	ld bc,00700h		;8dff
	nop			;8e02
	nop			;8e03
	ld bc,00808h		;8e04
	ld (bc),a		;8e07
	ex af,af'		;8e08
	nop			;8e09
	ld bc,00101h		;8e0a
	ld bc,00001h		;8e0d
	ld bc,01010h		;8e10
	ld bc,00010h		;8e13
	ld (bc),a		;8e16
	nop			;8e17
	nop			;8e18
	ld bc,00101h		;8e19
	ld bc,00001h		;8e1c
	ld bc,00405h		;8e1f
	ld (bc),a		;8e22
	dec b			;8e23
	nop			;8e24
	inc b			;8e25
	nop			;8e26
	nop			;8e27
	ld bc,00101h		;8e28
	ld (bc),a		;8e2b
	ld bc,00100h		;8e2c
	nop			;8e2f
	nop			;8e30
	ld bc,00808h		;8e31
	ld (bc),a		;8e34
	ex af,af'		;8e35
	nop			;8e36
	ld bc,00202h		;8e37
	ld (bc),a		;8e3a
	ld (bc),a		;8e3b
	nop			;8e3c
	ld bc,01010h		;8e3d
	ld bc,00010h		;8e40
	ld bc,00000h		;8e43
	ld bc,01010h		;8e46
	ld bc,00000h		;8e49
	ld bc,01010h		;8e4c
	ld bc,00010h		;8e4f
	ld bc,00202h		;8e52
	ld bc,01010h		;8e55
	ld bc,00000h		;8e58
	ld bc,01010h		;8e5b
	ld bc,00404h		;8e5e
	ld bc,00004h		;8e61
	ld bc,01216h		;8e64
	ld bc,00012h		;8e67
	ld bc,00000h		;8e6a
	ld bc,01010h		;8e6d
	ld bc,00010h		;8e70
	ld b,000h		;8e73
	nop			;8e75
	ld bc,00404h		;8e76
	inc b			;8e79
	inc b			;8e7a
	nop			;8e7b
	dec b			;8e7c
	nop			;8e7d
	nop			;8e7e
	ld bc,00202h		;8e7f
	ld bc,00002h		;8e82
	add hl,bc		;8e85
	nop			;8e86
	nop			;8e87
	ld bc,00101h		;8e88
	ld bc,00001h		;8e8b
	inc d			;8e8e
	nop			;8e8f
	nop			;8e90
	ld bc,00404h		;8e91
	dec b			;8e94
	inc b			;8e95
	nop			;8e96
	ld b,000h		;8e97
	nop			;8e99
	ld bc,00808h		;8e9a
	dec bc			;8e9d
	ex af,af'		;8e9e
	nop			;8e9f
	ex af,af'		;8ea0
	nop			;8ea1
	nop			;8ea2
	ld bc,00202h		;8ea3
	ld (bc),a		;8ea6
	ld (bc),a		;8ea7
	nop			;8ea8
	ex af,af'		;8ea9
	nop			;8eaa
	nop			;8eab
	ld bc,00202h		;8eac
	ex af,af'		;8eaf
	nop			;8eb0
	nop			;8eb1
	ld bc,00808h		;8eb2
	add hl,bc		;8eb5
	ex af,af'		;8eb6
	nop			;8eb7
	ld c,000h		;8eb8
	nop			;8eba
	ld bc,00101h		;8ebb
	ld (bc),a		;8ebe
	ld bc,00800h		;8ebf
	nop			;8ec2
	nop			;8ec3
	ld bc,00101h		;8ec4
	ld bc,00001h		;8ec7
	ld de,00000h		;8eca
	ld bc,00404h		;8ecd
	inc bc			;8ed0
	inc b			;8ed1
	nop			;8ed2
	ld c,000h		;8ed3
	nop			;8ed5
	ld bc,00404h		;8ed6
	ld (bc),a		;8ed9
	inc b			;8eda
	nop			;8edb
	rrca			;8edc
	nop			;8edd
	nop			;8ede
	ld bc,00404h		;8edf
	ld (bc),a		;8ee2
	inc b			;8ee3
	nop			;8ee4
	dec bc			;8ee5
	nop			;8ee6
	nop			;8ee7
	ld bc,00404h		;8ee8
	inc bc			;8eeb
	inc b			;8eec
	nop			;8eed
	ld a,(bc)		;8eee
	nop			;8eef
	nop			;8ef0
	ld bc,00404h		;8ef1
	ld bc,00004h		;8ef4
	ld b,000h		;8ef7
	nop			;8ef9
	ld bc,00808h		;8efa
	rrca			;8efd
	ex af,af'		;8efe
	nop			;8eff
	dec b			;8f00
	nop			;8f01
	nop			;8f02
	ld bc,00404h		;8f03
	ld bc,00004h		;8f06
	inc bc			;8f09
	nop			;8f0a
	nop			;8f0b
	ld bc,00404h		;8f0c
	ld (bc),a		;8f0f
	inc b			;8f10
	nop			;8f11
	rlca			;8f12
	nop			;8f13
	nop			;8f14
	ld bc,00404h		;8f15
	rlca			;8f18
	nop			;8f19
	nop			;8f1a
	ld bc,00404h		;8f1b
	ld bc,00004h		;8f1e
	dec b			;8f21
	nop			;8f22
	nop			;8f23
	ld bc,00404h		;8f24
	ld (bc),a		;8f27
	inc b			;8f28
	nop			;8f29
	add hl,bc		;8f2a
	nop			;8f2b
	nop			;8f2c
	ld bc,00808h		;8f2d
	ld bc,00008h		;8f30
	ld bc,00109h		;8f33
	rlca			;8f36
	ld bc,00100h		;8f37
	ex af,af'		;8f3a
	ex af,af'		;8f3b
	ld b,008h		;8f3c
	nop			;8f3e
	ld b,000h		;8f3f
	nop			;8f41
	ld bc,00101h		;8f42
	ld bc,00001h		;8f45
	rlca			;8f48
	nop			;8f49
	nop			;8f4a
	ld bc,00a0ah		;8f4b
	ld b,000h		;8f4e
	nop			;8f50
	ld bc,02020h		;8f51
	ld bc,00222h		;8f54
	ld bc,00002h		;8f57
	dec b			;8f5a
	nop			;8f5b
	nop			;8f5c
	ld bc,02222h		;8f5d
	dec b			;8f60
	nop			;8f61
	nop			;8f62
	ld bc,00202h		;8f63
	ld bc,00002h		;8f66
	inc b			;8f69
	nop			;8f6a
	nop			;8f6b
	ld bc,00202h		;8f6c
	dec c			;8f6f
	nop			;8f70
	nop			;8f71
	ld bc,00202h		;8f72
	ld bc,01012h		;8f75
	ld bc,00010h		;8f78
	ld bc,00000h		;8f7b
	ld bc,01010h		;8f7e
	ld bc,00000h		;8f81
	ld bc,01010h		;8f84
	inc bc			;8f87
	nop			;8f88
	nop			;8f89
	ld bc,00404h		;8f8a
	ld bc,00004h		;8f8d
	ld b,000h		;8f90
	nop			;8f92
	ld bc,00101h		;8f93
	ld bc,00001h		;8f96
	dec b			;8f99
	nop			;8f9a
	nop			;8f9b
	ld bc,00101h		;8f9c
	ld bc,00001h		;8f9f
	ld (bc),a		;8fa2
	nop			;8fa3
	nop			;8fa4
	ld bc,01010h		;8fa5
	ld bc,00202h		;8fa8
	ld bc,01012h		;8fab
	ld bc,00000h		;8fae
	ld bc,01010h		;8fb1
	dec bc			;8fb4
	nop			;8fb5
	nop			;8fb6
	ld bc,01212h		;8fb7
	ld bc,00012h		;8fba
	ld bc,00002h		;8fbd
	rlca			;8fc0
	nop			;8fc1
	nop			;8fc2
	ld bc,01010h		;8fc3
	inc bc			;8fc6
	nop			;8fc7
	nop			;8fc8
	ld bc,00202h		;8fc9
	ld bc,00002h		;8fcc
	dec b			;8fcf
	nop			;8fd0
	nop			;8fd1
	ld bc,01010h		;8fd2
	ld (bc),a		;8fd5
	djnz l8fd8h		;8fd6
l8fd8h:
	inc bc			;8fd8
	nop			;8fd9
	nop			;8fda
	ld bc,00202h		;8fdb
	ld (bc),a		;8fde
	ld (bc),a		;8fdf
	nop			;8fe0
	rlca			;8fe1
	nop			;8fe2
	nop			;8fe3
	ld bc,00101h		;8fe4
	ld (bc),a		;8fe7
	ld bc,00100h		;8fe8
	dec b			;8feb
	inc b			;8fec
	dec b			;8fed
	dec b			;8fee
	nop			;8fef
	ld a,(bc)		;8ff0
	inc b			;8ff1
	nop			;8ff2
	ld bc,02024h		;8ff3
	ld bc,00020h		;8ff6
	rlca			;8ff9
	nop			;8ffa
	nop			;8ffb
	ld bc,00808h		;8ffc
	ld bc,00008h		;8fff
	ld b,000h		;9002
	nop			;9004
	ld bc,00202h		;9005
	ld bc,00406h		;9008
	ld bc,00006h		;900b
	dec c			;900e
	nop			;900f
	nop			;9010
	ld bc,00202h		;9011
	ld bc,00002h		;9014
	ld bc,01012h		;9017
	ld bc,00010h		;901a
	ld bc,00000h		;901d
	ld bc,01010h		;9020
	ld bc,00212h		;9023
	ld bc,00002h		;9026
	ld bc,01012h		;9029
	ld bc,00012h		;902c
	ld bc,00002h		;902f
	ld bc,01012h		;9032
	ld bc,00012h		;9035
	ld (bc),a		;9038
	ld (bc),a		;9039
	nop			;903a
	ld bc,0181ah		;903b
	ld bc,0000ah		;903e
	dec b			;9041
	nop			;9042
	nop			;9043
	ld bc,00808h		;9044
	ld bc,00008h		;9047
	ld bc,00101h		;904a
	inc bc			;904d
	ld bc,00100h		;904e
	nop			;9051
	nop			;9052
	ld bc,00a0ah		;9053
	inc bc			;9056
	ld a,(bc)		;9057
	nop			;9058
	ld b,002h		;9059
	nop			;905b
	ld bc,00000h		;905c
	ld bc,00101h		;905f
	ld (bc),a		;9062
	ld bc,00100h		;9063
	dec b			;9066
	inc b			;9067
	ld (bc),a		;9068
	dec b			;9069
	nop			;906a
	ld a,(bc)		;906b
	nop			;906c
	nop			;906d
	ld bc,00101h		;906e
	ld a,(bc)		;9071
	ld bc,00100h		;9072
	dec b			;9075
	inc b			;9076
	ld bc,01015h		;9077
	ld bc,00014h		;907a
	ld bc,00004h		;907d
	ld bc,01014h		;9080
	ld bc,00014h		;9083
	ld bc,00004h		;9086
	ld bc,01014h		;9089
	ld bc,00004h		;908c
	ld bc,01014h		;908f
	ld bc,00014h		;9092
	ld bc,00004h		;9095
	ld bc,01216h		;9098
	ld bc,00016h		;909b
	ex af,af'		;909e
	nop			;909f
	nop			;90a0
	ld bc,00808h		;90a1
	ld bc,00008h		;90a4
	dec b			;90a7
	nop			;90a8
	nop			;90a9
	ld bc,00101h		;90aa
	ld b,001h		;90ad
	nop			;90af
	ex af,af'		;90b0
	nop			;90b1
	nop			;90b2
	ld bc,01010h		;90b3
	ld bc,00010h		;90b6
	ld (bc),a		;90b9
	nop			;90ba
	nop			;90bb
	ld bc,01010h		;90bc
	ld bc,00010h		;90bf
	ld (bc),a		;90c2
	nop			;90c3
	nop			;90c4
	ld bc,01010h		;90c5
	ld (bc),a		;90c8
	nop			;90c9
	nop			;90ca
	ld bc,00202h		;90cb
	dec b			;90ce
	ld (bc),a		;90cf
	nop			;90d0
	ld bc,01012h		;90d1
	ld bc,00012h		;90d4
	ld bc,00002h		;90d7
	ld bc,00000h		;90da
	ld bc,01010h		;90dd
	ld bc,00010h		;90e0
	ld bc,00202h		;90e3
	ld b,002h		;90e6
	nop			;90e8
	dec b			;90e9
	nop			;90ea
	nop			;90eb
	ld bc,00101h		;90ec
	inc c			;90ef
	ld bc,00100h		;90f0
	add hl,bc		;90f3
	ex af,af'		;90f4
	ld bc,00009h		;90f5
	dec b			;90f8
	ex af,af'		;90f9
	nop			;90fa
	ld bc,01018h		;90fb
	ld bc,00018h		;90fe
	ld bc,00008h		;9101
	ld bc,01010h		;9104
	ld bc,00000h		;9107
	ld bc,01010h		;910a
	ld bc,00404h		;910d
	ld bc,01014h		;9110
	ld bc,00004h		;9113
	ld (bc),a		;9116
	inc d			;9117
	djnz l911bh		;9118
	inc d			;911a
l911bh:
	nop			;911b
	inc bc			;911c
	inc b			;911d
	nop			;911e
	ld bc,00206h		;911f
	ld bc,00006h		;9122
	inc b			;9125
	nop			;9126
	nop			;9127
	ld bc,00808h		;9128
	dec b			;912b
	ex af,af'		;912c
	nop			;912d
	inc b			;912e
	nop			;912f
	nop			;9130
	ld bc,00101h		;9131
	dec b			;9134
	ld bc,00100h		;9135
	ex af,af'		;9138
	ex af,af'		;9139
	rlca			;913a
	ex af,af'		;913b
	nop			;913c
	dec b			;913d
	nop			;913e
	nop			;913f
	ld bc,00202h		;9140
	ld (bc),a		;9143
	ld (bc),a		;9144
	nop			;9145
	ld b,000h		;9146
	nop			;9148
	ld bc,00404h		;9149
	ld bc,00004h		;914c
	rlca			;914f
	nop			;9150
	nop			;9151
	ld bc,00202h		;9152
	ld (bc),a		;9155
	ld (bc),a		;9156
	nop			;9157
	ld b,000h		;9158
	nop			;915a
	ld bc,00202h		;915b
	ld bc,00002h		;915e
	inc bc			;9161
	nop			;9162
	nop			;9163
	ld bc,00101h		;9164
	inc bc			;9167
	ld bc,00100h		;9168
	nop			;916b
	nop			;916c
	ld bc,01010h		;916d
	ld bc,00010h		;9170
	ld bc,00000h		;9173
	ld bc,01010h		;9176
	ld bc,00010h		;9179
	ld bc,00000h		;917c
	ld bc,01414h		;917f
	ld (bc),a		;9182
	inc b			;9183
	nop			;9184
	ld bc,01014h		;9185
	inc c			;9188
	nop			;9189
	nop			;918a
	ld bc,00808h		;918b
	ld bc,00008h		;918e
	ld (bc),a		;9191
	nop			;9192
	nop			;9193
	ld bc,00404h		;9194
	inc b			;9197
	inc b			;9198
	nop			;9199
	dec b			;919a
	nop			;919b
	nop			;919c
	ld bc,02424h		;919d
	ld bc,00024h		;91a0
	ld a,(de)		;91a3
	nop			;91a4
	nop			;91a5
	ld bc,02222h		;91a6
	ld bc,00022h		;91a9
	ld a,(bc)		;91ac
	nop			;91ad
	nop			;91ae
	ld bc,00202h		;91af
	ld (bc),a		;91b2
	ld (bc),a		;91b3
	nop			;91b4
	ex af,af'		;91b5
	nop			;91b6
	nop			;91b7
	ld bc,01010h		;91b8
	ld bc,00010h		;91bb
	ld bc,00000h		;91be
	ld bc,01010h		;91c1
	ld bc,00010h		;91c4
	ld bc,00000h		;91c7
	ld bc,01010h		;91ca
	ld bc,00010h		;91cd
	ld bc,00000h		;91d0
	ld bc,01010h		;91d3
	ld (bc),a		;91d6
	djnz l91d9h		;91d7
l91d9h:
	ld bc,00404h		;91d9
	ld (bc),a		;91dc
	inc b			;91dd
	nop			;91de
	ld bc,01010h		;91df
	ld bc,00010h		;91e2
	ld bc,00000h		;91e5
	ld bc,01010h		;91e8
	ld bc,00010h		;91eb
	ld bc,00202h		;91ee
	ld bc,00002h		;91f1
	ld bc,01012h		;91f4
	ld bc,00012h		;91f7
	ld bc,00002h		;91fa
	ld bc,01012h		;91fd
	ld bc,00012h		;9200
	ld bc,00002h		;9203
	ex af,af'		;9206
	nop			;9207
	nop			;9208
	ld bc,00101h		;9209
	ld c,001h		;920c
	nop			;920e
	rrca			;920f
	nop			;9210
	nop			;9211
	ld bc,00808h		;9212
	rlca			;9215
	ex af,af'		;9216
	nop			;9217
	dec sp			;9218
	nop			;9219
	nop			;921a
	ld bc,0ffffh		;921b
	rst 38h			;921e
	rst 38h			;921f
	rst 38h			;9220
	rst 38h			;9221
	rst 38h			;9222
	rst 38h			;9223
	rst 38h			;9224
	rst 38h			;9225
	rst 38h			;9226
	rst 38h			;9227
	rst 38h			;9228
	rst 38h			;9229
	rst 38h			;922a
	rst 38h			;922b
	rst 38h			;922c
	rst 38h			;922d
	rst 38h			;922e
	rst 38h			;922f
	rst 38h			;9230
	rst 38h			;9231
	rst 38h			;9232
	rst 38h			;9233
	rst 38h			;9234
	rst 38h			;9235
	rst 38h			;9236
	rst 38h			;9237
	rst 38h			;9238
	rst 38h			;9239
	rst 38h			;923a
	rst 38h			;923b
	rst 38h			;923c
	rst 38h			;923d
	rst 38h			;923e
	rst 38h			;923f
	rst 38h			;9240
	rst 38h			;9241
	rst 38h			;9242
	rst 38h			;9243
	rst 38h			;9244
	rst 38h			;9245
	rst 38h			;9246
	rst 38h			;9247
	rst 38h			;9248
	rst 38h			;9249
	rst 38h			;924a
	rst 38h			;924b
	rst 38h			;924c
	rst 38h			;924d
	rst 38h			;924e
	rst 38h			;924f
	rst 38h			;9250
	rst 38h			;9251
	rst 38h			;9252
	rst 38h			;9253
	rst 38h			;9254
	rst 38h			;9255
	rst 38h			;9256
	rst 38h			;9257
	rst 38h			;9258
	rst 38h			;9259
	rst 38h			;925a
	rst 38h			;925b
	rst 38h			;925c
	rst 38h			;925d
	rst 38h			;925e
	rst 38h			;925f
	rst 38h			;9260
	rst 38h			;9261
	rst 38h			;9262
	rst 38h			;9263
	rst 38h			;9264
	rst 38h			;9265
	rst 38h			;9266
	rst 38h			;9267
	rst 38h			;9268
	rst 38h			;9269
	rst 38h			;926a
	rst 38h			;926b
	rst 38h			;926c
	rst 38h			;926d
	rst 38h			;926e
	rst 38h			;926f
	rst 38h			;9270
	rst 38h			;9271
	rst 38h			;9272
	rst 38h			;9273
	rst 38h			;9274
	rst 38h			;9275
	rst 38h			;9276
	rst 38h			;9277
	rst 38h			;9278
	rst 38h			;9279
	rst 38h			;927a
	rst 38h			;927b
	rst 38h			;927c
	rst 38h			;927d
	rst 38h			;927e
	rst 38h			;927f
	rst 38h			;9280
	rst 38h			;9281
	rst 38h			;9282
	rst 38h			;9283
	rst 38h			;9284
	rst 38h			;9285
	rst 38h			;9286
	rst 38h			;9287
	rst 38h			;9288
	rst 38h			;9289
	rst 38h			;928a
	rst 38h			;928b
	rst 38h			;928c
	rst 38h			;928d
	rst 38h			;928e
	rst 38h			;928f
	rst 38h			;9290
	rst 38h			;9291
	rst 38h			;9292
	rst 38h			;9293
	rst 38h			;9294
	rst 38h			;9295
	rst 38h			;9296
	rst 38h			;9297
	rst 38h			;9298
	rst 38h			;9299
	rst 38h			;929a
	rst 38h			;929b
	rst 38h			;929c
	rst 38h			;929d
	rst 38h			;929e
	rst 38h			;929f
	rst 38h			;92a0
	rst 38h			;92a1
	rst 38h			;92a2
	rst 38h			;92a3
	rst 38h			;92a4
	rst 38h			;92a5
	rst 38h			;92a6
	rst 38h			;92a7
	rst 38h			;92a8
	rst 38h			;92a9
	rst 38h			;92aa
	rst 38h			;92ab
	rst 38h			;92ac
	rst 38h			;92ad
	rst 38h			;92ae
	rst 38h			;92af
	rst 38h			;92b0
	rst 38h			;92b1
	rst 38h			;92b2
	rst 38h			;92b3
	rst 38h			;92b4
	rst 38h			;92b5
	rst 38h			;92b6
	rst 38h			;92b7
	rst 38h			;92b8
	rst 38h			;92b9
	rst 38h			;92ba
	rst 38h			;92bb
	rst 38h			;92bc
	rst 38h			;92bd
	rst 38h			;92be
	rst 38h			;92bf
	rst 38h			;92c0
	rst 38h			;92c1
	rst 38h			;92c2
	rst 38h			;92c3
	rst 38h			;92c4
	rst 38h			;92c5
	rst 38h			;92c6
	rst 38h			;92c7
	rst 38h			;92c8
	rst 38h			;92c9
	rst 38h			;92ca
	rst 38h			;92cb
	rst 38h			;92cc
	rst 38h			;92cd
	rst 38h			;92ce
	rst 38h			;92cf
	rst 38h			;92d0
	rst 38h			;92d1
	rst 38h			;92d2
	rst 38h			;92d3
	rst 38h			;92d4
	rst 38h			;92d5
	rst 38h			;92d6
	rst 38h			;92d7
	rst 38h			;92d8
	rst 38h			;92d9
	rst 38h			;92da
	rst 38h			;92db
	rst 38h			;92dc
	rst 38h			;92dd
	rst 38h			;92de
	rst 38h			;92df
	rst 38h			;92e0
	rst 38h			;92e1
	rst 38h			;92e2
	rst 38h			;92e3
	rst 38h			;92e4
	rst 38h			;92e5
	rst 38h			;92e6
	rst 38h			;92e7
	rst 38h			;92e8
	rst 38h			;92e9
	rst 38h			;92ea
	rst 38h			;92eb
	rst 38h			;92ec
	rst 38h			;92ed
	rst 38h			;92ee
	rst 38h			;92ef
	rst 38h			;92f0
	rst 38h			;92f1
	rst 38h			;92f2
	rst 38h			;92f3
	rst 38h			;92f4
	rst 38h			;92f5
	rst 38h			;92f6
	rst 38h			;92f7
	rst 38h			;92f8
	rst 38h			;92f9
	rst 38h			;92fa
	rst 38h			;92fb
	rst 38h			;92fc
	rst 38h			;92fd
	rst 38h			;92fe
	rst 38h			;92ff
	rst 38h			;9300
	rst 38h			;9301
	rst 38h			;9302
	rst 38h			;9303
	rst 38h			;9304
	rst 38h			;9305
	rst 38h			;9306
	rst 38h			;9307
	rst 38h			;9308
	rst 38h			;9309
	rst 38h			;930a
	rst 38h			;930b
	rst 38h			;930c
	rst 38h			;930d
	rst 38h			;930e
	rst 38h			;930f
	rst 38h			;9310
	rst 38h			;9311
	rst 38h			;9312
	rst 38h			;9313
	rst 38h			;9314
	rst 38h			;9315
	rst 38h			;9316
	rst 38h			;9317
	rst 38h			;9318
	rst 38h			;9319
	rst 38h			;931a
	rst 38h			;931b
	rst 38h			;931c
	rst 38h			;931d
	rst 38h			;931e
	rst 38h			;931f
	rst 38h			;9320
	rst 38h			;9321
	rst 38h			;9322
	rst 38h			;9323
	rst 38h			;9324
	rst 38h			;9325
	rst 38h			;9326
	rst 38h			;9327
	rst 38h			;9328
	rst 38h			;9329
	rst 38h			;932a
	rst 38h			;932b
	rst 38h			;932c
	rst 38h			;932d
	rst 38h			;932e
	rst 38h			;932f
	rst 38h			;9330
	rst 38h			;9331
	rst 38h			;9332
	rst 38h			;9333
	rst 38h			;9334
	rst 38h			;9335
	rst 38h			;9336
	rst 38h			;9337
	rst 38h			;9338
	rst 38h			;9339
	rst 38h			;933a
	rst 38h			;933b
	rst 38h			;933c
	rst 38h			;933d
	rst 38h			;933e
	rst 38h			;933f
	rst 38h			;9340
	rst 38h			;9341
	rst 38h			;9342
	rst 38h			;9343
	rst 38h			;9344
	rst 38h			;9345
	rst 38h			;9346
	rst 38h			;9347
	rst 38h			;9348
	rst 38h			;9349
	rst 38h			;934a
	rst 38h			;934b
	rst 38h			;934c
	rst 38h			;934d
	rst 38h			;934e
	rst 38h			;934f
	rst 38h			;9350
	rst 38h			;9351
	rst 38h			;9352
	rst 38h			;9353
	rst 38h			;9354
	rst 38h			;9355
	rst 38h			;9356
	rst 38h			;9357
	rst 38h			;9358
	rst 38h			;9359
	rst 38h			;935a
	rst 38h			;935b
	rst 38h			;935c
	rst 38h			;935d
	rst 38h			;935e
	rst 38h			;935f
	rst 38h			;9360
	rst 38h			;9361
	rst 38h			;9362
	rst 38h			;9363
	rst 38h			;9364
	rst 38h			;9365
	rst 38h			;9366
	rst 38h			;9367
	rst 38h			;9368
	rst 38h			;9369
	rst 38h			;936a
	rst 38h			;936b
	rst 38h			;936c
	rst 38h			;936d
	rst 38h			;936e
	rst 38h			;936f
	rst 38h			;9370
	rst 38h			;9371
	rst 38h			;9372
	rst 38h			;9373
	rst 38h			;9374
	rst 38h			;9375
	rst 38h			;9376
	rst 38h			;9377
	rst 38h			;9378
	rst 38h			;9379
	rst 38h			;937a
	rst 38h			;937b
	rst 38h			;937c
	rst 38h			;937d
	rst 38h			;937e
	rst 38h			;937f
	rst 38h			;9380
	rst 38h			;9381
	rst 38h			;9382
	rst 38h			;9383
	rst 38h			;9384
	rst 38h			;9385
	rst 38h			;9386
	rst 38h			;9387
	rst 38h			;9388
	rst 38h			;9389
	rst 38h			;938a
	rst 38h			;938b
	rst 38h			;938c
	rst 38h			;938d
	rst 38h			;938e
	rst 38h			;938f
	rst 38h			;9390
	rst 38h			;9391
	rst 38h			;9392
	rst 38h			;9393
	rst 38h			;9394
	rst 38h			;9395
	rst 38h			;9396
	rst 38h			;9397
	rst 38h			;9398
	rst 38h			;9399
	rst 38h			;939a
	rst 38h			;939b
	rst 38h			;939c
	rst 38h			;939d
	rst 38h			;939e
	rst 38h			;939f
	rst 38h			;93a0
	rst 38h			;93a1
	rst 38h			;93a2
	rst 38h			;93a3
	rst 38h			;93a4
	rst 38h			;93a5
	rst 38h			;93a6
	rst 38h			;93a7
	rst 38h			;93a8
	rst 38h			;93a9
	rst 38h			;93aa
	rst 38h			;93ab
	rst 38h			;93ac
	rst 38h			;93ad
	rst 38h			;93ae
	rst 38h			;93af
	rst 38h			;93b0
	rst 38h			;93b1
	rst 38h			;93b2
	rst 38h			;93b3
	rst 38h			;93b4
	rst 38h			;93b5
	rst 38h			;93b6
	rst 38h			;93b7
	rst 38h			;93b8
	rst 38h			;93b9
	rst 38h			;93ba
	rst 38h			;93bb
	rst 38h			;93bc
	rst 38h			;93bd
	rst 38h			;93be
	rst 38h			;93bf
	rst 38h			;93c0
	rst 38h			;93c1
	rst 38h			;93c2
	rst 38h			;93c3
	rst 38h			;93c4
	rst 38h			;93c5
	rst 38h			;93c6
	rst 38h			;93c7
	rst 38h			;93c8
	rst 38h			;93c9
	rst 38h			;93ca
	rst 38h			;93cb
	rst 38h			;93cc
	rst 38h			;93cd
	rst 38h			;93ce
	rst 38h			;93cf
	rst 38h			;93d0
	rst 38h			;93d1
	rst 38h			;93d2
	rst 38h			;93d3
	rst 38h			;93d4
	rst 38h			;93d5
	rst 38h			;93d6
	rst 38h			;93d7
	rst 38h			;93d8
	rst 38h			;93d9
	rst 38h			;93da
	rst 38h			;93db
	rst 38h			;93dc
	rst 38h			;93dd
	rst 38h			;93de
	rst 38h			;93df
	rst 38h			;93e0
	rst 38h			;93e1
	rst 38h			;93e2
	rst 38h			;93e3
	rst 38h			;93e4
	rst 38h			;93e5
	rst 38h			;93e6
	rst 38h			;93e7
	rst 38h			;93e8
	rst 38h			;93e9
	rst 38h			;93ea
	rst 38h			;93eb
	rst 38h			;93ec
	rst 38h			;93ed
	rst 38h			;93ee
	rst 38h			;93ef
	rst 38h			;93f0
	rst 38h			;93f1
	rst 38h			;93f2
	rst 38h			;93f3
	rst 38h			;93f4
	rst 38h			;93f5
	rst 38h			;93f6
	rst 38h			;93f7
	rst 38h			;93f8
	rst 38h			;93f9
	rst 38h			;93fa
	rst 38h			;93fb
	rst 38h			;93fc
	rst 38h			;93fd
	rst 38h			;93fe
	rst 38h			;93ff
	rst 38h			;9400
	rst 38h			;9401
	rst 38h			;9402
	rst 38h			;9403
	rst 38h			;9404
	rst 38h			;9405
	rst 38h			;9406
	rst 38h			;9407
	rst 38h			;9408
	rst 38h			;9409
	rst 38h			;940a
	rst 38h			;940b
	rst 38h			;940c
	rst 38h			;940d
	rst 38h			;940e
	rst 38h			;940f
	rst 38h			;9410
	rst 38h			;9411
	rst 38h			;9412
	rst 38h			;9413
	rst 38h			;9414
	rst 38h			;9415
	rst 38h			;9416
	rst 38h			;9417
	rst 38h			;9418
	rst 38h			;9419
	rst 38h			;941a
	rst 38h			;941b
	rst 38h			;941c
	rst 38h			;941d
	rst 38h			;941e
	rst 38h			;941f
	rst 38h			;9420
	rst 38h			;9421
	rst 38h			;9422
	rst 38h			;9423
	rst 38h			;9424
	rst 38h			;9425
	rst 38h			;9426
	rst 38h			;9427
	rst 38h			;9428
	rst 38h			;9429
	rst 38h			;942a
	rst 38h			;942b
	rst 38h			;942c
	rst 38h			;942d
	rst 38h			;942e
	rst 38h			;942f
	rst 38h			;9430
	rst 38h			;9431
	rst 38h			;9432
	rst 38h			;9433
	rst 38h			;9434
	rst 38h			;9435
	rst 38h			;9436
	rst 38h			;9437
	rst 38h			;9438
	rst 38h			;9439
	rst 38h			;943a
	rst 38h			;943b
	rst 38h			;943c
	rst 38h			;943d
	rst 38h			;943e
	rst 38h			;943f
	rst 38h			;9440
	rst 38h			;9441
	rst 38h			;9442
	rst 38h			;9443
	rst 38h			;9444
	rst 38h			;9445
	rst 38h			;9446
	rst 38h			;9447
	rst 38h			;9448
	rst 38h			;9449
	rst 38h			;944a
	rst 38h			;944b
	rst 38h			;944c
	rst 38h			;944d
	rst 38h			;944e
	rst 38h			;944f
	rst 38h			;9450
	rst 38h			;9451
	rst 38h			;9452
	rst 38h			;9453
	rst 38h			;9454
	rst 38h			;9455
	rst 38h			;9456
	rst 38h			;9457
	rst 38h			;9458
	rst 38h			;9459
	rst 38h			;945a
	rst 38h			;945b
	rst 38h			;945c
	rst 38h			;945d
	rst 38h			;945e
	rst 38h			;945f
	rst 38h			;9460
	rst 38h			;9461
	rst 38h			;9462
	rst 38h			;9463
	rst 38h			;9464
	rst 38h			;9465
	rst 38h			;9466
	rst 38h			;9467
	rst 38h			;9468
	rst 38h			;9469
	rst 38h			;946a
	rst 38h			;946b
	rst 38h			;946c
	rst 38h			;946d
	rst 38h			;946e
	rst 38h			;946f
	rst 38h			;9470
	rst 38h			;9471
	rst 38h			;9472
	rst 38h			;9473
	rst 38h			;9474
	rst 38h			;9475
	rst 38h			;9476
	rst 38h			;9477
	rst 38h			;9478
	rst 38h			;9479
	rst 38h			;947a
	rst 38h			;947b
	rst 38h			;947c
	rst 38h			;947d
	rst 38h			;947e
	rst 38h			;947f
	rst 38h			;9480
	rst 38h			;9481
	rst 38h			;9482
	rst 38h			;9483
	rst 38h			;9484
	rst 38h			;9485
	rst 38h			;9486
	rst 38h			;9487
	rst 38h			;9488
	rst 38h			;9489
	rst 38h			;948a
	rst 38h			;948b
	rst 38h			;948c
	rst 38h			;948d
	rst 38h			;948e
	rst 38h			;948f
	rst 38h			;9490
	rst 38h			;9491
	rst 38h			;9492
	rst 38h			;9493
	rst 38h			;9494
	rst 38h			;9495
	rst 38h			;9496
	rst 38h			;9497
	rst 38h			;9498
	rst 38h			;9499
	rst 38h			;949a
	rst 38h			;949b
	rst 38h			;949c
	rst 38h			;949d
	rst 38h			;949e
	rst 38h			;949f
	rst 38h			;94a0
	rst 38h			;94a1
	rst 38h			;94a2
	rst 38h			;94a3
	rst 38h			;94a4
	rst 38h			;94a5
	rst 38h			;94a6
	rst 38h			;94a7
	rst 38h			;94a8
	rst 38h			;94a9
	rst 38h			;94aa
	rst 38h			;94ab
	rst 38h			;94ac
	rst 38h			;94ad
	rst 38h			;94ae
	rst 38h			;94af
	rst 38h			;94b0
	rst 38h			;94b1
	rst 38h			;94b2
	rst 38h			;94b3
	rst 38h			;94b4
	rst 38h			;94b5
	rst 38h			;94b6
	rst 38h			;94b7
	rst 38h			;94b8
	rst 38h			;94b9
	rst 38h			;94ba
	rst 38h			;94bb
	rst 38h			;94bc
	rst 38h			;94bd
	rst 38h			;94be
	rst 38h			;94bf
	rst 38h			;94c0
	rst 38h			;94c1
	rst 38h			;94c2
	rst 38h			;94c3
	rst 38h			;94c4
	rst 38h			;94c5
	rst 38h			;94c6
	rst 38h			;94c7
	rst 38h			;94c8
	rst 38h			;94c9
	rst 38h			;94ca
	rst 38h			;94cb
	rst 38h			;94cc
	rst 38h			;94cd
	rst 38h			;94ce
	rst 38h			;94cf
	rst 38h			;94d0
	rst 38h			;94d1
	rst 38h			;94d2
	rst 38h			;94d3
	rst 38h			;94d4
	rst 38h			;94d5
	rst 38h			;94d6
	rst 38h			;94d7
	rst 38h			;94d8
	rst 38h			;94d9
	rst 38h			;94da
	rst 38h			;94db
	rst 38h			;94dc
	rst 38h			;94dd
	rst 38h			;94de
	rst 38h			;94df
	rst 38h			;94e0
	rst 38h			;94e1
	rst 38h			;94e2
	rst 38h			;94e3
	rst 38h			;94e4
	rst 38h			;94e5
	rst 38h			;94e6
	rst 38h			;94e7
	rst 38h			;94e8
	rst 38h			;94e9
	rst 38h			;94ea
	rst 38h			;94eb
	rst 38h			;94ec
	rst 38h			;94ed
	rst 38h			;94ee
	rst 38h			;94ef
	rst 38h			;94f0
	rst 38h			;94f1
	rst 38h			;94f2
	rst 38h			;94f3
	rst 38h			;94f4
	rst 38h			;94f5
	rst 38h			;94f6
	rst 38h			;94f7
	rst 38h			;94f8
	rst 38h			;94f9
	rst 38h			;94fa
	rst 38h			;94fb
	rst 38h			;94fc
	rst 38h			;94fd
	rst 38h			;94fe
	rst 38h			;94ff
	rst 38h			;9500
	rst 38h			;9501
	rst 38h			;9502
	rst 38h			;9503
	rst 38h			;9504
	rst 38h			;9505
	rst 38h			;9506
	rst 38h			;9507
	rst 38h			;9508
	rst 38h			;9509
	rst 38h			;950a
	rst 38h			;950b
	rst 38h			;950c
	rst 38h			;950d
	rst 38h			;950e
	rst 38h			;950f
	rst 38h			;9510
	rst 38h			;9511
	rst 38h			;9512
	rst 38h			;9513
	rst 38h			;9514
	rst 38h			;9515
	rst 38h			;9516
	rst 38h			;9517
	rst 38h			;9518
	rst 38h			;9519
	rst 38h			;951a
	rst 38h			;951b
	rst 38h			;951c
	rst 38h			;951d
	rst 38h			;951e
	rst 38h			;951f
	rst 38h			;9520
	rst 38h			;9521
	rst 38h			;9522
	rst 38h			;9523
	rst 38h			;9524
	rst 38h			;9525
	rst 38h			;9526
	rst 38h			;9527
	rst 38h			;9528
	rst 38h			;9529
	rst 38h			;952a
	rst 38h			;952b
	rst 38h			;952c
	rst 38h			;952d
	rst 38h			;952e
	rst 38h			;952f
	rst 38h			;9530
	rst 38h			;9531
	rst 38h			;9532
	rst 38h			;9533
	rst 38h			;9534
	rst 38h			;9535
	rst 38h			;9536
	rst 38h			;9537
	rst 38h			;9538
	rst 38h			;9539
	rst 38h			;953a
	rst 38h			;953b
	rst 38h			;953c
	rst 38h			;953d
	rst 38h			;953e
	rst 38h			;953f
	rst 38h			;9540
	rst 38h			;9541
	rst 38h			;9542
	rst 38h			;9543
	rst 38h			;9544
	rst 38h			;9545
	rst 38h			;9546
	rst 38h			;9547
	rst 38h			;9548
	rst 38h			;9549
	rst 38h			;954a
	rst 38h			;954b
	rst 38h			;954c
	rst 38h			;954d
	rst 38h			;954e
	rst 38h			;954f
	rst 38h			;9550
	rst 38h			;9551
	rst 38h			;9552
	rst 38h			;9553
	rst 38h			;9554
	rst 38h			;9555
	rst 38h			;9556
	rst 38h			;9557
	rst 38h			;9558
	rst 38h			;9559
	rst 38h			;955a
	rst 38h			;955b
	rst 38h			;955c
	rst 38h			;955d
	rst 38h			;955e
	rst 38h			;955f
	rst 38h			;9560
	rst 38h			;9561
	rst 38h			;9562
	rst 38h			;9563
	rst 38h			;9564
	rst 38h			;9565
	rst 38h			;9566
	rst 38h			;9567
	rst 38h			;9568
	rst 38h			;9569
	rst 38h			;956a
	rst 38h			;956b
	rst 38h			;956c
	rst 38h			;956d
	rst 38h			;956e
	rst 38h			;956f
	rst 38h			;9570
	rst 38h			;9571
	rst 38h			;9572
	rst 38h			;9573
	rst 38h			;9574
	rst 38h			;9575
	rst 38h			;9576
	rst 38h			;9577
	rst 38h			;9578
	rst 38h			;9579
	rst 38h			;957a
	rst 38h			;957b
	rst 38h			;957c
	rst 38h			;957d
	rst 38h			;957e
	rst 38h			;957f
	rst 38h			;9580
	rst 38h			;9581
	rst 38h			;9582
	rst 38h			;9583
	rst 38h			;9584
	rst 38h			;9585
	rst 38h			;9586
	rst 38h			;9587
	rst 38h			;9588
	rst 38h			;9589
	rst 38h			;958a
	rst 38h			;958b
	rst 38h			;958c
	rst 38h			;958d
	rst 38h			;958e
	rst 38h			;958f
	rst 38h			;9590
	rst 38h			;9591
	rst 38h			;9592
	rst 38h			;9593
	rst 38h			;9594
	rst 38h			;9595
	rst 38h			;9596
	rst 38h			;9597
	rst 38h			;9598
	rst 38h			;9599
	rst 38h			;959a
	rst 38h			;959b
	rst 38h			;959c
	rst 38h			;959d
	rst 38h			;959e
	rst 38h			;959f
	rst 38h			;95a0
	rst 38h			;95a1
	rst 38h			;95a2
	rst 38h			;95a3
	rst 38h			;95a4
	rst 38h			;95a5
	rst 38h			;95a6
	rst 38h			;95a7
	rst 38h			;95a8
	rst 38h			;95a9
	rst 38h			;95aa
	rst 38h			;95ab
	rst 38h			;95ac
	rst 38h			;95ad
	rst 38h			;95ae
	rst 38h			;95af
	rst 38h			;95b0
	rst 38h			;95b1
	rst 38h			;95b2
	rst 38h			;95b3
	rst 38h			;95b4
	rst 38h			;95b5
	rst 38h			;95b6
	rst 38h			;95b7
	rst 38h			;95b8
	rst 38h			;95b9
	rst 38h			;95ba
	rst 38h			;95bb
	rst 38h			;95bc
	rst 38h			;95bd
	rst 38h			;95be
	rst 38h			;95bf
	rst 38h			;95c0
	rst 38h			;95c1
	rst 38h			;95c2
	rst 38h			;95c3
	rst 38h			;95c4
	rst 38h			;95c5
	rst 38h			;95c6
	rst 38h			;95c7
	rst 38h			;95c8
	rst 38h			;95c9
	rst 38h			;95ca
	rst 38h			;95cb
	rst 38h			;95cc
	rst 38h			;95cd
	rst 38h			;95ce
	rst 38h			;95cf
	rst 38h			;95d0
	rst 38h			;95d1
	rst 38h			;95d2
	rst 38h			;95d3
	rst 38h			;95d4
	rst 38h			;95d5
	rst 38h			;95d6
	rst 38h			;95d7
	rst 38h			;95d8
	rst 38h			;95d9
	rst 38h			;95da
	rst 38h			;95db
	rst 38h			;95dc
	rst 38h			;95dd
	rst 38h			;95de
	rst 38h			;95df
	rst 38h			;95e0
	rst 38h			;95e1
	rst 38h			;95e2
	rst 38h			;95e3
	rst 38h			;95e4
	rst 38h			;95e5
	rst 38h			;95e6
	rst 38h			;95e7
	rst 38h			;95e8
	rst 38h			;95e9
	rst 38h			;95ea
	rst 38h			;95eb
	rst 38h			;95ec
	rst 38h			;95ed
	rst 38h			;95ee
	rst 38h			;95ef
	rst 38h			;95f0
	rst 38h			;95f1
	rst 38h			;95f2
	rst 38h			;95f3
	rst 38h			;95f4
	rst 38h			;95f5
	rst 38h			;95f6
	rst 38h			;95f7
	rst 38h			;95f8
	rst 38h			;95f9
	rst 38h			;95fa
	rst 38h			;95fb
	rst 38h			;95fc
	rst 38h			;95fd
	rst 38h			;95fe
	rst 38h			;95ff
	rst 38h			;9600
	rst 38h			;9601
	rst 38h			;9602
	rst 38h			;9603
	rst 38h			;9604
	rst 38h			;9605
	rst 38h			;9606
	rst 38h			;9607
	rst 38h			;9608
	rst 38h			;9609
	rst 38h			;960a
	rst 38h			;960b
	rst 38h			;960c
	rst 38h			;960d
	rst 38h			;960e
	rst 38h			;960f
	rst 38h			;9610
	rst 38h			;9611
	rst 38h			;9612
	rst 38h			;9613
	rst 38h			;9614
	rst 38h			;9615
	rst 38h			;9616
	rst 38h			;9617
	rst 38h			;9618
	rst 38h			;9619
	rst 38h			;961a
	rst 38h			;961b
	rst 38h			;961c
	rst 38h			;961d
	rst 38h			;961e
	rst 38h			;961f
	rst 38h			;9620
	rst 38h			;9621
	rst 38h			;9622
	rst 38h			;9623
	rst 38h			;9624
	rst 38h			;9625
	rst 38h			;9626
	rst 38h			;9627
	rst 38h			;9628
	rst 38h			;9629
	rst 38h			;962a
	rst 38h			;962b
	rst 38h			;962c
	rst 38h			;962d
	rst 38h			;962e
	rst 38h			;962f
	rst 38h			;9630
	rst 38h			;9631
	rst 38h			;9632
	rst 38h			;9633
	rst 38h			;9634
	rst 38h			;9635
	rst 38h			;9636
	rst 38h			;9637
	rst 38h			;9638
	rst 38h			;9639
	rst 38h			;963a
	rst 38h			;963b
	rst 38h			;963c
	rst 38h			;963d
	rst 38h			;963e
	rst 38h			;963f
	rst 38h			;9640
	rst 38h			;9641
	rst 38h			;9642
	rst 38h			;9643
	rst 38h			;9644
	rst 38h			;9645
	rst 38h			;9646
	rst 38h			;9647
	rst 38h			;9648
	rst 38h			;9649
	rst 38h			;964a
	rst 38h			;964b
	rst 38h			;964c
	rst 38h			;964d
	rst 38h			;964e
	rst 38h			;964f
	rst 38h			;9650
	rst 38h			;9651
	rst 38h			;9652
	rst 38h			;9653
	rst 38h			;9654
	rst 38h			;9655
	rst 38h			;9656
	rst 38h			;9657
	rst 38h			;9658
	rst 38h			;9659
	rst 38h			;965a
	rst 38h			;965b
	rst 38h			;965c
	rst 38h			;965d
	rst 38h			;965e
	rst 38h			;965f
	rst 38h			;9660
	rst 38h			;9661
	rst 38h			;9662
	rst 38h			;9663
	rst 38h			;9664
	rst 38h			;9665
	rst 38h			;9666
	rst 38h			;9667
	rst 38h			;9668
	rst 38h			;9669
	rst 38h			;966a
	rst 38h			;966b
	rst 38h			;966c
	rst 38h			;966d
	rst 38h			;966e
	rst 38h			;966f
	rst 38h			;9670
	rst 38h			;9671
	rst 38h			;9672
	rst 38h			;9673
	rst 38h			;9674
	rst 38h			;9675
	rst 38h			;9676
	rst 38h			;9677
	rst 38h			;9678
	rst 38h			;9679
	rst 38h			;967a
	rst 38h			;967b
	rst 38h			;967c
	rst 38h			;967d
	rst 38h			;967e
	rst 38h			;967f
	rst 38h			;9680
	rst 38h			;9681
	rst 38h			;9682
	rst 38h			;9683
	rst 38h			;9684
	rst 38h			;9685
	rst 38h			;9686
	rst 38h			;9687
	rst 38h			;9688
	rst 38h			;9689
	rst 38h			;968a
	rst 38h			;968b
	rst 38h			;968c
	rst 38h			;968d
	rst 38h			;968e
	rst 38h			;968f
	rst 38h			;9690
	rst 38h			;9691
	rst 38h			;9692
	rst 38h			;9693
	rst 38h			;9694
	rst 38h			;9695
	rst 38h			;9696
	rst 38h			;9697
	rst 38h			;9698
	rst 38h			;9699
	rst 38h			;969a
	rst 38h			;969b
	rst 38h			;969c
	rst 38h			;969d
	rst 38h			;969e
	rst 38h			;969f
	rst 38h			;96a0
	rst 38h			;96a1
	rst 38h			;96a2
	rst 38h			;96a3
	rst 38h			;96a4
	rst 38h			;96a5
	rst 38h			;96a6
	rst 38h			;96a7
	rst 38h			;96a8
	rst 38h			;96a9
	rst 38h			;96aa
	rst 38h			;96ab
	rst 38h			;96ac
	rst 38h			;96ad
	rst 38h			;96ae
	rst 38h			;96af
	rst 38h			;96b0
	rst 38h			;96b1
	rst 38h			;96b2
	rst 38h			;96b3
	rst 38h			;96b4
	rst 38h			;96b5
	rst 38h			;96b6
	rst 38h			;96b7
	rst 38h			;96b8
	rst 38h			;96b9
	rst 38h			;96ba
	rst 38h			;96bb
	rst 38h			;96bc
	rst 38h			;96bd
	rst 38h			;96be
	rst 38h			;96bf
	rst 38h			;96c0
	rst 38h			;96c1
	rst 38h			;96c2
	rst 38h			;96c3
	rst 38h			;96c4
	rst 38h			;96c5
	rst 38h			;96c6
	rst 38h			;96c7
	rst 38h			;96c8
	rst 38h			;96c9
	rst 38h			;96ca
	rst 38h			;96cb
	rst 38h			;96cc
	rst 38h			;96cd
	rst 38h			;96ce
	rst 38h			;96cf
	rst 38h			;96d0
	rst 38h			;96d1
	rst 38h			;96d2
	rst 38h			;96d3
	rst 38h			;96d4
	rst 38h			;96d5
	rst 38h			;96d6
	rst 38h			;96d7
	rst 38h			;96d8
	rst 38h			;96d9
	rst 38h			;96da
	rst 38h			;96db
	rst 38h			;96dc
	rst 38h			;96dd
	rst 38h			;96de
	rst 38h			;96df
	rst 38h			;96e0
	rst 38h			;96e1
	rst 38h			;96e2
	rst 38h			;96e3
	rst 38h			;96e4
	rst 38h			;96e5
	rst 38h			;96e6
	rst 38h			;96e7
	rst 38h			;96e8
	rst 38h			;96e9
	rst 38h			;96ea
	rst 38h			;96eb
	rst 38h			;96ec
	rst 38h			;96ed
	rst 38h			;96ee
	rst 38h			;96ef
	rst 38h			;96f0
	rst 38h			;96f1
	rst 38h			;96f2
	rst 38h			;96f3
	rst 38h			;96f4
	rst 38h			;96f5
	rst 38h			;96f6
	rst 38h			;96f7
	rst 38h			;96f8
	rst 38h			;96f9
	rst 38h			;96fa
	rst 38h			;96fb
	rst 38h			;96fc
	rst 38h			;96fd
	rst 38h			;96fe
	rst 38h			;96ff
	rst 38h			;9700
	rst 38h			;9701
	rst 38h			;9702
	rst 38h			;9703
	rst 38h			;9704
	rst 38h			;9705
	rst 38h			;9706
	rst 38h			;9707
	rst 38h			;9708
	rst 38h			;9709
	rst 38h			;970a
	rst 38h			;970b
	rst 38h			;970c
	rst 38h			;970d
	rst 38h			;970e
	rst 38h			;970f
	rst 38h			;9710
	rst 38h			;9711
	rst 38h			;9712
	rst 38h			;9713
	rst 38h			;9714
	rst 38h			;9715
	rst 38h			;9716
	rst 38h			;9717
	rst 38h			;9718
	rst 38h			;9719
	rst 38h			;971a
	rst 38h			;971b
	rst 38h			;971c
	rst 38h			;971d
	rst 38h			;971e
	rst 38h			;971f
	rst 38h			;9720
	rst 38h			;9721
	rst 38h			;9722
	rst 38h			;9723
	rst 38h			;9724
	rst 38h			;9725
	rst 38h			;9726
	rst 38h			;9727
	rst 38h			;9728
	rst 38h			;9729
	rst 38h			;972a
	rst 38h			;972b
	rst 38h			;972c
	rst 38h			;972d
	rst 38h			;972e
	rst 38h			;972f
	rst 38h			;9730
	rst 38h			;9731
	rst 38h			;9732
	rst 38h			;9733
	rst 38h			;9734
	rst 38h			;9735
	rst 38h			;9736
	rst 38h			;9737
	rst 38h			;9738
	rst 38h			;9739
	rst 38h			;973a
	rst 38h			;973b
	rst 38h			;973c
	rst 38h			;973d
	rst 38h			;973e
	rst 38h			;973f
	rst 38h			;9740
	rst 38h			;9741
	rst 38h			;9742
	rst 38h			;9743
	rst 38h			;9744
	rst 38h			;9745
	rst 38h			;9746
	rst 38h			;9747
	rst 38h			;9748
	rst 38h			;9749
	rst 38h			;974a
	rst 38h			;974b
	rst 38h			;974c
	rst 38h			;974d
	rst 38h			;974e
	rst 38h			;974f
	rst 38h			;9750
	rst 38h			;9751
	rst 38h			;9752
	rst 38h			;9753
	rst 38h			;9754
	rst 38h			;9755
	rst 38h			;9756
	rst 38h			;9757
	rst 38h			;9758
	rst 38h			;9759
	rst 38h			;975a
	rst 38h			;975b
	rst 38h			;975c
	rst 38h			;975d
	rst 38h			;975e
	rst 38h			;975f
	rst 38h			;9760
	rst 38h			;9761
	rst 38h			;9762
	rst 38h			;9763
	rst 38h			;9764
	rst 38h			;9765
	rst 38h			;9766
	rst 38h			;9767
	rst 38h			;9768
	rst 38h			;9769
	rst 38h			;976a
	rst 38h			;976b
	rst 38h			;976c
	rst 38h			;976d
	rst 38h			;976e
	rst 38h			;976f
	rst 38h			;9770
	rst 38h			;9771
	rst 38h			;9772
	rst 38h			;9773
	rst 38h			;9774
	rst 38h			;9775
	rst 38h			;9776
	rst 38h			;9777
	rst 38h			;9778
	rst 38h			;9779
	rst 38h			;977a
	rst 38h			;977b
	rst 38h			;977c
	rst 38h			;977d
	rst 38h			;977e
	rst 38h			;977f
	rst 38h			;9780
	rst 38h			;9781
	rst 38h			;9782
	rst 38h			;9783
	rst 38h			;9784
	rst 38h			;9785
	rst 38h			;9786
	rst 38h			;9787
	rst 38h			;9788
	rst 38h			;9789
	rst 38h			;978a
	rst 38h			;978b
	rst 38h			;978c
	rst 38h			;978d
	rst 38h			;978e
	rst 38h			;978f
	rst 38h			;9790
	rst 38h			;9791
	rst 38h			;9792
	rst 38h			;9793
	rst 38h			;9794
	rst 38h			;9795
	rst 38h			;9796
	rst 38h			;9797
	rst 38h			;9798
	rst 38h			;9799
	rst 38h			;979a
	rst 38h			;979b
	rst 38h			;979c
	rst 38h			;979d
	rst 38h			;979e
	rst 38h			;979f
	rst 38h			;97a0
	rst 38h			;97a1
	rst 38h			;97a2
	rst 38h			;97a3
	rst 38h			;97a4
	rst 38h			;97a5
	rst 38h			;97a6
	rst 38h			;97a7
	rst 38h			;97a8
	rst 38h			;97a9
	rst 38h			;97aa
	rst 38h			;97ab
	rst 38h			;97ac
	rst 38h			;97ad
	rst 38h			;97ae
	rst 38h			;97af
	rst 38h			;97b0
	rst 38h			;97b1
	rst 38h			;97b2
	rst 38h			;97b3
	rst 38h			;97b4
	rst 38h			;97b5
	rst 38h			;97b6
	rst 38h			;97b7
	rst 38h			;97b8
	rst 38h			;97b9
	rst 38h			;97ba
	rst 38h			;97bb
	rst 38h			;97bc
	rst 38h			;97bd
	rst 38h			;97be
	rst 38h			;97bf
	rst 38h			;97c0
	rst 38h			;97c1
	rst 38h			;97c2
	rst 38h			;97c3
	rst 38h			;97c4
	rst 38h			;97c5
	rst 38h			;97c6
	rst 38h			;97c7
	rst 38h			;97c8
	rst 38h			;97c9
	rst 38h			;97ca
	rst 38h			;97cb
	rst 38h			;97cc
	rst 38h			;97cd
	rst 38h			;97ce
	rst 38h			;97cf
	rst 38h			;97d0
	rst 38h			;97d1
	rst 38h			;97d2
	rst 38h			;97d3
	rst 38h			;97d4
	rst 38h			;97d5
	rst 38h			;97d6
	rst 38h			;97d7
	rst 38h			;97d8
	rst 38h			;97d9
	rst 38h			;97da
	rst 38h			;97db
	rst 38h			;97dc
	rst 38h			;97dd
	rst 38h			;97de
	rst 38h			;97df
	rst 38h			;97e0
	rst 38h			;97e1
	rst 38h			;97e2
	rst 38h			;97e3
	rst 38h			;97e4
	rst 38h			;97e5
	rst 38h			;97e6
	rst 38h			;97e7
	rst 38h			;97e8
	rst 38h			;97e9
	rst 38h			;97ea
	rst 38h			;97eb
	rst 38h			;97ec
	rst 38h			;97ed
	rst 38h			;97ee
	rst 38h			;97ef
	rst 38h			;97f0
	rst 38h			;97f1
	rst 38h			;97f2
	rst 38h			;97f3
	rst 38h			;97f4
	rst 38h			;97f5
	rst 38h			;97f6
	rst 38h			;97f7
	rst 38h			;97f8
	rst 38h			;97f9
	rst 38h			;97fa
	rst 38h			;97fb
	rst 38h			;97fc
	rst 38h			;97fd
	rst 38h			;97fe
	rst 38h			;97ff
	rst 38h			;9800
	rst 38h			;9801
	rst 38h			;9802
	rst 38h			;9803
	rst 38h			;9804
	rst 38h			;9805
	rst 38h			;9806
	rst 38h			;9807
	rst 38h			;9808
	rst 38h			;9809
	rst 38h			;980a
	rst 38h			;980b
	rst 38h			;980c
	rst 38h			;980d
	rst 38h			;980e
	rst 38h			;980f
	rst 38h			;9810
	rst 38h			;9811
	rst 38h			;9812
	rst 38h			;9813
	rst 38h			;9814
	rst 38h			;9815
	rst 38h			;9816
	rst 38h			;9817
	rst 38h			;9818
	rst 38h			;9819
	rst 38h			;981a
	rst 38h			;981b
	rst 38h			;981c
	rst 38h			;981d
	rst 38h			;981e
	rst 38h			;981f
	rst 38h			;9820
	rst 38h			;9821
	rst 38h			;9822
	rst 38h			;9823
	rst 38h			;9824
	rst 38h			;9825
	rst 38h			;9826
	rst 38h			;9827
	rst 38h			;9828
	rst 38h			;9829
	rst 38h			;982a
	rst 38h			;982b
	rst 38h			;982c
	rst 38h			;982d
	rst 38h			;982e
	rst 38h			;982f
	rst 38h			;9830
	rst 38h			;9831
	rst 38h			;9832
	rst 38h			;9833
	rst 38h			;9834
	rst 38h			;9835
	rst 38h			;9836
	rst 38h			;9837
	rst 38h			;9838
	rst 38h			;9839
	rst 38h			;983a
	rst 38h			;983b
	rst 38h			;983c
	rst 38h			;983d
	rst 38h			;983e
	rst 38h			;983f
	rst 38h			;9840
	rst 38h			;9841
	rst 38h			;9842
	rst 38h			;9843
	rst 38h			;9844
	rst 38h			;9845
	rst 38h			;9846
	rst 38h			;9847
	rst 38h			;9848
	rst 38h			;9849
	rst 38h			;984a
	rst 38h			;984b
	rst 38h			;984c
	rst 38h			;984d
	rst 38h			;984e
	rst 38h			;984f
	rst 38h			;9850
	rst 38h			;9851
	rst 38h			;9852
	rst 38h			;9853
	rst 38h			;9854
	rst 38h			;9855
	rst 38h			;9856
	rst 38h			;9857
	rst 38h			;9858
	rst 38h			;9859
	rst 38h			;985a
	rst 38h			;985b
	rst 38h			;985c
	rst 38h			;985d
	rst 38h			;985e
	rst 38h			;985f
	rst 38h			;9860
	rst 38h			;9861
	rst 38h			;9862
	rst 38h			;9863
	rst 38h			;9864
	rst 38h			;9865
	rst 38h			;9866
	rst 38h			;9867
	rst 38h			;9868
	rst 38h			;9869
	rst 38h			;986a
	rst 38h			;986b
	rst 38h			;986c
	rst 38h			;986d
	rst 38h			;986e
	rst 38h			;986f
	rst 38h			;9870
	rst 38h			;9871
	rst 38h			;9872
	rst 38h			;9873
	rst 38h			;9874
	rst 38h			;9875
	rst 38h			;9876
	rst 38h			;9877
	rst 38h			;9878
	rst 38h			;9879
	rst 38h			;987a
	rst 38h			;987b
	rst 38h			;987c
	rst 38h			;987d
	rst 38h			;987e
	rst 38h			;987f
	rst 38h			;9880
	rst 38h			;9881
	rst 38h			;9882
	rst 38h			;9883
	rst 38h			;9884
	rst 38h			;9885
	rst 38h			;9886
	rst 38h			;9887
	rst 38h			;9888
	rst 38h			;9889
	rst 38h			;988a
	rst 38h			;988b
	rst 38h			;988c
	rst 38h			;988d
	rst 38h			;988e
	rst 38h			;988f
	rst 38h			;9890
	rst 38h			;9891
	rst 38h			;9892
	rst 38h			;9893
	rst 38h			;9894
	rst 38h			;9895
	rst 38h			;9896
	rst 38h			;9897
	rst 38h			;9898
	rst 38h			;9899
	rst 38h			;989a
	rst 38h			;989b
	rst 38h			;989c
	rst 38h			;989d
	rst 38h			;989e
	rst 38h			;989f
	rst 38h			;98a0
	rst 38h			;98a1
	rst 38h			;98a2
	rst 38h			;98a3
	rst 38h			;98a4
	rst 38h			;98a5
	rst 38h			;98a6
	rst 38h			;98a7
	rst 38h			;98a8
	rst 38h			;98a9
	rst 38h			;98aa
	rst 38h			;98ab
	rst 38h			;98ac
	rst 38h			;98ad
	rst 38h			;98ae
	rst 38h			;98af
	rst 38h			;98b0
	rst 38h			;98b1
	rst 38h			;98b2
	rst 38h			;98b3
	rst 38h			;98b4
	rst 38h			;98b5
	rst 38h			;98b6
	rst 38h			;98b7
	rst 38h			;98b8
	rst 38h			;98b9
	rst 38h			;98ba
	rst 38h			;98bb
	rst 38h			;98bc
	rst 38h			;98bd
	rst 38h			;98be
	rst 38h			;98bf
	rst 38h			;98c0
	rst 38h			;98c1
	rst 38h			;98c2
	rst 38h			;98c3
	rst 38h			;98c4
	rst 38h			;98c5
	rst 38h			;98c6
	rst 38h			;98c7
	rst 38h			;98c8
	rst 38h			;98c9
	rst 38h			;98ca
	rst 38h			;98cb
	rst 38h			;98cc
	rst 38h			;98cd
	rst 38h			;98ce
	rst 38h			;98cf
	rst 38h			;98d0
	rst 38h			;98d1
	rst 38h			;98d2
	rst 38h			;98d3
	rst 38h			;98d4
	rst 38h			;98d5
	rst 38h			;98d6
	rst 38h			;98d7
	rst 38h			;98d8
	rst 38h			;98d9
	rst 38h			;98da
	rst 38h			;98db
	rst 38h			;98dc
	rst 38h			;98dd
	rst 38h			;98de
	rst 38h			;98df
	rst 38h			;98e0
	rst 38h			;98e1
	rst 38h			;98e2
	rst 38h			;98e3
	rst 38h			;98e4
	rst 38h			;98e5
	rst 38h			;98e6
	rst 38h			;98e7
	rst 38h			;98e8
	rst 38h			;98e9
	rst 38h			;98ea
	rst 38h			;98eb
	rst 38h			;98ec
	rst 38h			;98ed
	rst 38h			;98ee
	rst 38h			;98ef
	rst 38h			;98f0
	rst 38h			;98f1
	rst 38h			;98f2
	rst 38h			;98f3
	rst 38h			;98f4
	rst 38h			;98f5
	rst 38h			;98f6
	rst 38h			;98f7
	rst 38h			;98f8
	rst 38h			;98f9
	rst 38h			;98fa
	rst 38h			;98fb
	rst 38h			;98fc
	rst 38h			;98fd
	rst 38h			;98fe
	rst 38h			;98ff
	rst 38h			;9900
	rst 38h			;9901
	rst 38h			;9902
	rst 38h			;9903
	rst 38h			;9904
	rst 38h			;9905
	rst 38h			;9906
	rst 38h			;9907
	rst 38h			;9908
	rst 38h			;9909
	rst 38h			;990a
	rst 38h			;990b
	rst 38h			;990c
	rst 38h			;990d
	rst 38h			;990e
	rst 38h			;990f
	rst 38h			;9910
	rst 38h			;9911
	rst 38h			;9912
	rst 38h			;9913
	rst 38h			;9914
	rst 38h			;9915
	rst 38h			;9916
	rst 38h			;9917
	rst 38h			;9918
	rst 38h			;9919
	rst 38h			;991a
	rst 38h			;991b
	rst 38h			;991c
	rst 38h			;991d
	rst 38h			;991e
	rst 38h			;991f
	rst 38h			;9920
	rst 38h			;9921
	rst 38h			;9922
	rst 38h			;9923
	rst 38h			;9924
	rst 38h			;9925
	rst 38h			;9926
	rst 38h			;9927
	rst 38h			;9928
	rst 38h			;9929
	rst 38h			;992a
	rst 38h			;992b
	rst 38h			;992c
	rst 38h			;992d
	rst 38h			;992e
	rst 38h			;992f
	rst 38h			;9930
	rst 38h			;9931
	rst 38h			;9932
	rst 38h			;9933
	rst 38h			;9934
	rst 38h			;9935
	rst 38h			;9936
	rst 38h			;9937
	rst 38h			;9938
	rst 38h			;9939
	rst 38h			;993a
	rst 38h			;993b
	rst 38h			;993c
	rst 38h			;993d
	rst 38h			;993e
	rst 38h			;993f
	rst 38h			;9940
	rst 38h			;9941
	rst 38h			;9942
	rst 38h			;9943
	rst 38h			;9944
	rst 38h			;9945
	rst 38h			;9946
	rst 38h			;9947
	rst 38h			;9948
	rst 38h			;9949
	rst 38h			;994a
	rst 38h			;994b
	rst 38h			;994c
	rst 38h			;994d
	rst 38h			;994e
	rst 38h			;994f
	rst 38h			;9950
	rst 38h			;9951
	rst 38h			;9952
	rst 38h			;9953
	rst 38h			;9954
	rst 38h			;9955
	rst 38h			;9956
	rst 38h			;9957
	rst 38h			;9958
	rst 38h			;9959
	rst 38h			;995a
	rst 38h			;995b
	rst 38h			;995c
	rst 38h			;995d
	rst 38h			;995e
	rst 38h			;995f
	rst 38h			;9960
	rst 38h			;9961
	rst 38h			;9962
	rst 38h			;9963
	rst 38h			;9964
	rst 38h			;9965
	rst 38h			;9966
	rst 38h			;9967
	rst 38h			;9968
	rst 38h			;9969
	rst 38h			;996a
	rst 38h			;996b
	rst 38h			;996c
	rst 38h			;996d
	rst 38h			;996e
	rst 38h			;996f
	rst 38h			;9970
	rst 38h			;9971
	rst 38h			;9972
	rst 38h			;9973
	rst 38h			;9974
	rst 38h			;9975
	rst 38h			;9976
	rst 38h			;9977
	rst 38h			;9978
	rst 38h			;9979
	rst 38h			;997a
	rst 38h			;997b
	rst 38h			;997c
	rst 38h			;997d
	rst 38h			;997e
	rst 38h			;997f
	rst 38h			;9980
	rst 38h			;9981
	rst 38h			;9982
	rst 38h			;9983
	rst 38h			;9984
	rst 38h			;9985
	rst 38h			;9986
	rst 38h			;9987
	rst 38h			;9988
	rst 38h			;9989
	rst 38h			;998a
	rst 38h			;998b
	rst 38h			;998c
	rst 38h			;998d
	rst 38h			;998e
	rst 38h			;998f
	rst 38h			;9990
	rst 38h			;9991
	rst 38h			;9992
	rst 38h			;9993
	rst 38h			;9994
	rst 38h			;9995
	rst 38h			;9996
	rst 38h			;9997
	rst 38h			;9998
	rst 38h			;9999
	rst 38h			;999a
	rst 38h			;999b
	rst 38h			;999c
	rst 38h			;999d
	rst 38h			;999e
	rst 38h			;999f
	rst 38h			;99a0
	rst 38h			;99a1
	rst 38h			;99a2
	rst 38h			;99a3
	rst 38h			;99a4
	rst 38h			;99a5
	rst 38h			;99a6
	rst 38h			;99a7
	rst 38h			;99a8
	rst 38h			;99a9
	rst 38h			;99aa
	rst 38h			;99ab
	rst 38h			;99ac
	rst 38h			;99ad
	rst 38h			;99ae
	rst 38h			;99af
	rst 38h			;99b0
	rst 38h			;99b1
	rst 38h			;99b2
	rst 38h			;99b3
	rst 38h			;99b4
	rst 38h			;99b5
	rst 38h			;99b6
	rst 38h			;99b7
	rst 38h			;99b8
	rst 38h			;99b9
	rst 38h			;99ba
	rst 38h			;99bb
	rst 38h			;99bc
	rst 38h			;99bd
	rst 38h			;99be
	rst 38h			;99bf
	rst 38h			;99c0
	rst 38h			;99c1
	rst 38h			;99c2
	rst 38h			;99c3
	rst 38h			;99c4
	rst 38h			;99c5
	rst 38h			;99c6
	rst 38h			;99c7
	rst 38h			;99c8
	rst 38h			;99c9
	rst 38h			;99ca
	rst 38h			;99cb
	rst 38h			;99cc
	rst 38h			;99cd
	rst 38h			;99ce
	rst 38h			;99cf
	rst 38h			;99d0
	rst 38h			;99d1
	rst 38h			;99d2
	rst 38h			;99d3
	rst 38h			;99d4
	rst 38h			;99d5
	rst 38h			;99d6
	rst 38h			;99d7
	rst 38h			;99d8
	rst 38h			;99d9
	rst 38h			;99da
	rst 38h			;99db
	rst 38h			;99dc
	rst 38h			;99dd
	rst 38h			;99de
	rst 38h			;99df
	rst 38h			;99e0
	rst 38h			;99e1
	rst 38h			;99e2
	rst 38h			;99e3
	rst 38h			;99e4
	rst 38h			;99e5
	rst 38h			;99e6
	rst 38h			;99e7
	rst 38h			;99e8
	rst 38h			;99e9
	rst 38h			;99ea
	rst 38h			;99eb
	rst 38h			;99ec
	rst 38h			;99ed
	rst 38h			;99ee
	rst 38h			;99ef
	rst 38h			;99f0
	rst 38h			;99f1
	rst 38h			;99f2
	rst 38h			;99f3
	rst 38h			;99f4
	rst 38h			;99f5
	rst 38h			;99f6
	rst 38h			;99f7
	rst 38h			;99f8
	rst 38h			;99f9
	rst 38h			;99fa
	rst 38h			;99fb
	rst 38h			;99fc
	rst 38h			;99fd
	rst 38h			;99fe
	rst 38h			;99ff
	rst 38h			;9a00
	rst 38h			;9a01
	rst 38h			;9a02
	rst 38h			;9a03
	rst 38h			;9a04
	rst 38h			;9a05
	rst 38h			;9a06
	rst 38h			;9a07
	rst 38h			;9a08
	rst 38h			;9a09
	rst 38h			;9a0a
	rst 38h			;9a0b
	rst 38h			;9a0c
	rst 38h			;9a0d
	rst 38h			;9a0e
	rst 38h			;9a0f
	rst 38h			;9a10
	rst 38h			;9a11
	rst 38h			;9a12
	rst 38h			;9a13
	rst 38h			;9a14
	rst 38h			;9a15
	rst 38h			;9a16
	rst 38h			;9a17
	rst 38h			;9a18
	rst 38h			;9a19
	rst 38h			;9a1a
	rst 38h			;9a1b
	rst 38h			;9a1c
	rst 38h			;9a1d
	rst 38h			;9a1e
	rst 38h			;9a1f
	rst 38h			;9a20
	rst 38h			;9a21
	rst 38h			;9a22
	rst 38h			;9a23
	rst 38h			;9a24
	rst 38h			;9a25
	rst 38h			;9a26
	rst 38h			;9a27
	rst 38h			;9a28
	rst 38h			;9a29
	rst 38h			;9a2a
	rst 38h			;9a2b
	rst 38h			;9a2c
	rst 38h			;9a2d
	rst 38h			;9a2e
	rst 38h			;9a2f
	rst 38h			;9a30
	rst 38h			;9a31
	rst 38h			;9a32
	rst 38h			;9a33
	rst 38h			;9a34
	rst 38h			;9a35
	rst 38h			;9a36
	rst 38h			;9a37
	rst 38h			;9a38
	rst 38h			;9a39
	rst 38h			;9a3a
	rst 38h			;9a3b
	rst 38h			;9a3c
	rst 38h			;9a3d
	rst 38h			;9a3e
	rst 38h			;9a3f
	rst 38h			;9a40
	rst 38h			;9a41
	rst 38h			;9a42
	rst 38h			;9a43
	rst 38h			;9a44
	rst 38h			;9a45
	rst 38h			;9a46
	rst 38h			;9a47
	rst 38h			;9a48
	rst 38h			;9a49
	rst 38h			;9a4a
	rst 38h			;9a4b
	rst 38h			;9a4c
	rst 38h			;9a4d
	rst 38h			;9a4e
	rst 38h			;9a4f
	rst 38h			;9a50
	rst 38h			;9a51
	rst 38h			;9a52
	rst 38h			;9a53
	rst 38h			;9a54
	rst 38h			;9a55
	rst 38h			;9a56
	rst 38h			;9a57
	rst 38h			;9a58
	rst 38h			;9a59
	rst 38h			;9a5a
	rst 38h			;9a5b
	rst 38h			;9a5c
	rst 38h			;9a5d
	rst 38h			;9a5e
	rst 38h			;9a5f
	rst 38h			;9a60
	rst 38h			;9a61
	rst 38h			;9a62
	rst 38h			;9a63
	rst 38h			;9a64
	rst 38h			;9a65
	rst 38h			;9a66
	rst 38h			;9a67
	rst 38h			;9a68
	rst 38h			;9a69
	rst 38h			;9a6a
	rst 38h			;9a6b
	rst 38h			;9a6c
	rst 38h			;9a6d
	rst 38h			;9a6e
	rst 38h			;9a6f
	rst 38h			;9a70
	rst 38h			;9a71
	rst 38h			;9a72
	rst 38h			;9a73
	rst 38h			;9a74
	rst 38h			;9a75
	rst 38h			;9a76
	rst 38h			;9a77
	rst 38h			;9a78
	rst 38h			;9a79
	rst 38h			;9a7a
	rst 38h			;9a7b
	rst 38h			;9a7c
	rst 38h			;9a7d
	rst 38h			;9a7e
	rst 38h			;9a7f
	rst 38h			;9a80
	rst 38h			;9a81
	rst 38h			;9a82
	rst 38h			;9a83
	rst 38h			;9a84
	rst 38h			;9a85
	rst 38h			;9a86
	rst 38h			;9a87
	rst 38h			;9a88
	rst 38h			;9a89
	rst 38h			;9a8a
	rst 38h			;9a8b
	rst 38h			;9a8c
	rst 38h			;9a8d
	rst 38h			;9a8e
	rst 38h			;9a8f
	rst 38h			;9a90
	rst 38h			;9a91
	rst 38h			;9a92
	rst 38h			;9a93
	rst 38h			;9a94
	rst 38h			;9a95
	rst 38h			;9a96
	rst 38h			;9a97
	rst 38h			;9a98
	rst 38h			;9a99
	rst 38h			;9a9a
	rst 38h			;9a9b
	rst 38h			;9a9c
	rst 38h			;9a9d
	rst 38h			;9a9e
	rst 38h			;9a9f
	rst 38h			;9aa0
	rst 38h			;9aa1
	rst 38h			;9aa2
	rst 38h			;9aa3
	rst 38h			;9aa4
	rst 38h			;9aa5
	rst 38h			;9aa6
	rst 38h			;9aa7
	rst 38h			;9aa8
	rst 38h			;9aa9
	rst 38h			;9aaa
	rst 38h			;9aab
	rst 38h			;9aac
	rst 38h			;9aad
	rst 38h			;9aae
	rst 38h			;9aaf
	rst 38h			;9ab0
	rst 38h			;9ab1
	rst 38h			;9ab2
	rst 38h			;9ab3
	rst 38h			;9ab4
	rst 38h			;9ab5
	rst 38h			;9ab6
	rst 38h			;9ab7
	rst 38h			;9ab8
	rst 38h			;9ab9
	rst 38h			;9aba
	rst 38h			;9abb
	rst 38h			;9abc
	rst 38h			;9abd
	rst 38h			;9abe
	rst 38h			;9abf
	rst 38h			;9ac0
	rst 38h			;9ac1
	rst 38h			;9ac2
	rst 38h			;9ac3
	rst 38h			;9ac4
	rst 38h			;9ac5
	rst 38h			;9ac6
	rst 38h			;9ac7
	rst 38h			;9ac8
	rst 38h			;9ac9
	rst 38h			;9aca
	rst 38h			;9acb
	rst 38h			;9acc
	rst 38h			;9acd
	rst 38h			;9ace
	rst 38h			;9acf
	rst 38h			;9ad0
	rst 38h			;9ad1
	rst 38h			;9ad2
	rst 38h			;9ad3
	rst 38h			;9ad4
	rst 38h			;9ad5
	rst 38h			;9ad6
	rst 38h			;9ad7
	rst 38h			;9ad8
	rst 38h			;9ad9
	rst 38h			;9ada
	rst 38h			;9adb
	rst 38h			;9adc
	rst 38h			;9add
	rst 38h			;9ade
	rst 38h			;9adf
	rst 38h			;9ae0
	rst 38h			;9ae1
	rst 38h			;9ae2
	rst 38h			;9ae3
	rst 38h			;9ae4
	rst 38h			;9ae5
	rst 38h			;9ae6
	rst 38h			;9ae7
	rst 38h			;9ae8
	rst 38h			;9ae9
	rst 38h			;9aea
	rst 38h			;9aeb
	rst 38h			;9aec
	rst 38h			;9aed
	rst 38h			;9aee
	rst 38h			;9aef
	rst 38h			;9af0
	rst 38h			;9af1
	rst 38h			;9af2
	rst 38h			;9af3
	rst 38h			;9af4
	rst 38h			;9af5
	rst 38h			;9af6
	rst 38h			;9af7
	rst 38h			;9af8
	rst 38h			;9af9
	rst 38h			;9afa
	rst 38h			;9afb
	rst 38h			;9afc
	rst 38h			;9afd
	rst 38h			;9afe
	rst 38h			;9aff
	rst 38h			;9b00
	rst 38h			;9b01
	rst 38h			;9b02
	rst 38h			;9b03
	rst 38h			;9b04
	rst 38h			;9b05
	rst 38h			;9b06
	rst 38h			;9b07
	rst 38h			;9b08
	rst 38h			;9b09
	rst 38h			;9b0a
	rst 38h			;9b0b
	rst 38h			;9b0c
	rst 38h			;9b0d
	rst 38h			;9b0e
	rst 38h			;9b0f
	rst 38h			;9b10
	rst 38h			;9b11
	rst 38h			;9b12
	rst 38h			;9b13
	rst 38h			;9b14
	rst 38h			;9b15
	rst 38h			;9b16
	rst 38h			;9b17
	rst 38h			;9b18
	rst 38h			;9b19
	rst 38h			;9b1a
	rst 38h			;9b1b
	rst 38h			;9b1c
	rst 38h			;9b1d
	rst 38h			;9b1e
	rst 38h			;9b1f
	rst 38h			;9b20
	rst 38h			;9b21
	rst 38h			;9b22
	rst 38h			;9b23
	rst 38h			;9b24
	rst 38h			;9b25
	rst 38h			;9b26
	rst 38h			;9b27
	rst 38h			;9b28
	rst 38h			;9b29
	rst 38h			;9b2a
	rst 38h			;9b2b
	rst 38h			;9b2c
	rst 38h			;9b2d
	rst 38h			;9b2e
	rst 38h			;9b2f
	rst 38h			;9b30
	rst 38h			;9b31
	rst 38h			;9b32
	rst 38h			;9b33
	rst 38h			;9b34
	rst 38h			;9b35
	rst 38h			;9b36
	rst 38h			;9b37
	rst 38h			;9b38
	rst 38h			;9b39
	rst 38h			;9b3a
	rst 38h			;9b3b
	rst 38h			;9b3c
	rst 38h			;9b3d
	rst 38h			;9b3e
	rst 38h			;9b3f
	rst 38h			;9b40
	rst 38h			;9b41
	rst 38h			;9b42
	rst 38h			;9b43
	rst 38h			;9b44
	rst 38h			;9b45
	rst 38h			;9b46
	rst 38h			;9b47
	rst 38h			;9b48
	rst 38h			;9b49
	rst 38h			;9b4a
	rst 38h			;9b4b
	rst 38h			;9b4c
	rst 38h			;9b4d
	rst 38h			;9b4e
	rst 38h			;9b4f
	rst 38h			;9b50
	rst 38h			;9b51
	rst 38h			;9b52
	rst 38h			;9b53
	rst 38h			;9b54
	rst 38h			;9b55
	rst 38h			;9b56
	rst 38h			;9b57
	rst 38h			;9b58
	rst 38h			;9b59
	rst 38h			;9b5a
	rst 38h			;9b5b
	rst 38h			;9b5c
	rst 38h			;9b5d
	rst 38h			;9b5e
	rst 38h			;9b5f
	rst 38h			;9b60
	rst 38h			;9b61
	rst 38h			;9b62
	rst 38h			;9b63
	rst 38h			;9b64
	rst 38h			;9b65
	rst 38h			;9b66
	rst 38h			;9b67
	rst 38h			;9b68
	rst 38h			;9b69
	rst 38h			;9b6a
	rst 38h			;9b6b
	rst 38h			;9b6c
	rst 38h			;9b6d
	rst 38h			;9b6e
	rst 38h			;9b6f
	rst 38h			;9b70
	rst 38h			;9b71
	rst 38h			;9b72
	rst 38h			;9b73
	rst 38h			;9b74
	rst 38h			;9b75
	rst 38h			;9b76
	rst 38h			;9b77
	rst 38h			;9b78
	rst 38h			;9b79
	rst 38h			;9b7a
	rst 38h			;9b7b
	rst 38h			;9b7c
	rst 38h			;9b7d
	rst 38h			;9b7e
	rst 38h			;9b7f
	rst 38h			;9b80
	rst 38h			;9b81
	rst 38h			;9b82
	rst 38h			;9b83
	rst 38h			;9b84
	rst 38h			;9b85
	rst 38h			;9b86
	rst 38h			;9b87
	rst 38h			;9b88
	rst 38h			;9b89
	rst 38h			;9b8a
	rst 38h			;9b8b
	rst 38h			;9b8c
	rst 38h			;9b8d
	rst 38h			;9b8e
	rst 38h			;9b8f
	rst 38h			;9b90
	rst 38h			;9b91
	rst 38h			;9b92
	rst 38h			;9b93
	rst 38h			;9b94
	rst 38h			;9b95
	rst 38h			;9b96
	rst 38h			;9b97
	rst 38h			;9b98
	rst 38h			;9b99
	rst 38h			;9b9a
	rst 38h			;9b9b
	rst 38h			;9b9c
	rst 38h			;9b9d
	rst 38h			;9b9e
	rst 38h			;9b9f
	rst 38h			;9ba0
	rst 38h			;9ba1
	rst 38h			;9ba2
	rst 38h			;9ba3
	rst 38h			;9ba4
	rst 38h			;9ba5
	rst 38h			;9ba6
	rst 38h			;9ba7
	rst 38h			;9ba8
	rst 38h			;9ba9
	rst 38h			;9baa
	rst 38h			;9bab
	rst 38h			;9bac
	rst 38h			;9bad
	rst 38h			;9bae
	rst 38h			;9baf
	rst 38h			;9bb0
	rst 38h			;9bb1
	rst 38h			;9bb2
	rst 38h			;9bb3
	rst 38h			;9bb4
	rst 38h			;9bb5
	rst 38h			;9bb6
	rst 38h			;9bb7
	rst 38h			;9bb8
	rst 38h			;9bb9
	rst 38h			;9bba
	rst 38h			;9bbb
	rst 38h			;9bbc
	rst 38h			;9bbd
	rst 38h			;9bbe
	rst 38h			;9bbf
	rst 38h			;9bc0
	rst 38h			;9bc1
	rst 38h			;9bc2
	rst 38h			;9bc3
	rst 38h			;9bc4
	rst 38h			;9bc5
	rst 38h			;9bc6
	rst 38h			;9bc7
	rst 38h			;9bc8
	rst 38h			;9bc9
	rst 38h			;9bca
	rst 38h			;9bcb
	rst 38h			;9bcc
	rst 38h			;9bcd
	rst 38h			;9bce
	rst 38h			;9bcf
	rst 38h			;9bd0
	rst 38h			;9bd1
	rst 38h			;9bd2
	rst 38h			;9bd3
	rst 38h			;9bd4
	rst 38h			;9bd5
	rst 38h			;9bd6
	rst 38h			;9bd7
	rst 38h			;9bd8
	rst 38h			;9bd9
	rst 38h			;9bda
	rst 38h			;9bdb
	rst 38h			;9bdc
	rst 38h			;9bdd
	rst 38h			;9bde
	rst 38h			;9bdf
	rst 38h			;9be0
	rst 38h			;9be1
	rst 38h			;9be2
	rst 38h			;9be3
	rst 38h			;9be4
	rst 38h			;9be5
	rst 38h			;9be6
	rst 38h			;9be7
	rst 38h			;9be8
	rst 38h			;9be9
	rst 38h			;9bea
	rst 38h			;9beb
	rst 38h			;9bec
	rst 38h			;9bed
	rst 38h			;9bee
	rst 38h			;9bef
	rst 38h			;9bf0
	rst 38h			;9bf1
	rst 38h			;9bf2
	rst 38h			;9bf3
	rst 38h			;9bf4
	rst 38h			;9bf5
	rst 38h			;9bf6
	rst 38h			;9bf7
	rst 38h			;9bf8
	rst 38h			;9bf9
	rst 38h			;9bfa
	rst 38h			;9bfb
	rst 38h			;9bfc
	rst 38h			;9bfd
	rst 38h			;9bfe
	rst 38h			;9bff
	rst 38h			;9c00
	rst 38h			;9c01
	rst 38h			;9c02
	rst 38h			;9c03
	rst 38h			;9c04
	rst 38h			;9c05
	rst 38h			;9c06
	rst 38h			;9c07
	rst 38h			;9c08
	rst 38h			;9c09
	rst 38h			;9c0a
	rst 38h			;9c0b
	rst 38h			;9c0c
	rst 38h			;9c0d
	rst 38h			;9c0e
	rst 38h			;9c0f
	rst 38h			;9c10
	rst 38h			;9c11
	rst 38h			;9c12
	rst 38h			;9c13
	rst 38h			;9c14
	rst 38h			;9c15
	rst 38h			;9c16
	rst 38h			;9c17
	rst 38h			;9c18
	rst 38h			;9c19
	rst 38h			;9c1a
	rst 38h			;9c1b
	rst 38h			;9c1c
	rst 38h			;9c1d
	rst 38h			;9c1e
	rst 38h			;9c1f
	rst 38h			;9c20
	rst 38h			;9c21
	rst 38h			;9c22
	rst 38h			;9c23
	rst 38h			;9c24
	rst 38h			;9c25
	rst 38h			;9c26
	rst 38h			;9c27
	rst 38h			;9c28
	rst 38h			;9c29
	rst 38h			;9c2a
	rst 38h			;9c2b
	rst 38h			;9c2c
	rst 38h			;9c2d
	rst 38h			;9c2e
	rst 38h			;9c2f
	rst 38h			;9c30
	rst 38h			;9c31
	rst 38h			;9c32
	rst 38h			;9c33
	rst 38h			;9c34
	rst 38h			;9c35
	rst 38h			;9c36
	rst 38h			;9c37
	rst 38h			;9c38
	rst 38h			;9c39
	rst 38h			;9c3a
	rst 38h			;9c3b
	rst 38h			;9c3c
	rst 38h			;9c3d
	rst 38h			;9c3e
	rst 38h			;9c3f
	rst 38h			;9c40
	rst 38h			;9c41
	rst 38h			;9c42
	rst 38h			;9c43
	rst 38h			;9c44
	rst 38h			;9c45
	rst 38h			;9c46
	rst 38h			;9c47
	rst 38h			;9c48
	rst 38h			;9c49
	rst 38h			;9c4a
	rst 38h			;9c4b
	rst 38h			;9c4c
	rst 38h			;9c4d
	rst 38h			;9c4e
	rst 38h			;9c4f
	rst 38h			;9c50
	rst 38h			;9c51
	rst 38h			;9c52
	rst 38h			;9c53
	rst 38h			;9c54
	rst 38h			;9c55
	rst 38h			;9c56
	rst 38h			;9c57
	rst 38h			;9c58
	rst 38h			;9c59
	rst 38h			;9c5a
	rst 38h			;9c5b
	rst 38h			;9c5c
	rst 38h			;9c5d
	rst 38h			;9c5e
	rst 38h			;9c5f
	rst 38h			;9c60
	rst 38h			;9c61
	rst 38h			;9c62
	rst 38h			;9c63
	rst 38h			;9c64
	rst 38h			;9c65
	rst 38h			;9c66
	rst 38h			;9c67
	rst 38h			;9c68
	rst 38h			;9c69
	rst 38h			;9c6a
	rst 38h			;9c6b
	rst 38h			;9c6c
	rst 38h			;9c6d
	rst 38h			;9c6e
	rst 38h			;9c6f
	rst 38h			;9c70
	rst 38h			;9c71
	rst 38h			;9c72
	rst 38h			;9c73
	rst 38h			;9c74
	rst 38h			;9c75
	rst 38h			;9c76
	rst 38h			;9c77
	rst 38h			;9c78
	rst 38h			;9c79
	rst 38h			;9c7a
	rst 38h			;9c7b
	rst 38h			;9c7c
	rst 38h			;9c7d
	rst 38h			;9c7e
	rst 38h			;9c7f
	rst 38h			;9c80
	rst 38h			;9c81
	rst 38h			;9c82
	rst 38h			;9c83
	rst 38h			;9c84
	rst 38h			;9c85
	rst 38h			;9c86
	rst 38h			;9c87
	rst 38h			;9c88
	rst 38h			;9c89
	rst 38h			;9c8a
	rst 38h			;9c8b
	rst 38h			;9c8c
	rst 38h			;9c8d
	rst 38h			;9c8e
	rst 38h			;9c8f
	rst 38h			;9c90
	rst 38h			;9c91
	rst 38h			;9c92
	rst 38h			;9c93
	rst 38h			;9c94
	rst 38h			;9c95
	rst 38h			;9c96
	rst 38h			;9c97
	rst 38h			;9c98
	rst 38h			;9c99
	rst 38h			;9c9a
	rst 38h			;9c9b
	rst 38h			;9c9c
	rst 38h			;9c9d
	rst 38h			;9c9e
	rst 38h			;9c9f
	rst 38h			;9ca0
	rst 38h			;9ca1
	rst 38h			;9ca2
	rst 38h			;9ca3
	rst 38h			;9ca4
	rst 38h			;9ca5
	rst 38h			;9ca6
	rst 38h			;9ca7
	rst 38h			;9ca8
	rst 38h			;9ca9
	rst 38h			;9caa
	rst 38h			;9cab
	rst 38h			;9cac
	rst 38h			;9cad
	rst 38h			;9cae
	rst 38h			;9caf
	rst 38h			;9cb0
	rst 38h			;9cb1
	rst 38h			;9cb2
	rst 38h			;9cb3
	rst 38h			;9cb4
	rst 38h			;9cb5
	rst 38h			;9cb6
	rst 38h			;9cb7
	rst 38h			;9cb8
	rst 38h			;9cb9
	rst 38h			;9cba
	rst 38h			;9cbb
	rst 38h			;9cbc
	rst 38h			;9cbd
	rst 38h			;9cbe
	rst 38h			;9cbf
	rst 38h			;9cc0
	rst 38h			;9cc1
	rst 38h			;9cc2
	rst 38h			;9cc3
	rst 38h			;9cc4
	rst 38h			;9cc5
	rst 38h			;9cc6
	rst 38h			;9cc7
	rst 38h			;9cc8
	rst 38h			;9cc9
	rst 38h			;9cca
	rst 38h			;9ccb
	rst 38h			;9ccc
	rst 38h			;9ccd
	rst 38h			;9cce
	rst 38h			;9ccf
	rst 38h			;9cd0
	rst 38h			;9cd1
	rst 38h			;9cd2
	rst 38h			;9cd3
	rst 38h			;9cd4
	rst 38h			;9cd5
	rst 38h			;9cd6
	rst 38h			;9cd7
	rst 38h			;9cd8
	rst 38h			;9cd9
	rst 38h			;9cda
	rst 38h			;9cdb
	rst 38h			;9cdc
	rst 38h			;9cdd
	rst 38h			;9cde
	rst 38h			;9cdf
	rst 38h			;9ce0
	rst 38h			;9ce1
	rst 38h			;9ce2
	rst 38h			;9ce3
	rst 38h			;9ce4
	rst 38h			;9ce5
	rst 38h			;9ce6
	rst 38h			;9ce7
	rst 38h			;9ce8
	rst 38h			;9ce9
	rst 38h			;9cea
	rst 38h			;9ceb
	rst 38h			;9cec
	rst 38h			;9ced
	rst 38h			;9cee
	rst 38h			;9cef
	rst 38h			;9cf0
	rst 38h			;9cf1
	rst 38h			;9cf2
	rst 38h			;9cf3
	rst 38h			;9cf4
	rst 38h			;9cf5
	rst 38h			;9cf6
	rst 38h			;9cf7
	rst 38h			;9cf8
	rst 38h			;9cf9
	rst 38h			;9cfa
	rst 38h			;9cfb
	rst 38h			;9cfc
	rst 38h			;9cfd
	rst 38h			;9cfe
	rst 38h			;9cff
	rst 38h			;9d00
	rst 38h			;9d01
	rst 38h			;9d02
	rst 38h			;9d03
	rst 38h			;9d04
	rst 38h			;9d05
	rst 38h			;9d06
	rst 38h			;9d07
	rst 38h			;9d08
	rst 38h			;9d09
	rst 38h			;9d0a
	rst 38h			;9d0b
	rst 38h			;9d0c
	rst 38h			;9d0d
	rst 38h			;9d0e
	rst 38h			;9d0f
	rst 38h			;9d10
	rst 38h			;9d11
	rst 38h			;9d12
	rst 38h			;9d13
	rst 38h			;9d14
	rst 38h			;9d15
	rst 38h			;9d16
	rst 38h			;9d17
	rst 38h			;9d18
	rst 38h			;9d19
	rst 38h			;9d1a
	rst 38h			;9d1b
	rst 38h			;9d1c
	rst 38h			;9d1d
	rst 38h			;9d1e
	rst 38h			;9d1f
	rst 38h			;9d20
	rst 38h			;9d21
	rst 38h			;9d22
	rst 38h			;9d23
	rst 38h			;9d24
	rst 38h			;9d25
	rst 38h			;9d26
	rst 38h			;9d27
	rst 38h			;9d28
	rst 38h			;9d29
	rst 38h			;9d2a
	rst 38h			;9d2b
	rst 38h			;9d2c
	rst 38h			;9d2d
	rst 38h			;9d2e
	rst 38h			;9d2f
	rst 38h			;9d30
	rst 38h			;9d31
	rst 38h			;9d32
	rst 38h			;9d33
	rst 38h			;9d34
	rst 38h			;9d35
	rst 38h			;9d36
	rst 38h			;9d37
	rst 38h			;9d38
	rst 38h			;9d39
	rst 38h			;9d3a
	rst 38h			;9d3b
	rst 38h			;9d3c
	rst 38h			;9d3d
	rst 38h			;9d3e
	rst 38h			;9d3f
	rst 38h			;9d40
	rst 38h			;9d41
	rst 38h			;9d42
	rst 38h			;9d43
	rst 38h			;9d44
	rst 38h			;9d45
	rst 38h			;9d46
	rst 38h			;9d47
	rst 38h			;9d48
	rst 38h			;9d49
	rst 38h			;9d4a
	rst 38h			;9d4b
	rst 38h			;9d4c
	rst 38h			;9d4d
	rst 38h			;9d4e
	rst 38h			;9d4f
	rst 38h			;9d50
	rst 38h			;9d51
	rst 38h			;9d52
	rst 38h			;9d53
	rst 38h			;9d54
	rst 38h			;9d55
	rst 38h			;9d56
	rst 38h			;9d57
	rst 38h			;9d58
	rst 38h			;9d59
	rst 38h			;9d5a
	rst 38h			;9d5b
	rst 38h			;9d5c
	rst 38h			;9d5d
	rst 38h			;9d5e
	rst 38h			;9d5f
	rst 38h			;9d60
	rst 38h			;9d61
	rst 38h			;9d62
	rst 38h			;9d63
	rst 38h			;9d64
	rst 38h			;9d65
	rst 38h			;9d66
	rst 38h			;9d67
	rst 38h			;9d68
	rst 38h			;9d69
	rst 38h			;9d6a
	rst 38h			;9d6b
	rst 38h			;9d6c
	rst 38h			;9d6d
	rst 38h			;9d6e
	rst 38h			;9d6f
	rst 38h			;9d70
	rst 38h			;9d71
	rst 38h			;9d72
	rst 38h			;9d73
	rst 38h			;9d74
	rst 38h			;9d75
	rst 38h			;9d76
	rst 38h			;9d77
	rst 38h			;9d78
	rst 38h			;9d79
	rst 38h			;9d7a
	rst 38h			;9d7b
	rst 38h			;9d7c
	rst 38h			;9d7d
	rst 38h			;9d7e
	rst 38h			;9d7f
	rst 38h			;9d80
	rst 38h			;9d81
	rst 38h			;9d82
	rst 38h			;9d83
	rst 38h			;9d84
	rst 38h			;9d85
	rst 38h			;9d86
	rst 38h			;9d87
	rst 38h			;9d88
	rst 38h			;9d89
	rst 38h			;9d8a
	rst 38h			;9d8b
	rst 38h			;9d8c
	rst 38h			;9d8d
	rst 38h			;9d8e
	rst 38h			;9d8f
	rst 38h			;9d90
	rst 38h			;9d91
	rst 38h			;9d92
	rst 38h			;9d93
	rst 38h			;9d94
	rst 38h			;9d95
	rst 38h			;9d96
	rst 38h			;9d97
	rst 38h			;9d98
	rst 38h			;9d99
	rst 38h			;9d9a
	rst 38h			;9d9b
	rst 38h			;9d9c
	rst 38h			;9d9d
	rst 38h			;9d9e
	rst 38h			;9d9f
	rst 38h			;9da0
	rst 38h			;9da1
	rst 38h			;9da2
	rst 38h			;9da3
	rst 38h			;9da4
	rst 38h			;9da5
	rst 38h			;9da6
	rst 38h			;9da7
	rst 38h			;9da8
	rst 38h			;9da9
	rst 38h			;9daa
	rst 38h			;9dab
	rst 38h			;9dac
	rst 38h			;9dad
	rst 38h			;9dae
	rst 38h			;9daf
	rst 38h			;9db0
	rst 38h			;9db1
	rst 38h			;9db2
	rst 38h			;9db3
	rst 38h			;9db4
	rst 38h			;9db5
	rst 38h			;9db6
	rst 38h			;9db7
	rst 38h			;9db8
	rst 38h			;9db9
	rst 38h			;9dba
	rst 38h			;9dbb
	rst 38h			;9dbc
	rst 38h			;9dbd
	rst 38h			;9dbe
	rst 38h			;9dbf
	rst 38h			;9dc0
	rst 38h			;9dc1
	rst 38h			;9dc2
	rst 38h			;9dc3
	rst 38h			;9dc4
	rst 38h			;9dc5
	rst 38h			;9dc6
	rst 38h			;9dc7
	rst 38h			;9dc8
	rst 38h			;9dc9
	rst 38h			;9dca
	rst 38h			;9dcb
	rst 38h			;9dcc
	rst 38h			;9dcd
	rst 38h			;9dce
	rst 38h			;9dcf
	rst 38h			;9dd0
	rst 38h			;9dd1
	rst 38h			;9dd2
	rst 38h			;9dd3
	rst 38h			;9dd4
	rst 38h			;9dd5
	rst 38h			;9dd6
	rst 38h			;9dd7
	rst 38h			;9dd8
	rst 38h			;9dd9
	rst 38h			;9dda
	rst 38h			;9ddb
	rst 38h			;9ddc
	rst 38h			;9ddd
	rst 38h			;9dde
	rst 38h			;9ddf
	rst 38h			;9de0
	rst 38h			;9de1
	rst 38h			;9de2
	rst 38h			;9de3
	rst 38h			;9de4
	rst 38h			;9de5
	rst 38h			;9de6
	rst 38h			;9de7
	rst 38h			;9de8
	rst 38h			;9de9
	rst 38h			;9dea
	rst 38h			;9deb
	rst 38h			;9dec
	rst 38h			;9ded
	rst 38h			;9dee
	rst 38h			;9def
	rst 38h			;9df0
	rst 38h			;9df1
	rst 38h			;9df2
	rst 38h			;9df3
	rst 38h			;9df4
	rst 38h			;9df5
	rst 38h			;9df6
	rst 38h			;9df7
	rst 38h			;9df8
	rst 38h			;9df9
	rst 38h			;9dfa
	rst 38h			;9dfb
	rst 38h			;9dfc
	rst 38h			;9dfd
	rst 38h			;9dfe
	rst 38h			;9dff
	rst 38h			;9e00
	rst 38h			;9e01
	rst 38h			;9e02
	rst 38h			;9e03
	rst 38h			;9e04
	rst 38h			;9e05
	rst 38h			;9e06
	rst 38h			;9e07
	rst 38h			;9e08
	rst 38h			;9e09
	rst 38h			;9e0a
	rst 38h			;9e0b
	rst 38h			;9e0c
	rst 38h			;9e0d
	rst 38h			;9e0e
	rst 38h			;9e0f
	rst 38h			;9e10
	rst 38h			;9e11
	rst 38h			;9e12
	rst 38h			;9e13
	rst 38h			;9e14
	rst 38h			;9e15
	rst 38h			;9e16
	rst 38h			;9e17
	rst 38h			;9e18
	rst 38h			;9e19
	rst 38h			;9e1a
	rst 38h			;9e1b
	rst 38h			;9e1c
	rst 38h			;9e1d
	rst 38h			;9e1e
	rst 38h			;9e1f
	rst 38h			;9e20
	rst 38h			;9e21
	rst 38h			;9e22
	rst 38h			;9e23
	rst 38h			;9e24
	rst 38h			;9e25
	rst 38h			;9e26
	rst 38h			;9e27
	rst 38h			;9e28
	rst 38h			;9e29
	rst 38h			;9e2a
	rst 38h			;9e2b
	rst 38h			;9e2c
	rst 38h			;9e2d
	rst 38h			;9e2e
	rst 38h			;9e2f
	rst 38h			;9e30
	rst 38h			;9e31
	rst 38h			;9e32
	rst 38h			;9e33
	rst 38h			;9e34
	rst 38h			;9e35
	rst 38h			;9e36
	rst 38h			;9e37
	rst 38h			;9e38
	rst 38h			;9e39
	rst 38h			;9e3a
	rst 38h			;9e3b
	rst 38h			;9e3c
	rst 38h			;9e3d
	rst 38h			;9e3e
	rst 38h			;9e3f
	rst 38h			;9e40
	rst 38h			;9e41
	rst 38h			;9e42
	rst 38h			;9e43
	rst 38h			;9e44
	rst 38h			;9e45
	rst 38h			;9e46
	rst 38h			;9e47
	rst 38h			;9e48
	rst 38h			;9e49
	rst 38h			;9e4a
	rst 38h			;9e4b
	rst 38h			;9e4c
	rst 38h			;9e4d
	rst 38h			;9e4e
	rst 38h			;9e4f
	rst 38h			;9e50
	rst 38h			;9e51
	rst 38h			;9e52
	rst 38h			;9e53
	rst 38h			;9e54
	rst 38h			;9e55
	rst 38h			;9e56
	rst 38h			;9e57
	rst 38h			;9e58
	rst 38h			;9e59
	rst 38h			;9e5a
	rst 38h			;9e5b
	rst 38h			;9e5c
	rst 38h			;9e5d
	rst 38h			;9e5e
	rst 38h			;9e5f
	rst 38h			;9e60
	rst 38h			;9e61
	rst 38h			;9e62
	rst 38h			;9e63
	rst 38h			;9e64
	rst 38h			;9e65
	rst 38h			;9e66
	rst 38h			;9e67
	rst 38h			;9e68
	rst 38h			;9e69
	rst 38h			;9e6a
	rst 38h			;9e6b
	rst 38h			;9e6c
	rst 38h			;9e6d
	rst 38h			;9e6e
	rst 38h			;9e6f
	rst 38h			;9e70
	rst 38h			;9e71
	rst 38h			;9e72
	rst 38h			;9e73
	rst 38h			;9e74
	rst 38h			;9e75
	rst 38h			;9e76
	rst 38h			;9e77
	rst 38h			;9e78
	rst 38h			;9e79
	rst 38h			;9e7a
	rst 38h			;9e7b
	rst 38h			;9e7c
	rst 38h			;9e7d
	rst 38h			;9e7e
	rst 38h			;9e7f
	rst 38h			;9e80
	rst 38h			;9e81
	rst 38h			;9e82
	rst 38h			;9e83
	rst 38h			;9e84
	rst 38h			;9e85
	rst 38h			;9e86
	rst 38h			;9e87
	rst 38h			;9e88
	rst 38h			;9e89
	rst 38h			;9e8a
	rst 38h			;9e8b
	rst 38h			;9e8c
	rst 38h			;9e8d
	rst 38h			;9e8e
	rst 38h			;9e8f
	rst 38h			;9e90
	rst 38h			;9e91
	rst 38h			;9e92
	rst 38h			;9e93
	rst 38h			;9e94
	rst 38h			;9e95
	rst 38h			;9e96
	rst 38h			;9e97
	rst 38h			;9e98
	rst 38h			;9e99
	rst 38h			;9e9a
	rst 38h			;9e9b
	rst 38h			;9e9c
	rst 38h			;9e9d
	rst 38h			;9e9e
	rst 38h			;9e9f
	rst 38h			;9ea0
	rst 38h			;9ea1
	rst 38h			;9ea2
	rst 38h			;9ea3
	rst 38h			;9ea4
	rst 38h			;9ea5
	rst 38h			;9ea6
	rst 38h			;9ea7
	rst 38h			;9ea8
	rst 38h			;9ea9
	rst 38h			;9eaa
	rst 38h			;9eab
	rst 38h			;9eac
	rst 38h			;9ead
	rst 38h			;9eae
	rst 38h			;9eaf
	rst 38h			;9eb0
	rst 38h			;9eb1
	rst 38h			;9eb2
	rst 38h			;9eb3
	rst 38h			;9eb4
	rst 38h			;9eb5
	rst 38h			;9eb6
	rst 38h			;9eb7
	rst 38h			;9eb8
	rst 38h			;9eb9
	rst 38h			;9eba
	rst 38h			;9ebb
	rst 38h			;9ebc
	rst 38h			;9ebd
	rst 38h			;9ebe
	rst 38h			;9ebf
	rst 38h			;9ec0
	rst 38h			;9ec1
	rst 38h			;9ec2
	rst 38h			;9ec3
	rst 38h			;9ec4
	rst 38h			;9ec5
	rst 38h			;9ec6
	rst 38h			;9ec7
	rst 38h			;9ec8
	rst 38h			;9ec9
	rst 38h			;9eca
	rst 38h			;9ecb
	rst 38h			;9ecc
	rst 38h			;9ecd
	rst 38h			;9ece
	rst 38h			;9ecf
	rst 38h			;9ed0
	rst 38h			;9ed1
	rst 38h			;9ed2
	rst 38h			;9ed3
	rst 38h			;9ed4
	rst 38h			;9ed5
	rst 38h			;9ed6
	rst 38h			;9ed7
	rst 38h			;9ed8
	rst 38h			;9ed9
	rst 38h			;9eda
	rst 38h			;9edb
	rst 38h			;9edc
	rst 38h			;9edd
	rst 38h			;9ede
	rst 38h			;9edf
	rst 38h			;9ee0
	rst 38h			;9ee1
	rst 38h			;9ee2
	rst 38h			;9ee3
	rst 38h			;9ee4
	rst 38h			;9ee5
	rst 38h			;9ee6
	rst 38h			;9ee7
	rst 38h			;9ee8
	rst 38h			;9ee9
	rst 38h			;9eea
	rst 38h			;9eeb
	rst 38h			;9eec
	rst 38h			;9eed
	rst 38h			;9eee
	rst 38h			;9eef
	rst 38h			;9ef0
	rst 38h			;9ef1
	rst 38h			;9ef2
	rst 38h			;9ef3
	rst 38h			;9ef4
	rst 38h			;9ef5
	rst 38h			;9ef6
	rst 38h			;9ef7
	rst 38h			;9ef8
	rst 38h			;9ef9
	rst 38h			;9efa
	rst 38h			;9efb
	rst 38h			;9efc
	rst 38h			;9efd
	rst 38h			;9efe
	rst 38h			;9eff
	rst 38h			;9f00
	rst 38h			;9f01
	rst 38h			;9f02
	rst 38h			;9f03
	rst 38h			;9f04
	rst 38h			;9f05
	rst 38h			;9f06
	rst 38h			;9f07
	rst 38h			;9f08
	rst 38h			;9f09
	rst 38h			;9f0a
	rst 38h			;9f0b
	rst 38h			;9f0c
	rst 38h			;9f0d
	rst 38h			;9f0e
	rst 38h			;9f0f
	rst 38h			;9f10
	rst 38h			;9f11
	rst 38h			;9f12
	rst 38h			;9f13
	rst 38h			;9f14
	rst 38h			;9f15
	rst 38h			;9f16
	rst 38h			;9f17
	rst 38h			;9f18
	rst 38h			;9f19
	rst 38h			;9f1a
	rst 38h			;9f1b
	rst 38h			;9f1c
	rst 38h			;9f1d
	rst 38h			;9f1e
	rst 38h			;9f1f
	rst 38h			;9f20
	rst 38h			;9f21
	rst 38h			;9f22
	rst 38h			;9f23
	rst 38h			;9f24
	rst 38h			;9f25
	rst 38h			;9f26
	rst 38h			;9f27
	rst 38h			;9f28
	rst 38h			;9f29
	rst 38h			;9f2a
	rst 38h			;9f2b
	rst 38h			;9f2c
	rst 38h			;9f2d
	rst 38h			;9f2e
	rst 38h			;9f2f
	rst 38h			;9f30
	rst 38h			;9f31
	rst 38h			;9f32
	rst 38h			;9f33
	rst 38h			;9f34
	rst 38h			;9f35
	rst 38h			;9f36
	rst 38h			;9f37
	rst 38h			;9f38
	rst 38h			;9f39
	rst 38h			;9f3a
	rst 38h			;9f3b
	rst 38h			;9f3c
	rst 38h			;9f3d
	rst 38h			;9f3e
	rst 38h			;9f3f
	rst 38h			;9f40
	rst 38h			;9f41
	rst 38h			;9f42
	rst 38h			;9f43
	rst 38h			;9f44
	rst 38h			;9f45
	rst 38h			;9f46
	rst 38h			;9f47
	rst 38h			;9f48
	rst 38h			;9f49
	rst 38h			;9f4a
	rst 38h			;9f4b
	rst 38h			;9f4c
	rst 38h			;9f4d
	rst 38h			;9f4e
	rst 38h			;9f4f
	rst 38h			;9f50
	rst 38h			;9f51
	rst 38h			;9f52
	rst 38h			;9f53
	rst 38h			;9f54
	rst 38h			;9f55
	rst 38h			;9f56
	rst 38h			;9f57
	rst 38h			;9f58
	rst 38h			;9f59
	rst 38h			;9f5a
	rst 38h			;9f5b
	rst 38h			;9f5c
	rst 38h			;9f5d
	rst 38h			;9f5e
	rst 38h			;9f5f
	rst 38h			;9f60
	rst 38h			;9f61
	rst 38h			;9f62
	rst 38h			;9f63
	rst 38h			;9f64
	rst 38h			;9f65
	rst 38h			;9f66
	rst 38h			;9f67
	rst 38h			;9f68
	rst 38h			;9f69
	rst 38h			;9f6a
	rst 38h			;9f6b
	rst 38h			;9f6c
	rst 38h			;9f6d
	rst 38h			;9f6e
	rst 38h			;9f6f
	rst 38h			;9f70
	rst 38h			;9f71
	rst 38h			;9f72
	rst 38h			;9f73
	rst 38h			;9f74
	rst 38h			;9f75
	rst 38h			;9f76
	rst 38h			;9f77
	rst 38h			;9f78
	rst 38h			;9f79
	rst 38h			;9f7a
	rst 38h			;9f7b
	rst 38h			;9f7c
	rst 38h			;9f7d
	rst 38h			;9f7e
	rst 38h			;9f7f
	rst 38h			;9f80
	rst 38h			;9f81
	rst 38h			;9f82
	rst 38h			;9f83
	rst 38h			;9f84
	rst 38h			;9f85
	rst 38h			;9f86
	rst 38h			;9f87
	rst 38h			;9f88
	rst 38h			;9f89
	rst 38h			;9f8a
	rst 38h			;9f8b
	rst 38h			;9f8c
	rst 38h			;9f8d
	rst 38h			;9f8e
	rst 38h			;9f8f
	rst 38h			;9f90
	rst 38h			;9f91
	rst 38h			;9f92
	rst 38h			;9f93
	rst 38h			;9f94
	rst 38h			;9f95
	rst 38h			;9f96
	rst 38h			;9f97
	rst 38h			;9f98
	rst 38h			;9f99
	rst 38h			;9f9a
	rst 38h			;9f9b
	rst 38h			;9f9c
	rst 38h			;9f9d
	rst 38h			;9f9e
	rst 38h			;9f9f
	rst 38h			;9fa0
	rst 38h			;9fa1
	rst 38h			;9fa2
	rst 38h			;9fa3
	rst 38h			;9fa4
	rst 38h			;9fa5
	rst 38h			;9fa6
	rst 38h			;9fa7
	rst 38h			;9fa8
	rst 38h			;9fa9
	rst 38h			;9faa
	rst 38h			;9fab
	rst 38h			;9fac
	rst 38h			;9fad
	rst 38h			;9fae
	rst 38h			;9faf
	rst 38h			;9fb0
	rst 38h			;9fb1
	rst 38h			;9fb2
	rst 38h			;9fb3
	rst 38h			;9fb4
	rst 38h			;9fb5
	rst 38h			;9fb6
	rst 38h			;9fb7
	rst 38h			;9fb8
	rst 38h			;9fb9
	rst 38h			;9fba
	rst 38h			;9fbb
	rst 38h			;9fbc
	rst 38h			;9fbd
	rst 38h			;9fbe
	rst 38h			;9fbf
	rst 38h			;9fc0
	rst 38h			;9fc1
	rst 38h			;9fc2
	rst 38h			;9fc3
	rst 38h			;9fc4
	rst 38h			;9fc5
	rst 38h			;9fc6
	rst 38h			;9fc7
	rst 38h			;9fc8
	rst 38h			;9fc9
	rst 38h			;9fca
	rst 38h			;9fcb
	rst 38h			;9fcc
	rst 38h			;9fcd
	rst 38h			;9fce
	rst 38h			;9fcf
	rst 38h			;9fd0
	rst 38h			;9fd1
	rst 38h			;9fd2
	rst 38h			;9fd3
	rst 38h			;9fd4
	rst 38h			;9fd5
	rst 38h			;9fd6
	rst 38h			;9fd7
	rst 38h			;9fd8
	rst 38h			;9fd9
	rst 38h			;9fda
	rst 38h			;9fdb
	rst 38h			;9fdc
	rst 38h			;9fdd
	rst 38h			;9fde
	rst 38h			;9fdf
	rst 38h			;9fe0
	rst 38h			;9fe1
	rst 38h			;9fe2
	rst 38h			;9fe3
	rst 38h			;9fe4
	rst 38h			;9fe5
	rst 38h			;9fe6
	rst 38h			;9fe7
	rst 38h			;9fe8
	rst 38h			;9fe9
	rst 38h			;9fea
	rst 38h			;9feb
	rst 38h			;9fec
	rst 38h			;9fed
	rst 38h			;9fee
	rst 38h			;9fef
	rst 38h			;9ff0
	rst 38h			;9ff1
	rst 38h			;9ff2
	rst 38h			;9ff3
	rst 38h			;9ff4
	rst 38h			;9ff5
	rst 38h			;9ff6
	rst 38h			;9ff7
	rst 38h			;9ff8
	rst 38h			;9ff9
	rst 38h			;9ffa
	rst 38h			;9ffb
	rst 38h			;9ffc
	rst 38h			;9ffd
	rst 38h			;9ffe
	rst 38h			;9fff
