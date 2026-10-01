; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank03_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank03.bin

	org 0a000h

	inc bc			;a000
	jr nc,la018h		;a001
	ld c,l			;a003
	dec b			;a004
	inc b			;a005
	jr nc,la01dh		;a006
	ld c,l			;a008
	dec b			;a009
	ld a,(bc)		;a00a
	jr nc,la026h		;a00b
	ld c,d			;a00d
	dec b			;a00e
	ld b,030h		;a00f
	dec de			;a011
	ld c,d			;a012
	dec b			;a013
	djnz la046h		;a014
	dec e			;a016
	ld c,d			;a017
la018h:
	dec b			;a018
	ld c,030h		;a019
	jr nz,la067h		;a01b
la01dh:
	dec b			;a01d
	inc bc			;a01e
	jr nc,$+35		;a01f
	ld c,d			;a021
	dec b			;a022
	ex af,af'		;a023
	jr nc,$+36		;a024
la026h:
	ld c,d			;a026
	dec b			;a027
	inc bc			;a028
	jr nc,la04fh		;a029
	ld c,d			;a02b
	dec b			;a02c
	ld (de),a		;a02d
	jr nc,la056h		;a02e
	ld c,d			;a030
	dec b			;a031
	ld (de),a		;a032
	jr nc,la05bh		;a033
	ld c,d			;a035
	dec b			;a036
	inc bc			;a037
	jr nc,la062h		;a038
	ld c,d			;a03a
	dec b			;a03b
	inc bc			;a03c
	jr nc,la067h		;a03d
	ld c,l			;a03f
	dec b			;a040
	ld c,030h		;a041
	jr z,$+79		;a043
	dec b			;a045
la046h:
	add hl,bc		;a046
	jr nc,$+42		;a047
	ld c,l			;a049
	dec b			;a04a
	inc b			;a04b
	jr nc,la07eh		;a04c
	ld c,d			;a04e
la04fh:
	dec b			;a04f
	inc bc			;a050
	or b			;a051
	jr nc,la09eh		;a052
	dec b			;a054
	ld (de),a		;a055
la056h:
	jr nc,la08ah		;a056
	xor d			;a058
	dec b			;a059
	ex af,af'		;a05a
la05bh:
	or b			;a05b
	ld (0054ah),a		;a05c
	inc c			;a05f
	jr nc,$+54		;a060
la062h:
	ld c,d			;a062
	dec b			;a063
	inc bc			;a064
	jr nc,la09dh		;a065
la067h:
	ld c,d			;a067
	dec b			;a068
	inc bc			;a069
	jr nc,la0a4h		;a06a
	ld c,d			;a06c
	dec b			;a06d
	inc bc			;a06e
	or b			;a06f
	jr c,la0bch		;a070
	dec b			;a072
	ld (de),a		;a073
la074h:
	jr nc,la0b1h		;a074
	ld c,l			;a076
	dec b			;a077
	ex af,af'		;a078
	jr nc,la0b6h		;a079
	ld c,l			;a07b
	dec b			;a07c
	dec c			;a07d
la07eh:
	jr nc,la0c0h		;a07e
	ld d,c			;a080
	adc a,(hl)		;a081
	ld b,009h		;a082
	rra			;a084
	inc bc			;a085
	ld (bc),a		;a086
	ex af,af'		;a087
	inc b			;a088
	ld b,h			;a089
la08ah:
	ld (de),a		;a08a
	djnz la0bdh		;a08b
	ld b,b			;a08d
	ld c,d			;a08e
la08fh:
	dec b			;a08f
	inc bc			;a090
	jr nc,$+74		;a091
	ld c,d			;a093
	dec b			;a094
	djnz la0c7h		;a095
	ld c,b			;a097
	ld c,d			;a098
	dec b			;a099
	inc bc			;a09a
	jr nc,la0e5h		;a09b
la09dh:
	ld c,d			;a09d
la09eh:
	dec b			;a09e
	ld (de),a		;a09f
	jr nc,la0f0h		;a0a0
	ld c,d			;a0a2
	dec b			;a0a3
la0a4h:
	ld (de),a		;a0a4
	jr nc,la0f7h		;a0a5
la0a7h:
	ld c,l			;a0a7
	dec b			;a0a8
	inc b			;a0a9
	jr nc,la0fch		;a0aa
	ld c,l			;a0ac
	dec b			;a0ad
	ld a,(bc)		;a0ae
	jr nc,$+87		;a0af
la0b1h:
	ld c,d			;a0b1
la0b2h:
	dec b			;a0b2
	ld b,030h		;a0b3
	ld d,(hl)		;a0b5
la0b6h:
	ld c,d			;a0b6
	dec b			;a0b7
la0b8h:
	add hl,bc		;a0b8
	jr nc,$+96		;a0b9
	ld c,d			;a0bb
la0bch:
	dec b			;a0bc
la0bdh:
	inc bc			;a0bd
	jr nc,la11eh		;a0be
la0c0h:
	jp z,00905h		;a0c0
la0c3h:
	jr nc,$+98		;a0c3
	ld c,l			;a0c5
	dec b			;a0c6
la0c7h:
	ex af,af'		;a0c7
	jr nc,la12ah		;a0c8
la0cah:
	ld d,c			;a0ca
	adc a,(hl)		;a0cb
	ld b,010h		;a0cc
	nop			;a0ce
	inc bc			;a0cf
	ld (bc),a		;a0d0
	ex af,af'		;a0d1
	inc b			;a0d2
	ld b,h			;a0d3
	ld b,010h		;a0d4
	jr nc,la148h		;a0d6
	ld d,c			;a0d8
	adc a,(hl)		;a0d9
	ld b,00dh		;a0da
	rra			;a0dc
	inc bc			;a0dd
	ld (bc),a		;a0de
	ex af,af'		;a0df
la0e0h:
	inc b			;a0e0
	ld b,h			;a0e1
	ld (de),a		;a0e2
	djnz la115h		;a0e3
la0e5h:
	ld (hl),b		;a0e5
	ld d,c			;a0e6
	adc a,(hl)		;a0e7
	ld b,00dh		;a0e8
	rra			;a0ea
	inc bc			;a0eb
	ld (bc),a		;a0ec
	ex af,af'		;a0ed
	inc b			;a0ee
	ld b,h			;a0ef
la0f0h:
	ld b,00ah		;a0f0
	jr nc,la074h		;a0f2
	ld e,a			;a0f4
la0f5h:
	ld b,001h		;a0f5
la0f7h:
	inc b			;a0f7
	jr nc,$-126		;a0f8
	ld c,005h		;a0fa
la0fch:
	inc bc			;a0fc
	jr nc,la08fh		;a0fd
	ld c,005h		;a0ff
	dec c			;a101
	jr nc,la0a7h		;a102
	ld (hl),e		;a104
	ld b,00ah		;a105
la107h:
	rra			;a107
	jr nc,la0b2h		;a108
	ld (hl),e		;a10a
	ld b,090h		;a10b
	rra			;a10d
	jr nc,la0b8h		;a10e
	ld c,005h		;a110
	inc bc			;a112
	jr nc,la0c3h		;a113
la115h:
	rla			;a115
	dec b			;a116
	inc c			;a117
	jr nc,la0cah		;a118
	ld d,c			;a11a
	adc a,(hl)		;a11b
	ld b,009h		;a11c
la11eh:
	rra			;a11e
	inc bc			;a11f
	ld (bc),a		;a120
	ex af,af'		;a121
	inc b			;a122
	ld b,h			;a123
la124h:
	ld b,009h		;a124
	jr nc,la0e0h		;a126
	ld c,005h		;a128
la12ah:
	dec c			;a12a
	jr nc,la0f5h		;a12b
	ld d,c			;a12d
	adc a,(hl)		;a12e
	ld b,006h		;a12f
	rra			;a131
	inc bc			;a132
	ld (bc),a		;a133
	ex af,af'		;a134
	inc b			;a135
	ld b,h			;a136
la137h:
	ld b,008h		;a137
	jr nc,la107h		;a139
	ld c,l			;a13b
	dec b			;a13c
la13dh:
	ld b,030h		;a13d
	rst 8			;a13f
	ld c,l			;a140
	dec b			;a141
	ld (bc),a		;a142
	jr nc,$-47		;a143
	ld c,l			;a145
	dec b			;a146
	ld a,(bc)		;a147
la148h:
	jr nc,la11eh		;a148
	ld (hl),e		;a14a
	ld b,083h		;a14b
	rra			;a14d
	jr nc,la124h		;a14e
	ld (hl),e		;a150
	ld b,00ch		;a151
	rra			;a153
	jr nc,la137h		;a154
	ld (hl),e		;a156
	ld b,08bh		;a157
	rra			;a159
	jr nc,la13dh		;a15a
	ld (hl),e		;a15c
	ld b,005h		;a15d
	rra			;a15f
	jr nc,$-28		;a160
	ld d,c			;a162
	adc a,(hl)		;a163
	ld b,006h		;a164
	rra			;a166
	inc bc			;a167
	ld (bc),a		;a168
	ex af,af'		;a169
	inc b			;a16a
	ld b,h			;a16b
	djnz la182h		;a16c
la16eh:
	jr nc,$-28		;a16e
	ld d,c			;a170
	adc a,(hl)		;a171
	ld b,012h		;a172
	rra			;a174
	inc bc			;a175
la176h:
	ld (bc),a		;a176
	ex af,af'		;a177
	inc b			;a178
	ld b,h			;a179
	ld b,014h		;a17a
	jr nc,$-27		;a17c
la17eh:
	ld (hl),e		;a17e
	ld b,005h		;a17f
	rra			;a181
la182h:
	jr nc,la16eh		;a182
	rla			;a184
	dec b			;a185
	ex af,af'		;a186
	jr nc,la176h		;a187
	ld c,005h		;a189
	inc bc			;a18b
	jr nc,la17eh		;a18c
	ld d,c			;a18e
	adc a,(hl)		;a18f
	ld b,000h		;a190
	ld a,(de)		;a192
	inc bc			;a193
	ld (bc),a		;a194
	ex af,af'		;a195
	inc b			;a196
	ld b,h			;a197
	ld de,03008h		;a198
	ret m			;a19b
	ld d,c			;a19c
	adc a,(hl)		;a19d
	ld b,013h		;a19e
	rra			;a1a0
	inc bc			;a1a1
	ld (bc),a		;a1a2
	ex af,af'		;a1a3
	inc b			;a1a4
	ld b,h			;a1a5
	ld de,03008h		;a1a6
	ret m			;a1a9
	ld d,c			;a1aa
	adc a,(hl)		;a1ab
	ld b,010h		;a1ac
	nop			;a1ae
	inc bc			;a1af
	ld (bc),a		;a1b0
	ex af,af'		;a1b1
	inc b			;a1b2
	ld b,h			;a1b3
la1b4h:
	ld b,00eh		;a1b4
	jr nc,la1b4h		;a1b6
	ld (hl),e		;a1b8
	ld b,00ah		;a1b9
	rra			;a1bb
	jr nc,$-2		;a1bc
	ld (hl),e		;a1be
	ld b,090h		;a1bf
	rra			;a1c1
la1c2h:
	jr nc,la1c2h		;a1c2
	ld c,005h		;a1c4
	inc bc			;a1c6
	ld sp,01702h		;a1c7
	dec b			;a1ca
	dec c			;a1cb
	ld sp,00e05h		;a1cc
	dec b			;a1cf
	dec c			;a1d0
	ld sp,05110h		;a1d1
	adc a,(hl)		;a1d4
	ld b,000h		;a1d5
	ld (de),a		;a1d7
	inc bc			;a1d8
	ld (bc),a		;a1d9
	ex af,af'		;a1da
	inc b			;a1db
	ld b,h			;a1dc
	inc c			;a1dd
	ld a,(bc)		;a1de
	ld sp,07312h		;a1df
	ld b,083h		;a1e2
	rra			;a1e4
	ld sp,07314h		;a1e5
	ld b,083h		;a1e8
	rra			;a1ea
	ld sp,00e16h		;a1eb
	dec b			;a1ee
	inc bc			;a1ef
	ld sp,07318h		;a1f0
	ld b,00eh		;a1f3
	rra			;a1f5
	ld sp,0731ah		;a1f6
	ld b,00eh		;a1f9
	rra			;a1fb
	ld sp,04a24h		;a1fc
	dec b			;a1ff
	inc bc			;a200
	ld sp,04a2ch		;a201
	dec b			;a204
	ex af,af'		;a205
	ld sp,05f30h		;a206
	ld b,001h		;a209
	nop			;a20b
	ld sp,04a31h		;a20c
	dec b			;a20f
	inc bc			;a210
	ld sp,04a35h		;a211
	dec b			;a214
	inc bc			;a215
	ld sp,05140h		;a216
	adc a,(hl)		;a219
	ld b,01ah		;a21a
	rra			;a21c
	inc bc			;a21d
	ld (bc),a		;a21e
	ex af,af'		;a21f
	inc b			;a220
	ld b,h			;a221
	ld (de),a		;a222
	djnz $+51		;a223
	ld c,b			;a225
	ld d,c			;a226
	adc a,(hl)		;a227
	ld b,012h		;a228
	rra			;a22a
	inc bc			;a22b
	ld (bc),a		;a22c
	ex af,af'		;a22d
	inc b			;a22e
	ld b,h			;a22f
	ld (de),a		;a230
	djnz la273h		;a231
	add hl,bc		;a233
	ld c,b			;a234
	adc a,c			;a235
	inc bc			;a236
	jr $-125		;a237
	ld (bc),a		;a239
	ld c,b			;a23a
	ld b,b			;a23b
	ld a,(bc)		;a23c
	ld c,b			;a23d
	adc a,c			;a23e
	inc bc			;a23f
	dec bc			;a240
	ld (bc),a		;a241
	ld (bc),a		;a242
	ld c,b			;a243
	ld d,b			;a244
	jr nz,la2a6h		;a245
	dec b			;a247
	inc bc			;a248
	ld d,b			;a249
	jr z,la2abh		;a24a
	ld b,001h		;a24c
	inc bc			;a24e
	ld d,b			;a24f
	add hl,hl		;a250
	ld a,e			;a251
	dec b			;a252
	rst 38h			;a253
	ld d,b			;a254
	ld hl,(0887ch)		;a255
	ld (bc),a		;a258
	nop			;a259
	ld (bc),a		;a25a
	ld a,h			;a25b
	ld d,b			;a25c
	ld hl,(0887ch)		;a25d
	ld (bc),a		;a260
	ld bc,07c02h		;a261
	nop			;a264
	nop			;a265
	nop			;a266
	djnz la28bh		;a267
	ld c,l			;a269
	dec b			;a26a
	ex af,af'		;a26b
	djnz la29ch		;a26c
	ld c,a			;a26e
	adc a,c			;a26f
	inc bc			;a270
	add a,d			;a271
	rra			;a272
la273h:
	ld (bc),a		;a273
	ld d,010h		;a274
	ld l,04fh		;a276
	adc a,c			;a278
	inc bc			;a279
	djnz $+33		;a27a
la27ch:
	ld (bc),a		;a27c
	ld d,010h		;a27d
	jr c,la2d5h		;a27f
	adc a,d			;a281
	inc b			;a282
	add a,b			;a283
	inc de			;a284
	nop			;a285
la286h:
	ld (bc),a		;a286
	ld a,(de)		;a287
	djnz la2c2h		;a288
	ld d,h			;a28a
la28bh:
	adc a,d			;a28b
	inc b			;a28c
	add a,b			;a28d
	ld b,011h		;a28e
la290h:
	ld (bc),a		;a290
	ld a,(de)		;a291
	djnz la2cch		;a292
	ld d,h			;a294
	adc a,d			;a295
	inc b			;a296
	dec d			;a297
	inc hl			;a298
	ld bc,01a02h		;a299
la29ch:
	djnz la2e6h		;a29c
	ld d,h			;a29e
	adc a,d			;a29f
	inc b			;a2a0
	add a,b			;a2a1
	inc de			;a2a2
	inc bc			;a2a3
	ld (bc),a		;a2a4
	ld a,(de)		;a2a5
la2a6h:
	djnz la2fch		;a2a6
	ld d,h			;a2a8
	adc a,d			;a2a9
	inc b			;a2aa
la2abh:
	dec d			;a2ab
	inc de			;a2ac
	inc de			;a2ad
la2aeh:
	ld (bc),a		;a2ae
	ld a,(de)		;a2af
	djnz la30eh		;a2b0
	ld d,h			;a2b2
	adc a,d			;a2b3
	inc b			;a2b4
	add a,b			;a2b5
	inc de			;a2b6
	inc b			;a2b7
la2b8h:
	ld (bc),a		;a2b8
	ld a,(de)		;a2b9
	djnz la318h		;a2ba
	ld d,h			;a2bc
	adc a,d			;a2bd
	inc b			;a2be
	add a,b			;a2bf
	inc hl			;a2c0
	inc de			;a2c1
la2c2h:
	ld (bc),a		;a2c2
	ld a,(de)		;a2c3
	djnz la322h		;a2c4
	ld d,h			;a2c6
	adc a,d			;a2c7
	inc b			;a2c8
	add a,b			;a2c9
	inc hl			;a2ca
	dec d			;a2cb
la2cch:
	ld (bc),a		;a2cc
	ld a,(de)		;a2cd
	djnz la340h		;a2ce
	ld d,h			;a2d0
	adc a,d			;a2d1
	inc b			;a2d2
	dec d			;a2d3
	inc b			;a2d4
la2d5h:
	djnz $+4		;a2d5
	ld a,(de)		;a2d7
	djnz la34ah		;a2d8
	ld d,h			;a2da
	adc a,d			;a2db
la2dch:
	inc b			;a2dc
	dec d			;a2dd
	inc h			;a2de
	inc d			;a2df
	ld (bc),a		;a2e0
	ld a,(de)		;a2e1
	djnz la35ch		;a2e2
	ld d,h			;a2e4
	adc a,d			;a2e5
la2e6h:
	inc b			;a2e6
	dec d			;a2e7
	inc b			;a2e8
	rlca			;a2e9
	ld (bc),a		;a2ea
	ld a,(de)		;a2eb
	djnz la366h		;a2ec
	ld d,h			;a2ee
	adc a,d			;a2ef
	inc b			;a2f0
	dec d			;a2f1
	inc (hl)		;a2f2
	ld d,002h		;a2f3
	ld a,(de)		;a2f5
	djnz la27ch		;a2f6
la2f8h:
	ld d,h			;a2f8
	adc a,d			;a2f9
	inc b			;a2fa
	dec d			;a2fb
la2fch:
	inc bc			;a2fc
	ex af,af'		;a2fd
	ld (bc),a		;a2fe
	ld a,(de)		;a2ff
	djnz la286h		;a300
la302h:
	ld d,h			;a302
	adc a,d			;a303
	inc b			;a304
	dec d			;a305
	inc de			;a306
	add hl,bc		;a307
	ld (bc),a		;a308
	ld a,(de)		;a309
	djnz la290h		;a30a
la30ch:
	ld d,h			;a30c
	adc a,d			;a30d
la30eh:
	inc b			;a30e
	dec d			;a30f
	inc sp			;a310
	rla			;a311
	ld (bc),a		;a312
	ld a,(de)		;a313
	djnz la2aeh		;a314
	ld d,h			;a316
	adc a,d			;a317
la318h:
	inc b			;a318
	add a,b			;a319
	inc bc			;a31a
	dec bc			;a31b
	ld (bc),a		;a31c
	ld a,(de)		;a31d
	djnz la2b8h		;a31e
	ld d,h			;a320
	adc a,d			;a321
la322h:
	inc b			;a322
	add a,b			;a323
	inc h			;a324
	ld de,01a02h		;a325
	djnz la2c2h		;a328
	ld d,h			;a32a
	adc a,d			;a32b
	inc b			;a32c
	dec d			;a32d
	inc de			;a32e
	inc c			;a32f
	ld (bc),a		;a330
	ld a,(de)		;a331
	djnz la2dch		;a332
	ld d,h			;a334
	adc a,d			;a335
	inc b			;a336
	add a,b			;a337
	inc de			;a338
	dec c			;a339
	ld (bc),a		;a33a
	ld a,(de)		;a33b
	djnz la2e6h		;a33c
la33eh:
	ld d,h			;a33e
	adc a,d			;a33f
la340h:
	inc b			;a340
	dec d			;a341
	inc de			;a342
	ld c,002h		;a343
	ld a,(de)		;a345
	djnz la2f8h		;a346
	ld d,h			;a348
	adc a,d			;a349
la34ah:
	inc b			;a34a
	add a,b			;a34b
	inc de			;a34c
	rrca			;a34d
	ld (bc),a		;a34e
	ld a,(de)		;a34f
	djnz la302h		;a350
	ld d,h			;a352
	adc a,d			;a353
	inc b			;a354
	dec d			;a355
	ld h,012h		;a356
	ld (bc),a		;a358
	ld a,(de)		;a359
	djnz la30ch		;a35a
la35ch:
	ld d,h			;a35c
	adc a,d			;a35d
	inc b			;a35e
	dec d			;a35f
	inc (hl)		;a360
	ld (de),a		;a361
	ld (bc),a		;a362
la363h:
	ld a,(de)		;a363
	djnz la33eh		;a364
la366h:
	ld e,a			;a366
	dec b			;a367
	inc bc			;a368
	djnz la363h		;a369
	ld b,e			;a36b
	dec b			;a36c
	ex af,af'		;a36d
	nop			;a36e
	djnz $+28		;a36f
la371h:
	ld d,b			;a371
	ld b,006h		;a372
	rra			;a374
	djnz $+34		;a375
	dec de			;a377
	dec b			;a378
	rst 38h			;a379
	djnz la3a0h		;a37a
	ld b,d			;a37c
	dec b			;a37d
	sub d			;a37e
	djnz la3abh		;a37f
	ld d,b			;a381
la382h:
	ld b,096h		;a382
	rra			;a384
	djnz $+51		;a385
	ld b,d			;a387
	dec b			;a388
	ld (bc),a		;a389
	djnz $+54		;a38a
	ld d,b			;a38c
	ld b,000h		;a38d
	rra			;a38f
	djnz $+66		;a390
	ld e,a			;a392
	ld b,001h		;a393
	dec b			;a395
	djnz la3dch		;a396
la398h:
	ld b,d			;a398
	dec b			;a399
	adc a,b			;a39a
	djnz $+72		;a39b
la39dh:
	ld d,b			;a39d
	ld b,096h		;a39e
la3a0h:
	ld e,010h		;a3a0
	ld c,h			;a3a2
	ld b,(hl)		;a3a3
	dec b			;a3a4
	ld (bc),a		;a3a5
	djnz la3fah		;a3a6
	ld d,b			;a3a8
	ld b,096h		;a3a9
la3abh:
	jr $+18			;a3ab
	ld d,h			;a3ad
	ld d,b			;a3ae
	ld b,000h		;a3af
	sbc a,(hl)		;a3b1
	djnz la40ah		;a3b2
	ld b,(hl)		;a3b4
	dec b			;a3b5
	inc c			;a3b6
	djnz la419h		;a3b7
	ld b,(hl)		;a3b9
	dec b			;a3ba
	ld (bc),a		;a3bb
	djnz la420h		;a3bc
	ld d,b			;a3be
	ld b,000h		;a3bf
	jr la3d3h		;a3c1
	ld h,a			;a3c3
	ld b,d			;a3c4
	dec b			;a3c5
	ld (de),a		;a3c6
	djnz la434h		;a3c7
	ld b,(hl)		;a3c9
	dec b			;a3ca
	inc b			;a3cb
	djnz la43ah		;a3cc
	ld d,b			;a3ce
	ld b,096h		;a3cf
	jr $+18			;a3d1
la3d3h:
	ld l,(hl)		;a3d3
	ld d,b			;a3d4
	ld b,000h		;a3d5
	ld e,010h		;a3d7
	ld (hl),d		;a3d9
la3dah:
	ld b,(hl)		;a3da
	dec b			;a3db
la3dch:
	ld c,010h		;a3dc
	halt			;a3de
	ld d,b			;a3df
	ld b,096h		;a3e0
	ld e,010h		;a3e2
	ld a,b			;a3e4
	ld b,(hl)		;a3e5
	dec b			;a3e6
	ld (bc),a		;a3e7
	djnz la468h		;a3e8
	ld b,(hl)		;a3ea
	dec b			;a3eb
	add hl,bc		;a3ec
la3edh:
	djnz la371h		;a3ed
	ld d,b			;a3ef
	ld b,000h		;a3f0
	ld e,010h		;a3f2
	add a,h			;a3f4
	ld b,(hl)		;a3f5
	dec b			;a3f6
	inc b			;a3f7
	djnz la382h		;a3f8
la3fah:
	ld d,b			;a3fa
	ld b,096h		;a3fb
	djnz la40fh		;a3fd
	adc a,b			;a3ff
	ld b,(hl)		;a400
	dec b			;a401
	ld (bc),a		;a402
	djnz $-114		;a403
	ld b,(hl)		;a405
	dec b			;a406
	dec bc			;a407
	djnz la398h		;a408
la40ah:
	ld b,(hl)		;a40a
	dec b			;a40b
	ld (bc),a		;a40c
	djnz la39dh		;a40d
la40fh:
	ld d,b			;a40f
	ld b,096h		;a410
	jr $+18			;a412
	sub b			;a414
	ld d,b			;a415
	ld b,096h		;a416
	sbc a,(hl)		;a418
la419h:
	djnz la3abh		;a419
	ld b,(hl)		;a41b
	dec b			;a41c
	djnz la42fh		;a41d
	sub h			;a41f
la420h:
	ld b,(hl)		;a420
	dec b			;a421
	ex af,af'		;a422
	djnz $-102		;a423
	ld b,(hl)		;a425
	dec b			;a426
	djnz $+18		;a427
	sbc a,d			;a429
	ld b,(hl)		;a42a
	dec b			;a42b
	ld (bc),a		;a42c
	djnz $-96		;a42d
la42fh:
	ld d,b			;a42f
	ld b,000h		;a430
	jr $+18			;a432
la434h:
	sbc a,l			;a434
	ld b,(hl)		;a435
	dec b			;a436
	inc b			;a437
	djnz la3dah		;a438
la43ah:
	ld e,a			;a43a
	ld b,001h		;a43b
	nop			;a43d
	djnz la3edh		;a43e
	ld e,a			;a440
	dec b			;a441
	inc bc			;a442
	jr nz,la445h		;a443
la445h:
	ld a,b			;a445
	dec b			;a446
	djnz la449h		;a447
la449h:
	nop			;a449
	nop			;a44a
	djnz la466h		;a44b
	ld e,d			;a44d
	dec b			;a44e
	add a,d			;a44f
	djnz la46bh		;a450
	ld e,d			;a452
	dec b			;a453
	dec d			;a454
	djnz la477h		;a455
	ld c,(hl)		;a457
	dec b			;a458
	djnz la46bh		;a459
	inc h			;a45b
	ld c,(hl)		;a45c
	dec b			;a45d
	ex af,af'		;a45e
	djnz $+39		;a45f
	ld c,(hl)		;a461
	dec b			;a462
	inc b			;a463
	djnz la48eh		;a464
la466h:
	ld c,(hl)		;a466
	dec b			;a467
la468h:
	ld a,(bc)		;a468
	djnz la495h		;a469
la46bh:
	ld c,(hl)		;a46b
	dec b			;a46c
	ld d,010h		;a46d
	ld l,04eh		;a46f
	dec b			;a471
	ld a,(bc)		;a472
	djnz la4a4h		;a473
	ld c,(hl)		;a475
	dec b			;a476
la477h:
	ex af,af'		;a477
	djnz la4b0h		;a478
	ld a,c			;a47a
	dec b			;a47b
	ex af,af'		;a47c
	djnz la4beh		;a47d
	ld d,c			;a47f
	adc a,(hl)		;a480
	ex af,af'		;a481
	ld bc,0031fh		;a482
	ld bc,00320h		;a485
	ld b,b			;a488
	ld (bc),a		;a489
	ld c,h			;a48a
	nop			;a48b
	nop			;a48c
	nop			;a48d
la48eh:
	rst 38h			;a48e
	rst 38h			;a48f
	rst 38h			;a490
	rst 38h			;a491
	rst 38h			;a492
	rst 38h			;a493
	rst 38h			;a494
la495h:
	rst 38h			;a495
	rst 38h			;a496
	rst 38h			;a497
	rst 38h			;a498
	rst 38h			;a499
	rst 38h			;a49a
	rst 38h			;a49b
	rst 38h			;a49c
	rst 38h			;a49d
	rst 38h			;a49e
	rst 38h			;a49f
	rst 38h			;a4a0
	rst 38h			;a4a1
	rst 38h			;a4a2
	rst 38h			;a4a3
la4a4h:
	rst 38h			;a4a4
	rst 38h			;a4a5
	rst 38h			;a4a6
	rst 38h			;a4a7
	rst 38h			;a4a8
	rst 38h			;a4a9
	rst 38h			;a4aa
	rst 38h			;a4ab
	rst 38h			;a4ac
	rst 38h			;a4ad
	rst 38h			;a4ae
	rst 38h			;a4af
la4b0h:
	rst 38h			;a4b0
	rst 38h			;a4b1
	rst 38h			;a4b2
	rst 38h			;a4b3
	rst 38h			;a4b4
	rst 38h			;a4b5
	rst 38h			;a4b6
	rst 38h			;a4b7
	rst 38h			;a4b8
	rst 38h			;a4b9
	rst 38h			;a4ba
	rst 38h			;a4bb
	rst 38h			;a4bc
	rst 38h			;a4bd
la4beh:
	rst 38h			;a4be
	rst 38h			;a4bf
	rst 38h			;a4c0
	rst 38h			;a4c1
	rst 38h			;a4c2
	rst 38h			;a4c3
	rst 38h			;a4c4
	rst 38h			;a4c5
	rst 38h			;a4c6
	rst 38h			;a4c7
	rst 38h			;a4c8
	rst 38h			;a4c9
	rst 38h			;a4ca
	rst 38h			;a4cb
	rst 38h			;a4cc
	rst 38h			;a4cd
	rst 38h			;a4ce
	rst 38h			;a4cf
	rst 38h			;a4d0
	rst 38h			;a4d1
	rst 38h			;a4d2
	rst 38h			;a4d3
	rst 38h			;a4d4
	rst 38h			;a4d5
	rst 38h			;a4d6
	rst 38h			;a4d7
	rst 38h			;a4d8
	rst 38h			;a4d9
	rst 38h			;a4da
	rst 38h			;a4db
	rst 38h			;a4dc
	rst 38h			;a4dd
	rst 38h			;a4de
	rst 38h			;a4df
	rst 38h			;a4e0
	rst 38h			;a4e1
	rst 38h			;a4e2
	rst 38h			;a4e3
	rst 38h			;a4e4
	rst 38h			;a4e5
	rst 38h			;a4e6
	rst 38h			;a4e7
	rst 38h			;a4e8
	rst 38h			;a4e9
	rst 38h			;a4ea
	rst 38h			;a4eb
	rst 38h			;a4ec
	rst 38h			;a4ed
	rst 38h			;a4ee
	rst 38h			;a4ef
	rst 38h			;a4f0
	rst 38h			;a4f1
	rst 38h			;a4f2
	rst 38h			;a4f3
	rst 38h			;a4f4
	rst 38h			;a4f5
	rst 38h			;a4f6
	rst 38h			;a4f7
	rst 38h			;a4f8
	rst 38h			;a4f9
	rst 38h			;a4fa
	rst 38h			;a4fb
	rst 38h			;a4fc
	rst 38h			;a4fd
	rst 38h			;a4fe
	rst 38h			;a4ff
	rst 38h			;a500
	rst 38h			;a501
	rst 38h			;a502
	rst 38h			;a503
	rst 38h			;a504
	rst 38h			;a505
	rst 38h			;a506
	rst 38h			;a507
	rst 38h			;a508
	rst 38h			;a509
	rst 38h			;a50a
	rst 38h			;a50b
	rst 38h			;a50c
	rst 38h			;a50d
	rst 38h			;a50e
	rst 38h			;a50f
	rst 38h			;a510
	rst 38h			;a511
	rst 38h			;a512
	rst 38h			;a513
	rst 38h			;a514
	rst 38h			;a515
	rst 38h			;a516
	rst 38h			;a517
	rst 38h			;a518
	rst 38h			;a519
	rst 38h			;a51a
	rst 38h			;a51b
	rst 38h			;a51c
	rst 38h			;a51d
	rst 38h			;a51e
	rst 38h			;a51f
	rst 38h			;a520
	rst 38h			;a521
	rst 38h			;a522
	rst 38h			;a523
	rst 38h			;a524
	rst 38h			;a525
	rst 38h			;a526
	rst 38h			;a527
	rst 38h			;a528
	rst 38h			;a529
	rst 38h			;a52a
	rst 38h			;a52b
	rst 38h			;a52c
	rst 38h			;a52d
	rst 38h			;a52e
	rst 38h			;a52f
	rst 38h			;a530
	rst 38h			;a531
	rst 38h			;a532
	rst 38h			;a533
	rst 38h			;a534
	rst 38h			;a535
	rst 38h			;a536
	rst 38h			;a537
	rst 38h			;a538
	rst 38h			;a539
	rst 38h			;a53a
	rst 38h			;a53b
	rst 38h			;a53c
	rst 38h			;a53d
	rst 38h			;a53e
	rst 38h			;a53f
	rst 38h			;a540
	rst 38h			;a541
	rst 38h			;a542
	rst 38h			;a543
	rst 38h			;a544
	rst 38h			;a545
	rst 38h			;a546
	rst 38h			;a547
	rst 38h			;a548
	rst 38h			;a549
	rst 38h			;a54a
	rst 38h			;a54b
	rst 38h			;a54c
	rst 38h			;a54d
	rst 38h			;a54e
	rst 38h			;a54f
	rst 38h			;a550
	rst 38h			;a551
	rst 38h			;a552
	rst 38h			;a553
	rst 38h			;a554
	rst 38h			;a555
	rst 38h			;a556
	rst 38h			;a557
	rst 38h			;a558
	rst 38h			;a559
	rst 38h			;a55a
	rst 38h			;a55b
	rst 38h			;a55c
	rst 38h			;a55d
	rst 38h			;a55e
	rst 38h			;a55f
	rst 38h			;a560
	rst 38h			;a561
	rst 38h			;a562
	rst 38h			;a563
	rst 38h			;a564
	rst 38h			;a565
	rst 38h			;a566
	rst 38h			;a567
	rst 38h			;a568
	rst 38h			;a569
	rst 38h			;a56a
	rst 38h			;a56b
	rst 38h			;a56c
	rst 38h			;a56d
	rst 38h			;a56e
	rst 38h			;a56f
	rst 38h			;a570
	rst 38h			;a571
	rst 38h			;a572
	rst 38h			;a573
	rst 38h			;a574
	rst 38h			;a575
	rst 38h			;a576
	rst 38h			;a577
	rst 38h			;a578
	rst 38h			;a579
	rst 38h			;a57a
	rst 38h			;a57b
	rst 38h			;a57c
	rst 38h			;a57d
	rst 38h			;a57e
	rst 38h			;a57f
	rst 38h			;a580
	rst 38h			;a581
	rst 38h			;a582
	rst 38h			;a583
	rst 38h			;a584
	rst 38h			;a585
	rst 38h			;a586
	rst 38h			;a587
	rst 38h			;a588
	rst 38h			;a589
	rst 38h			;a58a
	rst 38h			;a58b
	rst 38h			;a58c
	rst 38h			;a58d
	rst 38h			;a58e
	rst 38h			;a58f
	rst 38h			;a590
	rst 38h			;a591
	rst 38h			;a592
	rst 38h			;a593
	rst 38h			;a594
	rst 38h			;a595
	rst 38h			;a596
	rst 38h			;a597
	rst 38h			;a598
	rst 38h			;a599
	rst 38h			;a59a
	rst 38h			;a59b
	rst 38h			;a59c
	rst 38h			;a59d
	rst 38h			;a59e
	rst 38h			;a59f
	rst 38h			;a5a0
	rst 38h			;a5a1
	rst 38h			;a5a2
	rst 38h			;a5a3
	rst 38h			;a5a4
	rst 38h			;a5a5
	rst 38h			;a5a6
	rst 38h			;a5a7
	rst 38h			;a5a8
	rst 38h			;a5a9
	rst 38h			;a5aa
	rst 38h			;a5ab
	rst 38h			;a5ac
	rst 38h			;a5ad
	rst 38h			;a5ae
	rst 38h			;a5af
	rst 38h			;a5b0
	rst 38h			;a5b1
	rst 38h			;a5b2
	rst 38h			;a5b3
	rst 38h			;a5b4
	rst 38h			;a5b5
	rst 38h			;a5b6
	rst 38h			;a5b7
	rst 38h			;a5b8
	rst 38h			;a5b9
	rst 38h			;a5ba
	rst 38h			;a5bb
	rst 38h			;a5bc
	rst 38h			;a5bd
	rst 38h			;a5be
	rst 38h			;a5bf
	rst 38h			;a5c0
	rst 38h			;a5c1
	rst 38h			;a5c2
	rst 38h			;a5c3
	rst 38h			;a5c4
	rst 38h			;a5c5
	rst 38h			;a5c6
	rst 38h			;a5c7
	rst 38h			;a5c8
	rst 38h			;a5c9
	rst 38h			;a5ca
	rst 38h			;a5cb
	rst 38h			;a5cc
	rst 38h			;a5cd
	rst 38h			;a5ce
	rst 38h			;a5cf
	rst 38h			;a5d0
	rst 38h			;a5d1
	rst 38h			;a5d2
	rst 38h			;a5d3
	rst 38h			;a5d4
	rst 38h			;a5d5
	rst 38h			;a5d6
	rst 38h			;a5d7
	rst 38h			;a5d8
	rst 38h			;a5d9
	rst 38h			;a5da
	rst 38h			;a5db
	rst 38h			;a5dc
	rst 38h			;a5dd
	rst 38h			;a5de
	rst 38h			;a5df
	rst 38h			;a5e0
	rst 38h			;a5e1
	rst 38h			;a5e2
	rst 38h			;a5e3
	rst 38h			;a5e4
	rst 38h			;a5e5
	rst 38h			;a5e6
	rst 38h			;a5e7
	rst 38h			;a5e8
	rst 38h			;a5e9
	rst 38h			;a5ea
	rst 38h			;a5eb
	rst 38h			;a5ec
	rst 38h			;a5ed
	rst 38h			;a5ee
	rst 38h			;a5ef
	rst 38h			;a5f0
	rst 38h			;a5f1
	rst 38h			;a5f2
	rst 38h			;a5f3
	rst 38h			;a5f4
	rst 38h			;a5f5
	rst 38h			;a5f6
	rst 38h			;a5f7
	rst 38h			;a5f8
	rst 38h			;a5f9
	rst 38h			;a5fa
	rst 38h			;a5fb
	rst 38h			;a5fc
	rst 38h			;a5fd
	rst 38h			;a5fe
	rst 38h			;a5ff
	call 0474bh		;a600
	ld a,000h		;a603
	ld h,000h		;a605
	ld l,h			;a607
	ld b,h			;a608
	ld c,080h		;a609
	ld d,002h		;a60b
	call 047fch		;a60d
	call 047d2h		;a610
	ld ix,0b40ah		;a613
	call sub_ae15h		;a617
	call 04b95h		;a61a
	ld a,015h		;a61d
	ld hl,05a02h		;a61f
	ld de,lb9a3h		;a622
	call sub_a68fh		;a625
	jr la67fh		;a628
	ld ix,lb37eh		;a62a
	call sub_ae15h		;a62e
	call 04b95h		;a631
	ld a,015h		;a634
	ld hl,05000h		;a636
	ld de,lba7bh		;a639
	call sub_a68fh		;a63c
	call la67fh		;a63f
	call 047d2h		;a642
	call sub_bdc8h		;a645
	ld bc,00017h		;a648
	call 00047h		;a64b
	jp 0473eh		;a64e
	ld ix,lb260h		;a651
	call sub_ae15h		;a655
	jp 04b95h		;a658
	ld a,00ah		;a65b
	ld hl,05500h		;a65d
	ld de,lb520h		;a660
	call sub_a68fh		;a663
	call 047d2h		;a666
	call la67fh		;a669
	call sub_bdc3h		;a66c
	call 047d2h		;a66f
	call 0473eh		;a672
	xor a			;a675
	ld h,a			;a676
	ld l,a			;a677
	ld b,a			;a678
	ld c,a			;a679
	ld d,001h		;a67a
	jp 047fch		;a67c
la67fh:
	call 04b95h		;a67f
	call 047d2h		;a682
	xor a			;a685
	ld h,a			;a686
	ld l,a			;a687
	ld b,a			;a688
	ld c,0c0h		;a689
	ld d,a			;a68b
	jp 047fch		;a68c
sub_a68fh:
	push de			;a68f
	push af			;a690
	push hl			;a691
	call sub_a6aeh		;a692
	pop hl			;a695
	pop af			;a696
	call sub_aea6h		;a697
	pop hl			;a69a
	call sub_a713h		;a69b
	ret			;a69e
	call 04a7ah		;a69f
	call 04a58h		;a6a2
	call sub_a749h		;a6a5
	push af			;a6a8
	call 04b95h		;a6a9
	pop af			;a6ac
	ret			;a6ad
sub_a6aeh:
	call 047d2h		;a6ae
	ld hl,la6bdh		;a6b1
	ld b,008h		;a6b4
	call 04a1fh		;a6b6
	call 04760h		;a6b9
	ret			;a6bc
la6bdh:
	nop			;a6bd
	ld b,001h		;a6be
	ld (01f02h),hl		;a6c0
	dec b			;a6c3
	rst 28h			;a6c4
	ld b,01fh		;a6c5
	ex af,af'		;a6c7
	ld a,(bc)		;a6c8
	add hl,bc		;a6c9
	nop			;a6ca
	dec bc			;a6cb
	ld bc,08016h		;a6cc
	ld a,(bc)		;a6cf
	adc a,b			;a6d0
	nop			;a6d1
	sub a			;a6d2
	nop			;a6d3
	sub d			;a6d4
	jr nz,$-124		;a6d5
	ld a,(0c908h)		;a6d7
	ld c,a			;a6da
	bit 0,c			;a6db
	ld a,0ffh		;a6dd
	jr nz,la706h		;a6df
	bit 1,c			;a6e1
	ld a,001h		;a6e3
	jr nz,la706h		;a6e5
	ld a,(0c907h)		;a6e7
	ld c,a			;a6ea
	bit 2,c			;a6eb
	ld a,020h		;a6ed
	jr nz,la6f6h		;a6ef
	bit 3,c			;a6f1
	ld a,0e0h		;a6f3
	ret z			;a6f5
la6f6h:
	ld hl,0e008h		;a6f6
	add a,(hl)		;a6f9
	ld (hl),a		;a6fa
	and 060h		;a6fb
	or 01fh			;a6fd
	ld b,a			;a6ff
	ld c,002h		;a700
	call 00047h		;a702
	ret			;a705
la706h:
	ld hl,0e009h		;a706
	add a,(hl)		;a709
	ld (hl),a		;a70a
	ld b,a			;a70b
	ld c,017h		;a70c
	call 00047h		;a70e
	ei			;a711
	ret			;a712
sub_a713h:
	push hl			;a713
	ld hl,0e000h		;a714
	ld bc,006ffh		;a717
	call 04648h		;a71a
	ld ix,0e100h		;a71d
	pop hl			;a721
	ld (ix+002h),l		;a722
	ld (ix+003h),h		;a725
	ld (ix+00eh),00ah	;a728
	ld (ix+00fh),028h	;a72c
	ld (ix+012h),014h	;a730
	ld (ix+013h),00ch	;a734
	ld (ix+014h),006h	;a738
	ld (ix+015h),006h	;a73c
	set 0,(ix+00dh)		;a740
	set 5,(ix+00dh)		;a744
	ret			;a748
sub_a749h:
	call sub_a754h		;a749
	call sub_a767h		;a74c
	ld a,(0e0ffh)		;a74f
	or a			;a752
	ret			;a753
sub_a754h:
	ld ix,0e100h		;a754
	ld b,030h		;a758
la75ah:
	push bc			;a75a
	call sub_a78eh		;a75b
	ld bc,00020h		;a75e
	add ix,bc		;a761
	pop bc			;a763
	djnz la75ah		;a764
	ret			;a766
sub_a767h:
	ld b,010h		;a767
la769h:
	push bc			;a769
	call sub_a771h		;a76a
	pop bc			;a76d
	djnz la769h		;a76e
	ret			;a770
sub_a771h:
	ld c,b			;a771
	dec c			;a772
	ld ix,0e100h		;a773
	ld b,030h		;a777
la779h:
	push bc			;a779
	ld a,(ix+00ch)		;a77a
	cp c			;a77d
	push ix			;a77e
	call z,sub_abb8h	;a780
	pop ix			;a783
	ld bc,00020h		;a785
	add ix,bc		;a788
	pop bc			;a78a
	djnz la779h		;a78b
	ret			;a78d
sub_a78eh:
	call sub_a818h		;a78e
	call sub_a795h		;a791
	ret			;a794
sub_a795h:
	ld h,(ix+005h)		;a795
	ld l,(ix+004h)		;a798
	ld d,(ix+009h)		;a79b
	ld e,(ix+008h)		;a79e
	add hl,de		;a7a1
	ld (ix+005h),h		;a7a2
	ld (ix+004h),l		;a7a5
	ld a,(ix+00dh)		;a7a8
	and 00ah		;a7ab
	jr z,la7d6h		;a7ad
	bit 6,(ix+005h)		;a7af
	jr z,la7c9h		;a7b3
	ld h,(ix+005h)		;a7b5
	ld l,(ix+004h)		;a7b8
	ld d,(ix+016h)		;a7bb
	ld e,000h		;a7be
	add hl,de		;a7c0
	ld (ix+005h),h		;a7c1
	ld (ix+004h),l		;a7c4
	jr la7d6h		;a7c7
la7c9h:
	ld a,(ix+005h)		;a7c9
	sub (ix+016h)		;a7cc
	jr c,la7d6h		;a7cf
	ld (ix+005h),a		;a7d1
	jr la7c9h		;a7d4
la7d6h:
	ld h,(ix+007h)		;a7d6
	ld l,(ix+006h)		;a7d9
	ld d,(ix+00bh)		;a7dc
	ld e,(ix+00ah)		;a7df
	add hl,de		;a7e2
	ld (ix+007h),h		;a7e3
	ld (ix+006h),l		;a7e6
	ld a,(ix+00dh)		;a7e9
	and 012h		;a7ec
	jr z,la817h		;a7ee
	bit 6,(ix+007h)		;a7f0
	jr z,la80ah		;a7f4
	ld h,(ix+007h)		;a7f6
	ld l,(ix+006h)		;a7f9
	ld d,(ix+017h)		;a7fc
	ld e,000h		;a7ff
	add hl,de		;a801
	ld (ix+007h),h		;a802
	ld (ix+006h),l		;a805
	jr la817h		;a808
la80ah:
	ld a,(ix+007h)		;a80a
	sub (ix+017h)		;a80d
	jr c,la817h		;a810
	ld (ix+007h),a		;a812
	jr la80ah		;a815
la817h:
	ret			;a817
sub_a818h:
	ld a,(ix+001h)		;a818
	or a			;a81b
	jr z,la823h		;a81c
	dec a			;a81e
	ld (ix+001h),a		;a81f
	ret nz			;a822
la823h:
	ld l,(ix+002h)		;a823
	ld h,(ix+003h)		;a826
	ld a,h			;a829
	or l			;a82a
	ret z			;a82b
	ld a,(hl)		;a82c
	cp 011h			;a82d
	jp nc,04ae0h		;a82f
	call 0461ah		;a832
	ld l,d			;a835
	xor b			;a836
	jp nc,025a8h		;a837
	xor c			;a83a
	ld c,d			;a83b
	xor c			;a83c
	ld l,d			;a83d
	xor c			;a83e
	sub e			;a83f
	xor c			;a840
	cp e			;a841
	xor c			;a842
	rst 28h			;a843
	xor c			;a844
	ld c,0aah		;a845
	inc sp			;a847
	xor d			;a848
	ld e,e			;a849
	xor d			;a84a
	ld a,l			;a84b
	xor d			;a84c
	xor (hl)		;a84d
	xor d			;a84e
	push de			;a84f
	xor d			;a850
	di			;a851
	xor d			;a852
	add hl,de		;a853
	xor e			;a854
	dec sp			;a855
	xor e			;a856
sub_a857h:
	ld l,(ix+002h)		;a857
	ld h,(ix+003h)		;a85a
	ret			;a85d
sub_a85eh:
	ld (ix+002h),l		;a85e
	ld (ix+003h),h		;a861
	ret			;a864
	pop hl			;a865
	call sub_a877h		;a866
	jp (hl)			;a869
	call sub_a857h		;a86a
	inc hl			;a86d
	call sub_a877h		;a86e
	call sub_a85eh		;a871
	jp la823h		;a874
sub_a877h:
	ld a,(hl)		;a877
	inc hl			;a878
	ld c,(hl)		;a879
	inc hl			;a87a
	ld b,(hl)		;a87b
	inc hl			;a87c
	ld d,(hl)		;a87d
	inc hl			;a87e
	ld e,(hl)		;a87f
	inc hl			;a880
	ex af,af'		;a881
	ld a,(hl)		;a882
	inc hl			;a883
	push hl			;a884
	push ix			;a885
	call sub_a88eh		;a887
	pop ix			;a88a
	pop hl			;a88c
	ret			;a88d
sub_a88eh:
	ld l,a			;a88e
	ex af,af'		;a88f
	push hl			;a890
	push de			;a891
	push bc			;a892
	push ix			;a893
	call sub_ab61h		;a895
	jp c,04699h		;a898
	pop iy			;a89b
	pop bc			;a89d
	pop de			;a89e
	pop hl			;a89f
	ld (ix+002h),c		;a8a0
	ld (ix+003h),b		;a8a3
	ld (ix+00ch),l		;a8a6
	ld a,e			;a8a9
	push de			;a8aa
	call sub_aba6h		;a8ab
	ld d,(iy+007h)		;a8ae
	ld e,(iy+006h)		;a8b1
	add hl,de		;a8b4
	ld (ix+007h),h		;a8b5
	ld (ix+006h),l		;a8b8
sub_a8bbh:
	pop af			;a8bb
	call sub_aba6h		;a8bc
	ld d,(iy+005h)		;a8bf
	ld e,(iy+004h)		;a8c2
	add hl,de		;a8c5
	ld (ix+005h),h		;a8c6
	ld (ix+004h),l		;a8c9
	ret			;a8cc
	pop hl			;a8cd
	call sub_a8ddh		;a8ce
	jp (hl)			;a8d1
	call sub_a857h		;a8d2
	inc hl			;a8d5
	call sub_a8ddh		;a8d6
	call sub_a85eh		;a8d9
	ret			;a8dc
sub_a8ddh:
	ld c,(hl)		;a8dd
	inc hl			;a8de
	ld b,(hl)		;a8df
	inc hl			;a8e0
	ld d,(hl)		;a8e1
	inc hl			;a8e2
	ld e,(hl)		;a8e3
	inc hl			;a8e4
	push hl			;a8e5
	push ix			;a8e6
	call sub_a8efh		;a8e8
	pop ix			;a8eb
	pop hl			;a8ed
	ret			;a8ee
sub_a8efh:
	ld h,b			;a8ef
	ld l,c			;a8f0
	push de			;a8f1
	call sub_a917h		;a8f2
	ex de,hl		;a8f5
	pop de			;a8f6
	ld (ix+00eh),h		;a8f7
	ld a,b			;a8fa
	sub h			;a8fb
	inc a			;a8fc
	ld (ix+012h),a		;a8fd
	ld a,c			;a900
	sub l			;a901
	inc a			;a902
	ld (ix+013h),a		;a903
	ld a,l			;a906
	add a,040h		;a907
	ld (ix+00fh),a		;a909
	ld (ix+010h),d		;a90c
	ld (ix+011h),e		;a90f
	set 0,(ix+00dh)		;a912
	ret			;a916
sub_a917h:
	ld d,(hl)		;a917
	inc hl			;a918
	ld e,(hl)		;a919
	inc hl			;a91a
	ld b,(hl)		;a91b
	inc hl			;a91c
	ld c,(hl)		;a91d
	inc hl			;a91e
	ret			;a91f
	pop hl			;a920
	call sub_a932h		;a921
	jp (hl)			;a924
	call sub_a857h		;a925
	inc hl			;a928
	call sub_a932h		;a929
	call sub_a85eh		;a92c
	jp la823h		;a92f
sub_a932h:
	ld a,(hl)		;a932
	inc hl			;a933
	push hl			;a934
	push ix			;a935
	call sub_a93eh		;a937
	pop ix			;a93a
	pop hl			;a93c
	ret			;a93d
sub_a93eh:
	or (ix+00dh)		;a93e
	ld (ix+00dh),a		;a941
	ret			;a944
	pop hl			;a945
	call sub_a955h		;a946
	jp (hl)			;a949
	call sub_a857h		;a94a
	inc hl			;a94d
	call sub_a955h		;a94e
	call sub_a85eh		;a951
	ret			;a954
sub_a955h:
	ld a,(hl)		;a955
	inc hl			;a956
	push hl			;a957
	push ix			;a958
	call sub_a961h		;a95a
	pop ix			;a95d
	pop hl			;a95f
	ret			;a960
sub_a961h:
	ld (ix+001h),a		;a961
	ret			;a964
	pop hl			;a965
	call sub_a976h		;a966
	jp (hl)			;a969
	call sub_a857h		;a96a
	inc hl			;a96d
	call sub_a976h		;a96e
	ret c			;a971
	call sub_a85eh		;a972
	ret			;a975
sub_a976h:
	ld a,(hl)		;a976
	inc hl			;a977
	push hl			;a978
	push ix			;a979
	call sub_a982h		;a97b
	pop ix			;a97e
	pop hl			;a980
	ret			;a981
sub_a982h:
	ld hl,0e0f0h		;a982
	ld e,a			;a985
	ld d,000h		;a986
	add hl,de		;a988
	ld a,(hl)		;a989
	or a			;a98a
	ret nz			;a98b
	scf			;a98c
	ret			;a98d
	pop hl			;a98e
	call sub_a9a0h		;a98f
	jp (hl)			;a992
	call sub_a857h		;a993
	inc hl			;a996
	call sub_a9a0h		;a997
	call sub_a85eh		;a99a
	jp la823h		;a99d
sub_a9a0h:
	ld a,(hl)		;a9a0
	inc hl			;a9a1
	push hl			;a9a2
	push ix			;a9a3
	call sub_a9ach		;a9a5
	pop ix			;a9a8
	pop hl			;a9aa
	ret			;a9ab
sub_a9ach:
	ld hl,0e0f0h		;a9ac
	ld e,a			;a9af
	ld d,000h		;a9b0
	add hl,de		;a9b2
	ld (hl),001h		;a9b3
	ret			;a9b5
	pop hl			;a9b6
	call sub_a9c8h		;a9b7
	jp (hl)			;a9ba
	call sub_a857h		;a9bb
	inc hl			;a9be
	call sub_a9c8h		;a9bf
	call sub_a85eh		;a9c2
	jp la823h		;a9c5
sub_a9c8h:
	push hl			;a9c8
	push ix			;a9c9
	call sub_a9d2h		;a9cb
	pop ix			;a9ce
	pop hl			;a9d0
	ret			;a9d1
sub_a9d2h:
	xor a			;a9d2
	ld hl,02820h		;a9d3
	ld bc,0d090h		;a9d6
	ld d,a			;a9d9
	call 047fch		;a9da
	call sub_ab9dh		;a9dd
	ld hl,0e0f0h		;a9e0
	ld bc,0000fh		;a9e3
	call 04648h		;a9e6
	ret			;a9e9
	pop hl			;a9ea
	call sub_a9fdh		;a9eb
	jp (hl)			;a9ee
	call sub_a857h		;a9ef
	inc hl			;a9f2
	call sub_a9fdh		;a9f3
	ret c			;a9f6
	call sub_a85eh		;a9f7
	jp la823h		;a9fa
sub_a9fdh:
	push hl			;a9fd
	push ix			;a9fe
	call sub_aa07h		;aa00
	pop ix			;aa03
	pop hl			;aa05
	ret			;aa06
sub_aa07h:
	scf			;aa07
	ret			;aa08
	pop hl			;aa09
	call sub_aa1bh		;aa0a
	jp (hl)			;aa0d
	call sub_a857h		;aa0e
	inc hl			;aa11
	call sub_aa1bh		;aa12
	call sub_a85eh		;aa15
	jp la823h		;aa18
sub_aa1bh:
	ld e,(hl)		;aa1b
	inc hl			;aa1c
	ld d,(hl)		;aa1d
	inc hl			;aa1e
	push hl			;aa1f
	push ix			;aa20
	call sub_aa29h		;aa22
	pop ix			;aa25
	pop hl			;aa27
	ret			;aa28
sub_aa29h:
	ex de,hl		;aa29
	call 04c94h		;aa2a
	ret			;aa2d
	pop hl			;aa2e
	call sub_aa40h		;aa2f
	jp (hl)			;aa32
	call sub_a857h		;aa33
	inc hl			;aa36
	call sub_aa40h		;aa37
	call sub_a85eh		;aa3a
	jp la823h		;aa3d
sub_aa40h:
	ld e,(hl)		;aa40
	inc hl			;aa41
	ld d,(hl)		;aa42
	inc hl			;aa43
	push hl			;aa44
	push ix			;aa45
	call sub_aa4eh		;aa47
	pop ix			;aa4a
	pop hl			;aa4c
	ret			;aa4d
sub_aa4eh:
	ex de,hl		;aa4e
	call 04ce0h		;aa4f
	call 04cf5h		;aa52
	ret			;aa55
	pop hl			;aa56
	call sub_aa68h		;aa57
	jp (hl)			;aa5a
	call sub_a857h		;aa5b
	inc hl			;aa5e
	call sub_aa68h		;aa5f
	call sub_a85eh		;aa62
	jp la823h		;aa65
sub_aa68h:
	ld e,(hl)		;aa68
	inc hl			;aa69
	ld d,(hl)		;aa6a
	inc hl			;aa6b
	push hl			;aa6c
	push ix			;aa6d
	call sub_aa76h		;aa6f
	pop ix			;aa72
	pop hl			;aa74
	ret			;aa75
sub_aa76h:
	ex de,hl		;aa76
	jp (hl)			;aa77
	pop hl			;aa78
	call sub_aa88h		;aa79
	jp (hl)			;aa7c
	call sub_a857h		;aa7d
	inc hl			;aa80
	call sub_aa88h		;aa81
	call sub_a85eh		;aa84
	ret			;aa87
sub_aa88h:
	ld d,(hl)		;aa88
	inc hl			;aa89
	ld e,(hl)		;aa8a
	inc hl			;aa8b
	push hl			;aa8c
	push ix			;aa8d
	call sub_aa96h		;aa8f
	pop ix			;aa92
	pop hl			;aa94
	ret			;aa95
sub_aa96h:
	ld a,d			;aa96
	rlca			;aa97
	sbc a,a			;aa98
	ld (ix+008h),d		;aa99
	ld (ix+009h),a		;aa9c
	ld a,e			;aa9f
	rlca			;aaa0
	sbc a,a			;aaa1
	ld (ix+00ah),e		;aaa2
	ld (ix+00bh),a		;aaa5
	ret			;aaa8
	pop hl			;aaa9
	call sub_aabbh		;aaaa
	jp (hl)			;aaad
	call sub_a857h		;aaae
	inc hl			;aab1
	call sub_aabbh		;aab2
	call sub_a85eh		;aab5
	jp la823h		;aab8
sub_aabbh:
	ld d,(hl)		;aabb
	inc hl			;aabc
	ld e,(hl)		;aabd
	inc hl			;aabe
	push hl			;aabf
	push ix			;aac0
	call sub_aac9h		;aac2
	pop ix			;aac5
	pop hl			;aac7
	ret			;aac8
sub_aac9h:
	ld (ix+014h),d		;aac9
	ld (ix+015h),e		;aacc
	ret			;aacf
	pop hl			;aad0
	call sub_aae2h		;aad1
	jp (hl)			;aad4
	call sub_a857h		;aad5
	inc hl			;aad8
	call sub_aae2h		;aad9
	call sub_a85eh		;aadc
	jp la823h		;aadf
sub_aae2h:
	ld e,(hl)		;aae2
	inc hl			;aae3
	ld d,(hl)		;aae4
	inc hl			;aae5
	ex de,hl		;aae6
	ld (ix+002h),l		;aae7
	ld (ix+003h),h		;aaea
	ret			;aaed
	pop hl			;aaee
	call sub_aaffh		;aaef
	jp (hl)			;aaf2
	call sub_a857h		;aaf3
	inc hl			;aaf6
	call sub_aaffh		;aaf7
	ret c			;aafa
	call sub_a85eh		;aafb
	ret			;aafe
sub_aaffh:
	push hl			;aaff
	push ix			;ab00
	call sub_ab09h		;ab02
	pop ix			;ab05
	pop hl			;ab07
	ret			;ab08
sub_ab09h:
	push ix			;ab09
	pop hl			;ab0b
	ld bc,0001fh		;ab0c
	call 04648h		;ab0f
	scf			;ab12
	ret			;ab13
	pop hl			;ab14
	call sub_ab26h		;ab15
	jp (hl)			;ab18
	call sub_a857h		;ab19
	inc hl			;ab1c
	call sub_ab26h		;ab1d
	call sub_a85eh		;ab20
	jp la823h		;ab23
sub_ab26h:
	ld a,(hl)		;ab26
	inc hl			;ab27
	push hl			;ab28
	push ix			;ab29
	call sub_ab32h		;ab2b
	pop ix			;ab2e
	pop hl			;ab30
	ret			;ab31
sub_ab32h:
	call 04af5h		;ab32
	ret			;ab35
	pop hl			;ab36
	call sub_ab48h		;ab37
	jp (hl)			;ab3a
	call sub_a857h		;ab3b
	inc hl			;ab3e
	call sub_ab48h		;ab3f
	call sub_a85eh		;ab42
	jp la823h		;ab45
sub_ab48h:
	ld e,(hl)		;ab48
	inc hl			;ab49
	ld d,(hl)		;ab4a
	inc hl			;ab4b
	push hl			;ab4c
	push ix			;ab4d
	call sub_ab56h		;ab4f
	pop ix			;ab52
	pop hl			;ab54
	ret			;ab55
sub_ab56h:
	ld a,e			;ab56
	and 0f0h		;ab57
	rrca			;ab59
	rrca			;ab5a
	rrca			;ab5b
	rrca			;ab5c
	call 04776h		;ab5d
	ret			;ab60
sub_ab61h:
	call sub_ab83h		;ab61
	ret c			;ab64
	push hl			;ab65
	pop ix			;ab66
	ld bc,0001fh		;ab68
	call 04648h		;ab6b
	ld (ix+000h),001h	;ab6e
	ld (ix+015h),028h	;ab72
	ld (ix+014h),00ah	;ab76
	ld (ix+016h),014h	;ab7a
	ld (ix+017h),00ch	;ab7e
	ret			;ab82
sub_ab83h:
	cp 030h			;ab83
	ccf			;ab85
	ret c			;ab86
	ld l,a			;ab87
	ld h,000h		;ab88
	ld de,0e100h		;ab8a
	add hl,hl		;ab8d
	add hl,hl		;ab8e
	add hl,hl		;ab8f
	add hl,hl		;ab90
	add hl,hl		;ab91
	add hl,de		;ab92
	ret			;ab93
	ld hl,0e100h		;ab94
	ld bc,005ffh		;ab97
	jp 04648h		;ab9a
sub_ab9dh:
	ld hl,0e120h		;ab9d
	ld bc,005dfh		;aba0
	jp 04648h		;aba3
sub_aba6h:
	ld l,a			;aba6
	rlca			;aba7
	sbc a,a			;aba8
	ld h,a			;aba9
	add hl,hl		;abaa
	add hl,hl		;abab
	add hl,hl		;abac
	add hl,hl		;abad
	add hl,hl		;abae
	ret			;abaf
sub_abb0h:
	xor a			;abb0
	add hl,hl		;abb1
	adc a,a			;abb2
	add hl,hl		;abb3
	adc a,a			;abb4
	add hl,hl		;abb5
	adc a,a			;abb6
	ret			;abb7
sub_abb8h:
	bit 0,(ix+00dh)		;abb8
	ret z			;abbc
	ld a,(ix+012h)		;abbd
	and (ix+013h)		;abc0
	inc a			;abc3
	ret z			;abc4
	ld a,(ix+00dh)		;abc5
	bit 1,(ix+00dh)		;abc8
	jp nz,lacadh		;abcc
	bit 3,(ix+00dh)		;abcf
	jp nz,lac6eh		;abd3
	bit 4,(ix+00dh)		;abd6
	jp nz,lac2fh		;abda
sub_abddh:
	ld a,(ix+005h)		;abdd
	add a,(ix+014h)		;abe0
	ld d,a			;abe3
	ld e,(ix+004h)		;abe4
	ld a,(ix+010h)		;abe7
	call sub_aba6h		;abea
	add hl,de		;abed
	call sub_abb0h		;abee
	push hl			;abf1
	ld a,(ix+007h)		;abf2
	add a,(ix+015h)		;abf5
	ld d,a			;abf8
	ld e,(ix+006h)		;abf9
	ld a,(ix+011h)		;abfc
	call sub_aba6h		;abff
	add hl,de		;ac02
	call sub_abb0h		;ac03
	pop de			;ac06
	ld e,h			;ac07
	push de			;ac08
	push af			;ac09
	ld h,(ix+00eh)		;ac0a
	ld l,(ix+00fh)		;ac0d
	pop af			;ac10
	pop de			;ac11
	ld b,(ix+012h)		;ac12
	ld c,(ix+013h)		;ac15
	bit 5,(ix+00dh)		;ac18
	jr z,lac23h		;ac1c
	set 6,a			;ac1e
	jp lad86h		;ac20
lac23h:
	bit 2,(ix+00dh)		;ac23
	jp nz,lad86h		;ac27
	set 7,a			;ac2a
	jp lad86h		;ac2c
lac2fh:
	push ix			;ac2f
	pop iy			;ac31
	call sub_ad76h		;ac33
	ld a,(iy+017h)		;ac36
	sub (iy+007h)		;ac39
	inc a			;ac3c
	inc a			;ac3d
	ld (ix+013h),a		;ac3e
	call sub_abddh		;ac41
	call sub_ad76h		;ac44
	ld a,(iy+007h)		;ac47
	inc a			;ac4a
	ld (ix+013h),a		;ac4b
	ld a,(iy+00fh)		;ac4e
	add a,(iy+013h)		;ac51
	sub (iy+007h)		;ac54
	dec a			;ac57
	ld (ix+00fh),a		;ac58
	ld l,(iy+006h)		;ac5b
	ld h,0ffh		;ac5e
	ld (ix+007h),h		;ac60
	ld (ix+006h),l		;ac63
	call sub_abddh		;ac66
	push iy			;ac69
	pop ix			;ac6b
	ret			;ac6d
lac6eh:
	push ix			;ac6e
	pop iy			;ac70
	call sub_ad76h		;ac72
	ld a,(iy+016h)		;ac75
	sub (iy+005h)		;ac78
	inc a			;ac7b
	inc a			;ac7c
	ld (ix+012h),a		;ac7d
	call sub_abddh		;ac80
	call sub_ad76h		;ac83
	ld a,(iy+005h)		;ac86
	inc a			;ac89
	ld (ix+012h),a		;ac8a
	ld a,(iy+00eh)		;ac8d
	add a,(iy+012h)		;ac90
	sub (iy+005h)		;ac93
	dec a			;ac96
	ld (ix+00eh),a		;ac97
	ld l,(iy+004h)		;ac9a
	ld h,0ffh		;ac9d
	ld (ix+005h),h		;ac9f
	ld (ix+004h),l		;aca2
	call sub_abddh		;aca5
	push iy			;aca8
	pop ix			;acaa
	ret			;acac
lacadh:
	push ix			;acad
	pop iy			;acaf
	call sub_ad76h		;acb1
	ld a,(iy+016h)		;acb4
	sub (iy+005h)		;acb7
	inc a			;acba
	inc a			;acbb
	ld (ix+012h),a		;acbc
	ld a,(iy+017h)		;acbf
	sub (iy+007h)		;acc2
	inc a			;acc5
	inc a			;acc6
	ld (ix+013h),a		;acc7
	call sub_abddh		;acca
	call sub_ad76h		;accd
	ld a,(iy+016h)		;acd0
	sub (iy+005h)		;acd3
	inc a			;acd6
	inc a			;acd7
	ld (ix+012h),a		;acd8
	ld a,(iy+007h)		;acdb
	inc a			;acde
	ld (ix+013h),a		;acdf
	ld a,(iy+00fh)		;ace2
	add a,(iy+013h)		;ace5
	sub (iy+007h)		;ace8
	dec a			;aceb
	ld (ix+00fh),a		;acec
	ld l,(iy+006h)		;acef
	ld h,0ffh		;acf2
	ld (ix+007h),h		;acf4
	ld (ix+006h),l		;acf7
	call sub_abddh		;acfa
	call sub_ad76h		;acfd
	ld a,(iy+005h)		;ad00
	inc a			;ad03
	ld (ix+012h),a		;ad04
	ld a,(iy+00eh)		;ad07
	add a,(iy+012h)		;ad0a
	sub (iy+005h)		;ad0d
	dec a			;ad10
	ld (ix+00eh),a		;ad11
	ld l,(iy+004h)		;ad14
	ld h,0ffh		;ad17
	ld (ix+005h),h		;ad19
	ld (ix+004h),l		;ad1c
	ld a,(iy+017h)		;ad1f
	sub (iy+007h)		;ad22
	inc a			;ad25
	inc a			;ad26
	ld (ix+013h),a		;ad27
	call sub_abddh		;ad2a
	call sub_ad76h		;ad2d
	ld a,(iy+005h)		;ad30
	inc a			;ad33
	ld (ix+012h),a		;ad34
	ld a,(iy+00eh)		;ad37
	add a,(iy+012h)		;ad3a
	sub (iy+005h)		;ad3d
	dec a			;ad40
	ld (ix+00eh),a		;ad41
	ld l,(iy+004h)		;ad44
	ld h,0ffh		;ad47
	ld (ix+005h),h		;ad49
	ld (ix+004h),l		;ad4c
	ld a,(iy+007h)		;ad4f
	inc a			;ad52
	ld (ix+013h),a		;ad53
	ld a,(iy+00fh)		;ad56
	add a,(iy+013h)		;ad59
	sub (iy+007h)		;ad5c
	dec a			;ad5f
	ld (ix+00fh),a		;ad60
	ld l,(iy+006h)		;ad63
	ld h,0ffh		;ad66
	ld (ix+007h),h		;ad68
	ld (ix+006h),l		;ad6b
	call sub_abddh		;ad6e
	push iy			;ad71
	pop ix			;ad73
	ret			;ad75
sub_ad76h:
	push iy			;ad76
	pop hl			;ad78
	ld ix,0e0c0h		;ad79
	ld de,0e0c0h		;ad7d
	ld bc,00020h		;ad80
	ldir			;ad83
	ret			;ad85
lad86h:
	push de			;ad86
	push af			;ad87
	ld a,b			;ad88
	add a,a			;ad89
	add a,a			;ad8a
	add a,a			;ad8b
	ld b,a			;ad8c
	ld a,c			;ad8d
	add a,a			;ad8e
	add a,a			;ad8f
	add a,a			;ad90
	ld c,a			;ad91
	ld a,l			;ad92
	ld d,a			;ad93
	add a,a			;ad94
	add a,a			;ad95
	add a,a			;ad96
	ld l,a			;ad97
	ld a,d			;ad98
	and 060h		;ad99
	add a,a			;ad9b
	push af			;ad9c
	ld a,h			;ad9d
	add a,a			;ad9e
	add a,a			;ad9f
	add a,a			;ada0
	ld h,a			;ada1
	pop af			;ada2
	pop de			;ada3
	bit 6,d			;ada4
	jr nz,ladbeh		;ada6
	rlc d			;ada8
	rlc d			;adaa
	rlc d			;adac
	rlc d			;adae
	or d			;adb0
	pop de			;adb1
	push ix			;adb2
	push iy			;adb4
	call 0487ch		;adb6
	pop iy			;adb9
	pop ix			;adbb
	ret			;adbd
ladbeh:
	or d			;adbe
	rlca			;adbf
	rlca			;adc0
	and 00fh		;adc1
	pop de			;adc3
	push ix			;adc4
	push iy			;adc6
	call 04838h		;adc8
	pop iy			;adcb
	pop ix			;adcd
	ret			;adcf
sub_add0h:
	ld a,(ix+003h)		;add0
	and 007h		;add3
	ld h,a			;add5
	ld a,(ix+004h)		;add6
	ld d,a			;add9
	and 01fh		;adda
	ld e,a			;addc
	xor d			;addd
	ld d,000h		;adde
	ld l,a			;ade0
	add hl,hl		;ade1
	add hl,hl		;ade2
	add hl,hl		;ade3
	add hl,de		;ade4
	add hl,hl		;ade5
	add hl,hl		;ade6
	ld de,06000h		;ade7
	add hl,de		;adea
	ex de,hl		;adeb
	ld h,(ix+002h)		;adec
	ld l,(ix+001h)		;adef
	ld a,(ix+000h)		;adf2
	and 01fh		;adf5
	call sub_ae07h		;adf7
	ld a,c			;adfa
	call 04c0eh		;adfb
	ld a,(ix+005h)		;adfe
	sub (ix+004h)		;ae01
	inc a			;ae04
	ld b,a			;ae05
	ret			;ae06
sub_ae07h:
	ld c,a			;ae07
	ld a,h			;ae08
	add a,020h		;ae09
	ld h,a			;ae0b
lae0ch:
	cp 080h			;ae0c
	ret c			;ae0e
	sub 020h		;ae0f
	ld h,a			;ae11
	inc c			;ae12
	jr lae0ch		;ae13
sub_ae15h:
	call 047d2h		;ae15
lae18h:
	ld a,(ix+000h)		;ae18
	or a			;ae1b
	ret z			;ae1c
	call sub_ae27h		;ae1d
	ld de,00006h		;ae20
	add ix,de		;ae23
	jr lae18h		;ae25
sub_ae27h:
	ld a,(ix+000h)		;ae27
	and 007h		;ae2a
	ret z			;ae2c
	dec a			;ae2d
	dec a			;ae2e
	jr z,lae4fh		;ae2f
	dec a			;ae31
	jp z,lae66h		;ae32
	jp p,lae7dh		;ae35
	ld b,001h		;ae38
	call sub_ae8ch		;ae3a
	ld de,00002h		;ae3d
	add ix,de		;ae40
	call sub_add0h		;ae42
	bit 7,(ix+000h)		;ae45
	jp nz,laf24h		;ae49
	jp laf0eh		;ae4c
lae4fh:
	ld b,002h		;ae4f
	call sub_ae8ch		;ae51
	ld de,00003h		;ae54
	add ix,de		;ae57
	call sub_add0h		;ae59
	bit 7,(ix+000h)		;ae5c
	jp nz,laf7dh		;ae60
	jp laf67h		;ae63
lae66h:
	ld b,004h		;ae66
	call sub_ae8ch		;ae68
	ld de,00005h		;ae6b
	add ix,de		;ae6e
	call sub_add0h		;ae70
	bit 7,(ix+000h)		;ae73
	jp nz,lafdeh		;ae77
	jp lafc8h		;ae7a
lae7dh:
	inc ix			;ae7d
	call sub_add0h		;ae7f
	bit 7,(ix+000h)		;ae82
	jp nz,lb058h		;ae86
	jp 0493dh		;ae89
sub_ae8ch:
	push ix			;ae8c
	pop hl			;ae8e
	inc hl			;ae8f
	ld de,0ca00h		;ae90
lae93h:
	ld a,(hl)		;ae93
	ld c,a			;ae94
	rrca			;ae95
	rrca			;ae96
	rrca			;ae97
	rrca			;ae98
	and 00fh		;ae99
	ld (de),a		;ae9b
	inc hl			;ae9c
	inc de			;ae9d
	ld a,c			;ae9e
	and 00fh		;ae9f
	ld (de),a		;aea1
	inc de			;aea2
	djnz lae93h		;aea3
	ret			;aea5
sub_aea6h:
	call 04c0eh		;aea6
	ld de,02000h		;aea9
	add hl,de		;aeac
	ld de,00040h		;aead
laeb0h:
	ld c,(hl)		;aeb0
	inc hl			;aeb1
	ld b,(hl)		;aeb2
	inc hl			;aeb3
	ld a,b			;aeb4
	and c			;aeb5
	inc a			;aeb6
	ret z			;aeb7
	inc a			;aeb8
	jr z,laec2h		;aeb9
	push hl			;aebb
	push de			;aebc
	call sub_aeceh		;aebd
	pop de			;aec0
	pop hl			;aec1
laec2h:
	ld a,d			;aec2
	inc a			;aec3
	ld d,a			;aec4
	cp 020h			;aec5
	jr nz,laeb0h		;aec7
	ld d,000h		;aec9
	inc e			;aecb
	jr laeb0h		;aecc
sub_aeceh:
	push de			;aece
	call sub_aed7h		;aecf
	pop de			;aed2
	call sub_aef0h		;aed3
	ret			;aed6
sub_aed7h:
	ld a,c			;aed7
	ld h,a			;aed8
	and 0e0h		;aed9
	rr b			;aedb
	rra			;aedd
	rr b			;aede
	rra			;aee0
	rr b			;aee1
	rra			;aee3
	rrca			;aee4
	rrca			;aee5
	and 03fh		;aee6
	add a,018h		;aee8
	ld l,a			;aeea
	ld a,h			;aeeb
	and 01fh		;aeec
	ld h,a			;aeee
	ret			;aeef
sub_aef0h:
	push hl			;aef0
	ld a,e			;aef1
	ld h,a			;aef2
	add a,a			;aef3
	add a,a			;aef4
	add a,a			;aef5
	ld e,a			;aef6
	ld a,h			;aef7
	and 060h		;aef8
	rlca			;aefa
	rlca			;aefb
	rlca			;aefc
	res 7,a			;aefd
	push af			;aeff
	ld a,d			;af00
	add a,a			;af01
	add a,a			;af02
	add a,a			;af03
	ld d,a			;af04
	pop af			;af05
	pop hl			;af06
	ld bc,00101h		;af07
	call lad86h		;af0a
	ret			;af0d
laf0eh:
	push bc			;af0e
	push de			;af0f
	exx			;af10
	ld hl,0cb00h		;af11
	exx			;af14
laf15h:
	push bc			;af15
	call sub_af3ah		;af16
	pop bc			;af19
	djnz laf15h		;af1a
	pop de			;af1c
	pop bc			;af1d
	ld hl,0cb00h		;af1e
	jp 0493dh		;af21
laf24h:
	push bc			;af24
	push de			;af25
	exx			;af26
	ld hl,0cb00h		;af27
	exx			;af2a
laf2bh:
	push bc			;af2b
	call sub_af3ah		;af2c
	pop bc			;af2f
	djnz laf2bh		;af30
	pop de			;af32
	pop bc			;af33
	ld hl,0cb00h		;af34
	jp lb058h		;af37
sub_af3ah:
	ld b,008h		;af3a
laf3ch:
	ld e,(hl)		;af3c
	inc hl			;af3d
	push bc			;af3e
	call sub_af46h		;af3f
	pop bc			;af42
	djnz laf3ch		;af43
	ret			;af45
sub_af46h:
	ld b,004h		;af46
laf48h:
	xor a			;af48
	rl e			;af49
	rla			;af4b
	exx			;af4c
	ld e,a			;af4d
	ld d,0cah		;af4e
	ld a,(de)		;af50
	add a,a			;af51
	add a,a			;af52
	add a,a			;af53
	add a,a			;af54
	ld c,a			;af55
	exx			;af56
	xor a			;af57
	rl e			;af58
	rla			;af5a
	exx			;af5b
	ld e,a			;af5c
	ld d,0cah		;af5d
	ld a,(de)		;af5f
	or c			;af60
	ld (hl),a		;af61
	inc hl			;af62
	exx			;af63
	djnz laf48h		;af64
	ret			;af66
laf67h:
	push bc			;af67
	push de			;af68
	exx			;af69
	ld hl,0cb00h		;af6a
	exx			;af6d
laf6eh:
	push bc			;af6e
	call sub_af93h		;af6f
	pop bc			;af72
	djnz laf6eh		;af73
	pop de			;af75
	pop bc			;af76
	ld hl,0cb00h		;af77
	jp 0493dh		;af7a
laf7dh:
	push bc			;af7d
	push de			;af7e
	exx			;af7f
	ld hl,0cb00h		;af80
	exx			;af83
laf84h:
	push bc			;af84
	call sub_af93h		;af85
	pop bc			;af88
	djnz laf84h		;af89
	pop de			;af8b
	pop bc			;af8c
	ld hl,0cb00h		;af8d
	jp lb058h		;af90
sub_af93h:
	ld b,008h		;af93
laf95h:
	push bc			;af95
	call sub_af9dh		;af96
	pop bc			;af99
	djnz laf95h		;af9a
	ret			;af9c
sub_af9dh:
	ld b,004h		;af9d
	ld e,(hl)		;af9f
	inc hl			;afa0
	ld d,(hl)		;afa1
	inc hl			;afa2
lafa3h:
	xor a			;afa3
	rl d			;afa4
	rla			;afa6
	rl e			;afa7
	rla			;afa9
	exx			;afaa
	ld e,a			;afab
	ld d,0cah		;afac
	ld a,(de)		;afae
	add a,a			;afaf
	add a,a			;afb0
	add a,a			;afb1
	add a,a			;afb2
	ld c,a			;afb3
	exx			;afb4
	xor a			;afb5
	rl d			;afb6
	rla			;afb8
	rl e			;afb9
	rla			;afbb
	exx			;afbc
	ld e,a			;afbd
	ld d,0cah		;afbe
	ld a,(de)		;afc0
	or c			;afc1
	ld (hl),a		;afc2
	inc hl			;afc3
	exx			;afc4
	djnz lafa3h		;afc5
	ret			;afc7
lafc8h:
	push bc			;afc8
	push de			;afc9
	exx			;afca
	ld hl,0cb00h		;afcb
	exx			;afce
lafcfh:
	push bc			;afcf
	call sub_aff4h		;afd0
	pop bc			;afd3
	djnz lafcfh		;afd4
	pop de			;afd6
	pop bc			;afd7
	ld hl,0cb00h		;afd8
	jp 0493dh		;afdb
lafdeh:
	push bc			;afde
	push de			;afdf
	exx			;afe0
	ld hl,0cb00h		;afe1
	exx			;afe4
lafe5h:
	push bc			;afe5
	call sub_aff4h		;afe6
	pop bc			;afe9
	djnz lafe5h		;afea
	pop de			;afec
	pop bc			;afed
	ld hl,0cb00h		;afee
	jp lb058h		;aff1
sub_aff4h:
	ld b,008h		;aff4
laff6h:
	push bc			;aff6
	call sub_affeh		;aff7
	pop bc			;affa
	djnz laff6h		;affb
	ret			;affd
sub_affeh:
	ld b,004h		;affe
	ld e,(hl)		;b000
	inc hl			;b001
	ld d,(hl)		;b002
	inc hl			;b003
	ld c,(hl)		;b004
	inc hl			;b005
lb006h:
	xor a			;b006
	rl c			;b007
	rla			;b009
	rl d			;b00a
	rla			;b00c
	rl e			;b00d
	rla			;b00f
	exx			;b010
	ld e,a			;b011
	ld d,0cah		;b012
	ld a,(de)		;b014
	add a,a			;b015
	add a,a			;b016
	add a,a			;b017
	add a,a			;b018
	ld c,a			;b019
	exx			;b01a
	xor a			;b01b
	rl c			;b01c
	rla			;b01e
	rl d			;b01f
	rla			;b021
	rl e			;b022
	rla			;b024
	exx			;b025
	ld e,a			;b026
	ld d,0cah		;b027
	ld a,(de)		;b029
	or c			;b02a
	ld (hl),a		;b02b
	inc hl			;b02c
	exx			;b02d
	djnz lb006h		;b02e
	ret			;b030
sub_b031h:
	push de			;b031
	ld a,(00007h)		;b032
	ld c,a			;b035
	ld b,008h		;b036
lb038h:
	push bc			;b038
	ex de,hl		;b039
	xor a			;b03a
	call 046f0h		;b03b
	ex de,hl		;b03e
	ld b,004h		;b03f
lb041h:
	ld a,(hl)		;b041
	dec hl			;b042
	rrca			;b043
	rrca			;b044
	rrca			;b045
	rrca			;b046
	out (c),a		;b047
	djnz lb041h		;b049
	ld c,008h		;b04b
	add hl,bc		;b04d
	ex de,hl		;b04e
	ld c,080h		;b04f
	add hl,bc		;b051
	ex de,hl		;b052
	pop bc			;b053
	djnz lb038h		;b054
	pop de			;b056
	ret			;b057
lb058h:
	inc hl			;b058
	inc hl			;b059
	inc hl			;b05a
lb05bh:
	push bc			;b05b
	call sub_b031h		;b05c
	ld a,004h		;b05f
	add a,e			;b061
	cp 080h			;b062
	jr nz,lb06bh		;b064
	ld a,004h		;b066
	add a,d			;b068
	ld d,a			;b069
	xor a			;b06a
lb06bh:
	ld e,a			;b06b
	pop bc			;b06c
	djnz lb05bh		;b06d
	ret			;b06f
lb070h:
	rst 38h			;b070
	rst 38h			;b071
	rst 38h			;b072
	rst 38h			;b073
	nop			;b074
	nop			;b075
	nop			;b076
	nop			;b077
lb078h:
	ld bc,00100h		;b078
	nop			;b07b
lb07ch:
	ld (bc),a		;b07c
	nop			;b07d
	ld (bc),a		;b07e
	nop			;b07f
	inc bc			;b080
	nop			;b081
	inc bc			;b082
	nop			;b083
	inc b			;b084
	nop			;b085
	inc b			;b086
	nop			;b087
lb088h:
	dec b			;b088
	nop			;b089
	dec b			;b08a
	nop			;b08b
lb08ch:
	ld b,000h		;b08c
	ld b,000h		;b08e
	rlca			;b090
	nop			;b091
	rlca			;b092
	nop			;b093
lb094h:
	ex af,af'		;b094
	nop			;b095
	ex af,af'		;b096
	nop			;b097
lb098h:
	add hl,bc		;b098
	nop			;b099
	add hl,bc		;b09a
	nop			;b09b
lb09ch:
	ld a,(bc)		;b09c
	nop			;b09d
	ld a,(bc)		;b09e
	nop			;b09f
	nop			;b0a0
	ld bc,00201h		;b0a1
lb0a4h:
	nop			;b0a4
	inc bc			;b0a5
	ld bc,00004h		;b0a6
	dec b			;b0a9
	ld bc,00006h		;b0aa
	rlca			;b0ad
	ld bc,00008h		;b0ae
	add hl,bc		;b0b1
	ld bc,0000ah		;b0b2
	dec bc			;b0b5
	nop			;b0b6
	inc c			;b0b7
lb0b8h:
	ld bc,0010bh		;b0b8
	inc c			;b0bb
lb0bch:
	nop			;b0bc
	dec c			;b0bd
	ld bc,0000eh		;b0be
	rrca			;b0c1
	nop			;b0c2
	djnz lb0dah		;b0c3
	dec h			;b0c5
	rra			;b0c6
	ccf			;b0c7
	dec d			;b0c8
	jr nz,lb0eah		;b0c9
	add hl,hl		;b0cb
lb0cch:
	ld d,004h		;b0cc
	rra			;b0ce
	inc c			;b0cf
lb0d0h:
	ld d,001h		;b0d0
	ld a,(de)		;b0d2
	inc bc			;b0d3
	inc e			;b0d4
	nop			;b0d5
	ld e,003h		;b0d6
lb0d8h:
	dec d			;b0d8
	add hl,de		;b0d9
lb0dah:
	add hl,de		;b0da
	dec de			;b0db
	dec d			;b0dc
	inc e			;b0dd
	inc e			;b0de
	ld e,01ah		;b0df
	ld a,(de)		;b0e1
	inc e			;b0e2
	dec de			;b0e3
	dec e			;b0e4
	inc e			;b0e5
	rra			;b0e6
	ld e,01dh		;b0e7
	ld a,(de)		;b0e9
lb0eah:
	ld e,01bh		;b0ea
lb0ech:
	rra			;b0ec
	dec de			;b0ed
	rra			;b0ee
	dec de			;b0ef
lb0f0h:
	ld (bc),a		;b0f0
	ld bc,00c15h		;b0f1
lb0f4h:
	ld (bc),a		;b0f4
	dec c			;b0f5
	dec d			;b0f6
	jr lb10fh		;b0f7
	dec c			;b0f9
	rra			;b0fa
	jr lb0feh		;b0fb
	add hl,de		;b0fd
lb0feh:
	ld a,(bc)		;b0fe
	rra			;b0ff
lb100h:
	ld bc,01421h		;b100
	inc l			;b103
lb104h:
	ld c,021h		;b104
	inc d			;b106
	inc l			;b107
lb108h:
	rlca			;b108
	ld hl,02c14h		;b109
lb10ch:
	nop			;b10c
	dec l			;b10d
	inc de			;b10e
lb10fh:
	scf			;b10f
lb110h:
	dec bc			;b110
	add hl,de		;b111
	inc d			;b112
	rra			;b113
lb114h:
	nop			;b114
	jr c,lb11bh		;b115
	dec sp			;b117
lb118h:
	dec b			;b118
	jr c,lb120h		;b119
lb11bh:
	jr c,lb122h		;b11b
	add hl,sp		;b11d
	dec b			;b11e
	add hl,sp		;b11f
lb120h:
	ld b,038h		;b120
lb122h:
	ld b,038h		;b122
lb124h:
	ld b,039h		;b124
	ld b,039h		;b126
lb128h:
	nop			;b128
	inc a			;b129
	nop			;b12a
	inc a			;b12b
lb12ch:
	rlca			;b12c
	jr c,$+9		;b12d
	add hl,sp		;b12f
lb130h:
	nop			;b130
	dec a			;b131
	nop			;b132
	ccf			;b133
lb134h:
	ld bc,0013ch		;b134
	ccf			;b137
lb138h:
	ld (bc),a		;b138
	inc a			;b139
	inc b			;b13a
	ccf			;b13b
lb13ch:
	ex af,af'		;b13c
	add hl,sp		;b13d
	ld a,(bc)		;b13e
	dec sp			;b13f
	dec b			;b140
	ld a,(03b07h)		;b141
lb144h:
	dec b			;b144
	inc a			;b145
	rlca			;b146
	ld a,018h		;b147
	ld (02218h),hl		;b149
lb14ch:
	rla			;b14c
	ld (02217h),hl		;b14d
lb150h:
	add hl,de		;b150
	ld hl,02119h		;b151
lb154h:
	add hl,de		;b154
	jr nz,lb170h		;b155
	jr nz,lb171h		;b157
	jr nz,$+26		;b159
	ld hl,0201ah		;b15b
	ld a,(de)		;b15e
	ld hl,02017h		;b15f
	rla			;b162
	ld hl,02016h		;b163
	ld d,021h		;b166
	dec d			;b168
	jr nz,$+23		;b169
	ld hl,02216h		;b16b
	ld d,023h		;b16e
lb170h:
	dec d			;b170
lb171h:
	ld (02315h),hl		;b171
	dec e			;b174
	jr nz,lb194h		;b175
	jr nz,$+30		;b177
	ld (0231ch),hl		;b179
	inc e			;b17c
	jr nz,lb19bh		;b17d
	ld hl,0221dh		;b17f
	dec e			;b182
	inc hl			;b183
	ld e,021h		;b184
	ld e,022h		;b186
	rra			;b188
	jr nz,lb1aah		;b189
	ld hl,0231eh		;b18b
	rra			;b18e
	inc h			;b18f
	rra			;b190
	inc hl			;b191
	rra			;b192
	inc h			;b193
lb194h:
	ld bc,01401h		;b194
	inc c			;b197
lb198h:
	ld bc,0140dh		;b198
lb19bh:
	jr $+24			;b19b
	djnz $+33		;b19d
	dec de			;b19f
lb1a0h:
	dec d			;b1a0
	nop			;b1a1
	inc e			;b1a2
	rlca			;b1a3
lb1a4h:
	inc e			;b1a4
	ex af,af'		;b1a5
	rra			;b1a6
	dec bc			;b1a7
	dec e			;b1a8
	dec b			;b1a9
lb1aah:
	rra			;b1aa
	rlca			;b1ab
	dec e			;b1ac
	inc bc			;b1ad
	ld e,004h		;b1ae
	dec e			;b1b0
	ld bc,0021eh		;b1b1
	dec e			;b1b4
	ld bc,0011dh		;b1b5
	rra			;b1b8
	ld bc,0011eh		;b1b9
	rra			;b1bc
	ld bc,0011fh		;b1bd
lb1c0h:
	dec d			;b1c0
	ex af,af'		;b1c1
	add hl,de		;b1c2
	rrca			;b1c3
lb1c4h:
	nop			;b1c4
	add hl,de		;b1c5
	ld b,01fh		;b1c6
lb1c8h:
	rlca			;b1c8
	add hl,de		;b1c9
	dec c			;b1ca
	rra			;b1cb
lb1cch:
	ld c,019h		;b1cc
	ld de,0121ch		;b1ce
	add hl,de		;b1d1
	dec d			;b1d2
	inc e			;b1d3
lb1d4h:
	ld c,01dh		;b1d4
	rrca			;b1d6
	ld e,010h		;b1d7
	dec e			;b1d9
	djnz $+32		;b1da
	ld de,0131dh		;b1dc
	ld e,018h		;b1df
	inc e			;b1e1
	dec de			;b1e2
	inc hl			;b1e3
lb1e4h:
	inc e			;b1e4
	inc e			;b1e5
	rra			;b1e6
	inc hl			;b1e7
lb1e8h:
	inc d			;b1e8
	rra			;b1e9
	rla			;b1ea
	ld h,010h		;b1eb
	rra			;b1ed
	inc de			;b1ee
	ld h,00ch		;b1ef
	jr nz,$+17		;b1f1
	daa			;b1f3
lb1f4h:
	inc b			;b1f4
	jr nz,$+13		;b1f5
	daa			;b1f7
lb1f8h:
	nop			;b1f8
	jr z,lb1ffh		;b1f9
	jr z,lb1fdh		;b1fb
lb1fdh:
	add hl,hl		;b1fd
	ex af,af'		;b1fe
lb1ffh:
	add hl,hl		;b1ff
lb200h:
	nop			;b200
	ld hl,(02a07h)		;b201
lb204h:
	nop			;b204
	dec hl			;b205
	add hl,bc		;b206
	dec hl			;b207
lb208h:
	nop			;b208
	inc l			;b209
	ld a,(bc)		;b20a
	inc l			;b20b
lb20ch:
	nop			;b20c
	dec l			;b20d
	add hl,bc		;b20e
	dec l			;b20f
lb210h:
	nop			;b210
	ld l,00ah		;b211
	ld l,000h		;b213
	cpl			;b215
	rlca			;b216
	cpl			;b217
lb218h:
	nop			;b218
	jr nc,lb221h		;b219
	jr nc,lb21dh		;b21b
lb21dh:
	ld sp,03107h		;b21d
lb220h:
	nop			;b220
lb221h:
	ld (03207h),a		;b221
lb224h:
	nop			;b224
	inc sp			;b225
	ld b,033h		;b226
lb228h:
	nop			;b228
	inc (hl)		;b229
	add hl,bc		;b22a
	inc (hl)		;b22b
lb22ch:
	nop			;b22c
	dec (hl)		;b22d
	ld b,035h		;b22e
lb230h:
	nop			;b230
	ld (hl),007h		;b231
	ld (hl),000h		;b233
	scf			;b235
	rrca			;b236
	scf			;b237
lb238h:
	nop			;b238
	jr c,$+10		;b239
	jr c,lb23dh		;b23b
lb23dh:
	add hl,sp		;b23d
	rlca			;b23e
	add hl,sp		;b23f
lb240h:
	nop			;b240
	ld a,(03a08h)		;b241
lb244h:
	nop			;b244
	dec sp			;b245
	ld bc,0003bh		;b246
	inc a			;b249
	dec b			;b24a
	inc a			;b24b
	nop			;b24c
	dec a			;b24d
	inc c			;b24e
	dec a			;b24f
	ex af,af'		;b250
	jr c,lb267h		;b251
	jr c,lb255h		;b253
lb255h:
	jr nz,lb266h		;b255
	jr nz,$+10		;b257
	inc a			;b259
	ld de,0053ch		;b25a
	ccf			;b25d
	inc d			;b25e
	ccf			;b25f
lb260h:
	ld bc,00a0eh		;b260
	ld hl,(0048ch)		;b263
lb266h:
	xor l			;b266
lb267h:
	xor l			;b267
	ld bc,00a0eh		;b268
	jp nz,001bch		;b26b
	ret pe			;b26e
	jp p,02302h		;b26f
	ld b,l			;b272
	ld a,(bc)		;b273
	ld (de),a		;b274
	ld (hl),a		;b275
	nop			;b276
	nop			;b277
	ld a,a			;b278
	ld (bc),a		;b279
	inc hl			;b27a
	ld b,l			;b27b
	ld a,(bc)		;b27c
	ld (bc),a		;b27d
	ld h,l			;b27e
	ld bc,0c300h		;b27f
	ld (bc),a		;b282
	inc hl			;b283
	ld b,l			;b284
	ld a,(bc)		;b285
	ld (de),a		;b286
	ld a,a			;b287
	nop			;b288
	add a,b			;b289
	rst 38h			;b28a
	ld (bc),a		;b28b
	ld l,b			;b28c
	rst 28h			;b28d
	ld a,(bc)		;b28e
	ld (de),a		;b28f
	add a,a			;b290
	ld bc,0cbc4h		;b291
	ld (bc),a		;b294
	ld h,a			;b295
	ret p			;b296
	ld a,(bc)		;b297
	sub d			;b298
	add a,a			;b299
	ld bc,0d7cch		;b29a
	ld (bc),a		;b29d
	ld a,(bc)		;b29e
	ret po			;b29f
	ld a,(bc)		;b2a0
	ld b,d			;b2a1
	cp h			;b2a2
	inc b			;b2a3
	ret c			;b2a4
	rst 18h			;b2a5
	ld (bc),a		;b2a6
	dec bc			;b2a7
	call 0520ah		;b2a8
	adc a,b			;b2ab
	ld bc,0fff3h		;b2ac
	ld (bc),a		;b2af
	dec bc			;b2b0
	call 0420ah		;b2b1
	ld (hl),c		;b2b4
	ld (bc),a		;b2b5
	nop			;b2b6
	ld de,00902h		;b2b7
	xor a			;b2ba
	ld a,(bc)		;b2bb
	and d			;b2bc
	adc a,d			;b2bd
	inc bc			;b2be
	push de			;b2bf
	ret pe			;b2c0
	ld (bc),a		;b2c1
	add hl,bc		;b2c2
	xor a			;b2c3
	adc a,d			;b2c4
	and d			;b2c5
	adc a,d			;b2c6
	inc bc			;b2c7
	jp (hl)			;b2c8
	call m,00103h		;b2c9
	inc hl			;b2cc
	ld b,l			;b2cd
	nop			;b2ce
	ld a,(bc)		;b2cf
	ld h,d			;b2d0
	ld (hl),d		;b2d1
	ld (bc),a		;b2d2
	ld (de),a		;b2d3
	ld (hl),003h		;b2d4
	ld b,078h		;b2d6
	rst 28h			;b2d8
	nop			;b2d9
	ld a,(bc)		;b2da
	jp c,00275h		;b2db
	scf			;b2de
	ld b,e			;b2df
	inc bc			;b2e0
	ld bc,0deach		;b2e1
	ret p			;b2e4
	ld a,(bc)		;b2e5
	jp pe,004b9h		;b2e6
	ret nz			;b2e9
	ret c			;b2ea
	inc bc			;b2eb
	ld b,078h		;b2ec
	sbc a,(hl)		;b2ee
	ret p			;b2ef
	ld a,(bc)		;b2f0
	ld (00389h),hl		;b2f1
	nop			;b2f4
	inc bc			;b2f5
	inc bc			;b2f6
	dec bc			;b2f7
	call 000efh		;b2f8
	ld a,(bc)		;b2fb
	add a,d			;b2fc
	adc a,c			;b2fd
	inc bc			;b2fe
	inc b			;b2ff
	inc d			;b300
	inc bc			;b301
	ld b,078h		;b302
	rst 28h			;b304
	nop			;b305
	ld a,(bc)		;b306
	jp po,0038bh		;b307
	defb 0fdh,0ffh,003h ;illegal sequence	;b30a
	ld b,078h		;b30d
	rst 28h			;b30f
	nop			;b310
	adc a,d			;b311
	jp po,0048bh		;b312
	ld d,l			;b315
	ld d,a			;b316
	inc bc			;b317
	dec bc			;b318
	call 000e0h		;b319
	ld a,(bc)		;b31c
	ld (0048ch),a		;b31d
	or b			;b320
	or l			;b321
	inc bc			;b322
	dec bc			;b323
	call 000f0h		;b324
	ld a,(bc)		;b327
	jp nz,0048ch		;b328
	cp h			;b32b
	cp a			;b32c
	inc bc			;b32d
	dec bc			;b32e
	call 000e0h		;b32f
	ld a,(bc)		;b332
	and d			;b333
	or b			;b334
	inc b			;b335
	or (hl)			;b336
	cp e			;b337
	inc bc			;b338
	ld (hl),078h		;b339
	sbc a,(hl)		;b33b
	ret p			;b33c
	ld a,(bc)		;b33d
	ld (003b1h),a		;b33e
	cp e			;b341
	call nc,00203h		;b342
	ld h,a			;b345
	adc a,c			;b346
	rst 28h			;b347
	ld a,(bc)		;b348
	and d			;b349
	or e			;b34a
	inc b			;b34b
	nop			;b34c
	ld hl,(00203h)		;b34d
	ld h,a			;b350
	adc a,c			;b351
	rst 28h			;b352
	adc a,d			;b353
	and d			;b354
	or e			;b355
	inc b			;b356
	ld e,b			;b357
	add a,d			;b358
	inc bc			;b359
	ld b,078h		;b35a
	rst 28h			;b35c
	nop			;b35d
	ld a,(bc)		;b35e
	xor d			;b35f
	or a			;b360
	inc b			;b361
	dec a			;b362
	ld d,h			;b363
	inc bc			;b364
	ld b,078h		;b365
	rst 28h			;b367
	nop			;b368
	adc a,d			;b369
	xor d			;b36a
	or a			;b36b
	inc b			;b36c
	sub l			;b36d
	xor h			;b36e
	inc b			;b36f
	ld a,(bc)		;b370
	ld (0028dh),hl		;b371
	add a,e			;b374
	rst 38h			;b375
	inc b			;b376
	ld a,(bc)		;b377
	jp nz,0039ch		;b378
	dec d			;b37b
	or e			;b37c
	nop			;b37d
lb37eh:
	ld bc,0150fh		;b37e
	ld l,h			;b381
	ld l,d			;b382
	nop			;b383
	adc a,c			;b384
	adc a,l			;b385
	ld (bc),a		;b386
	ld (bc),a		;b387
	ccf			;b388
	dec d			;b389
	call po,00068h		;b38a
	ld (hl),h		;b38d
	add a,c			;b38e
	ld (bc),a		;b38f
	dec c			;b390
	rst 28h			;b391
	dec d			;b392
	sub h			;b393
	ld l,d			;b394
	nop			;b395
	adc a,(hl)		;b396
	sub l			;b397
	ld (bc),a		;b398
	inc b			;b399
	cp a			;b39a
	dec d			;b39b
	inc d			;b39c
	ld l,e			;b39d
	nop			;b39e
	sub (hl)		;b39f
	and c			;b3a0
	ld (bc),a		;b3a1
	ld l,b			;b3a2
	rst 28h			;b3a3
	ld a,(bc)		;b3a4
	ld (de),a		;b3a5
	add a,a			;b3a6
	nop			;b3a7
	di			;b3a8
	jp m,02302h		;b3a9
	ld b,l			;b3ac
	ld a,(bc)		;b3ad
	ld (de),a		;b3ae
	ld a,a			;b3af
	ld bc,07f00h		;b3b0
	ld (bc),a		;b3b3
	inc hl			;b3b4
	ld b,l			;b3b5
	ld a,(bc)		;b3b6
	ld (bc),a		;b3b7
	ld h,l			;b3b8
	ld (bc),a		;b3b9
	nop			;b3ba
	jp 00103h		;b3bb
	inc hl			;b3be
	ld b,l			;b3bf
	nop			;b3c0
	ld a,(bc)		;b3c1
	ld h,d			;b3c2
	ld (hl),d		;b3c3
	nop			;b3c4
	adc a,0f2h		;b3c5
	inc bc			;b3c7
	ld bc,0cd7ah		;b3c8
	rst 28h			;b3cb
	dec d			;b3cc
	inc b			;b3cd
	ld e,(hl)		;b3ce
	nop			;b3cf
	nop			;b3d0
	add hl,sp		;b3d1
	inc bc			;b3d2
	ld b,078h		;b3d3
	cp l			;b3d5
	rst 28h			;b3d6
	dec d			;b3d7
	ld (hl),h		;b3d8
	ld h,e			;b3d9
	nop			;b3da
	ld a,(00352h)		;b3db
	ld bc,0cd9ah		;b3de
	rst 28h			;b3e1
	dec d			;b3e2
	call z,00065h		;b3e3
	ld d,e			;b3e6
	ld h,e			;b3e7
	inc bc			;b3e8
	ld b,078h		;b3e9
	cp l			;b3eb
	rst 28h			;b3ec
	dec d			;b3ed
	ld h,h			;b3ee
	ld h,a			;b3ef
	nop			;b3f0
	ld h,h			;b3f1
	ld (hl),e		;b3f2
	inc bc			;b3f3
	ld (bc),a		;b3f4
	ld (hl),08eh		;b3f5
	ret p			;b3f7
	dec d			;b3f8
	call nz,00069h		;b3f9
	add a,d			;b3fc
	adc a,b			;b3fd
	inc bc			;b3fe
	ld (bc),a		;b3ff
	inc (hl)		;b400
	cp h			;b401
	rst 28h			;b402
	dec d			;b403
	call nc,0006bh		;b404
	and d			;b407
	call 00100h		;b408
	add hl,bc		;b40b
	dec d			;b40c
	call p,0006fh		;b40d
	ld bc,00209h		;b410
	ld a,(bc)		;b413
	cp h			;b414
	dec d			;b415
	inc a			;b416
	ld (hl),b		;b417
	nop			;b418
	ld a,(bc)		;b419
	inc c			;b41a
	ld (bc),a		;b41b
	dec b			;b41c
	ld a,c			;b41d
	dec d			;b41e
	ld l,h			;b41f
	ld (hl),b		;b420
	nop			;b421
	dec c			;b422
	ld c,002h		;b423
	inc bc			;b425
	ld c,c			;b426
	dec d			;b427
	adc a,h			;b428
	ld (hl),b		;b429
	nop			;b42a
	rrca			;b42b
	ld (de),a		;b42c
	ld (bc),a		;b42d
	dec bc			;b42e
	call 0cc15h		;b42f
	ld (hl),b		;b432
	nop			;b433
	inc de			;b434
	dec hl			;b435
	inc bc			;b436
	ld a,(bc)		;b437
	cp h			;b438
	sbc a,0ffh		;b439
	dec d			;b43b
	ld e,h			;b43c
	ld (hl),d		;b43d
	nop			;b43e
	inc l			;b43f
	ld (00303h),a		;b440
	ld b,l			;b443
	ld h,a			;b444
	adc a,c			;b445
	dec d			;b446
	inc b			;b447
	ld (hl),e		;b448
	nop			;b449
	inc sp			;b44a
	ld d,l			;b44b
	inc bc			;b44c
	inc b			;b44d
	ld d,(hl)		;b44e
	ld a,b			;b44f
	sbc a,a			;b450
	dec d			;b451
	ld c,h			;b452
	halt			;b453
	nop			;b454
	ld d,(hl)		;b455
	ld h,l			;b456
	inc bc			;b457
	inc bc			;b458
	ld d,(hl)		;b459
	ld a,b			;b45a
	sbc a,a			;b45b
	dec d			;b45c
	call z,00077h		;b45d
	ld h,(hl)		;b460
	ld l,l			;b461
	inc bc			;b462
	inc bc			;b463
	ld b,l			;b464
	ld a,b			;b465
	sbc a,a			;b466
	dec d			;b467
	adc a,h			;b468
	ld a,b			;b469
	nop			;b46a
	ld l,(hl)		;b46b
	sub c			;b46c
	inc bc			;b46d
	inc (hl)		;b46e
	ld d,(hl)		;b46f
	ld a,b			;b470
	sbc a,a			;b471
	dec d			;b472
	call pe,0007bh		;b473
	sub d			;b476
	sbc a,a			;b477
	inc b			;b478
	dec d			;b479
	inc a			;b47a
	ld a,l			;b47b
	nop			;b47c
	and b			;b47d
	or c			;b47e
	nop			;b47f
	nop			;b480
	ret nc			;b481
	ld (hl),a		;b482
	rst 10h			;b483
	ld b,h			;b484
	inc d			;b485
	jr nc,$+35		;b486
	ld b,c			;b488
	ld (04452h),a		;b489
	ld h,e			;b48c
	ld d,l			;b48d
	ld bc,00262h		;b48e
	ld (hl),e		;b491
	inc b			;b492
	add a,l			;b493
	inc bc			;b494
	sub b			;b495
	rlca			;b496
	and b			;b497
	ld d,b			;b498
	or b			;b499
	ld (hl),b		;b49a
	call nz,0d770h		;b49b
	ld (hl),a		;b49e
	rst 20h			;b49f
	nop			;b4a0
	ret p			;b4a1
	rst 38h			;b4a2
	djnz lb4b5h		;b4a3
	jr nc,$+35		;b4a5
	ld b,c			;b4a7
	ld (04452h),a		;b4a8
	ld h,e			;b4ab
	ld d,l			;b4ac
	rst 38h			;b4ad
	ld (de),a		;b4ae
	ld h,c			;b4af
	inc hl			;b4b0
	ld (hl),d		;b4b1
	inc (hl)		;b4b2
	add a,e			;b4b3
	ld (hl),b		;b4b4
lb4b5h:
	sub b			;b4b5
	rlca			;b4b6
	and b			;b4b7
	rst 38h			;b4b8
	ld h,l			;b4b9
	dec d			;b4ba
	jr nc,lb4deh		;b4bb
	ld b,c			;b4bd
	ld (04452h),a		;b4be
	ld h,e			;b4c1
	ld d,l			;b4c2
	ld (bc),a		;b4c3
	ld h,c			;b4c4
	dec d			;b4c5
	ld (hl),h		;b4c6
	ld (00282h),a		;b4c7
	sub b			;b4ca
	ld b,0a0h		;b4cb
	ld (hl),a		;b4cd
	rst 20h			;b4ce
	rst 38h			;b4cf
	ld (00212h),hl		;b4d0
	ld h,c			;b4d3
	inc de			;b4d4
	ld (hl),d		;b4d5
	inc h			;b4d6
	add a,e			;b4d7
	ld (hl),b		;b4d8
	sub b			;b4d9
	rlca			;b4da
	and b			;b4db
	rst 38h			;b4dc
	inc bc			;b4dd
lb4deh:
	ld de,02000h		;b4de
	ld bc,00230h		;b4e1
	ld b,b			;b4e4
	inc bc			;b4e5
	ld d,c			;b4e6
	nop			;b4e7
	ld h,b			;b4e8
	ld (bc),a		;b4e9
	ld (hl),b		;b4ea
	ld bc,00180h		;b4eb
	sub b			;b4ee
	ld (bc),a		;b4ef
	and b			;b4f0
	inc d			;b4f1
	jp po,033ffh		;b4f2
	inc de			;b4f5
	ld bc,00322h		;b4f6
	inc (hl)		;b4f9
	jr nc,lb53ch		;b4fa
	ld d,l			;b4fc
	ld (hl),l		;b4fd
	ld (hl),b		;b4fe
	or b			;b4ff
	rst 38h			;b500
	nop			;b501
	djnz lb504h		;b502
lb504h:
	jr nz,lb506h		;b504
lb506h:
	jr nc,lb508h		;b506
lb508h:
	ld b,b			;b508
	nop			;b509
	ld d,b			;b50a
	nop			;b50b
	ld h,b			;b50c
	nop			;b50d
	ld (hl),b		;b50e
	nop			;b50f
	add a,b			;b510
	nop			;b511
	sub b			;b512
	nop			;b513
	and b			;b514
	nop			;b515
	or b			;b516
	nop			;b517
	ret nz			;b518
	nop			;b519
	ret nc			;b51a
	nop			;b51b
	ret po			;b51c
	nop			;b51d
	ret p			;b51e
	rst 38h			;b51f
lb520h:
	ex af,af'		;b520
	add a,b			;b521
	or h			;b522
	ex af,af'		;b523
	sbc a,b			;b524
	or h			;b525
	ex af,af'		;b526
	and e			;b527
	or h			;b528
	ex af,af'		;b529
	xor (hl)		;b52a
	or h			;b52b
	rrca			;b52c
	ld c,d			;b52d
	nop			;b52e
lb52fh:
	dec h			;b52f
	ld d,0b7h		;b530
	nop			;b532
	nop			;b533
	nop			;b534
	nop			;b535
	ld bc,lb586h		;b536
	nop			;b539
	nop			;b53a
	rlca			;b53b
lb53ch:
	nop			;b53c
	inc b			;b53d
	ld c,c			;b53e
	or (hl)			;b53f
	ret z			;b540
	ex af,af'		;b541
	inc bc			;b542
	nop			;b543
	inc bc			;b544
	ex af,af'		;b545
	or (hl)			;b546
	or b			;b547
	jr nz,lb54fh		;b548
	nop			;b54a
	inc d			;b54b
	sbc a,d			;b54c
	or (hl)			;b54d
	ld b,b			;b54e
lb54fh:
	ld a,(bc)		;b54f
	ld bc,01500h		;b550
	and e			;b553
	or (hl)			;b554
	ex af,af'		;b555
	ld b,d			;b556
	ld bc,01403h		;b557
	nop			;b55a
	ld e,08eh		;b55b
	or l			;b55d
	or b			;b55e
	nop			;b55f
lb560h:
	ld b,000h		;b560
	ld (bc),a		;b562
	defb 0fdh,0b5h ;or iyl	;b563
	ret nz			;b565
	ld a,002h		;b566
	nop			;b568
	ld d,0aeh		;b569
	or (hl)			;b56b
	ret pe			;b56c
	dec l			;b56d
	ld bc,09603h		;b56e
	inc bc			;b571
	ld c,b			;b572
	nop			;b573
	jr z,lb52fh		;b574
	or (hl)			;b576
	nop			;b577
	nop			;b578
	dec b			;b579
	dec b			;b57a
	nop			;b57b
	inc bc			;b57c
	rlca			;b57d
	dec b			;b57e
	ld bc,02003h		;b57f
	ld b,00dh		;b582
	scf			;b584
	or a			;b585
lb586h:
	ld bc,lb0f4h		;b586
	nop			;b589
	nop			;b58a
	ld (bc),a		;b58b
	inc b			;b58c
	rlca			;b58d
	ld bc,0b0f8h		;b58e
	ld bc,00b00h		;b591
	jr nz,lb596h		;b594
lb596h:
	inc bc			;b596
	ld c,(hl)		;b597
	nop			;b598
	rra			;b599
	and b			;b59a
	or l			;b59b
	ret			;b59c
	nop			;b59d
	ld b,007h		;b59e
	ld bc,lb104h		;b5a0
	ld (bc),a		;b5a3
	nop			;b5a4
	dec bc			;b5a5
	jr nz,lb5a8h		;b5a6
lb5a8h:
	inc bc			;b5a8
	ld (hl),000h		;b5a9
	jr nz,lb560h		;b5ab
	or l			;b5ad
	call z,00600h		;b5ae
	ld c,007h		;b5b1
	ld bc,lb108h		;b5b3
	nop			;b5b6
	nop			;b5b7
	nop			;b5b8
	rra			;b5b9
	xor 0b5h		;b5ba
	nop			;b5bc
	nop			;b5bd
	nop			;b5be
	dec bc			;b5bf
	jr nz,lb5c2h		;b5c0
lb5c2h:
	inc bc			;b5c2
	inc d			;b5c3
	nop			;b5c4
	ld bc,0b5eeh		;b5c5
	nop			;b5c8
	nop			;b5c9
	nop			;b5ca
	inc bc			;b5cb
	ld (02100h),hl		;b5cc
	sub 0b5h		;b5cf
	jp nc,00600h		;b5d1
	ld c,007h		;b5d4
	ld bc,lb100h		;b5d6
	nop			;b5d9
	nop			;b5da
	dec bc			;b5db
	jr nz,lb5deh		;b5dc
lb5deh:
	inc bc			;b5de
	ld l,000h		;b5df
	ld e,0eeh		;b5e1
	or l			;b5e3
	nop			;b5e4
	nop			;b5e5
	nop			;b5e6
	nop			;b5e7
	ld (lb5f0h),hl		;b5e8
	nop			;b5eb
	nop			;b5ec
	ld b,00eh		;b5ed
	rlca			;b5ef
lb5f0h:
	ld bc,lb100h		;b5f0
	nop			;b5f3
	nop			;b5f4
	ld (bc),a		;b5f5
	inc b			;b5f6
	ld (bc),a		;b5f7
	ex af,af'		;b5f8
	dec bc			;b5f9
	jr nz,lb5fch		;b5fa
lb5fch:
	rlca			;b5fc
	dec bc			;b5fd
	ret p			;b5fe
	nop			;b5ff
	inc bc			;b600
	ld e,001h		;b601
	call c,000b0h		;b603
	nop			;b606
	rlca			;b607
	ld bc,0b0e0h		;b608
	nop			;b60b
	nop			;b60c
	dec bc			;b60d
	ret p			;b60e
	nop			;b60f
	inc b			;b610
	ld bc,00b03h		;b611
	nop			;b614
	dec bc			;b615
	or 0b6h			;b616
	ex af,af'		;b618
	nop			;b619
	inc b			;b61a
	inc bc			;b61b
	dec b			;b61c
	nop			;b61d
	inc c			;b61e
	ld b,0b7h		;b61f
	ld (de),a		;b621
	ld a,(bc)		;b622
	inc b			;b623
	inc bc			;b624
	ld bc,00d00h		;b625
	pop hl			;b628
	or (hl)			;b629
	ld a,(bc)		;b62a
	dec b			;b62b
	inc b			;b62c
	inc bc			;b62d
	ld (bc),a		;b62e
	nop			;b62f
	ld c,0f6h		;b630
	or (hl)			;b632
	inc b			;b633
	rlca			;b634
	inc b			;b635
	inc bc			;b636
	inc b			;b637
	nop			;b638
	rla			;b639
lb63ah:
	pop hl			;b63a
	or (hl)			;b63b
	ld (de),a		;b63c
	ex af,af'		;b63d
	inc b			;b63e
	inc bc			;b63f
	ld (bc),a		;b640
	nop			;b641
	jr lb63ah		;b642
	or (hl)			;b644
	inc d			;b645
	dec b			;b646
	inc b			;b647
	rlca			;b648
	ld bc,lb0d8h		;b649
	nop			;b64c
	nop			;b64d
	dec bc			;b64e
	ret p			;b64f
	nop			;b650
	inc b			;b651
	ld bc,00500h		;b652
	pop hl			;b655
	or (hl)			;b656
	ex af,af'		;b657
	nop			;b658
	ld (bc),a		;b659
	inc bc			;b65a
	inc b			;b65b
	nop			;b65c
	ld b,0f6h		;b65d
	or (hl)			;b65f
	jr lb672h		;b660
	inc b			;b662
	inc bc			;b663
	ld bc,00700h		;b664
	ld b,0b7h		;b667
	jr lb66fh		;b669
	ld (bc),a		;b66b
	inc bc			;b66c
	inc b			;b66d
	nop			;b66e
lb66fh:
	ex af,af'		;b66f
	or 0b6h			;b670
lb672h:
	ex af,af'		;b672
	inc b			;b673
	ld (bc),a		;b674
	inc bc			;b675
	inc bc			;b676
	nop			;b677
	add hl,bc		;b678
	pop hl			;b679
	or (hl)			;b67a
	nop			;b67b
	nop			;b67c
	ld (bc),a		;b67d
	inc bc			;b67e
	ld bc,00a00h		;b67f
	or 0b6h			;b682
	jr nz,lb68eh		;b684
	inc b			;b686
	inc bc			;b687
	rlca			;b688
	nop			;b689
	add hl,de		;b68a
	pop hl			;b68b
	or (hl)			;b68c
	ld (de),a		;b68d
lb68eh:
	ld (de),a		;b68e
	inc b			;b68f
	inc bc			;b690
	ld (bc),a		;b691
	nop			;b692
	ld a,(de)		;b693
	or 0b6h			;b694
	nop			;b696
	nop			;b697
	inc b			;b698
	rlca			;b699
	ld bc,lb0ech		;b69a
	nop			;b69d
	nop			;b69e
	dec bc			;b69f
	djnz lb6a2h		;b6a0
lb6a2h:
	rlca			;b6a2
	ld bc,0b0e8h		;b6a3
	nop			;b6a6
	nop			;b6a7
	dec bc			;b6a8
	ld b,b			;b6a9
	nop			;b6aa
	inc bc			;b6ab
	ld d,b			;b6ac
lb6adh:
	ld c,001h		;b6ad
	call po,000b0h		;b6af
	nop			;b6b2
	dec bc			;b6b3
	jr c,lb6b6h		;b6b4
lb6b6h:
	inc bc			;b6b6
	ld a,b			;b6b7
	ld c,004h		;b6b8
	nop			;b6ba
	nop			;b6bb
lb6bch:
	dec de			;b6bc
	call z,06cb6h		;b6bd
	ld a,(de)		;b6c0
	dec b			;b6c1
	inc bc			;b6c2
	inc bc			;b6c3
	nop			;b6c4
	inc e			;b6c5
	call z,030b6h		;b6c6
	djnz lb6d0h		;b6c9
	ld c,001h		;b6cb
	or h			;b6cd
	or b			;b6ce
	nop			;b6cf
lb6d0h:
	nop			;b6d0
	ld bc,lb0b8h		;b6d1
	nop			;b6d4
	nop			;b6d5
	ld bc,lb0bch		;b6d6
	nop			;b6d9
	nop			;b6da
	ld bc,0b0c0h		;b6db
	nop			;b6de
	nop			;b6df
	ld c,001h		;b6e0
	and b			;b6e2
	or b			;b6e3
	nop			;b6e4
	nop			;b6e5
	ld bc,lb0a4h		;b6e6
	nop			;b6e9
	nop			;b6ea
	ld bc,0b0a8h		;b6eb
	nop			;b6ee
	nop			;b6ef
	ld bc,0b0ach		;b6f0
	nop			;b6f3
	nop			;b6f4
	ld c,001h		;b6f5
	ld (hl),h		;b6f7
	or b			;b6f8
	nop			;b6f9
	nop			;b6fa
	ld bc,lb078h		;b6fb
	nop			;b6fe
	nop			;b6ff
	ld bc,lb07ch		;b700
	nop			;b703
	nop			;b704
	ld c,001h		;b705
	add a,h			;b707
	or b			;b708
	nop			;b709
	nop			;b70a
	ld bc,lb088h		;b70b
	nop			;b70e
	nop			;b70f
	ld bc,lb08ch		;b710
	nop			;b713
	nop			;b714
	ld c,010h		;b715
	sub b			;b717
	ld (hl),b		;b718
	inc bc			;b719
	ld (bc),a		;b71a
	djnz lb6adh		;b71b
	ld d,b			;b71d
	inc bc			;b71e
	ld bc,09010h		;b71f
	jr nc,lb727h		;b722
	ld bc,09010h		;b724
lb727h:
	djnz lb72ch		;b727
	ld (bc),a		;b729
	djnz lb6bch		;b72a
lb72ch:
	jr nc,lb731h		;b72c
	ld bc,09010h		;b72e
lb731h:
	ld d,b			;b731
	inc bc			;b732
	ld bc,0160dh		;b733
	or a			;b736
	ex af,af'		;b737
	sbc a,b			;b738
	or h			;b739
	ex af,af'		;b73a
	and e			;b73b
	or h			;b73c
	ex af,af'		;b73d
	xor (hl)		;b73e
	or h			;b73f
	nop			;b740
	dec h			;b741
	ld d,0b7h		;b742
	nop			;b744
	nop			;b745
	nop			;b746
	nop			;b747
	ld bc,lb779h		;b748
	nop			;b74b
	nop			;b74c
	rrca			;b74d
	nop			;b74e
	ld (bc),a		;b74f
	add a,(hl)		;b750
	or a			;b751
	jr nc,lb764h		;b752
	add hl,bc		;b754
	nop			;b755
	inc bc			;b756
	sbc a,a			;b757
	or a			;b758
	ex af,af'		;b759
	jr lb766h		;b75a
	nop			;b75c
	inc b			;b75d
	or (hl)			;b75e
	or a			;b75f
	add a,b			;b760
	jr lb76eh		;b761
	inc bc			;b763
lb764h:
	jr nc,$+7		;b764
lb766h:
	nop			;b766
	inc bc			;b767
	ex af,af'		;b768
	dec b			;b769
	ld bc,00903h		;b76a
	dec b			;b76d
lb76eh:
	ld (bc),a		;b76e
	inc bc			;b76f
	dec de			;b770
	dec b			;b771
	inc bc			;b772
	inc bc			;b773
	ld hl,00d06h		;b774
	ld a,b			;b777
	cp b			;b778
lb779h:
	ld bc,lb0f0h		;b779
	nop			;b77c
	nop			;b77d
	ld (bc),a		;b77e
	inc b			;b77f
	ld (bc),a		;b780
	ex af,af'		;b781
	dec bc			;b782
	jr nz,lb785h		;b783
lb785h:
	rlca			;b785
	ld bc,lb0cch		;b786
	nop			;b789
	nop			;b78a
	dec bc			;b78b
	ret m			;b78c
	nop			;b78d
lb78eh:
	inc b			;b78e
	ld (bc),a		;b78f
	inc bc			;b790
	rlca			;b791
	nop			;b792
	ld b,0cdh		;b793
	or a			;b795
	nop			;b796
	nop			;b797
	add hl,bc		;b798
	inc b			;b799
	inc bc			;b79a
	dec bc			;b79b
	ret po			;b79c
	jr nz,lb7a6h		;b79d
	ld bc,lb0d0h		;b79f
	nop			;b7a2
	nop			;b7a3
	dec bc			;b7a4
	nop			;b7a5
lb7a6h:
	nop			;b7a6
	nop			;b7a7
	rrca			;b7a8
	ld b,0b8h		;b7a9
	nop			;b7ab
	nop			;b7ac
	add hl,bc		;b7ad
	inc b			;b7ae
	nop			;b7af
	dec bc			;b7b0
	ret po			;b7b1
	ld b,b			;b7b2
	inc bc			;b7b3
	inc hl			;b7b4
	ld c,001h		;b7b5
	call nc,000b0h		;b7b7
	nop			;b7ba
	dec bc			;b7bb
	nop			;b7bc
	nop			;b7bd
	nop			;b7be
	djnz lb78eh		;b7bf
	or a			;b7c1
	nop			;b7c2
	nop			;b7c3
	add hl,bc		;b7c4
	inc b			;b7c5
	ld bc,0400bh		;b7c6
	jr nz,lb7ceh		;b7c9
	ld e,00eh		;b7cb
	nop			;b7cd
lb7ceh:
	inc de			;b7ce
	pop hl			;b7cf
	or (hl)			;b7d0
	ex af,af'		;b7d1
	nop			;b7d2
	add hl,bc		;b7d3
	inc bc			;b7d4
	inc b			;b7d5
	nop			;b7d6
	inc d			;b7d7
	pop hl			;b7d8
	or (hl)			;b7d9
	jr lb7ech		;b7da
	dec bc			;b7dc
	inc bc			;b7dd
	ld bc,01500h		;b7de
	pop hl			;b7e1
	or (hl)			;b7e2
	jr lb7e9h		;b7e3
	add hl,bc		;b7e5
	inc bc			;b7e6
	ld (bc),a		;b7e7
	nop			;b7e8
lb7e9h:
	ld d,0e1h		;b7e9
	or (hl)			;b7eb
lb7ech:
	ex af,af'		;b7ec
	inc b			;b7ed
	add hl,bc		;b7ee
	inc bc			;b7ef
	ld bc,01700h		;b7f0
	pop hl			;b7f3
	or (hl)			;b7f4
	nop			;b7f5
	nop			;b7f6
	dec b			;b7f7
	inc bc			;b7f8
	ld bc,01800h		;b7f9
	pop hl			;b7fc
	or (hl)			;b7fd
	jr nz,lb808h		;b7fe
	dec b			;b800
	inc bc			;b801
	ld bc,0cd0dh		;b802
	or a			;b805
	nop			;b806
	add hl,de		;b807
lb808h:
	pop hl			;b808
	or (hl)			;b809
	ex af,af'		;b80a
	nop			;b80b
	add hl,bc		;b80c
	inc bc			;b80d
	inc b			;b80e
	nop			;b80f
	ld a,(de)		;b810
	pop hl			;b811
	or (hl)			;b812
	jr lb825h		;b813
	dec bc			;b815
	inc bc			;b816
	ld bc,01b00h		;b817
	pop hl			;b81a
	or (hl)			;b81b
	jr lb822h		;b81c
	add hl,bc		;b81e
	inc bc			;b81f
	ld (bc),a		;b820
	nop			;b821
lb822h:
	inc e			;b822
	pop hl			;b823
	or (hl)			;b824
lb825h:
	ex af,af'		;b825
	inc b			;b826
	add hl,bc		;b827
	inc bc			;b828
	ld bc,01d00h		;b829
	pop hl			;b82c
	or (hl)			;b82d
	nop			;b82e
	nop			;b82f
	dec b			;b830
	inc bc			;b831
	ld bc,01e00h		;b832
	pop hl			;b835
	or (hl)			;b836
	jr nz,lb841h		;b837
	dec b			;b839
	inc bc			;b83a
	ld bc,0060dh		;b83b
	cp b			;b83e
	nop			;b83f
	inc de			;b840
lb841h:
	pop hl			;b841
	or (hl)			;b842
	ex af,af'		;b843
	nop			;b844
	add hl,bc		;b845
	inc bc			;b846
	inc b			;b847
	nop			;b848
	inc d			;b849
	pop hl			;b84a
	or (hl)			;b84b
	jr lb85eh		;b84c
	dec bc			;b84e
	inc bc			;b84f
	ld bc,01500h		;b850
	pop hl			;b853
	or (hl)			;b854
	jr lb85bh		;b855
	add hl,bc		;b857
	inc bc			;b858
	ld (bc),a		;b859
	nop			;b85a
lb85bh:
	ld d,0e1h		;b85b
	or (hl)			;b85d
lb85eh:
	ex af,af'		;b85e
	inc b			;b85f
	add hl,bc		;b860
	inc bc			;b861
	ld bc,01700h		;b862
	pop hl			;b865
	or (hl)			;b866
	nop			;b867
	nop			;b868
	dec b			;b869
	inc bc			;b86a
	ld bc,01800h		;b86b
	pop hl			;b86e
	or (hl)			;b86f
	jr nz,lb87ah		;b870
	dec b			;b872
	inc bc			;b873
	ld bc,03f0dh		;b874
	cp b			;b877
	ex af,af'		;b878
	sbc a,b			;b879
lb87ah:
	or h			;b87a
	ex af,af'		;b87b
	and e			;b87c
	or h			;b87d
	ex af,af'		;b87e
	defb 0ddh,0b4h ;or ixh	;b87f
	rrca			;b881
	ld c,(hl)		;b882
	nop			;b883
	rrca			;b884
	call p,000b8h		;b885
	nop			;b888
	rrca			;b889
	nop			;b88a
	ld de,0b8fah		;b88b
	nop			;b88e
	nop			;b88f
	rrca			;b890
	nop			;b891
	inc b			;b892
	ld d,0b9h		;b893
	nop			;b895
	ex af,af'		;b896
	ex af,af'		;b897
	nop			;b898
	ld b,01ch		;b899
	cp c			;b89b
	ld a,b			;b89c
	ld b,b			;b89d
	rlca			;b89e
	inc bc			;b89f
	ld (de),a		;b8a0
	rrca			;b8a1
	ld c,a			;b8a2
	dec b			;b8a3
	ld bc,00303h		;b8a4
	nop			;b8a7
	dec b			;b8a8
	jr c,$-69		;b8a9
	nop			;b8ab
	ret m			;b8ac
	rrca			;b8ad
lb8aeh:
	nop			;b8ae
	ld (de),a		;b8af
	ld (hl),e		;b8b0
	cp c			;b8b1
	nop			;b8b2
	ret m			;b8b3
	rrca			;b8b4
	inc bc			;b8b5
	inc c			;b8b6
	nop			;b8b7
	ld bc,lb8e7h		;b8b8
	nop			;b8bb
	nop			;b8bc
	rrca			;b8bd
	nop			;b8be
	ld (bc),a		;b8bf
	nop			;b8c0
	cp c			;b8c1
	nop			;b8c2
	nop			;b8c3
	ld c,000h		;b8c4
	inc bc			;b8c6
	dec bc			;b8c7
	cp c			;b8c8
	ld d,b			;b8c9
	nop			;b8ca
	ld c,003h		;b8cb
	ld bc,00005h		;b8cd
	inc bc			;b8d0
	ld bc,0500fh		;b8d1
	add hl,bc		;b8d4
	cp c			;b8d5
	or h			;b8d6
	inc bc			;b8d7
	dec l			;b8d8
	ld b,00dh		;b8d9
	and e			;b8db
	cp c			;b8dc
	inc c			;b8dd
	ld bc,00161h		;b8de
	inc c			;b8e1
	or c			;b8e2
	nop			;b8e3
	nop			;b8e4
	ld c,007h		;b8e5
lb8e7h:
	ld bc,lb0f4h		;b8e7
	nop			;b8ea
	nop			;b8eb
	ld (bc),a		;b8ec
	inc b			;b8ed
	ld (bc),a		;b8ee
	djnz $+13		;b8ef
	nop			;b8f1
	ret po			;b8f2
	rlca			;b8f3
	ld bc,0b0fch		;b8f4
	nop			;b8f7
	nop			;b8f8
	ld c,001h		;b8f9
	djnz lb8aeh		;b8fb
	ld d,b			;b8fd
	nop			;b8fe
	ld c,001h		;b8ff
	call m,000b0h		;b901
	nop			;b904
	inc b			;b905
	nop			;b906
	dec bc			;b907
	ret po			;b908
	nop			;b909
	rlca			;b90a
	ld bc,lb110h		;b90b
	nop			;b90e
	nop			;b90f
	inc b			;b910
	nop			;b911
	dec bc			;b912
	jr nc,lb915h		;b913
lb915h:
	rlca			;b915
	ld bc,lb10ch		;b916
	nop			;b919
	nop			;b91a
	rlca			;b91b
	ld bc,lb114h		;b91c
	nop			;b91f
	nop			;b920
	inc b			;b921
	ld bc,01401h		;b922
	or c			;b925
	nop			;b926
	ld bc,01401h		;b927
	or c			;b92a
	nop			;b92b
	rst 38h			;b92c
	ld bc,lb114h		;b92d
	nop			;b930
	defb 0fdh,001h,014h ;illegal sequence	;b931
	or c			;b934
	nop			;b935
	nop			;b936
	rlca			;b937
	inc c			;b938
	nop			;b939
	ld l,l			;b93a
	ld bc,lb150h		;b93b
	jr nz,$+58		;b93e
	ld bc,lb154h		;b940
	jr $+58			;b943
	ld bc,0b158h		;b945
	jr lb97ah		;b948
	ld bc,0b15ch		;b94a
	djnz lb97fh		;b94d
	ld bc,0b160h		;b94f
	djnz lb984h		;b952
	ld bc,0b164h		;b954
	ex af,af'		;b957
	jr z,lb95bh		;b958
	ld l,b			;b95a
lb95bh:
	or c			;b95b
	nop			;b95c
	jr nz,lb960h		;b95d
	ld c,b			;b95f
lb960h:
	or c			;b960
	jr lb9a3h		;b961
	ld bc,lb14ch		;b963
	djnz lb9a8h		;b966
	ld bc,0b16ch		;b968
	ex af,af'		;b96b
	jr c,lb96fh		;b96c
	ld (hl),b		;b96e
lb96fh:
	or c			;b96f
	nop			;b970
	jr c,lb981h		;b971
	inc c			;b973
	nop			;b974
	ld l,l			;b975
	inc bc			;b976
	ld bc,07401h		;b977
lb97ah:
	or c			;b97a
	add a,b			;b97b
	jr c,lb97fh		;b97c
	ld a,b			;b97e
lb97fh:
	or c			;b97f
	add a,b			;b980
lb981h:
	jr nc,lb984h		;b981
	ld a,h			;b983
lb984h:
	or c			;b984
	adc a,b			;b985
	jr nc,lb989h		;b986
	add a,b			;b988
lb989h:
	or c			;b989
	adc a,b			;b98a
	jr nc,lb98eh		;b98b
	add a,h			;b98d
lb98eh:
	or c			;b98e
	sub b			;b98f
	jr z,lb993h		;b990
	adc a,b			;b992
lb993h:
	or c			;b993
	sbc a,b			;b994
	jr nz,$+5		;b995
	inc bc			;b997
	ld bc,0b18ch		;b998
	sub b			;b99b
	jr c,lb99fh		;b99c
	sub b			;b99e
lb99fh:
	or c			;b99f
	sbc a,b			;b9a0
	jr c,lb9b1h		;b9a1
lb9a3h:
	ex af,af'		;b9a3
	sbc a,b			;b9a4
	or h			;b9a5
	ex af,af'		;b9a6
	and e			;b9a7
lb9a8h:
	or h			;b9a8
	ex af,af'		;b9a9
	ret nc			;b9aa
	or h			;b9ab
	nop			;b9ac
	dec h			;b9ad
	ld d,0b7h		;b9ae
	nop			;b9b0
lb9b1h:
	nop			;b9b1
	nop			;b9b2
	nop			;b9b3
	ld bc,lb9d7h		;b9b4
	nop			;b9b7
	nop			;b9b8
	rlca			;b9b9
	nop			;b9ba
	ld (bc),a		;b9bb
	call po,020b9h		;b9bc
	adc a,b			;b9bf
	inc b			;b9c0
	inc bc			;b9c1
	inc bc			;b9c2
	dec b			;b9c3
	nop			;b9c4
	nop			;b9c5
	inc bc			;b9c6
	rst 28h			;b9c7
	cp c			;b9c8
	nop			;b9c9
	nop			;b9ca
	ld (bc),a		;b9cb
	dec b			;b9cc
	ld bc,06003h		;b9cd
	dec b			;b9d0
	rrca			;b9d1
	inc bc			;b9d2
	ld a,(bc)		;b9d3
	dec c			;b9d4
	jr nz,$-73		;b9d5
lb9d7h:
	ld bc,lb0f0h		;b9d7
	nop			;b9da
	nop			;b9db
	ld (bc),a		;b9dc
	inc b			;b9dd
	ld (bc),a		;b9de
	djnz lb9ech		;b9df
	nop			;b9e1
	jr nz,lb9ebh		;b9e2
	ld bc,0b0c4h		;b9e4
	nop			;b9e7
	nop			;b9e8
	dec bc			;b9e9
	and b			;b9ea
lb9ebh:
	ld b,b			;b9eb
lb9ech:
	inc bc			;b9ec
	ld e,00eh		;b9ed
	ld bc,lb094h		;b9ef
	ld b,l			;b9f2
	dec hl			;b9f3
	ld bc,lb09ch		;b9f4
	ld b,l			;b9f7
	dec hl			;b9f8
	ld bc,lb070h		;b9f9
	ld b,l			;b9fc
	dec hl			;b9fd
	inc bc			;b9fe
	dec b			;b9ff
	ld bc,lb128h		;ba00
	ld b,l			;ba03
lba04h:
	dec hl			;ba04
	ld bc,lb12ch		;ba05
	ld b,a			;ba08
	daa			;ba09
	ld bc,lb130h		;ba0a
	ld c,b			;ba0d
	inc h			;ba0e
	ld bc,lb134h		;ba0f
	ld c,c			;ba12
	inc hl			;ba13
	ld bc,lb138h		;ba14
	ccf			;ba17
	dec h			;ba18
	dec bc			;ba19
	ret po			;ba1a
	jr nz,lba20h		;ba1b
	ld d,00bh		;ba1d
	ld d,b			;ba1f
lba20h:
	ret po			;ba20
	inc bc			;ba21
	inc de			;ba22
	ld bc,lb13ch		;ba23
	ld b,e			;ba26
	ld (04001h),hl		;ba27
	or c			;ba2a
	ld b,d			;ba2b
	inc h			;ba2c
	ld bc,lb144h		;ba2d
	ld b,d			;ba30
	ld (04401h),hl		;ba31
	or c			;ba34
	ld a,01eh		;ba35
	ld bc,lb118h		;ba37
	ld a,(0011dh)		;ba3a
	jr $-77			;ba3d
	jr nc,lba5fh		;ba3f
	ld bc,lb11bh+1		;ba41
	ld hl,(00120h)		;ba44
	inc e			;ba47
	or c			;ba48
	inc h			;ba49
	inc h			;ba4a
	ld bc,lb120h		;ba4b
	ld hl,0012ah		;ba4e
	jr nz,lba04h		;ba51
	jr nz,lba87h		;ba53
	ld bc,lb120h		;ba55
	inc h			;ba58
	dec (hl)		;ba59
	ld bc,lb124h		;ba5a
	ld h,037h		;ba5d
lba5fh:
	ld bc,lb124h		;ba5f
	add hl,hl		;ba62
	jr c,lba66h		;ba63
	ld (hl),b		;ba65
lba66h:
	or b			;ba66
	add hl,hl		;ba67
	jr c,$+5		;ba68
	inc bc			;ba6a
	ld bc,lb094h		;ba6b
	daa			;ba6e
	inc (hl)		;ba6f
	ld bc,lb098h		;ba70
	dec h			;ba73
	dec (hl)		;ba74
	ld bc,lb09ch		;ba75
	inc hl			;ba78
	ld (hl),00eh		;ba79
lba7bh:
	ex af,af'		;ba7b
	ld bc,000b5h		;ba7c
	ld bc,lbab3h		;ba7f
	nop			;ba82
	nop			;ba83
	rlca			;ba84
	nop			;ba85
	ld (bc),a		;ba86
lba87h:
	cp (hl)			;ba87
	cp d			;ba88
	ld c,b			;ba89
	ld c,002h		;ba8a
	nop			;ba8c
	inc bc			;ba8d
	jp c,030bah		;ba8e
	dec d			;ba91
	dec b			;ba92
	inc bc			;ba93
	dec b			;ba94
	add hl,bc		;ba95
	add a,h			;ba96
	or h			;ba97
	rrca			;ba98
	ld d,e			;ba99
	inc bc			;ba9a
	ld (bc),a		;ba9b
	dec b			;ba9c
	ld bc,00803h		;ba9d
	rrca			;baa0
	ld c,c			;baa1
	inc bc			;baa2
	ld d,b			;baa3
	nop			;baa4
	inc bc			;baa5
	cp b			;baa6
	or (hl)			;baa7
	nop			;baa8
	nop			;baa9
	nop			;baaa
	inc bc			;baab
	ld h,h			;baac
	inc bc			;baad
	ld (de),a		;baae
	ld b,00dh		;baaf
	ld a,(bc)		;bab1
	cp e			;bab2
lbab3h:
	ld bc,lb194h		;bab3
	nop			;bab6
	nop			;bab7
	ld (bc),a		;bab8
	ex af,af'		;bab9
	dec bc			;baba
	ret nc			;babb
	nop			;babc
	rlca			;babd
	ld bc,lb1c0h		;babe
	nop			;bac1
	nop			;bac2
	dec bc			;bac3
	nop			;bac4
	ret p			;bac5
	inc bc			;bac6
	ex af,af'		;bac7
	dec bc			;bac8
	nop			;bac9
	nop			;baca
	inc bc			;bacb
	ld (bc),a		;bacc
	dec bc			;bacd
	nop			;bace
	djnz lbad4h		;bacf
	ex af,af'		;bad1
	dec bc			;bad2
	nop			;bad3
lbad4h:
	nop			;bad4
	inc bc			;bad5
	inc bc			;bad6
	dec c			;bad7
	cp (hl)			;bad8
	cp d			;bad9
	ld bc,0b1e0h		;bada
	nop			;badd
	nop			;bade
	inc b			;badf
	ld bc,0f00bh		;bae0
	nop			;bae3
	inc bc			;bae4
	inc bc			;bae5
	ld bc,lb1e4h		;bae6
	nop			;bae9
	nop			;baea
	ld bc,lb1f4h		;baeb
	ret m			;baee
	nop			;baef
	ld bc,lb1e4h		;baf0
	nop			;baf3
	nop			;baf4
	dec bc			;baf5
	ret po			;baf6
	nop			;baf7
	ld bc,lb1e8h		;baf8
	nop			;bafb
	nop			;bafc
	ld bc,0b1ech		;bafd
	nop			;bb00
	nop			;bb01
	ld bc,0b1f0h		;bb02
	nop			;bb05
	nop			;bb06
	dec c			;bb07
	ret m			;bb08
	cp d			;bb09
	ex af,af'		;bb0a
	sbc a,b			;bb0b
	or h			;bb0c
	ex af,af'		;bb0d
	xor (hl)		;bb0e
	or h			;bb0f
	ex af,af'		;bb10
	call p,000b4h		;bb11
	ld bc,lbb94h		;bb14
	nop			;bb17
	nop			;bb18
	rlca			;bb19
	inc bc			;bb1a
	dec b			;bb1b
	nop			;bb1c
	rrca			;bb1d
	ld d,0bch		;bb1e
	nop			;bb20
	nop			;bb21
	nop			;bb22
	inc bc			;bb23
	call c,0dc03h		;bb24
	inc bc			;bb27
	ld d,a			;bb28
	nop			;bb29
	ld (bc),a		;bb2a
	and c			;bb2b
	cp e			;bb2c
	inc h			;bb2d
	ld l,b			;bb2e
	ld bc,02203h		;bb2f
	dec b			;bb32
	ld bc,01303h		;bb33
	nop			;bb36
	ld a,(bc)		;bb37
	cp h			;bb38
	cp e			;bb39
	and b			;bb3a
	jr z,lbb43h		;bb3b
	inc bc			;bb3d
	add a,d			;bb3e
	nop			;bb3f
	inc bc			;bb40
	ret			;bb41
	cp e			;bb42
lbb43h:
	ret po			;bb43
	jr lbb4bh		;bb44
	nop			;bb46
	inc b			;bb47
	jp nc,0d8bbh		;bb48
lbb4bh:
	ld b,b			;bb4b
	dec b			;bb4c
	inc bc			;bb4d
	dec l			;bb4e
	nop			;bb4f
	dec b			;bb50
	in a,(0bbh)		;bb51
	ret m			;bb53
	ld b,001h		;bb54
	nop			;bb56
	ld b,004h		;bb57
	cp h			;bb59
	ret nc			;bb5a
	add hl,sp		;bb5b
	ld (bc),a		;bb5c
	inc bc			;bb5d
	ld e,000h		;bb5e
	rlca			;bb60
	dec c			;bb61
	cp h			;bb62
	ret nc			;bb63
	dec c			;bb64
	inc bc			;bb65
	inc bc			;bb66
	ld l,(hl)		;bb67
	nop			;bb68
	ex af,af'		;bb69
	call po,sub_a8bbh	;bb6a
	dec e			;bb6d
	inc b			;bb6e
	inc bc			;bb6f
	call z,01d00h		;bb70
	call nc,000bch		;bb73
	nop			;bb76
	ld bc,01903h		;bb77
	nop			;bb7a
	ex af,af'		;bb7b
	cp b			;bb7c
	or (hl)			;bb7d
	nop			;bb7e
	nop			;bb7f
	nop			;bb80
	inc bc			;bb81
	jr z,lbb93h		;bb82
	add a,h			;bb84
	inc bc			;bb85
	dec l			;bb86
	ex af,af'		;bb87
	ld bc,003b5h		;bb88
	ld (de),a		;bb8b
	dec b			;bb8c
	rrca			;bb8d
	inc bc			;bb8e
	jr z,lbb97h		;bb8f
	dec c			;bb91
	ld a,e			;bb92
lbb93h:
	cp d			;bb93
lbb94h:
	ld bc,lb198h		;bb94
lbb97h:
	nop			;bb97
lbb98h:
	nop			;bb98
	ld (bc),a		;bb99
	inc b			;bb9a
	ld (bc),a		;bb9b
	ex af,af'		;bb9c
	dec bc			;bb9d
	jr nz,lbba0h		;bb9e
lbba0h:
	rlca			;bba0
	ld bc,lb1a0h		;bba1
	nop			;bba4
	nop			;bba5
	dec bc			;bba6
	nop			;bba7
	ret nz			;bba8
	inc b			;bba9
	ld bc,0100bh		;bbaa
	ret nz			;bbad
	inc bc			;bbae
	ld a,(bc)		;bbaf
	dec bc			;bbb0
	jr nz,$-46		;bbb1
	inc bc			;bbb3
	ld a,(bc)		;bbb4
	dec bc			;bbb5
	jr nz,lbb98h		;bbb6
	inc bc			;bbb8
	scf			;bbb9
	ld c,007h		;bbba
	ld bc,lb1a4h		;bbbc
	nop			;bbbf
	nop			;bbc0
	dec bc			;bbc1
	ret pe			;bbc2
	nop			;bbc3
	inc bc			;bbc4
	ret z			;bbc5
	inc bc			;bbc6
	ld h,h			;bbc7
	ld c,001h		;bbc8
	call c,000b1h		;bbca
	nop			;bbcd
	dec bc			;bbce
	ld c,b			;bbcf
	nop			;bbd0
	rlca			;bbd1
	ld bc,0b1d8h		;bbd2
	nop			;bbd5
	nop			;bbd6
	dec bc			;bbd7
	ld d,b			;bbd8
	nop			;bbd9
	rlca			;bbda
	ld bc,lb1d4h		;bbdb
	nop			;bbde
	nop			;bbdf
	dec bc			;bbe0
	jr c,lbbe3h		;bbe1
lbbe3h:
	rlca			;bbe3
	ld bc,lb1c8h		;bbe4
	nop			;bbe7
	nop			;bbe8
	dec bc			;bbe9
	jr z,lbbech		;bbea
lbbech:
	inc bc			;bbec
	ld h,b			;bbed
	nop			;bbee
	ld e,090h		;bbef
	cp l			;bbf1
	nop			;bbf2
	nop			;bbf3
	nop			;bbf4
	ld bc,lb1c4h		;bbf5
	nop			;bbf8
	nop			;bbf9
	ld bc,lb1c8h		;bbfa
	nop			;bbfd
	nop			;bbfe
	inc bc			;bbff
	inc b			;bc00
	dec c			;bc01
	push af			;bc02
	cp e			;bc03
	ld bc,lb1cch		;bc04
	nop			;bc07
	nop			;bc08
	dec bc			;bc09
	jr c,lbc0ch		;bc0a
lbc0ch:
	rlca			;bc0c
	ld bc,0b1d0h		;bc0d
	nop			;bc10
	nop			;bc11
	dec bc			;bc12
	ld d,b			;bc13
	nop			;bc14
	rlca			;bc15
	nop			;bc16
	djnz $-28		;bc17
	cp h			;bc19
	dec sp			;bc1a
	ld h,b			;bc1b
	ld bc,02803h		;bc1c
	nop			;bc1f
	ld de,lbceah		;bc20
	dec hl			;bc23
	ld h,b			;bc24
	ld bc,01903h		;bc25
	nop			;bc28
	ld (de),a		;bc29
	jp p,030bch		;bc2a
	ld h,b			;bc2d
	ld bc,00f03h		;bc2e
	nop			;bc31
	inc de			;bc32
	jp m,028bch		;bc33
	ld h,b			;bc36
	ld bc,02503h		;bc37
	nop			;bc3a
	inc d			;bc3b
	ld (bc),a		;bc3c
	cp l			;bc3d
	inc h			;bc3e
	ld h,b			;bc3f
	ld bc,01903h		;bc40
	nop			;bc43
	dec d			;bc44
	ld a,(bc)		;bc45
	cp l			;bc46
	jr z,lbca9h		;bc47
	ld bc,00f03h		;bc49
	nop			;bc4c
	ld d,012h		;bc4d
	cp l			;bc4f
	inc h			;bc50
	ld h,b			;bc51
	ld bc,00f03h		;bc52
	nop			;bc55
	rla			;bc56
	ld a,(de)		;bc57
	cp l			;bc58
	jr nc,lbcbbh		;bc59
	ld bc,02303h		;bc5b
	nop			;bc5e
	jr lbc83h		;bc5f
	cp l			;bc61
	inc (hl)		;bc62
	ld h,b			;bc63
	ld bc,01903h		;bc64
	nop			;bc67
	add hl,de		;bc68
	ld hl,(030bdh)		;bc69
	ld h,b			;bc6c
	ld bc,01703h		;bc6d
	nop			;bc70
	ld a,(de)		;bc71
	ld (030bdh),a		;bc72
	ld h,b			;bc75
	ld bc,00d03h		;bc76
	nop			;bc79
	dec de			;bc7a
	ld a,(034bdh)		;bc7b
	ld h,b			;bc7e
	ld bc,02503h		;bc7f
	nop			;bc82
lbc83h:
	ld de,lbd42h		;bc83
	jr z,lbce8h		;bc86
	ld bc,01903h		;bc88
	nop			;bc8b
	ld (de),a		;bc8c
	ld c,d			;bc8d
	cp l			;bc8e
	inc (hl)		;bc8f
	ld h,b			;bc90
	ld bc,00f03h		;bc91
	nop			;bc94
	inc de			;bc95
	ld d,d			;bc96
	cp l			;bc97
	jr nc,lbcfah		;bc98
	ld bc,03003h		;bc9a
	nop			;bc9d
	inc d			;bc9e
	ld e,d			;bc9f
	cp l			;bca0
	djnz $+98		;bca1
	ld bc,01903h		;bca3
	nop			;bca6
	dec d			;bca7
	ld h,d			;bca8
lbca9h:
	cp l			;bca9
	dec hl			;bcaa
	ld h,b			;bcab
	ld bc,01403h		;bcac
	nop			;bcaf
	ld d,06ah		;bcb0
	cp l			;bcb2
	jr nc,lbd15h		;bcb3
	ld bc,03203h		;bcb5
	nop			;bcb8
	rla			;bcb9
	ld (hl),d		;bcba
lbcbbh:
	cp l			;bcbb
	dec hl			;bcbc
	ld h,b			;bcbd
	ld bc,00e03h		;bcbe
	nop			;bcc1
	jr lbd3eh		;bcc2
	cp l			;bcc4
	ld c,b			;bcc5
	ld h,b			;bcc6
	ld bc,00e03h		;bcc7
	nop			;bcca
	add hl,de		;bccb
	add a,d			;bccc
	cp l			;bccd
	jr c,lbd30h		;bcce
	ld bc,06203h		;bcd0
	ld c,001h		;bcd3
	ld c,h			;bcd5
	or d			;bcd6
	dec de			;bcd7
	ld h,b			;bcd8
	dec bc			;bcd9
	nop			;bcda
	ret po			;bcdb
	inc bc			;bcdc
	ld (0000bh),a		;bcdd
	nop			;bce0
	rlca			;bce1
	ld bc,lb1f8h		;bce2
	nop			;bce5
	nop			;bce6
	dec c			;bce7
lbce8h:
	adc a,d			;bce8
	cp l			;bce9
lbceah:
	ld bc,0b1fch		;bcea
	nop			;bced
	nop			;bcee
	dec c			;bcef
	adc a,d			;bcf0
	cp l			;bcf1
	ld bc,lb200h		;bcf2
	nop			;bcf5
	nop			;bcf6
	dec c			;bcf7
	adc a,d			;bcf8
	cp l			;bcf9
lbcfah:
	ld bc,lb204h		;bcfa
	nop			;bcfd
	nop			;bcfe
	dec c			;bcff
	adc a,d			;bd00
	cp l			;bd01
	ld bc,lb208h		;bd02
	nop			;bd05
	nop			;bd06
	dec c			;bd07
	adc a,d			;bd08
	cp l			;bd09
	ld bc,lb20ch		;bd0a
	nop			;bd0d
	nop			;bd0e
	dec c			;bd0f
	adc a,d			;bd10
	cp l			;bd11
	ld bc,lb210h		;bd12
lbd15h:
	nop			;bd15
	nop			;bd16
	dec c			;bd17
	adc a,d			;bd18
	cp l			;bd19
	ld bc,0b214h		;bd1a
	nop			;bd1d
	nop			;bd1e
	dec c			;bd1f
	adc a,d			;bd20
	cp l			;bd21
	ld bc,lb218h		;bd22
	nop			;bd25
	nop			;bd26
	dec c			;bd27
	adc a,d			;bd28
	cp l			;bd29
	ld bc,0b21ch		;bd2a
	nop			;bd2d
	nop			;bd2e
	dec c			;bd2f
lbd30h:
	adc a,d			;bd30
	cp l			;bd31
	ld bc,lb220h		;bd32
	nop			;bd35
	nop			;bd36
	dec c			;bd37
	adc a,d			;bd38
	cp l			;bd39
	ld bc,lb224h		;bd3a
	nop			;bd3d
lbd3eh:
	nop			;bd3e
	dec c			;bd3f
	adc a,d			;bd40
	cp l			;bd41
lbd42h:
	ld bc,lb228h		;bd42
	nop			;bd45
	nop			;bd46
	dec c			;bd47
	adc a,d			;bd48
	cp l			;bd49
	ld bc,lb22ch		;bd4a
lbd4dh:
	nop			;bd4d
	nop			;bd4e
	dec c			;bd4f
	adc a,d			;bd50
	cp l			;bd51
	ld bc,lb230h		;bd52
lbd55h:
	nop			;bd55
	nop			;bd56
	dec c			;bd57
	adc a,d			;bd58
	cp l			;bd59
	ld bc,0b234h		;bd5a
lbd5dh:
	nop			;bd5d
	nop			;bd5e
	dec c			;bd5f
	adc a,d			;bd60
	cp l			;bd61
	ld bc,lb238h		;bd62
lbd65h:
	nop			;bd65
	nop			;bd66
	dec c			;bd67
	adc a,d			;bd68
	cp l			;bd69
	ld bc,0b23ch		;bd6a
lbd6dh:
	nop			;bd6d
	nop			;bd6e
	dec c			;bd6f
	adc a,d			;bd70
	cp l			;bd71
	ld bc,lb240h		;bd72
	nop			;bd75
	nop			;bd76
	dec c			;bd77
	adc a,d			;bd78
	cp l			;bd79
	ld bc,lb244h		;bd7a
	nop			;bd7d
	nop			;bd7e
	dec c			;bd7f
	adc a,d			;bd80
	cp l			;bd81
	ld bc,0b248h		;bd82
	nop			;bd85
	nop			;bd86
	dec c			;bd87
	adc a,d			;bd88
	cp l			;bd89
	dec bc			;bd8a
	nop			;bd8b
	ret po			;bd8c
	inc bc			;bd8d
	ld l,b			;bd8e
	ld c,010h		;bd8f
	call nz,01070h		;bd91
	or b			;bd94
	ld (hl),b		;bd95
	inc bc			;bd96
	inc bc			;bd97
	djnz lbd5dh		;bd98
	ld h,b			;bd9a
	djnz lbd4dh		;bd9b
	ld d,b			;bd9d
	inc bc			;bd9e
	ld bc,0c210h		;bd9f
	ld d,b			;bda2
	djnz lbd55h		;bda3
	jr nc,lbdaah		;bda5
	ld bc,0c110h		;bda7
lbdaah:
	ld b,b			;bdaa
	djnz lbd5dh		;bdab
	djnz lbdb2h		;bdad
	ld bc,0c210h		;bdaf
lbdb2h:
	ld d,b			;bdb2
	djnz lbd65h		;bdb3
	jr nc,lbdbah		;bdb5
	ld bc,0c310h		;bdb7
lbdbah:
	ld h,b			;bdba
	djnz lbd6dh		;bdbb
	ld d,b			;bdbd
	inc bc			;bdbe
	ld bc,0900dh		;bdbf
	cp l			;bdc2
sub_bdc3h:
	ld hl,lbee9h		;bdc3
	jr lbdcbh		;bdc6
sub_bdc8h:
	ld hl,lbde7h		;bdc8
lbdcbh:
	ld a,001h		;bdcb
	ld (0c91bh),a		;bdcd
	call sub_bdd8h		;bdd0
	xor a			;bdd3
	ld (0c91bh),a		;bdd4
	ret			;bdd7
sub_bdd8h:
	ld e,(hl)		;bdd8
	inc hl			;bdd9
	ld d,(hl)		;bdda
	inc hl			;bddb
	ld a,d			;bddc
	or e			;bddd
	ret z			;bdde
	ld a,0feh		;bddf
	call 06009h		;bde1
	inc hl			;bde4
	jr sub_bdd8h		;bde5
lbde7h:
	nop			;bde7
	and b			;bde8
	ld d,e			;bde9
	ld d,h			;bdea
	ld b,c			;bdeb
	ld b,(hl)		;bdec
	ld b,(hl)		;bded
	nop			;bdee
	nop			;bdef
	and h			;bdf0
	dec l			;bdf1
	ld d,b			;bdf2
	ld d,d			;bdf3
	ld c,a			;bdf4
	ld b,a			;bdf5
	ld d,d			;bdf6
	ld b,c			;bdf7
	ld c,l			;bdf8
	dec l			;bdf9
	nop			;bdfa
	nop			;bdfb
	xor b			;bdfc
	ld d,h			;bdfd
	ld l,041h		;bdfe
	ld b,h			;be00
	ld b,c			;be01
	ld b,e			;be02
	ld c,b			;be03
	ld c,c			;be04
	nop			;be05
	nop			;be06
	xor h			;be07
	ld d,d			;be08
	ld l,053h		;be09
	ld b,c			;be0b
	ld b,a			;be0c
	ld c,c			;be0d
	ld d,e			;be0e
	ld b,c			;be0f
	ld c,e			;be10
	ld b,c			;be11
	nop			;be12
	nop			;be13
	or b			;be14
	dec l			;be15
	ld b,e			;be16
	ld c,b			;be17
	ld b,c			;be18
	ld d,d			;be19
	ld b,c			;be1a
	ld b,e			;be1b
	ld d,h			;be1c
	ld b,l			;be1d
	ld d,d			;be1e
	dec l			;be1f
	nop			;be20
	nop			;be21
	or h			;be22
	ld c,b			;be23
	ld l,04dh		;be24
	ld b,c			;be26
	ld c,e			;be27
	ld c,c			;be28
	ld d,h			;be29
	ld b,c			;be2a
	ld c,(hl)		;be2b
	ld c,c			;be2c
	nop			;be2d
	nop			;be2e
	cp b			;be2f
	ld d,h			;be30
	ld l,04bh		;be31
	ld c,c			;be33
	ld c,(hl)		;be34
	ld c,a			;be35
	ld d,e			;be36
	ld c,b			;be37
	ld c,c			;be38
	ld d,h			;be39
	ld b,c			;be3a
	nop			;be3b
	nop			;be3c
	cp h			;be3d
	ld d,h			;be3e
	ld l,045h		;be3f
	ld b,a			;be41
	ld d,l			;be42
	ld b,e			;be43
	ld c,b			;be44
	ld c,c			;be45
	nop			;be46
	nop			;be47
	ret nz			;be48
	dec l			;be49
	ld d,e			;be4a
	ld c,a			;be4b
	ld d,l			;be4c
	ld c,(hl)		;be4d
	ld b,h			;be4e
	dec l			;be4f
	nop			;be50
	nop			;be51
	call nz,02e54h		;be52
	ld d,e			;be55
	ld b,l			;be56
	ld c,e			;be57
	ld c,c			;be58
	ld d,h			;be59
	ld c,a			;be5a
	nop			;be5b
	nop			;be5c
	ret z			;be5d
	ld c,e			;be5e
	ld l,055h		;be5f
	ld b,l			;be61
	ld c,b			;be62
	ld b,c			;be63
	ld d,d			;be64
	ld b,c			;be65
	nop			;be66
	nop			;be67
	call z,02e59h		;be68
	ld c,l			;be6b
	ld b,c			;be6c
	ld c,(hl)		;be6d
	ld c,(hl)		;be6e
	ld c,a			;be6f
	nop			;be70
	nop			;be71
	ret nc			;be72
	dec l			;be73
	ld d,b			;be74
	ld b,h			;be75
	jr nz,$+85		;be76
	ld d,h			;be78
	ld b,c			;be79
	ld b,(hl)		;be7a
	ld b,(hl)		;be7b
	dec l			;be7c
	nop			;be7d
	nop			;be7e
	call nc,02e4eh		;be7f
	ld d,e			;be82
	ld b,c			;be83
	ld d,h			;be84
	ld c,a			;be85
	ld c,b			;be86
	nop			;be87
	nop			;be88
	ret c			;be89
	ld c,b			;be8a
	ld l,053h		;be8b
	ld d,l			;be8d
	ld c,l			;be8e
	ld c,c			;be8f
	ld b,h			;be90
	ld b,c			;be91
	nop			;be92
	nop			;be93
	call c,0532dh		;be94
	ld d,b			;be97
	ld b,l			;be98
	ld b,e			;be99
	ld c,c			;be9a
	ld b,c			;be9b
	ld c,h			;be9c
	jr nz,lbef3h		;be9d
	ld c,b			;be9f
	ld b,c			;bea0
	ld c,(hl)		;bea1
	ld c,e			;bea2
	ld d,e			;bea3
	dec l			;bea4
	nop			;bea5
	nop			;bea6
	ret po			;bea7
	ld d,d			;bea8
	ld l,053h		;bea9
	ld c,b			;beab
	ld c,a			;beac
	ld b,a			;bead
	ld b,c			;beae
	ld c,e			;beaf
	ld c,c			;beb0
	nop			;beb1
	nop			;beb2
	call po,02e4eh		;beb3
	ld c,l			;beb6
	ld b,c			;beb7
	ld d,h			;beb8
	ld d,e			;beb9
	ld d,l			;beba
	ld c,c			;bebb
	nop			;bebc
	nop			;bebd
	ret pe			;bebe
	ld d,b			;bebf
	ld d,d			;bec0
	ld b,l			;bec1
	ld d,e			;bec2
	ld b,l			;bec3
	ld c,(hl)		;bec4
	ld d,h			;bec5
	ld b,l			;bec6
	ld b,h			;bec7
	nop			;bec8
	nop			;bec9
	call pe,05942h		;beca
	nop			;becd
	nop			;bece
	ret p			;becf
	ld c,e			;bed0
	ld c,a			;bed1
	ld c,(hl)		;bed2
	ld b,c			;bed3
	ld c,l			;bed4
	ld c,c			;bed5
	nop			;bed6
	nop			;bed7
	call p,02040h		;bed8
	ld c,e			;bedb
	ld c,a			;bedc
	ld c,(hl)		;bedd
	ld b,c			;bede
	ld c,l			;bedf
	ld c,c			;bee0
	jr nz,lbf14h		;bee1
	add hl,sp		;bee3
	jr c,lbf1fh		;bee4
	nop			;bee6
	nop			;bee7
	nop			;bee8
lbee9h:
	jr nz,$-30		;bee9
	ld c,c			;beeb
	ld c,(hl)		;beec
	jr nz,lbf43h		;beed
	ld c,b			;beef
	ld b,l			;bef0
	jr nz,lbf46h		;bef1
lbef3h:
	ld b,h			;bef3
	ld l,031h		;bef4
	jr c,lbf31h		;bef6
	nop			;bef8
	nop			;bef9
	add a,b			;befa
	ld b,h			;befb
	ld b,c			;befc
	ld c,(hl)		;befd
lbefeh:
	ld b,a			;befe
	ld b,l			;beff
	ld d,d			;bf00
	jr nz,lbf57h		;bf01
	ld c,b			;bf03
	ld d,d			;bf04
	ld b,l			;bf05
	ld b,c			;bf06
	ld d,h			;bf07
	ld b,l			;bf08
	ld c,(hl)		;bf09
	ld b,h			;bf0a
	nop			;bf0b
	jr nz,lbefeh		;bf0c
	ld c,a			;bf0e
	ld d,l			;bf0f
	ld d,d			;bf10
	jr nz,lbf5ah		;bf11
	ld b,c			;bf13
lbf14h:
	ld c,h			;bf14
	ld b,c			;bf15
	ld e,b			;bf16
	ld e,c			;bf17
	nop			;bf18
	inc d			;bf19
	call m,02020h		;bf1a
	jr nz,lbf3fh		;bf1d
lbf1fh:
	jr nz,lbf41h		;bf1f
	jr nz,lbf43h		;bf21
	jr nz,lbf45h		;bf23
	jr nz,lbf47h		;bf25
	jr nz,lbf49h		;bf27
	jr nz,lbf4bh		;bf29
	nop			;bf2b
	nop			;bf2c
	nop			;bf2d
	rst 38h			;bf2e
	rst 38h			;bf2f
	rst 38h			;bf30
lbf31h:
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
lbf3fh:
	rst 38h			;bf3f
	rst 38h			;bf40
lbf41h:
	rst 38h			;bf41
	rst 38h			;bf42
lbf43h:
	rst 38h			;bf43
	rst 38h			;bf44
lbf45h:
	rst 38h			;bf45
lbf46h:
	rst 38h			;bf46
lbf47h:
	rst 38h			;bf47
	rst 38h			;bf48
lbf49h:
	rst 38h			;bf49
	rst 38h			;bf4a
lbf4bh:
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
lbf57h:
	rst 38h			;bf57
	rst 38h			;bf58
	rst 38h			;bf59
lbf5ah:
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
