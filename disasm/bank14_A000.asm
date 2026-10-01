; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank14_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank14.bin

	org 0a000h

	sbc a,d			;a000
	ld a,a			;a001
	ccf			;a002
	nop			;a003
	nop			;a004
	inc bc			;a005
	add a,c			;a006
	ret nz			;a007
	rst 38h			;a008
	rst 38h			;a009
	nop			;a00a
	nop			;a00b
	ld b,0fch		;a00c
	ld a,(hl)		;a00e
	rst 38h			;a00f
	nop			;a010
	ret p			;a011
	rst 38h			;a012
	di			;a013
	ld sp,hl		;a014
	ret p			;a015
	rst 38h			;a016
	nop			;a017
	nop			;a018
	rst 38h			;a019
	ret nz			;a01a
	ld b,0f0h		;a01b
	nop			;a01d
	inc bc			;a01e
	ld hl,01f05h		;a01f
	ld (bc),a		;a022
	ld (02f02h),a		;a023
	ld (bc),a		;a026
	pop af			;a027
	ld (bc),a		;a028
la029h:
	ld hl,03190h		;a029
	jp p,0f1f2h		;a02c
	di			;a02f
	ld hl,00f21h		;a030
	rrca			;a033
	jr nz,la029h		;a034
	ld (01f21h),a		;a036
	jp p,00023h		;a039
	ex af,af'		;a03c
	sbc a,c			;a03d
	nop			;a03e
	ex af,af'		;a03f
	nop			;a040
	nop			;a041
	ex af,af'		;a042
	rst 28h			;a043
	nop			;a044
	ex af,af'		;a045
	nop			;a046
	nop			;a047
	rst 38h			;a048
	rst 38h			;a049
	ret m			;a04a
	rra			;a04b
	ccf			;a04c
	ld a,a			;a04d
	adc a,a			;a04e
	call m,000f8h		;a04f
	ret po			;a052
	ret m			;a053
	call m,0f1feh		;a054
	rra			;a057
	rst 38h			;a058
	call m,0f8ffh		;a059
	adc a,a			;a05c
	ld a,a			;a05d
	ccf			;a05e
	rra			;a05f
	rlca			;a060
	ccf			;a061
	rra			;a062
	ccf			;a063
	pop af			;a064
	cp 0fch			;a065
	ret m			;a067
	ret po			;a068
	nop			;a069
	rlca			;a06a
	rra			;a06b
	ccf			;a06c
	ld a,a			;a06d
	adc a,a			;a06e
	di			;a06f
	jp p,0e000h		;a070
	ret m			;a073
	call m,0f1feh		;a074
	rst 8			;a077
	ld c,a			;a078
	jp p,0f9f8h		;a079
	adc a,a			;a07c
	ld a,a			;a07d
	ccf			;a07e
	rra			;a07f
	rlca			;a080
	ld c,a			;a081
	rra			;a082
	sbc a,a			;a083
	pop af			;a084
	cp 0fch			;a085
	ret m			;a087
	ret po			;a088
	nop			;a089
	rlca			;a08a
	rra			;a08b
	ccf			;a08c
	ld a,a			;a08d
	adc a,a			;a08e
	di			;a08f
	pop af			;a090
	nop			;a091
	ret po			;a092
	ret m			;a093
	call m,0f1feh		;a094
	rst 8			;a097
	adc a,a			;a098
	ret p			;a099
	jp p,08ff3h		;a09a
	ld a,a			;a09d
	ccf			;a09e
	rra			;a09f
	rlca			;a0a0
	rrca			;a0a1
	ld c,a			;a0a2
	rst 8			;a0a3
	pop af			;a0a4
	cp 0fch			;a0a5
	ret m			;a0a7
	ret po			;a0a8
	nop			;a0a9
	rlca			;a0aa
	rra			;a0ab
	ccf			;a0ac
	ld a,a			;a0ad
	adc a,a			;a0ae
	call m,000f9h		;a0af
	ret po			;a0b2
	ret m			;a0b3
	call m,0f1feh		;a0b4
	ccf			;a0b7
	sbc a,a			;a0b8
	ld sp,hl		;a0b9
	ld sp,hl		;a0ba
	call m,07f8fh		;a0bb
	ccf			;a0be
	rra			;a0bf
	rlca			;a0c0
	sbc a,a			;a0c1
	sbc a,a			;a0c2
	ccf			;a0c3
	pop af			;a0c4
	cp 0fch			;a0c5
	ret m			;a0c7
	pop hl			;a0c8
	ret po			;a0c9
	nop			;a0ca
	rlca			;a0cb
	rra			;a0cc
	ccf			;a0cd
	ld a,a			;a0ce
	adc a,a			;a0cf
	ret p			;a0d0
	add a,b			;a0d1
	nop			;a0d2
	ret po			;a0d3
	ret m			;a0d4
	call m,0f1feh		;a0d5
	rrca			;a0d8
	ld bc,08017h		;a0d9
	ret p			;a0dc
	adc a,a			;a0dd
	ld a,a			;a0de
	ccf			;a0df
	rra			;a0e0
	rlca			;a0e1
	ret pe			;a0e2
	ld bc,0f10fh		;a0e3
	cp 0fch			;a0e6
	ret m			;a0e8
	ret po			;a0e9
	nop			;a0ea
	rlca			;a0eb
	rra			;a0ec
	ccf			;a0ed
	ld a,a			;a0ee
	adc a,a			;a0ef
	ret p			;a0f0
	add a,b			;a0f1
	nop			;a0f2
	ret po			;a0f3
	ret m			;a0f4
	call m,0f1feh		;a0f5
	rrca			;a0f8
	ld bc,08017h		;a0f9
	ret p			;a0fc
	adc a,a			;a0fd
	ld a,a			;a0fe
	ccf			;a0ff
	rra			;a100
	rlca			;a101
	ret pe			;a102
	ld bc,0f10fh		;a103
	cp 0fch			;a106
	ret m			;a108
	ret po			;a109
	nop			;a10a
	rlca			;a10b
	rra			;a10c
	ccf			;a10d
	ld a,a			;a10e
	adc a,a			;a10f
	ld sp,hl		;a110
	ret m			;a111
	nop			;a112
	ret po			;a113
	ret m			;a114
	call m,0f1feh		;a115
	sbc a,a			;a118
	sbc a,a			;a119
	ret m			;a11a
	ld sp,hl		;a11b
	ld sp,hl		;a11c
	adc a,a			;a11d
	ld a,a			;a11e
	ccf			;a11f
	rra			;a120
	rlca			;a121
	rra			;a122
	rra			;a123
	sbc a,a			;a124
	pop af			;a125
	cp 0fch			;a126
	ret m			;a128
	ret po			;a129
	nop			;a12a
	ld (bc),a		;a12b
	dec c			;a12c
	adc a,h			;a12d
	add a,b			;a12e
	ret po			;a12f
	add a,b			;a130
	defb 0fdh,0fah,0fah ;illegal sequence	;a131
	ret nc			;a134
	ret nc			;a135
	add a,b			;a136
	ret po			;a137
	add a,b			;a138
	defb 0fdh,005h,0fah ;illegal sequence	;a139
	add a,l			;a13c
	defb 0fdh,080h,0e0h ;illegal sequence	;a13d
	add a,b			;a140
	ret nc			;a141
	inc bc			;a142
	jp m,0fd84h		;a143
	add a,b			;a146
	ret po			;a147
	add a,b			;a148
	inc bc			;a149
	ret nc			;a14a
	adc a,h			;a14b
	add a,b			;a14c
	ret po			;a14d
	add a,b			;a14e
	defb 0fdh,0fah,0fah ;illegal sequence	;a14f
	ret nc			;a152
	ret nc			;a153
	add a,b			;a154
	ret po			;a155
	add a,b			;a156
	defb 0fdh,005h,0fah ;illegal sequence	;a157
	add a,l			;a15a
	defb 0fdh,080h,0e0h ;illegal sequence	;a15b
	add a,b			;a15e
	ret nc			;a15f
	inc bc			;a160
	jp m,0fd84h		;a161
	add a,b			;a164
	ret po			;a165
	add a,b			;a166
	inc bc			;a167
	ret nc			;a168
	adc a,h			;a169
	add a,b			;a16a
	ret po			;a16b
	add a,b			;a16c
	defb 0fdh,0fah,0fah ;illegal sequence	;a16d
	ret nc			;a170
	ret nc			;a171
	add a,b			;a172
	ret po			;a173
	add a,b			;a174
	defb 0fdh,005h,0fah ;illegal sequence	;a175
	add a,l			;a178
	defb 0fdh,080h,0e0h ;illegal sequence	;a179
	add a,b			;a17c
	ret nc			;a17d
	inc bc			;a17e
	jp m,0fd84h		;a17f
	add a,b			;a182
	ret po			;a183
	add a,b			;a184
	inc bc			;a185
	ret nc			;a186
	adc a,h			;a187
	add a,b			;a188
	ret po			;a189
	add a,b			;a18a
	defb 0fdh,0fah,0fah ;illegal sequence	;a18b
	ret nc			;a18e
	ret nc			;a18f
	add a,b			;a190
	ret po			;a191
	add a,b			;a192
	defb 0fdh,005h,0fah ;illegal sequence	;a193
	add a,l			;a196
	defb 0fdh,080h,0e0h ;illegal sequence	;a197
	add a,b			;a19a
	ret nc			;a19b
	inc bc			;a19c
	jp m,0fd84h		;a19d
	add a,b			;a1a0
la1a1h:
	ret po			;a1a1
	add a,b			;a1a2
	inc bc			;a1a3
	ret nc			;a1a4
	sbc a,l			;a1a5
	add a,b			;a1a6
	ret po			;a1a7
	add a,b			;a1a8
	defb 0fdh,0f7h,0f7h ;illegal sequence	;a1a9
	ret nc			;a1ac
	ret nc			;a1ad
	add a,b			;a1ae
	ret po			;a1af
	add a,b			;a1b0
	defb 0fdh,0f7h,0f7h ;illegal sequence	;a1b1
	rst 20h			;a1b4
	rst 30h			;a1b5
	rst 30h			;a1b6
	defb 0fdh,080h,0e0h ;illegal sequence	;a1b7
	add a,b			;a1ba
	ret nc			;a1bb
	rst 20h			;a1bc
	rst 30h			;a1bd
	rst 30h			;a1be
	defb 0fdh,080h,0e0h ;illegal sequence	;a1bf
	add a,b			;a1c2
	inc bc			;a1c3
	ret nc			;a1c4
	sbc a,l			;a1c5
	add a,b			;a1c6
	ret po			;a1c7
	add a,b			;a1c8
	defb 0fdh,0f6h,0f6h ;illegal sequence	;a1c9
	ret nc			;a1cc
	ret nc			;a1cd
	add a,b			;a1ce
	ret po			;a1cf
	add a,b			;a1d0
	defb 0fdh,0f6h,0f6h ;illegal sequence	;a1d1
	and (hl)		;a1d4
	or 0f6h			;a1d5
	defb 0fdh,080h,0e0h ;illegal sequence	;a1d7
	add a,b			;a1da
	ret nc			;a1db
	and (hl)		;a1dc
	or 0f6h			;a1dd
	defb 0fdh,080h,0e0h ;illegal sequence	;a1df
	add a,b			;a1e2
	inc bc			;a1e3
	ret nc			;a1e4
	adc a,h			;a1e5
	add a,b			;a1e6
	ret po			;a1e7
	add a,b			;a1e8
	defb 0fdh,0fah,0fah ;illegal sequence	;a1e9
	ret nc			;a1ec
	ret nc			;a1ed
	add a,b			;a1ee
	ret po			;a1ef
	add a,b			;a1f0
	defb 0fdh,005h,0fah ;illegal sequence	;a1f1
	add a,l			;a1f4
	defb 0fdh,080h,0e0h ;illegal sequence	;a1f5
	add a,b			;a1f8
	ret nc			;a1f9
	inc bc			;a1fa
	jp m,0fd85h		;a1fb
	add a,b			;a1fe
	ret po			;a1ff
	add a,b			;a200
	ret nc			;a201
	nop			;a202
	ld (bc),a		;a203
	dec e			;a204
	adc a,h			;a205
	add a,c			;a206
	pop hl			;a207
	add a,c			;a208
	defb 0fdh,0fah,0fah ;illegal sequence	;a209
	pop de			;a20c
	pop de			;a20d
	add a,c			;a20e
	pop hl			;a20f
	add a,c			;a210
	defb 0fdh,005h,0fah ;illegal sequence	;a211
	add a,l			;a214
	defb 0fdh,081h,0e1h ;illegal sequence	;a215
	add a,c			;a218
	pop de			;a219
	inc bc			;a21a
	jp m,0fd84h		;a21b
	add a,c			;a21e
	pop hl			;a21f
	add a,c			;a220
	inc bc			;a221
	pop de			;a222
	adc a,h			;a223
	add a,c			;a224
	pop hl			;a225
	add a,c			;a226
	defb 0fdh,0fah,0fah ;illegal sequence	;a227
	pop de			;a22a
	pop de			;a22b
	add a,c			;a22c
	pop hl			;a22d
	add a,c			;a22e
	defb 0fdh,005h,0fah ;illegal sequence	;a22f
	add a,l			;a232
	defb 0fdh,081h,0e1h ;illegal sequence	;a233
	add a,c			;a236
	pop de			;a237
	inc bc			;a238
	jp m,0fd84h		;a239
	add a,c			;a23c
	pop hl			;a23d
	add a,c			;a23e
	inc bc			;a23f
	pop de			;a240
	adc a,h			;a241
	add a,c			;a242
	pop hl			;a243
	add a,c			;a244
	defb 0fdh,0fah,0fah ;illegal sequence	;a245
	pop de			;a248
	pop de			;a249
	add a,c			;a24a
	pop hl			;a24b
	add a,c			;a24c
	defb 0fdh,005h,0fah ;illegal sequence	;a24d
	add a,l			;a250
	defb 0fdh,081h,0e1h ;illegal sequence	;a251
	add a,c			;a254
	pop de			;a255
	inc bc			;a256
	jp m,0fd84h		;a257
	add a,c			;a25a
	pop hl			;a25b
	add a,c			;a25c
	inc bc			;a25d
	pop de			;a25e
	adc a,h			;a25f
	add a,c			;a260
	pop hl			;a261
	add a,c			;a262
	defb 0fdh,0fah,0fah ;illegal sequence	;a263
	pop de			;a266
	pop de			;a267
	add a,c			;a268
	pop hl			;a269
	add a,c			;a26a
	defb 0fdh,005h,0fah ;illegal sequence	;a26b
	add a,l			;a26e
	defb 0fdh,081h,0e1h ;illegal sequence	;a26f
	add a,c			;a272
	pop de			;a273
	inc bc			;a274
	jp m,0fd84h		;a275
	add a,c			;a278
	pop hl			;a279
	add a,c			;a27a
	inc bc			;a27b
	pop de			;a27c
	sbc a,l			;a27d
	add a,c			;a27e
	pop hl			;a27f
	add a,c			;a280
	defb 0fdh,0f7h,0f7h ;illegal sequence	;a281
	pop de			;a284
	pop de			;a285
	add a,c			;a286
	pop hl			;a287
	add a,c			;a288
	defb 0fdh,0f7h,0f7h ;illegal sequence	;a289
	rst 20h			;a28c
	rst 30h			;a28d
	rst 30h			;a28e
	defb 0fdh,081h,0e1h ;illegal sequence	;a28f
	add a,c			;a292
	pop de			;a293
	rst 20h			;a294
	rst 30h			;a295
	rst 30h			;a296
	defb 0fdh,081h,0e1h ;illegal sequence	;a297
	add a,c			;a29a
	inc bc			;a29b
	pop de			;a29c
	sbc a,l			;a29d
	add a,c			;a29e
	pop hl			;a29f
	add a,c			;a2a0
	defb 0fdh,0f6h,0f6h ;illegal sequence	;a2a1
	pop de			;a2a4
	pop de			;a2a5
	add a,c			;a2a6
	pop hl			;a2a7
	add a,c			;a2a8
	defb 0fdh,0f6h,0f6h ;illegal sequence	;a2a9
	and (hl)		;a2ac
	or 0f6h			;a2ad
	defb 0fdh,081h,0e1h ;illegal sequence	;a2af
	add a,c			;a2b2
	pop de			;a2b3
	and (hl)		;a2b4
	or 0f6h			;a2b5
	defb 0fdh,081h,0e1h ;illegal sequence	;a2b7
	add a,c			;a2ba
	inc bc			;a2bb
	pop de			;a2bc
	adc a,h			;a2bd
	add a,c			;a2be
	pop hl			;a2bf
	add a,c			;a2c0
	defb 0fdh,0fah,0fah ;illegal sequence	;a2c1
	pop de			;a2c4
	pop de			;a2c5
	add a,c			;a2c6
	pop hl			;a2c7
	add a,c			;a2c8
	defb 0fdh,005h,0fah ;illegal sequence	;a2c9
	add a,l			;a2cc
	defb 0fdh,081h,0e1h ;illegal sequence	;a2cd
	add a,c			;a2d0
	pop de			;a2d1
	inc bc			;a2d2
	jp m,0fd85h		;a2d3
	add a,c			;a2d6
	pop hl			;a2d7
	add a,c			;a2d8
	pop de			;a2d9
	nop			;a2da
	ld (bc),a		;a2db
	defb 0fdh,08ch ;adc a,iyh	;a2dc
	adc a,a			;a2de
	rst 28h			;a2df
	adc a,a			;a2e0
	defb 0fdh,0fah,0fah ;illegal sequence	;a2e1
	rst 18h			;a2e4
	rst 18h			;a2e5
	adc a,a			;a2e6
	rst 28h			;a2e7
	adc a,a			;a2e8
	defb 0fdh,005h,0fah ;illegal sequence	;a2e9
	add a,l			;a2ec
	defb 0fdh,08fh,0efh ;illegal sequence	;a2ed
	adc a,a			;a2f0
	rst 18h			;a2f1
	inc bc			;a2f2
	jp m,0fd84h		;a2f3
	adc a,a			;a2f6
	rst 28h			;a2f7
	adc a,a			;a2f8
	inc bc			;a2f9
	rst 18h			;a2fa
	adc a,h			;a2fb
	adc a,a			;a2fc
	rst 28h			;a2fd
	adc a,a			;a2fe
	defb 0fdh,0fah,0fah ;illegal sequence	;a2ff
	rst 18h			;a302
	rst 18h			;a303
	adc a,a			;a304
	rst 28h			;a305
	adc a,a			;a306
	defb 0fdh,005h,0fah ;illegal sequence	;a307
	add a,l			;a30a
	defb 0fdh,08fh,0efh ;illegal sequence	;a30b
	adc a,a			;a30e
	rst 18h			;a30f
	inc bc			;a310
	jp m,0fd84h		;a311
	adc a,a			;a314
	rst 28h			;a315
	adc a,a			;a316
	inc bc			;a317
	rst 18h			;a318
	adc a,h			;a319
	adc a,a			;a31a
	rst 28h			;a31b
	adc a,a			;a31c
	defb 0fdh,0fah,0fah ;illegal sequence	;a31d
	rst 18h			;a320
	rst 18h			;a321
	adc a,a			;a322
	rst 28h			;a323
	adc a,a			;a324
	defb 0fdh,005h,0fah ;illegal sequence	;a325
	add a,l			;a328
	defb 0fdh,08fh,0efh ;illegal sequence	;a329
	adc a,a			;a32c
	rst 18h			;a32d
	inc bc			;a32e
	jp m,0fd84h		;a32f
	adc a,a			;a332
	rst 28h			;a333
	adc a,a			;a334
	inc bc			;a335
	rst 18h			;a336
	adc a,h			;a337
	adc a,a			;a338
	rst 28h			;a339
	adc a,a			;a33a
	defb 0fdh,0fah,0fah ;illegal sequence	;a33b
	rst 18h			;a33e
	rst 18h			;a33f
	adc a,a			;a340
	rst 28h			;a341
	adc a,a			;a342
	defb 0fdh,005h,0fah ;illegal sequence	;a343
	add a,l			;a346
	defb 0fdh,08fh,0efh ;illegal sequence	;a347
	adc a,a			;a34a
	rst 18h			;a34b
	inc bc			;a34c
	jp m,0fd84h		;a34d
	adc a,a			;a350
	rst 28h			;a351
	adc a,a			;a352
	inc bc			;a353
	rst 18h			;a354
	sbc a,l			;a355
	adc a,a			;a356
	rst 28h			;a357
	adc a,a			;a358
	defb 0fdh,0f7h,0f7h ;illegal sequence	;a359
	rst 18h			;a35c
	rst 18h			;a35d
	adc a,a			;a35e
	rst 28h			;a35f
	adc a,a			;a360
	defb 0fdh,0f7h,0f7h ;illegal sequence	;a361
	rst 20h			;a364
	rst 30h			;a365
	rst 30h			;a366
	defb 0fdh,08fh,0efh ;illegal sequence	;a367
	adc a,a			;a36a
	rst 18h			;a36b
	rst 20h			;a36c
	rst 30h			;a36d
	rst 30h			;a36e
	defb 0fdh,08fh,0efh ;illegal sequence	;a36f
	adc a,a			;a372
	inc bc			;a373
	rst 18h			;a374
	sbc a,l			;a375
	adc a,a			;a376
	rst 28h			;a377
	adc a,a			;a378
	defb 0fdh,0f6h,0f6h ;illegal sequence	;a379
	rst 18h			;a37c
	rst 18h			;a37d
	adc a,a			;a37e
	rst 28h			;a37f
	adc a,a			;a380
	defb 0fdh,0f6h,0f6h ;illegal sequence	;a381
	and (hl)		;a384
	or 0f6h			;a385
	defb 0fdh,08fh,0efh ;illegal sequence	;a387
	adc a,a			;a38a
	rst 18h			;a38b
	and (hl)		;a38c
	or 0f6h			;a38d
	defb 0fdh,08fh,0efh ;illegal sequence	;a38f
	adc a,a			;a392
	inc bc			;a393
	rst 18h			;a394
	adc a,h			;a395
	adc a,a			;a396
	rst 28h			;a397
	adc a,a			;a398
	defb 0fdh,0fah,0fah ;illegal sequence	;a399
	rst 18h			;a39c
	rst 18h			;a39d
	adc a,a			;a39e
	rst 28h			;a39f
	adc a,a			;a3a0
	defb 0fdh,005h,0fah ;illegal sequence	;a3a1
	add a,l			;a3a4
	defb 0fdh,08fh,0efh ;illegal sequence	;a3a5
	adc a,a			;a3a8
	rst 18h			;a3a9
	inc bc			;a3aa
	jp m,0fd85h		;a3ab
	adc a,a			;a3ae
	rst 28h			;a3af
	adc a,a			;a3b0
	rst 18h			;a3b1
	nop			;a3b2
	ex af,af'		;a3b3
	rst 38h			;a3b4
	nop			;a3b5
	ex af,af'		;a3b6
	ret p			;a3b7
	nop			;a3b8
	inc bc			;a3b9
	rst 38h			;a3ba
	add a,c			;a3bb
	cp 007h			;a3bc
	rst 38h			;a3be
	add a,c			;a3bf
	defb 0fdh,007h,0ffh ;illegal sequence	;a3c0
	add a,c			;a3c3
	ei			;a3c4
	rlca			;a3c5
	rst 38h			;a3c6
	add a,c			;a3c7
	rst 30h			;a3c8
	rlca			;a3c9
	rst 38h			;a3ca
	add a,c			;a3cb
	rst 28h			;a3cc
	rlca			;a3cd
	rst 38h			;a3ce
	add a,c			;a3cf
	rst 18h			;a3d0
	rlca			;a3d1
	rst 38h			;a3d2
	add a,c			;a3d3
	cp a			;a3d4
	rlca			;a3d5
	rst 38h			;a3d6
	add a,c			;a3d7
	ld a,a			;a3d8
	inc b			;a3d9
	rst 38h			;a3da
	nop			;a3db
	ld b,b			;a3dc
	ret m			;a3dd
	nop			;a3de
	ex af,af'		;a3df
	nop			;a3e0
	dec b			;a3e1
	rst 38h			;a3e2
	in a,(0feh)		;a3e3
	adc a,(hl)		;a3e5
	add a,(hl)		;a3e6
	rst 38h			;a3e7
	rst 38h			;a3e8
	ld b,e			;a3e9
	ld b,e			;a3ea
	ld h,c			;a3eb
	ld b,b			;a3ec
	ld b,b			;a3ed
	ld h,b			;a3ee
	rst 38h			;a3ef
	rst 38h			;a3f0
	cp 086h			;a3f1
	inc bc			;a3f3
	inc bc			;a3f4
	ld bc,0fffch		;a3f5
	call m,0c0f0h		;a3f8
	ld a,a			;a3fb
	rst 38h			;a3fc
	rst 38h			;a3fd
	call m,0f801h		;a3fe
	cp 0fch			;a401
	pop af			;a403
	jp 0f80fh		;a404
	ret p			;a407
	call m,0c1c7h		;a408
	ld b,b			;a40b
	ld b,b			;a40c
	ld h,b			;a40d
	pop af			;a40e
	add a,b			;a40f
	jp 0fcffh		;a410
	ret p			;a413
	ret nz			;a414
	add a,b			;a415
	cp 0ffh			;a416
	jp 0fc01h		;a418
	ret p			;a41b
	jp 0f01fh		;a41c
	pop bc			;a41f
	pop bc			;a420
	nop			;a421
	cp 0f8h			;a422
	add a,e			;a424
	ld a,a			;a425
	nop			;a426
	ret nz			;a427
	inc bc			;a428
	rrca			;a429
	inc a			;a42a
	ret p			;a42b
	ret nz			;a42c
	add a,b			;a42d
	cp 0f1h			;a42e
	rst 0			;a430
	ld a,h			;a431
	nop			;a432
	add a,b			;a433
	pop bc			;a434
	rst 38h			;a435
	rst 38h			;a436
	add a,e			;a437
	add a,c			;a438
	add a,c			;a439
	jp 07f47h		;a43a
	add a,a			;a43d
	add a,a			;a43e
	nop			;a43f
	dec c			;a440
	ld sp,hl		;a441
	ld b,0f5h		;a442
	ld (bc),a		;a444
	ld e,l			;a445
	rlca			;a446
	push af			;a447
	inc bc			;a448
	defb 0fdh,081h,0d8h ;illegal sequence	;a449
	inc b			;a44c
	defb 0fdh,003h,0d5h ;illegal sequence	;a44d
	add a,d			;a450
	ret c			;a451
	ret m			;a452
	ld b,0d8h		;a453
	add a,(hl)		;a455
	push de			;a456
	push af			;a457
	push af			;a458
	ret m			;a459
	defb 0fdh,0fdh,003h ;illegal sequence	;a45a
	ld e,l			;a45d
	inc bc			;a45e
	push af			;a45f
	inc b			;a460
	defb 0fdh,081h,0d8h ;illegal sequence	;a461
	inc bc			;a464
	defb 0fdh,004h,0d8h ;illegal sequence	;a465
	add a,h			;a468
	push de			;a469
	push af			;a46a
	ld e,l			;a46b
	ld e,l			;a46c
	inc bc			;a46d
	ret c			;a46e
	inc bc			;a46f
	push de			;a470
	inc bc			;a471
	push af			;a472
	add a,e			;a473
	ret m			;a474
	defb 0fdh,0fdh,003h ;illegal sequence	;a475
	ret c			;a478
	ld (bc),a		;a479
	push de			;a47a
	ld b,0f5h		;a47b
	ld (bc),a		;a47d
	defb 0fdh,003h,0f5h ;illegal sequence	;a47e
	add a,c			;a481
	ld e,l			;a482
	nop			;a483
	rlca			;a484
	ld bc,0ff0bh		;a485
	add a,e			;a488
	adc a,a			;a489
	add a,c			;a48a
	or c			;a48b
	inc bc			;a48c
	cp a			;a48d
	add a,h			;a48e
	rrca			;a48f
	add a,c			;a490
	or b			;a491
	cp (hl)			;a492
	inc bc			;a493
	cp a			;a494
	add a,c			;a495
	rst 38h			;a496
	rlca			;a497
	add a,b			;a498
	add a,h			;a499
	rst 38h			;a49a
	inc bc			;a49b
	rst 38h			;a49c
	rst 38h			;a49d
	inc b			;a49e
	ret p			;a49f
	add a,(hl)		;a4a0
	nop			;a4a1
	ld (hl),b		;a4a2
	ld (hl),b		;a4a3
	ret m			;a4a4
	add a,b			;a4a5
	ret p			;a4a6
	inc b			;a4a7
	nop			;a4a8
	add a,c			;a4a9
	rst 38h			;a4aa
	ld b,080h		;a4ab
	add a,c			;a4ad
	rst 38h			;a4ae
	rlca			;a4af
	ld bc,0f802h		;a4b0
	add a,c			;a4b3
	rst 38h			;a4b4
	dec b			;a4b5
	ret p			;a4b6
	add a,e			;a4b7
	ret m			;a4b8
	add a,b			;a4b9
	ret p			;a4ba
	inc bc			;a4bb
	nop			;a4bc
	ld (bc),a		;a4bd
la4beh:
	ret p			;a4be
	add a,c			;a4bf
	nop			;a4c0
	inc bc			;a4c1
	add a,c			;a4c2
	ld (bc),a		;a4c3
	rst 38h			;a4c4
	add a,c			;a4c5
	add a,c			;a4c6
	inc bc			;a4c7
	rst 38h			;a4c8
	ld b,080h		;a4c9
	nop			;a4cb
	jr nz,la4beh		;a4cc
	rlca			;a4ce
	djnz la4d5h		;a4cf
	ret p			;a4d1
	add a,c			;a4d2
	djnz la4d9h		;a4d3
la4d5h:
	rrca			;a4d5
	add a,h			;a4d6
	djnz la4e8h		;a4d7
la4d9h:
	jp p,004f2h		;a4d9
	ld hl,01f02h		;a4dc
	ld b,010h		;a4df
	ld (bc),a		;a4e1
	pop af			;a4e2
	ld b,0f0h		;a4e3
	add a,h			;a4e5
	pop af			;a4e6
	ret p			;a4e7
la4e8h:
	ret p			;a4e8
	ld hl,01003h		;a4e9
	add a,e			;a4ec
	rrca			;a4ed
	jp p,004f2h		;a4ee
	ld hl,01084h		;a4f1
	rrca			;a4f4
	rrca			;a4f5
	pop af			;a4f6
	inc b			;a4f7
	ret p			;a4f8
	inc bc			;a4f9
	pop af			;a4fa
	rlca			;a4fb
	rrca			;a4fc
	nop			;a4fd
	add a,c			;a4fe
	nop			;a4ff
	ld c,07fh		;a500
	dec b			;a502
	rst 38h			;a503
	add a,c			;a504
	rla			;a505
	ld b,0ffh		;a506
	add a,c			;a508
	add a,c			;a509
	ex af,af'		;a50a
	rst 38h			;a50b
	add a,c			;a50c
	add a,c			;a50d
	inc b			;a50e
	rst 38h			;a50f
	add a,c			;a510
	ld bc,0ff06h		;a511
	add a,c			;a514
	nop			;a515
	add hl,bc		;a516
	rst 38h			;a517
	add a,d			;a518
	nop			;a519
	ld bc,0ff05h		;a51a
	add a,c			;a51d
	add a,c			;a51e
	inc b			;a51f
	rst 38h			;a520
	add a,h			;a521
	add a,c			;a522
	rst 38h			;a523
	rst 38h			;a524
	add a,c			;a525
	rlca			;a526
	rst 38h			;a527
	add a,c			;a528
	nop			;a529
	ld b,07fh		;a52a
	add a,c			;a52c
	ld bc,0ff07h		;a52d
	add a,l			;a530
	inc bc			;a531
	rst 38h			;a532
	rst 38h			;a533
	add a,b			;a534
	nop			;a535
	inc bc			;a536
la537h:
	ld a,a			;a537
	adc a,b			;a538
	inc bc			;a539
	rst 38h			;a53a
	call m,0fc80h		;a53b
	add a,b			;a53e
	nop			;a53f
	nop			;a540
	inc b			;a541
	inc bc			;a542
la543h:
	dec b			;a543
	rst 38h			;a544
	add a,e			;a545
	ret po			;a546
	nop			;a547
	ret po			;a548
	inc bc			;a549
	nop			;a54a
	add a,d			;a54b
	rra			;a54c
	rst 38h			;a54d
	inc b			;a54e
	add a,b			;a54f
	inc b			;a550
	nop			;a551
	inc bc			;a552
	ld a,(hl)		;a553
	inc bc			;a554
	nop			;a555
	add a,c			;a556
	inc a			;a557
	inc b			;a558
	ret pe			;a559
	ld (bc),a		;a55a
	nop			;a55b
	add a,e			;a55c
	cp 000h			;a55d
	nop			;a55f
	dec b			;a560
	add a,c			;a561
	add a,a			;a562
	rst 38h			;a563
	jp 081ffh		;a564
	add a,c			;a567
	rst 38h			;a568
	rst 38h			;a569
	inc bc			;a56a
	add a,c			;a56b
la56ch:
	ld (bc),a		;a56c
	ret pe			;a56d
	inc b			;a56e
	inc bc			;a56f
	ld (bc),a		;a570
	rst 38h			;a571
	inc bc			;a572
	rla			;a573
	ld (bc),a		;a574
	nop			;a575
	dec b			;a576
	ret pe			;a577
	ld (bc),a		;a578
	ex de,hl		;a579
	ld (bc),a		;a57a
	dec hl			;a57b
	add a,(hl)		;a57c
	ld hl,(03f28h)		;a57d
	inc a			;a580
	inc a			;a581
	ccf			;a582
	inc bc			;a583
	rla			;a584
	add a,l			;a585
	nop			;a586
	ret pe			;a587
	ret pe			;a588
	nop			;a589
	nop			;a58a
	inc b			;a58b
	ret pe			;a58c
	adc a,b			;a58d
	call m,00707h		;a58e
	rst 38h			;a591
	rla			;a592
	rla			;a593
	rst 38h			;a594
	rst 38h			;a595
	dec b			;a596
	ret pe			;a597
	add a,h			;a598
	nop			;a599
	ret p			;a59a
	ret p			;a59b
	rst 38h			;a59c
	inc b			;a59d
	rla			;a59e
	add a,h			;a59f
	rst 38h			;a5a0
	add a,b			;a5a1
	add a,b			;a5a2
	rst 38h			;a5a3
	inc bc			;a5a4
	rla			;a5a5
	add a,h			;a5a6
	rst 38h			;a5a7
	ret nz			;a5a8
	ret nz			;a5a9
	rst 38h			;a5aa
	nop			;a5ab
	add a,c			;a5ac
	sub b			;a5ad
	ld l,c			;a5ae
	ret p			;a5af
	ld (bc),a		;a5b0
	pop af			;a5b1
	inc b			;a5b2
	djnz la537h		;a5b3
	jp p,007f1h		;a5b5
	ret p			;a5b8
	ld (bc),a		;a5b9
	pop af			;a5ba
	inc b			;a5bb
	djnz la543h		;a5bc
	ret p			;a5be
	ld hl,01021h		;a5bf
	djnz la5cah		;a5c2
	rra			;a5c4
	ld b,00fh		;a5c5
	add a,c			;a5c7
	djnz la5d2h		;a5c8
la5cah:
	rrca			;a5ca
	add a,c			;a5cb
	jp p,0f103h		;a5cc
	ld (bc),a		;a5cf
	ret p			;a5d0
	inc bc			;a5d1
la5d2h:
	pop af			;a5d2
	inc bc			;a5d3
	ret p			;a5d4
	add a,(hl)		;a5d5
	pop af			;a5d6
	ret p			;a5d7
	ret p			;a5d8
	djnz la5eah		;a5d9
	pop af			;a5db
	dec b			;a5dc
	ret p			;a5dd
	ld (bc),a		;a5de
	djnz la5e3h		;a5df
	rrca			;a5e1
	inc b			;a5e2
la5e3h:
	ld bc,02181h		;a5e3
	ld a,(bc)		;a5e6
	djnz la56ch		;a5e7
	ret p			;a5e9
la5eah:
	djnz la5fch		;a5ea
	ld b,00fh		;a5ec
	add a,c			;a5ee
	djnz $+5		;a5ef
	rrca			;a5f1
	add a,c			;a5f2
	djnz la5fch		;a5f3
	ret p			;a5f5
	add a,c			;a5f6
	ld hl,01003h		;a5f7
	ld (bc),a		;a5fa
	rrca			;a5fb
la5fch:
	add a,d			;a5fc
	ld hl,00410h		;a5fd
	ld hl,01084h		;a600
	pop af			;a603
	pop af			;a604
	ret p			;a605
	rlca			;a606
	ld hl,0f981h		;a607
	nop			;a60a
	adc a,b			;a60b
	ld a,h			;a60c
	ld b,b			;a60d
	dec e			;a60e
	dec a			;a60f
	ld a,h			;a610
	ld b,b			;a611
	ld a,l			;a612
	ld a,l			;a613
	ld b,06fh		;a614
	adc a,b			;a616
	ld l,b			;a617
	ld h,b			;a618
	ld a,(hl)		;a619
	ld (hl),b		;a61a
	ld bc,07e0fh		;a61b
	ld (hl),b		;a61e
	inc bc			;a61f
	ld a,a			;a620
	adc a,d			;a621
	ld a,h			;a622
	ld h,b			;a623
	inc bc			;a624
	rra			;a625
	ld a,h			;a626
	ld h,b			;a627
	ld a,a			;a628
	ld a,h			;a629
	ld (hl),b		;a62a
	ld b,b			;a62b
	dec b			;a62c
	ld a,a			;a62d
	add a,e			;a62e
	ld a,h			;a62f
	ld (hl),b		;a630
	ld b,b			;a631
	inc bc			;a632
	ld a,a			;a633
	add a,07eh		;a634
	ld a,b			;a636
	ld l,a			;a637
	ld l,(hl)		;a638
	ld l,b			;a639
	ld b,b			;a63a
	ei			;a63b
	ld a,h			;a63c
	or b			;a63d
	ret nz			;a63e
	ld h,b			;a63f
	ld a,h			;a640
	jr nc,la643h		;a641
la643h:
	inc bc			;a643
	rrca			;a644
	ccf			;a645
	ld a,h			;a646
	ld (hl),b		;a647
	ld b,b			;a648
	ld a,h			;a649
	ld (hl),b		;a64a
	ld b,b			;a64b
	inc bc			;a64c
	rrca			;a64d
	ccf			;a64e
	ld b,b			;a64f
	inc bc			;a650
	rrca			;a651
	cpl			;a652
	ld l,(hl)		;a653
	ld c,b			;a654
	ld l,a			;a655
	ld l,a			;a656
	rlca			;a657
	rst 28h			;a658
	ret pe			;a659
	ret nz			;a65a
	rst 28h			;a65b
	rst 28h			;a65c
	ret pe			;a65d
	add a,b			;a65e
	rlca			;a65f
	rra			;a660
	ld a,b			;a661
	ld h,b			;a662
	ld a,a			;a663
	ld a,a			;a664
	ld a,b			;a665
	ld h,b			;a666
	inc bc			;a667
	rrca			;a668
	ccf			;a669
	ld a,h			;a66a
	ld (hl),b		;a66b
	ld b,b			;a66c
	ld a,h			;a66d
	ld (hl),b		;a66e
	rlca			;a66f
	ccf			;a670
	ret m			;a671
	ret nz			;a672
	nop			;a673
	nop			;a674
	ret m			;a675
	ret nz			;a676
	call m,0f8f8h		;a677
	nop			;a67a
	inc bc			;a67b
	ret pe			;a67c
	ld b,0ffh		;a67d
	add a,h			;a67f
	cp 0f8h			;a680
	ret po			;a682
	rst 38h			;a683
	rlca			;a684
	add a,l			;a685
	ld b,009h		;a686
	add a,d			;a688
	jp (hl)			;a689
	ld sp,hl		;a68a
	dec b			;a68b
	add hl,bc		;a68c
	sub e			;a68d
	ret			;a68e
	ld sp,hl		;a68f
	defb 0fdh,001h,0c1h ;illegal sequence	;a690
	ld sp,hl		;a693
	ccf			;a694
	rlca			;a695
	ld a,006h		;a696
	ld bc,0c101h		;a698
	pop af			;a69b
	defb 0fdh,03fh,00fh ;illegal sequence	;a69c
	inc bc			;a69f
	ld a,007h		;a6a0
	halt			;a6a2
	add a,c			;a6a3
	nop			;a6a4
	inc b			;a6a5
	add a,b			;a6a6
	add a,d			;a6a7
	rst 38h			;a6a8
	nop			;a6a9
	ld de,00680h		;a6aa
	nop			;a6ad
	sbc a,a			;a6ae
	ccf			;a6af
	rrca			;a6b0
	inc bc			;a6b1
	defb 0fdh,03fh,00fh ;illegal sequence	;a6b2
	dec bc			;a6b5
	halt			;a6b6
	ld (de),a		;a6b7
	add hl,bc		;a6b8
	add hl,bc		;a6b9
	ld c,002h		;a6ba
	pop bc			;a6bc
	pop af			;a6bd
	defb 0fdh,03fh,00fh ;illegal sequence	;a6be
	inc bc			;a6c1
	ccf			;a6c2
	rrca			;a6c3
	inc bc			;a6c4
	ld a,00eh		;a6c5
	ld (bc),a		;a6c7
	pop bc			;a6c8
	pop af			;a6c9
	ld a,(hl)		;a6ca
	ld bc,0ff01h		;a6cb
	inc b			;a6ce
	halt			;a6cf
	inc b			;a6d0
	or l			;a6d1
	add a,h			;a6d2
	dec (hl)		;a6d3
	ld bc,07e7eh		;a6d4
	inc bc			;a6d7
	ld (hl),087h		;a6d8
	ld b,030h		;a6da
	jr nc,la714h		;a6dc
	nop			;a6de
	add a,b			;a6df
	rst 38h			;a6e0
	inc b			;a6e1
	nop			;a6e2
	add a,l			;a6e3
	rst 38h			;a6e4
	rra			;a6e5
	rrca			;a6e6
	rrca			;a6e7
	rst 38h			;a6e8
	inc b			;a6e9
	ret m			;a6ea
	dec b			;a6eb
	nop			;a6ec
	sbc a,a			;a6ed
	ld a,a			;a6ee
	rst 38h			;a6ef
	ccf			;a6f0
	rst 28h			;a6f1
	rra			;a6f2
	rlca			;a6f3
	ld e,006h		;a6f4
	ld bc,0e101h		;a6f6
	ld sp,hl		;a6f9
	add a,c			;a6fa
	pop af			;a6fb
	ld a,a			;a6fc
	rrca			;a6fd
	ld a,(hl)		;a6fe
	ld c,001h		;a6ff
	ld bc,0fdc1h		;a701
	ld b,a			;a704
	ld b,e			;a705
	ld a,002h		;a706
	ld b,c			;a708
	ld b,c			;a709
	call m,0fffch		;a70a
	dec b			;a70d
	ret p			;a70e
	add a,c			;a70f
	nop			;a710
	inc bc			;a711
	add a,c			;a712
	add a,c			;a713
la714h:
	rst 38h			;a714
	inc bc			;a715
	add a,c			;a716
	add a,e			;a717
	rst 38h			;a718
	pop bc			;a719
	rst 38h			;a71a
	ex af,af'		;a71b
	add a,c			;a71c
	add a,c			;a71d
	rst 38h			;a71e
	inc b			;a71f
	add a,c			;a720
	rlca			;a721
	cp 081h			;a722
	nop			;a724
	rlca			;a725
	ld a,(hl)		;a726
	ld (bc),a		;a727
	nop			;a728
	ld (bc),a		;a729
	rst 38h			;a72a
	dec c			;a72b
	add a,b			;a72c
	inc b			;a72d
	call z,00003h		;a72e
	djnz la7b2h		;a731
	add a,c			;a733
	rst 38h			;a734
	dec c			;a735
	add a,b			;a736
	ld (bc),a		;a737
	rst 38h			;a738
	sbc a,h			;a739
	ld h,(hl)		;a73a
	rra			;a73b
	inc bc			;a73c
	rra			;a73d
	inc bc			;a73e
	nop			;a73f
	nop			;a740
	ret po			;a741
la742h:
	call m,0081fh		;a742
	rla			;a745
	inc bc			;a746
	ex af,af'		;a747
	ex af,af'		;a748
	ret pe			;a749
	cp 0ffh			;a74a
	ccf			;a74c
	rrca			;a74d
	dec bc			;a74e
	halt			;a74f
	ld (de),a		;a750
	add hl,bc		;a751
	add hl,bc		;a752
	ld a,00eh		;a753
	ld (bc),a		;a755
	dec b			;a756
	ld bc,00081h		;a757
	inc b			;a75a
	ret m			;a75b
	add a,e			;a75c
	rst 38h			;a75d
	call m,005fch		;a75e
	halt			;a761
	add a,(hl)		;a762
	add hl,bc		;a763
	ld (hl),a		;a764
	ld bc,0c0c0h		;a765
	nop			;a768
	dec b			;a769
	ret p			;a76a
	rlca			;a76b
	ret pe			;a76c
	dec b			;a76d
	nop			;a76e
	sbc a,e			;a76f
	cp 0ffh			;a770
	call m,03afch		;a772
	sbc a,d			;a775
	rst 8			;a776
	ret p			;a777
	ret p			;a778
	sub b			;a779
	ret p			;a77a
la77bh:
	rra			;a77b
	ld bc,00703h		;a77c
	rrca			;a77f
	jr nc,la742h		;a780
	rst 38h			;a782
	nop			;a783
	sub b			;a784
	sub b			;a785
	sub e			;a786
	sub e			;a787
	nop			;a788
	rla			;a789
	rla			;a78a
	inc bc			;a78b
	rst 38h			;a78c
	sub (hl)		;a78d
	rlca			;a78e
	rst 30h			;a78f
	rst 38h			;a790
	ret pe			;a791
	ret pe			;a792
	nop			;a793
	nop			;a794
	ld (hl),a		;a795
	nop			;a796
	ld (hl),a		;a797
	nop			;a798
	jp nc,08780h		;a799
	ld bc,07d01h		;a79c
	ld d,l			;a79f
	ld d,l			;a7a0
	rst 38h			;a7a1
	rla			;a7a2
	rla			;a7a3
	inc bc			;a7a4
	pop de			;a7a5
	xor (hl)		;a7a6
	rst 38h			;a7a7
	ld l,02eh		;a7a8
	nop			;a7aa
	nop			;a7ab
	ld l,d			;a7ac
	nop			;a7ad
	add a,c			;a7ae
	add a,c			;a7af
	nop			;a7b0
	add a,c			;a7b1
la7b2h:
	rst 38h			;a7b2
	ld a,(hl)		;a7b3
	rst 18h			;a7b4
	djnz la7c7h		;a7b5
	ld hl,0402fh		;a7b7
	add a,b			;a7ba
	add a,b			;a7bb
	ei			;a7bc
	inc c			;a7bd
	inc c			;a7be
	add a,(hl)		;a7bf
	or 003h			;a7c0
	ld bc,08301h		;a7c2
	add a,b			;a7c5
	ld b,b			;a7c6
la7c7h:
	jr nz,$-30		;a7c7
	rst 28h			;a7c9
	ex af,af'		;a7ca
	ret p			;a7cb
	ld a,(hl)		;a7cc
	jp 0c318h		;a7cd
	jp 08181h		;a7d0
	ld h,(hl)		;a7d3
	ld h,(hl)		;a7d4
	dec b			;a7d5
	in a,(087h)		;a7d6
	jr la858h		;a7d8
	rlca			;a7da
	inc b			;a7db
	inc b			;a7dc
	cp 002h			;a7dd
	inc bc			;a7df
	cp 084h			;a7e0
	ret po			;a7e2
	jr nz,la805h		;a7e3
	ld b,b			;a7e5
	inc b			;a7e6
	ld a,a			;a7e7
	ld (bc),a		;a7e8
	ret nz			;a7e9
	add a,c			;a7ea
	rst 38h			;a7eb
	inc bc			;a7ec
	ret nz			;a7ed
	sub b			;a7ee
	ret po			;a7ef
	rst 38h			;a7f0
	add a,c			;a7f1
	add a,c			;a7f2
	cp (hl)			;a7f3
	add a,b			;a7f4
	add a,b			;a7f5
	jr nz,la837h		;a7f6
	jr nz,la77bh		;a7f8
	cp 0d7h			;a7fa
	rst 10h			;a7fc
	cp a			;a7fd
	rst 38h			;a7fe
	inc bc			;a7ff
	nop			;a800
	add a,a			;a801
	cp 000h			;a802
	nop			;a804
la805h:
	cp 0feh			;a805
	nop			;a807
	nop			;a808
	inc b			;a809
	jp m,0008ch		;a80a
	sub c			;a80d
	rst 38h			;a80e
	ld bc,0d5ffh		;a80f
	push de			;a812
	ld d,l			;a813
	ld d,l			;a814
	ld a,l			;a815
	jp 005c3h		;a816
	cp 002h			;a819
	ret m			;a81b
	ld (bc),a		;a81c
	rst 38h			;a81d
	rlca			;a81e
	sub l			;a81f
	rlca			;a820
	xor c			;a821
	ld (bc),a		;a822
	rst 38h			;a823
	add a,h			;a824
	ret z			;a825
	call po,0e4c8h		;a826
	inc bc			;a829
	pop de			;a82a
	add a,e			;a82b
	jp 07e42h		;a82c
	inc bc			;a82f
	adc a,c			;a830
	add a,h			;a831
	rst 38h			;a832
	xor c			;a833
	add a,c			;a834
	add a,c			;a835
	inc bc			;a836
la837h:
	add a,d			;a837
	add a,e			;a838
	add a,h			;a839
	call m,00704h		;a83a
	add a,l			;a83d
	ld (bc),a		;a83e
	rst 38h			;a83f
	ld (bc),a		;a840
	push hl			;a841
	add a,l			;a842
	ld (hl),l		;a843
	dec e			;a844
	dec c			;a845
	dec b			;a846
	dec b			;a847
	rlca			;a848
	push de			;a849
	sub e			;a84a
	rst 38h			;a84b
	cp 089h			;a84c
	adc a,c			;a84e
	rst 38h			;a84f
	add a,a			;a850
	defb 0fdh,085h ;add a,iyl	;a851
	rst 38h			;a853
	ld a,h			;a854
	rst 38h			;a855
	rrca			;a856
	rst 20h			;a857
la858h:
	sub e			;a858
	ret			;a859
	push hl			;a85a
	push af			;a85b
	sub l			;a85c
	push af			;a85d
	inc bc			;a85e
	sub l			;a85f
	sbc a,e			;a860
	push af			;a861
	sub l			;a862
	rst 38h			;a863
	sub c			;a864
	res 2,c			;a865
	res 2,c			;a867
	set 5,b			;a869
	ret pe			;a86b
	pop bc			;a86c
	ld bc,00603h		;a86d
	rlca			;a870
	di			;a871
	di			;a872
	ret p			;a873
	ld a,a			;a874
	ccf			;a875
	rra			;a876
	ret p			;a877
	call m,0031fh		;a878
	rst 38h			;a87b
	inc b			;a87c
	ld bc,0ff02h		;a87d
	ld (bc),a		;a880
	cp 002h			;a881
	rst 38h			;a883
	ld (bc),a		;a884
	nop			;a885
	inc bc			;a886
	ld l,e			;a887
	adc a,b			;a888
	nop			;a889
	ld d,h			;a88a
	add a,e			;a88b
	add hl,sp		;a88c
	rst 0			;a88d
	cp e			;a88e
	rst 0			;a88f
	rst 0			;a890
	inc bc			;a891
	rst 38h			;a892
	add a,(hl)		;a893
	cp 0f8h			;a894
	ret nc			;a896
	ld l,(hl)		;a897
	ld c,b			;a898
	ld l,a			;a899
	inc b			;a89a
	rla			;a89b
	ld (bc),a		;a89c
	ld l,08eh		;a89d
	nop			;a89f
	pop de			;a8a0
	ret p			;a8a1
	ret p			;a8a2
	ret pe			;a8a3
	ret pe			;a8a4
	ret po			;a8a5
	call m,0e8e8h		;a8a6
	nop			;a8a9
	ld d,h			;a8aa
	ld d,b			;a8ab
	nop			;a8ac
	inc bc			;a8ad
	ret pe			;a8ae
	add a,h			;a8af
	jr z,$+1		;a8b0
	nop			;a8b2
	nop			;a8b3
	inc b			;a8b4
	sub 083h		;a8b5
	nop			;a8b7
	add a,b			;a8b8
	rst 38h			;a8b9
	inc b			;a8ba
	nop			;a8bb
	inc bc			;a8bc
	rst 38h			;a8bd
	add a,d			;a8be
	rst 0			;a8bf
	call m,0c404h		;a8c0
	add a,e			;a8c3
	rst 0			;a8c4
	ccf			;a8c5
	rst 38h			;a8c6
	dec b			;a8c7
	ret m			;a8c8
	ld (bc),a		;a8c9
la8cah:
	nop			;a8ca
	add a,d			;a8cb
	jr c,la8cah		;a8cc
la8ceh:
	inc b			;a8ce
	call nz,0ff02h		;a8cf
	inc b			;a8d2
	add a,c			;a8d3
	add a,e			;a8d4
	rst 38h			;a8d5
	jp 006c3h		;a8d6
	inc bc			;a8d9
	add a,d			;a8da
	rst 38h			;a8db
	rra			;a8dc
	dec b			;a8dd
	ret po			;a8de
	add a,c			;a8df
	rst 38h			;a8e0
	inc bc			;a8e1
	ret m			;a8e2
	sub b			;a8e3
	djnz la8ceh		;a8e4
	ret nz			;a8e6
	djnz la8f9h		;a8e7
	rla			;a8e9
	ld a,a			;a8ea
	add a,e			;a8eb
	cp a			;a8ec
	jp po,07cc2h		;a8ed
	ld b,b			;a8f0
	add a,d			;a8f1
	add a,d			;a8f2
	ld a,a			;a8f3
	inc bc			;a8f4
	cp (hl)			;a8f5
	inc bc			;a8f6
	ld a,002h		;a8f7
la8f9h:
	nop			;a8f9
	inc bc			;a8fa
	or 002h			;a8fb
	nop			;a8fd
	ld (bc),a		;a8fe
	ret nz			;a8ff
	ld b,0e8h		;a900
	add a,e			;a902
	add a,b			;a903
	rst 38h			;a904
	rst 38h			;a905
	inc b			;a906
	add a,c			;a907
	add a,e			;a908
	rst 38h			;a909
	add a,c			;a90a
	add a,c			;a90b
	rlca			;a90c
	sub c			;a90d
	ld (bc),a		;a90e
	rst 38h			;a90f
	ld (bc),a		;a910
	add a,c			;a911
	add a,c			;a912
	cp l			;a913
	inc bc			;a914
	jp lbd82h		;a915
	jp 07e04h		;a918
	inc bc			;a91b
	inc a			;a91c
	add a,c			;a91d
	rst 38h			;a91e
	inc bc			;a91f
	nop			;a920
	adc a,d			;a921
	ld (hl),e		;a922
	nop			;a923
	nop			;a924
	cp 0ffh			;a925
	sub c			;a927
	rst 38h			;a928
	ld a,a			;a929
	ld a,a			;a92a
	ccf			;a92b
	inc bc			;a92c
	nop			;a92d
	sub a			;a92e
	ld h,(hl)		;a92f
	sbc a,e			;a930
	call m,0e0f0h		;a931
	ret nz			;a934
	add a,b			;a935
	ld a,(bc)		;a936
	ld (hl),l		;a937
	ld (hl),l		;a938
	nop			;a939
	ld h,e			;a93a
	rst 38h			;a93b
	rst 38h			;a93c
	ld a,a			;a93d
	rst 38h			;a93e
	sbc a,c			;a93f
	ld sp,hl		;a940
	ret nz			;a941
	ret p			;a942
	ret m			;a943
	call m,00d01h		;a944
	add a,b			;a947
	add a,h			;a948
	rst 38h			;a949
	adc a,b			;a94a
	adc a,b			;a94b
	rst 38h			;a94c
	dec bc			;a94d
	ld a,(hl)		;a94e
	ld (bc),a		;a94f
	nop			;a950
	ld (bc),a		;a951
	xor 005h		;a952
	add a,b			;a954
	inc bc			;a955
	add a,c			;a956
	add a,e			;a957
	nop			;a958
	ld a,000h		;a959
	dec b			;a95b
	ld a,(hl)		;a95c
	dec b			;a95d
	cp 084h			;a95e
	nop			;a960
	ld l,(hl)		;a961
	ld l,(hl)		;a962
	rst 38h			;a963
	inc b			;a964
	rla			;a965
	add a,e			;a966
	rst 38h			;a967
	add a,b			;a968
	add a,b			;a969
	ld b,0e8h		;a96a
	ld (bc),a		;a96c
	ret p			;a96d
	add a,d			;a96e
	ld l,(hl)		;a96f
	ld l,c			;a970
	inc b			;a971
	ld l,b			;a972
	add a,d			;a973
	add a,b			;a974
	rst 38h			;a975
	ex af,af'		;a976
	ret pe			;a977
	ld (bc),a		;a978
	ld a,a			;a979
	add a,c			;a97a
	nop			;a97b
	dec b			;a97c
	ret po			;a97d
	ld (bc),a		;a97e
	ccf			;a97f
	add a,c			;a980
	jr z,la987h		;a981
	ret pe			;a983
	add a,c			;a984
	nop			;a985
	inc bc			;a986
la987h:
	ret pe			;a987
	add a,c			;a988
	nop			;a989
	inc bc			;a98a
	ret pe			;a98b
	add a,c			;a98c
	jr z,la992h		;a98d
	ret pe			;a98f
	add a,c			;a990
	nop			;a991
la992h:
	inc b			;a992
	ret pe			;a993
	add a,c			;a994
	nop			;a995
	ld c,07bh		;a996
	ld (bc),a		;a998
	nop			;a999
	ld c,0deh		;a99a
	inc bc			;a99c
	nop			;a99d
	ld (bc),a		;a99e
	rst 38h			;a99f
	add a,c			;a9a0
	nop			;a9a1
	ld b,080h		;a9a2
	ld (bc),a		;a9a4
	rst 38h			;a9a5
	ld (bc),a		;a9a6
	nop			;a9a7
	inc bc			;a9a8
	rst 38h			;a9a9
	ld (bc),a		;a9aa
	nop			;a9ab
	add a,c			;a9ac
	rst 38h			;a9ad
	ld b,001h		;a9ae
	ld (bc),a		;a9b0
	rst 38h			;a9b1
	ld (bc),a		;a9b2
	nop			;a9b3
	add a,h			;a9b4
	rst 38h			;a9b5
	ld bc,0ff01h		;a9b6
	dec b			;a9b9
	ret p			;a9ba
	add a,d			;a9bb
	rst 0			;a9bc
	rst 38h			;a9bd
	dec b			;a9be
	ret m			;a9bf
	add a,h			;a9c0
	nop			;a9c1
	ret m			;a9c2
	ret m			;a9c3
	rst 38h			;a9c4
	dec b			;a9c5
	ret p			;a9c6
	inc bc			;a9c7
	rst 38h			;a9c8
	dec b			;a9c9
	add a,b			;a9ca
	ld (bc),a		;a9cb
	ret pe			;a9cc
	inc b			;a9cd
	call m,00083h		;a9ce
	call m,00500h		;a9d1
	ld a,(hl)		;a9d4
	add a,d			;a9d5
	nop			;a9d6
	inc a			;a9d7
	inc bc			;a9d8
	ld a,(hl)		;a9d9
	add a,c			;a9da
	nop			;a9db
	inc b			;a9dc
	ld a,(hl)		;a9dd
	dec b			;a9de
	ret pe			;a9df
	add a,h			;a9e0
	nop			;a9e1
	ld bc,0f801h		;a9e2
	inc bc			;a9e5
	add a,a			;a9e6
	ex af,af'		;a9e7
	add a,b			;a9e8
	add a,d			;a9e9
	rst 38h			;a9ea
	nop			;a9eb
	ld a,(bc)		;a9ec
	add a,b			;a9ed
	inc bc			;a9ee
	cp 081h			;a9ef
	nop			;a9f1
	inc bc			;a9f2
	cp 081h			;a9f3
	nop			;a9f5
	dec bc			;a9f6
	ret nz			;a9f7
	dec b			;a9f8
	ret po			;a9f9
	rlca			;a9fa
	ld l,(hl)		;a9fb
	add a,c			;a9fc
	ld de,07607h		;a9fd
	add a,c			;aa00
	nop			;aa01
	ex af,af'		;aa02
	in a,(004h)		;aa03
	ld a,h			;aa05
	add a,c			;aa06
	nop			;aa07
	inc bc			;aa08
	ld a,(hl)		;aa09
	add a,c			;aa0a
	nop			;aa0b
	inc bc			;aa0c
	ld a,(hl)		;aa0d
	add a,c			;aa0e
	nop			;aa0f
	inc bc			;aa10
	ld a,(hl)		;aa11
	add a,c			;aa12
	rst 38h			;aa13
	inc bc			;aa14
	rla			;aa15
	add a,c			;aa16
	rst 38h			;aa17
	inc bc			;aa18
	ret nz			;aa19
	ld (bc),a		;aa1a
	ret pe			;aa1b
	ld (bc),a		;aa1c
	ex de,hl		;aa1d
	ld (bc),a		;aa1e
	dec hl			;aa1f
	add a,d			;aa20
laa21h:
	ld hl,(00328h)		;aa21
	rla			;aa24
	add a,d			;aa25
	rst 38h			;aa26
	nop			;aa27
	inc bc			;aa28
	rla			;aa29
laa2ah:
	add a,h			;aa2a
	ccf			;aa2b
	inc a			;aa2c
	inc a			;aa2d
	ret nz			;aa2e
	inc bc			;aa2f
	rla			;aa30
	add a,c			;aa31
	rst 38h			;aa32
	nop			;aa33
	ld (bc),a		;aa34
	jr nz,laa39h		;aa35
	jr nc,$+4		;aa37
laa39h:
	ld (0200ch),a		;aa39
	ld (bc),a		;aa3c
	jr nc,$+4		;aa3d
	ld (02005h),a		;aa3f
	ld (bc),a		;aa42
	jr nc,$+4		;aa43
	ld (02081h),a		;aa45
	inc bc			;aa48
	ld (02005h),a		;aa49
laa4ch:
	inc bc			;aa4c
	ld (02105h),a		;aa4d
	add a,c			;aa50
	jr nz,laa56h		;aa51
	ld hl,01004h		;aa53
laa56h:
	add a,c			;aa56
	ld hl,01003h		;aa57
	inc bc			;aa5a
	jr nc,laa60h		;aa5b
	ld (02003h),a		;aa5d
laa60h:
	inc bc			;aa60
	jr nc,$-125		;aa61
	jr nz,$+5		;aa63
	jr nc,$+4		;aa65
	ld (02002h),a		;aa67
	ld (bc),a		;aa6a
	jr nc,$+4		;aa6b
	ld (02004h),a		;aa6d
	ld (bc),a		;aa70
	jr nc,$+4		;aa71
	ld (02004h),a		;aa73
	inc bc			;aa76
	jr nc,laa7ch		;aa77
	ld (02002h),a		;aa79
laa7ch:
	ld (bc),a		;aa7c
	jr nc,laa83h		;aa7d
	ld (02002h),a		;aa7f
	add a,c			;aa82
laa83h:
	ld (02003h),a		;aa83
	ld (bc),a		;aa86
	ld hl,01081h		;aa87
	dec bc			;aa8a
	di			;aa8b
	add a,c			;aa8c
	jp p,0f103h		;aa8d
	dec d			;aa90
	ret p			;aa91
	ld (bc),a		;aa92
	pop af			;aa93
	ld (bc),a		;aa94
	djnz $+7		;aa95
	ret p			;aa97
	inc bc			;aa98
	pop af			;aa99
	add a,d			;aa9a
	djnz $+34		;aa9b
	rlca			;aa9d
	djnz laa21h		;aa9e
	ld hl,01003h		;aaa0
	ld (bc),a		;aaa3
	pop af			;aaa4
	dec b			;aaa5
	djnz laa2ah		;aaa6
	rrca			;aaa8
	ld hl,01008h		;aaa9
	ex af,af'		;aaac
	rrca			;aaad
	inc bc			;aaae
	pop af			;aaaf
	add a,c			;aab0
	ret p			;aab1
	inc bc			;aab2
	pop af			;aab3
	ld (bc),a		;aab4
	djnz laab9h		;aab5
	ret p			;aab7
	ld (bc),a		;aab8
laab9h:
	djnz laabeh		;aab9
	ret p			;aabb
	ld b,0f1h		;aabc
laabeh:
	inc bc			;aabe
	djnz laac3h		;aabf
	ret p			;aac1
	add a,c			;aac2
laac3h:
	djnz $+5		;aac3
	ret p			;aac5
	ld (bc),a		;aac6
	jr nc,laa4ch		;aac7
	jr nz,$+18		;aac9
	jr nz,$+7		;aacb
	djnz $-123		;aacd
	jr nz,laae1h		;aacf
	jr nz,$+5		;aad1
	djnz laa56h		;aad3
	jr nz,$+5		;aad5
	djnz $-123		;aad7
	ld hl,00202h		;aad9
	inc b			;aadc
	ld bc,0f087h		;aadd
	pop af			;aae0
laae1h:
	ret p			;aae1
	ret p			;aae2
	ld hl,01010h		;aae3
	ld b,00fh		;aae6
	inc bc			;aae8
	push af			;aae9
	add a,l			;aaea
	ld sp,hl		;aaeb
	pop af			;aaec
	pop af			;aaed
	djnz $+18		;aaee
	ld b,0f0h		;aaf0
	ld (bc),a		;aaf2
	pop af			;aaf3
	ld (bc),a		;aaf4
	djnz laafbh		;aaf5
	ret p			;aaf7
	ld (bc),a		;aaf8
	pop af			;aaf9
	ld (bc),a		;aafa
laafbh:
	djnz laaffh		;aafb
	ret p			;aafd
	add a,h			;aafe
laaffh:
	djnz lab10h		;aaff
	rrca			;ab01
	ld hl,01003h		;ab02
	ld (bc),a		;ab05
	rrca			;ab06
	add a,l			;ab07
	jp p,0f0f1h		;ab08
	ret p			;ab0b
	jp p,0f105h		;ab0c
	add a,c			;ab0f
lab10h:
	jp p,0f103h		;ab10
	adc a,d			;ab13
	ret p			;ab14
	pop af			;ab15
	pop af			;ab16
	ret p			;ab17
	ret p			;ab18
	jp p,0f1f1h		;ab19
	ret p			;ab1c
	ld hl,0100fh		;ab1d
	inc b			;ab20
	ld (0210bh),a		;ab21
	add a,e			;ab24
	nop			;ab25
	ld (00331h),a		;ab26
	jr nz,lab2fh		;ab29
	inc hl			;ab2b
	ld b,012h		;ab2c
	add a,c			;ab2e
lab2fh:
	nop			;ab2f
	dec b			;ab30
	ld (de),a		;ab31
	inc bc			;ab32
	ld bc,0f302h		;ab33
	add a,e			;ab36
	jp p,0f1f1h		;ab37
	add hl,bc		;ab3a
	ld bc,0ff84h		;ab3b
	sub h			;ab3e
	pop af			;ab3f
	pop af			;ab40
	inc b			;ab41
	djnz lab46h		;ab42
	ret p			;ab44
	ld (bc),a		;ab45
lab46h:
	pop af			;ab46
	ld (bc),a		;ab47
	djnz $+7		;ab48
	ret p			;ab4a
	inc bc			;ab4b
	pop af			;ab4c
	ld (bc),a		;ab4d
	djnz lab52h		;ab4e
	ret p			;ab50
	inc bc			;ab51
lab52h:
	djnz lab5ah		;ab52
	ret p			;ab54
	add a,(hl)		;ab55
	ld hl,01010h		;ab56
	rrca			;ab59
lab5ah:
	rrca			;ab5a
	ld hl,01006h		;ab5b
	inc bc			;ab5e
	ret p			;ab5f
	add a,h			;ab60
	ld hl,01010h		;ab61
	ld (02103h),a		;ab64
	rlca			;ab67
	djnz lab70h		;ab68
	rrca			;ab6a
	inc bc			;ab6b
	defb 0fdh,004h,0f5h ;illegal sequence	;ab6c
	add a,e			;ab6f
lab70h:
	ret m			;ab70
	defb 0fdh,0fdh,007h ;illegal sequence	;ab71
	push af			;ab74
	add a,c			;ab75
	defb 0fdh,003h,05fh ;illegal sequence	;ab76
	ld (bc),a		;ab79
	rst 18h			;ab7a
	ld (bc),a		;ab7b
	ld e,a			;ab7c
	add a,d			;ab7d
	ret c			;ab7e
	ld e,l			;ab7f
	ld b,0f5h		;ab80
	add a,c			;ab82
	push de			;ab83
	add hl,bc		;ab84
	ld e,a			;ab85
	add a,d			;ab86
	jp p,005fdh		;ab87
	push af			;ab8a
	add a,c			;ab8b
	ret c			;ab8c
	inc bc			;ab8d
	ld e,l			;ab8e
	ld (bc),a		;ab8f
	push af			;ab90
	add a,c			;ab91
	push de			;ab92
	dec b			;ab93
	ld e,a			;ab94
	add a,c			;ab95
	ret m			;ab96
	inc b			;ab97
	adc a,(hl)		;ab98
	add a,e			;ab99
	ret c			;ab9a
	ld sp,hl		;ab9b
	ret c			;ab9c
	inc bc			;ab9d
	ld e,l			;ab9e
	ld (bc),a		;ab9f
	push af			;aba0
	add a,e			;aba1
	push de			;aba2
	ld sp,hl		;aba3
	ret m			;aba4
	inc bc			;aba5
	ld e,l			;aba6
	ld (bc),a		;aba7
	push af			;aba8
	add a,d			;aba9
	push de			;abaa
	ret c			;abab
	inc b			;abac
	defb 0fdh,002h,0d5h ;illegal sequence	;abad
	sub e			;abb0
	push af			;abb1
	defb 0fdh,0f8h,0e8h ;illegal sequence	;abb2
	ret c			;abb5
	ld d,l			;abb6
	ret c			;abb7
	ld d,l			;abb8
	call p,0edf9h		;abb9
	add a,l			;abbc
	push de			;abbd
	rst 18h			;abbe
	ld e,a			;abbf
	ld e,a			;abc0
	defb 0fdh,0f8h,0fdh ;illegal sequence	;abc1
	inc b			;abc4
	push af			;abc5
	add a,h			;abc6
	rra			;abc7
	ccf			;abc8
labc9h:
	ret m			;abc9
	defb 0fdh,003h,0f5h ;illegal sequence	;abca
	adc a,b			;abcd
	dec b			;abce
	ld sp,02121h		;abcf
	djnz labc9h		;abd2
	push af			;abd4
	ld e,l			;abd5
	inc b			;abd6
	push af			;abd7
	add a,h			;abd8
	ld e,b			;abd9
	push de			;abda
	push de			;abdb
	rst 18h			;abdc
	ld b,0f5h		;abdd
	add a,h			;abdf
	nop			;abe0
	ld (01010h),a		;abe1
	inc b			;abe4
	ld e,a			;abe5
	ld (bc),a		;abe6
	jr nc,labebh		;abe7
	djnz labedh		;abe9
labebh:
	ld e,a			;abeb
	add a,(hl)		;abec
labedh:
	adc a,a			;abed
	rst 18h			;abee
	ld e,a			;abef
	ld e,a			;abf0
	call p,003f4h		;abf1
	push af			;abf4
	ld (bc),a		;abf5
	defb 0fdh,002h,0f5h ;illegal sequence	;abf6
	adc a,b			;abf9
	defb 0fdh,0d8h,0fdh ;illegal sequence	;abfa
	ret m			;abfd
	ret m			;abfe
	defb 0fdh,0f5h,0f8h ;illegal sequence	;abff
	inc bc			;ac02
	defb 0fdh,081h,0f5h ;illegal sequence	;ac03
	dec bc			;ac06
	defb 0fdh,004h,0f5h ;illegal sequence	;ac07
	add a,l			;ac0a
	defb 0fdh,0f5h,0fdh ;illegal sequence	;ac0b
	push af			;ac0e
	ret c			;ac0f
	inc bc			;ac10
	ld e,l			;ac11
	ld (bc),a		;ac12
	push af			;ac13
	add a,c			;ac14
	defb 0fdh,003h,0f5h ;illegal sequence	;ac15
	inc bc			;ac18
	ret m			;ac19
	inc bc			;ac1a
	defb 0fdh,00eh,0f5h ;illegal sequence	;ac1b
	add a,a			;ac1e
	defb 0fdh,0f8h,0f8h ;illegal sequence	;ac1f
	defb 0fdh,0f5h,0f5h ;illegal sequence	;ac22
	defb 0fdh,003h,0f8h ;illegal sequence	;ac25
	add a,l			;ac28
	defb 0fdh,0f5h,0f5h ;illegal sequence	;ac29
	defb 0fdh,0d8h,003h ;illegal sequence	;ac2c
	push af			;ac2f
	add a,h			;ac30
	defb 0fdh,0f5h,0f5h ;illegal sequence	;ac31
	push de			;ac34
	inc bc			;ac35
	defb 0fdh,004h,0f8h ;illegal sequence	;ac36
	inc bc			;ac39
	defb 0fdh,005h,0f5h ;illegal sequence	;ac3a
	adc a,c			;ac3d
	defb 0fdh,0f5h,0fdh ;illegal sequence	;ac3e
	push af			;ac41
	defb 0fdh,0f5h,0d8h ;illegal sequence	;ac42
	ld e,l			;ac45
	ret c			;ac46
	inc b			;ac47
	defb 0fdh,081h,0d5h ;illegal sequence	;ac48
	inc bc			;ac4b
	ld e,a			;ac4c
	ld (bc),a		;ac4d
lac4eh:
	ld d,b			;ac4e
	dec b			;ac4f
	push af			;ac50
	add a,d			;ac51
lac52h:
	ret m			;ac52
	defb 0fdh,003h,0f5h ;illegal sequence	;ac53
	adc a,c			;ac56
	nop			;ac57
	ld sp,02020h		;ac58
	djnz lac6dh		;ac5b
	ld e,a			;ac5d
	ld e,a			;ac5e
	rst 18h			;ac5f
	inc bc			;ac60
	ld e,a			;ac61
	add a,l			;ac62
	defb 0fdh,0f5h,0f4h ;illegal sequence	;ac63
	defb 0fdh,0fdh,004h ;illegal sequence	;ac66
	push af			;ac69
	inc bc			;ac6a
	di			;ac6b
	ld (bc),a		;ac6c
lac6dh:
	ld (02090h),a		;ac6d
	ld (02132h),a		;ac70
	rst 38h			;ac73
	push de			;ac74
	ld e,a			;ac75
	ld e,a			;ac76
	ret c			;ac77
	jp p,01021h		;ac78
	djnz lac6dh		;ac7b
	ret p			;ac7d
	push de			;ac7e
lac7fh:
	dec b			;ac7f
	ld e,a			;ac80
	add a,c			;ac81
	ld hl,01005h		;ac82
	ld (bc),a		;ac85
	ld e,a			;ac86
	add a,a			;ac87
	adc a,a			;ac88
	rst 18h			;ac89
	ld e,a			;ac8a
	ld e,a			;ac8b
	djnz lac7fh		;ac8c
	pop af			;ac8e
	ld b,0f0h		;ac8f
	add a,d			;ac91
	pop af			;ac92
	di			;ac93
	inc bc			;ac94
	jp p,0f181h		;ac95
	inc bc			;ac98
	ret p			;ac99
	add a,c			;ac9a
	ld hl,01003h		;ac9b
	inc b			;ac9e
	rrca			;ac9f
	add a,c			;aca0
	jp p,0f103h		;aca1
	inc bc			;aca4
	ret p			;aca5
	add a,e			;aca6
	jp p,0f1f1h		;aca7
	inc bc			;acaa
	ret p			;acab
lacach:
	ld (bc),a		;acac
	pop af			;acad
lacaeh:
	add a,d			;acae
	ret p			;acaf
	ld (de),a		;acb0
	inc b			;acb1
	ld bc,0f002h		;acb2
	add a,(hl)		;acb5
	ld (02121h),a		;acb6
	djnz lacaeh		;acb9
	di			;acbb
	inc bc			;acbc
	jp p,02102h		;acbd
	ld b,0f1h		;acc0
	ld (bc),a		;acc2
	jp p,02102h		;acc3
	inc bc			;acc6
	pop af			;acc7
	ld (bc),a		;acc8
	jr nz,lacd1h		;acc9
	djnz lac4eh		;accb
	jr nz,$+6		;accd
	djnz lac52h		;accf
lacd1h:
	ld (02107h),a		;acd1
	inc bc			;acd4
	ret p			;acd5
	adc a,d			;acd6
	jp p,0f1f1h		;acd7
	ret p			;acda
	ret p			;acdb
	jp p,0f2f0h		;acdc
	jp p,006f1h		;acdf
	ret p			;ace2
	sub c			;ace3
	ret m			;ace4
	push af			;ace5
	push af			;ace6
	ld sp,hl		;ace7
	call p,0f8f9h		;ace8
	add a,l			;aceb
	push af			;acec
	sbc a,a			;aced
	ld c,a			;acee
	sbc a,a			;acef
	ret m			;acf0
	push de			;acf1
	ld e,a			;acf2
	push de			;acf3
	push de			;acf4
	inc b			;acf5
	sbc a,a			;acf6
	adc a,c			;acf7
	nop			;acf8
	pop af			;acf9
	pop af			;acfa
	ld sp,hl		;acfb
	ld sp,hl		;acfc
	push de			;acfd
	adc a,l			;acfe
	push de			;acff
	push de			;ad00
lad01h:
	inc bc			;ad01
	sbc a,a			;ad02
	add a,c			;ad03
	call p,0f805h		;ad04
	sub b			;ad07
	ret c			;ad08
	push de			;ad09
	ld e,a			;ad0a
	ld e,a			;ad0b
	call p,011f4h		;ad0c
	ld (0f4f4h),a		;ad0f
	ld sp,hl		;ad12
	add a,b			;ad13
	add a,d			;ad14
	add a,c			;ad15
	add a,b			;ad16
	ret m			;ad17
	inc bc			;ad18
	ld hl,01082h		;ad19
	ld (02107h),a		;ad1c
	adc a,b			;ad1f
	djnz $-5		;ad20
	ld sp,hl		;ad22
	call p,030f4h		;ad23
	jr nc,lad48h		;ad26
	add hl,bc		;ad28
	djnz lad2dh		;ad29
	sbc a,a			;ad2b
	add a,d			;ad2c
lad2dh:
	ld c,a			;ad2d
	ld (02103h),a		;ad2e
	add a,h			;ad31
	nop			;ad32
	ld sp,hl		;ad33
	sub h			;ad34
	ld sp,hl		;ad35
	inc bc			;ad36
	jr nz,$-125		;ad37
	jr nc,$+5		;ad39
	jr nz,$-124		;ad3b
	djnz lad5fh		;ad3d
	dec b			;ad3f
	djnz $-124		;ad40
	ld b,b			;ad42
	sub b			;ad43
	inc b			;ad44
	ld (02185h),a		;ad45
lad48h:
	jp p,0f1f2h		;ad48
lad4bh:
	ld (02103h),a		;ad4b
	add a,e			;ad4e
	djnz $+1		;ad4f
	ld (02107h),a		;ad51
	ld (bc),a		;ad54
	ret p			;ad55
	ld (bc),a		;ad56
	ld hl,01083h		;ad57
	rst 38h			;ad5a
	ld (02104h),a		;ad5b
	ld (bc),a		;ad5e
lad5fh:
	rra			;ad5f
	adc a,b			;ad60
	ld (02121h),a		;ad61
	djnz lad75h		;ad64
	rrca			;ad66
	jp p,00321h		;ad67
	djnz lad6eh		;ad6a
	rrca			;ad6c
	ld (bc),a		;ad6d
lad6eh:
	djnz lad72h		;ad6e
	rrca			;ad70
	add a,c			;ad71
lad72h:
	ld hl,01005h		;ad72
lad75h:
	ld (bc),a		;ad75
	rrca			;ad76
	add a,c			;ad77
	ld hl,01004h		;ad78
	add a,c			;ad7b
	jr nz,$+17		;ad7c
	djnz lad01h		;ad7e
	jr nz,lad91h		;ad80
	djnz lad86h		;ad82
lad84h:
	ld (de),a		;ad84
	ld (bc),a		;ad85
lad86h:
	add hl,bc		;ad86
	rlca			;ad87
	sub h			;ad88
	ld (bc),a		;ad89
	ld (bc),a		;ad8a
	inc bc			;ad8b
	ld bc,02102h		;ad8c
	ld (bc),a		;ad8f
	sub b			;ad90
lad91h:
	rlca			;ad91
	sub h			;ad92
	ld (bc),a		;ad93
	ld (bc),a		;ad94
	inc bc			;ad95
	ld bc,0f002h		;ad96
	add a,c			;ad99
	ld hl,01003h		;ad9a
	add a,h			;ad9d
lad9eh:
	rrca			;ad9e
	ld sp,hl		;ad9f
	ld sp,hl		;ada0
	ld hl,01003h		;ada1
	ld (bc),a		;ada4
	rrca			;ada5
	add a,h			;ada6
	jp p,0f1f1h		;ada7
	ld (02103h),a		;adaa
	ld (bc),a		;adad
	djnz ladb3h		;adae
	ld hl,01004h		;adb0
ladb3h:
	add a,e			;adb3
	ld hl,02010h		;adb4
	inc b			;adb7
	djnz ladbch		;adb8
	ret p			;adba
	add a,c			;adbb
ladbch:
	jr nc,$+5		;adbc
	jr nz,ladc2h		;adbe
	djnz $+5		;adc0
ladc2h:
	jr nz,ladc6h		;adc2
	djnz lad4bh		;adc4
ladc6h:
	jr nc,$+34		;adc6
	jr nz,$+18		;adc8
	ld hl,01003h		;adca
	ld (bc),a		;adcd
	rrca			;adce
	add a,h			;adcf
	pop af			;add0
	ret p			;add1
	jr nz,lae05h		;add2
	inc bc			;add4
	ld hl,00084h		;add5
	ld (03221h),a		;add8
	inc bc			;addb
	ld hl,00202h		;addc
	ld (bc),a		;addf
	ld hl,03281h		;ade0
	inc b			;ade3
	ld hl,00084h		;ade4
	ld (02021h),a		;ade7
	inc bc			;adea
	djnz lad6eh		;adeb
	jr nz,$+5		;aded
	djnz lad84h		;adef
	ld (02121h),a		;adf1
	nop			;adf4
	ld (02121h),a		;adf5
	nop			;adf8
	ld (00021h),a		;adf9
	ld (02121h),a		;adfc
	djnz lae10h		;adff
	jr nc,lae33h		;ae01
	jr nz,$+6		;ae03
lae05h:
	djnz lad9eh		;ae05
	ret p			;ae07
	jr nz,lae1ah		;ae08
	rrca			;ae0a
	jr nz,$+18		;ae0b
	djnz lae1eh		;ae0d
	rrca			;ae0f
lae10h:
	jr nc,lae42h		;ae10
	jr nz,$+18		;ae12
	djnz lae35h		;ae14
	rrca			;ae16
	rrca			;ae17
	jr nc,$+50		;ae18
lae1ah:
	jr nz,lae2ch		;ae1a
	djnz $+50		;ae1c
lae1eh:
	inc bc			;ae1e
	jr nz,$-119		;ae1f
	jr nc,lae43h		;ae21
	djnz lae35h		;ae23
	jr nc,lae47h		;ae25
	jr nz,lae30h		;ae27
lae29h:
	ld (00082h),a		;ae29
lae2ch:
	ld (02107h),a		;ae2c
	ld (bc),a		;ae2f
lae30h:
	ld (02183h),a		;ae30
lae33h:
	di			;ae33
	di			;ae34
lae35h:
	ld b,032h		;ae35
	add a,l			;ae37
	ld hl,03232h		;ae38
	ld hl,000f9h		;ae3b
	inc b			;ae3e
	rst 38h			;ae3f
	inc bc			;ae40
	exx			;ae41
lae42h:
	add a,h			;ae42
lae43h:
	ret			;ae43
	ret m			;ae44
	rst 38h			;ae45
	rst 38h			;ae46
lae47h:
	dec b			;ae47
	defb 0fdh,000h,004h ;illegal sequence	;ae48
	push af			;ae4b
	add a,h			;ae4c
	jp p,082e3h		;ae4d
	pop af			;ae50
	inc bc			;ae51
	ret p			;ae52
	add a,l			;ae53
	jp m,0fafeh		;ae54
	di			;ae57
	jp p,08c00h		;ae58
	call pe,0f3efh		;ae5b
	call m,0ffffh		;ae5e
	ex (sp),hl		;ae61
	defb 0ddh,03fh,0cfh ;illegal sequence	;ae62
	rst 30h			;ae65
	scf			;ae66
	inc b			;ae67
	dec de			;ae68
	adc a,l			;ae69
	call pe,0f3efh		;ae6a
	call m,0dde3h		;ae6d
	or (hl)			;ae70
	xor d			;ae71
	rst 38h			;ae72
	call m,0eff3h		;ae73
	call pe,0d803h		;ae76
	add a,l			;ae79
	rst 38h			;ae7a
	ccf			;ae7b
	rst 8			;ae7c
	rst 30h			;ae7d
	scf			;ae7e
	inc bc			;ae7f
	dec de			;ae80
	adc a,h			;ae81
	scf			;ae82
	rst 30h			;ae83
	rst 8			;ae84
	ccf			;ae85
	rst 38h			;ae86
	rst 0			;ae87
	cp e			;ae88
	ld l,l			;ae89
	call m,0eff3h		;ae8a
	call pe,0d804h		;ae8d
	add a,l			;ae90
	call pe,0f3efh		;ae91
	call m,005ffh		;ae94
	ld a,a			;ae97
	adc a,b			;ae98
	add a,c			;ae99
	rst 38h			;ae9a
	rst 38h			;ae9b
	add a,c			;ae9c
	rst 38h			;ae9d
	rst 38h			;ae9e
	rst 8			;ae9f
	rst 8			;aea0
	add hl,bc		;aea1
	ret z			;aea2
	ld (bc),a		;aea3
	jr nc,lae29h		;aea4
	scf			;aea6
	sub a			;aea7
	ret m			;aea8
	dec bc			;aea9
	add a,e			;aeaa
	inc bc			;aeab
	rst 38h			;aeac
	add a,h			;aead
	add a,e			;aeae
	rst 38h			;aeaf
	ld b,d			;aeb0
	rst 38h			;aeb1
	inc b			;aeb2
	add a,c			;aeb3
	add a,d			;aeb4
	rst 38h			;aeb5
	ld b,d			;aeb6
	ex af,af'		;aeb7
	defb 0fdh,085h ;add a,iyl	;aeb8
	ret m			;aeba
	ret nz			;aebb
	rlca			;aebc
	ccf			;aebd
	ret m			;aebe
	inc bc			;aebf
	ret c			;aec0
	sbc a,l			;aec1
	scf			;aec2
	rst 30h			;aec3
	rst 8			;aec4
	ccf			;aec5
	rst 0			;aec6
	cp e			;aec7
	ld l,l			;aec8
	ld d,l			;aec9
	rra			;aeca
	ld b,a			;aecb
	ld (hl),c		;aecc
	ld a,h			;aecd
	ld (hl),c		;aece
	ld b,a			;aecf
	rra			;aed0
	rst 28h			;aed1
	pop af			;aed2
	push bc			;aed3
	dec e			;aed4
	ld a,l			;aed5
	dec e			;aed6
	push bc			;aed7
	pop af			;aed8
	xor 010h		;aed9
	ld (hl),c		;aedb
	ld a,h			;aedc
	ld (hl),c		;aedd
	ld b,a			;aede
	inc bc			;aedf
	rst 28h			;aee0
	add a,l			;aee1
	ld de,07d1dh		;aee2
	dec e			;aee5
	push bc			;aee6
	inc bc			;aee7
laee8h:
	xor 083h		;aee8
	add a,b			;aeea
	rst 38h			;aeeb
	add a,b			;aeec
	inc bc			;aeed
	add a,e			;aeee
	inc bc			;aeef
	add a,b			;aef0
	add a,c			;aef1
	rst 38h			;aef2
	ld b,080h		;aef3
	ld (bc),a		;aef5
	rst 38h			;aef6
	ld b,000h		;aef7
	ex af,af'		;aef9
	dec d			;aefa
	sub b			;aefb
	rla			;aefc
	rra			;aefd
	rra			;aefe
	djnz laf10h		;aeff
	rra			;af01
	add a,b			;af02
	rst 38h			;af03
	ret c			;af04
	ld a,b			;af05
	jr laee8h		;af06
	ret m			;af08
	ret m			;af09
	ld bc,008ffh		;af0a
	ld e,b			;af0d
	add a,h			;af0e
	ret m			;af0f
laf10h:
	rst 30h			;af10
	rst 28h			;af11
	call pe,0d804h		;af12
	add a,l			;af15
	call pe,0f3efh		;af16
	call m,003ffh		;af19
	ld a,a			;af1c
	add a,l			;af1d
	scf			;af1e
	rst 30h			;af1f
	rst 8			;af20
	ccf			;af21
	rst 38h			;af22
	inc bc			;af23
	cp 094h			;af24
	call pe,0f3efh		;af26
	call m,0e3ffh		;af29
	or (ix-001h)		;af2c
	rst 38h			;af2f
	call m,0eff3h		;af30
	call pe,0d8d8h		;af33
	scf			;af36
	rst 30h			;af37
	rst 8			;af38
	ccf			;af39
	inc bc			;af3a
	rst 38h			;af3b
	sbc a,h			;af3c
	rst 0			;af3d
	rst 38h			;af3e
	rst 38h			;af3f
	ccf			;af40
	rst 8			;af41
	rst 30h			;af42
	scf			;af43
	dec de			;af44
	dec de			;af45
	rst 38h			;af46
	xor 018h		;af47
	adc a,l			;af49
	dec a			;af4a
laf4bh:
	adc a,l			;af4b
	xor 010h		;af4c
	xor b			;af4e
	xor b			;af4f
	xor c			;af50
	defb 0fdh,00bh,009h ;illegal sequence	;af51
	ld c,c			;af54
	xor e			;af55
	rst 38h			;af56
	nop			;af57
	rst 38h			;af58
	inc bc			;af59
	call m,00087h		;af5a
	rst 38h			;af5d
	rra			;af5e
	inc bc			;af5f
	ret po			;af60
	call m,0031fh		;af61
	dec de			;af64
	add a,l			;af65
	scf			;af66
	rst 30h			;af67
	rst 8			;af68
	ccf			;af69
	rst 38h			;af6a
	inc bc			;af6b
	cp 088h			;af6c
	rst 38h			;af6e
	ret m			;af6f
	jr nc,$+101		;af70
	ld a,b			;af72
	ld h,e			;af73
	ret m			;af74
	ret m			;af75
	ex af,af'		;af76
	cp e			;af77
	inc bc			;af78
	rst 38h			;af79
	dec b			;af7a
	call m,0ff8fh		;af7b
	ret p			;af7e
	ret p			;af7f
	rrca			;af80
	rrca			;af81
	rst 38h			;af82
	rlca			;af83
	nop			;af84
	nop			;af85
	ret p			;af86
	ret p			;af87
	rrca			;af88
	rrca			;af89
	nop			;af8a
	ret po			;af8b
	inc b			;af8c
	nop			;af8d
	ld b,0c0h		;af8e
	inc bc			;af90
	ret nc			;af91
	ld (bc),a		;af92
	rrca			;af93
	ld (bc),a		;af94
	nop			;af95
	add a,e			;af96
	cp a			;af97
	and a			;af98
	ld b,a			;af99
	inc b			;af9a
	rrca			;af9b
	adc a,l			;af9c
	rst 38h			;af9d
	inc bc			;af9e
	defb 0fdh,0fdh,001h ;illegal sequence	;af9f
	rst 38h			;afa2
	rst 38h			;afa3
	nop			;afa4
	nop			;afa5
	ret po			;afa6
	rst 28h			;afa7
	rst 30h			;afa8
	scf			;afa9
	inc b			;afaa
	dec de			;afab
	inc b			;afac
	ret nc			;afad
	adc a,h			;afae
	call po,04444h		;afaf
	call po,000ffh		;afb2
	nop			;afb5
	rst 38h			;afb6
	inc bc			;afb7
	ld (bc),a		;afb8
	cp 0ffh			;afb9
	dec b			;afbb
	inc bc			;afbc
	inc bc			;afbd
	add a,e			;afbe
	dec b			;afbf
	ccf			;afc0
	ld (bc),a		;afc1
	jr nc,laf4bh		;afc2
	scf			;afc4
	rst 38h			;afc5
	rst 38h			;afc6
	cp 0f0h			;afc7
	ld bc,0040fh		;afc9
	rst 38h			;afcc
	adc a,c			;afcd
	ld a,a			;afce
	rrca			;afcf
	add a,b			;afd0
	ret p			;afd1
	rst 38h			;afd2
	rst 38h			;afd3
	defb 0fdh,0fdh,0ffh ;illegal sequence	;afd4
	inc b			;afd7
	add a,b			;afd8
	add a,c			;afd9
	rst 38h			;afda
	ld b,000h		;afdb
	ld (bc),a		;afdd
	rst 38h			;afde
	ld (bc),a		;afdf
	add a,b			;afe0
	inc bc			;afe1
	cp 003h			;afe2
	nop			;afe4
	ld (bc),a		;afe5
	rst 38h			;afe6
	ld (bc),a		;afe7
	nop			;afe8
	add a,(hl)		;afe9
	rst 38h			;afea
	add a,b			;afeb
	add a,b			;afec
	nop			;afed
	cp e			;afee
	xor d			;afef
	inc bc			;aff0
	ld b,h			;aff1
	ld (bc),a		;aff2
	nop			;aff3
	ld (bc),a		;aff4
	rst 38h			;aff5
	inc bc			;aff6
	add a,b			;aff7
	ld (bc),a		;aff8
	rst 38h			;aff9
	ld (bc),a		;affa
	nop			;affb
	nop			;affc
	ld b,0f5h		;affd
	ex af,af'		;afff
	defb 0fdh,006h,0f5h ;illegal sequence	;b000
	add hl,bc		;b003
	defb 0fdh,002h,0f8h ;illegal sequence	;b004
	ex af,af'		;b007
	defb 0fdh,006h,0f5h ;illegal sequence	;b008
	rlca			;b00b
	defb 0fdh,002h,0f8h ;illegal sequence	;b00c
	add a,c			;b00f
	defb 0fdh,006h,0f5h ;illegal sequence	;b010
	add a,l			;b013
	ld sp,hl		;b014
	call p,044f0h		;b015
	ld b,h			;b018
	inc bc			;b019
	ret p			;b01a
	add a,c			;b01b
	ld sp,hl		;b01c
	dec c			;b01d
	ld b,b			;b01e
	rla			;b01f
	ret p			;b020
	add a,e			;b021
	ld sp,hl		;b022
	ld b,h			;b023
	ld b,h			;b024
	inc bc			;b025
	ret p			;b026
	add a,e			;b027
	ld sp,031e1h		;b028
	rlca			;b02b
	ld hl,0f102h		;b02c
	add a,e			;b02f
	defb 0fdh,0f8h,0fdh ;illegal sequence	;b030
	dec b			;b033
	push af			;b034
	dec b			;b035
	defb 0fdh,002h,0f8h ;illegal sequence	;b036
	sbc a,l			;b039
	cp 0f8h			;b03a
	ret m			;b03c
	defb 0fdh,0e8h,0fdh ;illegal sequence	;b03d
	ret m			;b040
	ret m			;b041
	cp 0f8h			;b042
	ret m			;b044
	defb 0fdh,0e8h,0d8h ;illegal sequence	;b045
	push af			;b048
	ret m			;b049
	defb 0fdh,0f5h,0d5h ;illegal sequence	;b04a
	rst 38h			;b04d
	rst 38h			;b04e
	ret c			;b04f
	push af			;b050
	ret m			;b051
	defb 0fdh,0f5h,0d5h ;illegal sequence	;b052
	rst 38h			;b055
	rst 38h			;b056
	inc bc			;b057
	ex (sp),hl		;b058
	dec b			;b059
	ld (0e303h),a		;b05a
	ld b,032h		;b05d
	ld (bc),a		;b05f
	ex (sp),hl		;b060
	rrca			;b061
	jp p,01202h		;b062
	ld (bc),a		;b065
	ld (0f105h),a		;b066
	add a,e			;b069
	ld hl,03131h		;b06a
	dec bc			;b06d
	pop af			;b06e
	inc bc			;b06f
	defb 0fdh,002h,0f8h ;illegal sequence	;b070
	add a,c			;b073
	defb 0fdh,006h,0f5h ;illegal sequence	;b074
	add a,e			;b077
	ret p			;b078
	call p,005f9h		;b079
	push af			;b07c
	add a,e			;b07d
	ld sp,hl		;b07e
	call p,005f0h		;b07f
	push af			;b082
	add hl,bc		;b083
	defb 0fdh,002h,0f8h ;illegal sequence	;b084
	rlca			;b087
	push af			;b088
	ld a,(bc)		;b089
	defb 0fdh,002h,0e8h ;illegal sequence	;b08a
	add a,(hl)		;b08d
	ret m			;b08e
	cp 0f8h			;b08f
	ret pe			;b091
	ret c			;b092
	call p,0f003h		;b093
	add a,h			;b096
	ret m			;b097
	cp 0f8h			;b098
	push af			;b09a
	inc bc			;b09b
	ld a,081h		;b09c
	ld sp,02106h		;b09e
	ld (bc),a		;b0a1
	pop af			;b0a2
	add hl,bc		;b0a3
	push af			;b0a4
	sub c			;b0a5
	ret p			;b0a6
	call p,0f9f9h		;b0a7
	ex (sp),hl		;b0aa
	ret pe			;b0ab
	ret m			;b0ac
	cp 0f8h			;b0ad
	ex (sp),hl		;b0af
	add a,d			;b0b0
	defb 0fdh,0f8h,0feh ;illegal sequence	;b0b1
	cp 0f8h			;b0b4
	cp 005h			;b0b6
	ret m			;b0b8
	add a,e			;b0b9
	di			;b0ba
	cp 0f3h			;b0bb
	inc bc			;b0bd
	pop af			;b0be
	adc a,a			;b0bf
	di			;b0c0
	ld a,03eh		;b0c1
	inc hl			;b0c3
	inc hl			;b0c4
	ld hl,03f21h		;b0c5
	ccf			;b0c8
	ex (sp),hl		;b0c9
	ex (sp),hl		;b0ca
	ld (02132h),a		;b0cb
	ld hl,03f04h		;b0ce
	add a,l			;b0d1
	rst 28h			;b0d2
	ccf			;b0d3
	rra			;b0d4
	rra			;b0d5
	sub b			;b0d6
	inc bc			;b0d7
	sub h			;b0d8
	add a,c			;b0d9
	ld b,b			;b0da
	inc bc			;b0db
	rrca			;b0dc
	add a,c			;b0dd
	ld sp,hl		;b0de
	rlca			;b0df
	ret p			;b0e0
	add a,c			;b0e1
	cp 004h			;b0e2
	sub b			;b0e4
	ld (bc),a		;b0e5
	ld b,b			;b0e6
	ld (bc),a		;b0e7
	rra			;b0e8
	dec b			;b0e9
	defb 0fdh,002h,0f5h ;illegal sequence	;b0ea
	add a,c			;b0ed
	jp (hl)			;b0ee
	inc bc			;b0ef
	sub h			;b0f0
	add a,(hl)		;b0f1
	ret m			;b0f2
	cp 0f8h			;b0f3
	push af			;b0f5
	add hl,bc		;b0f6
	add hl,bc		;b0f7
	inc bc			;b0f8
	inc b			;b0f9
	inc b			;b0fa
	ret p			;b0fb
	add a,e			;b0fc
	inc b			;b0fd
	ld c,c			;b0fe
	ld c,c			;b0ff
	dec b			;b100
	inc b			;b101
	add a,e			;b102
	ld c,c			;b103
	sbc a,(hl)		;b104
	sbc a,(hl)		;b105
	inc b			;b106
	ld c,c			;b107
	inc b			;b108
	ld hl,0f104h		;b109
	inc b			;b10c
	ld hl,0f104h		;b10d
	ld (bc),a		;b110
	ld hl,03203h		;b111
	ld (bc),a		;b114
	ld hl,0f206h		;b115
	inc bc			;b118
	pop af			;b119
	inc bc			;b11a
	ld (02104h),a		;b11b
	ld (bc),a		;b11e
	rrca			;b11f
	ld (bc),a		;b120
	sub h			;b121
	inc bc			;b122
	ld b,b			;b123
	ld (bc),a		;b124
	rrca			;b125
	adc a,b			;b126
	defb 0fdh,0f5h,0f1h ;illegal sequence	;b127
	ld (de),a		;b12a
	inc hl			;b12b
	inc hl			;b12c
	pop af			;b12d
	pop af			;b12e
	inc bc			;b12f
	jp (hl)			;b130
	ld (bc),a		;b131
	sub b			;b132
	ld (bc),a		;b133
	ld b,b			;b134
	add a,c			;b135
	rrca			;b136
	nop			;b137
	or d			;b138
	add a,b			;b139
	ld a,b			;b13a
	rlca			;b13b
	rst 38h			;b13c
	rst 38h			;b13d
	cp 08eh			;b13e
	add a,(hl)		;b140
	ret c			;b141
	call pe,0f3efh		;b142
	call m,0ffffh		;b145
	ret m			;b148
	ret m			;b149
	defb 0fdh,043h,043h ;illegal sequence	;b14a
	ld h,c			;b14d
	ld b,b			;b14e
	ld b,b			;b14f
	ld h,b			;b150
	scf			;b151
	rst 30h			;b152
	rst 8			;b153
	ccf			;b154
	rst 38h			;b155
	rst 38h			;b156
	rrca			;b157
	ex af,af'		;b158
	ex af,af'		;b159
	ret p			;b15a
	ret p			;b15b
	nop			;b15c
	nop			;b15d
	cp 08eh			;b15e
	add a,(hl)		;b160
	dec de			;b161
	scf			;b162
	rst 30h			;b163
	rst 8			;b164
	ccf			;b165
	ret m			;b166
	ex af,af'		;b167
	ret p			;b168
	sbc a,a			;b169
	cp a			;b16a
	inc bc			;b16b
	rst 38h			;b16c
	adc a,l			;b16d
	cp 08eh			;b16e
	add a,(hl)		;b170
	call pe,0f3efh		;b171
	call m,0080fh		;b174
	rlca			;b177
	rlca			;b178
	ret po			;b179
	ret po			;b17a
	inc bc			;b17b
	nop			;b17c
	ret z			;b17d
	cp 08eh			;b17e
	add a,(hl)		;b180
	call pe,0f3efh		;b181
	call m,0f0ffh		;b184
	add a,b			;b187
	ld (hl),b		;b188
	rrca			;b189
	rst 38h			;b18a
	cp 086h			;b18b
	inc bc			;b18d
	inc bc			;b18e
	ld bc,00ffch		;b18f
	call m,0c0f0h		;b192
	ld a,a			;b195
	rst 38h			;b196
	rst 38h			;b197
	call m,03fffh		;b198
	rra			;b19b
	adc a,a			;b19c
	rst 0			;b19d
	call po,0fcfch		;b19e
	rst 38h			;b1a1
	ccf			;b1a2
	rra			;b1a3
	adc a,a			;b1a4
	rst 0			;b1a5
	call po,0fcfch		;b1a6
	rst 38h			;b1a9
	call m,0f1f8h		;b1aa
	ex (sp),hl		;b1ad
	daa			;b1ae
	ccf			;b1af
	ccf			;b1b0
	ld d,l			;b1b1
	ld l,l			;b1b2
	cp e			;b1b3
	rst 0			;b1b4
	rst 38h			;b1b5
	rst 38h			;b1b6
	rrca			;b1b7
	ex af,af'		;b1b8
	xor d			;b1b9
	or (hl)			;b1ba
	ex (sp),ix		;b1bb
	rst 38h			;b1bd
	rra			;b1be
	djnz lb1d0h		;b1bf
	ld d,l			;b1c1
	ld l,l			;b1c2
	cp e			;b1c3
	rst 0			;b1c4
	rst 38h			;b1c5
	inc bc			;b1c6
	ex af,af'		;b1c7
	xor (hl)		;b1c8
	cp e			;b1c9
	ld l,l			;b1ca
	ld d,l			;b1cb
	ld l,l			;b1cc
	cp e			;b1cd
	rst 0			;b1ce
	rst 38h			;b1cf
lb1d0h:
	ret m			;b1d0
	or (hl)			;b1d1
	xor d			;b1d2
	or (hl)			;b1d3
	ex (sp),ix		;b1d4
	rst 38h			;b1d6
	add a,a			;b1d7
	add a,b			;b1d8
	ld l,l			;b1d9
	cp e			;b1da
	rst 0			;b1db
	rst 38h			;b1dc
	add a,a			;b1dd
	add a,b			;b1de
	rlca			;b1df
	rlca			;b1e0
	or (hl)			;b1e1
	ex (sp),ix		;b1e2
	rst 38h			;b1e4
	rst 38h			;b1e5
	ret p			;b1e6
	add a,b			;b1e7
	ld (hl),b		;b1e8
	ret c			;b1e9
	ret c			;b1ea
	call pe,0f3efh		;b1eb
	call m,08087h		;b1ee
	scf			;b1f1
	rst 30h			;b1f2
	rst 8			;b1f3
	ccf			;b1f4
	rst 0			;b1f5
	add a,b			;b1f6
	inc b			;b1f7
	rlca			;b1f8
	ld (bc),a		;b1f9
	ld b,e			;b1fa
	or h			;b1fb
	ld h,c			;b1fc
	ld b,b			;b1fd
	ld b,b			;b1fe
	ld h,b			;b1ff
	dec de			;b200
	dec de			;b201
	scf			;b202
	rst 30h			;b203
	rst 8			;b204
	ccf			;b205
	rst 38h			;b206
	ret m			;b207
	ccf			;b208
	rra			;b209
	ccf			;b20a
	rst 0			;b20b
	ret nz			;b20c
	ret p			;b20d
	rst 38h			;b20e
	rst 38h			;b20f
	call m,0f8fch		;b210
	pop af			;b213
	rst 38h			;b214
	ex (sp),hl		;b215
	rst 0			;b216
	adc a,a			;b217
	xor d			;b218
	or (hl)			;b219
	ex (sp),ix		;b21a
	rst 38h			;b21c
lb21dh:
	rst 38h			;b21d
	ret p			;b21e
	djnz lb21dh		;b21f
	ret m			;b221
	call m,083e3h		;b222
	adc a,a			;b225
	rst 38h			;b226
	rst 38h			;b227
	ccf			;b228
	ccf			;b229
	rra			;b22a
	adc a,a			;b22b
	rst 38h			;b22c
	rst 0			;b22d
	ex (sp),hl		;b22e
	pop af			;b22f
	nop			;b230
	add a,d			;b231
	ld sp,hl		;b232
	sub b			;b233
	inc bc			;b234
	ret p			;b235
	ld a,(bc)		;b236
	push af			;b237
	inc bc			;b238
	ld sp,hl		;b239
	add a,e			;b23a
	push af			;b23b
	ld e,l			;b23c
	ld e,l			;b23d
	add hl,bc		;b23e
	push af			;b23f
	inc bc			;b240
	ld sp,hl		;b241
	add a,c			;b242
	sub b			;b243
	inc bc			;b244
	rrca			;b245
	ex af,af'		;b246
	push af			;b247
	ld (bc),a		;b248
	ld sp,hl		;b249
	add a,d			;b24a
	sub b			;b24b
	ld sp,hl		;b24c
	inc b			;b24d
	ret p			;b24e
	rlca			;b24f
	push af			;b250
	ld (bc),a		;b251
	ld sp,hl		;b252
	add a,e			;b253
	sub b			;b254
	rrca			;b255
	sub b			;b256
	inc b			;b257
	rrca			;b258
	ex af,af'		;b259
	push af			;b25a
	ld (bc),a		;b25b
	ld sp,hl		;b25c
	add a,l			;b25d
	sub b			;b25e
	ret p			;b25f
	ret p			;b260
	push af			;b261
	push af			;b262
	inc bc			;b263
	defb 0fdh,082h,0d8h ;illegal sequence	;b264
	ret p			;b267
	inc bc			;b268
	defb 0fdh,003h,0d5h ;illegal sequence	;b269
	adc a,b			;b26c
	ret c			;b26d
	ret p			;b26e
	ret p			;b26f
	call p,0f9f9h		;b270
	call p,003f9h		;b273
	ret p			;b276
	add a,c			;b277
	call p,0f904h		;b278
	inc bc			;b27b
	ret p			;b27c
	add a,a			;b27d
	call p,0f9f9h		;b27e
	call p,0f0f9h		;b281
	defb 0fdh,005h,0f5h ;illegal sequence	;b284
	ld (bc),a		;b287
	ld sp,hl		;b288
	add a,c			;b289
	defb 0fdh,004h,0f5h ;illegal sequence	;b28a
	ld (bc),a		;b28d
	ld sp,hl		;b28e
	add a,d			;b28f
	sub b			;b290
	defb 0fdh,004h,0f5h ;illegal sequence	;b291
	ld (bc),a		;b294
	ld sp,hl		;b295
	add a,c			;b296
	ret p			;b297
	inc bc			;b298
	defb 0fdh,004h,0f5h ;illegal sequence	;b299
	add a,e			;b29c
	ld sp,hl		;b29d
	defb 0fdh,0fdh,004h ;illegal sequence	;b29e
	push af			;b2a1
	ld (bc),a		;b2a2
	ld sp,hl		;b2a3
	inc b			;b2a4
	push af			;b2a5
	ld (bc),a		;b2a6
	ld sp,hl		;b2a7
	add a,d			;b2a8
	sub b			;b2a9
	rrca			;b2aa
	dec b			;b2ab
	push af			;b2ac
	ld (bc),a		;b2ad
	ld sp,hl		;b2ae
	add a,d			;b2af
	sub b			;b2b0
	defb 0fdh,005h,0f5h ;illegal sequence	;b2b1
	ld (bc),a		;b2b4
	ld sp,hl		;b2b5
	inc b			;b2b6
	push af			;b2b7
	ld (bc),a		;b2b8
	ld sp,hl		;b2b9
	add a,a			;b2ba
	sub b			;b2bb
	rrca			;b2bc
	sub b			;b2bd
	rrca			;b2be
	push af			;b2bf
	ld e,l			;b2c0
	ld e,l			;b2c1
	ld a,(bc)		;b2c2
	push af			;b2c3
	inc bc			;b2c4
	ld sp,hl		;b2c5
	ld (bc),a		;b2c6
	call p,0f906h		;b2c7
	add a,c			;b2ca
	call p,0f003h		;b2cb
	add a,e			;b2ce
	call p,0fdf9h		;b2cf
	dec b			;b2d2
	push af			;b2d3
	inc bc			;b2d4
	ld sp,hl		;b2d5
	add a,h			;b2d6
	call p,0f0f0h		;b2d7
	call p,0f905h		;b2da
	add a,c			;b2dd
	call p,0f003h		;b2de
	add a,d			;b2e1
	call p,000f9h		;b2e2
	add a,c			;b2e5
	ld a,a			;b2e6
	ex af,af'		;b2e7
	rst 38h			;b2e8
	inc b			;b2e9
	call m,0fe03h		;b2ea
	add a,c			;b2ed
	rst 38h			;b2ee
	inc b			;b2ef
	ccf			;b2f0
	inc bc			;b2f1
	ld a,a			;b2f2
	add a,c			;b2f3
	rst 38h			;b2f4
	rlca			;b2f5
	call m,0ff81h		;b2f6
	rlca			;b2f9
	ccf			;b2fa
	add a,c			;b2fb
	rst 38h			;b2fc
	inc bc			;b2fd
	call m,0ff81h		;b2fe
	inc bc			;b301
	call m,0ff81h		;b302
	inc bc			;b305
	ccf			;b306
	add a,c			;b307
	rst 38h			;b308
	inc bc			;b309
	ccf			;b30a
	inc b			;b30b
	call m,0ff81h		;b30c
	inc bc			;b30f
	cp 004h			;b310
	ccf			;b312
	add a,c			;b313
	rst 38h			;b314
	inc bc			;b315
	ld a,a			;b316
	nop			;b317
	ld a,(bc)		;b318
	ret p			;b319
	add a,c			;b31a
	call p,0f903h		;b31b
	add a,c			;b31e
	call p,0f003h		;b31f
	add a,c			;b322
	call p,0f903h		;b323
	add a,c			;b326
	call p,0f003h		;b327
	add a,c			;b32a
	call p,0f903h		;b32b
	add a,c			;b32e
	call p,0f003h		;b32f
	add a,c			;b332
	call p,0f903h		;b333
	add a,c			;b336
	call p,0f003h		;b337
	inc bc			;b33a
	call p,0f085h		;b33b
	call p,0f9f9h		;b33e
	ret p			;b341
	inc bc			;b342
	call p,0f082h		;b343
	call p,0f903h		;b346
	add a,c			;b349
	call p,0f003h		;b34a
	add a,c			;b34d
	call p,0f903h		;b34e
	add a,c			;b351
	call p,0f003h		;b352
	add a,d			;b355
	call p,000f9h		;b356
	sbc a,d			;b359
	rst 38h			;b35a
	cp 0f9h			;b35b
	jp p,0f004h		;b35d
	ret po			;b360
	ret nz			;b361
	ld bc,00080h		;b362
	ld (hl),b		;b365
	ret m			;b366
	add a,b			;b367
	ret m			;b368
	ret m			;b369
	add a,b			;b36a
	ld bc,01c07h		;b36b
	rst 38h			;b36e
	ld e,b			;b36f
	ld e,b			;b370
	rst 38h			;b371
	adc a,b			;b372
	rst 38h			;b373
	inc bc			;b374
	sub a			;b375
	ld (bc),a		;b376
	jp (hl)			;b377
	or (hl)			;b378
	nop			;b379
	adc a,0a4h		;b37a
	and d			;b37c
	ret			;b37d
	push hl			;b37e
	di			;b37f
	sbc a,080h		;b380
	ld bc,04020h		;b382
	ld e,b			;b385
	cp h			;b386
	add a,b			;b387
	inc a			;b388
	inc a			;b389
	add a,c			;b38a
	add a,c			;b38b
	ld h,d			;b38c
	ld h,d			;b38d
	rst 38h			;b38e
	ld e,b			;b38f
	ld e,b			;b390
	rst 38h			;b391
	inc h			;b392
	rra			;b393
	jr nz,lb3f6h		;b394
	rst 38h			;b396
	jp (hl)			;b397
	jp (hl)			;b398
	nop			;b399
	add a,b			;b39a
	inc b			;b39b
	ld (bc),a		;b39c
	ld a,(de)		;b39d
	dec a			;b39e
	ld bc,03c3ch		;b39f
	ld (hl),e		;b3a2
	dec h			;b3a3
	ld b,l			;b3a4
	sub e			;b3a5
	and a			;b3a6
	rst 8			;b3a7
	ld a,e			;b3a8
	ld bc,0f824h		;b3a9
	inc b			;b3ac
	ld b,0ffh		;b3ad
	inc bc			;b3af
	ld e,b			;b3b0
	ld (bc),a		;b3b1
	add a,c			;b3b2
	ld (bc),a		;b3b3
	ld b,(hl)		;b3b4
	sub (hl)		;b3b5
	rst 38h			;b3b6
	jp (hl)			;b3b7
	jp (hl)			;b3b8
	nop			;b3b9
	add a,b			;b3ba
	ld bc,00e00h		;b3bb
	rra			;b3be
	ld bc,01f1fh		;b3bf
	rst 38h			;b3c2
	ld a,a			;b3c3
	sbc a,a			;b3c4
	ld c,a			;b3c5
	jr nz,lb3d7h		;b3c6
	rlca			;b3c8
	inc bc			;b3c9
	ld de,003ffh		;b3ca
	jp (hl)			;b3cd
	ld (bc),a		;b3ce
	ld e,b			;b3cf
	sub a			;b3d0
	rst 38h			;b3d1
	ld bc,0e080h		;b3d2
	jr c,$+1		;b3d5
lb3d7h:
	jp (hl)			;b3d7
	jp (hl)			;b3d8
	nop			;b3d9
	ccf			;b3da
	ccf			;b3db
	pop bc			;b3dc
	inc a			;b3dd
	inc a			;b3de
	pop bc			;b3df
	ccf			;b3e0
	ccf			;b3e1
	call po,0ccc4h		;b3e2
	sbc a,(hl)		;b3e5
	ld a,0beh		;b3e6
	inc b			;b3e8
	cp 08ch			;b3e9
	cp (hl)			;b3eb
	ld a,09eh		;b3ec
	call z,0e4c4h		;b3ee
	daa			;b3f1
	inc hl			;b3f2
	inc sp			;b3f3
	ld a,c			;b3f4
	ld a,h			;b3f5
lb3f6h:
	ld a,l			;b3f6
	inc b			;b3f7
	ld a,a			;b3f8
	add a,(hl)		;b3f9
	ld a,l			;b3fa
	ld a,h			;b3fb
	ld a,c			;b3fc
	inc sp			;b3fd
	inc hl			;b3fe
	daa			;b3ff
	inc bc			;b400
	ld a,b			;b401
	add a,d			;b402
	xor d			;b403
	rst 38h			;b404
	rlca			;b405
	ld a,b			;b406
	add a,c			;b407
	add a,c			;b408
	inc bc			;b409
	rst 38h			;b40a
	or a			;b40b
	inc bc			;b40c
	ret nz			;b40d
	ret p			;b40e
	ret m			;b40f
	ret m			;b410
	ret p			;b411
	ret nz			;b412
	inc bc			;b413
	ld sp,hl		;b414
	ld sp,hl		;b415
	pop af			;b416
	pop af			;b417
	ld (024e4h),a		;b418
	rra			;b41b
	add a,b			;b41c
	rlca			;b41d
	rlca			;b41e
	ld a,a			;b41f
	rrca			;b420
	add a,b			;b421
	ret p			;b422
	add a,b			;b423
	add a,b			;b424
	ret nz			;b425
	ret po			;b426
	ret m			;b427
	xor a			;b428
	and e			;b429
	and d			;b42a
	and d			;b42b
	ld bc,0e0e0h		;b42c
	cp 0f0h			;b42f
	ld bc,0010fh		;b431
	ld bc,00703h		;b434
	rra			;b437
	push af			;b438
	push bc			;b439
	ld b,l			;b43a
	ld b,l			;b43b
	ret p			;b43c
	jp lacach		;b43d
	ld a,b			;b440
	ret p			;b441
	rst 38h			;b442
	inc b			;b443
	ret p			;b444
	sbc a,h			;b445
	rst 38h			;b446
	ld a,a			;b447
	ld a,a			;b448
	pop de			;b449
	pop de			;b44a
	rra			;b44b
	ld de,0fbeah		;b44c
	ei			;b44f
	jp z,0cecah		;b450
	call m,0cccch		;b453
	call sub_b6cdh		;b456
	add a,h			;b459
	add a,h			;b45a
	rrca			;b45b
	inc e			;b45c
	jp z,0fecah		;b45d
	ld a,a			;b460
	nop			;b461
	inc b			;b462
	ret m			;b463
	add a,e			;b464
	nop			;b465
	ld bc,004ffh		;b466
	outd			;b469
	rra			;b46b
	ld de,0fbeah		;b46c
	adc a,d			;b46f
	adc a,d			;b470
	and e			;b471
	ld (01223h),hl		;b472
	inc de			;b475
	ld (de),a		;b476
	inc de			;b477
	call m,0ffffh		;b478
	ret m			;b47b
	adc a,b			;b47c
	ld d,a			;b47d
	rst 18h			;b47e
	ld d,c			;b47f
	ld d,c			;b480
	push bc			;b481
	ld b,h			;b482
	call nz,0c848h		;b483
	ld c,b			;b486
	ret z			;b487
	ccf			;b488
	sbc a,a			;b489
	sbc a,a			;b48a
	adc a,a			;b48b
	rst 8			;b48c
	ld c,h			;b48d
	daa			;b48e
	inc h			;b48f
	ret m			;b490
	ld l,02eh		;b491
	rst 38h			;b493
	ld b,h			;b494
	rst 38h			;b495
	inc bc			;b496
	ld e,a			;b497
	ld (bc),a		;b498
	ret nc			;b499
	add a,e			;b49a
	rst 38h			;b49b
	ld (003ffh),hl		;b49c
	ret pe			;b49f
	sbc a,d			;b4a0
	jp nz,04342h		;b4a1
	ld b,a			;b4a4
	ret m			;b4a5
	ret po			;b4a6
	ret nz			;b4a7
	add a,b			;b4a8
	ld b,d			;b4a9
	ld b,e			;b4aa
	jp 01fe3h		;b4ab
	rlca			;b4ae
	inc bc			;b4af
	ld bc,088f8h		;b4b0
	ld d,a			;b4b3
	rst 18h			;b4b4
	rst 18h			;b4b5
	ld d,e			;b4b6
	ld d,e			;b4b7
	ld (hl),e		;b4b8
	rst 38h			;b4b9
	rst 38h			;b4ba
	inc bc			;b4bb
	ld a,b			;b4bc
	sub e			;b4bd
	xor d			;b4be
	rst 38h			;b4bf
	ld a,b			;b4c0
	adc a,(hl)		;b4c1
	call m,0cccch		;b4c2
	call 084b6h		;b4c5
	add a,(hl)		;b4c8
	ld (hl),c		;b4c9
	ccf			;b4ca
	inc sp			;b4cb
	inc sp			;b4cc
	or e			;b4cd
	ld l,l			;b4ce
	ld hl,00021h		;b4cf
	ld (bc),a		;b4d2
	cp 087h			;b4d3
	defb 0edh ;next byte illegal after ed	;b4d5
	ret pe			;b4d6
	ret pe			;b4d7
	ret c			;b4d8
	ret m			;b4d9
	ret m			;b4da
	cp 005h			;b4db
	ret pe			;b4dd
	adc a,c			;b4de
	ret c			;b4df
	ld e,b			;b4e0
	ret m			;b4e1
	defb 0fdh,0fdh,0f5h ;illegal sequence	;b4e2
	push af			;b4e5
	ret pe			;b4e6
	adc a,l			;b4e7
	inc bc			;b4e8
	defb 0fdh,08ch ;adc a,iyh	;b4e9
	ret c			;b4eb
	ld e,l			;b4ec
	rst 38h			;b4ed
	push de			;b4ee
	ld e,a			;b4ef
	ld e,a			;b4f0
	cp 0feh			;b4f1
	ret m			;b4f3
	ret m			;b4f4
	defb 0fdh,0f5h,003h ;illegal sequence	;b4f5
	cp 005h			;b4f8
	ret pe			;b4fa
	adc a,c			;b4fb
	ret c			;b4fc
	ld e,b			;b4fd
	ret pe			;b4fe
	rst 28h			;b4ff
	ret m			;b500
	defb 0fdh,0fdh,0e8h ;illegal sequence	;b501
	adc a,l			;b504
	inc b			;b505
	defb 0fdh,002h,0f5h ;illegal sequence	;b506
	add a,h			;b509
	push de			;b50a
	ld e,a			;b50b
	ld e,a			;b50c
	cp 005h			;b50d
	ret pe			;b50f
	adc a,d			;b510
	ret c			;b511
	ld e,b			;b512
	cp 0feh			;b513
	ret m			;b515
	ret m			;b516
	defb 0fdh,0f5h,0feh ;illegal sequence	;b517
	cp 003h			;b51a
	defb 0fdh,002h,0f5h ;illegal sequence	;b51c
	adc a,h			;b51f
	ret pe			;b520
	adc a,l			;b521
	rst 38h			;b522
	ret pe			;b523
	rst 28h			;b524
	ret m			;b525
	defb 0fdh,0fdh,0d5h ;illegal sequence	;b526
	ld e,a			;b529
	ld e,a			;b52a
	cp 005h			;b52b
	ret pe			;b52d
	sbc a,b			;b52e
	ret c			;b52f
	ld e,b			;b530
	cp 0feh			;b531
	defb 0edh ;next byte illegal after ed	;b533
	ret pe			;b534
	ret pe			;b535
	ret c			;b536
	ret m			;b537
	ret m			;b538
	defb 0fdh,0fdh,0d8h ;illegal sequence	;b539
	ld e,l			;b53c
	rst 38h			;b53d
	ret pe			;b53e
	adc a,l			;b53f
	ret m			;b540
	ret m			;b541
	defb 0fdh,0fdh,0f5h ;illegal sequence	;b542
	push af			;b545
	push de			;b546
	inc bc			;b547
	ld e,a			;b548
	adc a,c			;b549
	push de			;b54a
	ret c			;b54b
	ret pe			;b54c
	ret pe			;b54d
	ret c			;b54e
	push de			;b54f
	ld e,a			;b550
	pop af			;b551
	or 003h			;b552
	di			;b554
	add a,(hl)		;b555
	jp m,0faf2h		;b556
	jp m,0faf2h		;b559
	inc bc			;b55c
	di			;b55d
	add a,h			;b55e
	or 0f1h			;b55f
	pop af			;b561
	or 003h			;b562
	di			;b564
	add a,(hl)		;b565
	jp m,0faf2h		;b566
	jp m,0faf2h		;b569
	inc bc			;b56c
	di			;b56d
	adc a,b			;b56e
	or 0f1h			;b56f
	and e			;b571
	ld (0f121h),a		;b572
	pop af			;b575
	ret pe			;b576
	dec b			;b577
	adc a,l			;b578
	add a,c			;b579
	push de			;b57a
	dec b			;b57b
	push af			;b57c
	ld b,0d5h		;b57d
	sub b			;b57f
	push af			;b580
	cp 0feh			;b581
	ret m			;b583
	ret m			;b584
	defb 0fdh,0fdh,0f5h ;illegal sequence	;b585
	push af			;b588
	jp m,0eaeah		;b589
	and e			;b58c
	and e			;b58d
	ld h,e			;b58e
	ld h,e			;b58f
	dec b			;b590
	or 08bh			;b591
	call p,0f4feh		;b593
	ret p			;b596
	jp m,0eaeah		;b597
	and e			;b59a
	and e			;b59b
	ld h,e			;b59c
	ld h,e			;b59d
	dec b			;b59e
	or 088h			;b59f
	call p,0f4feh		;b5a1
	ret p			;b5a4
	jp m,0f3d8h		;b5a5
	or 007h			;b5a8
	ret pe			;b5aa
	ld (bc),a		;b5ab
	push de			;b5ac
	add a,(hl)		;b5ad
	rst 38h			;b5ae
	ret c			;b5af
	rst 38h			;b5b0
	pop hl			;b5b1
	add a,c			;b5b2
	defb 0fdh,003h,0f8h ;illegal sequence	;b5b3
	add a,c			;b5b6
	cp 003h			;b5b7
	ret m			;b5b9
	ld (bc),a		;b5ba
	defb 0fdh,08bh,0f5h ;illegal sequence	;b5bb
	cp 0f8h			;b5be
	push af			;b5c0
	di			;b5c1
	push af			;b5c2
	or 0f1h			;b5c3
	push de			;b5c5
	ret c			;b5c6
	ret c			;b5c7
	dec b			;b5c8
	push de			;b5c9
	ld (bc),a		;b5ca
	push af			;b5cb
	add a,c			;b5cc
	push de			;b5cd
	inc bc			;b5ce
	rst 38h			;b5cf
	add a,l			;b5d0
	pop hl			;b5d1
	add a,c			;b5d2
	defb 0fdh,0f8h,0f8h ;illegal sequence	;b5d3
	inc bc			;b5d6
	cp 002h			;b5d7
	ret m			;b5d9
	ld (bc),a		;b5da
	defb 0fdh,004h,0f5h ;illegal sequence	;b5db
	add a,l			;b5de
	jp po,0fd81h		;b5df
	ret m			;b5e2
	ret m			;b5e3
	inc bc			;b5e4
	cp 002h			;b5e5
	ret m			;b5e7
	ld (bc),a		;b5e8
	defb 0fdh,002h,0f5h ;illegal sequence	;b5e9
	ld (bc),a		;b5ec
	cp 002h			;b5ed
	ret m			;b5ef
	ld (bc),a		;b5f0
	defb 0fdh,002h,0f5h ;illegal sequence	;b5f1
	add a,d			;b5f4
	and e			;b5f5
	ld (0f603h),a		;b5f6
	add a,l			;b5f9
	and e			;b5fa
	ld (03221h),a		;b5fb
	ld hl,0f603h		;b5fe
	sub (hl)		;b601
	ld (01f21h),a		;b602
	ld sp,hl		;b605
	call p,0f0f0h		;b606
	or 0f3h			;b609
	di			;b60b
	jp m,0f4f9h		;b60c
	ret p			;b60f
	ret p			;b610
	or 0f3h			;b611
	di			;b613
	jp m,081e2h		;b614
	defb 0fdh,003h,0f8h ;illegal sequence	;b617
	add a,c			;b61a
	cp 003h			;b61b
	ret m			;b61d
	sub (hl)		;b61e
	and e			;b61f
	ld (0f121h),a		;b620
	pop af			;b623
	ret pe			;b624
	ret m			;b625
	defb 0fdh,0fdh,0f5h ;illegal sequence	;b626
	push af			;b629
	ret m			;b62a
	defb 0fdh,0f5h,0f8h ;illegal sequence	;b62b
	defb 0fdh,0fdh,0f5h ;illegal sequence	;b62e
	push af			;b631
	ret m			;b632
	defb 0fdh,0f5h,000h ;illegal sequence	;b633
	ld (bc),a		;b636
	rst 38h			;b637
	add a,c			;b638
	add a,b			;b639
	inc bc			;b63a
	nop			;b63b
	ex af,af'		;b63c
	add a,b			;b63d
	add a,a			;b63e
	rst 38h			;b63f
	nop			;b640
	ret p			;b641
	add a,b			;b642
	ret p			;b643
	add a,b			;b644
	add a,b			;b645
	dec b			;b646
	dec h			;b647
	add a,a			;b648
	rst 38h			;b649
	add a,e			;b64a
	add a,e			;b64b
	ld a,080h		;b64c
	ret po			;b64e
	rst 38h			;b64f
	inc b			;b650
	cp 003h			;b651
	ld a,(hl)		;b653
	dec b			;b654
	push de			;b655
	adc a,e			;b656
	rst 38h			;b657
	nop			;b658
	nop			;b659
	rst 38h			;b65a
	rrca			;b65b
	ld c,00eh		;b65c
	ret p			;b65e
	cp 00eh			;b65f
	cp 003h			;b661
	adc a,b			;b663
	adc a,b			;b664
	adc a,a			;b665
	adc a,b			;b666
	rst 30h			;b667
	rrca			;b668
	nop			;b669
	rst 38h			;b66a
	nop			;b66b
	nop			;b66c
	dec b			;b66d
	rst 38h			;b66e
	add a,l			;b66f
	add a,a			;b670
	call m,0fe86h		;b671
	inc bc			;b674
	inc bc			;b675
	ret nz			;b676
	ld (bc),a		;b677
	ld a,(hl)		;b678
	add a,c			;b679
	ld a,003h		;b67a
	nop			;b67c
	ld (bc),a		;b67d
	rst 38h			;b67e
	add a,d			;b67f
	nop			;b680
	rst 38h			;b681
	ld b,0d0h		;b682
	inc b			;b684
	add a,b			;b685
	ld (bc),a		;b686
	adc a,a			;b687
	ld (bc),a		;b688
	adc a,b			;b689
	add a,l			;b68a
	rst 38h			;b68b
	nop			;b68c
	nop			;b68d
	rst 38h			;b68e
	rst 38h			;b68f
	inc bc			;b690
	add a,b			;b691
	add a,h			;b692
	cp 0c0h			;b693
	add a,b			;b695
	ld a,(hl)		;b696
	inc bc			;b697
	cp 081h			;b698
	nop			;b69a
	inc b			;b69b
	cp 005h			;b69c
	ld a,(hl)		;b69e
	add a,h			;b69f
	ld (hl),b		;b6a0
	ld bc,07f0fh		;b6a1
	inc bc			;b6a4
	rst 38h			;b6a5
	ld (bc),a		;b6a6
	ld c,b			;b6a7
	add a,(hl)		;b6a8
	rst 38h			;b6a9
	ld h,b			;b6aa
	jr nz,lb6ddh		;b6ab
	jr c,lb72bh		;b6ad
	dec b			;b6af
	add a,b			;b6b0
	add a,h			;b6b1
	ret po			;b6b2
	rst 38h			;b6b3
	rst 38h			;b6b4
	rrca			;b6b5
	inc b			;b6b6
	dec b			;b6b7
	add a,e			;b6b8
	rlca			;b6b9
	rst 38h			;b6ba
	rst 38h			;b6bb
	inc bc			;b6bc
	ld a,a			;b6bd
	add a,c			;b6be
	rst 38h			;b6bf
	inc b			;b6c0
	nop			;b6c1
	ex af,af'		;b6c2
	add a,b			;b6c3
	ld (bc),a		;b6c4
	ld (bc),a		;b6c5
	add a,(hl)		;b6c6
	call m,06effh		;b6c7
	ld l,(hl)		;b6ca
	nop			;b6cb
	nop			;b6cc
sub_b6cdh:
	inc bc			;b6cd
	ld a,a			;b6ce
	inc bc			;b6cf
	ld a,d			;b6d0
	ld (bc),a		;b6d1
	nop			;b6d2
	ld (bc),a		;b6d3
	ld (bc),a		;b6d4
	add a,d			;b6d5
	call m,004ffh		;b6d6
	nop			;b6d9
	inc b			;b6da
	rst 38h			;b6db
	adc a,b			;b6dc
lb6ddh:
	cp 0f8h			;b6dd
	nop			;b6df
	nop			;b6e0
	ccf			;b6e1
	rlca			;b6e2
	ld bc,005ffh		;b6e3
	nop			;b6e6
	rlca			;b6e7
	ld a,a			;b6e8
	nop			;b6e9
	add a,c			;b6ea
	jp p,09404h		;b6eb
	add a,e			;b6ee
	nop			;b6ef
	jp (hl)			;b6f0
	jp (hl)			;b6f1
	inc b			;b6f2
	sub h			;b6f3
	ld (bc),a		;b6f4
	ld b,b			;b6f5
	ld (bc),a		;b6f6
	ret p			;b6f7
	ld (bc),a		;b6f8
	ld sp,hl		;b6f9
	ld (bc),a		;b6fa
	sub h			;b6fb
	add a,(hl)		;b6fc
	nop			;b6fd
	sub c			;b6fe
	sub d			;b6ff
	sbc a,d			;b700
	ld b,e			;b701
	ld bc,09403h		;b702
	add a,c			;b705
	ld b,b			;b706
	inc bc			;b707
	ret p			;b708
	add a,c			;b709
	sub b			;b70a
	ld b,040h		;b70b
	sub b			;b70d
	ret po			;b70e
	sbc a,a			;b70f
	sbc a,a			;b710
	ld c,a			;b711
	rrca			;b712
	sub h			;b713
	sub h			;b714
	ret p			;b715
	ret p			;b716
	ld sp,hl		;b717
	sub h			;b718
	ld b,b			;b719
	sub b			;b71a
	sub h			;b71b
	sub h			;b71c
	ld b,b			;b71d
	inc bc			;b71e
	sub h			;b71f
	ld (bc),a		;b720
	ld b,b			;b721
	dec b			;b722
	ret p			;b723
	rlca			;b724
	inc b			;b725
	inc b			;b726
	ret p			;b727
	add a,d			;b728
	ld b,b			;b729
	sub h			;b72a
lb72bh:
	ld b,040h		;b72b
	dec b			;b72d
	rrca			;b72e
	add a,c			;b72f
	jp (hl)			;b730
	rrca			;b731
	sub h			;b732
	inc bc			;b733
	sub b			;b734
	dec b			;b735
	sub h			;b736
	inc bc			;b737
	sub b			;b738
	dec c			;b739
	ld b,b			;b73a
	ld a,(bc)		;b73b
	ret p			;b73c
	add a,h			;b73d
	call p,0f9f9h		;b73e
	call p,0e904h		;b741
	ex af,af'		;b744
	call p,0f004h		;b745
	ld b,040h		;b748
	ld (bc),a		;b74a
	rst 38h			;b74b
	inc b			;b74c
	sub h			;b74d
	ld (bc),a		;b74e
	ld b,b			;b74f
	ld (bc),a		;b750
	rst 38h			;b751
	ld (bc),a		;b752
	sub h			;b753
	ld (bc),a		;b754
	ld b,b			;b755
	add a,c			;b756
	sub b			;b757
	inc bc			;b758
	rrca			;b759
	inc bc			;b75a
	ld b,b			;b75b
	add a,d			;b75c
	call po,00390h		;b75d
	rrca			;b760
	ld (bc),a		;b761
	sub h			;b762
	inc b			;b763
	ld b,b			;b764
	ld a,(bc)		;b765
	rrca			;b766
	add a,e			;b767
	call p,0f9f9h		;b768
	dec b			;b76b
	ld b,b			;b76c
	add a,h			;b76d
	sbc a,c			;b76e
	call po,090e4h		;b76f
	inc b			;b772
	ld b,b			;b773
	nop			;b774
	add a,c			;b775
	jr lb77fh		;b776
	sbc a,b			;b778
	sbc a,e			;b779
	cp 0fch			;b77a
	call m,07ff8h		;b77c
lb77fh:
	ld a,a			;b77f
	ccf			;b780
	ccf			;b781
	ret m			;b782
	ret p			;b783
	ret p			;b784
	rra			;b785
	rra			;b786
	ccf			;b787
	ccf			;b788
	ld a,a			;b789
	ld h,b			;b78a
	ld h,b			;b78b
	rrca			;b78c
	rrca			;b78d
	add a,a			;b78e
	add a,a			;b78f
	inc bc			;b790
	inc bc			;b791
	ret p			;b792
	rst 38h			;b793
	ret nz			;b794
	dec b			;b795
	add a,b			;b796
	add a,h			;b797
	call m,080e0h		;b798
	nop			;b79b
	inc b			;b79c
	add a,b			;b79d
	add a,e			;b79e
	nop			;b79f
	ei			;b7a0
	ei			;b7a1
	dec b			;b7a2
	ld (bc),a		;b7a3
	adc a,b			;b7a4
	cp a			;b7a5
	adc a,a			;b7a6
	add a,e			;b7a7
	cp a			;b7a8
	adc a,a			;b7a9
	add a,e			;b7aa
	add a,b			;b7ab
	nop			;b7ac
	ex af,af'		;b7ad
	add a,b			;b7ae
	add a,c			;b7af
	ret p			;b7b0
	inc bc			;b7b1
	ret nz			;b7b2
	inc bc			;b7b3
	jr nz,lb7b8h		;b7b4
	rst 38h			;b7b6
	dec b			;b7b7
lb7b8h:
	inc bc			;b7b8
	add a,e			;b7b9
	rst 38h			;b7ba
	nop			;b7bb
	inc e			;b7bc
	rlca			;b7bd
	dec e			;b7be
	ld (bc),a		;b7bf
	ld c,b			;b7c0
	add a,(hl)		;b7c1
	or (hl)			;b7c2
	adc a,l			;b7c3
	defb 0fdh,0fbh,0fbh ;illegal sequence	;b7c4
	ld sp,hl		;b7c7
	inc bc			;b7c8
	ret nz			;b7c9
	add a,c			;b7ca
	rra			;b7cb
	inc bc			;b7cc
	ret nz			;b7cd
	rlca			;b7ce
	ld a,a			;b7cf
	ld (bc),a		;b7d0
lb7d1h:
	ret p			;b7d1
	ld (bc),a		;b7d2
	ld e,l			;b7d3
	ld (bc),a		;b7d4
	ret p			;b7d5
	add a,c			;b7d6
	rst 38h			;b7d7
	inc bc			;b7d8
	ret po			;b7d9
	add a,a			;b7da
	ld h,b			;b7db
	add a,b			;b7dc
	jr nz,lb85eh		;b7dd
	ccf			;b7df
	ld h,b			;b7e0
	rra			;b7e1
	add hl,bc		;b7e2
	dec d			;b7e3
	sub b			;b7e4
	rla			;b7e5
	rra			;b7e6
	rra			;b7e7
	djnz lb7f9h		;b7e8
	rra			;b7ea
	add a,b			;b7eb
	rst 38h			;b7ec
	ret c			;b7ed
	ld a,b			;b7ee
	jr lb7d1h		;b7ef
	ret m			;b7f1
	ret m			;b7f2
	ld bc,008ffh		;b7f3
	ld e,b			;b7f6
	add a,l			;b7f7
	rrca			;b7f8
lb7f9h:
	rst 38h			;b7f9
	rlca			;b7fa
	ld a,e			;b7fb
	inc bc			;b7fc
lb7fdh:
	inc bc			;b7fd
	dec sp			;b7fe
	sub c			;b7ff
	nop			;b800
	rlca			;b801
	rlca			;b802
	ex af,af'		;b803
	rrca			;b804
	rlca			;b805
	rlca			;b806
	inc bc			;b807
	nop			;b808
	ret po			;b809
	ret po			;b80a
	djnz lb7fdh		;b80b
	ret po			;b80d
	ret po			;b80e
	ret nz			;b80f
	ld sp,02506h		;b810
	add a,c			;b813
	rst 38h			;b814
	inc bc			;b815
	ret nz			;b816
	add a,c			;b817
	add a,b			;b818
	inc bc			;b819
	ld a,(hl)		;b81a
	add a,d			;b81b
	nop			;b81c
	ld b,b			;b81d
	rlca			;b81e
	ld c,a			;b81f
	ld (bc),a		;b820
	nop			;b821
	adc a,c			;b822
	rst 38h			;b823
	nop			;b824
	nop			;b825
	rst 38h			;b826
	nop			;b827
	nop			;b828
	ld a,a			;b829
	nop			;b82a
	nop			;b82b
	dec b			;b82c
	ld a,a			;b82d
	ld (bc),a		;b82e
	xor b			;b82f
	adc a,c			;b830
	xor c			;b831
	defb 0fdh,00bh,009h ;illegal sequence	;b832
	ld c,c			;b835
	xor e			;b836
	ret c			;b837
	rst 38h			;b838
	nop			;b839
	dec b			;b83a
	ret m			;b83b
	add a,d			;b83c
	ld c,002h		;b83d
	dec b			;b83f
	ld bc,0ff82h		;b840
	ret m			;b843
	inc b			;b844
	dec b			;b845
	ld (bc),a		;b846
	rrca			;b847
	add a,h			;b848
	ld (hl),b		;b849
	rst 38h			;b84a
	nop			;b84b
	nop			;b84c
	inc bc			;b84d
	rst 38h			;b84e
	dec bc			;b84f
	cp e			;b850
	add a,c			;b851
	xor d			;b852
	inc bc			;b853
	ld b,h			;b854
	ld (bc),a		;b855
	nop			;b856
	add a,c			;b857
	rst 38h			;b858
	inc b			;b859
	ret po			;b85a
	ld (bc),a		;b85b
	ccf			;b85c
	ld (bc),a		;b85d
lb85eh:
	ld a,a			;b85e
	adc a,b			;b85f
	pop bc			;b860
lb861h:
	jr c,lb861h		;b861
	ld a,h			;b863
	cp 038h			;b864
lb866h:
	jr c,lb866h		;b866
	inc bc			;b868
	ret nz			;b869
	add a,c			;b86a
	ret m			;b86b
	inc bc			;b86c
	ret nz			;b86d
	adc a,d			;b86e
	cp 0fch			;b86f
	ret p			;b871
	jp 0f202h		;b872
	jp nz,0ff02h		;b875
	nop			;b878
	ld b,0fah		;b879
	add a,c			;b87b
	nop			;b87c
	ld b,0d0h		;b87d
	add a,d			;b87f
	rst 38h			;b880
	add a,b			;b881
	dec b			;b882
	ld b,003h		;b883
	add hl,bc		;b885
	inc b			;b886
	ret nc			;b887
	adc a,a			;b888
	call po,04444h		;b889
	call po,07fc0h		;b88c
	ld a,a			;b88f
	ccf			;b890
	rra			;b891
	rrca			;b892
	rra			;b893
	jr nz,lb912h		;b894
	cp 038h			;b896
	inc bc			;b898
	nop			;b899
	sbc a,c			;b89a
	rst 0			;b89b
	ld a,00eh		;b89c
	ld c,016h		;b89e
	ld d,029h		;b8a0
	rst 38h			;b8a2
	add a,c			;b8a3
	ld bc,00103h		;b8a4
	ld bc,0f8fch		;b8a7
	ret p			;b8aa
	ret m			;b8ab
	inc b			;b8ac
	nop			;b8ad
	nop			;b8ae
	rst 38h			;b8af
	nop			;b8b0
	nop			;b8b1
	call m,00506h		;b8b2
	ret m			;b8b5
	ld (bc),a		;b8b6
	call m,0fe03h		;b8b7
	adc a,a			;b8ba
	ld a,(hl)		;b8bb
	ld a,000h		;b8bc
	ld e,08eh		;b8be
	adc a,(hl)		;b8c0
	ld c,0f8h		;b8c1
	dec b			;b8c3
	rlca			;b8c4
	dec c			;b8c5
	add hl,bc		;b8c6
	add hl,bc		;b8c7
	rrca			;b8c8
	add hl,bc		;b8c9
	ex af,af'		;b8ca
	add a,b			;b8cb
	sub b			;b8cc
	ld a,a			;b8cd
	ccf			;b8ce
	ccf			;b8cf
	cp 0feh			;b8d0
	inc bc			;b8d2
	inc bc			;b8d3
	rlca			;b8d4
	cp 0feh			;b8d5
	add a,b			;b8d7
	add a,b			;b8d8
	ret nz			;b8d9
	ret nz			;b8da
	ret po			;b8db
	ret po			;b8dc
	nop			;b8dd
	rlca			;b8de
	ld b,b			;b8df
	add a,c			;b8e0
	rrca			;b8e1
	inc bc			;b8e2
	call p,0f083h		;b8e3
	ld b,d			;b8e6
	ld (bc),a		;b8e7
	inc b			;b8e8
	jp p,09282h		;b8e9
	jr nz,lb8f4h		;b8ec
	cpl			;b8ee
	add a,d			;b8ef
	ld b,d			;b8f0
	ld (bc),a		;b8f1
	ld b,0f2h		;b8f2
lb8f4h:
	add a,e			;b8f4
	call p,0fef9h		;b8f5
	inc b			;b8f8
	ld sp,hl		;b8f9
	inc bc			;b8fa
	cp 008h			;b8fb
	jp (hl)			;b8fd
	rlca			;b8fe
	sub h			;b8ff
	rrca			;b900
	ld b,b			;b901
	add a,d			;b902
	sub b			;b903
	ld b,b			;b904
	ld b,0f0h		;b905
	add a,c			;b907
	inc b			;b908
	inc bc			;b909
	ret p			;b90a
	add hl,bc		;b90b
	sbc a,(hl)		;b90c
	inc bc			;b90d
	ld c,c			;b90e
	ld b,040h		;b90f
	adc a,e			;b911
lb912h:
	jp (hl)			;b912
	sub h			;b913
	rrca			;b914
	ld b,d			;b915
	jp (hl)			;b916
	sub h			;b917
	rrca			;b918
	ld b,d			;b919
	sbc a,(hl)		;b91a
	sbc a,(hl)		;b91b
	ld c,c			;b91c
	inc bc			;b91d
	inc b			;b91e
	add a,l			;b91f
	ret p			;b920
	ld c,a			;b921
	and e			;b922
	rst 38h			;b923
	sub h			;b924
	ld b,0e9h		;b925
	add a,c			;b927
	sub b			;b928
	inc bc			;b929
	and e			;b92a
	add a,c			;b92b
	ld (0f20ch),a		;b92c
	ld (bc),a		;b92f
	ld (de),a		;b930
	ld (bc),a		;b931
	ld (0f105h),a		;b932
	add a,e			;b935
	ld hl,03131h		;b936
	inc c			;b939
	pop af			;b93a
	ex af,af'		;b93b
	ret p			;b93c
	add a,c			;b93d
	sub b			;b93e
	rlca			;b93f
	ret p			;b940
	add a,c			;b941
	ld b,b			;b942
	ld (de),a		;b943
	ret p			;b944
	add a,h			;b945
	ld c,a			;b946
	rrca			;b947
	rrca			;b948
	jp (hl)			;b949
	ld b,094h		;b94a
	ld (bc),a		;b94c
	ld b,b			;b94d
	inc bc			;b94e
	jp (hl)			;b94f
	inc bc			;b950
	inc b			;b951
	dec b			;b952
	sbc a,(hl)		;b953
	inc b			;b954
	ld c,c			;b955
	add a,c			;b956
	call p,0f003h		;b957
	adc a,c			;b95a
	ret m			;b95b
	cp 0f8h			;b95c
	push af			;b95e
	ld (0f0f0h),a		;b95f
	ld b,b			;b962
	sub h			;b963
	dec b			;b964
	ld b,b			;b965
	ld b,0f0h		;b966
	add a,e			;b968
	sub b			;b969
	ld sp,hl		;b96a
	call p,0f003h		;b96b
	add a,h			;b96e
	ld c,a			;b96f
	ld b,b			;b970
	sub b			;b971
	sub b			;b972
	inc bc			;b973
	and e			;b974
	sub a			;b975
	ld (0fdf5h),hl		;b976
	defb 0fdh,0f8h,0feh ;illegal sequence	;b979
	cp 0f8h			;b97c
	cp 0f8h			;b97e
	ret m			;b980
	defb 0fdh,0f5h,0f1h ;illegal sequence	;b981
	ld (de),a		;b984
	inc hl			;b985
	inc hl			;b986
	pop af			;b987
	pop af			;b988
	jr nz,lb9c4h		;b989
	xor (hl)		;b98b
	add hl,sp		;b98c
	inc bc			;b98d
	ld b,d			;b98e
	sub c			;b98f
	ld bc,04090h		;b990
	ld b,b			;b993
	sub h			;b994
	sub h			;b995
	jp (hl)			;b996
	jp (hl)			;b997
	sub h			;b998
	jp (hl)			;b999
	sub h			;b99a
	rrca			;b99b
	ld b,d			;b99c
	jp (hl)			;b99d
	sub h			;b99e
	rrca			;b99f
	ld b,d			;b9a0
	inc b			;b9a1
	sub h			;b9a2
	inc bc			;b9a3
	ld b,b			;b9a4
	ld (bc),a		;b9a5
	ret p			;b9a6
	add a,e			;b9a7
	sub h			;b9a8
	jp (hl)			;b9a9
	sub h			;b9aa
	inc b			;b9ab
	ld b,b			;b9ac
	ld (bc),a		;b9ad
	ld (09403h),a		;b9ae
	adc a,b			;b9b1
	ld b,b			;b9b2
	ret p			;b9b3
	ret p			;b9b4
	sub b			;b9b5
	ret po			;b9b6
	sub b			;b9b7
	ld b,b			;b9b8
	ld b,b			;b9b9
	inc bc			;b9ba
	ret p			;b9bb
	add a,c			;b9bc
	jp (hl)			;b9bd
	inc bc			;b9be
	sub h			;b9bf
	adc a,l			;b9c0
	ret m			;b9c1
	cp 0f8h			;b9c2
lb9c4h:
	push af			;b9c4
	sub d			;b9c5
	xor c			;b9c6
	inc d			;b9c7
	call p,0f0f0h		;b9c8
	sub b			;b9cb
	ret p			;b9cc
	sub h			;b9cd
	dec b			;b9ce
	ld b,b			;b9cf
	sub e			;b9d0
	ret p			;b9d1
	call p,04090h		;b9d2
	add a,b			;b9d5
	ret nc			;b9d6
	ret p			;b9d7
	ret p			;b9d8
	call p,092f4h		;b9d9
	sub d			;b9dc
	ld b,c			;b9dd
	call p,0f0f0h		;b9de
	ld b,b			;b9e1
	ret p			;b9e2
	ret p			;b9e3
	inc bc			;b9e4
	jp (hl)			;b9e5
	inc bc			;b9e6
	inc b			;b9e7
	add a,l			;b9e8
	ret po			;b9e9
	ld (bc),a		;b9ea
	sub e			;b9eb
	jp pe,00493h		;b9ec
	ld b,d			;b9ef
	adc a,h			;b9f0
	sub h			;b9f1
	sub b			;b9f2
	ld b,b			;b9f3
	ld b,b			;b9f4
	ret p			;b9f5
	ld b,b			;b9f6
	ld b,b			;b9f7
	ret p			;b9f8
	sub b			;b9f9
	cp 0feh			;b9fa
	ld sp,hl		;b9fc
	rrca			;b9fd
	call p,0f383h		;b9fe
	sub d			;ba01
	jr nz,lba08h		;ba02
	cpl			;ba04
	ld b,042h		;ba05
	nop			;ba07
lba08h:
	sub l			;ba08
	ex af,af'		;ba09
	inc e			;ba0a
	sbc a,(hl)		;ba0b
	rrca			;ba0c
	add hl,bc		;ba0d
	rrca			;ba0e
	inc e			;ba0f
	inc e			;ba10
	add a,b			;ba11
	ld (hl),e		;ba12
	rrca			;ba13
	rrca			;ba14
	xor a			;ba15
	xor a			;ba16
	ret po			;ba17
	rst 38h			;ba18
	ld a,e			;ba19
	dec e			;ba1a
	call p,0ff6eh		;ba1b
	inc bc			;ba1e
	ld e,a			;ba1f
	add a,l			;ba20
	sbc a,(hl)		;ba21
	inc a			;ba22
	ld a,h			;ba23
	di			;ba24
	rst 38h			;ba25
	inc bc			;ba26
	ret pe			;ba27
	adc a,b			;ba28
	ccf			;ba29
	inc sp			;ba2a
	inc sp			;ba2b
	or e			;ba2c
	or e			;ba2d
	ld l,l			;ba2e
	ld hl,00321h		;ba2f
	ret p			;ba32
	add a,l			;ba33
	rst 38h			;ba34
	ld a,a			;ba35
	ld a,a			;ba36
	pop de			;ba37
	pop de			;ba38
	inc bc			;ba39
	ret m			;ba3a
	add a,l			;ba3b
	nop			;ba3c
	ld bc,0edffh		;ba3d
	defb 0edh ;next byte illegal after ed	;ba40
	inc bc			;ba41
	ret p			;ba42
	add a,l			;ba43
	nop			;ba44
	ret nz			;ba45
	rst 38h			;ba46
	ret p			;ba47
	rst 38h			;ba48
	ld b,087h		;ba49
	add a,a			;ba4b
	add a,c			;ba4c
	rst 38h			;ba4d
	rst 38h			;ba4e
	ld (bc),a		;ba4f
	call m,0ff82h		;ba50
	inc bc			;ba53
	ld e,b			;ba54
	adc a,b			;ba55
	inc e			;ba56
	ret po			;ba57
	rlca			;ba58
	ld b,00fh		;ba59
	rra			;ba5b
	ld e,013h		;ba5c
	inc bc			;ba5e
	ld d,h			;ba5f
	add a,c			;ba60
	rst 38h			;ba61
	inc bc			;ba62
	ld l,08ah		;ba63
	rst 38h			;ba65
	pop bc			;ba66
	add a,e			;ba67
	rlca			;ba68
	rrca			;ba69
	sbc a,c			;ba6a
	pop af			;ba6b
	ld d,c			;ba6c
	ld d,c			;ba6d
	ret p			;ba6e
	inc bc			;ba6f
	ret nz			;ba70
	adc a,(hl)		;ba71
	call m,000feh		;ba72
	call m,0ffffh		;ba75
	rra			;ba78
	inc a			;ba79
	ret p			;ba7a
	ret nz			;ba7b
	nop			;ba7c
	nop			;ba7d
	ret p			;ba7e
	ret nz			;ba7f
	add hl,bc		;ba80
	nop			;ba81
	inc bc			;ba82
	rra			;ba83
	add a,h			;ba84
	rst 38h			;ba85
	nop			;ba86
	ret p			;ba87
	ret nz			;ba88
	inc bc			;ba89
	nop			;ba8a
	sub l			;ba8b
	ret nz			;ba8c
	ret po			;ba8d
	ret p			;ba8e
	add a,b			;ba8f
	add a,b			;ba90
	rst 38h			;ba91
	ld d,d			;ba92
	rst 38h			;ba93
	rlca			;ba94
	rlca			;ba95
	nop			;ba96
	ld bc,0ffffh		;ba97
	ld c,d			;ba9a
	rst 38h			;ba9b
	ret nc			;ba9c
	ret nc			;ba9d
	nop			;ba9e
	xor a			;ba9f
	nop			;baa0
	inc b			;baa1
	cp 081h			;baa2
	nop			;baa4
	add hl,bc		;baa5
	ld d,b			;baa6
	ld (bc),a		;baa7
	ld d,c			;baa8
	sub (hl)		;baa9
	pop af			;baaa
	sbc a,a			;baab
	rrca			;baac
	rlca			;baad
	add a,e			;baae
	pop bc			;baaf
	dec b			;bab0
	add a,l			;bab1
	push hl			;bab2
	rst 38h			;bab3
	ret po			;bab4
	rst 38h			;bab5
	ret nz			;bab6
	ret nz			;bab7
	ld h,c			;bab8
	inc sp			;bab9
	inc c			;baba
	inc a			;babb
	ccf			;babc
	nop			;babd
	ccf			;babe
	nop			;babf
	inc b			;bac0
	rst 38h			;bac1
	inc b			;bac2
	nop			;bac3
	add a,d			;bac4
	ret po			;bac5
	ld bc,00304h		;bac6
	sbc a,d			;bac9
	rst 38h			;baca
	inc e			;bacb
	rst 38h			;bacc
	ret p			;bacd
	add a,0cah		;bace
	ei			;bad0
	ei			;bad1
	jp m,00f9bh		;bad2
	ld l,a			;bad5
	xor a			;bad6
	cp a			;bad7
	rst 18h			;bad8
	ld d,e			;bad9
	ld d,e			;bada
	ld (hl),e		;badb
	sbc a,(hl)		;badc
	call m,0cdcch		;badd
	call 084b6h		;bae0
	add a,h			;bae3
	inc bc			;bae4
	ld a,087h		;bae5
	ld sp,hl		;bae7
	rst 20h			;bae8
	rst 38h			;bae9
	rrca			;baea
	rst 38h			;baeb
	ld d,c			;baec
	rst 38h			;baed
	inc b			;baee
	ret nz			;baef
	adc a,b			;baf0
	rst 38h			;baf1
	ld d,c			;baf2
	call m,0c0f0h		;baf3
	ret p			;baf6
	ccf			;baf7
	rst 38h			;baf8
	dec b			;baf9
	nop			;bafa
	add a,h			;bafb
	inc bc			;bafc
	add a,b			;bafd
	nop			;bafe
	ret p			;baff
	inc b			;bb00
	nop			;bb01
	ld (bc),a		;bb02
	rst 38h			;bb03
	inc bc			;bb04
	cp 003h			;bb05
	nop			;bb07
	xor l			;bb08
	rst 38h			;bb09
	inc a			;bb0a
	jp 04242h		;bb0b
	rst 38h			;bb0e
	nop			;bb0f
	ld a,07fh		;bb10
	nop			;bb12
	add a,b			;bb13
	inc sp			;bb14
	ld h,c			;bb15
	rst 38h			;bb16
	ld bc,0e0fch		;bb17
	cp 0f8h			;bb1a
	ret nz			;bb1c
	ld bc,0feffh		;bb1d
	ret m			;bb20
	call p,0e1e2h		;bb21
	pop de			;bb24
	adc a,b			;bb25
	rst 38h			;bb26
	ld a,a			;bb27
	rra			;bb28
	cpl			;bb29
	ld b,a			;bb2a
	add a,a			;bb2b
	adc a,e			;bb2c
	ld de,0ffffh		;bb2d
	defb 0fdh,0fdh,0d8h ;illegal sequence	;bb30
	ret z			;bb33
	call nz,00484h		;bb34
	rst 38h			;bb37
	adc a,h			;bb38
	rrca			;bb39
	inc bc			;bb3a
	ld a,a			;bb3b
	ld a,0ffh		;bb3c
	rst 38h			;bb3e
	cp a			;bb3f
	cp a			;bb40
	dec de			;bb41
	inc de			;bb42
	inc hl			;bb43
	ld hl,0ff04h		;bb44
	add a,h			;bb47
	adc a,003h		;bb48
	inc bc			;bb4a
	jr c,lbb51h		;bb4b
	rst 38h			;bb4d
	add a,h			;bb4e
	ret p			;bb4f
	ret nz			;bb50
lbb51h:
	ld a,a			;bb51
	ret p			;bb52
	inc b			;bb53
	rst 38h			;bb54
	add a,h			;bb55
	rst 30h			;bb56
	rst 8			;bb57
	rra			;bb58
	inc c			;bb59
	dec b			;bb5a
	rst 38h			;bb5b
	add a,e			;bb5c
	call m,000e0h		;bb5d
	inc bc			;bb60
	rst 38h			;bb61
	adc a,l			;bb62
	ei			;bb63
	rst 20h			;bb64
	rst 0			;bb65
	add a,b			;bb66
	rra			;bb67
	rst 38h			;bb68
	rst 38h			;bb69
	jp (hl)			;bb6a
	add a,c			;bb6b
	ld a,(hl)		;bb6c
	ld a,(hl)		;bb6d
	add a,e			;bb6e
	ld a,b			;bb6f
	inc b			;bb70
	rst 38h			;bb71
	adc a,d			;bb72
	call m,0c0f0h		;bb73
	call m,0ffffh		;bb76
	ld sp,hl		;bb79
	sbc a,0deh		;bb7a
	ld sp,hl		;bb7c
	inc b			;bb7d
	rst 38h			;bb7e
	add a,h			;bb7f
	sbc a,a			;bb80
	ld a,e			;bb81
	ld a,e			;bb82
	sbc a,a			;bb83
	ex af,af'		;bb84
	rst 38h			;bb85
	add a,h			;bb86
	add a,c			;bb87
	push de			;bb88
	rst 38h			;bb89
	cp 003h			;bb8a
	call m,0fe03h		;bb8c
	dec b			;bb8f
	rst 38h			;bb90
	add a,e			;bb91
	call m,0c0f0h		;bb92
	dec b			;bb95
	rst 38h			;bb96
	adc a,h			;bb97
	ccf			;bb98
	rrca			;bb99
	inc bc			;bb9a
	add a,b			;bb9b
	add a,b			;bb9c
	ld bc,00301h		;bb9d
	inc bc			;bba0
	rlca			;bba1
	rlca			;bba2
	nop			;bba3
	inc bc			;bba4
	ret p			;bba5
	ld (bc),a		;bba6
	ret po			;bba7
	ld (bc),a		;bba8
	ret nz			;bba9
	ld (bc),a		;bbaa
	nop			;bbab
	inc bc			;bbac
	rst 38h			;bbad
	sbc a,h			;bbae
	ret nz			;bbaf
	sbc a,a			;bbb0
	xor b			;bbb1
	ld sp,hl		;bbb2
	ret m			;bbb3
	ret m			;bbb4
	call m,000fch		;bbb5
	or a			;bbb8
	scf			;bbb9
	rst 38h			;bbba
	call m,0c0f0h		;bbbb
	call m,0c0f0h		;bbbe
	call m,03fffh		;bbc1
	rrca			;bbc4
	inc bc			;bbc5
	ld a,00eh		;bbc6
	ld (bc),a		;bbc8
	ld a,000h		;bbc9
	inc bc			;bbcb
	ret p			;bbcc
	ld (bc),a		;bbcd
	rlca			;bbce
	inc bc			;bbcf
	inc bc			;bbd0
	add a,c			;bbd1
	defb 0fdh,005h,0f8h ;illegal sequence	;bbd2
	add a,c			;bbd5
	ld e,b			;bbd6
	nop			;bbd7
	ld (bc),a		;bbd8
	jp (hl)			;bbd9
	ld (bc),a		;bbda
	sub h			;bbdb
	ld (bc),a		;bbdc
	call p,0e481h		;bbdd
	inc bc			;bbe0
	sub h			;bbe1
	sub b			;bbe2
	sub b			;bbe3
	rrca			;bbe4
	ret m			;bbe5
	dec e			;bbe6
	ld hl,0f3f3h		;bbe7
	jp p,0f6f1h		;bbea
	or 0a3h			;bbed
	ld (0f321h),a		;bbef
	jp p,0f103h		;bbf2
	adc a,e			;bbf5
	ld (01f21h),a		;bbf6
	ret m			;bbf9
	ret m			;bbfa
	defb 0fdh,0fdh,0f5h ;illegal sequence	;bbfb
	cp 0f8h			;bbfe
	push af			;bc00
	inc bc			;bc01
	ret pe			;bc02
	ld (bc),a		;bc03
	push de			;bc04
	add a,e			;bc05
	rst 38h			;bc06
	ret c			;bc07
	rst 38h			;bc08
	inc b			;bc09
	push de			;bc0a
	ld (bc),a		;bc0b
	push af			;bc0c
	add a,d			;bc0d
	push de			;bc0e
	rst 38h			;bc0f
	inc bc			;bc10
	ret c			;bc11
	dec b			;bc12
	push af			;bc13
	dec b			;bc14
	ret c			;bc15
	sbc a,e			;bc16
	ld e,l			;bc17
	push af			;bc18
	push af			;bc19
	sub h			;bc1a
	sub h			;bc1b
	ret p			;bc1c
	defb 0fdh,0fdh,032h ;illegal sequence	;bc1d
	and e			;bc20
	rst 38h			;bc21
	sub h			;bc22
	ld b,b			;bc23
	call p,090e4h		;bc24
	sub b			;bc27
	ld b,b			;bc28
	ret p			;bc29
	ld sp,hl		;bc2a
	call p,0f0f0h		;bc2b
	ret c			;bc2e
	rst 38h			;bc2f
	inc b			;bc30
	inc b			;bc31
	inc b			;bc32
	ld sp,hl		;bc33
	adc a,e			;bc34
	defb 0fdh,0feh,0f8h ;illegal sequence	;bc35
	jp (iy)			;bc38
	jp (hl)			;bc3a
	nop			;bc3b
	ld (hl),010h		;bc3c
	jp (hl)			;bc3e
	jp (hl)			;bc3f
	inc bc			;bc40
	sub h			;bc41
	add a,c			;bc42
	sub b			;bc43
	rrca			;bc44
	sub h			;bc45
	inc bc			;bc46
	sbc a,(hl)		;bc47
	add a,e			;bc48
	add hl,bc		;bc49
	call p,004f4h		;bc4a
	sub h			;bc4d
	inc b			;bc4e
	ret p			;bc4f
	add a,c			;bc50
	jp p,0f104h		;bc51
	add a,e			;bc54
	ld (02121h),a		;bc55
	dec b			;bc58
	pop af			;bc59
	add a,c			;bc5a
	ld hl,01f04h		;bc5b
	sub d			;bc5e
	jp (hl)			;bc5f
	sub b			;bc60
	ld b,b			;bc61
	rrca			;bc62
	rrca			;bc63
	pop af			;bc64
	jp p,0faf3h		;bc65
	jp m,0f2f3h		;bc68
	jp p,0f8f1h		;bc6b
	defb 0fdh,0f5h,0feh ;illegal sequence	;bc6e
	dec b			;bc71
	ld sp,hl		;bc72
	add a,(hl)		;bc73
	call p,0f0f0h		;bc74
	cp 0feh			;bc77
	ld sp,hl		;bc79
	inc bc			;bc7a
	call p,0f984h		;bc7b
	jp (hl)			;bc7e
	sub h			;bc7f
	sub h			;bc80
	dec bc			;bc81
	ld b,b			;bc82
	adc a,l			;bc83
	call p,0f9feh		;bc84
	ld sp,hl		;bc87
	ret p			;bc88
	ret p			;bc89
	call po,0fefeh		;bc8a
	ret m			;bc8d
	defb 0fdh,0f8h,0f8h ;illegal sequence	;bc8e
	inc bc			;bc91
	cp 082h			;bc92
	ret m			;bc94
	defb 0fdh,003h,0f8h ;illegal sequence	;bc95
	add a,c			;bc98
	cp 004h			;bc99
	ret m			;bc9b
	add a,h			;bc9c
	defb 0fdh,0f5h,0feh ;illegal sequence	;bc9d
	ret m			;bca0
	dec bc			;bca1
	push af			;bca2
	ld (bc),a		;bca3
	cp 083h			;bca4
	ld sp,hl		;bca6
	call p,003f4h		;bca7
	cp 083h			;bcaa
	ret p			;bcac
	and e			;bcad
	ld h,e			;bcae
	inc bc			;bcaf
	jp (hl)			;bcb0
	inc b			;bcb1
	sbc a,a			;bcb2
	ld (bc),a		;bcb3
	cp 002h			;bcb4
	jp (hl)			;bcb6
	inc b			;bcb7
	sbc a,a			;bcb8
	ld (bc),a		;bcb9
	rst 28h			;bcba
	ld b,09fh		;bcbb
	inc bc			;bcbd
	cp 003h			;bcbe
	ld sp,hl		;bcc0
	add a,l			;bcc1
	jp (hl)			;bcc2
	sub h			;bcc3
	sub h			;bcc4
	call po,003feh		;bcc5
	ld sp,hl		;bcc8
	ld (bc),a		;bcc9
	sub h			;bcca
	inc bc			;bccb
	ld b,b			;bccc
	ld (bc),a		;bccd
	ret p			;bcce
	add a,c			;bccf
	cp 003h			;bcd0
	ret m			;bcd2
	ld (bc),a		;bcd3
	defb 0fdh,002h,0f5h ;illegal sequence	;bcd4
	add a,c			;bcd7
	cp 003h			;bcd8
	ret m			;bcda
	ld (bc),a		;bcdb
	defb 0fdh,003h,0f5h ;illegal sequence	;bcdc
	add a,l			;bcdf
	cp 0f8h			;bce0
	ret m			;bce2
	defb 0fdh,0fdh,007h ;illegal sequence	;bce3
	push af			;bce6
	add a,c			;bce7
	ret c			;bce8
	inc bc			;bce9
	push af			;bcea
	add a,l			;bceb
	cp 0f8h			;bcec
	ret m			;bcee
	defb 0fdh,0fdh,006h ;illegal sequence	;bcef
	push af			;bcf2
	add a,e			;bcf3
	push de			;bcf4
	ld e,a			;bcf5
	push de			;bcf6
	ld b,0f8h		;bcf7
	add a,d			;bcf9
	ret pe			;bcfa
	ret c			;bcfb
	rlca			;bcfc
	ret m			;bcfd
	ld b,0fdh		;bcfe
	rlca			;bd00
	cp 083h			;bd01
	ret m			;bd03
	defb 0fdh,0f5h,003h ;illegal sequence	;bd04
	cp 086h			;bd07
	ret m			;bd09
	defb 0fdh,0fdh,015h ;illegal sequence	;bd0a
	sub 0e8h		;bd0d
	dec b			;bd0f
	di			;bd10
	ld (bc),a		;bd11
	cp 081h			;bd12
	jp (hl)			;bd14
	inc bc			;bd15
	jp m,03182h		;bd16
	ld h,c			;bd19
	dec b			;bd1a
	or 083h			;bd1b
	jp m,06131h		;bd1d
	add hl,bc		;bd20
	or 085h			;bd21
	ld sp,hl		;bd23
	ret po			;bd24
	ret p			;bd25
	ret p			;bd26
	cp 015h			;bd27
	ld sp,hl		;bd29
	add a,e			;bd2a
	di			;bd2b
	ld a,(00643h)		;bd2c
	ld b,d			;bd2f
	add a,(hl)		;bd30
	and e			;bd31
	ld a,(de)		;bd32
	di			;bd33
	jp p,092f2h		;bd34
	dec b			;bd37
	ld bc,0f503h		;bd38
	add a,h			;bd3b
	ret p			;bd3c
	ld b,b			;bd3d
	sub b			;bd3e
	sub b			;bd3f
	dec b			;bd40
	ld b,b			;bd41
	inc b			;bd42
	ld sp,hl		;bd43
	inc bc			;bd44
	sub h			;bd45
	add a,c			;bd46
	ld b,b			;bd47
	inc b			;bd48
	ld sp,hl		;bd49
	inc bc			;bd4a
	sub h			;bd4b
	sub c			;bd4c
	ld b,b			;bd4d
	ld (0a132h),a		;bd4e
	ccf			;bd51
	jp p,042f2h		;bd52
	ld (bc),a		;bd55
	add hl,bc		;bd56
	add hl,bc		;bd57
	ld sp,la1a1h		;bd58
	ld hl,0f1f1h		;bd5b
	nop			;bd5e
	inc b			;bd5f
	rst 38h			;bd60
	ld (bc),a		;bd61
	ld a,a			;bd62
	dec b			;bd63
	rst 38h			;bd64
	add a,c			;bd65
	rlca			;bd66
	inc bc			;bd67
	ld a,a			;bd68
	dec b			;bd69
	and h			;bd6a
	inc bc			;bd6b
	ld a,a			;bd6c
	add a,c			;bd6d
	ld (hl),b		;bd6e
	nop			;bd6f
	dec b			;bd70
	ld sp,hl		;bd71
	ld b,0f4h		;bd72
	adc a,l			;bd74
	ld sp,hl		;bd75
	sub h			;bd76
	ld b,b			;bd77
	rrca			;bd78
	sub c			;bd79
	sub d			;bd7a
	ld c,d			;bd7b
	inc bc			;bd7c
	ld bc,04090h		;bd7d
	rrca			;bd80
	rrca			;bd81
lbd82h:
	nop			;bd82
	ld (bc),a		;bd83
	cp 002h			;bd84
	call m,0f802h		;bd86
	ld (bc),a		;bd89
	ret p			;bd8a
	inc bc			;bd8b
	ret po			;bd8c
	add a,h			;bd8d
	ret p			;bd8e
	ret po			;bd8f
	ret po			;bd90
	rst 38h			;bd91
	inc bc			;bd92
	ret m			;bd93
	rlca			;bd94
	ret po			;bd95
	rlca			;bd96
	add a,b			;bd97
	add a,d			;bd98
	ret p			;bd99
	nop			;bd9a
	inc b			;bd9b
	call m,00006h		;bd9c
	sub h			;bd9f
	ld bc,00300h		;bda0
	inc bc			;bda3
	ld a,a			;bda4
	rlca			;bda5
	or 0f6h			;bda6
	call pe,0f80ch		;bda8
	ret m			;bdab
	ret p			;bdac
	ret p			;bdad
	ret po			;bdae
	ret po			;bdaf
	ret nz			;bdb0
	ret nz			;bdb1
	add a,b			;bdb2
	add a,b			;bdb3
	ex af,af'		;bdb4
	nop			;bdb5
	ld (bc),a		;bdb6
	cp 081h			;bdb7
	add a,003h		;bdb9
	sub 085h		;bdbb
	add a,0feh		;bdbd
	ret po			;bdbf
	ret po			;bdc0
	ret nz			;bdc1
	inc bc			;bdc2
	ret po			;bdc3
	add a,c			;bdc4
	ld a,a			;bdc5
	inc bc			;bdc6
	nop			;bdc7
	adc a,(hl)		;bdc8
	ret po			;bdc9
	ld h,b			;bdca
	ret nz			;bdcb
	add a,b			;bdcc
	nop			;bdcd
	nop			;bdce
	cp 0feh			;bdcf
	ccf			;bdd1
	add a,b			;bdd2
	ld bc,0f001h		;bdd3
	ret p			;bdd6
	inc b			;bdd7
	rst 38h			;bdd8
	inc b			;bdd9
	nop			;bdda
	ld (bc),a		;bddb
	rst 38h			;bddc
	add a,(hl)		;bddd
	rrca			;bdde
	sbc a,a			;bddf
	inc (hl)		;bde0
	ld c,h			;bde1
	ld h,h			;bde2
	exx			;bde3
	ld b,0e7h		;bde4
	adc a,(hl)		;bde6
	ld a,a			;bde7
	ccf			;bde8
	ld (01913h),a		;bde9
	ld c,0f0h		;bdec
	nop			;bdee
	ret p			;bdef
	rst 38h			;bdf0
	ccf			;bdf1
	ld a,a			;bdf2
	ld a,b			;bdf3
	rlca			;bdf4
	inc bc			;bdf5
	inc b			;bdf6
	add a,c			;bdf7
	call m,08006h		;bdf8
	add a,(hl)		;bdfb
	nop			;bdfc
	ccf			;bdfd
	rst 38h			;bdfe
	nop			;bdff
	nop			;be00
	rst 38h			;be01
	inc bc			;be02
	ld h,(hl)		;be03
	inc b			;be04
	nop			;be05
	add a,l			;be06
	rst 38h			;be07
	ld l,(hl)		;be08
	ld l,(hl)		;be09
	nop			;be0a
	nop			;be0b
	inc bc			;be0c
	rst 38h			;be0d
	rlca			;be0e
	nop			;be0f
	add a,c			;be10
	rst 38h			;be11
	inc bc			;be12
	ld a,(hl)		;be13
	ld (bc),a		;be14
	nop			;be15
	inc bc			;be16
	rst 38h			;be17
	ld (bc),a		;be18
	nop			;be19
	add a,h			;be1a
	sbc a,h			;be1b
	sub h			;be1c
	sub h			;be1d
	sbc a,h			;be1e
	inc bc			;be1f
	nop			;be20
	dec b			;be21
	rst 38h			;be22
	ld b,080h		;be23
	adc a,d			;be25
	rst 38h			;be26
	ld a,a			;be27
	ld a,a			;be28
	ccf			;be29
	ccf			;be2a
	rra			;be2b
	rst 38h			;be2c
	ret po			;be2d
	rst 38h			;be2e
	rst 38h			;be2f
	inc b			;be30
	inc h			;be31
	ld (bc),a		;be32
	rst 38h			;be33
	ld (bc),a		;be34
	nop			;be35
	add a,a			;be36
	cp 0fch			;be37
	ret m			;be39
	ret p			;be3a
	ret po			;be3b
	ret nz			;be3c
	ret nz			;be3d
	nop			;be3e
	ld a,(bc)		;be3f
	ld sp,hl		;be40
	adc a,c			;be41
	ret p			;be42
	jp m,0f0f3h		;be43
	sub h			;be46
	sub h			;be47
	add hl,bc		;be48
	inc b			;be49
	jp (hl)			;be4a
	inc bc			;be4b
	sub h			;be4c
	add a,h			;be4d
	ld c,a			;be4e
	nop			;be4f
	nop			;be50
	jp (hl)			;be51
	dec b			;be52
	sub h			;be53
	add a,h			;be54
	nop			;be55
	sub h			;be56
	sub h			;be57
	sub b			;be58
	inc b			;be59
	ld c,a			;be5a
	dec bc			;be5b
	sub b			;be5c
	ld d,094h		;be5d
	dec bc			;be5f
	ld b,b			;be60
	add a,e			;be61
	jp (hl)			;be62
	sub h			;be63
	sub h			;be64
	dec b			;be65
	ret p			;be66
	rlca			;be67
	ld b,b			;be68
	add a,l			;be69
	ret p			;be6a
	and e			;be6b
	or 04fh			;be6c
	sub h			;be6e
	ex af,af'		;be6f
	ld b,b			;be70
	ld (bc),a		;be71
	adc a,a			;be72
	ld (bc),a		;be73
	ret pe			;be74
	sub b			;be75
	add a,l			;be76
	defb 0fdh,0d6h,0d3h ;illegal sequence	;be77
	and l			;be7a
	add a,e			;be7b
	jp pe,083eah		;be7c
	jp nc,0d3d1h		;be7f
	jp c,0d653h		;be82
	add a,c			;be85
	inc bc			;be86
	add a,l			;be87
	ld (bc),a		;be88
	push af			;be89
	add a,h			;be8a
	out (0d6h),a		;be8b
	ret c			;be8d
	add a,l			;be8e
	inc bc			;be8f
	push de			;be90
	adc a,c			;be91
	push af			;be92
	ld sp,hl		;be93
	cp 0feh			;be94
	ld sp,hl		;be96
	call p,0d8f0h		;be97
	ret c			;be9a
	inc b			;be9b
	sbc a,(hl)		;be9c
	add a,d			;be9d
	call po,00694h		;be9e
	inc b			;bea1
	add a,l			;bea2
	ret po			;bea3
	ld b,b			;bea4
	ld b,b			;bea5
	sbc a,a			;bea6
	sbc a,a			;bea7
	inc bc			;bea8
	jp (hl)			;bea9
	rlca			;beaa
	inc b			;beab
	add a,(hl)		;beac
	ret po			;bead
	sub b			;beae
	ld b,b			;beaf
	ld b,b			;beb0
	sbc a,a			;beb1
	sbc a,a			;beb2
	inc bc			;beb3
	jp (hl)			;beb4
	dec bc			;beb5
	inc b			;beb6
	inc bc			;beb7
	call p,05402h		;beb8
	ld a,(bc)		;bebb
	ret p			;bebc
	add a,c			;bebd
	ld b,b			;bebe
	inc bc			;bebf
	pop af			;bec0
	add a,h			;bec1
	or 0f3h			;bec2
	or 0f6h			;bec4
	inc bc			;bec6
	rrca			;bec7
	add a,c			;bec8
	call p,0f906h		;bec9
	nop			;becc
	adc a,d			;becd
	nop			;bece
	ret p			;becf
	ret po			;bed0
	ret po			;bed1
	ret nz			;bed2
	ret nz			;bed3
	add a,b			;bed4
	add a,b			;bed5
	rst 38h			;bed6
	rst 38h			;bed7
	ld b,000h		;bed8
	nop			;beda
	ld (bc),a		;bedb
	ld b,b			;bedc
	ld b,094h		;bedd
	ex af,af'		;bedf
	inc b			;bee0
	nop			;bee1
	adc a,e			;bee2
	cp 0f8h			;bee3
	ret p			;bee5
	ret p			;bee6
	rst 38h			;bee7
	ret m			;bee8
	ret m			;bee9
	call m,0fefch		;beea
	cp 005h			;beed
	rst 38h			;beef
	add a,l			;bef0
	cp 0c0h			;bef1
	ret p			;bef3
	ret m			;bef4
	call m,0fe03h		;bef5
	nop			;bef8
	adc a,d			;bef9
	ret m			;befa
	cp 0f8h			;befb
	push af			;befd
	push af			;befe
	or 0f3h			;beff
	jp m,0f6f3h		;bf01
	ld b,0f1h		;bf04
	add a,c			;bf06
	ld b,b			;bf07
	inc b			;bf08
	call p,0f083h		;bf09
	ld sp,hl		;bf0c
	ret p			;bf0d
	nop			;bf0e
	ld (bc),a		;bf0f
	rst 38h			;bf10
	add a,e			;bf11
	add a,b			;bf12
	ret nz			;bf13
	ret po			;bf14
	inc bc			;bf15
	rrca			;bf16
	nop			;bf17
	ld (bc),a		;bf18
	ld bc,04003h		;bf19
	add a,e			;bf1c
	ret p			;bf1d
	ld c,c			;bf1e
	ret p			;bf1f
	nop			;bf20
	dec b			;bf21
	rst 38h			;bf22
	add a,e			;bf23
	call m,0c0f0h		;bf24
	nop			;bf27
	dec b			;bf28
	push af			;bf29
	inc bc			;bf2a
	ld sp,hl		;bf2b
	nop			;bf2c
	add a,d			;bf2d
	rrca			;bf2e
	nop			;bf2f
	inc b			;bf30
	ccf			;bf31
	ld (bc),a		;bf32
	nop			;bf33
	ld (bc),a		;bf34
	ret po			;bf35
	ld b,007h		;bf36
	nop			;bf38
	ld (bc),a		;bf39
	sub h			;bf3a
	add a,c			;bf3b
	sub b			;bf3c
	inc b			;bf3d
	ld c,a			;bf3e
	ld (bc),a		;bf3f
	sub b			;bf40
	add a,d			;bf41
	ld b,b			;bf42
	jp (hl)			;bf43
	inc bc			;bf44
	sub h			;bf45
	add a,d			;bf46
	ld c,a			;bf47
	nop			;bf48
	nop			;bf49
	ld (bc),a		;bf4a
	nop			;bf4b
	add a,(hl)		;bf4c
	rlca			;bf4d
	ld b,003h		;bf4e
	ld bc,00000h		;bf50
	nop			;bf53
	inc bc			;bf54
	ret p			;bf55
	dec b			;bf56
	ld b,b			;bf57
	nop			;bf58
	ld (bc),a		;bf59
	ld a,a			;bf5a
	add a,(hl)		;bf5b
	call m,08001h		;bf5c
	add a,b			;bf5f
	rrca			;bf60
	rrca			;bf61
	nop			;bf62
	ld (bc),a		;bf63
	ld b,b			;bf64
	add a,(hl)		;bf65
	ret p			;bf66
	and e			;bf67
	or 04fh			;bf68
	sub h			;bf6a
	ld b,b			;bf6b
	nop			;bf6c
	add a,l			;bf6d
	ld bc,0031fh		;bf6e
	rra			;bf71
	inc bc			;bf72
	inc bc			;bf73
	ld bc,00088h		;bf74
	ccf			;bf77
	rrca			;bf78
	rlca			;bf79
	inc bc			;bf7a
	ld bc,01f3fh		;bf7b
	nop			;bf7e
	add a,e			;bf7f
	ld sp,hl		;bf80
	sub h			;bf81
	sub h			;bf82
	inc b			;bf83
	ld b,b			;bf84
	ld (bc),a		;bf85
	ld c,a			;bf86
	add a,a			;bf87
	ld sp,hl		;bf88
	cp 0feh			;bf89
	ld sp,hl		;bf8b
	ld sp,hl		;bf8c
	sub h			;bf8d
	sub h			;bf8e
	nop			;bf8f
	inc bc			;bf90
	rlca			;bf91
	add a,l			;bf92
	rrca			;bf93
	rlca			;bf94
	rlca			;bf95
	rst 38h			;bf96
	rra			;bf97
	dec b			;bf98
	rst 38h			;bf99
	add a,e			;bf9a
	ccf			;bf9b
	rrca			;bf9c
	inc bc			;bf9d
	nop			;bf9e
	ld (bc),a		;bf9f
	ld sp,hl		;bfa0
	add a,(hl)		;bfa1
	ret p			;bfa2
	jp m,0f0f3h		;bfa3
	sub h			;bfa6
	sub h			;bfa7
	ex af,af'		;bfa8
	ld sp,hl		;bfa9
	nop			;bfaa
	ld (bc),a		;bfab
	ld a,a			;bfac
	ld (bc),a		;bfad
	ccf			;bfae
	ld (bc),a		;bfaf
	rra			;bfb0
	ld (bc),a		;bfb1
	rrca			;bfb2
	nop			;bfb3
	ex af,af'		;bfb4
	ld sp,hl		;bfb5
	nop			;bfb6
	sub b			;bfb7
	nop			;bfb8
	rrca			;bfb9
	rlca			;bfba
	rlca			;bfbb
	inc bc			;bfbc
	inc bc			;bfbd
	ld bc,00f01h		;bfbe
	rrca			;bfc1
	rlca			;bfc2
	rlca			;bfc3
	inc bc			;bfc4
	inc bc			;bfc5
	ld bc,00401h		;bfc6
	nop			;bfc9
	adc a,h			;bfca
	add a,b			;bfcb
	nop			;bfcc
	ret nz			;bfcd
	ret nz			;bfce
	cp 0e0h			;bfcf
	ld l,a			;bfd1
	ld l,a			;bfd2
	scf			;bfd3
	jr nc,lbff5h		;bfd4
	rra			;bfd6
	inc bc			;bfd7
	rst 38h			;bfd8
	inc b			;bfd9
	nop			;bfda
	adc a,e			;bfdb
	rst 38h			;bfdc
	nop			;bfdd
	ret p			;bfde
	ret po			;bfdf
	ret po			;bfe0
	ret nz			;bfe1
	ret nz			;bfe2
	add a,b			;bfe3
	add a,b			;bfe4
	rst 38h			;bfe5
	rst 38h			;bfe6
	ld b,000h		;bfe7
	ld (bc),a		;bfe9
	ret m			;bfea
	add a,e			;bfeb
	rst 38h			;bfec
	inc bc			;bfed
	rlca			;bfee
	inc bc			;bfef
	ret p			;bff0
	ld (bc),a		;bff1
	ld bc,00398h		;bff2
lbff5h:
	rlca			;bff5
	rrca			;bff6
	ld a,a			;bff7
	rst 38h			;bff8
	ld a,a			;bff9
	ld a,a			;bffa
	inc bc			;bffb
	call m,030fch		;bffc
	defb 030h		;bfff
