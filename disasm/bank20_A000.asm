; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank20_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank20.bin

	org 0a000h

	nop			;a000
	rrca			;a001
la002h:
	ld bc,00004h		;a002
	add a,a			;a005
	ret nz			;a006
	ret m			;a007
	nop			;a008
	nop			;a009
	ccf			;a00a
	call m,003f0h		;a00b
	nop			;a00e
	adc a,e			;a00f
	add a,b			;a010
	ret nz			;a011
	ret po			;a012
	ret nc			;a013
	adc a,b			;a014
	call m,0f0fch		;a015
	add a,b			;a018
	call m,00400h		;a019
	add a,b			;a01c
	add a,(hl)		;a01d
	rrca			;a01e
	rst 38h			;a01f
	call m,0e0fch		;a020
	ld a,a			;a023
	inc bc			;a024
	ccf			;a025
	adc a,b			;a026
	add a,b			;a027
	call m,08000h		;a028
	add a,b			;a02b
	ld bc,0f8fch		;a02c
	inc b			;a02f
	ret p			;a030
	adc a,h			;a031
	ret nz			;a032
	djnz la065h		;a033
	ld h,b			;a035
	nop			;a036
	inc bc			;a037
	rst 38h			;a038
	ret m			;a039
	inc bc			;a03a
	ld bc,00000h		;a03b
	inc bc			;a03e
	ret p			;a03f
	inc bc			;a040
	ret m			;a041
	ld (bc),a		;a042
	call m,01f89h		;a043
	ccf			;a046
	ld a,a			;a047
	call m,0c0f0h		;a048
	ret m			;a04b
	ret nz			;a04c
	ld bc,00006h		;a04d
	add a,(hl)		;a050
	ld a,a			;a051
	nop			;a052
	ret nz			;a053
	ld a,a			;a054
	ccf			;a055
	ccf			;a056
	inc bc			;a057
	rra			;a058
	adc a,c			;a059
	ld a,a			;a05a
	ccf			;a05b
	rra			;a05c
	ret p			;a05d
	ret m			;a05e
	call m,0f0feh		;a05f
	ld bc,00005h		;a062
la065h:
	add a,h			;a065
	cp 07dh			;a066
	ret po			;a068
	rst 38h			;a069
	ld b,0f0h		;a06a
	inc bc			;a06c
	ret m			;a06d
la06eh:
	ld (bc),a		;a06e
	ret p			;a06f
	adc a,b			;a070
	rra			;a071
	ccf			;a072
	ccf			;a073
	rst 38h			;a074
	nop			;a075
	ret p			;a076
	call m,005c3h		;a077
	rst 38h			;a07a
	add a,a			;a07b
	rra			;a07c
	inc bc			;a07d
	nop			;a07e
	call m,0320eh		;a07f
	cp 003h			;a082
	ld a,a			;a084
	inc bc			;a085
	ccf			;a086
	xor d			;a087
	rra			;a088
	jp 03f0fh		;a089
	jr nc,$-62		;a08c
	add a,b			;a08e
	nop			;a08f
	nop			;a090
	rlca			;a091
	ei			;a092
	ret m			;a093
	call m,0fce0h		;a094
	ret m			;a097
	ret po			;a098
	rst 38h			;a099
	nop			;a09a
	ret nz			;a09b
	ret po			;a09c
	ret po			;a09d
	call m,0e0f8h		;a09e
	nop			;a0a1
	ret nz			;a0a2
	ret nz			;a0a3
	rlca			;a0a4
	ld bc,00301h		;a0a5
	rlca			;a0a8
	nop			;a0a9
	ret po			;a0aa
	ret po			;a0ab
	jr c,la06eh		;a0ac
	nop			;a0ae
	nop			;a0af
	cp 007h			;a0b0
	dec b			;a0b2
	nop			;a0b3
	add a,d			;a0b4
	ld a,a			;a0b5
	rra			;a0b6
	inc bc			;a0b7
	ret p			;a0b8
	inc bc			;a0b9
	ret m			;a0ba
	inc bc			;a0bb
	call m,0f28eh		;a0bc
	jp po,080c2h		;a0bf
	cp 0fch			;a0c2
	ret p			;a0c4
	nop			;a0c5
	nop			;a0c6
	ret p			;a0c7
	ld a,a			;a0c8
	inc bc			;a0c9
	ccf			;a0ca
	rrca			;a0cb
	inc b			;a0cc
	inc bc			;a0cd
	adc a,b			;a0ce
	ld bc,03f07h		;a0cf
	rra			;a0d2
	rlca			;a0d3
	nop			;a0d4
	ret po			;a0d5
	jp 0f805h		;a0d6
	adc a,b			;a0d9
	rst 28h			;a0da
	rrca			;a0db
	rlca			;a0dc
	inc bc			;a0dd
	ld de,08cf8h		;a0de
	ld b,000h		;a0e1
	ld (bc),a		;a0e3
	djnz la0e8h		;a0e4
	ret po			;a0e6
	ld (bc),a		;a0e7
la0e8h:
	call po,04307h		;a0e8
	ld h,a			;a0eb
	ld (0310ch),a		;a0ec
	rrca			;a0ef
	ld b,b			;a0f0
	inc b			;a0f1
	ld b,e			;a0f2
	dec b			;a0f3
	ld (04318h),a		;a0f4
	ld b,0e4h		;a0f7
	ld c,d			;a0f9
	ld b,e			;a0fa
	ld (bc),a		;a0fb
	ld c,081h		;a0fc
	call po,04308h		;a0fe
	inc bc			;a101
	call po,04303h		;a102
	add a,(hl)		;a105
	ld (03221h),a		;a106
	ld b,e			;a109
	ld (00421h),a		;a10a
	pop af			;a10d
	add a,e			;a10e
	jp p,042e2h		;a10f
	rlca			;a112
	ld b,e			;a113
	rlca			;a114
	ld (0310bh),a		;a115
	ex af,af'		;a118
	ld (02117h),a		;a119
	ld b,0f1h		;a11c
	add hl,bc		;a11e
	ld hl,0f106h		;a11f
	ld a,(bc)		;a122
	ld (de),a		;a123
	inc b			;a124
	pop af			;a125
	add a,c			;a126
	ld (de),a		;a127
	dec c			;a128
	inc hl			;a129
	ld a,(bc)		;a12a
	jr nz,la12fh		;a12b
	ld l,002h		;a12d
la12fh:
	ld b,d			;a12f
	add a,h			;a130
	ld (04242h),a		;a131
	ld hl,01409h		;a134
	ld (bc),a		;a137
	ld b,e			;a138
	ld (bc),a		;a139
	ex (sp),hl		;a13a
	inc b			;a13b
	call po,02302h		;a13c
	ld (bc),a		;a13f
	pop hl			;a140
	inc b			;a141
	call po,04303h		;a142
	ld (bc),a		;a145
	ex (sp),hl		;a146
	ld (bc),a		;a147
	call po,04303h		;a148
	add a,e			;a14b
	call po,04343h		;a14c
	ex af,af'		;a14f
	ld (0e281h),a		;a150
	inc bc			;a153
	ret po			;a154
	dec b			;a155
	call po,04205h		;a156
	inc b			;a159
	ld (02103h),a		;a15a
	add a,d			;a15d
	ld (00421h),a		;a15e
	rra			;a161
	ld (bc),a		;a162
	di			;a163
	dec b			;a164
	ld (02103h),a		;a165
	adc a,c			;a168
	ld (0f441h),a		;a169
	call p,02121h		;a16c
	cpl			;a16f
	cpl			;a170
	ld hl,0f106h		;a171
	add a,c			;a174
	di			;a175
	ld b,032h		;a176
	ld b,031h		;a178
	inc bc			;a17a
	ret po			;a17b
	inc bc			;a17c
	call po,04309h		;a17d
	add a,l			;a180
	ld (0f1f1h),a		;a181
	ret p			;a184
	djnz la18eh		;a185
	jr nz,la18ch		;a187
	jp po,04281h		;a189
la18ch:
	rlca			;a18c
	ld b,e			;a18d
la18eh:
	ld (bc),a		;a18e
	ld (04002h),a		;a18f
	add a,l			;a192
	ld b,e			;a193
	ld (01f21h),a		;a194
	jp p,02305h		;a197
la19ah:
	add a,a			;a19a
	inc de			;a19b
	ld hl,02f21h		;a19c
	ld c,00eh		;a19f
	call po,0430ah		;a1a1
	add a,h			;a1a4
	jr nc,la19ah		;a1a5
	di			;a1a7
	ld b,b			;a1a8
	ld a,(bc)		;a1a9
	ld b,e			;a1aa
	ld b,0e4h		;a1ab
	ld (bc),a		;a1ad
	ld b,e			;a1ae
	add a,e			;a1af
	ld b,d			;a1b0
	pop hl			;a1b1
	pop hl			;a1b2
	inc b			;a1b3
	call po,0438ah		;a1b4
	ld b,d			;a1b7
	pop hl			;a1b8
	pop hl			;a1b9
	call po,0f1e4h		;a1ba
	pop af			;a1bd
	ld bc,003f0h		;a1be
	ret po			;a1c1
	inc bc			;a1c2
	ld b,b			;a1c3
	add a,c			;a1c4
	ld a,004h		;a1c5
	call po,04307h		;a1c7
	dec b			;a1ca
	ld (03102h),a		;a1cb
	ld (bc),a		;a1ce
	ld hl,02f81h		;a1cf
	inc b			;a1d2
	ld b,d			;a1d3
	add a,c			;a1d4
	ld b,e			;a1d5
	inc bc			;a1d6
	ld (04003h),a		;a1d7
	ld (bc),a		;a1da
	ld b,e			;a1db
	inc bc			;a1dc
	ld (04304h),a		;a1dd
	ld (bc),a		;a1e0
	ex (sp),hl		;a1e1
	ld (bc),a		;a1e2
	call po,03202h		;a1e3
	add a,(hl)		;a1e6
	ld hl,04331h		;a1e7
	ld (0ff21h),a		;a1ea
	dec b			;a1ed
	ld hl,0f103h		;a1ee
	nop			;a1f1
	ld b,000h		;a1f2
	add a,d			;a1f4
	inc bc			;a1f5
	rrca			;a1f6
	inc bc			;a1f7
	nop			;a1f8
	add a,l			;a1f9
	inc bc			;a1fa
	ccf			;a1fb
	rst 38h			;a1fc
	rst 38h			;a1fd
	call m,00004h		;a1fe
	ld (bc),a		;a201
	ld bc,00382h		;a202
	rlca			;a205
	inc b			;a206
	nop			;a207
	add a,h			;a208
	ret po			;a209
	call m,0e0f8h		;a20a
	inc bc			;a20d
	nop			;a20e
	add a,d			;a20f
	inc bc			;a210
	ccf			;a211
	inc bc			;a212
	rst 38h			;a213
	dec b			;a214
	nop			;a215
	inc bc			;a216
	rst 38h			;a217
	ld b,000h		;a218
	add a,d			;a21a
	ret po			;a21b
	call m,00003h		;a21c
	add a,d			;a21f
	ret nz			;a220
	ret m			;a221
	inc bc			;a222
	rst 38h			;a223
	adc a,b			;a224
	nop			;a225
	add a,b			;a226
	ret nz			;a227
	ret po			;a228
	ret p			;a229
	ret m			;a22a
	call m,004feh		;a22b
	nop			;a22e
	inc bc			;a22f
	add a,b			;a230
	inc bc			;a231
la232h:
	ret nz			;a232
	inc bc			;a233
	ret po			;a234
	inc bc			;a235
	ret p			;a236
	adc a,b			;a237
	ret nz			;a238
	call m,0c0f0h		;a239
	nop			;a23c
	nop			;a23d
	add a,b			;a23e
	add a,b			;a23f
	inc b			;a240
	nop			;a241
	add a,(hl)		;a242
	ret p			;a243
	rst 38h			;a244
	rra			;a245
	inc bc			;a246
	add a,b			;a247
	ret nz			;a248
	inc bc			;a249
	ret po			;a24a
	sub b			;a24b
	ret p			;a24c
	call p,007f6h		;a24d
	ld a,a			;a250
	ret p			;a251
	nop			;a252
	ret po			;a253
	call m,0e0feh		;a254
	rlca			;a257
	ld a,a			;a258
	ret p			;a259
	nop			;a25a
	rst 38h			;a25b
	inc bc			;a25c
	ret p			;a25d
	inc b			;a25e
	rst 38h			;a25f
	sbc a,(hl)		;a260
	ld a,a			;a261
	rrca			;a262
	call m,0f6fdh		;a263
	rrca			;a266
	rrca			;a267
	rra			;a268
	rra			;a269
	ccf			;a26a
	ccf			;a26b
	ld a,a			;a26c
	nop			;a26d
	ret po			;a26e
	ret po			;a26f
	jr c,la232h		;a270
	ret p			;a272
	call m,0c0f9h		;a273
	cp 00fh			;a276
	ld a,a			;a278
	inc bc			;a279
	rra			;a27a
	inc bc			;a27b
	add a,b			;a27c
	add a,b			;a27d
	ret p			;a27e
	inc b			;a27f
	rst 38h			;a280
	ld (bc),a		;a281
	nop			;a282
	or c			;a283
	add a,e			;a284
	inc c			;a285
	nop			;a286
	ret m			;a287
	rst 0			;a288
	ccf			;a289
	rra			;a28a
	rlca			;a28b
	inc bc			;a28c
	inc bc			;a28d
	rst 38h			;a28e
	ret p			;a28f
	rlca			;a290
	ccf			;a291
	rra			;a292
	rlca			;a293
	inc bc			;a294
	inc bc			;a295
	rst 38h			;a296
	ret p			;a297
	rlca			;a298
	ccf			;a299
	rra			;a29a
	rlca			;a29b
	rlca			;a29c
	rrca			;a29d
	rra			;a29e
	ccf			;a29f
	ld a,a			;a2a0
	ld a,a			;a2a1
	rst 38h			;a2a2
	rlca			;a2a3
	rlca			;a2a4
	rrca			;a2a5
	rra			;a2a6
	ccf			;a2a7
	ld a,a			;a2a8
	ld a,a			;a2a9
	ret m			;a2aa
	ret m			;a2ab
	nop			;a2ac
	ret nz			;a2ad
	ret nz			;a2ae
	ret m			;a2af
	ret m			;a2b0
	call m,0fffeh		;a2b1
	call m,0fe03h		;a2b4
	inc b			;a2b7
	rst 38h			;a2b8
	inc bc			;a2b9
	ret p			;a2ba
	inc bc			;a2bb
	ret m			;a2bc
	ld (bc),a		;a2bd
	call m,08088h		;a2be
	ret nz			;a2c1
	ret po			;a2c2
	ret p			;a2c3
	ret m			;a2c4
	call m,0fffeh		;a2c5
	nop			;a2c8
	rrca			;a2c9
	ret po			;a2ca
	add a,c			;a2cb
	call po,0e007h		;a2cc
	dec b			;a2cf
	ld b,b			;a2d0
	ld (bc),a		;a2d1
	ret po			;a2d2
	ld (bc),a		;a2d3
	call po,0e005h		;a2d4
	add hl,sp		;a2d7
	ld b,b			;a2d8
	add a,c			;a2d9
	ret nc			;a2da
	dec b			;a2db
	add a,b			;a2dc
	ld (bc),a		;a2dd
	ld b,b			;a2de
	ld (bc),a		;a2df
	ld b,e			;a2e0
	ex af,af'		;a2e1
	jr nc,$+4		;a2e2
	ex (sp),hl		;a2e4
	ld b,0e4h		;a2e5
	ld (bc),a		;a2e7
	ex (sp),hl		;a2e8
	inc b			;a2e9
	call po,04382h		;a2ea
	ld (04306h),a		;a2ed
	ld (bc),a		;a2f0
	ld (03081h),a		;a2f1
	inc b			;a2f4
	ld (03103h),a		;a2f5
	ld (bc),a		;a2f8
	ld b,b			;a2f9
	adc a,(hl)		;a2fa
	ld a,0e4h		;a2fb
	call po,03243h		;a2fd
	ld (04040h),a		;a300
	ld b,e			;a303
	ld (02132h),a		;a304
	ld hl,00531h		;a307
	inc (hl)		;a30a
	ld (bc),a		;a30b
	ld hl,0ff8eh		;a30c
	ld b,b			;a30f
	call po,043e4h		;a310
	ld b,e			;a313
	jp po,0e4e4h		;a314
	ret po			;a317
	ld c,(hl)		;a318
	ld c,(hl)		;a319
	ld b,e			;a31a
	ex (sp),hl		;a31b
	inc bc			;a31c
	call po,0e08ah		;a31d
	ld c,(hl)		;a320
	ld c,(hl)		;a321
	ld b,e			;a322
	ex (sp),hl		;a323
	jp po,0e4e4h		;a324
	ld b,b			;a327
	jr nc,la32fh		;a328
	ret po			;a32a
	add a,e			;a32b
	call po,03040h		;a32c
la32fh:
	inc b			;a32f
	ret po			;a330
	add a,(hl)		;a331
	call po,0f143h		;a332
	pop af			;a335
	rrca			;a336
	rrca			;a337
	inc e			;a338
	ld (bc),a		;a339
	nop			;a33a
	adc a,l			;a33b
	ret p			;a33c
	ret po			;a33d
	ret nz			;a33e
	add a,b			;a33f
	nop			;a340
	nop			;a341
	cp 0fch			;a342
	ret m			;a344
	ret p			;a345
	ret po			;a346
	ret nz			;a347
	add a,b			;a348
	ld b,000h		;a349
	and d			;a34b
	cp 0fch			;a34c
	ret m			;a34e
	ret p			;a34f
	ret po			;a350
	ret nz			;a351
	add a,b			;a352
	nop			;a353
	nop			;a354
	ld bc,00003h		;a355
	ret p			;a358
	nop			;a359
	rrca			;a35a
	rrca			;a35b
	ld a,a			;a35c
	inc bc			;a35d
	cp 0fch			;a35e
	ret m			;a360
	ret p			;a361
	ret po			;a362
	ret nz			;a363
	add a,b			;a364
	ret po			;a365
	call m,0e0feh		;a366
	cp a			;a369
	rst 18h			;a36a
	rst 28h			;a36b
	xor 0ech		;a36c
	inc bc			;a36e
	ret p			;a36f
	adc a,h			;a370
	ret nz			;a371
	add a,b			;a372
	nop			;a373
	nop			;a374
	cp 003h			;a375
	ret m			;a377
	rrca			;a378
	rra			;a379
	ccf			;a37a
	nop			;a37b
	nop			;a37c
	inc bc			;a37d
	rst 38h			;a37e
	add a,d			;a37f
	rlca			;a380
	rrca			;a381
	dec c			;a382
	rst 38h			;a383
	and d			;a384
	ret p			;a385
	rrca			;a386
	ret m			;a387
	ret p			;a388
	ret p			;a389
	ret po			;a38a
	ret po			;a38b
	pop bc			;a38c
	pop bc			;a38d
	add a,e			;a38e
	daa			;a38f
	ld h,d			;a390
	ld b,(hl)		;a391
	call nz,0888ch		;a392
	add hl,de		;a395
	ld de,03efeh		;a396
	ld h,d			;a399
	ld b,(hl)		;a39a
	add a,08eh		;a39b
	adc a,(hl)		;a39d
	ld e,080h		;a39e
	jp 0fcffh		;a3a0
	ret p			;a3a3
	ret nz			;a3a4
	add a,b			;a3a5
	cp 003h			;a3a6
	rst 38h			;a3a8
	adc a,c			;a3a9
	cp 0f1h			;a3aa
	rrca			;a3ac
	rst 38h			;a3ad
	rst 38h			;a3ae
	rlca			;a3af
	rst 20h			;a3b0
	sbc a,a			;a3b1
	ld a,a			;a3b2
	inc b			;a3b3
	rst 38h			;a3b4
	adc a,b			;a3b5
	nop			;a3b6
	ret p			;a3b7
	ccf			;a3b8
	rlca			;a3b9
	call m,0f0f8h		;a3ba
	ret po			;a3bd
	inc bc			;a3be
	nop			;a3bf
	add a,e			;a3c0
	ld a,a			;a3c1
	inc bc			;a3c2
	ret p			;a3c3
	inc bc			;a3c4
	rst 38h			;a3c5
	add a,a			;a3c6
	nop			;a3c7
	rlca			;a3c8
	ret po			;a3c9
	cp 09fh			;a3ca
	bit 1,c			;a3cc
	inc b			;a3ce
	rrca			;a3cf
	inc bc			;a3d0
	nop			;a3d1
	adc a,h			;a3d2
	rlca			;a3d3
	rst 38h			;a3d4
	ret p			;a3d5
	inc bc			;a3d6
	ret po			;a3d7
	cp 003h			;a3d8
	rlca			;a3da
	rrca			;a3db
	rra			;a3dc
	ccf			;a3dd
	ld a,a			;a3de
	inc bc			;a3df
	rst 38h			;a3e0
	add a,e			;a3e1
	inc c			;a3e2
	ld c,a			;a3e3
	ret nz			;a3e4
	inc b			;a3e5
	nop			;a3e6
	add a,l			;a3e7
	call m,0f0f0h		;a3e8
	rst 18h			;a3eb
	rst 18h			;a3ec
	inc bc			;a3ed
	rst 28h			;a3ee
	inc bc			;a3ef
	rst 30h			;a3f0
	rlca			;a3f1
	rst 38h			;a3f2
	add a,c			;a3f3
	ret m			;a3f4
	inc b			;a3f5
	rst 38h			;a3f6
	add a,(hl)		;a3f7
	call m,000e0h		;a3f8
	nop			;a3fb
	ret po			;a3fc
	call m,0ff04h		;a3fd
	cp h			;a400
	ret p			;a401
	nop			;a402
	rlca			;a403
	ld b,0f7h		;a404
	rst 30h			;a406
	rst 8			;a407
	rra			;a408
	ccf			;a409
	ccf			;a40a
	rra			;a40b
	ccf			;a40c
	ld a,a			;a40d
	and 0c6h		;a40e
	adc a,(hl)		;a410
	adc a,(hl)		;a411
	ld e,000h		;a412
	ret nz			;a414
	ld a,b			;a415
	ccf			;a416
	jr c,la435h		;a417
	ld c,0ffh		;a419
	nop			;a41b
	inc bc			;a41c
	ld e,0f0h		;a41d
	inc bc			;a41f
	ld a,(hl)		;a420
	ccf			;a421
	rst 38h			;a422
	nop			;a423
	ret nz			;a424
	jr c,la42eh		;a425
	nop			;a427
	nop			;a428
	rlca			;a429
	ccf			;a42a
	rst 38h			;a42b
	ret nz			;a42c
	nop			;a42d
la42eh:
	ret p			;a42e
	nop			;a42f
	nop			;a430
	rst 38h			;a431
	rst 38h			;a432
	nop			;a433
	ret nz			;a434
la435h:
	jr c,la43eh		;a435
	nop			;a437
	nop			;a438
	rst 38h			;a439
	rst 38h			;a43a
	add a,b			;a43b
	rst 38h			;a43c
	inc bc			;a43d
la43eh:
	add a,b			;a43e
	add a,e			;a43f
	rst 38h			;a440
	add a,b			;a441
	add a,b			;a442
	inc bc			;a443
	rst 30h			;a444
	sbc a,(hl)		;a445
	or 0c5h			;a446
	djnz $+65		;a448
	ld h,b			;a44a
	rra			;a44b
	ccf			;a44c
	ld a,a			;a44d
	cp 0feh			;a44e
	nop			;a450
	nop			;a451
	rst 38h			;a452
	add a,c			;a453
	rrca			;a454
	ld a,a			;a455
	ld sp,0c763h		;a456
	ccf			;a459
	rst 0			;a45a
	call z,01989h		;a45b
	ld sp,0c763h		;a45e
	ccf			;a461
	rst 0			;a462
	ld b,h			;a463
	rlca			;a464
	call nz,04481h		;a465
	inc b			;a468
	call nz,0fe84h		;a469
	call m,080f8h		;a46c
	ld b,0f0h		;a46f
	add a,(hl)		;a471
	nop			;a472
	ret m			;a473
	rlca			;a474
la475h:
	xor a			;a475
	xor d			;a476
	xor d			;a477
	inc bc			;a478
	rst 38h			;a479
	add a,h			;a47a
	ld c,e			;a47b
	xor a			;a47c
	cp a			;a47d
	cp a			;a47e
	inc b			;a47f
	rst 38h			;a480
	xor b			;a481
	rrca			;a482
	rra			;a483
	ccf			;a484
	ld a,a			;a485
	rst 38h			;a486
	rst 38h			;a487
	cp 0fch			;a488
	call m,0c0f0h		;a48a
	inc bc			;a48d
	rrca			;a48e
	ccf			;a48f
	rst 38h			;a490
	rst 38h			;a491
	rlca			;a492
	jr c,la475h		;a493
	ret nz			;a495
	ret po			;a496
	rst 20h			;a497
	ret p			;a498
	ret p			;a499
	ccf			;a49a
	rrca			;a49b
	inc bc			;a49c
	ret nz			;a49d
	ret p			;a49e
	call m,0ffffh		;a49f
	ret p			;a4a2
	rrca			;a4a3
	rst 38h			;a4a4
	xor e			;a4a5
	rst 38h			;a4a6
	defb 0fdh,0f4h,0d2h ;illegal sequence	;a4a7
	dec b			;a4aa
	ret p			;a4ab
	adc a,e			;a4ac
	nop			;a4ad
	ld d,l			;a4ae
	ld d,l			;a4af
	add a,e			;a4b0
	add a,c			;a4b1
	add a,c			;a4b2
	jp 07f47h		;a4b3
	add a,a			;a4b6
	add a,a			;a4b7
	inc bc			;a4b8
	xor d			;a4b9
	add a,(hl)		;a4ba
	ld hl,(05fffh)		;a4bb
	ld a,a			;a4be
	rst 38h			;a4bf
	rst 38h			;a4c0
	inc b			;a4c1
	xor d			;a4c2
	inc bc			;a4c3
	rst 38h			;a4c4
	add a,d			;a4c5
	ret m			;a4c6
	rst 38h			;a4c7
	inc bc			;a4c8
	xor d			;a4c9
	add a,e			;a4ca
	ld hl,(0ffffh)		;a4cb
	ex af,af'		;a4ce
	call m,07f87h		;a4cf
	ccf			;a4d2
	rra			;a4d3
	rrca			;a4d4
	rlca			;a4d5
	inc bc			;a4d6
	ld bc,00007h		;a4d7
	adc a,(hl)		;a4da
	ret nz			;a4db
	ret m			;a4dc
	rst 38h			;a4dd
	rst 38h			;a4de
	nop			;a4df
	ret po			;a4e0
	cp 09fh			;a4e1
	bit 1,c			;a4e3
	ld bc,00f01h		;a4e5
	ld a,a			;a4e8
	inc b			;a4e9
	rst 38h			;a4ea
	adc a,b			;a4eb
	ccf			;a4ec
	ld a,a			;a4ed
	rst 38h			;a4ee
	rst 38h			;a4ef
	ld bc,00703h		;a4f0
	rrca			;a4f3
	dec b			;a4f4
	nop			;a4f5
	add a,h			;a4f6
	inc bc			;a4f7
	ld e,0f0h		;a4f8
	ret nz			;a4fa
	dec b			;a4fb
	nop			;a4fc
	add a,d			;a4fd
	rlca			;a4fe
	ccf			;a4ff
	inc bc			;a500
	nop			;a501
	sub d			;a502
	call m,0ff1fh		;a503
	rst 38h			;a506
	ret m			;a507
	nop			;a508
	inc bc			;a509
	rra			;a50a
	rst 38h			;a50b
	ret m			;a50c
	pop bc			;a50d
	rrca			;a50e
	ret m			;a50f
	rrca			;a510
	inc bc			;a511
	dec c			;a512
	dec (hl)		;a513
	jp pe,08a03h		;a514
	add a,h			;a517
	ex (sp),hl		;a518
	pop af			;a519
	ret m			;a51a
	rrca			;a51b
	inc bc			;a51c
	rst 38h			;a51d
	adc a,a			;a51e
	nop			;a51f
	ld h,e			;a520
	or c			;a521
	in a,(0ffh)		;a522
	rst 38h			;a524
	rrca			;a525
	nop			;a526
	rst 38h			;a527
	inc bc			;a528
	ret nz			;a529
	ret p			;a52a
	call m,0f0c0h		;a52b
	add hl,bc		;a52e
	rrca			;a52f
	sbc a,h			;a530
	rst 38h			;a531
	nop			;a532
	rrca			;a533
	rrca			;a534
	ld a,a			;a535
	inc bc			;a536
	ret p			;a537
	rst 38h			;a538
	rst 38h			;a539
	add a,d			;a53a
	rlca			;a53b
	rst 38h			;a53c
	rst 38h			;a53d
	nop			;a53e
	nop			;a53f
	rst 38h			;a540
	nop			;a541
	rst 38h			;a542
	call m,01fe3h		;a543
	rst 38h			;a546
	nop			;a547
	nop			;a548
	rst 38h			;a549
	inc sp			;a54a
	rst 38h			;a54b
	rst 38h			;a54c
	inc b			;a54d
	nop			;a54e
	adc a,c			;a54f
	ret m			;a550
	ret nz			;a551
	ret po			;a552
	ret p			;a553
	ret m			;a554
	inc a			;a555
	inc bc			;a556
	inc bc			;a557
	rst 38h			;a558
	inc bc			;a559
	ret m			;a55a
	inc bc			;a55b
	inc b			;a55c
	ld (bc),a		;a55d
	rlca			;a55e
	add a,c			;a55f
	ld bc,00f05h		;a560
	inc bc			;a563
	nop			;a564
	adc a,a			;a565
	rrca			;a566
	rst 38h			;a567
	ret p			;a568
	nop			;a569
	ret p			;a56a
	nop			;a56b
	nop			;a56c
	rst 30h			;a56d
	ret p			;a56e
	ret p			;a56f
	nop			;a570
	nop			;a571
	cp 08eh			;a572
	add a,(hl)		;a574
	inc b			;a575
	ret po			;a576
	xor h			;a577
	ret m			;a578
	pop bc			;a579
	rrca			;a57a
	ret m			;a57b
	cp 0c2h			;a57c
	ld bc,0f0fch		;a57e
	jp 0f01fh		;a581
	pop bc			;a584
	pop bc			;a585
	nop			;a586
	cp 0f8h			;a587
	add a,e			;a589
	ld a,a			;a58a
	nop			;a58b
	ret nz			;a58c
	inc bc			;a58d
	rrca			;a58e
	inc a			;a58f
	ret p			;a590
	ret nz			;a591
	add a,b			;a592
	cp 0f1h			;a593
	rst 0			;a595
	ld a,h			;a596
	nop			;a597
	add a,b			;a598
	pop bc			;a599
	rst 38h			;a59a
	rst 38h			;a59b
	ret p			;a59c
	call m,0c1c7h		;a59d
	ld b,b			;a5a0
	ld b,b			;a5a1
	ld h,b			;a5a2
	pop af			;a5a3
	nop			;a5a4
	ld b,0f4h		;a5a5
	dec c			;a5a7
	ld b,e			;a5a8
	add hl,bc		;a5a9
	ld (04283h),a		;a5aa
	ld (00332h),a		;a5ad
	ld hl,03283h		;a5b0
	ld hl,00521h		;a5b3
	call p,05482h		;a5b6
	add a,h			;a5b9
	inc b			;a5ba
	call po,0320ch		;a5bb
	add a,e			;a5be
	ld hl,021f2h		;a5bf
	inc b			;a5c2
	jp p,0f12dh		;a5c3
	inc bc			;a5c6
	push af			;a5c7
	inc b			;a5c8
	defb 0fdh,081h,0d8h ;illegal sequence	;a5c9
	ld (de),a		;a5cc
	pop af			;a5cd
	ld (bc),a		;a5ce
	di			;a5cf
	ld b,032h		;a5d0
	inc bc			;a5d2
	ld hl,0f105h		;a5d3
	add a,e			;a5d6
	ld hl,0f1f1h		;a5d7
	inc bc			;a5da
	push af			;a5db
	add a,e			;a5dc
	ld hl,02132h		;a5dd
	ex af,af'		;a5e0
	rra			;a5e1
	add a,e			;a5e2
	jp p,03221h		;a5e3
	ex af,af'		;a5e6
	ld b,d			;a5e7
	add a,d			;a5e8
	ld b,e			;a5e9
	ld (0f105h),a		;a5ea
	add a,e			;a5ed
	ld hl,04332h		;a5ee
	ld (00632h),hl		;a5f1
	ld hl,0f203h		;a5f4
	ex af,af'		;a5f7
	pop af			;a5f8
	ld (bc),a		;a5f9
	di			;a5fa
	add a,c			;a5fb
	jp p,0f105h		;a5fc
	add a,e			;a5ff
	jp p,0f231h		;a600
	dec b			;a603
	pop af			;a604
	inc bc			;a605
	jp p,03282h		;a606
	ld b,d			;a609
	inc bc			;a60a
	call po,04302h		;a60b
	ld (bc),a		;a60e
	ld (de),a		;a60f
	ld b,0f1h		;a610
	ld (bc),a		;a612
	ld (04302h),a		;a613
	ld (bc),a		;a616
	call po,04381h		;a617
	inc b			;a61a
	ld (02105h),a		;a61b
	inc bc			;a61e
	pop af			;a61f
	inc bc			;a620
	ret po			;a621
	add a,e			;a622
	call po,04343h		;a623
	dec b			;a626
	jp p,0f89ah		;a627
	defb 0fdh,0fdh,0f5h ;illegal sequence	;a62a
	call m,0f8f8h		;a62d
	defb 0fdh,0f8h,0fdh ;illegal sequence	;a630
	defb 0fdh,0f5h,0fch ;illegal sequence	;a633
	defb 0fdh,0fdh,0f8h ;illegal sequence	;a636
	ret m			;a639
	cp 0feh			;a63a
	ret m			;a63c
	cp 0fdh			;a63d
	defb 0fdh,0f8h,0f8h ;illegal sequence	;a63f
	defb 0fdh,004h,0f4h ;illegal sequence	;a642
	ld (bc),a		;a645
	ld b,e			;a646
	ld (bc),a		;a647
	ld (02181h),a		;a648
	inc b			;a64b
	rra			;a64c
	add a,d			;a64d
	push af			;a64e
	defb 0fdh,005h,0f5h ;illegal sequence	;a64f
	ld (bc),a		;a652
	defb 0fdh,005h,0f5h ;illegal sequence	;a653
	add a,d			;a656
	ld b,c			;a657
	ld b,d			;a658
	ld b,043h		;a659
	inc bc			;a65b
	ld hl,0f106h		;a65c
	add a,h			;a65f
	jp p,03221h		;a660
	ld sp,02106h		;a663
	ex af,af'		;a666
	pop af			;a667
	dec b			;a668
	push af			;a669
	add a,e			;a66a
	ld (02121h),a		;a66b
	inc bc			;a66e
	rra			;a66f
	add a,c			;a670
	defb 0fdh,003h,0f5h ;illegal sequence	;a671
	ld (bc),a		;a674
	defb 0fdh,003h,0f5h ;illegal sequence	;a675
	add a,a			;a678
	ld e,l			;a679
	defb 0fdh,0f8h,0fdh ;illegal sequence	;a67a
	push af			;a67d
	push af			;a67e
	defb 0fdh,003h,0f5h ;illegal sequence	;a67f
	add a,e			;a682
	defb 0fdh,0f8h,0fdh ;illegal sequence	;a683
	inc b			;a686
	push af			;a687
	ld (bc),a		;a688
	pop af			;a689
	add a,e			;a68a
	defb 0fdh,0f8h,0fdh ;illegal sequence	;a68b
	inc bc			;a68e
	push af			;a68f
	add a,(hl)		;a690
	ld sp,041e1h		;a691
	ld sp,03121h		;a694
	dec d			;a697
	ld hl,0f102h		;a698
	inc bc			;a69b
	push af			;a69c
	add a,c			;a69d
	di			;a69e
	dec bc			;a69f
	inc hl			;a6a0
	dec bc			;a6a1
	jp p,0f581h		;a6a2
	ld b,032h		;a6a5
	dec b			;a6a7
	jp p,02181h		;a6a8
	inc bc			;a6ab
	jp p,0f105h		;a6ac
	ld (bc),a		;a6af
	defb 0fdh,002h,0f5h ;illegal sequence	;a6b0
	add a,c			;a6b3
	ld (0f203h),a		;a6b4
	adc a,b			;a6b7
	defb 0fdh,0f8h,0fdh ;illegal sequence	;a6b8
	push af			;a6bb
	ld sp,hl		;a6bc
	ei			;a6bd
	ld sp,hl		;a6be
	jp p,01f04h		;a6bf
	add a,d			;a6c2
	ld sp,hl		;a6c3
	or 003h			;a6c4
	call m,0f104h		;a6c6
	inc bc			;a6c9
	ld hl,0328ah		;a6ca
	ld hl,03221h		;a6cd
	ld c,(hl)		;a6d0
	inc (hl)		;a6d1
	inc (hl)		;a6d2
	inc hl			;a6d3
	inc hl			;a6d4
	ld (de),a		;a6d5
	inc bc			;a6d6
	pop af			;a6d7
	add a,h			;a6d8
	ld hl,02132h		;a6d9
	ld hl,0f106h		;a6dc
	ld (bc),a		;a6df
	ld hl,01f07h		;a6e0
	ld (bc),a		;a6e3
	inc hl			;a6e4
	ld (bc),a		;a6e5
	call po,0f102h		;a6e6
	ld (bc),a		;a6e9
	ld hl,01f04h		;a6ea
	dec b			;a6ed
	ld hl,0f103h		;a6ee
	inc bc			;a6f1
	ld hl,0f105h		;a6f2
	add a,l			;a6f5
	ld b,d			;a6f6
	jp po,03243h		;a6f7
	ld hl,01f04h		;a6fa
	add a,c			;a6fd
	call p,03203h		;a6fe
	ld (bc),a		;a701
	ld hl,03f02h		;a702
	add a,c			;a705
	ld sp,01f03h		;a706
	inc bc			;a709
	push af			;a70a
	ld (bc),a		;a70b
	push bc			;a70c
	ld (bc),a		;a70d
	rst 8			;a70e
	ld (bc),a		;a70f
	defb 0fdh,003h,0f5h ;illegal sequence	;a710
	ld (bc),a		;a713
	defb 0fdh,004h,0d8h ;illegal sequence	;a714
	add a,h			;a717
	push de			;a718
	push af			;a719
	ld e,l			;a71a
	ld e,l			;a71b
	inc bc			;a71c
	ret c			;a71d
	inc bc			;a71e
	push de			;a71f
	inc bc			;a720
	push af			;a721
	add a,e			;a722
	ret m			;a723
	defb 0fdh,0fdh,003h ;illegal sequence	;a724
	ret c			;a727
	ld (bc),a		;a728
	push de			;a729
	ld b,0f5h		;a72a
	add a,e			;a72c
	ret m			;a72d
	defb 0fdh,0fdh,003h ;illegal sequence	;a72e
	ld e,l			;a731
	nop			;a732
	rst 38h			;a733
	cp 0f8h			;a734
	cp 0fch			;a736
	pop af			;a738
	jp 0f80fh		;a739
	di			;a73c
	defb 0edh ;next byte illegal after ed	;a73d
	jp nc,0edd2h		;a73e
	di			;a741
	rst 38h			;a742
	rst 38h			;a743
	ld bc,0fef8h		;a744
	call m,0c3f1h		;a747
	rrca			;a74a
	ret m			;a74b
	rrca			;a74c
	rst 38h			;a74d
	cp 086h			;a74e
	inc bc			;a750
	inc bc			;a751
	ld bc,00ffch		;a752
	call m,0c0f0h		;a755
	ld a,a			;a758
	rst 38h			;a759
	rst 38h			;a75a
	call m,00707h		;a75b
	ld b,e			;a75e
	ld b,e			;a75f
	ld h,c			;a760
	ld b,b			;a761
	ld b,b			;a762
	ld h,b			;a763
	add a,b			;a764
	ld a,b			;a765
	rlca			;a766
	rst 38h			;a767
	rst 38h			;a768
	cp 08eh			;a769
	add a,(hl)		;a76b
	ret c			;a76c
	call pe,0f3efh		;a76d
	call m,0ffffh		;a770
	ret m			;a773
	dec de			;a774
	scf			;a775
	rst 30h			;a776
	rst 8			;a777
	ccf			;a778
	ret m			;a779
	ex af,af'		;a77a
	ret p			;a77b
	call pe,0f3efh		;a77c
	call m,0080fh		;a77f
	rlca			;a782
	rlca			;a783
	ret z			;a784
	ex af,af'		;a785
	jr nc,$-62		;a786
	nop			;a788
	nop			;a789
	rrca			;a78a
	ex af,af'		;a78b
	xor d			;a78c
	or (hl)			;a78d
	ex (sp),ix		;a78e
	rst 38h			;a790
	rra			;a791
	djnz la7a3h		;a792
	call pe,0f3efh		;a794
	call m,0f0ffh		;a797
	add a,b			;a79a
	ld (hl),b		;a79b
	scf			;a79c
	rst 30h			;a79d
	rst 8			;a79e
	ccf			;a79f
	rst 0			;a7a0
	add a,b			;a7a1
	rlca			;a7a2
la7a3h:
	rlca			;a7a3
	ret c			;a7a4
	ret c			;a7a5
	call pe,0f3efh		;a7a6
	call m,08087h		;a7a9
	nop			;a7ac
	nop			;a7ad
	ld bc,00379h		;a7ae
	inc bc			;a7b1
	ld bc,0fc99h		;a7b2
	ld a,03eh		;a7b5
	rst 38h			;a7b7
	cp 0f8h			;a7b8
	add a,e			;a7ba
	ld a,a			;a7bb
	nop			;a7bc
	nop			;a7bd
	inc bc			;a7be
	rrca			;a7bf
	ccf			;a7c0
	ld a,a			;a7c1
	rst 38h			;a7c2
	rst 38h			;a7c3
	call m,00000h		;a7c4
	cp h			;a7c7
	cp h			;a7c8
	sbc a,(hl)		;a7c9
	ld b,b			;a7ca
	ld b,b			;a7cb
	ld h,b			;a7cc
	dec b			;a7cd
	nop			;a7ce
	add a,l			;a7cf
	ld bc,08671h		;a7d0
	ld h,b			;a7d3
	ld b,b			;a7d4
	inc bc			;a7d5
	nop			;a7d6
	adc a,e			;a7d7
	ld bc,08671h		;a7d8
	ret po			;a7db
	ret po			;a7dc
	ret nz			;a7dd
	add a,b			;a7de
	add a,b			;a7df
	ld bc,08671h		;a7e0
	rlca			;a7e3
	nop			;a7e4
	inc bc			;a7e5
	ld bc,00304h		;a7e6
	ld (bc),a		;a7e9
	ld bc,00007h		;a7ea
	add a,d			;a7ed
	rlca			;a7ee
	ld bc,00006h		;a7ef
	add a,l			;a7f2
	rlca			;a7f3
	nop			;a7f4
	ret nz			;a7f5
	ret nz			;a7f6
	ret m			;a7f7
	inc bc			;a7f8
	rst 38h			;a7f9
	sbc a,l			;a7fa
	ld bc,0ffffh		;a7fb
	ld a,a			;a7fe
	ccf			;a7ff
	rrca			;a800
	rlca			;a801
	rlca			;a802
	ld e,0ffh		;a803
	rst 38h			;a805
	ld a,a			;a806
	ccf			;a807
	rrca			;a808
	rlca			;a809
	rlca			;a80a
	rra			;a80b
	jp nc,04242h		;a80c
	add a,d			;a80f
	ret p			;a810
	ret po			;a811
	ret nz			;a812
	add a,b			;a813
	ret nz			;a814
	ret nz			;a815
	ret po			;a816
	ret po			;a817
	dec b			;a818
	nop			;a819
	xor e			;a81a
	ret nz			;a81b
	ld a,b			;a81c
	ccf			;a81d
	rrca			;a81e
	rlca			;a81f
	rlca			;a820
	rra			;a821
	rst 38h			;a822
	call m,0f1f8h		;a823
	inc e			;a826
	ret c			;a827
	ret nz			;a828
	ret nz			;a829
	call m,0f8fch		;a82a
	pop af			;a82d
	call m,0381ch		;a82e
	ld (hl),b		;a831
	add a,b			;a832
	ret nz			;a833
	ret po			;a834
	ret p			;a835
	ret m			;a836
	call m,080feh		;a837
	call m,0fcf8h		;a83a
	ex (sp),hl		;a83d
	ld a,h			;a83e
	ld (hl),b		;a83f
	nop			;a840
	nop			;a841
	add a,b			;a842
	ret nz			;a843
	ret po			;a844
	ret p			;a845
	inc b			;a846
	ret m			;a847
	adc a,e			;a848
	rrca			;a849
	rst 38h			;a84a
	rst 38h			;a84b
	nop			;a84c
la84dh:
	inc bc			;a84d
	ld a,(hl)		;a84e
	ccf			;a84f
	rst 38h			;a850
	rra			;a851
	jr nc,la8c4h		;a852
	inc bc			;a854
	ret p			;a855
	sbc a,e			;a856
	nop			;a857
	ret p			;a858
	rst 38h			;a859
	rst 38h			;a85a
	nop			;a85b
	nop			;a85c
	ret p			;a85d
	ccf			;a85e
	nop			;a85f
	ret p			;a860
	ld bc,00000h		;a861
	call m,0f0c0h		;a864
	rrca			;a867
	rrca			;a868
	ret m			;a869
	ex (sp),hl		;a86a
	rst 0			;a86b
	adc a,a			;a86c
	ret po			;a86d
	ret po			;a86e
	cp 084h			;a86f
	rst 38h			;a871
	inc bc			;a872
	nop			;a873
	add a,l			;a874
	ld (hl),b		;a875
	ret po			;a876
	ccf			;a877
	ld h,b			;a878
	rst 38h			;a879
	inc bc			;a87a
	nop			;a87b
	add a,h			;a87c
	ld (hl),b		;a87d
	ret po			;a87e
	ccf			;a87f
	ld h,e			;a880
	inc b			;a881
	ret po			;a882
	and l			;a883
	ret m			;a884
	ret nz			;a885
	add a,b			;a886
	rlca			;a887
	rlca			;a888
	pop af			;a889
	ex (sp),hl		;a88a
	rst 0			;a88b
	rst 0			;a88c
	inc e			;a88d
	ld c,0ffh		;a88e
	rrca			;a890
	rst 38h			;a891
	call m,00fffh		;a892
	ccf			;a895
	nop			;a896
	ret p			;a897
	cp a			;a898
	rrca			;a899
	jp 03cf0h		;a89a
	rra			;a89d
	adc a,a			;a89e
	rst 0			;a89f
	rst 38h			;a8a0
	rst 38h			;a8a1
	add a,a			;a8a2
	add a,l			;a8a3
	add a,l			;a8a4
	rst 38h			;a8a5
	jp nz,0e0c2h		;a8a6
	inc c			;a8a9
	ret nz			;a8aa
	inc bc			;a8ab
	add a,b			;a8ac
	add a,c			;a8ad
la8aeh:
	ret po			;a8ae
	inc c			;a8af
	ret nz			;a8b0
	inc bc			;a8b1
	add a,b			;a8b2
	ld (bc),a		;a8b3
	rra			;a8b4
	and (hl)		;a8b5
	rrca			;a8b6
	ccf			;a8b7
	ld a,a			;a8b8
	jr c,la937h		;a8b9
	jr c,$+1		;a8bb
	rst 38h			;a8bd
	rra			;a8be
	inc bc			;a8bf
	ret po			;a8c0
	add a,b			;a8c1
	add a,b			;a8c2
	nop			;a8c3
la8c4h:
	nop			;a8c4
	inc bc			;a8c5
	call m,07fe0h		;a8c6
	jr c,$+126		;a8c9
	jr c,la84dh		;a8cb
	nop			;a8cd
	nop			;a8ce
	inc bc			;a8cf
	ret po			;a8d0
	add a,b			;a8d1
	add a,b			;a8d2
	nop			;a8d3
	rst 38h			;a8d4
	cp 07ch			;a8d5
	nop			;a8d7
	nop			;a8d8
	ld a,b			;a8d9
	nop			;a8da
	add a,e			;a8db
	ex af,af'		;a8dc
	ret po			;a8dd
	ld (bc),a		;a8de
	dec de			;a8df
	sbc a,(hl)		;a8e0
	scf			;a8e1
	rst 30h			;a8e2
	rst 8			;a8e3
	ccf			;a8e4
	rst 38h			;a8e5
	ret m			;a8e6
	or (hl)			;a8e7
	xor d			;a8e8
	or (hl)			;a8e9
	ex (sp),ix		;a8ea
	rst 38h			;a8ec
	add a,a			;a8ed
	add a,b			;a8ee
	xor d			;a8ef
	or (hl)			;a8f0
	ex (sp),ix		;a8f1
	rst 38h			;a8f3
	rst 38h			;a8f4
	ret p			;a8f5
	djnz la8aeh		;a8f6
	ex (sp),ix		;a8f8
	rst 38h			;a8fa
	rst 38h			;a8fb
	ret p			;a8fc
	add a,b			;a8fd
	ld (hl),b		;a8fe
	inc bc			;a8ff
	ret p			;a900
	dec b			;a901
	nop			;a902
	add a,l			;a903
	ret z			;a904
	ex af,af'		;a905
	jr nc,$-62		;a906
	nop			;a908
	inc bc			;a909
	cp 085h			;a90a
	scf			;a90c
	rst 30h			;a90d
	rst 8			;a90e
	ccf			;a90f
	rst 38h			;a910
	inc bc			;a911
	cp 006h			;a912
	rrca			;a914
	sub (hl)		;a915
	rst 38h			;a916
	ret p			;a917
	call pe,0f3efh		;a918
	call m,0dde3h		;a91b
	or (hl)			;a91e
	xor d			;a91f
	call pe,0f3efh		;a920
	call m,0e3ffh		;a923
	or (ix-004h)		;a926
	di			;a929
	rst 28h			;a92a
	call pe,0d804h		;a92b
	add a,h			;a92e
	ccf			;a92f
	rst 8			;a930
	rst 30h			;a931
	scf			;a932
	inc b			;a933
	dec de			;a934
	add a,l			;a935
	rst 38h			;a936
la937h:
	call m,0eff3h		;a937
	call pe,0d803h		;a93a
	add a,l			;a93d
	rst 38h			;a93e
	ccf			;a93f
	rst 8			;a940
	rst 30h			;a941
	scf			;a942
	inc bc			;a943
	dec de			;a944
	adc a,h			;a945
	call pe,0f3efh		;a946
	call m,0ffffh		;a949
	ex (sp),hl		;a94c
	defb 0ddh,03fh,0cfh ;illegal sequence	;a94d
	rst 30h			;a950
	scf			;a951
	inc b			;a952
	dec de			;a953
	ld (bc),a		;a954
	rst 38h			;a955
	adc a,(hl)		;a956
	call m,0eff3h		;a957
	call pe,0d8d8h		;a95a
	rst 38h			;a95d
	rst 38h			;a95e
	ccf			;a95f
	rst 8			;a960
	rst 30h			;a961
	scf			;a962
	dec de			;a963
	dec de			;a964
	nop			;a965
	add a,c			;a966
	add a,b			;a967
	ld b,0d8h		;a968
	add a,(hl)		;a96a
	push de			;a96b
	jp p,0f3f3h		;a96c
	jp p,003f2h		;a96f
	pop af			;a972
	add a,c			;a973
	ret m			;a974
	ld b,0d8h		;a975
	add a,l			;a977
	push de			;a978
	pop af			;a979
	pop af			;a97a
	push af			;a97b
	push af			;a97c
	inc bc			;a97d
	defb 0fdh,082h,0d8h ;illegal sequence	;a97e
	pop af			;a981
	inc bc			;a982
	defb 0fdh,003h,0d5h ;illegal sequence	;a983
	add a,(hl)		;a986
	ret c			;a987
	ld sp,0f51fh		;a988
	ld e,l			;a98b
	ld e,l			;a98c
	inc bc			;a98d
	push af			;a98e
	add a,d			;a98f
	di			;a990
	ld sp,0f103h		;a991
	inc bc			;a994
	push af			;a995
	rlca			;a996
	pop af			;a997
	add a,c			;a998
	di			;a999
	dec b			;a99a
	pop af			;a99b
	ld (bc),a		;a99c
	di			;a99d
	add a,c			;a99e
	ld sp,0f104h		;a99f
	ld (bc),a		;a9a2
	di			;a9a3
	add a,c			;a9a4
	ld sp,01f07h		;a9a5
	ld (bc),a		;a9a8
	di			;a9a9
	add a,c			;a9aa
	jp p,0f104h		;a9ab
	ld (bc),a		;a9ae
	di			;a9af
	add a,c			;a9b0
	ld sp,0f105h		;a9b1
	ld (bc),a		;a9b4
	di			;a9b5
	add a,c			;a9b6
	ld sp,0f104h		;a9b7
	ld (bc),a		;a9ba
	di			;a9bb
	add a,e			;a9bc
	ld sp,0f21fh		;a9bd
	dec b			;a9c0
	pop af			;a9c1
	ld (bc),a		;a9c2
	di			;a9c3
	inc b			;a9c4
	ld d,b			;a9c5
	inc bc			;a9c6
	defb 0fdh,084h ;add a,iyh	;a9c7
	ret c			;a9c9
	ld d,b			;a9ca
	push de			;a9cb
	push de			;a9cc
	inc bc			;a9cd
	ret c			;a9ce
	ld (bc),a		;a9cf
	push de			;a9d0
	inc b			;a9d1
	ret nc			;a9d2
	inc bc			;a9d3
	push de			;a9d4
	add a,c			;a9d5
	ret c			;a9d6
	inc bc			;a9d7
	ld d,b			;a9d8
	ld (bc),a		;a9d9
	push de			;a9da
	inc bc			;a9db
	push af			;a9dc
	rlca			;a9dd
	ld d,b			;a9de
	add a,d			;a9df
	push af			;a9e0
	jr nc,la9e7h		;a9e1
	jr nz,la9e7h		;a9e3
	ld d,b			;a9e5
	add a,e			;a9e6
la9e7h:
	push af			;a9e7
	ld sp,00310h		;a9e8
	ret p			;a9eb
	ld (bc),a		;a9ec
	ld d,b			;a9ed
	add a,c			;a9ee
	push af			;a9ef
	add hl,bc		;a9f0
	or b			;a9f1
	inc bc			;a9f2
	sub b			;a9f3
	ld (bc),a		;a9f4
	ld h,b			;a9f5
	add hl,bc		;a9f6
	ret nz			;a9f7
	add a,c			;a9f8
	ret po			;a9f9
	rlca			;a9fa
	ret p			;a9fb
	add a,e			;a9fc
	ret po			;a9fd
	pop af			;a9fe
	pop af			;a9ff
	dec b			;aa00
	rrca			;aa01
	add a,c			;aa02
	or b			;aa03
	dec b			;aa04
	ret nz			;aa05
	add a,e			;aa06
	ret p			;aa07
	ld d,b			;aa08
	di			;aa09
	dec b			;aa0a
	ret nz			;aa0b
	adc a,(hl)		;aa0c
	ret p			;aa0d
	ld d,b			;aa0e
	cp 0f8h			;aa0f
	defb 0fdh,0f5h,0f5h ;illegal sequence	;aa11
	ret p			;aa14
	ret po			;aa15
	ret nc			;aa16
	ld d,b			;aa17
	ret po			;aa18
	add a,b			;aa19
	ret nc			;aa1a
	dec b			;aa1b
	ld d,b			;aa1c
	inc bc			;aa1d
	pop af			;aa1e
	and c			;aa1f
	ret p			;aa20
	ld d,b			;aa21
laa22h:
	ret p			;aa22
	ld d,b			;aa23
	cp 0feh			;aa24
	jp p,0f4f3h		;aa26
	ld b,b			;aa29
	jr nc,laa5ch		;aa2a
	djnz laa22h		;aa2c
	call p,0f2f3h		;aa2e
	ret p			;aa31
	jr nz,$+50		;aa32
	ld b,b			;aa34
	jr nz,$+66		;aa35
	jr nc,$+34		;aa37
	djnz laa5bh		;aa39
	djnz $+35		;aa3b
	call p,0f3f4h		;aa3d
	di			;aa40
	inc b			;aa41
	jr nc,$+7		;aa42
	djnz $+5		;aa44
	ret p			;aa46
	add a,c			;aa47
	cp 003h			;aa48
	ld b,e			;aa4a
	adc a,e			;aa4b
	ld sp,0f1f2h		;aa4c
	pop af			;aa4f
	jp p,03232h		;aa50
	ld hl,01f21h		;aa53
	rra			;aa56
	inc b			;aa57
	ld hl,02302h		;aa58
laa5bh:
	ld (bc),a		;aa5b
laa5ch:
	ld hl,0f191h		;aa5c
	jp p,021f2h		;aa5f
	ld hl,02132h		;aa62
	ld hl,0e332h		;aa65
	ld b,d			;aa68
	ld b,c			;aa69
	ld sp,0f2f3h		;aa6a
	call p,003f3h		;aa6d
	call po,0e302h		;aa70
	add a,e			;aa73
	ld b,d			;aa74
	call p,003f3h		;aa75
	call po,0e302h		;aa78
	add a,a			;aa7b
	ld b,d			;aa7c
	call p,0c5f3h		;aa7d
	push bc			;aa80
	rst 8			;aa81
	rst 8			;aa82
	inc bc			;aa83
	cp 08bh			;aa84
	call po,0423eh		;aa86
	ld b,c			;aa89
	ld sp,0f23fh		;aa8a
	pop af			;aa8d
	pop af			;aa8e
	ld hl,00321h		;aa8f
	ld (02102h),a		;aa92
	add a,a			;aa95
	pop af			;aa96
	or 0f9h			;aa97
	ei			;aa99
	ld sp,hl		;aa9a
	or 0f9h			;aa9b
	dec b			;aa9d
	ei			;aa9e
	adc a,b			;aa9f
	ld sp,hl		;aaa0
	call m,0f9fch		;aaa1
	call m,010f0h		;aaa4
	jr nc,$+5		;aaa7
	ld b,b			;aaa9
laaaah:
	add a,l			;aaaa
	jr nc,laacdh		;aaab
	ret p			;aaad
	jr nz,laae0h		;aaae
	inc bc			;aab0
	ld b,b			;aab1
	adc a,c			;aab2
	jr nc,laad5h		;aab3
	ret p			;aab5
	djnz laad8h		;aab6
	jr nz,laaaah		;aab8
	jr nz,laaech		;aaba
	inc bc			;aabc
	ld b,b			;aabd
	adc a,e			;aabe
	jr nc,laae1h		;aabf
	ret p			;aac1
	jr nz,$+50		;aac2
	ld b,b			;aac4
	ret p			;aac5
	ret p			;aac6
	ld h,b			;aac7
	sub b			;aac8
	or b			;aac9
	inc bc			;aaca
	ex de,hl		;aacb
	inc bc			;aacc
laacdh:
	call m,0f682h		;aacd
	sub (hl)		;aad0
	inc bc			;aad1
	cp c			;aad2
	inc bc			;aad3
	pop af			;aad4
laad5h:
	add a,d			;aad5
	ld sp,hl		;aad6
	or b			;aad7
laad8h:
	inc bc			;aad8
	ex de,hl		;aad9
	ld (bc),a		;aada
	jp p,01183h		;aadb
	or 096h			;aade
laae0h:
	ex af,af'		;aae0
laae1h:
	cp c			;aae1
	ld (bc),a		;aae2
	sub (hl)		;aae3
	adc a,c			;aae4
	add a,096h		;aae5
	sub l			;aae7
	sbc a,l			;aae8
	sbc a,b			;aae9
	ld l,l			;aaea
	ld h,l			;aaeb
laaech:
	ld h,l			;aaec
	call 0f107h		;aaed
	add a,e			;aaf0
	di			;aaf1
	jp p,004f2h		;aaf2
	pop af			;aaf5
	ld (bc),a		;aaf6
	di			;aaf7
	add a,c			;aaf8
	jp p,0f105h		;aaf9
	ld (bc),a		;aafc
	di			;aafd
	dec b			;aafe
	pop af			;aaff
	ld (bc),a		;ab00
	di			;ab01
	add a,e			;ab02
	ld sp,021f2h		;ab03
	dec bc			;ab06
	rra			;ab07
	add a,e			;ab08
	jp p,0f4f3h		;ab09
	dec b			;ab0c
	pop af			;ab0d
	adc a,e			;ab0e
	call p,0f2f3h		;ab0f
	call p,02323h		;ab12
	ld (de),a		;ab15
	ld (de),a		;ab16
	pop af			;ab17
	pop af			;ab18
	ld hl,0f104h		;ab19
	inc b			;ab1c
	jp p,0f105h		;ab1d
	rlca			;ab20
	jp p,0f302h		;ab21
	add a,c			;ab24
	jp p,0f103h		;ab25
	inc b			;ab28
	jp p,0f103h		;ab29
	inc b			;ab2c
	jp p,0f302h		;ab2d
	ex af,af'		;ab30
	jp p,0f107h		;ab31
	ex af,af'		;ab34
	jp p,0f104h		;ab35
	inc b			;ab38
	jp p,0f304h		;ab39
	ld b,0f2h		;ab3c
	nop			;ab3e
	ex af,af'		;ab3f
	add a,c			;ab40
	ex af,af'		;ab41
	add a,b			;ab42
	ld (bc),a		;ab43
	add a,c			;ab44
	adc a,(hl)		;ab45
	add a,b			;ab46
	add a,a			;ab47
	add a,h			;ab48
	add a,h			;ab49
	call m,07e00h		;ab4a
	ld e,(hl)		;ab4d
	ld a,02ah		;ab4e
	ld d,042h		;ab50
	ld h,b			;ab52
	djnz lab5dh		;ab53
	ld a,(hl)		;ab55
	sbc a,c			;ab56
	nop			;ab57
	inc l			;ab58
	nop			;ab59
	inc a			;ab5a
	inc a			;ab5b
	nop			;ab5c
lab5dh:
	inc a			;ab5d
	nop			;ab5e
	nop			;ab5f
	ld (hl),h		;ab60
	nop			;ab61
	ld b,000h		;ab62
	ld b,07ah		;ab64
	nop			;ab66
	inc h			;ab67
	nop			;ab68
	inc a			;ab69
	add a,b			;ab6a
	cp h			;ab6b
	add a,b			;ab6c
	nop			;ab6d
	inc l			;ab6e
	nop			;ab6f
	inc bc			;ab70
	ld l,c			;ab71
	add a,c			;ab72
	defb 0fdh,006h,081h ;illegal sequence	;ab73
	adc a,l			;ab76
	ld e,(hl)		;ab77
	dec a			;ab78
	dec (hl)		;ab79
	ld d,c			;ab7a
	add hl,hl		;ab7b
	nop			;ab7c
	nop			;ab7d
	ld e,c			;ab7e
	jr nz,labdah		;ab7f
	ld a,c			;ab81
	nop			;ab82
	nop			;ab83
	inc bc			;ab84
	cp 0aeh			;ab85
	add a,c			;ab87
	add a,b			;ab88
	add a,b			;ab89
	nop			;ab8a
	nop			;ab8b
	ld bc,00175h		;ab8c
	ld b,000h		;ab8f
	ld a,h			;ab91
	ld bc,06101h		;ab92
	jp 0c301h		;ab95
	ld bc,001c3h		;ab98
	jp 06a00h		;ab9b
	ld l,d			;ab9e
	nop			;ab9f
	nop			;aba0
	ld a,a			;aba1
	rst 38h			;aba2
	nop			;aba3
	cp 0a2h			;aba4
	cp 03eh			;aba6
	rst 38h			;aba8
	rst 18h			;aba9
	add a,c			;abaa
	nop			;abab
	add a,b			;abac
	or h			;abad
	add a,b			;abae
	ld h,d			;abaf
	ld l,d			;abb0
	ld h,d			;abb1
	ex af,af'		;abb2
	nop			;abb3
	ld b,007h		;abb4
	inc a			;abb6
	add a,h			;abb7
	nop			;abb8
	inc l			;abb9
	inc l			;abba
	nop			;abbb
	inc b			;abbc
	ld a,(hl)		;abbd
	adc a,l			;abbe
	nop			;abbf
	inc (hl)		;abc0
	inc (hl)		;abc1
	add a,b			;abc2
	add a,b			;abc3
	cp h			;abc4
	add a,b			;abc5
	inc h			;abc6
	nop			;abc7
	ld l,c			;abc8
	ld l,c			;abc9
	nop			;abca
	nop			;abcb
	inc bc			;abcc
	ld a,a			;abcd
	nop			;abce
	ld d,054h		;abcf
	dec d			;abd1
	ld b,b			;abd2
	add a,c			;abd3
	ld d,b			;abd4
	rlca			;abd5
	ld b,b			;abd6
	add a,e			;abd7
	ld d,b			;abd8
	nop			;abd9
labdah:
	ld d,h			;abda
	dec b			;abdb
	ld b,b			;abdc
	add a,c			;abdd
	ld d,b			;abde
	inc bc			;abdf
	ld b,b			;abe0
	inc bc			;abe1
	ld d,b			;abe2
	add a,d			;abe3
	ld b,b			;abe4
	nop			;abe5
	rlca			;abe6
	ld d,h			;abe7
	ex af,af'		;abe8
	ld b,b			;abe9
	ld (bc),a		;abea
	ld d,b			;abeb
	ld b,040h		;abec
	dec b			;abee
	ld d,h			;abef
	dec b			;abf0
	ld d,b			;abf1
	add a,c			;abf2
	ld b,b			;abf3
	inc bc			;abf4
	ld d,b			;abf5
	adc a,l			;abf6
	ld d,h			;abf7
	ld b,b			;abf8
	ld d,h			;abf9
	ld b,b			;abfa
	ld d,h			;abfb
	ld b,b			;abfc
	ld d,h			;abfd
	ld d,b			;abfe
	ld d,b			;abff
	ld b,b			;ac00
	ld b,b			;ac01
	ld b,l			;ac02
	ld b,l			;ac03
	rlca			;ac04
	dec b			;ac05
	ld (bc),a		;ac06
	ld d,h			;ac07
	ld (bc),a		;ac08
	ld d,b			;ac09
	ld (bc),a		;ac0a
	ld b,b			;ac0b
	add a,c			;ac0c
	ld d,b			;ac0d
	inc b			;ac0e
	ld b,b			;ac0f
	adc a,l			;ac10
	ld d,b			;ac11
	ld d,h			;ac12
	nop			;ac13
	ld d,h			;ac14
	nop			;ac15
	ld d,h			;ac16
	nop			;ac17
	ld d,h			;ac18
	ld d,b			;ac19
	ld d,b			;ac1a
	ld b,b			;ac1b
	ld b,b			;ac1c
	ld d,b			;ac1d
	inc b			;ac1e
	ld b,b			;ac1f
	add a,e			;ac20
	ld d,b			;ac21
	ld b,b			;ac22
	ld d,b			;ac23
	inc bc			;ac24
	ld b,b			;ac25
	inc bc			;ac26
	ld d,b			;ac27
	ld (bc),a		;ac28
	ld b,b			;ac29
	inc b			;ac2a
	ld b,l			;ac2b
	nop			;ac2c
	xor e			;ac2d
	ld (hl),b		;ac2e
	ret po			;ac2f
	ret po			;ac30
	ret nz			;ac31
	ret nz			;ac32
	rst 38h			;ac33
	ccf			;ac34
	jr nz,lac45h		;ac35
	rlca			;ac37
	rlca			;ac38
	inc bc			;ac39
	inc bc			;ac3a
	call m,0380ch		;ac3b
	cp l			;ac3e
	rst 0			;ac3f
	add a,c			;ac40
	cp l			;ac41
	rst 0			;ac42
	add a,c			;ac43
	cp l			;ac44
lac45h:
	rst 0			;ac45
	add a,c			;ac46
	rst 38h			;ac47
	rst 0			;ac48
	add a,l			;ac49
	rst 38h			;ac4a
	rst 0			;ac4b
	add a,l			;ac4c
	rst 38h			;ac4d
	rst 0			;ac4e
	add a,l			;ac4f
	rst 38h			;ac50
	rst 0			;ac51
	cp l			;ac52
	rst 38h			;ac53
	rst 0			;ac54
	cp l			;ac55
	inc a			;ac56
	ld a,(hl)		;ac57
	nop			;ac58
	dec e			;ac59
	ld (hl),h		;ac5a
	nop			;ac5b
	sub e			;ac5c
	jp p,0fef3h		;ac5d
	cp 013h			;ac60
	ld hl,09121h		;ac62
	pop af			;ac65
	jp p,0f3f3h		;ac66
	ld (de),a		;ac69
	ld (de),a		;ac6a
	sub c			;ac6b
	sub c			;ac6c
	jp p,0f3f3h		;ac6d
	inc bc			;ac70
	jp p,0f185h		;ac71
	jp p,0f1f1h		;ac74
	jp p,0f103h		;ac77
	ld (bc),a		;ac7a
	ld sp,hl		;ac7b
	add a,c			;ac7c
	pop af			;ac7d
	rlca			;ac7e
	ld sp,hl		;ac7f
	add a,d			;ac80
	ret p			;ac81
	sub b			;ac82
	inc bc			;ac83
	ld hl,03202h		;ac84
	add a,d			;ac87
	ex (sp),hl		;ac88
	ld (0e303h),a		;ac89
	adc a,l			;ac8c
	ld (032e3h),a		;ac8d
	ld (03221h),a		;ac90
	ld (02121h),a		;ac93
	ld (02121h),a		;ac96
	add hl,de		;ac99
	inc bc			;ac9a
	ld hl,01984h		;ac9b
	ld hl,01921h		;ac9e
	nop			;aca1
	adc a,(hl)		;aca2
	rlca			;aca3
	ccf			;aca4
	rst 38h			;aca5
	rrca			;aca6
	ret m			;aca7
	ret nz			;aca8
	ret m			;aca9
	ret nz			;acaa
	ret nz			;acab
	ret m			;acac
	ccf			;acad
	rlca			;acae
	rlca			;acaf
	ret po			;acb0
	ld b,01fh		;acb1
	inc b			;acb3
	ret po			;acb4
	add a,l			;acb5
	ld a,a			;acb6
	rra			;acb7
	inc bc			;acb8
	rra			;acb9
	inc bc			;acba
	dec b			;acbb
	rlca			;acbc
	dec b			;acbd
	ret m			;acbe
	add a,d			;acbf
	rst 38h			;acc0
	ld h,c			;acc1
	dec b			;acc2
	rrca			;acc3
	add a,h			;acc4
	call m,0f0f0h		;acc5
	jr nc,laccdh		;acc8
	or 083h			;acca
	adc a,c			;accc
laccdh:
	adc a,a			;accd
	rst 8			;acce
	dec b			;accf
	pop hl			;acd0
	inc bc			;acd1
	add a,c			;acd2
	add a,c			;acd3
	rst 8			;acd4
	inc b			;acd5
	adc a,c			;acd6
	add a,h			;acd7
	adc a,a			;acd8
	ld c,a			;acd9
	ld c,a			;acda
	pop af			;acdb
	inc bc			;acdc
	ret p			;acdd
	add a,l			;acde
	ld (hl),b		;acdf
	ret nz			;ace0
	call m,0fffch		;ace1
	ld b,080h		;ace4
	add a,c			;ace6
	add a,c			;ace7
	inc bc			;ace8
	add a,b			;ace9
	add a,c			;acea
	rst 38h			;aceb
	dec b			;acec
	add a,b			;aced
	add a,c			;acee
	rst 38h			;acef
	dec b			;acf0
	add a,b			;acf1
	add a,e			;acf2
	add a,c			;acf3
	nop			;acf4
	inc a			;acf5
	ex af,af'		;acf6
	ld a,(hl)		;acf7
	inc b			;acf8
	pop bc			;acf9
	ld (bc),a		;acfa
	add a,c			;acfb
	adc a,h			;acfc
	ret nz			;acfd
	ret p			;acfe
	nop			;acff
	nop			;ad00
	ret p			;ad01
	ret nz			;ad02
	nop			;ad03
	nop			;ad04
	add hl,bc		;ad05
	add hl,bc		;ad06
	rst 38h			;ad07
	rst 8			;ad08
	inc b			;ad09
	add hl,bc		;ad0a
	add a,(hl)		;ad0b
	add a,b			;ad0c
	nop			;ad0d
	nop			;ad0e
	ret po			;ad0f
	call m,004c0h		;ad10
	nop			;ad13
	add a,h			;ad14
	ret p			;ad15
	cp 0f0h			;ad16
	ret nz			;ad18
	inc b			;ad19
	nop			;ad1a
	adc a,c			;ad1b
	ld h,d			;ad1c
	add hl,bc		;ad1d
	ret			;ad1e
	add hl,bc		;ad1f
	add hl,bc		;ad20
	ret			;ad21
	ld a,0f8h		;ad22
	ret nz			;ad24
	inc bc			;ad25
	nop			;ad26
	inc b			;ad27
	ld a,a			;ad28
	ld (bc),a		;ad29
	ret p			;ad2a
	sub a			;ad2b
	rrca			;ad2c
	ld a,a			;ad2d
	rst 38h			;ad2e
	rst 38h			;ad2f
	rrca			;ad30
	inc bc			;ad31
	rst 38h			;ad32
	rrca			;ad33
	rrca			;ad34
	pop de			;ad35
	ret z			;ad36
	ld l,b			;ad37
	nop			;ad38
	rrca			;ad39
	rrca			;ad3a
	ld (hl),b		;ad3b
	rrca			;ad3c
	ld a,a			;ad3d
	adc a,a			;ad3e
	ret p			;ad3f
	ld c,h			;ad40
	ld h,h			;ad41
	cpl			;ad42
	ld b,0f0h		;ad43
	add a,c			;ad45
	ret nz			;ad46
	inc bc			;ad47
	nop			;ad48
lad49h:
	add a,e			;ad49
	ret po			;ad4a
	ret m			;ad4b
	ret po			;ad4c
	nop			;ad4d
	inc bc			;ad4e
	jr nz,lad54h		;ad4f
	ld (02102h),a		;ad51
lad54h:
	ld (bc),a		;ad54
	inc hl			;ad55
	ld (bc),a		;ad56
	ld hl,0198ch		;ad57
	ld sp,hl		;ad5a
	ld sp,hl		;ad5b
lad5ch:
	ld hl,02132h		;ad5c
	add hl,de		;ad5f
	sbc a,a			;ad60
	sbc a,a			;ad61
	sub c			;ad62
	ld (de),a		;ad63
	ld (de),a		;ad64
	inc bc			;ad65
	di			;ad66
	ld (bc),a		;ad67
	ld (02189h),a		;ad68
	add hl,de		;ad6b
	sbc a,a			;ad6c
	jp p,02323h		;ad6d
	ld (de),a		;ad70
	sub c			;ad71
	ld sp,hl		;ad72
	inc b			;ad73
	rra			;ad74
	add a,e			;ad75
	ld sp,01223h		;ad76
	inc bc			;ad79
	sub c			;ad7a
	inc bc			;ad7b
	sbc a,a			;ad7c
	add a,d			;ad7d
	add hl,hl		;ad7e
	add hl,de		;ad7f
	inc b			;ad80
lad81h:
	ld sp,hl		;ad81
	ld (bc),a		;ad82
	pop af			;ad83
	inc bc			;ad84
	ld sp,hl		;ad85
	add a,c			;ad86
	pop af			;ad87
	inc bc			;ad88
	ld sp,hl		;ad89
	add a,d			;ad8a
	jp p,009f1h		;ad8b
	ld sp,hl		;ad8e
	ld (bc),a		;ad8f
	sub c			;ad90
	add a,e			;ad91
	sub d			;ad92
	jp p,003f2h		;ad93
	di			;ad96
	sbc a,a			;ad97
	jp p,0f9f1h		;ad98
	di			;ad9b
	jp p,0f1f1h		;ad9c
	jp p,0f2f3h		;ad9f
	pop af			;ada2
	ld sp,hl		;ada3
	ld sp,hl		;ada4
	jp p,0f3f3h		;ada5
	jp p,0f9f1h		;ada8
	sub b			;adab
	sub b			;adac
	djnz ladceh		;adad
	cpl			;adaf
	cpl			;adb0
	ccf			;adb1
	ccf			;adb2
	cpl			;adb3
	rra			;adb4
	jp p,003f2h		;adb5
	pop af			;adb8
	add a,d			;adb9
	ld sp,hl		;adba
	jr nz,ladc1h		;adbb
	jr nc,$+5		;adbd
	jr nz,lad49h		;adbf
ladc1h:
	jp p,09191h		;adc1
	ld sp,hl		;adc4
	ld sp,hl		;adc5
	sub d			;adc6
	sub c			;adc7
	ld sp,hl		;adc8
	inc bc			;adc9
	sub b			;adca
	add a,d			;adcb
	jr nz,$+50		;adcc
ladceh:
	ld b,020h		;adce
	add a,d			;add0
	jr nc,$+34		;add1
	dec b			;add3
	djnz lad5ch		;add4
	jr nz,$-109		;add6
	ld sp,hl		;add8
	jp p,0f991h		;add9
	ld b,032h		;addc
	inc bc			;adde
	ld hl,02382h		;addf
	ld hl,01905h		;ade2
	add a,h			;ade5
	jr nz,lae1ah		;ade6
	ld (00421h),a		;ade8
	rra			;adeb
	ld (bc),a		;adec
	jr nz,$+6		;aded
	ccf			;adef
	adc a,e			;adf0
	jp p,0f1f3h		;adf1
	ld sp,hl		;adf4
	ld sp,hl		;adf5
	pop af			;adf6
	inc de			;adf7
	ld (01921h),a		;adf8
	jr nc,lae02h		;adfb
	jr nz,lad81h		;adfd
	jr nc,$+18		;adff
	nop			;ae01
lae02h:
	ld (bc),a		;ae02
	add a,e			;ae03
	inc b			;ae04
	ld a,(hl)		;ae05
	add a,a			;ae06
	add a,c			;ae07
	ld a,(bc)		;ae08
	adc a,e			;ae09
	add a,b			;ae0a
	add a,b			;ae0b
	ccf			;ae0c
	ccf			;ae0d
	inc bc			;ae0e
	call p,0f791h		;ae0f
	call p,003f4h		;ae12
	inc bc			;ae15
	call m,00b0bh		;ae16
	sbc a,a			;ae19
lae1ah:
	rra			;ae1a
	rra			;ae1b
	ret po			;ae1c
	ret po			;ae1d
	djnz lae90h		;ae1e
	ld b,b			;ae20
	rst 38h			;ae21
	inc bc			;ae22
	adc a,d			;ae23
	inc bc			;ae24
	ld (hl),h		;ae25
	add a,h			;ae26
	ld a,(hl)		;ae27
	ex af,af'		;ae28
	ex af,af'		;ae29
	adc a,e			;ae2a
	dec b			;ae2b
	add a,b			;ae2c
	add a,l			;ae2d
	ld h,(hl)		;ae2e
	jr lae49h		;ae2f
	or 076h			;ae31
	inc bc			;ae33
	add a,c			;ae34
	add a,h			;ae35
	ld l,b			;ae36
	ld h,b			;ae37
	ld e,061h		;ae38
	inc bc			;ae3a
	add a,b			;ae3b
	add a,h			;ae3c
	ld l,b			;ae3d
	add a,c			;ae3e
	add a,c			;ae3f
	rst 38h			;ae40
	inc bc			;ae41
	adc a,e			;ae42
	and l			;ae43
	adc a,d			;ae44
	ld (hl),h		;ae45
	adc a,h			;ae46
	inc bc			;ae47
	inc bc			;ae48
lae49h:
	ld a,(bc)		;ae49
	adc a,e			;ae4a
	res 1,e			;ae4b
	rrca			;ae4d
	adc a,c			;ae4e
	add a,c			;ae4f
	ld a,(hl)		;ae50
	nop			;ae51
	add a,e			;ae52
	or 0feh			;ae53
	cp 040h			;ae55
	add a,b			;ae57
	ld l,b			;ae58
	ld l,b			;ae59
	inc bc			;ae5a
	ccf			;ae5b
	ld b,b			;ae5c
	add a,b			;ae5d
	rst 38h			;ae5e
	ld a,h			;ae5f
	add a,c			;ae60
	add a,c			;ae61
	ld a,a			;ae62
	ld a,a			;ae63
	ld a,(hl)		;ae64
	ld a,(hl)		;ae65
	inc a			;ae66
	inc a			;ae67
	jp 00003h		;ae68
	ld (bc),a		;ae6b
	dec bc			;ae6c
	inc bc			;ae6d
	ld (hl),h		;ae6e
	add a,(hl)		;ae6f
	add a,e			;ae70
	ld a,h			;ae71
	ld a,h			;ae72
	inc bc			;ae73
	rst 38h			;ae74
	ld (hl),b		;ae75
	inc bc			;ae76
	add a,b			;ae77
	ld (bc),a		;ae78
	ld l,b			;ae79
	add a,h			;ae7a
	inc bc			;ae7b
	ccf			;ae7c
	call p,00474h		;ae7d
	ld a,h			;ae80
	ld (bc),a		;ae81
	add a,e			;ae82
	add a,c			;ae83
	add a,b			;ae84
	inc bc			;ae85
	jp 03c81h		;ae86
	inc bc			;ae89
	rst 30h			;ae8a
	inc bc			;ae8b
	dec bc			;ae8c
	ld (bc),a		;ae8d
	inc bc			;ae8e
	inc bc			;ae8f
lae90h:
	call m,03c85h		;ae90
	inc e			;ae93
	ld h,e			;ae94
	add a,b			;ae95
	add a,b			;ae96
	inc bc			;ae97
	ld l,b			;ae98
	add a,h			;ae99
	add a,c			;ae9a
	ld b,d			;ae9b
	inc a			;ae9c
	ld (hl),h		;ae9d
	inc bc			;ae9e
	ld a,h			;ae9f
	add a,e			;aea0
	add a,e			;aea1
	ex af,af'		;aea2
	inc bc			;aea3
	inc bc			;aea4
	jp 03d86h		;aea5
	cp 0f7h			;aea8
	add a,c			;aeaa
	rst 30h			;aeab
	call p,07403h		;aeac
	adc a,d			;aeaf
	halt			;aeb0
	add a,c			;aeb1
	ld l,b			;aeb2
	ld h,b			;aeb3
	rlca			;aeb4
	rlca			;aeb5
	jr c,$+66		;aeb6
	add a,b			;aeb8
	ld l,b			;aeb9
	inc bc			;aeba
	ld (hl),h		;aebb
	add a,l			;aebc
	ld bc,08381h		;aebd
	add a,e			;aec0
	ld a,(hl)		;aec1
	inc bc			;aec2
	ld a,a			;aec3
	inc bc			;aec4
	dec bc			;aec5
	ld (bc),a		;aec6
	adc a,a			;aec7
	adc a,d			;aec8
	jp 03c3ch		;aec9
	rst 30h			;aecc
	or 076h			;aecd
	rst 30h			;aecf
	halt			;aed0
	ret nz			;aed1
	jr z,laed7h		;aed2
	ld l,b			;aed4
	add a,e			;aed5
	add a,b			;aed6
laed7h:
	rlca			;aed7
	ccf			;aed8
	inc bc			;aed9
	add a,c			;aeda
	add a,c			;aedb
	push af			;aedc
	inc b			;aedd
	ld (hl),h		;aede
	add a,e			;aedf
	ret nz			;aee0
	rra			;aee1
	ld h,b			;aee2
	inc bc			;aee3
	add a,b			;aee4
	sub d			;aee5
	dec bc			;aee6
	jp 0fcfch		;aee7
	jp 03c3ch		;aeea
	rst 30h			;aeed
	call p,04074h		;aeee
	add a,b			;aef1
	ret nz			;aef2
	jr z,laf5dh		;aef3
	ld l,b			;aef5
	ld bc,0000fh		;aef6
	sbc a,l			;aef9
	ld hl,03232h		;aefa
	ld hl,09f19h		;aefd
	sbc a,a			;af00
	sub c			;af01
	ld (02132h),a		;af02
	sub c			;af05
	ld sp,hl		;af06
	ld sp,hl		;af07
	sub c			;af08
	inc hl			;af09
	ld hl,02132h		;af0a
	sub c			;af0d
	ld sp,hl		;af0e
	ld sp,hl		;af0f
	sub c			;af10
	ld (de),a		;af11
	ld (de),a		;af12
	sub c			;af13
	ld sp,hl		;af14
	ld sp,hl		;af15
	sub c			;af16
	inc bc			;af17
	ld hl,09102h		;af18
	sbc a,c			;af1b
	ld (de),a		;af1c
	inc hl			;af1d
	ex (sp),hl		;af1e
	ex (sp),hl		;af1f
	ld (02121h),a		;af20
	ld (03132h),a		;af23
	add hl,hl		;af26
	rra			;af27
	ld sp,hl		;af28
	pop af			;af29
	ld sp,hl		;af2a
	pop af			;af2b
	ld (de),a		;af2c
	ld (09121h),a		;af2d
	ld sp,hl		;af30
	rra			;af31
	ld hl,0f121h		;af32
	inc bc			;af35
	ld sp,hl		;af36
	adc a,l			;af37
	sub c			;af38
	ld hl,09ff1h		;af39
	sbc a,a			;af3c
	sub c			;af3d
	sub c			;af3e
	ld (de),a		;af3f
	ld (de),a		;af40
	ld (0f9f9h),a		;af41
	ld de,03203h		;af44
	add a,e			;af47
	ld hl,091f9h		;af48
	inc bc			;af4b
	ld sp,hl		;af4c
	sub l			;af4d
	ld hl,02132h		;af4e
	add hl,de		;af51
	ld sp,hl		;af52
	pop af			;af53
	ld hl,0f121h		;af54
	pop af			;af57
	ld sp,hl		;af58
	ld sp,hl		;af59
	ld hl,0f121h		;af5a
laf5dh:
	sbc a,a			;af5d
	sub c			;af5e
	ld (de),a		;af5f
	ld (09121h),a		;af60
	inc bc			;af63
	ld sp,hl		;af64
	inc bc			;af65
	ld hl,03202h		;af66
	add a,a			;af69
	ld hl,0f919h		;af6a
	ld sp,hl		;af6d
	sub c			;af6e
	ld hl,00321h		;af6f
	ld sp,hl		;af72
	sub h			;af73
	sub c			;af74
	ld hl,0f121h		;af75
	pop af			;af78
	ld (032e3h),a		;af79
	ld hl,09f19h		;af7c
	sbc a,a			;af7f
	add hl,de		;af80
	ld (01921h),a		;af81
	sbc a,a			;af84
	sbc a,a			;af85
	sub c			;af86
	ld (de),a		;af87
	inc bc			;af88
	inc hl			;af89
	add a,a			;af8a
	ld (de),a		;af8b
	sub c			;af8c
	ld sp,hl		;af8d
	ld sp,hl		;af8e
	sub c			;af8f
	ld (de),a		;af90
	sub c			;af91
	inc bc			;af92
	ld sp,hl		;af93
	add a,c			;af94
	sub c			;af95
	inc bc			;af96
	ld hl,0f18ch		;af97
	ld sp,hl		;af9a
	jp p,02132h		;af9b
	add hl,de		;af9e
	sbc a,a			;af9f
	sbc a,a			;afa0
	ld (02132h),a		;afa1
	add hl,de		;afa4
	inc bc			;afa5
	sbc a,a			;afa6
	adc a,h			;afa7
	sub c			;afa8
lafa9h:
	ld hl,03221h		;afa9
	ex (sp),hl		;afac
	ex (sp),hl		;afad
	ld (0f121h),a		;afae
	ld hl,09121h		;afb1
	inc bc			;afb4
	ld sp,hl		;afb5
	sbc a,e			;afb6
	pop af			;afb7
	ld hl,0e3e3h		;afb8
	ld (0f1f2h),a		;afbb
	ld sp,hl		;afbe
	cpl			;afbf
	ld hl,01ff9h		;afc0
	rra			;afc3
	ld hl,03232h		;afc4
	ld hl,0f91fh		;afc7
	ld sp,hl		;afca
	sub c			;afcb
	ld hl,0e332h		;afcc
	ld (09121h),a		;afcf
	inc b			;afd2
	ld hl,0319eh		;afd3
	pop af			;afd6
	pop af			;afd7
	sub c			;afd8
	add hl,hl		;afd9
	ld hl,03221h		;afda
	ex (sp),hl		;afdd
	ex (sp),hl		;afde
	ld (0f121h),a		;afdf
	ld sp,hl		;afe2
	ld sp,hl		;afe3
	sub c			;afe4
	ld (de),a		;afe5
	ld (02121h),a		;afe6
	add hl,de		;afe9
	ld sp,hl		;afea
	ld sp,hl		;afeb
	sub c			;afec
	ld hl,0e332h		;afed
	ld sp,hl		;aff0
	ld sp,hl		;aff1
	sub c			;aff2
	inc bc			;aff3
	ld hl,0f102h		;aff4
	nop			;aff7
	dec b			;aff8
	nop			;aff9
	adc a,e			;affa
	inc bc			;affb
	rra			;affc
	inc bc			;affd
	nop			;affe
	nop			;afff
	ld bc,07f0fh		;b000
	rrca			;b003
	ld a,(hl)		;b004
sub_b005h:
	ret p			;b005
	ld b,000h		;b006
	add a,d			;b008
	jr c,$-27		;b009
	inc b			;b00b
	nop			;b00c
	add a,c			;b00d
	dec bc			;b00e
	inc bc			;b00f
	in a,(002h)		;b010
	nop			;b012
	add a,c			;b013
	inc b			;b014
	inc bc			;b015
	ld l,h			;b016
lb017h:
	add a,d			;b017
	sbc a,c			;b018
	ret			;b019
	dec b			;b01a
	nop			;b01b
	add a,c			;b01c
	ld bc,00307h		;b01d
	add a,e			;b020
	ld bc,00000h		;b021
	nop			;b024
	rlca			;b025
	jr nz,lafa9h		;b026
	ld (02005h),a		;b028
	inc bc			;b02b
	ld (0100ch),a		;b02c
	add a,e			;b02f
	sub b			;b030
	djnz lb063h		;b031
	inc bc			;b033
	djnz lb038h		;b034
	sub b			;b036
	add a,h			;b037
lb038h:
	djnz lb05ah		;b038
	di			;b03a
	jp p,02008h		;b03b
	inc bc			;b03e
	djnz lb046h		;b03f
	sub b			;b041
	nop			;b042
sub_b043h:
	inc bc			;b043
	nop			;b044
	sub d			;b045
lb046h:
	inc a			;b046
	ld a,(hl)		;b047
	cp l			;b048
	rst 0			;b049
	add a,c			;b04a
	ld bc,00e07h		;b04b
	dec e			;b04e
	dec sp			;b04f
	dec sp			;b050
	halt			;b051
	halt			;b052
	ret nz			;b053
	nop			;b054
	ld (hl),b		;b055
	ret nz			;b056
	add a,b			;b057
	inc bc			;b058
	nop			;b059
lb05ah:
	adc a,l			;b05a
	add a,b			;b05b
	ret po			;b05c
	ld (hl),b		;b05d
	cp b			;b05e
	call c,06edch		;b05f
	ld l,(hl)		;b062
lb063h:
	inc bc			;b063
	nop			;b064
	ld c,003h		;b065
	ld bc,00003h		;b067
	inc b			;b06a
	call pe,0fc84h		;b06b
	rra			;b06e
	rlca			;b06f
	ld bc,03704h		;b070
	sub h			;b073
	ccf			;b074
	ret m			;b075
	ret po			;b076
	add a,b			;b077
	rlca			;b078
	rra			;b079
	ccf			;b07a
	ld a,a			;b07b
	ld a,a			;b07c
	ret p			;b07d
	ret po			;b07e
	call m,0f8e0h		;b07f
	call m,0fefeh		;b082
	rrca			;b085
	rlca			;b086
	ccf			;b087
	nop			;b088
	inc bc			;b089
	sub b			;b08a
	add a,l			;b08b
	djnz $+34		;b08c
	pop af			;b08e
	jp p,022f3h		;b08f
	jr nc,lb017h		;b092
	jr nz,lb0a6h		;b094
	sub b			;b096
	inc bc			;b097
	di			;b098
	ld (bc),a		;b099
	jr nc,$-123		;b09a
	jr nz,$+18		;b09c
	sub b			;b09e
	inc bc			;b09f
	di			;b0a0
	dec b			;b0a1
	or b			;b0a2
	add a,e			;b0a3
	set 7,h			;b0a4
lb0a6h:
	call m,sub_b005h	;b0a6
	add a,e			;b0a9
	set 7,h			;b0aa
	call m,09900h		;b0ac
	cp 0f0h			;b0af
	add a,b			;b0b1
	rrca			;b0b2
	ld a,a			;b0b3
	ret p			;b0b4
	add a,e			;b0b5
	rlca			;b0b6
	nop			;b0b7
	rrca			;b0b8
	rst 38h			;b0b9
	ret p			;b0ba
	ret p			;b0bb
	pop af			;b0bc
	ld bc,04f01h		;b0bd
	ld l,c			;b0c0
	ld a,c			;b0c1
	add hl,sp		;b0c2
	add hl,sp		;b0c3
	rra			;b0c4
	sbc a,a			;b0c5
	adc a,a			;b0c6
	call m,0f003h		;b0c7
	adc a,h			;b0ca
	rrca			;b0cb
	rlca			;b0cc
	ld a,a			;b0cd
	ld bc,0070bh		;b0ce
	ld l,a			;b0d1
	cp e			;b0d2
	ld a,a			;b0d3
	call m,00fe0h		;b0d4
	ex af,af'		;b0d7
	ret po			;b0d8
	inc b			;b0d9
lb0dah:
	ld (hl),b		;b0da
	ld (bc),a		;b0db
	jr c,$-116		;b0dc
	inc e			;b0de
	rra			;b0df
	rrca			;b0e0
	rlca			;b0e1
	add a,b			;b0e2
	add a,b			;b0e3
	ret nz			;b0e4
	ret po			;b0e5
	ld (hl),b		;b0e6
	inc a			;b0e7
	ld b,011h		;b0e8
	ld (bc),a		;b0ea
	add hl,bc		;b0eb
	adc a,b			;b0ec
	rra			;b0ed
	ret m			;b0ee
	ld h,b			;b0ef
	ld h,b			;b0f0
	rst 38h			;b0f1
	ld a,a			;b0f2
	ret po			;b0f3
	rst 38h			;b0f4
	add hl,bc		;b0f5
	ret po			;b0f6
	ld (bc),a		;b0f7
	rst 38h			;b0f8
	add a,c			;b0f9
	rra			;b0fa
	inc bc			;b0fb
	nop			;b0fc
	add a,(hl)		;b0fd
	ret p			;b0fe
	rst 38h			;b0ff
	ret p			;b100
	add a,b			;b101
	add a,b			;b102
	ret p			;b103
	inc bc			;b104
	add a,b			;b105
	adc a,e			;b106
	ex af,af'		;b107
	inc b			;b108
	ld b,003h		;b109
	ld a,a			;b10b
	ld a,a			;b10c
	ccf			;b10d
	rrca			;b10e
	ld bc,07f0fh		;b10f
	dec b			;b112
	rst 38h			;b113
	add a,c			;b114
	rst 8			;b115
	rlca			;b116
	ret nz			;b117
	and h			;b118
	rlca			;b119
	ccf			;b11a
lb11bh:
	rrca			;b11b
	rrca			;b11c
	ld c,0feh		;b11d
	ld c,07eh		;b11f
	rra			;b121
	ret m			;b122
	ret nz			;b123
	call m,003e0h		;b124
	rra			;b127
	call m,00000h		;b128
	rrca			;b12b
	ld a,a			;b12c
	rlca			;b12d
	ccf			;b12e
	ld b,l			;b12f
	rst 38h			;b130
	ex af,af'		;b131
	rst 28h			;b132
	call po,0f204h		;b133
	jp m,0ff01h		;b136
	rra			;b139
	rrca			;b13a
	ld bc,00401h		;b13b
	nop			;b13e
	add a,c			;b13f
	rst 38h			;b140
	ld b,0f0h		;b141
	add a,l			;b143
	nop			;b144
	rrca			;b145
	adc a,a			;b146
	ld d,b			;b147
	jr nc,lb14eh		;b148
	djnz lb0dah		;b14a
	rst 0			;b14c
	add a,e			;b14d
lb14eh:
	add a,b			;b14e
	inc c			;b14f
	rra			;b150
	ccf			;b151
	rrca			;b152
	rrca			;b153
	nop			;b154
	ret po			;b155
	rst 38h			;b156
	rra			;b157
	rra			;b158
	inc bc			;b159
	rlca			;b15a
	nop			;b15b
	add a,h			;b15c
	ret po			;b15d
	cp 0c0h			;b15e
	ret m			;b160
	rlca			;b161
	rst 38h			;b162
	sub b			;b163
	add a,c			;b164
	rst 38h			;b165
	rst 38h			;b166
	add a,b			;b167
	push de			;b168
	push bc			;b169
	ret m			;b16a
	rrca			;b16b
	rst 38h			;b16c
	rst 38h			;b16d
	rrca			;b16e
	ld bc,03f0fh		;b16f
	rst 38h			;b172
	rst 38h			;b173
	dec b			;b174
	rrca			;b175
	add a,l			;b176
	rst 38h			;b177
	ret p			;b178
	ld c,a			;b179
	ret p			;b17a
	ret p			;b17b
	inc bc			;b17c
	nop			;b17d
	inc b			;b17e
	rrca			;b17f
	ld (bc),a		;b180
	ret p			;b181
	dec b			;b182
	rst 38h			;b183
	inc bc			;b184
	ret p			;b185
	add a,(hl)		;b186
	rrca			;b187
	ret po			;b188
	jr nz,lb11bh		;b189
	ret nc			;b18b
	rst 38h			;b18c
	ld b,080h		;b18d
	adc a,l			;b18f
	add a,c			;b190
	rst 38h			;b191
	ret po			;b192
	rst 38h			;b193
	rra			;b194
	nop			;b195
	nop			;b196
	rst 38h			;b197
	rst 38h			;b198
	rrca			;b199
	rrca			;b19a
	ret p			;b19b
	ret p			;b19c
	inc bc			;b19d
	nop			;b19e
	dec b			;b19f
	rrca			;b1a0
	ld (bc),a		;b1a1
	ret p			;b1a2
	ld (bc),a		;b1a3
	nop			;b1a4
	ld (bc),a		;b1a5
	ld a,a			;b1a6
	ld (bc),a		;b1a7
	nop			;b1a8
	add a,c			;b1a9
	add a,b			;b1aa
	inc bc			;b1ab
	rst 38h			;b1ac
	add a,e			;b1ad
	rrca			;b1ae
	ret p			;b1af
	ret p			;b1b0
	dec b			;b1b1
	rst 38h			;b1b2
	adc a,d			;b1b3
	cp 0f0h			;b1b4
	add a,b			;b1b6
	cp 0feh			;b1b7
	ret p			;b1b9
	add a,b			;b1ba
	ld bc,01010h		;b1bb
	ld b,011h		;b1be
	nop			;b1c0
	inc bc			;b1c1
	ld hl,09109h		;b1c2
	add a,c			;b1c5
	rra			;b1c6
	dec b			;b1c7
	ld sp,hl		;b1c8
	add a,h			;b1c9
	jp p,0f9f1h		;b1ca
	ld sp,hl		;b1cd
	inc bc			;b1ce
	pop af			;b1cf
	add a,(hl)		;b1d0
	ld sp,hl		;b1d1
	sub c			;b1d2
	ld (de),a		;b1d3
	ld (de),a		;b1d4
	sub c			;b1d5
	sub c			;b1d6
	ld b,0f9h		;b1d7
	ld (bc),a		;b1d9
	pop af			;b1da
	inc de			;b1db
	ld hl,0f104h		;b1dc
	dec bc			;b1df
	ld sp,hl		;b1e0
	add a,h			;b1e1
	pop af			;b1e2
	ld hl,03232h		;b1e3
	inc b			;b1e6
	ex (sp),hl		;b1e7
	add a,l			;b1e8
	ld (0e2e3h),a		;b1e9
	ld (00932h),a		;b1ec
	ld hl,09104h		;b1ef
	ld (bc),a		;b1f2
	ld (de),a		;b1f3
	ld (bc),a		;b1f4
	pop af			;b1f5
	dec b			;b1f6
	ld sp,hl		;b1f7
	ld d,091h		;b1f8
	add a,h			;b1fa
	ld sp,hl		;b1fb
	rra			;b1fc
	ld hl,00521h		;b1fd
	ld (02102h),a		;b200
	rlca			;b203
	sub c			;b204
	rrca			;b205
	ld sp,hl		;b206
	rlca			;b207
	add hl,de		;b208
	adc a,d			;b209
	sbc a,a			;b20a
	jp p,01921h		;b20b
	sbc a,a			;b20e
	sbc a,a			;b20f
	sub c			;b210
	sub c			;b211
	pop af			;b212
	pop af			;b213
	inc bc			;b214
	jp p,0f104h		;b215
	inc bc			;b218
	ld hl,09281h		;b219
	inc b			;b21c
	ld sp,hl		;b21d
	add a,c			;b21e
	pop af			;b21f
	rlca			;b220
	add hl,de		;b221
	inc b			;b222
	rra			;b223
	add hl,bc		;b224
	sub c			;b225
	inc b			;b226
	ld sp,hl		;b227
	add a,e			;b228
	pop af			;b229
	ld sp,hl		;b22a
	ld sp,hl		;b22b
	inc bc			;b22c
	pop af			;b22d
	add a,e			;b22e
	jp p,0f2f3h		;b22f
	inc bc			;b232
	pop af			;b233
	add a,h			;b234
	ld sp,hl		;b235
	cpl			;b236
	ld (de),a		;b237
	sub c			;b238
	dec b			;b239
	ld sp,hl		;b23a
	dec b			;b23b
	sub c			;b23c
	add a,h			;b23d
	ld sp,hl		;b23e
	cpl			;b23f
	sbc a,a			;b240
	sbc a,a			;b241
	ld b,019h		;b242
	add a,l			;b244
	ld hl,09f19h		;b245
	sbc a,a			;b248
	pop af			;b249
	inc b			;b24a
	ld sp,hl		;b24b
	add a,c			;b24c
	jp p,0f303h		;b24d
	add a,d			;b250
	jp p,004f1h		;b251
	ld sp,hl		;b254
	ld (bc),a		;b255
	pop af			;b256
	ld (bc),a		;b257
	sub d			;b258
	add a,h			;b259
	rst 38h			;b25a
	sub d			;b25b
	ld sp,hl		;b25c
	ld sp,hl		;b25d
	dec b			;b25e
	sub c			;b25f
	add a,l			;b260
	rra			;b261
	ld hl,0f992h		;b262
	ld sp,hl		;b265
	inc b			;b266
	sub c			;b267
	add hl,bc		;b268
	ld (de),a		;b269
	ld b,091h		;b26a
	inc bc			;b26c
	ld (02104h),a		;b26d
	adc a,c			;b270
	sub c			;b271
	jp p,0f9f1h		;b272
	pop af			;b275
	pop af			;b276
	ld sp,hl		;b277
	pop af			;b278
	ld sp,hl		;b279
	nop			;b27a
	ex af,af'		;b27b
	adc a,e			;b27c
	adc a,b			;b27d
	sbc a,a			;b27e
	add a,a			;b27f
	jr c,$+65		;b280
	rrca			;b282
	ld a,a			;b283
	nop			;b284
	add a,b			;b285
	ex af,af'		;b286
	add a,c			;b287
	ex af,af'		;b288
	ld a,a			;b289
	inc b			;b28a
	ld bc,0ff04h		;b28b
	ex af,af'		;b28e
	add a,c			;b28f
	sub b			;b290
	rst 38h			;b291
	rst 0			;b292
	cp l			;b293
	rst 38h			;b294
	rst 0			;b295
	cp l			;b296
	rst 38h			;b297
	rst 0			;b298
	cp l			;b299
	rst 38h			;b29a
	rst 0			;b29b
	cp l			;b29c
	rst 38h			;b29d
	rst 0			;b29e
	cp l			;b29f
	rst 38h			;b2a0
	ex af,af'		;b2a1
	nop			;b2a2
	rlca			;b2a3
	adc a,e			;b2a4
	inc bc			;b2a5
	rst 38h			;b2a6
	ld b,081h		;b2a7
	add a,c			;b2a9
	rst 38h			;b2aa
	rlca			;b2ab
	xor d			;b2ac
	dec b			;b2ad
	ld a,a			;b2ae
	add a,(hl)		;b2af
	nop			;b2b0
	ld a,a			;b2b1
	ld a,a			;b2b2
	rst 38h			;b2b3
	nop			;b2b4
	nop			;b2b5
	dec b			;b2b6
	rst 38h			;b2b7
	sub b			;b2b8
	ld sp,hl		;b2b9
	pop hl			;b2ba
	nop			;b2bb
	ret nz			;b2bc
	call m,00701h		;b2bd
	ld bc,01d03h		;b2c0
	pop hl			;b2c3
	rra			;b2c4
	rlca			;b2c5
	rlca			;b2c6
	rrca			;b2c7
	rra			;b2c8
	ex af,af'		;b2c9
	adc a,e			;b2ca
	inc b			;b2cb
	ld a,a			;b2cc
	inc bc			;b2cd
	ld bc,00382h		;b2ce
	rst 38h			;b2d1
	rlca			;b2d2
	ld a,a			;b2d3
	add a,h			;b2d4
	rst 38h			;b2d5
	jp 03c00h		;b2d6
	inc c			;b2d9
	ld a,(hl)		;b2da
	ex af,af'		;b2db
	add a,b			;b2dc
	ex af,af'		;b2dd
	ld a,(hl)		;b2de
	add a,h			;b2df
	ld a,a			;b2e0
	ccf			;b2e1
	rrca			;b2e2
	nop			;b2e3
	inc bc			;b2e4
	add a,b			;b2e5
	add a,d			;b2e6
	ret nz			;b2e7
	rst 38h			;b2e8
	rlca			;b2e9
	ld bc,0ff81h		;b2ea
	rrca			;b2ed
	ld bc,lbd81h		;b2ee
	dec b			;b2f1
	and l			;b2f2
	adc a,(hl)		;b2f3
	cp l			;b2f4
	rst 38h			;b2f5
	nop			;b2f6
	rlca			;b2f7
	rrca			;b2f8
	dec e			;b2f9
	add hl,sp		;b2fa
	ld (hl),c		;b2fb
	ld h,c			;b2fc
	ret nz			;b2fd
	ret nz			;b2fe
	add a,b			;b2ff
	add a,b			;b300
	rrca			;b301
	inc bc			;b302
	rra			;b303
	add a,l			;b304
	rrca			;b305
	nop			;b306
	nop			;b307
	rst 38h			;b308
	rst 38h			;b309
	dec b			;b30a
	nop			;b30b
	ld (bc),a		;b30c
	rst 38h			;b30d
	ex af,af'		;b30e
	nop			;b30f
	adc a,l			;b310
	rrca			;b311
	rst 38h			;b312
	rst 38h			;b313
	add a,b			;b314
	ret p			;b315
	ld bc,01c02h		;b316
	ret po			;b319
	rlca			;b31a
	ret po			;b31b
	ret p			;b31c
	ret p			;b31d
	dec b			;b31e
	add a,b			;b31f
	add a,e			;b320
	rst 38h			;b321
	nop			;b322
	nop			;b323
	dec b			;b324
	ld bc,0ff9ch		;b325
	nop			;b328
	nop			;b329
	ret nz			;b32a
	ret po			;b32b
	ld (hl),b		;b32c
	sbc a,b			;b32d
	call po,0011eh		;b32e
	nop			;b331
	inc bc			;b332
	rlca			;b333
	ld c,019h		;b334
	daa			;b336
	ld a,b			;b337
	add a,b			;b338
	nop			;b339
	add a,b			;b33a
	ret po			;b33b
	ret p			;b33c
	cp b			;b33d
	sbc a,h			;b33e
	adc a,(hl)		;b33f
	add a,(hl)		;b340
	add a,e			;b341
	inc bc			;b342
	inc bc			;b343
	ld bc,00003h		;b344
	add a,e			;b347
	ld a,a			;b348
	rlca			;b349
	rra			;b34a
	inc b			;b34b
	rst 38h			;b34c
	add a,(hl)		;b34d
	ld bc,0810fh		;b34e
	rst 38h			;b351
	rst 38h			;b352
	nop			;b353
	inc bc			;b354
	ld d,l			;b355
	adc a,c			;b356
	nop			;b357
	add a,b			;b358
	ret p			;b359
	adc a,a			;b35a
	ret p			;b35b
	ret p			;b35c
	inc a			;b35d
	ld a,(hl)		;b35e
	nop			;b35f
	inc bc			;b360
	rst 38h			;b361
	add a,c			;b362
	call m,00004h		;b363
	add a,e			;b366
	ret p			;b367
	ret po			;b368
	add a,b			;b369
	inc bc			;b36a
	nop			;b36b
	add a,(hl)		;b36c
	ld bc,07f03h		;b36d
	ld a,a			;b370
	rst 38h			;b371
	nop			;b372
	inc bc			;b373
	ld d,l			;b374
	dec b			;b375
	nop			;b376
	ld (bc),a		;b377
	rst 38h			;b378
	ld (bc),a		;b379
	nop			;b37a
	ld (bc),a		;b37b
	rst 38h			;b37c
	add a,l			;b37d
	nop			;b37e
	rst 38h			;b37f
	rst 38h			;b380
	nop			;b381
	nop			;b382
	inc c			;b383
	rst 38h			;b384
	ld (bc),a		;b385
	nop			;b386
	ld (bc),a		;b387
	rst 38h			;b388
	inc bc			;b389
	nop			;b38a
	ld (bc),a		;b38b
	rst 38h			;b38c
	ld (bc),a		;b38d
	nop			;b38e
	ld (bc),a		;b38f
	rst 38h			;b390
	ld (bc),a		;b391
	nop			;b392
	ld (bc),a		;b393
	rst 38h			;b394
	ld (bc),a		;b395
	nop			;b396
	ld (bc),a		;b397
	rst 38h			;b398
	ld (bc),a		;b399
	nop			;b39a
	ld (bc),a		;b39b
	rst 38h			;b39c
	inc bc			;b39d
	nop			;b39e
	ld (bc),a		;b39f
	rst 38h			;b3a0
	ld (bc),a		;b3a1
	nop			;b3a2
	inc bc			;b3a3
	rst 38h			;b3a4
	ld (bc),a		;b3a5
	nop			;b3a6
	ld (bc),a		;b3a7
	ld a,a			;b3a8
	ld (bc),a		;b3a9
	rst 38h			;b3aa
	inc b			;b3ab
	add a,c			;b3ac
	sub a			;b3ad
	rst 38h			;b3ae
	add a,c			;b3af
	add a,c			;b3b0
	rst 38h			;b3b1
	rst 38h			;b3b2
	ld h,(hl)		;b3b3
	cp e			;b3b4
	cp e			;b3b5
	ld b,b			;b3b6
	and a			;b3b7
	and a			;b3b8
	ret nc			;b3b9
	out (069h),a		;b3ba
	cp 0bbh			;b3bc
	ld (bc),a		;b3be
	push hl			;b3bf
	push hl			;b3c0
	dec bc			;b3c1
	res 2,(hl)		;b3c2
	ld a,a			;b3c4
	add hl,de		;b3c5
	cp e			;b3c6
	add a,c			;b3c7
	ei			;b3c8
	inc bc			;b3c9
	rrca			;b3ca
	inc bc			;b3cb
	ret p			;b3cc
	add a,h			;b3cd
	rrca			;b3ce
	cp e			;b3cf
	cp e			;b3d0
	ei			;b3d1
	inc bc			;b3d2
	rrca			;b3d3
	ld (bc),a		;b3d4
	ret p			;b3d5
	inc b			;b3d6
	cp e			;b3d7
	add a,a			;b3d8
	rst 38h			;b3d9
	nop			;b3da
	nop			;b3db
	rst 38h			;b3dc
	cp e			;b3dd
	cp e			;b3de
	cp a			;b3df
	inc bc			;b3e0
	ret p			;b3e1
	ld (bc),a		;b3e2
	rrca			;b3e3
	add a,c			;b3e4
	cp a			;b3e5
	inc bc			;b3e6
	ret p			;b3e7
	inc bc			;b3e8
	rrca			;b3e9
	add a,e			;b3ea
	ret p			;b3eb
	rst 38h			;b3ec
	rst 38h			;b3ed
	inc bc			;b3ee
	nop			;b3ef
	ld (bc),a		;b3f0
	rst 38h			;b3f1
	add a,l			;b3f2
	nop			;b3f3
	add a,b			;b3f4
	add a,b			;b3f5
	ret nz			;b3f6
	rlca			;b3f7
	inc bc			;b3f8
	add a,b			;b3f9
	add a,c			;b3fa
	nop			;b3fb
	nop			;b3fc
	add a,d			;b3fd
	sub c			;b3fe
	ld (de),a		;b3ff
	rlca			;b400
	sub c			;b401
	add a,c			;b402
	sub d			;b403
	inc bc			;b404
	ld (02102h),a		;b405
	inc bc			;b408
	sub c			;b409
	add a,c			;b40a
	ld (de),a		;b40b
	inc bc			;b40c
	sub c			;b40d
	add a,c			;b40e
	ld sp,hl		;b40f
	dec b			;b410
	sub c			;b411
	dec l			;b412
	ld sp,hl		;b413
	add a,c			;b414
	sub c			;b415
	add hl,bc		;b416
	ld sp,hl		;b417
	add a,e			;b418
	pop af			;b419
	jp p,004f1h		;b41a
	ld sp,hl		;b41d
	add a,e			;b41e
	pop af			;b41f
	jp p,004f1h		;b420
	ld sp,hl		;b423
	add a,e			;b424
	sub c			;b425
	ld (de),a		;b426
	inc hl			;b427
	inc b			;b428
	ld a,002h		;b429
	pop af			;b42b
	ld (bc),a		;b42c
	ld (de),a		;b42d
	dec b			;b42e
	sub c			;b42f
	ld (bc),a		;b430
	sub d			;b431
	add a,h			;b432
	ld (09121h),a		;b433
	sub c			;b436
	inc b			;b437
	ld sp,hl		;b438
	ld b,091h		;b439
	inc bc			;b43b
	ld (de),a		;b43c
	add a,e			;b43d
	sub c			;b43e
	ld (de),a		;b43f
	ld (de),a		;b440
	dec b			;b441
	sub c			;b442
	dec b			;b443
	ld sp,hl		;b444
	add a,(hl)		;b445
	sub c			;b446
	ld (de),a		;b447
	inc hl			;b448
	ld a,023h		;b449
	inc hl			;b44b
	inc b			;b44c
	ld (de),a		;b44d
	ld a,(bc)		;b44e
	ld (02181h),a		;b44f
	ld b,032h		;b452
	ld b,021h		;b454
	add a,h			;b456
	ld (02121h),a		;b457
	add hl,de		;b45a
	ld b,021h		;b45b
	dec b			;b45d
	pop af			;b45e
	add a,l			;b45f
	ld sp,hl		;b460
	pop af			;b461
	jp p,0fef3h		;b462
	inc bc			;b465
	di			;b466
	add a,a			;b467
	ld sp,hl		;b468
	pop af			;b469
	jp p,0f2f3h		;b46a
	jp p,004f1h		;b46d
	jp p,0f105h		;b470
	add a,h			;b473
	jp p,0f2f3h		;b474
	pop af			;b477
	dec b			;b478
	ld sp,hl		;b479
	ld (bc),a		;b47a
	pop af			;b47b
	rlca			;b47c
	jp p,03206h		;b47d
	ld (bc),a		;b480
	sub c			;b481
	ld (bc),a		;b482
	ld sp,hl		;b483
	dec b			;b484
	sub c			;b485
	ld (bc),a		;b486
	ld sp,hl		;b487
	ld a,(bc)		;b488
	sub c			;b489
	ld b,0f9h		;b48a
	add a,c			;b48c
	sub c			;b48d
	dec b			;b48e
	ld hl,01903h		;b48f
	ld (bc),a		;b492
	ld sp,hl		;b493
	inc bc			;b494
	pop af			;b495
	dec b			;b496
	ld sp,hl		;b497
	inc b			;b498
	pop af			;b499
	ld c,0f9h		;b49a
	ld (bc),a		;b49c
	pop af			;b49d
	inc c			;b49e
	ld sp,hl		;b49f
	rlca			;b4a0
	sub c			;b4a1
	ld b,0f9h		;b4a2
	add a,d			;b4a4
	jp p,004f1h		;b4a5
	ld sp,hl		;b4a8
	add a,h			;b4a9
	pop af			;b4aa
	ld hl,03232h		;b4ab
	djnz lb4d1h		;b4ae
	inc b			;b4b0
	sub c			;b4b1
	ld (bc),a		;b4b2
	ld sp,hl		;b4b3
	add a,d			;b4b4
	jp p,003f1h		;b4b5
	ld sp,hl		;b4b8
	inc b			;b4b9
	sub c			;b4ba
	ld (bc),a		;b4bb
	jp p,0f102h		;b4bc
	inc bc			;b4bf
	sub c			;b4c0
	ld (bc),a		;b4c1
	pop af			;b4c2
	ld (bc),a		;b4c3
	sub d			;b4c4
	inc c			;b4c5
	jp p,02302h		;b4c6
	dec b			;b4c9
	rra			;b4ca
	ld (bc),a		;b4cb
	inc hl			;b4cc
	ld (bc),a		;b4cd
	ld a,002h		;b4ce
	add hl,hl		;b4d0
lb4d1h:
	inc b			;b4d1
	sbc a,a			;b4d2
	ld (bc),a		;b4d3
	ld hl,09f02h		;b4d4
	ld (bc),a		;b4d7
	ld (de),a		;b4d8
	inc bc			;b4d9
	sbc a,a			;b4da
	inc b			;b4db
	ld hl,0f905h		;b4dc
	inc bc			;b4df
	sub c			;b4e0
	rlca			;b4e1
	ld sp,hl		;b4e2
	add a,a			;b4e3
	pop af			;b4e4
	ld sp,hl		;b4e5
	ld sp,hl		;b4e6
	ld de,0f1f9h		;b4e7
	jp p,0f907h		;b4ea
	add a,c			;b4ed
	pop af			;b4ee
	rlca			;b4ef
	ld sp,hl		;b4f0
	and d			;b4f1
	pop af			;b4f2
	sub e			;b4f3
	inc de			;b4f4
	inc hl			;b4f5
	inc de			;b4f6
	sub d			;b4f7
	sub d			;b4f8
	sub c			;b4f9
	pop af			;b4fa
	jp p,01393h		;b4fb
	inc hl			;b4fe
	inc de			;b4ff
	sub d			;b500
	sub d			;b501
	sub c			;b502
	pop af			;b503
	jp p,01393h		;b504
	inc hl			;b507
	inc de			;b508
	sub d			;b509
	sub d			;b50a
	ld sp,hl		;b50b
	ld sp,hl		;b50c
	sub c			;b50d
	ld (de),a		;b50e
	ld (de),a		;b50f
	sub c			;b510
	ld sp,hl		;b511
	ld sp,hl		;b512
	pop af			;b513
	inc bc			;b514
	ld sp,hl		;b515
	add a,(hl)		;b516
	sub c			;b517
	ld (de),a		;b518
	ld (de),a		;b519
	sub c			;b51a
	sub c			;b51b
	pop af			;b51c
	inc b			;b51d
	ld sp,hl		;b51e
	ld (bc),a		;b51f
	ld hl,0f181h		;b520
	inc bc			;b523
	ld sp,hl		;b524
	adc a,d			;b525
	sub c			;b526
	ld (de),a		;b527
	ld (de),a		;b528
	sub c			;b529
	ld sp,hl		;b52a
	ld sp,hl		;b52b
	sub c			;b52c
	ld (de),a		;b52d
	ld (de),a		;b52e
	sub c			;b52f
	inc bc			;b530
	ld sp,hl		;b531
	ld (bc),a		;b532
	add hl,de		;b533
	inc bc			;b534
	rra			;b535
	ld (bc),a		;b536
	add hl,hl		;b537
	add a,h			;b538
	sub c			;b539
	add hl,hl		;b53a
	add hl,hl		;b53b
	jp p,03204h		;b53c
	nop			;b53f
	sub b			;b540
	rlca			;b541
	ccf			;b542
	rlca			;b543
	ld a,0f0h		;b544
	add a,b			;b546
	ret m			;b547
	ret nz			;b548
	ret po			;b549
	call m,07ce0h		;b54a
	rrca			;b54d
	ld bc,0031fh		;b54e
	nop			;b551
	ld (bc),a		;b552
	jr nz,lb559h		;b553
	ld (02102h),a		;b555
	ld (bc),a		;b558
lb559h:
	jr nz,lb55fh		;b559
	ld (02102h),a		;b55b
	nop			;b55e
lb55fh:
	dec b			;b55f
	rst 38h			;b560
	adc a,e			;b561
	defb 0fdh,003h,00fh ;illegal sequence	;b562
	nop			;b565
	nop			;b566
	inc b			;b567
	ld b,00fh		;b568
	ld a,a			;b56a
	rrca			;b56b
	rrca			;b56c
	dec b			;b56d
	nop			;b56e
	sub e			;b56f
	add a,b			;b570
	ret nz			;b571
	pop af			;b572
	nop			;b573
	ld bc,00301h		;b574
	rlca			;b577
	rlca			;b578
	rrca			;b579
	rrca			;b57a
	nop			;b57b
	nop			;b57c
	add a,b			;b57d
	ret po			;b57e
	or 082h			;b57f
	push bc			;b581
	jp nz,00006h		;b582
	add a,(hl)		;b585
	add a,b			;b586
	ret po			;b587
	rra			;b588
	rrca			;b589
	rlca			;b58a
	inc bc			;b58b
	inc b			;b58c
	nop			;b58d
	ld (bc),a		;b58e
	ret po			;b58f
	add a,c			;b590
	ret nz			;b591
	inc bc			;b592
	nop			;b593
	adc a,(hl)		;b594
	add a,b			;b595
	ret nz			;b596
	ld bc,00f0fh		;b597
	rlca			;b59a
	inc bc			;b59b
	rlca			;b59c
	inc bc			;b59d
	inc bc			;b59e
	ret nz			;b59f
	ret nz			;b5a0
	ret po			;b5a1
	ret po			;b5a2
	inc bc			;b5a3
	ret p			;b5a4
	add a,d			;b5a5
	ret m			;b5a6
	jr nz,lb5ach		;b5a7
	ccf			;b5a9
	adc a,c			;b5aa
lb5abh:
	rra			;b5ab
lb5ach:
	rrca			;b5ac
	rlca			;b5ad
	inc bc			;b5ae
	rra			;b5af
	rra			;b5b0
	ccf			;b5b1
	rlca			;b5b2
	ld bc,00007h		;b5b3
	sbc a,h			;b5b6
	ld bc,00f07h		;b5b7
	rra			;b5ba
	ld bc,00703h		;b5bb
	rlca			;b5be
	rrca			;b5bf
	rrca			;b5c0
	rra			;b5c1
	rra			;b5c2
	nop			;b5c3
	ld bc,00f07h		;b5c4
	rra			;b5c7
	ccf			;b5c8
	ld a,a			;b5c9
	ld a,a			;b5ca
	inc bc			;b5cb
	inc bc			;b5cc
	rlca			;b5cd
	rlca			;b5ce
	rrca			;b5cf
	rrca			;b5d0
	rra			;b5d1
	rra			;b5d2
	ld b,000h		;b5d3
	ld (bc),a		;b5d5
	ld bc,00002h		;b5d6
	adc a,(hl)		;b5d9
	ld bc,00703h		;b5da
	rrca			;b5dd
	rrca			;b5de
	rra			;b5df
	nop			;b5e0
	ret nz			;b5e1
	ret p			;b5e2
	ret m			;b5e3
	call m,0fefch		;b5e4
	cp 000h			;b5e7
	ld b,005h		;b5e9
	inc b			;b5eb
	sub b			;b5ec
	add a,(hl)		;b5ed
	or b			;b5ee
	ld d,b			;b5ef
	sub b			;b5f0
	sub b			;b5f1
	cp c			;b5f2
	ld e,e			;b5f3
	add hl,bc		;b5f4
	sub b			;b5f5
	add a,c			;b5f6
	ld d,b			;b5f7
	dec b			;b5f8
	sub b			;b5f9
	inc bc			;b5fa
	or b			;b5fb
	inc bc			;b5fc
	sub b			;b5fd
	inc bc			;b5fe
	cp c			;b5ff
	rlca			;b600
	sub b			;b601
	ld (bc),a		;b602
	or b			;b603
	add a,d			;b604
	ld d,b			;b605
	or b			;b606
	dec b			;b607
	sub b			;b608
	add a,d			;b609
	ld d,b			;b60a
	or b			;b60b
	inc b			;b60c
	sub b			;b60d
	ld (bc),a		;b60e
	or b			;b60f
	add a,c			;b610
	ld d,b			;b611
	rlca			;b612
	sub b			;b613
	add a,c			;b614
	or b			;b615
	rlca			;b616
	sub b			;b617
	add a,e			;b618
	cp c			;b619
	sub b			;b61a
	ld d,b			;b61b
	inc b			;b61c
	or b			;b61d
	add a,l			;b61e
	ld d,b			;b61f
	or l			;b620
	sbc a,e			;b621
	sub b			;b622
	or b			;b623
	ex af,af'		;b624
	sub b			;b625
	inc bc			;b626
	jr nc,lb5abh		;b627
	jr nz,lb63bh		;b629
	dec c			;b62b
	ld b,b			;b62c
	add a,d			;b62d
	jr nc,lb652h		;b62e
	ld a,(de)		;b630
	ld b,b			;b631
	ld b,030h		;b632
	nop			;b634
	dec b			;b635
	nop			;b636
	add a,e			;b637
	add a,b			;b638
	ld a,b			;b639
	rlca			;b63a
lb63bh:
	rlca			;b63b
	nop			;b63c
	add a,d			;b63d
	ret nz			;b63e
	ccf			;b63f
	inc b			;b640
	nop			;b641
	add a,d			;b642
	rlca			;b643
	jr lb64ch		;b644
	nop			;b646
	add a,(hl)		;b647
	add a,b			;b648
	ld b,b			;b649
	jr nz,lb664h		;b64a
lb64ch:
	inc b			;b64c
	inc bc			;b64d
	dec bc			;b64e
	nop			;b64f
	add a,e			;b650
	ret nz			;b651
lb652h:
	ld a,001h		;b652
	inc b			;b654
	nop			;b655
	add a,d			;b656
	ld bc,0051eh		;b657
	nop			;b65a
	add a,h			;b65b
	ret p			;b65c
	ld c,001h		;b65d
	ld bc,00004h		;b65f
	adc a,b			;b662
	ret p			;b663
lb664h:
	inc c			;b664
	inc bc			;b665
	ld bc,01820h		;b666
	inc b			;b669
	inc bc			;b66a
	ex af,af'		;b66b
	nop			;b66c
	add a,h			;b66d
	ret nz			;b66e
	jr nc,lb67dh		;b66f
	inc bc			;b671
	rlca			;b672
	nop			;b673
	add a,d			;b674
	add a,b			;b675
	inc e			;b676
	ld c,000h		;b677
	add a,c			;b679
	inc bc			;b67a
	inc bc			;b67b
	nop			;b67c
lb67dh:
	add a,l			;b67d
	ret nz			;b67e
	jr nc,lb68dh		;b67f
	inc bc			;b681
	ld bc,00005h		;b682
	inc bc			;b685
	ccf			;b686
	dec b			;b687
lb688h:
	nop			;b688
	add a,e			;b689
	rlca			;b68a
	ccf			;b68b
	rlca			;b68c
lb68dh:
	inc bc			;b68d
	nop			;b68e
	add a,e			;b68f
	add a,b			;b690
	ret nz			;b691
	ret nz			;b692
	inc b			;b693
	ret po			;b694
	ld (bc),a		;b695
	ret nz			;b696
	add a,c			;b697
	add a,b			;b698
	dec b			;b699
	nop			;b69a
	sub d			;b69b
	inc bc			;b69c
	rlca			;b69d
	rrca			;b69e
	rra			;b69f
	ld a,07ch		;b6a0
	nop			;b6a2
	nop			;b6a3
	ld bc,00f07h		;b6a4
	ld e,03ch		;b6a7
	ld a,b			;b6a9
	inc e			;b6aa
	ld (hl),b		;b6ab
	ret nz			;b6ac
	add a,b			;b6ad
	dec b			;b6ae
	nop			;b6af
	ld (bc),a		;b6b0
lb6b1h:
	ld bc,00302h		;b6b1
	ld (bc),a		;b6b4
	rlca			;b6b5
	adc a,a			;b6b6
	rrca			;b6b7
	ret m			;b6b8
	ret p			;b6b9
	ret po			;b6ba
	ret nz			;b6bb
	ret nz			;b6bc
	add a,b			;b6bd
	add a,b			;b6be
	nop			;b6bf
	ret p			;b6c0
	ret po			;b6c1
	ret nz			;b6c2
	ret nz			;b6c3
	add a,b			;b6c4
	add a,b			;b6c5
	rlca			;b6c6
	nop			;b6c7
	add a,e			;b6c8
	ld bc,00707h		;b6c9
	inc bc			;b6cc
	nop			;b6cd
	add a,h			;b6ce
	jr nc,lb6b1h		;b6cf
	ret nz			;b6d1
	add a,b			;b6d2
	inc bc			;b6d3
	nop			;b6d4
	add a,c			;b6d5
	ld bc,00305h		;b6d6
	ld b,000h		;b6d9
	add a,d			;b6db
	ld bc,00407h		;b6dc
	nop			;b6df
	add a,h			;b6e0
	rra			;b6e1
	pop hl			;b6e2
	ld c,0f8h		;b6e3
	nop			;b6e5
	dec b			;b6e6
	jr nc,lb6f9h		;b6e7
lb6e9h:
	ld d,b			;b6e9
	ex af,af'		;b6ea
	or b			;b6eb
	jr lb73eh		;b6ec
	rlca			;b6ee
	or b			;b6ef
	inc bc			;b6f0
	ld d,b			;b6f1
	dec b			;b6f2
	jr nz,$+5		;b6f3
	ld d,b			;b6f5
	add a,c			;b6f6
	jr nz,lb711h		;b6f7
lb6f9h:
	ld d,b			;b6f9
	inc de			;b6fa
lb6fbh:
	or b			;b6fb
	inc b			;b6fc
	ld d,b			;b6fd
	ld b,020h		;b6fe
	add a,e			;b700
	call c,0dc87h		;b701
	rlca			;b704
	djnz lb688h		;b705
	ld hl,0c012h		;b707
	ex af,af'		;b70a
	sub b			;b70b
	add a,(hl)		;b70c
	ld d,b			;b70d
	or b			;b70e
	or b			;b70f
	ld d,b			;b710
lb711h:
	or b			;b711
	sub b			;b712
	inc bc			;b713
	ld d,b			;b714
	ld b,0b0h		;b715
	add a,d			;b717
	ld d,b			;b718
	or b			;b719
	dec b			;b71a
	sub b			;b71b
	add a,e			;b71c
	or b			;b71d
	ld d,b			;b71e
	or b			;b71f
	ld (de),a		;b720
	sub b			;b721
	ld (bc),a		;b722
	ld d,b			;b723
	inc b			;b724
	or b			;b725
	rlca			;b726
	ld d,b			;b727
	ld (bc),a		;b728
	sub b			;b729
	add a,e			;b72a
	or b			;b72b
	ld d,b			;b72c
	or b			;b72d
	dec c			;b72e
	sub b			;b72f
	add a,h			;b730
	or b			;b731
	sub l			;b732
lb733h:
	cp c			;b733
	sub b			;b734
	nop			;b735
	in a,(000h)		;b736
	ex af,af'		;b738
	inc c			;b739
	ld a,a			;b73a
	ld e,0c1h		;b73b
	inc e			;b73d
lb73eh:
	inc a			;b73e
	nop			;b73f
	ld (bc),a		;b740
	inc bc			;b741
	jr nc,lb765h		;b742
	sub c			;b744
	out (0c3h),a		;b745
	jr lb7c8h		;b747
	inc a			;b749
	rst 38h			;b74a
	jp 01881h		;b74b
	inc a			;b74e
	ld b,b			;b74f
	ld h,b			;b750
	ret p			;b751
	ld sp,hl		;b752
	add a,c			;b753
	ret z			;b754
	call z,03fc7h		;b755
	rra			;b758
	pop af			;b759
	adc a,a			;b75a
	pop af			;b75b
	ret m			;b75c
	ret nz			;b75d
	nop			;b75e
	rrca			;b75f
	rrca			;b760
	ld a,a			;b761
	ret z			;b762
	add a,b			;b763
	nop			;b764
lb765h:
	nop			;b765
	jr lb6e9h		;b766
	ccf			;b768
	ld b,b			;b769
	add hl,sp		;b76a
	nop			;b76b
	nop			;b76c
	add hl,bc		;b76d
	ccf			;b76e
	jp 02193h		;b76f
	ld h,c			;b772
	rrca			;b773
	ld b,a			;b774
	inc b			;b775
	ld a,d			;b776
	inc a			;b777
	jr lb6fbh		;b778
	jp 03cffh		;b77a
	nop			;b77d
	add hl,bc		;b77e
	rst 0			;b77f
	jp 08a83h		;b780
	ld a,(de)		;b783
	dec a			;b784
	rst 8			;b785
lb786h:
	add a,a			;b786
	jp 03c80h		;b787
	ld a,(hl)		;b78a
	jp 01881h		;b78b
	inc a			;b78e
	ld e,0f1h		;b78f
	ld b,003h		;b791
	ret po			;b793
	adc a,a			;b794
	jr nz,lb797h		;b795
lb797h:
	add a,e			;b797
	inc a			;b798
	add a,c			;b799
	rst 38h			;b79a
	ld b,b			;b79b
	sbc a,h			;b79c
	ex af,af'		;b79d
	nop			;b79e
	ld de,0c189h		;b79f
	ret po			;b7a2
	jr c,lb7a8h		;b7a3
	ret nz			;b7a5
	and c			;b7a6
	rlca			;b7a7
lb7a8h:
	add a,e			;b7a8
	add a,e			;b7a9
	rst 0			;b7aa
	ld a,l			;b7ab
	ld (bc),a		;b7ac
	ccf			;b7ad
	nop			;b7ae
	inc a			;b7af
	jr lb733h		;b7b0
	jp 03cffh		;b7b2
	nop			;b7b5
	add hl,bc		;b7b6
	set 0,(hl)		;b7b7
	adc a,h			;b7b9
	sub b			;b7ba
	ret m			;b7bb
	pop hl			;b7bc
	rst 18h			;b7bd
	jp nz,03c00h		;b7be
	jr lb786h		;b7c1
	pop bc			;b7c3
	pop hl			;b7c4
	ex (sp),hl		;b7c5
	ld a,0c0h		;b7c6
lb7c8h:
	inc bc			;b7c8
	call m,0fe02h		;b7c9
	add a,l			;b7cc
	ret nz			;b7cd
	ld a,a			;b7ce
	rra			;b7cf
	rra			;b7d0
	ccf			;b7d1
	dec b			;b7d2
	add a,c			;b7d3
	or c			;b7d4
	add a,b			;b7d5
	ld a,h			;b7d6
	jr nc,lb855h		;b7d7
	call m,07c78h		;b7d9
	ld (hl),b		;b7dc
	add a,c			;b7dd
	add a,c			;b7de
	inc bc			;b7df
	rra			;b7e0
	inc bc			;b7e1
	rra			;b7e2
	inc bc			;b7e3
	rra			;b7e4
	ret m			;b7e5
	add a,b			;b7e6
	inc bc			;b7e7
	ld a,a			;b7e8
	rlca			;b7e9
	ld a,a			;b7ea
	inc bc			;b7eb
	rra			;b7ec
	nop			;b7ed
	rlca			;b7ee
	inc bc			;b7ef
	ld a,a			;b7f0
	rrca			;b7f1
	ld a,a			;b7f2
	pop af			;b7f3
	defb 0fdh,000h,0feh ;illegal sequence	;b7f4
	call m,09cf8h		;b7f7
	call c,0f8fch		;b7fa
	add a,b			;b7fd
	ret p			;b7fe
	call m,0e080h		;b7ff
	ret m			;b802
	cp 0ffh			;b803
	ld bc,00303h		;b805
	and b			;b808
	nop			;b809
	ccf			;b80a
	ld a,03ch		;b80b
	rra			;b80d
	rst 38h			;b80e
	nop			;b80f
	nop			;b810
	rst 38h			;b811
	ld (bc),a		;b812
	ld a,078h		;b813
	ld a,a			;b815
	dec bc			;b816
	rst 38h			;b817
	nop			;b818
	inc bc			;b819
	rrca			;b81a
	rrca			;b81b
	rra			;b81c
	rst 38h			;b81d
	rst 38h			;b81e
	nop			;b81f
	nop			;b820
	rst 38h			;b821
	rst 38h			;b822
	nop			;b823
	ld l,0e0h		;b824
	and b			;b826
	rst 38h			;b827
	nop			;b828
	inc b			;b829
	jp z,0ff84h		;b82a
	nop			;b82d
	rst 38h			;b82e
	rst 38h			;b82f
	inc b			;b830
	sub l			;b831
	ld (bc),a		;b832
	cp 08bh			;b833
	nop			;b835
	cp 081h			;b836
	ld a,h			;b838
	inc a			;b839
	ld a,h			;b83a
	inc a			;b83b
	nop			;b83c
	inc bc			;b83d
	rrca			;b83e
	ld a,a			;b83f
	inc bc			;b840
	inc a			;b841
	ld (bc),a		;b842
	ccf			;b843
	rst 0			;b844
	rst 8			;b845
	pop af			;b846
	cp 07ch			;b847
	ld a,b			;b849
	ld a,b			;b84a
	rra			;b84b
	rlca			;b84c
	ld a,a			;b84d
	rlca			;b84e
	ld a,a			;b84f
	inc bc			;b850
	ret po			;b851
	rra			;b852
	ld c,000h		;b853
lb855h:
	nop			;b855
	rrca			;b856
	ld a,a			;b857
	inc bc			;b858
	rlca			;b859
	nop			;b85a
	jp z,0ffffh		;b85b
	ret m			;b85e
	nop			;b85f
	cp 0feh			;b860
	nop			;b862
	sub l			;b863
	rst 38h			;b864
	ret po			;b865
	ret po			;b866
	add a,b			;b867
	inc bc			;b868
	ld b,02dh		;b869
	cp 0f0h			;b86b
	ret nz			;b86d
	call m,03c7ch		;b86e
	inc a			;b871
	jr lb877h		;b872
	rlca			;b874
	rrca			;b875
	rra			;b876
lb877h:
	ccf			;b877
	ld a,01eh		;b878
	inc e			;b87a
	adc a,(hl)		;b87b
	cp (hl)			;b87c
	adc a,(hl)		;b87d
	cp (hl)			;b87e
	cp (hl)			;b87f
	sbc a,(hl)		;b880
	cp 098h			;b881
	ld sp,hl		;b883
	ld bc,07d61h		;b884
	ld (hl),c		;b887
	ld a,l			;b888
	ld a,a			;b889
	sbc a,c			;b88a
	rra			;b88b
	inc bc			;b88c
	ccf			;b88d
	adc a,e			;b88e
	nop			;b88f
	rst 28h			;b890
	ret po			;b891
	ret nz			;b892
	rra			;b893
	ccf			;b894
	ccf			;b895
	rra			;b896
	nop			;b897
	rst 28h			;b898
	ret po			;b899
	inc b			;b89a
	ret nz			;b89b
	adc a,e			;b89c
	cp 043h			;b89d
	ld h,b			;b89f
	ret po			;b8a0
	ret nz			;b8a1
	nop			;b8a2
	ld bc,07f0fh		;b8a3
	ret p			;b8a6
	add a,b			;b8a7
	inc bc			;b8a8
	nop			;b8a9
	ld (bc),a		;b8aa
	rst 38h			;b8ab
	adc a,b			;b8ac
	add a,b			;b8ad
	rst 38h			;b8ae
	nop			;b8af
	add a,b			;b8b0
	add a,b			;b8b1
	nop			;b8b2
	ret m			;b8b3
	call m,0fe05h		;b8b4
	ld (bc),a		;b8b7
	rst 38h			;b8b8
	adc a,(hl)		;b8b9
	rrca			;b8ba
	ret po			;b8bb
	ret m			;b8bc
	rra			;b8bd
	inc bc			;b8be
	ld bc,00000h		;b8bf
	ld a,a			;b8c2
	ld a,a			;b8c3
	nop			;b8c4
	rrca			;b8c5
	ret po			;b8c6
	ld a,(hl)		;b8c7
	ld b,001h		;b8c8
	add a,(hl)		;b8ca
	call m,03ff8h		;b8cb
	ret m			;b8ce
	ret nz			;b8cf
	add a,b			;b8d0
	inc bc			;b8d1
	nop			;b8d2
	add a,l			;b8d3
	rst 38h			;b8d4
	ret p			;b8d5
	ret m			;b8d6
	call m,004fch		;b8d7
	cp 081h			;b8da
	rst 38h			;b8dc
	rlca			;b8dd
	and b			;b8de
	add a,c			;b8df
	rst 38h			;b8e0
	dec b			;b8e1
	ret nz			;b8e2
	add a,d			;b8e3
	rst 38h			;b8e4
	add a,b			;b8e5
	ex af,af'		;b8e6
	cp 003h			;b8e7
	and b			;b8e9
	add a,l			;b8ea
	rst 38h			;b8eb
	rlca			;b8ec
	rra			;b8ed
	inc bc			;b8ee
	ld bc,08004h		;b8ef
	add a,h			;b8f2
lb8f3h:
	ccf			;b8f3
	inc bc			;b8f4
	ret po			;b8f5
	ld a,(hl)		;b8f6
	ld b,0feh		;b8f7
	adc a,a			;b8f9
	call m,000f8h		;b8fa
	ld a,a			;b8fd
	ret m			;b8fe
	ret po			;b8ff
	ret nz			;b900
	add a,b			;b901
	add a,b			;b902
	nop			;b903
	ccf			;b904
	ccf			;b905
	ld a,a			;b906
	ld a,a			;b907
	rst 38h			;b908
	inc bc			;b909
	and b			;b90a
	ld (bc),a		;b90b
	ret nz			;b90c
	add a,c			;b90d
	rst 38h			;b90e
	dec b			;b90f
	ret nz			;b910
	ex af,af'		;b911
	cp 008h			;b912
	and b			;b914
	add a,d			;b915
	add a,b			;b916
	rst 38h			;b917
	ld b,0c0h		;b918
	ex af,af'		;b91a
	ld bc,la002h		;b91b
	add a,a			;b91e
	nop			;b91f
	rra			;b920
	rra			;b921
	inc e			;b922
	inc bc			;b923
	nop			;b924
	nop			;b925
	inc b			;b926
	ccf			;b927
	add a,e			;b928
	rra			;b929
	ret nz			;b92a
	inc a			;b92b
	ld b,0feh		;b92c
	add a,d			;b92e
	call m,003f8h		;b92f
	nop			;b932
	add a,e			;b933
	ret nz			;b934
	jr c,lb93eh		;b935
	inc bc			;b937
	nop			;b938
	add a,(hl)		;b939
	rst 38h			;b93a
	nop			;b93b
	nop			;b93c
	ret m			;b93d
lb93eh:
	ld b,001h		;b93e
	ld b,000h		;b940
	add a,e			;b942
	ret p			;b943
	rrca			;b944
	ld bc,00003h		;b945
	add a,a			;b948
	ret nz			;b949
	jr nc,lb95ah		;b94a
	ld bc,0f000h		;b94c
	rrca			;b94f
	inc bc			;b950
	nop			;b951
	adc a,l			;b952
	ret m			;b953
	rlca			;b954
	nop			;b955
	nop			;b956
	ld b,b			;b957
	jr nz,lb96ah		;b958
lb95ah:
	ex af,af'		;b95a
	ld b,001h		;b95b
	nop			;b95d
	ld (hl),b		;b95e
	rrca			;b95f
	inc b			;b960
	nop			;b961
	add a,d			;b962
	rlca			;b963
	ret m			;b964
	ex af,af'		;b965
	jr c,lb8f3h		;b966
	nop			;b968
	inc bc			;b969
lb96ah:
	rlca			;b96a
	rrca			;b96b
	ld e,03ch		;b96c
	jr c,lb9a8h		;b96e
	nop			;b970
	ret p			;b971
	jr c,lb979h		;b972
	nop			;b974
	adc a,l			;b975
	jr c,lb9b4h		;b976
	inc e			;b978
lb979h:
	inc e			;b979
	ret nz			;b97a
	ret p			;b97b
	ret m			;b97c
	call m,00f00h		;b97d
	inc e			;b980
	jr c,lb9f3h		;b981
	inc bc			;b983
	ret po			;b984
	add a,e			;b985
	rrca			;b986
	ld c,01eh		;b987
	inc bc			;b989
	inc e			;b98a
	inc b			;b98b
	jr c,$+6		;b98c
	ld (hl),b		;b98e
	add a,c			;b98f
	ret p			;b990
	ld b,0e0h		;b991
	adc a,e			;b993
	ret p			;b994
	ret m			;b995
	ld a,(hl)		;b996
	inc bc			;b997
	add a,c			;b998
	ret nz			;b999
	ret po			;b99a
	ld a,b			;b99b
	inc a			;b99c
	inc e			;b99d
	call m,00004h		;b99e
	adc a,c			;b9a1
	add a,b			;b9a2
	ret p			;b9a3
	call m,01ffch		;b9a4
	ld a,a			;b9a7
lb9a8h:
	cp 0f8h			;b9a8
	ret po			;b9aa
	inc bc			;b9ab
	ret nz			;b9ac
	ld (bc),a		;b9ad
	ret po			;b9ae
	ld (bc),a		;b9af
	ret p			;b9b0
	and c			;b9b1
	ld (hl),b		;b9b2
	ld a,b			;b9b3
lb9b4h:
	jr c,$+58		;b9b4
	rlca			;b9b6
	inc bc			;b9b7
	ld bc,0e080h		;b9b8
	ret m			;b9bb
	ccf			;b9bc
	ccf			;b9bd
	add a,b			;b9be
	ret nz			;b9bf
	ret po			;b9c0
	ret p			;b9c1
	ld a,b			;b9c2
	inc a			;b9c3
	inc e			;b9c4
	call m,0ff7fh		;b9c5
	nop			;b9c8
	nop			;b9c9
	rst 38h			;b9ca
	ld (bc),a		;b9cb
	ld a,03ch		;b9cc
	nop			;b9ce
	nop			;b9cf
	ret p			;b9d0
	call m,004fch		;b9d1
	nop			;b9d4
	ld (bc),a		;b9d5
	ld bc,00302h		;b9d6
	ld (bc),a		;b9d9
	rlca			;b9da
	ld (bc),a		;b9db
	rrca			;b9dc
	ld (bc),a		;b9dd
	ld e,003h		;b9de
	inc a			;b9e0
	add a,(hl)		;b9e1
	ld e,00fh		;b9e2
	ld c,01eh		;b9e4
	inc e			;b9e6
	inc a			;b9e7
	inc b			;b9e8
	jr c,$-124		;b9e9
	ret po			;b9eb
	add a,b			;b9ec
	ld b,000h		;b9ed
	add a,d			;b9ef
	ret po			;b9f0
	ld b,b			;b9f1
	inc bc			;b9f2
lb9f3h:
	nop			;b9f3
	inc bc			;b9f4
	ret m			;b9f5
	nop			;b9f6
	adc a,e			;b9f7
	sub b			;b9f8
	ld d,b			;b9f9
	or b			;b9fa
	sub b			;b9fb
	cp c			;b9fc
	or l			;b9fd
	push hl			;b9fe
	and l			;b9ff
	ld d,b			;ba00
	ld d,b			;ba01
	sub b			;ba02
	dec b			;ba03
	cp c			;ba04
	adc a,h			;ba05
	ld d,b			;ba06
	sub b			;ba07
	cp c			;ba08
	cp c			;ba09
	or l			;ba0a
	or l			;ba0b
	and l			;ba0c
	push hl			;ba0d
	ld d,b			;ba0e
	or b			;ba0f
	sub b			;ba10
	sub b			;ba11
	inc b			;ba12
	cp c			;ba13
	adc a,c			;ba14
	sub b			;ba15
	cp c			;ba16
	or l			;ba17
	or l			;ba18
	cp c			;ba19
	sub b			;ba1a
	or b			;ba1b
	or b			;ba1c
	or l			;ba1d
	inc bc			;ba1e
	sbc a,e			;ba1f
	inc bc			;ba20
	or b			;ba21
	add a,h			;ba22
	ld d,b			;ba23
	or l			;ba24
	cp c			;ba25
	cp c			;ba26
	inc b			;ba27
	or b			;ba28
	add a,c			;ba29
	sub b			;ba2a
	inc b			;ba2b
	cp c			;ba2c
	ld (bc),a		;ba2d
	sub b			;ba2e
	ld (bc),a		;ba2f
	cp c			;ba30
	add a,d			;ba31
	push hl			;ba32
	and l			;ba33
	inc bc			;ba34
	or l			;ba35
	add hl,bc		;ba36
	cp c			;ba37
lba38h:
	ld (bc),a		;ba38
	or l			;ba39
	inc b			;ba3a
	cp c			;ba3b
	ld (bc),a		;ba3c
	or l			;ba3d
	sub d			;ba3e
	and l			;ba3f
	push hl			;ba40
	cp c			;ba41
	or l			;ba42
	and l			;ba43
	or l			;ba44
	sbc a,e			;ba45
	add hl,bc		;ba46
	ld d,b			;ba47
	ld d,b			;ba48
	or l			;ba49
	and l			;ba4a
	or l			;ba4b
	or l			;ba4c
	cp c			;ba4d
	sub b			;ba4e
	ld d,b			;ba4f
	ld d,b			;ba50
	ld b,0b9h		;ba51
	ld (bc),a		;ba53
	nop			;ba54
	inc b			;ba55
	or l			;ba56
	ld (bc),a		;ba57
	cp c			;ba58
	ld (bc),a		;ba59
	sub b			;ba5a
	add a,d			;ba5b
	push hl			;ba5c
	and l			;ba5d
	inc bc			;ba5e
	or l			;ba5f
	rlca			;ba60
	cp c			;ba61
	inc bc			;ba62
	sub b			;ba63
	inc bc			;ba64
	cp c			;ba65
	add a,c			;ba66
	ex de,hl		;ba67
	inc b			;ba68
	or l			;ba69
	sub (hl)		;ba6a
	cp c			;ba6b
	sub b			;ba6c
	or b			;ba6d
	ld d,b			;ba6e
	or b			;ba6f
	sub b			;ba70
	sub b			;ba71
	cp c			;ba72
	or l			;ba73
	or l			;ba74
	sbc a,e			;ba75
	sub b			;ba76
	ld hl,04332h		;ba77
	call po,sub_b043h	;ba7a
	djnz lbaa0h		;ba7d
	ld hl,00332h		;ba7f
	ld b,e			;ba82
	sub (hl)		;ba83
	ld (01021h),a		;ba84
	djnz lbaaah		;ba87
	ld hl,03232h		;ba89
	ld sp,02131h		;ba8c
lba8fh:
	ld hl,03232h		;ba8f
	ld b,e			;ba92
	ld b,e			;ba93
	ld hl,03221h		;ba94
	ld (04343h),a		;ba97
	inc bc			;ba9a
	ld b,c			;ba9b
	add a,d			;ba9c
	ld hl,00532h		;ba9d
lbaa0h:
	ld b,e			;baa0
	inc bc			;baa1
	djnz lbaa9h		;baa2
	ld hl,01083h		;baa4
	jr nz,lbabeh		;baa7
lbaa9h:
	inc bc			;baa9
lbaaah:
	djnz lba38h		;baaa
	ld hl,02143h		;baac
	ld (0f132h),a		;baaf
	pop af			;bab2
	ld hl,04321h		;bab3
	ld b,e			;bab6
	call po,02103h		;bab7
	add a,c			;baba
lbabbh:
	ld (04303h),a		;babb
lbabeh:
	ld (bc),a		;babe
	jp po,02102h		;babf
	ld (bc),a		;bac2
	inc (hl)		;bac3
	adc a,c			;bac4
	call po,0e443h		;bac5
	cpl			;bac8
	cpl			;bac9
	pop af			;baca
	ret m			;bacb
	defb 0fdh,0fdh,003h ;illegal sequence	;bacc
	inc hl			;bacf
	ld (bc),a		;bad0
	pop af			;bad1
	adc a,h			;bad2
	ret m			;bad3
	defb 0fdh,0fdh,010h ;illegal sequence	;bad4
	ld hl,0f021h		;bad7
	pop af			;bada
	ld hl,02143h		;badb
	ld hl,01004h		;bade
	add a,h			;bae1
	ld hl,04332h		;bae2
	ld hl,01304h		;bae5
	add a,d			;bae8
	ld hl,00332h		;bae9
	ld b,e			;baec
	ld (bc),a		;baed
	ld (02104h),a		;baee
	inc bc			;baf1
	call po,04387h		;baf2
	ld (02132h),a		;baf5
	ld hl,0fefeh		;baf8
	inc bc			;bafb
	ld b,e			;bafc
	add a,(hl)		;bafd
	ld (02121h),a		;bafe
	cp 0feh			;bb01
	ld b,e			;bb03
	inc b			;bb04
	ld hl,03181h		;bb05
	inc b			;bb08
	djnz lba8fh		;bb09
	ld hl,04332h		;bb0b
	call po,01005h		;bb0e
	add a,l			;bb11
	ld hl,04332h		;bb12
	ld hl,00321h		;bb15
	ld (04302h),a		;bb18
	add a,d			;bb1b
	call po,00321h		;bb1c
	ld (04303h),a		;bb1f
	add a,e			;bb22
	call po,02020h		;bb23
	inc b			;bb26
	djnz $-121		;bb27
	ld b,c			;bb29
	ld hl,03040h		;bb2a
	jr nz,lbb32h		;bb2d
	djnz lbabbh		;bb2f
	ld b,c			;bb31
lbb32h:
	ld hl,00304h		;bb32
	ld (bc),a		;bb35
	ld (bc),a		;bb36
	pop af			;bb37
	ld hl,02141h		;bb38
	inc bc			;bb3b
	ld b,b			;bb3c
	add a,c			;bb3d
	jr nc,lbb44h		;bb3e
	ld (04002h),a		;bb40
	ld (bc),a		;bb43
lbb44h:
	ld (01302h),a		;bb44
	ld (bc),a		;bb47
	ld (04002h),a		;bb48
	add a,h			;bb4b
	jr nc,lbb6eh		;bb4c
	ld (de),a		;bb4e
	inc (hl)		;bb4f
	inc b			;bb50
	inc hl			;bb51
	add a,c			;bb52
	ld hl,0f104h		;bb53
	ld (bc),a		;bb56
	ld hl,02303h		;bb57
	ld (bc),a		;bb5a
	ld sp,0f102h		;bb5b
	adc a,c			;bb5e
	ld sp,03243h		;bb5f
	ld (00321h),a		;bb62
	jr nz,lbb77h		;bb65
	ld b,b			;bb67
	dec b			;bb68
	ld b,e			;bb69
	ld (bc),a		;bb6a
	ld (de),a		;bb6b
	add a,c			;bb6c
	ld b,b			;bb6d
lbb6eh:
	dec b			;bb6e
	jr nc,$-123		;bb6f
	ld hl,01f1fh		;bb71
	dec bc			;bb74
	ld b,e			;bb75
	add a,d			;bb76
lbb77h:
	ld (00321h),a		;bb77
	ld b,e			;bb7a
	inc bc			;bb7b
	ld (0219eh),a		;bb7c
	rra			;bb7f
	ld b,e			;bb80
	ld (04343h),a		;bb81
	ld (01010h),a		;bb84
	pop af			;bb87
	pop af			;bb88
	ld hl,03243h		;bb89
	ld hl,03244h		;bb8c
	ld (0f1f2h),a		;bb8f
	ld (01f21h),a		;bb92
	ld b,e			;bb95
	ld sp,02030h		;bb96
	djnz lbbabh		;bb99
	ld b,b			;bb9b
	ld b,043h		;bb9c
	add a,h			;bb9e
lbb9fh:
	ld b,b			;bb9f
	jr nc,lbbc2h		;bba0
	djnz $+6		;bba2
	ld b,e			;bba4
	add a,d			;bba5
	ld (00521h),a		;bba6
	ld b,e			;bba9
	add a,h			;bbaa
lbbabh:
	ld (01f21h),a		;bbab
	ld b,e			;bbae
	inc b			;bbaf
	ld (02181h),a		;bbb0
	ex af,af'		;bbb3
	ld b,e			;bbb4
	add a,c			;bbb5
	ld hl,04305h		;bbb6
	add a,h			;bbb9
	ld (0f121h),a		;bbba
	inc (hl)		;bbbd
	inc b			;bbbe
	inc hl			;bbbf
	add a,d			;bbc0
	ld (de),a		;bbc1
lbbc2h:
	pop af			;bbc2
	inc bc			;bbc3
	ld b,e			;bbc4
	add a,d			;bbc5
	ld (0032fh),a		;bbc6
	pop af			;bbc9
	dec b			;bbca
	inc (hl)		;bbcb
	add a,h			;bbcc
	ld (0f1f2h),a		;bbcd
	ld b,e			;bbd0
	inc b			;bbd1
	ld (03002h),a		;bbd2
	inc b			;bbd5
	jr nz,lbbe1h		;bbd6
	ld d,b			;bbd8
	add hl,bc		;bbd9
	or b			;bbda
	ld (bc),a		;bbdb
	ld d,b			;bbdc
	inc b			;bbdd
	jr nz,lbbeah		;bbde
	ld d,b			;bbe0
lbbe1h:
	inc b			;bbe1
	or b			;bbe2
	dec c			;bbe3
	ld d,b			;bbe4
lbbe5h:
	ld (bc),a		;bbe5
	or b			;bbe6
	ld b,090h		;bbe7
	add a,c			;bbe9
lbbeah:
	ld d,b			;bbea
	inc bc			;bbeb
	or b			;bbec
	adc a,c			;bbed
	ld d,b			;bbee
	or b			;bbef
	sub b			;bbf0
	sub b			;bbf1
	or b			;bbf2
	ld d,b			;bbf3
	ld d,b			;bbf4
	sub b			;bbf5
	or l			;bbf6
	ld b,0b0h		;bbf7
	inc bc			;bbf9
	sub b			;bbfa
	dec b			;bbfb
	djnz $-118		;bbfc
	ld d,b			;bbfe
	sub b			;bbff
	or b			;bc00
	ld d,b			;bc01
	or b			;bc02
	sub b			;bc03
	sub b			;bc04
	or b			;bc05
	ld b,090h		;bc06
	add a,e			;bc08
	or b			;bc09
	ld d,b			;bc0a
	or b			;bc0b
	dec bc			;bc0c
	sub b			;bc0d
	add a,e			;bc0e
	or b			;bc0f
	ld d,b			;bc10
	or b			;bc11
	inc b			;bc12
	sub b			;bc13
	add a,e			;bc14
	or b			;bc15
	ld d,b			;bc16
	or b			;bc17
	dec b			;bc18
	djnz lbb9fh		;bc19
	sub b			;bc1b
	or b			;bc1c
	ld d,b			;bc1d
	sub l			;bc1e
	inc b			;bc1f
	sub b			;bc20
	add a,e			;bc21
	or b			;bc22
	ld d,b			;bc23
	or b			;bc24
	ld b,090h		;bc25
	add a,e			;bc27
	or b			;bc28
	ld d,b			;bc29
	or b			;bc2a
	inc bc			;bc2b
	sub b			;bc2c
	inc bc			;bc2d
	djnz $-124		;bc2e
	ld (00413h),a		;bc30
	sub b			;bc33
	adc a,h			;bc34
	or b			;bc35
	ld d,b			;bc36
	or b			;bc37
	djnz lbc6ch		;bc38
	ld b,d			;bc3a
	ld b,d			;bc3b
	pop af			;bc3c
	pop af			;bc3d
	ld hl,06321h		;bc3e
	inc bc			;bc41
	or b			;bc42
	add a,d			;bc43
	ld d,b			;bc44
	sub l			;bc45
	ld c,090h		;bc46
	add a,h			;bc48
	or b			;bc49
	ld d,b			;bc4a
	ld d,b			;bc4b
	or b			;bc4c
	inc bc			;bc4d
	sub b			;bc4e
	add a,e			;bc4f
	or b			;bc50
	ld d,b			;bc51
	or b			;bc52
	djnz lbbe5h		;bc53
lbc55h:
	add a,e			;bc55
	pop de			;bc56
	add a,e			;bc57
	pop de			;bc58
	nop			;bc59
	sub b			;bc5a
	add a,e			;bc5b
	adc a,(hl)		;bc5c
	defb 0fdh,0f7h,09fh ;illegal sequence	;bc5d
	rst 38h			;bc60
	cp 0f8h			;bc61
	ret m			;bc63
	cp 0ffh			;bc64
	add a,a			;bc66
	add a,c			;bc67
	inc c			;bc68
	ld c,h			;bc69
	add a,c			;bc6a
	nop			;bc6b
lbc6ch:
	ld b,0c7h		;bc6c
	dec b			;bc6e
	ret nz			;bc6f
	ld (bc),a		;bc70
	rst 0			;bc71
	ld (bc),a		;bc72
	rst 20h			;bc73
	add a,c			;bc74
	rst 0			;bc75
	nop			;bc76
	xor b			;bc77
	ld a,a			;bc78
	rst 38h			;bc79
	nop			;bc7a
	nop			;bc7b
	jp 01881h		;bc7c
	jp 0e7c3h		;bc7f
	ld a,(hl)		;bc82
	inc a			;bc83
	ret nz			;bc84
	inc a			;bc85
	inc bc			;bc86
	ret po			;bc87
	ld a,a			;bc88
	rst 38h			;bc89
	nop			;bc8a
	nop			;bc8b
	rst 38h			;bc8c
	nop			;bc8d
	inc a			;bc8e
	ld a,(hl)		;bc8f
	jr lbc55h		;bc90
	jp 07ee7h		;bc92
	inc a			;bc95
	inc bc			;bc96
	ret po			;bc97
	ld a,(hl)		;bc98
	jr $-59			;bc99
	jp 07ee7h		;bc9b
	inc a			;bc9e
	ret po			;bc9f
	nop			;bca0
	add a,a			;bca1
	ld (04242h),a		;bca2
	ld de,0f6f6h		;bca5
	and 003h		;bca8
	ld h,l			;bcaa
	add a,d			;bcab
	ld h,d			;bcac
	ld h,c			;bcad
	inc bc			;bcae
	ld sp,02184h		;bcaf
	ld (04242h),a		;bcb2
	inc bc			;bcb5
	pop af			;bcb6
	ld (bc),a		;bcb7
	ld h,d			;bcb8
	add a,c			;bcb9
	and 003h		;bcba
	ld h,l			;bcbc
	add a,(hl)		;bcbd
	ld h,e			;bcbe
	ld h,c			;bcbf
	ld sp,06321h		;bcc0
	and 003h		;bcc3
	ld h,l			;bcc5
	ld (bc),a		;bcc6
	ld h,d			;bcc7
	add a,c			;bcc8
	ld hl,09000h		;bcc9
	add a,028h		;bccc
	ld sp,0ffffh		;bcce
	dec c			;bcd1
	sub d			;bcd2
	ld h,c			;bcd3
	ld h,(hl)		;bcd4
	adc a,b			;bcd5
	ld d,0ffh		;bcd6
	rst 38h			;bcd8
	ld b,a			;bcd9
	adc a,b			;bcda
	jr nc,lbcddh		;bcdb
lbcddh:
	add a,d			;bcdd
	ret nz			;bcde
	rst 20h			;bcdf
	inc b			;bce0
	call pe,0e784h		;bce1
	ret nz			;bce4
	ret nz			;bce5
	rst 20h			;bce6
	inc b			;bce7
	call pe,0e782h		;bce8
	ret nz			;bceb
	nop			;bcec
	add a,l			;bced
	ld b,08fh		;bcee
	ret po			;bcf0
	call m,00a0fh		;bcf1
	nop			;bcf4
	ld (bc),a		;bcf5
	rrca			;bcf6
	rlca			;bcf7
	nop			;bcf8
	add a,e			;bcf9
	ccf			;bcfa
	rrca			;bcfb
	inc bc			;bcfc
	ex af,af'		;bcfd
	nop			;bcfe
	ld (bc),a		;bcff
	rrca			;bd00
	add a,e			;bd01
	ret p			;bd02
	otir			;bd03
	rlca			;bd05
	nop			;bd06
	ld (bc),a		;bd07
	ld bc,00383h		;bd08
	rlca			;bd0b
	rlca			;bd0c
	ex af,af'		;bd0d
	rrca			;bd0e
	inc b			;bd0f
	rlca			;bd10
	ld (bc),a		;bd11
	inc bc			;bd12
	add a,c			;bd13
	ld bc,00008h		;bd14
	add a,l			;bd17
lbd18h:
	ld bc,00303h		;bd18
	rlca			;bd1b
	rlca			;bd1c
	rlca			;bd1d
	nop			;bd1e
	add a,c			;bd1f
	rlca			;bd20
	dec b			;bd21
	nop			;bd22
	add a,e			;bd23
	rrca			;bd24
	rst 38h			;bd25
	rst 38h			;bd26
	inc b			;bd27
	nop			;bd28
	add a,h			;bd29
	ld bc,00703h		;bd2a
	rlca			;bd2d
	ex af,af'		;bd2e
	rrca			;bd2f
	inc b			;bd30
	rlca			;bd31
	ld (bc),a		;bd32
	inc bc			;bd33
	add a,c			;bd34
	ld bc,00004h		;bd35
	adc a,l			;bd38
	rlca			;bd39
	ccf			;bd3a
	ld a,a			;bd3b
	rst 38h			;bd3c
	ei			;bd3d
	inc bc			;bd3e
	inc bc			;bd3f
	rlca			;bd40
	rlca			;bd41
	rrca			;bd42
	rra			;bd43
	ld a,a			;bd44
	ld sp,hl		;bd45
	dec b			;bd46
	nop			;bd47
	add a,(hl)		;bd48
lbd49h:
	rra			;bd49
	ret m			;bd4a
	cp 0fch			;bd4b
	ret p			;bd4d
	ret nz			;bd4e
	dec b			;bd4f
	nop			;bd50
	adc a,d			;bd51
	ld bc,0fff3h		;bd52
	rra			;bd55
	rlca			;bd56
	ld bc,00000h		;bd57
	rlca			;bd5a
	ld bc,0000ah		;bd5b
	add a,l			;bd5e
	rst 38h			;bd5f
	add a,a			;bd60
	ld (hl),b		;bd61
	ret po			;bd62
	ret p			;bd63
	inc c			;bd64
	rst 38h			;bd65
	add a,a			;bd66
	ccf			;bd67
	rrca			;bd68
	call m,0c0ffh		;bd69
	ld a,a			;bd6c
	rrca			;bd6d
	inc b			;bd6e
	nop			;bd6f
	nop			;bd70
	add a,c			;bd71
	ld d,h			;bd72
	inc bc			;bd73
	ld b,e			;bd74
	jr nz,lbdb7h		;bd75
	inc bc			;bd77
	ld d,h			;bd78
	add a,c			;bd79
	ld d,c			;bd7a
	ld d,a			;bd7b
	ld d,b			;bd7c
	add a,c			;bd7d
	ld d,h			;bd7e
	rlca			;bd7f
	ld d,b			;bd80
lbd81h:
	add a,c			;bd81
	ld d,d			;bd82
	ld b,030h		;bd83
	ld (bc),a		;bd85
	ld b,e			;bd86
	ex af,af'		;bd87
	jr nz,lbd8dh		;bd88
	ld hl,02081h		;bd8a
lbd8dh:
	ld de,00530h		;bd8d
	ld (0030dh),a		;bd90
	ld (bc),a		;bd93
	jr nz,lbd18h		;bd94
	ld (00520h),a		;bd96
	jr nc,lbd9bh		;bd99
lbd9bh:
	and l			;bd9b
	inc bc			;bd9c
	rlca			;bd9d
	ld e,0fch		;bd9e
	ld h,c			;bda0
	add a,d			;bda1
	rst 0			;bda2
	jr nc,lbd49h		;bda3
	and h			;bda5
	call m,09cb6h		;bda6
	sbc a,h			;bda9
	cp h			;bdaa
	ld a,(hl)		;bdab
	rst 28h			;bdac
	rst 0			;bdad
	add a,0c3h		;bdae
	add a,a			;bdb0
	add a,a			;bdb1
	adc a,b			;bdb2
	sub b			;bdb3
	sbc a,h			;bdb4
	sbc a,h			;bdb5
	cp h			;bdb6
lbdb7h:
	ld a,(hl)		;bdb7
	rst 28h			;bdb8
	rst 0			;bdb9
	add a,0c3h		;bdba
	add a,a			;bdbc
	add a,a			;bdbd
	adc a,b			;bdbe
	sub b			;bdbf
	or c			;bdc0
	inc bc			;bdc1
	ret po			;bdc2
	add a,c			;bdc3
	or c			;bdc4
	inc bc			;bdc5
	ret po			;bdc6
	xor h			;bdc7
	ret p			;bdc8
	ret m			;bdc9
	call m,0f6d8h		;bdca
	call pe,0dac8h		;bdcd
	and h			;bdd0
	and h			;bdd1
	call m,0f0b6h		;bdd2
	ret m			;bdd5
	call m,006d8h		;bdd6
	adc a,a			;bdd9
	ret po			;bdda
	call m,085d0h		;bddb
	inc bc			;bdde
	rlca			;bddf
	ld d,00eh		;bde0
	ld b,00eh		;bde2
	ld d,00eh		;bde4
	ld b,00eh		;bde6
	rlca			;bde8
	inc bc			;bde9
	adc a,e			;bdea
	ld sp,0f8c0h		;bdeb
	ld a,a			;bdee
	add a,a			;bdef
	nop			;bdf0
	add a,a			;bdf1
	rst 0			;bdf2
	adc a,a			;bdf3
	inc b			;bdf4
	ld bc,08102h		;bdf5
	adc a,d			;bdf8
	pop bc			;bdf9
	ld h,e			;bdfa
	nop			;bdfb
	nop			;bdfc
	ld b,b			;bdfd
	ld h,b			;bdfe
	ld h,b			;bdff
	ret nz			;be00
	add a,b			;be01
	ex af,af'		;be02
	ld b,000h		;be03
	add a,(hl)		;be05
	ld b,b			;be06
	ld h,b			;be07
	ld h,b			;be08
	ret nz			;be09
	add a,b			;be0a
	ex af,af'		;be0b
	inc b			;be0c
	nop			;be0d
	add a,e			;be0e
	pop hl			;be0f
	ld (hl),e		;be10
	ld e,005h		;be11
	nop			;be13
	add a,h			;be14
	di			;be15
	pop bc			;be16
	add a,c			;be17
	add a,c			;be18
	inc b			;be19
	ld bc,08102h		;be1a
	adc a,d			;be1d
lbe1eh:
	pop bc			;be1e
	ld h,e			;be1f
	ret nz			;be20
	cp b			;be21
	cp 01ch			;be22
	nop			;be24
	sbc a,c			;be25
	adc a,a			;be26
	add a,a			;be27
	inc b			;be28
	nop			;be29
	add a,h			;be2a
	add a,h			;be2b
	ex af,af'		;be2c
	ld bc,0040fh		;be2d
	rst 38h			;be30
	sbc a,b			;be31
	ld bc,07813h		;be32
	call nz,08382h		;be35
	add a,e			;be38
	rst 20h			;be39
	inc c			;be3a
	jr nc,lbe1eh		;be3b
	jp 0eec7h		;be3d
	sbc a,b			;be40
	nop			;be41
	jr $+18			;be42
	jr nz,lbe66h		;be44
	nop			;be46
	sbc a,c			;be47
	adc a,a			;be48
	add a,a			;be49
	inc b			;be4a
	nop			;be4b
	adc a,h			;be4c
	ld bc,07813h		;be4d
	call nz,00000h		;be50
	ld hl,08443h		;be53
	ex af,af'		;be56
	ld bc,0080fh		;be57
	nop			;be5a
	sub a			;be5b
	add a,d			;be5c
	add a,e			;be5d
	add a,e			;be5e
	rst 20h			;be5f
	rst 38h			;be60
	ret nz			;be61
	ld a,a			;be62
	rrca			;be63
	nop			;be64
	rra			;be65
lbe66h:
	ret m			;be66
	cp 01eh			;be67
	ld e,0feh		;be69
	call m,070c7h		;be6b
	ret po			;be6e
	ret po			;be6f
	pop hl			;be70
	ld (hl),e		;be71
	ld e,005h		;be72
	nop			;be74
	xor 0c0h		;be75
	ret po			;be77
	jr nc,lbe92h		;be78
	inc bc			;be7a
	rrca			;be7b
	ld e,038h		;be7c
	jr c,$+114		;be7e
	ret po			;be80
	ret po			;be81
	jr lbefch		;be82
	ret p			;be84
	ret po			;be85
	ret po			;be86
	add a,b			;be87
	nop			;be88
	nop			;be89
	inc e			;be8a
	ld bc,00e00h		;be8b
	jr $+18			;be8e
	jr nz,lbeb2h		;be90
lbe92h:
	rst 0			;be92
	xor 098h		;be93
	nop			;be95
	ld bc,0fff3h		;be96
	rra			;be99
	nop			;be9a
	rrca			;be9b
	rst 38h			;be9c
	rst 38h			;be9d
	call m,087e9h		;be9e
	rst 20h			;bea1
	ld e,01eh		;bea2
	cp 0fch			;bea4
	rlca			;bea6
	sbc a,(hl)		;bea7
	call z,098c0h		;bea8
	call z,068c4h		;beab
	ld (hl),b		;beae
	ld a,(hl)		;beaf
	ld e,c			;beb0
	ld e,c			;beb1
lbeb2h:
	ld a,h			;beb2
	ld (0a6a3h),hl		;beb3
	inc e			;beb6
	ld bc,00e00h		;beb7
	ld l,(hl)		;beba
	and (hl)		;bebb
	and 09ch		;bebc
	inc bc			;bebe
	rrca			;bebf
	ld e,038h		;bec0
	or a			;bec2
	call 0609eh		;bec3
	di			;bec6
	pop bc			;bec7
	add a,c			;bec8
	add a,c			;bec9
	ld (hl),b		;beca
	ld a,(hl)		;becb
	ld e,c			;becc
	ld e,c			;becd
	ld l,(hl)		;bece
	and (hl)		;becf
	and 09ch		;bed0
	ccf			;bed2
	ld a,a			;bed3
	rst 38h			;bed4
	ei			;bed5
	or 0ech			;bed6
	ret z			;bed8
	jp c,08261h		;bed9
	rst 0			;bedc
	jr nc,lbf1eh		;bedd
	rrca			;bedf
	inc bc			;bee0
	nop			;bee1
	ret po			;bee2
	add a,b			;bee3
	inc b			;bee4
	nop			;bee5
	rst 10h			;bee6
	ld hl,00743h		;bee7
	sbc a,(hl)		;beea
	call z,098c0h		;beeb
	call z,068c4h		;beee
	ret p			;bef1
	pop hl			;bef2
	ex (sp),hl		;bef3
	add a,0b8h		;bef4
	ret nz			;bef6
	ld a,l			;bef7
	add a,098h		;bef8
	ld a,(hl)		;befa
	pop hl			;befb
lbefch:
	add a,c			;befc
	inc bc			;befd
	rlca			;befe
	ld e,0fch		;beff
	cp b			;bf01
	ret nz			;bf02
	ld a,l			;bf03
	add a,098h		;bf04
	ld a,(hl)		;bf06
	pop hl			;bf07
	add a,c			;bf08
	ret nz			;bf09
	cp b			;bf0a
	cp 01ch			;bf0b
	jp nz,080c0h		;bf0d
	rst 38h			;bf10
	ld a,b			;bf11
	ret m			;bf12
	ret m			;bf13
	add a,b			;bf14
	inc c			;bf15
	jr nc,$-29		;bf16
	jp 0c0c2h		;bf18
	add a,b			;bf1b
	rst 38h			;bf1c
	ld a,b			;bf1d
lbf1eh:
	ret m			;bf1e
	ret m			;bf1f
	add a,b			;bf20
	rrca			;bf21
	rra			;bf22
	ld a,a			;bf23
	ld sp,hl		;bf24
	ret p			;bf25
	pop hl			;bf26
	ex (sp),hl		;bf27
	add a,00fh		;bf28
	ret p			;bf2a
	otir			;bf2b
	or a			;bf2d
	call 0609eh		;bf2e
	add a,b			;bf31
	pop af			;bf32
	ret nz			;bf33
	ret m			;bf34
	ret nz			;bf35
	ret m			;bf36
	ld a,a			;bf37
	add a,a			;bf38
	ret po			;bf39
	ret m			;bf3a
	ret po			;bf3b
	ret m			;bf3c
	ret p			;bf3d
	inc bc			;bf3e
	rst 38h			;bf3f
	or b			;bf40
	nop			;bf41
	add a,a			;bf42
	ld (hl),b		;bf43
	ret po			;bf44
	ld a,h			;bf45
	ld (0a6a3h),hl		;bf46
	ret nz			;bf49
	ret po			;bf4a
	jr nc,lbf65h		;bf4b
	jr $+122		;bf4d
	ret p			;bf4f
	ret po			;bf50
	call m,087e9h		;bf51
	rst 20h			;bf54
	ret nc			;bf55
	add a,l			;bf56
	inc bc			;bf57
	rlca			;bf58
	rlca			;bf59
	inc bc			;bf5a
	adc a,e			;bf5b
	ld sp,0f180h		;bf5c
	ret nz			;bf5f
	ret m			;bf60
	rst 38h			;bf61
	add a,a			;bf62
	rst 0			;bf63
	adc a,a			;bf64
lbf65h:
	adc a,h			;bf65
	ret m			;bf66
	ret po			;bf67
	ret m			;bf68
	adc a,h			;bf69
	ret m			;bf6a
	ret po			;bf6b
	ret m			;bf6c
	ret po			;bf6d
	ret m			;bf6e
	ret po			;bf6f
	ret m			;bf70
	nop			;bf71
	add a,d			;bf72
	ld d,d			;bf73
	ld d,e			;bf74
	ex af,af'		;bf75
	ld d,h			;bf76
	dec h			;bf77
	ld b,e			;bf78
	rlca			;bf79
	ld d,h			;bf7a
	dec b			;bf7b
	ld b,e			;bf7c
	ld (bc),a		;bf7d
	ld d,h			;bf7e
	dec b			;bf7f
	ld b,e			;bf80
	inc c			;bf81
	ld d,e			;bf82
	rlca			;bf83
	ld b,e			;bf84
	add a,c			;bf85
	ld (02109h),a		;bf86
	dec de			;bf89
	ld sp,04108h		;bf8a
	add a,c			;bf8d
	ld sp,02108h		;bf8e
	add a,e			;bf91
	ld sp,03243h		;bf92
	ld b,a			;bf95
	ld hl,03282h		;bf96
	jr nz,lbf9eh		;bf99
	jr nc,lbf9fh		;bf9b
	ld b,e			;bf9d
lbf9eh:
	add a,c			;bf9e
lbf9fh:
	ld d,h			;bf9f
	inc b			;bfa0
	dec d			;bfa1
	inc bc			;bfa2
	ld b,c			;bfa3
	ld (bc),a		;bfa4
	ld sp,04107h		;bfa5
	add a,c			;bfa8
	ld d,c			;bfa9
	inc b			;bfaa
	ld b,c			;bfab
	inc bc			;bfac
	ld d,c			;bfad
	inc b			;bfae
	ld b,c			;bfaf
	inc bc			;bfb0
	ld d,c			;bfb1
	dec b			;bfb2
	ld b,c			;bfb3
	ld c,021h		;bfb4
	ld (bc),a		;bfb6
	jr nz,lbfbch		;bfb7
	ld d,b			;bfb9
	add a,l			;bfba
	ld d,c			;bfbb
lbfbch:
	ld d,h			;bfbc
	ld d,h			;bfbd
	ld b,e			;bfbe
	ld d,h			;bfbf
	inc bc			;bfc0
	dec d			;bfc1
	add a,a			;bfc2
	ld b,d			;bfc3
	ld d,e			;bfc4
	ld b,c			;bfc5
	ld sp,04131h		;bfc6
	ld d,c			;bfc9
	inc b			;bfca
	ld d,d			;bfcb
	add a,(hl)		;bfcc
	ld b,d			;bfcd
	ld (02132h),a		;bfce
	ld sp,00341h		;bfd1
	ld hl,04290h		;bfd4
	ld b,c			;bfd7
	ld b,c			;bfd8
	ld sp,04141h		;bfd9
	ld d,c			;bfdc
	ld d,c			;bfdd
	ld d,h			;bfde
	ld d,h			;bfdf
	ld b,e			;bfe0
	ld b,e			;bfe1
	ld b,c			;bfe2
	ld b,c			;bfe3
	ld sp,00321h		;bfe4
	ld d,d			;bfe7
	ld (bc),a		;bfe8
	ld b,d			;bfe9
	ld (bc),a		;bfea
	ld b,c			;bfeb
	add a,c			;bfec
	ld sp,05003h		;bfed
	add hl,bc		;bff0
	ld d,h			;bff1
	inc b			;bff2
	ld b,b			;bff3
	ld b,041h		;bff4
	ld (bc),a		;bff6
	ld hl,04287h		;bff7
	ld d,e			;bffa
	ld b,c			;bffb
	ld sp,04131h		;bffc
	ld d,c			;bfff
