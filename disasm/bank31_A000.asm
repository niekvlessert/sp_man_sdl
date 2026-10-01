; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank31_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank31.bin

	org 0a000h

	ld hl,00000h		;a000
	ld bc,00202h		;a003
	ld (bc),a		;a006
	ld (bc),a		;a007
	nop			;a008
	dec bc			;a009
	nop			;a00a
	nop			;a00b
	ld bc,00808h		;a00c
	ld (bc),a		;a00f
	ex af,af'		;a010
	nop			;a011
	ld a,(bc)		;a012
	nop			;a013
	nop			;a014
	ld bc,01010h		;a015
	ld (bc),a		;a018
	nop			;a019
	nop			;a01a
	ld bc,01010h		;a01b
	ld bc,00000h		;a01e
	ld bc,01010h		;a021
	ld bc,00010h		;a024
	inc b			;a027
	nop			;a028
	nop			;a029
	ld bc,00101h		;a02a
	ld bc,00001h		;a02d
	ld b,000h		;a030
	nop			;a032
	ld bc,00808h		;a033
	ex af,af'		;a036
	ex af,af'		;a037
	nop			;a038
	ld bc,01010h		;a039
	ld (bc),a		;a03c
	nop			;a03d
	nop			;a03e
	ld bc,01010h		;a03f
	ld bc,00000h		;a042
	ld bc,01010h		;a045
	ld bc,00010h		;a048
	ld bc,00000h		;a04b
	ld bc,01010h		;a04e
	ld b,000h		;a051
	nop			;a053
	ld bc,00101h		;a054
	inc b			;a057
	ld bc,00100h		;a058
	add hl,bc		;a05b
	ex af,af'		;a05c
	ld (de),a		;a05d
	ex af,af'		;a05e
	nop			;a05f
	inc bc			;a060
	nop			;a061
	nop			;a062
	ld bc,00404h		;a063
	ld b,004h		;a066
	nop			;a068
	inc b			;a069
	nop			;a06a
	nop			;a06b
	ld bc,00202h		;a06c
	inc b			;a06f
	ld (bc),a		;a070
	nop			;a071
	ld bc,00406h		;a072
	ld (bc),a		;a075
	ld b,000h		;a076
	ld (bc),a		;a078
	nop			;a079
	nop			;a07a
	ld bc,01010h		;a07b
	ld (bc),a		;a07e
	nop			;a07f
	nop			;a080
	ld bc,01010h		;a081
	ex af,af'		;a084
	nop			;a085
	nop			;a086
	ld bc,00101h		;a087
	inc bc			;a08a
	ld bc,00100h		;a08b
	dec b			;a08e
	inc b			;a08f
	add hl,bc		;a090
	dec b			;a091
	nop			;a092
	ld b,000h		;a093
	nop			;a095
	ld bc,01010h		;a096
	ld bc,00010h		;a099
	dec b			;a09c
	nop			;a09d
	nop			;a09e
	ld bc,00808h		;a09f
	rlca			;a0a2
	ex af,af'		;a0a3
	nop			;a0a4
	dec b			;a0a5
	nop			;a0a6
	nop			;a0a7
	ld bc,01414h		;a0a8
	ld bc,00014h		;a0ab
	ld bc,00004h		;a0ae
	ld bc,00000h		;a0b1
	ld bc,01010h		;a0b4
	inc bc			;a0b7
	nop			;a0b8
	nop			;a0b9
	ld bc,01010h		;a0ba
	ld bc,00414h		;a0bd
	inc bc			;a0c0
	inc b			;a0c1
	nop			;a0c2
	ld bc,01010h		;a0c3
	dec b			;a0c6
	nop			;a0c7
	nop			;a0c8
	ld bc,00808h		;a0c9
	ld a,(bc)		;a0cc
	ex af,af'		;a0cd
	nop			;a0ce
	ld bc,0020ah		;a0cf
	inc b			;a0d2
	ld a,(bc)		;a0d3
	nop			;a0d4
	ld (bc),a		;a0d5
	ld (bc),a		;a0d6
	nop			;a0d7
	ld bc,00406h		;a0d8
	inc bc			;a0db
	ld b,000h		;a0dc
	inc bc			;a0de
	nop			;a0df
	nop			;a0e0
	ld bc,00404h		;a0e1
	ld bc,01014h		;a0e4
	ld bc,00004h		;a0e7
	ld bc,00000h		;a0ea
	ld bc,01010h		;a0ed
	ld bc,00000h		;a0f0
	ld bc,01414h		;a0f3
	ld bc,00014h		;a0f6
	ld bc,00105h		;a0f9
	inc b			;a0fc
	dec b			;a0fd
	nop			;a0fe
	ld bc,01015h		;a0ff
	ld (bc),a		;a102
	nop			;a103
	nop			;a104
	ld bc,01010h		;a105
	ld bc,00404h		;a108
	ld (bc),a		;a10b
	inc b			;a10c
	nop			;a10d
	ld (bc),a		;a10e
	nop			;a10f
	nop			;a110
	ld bc,00a0ah		;a111
	ld (bc),a		;a114
	ld a,(bc)		;a115
	nop			;a116
	inc b			;a117
	ex af,af'		;a118
	nop			;a119
	ld bc,00000h		;a11a
	ld bc,01010h		;a11d
	ld bc,00101h		;a120
	ld bc,00405h		;a123
	ld bc,01015h		;a126
	ld bc,00005h		;a129
	ld bc,01015h		;a12c
	ld bc,00005h		;a12f
	ld bc,01015h		;a132
	ld bc,00015h		;a135
	ld bc,00005h		;a138
	ld bc,01015h		;a13b
	ld (bc),a		;a13e
	dec b			;a13f
	nop			;a140
	ld (bc),a		;a141
	nop			;a142
	nop			;a143
	ld bc,00202h		;a144
	ld (bc),a		;a147
	ld (bc),a		;a148
	nop			;a149
	ld bc,0080ah		;a14a
	ld bc,0000ah		;a14d
	inc b			;a150
	ex af,af'		;a151
	nop			;a152
	ld bc,0020ah		;a153
	ld de,0000ah		;a156
	inc c			;a159
	nop			;a15a
	nop			;a15b
	ld bc,00404h		;a15c
	inc bc			;a15f
	inc b			;a160
	nop			;a161
	ex af,af'		;a162
	nop			;a163
	nop			;a164
	ld bc,00404h		;a165
	ld (bc),a		;a168
	inc b			;a169
	nop			;a16a
	ex af,af'		;a16b
	nop			;a16c
	nop			;a16d
	ld bc,01515h		;a16e
	ld bc,00005h		;a171
	ld bc,00000h		;a174
	ld bc,01010h		;a177
	ld bc,00000h		;a17a
	ld bc,01414h		;a17d
	ld (bc),a		;a180
	inc b			;a181
	nop			;a182
	ld bc,01010h		;a183
	ld bc,00000h		;a186
	ld bc,01010h		;a189
	ld bc,00010h		;a18c
	ld bc,00505h		;a18f
	ld bc,01015h		;a192
	ld bc,00005h		;a195
	ld bc,01010h		;a198
	ld bc,00000h		;a19b
	ld bc,01515h		;a19e
	ld bc,00015h		;a1a1
	ld (bc),a		;a1a4
	dec b			;a1a5
	nop			;a1a6
	ld bc,01015h		;a1a7
	ld bc,00005h		;a1aa
	ld bc,01015h		;a1ad
	ld bc,00015h		;a1b0
	ld (bc),a		;a1b3
	dec b			;a1b4
	nop			;a1b5
	inc b			;a1b6
	nop			;a1b7
	nop			;a1b8
	ld bc,00808h		;a1b9
	ld (bc),a		;a1bc
	ex af,af'		;a1bd
	nop			;a1be
	ld bc,0020ah		;a1bf
	inc c			;a1c2
	ld a,(bc)		;a1c3
	nop			;a1c4
	ld (bc),a		;a1c5
	ld (bc),a		;a1c6
	nop			;a1c7
	ld bc,01010h		;a1c8
	ld bc,00010h		;a1cb
	ld bc,00000h		;a1ce
	ld bc,01010h		;a1d1
	ld bc,00010h		;a1d4
	ld bc,00000h		;a1d7
	ld bc,01010h		;a1da
	ex af,af'		;a1dd
	nop			;a1de
	nop			;a1df
	ld bc,01111h		;a1e0
	ld bc,00011h		;a1e3
	ld (bc),a		;a1e6
	ld bc,00100h		;a1e7
	ld de,00110h		;a1ea
	ld de,00200h		;a1ed
	ld bc,00100h		;a1f0
	dec b			;a1f3
	inc b			;a1f4
	inc bc			;a1f5
	dec b			;a1f6
	nop			;a1f7
	ld bc,01014h		;a1f8
	ld bc,00206h		;a1fb
	ld bc,00006h		;a1fe
	inc b			;a201
	ld (bc),a		;a202
	nop			;a203
	ld bc,0080ah		;a204
	inc bc			;a207
	ld a,(bc)		;a208
	nop			;a209
	ld bc,0101ah		;a20a
	ld (bc),a		;a20d
	ld a,(de)		;a20e
	nop			;a20f
	ld (bc),a		;a210
	ld a,(bc)		;a211
	nop			;a212
	ld bc,0101ah		;a213
	ld bc,0000ah		;a216
	dec b			;a219
	nop			;a21a
	nop			;a21b
	ld bc,01010h		;a21c
	ld bc,00111h		;a21f
	ld (bc),a		;a222
	ld bc,00100h		;a223
	ex af,af'		;a226
	ex af,af'		;a227
	ld (bc),a		;a228
	ex af,af'		;a229
	nop			;a22a
	ld (bc),a		;a22b
	nop			;a22c
	nop			;a22d
	ld bc,00808h		;a22e
	inc b			;a231
	ex af,af'		;a232
	nop			;a233
	inc bc			;a234
	nop			;a235
	nop			;a236
	ld bc,00101h		;a237
	inc b			;a23a
	ld bc,00100h		;a23b
	ld de,00110h		;a23e
	djnz la243h		;a241
la243h:
	ld bc,00000h		;a243
	ld bc,01515h		;a246
	ld (bc),a		;a249
	dec b			;a24a
	nop			;a24b
	ld bc,01015h		;a24c
	ld bc,00000h		;a24f
	ld bc,01010h		;a252
	ld bc,00414h		;a255
	ld bc,00105h		;a258
	ld bc,00005h		;a25b
	ld bc,00000h		;a25e
	ld bc,00505h		;a261
	ld bc,01015h		;a264
	ld bc,00015h		;a267
	ld bc,01015h		;a26a
	ld bc,00015h		;a26d
	ld bc,01015h		;a270
	ld bc,00015h		;a273
	ld bc,00005h		;a276
	ld bc,01014h		;a279
	ld (bc),a		;a27c
	nop			;a27d
	nop			;a27e
	ld bc,00404h		;a27f
	ld bc,00004h		;a282
	ld bc,00105h		;a285
	ld bc,00005h		;a288
	ld bc,01005h		;a28b
	ld bc,00000h		;a28e
	ld (bc),a		;a291
	djnz $+18		;a292
	ld bc,00010h		;a294
	ld (bc),a		;a297
	nop			;a298
	nop			;a299
	ld bc,00404h		;a29a
	inc bc			;a29d
	inc b			;a29e
	nop			;a29f
	inc b			;a2a0
	nop			;a2a1
	nop			;a2a2
	ld bc,00a0ah		;a2a3
	ld c,00ah		;a2a6
	nop			;a2a8
	inc b			;a2a9
	ld (bc),a		;a2aa
	nop			;a2ab
	ld bc,00406h		;a2ac
	ld bc,00006h		;a2af
	dec b			;a2b2
	nop			;a2b3
	nop			;a2b4
	ld bc,00202h		;a2b5
	inc b			;a2b8
	nop			;a2b9
	nop			;a2ba
	ld bc,01010h		;a2bb
	ld bc,00010h		;a2be
	ld bc,00404h		;a2c1
	ld (bc),a		;a2c4
	inc b			;a2c5
	nop			;a2c6
	ld bc,00105h		;a2c7
	ld (bc),a		;a2ca
	dec b			;a2cb
	nop			;a2cc
	ld bc,01011h		;a2cd
	ld bc,00010h		;a2d0
	inc bc			;a2d3
	nop			;a2d4
	nop			;a2d5
	ld bc,00101h		;a2d6
	inc bc			;a2d9
	ld bc,00100h		;a2da
	dec b			;a2dd
	inc b			;a2de
	ld bc,00005h		;a2df
	ld (bc),a		;a2e2
	inc b			;a2e3
	nop			;a2e4
	ld bc,00206h		;a2e5
	inc bc			;a2e8
	ld b,000h		;a2e9
	dec b			;a2eb
	ld (bc),a		;a2ec
	nop			;a2ed
	ld (bc),a		;a2ee
	nop			;a2ef
	nop			;a2f0
	ld bc,01010h		;a2f1
	ld bc,00010h		;a2f4
	dec b			;a2f7
	nop			;a2f8
	nop			;a2f9
	ld bc,00505h		;a2fa
	ld bc,00001h		;a2fd
	ld bc,00000h		;a300
	ld bc,01010h		;a303
	ld bc,00010h		;a306
	ld bc,00505h		;a309
	ld bc,01015h		;a30c
	ld bc,00005h		;a30f
	inc bc			;a312
	nop			;a313
	nop			;a314
	ld bc,00808h		;a315
	ld (bc),a		;a318
	ex af,af'		;a319
	nop			;a31a
	ld bc,0020ah		;a31b
	ld bc,0000ah		;a31e
	ld (bc),a		;a321
	ld (bc),a		;a322
	nop			;a323
	ld bc,00406h		;a324
	ld bc,00006h		;a327
	ld (bc),a		;a32a
	nop			;a32b
	nop			;a32c
	ld bc,00505h		;a32d
	inc bc			;a330
	dec b			;a331
	nop			;a332
	ld bc,00000h		;a333
	ld bc,01010h		;a336
	ld (bc),a		;a339
	nop			;a33a
	nop			;a33b
	ld bc,01010h		;a33c
	ld (bc),a		;a33f
	nop			;a340
	nop			;a341
	ld bc,00505h		;a342
	ld bc,00005h		;a345
	ld (bc),a		;a348
	nop			;a349
	nop			;a34a
	ld bc,00101h		;a34b
	ex af,af'		;a34e
	ld bc,00100h		;a34f
	ex af,af'		;a352
	ex af,af'		;a353
	inc b			;a354
	ex af,af'		;a355
	nop			;a356
	ld bc,01010h		;a357
	ld bc,00010h		;a35a
	ld bc,00000h		;a35d
	ld bc,01010h		;a360
	ld bc,00010h		;a363
	inc c			;a366
	nop			;a367
	nop			;a368
	ld bc,00404h		;a369
	dec b			;a36c
	inc b			;a36d
	nop			;a36e
	inc bc			;a36f
	nop			;a370
	nop			;a371
	ld bc,00808h		;a372
	dec b			;a375
	ex af,af'		;a376
	nop			;a377
	ld bc,00101h		;a378
	ld (bc),a		;a37b
	ld bc,00400h		;a37c
	nop			;a37f
	nop			;a380
	ld bc,00202h		;a381
	ld b,000h		;a384
	nop			;a386
	ld bc,01414h		;a387
	ld (bc),a		;a38a
	inc b			;a38b
	nop			;a38c
	ld bc,01014h		;a38d
	ld bc,00014h		;a390
	ld bc,00004h		;a393
	ld bc,01014h		;a396
	inc bc			;a399
	nop			;a39a
	nop			;a39b
	ld bc,00808h		;a39c
	ex af,af'		;a39f
	ex af,af'		;a3a0
	nop			;a3a1
	ld bc,00109h		;a3a2
	ld bc,01019h		;a3a5
	ld bc,00001h		;a3a8
	ld bc,00809h		;a3ab
	ld bc,01019h		;a3ae
	ld bc,00008h		;a3b1
	ld bc,00202h		;a3b4
	inc bc			;a3b7
	ld (bc),a		;a3b8
	nop			;a3b9
	ld bc,01012h		;a3ba
	ld bc,00416h		;a3bd
	ld bc,00006h		;a3c0
	ld bc,01014h		;a3c3
	ld bc,00010h		;a3c6
	ld bc,00404h		;a3c9
	ld bc,00004h		;a3cc
	inc bc			;a3cf
	nop			;a3d0
	nop			;a3d1
	ld bc,00101h		;a3d2
	ld bc,00001h		;a3d5
	ld bc,00809h		;a3d8
	inc bc			;a3db
	ex af,af'		;a3dc
	nop			;a3dd
	ld bc,01018h		;a3de
	ld bc,00018h		;a3e1
	ld (bc),a		;a3e4
	ex af,af'		;a3e5
	nop			;a3e6
	ld bc,01212h		;a3e7
	ld bc,00002h		;a3ea
	ld bc,0080ah		;a3ed
	ld (bc),a		;a3f0
	ex af,af'		;a3f1
	nop			;a3f2
	ld bc,00202h		;a3f3
	ld bc,00002h		;a3f6
	ld bc,01818h		;a3f9
	ld bc,00111h		;a3fc
	ld bc,00405h		;a3ff
	ld bc,01015h		;a402
	ld bc,00216h		;a405
	ld bc,00006h		;a408
	inc bc			;a40b
	ld (bc),a		;a40c
	nop			;a40d
	ld bc,00406h		;a40e
	ld bc,00006h		;a411
	ld bc,00002h		;a414
	ld bc,01012h		;a417
	ld bc,00002h		;a41a
	ld bc,01010h		;a41d
	ld bc,00212h		;a420
	inc bc			;a423
	ld (bc),a		;a424
	nop			;a425
	ld (bc),a		;a426
	nop			;a427
	nop			;a428
	ld bc,00202h		;a429
	ld bc,00002h		;a42c
	ld bc,00404h		;a42f
	ld bc,00000h		;a432
	ld bc,01010h		;a435
	ld bc,00404h		;a438
	ld bc,00004h		;a43b
	ld (bc),a		;a43e
	djnz la451h		;a43f
	inc bc			;a441
	nop			;a442
	nop			;a443
	ld bc,00101h		;a444
	ld bc,00405h		;a447
	ld (bc),a		;a44a
	ld bc,00100h		;a44b
	ex af,af'		;a44e
	ex af,af'		;a44f
	inc b			;a450
la451h:
	ex af,af'		;a451
	nop			;a452
	ld (bc),a		;a453
	nop			;a454
	nop			;a455
	ld bc,01010h		;a456
	ld bc,00111h		;a459
	ld bc,00415h		;a45c
	ld (bc),a		;a45f
	dec d			;a460
	nop			;a461
	ld bc,00011h		;a462
	ld bc,00809h		;a465
	dec b			;a468
	add hl,bc		;a469
	nop			;a46a
	ld bc,00001h		;a46b
	ld bc,00000h		;a46e
	ld bc,00404h		;a471
	ld (bc),a		;a474
	inc b			;a475
	nop			;a476
	ld bc,00206h		;a477
	inc b			;a47a
	ld b,000h		;a47b
	rlca			;a47d
	ld (bc),a		;a47e
	nop			;a47f
	inc bc			;a480
	nop			;a481
	nop			;a482
	ld bc,00202h		;a483
	inc b			;a486
	nop			;a487
	nop			;a488
	ld bc,01010h		;a489
	inc b			;a48c
	nop			;a48d
	nop			;a48e
	ld bc,00505h		;a48f
	add hl,bc		;a492
	dec b			;a493
	nop			;a494
	inc b			;a495
	inc b			;a496
	nop			;a497
	ld (bc),a		;a498
	nop			;a499
	nop			;a49a
	ld bc,00505h		;a49b
	dec b			;a49e
	dec b			;a49f
	nop			;a4a0
	ld bc,00001h		;a4a1
	ld bc,00809h		;a4a4
	ld bc,00009h		;a4a7
	inc bc			;a4aa
	ex af,af'		;a4ab
	nop			;a4ac
	ld bc,01018h		;a4ad
	ld bc,0020ah		;a4b0
	ld bc,0101ah		;a4b3
	ld bc,0001ah		;a4b6
	ld bc,0101ah		;a4b9
	ld (bc),a		;a4bc
	ld a,(de)		;a4bd
	nop			;a4be
	ld bc,00002h		;a4bf
	dec b			;a4c2
	nop			;a4c3
	nop			;a4c4
	ld bc,01212h		;a4c5
	ld bc,00002h		;a4c8
	ld (bc),a		;a4cb
	nop			;a4cc
	nop			;a4cd
	ld bc,00202h		;a4ce
	dec b			;a4d1
	nop			;a4d2
	nop			;a4d3
	ld bc,01010h		;a4d4
	ld bc,00010h		;a4d7
	ld bc,00000h		;a4da
	ld bc,01010h		;a4dd
	ld bc,00000h		;a4e0
	ld bc,01010h		;a4e3
	ld bc,00000h		;a4e6
	ld bc,01010h		;a4e9
	ld bc,00010h		;a4ec
	ld bc,00404h		;a4ef
	ld (bc),a		;a4f2
	inc b			;a4f3
	nop			;a4f4
	ld bc,00105h		;a4f5
	inc bc			;a4f8
	dec b			;a4f9
	nop			;a4fa
	inc b			;a4fb
	ld bc,00100h		;a4fc
	ex af,af'		;a4ff
	ex af,af'		;a500
	dec c			;a501
	ex af,af'		;a502
	nop			;a503
	ld bc,01018h		;a504
	ld bc,00018h		;a507
	ld bc,00119h		;a50a
	ld bc,00001h		;a50d
	inc bc			;a510
	nop			;a511
	nop			;a512
	ld bc,01010h		;a513
	ld bc,00414h		;a516
	ld bc,00014h		;a519
	ld (bc),a		;a51c
	inc b			;a51d
	nop			;a51e
	dec l			;a51f
	nop			;a520
	nop			;a521
	ld bc,00808h		;a522
	inc b			;a525
	ex af,af'		;a526
	nop			;a527
	rlca			;a528
	nop			;a529
	nop			;a52a
	ld bc,01010h		;a52b
	ld bc,00010h		;a52e
	dec de			;a531
	nop			;a532
	nop			;a533
	ld bc,00202h		;a534
	ld bc,00002h		;a537
	ld bc,0080ah		;a53a
	ld (bc),a		;a53d
	ld a,(bc)		;a53e
	nop			;a53f
	inc b			;a540
	nop			;a541
	nop			;a542
	ld bc,00808h		;a543
	dec b			;a546
	ex af,af'		;a547
	nop			;a548
	ld bc,0020ah		;a549
	inc bc			;a54c
	ld (bc),a		;a54d
	nop			;a54e
	ld (bc),a		;a54f
	nop			;a550
	nop			;a551
	ld bc,00404h		;a552
	inc b			;a555
	inc b			;a556
	nop			;a557
	ld bc,00105h		;a558
	ld bc,01015h		;a55b
	dec b			;a55e
	nop			;a55f
	nop			;a560
	ld bc,00404h		;a561
	inc b			;a564
	inc b			;a565
	nop			;a566
	inc bc			;a567
	nop			;a568
	nop			;a569
	ld bc,00202h		;a56a
	ld (bc),a		;a56d
	ld (bc),a		;a56e
	nop			;a56f
	inc bc			;a570
	nop			;a571
	nop			;a572
	ld bc,00202h		;a573
	ld bc,00406h		;a576
	ld bc,00006h		;a579
	ld bc,00004h		;a57c
	ld bc,00105h		;a57f
	dec b			;a582
	dec b			;a583
	nop			;a584
	ld bc,00808h		;a585
	inc b			;a588
	ex af,af'		;a589
	nop			;a58a
	ld bc,0020ah		;a58b
	ld (bc),a		;a58e
	ld a,(bc)		;a58f
	nop			;a590
	ld (bc),a		;a591
	ld (bc),a		;a592
	nop			;a593
	ld bc,00406h		;a594
	dec b			;a597
	ld b,000h		;a598
	ld bc,00000h		;a59a
	ld bc,01010h		;a59d
	ld bc,00010h		;a5a0
	inc bc			;a5a3
	nop			;a5a4
	nop			;a5a5
	ld bc,00404h		;a5a6
	ld bc,00004h		;a5a9
	ld bc,00105h		;a5ac
	ld (bc),a		;a5af
	dec b			;a5b0
	nop			;a5b1
	ld bc,00000h		;a5b2
	ld bc,00101h		;a5b5
	ld (bc),a		;a5b8
	ld bc,00100h		;a5b9
	add hl,bc		;a5bc
	ex af,af'		;a5bd
	ld bc,00009h		;a5be
	dec b			;a5c1
	ex af,af'		;a5c2
	nop			;a5c3
	ld bc,00109h		;a5c4
	inc b			;a5c7
	add hl,bc		;a5c8
	nop			;a5c9
	ld (bc),a		;a5ca
	ex af,af'		;a5cb
	nop			;a5cc
	ld bc,0020ah		;a5cd
	ld (bc),a		;a5d0
	ld a,(bc)		;a5d1
	nop			;a5d2
	ld (bc),a		;a5d3
	ld (bc),a		;a5d4
	nop			;a5d5
	ld bc,00406h		;a5d6
	ld (bc),a		;a5d9
	ld b,000h		;a5da
	ld bc,01016h		;a5dc
	ld (bc),a		;a5df
	ld d,000h		;a5e0
	ld (bc),a		;a5e2
	ld b,000h		;a5e3
	ld bc,00004h		;a5e5
	inc bc			;a5e8
	nop			;a5e9
	nop			;a5ea
	ld bc,00404h		;a5eb
	ld bc,01014h		;a5ee
	ld (bc),a		;a5f1
	inc b			;a5f2
	nop			;a5f3
	ld b,000h		;a5f4
	nop			;a5f6
	ld bc,00101h		;a5f7
	rlca			;a5fa
	ld bc,00100h		;a5fb
	ex af,af'		;a5fe
	ex af,af'		;a5ff
	ld bc,00008h		;a600
	ld bc,0020ah		;a603
	ld bc,00002h		;a606
	ld bc,00406h		;a609
	inc bc			;a60c
	ld b,000h		;a60d
	inc b			;a60f
	ld (bc),a		;a610
	nop			;a611
	inc bc			;a612
	nop			;a613
	nop			;a614
	ld bc,01212h		;a615
	ld bc,00012h		;a618
	dec b			;a61b
	nop			;a61c
	nop			;a61d
	ld bc,01010h		;a61e
	ld bc,00414h		;a621
	ld bc,00004h		;a624
	inc b			;a627
	nop			;a628
	nop			;a629
	ld bc,00404h		;a62a
	ld bc,01014h		;a62d
	ld (bc),a		;a630
	inc b			;a631
	nop			;a632
	ld b,000h		;a633
	nop			;a635
	ld bc,00202h		;a636
	ld bc,00404h		;a639
	ld bc,00105h		;a63c
	ld (bc),a		;a63f
	dec b			;a640
	nop			;a641
	rlca			;a642
	nop			;a643
	nop			;a644
	ld bc,00101h		;a645
	dec b			;a648
	ld bc,00100h		;a649
	add hl,bc		;a64c
	ex af,af'		;a64d
	ld c,008h		;a64e
	nop			;a650
	ld bc,01018h		;a651
	ld bc,00010h		;a654
	ld (bc),a		;a657
	nop			;a658
	nop			;a659
	ld bc,01010h		;a65a
	ld bc,00010h		;a65d
	ld bc,00000h		;a660
	ld bc,00404h		;a663
	ld bc,01216h		;a666
	ld bc,00016h		;a669
	dec b			;a66c
	nop			;a66d
	nop			;a66e
	ld bc,01010h		;a66f
	ld bc,00212h		;a672
	ld bc,00002h		;a675
	inc bc			;a678
	nop			;a679
	nop			;a67a
	ld bc,00404h		;a67b
	ld bc,00004h		;a67e
	ld bc,01014h		;a681
	ld bc,00010h		;a684
	inc bc			;a687
	nop			;a688
	nop			;a689
	ld bc,00404h		;a68a
	ld bc,01014h		;a68d
	ld bc,00115h		;a690
	dec b			;a693
	nop			;a694
	nop			;a695
	ld bc,00101h		;a696
	inc b			;a699
	ld bc,00100h		;a69a
	add hl,bc		;a69d
	ex af,af'		;a69e
	dec b			;a69f
	add hl,bc		;a6a0
	nop			;a6a1
	ld (bc),a		;a6a2
	ld bc,00100h		;a6a3
	nop			;a6a6
	nop			;a6a7
	ld bc,01010h		;a6a8
	ld bc,00010h		;a6ab
	ld bc,00000h		;a6ae
	ld bc,01010h		;a6b1
	ld bc,00000h		;a6b4
	ld bc,01010h		;a6b7
	ld bc,00414h		;a6ba
	ld bc,00004h		;a6bd
	ld bc,01014h		;a6c0
	ld (bc),a		;a6c3
	inc b			;a6c4
	nop			;a6c5
	ld bc,01014h		;a6c6
	ld bc,00004h		;a6c9
	ld bc,01010h		;a6cc
	ld bc,00010h		;a6cf
	ld bc,00000h		;a6d2
	ld bc,01010h		;a6d5
	dec b			;a6d8
	nop			;a6d9
	nop			;a6da
	ld bc,0ffffh		;a6db
	rst 38h			;a6de
	rst 38h			;a6df
	rst 38h			;a6e0
	rst 38h			;a6e1
	rst 38h			;a6e2
	rst 38h			;a6e3
	add hl,de		;a6e4
	nop			;a6e5
	nop			;a6e6
	ld bc,00202h		;a6e7
	ld (bc),a		;a6ea
	ld (bc),a		;a6eb
	nop			;a6ec
	dec b			;a6ed
	nop			;a6ee
	nop			;a6ef
	ld bc,01010h		;a6f0
	ld (bc),a		;a6f3
	nop			;a6f4
	nop			;a6f5
	ld bc,01010h		;a6f6
	ld bc,00000h		;a6f9
	ld bc,00404h		;a6fc
	inc bc			;a6ff
	inc b			;a700
	nop			;a701
	ld bc,00206h		;a702
	ld bc,00006h		;a705
	ld bc,00002h		;a708
	ld bc,00000h		;a70b
	ld bc,01010h		;a70e
	ld bc,00010h		;a711
	ld bc,00000h		;a714
	ld bc,01010h		;a717
	ld bc,00010h		;a71a
	inc bc			;a71d
	nop			;a71e
	nop			;a71f
	ld bc,00808h		;a720
	ld c,008h		;a723
	nop			;a725
	ld bc,00109h		;a726
	ld bc,00009h		;a729
	inc bc			;a72c
	ld bc,00100h		;a72d
	dec b			;a730
	inc b			;a731
	ld b,005h		;a732
	nop			;a734
	ld bc,01014h		;a735
	ld bc,00000h		;a738
	ld bc,01010h		;a73b
	ld bc,00010h		;a73e
	ld bc,00404h		;a741
	ld bc,00004h		;a744
	ld bc,00000h		;a747
	ld bc,00404h		;a74a
	ld (bc),a		;a74d
	inc b			;a74e
	nop			;a74f
	ld bc,00202h		;a750
	ld (bc),a		;a753
	ld (bc),a		;a754
	nop			;a755
	ld bc,0080ah		;a756
	ld bc,0000ah		;a759
	inc bc			;a75c
	ex af,af'		;a75d
	nop			;a75e
	ld bc,00109h		;a75f
	ld (bc),a		;a762
	add hl,bc		;a763
	nop			;a764
	ld (bc),a		;a765
	ld bc,00300h		;a766
	nop			;a769
	nop			;a76a
	ld bc,00a0ah		;a76b
	inc c			;a76e
	ld a,(bc)		;a76f
	nop			;a770
	dec bc			;a771
	ex af,af'		;a772
	nop			;a773
	inc b			;a774
	nop			;a775
	nop			;a776
	ld bc,00101h		;a777
	ld bc,00001h		;a77a
	ld bc,00000h		;a77d
	ld bc,01010h		;a780
	ld bc,00010h		;a783
	inc bc			;a786
	nop			;a787
	nop			;a788
	ld bc,01010h		;a789
	ld bc,00a1ah		;a78c
	ld (bc),a		;a78f
	ld a,(bc)		;a790
	nop			;a791
	ld bc,00000h		;a792
	ld bc,00101h		;a795
	inc bc			;a798
	ld bc,00100h		;a799
	add hl,bc		;a79c
	ex af,af'		;a79d
	dec b			;a79e
	add hl,bc		;a79f
	nop			;a7a0
	ld bc,00008h		;a7a1
	inc bc			;a7a4
	nop			;a7a5
	nop			;a7a6
	ld bc,00101h		;a7a7
	ld (bc),a		;a7aa
	ld bc,00300h		;a7ab
	nop			;a7ae
	nop			;a7af
	ld bc,00404h		;a7b0
	ld bc,00206h		;a7b3
	inc b			;a7b6
	ld (bc),a		;a7b7
	nop			;a7b8
	inc bc			;a7b9
	nop			;a7ba
	nop			;a7bb
	ld bc,00505h		;a7bc
	dec b			;a7bf
	dec b			;a7c0
	nop			;a7c1
	add hl,bc		;a7c2
	nop			;a7c3
	nop			;a7c4
	ld bc,00404h		;a7c5
	ld bc,00105h		;a7c8
	ld bc,00001h		;a7cb
	dec b			;a7ce
	nop			;a7cf
	nop			;a7d0
	ld bc,00404h		;a7d1
	ld (bc),a		;a7d4
	inc b			;a7d5
	nop			;a7d6
	inc bc			;a7d7
	nop			;a7d8
	nop			;a7d9
	ld bc,00404h		;a7da
	ld (bc),a		;a7dd
	inc b			;a7de
	nop			;a7df
	inc b			;a7e0
	nop			;a7e1
	nop			;a7e2
	ld bc,00202h		;a7e3
	ld bc,00002h		;a7e6
	inc b			;a7e9
	nop			;a7ea
	nop			;a7eb
	ld bc,00404h		;a7ec
	ld (bc),a		;a7ef
	inc b			;a7f0
	nop			;a7f1
	inc b			;a7f2
	nop			;a7f3
	nop			;a7f4
	ld bc,00202h		;a7f5
	ld (bc),a		;a7f8
	ld (bc),a		;a7f9
	nop			;a7fa
	dec b			;a7fb
	nop			;a7fc
	nop			;a7fd
	ld bc,00202h		;a7fe
	ld bc,00002h		;a801
	inc bc			;a804
	nop			;a805
	nop			;a806
	ld bc,00202h		;a807
	ld bc,0080ah		;a80a
	ld (bc),a		;a80d
	ld a,(bc)		;a80e
	nop			;a80f
	ld bc,00008h		;a810
	ld bc,00000h		;a813
	ld bc,01010h		;a816
	ld bc,00010h		;a819
	ld bc,00808h		;a81c
	ld bc,01010h		;a81f
	ld bc,00010h		;a822
	ld bc,00000h		;a825
	ld bc,01212h		;a828
	ld bc,00012h		;a82b
	ld bc,00002h		;a82e
	ld bc,01010h		;a831
	ld bc,00000h		;a834
	ld bc,01010h		;a837
	ld bc,00010h		;a83a
	ld bc,00808h		;a83d
	ld bc,00109h		;a840
	ex af,af'		;a843
	add hl,bc		;a844
	nop			;a845
	dec b			;a846
	ld bc,00100h		;a847
	dec b			;a84a
	inc b			;a84b
	inc bc			;a84c
	nop			;a84d
	nop			;a84e
	ld bc,00404h		;a84f
	ld bc,00004h		;a852
	ld bc,02024h		;a855
	inc bc			;a858
	inc b			;a859
	nop			;a85a
	ld bc,02024h		;a85b
	ld bc,00004h		;a85e
	ld bc,00206h		;a861
	inc bc			;a864
	ld b,000h		;a865
	rlca			;a867
	ld (bc),a		;a868
	nop			;a869
	ld bc,01010h		;a86a
	ld (bc),a		;a86d
	nop			;a86e
	nop			;a86f
	ld bc,00404h		;a870
	ld bc,00105h		;a873
	ld bc,01015h		;a876
	ld bc,00014h		;a879
	ld bc,00010h		;a87c
	ld (bc),a		;a87f
	nop			;a880
	nop			;a881
	ld bc,00505h		;a882
	ld bc,01015h		;a885
	ld bc,00015h		;a888
	ld bc,00004h		;a88b
	inc bc			;a88e
	nop			;a88f
	nop			;a890
	ld bc,01010h		;a891
	ld bc,00515h		;a894
	ld (bc),a		;a897
	dec b			;a898
	nop			;a899
	ld bc,00001h		;a89a
	inc bc			;a89d
	nop			;a89e
	nop			;a89f
	ld bc,00101h		;a8a0
	inc b			;a8a3
	ld bc,00100h		;a8a4
	add hl,bc		;a8a7
	ex af,af'		;a8a8
	rlca			;a8a9
	ex af,af'		;a8aa
	nop			;a8ab
	ld (bc),a		;a8ac
	nop			;a8ad
	nop			;a8ae
	ld bc,00202h		;a8af
	ld (bc),a		;a8b2
	ld (bc),a		;a8b3
	nop			;a8b4
	inc bc			;a8b5
	nop			;a8b6
	nop			;a8b7
	ld bc,00202h		;a8b8
	ld b,002h		;a8bb
	nop			;a8bd
	dec bc			;a8be
	nop			;a8bf
	nop			;a8c0
	ld bc,00202h		;a8c1
	ld (bc),a		;a8c4
	ld (bc),a		;a8c5
	nop			;a8c6
	inc bc			;a8c7
	nop			;a8c8
	nop			;a8c9
	ld bc,00202h		;a8ca
	ld (bc),a		;a8cd
	ld (bc),a		;a8ce
	nop			;a8cf
	inc bc			;a8d0
	nop			;a8d1
	nop			;a8d2
	ld bc,00202h		;a8d3
	ld (bc),a		;a8d6
	ld (bc),a		;a8d7
	nop			;a8d8
	ld bc,01010h		;a8d9
	ld (bc),a		;a8dc
	djnz la8dfh		;a8dd
la8dfh:
	rrca			;a8df
	nop			;a8e0
	nop			;a8e1
	ld bc,00606h		;a8e2
	ld bc,00006h		;a8e5
	ld bc,00004h		;a8e8
	dec b			;a8eb
	nop			;a8ec
	nop			;a8ed
	ld bc,00202h		;a8ee
	rlca			;a8f1
	ld (bc),a		;a8f2
	nop			;a8f3
	ld bc,00000h		;a8f4
	ld bc,00404h		;a8f7
	inc bc			;a8fa
	inc b			;a8fb
	nop			;a8fc
	ld bc,00105h		;a8fd
	ld (bc),a		;a900
	dec b			;a901
	nop			;a902
	ld bc,00001h		;a903
	dec b			;a906
	nop			;a907
	nop			;a908
	ld bc,00808h		;a909
	ld bc,00008h		;a90c
	ld bc,0020ah		;a90f
	dec b			;a912
	nop			;a913
	nop			;a914
	ld bc,00404h		;a915
	inc b			;a918
	inc b			;a919
	nop			;a91a
	dec b			;a91b
	nop			;a91c
	nop			;a91d
	ld bc,00404h		;a91e
	inc b			;a921
	inc b			;a922
	nop			;a923
	ld bc,00105h		;a924
	ld bc,01015h		;a927
	ld bc,00015h		;a92a
	ld bc,00005h		;a92d
	inc b			;a930
	nop			;a931
	nop			;a932
	ld bc,00101h		;a933
	ld (bc),a		;a936
	ld bc,00100h		;a937
	ex af,af'		;a93a
	ex af,af'		;a93b
	inc b			;a93c
	ex af,af'		;a93d
	nop			;a93e
	ld b,000h		;a93f
	nop			;a941
	ld bc,00101h		;a942
	dec b			;a945
	ld bc,00d00h		;a946
	nop			;a949
	nop			;a94a
	ld bc,00808h		;a94b
	inc b			;a94e
	ex af,af'		;a94f
	nop			;a950
	ld bc,00000h		;a951
	ld bc,01111h		;a954
	ld (bc),a		;a957
	djnz la95ah		;a958
la95ah:
	ld bc,00000h		;a95a
	ld bc,01010h		;a95d
	ld (bc),a		;a960
	djnz la963h		;a961
la963h:
	ld bc,00808h		;a963
	inc c			;a966
	ex af,af'		;a967
	nop			;a968
	ld bc,01018h		;a969
	ld bc,00018h		;a96c
	ld bc,00008h		;a96f
	ld bc,02028h		;a972
	inc bc			;a975
	nop			;a976
	nop			;a977
	ld bc,01010h		;a978
	inc bc			;a97b
	nop			;a97c
	nop			;a97d
	ld bc,01818h		;a97e
	ld bc,00008h		;a981
	ld bc,00101h		;a984
	ld (bc),a		;a987
	ld bc,00100h		;a988
	add hl,bc		;a98b
	ex af,af'		;a98c
	ld bc,00009h		;a98d
	inc bc			;a990
	ex af,af'		;a991
	nop			;a992
	ld a,(bc)		;a993
	nop			;a994
	nop			;a995
	ld bc,00505h		;a996
	ld (bc),a		;a999
	dec b			;a99a
	nop			;a99b
	dec b			;a99c
	nop			;a99d
	nop			;a99e
	ld bc,00404h		;a99f
	inc b			;a9a2
	inc b			;a9a3
	nop			;a9a4
	dec b			;a9a5
	nop			;a9a6
	nop			;a9a7
	ld bc,00808h		;a9a8
	inc bc			;a9ab
	ex af,af'		;a9ac
	nop			;a9ad
	ld bc,00101h		;a9ae
	dec b			;a9b1
	nop			;a9b2
	nop			;a9b3
	ld bc,00101h		;a9b4
	inc b			;a9b7
	ld bc,00500h		;a9b8
	nop			;a9bb
	nop			;a9bc
	ld bc,00404h		;a9bd
	ld bc,00004h		;a9c0
	ld bc,00105h		;a9c3
	ld bc,00004h		;a9c6
	inc bc			;a9c9
	nop			;a9ca
	nop			;a9cb
	ld bc,00404h		;a9cc
	inc b			;a9cf
	inc b			;a9d0
	nop			;a9d1
	ld bc,00206h		;a9d2
	ld (bc),a		;a9d5
	ld (bc),a		;a9d6
	nop			;a9d7
	rlca			;a9d8
	nop			;a9d9
	nop			;a9da
	ld bc,00202h		;a9db
	ld b,002h		;a9de
	nop			;a9e0
	ld b,000h		;a9e1
	nop			;a9e3
	ld bc,00202h		;a9e4
	dec b			;a9e7
	ld (bc),a		;a9e8
	nop			;a9e9
	ld (bc),a		;a9ea
	nop			;a9eb
	nop			;a9ec
	ld bc,00808h		;a9ed
	ld bc,00008h		;a9f0
	dec b			;a9f3
	nop			;a9f4
	nop			;a9f5
	ld bc,00808h		;a9f6
	ld bc,01018h		;a9f9
	ld bc,00018h		;a9fc
	dec b			;a9ff
	nop			;aa00
	nop			;aa01
	ld bc,00808h		;aa02
	ld bc,00008h		;aa05
	ld bc,01018h		;aa08
	ld bc,00008h		;aa0b
	ld bc,00000h		;aa0e
	ld bc,00101h		;aa11
	ld (bc),a		;aa14
	ld bc,00100h		;aa15
	nop			;aa18
	nop			;aa19
	ld bc,01010h		;aa1a
	ld bc,00010h		;aa1d
	dec b			;aa20
	nop			;aa21
	nop			;aa22
	ld bc,00101h		;aa23
	ld (bc),a		;aa26
	ld bc,00600h		;aa27
	nop			;aa2a
	nop			;aa2b
	ld bc,00202h		;aa2c
	ld (bc),a		;aa2f
	ld (bc),a		;aa30
	nop			;aa31
	ld bc,01010h		;aa32
	ld (bc),a		;aa35
	djnz laa38h		;aa36
laa38h:
	ld bc,00808h		;aa38
	ld (bc),a		;aa3b
	ex af,af'		;aa3c
	nop			;aa3d
	ld b,000h		;aa3e
	nop			;aa40
	ld bc,00101h		;aa41
	ld bc,01011h		;aa44
	ld (bc),a		;aa47
	ld de,00100h		;aa48
	ld bc,00100h		;aa4b
	inc b			;aa4e
	inc b			;aa4f
	ld bc,00004h		;aa50
	ld bc,00206h		;aa53
	ex af,af'		;aa56
	ld b,000h		;aa57
	ld bc,01010h		;aa59
	ld bc,00010h		;aa5c
	inc bc			;aa5f
	nop			;aa60
	nop			;aa61
	ld bc,00404h		;aa62
	ld (bc),a		;aa65
	inc b			;aa66
	nop			;aa67
	ld bc,00206h		;aa68
	inc b			;aa6b
	ld b,000h		;aa6c
	rlca			;aa6e
	ld (bc),a		;aa6f
	nop			;aa70
	ld bc,00404h		;aa71
	ld (bc),a		;aa74
	inc b			;aa75
	nop			;aa76
	ld bc,00105h		;aa77
	ex af,af'		;aa7a
	dec b			;aa7b
	nop			;aa7c
	ld (bc),a		;aa7d
	ld bc,00100h		;aa7e
	add hl,bc		;aa81
	ex af,af'		;aa82
	inc bc			;aa83
	add hl,bc		;aa84
	nop			;aa85
	ld bc,00008h		;aa86
	ld bc,01018h		;aa89
	ld bc,00018h		;aa8c
	inc b			;aa8f
	ex af,af'		;aa90
	nop			;aa91
	ld bc,01018h		;aa92
	ld bc,00018h		;aa95
	ld (bc),a		;aa98
	nop			;aa99
	nop			;aa9a
	ld bc,01010h		;aa9b
	inc bc			;aa9e
	nop			;aa9f
	nop			;aaa0
	ld bc,01010h		;aaa1
	ld bc,00010h		;aaa4
	ld bc,00404h		;aaa7
	ld bc,01014h		;aaaa
	ld bc,00010h		;aaad
	ld bc,00000h		;aab0
	ld bc,01010h		;aab3
	ld bc,00010h		;aab6
	ld bc,00404h		;aab9
	ld bc,01010h		;aabc
	ld (bc),a		;aabf
	nop			;aac0
	nop			;aac1
	ld bc,00404h		;aac2
	ld bc,00004h		;aac5
	ld bc,01010h		;aac8
	ld bc,00010h		;aacb
	ld bc,00404h		;aace
	ld bc,00004h		;aad1
	ld bc,01014h		;aad4
	inc b			;aad7
	nop			;aad8
	nop			;aad9
	ld bc,00404h		;aada
	inc bc			;aadd
	inc b			;aade
	nop			;aadf
	ld bc,00000h		;aae0
	ld bc,02020h		;aae3
	ld bc,00a2ah		;aae6
	ld bc,0002ah		;aae9
	ld (bc),a		;aaec
	ld a,(bc)		;aaed
	nop			;aaee
	ld bc,00000h		;aaef
	ld bc,01010h		;aaf2
	ld bc,00404h		;aaf5
	ld bc,00004h		;aaf8
	ld bc,01111h		;aafb
	ld bc,00000h		;aafe
	ld bc,01010h		;ab01
	ld bc,00000h		;ab04
	ld bc,01010h		;ab07
	ld bc,00000h		;ab0a
	ld bc,01010h		;ab0d
	ld bc,00000h		;ab10
	ld bc,01010h		;ab13
	ld bc,00202h		;ab16
	ld (bc),a		;ab19
	ld (bc),a		;ab1a
	nop			;ab1b
	ld bc,0080ah		;ab1c
	ld bc,0000ah		;ab1f
	ld bc,00008h		;ab22
	ld bc,01111h		;ab25
	ld (bc),a		;ab28
	ld bc,00100h		;ab29
	dec d			;ab2c
	inc d			;ab2d
	ld bc,00005h		;ab2e
	ld bc,01015h		;ab31
	ld bc,00005h		;ab34
	ld bc,01015h		;ab37
	ld bc,00005h		;ab3a
	ld (bc),a		;ab3d
	dec d			;ab3e
	djnz lab42h		;ab3f
	dec d			;ab41
lab42h:
	nop			;ab42
	inc bc			;ab43
	dec b			;ab44
	nop			;ab45
	ld bc,00001h		;ab46
	ld (bc),a		;ab49
	nop			;ab4a
	nop			;ab4b
	ld bc,00808h		;ab4c
	rlca			;ab4f
	ex af,af'		;ab50
	nop			;ab51
	ld bc,0020ah		;ab52
	inc bc			;ab55
	ld a,(bc)		;ab56
	nop			;ab57
	ld bc,0202ah		;ab58
	ld bc,0002ah		;ab5b
	inc bc			;ab5e
	nop			;ab5f
	nop			;ab60
	ld bc,01010h		;ab61
	ld (bc),a		;ab64
	djnz lab67h		;ab65
lab67h:
	ld bc,00000h		;ab67
	ld bc,01414h		;ab6a
	ld bc,00014h		;ab6d
	ld bc,00004h		;ab70
	ld bc,01014h		;ab73
	ld bc,00014h		;ab76
	dec b			;ab79
	nop			;ab7a
	nop			;ab7b
	ld bc,02424h		;ab7c
	ld bc,00024h		;ab7f
	ld (bc),a		;ab82
	inc b			;ab83
	nop			;ab84
	ld bc,01010h		;ab85
	ld bc,00000h		;ab88
	ld bc,01414h		;ab8b
	ld bc,00004h		;ab8e
	ld bc,01014h		;ab91
	ld bc,00004h		;ab94
	ld bc,00000h		;ab97
	ld bc,01000h		;ab9a
	ld (bc),a		;ab9d
	nop			;ab9e
	nop			;ab9f
	ld bc,01010h		;aba0
	ld bc,00000h		;aba3
	ld bc,01010h		;aba6
	ld bc,00414h		;aba9
	ld bc,01014h		;abac
	ld bc,00014h		;abaf
	ld bc,00000h		;abb2
	ld bc,01000h		;abb5
	ld bc,00000h		;abb8
	ld bc,00808h		;abbb
	dec b			;abbe
	ex af,af'		;abbf
	nop			;abc0
	ld bc,01018h		;abc1
	ld (bc),a		;abc4
	ex af,af'		;abc5
	nop			;abc6
	ld bc,01018h		;abc7
	ld bc,00008h		;abca
	ld bc,01018h		;abcd
	ld bc,00000h		;abd0
	ld bc,01414h		;abd3
	ld (bc),a		;abd6
	inc b			;abd7
	nop			;abd8
	ld bc,01000h		;abd9
	ld bc,01010h		;abdc
	ld bc,00010h		;abdf
	ld bc,00202h		;abe2
	ld (bc),a		;abe5
	ld (bc),a		;abe6
	nop			;abe7
	inc b			;abe8
	nop			;abe9
	nop			;abea
	ld bc,00202h		;abeb
	inc b			;abee
	ld (bc),a		;abef
	nop			;abf0
	inc b			;abf1
	nop			;abf2
	nop			;abf3
	ld bc,00808h		;abf4
	ld bc,0020ah		;abf7
	inc bc			;abfa
	ld a,(bc)		;abfb
	nop			;abfc
	inc bc			;abfd
	nop			;abfe
	nop			;abff
	ld bc,00808h		;ac00
	ld (bc),a		;ac03
	ex af,af'		;ac04
	nop			;ac05
	inc bc			;ac06
	nop			;ac07
	nop			;ac08
	ld bc,01010h		;ac09
	ld bc,00414h		;ac0c
	ld (bc),a		;ac0f
	inc b			;ac10
	nop			;ac11
	ld bc,01014h		;ac12
	ld bc,00000h		;ac15
	ld bc,01010h		;ac18
	ld bc,00414h		;ac1b
	ld bc,00004h		;ac1e
	ld bc,01014h		;ac21
	ld bc,00004h		;ac24
	ld bc,01014h		;ac27
	ld bc,00010h		;ac2a
	ld bc,00000h		;ac2d
	ld bc,01414h		;ac30
	ld (bc),a		;ac33
	inc b			;ac34
	nop			;ac35
	ld bc,01014h		;ac36
	ld bc,00014h		;ac39
	inc bc			;ac3c
	nop			;ac3d
	nop			;ac3e
	ld bc,00808h		;ac3f
	ld a,(bc)		;ac42
	ex af,af'		;ac43
	nop			;ac44
	ld bc,02028h		;ac45
	ld bc,00028h		;ac48
	ld (bc),a		;ac4b
	nop			;ac4c
	nop			;ac4d
	ld bc,01010h		;ac4e
	ld bc,00111h		;ac51
	ld bc,00405h		;ac54
	ld bc,01011h		;ac57
	ld bc,00001h		;ac5a
	ld bc,01415h		;ac5d
	ld (bc),a		;ac60
	dec b			;ac61
	nop			;ac62
	ld bc,01011h		;ac63
	ld bc,00809h		;ac66
	ld (bc),a		;ac69
	add hl,bc		;ac6a
	nop			;ac6b
	ld bc,00001h		;ac6c
	ld bc,00000h		;ac6f
	ld bc,01818h		;ac72
	ld bc,00018h		;ac75
	ld (bc),a		;ac78
	ex af,af'		;ac79
	nop			;ac7a
	ld (bc),a		;ac7b
	nop			;ac7c
	nop			;ac7d
	ld bc,00505h		;ac7e
	ld bc,00005h		;ac81
	ld bc,01015h		;ac84
	ld (bc),a		;ac87
	dec b			;ac88
	nop			;ac89
	ld bc,01015h		;ac8a
	ld bc,00015h		;ac8d
	add hl,bc		;ac90
	dec b			;ac91
	nop			;ac92
	ld bc,00004h		;ac93
	ld bc,00206h		;ac96
	inc bc			;ac99
	ld b,000h		;ac9a
	ld bc,01012h		;ac9c
	ld bc,00010h		;ac9f
	inc bc			;aca2
	nop			;aca3
	nop			;aca4
	ld bc,00202h		;aca5
	dec b			;aca8
	ld (bc),a		;aca9
	nop			;acaa
	ld bc,0ffffh		;acab
	rst 38h			;acae
	rst 38h			;acaf
	rst 38h			;acb0
	rst 38h			;acb1
	rst 38h			;acb2
	rst 38h			;acb3
	ld d,000h		;acb4
	nop			;acb6
	ld bc,00202h		;acb7
	ld (bc),a		;acba
	ld (bc),a		;acbb
	nop			;acbc
	ld bc,0080ah		;acbd
	dec c			;acc0
	ld a,(bc)		;acc1
	nop			;acc2
	dec bc			;acc3
	nop			;acc4
	nop			;acc5
	ld bc,01010h		;acc6
	ld bc,00010h		;acc9
	dec b			;accc
	nop			;accd
	nop			;acce
	ld bc,00808h		;accf
	ex af,af'		;acd2
	ex af,af'		;acd3
	nop			;acd4
	ld bc,00109h		;acd5
	ld (bc),a		;acd8
	add hl,bc		;acd9
	nop			;acda
	inc bc			;acdb
	ld bc,00100h		;acdc
	dec b			;acdf
	inc b			;ace0
	inc c			;ace1
	dec b			;ace2
	nop			;ace3
	inc c			;ace4
	inc b			;ace5
	nop			;ace6
	ld bc,00206h		;ace7
	inc bc			;acea
	ld b,000h		;aceb
	dec c			;aced
	ld (bc),a		;acee
	nop			;acef
	inc b			;acf0
	nop			;acf1
	nop			;acf2
	ld bc,01010h		;acf3
	ld bc,00010h		;acf6
	dec b			;acf9
	nop			;acfa
	nop			;acfb
	ld bc,00808h		;acfc
	ld b,008h		;acff
	nop			;ad01
	rlca			;ad02
	nop			;ad03
	nop			;ad04
	ld bc,00404h		;ad05
	dec bc			;ad08
	inc b			;ad09
	nop			;ad0a
	inc d			;ad0b
	nop			;ad0c
	nop			;ad0d
	ld bc,01010h		;ad0e
	inc b			;ad11
	nop			;ad12
	nop			;ad13
	ld bc,00808h		;ad14
	rlca			;ad17
	ex af,af'		;ad18
	nop			;ad19
	ld bc,00109h		;ad1a
	rlca			;ad1d
	add hl,bc		;ad1e
	nop			;ad1f
	djnz lad23h		;ad20
	nop			;ad22
lad23h:
	inc c			;ad23
	nop			;ad24
	nop			;ad25
	ld bc,01010h		;ad26
	ld bc,00010h		;ad29
	ex af,af'		;ad2c
	nop			;ad2d
	nop			;ad2e
	ld bc,00a0ah		;ad2f
	ld b,00ah		;ad32
	nop			;ad34
	dec b			;ad35
	ex af,af'		;ad36
	nop			;ad37
	ld bc,00109h		;ad38
	ld bc,00009h		;ad3b
	inc bc			;ad3e
	ld bc,00100h		;ad3f
	dec b			;ad42
	inc b			;ad43
	ld bc,00005h		;ad44
	ld bc,00004h		;ad47
	dec b			;ad4a
	nop			;ad4b
	nop			;ad4c
	ld bc,01212h		;ad4d
	ld (bc),a		;ad50
	ld (de),a		;ad51
	nop			;ad52
	add hl,bc		;ad53
	ld (bc),a		;ad54
	nop			;ad55
	ld b,000h		;ad56
	nop			;ad58
	ld bc,00808h		;ad59
	inc b			;ad5c
	ex af,af'		;ad5d
	nop			;ad5e
	ld bc,00109h		;ad5f
	ld (bc),a		;ad62
	add hl,bc		;ad63
	nop			;ad64
	ld bc,00008h		;ad65
	ld bc,0020ah		;ad68
	ld (bc),a		;ad6b
	ld (bc),a		;ad6c
	nop			;ad6d
	ld bc,00406h		;ad6e
	rrca			;ad71
	ld b,000h		;ad72
	ld bc,00002h		;ad74
	inc bc			;ad77
	nop			;ad78
	nop			;ad79
	ld bc,00101h		;ad7a
	inc bc			;ad7d
	ld bc,00100h		;ad7e
	add hl,bc		;ad81
	ex af,af'		;ad82
	ex af,af'		;ad83
	add hl,bc		;ad84
	nop			;ad85
	ld b,008h		;ad86
	nop			;ad88
	ld b,000h		;ad89
	nop			;ad8b
	ld bc,00202h		;ad8c
	ld bc,00002h		;ad8f
	ld bc,00000h		;ad92
	ld bc,01010h		;ad95
	ld bc,00515h		;ad98
	ld bc,00005h		;ad9b
	ld bc,01015h		;ad9e
	ld bc,00809h		;ada1
	ld bc,01019h		;ada4
	ld bc,00008h		;ada7
	ld bc,01010h		;adaa
	ld bc,00000h		;adad
	ld bc,01515h		;adb0
	ld bc,00005h		;adb3
	ld bc,01015h		;adb6
	ld (bc),a		;adb9
	dec b			;adba
	nop			;adbb
	ld bc,01005h		;adbc
	dec b			;adbf
	nop			;adc0
	nop			;adc1
	ld bc,00606h		;adc2
	rlca			;adc5
	ld b,000h		;adc6
	ld bc,00002h		;adc8
	dec bc			;adcb
	nop			;adcc
	nop			;adcd
	ld bc,00404h		;adce
	ld bc,00206h		;add1
	ld bc,00006h		;add4
	rlca			;add7
	nop			;add8
	nop			;add9
	ld bc,01010h		;adda
	ld (bc),a		;addd
	djnz lade0h		;adde
lade0h:
	inc b			;ade0
	nop			;ade1
	nop			;ade2
	ld bc,00404h		;ade3
	inc bc			;ade6
	inc b			;ade7
	nop			;ade8
	dec b			;ade9
	nop			;adea
	nop			;adeb
	ld bc,00808h		;adec
	ld (bc),a		;adef
	ex af,af'		;adf0
	nop			;adf1
	ld bc,0020ah		;adf2
	ld a,(bc)		;adf5
	ld a,(bc)		;adf6
	nop			;adf7
	ld b,000h		;adf8
	nop			;adfa
	ld bc,00101h		;adfb
	dec b			;adfe
	ld bc,00700h		;adff
	nop			;ae02
	nop			;ae03
	ld bc,00808h		;ae04
	ld (bc),a		;ae07
	ex af,af'		;ae08
	nop			;ae09
	ld bc,00101h		;ae0a
	ld bc,00001h		;ae0d
	ld bc,01010h		;ae10
	ld bc,00010h		;ae13
	ld (bc),a		;ae16
	nop			;ae17
	nop			;ae18
	ld bc,00101h		;ae19
	ld bc,00001h		;ae1c
	ld bc,00405h		;ae1f
	ld (bc),a		;ae22
	dec b			;ae23
	nop			;ae24
	inc b			;ae25
	nop			;ae26
	nop			;ae27
	ld bc,00101h		;ae28
	ld (bc),a		;ae2b
	ld bc,00100h		;ae2c
	nop			;ae2f
	nop			;ae30
	ld bc,00808h		;ae31
	ld (bc),a		;ae34
	ex af,af'		;ae35
	nop			;ae36
	ld bc,00202h		;ae37
	ld (bc),a		;ae3a
	ld (bc),a		;ae3b
	nop			;ae3c
	ld bc,01010h		;ae3d
	ld bc,00010h		;ae40
	ld bc,00000h		;ae43
	ld bc,01010h		;ae46
	ld bc,00000h		;ae49
	ld bc,01010h		;ae4c
	ld bc,00010h		;ae4f
	ld bc,00202h		;ae52
	ld bc,01010h		;ae55
	ld bc,00000h		;ae58
	ld bc,01010h		;ae5b
	ld bc,00404h		;ae5e
	ld bc,00004h		;ae61
	ld bc,01216h		;ae64
	ld bc,00012h		;ae67
	ld bc,00000h		;ae6a
	ld bc,01010h		;ae6d
	ld bc,00010h		;ae70
	ld b,000h		;ae73
	nop			;ae75
	ld bc,00404h		;ae76
	inc b			;ae79
	inc b			;ae7a
	nop			;ae7b
	dec b			;ae7c
	nop			;ae7d
	nop			;ae7e
	ld bc,00202h		;ae7f
	ld bc,00002h		;ae82
	add hl,bc		;ae85
	nop			;ae86
	nop			;ae87
	ld bc,00101h		;ae88
	ld bc,00001h		;ae8b
	inc d			;ae8e
	nop			;ae8f
	nop			;ae90
	ld bc,00404h		;ae91
	dec b			;ae94
	inc b			;ae95
	nop			;ae96
	ld b,000h		;ae97
	nop			;ae99
	ld bc,00808h		;ae9a
	dec bc			;ae9d
	ex af,af'		;ae9e
	nop			;ae9f
	ex af,af'		;aea0
	nop			;aea1
	nop			;aea2
	ld bc,00202h		;aea3
	ld (bc),a		;aea6
	ld (bc),a		;aea7
	nop			;aea8
	ex af,af'		;aea9
	nop			;aeaa
	nop			;aeab
	ld bc,00202h		;aeac
	ex af,af'		;aeaf
	nop			;aeb0
	nop			;aeb1
	ld bc,00808h		;aeb2
	add hl,bc		;aeb5
	ex af,af'		;aeb6
	nop			;aeb7
	ld c,000h		;aeb8
	nop			;aeba
	ld bc,00101h		;aebb
	ld (bc),a		;aebe
	ld bc,00800h		;aebf
	nop			;aec2
	nop			;aec3
	ld bc,00101h		;aec4
	ld bc,00001h		;aec7
	ld de,00000h		;aeca
	ld bc,00404h		;aecd
	inc bc			;aed0
	inc b			;aed1
	nop			;aed2
	ld c,000h		;aed3
	nop			;aed5
	ld bc,00404h		;aed6
	ld (bc),a		;aed9
	inc b			;aeda
	nop			;aedb
	rrca			;aedc
	nop			;aedd
	nop			;aede
	ld bc,00404h		;aedf
	ld (bc),a		;aee2
	inc b			;aee3
	nop			;aee4
	dec bc			;aee5
	nop			;aee6
	nop			;aee7
	ld bc,00404h		;aee8
	inc bc			;aeeb
	inc b			;aeec
	nop			;aeed
	ld a,(bc)		;aeee
	nop			;aeef
	nop			;aef0
	ld bc,00404h		;aef1
	ld bc,00004h		;aef4
	ld b,000h		;aef7
	nop			;aef9
	ld bc,00808h		;aefa
	rrca			;aefd
	ex af,af'		;aefe
	nop			;aeff
	dec b			;af00
	nop			;af01
	nop			;af02
	ld bc,00404h		;af03
	ld bc,00004h		;af06
	inc bc			;af09
	nop			;af0a
	nop			;af0b
	ld bc,00404h		;af0c
	ld (bc),a		;af0f
	inc b			;af10
	nop			;af11
	rlca			;af12
	nop			;af13
	nop			;af14
	ld bc,00404h		;af15
	rlca			;af18
	nop			;af19
	nop			;af1a
	ld bc,00404h		;af1b
	ld bc,00004h		;af1e
	dec b			;af21
	nop			;af22
	nop			;af23
	ld bc,00404h		;af24
	ld (bc),a		;af27
	inc b			;af28
	nop			;af29
	add hl,bc		;af2a
	nop			;af2b
	nop			;af2c
	ld bc,00808h		;af2d
	ld bc,00008h		;af30
	ld bc,00109h		;af33
	rlca			;af36
	ld bc,00100h		;af37
	ex af,af'		;af3a
	ex af,af'		;af3b
	ld b,008h		;af3c
	nop			;af3e
	ld b,000h		;af3f
	nop			;af41
	ld bc,00101h		;af42
	ld bc,00001h		;af45
	rlca			;af48
	nop			;af49
	nop			;af4a
	ld bc,00a0ah		;af4b
	ld b,000h		;af4e
	nop			;af50
	ld bc,02020h		;af51
	ld bc,00222h		;af54
	ld bc,00002h		;af57
	dec b			;af5a
	nop			;af5b
	nop			;af5c
	ld bc,02222h		;af5d
	dec b			;af60
	nop			;af61
	nop			;af62
	ld bc,00202h		;af63
	ld bc,00002h		;af66
	inc b			;af69
	nop			;af6a
	nop			;af6b
	ld bc,00202h		;af6c
	dec c			;af6f
	nop			;af70
	nop			;af71
	ld bc,00202h		;af72
	ld bc,01012h		;af75
	ld bc,00010h		;af78
	ld bc,00000h		;af7b
	ld bc,01010h		;af7e
	ld bc,00000h		;af81
	ld bc,01010h		;af84
	inc bc			;af87
	nop			;af88
	nop			;af89
	ld bc,00404h		;af8a
	ld bc,00004h		;af8d
	ld b,000h		;af90
	nop			;af92
	ld bc,00101h		;af93
	ld bc,00001h		;af96
	dec b			;af99
	nop			;af9a
	nop			;af9b
	ld bc,00101h		;af9c
	ld bc,00001h		;af9f
	ld (bc),a		;afa2
	nop			;afa3
	nop			;afa4
	ld bc,01010h		;afa5
	ld bc,00202h		;afa8
	ld bc,01012h		;afab
	ld bc,00000h		;afae
	ld bc,01010h		;afb1
	dec bc			;afb4
	nop			;afb5
	nop			;afb6
	ld bc,01212h		;afb7
	ld bc,00012h		;afba
	ld bc,00002h		;afbd
	rlca			;afc0
	nop			;afc1
	nop			;afc2
	ld bc,01010h		;afc3
	inc bc			;afc6
	nop			;afc7
	nop			;afc8
	ld bc,00202h		;afc9
	ld bc,00002h		;afcc
	dec b			;afcf
	nop			;afd0
	nop			;afd1
	ld bc,01010h		;afd2
	ld (bc),a		;afd5
	djnz lafd8h		;afd6
lafd8h:
	inc bc			;afd8
	nop			;afd9
	nop			;afda
	ld bc,00202h		;afdb
	ld (bc),a		;afde
	ld (bc),a		;afdf
	nop			;afe0
	rlca			;afe1
	nop			;afe2
	nop			;afe3
	ld bc,00101h		;afe4
	ld (bc),a		;afe7
	ld bc,00100h		;afe8
	dec b			;afeb
	inc b			;afec
	dec b			;afed
	dec b			;afee
	nop			;afef
	ld a,(bc)		;aff0
	inc b			;aff1
	nop			;aff2
	ld bc,02024h		;aff3
	ld bc,00020h		;aff6
	rlca			;aff9
	nop			;affa
	nop			;affb
	ld bc,00808h		;affc
	ld bc,00008h		;afff
	ld b,000h		;b002
	nop			;b004
	ld bc,00202h		;b005
	ld bc,00406h		;b008
	ld bc,00006h		;b00b
	dec c			;b00e
	nop			;b00f
	nop			;b010
	ld bc,00202h		;b011
	ld bc,00002h		;b014
	ld bc,01012h		;b017
	ld bc,00010h		;b01a
	ld bc,00000h		;b01d
	ld bc,01010h		;b020
	ld bc,00212h		;b023
	ld bc,00002h		;b026
	ld bc,01012h		;b029
	ld bc,00012h		;b02c
	ld bc,00002h		;b02f
	ld bc,01012h		;b032
	ld bc,00012h		;b035
	ld (bc),a		;b038
	ld (bc),a		;b039
	nop			;b03a
	ld bc,0181ah		;b03b
	ld bc,0000ah		;b03e
	dec b			;b041
	nop			;b042
	nop			;b043
	ld bc,00808h		;b044
	ld bc,00008h		;b047
	ld bc,00101h		;b04a
	inc bc			;b04d
	ld bc,00100h		;b04e
	nop			;b051
	nop			;b052
	ld bc,00a0ah		;b053
	inc bc			;b056
	ld a,(bc)		;b057
	nop			;b058
	ld b,002h		;b059
	nop			;b05b
	ld bc,00000h		;b05c
	ld bc,00101h		;b05f
	ld (bc),a		;b062
	ld bc,00100h		;b063
	dec b			;b066
	inc b			;b067
	ld (bc),a		;b068
	dec b			;b069
	nop			;b06a
	ld a,(bc)		;b06b
	nop			;b06c
	nop			;b06d
	ld bc,00101h		;b06e
	ld a,(bc)		;b071
	ld bc,00100h		;b072
	dec b			;b075
	inc b			;b076
	ld bc,01015h		;b077
	ld bc,00014h		;b07a
	ld bc,00004h		;b07d
	ld bc,01014h		;b080
	ld bc,00014h		;b083
	ld bc,00004h		;b086
	ld bc,01014h		;b089
	ld bc,00004h		;b08c
	ld bc,01014h		;b08f
	ld bc,00014h		;b092
	ld bc,00004h		;b095
	ld bc,01216h		;b098
	ld bc,00016h		;b09b
	ex af,af'		;b09e
	nop			;b09f
	nop			;b0a0
	ld bc,00808h		;b0a1
	ld bc,00008h		;b0a4
	dec b			;b0a7
	nop			;b0a8
	nop			;b0a9
	ld bc,00101h		;b0aa
	ld b,001h		;b0ad
	nop			;b0af
	ex af,af'		;b0b0
	nop			;b0b1
	nop			;b0b2
	ld bc,01010h		;b0b3
	ld bc,00010h		;b0b6
	ld (bc),a		;b0b9
	nop			;b0ba
	nop			;b0bb
	ld bc,01010h		;b0bc
	ld bc,00010h		;b0bf
	ld (bc),a		;b0c2
	nop			;b0c3
	nop			;b0c4
	ld bc,01010h		;b0c5
	ld (bc),a		;b0c8
	nop			;b0c9
	nop			;b0ca
	ld bc,00202h		;b0cb
	dec b			;b0ce
	ld (bc),a		;b0cf
	nop			;b0d0
	ld bc,01012h		;b0d1
	ld bc,00012h		;b0d4
	ld bc,00002h		;b0d7
	ld bc,00000h		;b0da
	ld bc,01010h		;b0dd
	ld bc,00010h		;b0e0
	ld bc,00202h		;b0e3
	ld b,002h		;b0e6
	nop			;b0e8
	dec b			;b0e9
	nop			;b0ea
	nop			;b0eb
	ld bc,00101h		;b0ec
	inc c			;b0ef
	ld bc,00100h		;b0f0
	add hl,bc		;b0f3
	ex af,af'		;b0f4
	ld bc,00009h		;b0f5
	dec b			;b0f8
	ex af,af'		;b0f9
	nop			;b0fa
	ld bc,01018h		;b0fb
	ld bc,00018h		;b0fe
	ld bc,00008h		;b101
	ld bc,01010h		;b104
	ld bc,00000h		;b107
	ld bc,01010h		;b10a
	ld bc,00404h		;b10d
	ld bc,01014h		;b110
	ld bc,00004h		;b113
	ld (bc),a		;b116
	inc d			;b117
	djnz lb11bh		;b118
	inc d			;b11a
lb11bh:
	nop			;b11b
	inc bc			;b11c
	inc b			;b11d
	nop			;b11e
	ld bc,00206h		;b11f
	ld bc,00006h		;b122
	inc b			;b125
	nop			;b126
	nop			;b127
	ld bc,00808h		;b128
	dec b			;b12b
	ex af,af'		;b12c
	nop			;b12d
	inc b			;b12e
	nop			;b12f
	nop			;b130
	ld bc,00101h		;b131
	dec b			;b134
	ld bc,00100h		;b135
	ex af,af'		;b138
	ex af,af'		;b139
	rlca			;b13a
	ex af,af'		;b13b
	nop			;b13c
	dec b			;b13d
	nop			;b13e
	nop			;b13f
	ld bc,00202h		;b140
	ld (bc),a		;b143
	ld (bc),a		;b144
	nop			;b145
	ld b,000h		;b146
	nop			;b148
	ld bc,00404h		;b149
	ld bc,00004h		;b14c
	rlca			;b14f
	nop			;b150
	nop			;b151
	ld bc,00202h		;b152
	ld (bc),a		;b155
	ld (bc),a		;b156
	nop			;b157
	ld b,000h		;b158
	nop			;b15a
	ld bc,00202h		;b15b
	ld bc,00002h		;b15e
	inc bc			;b161
	nop			;b162
	nop			;b163
	ld bc,00101h		;b164
	inc bc			;b167
	ld bc,00100h		;b168
	nop			;b16b
	nop			;b16c
	ld bc,01010h		;b16d
	ld bc,00010h		;b170
	ld bc,00000h		;b173
	ld bc,01010h		;b176
	ld bc,00010h		;b179
	ld bc,00000h		;b17c
	ld bc,01414h		;b17f
	ld (bc),a		;b182
	inc b			;b183
	nop			;b184
	ld bc,01014h		;b185
	inc c			;b188
	nop			;b189
	nop			;b18a
	ld bc,00808h		;b18b
	ld bc,00008h		;b18e
	ld (bc),a		;b191
	nop			;b192
	nop			;b193
	ld bc,00404h		;b194
	inc b			;b197
	inc b			;b198
	nop			;b199
	dec b			;b19a
	nop			;b19b
	nop			;b19c
	ld bc,02424h		;b19d
	ld bc,00024h		;b1a0
	ld a,(de)		;b1a3
	nop			;b1a4
	nop			;b1a5
	ld bc,02222h		;b1a6
	ld bc,00022h		;b1a9
	ld a,(bc)		;b1ac
	nop			;b1ad
	nop			;b1ae
	ld bc,00202h		;b1af
	ld (bc),a		;b1b2
	ld (bc),a		;b1b3
	nop			;b1b4
	ex af,af'		;b1b5
	nop			;b1b6
	nop			;b1b7
	ld bc,01010h		;b1b8
	ld bc,00010h		;b1bb
	ld bc,00000h		;b1be
	ld bc,01010h		;b1c1
	ld bc,00010h		;b1c4
	ld bc,00000h		;b1c7
	ld bc,01010h		;b1ca
	ld bc,00010h		;b1cd
	ld bc,00000h		;b1d0
	ld bc,01010h		;b1d3
	ld (bc),a		;b1d6
	djnz lb1d9h		;b1d7
lb1d9h:
	ld bc,00404h		;b1d9
	ld (bc),a		;b1dc
	inc b			;b1dd
	nop			;b1de
	ld bc,01010h		;b1df
	ld bc,00010h		;b1e2
	ld bc,00000h		;b1e5
	ld bc,01010h		;b1e8
	ld bc,00010h		;b1eb
	ld bc,00202h		;b1ee
	ld bc,00002h		;b1f1
	ld bc,01012h		;b1f4
	ld bc,00012h		;b1f7
	ld bc,00002h		;b1fa
	ld bc,01012h		;b1fd
	ld bc,00012h		;b200
	ld bc,00002h		;b203
	ex af,af'		;b206
	nop			;b207
	nop			;b208
	ld bc,00101h		;b209
	ld c,001h		;b20c
	nop			;b20e
	rrca			;b20f
	nop			;b210
	nop			;b211
	ld bc,00808h		;b212
	rlca			;b215
	ex af,af'		;b216
	nop			;b217
	dec sp			;b218
	nop			;b219
	nop			;b21a
	ld bc,0ffffh		;b21b
	rst 38h			;b21e
	rst 38h			;b21f
	rst 38h			;b220
	rst 38h			;b221
	rst 38h			;b222
	rst 38h			;b223
	rst 38h			;b224
	rst 38h			;b225
	rst 38h			;b226
	rst 38h			;b227
	rst 38h			;b228
	rst 38h			;b229
	rst 38h			;b22a
	rst 38h			;b22b
	rst 38h			;b22c
	rst 38h			;b22d
	rst 38h			;b22e
	rst 38h			;b22f
	rst 38h			;b230
	rst 38h			;b231
	rst 38h			;b232
	rst 38h			;b233
	rst 38h			;b234
	rst 38h			;b235
	rst 38h			;b236
	rst 38h			;b237
	rst 38h			;b238
	rst 38h			;b239
	rst 38h			;b23a
	rst 38h			;b23b
	rst 38h			;b23c
	rst 38h			;b23d
	rst 38h			;b23e
	rst 38h			;b23f
	rst 38h			;b240
	rst 38h			;b241
	rst 38h			;b242
	rst 38h			;b243
	rst 38h			;b244
	rst 38h			;b245
	rst 38h			;b246
	rst 38h			;b247
	rst 38h			;b248
	rst 38h			;b249
	rst 38h			;b24a
	rst 38h			;b24b
	rst 38h			;b24c
	rst 38h			;b24d
	rst 38h			;b24e
	rst 38h			;b24f
	rst 38h			;b250
	rst 38h			;b251
	rst 38h			;b252
	rst 38h			;b253
	rst 38h			;b254
	rst 38h			;b255
	rst 38h			;b256
	rst 38h			;b257
	rst 38h			;b258
	rst 38h			;b259
	rst 38h			;b25a
	rst 38h			;b25b
	rst 38h			;b25c
	rst 38h			;b25d
	rst 38h			;b25e
	rst 38h			;b25f
	rst 38h			;b260
	rst 38h			;b261
	rst 38h			;b262
	rst 38h			;b263
	rst 38h			;b264
	rst 38h			;b265
	rst 38h			;b266
	rst 38h			;b267
	rst 38h			;b268
	rst 38h			;b269
	rst 38h			;b26a
	rst 38h			;b26b
	rst 38h			;b26c
	rst 38h			;b26d
	rst 38h			;b26e
	rst 38h			;b26f
	rst 38h			;b270
	rst 38h			;b271
	rst 38h			;b272
	rst 38h			;b273
	rst 38h			;b274
	rst 38h			;b275
	rst 38h			;b276
	rst 38h			;b277
	rst 38h			;b278
	rst 38h			;b279
	rst 38h			;b27a
	rst 38h			;b27b
	rst 38h			;b27c
	rst 38h			;b27d
	rst 38h			;b27e
	rst 38h			;b27f
	rst 38h			;b280
	rst 38h			;b281
	rst 38h			;b282
	rst 38h			;b283
	rst 38h			;b284
	rst 38h			;b285
	rst 38h			;b286
	rst 38h			;b287
	rst 38h			;b288
	rst 38h			;b289
	rst 38h			;b28a
	rst 38h			;b28b
	rst 38h			;b28c
	rst 38h			;b28d
	rst 38h			;b28e
	rst 38h			;b28f
	rst 38h			;b290
	rst 38h			;b291
	rst 38h			;b292
	rst 38h			;b293
	rst 38h			;b294
	rst 38h			;b295
	rst 38h			;b296
	rst 38h			;b297
	rst 38h			;b298
	rst 38h			;b299
	rst 38h			;b29a
	rst 38h			;b29b
	rst 38h			;b29c
	rst 38h			;b29d
	rst 38h			;b29e
	rst 38h			;b29f
	rst 38h			;b2a0
	rst 38h			;b2a1
	rst 38h			;b2a2
	rst 38h			;b2a3
	rst 38h			;b2a4
	rst 38h			;b2a5
	rst 38h			;b2a6
	rst 38h			;b2a7
	rst 38h			;b2a8
	rst 38h			;b2a9
	rst 38h			;b2aa
	rst 38h			;b2ab
	rst 38h			;b2ac
	rst 38h			;b2ad
	rst 38h			;b2ae
	rst 38h			;b2af
	rst 38h			;b2b0
	rst 38h			;b2b1
	rst 38h			;b2b2
	rst 38h			;b2b3
	rst 38h			;b2b4
	rst 38h			;b2b5
	rst 38h			;b2b6
	rst 38h			;b2b7
	rst 38h			;b2b8
	rst 38h			;b2b9
	rst 38h			;b2ba
	rst 38h			;b2bb
	rst 38h			;b2bc
	rst 38h			;b2bd
	rst 38h			;b2be
	rst 38h			;b2bf
	rst 38h			;b2c0
	rst 38h			;b2c1
	rst 38h			;b2c2
	rst 38h			;b2c3
	rst 38h			;b2c4
	rst 38h			;b2c5
	rst 38h			;b2c6
	rst 38h			;b2c7
	rst 38h			;b2c8
	rst 38h			;b2c9
	rst 38h			;b2ca
	rst 38h			;b2cb
	rst 38h			;b2cc
	rst 38h			;b2cd
	rst 38h			;b2ce
	rst 38h			;b2cf
	rst 38h			;b2d0
	rst 38h			;b2d1
	rst 38h			;b2d2
	rst 38h			;b2d3
	rst 38h			;b2d4
	rst 38h			;b2d5
	rst 38h			;b2d6
	rst 38h			;b2d7
	rst 38h			;b2d8
	rst 38h			;b2d9
	rst 38h			;b2da
	rst 38h			;b2db
	rst 38h			;b2dc
	rst 38h			;b2dd
	rst 38h			;b2de
	rst 38h			;b2df
	rst 38h			;b2e0
	rst 38h			;b2e1
	rst 38h			;b2e2
	rst 38h			;b2e3
	rst 38h			;b2e4
	rst 38h			;b2e5
	rst 38h			;b2e6
	rst 38h			;b2e7
	rst 38h			;b2e8
	rst 38h			;b2e9
	rst 38h			;b2ea
	rst 38h			;b2eb
	rst 38h			;b2ec
	rst 38h			;b2ed
	rst 38h			;b2ee
	rst 38h			;b2ef
	rst 38h			;b2f0
	rst 38h			;b2f1
	rst 38h			;b2f2
	rst 38h			;b2f3
	rst 38h			;b2f4
	rst 38h			;b2f5
	rst 38h			;b2f6
	rst 38h			;b2f7
	rst 38h			;b2f8
	rst 38h			;b2f9
	rst 38h			;b2fa
	rst 38h			;b2fb
	rst 38h			;b2fc
	rst 38h			;b2fd
	rst 38h			;b2fe
	rst 38h			;b2ff
	rst 38h			;b300
	rst 38h			;b301
	rst 38h			;b302
	rst 38h			;b303
	rst 38h			;b304
	rst 38h			;b305
	rst 38h			;b306
	rst 38h			;b307
	rst 38h			;b308
	rst 38h			;b309
	rst 38h			;b30a
	rst 38h			;b30b
	rst 38h			;b30c
	rst 38h			;b30d
	rst 38h			;b30e
	rst 38h			;b30f
	rst 38h			;b310
	rst 38h			;b311
	rst 38h			;b312
	rst 38h			;b313
	rst 38h			;b314
	rst 38h			;b315
	rst 38h			;b316
	rst 38h			;b317
	rst 38h			;b318
	rst 38h			;b319
	rst 38h			;b31a
	rst 38h			;b31b
	rst 38h			;b31c
	rst 38h			;b31d
	rst 38h			;b31e
	rst 38h			;b31f
	rst 38h			;b320
	rst 38h			;b321
	rst 38h			;b322
	rst 38h			;b323
	rst 38h			;b324
	rst 38h			;b325
	rst 38h			;b326
	rst 38h			;b327
	rst 38h			;b328
	rst 38h			;b329
	rst 38h			;b32a
	rst 38h			;b32b
	rst 38h			;b32c
	rst 38h			;b32d
	rst 38h			;b32e
	rst 38h			;b32f
	rst 38h			;b330
	rst 38h			;b331
	rst 38h			;b332
	rst 38h			;b333
	rst 38h			;b334
	rst 38h			;b335
	rst 38h			;b336
	rst 38h			;b337
	rst 38h			;b338
	rst 38h			;b339
	rst 38h			;b33a
	rst 38h			;b33b
	rst 38h			;b33c
	rst 38h			;b33d
	rst 38h			;b33e
	rst 38h			;b33f
	rst 38h			;b340
	rst 38h			;b341
	rst 38h			;b342
	rst 38h			;b343
	rst 38h			;b344
	rst 38h			;b345
	rst 38h			;b346
	rst 38h			;b347
	rst 38h			;b348
	rst 38h			;b349
	rst 38h			;b34a
	rst 38h			;b34b
	rst 38h			;b34c
	rst 38h			;b34d
	rst 38h			;b34e
	rst 38h			;b34f
	rst 38h			;b350
	rst 38h			;b351
	rst 38h			;b352
	rst 38h			;b353
	rst 38h			;b354
	rst 38h			;b355
	rst 38h			;b356
	rst 38h			;b357
	rst 38h			;b358
	rst 38h			;b359
	rst 38h			;b35a
	rst 38h			;b35b
	rst 38h			;b35c
	rst 38h			;b35d
	rst 38h			;b35e
	rst 38h			;b35f
	rst 38h			;b360
	rst 38h			;b361
	rst 38h			;b362
	rst 38h			;b363
	rst 38h			;b364
	rst 38h			;b365
	rst 38h			;b366
	rst 38h			;b367
	rst 38h			;b368
	rst 38h			;b369
	rst 38h			;b36a
	rst 38h			;b36b
	rst 38h			;b36c
	rst 38h			;b36d
	rst 38h			;b36e
	rst 38h			;b36f
	rst 38h			;b370
	rst 38h			;b371
	rst 38h			;b372
	rst 38h			;b373
	rst 38h			;b374
	rst 38h			;b375
	rst 38h			;b376
	rst 38h			;b377
	rst 38h			;b378
	rst 38h			;b379
	rst 38h			;b37a
	rst 38h			;b37b
	rst 38h			;b37c
	rst 38h			;b37d
	rst 38h			;b37e
	rst 38h			;b37f
	rst 38h			;b380
	rst 38h			;b381
	rst 38h			;b382
	rst 38h			;b383
	rst 38h			;b384
	rst 38h			;b385
	rst 38h			;b386
	rst 38h			;b387
	rst 38h			;b388
	rst 38h			;b389
	rst 38h			;b38a
	rst 38h			;b38b
	rst 38h			;b38c
	rst 38h			;b38d
	rst 38h			;b38e
	rst 38h			;b38f
	rst 38h			;b390
	rst 38h			;b391
	rst 38h			;b392
	rst 38h			;b393
	rst 38h			;b394
	rst 38h			;b395
	rst 38h			;b396
	rst 38h			;b397
	rst 38h			;b398
	rst 38h			;b399
	rst 38h			;b39a
	rst 38h			;b39b
	rst 38h			;b39c
	rst 38h			;b39d
	rst 38h			;b39e
	rst 38h			;b39f
	rst 38h			;b3a0
	rst 38h			;b3a1
	rst 38h			;b3a2
	rst 38h			;b3a3
	rst 38h			;b3a4
	rst 38h			;b3a5
	rst 38h			;b3a6
	rst 38h			;b3a7
	rst 38h			;b3a8
	rst 38h			;b3a9
	rst 38h			;b3aa
	rst 38h			;b3ab
	rst 38h			;b3ac
	rst 38h			;b3ad
	rst 38h			;b3ae
	rst 38h			;b3af
	rst 38h			;b3b0
	rst 38h			;b3b1
	rst 38h			;b3b2
	rst 38h			;b3b3
	rst 38h			;b3b4
	rst 38h			;b3b5
	rst 38h			;b3b6
	rst 38h			;b3b7
	rst 38h			;b3b8
	rst 38h			;b3b9
	rst 38h			;b3ba
	rst 38h			;b3bb
	rst 38h			;b3bc
	rst 38h			;b3bd
	rst 38h			;b3be
	rst 38h			;b3bf
	rst 38h			;b3c0
	rst 38h			;b3c1
	rst 38h			;b3c2
	rst 38h			;b3c3
	rst 38h			;b3c4
	rst 38h			;b3c5
	rst 38h			;b3c6
	rst 38h			;b3c7
	rst 38h			;b3c8
	rst 38h			;b3c9
	rst 38h			;b3ca
	rst 38h			;b3cb
	rst 38h			;b3cc
	rst 38h			;b3cd
	rst 38h			;b3ce
	rst 38h			;b3cf
	rst 38h			;b3d0
	rst 38h			;b3d1
	rst 38h			;b3d2
	rst 38h			;b3d3
	rst 38h			;b3d4
	rst 38h			;b3d5
	rst 38h			;b3d6
	rst 38h			;b3d7
	rst 38h			;b3d8
	rst 38h			;b3d9
	rst 38h			;b3da
	rst 38h			;b3db
	rst 38h			;b3dc
	rst 38h			;b3dd
	rst 38h			;b3de
	rst 38h			;b3df
	rst 38h			;b3e0
	rst 38h			;b3e1
	rst 38h			;b3e2
	rst 38h			;b3e3
	rst 38h			;b3e4
	rst 38h			;b3e5
	rst 38h			;b3e6
	rst 38h			;b3e7
	rst 38h			;b3e8
	rst 38h			;b3e9
	rst 38h			;b3ea
	rst 38h			;b3eb
	rst 38h			;b3ec
	rst 38h			;b3ed
	rst 38h			;b3ee
	rst 38h			;b3ef
	rst 38h			;b3f0
	rst 38h			;b3f1
	rst 38h			;b3f2
	rst 38h			;b3f3
	rst 38h			;b3f4
	rst 38h			;b3f5
	rst 38h			;b3f6
	rst 38h			;b3f7
	rst 38h			;b3f8
	rst 38h			;b3f9
	rst 38h			;b3fa
	rst 38h			;b3fb
	rst 38h			;b3fc
	rst 38h			;b3fd
	rst 38h			;b3fe
	rst 38h			;b3ff
	rst 38h			;b400
	rst 38h			;b401
	rst 38h			;b402
	rst 38h			;b403
	rst 38h			;b404
	rst 38h			;b405
	rst 38h			;b406
	rst 38h			;b407
	rst 38h			;b408
	rst 38h			;b409
	rst 38h			;b40a
	rst 38h			;b40b
	rst 38h			;b40c
	rst 38h			;b40d
	rst 38h			;b40e
	rst 38h			;b40f
	rst 38h			;b410
	rst 38h			;b411
	rst 38h			;b412
	rst 38h			;b413
	rst 38h			;b414
	rst 38h			;b415
	rst 38h			;b416
	rst 38h			;b417
	rst 38h			;b418
	rst 38h			;b419
	rst 38h			;b41a
	rst 38h			;b41b
	rst 38h			;b41c
	rst 38h			;b41d
	rst 38h			;b41e
	rst 38h			;b41f
	rst 38h			;b420
	rst 38h			;b421
	rst 38h			;b422
	rst 38h			;b423
	rst 38h			;b424
	rst 38h			;b425
	rst 38h			;b426
	rst 38h			;b427
	rst 38h			;b428
	rst 38h			;b429
	rst 38h			;b42a
	rst 38h			;b42b
	rst 38h			;b42c
	rst 38h			;b42d
	rst 38h			;b42e
	rst 38h			;b42f
	rst 38h			;b430
	rst 38h			;b431
	rst 38h			;b432
	rst 38h			;b433
	rst 38h			;b434
	rst 38h			;b435
	rst 38h			;b436
	rst 38h			;b437
	rst 38h			;b438
	rst 38h			;b439
	rst 38h			;b43a
	rst 38h			;b43b
	rst 38h			;b43c
	rst 38h			;b43d
	rst 38h			;b43e
	rst 38h			;b43f
	rst 38h			;b440
	rst 38h			;b441
	rst 38h			;b442
	rst 38h			;b443
	rst 38h			;b444
	rst 38h			;b445
	rst 38h			;b446
	rst 38h			;b447
	rst 38h			;b448
	rst 38h			;b449
	rst 38h			;b44a
	rst 38h			;b44b
	rst 38h			;b44c
	rst 38h			;b44d
	rst 38h			;b44e
	rst 38h			;b44f
	rst 38h			;b450
	rst 38h			;b451
	rst 38h			;b452
	rst 38h			;b453
	rst 38h			;b454
	rst 38h			;b455
	rst 38h			;b456
	rst 38h			;b457
	rst 38h			;b458
	rst 38h			;b459
	rst 38h			;b45a
	rst 38h			;b45b
	rst 38h			;b45c
	rst 38h			;b45d
	rst 38h			;b45e
	rst 38h			;b45f
	rst 38h			;b460
	rst 38h			;b461
	rst 38h			;b462
	rst 38h			;b463
	rst 38h			;b464
	rst 38h			;b465
	rst 38h			;b466
	rst 38h			;b467
	rst 38h			;b468
	rst 38h			;b469
	rst 38h			;b46a
	rst 38h			;b46b
	rst 38h			;b46c
	rst 38h			;b46d
	rst 38h			;b46e
	rst 38h			;b46f
	rst 38h			;b470
	rst 38h			;b471
	rst 38h			;b472
	rst 38h			;b473
	rst 38h			;b474
	rst 38h			;b475
	rst 38h			;b476
	rst 38h			;b477
	rst 38h			;b478
	rst 38h			;b479
	rst 38h			;b47a
	rst 38h			;b47b
	rst 38h			;b47c
	rst 38h			;b47d
	rst 38h			;b47e
	rst 38h			;b47f
	rst 38h			;b480
	rst 38h			;b481
	rst 38h			;b482
	rst 38h			;b483
	rst 38h			;b484
	rst 38h			;b485
	rst 38h			;b486
	rst 38h			;b487
	rst 38h			;b488
	rst 38h			;b489
	rst 38h			;b48a
	rst 38h			;b48b
	rst 38h			;b48c
	rst 38h			;b48d
	rst 38h			;b48e
	rst 38h			;b48f
	rst 38h			;b490
	rst 38h			;b491
	rst 38h			;b492
	rst 38h			;b493
	rst 38h			;b494
	rst 38h			;b495
	rst 38h			;b496
	rst 38h			;b497
	rst 38h			;b498
	rst 38h			;b499
	rst 38h			;b49a
	rst 38h			;b49b
	rst 38h			;b49c
	rst 38h			;b49d
	rst 38h			;b49e
	rst 38h			;b49f
	rst 38h			;b4a0
	rst 38h			;b4a1
	rst 38h			;b4a2
	rst 38h			;b4a3
	rst 38h			;b4a4
	rst 38h			;b4a5
	rst 38h			;b4a6
	rst 38h			;b4a7
	rst 38h			;b4a8
	rst 38h			;b4a9
	rst 38h			;b4aa
	rst 38h			;b4ab
	rst 38h			;b4ac
	rst 38h			;b4ad
	rst 38h			;b4ae
	rst 38h			;b4af
	rst 38h			;b4b0
	rst 38h			;b4b1
	rst 38h			;b4b2
	rst 38h			;b4b3
	rst 38h			;b4b4
	rst 38h			;b4b5
	rst 38h			;b4b6
	rst 38h			;b4b7
	rst 38h			;b4b8
	rst 38h			;b4b9
	rst 38h			;b4ba
	rst 38h			;b4bb
	rst 38h			;b4bc
	rst 38h			;b4bd
	rst 38h			;b4be
	rst 38h			;b4bf
	rst 38h			;b4c0
	rst 38h			;b4c1
	rst 38h			;b4c2
	rst 38h			;b4c3
	rst 38h			;b4c4
	rst 38h			;b4c5
	rst 38h			;b4c6
	rst 38h			;b4c7
	rst 38h			;b4c8
	rst 38h			;b4c9
	rst 38h			;b4ca
	rst 38h			;b4cb
	rst 38h			;b4cc
	rst 38h			;b4cd
	rst 38h			;b4ce
	rst 38h			;b4cf
	rst 38h			;b4d0
	rst 38h			;b4d1
	rst 38h			;b4d2
	rst 38h			;b4d3
	rst 38h			;b4d4
	rst 38h			;b4d5
	rst 38h			;b4d6
	rst 38h			;b4d7
	rst 38h			;b4d8
	rst 38h			;b4d9
	rst 38h			;b4da
	rst 38h			;b4db
	rst 38h			;b4dc
	rst 38h			;b4dd
	rst 38h			;b4de
	rst 38h			;b4df
	rst 38h			;b4e0
	rst 38h			;b4e1
	rst 38h			;b4e2
	rst 38h			;b4e3
	rst 38h			;b4e4
	rst 38h			;b4e5
	rst 38h			;b4e6
	rst 38h			;b4e7
	rst 38h			;b4e8
	rst 38h			;b4e9
	rst 38h			;b4ea
	rst 38h			;b4eb
	rst 38h			;b4ec
	rst 38h			;b4ed
	rst 38h			;b4ee
	rst 38h			;b4ef
	rst 38h			;b4f0
	rst 38h			;b4f1
	rst 38h			;b4f2
	rst 38h			;b4f3
	rst 38h			;b4f4
	rst 38h			;b4f5
	rst 38h			;b4f6
	rst 38h			;b4f7
	rst 38h			;b4f8
	rst 38h			;b4f9
	rst 38h			;b4fa
	rst 38h			;b4fb
	rst 38h			;b4fc
	rst 38h			;b4fd
	rst 38h			;b4fe
	rst 38h			;b4ff
	rst 38h			;b500
	rst 38h			;b501
	rst 38h			;b502
	rst 38h			;b503
	rst 38h			;b504
	rst 38h			;b505
	rst 38h			;b506
	rst 38h			;b507
	rst 38h			;b508
	rst 38h			;b509
	rst 38h			;b50a
	rst 38h			;b50b
	rst 38h			;b50c
	rst 38h			;b50d
	rst 38h			;b50e
	rst 38h			;b50f
	rst 38h			;b510
	rst 38h			;b511
	rst 38h			;b512
	rst 38h			;b513
	rst 38h			;b514
	rst 38h			;b515
	rst 38h			;b516
	rst 38h			;b517
	rst 38h			;b518
	rst 38h			;b519
	rst 38h			;b51a
	rst 38h			;b51b
	rst 38h			;b51c
	rst 38h			;b51d
	rst 38h			;b51e
	rst 38h			;b51f
	rst 38h			;b520
	rst 38h			;b521
	rst 38h			;b522
	rst 38h			;b523
	rst 38h			;b524
	rst 38h			;b525
	rst 38h			;b526
	rst 38h			;b527
	rst 38h			;b528
	rst 38h			;b529
	rst 38h			;b52a
	rst 38h			;b52b
	rst 38h			;b52c
	rst 38h			;b52d
	rst 38h			;b52e
	rst 38h			;b52f
	rst 38h			;b530
	rst 38h			;b531
	rst 38h			;b532
	rst 38h			;b533
	rst 38h			;b534
	rst 38h			;b535
	rst 38h			;b536
	rst 38h			;b537
	rst 38h			;b538
	rst 38h			;b539
	rst 38h			;b53a
	rst 38h			;b53b
	rst 38h			;b53c
	rst 38h			;b53d
	rst 38h			;b53e
	rst 38h			;b53f
	rst 38h			;b540
	rst 38h			;b541
	rst 38h			;b542
	rst 38h			;b543
	rst 38h			;b544
	rst 38h			;b545
	rst 38h			;b546
	rst 38h			;b547
	rst 38h			;b548
	rst 38h			;b549
	rst 38h			;b54a
	rst 38h			;b54b
	rst 38h			;b54c
	rst 38h			;b54d
	rst 38h			;b54e
	rst 38h			;b54f
	rst 38h			;b550
	rst 38h			;b551
	rst 38h			;b552
	rst 38h			;b553
	rst 38h			;b554
	rst 38h			;b555
	rst 38h			;b556
	rst 38h			;b557
	rst 38h			;b558
	rst 38h			;b559
	rst 38h			;b55a
	rst 38h			;b55b
	rst 38h			;b55c
	rst 38h			;b55d
	rst 38h			;b55e
	rst 38h			;b55f
	rst 38h			;b560
	rst 38h			;b561
	rst 38h			;b562
	rst 38h			;b563
	rst 38h			;b564
	rst 38h			;b565
	rst 38h			;b566
	rst 38h			;b567
	rst 38h			;b568
	rst 38h			;b569
	rst 38h			;b56a
	rst 38h			;b56b
	rst 38h			;b56c
	rst 38h			;b56d
	rst 38h			;b56e
	rst 38h			;b56f
	rst 38h			;b570
	rst 38h			;b571
	rst 38h			;b572
	rst 38h			;b573
	rst 38h			;b574
	rst 38h			;b575
	rst 38h			;b576
	rst 38h			;b577
	rst 38h			;b578
	rst 38h			;b579
	rst 38h			;b57a
	rst 38h			;b57b
	rst 38h			;b57c
	rst 38h			;b57d
	rst 38h			;b57e
	rst 38h			;b57f
	rst 38h			;b580
	rst 38h			;b581
	rst 38h			;b582
	rst 38h			;b583
	rst 38h			;b584
	rst 38h			;b585
	rst 38h			;b586
	rst 38h			;b587
	rst 38h			;b588
	rst 38h			;b589
	rst 38h			;b58a
	rst 38h			;b58b
	rst 38h			;b58c
	rst 38h			;b58d
	rst 38h			;b58e
	rst 38h			;b58f
	rst 38h			;b590
	rst 38h			;b591
	rst 38h			;b592
	rst 38h			;b593
	rst 38h			;b594
	rst 38h			;b595
	rst 38h			;b596
	rst 38h			;b597
	rst 38h			;b598
	rst 38h			;b599
	rst 38h			;b59a
	rst 38h			;b59b
	rst 38h			;b59c
	rst 38h			;b59d
	rst 38h			;b59e
	rst 38h			;b59f
	rst 38h			;b5a0
	rst 38h			;b5a1
	rst 38h			;b5a2
	rst 38h			;b5a3
	rst 38h			;b5a4
	rst 38h			;b5a5
	rst 38h			;b5a6
	rst 38h			;b5a7
	rst 38h			;b5a8
	rst 38h			;b5a9
	rst 38h			;b5aa
	rst 38h			;b5ab
	rst 38h			;b5ac
	rst 38h			;b5ad
	rst 38h			;b5ae
	rst 38h			;b5af
	rst 38h			;b5b0
	rst 38h			;b5b1
	rst 38h			;b5b2
	rst 38h			;b5b3
	rst 38h			;b5b4
	rst 38h			;b5b5
	rst 38h			;b5b6
	rst 38h			;b5b7
	rst 38h			;b5b8
	rst 38h			;b5b9
	rst 38h			;b5ba
	rst 38h			;b5bb
	rst 38h			;b5bc
	rst 38h			;b5bd
	rst 38h			;b5be
	rst 38h			;b5bf
	rst 38h			;b5c0
	rst 38h			;b5c1
	rst 38h			;b5c2
	rst 38h			;b5c3
	rst 38h			;b5c4
	rst 38h			;b5c5
	rst 38h			;b5c6
	rst 38h			;b5c7
	rst 38h			;b5c8
	rst 38h			;b5c9
	rst 38h			;b5ca
	rst 38h			;b5cb
	rst 38h			;b5cc
	rst 38h			;b5cd
	rst 38h			;b5ce
	rst 38h			;b5cf
	rst 38h			;b5d0
	rst 38h			;b5d1
	rst 38h			;b5d2
	rst 38h			;b5d3
	rst 38h			;b5d4
	rst 38h			;b5d5
	rst 38h			;b5d6
	rst 38h			;b5d7
	rst 38h			;b5d8
	rst 38h			;b5d9
	rst 38h			;b5da
	rst 38h			;b5db
	rst 38h			;b5dc
	rst 38h			;b5dd
	rst 38h			;b5de
	rst 38h			;b5df
	rst 38h			;b5e0
	rst 38h			;b5e1
	rst 38h			;b5e2
	rst 38h			;b5e3
	rst 38h			;b5e4
	rst 38h			;b5e5
	rst 38h			;b5e6
	rst 38h			;b5e7
	rst 38h			;b5e8
	rst 38h			;b5e9
	rst 38h			;b5ea
	rst 38h			;b5eb
	rst 38h			;b5ec
	rst 38h			;b5ed
	rst 38h			;b5ee
	rst 38h			;b5ef
	rst 38h			;b5f0
	rst 38h			;b5f1
	rst 38h			;b5f2
	rst 38h			;b5f3
	rst 38h			;b5f4
	rst 38h			;b5f5
	rst 38h			;b5f6
	rst 38h			;b5f7
	rst 38h			;b5f8
	rst 38h			;b5f9
	rst 38h			;b5fa
	rst 38h			;b5fb
	rst 38h			;b5fc
	rst 38h			;b5fd
	rst 38h			;b5fe
	rst 38h			;b5ff
	rst 38h			;b600
	rst 38h			;b601
	rst 38h			;b602
	rst 38h			;b603
	rst 38h			;b604
	rst 38h			;b605
	rst 38h			;b606
	rst 38h			;b607
	rst 38h			;b608
	rst 38h			;b609
	rst 38h			;b60a
	rst 38h			;b60b
	rst 38h			;b60c
	rst 38h			;b60d
	rst 38h			;b60e
	rst 38h			;b60f
	rst 38h			;b610
	rst 38h			;b611
	rst 38h			;b612
	rst 38h			;b613
	rst 38h			;b614
	rst 38h			;b615
	rst 38h			;b616
	rst 38h			;b617
	rst 38h			;b618
	rst 38h			;b619
	rst 38h			;b61a
	rst 38h			;b61b
	rst 38h			;b61c
	rst 38h			;b61d
	rst 38h			;b61e
	rst 38h			;b61f
	rst 38h			;b620
	rst 38h			;b621
	rst 38h			;b622
	rst 38h			;b623
	rst 38h			;b624
	rst 38h			;b625
	rst 38h			;b626
	rst 38h			;b627
	rst 38h			;b628
	rst 38h			;b629
	rst 38h			;b62a
	rst 38h			;b62b
	rst 38h			;b62c
	rst 38h			;b62d
	rst 38h			;b62e
	rst 38h			;b62f
	rst 38h			;b630
	rst 38h			;b631
	rst 38h			;b632
	rst 38h			;b633
	rst 38h			;b634
	rst 38h			;b635
	rst 38h			;b636
	rst 38h			;b637
	rst 38h			;b638
	rst 38h			;b639
	rst 38h			;b63a
	rst 38h			;b63b
	rst 38h			;b63c
	rst 38h			;b63d
	rst 38h			;b63e
	rst 38h			;b63f
	rst 38h			;b640
	rst 38h			;b641
	rst 38h			;b642
	rst 38h			;b643
	rst 38h			;b644
	rst 38h			;b645
	rst 38h			;b646
	rst 38h			;b647
	rst 38h			;b648
	rst 38h			;b649
	rst 38h			;b64a
	rst 38h			;b64b
	rst 38h			;b64c
	rst 38h			;b64d
	rst 38h			;b64e
	rst 38h			;b64f
	rst 38h			;b650
	rst 38h			;b651
	rst 38h			;b652
	rst 38h			;b653
	rst 38h			;b654
	rst 38h			;b655
	rst 38h			;b656
	rst 38h			;b657
	rst 38h			;b658
	rst 38h			;b659
	rst 38h			;b65a
	rst 38h			;b65b
	rst 38h			;b65c
	rst 38h			;b65d
	rst 38h			;b65e
	rst 38h			;b65f
	rst 38h			;b660
	rst 38h			;b661
	rst 38h			;b662
	rst 38h			;b663
	rst 38h			;b664
	rst 38h			;b665
	rst 38h			;b666
	rst 38h			;b667
	rst 38h			;b668
	rst 38h			;b669
	rst 38h			;b66a
	rst 38h			;b66b
	rst 38h			;b66c
	rst 38h			;b66d
	rst 38h			;b66e
	rst 38h			;b66f
	rst 38h			;b670
	rst 38h			;b671
	rst 38h			;b672
	rst 38h			;b673
	rst 38h			;b674
	rst 38h			;b675
	rst 38h			;b676
	rst 38h			;b677
	rst 38h			;b678
	rst 38h			;b679
	rst 38h			;b67a
	rst 38h			;b67b
	rst 38h			;b67c
	rst 38h			;b67d
	rst 38h			;b67e
	rst 38h			;b67f
	rst 38h			;b680
	rst 38h			;b681
	rst 38h			;b682
	rst 38h			;b683
	rst 38h			;b684
	rst 38h			;b685
	rst 38h			;b686
	rst 38h			;b687
	rst 38h			;b688
	rst 38h			;b689
	rst 38h			;b68a
	rst 38h			;b68b
	rst 38h			;b68c
	rst 38h			;b68d
	rst 38h			;b68e
	rst 38h			;b68f
	rst 38h			;b690
	rst 38h			;b691
	rst 38h			;b692
	rst 38h			;b693
	rst 38h			;b694
	rst 38h			;b695
	rst 38h			;b696
	rst 38h			;b697
	rst 38h			;b698
	rst 38h			;b699
	rst 38h			;b69a
	rst 38h			;b69b
	rst 38h			;b69c
	rst 38h			;b69d
	rst 38h			;b69e
	rst 38h			;b69f
	rst 38h			;b6a0
	rst 38h			;b6a1
	rst 38h			;b6a2
	rst 38h			;b6a3
	rst 38h			;b6a4
	rst 38h			;b6a5
	rst 38h			;b6a6
	rst 38h			;b6a7
	rst 38h			;b6a8
	rst 38h			;b6a9
	rst 38h			;b6aa
	rst 38h			;b6ab
	rst 38h			;b6ac
	rst 38h			;b6ad
	rst 38h			;b6ae
	rst 38h			;b6af
	rst 38h			;b6b0
	rst 38h			;b6b1
	rst 38h			;b6b2
	rst 38h			;b6b3
	rst 38h			;b6b4
	rst 38h			;b6b5
	rst 38h			;b6b6
	rst 38h			;b6b7
	rst 38h			;b6b8
	rst 38h			;b6b9
	rst 38h			;b6ba
	rst 38h			;b6bb
	rst 38h			;b6bc
	rst 38h			;b6bd
	rst 38h			;b6be
	rst 38h			;b6bf
	rst 38h			;b6c0
	rst 38h			;b6c1
	rst 38h			;b6c2
	rst 38h			;b6c3
	rst 38h			;b6c4
	rst 38h			;b6c5
	rst 38h			;b6c6
	rst 38h			;b6c7
	rst 38h			;b6c8
	rst 38h			;b6c9
	rst 38h			;b6ca
	rst 38h			;b6cb
	rst 38h			;b6cc
	rst 38h			;b6cd
	rst 38h			;b6ce
	rst 38h			;b6cf
	rst 38h			;b6d0
	rst 38h			;b6d1
	rst 38h			;b6d2
	rst 38h			;b6d3
	rst 38h			;b6d4
	rst 38h			;b6d5
	rst 38h			;b6d6
	rst 38h			;b6d7
	rst 38h			;b6d8
	rst 38h			;b6d9
	rst 38h			;b6da
	rst 38h			;b6db
	rst 38h			;b6dc
	rst 38h			;b6dd
	rst 38h			;b6de
	rst 38h			;b6df
	rst 38h			;b6e0
	rst 38h			;b6e1
	rst 38h			;b6e2
	rst 38h			;b6e3
	rst 38h			;b6e4
	rst 38h			;b6e5
	rst 38h			;b6e6
	rst 38h			;b6e7
	rst 38h			;b6e8
	rst 38h			;b6e9
	rst 38h			;b6ea
	rst 38h			;b6eb
	rst 38h			;b6ec
	rst 38h			;b6ed
	rst 38h			;b6ee
	rst 38h			;b6ef
	rst 38h			;b6f0
	rst 38h			;b6f1
	rst 38h			;b6f2
	rst 38h			;b6f3
	rst 38h			;b6f4
	rst 38h			;b6f5
	rst 38h			;b6f6
	rst 38h			;b6f7
	rst 38h			;b6f8
	rst 38h			;b6f9
	rst 38h			;b6fa
	rst 38h			;b6fb
	rst 38h			;b6fc
	rst 38h			;b6fd
	rst 38h			;b6fe
	rst 38h			;b6ff
	rst 38h			;b700
	rst 38h			;b701
	rst 38h			;b702
	rst 38h			;b703
	rst 38h			;b704
	rst 38h			;b705
	rst 38h			;b706
	rst 38h			;b707
	rst 38h			;b708
	rst 38h			;b709
	rst 38h			;b70a
	rst 38h			;b70b
	rst 38h			;b70c
	rst 38h			;b70d
	rst 38h			;b70e
	rst 38h			;b70f
	rst 38h			;b710
	rst 38h			;b711
	rst 38h			;b712
	rst 38h			;b713
	rst 38h			;b714
	rst 38h			;b715
	rst 38h			;b716
	rst 38h			;b717
	rst 38h			;b718
	rst 38h			;b719
	rst 38h			;b71a
	rst 38h			;b71b
	rst 38h			;b71c
	rst 38h			;b71d
	rst 38h			;b71e
	rst 38h			;b71f
	rst 38h			;b720
	rst 38h			;b721
	rst 38h			;b722
	rst 38h			;b723
	rst 38h			;b724
	rst 38h			;b725
	rst 38h			;b726
	rst 38h			;b727
	rst 38h			;b728
	rst 38h			;b729
	rst 38h			;b72a
	rst 38h			;b72b
	rst 38h			;b72c
	rst 38h			;b72d
	rst 38h			;b72e
	rst 38h			;b72f
	rst 38h			;b730
	rst 38h			;b731
	rst 38h			;b732
	rst 38h			;b733
	rst 38h			;b734
	rst 38h			;b735
	rst 38h			;b736
	rst 38h			;b737
	rst 38h			;b738
	rst 38h			;b739
	rst 38h			;b73a
	rst 38h			;b73b
	rst 38h			;b73c
	rst 38h			;b73d
	rst 38h			;b73e
	rst 38h			;b73f
	rst 38h			;b740
	rst 38h			;b741
	rst 38h			;b742
	rst 38h			;b743
	rst 38h			;b744
	rst 38h			;b745
	rst 38h			;b746
	rst 38h			;b747
	rst 38h			;b748
	rst 38h			;b749
	rst 38h			;b74a
	rst 38h			;b74b
	rst 38h			;b74c
	rst 38h			;b74d
	rst 38h			;b74e
	rst 38h			;b74f
	rst 38h			;b750
	rst 38h			;b751
	rst 38h			;b752
	rst 38h			;b753
	rst 38h			;b754
	rst 38h			;b755
	rst 38h			;b756
	rst 38h			;b757
	rst 38h			;b758
	rst 38h			;b759
	rst 38h			;b75a
	rst 38h			;b75b
	rst 38h			;b75c
	rst 38h			;b75d
	rst 38h			;b75e
	rst 38h			;b75f
	rst 38h			;b760
	rst 38h			;b761
	rst 38h			;b762
	rst 38h			;b763
	rst 38h			;b764
	rst 38h			;b765
	rst 38h			;b766
	rst 38h			;b767
	rst 38h			;b768
	rst 38h			;b769
	rst 38h			;b76a
	rst 38h			;b76b
	rst 38h			;b76c
	rst 38h			;b76d
	rst 38h			;b76e
	rst 38h			;b76f
	rst 38h			;b770
	rst 38h			;b771
	rst 38h			;b772
	rst 38h			;b773
	rst 38h			;b774
	rst 38h			;b775
	rst 38h			;b776
	rst 38h			;b777
	rst 38h			;b778
	rst 38h			;b779
	rst 38h			;b77a
	rst 38h			;b77b
	rst 38h			;b77c
	rst 38h			;b77d
	rst 38h			;b77e
	rst 38h			;b77f
	rst 38h			;b780
	rst 38h			;b781
	rst 38h			;b782
	rst 38h			;b783
	rst 38h			;b784
	rst 38h			;b785
	rst 38h			;b786
	rst 38h			;b787
	rst 38h			;b788
	rst 38h			;b789
	rst 38h			;b78a
	rst 38h			;b78b
	rst 38h			;b78c
	rst 38h			;b78d
	rst 38h			;b78e
	rst 38h			;b78f
	rst 38h			;b790
	rst 38h			;b791
	rst 38h			;b792
	rst 38h			;b793
	rst 38h			;b794
	rst 38h			;b795
	rst 38h			;b796
	rst 38h			;b797
	rst 38h			;b798
	rst 38h			;b799
	rst 38h			;b79a
	rst 38h			;b79b
	rst 38h			;b79c
	rst 38h			;b79d
	rst 38h			;b79e
	rst 38h			;b79f
	rst 38h			;b7a0
	rst 38h			;b7a1
	rst 38h			;b7a2
	rst 38h			;b7a3
	rst 38h			;b7a4
	rst 38h			;b7a5
	rst 38h			;b7a6
	rst 38h			;b7a7
	rst 38h			;b7a8
	rst 38h			;b7a9
	rst 38h			;b7aa
	rst 38h			;b7ab
	rst 38h			;b7ac
	rst 38h			;b7ad
	rst 38h			;b7ae
	rst 38h			;b7af
	rst 38h			;b7b0
	rst 38h			;b7b1
	rst 38h			;b7b2
	rst 38h			;b7b3
	rst 38h			;b7b4
	rst 38h			;b7b5
	rst 38h			;b7b6
	rst 38h			;b7b7
	rst 38h			;b7b8
	rst 38h			;b7b9
	rst 38h			;b7ba
	rst 38h			;b7bb
	rst 38h			;b7bc
	rst 38h			;b7bd
	rst 38h			;b7be
	rst 38h			;b7bf
	rst 38h			;b7c0
	rst 38h			;b7c1
	rst 38h			;b7c2
	rst 38h			;b7c3
	rst 38h			;b7c4
	rst 38h			;b7c5
	rst 38h			;b7c6
	rst 38h			;b7c7
	rst 38h			;b7c8
	rst 38h			;b7c9
	rst 38h			;b7ca
	rst 38h			;b7cb
	rst 38h			;b7cc
	rst 38h			;b7cd
	rst 38h			;b7ce
	rst 38h			;b7cf
	rst 38h			;b7d0
	rst 38h			;b7d1
	rst 38h			;b7d2
	rst 38h			;b7d3
	rst 38h			;b7d4
	rst 38h			;b7d5
	rst 38h			;b7d6
	rst 38h			;b7d7
	rst 38h			;b7d8
	rst 38h			;b7d9
	rst 38h			;b7da
	rst 38h			;b7db
	rst 38h			;b7dc
	rst 38h			;b7dd
	rst 38h			;b7de
	rst 38h			;b7df
	rst 38h			;b7e0
	rst 38h			;b7e1
	rst 38h			;b7e2
	rst 38h			;b7e3
	rst 38h			;b7e4
	rst 38h			;b7e5
	rst 38h			;b7e6
	rst 38h			;b7e7
	rst 38h			;b7e8
	rst 38h			;b7e9
	rst 38h			;b7ea
	rst 38h			;b7eb
	rst 38h			;b7ec
	rst 38h			;b7ed
	rst 38h			;b7ee
	rst 38h			;b7ef
	rst 38h			;b7f0
	rst 38h			;b7f1
	rst 38h			;b7f2
	rst 38h			;b7f3
	rst 38h			;b7f4
	rst 38h			;b7f5
	rst 38h			;b7f6
	rst 38h			;b7f7
	rst 38h			;b7f8
	rst 38h			;b7f9
	rst 38h			;b7fa
	rst 38h			;b7fb
	rst 38h			;b7fc
	rst 38h			;b7fd
	rst 38h			;b7fe
	rst 38h			;b7ff
	rst 38h			;b800
	rst 38h			;b801
	rst 38h			;b802
	rst 38h			;b803
	rst 38h			;b804
	rst 38h			;b805
	rst 38h			;b806
	rst 38h			;b807
	rst 38h			;b808
	rst 38h			;b809
	rst 38h			;b80a
	rst 38h			;b80b
	rst 38h			;b80c
	rst 38h			;b80d
	rst 38h			;b80e
	rst 38h			;b80f
	rst 38h			;b810
	rst 38h			;b811
	rst 38h			;b812
	rst 38h			;b813
	rst 38h			;b814
	rst 38h			;b815
	rst 38h			;b816
	rst 38h			;b817
	rst 38h			;b818
	rst 38h			;b819
	rst 38h			;b81a
	rst 38h			;b81b
	rst 38h			;b81c
	rst 38h			;b81d
	rst 38h			;b81e
	rst 38h			;b81f
	rst 38h			;b820
	rst 38h			;b821
	rst 38h			;b822
	rst 38h			;b823
	rst 38h			;b824
	rst 38h			;b825
	rst 38h			;b826
	rst 38h			;b827
	rst 38h			;b828
	rst 38h			;b829
	rst 38h			;b82a
	rst 38h			;b82b
	rst 38h			;b82c
	rst 38h			;b82d
	rst 38h			;b82e
	rst 38h			;b82f
	rst 38h			;b830
	rst 38h			;b831
	rst 38h			;b832
	rst 38h			;b833
	rst 38h			;b834
	rst 38h			;b835
	rst 38h			;b836
	rst 38h			;b837
	rst 38h			;b838
	rst 38h			;b839
	rst 38h			;b83a
	rst 38h			;b83b
	rst 38h			;b83c
	rst 38h			;b83d
	rst 38h			;b83e
	rst 38h			;b83f
	rst 38h			;b840
	rst 38h			;b841
	rst 38h			;b842
	rst 38h			;b843
	rst 38h			;b844
	rst 38h			;b845
	rst 38h			;b846
	rst 38h			;b847
	rst 38h			;b848
	rst 38h			;b849
	rst 38h			;b84a
	rst 38h			;b84b
	rst 38h			;b84c
	rst 38h			;b84d
	rst 38h			;b84e
	rst 38h			;b84f
	rst 38h			;b850
	rst 38h			;b851
	rst 38h			;b852
	rst 38h			;b853
	rst 38h			;b854
	rst 38h			;b855
	rst 38h			;b856
	rst 38h			;b857
	rst 38h			;b858
	rst 38h			;b859
	rst 38h			;b85a
	rst 38h			;b85b
	rst 38h			;b85c
	rst 38h			;b85d
	rst 38h			;b85e
	rst 38h			;b85f
	rst 38h			;b860
	rst 38h			;b861
	rst 38h			;b862
	rst 38h			;b863
	rst 38h			;b864
	rst 38h			;b865
	rst 38h			;b866
	rst 38h			;b867
	rst 38h			;b868
	rst 38h			;b869
	rst 38h			;b86a
	rst 38h			;b86b
	rst 38h			;b86c
	rst 38h			;b86d
	rst 38h			;b86e
	rst 38h			;b86f
	rst 38h			;b870
	rst 38h			;b871
	rst 38h			;b872
	rst 38h			;b873
	rst 38h			;b874
	rst 38h			;b875
	rst 38h			;b876
	rst 38h			;b877
	rst 38h			;b878
	rst 38h			;b879
	rst 38h			;b87a
	rst 38h			;b87b
	rst 38h			;b87c
	rst 38h			;b87d
	rst 38h			;b87e
	rst 38h			;b87f
	rst 38h			;b880
	rst 38h			;b881
	rst 38h			;b882
	rst 38h			;b883
	rst 38h			;b884
	rst 38h			;b885
	rst 38h			;b886
	rst 38h			;b887
	rst 38h			;b888
	rst 38h			;b889
	rst 38h			;b88a
	rst 38h			;b88b
	rst 38h			;b88c
	rst 38h			;b88d
	rst 38h			;b88e
	rst 38h			;b88f
	rst 38h			;b890
	rst 38h			;b891
	rst 38h			;b892
	rst 38h			;b893
	rst 38h			;b894
	rst 38h			;b895
	rst 38h			;b896
	rst 38h			;b897
	rst 38h			;b898
	rst 38h			;b899
	rst 38h			;b89a
	rst 38h			;b89b
	rst 38h			;b89c
	rst 38h			;b89d
	rst 38h			;b89e
	rst 38h			;b89f
	rst 38h			;b8a0
	rst 38h			;b8a1
	rst 38h			;b8a2
	rst 38h			;b8a3
	rst 38h			;b8a4
	rst 38h			;b8a5
	rst 38h			;b8a6
	rst 38h			;b8a7
	rst 38h			;b8a8
	rst 38h			;b8a9
	rst 38h			;b8aa
	rst 38h			;b8ab
	rst 38h			;b8ac
	rst 38h			;b8ad
	rst 38h			;b8ae
	rst 38h			;b8af
	rst 38h			;b8b0
	rst 38h			;b8b1
	rst 38h			;b8b2
	rst 38h			;b8b3
	rst 38h			;b8b4
	rst 38h			;b8b5
	rst 38h			;b8b6
	rst 38h			;b8b7
	rst 38h			;b8b8
	rst 38h			;b8b9
	rst 38h			;b8ba
	rst 38h			;b8bb
	rst 38h			;b8bc
	rst 38h			;b8bd
	rst 38h			;b8be
	rst 38h			;b8bf
	rst 38h			;b8c0
	rst 38h			;b8c1
	rst 38h			;b8c2
	rst 38h			;b8c3
	rst 38h			;b8c4
	rst 38h			;b8c5
	rst 38h			;b8c6
	rst 38h			;b8c7
	rst 38h			;b8c8
	rst 38h			;b8c9
	rst 38h			;b8ca
	rst 38h			;b8cb
	rst 38h			;b8cc
	rst 38h			;b8cd
	rst 38h			;b8ce
	rst 38h			;b8cf
	rst 38h			;b8d0
	rst 38h			;b8d1
	rst 38h			;b8d2
	rst 38h			;b8d3
	rst 38h			;b8d4
	rst 38h			;b8d5
	rst 38h			;b8d6
	rst 38h			;b8d7
	rst 38h			;b8d8
	rst 38h			;b8d9
	rst 38h			;b8da
	rst 38h			;b8db
	rst 38h			;b8dc
	rst 38h			;b8dd
	rst 38h			;b8de
	rst 38h			;b8df
	rst 38h			;b8e0
	rst 38h			;b8e1
	rst 38h			;b8e2
	rst 38h			;b8e3
	rst 38h			;b8e4
	rst 38h			;b8e5
	rst 38h			;b8e6
	rst 38h			;b8e7
	rst 38h			;b8e8
	rst 38h			;b8e9
	rst 38h			;b8ea
	rst 38h			;b8eb
	rst 38h			;b8ec
	rst 38h			;b8ed
	rst 38h			;b8ee
	rst 38h			;b8ef
	rst 38h			;b8f0
	rst 38h			;b8f1
	rst 38h			;b8f2
	rst 38h			;b8f3
	rst 38h			;b8f4
	rst 38h			;b8f5
	rst 38h			;b8f6
	rst 38h			;b8f7
	rst 38h			;b8f8
	rst 38h			;b8f9
	rst 38h			;b8fa
	rst 38h			;b8fb
	rst 38h			;b8fc
	rst 38h			;b8fd
	rst 38h			;b8fe
	rst 38h			;b8ff
	rst 38h			;b900
	rst 38h			;b901
	rst 38h			;b902
	rst 38h			;b903
	rst 38h			;b904
	rst 38h			;b905
	rst 38h			;b906
	rst 38h			;b907
	rst 38h			;b908
	rst 38h			;b909
	rst 38h			;b90a
	rst 38h			;b90b
	rst 38h			;b90c
	rst 38h			;b90d
	rst 38h			;b90e
	rst 38h			;b90f
	rst 38h			;b910
	rst 38h			;b911
	rst 38h			;b912
	rst 38h			;b913
	rst 38h			;b914
	rst 38h			;b915
	rst 38h			;b916
	rst 38h			;b917
	rst 38h			;b918
	rst 38h			;b919
	rst 38h			;b91a
	rst 38h			;b91b
	rst 38h			;b91c
	rst 38h			;b91d
	rst 38h			;b91e
	rst 38h			;b91f
	rst 38h			;b920
	rst 38h			;b921
	rst 38h			;b922
	rst 38h			;b923
	rst 38h			;b924
	rst 38h			;b925
	rst 38h			;b926
	rst 38h			;b927
	rst 38h			;b928
	rst 38h			;b929
	rst 38h			;b92a
	rst 38h			;b92b
	rst 38h			;b92c
	rst 38h			;b92d
	rst 38h			;b92e
	rst 38h			;b92f
	rst 38h			;b930
	rst 38h			;b931
	rst 38h			;b932
	rst 38h			;b933
	rst 38h			;b934
	rst 38h			;b935
	rst 38h			;b936
	rst 38h			;b937
	rst 38h			;b938
	rst 38h			;b939
	rst 38h			;b93a
	rst 38h			;b93b
	rst 38h			;b93c
	rst 38h			;b93d
	rst 38h			;b93e
	rst 38h			;b93f
	rst 38h			;b940
	rst 38h			;b941
	rst 38h			;b942
	rst 38h			;b943
	rst 38h			;b944
	rst 38h			;b945
	rst 38h			;b946
	rst 38h			;b947
	rst 38h			;b948
	rst 38h			;b949
	rst 38h			;b94a
	rst 38h			;b94b
	rst 38h			;b94c
	rst 38h			;b94d
	rst 38h			;b94e
	rst 38h			;b94f
	rst 38h			;b950
	rst 38h			;b951
	rst 38h			;b952
	rst 38h			;b953
	rst 38h			;b954
	rst 38h			;b955
	rst 38h			;b956
	rst 38h			;b957
	rst 38h			;b958
	rst 38h			;b959
	rst 38h			;b95a
	rst 38h			;b95b
	rst 38h			;b95c
	rst 38h			;b95d
	rst 38h			;b95e
	rst 38h			;b95f
	rst 38h			;b960
	rst 38h			;b961
	rst 38h			;b962
	rst 38h			;b963
	rst 38h			;b964
	rst 38h			;b965
	rst 38h			;b966
	rst 38h			;b967
	rst 38h			;b968
	rst 38h			;b969
	rst 38h			;b96a
	rst 38h			;b96b
	rst 38h			;b96c
	rst 38h			;b96d
	rst 38h			;b96e
	rst 38h			;b96f
	rst 38h			;b970
	rst 38h			;b971
	rst 38h			;b972
	rst 38h			;b973
	rst 38h			;b974
	rst 38h			;b975
	rst 38h			;b976
	rst 38h			;b977
	rst 38h			;b978
	rst 38h			;b979
	rst 38h			;b97a
	rst 38h			;b97b
	rst 38h			;b97c
	rst 38h			;b97d
	rst 38h			;b97e
	rst 38h			;b97f
	rst 38h			;b980
	rst 38h			;b981
	rst 38h			;b982
	rst 38h			;b983
	rst 38h			;b984
	rst 38h			;b985
	rst 38h			;b986
	rst 38h			;b987
	rst 38h			;b988
	rst 38h			;b989
	rst 38h			;b98a
	rst 38h			;b98b
	rst 38h			;b98c
	rst 38h			;b98d
	rst 38h			;b98e
	rst 38h			;b98f
	rst 38h			;b990
	rst 38h			;b991
	rst 38h			;b992
	rst 38h			;b993
	rst 38h			;b994
	rst 38h			;b995
	rst 38h			;b996
	rst 38h			;b997
	rst 38h			;b998
	rst 38h			;b999
	rst 38h			;b99a
	rst 38h			;b99b
	rst 38h			;b99c
	rst 38h			;b99d
	rst 38h			;b99e
	rst 38h			;b99f
	rst 38h			;b9a0
	rst 38h			;b9a1
	rst 38h			;b9a2
	rst 38h			;b9a3
	rst 38h			;b9a4
	rst 38h			;b9a5
	rst 38h			;b9a6
	rst 38h			;b9a7
	rst 38h			;b9a8
	rst 38h			;b9a9
	rst 38h			;b9aa
	rst 38h			;b9ab
	rst 38h			;b9ac
	rst 38h			;b9ad
	rst 38h			;b9ae
	rst 38h			;b9af
	rst 38h			;b9b0
	rst 38h			;b9b1
	rst 38h			;b9b2
	rst 38h			;b9b3
	rst 38h			;b9b4
	rst 38h			;b9b5
	rst 38h			;b9b6
	rst 38h			;b9b7
	rst 38h			;b9b8
	rst 38h			;b9b9
	rst 38h			;b9ba
	rst 38h			;b9bb
	rst 38h			;b9bc
	rst 38h			;b9bd
	rst 38h			;b9be
	rst 38h			;b9bf
	rst 38h			;b9c0
	rst 38h			;b9c1
	rst 38h			;b9c2
	rst 38h			;b9c3
	rst 38h			;b9c4
	rst 38h			;b9c5
	rst 38h			;b9c6
	rst 38h			;b9c7
	rst 38h			;b9c8
	rst 38h			;b9c9
	rst 38h			;b9ca
	rst 38h			;b9cb
	rst 38h			;b9cc
	rst 38h			;b9cd
	rst 38h			;b9ce
	rst 38h			;b9cf
	rst 38h			;b9d0
	rst 38h			;b9d1
	rst 38h			;b9d2
	rst 38h			;b9d3
	rst 38h			;b9d4
	rst 38h			;b9d5
	rst 38h			;b9d6
	rst 38h			;b9d7
	rst 38h			;b9d8
	rst 38h			;b9d9
	rst 38h			;b9da
	rst 38h			;b9db
	rst 38h			;b9dc
	rst 38h			;b9dd
	rst 38h			;b9de
	rst 38h			;b9df
	rst 38h			;b9e0
	rst 38h			;b9e1
	rst 38h			;b9e2
	rst 38h			;b9e3
	rst 38h			;b9e4
	rst 38h			;b9e5
	rst 38h			;b9e6
	rst 38h			;b9e7
	rst 38h			;b9e8
	rst 38h			;b9e9
	rst 38h			;b9ea
	rst 38h			;b9eb
	rst 38h			;b9ec
	rst 38h			;b9ed
	rst 38h			;b9ee
	rst 38h			;b9ef
	rst 38h			;b9f0
	rst 38h			;b9f1
	rst 38h			;b9f2
	rst 38h			;b9f3
	rst 38h			;b9f4
	rst 38h			;b9f5
	rst 38h			;b9f6
	rst 38h			;b9f7
	rst 38h			;b9f8
	rst 38h			;b9f9
	rst 38h			;b9fa
	rst 38h			;b9fb
	rst 38h			;b9fc
	rst 38h			;b9fd
	rst 38h			;b9fe
	rst 38h			;b9ff
	rst 38h			;ba00
	rst 38h			;ba01
	rst 38h			;ba02
	rst 38h			;ba03
	rst 38h			;ba04
	rst 38h			;ba05
	rst 38h			;ba06
	rst 38h			;ba07
	rst 38h			;ba08
	rst 38h			;ba09
	rst 38h			;ba0a
	rst 38h			;ba0b
	rst 38h			;ba0c
	rst 38h			;ba0d
	rst 38h			;ba0e
	rst 38h			;ba0f
	rst 38h			;ba10
	rst 38h			;ba11
	rst 38h			;ba12
	rst 38h			;ba13
	rst 38h			;ba14
	rst 38h			;ba15
	rst 38h			;ba16
	rst 38h			;ba17
	rst 38h			;ba18
	rst 38h			;ba19
	rst 38h			;ba1a
	rst 38h			;ba1b
	rst 38h			;ba1c
	rst 38h			;ba1d
	rst 38h			;ba1e
	rst 38h			;ba1f
	rst 38h			;ba20
	rst 38h			;ba21
	rst 38h			;ba22
	rst 38h			;ba23
	rst 38h			;ba24
	rst 38h			;ba25
	rst 38h			;ba26
	rst 38h			;ba27
	rst 38h			;ba28
	rst 38h			;ba29
	rst 38h			;ba2a
	rst 38h			;ba2b
	rst 38h			;ba2c
	rst 38h			;ba2d
	rst 38h			;ba2e
	rst 38h			;ba2f
	rst 38h			;ba30
	rst 38h			;ba31
	rst 38h			;ba32
	rst 38h			;ba33
	rst 38h			;ba34
	rst 38h			;ba35
	rst 38h			;ba36
	rst 38h			;ba37
	rst 38h			;ba38
	rst 38h			;ba39
	rst 38h			;ba3a
	rst 38h			;ba3b
	rst 38h			;ba3c
	rst 38h			;ba3d
	rst 38h			;ba3e
	rst 38h			;ba3f
	rst 38h			;ba40
	rst 38h			;ba41
	rst 38h			;ba42
	rst 38h			;ba43
	rst 38h			;ba44
	rst 38h			;ba45
	rst 38h			;ba46
	rst 38h			;ba47
	rst 38h			;ba48
	rst 38h			;ba49
	rst 38h			;ba4a
	rst 38h			;ba4b
	rst 38h			;ba4c
	rst 38h			;ba4d
	rst 38h			;ba4e
	rst 38h			;ba4f
	rst 38h			;ba50
	rst 38h			;ba51
	rst 38h			;ba52
	rst 38h			;ba53
	rst 38h			;ba54
	rst 38h			;ba55
	rst 38h			;ba56
	rst 38h			;ba57
	rst 38h			;ba58
	rst 38h			;ba59
	rst 38h			;ba5a
	rst 38h			;ba5b
	rst 38h			;ba5c
	rst 38h			;ba5d
	rst 38h			;ba5e
	rst 38h			;ba5f
	rst 38h			;ba60
	rst 38h			;ba61
	rst 38h			;ba62
	rst 38h			;ba63
	rst 38h			;ba64
	rst 38h			;ba65
	rst 38h			;ba66
	rst 38h			;ba67
	rst 38h			;ba68
	rst 38h			;ba69
	rst 38h			;ba6a
	rst 38h			;ba6b
	rst 38h			;ba6c
	rst 38h			;ba6d
	rst 38h			;ba6e
	rst 38h			;ba6f
	rst 38h			;ba70
	rst 38h			;ba71
	rst 38h			;ba72
	rst 38h			;ba73
	rst 38h			;ba74
	rst 38h			;ba75
	rst 38h			;ba76
	rst 38h			;ba77
	rst 38h			;ba78
	rst 38h			;ba79
	rst 38h			;ba7a
	rst 38h			;ba7b
	rst 38h			;ba7c
	rst 38h			;ba7d
	rst 38h			;ba7e
	rst 38h			;ba7f
	rst 38h			;ba80
	rst 38h			;ba81
	rst 38h			;ba82
	rst 38h			;ba83
	rst 38h			;ba84
	rst 38h			;ba85
	rst 38h			;ba86
	rst 38h			;ba87
	rst 38h			;ba88
	rst 38h			;ba89
	rst 38h			;ba8a
	rst 38h			;ba8b
	rst 38h			;ba8c
	rst 38h			;ba8d
	rst 38h			;ba8e
	rst 38h			;ba8f
	rst 38h			;ba90
	rst 38h			;ba91
	rst 38h			;ba92
	rst 38h			;ba93
	rst 38h			;ba94
	rst 38h			;ba95
	rst 38h			;ba96
	rst 38h			;ba97
	rst 38h			;ba98
	rst 38h			;ba99
	rst 38h			;ba9a
	rst 38h			;ba9b
	rst 38h			;ba9c
	rst 38h			;ba9d
	rst 38h			;ba9e
	rst 38h			;ba9f
	rst 38h			;baa0
	rst 38h			;baa1
	rst 38h			;baa2
	rst 38h			;baa3
	rst 38h			;baa4
	rst 38h			;baa5
	rst 38h			;baa6
	rst 38h			;baa7
	rst 38h			;baa8
	rst 38h			;baa9
	rst 38h			;baaa
	rst 38h			;baab
	rst 38h			;baac
	rst 38h			;baad
	rst 38h			;baae
	rst 38h			;baaf
	rst 38h			;bab0
	rst 38h			;bab1
	rst 38h			;bab2
	rst 38h			;bab3
	rst 38h			;bab4
	rst 38h			;bab5
	rst 38h			;bab6
	rst 38h			;bab7
	rst 38h			;bab8
	rst 38h			;bab9
	rst 38h			;baba
	rst 38h			;babb
	rst 38h			;babc
	rst 38h			;babd
	rst 38h			;babe
	rst 38h			;babf
	rst 38h			;bac0
	rst 38h			;bac1
	rst 38h			;bac2
	rst 38h			;bac3
	rst 38h			;bac4
	rst 38h			;bac5
	rst 38h			;bac6
	rst 38h			;bac7
	rst 38h			;bac8
	rst 38h			;bac9
	rst 38h			;baca
	rst 38h			;bacb
	rst 38h			;bacc
	rst 38h			;bacd
	rst 38h			;bace
	rst 38h			;bacf
	rst 38h			;bad0
	rst 38h			;bad1
	rst 38h			;bad2
	rst 38h			;bad3
	rst 38h			;bad4
	rst 38h			;bad5
	rst 38h			;bad6
	rst 38h			;bad7
	rst 38h			;bad8
	rst 38h			;bad9
	rst 38h			;bada
	rst 38h			;badb
	rst 38h			;badc
	rst 38h			;badd
	rst 38h			;bade
	rst 38h			;badf
	rst 38h			;bae0
	rst 38h			;bae1
	rst 38h			;bae2
	rst 38h			;bae3
	rst 38h			;bae4
	rst 38h			;bae5
	rst 38h			;bae6
	rst 38h			;bae7
	rst 38h			;bae8
	rst 38h			;bae9
	rst 38h			;baea
	rst 38h			;baeb
	rst 38h			;baec
	rst 38h			;baed
	rst 38h			;baee
	rst 38h			;baef
	rst 38h			;baf0
	rst 38h			;baf1
	rst 38h			;baf2
	rst 38h			;baf3
	rst 38h			;baf4
	rst 38h			;baf5
	rst 38h			;baf6
	rst 38h			;baf7
	rst 38h			;baf8
	rst 38h			;baf9
	rst 38h			;bafa
	rst 38h			;bafb
	rst 38h			;bafc
	rst 38h			;bafd
	rst 38h			;bafe
	rst 38h			;baff
	rst 38h			;bb00
	rst 38h			;bb01
	rst 38h			;bb02
	rst 38h			;bb03
	rst 38h			;bb04
	rst 38h			;bb05
	rst 38h			;bb06
	rst 38h			;bb07
	rst 38h			;bb08
	rst 38h			;bb09
	rst 38h			;bb0a
	rst 38h			;bb0b
	rst 38h			;bb0c
	rst 38h			;bb0d
	rst 38h			;bb0e
	rst 38h			;bb0f
	rst 38h			;bb10
	rst 38h			;bb11
	rst 38h			;bb12
	rst 38h			;bb13
	rst 38h			;bb14
	rst 38h			;bb15
	rst 38h			;bb16
	rst 38h			;bb17
	rst 38h			;bb18
	rst 38h			;bb19
	rst 38h			;bb1a
	rst 38h			;bb1b
	rst 38h			;bb1c
	rst 38h			;bb1d
	rst 38h			;bb1e
	rst 38h			;bb1f
	rst 38h			;bb20
	rst 38h			;bb21
	rst 38h			;bb22
	rst 38h			;bb23
	rst 38h			;bb24
	rst 38h			;bb25
	rst 38h			;bb26
	rst 38h			;bb27
	rst 38h			;bb28
	rst 38h			;bb29
	rst 38h			;bb2a
	rst 38h			;bb2b
	rst 38h			;bb2c
	rst 38h			;bb2d
	rst 38h			;bb2e
	rst 38h			;bb2f
	rst 38h			;bb30
	rst 38h			;bb31
	rst 38h			;bb32
	rst 38h			;bb33
	rst 38h			;bb34
	rst 38h			;bb35
	rst 38h			;bb36
	rst 38h			;bb37
	rst 38h			;bb38
	rst 38h			;bb39
	rst 38h			;bb3a
	rst 38h			;bb3b
	rst 38h			;bb3c
	rst 38h			;bb3d
	rst 38h			;bb3e
	rst 38h			;bb3f
	rst 38h			;bb40
	rst 38h			;bb41
	rst 38h			;bb42
	rst 38h			;bb43
	rst 38h			;bb44
	rst 38h			;bb45
	rst 38h			;bb46
	rst 38h			;bb47
	rst 38h			;bb48
	rst 38h			;bb49
	rst 38h			;bb4a
	rst 38h			;bb4b
	rst 38h			;bb4c
	rst 38h			;bb4d
	rst 38h			;bb4e
	rst 38h			;bb4f
	rst 38h			;bb50
	rst 38h			;bb51
	rst 38h			;bb52
	rst 38h			;bb53
	rst 38h			;bb54
	rst 38h			;bb55
	rst 38h			;bb56
	rst 38h			;bb57
	rst 38h			;bb58
	rst 38h			;bb59
	rst 38h			;bb5a
	rst 38h			;bb5b
	rst 38h			;bb5c
	rst 38h			;bb5d
	rst 38h			;bb5e
	rst 38h			;bb5f
	rst 38h			;bb60
	rst 38h			;bb61
	rst 38h			;bb62
	rst 38h			;bb63
	rst 38h			;bb64
	rst 38h			;bb65
	rst 38h			;bb66
	rst 38h			;bb67
	rst 38h			;bb68
	rst 38h			;bb69
	rst 38h			;bb6a
	rst 38h			;bb6b
	rst 38h			;bb6c
	rst 38h			;bb6d
	rst 38h			;bb6e
	rst 38h			;bb6f
	rst 38h			;bb70
	rst 38h			;bb71
	rst 38h			;bb72
	rst 38h			;bb73
	rst 38h			;bb74
	rst 38h			;bb75
	rst 38h			;bb76
	rst 38h			;bb77
	rst 38h			;bb78
	rst 38h			;bb79
	rst 38h			;bb7a
	rst 38h			;bb7b
	rst 38h			;bb7c
	rst 38h			;bb7d
	rst 38h			;bb7e
	rst 38h			;bb7f
	rst 38h			;bb80
	rst 38h			;bb81
	rst 38h			;bb82
	rst 38h			;bb83
	rst 38h			;bb84
	rst 38h			;bb85
	rst 38h			;bb86
	rst 38h			;bb87
	rst 38h			;bb88
	rst 38h			;bb89
	rst 38h			;bb8a
	rst 38h			;bb8b
	rst 38h			;bb8c
	rst 38h			;bb8d
	rst 38h			;bb8e
	rst 38h			;bb8f
	rst 38h			;bb90
	rst 38h			;bb91
	rst 38h			;bb92
	rst 38h			;bb93
	rst 38h			;bb94
	rst 38h			;bb95
	rst 38h			;bb96
	rst 38h			;bb97
	rst 38h			;bb98
	rst 38h			;bb99
	rst 38h			;bb9a
	rst 38h			;bb9b
	rst 38h			;bb9c
	rst 38h			;bb9d
	rst 38h			;bb9e
	rst 38h			;bb9f
	rst 38h			;bba0
	rst 38h			;bba1
	rst 38h			;bba2
	rst 38h			;bba3
	rst 38h			;bba4
	rst 38h			;bba5
	rst 38h			;bba6
	rst 38h			;bba7
	rst 38h			;bba8
	rst 38h			;bba9
	rst 38h			;bbaa
	rst 38h			;bbab
	rst 38h			;bbac
	rst 38h			;bbad
	rst 38h			;bbae
	rst 38h			;bbaf
	rst 38h			;bbb0
	rst 38h			;bbb1
	rst 38h			;bbb2
	rst 38h			;bbb3
	rst 38h			;bbb4
	rst 38h			;bbb5
	rst 38h			;bbb6
	rst 38h			;bbb7
	rst 38h			;bbb8
	rst 38h			;bbb9
	rst 38h			;bbba
	rst 38h			;bbbb
	rst 38h			;bbbc
	rst 38h			;bbbd
	rst 38h			;bbbe
	rst 38h			;bbbf
	rst 38h			;bbc0
	rst 38h			;bbc1
	rst 38h			;bbc2
	rst 38h			;bbc3
	rst 38h			;bbc4
	rst 38h			;bbc5
	rst 38h			;bbc6
	rst 38h			;bbc7
	rst 38h			;bbc8
	rst 38h			;bbc9
	rst 38h			;bbca
	rst 38h			;bbcb
	rst 38h			;bbcc
	rst 38h			;bbcd
	rst 38h			;bbce
	rst 38h			;bbcf
	rst 38h			;bbd0
	rst 38h			;bbd1
	rst 38h			;bbd2
	rst 38h			;bbd3
	rst 38h			;bbd4
	rst 38h			;bbd5
	rst 38h			;bbd6
	rst 38h			;bbd7
	rst 38h			;bbd8
	rst 38h			;bbd9
	rst 38h			;bbda
	rst 38h			;bbdb
	rst 38h			;bbdc
	rst 38h			;bbdd
	rst 38h			;bbde
	rst 38h			;bbdf
	rst 38h			;bbe0
	rst 38h			;bbe1
	rst 38h			;bbe2
	rst 38h			;bbe3
	rst 38h			;bbe4
	rst 38h			;bbe5
	rst 38h			;bbe6
	rst 38h			;bbe7
	rst 38h			;bbe8
	rst 38h			;bbe9
	rst 38h			;bbea
	rst 38h			;bbeb
	rst 38h			;bbec
	rst 38h			;bbed
	rst 38h			;bbee
	rst 38h			;bbef
	rst 38h			;bbf0
	rst 38h			;bbf1
	rst 38h			;bbf2
	rst 38h			;bbf3
	rst 38h			;bbf4
	rst 38h			;bbf5
	rst 38h			;bbf6
	rst 38h			;bbf7
	rst 38h			;bbf8
	rst 38h			;bbf9
	rst 38h			;bbfa
	rst 38h			;bbfb
	rst 38h			;bbfc
	rst 38h			;bbfd
	rst 38h			;bbfe
	rst 38h			;bbff
	rst 38h			;bc00
	rst 38h			;bc01
	rst 38h			;bc02
	rst 38h			;bc03
	rst 38h			;bc04
	rst 38h			;bc05
	rst 38h			;bc06
	rst 38h			;bc07
	rst 38h			;bc08
	rst 38h			;bc09
	rst 38h			;bc0a
	rst 38h			;bc0b
	rst 38h			;bc0c
	rst 38h			;bc0d
	rst 38h			;bc0e
	rst 38h			;bc0f
	rst 38h			;bc10
	rst 38h			;bc11
	rst 38h			;bc12
	rst 38h			;bc13
	rst 38h			;bc14
	rst 38h			;bc15
	rst 38h			;bc16
	rst 38h			;bc17
	rst 38h			;bc18
	rst 38h			;bc19
	rst 38h			;bc1a
	rst 38h			;bc1b
	rst 38h			;bc1c
	rst 38h			;bc1d
	rst 38h			;bc1e
	rst 38h			;bc1f
	rst 38h			;bc20
	rst 38h			;bc21
	rst 38h			;bc22
	rst 38h			;bc23
	rst 38h			;bc24
	rst 38h			;bc25
	rst 38h			;bc26
	rst 38h			;bc27
	rst 38h			;bc28
	rst 38h			;bc29
	rst 38h			;bc2a
	rst 38h			;bc2b
	rst 38h			;bc2c
	rst 38h			;bc2d
	rst 38h			;bc2e
	rst 38h			;bc2f
	rst 38h			;bc30
	rst 38h			;bc31
	rst 38h			;bc32
	rst 38h			;bc33
	rst 38h			;bc34
	rst 38h			;bc35
	rst 38h			;bc36
	rst 38h			;bc37
	rst 38h			;bc38
	rst 38h			;bc39
	rst 38h			;bc3a
	rst 38h			;bc3b
	rst 38h			;bc3c
	rst 38h			;bc3d
	rst 38h			;bc3e
	rst 38h			;bc3f
	rst 38h			;bc40
	rst 38h			;bc41
	rst 38h			;bc42
	rst 38h			;bc43
	rst 38h			;bc44
	rst 38h			;bc45
	rst 38h			;bc46
	rst 38h			;bc47
	rst 38h			;bc48
	rst 38h			;bc49
	rst 38h			;bc4a
	rst 38h			;bc4b
	rst 38h			;bc4c
	rst 38h			;bc4d
	rst 38h			;bc4e
	rst 38h			;bc4f
	rst 38h			;bc50
	rst 38h			;bc51
	rst 38h			;bc52
	rst 38h			;bc53
	rst 38h			;bc54
	rst 38h			;bc55
	rst 38h			;bc56
	rst 38h			;bc57
	rst 38h			;bc58
	rst 38h			;bc59
	rst 38h			;bc5a
	rst 38h			;bc5b
	rst 38h			;bc5c
	rst 38h			;bc5d
	rst 38h			;bc5e
	rst 38h			;bc5f
	rst 38h			;bc60
	rst 38h			;bc61
	rst 38h			;bc62
	rst 38h			;bc63
	rst 38h			;bc64
	rst 38h			;bc65
	rst 38h			;bc66
	rst 38h			;bc67
	rst 38h			;bc68
	rst 38h			;bc69
	rst 38h			;bc6a
	rst 38h			;bc6b
	rst 38h			;bc6c
	rst 38h			;bc6d
	rst 38h			;bc6e
	rst 38h			;bc6f
	rst 38h			;bc70
	rst 38h			;bc71
	rst 38h			;bc72
	rst 38h			;bc73
	rst 38h			;bc74
	rst 38h			;bc75
	rst 38h			;bc76
	rst 38h			;bc77
	rst 38h			;bc78
	rst 38h			;bc79
	rst 38h			;bc7a
	rst 38h			;bc7b
	rst 38h			;bc7c
	rst 38h			;bc7d
	rst 38h			;bc7e
	rst 38h			;bc7f
	rst 38h			;bc80
	rst 38h			;bc81
	rst 38h			;bc82
	rst 38h			;bc83
	rst 38h			;bc84
	rst 38h			;bc85
	rst 38h			;bc86
	rst 38h			;bc87
	rst 38h			;bc88
	rst 38h			;bc89
	rst 38h			;bc8a
	rst 38h			;bc8b
	rst 38h			;bc8c
	rst 38h			;bc8d
	rst 38h			;bc8e
	rst 38h			;bc8f
	rst 38h			;bc90
	rst 38h			;bc91
	rst 38h			;bc92
	rst 38h			;bc93
	rst 38h			;bc94
	rst 38h			;bc95
	rst 38h			;bc96
	rst 38h			;bc97
	rst 38h			;bc98
	rst 38h			;bc99
	rst 38h			;bc9a
	rst 38h			;bc9b
	rst 38h			;bc9c
	rst 38h			;bc9d
	rst 38h			;bc9e
	rst 38h			;bc9f
	rst 38h			;bca0
	rst 38h			;bca1
	rst 38h			;bca2
	rst 38h			;bca3
	rst 38h			;bca4
	rst 38h			;bca5
	rst 38h			;bca6
	rst 38h			;bca7
	rst 38h			;bca8
	rst 38h			;bca9
	rst 38h			;bcaa
	rst 38h			;bcab
	rst 38h			;bcac
	rst 38h			;bcad
	rst 38h			;bcae
	rst 38h			;bcaf
	rst 38h			;bcb0
	rst 38h			;bcb1
	rst 38h			;bcb2
	rst 38h			;bcb3
	rst 38h			;bcb4
	rst 38h			;bcb5
	rst 38h			;bcb6
	rst 38h			;bcb7
	rst 38h			;bcb8
	rst 38h			;bcb9
	rst 38h			;bcba
	rst 38h			;bcbb
	rst 38h			;bcbc
	rst 38h			;bcbd
	rst 38h			;bcbe
	rst 38h			;bcbf
	rst 38h			;bcc0
	rst 38h			;bcc1
	rst 38h			;bcc2
	rst 38h			;bcc3
	rst 38h			;bcc4
	rst 38h			;bcc5
	rst 38h			;bcc6
	rst 38h			;bcc7
	rst 38h			;bcc8
	rst 38h			;bcc9
	rst 38h			;bcca
	rst 38h			;bccb
	rst 38h			;bccc
	rst 38h			;bccd
	rst 38h			;bcce
	rst 38h			;bccf
	rst 38h			;bcd0
	rst 38h			;bcd1
	rst 38h			;bcd2
	rst 38h			;bcd3
	rst 38h			;bcd4
	rst 38h			;bcd5
	rst 38h			;bcd6
	rst 38h			;bcd7
	rst 38h			;bcd8
	rst 38h			;bcd9
	rst 38h			;bcda
	rst 38h			;bcdb
	rst 38h			;bcdc
	rst 38h			;bcdd
	rst 38h			;bcde
	rst 38h			;bcdf
	rst 38h			;bce0
	rst 38h			;bce1
	rst 38h			;bce2
	rst 38h			;bce3
	rst 38h			;bce4
	rst 38h			;bce5
	rst 38h			;bce6
	rst 38h			;bce7
	rst 38h			;bce8
	rst 38h			;bce9
	rst 38h			;bcea
	rst 38h			;bceb
	rst 38h			;bcec
	rst 38h			;bced
	rst 38h			;bcee
	rst 38h			;bcef
	rst 38h			;bcf0
	rst 38h			;bcf1
	rst 38h			;bcf2
	rst 38h			;bcf3
	rst 38h			;bcf4
	rst 38h			;bcf5
	rst 38h			;bcf6
	rst 38h			;bcf7
	rst 38h			;bcf8
	rst 38h			;bcf9
	rst 38h			;bcfa
	rst 38h			;bcfb
	rst 38h			;bcfc
	rst 38h			;bcfd
	rst 38h			;bcfe
	rst 38h			;bcff
	rst 38h			;bd00
	rst 38h			;bd01
	rst 38h			;bd02
	rst 38h			;bd03
	rst 38h			;bd04
	rst 38h			;bd05
	rst 38h			;bd06
	rst 38h			;bd07
	rst 38h			;bd08
	rst 38h			;bd09
	rst 38h			;bd0a
	rst 38h			;bd0b
	rst 38h			;bd0c
	rst 38h			;bd0d
	rst 38h			;bd0e
	rst 38h			;bd0f
	rst 38h			;bd10
	rst 38h			;bd11
	rst 38h			;bd12
	rst 38h			;bd13
	rst 38h			;bd14
	rst 38h			;bd15
	rst 38h			;bd16
	rst 38h			;bd17
	rst 38h			;bd18
	rst 38h			;bd19
	rst 38h			;bd1a
	rst 38h			;bd1b
	rst 38h			;bd1c
	rst 38h			;bd1d
	rst 38h			;bd1e
	rst 38h			;bd1f
	rst 38h			;bd20
	rst 38h			;bd21
	rst 38h			;bd22
	rst 38h			;bd23
	rst 38h			;bd24
	rst 38h			;bd25
	rst 38h			;bd26
	rst 38h			;bd27
	rst 38h			;bd28
	rst 38h			;bd29
	rst 38h			;bd2a
	rst 38h			;bd2b
	rst 38h			;bd2c
	rst 38h			;bd2d
	rst 38h			;bd2e
	rst 38h			;bd2f
	rst 38h			;bd30
	rst 38h			;bd31
	rst 38h			;bd32
	rst 38h			;bd33
	rst 38h			;bd34
	rst 38h			;bd35
	rst 38h			;bd36
	rst 38h			;bd37
	rst 38h			;bd38
	rst 38h			;bd39
	rst 38h			;bd3a
	rst 38h			;bd3b
	rst 38h			;bd3c
	rst 38h			;bd3d
	rst 38h			;bd3e
	rst 38h			;bd3f
	rst 38h			;bd40
	rst 38h			;bd41
	rst 38h			;bd42
	rst 38h			;bd43
	rst 38h			;bd44
	rst 38h			;bd45
	rst 38h			;bd46
	rst 38h			;bd47
	rst 38h			;bd48
	rst 38h			;bd49
	rst 38h			;bd4a
	rst 38h			;bd4b
	rst 38h			;bd4c
	rst 38h			;bd4d
	rst 38h			;bd4e
	rst 38h			;bd4f
	rst 38h			;bd50
	rst 38h			;bd51
	rst 38h			;bd52
	rst 38h			;bd53
	rst 38h			;bd54
	rst 38h			;bd55
	rst 38h			;bd56
	rst 38h			;bd57
	rst 38h			;bd58
	rst 38h			;bd59
	rst 38h			;bd5a
	rst 38h			;bd5b
	rst 38h			;bd5c
	rst 38h			;bd5d
	rst 38h			;bd5e
	rst 38h			;bd5f
	rst 38h			;bd60
	rst 38h			;bd61
	rst 38h			;bd62
	rst 38h			;bd63
	rst 38h			;bd64
	rst 38h			;bd65
	rst 38h			;bd66
	rst 38h			;bd67
	rst 38h			;bd68
	rst 38h			;bd69
	rst 38h			;bd6a
	rst 38h			;bd6b
	rst 38h			;bd6c
	rst 38h			;bd6d
	rst 38h			;bd6e
	rst 38h			;bd6f
	rst 38h			;bd70
	rst 38h			;bd71
	rst 38h			;bd72
	rst 38h			;bd73
	rst 38h			;bd74
	rst 38h			;bd75
	rst 38h			;bd76
	rst 38h			;bd77
	rst 38h			;bd78
	rst 38h			;bd79
	rst 38h			;bd7a
	rst 38h			;bd7b
	rst 38h			;bd7c
	rst 38h			;bd7d
	rst 38h			;bd7e
	rst 38h			;bd7f
	rst 38h			;bd80
	rst 38h			;bd81
	rst 38h			;bd82
	rst 38h			;bd83
	rst 38h			;bd84
	rst 38h			;bd85
	rst 38h			;bd86
	rst 38h			;bd87
	rst 38h			;bd88
	rst 38h			;bd89
	rst 38h			;bd8a
	rst 38h			;bd8b
	rst 38h			;bd8c
	rst 38h			;bd8d
	rst 38h			;bd8e
	rst 38h			;bd8f
	rst 38h			;bd90
	rst 38h			;bd91
	rst 38h			;bd92
	rst 38h			;bd93
	rst 38h			;bd94
	rst 38h			;bd95
	rst 38h			;bd96
	rst 38h			;bd97
	rst 38h			;bd98
	rst 38h			;bd99
	rst 38h			;bd9a
	rst 38h			;bd9b
	rst 38h			;bd9c
	rst 38h			;bd9d
	rst 38h			;bd9e
	rst 38h			;bd9f
	rst 38h			;bda0
	rst 38h			;bda1
	rst 38h			;bda2
	rst 38h			;bda3
	rst 38h			;bda4
	rst 38h			;bda5
	rst 38h			;bda6
	rst 38h			;bda7
	rst 38h			;bda8
	rst 38h			;bda9
	rst 38h			;bdaa
	rst 38h			;bdab
	rst 38h			;bdac
	rst 38h			;bdad
	rst 38h			;bdae
	rst 38h			;bdaf
	rst 38h			;bdb0
	rst 38h			;bdb1
	rst 38h			;bdb2
	rst 38h			;bdb3
	rst 38h			;bdb4
	rst 38h			;bdb5
	rst 38h			;bdb6
	rst 38h			;bdb7
	rst 38h			;bdb8
	rst 38h			;bdb9
	rst 38h			;bdba
	rst 38h			;bdbb
	rst 38h			;bdbc
	rst 38h			;bdbd
	rst 38h			;bdbe
	rst 38h			;bdbf
	rst 38h			;bdc0
	rst 38h			;bdc1
	rst 38h			;bdc2
	rst 38h			;bdc3
	rst 38h			;bdc4
	rst 38h			;bdc5
	rst 38h			;bdc6
	rst 38h			;bdc7
	rst 38h			;bdc8
	rst 38h			;bdc9
	rst 38h			;bdca
	rst 38h			;bdcb
	rst 38h			;bdcc
	rst 38h			;bdcd
	rst 38h			;bdce
	rst 38h			;bdcf
	rst 38h			;bdd0
	rst 38h			;bdd1
	rst 38h			;bdd2
	rst 38h			;bdd3
	rst 38h			;bdd4
	rst 38h			;bdd5
	rst 38h			;bdd6
	rst 38h			;bdd7
	rst 38h			;bdd8
	rst 38h			;bdd9
	rst 38h			;bdda
	rst 38h			;bddb
	rst 38h			;bddc
	rst 38h			;bddd
	rst 38h			;bdde
	rst 38h			;bddf
	rst 38h			;bde0
	rst 38h			;bde1
	rst 38h			;bde2
	rst 38h			;bde3
	rst 38h			;bde4
	rst 38h			;bde5
	rst 38h			;bde6
	rst 38h			;bde7
	rst 38h			;bde8
	rst 38h			;bde9
	rst 38h			;bdea
	rst 38h			;bdeb
	rst 38h			;bdec
	rst 38h			;bded
	rst 38h			;bdee
	rst 38h			;bdef
	rst 38h			;bdf0
	rst 38h			;bdf1
	rst 38h			;bdf2
	rst 38h			;bdf3
	rst 38h			;bdf4
	rst 38h			;bdf5
	rst 38h			;bdf6
	rst 38h			;bdf7
	rst 38h			;bdf8
	rst 38h			;bdf9
	rst 38h			;bdfa
	rst 38h			;bdfb
	rst 38h			;bdfc
	rst 38h			;bdfd
	rst 38h			;bdfe
	rst 38h			;bdff
	rst 38h			;be00
	rst 38h			;be01
	rst 38h			;be02
	rst 38h			;be03
	rst 38h			;be04
	rst 38h			;be05
	rst 38h			;be06
	rst 38h			;be07
	rst 38h			;be08
	rst 38h			;be09
	rst 38h			;be0a
	rst 38h			;be0b
	rst 38h			;be0c
	rst 38h			;be0d
	rst 38h			;be0e
	rst 38h			;be0f
	rst 38h			;be10
	rst 38h			;be11
	rst 38h			;be12
	rst 38h			;be13
	rst 38h			;be14
	rst 38h			;be15
	rst 38h			;be16
	rst 38h			;be17
	rst 38h			;be18
	rst 38h			;be19
	rst 38h			;be1a
	rst 38h			;be1b
	rst 38h			;be1c
	rst 38h			;be1d
	rst 38h			;be1e
	rst 38h			;be1f
	rst 38h			;be20
	rst 38h			;be21
	rst 38h			;be22
	rst 38h			;be23
	rst 38h			;be24
	rst 38h			;be25
	rst 38h			;be26
	rst 38h			;be27
	rst 38h			;be28
	rst 38h			;be29
	rst 38h			;be2a
	rst 38h			;be2b
	rst 38h			;be2c
	rst 38h			;be2d
	rst 38h			;be2e
	rst 38h			;be2f
	rst 38h			;be30
	rst 38h			;be31
	rst 38h			;be32
	rst 38h			;be33
	rst 38h			;be34
	rst 38h			;be35
	rst 38h			;be36
	rst 38h			;be37
	rst 38h			;be38
	rst 38h			;be39
	rst 38h			;be3a
	rst 38h			;be3b
	rst 38h			;be3c
	rst 38h			;be3d
	rst 38h			;be3e
	rst 38h			;be3f
	rst 38h			;be40
	rst 38h			;be41
	rst 38h			;be42
	rst 38h			;be43
	rst 38h			;be44
	rst 38h			;be45
	rst 38h			;be46
	rst 38h			;be47
	rst 38h			;be48
	rst 38h			;be49
	rst 38h			;be4a
	rst 38h			;be4b
	rst 38h			;be4c
	rst 38h			;be4d
	rst 38h			;be4e
	rst 38h			;be4f
	rst 38h			;be50
	rst 38h			;be51
	rst 38h			;be52
	rst 38h			;be53
	rst 38h			;be54
	rst 38h			;be55
	rst 38h			;be56
	rst 38h			;be57
	rst 38h			;be58
	rst 38h			;be59
	rst 38h			;be5a
	rst 38h			;be5b
	rst 38h			;be5c
	rst 38h			;be5d
	rst 38h			;be5e
	rst 38h			;be5f
	rst 38h			;be60
	rst 38h			;be61
	rst 38h			;be62
	rst 38h			;be63
	rst 38h			;be64
	rst 38h			;be65
	rst 38h			;be66
	rst 38h			;be67
	rst 38h			;be68
	rst 38h			;be69
	rst 38h			;be6a
	rst 38h			;be6b
	rst 38h			;be6c
	rst 38h			;be6d
	rst 38h			;be6e
	rst 38h			;be6f
	rst 38h			;be70
	rst 38h			;be71
	rst 38h			;be72
	rst 38h			;be73
	rst 38h			;be74
	rst 38h			;be75
	rst 38h			;be76
	rst 38h			;be77
	rst 38h			;be78
	rst 38h			;be79
	rst 38h			;be7a
	rst 38h			;be7b
	rst 38h			;be7c
	rst 38h			;be7d
	rst 38h			;be7e
	rst 38h			;be7f
	rst 38h			;be80
	rst 38h			;be81
	rst 38h			;be82
	rst 38h			;be83
	rst 38h			;be84
	rst 38h			;be85
	rst 38h			;be86
	rst 38h			;be87
	rst 38h			;be88
	rst 38h			;be89
	rst 38h			;be8a
	rst 38h			;be8b
	rst 38h			;be8c
	rst 38h			;be8d
	rst 38h			;be8e
	rst 38h			;be8f
	rst 38h			;be90
	rst 38h			;be91
	rst 38h			;be92
	rst 38h			;be93
	rst 38h			;be94
	rst 38h			;be95
	rst 38h			;be96
	rst 38h			;be97
	rst 38h			;be98
	rst 38h			;be99
	rst 38h			;be9a
	rst 38h			;be9b
	rst 38h			;be9c
	rst 38h			;be9d
	rst 38h			;be9e
	rst 38h			;be9f
	rst 38h			;bea0
	rst 38h			;bea1
	rst 38h			;bea2
	rst 38h			;bea3
	rst 38h			;bea4
	rst 38h			;bea5
	rst 38h			;bea6
	rst 38h			;bea7
	rst 38h			;bea8
	rst 38h			;bea9
	rst 38h			;beaa
	rst 38h			;beab
	rst 38h			;beac
	rst 38h			;bead
	rst 38h			;beae
	rst 38h			;beaf
	rst 38h			;beb0
	rst 38h			;beb1
	rst 38h			;beb2
	rst 38h			;beb3
	rst 38h			;beb4
	rst 38h			;beb5
	rst 38h			;beb6
	rst 38h			;beb7
	rst 38h			;beb8
	rst 38h			;beb9
	rst 38h			;beba
	rst 38h			;bebb
	rst 38h			;bebc
	rst 38h			;bebd
	rst 38h			;bebe
	rst 38h			;bebf
	rst 38h			;bec0
	rst 38h			;bec1
	rst 38h			;bec2
	rst 38h			;bec3
	rst 38h			;bec4
	rst 38h			;bec5
	rst 38h			;bec6
	rst 38h			;bec7
	rst 38h			;bec8
	rst 38h			;bec9
	rst 38h			;beca
	rst 38h			;becb
	rst 38h			;becc
	rst 38h			;becd
	rst 38h			;bece
	rst 38h			;becf
	rst 38h			;bed0
	rst 38h			;bed1
	rst 38h			;bed2
	rst 38h			;bed3
	rst 38h			;bed4
	rst 38h			;bed5
	rst 38h			;bed6
	rst 38h			;bed7
	rst 38h			;bed8
	rst 38h			;bed9
	rst 38h			;beda
	rst 38h			;bedb
	rst 38h			;bedc
	rst 38h			;bedd
	rst 38h			;bede
	rst 38h			;bedf
	rst 38h			;bee0
	rst 38h			;bee1
	rst 38h			;bee2
	rst 38h			;bee3
	rst 38h			;bee4
	rst 38h			;bee5
	rst 38h			;bee6
	rst 38h			;bee7
	rst 38h			;bee8
	rst 38h			;bee9
	rst 38h			;beea
	rst 38h			;beeb
	rst 38h			;beec
	rst 38h			;beed
	rst 38h			;beee
	rst 38h			;beef
	rst 38h			;bef0
	rst 38h			;bef1
	rst 38h			;bef2
	rst 38h			;bef3
	rst 38h			;bef4
	rst 38h			;bef5
	rst 38h			;bef6
	rst 38h			;bef7
	rst 38h			;bef8
	rst 38h			;bef9
	rst 38h			;befa
	rst 38h			;befb
	rst 38h			;befc
	rst 38h			;befd
	rst 38h			;befe
	rst 38h			;beff
	rst 38h			;bf00
	rst 38h			;bf01
	rst 38h			;bf02
	rst 38h			;bf03
	rst 38h			;bf04
	rst 38h			;bf05
	rst 38h			;bf06
	rst 38h			;bf07
	rst 38h			;bf08
	rst 38h			;bf09
	rst 38h			;bf0a
	rst 38h			;bf0b
	rst 38h			;bf0c
	rst 38h			;bf0d
	rst 38h			;bf0e
	rst 38h			;bf0f
	rst 38h			;bf10
	rst 38h			;bf11
	rst 38h			;bf12
	rst 38h			;bf13
	rst 38h			;bf14
	rst 38h			;bf15
	rst 38h			;bf16
	rst 38h			;bf17
	rst 38h			;bf18
	rst 38h			;bf19
	rst 38h			;bf1a
	rst 38h			;bf1b
	rst 38h			;bf1c
	rst 38h			;bf1d
	rst 38h			;bf1e
	rst 38h			;bf1f
	rst 38h			;bf20
	rst 38h			;bf21
	rst 38h			;bf22
	rst 38h			;bf23
	rst 38h			;bf24
	rst 38h			;bf25
	rst 38h			;bf26
	rst 38h			;bf27
	rst 38h			;bf28
	rst 38h			;bf29
	rst 38h			;bf2a
	rst 38h			;bf2b
	rst 38h			;bf2c
	rst 38h			;bf2d
	rst 38h			;bf2e
	rst 38h			;bf2f
	rst 38h			;bf30
	rst 38h			;bf31
	rst 38h			;bf32
	rst 38h			;bf33
	rst 38h			;bf34
	rst 38h			;bf35
	rst 38h			;bf36
	rst 38h			;bf37
	rst 38h			;bf38
	rst 38h			;bf39
	rst 38h			;bf3a
	rst 38h			;bf3b
	rst 38h			;bf3c
	rst 38h			;bf3d
	rst 38h			;bf3e
	rst 38h			;bf3f
	rst 38h			;bf40
	rst 38h			;bf41
	rst 38h			;bf42
	rst 38h			;bf43
	rst 38h			;bf44
	rst 38h			;bf45
	rst 38h			;bf46
	rst 38h			;bf47
	rst 38h			;bf48
	rst 38h			;bf49
	rst 38h			;bf4a
	rst 38h			;bf4b
	rst 38h			;bf4c
	rst 38h			;bf4d
	rst 38h			;bf4e
	rst 38h			;bf4f
	rst 38h			;bf50
	rst 38h			;bf51
	rst 38h			;bf52
	rst 38h			;bf53
	rst 38h			;bf54
	rst 38h			;bf55
	rst 38h			;bf56
	rst 38h			;bf57
	rst 38h			;bf58
	rst 38h			;bf59
	rst 38h			;bf5a
	rst 38h			;bf5b
	rst 38h			;bf5c
	rst 38h			;bf5d
	rst 38h			;bf5e
	rst 38h			;bf5f
	rst 38h			;bf60
	rst 38h			;bf61
	rst 38h			;bf62
	rst 38h			;bf63
	rst 38h			;bf64
	rst 38h			;bf65
	rst 38h			;bf66
	rst 38h			;bf67
	rst 38h			;bf68
	rst 38h			;bf69
	rst 38h			;bf6a
	rst 38h			;bf6b
	rst 38h			;bf6c
	rst 38h			;bf6d
	rst 38h			;bf6e
	rst 38h			;bf6f
	rst 38h			;bf70
	rst 38h			;bf71
	rst 38h			;bf72
	rst 38h			;bf73
	rst 38h			;bf74
	rst 38h			;bf75
	rst 38h			;bf76
	rst 38h			;bf77
	rst 38h			;bf78
	rst 38h			;bf79
	rst 38h			;bf7a
	rst 38h			;bf7b
	rst 38h			;bf7c
	rst 38h			;bf7d
	rst 38h			;bf7e
	rst 38h			;bf7f
	rst 38h			;bf80
	rst 38h			;bf81
	rst 38h			;bf82
	rst 38h			;bf83
	rst 38h			;bf84
	rst 38h			;bf85
	rst 38h			;bf86
	rst 38h			;bf87
	rst 38h			;bf88
	rst 38h			;bf89
	rst 38h			;bf8a
	rst 38h			;bf8b
	rst 38h			;bf8c
	rst 38h			;bf8d
	rst 38h			;bf8e
	rst 38h			;bf8f
	rst 38h			;bf90
	rst 38h			;bf91
	rst 38h			;bf92
	rst 38h			;bf93
	rst 38h			;bf94
	rst 38h			;bf95
	rst 38h			;bf96
	rst 38h			;bf97
	rst 38h			;bf98
	rst 38h			;bf99
	rst 38h			;bf9a
	rst 38h			;bf9b
	rst 38h			;bf9c
	rst 38h			;bf9d
	rst 38h			;bf9e
	rst 38h			;bf9f
	rst 38h			;bfa0
	rst 38h			;bfa1
	rst 38h			;bfa2
	rst 38h			;bfa3
	rst 38h			;bfa4
	rst 38h			;bfa5
	rst 38h			;bfa6
	rst 38h			;bfa7
	rst 38h			;bfa8
	rst 38h			;bfa9
	rst 38h			;bfaa
	rst 38h			;bfab
	rst 38h			;bfac
	rst 38h			;bfad
	rst 38h			;bfae
	rst 38h			;bfaf
	rst 38h			;bfb0
	rst 38h			;bfb1
	rst 38h			;bfb2
	rst 38h			;bfb3
	rst 38h			;bfb4
	rst 38h			;bfb5
	rst 38h			;bfb6
	rst 38h			;bfb7
	rst 38h			;bfb8
	rst 38h			;bfb9
	rst 38h			;bfba
	rst 38h			;bfbb
	rst 38h			;bfbc
	rst 38h			;bfbd
	rst 38h			;bfbe
	rst 38h			;bfbf
	rst 38h			;bfc0
	rst 38h			;bfc1
	rst 38h			;bfc2
	rst 38h			;bfc3
	rst 38h			;bfc4
	rst 38h			;bfc5
	rst 38h			;bfc6
	rst 38h			;bfc7
	rst 38h			;bfc8
	rst 38h			;bfc9
	rst 38h			;bfca
	rst 38h			;bfcb
	rst 38h			;bfcc
	rst 38h			;bfcd
	rst 38h			;bfce
	rst 38h			;bfcf
	rst 38h			;bfd0
	rst 38h			;bfd1
	rst 38h			;bfd2
	rst 38h			;bfd3
	rst 38h			;bfd4
	rst 38h			;bfd5
	rst 38h			;bfd6
	rst 38h			;bfd7
	rst 38h			;bfd8
	rst 38h			;bfd9
	rst 38h			;bfda
	rst 38h			;bfdb
	rst 38h			;bfdc
	rst 38h			;bfdd
	rst 38h			;bfde
	rst 38h			;bfdf
	rst 38h			;bfe0
	rst 38h			;bfe1
	rst 38h			;bfe2
	rst 38h			;bfe3
	rst 38h			;bfe4
	rst 38h			;bfe5
	rst 38h			;bfe6
	rst 38h			;bfe7
	rst 38h			;bfe8
	rst 38h			;bfe9
	rst 38h			;bfea
	rst 38h			;bfeb
	rst 38h			;bfec
	rst 38h			;bfed
	rst 38h			;bfee
	rst 38h			;bfef
	rst 38h			;bff0
	rst 38h			;bff1
	rst 38h			;bff2
	rst 38h			;bff3
	rst 38h			;bff4
	rst 38h			;bff5
	rst 38h			;bff6
	rst 38h			;bff7
	rst 38h			;bff8
	rst 38h			;bff9
	rst 38h			;bffa
	rst 38h			;bffb
	rst 38h			;bffc
	rst 38h			;bffd
	rst 38h			;bffe
	rst 38h			;bfff
