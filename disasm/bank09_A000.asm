; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank09_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank09.bin

	org 0a000h

	nop			;a000
	nop			;a001
	nop			;a002
	nop			;a003
	nop			;a004
	nop			;a005
	nop			;a006
	nop			;a007
	nop			;a008
	nop			;a009
	nop			;a00a
	nop			;a00b
	nop			;a00c
	nop			;a00d
	nop			;a00e
	nop			;a00f
	ld bc,00101h		;a010
	ld bc,00101h		;a013
	ld bc,00101h		;a016
	ld bc,00101h		;a019
	ld bc,00101h		;a01c
	ld bc,00202h		;a01f
	ld (bc),a		;a022
	ld (bc),a		;a023
	ld (bc),a		;a024
	ld (bc),a		;a025
	ld (bc),a		;a026
	ld (bc),a		;a027
	ld (bc),a		;a028
	ld (bc),a		;a029
	ld (bc),a		;a02a
	ld (bc),a		;a02b
	ld (bc),a		;a02c
	ld (bc),a		;a02d
	ld (bc),a		;a02e
	ld (bc),a		;a02f
	inc bc			;a030
	inc bc			;a031
	inc bc			;a032
	inc bc			;a033
	inc bc			;a034
	inc bc			;a035
	inc bc			;a036
	inc bc			;a037
	inc bc			;a038
	inc bc			;a039
	inc bc			;a03a
	inc bc			;a03b
	inc bc			;a03c
	inc bc			;a03d
	inc bc			;a03e
	inc bc			;a03f
	inc b			;a040
	inc b			;a041
	inc b			;a042
	inc b			;a043
	inc b			;a044
	inc b			;a045
	inc b			;a046
	inc b			;a047
	inc b			;a048
	inc b			;a049
	inc b			;a04a
	inc b			;a04b
	inc b			;a04c
	inc b			;a04d
	inc b			;a04e
	inc b			;a04f
	dec b			;a050
	dec b			;a051
	dec b			;a052
	dec b			;a053
	dec b			;a054
	dec b			;a055
	dec b			;a056
	dec b			;a057
	dec b			;a058
	dec b			;a059
	dec b			;a05a
	dec b			;a05b
	dec b			;a05c
	dec b			;a05d
	dec b			;a05e
	dec b			;a05f
	ld b,006h		;a060
	ld b,006h		;a062
	ld b,006h		;a064
	ld b,006h		;a066
	ld b,006h		;a068
	ld b,006h		;a06a
	ld b,006h		;a06c
	ld b,006h		;a06e
	rlca			;a070
	rlca			;a071
	rlca			;a072
	rlca			;a073
	rlca			;a074
	rlca			;a075
	rlca			;a076
	rlca			;a077
	rlca			;a078
	rlca			;a079
	rlca			;a07a
	rlca			;a07b
	rlca			;a07c
	rlca			;a07d
	rlca			;a07e
	rlca			;a07f
	ex af,af'		;a080
	ex af,af'		;a081
	ex af,af'		;a082
	ex af,af'		;a083
	ex af,af'		;a084
	ex af,af'		;a085
	ex af,af'		;a086
	ex af,af'		;a087
	ex af,af'		;a088
	ex af,af'		;a089
	ex af,af'		;a08a
	ex af,af'		;a08b
	ex af,af'		;a08c
	ex af,af'		;a08d
	ex af,af'		;a08e
	ex af,af'		;a08f
	add hl,bc		;a090
	add hl,bc		;a091
	add hl,bc		;a092
	add hl,bc		;a093
	add hl,bc		;a094
	add hl,bc		;a095
	add hl,bc		;a096
	add hl,bc		;a097
	add hl,bc		;a098
	add hl,bc		;a099
	add hl,bc		;a09a
	add hl,bc		;a09b
	add hl,bc		;a09c
	add hl,bc		;a09d
	add hl,bc		;a09e
	add hl,bc		;a09f
	ld a,(bc)		;a0a0
	ld a,(bc)		;a0a1
	ld a,(bc)		;a0a2
	ld a,(bc)		;a0a3
	ld a,(bc)		;a0a4
	ld a,(bc)		;a0a5
	ld a,(bc)		;a0a6
	ld a,(bc)		;a0a7
	ld a,(bc)		;a0a8
	ld a,(bc)		;a0a9
	ld a,(bc)		;a0aa
	ld a,(bc)		;a0ab
	ld a,(bc)		;a0ac
	ld a,(bc)		;a0ad
	ld a,(bc)		;a0ae
	ld a,(bc)		;a0af
	dec bc			;a0b0
	dec bc			;a0b1
	dec bc			;a0b2
	dec bc			;a0b3
	dec bc			;a0b4
	dec bc			;a0b5
	dec bc			;a0b6
	dec bc			;a0b7
	dec bc			;a0b8
	dec bc			;a0b9
	dec bc			;a0ba
	dec bc			;a0bb
	dec bc			;a0bc
	dec bc			;a0bd
	dec bc			;a0be
	dec bc			;a0bf
	inc c			;a0c0
	inc c			;a0c1
	inc c			;a0c2
	inc c			;a0c3
	inc c			;a0c4
	inc c			;a0c5
	inc c			;a0c6
	inc c			;a0c7
	inc c			;a0c8
	inc c			;a0c9
	inc c			;a0ca
	inc c			;a0cb
	inc c			;a0cc
	inc c			;a0cd
	inc c			;a0ce
	inc c			;a0cf
	dec c			;a0d0
	dec c			;a0d1
	dec c			;a0d2
	dec c			;a0d3
	dec c			;a0d4
	dec c			;a0d5
	dec c			;a0d6
	dec c			;a0d7
	dec c			;a0d8
	dec c			;a0d9
	dec c			;a0da
	dec c			;a0db
	dec c			;a0dc
	dec c			;a0dd
	dec c			;a0de
	dec c			;a0df
	ld c,00eh		;a0e0
	ld c,00eh		;a0e2
	ld c,00eh		;a0e4
	ld c,00eh		;a0e6
	ld c,00eh		;a0e8
	ld c,00eh		;a0ea
	ld c,00eh		;a0ec
	ld c,00eh		;a0ee
	rrca			;a0f0
	rrca			;a0f1
	rrca			;a0f2
	rrca			;a0f3
	rrca			;a0f4
	rrca			;a0f5
	rrca			;a0f6
	rrca			;a0f7
	rrca			;a0f8
	rrca			;a0f9
	rrca			;a0fa
	rrca			;a0fb
	rrca			;a0fc
	rrca			;a0fd
	rrca			;a0fe
	rrca			;a0ff
	nop			;a100
	nop			;a101
	nop			;a102
	nop			;a103
	nop			;a104
	nop			;a105
	rlca			;a106
	ld c,00eh		;a107
	rlca			;a109
	nop			;a10a
	nop			;a10b
	nop			;a10c
	nop			;a10d
	nop			;a10e
	nop			;a10f
	ld c,00eh		;a110
	ld c,00eh		;a112
	ld c,00eh		;a114
	ld c,00eh		;a116
	ld c,00eh		;a118
	ld c,00eh		;a11a
	ld c,00eh		;a11c
	ld c,00eh		;a11e
	nop			;a120
	nop			;a121
	nop			;a122
	nop			;a123
	nop			;a124
	nop			;a125
	rlca			;a126
	ld c,00eh		;a127
	ld c,007h		;a129
	nop			;a12b
	nop			;a12c
	nop			;a12d
	nop			;a12e
	nop			;a12f
	nop			;a130
	nop			;a131
	rlca			;a132
	ld c,00eh		;a133
	ld c,000h		;a135
	nop			;a137
	nop			;a138
	nop			;a139
	rlca			;a13a
	ld c,00eh		;a13b
	ld c,000h		;a13d
	nop			;a13f
	nop			;a140
	nop			;a141
	nop			;a142
	nop			;a143
	nop			;a144
	ld b,00ah		;a145
	ld c,00eh		;a147
	ld c,00ah		;a149
	ld b,000h		;a14b
	nop			;a14d
	nop			;a14e
	nop			;a14f
	rlca			;a150
	ld c,00eh		;a151
	ld c,00eh		;a153
	ld c,00eh		;a155
	nop			;a157
	rlca			;a158
	ld c,00eh		;a159
	ld c,00eh		;a15b
	ld c,00eh		;a15d
	nop			;a15f
	nop			;a160
	nop			;a161
	nop			;a162
	nop			;a163
	dec c			;a164
	ex af,af'		;a165
	ex af,af'		;a166
	ld c,00eh		;a167
	ex af,af'		;a169
	ex af,af'		;a16a
	dec c			;a16b
	nop			;a16c
	nop			;a16d
	nop			;a16e
	nop			;a16f
	nop			;a170
	rlca			;a171
	rlca			;a172
	ld c,00eh		;a173
	ld c,00eh		;a175
	nop			;a177
	rlca			;a178
	rlca			;a179
	ld c,00eh		;a17a
	ld c,00eh		;a17c
	nop			;a17e
	nop			;a17f
	nop			;a180
	nop			;a181
	dec c			;a182
	ex af,af'		;a183
	ex af,af'		;a184
	ld c,008h		;a185
	ld c,00eh		;a187
	ex af,af'		;a189
	ld c,008h		;a18a
	ex af,af'		;a18c
	dec c			;a18d
	nop			;a18e
	nop			;a18f
	nop			;a190
	rlca			;a191
	rlca			;a192
	ld c,00eh		;a193
	ld c,00eh		;a195
	nop			;a197
	rlca			;a198
	rlca			;a199
	ld c,00eh		;a19a
	ld c,00eh		;a19c
	nop			;a19e
	nop			;a19f
	ld b,006h		;a1a0
	ld a,(bc)		;a1a2
	ld b,00ah		;a1a3
	ld c,00ah		;a1a5
	ld c,00eh		;a1a7
	ld a,(bc)		;a1a9
	ld c,00ah		;a1aa
	ld b,00ah		;a1ac
	ld b,006h		;a1ae
	rlca			;a1b0
	ld c,00eh		;a1b1
	ld c,00eh		;a1b3
	ld c,00eh		;a1b5
	nop			;a1b7
	rlca			;a1b8
	ld c,00eh		;a1b9
	ld c,00eh		;a1bb
	ld c,00eh		;a1bd
	nop			;a1bf
	inc c			;a1c0
	ld c,00ch		;a1c1
	dec c			;a1c3
	dec c			;a1c4
	rrca			;a1c5
	add hl,bc		;a1c6
	rrca			;a1c7
	ld c,008h		;a1c8
	inc c			;a1ca
	dec c			;a1cb
	rrca			;a1cc
	ex af,af'		;a1cd
	dec b			;a1ce
	dec c			;a1cf
	ld c,005h		;a1d0
	dec b			;a1d2
	dec c			;a1d3
	rrca			;a1d4
	dec b			;a1d5
	rrca			;a1d6
	ex af,af'		;a1d7
	ex af,af'		;a1d8
	ex af,af'		;a1d9
	ex af,af'		;a1da
	ex af,af'		;a1db
	ld c,005h		;a1dc
	dec c			;a1de
	rrca			;a1df
	ex af,af'		;a1e0
	ld c,008h		;a1e1
	dec b			;a1e3
	dec c			;a1e4
	rrca			;a1e5
	add hl,bc		;a1e6
	rrca			;a1e7
	ex af,af'		;a1e8
	inc c			;a1e9
	dec c			;a1ea
	rrca			;a1eb
	dec c			;a1ec
	inc c			;a1ed
	inc c			;a1ee
	inc c			;a1ef
	nop			;a1f0
	nop			;a1f1
	nop			;a1f2
	nop			;a1f3
	nop			;a1f4
	nop			;a1f5
	nop			;a1f6
	ld c,00ah		;a1f7
	nop			;a1f9
	nop			;a1fa
	nop			;a1fb
	nop			;a1fc
	nop			;a1fd
	nop			;a1fe
	nop			;a1ff
	nop			;a200
	nop			;a201
	ld a,(bc)		;a202
	ld c,00ah		;a203
	ld c,00ah		;a205
	ld c,00ah		;a207
	ld c,00ah		;a209
	ld c,00ah		;a20b
	ld c,000h		;a20d
	nop			;a20f
	ld a,(bc)		;a210
	ld c,00ah		;a211
	ld c,00ah		;a213
	ld c,00ah		;a215
	ld c,00ah		;a217
	ld c,00ah		;a219
	ld c,00ah		;a21b
	ld c,00ah		;a21d
	ld c,000h		;a21f
	nop			;a221
	nop			;a222
	nop			;a223
	nop			;a224
	nop			;a225
	ld b,00eh		;a226
	ld a,(bc)		;a228
	ld b,000h		;a229
	nop			;a22b
	nop			;a22c
	nop			;a22d
	nop			;a22e
	nop			;a22f
	nop			;a230
	ld c,00eh		;a231
	ex af,af'		;a233
	dec c			;a234
	ex af,af'		;a235
	ld c,00eh		;a236
	ex af,af'		;a238
	dec c			;a239
	dec c			;a23a
	ex af,af'		;a23b
	ex af,af'		;a23c
	ld c,000h		;a23d
	nop			;a23f
	dec c			;a240
	dec c			;a241
	ex af,af'		;a242
	ex af,af'		;a243
	ld c,00eh		;a244
	ex af,af'		;a246
	ex af,af'		;a247
	dec c			;a248
	ex af,af'		;a249
	dec c			;a24a
	dec c			;a24b
	add hl,bc		;a24c
	dec c			;a24d
	add hl,bc		;a24e
	add hl,bc		;a24f
	inc b			;a250
	ld c,00eh		;a251
	inc b			;a253
	inc b			;a254
	ld b,006h		;a255
	ld b,006h		;a257
	ld b,006h		;a259
	inc b			;a25b
	inc b			;a25c
	ld c,00eh		;a25d
	inc b			;a25f
	nop			;a260
	add hl,bc		;a261
	ld c,00dh		;a262
	ex af,af'		;a264
	ld c,008h		;a265
	ld c,009h		;a267
	ld c,008h		;a269
	dec c			;a26b
	ex af,af'		;a26c
	ld c,009h		;a26d
	nop			;a26f
	inc c			;a270
	dec bc			;a271
	inc c			;a272
	rrca			;a273
	ld c,00ch		;a274
	dec bc			;a276
	rrca			;a277
	inc c			;a278
	ld (bc),a		;a279
	inc bc			;a27a
	ld c,003h		;a27b
	ld (bc),a		;a27d
	ld bc,00203h		;a27e
	ld bc,00e03h		;a281
	inc bc			;a284
	ld (bc),a		;a285
	ld bc,00f0ch		;a286
	dec bc			;a289
	rrca			;a28a
	inc c			;a28b
	rrca			;a28c
	inc c			;a28d
	inc c			;a28e
	rrca			;a28f
	nop			;a290
	ld c,00eh		;a291
	ld c,00eh		;a293
	ld c,00eh		;a295
	nop			;a297
	rlca			;a298
	rlca			;a299
	rlca			;a29a
	ld c,008h		;a29b
	ex af,af'		;a29d
	ld b,00eh		;a29e
	nop			;a2a0
	nop			;a2a1
	nop			;a2a2
	nop			;a2a3
	ld a,(bc)		;a2a4
	ex af,af'		;a2a5
	ex af,af'		;a2a6
	ex af,af'		;a2a7
	ex af,af'		;a2a8
	ex af,af'		;a2a9
	ex af,af'		;a2aa
	ex af,af'		;a2ab
	ld c,00eh		;a2ac
	ld c,00eh		;a2ae
	dec c			;a2b0
	dec c			;a2b1
	ld c,00eh		;a2b2
	ld c,00ah		;a2b4
	nop			;a2b6
	nop			;a2b7
	nop			;a2b8
	nop			;a2b9
	nop			;a2ba
	nop			;a2bb
	nop			;a2bc
	nop			;a2bd
	nop			;a2be
	nop			;a2bf
	ld c,00eh		;a2c0
	ld c,00eh		;a2c2
	ld c,00eh		;a2c4
	ld c,000h		;a2c6
	rlca			;a2c8
	rlca			;a2c9
	rlca			;a2ca
	dec c			;a2cb
	ld c,008h		;a2cc
	ex af,af'		;a2ce
	ld b,000h		;a2cf
	nop			;a2d1
	nop			;a2d2
	ld a,(bc)		;a2d3
	ex af,af'		;a2d4
	ex af,af'		;a2d5
	ex af,af'		;a2d6
	ex af,af'		;a2d7
	ex af,af'		;a2d8
	ex af,af'		;a2d9
	ex af,af'		;a2da
	ex af,af'		;a2db
	ld c,00eh		;a2dc
	ld c,00eh		;a2de
	dec c			;a2e0
	ex af,af'		;a2e1
	dec c			;a2e2
	ld c,00eh		;a2e3
	ld c,00ah		;a2e5
	nop			;a2e7
	nop			;a2e8
	nop			;a2e9
	nop			;a2ea
	nop			;a2eb
	nop			;a2ec
	nop			;a2ed
	nop			;a2ee
	nop			;a2ef
	nop			;a2f0
	ld c,00eh		;a2f1
	ld c,00eh		;a2f3
	ld c,00eh		;a2f5
	ld c,007h		;a2f7
	rlca			;a2f9
	rlca			;a2fa
	rlca			;a2fb
	dec c			;a2fc
	ld c,008h		;a2fd
	ld c,000h		;a2ff
	nop			;a301
	nop			;a302
	nop			;a303
	ld a,(bc)		;a304
	ex af,af'		;a305
	ex af,af'		;a306
	ex af,af'		;a307
	ex af,af'		;a308
	ex af,af'		;a309
	ex af,af'		;a30a
	ex af,af'		;a30b
	ld c,00eh		;a30c
	ld c,00eh		;a30e
	ld c,00dh		;a310
	dec c			;a312
	ld c,00eh		;a313
	ld a,(bc)		;a315
	nop			;a316
	nop			;a317
	nop			;a318
	nop			;a319
	nop			;a31a
	nop			;a31b
	nop			;a31c
	nop			;a31d
	nop			;a31e
	nop			;a31f
	nop			;a320
	nop			;a321
	nop			;a322
	nop			;a323
	nop			;a324
	nop			;a325
	rlca			;a326
	ld c,007h		;a327
	nop			;a329
	nop			;a32a
	nop			;a32b
	nop			;a32c
	nop			;a32d
	nop			;a32e
	nop			;a32f
	nop			;a330
	rlca			;a331
	rlca			;a332
	ld c,00eh		;a333
	ld c,00eh		;a335
	nop			;a337
	nop			;a338
	rlca			;a339
	rlca			;a33a
	ld c,00eh		;a33b
	ld c,00eh		;a33d
	nop			;a33f
	nop			;a340
	nop			;a341
	nop			;a342
	rlca			;a343
	ld c,007h		;a344
	nop			;a346
	nop			;a347
	nop			;a348
	nop			;a349
	rlca			;a34a
	ld c,007h		;a34b
	nop			;a34d
	nop			;a34e
	nop			;a34f
	nop			;a350
	nop			;a351
	nop			;a352
	nop			;a353
	ld c,00eh		;a354
	ld b,00ah		;a356
	ld c,00ah		;a358
	ld b,00eh		;a35a
	ld c,000h		;a35c
	nop			;a35e
	nop			;a35f
	ex af,af'		;a360
	ld c,008h		;a361
	dec b			;a363
	dec c			;a364
	rrca			;a365
	add hl,bc		;a366
	rrca			;a367
	ex af,af'		;a368
	inc c			;a369
	dec c			;a36a
	rrca			;a36b
	dec c			;a36c
	inc c			;a36d
	inc c			;a36e
	inc c			;a36f
	dec bc			;a370
	dec bc			;a371
	dec bc			;a372
	dec bc			;a373
	ld c,00eh		;a374
	ld c,00eh		;a376
	dec bc			;a378
	dec bc			;a379
	dec bc			;a37a
	dec bc			;a37b
	dec bc			;a37c
	dec bc			;a37d
	dec bc			;a37e
	dec bc			;a37f
	rlca			;a380
	rlca			;a381
	rlca			;a382
	rlca			;a383
	dec bc			;a384
	dec bc			;a385
	dec bc			;a386
	dec bc			;a387
	rlca			;a388
	rlca			;a389
	rlca			;a38a
	rlca			;a38b
	rlca			;a38c
	rlca			;a38d
	rlca			;a38e
	rlca			;a38f
	nop			;a390
	nop			;a391
	ex af,af'		;a392
	ld c,00eh		;a393
	ex af,af'		;a395
	ex af,af'		;a396
	dec c			;a397
	rlca			;a398
	ex af,af'		;a399
	ex af,af'		;a39a
	ld c,008h		;a39b
	ex af,af'		;a39d
	dec c			;a39e
	nop			;a39f
	nop			;a3a0
	nop			;a3a1
	nop			;a3a2
	nop			;a3a3
	ld c,008h		;a3a4
	dec c			;a3a6
	dec c			;a3a7
	ex af,af'		;a3a8
	rlca			;a3a9
	dec c			;a3aa
	ex af,af'		;a3ab
	ex af,af'		;a3ac
	nop			;a3ad
	nop			;a3ae
	nop			;a3af
	nop			;a3b0
	nop			;a3b1
	nop			;a3b2
	nop			;a3b3
	nop			;a3b4
	rlca			;a3b5
	ld c,008h		;a3b6
	ex af,af'		;a3b8
	dec c			;a3b9
	dec c			;a3ba
	rlca			;a3bb
	nop			;a3bc
	nop			;a3bd
	nop			;a3be
	nop			;a3bf
	nop			;a3c0
	nop			;a3c1
	nop			;a3c2
	nop			;a3c3
	ld c,008h		;a3c4
	dec c			;a3c6
	rlca			;a3c7
	ex af,af'		;a3c8
	ld c,00eh		;a3c9
	ex af,af'		;a3cb
	dec c			;a3cc
	nop			;a3cd
	nop			;a3ce
	nop			;a3cf
	dec bc			;a3d0
	dec bc			;a3d1
	dec bc			;a3d2
	ld b,006h		;a3d3
	ld c,00bh		;a3d5
	dec bc			;a3d7
	dec bc			;a3d8
	dec bc			;a3d9
	dec bc			;a3da
	dec bc			;a3db
	dec c			;a3dc
	dec bc			;a3dd
	dec bc			;a3de
	nop			;a3df
	ld c,h			;a3e0
	ld c,h			;a3e1
	ld c,h			;a3e2
	ld c,h			;a3e3
	ld c,l			;a3e4
	ld c,l			;a3e5
	ld c,h			;a3e6
	ld c,h			;a3e7
	ld c,h			;a3e8
	ld c,h			;a3e9
	ld c,h			;a3ea
	ld c,h			;a3eb
	ld c,a			;a3ec
	ld c,h			;a3ed
	ld c,h			;a3ee
	ld b,b			;a3ef
	dec bc			;a3f0
	dec bc			;a3f1
	dec bc			;a3f2
	dec bc			;a3f3
	dec bc			;a3f4
	dec bc			;a3f5
	dec bc			;a3f6
	dec bc			;a3f7
	dec bc			;a3f8
	dec bc			;a3f9
	dec bc			;a3fa
	dec bc			;a3fb
	ld a,(bc)		;a3fc
	dec bc			;a3fd
	dec bc			;a3fe
	dec bc			;a3ff
	ld c,h			;a400
	ld c,h			;a401
	ld c,h			;a402
	ld c,h			;a403
	ld c,h			;a404
	ld c,h			;a405
	ld c,(hl)		;a406
	ld c,h			;a407
	ld c,h			;a408
	ld c,(hl)		;a409
	ld c,h			;a40a
	ld c,h			;a40b
	ld c,a			;a40c
	ld c,h			;a40d
	ld c,h			;a40e
	ld c,h			;a40f
	dec bc			;a410
	dec bc			;a411
	dec bc			;a412
	ld a,(bc)		;a413
	dec bc			;a414
	dec bc			;a415
	dec bc			;a416
	dec bc			;a417
	dec bc			;a418
	dec bc			;a419
	dec bc			;a41a
	dec bc			;a41b
	dec bc			;a41c
	dec bc			;a41d
	dec bc			;a41e
	dec bc			;a41f
	ld c,h			;a420
	ld c,h			;a421
	ld c,h			;a422
	ld c,a			;a423
	ld c,h			;a424
	ld c,h			;a425
	ld c,(hl)		;a426
	ld c,h			;a427
	ld c,h			;a428
	ld c,(hl)		;a429
	ld c,h			;a42a
	ld c,h			;a42b
	ld c,h			;a42c
	ld c,h			;a42d
	ld c,h			;a42e
	ld c,h			;a42f
	inc c			;a430
	dec bc			;a431
	inc c			;a432
	rrca			;a433
	ld c,00ch		;a434
	dec bc			;a436
	rrca			;a437
	inc c			;a438
	inc b			;a439
	dec b			;a43a
	ld c,005h		;a43b
	inc b			;a43d
	inc bc			;a43e
	dec b			;a43f
	inc b			;a440
	inc bc			;a441
	dec b			;a442
	ld c,005h		;a443
	inc b			;a445
	inc bc			;a446
	inc c			;a447
	rrca			;a448
	dec bc			;a449
	rrca			;a44a
	inc c			;a44b
	rrca			;a44c
	inc c			;a44d
	inc c			;a44e
	rrca			;a44f
	ld b,l			;a450
	ld b,l			;a451
	ld b,l			;a452
	ld b,l			;a453
	ld b,l			;a454
	ld b,l			;a455
	ld b,l			;a456
	ld b,l			;a457
	ld b,l			;a458
	ld b,l			;a459
	ld b,l			;a45a
	ld b,l			;a45b
	ld b,l			;a45c
	ld b,l			;a45d
	ld b,l			;a45e
	ld b,l			;a45f
	ld b,(hl)		;a460
	ld b,(hl)		;a461
	ld b,(hl)		;a462
	ld b,(hl)		;a463
	ld b,(hl)		;a464
	ld b,(hl)		;a465
	ld b,(hl)		;a466
	ld b,(hl)		;a467
	ld b,(hl)		;a468
	ld b,(hl)		;a469
	ld b,(hl)		;a46a
	ld b,(hl)		;a46b
	ld b,(hl)		;a46c
	ld b,(hl)		;a46d
	ld b,(hl)		;a46e
	ld b,(hl)		;a46f
	ld b,a			;a470
	ld b,a			;a471
	ld b,a			;a472
	ld b,a			;a473
	ld b,a			;a474
	ld b,a			;a475
	ld b,a			;a476
	ld b,a			;a477
	ld b,a			;a478
	ld b,a			;a479
	ld b,a			;a47a
	ld b,a			;a47b
	ld b,a			;a47c
	ld b,a			;a47d
	ld b,a			;a47e
	ld b,a			;a47f
	ld c,b			;a480
	ld c,b			;a481
	ld c,b			;a482
	ld c,b			;a483
	ld c,b			;a484
	ld c,b			;a485
	ld c,b			;a486
	ld c,b			;a487
	ld c,b			;a488
	ld c,b			;a489
	ld c,b			;a48a
	ld c,b			;a48b
	ld c,b			;a48c
	ld c,b			;a48d
	ld c,b			;a48e
	ld c,b			;a48f
	ld c,c			;a490
	ld c,c			;a491
	ld c,c			;a492
	ld c,c			;a493
	ld c,c			;a494
	ld c,c			;a495
	ld c,c			;a496
	ld c,c			;a497
	ld c,c			;a498
	ld c,c			;a499
	ld c,c			;a49a
	ld c,c			;a49b
	ld c,c			;a49c
	ld c,c			;a49d
	ld c,c			;a49e
	ld c,c			;a49f
	ld c,d			;a4a0
	ld c,d			;a4a1
	ld c,d			;a4a2
	ld c,d			;a4a3
	ld c,d			;a4a4
	ld c,d			;a4a5
	ld c,d			;a4a6
	ld c,d			;a4a7
	ld c,d			;a4a8
	ld c,d			;a4a9
	ld c,d			;a4aa
	ld c,d			;a4ab
	ld c,d			;a4ac
	ld c,d			;a4ad
	ld c,d			;a4ae
	ld c,d			;a4af
	ld c,e			;a4b0
	ld c,e			;a4b1
	ld c,e			;a4b2
	ld c,e			;a4b3
	ld c,e			;a4b4
	ld c,e			;a4b5
	ld c,e			;a4b6
	ld c,e			;a4b7
	ld c,e			;a4b8
	ld c,e			;a4b9
	ld c,e			;a4ba
	ld c,e			;a4bb
	ld c,e			;a4bc
	ld c,e			;a4bd
	ld c,e			;a4be
	ld c,e			;a4bf
	ld c,h			;a4c0
	ld c,h			;a4c1
	ld c,h			;a4c2
	ld c,h			;a4c3
	ld c,h			;a4c4
	ld c,h			;a4c5
	ld c,h			;a4c6
	ld c,h			;a4c7
	ld c,h			;a4c8
	ld c,h			;a4c9
	ld c,h			;a4ca
	ld c,h			;a4cb
	ld c,h			;a4cc
	ld c,h			;a4cd
	ld c,h			;a4ce
	ld c,h			;a4cf
	ld c,l			;a4d0
	ld c,l			;a4d1
	ld c,l			;a4d2
	ld c,l			;a4d3
	ld c,l			;a4d4
	ld c,l			;a4d5
	ld c,l			;a4d6
	ld c,l			;a4d7
	ld c,l			;a4d8
	ld c,l			;a4d9
	ld c,l			;a4da
	ld c,l			;a4db
	ld c,l			;a4dc
	ld c,l			;a4dd
	ld c,l			;a4de
	ld c,l			;a4df
	ld c,(hl)		;a4e0
	ld c,(hl)		;a4e1
	ld c,(hl)		;a4e2
	ld c,(hl)		;a4e3
	ld c,(hl)		;a4e4
	ld c,(hl)		;a4e5
	ld c,(hl)		;a4e6
	ld c,(hl)		;a4e7
	ld c,(hl)		;a4e8
	ld c,(hl)		;a4e9
	ld c,(hl)		;a4ea
	ld c,(hl)		;a4eb
	ld c,(hl)		;a4ec
	ld c,(hl)		;a4ed
	ld c,(hl)		;a4ee
	ld c,(hl)		;a4ef
	ld c,a			;a4f0
	ld c,a			;a4f1
	ld c,a			;a4f2
	ld c,a			;a4f3
	ld c,a			;a4f4
	ld c,a			;a4f5
	ld c,a			;a4f6
	ld c,a			;a4f7
	ld c,a			;a4f8
	ld c,a			;a4f9
	ld c,a			;a4fa
	ld c,a			;a4fb
	ld c,a			;a4fc
	ld c,a			;a4fd
	ld c,a			;a4fe
	ld c,a			;a4ff
	nop			;a500
	ld b,006h		;a501
	ld b,00dh		;a503
	dec bc			;a505
	dec bc			;a506
	dec bc			;a507
	dec bc			;a508
	dec bc			;a509
	dec bc			;a50a
	dec bc			;a50b
	dec bc			;a50c
	dec bc			;a50d
	dec bc			;a50e
	dec bc			;a50f
	ld b,b			;a510
	ld c,d			;a511
	ld c,d			;a512
	ld c,d			;a513
	ld c,(hl)		;a514
	ld c,(hl)		;a515
	ld c,(hl)		;a516
	ld c,h			;a517
	ld c,h			;a518
	ld c,h			;a519
	ld c,h			;a51a
	ld c,h			;a51b
	ld c,h			;a51c
	ld c,h			;a51d
	ld c,h			;a51e
	ld c,h			;a51f
	nop			;a520
	ld b,006h		;a521
	ld b,00dh		;a523
	ld b,006h		;a525
	ld b,006h		;a527
	ld b,00ah		;a529
	dec c			;a52b
	ld a,(bc)		;a52c
	ld b,006h		;a52d
	ld b,040h		;a52f
	ld c,d			;a531
	ld c,d			;a532
	ld c,d			;a533
	ld c,(hl)		;a534
	ld c,d			;a535
	ld c,d			;a536
	ld c,l			;a537
	ld c,l			;a538
	ld c,d			;a539
	ld c,l			;a53a
	ld c,(hl)		;a53b
	ld c,l			;a53c
	ld c,l			;a53d
	ld c,l			;a53e
	ld c,l			;a53f
	ld c,00bh		;a540
	dec bc			;a542
	dec bc			;a543
	dec bc			;a544
	dec bc			;a545
	ld b,00bh		;a546
	dec bc			;a548
	dec bc			;a549
	dec bc			;a54a
	dec bc			;a54b
	dec bc			;a54c
	dec bc			;a54d
	dec bc			;a54e
	dec bc			;a54f
	ld c,a			;a550
	ld c,h			;a551
	ld c,h			;a552
	ld c,h			;a553
	ld c,h			;a554
	ld c,h			;a555
	ld c,a			;a556
	ld b,(hl)		;a557
	ld b,(hl)		;a558
	ld c,h			;a559
	ld c,h			;a55a
	ld c,h			;a55b
	ld c,h			;a55c
	ld c,h			;a55d
	ld c,h			;a55e
	ld c,h			;a55f
	nop			;a560
	inc c			;a561
	dec bc			;a562
	ld b,006h		;a563
	ld b,00bh		;a565
	dec bc			;a567
	dec bc			;a568
	dec bc			;a569
	ld b,006h		;a56a
	ld b,00bh		;a56c
	dec bc			;a56e
	dec bc			;a56f
	ld b,b			;a570
	ld c,(hl)		;a571
	ld c,h			;a572
	ld c,d			;a573
	ld c,e			;a574
	ld c,e			;a575
	ld c,h			;a576
	ld c,h			;a577
	ld c,h			;a578
	ld c,h			;a579
	ld c,d			;a57a
	ld c,e			;a57b
	ld c,h			;a57c
	ld c,h			;a57d
	ld c,h			;a57e
	ld c,h			;a57f
	nop			;a580
	inc bc			;a581
	inc bc			;a582
	ld (bc),a		;a583
	ld (bc),a		;a584
	ld (bc),a		;a585
	ld (bc),a		;a586
	ld (bc),a		;a587
	ld (bc),a		;a588
	ld (bc),a		;a589
	ld (bc),a		;a58a
	ld (bc),a		;a58b
	ld (bc),a		;a58c
	ld (bc),a		;a58d
	ld (bc),a		;a58e
	ld (bc),a		;a58f
	ld (bc),a		;a590
	ld c,00eh		;a591
	inc bc			;a593
	inc bc			;a594
	ld (bc),a		;a595
	ld c,008h		;a596
	ld b,00dh		;a598
	inc bc			;a59a
	ld c,00eh		;a59b
	inc bc			;a59d
	ld (bc),a		;a59e
	ld bc,00b0bh		;a59f
	ld c,00eh		;a5a2
	ld b,00eh		;a5a4
	ld b,006h		;a5a6
	ld b,006h		;a5a8
	ld b,006h		;a5aa
	ld b,00bh		;a5ac
	dec bc			;a5ae
	dec bc			;a5af
	ld c,h			;a5b0
	ld c,h			;a5b1
	ld c,l			;a5b2
	ld c,l			;a5b3
	ld c,l			;a5b4
	ld c,l			;a5b5
	ld c,l			;a5b6
	ld c,l			;a5b7
	ld c,l			;a5b8
	ld c,l			;a5b9
	ld c,l			;a5ba
	ld c,e			;a5bb
	ld c,l			;a5bc
	ld c,h			;a5bd
	ld c,h			;a5be
	ld c,h			;a5bf
	dec bc			;a5c0
	dec bc			;a5c1
	dec bc			;a5c2
	dec bc			;a5c3
	dec bc			;a5c4
	dec bc			;a5c5
	ld b,006h		;a5c6
	dec bc			;a5c8
	ld b,00bh		;a5c9
	dec bc			;a5cb
	dec bc			;a5cc
	dec bc			;a5cd
	dec bc			;a5ce
	dec bc			;a5cf
	ld c,h			;a5d0
	ld c,h			;a5d1
	ld c,h			;a5d2
	ld c,h			;a5d3
	ld c,h			;a5d4
	ld c,h			;a5d5
	ld c,h			;a5d6
	ld c,h			;a5d7
	ld b,(hl)		;a5d8
	ld c,h			;a5d9
	ld c,h			;a5da
	ld c,h			;a5db
	ld c,h			;a5dc
	ld c,h			;a5dd
	ld c,h			;a5de
	ld c,h			;a5df
	dec bc			;a5e0
	dec c			;a5e1
	ex af,af'		;a5e2
	dec c			;a5e3
	ex af,af'		;a5e4
	dec bc			;a5e5
	rlca			;a5e6
	rlca			;a5e7
	rlca			;a5e8
	rlca			;a5e9
	dec bc			;a5ea
	ex af,af'		;a5eb
	dec c			;a5ec
	ex af,af'		;a5ed
	dec c			;a5ee
	dec bc			;a5ef
	ld c,h			;a5f0
	ld c,(hl)		;a5f1
	ld c,h			;a5f2
	ld c,(hl)		;a5f3
	ld c,a			;a5f4
	ld c,h			;a5f5
	ld c,h			;a5f6
	ld c,(hl)		;a5f7
	ld c,e			;a5f8
	ld c,h			;a5f9
	ld c,h			;a5fa
	ld c,a			;a5fb
	ld c,(hl)		;a5fc
	ld c,h			;a5fd
	ld c,(hl)		;a5fe
	ld c,h			;a5ff
	dec bc			;a600
	inc c			;a601
	dec bc			;a602
	dec bc			;a603
	dec bc			;a604
	dec bc			;a605
	dec bc			;a606
	dec bc			;a607
	dec bc			;a608
	dec bc			;a609
	dec bc			;a60a
	dec bc			;a60b
	dec bc			;a60c
	inc c			;a60d
	dec bc			;a60e
	dec bc			;a60f
	ld c,h			;a610
	ld c,(hl)		;a611
	ld c,h			;a612
	ld c,h			;a613
	ld c,h			;a614
	ld c,h			;a615
	ld c,h			;a616
	ld c,(hl)		;a617
	ld c,h			;a618
	ld c,h			;a619
	ld c,h			;a61a
	ld c,h			;a61b
	ld c,h			;a61c
	ld c,(hl)		;a61d
	ld c,h			;a61e
	ld c,h			;a61f
	nop			;a620
	nop			;a621
	nop			;a622
	nop			;a623
	nop			;a624
	ld c,008h		;a625
	ld c,00dh		;a627
	ex af,af'		;a629
	ld c,000h		;a62a
	nop			;a62c
	nop			;a62d
	nop			;a62e
	nop			;a62f
	ld b,008h		;a630
	ex af,af'		;a632
	dec c			;a633
	ex af,af'		;a634
	ld c,008h		;a635
	ld c,00eh		;a637
	ex af,af'		;a639
	dec c			;a63a
	ex af,af'		;a63b
	dec c			;a63c
	ex af,af'		;a63d
	ex af,af'		;a63e
	ld b,00bh		;a63f
	dec bc			;a641
	dec bc			;a642
	dec bc			;a643
	dec bc			;a644
	dec bc			;a645
	ex af,af'		;a646
	dec bc			;a647
	ex af,af'		;a648
	ld b,00bh		;a649
	dec bc			;a64b
	dec bc			;a64c
	dec bc			;a64d
	dec bc			;a64e
	dec bc			;a64f
	ld c,h			;a650
	ld c,h			;a651
	ld c,(hl)		;a652
	ld c,h			;a653
	ld c,h			;a654
	ld c,h			;a655
	ld c,d			;a656
	ld c,(hl)		;a657
	ld c,d			;a658
	ld c,l			;a659
	ld c,h			;a65a
	ld c,h			;a65b
	ld c,h			;a65c
	ld c,(hl)		;a65d
	ld c,h			;a65e
	ld c,h			;a65f
	ld b,006h		;a660
	ld b,006h		;a662
	ex af,af'		;a664
	dec b			;a665
	ld b,005h		;a666
	dec b			;a668
	dec c			;a669
	dec c			;a66a
	dec c			;a66b
	dec c			;a66c
	dec c			;a66d
	dec b			;a66e
	dec b			;a66f
	ld c,c			;a670
	ld c,c			;a671
	ld c,h			;a672
	ld c,h			;a673
	ld c,(hl)		;a674
	ld c,b			;a675
	ld c,c			;a676
	ld c,b			;a677
	ld c,b			;a678
	ld c,(hl)		;a679
	ld c,(hl)		;a67a
	ld c,(hl)		;a67b
	ld c,(hl)		;a67c
	ld c,(hl)		;a67d
	ld c,(hl)		;a67e
	ld c,(hl)		;a67f
	nop			;a680
	add hl,bc		;a681
	ld b,006h		;a682
	add hl,bc		;a684
	ld b,006h		;a685
	dec c			;a687
	dec c			;a688
	dec c			;a689
	dec c			;a68a
	dec c			;a68b
	dec c			;a68c
	dec c			;a68d
	dec b			;a68e
	nop			;a68f
	ld b,b			;a690
	ld c,e			;a691
	ld c,h			;a692
	ld c,h			;a693
	ld c,(hl)		;a694
	ld c,b			;a695
	ld c,b			;a696
	ld c,(hl)		;a697
	ld c,(hl)		;a698
	ld c,(hl)		;a699
	ld c,(hl)		;a69a
	ld c,(hl)		;a69b
	ld c,(hl)		;a69c
	ld c,(hl)		;a69d
	ld c,(hl)		;a69e
	ld b,b			;a69f
	nop			;a6a0
	nop			;a6a1
	nop			;a6a2
	dec b			;a6a3
	dec c			;a6a4
	dec c			;a6a5
	add hl,bc		;a6a6
	ld b,005h		;a6a7
	dec c			;a6a9
	dec c			;a6aa
	dec b			;a6ab
	nop			;a6ac
	nop			;a6ad
	nop			;a6ae
	nop			;a6af
	ld b,b			;a6b0
	ld b,b			;a6b1
	ld b,b			;a6b2
	ld c,(hl)		;a6b3
	ld c,(hl)		;a6b4
	ld c,(hl)		;a6b5
	ld c,(hl)		;a6b6
	ld c,b			;a6b7
	ld c,h			;a6b8
	ld c,(hl)		;a6b9
	ld c,(hl)		;a6ba
	ld c,(hl)		;a6bb
	ld b,b			;a6bc
	ld b,b			;a6bd
	ld b,b			;a6be
	ld b,b			;a6bf
	nop			;a6c0
	dec c			;a6c1
	dec c			;a6c2
	dec c			;a6c3
	dec c			;a6c4
	dec c			;a6c5
	dec c			;a6c6
	dec c			;a6c7
	dec b			;a6c8
	dec b			;a6c9
	ld b,009h		;a6ca
	add hl,bc		;a6cc
	ld b,006h		;a6cd
	nop			;a6cf
	ld b,b			;a6d0
	ld c,(hl)		;a6d1
	ld c,(hl)		;a6d2
	ld c,(hl)		;a6d3
	ld c,(hl)		;a6d4
	ld c,(hl)		;a6d5
	ld c,(hl)		;a6d6
	ld c,(hl)		;a6d7
	ld c,b			;a6d8
	ld c,c			;a6d9
	ld c,l			;a6da
	ld c,(hl)		;a6db
	ld c,(hl)		;a6dc
	ld c,h			;a6dd
	ld c,h			;a6de
	ld b,b			;a6df
	dec bc			;a6e0
	dec bc			;a6e1
	dec bc			;a6e2
	dec bc			;a6e3
	dec bc			;a6e4
	rlca			;a6e5
	rlca			;a6e6
	rlca			;a6e7
	rlca			;a6e8
	rlca			;a6e9
	rlca			;a6ea
	dec bc			;a6eb
	dec bc			;a6ec
	dec bc			;a6ed
	dec bc			;a6ee
	dec bc			;a6ef
	ld c,h			;a6f0
	ld c,h			;a6f1
	ld c,h			;a6f2
	ld c,(hl)		;a6f3
	ld c,h			;a6f4
	ld c,h			;a6f5
	ld c,(hl)		;a6f6
	ld c,e			;a6f7
	ld c,e			;a6f8
	ld c,h			;a6f9
	ld c,h			;a6fa
	ld c,h			;a6fb
	ld c,h			;a6fc
	ld c,h			;a6fd
	ld c,h			;a6fe
	ld c,h			;a6ff
	rlca			;a700
	rlca			;a701
	rlca			;a702
	rlca			;a703
	rlca			;a704
	rlca			;a705
	dec bc			;a706
	dec bc			;a707
	dec bc			;a708
	dec bc			;a709
	dec bc			;a70a
	dec bc			;a70b
	dec bc			;a70c
	dec bc			;a70d
	dec bc			;a70e
	dec bc			;a70f
	ld c,(hl)		;a710
	ld c,(hl)		;a711
	ld c,(hl)		;a712
	ld c,h			;a713
	ld c,e			;a714
	ld c,h			;a715
	ld c,h			;a716
	ld c,h			;a717
	ld c,h			;a718
	ld c,h			;a719
	ld c,h			;a71a
	ld c,h			;a71b
	ld c,h			;a71c
	ld c,h			;a71d
	ld c,h			;a71e
	ld c,(hl)		;a71f
	dec bc			;a720
	dec bc			;a721
	dec bc			;a722
	dec bc			;a723
	dec bc			;a724
	dec bc			;a725
	dec bc			;a726
	dec bc			;a727
	dec bc			;a728
	dec bc			;a729
	dec bc			;a72a
	dec bc			;a72b
	dec bc			;a72c
	dec bc			;a72d
	dec bc			;a72e
	dec bc			;a72f
	ld c,h			;a730
	ld c,h			;a731
	ld c,h			;a732
	ld c,h			;a733
	ld c,h			;a734
	ld c,h			;a735
	ld c,h			;a736
	ld c,h			;a737
	ld c,h			;a738
	ld c,h			;a739
	ld c,h			;a73a
	ld c,h			;a73b
	ld c,h			;a73c
	ld c,h			;a73d
	ld c,h			;a73e
	ld c,h			;a73f
	dec bc			;a740
	dec bc			;a741
	dec bc			;a742
	dec bc			;a743
	dec bc			;a744
	dec bc			;a745
	ld a,(bc)		;a746
	dec bc			;a747
	dec bc			;a748
	dec bc			;a749
	dec bc			;a74a
	dec bc			;a74b
	dec bc			;a74c
	dec bc			;a74d
	dec bc			;a74e
	dec bc			;a74f
	ld c,h			;a750
	ld c,h			;a751
	ld c,(hl)		;a752
	ld c,(hl)		;a753
	ld c,h			;a754
	ld c,h			;a755
	ld b,(hl)		;a756
	ld b,(hl)		;a757
	ld c,h			;a758
	ld c,h			;a759
	ld c,h			;a75a
	ld c,h			;a75b
	ld c,h			;a75c
	ld c,h			;a75d
	ld c,h			;a75e
	ld c,h			;a75f
	ld a,(bc)		;a760
	dec bc			;a761
	dec bc			;a762
	dec bc			;a763
	dec bc			;a764
	dec bc			;a765
	dec bc			;a766
	dec bc			;a767
	dec bc			;a768
	dec bc			;a769
	dec bc			;a76a
	dec bc			;a76b
	dec bc			;a76c
	dec bc			;a76d
	dec bc			;a76e
	dec bc			;a76f
	ld b,(hl)		;a770
	ld c,(hl)		;a771
	ld b,(hl)		;a772
	ld c,h			;a773
	ld c,h			;a774
	ld c,h			;a775
	ld c,h			;a776
	ld c,h			;a777
	ld c,h			;a778
	ld c,h			;a779
	ld c,h			;a77a
	ld c,h			;a77b
	ld c,h			;a77c
	ld c,h			;a77d
	ld c,h			;a77e
	ld c,h			;a77f
	nop			;a780
	nop			;a781
	ld a,(bc)		;a782
	dec bc			;a783
	dec bc			;a784
	dec bc			;a785
	dec bc			;a786
	dec bc			;a787
	dec bc			;a788
	dec bc			;a789
	dec bc			;a78a
	dec bc			;a78b
	dec bc			;a78c
	dec bc			;a78d
	dec bc			;a78e
	dec bc			;a78f
	ld b,b			;a790
	ld b,b			;a791
	ld b,(hl)		;a792
	ld c,(hl)		;a793
	ld b,(hl)		;a794
	ld c,h			;a795
	ld c,h			;a796
	ld c,h			;a797
	ld c,h			;a798
	ld c,h			;a799
	ld c,h			;a79a
	ld c,h			;a79b
	ld c,h			;a79c
	ld c,h			;a79d
	ld c,h			;a79e
	ld c,h			;a79f
	nop			;a7a0
	nop			;a7a1
	dec bc			;a7a2
	ld a,(bc)		;a7a3
	ld a,(bc)		;a7a4
	dec bc			;a7a5
	dec bc			;a7a6
	dec bc			;a7a7
	dec bc			;a7a8
	dec bc			;a7a9
	dec bc			;a7aa
	dec bc			;a7ab
	dec bc			;a7ac
	dec bc			;a7ad
	dec bc			;a7ae
	dec bc			;a7af
	ld b,b			;a7b0
	ld b,b			;a7b1
	ld b,(hl)		;a7b2
	ld b,(hl)		;a7b3
	ld b,(hl)		;a7b4
	ld b,(hl)		;a7b5
	ld b,(hl)		;a7b6
	ld b,(hl)		;a7b7
	ld c,h			;a7b8
	ld c,h			;a7b9
	ld c,h			;a7ba
	ld c,h			;a7bb
	ld c,h			;a7bc
	ld c,h			;a7bd
	ld c,h			;a7be
	ld c,h			;a7bf
	nop			;a7c0
	nop			;a7c1
	ld a,(bc)		;a7c2
	dec bc			;a7c3
	dec bc			;a7c4
	dec bc			;a7c5
	dec bc			;a7c6
	dec bc			;a7c7
	dec bc			;a7c8
	dec bc			;a7c9
	dec bc			;a7ca
	dec bc			;a7cb
	dec bc			;a7cc
	dec bc			;a7cd
	dec bc			;a7ce
	dec bc			;a7cf
	ld b,b			;a7d0
	ld b,b			;a7d1
	ld b,(hl)		;a7d2
	ld c,(hl)		;a7d3
	ld b,(hl)		;a7d4
	ld c,h			;a7d5
	ld c,h			;a7d6
	ld c,h			;a7d7
	ld c,h			;a7d8
	ld c,h			;a7d9
	ld c,h			;a7da
	ld c,h			;a7db
	ld c,h			;a7dc
	ld c,h			;a7dd
	ld c,h			;a7de
	ld c,h			;a7df
	ld a,(bc)		;a7e0
	dec bc			;a7e1
	dec bc			;a7e2
	dec bc			;a7e3
	dec bc			;a7e4
	dec bc			;a7e5
	dec bc			;a7e6
	dec bc			;a7e7
	dec bc			;a7e8
	dec bc			;a7e9
	dec bc			;a7ea
	dec bc			;a7eb
	dec bc			;a7ec
	dec bc			;a7ed
	dec bc			;a7ee
	dec bc			;a7ef
	ld b,(hl)		;a7f0
	ld c,(hl)		;a7f1
	ld b,(hl)		;a7f2
	ld c,h			;a7f3
	ld c,h			;a7f4
	ld c,h			;a7f5
	ld c,h			;a7f6
	ld c,h			;a7f7
	ld c,h			;a7f8
	ld c,h			;a7f9
	ld c,h			;a7fa
	ld c,h			;a7fb
	ld c,h			;a7fc
	ld c,h			;a7fd
	ld c,h			;a7fe
	ld c,h			;a7ff
	dec bc			;a800
	dec bc			;a801
	dec bc			;a802
	dec bc			;a803
	dec bc			;a804
	dec bc			;a805
	dec bc			;a806
	ld a,(bc)		;a807
	ld a,(bc)		;a808
	ld a,(bc)		;a809
	dec bc			;a80a
	dec bc			;a80b
	dec bc			;a80c
	dec bc			;a80d
	dec bc			;a80e
	dec bc			;a80f
	ld c,(hl)		;a810
	ld c,h			;a811
	ld c,h			;a812
	ld c,(hl)		;a813
	ld c,h			;a814
	ld c,h			;a815
	ld c,(hl)		;a816
	ld c,l			;a817
	ld c,l			;a818
	ld c,l			;a819
	ld c,(hl)		;a81a
	ld c,(hl)		;a81b
	ld c,h			;a81c
	ld c,h			;a81d
	ld c,h			;a81e
	ld c,h			;a81f
	nop			;a820
	nop			;a821
	nop			;a822
	nop			;a823
	dec bc			;a824
	inc c			;a825
	dec bc			;a826
	dec bc			;a827
	dec bc			;a828
	ld b,00bh		;a829
	dec bc			;a82b
	dec bc			;a82c
	inc c			;a82d
	dec bc			;a82e
	dec bc			;a82f
	ld b,b			;a830
	ld b,b			;a831
	ld b,b			;a832
	ld b,b			;a833
	ld c,h			;a834
	ld c,(hl)		;a835
	ld c,h			;a836
	ld c,h			;a837
	ld c,h			;a838
	ld c,l			;a839
	ld c,(hl)		;a83a
	ld c,h			;a83b
	ld c,h			;a83c
	ld c,(hl)		;a83d
	ld c,h			;a83e
	ld c,h			;a83f
	dec bc			;a840
	dec bc			;a841
	dec bc			;a842
	dec bc			;a843
	dec bc			;a844
	dec bc			;a845
	ld b,00bh		;a846
	dec bc			;a848
	inc c			;a849
	dec bc			;a84a
	dec bc			;a84b
	nop			;a84c
	nop			;a84d
	nop			;a84e
	nop			;a84f
	ld c,h			;a850
	ld c,h			;a851
	ld c,h			;a852
	ld c,h			;a853
	ld c,h			;a854
	ld c,(hl)		;a855
	ld c,l			;a856
	ld c,h			;a857
	ld c,h			;a858
	ld c,(hl)		;a859
	ld c,h			;a85a
	ld c,h			;a85b
	ld b,b			;a85c
	ld b,b			;a85d
	ld b,b			;a85e
	ld b,b			;a85f
	ld a,(bc)		;a860
	ld a,(bc)		;a861
	ld a,(bc)		;a862
	dec bc			;a863
	dec bc			;a864
	dec bc			;a865
	dec bc			;a866
	dec bc			;a867
	dec bc			;a868
	dec bc			;a869
	dec bc			;a86a
	dec bc			;a86b
	dec bc			;a86c
	dec bc			;a86d
	dec bc			;a86e
	dec bc			;a86f
	ld b,(hl)		;a870
	ld b,(hl)		;a871
	ld b,(hl)		;a872
	ld c,h			;a873
	ld c,h			;a874
	ld c,h			;a875
	ld c,h			;a876
	ld c,h			;a877
	ld c,h			;a878
	ld c,(hl)		;a879
	ld c,h			;a87a
	ld c,h			;a87b
	ld c,h			;a87c
	ld c,h			;a87d
	ld c,h			;a87e
	ld c,h			;a87f
	dec bc			;a880
	dec bc			;a881
	dec bc			;a882
	dec bc			;a883
	dec bc			;a884
	dec bc			;a885
	dec bc			;a886
	dec bc			;a887
	dec bc			;a888
	dec bc			;a889
	dec bc			;a88a
	dec bc			;a88b
	dec bc			;a88c
	ld a,(bc)		;a88d
	ld a,(bc)		;a88e
	ld a,(bc)		;a88f
	ld c,h			;a890
	ld c,h			;a891
	ld c,h			;a892
	ld c,h			;a893
	ld c,h			;a894
	ld c,(hl)		;a895
	ld c,h			;a896
	ld c,h			;a897
	ld c,h			;a898
	ld c,h			;a899
	ld c,h			;a89a
	ld c,h			;a89b
	ld c,h			;a89c
	ld b,(hl)		;a89d
	ld b,(hl)		;a89e
	ld b,(hl)		;a89f
	rlca			;a8a0
	rlca			;a8a1
	rlca			;a8a2
	dec bc			;a8a3
	dec bc			;a8a4
	dec bc			;a8a5
	dec bc			;a8a6
	dec bc			;a8a7
	dec bc			;a8a8
	dec bc			;a8a9
	dec bc			;a8aa
	dec bc			;a8ab
	dec bc			;a8ac
	dec bc			;a8ad
	dec bc			;a8ae
	dec bc			;a8af
	ld c,(hl)		;a8b0
	ld c,(hl)		;a8b1
	ld c,(hl)		;a8b2
	ld c,h			;a8b3
	ld c,h			;a8b4
	ld c,(hl)		;a8b5
	ld c,(hl)		;a8b6
	ld c,h			;a8b7
	ld c,h			;a8b8
	ld c,h			;a8b9
	ld c,h			;a8ba
	ld c,h			;a8bb
	ld c,h			;a8bc
	ld c,h			;a8bd
	ld c,h			;a8be
	ld c,h			;a8bf
	rlca			;a8c0
	rlca			;a8c1
	rlca			;a8c2
	dec bc			;a8c3
	dec bc			;a8c4
	dec bc			;a8c5
	dec bc			;a8c6
	dec bc			;a8c7
	dec bc			;a8c8
	dec bc			;a8c9
	dec bc			;a8ca
	dec bc			;a8cb
	dec bc			;a8cc
	dec bc			;a8cd
	dec bc			;a8ce
	dec bc			;a8cf
	ld c,(hl)		;a8d0
	ld c,(hl)		;a8d1
	ld c,(hl)		;a8d2
	ld b,a			;a8d3
	ld c,(hl)		;a8d4
	ld c,h			;a8d5
	ld c,h			;a8d6
	ld c,(hl)		;a8d7
	ld c,h			;a8d8
	ld c,h			;a8d9
	ld c,h			;a8da
	ld c,h			;a8db
	ld b,a			;a8dc
	ld b,a			;a8dd
	ld b,a			;a8de
	ld b,a			;a8df
	dec bc			;a8e0
	dec bc			;a8e1
	inc c			;a8e2
	dec bc			;a8e3
	dec bc			;a8e4
	dec bc			;a8e5
	ld b,006h		;a8e6
	ld b,006h		;a8e8
	dec bc			;a8ea
	dec bc			;a8eb
	dec bc			;a8ec
	inc c			;a8ed
	dec bc			;a8ee
	dec bc			;a8ef
	ld c,h			;a8f0
	ld c,h			;a8f1
	ld c,(hl)		;a8f2
	ld c,h			;a8f3
	ld c,h			;a8f4
	ld b,(hl)		;a8f5
	ld c,d			;a8f6
	ld c,d			;a8f7
	ld c,d			;a8f8
	ld c,d			;a8f9
	ld b,(hl)		;a8fa
	ld c,h			;a8fb
	ld c,h			;a8fc
	ld c,(hl)		;a8fd
	ld c,h			;a8fe
	ld c,h			;a8ff
	nop			;a900
	dec bc			;a901
	dec bc			;a902
	dec c			;a903
	dec bc			;a904
	dec bc			;a905
	dec bc			;a906
	dec bc			;a907
	dec bc			;a908
	dec bc			;a909
	ld c,006h		;a90a
	ld b,00bh		;a90c
	dec bc			;a90e
	dec bc			;a90f
	ld b,b			;a910
	ld c,h			;a911
	ld c,h			;a912
	ld c,a			;a913
	ld c,h			;a914
	ld c,h			;a915
	ld c,h			;a916
	ld c,h			;a917
	ld c,h			;a918
	ld c,h			;a919
	ld c,l			;a91a
	ld c,l			;a91b
	ld c,h			;a91c
	ld c,h			;a91d
	ld c,h			;a91e
	ld c,h			;a91f
	dec bc			;a920
	dec bc			;a921
	dec bc			;a922
	dec bc			;a923
	dec bc			;a924
	ld b,006h		;a925
	ld b,006h		;a927
	ld b,00bh		;a929
	dec bc			;a92b
	inc c			;a92c
	dec bc			;a92d
	dec bc			;a92e
	dec bc			;a92f
	ld c,(hl)		;a930
	ld c,(hl)		;a931
	ld c,(hl)		;a932
	ld c,(hl)		;a933
	ld c,(hl)		;a934
	ld c,h			;a935
	ld c,d			;a936
	ld c,d			;a937
	ld c,e			;a938
	ld c,e			;a939
	ld c,h			;a93a
	ld c,h			;a93b
	ld c,(hl)		;a93c
	ld c,h			;a93d
	ld c,h			;a93e
	ld c,h			;a93f
	dec bc			;a940
	ld b,00eh		;a941
	ld b,00bh		;a943
	dec bc			;a945
	dec bc			;a946
	dec bc			;a947
	dec bc			;a948
	dec bc			;a949
	dec bc			;a94a
	dec bc			;a94b
	dec bc			;a94c
	dec bc			;a94d
	dec bc			;a94e
	dec bc			;a94f
	ld c,h			;a950
	ld c,h			;a951
	ld c,a			;a952
	ld c,a			;a953
	ld c,h			;a954
	ld c,h			;a955
	ld c,h			;a956
	ld c,h			;a957
	ld c,h			;a958
	ld c,h			;a959
	ld c,h			;a95a
	ld c,h			;a95b
	ld c,h			;a95c
	ld c,h			;a95d
	ld c,h			;a95e
	ld c,h			;a95f
	dec bc			;a960
	inc c			;a961
	dec bc			;a962
	dec bc			;a963
	dec bc			;a964
	dec bc			;a965
	ld b,00ah		;a966
	ld a,(bc)		;a968
	ld b,00bh		;a969
	dec bc			;a96b
	dec bc			;a96c
	dec bc			;a96d
	dec bc			;a96e
	dec bc			;a96f
	ld c,h			;a970
	ld c,(hl)		;a971
	ld c,h			;a972
	ld c,h			;a973
	ld c,h			;a974
	ld c,h			;a975
	ld c,l			;a976
	ld b,(hl)		;a977
	ld b,(hl)		;a978
	ld c,l			;a979
	ld c,h			;a97a
	ld c,h			;a97b
	ld c,h			;a97c
	ld c,h			;a97d
	ld c,h			;a97e
	ld c,h			;a97f
	dec bc			;a980
	dec bc			;a981
	dec bc			;a982
	dec bc			;a983
	dec bc			;a984
	dec bc			;a985
	ld b,006h		;a986
	ld b,006h		;a988
	dec bc			;a98a
	dec bc			;a98b
	dec bc			;a98c
	dec bc			;a98d
	dec bc			;a98e
	dec bc			;a98f
	ld c,h			;a990
	ld c,h			;a991
	ld c,(hl)		;a992
	ld c,h			;a993
	ld c,h			;a994
	ld c,h			;a995
	ld c,h			;a996
	ld c,d			;a997
	ld c,e			;a998
	ld c,h			;a999
	ld c,h			;a99a
	ld c,h			;a99b
	ld c,(hl)		;a99c
	ld c,h			;a99d
	ld c,h			;a99e
	ld c,h			;a99f
	nop			;a9a0
	nop			;a9a1
	nop			;a9a2
	nop			;a9a3
	inc bc			;a9a4
	inc bc			;a9a5
	ld b,008h		;a9a6
	ld c,008h		;a9a8
	inc bc			;a9aa
	inc bc			;a9ab
	nop			;a9ac
	nop			;a9ad
	nop			;a9ae
	nop			;a9af
	ld b,b			;a9b0
	ld b,b			;a9b1
	ld b,b			;a9b2
	ld b,b			;a9b3
	ld c,l			;a9b4
	ld c,l			;a9b5
	ld c,l			;a9b6
	ld c,a			;a9b7
	ld c,a			;a9b8
	ld c,a			;a9b9
	ld c,l			;a9ba
	ld c,l			;a9bb
	ld b,b			;a9bc
	ld b,b			;a9bd
	ld b,b			;a9be
	ld b,b			;a9bf
	inc c			;a9c0
	dec bc			;a9c1
	ld a,(bc)		;a9c2
	ld b,006h		;a9c3
	ld c,00bh		;a9c5
	dec bc			;a9c7
	dec bc			;a9c8
	ld a,(bc)		;a9c9
	ld b,006h		;a9ca
	dec bc			;a9cc
	dec bc			;a9cd
	dec bc			;a9ce
	nop			;a9cf
	ld c,(hl)		;a9d0
	ld c,h			;a9d1
	ld c,h			;a9d2
	ld c,e			;a9d3
	ld c,e			;a9d4
	ld c,e			;a9d5
	ld c,h			;a9d6
	ld c,h			;a9d7
	ld c,h			;a9d8
	ld c,a			;a9d9
	ld c,h			;a9da
	ld c,h			;a9db
	ld c,h			;a9dc
	ld c,h			;a9dd
	ld c,h			;a9de
	ld b,b			;a9df
	dec bc			;a9e0
	dec bc			;a9e1
	dec bc			;a9e2
	dec bc			;a9e3
	dec bc			;a9e4
	ld b,006h		;a9e5
	ld b,006h		;a9e7
	ld b,00bh		;a9e9
	dec bc			;a9eb
	dec bc			;a9ec
	dec bc			;a9ed
	dec bc			;a9ee
	dec bc			;a9ef
	ld c,h			;a9f0
	ld c,h			;a9f1
	ld c,h			;a9f2
	ld c,h			;a9f3
	ld c,h			;a9f4
	ld c,e			;a9f5
	ld c,e			;a9f6
	ld c,e			;a9f7
	ld c,h			;a9f8
	ld c,h			;a9f9
	ld c,h			;a9fa
	ld c,h			;a9fb
	ld c,h			;a9fc
	ld c,h			;a9fd
	ld c,h			;a9fe
	ld c,h			;a9ff
	dec bc			;aa00
	inc c			;aa01
	dec bc			;aa02
	dec bc			;aa03
	ld b,00bh		;aa04
	ld b,00bh		;aa06
	dec bc			;aa08
	dec bc			;aa09
	dec bc			;aa0a
	dec bc			;aa0b
	dec bc			;aa0c
	dec bc			;aa0d
	dec bc			;aa0e
	dec bc			;aa0f
	ld c,h			;aa10
	ld c,(hl)		;aa11
	ld c,h			;aa12
	ld c,h			;aa13
	ld c,l			;aa14
	ld c,(hl)		;aa15
	ld c,l			;aa16
	ld c,h			;aa17
	ld c,(hl)		;aa18
	ld c,h			;aa19
	ld c,h			;aa1a
	ld c,h			;aa1b
	ld c,h			;aa1c
	ld c,h			;aa1d
	ld c,h			;aa1e
	ld c,h			;aa1f
	dec bc			;aa20
	dec bc			;aa21
	inc c			;aa22
	dec bc			;aa23
	dec bc			;aa24
	dec bc			;aa25
	dec bc			;aa26
	ld a,(bc)		;aa27
	ld a,(bc)		;aa28
	ld b,00bh		;aa29
	dec bc			;aa2b
	dec bc			;aa2c
	dec bc			;aa2d
	dec bc			;aa2e
	dec bc			;aa2f
	ld c,h			;aa30
	ld c,h			;aa31
	ld c,(hl)		;aa32
	ld c,h			;aa33
	ld c,h			;aa34
	ld c,(hl)		;aa35
	ld c,(hl)		;aa36
	ld b,(hl)		;aa37
	ld c,e			;aa38
	ld c,l			;aa39
	ld c,h			;aa3a
	ld c,h			;aa3b
	ld c,h			;aa3c
	ld c,h			;aa3d
	ld c,h			;aa3e
	ld c,h			;aa3f
	nop			;aa40
	dec bc			;aa41
	inc c			;aa42
	dec bc			;aa43
	inc c			;aa44
	inc c			;aa45
	ld b,006h		;aa46
	ld b,006h		;aa48
	dec bc			;aa4a
	dec bc			;aa4b
	dec bc			;aa4c
	dec bc			;aa4d
	dec bc			;aa4e
	nop			;aa4f
	ld b,b			;aa50
	ld c,h			;aa51
	ld c,(hl)		;aa52
	ld c,h			;aa53
	ld c,(hl)		;aa54
	ld c,(hl)		;aa55
	ld c,e			;aa56
	ld c,d			;aa57
	ld c,e			;aa58
	ld c,e			;aa59
	ld c,h			;aa5a
	ld c,h			;aa5b
	ld c,h			;aa5c
	ld c,h			;aa5d
	ld c,h			;aa5e
	ld b,b			;aa5f
	ex af,af'		;aa60
	dec c			;aa61
	dec c			;aa62
	ex af,af'		;aa63
	dec c			;aa64
	dec c			;aa65
	dec c			;aa66
	dec c			;aa67
	dec c			;aa68
	dec c			;aa69
	dec c			;aa6a
	dec c			;aa6b
	dec c			;aa6c
	dec c			;aa6d
	nop			;aa6e
	nop			;aa6f
	ld c,(hl)		;aa70
	ld c,(hl)		;aa71
	ld c,(hl)		;aa72
	ld c,l			;aa73
	ld c,(hl)		;aa74
	ld c,(hl)		;aa75
	ld c,(hl)		;aa76
	ld c,(hl)		;aa77
	ld c,(hl)		;aa78
	ld c,(hl)		;aa79
	ld c,(hl)		;aa7a
	ld c,(hl)		;aa7b
	ld c,(hl)		;aa7c
	ld c,(hl)		;aa7d
	ld b,b			;aa7e
	ld b,b			;aa7f
	nop			;aa80
	dec bc			;aa81
	dec bc			;aa82
	dec bc			;aa83
	dec bc			;aa84
	dec bc			;aa85
	dec bc			;aa86
	dec bc			;aa87
	dec bc			;aa88
	dec bc			;aa89
	dec bc			;aa8a
	dec bc			;aa8b
	dec bc			;aa8c
	dec bc			;aa8d
	dec bc			;aa8e
	dec bc			;aa8f
	ld b,b			;aa90
	ld c,h			;aa91
	ld c,h			;aa92
	ld c,h			;aa93
	ld c,h			;aa94
	ld c,(hl)		;aa95
	ld c,h			;aa96
	ld c,(hl)		;aa97
	ld c,h			;aa98
	ld c,h			;aa99
	ld c,(hl)		;aa9a
	ld c,h			;aa9b
	ld c,h			;aa9c
	ld c,h			;aa9d
	ld c,h			;aa9e
	ld c,h			;aa9f
	dec bc			;aaa0
	ld b,006h		;aaa1
	ld b,006h		;aaa3
	dec bc			;aaa5
	ld b,00ah		;aaa6
	ld b,00bh		;aaa8
	dec bc			;aaaa
	ld b,006h		;aaab
	ld b,006h		;aaad
	dec bc			;aaaf
	ld c,h			;aab0
	ld c,e			;aab1
	ld c,e			;aab2
	ld c,h			;aab3
	ld c,e			;aab4
	ld c,h			;aab5
	ld c,e			;aab6
	ld b,(hl)		;aab7
	ld c,e			;aab8
	ld c,h			;aab9
	ld c,h			;aaba
	ld c,e			;aabb
	ld c,h			;aabc
	ld c,e			;aabd
	ld c,e			;aabe
	ld c,h			;aabf
	dec bc			;aac0
	ld b,006h		;aac1
	ld b,006h		;aac3
	dec bc			;aac5
	dec bc			;aac6
	ld b,00ah		;aac7
	ld b,00bh		;aac9
	ld b,006h		;aacb
	ld b,006h		;aacd
	dec bc			;aacf
	ld c,h			;aad0
	ld c,e			;aad1
	ld c,e			;aad2
	ld c,h			;aad3
	ld c,e			;aad4
	ld c,h			;aad5
	ld c,h			;aad6
	ld c,e			;aad7
	ld b,(hl)		;aad8
	ld c,e			;aad9
	ld c,h			;aada
	ld c,e			;aadb
	ld c,h			;aadc
	ld c,e			;aadd
	ld c,e			;aade
	ld c,h			;aadf
	dec bc			;aae0
	dec bc			;aae1
	dec bc			;aae2
	dec bc			;aae3
	dec bc			;aae4
	dec bc			;aae5
	ld b,00ah		;aae6
	ld a,(bc)		;aae8
	ld b,006h		;aae9
	dec bc			;aaeb
	dec bc			;aaec
	dec bc			;aaed
	dec bc			;aaee
	dec bc			;aaef
	ld c,h			;aaf0
	ld c,h			;aaf1
	ld c,h			;aaf2
	ld c,h			;aaf3
	ld c,h			;aaf4
	ld c,h			;aaf5
	ld c,e			;aaf6
	ld b,(hl)		;aaf7
	ld b,(hl)		;aaf8
	ld c,e			;aaf9
	ld c,e			;aafa
	ld c,h			;aafb
	ld c,h			;aafc
	ld c,h			;aafd
	ld c,h			;aafe
	ld c,h			;aaff
	dec bc			;ab00
	dec bc			;ab01
	dec bc			;ab02
	dec bc			;ab03
	dec bc			;ab04
	ld b,006h		;ab05
	ld a,(bc)		;ab07
	ld a,(bc)		;ab08
	ld b,00bh		;ab09
	dec bc			;ab0b
	dec bc			;ab0c
	dec bc			;ab0d
	dec bc			;ab0e
	dec bc			;ab0f
	ld c,h			;ab10
	ld c,h			;ab11
	ld c,h			;ab12
	ld c,h			;ab13
	ld c,h			;ab14
	ld c,e			;ab15
	ld c,e			;ab16
	ld b,(hl)		;ab17
	ld b,(hl)		;ab18
	ld c,e			;ab19
	ld c,h			;ab1a
	ld c,h			;ab1b
	ld c,h			;ab1c
	ld c,h			;ab1d
	ld c,h			;ab1e
	ld c,h			;ab1f
	dec bc			;ab20
	rlca			;ab21
	rlca			;ab22
	rlca			;ab23
	rlca			;ab24
	dec bc			;ab25
	rlca			;ab26
	rlca			;ab27
	rlca			;ab28
	dec bc			;ab29
	dec bc			;ab2a
	rlca			;ab2b
	rlca			;ab2c
	rlca			;ab2d
	rlca			;ab2e
	dec bc			;ab2f
	ld c,h			;ab30
	ld c,e			;ab31
	ld c,e			;ab32
	ld c,(hl)		;ab33
	ld c,e			;ab34
	ld c,h			;ab35
	ld c,e			;ab36
	ld c,(hl)		;ab37
	ld c,e			;ab38
	ld c,h			;ab39
	ld c,h			;ab3a
	ld c,e			;ab3b
	ld c,(hl)		;ab3c
	ld c,e			;ab3d
	ld c,e			;ab3e
	ld c,h			;ab3f
	dec bc			;ab40
	rlca			;ab41
	rlca			;ab42
	rlca			;ab43
	rlca			;ab44
	dec bc			;ab45
	dec bc			;ab46
	rlca			;ab47
	rlca			;ab48
	rlca			;ab49
	dec bc			;ab4a
	rlca			;ab4b
	rlca			;ab4c
	rlca			;ab4d
	rlca			;ab4e
	dec bc			;ab4f
	ld c,h			;ab50
	ld c,e			;ab51
	ld c,e			;ab52
	ld c,(hl)		;ab53
	ld c,e			;ab54
	ld c,h			;ab55
	ld c,h			;ab56
	ld c,e			;ab57
	ld c,(hl)		;ab58
	ld c,e			;ab59
	ld c,h			;ab5a
	ld c,e			;ab5b
	ld c,(hl)		;ab5c
	ld c,e			;ab5d
	ld c,e			;ab5e
	ld c,h			;ab5f
	dec bc			;ab60
	dec bc			;ab61
	dec bc			;ab62
	dec bc			;ab63
	dec bc			;ab64
	dec bc			;ab65
	rlca			;ab66
	rlca			;ab67
lab68h:
	rlca			;ab68
	rlca			;ab69
	rlca			;ab6a
	dec bc			;ab6b
	dec bc			;ab6c
	dec bc			;ab6d
	dec bc			;ab6e
	dec bc			;ab6f
	ld c,h			;ab70
	ld c,h			;ab71
	ld c,h			;ab72
	ld c,h			;ab73
	ld c,h			;ab74
	ld c,h			;ab75
	ld c,e			;ab76
	ld c,(hl)		;ab77
	ld c,(hl)		;ab78
	ld c,(hl)		;ab79
	ld c,e			;ab7a
	ld c,h			;ab7b
	ld c,h			;ab7c
	ld c,h			;ab7d
	ld c,h			;ab7e
	ld c,h			;ab7f
	dec bc			;ab80
	dec bc			;ab81
	dec bc			;ab82
	dec bc			;ab83
	dec bc			;ab84
	rlca			;ab85
	rlca			;ab86
	rlca			;ab87
	rlca			;ab88
	rlca			;ab89
	dec bc			;ab8a
	dec bc			;ab8b
	dec bc			;ab8c
	dec bc			;ab8d
	dec bc			;ab8e
	dec bc			;ab8f
	ld c,h			;ab90
	ld c,h			;ab91
	ld c,h			;ab92
	ld c,h			;ab93
	ld c,h			;ab94
	ld c,e			;ab95
	ld c,(hl)		;ab96
	ld c,(hl)		;ab97
	ld c,(hl)		;ab98
	ld c,e			;ab99
	ld c,h			;ab9a
	ld c,h			;ab9b
	ld c,h			;ab9c
	ld c,h			;ab9d
	ld c,h			;ab9e
	ld c,h			;ab9f
	dec bc			;aba0
	rlca			;aba1
	rlca			;aba2
	rlca			;aba3
	rlca			;aba4
	dec bc			;aba5
	rlca			;aba6
	rlca			;aba7
	rlca			;aba8
laba9h:
	rlca			;aba9
	dec bc			;abaa
	dec bc			;abab
	dec bc			;abac
	dec bc			;abad
	dec bc			;abae
	dec bc			;abaf
	ld c,h			;abb0
	ld c,e			;abb1
	ld c,e			;abb2
	ld c,(hl)		;abb3
	ld c,e			;abb4
	ld c,h			;abb5
	ld c,e			;abb6
	ld c,(hl)		;abb7
	ld c,e			;abb8
	ld c,h			;abb9
	ld c,h			;abba
	ld c,h			;abbb
	ld c,h			;abbc
	ld c,h			;abbd
	ld c,h			;abbe
	ld c,h			;abbf
	dec bc			;abc0
	dec bc			;abc1
	inc c			;abc2
	ld a,(bc)		;abc3
	inc c			;abc4
	dec bc			;abc5
	ld c,00bh		;abc6
	dec bc			;abc8
	dec bc			;abc9
	inc c			;abca
	dec bc			;abcb
	dec bc			;abcc
	dec bc			;abcd
	dec bc			;abce
	dec bc			;abcf
	ld c,h			;abd0
	ld c,h			;abd1
	ld b,(hl)		;abd2
	ld c,e			;abd3
	ld b,(hl)		;abd4
	ld b,(hl)		;abd5
	ld c,a			;abd6
	ld c,h			;abd7
	ld c,h			;abd8
	ld c,h			;abd9
	ld c,d			;abda
	ld b,(hl)		;abdb
	ld b,(hl)		;abdc
	ld c,h			;abdd
	ld c,h			;abde
	ld c,h			;abdf
	nop			;abe0
	nop			;abe1
	dec bc			;abe2
	ld c,00ch		;abe3
	ld c,00bh		;abe5
	ld c,006h		;abe7
	dec bc			;abe9
	dec bc			;abea
	rrca			;abeb
	inc c			;abec
	inc c			;abed
	rrca			;abee
	nop			;abef
	dec bc			;abf0
	dec bc			;abf1
	inc c			;abf2
	dec bc			;abf3
	dec bc			;abf4
	dec bc			;abf5
	dec bc			;abf6
	dec bc			;abf7
	dec bc			;abf8
	dec bc			;abf9
	dec bc			;abfa
	dec bc			;abfb
	dec bc			;abfc
	dec bc			;abfd
	dec bc			;abfe
	dec bc			;abff
	ld c,h			;ac00
	ld c,h			;ac01
	ld c,(hl)		;ac02
	ld c,h			;ac03
	ld c,h			;ac04
	ld c,h			;ac05
	ld c,h			;ac06
	ld c,h			;ac07
	ld c,h			;ac08
	ld c,h			;ac09
	ld c,h			;ac0a
	ld c,h			;ac0b
	ld c,h			;ac0c
	ld c,h			;ac0d
	ld c,h			;ac0e
	ld c,h			;ac0f
	inc bc			;ac10
	ld c,00eh		;ac11
	inc bc			;ac13
	ld (bc),a		;ac14
	ld bc,0030eh		;ac15
	ld (bc),a		;ac18
	ld bc,00309h		;ac19
	ld (bc),a		;ac1c
	ld bc,00909h		;ac1d
	add hl,bc		;ac20
	ld bc,00202h		;ac21
	inc bc			;ac24
	ld c,00eh		;ac25
	inc bc			;ac27
	inc bc			;ac28
	ld (bc),a		;ac29
	ld (bc),a		;ac2a
	ld (bc),a		;ac2b
	ld bc,00101h		;ac2c
	nop			;ac2f
	ld bc,00302h		;ac30
	ld c,00eh		;ac33
	ld c,00eh		;ac35
	inc bc			;ac37
	inc bc			;ac38
	ld (bc),a		;ac39
	ld (bc),a		;ac3a
	ld (bc),a		;ac3b
	ld (bc),a		;ac3c
	ld bc,00001h		;ac3d
	add hl,bc		;ac40
	ld bc,00202h		;ac41
	inc bc			;ac44
	ld c,00eh		;ac45
	inc bc			;ac47
	inc bc			;ac48
	ld (bc),a		;ac49
	ld (bc),a		;ac4a
	ld (bc),a		;ac4b
	ld bc,00101h		;ac4c
	add hl,bc		;ac4f
	ld b,d			;ac50
	ld b,d			;ac51
	ld b,d			;ac52
	ld b,d			;ac53
	ld b,d			;ac54
	ld b,d			;ac55
	ld b,d			;ac56
	ld b,d			;ac57
	ld b,d			;ac58
	ld b,d			;ac59
	ld b,d			;ac5a
	ld b,d			;ac5b
	ld b,d			;ac5c
	ld b,d			;ac5d
	ld b,d			;ac5e
	ld b,d			;ac5f
	ex af,af'		;ac60
	ex af,af'		;ac61
	ex af,af'		;ac62
	ex af,af'		;ac63
	dec c			;ac64
	dec c			;ac65
	ex af,af'		;ac66
	dec c			;ac67
	dec c			;ac68
	dec c			;ac69
	dec c			;ac6a
	dec c			;ac6b
	dec c			;ac6c
	dec b			;ac6d
	dec b			;ac6e
	dec b			;ac6f
	ld c,(hl)		;ac70
	ld c,(hl)		;ac71
	ld c,(hl)		;ac72
	ld c,l			;ac73
	ld c,(hl)		;ac74
	ld c,(hl)		;ac75
	ld c,a			;ac76
	ld c,(hl)		;ac77
	ld c,(hl)		;ac78
	ld c,(hl)		;ac79
	ld c,(hl)		;ac7a
	ld c,(hl)		;ac7b
	ld c,(hl)		;ac7c
	ld c,a			;ac7d
	ld c,a			;ac7e
	ld c,a			;ac7f
	nop			;ac80
	nop			;ac81
	nop			;ac82
	rrca			;ac83
	rrca			;ac84
	rrca			;ac85
	ld c,00eh		;ac86
	rrca			;ac88
	rrca			;ac89
	rrca			;ac8a
	rrca			;ac8b
	rrca			;ac8c
	rrca			;ac8d
	rrca			;ac8e
	rrca			;ac8f
	ld b,(hl)		;ac90
	ld c,b			;ac91
	ld c,b			;ac92
	ld c,l			;ac93
	ld c,l			;ac94
	ld c,b			;ac95
	ld c,l			;ac96
	ld c,l			;ac97
	ld c,b			;ac98
	ld c,l			;ac99
	ld c,l			;ac9a
	ld c,l			;ac9b
	ld c,l			;ac9c
	ld c,l			;ac9d
	ld c,l			;ac9e
	ld b,(hl)		;ac9f
	nop			;aca0
	nop			;aca1
	nop			;aca2
	rrca			;aca3
	rrca			;aca4
	rrca			;aca5
	ld c,00eh		;aca6
	rrca			;aca8
	rrca			;aca9
	rrca			;acaa
	rrca			;acab
	rrca			;acac
	rrca			;acad
	rrca			;acae
	rrca			;acaf
	ld b,(hl)		;acb0
	ld c,b			;acb1
	ld c,b			;acb2
	ld c,l			;acb3
	ld c,l			;acb4
	ld c,b			;acb5
	ld c,l			;acb6
	ld c,l			;acb7
	ld c,b			;acb8
	ld c,l			;acb9
	ld c,l			;acba
	ld c,l			;acbb
	ld c,l			;acbc
	ld c,l			;acbd
	ld c,l			;acbe
	ld b,(hl)		;acbf
	nop			;acc0
	nop			;acc1
	rrca			;acc2
	rrca			;acc3
	rrca			;acc4
	rrca			;acc5
	ld c,00eh		;acc6
	rrca			;acc8
	rrca			;acc9
	rrca			;acca
	rrca			;accb
	rrca			;accc
	rrca			;accd
	rrca			;acce
	rrca			;accf
	ld b,b			;acd0
	ld b,(hl)		;acd1
	ld c,b			;acd2
	ld c,l			;acd3
	ld c,l			;acd4
	ld c,b			;acd5
	ld c,l			;acd6
	ld c,l			;acd7
	ld c,b			;acd8
	ld c,l			;acd9
	ld c,l			;acda
	ld c,l			;acdb
	ld c,l			;acdc
	ld c,l			;acdd
	ld b,(hl)		;acde
	ld b,b			;acdf
	nop			;ace0
	nop			;ace1
	nop			;ace2
	nop			;ace3
	nop			;ace4
	nop			;ace5
	nop			;ace6
	nop			;ace7
	nop			;ace8
	nop			;ace9
	nop			;acea
	nop			;aceb
	nop			;acec
	nop			;aced
	nop			;acee
	nop			;acef
	nop			;acf0
	nop			;acf1
	nop			;acf2
	nop			;acf3
	nop			;acf4
	nop			;acf5
	nop			;acf6
	nop			;acf7
	nop			;acf8
	nop			;acf9
	nop			;acfa
	nop			;acfb
	nop			;acfc
	nop			;acfd
	nop			;acfe
	nop			;acff
	jp 0801fh		;ad00
	jp 080f4h		;ad03
	jp 00000h		;ad06
	jp 0800fh		;ad09
	jp 08000h		;ad0c
	jp 06d30h		;ad0f
	jp 06e44h		;ad12
	jp 06d95h		;ad15
	jp 06d69h		;ad18
	jp 0707dh		;ad1b
	rst 38h			;ad1e
	rst 38h			;ad1f
	rst 38h			;ad20
	rst 38h			;ad21
	rst 38h			;ad22
	rst 38h			;ad23
	rst 38h			;ad24
	rst 38h			;ad25
	rst 38h			;ad26
	rst 38h			;ad27
	rst 38h			;ad28
	rst 38h			;ad29
	rst 38h			;ad2a
	rst 38h			;ad2b
	rst 38h			;ad2c
	rst 38h			;ad2d
	rst 38h			;ad2e
	rst 38h			;ad2f
	call 06d75h		;ad30
	ld a,(0ca10h)		;ad33
	call 06d00h		;ad36
	call 0476bh		;ad39
	ld hl,0c000h		;ad3c
	ld bc,005ffh		;ad3f
	call 04648h		;ad42
	ld a,001h		;ad45
	call 047dch		;ad47
	and 03eh		;ad4a
	cp 004h			;ad4c
	jr nz,lad59h		;ad4e
	ld (0c0ebh),a		;ad50
	ld bc,00219h		;ad53
	call 00047h		;ad56
lad59h:
	call 077fch		;ad59
	call 07683h		;ad5c
	call 06f99h		;ad5f
	call 04b8fh		;ad62
	call 06e77h		;ad65
	ret			;ad68
	call 06d75h		;ad69
	call 06f99h		;ad6c
	call 0476bh		;ad6f
	jp 04b8fh		;ad72
	ld hl,0705ch		;ad75
	ld b,009h		;ad78
	call 04a1fh		;ad7a
	ld a,(0ffe7h)		;ad7d
	and 008h		;ad80
	or 022h			;ad82
	ld b,a			;ad84
	ld c,008h		;ad85
	call 00047h		;ad87
	ld a,(0c0ebh)		;ad8a
	or a			;ad8d
	ret z			;ad8e
	ld bc,00219h		;ad8f
	jp 00047h		;ad92
	ld a,(0ca10h)		;ad95
	cp 004h			;ad98
	push af			;ad9a
	call z,06dc3h		;ad9b
	pop af			;ad9e
	cp 008h			;ad9f
	call z,06dbdh		;ada1
	call 07203h		;ada4
	call 07ab5h		;ada7
	ld a,(0c0d4h)		;adaa
	dec a			;adad
	jr z,ladebh		;adae
	dec a			;adb0
	jr z,ladeeh		;adb1
	jp p,06e08h		;adb3
	call 07ac4h		;adb6
	call 07755h		;adb9
	ret			;adbc
	ld a,(0ca02h)		;adbd
	and 003h		;adc0
	ret nz			;adc2
	di			;adc3
	ld a,(0c0b5h)		;adc4
	or a			;adc7
	jr nz,lade9h		;adc8
	ld a,(0c0b4h)		;adca
	cp 004h			;adcd
	ret nc			;adcf
	ld a,(0c0dbh)		;add0
	inc a			;add3
	cp 006h			;add4
	jr c,ladd9h		;add6
	xor a			;add8
ladd9h:
	ld (0c0dbh),a		;add9
	cp 004h			;addc
	jr c,lade4h		;adde
	neg			;ade0
	add a,006h		;ade2
lade4h:
	set 7,a			;ade4
	ld (0c0b5h),a		;ade6
lade9h:
	ei			;ade9
	ret			;adea
ladebh:
	call 06d09h		;adeb
ladeeh:
	xor a			;adee
	ld d,a			;adef
	ld e,a			;adf0
	ld (0ca1ch),de		;adf1
	ld (0ca1ah),de		;adf5
	ld (0ca14h),de		;adf9
	ld (0ca12h),de		;adfd
	ld (0c0d5h),a		;ae01
	ld hl,0c0d4h		;ae04
	inc (hl)		;ae07
	call 06e37h		;ae08
	ld c,018h		;ae0b
	ld de,00010h		;ae0d
	ld hl,0d988h		;ae10
	xor a			;ae13
lae14h:
	ld b,004h		;ae14
lae16h:
	ld (hl),a		;ae16
	inc hl			;ae17
	ld (hl),a		;ae18
	inc hl			;ae19
	ld (hl),a		;ae1a
	inc hl			;ae1b
	ld (hl),a		;ae1c
	inc hl			;ae1d
	ld (hl),a		;ae1e
	inc hl			;ae1f
	ld (hl),a		;ae20
	inc hl			;ae21
	ld (hl),a		;ae22
	inc hl			;ae23
	ld (hl),a		;ae24
	inc hl			;ae25
	djnz lae16h		;ae26
	add hl,de		;ae28
	dec c			;ae29
	jr nz,lae14h		;ae2a
	ret			;ae2c
	ld hl,0e000h		;ae2d
	ld bc,007ffh		;ae30
	call 04648h		;ae33
	ret			;ae36
	ld hl,(0c0dch)		;ae37
	ld (0ca12h),hl		;ae3a
	ld hl,(0c0deh)		;ae3d
	ld (0ca14h),hl		;ae40
	ret			;ae43
	call 07070h		;ae44
	ld a,(0c09bh)		;ae47
	rrca			;ae4a
	call 06f43h		;ae4b
	call 0707eh		;ae4e
	ld a,(0ca10h)		;ae51
	or a			;ae54
	call z,06e8ah		;ae55
	ld a,(0ca10h)		;ae58
	cp 002h			;ae5b
	call z,06e97h		;ae5d
	call 07683h		;ae60
	ld a,001h		;ae63
	ld (0c09ch),a		;ae65
	ld a,(0ef60h)		;ae68
	rlca			;ae6b
	ret nc			;ae6c
	rlca			;ae6d
	jp c,04cf5h		;ae6e
	ld a,0c0h		;ae71
	ld (0ef60h),a		;ae73
	ret			;ae76
	xor a			;ae77
	ld (0c0eah),a		;ae78
	ld hl,0e800h		;ae7b
	ld b,018h		;ae7e
lae80h:
	call 04678h		;ae80
	and 01fh		;ae83
	ld (hl),a		;ae85
	inc hl			;ae86
	djnz lae80h		;ae87
	ret			;ae89
	ld de,00020h		;ae8a
	ld b,0cdh		;ae8d
	jr lae9ch		;ae8f
lae91h:
	ld a,001h		;ae91
	ld (0c0eah),a		;ae93
	ret			;ae96
	ld de,0ffe0h		;ae97
	ld b,05fh		;ae9a
lae9ch:
	ld a,(0c0d4h)		;ae9c
	or a			;ae9f
	jr nz,lae91h		;aea0
	ld a,(0c0eah)		;aea2
	or a			;aea5
	ret nz			;aea6
	push bc			;aea7
	push de			;aea8
	ld de,(0c0e6h)		;aea9
	ld hl,(0ca12h)		;aead
	call 04612h		;aeb0
	add hl,de		;aeb3
	ld a,d			;aeb4
	cp h			;aeb5
	ld (0c0e6h),hl		;aeb6
	call nz,06f20h		;aeb9
	ld hl,(0c0e8h)		;aebc
	ld de,(0ca14h)		;aebf
	add hl,de		;aec3
	pop de			;aec4
	add hl,de		;aec5
	ld (0c0e8h),hl		;aec6
	ld de,(0ca1ch)		;aec9
	ld d,000h		;aecd
	add hl,de		;aecf
	ld a,l			;aed0
	srl a			;aed1
	srl a			;aed3
	srl a			;aed5
	srl a			;aed7
	srl a			;aed9
	neg			;aedb
	pop bc			;aedd
	add a,b			;aede
	push hl			;aedf
	exx			;aee0
	pop hl			;aee1
	ld l,a			;aee2
	exx			;aee3
	ld de,0e800h		;aee4
	ld hl,0d988h		;aee7
	ld b,018h		;aeea
laeech:
	push bc			;aeec
	push hl			;aeed
	ld a,(de)		;aeee
	inc de			;aeef
	exx			;aef0
	add a,h			;aef1
	and 01fh		;aef2
	exx			;aef4
	ld c,a			;aef5
	ld b,000h		;aef6
	add hl,bc		;aef8
	ld a,(hl)		;aef9
	or a			;aefa
	jr nz,laf01h		;aefb
	exx			;aefd
	ld a,l			;aefe
	exx			;aeff
	ld (hl),a		;af00
laf01h:
	pop hl			;af01
	push hl			;af02
	ld a,(de)		;af03
	exx			;af04
	add a,h			;af05
	add a,00dh		;af06
	and 01fh		;af08
	exx			;af0a
	ld c,a			;af0b
	ld b,000h		;af0c
	add hl,bc		;af0e
	ld a,(hl)		;af0f
	or a			;af10
	jr nz,laf17h		;af11
	exx			;af13
	ld a,l			;af14
	exx			;af15
	ld (hl),a		;af16
laf17h:
	pop hl			;af17
	ld bc,00030h		;af18
	add hl,bc		;af1b
	pop bc			;af1c
	djnz laeech		;af1d
	ret			;af1f
	ld a,(0c0d5h)		;af20
	cp 002h			;af23
	jr z,laf35h		;af25
	ld de,0e817h		;af27
	ld hl,0e816h		;af2a
	ld bc,00017h		;af2d
	ld a,(de)		;af30
	lddr			;af31
	ld (de),a		;af33
	ret			;af34
laf35h:
	ld de,0e800h		;af35
	ld hl,0e801h		;af38
	ld bc,00017h		;af3b
	ld a,(de)		;af3e
	ldir			;af3f
	ld (de),a		;af41
	ret			;af42
	jr c,laf6fh		;af43
	ld a,(0c0d2h)		;af45
	sub 01ch		;af48
	ld (0c9c5h),a		;af4a
	add a,06ch		;af4d
	ld (0c9cfh),a		;af4f
	ld a,(0c0ebh)		;af52
	or a			;af55
	jr nz,laf65h		;af56
	ld a,(0c0bbh)		;af58
	and 007h		;af5b
	sub 008h		;af5d
	and 00fh		;af5f
	ld (0c9c7h),a		;af61
	ret			;af64
laf65h:
	ld a,(0c0bbh)		;af65
	cpl			;af68
	and 007h		;af69
	ld (0c9c7h),a		;af6b
	ret			;af6e
laf6fh:
	ld a,(0c0d2h)		;af6f
	sub 01ch		;af72
	ld (0c9f1h),a		;af74
	add a,08ch		;af77
	ld (0c9fbh),a		;af79
	ld a,(0c0ebh)		;af7c
	or a			;af7f
	jr nz,laf8fh		;af80
	ld a,(0c0bbh)		;af82
	and 007h		;af85
	sub 008h		;af87
	and 00fh		;af89
	ld (0c9f3h),a		;af8b
	ret			;af8e
laf8fh:
	ld a,(0c0bbh)		;af8f
	cpl			;af92
	and 007h		;af93
	ld (0c9f3h),a		;af95
	ret			;af98
	ld de,0c9beh		;af99
	ld hl,07007h		;af9c
	ld bc,00015h		;af9f
	ldir			;afa2
	ld de,0c9eah		;afa4
	ld hl,07034h		;afa7
	ld bc,00015h		;afaa
	ldir			;afad
	ld de,0c948h		;afaf
	ld hl,07002h		;afb2
	ld bc,00005h		;afb5
	ldir			;afb8
	ld de,0c978h		;afba
	ld hl,0702fh		;afbd
	ld bc,00005h		;afc0
	ldir			;afc3
	ld de,0c9a8h		;afc5
	ld hl,0701ch		;afc8
	ld bc,00013h		;afcb
	ldir			;afce
	ld de,0c9d4h		;afd0
	ld hl,07049h		;afd3
	ld bc,00013h		;afd6
	ldir			;afd9
	ld a,(0ffe7h)		;afdb
	and 028h		;afde
	ld (0c9c3h),a		;afe0
	ld (0c9efh),a		;afe3
	or 002h			;afe6
	ld (0c9abh),a		;afe8
	ld (0c9d7h),a		;afeb
	ld a,(0c0ebh)		;afee
	or a			;aff1
	ret z			;aff2
	ld a,09bh		;aff3
	ld (0c9c8h),a		;aff5
	ld (0c9f4h),a		;aff8
	ld (0c9b0h),a		;affb
	ld (0c9dch),a		;affe
	ret			;b001
	inc b			;b002
	rst 28h			;b003
	add a,l			;b004
	inc b			;b005
	add a,b			;b006
	inc d			;b007
	ld (00481h),hl		;b008
	add a,b			;b00b
	ex af,af'		;b00c
	adc a,b			;b00d
	nop			;b00e
	sub a			;b00f
	nop			;b010
	sub d			;b011
	jr nc,$-124		;b012
	rst 20h			;b014
	add a,l			;b015
	ld h,d			;b016
	add a,c			;b017
	nop			;b018
	sub e			;b019
	inc d			;b01a
	add a,b			;b01b
	ld (de),a		;b01c
	ld (00a81h),hl		;b01d
	adc a,b			;b020
	ret nz			;b021
	sub a			;b022
	nop			;b023
	sub d			;b024
	ccf			;b025
	add a,d			;b026
	rst 20h			;b027
	add a,l			;b028
	in a,(093h)		;b029
	ld h,d			;b02b
	add a,c			;b02c
	ld d,080h		;b02d
	inc b			;b02f
	rst 38h			;b030
	add a,l			;b031
	inc b			;b032
	add a,b			;b033
	inc d			;b034
	ld (00481h),hl		;b035
	add a,b			;b038
	ex af,af'		;b039
	adc a,b			;b03a
	ret nz			;b03b
	sub a			;b03c
	nop			;b03d
	sub d			;b03e
	ld sp,0f782h		;b03f
	add a,l			;b042
	ld h,d			;b043
	add a,c			;b044
	nop			;b045
	sub e			;b046
	inc d			;b047
	add a,b			;b048
	ld (de),a		;b049
	ld (00a81h),hl		;b04a
	adc a,b			;b04d
	ret nz			;b04e
	sub a			;b04f
	nop			;b050
	sub d			;b051
	ccf			;b052
	add a,d			;b053
	rst 30h			;b054
	add a,l			;b055
	in a,(093h)		;b056
	ld h,d			;b058
	add a,c			;b059
	ld d,080h		;b05a
	nop			;b05c
	inc b			;b05d
	ld b,019h		;b05e
	ld (bc),a		;b060
	jr nc,$+11		;b061
	add a,b			;b063
	inc b			;b064
	inc bc			;b065
	inc bc			;b066
	rst 38h			;b067
	ld a,(bc)		;b068
	nop			;b069
	ld bc,00762h		;b06a
	rst 38h			;b06d
	ex af,af'		;b06e
	ld a,(bc)		;b06f
	ld a,(0c0d8h)		;b070
	or a			;b073
	ret z			;b074
	dec a			;b075
	ld (0c0d8h),a		;b076
	ret nz			;b079
	jp 04da9h		;b07a
	ret			;b07d
	call 07221h		;b07e
	call 070e4h		;b081
	ret			;b084
	ld hl,0c000h		;b085
	ld bc,0007fh		;b088
	call 04648h		;b08b
	ld hl,0c180h		;b08e
	ld bc,0007fh		;b091
	call 04648h		;b094
	ld hl,0c280h		;b097
	ld bc,0007fh		;b09a
	call 04648h		;b09d
	ret			;b0a0
	ld a,(ix+01ah)		;b0a1
	or a			;b0a4
	ld h,0c0h		;b0a5
	call z,070d3h		;b0a7
	ld l,a			;b0aa
	inc l			;b0ab
	res 7,(hl)		;b0ac
	dec l			;b0ae
	ld (hl),e		;b0af
	inc h			;b0b0
	ld (hl),d		;b0b1
	inc h			;b0b2
	ld (hl),a		;b0b3
	inc h			;b0b4
	ld (hl),c		;b0b5
	ret			;b0b6
	ld a,(ix+01ah)		;b0b7
	or a			;b0ba
	ld h,0c0h		;b0bb
	call z,070cfh		;b0bd
	ld l,a			;b0c0
	inc l			;b0c1
	res 7,(hl)		;b0c2
	dec l			;b0c4
	ld (hl),e		;b0c5
	inc h			;b0c6
	ld (hl),d		;b0c7
	inc h			;b0c8
	ld (hl),a		;b0c9
	inc h			;b0ca
	ld (hl),c		;b0cb
	inc h			;b0cc
	ld (hl),b		;b0cd
	ret			;b0ce
	ld l,03bh		;b0cf
	jr lb0d5h		;b0d1
	ld l,009h		;b0d3
lb0d5h:
	call 070ddh		;b0d5
	ld (hl),00fh		;b0d8
	dec l			;b0da
	ld a,l			;b0db
	ret			;b0dc
	xor a			;b0dd
lb0deh:
	cp (hl)			;b0de
	ret z			;b0df
	inc l			;b0e0
	inc l			;b0e1
	jr lb0deh		;b0e2
	ld a,(0c09bh)		;b0e4
	rrca			;b0e7
	jp nc,0713fh		;b0e8
	ld hl,0fa00h		;b0eb
	ld de,0c4b9h		;b0ee
	push de			;b0f1
	call 070f7h		;b0f2
	pop de			;b0f5
	inc d			;b0f6
	xor a			;b0f7
	call 046f0h		;b0f8
	push hl			;b0fb
	ex de,hl		;b0fc
	call 07106h		;b0fd
	pop hl			;b100
	ld de,00400h		;b101
	add hl,de		;b104
	ret			;b105
	ld a,(00007h)		;b106
	ld c,a			;b109
	ld de,0fff0h		;b10a
	call 07117h		;b10d
	ld de,00080h		;b110
	add hl,de		;b113
	ld de,0fff0h		;b114
	ld a,004h		;b117
lb119h:
	outi			;b119
	outi			;b11b
	outi			;b11d
	outi			;b11f
	outi			;b121
	outi			;b123
	outi			;b125
	outi			;b127
	add hl,de		;b129
	outi			;b12a
	outi			;b12c
	outi			;b12e
	outi			;b130
	outi			;b132
	outi			;b134
	outi			;b136
	outi			;b138
	add hl,de		;b13a
	dec a			;b13b
	jr nz,lb119h		;b13c
	ret			;b13e
	ld hl,0f200h		;b13f
	ld de,0c1c1h		;b142
	push de			;b145
	call 0714bh		;b146
	pop de			;b149
	inc d			;b14a
	xor a			;b14b
	call 046f0h		;b14c
	push hl			;b14f
	ex de,hl		;b150
	call 0715ah		;b151
	pop hl			;b154
	ld de,00400h		;b155
	add hl,de		;b158
	ret			;b159
	ld a,(00007h)		;b15a
	ld c,a			;b15d
	call 07165h		;b15e
	ld de,0ff80h		;b161
	add hl,de		;b164
	ld a,004h		;b165
lb167h:
	outi			;b167
	outi			;b169
	outi			;b16b
	outi			;b16d
	outi			;b16f
	outi			;b171
	outi			;b173
	outi			;b175
	outi			;b177
	outi			;b179
	outi			;b17b
	outi			;b17d
	outi			;b17f
	outi			;b181
	outi			;b183
	outi			;b185
	dec a			;b187
	jr nz,lb167h		;b188
	ret			;b18a
	ld a,(hl)		;b18b
	ld (de),a		;b18c
	bit 7,e			;b18d
	ret z			;b18f
	push hl			;b190
	push de			;b191
	ld b,a			;b192
	ld a,d			;b193
	sub 0c1h		;b194
	cp 003h			;b196
	jp nc,071adh		;b198
	add a,a			;b19b
	add a,038h		;b19c
	ld h,a			;b19e
	ld a,e			;b19f
	add a,040h		;b1a0
	and 07ch		;b1a2
	add a,a			;b1a4
	ld l,a			;b1a5
	add hl,hl		;b1a6
	call 071c3h		;b1a7
	pop de			;b1aa
	pop hl			;b1ab
	ret			;b1ac
	dec a			;b1ad
	add a,a			;b1ae
	add a,038h		;b1af
	ld h,a			;b1b1
	ld a,e			;b1b2
	add a,040h		;b1b3
	cpl			;b1b5
	and 07ch		;b1b6
	xor 004h		;b1b8
	add a,a			;b1ba
	ld l,a			;b1bb
	add hl,hl		;b1bc
	call 071c3h		;b1bd
	pop de			;b1c0
	pop hl			;b1c1
	ret			;b1c2
	ld a,(00007h)		;b1c3
	inc a			;b1c6
	ld c,a			;b1c7
	ld a,003h		;b1c8
	di			;b1ca
	out (c),a		;b1cb
	ld a,08eh		;b1cd
	out (c),a		;b1cf
	ld a,l			;b1d1
	out (c),a		;b1d2
	ld a,h			;b1d4
	out (c),a		;b1d5
	ei			;b1d7
	ld a,b			;b1d8
	dec c			;b1d9
	ld l,a			;b1da
	ld h,006h		;b1db
	add hl,hl		;b1dd
	add hl,hl		;b1de
	add hl,hl		;b1df
	add hl,hl		;b1e0
	outi			;b1e1
	outi			;b1e3
	outi			;b1e5
	outi			;b1e7
	outi			;b1e9
	outi			;b1eb
	outi			;b1ed
	outi			;b1ef
	outi			;b1f1
	outi			;b1f3
	outi			;b1f5
	outi			;b1f7
	outi			;b1f9
	outi			;b1fb
	outi			;b1fd
	outi			;b1ff
	ei			;b201
	ret			;b202
	di			;b203
	ld hl,0c09ch		;b204
	ld a,(0c09bh)		;b207
	xor (hl)		;b20a
	ei			;b20b
	rrca			;b20c
	jr c,lb213h		;b20d
	ld a,0c0h		;b20f
	jr lb215h		;b211
lb213h:
	ld a,0c3h		;b213
lb215h:
	ld (0c0aah),a		;b215
	inc a			;b218
	ld (0c0a6h),a		;b219
	inc a			;b21c
	ld (0c0a8h),a		;b21d
	ret			;b220
	exx			;b221
	ld a,(0c09bh)		;b222
	rrca			;b225
	jr c,lb230h		;b226
	ld bc,04060h		;b228
	ld de,0c0f0h		;b22b
	jr lb236h		;b22e
lb230h:
	ld bc,06080h		;b230
	ld de,0c0f0h		;b233
lb236h:
	ld h,007h		;b236
	ld a,(0c0ebh)		;b238
	or a			;b23b
	jr nz,lb244h		;b23c
	ld a,(0c0bbh)		;b23e
	and 007h		;b241
	ld h,a			;b243
lb244h:
	ld a,(0c0d2h)		;b244
	ld l,a			;b247
	push hl			;b248
	exx			;b249
	pop de			;b24a
	call 07255h		;b24b
	call 07470h		;b24e
	call 072d5h		;b251
	ret			;b254
	ld a,e			;b255
	sub 018h		;b256
	cp 0d8h			;b258
	jr nz,lb25dh		;b25a
	inc a			;b25c
lb25dh:
	ld e,a			;b25d
	ld (0c099h),a		;b25e
	ld a,(0c09bh)		;b261
	rrca			;b264
	jr nc,lb29eh		;b265
	ld hl,0c481h		;b267
	ld b,008h		;b26a
lb26ch:
	ld (hl),e		;b26c
	inc l			;b26d
	inc l			;b26e
	inc l			;b26f
	inc l			;b270
	ld (hl),e		;b271
	inc l			;b272
	inc l			;b273
	inc l			;b274
	inc l			;b275
	ld (hl),e		;b276
	inc l			;b277
	inc l			;b278
	inc l			;b279
	inc l			;b27a
	ld (hl),e		;b27b
	inc l			;b27c
	inc l			;b27d
	inc l			;b27e
	inc l			;b27f
	djnz lb26ch		;b280
	ld hl,0c581h		;b282
	ld b,008h		;b285
lb287h:
	ld (hl),e		;b287
	inc l			;b288
	inc l			;b289
	inc l			;b28a
	inc l			;b28b
	ld (hl),e		;b28c
	inc l			;b28d
	inc l			;b28e
	inc l			;b28f
	inc l			;b290
	ld (hl),e		;b291
	inc l			;b292
	inc l			;b293
	inc l			;b294
	inc l			;b295
	ld (hl),e		;b296
	inc l			;b297
	inc l			;b298
	inc l			;b299
	inc l			;b29a
	djnz lb287h		;b29b
	ret			;b29d
lb29eh:
	ld hl,0c181h		;b29e
	ld b,008h		;b2a1
lb2a3h:
	ld (hl),e		;b2a3
	inc l			;b2a4
	inc l			;b2a5
	inc l			;b2a6
	inc l			;b2a7
	ld (hl),e		;b2a8
	inc l			;b2a9
	inc l			;b2aa
	inc l			;b2ab
	inc l			;b2ac
	ld (hl),e		;b2ad
	inc l			;b2ae
	inc l			;b2af
	inc l			;b2b0
	inc l			;b2b1
	ld (hl),e		;b2b2
	inc l			;b2b3
	inc l			;b2b4
	inc l			;b2b5
	inc l			;b2b6
	djnz lb2a3h		;b2b7
	ld hl,0c281h		;b2b9
	ld b,008h		;b2bc
lb2beh:
	ld (hl),e		;b2be
	inc l			;b2bf
	inc l			;b2c0
	inc l			;b2c1
	inc l			;b2c2
	ld (hl),e		;b2c3
	inc l			;b2c4
	inc l			;b2c5
	inc l			;b2c6
	inc l			;b2c7
	ld (hl),e		;b2c8
	inc l			;b2c9
	inc l			;b2ca
	inc l			;b2cb
	inc l			;b2cc
	ld (hl),e		;b2cd
	inc l			;b2ce
	inc l			;b2cf
	inc l			;b2d0
	inc l			;b2d1
	djnz lb2beh		;b2d2
	ret			;b2d4
	ld hl,0c009h		;b2d5
	ld b,019h		;b2d8
lb2dah:
	push bc			;b2da
	ld a,(hl)		;b2db
	or a			;b2dc
	jr z,lb2e7h		;b2dd
	dec l			;b2df
	call 072edh		;b2e0
	set 0,l			;b2e3
	ld h,0c0h		;b2e5
lb2e7h:
	inc l			;b2e7
	inc l			;b2e8
	pop bc			;b2e9
	djnz lb2dah		;b2ea
	ret			;b2ec
	ld a,(hl)		;b2ed
	exx			;b2ee
	cp b			;b2ef
	jr c,lb2ffh		;b2f0
	cp c			;b2f2
	jr c,lb310h		;b2f3
	cp d			;b2f5
	jr c,lb325h		;b2f6
	cp e			;b2f8
	jp nc,072ffh		;b2f9
	jp 07336h		;b2fc
lb2ffh:
	exx			;b2ff
	ld a,(0c0aah)		;b300
	ld h,a			;b303
	inc l			;b304
	ld a,(hl)		;b305
	cp 001h			;b306
	call nz,07345h		;b308
	set 7,(hl)		;b30b
	jp 073a6h		;b30d
lb310h:
	exx			;b310
	ld a,(0c0aah)		;b311
	ld h,a			;b314
	inc l			;b315
	ld a,(hl)		;b316
	cp 002h			;b317
	call nz,0735bh		;b319
	set 7,(hl)		;b31c
	call 073a6h		;b31e
	inc l			;b321
	jp 073bdh		;b322
lb325h:
	exx			;b325
	ld a,(0c0aah)		;b326
	ld h,a			;b329
	inc l			;b32a
	ld a,(hl)		;b32b
	cp 003h			;b32c
	call nz,07371h		;b32e
	set 7,(hl)		;b331
	jp 073bdh		;b333
	exx			;b336
	ld a,(0c0aah)		;b337
	ld h,a			;b33a
	inc l			;b33b
	ld a,(hl)		;b33c
	cp 004h			;b33d
	call nz,07387h		;b33f
	set 7,(hl)		;b342
	ret			;b344
	bit 7,a			;b345
	jp nz,0739dh		;b347
	ld (hl),001h		;b34a
	inc h			;b34c
	ld a,(hl)		;b34d
	or a			;b34e
	call z,0741ah		;b34f
	inc h			;b352
	ld a,(hl)		;b353
	or a			;b354
	call nz,07462h		;b355
	dec h			;b358
	dec h			;b359
	ret			;b35a
	bit 7,a			;b35b
	jp nz,0739dh		;b35d
	ld (hl),002h		;b360
	inc h			;b362
	ld a,(hl)		;b363
	or a			;b364
	call z,0741ah		;b365
	inc h			;b368
	ld a,(hl)		;b369
	or a			;b36a
	call z,0741ah		;b36b
	dec h			;b36e
	dec h			;b36f
	ret			;b370
	bit 7,a			;b371
	jp nz,0739dh		;b373
	ld (hl),003h		;b376
	inc h			;b378
	ld a,(hl)		;b379
	or a			;b37a
	call nz,07462h		;b37b
	inc h			;b37e
	ld a,(hl)		;b37f
	or a			;b380
	call z,0741ah		;b381
	dec h			;b384
	dec h			;b385
	ret			;b386
	bit 7,a			;b387
	jp nz,0739dh		;b389
	ld (hl),004h		;b38c
	inc h			;b38e
	ld a,(hl)		;b38f
	or a			;b390
	call nz,07462h		;b391
	inc h			;b394
	ld a,(hl)		;b395
	or a			;b396
	call nz,07462h		;b397
	dec h			;b39a
	dec h			;b39b
	ret			;b39c
	call 07442h		;b39d
	inc sp			;b3a0
	inc sp			;b3a1
	ret			;b3a2
	ld a,0ffh		;b3a3
	ret			;b3a5
	ld a,(0c0a6h)		;b3a6
	ld h,a			;b3a9
	ld e,(hl)		;b3aa
	ld d,h			;b3ab
	ld a,(de)		;b3ac
	or a			;b3ad
	call z,073a3h		;b3ae
	ld h,0c3h		;b3b1
	dec l			;b3b3
	cp (hl)			;b3b4
	call nz,073fah		;b3b5
	ld h,0c0h		;b3b8
	jp 073d4h		;b3ba
	ld a,(0c0a8h)		;b3bd
	ld h,a			;b3c0
	ld e,(hl)		;b3c1
	ld d,h			;b3c2
	ld a,(de)		;b3c3
	or a			;b3c4
	call z,073a3h		;b3c5
	ld h,0c3h		;b3c8
	dec l			;b3ca
	cp (hl)			;b3cb
	call nz,073fah		;b3cc
	ld h,0c0h		;b3cf
	jp 073d4h		;b3d1
	inc e			;b3d4
	ld a,(hl)		;b3d5
	exx			;b3d6
	add a,l			;b3d7
	cp 0d8h			;b3d8
	call z,0746eh		;b3da
	exx			;b3dd
	ld (de),a		;b3de
	inc h			;b3df
	ld a,(hl)		;b3e0
	exx			;b3e1
	add a,h			;b3e2
	call c,073eeh		;b3e3
	exx			;b3e6
	inc e			;b3e7
	ld (de),a		;b3e8
	inc e			;b3e9
	inc h			;b3ea
	ld a,(hl)		;b3eb
	ld (de),a		;b3ec
	ret			;b3ed
	ld a,0d8h		;b3ee
	add a,l			;b3f0
	cp 0d8h			;b3f1
	call z,0746eh		;b3f3
	exx			;b3f6
	ld (de),a		;b3f7
	exx			;b3f8
	ret			;b3f9
	ld a,(hl)		;b3fa
	or a			;b3fb
	jp nz,0718bh		;b3fc
	pop bc			;b3ff
	pop bc			;b400
	ld de,072e3h		;b401
	ld a,d			;b404
	cp b			;b405
	jr nz,lb40dh		;b406
	ld a,e			;b408
	cp c			;b409
	jr nz,lb40dh		;b40a
	push bc			;b40c
lb40dh:
	ld a,(0c0aah)		;b40d
	ld h,a			;b410
	set 0,l			;b411
	res 7,(hl)		;b413
	dec l			;b415
	exx			;b416
	jp 07336h		;b417
	ld d,h			;b41a
	call 0742dh		;b41b
	call c,07423h		;b41e
	ld (hl),e		;b421
	ret			;b422
	ld e,000h		;b423
	ld a,(0c0aah)		;b425
	ld h,a			;b428
	ld (hl),00eh		;b429
	ld h,d			;b42b
	ret			;b42c
	ld e,080h		;b42d
	ex de,hl		;b42f
	xor a			;b430
	ld b,020h		;b431
lb433h:
	cp (hl)			;b433
	jr z,lb43fh		;b434
	inc l			;b436
	inc l			;b437
	inc l			;b438
	inc l			;b439
	djnz lb433h		;b43a
	ex de,hl		;b43c
	scf			;b43d
	ret			;b43e
lb43fh:
	ex de,hl		;b43f
	or a			;b440
	ret			;b441
	ld h,0c0h		;b442
	ld (hl),000h		;b444
	inc h			;b446
	ld a,(hl)		;b447
	or a			;b448
	call nz,07462h		;b449
	inc h			;b44c
	ld a,(hl)		;b44d
	or a			;b44e
	call nz,07462h		;b44f
	inc h			;b452
	ld (hl),000h		;b453
	inc h			;b455
	ld a,(hl)		;b456
	or a			;b457
	call nz,07462h		;b458
	inc h			;b45b
	ld a,(hl)		;b45c
	or a			;b45d
	call nz,07462h		;b45e
	ret			;b461
	ld (hl),000h		;b462
	ld c,a			;b464
	ld b,h			;b465
	xor a			;b466
	ld (bc),a		;b467
	inc c			;b468
	ld a,(0c099h)		;b469
	ld (bc),a		;b46c
	ret			;b46d
	inc a			;b46e
	ret			;b46f
	ld hl,0c03bh		;b470
	ld b,00ch		;b473
lb475h:
	push bc			;b475
	ld a,(hl)		;b476
	or a			;b477
	jr z,lb482h		;b478
	dec l			;b47a
	call 07488h		;b47b
	set 0,l			;b47e
	ld h,0c0h		;b480
lb482h:
	inc l			;b482
	inc l			;b483
	pop bc			;b484
	djnz lb475h		;b485
	ret			;b487
	ld a,(hl)		;b488
	exx			;b489
	cp b			;b48a
	jr c,lb49ah		;b48b
	cp c			;b48d
	jr c,lb4abh		;b48e
	cp d			;b490
	jr c,lb4c0h		;b491
	cp e			;b493
	jp nc,0749ah		;b494
	jp 074d1h		;b497
lb49ah:
	exx			;b49a
	ld a,(0c0aah)		;b49b
	ld h,a			;b49e
	inc l			;b49f
	ld a,(hl)		;b4a0
	cp 001h			;b4a1
	call nz,074e0h		;b4a3
	set 7,(hl)		;b4a6
	jp 0753eh		;b4a8
lb4abh:
	exx			;b4ab
	ld a,(0c0aah)		;b4ac
	ld h,a			;b4af
	inc l			;b4b0
	ld a,(hl)		;b4b1
	cp 002h			;b4b2
	call nz,074f6h		;b4b4
	set 7,(hl)		;b4b7
	call 0753eh		;b4b9
	inc l			;b4bc
	jp 07566h		;b4bd
lb4c0h:
	exx			;b4c0
	ld a,(0c0aah)		;b4c1
	ld h,a			;b4c4
	inc l			;b4c5
	ld a,(hl)		;b4c6
	cp 003h			;b4c7
	call nz,0750ch		;b4c9
	set 7,(hl)		;b4cc
	jp 07566h		;b4ce
	exx			;b4d1
	ld a,(0c0aah)		;b4d2
	ld h,a			;b4d5
	inc l			;b4d6
	ld a,(hl)		;b4d7
	cp 004h			;b4d8
	call nz,07522h		;b4da
	set 7,(hl)		;b4dd
	ret			;b4df
	bit 7,a			;b4e0
	jp nz,07538h		;b4e2
	ld (hl),001h		;b4e5
	inc h			;b4e7
	ld a,(hl)		;b4e8
	or a			;b4e9
	call z,075e4h		;b4ea
	inc h			;b4ed
	ld a,(hl)		;b4ee
	or a			;b4ef
	call nz,0766dh		;b4f0
	dec h			;b4f3
	dec h			;b4f4
	ret			;b4f5
	bit 7,a			;b4f6
	jp nz,07538h		;b4f8
	ld (hl),002h		;b4fb
	inc h			;b4fd
	ld a,(hl)		;b4fe
	or a			;b4ff
	call z,075e4h		;b500
	inc h			;b503
	ld a,(hl)		;b504
	or a			;b505
	call z,075e4h		;b506
	dec h			;b509
	dec h			;b50a
	ret			;b50b
	bit 7,a			;b50c
	jp nz,07538h		;b50e
	ld (hl),003h		;b511
	inc h			;b513
	ld a,(hl)		;b514
	or a			;b515
	call nz,0766dh		;b516
	inc h			;b519
	ld a,(hl)		;b51a
	or a			;b51b
	call z,075e4h		;b51c
	dec h			;b51f
	dec h			;b520
	ret			;b521
	bit 7,a			;b522
	jp nz,07538h		;b524
	ld (hl),004h		;b527
	inc h			;b529
	ld a,(hl)		;b52a
	or a			;b52b
	call nz,0766dh		;b52c
	inc h			;b52f
	ld a,(hl)		;b530
	or a			;b531
	call nz,0766dh		;b532
	dec h			;b535
	dec h			;b536
	ret			;b537
	call 075f7h		;b538
	inc sp			;b53b
	inc sp			;b53c
	ret			;b53d
	ld a,(0c0a6h)		;b53e
	ld h,a			;b541
	ld d,a			;b542
	ld e,(hl)		;b543
	ld a,(de)		;b544
	or a			;b545
	call z,073a3h		;b546
	ld h,0c3h		;b549
	dec l			;b54b
	cp (hl)			;b54c
	call nz,075c4h		;b54d
	ld h,0c0h		;b550
	call 0758eh		;b552
	inc e			;b555
	ld a,(de)		;b556
	or a			;b557
	call z,073a3h		;b558
	ld h,0c4h		;b55b
	cp (hl)			;b55d
	call nz,075c4h		;b55e
	ld h,0c0h		;b561
	jp 075a8h		;b563
	ld a,(0c0a8h)		;b566
	ld h,a			;b569
	ld d,a			;b56a
	ld e,(hl)		;b56b
	ld a,(de)		;b56c
	or a			;b56d
	call z,073a3h		;b56e
	ld h,0c3h		;b571
	dec l			;b573
	cp (hl)			;b574
	call nz,075c4h		;b575
	ld h,0c0h		;b578
	call 0758eh		;b57a
	inc e			;b57d
	ld a,(de)		;b57e
	or a			;b57f
	call z,073a3h		;b580
	ld h,0c4h		;b583
	cp (hl)			;b585
	call nz,075c4h		;b586
	ld h,0c0h		;b589
	jp 075a8h		;b58b
	inc e			;b58e
	ld a,(hl)		;b58f
	exx			;b590
	add a,l			;b591
	cp 0d8h			;b592
	call z,0746eh		;b594
	exx			;b597
	ld (de),a		;b598
	inc h			;b599
	ld a,(hl)		;b59a
	exx			;b59b
	add a,h			;b59c
	call c,073eeh		;b59d
	exx			;b5a0
	inc e			;b5a1
	ld (de),a		;b5a2
	inc e			;b5a3
	inc h			;b5a4
	ld a,(hl)		;b5a5
	ld (de),a		;b5a6
	ret			;b5a7
	inc e			;b5a8
	ld a,(hl)		;b5a9
	exx			;b5aa
	add a,l			;b5ab
	cp 0d8h			;b5ac
	call z,0746eh		;b5ae
	exx			;b5b1
	ld (de),a		;b5b2
	inc h			;b5b3
	ld a,(hl)		;b5b4
	exx			;b5b5
	add a,h			;b5b6
	call c,073eeh		;b5b7
	exx			;b5ba
	inc e			;b5bb
	ld (de),a		;b5bc
	inc e			;b5bd
	inc h			;b5be
	ld a,(hl)		;b5bf
	add a,004h		;b5c0
	ld (de),a		;b5c2
	ret			;b5c3
	ld a,(hl)		;b5c4
	or a			;b5c5
	jp nz,0718bh		;b5c6
	pop bc			;b5c9
	pop bc			;b5ca
	ld de,0747eh		;b5cb
	ld a,d			;b5ce
	cp b			;b5cf
	jr nz,lb5d7h		;b5d0
	ld a,e			;b5d2
	cp c			;b5d3
	jr nz,lb5d7h		;b5d4
	push bc			;b5d6
lb5d7h:
	ld a,(0c0aah)		;b5d7
	ld h,a			;b5da
	set 0,l			;b5db
	res 7,(hl)		;b5dd
	dec l			;b5df
	exx			;b5e0
	jp 074d1h		;b5e1
	ld d,h			;b5e4
	call 07617h		;b5e5
	call c,075edh		;b5e8
	ld (hl),e		;b5eb
	ret			;b5ec
	ld e,000h		;b5ed
	ld a,(0c0aah)		;b5ef
	ld h,a			;b5f2
	ld (hl),00eh		;b5f3
	ld h,d			;b5f5
	ret			;b5f6
	ld h,0c0h		;b5f7
	ld (hl),000h		;b5f9
	inc h			;b5fb
	ld a,(hl)		;b5fc
	or a			;b5fd
	call nz,0766dh		;b5fe
	inc h			;b601
	ld a,(hl)		;b602
	or a			;b603
	call nz,0766dh		;b604
	inc h			;b607
	ld (hl),000h		;b608
	inc h			;b60a
	ld a,(hl)		;b60b
	or a			;b60c
	call nz,0766dh		;b60d
	inc h			;b610
	ld a,(hl)		;b611
	or a			;b612
	call nz,0766dh		;b613
	ret			;b616
	ld e,0fch		;b617
	ex de,hl		;b619
	xor a			;b61a
	ld b,010h		;b61b
lb61dh:
	cp (hl)			;b61d
	ex af,af'		;b61e
	dec l			;b61f
	dec l			;b620
	dec l			;b621
	dec l			;b622
	ex af,af'		;b623
	jr z,lb632h		;b624
	cp (hl)			;b626
	jr z,lb63eh		;b627
	dec l			;b629
	dec l			;b62a
	dec l			;b62b
	dec l			;b62c
	djnz lb61dh		;b62d
	ex de,hl		;b62f
	scf			;b630
	ret			;b631
lb632h:
	cp (hl)			;b632
	jr z,lb641h		;b633
	dec l			;b635
	dec l			;b636
	dec l			;b637
	dec l			;b638
	call 07649h		;b639
	jr lb641h		;b63c
lb63eh:
	call 07644h		;b63e
lb641h:
	ex de,hl		;b641
	or a			;b642
	ret			;b643
	ld a,l			;b644
	add a,004h		;b645
	jr lb64dh		;b647
	ld a,l			;b649
	add a,004h		;b64a
	ld l,a			;b64c
lb64dh:
	push hl			;b64d
	push de			;b64e
	call 07655h		;b64f
	pop de			;b652
	pop hl			;b653
	ret			;b654
	ld l,009h		;b655
	ld b,019h		;b657
lb659h:
	cp (hl)			;b659
	jp z,07663h		;b65a
	inc l			;b65d
	inc l			;b65e
	djnz lb659h		;b65f
	scf			;b661
	ret			;b662
	ld (hl),000h		;b663
	ld a,(0c0aah)		;b665
	ld h,a			;b668
	ld (hl),00eh		;b669
	or a			;b66b
	ret			;b66c
	ld (hl),000h		;b66d
	ld b,h			;b66f
	ld c,a			;b670
	xor a			;b671
	ld (bc),a		;b672
	inc c			;b673
	ld a,(0c099h)		;b674
	ld (bc),a		;b677
	inc c			;b678
	inc c			;b679
	inc c			;b67a
	xor a			;b67b
	ld (bc),a		;b67c
	inc c			;b67d
	ld a,(0c099h)		;b67e
	ld (bc),a		;b681
	ret			;b682
	ld a,(0c0d2h)		;b683
	and 0f8h		;b686
	push af			;b688
	ld l,a			;b689
	ld h,000h		;b68a
	add hl,hl		;b68c
	add hl,hl		;b68d
	ld de,0c000h		;b68e
	ld a,(0c09bh)		;b691
	rrca			;b694
	jr nc,lb69ah		;b695
	ld de,0c400h		;b697
lb69ah:
	add hl,de		;b69a
	pop af			;b69b
	rrca			;b69c
	rrca			;b69d
	rrca			;b69e
	cp 009h			;b69f
	jr c,lb6bbh		;b6a1
	sub 008h		;b6a3
	push af			;b6a5
	push de			;b6a6
	neg			;b6a7
	add a,018h		;b6a9
	call 076bdh		;b6ab
	ex (sp),hl		;b6ae
	xor a			;b6af
	call 046f0h		;b6b0
	ld a,(00007h)		;b6b3
	ld c,a			;b6b6
	pop hl			;b6b7
	pop af			;b6b8
	jr lb6cah		;b6b9
lb6bbh:
	ld a,018h		;b6bb
	push af			;b6bd
	xor a			;b6be
	call 046f0h		;b6bf
	ld a,(00007h)		;b6c2
	ld c,a			;b6c5
	ld hl,0d988h		;b6c6
	pop af			;b6c9
lb6cah:
	push af			;b6ca
	exx			;b6cb
	pop bc			;b6cc
	ld a,(0c0b3h)		;b6cd
	or a			;b6d0
	jr nz,lb71eh		;b6d1
lb6d3h:
	exx			;b6d3
	outi			;b6d4
	outi			;b6d6
	outi			;b6d8
	outi			;b6da
	outi			;b6dc
	outi			;b6de
	outi			;b6e0
	outi			;b6e2
	outi			;b6e4
	outi			;b6e6
	outi			;b6e8
	outi			;b6ea
	outi			;b6ec
	outi			;b6ee
	outi			;b6f0
	outi			;b6f2
	outi			;b6f4
	outi			;b6f6
	outi			;b6f8
	outi			;b6fa
	outi			;b6fc
	outi			;b6fe
	outi			;b700
	outi			;b702
	outi			;b704
	outi			;b706
	outi			;b708
	outi			;b70a
	outi			;b70c
	outi			;b70e
	outi			;b710
	outi			;b712
	ld de,00010h		;b714
	add hl,de		;b717
	exx			;b718
	djnz lb6d3h		;b719
	exx			;b71b
	ei			;b71c
	ret			;b71d
lb71eh:
	exx			;b71e
	call 0772bh		;b71f
	ld de,00010h		;b722
	add hl,de		;b725
	exx			;b726
	djnz lb71eh		;b727
	exx			;b729
	ret			;b72a
	push bc			;b72b
	ld b,020h		;b72c
lb72eh:
	ld a,(hl)		;b72e
	inc hl			;b72f
	push bc			;b730
	call 0773dh		;b731
	pop bc			;b734
	and 00fh		;b735
	out (c),a		;b737
	djnz lb72eh		;b739
	pop bc			;b73b
	ret			;b73c
	push af			;b73d
	ld a,007h		;b73e
	push ix			;b740
	push hl			;b742
	push de			;b743
	call 00141h		;b744
	pop de			;b747
	pop hl			;b748
	pop ix			;b749
	bit 3,a			;b74b
	pop bc			;b74d
	ld a,b			;b74e
	ret nz			;b74f
	rrca			;b750
	rrca			;b751
	rrca			;b752
	rrca			;b753
	ret			;b754
	call 04e4ah		;b755
	ld a,l			;b758
	ld b,018h		;b759
	and 03fh		;b75b
	cp 021h			;b75d
	jr nc,lb77ch		;b75f
	ld de,0d988h		;b761
lb764h:
	push bc			;b764
	push hl			;b765
	push de			;b766
	call 077bah		;b767
	pop de			;b76a
	pop hl			;b76b
	ex de,hl		;b76c
	ld bc,00030h		;b76d
	add hl,bc		;b770
	ex de,hl		;b771
	ld bc,00040h		;b772
	add hl,bc		;b775
	res 3,h			;b776
	pop bc			;b778
	djnz lb764h		;b779
	ret			;b77b
lb77ch:
	ld c,a			;b77c
	sub 020h		;b77d
	add a,a			;b77f
	ld e,a			;b780
	ld d,000h		;b781
	ld ix,077bah		;b783
	add ix,de		;b787
	ld a,040h		;b789
	sub c			;b78b
	add a,a			;b78c
	ld e,a			;b78d
	ld iy,077bah		;b78e
	add iy,de		;b792
	ld de,0d988h		;b794
lb797h:
	push bc			;b797
	push hl			;b798
	push de			;b799
	call 077b8h		;b79a
	ld a,l			;b79d
	and 0c0h		;b79e
	ld l,a			;b7a0
	call 077b6h		;b7a1
	pop de			;b7a4
	pop hl			;b7a5
	ex de,hl		;b7a6
	ld bc,00030h		;b7a7
	add hl,bc		;b7aa
	ex de,hl		;b7ab
	ld bc,00040h		;b7ac
	add hl,bc		;b7af
	res 3,h			;b7b0
	pop bc			;b7b2
	djnz lb797h		;b7b3
	ret			;b7b5
	jp (iy)			;b7b6
	jp (ix)			;b7b8
	ldi			;b7ba
	ldi			;b7bc
	ldi			;b7be
	ldi			;b7c0
	ldi			;b7c2
	ldi			;b7c4
	ldi			;b7c6
	ldi			;b7c8
	ldi			;b7ca
	ldi			;b7cc
	ldi			;b7ce
	ldi			;b7d0
	ldi			;b7d2
	ldi			;b7d4
	ldi			;b7d6
	ldi			;b7d8
	ldi			;b7da
	ldi			;b7dc
	ldi			;b7de
	ldi			;b7e0
	ldi			;b7e2
	ldi			;b7e4
	ldi			;b7e6
	ldi			;b7e8
	ldi			;b7ea
	ldi			;b7ec
	ldi			;b7ee
	ldi			;b7f0
	ldi			;b7f2
	ldi			;b7f4
	ldi			;b7f6
	ld a,(hl)		;b7f8
	ld (de),a		;b7f9
	inc de			;b7fa
	ret			;b7fb
	xor a			;b7fc
	ld (0c0e5h),a		;b7fd
	ld (0c0d7h),a		;b800
	ld hl,07d76h		;b803
	ld a,(0ca10h)		;b806
	call 0468eh		;b809
	ld (0c0c8h),hl		;b80c
	ld hl,07c8ch		;b80f
	ld a,(0ca10h)		;b812
	call 0468eh		;b815
	ld a,(0ca1eh)		;b818
	ex de,hl		;b81b
	call 04639h		;b81c
	ld (0c0cah),de		;b81f
	ld (0ca34h),hl		;b823
	ld a,(0ca1eh)		;b826
	ld (0c0e1h),a		;b829
	xor a			;b82c
	ld (0c0cdh),a		;b82d
	ld (0c0cch),a		;b830
	ld a,0ffh		;b833
	ld (0ca33h),a		;b835
	call 07bedh		;b838
	call 07bedh		;b83b
	call 07c08h		;b83e
	ld hl,(0ca34h)		;b841
	dec hl			;b844
	ld (0ca34h),hl		;b845
lb848h:
	call 07ac4h		;b848
	call 04109h		;b84b
	ld a,(0ca33h)		;b84e
	or a			;b851
	jr nz,lb848h		;b852
	call 07ac4h		;b854
	ret			;b857
	ld a,01bh		;b858
	call 04c23h		;b85a
	ld hl,(0c0cah)		;b85d
	inc hl			;b860
	ld a,(hl)		;b861
	inc hl			;b862
	ld (0c0cah),hl		;b863
	cp 010h			;b866
	jr c,lb894h		;b868
	sub 010h		;b86a
	cp 010h			;b86c
	jp nc,04ae0h		;b86e
	call 0461ah		;b871
	adc a,a			;b874
	ld a,c			;b875
	and h			;b876
	ld a,c			;b877
	jp c,0eb79h		;b878
	ld a,c			;b87b
	defb 0fdh,079h,008h ;illegal sequence	;b87c
	ld a,d			;b87f
	inc e			;b880
	ld a,d			;b881
	inc hl			;b882
	ld a,d			;b883
	jr nc,lb900h		;b884
	jr c,lb902h		;b886
	ld d,h			;b888
	ld a,d			;b889
	ld h,l			;b88a
	ld a,d			;b88b
	ld l,d			;b88c
	ld a,d			;b88d
	add a,b			;b88e
	ld a,d			;b88f
	add a,a			;b890
	ld a,d			;b891
	sub h			;b892
	ld a,d			;b893
lb894h:
	call 0789ch		;b894
	call 07aa1h		;b897
	or a			;b89a
	ret			;b89b
	add a,a			;b89c
	add a,a			;b89d
	ld e,a			;b89e
	add a,a			;b89f
	add a,e			;b8a0
	ld hl,078ffh		;b8a1
	ld e,a			;b8a4
	ld d,000h		;b8a5
	add hl,de		;b8a7
	ld e,(hl)		;b8a8
	inc hl			;b8a9
	ld d,(hl)		;b8aa
	inc hl			;b8ab
	ld (0c0c3h),de		;b8ac
	ld a,d			;b8b0
	rlca			;b8b1
	sbc a,a			;b8b2
	ld (0c0c5h),a		;b8b3
	ld e,(hl)		;b8b6
	inc hl			;b8b7
	ld d,(hl)		;b8b8
	inc hl			;b8b9
	ld (0c0bdh),de		;b8ba
	ld a,d			;b8be
	rlca			;b8bf
	sbc a,a			;b8c0
	ld (0c0bfh),a		;b8c1
	ld e,(hl)		;b8c4
	inc hl			;b8c5
	ld d,(hl)		;b8c6
	inc hl			;b8c7
	ld (0c0b8h),de		;b8c8
	ld e,(hl)		;b8cc
	inc hl			;b8cd
	ld d,(hl)		;b8ce
	inc hl			;b8cf
	ld (0c0b6h),de		;b8d0
	ld e,(hl)		;b8d4
	inc hl			;b8d5
	ld d,(hl)		;b8d6
	inc hl			;b8d7
	ld a,e			;b8d8
	ld (0c0ceh),a		;b8d9
	push de			;b8dc
	ld a,(hl)		;b8dd
	inc hl			;b8de
	ld (0c0d5h),a		;b8df
	ld a,(hl)		;b8e2
	call 078ech		;b8e3
	pop de			;b8e6
	xor a			;b8e7
	ld (0c0dah),a		;b8e8
	ret			;b8eb
	ret			;b8ec
	bit 7,a			;b8ed
	ret z			;b8ef
	ld a,(0ca35h)		;b8f0
	and 0f0h		;b8f3
	add a,010h		;b8f5
	ld d,a			;b8f7
	ld e,000h		;b8f8
	ld (0ca34h),de		;b8fa
	ret			;b8fe
	nop			;b8ff
lb900h:
	nop			;b900
	nop			;b901
lb902h:
	ld (bc),a		;b902
	nop			;b903
	ld (bc),a		;b904
	nop			;b905
	nop			;b906
	nop			;b907
	jr nz,lb90bh		;b908
	add a,b			;b90a
lb90bh:
	nop			;b90b
	ld bc,00100h		;b90c
	nop			;b90f
	ld bc,00000h		;b910
	ld bc,00218h		;b913
	add a,b			;b916
	nop			;b917
	ld bc,00000h		;b918
	nop			;b91b
	ld bc,00000h		;b91c
	ld (bc),a		;b91f
	jr lb923h		;b920
	nop			;b922
lb923h:
	nop			;b923
	ld bc,00000h		;b924
	nop			;b927
	ld bc,00000h		;b928
	inc bc			;b92b
	jr lb931h		;b92c
	add a,b			;b92e
	nop			;b92f
	rst 38h			;b930
lb931h:
	nop			;b931
	ld bc,00100h		;b932
	nop			;b935
	nop			;b936
	inc b			;b937
	jr $+10			;b938
	add a,b			;b93a
	nop			;b93b
	ld bc,0ff00h		;b93c
	nop			;b93f
	ld bc,00000h		;b940
	dec b			;b943
	jr nz,lb94ah		;b944
	add a,b			;b946
	nop			;b947
	rst 38h			;b948
	nop			;b949
lb94ah:
	nop			;b94a
	nop			;b94b
	ld bc,00000h		;b94c
	ld b,018h		;b94f
	rlca			;b951
	add a,b			;b952
	nop			;b953
	nop			;b954
	nop			;b955
	nop			;b956
	nop			;b957
	ld bc,00000h		;b958
	rlca			;b95b
	nop			;b95c
	nop			;b95d
	add a,b			;b95e
	nop			;b95f
	nop			;b960
	nop			;b961
	inc b			;b962
	nop			;b963
	inc b			;b964
	nop			;b965
	nop			;b966
	nop			;b967
	jr nz,lb96bh		;b968
	add a,b			;b96a
lb96bh:
	nop			;b96b
	nop			;b96c
	nop			;b96d
	ld bc,00100h		;b96e
	nop			;b971
	nop			;b972
	nop			;b973
	jr nz,lb977h		;b974
	add a,b			;b976
lb977h:
	nop			;b977
	nop			;b978
	nop			;b979
	ld (bc),a		;b97a
	nop			;b97b
	ld (bc),a		;b97c
	nop			;b97d
	nop			;b97e
	ex af,af'		;b97f
	ld bc,00001h		;b980
	nop			;b983
	ld (bc),a		;b984
	nop			;b985
	ld (bc),a		;b986
	nop			;b987
	ld (bc),a		;b988
	nop			;b989
	nop			;b98a
	ld bc,00218h		;b98b
	nop			;b98e
	ld hl,(0c0cah)		;b98f
	ld e,(hl)		;b992
	inc hl			;b993
	ld d,(hl)		;b994
	inc hl			;b995
	ld (0c0cah),hl		;b996
	ld a,(0ce4ch)		;b999
	or a			;b99c
	ret z			;b99d
	ld (0c0cah),de		;b99e
	or a			;b9a2
	ret			;b9a3
	ld hl,(0c0cah)		;b9a4
	ld e,(hl)		;b9a7
	inc hl			;b9a8
	ld d,(hl)		;b9a9
	inc hl			;b9aa
	ld (0c0cah),hl		;b9ab
	ld a,e			;b9ae
	push de			;b9af
	call 079c2h		;b9b0
	ld a,(0c0d2h)		;b9b3
	and 007h		;b9b6
	ld c,a			;b9b8
	pop af			;b9b9
	and 0f8h		;b9ba
	or c			;b9bc
	ld (0c0d2h),a		;b9bd
	or a			;b9c0
	ret			;b9c1
	ei			;b9c2
	ex af,af'		;b9c3
lb9c4h:
	ld a,(0c09ch)		;b9c4
	or a			;b9c7
	jr nz,lb9c4h		;b9c8
	ex af,af'		;b9ca
	cp 007h			;b9cb
	jp c,079d6h		;b9cd
	and 080h		;b9d0
	ld (0c0d1h),a		;b9d2
	ret			;b9d5
	ld (0c0b5h),a		;b9d6
	ret			;b9d9
	ld hl,(0c0cah)		;b9da
	ld de,00024h		;b9dd
	add hl,de		;b9e0
	ld (0c0cah),hl		;b9e1
	ld a,002h		;b9e4
	ld (0c0ceh),a		;b9e6
	or a			;b9e9
	ret			;b9ea
	ld hl,(0c0cah)		;b9eb
	ld e,(hl)		;b9ee
	inc hl			;b9ef
	ld d,(hl)		;b9f0
	inc hl			;b9f1
	push hl			;b9f2
	ex de,hl		;b9f3
	call 04ce0h		;b9f4
	pop hl			;b9f7
	ld (0c0cah),hl		;b9f8
	or a			;b9fb
	ret			;b9fc
	call 07bd6h		;b9fd
	call 04e73h		;ba00
	call 078f0h		;ba03
	scf			;ba06
	ret			;ba07
	ld a,(0ef60h)		;ba08
	or a			;ba0b
	ret z			;ba0c
	ld hl,(0c0cah)		;ba0d
	dec hl			;ba10
	dec hl			;ba11
	ld (0c0cah),hl		;ba12
	ld a,007h		;ba15
	call 0789ch		;ba17
	scf			;ba1a
	ret			;ba1b
	ld a,001h		;ba1c
	ld (0c0d6h),a		;ba1e
	scf			;ba21
	ret			;ba22
	ld hl,(0c0cah)		;ba23
	ld a,(hl)		;ba26
	inc hl			;ba27
	ld (0c0cah),hl		;ba28
	call 04e6bh		;ba2b
	or a			;ba2e
	ret			;ba2f
	call 06e2dh		;ba30
	call 06e0bh		;ba33
	or a			;ba36
	ret			;ba37
	ld hl,(0c0cah)		;ba38
	ld a,(hl)		;ba3b
	inc hl			;ba3c
	ld (0c0cah),hl		;ba3d
	or a			;ba40
	jr nz,lba4fh		;ba41
	ld a,030h		;ba43
	ld (0c0d7h),a		;ba45
	ld a,084h		;ba48
	call 04aebh		;ba4a
	or a			;ba4d
	ret			;ba4e
lba4fh:
	call 04aebh		;ba4f
	or a			;ba52
	ret			;ba53
	ld a,(0c0e1h)		;ba54
	or a			;ba57
	jr nz,lba60h		;ba58
	ld hl,0ca1eh		;ba5a
	inc (hl)		;ba5d
	or a			;ba5e
	ret			;ba5f
lba60h:
	xor a			;ba60
	ld (0c0e1h),a		;ba61
	ret			;ba64
	call 078f0h		;ba65
	or a			;ba68
	ret			;ba69
	ld hl,(0c0cah)		;ba6a
	ld e,(hl)		;ba6d
	inc hl			;ba6e
	ld d,(hl)		;ba6f
	inc hl			;ba70
	push hl			;ba71
	ex de,hl		;ba72
	ld a,(0ca33h)		;ba73
	or a			;ba76
	call nz,04cdch		;ba77
	pop hl			;ba7a
	ld (0c0cah),hl		;ba7b
	or a			;ba7e
	ret			;ba7f
	ld a,(0ca33h)		;ba80
	or a			;ba83
	ret nz			;ba84
	scf			;ba85
	ret			;ba86
	call 07bd6h		;ba87
	ld a,002h		;ba8a
	ld (0c0d4h),a		;ba8c
	call 078f0h		;ba8f
	scf			;ba92
	ret			;ba93
	ld hl,(0c0cah)		;ba94
	ld a,(hl)		;ba97
	inc hl			;ba98
	ld (0c0cah),hl		;ba99
	ld (0c0e5h),a		;ba9c
	or a			;ba9f
	ret			;baa0
	ld a,(0ca33h)		;baa1
	inc a			;baa4
	ret nz			;baa5
	ld a,d			;baa6
	ld (0ca33h),a		;baa7
	ret			;baaa
	ld a,(0ca33h)		;baab
	or a			;baae
	ret z			;baaf
	dec a			;bab0
	ld (0ca33h),a		;bab1
	ret			;bab4
	ld a,(0c0d7h)		;bab5
	or a			;bab8
	ret z			;bab9
	dec a			;baba
	ld (0c0d7h),a		;babb
	ret nz			;babe
	ld a,039h		;babf
	jp 04aebh		;bac1
	ld a,(0c0d6h)		;bac4
	dec a			;bac7
	jr z,lbaceh		;bac8
	call 07ad2h		;baca
	ret			;bacd
lbaceh:
	call 07bd6h		;bace
	ret			;bad1
	ld hl,(0c0b6h)		;bad2
	ld a,h			;bad5
	ld de,(0c0b8h)		;bad6
	add hl,de		;bada
	ld (0c0b6h),hl		;badb
	xor h			;bade
	bit 3,a			;badf
	push af			;bae1
	call 07b09h		;bae2
	call 07c72h		;bae5
	pop af			;bae8
	ret z			;bae9
	call 07bedh		;baea
	ret c			;baed
	call 07c08h		;baee
	ld a,01bh		;baf1
	call 04c23h		;baf3
	ld hl,(0c0cah)		;baf6
	ld a,(hl)		;baf9
	cp 0feh			;bafa
	ret nz			;bafc
	inc hl			;bafd
	ld (0c0cah),hl		;bafe
	call 07bedh		;bb01
	ret c			;bb04
	call 07c08h		;bb05
	ret			;bb08
	ld hl,0c0bah		;bb09
	ld de,0c0bdh		;bb0c
	ld a,(de)		;bb0f
	add a,(hl)		;bb10
	ld (hl),a		;bb11
	inc hl			;bb12
	inc de			;bb13
	ld a,(de)		;bb14
	adc a,(hl)		;bb15
	ld (hl),a		;bb16
	inc hl			;bb17
	inc de			;bb18
	ld a,(de)		;bb19
	adc a,(hl)		;bb1a
	ld (hl),a		;bb1b
	ld de,(0c0bdh)		;bb1c
	call 0460ah		;bb20
	sra d			;bb23
	rr e			;bb25
	sra d			;bb27
	rr e			;bb29
	sra d			;bb2b
	rr e			;bb2d
	ld (0ca14h),de		;bb2f
	ld de,(0c0bah)		;bb33
	sra d			;bb37
	rr e			;bb39
	sra d			;bb3b
	rr e			;bb3d
	sra d			;bb3f
	rr e			;bb41
	ld (0ca1ch),de		;bb43
	ld d,000h		;bb47
	call 0460ah		;bb49
	ld (0ca38h),de		;bb4c
	ld a,(0c0c1h)		;bb50
	ld c,a			;bb53
	ld hl,0c0c0h		;bb54
	ld de,0c0c3h		;bb57
	ld a,(de)		;bb5a
	add a,(hl)		;bb5b
	ld (hl),a		;bb5c
	inc hl			;bb5d
	inc de			;bb5e
	ld a,(de)		;bb5f
	adc a,(hl)		;bb60
	ld (hl),a		;bb61
	inc hl			;bb62
	inc de			;bb63
	ld a,(de)		;bb64
	adc a,(hl)		;bb65
	ld (hl),a		;bb66
	ld a,(0c0c1h)		;bb67
	ld h,a			;bb6a
	ld de,(0c0c3h)		;bb6b
	call 0460ah		;bb6f
	sra d			;bb72
	rr e			;bb74
	sra d			;bb76
	rr e			;bb78
	sra d			;bb7a
	rr e			;bb7c
	ld (0ca12h),de		;bb7e
	ld de,(0c0c0h)		;bb82
	sra d			;bb86
	rr e			;bb88
	sra d			;bb8a
	rr e			;bb8c
	sra d			;bb8e
	rr e			;bb90
	ld (0ca1ah),de		;bb92
	ld d,000h		;bb96
	call 0460ah		;bb98
	ld (0ca36h),de		;bb9b
	ld a,(0c0d5h)		;bb9f
	ld (0ca18h),a		;bba2
	ld a,(0c0bbh)		;bba5
	and 007h		;bba8
	ld d,a			;bbaa
	ld a,(0c0c1h)		;bbab
	and 007h		;bbae
	ld e,a			;bbb0
	ld (0ca31h),de		;bbb1
	ld a,(0c0d1h)		;bbb5
	or a			;bbb8
	jr nz,lbbc4h		;bbb9
	ld a,(0c0d2h)		;bbbb
	add a,h			;bbbe
	sub c			;bbbf
	ld (0c0d2h),a		;bbc0
	ret			;bbc3
lbbc4h:
	ld a,(0c0d2h)		;bbc4
	and 0f8h		;bbc7
	ld d,a			;bbc9
	ld a,(0c0d2h)		;bbca
	add a,h			;bbcd
	sub c			;bbce
	and 007h		;bbcf
	or d			;bbd1
	ld (0c0d2h),a		;bbd2
	ret			;bbd5
	xor a			;bbd6
	ld d,a			;bbd7
	ld e,a			;bbd8
	ld (0c0bdh),de		;bbd9
	ld (0c0c3h),de		;bbdd
	ld (0ca14h),de		;bbe1
	ld (0ca12h),de		;bbe5
	ld (0ca18h),a		;bbe9
	ret			;bbec
lbbedh:
	ld a,01bh		;bbed
	call 04c23h		;bbef
	ld hl,(0c0cah)		;bbf2
lbbf5h:
	ld a,(hl)		;bbf5
	inc a			;bbf6
	or a			;bbf7
	jr z,lbc02h		;bbf8
	inc a			;bbfa
	ret nz			;bbfb
	inc hl			;bbfc
	ld (0c0cah),hl		;bbfd
	jr lbbf5h		;bc00
lbc02h:
	call 07858h		;bc02
	ret c			;bc05
	jr lbbedh		;bc06
	ld hl,(0c0cah)		;bc08
	push hl			;bc0b
	ld a,01bh		;bc0c
	call 04c23h		;bc0e
	call 07c3eh		;bc11
	ld a,(0c0dah)		;bc14
	inc a			;bc17
	ld (0c0dah),a		;bc18
	cp 004h			;bc1b
	pop hl			;bc1d
	ld (0c0cah),hl		;bc1e
	ret c			;bc21
	xor a			;bc22
	ld (0c0dah),a		;bc23
	add hl,de		;bc26
	ld (0c0cah),hl		;bc27
	ret			;bc2a
	ld hl,(0ca34h)		;bc2b
	inc hl			;bc2e
	ld (0ca34h),hl		;bc2f
	ret			;bc32
	dec a			;bc33
	ld (0c0e5h),a		;bc34
	ret nz			;bc37
	ld de,03801h		;bc38
	jp 079aeh		;bc3b
	ld a,(0c0e5h)		;bc3e
	or a			;bc41
	call nz,07c33h		;bc42
	call 07c2bh		;bc45
	ld a,019h		;bc48
	call 04c15h		;bc4a
	call 07aabh		;bc4d
	ld a,(0c0ceh)		;bc50
	cp 009h			;bc53
	jp nc,04ae0h		;bc55
	call 0461ah		;bc58
	and a			;bc5b
	ld a,l			;bc5c
	jr z,lbcddh		;bc5d
	adc a,b			;bc5f
	ld a,l			;bc60
	inc e			;bc61
	ld a,(hl)		;bc62
	sbc a,07eh		;bc63
	ccf			;bc65
	ld a,(hl)		;bc66
	adc a,07eh		;bc67
	adc a,07eh		;bc69
	ld l,l			;bc6b
	ld a,h			;bc6c
	ld de,00000h		;bc6d
	ret			;bc70
	ret			;bc71
	ld hl,(0c0bbh)		;bc72
	ld a,l			;bc75
	rr h			;bc76
	rra			;bc78
	rra			;bc79
	rra			;bc7a
	and 03fh		;bc7b
	ld (0c0cdh),a		;bc7d
	ld a,(0c0c1h)		;bc80
	rrca			;bc83
	rrca			;bc84
	rrca			;bc85
	and 01fh		;bc86
	ld (0c0cch),a		;bc88
	ret			;bc8b
	sbc a,(hl)		;bc8c
	ld a,h			;bc8d
	or (hl)			;bc8e
	ld a,h			;bc8f
	adc a,07ch		;bc90
	and 07ch		;bc92
	cp 07ch			;bc94
	ld d,07dh		;bc96
	ld l,07dh		;bc98
	ld b,(hl)		;bc9a
	ld a,l			;bc9b
	ld e,(hl)		;bc9c
	ld a,l			;bc9d
	nop			;bc9e
	and b			;bc9f
	nop			;bca0
	nop			;bca1
	ret m			;bca2
	and b			;bca3
	and b			;bca4
	djnz lbcd0h		;bca5
	and e			;bca7
	and b			;bca8
	djnz lbcd4h		;bca9
	and e			;bcab
	and b			;bcac
	djnz lbcd8h		;bcad
	and e			;bcaf
	and b			;bcb0
	djnz $-88		;bcb1
	and e			;bcb3
	and b			;bcb4
	djnz $+98		;bcb5
	and h			;bcb7
	nop			;bcb8
	nop			;bcb9
	ld c,a			;bcba
	and l			;bcbb
	sbc a,h			;bcbc
	djnz $+60		;bcbd
	and a			;bcbf
	adc a,c			;bcc0
	jr nc,lbcf2h		;bcc1
	xor b			;bcc3
	nop			;bcc4
	ld d,b			;bcc5
	cpl			;bcc6
	xor b			;bcc7
	nop			;bcc8
	ld d,b			;bcc9
	cpl			;bcca
	xor b			;bccb
	nop			;bccc
	ld d,b			;bccd
	ld (hl),b		;bcce
	xor c			;bccf
lbcd0h:
	nop			;bcd0
	nop			;bcd1
	ld l,b			;bcd2
	xor d			;bcd3
lbcd4h:
	and b			;bcd4
	djnz lbcd7h		;bcd5
lbcd7h:
	xor e			;bcd7
lbcd8h:
	nop			;bcd8
	ld de,lab68h		;bcd9
	ld b,b			;bcdc
lbcddh:
	ld de,lab68h		;bcdd
	ld b,b			;bce0
	ld de,lab68h		;bce1
	ld b,b			;bce4
	ld de,laba9h		;bce5
	nop			;bce8
	nop			;bce9
	ld c,0adh		;bcea
	inc b			;bcec
	jr nc,$+16		;bced
	xor l			;bcef
	jr nz,$+50		;bcf0
lbcf2h:
	ld c,0adh		;bcf2
	jr nz,$+50		;bcf4
	ld c,0adh		;bcf6
	jr nz,lbd2ah		;bcf8
	ld c,0adh		;bcfa
	jr nz,lbd2eh		;bcfc
	ld b,a			;bcfe
	xor (hl)		;bcff
	nop			;bd00
	nop			;bd01
	rst 38h			;bd02
	xor a			;bd03
	jr nz,$+19		;bd04
lbd06h:
	xor d			;bd06
	or d			;bd07
	ret po			;bd08
	ld (de),a		;bd09
	xor d			;bd0a
	or d			;bd0b
	ret po			;bd0c
	ld (de),a		;bd0d
	xor d			;bd0e
	or d			;bd0f
	ret po			;bd10
	ld (de),a		;bd11
	xor d			;bd12
	or d			;bd13
	ret po			;bd14
	ld (de),a		;bd15
	ld sp,000b3h		;bd16
	nop			;bd19
	ld e,(hl)		;bd1a
	or h			;bd1b
	dec b			;bd1c
	jr nc,lbd7dh		;bd1d
	or h			;bd1f
	dec b			;bd20
	jr nc,lbd64h		;bd21
	or (hl)			;bd23
	dec b			;bd24
	jr nc,lbd06h		;bd25
	or (hl)			;bd27
	dec b			;bd28
	ld b,b			;bd29
lbd2ah:
	ld sp,000b3h		;bd2a
	nop			;bd2d
lbd2eh:
	ld (hl),b		;bd2e
	or a			;bd2f
	nop			;bd30
	nop			;bd31
	ld (hl),b		;bd32
	or a			;bd33
	nop			;bd34
	nop			;bd35
	ld (hl),b		;bd36
	or a			;bd37
	nop			;bd38
	nop			;bd39
	ld (hl),b		;bd3a
	or a			;bd3b
	nop			;bd3c
	nop			;bd3d
	ld (hl),b		;bd3e
	or a			;bd3f
	nop			;bd40
	nop			;bd41
	ld (hl),b		;bd42
	or a			;bd43
	nop			;bd44
	nop			;bd45
	ld c,b			;bd46
	cp c			;bd47
	nop			;bd48
	nop			;bd49
	ld c,b			;bd4a
	cp c			;bd4b
	nop			;bd4c
	nop			;bd4d
	ld c,b			;bd4e
	cp c			;bd4f
	nop			;bd50
	nop			;bd51
	ld c,b			;bd52
	cp c			;bd53
	nop			;bd54
	nop			;bd55
	ld c,b			;bd56
	cp c			;bd57
	nop			;bd58
	nop			;bd59
	ld c,b			;bd5a
	cp c			;bd5b
	nop			;bd5c
	nop			;bd5d
	ld a,a			;bd5e
	cp d			;bd5f
	nop			;bd60
	nop			;bd61
	ld a,a			;bd62
	cp d			;bd63
lbd64h:
	nop			;bd64
	nop			;bd65
	ld a,a			;bd66
	cp d			;bd67
	nop			;bd68
	nop			;bd69
	ld a,a			;bd6a
	cp d			;bd6b
	nop			;bd6c
	nop			;bd6d
	ld a,a			;bd6e
	cp d			;bd6f
	nop			;bd70
	nop			;bd71
	ld a,a			;bd72
	cp d			;bd73
	nop			;bd74
	nop			;bd75
	nop			;bd76
	add a,b			;bd77
	ret po			;bd78
	adc a,d			;bd79
	ld h,b			;bd7a
	sub b			;bd7b
	ret nc			;bd7c
lbd7dh:
	sub l			;bd7d
	or b			;bd7e
	sbc a,l			;bd7f
	ld (hl),b		;bd80
	and b			;bd81
	ret nz			;bd82
	and a			;bd83
	ret nc			;bd84
	or c			;bd85
	ret nc			;bd86
	or d			;bd87
	ld de,03700h		;bd88
	call 04e3ah		;bd8b
	ld de,(0c0cah)		;bd8e
	call 07db8h		;bd92
	ld de,(0c0cah)		;bd95
	ld hl,0ffdch		;bd99
	add hl,de		;bd9c
	push hl			;bd9d
	call 04e37h		;bd9e
	pop de			;bda1
	call 07db8h		;bda2
	jr lbdb4h		;bda5
	ld de,02000h		;bda7
	call 04e37h		;bdaa
	ld de,(0c0cah)		;bdad
	call 07db8h		;bdb1
lbdb4h:
	ld de,00006h		;bdb4
	ret			;bdb7
	push de			;bdb8
	push hl			;bdb9
	exx			;bdba
	pop hl			;bdbb
	exx			;bdbc
	ld a,(0c0bbh)		;bdbd
	and 018h		;bdc0
	rrca			;bdc2
	rrca			;bdc3
	rrca			;bdc4
	ld hl,(0c0c8h)		;bdc5
	ld e,a			;bdc8
	ld d,000h		;bdc9
	add hl,de		;bdcb
	ld b,h			;bdcc
	ld c,l			;bdcd
	pop de			;bdce
	ld a,006h		;bdcf
	ex af,af'		;bdd1
	ld a,01bh		;bdd2
	call 04c23h		;bdd4
	ld a,(de)		;bdd7
	inc de			;bdd8
	ld h,000h		;bdd9
	ld l,a			;bddb
	ld a,01ah		;bddc
	call 04c23h		;bdde
	add hl,hl		;bde1
	add hl,hl		;bde2
	add hl,hl		;bde3
	add hl,hl		;bde4
	add hl,bc		;bde5
	push hl			;bde6
	exx			;bde7
	pop de			;bde8
	ld bc,00040h		;bde9
	ld a,(de)		;bdec
	ld (hl),a		;bded
	inc e			;bdee
	inc e			;bdef
	inc e			;bdf0
	inc e			;bdf1
	add hl,bc		;bdf2
	res 3,h			;bdf3
	ld a,(de)		;bdf5
	ld (hl),a		;bdf6
	inc e			;bdf7
	inc e			;bdf8
	inc e			;bdf9
	inc e			;bdfa
	add hl,bc		;bdfb
	res 3,h			;bdfc
	ld a,(de)		;bdfe
	ld (hl),a		;bdff
	inc e			;be00
	inc e			;be01
	inc e			;be02
	inc e			;be03
	add hl,bc		;be04
	res 3,h			;be05
	ld a,(de)		;be07
	ld (hl),a		;be08
	inc e			;be09
	inc e			;be0a
	inc e			;be0b
	inc e			;be0c
	add hl,bc		;be0d
	res 3,h			;be0e
	exx			;be10
	ex af,af'		;be11
	dec a			;be12
	jp nz,07dd1h		;be13
	ret			;be16
	ld a,l			;be17
	sub 040h		;be18
	ld l,a			;be1a
	ret			;be1b
	ld a,008h		;be1c
	ld de,00018h		;be1e
	call 07e55h		;be21
	ld de,00008h		;be24
	ret			;be27
	ld e,018h		;be28
	ld a,(0c0c1h)		;be2a
	and 018h		;be2d
	rrca			;be2f
	rrca			;be30
	rrca			;be31
	neg			;be32
	ld d,a			;be34
	dec d			;be35
	ld a,00fh		;be36
	call 07e55h		;be38
	ld de,0000fh		;be3b
	ret			;be3e
	ld e,018h		;be3f
	ld a,(0c0c1h)		;be41
	and 018h		;be44
	rrca			;be46
	rrca			;be47
	rrca			;be48
	sub 01ch		;be49
	ld d,a			;be4b
	ld a,00fh		;be4c
	call 07e55h		;be4e
	ld de,0000fh		;be51
	ret			;be54
	push af			;be55
	call 04e3ah		;be56
	push hl			;be59
	exx			;be5a
	pop hl			;be5b
	exx			;be5c
	ld a,(0c0c1h)		;be5d
	and 018h		;be60
	rrca			;be62
	ld hl,(0c0c8h)		;be63
	ld e,a			;be66
	ld d,000h		;be67
	add hl,de		;be69
	ld b,h			;be6a
	ld c,l			;be6b
	ld de,(0c0cah)		;be6c
	pop af			;be70
	ex af,af'		;be71
	ld a,01bh		;be72
	call 04c23h		;be74
	ld a,(de)		;be77
	inc de			;be78
	ld h,000h		;be79
	ld l,a			;be7b
	ld a,01ah		;be7c
	call 04c23h		;be7e
	add hl,hl		;be81
	add hl,hl		;be82
	add hl,hl		;be83
	add hl,hl		;be84
	add hl,bc		;be85
	push hl			;be86
	exx			;be87
	pop de			;be88
	ld a,(de)		;be89
	ld (hl),a		;be8a
	inc de			;be8b
	inc l			;be8c
	ld a,l			;be8d
	and 03fh		;be8e
	call z,07e17h		;be90
	ld a,(de)		;be93
	ld (hl),a		;be94
	inc de			;be95
	inc l			;be96
	ld a,l			;be97
	and 03fh		;be98
	call z,07e17h		;be9a
	ld a,(de)		;be9d
	ld (hl),a		;be9e
	inc de			;be9f
	inc l			;bea0
	ld a,l			;bea1
	and 03fh		;bea2
	call z,07e17h		;bea4
	ld a,(de)		;bea7
	ld (hl),a		;bea8
	inc de			;bea9
	inc l			;beaa
	ld a,l			;beab
	and 03fh		;beac
	call z,07e17h		;beae
	exx			;beb1
	ex af,af'		;beb2
	dec a			;beb3
	jp nz,07e71h		;beb4
	ret			;beb7
	ld a,l			;beb8
	sub 040h		;beb9
	ld l,a			;bebb
	ret			;bebc
	ld e,001h		;bebd
	call 07c71h		;bebf
	ld a,008h		;bec2
	ld de,00018h		;bec4
	call 07efch		;bec7
	ld de,00008h		;beca
	ret			;becd
	call 07c71h		;bece
	ld d,000h		;bed1
	ld e,0ffh		;bed3
	ld a,008h		;bed5
	call 07efch		;bed7
	ld de,00008h		;beda
	ret			;bedd
	call 07c71h		;bede
	ld a,(0c0c1h)		;bee1
	and 018h		;bee4
	rrca			;bee6
	rrca			;bee7
	rrca			;bee8
	neg			;bee9
	and 003h		;beeb
	neg			;beed
	ld d,a			;beef
	ld e,0ffh		;bef0
	ld a,00fh		;bef2
	call 07efch		;bef4
	ret nz			;bef7
	ld de,0000fh		;bef8
	ret			;befb
	push af			;befc
	call 04e3ah		;befd
	push hl			;bf00
	exx			;bf01
	pop hl			;bf02
	exx			;bf03
	ld a,(0c0c1h)		;bf04
	and 018h		;bf07
	sub 008h		;bf09
	rrca			;bf0b
	and 00ch		;bf0c
	ld hl,(0c0c8h)		;bf0e
	ld e,a			;bf11
	ld d,000h		;bf12
	add hl,de		;bf14
	ld b,h			;bf15
	ld c,l			;bf16
	ld de,(0c0cah)		;bf17
	pop af			;bf1b
	ex af,af'		;bf1c
	ld a,01bh		;bf1d
	call 04c23h		;bf1f
	ld a,(de)		;bf22
	inc de			;bf23
	ld h,000h		;bf24
	ld l,a			;bf26
	ld a,01ah		;bf27
	call 04c23h		;bf29
	add hl,hl		;bf2c
	add hl,hl		;bf2d
	add hl,hl		;bf2e
	add hl,hl		;bf2f
	add hl,bc		;bf30
	push hl			;bf31
	exx			;bf32
	pop de			;bf33
	ld a,(de)		;bf34
	ld (hl),a		;bf35
	inc de			;bf36
	inc l			;bf37
	ld a,l			;bf38
	and 03fh		;bf39
	call z,07eb8h		;bf3b
	ld a,(de)		;bf3e
	ld (hl),a		;bf3f
	inc de			;bf40
	inc l			;bf41
	ld a,l			;bf42
	and 03fh		;bf43
	call z,07eb8h		;bf45
	ld a,(de)		;bf48
	ld (hl),a		;bf49
	inc de			;bf4a
	inc l			;bf4b
	ld a,l			;bf4c
	and 03fh		;bf4d
	call z,07eb8h		;bf4f
	ld a,(de)		;bf52
	ld (hl),a		;bf53
	inc de			;bf54
	inc l			;bf55
	ld a,l			;bf56
	and 03fh		;bf57
	call z,07eb8h		;bf59
	exx			;bf5c
	ex af,af'		;bf5d
	dec a			;bf5e
	jp nz,07f1ch		;bf5f
	ret			;bf62
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
