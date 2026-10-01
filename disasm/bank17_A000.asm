; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank17_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank17.bin

	org 0a000h

	rrca			;a000
	nop			;a001
	rra			;a002
	rra			;a003
	inc b			;a004
	rlca			;a005
	ld (bc),a		;a006
	ccf			;a007
	add a,d			;a008
	sbc a,(hl)		;a009
	cp h			;a00a
	inc b			;a00b
	inc a			;a00c
	sub h			;a00d
	nop			;a00e
	ld a,07fh		;a00f
	rst 38h			;a011
	rst 38h			;a012
	cp 0fch			;a013
	call m,0fffeh		;a015
	cp 0ffh			;a018
	rst 38h			;a01a
	ld a,a			;a01b
	ccf			;a01c
	ccf			;a01d
	ld a,a			;a01e
	rst 38h			;a01f
	ld a,l			;a020
	dec a			;a021
	inc b			;a022
	inc a			;a023
	add a,e			;a024
	nop			;a025
	ld a,h			;a026
	call m,0fe04h		;a027
	add a,c			;a02a
	nop			;a02b
	inc bc			;a02c
	cp 003h			;a02d
	nop			;a02f
	adc a,c			;a030
	rst 38h			;a031
	call po,0ffe4h		;a032
	cp 000h			;a035
	add a,b			;a037
	add a,b			;a038
	nop			;a039
	inc bc			;a03a
	ret pe			;a03b
	inc bc			;a03c
	ld bc,00303h		;a03d
	ld (bc),a		;a040
	rlca			;a041
	add a,h			;a042
	rrca			;a043
	rlca			;a044
	ret m			;a045
	rrca			;a046
	inc b			;a047
	rra			;a048
	and b			;a049
	ld h,b			;a04a
	rra			;a04b
	rra			;a04c
	pop hl			;a04d
	cp 0feh			;a04e
	rst 38h			;a050
	ret po			;a051
	rst 38h			;a052
	rst 38h			;a053
	add a,c			;a054
	inc a			;a055
	inc a			;a056
	ld a,(hl)		;a057
	call m,01e3ch		;a058
	ld e,09fh		;a05b
	adc a,a			;a05d
	ld b,a			;a05e
	inc bc			;a05f
	ld h,b			;a060
	di			;a061
	ld a,a			;a062
	ld a,a			;a063
	ccf			;a064
	ccf			;a065
	rrca			;a066
	ret po			;a067
	ccf			;a068
	rrca			;a069
	inc bc			;a06a
	cp 09dh			;a06b
	call m,007f0h		;a06d
	call m,078f0h		;a070
	ld a,b			;a073
	ld sp,hl		;a074
	pop af			;a075
	ex (sp),hl		;a076
	jp 00f07h		;a077
	call m,0f8fch		;a07a
	ret m			;a07d
	ret p			;a07e
	ret po			;a07f
	ret nz			;a080
	add a,c			;a081
	rst 38h			;a082
	sbc a,b			;a083
	ld a,a			;a084
	ld a,a			;a085
	ld c,(hl)		;a086
	ld h,(hl)		;a087
	ld h,(hl)		;a088
	ld a,a			;a089
	inc b			;a08a
	call nz,0cc86h		;a08b
	and 0e6h		;a08e
	cp 007h			;a090
	rlca			;a092
	dec b			;a093
	rrca			;a094
	add a,(hl)		;a095
	nop			;a096
	ccf			;a097
	ret nz			;a098
	ret po			;a099
	ret po			;a09a
	ccf			;a09b
	inc bc			;a09c
	rrca			;a09d
	sub h			;a09e
	ret po			;a09f
	ld e,0ffh		;a0a0
	ret po			;a0a2
	ret po			;a0a3
la0a4h:
	ccf			;a0a4
	inc bc			;a0a5
	rlca			;a0a6
	ld a,(hl)		;a0a7
	jp 03c7eh		;a0a8
	ld a,(hl)		;a0ab
	rst 38h			;a0ac
	rst 38h			;a0ad
	rra			;a0ae
	nop			;a0af
la0b0h:
	inc a			;a0b0
	ld (bc),a		;a0b1
	call m,00303h		;a0b2
	sbc a,l			;a0b5
	nop			;a0b6
	rrca			;a0b7
	add a,b			;a0b8
	ld (hl),b		;a0b9
	rra			;a0ba
	rra			;a0bb
	ret nz			;a0bc
	ret nz			;a0bd
	jr la0b0h		;a0be
	ld bc,0f80eh		;a0c0
	rrca			;a0c3
	rlca			;a0c4
	call m,0e0e0h		;a0c5
	pop bc			;a0c8
	add a,a			;a0c9
	rrca			;a0ca
	ccf			;a0cb
	add a,b			;a0cc
	rst 38h			;a0cd
	rst 38h			;a0ce
	rlca			;a0cf
	rra			;a0d0
	ccf			;a0d1
	ccf			;a0d2
	inc b			;a0d3
	ld a,a			;a0d4
	ld (bc),a		;a0d5
	rlca			;a0d6
	inc b			;a0d7
	inc bc			;a0d8
	add a,l			;a0d9
	rst 38h			;a0da
	inc e			;a0db
	cp 0ffh			;a0dc
	rst 38h			;a0de
	inc bc			;a0df
	add a,b			;a0e0
	add a,h			;a0e1
	rst 38h			;a0e2
	inc a			;a0e3
	ret p			;a0e4
	ret p			;a0e5
	inc b			;a0e6
	ret m			;a0e7
	add a,e			;a0e8
	add a,b			;a0e9
	rst 38h			;a0ea
	nop			;a0eb
	inc bc			;a0ec
	rra			;a0ed
	and l			;a0ee
	ret nz			;a0ef
	rrca			;a0f0
	rlca			;a0f1
	inc bc			;a0f2
	rst 38h			;a0f3
	nop			;a0f4
	ld a,a			;a0f5
	ld a,a			;a0f6
	nop			;a0f7
	nop			;a0f8
	ccf			;a0f9
	ccf			;a0fa
	add a,b			;a0fb
	ret m			;a0fc
	add a,b			;a0fd
	ret p			;a0fe
	ret p			;a0ff
	rrca			;a100
	rrca			;a101
	ld c,003h		;a102
	rrca			;a104
	inc a			;a105
	ret po			;a106
	rlca			;a107
	rlca			;a108
	rst 38h			;a109
	nop			;a10a
	rrca			;a10b
	rrca			;a10c
	nop			;a10d
	cp 0ffh			;a10e
	ld a,h			;a110
	ret m			;a111
	rst 0			;a112
	rst 38h			;a113
	inc bc			;a114
	rra			;a115
	add a,h			;a116
	ret nz			;a117
	rrca			;a118
	inc bc			;a119
	ld bc,00300h		;a11a
	djnz la0a4h		;a11d
	ld hl,02132h		;a11f
	ld hl,00432h		;a122
	djnz $+12		;a125
	ld hl,03282h		;a127
	ld b,e			;a12a
	rlca			;a12b
	ld hl,03206h		;a12c
	add a,e			;a12f
	ld hl,04313h		;a130
	inc bc			;a133
	ld (02185h),a		;a134
	ld b,c			;a137
	ld b,e			;a138
	ld b,e			;a139
	ld b,c			;a13a
	inc b			;a13b
	ld b,e			;a13c
	add a,l			;a13d
	ld (01f31h),a		;a13e
	rra			;a141
	ld (04303h),a		;a142
	add a,h			;a145
	ld (01f21h),a		;a146
	jp p,02104h		;a149
	add a,h			;a14c
	ld sp,0f121h		;a14d
	pop af			;a150
	ld b,021h		;a151
	rlca			;a153
	ld (0430ah),a		;a154
	add a,l			;a157
	ld b,d			;a158
	jp p,04141h		;a159
	ld b,e			;a15c
	inc bc			;a15d
	di			;a15e
	add a,c			;a15f
	jp p,04203h		;a160
	add a,c			;a163
	ld b,e			;a164
	inc bc			;a165
	di			;a166
	add a,d			;a167
	jp p,00632h		;a168
	ld b,e			;a16b
	adc a,b			;a16c
	ld b,d			;a16d
	ld (0f131h),a		;a16e
	pop af			;a171
	ld b,e			;a172
	ld (00532h),a		;a173
	pop af			;a176
	add a,(hl)		;a177
	ld (02121h),a		;a178
	rst 38h			;a17b
	ld (de),a		;a17c
	ld (de),a		;a17d
	inc bc			;a17e
	pop af			;a17f
	dec b			;a180
	ld (02186h),a		;a181
	rra			;a184
	rra			;a185
	jp p,02323h		;a186
	inc bc			;a189
	ld b,e			;a18a
	add a,l			;a18b
	ld (01f21h),a		;a18c
	jp p,00423h		;a18f
	ld b,d			;a192
	add a,c			;a193
	ld sp,01f03h		;a194
	inc bc			;a197
	jp p,0fe83h		;a198
	call p,005f3h		;a19b
	jp p,0f485h		;a19e
	di			;a1a1
	jp p,0f1f1h		;a1a2
	inc b			;a1a5
	ld b,d			;a1a6
	add a,c			;a1a7
	ld sp,01f03h		;a1a8
	inc bc			;a1ab
	ld (02181h),a		;a1ac
	inc bc			;a1af
	rra			;a1b0
	add a,c			;a1b1
	ld hl,03203h		;a1b2
	ld (bc),a		;a1b5
	pop af			;a1b6
	adc a,e			;a1b7
	di			;a1b8
	jp p,020f2h		;a1b9
	ld hl,01f21h		;a1bc
	rra			;a1bf
	ld b,d			;a1c0
	ld sp,008ffh		;a1c1
	ld hl,03283h		;a1c4
	ld hl,00521h		;a1c7
	ld (04384h),a		;a1ca
	ld b,d			;a1cd
	ld hl,00331h		;a1ce
	ld b,d			;a1d1
	ld (bc),a		;a1d2
	ld (04202h),a		;a1d3
	add a,c			;a1d6
	ld (04303h),a		;a1d7
	add a,h			;a1da
	ld (03221h),a		;a1db
	ld (04204h),a		;a1de
	adc a,d			;a1e1
	ld hl,0f2f1h		;a1e2
	jp p,0f3f3h		;a1e5
	ld b,e			;a1e8
	ld b,e			;a1e9
	ld (003f1h),a		;a1ea
	jp p,0f387h		;a1ed
	ld b,e			;a1f0
	ld b,e			;a1f1
	ld (03221h),a		;a1f2
	ld (04204h),a		;a1f5
	add a,d			;a1f8
	ld (00531h),a		;a1f9
	ld b,c			;a1fc
	ld (bc),a		;a1fd
	ld sp,04302h		;a1fe
	ld (bc),a		;a201
	pop af			;a202
	adc a,h			;a203
	ld b,e			;a204
	ld (043ffh),a		;a205
	ld b,e			;a208
	ld (0ffffh),a		;a209
	ld (0ff21h),a		;a20c
	ld b,e			;a20f
	ld b,021h		;a210
	ld (bc),a		;a212
	rra			;a213
	ld (bc),a		;a214
	ld (02193h),a		;a215
	inc de			;a218
	ld (02132h),a		;a219
	rra			;a21c
	ld hl,04231h		;a21d
	ld b,d			;a220
	ld hl,04341h		;a221
	ld (0f121h),a		;a224
	call p,03121h		;a227
	inc bc			;a22a
	ld b,e			;a22b
	ld (bc),a		;a22c
	ld sp,03287h		;a22d
	ld b,d			;a230
	ld b,d			;a231
	ld hl,01414h		;a232
	ld hl,0f103h		;a235
	add a,l			;a238
	ld (de),a		;a239
	ld (03234h),a		;a23a
	ld hl,0f103h		;a23d
	add a,c			;a240
	ld hl,03203h		;a241
	dec b			;a244
	inc de			;a245
	ld (bc),a		;a246
	ld hl,0ff81h		;a247
	ld b,021h		;a24a
	add a,d			;a24c
	ld (00711h),a		;a24d
	ld b,e			;a250
	add a,c			;a251
	ld hl,03203h		;a252
	inc b			;a255
	ld b,e			;a256
	rlca			;a257
	ld hl,04387h		;a258
	inc de			;a25b
	inc de			;a25c
	ld (01f21h),a		;a25d
	rra			;a260
	inc bc			;a261
	jp p,04302h		;a262
	sub e			;a265
	ld (02121h),a		;a266
	rra			;a269
	rra			;a26a
	ld hl,03243h		;a26b
	ld (01f21h),a		;a26e
	rra			;a271
	ld sp,0f243h		;a272
	jp p,0f1f1h		;a275
	ld sp,04303h		;a278
	adc a,l			;a27b
	pop af			;a27c
	ld (de),a		;a27d
	ld (de),a		;a27e
	ld (04332h),a		;a27f
	call p,032fch		;a282
	ld (01f21h),a		;a285
	rra			;a288
	inc bc			;a289
	jp p,09f00h		;a28a
	nop			;a28d
	ccf			;a28e
	ld a,a			;a28f
	ld a,a			;a290
	inc bc			;a291
	rlca			;a292
	rlca			;a293
	rrca			;a294
	rra			;a295
	ret nz			;a296
	rst 38h			;a297
	cp 0ffh			;a298
	inc a			;a29a
	ld a,a			;a29b
	rst 38h			;a29c
	rlca			;a29d
	rlca			;a29e
	ret p			;a29f
	ret p			;a2a0
	ret po			;a2a1
	call m,0fefeh		;a2a2
	rst 38h			;a2a5
	add a,e			;a2a6
la2a7h:
	inc a			;a2a7
	inc a			;a2a8
	jr c,la2a7h		;a2a9
	call m,03803h		;a2ab
	inc bc			;a2ae
	rra			;a2af
	add a,l			;a2b0
	rst 38h			;a2b1
	pop bc			;a2b2
	pop bc			;a2b3
	rst 38h			;a2b4
	rst 38h			;a2b5
	ex af,af'		;a2b6
	cp l			;a2b7
	ld b,0fdh		;a2b8
	ld (bc),a		;a2ba
	rst 38h			;a2bb
	ld b,02fh		;a2bc
	adc a,(hl)		;a2be
	nop			;a2bf
	ld a,a			;a2c0
	ld a,a			;a2c1
	ld bc,0fc07h		;a2c2
	call m,01fffh		;a2c5
	ret nz			;a2c8
	rst 38h			;a2c9
	cp 0ffh			;a2ca
	ld a,h			;a2cc
	inc b			;a2cd
	ret m			;a2ce
	ld (bc),a		;a2cf
	rrca			;a2d0
	adc a,l			;a2d1
	ret po			;a2d2
	call m,0e0feh		;a2d3
	ret po			;a2d6
	ret nz			;a2d7
	rst 38h			;a2d8
	cp 0ffh			;a2d9
	ld a,h			;a2db
	ret m			;a2dc
	rst 0			;a2dd
	rst 38h			;a2de
	inc bc			;a2df
	rra			;a2e0
	adc a,h			;a2e1
	ccf			;a2e2
	rrca			;a2e3
	rlca			;a2e4
	inc bc			;a2e5
	rlca			;a2e6
	rlca			;a2e7
	rrca			;a2e8
	ld a,a			;a2e9
	ld a,a			;a2ea
	nop			;a2eb
	ld a,(hl)		;a2ec
	ld a,(hl)		;a2ed
	nop			;a2ee
	inc b			;a2ef
	ld hl,03204h		;a2f0
	add a,l			;a2f3
	pop af			;a2f4
	ld hl,03221h		;a2f5
	ld (04303h),a		;a2f8
	add a,h			;a2fb
	ld hl,01f1fh		;a2fc
	ld hl,03204h		;a2ff
	ld (bc),a		;a302
	pop af			;a303
	add a,d			;a304
	ld hl,00432h		;a305
	ld b,e			;a308
	ld (bc),a		;a309
	rst 38h			;a30a
	add a,l			;a30b
	ld hl,03232h		;a30c
	ld sp,hl		;a30f
	ld sp,hl		;a310
	inc bc			;a311
	or 081h			;a312
	ld (04305h),a		;a314
	ld (bc),a		;a317
	rst 38h			;a318
	add a,c			;a319
	ld hl,03204h		;a31a
	add a,c			;a31d
	ld hl,0f103h		;a31e
	inc b			;a321
	ld (de),a		;a322
	ld (bc),a		;a323
	pop af			;a324
	ld (bc),a		;a325
	ld hl,03202h		;a326
	adc a,a			;a329
	di			;a32a
	rrca			;a32b
	rrca			;a32c
	pop af			;a32d
	ld hl,03221h		;a32e
	ld (0f443h),a		;a331
	rrca			;a334
	ld (de),a		;a335
	pop af			;a336
	pop af			;a337
	ld (de),a		;a338
	inc bc			;a339
	ld (0f28eh),a		;a33a
	rra			;a33d
	ld hl,03221h		;a33e
	ld (0f443h),a		;a341
	ret m			;a344
	ld (02132h),a		;a345
	rra			;a348
	ret m			;a349
	inc bc			;a34a
	defb 0fdh,084h ;add a,iyh	;a34b
	ld hl,0fd1fh		;a34d
	ret c			;a350
	inc b			;a351
	adc a,(hl)		;a352
	nop			;a353
	ld (bc),a		;a354
	rlca			;a355
	sub c			;a356
	rst 8			;a357
	call nz,0c5c6h		;a358
	inc a			;a35b
	ld a,(hl)		;a35c
	rlca			;a35d
	nop			;a35e
	rrca			;a35f
	rrca			;a360
	nop			;a361
	nop			;a362
	rst 0			;a363
	pop bc			;a364
	rlca			;a365
	rlca			;a366
	rst 8			;a367
	inc bc			;a368
	jp 03c8bh		;a369
	jp 00007h		;a36c
	rrca			;a36f
	rrca			;a370
	nop			;a371
	nop			;a372
	rst 0			;a373
	pop bc			;a374
	rrca			;a375
	inc bc			;a376
	nop			;a377
	inc b			;a378
	ret nz			;a379
	nop			;a37a
	adc a,e			;a37b
	ld hl,0fc1fh		;a37c
	res 6,l			;a37f
	set 1,e			;a381
	call m,03232h		;a383
	ld hl,01f03h		;a386
	add a,a			;a389
	call m,021fbh		;a38a
	rra			;a38d
	push af			;a38e
	or l			;a38f
	rlc e			;a390
	call m,03202h		;a392
	add a,c			;a395
	ld hl,01f03h		;a396
	add a,d			;a399
	push af			;a39a
	call m,0f004h		;a39b
	add a,h			;a39e
	defb 0fdh,0d8h,08eh ;illegal sequence	;a39f
	ret c			;a3a2
	nop			;a3a3
	add a,l			;a3a4
	rrca			;a3a5
	rra			;a3a6
	ld a,a			;a3a7
	jp 00318h		;a3a8
	jp 00f88h		;a3ab
	rra			;a3ae
	ld a,a			;a3af
la3b0h:
	jp 018c3h		;a3b0
	jp 000c3h		;a3b3
	ld (bc),a		;a3b6
	ret p			;a3b7
	adc a,(hl)		;a3b8
	or b			;a3b9
	or l			;a3ba
	and l			;a3bb
	or l			;a3bc
	set 7,h			;a3bd
	ret p			;a3bf
	ret p			;a3c0
	ret nz			;a3c1
	res 6,l			;a3c2
	and l			;a3c4
	or l			;a3c5
	rlc b			;a3c6
	inc b			;a3c8
	nop			;a3c9
	adc a,b			;a3ca
	rlca			;a3cb
	ccf			;a3cc
	ret m			;a3cd
	ret m			;a3ce
	nop			;a3cf
	inc bc			;a3d0
	rra			;a3d1
	rst 38h			;a3d2
	inc bc			;a3d3
	ret p			;a3d4
	add a,h			;a3d5
	nop			;a3d6
	cp 07fh			;a3d7
	ccf			;a3d9
	inc bc			;a3da
	rra			;a3db
	add a,h			;a3dc
	ccf			;a3dd
	ld a,a			;a3de
	ret p			;a3df
	ret p			;a3e0
	inc bc			;a3e1
	ret po			;a3e2
	ld (bc),a		;a3e3
	ret nz			;a3e4
	adc a,e			;a3e5
	add a,b			;a3e6
	rst 38h			;a3e7
	rst 38h			;a3e8
	ret nz			;a3e9
	add a,b			;a3ea
	add a,b			;a3eb
	cp 0fch			;a3ec
	ret m			;a3ee
	nop			;a3ef
	nop			;a3f0
	dec b			;a3f1
	rrca			;a3f2
	add a,c			;a3f3
	rlca			;a3f4
	ld b,000h		;a3f5
	add a,l			;a3f7
	rrca			;a3f8
	rst 38h			;a3f9
	cp 0f8h			;a3fa
	rrca			;a3fc
	inc b			;a3fd
	nop			;a3fe
	sub c			;a3ff
	rst 38h			;a400
	ld bc,00ff9h		;a401
	inc bc			;a404
	ld bc,00301h		;a405
	rst 38h			;a408
	ccf			;a409
	ld a,a			;a40a
	ld a,a			;a40b
	ld bc,0fc07h		;a40c
	call m,000ffh		;a40f
	ld b,0f0h		;a412
	add a,d			;a414
	pop af			;a415
	ld (de),a		;a416
	inc b			;a417
	ret p			;a418
	add a,l			;a419
	pop af			;a41a
	ld (de),a		;a41b
	inc hl			;a41c
	inc hl			;a41d
	pop af			;a41e
	add hl,bc		;a41f
	ret p			;a420
	add a,c			;a421
	jr nz,la428h		;a422
	djnz $+5		;a424
	ret p			;a426
	add a,e			;a427
la428h:
	ld (02121h),a		;a428
	dec b			;a42b
	djnz la3b0h		;a42c
	ret p			;a42e
	jr nz,$+12		;a42f
	djnz la435h		;a431
	ret p			;a433
	add a,d			;a434
la435h:
	ld hl,006f1h		;a435
	ret p			;a438
	add a,d			;a439
	jp p,006f1h		;a43a
	ret p			;a43d
	inc bc			;a43e
	ld hl,03202h		;a43f
	add a,e			;a442
	di			;a443
	rrca			;a444
	rrca			;a445
	nop			;a446
	ld b,00fh		;a447
	ld a,(bc)		;a449
	rra			;a44a
	add a,d			;a44b
	rst 38h			;a44c
	call m,0f804h		;a44d
	ld (bc),a		;a450
	ret p			;a451
	nop			;a452
	ld (bc),a		;a453
	djnz $-124		;a454
	ret p			;a456
	jr nz,la465h		;a457
	djnz $+5		;a459
	ret p			;a45b
	add a,l			;a45c
	djnz $-14		;a45d
	ret p			;a45f
	jr nz,la472h		;a460
	nop			;a462
	ld (bc),a		;a463
	ret p			;a464
la465h:
	add a,e			;a465
	rlca			;a466
	ld a,a			;a467
	rlca			;a468
	inc bc			;a469
	rrca			;a46a
	ld (bc),a		;a46b
	rst 38h			;a46c
	add a,e			;a46d
	nop			;a46e
	ret m			;a46f
	ret m			;a470
	inc bc			;a471
la472h:
	rst 38h			;a472
	ld (bc),a		;a473
	add a,b			;a474
	add a,c			;a475
	nop			;a476
	inc bc			;a477
	rlca			;a478
	add a,d			;a479
	add a,b			;a47a
	call m,00105h		;a47b
	ld (bc),a		;a47e
	rst 38h			;a47f
	adc a,(hl)		;a480
	cp 03fh			;a481
	ccf			;a483
	inc a			;a484
	inc a			;a485
	add a,e			;a486
	rst 38h			;a487
	ld a,(hl)		;a488
	ld a,(hl)		;a489
	ret po			;a48a
	ret p			;a48b
	ret p			;a48c
	nop			;a48d
	rra			;a48e
	inc bc			;a48f
	ccf			;a490
	add a,c			;a491
	rst 38h			;a492
	inc bc			;a493
	nop			;a494
	adc a,h			;a495
	rst 38h			;a496
	cp 0fch			;a497
	ret m			;a499
	ld a,h			;a49a
	call m,000fch		;a49b
	nop			;a49e
	call m,03cfch		;a49f
	inc bc			;a4a2
	rra			;a4a3
	add a,l			;a4a4
	rst 38h			;a4a5
	pop bc			;a4a6
	pop bc			;a4a7
	rra			;a4a8
	rra			;a4a9
	ex af,af'		;a4aa
	cp l			;a4ab
	ld (bc),a		;a4ac
	rst 38h			;a4ad
	add a,l			;a4ae
	ret po			;a4af
	rst 38h			;a4b0
	pop hl			;a4b1
	pop hl			;a4b2
	ret po			;a4b3
	inc bc			;a4b4
	rst 38h			;a4b5
	ld b,02fh		;a4b6
	inc bc			;a4b8
	rlca			;a4b9
	add a,c			;a4ba
	inc bc			;a4bb
	inc bc			;a4bc
	ld a,a			;a4bd
	add a,l			;a4be
	nop			;a4bf
	ld a,a			;a4c0
	ld a,000h		;a4c1
	cp 003h			;a4c3
	ret p			;a4c5
	sbc a,c			;a4c6
	nop			;a4c7
	ret m			;a4c8
	ret po			;a4c9
	add a,b			;a4ca
	ret p			;a4cb
	ret p			;a4cc
	nop			;a4cd
	rlca			;a4ce
	rlca			;a4cf
	call m,00fe0h		;a4d0
	cp 0e0h			;a4d3
	rrca			;a4d5
	rrca			;a4d6
	inc bc			;a4d7
	ld h,(hl)		;a4d8
	jp 03c81h		;a4d9
	rst 38h			;a4dc
	ld a,(hl)		;a4dd
	rst 38h			;a4de
	rst 38h			;a4df
	inc bc			;a4e0
	ccf			;a4e1
	sub b			;a4e2
	add a,b			;a4e3
	ret m			;a4e4
	ret po			;a4e5
	cp 0ffh			;a4e6
	cp 00fh			;a4e8
	rrca			;a4ea
	rlca			;a4eb
	ret p			;a4ec
	ld a,a			;a4ed
	rra			;a4ee
	inc bc			;a4ef
	nop			;a4f0
	inc a			;a4f1
	ld a,(hl)		;a4f2
	inc bc			;a4f3
	inc a			;a4f4
	add a,(hl)		;a4f5
	pop hl			;a4f6
	rst 38h			;a4f7
	rra			;a4f8
	rst 38h			;a4f9
	pop bc			;a4fa
	pop bc			;a4fb
	inc b			;a4fc
	rra			;a4fd
	ex af,af'		;a4fe
	cp l			;a4ff
	ld (bc),a		;a500
	pop hl			;a501
	add a,d			;a502
	ret po			;a503
	rst 38h			;a504
	inc b			;a505
	defb 0fdh,003h,0d0h ;illegal sequence	;a506
	add a,c			;a509
	nop			;a50a
	inc b			;a50b
	ret nc			;a50c
	add a,c			;a50d
	rrca			;a50e
	inc bc			;a50f
	rra			;a510
	inc bc			;a511
	ret po			;a512
	ld (bc),a		;a513
	rst 38h			;a514
	inc b			;a515
	ret p			;a516
	inc bc			;a517
	rra			;a518
	inc bc			;a519
	rrca			;a51a
	adc a,b			;a51b
	rlca			;a51c
	rst 38h			;a51d
	rra			;a51e
	ccf			;a51f
	ccf			;a520
	rlca			;a521
	ld bc,0033fh		;a522
	rst 38h			;a525
	xor b			;a526
	ld a,(hl)		;a527
	nop			;a528
	ccf			;a529
	rst 38h			;a52a
	rst 38h			;a52b
	call m,0c0f0h		;a52c
	nop			;a52f
	ld bc,0fe80h		;a530
	ret m			;a533
	ret po			;a534
	ret nz			;a535
	ret nz			;a536
	rra			;a537
	rra			;a538
	rst 38h			;a539
	cp 0f0h			;a53a
	add a,b			;a53c
	ccf			;a53d
	ret po			;a53e
	ret po			;a53f
	ld c,003h		;a540
	rrca			;a542
	inc a			;a543
	ret po			;a544
	rlca			;a545
	rlca			;a546
	rst 38h			;a547
	nop			;a548
	rlca			;a549
	nop			;a54a
	rra			;a54b
	rra			;a54c
	pop bc			;a54d
	rrca			;a54e
	ld b,003h		;a54f
	and h			;a551
	ld bc,0f0c1h		;a552
	call m,03f3fh		;a555
	inc a			;a558
	inc e			;a559
	jp 07effh		;a55a
	ld c,0feh		;a55d
	rst 38h			;a55f
	rst 38h			;a560
	cp 0feh			;a561
	nop			;a563
	nop			;a564
	cp 07eh			;a565
	ccf			;a567
	rra			;a568
	rra			;a569
	rst 38h			;a56a
	rst 38h			;a56b
	rra			;a56c
	rra			;a56d
	ld b,003h		;a56e
	ld bc,07c7ch		;a570
	jr c,la5f1h		;a573
	jr c,la57ah		;a575
	ccf			;a577
	and h			;a578
	add a,b			;a579
la57ah:
	ret m			;a57a
	ret nz			;a57b
	ret po			;a57c
	ret nz			;a57d
	cp 00fh			;a57e
	rrca			;a580
	rlca			;a581
	ret p			;a582
	rst 38h			;a583
	ld a,a			;a584
	rst 38h			;a585
	call m,0f0f0h		;a586
	nop			;a589
	rrca			;a58a
	rrca			;a58b
	ld c,003h		;a58c
	ld a,(hl)		;a58e
	call m,0f0f0h		;a58f
	rra			;a592
	ccf			;a593
	ret po			;a594
	ret po			;a595
	ld a,h			;a596
	ld a,h			;a597
	ret p			;a598
	ret nz			;a599
	ret nz			;a59a
	rra			;a59b
	rra			;a59c
	inc bc			;a59d
	ld c,004h		;a59e
	add a,b			;a5a0
	inc b			;a5a1
	ccf			;a5a2
	adc a,(hl)		;a5a3
	add a,b			;a5a4
	cp 0feh			;a5a5
	nop			;a5a7
	cp 0feh			;a5a8
	rlca			;a5aa
	inc bc			;a5ab
	ld a,(hl)		;a5ac
	call m,0fefch		;a5ad
	ccf			;a5b0
	nop			;a5b1
	inc b			;a5b2
	inc bc			;a5b3
	inc b			;a5b4
	ld bc,03e02h		;a5b5
	add a,c			;a5b8
	cp 003h			;a5b9
	call m,0f802h		;a5bb
	add a,d			;a5be
	ld bc,003ffh		;a5bf
	call m,0f802h		;a5c2
	sbc a,c			;a5c5
	rrca			;a5c6
	rra			;a5c7
	nop			;a5c8
	rra			;a5c9
	rra			;a5ca
	pop bc			;a5cb
	rrca			;a5cc
	inc bc			;a5cd
	inc bc			;a5ce
	rst 38h			;a5cf
	rst 38h			;a5d0
	rra			;a5d1
	inc bc			;a5d2
	rrca			;a5d3
	ret nz			;a5d4
	ret p			;a5d5
	call m,00306h		;a5d6
	ld bc,0c001h		;a5d9
	ret m			;a5dc
	ccf			;a5dd
	rlca			;a5de
	inc bc			;a5df
	ccf			;a5e0
	adc a,h			;a5e1
	ld a,a			;a5e2
	rlca			;a5e3
	rlca			;a5e4
	nop			;a5e5
	ret po			;a5e6
	cp 00fh			;a5e7
	rrca			;a5e9
	rlca			;a5ea
	ret p			;a5eb
	ld a,a			;a5ec
	rrca			;a5ed
	inc bc			;a5ee
	ret po			;a5ef
	inc b			;a5f0
la5f1h:
	ccf			;a5f1
	inc b			;a5f2
la5f3h:
	ld a,a			;a5f3
	add a,l			;a5f4
	ccf			;a5f5
	ret nz			;a5f6
	ret nz			;a5f7
	add a,b			;a5f8
	add a,b			;a5f9
	inc bc			;a5fa
	cp 002h			;a5fb
	ret nz			;a5fd
	ld (bc),a		;a5fe
	add a,b			;a5ff
	adc a,(hl)		;a600
	cp 0fch			;a601
	ret po			;a603
	rst 38h			;a604
	nop			;a605
	ld bc,0ffffh		;a606
	ld a,a			;a609
	ld h,b			;a60a
	ret nz			;a60b
	rst 38h			;a60c
	ret nz			;a60d
	cp 003h			;a60e
	ret p			;a610
	adc a,l			;a611
	nop			;a612
	rrca			;a613
	rrca			;a614
	add a,b			;a615
	ret p			;a616
	ret p			;a617
	nop			;a618
	rlca			;a619
	rlca			;a61a
	nop			;a61b
	inc bc			;a61c
	rra			;a61d
	rst 38h			;a61e
	inc bc			;a61f
	ret p			;a620
	ld (bc),a		;a621
	nop			;a622
	add a,e			;a623
	inc bc			;a624
	rra			;a625
	rst 38h			;a626
	inc bc			;a627
	ret p			;a628
	cp l			;a629
	rlca			;a62a
	cp 0fch			;a62b
	ret p			;a62d
	ret p			;a62e
	rra			;a62f
	ccf			;a630
	ret po			;a631
	ret po			;a632
	set 0,e			;a633
	rst 38h			;a635
	rst 38h			;a636
	ret p			;a637
	ret p			;a638
	inc c			;a639
	inc bc			;a63a
	jr c,$-123		;a63b
	sbc a,a			;a63d
	rst 38h			;a63e
	ret p			;a63f
	ret p			;a640
	inc c			;a641
	inc bc			;a642
	rrca			;a643
	rrca			;a644
	nop			;a645
	cp 0ffh			;a646
	ld a,h			;a648
	ret m			;a649
	rst 28h			;a64a
	rst 38h			;a64b
	rst 38h			;a64c
	nop			;a64d
	ld bc,0ffffh		;a64e
	ld a,a			;a651
	ld h,b			;a652
	rst 38h			;a653
	ret p			;a654
	add a,b			;a655
	ret p			;a656
	ret p			;a657
	nop			;a658
	rlca			;a659
	rlca			;a65a
	rst 8			;a65b
	ret p			;a65c
	add a,b			;a65d
	ret p			;a65e
	ret p			;a65f
	nop			;a660
	rlca			;a661
	rlca			;a662
	ld a,(hl)		;a663
	ccf			;a664
	rra			;a665
	rst 38h			;a666
	inc bc			;a667
	rra			;a668
	add a,l			;a669
	rst 38h			;a66a
	nop			;a66b
	rst 38h			;a66c
	ret nz			;a66d
	cp 003h			;a66e
	ret p			;a670
	sub l			;a671
	nop			;a672
	rrca			;a673
	rrca			;a674
	add a,b			;a675
	ret p			;a676
	ret p			;a677
	nop			;a678
	rlca			;a679
	rlca			;a67a
	nop			;a67b
	inc bc			;a67c
	rra			;a67d
	rst 38h			;a67e
	ret p			;a67f
	ret p			;a680
	ld c,003h		;a681
	ld a,(hl)		;a683
	ccf			;a684
	rra			;a685
	rst 38h			;a686
	inc b			;a687
	rra			;a688
	add a,h			;a689
	ld a,(hl)		;a68a
	ccf			;a68b
	rra			;a68c
	rst 38h			;a68d
	inc bc			;a68e
	rra			;a68f
	sbc a,d			;a690
	rst 38h			;a691
	add a,b			;a692
	cp 07eh			;a693
	ld a,(hl)		;a695
	rlca			;a696
	ccf			;a697
	ret m			;a698
	ret m			;a699
	ld bc,00ff8h		;a69a
	rst 38h			;a69d
	rst 38h			;a69e
	nop			;a69f
	ex af,af'		;a6a0
	rst 38h			;a6a1
	ex af,af'		;a6a2
	rst 38h			;a6a3
	ld bc,0ffffh		;a6a4
	nop			;a6a7
	ex af,af'		;a6a8
	rst 38h			;a6a9
	rst 38h			;a6aa
	inc b			;a6ab
	ld a,(hl)		;a6ac
	adc a,h			;a6ad
	add a,b			;a6ae
	cp 080h			;a6af
	ld bc,00ff9h		;a6b1
	rst 38h			;a6b4
	ld bc,00b01h		;a6b5
	rst 38h			;a6b8
	rra			;a6b9
	inc b			;a6ba
	ld a,(hl)		;a6bb
	add a,e			;a6bc
	add a,b			;a6bd
	cp 080h			;a6be
	nop			;a6c0
	ld (bc),a		;a6c1
	inc hl			;a6c2
	add a,e			;a6c3
	ld hl,043f3h		;a6c4
	inc bc			;a6c7
	ld (04303h),a		;a6c8
	add a,c			;a6cb
	jp p,04f04h		;a6cc
	inc bc			;a6cf
	ld b,e			;a6d0
	add a,l			;a6d1
	ld (0f42fh),a		;a6d2
	ld b,e			;a6d5
	ld (0f204h),a		;a6d6
	ld (bc),a		;a6d9
	pop af			;a6da
	add a,(hl)		;a6db
	inc sp			;a6dc
	ld hl,04332h		;a6dd
	ld (00421h),a		;a6e0
	pop af			;a6e3
	add a,d			;a6e4
	ld b,e			;a6e5
	ld sp,01f03h		;a6e6
	add a,l			;a6e9
	ld hl,04332h		;a6ea
	ld hl,00321h		;a6ed
	rra			;a6f0
	add a,l			;a6f1
	ld hl,04332h		;a6f2
	ld (00421h),a		;a6f5
	rra			;a6f8
	adc a,d			;a6f9
	ld hl,04332h		;a6fa
	ld (0f932h),a		;a6fd
	ld sp,hl		;a700
	or 043h			;a701
	ld (04308h),a		;a703
	inc b			;a706
	pop af			;a707
	add a,d			;a708
	ld sp,hl		;a709
	or 004h			;a70a
	jp p,0f181h		;a70c
	dec b			;a70f
	ld (de),a		;a710
	inc b			;a711
	ld (02104h),a		;a712
	inc bc			;a715
	ld b,e			;a716
	ld (bc),a		;a717
	ld (02183h),a		;a718
	rra			;a71b
	rra			;a71c
	inc bc			;a71d
	ld (02181h),a		;a71e
	inc bc			;a721
	rra			;a722
	inc bc			;a723
	ld hl,0f103h		;a724
	add a,e			;a727
	ld hl,04332h		;a728
	inc bc			;a72b
	pop af			;a72c
	ld (bc),a		;a72d
	ld hl,03204h		;a72e
	add a,c			;a731
	ld hl,01f03h		;a732
	inc bc			;a735
	ld hl,04302h		;a736
	add a,d			;a739
	ld (00421h),a		;a73a
	pop af			;a73d
	inc b			;a73e
	ld b,e			;a73f
	adc a,h			;a740
	ld (0f121h),a		;a741
	pop af			;a744
	ld (0f9f9h),a		;a745
	or 043h			;a748
	ld (02132h),a		;a74a
	rlca			;a74d
	ld b,e			;a74e
	adc a,b			;a74f
	ld (0f6f9h),a		;a750
	pop af			;a753
	pop af			;a754
	ld b,e			;a755
	ld (00332h),a		;a756
	ld hl,01f02h		;a759
	adc a,d			;a75c
	ld (02121h),a		;a75d
	rra			;a760
	ret p			;a761
	ret p			;a762
	ld de,02323h		;a763
	ld (de),a		;a766
	inc b			;a767
	pop af			;a768
	adc a,c			;a769
	ld (de),a		;a76a
	inc hl			;a76b
	inc (hl)		;a76c
	ld (01f21h),a		;a76d
	rra			;a770
	ld hl,00332h		;a771
	ld b,e			;a774
	add a,e			;a775
	ld (03221h),a		;a776
	ld c,043h		;a779
	add a,d			;a77b
	di			;a77c
	ld b,e			;a77d
	inc bc			;a77e
	ld (03183h),a		;a77f
	rra			;a782
	rra			;a783
	dec b			;a784
	ld hl,0f102h		;a785
	add a,d			;a788
	inc de			;a789
	ld b,e			;a78a
	inc b			;a78b
	pop af			;a78c
	add a,c			;a78d
	ld sp,04303h		;a78e
	ld (bc),a		;a791
	ld (02187h),a		;a792
	rra			;a795
	rra			;a796
	jp p,012f2h		;a797
	di			;a79a
	inc bc			;a79b
	jp p,0f104h		;a79c
	add a,h			;a79f
	ld (03243h),a		;a7a0
	ld hl,0f104h		;a7a3
	inc b			;a7a6
	ld hl,01f02h		;a7a7
	add a,d			;a7aa
	inc sp			;a7ab
	ld hl,0f106h		;a7ac
	add a,c			;a7af
	jp p,0f104h		;a7b0
	add a,d			;a7b3
	ld hl,00332h		;a7b4
	ld b,e			;a7b7
	add a,d			;a7b8
	ld (00321h),a		;a7b9
	rra			;a7bc
	inc bc			;a7bd
	ld hl,04302h		;a7be
	add a,d			;a7c1
	ld (00421h),a		;a7c2
	pop af			;a7c5
	ld (bc),a		;a7c6
	ld hl,01f03h		;a7c7
	add a,e			;a7ca
	ld hl,0f332h		;a7cb
	inc bc			;a7ce
	pop af			;a7cf
	ld (bc),a		;a7d0
	ld (de),a		;a7d1
	ld (bc),a		;a7d2
	pop af			;a7d3
	add a,d			;a7d4
	ld (de),a		;a7d5
	ld (02103h),a		;a7d6
	ld (bc),a		;a7d9
	rra			;a7da
	sub e			;a7db
	ld sp,0ff43h		;a7dc
	rst 38h			;a7df
	ld (03243h),a		;a7e0
	rst 38h			;a7e3
	ld b,e			;a7e4
	ld (0ffffh),a		;a7e5
	ld hl,01f21h		;a7e8
	rra			;a7eb
	ld (03221h),a		;a7ec
	rlca			;a7ef
	ld b,e			;a7f0
	ld b,0f3h		;a7f1
	add a,l			;a7f3
	inc de			;a7f4
	inc hl			;a7f5
	ld hl,043ffh		;a7f6
	inc b			;a7f9
	ld (02184h),a		;a7fa
	pop af			;a7fd
	pop af			;a7fe
	ld (02104h),a		;a7ff
	adc a,c			;a802
	pop af			;a803
	ld (02132h),a		;a804
	rra			;a807
	rra			;a808
	jp p,012f2h		;a809
	inc b			;a80c
	ld (02181h),a		;a80d
	inc bc			;a810
	pop af			;a811
	add a,e			;a812
	jp p,0f3f3h		;a813
	inc bc			;a816
	inc hl			;a817
	ld (bc),a		;a818
	ld hl,03285h		;a819
	ld hl,0f21fh		;a81c
	jp p,02303h		;a81f
	ld (bc),a		;a822
	ld b,e			;a823
	sub b			;a824
	ld (0f121h),a		;a825
	jp p,032f2h		;a828
	rst 38h			;a82b
	rst 38h			;a82c
	ld sp,04142h		;a82d
	ld c,a			;a830
	ld c,a			;a831
	ld b,e			;a832
	rst 38h			;a833
	rst 38h			;a834
	dec b			;a835
	ld b,e			;a836
	add a,h			;a837
	ld (0ffffh),a		;a838
	ld b,e			;a83b
	inc bc			;a83c
	ld (02102h),a		;a83d
	add a,h			;a840
	defb 0fdh,00fh,00fh ;illegal sequence	;a841
	ld b,e			;a844
	inc b			;a845
	ld hl,0d88ch		;a846
	call p,032f4h		;a849
	ld (01f21h),a		;a84c
	rra			;a84f
	ret m			;a850
	ccf			;a851
	ld (00321h),a		;a852
	rra			;a855
	adc a,c			;a856
	ld hl,0fdfdh		;a857
	ret m			;a85a
	ret m			;a85b
	pop af			;a85c
	ld (de),a		;a85d
	inc hl			;a85e
	inc hl			;a85f
	inc b			;a860
	ret p			;a861
	add a,h			;a862
	pop af			;a863
	ld (de),a		;a864
	inc hl			;a865
	ld b,e			;a866
	inc bc			;a867
	pop af			;a868
	ld (bc),a		;a869
	ld (de),a		;a86a
	ld (bc),a		;a86b
	pop af			;a86c
	add a,d			;a86d
	ld (de),a		;a86e
	push bc			;a86f
	inc bc			;a870
	ei			;a871
	sub h			;a872
	pop af			;a873
	ld (de),a		;a874
	ld (la5f3h),a		;a875
	push af			;a878
	ei			;a879
	ei			;a87a
	pop af			;a87b
	ld (de),a		;a87c
	ld (0f1f3h),a		;a87d
	ld (de),a		;a880
	ld (de),a		;a881
	ld (04332h),a		;a882
	call p,003fch		;a885
	rrca			;a888
	add a,c			;a889
	ld b,e			;a88a
	inc b			;a88b
	ld hl,0f302h		;a88c
	add a,d			;a88f
	ld (00321h),a		;a890
	rra			;a893
	add a,l			;a894
	ld hl,0f3fch		;a895
	ld (00321h),a		;a898
	rra			;a89b
	add a,c			;a89c
	ld hl,0f104h		;a89d
	ld b,0f0h		;a8a0
	adc a,d			;a8a2
la8a3h:
	call p,03232h		;a8a3
	ld hl,01f1fh		;a8a6
	ret p			;a8a9
	ccf			;a8aa
	ld (00321h),a		;a8ab
	rra			;a8ae
	sub c			;a8af
	ld hl,0fdfdh		;a8b0
	ret m			;a8b3
	ret m			;a8b4
	pop af			;a8b5
	ld (de),a		;a8b6
	ld (0f1f3h),a		;a8b7
	ret m			;a8ba
	defb 0fdh,0fdh,0f8h ;illegal sequence	;a8bb
	defb 0fdh,0fdh,0f8h ;illegal sequence	;a8be
	inc b			;a8c1
	pop af			;a8c2
	add a,c			;a8c3
	ret m			;a8c4
	inc bc			;a8c5
	defb 0fdh,002h,0e8h ;illegal sequence	;a8c6
	ld (bc),a		;a8c9
	ret c			;a8ca
	ld (bc),a		;a8cb
	defb 0fdh,088h,0f1h ;illegal sequence	;a8cc
	ld (de),a		;a8cf
	ld (de),a		;a8d0
	pop af			;a8d1
	defb 0fdh,0fdh,08dh ;illegal sequence	;a8d2
	adc a,l			;a8d5
	inc b			;a8d6
	ret m			;a8d7
	ld (bc),a		;a8d8
	defb 0fdh,002h,08dh ;illegal sequence	;a8d9
	ld (bc),a		;a8dc
	ret m			;a8dd
	add a,l			;a8de
	xor 0d8h		;a8df
	ret c			;a8e1
	defb 0fdh,0d8h,003h ;illegal sequence	;a8e2
	ret pe			;a8e5
	adc a,l			;a8e6
	jp p,0fdf1h		;a8e7
	defb 0fdh,0f8h,0fdh ;illegal sequence	;a8ea
	ret m			;a8ed
	ret m			;a8ee
	cp 0d8h			;a8ef
	ret c			;a8f1
	defb 0fdh,0d8h,003h ;illegal sequence	;a8f2
	ret pe			;a8f5
	nop			;a8f6
	inc b			;a8f7
	nop			;a8f8
	adc a,b			;a8f9
	rlca			;a8fa
	ccf			;a8fb
	ret m			;a8fc
	ret m			;a8fd
	inc bc			;a8fe
	rra			;a8ff
	rrca			;a900
	rst 38h			;a901
	inc bc			;a902
	ret p			;a903
	adc a,l			;a904
	nop			;a905
	ld a,(hl)		;a906
	call m,0f0f0h		;a907
	ld c,0ffh		;a90a
	cp 0f8h			;a90c
	daa			;a90e
	ccf			;a90f
	ccf			;a910
	cp 003h			;a911
	ret p			;a913
la914h:
	add a,l			;a914
	nop			;a915
	set 0,e			;a916
	rst 38h			;a918
	rst 38h			;a919
	inc bc			;a91a
	ret p			;a91b
	add a,l			;a91c
	nop			;a91d
	jr c,la8a3h		;a91e
	sbc a,a			;a920
	rst 38h			;a921
	inc bc			;a922
	ret p			;a923
	sub l			;a924
	nop			;a925
	rst 18h			;a926
	jp 018c3h		;a927
	jp 081c3h		;a92a
	ld a,(hl)		;a92d
	cp 0f8h			;a92e
	rrca			;a930
	ld (hl),c		;a931
	jr nz,la914h		;a932
	ld a,0c7h		;a934
	ld a,(hl)		;a936
	ccf			;a937
	rra			;a938
	rst 38h			;a939
	inc bc			;a93a
	rra			;a93b
	add a,h			;a93c
	rst 38h			;a93d
	cp 07fh			;a93e
	ccf			;a940
	inc b			;a941
	rra			;a942
	add a,c			;a943
	ccf			;a944
	inc bc			;a945
	jp 0188ah		;a946
	jp 081c3h		;a949
	ld a,(hl)		;a94c
	jp 03c81h		;a94d
	ld a,(hl)		;a950
	inc a			;a951
	inc bc			;a952
	add a,c			;a953
	ld (bc),a		;a954
	sbc a,a			;a955
	adc a,e			;a956
	sub c			;a957
	ld (hl),c		;a958
	ld sp,0c180h		;a959
	pop bc			;a95c
	rra			;a95d
	add a,c			;a95e
	inc a			;a95f
	ld a,(hl)		;a960
	inc a			;a961
	inc bc			;a962
	add a,c			;a963
	inc bc			;a964
	pop bc			;a965
	adc a,b			;a966
	add a,b			;a967
	ld a,0ffh		;a968
	ret m			;a96a
	ret m			;a96b
	cp 07fh			;a96c
	ccf			;a96e
	inc b			;a96f
	rra			;a970
	sbc a,c			;a971
	ccf			;a972
	rst 38h			;a973
	inc a			;a974
	rst 28h			;a975
	rst 0			;a976
	rst 8			;a977
	rst 38h			;a978
	ret m			;a979
	ret m			;a97a
	ld bc,00ff8h		;a97b
	ld (hl),c		;a97e
	ld sp,0c180h		;a97f
	pop bc			;a982
	ret po			;a983
	ld c,004h		;a984
	ld (hl),c		;a986
	jr nz,$-30		;a987
	ld a,0c1h		;a989
	nop			;a98b
	ld b,0f0h		;a98c
	add a,c			;a98e
	pop af			;a98f
	inc bc			;a990
	ld (de),a		;a991
	inc bc			;a992
	pop af			;a993
	add a,e			;a994
	ld (de),a		;a995
	inc hl			;a996
	inc hl			;a997
	inc bc			;a998
	pop af			;a999
	add a,c			;a99a
	ld (de),a		;a99b
	inc b			;a99c
	ld (lb589h),a		;a99d
	ei			;a9a0
	ld c,a			;a9a1
	ld (02132h),a		;a9a2
	rra			;a9a5
	rra			;a9a6
	push bc			;a9a7
	inc bc			;a9a8
	ei			;a9a9
	sbc a,c			;a9aa
	pop af			;a9ab
	ld (de),a		;a9ac
	inc hl			;a9ad
	inc hl			;a9ae
	and l			;a9af
	push af			;a9b0
	ei			;a9b1
	ei			;a9b2
	pop af			;a9b3
	ld (de),a		;a9b4
	inc hl			;a9b5
	inc hl			;a9b6
	call m,0b5cbh		;a9b7
	and l			;a9ba
	or l			;a9bb
	set 7,h			;a9bc
	call m,0f121h		;a9be
	push af			;a9c1
	or l			;a9c2
	rlc e			;a9c3
	call m,0f104h		;a9c5
	ld (bc),a		;a9c8
	ei			;a9c9
	ld (bc),a		;a9ca
	call m,0f186h		;a9cb
	push af			;a9ce
	ei			;a9cf
	ei			;a9d0
	push af			;a9d1
	ei			;a9d2
	inc bc			;a9d3
	call m,0cb89h		;a9d4
	or l			;a9d7
	and l			;a9d8
	or l			;a9d9
	set 7,h			;a9da
	call m,0b5cbh		;a9dc
	inc bc			;a9df
	and l			;a9e0
	adc a,l			;a9e1
	or l			;a9e2
	set 7,h			;a9e3
	res 6,l			;a9e5
	push bc			;a9e7
	push bc			;a9e8
	set 7,h			;a9e9
	res 6,l			;a9eb
	call m,003b5h		;a9ed
	and l			;a9f0
	adc a,h			;a9f1
	or l			;a9f2
	set 7,h			;a9f3
	call m,0b5cbh		;a9f5
	or l			;a9f8
	and l			;a9f9
	pop af			;a9fa
	pop af			;a9fb
	ld (de),a		;a9fc
	pop af			;a9fd
	inc bc			;a9fe
	call m,0fb02h		;a9ff
	dec b			;aa02
	call m,0fb92h		;aa03
	call m,0f1fch		;aa06
	ld (de),a		;aa09
	ld (de),a		;aa0a
	pop af			;aa0b
	call m,0cbc5h		;aa0c
	call m,0ffcbh		;aa0f
	or l			;aa12
	and l			;aa13
	and l			;aa14
	or l			;aa15
	rlc e			;aa16
	call m,08100h		;aa18
	ret nz			;aa1b
	inc b			;aa1c
	rst 38h			;aa1d
	dec b			;aa1e
	ret nz			;aa1f
	inc b			;aa20
	rst 38h			;aa21
	add a,d			;aa22
	ret p			;aa23
	nop			;aa24
	nop			;aa25
	ld (bc),a		;aa26
	defb 0fdh,003h,000h ;illegal sequence	;aa27
	add a,(hl)		;aa2a
	defb 0fdh,0d8h,08eh ;illegal sequence	;aa2b
	ret c			;aa2e
	defb 0fdh,0fdh,005h ;illegal sequence	;aa2f
	rrca			;aa32
	nop			;aa33
	ld (bc),a		;aa34
	inc a			;aa35
	sub a			;aa36
	add a,c			;aa37
	pop bc			;aa38
	pop bc			;aa39
	ld a,a			;aa3a
	rra			;aa3b
	rst 38h			;aa3c
	ld a,09fh		;aa3d
	sub c			;aa3f
	ld (hl),c		;aa40
	ld sp,08183h		;aa41
	add a,c			;aa44
	ld de,0019fh		;aa45
	adc a,(hl)		;aa48
	ld hl,0efb1h		;aa49
	daa			;aa4c
	daa			;aa4d
	inc bc			;aa4e
	call po,0db84h		;aa4f
	ld a,a			;aa52
	rra			;aa53
	rst 38h			;aa54
	nop			;aa55
	ld (bc),a		;aa56
	and l			;aa57
	add a,e			;aa58
	or l			;aa59
	set 7,h			;aa5a
	inc bc			;aa5c
	ret p			;aa5d
	sub l			;aa5e
	call m,0c5b5h		;aa5f
	push bc			;aa62
	ei			;aa63
	call m,0b5cbh		;aa64
	call m,sub_b5b5h	;aa67
	and l			;aa6a
	or l			;aa6b
	ei			;aa6c
	call m,0b5cbh		;aa6d
	or l			;aa70
	set 7,h			;aa71
	call m,0f003h		;aa73
	nop			;aa76
	add a,d			;aa77
	ret p			;aa78
	ret nz			;aa79
	ld b,000h		;aa7a
	adc a,b			;aa7c
	ret m			;aa7d
	ret po			;aa7e
laa7fh:
	add a,b			;aa7f
	call m,080f0h		;aa80
	nop			;aa83
	nop			;aa84
	ld b,00fh		;aa85
	ld (bc),a		;aa87
	rra			;aa88
	ld b,000h		;aa89
	add a,d			;aa8b
	ret nz			;aa8c
	ret p			;aa8d
	ld b,000h		;aa8e
	add a,(hl)		;aa90
	ret po			;aa91
	cp 0f8h			;aa92
	ret m			;aa94
	ret p			;aa95
	ret po			;aa96
	inc b			;aa97
	nop			;aa98
	ld (bc),a		;aa99
	call m,0e084h		;aa9a
	ret nz			;aa9d
	ret nz			;aa9e
	add a,b			;aa9f
	dec b			;aaa0
	nop			;aaa1
	add a,l			;aaa2
	add a,b			;aaa3
	ret p			;aaa4
	cp 0e0h			;aaa5
	call m,00006h		;aaa7
	add a,h			;aaaa
	ret p			;aaab
	rst 38h			;aaac
	ret p			;aaad
	rst 38h			;aaae
	ld a,(bc)		;aaaf
	nop			;aab0
	ld (bc),a		;aab1
	rst 38h			;aab2
	ld (bc),a		;aab3
	nop			;aab4
	inc b			;aab5
	rst 38h			;aab6
	ld (bc),a		;aab7
	nop			;aab8
	add a,l			;aab9
	rst 38h			;aaba
	nop			;aabb
	ret p			;aabc
	rrca			;aabd
	rrca			;aabe
	ld a,(bc)		;aabf
	rst 38h			;aac0
	inc bc			;aac1
	nop			;aac2
	ex af,af'		;aac3
	rst 38h			;aac4
	rlca			;aac5
	nop			;aac6
	add a,d			;aac7
	ret p			;aac8
	rst 38h			;aac9
	ex af,af'		;aaca
	nop			;aacb
	ld c,0ffh		;aacc
	inc bc			;aace
	ret p			;aacf
	inc c			;aad0
	rst 38h			;aad1
	inc b			;aad2
	rrca			;aad3
	inc c			;aad4
	rst 38h			;aad5
	inc bc			;aad6
	ret p			;aad7
	ld c,0ffh		;aad8
	add a,c			;aada
	nop			;aadb
	ld b,0ffh		;aadc
	ld (bc),a		;aade
	nop			;aadf
	add a,c			;aae0
	ret p			;aae1
	dec c			;aae2
	nop			;aae3
	inc b			;aae4
	ret p			;aae5
	inc c			;aae6
	rst 38h			;aae7
	inc b			;aae8
	ret p			;aae9
	ld b,000h		;aaea
	nop			;aaec
	ex af,af'		;aaed
	djnz laaf3h		;aaee
	ld hl,01007h		;aaf0
laaf3h:
	add a,d			;aaf3
	ret p			;aaf4
	jr nz,lab09h		;aaf5
	djnz laafbh		;aaf7
	jr nz,lab04h		;aaf9
laafbh:
	djnz laa7fh		;aafb
	ret p			;aafd
	or b			;aafe
	ex af,af'		;aaff
	ret nz			;ab00
	inc bc			;ab01
	jr nz,$+4		;ab02
lab04h:
	ld (0c008h),a		;ab04
	add a,e			;ab07
	push bc			;ab08
lab09h:
	cp h			;ab09
	cp h			;ab0a
	ld a,(bc)		;ab0b
	ret nz			;ab0c
	ld (bc),a		;ab0d
	or l			;ab0e
	ld b,00ch		;ab0f
	dec b			;ab11
	rrc l			;ab12
	inc c			;ab14
	rlca			;ab15
	dec bc			;ab16
	ld (de),a		;ab17
	ret nz			;ab18
	ld (bc),a		;ab19
	rrc (hl)		;ab1a
	inc c			;ab1c
	add a,c			;ab1d
	rrc (hl)		;ab1e
	inc c			;ab20
	ld (bc),a		;ab21
	dec bc			;ab22
	ld c,00ch		;ab23
	add a,c			;ab25
	rl a			;ab26
	inc c			;ab28
	add a,c			;ab29
	cp e			;ab2a
	rrca			;ab2b
	ret nz			;ab2c
	add a,d			;ab2d
	cp h			;ab2e
	dec bc			;ab2f
	ld c,00ch		;ab30
	add a,d			;ab32
	dec bc			;ab33
	cp h			;ab34
	rlca			;ab35
	ret nz			;ab36
	nop			;ab37
	dec b			;ab38
	rst 38h			;ab39
	inc bc			;ab3a
	ret p			;ab3b
	inc b			;ab3c
	rst 38h			;ab3d
	ld (bc),a		;ab3e
	nop			;ab3f
	add a,c			;ab40
	rst 38h			;ab41
	dec b			;ab42
	nop			;ab43
	inc bc			;ab44
	ret p			;ab45
	add a,c			;ab46
	rrca			;ab47
	dec b			;ab48
	rst 38h			;ab49
	ld (bc),a		;ab4a
	nop			;ab4b
	ld b,0ffh		;ab4c
	inc bc			;ab4e
	rrca			;ab4f
	ld (bc),a		;ab50
	nop			;ab51
	inc b			;ab52
	rrca			;ab53
	ld b,0f0h		;ab54
	inc b			;ab56
	nop			;ab57
	inc bc			;ab58
	ret p			;ab59
	inc b			;ab5a
	rrca			;ab5b
	add a,d			;ab5c
	nop			;ab5d
	ret p			;ab5e
	inc bc			;ab5f
	rrca			;ab60
	inc b			;ab61
	rst 38h			;ab62
	ld (bc),a		;ab63
	rrca			;ab64
	inc bc			;ab65
	ret p			;ab66
	rlca			;ab67
	rst 38h			;ab68
	dec bc			;ab69
	rrca			;ab6a
	ld b,000h		;ab6b
	inc bc			;ab6d
	rrca			;ab6e
	dec b			;ab6f
	nop			;ab70
	inc bc			;ab71
	ret p			;ab72
	inc bc			;ab73
	nop			;ab74
	inc bc			;ab75
	rrca			;ab76
	ld (bc),a		;ab77
	ret p			;ab78
	add a,l			;ab79
	nop			;ab7a
	rst 38h			;ab7b
	rst 38h			;ab7c
	nop			;ab7d
	nop			;ab7e
	inc bc			;ab7f
	rst 38h			;ab80
	ex af,af'		;ab81
	rrca			;ab82
	ld (bc),a		;ab83
	rst 38h			;ab84
	ld b,00fh		;ab85
	ld b,000h		;ab87
	ex af,af'		;ab89
	ret p			;ab8a
	inc b			;ab8b
	nop			;ab8c
	ld (bc),a		;ab8d
	rst 38h			;ab8e
	add a,e			;ab8f
	nop			;ab90
	rst 38h			;ab91
	rst 38h			;ab92
	ld b,000h		;ab93
	add a,e			;ab95
	rst 38h			;ab96
	ret p			;ab97
	ret p			;ab98
	dec b			;ab99
	nop			;ab9a
	ld (bc),a		;ab9b
	ret p			;ab9c
	add a,d			;ab9d
	rrca			;ab9e
	nop			;ab9f
	inc b			;aba0
	rrca			;aba1
	inc b			;aba2
	ret p			;aba3
	inc b			;aba4
	rrca			;aba5
	inc bc			;aba6
	rst 38h			;aba7
	ld (bc),a		;aba8
	ret p			;aba9
	inc b			;abaa
	rrca			;abab
	ld (bc),a		;abac
	nop			;abad
	nop			;abae
	ld b,00ch		;abaf
	add a,d			;abb1
	dec bc			;abb2
	push bc			;abb3
	dec b			;abb4
	inc c			;abb5
	inc bc			;abb6
	ld e,e			;abb7
	dec b			;abb8
	ret nz			;abb9
	add a,e			;abba
	cp h			;abbb
	ld e,e			;abbc
	ld e,e			;abbd
	ld b,00ch		;abbe
	ld (bc),a		;abc0
	ld e,e			;abc1
	ld b,00ch		;abc2
	add a,d			;abc4
	res 6,l			;abc5
	inc bc			;abc7
	ret nz			;abc8
	adc a,b			;abc9
	or b			;abca
	ld d,b			;abcb
	cp h			;abcc
	cp h			;abcd
	ld d,b			;abce
	cp e			;abcf
	ld e,h			;abd0
	or b			;abd1
	dec b			;abd2
	ret nz			;abd3
	adc a,e			;abd4
	or b			;abd5
	ld d,b			;abd6
	cp h			;abd7
	cp h			;abd8
	ld d,b			;abd9
	or b			;abda
	ret nz			;abdb
	ret nz			;abdc
	or l			;abdd
	or l			;abde
	rlc l			;abdf
	inc c			;abe1
	add a,h			;abe2
	res 6,l			;abe3
	or l			;abe5
	rrc c			;abe6
	inc c			;abe8
	adc a,c			;abe9
	dec bc			;abea
	push bc			;abeb
	cp e			;abec
	inc c			;abed
	dec bc			;abee
	push bc			;abef
	cp e			;abf0
	ld e,h			;abf1
	or b			;abf2
	ex af,af'		;abf3
	ret nz			;abf4
	add a,d			;abf5
	cp h			;abf6
	ld e,e			;abf7
	ld b,0c0h		;abf8
	add a,d			;abfa
	or b			;abfb
	ld e,h			;abfc
	inc b			;abfd
	ret nz			;abfe
	add a,e			;abff
	cp h			;ac00
	ld e,e			;ac01
	ld e,e			;ac02
	inc bc			;ac03
	cp h			;ac04
	ld (bc),a		;ac05
	ld e,e			;ac06
	inc b			;ac07
	inc c			;ac08
	add a,a			;ac09
	or b			;ac0a
	ld d,b			;ac0b
	or b			;ac0c
	call z,0050bh		;ac0d
	dec bc			;ac10
	inc b			;ac11
	inc c			;ac12
	add a,h			;ac13
	dec bc			;ac14
	push bc			;ac15
	cp e			;ac16
	ld e,h			;ac17
	ld b,0b0h		;ac18
	ld (bc),a		;ac1a
	cp h			;ac1b
	add a,(hl)		;ac1c
	ld e,e			;ac1d
	dec bc			;ac1e
	push bc			;ac1f
	cp e			;ac20
	ld e,h			;ac21
	or b			;ac22
	ld b,0c0h		;ac23
	inc bc			;ac25
	or l			;ac26
	ex af,af'		;ac27
	ret nz			;ac28
	add a,d			;ac29
	res 6,l			;ac2a
	ld b,0c0h		;ac2c
	ld (bc),a		;ac2e
	cp h			;ac2f
	ld (bc),a		;ac30
	ret nz			;ac31
	adc a,d			;ac32
	or b			;ac33
	ld d,b			;ac34
	cp h			;ac35
	cp h			;ac36
	ld d,b			;ac37
	or b			;ac38
	set 1,e			;ac39
	dec b			;ac3b
	dec bc			;ac3c
	inc b			;ac3d
	inc c			;ac3e
	add a,l			;ac3f
	ld d,b			;ac40
	cp h			;ac41
	cp h			;ac42
	ld d,b			;ac43
	or b			;ac44
	inc bc			;ac45
	ret nz			;ac46
	nop			;ac47
	dec b			;ac48
	nop			;ac49
	inc bc			;ac4a
	rrca			;ac4b
	nop			;ac4c
	ld b,0c0h		;ac4d
	add a,d			;ac4f
	or b			;ac50
	ld d,b			;ac51
	nop			;ac52
	dec b			;ac53
	nop			;ac54
	ld (bc),a		;ac55
	rrca			;ac56
	add a,c			;ac57
	ret p			;ac58
	inc b			;ac59
	nop			;ac5a
	ld (bc),a		;ac5b
	rrca			;ac5c
	ld b,0f0h		;ac5d
	ex af,af'		;ac5f
	nop			;ac60
	inc b			;ac61
	rrca			;ac62
	add a,h			;ac63
	ret p			;ac64
	rst 38h			;ac65
	nop			;ac66
	nop			;ac67
	dec b			;ac68
	rst 38h			;ac69
	ld b,0f0h		;ac6a
	inc b			;ac6c
	rrca			;ac6d
	inc b			;ac6e
	ret p			;ac6f
	add a,c			;ac70
	rst 38h			;ac71
	rlca			;ac72
	ret p			;ac73
	add a,c			;ac74
	nop			;ac75
	ld b,00fh		;ac76
	ld (bc),a		;ac78
	ret p			;ac79
	ld (bc),a		;ac7a
	rst 38h			;ac7b
	inc bc			;ac7c
	ret p			;ac7d
	add hl,bc		;ac7e
	rrca			;ac7f
	sub l			;ac80
	nop			;ac81
	rrca			;ac82
	ret p			;ac83
	nop			;ac84
	rst 38h			;ac85
	rst 38h			;ac86
	nop			;ac87
	rst 38h			;ac88
	rst 38h			;ac89
	nop			;ac8a
	rrca			;ac8b
	rrca			;ac8c
	ret p			;ac8d
	ret p			;ac8e
	ret m			;ac8f
	rrca			;ac90
	nop			;ac91
	nop			;ac92
	rrca			;ac93
	nop			;ac94
	nop			;ac95
	inc bc			;ac96
	rrca			;ac97
	inc bc			;ac98
	ret p			;ac99
	ld (bc),a		;ac9a
	rrca			;ac9b
	add a,d			;ac9c
	nop			;ac9d
	ret p			;ac9e
	inc bc			;ac9f
	rrca			;aca0
	adc a,b			;aca1
	rst 38h			;aca2
	nop			;aca3
	rst 38h			;aca4
	rst 38h			;aca5
	nop			;aca6
	nop			;aca7
	rst 38h			;aca8
	rst 38h			;aca9
	nop			;acaa
	inc b			;acab
	ld d,b			;acac
	ld (bc),a		;acad
	cp h			;acae
	ld (bc),a		;acaf
	ld e,e			;acb0
	dec b			;acb1
	ret nz			;acb2
	ld (bc),a		;acb3
	cp h			;acb4
	add a,h			;acb5
	ld e,e			;acb6
	push bc			;acb7
	ld e,e			;acb8
	cp h			;acb9
	ld a,(bc)		;acba
	ret nz			;acbb
	add a,(hl)		;acbc
	cp h			;acbd
	ld e,e			;acbe
	cp h			;acbf
	cp h			;acc0
	ld e,e			;acc1
	ld e,e			;acc2
	rlca			;acc3
	inc c			;acc4
	adc a,h			;acc5
	dec bc			;acc6
	push bc			;acc7
	cp e			;acc8
	ld e,h			;acc9
	cp h			;acca
	cp h			;accb
	dec bc			;accc
	inc c			;accd
	set 1,e			;acce
	dec b			;acd0
	dec bc			;acd1
	inc bc			;acd2
	inc c			;acd3
	sbc a,h			;acd4
	dec bc			;acd5
	push bc			;acd6
	cp e			;acd7
	ld e,h			;acd8
	or b			;acd9
	ret nz			;acda
	ret nz			;acdb
	push bc			;acdc
	dec bc			;acdd
	inc c			;acde
	inc c			;acdf
	res 6,l			;ace0
	or l			;ace2
	set 1,e			;ace3
	inc c			;ace5
	inc c			;ace6
	res 6,l			;ace7
	or l			;ace9
	rrc h			;acea
	dec bc			;acec
	push bc			;aced
	cp e			;acee
	ld e,h			;acef
	or b			;acf0
	ld b,0c0h		;acf1
	inc bc			;acf3
	or l			;acf4
	ld (bc),a		;acf5
	ret nz			;acf6
	add a,l			;acf7
	or l			;acf8
	set 1,e			;acf9
	or l			;acfb
	rlc a			;acfc
	ret nz			;acfe
	adc a,h			;acff
	cp h			;ad00
	ld e,e			;ad01
	ld e,e			;ad02
	cp h			;ad03
	ld e,e			;ad04
	ld e,e			;ad05
	cp h			;ad06
	cp h			;ad07
	or l			;ad08
	or l			;ad09
	rrc h			;ad0a
	inc bc			;ad0c
	or l			;ad0d
	ld (bc),a		;ad0e
	push bc			;ad0f
	ld (bc),a		;ad10
	res 0,c			;ad11
	inc c			;ad13
	nop			;ad14
	ld (bc),a		;ad15
	rst 38h			;ad16
	inc bc			;ad17
	rrca			;ad18
	rlca			;ad19
	ret p			;ad1a
	inc b			;ad1b
	rrca			;ad1c
	inc bc			;ad1d
	rst 38h			;ad1e
	dec b			;ad1f
	ret p			;ad20
	add a,c			;ad21
	nop			;ad22
	inc bc			;ad23
	ret p			;ad24
	inc bc			;ad25
	rrca			;ad26
	add a,d			;ad27
	nop			;ad28
	ret p			;ad29
	inc b			;ad2a
	rrca			;ad2b
	inc bc			;ad2c
	rst 38h			;ad2d
	dec b			;ad2e
	rrca			;ad2f
	inc bc			;ad30
	nop			;ad31
	ld (bc),a		;ad32
	ret p			;ad33
	inc b			;ad34
	rrca			;ad35
	ld (bc),a		;ad36
	rst 38h			;ad37
	nop			;ad38
	inc bc			;ad39
	inc c			;ad3a
	adc a,h			;ad3b
	res 6,l			;ad3c
	or l			;ad3e
	rrc h			;ad3f
	inc c			;ad41
	dec bc			;ad42
	dec b			;ad43
	set 1,e			;ad44
	dec b			;ad46
	dec bc			;ad47
	dec b			;ad48
	inc c			;ad49
	sub b			;ad4a
	dec bc			;ad4b
	push bc			;ad4c
	cp e			;ad4d
	ld e,h			;ad4e
	ret nz			;ad4f
	ret nz			;ad50
	cp h			;ad51
	ld e,e			;ad52
	ld e,e			;ad53
	cp h			;ad54
	ret nz			;ad55
	ret nz			;ad56
	set 1,e			;ad57
	push bc			;ad59
	dec bc			;ad5a
	inc b			;ad5b
	inc c			;ad5c
	add a,h			;ad5d
	push bc			;ad5e
	cp e			;ad5f
	ld e,h			;ad60
	cp h			;ad61
	inc b			;ad62
	ret nz			;ad63
	add a,l			;ad64
	push bc			;ad65
	set 1,e			;ad66
	or l			;ad68
	rlc e			;ad69
	inc c			;ad6b
	nop			;ad6c
	ld (bc),a		;ad6d
	rrca			;ad6e
	add a,e			;ad6f
	rlca			;ad70
	ld a,a			;ad71
	rlca			;ad72
	inc bc			;ad73
	rrca			;ad74
	ld (bc),a		;ad75
	rst 38h			;ad76
	add a,e			;ad77
	nop			;ad78
	ret m			;ad79
	ret m			;ad7a
	inc bc			;ad7b
	rst 38h			;ad7c
	ld (bc),a		;ad7d
	add a,b			;ad7e
	add a,c			;ad7f
	nop			;ad80
	inc bc			;ad81
	rlca			;ad82
	sub d			;ad83
	add a,b			;ad84
	call m,0fffeh		;ad85
	rst 38h			;ad88
	cp 0feh			;ad89
	nop			;ad8b
	nop			;ad8c
	cp 07eh			;ad8d
	ccf			;ad8f
	rra			;ad90
	rra			;ad91
	rst 38h			;ad92
	rst 38h			;ad93
	rra			;ad94
	rra			;ad95
	inc bc			;ad96
	nop			;ad97
	adc a,d			;ad98
	ld a,(hl)		;ad99
	ld a,h			;ad9a
	jr c,lae19h		;ad9b
	jr c,lada2h		;ad9d
	rra			;ad9f
	inc bc			;ada0
	nop			;ada1
lada2h:
	add a,b			;ada2
	inc bc			;ada3
	ret nz			;ada4
	adc a,b			;ada5
	rst 38h			;ada6
	ld a,a			;ada7
	rrca			;ada8
	ld a,a			;ada9
	rrca			;adaa
	ld bc,00000h		;adab
	inc b			;adae
	rst 38h			;adaf
	sub h			;adb0
	rra			;adb1
	nop			;adb2
	ccf			;adb3
	nop			;adb4
	call m,000f0h		;adb5
	nop			;adb8
	ret m			;adb9
	nop			;adba
	call m,0fc00h		;adbb
	ret m			;adbe
	ret po			;adbf
	cp 0f8h			;adc0
	ret nz			;adc2
	call m,008c0h		;adc3
	rra			;adc6
	inc bc			;adc7
	rlca			;adc8
	add a,c			;adc9
	inc bc			;adca
	inc bc			;adcb
	ld a,a			;adcc
	add a,l			;adcd
	jr nz,lae4fh		;adce
	ld a,000h		;add0
	cp 003h			;add2
	ret p			;add4
	adc a,c			;add5
	nop			;add6
	ret m			;add7
	ret po			;add8
	add a,b			;add9
	ret p			;adda
	ret p			;addb
	nop			;addc
	rlca			;addd
	rlca			;adde
	ld b,000h		;addf
	sub e			;ade1
	rrca			;ade2
	rst 38h			;ade3
	inc a			;ade4
	ld a,a			;ade5
	cp 0fch			;ade6
	ret m			;ade8
	ret p			;ade9
	ret nz			;adea
	rrca			;adeb
	add a,b			;adec
	ld bc,00f06h		;aded
	ccf			;adf0
	ld a,a			;adf1
	ld a,a			;adf2
	rra			;adf3
	rrca			;adf4
	inc bc			;adf5
	rra			;adf6
	inc bc			;adf7
	ret po			;adf8
	ld (bc),a		;adf9
	rst 38h			;adfa
	inc b			;adfb
	ret p			;adfc
	inc bc			;adfd
	rra			;adfe
	inc bc			;adff
	rrca			;ae00
	ld (bc),a		;ae01
	rst 38h			;ae02
	adc a,l			;ae03
	rrca			;ae04
	nop			;ae05
	rlca			;ae06
	rlca			;ae07
	rst 38h			;ae08
	rst 38h			;ae09
	ld bc,00001h		;ae0a
	nop			;ae0d
	rrca			;ae0e
	ld e,07fh		;ae0f
	inc b			;ae11
	rst 38h			;ae12
	add a,e			;ae13
	rra			;ae14
	nop			;ae15
	ret m			;ae16
	ld b,0ffh		;ae17
lae19h:
	adc a,l			;ae19
	inc a			;ae1a
	nop			;ae1b
	call m,0fce0h		;ae1c
	cp 0ffh			;ae1f
	rst 38h			;ae21
	call m,0fce0h		;ae22
	ret p			;ae25
	cp 003h			;ae26
	rst 38h			;ae28
	sub l			;ae29
	rra			;ae2a
	ret nz			;ae2b
	ret p			;ae2c
	call m,0dcc0h		;ae2d
	add a,b			;ae30
	adc a,(hl)		;ae31
	rra			;ae32
	nop			;ae33
	nop			;ae34
	ld a,a			;ae35
	rlca			;ae36
	nop			;ae37
	rra			;ae38
	inc bc			;ae39
	ret p			;ae3a
	rst 38h			;ae3b
	rst 38h			;ae3c
	call m,003f0h		;ae3d
	nop			;ae40
	sub b			;ae41
	ld a,a			;ae42
	sbc a,a			;ae43
	ld a,a			;ae44
	inc bc			;ae45
	rlca			;ae46
	rlca			;ae47
	inc bc			;ae48
	ld a,a			;ae49
	rra			;ae4a
	ld c,000h		;ae4b
	ret nz			;ae4d
	ret m			;ae4e
lae4fh:
	nop			;ae4f
	rlca			;ae50
	rlca			;ae51
	inc b			;ae52
	rst 38h			;ae53
	inc bc			;ae54
	nop			;ae55
	ld (bc),a		;ae56
	rst 38h			;ae57
	ld (bc),a		;ae58
	nop			;ae59
	sbc a,(hl)		;ae5a
	ld bc,0000fh		;ae5b
	ret p			;ae5e
	ret p			;ae5f
	rst 38h			;ae60
	rst 38h			;ae61
	inc bc			;ae62
	rlca			;ae63
	nop			;ae64
	ret nz			;ae65
	ret nz			;ae66
	rst 38h			;ae67
	rst 38h			;ae68
	call m,0fcc0h		;ae69
	nop			;ae6c
	nop			;ae6d
	ret p			;ae6e
	nop			;ae6f
	nop			;ae70
	ld a,a			;ae71
	rlca			;ae72
	nop			;ae73
	rra			;ae74
	ld bc,0f0f0h		;ae75
	sbc a,a			;ae78
	inc bc			;ae79
	ccf			;ae7a
	adc a,b			;ae7b
	ld a,a			;ae7c
	rra			;ae7d
	rrca			;ae7e
	inc bc			;ae7f
	add a,b			;ae80
	ld bc,0001fh		;ae81
	dec b			;ae84
	ret p			;ae85
	add a,c			;ae86
	ld bc,0f004h		;ae87
	adc a,l			;ae8a
	call m,080f0h		;ae8b
	ret nz			;ae8e
	ret nz			;ae8f
	ret p			;ae90
	ret p			;ae91
	inc c			;ae92
	rrca			;ae93
	di			;ae94
	ret m			;ae95
	nop			;ae96
	nop			;ae97
	inc bc			;ae98
	ret p			;ae99
	inc bc			;ae9a
	rrca			;ae9b
	add a,d			;ae9c
	ret p			;ae9d
	nop			;ae9e
	inc bc			;ae9f
	rrca			;aea0
	rlca			;aea1
	ret p			;aea2
	add a,c			;aea3
	rrca			;aea4
	inc bc			;aea5
	ret po			;aea6
	inc bc			;aea7
	ret p			;aea8
	dec b			;aea9
	rrca			;aeaa
	add a,(hl)		;aeab
	rst 38h			;aeac
	nop			;aead
	rst 38h			;aeae
	rst 38h			;aeaf
	ret p			;aeb0
	ret p			;aeb1
	inc b			;aeb2
	rrca			;aeb3
	ld (bc),a		;aeb4
	ret p			;aeb5
	ld (bc),a		;aeb6
	rrca			;aeb7
	ld b,0f0h		;aeb8
	ld (bc),a		;aeba
	rrca			;aebb
	add a,e			;aebc
	ret m			;aebd
	rst 38h			;aebe
	ret p			;aebf
	inc b			;aec0
	rrca			;aec1
	inc bc			;aec2
	rst 38h			;aec3
	add a,d			;aec4
	ccf			;aec5
	rlca			;aec6
	inc bc			;aec7
	rrca			;aec8
	ld (bc),a		;aec9
	ret p			;aeca
	ld (bc),a		;aecb
	nop			;aecc
	adc a,b			;aecd
	ret m			;aece
	rrca			;aecf
	rrca			;aed0
	ret p			;aed1
	ret p			;aed2
	rrca			;aed3
	rst 38h			;aed4
	ret p			;aed5
	rlca			;aed6
	rrca			;aed7
	add a,h			;aed8
	ld a,(hl)		;aed9
	ccf			;aeda
	rra			;aedb
	rst 38h			;aedc
	inc b			;aedd
	rra			;aede
	adc a,c			;aedf
	cp 0f8h			;aee0
	rrca			;aee2
	rst 38h			;aee3
	rst 38h			;aee4
	nop			;aee5
	ex af,af'		;aee6
	rst 38h			;aee7
	rst 38h			;aee8
	inc b			;aee9
	ret p			;aeea
	add a,e			;aeeb
	nop			;aeec
	rlca			;aeed
	rlca			;aeee
	nop			;aeef
	ld (bc),a		;aef0
	ld (02183h),a		;aef1
	di			;aef4
	ld b,e			;aef5
	inc bc			;aef6
	ld (04303h),a		;aef7
	add a,c			;aefa
	jp p,04f04h		;aefb
	inc bc			;aefe
	ld b,e			;aeff
	add a,l			;af00
	ld (0f42fh),a		;af01
	ld b,e			;af04
	ld (02104h),a		;af05
	ld (bc),a		;af08
	rra			;af09
	add a,d			;af0a
	inc sp			;af0b
	ld hl,0f106h		;af0c
	add a,c			;af0f
	jp p,0f104h		;af10
	add a,d			;af13
	ld hl,00332h		;af14
	ld b,e			;af17
	add a,c			;af18
	ld (02107h),a		;af19
	inc bc			;af1c
	ld (02106h),a		;af1d
	dec b			;af20
	ld (02102h),a		;af21
	inc b			;af24
	ld b,e			;af25
	ld (bc),a		;af26
	ld (02102h),a		;af27
	inc bc			;af2a
	ld (02103h),a		;af2b
	ld a,(bc)		;af2e
	djnz laf35h		;af2f
	ld (02104h),a		;af31
	inc bc			;af34
laf35h:
	ld b,e			;af35
	ld (bc),a		;af36
	ld (02183h),a		;af37
	rra			;af3a
	rra			;af3b
	inc bc			;af3c
	ld (02181h),a		;af3d
	inc bc			;af40
	rra			;af41
	add a,c			;af42
	ld hl,0f008h		;af43
	add a,c			;af46
	ld (02108h),a		;af47
	ld (bc),a		;af4a
	pop af			;af4b
	dec b			;af4c
	ld hl,0f002h		;af4d
	add a,h			;af50
	ld de,02323h		;af51
	ld (de),a		;af54
	inc b			;af55
	pop af			;af56
	adc a,b			;af57
	ld (de),a		;af58
	inc hl			;af59
	inc (hl)		;af5a
	ld (01f21h),a		;af5b
	rra			;af5e
	ld hl,03205h		;af5f
	add a,c			;af62
	ld hl,03203h		;af63
	inc b			;af66
	ld b,e			;af67
	add a,c			;af68
	ld (04310h),a		;af69
	ld (bc),a		;af6c
	ld (04306h),a		;af6d
	ld (bc),a		;af70
	ld (04306h),a		;af71
	inc bc			;af74
	jr nz,$+4		;af75
	ld (04305h),a		;af77
	inc bc			;af7a
	ld (02102h),a		;af7b
	add a,c			;af7e
	pop af			;af7f
	rlca			;af80
	ld (02183h),a		;af81
	ld (00432h),a		;af84
	ld b,e			;af87
	ld (bc),a		;af88
	ld (04302h),a		;af89
	add a,(hl)		;af8c
	ld (02121h),a		;af8d
	pop af			;af90
	rrca			;af91
	rrca			;af92
	inc b			;af93
	ld (0f103h),a		;af94
	inc bc			;af97
	inc bc			;af98
	adc a,e			;af99
	ld (02121h),a		;af9a
	pop af			;af9d
	rrca			;af9e
	rrca			;af9f
	ld (02132h),a		;afa0
	ld hl,003f1h		;afa3
	rrca			;afa6
	ld (bc),a		;afa7
	ld (02103h),a		;afa8
	inc bc			;afab
	ret p			;afac
	inc bc			;afad
	ld (02102h),a		;afae
	and d			;afb1
	pop af			;afb2
	rst 8			;afb3
	or l			;afb4
	pop af			;afb5
	rst 8			;afb6
	cp h			;afb7
	ld d,d			;afb8
	or d			;afb9
	jp nz,032c2h		;afba
	ld (02121h),a		;afbd
	pop af			;afc0
	rst 8			;afc1
	ld e,h			;afc2
	cp e			;afc3
	push bc			;afc4
	ld hl,0cff1h		;afc5
	ld e,e			;afc8
	cp h			;afc9
	ret nz			;afca
	ret nz			;afcb
	or b			;afcc
	pop af			;afcd
	rst 8			;afce
	push bc			;afcf
	cp e			;afd0
	push bc			;afd1
	set 1,e			;afd2
	inc b			;afd4
	ret nz			;afd5
	add a,h			;afd6
	cp h			;afd7
	ld e,e			;afd8
	ld e,e			;afd9
	cp h			;afda
	inc b			;afdb
	ret nz			;afdc
	sub l			;afdd
	cp h			;afde
	ld e,e			;afdf
	ld e,e			;afe0
	cp h			;afe1
	ret nz			;afe2
	push bc			;afe3
	cp e			;afe4
	ld e,h			;afe5
	cp h			;afe6
	cp h			;afe7
	or l			;afe8
	rrc h			;afe9
	inc c			;afeb
	res 6,l			;afec
	or l			;afee
	bit 3,h			;afef
	cp h			;aff1
	ret nz			;aff2
	inc bc			;aff3
	or l			;aff4
	ld (bc),a		;aff5
	rlc d			;aff6
	or l			;aff8
	ld (bc),a		;aff9
	rlc d			;affa
	or l			;affc
	ld (bc),a		;affd
	rlc d			;affe
	inc c			;b000
lb001h:
	add a,(hl)		;b001
	dec bc			;b002
	rst 8			;b003
	inc c			;b004
	res 6,l			;b005
	or l			;b007
	dec b			;b008
	res 0,d			;b009
	dec b			;b00b
	dec bc			;b00c
	inc b			;b00d
	inc c			;b00e
	ld (bc),a		;b00f
	ret p			;b010
	adc a,e			;b011
	ret nz			;b012
	cp h			;b013
	ld e,e			;b014
	ld e,e			;b015
	cp h			;b016
lb017h:
	cp h			;b017
	pop af			;b018
	pop af			;b019
	ei			;b01a
	or l			;b01b
	or l			;b01c
	dec b			;b01d
	res 2,h			;b01e
	push bc			;b020
	cp e			;b021
	ld e,h			;b022
	cp e			;b023
	push bc			;b024
	set 6,c			;b025
	ret m			;b027
	defb 0fdh,0fdh,0f8h ;illegal sequence	;b028
	defb 0fdh,0fdh,0f8h ;illegal sequence	;b02b
	ld hl,0fdf1h		;b02e
	defb 0fdh,08dh ;adc a,iyl	;b031
	adc a,l			;b033
	inc bc			;b034
	ret m			;b035
	add a,e			;b036
	ld b,e			;b037
	ld (00321h),a		;b038
	rra			;b03b
	add a,c			;b03c
	ld hl,00200h		;b03d
	nop			;b040
	dec b			;b041
	rrca			;b042
	adc a,l			;b043
	rlca			;b044
	ret po			;b045
	rst 38h			;b046
	nop			;b047
	ld bc,0ffffh		;b048
	ld a,a			;b04b
	ld h,b			;b04c
	rst 38h			;b04d
	nop			;b04e
	nop			;b04f
	rst 38h			;b050
	inc bc			;b051
	ret p			;b052
	ld (bc),a		;b053
	nop			;b054
	add a,e			;b055
	inc bc			;b056
	rra			;b057
	rst 38h			;b058
	inc bc			;b059
	ret p			;b05a
	inc bc			;b05b
	nop			;b05c
	sub d			;b05d
	rst 38h			;b05e
	ld bc,0ffffh		;b05f
	ld a,a			;b062
	ld h,b			;b063
	add a,b			;b064
	cp 07eh			;b065
	ld a,(hl)		;b067
	rlca			;b068
	ccf			;b069
	ret m			;b06a
	ret m			;b06b
	nop			;b06c
	inc bc			;b06d
	rra			;b06e
	rst 38h			;b06f
	inc bc			;b070
	ret p			;b071
	add a,h			;b072
	nop			;b073
	cp 07fh			;b074
	ccf			;b076
	inc bc			;b077
	rra			;b078
	add a,(hl)		;b079
	ccf			;b07a
	ld a,a			;b07b
	ld a,(hl)		;b07c
	ccf			;b07d
	rra			;b07e
	rst 38h			;b07f
	inc bc			;b080
	rra			;b081
	ld (bc),a		;b082
	rst 38h			;b083
	add a,h			;b084
	rra			;b085
	nop			;b086
	ret p			;b087
	ret p			;b088
	inc bc			;b089
	rst 38h			;b08a
	nop			;b08b
	inc bc			;b08c
	ret p			;b08d
	add a,c			;b08e
	jr nz,$+6		;b08f
	djnz lb017h		;b091
	defb 0fdh,00fh,00fh ;illegal sequence	;b093
	ld b,e			;b096
	inc b			;b097
	ld hl,00f02h		;b098
	ld (bc),a		;b09b
	inc (hl)		;b09c
	add a,h			;b09d
	ld (01f21h),a		;b09e
	rra			;b0a1
	inc b			;b0a2
	ret p			;b0a3
	add a,h			;b0a4
	pop af			;b0a5
	ld (de),a		;b0a6
	inc hl			;b0a7
	inc hl			;b0a8
	inc bc			;b0a9
	ret p			;b0aa
	add a,c			;b0ab
	ld b,e			;b0ac
	inc b			;b0ad
	ld hl,0e802h		;b0ae
	ld (bc),a		;b0b1
	ret c			;b0b2
	ld (bc),a		;b0b3
	defb 0fdh,08bh,0f1h ;illegal sequence	;b0b4
	ld (de),a		;b0b7
	defb 0fdh,0fdh,0f8h ;illegal sequence	;b0b8
	ret m			;b0bb
	pop af			;b0bc
	ld (de),a		;b0bd
	inc hl			;b0be
	inc hl			;b0bf
	pop af			;b0c0
	rlca			;b0c1
	ret p			;b0c2
	inc b			;b0c3
	pop af			;b0c4
	add a,c			;b0c5
	ret m			;b0c6
	inc bc			;b0c7
	defb 0fdh,003h,021h ;illegal sequence	;b0c8
	add a,c			;b0cb
	pop af			;b0cc
	inc b			;b0cd
	rrca			;b0ce
	nop			;b0cf
	add a,c			;b0d0
	rst 38h			;b0d1
	inc b			;b0d2
	add a,c			;b0d3
	adc a,e			;b0d4
	add a,b			;b0d5
	cp 080h			;b0d6
	ex af,af'		;b0d8
	rst 38h			;b0d9
	ld bc,0ffffh		;b0da
	nop			;b0dd
	ex af,af'		;b0de
	rst 38h			;b0df
	nop			;b0e0
	inc bc			;b0e1
	adc a,l			;b0e2
	add a,d			;b0e3
	rst 18h			;b0e4
	adc a,l			;b0e5
	inc bc			;b0e6
	ret pe			;b0e7
	ld (bc),a		;b0e8
	ret m			;b0e9
	ld (bc),a		;b0ea
	defb 0fdh,002h,08dh ;illegal sequence	;b0eb
	ld (bc),a		;b0ee
	ret m			;b0ef
	nop			;b0f0
	dec b			;b0f1
	rst 38h			;b0f2
	add a,e			;b0f3
	rst 30h			;b0f4
	ret m			;b0f5
	rrca			;b0f6
	inc b			;b0f7
	nop			;b0f8
	add a,h			;b0f9
	rlca			;b0fa
	inc bc			;b0fb
	jp 003feh		;b0fc
	nop			;b0ff
	add a,l			;b100
	ld bc,0f800h		;b101
	ld b,a			;b104
	djnz lb10ah		;b105
	nop			;b107
	sub l			;b108
	add a,b			;b109
lb10ah:
	ld a,b			;b10a
	jr c,lb125h		;b10b
	inc a			;b10d
	nop			;b10e
	jr nc,lb11fh		;b10f
	ret nz			;b111
	nop			;b112
	ld e,07ch		;b113
	jr c,lb117h		;b115
lb117h:
	nop			;b117
	add a,b			;b118
	ccf			;b119
	ccf			;b11a
	ld a,03ch		;b11b
	inc a			;b11d
	inc bc			;b11e
lb11fh:
	nop			;b11f
	or l			;b120
	ret nz			;b121
	cp a			;b122
	nop			;b123
	nop			;b124
lb125h:
	rrca			;b125
	ld c,003h		;b126
	rrca			;b128
	rrca			;b129
	rst 38h			;b12a
	call po,0fe3eh		;b12b
	nop			;b12e
	ret nz			;b12f
	ret m			;b130
	rst 38h			;b131
	ld h,b			;b132
	rst 38h			;b133
	ld a,h			;b134
	cp 080h			;b135
	ret po			;b137
	add a,b			;b138
	ld (bc),a		;b139
	ld a,d			;b13a
	ld (bc),a		;b13b
	jr c,lb1bah		;b13c
lb13eh:
	nop			;b13e
	ret po			;b13f
	call m,0f880h		;b140
	ld a,(hl)		;b143
	ld a,b			;b144
	ld a,h			;b145
	ret nz			;b146
	rrca			;b147
	rra			;b148
	jr lb13eh		;b149
	rra			;b14b
	inc bc			;b14c
	ld a,a			;b14d
	nop			;b14e
	nop			;b14f
	ret m			;b150
	dec b			;b151
	sbc a,c			;b152
	ret nz			;b153
	ret nz			;b154
	ret p			;b155
	inc b			;b156
	nop			;b157
	add a,h			;b158
	ret nz			;b159
	pop bc			;b15a
	call m,0040fh		;b15b
	nop			;b15e
	add a,h			;b15f
	ex af,af'		;b160
	adc a,h			;b161
	add a,0e7h		;b162
	inc bc			;b164
	nop			;b165
	add a,l			;b166
	ex af,af'		;b167
	ld b,003h		;b168
	pop hl			;b16a
	jp po,00005h		;b16b
	add a,e			;b16e
	ld b,b			;b16f
	jr c,$+17		;b170
	inc bc			;b172
	nop			;b173
	add a,d			;b174
	ld b,001h		;b175
	inc bc			;b177
	rrca			;b178
	add a,e			;b179
	nop			;b17a
	jr lb184h		;b17b
	inc bc			;b17d
	rrca			;b17e
	ld (bc),a		;b17f
	jp po,08888h		;b180
	ret z			;b183
lb184h:
	call pe,0fefeh		;b184
	jr nz,lb1a1h		;b187
	adc a,h			;b189
	inc b			;b18a
	nop			;b18b
	inc bc			;b18c
	ld b,b			;b18d
	add a,c			;b18e
	ret nz			;b18f
	inc b			;b190
	nop			;b191
	adc a,h			;b192
	rlca			;b193
	inc bc			;b194
	rra			;b195
	ld a,a			;b196
	ld bc,00e30h		;b197
	ret nz			;b19a
	nop			;b19b
	ld e,07ch		;b19c
	jr c,lb1a3h		;b19e
	ret nz			;b1a0
lb1a1h:
	or d			;b1a1
	add a,b			;b1a2
lb1a3h:
	and b			;b1a3
	ret nz			;b1a4
	ret nz			;b1a5
	add a,b			;b1a6
	ld bc,00303h		;b1a7
	rlca			;b1aa
	rrca			;b1ab
	rra			;b1ac
	rra			;b1ad
	ccf			;b1ae
	ret m			;b1af
	call m,000ceh		;b1b0
	nop			;b1b3
	cp 000h			;b1b4
	nop			;b1b6
	ld e,03dh		;b1b7
	inc a			;b1b9
lb1bah:
	nop			;b1ba
	sbc a,0f0h		;b1bb
	nop			;b1bd
	nop			;b1be
	inc e			;b1bf
	adc a,l			;b1c0
	rlca			;b1c1
	rra			;b1c2
	rlca			;b1c3
	rlca			;b1c4
	ld e,038h		;b1c5
	ex af,af'		;b1c7
	ret nz			;b1c8
	ld bc,0f3c2h		;b1c9
	pop bc			;b1cc
	ld bc,03f00h		;b1cd
	rrca			;b1d0
lb1d1h:
	add a,a			;b1d1
	ret p			;b1d2
	jr nc,$+5		;b1d3
	nop			;b1d5
	add a,l			;b1d6
	call m,0c1e0h		;b1d7
	jr c,$+98		;b1da
	inc bc			;b1dc
	nop			;b1dd
	add a,l			;b1de
	ret po			;b1df
	pop bc			;b1e0
	inc bc			;b1e1
	inc b			;b1e2
	ex af,af'		;b1e3
	inc bc			;b1e4
	nop			;b1e5
	adc a,e			;b1e6
	inc e			;b1e7
	adc a,a			;b1e8
	adc a,a			;b1e9
	rst 38h			;b1ea
	inc bc			;b1eb
	inc bc			;b1ec
	nop			;b1ed
	nop			;b1ee
	jr c,lb1d1h		;b1ef
	add a,b			;b1f1
	dec b			;b1f2
	nop			;b1f3
	add a,h			;b1f4
	rlca			;b1f5
	jr c,lb258h		;b1f6
	add a,b			;b1f8
	inc b			;b1f9
	nop			;b1fa
	add a,l			;b1fb
	ld b,0f8h		;b1fc
	ret m			;b1fe
	cp 000h			;b1ff
	inc bc			;b201
	sbc a,a			;b202
	ld b,000h		;b203
	ld (bc),a		;b205
	ld a,(hl)		;b206
	add a,e			;b207
	ld a,038h		;b208
	jr nc,lb211h		;b20a
	nop			;b20c
	add a,c			;b20d
	ld h,b			;b20e
	inc bc			;b20f
	ret nz			;b210
lb211h:
	inc b			;b211
	nop			;b212
	adc a,(hl)		;b213
	ld bc,00307h		;b214
	ld bc,00f01h		;b217
	inc bc			;b21a
	rra			;b21b
	ret p			;b21c
	ret p			;b21d
	ret po			;b21e
	ret p			;b21f
	ret m			;b220
	ret p			;b221
	inc bc			;b222
	ret m			;b223
	add a,d			;b224
	ld a,a			;b225
	ccf			;b226
	add hl,bc		;b227
	nop			;b228
	ld (bc),a		;b229
	ret nz			;b22a
	xor (hl)		;b22b
	cp 0ffh			;b22c
	ld bc,00103h		;b22e
	ld bc,0030fh		;b231
	nop			;b234
	cp 03fh			;b235
	ccf			;b237
	rra			;b238
	rrca			;b239
	inc bc			;b23a
	ld bc,00000h		;b23b
	ld bc,01f07h		;b23e
	ccf			;b241
	ld a,a			;b242
	ld a,a			;b243
	ld bc,00103h		;b244
	inc bc			;b247
	inc bc			;b248
	rlca			;b249
	rrca			;b24a
	rra			;b24b
	ld a,a			;b24c
	cp 000h			;b24d
	inc bc			;b24f
	rlca			;b250
	rrca			;b251
	rra			;b252
	ccf			;b253
	ld a,a			;b254
	ld a,a			;b255
	inc bc			;b256
	rlca			;b257
lb258h:
	rrca			;b258
	rrca			;b259
	inc bc			;b25a
	rra			;b25b
	add a,c			;b25c
	ccf			;b25d
	ld b,000h		;b25e
	add a,d			;b260
	ccf			;b261
	rst 38h			;b262
	ld b,03fh		;b263
	add a,a			;b265
	ld e,000h		;b266
	nop			;b268
	rlca			;b269
	rlca			;b26a
	rra			;b26b
	ld a,a			;b26c
	add hl,bc		;b26d
	rst 38h			;b26e
	add a,h			;b26f
	ret m			;b270
	rrca			;b271
	rrca			;b272
	ccf			;b273
	ld b,0ffh		;b274
	sub c			;b276
	ld bc,00307h		;b277
	ld bc,00f01h		;b27a
	inc bc			;b27d
	ret po			;b27e
	ld bc,00307h		;b27f
	ld bc,00f01h		;b282
	inc bc			;b285
	inc bc			;b286
	rlca			;b287
	rlca			;b288
	nop			;b289
	rlca			;b28a
	and b			;b28b
	inc bc			;b28c
	nop			;b28d
	inc bc			;b28e
	dec sp			;b28f
	add a,e			;b290
	rst 38h			;b291
	nop			;b292
	nop			;b293
	nop			;b294
	rlca			;b295
	dec b			;b296
	dec b			;b297
	ld b,b			;b298
	add a,h			;b299
	ld d,b			;b29a
	ld b,b			;b29b
	ld d,h			;b29c
	ld d,h			;b29d
	dec b			;b29e
	ld b,b			;b29f
	add a,e			;b2a0
	ld d,b			;b2a1
	ld d,h			;b2a2
	sub h			;b2a3
	dec b			;b2a4
	ld b,b			;b2a5
	add a,(hl)		;b2a6
	ld d,h			;b2a7
	sub l			;b2a8
	sub l			;b2a9
	sub b			;b2aa
	sub b			;b2ab
	ld d,b			;b2ac
	inc b			;b2ad
	ld d,h			;b2ae
	add a,c			;b2af
	sub l			;b2b0
	inc bc			;b2b1
	ld d,b			;b2b2
	add a,l			;b2b3
	ld d,h			;b2b4
	ld b,b			;b2b5
	ld d,h			;b2b6
	sub l			;b2b7
	ld d,h			;b2b8
	inc b			;b2b9
	ld d,b			;b2ba
	inc b			;b2bb
	ld d,h			;b2bc
	add a,e			;b2bd
	sub b			;b2be
	ld b,b			;b2bf
	ld d,b			;b2c0
	dec b			;b2c1
	ld b,l			;b2c2
	inc b			;b2c3
	ld b,b			;b2c4
	ld (bc),a		;b2c5
	ld d,h			;b2c6
	ld (bc),a		;b2c7
	sub l			;b2c8
	add a,l			;b2c9
	ld b,b			;b2ca
	ld d,b			;b2cb
	call p,05454h		;b2cc
	inc bc			;b2cf
	sub l			;b2d0
	ld (bc),a		;b2d1
	ld d,b			;b2d2
	add a,c			;b2d3
	ld b,b			;b2d4
	inc bc			;b2d5
	ld d,h			;b2d6
	ld (bc),a		;b2d7
	sub l			;b2d8
	ld (bc),a		;b2d9
	sub b			;b2da
	add a,c			;b2db
	ld d,b			;b2dc
	dec b			;b2dd
	ld d,h			;b2de
	inc bc			;b2df
	sub b			;b2e0
	add a,l			;b2e1
	sub l			;b2e2
	ld d,h			;b2e3
	ld d,h			;b2e4
	sbc a,a			;b2e5
	defb 0fdh,005h,050h ;illegal sequence	;b2e6
	add a,e			;b2e9
	sub l			;b2ea
	call p,006fdh		;b2eb
	sub b			;b2ee
	add a,d			;b2ef
	sub l			;b2f0
	sub h			;b2f1
	ld b,090h		;b2f2
	add a,d			;b2f4
	sub l			;b2f5
	ld d,h			;b2f6
	ld b,090h		;b2f7
	dec b			;b2f9
	ld d,b			;b2fa
	ld (bc),a		;b2fb
	sub b			;b2fc
	adc a,l			;b2fd
	ret p			;b2fe
	call p,090dfh		;b2ff
	sub b			;b302
	ld d,b			;b303
	ld b,b			;b304
	ld sp,hl		;b305
	push de			;b306
	ret c			;b307
	adc a,(hl)		;b308
	ld d,b			;b309
	ld d,b			;b30a
	inc bc			;b30b
	ld b,b			;b30c
	inc bc			;b30d
	ld d,h			;b30e
	dec b			;b30f
	sub b			;b310
	add a,c			;b311
	ld d,b			;b312
	ld b,040h		;b313
	add a,c			;b315
	ld d,b			;b316
	inc bc			;b317
	ld b,b			;b318
	ld (bc),a		;b319
	sub b			;b31a
	add a,c			;b31b
	ld d,b			;b31c
	inc b			;b31d
	ld d,h			;b31e
	add a,c			;b31f
	sub l			;b320
	ex af,af'		;b321
	ld b,b			;b322
	add a,c			;b323
	ld d,b			;b324
	rlca			;b325
	ld b,b			;b326
	add a,c			;b327
	sub l			;b328
	inc b			;b329
	ld d,h			;b32a
	inc bc			;b32b
	ld d,b			;b32c
	ld (bc),a		;b32d
	sub h			;b32e
	ld (bc),a		;b32f
	ld d,h			;b330
	add a,c			;b331
	call p,0f003h		;b332
	add a,e			;b335
	ld d,h			;b336
	sub h			;b337
	ld d,h			;b338
	inc bc			;b339
lb33ah:
	ld b,b			;b33a
	ld (bc),a		;b33b
	ld d,b			;b33c
	inc b			;b33d
	ld d,h			;b33e
	adc a,b			;b33f
	ld b,b			;b340
	ld d,b			;b341
	sub b			;b342
	sub b			;b343
	call p,054f4h		;b344
	ld d,b			;b347
	inc b			;b348
	sub b			;b349
	ld (bc),a		;b34a
	call p,05482h		;b34b
	ld d,b			;b34e
	inc b			;b34f
	sub b			;b350
	add a,e			;b351
	ld d,h			;b352
	ld b,b			;b353
	ld d,b			;b354
	dec b			;b355
	sub b			;b356
	add a,h			;b357
	defb 0edh ;next byte illegal after ed	;b358
	ret c			;b359
	dec c			;b35a
	dec c			;b35b
	inc b			;b35c
	sub b			;b35d
	add a,c			;b35e
	ld d,h			;b35f
	ex af,af'		;b360
	ld d,b			;b361
	rlca			;b362
	sub b			;b363
	ld (bc),a		;b364
	ld d,h			;b365
	inc bc			;b366
	rrca			;b367
	add a,e			;b368
	call m,0fc8eh		;b369
	ex af,af'		;b36c
	ret nc			;b36d
	add a,d			;b36e
	ld b,b			;b36f
	ld d,b			;b370
	rlca			;b371
	sub b			;b372
	add a,c			;b373
	ld d,b			;b374
	ld b,090h		;b375
	ex af,af'		;b377
	ld b,b			;b378
	add a,c			;b379
	ld d,h			;b37a
	inc b			;b37b
	ld b,b			;b37c
	add a,h			;b37d
	ld d,h			;b37e
	sub l			;b37f
	ld d,h			;b380
	ld hl,0100ch		;b381
	inc bc			;b384
	ld hl,04005h		;b385
	ld (bc),a		;b388
	ld b,c			;b389
	add a,c			;b38a
	ld hl,02005h		;b38b
	inc bc			;b38e
	djnz lb397h		;b38f
	jr nz,$+4		;b391
	ld (02007h),a		;b393
	add a,e			;b396
lb397h:
	ld hl,01010h		;b397
	add hl,de		;b39a
	jr nz,$+7		;b39b
	djnz lb3a1h		;b39d
	ld (de),a		;b39f
	dec c			;b3a0
lb3a1h:
	ld bc,02081h		;b3a1
	ex af,af'		;b3a4
	ld bc,04006h		;b3a5
	add a,d			;b3a8
	ld b,c			;b3a9
	ld hl,04005h		;b3aa
	ld (bc),a		;b3ad
	ld b,c			;b3ae
	add a,c			;b3af
	ld (de),a		;b3b0
	ex af,af'		;b3b1
	djnz lb33ah		;b3b2
	ret nc			;b3b4
	ret nz			;b3b5
	add a,b			;b3b6
	ret po			;b3b7
	add a,b			;b3b8
	ret nz			;b3b9
	inc bc			;b3ba
	ret nc			;b3bb
	ld (bc),a		;b3bc
	rst 8			;b3bd
	add a,d			;b3be
	ret pe			;b3bf
	call 0f003h		;b3c0
	nop			;b3c3
	ret nz			;b3c4
	nop			;b3c5
	add a,b			;b3c6
	rlca			;b3c7
	jp p,0e2e2h		;b3c8
	jp nz,031c2h		;b3cb
	inc e			;b3ce
	ret po			;b3cf
	ld c,a			;b3d0
	ld b,a			;b3d1
	ld b,a			;b3d2
	ld b,e			;b3d3
	ld b,e			;b3d4
	rst 0			;b3d5
	ld bc,03966h		;b3d6
	ld sp,02073h		;b3d9
	halt			;b3dc
	ex af,af'		;b3dd
	ld (bc),a		;b3de
	jr $+128		;b3df
	jr $+62			;b3e1
	ld a,b			;b3e3
	ld a,l			;b3e4
	inc a			;b3e5
	ld a,(hl)		;b3e6
	inc e			;b3e7
	rlca			;b3e8
	rra			;b3e9
	ret p			;b3ea
	ret nz			;b3eb
	rst 38h			;b3ec
	ld a,(0077eh)		;b3ed
	ret p			;b3f0
	call m,05357h		;b3f1
	rst 38h			;b3f4
	sub c			;b3f5
	inc e			;b3f6
	jp po,03cf6h		;b3f7
	nop			;b3fa
	ld h,b			;b3fb
	inc sp			;b3fc
	ld a,(hl)		;b3fd
	jr $+62			;b3fe
	jr lb43eh		;b400
	inc a			;b402
	ld a,(hl)		;b403
	ld bc,07e03h		;b404
	and d			;b407
	ld a,a			;b408
	ld e,l			;b409
	ld b,c			;b40a
	ex (sp),hl		;b40b
	call m,0fe38h		;b40c
	ld a,h			;b40f
	ld a,h			;b410
	ld a,(hl)		;b411
	ret nz			;b412
	ret m			;b413
	ret nz			;b414
	ld a,(hl)		;b415
	ld a,(hl)		;b416
	ld a,h			;b417
	ret p			;b418
	call m,01f80h		;b419
	ret m			;b41c
	and b			;b41d
	ld a,000h		;b41e
	add a,b			;b420
	rra			;b421
	ret po			;b422
	jr lb49dh		;b423
	sbc a,b			;b425
	inc bc			;b426
	cp 03fh			;b427
	ccf			;b429
	inc bc			;b42a
	cp 083h			;b42b
	ret nz			;b42d
	add a,c			;b42e
	cp 006h			;b42f
	ld bc,00f82h		;b431
	rlca			;b434
	dec b			;b435
	inc bc			;b436
	add a,e			;b437
	sbc a,c			;b438
	ld c,b			;b439
	ld bc,0c003h		;b43a
	sub d			;b43d
lb43eh:
	ld bc,06307h		;b43e
	inc sp			;b441
	nop			;b442
	jr lb4c3h		;b443
	jr nc,lb483h		;b445
	ld a,(hl)		;b447
	ret nz			;b448
	inc c			;b449
	add a,e			;b44a
	cp 0c3h			;b44b
	ld a,(hl)		;b44d
	ld a,(hl)		;b44e
	rst 38h			;b44f
	inc bc			;b450
	rrca			;b451
	sub a			;b452
	xor a			;b453
	call m,001e0h		;b454
	inc e			;b457
	rrca			;b458
	ret p			;b459
	ret p			;b45a
	inc c			;b45b
	ld c,b			;b45c
	rra			;b45d
	ld (0f23eh),a		;b45e
	rst 38h			;b461
	rrca			;b462
	ld a,b			;b463
	jr $+126		;b464
	jr lb4c6h		;b466
	jp nz,003ffh		;b468
	jp nz,0e203h		;b46b
	add a,d			;b46e
	ld b,e			;b46f
	rst 38h			;b470
	inc bc			;b471
	ld b,e			;b472
	ld (bc),a		;b473
	ld b,a			;b474
	sbc a,d			;b475
	ld c,a			;b476
	inc a			;b477
	jr lb4b8h		;b478
	ld e,h			;b47a
	sbc a,028h		;b47b
	nop			;b47d
	inc bc			;b47e
lb47fh:
	ld a,a			;b47f
	ld sp,09040h		;b480
lb483h:
	ld b,b			;b483
	rrca			;b484
	jr lb47fh		;b485
	cp (hl)			;b487
	add a,b			;b488
	ld b,b			;b489
	rra			;b48a
	rra			;b48b
	ld e,0e0h		;b48c
	ret po			;b48e
	add a,b			;b48f
	inc bc			;b490
	nop			;b491
	ld (bc),a		;b492
	add a,b			;b493
	add a,d			;b494
	ret po			;b495
	ccf			;b496
	inc b			;b497
	xor (hl)		;b498
	ld (bc),a		;b499
	xor h			;b49a
	sub (hl)		;b49b
	xor b			;b49c
lb49dh:
	ret m			;b49d
	ccf			;b49e
	rra			;b49f
	ccf			;b4a0
	rrca			;b4a1
	nop			;b4a2
	nop			;b4a3
	ld a,0ffh		;b4a4
	ret po			;b4a6
	call m,0c0f0h		;b4a7
	inc bc			;b4aa
	rlca			;b4ab
	rrca			;b4ac
	rrca			;b4ad
	rlca			;b4ae
	rra			;b4af
	ld a,h			;b4b0
	ret m			;b4b1
	inc bc			;b4b2
	ret p			;b4b3
	add a,0f8h		;b4b4
lb4b6h:
	ret p			;b4b6
	ld h,b			;b4b7
lb4b8h:
	nop			;b4b8
	add a,b			;b4b9
	inc c			;b4ba
	ld a,(hl)		;b4bb
	inc a			;b4bc
	ld a,03fh		;b4bd
	ccf			;b4bf
	cp 0ffh			;b4c0
	rlca			;b4c2
lb4c3h:
	ld bc,07c30h		;b4c3
lb4c6h:
	ld bc,080feh		;b4c6
	add a,b			;b4c9
	ret po			;b4ca
	ret nz			;b4cb
	ret p			;b4cc
	ccf			;b4cd
	inc bc			;b4ce
	inc bc			;b4cf
	rlca			;b4d0
lb4d1h:
	rrca			;b4d1
	ld bc,00f03h		;b4d2
	call m,03f3ch		;b4d5
	ld a,h			;b4d8
	inc e			;b4d9
	ld e,03fh		;b4da
	dec a			;b4dc
	ld a,l			;b4dd
	add a,b			;b4de
	adc a,b			;b4df
	add a,b			;b4e0
	call z,0f4cch		;b4e1
	ret z			;b4e4
	ret p			;b4e5
	rrca			;b4e6
	ccf			;b4e7
	ld e,070h		;b4e8
	call m,01f40h		;b4ea
	rra			;b4ed
	ld a,(hl)		;b4ee
	ld a,(hl)		;b4ef
	inc a			;b4f0
	inc a			;b4f1
	ld a,a			;b4f2
	inc a			;b4f3
	jr c,lb4b6h		;b4f4
	jr c,lb534h		;b4f6
	ret nz			;b4f8
	rst 38h			;b4f9
	rst 38h			;b4fa
	inc bc			;b4fb
	rrca			;b4fc
	and l			;b4fd
	nop			;b4fe
	inc a			;b4ff
	add hl,sp		;b500
	add hl,sp		;b501
	ret m			;b502
	ret m			;b503
	inc bc			;b504
	ld bc,01e00h		;b505
	ld c,0deh		;b508
	jr z,lb548h		;b50a
	inc a			;b50c
	nop			;b50d
	ccf			;b50e
	dec de			;b50f
	ccf			;b510
	ld e,01eh		;b511
	ret p			;b513
	rst 38h			;b514
	ld e,0fah		;b515
	call p,07cf8h		;b517
	jr c,lb594h		;b51a
	ld a,b			;b51c
	nop			;b51d
	ret nz			;b51e
	sbc a,b			;b51f
	jr c,lb55ah		;b520
	jp 0fe03h		;b522
	add a,c			;b525
	nop			;b526
	rlca			;b527
	jp p,0ff83h		;b528
	nop			;b52b
	rst 38h			;b52c
	dec b			;b52d
	and 0a2h		;b52e
	ld bc,000ffh		;b530
	nop			;b533
lb534h:
	rst 38h			;b534
	rst 38h			;b535
	nop			;b536
	nop			;b537
	call m,0c0e0h		;b538
	ret po			;b53b
	ret po			;b53c
	ret p			;b53d
	call m,07801h		;b53e
	ld e,a			;b541
	nop			;b542
	add a,c			;b543
	add a,c			;b544
	nop			;b545
	out (0d1h),a		;b546
lb548h:
	ld h,b			;b548
	ret po			;b549
	ret p			;b54a
	ret p			;b54b
	ld (hl),b		;b54c
	jr z,lb57fh		;b54d
	djnz lb4d1h		;b54f
	ret nz			;b551
	inc bc			;b552
	ld a,a			;b553
	add a,e			;b554
	ccf			;b555
	rra			;b556
	ccf			;b557
	ex af,af'		;b558
	ld a,(hl)		;b559
lb55ah:
	ex af,af'		;b55a
	jp p,00181h		;b55b
	dec b			;b55e
	ret po			;b55f
	ld (bc),a		;b560
	rst 38h			;b561
	adc a,c			;b562
	ld e,014h		;b563
	jr nz,lb587h		;b565
	ld b,041h		;b567
	inc bc			;b569
	rlca			;b56a
	rst 38h			;b56b
	inc bc			;b56c
	pop de			;b56d
	add a,c			;b56e
	ld a,a			;b56f
	inc bc			;b570
	ccf			;b571
	sub b			;b572
	jr c,lb5b1h		;b573
	inc e			;b575
	inc e			;b576
	ld a,07fh		;b577
	rst 38h			;b579
	inc a			;b57a
	rrca			;b57b
	rlca			;b57c
	inc bc			;b57d
	rlca			;b57e
lb57fh:
	rlca			;b57f
	inc bc			;b580
	cp 0ffh			;b581
	ex af,af'		;b583
	ld a,(hl)		;b584
	adc a,d			;b585
	rlca			;b586
lb587h:
	rrca			;b587
	rrca			;b588
lb589h:
	rra			;b589
	rrca			;b58a
	rlca			;b58b
	rlca			;b58c
	add a,a			;b58d
	rst 38h			;b58e
	ld a,a			;b58f
	inc bc			;b590
	rst 38h			;b591
	add a,l			;b592
	ld a,a			;b593
lb594h:
	ccf			;b594
	cp a			;b595
	ret p			;b596
	ret m			;b597
	inc b			;b598
	call m,0f802h		;b599
	add a,c			;b59c
	ld a,(hl)		;b59d
	inc bc			;b59e
	add a,b			;b59f
	add a,h			;b5a0
	call po,00703h		;b5a1
	rlca			;b5a4
	ex af,af'		;b5a5
	jp p,003adh		;b5a6
	add hl,bc		;b5a9
	ex af,af'		;b5aa
	inc bc			;b5ab
	rra			;b5ac
	inc a			;b5ad
	ld a,b			;b5ae
	jr lb5beh		;b5af
lb5b1h:
	nop			;b5b1
	cp 080h			;b5b2
	rra			;b5b4
sub_b5b5h:
	ld a,a			;b5b5
	ret nz			;b5b6
	ret nz			;b5b7
	ret p			;b5b8
	nop			;b5b9
	nop			;b5ba
	ld a,(hl)		;b5bb
	rst 38h			;b5bc
	add a,l			;b5bd
lb5beh:
	add a,l			;b5be
	dec b			;b5bf
	add a,b			;b5c0
	ret nz			;b5c1
	ret p			;b5c2
	jr nc,lb5cdh		;b5c3
	add a,b			;b5c5
	ret nz			;b5c6
	sub b			;b5c7
	ret m			;b5c8
	call m,00002h		;b5c9
	nop			;b5cc
lb5cdh:
	and b			;b5cd
	ld (hl),b		;b5ce
	sub b			;b5cf
	dec c			;b5d0
	rst 38h			;b5d1
	ex (sp),hl		;b5d2
	ex (sp),hl		;b5d3
	add a,e			;b5d4
	inc bc			;b5d5
	inc a			;b5d6
	ex af,af'		;b5d7
	dec c			;b5d8
	sub h			;b5d9
	inc e			;b5da
	inc b			;b5db
	inc c			;b5dc
	sbc a,h			;b5dd
	jr c,lb618h		;b5de
	jr lb5feh		;b5e0
	sbc a,0cah		;b5e2
	ret nz			;b5e4
	sbc a,0cah		;b5e5
	ret nz			;b5e7
	rst 38h			;b5e8
	ret po			;b5e9
	add a,l			;b5ea
	ld l,d			;b5eb
	or a			;b5ec
	rst 38h			;b5ed
	inc b			;b5ee
	adc a,d			;b5ef
	ld (bc),a		;b5f0
	add a,b			;b5f1
	sub (hl)		;b5f2
	jr nc,lb64dh		;b5f3
	ret nz			;b5f5
	ret nc			;b5f6
	add a,b			;b5f7
	rra			;b5f8
	ret nz			;b5f9
	ld c,b			;b5fa
	inc h			;b5fb
	jr nz,lb636h		;b5fc
lb5feh:
	ld e,0cfh		;b5fe
	sbc a,a			;b600
	jp 0070fh		;b601
	rlca			;b604
	inc bc			;b605
	ld bc,lb001h		;b606
	ld b,00dh		;b609
	sbc a,l			;b60b
	rst 38h			;b60c
	ld a,a			;b60d
	ld e,00eh		;b60e
	rrca			;b610
	rlca			;b611
	inc bc			;b612
	inc bc			;b613
	rlca			;b614
	rrca			;b615
	ret po			;b616
	ld a,a			;b617
lb618h:
	ld a,a			;b618
	ret nz			;b619
	ccf			;b61a
	ccf			;b61b
	ld h,e			;b61c
	jp 0c0f8h		;b61d
	rra			;b620
	inc a			;b621
	ret p			;b622
	ret m			;b623
	ld b,0c3h		;b624
	nop			;b626
	ld a,a			;b627
	exx			;b628
	inc b			;b629
	sbc a,c			;b62a
	bit 7,a			;b62b
	ld a,(hl)		;b62d
	jr c,lb630h		;b62e
lb630h:
	ld b,b			;b630
	ld h,h			;b631
	ld h,b			;b632
	inc de			;b633
	ld e,003h		;b634
lb636h:
	ret nz			;b636
	add a,b			;b637
	nop			;b638
	ld (bc),a		;b639
	rlca			;b63a
	add a,a			;b63b
	rlca			;b63c
	inc a			;b63d
	jr lb67ch		;b63e
	jr lb67eh		;b640
	inc a			;b642
	add a,c			;b643
	add a,c			;b644
	jr c,lb6c3h		;b645
	jr nc,lb649h		;b647
lb649h:
	ld a,(hl)		;b649
	jr c,lb6cah		;b64a
	ld a,(hl)		;b64c
lb64dh:
	cp 03ch			;b64d
	ld a,(hl)		;b64f
	ld e,03eh		;b650
	ld a,b			;b652
	ret nz			;b653
	call m,00806h		;b654
	cp 0fch			;b657
	ret p			;b659
	ret nz			;b65a
	call m,0e0f8h		;b65b
	add a,b			;b65e
	nop			;b65f
	ret p			;b660
	ret nz			;b661
	rrca			;b662
	ccf			;b663
	ld a,a			;b664
	nop			;b665
	ld (hl),b		;b666
	call m,03020h		;b667
	inc e			;b66a
	ld a,a			;b66b
	ld a,a			;b66c
	ret nz			;b66d
	ld a,b			;b66e
	rra			;b66f
	rlca			;b670
	ld bc,00f7fh		;b671
	ccf			;b674
	rst 38h			;b675
	rst 38h			;b676
	inc bc			;b677
	nop			;b678
	add a,c			;b679
	ret po			;b67a
	inc bc			;b67b
lb67ch:
	rst 38h			;b67c
	and d			;b67d
lb67eh:
	inc bc			;b67e
	ld a,b			;b67f
	inc e			;b680
	ld e,03ch		;b681
	ld a,b			;b683
	ret po			;b684
	ld bc,00201h		;b685
	inc b			;b688
	inc b			;b689
	nop			;b68a
	cp 07eh			;b68b
	ret nz			;b68d
	ret p			;b68e
	ret nz			;b68f
	add a,b			;b690
	rrca			;b691
	rrca			;b692
	ccf			;b693
	ld a,a			;b694
	ld a,(hl)		;b695
	ld a,h			;b696
	inc a			;b697
	jr c,lb719h		;b698
	ld a,a			;b69a
	ld a,00eh		;b69b
	rra			;b69d
	ccf			;b69e
	ccf			;b69f
	inc bc			;b6a0
	ld a,a			;b6a1
	adc a,a			;b6a2
	ld bc,0fe03h		;b6a3
	inc c			;b6a6
	ld a,07eh		;b6a7
	cp 0e0h			;b6a9
	add a,b			;b6ab
	cp 002h			;b6ac
	inc b			;b6ae
	inc b			;b6af
	ex af,af'		;b6b0
	ex af,af'		;b6b1
	inc bc			;b6b2
	ld a,(hl)		;b6b3
	adc a,a			;b6b4
	ret p			;b6b5
	ret nz			;b6b6
	add a,b			;b6b7
	ex (sp),hl		;b6b8
	add a,b			;b6b9
	rrca			;b6ba
	ccf			;b6bb
	ld a,a			;b6bc
	inc a			;b6bd
	jr c,lb73fh		;b6be
	ld a,a			;b6c0
	ccf			;b6c1
	ccf			;b6c2
lb6c3h:
	ld e,005h		;b6c3
	nop			;b6c5
	adc a,h			;b6c6
	rlca			;b6c7
	rra			;b6c8
	ld a,h			;b6c9
lb6cah:
	ret nz			;b6ca
	cp 03ch			;b6cb
	ld e,0feh		;b6cd
	cp 0f0h			;b6cf
	nop			;b6d1
	call m,09000h		;b6d2
	ret p			;b6d5
	ld d,b			;b6d6
	call p,0fdfdh		;b6d7
	ret c			;b6da
	ret c			;b6db
	sbc a,090h		;b6dc
	ld d,b			;b6de
	call p,0fdfdh		;b6df
	ret c			;b6e2
	ret c			;b6e3
	sbc a,004h		;b6e4
	ld d,h			;b6e6
	inc bc			;b6e7
	sub l			;b6e8
	dec b			;b6e9
	ld d,h			;b6ea
	dec b			;b6eb
	sub l			;b6ec
	ld (bc),a		;b6ed
	ld d,h			;b6ee
	ld (bc),a		;b6ef
	call p,0f88ch		;b6f0
	cp 0feh			;b6f3
	sub l			;b6f5
	ld d,h			;b6f6
	ld d,h			;b6f7
	call p,0f8f4h		;b6f8
	cp 0feh			;b6fb
	ld d,h			;b6fd
	dec b			;b6fe
	sub l			;b6ff
	inc bc			;b700
	ld d,h			;b701
	inc bc			;b702
	sub l			;b703
	add a,l			;b704
	ld d,h			;b705
	ld c,a			;b706
	push af			;b707
	sub l			;b708
	sub l			;b709
	inc bc			;b70a
	sub h			;b70b
	ld (bc),a		;b70c
	sub l			;b70d
	adc a,d			;b70e
	sub h			;b70f
	sub l			;b710
	sub l			;b711
	ld d,h			;b712
	ld d,h			;b713
	ld c,a			;b714
	push af			;b715
	sub l			;b716
	ld d,h			;b717
	ld d,h			;b718
lb719h:
	inc b			;b719
	sub l			;b71a
	ld (bc),a		;b71b
	ld d,h			;b71c
	ld (bc),a		;b71d
	call p,09503h		;b71e
	add a,e			;b721
	ld d,h			;b722
	call p,003f4h		;b723
	ld d,h			;b726
	adc a,c			;b727
	call p,0ecfch		;b728
	call 0fdfdh		;b72b
	ld c,l			;b72e
	call m,006c8h		;b72f
	ret pe			;b732
	add a,e			;b733
	defb 0fdh,0dch,0d8h ;illegal sequence	;b734
	dec b			;b737
	call c,05403h		;b738
	add a,(hl)		;b73b
	call p,0d484h		;b73c
lb73fh:
	ld d,h			;b73f
	ld d,h			;b740
	sub h			;b741
	inc b			;b742
	ld d,h			;b743
	inc bc			;b744
	sub l			;b745
	sub h			;b746
	sub b			;b747
	sub l			;b748
	push af			;b749
	ret m			;b74a
	ret c			;b74b
	defb 0edh ;next byte illegal after ed	;b74c
	adc a,l			;b74d
	push af			;b74e
	push af			;b74f
	rst 18h			;b750
	defb 0edh ;next byte illegal after ed	;b751
	cp 0f9h			;b752
	push af			;b754
	ld d,h			;b755
	ld d,h			;b756
	defb 0edh ;next byte illegal after ed	;b757
	defb 0edh ;next byte illegal after ed	;b758
	rst 38h			;b759
	ld d,h			;b75a
	inc bc			;b75b
	sub l			;b75c
	add a,l			;b75d
	ld d,h			;b75e
	ret c			;b75f
	call p,054f4h		;b760
	inc bc			;b763
	sub l			;b764
	add a,c			;b765
	ld d,h			;b766
	inc bc			;b767
	defb 0fdh,083h,0deh ;illegal sequence	;b768
	ret c			;b76b
	ret c			;b76c
	dec b			;b76d
	add a,(iy-022h)		;b76e
	ret c			;b771
	ret c			;b772
	defb 0fdh,0fdh,054h ;illegal sequence	;b773
	inc bc			;b776
	sub l			;b777
	add hl,bc		;b778
	ld d,h			;b779
	add a,e			;b77a
	push af			;b77b
	defb 0fdh,0feh,003h ;illegal sequence	;b77c
	ld d,h			;b77f
	add a,a			;b780
	call p,0eddfh		;b781
	defb 0edh ;next byte illegal after ed	;b784
	rst 18h			;b785
	cp 0feh			;b786
	inc bc			;b788
	ret c			;b789
	ld (bc),a		;b78a
	defb 0fdh,083h,0f4h ;illegal sequence	;b78b
	defb 0edh ;next byte illegal after ed	;b78e
	defb 0edh ;next byte illegal after ed	;b78f
	inc bc			;b790
	adc a,a			;b791
	ld (bc),a		;b792
	rst 18h			;b793
	add a,e			;b794
	call p,09595h		;b795
	ld b,054h		;b798
	add a,c			;b79a
	sub l			;b79b
	inc bc			;b79c
	ld d,h			;b79d
	inc bc			;b79e
	call p,0f581h		;b79f
	ex af,af'		;b7a2
	call p,05406h		;b7a3
	sub (hl)		;b7a6
	sub l			;b7a7
	ld d,h			;b7a8
	call pe,0fdcdh		;b7a9
	defb 0fdh,0f4h,0f4h ;illegal sequence	;b7ac
	ld d,h			;b7af
	ld d,h			;b7b0
	ret pe			;b7b1
	ret pe			;b7b2
	ret c			;b7b3
	call c,0fddch		;b7b4
	defb 0fdh,0f4h,0dch ;illegal sequence	;b7b7
	call c,0dcd8h		;b7ba
	inc bc			;b7bd
	defb 0fdh,081h,0f4h ;illegal sequence	;b7be
	ex af,af'		;b7c1
	sub l			;b7c2
	ld a,(bc)		;b7c3
	ld d,h			;b7c4
	ld (bc),a		;b7c5
	sub l			;b7c6
	inc bc			;b7c7
	ld d,h			;b7c8
	adc a,e			;b7c9
	dec b			;b7ca
	ret pe			;b7cb
	adc a,l			;b7cc
	adc a,l			;b7cd
	rst 18h			;b7ce
	call p,050f5h		;b7cf
	sub b			;b7d2
	sub l			;b7d3
	ld d,h			;b7d4
	inc bc			;b7d5
	call p,0fc8dh		;b7d6
	adc a,(hl)		;b7d9
	call m,05454h		;b7da
	sub l			;b7dd
	ld d,h			;b7de
	call p,0fecfh		;b7df
	call m,05454h		;b7e2
	inc bc			;b7e5
	sub l			;b7e6
	add a,h			;b7e7
	ld d,h			;b7e8
	ld c,a			;b7e9
	ld c,a			;b7ea
	ld d,h			;b7eb
	inc bc			;b7ec
	sub l			;b7ed
	add a,c			;b7ee
	ld d,h			;b7ef
	inc bc			;b7f0
	call p,09505h		;b7f1
	adc a,a			;b7f4
	ld d,h			;b7f5
	ld c,a			;b7f6
	ld c,a			;b7f7
	ld d,h			;b7f8
	ld d,h			;b7f9
lb7fah:
	sub l			;b7fa
	ld d,h			;b7fb
	call p,0f0f0h		;b7fc
	ld b,b			;b7ff
	ld b,b			;b800
	ret nc			;b801
	ret nc			;b802
	add a,b			;b803
	inc bc			;b804
	ret nz			;b805
	add a,c			;b806
	ret po			;b807
	inc bc			;b808
	ret p			;b809
	sub c			;b80a
	defb 0fdh,0dch,08eh ;illegal sequence	;b80b
	call c,0fdfdh		;b80e
	rrca			;b811
	rrca			;b812
	call 0eccdh		;b813
	call pe,0f4ddh		;b816
	call p,084d4h		;b819
	inc bc			;b81c
	call nz,0fe89h		;b81d
	call p,09595h		;b820
	ld d,h			;b823
	ld c,a			;b824
	ld c,a			;b825
	ret m			;b826
	cp 008h			;b827
	ld d,h			;b829
	ld (bc),a		;b82a
	ld b,b			;b82b
	adc a,e			;b82c
	call nc,084c4h		;b82d
	push hl			;b830
	add a,h			;b831
	call nz,0c0d0h		;b832
	add a,b			;b835
	ret po			;b836
	add a,b			;b837
	inc bc			;b838
	ret nz			;b839
	ex af,af'		;b83a
	add a,b			;b83b
	adc a,b			;b83c
	call m,0d8fdh		;b83d
	adc a,(hl)		;b840
	ret c			;b841
	call m,000fch		;b842
	ex af,af'		;b845
	ld d,h			;b846
	ld (bc),a		;b847
	cp 086h			;b848
	ret m			;b84a
	defb 0fdh,0f5h,0f4h ;illegal sequence	;b84b
	ld b,l			;b84e
	ld e,c			;b84f
	rlca			;b850
	ld d,h			;b851
	add a,c			;b852
	sub l			;b853
	inc b			;b854
	call nz,0d402h		;b855
	ld (bc),a		;b858
	ld b,b			;b859
	inc b			;b85a
	ret nz			;b85b
	add a,h			;b85c
	add a,b			;b85d
	ret po			;b85e
	add a,b			;b85f
	ret nz			;b860
	ex af,af'		;b861
	ld d,h			;b862
	djnz lb7fah		;b863
	adc a,c			;b865
	ret nc			;b866
	ret p			;b867
	ld c,(hl)		;b868
	ld c,b			;b869
	ld c,b			;b86a
	call nz,0d4c4h		;b86b
	ret po			;b86e
	inc bc			;b86f
	ret nz			;b870
	add a,h			;b871
	add a,b			;b872
	ret nc			;b873
	rst 18h			;b874
	rst 18h			;b875
	ex af,af'		;b876
	ld d,h			;b877
	ld (bc),a		;b878
	sub l			;b879
	ld (bc),a		;b87a
	ld d,h			;b87b
	ld (bc),a		;b87c
	call p,0fd84h		;b87d
	ret m			;b880
	sub l			;b881
	sub l			;b882
	inc bc			;b883
	call p,0fd83h		;b884
	ret m			;b887
	ret c			;b888
	dec b			;b889
	ld d,h			;b88a
	add a,l			;b88b
	call p,08484h		;b88c
	ld b,b			;b88f
	ld b,b			;b890
	inc bc			;b891
	call p,05403h		;b892
	ld (bc),a		;b895
	call m,0dc83h		;b896
	ret z			;b899
	ret z			;b89a
	inc bc			;b89b
	ret pe			;b89c
	add a,l			;b89d
	defb 0fdh,0dch,0dch ;illegal sequence	;b89e
	ret z			;b8a1
	ret z			;b8a2
	inc bc			;b8a3
	adc a,(hl)		;b8a4
	ex af,af'		;b8a5
	ld d,h			;b8a6
	inc b			;b8a7
	ret m			;b8a8
	sub e			;b8a9
	cp 0f8h			;b8aa
	ret m			;b8ac
	defb 0fdh,0d8h,0e8h ;illegal sequence	;b8ad
	ret m			;b8b0
	ret m			;b8b1
	defb 0fdh,0f8h,0deh ;illegal sequence	;b8b2
	rst 38h			;b8b5
	call po,0d4f4h		;b8b6
	add a,h			;b8b9
	call p,0f484h		;b8ba
	rlca			;b8bd
	ld d,h			;b8be
	ld (bc),a		;b8bf
	sub l			;b8c0
	add a,d			;b8c1
	ret z			;b8c2
	call nc,0f405h		;b8c3
	add a,l			;b8c6
	ld d,h			;b8c7
	ret z			;b8c8
	ret z			;b8c9
	call c,003dch		;b8ca
	defb 0fdh,081h,0f4h ;illegal sequence	;b8cd
	ex af,af'		;b8d0
	ld d,h			;b8d1
	add a,e			;b8d2
	ret m			;b8d3
	call p,00445h		;b8d4
	sub l			;b8d7
	add a,h			;b8d8
	ld d,h			;b8d9
	call p,054f4h		;b8da
	inc b			;b8dd
	sub l			;b8de
	ld (bc),a		;b8df
	ld d,h			;b8e0
	adc a,l			;b8e1
	call p,0f8fdh		;b8e2
	ret m			;b8e5
	cp 0fdh			;b8e6
	call p,05494h		;b8e8
	ld d,h			;b8eb
	call nc,0e484h		;b8ec
	dec bc			;b8ef
	ld d,h			;b8f0
	inc bc			;b8f1
	sub l			;b8f2
	add a,l			;b8f3
	ld d,h			;b8f4
	ld c,a			;b8f5
	ld c,a			;b8f6
	ld d,h			;b8f7
	sub l			;b8f8
	inc b			;b8f9
	ld d,h			;b8fa
	inc bc			;b8fb
	sub l			;b8fc
	add a,c			;b8fd
	ld hl,03206h		;b8fe
	add a,e			;b901
	ld hl,03232h		;b902
lb905h:
	inc b			;b905
	ld hl,01002h		;b906
	inc bc			;b909
	ld hl,01002h		;b90a
	inc b			;b90d
	or b			;b90e
	ld (bc),a		;b90f
	jr nz,lb915h		;b910
	ld (02002h),a		;b912
lb915h:
	dec b			;b915
	ld (02102h),a		;b916
	add a,c			;b919
	djnz lb924h		;b91a
	inc hl			;b91c
	ld (bc),a		;b91d
	ld (de),a		;b91e
	inc c			;b91f
	ld (02102h),a		;b920
	add a,c			;b923
lb924h:
	ld (02103h),a		;b924
	add a,c			;b927
lb928h:
	pop af			;b928
	inc bc			;b929
	or c			;b92a
	inc b			;b92b
	ld hl,01004h		;b92c
	ld b,020h		;b92f
	ld (bc),a		;b931
	ld (02181h),a		;b932
	ld b,032h		;b935
	add a,c			;b937
	ld hl,03205h		;b938
	ld b,021h		;b93b
	ld (bc),a		;b93d
	djnz $+5		;b93e
	or b			;b940
	ld (bc),a		;b941
	ld hl,01006h		;b942
	ex af,af'		;b945
	ld (02181h),a		;b946
	ld b,032h		;b949
	add a,c			;b94b
	ld hl,08300h		;b94c
	ld (hl),b		;b94f
	jr nz,lb972h		;b950
	inc bc			;b952
	djnz $-108		;b953
	jr nz,$+18		;b955
	inc c			;b957
	inc b			;b958
	inc b			;b959
	ex af,af'		;b95a
	inc b			;b95b
	ex af,af'		;b95c
	djnz lb97fh		;b95d
	ld b,b			;b95f
	jr nz,lb97ah		;b960
	inc c			;b962
	ex af,af'		;b963
	djnz lb976h		;b964
	jr nz,$+5		;b966
	djnz lb96ch		;b968
	jr nz,$+6		;b96a
lb96ch:
	djnz lb905h		;b96c
	ex af,af'		;b96e
	jr lb9a1h		;b96f
	ld b,b			;b971
lb972h:
	ld b,b			;b972
	ret nz			;b973
	add a,b			;b974
	ret nz			;b975
lb976h:
	ld h,b			;b976
	djnz lb985h		;b977
	ld (bc),a		;b979
lb97ah:
	inc b			;b97a
	inc c			;b97b
	ex af,af'		;b97c
	djnz lb99fh		;b97d
lb97fh:
	jr nc,lb989h		;b97f
	ex af,af'		;b981
	inc c			;b982
	jr lb995h		;b983
lb985h:
	nop			;b985
	jr c,lb928h		;b986
	nop			;b988
lb989h:
	sbc a,b			;b989
	ld a,a			;b98a
	jp 08181h		;b98b
	jr nz,lb990h		;b98e
lb990h:
	jr nz,$+34		;b990
	add a,b			;b992
	nop			;b993
	rra			;b994
lb995h:
	inc bc			;b995
	nop			;b996
	rrca			;b997
	ccf			;b998
	ld a,a			;b999
	rlca			;b99a
	nop			;b99b
	rra			;b99c
	nop			;b99d
	nop			;b99e
lb99fh:
	rrca			;b99f
	ccf			;b9a0
lb9a1h:
	ld a,a			;b9a1
	nop			;b9a2
	add a,c			;b9a3
	or b			;b9a4
	inc bc			;b9a5
	or (hl)			;b9a6
	inc b			;b9a7
	and 002h		;b9a8
	ld hl,01003h		;b9aa
	inc bc			;b9ad
	or b			;b9ae
	ld (bc),a		;b9af
	ld hl,01003h		;b9b0
	inc bc			;b9b3
	or b			;b9b4
	nop			;b9b5
	sbc a,c			;b9b6
	ret po			;b9b7
	rst 38h			;b9b8
	ccf			;b9b9
	dec (hl)		;b9ba
	ld bc,00707h		;b9bb
	nop			;b9be
	inc a			;b9bf
	ld h,e			;b9c0
	rra			;b9c1
	ccf			;b9c2
	ret nz			;b9c3
	add a,b			;b9c4
	add a,b			;b9c5
	ret po			;b9c6
	inc a			;b9c7
	call m,0f0f0h		;b9c8
	jr c,lb9ech		;b9cb
	jp m,0cacah		;b9cd
	inc bc			;b9d0
	ld (hl),l		;b9d1
	sub h			;b9d2
	nop			;b9d3
	ex af,af'		;b9d4
	ld a,(bc)		;b9d5
	push bc			;b9d6
	ld e,b			;b9d7
	rrca			;b9d8
	rlca			;b9d9
	rlca			;b9da
	ld l,a			;b9db
	sbc a,a			;b9dc
	rra			;b9dd
	ld a,a			;b9de
	dec b			;b9df
	ret po			;b9e0
	ret m			;b9e1
	call m,0f8fch		;b9e2
	ret nz			;b9e5
	di			;b9e6
	nop			;b9e7
	ld (bc),a		;b9e8
	defb 0fdh,084h ;add a,iyh	;b9e9
	add a,h			;b9eb
lb9ech:
	call po,08484h		;b9ec
	inc bc			;b9ef
	ld b,l			;b9f0
	inc b			;b9f1
	sub l			;b9f2
	add a,l			;b9f3
	ld d,h			;b9f4
	ld c,a			;b9f5
	ret m			;b9f6
	sub l			;b9f7
	ld d,h			;b9f8
	inc bc			;b9f9
	sub h			;b9fa
	adc a,e			;b9fb
	call p,0d8feh		;b9fc
	ret m			;b9ff
	defb 0edh ;next byte illegal after ed	;ba00
	adc a,a			;ba01
	rst 18h			;ba02
	rst 18h			;ba03
	add a,h			;ba04
	call po,00854h		;ba05
	sub l			;ba08
	add a,c			;ba09
	add a,l			;ba0a
	inc bc			;ba0b
	sub l			;ba0c
	add a,c			;ba0d
	sub h			;ba0e
	inc bc			;ba0f
	sub l			;ba10
	nop			;ba11
	add a,e			;ba12
	ld a,a			;ba13
	nop			;ba14
	ccf			;ba15
	inc b			;ba16
	nop			;ba17
	add a,a			;ba18
	rra			;ba19
	ld a,a			;ba1a
	ld a,a			;ba1b
	ccf			;ba1c
	ccf			;ba1d
	ld a,a			;ba1e
	ld a,a			;ba1f
	dec b			;ba20
	ld (hl),b		;ba21
	add a,d			;ba22
	ld a,a			;ba23
	ccf			;ba24
	inc bc			;ba25
	nop			;ba26
	nop			;ba27
	ex af,af'		;ba28
	or b			;ba29
	add a,h			;ba2a
	ret nz			;ba2b
	or b			;ba2c
	ret nz			;ba2d
	ret nz			;ba2e
	inc c			;ba2f
	or b			;ba30
	nop			;ba31
	inc b			;ba32
	nop			;ba33
	add a,c			;ba34
	ex (sp),hl		;ba35
	rlca			;ba36
	nop			;ba37
	add a,c			;ba38
	ex (sp),hl		;ba39
	dec d			;ba3a
	nop			;ba3b
	ld (bc),a		;ba3c
	add a,b			;ba3d
	add a,c			;ba3e
	rst 38h			;ba3f
	inc bc			;ba40
	add a,b			;ba41
	inc bc			;ba42
	nop			;ba43
	dec b			;ba44
	call m,02300h		;ba45
	or b			;ba48
	dec b			;ba49
	rlc h			;ba4a
	or b			;ba4c
	add a,c			;ba4d
	rlc e			;ba4e
	or b			;ba50
	nop			;ba51
	ex af,af'		;ba52
	nop			;ba53
	nop			;ba54
	ex af,af'		;ba55
	or b			;ba56
	nop			;ba57
	add a,(hl)		;ba58
	xor a			;ba59
	ld a,a			;ba5a
	add a,b			;ba5b
	add a,b			;ba5c
	rst 30h			;ba5d
	call pe,0e804h		;ba5e
	add a,(hl)		;ba61
	call pe,0f7f7h		;ba62
	add a,b			;ba65
	add a,b			;ba66
	cpl			;ba67
	inc bc			;ba68
	cp a			;ba69
	sub d			;ba6a
	rst 38h			;ba6b
	ret nz			;ba6c
	ret nz			;ba6d
	rst 38h			;ba6e
	rst 38h			;ba6f
	xor a			;ba70
	ld a,a			;ba71
	ld a,a			;ba72
	rst 38h			;ba73
	rst 38h			;ba74
	nop			;ba75
	nop			;ba76
	rla			;ba77
	nop			;ba78
	nop			;ba79
	ret nz			;ba7a
	ret nz			;ba7b
	rst 38h			;ba7c
	inc bc			;ba7d
	cp a			;ba7e
	ld (bc),a		;ba7f
	ret pe			;ba80
	add a,(hl)		;ba81
	rst 38h			;ba82
	nop			;ba83
	nop			;ba84
	add a,b			;ba85
	add a,b			;ba86
	cpl			;ba87
	inc bc			;ba88
	cp a			;ba89
	add a,c			;ba8a
	rst 38h			;ba8b
	inc b			;ba8c
	ret nz			;ba8d
	add a,e			;ba8e
	xor a			;ba8f
	ld a,a			;ba90
	ld a,a			;ba91
	inc bc			;ba92
	rst 38h			;ba93
	ld (bc),a		;ba94
	nop			;ba95
	inc b			;ba96
	ret nz			;ba97
	add a,c			;ba98
	rst 38h			;ba99
	inc bc			;ba9a
	cp a			;ba9b
	add a,c			;ba9c
	rst 38h			;ba9d
	inc b			;ba9e
	nop			;ba9f
	ld (bc),a		;baa0
	add a,b			;baa1
	add a,c			;baa2
	cpl			;baa3
	nop			;baa4
	adc a,c			;baa5
	ld b,e			;baa6
	push af			;baa7
	push af			;baa8
	inc sp			;baa9
	ld sp,hl		;baaa
	ld sp,hl		;baab
	or 0feh			;baac
	or 003h			;baae
	ld sp,hl		;bab0
	adc a,c			;bab1
	ld d,l			;bab2
	di			;bab3
	ld e,a			;bab4
	push hl			;bab5
	ld d,h			;bab6
	ld d,h			;bab7
	ld b,e			;bab8
	push af			;bab9
	push af			;baba
	inc bc			;babb
	di			;babc
	add a,e			;babd
	ld b,e			;babe
	push af			;babf
	ld c,a			;bac0
	inc bc			;bac1
	ld d,e			;bac2
	inc b			;bac3
	rst 28h			;bac4
	adc a,b			;bac5
	push af			;bac6
	call p,0e5f4h		;bac7
	ld d,h			;baca
	ld d,h			;bacb
	or 0f9h			;bacc
	inc bc			;bace
	ld d,h			;bacf
	add a,(hl)		;bad0
	di			;bad1
	ld e,a			;bad2
	push hl			;bad3
	ld d,h			;bad4
	ld d,h			;bad5
	ld b,e			;bad6
	inc bc			;bad7
	push af			;bad8
	add a,l			;bad9
	call p,043f2h		;bada
	push af			;badd
	ld c,a			;bade
	inc b			;badf
	ld d,h			;bae0
	adc a,c			;bae1
	ld (0f5f1h),hl		;bae2
	push af			;bae5
lbae6h:
	call p,0e5f4h		;bae6
	ld d,h			;bae9
	ld d,h			;baea
	inc bc			;baeb
	dec d			;baec
	ld (bc),a		;baed
	ld b,h			;baee
	add a,e			;baef
	di			;baf0
	ld e,a			;baf1
	push hl			;baf2
	nop			;baf3
	ld b,03ch		;baf4
	add a,d			;baf6
	add a,c			;baf7
	rst 38h			;baf8
	jr z,lbb6fh		;baf9
	ex af,af'		;bafb
	jr c,lbb06h		;bafc
	rla			;bafe
	ex af,af'		;baff
	jr c,lbb0ah		;bb00
	ret pe			;bb02
	ex af,af'		;bb03
	jr c,lbb09h		;bb04
lbb06h:
	ret pe			;bb06
	ld (bc),a		;bb07
	rst 38h			;bb08
lbb09h:
	inc bc			;bb09
lbb0ah:
	rla			;bb0a
	ex af,af'		;bb0b
	jr c,lbb16h		;bb0c
	rla			;bb0e
	add a,c			;bb0f
	rst 38h			;bb10
	ex af,af'		;bb11
	jr c,lbb17h		;bb12
	ret pe			;bb14
	add a,c			;bb15
lbb16h:
	nop			;bb16
lbb17h:
	inc bc			;bb17
	ret pe			;bb18
	nop			;bb19
	adc a,c			;bb1a
	jr nc,lbb60h		;bb1b
	ld d,h			;bb1d
	ld d,h			;bb1e
	ld b,e			;bb1f
	ld (0f2f2h),a		;bb20
	ld b,e			;bb23
	ld c,032h		;bb24
	add a,d			;bb26
	cpl			;bb27
	ld d,h			;bb28
	ld d,043h		;bb29
	add a,c			;bb2b
	ld (04303h),a		;bb2c
	ld (bc),a		;bb2f
	push hl			;bb30
	inc bc			;bb31
	ld d,h			;bb32
	inc bc			;bb33
	jp p,03402h		;bb34
	inc bc			;bb37
	inc hl			;bb38
	ex af,af'		;bb39
	ld d,h			;bb3a
	ex af,af'		;bb3b
	ld (05403h),a		;bb3c
	add a,d			;bb3f
	ld (003ffh),a		;bb40
	ld b,e			;bb43
	inc bc			;bb44
	ld (0f205h),a		;bb45
	ex af,af'		;bb48
	ld b,e			;bb49
	add hl,bc		;bb4a
	jp p,05489h		;bb4b
	ld b,e			;bb4e
	ld b,e			;bb4f
	rst 38h			;bb50
	ld d,h			;bb51
	ld b,e			;bb52
	ld b,e			;bb53
	rst 38h			;bb54
	ld (02f03h),a		;bb55
	add a,e			;bb58
	ld (02f2fh),a		;bb59
	nop			;bb5c
	ex af,af'		;bb5d
	jr c,lbb68h		;bb5e
lbb60h:
	ret pe			;bb60
	ld (bc),a		;bb61
	jr c,lbae6h		;bb62
	rst 38h			;bb64
	add a,b			;bb65
	inc b			;bb66
	ld a,(hl)		;bb67
lbb68h:
	nop			;bb68
	sbc a,b			;bb69
	push hl			;bb6a
	ld d,h			;bb6b
	ld d,h			;bb6c
	ld b,e			;bb6d
	ld d,h			;bb6e
lbb6fh:
	ld b,e			;bb6f
	push hl			;bb70
	ld b,e			;bb71
	ld b,e			;bb72
	ld (02f32h),a		;bb73
	ld (0432fh),a		;bb76
	ld (05443h),a		;bb79
	jp p,032f2h		;bb7c
	ld b,e			;bb7f
	ld d,h			;bb80
	ld d,h			;bb81
	nop			;bb82
	add a,a			;bb83
	nop			;bb84
	inc bc			;bb85
	rra			;bb86
	ld a,a			;bb87
	rlca			;bb88
	ccf			;bb89
	ccf			;bb8a
	dec b			;bb8b
	nop			;bb8c
	add a,h			;bb8d
	ld bc,00502h		;bb8e
	dec bc			;bb91
	inc bc			;bb92
	nop			;bb93
	sbc a,a			;bb94
	cp l			;bb95
	ld a,d			;bb96
	or 0eeh			;bb97
	ret nz			;bb99
	rlca			;bb9a
	rrca			;bb9b
	ld c,001h		;bb9c
	inc bc			;bb9e
	rlca			;bb9f
	rlca			;bba0
	rrca			;bba1
	ret p			;bba2
	ret po			;bba3
	ret po			;bba4
	ret nz			;bba5
	add a,b			;bba6
	ld (hl),b		;bba7
	or 0e7h			;bba8
	nop			;bbaa
	nop			;bbab
	call m,0f9fch		;bbac
	jp m,0ebf5h		;bbaf
	nop			;bbb2
	nop			;bbb3
	ld b,0f0h		;bbb4
	nop			;bbb6
	inc b			;bbb7
	jr nc,lbbbch		;bbb8
	ld b,e			;bbba
	ld (bc),a		;bbbb
lbbbch:
	ld (03005h),a		;bbbc
	add a,d			;bbbf
	ld b,b			;bbc0
	ld d,b			;bbc1
	inc b			;bbc2
	ld b,b			;bbc3
	adc a,b			;bbc4
	jr nz,lbbf7h		;bbc5
	ld b,b			;bbc7
	ld d,b			;bbc8
	ld b,b			;bbc9
	ld b,b			;bbca
	jr nc,lbbedh		;bbcb
	inc b			;bbcd
	jr nc,lbbd2h		;bbce
	jr nz,lbbd6h		;bbd0
lbbd2h:
	jr nc,$-124		;bbd2
	jr nz,lbc06h		;bbd4
lbbd6h:
	inc bc			;bbd6
	ld b,b			;bbd7
	add a,l			;bbd8
	ret p			;bbd9
	jr nz,lbc0ch		;bbda
	ld b,b			;bbdc
	ld d,b			;bbdd
	inc bc			;bbde
	ld b,b			;bbdf
	add a,(hl)		;bbe0
	ret p			;bbe1
	cpl			;bbe2
	ccf			;bbe3
	ld b,d			;bbe4
	ld d,e			;bbe5
	call po,00400h		;bbe6
	ret p			;bbe9
	inc b			;bbea
	jr c,lbbf0h		;bbeb
lbbedh:
	nop			;bbed
	add a,c			;bbee
	rlca			;bbef
lbbf0h:
	inc b			;bbf0
	ret pe			;bbf1
	nop			;bbf2
	inc b			;bbf3
	nop			;bbf4
	add a,h			;bbf5
	ld d,h			;bbf6
lbbf7h:
	ld b,e			;bbf7
	push hl			;bbf8
	ld b,e			;bbf9
	inc b			;bbfa
	ret p			;bbfb
	add a,h			;bbfc
	ld (0432fh),a		;bbfd
	ld (08100h),a		;bc00
	jr c,lbc08h		;bc03
	rlca			;bc05
lbc06h:
	sub l			;bc06
	ccf			;bc07
lbc08h:
	rrca			;bc08
	rlca			;bc09
	rlca			;bc0a
	cp a			;bc0b
lbc0ch:
	ld a,a			;bc0c
	inc bc			;bc0d
	rlca			;bc0e
	rrca			;bc0f
	rra			;bc10
	rra			;bc11
	ccf			;bc12
	rra			;bc13
	rra			;bc14
	ccf			;bc15
	ccf			;bc16
	ld a,a			;bc17
	ld d,l			;bc18
	ld d,l			;bc19
	rst 38h			;bc1a
	ret m			;bc1b
	inc bc			;bc1c
	rla			;bc1d
	add a,e			;bc1e
	rst 38h			;bc1f
	ld d,l			;bc20
	ld d,l			;bc21
	inc bc			;bc22
	rst 38h			;bc23
	ld (bc),a		;bc24
	cp a			;bc25
	add a,(hl)		;bc26
	rst 38h			;bc27
	ld d,l			;bc28
	ld d,l			;bc29
	rst 38h			;bc2a
	rst 38h			;bc2b
	ret p			;bc2c
	ld b,074h		;bc2d
	ld (bc),a		;bc2f
	dec bc			;bc30
	ld (bc),a		;bc31
	rst 38h			;bc32
	inc b			;bc33
	adc a,e			;bc34
	ld (bc),a		;bc35
	rla			;bc36
	ld b,016h		;bc37
	nop			;bc39
	adc a,d			;bc3a
	ld b,e			;bc3b
	ld d,h			;bc3c
	ld b,e			;bc3d
	ld d,h			;bc3e
	ld d,h			;bc3f
	push hl			;bc40
	ld d,h			;bc41
	ld b,e			;bc42
	ld b,b			;bc43
	jr nc,lbc4bh		;bc44
	ld b,e			;bc46
	add a,a			;bc47
	ld (040f0h),a		;bc48
lbc4bh:
	jr nc,lbc6dh		;bc4b
	ret p			;bc4d
	di			;bc4e
	inc bc			;bc4f
	jp p,05485h		;bc50
	ld b,e			;bc53
	ld (0f4f4h),a		;bc54
	inc bc			;bc57
	di			;bc58
	sub c			;bc59
	xor 054h		;bc5a
	ld b,e			;bc5c
	push af			;bc5d
	push af			;bc5e
	call p,00ff4h		;bc5f
	rrca			;bc62
	jp p,024f3h		;bc63
	dec (hl)		;bc66
	ld b,c			;bc67
	ld e,043h		;bc68
	ld (0f303h),a		;bc6a
lbc6dh:
	add a,e			;bc6d
	call p,0fef5h		;bc6e
	inc b			;bc71
	ld b,e			;bc72
	add a,h			;bc73
	ld d,h			;bc74
	rst 38h			;bc75
	ld (00043h),a		;bc76
	ld (bc),a		;bc79
	pop bc			;bc7a
	adc a,c			;bc7b
	rst 38h			;bc7c
	ccf			;bc7d
	rlca			;bc7e
	nop			;bc7f
	rra			;bc80
	nop			;bc81
	cpl			;bc82
	cpl			;bc83
	rst 38h			;bc84
	inc bc			;bc85
	add a,b			;bc86
	adc a,c			;bc87
	adc a,d			;bc88
	adc a,(hl)		;bc89
	ret po			;bc8a
	rst 38h			;bc8b
	add a,b			;bc8c
	add a,b			;bc8d
	rst 38h			;bc8e
	djnz lbca1h		;bc8f
	ld b,07fh		;bc91
	inc bc			;bc93
	cp a			;bc94
	add a,d			;bc95
	jp z,0038eh		;bc96
	add a,b			;bc99
	add a,a			;bc9a
	rst 38h			;bc9b
	cpl			;bc9c
	cpl			;bc9d
	rlca			;bc9e
	nop			;bc9f
	nop			;bca0
lbca1h:
	rrca			;bca1
	inc b			;bca2
	ret nz			;bca3
	add a,e			;bca4
	ld a,a			;bca5
	nop			;bca6
	rrca			;bca7
	dec b			;bca8
	ccf			;bca9
	inc bc			;bcaa
	cp a			;bcab
	dec b			;bcac
	rst 38h			;bcad
	nop			;bcae
	add a,e			;bcaf
	di			;bcb0
	push af			;bcb1
	push af			;bcb2
	inc bc			;bcb3
	ld d,h			;bcb4
	add a,a			;bcb5
	ld b,e			;bcb6
	push hl			;bcb7
	push hl			;bcb8
	ld b,e			;bcb9
	di			;bcba
	di			;bcbb
	push af			;bcbc
	inc bc			;bcbd
	pop af			;bcbe
	ld (bc),a		;bcbf
	ld d,c			;bcc0
	add a,(hl)		;bcc1
	push af			;bcc2
	call p,0f5f4h		;bcc3
	call p,005e5h		;bcc6
	rst 38h			;bcc9
	add a,e			;bcca
	push hl			;bccb
	ld d,h			;bccc
	ld d,h			;bccd
	inc bc			;bcce
	cp 086h			;bccf
	pop af			;bcd1
	di			;bcd2
	di			;bcd3
	push hl			;bcd4
	push hl			;bcd5
	pop hl			;bcd6
	inc bc			;bcd7
	push hl			;bcd8
	add a,h			;bcd9
	cp 03eh			;bcda
	ld c,(hl)		;bcdc
	ld l,004h		;bcdd
	ld d,h			;bcdf
	add a,a			;bce0
	rst 38h			;bce1
	ld b,e			;bce2
	ld d,h			;bce3
	ccf			;bce4
	ld d,h			;bce5
	ld d,h			;bce6
	ld b,e			;bce7
	dec b			;bce8
	cp 000h			;bce9
	ld (bc),a		;bceb
	ret pe			;bcec
	adc a,(hl)		;bced
	call pe,0f8f7h		;bcee
	ld a,a			;bcf1
	ld a,a			;bcf2
	cpl			;bcf3
	xor a			;bcf4
	ld a,a			;bcf5
	rst 38h			;bcf6
	ret m			;bcf7
	rst 30h			;bcf8
	call pe,0e8e8h		;bcf9
	inc bc			;bcfc
	cp a			;bcfd
	adc a,e			;bcfe
	rst 38h			;bcff
	rst 30h			;bd00
	call pe,0e8e8h		;bd01
	xor a			;bd04
	ld a,a			;bd05
	rst 38h			;bd06
	rra			;bd07
	rst 28h			;bd08
	scf			;bd09
	inc b			;bd0a
	rla			;bd0b
	add a,e			;bd0c
	inc de			;bd0d
	ex af,af'		;bd0e
	nop			;bd0f
	inc bc			;bd10
	cp a			;bd11
	ld (bc),a		;bd12
	rla			;bd13
	add a,(hl)		;bd14
	scf			;bd15
	rst 28h			;bd16
	rra			;bd17
	ld a,a			;bd18
	ld a,a			;bd19
	cpl			;bd1a
	nop			;bd1b
	add a,c			;bd1c
	or 004h			;bd1d
	ld sp,hl		;bd1f
	add a,(hl)		;bd20
	jp p,0e5f5h		;bd21
	ld b,e			;bd24
	push af			;bd25
	push af			;bd26
	inc bc			;bd27
	ld sp,hl		;bd28
	add a,l			;bd29
	or 0feh			;bd2a
	ld d,h			;bd2c
	ld d,h			;bd2d
	ld b,e			;bd2e
	inc bc			;bd2f
	ld sp,hl		;bd30
	add a,l			;bd31
	or 0feh			;bd32
	ld b,e			;bd34
	push af			;bd35
	push af			;bd36
	inc bc			;bd37
	ld sp,hl		;bd38
	add a,e			;bd39
	or 0feh			;bd3a
	ld l,a			;bd3c
	inc b			;bd3d
	sbc a,a			;bd3e
	add a,h			;bd3f
	push hl			;bd40
	ld d,h			;bd41
	ld d,h			;bd42
	or 004h			;bd43
	ld sp,hl		;bd45
	add a,e			;bd46
	jp p,0e5f5h		;bd47
	nop			;bd4a
	add a,d			;bd4b
	xor a			;bd4c
	ld a,a			;bd4d
	dec bc			;bd4e
	rst 38h			;bd4f
	ld (bc),a		;bd50
	ld a,a			;bd51
	add a,c			;bd52
	cpl			;bd53
	nop			;bd54
	add a,c			;bd55
	ld b,e			;bd56
	inc c			;bd57
	push af			;bd58
	add a,e			;bd59
	jp p,0e5f5h		;bd5a
	nop			;bd5d
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
