; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank18_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank18.bin

	org 0a000h

sub_a000h:
	adc a,b			;a000
	rst 38h			;a001
	ccf			;a002
	ret po			;a003
	ld (hl),e		;a004
	dec sp			;a005
	ld d,00dh		;a006
	dec a			;a008
	inc bc			;a009
	nop			;a00a
	adc a,l			;a00b
	ret po			;a00c
	ret p			;a00d
	jr c,$-38		;a00e
	call c,01800h		;a010
	inc l			;a013
	ld l,01ah		;a014
	dec c			;a016
	inc de			;a017
	ccf			;a018
	inc bc			;a019
	nop			;a01a
	add a,l			;a01b
	ret po			;a01c
	ret p			;a01d
	ret pe			;a01e
	call c,003dch		;a01f
	nop			;a022
	adc a,l			;a023
	rlca			;a024
	rrca			;a025
	rla			;a026
	dec sp			;a027
	dec sp			;a028
	nop			;a029
	jr la060h		;a02a
	ld (hl),h		;a02c
	ld e,b			;a02d
	or b			;a02e
	ret z			;a02f
	call m,00003h		;a030
	sbc a,d			;a033
	rlca			;a034
	rrca			;a035
	inc e			;a036
	dec de			;a037
	dec sp			;a038
	nop			;a039
	inc bc			;a03a
	rlca			;a03b
	adc a,0dch		;a03c
	ld l,b			;a03e
	or b			;a03f
	cp h			;a040
	dec a			;a041
	dec c			;a042
	ld d,03bh		;a043
	ld (hl),e		;a045
	ret po			;a046
	ret nz			;a047
	nop			;a048
	call c,038d8h		;a049
	ret p			;a04c
	ret po			;a04d
	inc bc			;a04e
	nop			;a04f
	adc a,l			;a050
	ccf			;a051
	inc de			;a052
	dec c			;a053
	ld a,(de)		;a054
	ld l,02ch		;a055
	jr la059h		;a057
la059h:
	call c,0e8dch		;a059
	ret p			;a05c
	ret po			;a05d
	inc bc			;a05e
	nop			;a05f
la060h:
	ld (bc),a		;a060
	dec sp			;a061
	add a,e			;a062
	rla			;a063
	rrca			;a064
	rlca			;a065
	inc bc			;a066
	nop			;a067
	adc a,l			;a068
	call m,0b0c8h		;a069
	ld e,b			;a06c
	ld (hl),h		;a06d
	inc (hl)		;a06e
	jr la071h		;a06f
la071h:
	dec sp			;a071
	dec de			;a072
	inc e			;a073
	rrca			;a074
	rlca			;a075
	inc bc			;a076
	nop			;a077
	adc a,b			;a078
	cp h			;a079
	or b			;a07a
	ld l,b			;a07b
	call c,007ceh		;a07c
	inc bc			;a07f
	nop			;a080
	nop			;a081
	ld (bc),a		;a082
	ld c,003h		;a083
	add a,b			;a085
	add a,d			;a086
	ret nc			;a087
	add a,b			;a088
	inc b			;a089
	ret nc			;a08a
	ld (bc),a		;a08b
	ret po			;a08c
	ld (bc),a		;a08d
	add a,b			;a08e
	ld (bc),a		;a08f
	ret nc			;a090
	add a,d			;a091
	ret po			;a092
	add a,b			;a093
	inc bc			;a094
	ret nc			;a095
	add a,c			;a096
	add a,b			;a097
	ld b,0e0h		;a098
	add a,d			;a09a
	add a,b			;a09b
	ret po			;a09c
	inc b			;a09d
	ret nc			;a09e
	ld (bc),a		;a09f
la0a0h:
	ret po			;a0a0
	add a,(hl)		;a0a1
	add a,b			;a0a2
	ret po			;a0a3
	ret nc			;a0a4
	ret nc			;a0a5
	ret po			;a0a6
	add a,b			;a0a7
	inc bc			;a0a8
	ret nc			;a0a9
	dec b			;a0aa
	add a,b			;a0ab
	ld (bc),a		;a0ac
	ret po			;a0ad
	ld (bc),a		;a0ae
	add a,b			;a0af
	ld (bc),a		;a0b0
	ret nc			;a0b1
	add a,c			;a0b2
	ret po			;a0b3
	inc bc			;a0b4
	add a,b			;a0b5
	add a,(hl)		;a0b6
	ret nc			;a0b7
	add a,b			;a0b8
	ret nc			;a0b9
	ret nc			;a0ba
	add a,b			;a0bb
	ret nc			;a0bc
	inc bc			;a0bd
	add a,b			;a0be
	ld (bc),a		;a0bf
la0c0h:
	ret po			;a0c0
	add a,e			;a0c1
	ret nc			;a0c2
	add a,b			;a0c3
	add a,b			;a0c4
	ld b,0e0h		;a0c5
	add a,c			;a0c7
	add a,b			;a0c8
	inc bc			;a0c9
	ret nc			;a0ca
	add a,(hl)		;a0cb
	add a,b			;a0cc
	ret po			;a0cd
	ret po			;a0ce
	ret nc			;a0cf
	ret po			;a0d0
	add a,b			;a0d1
	dec b			;a0d2
	ret po			;a0d3
	add a,e			;a0d4
	ret nc			;a0d5
	ret po			;a0d6
	add a,b			;a0d7
	dec b			;a0d8
	ret po			;a0d9
	ld (bc),a		;a0da
	add a,b			;a0db
	inc bc			;a0dc
	ret nc			;a0dd
	add a,(hl)		;a0de
	add a,b			;a0df
	ret po			;a0e0
	ret po			;a0e1
	ret nc			;a0e2
	add a,b			;a0e3
	add a,b			;a0e4
	dec b			;a0e5
	ret po			;a0e6
	add a,e			;a0e7
	ret nc			;a0e8
	add a,b			;a0e9
	ret nc			;a0ea
	inc bc			;a0eb
	add a,b			;a0ec
	ld (bc),a		;a0ed
	ret po			;a0ee
	nop			;a0ef
	ld (bc),a		;a0f0
	ld bc,03982h		;a0f1
	rst 0			;a0f4
	inc bc			;a0f5
	ld b,l			;a0f6
	add a,c			;a0f7
	add hl,sp		;a0f8
	dec b			;a0f9
	ld (de),a		;a0fa
	ld (bc),a		;a0fb
	ld e,002h		;a0fc
	nop			;a0fe
	ld (bc),a		;a0ff
	rst 38h			;a100
	add a,l			;a101
	nop			;a102
	ld a,l			;a103
	ld bc,00001h		;a104
	inc bc			;a107
	ld d,c			;a108
	ld (bc),a		;a109
	ld (hl),c		;a10a
	inc bc			;a10b
	nop			;a10c
	dec bc			;a10d
	ld l,b			;a10e
	add a,l			;a10f
	rst 38h			;a110
	ld sp,031cfh		;a111
	rst 38h			;a114
	rlca			;a115
	ld bc,0ff81h		;a116
	dec bc			;a119
	ld bc,0ff81h		;a11a
	inc b			;a11d
	ld bc,08005h		;a11e
	ld (bc),a		;a121
	nop			;a122
	add a,c			;a123
	rst 38h			;a124
	ex af,af'		;a125
	add a,b			;a126
	dec b			;a127
	ld bc,00002h		;a128
	add a,c			;a12b
	rst 38h			;a12c
	ex af,af'		;a12d
	ld bc,01182h		;a12e
	add hl,sp		;a131
	ld c,029h		;a132
	add a,c			;a134
	rst 38h			;a135
	ld b,081h		;a136
	ld (bc),a		;a138
	rst 38h			;a139
	ld b,011h		;a13a
	ld (bc),a		;a13c
	rst 38h			;a13d
	inc b			;a13e
	nop			;a13f
	ld (bc),a		;a140
	rst 38h			;a141
	add a,c			;a142
	nop			;a143
	rlca			;a144
	ld d,l			;a145
	ld (bc),a		;a146
	rst 38h			;a147
	adc a,b			;a148
	add a,l			;a149
	rst 38h			;a14a
	sub c			;a14b
	sub c			;a14c
	sbc a,a			;a14d
	sub l			;a14e
	rst 38h			;a14f
	rst 38h			;a150
	inc bc			;a151
	add a,c			;a152
	adc a,h			;a153
	rst 38h			;a154
	adc a,l			;a155
	di			;a156
	adc a,l			;a157
	and a			;a158
	and l			;a159
	and l			;a15a
	ei			;a15b
	sub a			;a15c
	rst 38h			;a15d
	sub l			;a15e
	rst 38h			;a15f
	inc b			;a160
	sub l			;a161
	add a,l			;a162
	ld b,b			;a163
	ld h,b			;a164
	rra			;a165
	rra			;a166
	rst 38h			;a167
	rlca			;a168
	ld bc,0f403h		;a169
	adc a,l			;a16c
	rst 38h			;a16d
	add hl,hl		;a16e
	cpl			;a16f
	add hl,hl		;a170
	rst 38h			;a171
	add hl,sp		;a172
	add a,e			;a173
	cp 02ah			;a174
	ld hl,(0ff3fh)		;a176
	nop			;a179
	ex af,af'		;a17a
	push de			;a17b
	adc a,b			;a17c
	rst 18h			;a17d
	ld d,c			;a17e
	pop de			;a17f
	ld d,c			;a180
	pop de			;a181
	ld d,c			;a182
	pop de			;a183
	ld d,c			;a184
	ex af,af'		;a185
	di			;a186
	ex af,af'		;a187
	sbc a,(hl)		;a188
	ld (bc),a		;a189
	inc b			;a18a
	ld (bc),a		;a18b
	add a,h			;a18c
	add a,c			;a18d
	rst 38h			;a18e
	inc bc			;a18f
	add a,b			;a190
	add a,c			;a191
	jr nz,la197h		;a192
	ld hl,0ff84h		;a194
la197h:
	cp 0feh			;a197
	nop			;a199
	rlca			;a19a
	ld bc,0ff81h		;a19b
	ex af,af'		;a19e
	ld bc,laa03h		;a19f
	ld (bc),a		;a1a2
	rst 38h			;a1a3
	ld (bc),a		;a1a4
	add a,b			;a1a5
	adc a,c			;a1a6
	rst 38h			;a1a7
	nop			;a1a8
	nop			;a1a9
	inc a			;a1aa
	rst 0			;a1ab
	add hl,sp		;a1ac
	rst 0			;a1ad
	add a,e			;a1ae
	rst 0			;a1af
	inc bc			;a1b0
	rlca			;a1b1
	inc bc			;a1b2
	call p,00002h		;a1b3
	inc bc			;a1b6
	ex de,hl		;a1b7
	add a,c			;a1b8
	dec bc			;a1b9
	inc b			;a1ba
	ei			;a1bb
	ld (bc),a		;a1bc
	rst 38h			;a1bd
	add a,h			;a1be
	nop			;a1bf
	add a,c			;a1c0
	add a,c			;a1c1
	rst 38h			;a1c2
	rlca			;a1c3
	nop			;a1c4
	ld (bc),a		;a1c5
	rst 38h			;a1c6
	add a,c			;a1c7
	nop			;a1c8
	rlca			;a1c9
	ld bc,0ff81h		;a1ca
	ex af,af'		;a1cd
	push de			;a1ce
	inc bc			;a1cf
	ld d,l			;a1d0
	add a,l			;a1d1
	rst 38h			;a1d2
	cp 0feh			;a1d3
	nop			;a1d5
	nop			;a1d6
	inc b			;a1d7
	jp pe,0e88dh		;a1d8
	ex (sp),hl		;a1db
	rst 30h			;a1dc
	inc b			;a1dd
	ld a,a			;a1de
	ld h,b			;a1df
	rra			;a1e0
	rra			;a1e1
	ld a,a			;a1e2
	ld h,b			;a1e3
	ld h,b			;a1e4
	nop			;a1e5
	nop			;a1e6
	rlca			;a1e7
	xor 007h		;a1e8
	defb 0edh ;next byte illegal after ed	;a1ea
	adc a,e			;a1eb
	nop			;a1ec
	ld a,h			;a1ed
	cp a			;a1ee
	cp c			;a1ef
	xor c			;a1f0
	xor c			;a1f1
	ld sp,hl		;a1f2
	ld bc,0f401h		;a1f3
	call p,00703h		;a1f6
	ld a,(bc)		;a1f9
	call p,0ff81h		;a1fa
	rlca			;a1fd
	add a,b			;a1fe
	add a,c			;a1ff
	rst 38h			;a200
	inc b			;a201
	ld d,c			;a202
	add a,h			;a203
	pop de			;a204
	adc a,(hl)		;a205
	sbc a,040h		;a206
	inc bc			;a208
	rst 10h			;a209
	add a,c			;a20a
	ret nc			;a20b
	inc b			;a20c
	rst 18h			;a20d
	rlca			;a20e
	xor (hl)		;a20f
	adc a,c			;a210
	nop			;a211
	inc c			;a212
	ld (de),a		;a213
	inc de			;a214
	ld (de),a		;a215
	inc de			;a216
	ld (de),a		;a217
	inc de			;a218
	ld (de),a		;a219
	djnz $+87		;a21a
	adc a,b			;a21c
	ld b,l			;a21d
	ld a,l			;a21e
	ld b,l			;a21f
	ld a,l			;a220
	ld b,l			;a221
	ld a,l			;a222
	ld b,l			;a223
	rst 38h			;a224
	nop			;a225
	add a,a			;a226
	call p,0f3f3h		;a227
	push af			;a22a
	call p,0f3f4h		;a22b
	rlca			;a22e
	call p,05404h		;a22f
	ld (bc),a		;a232
	ex (sp),hl		;a233
	add a,e			;a234
	ld d,h			;a235
	call po,0055fh		;a236
	call p,05405h		;a239
	ld (bc),a		;a23c
	ld b,e			;a23d
	sub c			;a23e
	rst 38h			;a23f
	adc a,l			;a240
	rst 38h			;a241
	adc a,l			;a242
	rst 38h			;a243
	ret pe			;a244
	rst 38h			;a245
	ret pe			;a246
	ret m			;a247
	ret m			;a248
	ld sp,hl		;a249
	ret m			;a24a
	ret m			;a24b
	push af			;a24c
	cp 0f5h			;a24d
	call p,0f305h		;a24f
	add a,h			;a252
	call p,0fef5h		;a253
	push af			;a256
	rlca			;a257
	call p,0f581h		;a258
	inc b			;a25b
	call p,0fe85h		;a25c
	push af			;a25f
	call p,05454h		;a260
	inc bc			;a263
	di			;a264
	ex af,af'		;a265
	call p,0fe85h		;a266
	push af			;a269
	call p,05454h		;a26a
	inc bc			;a26d
	di			;a26e
	dec d			;a26f
	call p,0f581h		;a270
	dec bc			;a273
	di			;a274
	add a,h			;a275
	push af			;a276
	cp 0f5h			;a277
	call p,0f306h		;a279
	ld (bc),a		;a27c
	ld d,h			;a27d
	ld (bc),a		;a27e
	push hl			;a27f
	add a,(hl)		;a280
	defb 0fdh,0d8h,08eh ;illegal sequence	;a281
	adc a,(hl)		;a284
	ret c			;a285
	ret c			;a286
	dec b			;a287
	defb 0fdh,081h,0f8h ;illegal sequence	;a288
	dec b			;a28b
	defb 0fdh,081h,0f8h ;illegal sequence	;a28c
	inc b			;a28f
	defb 0fdh,087h,0f9h ;illegal sequence	;a290
	defb 0fdh,0f8h,0fdh ;illegal sequence	;a293
	ld sp,iy		;a296
	ret c			;a298
	inc bc			;a299
	add a,(iy-002h)		;a29a
	ret m			;a29d
	ret m			;a29e
	defb 0fdh,054h ;ld d,iyh	;a29f
	ld b,e			;a2a1
	ld b,0f3h		;a2a2
	add a,a			;a2a4
	call p,0fef5h		;a2a5
	push af			;a2a8
	push hl			;a2a9
	ld d,h			;a2aa
	ld b,e			;a2ab
	dec b			;a2ac
	ret m			;a2ad
	sbc a,e			;a2ae
	call p,0f4f3h		;a2af
	call p,0f5f5h		;a2b2
	push hl			;a2b5
	push hl			;a2b6
	call p,0f5f4h		;a2b7
	cp 0feh			;a2ba
	push af			;a2bc
	call p,0f3f3h		;a2bd
	call p,0fef5h		;a2c0
	push af			;a2c3
	call p,0f3f3h		;a2c4
	ld b,e			;a2c7
	ld d,e			;a2c8
	ex (sp),hl		;a2c9
	inc bc			;a2ca
	ld d,e			;a2cb
	add a,l			;a2cc
	ld b,e			;a2cd
	ccf			;a2ce
	ld b,e			;a2cf
	ld d,e			;a2d0
	ex (sp),hl		;a2d1
	inc bc			;a2d2
	ld d,e			;a2d3
	add a,e			;a2d4
	ld b,e			;a2d5
	ccf			;a2d6
	call p,0f304h		;a2d7
	add a,h			;a2da
	cp 0f4h			;a2db
	inc sp			;a2dd
	call p,0f304h		;a2de
	add a,c			;a2e1
	ex (sp),hl		;a2e2
	inc bc			;a2e3
	ld b,e			;a2e4
	add a,d			;a2e5
	push af			;a2e6
	cp 003h			;a2e7
	call p,0f302h		;a2e9
	inc bc			;a2ec
	call p,0f58eh		;a2ed
	cp 0f5h			;a2f0
	call p,0f4f3h		;a2f2
	cp 0f3h			;a2f5
	di			;a2f7
	ld d,h			;a2f8
	ld d,h			;a2f9
	ld b,e			;a2fa
	call p,003f4h		;a2fb
	di			;a2fe
	add a,c			;a2ff
	call p,0f903h		;a300
	adc a,a			;a303
	ld b,e			;a304
	ld c,a			;a305
	ld c,(hl)		;a306
	ld d,h			;a307
	ld d,h			;a308
	ld b,e			;a309
	ld b,e			;a30a
	rst 38h			;a30b
	ld b,e			;a30c
	ld d,e			;a30d
	push hl			;a30e
	ld d,e			;a30f
	ld d,e			;a310
	push hl			;a311
	ld d,h			;a312
	inc b			;a313
	ld c,a			;a314
	add a,c			;a315
	push af			;a316
	ex af,af'		;a317
	call p,04502h		;a318
	ld (bc),a		;a31b
	ccf			;a31c
	inc b			;a31d
	call p,0f582h		;a31e
	call p,0f303h		;a321
	add a,l			;a324
	call p,0fef5h		;a325
	cp 0f5h			;a328
	inc bc			;a32a
	call p,0fe8dh		;a32b
	call p,054f4h		;a32e
	ld b,e			;a331
	ld b,e			;a332
	ccf			;a333
	ccf			;a334
	ld c,a			;a335
	ld d,e			;a336
	ex (sp),hl		;a337
	ex (sp),hl		;a338
	ld d,e			;a339
	inc b			;a33a
	ld b,e			;a33b
	ld (bc),a		;a33c
	di			;a33d
	ld (bc),a		;a33e
	ld b,e			;a33f
	dec b			;a340
	ccf			;a341
	add a,h			;a342
	ld c,a			;a343
	ld e,a			;a344
	rst 28h			;a345
	ld e,a			;a346
	rlca			;a347
	ld c,a			;a348
	inc bc			;a349
	ccf			;a34a
	inc bc			;a34b
	call p,0f502h		;a34c
	add a,a			;a34f
	cp 0f5h			;a350
	push hl			;a352
	ld d,h			;a353
	ld b,e			;a354
	ld c,a			;a355
	ld c,(hl)		;a356
	inc bc			;a357
	ld d,h			;a358
	add a,c			;a359
	push hl			;a35a
	dec b			;a35b
	ld d,h			;a35c
	add a,(hl)		;a35d
	ld b,e			;a35e
	push af			;a35f
	push af			;a360
	cp 0f5h			;a361
	call p,0f305h		;a363
	add a,l			;a366
	call p,03e35h		;a367
	ld a,053h		;a36a
	inc bc			;a36c
	ld b,e			;a36d
	add a,(hl)		;a36e
	ld d,e			;a36f
	push hl			;a370
	ld d,e			;a371
	ld d,e			;a372
	push hl			;a373
	ld d,h			;a374
	rlca			;a375
	ld c,a			;a376
	inc bc			;a377
	ccf			;a378
	add a,l			;a379
	call p,0fef5h		;a37a
	push af			;a37d
	call p,0f303h		;a37e
	add a,l			;a381
	call p,0fef5h		;a382
	cp 0f5h			;a385
	inc b			;a387
	call p,0f585h		;a388
	cp 0feh			;a38b
	push af			;a38d
	call p,0f303h		;a38e
	inc b			;a391
	call p,0f302h		;a392
	nop			;a395
	add a,c			;a396
	rst 38h			;a397
	rlca			;a398
	ld bc,0ff81h		;a399
	ld b,080h		;a39c
	ld (bc),a		;a39e
	rst 38h			;a39f
	ld b,001h		;a3a0
	add a,c			;a3a2
	rst 38h			;a3a3
	rlca			;a3a4
	ld bc,0ff81h		;a3a5
	inc bc			;a3a8
	add a,c			;a3a9
	add a,c			;a3aa
	rst 38h			;a3ab
	inc bc			;a3ac
	add a,c			;a3ad
	ld (bc),a		;a3ae
	rst 38h			;a3af
	ld c,080h		;a3b0
	add a,c			;a3b2
	rst 38h			;a3b3
	rlca			;a3b4
	ld bc,0ff81h		;a3b5
	rrca			;a3b8
	ld bc,0ff02h		;a3b9
	add a,d			;a3bc
	add a,b			;a3bd
	rst 38h			;a3be
	ld (de),a		;a3bf
	add a,b			;a3c0
	add a,h			;a3c1
	rst 38h			;a3c2
	add a,b			;a3c3
	add a,b			;a3c4
	nop			;a3c5
	ld b,07fh		;a3c6
	ld (bc),a		;a3c8
	nop			;a3c9
	ld (bc),a		;a3ca
	rst 38h			;a3cb
	dec b			;a3cc
	nop			;a3cd
	add a,c			;a3ce
	rst 38h			;a3cf
	inc b			;a3d0
	nop			;a3d1
	add a,c			;a3d2
	rst 38h			;a3d3
	inc bc			;a3d4
	nop			;a3d5
	rlca			;a3d6
	cp 081h			;a3d7
	nop			;a3d9
	rlca			;a3da
	ld a,a			;a3db
	add a,c			;a3dc
	nop			;a3dd
	rlca			;a3de
	add a,c			;a3df
	add a,c			;a3e0
	rst 38h			;a3e1
	ld b,009h		;a3e2
	inc bc			;a3e4
	rst 38h			;a3e5
	ld b,080h		;a3e6
	ld (bc),a		;a3e8
	rst 38h			;a3e9
	inc b			;a3ea
	nop			;a3eb
	inc b			;a3ec
	rst 38h			;a3ed
	inc b			;a3ee
	nop			;a3ef
	ld (bc),a		;a3f0
	jp m,0ff89h		;a3f1
	nop			;a3f4
	nop			;a3f5
	rst 10h			;a3f6
	nop			;a3f7
	rst 38h			;a3f8
	nop			;a3f9
	nop			;a3fa
	rst 38h			;a3fb
	inc bc			;a3fc
	nop			;a3fd
	add a,c			;a3fe
	rst 38h			;a3ff
	inc bc			;a400
	nop			;a401
	add a,c			;a402
	rst 38h			;a403
	inc bc			;a404
	nop			;a405
	add a,c			;a406
	jp m,00006h		;a407
	ld (bc),a		;a40a
	rst 38h			;a40b
	ld b,000h		;a40c
	ld (bc),a		;a40e
	jp m,00003h		;a40f
	ld b,0ebh		;a412
	add a,h			;a414
	ex (sp),hl		;a415
	ei			;a416
	ei			;a417
	ex (sp),hl		;a418
	ld b,0ebh		;a419
	ld b,07eh		;a41b
	add a,d			;a41d
	nop			;a41e
	sub b			;a41f
	inc b			;a420
	dec b			;a421
	ld (bc),a		;a422
	rst 38h			;a423
	ld (bc),a		;a424
	nop			;a425
	dec b			;a426
	ld a,a			;a427
	add a,h			;a428
	rst 38h			;a429
	add a,b			;a42a
	add a,b			;a42b
	rst 38h			;a42c
	dec b			;a42d
	nop			;a42e
	add a,d			;a42f
	rst 38h			;a430
	nop			;a431
	rlca			;a432
	add a,c			;a433
	add a,c			;a434
	rst 38h			;a435
	inc b			;a436
	xor d			;a437
	add a,h			;a438
	rst 38h			;a439
	add a,h			;a43a
	add a,h			;a43b
	rst 38h			;a43c
	ex af,af'		;a43d
	sub e			;a43e
	add a,c			;a43f
	rst 38h			;a440
	ld b,001h		;a441
	add a,c			;a443
	rst 38h			;a444
	rlca			;a445
	add a,b			;a446
	add a,e			;a447
	rst 38h			;a448
	sub b			;a449
	rst 38h			;a44a
	ld b,081h		;a44b
	add a,d			;a44d
	nop			;a44e
	rst 38h			;a44f
	ld b,080h		;a450
	ld (bc),a		;a452
	rst 38h			;a453
	inc b			;a454
	nop			;a455
	add a,c			;a456
	rst 38h			;a457
	inc bc			;a458
	nop			;a459
	add a,c			;a45a
	rst 38h			;a45b
	inc bc			;a45c
	dec b			;a45d
	ld (bc),a		;a45e
	rst 38h			;a45f
	ld c,005h		;a460
	add a,c			;a462
	rst 38h			;a463
	inc bc			;a464
	dec b			;a465
	add a,e			;a466
	rst 38h			;a467
	nop			;a468
	nop			;a469
	inc bc			;a46a
	rst 38h			;a46b
	ex af,af'		;a46c
	ld bc,08286h		;a46d
	jp nz,0c0ffh		;a470
	rst 38h			;a473
	ret nz			;a474
	inc bc			;a475
	rst 38h			;a476
la477h:
	sbc a,a			;a477
	add a,b			;a478
	rst 38h			;a479
	nop			;a47a
	rst 38h			;a47b
	nop			;a47c
	nop			;a47d
	push af			;a47e
	nop			;a47f
	add a,b			;a480
	rst 38h			;a481
	nop			;a482
	add a,b			;a483
	add a,b			;a484
	rst 38h			;a485
	nop			;a486
	rst 38h			;a487
	dec b			;a488
	dec b			;a489
	rst 38h			;a48a
	adc a,c			;a48b
	adc a,c			;a48c
	rst 38h			;a48d
	nop			;a48e
	rst 38h			;a48f
	ret nz			;a490
	add a,b			;a491
	ret nz			;a492
	rst 38h			;a493
	jp nz,08282h		;a494
	ex af,af'		;a497
	add a,c			;a498
	add a,l			;a499
	nop			;a49a
	rst 38h			;a49b
	nop			;a49c
	nop			;a49d
	rst 38h			;a49e
	inc bc			;a49f
	ld d,l			;a4a0
	add a,c			;a4a1
	rst 38h			;a4a2
	rlca			;a4a3
	sub b			;a4a4
	add a,c			;a4a5
	rst 38h			;a4a6
	rlca			;a4a7
	inc b			;a4a8
	rlca			;a4a9
	sub b			;a4aa
	add a,c			;a4ab
	rst 38h			;a4ac
	rlca			;a4ad
	inc b			;a4ae
	add a,h			;a4af
	rst 38h			;a4b0
	xor d			;a4b1
	rst 38h			;a4b2
	rst 38h			;a4b3
	inc b			;a4b4
	push de			;a4b5
	add a,h			;a4b6
	nop			;a4b7
	ld (hl),b		;a4b8
	halt			;a4b9
	ld (hl),b		;a4ba
	inc bc			;a4bb
	ld a,(hl)		;a4bc
	inc bc			;a4bd
	nop			;a4be
	add a,c			;a4bf
	rst 38h			;a4c0
	ld b,001h		;a4c1
	adc a,c			;a4c3
	ld sp,030ffh		;a4c4
	ld hl,0ff21h		;a4c7
	and b			;a4ca
	rst 38h			;a4cb
	rst 38h			;a4cc
	inc bc			;a4cd
	ld de,0ff81h		;a4ce
	inc bc			;a4d1
	ld (bc),a		;a4d2
	ld (bc),a		;a4d3
	djnz la477h		;a4d4
	rst 38h			;a4d6
	nop			;a4d7
	rst 38h			;a4d8
	ld b,c			;a4d9
	ld b,c			;a4da
	rst 38h			;a4db
	ld bc,0f901h		;a4dc
	ld bc,001f9h		;a4df
	ld sp,hl		;a4e2
	ld bc,0ff00h		;a4e3
	ld bc,08101h		;a4e6
	adc a,a			;a4e9
	adc a,c			;a4ea
	ld sp,hl		;a4eb
	nop			;a4ec
	rst 38h			;a4ed
	add a,c			;a4ee
	add a,c			;a4ef
	rst 38h			;a4f0
	inc a			;a4f1
	ld a,c			;a4f2
	rst 38h			;a4f3
	nop			;a4f4
	rst 38h			;a4f5
	rst 38h			;a4f6
	inc bc			;a4f7
	dec b			;a4f8
	sub a			;a4f9
	rst 38h			;a4fa
	nop			;a4fb
	nop			;a4fc
	rst 38h			;a4fd
	rst 38h			;a4fe
	nop			;a4ff
	nop			;a500
	rst 38h			;a501
	rst 38h			;a502
	add hl,bc		;a503
	nop			;a504
	rst 38h			;a505
	rst 38h			;a506
	nop			;a507
	nop			;a508
	rst 38h			;a509
	rst 38h			;a50a
	nop			;a50b
	rst 38h			;a50c
	nop			;a50d
	nop			;a50e
	rst 38h			;a50f
	rst 38h			;a510
	inc bc			;a511
	sub b			;a512
	add a,h			;a513
	rst 38h			;a514
	nop			;a515
	rst 38h			;a516
	rst 38h			;a517
	dec b			;a518
	dec b			;a519
	add a,a			;a51a
	rst 38h			;a51b
	add a,c			;a51c
	add a,c			;a51d
	dec b			;a51e
	dec b			;a51f
	rst 38h			;a520
	dec b			;a521
	rlca			;a522
	ld a,a			;a523
	inc bc			;a524
	rst 38h			;a525
	add a,a			;a526
	nop			;a527
	rst 38h			;a528
	rst 38h			;a529
	djnz la53ch		;a52a
	rra			;a52c
	rst 38h			;a52d
	ld b,001h		;a52e
	ld (bc),a		;a530
	rst 38h			;a531
	adc a,h			;a532
	ret nc			;a533
	ld d,b			;a534
	ret nc			;a535
	rst 38h			;a536
	nop			;a537
	nop			;a538
	rst 38h			;a539
	rst 38h			;a53a
	nop			;a53b
la53ch:
	nop			;a53c
	rst 38h			;a53d
	rst 38h			;a53e
	inc bc			;a53f
	nop			;a540
	ld b,0ffh		;a541
	inc bc			;a543
	nop			;a544
	ld (bc),a		;a545
	add a,b			;a546
	add a,c			;a547
	rst 38h			;a548
	inc b			;a549
	add a,b			;a54a
	add a,c			;a54b
	nop			;a54c
	inc bc			;a54d
	rst 38h			;a54e
	dec b			;a54f
	nop			;a550
	rlca			;a551
	ld bc,0ff84h		;a552
	nop			;a555
	rst 38h			;a556
	rst 38h			;a557
	inc bc			;a558
	nop			;a559
	add a,c			;a55a
	rst 38h			;a55b
	inc bc			;a55c
	or 081h			;a55d
	rst 38h			;a55f
	inc bc			;a560
	nop			;a561
	adc a,c			;a562
	rst 38h			;a563
	nop			;a564
	rst 38h			;a565
	nop			;a566
	nop			;a567
	rst 38h			;a568
	rst 38h			;a569
	and b			;a56a
	and b			;a56b
	inc bc			;a56c
	add a,b			;a56d
	adc a,l			;a56e
	ret nz			;a56f
	rst 38h			;a570
	rst 38h			;a571
	push bc			;a572
	push bc			;a573
	rst 38h			;a574
	nop			;a575
	rst 38h			;a576
	rst 38h			;a577
	nop			;a578
	nop			;a579
	cp a			;a57a
	add a,b			;a57b
	inc b			;a57c
	ld a,(bc)		;a57d
	ld (bc),a		;a57e
	rst 38h			;a57f
	ld (bc),a		;a580
	add a,b			;a581
	add a,h			;a582
	rst 38h			;a583
	nop			;a584
	rst 38h			;a585
	rst 38h			;a586
	inc bc			;a587
	nop			;a588
	and c			;a589
	rst 38h			;a58a
	djnz la59dh		;a58b
	rst 38h			;a58d
	nop			;a58e
	rst 38h			;a58f
	ei			;a590
	ei			;a591
	nop			;a592
	nop			;a593
	ret nz			;a594
	ret nz			;a595
	rst 38h			;a596
	add a,b			;a597
	ret nz			;a598
	rst 38h			;a599
	ret nz			;a59a
	ld (bc),a		;a59b
	ld (bc),a		;a59c
la59dh:
	rst 38h			;a59d
	ld d,b			;a59e
	rst 38h			;a59f
	add a,b			;a5a0
	add a,b			;a5a1
	rst 38h			;a5a2
	sub b			;a5a3
	sub b			;a5a4
	rst 38h			;a5a5
	nop			;a5a6
	rst 38h			;a5a7
	add a,h			;a5a8
	add a,h			;a5a9
	rst 38h			;a5aa
	nop			;a5ab
	add a,d			;a5ac
	di			;a5ad
	pop af			;a5ae
	rlca			;a5af
	ret p			;a5b0
	add a,c			;a5b1
	pop af			;a5b2
	inc bc			;a5b3
la5b4h:
	ret p			;a5b4
	add a,c			;a5b5
	pop af			;a5b6
	inc bc			;a5b7
	ret p			;a5b8
	add a,c			;a5b9
	pop af			;a5ba
	inc bc			;a5bb
	ret p			;a5bc
	add a,c			;a5bd
	pop af			;a5be
	rlca			;a5bf
	ret p			;a5c0
	add a,c			;a5c1
	pop af			;a5c2
	ld b,0f0h		;a5c3
	add a,c			;a5c5
	pop af			;a5c6
	inc b			;a5c7
	ret p			;a5c8
	add a,c			;a5c9
	pop af			;a5ca
	ld b,0f0h		;a5cb
	add a,c			;a5cd
	pop af			;a5ce
	rlca			;a5cf
	ret p			;a5d0
	add a,c			;a5d1
	pop af			;a5d2
	inc b			;a5d3
	ret p			;a5d4
	add a,c			;a5d5
	pop af			;a5d6
	ld a,(bc)		;a5d7
	ret p			;a5d8
	add a,c			;a5d9
	pop af			;a5da
	ex af,af'		;a5db
	ret p			;a5dc
	ld d,010h		;a5dd
	inc bc			;a5df
	rrca			;a5e0
	add a,c			;a5e1
	rra			;a5e2
	rlca			;a5e3
	rrca			;a5e4
	dec c			;a5e5
	djnz la5ebh		;a5e6
	rrca			;a5e8
	add a,c			;a5e9
	rra			;a5ea
la5ebh:
	rlca			;a5eb
	rrca			;a5ec
	add a,c			;a5ed
	rra			;a5ee
	ld b,00fh		;a5ef
	add a,c			;a5f1
	pop af			;a5f2
	rlca			;a5f3
	ret p			;a5f4
	add a,c			;a5f5
	pop af			;a5f6
	rlca			;a5f7
	ret p			;a5f8
	dec bc			;a5f9
	djnz $+5		;a5fa
	rrca			;a5fc
	dec b			;a5fd
	djnz $+5		;a5fe
	rrca			;a600
	inc bc			;a601
la602h:
	djnz la641h		;a602
	rrca			;a604
	inc bc			;a605
	pop af			;a606
	dec b			;a607
	ret p			;a608
	ld b,001h		;a609
	rlca			;a60b
	ld hl,0f008h		;a60c
	add a,d			;a60f
	pop af			;a610
	jp p,0f103h		;a611
	add a,d			;a614
	jp p,003f0h		;a615
	pop af			;a618
	dec b			;a619
	ret p			;a61a
	add a,d			;a61b
	pop af			;a61c
	jp p,0f005h		;a61d
	add a,c			;a620
	pop af			;a621
	dec b			;a622
	ret p			;a623
	add a,c			;a624
	pop af			;a625
	inc b			;a626
	ret p			;a627
	add a,c			;a628
	pop af			;a629
	inc b			;a62a
	ret p			;a62b
	add a,c			;a62c
	pop af			;a62d
	rlca			;a62e
	ret p			;a62f
	inc b			;a630
	djnz la5b4h		;a631
	ld (de),a		;a633
	dec b			;a634
	ld bc,01205h		;a635
	inc bc			;a638
	ret p			;a639
	add a,c			;a63a
	ld bc,0f005h		;a63b
	ld (bc),a		;a63e
	pop af			;a63f
	ld (bc),a		;a640
la641h:
	jp p,0f183h		;a641
	jp p,00312h		;a644
	ld bc,0f004h		;a647
	add a,c			;a64a
	ld (de),a		;a64b
	inc bc			;a64c
	ret p			;a64d
	ld (bc),a		;a64e
	ld bc,0f007h		;a64f
	add a,c			;a652
	jp p,0f103h		;a653
	ex af,af'		;a656
	ret p			;a657
	add a,c			;a658
	ld hl,00f07h		;a659
	add a,h			;a65c
	ld hl,00f0fh		;a65d
	pop af			;a660
	inc b			;a661
	ret p			;a662
	add a,h			;a663
	pop af			;a664
	ret p			;a665
	ret p			;a666
	pop af			;a667
	dec b			;a668
	ret p			;a669
	add a,c			;a66a
	pop af			;a66b
	inc bc			;a66c
	ret p			;a66d
	add a,l			;a66e
	pop af			;a66f
	jp p,0f2f1h		;a670
	pop af			;a673
	ex af,af'		;a674
	ret p			;a675
	ld (bc),a		;a676
	pop af			;a677
	add a,e			;a678
	djnz la69ch		;a679
	djnz la680h		;a67b
	ret p			;a67d
	add a,d			;a67e
	pop af			;a67f
la680h:
	jp p,0f006h		;a680
	add a,d			;a683
	pop af			;a684
	jp p,0f006h		;a685
	add a,d			;a688
	jp p,006f1h		;a689
	ret p			;a68c
	add a,d			;a68d
	jp p,006f1h		;a68e
	ret p			;a691
	add a,e			;a692
	djnz la6b6h		;a693
	djnz $+9		;a695
	rrca			;a697
	inc bc			;a698
	rra			;a699
	ld b,0f0h		;a69a
la69ch:
	add a,c			;a69c
	jp p,0f103h		;a69d
	add a,d			;a6a0
	ret p			;a6a1
	pop af			;a6a2
	ld b,0f0h		;a6a3
	add a,c			;a6a5
	pop af			;a6a6
	inc bc			;a6a7
	ret p			;a6a8
	add a,e			;a6a9
	pop af			;a6aa
	jp p,004f1h		;a6ab
	ret p			;a6ae
	add a,c			;a6af
	pop af			;a6b0
	dec c			;a6b1
	ret p			;a6b2
	add a,c			;a6b3
	pop af			;a6b4
	rlca			;a6b5
la6b6h:
	ret p			;a6b6
	ld (bc),a		;a6b7
	pop af			;a6b8
	add a,c			;a6b9
	jr nz,la6c2h		;a6ba
	ret p			;a6bc
	add a,c			;a6bd
	ld bc,0f007h		;a6be
	ld (bc),a		;a6c1
la6c2h:
	ld bc,0f006h		;a6c2
	ld (bc),a		;a6c5
	ld bc,0f004h		;a6c6
	ld (bc),a		;a6c9
	ld bc,0f002h		;a6ca
	add a,d			;a6cd
	pop af			;a6ce
	jp p,01203h		;a6cf
	ld (bc),a		;a6d2
	ret p			;a6d3
	ld (bc),a		;a6d4
	ld bc,01202h		;a6d5
	ld (bc),a		;a6d8
	pop af			;a6d9
	add a,c			;a6da
	jp p,0f005h		;a6db
	add a,d			;a6de
	djnz $+35		;a6df
	inc b			;a6e1
	ld bc,0f007h		;a6e2
	add a,l			;a6e5
	pop af			;a6e6
	jp p,0f1f2h		;a6e7
	jp p,0f007h		;a6ea
	add a,c			;a6ed
	pop af			;a6ee
	inc bc			;a6ef
	ret p			;a6f0
	ld (bc),a		;a6f1
	pop af			;a6f2
	ld (bc),a		;a6f3
	jr nz,la6f8h		;a6f4
	rrca			;a6f6
	ld (bc),a		;a6f7
la6f8h:
	djnz $+9		;a6f8
	rrca			;a6fa
	inc bc			;a6fb
	ld hl,00081h		;a6fc
	inc bc			;a6ff
	ld hl,01007h		;a700
	ld b,020h		;a703
	ld (bc),a		;a705
	pop af			;a706
	add a,c			;a707
	jp p,0f004h		;a708
	inc bc			;a70b
	ld (de),a		;a70c
	ld (bc),a		;a70d
	ret p			;a70e
	inc bc			;a70f
	ld hl,01085h		;a710
	ld hl,0f010h		;a713
	ret p			;a716
	ld b,021h		;a717
	inc bc			;a719
	ret p			;a71a
	add a,l			;a71b
	pop af			;a71c
	ret p			;a71d
	pop af			;a71e
	jp p,003f1h		;a71f
	ret p			;a722
	add a,d			;a723
	pop af			;a724
	ret p			;a725
	inc bc			;a726
	ld (de),a		;a727
	dec b			;a728
	rrca			;a729
	add a,e			;a72a
	pop af			;a72b
	jp p,003f1h		;a72c
	ret p			;a72f
	add a,d			;a730
	pop af			;a731
	ret p			;a732
	inc bc			;a733
	ld (de),a		;a734
	inc bc			;a735
	rrca			;a736
	ld (bc),a		;a737
	ld bc,0f181h		;a738
	inc b			;a73b
	ret p			;a73c
	add a,c			;a73d
	djnz la743h		;a73e
	rrca			;a740
	add a,h			;a741
	pop af			;a742
la743h:
	ret p			;a743
	ret p			;a744
	pop af			;a745
	inc bc			;a746
	ret p			;a747
	add a,c			;a748
	pop af			;a749
	inc b			;a74a
	ret p			;a74b
	add a,h			;a74c
	pop af			;a74d
	ret p			;a74e
	ret p			;a74f
	pop af			;a750
	inc b			;a751
	ret p			;a752
	add a,e			;a753
	pop af			;a754
	ret p			;a755
	ret p			;a756
	nop			;a757
	and c			;a758
	rra			;a759
	rlca			;a75a
	ld bc,00f02h		;a75b
	ccf			;a75e
	ccf			;a75f
	rra			;a760
	ret m			;a761
	ret p			;a762
	add a,b			;a763
	ld b,b			;a764
	ret p			;a765
	ret m			;a766
	ret m			;a767
	ret p			;a768
	rra			;a769
	ccf			;a76a
	ccf			;a76b
	rrca			;a76c
	ld (bc),a		;a76d
	ld bc,01f07h		;a76e
	ret p			;a771
	ret m			;a772
	ret m			;a773
	ret p			;a774
	ld b,b			;a775
	add a,b			;a776
	ret p			;a777
	ret m			;a778
	ld a,a			;a779
	inc bc			;a77a
	dec bc			;a77b
	add a,l			;a77c
	ld h,l			;a77d
	and l			;a77e
	ret p			;a77f
	rra			;a780
	cp 003h			;a781
	ret nc			;a783
	adc a,b			;a784
	and (hl)		;a785
	and l			;a786
	rrca			;a787
	ret m			;a788
	rra			;a789
	ret p			;a78a
	and l			;a78b
	ld h,l			;a78c
	inc bc			;a78d
	call p,08085h		;a78e
	rlca			;a791
	rrca			;a792
	and l			;a793
	and (hl)		;a794
	inc bc			;a795
	cpl			;a796
	adc a,h			;a797
	ld bc,080ffh		;a798
	add a,b			;a79b
	sub 0a9h		;a79c
	ld a,a			;a79e
	ld a,a			;a79f
	ccf			;a7a0
	ccf			;a7a1
	ld b,b			;a7a2
	rst 38h			;a7a3
	inc bc			;a7a4
	ld (hl),e		;a7a5
	add a,l			;a7a6
	ld b,b			;a7a7
	ccf			;a7a8
	ccf			;a7a9
	ld (bc),a		;a7aa
	rst 38h			;a7ab
	inc bc			;a7ac
	adc a,094h		;a7ad
	ld (bc),a		;a7af
	call m,001ffh		;a7b0
	ld bc,0956bh		;a7b3
	cp 0feh			;a7b6
	call m,07f3fh		;a7b8
	ld a,a			;a7bb
	xor c			;a7bc
	sub 080h		;a7bd
	add a,b			;a7bf
	rst 38h			;a7c0
	ccf			;a7c1
	ld b,b			;a7c2
	inc bc			;a7c3
	ld (hl),e		;a7c4
	add a,l			;a7c5
	rst 38h			;a7c6
	ld b,b			;a7c7
	ld b,b			;a7c8
	call m,00302h		;a7c9
	adc a,090h		;a7cc
	rst 38h			;a7ce
	ld (bc),a		;a7cf
	ld (bc),a		;a7d0
	call m,0fefeh		;a7d1
	sub l			;a7d4
	ld l,e			;a7d5
	ld bc,0ff01h		;a7d6
	dec a			;a7d9
	dec l			;a7da
	rla			;a7db
	rst 38h			;a7dc
	and (hl)		;a7dd
	inc bc			;a7de
	cpl			;a7df
	adc a,l			;a7e0
	call c,017b4h		;a7e1
	rst 38h			;a7e4
	ld (00b0bh),a		;a7e5
	cpl			;a7e8
	ccf			;a7e9
	ld (hl),017h		;a7ea
	rst 38h			;a7ec
	ld e,b			;a7ed
	inc bc			;a7ee
	cpl			;a7ef
	adc a,b			;a7f0
	call pe,017d8h		;a7f1
	rst 38h			;a7f4
	ret			;a7f5
	dec bc			;a7f6
	dec bc			;a7f7
	cpl			;a7f8
	inc bc			;a7f9
	ret nc			;a7fa
	adc a,l			;a7fb
	and (hl)		;a7fc
	rst 38h			;a7fd
	rla			;a7fe
	dec l			;a7ff
	dec a			;a800
	cpl			;a801
	cpl			;a802
	dec bc			;a803
	ld (017ffh),a		;a804
	or h			;a807
	call c,0d003h		;a808
	rst 8			;a80b
	ld e,b			;a80c
	rst 38h			;a80d
	rla			;a80e
	ld (hl),03fh		;a80f
	cpl			;a811
	cpl			;a812
	dec bc			;a813
	ret			;a814
	rst 38h			;a815
	rla			;a816
	ret c			;a817
	call pe,07c30h		;a818
	ld a,a			;a81b
	xor e			;a81c
	sub 080h		;a81d
	add a,b			;a81f
	rst 38h			;a820
	inc hl			;a821
	inc b			;a822
	ld (hl),e		;a823
	call 0ff73h		;a824
	ld b,b			;a827
	ld b,b			;a828
	ld bc,07a87h		;a829
	or a			;a82c
	adc a,0ffh		;a82d
	ld (bc),a		;a82f
	ld (bc),a		;a830
	call nz,0feeeh		;a831
	defb 0ddh,06bh ;ld ixl,e	;a834
	ld bc,0ff01h		;a836
	rst 38h			;a839
	add a,b			;a83a
	add a,b			;a83b
	sub 0abh		;a83c
	ld a,a			;a83e
	ld a,h			;a83f
	jr nc,la872h		;a840
	ld b,b			;a842
	rst 38h			;a843
	ld (hl),e		;a844
	call 00473h		;a845
	inc hl			;a848
	inc hl			;a849
	ld (bc),a		;a84a
	rst 38h			;a84b
	adc a,0b7h		;a84c
	ld a,d			;a84e
	add a,a			;a84f
	ld bc,001ffh		;a850
	ld bc,0dd6bh		;a853
	cp 0eeh			;a856
	call nz,000ffh		;a858
	inc bc			;a85b
	rla			;a85c
	add a,c			;a85d
	ccf			;a85e
	rlca			;a85f
	rla			;a860
	add a,c			;a861
	call m,01704h		;a862
	add a,d			;a865
	ccf			;a866
	rst 38h			;a867
	ld b,017h		;a868
	add a,c			;a86a
	call m,0e804h		;a86b
	add a,c			;a86e
	nop			;a86f
	ex af,af'		;a870
	cpl			;a871
la872h:
	ex af,af'		;a872
	call p,sub_a000h	;a873
	add a,b			;a876
	ret nc			;a877
	jr nc,la8aah		;a878
	ret p			;a87a
	ret nc			;a87b
	ret nc			;a87c
	add a,b			;a87d
	add a,b			;a87e
	ret nc			;a87f
	jr nc,la8b2h		;a880
	ret p			;a882
	ret nc			;a883
	ret nc			;a884
	add a,b			;a885
	add a,b			;a886
	ret nc			;a887
	ret nc			;a888
	ret p			;a889
	jr nc,la8bch		;a88a
	ret nc			;a88c
	add a,b			;a88d
	add a,b			;a88e
	ret nc			;a88f
	ret nc			;a890
	ret p			;a891
	jr nc,la8c4h		;a892
	ret nc			;a894
	add a,b			;a895
	inc bc			;a896
	ret pe			;a897
	add a,h			;a898
	adc a,l			;a899
	di			;a89a
	call p,004d8h		;a89b
	ret pe			;a89e
	adc a,d			;a89f
	adc a,l			;a8a0
	di			;a8a1
	call p,0e8d8h		;a8a2
	ret pe			;a8a5
	ret c			;a8a6
	call p,0d8f3h		;a8a7
la8aah:
	inc b			;a8aa
	adc a,(hl)		;a8ab
	add a,h			;a8ac
	ret c			;a8ad
	call p,0d8f3h		;a8ae
	inc bc			;a8b1
la8b2h:
	adc a,(hl)		;a8b2
	ld (bc),a		;a8b3
	defb 0fdh,0ffh,0d8h ;illegal sequence	;a8b4
	ld sp,iy		;a8b7
	ret p			;a8b9
	ret nc			;a8ba
	add a,b			;a8bb
la8bch:
	rst 38h			;a8bc
	ret pe			;a8bd
	ret pe			;a8be
	defb 0fdh,09fh,0fdh ;illegal sequence	;a8bf
	ret pe			;a8c2
	ret pe			;a8c3
la8c4h:
	rst 38h			;a8c4
	ret pe			;a8c5
	ret pe			;a8c6
	defb 0fdh,09fh,0fdh ;illegal sequence	;a8c7
	ret pe			;a8ca
	ret pe			;a8cb
	defb 0fdh,0fdh,0d8h ;illegal sequence	;a8cc
	ld sp,iy		;a8cf
	ret p			;a8d1
	ret nc			;a8d2
	add a,b			;a8d3
	add a,b			;a8d4
	ret nc			;a8d5
	ret p			;a8d6
	ld sp,hl		;a8d7
	defb 0fdh,0d8h,0fdh ;illegal sequence	;a8d8
	defb 0fdh,0e8h,0e8h ;illegal sequence	;a8db
	defb 0fdh,09fh,0fdh ;illegal sequence	;a8de
	ret pe			;a8e1
	ret pe			;a8e2
	rst 38h			;a8e3
	ret pe			;a8e4
	ret pe			;a8e5
	defb 0fdh,09fh,0fdh ;illegal sequence	;a8e6
	ret pe			;a8e9
	ret pe			;a8ea
	rst 38h			;a8eb
	add a,b			;a8ec
	ret nc			;a8ed
	ret p			;a8ee
	ld sp,hl		;a8ef
	defb 0fdh,0d8h,0fdh ;illegal sequence	;a8f0
	defb 0fdh,0d0h,080h ;illegal sequence	;a8f3
	ret pe			;a8f6
	or 0f6h			;a8f7
	defb 0edh ;next byte illegal after ed	;a8f9
	rst 38h			;a8fa
	adc a,l			;a8fb
	ret nc			;a8fc
	add a,b			;a8fd
	ret c			;a8fe
	or 0f6h			;a8ff
	ret c			;a901
	rst 38h			;a902
	ret c			;a903
	ret nc			;a904
	add a,b			;a905
	ret pe			;a906
	or 0f6h			;a907
	defb 0edh ;next byte illegal after ed	;a909
	rst 38h			;a90a
	adc a,l			;a90b
	ret nc			;a90c
	add a,b			;a90d
	ret c			;a90e
	or 0f6h			;a90f
	ret c			;a911
	rst 38h			;a912
	ret c			;a913
	ret c			;a914
	rst 38h			;a915
	sbc a,0f6h		;a916
	or 0e8h			;a918
	add a,b			;a91a
	ret nc			;a91b
	ret c			;a91c
	rst 38h			;a91d
	ret c			;a91e
	or 0f6h			;a91f
	ret c			;a921
	add a,b			;a922
	ret nc			;a923
	ret c			;a924
	rst 38h			;a925
	sbc a,0f6h		;a926
	or 0e8h			;a928
	add a,b			;a92a
	ret nc			;a92b
la92ch:
	ret c			;a92c
	rst 38h			;a92d
	ret c			;a92e
	or 0f6h			;a92f
	ret c			;a931
	add a,b			;a932
	ret nc			;a933
	add a,b			;a934
	sub c			;a935
	ret nc			;a936
	ret p			;a937
	di			;a938
	defb 0fdh,0d8h,0fdh ;illegal sequence	;a939
	defb 0fdh,0e0h,0f8h ;illegal sequence	;a93c
	ld sp,iy		;a93f
	defb 0fdh,0e8h,0e8h ;illegal sequence	;a941
	rst 38h			;a944
	add a,b			;a945
	add a,b			;a946
	inc bc			;a947
	defb 0fdh,002h,0e8h ;illegal sequence	;a948
	add a,a			;a94b
	rst 38h			;a94c
	add a,b			;a94d
	ret nc			;a94e
	ret p			;a94f
	ld sp,hl		;a950
	defb 0fdh,0d8h,004h ;illegal sequence	;a951
	defb 0fdh,091h,0d8h ;illegal sequence	;a954
	defb 0fdh,0f3h,0f0h ;illegal sequence	;a957
	ret nc			;a95a
	add a,b			;a95b
	rst 38h			;a95c
	ret pe			;a95d
	ret pe			;a95e
	ld sp,iy		;a95f
	defb 0fdh,0f8h,0e0h ;illegal sequence	;a961
	rst 38h			;a964
	ret pe			;a965
	ret pe			;a966
	inc bc			;a967
	defb 0fdh,002h,080h ;illegal sequence	;a968
	ld (bc),a		;a96b
	defb 0fdh,099h,0d8h ;illegal sequence	;a96c
	ld sp,iy		;a96f
	ret p			;a971
	ret nc			;a972
	add a,b			;a973
	cp 0feh			;a974
	ret pe			;a976
	ret pe			;a977
	adc a,l			;a978
	ret p			;a979
	ret pe			;a97a
	rst 38h			;a97b
	rst 38h			;a97c
	adc a,(hl)		;a97d
	ret c			;a97e
	ret c			;a97f
	defb 0fdh,0f0h,0d8h ;illegal sequence	;a980
	rst 38h			;a983
	rst 38h			;a984
	ret pe			;a985
	ret p			;a986
	inc bc			;a987
	ret pe			;a988
	adc a,d			;a989
	adc a,l			;a98a
	rst 38h			;a98b
	rst 38h			;a98c
	ret c			;a98d
	ret p			;a98e
	ret pe			;a98f
	adc a,l			;a990
	adc a,l			;a991
	rst 18h			;a992
	rst 18h			;a993
	djnz la92ch		;a994
	nop			;a996
	ex af,af'		;a997
	ld h,b			;a998
	ld (bc),a		;a999
	and (hl)		;a99a
	ld de,00560h		;a99b
	and (hl)		;a99e
	inc b			;a99f
	ld h,b			;a9a0
	ld (bc),a		;a9a1
	and (hl)		;a9a2
	ld (bc),a		;a9a3
	jp pe,06003h		;a9a4
	inc bc			;a9a7
	and (hl)		;a9a8
	add a,c			;a9a9
	ld h,b			;a9aa
	inc bc			;a9ab
	and (hl)		;a9ac
	inc b			;a9ad
	ld h,b			;a9ae
	dec d			;a9af
	and (hl)		;a9b0
	dec b			;a9b1
	ld h,b			;a9b2
	inc b			;a9b3
	and (hl)		;a9b4
	inc b			;a9b5
	ld h,b			;a9b6
	adc a,e			;a9b7
	and (hl)		;a9b8
	and 0aeh		;a9b9
	xor (hl)		;a9bb
	and (hl)		;a9bc
la9bdh:
	and (hl)		;a9bd
	ld h,b			;a9be
	ld h,b			;a9bf
	and 0a6h		;a9c0
	and (hl)		;a9c2
	dec b			;a9c3
	jp pe,0e683h		;a9c4
	and (hl)		;a9c7
	and (hl)		;a9c8
	dec b			;a9c9
	jp pe,la602h		;a9ca
	inc b			;a9cd
	jp pe,la602h		;a9ce
	jr la9bdh		;a9d1
	ex af,af'		;a9d3
	and (hl)		;a9d4
	nop			;a9d5
	ex af,af'		;a9d6
	ld l,a			;a9d7
	ld (bc),a		;a9d8
	and (hl)		;a9d9
	ld de,0056fh		;a9da
	and (hl)		;a9dd
	inc b			;a9de
	ld l,a			;a9df
	ld (bc),a		;a9e0
	and (hl)		;a9e1
	ld (bc),a		;a9e2
	jp pe,06f03h		;a9e3
	inc bc			;a9e6
	and (hl)		;a9e7
	add a,c			;a9e8
	ld l,a			;a9e9
	inc bc			;a9ea
	and (hl)		;a9eb
	inc b			;a9ec
	ld l,a			;a9ed
	dec d			;a9ee
	and (hl)		;a9ef
	dec b			;a9f0
	ld l,a			;a9f1
	inc b			;a9f2
	and (hl)		;a9f3
	inc b			;a9f4
	ld l,a			;a9f5
	adc a,e			;a9f6
	and (hl)		;a9f7
	and 0aeh		;a9f8
	xor (hl)		;a9fa
	and (hl)		;a9fb
la9fch:
	and (hl)		;a9fc
	ld l,a			;a9fd
	ld l,a			;a9fe
	and 0a6h		;a9ff
	and (hl)		;aa01
	dec b			;aa02
laa03h:
	jp pe,0e683h		;aa03
	and (hl)		;aa06
	and (hl)		;aa07
	dec b			;aa08
	jp pe,la602h		;aa09
	inc b			;aa0c
	jp pe,la602h		;aa0d
	jr la9fch		;aa10
	ex af,af'		;aa12
	and (hl)		;aa13
	nop			;aa14
	add a,c			;aa15
	ld bc,00305h		;aa16
	ld (bc),a		;aa19
	ld bc,04084h		;aa1a
	add a,b			;aa1d
	cp 0f8h			;aa1e
	inc b			;aa20
	nop			;aa21
	ld (bc),a		;aa22
	add a,b			;aa23
	inc b			;aa24
	ret nz			;aa25
	ei			;aa26
	add a,b			;aa27
	nop			;aa28
	nop			;aa29
	inc a			;aa2a
	ld a,a			;aa2b
	ld c,019h		;aa2c
	djnz $+35		;aa2e
	inc hl			;aa30
	nop			;aa31
	nop			;aa32
	inc a			;aa33
	rst 38h			;aa34
laa35h:
	jr c,laa35h		;aa35
	jr laab7h		;aa37
	nop			;aa39
laa3ah:
	jr c,laa3ah		;aa3a
	jr c,laa4ah		;aa3c
	inc b			;aa3e
	cp 040h			;aa3f
	inc bc			;aa41
	inc b			;aa42
	ld a,a			;aa43
	ccf			;aa44
	ld a,a			;aa45
	ld a,a			;aa46
	inc bc			;aa47
	daa			;aa48
	ld c,a			;aa49
laa4ah:
	ld c,a			;aa4a
	cpl			;aa4b
	rrca			;aa4c
	daa			;aa4d
	daa			;aa4e
	inc hl			;aa4f
	ld sp,0f2e4h		;aa50
	ld (hl),d		;aa53
	ld (hl),d		;aa54
	ld h,h			;aa55
	ret po			;aa56
	call m,018feh		;aa57
	rrca			;aa5a
	inc bc			;aa5b
	ld a,a			;aa5c
	ld a,a			;aa5d
	ccf			;aa5e
	rlca			;aa5f
	nop			;aa60
	ld a,a			;aa61
	rst 30h			;aa62
	jp 0f301h		;aa63
	ex (sp),hl		;aa66
	ld bc,03c00h		;aa67
	add a,c			;aa6a
	add a,c			;aa6b
	rst 0			;aa6c
	cp 038h			;aa6d
	cp 07ch			;aa6f
	ld bc,07f1eh		;aa71
	inc e			;aa74
	inc sp			;aa75
	daa			;aa76
laa77h:
	ld l,a			;aa77
	ld c,a			;aa78
	add a,e			;aa79
	jr c,laafah		;aa7a
	inc a			;aa7c
	rrca			;aa7d
	jp 0f9f1h		;aa7e
	cp 0feh			;aa81
	inc b			;aa83
	inc c			;aa84
	jr laa77h		;aa85
	cp 0f8h			;aa87
	cp c			;aa89
	ld a,(hl)		;aa8a
	ld a,a			;aa8b
	rst 38h			;aa8c
	rst 38h			;aa8d
	cp 07eh			;aa8e
	sbc a,l			;aa90
	ld c,a			;aa91
	cpl			;aa92
	daa			;aa93
	inc hl			;aa94
	ld sp,0001ch		;aa95
	nop			;aa98
	or 0ech			;aa99
	exx			;aa9b
	rst 38h			;aa9c
	cp 078h			;aa9d
	nop			;aa9f
	nop			;aaa0
	ret z			;aaa1
	inc bc			;aaa2
	call po,0ec84h		;aaa3
	call z,0f098h		;aaa6
	nop			;aaa9
	sub b			;aaaa
	nop			;aaab
	ret nz			;aaac
	ld h,b			;aaad
	ld (hl),b		;aaae
	jr c,laabdh		;aaaf
	ld d,000h		;aab1
	inc h			;aab3
	ld d,e			;aab4
	jr c,$-23		;aab5
laab7h:
	rrca			;aab7
	dec a			;aab8
	ld b,070h		;aab9
	ex af,af'		;aabb
	nop			;aabc
laabdh:
	add a,(hl)		;aabd
	ld (hl),b		;aabe
	inc e			;aabf
	rst 0			;aac0
	rst 8			;aac1
	rst 30h			;aac2
	call p,00006h		;aac3
	adc a,h			;aac6
	jr nc,laae9h		;aac7
	djnz laadbh		;aac9
	ex af,af'		;aacb
	ld c,005h		;aacc
	rlca			;aace
	inc bc			;aacf
	dec b			;aad0
	nop			;aad1
	call m,0000bh		;aad2
	adc a,e			;aad5
	ret nz			;aad6
	ld (hl),b		;aad7
	sbc a,h			;aad8
	rst 20h			;aad9
	ld sp,hl		;aada
laadbh:
	ld (bc),a		;aadb
	nop			;aadc
	rlca			;aadd
	ld c,00ch		;aade
	jr laaech		;aae0
	nop			;aae2
	add a,d			;aae3
	ld bc,00e41h		;aae4
	nop			;aae7
	sub b			;aae8
laae9h:
	ret nz			;aae9
	ld h,b			;aaea
	ld (hl),b		;aaeb
laaech:
	jr c,laafah		;aaec
	ld d,018h		;aaee
	nop			;aaf0
	inc h			;aaf1
	ld b,d			;aaf2
	ld sp,00718h		;aaf3
	rra			;aaf6
	inc a			;aaf7
	ld b,008h		;aaf8
laafah:
	nop			;aafa
	add a,(hl)		;aafb
	ld d,b			;aafc
	inc (hl)		;aafd
	ld e,0c7h		;aafe
	rst 8			;ab00
	ret m			;ab01
	dec b			;ab02
	nop			;ab03
	adc a,l			;ab04
	jr nc,lab27h		;ab05
	djnz lab19h		;ab07
	ex af,af'		;ab09
	ld c,005h		;ab0a
	inc b			;ab0c
	inc bc			;ab0d
	inc bc			;ab0e
	rlca			;ab0f
	ld bc,00afch		;ab10
	nop			;ab13
	adc a,l			;ab14
	ret nz			;ab15
	add a,b			;ab16
	ld (hl),h		;ab17
	cp c			;ab18
lab19h:
	call c,001e7h		;ab19
	ld (bc),a		;ab1c
	nop			;ab1d
	rlca			;ab1e
	ld c,00ch		;ab1f
	jr lab2ch		;ab21
	nop			;ab23
	add a,e			;ab24
	ld b,000h		;ab25
lab27h:
	ld h,b			;ab27
	ld c,000h		;ab28
	adc a,a			;ab2a
	ret nz			;ab2b
lab2ch:
	ld h,b			;ab2c
	ld (hl),b		;ab2d
	jr c,lab3ch		;ab2e
	ld d,018h		;ab30
	inc a			;ab32
	ld b,h			;ab33
	ld b,d			;ab34
	ld hl,00f10h		;ab35
	daa			;ab38
	ld (hl),b		;ab39
	ex af,af'		;ab3a
	nop			;ab3b
lab3ch:
	add a,(hl)		;ab3c
	ld b,b			;ab3d
	ld (hl),h		;ab3e
	ld a,01fh		;ab3f
	rst 0			;ab41
	rst 8			;ab42
	ld b,000h		;ab43
	adc a,h			;ab45
	jr nc,lab68h		;ab46
	djnz $+18		;ab48
	ex af,af'		;ab4a
	ld c,005h		;ab4b
	inc b			;ab4d
	nop			;ab4e
	rlca			;ab4f
	rlca			;ab50
	ei			;ab51
	dec bc			;ab52
	nop			;ab53
	adc a,e			;ab54
	ret nz			;ab55
	halt			;ab56
	ld (hl),c		;ab57
	cp b			;ab58
	call c,00201h		;ab59
	inc bc			;ab5c
	ld c,00ch		;ab5d
	jr lab6bh		;ab5f
	nop			;ab61
	add a,d			;ab62
	rst 20h			;ab63
	ld b,010h		;ab64
	nop			;ab66
	adc a,l			;ab67
lab68h:
	ld a,(bc)		;ab68
	rla			;ab69
	cpl			;ab6a
lab6bh:
	ld l,a			;ab6b
	rra			;ab6c
	ex af,af'		;ab6d
	rla			;ab6e
	ex af,af'		;ab6f
	rra			;ab70
	ld l,a			;ab71
	cpl			;ab72
	rla			;ab73
	ld a,(bc)		;ab74
	inc bc			;ab75
	nop			;ab76
	adc a,l			;ab77
	add a,b			;ab78
	ld h,b			;ab79
	cp b			;ab7a
	cp (hl)			;ab7b
	ret nz			;ab7c
	sub b			;ab7d
	inc a			;ab7e
	sub b			;ab7f
	ret nz			;ab80
	cp (hl)			;ab81
	cp b			;ab82
	ld h,b			;ab83
	add a,b			;ab84
	dec b			;ab85
	nop			;ab86
	adc a,c			;ab87
	ld a,(bc)		;ab88
	rla			;ab89
	cpl			;ab8a
	ld l,a			;ab8b
	jr laba5h		;ab8c
	ld l,b			;ab8e
	rla			;ab8f
	ld a,(bc)		;ab90
	rlca			;ab91
	nop			;ab92
	adc a,c			;ab93
	add a,b			;ab94
	ld h,b			;ab95
	cp b			;ab96
	cp (hl)			;ab97
	ret nz			;ab98
	inc a			;ab99
	cp 070h			;ab9a
	ret nz			;ab9c
	ex af,af'		;ab9d
	nop			;ab9e
	add a,a			;ab9f
	rlca			;aba0
	rla			;aba1
	cpl			;aba2
	ld l,a			;aba3
	cpl			;aba4
laba5h:
	rla			;aba5
	rlca			;aba6
	ld a,(bc)		;aba7
	nop			;aba8
	add a,l			;aba9
	ret nz			;abaa
	call m,0fcfeh		;abab
	ret nz			;abae
	add hl,bc		;abaf
	nop			;abb0
	adc a,c			;abb1
	ld a,(bc)		;abb2
	rla			;abb3
	ld l,b			;abb4
	rla			;abb5
	jr lac27h		;abb6
	cpl			;abb8
	rla			;abb9
	ld a,(bc)		;abba
	rlca			;abbb
	nop			;abbc
	adc a,c			;abbd
	ret nz			;abbe
	ld (hl),b		;abbf
	cp 03ch			;abc0
	ret nz			;abc2
	cp (hl)			;abc3
	cp b			;abc4
	ld h,b			;abc5
	add a,b			;abc6
	inc bc			;abc7
	nop			;abc8
	nop			;abc9
	inc b			;abca
	nop			;abcb
	adc a,c			;abcc
	jr $+16			;abcd
	ld bc,00f07h		;abcf
	rlca			;abd2
	ld bc,0180eh		;abd3
	add hl,bc		;abd6
	nop			;abd7
	add a,l			;abd8
	ret nz			;abd9
	ret p			;abda
	call m,0c0f0h		;abdb
	dec b			;abde
	nop			;abdf
	nop			;abe0
	ret nz			;abe1
	nop			;abe2
	ld bc,00703h		;abe3
	rra			;abe6
	ld d,b			;abe7
	ei			;abe8
	pop de			;abe9
	rst 38h			;abea
	ld c,e			;abeb
	ccf			;abec
	rlca			;abed
	xor a			;abee
	xor h			;abef
	inc bc			;abf0
	nop			;abf1
	nop			;abf2
	add a,b			;abf3
	ret z			;abf4
	add a,h			;abf5
	call m,0ff16h		;abf6
	inc l			;abf9
	call m,0f048h		;abfa
	call z,012efh		;abfd
	call m,00010h		;ac00
	inc bc			;ac03
	rrca			;ac04
	rra			;ac05
	djnz lac37h		;ac06
	inc b			;ac08
	rst 38h			;ac09
	rst 38h			;ac0a
	ld (hl),h		;ac0b
	ccf			;ac0c
	rlca			;ac0d
	ld d,d			;ac0e
	rst 38h			;ac0f
	rrca			;ac10
	inc bc			;ac11
	nop			;ac12
sub_ac13h:
	ret po			;ac13
	ret p			;ac14
	ret m			;ac15
	call m,000e8h		;ac16
	call m,0b8fch		;ac19
	call m,012f2h		;ac1c
	rst 38h			;ac1f
	cp 0fch			;ac20
	nop			;ac22
	or b			;ac23
	nop			;ac24
	inc bc			;ac25
	rrca			;ac26
lac27h:
	rra			;ac27
	rra			;ac28
	cpl			;ac29
	inc b			;ac2a
	rst 38h			;ac2b
	ld a,a			;ac2c
	ld de,00f1fh		;ac2d
	rst 38h			;ac30
	rst 38h			;ac31
	rra			;ac32
	rrca			;ac33
	nop			;ac34
	ret po			;ac35
	ret m			;ac36
lac37h:
	call m,016fch		;ac37
	dec bc			;ac3a
	call m,070fch		;ac3b
	rst 38h			;ac3e
	ld a,(bc)		;ac3f
	rst 38h			;ac40
	rst 38h			;ac41
	cp 0fch			;ac42
	nop			;ac44
	nop			;ac45
	inc bc			;ac46
	ld b,011h		;ac47
	ld a,a			;ac49
	rst 38h			;ac4a
	xor d			;ac4b
	ld (hl),l		;ac4c
	ld c,01fh		;ac4d
	rrca			;ac4f
	ld d,d			;ac50
	xor (hl)		;ac51
	ld de,0040fh		;ac52
	nop			;ac55
	adc a,h			;ac56
	call m,0f4e8h		;ac57
	or h			;ac5a
	ld a,h			;ac5b
	add a,b			;ac5c
	jp m,01affh		;ac5d
	xor d			;ac60
	cp 014h			;ac61
	nop			;ac63
	call 03707h		;ac64
	rst 38h			;ac67
	call po,03342h		;ac68
	ld a,a			;ac6b
	ld a,l			;ac6c
	ld a,(hl)		;ac6d
	ld a,a			;ac6e
	dec sp			;ac6f
	ld a,a			;ac70
	adc a,a			;ac71
lac72h:
	call nz,00738h		;ac72
	ret po			;ac75
	call pe,027ffh		;ac76
	ld b,d			;ac79
	call nz,0befeh		;ac7a
	ld a,(hl)		;ac7d
	cp 0dch			;ac7e
	cp 0f0h			;ac80
	inc hl			;ac82
	inc e			;ac83
	ret po			;ac84
	nop			;ac85
	ex af,af'		;ac86
	inc b			;ac87
	sbc a,a			;ac88
	ld a,a			;ac89
	ccf			;ac8a
	ld a,(hl)		;ac8b
	ld h,06fh		;ac8c
	ld a,a			;ac8e
	rlca			;ac8f
	ld (bc),a		;ac90
	ld (hl),h		;ac91
	rst 38h			;ac92
	ccf			;ac93
	rlca			;ac94
	nop			;ac95
	djnz lacb8h		;ac96
	ld sp,hl		;ac98
	cp 0fch			;ac99
	ld a,(hl)		;ac9b
	ld h,h			;ac9c
	xor 0feh		;ac9d
	ret po			;ac9f
	ld b,b			;aca0
	cpl			;aca1
	rst 38h			;aca2
	call m,000e0h		;aca3
	nop			;aca6
	rlca			;aca7
	djnz lac72h		;aca8
	adc a,d			;acaa
	ld a,a			;acab
	ld a,a			;acac
	cp 07fh			;acad
	rst 10h			;acaf
	ld a,(00507h)		;acb0
	nop			;acb3
	adc a,e			;acb4
	ret po			;acb5
	ex af,af'		;acb6
	inc de			;acb7
lacb8h:
	ld d,c			;acb8
	cp 0feh			;acb9
	ld a,a			;acbb
	cp 0ebh			;acbc
	ld e,h			;acbe
	ret po			;acbf
	ld b,000h		;acc0
	adc a,d			;acc2
	daa			;acc3
lacc4h:
	ccf			;acc4
	rst 38h			;acc5
	ld a,a			;acc6
	ld a,(hl)		;acc7
	rst 30h			;acc8
	rst 38h			;acc9
	rst 38h			;acca
	ccf			;accb
	rlca			;accc
	ld b,000h		;accd
	adc a,d			;accf
	call po,0fffch		;acd0
	cp 07eh			;acd3
	rst 28h			;acd5
	rst 38h			;acd6
	rst 38h			;acd7
	call m,006e0h		;acd8
	nop			;acdb
	adc a,e			;acdc
	rlca			;acdd
	jr lad4bh		;acde
	rst 38h			;ace0
	ld a,l			;ace1
	ld a,(hl)		;ace2
	rst 38h			;ace3
	dec sp			;ace4
	ret z			;ace5
	dec (hl)		;ace6
	rlca			;ace7
	dec b			;ace8
	nop			;ace9
	adc a,e			;acea
	ret po			;aceb
	jr lacc4h		;acec
	rst 38h			;acee
	cp (hl)			;acef
	ld a,(hl)		;acf0
	rst 38h			;acf1
	call c,sub_ac13h	;acf2
	ret po			;acf5
	ld b,000h		;acf6
	adc a,d			;acf8
	daa			;acf9
	cp a			;acfa
	cp 026h			;acfb
	ld a,a			;acfd
	add a,h			;acfe
	call z,037ffh		;acff
	rlca			;ad02
	ld b,000h		;ad03
	adc a,h			;ad05
	call po,07ffdh		;ad06
	ld h,h			;ad09
	cp 021h			;ad0a
	inc sp			;ad0c
	rst 38h			;ad0d
	call pe,000e0h		;ad0e
	nop			;ad11
	nop			;ad12
	add a,(hl)		;ad13
	nop			;ad14
	rlca			;ad15
	ccf			;ad16
	ld a,a			;ad17
	rst 38h			;ad18
	jp m,0ff06h		;ad19
	adc a,d			;ad1c
	ld a,a			;ad1d
	ld a,005h		;ad1e
	rlca			;ad20
	jr nz,$-46		;ad21
	jp po,0a2fdh		;ad23
	rst 38h			;ad26
	inc b			;ad27
	cp 003h			;ad28
	and d			;ad2a
	sbc a,c			;ad2b
	rst 38h			;ad2c
	jr nc,$-30		;ad2d
	rlca			;ad2f
	jr lad52h		;ad30
	ld a,a			;ad32
	ld b,b			;ad33
	push af			;ad34
	or b			;ad35
	jr nc,lad68h		;ad36
	or b			;ad38
	rst 38h			;ad39
	ld c,d			;ad3a
	ld a,a			;ad3b
	ld hl,0071ah		;ad3c
	ret po			;ad3f
	jr nc,$+1		;ad40
	and d			;ad42
	rst 38h			;ad43
	rst 38h			;ad44
	inc bc			;ad45
	jp z,0fe81h		;ad46
	inc b			;ad49
	rst 38h			;ad4a
lad4bh:
	add a,d			;ad4b
	ret p			;ad4c
	ret po			;ad4d
	nop			;ad4e
	xor c			;ad4f
	rlca			;ad50
	rra			;ad51
lad52h:
	ld a,h			;ad52
	di			;ad53
	inc c			;ad54
	dec bc			;ad55
	nop			;ad56
	ld c,01eh		;ad57
	nop			;ad59
	rrca			;ad5a
	call m,0030fh		;ad5b
	nop			;ad5e
	nop			;ad5f
	ret nz			;ad60
	ld (hl),0cdh		;ad61
	ld a,(08ef4h)		;ad63
	ld (hl),b		;ad66
	ei			;ad67
lad68h:
	inc bc			;ad68
	ld (hl),b		;ad69
	adc a,l			;ad6a
	call pe,0cb36h		;ad6b
	call p,00030h		;ad6e
	nop			;ad71
	inc bc			;ad72
	rrca			;ad73
	rst 38h			;ad74
	inc c			;ad75
lad76h:
	rrca			;ad76
	ld e,010h		;ad77
	inc bc			;ad79
	rrca			;ad7a
	sub h			;ad7b
	di			;ad7c
	ld a,h			;ad7d
	rra			;ad7e
	rlca			;ad7f
	jr nc,lad76h		;ad80
	ei			;ad82
	sub 02eh		;ad83
	add hl,bc		;ad85
	rlca			;ad86
	ld h,e			;ad87
	ret m			;ad88
	rlca			;ad89
	adc a,a			;ad8a
	ld (hl),0dah		;ad8b
	ld (iy-040h),000h	;ad8d
	ld (bc),a		;ad91
	nop			;ad92
	adc a,h			;ad93
	xor d			;ad94
	add hl,hl		;ad95
	rra			;ad96
	ld bc,0001dh		;ad97
	dec sp			;ad9a
	nop			;ad9b
	ld bc,0291fh		;ad9c
	xor d			;ad9f
	inc bc			;ada0
	nop			;ada1
	xor a			;ada2
	ld a,031h		;ada3
	ld de,lb4f8h		;ada5
	add a,b			;ada8
	nop			;ada9
	add a,b			;adaa
	dec b			;adab
	or h			;adac
	ret m			;adad
	ld de,03e31h		;adae
	nop			;adb1
	nop			;adb2
	jp 0ff7fh		;adb3
	rra			;adb6
	ld bc,03b00h		;adb7
	nop			;adba
	dec e			;adbb
	ld bc,0ff1fh		;adbc
	ld a,a			;adbf
	jp 03e00h		;adc0
	pop hl			;adc3
	sbc a,0ffh		;adc4
	ret m			;adc6
	call z,sub_b505h	;adc7
	dec (hl)		;adca
	add a,b			;adcb
	call z,0fff8h		;adcc
	sbc a,0e1h		;adcf
	ld a,000h		;add1
	add a,a			;add3
	ld bc,01706h		;add4
	add hl,bc		;add7
	add hl,bc		;add8
	pop af			;add9
	rlca			;adda
	inc bc			;addb
	inc bc			;addc
	sbc a,l			;addd
	ld bc,009ffh		;adde
	jp (hl)			;ade1
	rla			;ade2
	ld bc,0fe00h		;ade3
	ld e,0ffh		;ade6
	ld hl,08cffh		;ade8
	cp 0feh			;adeb
	rst 38h			;aded
	pop af			;adee
	sbc a,a			;adef
	pop af			;adf0
	ld e,01eh		;adf1
	ret po			;adf3
	nop			;adf4
	ld bc,0ff09h		;adf5
	rst 38h			;adf8
	rst 30h			;adf9
	rlca			;adfa
	inc bc			;adfb
	inc bc			;adfc
	sub (hl)		;adfd
	rlca			;adfe
	add hl,bc		;adff
	rst 38h			;ae00
	rst 38h			;ae01
	rla			;ae02
	ld bc,014eah		;ae03
	cp 0f1h			;ae06
	rst 38h			;ae08
	rst 38h			;ae09
	call m,00606h		;ae0a
	adc a,a			;ae0d
	rst 38h			;ae0e
	ld a,a			;ae0f
	rra			;ae10
	cp 0f4h			;ae11
	jp pe,lb800h		;ae13
	inc bc			;ae16
	rlca			;ae17
	jp z,0ec5ch		;ae18
	out (0d1h),a		;ae1b
	cp 0bbh			;ae1d
	xor d			;ae1f
	cp (hl)			;ae20
	or d			;ae21
	ld (hl),b		;ae22
	ex af,af'		;ae23
	inc b			;ae24
	inc b			;ae25
	ret nz			;ae26
	ret po			;ae27
	ld d,e			;ae28
	add hl,sp		;ae29
	scf			;ae2a
	jp z,07f8bh		;ae2b
	cp 026h			;ae2e
	ld a,06eh		;ae30
	dec c			;ae32
	djnz lae55h		;ae33
	jr nz,lae3bh		;ae35
	ex af,af'		;ae37
	dec b			;ae38
	add a,e			;ae39
	di			;ae3a
lae3bh:
	ld l,a			;ae3b
	out (037h),a		;ae3c
	ld a,a			;ae3e
	ld (hl),l		;ae3f
	ld a,l			;ae40
	ld l,e			;ae41
	call pe,00206h		;ae42
	ld (bc),a		;ae45
	jr nz,lae58h		;ae46
	and b			;ae48
	jp nz,0f7cfh		;ae49
	ld c,e			;ae4c
	call pe,0fd04h		;ae4d
	add a,h			;ae50
	ccf			;ae51
	ld (hl),b		;ae52
	ld h,b			;ae53
	ld h,b			;ae54
lae55h:
	nop			;ae55
	sub d			;ae56
	inc b			;ae57
lae58h:
	ld b,b			;ae58
	rst 38h			;ae59
	rst 38h			;ae5a
	ei			;ae5b
	ld h,a			;ae5c
	inc e			;ae5d
	rra			;ae5e
	dec bc			;ae5f
	dec c			;ae60
	dec c			;ae61
	ld l,e			;ae62
	sub b			;ae63
	rst 28h			;ae64
	sub b			;ae65
	ld l,a			;ae66
	nop			;ae67
	nop			;ae68
	inc bc			;ae69
	rst 38h			;ae6a
	and c			;ae6b
	ld bc,0ff00h		;ae6c
	ld d,l			;ae6f
	cp 054h			;ae70
	ret m			;ae72
	ld d,b			;ae73
	and b			;ae74
	ld b,b			;ae75
	add a,b			;ae76
	inc e			;ae77
	ld e,021h		;ae78
	ccf			;ae7a
	rst 20h			;ae7b
	ld a,h			;ae7c
	dec de			;ae7d
	rra			;ae7e
	rrca			;ae7f
	dec bc			;ae80
	dec bc			;ae81
	ld l,a			;ae82
	rst 38h			;ae83
	sub b			;ae84
	rst 38h			;ae85
	ld l,a			;ae86
	nop			;ae87
	dec bc			;ae88
	ld d,h			;ae89
	rst 38h			;ae8a
	ld bc,003feh		;ae8b
	rst 38h			;ae8e
	add a,a			;ae8f
	ld d,(hl)		;ae90
	call m,0f0f8h		;ae91
	ld h,b			;ae94
	ret nz			;ae95
	add a,b			;ae96
	nop			;ae97
	ret nz			;ae98
	nop			;ae99
	ld (bc),a		;ae9a
	rlca			;ae9b
	ld a,(hl)		;ae9c
	ld a,h			;ae9d
	cp 041h			;ae9e
	ld hl,(0011eh)		;aea0
	rlca			;aea3
	rst 38h			;aea4
	jp z,0063dh		;aea5
	nop			;aea8
	cp b			;aea9
	cp d			;aeaa
	rst 38h			;aeab
	call m,0cca7h		;aeac
	call m,06d6ah		;aeaf
	rst 30h			;aeb2
	pop de			;aeb3
	sub l			;aeb4
	ld l,d			;aeb5
	ld b,01eh		;aeb6
	ld d,007h		;aeb8
	rra			;aeba
	inc a			;aebb
	ld a,c			;aebc
	add a,e			;aebd
	rst 38h			;aebe
	ld a,a			;aebf
	ld a,01eh		;aec0
	ld bc,00806h		;aec2
	defb 0fdh,037h,00ah ;illegal sequence	;aec5
	inc b			;aec8
	cp b			;aec9
	rst 38h			;aeca
	call m,0dfcfh		;aecb
	call m,05efch		;aece
	ld e,a			;aed1
	rst 30h			;aed2
	or a			;aed3
	di			;aed4
	and 00eh		;aed5
	dec e			;aed7
	xor 003h		;aed8
	nop			;aeda
	adc a,b			;aedb
	ld (bc),a		;aedc
	rlca			;aedd
	ld a,(hl)		;aede
	ld a,h			;aedf
	cp 041h			;aee0
	ld hl,(0031eh)		;aee2
	nop			;aee5
	rst 38h			;aee6
	inc bc			;aee7
	dec b			;aee8
	nop			;aee9
	nop			;aeea
	cp b			;aeeb
	cp d			;aeec
	rst 38h			;aeed
	call m,0caa7h		;aeee
	or 03bh			;aef1
	dec sp			;aef3
	ld a,07ch		;aef4
	di			;aef6
	xor h			;aef7
	call nc,00000h		;aef8
	rlca			;aefb
	rra			;aefc
	inc a			;aefd
	ld a,c			;aefe
	add a,e			;aeff
	rst 38h			;af00
	ld a,a			;af01
	ld a,01eh		;af02
laf04h:
	nop			;af04
	nop			;af05
	ld bc,01e07h		;af06
	nop			;af09
	nop			;af0a
	cp b			;af0b
	rst 38h			;af0c
	call m,0dfcfh		;af0d
	cp 0fah			;af10
	dec a			;af12
	ccf			;af13
	ld (hl),l		;af14
	rst 20h			;af15
	rst 8			;af16
	call m,00038h		;af17
	nop			;af1a
	ld (bc),a		;af1b
	ld (hl),l		;af1c
	dec (hl)		;af1d
	ld a,h			;af1e
	ld a,h			;af1f
	ld a,(hl)		;af20
	ld l,037h		;af21
	rla			;af23
	ld a,(bc)		;af24
	inc d			;af25
	inc h			;af26
	ld a,b			;af27
	xor b			;af28
	nop			;af29
	nop			;af2a
	ld b,b			;af2b
	xor (hl)		;af2c
	xor h			;af2d
	ld a,03eh		;af2e
	ld a,(hl)		;af30
	inc (hl)		;af31
	call pe,058e8h		;af32
	inc (hl)		;af35
	ld hl,(0151eh)		;af36
	nop			;af39
	nop			;af3a
	ld bc,03777h		;af3b
	dec hl			;af3e
	rra			;af3f
	ld a,e			;af40
	add hl,sp		;af41
	inc l			;af42
	rra			;af43
	ld c,00ch		;af44
	inc e			;af46
	ld a,b			;af47
	ld e,b			;af48
	nop			;af49
	nop			;af4a
	add a,b			;af4b
	xor 0ech		;af4c
	call nc,0def8h		;af4e
	call c,0f834h		;af51
	ld a,b			;af54
	inc l			;af55
	ld (hl),01eh		;af56
	ld a,(de)		;af58
	nop			;af59
	nop			;af5a
	dec e			;af5b
	ld e,l			;af5c
	rst 38h			;af5d
	ccf			;af5e
	push hl			;af5f
	ld d,e			;af60
	ld l,a			;af61
	call c,07cdch		;af62
	ld a,083h		;af65
	rst 8			;af67
	dec (hl)		;af68
	dec hl			;af69
	inc bc			;af6a
	nop			;af6b
	adc a,b			;af6c
	ld b,b			;af6d
	ret po			;af6e
	ld a,(hl)		;af6f
	ld a,07fh		;af70
	add a,d			;af72
	ld d,h			;af73
	ld a,b			;af74
	inc bc			;af75
	nop			;af76
	jp po,la0c0h		;af77
	nop			;af7a
	nop			;af7b
	dec e			;af7c
	rst 38h			;af7d
	ccf			;af7e
	di			;af7f
	ei			;af80
	ld a,a			;af81
	ld e,a			;af82
	cp h			;af83
	call m,0e7aeh		;af84
	di			;af87
	ccf			;af88
	inc e			;af89
	nop			;af8a
	nop			;af8b
	ret po			;af8c
	ret m			;af8d
	inc a			;af8e
	sbc a,(hl)		;af8f
	pop bc			;af90
	rst 38h			;af91
	cp 07ch			;af92
	ld a,b			;af94
	nop			;af95
laf96h:
	nop			;af96
	add a,b			;af97
	ret po			;af98
	ld a,b			;af99
	dec e			;af9a
	ld e,l			;af9b
	rst 38h			;af9c
	ccf			;af9d
	push hl			;af9e
	inc sp			;af9f
	ccf			;afa0
	ld d,(hl)		;afa1
	or (hl)			;afa2
	rst 28h			;afa3
	adc a,e			;afa4
	xor c			;afa5
	ld d,(hl)		;afa6
	ld h,b			;afa7
	ld a,b			;afa8
	ld l,b			;afa9
	nop			;afaa
	ld b,b			;afab
	ret po			;afac
	ld a,(hl)		;afad
	ld a,07fh		;afae
	add a,d			;afb0
	ld d,h			;afb1
	ld a,b			;afb2
	add a,b			;afb3
	ret po			;afb4
	rst 38h			;afb5
	ld d,e			;afb6
	cp h			;afb7
	ld h,b			;afb8
	nop			;afb9
	dec e			;afba
	rst 38h			;afbb
	ccf			;afbc
	di			;afbd
	ei			;afbe
	ccf			;afbf
	ccf			;afc0
	ld a,d			;afc1
	jp m,0edefh		;afc2
	rst 8			;afc5
	ld h,a			;afc6
	ld (hl),b		;afc7
lafc8h:
	cp b			;afc8
	ld (hl),a		;afc9
	ret po			;afca
	ret m			;afcb
	inc a			;afcc
	sbc a,(hl)		;afcd
	pop bc			;afce
	rst 38h			;afcf
	cp 07ch			;afd0
	ld a,b			;afd2
	add a,b			;afd3
	ld h,b			;afd4
	djnz laf96h		;afd5
	call pe,02050h		;afd7
	nop			;afda
	rlca			;afdb
	nop			;afdc
	ld (bc),a		;afdd
	rst 38h			;afde
	ld c,000h		;afdf
	ld (bc),a		;afe1
	rst 38h			;afe2
	rlca			;afe3
	nop			;afe4
	nop			;afe5
	rlca			;afe6
	nop			;afe7
	ld (bc),a		;afe8
	rst 38h			;afe9
	ld c,000h		;afea
	ld (bc),a		;afec
	rst 38h			;afed
	ld c,000h		;afee
	add a,a			;aff0
	ld bc,00703h		;aff1
	ld c,01ch		;aff4
	jr c,lb028h		;aff6
	inc b			;aff8
	nop			;aff9
	add a,a			;affa
	inc c			;affb
	inc e			;affc
	jr c,lb06fh		;affd
	ret po			;afff
	ret nz			;b000
	add a,b			;b001
	rlca			;b002
	nop			;b003
	djnz lb006h		;b004
lb006h:
	djnz lafc8h		;b006
	ld (bc),a		;b008
	nop			;b009
	add a,a			;b00a
	jr nc,$+58		;b00b
	inc e			;b00d
	ld c,007h		;b00e
	inc bc			;b010
	ld bc,0000eh		;b011
	adc a,c			;b014
	add a,b			;b015
	ret nz			;b016
	ret po			;b017
	ld (hl),b		;b018
	jr c,lb037h		;b019
	inc c			;b01b
	nop			;b01c
	nop			;b01d
	nop			;b01e
	ld b,000h		;b01f
	add a,h			;b021
	ld bc,00303h		;b022
	ld bc,0000ch		;b025
lb028h:
	add a,h			;b028
	add a,b			;b029
	ret nz			;b02a
	ret nz			;b02b
	add a,b			;b02c
	ld b,000h		;b02d
	nop			;b02f
	add a,c			;b030
	nop			;b031
	inc bc			;b032
	ld bc,00687h		;b033
	rrca			;b036
lb037h:
	rrca			;b037
	ld (hl),a		;b038
	rrca			;b039
	rrca			;b03a
	ld b,003h		;b03b
	ld bc,00006h		;b03d
	add a,a			;b040
	ret nz			;b041
	ret po			;b042
	ret po			;b043
	call c,0e0e0h		;b044
	ret nz			;b047
	dec b			;b048
	nop			;b049
	nop			;b04a
	inc bc			;b04b
	nop			;b04c
	adc a,d			;b04d
	ld bc,00906h		;b04e
lb051h:
	dec bc			;b051
	rla			;b052
	rla			;b053
	dec bc			;b054
	add hl,bc		;b055
	ld b,001h		;b056
lb058h:
	ld b,000h		;b058
	adc a,d			;b05a
	add a,b			;b05b
	ld h,b			;b05c
	sub b			;b05d
	ret nc			;b05e
	ret pe			;b05f
	ret pe			;b060
	ret nc			;b061
	sub b			;b062
	ld h,b			;b063
	add a,b			;b064
	rlca			;b065
	nop			;b066
	adc a,b			;b067
	ld bc,00707h		;b068
	rrca			;b06b
	rrca			;b06c
	rlca			;b06d
	rlca			;b06e
lb06fh:
	ld bc,00008h		;b06f
	adc a,b			;b072
	add a,b			;b073
	ret po			;b074
	ret po			;b075
	ret p			;b076
	ret p			;b077
	ret po			;b078
	ret po			;b079
	add a,b			;b07a
	ld b,000h		;b07b
	adc a,h			;b07d
	inc bc			;b07e
	inc c			;b07f
	inc de			;b080
	rla			;b081
	ld l,02ch		;b082
	inc l			;b084
	ld l,017h		;b085
	inc de			;b087
	inc c			;b088
	inc bc			;b089
	inc b			;b08a
	nop			;b08b
	adc a,h			;b08c
	ret nz			;b08d
	jr nc,lb058h		;b08e
	ret pe			;b090
	ld (hl),h		;b091
	inc (hl)		;b092
	inc (hl)		;b093
lb094h:
	ld (hl),h		;b094
	ret pe			;b095
	ret z			;b096
	jr nc,$-62		;b097
	dec b			;b099
	nop			;b09a
	adc a,d			;b09b
	inc bc			;b09c
	rrca			;b09d
	rrca			;b09e
	ld e,01ch		;b09f
	inc e			;b0a1
	ld e,00fh		;b0a2
	rrca			;b0a4
	inc bc			;b0a5
	ld b,000h		;b0a6
	adc a,d			;b0a8
	ret nz			;b0a9
	ret p			;b0aa
	ret p			;b0ab
	ld a,b			;b0ac
	jr c,lb0e7h		;b0ad
	ld a,b			;b0af
	ret p			;b0b0
	ret p			;b0b1
	ret nz			;b0b2
	inc b			;b0b3
	nop			;b0b4
	sbc a,(hl)		;b0b5
	inc bc			;b0b6
	inc c			;b0b7
	ld de,02826h		;b0b8
	ld c,b			;b0bb
	ld d,b			;b0bc
	ld d,b			;b0bd
	ld c,b			;b0be
	jr z,lb0e7h		;b0bf
	ld de,0030ch		;b0c1
	nop			;b0c4
	nop			;b0c5
	ret nz			;b0c6
	jr nc,lb051h		;b0c7
	ld h,h			;b0c9
	inc d			;b0ca
	ld (de),a		;b0cb
	ld a,(bc)		;b0cc
	ld a,(bc)		;b0cd
	ld (de),a		;b0ce
	inc d			;b0cf
	ld h,h			;b0d0
	adc a,b			;b0d1
lb0d2h:
	jr nc,lb094h		;b0d2
	inc bc			;b0d4
	nop			;b0d5
	adc a,h			;b0d6
	inc bc			;b0d7
lb0d8h:
	rrca			;b0d8
	ld e,018h		;b0d9
	jr c,lb10dh		;b0db
	jr nc,$+58		;b0dd
	jr lb0ffh		;b0df
	rrca			;b0e1
	inc bc			;b0e2
	inc b			;b0e3
	nop			;b0e4
	sub b			;b0e5
	ret nz			;b0e6
lb0e7h:
	ret p			;b0e7
	ld a,b			;b0e8
	jr lb107h		;b0e9
	inc c			;b0eb
	inc c			;b0ec
	inc e			;b0ed
	jr lb168h		;b0ee
	ret p			;b0f0
	ret nz			;b0f1
	nop			;b0f2
	nop			;b0f3
	inc bc			;b0f4
	inc b			;b0f5
	inc bc			;b0f6
	nop			;b0f7
	add a,c			;b0f8
	ld b,b			;b0f9
	inc b			;b0fa
	add a,b			;b0fb
	add a,c			;b0fc
	ld b,b			;b0fd
	inc bc			;b0fe
lb0ffh:
	nop			;b0ff
	add a,h			;b100
	inc b			;b101
	inc bc			;b102
	ret nz			;b103
	jr nz,lb109h		;b104
	nop			;b106
lb107h:
	add a,c			;b107
	ld (bc),a		;b108
lb109h:
	inc b			;b109
	ld bc,00281h		;b10a
lb10dh:
	inc bc			;b10d
	nop			;b10e
	adc a,b			;b10f
	jr nz,lb0d2h		;b110
	nop			;b112
	inc bc			;b113
	inc c			;b114
	nop			;b115
	jr nz,lb138h		;b116
	inc b			;b118
	ld b,b			;b119
	ld (bc),a		;b11a
	jr nz,$-116		;b11b
	nop			;b11d
	inc c			;b11e
	inc bc			;b11f
	nop			;b120
	nop			;b121
	ret nz			;b122
	jr nc,lb125h		;b123
lb125h:
	inc b			;b125
	inc b			;b126
	inc b			;b127
	ld (bc),a		;b128
	ld (bc),a		;b129
	inc b			;b12a
	add a,h			;b12b
	nop			;b12c
	jr nc,$-62		;b12d
	nop			;b12f
	nop			;b130
	ld c,027h		;b131
	add a,d			;b133
	rlca			;b134
	daa			;b135
	ld c,0a4h		;b136
lb138h:
	add a,d			;b138
	and b			;b139
	and h			;b13a
	djnz lb15ch		;b13b
	djnz $-6		;b13d
	ld (bc),a		;b13f
	rlca			;b140
	adc a,b			;b141
	ld (00010h),hl		;b142
	djnz lb147h		;b145
lb147h:
	djnz lb149h		;b147
lb149h:
	ex af,af'		;b149
	ld b,000h		;b14a
	ld (bc),a		;b14c
	and b			;b14d
	adc a,c			;b14e
	add a,h			;b14f
	add a,b			;b150
	jr z,$-126		;b151
	add a,b			;b153
	ex af,af'		;b154
	nop			;b155
	jr z,lb0d8h		;b156
	dec b			;b158
	nop			;b159
	adc a,c			;b15a
	rla			;b15b
lb15ch:
	rra			;b15c
	rla			;b15d
	rlca			;b15e
	ld a,(bc)		;b15f
	rlca			;b160
	ld a,(bc)		;b161
	nop			;b162
	ld (bc),a		;b163
	rlca			;b164
	nop			;b165
	adc a,c			;b166
	ret m			;b167
lb168h:
	ret pe			;b168
	ret c			;b169
	ret p			;b16a
	and b			;b16b
	ret nc			;b16c
	sub b			;b16d
	and b			;b16e
	add a,b			;b16f
	rlca			;b170
	nop			;b171
	nop			;b172
	ld b,000h		;b173
	add a,h			;b175
	ld b,036h		;b176
	ld (hl),006h		;b178
	dec bc			;b17a
	nop			;b17b
	add a,(hl)		;b17c
	inc c			;b17d
	inc e			;b17e
	call m,01cfch		;b17f
	inc c			;b182
	dec b			;b183
	nop			;b184
	nop			;b185
	and b			;b186
	nop			;b187
	ld b,016h		;b188
	add hl,hl		;b18a
	ld a,a			;b18b
	rlca			;b18c
	rlca			;b18d
	djnz lb1afh		;b18e
	rlca			;b190
	rlca			;b191
	ld a,a			;b192
	add hl,hl		;b193
	ld d,006h		;b194
	nop			;b196
	ccf			;b197
	nop			;b198
	nop			;b199
	cp 0fch			;b19a
	call m,09afah		;b19c
	jp m,0fcfah		;b19f
	call m,000feh		;b1a2
	nop			;b1a5
	ccf			;b1a6
	inc bc			;b1a7
	nop			;b1a8
	adc a,d			;b1a9
	ld a,a			;b1aa
	add hl,hl		;b1ab
	rlca			;b1ac
	nop			;b1ad
	rrca			;b1ae
lb1afh:
	nop			;b1af
	nop			;b1b0
	rlca			;b1b1
	add hl,hl		;b1b2
	ld a,a			;b1b3
	inc b			;b1b4
	nop			;b1b5
	rst 8			;b1b6
	ld a,a			;b1b7
	cp 0feh			;b1b8
	and h			;b1ba
	call m,06f1fh		;b1bb
	rrca			;b1be
	rra			;b1bf
	call m,0fea4h		;b1c0
	cp 07fh			;b1c3
	nop			;b1c5
	nop			;b1c6
	ld (bc),a		;b1c7
	rlca			;b1c8
	xor (hl)		;b1c9
	ld d,c			;b1ca
	xor a			;b1cb
	ld (bc),a		;b1cc
	ld (0122fh),a		;b1cd
	xor a			;b1d0
	ld d,c			;b1d1
	xor (hl)		;b1d2
	nop			;b1d3
	ld bc,07c00h		;b1d4
	ld bc,03cfdh		;b1d7
	pop hl			;b1da
	ld a,h			;b1db
	and h			;b1dc
	inc h			;b1dd
	cp 0a5h			;b1de
	ld a,(hl)		;b1e0
	ret po			;b1e1
	dec a			;b1e2
	ld bc,000fdh		;b1e3
	nop			;b1e6
	ld bc,0ff00h		;b1e7
	xor a			;b1ea
	rst 38h			;b1eb
	rrca			;b1ec
	cpl			;b1ed
	ld (0ff1fh),a		;b1ee
	xor a			;b1f1
	rst 38h			;b1f2
	rlca			;b1f3
	ld (bc),a		;b1f4
	nop			;b1f5
	nop			;b1f6
	call m,0e100h		;b1f7
	defb 0fdh,0fch,07eh ;illegal sequence	;b1fa
	rst 38h			;b1fd
	dec h			;b1fe
	ld a,a			;b1ff
	cp 0fdh			;b200
	ret po			;b202
	call m,07c01h		;b203
	nop			;b206
	rlca			;b207
	nop			;b208
	add a,e			;b209
	ld h,c			;b20a
	or (hl)			;b20b
	or (hl)			;b20c
	ld a,(bc)		;b20d
	nop			;b20e
	adc a,b			;b20f
	rrca			;b210
	ld a,(0f078h)		;b211
lb214h:
	ret m			;b214
lb215h:
	ret m			;b215
	rrca			;b216
	ret p			;b217
	ld c,000h		;b218
	add a,c			;b21a
	ld h,c			;b21b
	add hl,bc		;b21c
	nop			;b21d
	adc a,b			;b21e
	rrca			;b21f
	ld h,064h		;b220
	inc c			;b222
	inc b			;b223
	inc b			;b224
	rst 38h			;b225
	ret p			;b226
	inc b			;b227
	nop			;b228
	adc a,c			;b229
	jr nz,lb26ch		;b22a
	ld (hl),b		;b22c
	inc b			;b22d
	inc b			;b22e
	rlca			;b22f
	rlca			;b230
	inc b			;b231
	inc bc			;b232
	inc b			;b233
	ld bc,0000ah		;b234
	add a,d			;b237
	call c,004e8h		;b238
	ret m			;b23b
	adc a,l			;b23c
	call m,00000h		;b23d
	djnz lb25ah		;b240
	ex af,af'		;b242
	jr c,$+4		;b243
	ld bc,00707h		;b245
	ld (bc),a		;b248
	ld bc,0000bh		;b249
	adc a,c			;b24c
	add a,b			;b24d
	ret nz			;b24e
	inc a			;b24f
	jr lb25ah		;b250
	sbc a,b			;b252
	ret pe			;b253
	xor b			;b254
	ld a,h			;b255
	dec b			;b256
	nop			;b257
	add a,c			;b258
	inc bc			;b259
lb25ah:
	inc bc			;b25a
	ld bc,00092h		;b25b
	dec c			;b25e
	dec e			;b25f
	dec e			;b260
	rra			;b261
	rra			;b262
	inc d			;b263
	dec d			;b264
	ex af,af'		;b265
	nop			;b266
	ld b,b			;b267
	ld b,b			;b268
lb269h:
	add a,b			;b269
	ret nz			;b26a
	add a,b			;b26b
lb26ch:
	nop			;b26c
	add a,b			;b26d
	ret po			;b26e
	inc b			;b26f
	ret p			;b270
	sbc a,h			;b271
	jr nz,lb214h		;b272
	nop			;b274
	ld bc,00202h		;b275
	nop			;b278
	ld (bc),a		;b279
	nop			;b27a
	nop			;b27b
	ld bc,00e07h		;b27c
	ld c,00ch		;b27f
	ld a,(bc)		;b281
	dec bc			;b282
	ld a,(bc)		;b283
	rlca			;b284
	add a,b			;b285
lb286h:
	nop			;b286
	nop			;b287
	ld b,b			;b288
	nop			;b289
	nop			;b28a
	add a,b			;b28b
	nop			;b28c
	and b			;b28d
	inc bc			;b28e
	jr nc,lb215h		;b28f
	ld d,b			;b291
	ret nc			;b292
	ld d,b			;b293
	ret po			;b294
	rlca			;b295
	nop			;b296
	add a,d			;b297
	dec sp			;b298
	rla			;b299
	inc b			;b29a
	rra			;b29b
	adc a,h			;b29c
	ccf			;b29d
	nop			;b29e
	nop			;b29f
	inc b			;b2a0
	ld (bc),a		;b2a1
	ld c,020h		;b2a2
	jr nz,lb286h		;b2a4
	ret po			;b2a6
	jr nz,lb269h		;b2a7
	inc b			;b2a9
	add a,b			;b2aa
	ex af,af'		;b2ab
	nop			;b2ac
	sub l			;b2ad
	ld bc,03c03h		;b2ae
	jr lb2c3h		;b2b1
	add hl,de		;b2b3
	rla			;b2b4
	dec d			;b2b5
	ld a,000h		;b2b6
	nop			;b2b8
	ex af,af'		;b2b9
	jr lb2cch		;b2ba
	inc e			;b2bc
	ld b,b			;b2bd
	add a,b			;b2be
	ret po			;b2bf
	ret po			;b2c0
	ld b,b			;b2c1
	add a,b			;b2c2
lb2c3h:
	ld a,(bc)		;b2c3
	nop			;b2c4
	adc a,b			;b2c5
	ret p			;b2c6
	ld e,h			;b2c7
	ld e,00fh		;b2c8
	rra			;b2ca
	rra			;b2cb
lb2cch:
	ret p			;b2cc
	rrca			;b2cd
	dec bc			;b2ce
	nop			;b2cf
	add a,e			;b2d0
	add a,(hl)		;b2d1
	ld l,l			;b2d2
	ld l,l			;b2d3
	ld a,(bc)		;b2d4
	nop			;b2d5
	adc a,b			;b2d6
	ret p			;b2d7
	ld h,h			;b2d8
	ld h,030h		;b2d9
	jr nz,lb2fdh		;b2db
	rst 38h			;b2dd
	rrca			;b2de
	ld c,000h		;b2df
	add a,c			;b2e1
	add a,(hl)		;b2e2
	dec b			;b2e3
	nop			;b2e4
	nop			;b2e5
	add a,l			;b2e6
	nop			;b2e7
	ld bc,00203h		;b2e8
	nop			;b2eb
	inc b			;b2ec
	ld bc,00302h		;b2ed
	ld (bc),a		;b2f0
	rlca			;b2f1
	ld (bc),a		;b2f2
	rrca			;b2f3
	add a,l			;b2f4
	rra			;b2f5
	nop			;b2f6
	add a,b			;b2f7
	add a,b			;b2f8
	nop			;b2f9
	rlca			;b2fa
	add a,b			;b2fb
	ld (bc),a		;b2fc
lb2fdh:
	ret nz			;b2fd
	ld (bc),a		;b2fe
	ret po			;b2ff
	sub c			;b300
	ret p			;b301
	ld bc,00002h		;b302
	ld bc,00303h		;b305
	ld (bc),a		;b308
	inc bc			;b309
	inc bc			;b30a
	ld b,006h		;b30b
	ld a,(bc)		;b30d
	ld a,(bc)		;b30e
	ld (de),a		;b30f
	ld (de),a		;b310
	rrca			;b311
	inc bc			;b312
	nop			;b313
	sbc a,b			;b314
	add a,b			;b315
	nop			;b316
	nop			;b317
	add a,b			;b318
	nop			;b319
	nop			;b31a
	ret nz			;b31b
	ret nz			;b31c
	and b			;b31d
	and b			;b31e
	sub b			;b31f
	sub b			;b320
	ret po			;b321
	nop			;b322
	jr nc,$+122		;b323
	inc e			;b325
	ld (00805h),hl		;b326
	rlca			;b329
	inc bc			;b32a
	ld bc,00b01h		;b32b
	nop			;b32e
	sub l			;b32f
	ld h,b			;b330
	ret po			;b331
	call m,0fcfeh		;b332
	ret m			;b335
	ret p			;b336
	ret po			;b337
	ld b,b			;b338
	nop			;b339
	nop			;b33a
	ld b,b			;b33b
	nop			;b33c
	ld l,h			;b33d
	inc a			;b33e
	dec de			;b33f
	rlca			;b340
	ld b,003h		;b341
	inc bc			;b343
	ld (bc),a		;b344
	inc bc			;b345
	ld bc,00008h		;b346
	adc a,c			;b349
	ret po			;b34a
	ld e,h			;b34b
	ld (0cc92h),hl		;b34c
	ld l,b			;b34f
	jr nc,lb372h		;b350
	add a,b			;b352
	rlca			;b353
	nop			;b354
	add a,e			;b355
	ld (hl),d		;b356
	jp m,00a0dh		;b357
	nop			;b35a
	adc a,c			;b35b
	ld bc,01f07h		;b35c
	ld a,a			;b35f
	nop			;b360
	rst 38h			;b361
	rra			;b362
	rlca			;b363
	ld bc,0000ah		;b364
	ld (bc),a		;b367
	dec c			;b368
	add a,c			;b369
	ld a,d			;b36a
	ld a,(bc)		;b36b
	nop			;b36c
	adc a,c			;b36d
	ld b,019h		;b36e
	ld h,c			;b370
	rst 38h			;b371
lb372h:
	rst 38h			;b372
	nop			;b373
	ld h,c			;b374
	add hl,de		;b375
	ld b,009h		;b376
	nop			;b378
	ld (bc),a		;b379
	ld bc,00387h		;b37a
	ld bc,00507h		;b37d
	ld l,074h		;b380
	ld h,b			;b382
	inc bc			;b383
	nop			;b384
	adc a,c			;b385
	ld b,b			;b386
	ret po			;b387
	ret p			;b388
	ret m			;b389
	call m,0fcfeh		;b38a
	ret po			;b38d
	ret po			;b38e
	ex af,af'		;b38f
	nop			;b390
	inc bc			;b391
	ld bc,00295h		;b392
	inc bc			;b395
	ld (bc),a		;b396
	rlca			;b397
	ex af,af'		;b398
	dec de			;b399
	ld e,00ch		;b39a
	jr lb40eh		;b39c
	nop			;b39e
	nop			;b39f
	ret nz			;b3a0
	jr nz,lb3d3h		;b3a1
	ld c,b			;b3a3
	sbc a,h			;b3a4
	ld (03c62h),a		;b3a5
	ld h,b			;b3a8
	ld b,000h		;b3a9
	nop			;b3ab
	ret nz			;b3ac
	add a,a			;b3ad
	rrca			;b3ae
	rrca			;b3af
	adc a,(hl)		;b3b0
	rlca			;b3b1
	ld c,a			;b3b2
	ccf			;b3b3
	ld l,027h		;b3b4
	daa			;b3b6
	ld d,a			;b3b7
	and l			;b3b8
	ld c,h			;b3b9
	add a,a			;b3ba
	ld (bc),a		;b3bb
	ld bc,0f0e1h		;b3bc
	ret p			;b3bf
	ld (hl),c		;b3c0
	ret po			;b3c1
	jp p,074fch		;b3c2
	call po,0eae4h		;b3c5
	and l			;b3c8
	ld (040e1h),a		;b3c9
	add a,b			;b3cc
	rrca			;b3cd
	sbc a,h			;b3ce
	cp b			;b3cf
	cp c			;b3d0
	cp h			;b3d1
	rst 38h			;b3d2
lb3d3h:
	call m,0fcf9h		;b3d3
	cp 03bh			;b3d6
	ld l,d			;b3d8
	rst 10h			;b3d9
	adc a,e			;b3da
	dec b			;b3db
	ld (bc),a		;b3dc
	ret p			;b3dd
	add hl,sp		;b3de
	dec e			;b3df
	sbc a,l			;b3e0
	dec a			;b3e1
	rst 38h			;b3e2
lb3e3h:
	ccf			;b3e3
	sbc a,a			;b3e4
	ccf			;b3e5
	ld a,a			;b3e6
	call c,0eb56h		;b3e7
	pop de			;b3ea
	and b			;b3eb
	ld b,b			;b3ec
	nop			;b3ed
	cp e			;b3ee
	nop			;b3ef
	rlca			;b3f0
	inc c			;b3f1
	rra			;b3f2
	ld e,00ch		;b3f3
	ld b,005h		;b3f5
	ld (hl),025h		;b3f7
	ld d,(hl)		;b3f9
	ld d,l			;b3fa
	ld d,(hl)		;b3fb
	ld d,l			;b3fc
	ld a,05eh		;b3fd
	nop			;b3ff
	ld b,b			;b400
	nop			;b401
	ret m			;b402
	sbc a,b			;b403
	jr c,$-14		;b404
	ret po			;b406
	call m,0f3feh		;b407
	ei			;b40a
	ld e,e			;b40b
	ei			;b40c
	ld l,(hl)		;b40d
lb40eh:
	ei			;b40e
	rlca			;b40f
	rrca			;b410
	rra			;b411
	rra			;b412
	ld bc,00913h		;b413
	rlca			;b416
	ccf			;b417
	ld a,(hl)		;b418
	xor l			;b419
	xor a			;b41a
	xor l			;b41b
	xor a			;b41c
	ld a,l			;b41d
	cp a			;b41e
	ret po			;b41f
	ret p			;b420
	ret m			;b421
	ret m			;b422
	ld a,b			;b423
	ret m			;b424
	ret p			;b425
	ret po			;b426
	call m,0df9ah		;b427
	inc bc			;b42a
	rst 38h			;b42b
	or h			;b42c
	cp 0ffh			;b42d
	ld e,(hl)		;b42f
	ld a,055h		;b430
	ld d,(hl)		;b432
	ld d,l			;b433
	ld d,(hl)		;b434
	dec h			;b435
	ld (hl),005h		;b436
	ld b,00ch		;b438
	ld e,01fh		;b43a
	inc c			;b43c
	rlca			;b43d
	nop			;b43e
	ei			;b43f
	ld l,(hl)		;b440
	ei			;b441
	ld e,e			;b442
	ei			;b443
	di			;b444
	cp 0fch			;b445
	ret po			;b447
	ret p			;b448
	jr c,lb3e3h		;b449
	ret m			;b44b
	nop			;b44c
	ld b,b			;b44d
	nop			;b44e
	cp a			;b44f
	ld a,l			;b450
	xor a			;b451
	xor l			;b452
	xor a			;b453
	xor l			;b454
	ld a,(hl)		;b455
	ccf			;b456
	rlca			;b457
	add hl,bc		;b458
	inc de			;b459
	ld bc,01f1fh		;b45a
	rrca			;b45d
	rlca			;b45e
	rst 38h			;b45f
	cp 003h			;b460
	rst 38h			;b462
	adc a,e			;b463
	rst 18h			;b464
	sbc a,d			;b465
	call m,0f0e0h		;b466
	ret m			;b469
	ld a,b			;b46a
	ret m			;b46b
	ret m			;b46c
	ret p			;b46d
	ret po			;b46e
	nop			;b46f
	ld (bc),a		;b470
	nop			;b471
	sbc a,c			;b472
	inc c			;b473
	inc b			;b474
	daa			;b475
	add hl,de		;b476
	rrca			;b477
	inc b			;b478
	rlca			;b479
	ccf			;b47a
	ld l,b			;b47b
	ld a,a			;b47c
	ccf			;b47d
	ld a,a			;b47e
	ld l,b			;b47f
	ccf			;b480
	inc bc			;b481
	inc b			;b482
	inc bc			;b483
	inc b			;b484
	dec bc			;b485
	rla			;b486
	ret nc			;b487
	rst 38h			;b488
	xor c			;b489
	and b			;b48a
	ld e,a			;b48b
	inc bc			;b48c
	rst 38h			;b48d
	add a,d			;b48e
	ld e,a			;b48f
	and b			;b490
	inc bc			;b491
	nop			;b492
	xor b			;b493
	ld a,(de)		;b494
	inc a			;b495
	ld e,00fh		;b496
	rlca			;b498
	rlca			;b499
	jr z,lb51bh		;b49a
	ld a,a			;b49c
	add hl,hl		;b49d
	ld a,a			;b49e
	ld a,a			;b49f
	ccf			;b4a0
	inc c			;b4a1
	rlca			;b4a2
	inc c			;b4a3
	rlca			;b4a4
	inc (hl)		;b4a5
	ret pe			;b4a6
	cpl			;b4a7
	rst 38h			;b4a8
	cp 05fh			;b4a9
	and b			;b4ab
	rst 38h			;b4ac
	djnz $+1		;b4ad
	and b			;b4af
	rst 38h			;b4b0
	ret nc			;b4b1
	ld h,b			;b4b2
	ret nc			;b4b3
	ld h,b			;b4b4
lb4b5h:
	ret nc			;b4b5
	ret pe			;b4b6
	dec bc			;b4b7
	rst 38h			;b4b8
	dec d			;b4b9
	dec b			;b4ba
	jp m,0ff03h		;b4bb
	and d			;b4be
	jp m,00005h		;b4bf
	nop			;b4c2
	jr nc,lb4e5h		;b4c3
	call po,0f098h		;b4c5
	jr nz,$-30		;b4c8
	call m,0fe16h		;b4ca
	call m,016feh		;b4cd
	call m,0e030h		;b4d0
	jr nc,lb4b5h		;b4d3
	inc l			;b4d5
	rla			;b4d6
	call p,0ffffh		;b4d7
	jp m,0ff05h		;b4da
	ex af,af'		;b4dd
	rst 38h			;b4de
	dec b			;b4df
	rst 38h			;b4e0
	inc bc			;b4e1
	nop			;b4e2
	sbc a,a			;b4e3
	ld e,b			;b4e4
lb4e5h:
	inc a			;b4e5
	ld a,b			;b4e6
	ret p			;b4e7
	ret po			;b4e8
	ret po			;b4e9
	inc d			;b4ea
	cp 0feh			;b4eb
	sub h			;b4ed
	cp 0feh			;b4ee
	call m,0683fh		;b4f0
	ld a,a			;b4f3
	ccf			;b4f4
	ld a,a			;b4f5
	ld l,b			;b4f6
	ccf			;b4f7
lb4f8h:
	rlca			;b4f8
	inc b			;b4f9
	rrca			;b4fa
	add hl,de		;b4fb
	daa			;b4fc
	inc b			;b4fd
	inc c			;b4fe
	nop			;b4ff
	nop			;b500
	and b			;b501
	ld e,a			;b502
	inc bc			;b503
	rst 38h			;b504
sub_b505h:
	sbc a,b			;b505
	ld e,a			;b506
	and b			;b507
	xor c			;b508
	rst 38h			;b509
	ret nc			;b50a
	rla			;b50b
	dec bc			;b50c
	inc b			;b50d
	inc bc			;b50e
	inc b			;b50f
	inc bc			;b510
	ccf			;b511
	ld a,a			;b512
	ld a,a			;b513
	add hl,hl		;b514
	ld a,a			;b515
	ld a,a			;b516
	jr z,lb520h		;b517
	rlca			;b519
	rrca			;b51a
lb51bh:
	ld e,03ch		;b51b
	ld a,(de)		;b51d
	inc bc			;b51e
	nop			;b51f
lb520h:
	sub d			;b520
	rst 38h			;b521
	and b			;b522
	rst 38h			;b523
	djnz $+1		;b524
	and b			;b526
	ld e,a			;b527
	cp 0ffh			;b528
	cpl			;b52a
	ret pe			;b52b
	inc (hl)		;b52c
	rlca			;b52d
	inc c			;b52e
	rlca			;b52f
	inc c			;b530
	dec b			;b531
	jp m,0ff03h		;b532
	cp b			;b535
	jp m,01505h		;b536
	rst 38h			;b539
	dec bc			;b53a
	ret pe			;b53b
	ret nc			;b53c
	ld h,b			;b53d
	ret nc			;b53e
	ld h,b			;b53f
lb540h:
	ret nc			;b540
	call m,0fe16h		;b541
	call m,016feh		;b544
	call m,020e0h		;b547
	ret p			;b54a
	sbc a,b			;b54b
	call po,03020h		;b54c
	nop			;b54f
	nop			;b550
	rst 38h			;b551
	dec b			;b552
	rst 38h			;b553
	ex af,af'		;b554
	rst 38h			;b555
	dec b			;b556
	jp m,0ffffh		;b557
	call p,02c17h		;b55a
	ret po			;b55d
lb55eh:
	jr nc,lb540h		;b55e
	jr nc,lb55eh		;b560
	cp 0feh			;b562
	sub h			;b564
	cp 0feh			;b565
	inc d			;b567
	ret po			;b568
	ret po			;b569
	ret p			;b56a
	ld a,b			;b56b
	inc a			;b56c
	ld e,b			;b56d
	inc bc			;b56e
	nop			;b56f
	nop			;b570
	inc b			;b571
	nop			;b572
	ld (bc),a		;b573
	xor b			;b574
	adc a,d			;b575
	rst 38h			;b576
	xor b			;b577
	rra			;b578
	ccf			;b579
	ld hl,0003fh		;b57a
	add a,b			;b57d
	ld a,a			;b57e
	ld e,a			;b57f
	inc b			;b580
	nop			;b581
	ld (bc),a		;b582
	add a,h			;b583
	adc a,d			;b584
	call m,0ff87h		;b585
	rst 38h			;b588
	xor l			;b589
	rst 38h			;b58a
	rlca			;b58b
	add hl,bc		;b58c
	jp p,004f2h		;b58d
	nop			;b590
	adc a,h			;b591
	rst 38h			;b592
	ld d,a			;b593
	xor b			;b594
	rst 38h			;b595
	rra			;b596
	ld hl,03f3fh		;b597
	rst 38h			;b59a
	ld a,a			;b59b
	cp a			;b59c
	and d			;b59d
	inc b			;b59e
	nop			;b59f
	add a,(hl)		;b5a0
	call m,08478h		;b5a1
	rst 38h			;b5a4
	rst 38h			;b5a5
	xor l			;b5a6
	inc bc			;b5a7
	rst 38h			;b5a8
	adc a,a			;b5a9
	ret p			;b5aa
	jp (hl)			;b5ab
	add hl,hl		;b5ac
	ld d,e			;b5ad
	ld e,l			;b5ae
	ld a,a			;b5af
	nop			;b5b0
	ccf			;b5b1
	ld hl,01f3fh		;b5b2
	xor b			;b5b5
	xor b			;b5b6
	rst 38h			;b5b7
	xor b			;b5b8
	inc b			;b5b9
	nop			;b5ba
	adc a,h			;b5bb
	ld (0f2f2h),a		;b5bc
	rlca			;b5bf
	rst 38h			;b5c0
	xor l			;b5c1
	rst 38h			;b5c2
	rst 38h			;b5c3
	add a,a			;b5c4
	add a,h			;b5c5
	call m,00484h		;b5c6
	nop			;b5c9
	adc a,h			;b5ca
	xor (hl)		;b5cb
	cp a			;b5cc
	add a,b			;b5cd
	rst 38h			;b5ce
	ccf			;b5cf
	ccf			;b5d0
	ld hl,0ff1fh		;b5d1
	ld d,a			;b5d4
	xor b			;b5d5
	rst 38h			;b5d6
	inc b			;b5d7
	nop			;b5d8
	ld (bc),a		;b5d9
	jp (hl)			;b5da
	add a,c			;b5db
	add hl,bc		;b5dc
	inc bc			;b5dd
	rst 38h			;b5de
	add a,(hl)		;b5df
	xor l			;b5e0
	rst 38h			;b5e1
	rst 38h			;b5e2
	ld a,b			;b5e3
	add a,h			;b5e4
	call m,00004h		;b5e5
	nop			;b5e8
	ld b,0bfh		;b5e9
	add a,c			;b5eb
	ld h,(hl)		;b5ec
	ld b,0ffh		;b5ed
	add a,e			;b5ef
	jp 0c3ffh		;b5f0
	ld b,0fdh		;b5f3
	add a,c			;b5f5
	ld h,(hl)		;b5f6
	add hl,bc		;b5f7
	rst 38h			;b5f8
	ld b,0bfh		;b5f9
	add a,c			;b5fb
	ld h,(hl)		;b5fc
	add hl,bc		;b5fd
	rst 38h			;b5fe
	ld b,0fdh		;b5ff
	add a,c			;b601
	ld h,(hl)		;b602
	ld b,0ffh		;b603
	add a,e			;b605
	jp 0c3ffh		;b606
	ld b,0ffh		;b609
	add a,a			;b60b
	ld h,(hl)		;b60c
	rst 38h			;b60d
	rst 38h			;b60e
	ret p			;b60f
	rst 30h			;b610
	rst 30h			;b611
	rst 38h			;b612
	inc bc			;b613
	ld d,a			;b614
	ld b,0ffh		;b615
	add a,a			;b617
	ld h,(hl)		;b618
	rst 38h			;b619
	rst 38h			;b61a
	rrca			;b61b
	rst 28h			;b61c
	rst 28h			;b61d
	rst 38h			;b61e
	inc bc			;b61f
	jp pe,laf04h		;b620
	rlca			;b623
	rst 38h			;b624
	add a,c			;b625
	ret p			;b626
	inc b			;b627
	rst 30h			;b628
	inc b			;b629
	push af			;b62a
	rlca			;b62b
	rst 38h			;b62c
	add a,c			;b62d
	rrca			;b62e
	inc b			;b62f
	rst 28h			;b630
	nop			;b631
	add a,a			;b632
	nop			;b633
	rrca			;b634
	ld a,083h		;b635
	ld (hl),e		;b637
	rrca			;b638
	inc e			;b639
	inc bc			;b63a
	rra			;b63b
	or (hl)			;b63c
	rrca			;b63d
	ld (hl),e		;b63e
	defb 0fdh,01eh,00fh ;illegal sequence	;b63f
	nop			;b642
	jp c,0a874h		;b643
	ld sp,hl		;b646
	call pe,0e4f3h		;b647
	ret nz			;b64a
	ret nz			;b64b
	call po,0ecffh		;b64c
	sub (hl)		;b64f
	xor c			;b650
	halt			;b651
	jp c,0100fh		;b652
	ld b,c			;b655
	ld a,l			;b656
	adc a,a			;b657
	ld a,h			;b658
	inc de			;b659
	nop			;b65a
	nop			;b65b
	djnz lb6dah		;b65c
	adc a,a			;b65e
	inc bc			;b65f
	ld h,c			;b660
	djnz $+17		;b661
	and 0cch		;b663
	sbc a,096h		;b665
	di			;b667
	ccf			;b668
	ld a,h			;b669
	ld a,b			;b66a
	ld a,b			;b66b
	ld a,h			;b66c
	ccf			;b66d
	di			;b66e
	ld sp,hl		;b66f
	rst 18h			;b670
	adc a,0e6h		;b671
	nop			;b673
	or b			;b674
	inc bc			;b675
	inc c			;b676
	dec de			;b677
	rra			;b678
	ld a,039h		;b679
	ld h,a			;b67b
	ld c,(hl)		;b67c
	ld (hl),l		;b67d
	dec b			;b67e
	dec c			;b67f
	jr lb698h		;b680
	cpl			;b682
	dec e			;b683
	ld c,080h		;b684
	ret nz			;b686
	ret po			;b687
	ld d,b			;b688
	nop			;b689
	ret p			;b68a
	ld (hl),b		;b68b
	ret m			;b68c
	sbc a,b			;b68d
	jp p,0faeeh		;b68e
	call z,094e8h		;b691
	jr c,lb696h		;b694
lb696h:
	inc bc			;b696
	inc b			;b697
lb698h:
	ld bc,01f07h		;b698
	ld a,a			;b69b
	ccf			;b69c
	halt			;b69d
	ld a,(bc)		;b69e
	inc de			;b69f
	daa			;b6a0
	cpl			;b6a1
	ccf			;b6a2
	rra			;b6a3
	scf			;b6a4
	inc bc			;b6a5
	nop			;b6a6
lb6a7h:
	inc bc			;b6a7
	ret p			;b6a8
	cp h			;b6a9
	adc a,b			;b6aa
	ld (hl),b		;b6ab
	call p,0de9eh		;b6ac
	adc a,0fch		;b6af
lb6b1h:
	sbc a,b			;b6b1
	call m,0bfd8h		;b6b2
	ld a,d			;b6b5
	ld c,(hl)		;b6b6
	ld sp,00804h		;b6b7
	jr lb6cch		;b6ba
	jr nc,$+50		;b6bc
	ld hl,06763h		;b6be
	ld c,d			;b6c1
	rra			;b6c2
	jr nc,lb6b1h		;b6c3
	sub d			;b6c5
	ld h,c			;b6c6
	add a,b			;b6c7
	inc bc			;b6c8
	inc b			;b6c9
	ld e,03ch		;b6ca
lb6cch:
	ld a,(hl)		;b6cc
	call nc,08078h		;b6cd
	nop			;b6d0
	add a,b			;b6d1
	nop			;b6d2
	nop			;b6d3
	ld a,h			;b6d4
	ld b,a			;b6d5
	ccf			;b6d6
	ld a,a			;b6d7
	dec de			;b6d8
	rla			;b6d9
lb6dah:
	daa			;b6da
	cpl			;b6db
	ld c,a			;b6dc
	ld c,a			;b6dd
	ld e,a			;b6de
lb6dfh:
	ld e,09dh		;b6df
	cp a			;b6e1
	rst 38h			;b6e2
	ld (hl),b		;b6e3
	inc e			;b6e4
	ld a,(hl)		;b6e5
	inc bc			;b6e6
	rst 38h			;b6e7
	add a,(hl)		;b6e8
	cp 0fah			;b6e9
	or 0eah			;b6eb
	call m,003f8h		;b6ed
	add a,b			;b6f0
	ld (bc),a		;b6f1
	nop			;b6f2
	and b			;b6f3
	ld bc,00703h		;b6f4
	ld a,(bc)		;b6f7
	nop			;b6f8
	rrca			;b6f9
	ld c,01fh		;b6fa
	add hl,de		;b6fc
	ld c,a			;b6fd
	ld (hl),a		;b6fe
	ld e,a			;b6ff
	inc sp			;b700
	rla			;b701
	add hl,hl		;b702
	inc e			;b703
	ret nz			;b704
	jr nc,lb6dfh		;b705
	ret m			;b707
	ld a,h			;b708
	sbc a,h			;b709
	and 072h		;b70a
	xor (hl)		;b70c
	and b			;b70d
	or b			;b70e
	jr lb779h		;b70f
	call p,070b8h		;b711
	inc bc			;b714
	nop			;b715
	inc bc			;b716
	rrca			;b717
	cp h			;b718
	ld de,02f0eh		;b719
	ld a,c			;b71c
	ld a,e			;b71d
	ld (hl),e		;b71e
	ccf			;b71f
	add hl,de		;b720
	ccf			;b721
	dec de			;b722
	nop			;b723
	ret nz			;b724
	jr nz,lb6a7h		;b725
	ret po			;b727
	ret m			;b728
	cp 0fch			;b729
	ld l,(hl)		;b72b
	ld d,b			;b72c
	ret z			;b72d
	call po,0fcf4h		;b72e
	ret m			;b731
	call pe,04937h		;b732
	add a,(hl)		;b735
	ld bc,020c0h		;b736
	ld a,b			;b739
	inc a			;b73a
	ld a,(hl)		;b73b
	dec hl			;b73c
	ld e,001h		;b73d
	nop			;b73f
	ld bc,00000h		;b740
	ld e,(iy+072h)		;b743
	adc a,h			;b746
	jr nz,lb759h		;b747
	jr lb753h		;b749
	inc c			;b74b
	inc c			;b74c
	add a,h			;b74d
	add a,0e6h		;b74e
	ld d,d			;b750
	ret m			;b751
	inc c			;b752
lb753h:
	jr c,lb7d3h		;b753
	inc bc			;b755
	rst 38h			;b756
	add a,(hl)		;b757
	ld a,a			;b758
lb759h:
	ld e,a			;b759
	ld l,a			;b75a
	ld d,a			;b75b
	ccf			;b75c
	rra			;b75d
	inc bc			;b75e
	ld bc,00002h		;b75f
	sub b			;b762
	ld a,0e2h		;b763
	call m,0d8feh		;b765
	ret pe			;b768
	call po,0f2f4h		;b769
	jp p,078fah		;b76c
	cp c			;b76f
	defb 0fdh,0ffh,00eh ;illegal sequence	;b770
	nop			;b773
	rst 38h			;b774
	nop			;b775
	dec b			;b776
	dec bc			;b777
	rrca			;b778
lb779h:
	add hl,bc		;b779
	ld l,e			;b77a
	add a,c			;b77b
	rst 38h			;b77c
	ld h,a			;b77d
	adc a,l			;b77e
	rst 38h			;b77f
	rst 20h			;b780
	ld b,c			;b781
	nop			;b782
	cpl			;b783
	call p,sub_a000h	;b784
	ret nc			;b787
	ret p			;b788
	sub b			;b789
	sub 081h		;b78a
	rst 38h			;b78c
	and 0b1h		;b78d
	rst 38h			;b78f
	rst 20h			;b790
	add a,d			;b791
	nop			;b792
	call p,0002fh		;b793
	ld b,00ch		;b796
	ld c,00eh		;b798
	ld (hl),h		;b79a
	cp 0ffh			;b79b
	ld a,b			;b79d
	di			;b79e
	ld a,(hl)		;b79f
	inc a			;b7a0
	inc e			;b7a1
	ld a,a			;b7a2
	ret nc			;b7a3
	rst 38h			;b7a4
	nop			;b7a5
	ld h,b			;b7a6
	jr nc,lb819h		;b7a7
	ld (hl),b		;b7a9
	ld l,07fh		;b7aa
	rst 38h			;b7ac
	ld e,0cfh		;b7ad
	ld a,(hl)		;b7af
	inc a			;b7b0
lb7b1h:
	jr c,lb7b1h		;b7b1
	dec bc			;b7b3
	rst 38h			;b7b4
	call p,0002fh		;b7b5
	ld b,c			;b7b8
	rst 20h			;b7b9
	rst 38h			;b7ba
	adc a,l			;b7bb
	ld h,a			;b7bc
	rst 38h			;b7bd
	add a,c			;b7be
	ld l,e			;b7bf
	add hl,bc		;b7c0
	rrca			;b7c1
	dec bc			;b7c2
	dec b			;b7c3
	nop			;b7c4
	cpl			;b7c5
	call p,08200h		;b7c6
	rst 20h			;b7c9
	rst 38h			;b7ca
	or c			;b7cb
	and 0ffh		;b7cc
	add a,c			;b7ce
	sub 090h		;b7cf
	ret p			;b7d1
	ret nc			;b7d2
lb7d3h:
	and b			;b7d3
	nop			;b7d4
	rst 38h			;b7d5
	ret nc			;b7d6
	ld a,a			;b7d7
	inc e			;b7d8
	inc a			;b7d9
	ld a,(hl)		;b7da
	di			;b7db
	ld a,b			;b7dc
	rst 38h			;b7dd
	cp 074h			;b7de
	ld c,00eh		;b7e0
	inc c			;b7e2
	ld b,000h		;b7e3
	rst 38h			;b7e5
	dec bc			;b7e6
	cp 038h			;b7e7
	inc a			;b7e9
	ld a,(hl)		;b7ea
	rst 8			;b7eb
	ld e,0ffh		;b7ec
	ld a,a			;b7ee
	ld l,070h		;b7ef
	ld (hl),b		;b7f1
	jr nc,lb854h		;b7f2
	add a,c			;b7f4
	nop			;b7f5
	nop			;b7f6
	ld (bc),a		;b7f7
	rrca			;b7f8
	xor (hl)		;b7f9
lb7fah:
	inc e			;b7fa
	rra			;b7fb
	ld a,a			;b7fc
	ccf			;b7fd
	ld b,b			;b7fe
	add a,b			;b7ff
lb800h:
	ld a,a			;b800
	ld (hl),l		;b801
	cpl			;b802
	ld a,d			;b803
	rra			;b804
	cpl			;b805
	rla			;b806
	inc bc			;b807
	djnz lb7fah		;b808
	djnz $+1		;b80a
	push bc			;b80c
	ld b,l			;b80d
	cp a			;b80e
	call z,0ed44h		;b80f
	cp d			;b812
	push de			;b813
	rst 38h			;b814
	ret p			;b815
	ret p			;b816
	djnz lb81ch		;b817
lb819h:
	rla			;b819
	cpl			;b81a
	ld a,a			;b81b
lb81ch:
	ld (hl),b		;b81c
	jr nz,lb89eh		;b81d
	ld a,a			;b81f
	add a,b			;b820
	ld a,a			;b821
	jr nc,lb8a3h		;b822
	ld a,a			;b824
	inc e			;b825
	rrca			;b826
lb827h:
	rrca			;b827
	inc bc			;b828
	ret p			;b829
	adc a,(hl)		;b82a
	push hl			;b82b
	ld a,(0ffffh)		;b82c
	ld (hl),h		;b82f
	call m,0c5ffh		;b830
	rst 38h			;b833
	rst 38h			;b834
	djnz lb827h		;b835
	ret p			;b837
	ld b,b			;b838
	inc b			;b839
	nop			;b83a
	add a,(hl)		;b83b
	ld a,b			;b83c
	ld b,035h		;b83d
	inc (hl)		;b83f
	ld b,078h		;b840
	inc b			;b842
	nop			;b843
	add a,c			;b844
	ld b,b			;b845
	inc b			;b846
	nop			;b847
	adc a,b			;b848
	ld bc,06c1ch		;b849
	xor h			;b84c
	inc l			;b84d
	ld l,h			;b84e
	inc e			;b84f
	ld bc,00004h		;b850
	and b			;b853
lb854h:
	or b			;b854
	ld b,a			;b855
	rrca			;b856
	rrca			;b857
	inc (hl)		;b858
	inc bc			;b859
	ld bc,03333h		;b85a
	ld bc,03403h		;b85d
	rrca			;b860
	rrca			;b861
	ld b,a			;b862
	or b			;b863
	nop			;b864
	defb 0edh ;next byte illegal after ed	;b865
	rst 28h			;b866
	defb 0edh ;next byte illegal after ed	;b867
	ld (08cc0h),a		;b868
	call z,08ccch		;b86b
	ret nz			;b86e
	ld (0efedh),a		;b86f
	defb 0edh ;next byte illegal after ed	;b872
	nop			;b873
	nop			;b874
	adc a,h			;b875
	inc bc			;b876
	ld b,00ch		;b877
	rrca			;b879
	ld a,(bc)		;b87a
	ld d,b			;b87b
	scf			;b87c
	dec hl			;b87d
	ld a,l			;b87e
	ld a,05bh		;b87f
	xor l			;b881
	inc bc			;b882
	ld a,d			;b883
	adc a,l			;b884
	xor l			;b885
	ret nz			;b886
	ret po			;b887
	ld (hl),b		;b888
	ret p			;b889
	ld d,b			;b88a
	ld a,(bc)		;b88b
	call pe,07ed4h		;b88c
	or 06bh			;b88f
	or l			;b891
	inc bc			;b892
	rst 28h			;b893
	add a,h			;b894
	or l			;b895
	nop			;b896
	ld bc,00303h		;b897
	rrca			;b89a
	add a,(hl)		;b89b
	ld a,a			;b89c
	ld (hl),a		;b89d
lb89eh:
	ld a,(hl)		;b89e
	ld e,a			;b89f
	xor h			;b8a0
	rst 38h			;b8a1
	inc bc			;b8a2
lb8a3h:
	xor l			;b8a3
	add a,h			;b8a4
	rst 38h			;b8a5
	nop			;b8a6
	nop			;b8a7
	add a,b			;b8a8
	inc bc			;b8a9
	ret p			;b8aa
	add a,(hl)		;b8ab
	cp 0eeh			;b8ac
	cp 0fah			;b8ae
lb8b0h:
	or l			;b8b0
	rst 38h			;b8b1
	inc bc			;b8b2
	or l			;b8b3
	add a,c			;b8b4
	rst 38h			;b8b5
	nop			;b8b6
	ld (bc),a		;b8b7
	nop			;b8b8
	adc a,l			;b8b9
	add hl,de		;b8ba
	dec bc			;b8bb
	rlca			;b8bc
	rrca			;b8bd
	jr lb8c7h		;b8be
	rlca			;b8c0
	jr $+17			;b8c1
lb8c3h:
	rlca			;b8c3
	dec bc			;b8c4
	add hl,de		;b8c5
	add hl,de		;b8c6
lb8c7h:
	inc bc			;b8c7
	nop			;b8c8
	adc a,(hl)		;b8c9
	sbc a,b			;b8ca
	ret nc			;b8cb
	ret po			;b8cc
	ret p			;b8cd
	jr lb8b0h		;b8ce
lb8d0h:
	ret po			;b8d0
	jr lb8c3h		;b8d1
	ret po			;b8d3
	ret nc			;b8d4
	sbc a,b			;b8d5
	sbc a,b			;b8d6
	nop			;b8d7
	nop			;b8d8
	adc a,d			;b8d9
	ld b,018h		;b8da
	inc hl			;b8dc
	ld b,h			;b8dd
	ld b,b			;b8de
	inc bc			;b8df
	add a,(hl)		;b8e0
	add a,a			;b8e1
	rlca			;b8e2
	inc bc			;b8e3
	inc bc			;b8e4
	nop			;b8e5
	sub h			;b8e6
	ex af,af'		;b8e7
	dec c			;b8e8
	ld bc,la0a0h		;b8e9
	jr nz,lb92eh		;b8ec
	inc b			;b8ee
	sbc a,l			;b8ef
	call 0c04dh		;b8f0
	add a,b			;b8f3
	ld bc,00012h		;b8f4
	inc b			;b8f7
	ld d,b			;b8f8
	ld b,b			;b8f9
	ld bc,00004h		;b8fa
	add a,d			;b8fd
	add a,b			;b8fe
	add a,c			;b8ff
	inc bc			;b900
	add a,b			;b901
	sub (hl)		;b902
	ret nz			;b903
	ld b,b			;b904
	ld h,c			;b905
	jr c,$+25		;b906
	ld b,040h		;b908
	jr lb8d0h		;b90a
	ld (01f1ah),a		;b90c
	adc a,l			;b90f
	adc a,l			;b910
	add hl,bc		;b911
	ld bc,00002h		;b912
	and 018h		;b915
	ret pe			;b917
	and b			;b918
	nop			;b919
	rst 38h			;b91a
	nop			;b91b
	ld c,021h		;b91c
	ld a,03eh		;b91e
	dec a			;b920
	dec de			;b921
	ld (bc),a		;b922
	dec b			;b923
	ld de,02322h		;b924
	inc h			;b927
	inc d			;b928
	ld (de),a		;b929
	ld bc,0f080h		;b92a
	add a,h			;b92d
lb92eh:
	call m,sub_bcfch	;b92e
	ret c			;b931
	ld b,b			;b932
	and b			;b933
	adc a,b			;b934
	ld b,h			;b935
	call nz,02824h		;b936
	ld c,b			;b939
	add a,b			;b93a
	ld (bc),a		;b93b
	ld de,0411eh		;b93c
	ld b,c			;b93f
	ld b,e			;b940
	ld h,a			;b941
	ccf			;b942
	ld b,00ah		;b943
	inc de			;b945
	djnz lb95ah		;b946
	ld a,(bc)		;b948
	add hl,bc		;b949
	nop			;b94a
	ret nz			;b94b
	adc a,b			;b94c
	ld a,b			;b94d
	add a,d			;b94e
	add a,d			;b94f
	jp nz,0fce6h		;b950
	ld h,b			;b953
	ld d,b			;b954
	ret z			;b955
	ex af,af'		;b956
	ld c,b			;b957
	ld d,b			;b958
	sub b			;b959
lb95ah:
	nop			;b95a
	nop			;b95b
	ld c,021h		;b95c
	ld a,03eh		;b95e
	dec a			;b960
	dec de			;b961
	ld (bc),a		;b962
	dec b			;b963
	ld de,0090ah		;b964
	ld a,(bc)		;b967
	ld (de),a		;b968
	ld (08004h),hl		;b969
	ret p			;b96c
	add a,h			;b96d
	call m,sub_bcfch	;b96e
	ret c			;b971
	ld b,b			;b972
	and b			;b973
	adc a,b			;b974
	ld d,b			;b975
	sub b			;b976
	ld d,b			;b977
	ld c,b			;b978
	ld b,h			;b979
	jr nz,$+4		;b97a
	ld de,0411eh		;b97c
	ld b,c			;b97f
	ld b,e			;b980
	ld h,a			;b981
	ccf			;b982
	ld b,00ah		;b983
	rlca			;b985
	inc b			;b986
	dec b			;b987
	add hl,bc		;b988
	ld de,0c002h		;b989
	adc a,b			;b98c
	ld a,b			;b98d
	add a,d			;b98e
	add a,d			;b98f
	jp nz,0fce6h		;b990
	ld h,b			;b993
	ld d,b			;b994
	ret po			;b995
	jr nz,$-94		;b996
	sub b			;b998
	adc a,b			;b999
	add a,c			;b99a
	ld b,b			;b99b
	nop			;b99c
	inc b			;b99d
	nop			;b99e
	adc a,b			;b99f
	inc bc			;b9a0
	ld b,00dh		;b9a1
lb9a3h:
	dec bc			;b9a3
	dec bc			;b9a4
	dec c			;b9a5
	ld b,003h		;b9a6
	ex af,af'		;b9a8
	nop			;b9a9
	adc a,b			;b9aa
	ret nz			;b9ab
	ld h,b			;b9ac
	or b			;b9ad
	ret nc			;b9ae
	ret nc			;b9af
	or b			;b9b0
	ld h,b			;b9b1
	ret nz			;b9b2
	add hl,bc		;b9b3
	nop			;b9b4
	add a,(hl)		;b9b5
	ld bc,00703h		;b9b6
	rlca			;b9b9
	inc bc			;b9ba
	ld bc,0000ah		;b9bb
	add a,(hl)		;b9be
	add a,b			;b9bf
	ret nz			;b9c0
	ret po			;b9c1
	ret po			;b9c2
	ret nz			;b9c3
	add a,b			;b9c4
	rlca			;b9c5
	nop			;b9c6
	adc a,h			;b9c7
	inc bc			;b9c8
	ld c,018h		;b9c9
	inc de			;b9cb
	scf			;b9cc
	daa			;b9cd
	daa			;b9ce
	scf			;b9cf
	inc de			;b9d0
	jr lb9e1h		;b9d1
	inc bc			;b9d3
	inc b			;b9d4
	nop			;b9d5
	adc a,h			;b9d6
	ret nz			;b9d7
	ld (hl),b		;b9d8
	jr lb9a3h		;b9d9
	call pe,0e4e4h		;b9db
	call pe,018c8h		;b9de
lb9e1h:
	ld (hl),b		;b9e1
	ret nz			;b9e2
	dec b			;b9e3
	nop			;b9e4
	adc a,d			;b9e5
	ld bc,00f07h		;b9e6
	rrca			;b9e9
	rra			;b9ea
	rra			;b9eb
	rrca			;b9ec
	rrca			;b9ed
	rlca			;b9ee
	ld bc,00006h		;b9ef
	adc a,d			;b9f2
	add a,b			;b9f3
	ret po			;b9f4
	ret p			;b9f5
	ret p			;b9f6
	ret m			;b9f7
	ret m			;b9f8
	ret p			;b9f9
	ret p			;b9fa
	ret po			;b9fb
	add a,b			;b9fc
	inc bc			;b9fd
lb9feh:
	nop			;b9fe
	add a,(hl)		;b9ff
	rlca			;ba00
	inc e			;ba01
	jr nc,lba67h		;ba02
	ld c,a			;ba04
	rst 8			;ba05
	inc b			;ba06
	sbc a,a			;ba07
	adc a,h			;ba08
	rst 8			;ba09
	ld c,a			;ba0a
	ld h,e			;ba0b
	jr nc,lba2ah		;ba0c
	rlca			;ba0e
	ret po			;ba0f
	jr c,lba1eh		;ba10
	add a,0f2h		;ba12
	di			;ba14
	inc b			;ba15
	ld sp,hl		;ba16
	adc a,h			;ba17
	di			;ba18
	jp p,00cc6h		;ba19
	jr c,lb9feh		;ba1c
lba1eh:
	nop			;ba1e
	inc bc			;ba1f
	rrca			;ba20
	rra			;ba21
	ccf			;ba22
	ccf			;ba23
	inc b			;ba24
	ld a,a			;ba25
	ld (bc),a		;ba26
	ccf			;ba27
	adc a,d			;ba28
	rra			;ba29
lba2ah:
	rrca			;ba2a
	inc bc			;ba2b
	nop			;ba2c
	nop			;ba2d
	ret nz			;ba2e
	ret p			;ba2f
	ret m			;ba30
	call m,004fch		;ba31
	cp 002h			;ba34
	call m,0f884h		;ba36
	ret p			;ba39
	ret nz			;ba3a
	nop			;ba3b
	nop			;ba3c
	rst 38h			;ba3d
	rlca			;ba3e
	rra			;ba3f
	rrca			;ba40
	ld h,a			;ba41
	ld (hl),b		;ba42
	ei			;ba43
	or 0f5h			;ba44
	push af			;ba46
	or 0f3h			;ba47
	ld h,h			;ba49
	ld c,a			;ba4a
	rra			;ba4b
	rra			;ba4c
	rlca			;ba4d
	ret po			;ba4e
	ret m			;ba4f
	ret m			;ba50
	jp p,0cf26h		;ba51
	ld l,a			;ba54
	xor a			;ba55
	xor a			;ba56
	ld l,a			;ba57
	rst 18h			;ba58
	ld c,0e6h		;ba59
	ret p			;ba5b
	ret m			;ba5c
	ret po			;ba5d
	inc bc			;ba5e
	dec de			;ba5f
	dec a			;ba60
	ld a,l			;ba61
	ld a,h			;ba62
	ei			;ba63
	or 0f5h			;ba64
	push af			;ba66
lba67h:
	add a,03bh		;ba67
	ld a,h			;ba69
	ld a,a			;ba6a
	ccf			;ba6b
	rra			;ba6c
	rlca			;ba6d
	ret po			;ba6e
	ret m			;ba6f
	call m,03efeh		;ba70
	call c,0af63h		;ba73
	xor a			;ba76
	ld l,a			;ba77
	rst 18h			;ba78
	ld a,0beh		;ba79
	cp h			;ba7b
	ret c			;ba7c
	ret nz			;ba7d
	rlca			;ba7e
	rra			;ba7f
	ccf			;ba80
	ld a,a			;ba81
	ld a,h			;ba82
	ei			;ba83
	or 005h			;ba84
	push af			;ba86
	or 0fbh			;ba87
	ld a,h			;ba89
	ld a,(hl)		;ba8a
	ld a,01eh		;ba8b
	ld b,060h		;ba8d
	ld a,b			;ba8f
	ld a,h			;ba90
	ld a,(hl)		;ba91
	ld a,0dfh		;ba92
	ld l,a			;ba94
	xor a			;ba95
	and b			;ba96
	ld l,a			;ba97
	rst 18h			;ba98
	ld a,0feh		;ba99
	call m,0e0f8h		;ba9b
	rlca			;ba9e
	rra			;ba9f
	ccf			;baa0
	ld a,a			;baa1
	ld a,h			;baa2
	dec sp			;baa3
	add a,0f5h		;baa4
	push af			;baa6
	or 0fbh			;baa7
	ld a,h			;baa9
	ld a,l			;baaa
	dec a			;baab
	dec de			;baac
	inc bc			;baad
	ret nz			;baae
	ret c			;baaf
lbab0h:
	cp h			;bab0
	cp (hl)			;bab1
	ld a,0dfh		;bab2
	ld l,a			;bab4
	xor a			;bab5
	xor a			;bab6
	ld h,e			;bab7
	call c,0fe3eh		;bab8
	call m,081f8h		;babb
	ret po			;babe
	nop			;babf
	add a,h			;bac0
	rlca			;bac1
	rra			;bac2
	inc bc			;bac3
	inc a			;bac4
	inc bc			;bac5
	ld a,a			;bac6
	sub d			;bac7
	ret p			;bac8
	xor 0eeh		;bac9
	sbc a,05eh		;bacb
	ld e,a			;bacd
	rra			;bace
	rrca			;bacf
	ld bc,0f080h		;bad0
	ret m			;bad3
	jp m,07b7ah		;bad4
	ld (hl),a		;bad7
	ld (hl),a		;bad8
	rrca			;bad9
lbadah:
	inc bc			;bada
	cp 0adh			;badb
	inc a			;badd
	ret nz			;bade
	ret m			;badf
	ret po			;bae0
	rlca			;bae1
	rra			;bae2
	ccf			;bae3
	ld h,e			;bae4
	dec c			;bae5
	ld a,07eh		;bae6
	ld a,(hl)		;bae8
	ret m			;bae9
	rst 30h			;baea
	rst 28h			;baeb
	ld l,a			;baec
	ld h,a			;baed
	scf			;baee
	inc de			;baef
	nop			;baf0
	nop			;baf1
	ret z			;baf2
	call pe,0f6e6h		;baf3
	rst 30h			;baf6
	rst 28h			;baf7
	rra			;baf8
	ld a,(hl)		;baf9
	ld a,(hl)		;bafa
	ld a,h			;bafb
	or b			;bafc
	add a,0fch		;bafd
	ret m			;baff
	ret po			;bb00
	nop			;bb01
	rrca			;bb02
	ccf			;bb03
	ld a,a			;bb04
	ld a,a			;bb05
	pop bc			;bb06
	sbc a,(hl)		;bb07
	ld a,07ch		;bb08
	inc bc			;bb0a
	ld a,e			;bb0b
	adc a,b			;bb0c
	dec sp			;bb0d
	add hl,sp		;bb0e
	inc e			;bb0f
	ld b,060h		;bb10
	jr c,lbab0h		;bb12
	call c,0de03h		;bb14
	xor c			;bb17
	ld a,07ch		;bb18
lbb1ah:
	ld a,c			;bb1a
	add a,e			;bb1b
	cp 0feh			;bb1c
	call m,000f0h		;bb1e
	rlca			;bb21
	ld bc,03f1eh		;bb22
	ld a,a			;bb25
	ld a,a			;bb26
	pop hl			;bb27
	sbc a,0deh		;bb28
	cp l			;bb2a
	cp l			;bb2b
	dec a			;bb2c
	dec a			;bb2d
	ld e,00fh		;bb2e
	inc bc			;bb30
	ret nz			;bb31
	ret p			;bb32
	ld a,b			;bb33
	cp h			;bb34
	cp h			;bb35
	cp l			;bb36
	cp l			;bb37
	ld a,e			;bb38
	ld a,e			;bb39
	add a,a			;bb3a
	cp 0feh			;bb3b
	call m,08078h		;bb3d
	ret po			;bb40
	nop			;bb41
	inc b			;bb42
	nop			;bb43
	add a,h			;bb44
	inc bc			;bb45
	rlca			;bb46
	ld c,00ch		;bb47
	inc bc			;bb49
	ex af,af'		;bb4a
	add a,d			;bb4b
	inc b			;bb4c
	inc bc			;bb4d
	rlca			;bb4e
	nop			;bb4f
	add a,h			;bb50
	ret nz			;bb51
	ret po			;bb52
	ld (hl),b		;bb53
	jr nc,$+5		;bb54
	djnz lbadah		;bb56
	jr nz,lbb1ah		;bb58
	add hl,bc		;bb5a
	nop			;bb5b
	add a,(hl)		;bb5c
	ld bc,00602h		;bb5d
	rlca			;bb60
	rlca			;bb61
	inc bc			;bb62
	ld a,(bc)		;bb63
	nop			;bb64
	add a,(hl)		;bb65
	add a,b			;bb66
	ld b,b			;bb67
	ld h,b			;bb68
	ret po			;bb69
	ret po			;bb6a
lbb6bh:
	ret nz			;bb6b
	inc b			;bb6c
	nop			;bb6d
	nop			;bb6e
	and b			;bb6f
	nop			;bb70
	ld bc,00203h		;bb71
	ld bc,00001h		;bb74
	nop			;bb77
	inc b			;bb78
	daa			;bb79
	ld c,c			;bb7a
	ld d,h			;bb7b
	dec l			;bb7c
	dec de			;bb7d
	add hl,bc		;bb7e
	inc c			;bb7f
	or h			;bb80
	sbc a,b			;bb81
	ld e,h			;bb82
	ld d,h			;bb83
	djnz $-14		;bb84
	and b			;bb86
	ret nz			;bb87
	ld h,b			;bb88
	jr z,lbb6bh		;bb89
	ld d,b			;bb8b
	ld a,b			;bb8c
	ld (0e070h),hl		;bb8d
	inc bc			;bb90
	nop			;bb91
	add a,c			;bb92
	ld bc,00006h		;bb93
	adc a,b			;bb96
	ld h,00bh		;bb97
	inc bc			;bb99
	rlca			;bb9a
	rlca			;bb9b
	inc bc			;bb9c
	ld b,b			;bb9d
	ld h,b			;bb9e
	inc bc			;bb9f
	ret po			;bba0
	ld b,000h		;bba1
	ld (bc),a		;bba3
	add a,b			;bba4
	xor d			;bba5
	ret nz			;bba6
	add a,b			;bba7
	nop			;bba8
	daa			;bba9
	dec l			;bbaa
	ld b,l			;bbab
	inc l			;bbac
	dec bc			;bbad
	add hl,bc		;bbae
	ld b,001h		;bbaf
	nop			;bbb1
	ld bc,00203h		;bbb2
	ld bc,00001h		;bbb5
	nop			;bbb8
	and d			;bbb9
lbbbah:
	ld h,h			;bbba
	ld b,h			;bbbb
	ret po			;bbbc
	ld h,b			;bbbd
	ld b,b			;bbbe
	xor b			;bbbf
	and h			;bbc0
	or h			;bbc1
	sbc a,b			;bbc2
	ld e,h			;bbc3
	ld d,h			;bbc4
	djnz $-14		;bbc5
	and b			;bbc7
	ret nz			;bbc8
	nop			;bbc9
	ld (bc),a		;bbca
	inc bc			;bbcb
	inc bc			;bbcc
	rlca			;bbcd
	rlca			;bbce
	ld bc,00004h		;bbcf
	add a,c			;bbd2
	ld bc,00005h		;bbd3
	ld (bc),a		;bbd6
	add a,b			;bbd7
	add a,a			;bbd8
	nop			;bbd9
	add a,b			;bbda
	add a,b			;bbdb
	ret nz			;bbdc
	ld b,b			;bbdd
	ld b,b			;bbde
	ld h,b			;bbdf
	inc bc			;bbe0
	ret po			;bbe1
	inc bc			;bbe2
	nop			;bbe3
	sub c			;bbe4
	ld a,(de)		;bbe5
	ld a,(bc)		;bbe6
	inc sp			;bbe7
	inc de			;bbe8
	ld c,d			;bbe9
	ld a,(bc)		;bbea
	dec h			;bbeb
	inc de			;bbec
	daa			;bbed
	dec l			;bbee
	ld b,l			;bbef
	inc l			;bbf0
	dec bc			;bbf1
	add hl,bc		;bbf2
	ld b,001h		;bbf3
	and b			;bbf5
	inc bc			;bbf6
	ld b,b			;bbf7
	sbc a,l			;bbf8
	ret nz			;bbf9
	and b			;bbfa
	and b			;bbfb
	nop			;bbfc
	and d			;bbfd
	ld h,h			;bbfe
	ld b,h			;bbff
	ret po			;bc00
	ld h,b			;bc01
	ld b,b			;bc02
	xor b			;bc03
	and h			;bc04
	dec b			;bc05
	rlca			;bc06
	rrca			;bc07
	rrca			;bc08
	rlca			;bc09
	rlca			;bc0a
	ld (bc),a		;bc0b
	nop			;bc0c
	nop			;bc0d
	ld (bc),a		;bc0e
	inc bc			;bc0f
	inc bc			;bc10
	rlca			;bc11
	rlca			;bc12
	ld bc,00000h		;bc13
	inc bc			;bc16
	add a,b			;bc17
	dec b			;bc18
	nop			;bc19
	ld (bc),a		;bc1a
	add a,b			;bc1b
	add a,l			;bc1c
	nop			;bc1d
	add a,b			;bc1e
	add a,b			;bc1f
	ret nz			;bc20
	ld b,b			;bc21
	inc bc			;bc22
	nop			;bc23
	sbc a,l			;bc24
	jr lbc4bh		;bc25
	dec hl			;bc27
	inc b			;bc28
	ex af,af'		;bc29
	add hl,hl		;bc2a
	rra			;bc2b
	inc c			;bc2c
	ld (0ede4h),a		;bc2d
	ld b,e			;bc30
	ld (hl),04dh		;bc31
	or c			;bc33
	ld l,h			;bc34
	dec hl			;bc35
	call nz,069beh		;bc36
	add a,d			;bc39
	dec b			;bc3a
	ld hl,078cch		;bc3b
	ld h,b			;bc3e
	add a,b			;bc3f
	ret nc			;bc40
	ld b,b			;bc41
	inc b			;bc42
	nop			;bc43
	add a,d			;bc44
	jr lbc4bh		;bc45
	inc b			;bc47
	nop			;bc48
	sub e			;bc49
	inc bc			;bc4a
lbc4bh:
	rrca			;bc4b
	rra			;bc4c
	ld e,03ch		;bc4d
	ex af,af'		;bc4f
	ld (bc),a		;bc50
	ld c,01fh		;bc51
	inc e			;bc53
	jr c,lbc96h		;bc54
	nop			;bc56
	nop			;bc57
	ld (bc),a		;bc58
	nop			;bc59
	nop			;bc5a
	add a,b			;bc5b
	add a,b			;bc5c
	dec b			;bc5d
	nop			;bc5e
	sbc a,l			;bc5f
	dec c			;bc60
	dec bc			;bc61
	rlca			;bc62
	add hl,de		;bc63
	ld b,06ch		;bc64
	ld c,l			;bc66
	or c			;bc67
	ld l,h			;bc68
	dec hl			;bc69
	call nz,069beh		;bc6a
	add a,d			;bc6d
	ld c,h			;bc6e
	ccf			;bc6f
	ld h,(hl)		;bc70
	out (054h),a		;bc71
	call z,0ce36h		;bc73
	call c,0e0a0h		;bc76
	ld b,b			;bc79
	nop			;bc7a
	and b			;bc7b
	add a,b			;bc7c
	rlca			;bc7d
	nop			;bc7e
	adc a,b			;bc7f
	ld bc,00213h		;bc80
	ld c,01fh		;bc83
	inc e			;bc85
	jr c,lbcc8h		;bc86
	inc b			;bc88
	nop			;bc89
	add a,l			;bc8a
	add hl,de		;bc8b
	inc a			;bc8c
	jr c,lbcbfh		;bc8d
	ret nz			;bc8f
	ld a,(bc)		;bc90
	nop			;bc91
	sbc a,c			;bc92
	ld bc,0071dh		;bc93
lbc96h:
	add hl,bc		;bc96
	or (hl)			;bc97
	jr lbcf1h		;bc98
	call c,0663fh		;bc9a
	out (054h),a		;bc9d
	call z,0ce36h		;bc9f
	ld a,0e7h		;bca2
	sub e			;bca4
	ld (hl),067h		;bca5
	ld c,b			;bca7
	jr z,lbd20h		;bca8
	jp nc,00a48h		;bcaa
	nop			;bcad
	sub h			;bcae
	ld b,009h		;bcaf
	rlca			;bcb1
	ex af,af'		;bcb2
	nop			;bcb3
	nop			;bcb4
	add hl,de		;bcb5
	inc a			;bcb6
	jr c,lbce9h		;bcb7
	ret nz			;bcb9
	nop			;bcba
	nop			;bcbb
	jr $+126		;bcbc
	ret m			;bcbe
lbcbfh:
	ret m			;bcbf
	ret p			;bcc0
	ret nc			;bcc1
	add a,b			;bcc2
	ex af,af'		;bcc3
	nop			;bcc4
	sub b			;bcc5
	or d			;bcc6
	adc a,l			;bcc7
lbcc8h:
	ld (hl),0d4h		;bcc8
	inc hl			;bcca
	ld a,l			;bccb
	sub (hl)		;bccc
	ld b,c			;bccd
	and b			;bcce
	add a,h			;bccf
	inc sp			;bcd0
	ld e,006h		;bcd1
	ld bc,0020bh		;bcd3
	inc bc			;bcd6
	nop			;bcd7
	sbc a,d			;bcd8
	jr lbcffh		;bcd9
	call nc,01020h		;bcdb
	sub h			;bcde
	ret m			;bcdf
	jr nc,lbd2eh		;bce0
	daa			;bce2
	or a			;bce3
	jp nz,0406ch		;bce4
	ld (hl),b		;bce7
	ret m			;bce8
lbce9h:
	jr c,$+30		;bce9
	ld (bc),a		;bceb
	nop			;bcec
	nop			;bced
	ld b,b			;bcee
	nop			;bcef
	nop			;bcf0
lbcf1h:
	ld bc,00701h		;bcf1
	nop			;bcf4
	add a,d			;bcf5
	jr lbd18h		;bcf6
	inc b			;bcf8
	nop			;bcf9
	sub l			;bcfa
	ret nz			;bcfb
sub_bcfch:
	ret p			;bcfc
	ret m			;bcfd
	ld a,b			;bcfe
lbcffh:
	inc a			;bcff
	djnz lbd34h		;bd00
	call m,0cb66h		;bd02
	ld hl,(06c33h)		;bd05
	ld (hl),e		;bd08
	dec sp			;bd09
	dec b			;bd0a
	rlca			;bd0b
	ld (bc),a		;bd0c
	nop			;bd0d
	dec b			;bd0e
	ld bc,00003h		;bd0f
	sub l			;bd12
	or b			;bd13
	ret nc			;bd14
	ret po			;bd15
	sbc a,b			;bd16
	ld h,b			;bd17
lbd18h:
	ld (hl),0b2h		;bd18
	adc a,l			;bd1a
	ld (hl),0d4h		;bd1b
	inc hl			;bd1d
	ld a,l			;bd1e
	sub (hl)		;bd1f
lbd20h:
	ld b,c			;bd20
	nop			;bd21
	nop			;bd22
	sbc a,b			;bd23
	inc a			;bd24
	inc e			;bd25
	inc c			;bd26
	inc bc			;bd27
	rrca			;bd28
	nop			;bd29
	sub h			;bd2a
	add a,b			;bd2b
	ret z			;bd2c
	ld b,b			;bd2d
lbd2eh:
	ld (hl),b		;bd2e
	ret m			;bd2f
	jr c,$+30		;bd30
	ld (bc),a		;bd32
lbd33h:
	nop			;bd33
lbd34h:
	nop			;bd34
	ld a,h			;bd35
	rst 20h			;bd36
	ret			;bd37
	ld l,h			;bd38
	and 012h		;bd39
	inc d			;bd3b
	ld l,(hl)		;bd3c
	ld c,e			;bd3d
	ld (de),a		;bd3e
	rlca			;bd3f
	nop			;bd40
	sub a			;bd41
	add a,b			;bd42
	cp b			;bd43
	ret po			;bd44
	sub b			;bd45
	ld l,l			;bd46
	jr lbd33h		;bd47
	dec sp			;bd49
	call m,0cb66h		;bd4a
	ld hl,(06c33h)		;bd4d
	ld (hl),e		;bd50
	nop			;bd51
	jr $+64			;bd52
	rra			;bd54
	rra			;bd55
	rrca			;bd56
	dec bc			;bd57
	ld bc,0000ch		;bd58
	adc a,e			;bd5b
	ld h,b			;bd5c
	sub b			;bd5d
	ret po			;bd5e
	djnz lbd61h		;bd5f
lbd61h:
	nop			;bd61
	sbc a,b			;bd62
	inc a			;bd63
	inc e			;bd64
	inc c			;bd65
	inc bc			;bd66
	ld b,000h		;bd67
	sbc a,d			;bd69
	add a,(hl)		;bd6a
	ld a,b			;bd6b
	adc a,(hl)		;bd6c
	inc sp			;bd6d
	defb 0fdh,002h,0cch ;illegal sequence	;bd6e
	or c			;bd71
	ld (00008h),hl		;bd72
	nop			;bd75
	add a,b			;bd76
	ld h,c			;bd77
	ld (bc),a		;bd78
	nop			;bd79
	in a,(07ch)		;bd7a
	sub e			;bd7c
	defb 0edh ;next byte illegal after ed	;bd7d
	adc a,d			;bd7e
	jp p,0005ch		;bd7f
	ret nc			;bd82
	jr nz,lbd8dh		;bd83
	nop			;bd85
	add a,l			;bd86
	ld (hl),b		;bd87
	call m,0fc7eh		;bd88
	jr nc,lbd97h		;bd8b
lbd8dh:
	nop			;bd8d
	add a,l			;bd8e
	inc bc			;bd8f
	ld l,(hl)		;bd90
	ld a,07ch		;bd91
	inc c			;bd93
	ld b,000h		;bd94
	adc a,(hl)		;bd96
lbd97h:
	add a,b			;bd97
	ld h,c			;bd98
	ld (bc),a		;bd99
	nop			;bd9a
	in a,(07ch)		;bd9b
	sub e			;bd9d
	defb 0edh ;next byte illegal after ed	;bd9e
	adc a,d			;bd9f
	jp p,0005ch		;bda0
	ret nc			;bda3
	jr nz,lbda9h		;bda4
	nop			;bda6
	adc a,b			;bda7
	or b			;bda8
lbda9h:
	ld h,b			;bda9
	call m,03586h		;bdaa
	rst 0			;bdad
	ld l,h			;bdae
	jr nc,lbdbdh		;bdaf
	nop			;bdb1
	add a,l			;bdb2
	inc bc			;bdb3
	ld l,(hl)		;bdb4
	ld a,07ch		;bdb5
	inc c			;bdb7
	ld a,(bc)		;bdb8
	nop			;bdb9
	add a,h			;bdba
	ld a,b			;bdbb
	ret m			;bdbc
lbdbdh:
	jr c,lbdcfh		;bdbd
	add hl,bc		;bdbf
	nop			;bdc0
	adc a,b			;bdc1
	or b			;bdc2
	ld h,b			;bdc3
	call m,03586h		;bdc4
	rst 0			;bdc7
	ld l,h			;bdc8
	jr nc,lbdd2h		;bdc9
	nop			;bdcb
	adc a,(hl)		;bdcc
	inc b			;bdcd
	nop			;bdce
lbdcfh:
	ld c,b			;bdcf
	ld a,(de)		;bdd0
	rst 28h			;bdd1
lbdd2h:
	cp e			;bdd2
	ld hl,0446eh		;bdd3
	exx			;bdd6
	cpl			;bdd7
	inc d			;bdd8
	ld c,b			;bdd9
	jr nc,lbde2h		;bdda
	nop			;bddc
	add a,h			;bddd
	ld a,b			;bdde
	ret m			;bddf
	jr c,lbdf2h		;bde0
lbde2h:
	dec c			;bde2
	nop			;bde3
	adc a,d			;bde4
	inc b			;bde5
	ld e,01fh		;bde6
	ccf			;bde8
	ld h,010h		;bde9
	nop			;bdeb
	jr nz,lbdeeh		;bdec
lbdeeh:
	nop			;bdee
	nop			;bdef
	rst 38h			;bdf0
	nop			;bdf1
lbdf2h:
	ld bc,lbbbah		;bdf2
	ld (bc),a		;bdf5
	inc b			;bdf6
	jr nc,lbe6ah		;bdf7
	ld h,c			;bdf9
	jr nc,$+6		;bdfa
	ld (bc),a		;bdfc
	cp d			;bdfd
	cp e			;bdfe
	ld bc,00000h		;bdff
	adc a,b			;be02
	rst 38h			;be03
	rst 38h			;be04
	ld a,(hl)		;be05
	ld e,l			;be06
	rst 8			;be07
	rst 0			;be08
	add a,a			;be09
	rst 8			;be0a
	ld a,d			;be0b
	dec b			;be0c
	ei			;be0d
	rst 38h			;be0e
	adc a,b			;be0f
	ld a,a			;be10
	nop			;be11
	nop			;be12
	ld b,l			;be13
	rst 38h			;be14
	ld b,002h		;be15
	nop			;be17
	ld l,c			;be18
	jr lbe1bh		;be19
lbe1bh:
	ld (bc),a		;be1b
	ld b,045h		;be1c
	rst 38h			;be1e
	ld bc,03f00h		;be1f
	ld (hl),a		;be22
	sbc a,b			;be23
	ei			;be24
	dec b			;be25
	ld a,a			;be26
	rrca			;be27
	and a			;be28
	ld h,a			;be29
	rrca			;be2a
	ld (hl),l		;be2b
	ld a,a			;be2c
	rst 38h			;be2d
	sbc a,b			;be2e
	rst 38h			;be2f
	ld a,a			;be30
	nop			;be31
	ld bc,lbbbah		;be32
	ld (bc),a		;be35
	inc b			;be36
	ld b,00eh		;be37
	inc c			;be39
	ld b,004h		;be3a
	ld (bc),a		;be3c
	cp d			;be3d
	cp e			;be3e
	ld bc,00000h		;be3f
	adc a,b			;be42
	rst 38h			;be43
	rst 38h			;be44
	ld a,(hl)		;be45
	ld e,l			;be46
	rrca			;be47
	rlca			;be48
	rlca			;be49
	rrca			;be4a
	ld a,d			;be4b
	dec b			;be4c
	ei			;be4d
	rst 38h			;be4e
	adc a,b			;be4f
	ld a,a			;be50
	nop			;be51
	nop			;be52
	ld b,l			;be53
	rst 38h			;be54
	ld b,002h		;be55
	nop			;be57
	dec c			;be58
	inc bc			;be59
	nop			;be5a
	ld (bc),a		;be5b
	ld b,045h		;be5c
	rst 38h			;be5e
	ld bc,03f00h		;be5f
	ld (hl),a		;be62
	sbc a,b			;be63
	ei			;be64
	dec b			;be65
	ld a,a			;be66
	rrca			;be67
	rlca			;be68
	rlca			;be69
lbe6ah:
	rrca			;be6a
	ld (hl),l		;be6b
	ld a,a			;be6c
	rst 38h			;be6d
	sbc a,b			;be6e
	rst 38h			;be6f
	rst 38h			;be70
	ld a,a			;be71
	nop			;be72
	ld de,0ffffh		;be73
	ld a,(hl)		;be76
	cp d			;be77
	di			;be78
	ex (sp),hl		;be79
	pop hl			;be7a
	di			;be7b
	ld e,(hl)		;be7c
	and b			;be7d
	rst 18h			;be7e
	rst 38h			;be7f
	ld de,000feh		;be80
	add a,b			;be83
	ld e,l			;be84
	defb 0ddh,040h,020h ;illegal sequence	;be85
	inc c			;be88
	adc a,(hl)		;be89
	add a,(hl)		;be8a
	inc c			;be8b
	jr nz,lbeceh		;be8c
	ld e,l			;be8e
	defb 0ddh,080h,000h ;illegal sequence	;be8f
	call m,019eeh		;be92
	rst 18h			;be95
	and b			;be96
	cp 0f0h			;be97
	push hl			;be99
	and 0f0h		;be9a
	xor (hl)		;be9c
	cp 0ffh			;be9d
	add hl,de		;be9f
	rst 38h			;bea0
	cp 000h			;bea1
	nop			;bea3
	and d			;bea4
	rst 38h			;bea5
	ld h,b			;bea6
	ld b,b			;bea7
	nop			;bea8
	sub (hl)		;bea9
	jr lbeach		;beaa
lbeach:
	ld b,b			;beac
	ld h,b			;bead
	and d			;beae
	rst 38h			;beaf
	add a,b			;beb0
	nop			;beb1
	nop			;beb2
	ld de,0ffffh		;beb3
	ld a,(hl)		;beb6
	cp d			;beb7
	ret p			;beb8
	ret po			;beb9
	ret po			;beba
	ret p			;bebb
	ld e,(hl)		;bebc
	and b			;bebd
	rst 18h			;bebe
	rst 38h			;bebf
	ld de,000feh		;bec0
	add a,b			;bec3
	ld e,l			;bec4
	defb 0ddh,040h,020h ;illegal sequence	;bec5
	ld h,b			;bec8
	ld (hl),b		;bec9
	jr nc,lbf2ch		;beca
	jr nz,lbf0eh		;becc
lbeceh:
	ld e,l			;bece
	defb 0ddh,080h,000h ;illegal sequence	;becf
	call m,019eeh		;bed2
	rst 18h			;bed5
	and b			;bed6
	cp 0f0h			;bed7
	ret po			;bed9
	ret po			;beda
	ret p			;bedb
	xor (hl)		;bedc
	cp 0ffh			;bedd
	add hl,de		;bedf
	rst 38h			;bee0
	cp 000h			;bee1
	nop			;bee3
	and d			;bee4
	rst 38h			;bee5
	ld h,b			;bee6
	ld b,b			;bee7
	nop			;bee8
	or b			;bee9
	ret nz			;beea
	nop			;beeb
	ld b,b			;beec
	ld h,b			;beed
	and d			;beee
	rst 38h			;beef
	add a,d			;bef0
	add a,b			;bef1
	nop			;bef2
	nop			;bef3
	sbc a,e			;bef4
	nop			;bef5
	ld (bc),a		;bef6
	inc c			;bef7
	rrca			;bef8
	rst 38h			;bef9
	inc h			;befa
	ccf			;befb
	ld bc,0bf83h		;befc
	ld c,a			;beff
	scf			;bf00
	dec de			;bf01
	inc b			;bf02
	inc bc			;bf03
	nop			;bf04
	rst 38h			;bf05
	dec d			;bf06
	or l			;bf07
	rst 38h			;bf08
	rst 38h			;bf09
	ld c,c			;bf0a
	rst 38h			;bf0b
	rst 38h			;bf0c
	dec d			;bf0d
lbf0eh:
	jp pe,003eah		;bf0e
	cp 09bh			;bf11
	inc d			;bf13
	jp pe,00100h		;bf14
	inc bc			;bf17
	rst 38h			;bf18
	call m,02c3fh		;bf19
	rst 38h			;bf1c
	ld a,(hl)		;bf1d
	call nz,03878h		;bf1e
	inc e			;bf21
	rlca			;bf22
	inc bc			;bf23
	nop			;bf24
	ld d,l			;bf25
	jp pe,0ffffh		;bf26
	ld c,c			;bf29
	rst 38h			;bf2a
	ld c,c			;bf2b
lbf2ch:
	rst 38h			;bf2c
	ex de,hl		;bf2d
	dec b			;bf2e
	dec d			;bf2f
	add a,d			;bf30
	rst 38h			;bf31
	jp pe,0c000h		;bf32
	dec b			;bf35
	dec l			;bf36
	ld (de),a		;bf37
	ld l,l			;bf38
	ld (de),a		;bf39
	cp a			;bf3a
	ret			;bf3b
lbf3ch:
	or (hl)			;bf3c
	ld b,0cfh		;bf3d
	rrca			;bf3f
	jp p,0529dh		;bf40
	ld (0801fh),a		;bf43
	ret po			;bf46
	nop			;bf47
	call m,0c03ch		;bf48
	ccf			;bf4b
	in a,(0dbh)		;bf4c
	rst 38h			;bf4e
	ret nz			;bf4f
	inc a			;bf50
	ret p			;bf51
	inc c			;bf52
	ld (hl),b		;bf53
	add a,b			;bf54
	ld a,(de)		;bf55
	ld (de),a		;bf56
	dec l			;bf57
	ld (de),a		;bf58
	ld a,a			;bf59
	ld c,a			;bf5a
	rst 38h			;bf5b
	or b			;bf5c
	or b			;bf5d
	ld sp,hl		;bf5e
	rst 38h			;bf5f
	rst 38h			;bf60
	jp p,03f7fh		;bf61
	rra			;bf64
	nop			;bf65
	nop			;bf66
	ret p			;bf67
	nop			;bf68
	call m,0ffc0h		;bf69
	dec de			;bf6c
	nop			;bf6d
	ccf			;bf6e
	ret nz			;bf6f
	call m,0fc0ch		;bf70
	ret p			;bf73
	add a,b			;bf74
	nop			;bf75
	inc bc			;bf76
	nop			;bf77
	adc a,e			;bf78
	inc sp			;bf79
	jr nc,lbf3ch		;bf7a
	ld bc,0031bh		;bf7c
	ld bc,08004h		;bf7f
	jr nc,lbf8bh		;bf82
	dec b			;bf84
	nop			;bf85
	adc a,e			;bf86
	call z,0030ch		;bf87
	add a,b			;bf8a
lbf8bh:
	ret c			;bf8b
	ret nz			;bf8c
	add a,b			;bf8d
	jr nz,lbf91h		;bf8e
	inc c			;bf90
lbf91h:
	ret po			;bf91
	inc bc			;bf92
	nop			;bf93
	ld (bc),a		;bf94
	rlca			;bf95
	sbc a,l			;bf96
	nop			;bf97
	add a,e			;bf98
	ld b,00ch		;bf99
	add hl,de		;bf9b
	jr lbfaah		;bf9c
	jp nz,00333h		;bf9e
	nop			;bfa1
	rlca			;bfa2
	nop			;bfa3
	nop			;bfa4
	ret po			;bfa5
	ret po			;bfa6
	nop			;bfa7
	pop bc			;bfa8
	ld h,b			;bfa9
lbfaah:
	jr nc,$-102		;bfaa
	jr lbfdeh		;bfac
	ld b,e			;bfae
	call z,000c0h		;bfaf
	ret po			;bfb2
	nop			;bfb3
	nop			;bfb4
	ret nz			;bfb5
	jr nc,$+81		;bfb6
	or d			;bfb8
	ld c,l			;bfb9
	ld (0091eh),a		;bfba
	ld a,(bc)		;bfbd
	inc b			;bfbe
	dec bc			;bfbf
	ld de,0c62dh		;bfc0
	ld (hl),h		;bfc3
	ld a,b			;bfc4
	djnz $+54		;bfc5
	ld l,b			;bfc7
	push af			;bfc8
	ld e,d			;bfc9
	or a			;bfca
	push de			;bfcb
	ld c,(hl)		;bfcc
	sbc a,h			;bfcd
	ld (hl),h		;bfce
	ld l,h			;bfcf
	sub h			;bfd0
	ld d,h			;bfd1
	ld l,d			;bfd2
	ld hl,(00a15h)		;bfd3
	nop			;bfd6
	jr nc,$+127		;bfd7
	ld a,a			;bfd9
	ld c,a			;bfda
	daa			;bfdb
	rra			;bfdc
	dec c			;bfdd
lbfdeh:
	rrca			;bfde
	rla			;bfdf
	ccf			;bfe0
	ld e,a			;bfe1
	ld a,(hl)		;bfe2
	call m,03058h		;bfe3
	jr c,$+94		;bfe6
	jp m,06de7h		;bfe8
	ccf			;bfeb
	cp (hl)			;bfec
	call m,0f2fah		;bfed
	jp m,09dbah		;bff0
	ld e,l			;bff3
	dec sp			;bff4
	ld d,000h		;bff5
	cp d			;bff7
	nop			;bff8
	ld bc,03f09h		;bff9
	ret			;bffc
	cpl			;bffd
	nop			;bffe
	dec sp			;bfff
