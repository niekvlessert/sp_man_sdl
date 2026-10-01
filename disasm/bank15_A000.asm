; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank15_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank15.bin

	org 0a000h

	rst 20h			;a000
	rst 20h			;a001
	inc a			;a002
	nop			;a003
	jp 0f00fh		;a004
	ret m			;a007
	inc c			;a008
	inc c			;a009
	rlca			;a00a
	rlca			;a00b
	inc b			;a00c
	rst 38h			;a00d
	adc a,(hl)		;a00e
	ret p			;a00f
	or 004h			;a010
	inc e			;a012
	inc e			;a013
	ld e,0fch		;a014
	inc c			;a016
	inc bc			;a017
	rrca			;a018
	rlca			;a019
	ret p			;a01a
	rrca			;a01b
	rrca			;a01c
	inc bc			;a01d
	rst 38h			;a01e
	adc a,l			;a01f
	nop			;a020
	call m,0c183h		;a021
	pop af			;a024
	rrca			;a025
la026h:
	nop			;a026
	ld a,a			;a027
	ccf			;a028
	sbc a,a			;a029
	adc a,0e6h		;a02a
	ret p			;a02c
	inc b			;a02d
	nop			;a02e
	ld (bc),a		;a02f
	ld b,002h		;a030
	add a,e			;a032
	adc a,c			;a033
	pop bc			;a034
	ld c,00fh		;a035
	nop			;a037
	rra			;a038
	rra			;a039
	rst 38h			;a03a
	ret nz			;a03b
	ret po			;a03c
	inc bc			;a03d
	rrca			;a03e
	ld (bc),a		;a03f
	add a,b			;a040
	sbc a,b			;a041
	ret nz			;a042
	ret po			;a043
	ret p			;a044
	cp 0ffh			;a045
	cp 0feh			;a047
	ret nz			;a049
	ccf			;a04a
	ccf			;a04b
	inc c			;a04c
	inc c			;a04d
	rst 20h			;a04e
	rst 20h			;a04f
	inc a			;a050
	nop			;a051
	jp 00ff0h		;a052
	rra			;a055
	jr nc,$+50		;a056
	ret po			;a058
	ret po			;a059
	inc b			;a05a
	rst 38h			;a05b
	adc a,(hl)		;a05c
	rrca			;a05d
	ld l,a			;a05e
	jr nz,la099h		;a05f
	jr c,$+122		;a061
	ccf			;a063
	jr nc,la026h		;a064
	ret p			;a066
	ret po			;a067
	rrca			;a068
	ret p			;a069
	ret p			;a06a
	inc bc			;a06b
	rst 38h			;a06c
	adc a,l			;a06d
	nop			;a06e
	ccf			;a06f
	pop bc			;a070
	add a,e			;a071
	adc a,a			;a072
	ret p			;a073
	nop			;a074
	cp 0fch			;a075
	ld sp,hl		;a077
	ld (hl),e		;a078
	ld h,a			;a079
	rrca			;a07a
	inc b			;a07b
	nop			;a07c
	ld (bc),a		;a07d
	ld h,b			;a07e
	ld (bc),a		;a07f
	pop bc			;a080
	adc a,(hl)		;a081
	add a,e			;a082
	ld (hl),b		;a083
	ret p			;a084
	nop			;a085
	nop			;a086
	ld bc,00703h		;a087
	rrca			;a08a
	rra			;a08b
	ccf			;a08c
	ld a,a			;a08d
	rrca			;a08e
	nop			;a08f
	inc b			;a090
	ccf			;a091
	ld (bc),a		;a092
	nop			;a093
	ld (bc),a		;a094
	ret po			;a095
	rlca			;a096
	rlca			;a097
	sbc a,d			;a098
la099h:
	inc bc			;a099
	ccf			;a09a
	rrca			;a09b
	inc bc			;a09c
	ld bc,0c001h		;a09d
	ld bc,0c001h		;a0a0
	ld a,a			;a0a3
	ld a,a			;a0a4
	jp 000feh		;a0a5
	ld bc,00001h		;a0a8
	ld a,a			;a0ab
	nop			;a0ac
	add a,b			;a0ad
	add a,a			;a0ae
	cp 07fh			;a0af
	ccf			;a0b1
	ccf			;a0b2
	inc bc			;a0b3
	rra			;a0b4
	and l			;a0b5
	rlca			;a0b6
	inc bc			;a0b7
	inc c			;a0b8
	inc c			;a0b9
	ld sp,hl		;a0ba
	ld sp,hl		;a0bb
	add a,e			;a0bc
	add a,e			;a0bd
	rlca			;a0be
	inc bc			;a0bf
	inc bc			;a0c0
	ret nz			;a0c1
	call m,0c0f0h		;a0c2
	add a,b			;a0c5
	add a,b			;a0c6
	inc bc			;a0c7
	add a,b			;a0c8
	add a,b			;a0c9
	inc bc			;a0ca
	cp 0feh			;a0cb
	jp 0007fh		;a0cd
	add a,b			;a0d0
	add a,b			;a0d1
	nop			;a0d2
	cp 000h			;a0d3
	ld bc,07fe1h		;a0d5
	cp 0fch			;a0d8
	call m,0f803h		;a0da
	sub d			;a0dd
	ret po			;a0de
	ret nz			;a0df
	jr nc,la112h		;a0e0
	sbc a,a			;a0e2
	sbc a,a			;a0e3
	pop bc			;a0e4
	pop bc			;a0e5
	ret po			;a0e6
	ret nz			;a0e7
	ret nz			;a0e8
	rra			;a0e9
	adc a,a			;a0ea
	ld a,(hl)		;a0eb
	defb 0fdh,0fbh,00fh ;illegal sequence	;a0ec
	ld l,a			;a0ef
	inc bc			;a0f0
	rst 38h			;a0f1
	sub l			;a0f2
	ccf			;a0f3
	rra			;a0f4
	rra			;a0f5
	scf			;a0f6
	ld h,d			;a0f7
	rst 38h			;a0f8
	ld sp,iy		;a0f9
	ld sp,hl		;a0fb
	di			;a0fc
	rst 8			;a0fd
	add a,e			;a0fe
	ld bc,00000h		;a0ff
	rlca			;a102
	ld b,003h		;a103
	ld bc,00000h		;a105
	inc bc			;a108
	ret m			;a109
	ld (bc),a		;a10a
	ret p			;a10b
	ld b,0e0h		;a10c
	ld (bc),a		;a10e
	rrca			;a10f
	inc bc			;a110
	rlca			;a111
la112h:
	adc a,(hl)		;a112
	rst 38h			;a113
	ld a,a			;a114
	ccf			;a115
	rra			;a116
	rrca			;a117
	rlca			;a118
	inc bc			;a119
	inc bc			;a11a
	cp 0feh			;a11b
	call m,0f8fch		;a11d
	rst 38h			;a120
	inc b			;a121
	rlca			;a122
	add a,c			;a123
	inc bc			;a124
	inc bc			;a125
	rlca			;a126
	add a,c			;a127
	cp 003h			;a128
	nop			;a12a
	add a,(hl)		;a12b
	rst 38h			;a12c
	nop			;a12d
	nop			;a12e
	rst 38h			;a12f
	rst 38h			;a130
	nop			;a131
	ld b,066h		;a132
	sub d			;a134
	rst 38h			;a135
	nop			;a136
	ld a,a			;a137
	ld a,a			;a138
	call m,08001h		;a139
	add a,b			;a13c
	rrca			;a13d
	rrca			;a13e
	rst 30h			;a13f
	rst 30h			;a140
	or e			;a141
	or e			;a142
	cp c			;a143
	sbc a,b			;a144
	cp l			;a145
	add a,003h		;a146
	rst 38h			;a148
	adc a,l			;a149
	call m,0f8f8h		;a14a
	call pe,0fc46h		;a14d
	ret m			;a150
	pop af			;a151
	ld a,(hl)		;a152
	cp a			;a153
	rst 18h			;a154
	ret p			;a155
	or 000h			;a156
	ld (bc),a		;a158
	ld b,b			;a159
	ld c,094h		;a15a
	ld a,(bc)		;a15c
	sub b			;a15d
	inc c			;a15e
	sub h			;a15f
	inc bc			;a160
	sub b			;a161
	add a,c			;a162
	ld b,b			;a163
	ld b,094h		;a164
	ex af,af'		;a166
	inc b			;a167
	adc a,h			;a168
	pop af			;a169
	rrca			;a16a
	rrca			;a16b
	ld b,b			;a16c
	ld b,b			;a16d
	ret p			;a16e
	ld c,c			;a16f
	ret p			;a170
	ld sp,hl		;a171
	cp 0f9h			;a172
	call p,0f003h		;a174
	adc a,c			;a177
	pop af			;a178
	sub h			;a179
	jp (hl)			;a17a
	jp (hl)			;a17b
	sub h			;a17c
	sub h			;a17d
	sub b			;a17e
	ld sp,hl		;a17f
	add hl,de		;a180
	inc bc			;a181
	sub h			;a182
	ld (bc),a		;a183
	jp (hl)			;a184
	add a,h			;a185
	sub h			;a186
	sub b			;a187
	sbc a,a			;a188
	ld b,b			;a189
	inc b			;a18a
	sub h			;a18b
	ld (bc),a		;a18c
	jp (hl)			;a18d
	ld (bc),a		;a18e
	sub b			;a18f
	inc bc			;a190
	sub h			;a191
	ld (bc),a		;a192
	jp (hl)			;a193
	add a,a			;a194
	sub b			;a195
	sub h			;a196
	sub h			;a197
	ld b,b			;a198
	ld b,b			;a199
	sub h			;a19a
	sub h			;a19b
	inc bc			;a19c
	jp (hl)			;a19d
	add a,(hl)		;a19e
	ld sp,hl		;a19f
	sub c			;a1a0
	sub (hl)		;a1a1
	sub c			;a1a2
	sub h			;a1a3
	sub h			;a1a4
	add hl,bc		;a1a5
	ld b,b			;a1a6
	sub l			;a1a7
	rst 38h			;a1a8
	sub c			;a1a9
	sub (hl)		;a1aa
	sub e			;a1ab
	sub (hl)		;a1ac
	sub c			;a1ad
	ld sp,hl		;a1ae
	sub h			;a1af
	sub h			;a1b0
	pop af			;a1b1
	rrca			;a1b2
	rrca			;a1b3
	ld b,b			;a1b4
	ld b,b			;a1b5
	ret p			;a1b6
	ld c,c			;a1b7
	ret p			;a1b8
	ld sp,hl		;a1b9
	cp 0f9h			;a1ba
	call p,0f003h		;a1bc
	adc a,c			;a1bf
	pop af			;a1c0
	sub h			;a1c1
	jp (hl)			;a1c2
	jp (hl)			;a1c3
	sub h			;a1c4
	sub h			;a1c5
	sub b			;a1c6
	ld sp,hl		;a1c7
	add hl,de		;a1c8
	inc bc			;a1c9
	sub h			;a1ca
	ld (bc),a		;a1cb
	jp (hl)			;a1cc
	add a,h			;a1cd
	sub h			;a1ce
	sub b			;a1cf
	sbc a,a			;a1d0
	ld b,b			;a1d1
	inc b			;a1d2
	sub h			;a1d3
	ld (bc),a		;a1d4
	jp (hl)			;a1d5
	ld (bc),a		;a1d6
	sub b			;a1d7
	inc bc			;a1d8
	sub h			;a1d9
	ld (bc),a		;a1da
	jp (hl)			;a1db
	add a,a			;a1dc
	sub b			;a1dd
	sub h			;a1de
	sub h			;a1df
	ld b,b			;a1e0
	ld b,b			;a1e1
	sub h			;a1e2
	sub h			;a1e3
	inc bc			;a1e4
	jp (hl)			;a1e5
	add a,(hl)		;a1e6
	ld sp,hl		;a1e7
	sub c			;a1e8
	sub (hl)		;a1e9
	sub c			;a1ea
	sub h			;a1eb
	sub h			;a1ec
	add hl,bc		;a1ed
	ld b,b			;a1ee
	adc a,c			;a1ef
	rst 38h			;a1f0
	sub c			;a1f1
	sub (hl)		;a1f2
	sub e			;a1f3
	sub (hl)		;a1f4
	sub c			;a1f5
	ld sp,hl		;a1f6
	sub h			;a1f7
	sub h			;a1f8
	ex af,af'		;a1f9
	and (hl)		;a1fa
	ld (bc),a		;a1fb
	sub h			;a1fc
	add a,c			;a1fd
	sub b			;a1fe
	inc b			;a1ff
	ld c,a			;a200
	ld (bc),a		;a201
	sub b			;a202
	add a,d			;a203
	ld b,b			;a204
	jp (hl)			;a205
	inc bc			;a206
	sub h			;a207
	add a,h			;a208
	ld c,a			;a209
	nop			;a20a
	nop			;a20b
	ld (02103h),a		;a20c
	ld (bc),a		;a20f
	ld sp,0f182h		;a210
	ld b,b			;a213
	inc bc			;a214
	ld (0f39eh),a		;a215
	rst 30h			;a218
	di			;a219
	di			;a21a
	call p,0f3f3h		;a21b
	and e			;a21e
	and e			;a21f
	ld sp,0f3f7h		;a220
	or 0f3h			;a223
	jp m,0f6f3h		;a225
	pop af			;a228
	cp 0f9h			;a229
	sub (hl)		;a22b
	sub e			;a22c
	xor c			;a22d
	add hl,sp		;a22e
	sub (hl)		;a22f
	sub c			;a230
	jp (hl)			;a231
	sub h			;a232
	nop			;a233
	ld (02103h),a		;a234
	ld (bc),a		;a237
	ld sp,0f182h		;a238
	ld b,b			;a23b
	inc bc			;a23c
	ld (0f39eh),a		;a23d
	rst 30h			;a240
	di			;a241
	di			;a242
	call p,0f3f3h		;a243
	and e			;a246
	and e			;a247
	ld sp,0f3f7h		;a248
	or 0f3h			;a24b
	jp m,0f6f3h		;a24d
	pop af			;a250
	cp 0f9h			;a251
	sub (hl)		;a253
	sub e			;a254
	xor c			;a255
	add hl,sp		;a256
	sub (hl)		;a257
	sub c			;a258
	jp (hl)			;a259
	sub h			;a25a
	ld c,a			;a25b
	ld sp,hl		;a25c
	inc bc			;a25d
	sub b			;a25e
	ld (bc),a		;a25f
	jp (hl)			;a260
	add a,c			;a261
	sub b			;a262
	dec b			;a263
	ld sp,hl		;a264
	ld (bc),a		;a265
	cp 002h			;a266
	ld sp,hl		;a268
	ld (bc),a		;a269
	ret m			;a26a
	add a,l			;a26b
	defb 0fdh,0f5h,0feh ;illegal sequence	;a26c
	cp 0f9h			;a26f
	inc bc			;a271
	ret p			;a272
	dec b			;a273
	ld b,b			;a274
	add a,h			;a275
	ret p			;a276
	jp m,0f0f6h		;a277
	inc b			;a27a
	ld sp,hl		;a27b
	add a,h			;a27c
	rrca			;a27d
	xor a			;a27e
	ld l,a			;a27f
	ret p			;a280
	dec b			;a281
	ld sp,hl		;a282
	add a,c			;a283
	call p,0f906h		;a284
	ld b,0f0h		;a287
	add a,d			;a289
	ld b,b			;a28a
	rst 38h			;a28b
	inc bc			;a28c
	ld b,b			;a28d
	add a,l			;a28e
	jp (hl)			;a28f
	sub h			;a290
	sub h			;a291
	ret p			;a292
	ret p			;a293
	inc b			;a294
	inc b			;a295
	inc b			;a296
	jp (hl)			;a297
	sub b			;a298
	ld sp,hl		;a299
	add hl,de		;a29a
	ld l,c			;a29b
	inc (hl)		;a29c
	and h			;a29d
	call p,00909h		;a29e
	ld b,b			;a2a1
	ld b,b			;a2a2
	ret p			;a2a3
	and e			;a2a4
	or 04fh			;a2a5
	sub h			;a2a7
	ld b,b			;a2a8
	inc b			;a2a9
	ret m			;a2aa
	ld (bc),a		;a2ab
	defb 0fdh,081h,0f5h ;illegal sequence	;a2ac
	ld b,0f9h		;a2af
	ld (bc),a		;a2b1
	cp 083h			;a2b2
	ld sp,hl		;a2b4
	call p,003f9h		;a2b5
	sub b			;a2b8
	ld (bc),a		;a2b9
	jp (hl)			;a2ba
	add a,c			;a2bb
	sub b			;a2bc
	nop			;a2bd
	inc bc			;a2be
	rst 38h			;a2bf
	adc a,d			;a2c0
	cp 0fch			;a2c1
	ret m			;a2c3
	rrca			;a2c4
	rst 38h			;a2c5
	ret nz			;a2c6
	add a,b			;a2c7
	ld bc,00703h		;a2c8
	inc bc			;a2cb
	rrca			;a2cc
	adc a,b			;a2cd
	ld a,a			;a2ce
	ld bc,00703h		;a2cf
	rrca			;a2d2
	rra			;a2d3
	ccf			;a2d4
	ld a,a			;a2d5
	ex af,af'		;a2d6
	nop			;a2d7
	ex af,af'		;a2d8
	rrca			;a2d9
	ex af,af'		;a2da
	rra			;a2db
	nop			;a2dc
	inc bc			;a2dd
	cp 003h			;a2de
	ret p			;a2e0
	add a,c			;a2e1
	ld b,b			;a2e2
	inc bc			;a2e3
	ret p			;a2e4
	inc b			;a2e5
	ld b,b			;a2e6
	add a,e			;a2e7
	sub h			;a2e8
	ld b,b			;a2e9
	ld b,b			;a2ea
	dec b			;a2eb
	call p,0f982h		;a2ec
	call p,04010h		;a2ef
	ex af,af'		;a2f2
	sub h			;a2f3
	nop			;a2f4
	ld b,0ffh		;a2f5
	add a,d			;a2f7
	jp 00330h		;a2f8
	rst 38h			;a2fb
	adc a,l			;a2fc
	ei			;a2fd
	rst 20h			;a2fe
	rst 0			;a2ff
	add a,b			;a300
	rra			;a301
	rst 38h			;a302
	rst 38h			;a303
	jp (hl)			;a304
	add a,c			;a305
	ld a,(hl)		;a306
	ld a,(hl)		;a307
	add a,e			;a308
	ld a,b			;a309
	inc bc			;a30a
	rst 38h			;a30b
	inc b			;a30c
	cp 004h			;a30d
	rst 38h			;a30f
	inc b			;a310
	ld a,a			;a311
	add a,c			;a312
	rst 38h			;a313
	inc bc			;a314
	rlca			;a315
	adc a,b			;a316
	rrca			;a317
	rlca			;a318
	rlca			;a319
	rst 38h			;a31a
	rra			;a31b
	add a,b			;a31c
	ret nz			;a31d
	ret p			;a31e
	ld b,0ffh		;a31f
	ld (bc),a		;a321
	nop			;a322
	add a,d			;a323
	rlca			;a324
	call m,0fe03h		;a325
	add a,l			;a328
	rst 38h			;a329
	nop			;a32a
	nop			;a32b
	ret po			;a32c
	ccf			;a32d
	inc bc			;a32e
	ld a,a			;a32f
	add a,e			;a330
	ld bc,00f03h		;a331
	dec b			;a334
	rst 38h			;a335
	nop			;a336
	ld b,0fdh		;a337
	add a,d			;a339
	ld sp,hl		;a33a
	jp (hl)			;a33b
	inc b			;a33c
	cp 083h			;a33d
	ret m			;a33f
	defb 0fdh,0f5h,003h ;illegal sequence	;a340
	cp 086h			;a343
	ret m			;a345
	defb 0fdh,0fdh,015h ;illegal sequence	;a346
	sub 0e8h		;a349
	dec b			;a34b
	jp m,0f306h		;a34c
	ld (bc),a		;a34f
	jp m,0f303h		;a350
	ld (bc),a		;a353
	ld sp,hl		;a354
	adc a,b			;a355
	ret p			;a356
	jp m,0f0f3h		;a357
	sub h			;a35a
	sub h			;a35b
	di			;a35c
	jp p,0f106h		;a35d
la360h:
	ld (bc),a		;a360
	ld hl,00f02h		;a361
	adc a,(hl)		;a364
	call p,0f9f0h		;a365
	ret p			;a368
	ld hl,00f21h		;a369
	rrca			;a36c
	call p,0f9f0h		;a36d
	ret p			;a370
	di			;a371
	jp p,0f106h		;a372
	nop			;a375
	push bc			;a376
	rst 38h			;a377
	rra			;a378
	rra			;a379
	ret p			;a37a
	ret p			;a37b
	adc a,a			;a37c
	ld a,b			;a37d
	jr c,$+1		;a37e
	ret m			;a380
	ret m			;a381
	rrca			;a382
	rrca			;a383
	pop af			;a384
	pop hl			;a385
	ex (sp),hl		;a386
	rst 38h			;a387
	rra			;a388
	rra			;a389
	rrca			;a38a
	rrca			;a38b
	adc a,a			;a38c
	ld a,b			;a38d
	rst 0			;a38e
	rst 38h			;a38f
	ret m			;a390
	ret m			;a391
	rrca			;a392
	rrca			;a393
	ld c,0e1h		;a394
	ex (sp),hl		;a396
	rst 38h			;a397
	rra			;a398
	rra			;a399
	rrca			;a39a
	rrca			;a39b
	adc a,a			;a39c
	ld a,b			;a39d
	jr c,$+1		;a39e
	ret m			;a3a0
	ret m			;a3a1
	rrca			;a3a2
	rrca			;a3a3
	ld c,0e1h		;a3a4
	ex (sp),hl		;a3a6
	rst 38h			;a3a7
	rra			;a3a8
	rra			;a3a9
	rrca			;a3aa
	rrca			;a3ab
	adc a,a			;a3ac
	add a,a			;a3ad
	jr c,$+1		;a3ae
	ret m			;a3b0
	ret m			;a3b1
	ret p			;a3b2
	ret p			;a3b3
	pop af			;a3b4
	pop hl			;a3b5
	ex (sp),hl		;a3b6
	jr c,la431h		;a3b7
	ld (hl),b		;a3b9
	rrca			;a3ba
	rrca			;a3bb
	inc bc			;a3bc
	rra			;a3bd
	add a,l			;a3be
	inc e			;a3bf
	ld e,0f1h		;a3c0
	ret p			;a3c2
	ret p			;a3c3
	inc bc			;a3c4
	rlca			;a3c5
	add a,l			;a3c6
	rst 0			;a3c7
	add a,a			;a3c8
	adc a,a			;a3c9
	rrca			;a3ca
	rrca			;a3cb
	inc bc			;a3cc
	rra			;a3cd
	add a,l			;a3ce
	ex (sp),hl		;a3cf
	ld e,0f1h		;a3d0
	ret p			;a3d2
	ret p			;a3d3
	inc bc			;a3d4
	rlca			;a3d5
	add a,l			;a3d6
	jr c,la360h		;a3d7
	adc a,a			;a3d9
	ret p			;a3da
	ret p			;a3db
	inc bc			;a3dc
	ret po			;a3dd
	add a,l			;a3de
	inc e			;a3df
	ld e,0f1h		;a3e0
	ret p			;a3e2
	ret p			;a3e3
	inc bc			;a3e4
	rlca			;a3e5
	add a,l			;a3e6
	rst 0			;a3e7
	add a,a			;a3e8
	ld (hl),b		;a3e9
	ret p			;a3ea
	ret p			;a3eb
	inc bc			;a3ec
	rra			;a3ed
	add a,l			;a3ee
	ex (sp),hl		;a3ef
	ld e,00eh		;a3f0
	rrca			;a3f2
	rrca			;a3f3
	inc b			;a3f4
	ret m			;a3f5
	ld (bc),a		;a3f6
	add a,c			;a3f7
	ld (bc),a		;a3f8
	inc a			;a3f9
	inc b			;a3fa
	ld a,(hl)		;a3fb
	add a,a			;a3fc
	cp 0ffh			;a3fd
	ld a,a			;a3ff
	ld a,a			;a400
	rst 38h			;a401
	cp 0ffh			;a402
	nop			;a404
	ld (bc),a		;a405
	jp m,05e8ch		;a406
	defb 0edh ;next byte illegal after ed	;a409
	xor l			;a40a
	out (065h),a		;a40b
	ld h,l			;a40d
	jp m,0fefah		;a40e
	push hl			;a411
	and l			;a412
	ld d,e			;a413
	inc b			;a414
	or 08dh			;a415
	ld d,e			;a417
	jp c,0dedeh		;a418
	and l			;a41b
	ld d,e			;a41c
	or 0f6h			;a41d
	di			;a41f
	and l			;a420
	push hl			;a421
	push hl			;a422
	jp m,0f303h		;a423
	adc a,h			;a426
	ld d,(hl)		;a427
	sub 0d3h		;a428
	jp c,0e5e5h		;a42a
	di			;a42d
	di			;a42e
	or 065h			;a42f
la431h:
	dec (hl)		;a431
	and l			;a432
	inc b			;a433
	cp 0d9h			;a434
	ld e,d			;a436
	out (0d6h),a		;a437
	sub 053h		;a439
	and l			;a43b
	cp 0feh			;a43c
	jp m,05653h		;a43e
	ld d,(hl)		;a441
	di			;a442
	jp m,0ede5h		;a443
	xor b			;a446
	add a,e			;a447
	add a,(hl)		;a448
	sub 053h		;a449
	rst 38h			;a44b
	push hl			;a44c
	push hl			;a44d
	jp c,0d6d3h		;a44e
	ld h,l			;a451
	dec (hl)		;a452
	rst 38h			;a453
	ld d,e			;a454
	sub 086h		;a455
	add a,(hl)		;a457
	add a,e			;a458
	jp c,0ff5eh		;a459
	ld d,e			;a45c
	ld h,l			;a45d
	sub 0d6h		;a45e
	out (0a5h),a		;a460
	push hl			;a462
	rst 38h			;a463
	ld h,l			;a464
	sub 083h		;a465
	xor b			;a467
	ret pe			;a468
	defb 0edh ;next byte illegal after ed	;a469
	and l			;a46a
	rst 38h			;a46b
	ld h,l			;a46c
	ld h,l			;a46d
	out (0dah),a		;a46e
	sbc a,0e5h		;a470
	and l			;a472
	rst 38h			;a473
	ld d,e			;a474
	jp c,0e8e8h		;a475
	xor b			;a478
	out (056h),a		;a479
	rst 38h			;a47b
	ld d,e			;a47c
	and l			;a47d
	defb 0edh ;next byte illegal after ed	;a47e
	defb 0edh ;next byte illegal after ed	;a47f
	xor l			;a480
	ld d,e			;a481
	ld d,(hl)		;a482
	rst 38h			;a483
	rst 38h			;a484
	ld h,e			;a485
	ld a,(0eaeah)		;a486
	and e			;a489
	ld (hl),0ffh		;a48a
	rst 38h			;a48c
	ld h,c			;a48d
	ld h,c			;a48e
	inc bc			;a48f
	ld h,e			;a490
	add a,d			;a491
	ld h,c			;a492
	ret p			;a493
	nop			;a494
	inc b			;a495
	rst 38h			;a496
	inc bc			;a497
	call m,0f881h		;a498
	inc b			;a49b
	rst 38h			;a49c
	inc bc			;a49d
	ccf			;a49e
	add a,c			;a49f
	rra			;a4a0
	nop			;a4a1
	inc b			;a4a2
	ret p			;a4a3
	inc c			;a4a4
	ld sp,hl		;a4a5
	nop			;a4a6
	add a,d			;a4a7
	ret m			;a4a8
	call m,0ff06h		;a4a9
	dec b			;a4ac
	ccf			;a4ad
	add a,e			;a4ae
	cp a			;a4af
	rst 38h			;a4b0
	rst 38h			;a4b1
	nop			;a4b2
	add a,c			;a4b3
	defb 0fdh,007h,0f5h ;illegal sequence	;a4b4
	ld (bc),a		;a4b7
	ret p			;a4b8
	add a,c			;a4b9
	call p,0f005h		;a4ba
	nop			;a4bd
	ld (bc),a		;a4be
	ld (hl),b		;a4bf
	xor d			;a4c0
	ld a,h			;a4c1
	add a,c			;a4c2
	rst 20h			;a4c3
	rst 20h			;a4c4
	nop			;a4c5
	rst 38h			;a4c6
	ret m			;a4c7
	call m,0ffffh		;a4c8
	jp 001c3h		;a4cb
	inc bc			;a4ce
	add a,b			;a4cf
	add a,b			;a4d0
	ret p			;a4d1
	rst 38h			;a4d2
	call m,080ffh		;a4d3
	rst 38h			;a4d6
	ld a,a			;a4d7
	ccf			;a4d8
	rra			;a4d9
	rra			;a4da
	rst 0			;a4db
	rst 0			;a4dc
	inc a			;a4dd
	inc a			;a4de
	ld a,h			;a4df
	ld bc,0ff87h		;a4e0
	ccf			;a4e3
	rst 38h			;a4e4
	dec e			;a4e5
	rst 38h			;a4e6
	call m,0fefch		;a4e7
	cp 003h			;a4ea
	add a,b			;a4ec
	add a,c			;a4ed
	rst 38h			;a4ee
	inc b			;a4ef
	add a,b			;a4f0
	ld (bc),a		;a4f1
	cp 081h			;a4f2
	nop			;a4f4
	inc bc			;a4f5
	cp 086h			;a4f6
	rst 38h			;a4f8
	nop			;a4f9
	rrca			;a4fa
	rst 38h			;a4fb
	ld a,a			;a4fc
	ld a,a			;a4fd
	inc b			;a4fe
	ld a,(hl)		;a4ff
	ld (bc),a		;a500
	ld a,a			;a501
	sub d			;a502
	nop			;a503
	ld a,a			;a504
	rlca			;a505
	rlca			;a506
	ld bc,0f9f9h		;a507
	pop af			;a50a
	ret p			;a50b
	ret p			;a50c
	ret m			;a50d
	inc bc			;a50e
	ld a,a			;a50f
la510h:
	ld b,c			;a510
	jr nz,la552h		;a511
	add a,b			;a513
	rst 38h			;a514
	inc bc			;a515
	rrca			;a516
	sub c			;a517
	rra			;a518
	ex (sp),hl		;a519
	add a,c			;a51a
	ld a,b			;a51b
	ld a,b			;a51c
	rst 38h			;a51d
	ld bc,0ffffh		;a51e
	ccf			;a521
	ccf			;a522
	ret m			;a523
	jr $+1			;a524
	jr c,la5a0h		;a526
	ld a,b			;a528
	inc bc			;a529
	ret p			;a52a
	ld (bc),a		;a52b
	rst 38h			;a52c
	add a,e			;a52d
	nop			;a52e
	rst 38h			;a52f
	rst 38h			;a530
	inc b			;a531
	nop			;a532
	adc a,a			;a533
	add a,e			;a534
	call nz,0f0f8h		;a535
	ret po			;a538
	ret nz			;a539
	add a,b			;a53a
	rst 38h			;a53b
	pop bc			;a53c
	inc hl			;a53d
	rst 18h			;a53e
	rst 28h			;a53f
	rst 30h			;a540
	ei			;a541
	dec a			;a542
	inc bc			;a543
	rst 38h			;a544
	add a,c			;a545
	nop			;a546
	dec b			;a547
	rst 38h			;a548
	add a,h			;a549
	nop			;a54a
	rst 38h			;a54b
	nop			;a54c
	nop			;a54d
	dec b			;a54e
	rst 38h			;a54f
	adc a,(hl)		;a550
	add a,b			;a551
la552h:
	rst 38h			;a552
	rst 38h			;a553
	call m,01ffch		;a554
	jr la568h		;a557
	rrca			;a559
	rra			;a55a
	ld a,03dh		;a55b
	ld bc,00501h		;a55d
	rst 38h			;a560
	ld (bc),a		;a561
	pop hl			;a562
	add a,d			;a563
	add a,b			;a564
	ret nz			;a565
	ex af,af'		;a566
	ld d,c			;a567
la568h:
	ex af,af'		;a568
	ld c,h			;a569
	ex af,af'		;a56a
	ld c,c			;a56b
	rlca			;a56c
	ld h,d			;a56d
	add a,c			;a56e
	rst 38h			;a56f
	rlca			;a570
	ld (0ff81h),a		;a571
	rlca			;a574
	adc a,d			;a575
	add a,c			;a576
	rst 38h			;a577
	rlca			;a578
	call nz,0ff81h		;a579
	ex af,af'		;a57c
	adc a,h			;a57d
	ex af,af'		;a57e
	jr nc,la599h		;a57f
	jr la593h		;a581
	ld b,010h		;a583
	add a,c			;a585
	djnz la5e8h		;a586
	djnz la510h		;a588
	djnz $+99		;a58a
	nop			;a58c
	add a,l			;a58d
	ret pe			;a58e
	adc a,l			;a58f
	push de			;a590
	push af			;a591
	push af			;a592
la593h:
	inc bc			;a593
	ld c,a			;a594
	add a,c			;a595
	defb 0fdh,003h,0f5h ;illegal sequence	;a596
la599h:
	adc a,h			;a599
	or 0f5h			;a59a
	ld sp,hl		;a59c
	sub h			;a59d
	ret nc			;a59e
	ld d,b			;a59f
la5a0h:
	ret p			;a5a0
	ret p			;a5a1
	push af			;a5a2
	push af			;a5a3
	defb 0fdh,0fdh,003h ;illegal sequence	;a5a4
	ld b,b			;a5a7
	add a,(hl)		;a5a8
	rst 38h			;a5a9
	ret c			;a5aa
	rst 38h			;a5ab
	ret pe			;a5ac
	rst 38h			;a5ad
	push de			;a5ae
	rlca			;a5af
	push af			;a5b0
	add a,c			;a5b1
	sub h			;a5b2
	inc bc			;a5b3
	ld b,b			;a5b4
	inc bc			;a5b5
	sub h			;a5b6
	inc bc			;a5b7
	call p,0f983h		;a5b8
	call p,00740h		;a5bb
	rrca			;a5be
	ld (bc),a		;a5bf
	push af			;a5c0
	add a,a			;a5c1
	ret c			;a5c2
	rst 38h			;a5c3
	ld b,b			;a5c4
	ld b,b			;a5c5
	sub h			;a5c6
	ld b,b			;a5c7
	ld b,b			;a5c8
	ld b,00fh		;a5c9
	add a,(hl)		;a5cb
	push af			;a5cc
	defb 0fdh,0f8h,0feh ;illegal sequence	;a5cd
	ret m			;a5d0
	ld b,b			;a5d1
	dec b			;a5d2
	ret p			;a5d3
	add a,c			;a5d4
	ld b,b			;a5d5
	inc bc			;a5d6
	ret p			;a5d7
	add a,(hl)		;a5d8
	inc b			;a5d9
	ret p			;a5da
	defb 0fdh,0f8h,0e8h ;illegal sequence	;a5db
	adc a,l			;a5de
	inc bc			;a5df
	ret p			;a5e0
	add a,e			;a5e1
	xor 094h		;a5e2
	sub h			;a5e4
la5e5h:
	add hl,bc		;a5e5
	jp (hl)			;a5e6
	inc b			;a5e7
la5e8h:
	cp 005h			;a5e8
	sub h			;a5ea
	add a,(hl)		;a5eb
	call p,0f0f0h		;a5ec
	call p,0f0f4h		;a5ef
	inc bc			;a5f2
	call p,0f008h		;a5f3
	inc bc			;a5f6
	sbc a,a			;a5f7
	rlca			;a5f8
	ld c,a			;a5f9
	dec b			;a5fa
	ld c,c			;a5fb
	inc bc			;a5fc
	call p,0ee83h		;a5fd
	sub h			;a600
	sub h			;a601
	inc bc			;a602
	jp (hl)			;a603
	add a,d			;a604
	sub h			;a605
	ld b,b			;a606
	inc bc			;a607
	sub h			;a608
	add a,c			;a609
	jp (hl)			;a60a
	ld b,0f6h		;a60b
	add a,h			;a60d
	push af			;a60e
	ld sp,hl		;a60f
	sub h			;a610
	ld sp,hl		;a611
	ld b,0f4h		;a612
	add a,d			;a614
	ret p			;a615
	ld sp,hl		;a616
	ld b,0f4h		;a617
	add a,d			;a619
	ret p			;a61a
	ld sp,hl		;a61b
	ld b,0f4h		;a61c
	add a,d			;a61e
	ret p			;a61f
	call p,0f007h		;a620
	add a,c			;a623
	call p,0f007h		;a624
	add a,c			;a627
	call p,0f007h		;a628
	add a,c			;a62b
	call p,0f007h		;a62c
	add a,c			;a62f
	cp 006h			;a630
	ld sp,hl		;a632
	add a,d			;a633
	call p,006f9h		;a634
	call p,0f082h		;a637
	ld sp,hl		;a63a
	ld b,0f4h		;a63b
	add a,d			;a63d
	ret p			;a63e
	cp 006h			;a63f
	ld sp,hl		;a641
	add a,c			;a642
	call p,0fe07h		;a643
	add a,c			;a646
	ld sp,hl		;a647
	rlca			;a648
	cp 082h			;a649
	ld sp,hl		;a64b
	cp 006h			;a64c
	ld sp,hl		;a64e
	add a,c			;a64f
	call p,0fe07h		;a650
	add a,d			;a653
	ld sp,hl		;a654
	cp 006h			;a655
	ld sp,hl		;a657
	add a,c			;a658
	call p,0fe07h		;a659
	add a,d			;a65c
	ld sp,hl		;a65d
	cp 006h			;a65e
	ld sp,hl		;a660
	add a,d			;a661
	call p,006feh		;a662
	ld sp,hl		;a665
	add a,d			;a666
	call p,006f9h		;a667
	call p,0f082h		;a66a
	cp 006h			;a66d
	ld sp,hl		;a66f
	add a,d			;a670
	call p,006f9h		;a671
	call p,0f081h		;a674
	nop			;a677
	ld (bc),a		;a678
	ret nz			;a679
	ld (bc),a		;a67a
	add a,b			;a67b
	adc a,c			;a67c
	nop			;a67d
	cp 0feh			;a67e
	rst 38h			;a680
	rst 38h			;a681
	ld a,a			;a682
	ld a,a			;a683
	nop			;a684
	ld bc,0fc03h		;a685
	adc a,b			;a688
	rst 38h			;a689
	cp 0feh			;a68a
	rst 38h			;a68c
	ld a,a			;a68d
	ld a,a			;a68e
	ret nz			;a68f
	ret nz			;a690
	inc bc			;a691
	inc bc			;a692
	add a,d			;a693
	cp 0ffh			;a694
	inc bc			;a696
	add a,b			;a697
	ld (bc),a		;a698
	ccf			;a699
	ld (bc),a		;a69a
	ld a,a			;a69b
	adc a,c			;a69c
	rst 38h			;a69d
	cp 0feh			;a69e
	rst 38h			;a6a0
	rst 38h			;a6a1
	ld a,a			;a6a2
	ld a,a			;a6a3
	nop			;a6a4
	ld bc,00303h		;a6a5
	adc a,b			;a6a8
	nop			;a6a9
	cp 0feh			;a6aa
	nop			;a6ac
	add a,b			;a6ad
	add a,b			;a6ae
	ret nz			;a6af
	ret nz			;a6b0
	inc bc			;a6b1
	inc bc			;a6b2
	add a,d			;a6b3
	ld bc,00300h		;a6b4
	add a,b			;a6b7
	ld (bc),a		;a6b8
	ret nz			;a6b9
	ld (bc),a		;a6ba
	ld a,a			;a6bb
	adc a,c			;a6bc
	rst 38h			;a6bd
	ld bc,0ff01h		;a6be
	rst 38h			;a6c1
	ld a,a			;a6c2
	ld a,a			;a6c3
	rst 38h			;a6c4
	cp 003h			;a6c5
	inc bc			;a6c7
	adc a,l			;a6c8
	nop			;a6c9
	cp 0feh			;a6ca
	rst 38h			;a6cc
	ld a,a			;a6cd
	ld a,a			;a6ce
	ret nz			;a6cf
	ret nz			;a6d0
	inc bc			;a6d1
	inc bc			;a6d2
	cp 0feh			;a6d3
	rst 38h			;a6d5
	inc bc			;a6d6
	add a,b			;a6d7
	ld (bc),a		;a6d8
	ccf			;a6d9
	ld (bc),a		;a6da
	add a,b			;a6db
	adc a,c			;a6dc
	nop			;a6dd
	cp 0feh			;a6de
	rst 38h			;a6e0
	rst 38h			;a6e1
	ld a,a			;a6e2
	ld a,a			;a6e3
	nop			;a6e4
	ld bc,00303h		;a6e5
	sub b			;a6e8
	nop			;a6e9
	cp 0feh			;a6ea
	rst 38h			;a6ec
	ld a,a			;a6ed
	ld a,a			;a6ee
	ccf			;a6ef
	ccf			;a6f0
	call m,001fch		;a6f1
	ld bc,07f00h		;a6f4
	ld a,a			;a6f7
	rst 38h			;a6f8
	nop			;a6f9
	add a,a			;a6fa
	push hl			;a6fb
	ldd			;a6fc
	jr c,la738h		;a6fe
	sub 053h		;a700
	inc bc			;a702
	jp m,0fe84h		;a703
	and l			;a706
	and l			;a707
	ld d,e			;a708
	inc bc			;a709
	or 091h			;a70a
	jp m,0da5eh		;a70c
	jp c,065d3h		;a70f
	ld h,l			;a712
	push hl			;a713
	push hl			;a714
	xor l			;a715
	out (0d3h),a		;a716
	ld h,l			;a718
	dec (hl)		;a719
	rst 38h			;a71a
	ld d,e			;a71b
	sub 003h		;a71c
	add a,(hl)		;a71e
	add a,d			;a71f
	jp c,0035eh		;a720
	or 081h			;a723
	di			;a725
	inc bc			;a726
	push hl			;a727
	add a,l			;a728
	xor a			;a729
	ccf			;a72a
	ccf			;a72b
	or 053h			;a72c
	inc bc			;a72e
	defb 0edh ;next byte illegal after ed	;a72f
	add a,h			;a730
	and l			;a731
	dec (hl)		;a732
	dec (hl)		;a733
	ld h,l			;a734
	inc bc			;a735
	ld l,l			;a736
	adc a,d			;a737
la738h:
	and l			;a738
	push hl			;a739
	rst 38h			;a73a
	ld h,l			;a73b
	ld l,l			;a73c
	add a,e			;a73d
	adc a,d			;a73e
	adc a,d			;a73f
	defb 0edh ;next byte illegal after ed	;a740
	and l			;a741
	inc bc			;a742
	di			;a743
	add a,h			;a744
	or 053h			;a745
	ld d,e			;a747
	and l			;a748
	inc bc			;a749
	rst 28h			;a74a
	sub c			;a74b
	di			;a74c
	ld d,(hl)		;a74d
	out (0d3h),a		;a74e
	jp c,0e5e5h		;a750
	ld h,l			;a753
	ld h,l			;a754
	out (0dah),a		;a755
	jp c,la5e5h		;a757
	rst 38h			;a75a
	ld d,e			;a75b
	jp c,0e803h		;a75c
	add a,d			;a75f
	out (056h),a		;a760
	inc bc			;a762
	cp 081h			;a763
	jp m,06503h		;a765
	add a,l			;a768
	ccf			;a769
	xor a			;a76a
	xor a			;a76b
	cp 05ah			;a76c
	inc bc			;a76e
	sub 084h		;a76f
	ld d,e			;a771
	ld e,d			;a772
	ld d,e			;a773
	ld e,d			;a774
	inc bc			;a775
	defb 0edh ;next byte illegal after ed	;a776
	add a,e			;a777
	ld d,e			;a778
	ld d,(hl)		;a779
	ret p			;a77a
	nop			;a77b
	rst 38h			;a77c
	rst 38h			;a77d
	pop bc			;a77e
	ret po			;a77f
	ret p			;a780
	ret m			;a781
	call m,0fffeh		;a782
	rst 38h			;a785
	pop bc			;a786
	ret po			;a787
	ret p			;a788
	ret m			;a789
	call m,0fffeh		;a78a
	rst 38h			;a78d
	pop bc			;a78e
	ret po			;a78f
	ret p			;a790
	ret m			;a791
	call m,0fffeh		;a792
	rst 38h			;a795
	pop bc			;a796
	ret po			;a797
	ret p			;a798
	ret m			;a799
	call m,0fffeh		;a79a
	rst 38h			;a79d
	add a,e			;a79e
	rlca			;a79f
	rrca			;a7a0
	rra			;a7a1
	ccf			;a7a2
	ld a,a			;a7a3
	rst 38h			;a7a4
	rst 38h			;a7a5
	add a,e			;a7a6
	rlca			;a7a7
	rrca			;a7a8
	rra			;a7a9
	ccf			;a7aa
	ld a,a			;a7ab
	rst 38h			;a7ac
	rst 38h			;a7ad
	add a,e			;a7ae
	rlca			;a7af
	rrca			;a7b0
	rra			;a7b1
	ccf			;a7b2
	ld a,a			;a7b3
	rst 38h			;a7b4
	rst 38h			;a7b5
	add a,e			;a7b6
	rlca			;a7b7
	rrca			;a7b8
	rra			;a7b9
	ccf			;a7ba
	ld a,a			;a7bb
	rst 38h			;a7bc
	rst 38h			;a7bd
	cp 0fch			;a7be
	ret m			;a7c0
	ret p			;a7c1
	ret po			;a7c2
	pop bc			;a7c3
	rst 38h			;a7c4
	rst 38h			;a7c5
	cp 0fch			;a7c6
	ret m			;a7c8
	ret p			;a7c9
	ret po			;a7ca
	ld a,0ffh		;a7cb
	rst 38h			;a7cd
	cp 0fch			;a7ce
	ret m			;a7d0
	ret p			;a7d1
	ret po			;a7d2
	ld a,0ffh		;a7d3
	rst 38h			;a7d5
	cp 0fch			;a7d6
	ret m			;a7d8
	ret p			;a7d9
	ret po			;a7da
	ld a,0ffh		;a7db
	rst 38h			;a7dd
	ld a,a			;a7de
	ccf			;a7df
	rra			;a7e0
	rrca			;a7e1
	rlca			;a7e2
	add a,e			;a7e3
	rst 38h			;a7e4
	rst 38h			;a7e5
	ld a,a			;a7e6
	ccf			;a7e7
	rra			;a7e8
	rrca			;a7e9
	rlca			;a7ea
	ld a,h			;a7eb
	rst 38h			;a7ec
	rst 38h			;a7ed
	ld a,a			;a7ee
	ccf			;a7ef
	rra			;a7f0
	rrca			;a7f1
	rlca			;a7f2
	ld a,h			;a7f3
	rst 38h			;a7f4
	rst 38h			;a7f5
	ld a,a			;a7f6
	ccf			;a7f7
	rra			;a7f8
	rrca			;a7f9
	rlca			;a7fa
	ld a,h			;a7fb
	ld (bc),a		;a7fc
	rst 38h			;a7fd
	add a,c			;a7fe
	cp 004h			;a7ff
	call m,0fe84h		;a801
	rst 38h			;a804
	rst 38h			;a805
	ld a,a			;a806
	inc b			;a807
	ccf			;a808
	add a,d			;a809
	ld a,a			;a80a
	rst 38h			;a80b
	nop			;a80c
	add a,(hl)		;a80d
	ret p			;a80e
	jp m,0fefeh		;a80f
	jp m,004f3h		;a812
	or 084h			;a815
	di			;a817
	jp m,0fefeh		;a818
	inc bc			;a81b
	jp m,0f385h		;a81c
	or 0f6h			;a81f
	di			;a821
	jp m,0fe04h		;a822
	add a,h			;a825
	jp m,0f6f3h		;a826
	or 003h			;a829
	di			;a82b
	add a,l			;a82c
	jp m,0fefeh		;a82d
	jp m,004f3h		;a830
	or 084h			;a833
	di			;a835
	jp m,0fefeh		;a836
	inc bc			;a839
	jp m,0f385h		;a83a
	or 0f6h			;a83d
	di			;a83f
	jp m,0fe04h		;a840
	add a,h			;a843
	jp m,0f6f3h		;a844
	or 003h			;a847
	di			;a849
	add a,(hl)		;a84a
	cp 0fah			;a84b
	di			;a84d
	or 0f6h			;a84e
	ld d,e			;a850
	dec b			;a851
	or 083h			;a852
	di			;a854
	jp m,003e5h		;a855
	or 085h			;a858
	di			;a85a
	jp m,0fefeh		;a85b
	and l			;a85e
	inc bc			;a85f
	jp m,0fe02h		;a860
	add a,e			;a863
	jp m,065f3h		;a864
	inc bc			;a867
	cp 085h			;a868
	jp m,0f6f3h		;a86a
	or 053h			;a86d
	dec b			;a86f
	or 083h			;a870
	di			;a872
	jp m,003e5h		;a873
	or 085h			;a876
	di			;a878
	jp m,0fefeh		;a879
	and l			;a87c
	inc bc			;a87d
	jp m,0fe02h		;a87e
	add a,e			;a881
	jp m,065f3h		;a882
	ld a,(bc)		;a885
	or 007h			;a886
	pop af			;a888
	nop			;a889
	ld (bc),a		;a88a
	cp 002h			;a88b
	call m,0f802h		;a88d
	ld (bc),a		;a890
	ret p			;a891
	inc bc			;a892
	ret po			;a893
	add a,h			;a894
	ret p			;a895
	ret po			;a896
	ret po			;a897
	rst 38h			;a898
	inc bc			;a899
	ret m			;a89a
	rlca			;a89b
	ret po			;a89c
	rlca			;a89d
	add a,b			;a89e
	add a,d			;a89f
	ret p			;a8a0
	nop			;a8a1
	inc b			;a8a2
	call m,00006h		;a8a3
	sub h			;a8a6
	ld bc,00300h		;a8a7
	inc bc			;a8aa
	ld a,a			;a8ab
	rlca			;a8ac
	or 0f6h			;a8ad
	call pe,0f80ch		;a8af
	ret m			;a8b2
	ret p			;a8b3
	ret p			;a8b4
	ret po			;a8b5
	ret po			;a8b6
	ret nz			;a8b7
	ret nz			;a8b8
	add a,b			;a8b9
	add a,b			;a8ba
	ex af,af'		;a8bb
	nop			;a8bc
	ld (bc),a		;a8bd
	cp 081h			;a8be
	add a,003h		;a8c0
	sub 085h		;a8c2
	add a,0feh		;a8c4
	ret po			;a8c6
	ret po			;a8c7
	ret nz			;a8c8
	inc bc			;a8c9
	ret po			;a8ca
	add a,c			;a8cb
	ld a,a			;a8cc
	inc bc			;a8cd
	nop			;a8ce
	adc a,(hl)		;a8cf
	ret po			;a8d0
	ld h,b			;a8d1
	ret nz			;a8d2
	add a,b			;a8d3
	nop			;a8d4
	nop			;a8d5
	cp 0feh			;a8d6
	ccf			;a8d8
	add a,b			;a8d9
	ld bc,0f001h		;a8da
la8ddh:
	ret p			;a8dd
	inc b			;a8de
	rst 38h			;a8df
	inc b			;a8e0
	nop			;a8e1
	nop			;a8e2
	ld a,(bc)		;a8e3
	ld sp,hl		;a8e4
	adc a,c			;a8e5
	ret p			;a8e6
	jp m,0f0f3h		;a8e7
	sub h			;a8ea
	sub h			;a8eb
	add hl,bc		;a8ec
	inc b			;a8ed
	jp (hl)			;a8ee
	inc bc			;a8ef
	sub h			;a8f0
	add a,h			;a8f1
	ld c,a			;a8f2
	nop			;a8f3
	nop			;a8f4
	jp (hl)			;a8f5
	dec b			;a8f6
	sub h			;a8f7
	add a,h			;a8f8
	nop			;a8f9
	sub h			;a8fa
	sub h			;a8fb
	sub b			;a8fc
	inc b			;a8fd
	ld c,a			;a8fe
	dec bc			;a8ff
	sub b			;a900
	ld d,094h		;a901
	dec bc			;a903
	ld b,b			;a904
	add a,e			;a905
	jp (hl)			;a906
	sub h			;a907
	sub h			;a908
	dec b			;a909
	ret p			;a90a
	rlca			;a90b
	ld b,b			;a90c
	add a,l			;a90d
	ret p			;a90e
	and e			;a90f
	or 04fh			;a910
	sub h			;a912
	ex af,af'		;a913
	ld b,b			;a914
	add a,c			;a915
	sbc a,a			;a916
	nop			;a917
	add a,d			;a918
	rra			;a919
	rlca			;a91a
	ld b,000h		;a91b
	add a,d			;a91d
	rst 20h			;a91e
	ret p			;a91f
	ld b,000h		;a920
	add a,d			;a922
	inc bc			;a923
	ld bc,00006h		;a924
	ld (bc),a		;a927
	inc bc			;a928
	inc bc			;a929
	ld bc,00003h		;a92a
	add a,e			;a92d
	ret po			;a92e
	ret nz			;a92f
	add a,b			;a930
	dec b			;a931
	nop			;a932
	add a,h			;a933
	ret po			;a934
	ret nz			;a935
	ret nz			;a936
	add a,b			;a937
	inc b			;a938
	nop			;a939
	sub b			;a93a
	dec sp			;a93b
	cp 0fch			;a93c
	ret m			;a93e
	ret p			;a93f
	ret po			;a940
	ret nz			;a941
	add a,b			;a942
	or (hl)			;a943
	call m,0e0f0h		;a944
	ret nz			;a947
	ret nz			;a948
	add a,b			;a949
	nop			;a94a
	nop			;a94b
	add a,c			;a94c
	ld sp,03007h		;a94d
	add a,d			;a950
	ld hl,01631h		;a951
	jr nc,la958h		;a954
	djnz la95eh		;a956
la958h:
	jr nz,la962h		;a958
	djnz la8ddh		;a95a
	pop af			;a95c
	rlca			;a95d
la95eh:
	ret p			;a95e
	add a,c			;a95f
	pop af			;a960
	rlca			;a961
la962h:
	ret p			;a962
	nop			;a963
	cp b			;a964
	ld h,b			;a965
	ret nz			;a966
	sbc a,c			;a967
	rst 20h			;a968
	call m,0c0f0h		;a969
	nop			;a96c
	sbc a,b			;a96d
	ret nc			;a96e
	pop hl			;a96f
	ld a,a			;a970
	ccf			;a971
	rrca			;a972
	inc bc			;a973
	nop			;a974
	push hl			;a975
	call nc,0fefch		;a976
	ld a,a			;a979
	ccf			;a97a
	rrca			;a97b
	inc bc			;a97c
	cp 07fh			;a97d
	ld a,a			;a97f
	ccf			;a980
	ccf			;a981
	rra			;a982
	rlca			;a983
	inc bc			;a984
	ex de,hl		;a985
	jp 0fcfeh		;a986
	call m,0f0f8h		;a989
	ret po			;a98c
	inc e			;a98d
	jr c,la9a0h		;a98e
	jr nz,la992h		;a990
la992h:
	call m,0f0fch		;a992
	rra			;a995
	rra			;a996
	rrca			;a997
	rrca			;a998
	rlca			;a999
	inc bc			;a99a
	cp 0e1h			;a99b
	ex af,af'		;a99d
	rst 38h			;a99e
	rst 0			;a99f
la9a0h:
	xor a			;a9a0
	rst 8			;a9a1
	cp 06bh			;a9a2
	ld hl,01c19h		;a9a4
	ld e,098h		;a9a7
	ret z			;a9a9
	ret z			;a9aa
	adc a,h			;a9ab
	call nz,0f2e6h		;a9ac
	jp m,0224ch		;a9af
	sub c			;a9b2
	ret po			;a9b3
	ld (hl),b		;a9b4
	inc a			;a9b5
	sbc a,(hl)		;a9b6
	ld l,h			;a9b7
	rlca			;a9b8
	inc bc			;a9b9
	ld bc,0f880h		;a9ba
	call m,03f7eh		;a9bd
	rst 0			;a9c0
	ld a,h			;a9c1
	ld a,b			;a9c2
	ld a,h			;a9c3
	add a,c			;a9c4
	pop bc			;a9c5
	ld e,00fh		;a9c6
	jp 038c3h		;a9c8
	ld a,h			;a9cb
	add a,c			;a9cc
	jp 0f1e1h		;a9cd
	ld a,a			;a9d0
	rlca			;a9d1
	ld b,e			;a9d2
	daa			;a9d3
	cpl			;a9d4
	sbc a,01bh		;a9d5
	scf			;a9d7
	pop hl			;a9d8
	sbc a,b			;a9d9
	ex af,af'		;a9da
	ld c,b			;a9db
	adc a,h			;a9dc
	call nz,0f2c6h		;a9dd
	ld sp,hl		;a9e0
	defb 0fdh,0b8h,0cch ;illegal sequence	;a9e1
	cp 0fah			;a9e4
	defb 0fdh,003h,0ffh ;illegal sequence	;a9e6
	ld (bc),a		;a9e9
	ld a,a			;a9ea
	add a,e			;a9eb
	ccf			;a9ec
	ret po			;a9ed
	ret po			;a9ee
	inc bc			;a9ef
	ret p			;a9f0
	ld (bc),a		;a9f1
	ret m			;a9f2
	inc bc			;a9f3
	call m,0feffh		;a9f4
	add a,b			;a9f7
	ret nz			;a9f8
	ret po			;a9f9
	ret p			;a9fa
	ret p			;a9fb
	ret m			;a9fc
	call m,02ffeh		;a9fd
	scf			;aa00
	rrca			;aa01
	add hl,sp		;aa02
	sbc a,a			;aa03
	ld sp,hl		;aa04
	di			;aa05
	pop hl			;aa06
	ret m			;aa07
	ret m			;aa08
	call m,0fefch		;aa09
	cp 0fch			;aa0c
	ret m			;aa0e
	cpl			;aa0f
	ccf			;aa10
	rrca			;aa11
	ret m			;aa12
	jp 02fe0h		;aa13
	inc bc			;aa16
	rst 38h			;aa17
	rst 38h			;aa18
	add hl,de		;aa19
	djnz laa82h		;aa1a
	inc bc			;aa1c
	ld a,b			;aa1d
	ld a,b			;aa1e
	ld a,a			;aa1f
	rst 38h			;aa20
	call m,0f0f8h		;aa21
	ret po			;aa24
	ret nz			;aa25
	add a,b			;aa26
	ld a,a			;aa27
	ld a,(hl)		;aa28
	call m,0f1fch		;aa29
	pop hl			;aa2c
	ex (sp),hl		;aa2d
	ret m			;aa2e
	call nz,0f828h		;aa2f
	ld a,h			;aa32
	ld a,03ch		;aa33
	ld e,00eh		;aa35
	ld sp,hl		;aa37
	defb 0fdh,0b8h,0cch ;illegal sequence	;aa38
	call po,0fcf0h		;aa3b
	jp 0df7eh		;aa3e
	sub c			;aa41
	or e			;aa42
	ld l,a			;aa43
	rst 38h			;aa44
	rst 38h			;aa45
	ld a,a			;aa46
	ld a,b			;aa47
	inc a			;aa48
	inc a			;aa49
	ld e,01eh		;aa4a
	ret po			;aa4c
	ret p			;aa4d
	ret p			;aa4e
	ld l,a			;aa4f
	daa			;aa50
	inc de			;aa51
	add a,c			;aa52
	ret p			;aa53
	jr c,$-50		;aa54
	ld l,(hl)		;aa56
	cp b			;aa57
	call m,0f6fch		;aa58
	jp m,0fcf9h		;aa5b
	cp 0d0h			;aa5e
	ld l,b			;aa60
	call p,07af6h		;aa61
	cp c			;aa64
	call c,0d0feh		;aa65
	ret pe			;aa68
	call p,0faf6h		;aa69
	defb 0fdh,0feh,07fh ;illegal sequence	;aa6c
	add hl,sp		;aa6f
	or e			;aa70
	ld d,e			;aa71
	jp po,08044h		;aa72
	sub d			;aa75
	add a,b			;aa76
	ret nz			;aa77
	ex af,af'		;aa78
	ld de,06632h		;aa79
	call c,0c8fah		;aa7c
	sub b			;aa7f
	ret nz			;aa80
	ret p			;aa81
laa82h:
	ret m			;aa82
	call m,sub_bffeh	;aa83
	ld a,a			;aa86
	ld a,a			;aa87
	inc bc			;aa88
	rst 38h			;aa89
	sub l			;aa8a
	ld sp,iy		;aa8b
	rst 20h			;aa8d
	rst 28h			;aa8e
	ld c,a			;aa8f
	add a,a			;aa90
	add a,a			;aa91
	rrca			;aa92
	inc c			;aa93
	ccf			;aa94
	rra			;aa95
	ccf			;aa96
	ccf			;aa97
	call c,0f6ech		;aa98
	or 07bh			;aa9b
	cp c			;aa9d
	defb 0ddh,0feh,004h ;illegal sequence	;aa9e
	rst 38h			;aaa1
	rst 38h			;aaa2
	cp 0fch			;aaa3
	ld sp,hl		;aaa5
	defb 0fdh,0fch,0f9h ;illegal sequence	;aaa6
	ret p			;aaa9
	ret p			;aaaa
	ret m			;aaab
	cp 07fh			;aaac
	rst 38h			;aaae
	ret p			;aaaf
	ret po			;aab0
	jr c,laacbh		;aab1
	call z,07eeeh		;aab3
	inc e			;aab6
	inc a			;aab7
	add hl,de		;aab8
	sub c			;aab9
	sub e			;aaba
	ld l,a			;aabb
	ld a,a			;aabc
	ccf			;aabd
	rra			;aabe
	rlca			;aabf
	inc bc			;aac0
	add a,b			;aac1
laac2h:
	add a,b			;aac2
	jr nc,lab1dh		;aac3
laac5h:
	inc e			;aac5
	adc a,h			;aac6
	scf			;aac7
	xor a			;aac8
	rst 8			;aac9
	rst 38h			;aaca
laacbh:
	ex de,hl		;aacb
	ex (sp),hl		;aacc
	ex (sp),hl		;aacd
	rst 0			;aace
	rst 8			;aacf
	sbc a,a			;aad0
	rst 38h			;aad1
	rst 28h			;aad2
	ld b,(hl)		;aad3
	ld c,00ch		;aad4
	jr lab11h		;aad6
	or e			;aad8
	ld d,e			;aad9
	jp po,08044h		;aada
	add a,b			;aadd
	jp nz,0f0f2h		;aade
	ret m			;aae1
	ret m			;aae2
	call m,0fefch		;aae3
	jp m,0c4c6h		;aae6
	ret z			;aae9
	ret c			;aaea
	ret p			;aaeb
	pop af			;aaec
	rst 30h			;aaed
	adc a,b			;aaee
	adc a,088h		;aaef
	call po,0b272h		;aaf1
	jr laac2h		;aaf4
	xor 0c7h		;aaf6
	add a,l			;aaf8
	set 0,a			;aaf9
	adc a,a			;aafb
	sbc a,(hl)		;aafc
	dec de			;aafd
	scf			;aafe
	ccf			;aaff
	cp a			;ab00
	ld e,a			;ab01
	ld c,h			;ab02
	ld a,h			;ab03
	inc a			;ab04
	ld a,00eh		;ab05
	sbc a,b			;ab07
	ex af,af'		;ab08
	ld c,b			;ab09
	adc a,h			;ab0a
	call nz,0f2c6h		;ab0b
	jp m,09fcfh		;ab0e
lab11h:
	rst 38h			;ab11
	cp 0f5h			;ab12
	rst 28h			;ab14
	jp c,0ce3ch		;ab15
	adc a,b			;ab18
	call po,08272h		;ab19
	ld a,(hl)		;ab1c
lab1dh:
	ld a,0d0h		;ab1d
	rst 30h			;ab1f
	ld sp,hl		;ab20
	call m,0fc85h		;ab21
	cp 0feh			;ab24
	rst 38h			;ab26
	rst 38h			;ab27
	nop			;ab28
	inc b			;ab29
	ld hl,02002h		;ab2a
	ld (bc),a		;ab2d
	jr nc,lab33h		;ab2e
	ld (03005h),a		;ab30
lab33h:
	inc b			;ab33
	ld (03004h),a		;ab34
	add a,c			;ab37
	ld (03007h),a		;ab38
	ld (bc),a		;ab3b
	pop af			;ab3c
	ld b,010h		;ab3d
	dec b			;ab3f
	pop af			;ab40
	inc bc			;ab41
	djnz laac5h		;ab42
	ld sp,03f05h		;ab44
	add a,c			;ab47
	pop af			;ab48
	add hl,bc		;ab49
	ret p			;ab4a
	ld (bc),a		;ab4b
	pop af			;ab4c
	add a,(hl)		;ab4d
	jp p,0f1f1h		;ab4e
	ld hl,03221h		;ab51
	rrca			;ab54
	ld hl,03281h		;ab55
	inc bc			;ab58
	ld sp,0f191h		;ab59
	ld hl,03231h		;ab5c
	ld sp,021f1h		;ab5f
	ld (0f332h),a		;ab62
	di			;ab65
	ld sp,0f131h		;ab66
	ld (de),a		;ab69
	ld (00331h),a		;ab6a
	di			;ab6d
	add a,c			;ab6e
	jp p,0f107h		;ab6f
	add a,d			;ab72
	jp p,003f1h		;ab73
	ld hl,03106h		;ab76
	add hl,bc		;ab79
	ld (03102h),a		;ab7a
	inc de			;ab7d
	di			;ab7e
	add a,e			;ab7f
	pop af			;ab80
	di			;ab81
	di			;ab82
	inc bc			;ab83
	pop af			;ab84
	ld (bc),a		;ab85
	jp p,0f306h		;ab86
	inc bc			;ab89
	pop af			;ab8a
	ld (bc),a		;ab8b
	di			;ab8c
	add a,e			;ab8d
	ld sp,0f2f3h		;ab8e
	dec b			;ab91
	pop af			;ab92
	add a,l			;ab93
	jp p,0f131h		;ab94
	ld hl,00b32h		;ab97
	pop af			;ab9a
	add a,c			;ab9b
	jp p,0f303h		;ab9c
	inc bc			;ab9f
	jp p,03281h		;aba0
	rlca			;aba3
	ld sp,03204h		;aba4
	add a,c			;aba7
	ld hl,0f109h		;aba8
	dec b			;abab
	ld sp,0f303h		;abac
	inc b			;abaf
	ld sp,02104h		;abb0
labb3h:
	rla			;abb3
	ld (03181h),a		;abb4
labb7h:
	dec b			;abb7
	pop af			;abb8
	dec bc			;abb9
	ld hl,0f305h		;abba
	inc de			;abbd
	pop af			;abbe
	ex af,af'		;abbf
	ld (0f109h),a		;abc0
	ld (bc),a		;abc3
	jp p,0f302h		;abc4
	add a,c			;abc7
	jp p,0f103h		;abc8
	ld (bc),a		;abcb
	ld hl,03203h		;abcc
	ld (bc),a		;abcf
	ld sp,0f10ah		;abd0
	ld b,021h		;abd3
	dec d			;abd5
	pop af			;abd6
	inc bc			;abd7
	ld hl,03106h		;abd8
	ld (bc),a		;abdb
	ld (02107h),a		;abdc
	add a,d			;abdf
	ld (00621h),a		;abe0
	ld (03181h),a		;abe3
	djnz $-13		;abe6
	inc bc			;abe8
	ld hl,03105h		;abe9
	ex af,af'		;abec
	pop af			;abed
	add a,c			;abee
	ld hl,03204h		;abef
	ld (bc),a		;abf2
	ld hl,03204h		;abf3
	dec b			;abf6
	ld sp,00500h		;abf7
	rst 38h			;abfa
	add a,e			;abfb
	ld a,a			;abfc
	ccf			;abfd
	ret po			;abfe
	ld b,000h		;abff
	add a,d			;ac01
	add a,b			;ac02
	ret nz			;ac03
	ld b,000h		;ac04
	add a,d			;ac06
	ld bc,00603h		;ac07
	nop			;ac0a
	add a,d			;ac0b
	rrca			;ac0c
	add a,e			;ac0d
	ld b,000h		;ac0e
	add a,d			;ac10
	rlca			;ac11
	ld e,006h		;ac12
	nop			;ac14
	sub d			;ac15
	ret p			;ac16
	ret m			;ac17
	add a,b			;ac18
	add a,b			;ac19
	ret nz			;ac1a
	ret po			;ac1b
	ret p			;ac1c
	ret m			;ac1d
	cp 03bh			;ac1e
	ld bc,00303h		;ac20
	rlca			;ac23
	rrca			;ac24
	rra			;ac25
	ccf			;ac26
	ld a,a			;ac27
	nop			;ac28
	rlca			;ac29
	inc bc			;ac2a
	rlca			;ac2b
	jr nz,lac36h		;ac2c
	djnz lac39h		;ac2e
	jr nc,labb3h		;ac30
	di			;ac32
	rlca			;ac33
	jr nc,labb7h		;ac34
lac36h:
	ld sp,01007h		;ac36
lac39h:
	ex af,af'		;ac39
	ret p			;ac3a
	add a,c			;ac3b
	pop af			;ac3c
	ex af,af'		;ac3d
	jr nc,lac40h		;ac3e
lac40h:
	xor b			;ac40
	ret p			;ac41
	ret m			;ac42
	call m,06cfeh		;ac43
	ld d,009h		;ac46
	nop			;ac48
	nop			;ac49
	add a,b			;ac4a
	ret po			;ac4b
	ret m			;ac4c
	cp 099h			;ac4d
	ret nz			;ac4f
	ld h,b			;ac50
	ret p			;ac51
	call m,0fefeh		;ac52
	jr nz,lac67h		;ac55
	jr c,$+30		;ac57
	ret nz			;ac59
	ret po			;ac5a
	ret p			;ac5b
	ret m			;ac5c
	call m,0c3feh		;ac5d
	ex de,hl		;ac60
	nop			;ac61
	inc bc			;ac62
	rrca			;ac63
	ccf			;ac64
	ld a,a			;ac65
	defb 0edh ;next byte illegal after ed	;ac66
lac67h:
	ret nc			;ac67
	sbc a,b			;ac68
	inc bc			;ac69
	nop			;ac6a
	rst 38h			;ac6b
	ld a,h			;ac6c
	rst 20h			;ac6d
	pop bc			;ac6e
lac6fh:
	sub b			;ac6f
	sbc a,b			;ac70
	ret po			;ac71
	ret m			;ac72
	call m,0c6feh		;ac73
	pop hl			;ac76
	or b			;ac77
	sbc a,b			;ac78
	inc bc			;ac79
	rrca			;ac7a
	ccf			;ac7b
	add a,c			;ac7c
	ld bc,0d4fch		;ac7d
	push hl			;ac80
	rlca			;ac81
	rra			;ac82
	ccf			;ac83
	ld a,a			;ac84
	ld a,a			;ac85
	cp 0ech			;ac86
	exx			;ac88
	rlca			;ac89
	rrca			;ac8a
	rra			;ac8b
	ccf			;ac8c
	ccf			;ac8d
	ld a,a			;ac8e
	rst 38h			;ac8f
	cp 007h			;ac90
	rrca			;ac92
	rra			;ac93
	ccf			;ac94
	ld a,a			;ac95
	rst 38h			;ac96
	ld (hl),b		;ac97
	ld (hl),b		;ac98
	ret po			;ac99
	rrca			;ac9a
	inc bc			;ac9b
	rlca			;ac9c
	ret po			;ac9d
	ret p			;ac9e
	jr c,lac6fh		;ac9f
	rlca			;aca1
	ex (sp),hl		;aca2
	pop hl			;aca3
	pop af			;aca4
	call m,07efch		;aca5
	ld a,a			;aca8
	add a,l			;aca9
	adc a,b			;acaa
	cp d			;acab
	call c,04b90h		;acac
	cp a			;acaf
	ld a,a			;acb0
	pop af			;acb1
	pop hl			;acb2
	jp 07c81h		;acb3
	jr c,$+62		;acb6
	inc a			;acb8
	ld l,h			;acb9
	sbc a,(hl)		;acba
	inc a			;acbb
	ld (hl),b		;acbc
	ret po			;acbd
	sub c			;acbe
	ld (0fd4ch),hl		;acbf
	jp m,0e9e4h		;acc2
	ret nc			;acc5
	ret po			;acc6
	ret pe			;acc7
	ret nc			;acc8
	adc a,b			;acc9
	rst 10h			;acca
	pop hl			;accb
	ret p			;accc
	cp b			;accd
	jr lacdch		;acce
	ld b,0ffh		;acd0
	defb 0fdh,0fah,0feh ;illegal sequence	;acd2
	call z,0fdb8h		;acd5
	ld sp,hl		;acd8
	pop hl			;acd9
	di			;acda
	ret m			;acdb
lacdch:
	sbc a,a			;acdc
	jr c,laceeh		;acdd
	ret po			;acdf
	add a,b			;ace0
	ret p			;ace1
	ret po			;ace2
	ret po			;ace3
	ccf			;ace4
	ld a,a			;ace5
	ld a,a			;ace6
	rst 38h			;ace7
	rst 38h			;ace8
	ret m			;ace9
	ret m			;acea
	add a,l			;aceb
	pop af			;acec
	di			;aced
laceeh:
	rst 20h			;acee
	rst 20h			;acef
lacf0h:
	ld a,a			;acf0
	add hl,bc		;acf1
	rst 38h			;acf2
	jp nz,0ff0fh		;acf3
	call m,0e0f0h		;acf6
	ret nz			;acf9
	ret nz			;acfa
	ld a,a			;acfb
	ret nz			;acfc
	ret po			;acfd
	pop af			;acfe
	ret m			;acff
	call m,0fcf8h		;ad00
	rst 38h			;ad03
	pop hl			;ad04
	di			;ad05
	ld sp,hl		;ad06
	sbc a,a			;ad07
	add hl,sp		;ad08
	rrca			;ad09
	scf			;ad0a
	cpl			;ad0b
	cp a			;ad0c
	sbc a,a			;ad0d
	bit 1,l			;ad0e
	ld h,h			;ad10
	ld (lbd31h),hl		;ad11
	inc bc			;ad14
	cpl			;ad15
	ret po			;ad16
	jp 00ff8h		;ad17
	ccf			;ad1a
	cpl			;ad1b
	ccf			;ad1c
	ld a,(hl)		;ad1d
	call m,080f8h		;ad1e
	ld bc,00703h		;ad21
	ld c,01eh		;ad24
	inc a			;ad26
	ld a,07ch		;ad27
	ret m			;ad29
	jr z,lacf0h		;ad2a
	ret m			;ad2c
	ret p			;ad2d
	ret po			;ad2e
	ret nz			;ad2f
	add a,b			;ad30
	call m,0e0f8h		;ad31
	ccf			;ad34
	rra			;ad35
	inc b			;ad36
	rst 38h			;ad37
	add a,a			;ad38
	cp 0fch			;ad39
	add a,a			;ad3b
	inc bc			;ad3c
	inc bc			;ad3d
	rlca			;ad3e
	adc a,a			;ad3f
	inc bc			;ad40
	rst 38h			;ad41
	ret nz			;ad42
	rlca			;ad43
	ret po			;ad44
	jp 0cf83h		;ad45
	ccf			;ad48
	ld e,038h		;ad49
	ret p			;ad4b
	ret p			;ad4c
	ret po			;ad4d
	ld e,01eh		;ad4e
	inc a			;ad50
	inc a			;ad51
	ld a,b			;ad52
	ld l,(hl)		;ad53
	call z,0f038h		;ad54
	ret nz			;ad57
	ld bc,00703h		;ad58
	rrca			;ad5b
	ld e,0c1h		;ad5c
	add a,c			;ad5e
	ld a,h			;ad5f
	ld a,b			;ad60
	ld a,h			;ad61
	rst 0			;ad62
	ret m			;ad63
	call m,0fefeh		;ad64
	call m,0f8fch		;ad67
	ret m			;ad6a
	cp 0fch			;ad6b
	ret m			;ad6d
	ret p			;ad6e
	ret p			;ad6f
	ret po			;ad70
	ret nz			;ad71
	add a,b			;ad72
	nop			;ad73
	ei			;ad74
	jp p,0cce6h		;ad75
	or b			;ad78
	cp 0fch			;ad79
	sub b			;ad7b
	ret z			;ad7c
	jp m,066dch		;ad7d
	ld (00811h),a		;ad80
	inc bc			;ad83
	nop			;ad84
	adc a,d			;ad85
	ld b,h			;ad86
	jp po,lb152h		;ad87
	add hl,sp		;ad8a
	ld c,a			;ad8b
	rst 28h			;ad8c
	rst 20h			;ad8d
	ld sp,hl		;ad8e
	defb 0fdh,003h,0ffh ;illegal sequence	;ad8f
	ld (bc),a		;ad92
	ccf			;ad93
	sub d			;ad94
	rra			;ad95
	ccf			;ad96
	inc c			;ad97
	rrca			;ad98
	add a,a			;ad99
	add a,a			;ad9a
	cp 0fch			;ad9b
	ld sp,hl		;ad9d
	ei			;ad9e
	cp 0f6h			;ad9f
	call pe,067c8h		;ada1
	ret p			;ada4
	ret m			;ada5
	cp 005h			;ada6
	rst 38h			;ada8
	rst 38h			;ada9
	ld a,a			;adaa
	cp 0f8h			;adab
	ret p			;adad
	ret p			;adae
	ld sp,hl		;adaf
	call m,07e1ch		;adb0
	xor 0cch		;adb3
	jr ladefh		;adb5
	ret po			;adb7
	ret p			;adb8
	rra			;adb9
	ccf			;adba
	ld a,a			;adbb
	ld l,a			;adbc
	sub e			;adbd
	sub c			;adbe
	add hl,de		;adbf
	inc a			;adc0
	adc a,h			;adc1
	inc e			;adc2
	ld e,b			;adc3
	jr nc,$-126		;adc4
	add a,b			;adc6
	inc bc			;adc7
	rlca			;adc8
	rst 0			;adc9
	ex (sp),hl		;adca
	ex (sp),hl		;adcb
	ex de,hl		;adcc
	rst 38h			;adcd
	rst 8			;adce
	xor a			;adcf
	scf			;add0
	jr $+14			;add1
	ld c,046h		;add3
	rst 28h			;add5
	rst 38h			;add6
	sbc a,a			;add7
	rst 8			;add8
	jp nz,08080h		;add9
	ld b,h			;addc
	jp po,lb353h		;addd
	add hl,sp		;ade0
	jp m,0fcfeh		;ade1
	call m,0f8f8h		;ade4
	ret p			;ade7
	jp p,0f078h		;ade8
	ret p			;adeb
	ret po			;adec
	ret nz			;aded
	inc bc			;adee
ladefh:
	ccf			;adef
	rst 38h			;adf0
	xor 0cch		;adf1
	jr $-76			;adf3
	ld (hl),d		;adf5
	call po,0ce88h		;adf6
	scf			;adf9
	dec de			;adfa
	sbc a,(hl)		;adfb
	adc a,a			;adfc
	rst 0			;adfd
	res 0,l			;adfe
	rst 0			;ae00
	ld c,03eh		;ae01
	inc a			;ae03
	ld a,h			;ae04
	ld c,h			;ae05
	ld e,a			;ae06
	cp a			;ae07
	ccf			;ae08
	jp m,0c6f2h		;ae09
	call nz,0488ch		;ae0c
	ex af,af'		;ae0f
	sbc a,b			;ae10
	xor 01fh		;ae11
	ret p			;ae13
	rst 30h			;ae14
	ei			;ae15
	defb 0fdh,0ffh,0ffh ;illegal sequence	;ae16
	cp 0dch			;ae19
	cp c			;ae1b
	ld a,d			;ae1c
	or 0f4h			;ae1d
	ret pe			;ae1f
	ret nc			;ae20
	rst 38h			;ae21
	rst 38h			;ae22
	cp 0feh			;ae23
	call m,0f9fch		;ae25
	rst 30h			;ae28
	nop			;ae29
	inc b			;ae2a
	jr nz,lae31h		;ae2b
	ld hl,03002h		;ae2d
	inc bc			;ae30
lae31h:
	jr nz,lae36h		;ae31
	ld hl,01004h		;ae33
lae36h:
	inc b			;ae36
	pop af			;ae37
	ld b,010h		;ae38
	ld (bc),a		;ae3a
	pop af			;ae3b
	dec b			;ae3c
	jr nc,lae42h		;ae3d
	ld (03004h),a		;ae3f
lae42h:
	inc b			;ae42
	ld (03004h),a		;ae43
	inc b			;ae46
	ld (03003h),a		;ae47
	ld (bc),a		;ae4a
	di			;ae4b
	inc bc			;ae4c
	ld (03005h),a		;ae4d
	inc bc			;ae50
	ld (03007h),a		;ae51
	add a,c			;ae54
	ld (03005h),a		;ae55
	ld (bc),a		;ae58
	ld hl,01f86h		;ae59
	djnz $-13		;ae5c
	ld sp,0f231h		;ae5e
	inc bc			;ae61
	pop af			;ae62
	add a,c			;ae63
	jr nz,$+5		;ae64
	di			;ae66
	add a,c			;ae67
	jp p,0f103h		;ae68
	inc bc			;ae6b
	ld (02102h),a		;ae6c
	inc bc			;ae6f
	pop af			;ae70
	add a,c			;ae71
	jp p,0f303h		;ae72
	add a,l			;ae75
	ld sp,02132h		;ae76
	rra			;ae79
	ld (0210fh),a		;ae7a
	add a,c			;ae7d
	ld (02107h),a		;ae7e
	ld b,032h		;ae81
	ld (bc),a		;ae83
	ld sp,0f388h		;ae84
	jp p,0f1f2h		;ae87
	pop af			;ae8a
	jp p,03131h		;ae8b
	inc bc			;ae8e
	di			;ae8f
	ld (bc),a		;ae90
	ld sp,03203h		;ae91
	ld (bc),a		;ae94
	di			;ae95
	inc bc			;ae96
	jp p,0f10dh		;ae97
	dec b			;ae9a
	di			;ae9b
	add a,l			;ae9c
	ld sp,0f3f3h		;ae9d
	jp p,004f2h		;aea0
	pop af			;aea3
	ld (bc),a		;aea4
	jp p,0f103h		;aea5
	ld (bc),a		;aea8
	di			;aea9
	dec bc			;aeaa
	pop af			;aeab
	adc a,e			;aeac
	jp p,031f3h		;aead
	di			;aeb0
	di			;aeb1
	pop af			;aeb2
	ld sp,03132h		;aeb3
	ld hl,008f1h		;aeb6
	ld sp,03283h		;aeb9
	jp p,005f2h		;aebc
	di			;aebf
	inc bc			;aec0
	ld (0f106h),a		;aec1
	inc bc			;aec4
	di			;aec5
	add a,c			;aec6
	jp p,0f106h		;aec7
	add a,e			;aeca
	ld hl,0f2f2h		;aecb
	inc bc			;aece
	pop af			;aecf
	dec b			;aed0
	di			;aed1
	dec b			;aed2
	ld sp,02105h		;aed3
	dec b			;aed6
	ld sp,0f302h		;aed7
	ld (bc),a		;aeda
	ld (02181h),a		;aedb
	inc bc			;aede
	pop af			;aedf
	rrca			;aee0
	di			;aee1
	dec b			;aee2
	ld (0210dh),a		;aee3
	dec d			;aee6
	pop af			;aee7
	ex af,af'		;aee8
	ld (0f10ah),a		;aee9
	adc a,b			;aeec
	jp p,0f3f3h		;aeed
	jp p,0f1f2h		;aef0
	ld sp,00331h		;aef3
	ld (02102h),a		;aef6
	add hl,bc		;aef9
	pop af			;aefa
	ld b,021h		;aefb
	ld (de),a		;aefd
	pop af			;aefe
	inc bc			;aeff
	ld hl,0f105h		;af00
	ld (bc),a		;af03
	ld (03109h),a		;af04
	ld (bc),a		;af07
	ld hl,0f103h		;af08
	add a,c			;af0b
	ld sp,03206h		;af0c
	add a,c			;af0f
	ld hl,0f110h		;af10
	dec b			;af13
	ld sp,02105h		;af14
	ld b,0f1h		;af17
	ld a,(bc)		;af19
	ld (03103h),a		;af1a
	inc bc			;af1d
	ld (09800h),a		;af1e
	ret po			;af21
	cp a			;af22
	sbc a,c			;af23
	call z,073c4h		;af24
	jr laf5ah		;af27
	add hl,de		;af29
	adc a,c			;af2a
	ret			;af2b
	ret			;af2c
	call 0f7eeh		;af2d
	ei			;af30
	halt			;af31
	call m,037d9h		;af32
	ld a,a			;af35
	rst 30h			;af36
	ld (hl),e		;af37
	inc sp			;af38
	inc b			;af39
	nop			;af3a
	inc b			;af3b
	ld bc,00208h		;af3c
	inc b			;af3f
	ld bc,00008h		;af40
	inc b			;af43
	add a,b			;af44
	ex af,af'		;af45
	ld b,b			;af46
	inc b			;af47
	add a,b			;af48
	ld b,000h		;af49
	ld (bc),a		;af4b
	ld bc,00302h		;af4c
	ld (bc),a		;af4f
	rlca			;af50
	add a,(hl)		;af51
	rra			;af52
	rlca			;af53
	inc bc			;af54
	inc bc			;af55
	ld bc,00401h		;af56
	nop			;af59
laf5ah:
	inc bc			;af5a
	add a,b			;af5b
	ld (bc),a		;af5c
	ret nz			;af5d
	ld (bc),a		;af5e
	ret po			;af5f
	add a,c			;af60
	ret nz			;af61
	inc b			;af62
	add a,b			;af63
	ld (bc),a		;af64
	nop			;af65
	add a,e			;af66
	ret p			;af67
	ret po			;af68
	ret nz			;af69
	inc bc			;af6a
	add a,b			;af6b
	ld (bc),a		;af6c
	nop			;af6d
	and a			;af6e
	rrca			;af6f
	ret p			;af70
	add a,b			;af71
	jr c,$+9		;af72
	ld bc,00000h		;af74
	adc a,b			;af77
	ld b,h			;af78
	call c,0f00ch		;af79
	ret po			;af7c
	nop			;af7d
	nop			;af7e
	ld bc,00201h		;af7f
	rlca			;af82
	rlca			;af83
	inc bc			;af84
	ld bc,00000h		;af85
	ret nz			;af88
	ret po			;af89
	ld (hl),b		;af8a
	or b			;af8b
	or b			;af8c
	ld b,h			;af8d
	inc hl			;af8e
	nop			;af8f
	ld bc,00001h		;af90
	inc bc			;af93
	inc bc			;af94
	ld bc,00003h		;af95
	add a,003h		;af98
	rlca			;af9a
	rla			;af9b
	scf			;af9c
	dec sp			;af9d
	add hl,sp		;af9e
	nop			;af9f
	nop			;afa0
	dec c			;afa1
	dec de			;afa2
	scf			;afa3
	ld (hl),a		;afa4
	ld a,e			;afa5
	ld a,l			;afa6
	add hl,de		;afa7
	adc a,c			;afa8
	rst 8			;afa9
	ret p			;afaa
lafabh:
	ret nz			;afab
	add a,b			;afac
	adc a,a			;afad
	rst 38h			;afae
	call z,02824h		;afaf
	rra			;afb2
	rlca			;afb3
	inc bc			;afb4
	inc bc			;afb5
	cp 07fh			;afb6
	ccf			;afb8
	ccf			;afb9
	ret po			;afba
	ret m			;afbb
	adc a,a			;afbc
	rst 20h			;afbd
	inc sp			;afbe
	ret p			;afbf
	inc bc			;afc0
	inc bc			;afc1
	rlca			;afc2
	rra			;afc3
	call pe,02190h		;afc4
	add hl,de		;afc7
	adc a,c			;afc8
	ret			;afc9
	ret			;afca
	call m,0e0f0h		;afcb
	ret po			;afce
	inc hl			;afcf
	inc h			;afd0
	jr z,lb004h		;afd1
	ccf			;afd3
	rrca			;afd4
	ret m			;afd5
	ret m			;afd6
	or c			;afd7
	and c			;afd8
	and c			;afd9
	ld hl,04743h		;afda
	rst 0			;afdd
	adc a,c			;afde
	inc bc			;afdf
	rra			;afe0
	defb 0edh ;next byte illegal after ed	;afe1
	call m,0780fh		;afe2
	ex (sp),hl		;afe5
	inc sp			;afe6
	inc hl			;afe7
	ld b,h			;afe8
	adc a,b			;afe9
	sbc a,c			;afea
	inc sp			;afeb
	ld h,024h		;afec
	call pe,08443h		;afee
	adc a,b			;aff1
	sbc a,c			;aff2
	inc sp			;aff3
	ld h,024h		;aff4
	call pe,0771fh		;aff6
	call z,0de18h		;aff9
	ld a,c			;affc
	inc sp			;affd
	rra			;affe
	add a,a			;afff
	ld b,c			;b000
	jp 07e00h		;b001
lb004h:
	rst 38h			;b004
	ld h,e			;b005
	ld sp,0ce63h		;b006
	rst 30h			;b009
	add a,h			;b00a
	add a,e			;b00b
	ld b,c			;b00c
	jr nc,lafabh		;b00d
	jp 02081h		;b00f
	ld c,(hl)		;b012
	ld e,a			;b013
	call m,07f81h		;b014
	ld a,a			;b017
	jp 05e81h		;b018
	ld a,(hl)		;b01b
	ld a,(hl)		;b01c
	ld a,a			;b01d
	inc sp			;b01e
	inc d			;b01f
	inc h			;b020
	jp p,018dfh		;b021
	call z,07bf7h		;b024
	rra			;b027
	ret p			;b028
	ret m			;b029
	ret nz			;b02a
	ret po			;b02b
	nop			;b02c
	call m,0ca0eh		;b02d
	jp (hl)			;b030
	ld h,h			;b031
	ld h,h			;b032
	inc (hl)		;b033
	ld (de),a		;b034
	nop			;b035
	ld b,018h		;b036
	nop			;b038
	jr lb04bh		;b039
	or h			;b03b
	and h			;b03c
	jp (hl)			;b03d
	jp z,03bf6h		;b03e
	dec e			;b041
	adc a,011h		;b042
	ld c,c			;b044
	daa			;b045
	inc de			;b046
	ret m			;b047
	ret m			;b048
	ret p			;b049
	ret nz			;b04a
lb04bh:
	call nz,01873h		;b04b
	ld sp,09203h		;b04e
	adc a,l			;b051
	inc sp			;b052
	inc hl			;b053
	ld h,e			;b054
	rst 0			;b055
	adc a,c			;b056
	sbc a,c			;b057
	call z,03367h		;b058
	dec e			;b05b
	adc a,(hl)		;b05c
	ld h,a			;b05d
	ld a,c			;b05e
	inc bc			;b05f
	ex af,af'		;b060
	and d			;b061
	sub b			;b062
	ret po			;b063
	ld a,a			;b064
	rrca			;b065
	ld bc,003f0h		;b066
	rrca			;b069
	inc e			;b06a
	dec sp			;b06b
	ld (hl),a		;b06c
	ld l,a			;b06d
	adc a,0cch		;b06e
	adc a,018h		;b070
	adc a,a			;b072
	ret nz			;b073
	ret p			;b074
	rra			;b075
	cp 0f0h			;b076
	ret p			;b078
	cp 0f0h			;b079
	ret p			;b07b
	inc bc			;b07c
	rra			;b07d
	ret p			;b07e
	ld bc,01e07h		;b07f
	ld sp,hl		;b082
	ld h,b			;b083
	inc bc			;b084
	ret p			;b085
	adc a,l			;b086
	nop			;b087
	rrca			;b088
	ld a,a			;b089
	rrca			;b08a
	rrca			;b08b
	ret nz			;b08c
	ret m			;b08d
	rrca			;b08e
	add a,b			;b08f
	ret po			;b090
	ld a,b			;b091
	rst 38h			;b092
	ld b,003h		;b093
	rrca			;b095
	sbc a,h			;b096
	pop af			;b097
	ret p			;b098
	cp 0f0h			;b099
	rlca			;b09b
	rra			;b09c
	inc bc			;b09d
	call z,04430h		;b09e
	jr $-98			;b0a1
	inc b			;b0a3
	add a,b			;b0a4
	add a,c			;b0a5
	add a,(hl)		;b0a6
	halt			;b0a7
	adc a,b			;b0a8
	ret z			;b0a9
	ret pe			;b0aa
	ld l,b			;b0ab
	ld h,h			;b0ac
	inc (hl)		;b0ad
	or h			;b0ae
	or h			;b0af
	ld h,h			;b0b0
	ld b,h			;b0b1
	ret z			;b0b2
	inc bc			;b0b3
	adc a,b			;b0b4
	adc a,c			;b0b5
	halt			;b0b6
	ret p			;b0b7
	rra			;b0b8
	inc bc			;b0b9
	rrca			;b0ba
	rrca			;b0bb
	cp 0f0h			;b0bc
	ret p			;b0be
	inc bc			;b0bf
	djnz $-89		;b0c0
	add hl,bc		;b0c2
	rlca			;b0c3
	nop			;b0c4
	call m,0f0f8h		;b0c5
	rlca			;b0c8
	rra			;b0c9
	ld a,07dh		;b0ca
	adc a,h			;b0cc
	rst 20h			;b0cd
	adc a,0beh		;b0ce
	rst 18h			;b0d0
	rst 28h			;b0d1
	ld (hl),c		;b0d2
	cp h			;b0d3
	ld hl,0f3e7h		;b0d4
	rrca			;b0d7
	ret m			;b0d8
	ret nz			;b0d9
	ret p			;b0da
	ret p			;b0db
	ld a,a			;b0dc
	rrca			;b0dd
	nop			;b0de
	ld h,a			;b0df
	jp 0e607h		;b0e0
	sbc a,b			;b0e3
	jr nz,lb0edh		;b0e4
	ccf			;b0e6
	ex af,af'		;b0e7
	ret m			;b0e8
	ex af,af'		;b0e9
	rra			;b0ea
	and b			;b0eb
	ret z			;b0ec
lb0edh:
	pop de			;b0ed
	jp m,0071fh		;b0ee
	jp 01931h		;b0f1
	inc d			;b0f4
	inc h			;b0f5
	jp p,018dfh		;b0f6
	call z,03b77h		;b0f9
	ld a,a			;b0fc
	ld h,b			;b0fd
	rra			;b0fe
	ld bc,01e1eh		;b0ff
	sbc a,b			;b102
	call z,06038h		;b103
	ld h,b			;b106
	ld b,b			;b107
	ret nz			;b108
	ret nz			;b109
	add a,d			;b10a
	add a,(hl)		;b10b
	ld b,000h		;b10c
	add a,d			;b10e
	ld bc,00503h		;b10f
	nop			;b112
	adc a,c			;b113
	ld a,b			;b114
	call m,0cc86h		;b115
	call pe,00b2ch		;b118
	ex af,af'		;b11b
	djnz lb127h		;b11c
	nop			;b11e
	sub c			;b11f
	ld bc,08000h		;b120
	ret nz			;b123
	ret nz			;b124
	ret po			;b125
	ret po			;b126
lb127h:
	ret p			;b127
	ret p			;b128
	nop			;b129
	nop			;b12a
	ex af,af'		;b12b
	inc a			;b12c
	nop			;b12d
	rra			;b12e
	ret m			;b12f
	rra			;b130
	inc b			;b131
	nop			;b132
	add a,h			;b133
	rlca			;b134
	ccf			;b135
	ret m			;b136
	ret nz			;b137
	dec b			;b138
	nop			;b139
	add a,e			;b13a
	ret po			;b13b
	set 1,(hl)		;b13c
	inc bc			;b13e
	nop			;b13f
	rst 38h			;b140
	jr nc,lb15bh		;b141
	adc a,h			;b143
	adc a,(hl)		;b144
	ld a,b			;b145
	ret p			;b146
	ret po			;b147
	ret po			;b148
	ret nz			;b149
	ret nz			;b14a
	add a,b			;b14b
	add a,b			;b14c
	nop			;b14d
	inc bc			;b14e
	rlca			;b14f
	rrca			;b150
	rra			;b151
lb152h:
	ccf			;b152
	ld a,a			;b153
	ld a,(hl)		;b154
	cp 007h			;b155
	ccf			;b157
	ret m			;b158
	ret po			;b159
	add a,b			;b15a
lb15bh:
	rlca			;b15b
	rra			;b15c
	ccf			;b15d
	nop			;b15e
	inc bc			;b15f
	rra			;b160
	call m,003e0h		;b161
	ld e,0fch		;b164
	ret po			;b166
	ld bc,01f07h		;b167
	ld (bc),a		;b16a
	inc c			;b16b
	inc (hl)		;b16c
	adc a,099h		;b16d
	ret po			;b16f
	ret m			;b170
	ret nz			;b171
	ret p			;b172
	rst 20h			;b173
	rst 8			;b174
	call c,07767h		;b175
	ld (hl),a		;b178
	jr lb18bh		;b179
	jr nc,lb1ddh		;b17b
	ret nz			;b17d
	rst 0			;b17e
	rst 38h			;b17f
	nop			;b180
	nop			;b181
	ret nz			;b182
	sbc a,a			;b183
	rst 8			;b184
	rst 28h			;b185
	jp c,031dfh		;b186
	rra			;b189
	nop			;b18a
lb18bh:
	add a,b			;b18b
	ret po			;b18c
	rst 38h			;b18d
	rst 0			;b18e
	ld h,d			;b18f
	ld h,036h		;b190
	inc hl			;b192
	add a,e			;b193
	ret			;b194
	call pe,0c08eh		;b195
	pop af			;b198
	rst 8			;b199
	daa			;b19a
	inc de			;b19b
	ld de,08f38h		;b19c
	pop bc			;b19f
	ret p			;b1a0
	rst 8			;b1a1
	daa			;b1a2
	inc de			;b1a3
	ld de,00438h		;b1a4
	dec c			;b1a7
	add hl,sp		;b1a8
	jp po,01cc6h		;b1a9
	ret m			;b1ac
	ret nz			;b1ad
	jr nz,lb220h		;b1ae
	sbc a,b			;b1b0
	ret z			;b1b1
	ld h,h			;b1b2
	inc h			;b1b3
	ld (de),a		;b1b4
	ld de,01c06h		;b1b5
	ld a,c			;b1b8
	rlca			;b1b9
	pop hl			;b1ba
	add a,(hl)		;b1bb
	sbc a,b			;b1bc
	ld e,001h		;b1bd
	rrca			;b1bf
	and (hl)		;b1c0
	ld a,(hl)		;b1c1
	inc bc			;b1c2
	ret po			;b1c3
	add a,a			;b1c4
	sbc a,b			;b1c5
	rra			;b1c6
	ret p			;b1c7
	call m,0e30eh		;b1c8
	ret m			;b1cb
	inc e			;b1cc
	rlca			;b1cd
	ret nz			;b1ce
	ld (bc),a		;b1cf
	ld (hl),b		;b1d0
	ret m			;b1d1
	adc a,h			;b1d2
	inc b			;b1d3
	call p,01cf8h		;b1d4
	ret po			;b1d7
	ld (hl),e		;b1d8
	or (hl)			;b1d9
	ret c			;b1da
	jr lb1e9h		;b1db
lb1ddh:
	rlca			;b1dd
	nop			;b1de
	rlca			;b1df
	ld e,078h		;b1e0
	inc bc			;b1e2
	ret po			;b1e3
	add a,a			;b1e4
	sbc a,b			;b1e5
	rra			;b1e6
	nop			;b1e7
	inc b			;b1e8
lb1e9h:
	pop af			;b1e9
	add a,d			;b1ea
	or 091h			;b1eb
	inc bc			;b1ed
	call p,0f982h		;b1ee
	or 006h			;b1f1
	pop af			;b1f3
	add a,c			;b1f4
	or 005h			;b1f5
	pop af			;b1f7
	add a,c			;b1f8
	call p,03045h		;b1f9
	ld c,010h		;b1fc
	dec b			;b1fe
	jr nc,$+5		;b1ff
	pop af			;b201
	dec b			;b202
	djnz $+4		;b203
	pop af			;b205
	ld b,010h		;b206
	inc b			;b208
	sub b			;b209
	dec b			;b20a
	ld b,b			;b20b
	inc b			;b20c
	ld h,b			;b20d
	add a,e			;b20e
	djnz lb242h		;b20f
	ld sp,09005h		;b211
	dec b			;b214
	ld b,b			;b215
	add a,c			;b216
	ld h,b			;b217
	inc bc			;b218
	sub b			;b219
	inc b			;b21a
	ld b,b			;b21b
	sbc a,a			;b21c
	ld h,b			;b21d
	sub b			;b21e
	ld b,b			;b21f
lb220h:
	ld b,c			;b220
	ld b,c			;b221
	sub c			;b222
	call p,0f1f6h		;b223
	cp 0feh			;b226
	ret m			;b228
	ret c			;b229
	ret c			;b22a
	sub c			;b22b
	or 0f1h			;b22c
	cp 0f8h			;b22e
	defb 0fdh,09dh ;sbc a,iyl	;b230
	push de			;b232
	exx			;b233
	sub 051h		;b234
	push af			;b236
	push af			;b237
	or 0f9h			;b238
	call p,004d5h		;b23a
	push af			;b23d
	and a			;b23e
	or 0f9h			;b23f
	ld h,h			;b241
lb242h:
	call p,0f6f9h		;b242
	pop af			;b245
	cp 0feh			;b246
	ret m			;b248
	ld sp,iy		;b249
	or 0f1h			;b24b
	pop af			;b24d
	cp 0f8h			;b24e
	exx			;b250
	sub 0f4h		;b251
	ld sp,hl		;b253
	ld sp,hl		;b254
lb255h:
	or 0f6h			;b255
	pop af			;b257
	or 0f1h			;b258
	exx			;b25a
	ld d,(hl)		;b25b
	ld d,c			;b25c
	push af			;b25d
	or 091h			;b25e
	ld sp,hl		;b260
	call p,0f6f9h		;b261
	pop af			;b264
	or 004h			;b265
	pop af			;b267
	sub l			;b268
	call p,0f6f9h		;b269
	or 0f1h			;b26c
	or 0f1h			;b26e
	pop af			;b270
	jr nc,lb2a5h		;b271
	ld sp,0f331h		;b273
	call p,0f9f4h		;b276
	ld sp,hl		;b279
	pop af			;b27a
	sub h			;b27b
	sub h			;b27c
	sub c			;b27d
	inc b			;b27e
	ld sp,hl		;b27f
	ld (bc),a		;b280
	ld b,c			;b281
	add a,a			;b282
	ld h,h			;b283
	call p,0f4f9h		;b284
	ld sp,hl		;b287
	cp 0f8h			;b288
	inc bc			;b28a
	ret c			;b28b
	sbc a,d			;b28c
	push de			;b28d
	push af			;b28e
	or 0f1h			;b28f
	cp 0f8h			;b291
	ret c			;b293
	push de			;b294
	ld e,a			;b295
	pop af			;b296
	call p,0f1f6h		;b297
	pop af			;b29a
	jp p,03221h		;b29b
	ld (03130h),a		;b29e
	jp p,091f1h		;b2a1
	ld h,c			;b2a4
lb2a5h:
	ld h,c			;b2a5
	jp p,02108h		;b2a6
	inc bc			;b2a9
	ld h,c			;b2aa
	add a,c			;b2ab
	pop af			;b2ac
	add hl,bc		;b2ad
	ld hl,0f104h		;b2ae
	add a,c			;b2b1
	ld d,c			;b2b2
	inc bc			;b2b3
	ld e,a			;b2b4
	add a,d			;b2b5
	or 091h			;b2b6
	inc b			;b2b8
	call p,0f903h		;b2b9
	ld (bc),a		;b2bc
	or 082h			;b2bd
	pop af			;b2bf
	ld sp,03203h		;b2c0
	ld (bc),a		;b2c3
	ld sp,03281h		;b2c4
	inc bc			;b2c7
	ld sp,03283h		;b2c8
	ld sp,00431h		;b2cb
	djnz lb255h		;b2ce
	sub c			;b2d0
	ld h,c			;b2d1
	sub c			;b2d2
	ld h,c			;b2d3
	ld h,c			;b2d4
	inc bc			;b2d5
	sub c			;b2d6
	add a,c			;b2d7
	ld h,c			;b2d8
	inc bc			;b2d9
	or 002h			;b2da
	pop af			;b2dc
	adc a,b			;b2dd
	djnz lb311h		;b2de
	di			;b2e0
	di			;b2e1
	pop af			;b2e2
	ld (de),a		;b2e3
	ld (00432h),a		;b2e4
	jr nc,$-125		;b2e7
	ld (0f307h),a		;b2e9
	add a,h			;b2ec
	pop af			;b2ed
	ld (de),a		;b2ee
	ld (00532h),a		;b2ef
	jr nc,lb2f9h		;b2f2
	di			;b2f4
	add a,e			;b2f5
	ld (02121h),a		;b2f6
lb2f9h:
	inc bc			;b2f9
	pop af			;b2fa
	inc b			;b2fb
	ld hl,0f282h		;b2fc
	ld hl,0f104h		;b2ff
	add a,d			;b302
	ld hl,00a31h		;b303
	ld (0318ah),a		;b306
	ld hl,030f1h		;b309
	ld (02132h),a		;b30c
	rra			;b30f
	di			;b310
lb311h:
	di			;b311
	inc bc			;b312
	ld sp,03281h		;b313
	inc bc			;b316
	ld sp,01003h		;b317
	add a,l			;b31a
	sub c			;b31b
	ld h,c			;b31c
	sub c			;b31d
	sub c			;b31e
	ld h,h			;b31f
	inc b			;b320
	ld b,c			;b321
	adc a,e			;b322
	sub c			;b323
	ld b,c			;b324
	ld b,c			;b325
	sub h			;b326
	ld b,c			;b327
	sub c			;b328
	jr nc,lb35dh		;b329
	ld (01f21h),a		;b32b
	ld b,0f3h		;b32e
	ld (bc),a		;b330
	ld sp,03281h		;b331
	inc b			;b334
	jp p,0f384h		;b335
	jp p,0f1f2h		;b338
	inc bc			;b33b
	jp p,0f386h		;b33c
	jp p,0f1f2h		;b33f
	jp p,004f2h		;b342
	pop af			;b345
	add a,e			;b346
	or 0f1h			;b347
	or 005h			;b349
	pop af			;b34b
	adc a,a			;b34c
	jp p,03221h		;b34d
	ld (09130h),a		;b350
lb353h:
	pop af			;b353
	ld sp,hl		;b354
	ld h,h			;b355
	sub c			;b356
	rst 38h			;b357
	ld b,c			;b358
	sub c			;b359
	sub b			;b35a
	sub b			;b35b
	inc d			;b35c
lb35dh:
	ld b,b			;b35d
	inc bc			;b35e
	sub b			;b35f
	ld (bc),a		;b360
	ld h,b			;b361
	add a,c			;b362
	sub b			;b363
	dec bc			;b364
	ld b,b			;b365
	inc b			;b366
	ret nc			;b367
	add a,e			;b368
	add a,b			;b369
	ret po			;b36a
	ret po			;b36b
	ld b,080h		;b36c
	inc bc			;b36e
	defb 0fdh,081h,0d8h ;illegal sequence	;b36f
	ld b,0d0h		;b372
	ld (bc),a		;b374
	ret c			;b375
	rlca			;b376
	ret nc			;b377
	add a,c			;b378
	defb 0fdh,004h,0d0h ;illegal sequence	;b379
	adc a,b			;b37c
	add a,b			;b37d
	ret po			;b37e
	add a,b			;b37f
	defb 0fdh,0e0h,080h ;illegal sequence	;b380
	ret nc			;b383
	ret nc			;b384
	inc b			;b385
	ld d,b			;b386
	add a,e			;b387
	ret nc			;b388
	add a,b			;b389
	add a,b			;b38a
	inc bc			;b38b
	ret po			;b38c
	rlca			;b38d
	ret pe			;b38e
	inc bc			;b38f
	ret c			;b390
	inc bc			;b391
	ret nc			;b392
	ld (bc),a		;b393
	ret c			;b394
	inc b			;b395
	ret pe			;b396
	inc bc			;b397
	ret c			;b398
	inc b			;b399
	add a,(iy-00bh)		;b39a
	defb 0fdh,0d8h,0d8h ;illegal sequence	;b39d
	add a,l			;b3a0
	add a,l			;b3a1
	inc bc			;b3a2
	push hl			;b3a3
	add a,h			;b3a4
	add a,l			;b3a5
	adc a,a			;b3a6
	defb 0fdh,0fdh,004h ;illegal sequence	;b3a7
	push af			;b3aa
	ld (bc),a		;b3ab
	ret c			;b3ac
	ld (bc),a		;b3ad
	ld e,(hl)		;b3ae
	add a,c			;b3af
	add a,l			;b3b0
	inc bc			;b3b1
	push hl			;b3b2
	add a,d			;b3b3
	add a,l			;b3b4
	ret m			;b3b5
	inc bc			;b3b6
	defb 0fdh,003h,0f5h ;illegal sequence	;b3b7
	sbc a,b			;b3ba
	defb 0fdh,0f8h,0feh ;illegal sequence	;b3bb
	push hl			;b3be
	add a,l			;b3bf
	push hl			;b3c0
	push hl			;b3c1
	ld sp,hl		;b3c2
	call p,0fdf9h		;b3c3
	ret m			;b3c6
	cp 0f8h			;b3c7
	ld sp,iy		;b3c9
	call p,0fdf9h		;b3cb
	ret m			;b3ce
	cp 0f8h			;b3cf
	defb 0fdh,040h,003h ;illegal sequence	;b3d1
	sub b			;b3d4
	add a,(hl)		;b3d5
	ld h,b			;b3d6
	sub b			;b3d7
	ld b,b			;b3d8
	sub b			;b3d9
	djnz lb43ch		;b3da
	inc bc			;b3dc
	sub b			;b3dd
	inc bc			;b3de
	ld h,b			;b3df
	ld (bc),a		;b3e0
	ld b,b			;b3e1
	sub d			;b3e2
	sub c			;b3e3
	ld b,c			;b3e4
	ld sp,hl		;b3e5
	call p,061f9h		;b3e6
	ld b,b			;b3e9
	ld b,b			;b3ea
	sub c			;b3eb
	ld b,c			;b3ec
	ld sp,hl		;b3ed
	call p,061f9h		;b3ee
	ld b,b			;b3f1
	sub b			;b3f2
	sub b			;b3f3
	ld b,b			;b3f4
	inc bc			;b3f5
	sub b			;b3f6
	inc bc			;b3f7
	ld b,b			;b3f8
	inc bc			;b3f9
	sub b			;b3fa
	add a,c			;b3fb
	ld b,b			;b3fc
	inc b			;b3fd
	sub b			;b3fe
	inc bc			;b3ff
	ld h,b			;b400
	add a,c			;b401
	sub b			;b402
	inc b			;b403
	ld b,b			;b404
	add a,(hl)		;b405
	sub c			;b406
	ld b,c			;b407
	ld sp,hl		;b408
	call p,061f9h		;b409
	nop			;b40c
	add a,d			;b40d
	jr lb44ch		;b40e
	inc b			;b410
	add a,c			;b411
	add a,h			;b412
	inc a			;b413
	jr $+26			;b414
	inc a			;b416
	inc b			;b417
	add a,c			;b418
	add a,h			;b419
	inc a			;b41a
	jr lb435h		;b41b
	inc a			;b41d
	inc bc			;b41e
	ld a,(hl)		;b41f
	add a,l			;b420
	inc a			;b421
	jr lb424h		;b422
lb424h:
	jr lb462h		;b424
	inc bc			;b426
	ld a,(hl)		;b427
	add a,l			;b428
	inc a			;b429
	jr lb42ch		;b42a
lb42ch:
	nop			;b42c
	jr c,$+5		;b42d
	ld a,h			;b42f
	add a,c			;b430
	jr c,$+5		;b431
	nop			;b433
	add a,c			;b434
lb435h:
	jr c,$+5		;b435
	ld a,h			;b437
	add a,c			;b438
	jr c,lb43fh		;b439
	nop			;b43b
lb43ch:
	inc bc			;b43c
	inc a			;b43d
	dec b			;b43e
lb43fh:
	nop			;b43f
	inc bc			;b440
	inc a			;b441
	inc bc			;b442
	nop			;b443
	nop			;b444
	sub (hl)		;b445
	ret nc			;b446
	add a,b			;b447
	ret c			;b448
	adc a,(hl)		;b449
	adc a,(hl)		;b44a
	ret c			;b44b
lb44ch:
	add a,b			;b44c
	ret nc			;b44d
	ret nc			;b44e
	add a,b			;b44f
	ret c			;b450
	adc a,(hl)		;b451
	adc a,(hl)		;b452
	ret c			;b453
	add a,b			;b454
	ret nc			;b455
	ret nc			;b456
	add a,b			;b457
	add a,b			;b458
	ret po			;b459
	add a,b			;b45a
	add a,b			;b45b
	inc bc			;b45c
	ret nc			;b45d
	ld (bc),a		;b45e
	add a,b			;b45f
	add a,e			;b460
	ret po			;b461
lb462h:
	add a,b			;b462
	add a,b			;b463
	inc b			;b464
	ret nc			;b465
	add a,e			;b466
	add a,b			;b467
	ret po			;b468
	add a,b			;b469
	dec b			;b46a
	ret nc			;b46b
	add a,e			;b46c
	add a,b			;b46d
	ret po			;b46e
	add a,b			;b46f
	dec b			;b470
	ret nc			;b471
	add a,d			;b472
	add a,b			;b473
	ret po			;b474
	rlca			;b475
	add a,b			;b476
	add a,c			;b477
	ret po			;b478
	inc b			;b479
lb47ah:
	add a,b			;b47a
	nop			;b47b
	ld (bc),a		;b47c
	dec a			;b47d
	call nz,0160dh		;b47e
	dec sp			;b481
lb482h:
	ld (hl),e		;b482
	ret po			;b483
	ret nz			;b484
	call c,0d8dch		;b485
	jr c,lb47ah		;b488
	ret po			;b48a
	nop			;b48b
	nop			;b48c
	ccf			;b48d
	ccf			;b48e
	inc de			;b48f
	dec c			;b490
	ld a,(de)		;b491
	ld l,02ch		;b492
	jr lb482h		;b494
	call c,0e8dch		;b496
	ret p			;b499
	ret po			;b49a
	nop			;b49b
	nop			;b49c
	scf			;b49d
	dec sp			;b49e
	dec sp			;b49f
	rla			;b4a0
	rrca			;b4a1
	rlca			;b4a2
	nop			;b4a3
	nop			;b4a4
	call m,0c8fch		;b4a5
	or b			;b4a8
	ld e,b			;b4a9
	ld (hl),h		;b4aa
	inc (hl)		;b4ab
	jr lb4e9h		;b4ac
	dec sp			;b4ae
	dec de			;b4af
	inc e			;b4b0
	rrca			;b4b1
	rlca			;b4b2
	nop			;b4b3
	nop			;b4b4
	cp h			;b4b5
	cp h			;b4b6
	or b			;b4b7
	ld l,b			;b4b8
	call c,007ceh		;b4b9
	inc bc			;b4bc
	nop			;b4bd
	cpl			;b4be
	cpl			;b4bf
	rla			;b4c0
	ld h,000h		;b4c1
	inc bc			;b4c3
	cpl			;b4c4
	ld (bc),a		;b4c5
	call p,0e885h		;b4c6
	ld h,h			;b4c9
	nop			;b4ca
	call p,000f4h		;b4cb
	add a,h			;b4ce
	ret nc			;b4cf
	ret nz			;b4d0
	add a,b			;b4d1
	ret nz			;b4d2
	inc bc			;b4d3
	add a,b			;b4d4
	add a,l			;b4d5
	ret po			;b4d6
	ret nc			;b4d7
	ret nz			;b4d8
	add a,b			;b4d9
	ret nz			;b4da
	inc b			;b4db
	ret po			;b4dc
	add a,e			;b4dd
	ret nc			;b4de
	ret po			;b4df
	add a,b			;b4e0
	inc bc			;b4e1
	ret nz			;b4e2
	add a,(hl)		;b4e3
	add a,b			;b4e4
	ret po			;b4e5
	ret nc			;b4e6
	ret nz			;b4e7
	ret po			;b4e8
lb4e9h:
	add a,b			;b4e9
	inc b			;b4ea
	ret po			;b4eb
	add a,h			;b4ec
	ret nc			;b4ed
	ret nz			;b4ee
	ret po			;b4ef
	add a,b			;b4f0
	inc b			;b4f1
	ret po			;b4f2
	add a,e			;b4f3
	ret nc			;b4f4
	add a,b			;b4f5
	add a,b			;b4f6
	inc bc			;b4f7
	ret nz			;b4f8
	add a,(hl)		;b4f9
	add a,b			;b4fa
	ret po			;b4fb
	ret nc			;b4fc
	ret nz			;b4fd
	add a,b			;b4fe
	add a,b			;b4ff
	inc b			;b500
	ret po			;b501
	add a,h			;b502
	ret nc			;b503
	ret nz			;b504
	add a,b			;b505
	ret nz			;b506
	inc bc			;b507
	add a,b			;b508
	ld (bc),a		;b509
	ret po			;b50a
	adc a,a			;b50b
	ld sp,03100h		;b50c
	ld h,b			;b50f
	ld h,b			;b510
	ld sp,0008dh		;b511
	ld hl,02100h		;b514
	ld h,b			;b517
	ld h,b			;b518
	ld hl,0008dh		;b519
	ex af,af'		;b51c
	ret pe			;b51d
	add a,l			;b51e
	ret m			;b51f
	inc bc			;b520
	rrca			;b521
	cp 0feh			;b522
	dec b			;b524
	inc bc			;b525
	add a,(hl)		;b526
	inc b			;b527
	cp 003h			;b528
	ld bc,000ffh		;b52a
	nop			;b52d
	sbc a,b			;b52e
	ret pe			;b52f
	adc a,l			;b530
	push de			;b531
	rst 38h			;b532
	call po,09649h		;b533
	rst 38h			;b536
	push de			;b537
	push af			;b538
	push af			;b539
	defb 0fdh,098h,086h ;illegal sequence	;b53a
	add a,c			;b53d
	rst 28h			;b53e
	adc a,l			;b53f
	push de			;b540
	push af			;b541
	push af			;b542
	ld sp,hl		;b543
	or 01fh			;b544
	rra			;b546
	nop			;b547
	add a,c			;b548
	adc a,b			;b549
	inc bc			;b54a
	xor e			;b54b
	add a,h			;b54c
	inc sp			;b54d
	call c,07f7fh		;b54e
	inc b			;b551
	and d			;b552
	ld (bc),a		;b553
	cp (hl)			;b554
	ld (bc),a		;b555
	cp 004h			;b556
	ld b,l			;b558
	ld (bc),a		;b559
	ld a,l			;b55a
	ld (bc),a		;b55b
	ld a,a			;b55c
	add a,c			;b55d
	xor 003h		;b55e
	ld hl,(0cc82h)		;b560
	dec sp			;b563
	dec b			;b564
	cp 082h			;b565
	ld a,a			;b567
	rra			;b568
	inc bc			;b569
	rlca			;b56a
	inc bc			;b56b
	ld a,a			;b56c
	add a,d			;b56d
	cp 0f8h			;b56e
	inc bc			;b570
	ret po			;b571
	inc b			;b572
	and d			;b573
	ld (bc),a		;b574
	cp (hl)			;b575
	add a,d			;b576
	add a,e			;b577
	ld b,(hl)		;b578
	inc b			;b579
	ld b,l			;b57a
	sbc a,c			;b57b
	ld a,l			;b57c
	ld (bc),a		;b57d
	inc c			;b57e
	jr nc,lb600h		;b57f
	ld a,a			;b581
	ccf			;b582
	ccf			;b583
	rra			;b584
	rlca			;b585
	ld bc,0fe00h		;b586
	cp 0fch			;b589
	call m,0e0f8h		;b58b
	add a,b			;b58e
	nop			;b58f
	ld a,a			;b590
	ld a,a			;b591
	ld a,03ch		;b592
	jr $+5			;b594
	nop			;b596
	add a,h			;b597
	jr c,lb5abh		;b598
	ex de,hl		;b59a
	ld c,c			;b59b
	inc b			;b59c
	nop			;b59d
	add a,d			;b59e
	rra			;b59f
	inc bc			;b5a0
	ld b,000h		;b5a1
	ld (bc),a		;b5a3
	cp 083h			;b5a4
	ld a,h			;b5a6
	inc e			;b5a7
	ex af,af'		;b5a8
	inc bc			;b5a9
	nop			;b5aa
lb5abh:
	nop			;b5ab
	ld (bc),a		;b5ac
	rra			;b5ad
	and c			;b5ae
	ld l,a			;b5af
	sbc a,a			;b5b0
	call p,051f5h		;b5b1
	pop de			;b5b4
	pop af			;b5b5
	or 0f9h			;b5b6
	call p,05ffeh		;b5b8
	pop de			;b5bb
	add a,(hl)		;b5bc
	pop af			;b5bd
	or 0f9h			;b5be
	call p,05ffeh		;b5c0
	pop de			;b5c3
	adc a,c			;b5c4
	pop af			;b5c5
	pop af			;b5c6
	or 0f9h			;b5c7
	call p,051f5h		;b5c9
lb5cch:
	pop de			;b5cc
	jp (hl)			;b5cd
	add a,h			;b5ce
	sbc a,003h		;b5cf
	push de			;b5d1
	add a,l			;b5d2
	adc a,l			;b5d3
	ret pe			;b5d4
	jp (hl)			;b5d5
	add a,h			;b5d6
	sbc a,003h		;b5d7
	push de			;b5d9
	sub h			;b5da
	adc a,l			;b5db
	ret pe			;b5dc
	pop af			;b5dd
	or 0f9h			;b5de
	call p,05ffeh		;b5e0
	defb 0fdh,0f8h,0f1h ;illegal sequence	;b5e3
	or 0f9h			;b5e6
	call p,0f5feh		;b5e8
	defb 0fdh,0f8h,086h ;illegal sequence	;b5eb
	exx			;b5ee
	inc b			;b5ef
	ld d,b			;b5f0
	ld (bc),a		;b5f1
	ret nc			;b5f2
	add a,d			;b5f3
	add a,(hl)		;b5f4
	exx			;b5f5
	inc b			;b5f6
	ld d,b			;b5f7
	ld (bc),a		;b5f8
	ret nc			;b5f9
	add a,h			;b5fa
	add a,(hl)		;b5fb
	exx			;b5fc
	ld d,b			;b5fd
	ret nc			;b5fe
	inc b			;b5ff
lb600h:
	add a,b			;b600
	add a,e			;b601
	cp 0f8h			;b602
	ret nc			;b604
	dec b			;b605
	add a,b			;b606
	add a,c			;b607
	ret po			;b608
	rlca			;b609
	add a,b			;b60a
	add a,h			;b60b
	add a,(hl)		;b60c
	exx			;b60d
	ld d,b			;b60e
	ret nc			;b60f
	inc b			;b610
	add a,b			;b611
	nop			;b612
	add a,d			;b613
	nop			;b614
	xor d			;b615
	inc b			;b616
	rst 38h			;b617
	sbc a,d			;b618
	xor d			;b619
	nop			;b61a
	inc a			;b61b
	ld a,(hl)		;b61c
	inc a			;b61d
	ld a,(hl)		;b61e
	inc a			;b61f
	ld a,(hl)		;b620
	inc a			;b621
	ld a,(hl)		;b622
	inc hl			;b623
	inc h			;b624
	jr z,lb698h		;b625
	rst 20h			;b627
	rst 18h			;b628
	ret p			;b629
	rla			;b62a
	rra			;b62b
	call p,0ff03h		;b62c
	rra			;b62f
	add a,a			;b630
	ex (sp),hl		;b631
	inc sp			;b632
	nop			;b633
	djnz lb5cch		;b634
	add a,d			;b636
	ld sp,hl		;b637
	or 004h			;b638
	pop af			;b63a
	adc a,d			;b63b
	ld sp,hl		;b63c
	ld h,c			;b63d
	ld sp,hl		;b63e
	ld h,c			;b63f
	pop af			;b640
	pop af			;b641
	or 0f9h			;b642
	ld sp,hl		;b644
	call p,08100h		;b645
	nop			;b648
	inc b			;b649
	ld bc,0ff03h		;b64a
	adc a,l			;b64d
	ret nz			;b64e
	sbc a,(hl)		;b64f
	ld a,(hl)		;b650
	ld a,01eh		;b651
	adc a,a			;b653
	ret nz			;b654
	ret po			;b655
	rst 38h			;b656
	rst 38h			;b657
	nop			;b658
	nop			;b659
	rst 38h			;b65a
	inc bc			;b65b
	nop			;b65c
	add a,e			;b65d
	ret m			;b65e
	ret po			;b65f
	ret nz			;b660
	dec b			;b661
	add a,b			;b662
	adc a,e			;b663
	ld bc,0fc07h		;b664
	cp 03dh			;b667
	add hl,sp		;b669
	inc sp			;b66a
	rlca			;b66b
	nop			;b66c
	rst 38h			;b66d
	nop			;b66e
	dec b			;b66f
	rst 38h			;b670
	adc a,e			;b671
	inc bc			;b672
	ld a,c			;b673
	ld a,(hl)		;b674
	ld a,h			;b675
	ld a,b			;b676
	pop af			;b677
	inc bc			;b678
	rlca			;b679
	rra			;b67a
	rlca			;b67b
	inc bc			;b67c
	ld b,001h		;b67d
	add a,a			;b67f
	pop bc			;b680
	pop af			;b681
	ld sp,hl		;b682
	ld sp,hl		;b683
	pop af			;b684
	pop af			;b685
	pop hl			;b686
	inc bc			;b687
	cp a			;b688
	ld (bc),a		;b689
	rst 18h			;b68a
	adc a,h			;b68b
	call pe,0fcf0h		;b68c
	pop hl			;b68f
	pop bc			;b690
	pop bc			;b691
	add a,e			;b692
	inc bc			;b693
	rlca			;b694
	rrca			;b695
	ccf			;b696
	rst 38h			;b697
lb698h:
	ld b,000h		;b698
	ld (bc),a		;b69a
	rst 38h			;b69b
	ld b,021h		;b69c
	add a,c			;b69e
	rst 38h			;b69f
	rlca			;b6a0
	ret m			;b6a1
	dec b			;b6a2
	rst 38h			;b6a3
	ld (bc),a		;b6a4
	adc a,e			;b6a5
	ld b,0ffh		;b6a6
	ld (bc),a		;b6a8
	ret pe			;b6a9
	ld b,0ffh		;b6aa
	ld (bc),a		;b6ac
	adc a,b			;b6ad
	inc bc			;b6ae
	rst 38h			;b6af
	add a,e			;b6b0
	ccf			;b6b1
	rrca			;b6b2
	inc bc			;b6b3
	inc b			;b6b4
	ld bc,0ff05h		;b6b5
	add a,d			;b6b8
	ccf			;b6b9
	rrca			;b6ba
	dec b			;b6bb
	ld bc,00387h		;b6bc
	rrca			;b6bf
	ccf			;b6c0
	rst 38h			;b6c1
	ld bc,03f0fh		;b6c2
	ld a,(bc)		;b6c5
	rst 38h			;b6c6
	add a,a			;b6c7
	defb 0fdh,0f1h,081h ;illegal sequence	;b6c8
	rst 38h			;b6cb
	call m,0c0f0h		;b6cc
	inc b			;b6cf
	nop			;b6d0
	add a,e			;b6d1
	add a,c			;b6d2
	pop af			;b6d3
	defb 0fdh,006h,0ffh ;illegal sequence	;b6d4
	sbc a,(hl)		;b6d7
	cp 0fch			;b6d8
	ret m			;b6da
	ret p			;b6db
	ret po			;b6dc
	ret nz			;b6dd
	add a,b			;b6de
	rst 38h			;b6df
	ld a,a			;b6e0
	ccf			;b6e1
	rra			;b6e2
	rrca			;b6e3
	rlca			;b6e4
	inc bc			;b6e5
	ld bc,00301h		;b6e6
	rlca			;b6e9
	rrca			;b6ea
	rra			;b6eb
	ccf			;b6ec
	ld a,a			;b6ed
	rst 38h			;b6ee
	ld bc,0f803h		;b6ef
	ret p			;b6f2
	ret po			;b6f3
	ret nz			;b6f4
	add a,b			;b6f5
	ld a,(bc)		;b6f6
	nop			;b6f7
	ld b,080h		;b6f8
	sub (hl)		;b6fa
	nop			;b6fb
	inc c			;b6fc
	ld b,0feh		;b6fd
	call m,0f1f8h		;b6ff
	ex (sp),hl		;b702
	rst 20h			;b703
	add a,b			;b704
	ret po			;b705
	ccf			;b706
	ld a,a			;b707
	cp (hl)			;b708
	sbc a,(hl)		;b709
	adc a,0e0h		;b70a
	rst 38h			;b70c
lb70dh:
	nop			;b70d
	nop			;b70e
	rst 38h			;b70f
	rst 38h			;b710
	ld b,000h		;b711
	add a,d			;b713
	rst 38h			;b714
	nop			;b715
	inc bc			;b716
	rst 38h			;b717
	add a,e			;b718
	nop			;b719
	rst 38h			;b71a
	rst 38h			;b71b
	dec b			;b71c
	nop			;b71d
	dec b			;b71e
	rrca			;b71f
	inc bc			;b720
	nop			;b721
	adc a,b			;b722
	ld a,(hl)		;b723
	jp nz,098a4h		;b724
	sbc a,b			;b727
	and h			;b728
	jp nz,005ffh		;b729
	xor d			;b72c
	dec b			;b72d
	rst 38h			;b72e
	ld (bc),a		;b72f
	add a,c			;b730
	add a,l			;b731
	rst 38h			;b732
	add a,c			;b733
	add a,c			;b734
	rst 38h			;b735
	rst 38h			;b736
	inc b			;b737
	ret po			;b738
	dec b			;b739
	rst 38h			;b73a
	ld d,03ch		;b73b
	add a,e			;b73d
	rst 38h			;b73e
	nop			;b73f
	rst 38h			;b740
	inc bc			;b741
	nop			;b742
	add a,e			;b743
	rst 38h			;b744
	nop			;b745
	nop			;b746
	inc bc			;b747
	ret nz			;b748
	add a,c			;b749
	nop			;b74a
	djnz lb70dh		;b74b
	inc bc			;b74d
	rst 38h			;b74e
	inc bc			;b74f
	add a,c			;b750
	add a,c			;b751
	rst 38h			;b752
	inc bc			;b753
	add a,c			;b754
	add a,c			;b755
	rst 38h			;b756
	inc bc			;b757
	add a,c			;b758
	add a,e			;b759
	rst 38h			;b75a
	add a,c			;b75b
	add a,c			;b75c
	inc bc			;b75d
	rst 38h			;b75e
	ld (bc),a		;b75f
	add a,c			;b760
	adc a,d			;b761
	rst 20h			;b762
	inc h			;b763
	inc a			;b764
	inc h			;b765
	inc a			;b766
	add a,b			;b767
	add a,e			;b768
	adc a,a			;b769
	sbc a,a			;b76a
	sbc a,a			;b76b
	inc bc			;b76c
	cp a			;b76d
	add a,e			;b76e
	rst 38h			;b76f
	push de			;b770
	push de			;b771
	inc b			;b772
	add a,b			;b773
	add a,c			;b774
	rst 38h			;b775
	dec b			;b776
	ret m			;b777
	add a,(hl)		;b778
	ld a,b			;b779
	or b			;b77a
	ret nz			;b77b
	rlca			;b77c
	rlca			;b77d
	inc bc			;b77e
	dec b			;b77f
	nop			;b780
	ld (bc),a		;b781
	ret po			;b782
	add a,c			;b783
	ret nz			;b784
	dec b			;b785
	nop			;b786
	add a,l			;b787
	ld e,040h		;b788
	add a,c			;b78a
	add a,c			;b78b
	pop bc			;b78c
	inc b			;b78d
	rst 38h			;b78e
	add a,c			;b78f
	nop			;b790
	inc b			;b791
	add a,b			;b792
	add a,c			;b793
	nop			;b794
	dec b			;b795
	rst 38h			;b796
	adc a,c			;b797
	nop			;b798
	rst 38h			;b799
	nop			;b79a
	nop			;b79b
	inc a			;b79c
	rst 38h			;b79d
	and l			;b79e
	and l			;b79f
	rst 38h			;b7a0
	ex af,af'		;b7a1
	inc a			;b7a2
	add a,e			;b7a3
	nop			;b7a4
	inc a			;b7a5
	nop			;b7a6
	dec b			;b7a7
	rst 38h			;b7a8
	add a,(hl)		;b7a9
	inc bc			;b7aa
	rlca			;b7ab
	rlca			;b7ac
	inc bc			;b7ad
	dec c			;b7ae
	ld e,005h		;b7af
	rra			;b7b1
	ld (bc),a		;b7b2
	cp 002h			;b7b3
	call m,0f802h		;b7b5
	ld a,(bc)		;b7b8
	ret p			;b7b9
	dec b			;b7ba
	nop			;b7bb
	add a,(hl)		;b7bc
	ret nz			;b7bd
	ret po			;b7be
	ret po			;b7bf
	ret nz			;b7c0
	or b			;b7c1
	ld a,b			;b7c2
	dec b			;b7c3
	ret m			;b7c4
	add a,c			;b7c5
	rst 38h			;b7c6
	dec b			;b7c7
	nop			;b7c8
	ld (bc),a		;b7c9
	rst 38h			;b7ca
	add a,c			;b7cb
	nop			;b7cc
	inc b			;b7cd
	cp 002h			;b7ce
	nop			;b7d0
	add a,c			;b7d1
	rst 38h			;b7d2
	inc b			;b7d3
	ld bc,00303h		;b7d4
	add a,l			;b7d7
	rlca			;b7d8
	rst 38h			;b7d9
	ld l,l			;b7da
	ld l,l			;b7db
	rst 38h			;b7dc
	dec b			;b7dd
	nop			;b7de
	ld (bc),a		;b7df
	adc a,b			;b7e0
	inc b			;b7e1
	rlca			;b7e2
	ld (bc),a		;b7e3
	nop			;b7e4
	ld (bc),a		;b7e5
	cp e			;b7e6
	inc bc			;b7e7
	ld hl,0ff03h		;b7e8
	ld (bc),a		;b7eb
	and l			;b7ec
	add a,c			;b7ed
	rst 38h			;b7ee
	inc bc			;b7ef
	and l			;b7f0
	add a,c			;b7f1
	rst 38h			;b7f2
	ld b,0aah		;b7f3
	sub b			;b7f5
	xor e			;b7f6
	xor d			;b7f7
	ret p			;b7f8
	ret p			;b7f9
	ret m			;b7fa
	ret m			;b7fb
	call m,0fefch		;b7fc
	cp 00fh			;b7ff
	rrca			;b801
	rra			;b802
	rra			;b803
	ccf			;b804
	ccf			;b805
	ld b,07fh		;b806
	ld (bc),a		;b808
	ret nz			;b809
	ld (bc),a		;b80a
	ret po			;b80b
	ld (bc),a		;b80c
	ld bc,00302h		;b80d
	ld (bc),a		;b810
	rlca			;b811
	add a,h			;b812
	rrca			;b813
	rst 38h			;b814
	rst 38h			;b815
	rra			;b816
	inc bc			;b817
	ccf			;b818
	ld (bc),a		;b819
	ld a,a			;b81a
	ld (bc),a		;b81b
	rst 38h			;b81c
	add a,c			;b81d
	ret m			;b81e
	inc bc			;b81f
	call m,0fe02h		;b820
	ld (bc),a		;b823
	rst 38h			;b824
	inc bc			;b825
	cp 003h			;b826
	call m,0ff81h		;b828
	nop			;b82b
	add a,e			;b82c
	rrca			;b82d
lb82eh:
	pop af			;b82e
	pop af			;b82f
	ld b,0f0h		;b830
	ld b,0f1h		;b832
	inc b			;b834
	ret p			;b835
	ld a,(bc)		;b836
	ld bc,0f104h		;b837
	add a,(hl)		;b83a
	djnz lb82eh		;b83b
	pop af			;b83d
	ret p			;b83e
	pop af			;b83f
	pop af			;b840
	ld a,(bc)		;b841
	ret p			;b842
	ld b,0f1h		;b843
	ld (006f0h),a		;b845
	ld bc,0f106h		;b848
	rlca			;b84b
	ret p			;b84c
	add a,c			;b84d
	pop af			;b84e
	rlca			;b84f
	ret p			;b850
	add a,c			;b851
	pop af			;b852
	inc b			;b853
	ret p			;b854
	ld b,a			;b855
	ret m			;b856
	ld a,(bc)		;b857
	defb 0fdh,083h,0d1h ;illegal sequence	;b858
	jp nc,00bd1h		;b85b
	jp nc,0ff85h		;b85e
	ld hl,01021h		;b861
	djnz lb86bh		;b864
	rrca			;b866
	dec b			;b867
	pop af			;b868
	adc a,c			;b869
	ret p			;b86a
lb86bh:
	pop af			;b86b
	djnz $-13		;b86c
	pop af			;b86e
	ret p			;b86f
	pop af			;b870
	pop af			;b871
	ret p			;b872
	inc b			;b873
	ld (de),a		;b874
	ld b,00fh		;b875
	dec bc			;b877
	ld hl,01004h		;b878
	ld (bc),a		;b87b
	ld hl,01081h		;b87c
	dec b			;b87f
	rrca			;b880
	ex af,af'		;b881
	pop af			;b882
	ld (bc),a		;b883
	jp p,0f181h		;b884
	ld b,0f0h		;b887
	inc bc			;b889
	pop af			;b88a
	add a,c			;b88b
	jp p,0f105h		;b88c
	rlca			;b88f
	ret p			;b890
	add a,e			;b891
	djnz lb8b5h		;b892
	djnz $+17		;b894
	ld hl,01082h		;b896
	ld hl,01007h		;b899
	inc b			;b89c
	rrca			;b89d
	ld (bc),a		;b89e
	djnz lb8a3h		;b89f
	rrca			;b8a1
	adc a,b			;b8a2
lb8a3h:
	ld hl,00f10h		;b8a3
	ld bc,01212h		;b8a6
	ld bc,00301h		;b8a9
	ret p			;b8ac
	add a,h			;b8ad
	ld bc,01212h		;b8ae
	ld bc,0f004h		;b8b1
	adc a,c			;b8b4
lb8b5h:
	jp p,0f0f1h		;b8b5
	ret p			;b8b8
	jp p,0f0f1h		;b8b9
	ret p			;b8bc
	pop af			;b8bd
	inc bc			;b8be
	ret p			;b8bf
	add a,c			;b8c0
	pop af			;b8c1
	inc b			;b8c2
	ret p			;b8c3
	add a,c			;b8c4
	jp p,0f110h		;b8c5
	add a,h			;b8c8
	ret p			;b8c9
	jp p,0f1f1h		;b8ca
	inc bc			;b8cd
	ret p			;b8ce
	add a,d			;b8cf
	add a,b			;b8d0
	ret nc			;b8d1
	dec d			;b8d2
	sub b			;b8d3
	add a,e			;b8d4
	exx			;b8d5
	ld sp,hl		;b8d6
	ld sp,hl		;b8d7
	dec b			;b8d8
	add hl,bc		;b8d9
	ld (bc),a		;b8da
	jp p,02102h		;b8db
	add a,c			;b8de
	djnz $+5		;b8df
	rrca			;b8e1
	add hl,bc		;b8e2
	ld hl,0f202h		;b8e3
	ld (bc),a		;b8e6
	pop af			;b8e7
	add a,c			;b8e8
	ld hl,01003h		;b8e9
	add a,d			;b8ec
	rrca			;b8ed
	djnz $+12		;b8ee
	rrca			;b8f0
	rlca			;b8f1
	ret po			;b8f2
	sub c			;b8f3
	add a,b			;b8f4
	ret nc			;b8f5
	sub b			;b8f6
	ret p			;b8f7
	jp p,0d292h		;b8f8
	add a,d			;b8fb
	jp nc,09292h		;b8fc
	jp p,01201h		;b8ff
	ld (de),a		;b902
	ld bc,00801h		;b903
	ret p			;b906
	inc b			;b907
	ret po			;b908
	inc b			;b909
	add a,b			;b90a
	add a,l			;b90b
	ret nc			;b90c
	sub b			;b90d
	ret p			;b90e
	cpl			;b90f
	cpl			;b910
	dec b			;b911
	pop af			;b912
	inc bc			;b913
	cpl			;b914
	ld (bc),a		;b915
	rra			;b916
	inc b			;b917
	rrca			;b918
	add a,a			;b919
	jp p,0d292h		;b91a
	add a,d			;b91d
	pop de			;b91e
	sub d			;b91f
	sub c			;b920
	inc bc			;b921
	pop af			;b922
	add a,c			;b923
	ret p			;b924
	inc bc			;b925
	djnz $+6		;b926
	rra			;b928
	add a,h			;b929
	rrca			;b92a
lb92bh:
	ld hl,01010h		;b92b
	inc bc			;b92e
	rrca			;b92f
	add a,e			;b930
	pop af			;b931
	ret p			;b932
	pop af			;b933
	dec b			;b934
	ret p			;b935
	add a,l			;b936
	jp p,0f1f1h		;b937
	jp p,003f2h		;b93a
	pop af			;b93d
	ld (bc),a		;b93e
	jp p,0f102h		;b93f
	inc bc			;b942
	ret p			;b943
	sbc a,d			;b944
	pop af			;b945
	ret nc			;b946
	add a,c			;b947
	ret po			;b948
	add a,b			;b949
	rst 18h			;b94a
	ret nc			;b94b
	sub b			;b94c
	pop af			;b94d
	ret nc			;b94e
	add a,c			;b94f
	ret po			;b950
	add a,b			;b951
	rst 18h			;b952
	ret nc			;b953
	sbc a,a			;b954
	cpl			;b955
	add hl,hl		;b956
	dec l			;b957
	jr z,lb92bh		;b958
	sub d			;b95a
	sub c			;b95b
	pop af			;b95c
	ret m			;b95d
	ret m			;b95e
	inc bc			;b95f
	defb 0fdh,005h,0f9h ;illegal sequence	;b960
	add a,e			;b963
	defb 0fdh,0f8h,0fdh ;illegal sequence	;b964
	dec b			;b967
	ld sp,hl		;b968
	add a,e			;b969
	defb 0fdh,0f8h,0fdh ;illegal sequence	;b96a
	dec b			;b96d
	ld sp,hl		;b96e
	add a,e			;b96f
	defb 0fdh,0f8h,0fdh ;illegal sequence	;b970
	inc bc			;b973
	ld sp,hl		;b974
	nop			;b975
	ret nc			;b976
	call m,0f098h		;b977
	sub b			;b97a
	sub b			;b97b
	ret p			;b97c
	sbc a,b			;b97d
	call m,0193fh		;b97e
	rrca			;b981
	add hl,bc		;b982
	add hl,bc		;b983
	rrca			;b984
	add hl,de		;b985
	ccf			;b986
	ret po			;b987
	ld c,004h		;b988
	add a,d			;b98a
	ld b,c			;b98b
	inc hl			;b98c
	cp 0ech			;b98d
	xor b			;b98f
	cp b			;b990
	or b			;b991
	ret p			;b992
	ret p			;b993
	or b			;b994
	cp b			;b995
	xor b			;b996
	call pe,027feh		;b997
	ld b,e			;b99a
	add a,d			;b99b
	call m,0f107h		;b99c
	rst 20h			;b99f
	inc h			;b9a0
	inc h			;b9a1
	ld h,(hl)		;b9a2
	jp 00103h		;b9a3
	ld h,b			;b9a6
	ret p			;b9a7
	ret p			;b9a8
	ld h,b			;b9a9
	ld bc,00f03h		;b9aa
	ld a,a			;b9ad
lb9aeh:
	rst 38h			;b9ae
	dec d			;b9af
	dec e			;b9b0
	dec c			;b9b1
	rrca			;b9b2
	rrca			;b9b3
	dec c			;b9b4
	dec e			;b9b5
	dec d			;b9b6
	scf			;b9b7
	ld a,a			;b9b8
	call po,041c2h		;b9b9
	jr nz,lb9aeh		;b9bc
	ld (hl),b		;b9be
	rlca			;b9bf
	ld (hl),b		;b9c0
	jr nz,lba04h		;b9c1
	add a,d			;b9c3
	call nz,0377fh		;b9c4
	nop			;b9c7
	inc bc			;b9c8
	cp 003h			;b9c9
	jp m,0f502h		;b9cb
	ld (bc),a		;b9ce
	cp 003h			;b9cf
	jp m,0f503h		;b9d1
	add a,(hl)		;b9d4
	defb 0edh ;next byte illegal after ed	;b9d5
	sbc a,b			;b9d6
	ret m			;b9d7
	defb 0fdh,0fdh,0f9h ;illegal sequence	;b9d8
	add hl,bc		;b9db
	call p,0f603h		;b9dc
	adc a,l			;b9df
	ret m			;b9e0
	defb 0fdh,0fdh,0d9h ;illegal sequence	;b9e1
	defb 0fdh,098h,0fdh ;illegal sequence	;b9e4
	ret m			;b9e7
	ld sp,iy		;b9e8
	or 064h			;b9ea
	ld h,h			;b9ec
	inc b			;b9ed
	call po,06405h		;b9ee
	rlca			;b9f1
	or 003h			;b9f2
	di			;b9f4
	adc a,(hl)		;b9f5
	ret m			;b9f6
	defb 0fdh,0fdh,0f9h ;illegal sequence	;b9f7
	ld sp,hl		;b9fa
	exx			;b9fb
	defb 0edh ;next byte illegal after ed	;b9fc
	sbc a,b			;b9fd
	ret m			;b9fe
	defb 0fdh,0fdh,0f9h ;illegal sequence	;b9ff
	or 0f6h			;ba02
lba04h:
	nop			;ba04
	cp b			;ba05
	nop			;ba06
	pop hl			;ba07
	pop hl			;ba08
	ld bc,00c0ch		;ba09
	ld h,b			;ba0c
	nop			;ba0d
	nop			;ba0e
	jp 003c3h		;ba0f
	nop			;ba12
	jr lba15h		;ba13
lba15h:
	nop			;ba15
	jr lba19h		;ba16
	add hl,sp		;ba18
lba19h:
	jr c,lba1bh		;ba19
lba1bh:
	add a,(hl)		;ba1b
	add a,(hl)		;ba1c
	nop			;ba1d
	nop			;ba1e
	inc sp			;ba1f
	inc bc			;ba20
	nop			;ba21
	ld a,b			;ba22
	ld a,b			;ba23
	nop			;ba24
	nop			;ba25
	add a,b			;ba26
	add a,c			;ba27
	cp c			;ba28
	cp b			;ba29
	add a,b			;ba2a
	adc a,h			;ba2b
	adc a,h			;ba2c
	add a,b			;ba2d
	ld bc,00703h		;ba2e
	rrca			;ba31
	rra			;ba32
	ccf			;ba33
	ld a,a			;ba34
	ld bc,00603h		;ba35
	inc c			;ba38
	jr lba73h		;ba39
	ld h,h			;ba3b
	jp nz,00481h		;ba3c
	rst 20h			;ba3f
	add a,c			;ba40
	inc h			;ba41
	inc bc			;ba42
	rst 20h			;ba43
	add a,e			;ba44
	add a,b			;ba45
	rst 38h			;ba46
	rst 38h			;ba47
	dec b			;ba48
	add a,b			;ba49
	adc a,b			;ba4a
	nop			;ba4b
	rst 38h			;ba4c
	rst 38h			;ba4d
	nop			;ba4e
	ld (hl),b		;ba4f
	ld (hl),b		;ba50
	nop			;ba51
	jr lba57h		;ba52
	nop			;ba54
	inc b			;ba55
	rst 38h			;ba56
lba57h:
	ld (bc),a		;ba57
	nop			;ba58
	ld (bc),a		;ba59
	rst 38h			;ba5a
	ld (bc),a		;ba5b
	nop			;ba5c
	ld (bc),a		;ba5d
	ld (hl),b		;ba5e
	ld (bc),a		;ba5f
	nop			;ba60
	rlca			;ba61
	cp 086h			;ba62
	nop			;ba64
	inc sp			;ba65
	inc bc			;ba66
	nop			;ba67
	ld a,b			;ba68
	ld a,b			;ba69
	inc bc			;ba6a
	nop			;ba6b
	ld (bc),a		;ba6c
	pop hl			;ba6d
	add a,(hl)		;ba6e
	ld bc,00c0ch		;ba6f
	ld h,b			;ba72
lba73h:
	nop			;ba73
	nop			;ba74
	inc bc			;ba75
	ret nz			;ba76
	add a,l			;ba77
	ld e,000h		;ba78
	ld e,01eh		;ba7a
	nop			;ba7c
	inc bc			;ba7d
	ret p			;ba7e
	add a,h			;ba7f
	nop			;ba80
	inc bc			;ba81
	inc bc			;ba82
	nop			;ba83
	ex af,af'		;ba84
	cp 098h			;ba85
	call m,000e0h		;ba87
	jp 02466h		;ba8a
	inc h			;ba8d
	rst 20h			;ba8e
	add a,c			;ba8f
	jp 03c66h		;ba90
	jr lbaa1h		;ba93
	ld b,003h		;ba95
	ld bc,0c080h		;ba97
	ret po			;ba9a
	ret p			;ba9b
	ret m			;ba9c
	call m,005feh		;ba9d
	sbc a,h			;baa0
lbaa1h:
	add a,e			;baa1
	inc e			;baa2
	pop hl			;baa3
	nop			;baa4
	rlca			;baa5
	inc bc			;baa6
	ld b,0ffh		;baa7
	ld (bc),a		;baa9
	nop			;baaa
	ld (bc),a		;baab
	rst 38h			;baac
	ld (bc),a		;baad
	nop			;baae
	ld b,0ffh		;baaf
	rrca			;bab1
	ccf			;bab2
	rlca			;bab3
	ld a,a			;bab4
	inc bc			;bab5
	rst 38h			;bab6
	inc d			;bab7
	nop			;bab8
	ld (bc),a		;bab9
	rst 38h			;baba
	ld b,001h		;babb
	add a,(hl)		;babd
	rst 38h			;babe
	nop			;babf
	rst 38h			;bac0
	nop			;bac1
lbac2h:
	nop			;bac2
	rst 38h			;bac3
	inc bc			;bac4
	nop			;bac5
	sub l			;bac6
	rst 38h			;bac7
	rra			;bac8
	ld e,01eh		;bac9
	rra			;bacb
	inc e			;bacc
	inc e			;bacd
	rra			;bace
	rra			;bacf
	rst 38h			;bad0
	nop			;bad1
	nop			;bad2
	rst 38h			;bad3
	rst 38h			;bad4
	nop			;bad5
	rst 38h			;bad6
	nop			;bad7
	ld c,00eh		;bad8
	ld de,003ffh		;bada
	add a,c			;badd
	add a,c			;bade
	rst 38h			;badf
	dec c			;bae0
	ld a,a			;bae1
	ld b,000h		;bae2
	dec b			;bae4
	ld a,a			;bae5
	ld (bc),a		;bae6
	rst 38h			;bae7
	dec b			;bae8
	ld a,a			;bae9
	ld (bc),a		;baea
	rst 38h			;baeb
	dec b			;baec
	ld a,a			;baed
	ld (bc),a		;baee
	nop			;baef
	dec b			;baf0
	ld bc,0ff06h		;baf1
	dec b			;baf4
	ld bc,08190h		;baf5
	jp 03c66h		;baf8
	jr lbb2dh		;bafb
	ld h,b			;bafd
	ret nz			;bafe
	add a,b			;baff
	ld bc,00703h		;bb00
	rrca			;bb03
	rra			;bb04
	ccf			;bb05
	ld a,a			;bb06
	inc bc			;bb07
	nop			;bb08
	adc a,a			;bb09
	rst 38h			;bb0a
	adc a,a			;bb0b
	adc a,a			;bb0c
	rst 38h			;bb0d
	rst 20h			;bb0e
	rst 20h			;bb0f
	rst 38h			;bb10
	adc a,a			;bb11
	adc a,a			;bb12
	rst 38h			;bb13
	nop			;bb14
	nop			;bb15
	rst 38h			;bb16
	ld a,a			;bb17
	nop			;bb18
	inc b			;bb19
	ccf			;bb1a
	adc a,b			;bb1b
	jr lbac2h		;bb1c
	cp 0feh			;bb1e
	rst 38h			;bb20
	add a,b			;bb21
	add a,b			;bb22
	nop			;bb23
	inc bc			;bb24
	cp 005h			;bb25
	rst 38h			;bb27
	ld (bc),a		;bb28
	cp 08bh			;bb29
	rst 38h			;bb2b
	nop			;bb2c
lbb2dh:
	nop			;bb2d
	rst 38h			;bb2e
	rst 38h			;bb2f
	adc a,a			;bb30
	adc a,a			;bb31
	rst 38h			;bb32
	rst 38h			;bb33
	adc a,a			;bb34
	adc a,a			;bb35
	inc b			;bb36
	nop			;bb37
	add a,c			;bb38
	rst 38h			;bb39
	inc bc			;bb3a
	add a,b			;bb3b
	adc a,l			;bb3c
	ret nz			;bb3d
	ret p			;bb3e
	call m,007ffh		;bb3f
	rst 38h			;bb42
	xor a			;bb43
	xor a			;bb44
	ret pe			;bb45
	add hl,hl		;bb46
	add hl,hl		;bb47
	scf			;bb48
	ret po			;bb49
	ex af,af'		;bb4a
	ret p			;bb4b
	ex af,af'		;bb4c
	ld de,04088h		;bb4d
	ld h,b			;bb50
	ld (hl),b		;bb51
	rrca			;bb52
	rrca			;bb53
	rst 38h			;bb54
	ret nz			;bb55
	ret nz			;bb56
	ld b,001h		;bb57
	inc bc			;bb59
	rst 38h			;bb5a
	add a,c			;bb5b
	nop			;bb5c
	ld b,0feh		;bb5d
	inc b			;bb5f
	ld b,d			;bb60
	adc a,c			;bb61
	jp 0e1f3h		;bb62
	ld b,b			;bb65
	rra			;bb66
	rra			;bb67
	dec b			;bb68
	dec b			;bb69
	rst 38h			;bb6a
	inc bc			;bb6b
	rra			;bb6c
	ld (bc),a		;bb6d
	rlca			;bb6e
	ld (bc),a		;bb6f
	and b			;bb70
	add a,a			;bb71
	rst 38h			;bb72
	rlca			;bb73
	rlca			;bb74
	rst 38h			;bb75
	ret po			;bb76
	ret nz			;bb77
	sbc a,005h		;bb78
	sbc a,h			;bb7a
	inc bc			;bb7b
	rst 20h			;bb7c
	add a,d			;bb7d
	inc h			;bb7e
	jr lbb84h		;bb7f
	ccf			;bb81
	dec b			;bb82
	rra			;bb83
lbb84h:
	add a,e			;bb84
	ld e,00dh		;bb85
	inc bc			;bb87
	inc bc			;bb88
	nop			;bb89
	add a,l			;bb8a
	ld a,07eh		;bb8b
	ld a,(hl)		;bb8d
	add a,b			;bb8e
	ret nz			;bb8f
	inc bc			;bb90
	nop			;bb91
	adc a,d			;bb92
	ld a,h			;bb93
	ld a,(hl)		;bb94
	ld a,(hl)		;bb95
	ld bc,08403h		;bb96
	add a,d			;bb99
	add a,c			;bb9a
	add a,c			;bb9b
	add a,e			;bb9c
	inc bc			;bb9d
	rst 38h			;bb9e
	ex af,af'		;bb9f
	ret p			;bba0
	add a,d			;bba1
	xor b			;bba2
	rlca			;bba3
	inc b			;bba4
	rrca			;bba5
	add a,d			;bba6
	rlca			;bba7
	xor b			;bba8
	inc b			;bba9
	ld b,d			;bbaa
	add a,l			;bbab
	jp 00103h		;bbac
	ld h,b			;bbaf
	rst 38h			;bbb0
	ld b,099h		;bbb1
	add a,(hl)		;bbb3
	rst 38h			;bbb4
	ld a,a			;bbb5
	ld a,a			;bbb6
	rst 38h			;bbb7
	nop			;bbb8
	nop			;bbb9
	inc bc			;bbba
	ld a,a			;bbbb
	add a,h			;bbbc
	rst 0			;bbbd
	ret po			;bbbe
	ret m			;bbbf
	rrca			;bbc0
	ex af,af'		;bbc1
	and l			;bbc2
	add a,(hl)		;bbc3
	adc a,a			;bbc4
	ret m			;bbc5
	ret po			;bbc6
	rst 0			;bbc7
	ret nz			;bbc8
	ret nz			;bbc9
	inc bc			;bbca
	ret p			;bbcb
	add a,c			;bbcc
	nop			;bbcd
	inc b			;bbce
	ret nz			;bbcf
	ld (bc),a		;bbd0
	ret p			;bbd1
	add a,h			;bbd2
	ld (hl),b		;bbd3
	ld h,b			;bbd4
	ld b,b			;bbd5
	nop			;bbd6
	rlca			;bbd7
	ld b,d			;bbd8
	add a,e			;bbd9
	rst 38h			;bbda
	add a,b			;bbdb
	rst 38h			;bbdc
	dec b			;bbdd
	add a,b			;bbde
	add a,d			;bbdf
	rst 38h			;bbe0
	nop			;bbe1
	dec b			;bbe2
	ld bc,03182h		;bbe3
	ld c,c			;bbe6
	rlca			;bbe7
	ret nz			;bbe8
	adc a,e			;bbe9
	rst 38h			;bbea
	ld hl,03f21h		;bbeb
	ccf			;bbee
	ret po			;bbef
	rst 38h			;bbf0
	nop			;bbf1
	nop			;bbf2
	ret m			;bbf3
	ret m			;bbf4
	inc bc			;bbf5
	inc bc			;bbf6
	add a,c			;bbf7
	rst 38h			;bbf8
	inc bc			;bbf9
	ret m			;bbfa
	add a,h			;bbfb
	rra			;bbfc
	ret z			;bbfd
	sub b			;bbfe
	rst 38h			;bbff
	ld b,05ah		;bc00
	adc a,b			;bc02
	rst 38h			;bc03
	sub b			;bc04
	ret z			;bc05
lbc06h:
	rra			;bc06
	rlca			;bc07
	rst 38h			;bc08
	rst 38h			;bc09
	nop			;bc0a
	inc b			;bc0b
	rst 38h			;bc0c
	ld (bc),a		;bc0d
	nop			;bc0e
	rlca			;bc0f
	ret z			;bc10
	rlca			;bc11
	inc bc			;bc12
	add a,c			;bc13
	nop			;bc14
	dec b			;bc15
	rlca			;bc16
	inc bc			;bc17
	rrca			;bc18
	add a,l			;bc19
	ret po			;bc1a
	and b			;bc1b
	ret po			;bc1c
	and b			;bc1d
	ret po			;bc1e
	inc bc			;bc1f
	ret nc			;bc20
	inc bc			;bc21
	rrca			;bc22
	dec b			;bc23
	rlca			;bc24
	inc bc			;bc25
	ret nc			;bc26
	add a,a			;bc27
	ret po			;bc28
	and b			;bc29
	ret po			;bc2a
	and b			;bc2b
	ret po			;bc2c
	dec d			;bc2d
	ret po			;bc2e
	inc b			;bc2f
	ret p			;bc30
	adc a,e			;bc31
	ret po			;bc32
	dec d			;bc33
	cp l			;bc34
	ld e,d			;bc35
	ld b,d			;bc36
	nop			;bc37
	nop			;bc38
	ld b,d			;bc39
	ld e,d			;bc3a
	cp l			;bc3b
	rst 38h			;bc3c
	inc b			;bc3d
	ccf			;bc3e
	inc bc			;bc3f
	nop			;bc40
	add a,l			;bc41
	and b			;bc42
	ret m			;bc43
	adc a,e			;bc44
	add a,l			;bc45
	rst 38h			;bc46
	ld b,02fh		;bc47
	add a,(hl)		;bc49
	rst 38h			;bc4a
	add a,l			;bc4b
	adc a,e			;bc4c
	ret m			;bc4d
	ret po			;bc4e
	rst 38h			;bc4f
	ld b,0f8h		;bc50
	add a,l			;bc52
	rst 38h			;bc53
	ex (sp),hl		;bc54
	rlca			;bc55
	rra			;bc56
	ret p			;bc57
	inc bc			;bc58
	ret nc			;bc59
	add a,c			;bc5a
	nop			;bc5b
	inc b			;bc5c
	inc e			;bc5d
	add a,(hl)		;bc5e
	rra			;bc5f
	ret p			;bc60
	rra			;bc61
	nop			;bc62
	rra			;bc63
	rra			;bc64
	inc b			;bc65
	ret nz			;bc66
	add a,d			;bc67
	rra			;bc68
	rst 38h			;bc69
	inc b			;bc6a
	add a,c			;bc6b
	add a,l			;bc6c
	rst 38h			;bc6d
	add a,c			;bc6e
	add a,c			;bc6f
	rst 38h			;bc70
	rst 38h			;bc71
	dec b			;bc72
	add a,b			;bc73
	add a,(hl)		;bc74
	rst 38h			;bc75
	add a,b			;bc76
	call m,000e0h		;bc77
	jp 04204h		;bc7a
	rlca			;bc7d
	ret nz			;bc7e
	add hl,bc		;bc7f
	nop			;bc80
	inc bc			;bc81
	jr nc,lbc06h		;bc82
	ld c,c			;bc84
	ld sp,00103h		;bc85
	ex af,af'		;bc88
	add a,c			;bc89
	add a,h			;bc8a
	ld b,b			;bc8b
	pop hl			;bc8c
	rst 30h			;bc8d
	jp 04204h		;bc8e
	djnz lbc94h		;bc91
	dec b			;bc93
lbc94h:
	ld a,a			;bc94
	ld (bc),a		;bc95
	nop			;bc96
	ld (bc),a		;bc97
	ld a,a			;bc98
	inc bc			;bc99
	cpl			;bc9a
	add a,h			;bc9b
	pop af			;bc9c
	rra			;bc9d
	rlca			;bc9e
	ex (sp),hl		;bc9f
	ex af,af'		;bca0
	ret nz			;bca1
	nop			;bca2
	cpl			;bca3
	exx			;bca4
	ld a,(bc)		;bca5
	defb 0fdh,082h,0d8h ;illegal sequence	;bca6
	sbc a,l			;bca9
	inc bc			;bcaa
	defb 0fdh,082h,0d9h ;illegal sequence	;bcab
	rst 38h			;bcae
	dec b			;bcaf
	ret pe			;bcb0
	ex af,af'		;bcb1
	adc a,l			;bcb2
	ex af,af'		;bcb3
	exx			;bcb4
	ex af,af'		;bcb5
	adc a,l			;bcb6
	dec b			;bcb7
	exx			;bcb8
	add a,d			;bcb9
	adc a,l			;bcba
	exx			;bcbb
	inc l			;bcbc
	sbc a,a			;bcbd
	inc bc			;bcbe
	ld h,e			;bcbf
	add a,l			;bcc0
	di			;bcc1
	ret m			;bcc2
	ld sp,iy		;bcc3
	ld sp,hl		;bcc5
	add hl,bc		;bcc6
	ret m			;bcc7
	dec c			;bcc8
	sbc a,b			;bcc9
	ld (bc),a		;bcca
	exx			;bccb
	add a,c			;bccc
	ld h,h			;bccd
	dec b			;bcce
	ld (hl),005h		;bccf
	di			;bcd1
	ld a,(bc)		;bcd2
	sbc a,l			;bcd3
	dec b			;bcd4
	ld sp,hl		;bcd5
	inc d			;bcd6
	sbc a,l			;bcd7
	inc h			;bcd8
	ld sp,hl		;bcd9
	inc bc			;bcda
	adc a,l			;bcdb
	dec b			;bcdc
	ld sp,hl		;bcdd
	inc bc			;bcde
	defb 0fdh,002h,0f9h ;illegal sequence	;bcdf
	inc bc			;bce2
	defb 0fdh,002h,0f9h ;illegal sequence	;bce3
	dec b			;bce6
	rst 18h			;bce7
	add a,h			;bce8
	adc a,l			;bce9
	ld sp,hl		;bcea
	ld sp,hl		;bceb
	defb 0fdh,003h,0f9h ;illegal sequence	;bcec
	add a,c			;bcef
	ret po			;bcf0
	dec b			;bcf1
	ld b,h			;bcf2
	add a,l			;bcf3
	ld h,b			;bcf4
	ret p			;bcf5
	adc a,a			;bcf6
	adc a,a			;bcf7
	rst 18h			;bcf8
	ld a,(bc)		;bcf9
	sbc a,a			;bcfa
	add a,c			;bcfb
	rst 18h			;bcfc
	inc b			;bcfd
	adc a,a			;bcfe
	add a,e			;bcff
	ret c			;bd00
	sbc a,l			;bd01
	sbc a,l			;bd02
	ld b,0f9h		;bd03
	ld (bc),a		;bd05
	sbc a,l			;bd06
	inc bc			;bd07
	ret c			;bd08
	ld (bc),a		;bd09
	ret m			;bd0a
	add a,c			;bd0b
	defb 0fdh,00ah,0f9h ;illegal sequence	;bd0c
	add a,c			;bd0f
	defb 0fdh,00bh,0f8h ;illegal sequence	;bd10
	ex af,af'		;bd13
	sbc a,b			;bd14
	inc b			;bd15
	adc a,(hl)		;bd16
	ld b,0d8h		;bd17
	dec b			;bd19
	adc a,(hl)		;bd1a
	ld b,0d8h		;bd1b
	ld (bc),a		;bd1d
	ld sp,hl		;bd1e
	add a,h			;bd1f
	sub b			;bd20
	ret p			;bd21
	exx			;bd22
	exx			;bd23
	inc bc			;bd24
	sbc a,a			;bd25
	add a,d			;bd26
	ret p			;bd27
	ld h,b			;bd28
	ld b,030h		;bd29
	add a,c			;bd2b
	ret p			;bd2c
	dec b			;bd2d
	adc a,(hl)		;bd2e
	ex af,af'		;bd2f
	ret c			;bd30
lbd31h:
	inc bc			;bd31
	adc a,(hl)		;bd32
	rlca			;bd33
	ret m			;bd34
	inc bc			;bd35
	ld sp,hl		;bd36
	adc a,(hl)		;bd37
	ld sp,iy		;bd38
	ret m			;bd3a
	ld sp,iy		;bd3b
	ld sp,hl		;bd3d
	ret pe			;bd3e
	adc a,c			;bd3f
	adc a,c			;bd40
	sbc a,a			;bd41
	ret pe			;bd42
	adc a,c			;bd43
	adc a,c			;bd44
	sbc a,a			;bd45
	inc bc			;bd46
	cp 082h			;bd47
	ret m			;bd49
	defb 0fdh,003h,0f9h ;illegal sequence	;bd4a
	adc a,e			;bd4d
	ret nc			;bd4e
	ret p			;bd4f
	ret po			;bd50
	sbc a,b			;bd51
	defb 0fdh,0fdh,0d9h ;illegal sequence	;bd52
	rst 38h			;bd55
	ret c			;bd56
	adc a,(hl)		;bd57
	ret c			;bd58
	inc b			;bd59
	sbc a,l			;bd5a
	inc bc			;bd5b
	ld sp,hl		;bd5c
	inc bc			;bd5d
	exx			;bd5e
	sbc a,d			;bd5f
	adc a,l			;bd60
	ret pe			;bd61
	adc a,l			;bd62
	ret nc			;bd63
	add a,b			;bd64
	ret nc			;bd65
	sub b			;bd66
	di			;bd67
	jr nc,lbdcah		;bd68
	ld b,b			;bd6a
	ld h,h			;bd6b
	ccf			;bd6c
	ld sp,iy		;bd6d
	ld sp,hl		;bd6f
	ld h,h			;bd70
	ld (hl),0ffh		;bd71
	ld h,h			;bd73
	ld (hl),0f8h		;bd74
	defb 0fdh,0fdh,064h ;illegal sequence	;bd76
	ld (hl),003h		;bd79
	ld sp,hl		;bd7b
	ld b,098h		;bd7c
	adc a,(hl)		;bd7e
	defb 0fdh,0f8h,0f8h ;illegal sequence	;bd7f
	defb 0fdh,0f8h,0d8h ;illegal sequence	;bd82
	sbc a,l			;bd85
	sbc a,l			;bd86
	ret p			;bd87
	ret po			;bd88
	add a,b			;bd89
	add a,b			;bd8a
	ret nc			;bd8b
	ret nc			;bd8c
	dec b			;bd8d
	sub b			;bd8e
	ld (bc),a		;bd8f
	ret po			;bd90
	add a,e			;bd91
	rst 28h			;bd92
	ret pe			;bd93
	ret pe			;bd94
	inc b			;bd95
	ret po			;bd96
	add a,h			;bd97
	add a,b			;bd98
	adc a,a			;bd99
	ret pe			;bd9a
	defb 0edh ;next byte illegal after ed	;bd9b
	inc bc			;bd9c
	ld sp,hl		;bd9d
	dec b			;bd9e
	add hl,bc		;bd9f
	add a,d			;bda0
	ret pe			;bda1
	sbc a,a			;bda2
	inc b			;bda3
	nop			;bda4
	add a,e			;bda5
	ret pe			;bda6
	sbc a,a			;bda7
	call p,04006h		;bda8
	adc a,e			;bdab
	or 0d0h			;bdac
	add a,b			;bdae
	ret nc			;bdaf
	sub b			;bdb0
	or 064h			;bdb1
	ld h,h			;bdb3
	call po,0fafah		;bdb4
	inc b			;bdb7
	push af			;bdb8
	ld (bc),a		;bdb9
	di			;bdba
	xor c			;bdbb
	add a,b			;bdbc
	ret p			;bdbd
	ret pe			;bdbe
	ret pe			;bdbf
	defb 0ddh,0f0h,080h ;illegal sequence	;bdc0
	ret p			;bdc3
	ret m			;bdc4
	ld sp,iy		;bdc5
	cp 0d8h			;bdc7
	ret c			;bdc9
lbdcah:
	sbc a,l			;bdca
	rst 38h			;bdcb
	rst 38h			;bdcc
	adc a,(hl)		;bdcd
	ret c			;bdce
	ret c			;bdcf
	ld sp,hl		;bdd0
	cp 0feh			;bdd1
	ret m			;bdd3
	exx			;bdd4
	rst 38h			;bdd5
	defb 0edh ;next byte illegal after ed	;bdd6
	adc a,c			;bdd7
	rst 18h			;bdd8
	rst 18h			;bdd9
	exx			;bdda
	rst 38h			;bddb
	exx			;bddc
	rst 38h			;bddd
	defb 0edh ;next byte illegal after ed	;bdde
	adc a,c			;bddf
	ret nc			;bde0
	ret p			;bde1
	ret nc			;bde2
	ret nc			;bde3
	ret m			;bde4
	dec b			;bde5
	defb 0fdh,002h,0f9h ;illegal sequence	;bde6
	inc bc			;bde9
	ret pe			;bdea
	inc bc			;bdeb
	adc a,l			;bdec
	add a,h			;bded
	exx			;bdee
	defb 0fdh,0fdh,0f8h ;illegal sequence	;bdef
	inc b			;bdf2
	defb 0fdh,002h,0f9h ;illegal sequence	;bdf3
	add a,c			;bdf6
	call po,04605h		;bdf7
	ld (bc),a		;bdfa
	di			;bdfb
	add a,c			;bdfc
	ret m			;bdfd
	inc bc			;bdfe
	defb 0fdh,09dh ;sbc a,iyl	;bdff
	ld sp,hl		;be01
	adc a,l			;be02
	adc a,l			;be03
	exx			;be04
	exx			;be05
	rst 38h			;be06
	ret c			;be07
	sbc a,l			;be08
	ld sp,hl		;be09
	ld sp,hl		;be0a
	exx			;be0b
	rst 38h			;be0c
	dec c			;be0d
	add a,b			;be0e
	cp 0f8h			;be0f
	ret m			;be11
	ret pe			;be12
	adc a,l			;be13
	exx			;be14
	ret pe			;be15
	adc a,l			;be16
	exx			;be17
	defb 0fdh,0fdh,0f9h ;illegal sequence	;be18
	sub b			;be1b
	ret p			;be1c
	ret p			;be1d
	inc b			;be1e
	ld h,h			;be1f
	inc b			;be20
	ccf			;be21
	adc a,b			;be22
	add a,(hl)		;be23
	call po,08686h		;be24
	out (093h),a		;be27
	rst 38h			;be29
	ret po			;be2a
	dec b			;be2b
	ld b,b			;be2c
	ld (bc),a		;be2d
	ld h,b			;be2e
	and c			;be2f
	ret p			;be30
	add a,b			;be31
	ret p			;be32
	add a,b			;be33
	ret p			;be34
	ret po			;be35
	add a,b			;be36
	ret nc			;be37
	ret p			;be38
	ret nc			;be39
	ret p			;be3a
	ret nc			;be3b
	ret p			;be3c
	add a,b			;be3d
	ret nc			;be3e
	sub b			;be3f
	ret po			;be40
	add a,b			;be41
	ret nc			;be42
	ret p			;be43
	add a,b			;be44
	ret p			;be45
	add a,b			;be46
	ret p			;be47
	add a,b			;be48
	ret nc			;be49
	sub b			;be4a
	ret p			;be4b
	ret nc			;be4c
	ret p			;be4d
	ret nc			;be4e
	ret p			;be4f
	or 006h			;be50
	ld h,b			;be52
	add a,e			;be53
	di			;be54
	ld sp,hl		;be55
	sub b			;be56
	inc b			;be57
	ret nc			;be58
	add a,l			;be59
	sub b			;be5a
	ld sp,hl		;be5b
	ld sp,hl		;be5c
	ld h,e			;be5d
	ld b,(hl)		;be5e
	inc b			;be5f
	ld h,e			;be60
	and d			;be61
	rst 38h			;be62
	sub b			;be63
	ret nc			;be64
	ret m			;be65
	defb 0fdh,0fdh,0d8h ;illegal sequence	;be66
	sbc a,l			;be69
	ld sp,hl		;be6a
	ret c			;be6b
	sbc a,l			;be6c
	ld sp,hl		;be6d
	ld sp,hl		;be6e
	ld sp,iy		;be6f
	sub b			;be71
	ret p			;be72
	ret p			;be73
	add a,(hl)		;be74
	call po,08686h		;be75
	out (093h),a		;be78
	defb 0fdh,0fdh,0f9h ;illegal sequence	;be7a
	ld sp,hl		;be7d
	defb 0fdh,0d9h,0d9h ;illegal sequence	;be7e
	sbc a,a			;be81
	sbc a,a			;be82
	defb 0fdh,004h,0f9h ;illegal sequence	;be83
	adc a,h			;be86
	sbc a,b			;be87
	exx			;be88
	exx			;be89
	ret c			;be8a
	rst 38h			;be8b
	ret pe			;be8c
	adc a,l			;be8d
	exx			;be8e
	rst 38h			;be8f
	ret c			;be90
	defb 0fdh,0fdh,004h ;illegal sequence	;be91
	ld sp,hl		;be94
	add a,c			;be95
	defb 0fdh,003h,0f9h ;illegal sequence	;be96
	add a,c			;be99
	exx			;be9a
	inc bc			;be9b
	adc a,l			;be9c
	inc bc			;be9d
	ret pe			;be9e
	inc bc			;be9f
	ld h,e			;bea0
	add a,l			;bea1
	di			;bea2
	add a,b			;bea3
	ret nc			;bea4
	sub b			;bea5
	sub b			;bea6
	ex af,af'		;bea7
	jr nc,lbeb3h		;bea8
	rst 18h			;beaa
	ld (bc),a		;beab
	adc a,a			;beac
	add a,l			;bead
	defb 0fdh,0f8h,0fdh ;illegal sequence	;beae
	ld sp,hl		;beb1
lbeb2h:
	ld sp,hl		;beb2
lbeb3h:
	inc bc			;beb3
	ret po			;beb4
	add a,d			;beb5
	add a,b			;beb6
	ret nc			;beb7
	inc bc			;beb8
	sub b			;beb9
	ld (bc),a		;beba
	ld h,b			;bebb
	adc a,e			;bebc
	jr nc,lbeb2h		;bebd
	add a,b			;bebf
	ret nc			;bec0
	sub b			;bec1
	sub b			;bec2
	ret c			;bec3
	adc a,(hl)		;bec4
	adc a,(hl)		;bec5
	ret c			;bec6
	ret c			;bec7
	ld b,09dh		;bec8
	ld (bc),a		;beca
	ret c			;becb
	ld (bc),a		;becc
	adc a,(hl)		;becd
	inc b			;bece
	ret c			;becf
	dec b			;bed0
	adc a,(hl)		;bed1
	adc a,b			;bed2
	rst 38h			;bed3
	ret c			;bed4
	sbc a,l			;bed5
	sbc a,l			;bed6
	ld sp,hl		;bed7
	cp 0f8h			;bed8
	defb 0fdh,007h,0d9h ;illegal sequence	;beda
	add a,c			;bedd
	adc a,l			;bede
	nop			;bedf
	ld (bc),a		;bee0
	ld a,a			;bee1
	add a,d			;bee2
	ccf			;bee3
	ld a,a			;bee4
	inc bc			;bee5
	ld h,b			;bee6
	add a,a			;bee7
	rra			;bee8
	ld a,a			;bee9
	ld a,a			;beea
	ccf			;beeb
	ccf			;beec
	ld a,a			;beed
	ld a,a			;beee
	dec b			;beef
	ld (hl),b		;bef0
	add a,d			;bef1
	ld a,a			;bef2
	ccf			;bef3
	inc bc			;bef4
	ld a,a			;bef5
	nop			;bef6
	add a,e			;bef7
	ld sp,03121h		;bef8
	inc b			;befb
	ld hl,03185h		;befc
	sub d			;beff
	ld (09292h),a		;bf00
lbf03h:
	rlca			;bf03
	ld sp,03202h		;bf04
	add a,e			;bf07
	ld hl,02f1fh		;bf08
	nop			;bf0b
	ld (bc),a		;bf0c
	ret m			;bf0d
	ld (bc),a		;bf0e
	nop			;bf0f
	sbc a,b			;bf10
	ex (sp),hl		;bf11
	inc d			;bf12
	inc d			;bf13
	ex (sp),hl		;bf14
	rra			;bf15
	rra			;bf16
	nop			;bf17
	nop			;bf18
	ex (sp),hl		;bf19
	inc d			;bf1a
	inc d			;bf1b
	ex (sp),hl		;bf1c
	rst 38h			;bf1d
	ld a,(hl)		;bf1e
	nop			;bf1f
	ld a,(hl)		;bf20
	ld b,d			;bf21
	ld b,d			;bf22
	jp 0ffffh		;bf23
	jr lbf03h		;bf26
	inc a			;bf28
	dec b			;bf29
	rst 38h			;bf2a
	inc bc			;bf2b
	add a,b			;bf2c
	add a,c			;bf2d
	rst 38h			;bf2e
	inc bc			;bf2f
	add a,b			;bf30
	add a,c			;bf31
	rst 38h			;bf32
	rlca			;bf33
	inc bc			;bf34
	nop			;bf35
	add a,l			;bf36
	ld hl,0f1f1h		;bf37
	ld (00431h),hl		;bf3a
	ld hl,0f102h		;bf3d
	add a,d			;bf40
	ld (00331h),hl		;bf41
	ld hl,0f103h		;bf44
	ld (bc),a		;bf47
	ld hl,02f81h		;bf48
	dec bc			;bf4b
	pop af			;bf4c
	add a,d			;bf4d
	ld hl,00532h		;bf4e
	sub e			;bf51
	ld (bc),a		;bf52
	pop af			;bf53
	add a,e			;bf54
	ld (de),a		;bf55
	inc hl			;bf56
	add hl,sp		;bf57
	inc bc			;bf58
	inc hl			;bf59
	nop			;bf5a
	rlca			;bf5b
	inc a			;bf5c
	adc a,c			;bf5d
	jp 03cffh		;bf5e
	nop			;bf61
	jp 000ffh		;bf62
	nop			;bf65
	add a,c			;bf66
	inc b			;bf67
	jp 0ff84h		;bf68
	jp 00081h		;bf6b
	inc bc			;bf6e
	add a,c			;bf6f
	ld (bc),a		;bf70
	cp l			;bf71
	ld (bc),a		;bf72
	add a,c			;bf73
	add a,c			;bf74
	rst 38h			;bf75
	inc bc			;bf76
	ld a,(hl)		;bf77
	ld (bc),a		;bf78
	ld b,d			;bf79
	ld (bc),a		;bf7a
	ld a,(hl)		;bf7b
	sub c			;bf7c
	nop			;bf7d
	inc a			;bf7e
	jp 03cc3h		;bf7f
	inc a			;bf82
	jp 03cc3h		;bf83
	rst 38h			;bf86
	inc a			;bf87
	nop			;bf88
	jp 000ffh		;bf89
	nop			;bf8c
	add a,c			;bf8d
	inc b			;bf8e
	jp 0ff84h		;bf8f
	inc a			;bf92
	ld a,(hl)		;bf93
	rst 38h			;bf94
	ld b,07eh		;bf95
	ld (bc),a		;bf97
	inc a			;bf98
	ld b,07eh		;bf99
	add hl,bc		;bf9b
	jp 0ff81h		;bf9c
	ld b,03ch		;bf9f
	ld (bc),a		;bfa1
	nop			;bfa2
	ex af,af'		;bfa3
	rst 38h			;bfa4
	nop			;bfa5
	adc a,b			;bfa6
	sub e			;bfa7
	add hl,hl		;bfa8
	ld (de),a		;bfa9
	ld sp,09239h		;bfaa
	cpl			;bfad
	cpl			;bfae
	inc bc			;bfaf
	sub e			;bfb0
	add a,e			;bfb1
	ld (01313h),a		;bfb2
	inc bc			;bfb5
	add hl,hl		;bfb6
	inc b			;bfb7
	inc hl			;bfb8
	inc bc			;bfb9
	ld hl,0f198h		;bfba
	jp p,0f3f3h		;bfbd
	inc de			;bfc0
	inc de			;bfc1
	pop af			;bfc2
	pop af			;bfc3
	ld hl,09131h		;bfc4
	sub c			;bfc7
	sub d			;bfc8
	sub d			;bfc9
	ld hl,03121h		;bfca
	ld sp,01f1fh		;bfcd
	inc de			;bfd0
	inc de			;bfd1
	pop af			;bfd2
	pop af			;bfd3
	inc bc			;bfd4
	ld (02183h),a		;bfd5
	jp p,003f2h		;bfd8
	inc de			;bfdb
	inc b			;bfdc
	ld (de),a		;bfdd
	inc bc			;bfde
	pop af			;bfdf
	add a,c			;bfe0
	sub e			;bfe1
	dec b			;bfe2
	ld (02183h),a		;bfe3
	rra			;bfe6
	ld (02105h),a		;bfe7
	ld (bc),a		;bfea
	pop af			;bfeb
	add a,c			;bfec
	inc hl			;bfed
	dec b			;bfee
	ld (de),a		;bfef
	ld (bc),a		;bff0
	pop af			;bff1
	add a,c			;bff2
	ld hl,01f0fh		;bff3
	nop			;bff6
	add a,c			;bff7
	add a,l			;bff8
	ld b,03ah		;bff9
	add a,c			;bffb
	ld a,(de)		;bffc
	rlca			;bffd
sub_bffeh:
	ret pe			;bffe
	add a,c			;bfff
