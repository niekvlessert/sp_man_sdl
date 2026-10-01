; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank16_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank16.bin

	org 0a000h

la000h:
	cpl			;a000
	dec b			;a001
	ccf			;a002
	add a,e			;a003
	ret nz			;a004
	rst 38h			;a005
	nop			;a006
	rlca			;a007
	ld h,(hl)		;a008
	ld (bc),a		;a009
	rst 38h			;a00a
	ex af,af'		;a00b
	ret nz			;a00c
	rlca			;a00d
	sbc a,c			;a00e
	nop			;a00f
	sub h			;a010
	ret c			;a011
	ld (032e8h),a		;a012
	ret pe			;a015
	ret pe			;a016
	adc a,l			;a017
	ret nc			;a018
	ret nc			;a019
	ld hl,0218dh		;a01a
	adc a,l			;a01d
	adc a,l			;a01e
	ret nc			;a01f
	ret p			;a020
	defb 0edh ;next byte illegal after ed	;a021
	add a,b			;a022
	ret nc			;a023
	rst 18h			;a024
	inc b			;a025
	rrca			;a026
	add a,a			;a027
	jp (hl)			;a028
	add a,e			;a029
	jp nc,001d2h		;a02a
	rst 38h			;a02d
	ld bc,0f003h		;a02e
	add a,d			;a031
	dec c			;a032
	ret c			;a033
	inc bc			;a034
	adc a,(hl)		;a035
	add a,l			;a036
	ret c			;a037
	rst 38h			;a038
	djnz la068h		;a039
	jr c,$+5		;a03b
	sbc a,(hl)		;a03d
	add a,c			;a03e
	jr c,la041h		;a03f
la041h:
	ex af,af'		;a041
	cpl			;a042
	ex af,af'		;a043
	call p,01000h		;a044
	rst 20h			;a047
	nop			;a048
	ex af,af'		;a049
	jr $-122		;a04a
	ld a,a			;a04c
	ccf			;a04d
	ccf			;a04e
	ld a,a			;a04f
	inc bc			;a050
	ld l,089h		;a051
	rla			;a053
	rst 38h			;a054
	inc e			;a055
	ld (01c3eh),hl		;a056
	ld (06666h),hl		;a059
	inc bc			;a05c
	ret pe			;a05d
	inc bc			;a05e
	ccf			;a05f
	adc a,d			;a060
	rst 38h			;a061
	ret pe			;a062
	nop			;a063
	rst 38h			;a064
	rst 38h			;a065
	nop			;a066
	rla			;a067
la068h:
	rla			;a068
	rst 38h			;a069
	nop			;a06a
	inc bc			;a06b
	rla			;a06c
	ld (bc),a		;a06d
	nop			;a06e
	inc bc			;a06f
	ld e,h			;a070
	inc b			;a071
	dec bc			;a072
	sub h			;a073
	rra			;a074
	ret pe			;a075
	ret pe			;a076
	rra			;a077
	inc bc			;a078
	rra			;a079
	dec c			;a07a
	rra			;a07b
	dec c			;a07c
	rra			;a07d
	dec c			;a07e
	nop			;a07f
	ret nz			;a080
	rlca			;a081
	sbc a,a			;a082
	ret m			;a083
	sbc a,a			;a084
	ret m			;a085
	sbc a,a			;a086
	jr nz,la089h		;a087
la089h:
	adc a,a			;a089
	add a,e			;a08a
	ret nc			;a08b
	ret pe			;a08c
	ret nc			;a08d
	ret pe			;a08e
	ret nc			;a08f
	ret pe			;a090
	ret nc			;a091
	add a,e			;a092
	ret pe			;a093
	ret nc			;a094
	di			;a095
	ret nc			;a096
	defb 0edh ;next byte illegal after ed	;a097
	rrca			;a098
	inc bc			;a099
	ret pe			;a09a
	ld (bc),a		;a09b
	ret c			;a09c
	adc a,e			;a09d
	ret m			;a09e
	ret c			;a09f
	ret m			;a0a0
	xor 0d8h		;a0a1
	dec c			;a0a3
	ret p			;a0a4
	di			;a0a5
	inc bc			;a0a6
	di			;a0a7
	di			;a0a8
	inc bc			;a0a9
	ret c			;a0aa
	ld (bc),a		;a0ab
	rrca			;a0ac
	add a,(hl)		;a0ad
	defb 0edh ;next byte illegal after ed	;a0ae
	adc a,l			;a0af
	cp 0feh			;a0b0
	ret nc			;a0b2
	ret nc			;a0b3
	inc bc			;a0b4
	rrca			;a0b5
	sub a			;a0b6
	ret nc			;a0b7
	add a,b			;a0b8
	rst 38h			;a0b9
	ret pe			;a0ba
	ret pe			;a0bb
	adc a,l			;a0bc
	rst 38h			;a0bd
	ret nc			;a0be
	ret c			;a0bf
	ret c			;a0c0
	ret nc			;a0c1
	add a,e			;a0c2
	out (080h),a		;a0c3
	ret m			;a0c5
	add a,b			;a0c6
	defb 0fdh,0d0h,0d0h ;illegal sequence	;a0c7
	out (030h),a		;a0ca
	defb 0fdh,0f8h,003h ;illegal sequence	;a0cc
	defb 0fdh,081h,0f0h ;illegal sequence	;a0cf
	nop			;a0d2
	inc b			;a0d3
	jr nz,la0e0h		;a0d4
	ret pe			;a0d6
	inc bc			;a0d7
	rst 38h			;a0d8
	ld (bc),a		;a0d9
	nop			;a0da
	inc bc			;a0db
	rst 38h			;a0dc
	ld (bc),a		;a0dd
	nop			;a0de
	nop			;a0df
la0e0h:
	inc b			;a0e0
	ld de,07581h		;a0e1
	ld b,011h		;a0e4
	add a,e			;a0e6
	ld (hl),l		;a0e7
	ld e,(hl)		;a0e8
	ld (hl),l		;a0e9
	inc b			;a0ea
	rla			;a0eb
	dec b			;a0ec
	push hl			;a0ed
	add a,c			;a0ee
	rst 30h			;a0ef
	nop			;a0f0
	inc bc			;a0f1
	rst 38h			;a0f2
	inc bc			;a0f3
	nop			;a0f4
	ld (bc),a		;a0f5
	rst 38h			;a0f6
	nop			;a0f7
	dec b			;a0f8
	call p,05702h		;a0f9
	add a,c			;a0fc
	call po,00200h		;a0fd
	nop			;a100
	ld b,0ffh		;a101
	nop			;a103
	add a,e			;a104
	call po,05757h		;a105
	dec b			;a108
	rst 28h			;a109
	nop			;a10a
	inc bc			;a10b
	nop			;a10c
	inc bc			;a10d
	rst 38h			;a10e
	ld (bc),a		;a10f
	nop			;a110
	nop			;a111
	add a,c			;a112
	rst 28h			;a113
	inc b			;a114
	ld (hl),h		;a115
	inc bc			;a116
	ld e,(hl)		;a117
	nop			;a118
	ld (bc),a		;a119
	nop			;a11a
	inc b			;a11b
	rst 38h			;a11c
	ld (bc),a		;a11d
	nop			;a11e
	nop			;a11f
	inc b			;a120
	ld c,a			;a121
	inc bc			;a122
	ld (hl),l		;a123
	add a,c			;a124
	ld c,000h		;a125
	ld (bc),a		;a127
	rrca			;a128
	sbc a,a			;a129
	ld a,a			;a12a
	rlca			;a12b
	jr c,$+119		;a12c
	ld (de),a		;a12e
	ld (0f0f0h),hl		;a12f
	cp 0e0h			;a132
	inc e			;a134
	xor (hl)		;a135
	ld c,b			;a136
	ld b,h			;a137
	ld (07512h),hl		;a138
	jr c,la144h		;a13b
	ld a,a			;a13d
	rrca			;a13e
	rrca			;a13f
	ld b,h			;a140
	ld c,b			;a141
	xor (hl)		;a142
	inc e			;a143
la144h:
	ret po			;a144
	cp 0f0h			;a145
	ret p			;a147
	add a,b			;a148
	ld b,0ffh		;a149
	inc b			;a14b
la14ch:
	add a,b			;a14c
	ld (bc),a		;a14d
	rst 38h			;a14e
	dec bc			;a14f
	add a,b			;a150
	nop			;a151
	and b			;a152
	ld (01021h),a		;a153
	djnz $+50		;a156
	jr nz,la14ch		;a158
	pop af			;a15a
	ld (01021h),a		;a15b
	djnz $+50		;a15e
	jr nz,$-12		;a160
	pop af			;a162
	pop af			;a163
	jp p,03020h		;a164
	djnz la179h		;a167
	ld hl,0f132h		;a169
	jp p,03020h		;a16c
	djnz la181h		;a16f
	ld hl,00832h		;a171
	ret pe			;a174
	add a,c			;a175
	adc a,l			;a176
	ld b,0e8h		;a177
la179h:
	adc a,c			;a179
	adc a,l			;a17a
	rst 18h			;a17b
	adc a,l			;a17c
	adc a,l			;a17d
	ret pe			;a17e
	ret pe			;a17f
	adc a,l			;a180
la181h:
	adc a,l			;a181
	rst 18h			;a182
	nop			;a183
	adc a,h			;a184
	inc bc			;a185
	rrca			;a186
	cp 043h			;a187
	ld b,c			;a189
	ld b,e			;a18a
	cp 0feh			;a18b
	ret po			;a18d
	ret m			;a18e
	call m,003fch		;a18f
	dec h			;a192
	sub c			;a193
	cp 037h			;a194
	ld e,b			;a196
	ld e,h			;a197
	ld a,01fh		;a198
	or b			;a19a
	add hl,sp		;a19b
	ld c,0e0h		;a19c
	call m,03e7eh		;a19e
	jp z,080cah		;a1a1
	cp 000h			;a1a4
	and b			;a1a6
	jr nz,$+50		;a1a7
	pop af			;a1a9
	cp 0f3h			;a1aa
	jp p,023f1h		;a1ac
la1afh:
	jr nz,$+50		;a1af
	jr nz,la1c3h		;a1b1
	di			;a1b3
	jp p,03211h		;a1b4
la1b7h:
	jr nz,$-30		;a1b7
	jr nc,la1ebh		;a1b9
	jr nz,la1afh		;a1bb
	pop af			;a1bd
	di			;a1be
	jr nz,la1f1h		;a1bf
	jr nz,la1d3h		;a1c1
la1c3h:
	di			;a1c3
	jp p,032f1h		;a1c4
	nop			;a1c7
	sbc a,a			;a1c8
	call m,0071ch		;a1c9
	inc bc			;a1cc
	ld b,c			;a1cd
	jr nc,la1ech		;a1ce
	ld e,071h		;a1d0
	inc e			;a1d2
la1d3h:
	rlca			;a1d3
	inc bc			;a1d4
	ld b,c			;a1d5
	jr nc,la1f4h		;a1d6
	ld e,03fh		;a1d8
	rst 38h			;a1da
	ld a,(hl)		;a1db
	cp (hl)			;a1dc
	call c,074ech		;a1dd
	jr c,la1feh		;a1e0
	adc a,(hl)		;a1e2
	ld b,(hl)		;a1e3
	inc bc			;a1e4
	ld bc,0038fh		;a1e5
	inc bc			;a1e8
	nop			;a1e9
	ld (bc),a		;a1ea
la1ebh:
	inc de			;a1eb
la1ech:
	sbc a,h			;a1ec
	add a,b			;a1ed
	ret m			;a1ee
	jr nc,la20fh		;a1ef
la1f1h:
	ld (hl),c		;a1f1
	inc e			;a1f2
	rlca			;a1f3
la1f4h:
	ld bc,lb820h		;a1f4
	call c,057feh		;a1f7
	ld d,l			;a1fa
	rst 38h			;a1fb
	xor a			;a1fc
	xor e			;a1fd
la1feh:
	cp 058h			;a1fe
la200h:
	ret po			;a200
	add a,b			;a201
	inc a			;a202
	ld c,003h		;a203
	add a,b			;a205
	ret po			;a206
	ret m			;a207
	cp 005h			;a208
	ld bc,00302h		;a20a
	add a,l			;a20d
	ld a,a			;a20e
la20fh:
	ld h,l			;a20f
	ld a,(0ff7fh)		;a210
	inc bc			;a213
	xor c			;a214
	dec b			;a215
	rst 38h			;a216
	inc bc			;a217
	ld a,a			;a218
	adc a,c			;a219
	rst 38h			;a21a
	ret m			;a21b
	ret po			;a21c
	rst 0			;a21d
	sbc a,h			;a21e
	sbc a,b			;a21f
	jr nc,$+50		;a220
	ccf			;a222
	inc bc			;a223
	jp nz,0c485h		;a224
	ret m			;a227
	add a,b			;a228
	ld (hl),b		;a229
	jr c,la22fh		;a22a
	jr nc,la1b7h		;a22c
	sbc a,b			;a22e
la22fh:
	sbc a,h			;a22f
	rst 0			;a230
	ret po			;a231
	ret m			;a232
	cp 0f8h			;a233
	ret nz			;a235
	ret m			;a236
	inc b			;a237
	rst 38h			;a238
	or d			;a239
	rlca			;a23a
	dec bc			;a23b
	sbc a,l			;a23c
	jp m,0ff87h		;a23d
	rst 18h			;a240
	xor 0f1h		;a241
	ex (sp),hl		;a243
	ld b,(hl)		;a244
	ld l,h			;a245
	add hl,sp		;a246
	inc sp			;a247
	ld h,a			;a248
	ld a,a			;a249
	jp po,0c0feh		;a24a
	ret nz			;a24d
	ret po			;a24e
	ret p			;a24f
	call m,070ffh		;a250
	ret m			;a253
	defb 0fdh,0feh,07fh ;illegal sequence	;a254
	ccf			;a257
	rra			;a258
	rrca			;a259
	rst 38h			;a25a
	ld bc,00202h		;a25b
	inc b			;a25e
	jr la2c1h		;a25f
	add a,b			;a261
	rra			;a262
	rra			;a263
	ret nz			;a264
	rst 38h			;a265
	ld (hl),b		;a266
	ld (hl),b		;a267
	ld a,(hl)		;a268
	jp p,07f43h		;a269
	inc bc			;a26c
	ld bc,00302h		;a26d
	add a,e			;a270
	ld a,a			;a271
	ld bc,003fdh		;a272
	ld bc,00283h		;a275
	cp 0feh			;a278
	inc b			;a27a
	ld bc,0ff98h		;a27b
	inc bc			;a27e
	inc bc			;a27f
	ld a,a			;a280
	ld (hl),c		;a281
	xor a			;a282
	and l			;a283
	push hl			;a284
	ld h,l			;a285
	dec (hl)		;a286
	dec e			;a287
	dec c			;a288
	defb 0fdh,0f3h,0ceh ;illegal sequence	;a289
	inc a			;a28c
	rrca			;a28d
	nop			;a28e
	ld a,(hl)		;a28f
	cp l			;a290
	rlca			;a291
	ld b,0fch		;a292
	call m,00104h		;a294
	add a,e			;a297
	ld b,d			;a298
	ld a,(hl)		;a299
	ld a,(hl)		;a29a
	inc b			;a29b
	ld (bc),a		;a29c
	add a,c			;a29d
	cp 000h			;a29e
	add a,c			;a2a0
	jr nz,la2bfh		;a2a1
	ld (02106h),a		;a2a3
	add a,e			;a2a6
	pop af			;a2a7
	ld hl,00621h		;a2a8
	ld (0f205h),a		;a2ab
	ld (bc),a		;a2ae
	pop af			;a2af
	add a,d			;a2b0
	jp p,004f1h		;a2b1
	jp p,03203h		;a2b4
	dec b			;a2b7
	jp p,0f385h		;a2b8
	jp p,0f2f1h		;a2bb
	di			;a2be
la2bfh:
	inc bc			;a2bf
	cpl			;a2c0
la2c1h:
	add a,l			;a2c1
	pop af			;a2c2
	jp p,0f1f2h		;a2c3
	ld (de),a		;a2c6
	inc c			;a2c7
	pop af			;a2c8
	ld (bc),a		;a2c9
	jp p,0f302h		;a2ca
	inc bc			;a2cd
	jp p,0f105h		;a2ce
	add a,h			;a2d1
	ld hl,0f332h		;a2d2
	jp p,0f107h		;a2d5
	add a,c			;a2d8
	jp p,0f10fh		;a2d9
	dec b			;a2dc
	jp p,0f105h		;a2dd
	add a,c			;a2e0
	ld (de),a		;a2e1
	ex af,af'		;a2e2
	pop af			;a2e3
	dec b			;a2e4
	jp p,0f381h		;a2e5
	ld b,0f2h		;a2e8
	add a,d			;a2ea
	ld hl,00332h		;a2eb
	pop af			;a2ee
	ld (bc),a		;a2ef
	jp p,0f104h		;a2f0
	adc a,d			;a2f3
	di			;a2f4
	jp p,02ff1h		;a2f5
	cpl			;a2f8
	ld hl,03232h		;a2f9
	ld hl,0042fh		;a2fc
	pop af			;a2ff
	add a,d			;a300
	di			;a301
	jp p,0f103h		;a302
	ld (bc),a		;a305
	cpl			;a306
	ld (bc),a		;a307
	pop af			;a308
	ld b,0f2h		;a309
	sub l			;a30b
	ld hl,02131h		;a30c
	ld hl,0f3f2h		;a30f
	di			;a312
	ld hl,03221h		;a313
	di			;a316
	inc de			;a317
	ld (0212fh),a		;a318
	cpl			;a31b
	pop af			;a31c
	jp p,0f3f3h		;a31d
	jp p,0f103h		;a320
	nop			;a323
	ld (bc),a		;a324
	ld d,l			;a325
	add a,c			;a326
	rst 38h			;a327
	inc bc			;a328
	nop			;a329
	ld (bc),a		;a32a
	xor d			;a32b
	add a,l			;a32c
	inc a			;a32d
	rst 38h			;a32e
	inc a			;a32f
	inc a			;a330
	rst 38h			;a331
	ld (de),a		;a332
	inc a			;a333
	add a,h			;a334
	cp l			;a335
	inc a			;a336
	inc a			;a337
	cp l			;a338
	add hl,bc		;a339
	inc a			;a33a
	add a,l			;a33b
	cp l			;a33c
	inc a			;a33d
	inc a			;a33e
	rst 38h			;a33f
la340h:
	inc a			;a340
	inc b			;a341
	nop			;a342
	ld (bc),a		;a343
	add a,c			;a344
	add a,(hl)		;a345
	rst 38h			;a346
	nop			;a347
	nop			;a348
	ld h,(hl)		;a349
	ld h,(hl)		;a34a
	nop			;a34b
	inc bc			;a34c
	jp 00002h		;a34d
	ld (bc),a		;a350
	ld b,d			;a351
	ld (bc),a		;a352
	nop			;a353
	ld (bc),a		;a354
	inc a			;a355
	add a,d			;a356
	ld d,l			;a357
	rst 38h			;a358
	inc bc			;a359
	add a,b			;a35a
	sub (hl)		;a35b
	rra			;a35c
	rlca			;a35d
	ld bc,07effh		;a35e
	jr la3c9h		;a361
la363h:
	rst 20h			;a363
	nop			;a364
	ld a,(hl)		;a365
	ld a,(hl)		;a366
	sub e			;a367
	sub e			;a368
	rst 38h			;a369
	nop			;a36a
	nop			;a36b
	rst 38h			;a36c
	sub e			;a36d
	sub e			;a36e
	ld hl,(0152ah)		;a36f
	inc bc			;a372
	ld a,002h		;a373
	ld hl,01806h		;a375
	add a,l			;a378
	rst 38h			;a379
	jr la3beh		;a37a
	ld l,(hl)		;a37c
	djnz la383h		;a37d
	rst 10h			;a37f
	add a,l			;a380
	djnz la340h		;a381
la383h:
	add a,c			;a383
	rst 38h			;a384
	rst 38h			;a385
	inc bc			;a386
	nop			;a387
	add a,d			;a388
	rst 38h			;a389
	cp l			;a38a
	ld d,0a5h		;a38b
	adc a,h			;a38d
	cp l			;a38e
	rst 38h			;a38f
	ld d,h			;a390
	ld d,l			;a391
	ld bc,0fd01h		;a392
	ld bc,00001h		;a395
	rst 20h			;a398
	rst 20h			;a399
	inc bc			;a39a
	inc a			;a39b
	and l			;a39c
	rst 38h			;a39d
	nop			;a39e
	nop			;a39f
	in a,(0dbh)		;a3a0
	nop			;a3a2
	ld a,(hl)		;a3a3
	ld a,(hl)		;a3a4
	nop			;a3a5
	rst 38h			;a3a6
	ld bc,01f2bh		;a3a7
	rrca			;a3aa
	ld e,00eh		;a3ab
	ld bc,00007h		;a3ad
	ld a,a			;a3b0
	add a,b			;a3b1
	ccf			;a3b2
	ld (hl),l		;a3b3
	ld (hl),l		;a3b4
	ld d,l			;a3b5
	ld (hl),l		;a3b6
	ld a,a			;a3b7
	ld h,b			;a3b8
	ld a,a			;a3b9
	ld h,b			;a3ba
	ld a,a			;a3bb
	ld (hl),l		;a3bc
	ld e,a			;a3bd
la3beh:
	ld (hl),l		;a3be
	rst 38h			;a3bf
	ld d,l			;a3c0
	ld d,l			;a3c1
	inc bc			;a3c2
	rst 38h			;a3c3
	ld (bc),a		;a3c4
la3c5h:
	nop			;a3c5
	ld (bc),a		;a3c6
	rst 38h			;a3c7
	ld (bc),a		;a3c8
la3c9h:
	nop			;a3c9
	add a,(hl)		;a3ca
	rst 38h			;a3cb
	nop			;a3cc
	rst 38h			;a3cd
	rst 38h			;a3ce
	djnz $-39		;a3cf
	inc bc			;a3d1
	djnz la363h		;a3d2
	jr z,la3c5h		;a3d4
	rst 28h			;a3d6
	rst 38h			;a3d7
	nop			;a3d8
	rst 38h			;a3d9
	rst 38h			;a3da
	nop			;a3db
	nop			;a3dc
	ld a,(hl)		;a3dd
	cp l			;a3de
	jp pe,0ffaah		;a3df
	rst 38h			;a3e2
	inc bc			;a3e3
	ld d,l			;a3e4
	add a,l			;a3e5
	rst 38h			;a3e6
	nop			;a3e7
	nop			;a3e8
	rst 38h			;a3e9
	rst 38h			;a3ea
	inc bc			;a3eb
	ld d,l			;a3ec
	ld (bc),a		;a3ed
	rst 38h			;a3ee
	ld b,000h		;a3ef
	ld (bc),a		;a3f1
	rst 38h			;a3f2
	ld (bc),a		;a3f3
	xor d			;a3f4
	ld (bc),a		;a3f5
	nop			;a3f6
	ld (bc),a		;a3f7
	xor d			;a3f8
	ld (bc),a		;a3f9
	rst 38h			;a3fa
	ld (bc),a		;a3fb
	xor d			;a3fc
	ld (bc),a		;a3fd
	nop			;a3fe
	ld (bc),a		;a3ff
	xor d			;a400
	adc a,c			;a401
	rst 38h			;a402
	inc e			;a403
	ld a,063h		;a404
	pop bc			;a406
	add a,b			;a407
	ld a,07fh		;a408
	ld a,(hl)		;a40a
	ex af,af'		;a40b
	ld e,b			;a40c
	adc a,h			;a40d
	rst 38h			;a40e
	ld (hl),049h		;a40f
	adc a,b			;a411
	ex af,af'		;a412
	inc e			;a413
	inc e			;a414
	ld c,c			;a415
	rst 38h			;a416
	nop			;a417
	nop			;a418
	rst 38h			;a419
	inc b			;a41a
	ld de,04283h		;a41b
	add a,c			;a41e
	rst 38h			;a41f
	inc bc			;a420
	nop			;a421
	add a,a			;a422
	ld a,(hl)		;a423
	cp l			;a424
	xor d			;a425
	xor d			;a426
	add a,b			;a427
	add a,c			;a428
	add a,c			;a429
	inc bc			;a42a
	ld b,c			;a42b
	adc a,d			;a42c
	nop			;a42d
	rra			;a42e
	nop			;a42f
	ccf			;a430
	ccf			;a431
	rrca			;a432
	ld a,022h		;a433
	cp 055h			;a435
	ld b,001h		;a437
	adc a,b			;a439
	nop			;a43a
	rst 38h			;a43b
	ex af,af'		;a43c
	rst 30h			;a43d
	ld d,l			;a43e
	ld d,l			;a43f
	rst 38h			;a440
	ld d,l			;a441
	inc b			;a442
	dec d			;a443
	ld (bc),a		;a444
	sub l			;a445
	ld (bc),a		;a446
	add a,b			;a447
	add a,d			;a448
	ld d,l			;a449
	rst 38h			;a44a
	inc bc			;a44b
	nop			;a44c
	sub l			;a44d
	rst 38h			;a44e
	ld d,l			;a44f
	ld d,l			;a450
	jp 0ffc3h		;a451
	jp 0ffc3h		;a454
	rst 38h			;a457
	jp 025a5h		;a458
	push bc			;a45b
	add hl,bc		;a45c
	di			;a45d
	rlca			;a45e
	call m,055ffh		;a45f
	rst 38h			;a462
	inc bc			;a463
	ld bc,0f883h		;a464
	ret po			;a467
	add a,b			;a468
	inc bc			;a469
	ld de,0ff02h		;a46a
	ld (bc),a		;a46d
	nop			;a46e
	ld b,0ffh		;a46f
	add a,e			;a471
	jp 0c3ffh		;a472
	inc bc			;a475
	ld a,a			;a476
	add a,d			;a477
	rst 38h			;a478
	ld a,a			;a479
	inc bc			;a47a
	rst 38h			;a47b
	add a,l			;a47c
	set 7,a			;a47d
	adc a,(hl)		;a47f
	cp a			;a480
	cp a			;a481
	inc bc			;a482
	rst 38h			;a483
	adc a,e			;a484
	rst 30h			;a485
	rst 38h			;a486
	rst 30h			;a487
	rst 30h			;a488
	djnz $+1		;a489
	ret m			;a48b
	ld hl,(0ff4bh)		;a48c
	add a,h			;a48f
	inc bc			;a490
	cp l			;a491
	add a,e			;a492
	defb 0fdh,0ffh,0fdh ;illegal sequence	;a493
	inc bc			;a496
	cp l			;a497
	add a,a			;a498
	add a,h			;a499
	rst 38h			;a49a
	ex de,hl		;a49b
	ex af,af'		;a49c
	ld (bc),a		;a49d
	nop			;a49e
	rst 28h			;a49f
	inc bc			;a4a0
	ex af,af'		;a4a1
	inc bc			;a4a2
	nop			;a4a3
	add a,(hl)		;a4a4
	inc h			;a4a5
	nop			;a4a6
	inc h			;a4a7
	inc h			;a4a8
	nop			;a4a9
	inc h			;a4aa
	inc bc			;a4ab
	nop			;a4ac
	inc b			;a4ad
	ld e,d			;a4ae
	ld (bc),a		;a4af
	nop			;a4b0
	ex af,af'		;a4b1
	ld a,(hl)		;a4b2
	ex af,af'		;a4b3
	ld c,c			;a4b4
	add a,c			;a4b5
	nop			;a4b6
	rlca			;a4b7
	ld e,b			;a4b8
	ex af,af'		;a4b9
	add a,c			;a4ba
	ex af,af'		;a4bb
	add a,b			;a4bc
	add a,h			;a4bd
	ld bc,0015dh		;a4be
	defb 0fdh,004h,081h ;illegal sequence	;a4c1
	add a,e			;a4c4
	nop			;a4c5
	inc (hl)		;a4c6
	nop			;a4c7
	dec b			;a4c8
	ld a,(hl)		;a4c9
	add a,h			;a4ca
	nop			;a4cb
	rst 10h			;a4cc
	nop			;a4cd
	nop			;a4ce
	inc b			;a4cf
	ld a,a			;a4d0
	ld (bc),a		;a4d1
	ld b,b			;a4d2
	add a,c			;a4d3
	add a,b			;a4d4
	dec b			;a4d5
	ld a,(hl)		;a4d6
	ld (bc),a		;a4d7
	ld (bc),a		;a4d8
	ld (bc),a		;a4d9
	cp 004h			;a4da
	add a,c			;a4dc
	add a,e			;a4dd
	rst 38h			;a4de
	nop			;a4df
	rst 38h			;a4e0
	dec b			;a4e1
	add a,b			;a4e2
	ld (bc),a		;a4e3
	ld b,b			;a4e4
	adc a,b			;a4e5
	add a,b			;a4e6
	ld a,(hl)		;a4e7
	nop			;a4e8
	nop			;a4e9
	rst 38h			;a4ea
	ld a,(hl)		;a4eb
	ld (bc),a		;a4ec
	ld (bc),a		;a4ed
	inc bc			;a4ee
	cp 095h			;a4ef
	nop			;a4f1
	cp 081h			;a4f2
	rst 38h			;a4f4
	nop			;a4f5
	rst 38h			;a4f6
	add a,b			;a4f7
	rst 38h			;a4f8
	nop			;a4f9
	rst 38h			;a4fa
	add a,b			;a4fb
	nop			;a4fc
	inc a			;a4fd
	ld a,(hl)		;a4fe
	nop			;a4ff
	inc a			;a500
	ld a,(hl)		;a501
	nop			;a502
	inc a			;a503
	ld b,d			;a504
	inc a			;a505
	inc bc			;a506
	ld a,(hl)		;a507
	and h			;a508
	ld b,d			;a509
	inc a			;a50a
	ld a,(hl)		;a50b
	ld bc,0015dh		;a50c
	pop bc			;a50f
	nop			;a510
	rst 18h			;a511
	add a,c			;a512
	nop			;a513
	nop			;a514
	ld (hl),h		;a515
	nop			;a516
	ld b,000h		;a517
	ld b,07ah		;a519
	nop			;a51b
	nop			;a51c
	rst 38h			;a51d
	add a,c			;a51e
	add a,c			;a51f
	rst 38h			;a520
	nop			;a521
	add a,b			;a522
	add a,b			;a523
	ld h,c			;a524
	jp 0c301h		;a525
	ld bc,001c3h		;a528
	jp 00706h		;a52b
	inc a			;a52e
	sub h			;a52f
	ld bc,00181h		;a530
	add a,c			;a533
	ld bc,08101h		;a534
	add a,c			;a537
	nop			;a538
	ld a,(hl)		;a539
	nop			;a53a
	ld a,(hl)		;a53b
	nop			;a53c
	nop			;a53d
	ld a,(hl)		;a53e
	ld a,(hl)		;a53f
	call m,08181h		;a540
	defb 0fdh,005h,081h ;illegal sequence	;a543
	ld (bc),a		;a546
	cp a			;a547
	dec b			;a548
	ld a,(hl)		;a549
	add a,h			;a54a
	push af			;a54b
	add a,b			;a54c
	add a,b			;a54d
	rst 38h			;a54e
	inc b			;a54f
	add a,b			;a550
	sub l			;a551
	nop			;a552
	ld a,(hl)		;a553
	nop			;a554
	ld a,(hl)		;a555
	ld a,(hl)		;a556
	ld b,d			;a557
	inc a			;a558
	ld a,(hl)		;a559
	rrca			;a55a
	rlca			;a55b
	rlca			;a55c
	inc bc			;a55d
	ld b,00eh		;a55e
	ld c,0ceh		;a560
	add a,b			;a562
	ret nz			;a563
	ret po			;a564
	ret po			;a565
	call pe,0ee04h		;a566
	add a,a			;a569
	and 0e0h		;a56a
	ret po			;a56c
	ret p			;a56d
	ret po			;a56e
	ret nz			;a56f
	add a,b			;a570
	inc b			;a571
	and l			;a572
	sbc a,h			;a573
	xor l			;a574
	cp a			;a575
	cp a			;a576
	rst 38h			;a577
	ret nz			;a578
	ld a,a			;a579
	rst 38h			;a57a
	nop			;a57b
	xor 06eh		;a57c
	ld b,000h		;a57e
	ret nz			;a580
	ret po			;a581
	ret po			;a582
	ret m			;a583
	call m,0fffeh		;a584
	nop			;a587
	nop			;a588
	ld b,00eh		;a589
	ccf			;a58b
	ccf			;a58c
	ld a,a			;a58d
	rst 38h			;a58e
	nop			;a58f
	nop			;a590
	add a,d			;a591
	jp p,003f1h		;a592
	ld hl,01f02h		;a595
	inc bc			;a598
	cpl			;a599
	and l			;a59a
	ld hl,02f2fh		;a59b
	ld hl,0211fh		;a59e
	cpl			;a5a1
	ld sp,03132h		;a5a2
	cpl			;a5a5
	ld sp,02132h		;a5a6
	jr nz,$+35		;a5a9
	cpl			;a5ab
	ld sp,0323fh		;a5ac
	ccf			;a5af
	ld (0ef31h),a		;a5b0
	ld (0efe1h),a		;a5b3
	ex (sp),hl		;a5b6
	ld sp,0e33fh		;a5b7
	ld sp,02f21h		;a5ba
	ld (02121h),a		;a5bd
	ld b,0f3h		;a5c0
	add a,c			;a5c2
	ld (03f03h),a		;a5c3
	ld (bc),a		;a5c6
	ld (0f202h),a		;a5c7
	add a,d			;a5ca
	ld (003f2h),a		;a5cb
	ld (de),a		;a5ce
	add a,c			;a5cf
	ld (0f203h),a		;a5d0
	add a,c			;a5d3
	ld sp,0f103h		;a5d4
	inc bc			;a5d7
	ld hl,0f204h		;a5d8
	inc bc			;a5db
	ld (0f202h),a		;a5dc
	add a,(hl)		;a5df
	ld sp,0f2f1h		;a5e0
	pop af			;a5e3
	ld (00332h),a		;a5e4
	pop af			;a5e7
	add a,a			;a5e8
	jp p,02131h		;a5e9
	pop af			;a5ec
	ld sp,02131h		;a5ed
	inc bc			;a5f0
	pop af			;a5f1
	add a,h			;a5f2
	ld (de),a		;a5f3
	inc hl			;a5f4
	ld (de),a		;a5f5
	ld (de),a		;a5f6
	dec b			;a5f7
	pop af			;a5f8
	ld (bc),a		;a5f9
	ld sp,02181h		;a5fa
	ld b,01fh		;a5fd
	ld (bc),a		;a5ff
	ld (0f105h),a		;a600
	add a,h			;a603
	jp p,0f2f1h		;a604
	jp p,0f30ch		;a607
	ld (bc),a		;a60a
	jp p,0f182h		;a60b
	jp p,0f103h		;a60e
	adc a,h			;a611
	ld sp,03121h		;a612
	ccf			;a615
	ld sp,03f31h		;a616
	ld (0f232h),a		;a619
	ld hl,00313h		;a61c
	rra			;a61f
	ld (bc),a		;a620
	ld (0f202h),a		;a621
	add a,c			;a624
	ld sp,0f103h		;a625
	add a,c			;a628
	jp p,02105h		;a629
	inc bc			;a62c
	pop af			;a62d
	ld (bc),a		;a62e
	ld (0f20fh),a		;a62f
	inc bc			;a632
	pop af			;a633
	ld (bc),a		;a634
	ld hl,01f02h		;a635
	ld (bc),a		;a638
	ld (0f105h),a		;a639
	add a,l			;a63c
	ld hl,03232h		;a63d
	ld hl,0032fh		;a640
	pop af			;a643
	inc bc			;a644
	inc hl			;a645
	ld (bc),a		;a646
	ld (de),a		;a647
	ld (bc),a		;a648
	di			;a649
	add a,d			;a64a
	ld hl,004f2h		;a64b
	pop af			;a64e
	add a,c			;a64f
	ld (de),a		;a650
	inc bc			;a651
	pop af			;a652
	ld (bc),a		;a653
	inc hl			;a654
	ld (bc),a		;a655
	pop af			;a656
	add a,e			;a657
	ld (de),a		;a658
	pop af			;a659
	pop af			;a65a
	ex af,af'		;a65b
	xor (hl)		;a65c
	ld (bc),a		;a65d
	ld l,d			;a65e
	inc b			;a65f
	xor (hl)		;a660
	ld (bc),a		;a661
	ld l,d			;a662
	ld (bc),a		;a663
	ld b,004h		;a664
	ld l,d			;a666
	ld (bc),a		;a667
	ld b,085h		;a668
	jp p,0f1f1h		;a66a
	jp p,00cf2h		;a66d
	ld (0f202h),a		;a670
	ld (bc),a		;a673
	di			;a674
	add a,l			;a675
	jp p,0f23fh		;a676
	ld (00332h),a		;a679
	pop af			;a67c
	add a,c			;a67d
	jp p,01304h		;a67e
	inc bc			;a681
	ld hl,0f302h		;a682
	add a,a			;a685
	ld hl,01f32h		;a686
	rra			;a689
	di			;a68a
	di			;a68b
	jp p,0f103h		;a68c
	ld (bc),a		;a68f
	ld hl,0f102h		;a690
	adc a,d			;a693
	ld hl,0f1f1h		;a694
	di			;a697
	ld (03f31h),a		;a698
	ccf			;a69b
	ld (00331h),a		;a69c
	ccf			;a69f
	ld (bc),a		;a6a0
	jp p,0f381h		;a6a1
	inc b			;a6a4
	jp p,0f121h		;a6a5
	inc bc			;a6a8
	ld hl,0f205h		;a6a9
	ld (bc),a		;a6ac
	pop af			;a6ad
	ld (bc),a		;a6ae
	ld (0f102h),a		;a6af
	cpl			;a6b2
	inc b			;a6b3
	inc bc			;a6b4
	ld d,b			;a6b5
	add hl,bc		;a6b6
	ld b,b			;a6b7
	add a,c			;a6b8
	ld d,b			;a6b9
	ld b,040h		;a6ba
	add a,c			;a6bc
	ld d,b			;a6bd
	ld c,040h		;a6be
	adc a,(hl)		;a6c0
	ld d,h			;a6c1
	ld d,b			;a6c2
	ld d,b			;a6c3
	ld b,b			;a6c4
	ld d,b			;a6c5
	ld d,h			;a6c6
	ld b,b			;a6c7
	ld b,b			;a6c8
	ld d,h			;a6c9
	nop			;a6ca
	ld d,h			;a6cb
	nop			;a6cc
	ld d,h			;a6cd
	nop			;a6ce
	ld de,00354h		;a6cf
	ld d,b			;a6d2
	dec b			;a6d3
	ld d,h			;a6d4
	inc bc			;a6d5
	ld b,b			;a6d6
	add a,c			;a6d7
	ld d,b			;a6d8
	rlca			;a6d9
	ld b,b			;a6da
	dec b			;a6db
	ld b,l			;a6dc
	add a,d			;a6dd
	ld b,b			;a6de
	dec b			;a6df
	rlca			;a6e0
	ld b,b			;a6e1
	ld (bc),a		;a6e2
	dec b			;a6e3
	add a,c			;a6e4
	ld b,b			;a6e5
	inc b			;a6e6
la6e7h:
	ld d,h			;a6e7
	inc bc			;a6e8
	dec b			;a6e9
	dec b			;a6ea
	ld d,h			;a6eb
	add a,d			;a6ec
	ld b,b			;a6ed
	dec b			;a6ee
	inc bc			;a6ef
	ld b,b			;a6f0
	ld (bc),a		;a6f1
	dec b			;a6f2
	ld (bc),a		;a6f3
	ld b,b			;a6f4
	ld (bc),a		;a6f5
	dec b			;a6f6
	add a,c			;a6f7
	ld b,b			;a6f8
	inc bc			;a6f9
	dec b			;a6fa
	add a,c			;a6fb
	ld d,h			;a6fc
	inc bc			;a6fd
	dec b			;a6fe
	add a,c			;a6ff
	ld d,h			;a700
	inc bc			;a701
	dec b			;a702
	add a,a			;a703
	ld d,h			;a704
	ld b,b			;a705
	ld b,b			;a706
	ld d,h			;a707
	ld b,b			;a708
	ld b,b			;a709
	ld d,h			;a70a
	inc bc			;a70b
	ld b,b			;a70c
	add a,c			;a70d
	ld d,b			;a70e
	dec b			;a70f
	ld b,b			;a710
	add a,c			;a711
	ld d,h			;a712
	dec b			;a713
	ld d,b			;a714
	ld (bc),a		;a715
	ld d,h			;a716
	inc b			;a717
	ld b,b			;a718
	ld (bc),a		;a719
	ld d,b			;a71a
	add a,c			;a71b
	ld d,h			;a71c
	ex af,af'		;a71d
	ld b,b			;a71e
	ld (bc),a		;a71f
	ld d,h			;a720
	sbc a,b			;a721
	ld d,b			;a722
	ld d,h			;a723
	ld b,b			;a724
	ld d,h			;a725
	ld b,b			;a726
	ld d,h			;a727
	ld b,b			;a728
	ld d,h			;a729
	ld d,b			;a72a
	ld d,h			;a72b
	nop			;a72c
	ld d,h			;a72d
	nop			;a72e
	ld d,h			;a72f
	nop			;a730
	ld d,h			;a731
	ld d,b			;a732
	ld d,h			;a733
	ld d,b			;a734
	ld d,h			;a735
	ld d,b			;a736
	ld d,b			;a737
	ld d,h			;a738
	ld d,h			;a739
	dec bc			;a73a
	ld b,b			;a73b
	dec b			;a73c
	ld d,h			;a73d
	inc bc			;a73e
	inc b			;a73f
	add a,c			;a740
	ld d,b			;a741
la742h:
	rlca			;a742
	ld b,b			;a743
	dec b			;a744
	ld d,h			;a745
	inc bc			;a746
	ld b,b			;a747
	add a,c			;a748
	ld d,b			;a749
	inc bc			;a74a
	ld b,b			;a74b
	add a,a			;a74c
	ld d,h			;a74d
	jr nc,la770h		;a74e
	djnz la742h		;a750
	djnz la774h		;a752
	inc bc			;a754
	jr nc,la6e7h		;a755
	jr nz,la769h		;a757
	ret p			;a759
	djnz $+34		;a75a
	jr nc,$+51		;a75c
	cpl			;a75e
	jr nz,$+18		;a75f
	ret p			;a761
	jr nc,la784h		;a762
	djnz $-14		;a764
	di			;a766
	ex af,af'		;a767
	inc bc			;a768
la769h:
	add a,c			;a769
	jr nz,$+5		;a76a
	rra			;a76c
la76dh:
	sub e			;a76d
	jr nz,la7a0h		;a76e
la770h:
	jr nc,la792h		;a770
	jr nz,la784h		;a772
la774h:
	ret p			;a774
	jr nc,$+34		;a775
	rra			;a777
	rra			;a778
	jr nz,la79bh		;a779
	djnz la76dh		;a77b
	jr nc,la79fh		;a77d
	rra			;a77f
	rra			;a780
	nop			;a781
	ld (bc),a		;a782
	rst 38h			;a783
la784h:
	ld (bc),a		;a784
	inc de			;a785
	add a,e			;a786
	nop			;a787
	ld a,a			;a788
	rlca			;a789
	inc b			;a78a
	nop			;a78b
	adc a,(hl)		;a78c
	ld bc,00703h		;a78d
	rrca			;a790
	rrca			;a791
la792h:
	nop			;a792
	djnz la7cdh		;a793
	ld (hl),e		;a795
	and 0cch		;a796
	sbc a,b			;a798
	jr nc,la7bah		;a799
la79bh:
	inc bc			;a79b
	ccf			;a79c
	inc b			;a79d
	ld a,a			;a79e
la79fh:
	add a,c			;a79f
la7a0h:
	sbc a,h			;a7a0
	inc bc			;a7a1
	nop			;a7a2
	inc bc			;a7a3
	add a,b			;a7a4
	inc bc			;a7a5
	nop			;a7a6
	inc bc			;a7a7
	add a,b			;a7a8
	add a,e			;a7a9
	add a,c			;a7aa
	add a,e			;a7ab
	ld a,b			;a7ac
	inc bc			;a7ad
	ld d,h			;a7ae
	add a,l			;a7af
	nop			;a7b0
	ret nz			;a7b1
	nop			;a7b2
	ret p			;a7b3
	nop			;a7b4
	inc b			;a7b5
	ld a,a			;a7b6
la7b7h:
	inc bc			;a7b7
	ccf			;a7b8
	add a,c			;a7b9
la7bah:
	rra			;a7ba
	inc bc			;a7bb
	ld bc,08192h		;a7bc
	jp 0f0e3h		;a7bf
	add hl,bc		;a7c2
	rra			;a7c3
	rra			;a7c4
	rrca			;a7c5
	rlca			;a7c6
	inc bc			;a7c7
	nop			;a7c8
	ld a,a			;a7c9
	ccf			;a7ca
	rra			;a7cb
	rrca			;a7cc
la7cdh:
	rlca			;a7cd
	inc bc			;a7ce
	ld bc,00003h		;a7cf
	adc a,c			;a7d2
	rra			;a7d3
	rrca			;a7d4
	rlca			;a7d5
	inc bc			;a7d6
	ld bc,00703h		;a7d7
	rst 38h			;a7da
	ccf			;a7db
	inc bc			;a7dc
	ld a,a			;a7dd
	add a,h			;a7de
	ld bc,00181h		;a7df
	ld bc,00004h		;a7e2
	add a,h			;a7e5
	inc bc			;a7e6
	rlca			;a7e7
	rrca			;a7e8
	rra			;a7e9
	dec b			;a7ea
	ld bc,00384h		;a7eb
	rlca			;a7ee
	rst 38h			;a7ef
	nop			;a7f0
	inc b			;a7f1
	ld bc,0038bh		;a7f2
	rlca			;a7f5
	rst 38h			;a7f6
	nop			;a7f7
	rlca			;a7f8
	ccf			;a7f9
	rlca			;a7fa
la7fbh:
	rra			;a7fb
	ccf			;a7fc
	ld a,a			;a7fd
	ld b,e			;a7fe
	nop			;a7ff
la800h:
	ld (bc),a		;a800
	rra			;a801
	add a,e			;a802
	ld hl,0f1f1h		;a803
la806h:
	ex af,af'		;a806
	djnz $-120		;a807
	jr nz,la7fbh		;a809
	djnz $+18		;a80b
	jr nc,$+50		;a80d
	inc bc			;a80f
	jr nz,$+5		;a810
	djnz $-120		;a812
	jr nz,la806h		;a814
la816h:
	djnz la838h		;a816
	ret p			;a818
	djnz $+7		;a819
	ret p			;a81b
	ld b,010h		;a81c
	adc a,b			;a81e
	jr nz,la851h		;a81f
	jr nc,$+34		;a821
	djnz la816h		;a823
	jr nz,$+33		;a825
	rlca			;a827
	ret p			;a828
	add a,a			;a829
	djnz la84ch		;a82a
	ret p			;a82c
	djnz la84fh		;a82d
	ret p			;a82f
	djnz $+5		;a830
	jr nz,la837h		;a832
	djnz la7b7h		;a834
	pop af			;a836
la837h:
	rlca			;a837
la838h:
	ld hl,0100eh		;a838
	ld b,020h		;a83b
	ld (bc),a		;a83d
	ld hl,03204h		;a83e
	dec de			;a841
	jr nz,la849h		;a842
	ld (09800h),a		;a844
	exx			;a847
	adc a,c			;a848
la849h:
	sub c			;a849
	sub e			;a84a
	and e			;a84b
la84ch:
	and a			;a84c
	and a			;a84d
	ld h,a			;a84e
la84fh:
	ld (bc),a		;a84f
	add a,d			;a850
la851h:
	inc a			;a851
	sbc a,(hl)		;a852
	rst 8			;a853
	rst 20h			;a854
	di			;a855
	jr la8bbh		;a856
	inc sp			;a858
	ld sp,07819h		;a859
	sbc a,a			;a85c
	ret po			;a85d
	ld a,a			;a85e
	nop			;a85f
	add a,e			;a860
	inc bc			;a861
	di			;a862
	di			;a863
	inc bc			;a864
	jp p,0f103h		;a865
	add a,c			;a868
	jp p,03105h		;a869
	add a,(hl)		;a86c
	ld (0f3f2h),a		;a86d
	di			;a870
	jp p,00331h		;a871
	ld (08800h),a		;a874
	ret p			;a877
	rrca			;a878
	rra			;a879
	ld h,b			;a87a
	ld a,a			;a87b
	ld h,c			;a87c
	ret nz			;a87d
	sbc a,000h		;a87e
	ld (bc),a		;a880
	ld (02181h),a		;a881
	inc bc			;a884
	pop af			;a885
	add a,d			;a886
	jp p,00021h		;a887
	add a,c			;a88a
	rrca			;a88b
	inc bc			;a88c
	ret p			;a88d
	add a,h			;a88e
	inc bc			;a88f
	ld sp,hl		;a890
	add a,e			;a891
	add a,e			;a892
	nop			;a893
	ld (bc),a		;a894
	ld (02181h),a		;a895
	inc bc			;a898
	rra			;a899
	add a,d			;a89a
	jp p,000f1h		;a89b
	adc a,b			;a89e
	jp 0380ch		;a89f
	ret po			;a8a2
	rlca			;a8a3
	ret p			;a8a4
	rrca			;a8a5
	ret po			;a8a6
	nop			;a8a7
	add a,c			;a8a8
	jp p,0f103h		;a8a9
	add a,h			;a8ac
	ld sp,0f1f1h		;a8ad
	jp p,la000h		;a8b0
	inc a			;a8b3
	rrca			;a8b4
	rlca			;a8b5
	inc bc			;a8b6
	rrca			;a8b7
	rlca			;a8b8
	inc bc			;a8b9
	rlca			;a8ba
la8bbh:
	inc bc			;a8bb
	ld bc,00701h		;a8bc
	ex (sp),hl		;a8bf
	ld e,01eh		;a8c0
	ret po			;a8c2
	inc a			;a8c3
	ret p			;a8c4
	ret po			;a8c5
	ret nz			;a8c6
	ret p			;a8c7
	ret po			;a8c8
	ret nz			;a8c9
	ret po			;a8ca
	ret nz			;a8cb
	add a,b			;a8cc
	add a,b			;a8cd
	ret po			;a8ce
	rst 0			;a8cf
	ld a,b			;a8d0
	ld a,b			;a8d1
	rlca			;a8d2
	nop			;a8d3
	ld (bc),a		;a8d4
	ret po			;a8d5
	sbc a,(hl)		;a8d6
	ret nc			;a8d7
	ld h,b			;a8d8
	ret po			;a8d9
	ret nc			;a8da
	ld h,b			;a8db
	ret po			;a8dc
	ret nc			;a8dd
	ld h,b			;a8de
	jr nc,$+34		;a8df
la8e1h:
	pop af			;a8e1
	di			;a8e2
	ld (0e032h),a		;a8e3
	ret po			;a8e6
	ret nc			;a8e7
	ld h,b			;a8e8
	ret po			;a8e9
	ret nc			;a8ea
	ld h,b			;a8eb
	ret po			;a8ec
	ret nc			;a8ed
	ld h,b			;a8ee
	jr nc,la911h		;a8ef
	pop af			;a8f1
	di			;a8f2
	ld (00032h),a		;a8f3
	ld (bc),a		;a8f6
	rlca			;a8f7
	add a,c			;a8f8
la8f9h:
	rra			;a8f9
	inc bc			;a8fa
	rlca			;a8fb
	ld (bc),a		;a8fc
	ret m			;a8fd
	nop			;a8fe
	add a,c			;a8ff
	ld hl,03203h		;a900
	add a,h			;a903
	ld hl,01313h		;a904
	pop af			;a907
	nop			;a908
	adc a,b			;a909
	rst 38h			;a90a
	inc sp			;a90b
	inc hl			;a90c
	ex (sp),hl		;a90d
	ex af,af'		;a90e
	sbc a,b			;a90f
	ccf			;a910
la911h:
	jr la913h		;a911
la913h:
	adc a,b			;a913
	pop af			;a914
	jp p,021f2h		;a915
	jp p,0f3f1h		;a918
	jp p,08b00h		;a91b
	jr la951h		;a91e
	sbc a,h			;a920
	add hl,sp		;a921
	ld h,e			;a922
	rst 8			;a923
	ld a,0f0h		;a924
	rra			;a926
	rra			;a927
	ret p			;a928
	dec b			;a929
	rrca			;a92a
	add a,c			;a92b
	ld h,b			;a92c
	inc bc			;a92d
	ret p			;a92e
	adc a,b			;a92f
	ret po			;a930
	ret nz			;a931
	cp b			;a932
	ld a,h			;a933
	ld (06e77h),a		;a934
	ld l,l			;a937
	inc bc			;a938
	ld l,e			;a939
	add a,c			;a93a
	jr $+6			;a93b
	cp 08ch			;a93d
	call m,0e0f8h		;a93f
	ret nz			;a942
	pop af			;a943
	rrca			;a944
	ld a,b			;a945
	rrca			;a946
	ret po			;a947
	inc a			;a948
	rra			;a949
	rrca			;a94a
	nop			;a94b
	add a,d			;a94c
	pop af			;a94d
	jp p,03103h		;a94e
la951h:
	inc b			;a951
	ld (02189h),a		;a952
	pop af			;a955
	pop af			;a956
	ld (de),a		;a957
	inc hl			;a958
	ccf			;a959
	pop af			;a95a
	jr nz,la97dh		;a95b
	inc b			;a95d
	jr nc,la8e1h		;a95e
	jr nz,$+5		;a960
	jr nc,$+4		;a962
	ld (03187h),a		;a964
	ld hl,0f12fh		;a967
	jr nc,la98ch		;a96a
	jr nz,$+6		;a96c
la96eh:
	djnz la8f9h		;a96e
	ret p			;a970
	ld hl,03231h		;a971
	ld hl,0f1f1h		;a974
	jp p,000f3h		;a977
	adc a,b			;a97a
	ex (sp),hl		;a97b
	ret p			;a97c
la97dh:
	inc bc			;a97d
	ld a,h			;a97e
	ld a,09ch		;a97f
	ret nz			;a981
	ld a,a			;a982
	nop			;a983
	add a,h			;a984
	ld hl,0f331h		;a985
	ld (02103h),a		;a988
	add a,c			;a98b
la98ch:
	pop af			;a98c
	nop			;a98d
	adc a,e			;a98e
	ld c,080h		;a98f
	ld h,b			;a991
	inc e			;a992
	add a,a			;a993
	ld a,h			;a994
	rlca			;a995
	ret p			;a996
	ccf			;a997
	nop			;a998
	rrca			;a999
	dec b			;a99a
	ret p			;a99b
	nop			;a99c
	add a,c			;a99d
	ld hl,0f105h		;a99e
	adc a,d			;a9a1
	ld hl,021f3h		;a9a2
	ld hl,0f1f1h		;a9a5
	ld (de),a		;a9a8
	inc hl			;a9a9
	ccf			;a9aa
	pop af			;a9ab
	nop			;a9ac
	sbc a,b			;a9ad
	rst 20h			;a9ae
	ret po			;a9af
	jr $+26			;a9b0
	ld b,h			;a9b2
	ld a,b			;a9b3
	ret z			;a9b4
	add a,h			;a9b5
	jr nz,$+51		;a9b6
	cp 097h			;a9b8
	call m,07fech		;a9ba
	jp 0c1ffh		;a9bd
	ret nz			;a9c0
	ret po			;a9c1
	ret p			;a9c2
	ret z			;a9c3
	adc a,b			;a9c4
	rra			;a9c5
	nop			;a9c6
	ld (bc),a		;a9c7
	ld hl,0f182h		;a9c8
	cpl			;a9cb
	ld b,0f1h		;a9cc
	ld (bc),a		;a9ce
	defb 0fdh,082h,0f8h ;illegal sequence	;a9cf
	defb 0fdh,003h,0f1h ;illegal sequence	;a9d2
	add a,d			;a9d5
	jp p,003f3h		;a9d6
	jp p,0f102h		;a9d9
la9dch:
	nop			;a9dc
	adc a,b			;a9dd
	ret nz			;a9de
	ret po			;a9df
	ret po			;a9e0
	and 010h		;a9e1
	jr nc,laa05h		;a9e3
	jr nz,la9e7h		;a9e5
la9e7h:
	inc b			;a9e7
	jr nc,la96eh		;a9e8
	di			;a9ea
	jp p,0f1f2h		;a9eb
	nop			;a9ee
	xor c			;a9ef
	jp 0380ch		;a9f0
	ex (sp),hl		;a9f3
	rrca			;a9f4
	cp 00fh			;a9f5
	ex (sp),hl		;a9f7
	rrca			;a9f8
	rrca			;a9f9
	ret m			;a9fa
	ret nz			;a9fb
	inc a			;a9fc
	ld a,(hl)		;a9fd
	inc a			;a9fe
	ret nz			;a9ff
	ret p			;aa00
	ret p			;aa01
	rra			;aa02
	inc bc			;aa03
	ret p			;aa04
laa05h:
	call m,003f0h		;aa05
	jp 01c30h		;aa08
	rst 0			;aa0b
	ret p			;aa0c
	ld a,a			;aa0d
	ret p			;aa0e
	rst 0			;aa0f
	ret m			;aa10
	inc e			;aa11
	jp 00cf8h		;aa12
	ex (sp),hl		;aa15
	jr la9dch		;aa16
	ret m			;aa18
	inc bc			;aa19
	rrca			;aa1a
	inc bc			;aa1b
	rra			;aa1c
	add a,d			;aa1d
	ret nz			;aa1e
	rra			;aa1f
	inc bc			;aa20
	ret p			;aa21
	inc bc			;aa22
	ret m			;aa23
	add a,c			;aa24
	inc bc			;aa25
	nop			;aa26
	add a,c			;aa27
	jp p,0f104h		;aa28
	add a,a			;aa2b
laa2ch:
	ld sp,hl		;aa2c
	pop af			;aa2d
	jp p,0f231h		;aa2e
	rst 30h			;aa31
	ld sp,hl		;aa32
	inc bc			;aa33
	jp (hl)			;aa34
	add a,l			;aa35
	ld sp,hl		;aa36
	ld sp,0f7f2h		;aa37
	rst 30h			;aa3a
	inc bc			;aa3b
	sub a			;aa3c
	add a,d			;aa3d
	rst 30h			;aa3e
	jp p,0f104h		;aa3f
	sbc a,e			;aa42
	rst 30h			;aa43
	pop af			;aa44
	jp p,0f1f3h		;aa45
	jp p,0f1f3h		;aa48
	pop af			;aa4b
	jp p,0f7f1h		;aa4c
	di			;aa4f
	ld (0f32fh),a		;aa50
	ld (02f2fh),a		;aa53
	rst 30h			;aa56
	di			;aa57
	ld (0f32fh),a		;aa58
	ld (02f2fh),a		;aa5b
	nop			;aa5e
	ld (bc),a		;aa5f
	rrca			;aa60
laa61h:
	sub (hl)		;aa61
	jp 00cf8h		;aa62
	ex (sp),hl		;aa65
	jr laa2ch		;aa66
	ld a,h			;aa68
	rst 38h			;aa69
	rst 38h			;aa6a
	ret nz			;aa6b
	rra			;aa6c
laa6dh:
	dec e			;aa6d
	dec e			;aa6e
	ret nz			;aa6f
	add a,b			;aa70
	add a,b			;aa71
	rst 38h			;aa72
	inc bc			;aa73
	ret m			;aa74
	cp b			;aa75
	daa			;aa76
	call m,08800h		;aa77
	djnz $+99		;aa7a
	jp p,0f1f3h		;aa7c
laa7fh:
	pop af			;aa7f
	jp p,003f1h		;aa80
	ld h,d			;aa83
	adc a,l			;aa84
	or 063h			;aa85
	ld (02f2fh),a		;aa87
	jr nz,laaeeh		;aa8a
	ld h,d			;aa8c
	or 063h			;aa8d
	ld (0f2f2h),a		;aa8f
	nop			;aa92
	adc a,b			;aa93
	call m,0c3f0h		;aa94
	rra			;aa97
	jr nc,laa61h		;aa98
	jr laabfh		;aa9a
	nop			;aa9c
	adc a,b			;aa9d
	nop			;aa9e
	ld h,c			;aa9f
	jp p,0f1f3h		;aaa0
	pop af			;aaa3
	jp p,000f1h		;aaa4
	add a,d			;aaa7
	nop			;aaa8
	ld bc,00304h		;aaa9
	adc a,h			;aaac
	ld bc,00100h		;aaad
	ld bc,00703h		;aab0
	rlca			;aab3
	rrca			;aab4
	ccf			;aab5
	rrca			;aab6
	nop			;aab7
	add a,b			;aab8
	inc b			;aab9
	ret nz			;aaba
	adc a,d			;aabb
	add a,b			;aabc
	nop			;aabd
	add a,b			;aabe
laabfh:
	add a,b			;aabf
	ret nz			;aac0
	ret po			;aac1
	ret po			;aac2
	ret p			;aac3
	call m,004f0h		;aac4
	inc bc			;aac7
	add a,h			;aac8
	nop			;aac9
	ld bc,00001h		;aaca
	dec b			;aacd
	inc bc			;aace
	inc bc			;aacf
laad0h:
	nop			;aad0
	adc a,b			;aad1
	inc bc			;aad2
	rlca			;aad3
	rlca			;aad4
	ld h,a			;aad5
	ex af,af'		;aad6
laad7h:
	inc c			;aad7
	inc b			;aad8
laad9h:
	inc b			;aad9
	nop			;aada
	ld (bc),a		;aadb
	jr nz,laae0h		;aadc
	jr nc,$+7		;aade
laae0h:
	jr nz,laae4h		;aae0
	jr nc,laa6dh		;aae2
laae4h:
	jr nz,laaf6h		;aae4
	jr nc,$+50		;aae6
	ld hl,02020h		;aae8
	jr nc,lab1dh		;aaeb
	dec b			;aaed
laaeeh:
	jr nz,laaf2h		;aaee
	jr nc,$-119		;aaf0
laaf2h:
	jr nz,lab04h		;aaf2
	jr nc,lab26h		;aaf4
laaf6h:
	ld hl,0f010h		;aaf6
	rlca			;aaf9
	djnz laa7fh		;aafa
	jr nz,lab0eh		;aafc
	ret p			;aafe
	inc b			;aaff
	djnz $+6		;ab00
	jr nc,$-122		;ab02
lab04h:
	di			;ab04
	jp p,0f1f2h		;ab05
	nop			;ab08
	adc a,b			;ab09
	rra			;ab0a
	jr c,laad0h		;ab0b
	rra			;ab0d
lab0eh:
	jr nc,laad7h		;ab0e
	jr lab35h		;ab10
	nop			;ab12
	adc a,b			;ab13
	di			;ab14
	pop af			;ab15
	jp p,0f1f3h		;ab16
	pop af			;ab19
	jp p,000f1h		;ab1a
lab1dh:
	dec b			;ab1d
lab1eh:
	ret nz			;ab1e
	inc bc			;ab1f
	nop			;ab20
	inc b			;ab21
	ret nz			;ab22
	add a,h			;ab23
	nop			;ab24
	add a,b			;ab25
lab26h:
	add a,b			;ab26
	nop			;ab27
	nop			;ab28
	add a,h			;ab29
	djnz lab4ch		;ab2a
	djnz lab1eh		;ab2c
	dec b			;ab2e
	djnz $-125		;ab2f
	ret p			;ab31
	ld b,010h		;ab32
	nop			;ab34
lab35h:
	add a,h			;ab35
	nop			;ab36
	ld c,c			;ab37
	ld c,c			;ab38
	rst 38h			;ab39
	inc b			;ab3a
	add a,c			;ab3b
	add a,h			;ab3c
	rst 38h			;ab3d
	inc d			;ab3e
	inc d			;ab3f
	rst 38h			;ab40
	inc bc			;ab41
	add a,b			;ab42
	ld (bc),a		;ab43
	rst 38h			;ab44
	ld (bc),a		;ab45
	jr z,lab4ah		;ab46
	rst 38h			;ab48
	ld (bc),a		;ab49
lab4ah:
	nop			;ab4a
	ld (bc),a		;ab4b
lab4ch:
	rst 38h			;ab4c
	ld (bc),a		;ab4d
	sub d			;ab4e
	add a,c			;ab4f
	rst 38h			;ab50
	inc b			;ab51
	pop bc			;ab52
	ret nz			;ab53
	jr c,laad9h		;ab54
	ld c,h			;ab56
	inc sp			;ab57
	add a,(hl)		;ab58
	call z,096bch		;ab59
	adc a,(hl)		;ab5c
	call nz,08e33h		;ab5d
	ld h,e			;ab60
	jr c,$+30		;ab61
	jr z,laaeeh		;ab63
	add a,0f1h		;ab65
	ret z			;ab67
	adc a,b			;ab68
	sbc a,h			;ab69
	cp (hl)			;ab6a
	cp a			;ab6b
	ret nc			;ab6c
	inc (hl)		;ab6d
	jp p,0f91fh		;ab6e
	defb 0fdh,07dh ;ld a,iyl	;ab71
	adc a,h			;ab73
	inc e			;ab74
	pop bc			;ab75
	ld (061cch),a		;ab76
	inc sp			;ab79
	dec a			;ab7a
	ld l,c			;ab7b
	ld (hl),c		;ab7c
	inc hl			;ab7d
	call z,0c671h		;ab7e
	inc e			;ab81
	jr c,lab98h		;ab82
	sub c			;ab84
	ld h,e			;ab85
	adc a,a			;ab86
	inc de			;ab87
	ld de,07d39h		;ab88
	defb 0fdh,00bh,02ch ;illegal sequence	;ab8b
	ld c,a			;ab8e
	ret m			;ab8f
	sbc a,a			;ab90
	cp a			;ab91
	cp (hl)			;ab92
	ld sp,la200h		;ab93
	rrca			;ab96
	di			;ab97
lab98h:
	call p,0f3f4h		;ab98
	dec (hl)		;ab9b
	di			;ab9c
	ld e,c			;ab9d
	call p,0f9f4h		;ab9e
	ld sp,hl		;aba1
	ld b,e			;aba2
	ld d,h			;aba3
	sub l			;aba4
	sub l			;aba5
	call p,0f9f4h		;aba6
	ld sp,hl		;aba9
	inc (hl)		;abaa
	inc (hl)		;abab
	sub l			;abac
	sub l			;abad
sub_abaeh:
	di			;abae
	di			;abaf
	call p,0f3f4h		;abb0
	dec (hl)		;abb3
	di			;abb4
	ld e,c			;abb5
	di			;abb6
	call p,0f503h		;abb7
	add a,l			;abba
	ld sp,hl		;abbb
	push af			;abbc
	call p,0f4f3h		;abbd
	inc bc			;abc0
	push af			;abc1
	add a,d			;abc2
	ld sp,hl		;abc3
	push af			;abc4
	dec b			;abc5
	call p,0f502h		;abc6
	ld (bc),a		;abc9
	call p,0f58ah		;abca
	call p,0f4f3h		;abcd
	ld d,e			;abd0
	sub e			;abd1
	ld d,h			;abd2
	call p,0f4f3h		;abd3
	inc bc			;abd6
	push af			;abd7
	add a,l			;abd8
	ld sp,hl		;abd9
	push af			;abda
	call p,0f4f3h		;abdb
	inc bc			;abde
	push af			;abdf
	add a,d			;abe0
	ld sp,hl		;abe1
	push af			;abe2
	dec b			;abe3
	call p,0f502h		;abe4
	ld (bc),a		;abe7
	call p,0f588h		;abe8
	call p,0f4f3h		;abeb
	ld d,e			;abee
	sub e			;abef
	ld d,h			;abf0
	call p,00300h		;abf1
	ld c,b			;abf4
	add a,c			;abf5
	rst 38h			;abf6
	inc bc			;abf7
	ld a,(hl)		;abf8
	sub c			;abf9
	rst 38h			;abfa
	sub (hl)		;abfb
	sub h			;abfc
	sub h			;abfd
	rst 38h			;abfe
	rst 38h			;abff
	add a,b			;ac00
	add a,b			;ac01
	rst 38h			;ac02
	ld l,c			;ac03
	add hl,hl		;ac04
	add hl,hl		;ac05
	rst 38h			;ac06
	rst 38h			;ac07
	nop			;ac08
	nop			;ac09
	rst 38h			;ac0a
	inc bc			;ac0b
	sub d			;ac0c
	add a,c			;ac0d
	rst 38h			;ac0e
	inc bc			;ac0f
	ld a,089h		;ac10
	rst 38h			;ac12
	nop			;ac13
	nop			;ac14
	rst 38h			;ac15
	rst 38h			;ac16
	nop			;ac17
	jr z,lac42h		;ac18
	rst 38h			;ac1a
	inc b			;ac1b
	ld a,089h		;ac1c
	nop			;ac1e
	sub d			;ac1f
	sub d			;ac20
	rst 38h			;ac21
	add a,a			;ac22
	adc a,(hl)		;ac23
	or l			;ac24
	or l			;ac25
	nop			;ac26
	inc bc			;ac27
	ld (hl),l		;ac28
	add a,d			;ac29
	pop hl			;ac2a
	ld (hl),c		;ac2b
	inc bc			;ac2c
	xor l			;ac2d
	inc bc			;ac2e
	xor (hl)		;ac2f
	inc b			;ac30
	ld a,(hl)		;ac31
	sub l			;ac32
	nop			;ac33
	ld c,c			;ac34
	ld c,c			;ac35
	rst 38h			;ac36
	sub h			;ac37
	sub (hl)		;ac38
	sub h			;ac39
	rst 30h			;ac3a
	sub h			;ac3b
	sub h			;ac3c
	rst 30h			;ac3d
	sub h			;ac3e
	add hl,hl		;ac3f
	ld l,c			;ac40
	add hl,hl		;ac41
lac42h:
	rst 28h			;ac42
	xor c			;ac43
	xor c			;ac44
	rst 28h			;ac45
	add hl,hl		;ac46
	nop			;ac47
	inc bc			;ac48
	add a,b			;ac49
	adc a,b			;ac4a
	rst 38h			;ac4b
	inc d			;ac4c
	inc d			;ac4d
	rst 38h			;ac4e
	rst 38h			;ac4f
	ld a,(hl)		;ac50
	ld a,(hl)		;ac51
	nop			;ac52
	inc bc			;ac53
	ld a,(hl)		;ac54
	add a,c			;ac55
	nop			;ac56
	rlca			;ac57
	or a			;ac58
	add a,c			;ac59
	nop			;ac5a
	rlca			;ac5b
	ld l,l			;ac5c
	xor c			;ac5d
	nop			;ac5e
	ld hl,(0222ah)		;ac5f
	ld hl,(02a22h)		;ac62
	ld hl,(07e00h)		;ac65
	nop			;ac68
	ld a,(hl)		;ac69
	add a,b			;ac6a
	rst 38h			;ac6b
	ld c,b			;ac6c
	ld c,b			;ac6d
	rst 38h			;ac6e
	pop bc			;ac6f
	rst 38h			;ac70
	ld a,081h		;ac71
	rst 38h			;ac73
	sub d			;ac74
	sub d			;ac75
	rst 38h			;ac76
	rst 38h			;ac77
	nop			;ac78
	nop			;ac79
	rst 38h			;ac7a
	rst 38h			;ac7b
	nop			;ac7c
	nop			;ac7d
	rst 38h			;ac7e
	push de			;ac7f
	push de			;ac80
	rst 38h			;ac81
	push de			;ac82
	push de			;ac83
	rst 38h			;ac84
	pop bc			;ac85
	ret			;ac86
	ex af,af'		;ac87
	cp l			;ac88
	add a,c			;ac89
	rst 38h			;ac8a
	inc bc			;ac8b
	nop			;ac8c
	ld (bc),a		;ac8d
	ld sp,hl		;ac8e
	ld (bc),a		;ac8f
	rst 38h			;ac90
	rlca			;ac91
	nop			;ac92
	add a,c			;ac93
	rst 38h			;ac94
	nop			;ac95
	adc a,0f5h		;ac96
	call p,0f3f3h		;ac98
	sub l			;ac9b
	ccf			;ac9c
	ld d,e			;ac9d
	push af			;ac9e
	push af			;ac9f
	call p,0f3f3h		;aca0
	sub l			;aca3
	sub l			;aca4
	ld d,h			;aca5
	push af			;aca6
	push af			;aca7
	call p,0f3f3h		;aca8
	sub l			;acab
	sub l			;acac
	call p,0f5f4h		;acad
	call p,0f3f3h		;acb0
	sub l			;acb3
	ccf			;acb4
	ld d,e			;acb5
	ld sp,hl		;acb6
	ld sp,hl		;acb7
	ld b,l			;acb8
	ld b,l			;acb9
	ccf			;acba
	ccf			;acbb
	ld sp,hl		;acbc
	call p,095f4h		;acbd
	ccf			;acc0
	ld d,e			;acc1
	ccf			;acc2
	ccf			;acc3
	call p,0f3f3h		;acc4
	sub h			;acc7
	ld d,e			;acc8
	ld d,e			;acc9
	ld c,a			;acca
	ld c,a			;accb
	sub l			;accc
	ld d,h			;accd
	ld b,e			;acce
	sub h			;accf
	ld d,e			;acd0
	ld d,e			;acd1
	ld b,e			;acd2
	rst 38h			;acd3
	sub l			;acd4
	ld d,h			;acd5
	ld b,e			;acd6
	sub l			;acd7
	ccf			;acd8
	ld d,e			;acd9
	ccf			;acda
	ccf			;acdb
	call p,0f3f3h		;acdc
	ld sp,hl		;acdf
	ld sp,hl		;ace0
	push af			;ace1
	ld sp,hl		;ace2
	ld sp,hl		;ace3
	push af			;ace4
	inc b			;ace5
	ld sp,hl		;ace6
	add a,h			;ace7
	push af			;ace8
	ld sp,hl		;ace9
	ld sp,hl		;acea
	push af			;aceb
	inc bc			;acec
	ld sp,hl		;aced
	add a,l			;acee
	sub l			;acef
	ld d,h			;acf0
	ld b,e			;acf1
	ld sp,hl		;acf2
	ld sp,hl		;acf3
	inc bc			;acf4
	call p,04385h		;acf5
	ccf			;acf8
	ccf			;acf9
	sub l			;acfa
	ld d,h			;acfb
	inc bc			;acfc
	ccf			;acfd
	add a,c			;acfe
	ld c,a			;acff
	inc bc			;ad00
	ld e,a			;ad01
	add a,c			;ad02
	ld c,a			;ad03
	inc bc			;ad04
	ccf			;ad05
	add a,c			;ad06
	ld c,a			;ad07
	inc bc			;ad08
	ld e,a			;ad09
	add a,c			;ad0a
	ld c,a			;ad0b
	inc c			;ad0c
	ccf			;ad0d
	add a,c			;ad0e
	ld d,h			;ad0f
	inc bc			;ad10
	di			;ad11
	ld (bc),a		;ad12
	call p,0f302h		;ad13
	add a,c			;ad16
	ld d,h			;ad17
	inc bc			;ad18
	di			;ad19
	inc b			;ad1a
	call p,0f302h		;ad1b
	ld (bc),a		;ad1e
	sub l			;ad1f
	inc bc			;ad20
	di			;ad21
	ld (bc),a		;ad22
	call p,0fd86h		;ad23
	di			;ad26
	di			;ad27
	call p,095f3h		;ad28
	ld b,054h		;ad2b
	add a,c			;ad2d
	ld b,e			;ad2e
	inc b			;ad2f
	sub l			;ad30
	add a,l			;ad31
	ld d,h			;ad32
	ld e,c			;ad33
	ld e,c			;ad34
	ld c,c			;ad35
	ld c,c			;ad36
	rlca			;ad37
	ld b,l			;ad38
	nop			;ad39
	rlca			;ad3a
	cpl			;ad3b
	ld (bc),a		;ad3c
	nop			;ad3d
	adc a,a			;ad3e
	rla			;ad3f
	nop			;ad40
	nop			;ad41
	rla			;ad42
	rla			;ad43
	nop			;ad44
	nop			;ad45
	halt			;ad46
	nop			;ad47
	add a,b			;ad48
	add a,b			;ad49
	rst 38h			;ad4a
	sub b			;ad4b
	sub b			;ad4c
	sub a			;ad4d
	ex af,af'		;ad4e
	cp a			;ad4f
	add a,h			;ad50
	nop			;ad51
	ld h,026h		;ad52
	nop			;ad54
	inc bc			;ad55
	ld e,a			;ad56
	add a,c			;ad57
	nop			;ad58
	dec b			;ad59
	call m,00081h		;ad5a
	inc bc			;ad5d
	or h			;ad5e
	add a,h			;ad5f
	and l			;ad60
	cp l			;ad61
	rst 0			;ad62
	or (hl)			;ad63
	inc bc			;ad64
	or h			;ad65
	sbc a,b			;ad66
	nop			;ad67
	ex (sp),hl		;ad68
	ex de,hl		;ad69
	ex de,hl		;ad6a
	inc (hl)		;ad6b
	in a,(0dbh)		;ad6c
	dec de			;ad6e
	rst 28h			;ad6f
	jp 0d5d4h		;ad70
	dec hl			;ad73
	inc de			;ad74
	daa			;ad75
	inc bc			;ad76
	call nc,02b2ah		;ad77
	inc de			;ad7a
	rst 28h			;ad7b
	ld hl,(0ff2ah)		;ad7c
	nop			;ad7f
	add a,c			;ad80
	ld b,e			;ad81
	dec bc			;ad82
	ccf			;ad83
	add a,c			;ad84
	ld b,e			;ad85
	dec b			;ad86
	ccf			;ad87
	add a,a			;ad88
	ld sp,hl		;ad89
	di			;ad8a
	di			;ad8b
	call p,0f9f5h		;ad8c
	ld d,h			;ad8f
	ld b,043h		;ad90
	ld (bc),a		;ad92
	ccf			;ad93
	xor a			;ad94
	ld b,e			;ad95
	ccf			;ad96
	ccf			;ad97
	ld d,h			;ad98
	ld b,e			;ad99
	ccf			;ad9a
	ccf			;ad9b
	ld b,e			;ad9c
	rst 38h			;ad9d
	ld d,h			;ad9e
	ld b,e			;ad9f
	ccf			;ada0
	ccf			;ada1
	ld d,h			;ada2
	ld b,e			;ada3
	ld c,a			;ada4
	di			;ada5
	call p,053f5h		;ada6
	ld b,e			;ada9
	ld b,e			;adaa
	ccf			;adab
	ccf			;adac
	sub e			;adad
	ld d,e			;adae
	ld b,e			;adaf
	di			;adb0
	sub e			;adb1
	ld d,e			;adb2
	ld b,e			;adb3
	call p,05393h		;adb4
	ld d,e			;adb7
	call p,0f553h		;adb8
	sub e			;adbb
	ld d,e			;adbc
	call p,053f4h		;adbd
	push af			;adc0
	call p,0f3f3h		;adc1
	nop			;adc4
	add a,d			;adc5
	ld bc,003ffh		;adc6
	ld bc,0ff81h		;adc9
	inc bc			;adcc
	ld b,l			;adcd
	add a,e			;adce
	rst 0			;adcf
	ld a,l			;add0
	rst 0			;add1
	inc bc			;add2
	ld b,l			;add3
	sub c			;add4
	rst 38h			;add5
	and l			;add6
	cp l			;add7
ladd8h:
	rst 20h			;add8
	and l			;add9
	cp l			;adda
	rst 20h			;addb
	and l			;addc
	rst 38h			;addd
	sub l			;adde
	sub l			;addf
	rst 38h			;ade0
	and l			;ade1
	and l			;ade2
	rst 38h			;ade3
	add a,c			;ade4
	sbc a,c			;ade5
	nop			;ade6
	ld (bc),a		;ade7
	push af			;ade8
	adc a,h			;ade9
	ld sp,hl		;adea
	push af			;adeb
	call p,0f9f4h		;adec
	push af			;adef
	call p,0f4f3h		;adf0
	ld sp,hl		;adf3
	push af			;adf4
	call p,0f304h		;adf5
	add a,h			;adf8
	call p,0f3f3h		;adf9
	call p,0f303h		;adfc
	ld (bc),a		;adff
	call p,0f885h		;ae00
	defb 0fdh,0fdh,0f4h ;illegal sequence	;ae03
	di			;ae06
	nop			;ae07
	ld (bc),a		;ae08
	ld e,a			;ae09
	adc a,(hl)		;ae0a
	nop			;ae0b
	call 0c0cdh		;ae0c
	call 06f0dh		;ae0f
	nop			;ae12
	nop			;ae13
	ld d,a			;ae14
	ld d,a			;ae15
	rlca			;ae16
	ld d,a			;ae17
	ld d,b			;ae18
	dec b			;ae19
	cpl			;ae1a
	add a,e			;ae1b
	nop			;ae1c
	add hl,bc		;ae1d
	nop			;ae1e
	dec b			;ae1f
	ld e,a			;ae20
	add a,e			;ae21
	nop			;ae22
	rst 18h			;ae23
	nop			;ae24
	inc bc			;ae25
	ld e,a			;ae26
	add a,l			;ae27
	nop			;ae28
	add hl,bc		;ae29
	nop			;ae2a
	ld e,a			;ae2b
	nop			;ae2c
	inc bc			;ae2d
	cp a			;ae2e
	add a,l			;ae2f
	nop			;ae30
	cp a			;ae31
	nop			;ae32
	cp a			;ae33
	cp a			;ae34
	nop			;ae35
	add a,c			;ae36
	ld hl,01004h		;ae37
	add a,c			;ae3a
	jr nz,lae44h		;ae3b
	djnz $-122		;ae3d
	jr nz,lae51h		;ae3f
	djnz lae64h		;ae41
	rlca			;ae43
lae44h:
	djnz $-125		;ae44
	ld h,d			;ae46
	inc b			;ae47
	ld hl,01003h		;ae48
	add a,c			;ae4b
	ld hl,01007h		;ae4c
	add a,e			;ae4f
	ld h,d			;ae50
lae51h:
	ld hl,00321h		;ae51
	djnz ladd8h		;ae54
	ld hl,00000h		;ae56
	ld (bc),a		;ae59
	nop			;ae5a
	add a,e			;ae5b
	rst 38h			;ae5c
	ld a,(hl)		;ae5d
	nop			;ae5e
	inc bc			;ae5f
	ld a,(hl)		;ae60
	add a,h			;ae61
	nop			;ae62
	ld e,d			;ae63
lae64h:
	ld e,d			;ae64
	nop			;ae65
	inc bc			;ae66
	ld e,d			;ae67
	add a,c			;ae68
	nop			;ae69
	dec b			;ae6a
	rst 38h			;ae6b
	ld (bc),a		;ae6c
	nop			;ae6d
	ld (bc),a		;ae6e
	rst 38h			;ae6f
	add a,c			;ae70
	nop			;ae71
	dec b			;ae72
	rst 38h			;ae73
	ld (bc),a		;ae74
	nop			;ae75
	inc bc			;ae76
	ld e,d			;ae77
	and e			;ae78
	nop			;ae79
	ld e,d			;ae7a
	ld e,d			;ae7b
	nop			;ae7c
lae7dh:
	nop			;ae7d
	ld d,l			;ae7e
	ld d,c			;ae7f
	ld d,l			;ae80
	dec b			;ae81
	ld d,c			;ae82
	ld (hl),l		;ae83
	rlca			;ae84
	nop			;ae85
	jp 0c318h		;ae86
lae89h:
	jr $-59			;ae89
	in a,(000h)		;ae8b
	ld c,060h		;ae8d
	ld c,060h		;ae8f
	ld c,06eh		;ae91
	ld l,(hl)		;ae93
	nop			;ae94
	ld (hl),b		;ae95
	ld b,070h		;ae96
	ld b,070h		;ae98
	halt			;ae9a
	halt			;ae9b
	inc bc			;ae9c
	nop			;ae9d
	add a,l			;ae9e
	ld b,000h		;ae9f
	ld b,000h		;aea1
	ld b,003h		;aea3
	nop			;aea5
	adc a,(hl)		;aea6
	ld h,b			;aea7
	nop			;aea8
	ld h,b			;aea9
	nop			;aeaa
	ld h,b			;aeab
	nop			;aeac
	nop			;aead
	ld c,c			;aeae
	add hl,bc		;aeaf
	ld c,c			;aeb0
	ld b,b			;aeb1
	add hl,bc		;aeb2
	ld c,a			;aeb3
	ret nz			;aeb4
	inc bc			;aeb5
	ld a,(hl)		;aeb6
	or l			;aeb7
	nop			;aeb8
	ld a,(hl)		;aeb9
	nop			;aeba
	nop			;aebb
	rst 38h			;aebc
	ret po			;aebd
	ld c,0e0h		;aebe
laec0h:
	xor 00ah		;aec0
	ret po			;aec2
	xor 000h		;aec3
	ret po			;aec5
	xor (hl)		;aec6
	adc a,d			;aec7
	and b			;aec8
	xor d			;aec9
	adc a,d			;aeca
	xor d			;aecb
	nop			;aecc
	inc c			;aecd
	ld d,l			;aece
	ld d,l			;aecf
laed0h:
	ld d,h			;aed0
	ld d,l			;aed1
	inc c			;aed2
	ld l,a			;aed3
	nop			;aed4
	inc bc			;aed5
	jp p,00290h		;aed6
	sub d			;aed9
	sub b			;aeda
	sub d			;aedb
	nop			;aedc
	jr nc,lae89h		;aedd
	xor d			;aedf
	ld hl,(030aah)		;aee0
	or 000h			;aee3
	rlca			;aee5
	ld (hl),b		;aee6
	rlca			;aee7
	ld (hl),a		;aee8
	ld d,b			;aee9
	rlca			;aeea
	ld (hl),a		;aeeb
	nop			;aeec
	nop			;aeed
	add a,a			;aeee
	ld h,d			;aeef
	ld bc,02001h		;aef0
	jr nz,laf55h		;aef3
	jr nz,$+5		;aef5
	djnz laefbh		;aef7
	jr nz,lae7dh		;aef9
laefbh:
	djnz $+34		;aefb
	inc bc			;aefd
	ld h,b			;aefe
	dec b			;aeff
	jr nz,laf07h		;af00
	ld bc,02605h		;af02
	ld (bc),a		;af05
	ld h,b			;af06
laf07h:
	add a,h			;af07
	jr nz,$+18		;af08
	djnz $+34		;af0a
	ld b,010h		;af0c
	add a,e			;af0e
	jr nz,$+18		;af0f
	djnz $+5		;af11
	jr nz,$-122		;af13
	djnz laf37h		;af15
	djnz laf39h		;af17
	ld h,010h		;af19
	sbc a,b			;af1b
	jr nz,$+18		;af1c
	djnz $+34		;af1e
	djnz $+34		;af20
	ld h,b			;af22
	ld h,b			;af23
	jr nz,$+34		;af24
	ld hl,02021h		;af26
	djnz laf4bh		;af29
	djnz laf3dh		;af2b
	jr nz,laf3fh		;af2d
	djnz laf51h		;af2f
	djnz laf43h		;af31
	jr nz,laf3bh		;af33
	djnz laf39h		;af35
laf37h:
	jr nz,laf3bh		;af37
laf39h:
	djnz $+5		;af39
laf3bh:
	jr nz,laf3fh		;af3b
laf3dh:
	djnz laec0h		;af3d
laf3fh:
	jr nz,laf47h		;af3f
	djnz laf45h		;af41
laf43h:
	jr nz,laf47h		;af43
laf45h:
	djnz $+5		;af45
laf47h:
	jr nz,laed0h		;af47
	djnz laf6bh		;af49
laf4bh:
	djnz $+18		;af4b
	jr nz,laf5fh		;af4d
	djnz laf51h		;af4f
laf51h:
	inc bc			;af51
	dec (hl)		;af52
	add a,c			;af53
laf54h:
	nop			;af54
laf55h:
	inc b			;af55
	ccf			;af56
	inc bc			;af57
	call nc,00081h		;af58
	inc b			;af5b
	call m,03502h		;af5c
laf5fh:
	adc a,001h		;af5f
	inc (hl)		;af61
	dec (hl)		;af62
	dec (hl)		;af63
	jr nc,laf6bh		;af64
	nop			;af66
	ld l,(hl)		;af67
	ld l,(hl)		;af68
	ld c,060h		;af69
laf6bh:
	ld c,060h		;af6b
	ld c,000h		;af6d
	halt			;af6f
	halt			;af70
	ld (hl),b		;af71
	ld b,070h		;af72
	ld b,070h		;af74
	call nc,0c0d4h		;af76
	inc d			;af79
	call nc,004d4h		;af7a
	ret nc			;af7d
	nop			;af7e
	sub d			;af7f
	sub b			;af80
	sub d			;af81
	ld (bc),a		;af82
	sub b			;af83
	jp p,00003h		;af84
	ld l,a			;af87
	inc c			;af88
	ld d,l			;af89
	ld d,h			;af8a
	ld d,l			;af8b
	ld d,l			;af8c
	inc c			;af8d
	nop			;af8e
	xor d			;af8f
	adc a,d			;af90
	xor d			;af91
	and b			;af92
	adc a,d			;af93
	xor (hl)		;af94
	ret po			;af95
	nop			;af96
	or 030h			;af97
	xor d			;af99
	ld hl,(0aaaah)		;af9a
	jr nc,laf9fh		;af9d
laf9fh:
	ld (hl),a		;af9f
	rlca			;afa0
	ld d,b			;afa1
lafa2h:
	ld (hl),a		;afa2
	rlca			;afa3
	ld (hl),b		;afa4
	rlca			;afa5
lafa6h:
	nop			;afa6
	xor 0e0h		;afa7
	ld a,(bc)		;afa9
	xor 0e0h		;afaa
	ld c,0e0h		;afac
	nop			;afae
	ld (bc),a		;afaf
	djnz lafb4h		;afb0
	jr nz,$+5		;afb2
lafb4h:
	djnz laf3bh		;afb4
	jr nz,$+18		;afb6
	djnz $+34		;afb8
	jr nz,$+5		;afba
	djnz $-118		;afbc
	jr nz,$+18		;afbe
	djnz $+34		;afc0
	djnz $+18		;afc2
	jr nz,$+34		;afc4
	inc de			;afc6
	djnz $-121		;afc7
	jr nz,lafdbh		;afc9
	djnz lafedh		;afcb
	jr nz,$+7		;afcd
	djnz laf54h		;afcf
	jr nz,lafe3h		;afd1
	djnz $+5		;afd3
	jr nz,lafd9h		;afd5
	djnz lafdbh		;afd7
lafd9h:
	jr nz,lafe1h		;afd9
lafdbh:
	djnz $-123		;afdb
	jr nz,lafefh		;afdd
	djnz $+5		;afdf
lafe1h:
	jr nz,lafe5h		;afe1
lafe3h:
	djnz lafe7h		;afe3
lafe5h:
	jr nz,lafebh		;afe5
lafe7h:
	djnz $-112		;afe7
	jr nz,laffbh		;afe9
lafebh:
	djnz lb00dh		;afeb
lafedh:
	djnz lb00fh		;afed
lafefh:
	jr nz,$+18		;afef
	jr nz,lb003h		;aff1
	djnz $+34		;aff3
	djnz lb017h		;aff5
	nop			;aff7
	add a,e			;aff8
	nop			;aff9
	add hl,bc		;affa
laffbh:
	nop			;affb
	dec b			;affc
	cpl			;affd
	sub e			;affe
	ld a,(bc)		;afff
	jp pe,0eae0h		;b000
lb003h:
	jp pe,00000h		;b003
	or 050h			;b006
	ld d,a			;b008
	rlca			;b009
	ld d,a			;b00a
	ld d,a			;b00b
	nop			;b00c
lb00dh:
	nop			;b00d
	ld l,a			;b00e
lb00fh:
	nop			;b00f
	sub b			;b010
	nop			;b011
	dec b			;b012
	call p,08100h		;b013
	ret po			;b016
lb017h:
	ld b,010h		;b017
	add a,h			;b019
	ld hl,01010h		;b01a
	jr nz,$+9		;b01d
	djnz lafa2h		;b01f
	jr nz,lb02fh		;b021
	djnz lafa6h		;b023
	ld hl,08400h		;b025
	nop			;b028
	rst 8			;b029
	ex (sp),hl		;b02a
	rlca			;b02b
	inc b			;b02c
	nop			;b02d
	adc a,e			;b02e
lb02fh:
	rrca			;b02f
	ld (hl),b		;b030
	add a,b			;b031
	di			;b032
	pop hl			;b033
	ld c,000h		;b034
	nop			;b036
	ld bc,0c739h		;b037
	inc b			;b03a
	ld b,l			;b03b
	add a,c			;b03c
	rst 38h			;b03d
	rlca			;b03e
	and l			;b03f
	add a,d			;b040
	rst 38h			;b041
	ld c,c			;b042
	dec b			;b043
	ld c,b			;b044
	add a,d			;b045
	ld c,c			;b046
	rst 38h			;b047
	inc b			;b048
	cp 094h			;b049
	nop			;b04b
	ld b,l			;b04c
	ld b,l			;b04d
	rst 38h			;b04e
	ld de,092f2h		;b04f
	sub a			;b052
	sub h			;b053
	or 014h			;b054
	rst 38h			;b056
	cpl			;b057
	ld sp,hl		;b058
	add hl,hl		;b059
	add hl,hl		;b05a
	jp (hl)			;b05b
	ccf			;b05c
	add hl,hl		;b05d
	add hl,hl		;b05e
	inc b			;b05f
	ld a,a			;b060
	add a,c			;b061
	nop			;b062
	inc bc			;b063
	ld l,e			;b064
	sub b			;b065
	ld (hl),a		;b066
	ld c,a			;b067
	ld c,c			;b068
	jp (hl)			;b069
	add hl,hl		;b06a
	ld l,a			;b06b
	jr z,$+1		;b06c
	call p,0949fh		;b06e
	sub h			;b071
	sub a			;b072
	call m,09494h		;b073
	inc b			;b076
	cp 081h			;b077
	nop			;b079
	inc bc			;b07a
	sub 000h		;b07b
	add a,e			;b07d
	di			;b07e
	ld b,e			;b07f
	ld d,h			;b080
	inc b			;b081
	sub l			;b082
	adc a,a			;b083
	ld b,h			;b084
	sub e			;b085
	sub l			;b086
	sub l			;b087
	ld d,e			;b088
	ld d,h			;b089
	sub l			;b08a
	sub l			;b08b
	ld b,h			;b08c
	di			;b08d
	call p,0f5f4h		;b08e
	push af			;b091
	call p,0f303h		;b092
	add a,c			;b095
	call p,0f503h		;b096
	add a,c			;b099
	call p,0f303h		;b09a
	add a,c			;b09d
	call p,0f503h		;b09e
	adc a,c			;b0a1
	call p,0f3f3h		;b0a2
	sub l			;b0a5
	ccf			;b0a6
	ld d,e			;b0a7
	ccf			;b0a8
	ccf			;b0a9
	call p,0f303h		;b0aa
	xor a			;b0ad
	call p,0f9f5h		;b0ae
lb0b1h:
	ld sp,hl		;b0b1
	push af			;b0b2
	call p,0f3f4h		;b0b3
	push af			;b0b6
	call p,0f3f3h		;b0b7
	call p,0f3f3h		;b0ba
	ld d,h			;b0bd
	ld b,e			;b0be
	ld b,e			;b0bf
	ccf			;b0c0
	ccf			;b0c1
	ld d,h			;b0c2
	ld b,e			;b0c3
	ccf			;b0c4
	ccf			;b0c5
	call p,0f9f5h		;b0c6
	ld sp,hl		;b0c9
	push af			;b0ca
	call p,0f3f4h		;b0cb
	push af			;b0ce
	call p,0f3f3h		;b0cf
	call p,0f3f3h		;b0d2
	ld d,h			;b0d5
	ld b,e			;b0d6
	ld b,e			;b0d7
	ccf			;b0d8
	ccf			;b0d9
	ld d,h			;b0da
	ld b,e			;b0db
	ccf			;b0dc
	nop			;b0dd
	add a,l			;b0de
	and (hl)		;b0df
	or e			;b0e0
	sub c			;b0e1
	ret z			;b0e2
	rst 38h			;b0e3
	ld b,0a0h		;b0e4
	adc a,a			;b0e6
	rst 38h			;b0e7
	adc a,c			;b0e8
	add hl,sp		;b0e9
	ld l,b			;b0ea
	call pe,011ffh		;b0eb
	inc hl			;b0ee
	rst 20h			;b0ef
	ld c,h			;b0f0
	or a			;b0f1
	ld d,b			;b0f2
	ld d,b			;b0f3
	add a,d			;b0f4
	ld b,h			;b0f5
	inc bc			;b0f6
	add a,e			;b0f7
	sbc a,e			;b0f8
	jr c,lb177h		;b0f9
	add a,c			;b0fb
	pop af			;b0fc
	pop af			;b0fd
	inc bc			;b0fe
	rlca			;b0ff
	rst 20h			;b100
	adc a,(hl)		;b101
	rst 0			;b102
	add a,d			;b103
	cp 007h			;b104
	rrca			;b106
	ret po			;b107
	call m,sub_abaeh	;b108
	xor l			;b10b
	inc h			;b10c
	ld a,(hl)		;b10d
	adc a,e			;b10e
	adc a,b			;b10f
	inc sp			;b110
	cp c			;b111
	ld h,a			;b112
	inc sp			;b113
	inc bc			;b114
	ret nz			;b115
	adc a,c			;b116
	jp 010f8h		;b117
	djnz $+11		;b11a
	rst 38h			;b11c
	exx			;b11d
	exx			;b11e
	rst 38h			;b11f
	inc b			;b120
	ld b,b			;b121
	sbc a,l			;b122
	jp po,01c3eh		;b123
	dec h			;b126
	ld sp,00de5h		;b127
	ld e,e			;b12a
	ld d,e			;b12b
	ld e,c			;b12c
	ld l,c			;b12d
	sub e			;b12e
	ret			;b12f
	dec sp			;b130
	inc hl			;b131
	jr lb13bh		;b132
	call m,0c0c0h		;b134
	rrca			;b137
	ret m			;b138
	add a,b			;b139
	ccf			;b13a
lb13bh:
	rst 38h			;b13b
	rst 38h			;b13c
	ret pe			;b13d
	rst 38h			;b13e
	rst 38h			;b13f
	dec b			;b140
	ret nc			;b141
	sub (hl)		;b142
	out (0fch),a		;b143
	jr nc,$-126		;b145
	ld b,a			;b147
	cp h			;b148
	pop bc			;b149
	ld a,0ffh		;b14a
	or h			;b14c
	exx			;b14d
	ex (sp),hl		;b14e
	cp (hl)			;b14f
	or h			;b150
	call 0abb9h		;b151
	sbc a,d			;b154
	jp z,0e8ffh		;b155
	ret pe			;b158
	nop			;b159
	add a,d			;b15a
	push af			;b15b
	call p,0f304h		;b15c
	add a,(hl)		;b15f
	inc (hl)		;b160
	ld b,l			;b161
	rst 38h			;b162
	inc (hl)		;b163
	di			;b164
	di			;b165
	inc bc			;b166
	call p,0f502h		;b167
	add a,c			;b16a
	di			;b16b
	inc bc			;b16c
	call p,05399h		;b16d
	push af			;b170
	ld sp,hl		;b171
	call p,0f3f3h		;b172
	inc (hl)		;b175
	ld b,l			;b176
lb177h:
	sub l			;b177
	ld d,h			;b178
	call p,09554h		;b179
	sub l			;b17c
	ld d,h			;b17d
	ld b,e			;b17e
	ld b,e			;b17f
	ld sp,hl		;b180
	push af			;b181
	call p,054f5h		;b182
	call p,0f3f4h		;b185
	inc bc			;b188
lb189h:
	call p,0f385h		;b189
	call p,093f5h		;b18c
	sub e			;b18f
	inc bc			;b190
	ld sp,hl		;b191
	add a,(hl)		;b192
	sub l			;b193
	ld d,h			;b194
	ld b,e			;b195
	ld sp,hl		;b196
	push af			;b197
	call p,0f303h		;b198
	adc a,e			;b19b
	inc (hl)		;b19c
	di			;b19d
	di			;b19e
	inc (hl)		;b19f
	inc (hl)		;b1a0
	ld b,l			;b1a1
	di			;b1a2
	ld sp,hl		;b1a3
	push af			;b1a4
	call p,00693h		;b1a5
	ld d,e			;b1a8
	ld (bc),a		;b1a9
lb1aah:
	push af			;b1aa
	add a,c			;b1ab
	ld d,e			;b1ac
	inc bc			;b1ad
	push af			;b1ae
	add a,l			;b1af
	ld sp,hl		;b1b0
	push af			;b1b1
	ld b,h			;b1b2
	di			;b1b3
	call p,0f309h		;b1b4
	ld (bc),a		;b1b7
	inc (hl)		;b1b8
	ld (bc),a		;b1b9
	di			;b1ba
	add a,c			;b1bb
	call p,0f313h		;b1bc
	add a,c			;b1bf
	inc (hl)		;b1c0
	nop			;b1c1
	ret c			;b1c2
	nop			;b1c3
	inc bc			;b1c4
	nop			;b1c5
	ld bc,00001h		;b1c6
	inc bc			;b1c9
	inc bc			;b1ca
	nop			;b1cb
	halt			;b1cc
	nop			;b1cd
	ld (hl),h		;b1ce
	ld (hl),h		;b1cf
	nop			;b1d0
	halt			;b1d1
lb1d2h:
	halt			;b1d2
	call pe,000eeh		;b1d3
	ld l,a			;b1d6
	inc c			;b1d7
	ld d,l			;b1d8
	ld d,h			;b1d9
lb1dah:
	ld d,l			;b1da
	ld b,b			;b1db
	ret po			;b1dc
	nop			;b1dd
	ld h,b			;b1de
	jr nc,lb189h		;b1df
	jr z,$-84		;b1e1
	xor d			;b1e3
lb1e4h:
	di			;b1e4
	ld l,a			;b1e5
lb1e6h:
	nop			;b1e6
	rst 28h			;b1e7
	rst 28h			;b1e8
	nop			;b1e9
	ld l,a			;b1ea
	xor d			;b1eb
	jr nc,lb1e4h		;b1ec
	nop			;b1ee
	or 0f6h			;b1ef
	nop			;b1f1
	or 0efh			;b1f2
	rst 28h			;b1f4
	nop			;b1f5
	ld l,a			;b1f6
	inc c			;b1f7
	ld d,l			;b1f8
	ld d,h			;b1f9
	ld d,l			;b1fa
	or 0f6h			;b1fb
	nop			;b1fd
	or 030h			;b1fe
	xor d			;b200
	ld hl,(000aah)		;b201
	rst 28h			;b204
	nop			;b205
	ld l,a			;b206
	inc c			;b207
	ld d,l			;b208
	ld d,h			;b209
	ld d,l			;b20a
	nop			;b20b
	or 000h			;b20c
	or 030h			;b20e
	xor d			;b210
	ld hl,(0aaaah)		;b211
	djnz $-122		;b214
	nop			;b216
	ret po			;b217
	ret nz			;b218
	nop			;b219
	nop			;b21a
	nop			;b21b
	rlca			;b21c
	djnz lb221h		;b21d
	jr nz,$+8		;b21f
lb221h:
	djnz lb1aah		;b221
	ld hl,01020h		;b223
	djnz $+34		;b226
	djnz $+18		;b228
	inc bc			;b22a
	jr nz,lb22fh		;b22b
	djnz lb1d2h		;b22d
lb22fh:
	jr nz,lb241h		;b22f
	djnz lb253h		;b231
	jr nz,$+3		;b233
	ld bc,02020h		;b235
	ld hl,01010h		;b238
	jr nz,lb24dh		;b23b
	djnz lb25fh		;b23d
	jr nz,$+35		;b23f
lb241h:
	djnz lb253h		;b241
	jr nz,$+35		;b243
	djnz lb257h		;b245
	jr nz,lb259h		;b247
	djnz lb26bh		;b249
	jr nz,$+35		;b24b
lb24dh:
	djnz lb25fh		;b24d
	jr nz,lb261h		;b24f
	djnz $+5		;b251
lb253h:
	jr nz,lb257h		;b253
	djnz lb1dah		;b255
lb257h:
	jr nz,lb269h		;b257
lb259h:
	djnz $+5		;b259
	jr nz,lb25fh		;b25b
	djnz lb1e6h		;b25d
lb25fh:
	jr nz,lb271h		;b25f
lb261h:
	djnz lb283h		;b261
	jr nz,lb275h		;b263
	djnz $+5		;b265
	jr nz,lb26ch		;b267
lb269h:
	djnz lb26bh		;b269
lb26bh:
	adc a,a			;b26b
lb26ch:
	add a,e			;b26c
	ld b,00dh		;b26d
	dec bc			;b26f
	dec de			;b270
lb271h:
	rla			;b271
	ld d,006h		;b272
	ld h,l			;b274
lb275h:
	ld h,l			;b275
	jr nc,lb28fh		;b276
	inc de			;b278
	dec bc			;b279
	ex (sp),hl		;b27a
	dec b			;b27b
	nop			;b27c
	and h			;b27d
	rrca			;b27e
	ld a,(bc)		;b27f
	nop			;b280
	rrca			;b281
	ld d,(hl)		;b282
lb283h:
	ld e,e			;b283
	ld e,l			;b284
	nop			;b285
	add hl,bc		;b286
	nop			;b287
	ld e,a			;b288
	nop			;b289
	dec e			;b28a
	ld h,d			;b28b
	call p,031c9h		;b28c
lb28fh:
	ld l,l			;b28f
	ld e,b			;b290
	nop			;b291
	rlca			;b292
	rrca			;b293
	ld c,01eh		;b294
	inc e			;b296
	inc e			;b297
	inc c			;b298
	ld c,001h		;b299
	ld bc,01f00h		;b29b
	rra			;b29e
	rst 38h			;b29f
	ret po			;b2a0
	ret po			;b2a1
	dec b			;b2a2
	nop			;b2a3
	adc a,c			;b2a4
	ld bc,00703h		;b2a5
	inc b			;b2a8
	inc b			;b2a9
	ld b,003h		;b2aa
	inc bc			;b2ac
	ld bc,00005h		;b2ad
	ld (bc),a		;b2b0
	ret po			;b2b1
	add a,e			;b2b2
	rst 38h			;b2b3
	rra			;b2b4
	rra			;b2b5
	inc bc			;b2b6
	nop			;b2b7
	call 07cfdh		;b2b8
	cp 0c2h			;b2bb
	cp 01dh			;b2bd
	inc bc			;b2bf
	rrca			;b2c0
	rrca			;b2c1
	dec c			;b2c2
	dec c			;b2c3
lb2c4h:
	ld (hl),h		;b2c4
	ret m			;b2c5
	dec b			;b2c6
	dec a			;b2c7
	dec (hl)		;b2c8
	ld b,l			;b2c9
lb2cah:
	ld (hl),047h		;b2ca
	sbc a,e			;b2cc
	inc (hl)		;b2cd
	ld l,c			;b2ce
	ld d,h			;b2cf
	ld d,l			;b2d0
	inc l			;b2d1
	dec l			;b2d2
	inc c			;b2d3
	dec b			;b2d4
	ld a,b			;b2d5
	add a,(iy+002h)		;b2d6
	inc bc			;b2d9
	inc bc			;b2da
	ld b,00eh		;b2db
	call m,07dfch		;b2dd
	ld a,c			;b2e0
	ld a,h			;b2e1
	ccf			;b2e2
	cp b			;b2e3
	and c			;b2e4
	add a,l			;b2e5
	call c,0030dh		;b2e6
	ld c,0eeh		;b2e9
	ret po			;b2eb
	call m,0b61dh		;b2ec
	ld (hl),0b6h		;b2ef
	add a,e			;b2f1
	add hl,sp		;b2f2
	nop			;b2f3
	cp a			;b2f4
	nop			;b2f5
	cp 0ffh			;b2f6
	ld a,a			;b2f8
	nop			;b2f9
	dec a			;b2fa
	add a,b			;b2fb
	defb 0fdh,000h,055h ;illegal sequence	;b2fc
	inc c			;b2ff
	ld l,a			;b300
	nop			;b301
	cpl			;b302
	nop			;b303
	nop			;b304
	cpl			;b305
	nop			;b306
	ld b,010h		;b307
	inc bc			;b309
	jr nz,$-125		;b30a
	djnz $+5		;b30c
	jr nz,lb337h		;b30e
	djnz lb315h		;b310
	ld hl,01007h		;b312
lb315h:
	rlca			;b315
	jr nz,$+9		;b316
	djnz lb31dh		;b318
	ld hl,01005h		;b31a
lb31dh:
	inc bc			;b31d
	ld hl,0100bh		;b31e
	ex af,af'		;b321
lb322h:
	ld hl,06185h		;b322
	ld hl,02161h		;b325
	ld h,c			;b328
	inc bc			;b329
	ld hl,02007h		;b32a
	ld (bc),a		;b32d
	ld hl,02004h		;b32e
	add a,(hl)		;b331
	ld h,b			;b332
	djnz $+18		;b333
	jr nz,lb357h		;b335
lb337h:
	djnz lb33dh		;b337
lb339h:
	ld hl,01005h		;b339
	add a,e			;b33c
lb33dh:
	ld hl,02020h		;b33d
	dec b			;b340
	djnz lb2c4h		;b341
	ld hl,01003h		;b343
	ld (bc),a		;b346
	jr nz,$+4		;b347
	ld hl,00082h		;b349
	ld hl,la800h		;b34c
	nop			;b34f
	rst 28h			;b350
	nop			;b351
	ld l,a			;b352
	inc c			;b353
	ld d,l			;b354
	ld d,h			;b355
	ld d,l			;b356
lb357h:
	nop			;b357
	jp 0c318h		;b358
	jr $-59			;b35b
	in a,(000h)		;b35d
	nop			;b35f
	or 000h			;b360
	or 030h			;b362
	xor d			;b364
	ld hl,(0aaaah)		;b365
lb368h:
	di			;b368
	ld l,a			;b369
	nop			;b36a
	rst 28h			;b36b
	rst 28h			;b36c
	nop			;b36d
	ld l,a			;b36e
	xor d			;b36f
	jr nc,lb368h		;b370
	nop			;b372
	or 0f6h			;b373
	nop			;b375
	or 004h			;b376
	nop			;b378
	add a,e			;b379
	cpl			;b37a
	nop			;b37b
	nop			;b37c
	dec b			;b37d
	cpl			;b37e
	sub h			;b37f
	call p,00000h		;b380
	call p,00c55h		;b383
	ld l,a			;b386
	nop			;b387
	cpl			;b388
	nop			;b389
	nop			;b38a
	cpl			;b38b
	xor d			;b38c
	jr nc,$-8		;b38d
	nop			;b38f
	call p,00000h		;b390
	call p,00300h		;b393
	djnz $-123		;b396
	jr nz,$+18		;b398
	djnz lb3a0h		;b39a
	jr nz,lb322h		;b39c
	djnz $+34		;b39e
lb3a0h:
	djnz lb3c2h		;b3a0
	dec b			;b3a2
	djnz lb339h		;b3a3
	jr nz,lb3b7h		;b3a5
	djnz lb3c9h		;b3a7
	jr nz,$+3		;b3a9
	ld bc,02020h		;b3ab
	ld hl,01010h		;b3ae
	jr nz,lb3c3h		;b3b1
	djnz $+34		;b3b3
	jr nz,$+35		;b3b5
lb3b7h:
	djnz lb3c9h		;b3b7
	dec b			;b3b9
	jr nz,$+4		;b3ba
	ld hl,00082h		;b3bc
	ld hl,00004h		;b3bf
lb3c2h:
	ld (bc),a		;b3c2
lb3c3h:
	ld hl,00092h		;b3c3
	ld hl,01010h		;b3c6
lb3c9h:
	jr nz,lb3ebh		;b3c9
	ld hl,00021h		;b3cb
	ld hl,01010h		;b3ce
	jr nz,lb3f3h		;b3d1
	ld hl,00021h		;b3d3
	ld hl,08200h		;b3d6
	rrca			;b3d9
	inc bc			;b3da
	inc bc			;b3db
	ld bc,04383h		;b3dc
	ex (sp),hl		;b3df
	rst 30h			;b3e0
	dec b			;b3e1
	jp m,00090h		;b3e2
	ei			;b3e5
	nop			;b3e6
	jp m,000fah		;b3e7
	or e			;b3ea
lb3ebh:
	or e			;b3eb
	inc bc			;b3ec
	or e			;b3ed
	or b			;b3ee
	rst 38h			;b3ef
lb3f0h:
	nop			;b3f0
	nop			;b3f1
	ld a,(hl)		;b3f2
lb3f3h:
	nop			;b3f3
	inc bc			;b3f4
	ld a,(hl)		;b3f5
	nop			;b3f6
	adc a,c			;b3f7
	jr nc,lb43ah		;b3f8
	ret p			;b3fa
	jr nc,lb44dh		;b3fb
	ld b,b			;b3fd
	jr nc,lb3f0h		;b3fe
	ld h,d			;b400
	inc b			;b401
	ld hl,01003h		;b402
	add a,c			;b405
	ld hl,01004h		;b406
	add a,l			;b409
	jr nz,lb41ch		;b40a
	djnz lb42fh		;b40c
	ld hl,02003h		;b40e
	add a,e			;b411
	ld h,b			;b412
	jr nz,lb425h		;b413
	nop			;b415
	adc a,e			;b416
	rst 8			;b417
	ret p			;b418
	inc a			;b419
	ld c,0c6h		;b41a
lb41ch:
	rst 20h			;b41c
	di			;b41d
	inc bc			;b41e
	ei			;b41f
	call m,003feh		;b420
	ld a,a			;b423
	sbc a,b			;b424
lb425h:
	ccf			;b425
	nop			;b426
	sbc a,a			;b427
	ret po			;b428
	inc a			;b429
	rrca			;b42a
	rst 0			;b42b
	di			;b42c
	ret m			;b42d
	inc b			;b42e
lb42fh:
	rst 30h			;b42f
	ret m			;b430
	and 01eh		;b431
	ret m			;b433
	rst 30h			;b434
	rrca			;b435
	ret m			;b436
	ret m			;b437
	ld b,00eh		;b438
lb43ah:
	ex (sp),hl		;b43a
	inc h			;b43b
	jr lb441h		;b43c
	jr nc,$-91		;b43e
	and h			;b440
lb441h:
	inc e			;b441
	pop af			;b442
	ex af,af'		;b443
	inc b			;b444
	inc bc			;b445
	rst 38h			;b446
	call m,007fch		;b447
	pop af			;b44a
	sbc a,h			;b44b
	ret m			;b44c
lb44dh:
	ret p			;b44d
	rst 38h			;b44e
	ld c,a			;b44f
	ld h,a			;b450
	ld h,a			;b451
	or e			;b452
	defb 0ddh,0ffh,081h ;illegal sequence	;b453
	sbc a,c			;b456
	ex af,af'		;b457
	ret p			;b458
	inc hl			;b459
	ld b,a			;b45a
	adc a,e			;b45b
	sub b			;b45c
	jr c,lb48dh		;b45d
	ld h,a			;b45f
	ld b,a			;b460
	defb 0fdh,0c7h,003h ;illegal sequence	;b461
	ld b,l			;b464
	add a,d			;b465
	rst 38h			;b466
	sbc a,l			;b467
	inc b			;b468
	rlc d			;b469
	sbc a,l			;b46b
	adc a,c			;b46c
	dec a			;b46d
	sub l			;b46e
	sub l			;b46f
	rst 38h			;b470
	and l			;b471
	and l			;b472
	rst 38h			;b473
	inc hl			;b474
	dec e			;b475
	nop			;b476
	inc b			;b477
	sub h			;b478
	inc b			;b479
	ld d,h			;b47a
	add a,c			;b47b
	sub h			;b47c
	rlca			;b47d
	ld d,h			;b47e
	xor c			;b47f
lb480h:
	sub h			;b480
	sub l			;b481
	sub h			;b482
	sub h			;b483
	ld d,h			;b484
	ld d,e			;b485
	ld d,e			;b486
	call p,05393h		;b487
	ld b,e			;b48a
	ld d,e			;b48b
	sub h			;b48c
lb48dh:
	ld d,h			;b48d
	ld d,h			;b48e
	call p,054f5h		;b48f
	ld d,e			;b492
	push af			;b493
	ld sp,hl		;b494
	sub l			;b495
lb496h:
	sub e			;b496
	sbc a,a			;b497
	ccf			;b498
	call p,0f953h		;b499
	ld sp,hl		;b49c
lb49dh:
	push af			;b49d
	di			;b49e
	di			;b49f
	call p,05345h		;b4a0
	push af			;b4a3
	sub e			;b4a4
	sub l			;b4a5
	ld d,e			;b4a6
lb4a7h:
	push af			;b4a7
	push af			;b4a8
	ld b,0f4h		;b4a9
	add a,l			;b4ab
	di			;b4ac
	push af			;b4ad
	ld sp,hl		;b4ae
	ld sp,hl		;b4af
	push af			;b4b0
	dec b			;b4b1
	call p,0f38bh		;b4b2
	call p,0f5f9h		;b4b5
	call p,0f3f3h		;b4b8
	ld sp,hl		;b4bb
	ld sp,hl		;b4bc
	push af			;b4bd
	push af			;b4be
	inc bc			;b4bf
	call p,0f302h		;b4c0
	ld (bc),a		;b4c3
	call p,0f885h		;b4c4
	defb 0fdh,0fdh,0f4h ;illegal sequence	;b4c7
	push af			;b4ca
	nop			;b4cb
	inc b			;b4cc
	ccf			;b4cd
	add a,c			;b4ce
	nop			;b4cf
	inc bc			;b4d0
	dec (hl)		;b4d1
	and b			;b4d2
	dec b			;b4d3
	jr nc,lb50bh		;b4d4
	dec (hl)		;b4d6
	inc (hl)		;b4d7
	ld bc,03535h		;b4d8
	ret nc			;b4db
	inc b			;b4dc
	call nc,014d4h		;b4dd
	ret nz			;b4e0
	call nc,0c0d4h		;b4e1
	ld c,a			;b4e4
	add hl,bc		;b4e5
	ld b,b			;b4e6
	ld c,c			;b4e7
	add hl,bc		;b4e8
	ld c,c			;b4e9
	nop			;b4ea
	rlca			;b4eb
	ld (hl),l		;b4ec
	ld d,c			;b4ed
	dec b			;b4ee
	ld d,l			;b4ef
	ld d,c			;b4f0
	ld d,l			;b4f1
	nop			;b4f2
	inc b			;b4f3
	call m,00081h		;b4f4
	inc bc			;b4f7
	call nc,08100h		;b4f8
	jr nz,lb501h		;b4fb
	djnz lb480h		;b4fd
	jr nz,$+5		;b4ff
lb501h:
	djnz lb505h		;b501
	jr nz,lb507h		;b503
lb505h:
	djnz $-125		;b505
lb507h:
	jr nz,$+5		;b507
	djnz lb50dh		;b509
lb50bh:
	jr nz,lb50fh		;b50b
lb50dh:
	djnz lb496h		;b50d
lb50fh:
	jr nz,$+18		;b50f
	djnz lb533h		;b511
lb513h:
	djnz $+18		;b513
	jr nz,lb51bh		;b515
	djnz lb49dh		;b517
	jr nz,lb52bh		;b519
lb51bh:
	djnz lb53dh		;b51b
	inc b			;b51d
	djnz $-125		;b51e
	jr nz,lb526h		;b520
	djnz lb4a7h		;b522
	jr nz,lb536h		;b524
lb526h:
	djnz lb528h		;b526
lb528h:
	sub b			;b528
	adc a,a			;b529
	add a,e			;b52a
lb52bh:
	ld b,a			;b52b
	cpl			;b52c
	rra			;b52d
	di			;b52e
	rlca			;b52f
	rrca			;b530
	or c			;b531
	pop hl			;b532
lb533h:
	pop bc			;b533
	rst 20h			;b534
	ld sp,hl		;b535
lb536h:
	pop hl			;b536
	pop bc			;b537
	or e			;b538
	nop			;b539
	add a,l			;b53a
	cp 0f9h			;b53b
lb53dh:
	ld sp,hl		;b53d
	push af			;b53e
	push af			;b53f
	inc bc			;b540
	defb 0fdh,088h,0f5h ;illegal sequence	;b541
	cp 0f9h			;b544
	push af			;b546
	push af			;b547
	cp 0f9h			;b548
	push af			;b54a
	nop			;b54b
	inc b			;b54c
	nop			;b54d
	add a,(hl)		;b54e
	ld (bc),a		;b54f
	ld c,026h		;b550
	cp e			;b552
	ld (bc),a		;b553
	ld (bc),a		;b554
	dec c			;b555
	nop			;b556
	add a,c			;b557
	sub b			;b558
	inc b			;b559
	nop			;b55a
	add a,h			;b55b
	ld bc,0f703h		;b55c
	ld a,e			;b55f
	inc b			;b560
	nop			;b561
	add a,(hl)		;b562
	inc bc			;b563
	rlca			;b564
	rlca			;b565
	inc bc			;b566
	inc b			;b567
	ld b,003h		;b568
	rlca			;b56a
	rlca			;b56b
	nop			;b56c
	add a,h			;b56d
	ret nz			;b56e
	ret p			;b56f
	dec bc			;b570
	add a,a			;b571
	inc bc			;b572
	nop			;b573
	sub l			;b574
	ret nz			;b575
	ret nc			;b576
	ld b,a			;b577
	ld b,e			;b578
	adc a,a			;b579
	ex af,af'		;b57a
	dec c			;b57b
	add a,a			;b57c
	jp 0678ch		;b57d
	sbc a,a			;b580
	add hl,bc		;b581
	nop			;b582
	dec b			;b583
	jp nc,0f2e2h		;b584
	rst 18h			;b587
	add a,(hl)		;b588
	add hl,bc		;b589
	nop			;b58a
	inc b			;b58b
	djnz lb513h		;b58c
	ld d,b			;b58e
	ret po			;b58f
	sub b			;b590
	push af			;b591
	add a,b			;b592
	inc e			;b593
	ret po			;b594
	add a,a			;b595
	add a,b			;b596
	ret p			;b597
	ret nc			;b598
	ret po			;b599
	ret nc			;b59a
	ret p			;b59b
	add a,b			;b59c
	ex af,af'		;b59d
	ret nc			;b59e
	ld (bc),a		;b59f
	ret po			;b5a0
	add a,d			;b5a1
	ret pe			;b5a2
	ret m			;b5a3
	dec b			;b5a4
	ret po			;b5a5
	add a,a			;b5a6
	cp 0f9h			;b5a7
	ld sp,hl		;b5a9
	ret nc			;b5aa
	add a,b			;b5ab
	add a,b			;b5ac
	ret nc			;b5ad
	inc b			;b5ae
	defb 0fdh,002h,0e0h ;illegal sequence	;b5af
	ld (bc),a		;b5b2
	ld sp,hl		;b5b3
	add a,c			;b5b4
	push af			;b5b5
	inc bc			;b5b6
	defb 0fdh,000h,0b8h ;illegal sequence	;b5b7
	ld b,e			;b5ba
	ld (04951h),hl		;b5bb
	call c,00103h		;b5be
	sub b			;b5c1
	nop			;b5c2
	nop			;b5c3
	rla			;b5c4
	ld a,e			;b5c5
	cp e			;b5c6
	ret nc			;b5c7
	defb 0ddh,0e0h,0d8h ;illegal sequence	;b5c8
	ret po			;b5cb
	ld c,007h		;b5cc
	jr $-30			;b5ce
	inc bc			;b5d0
	nop			;b5d1
	call po,01933h		;b5d2
	adc a,h			;b5d5
	ld a,b			;b5d6
	ld a,b			;b5d7
	inc bc			;b5d8
	adc a,a			;b5d9
	sub c			;b5da
	ret nc			;b5db
	ld l,b			;b5dc
	inc a			;b5dd
	adc a,h			;b5de
	ld h,c			;b5df
	sbc a,a			;b5e0
	add hl,bc		;b5e1
	defb 0edh ;next byte illegal after ed	;b5e2
	rla			;b5e3
	rra			;b5e4
	cp a			;b5e5
	rst 38h			;b5e6
	rst 38h			;b5e7
	cp a			;b5e8
	cp a			;b5e9
	sbc a,a			;b5ea
	jp z,0e2d2h		;b5eb
	jp p,084dfh		;b5ee
	ex af,af'		;b5f1
	nop			;b5f2
	add a,a			;b5f3
	defb 0fdh,0f8h,0f8h ;illegal sequence	;b5f4
	cp 0feh			;b5f7
	add a,b			;b5f9
	ret nc			;b5fa
	inc b			;b5fb
	ret po			;b5fc
	ld (bc),a		;b5fd
	call po,0e986h		;b5fe
	sub h			;b601
	sub l			;b602
	ret nc			;b603
	ret m			;b604
	ret c			;b605
	inc bc			;b606
	defb 0fdh,002h,0d0h ;illegal sequence	;b607
	adc a,e			;b60a
	ret m			;b60b
	cp 0f8h			;b60c
	defb 0fdh,0feh,0e8h ;illegal sequence	;b60e
	ret m			;b611
	ret m			;b612
	defb 0fdh,0f8h,0f8h ;illegal sequence	;b613
	dec b			;b616
	defb 0fdh,081h,053h ;illegal sequence	;b617
	dec b			;b61a
	call p,0f981h		;b61b
	inc bc			;b61e
	cp 002h			;b61f
	ld sp,hl		;b621
	add a,c			;b622
	push af			;b623
	inc bc			;b624
	defb 0fdh,000h,091h ;illegal sequence	;b625
	pop bc			;b628
	rst 20h			;b629
	add a,c			;b62a
	inc e			;b62b
	ld a,01ch		;b62c
	nop			;b62e
	add a,c			;b62f
	add a,c			;b630
	nop			;b631
	inc e			;b632
	ld a,01ch		;b633
	add a,c			;b635
	rst 20h			;b636
	ld a,00dh		;b637
	inc bc			;b639
	inc b			;b63a
	and h			;b63b
	ld (hl),h		;b63c
	adc a,h			;b63d
	ld (hl),h		;b63e
	call m,0ed13h		;b63f
	ret m			;b642
	ld (de),a		;b643
	call z,090d9h		;b644
	ld (09032h),a		;b647
	exx			;b64a
	call z,0f812h		;b64b
	defb 0edh ;next byte illegal after ed	;b64e
	inc de			;b64f
	add a,a			;b650
	ld a,07dh		;b651
	ei			;b653
	ld a,e			;b654
	sbc a,e			;b655
	bit 4,e			;b656
	ld h,e			;b658
	res 3,e			;b659
	ld a,e			;b65b
	ei			;b65c
	ld a,l			;b65d
	ld a,087h		;b65e
	nop			;b660
	add a,e			;b661
	ld c,h			;b662
	ret			;b663
	ret			;b664
	inc b			;b665
	jp (hl)			;b666
	inc bc			;b667
	ret			;b668
	inc bc			;b669
	jp (hl)			;b66a
	ld (bc),a		;b66b
	ret			;b66c
	add a,e			;b66d
	call nz,0f330h		;b66e
	inc bc			;b671
	call p,0fc04h		;b672
	add a,l			;b675
	call nz,0fcc3h		;b676
	jp 00453h		;b679
	ld b,e			;b67c
	adc a,b			;b67d
	ld d,e			;b67e
	jp 0c3fch		;b67f
	call nz,0c4fch		;b682
	jp 05303h		;b685
	ld b,043h		;b688
	inc bc			;b68a
	ld d,e			;b68b
	add a,d			;b68c
	jp 000c4h		;b68d
	inc bc			;b690
	nop			;b691
	add a,e			;b692
	ld c,007h		;b693
	ld bc,00006h		;b695
	add a,a			;b698
	ret nz			;b699
	ret p			;b69a
	ld a,h			;b69b
	ccf			;b69c
	rrca			;b69d
	inc bc			;b69e
	ld bc,00005h		;b69f
	adc a,b			;b6a2
	add a,b			;b6a3
	ret po			;b6a4
	ret p			;b6a5
	call m,03f7eh		;b6a6
	rra			;b6a9
	rra			;b6aa
	ld b,000h		;b6ab
	add a,d			;b6ad
	add a,b			;b6ae
	ret nz			;b6af
	ld b,000h		;b6b0
	add a,d			;b6b2
	rlca			;b6b3
	ccf			;b6b4
	inc b			;b6b5
	nop			;b6b6
	add a,h			;b6b7
	rra			;b6b8
	rst 38h			;b6b9
	inc e			;b6ba
	call m,00300h		;b6bb
	djnz lb6cah		;b6be
	ld b,b			;b6c0
	ld (bc),a		;b6c1
	ld d,b			;b6c2
	add hl,bc		;b6c3
	ret nz			;b6c4
	ld e,090h		;b6c5
	ld (bc),a		;b6c7
	ret			;b6c8
	nop			;b6c9
lb6cah:
	add a,(hl)		;b6ca
	ld sp,hl		;b6cb
	cp 07fh			;b6cc
	rra			;b6ce
	rlca			;b6cf
	inc bc			;b6d0
	inc b			;b6d1
	ld bc,00386h		;b6d2
	rlca			;b6d5
	rra			;b6d6
	ld a,a			;b6d7
	cp 0f9h			;b6d8
	inc b			;b6da
	nop			;b6db
	add a,h			;b6dc
	ret p			;b6dd
	rst 38h			;b6de
	ld sp,hl		;b6df
	ld sp,hl		;b6e0
	dec b			;b6e1
	nop			;b6e2
	adc a,e			;b6e3
	ld bc,0f8e0h		;b6e4
	nop			;b6e7
	nop			;b6e8
	rlca			;b6e9
	rra			;b6ea
	ld a,a			;b6eb
	jr nc,$-48		;b6ec
	sbc a,l			;b6ee
	inc bc			;b6ef
	ld bc,00385h		;b6f0
	rlca			;b6f3
	rrca			;b6f4
	ccf			;b6f5
	ld a,000h		;b6f6
	ld (bc),a		;b6f8
	call nz,0900ch		;b6f9
	ld (bc),a		;b6fc
	call nz,09006h		;b6fd
	ld (bc),a		;b700
	ret			;b701
	ld b,040h		;b702
	add a,d			;b704
	sub h			;b705
	push bc			;b706
	dec b			;b707
	ld b,b			;b708
	adc a,e			;b709
	ld d,h			;b70a
	ld d,e			;b70b
	ld d,e			;b70c
	ret nz			;b70d
	ret nz			;b70e
	jr nc,$+66		;b70f
	jr nc,lb753h		;b711
	jr nc,lb758h		;b713
	nop			;b715
	call p,01704h		;b716
	scf			;b719
	djnz $+18		;b71a
	ret p			;b71c
	djnz lb72fh		;b71d
	scf			;b71f
	jr c,$-14		;b720
	ret nz			;b722
	nop			;b723
	ret p			;b724
	di			;b725
	and 086h		;b726
	call 03bf9h		;b728
	defb 0ddh,0ceh,0e7h ;illegal sequence	;b72b
	di			;b72e
lb72fh:
	ld b,006h		;b72f
	ld c,01ch		;b731
	dec de			;b733
	scf			;b734
	ld b,a			;b735
	inc bc			;b736
	call z,03162h		;b737
	inc bc			;b73a
	inc e			;b73b
	ret m			;b73c
	pop de			;b73d
	inc c			;b73e
	ld a,(07d78h)		;b73f
	dec b			;b742
	ret m			;b743
	call m,07e38h		;b744
	ld a,a			;b747
	ld a,a			;b748
	call m,0cff3h		;b749
	cp h			;b74c
	ld (hl),e		;b74d
	rst 28h			;b74e
	call z,03399h		;b74f
	ld h,a			;b752
lb753h:
	rst 8			;b753
	ld h,b			;b754
	ld b,b			;b755
	ret nz			;b756
	add a,b			;b757
lb758h:
	add a,b			;b758
	add a,c			;b759
	pop bc			;b75a
	dec e			;b75b
	jp m,07b03h		;b75c
	add hl,sp		;b75f
	ret po			;b760
	ccf			;b761
	ld a,(hl)		;b762
	ld a,(hl)		;b763
	ld a,l			;b764
	ld a,l			;b765
	ld a,e			;b766
	ld a,e			;b767
	ld a,d			;b768
	ld (hl),074h		;b769
	inc sp			;b76b
	rrca			;b76c
	rst 0			;b76d
	jp 03f1fh		;b76e
	ccf			;b771
	rlca			;b772
	rlca			;b773
	ld h,a			;b774
	djnz $-69		;b775
	jr lb7ach		;b777
	ld l,a			;b779
	rst 18h			;b77a
	pop bc			;b77b
	rst 38h			;b77c
	ccf			;b77d
	inc bc			;b77e
	dec e			;b77f
	dec de			;b780
	dec sp			;b781
	dec sp			;b782
	ld (hl),e		;b783
	ld (hl),c		;b784
	ld (hl),a		;b785
	ld (hl),a		;b786
	ccf			;b787
	nop			;b788
	ld a,a			;b789
	inc e			;b78a
	inc bc			;b78b
	ret po			;b78c
	add a,c			;b78d
	rra			;b78e
	dec b			;b78f
	ld a,a			;b790
	sub h			;b791
	ccf			;b792
	rra			;b793
	rst 8			;b794
	ccf			;b795
	ret p			;b796
	inc a			;b797
sub_b798h:
	rrca			;b798
	inc bc			;b799
	ld bc,0c0c0h		;b79a
	rlca			;b79d
	rra			;b79e
	cp b			;b79f
	ret nc			;b7a0
	xor 06ch		;b7a1
	ld a,l			;b7a3
	pop hl			;b7a4
	djnz lb7aah		;b7a5
	ret p			;b7a7
	sub l			;b7a8
	add a,b			;b7a9
lb7aah:
	rst 8			;b7aa
	adc a,a			;b7ab
lb7ach:
	rrca			;b7ac
	inc c			;b7ad
	ret nz			;b7ae
	ret p			;b7af
	call m,00f3fh		;b7b0
	ex (sp),hl		;b7b3
	ret m			;b7b4
	inc bc			;b7b5
	rlca			;b7b6
	rrca			;b7b7
	ret po			;b7b8
	ret m			;b7b9
	ret po			;b7ba
	inc e			;b7bb
	jp po,00393h		;b7bc
	cp e			;b7bf
	or a			;b7c0
	dec sp			;b7c1
	add hl,sp		;b7c2
	ld b,a			;b7c3
	ld b,a			;b7c4
	ld b,03bh		;b7c5
	ld h,b			;b7c7
	rst 0			;b7c8
	sbc a,a			;b7c9
	ld a,07dh		;b7ca
	dec sp			;b7cc
	jp nz,08243h		;b7cd
	ld b,a			;b7d0
	ld a,(03887h)		;b7d1
	inc bc			;b7d4
	ld b,0cch		;b7d5
	ld (de),a		;b7d7
	cp b			;b7d8
	ld h,d			;b7d9
	ex (sp),hl		;b7da
	and d			;b7db
	jp 01ef8h		;b7dc
	ld c,006h		;b7df
	inc bc			;b7e1
	inc bc			;b7e2
	ld bc,00c01h		;b7e3
	ld (hl),e		;b7e6
	add a,a			;b7e7
	rra			;b7e8
	ret m			;b7e9
	ret po			;b7ea
	add a,b			;b7eb
	nop			;b7ec
	call z,0c7f3h		;b7ed
	rra			;b7f0
	ret m			;b7f1
	ret po			;b7f2
	add a,b			;b7f3
	nop			;b7f4
	sub e			;b7f5
	cp e			;b7f6
	cp e			;b7f7
	inc bc			;b7f8
	ld de,0c68bh		;b7f9
	ld de,0f7f0h		;b7fc
	and 0eeh		;b7ff
	adc a,09eh		;b801
	cp (hl)			;b803
	dec a			;b804
	dec a			;b805
	inc bc			;b806
	ld a,l			;b807
	sbc a,c			;b808
	ld a,c			;b809
	ld (hl),b		;b80a
	ld a,b			;b80b
	ld (062cch),a		;b80c
	ld sp,01e07h		;b80f
	call m,009c3h		;b812
	rra			;b815
	ret nz			;b816
	ret nz			;b817
	rst 38h			;b818
	cp a			;b819
	ret nz			;b81a
	adc a,a			;b81b
	ccf			;b81c
	rrca			;b81d
	rrca			;b81e
	inc bc			;b81f
lb820h:
	rlca			;b820
	add a,a			;b821
	rlca			;b822
	rst 0			;b823
	ld (bc),a		;b824
	rst 10h			;b825
	ld (bc),a		;b826
	and a			;b827
	ret nz			;b828
	ld a,a			;b829
	rra			;b82a
	inc c			;b82b
	inc e			;b82c
	ld b,b			;b82d
	ret nz			;b82e
	adc a,a			;b82f
	ccf			;b830
	ld bc,08301h		;b831
	rst 0			;b834
	cp 0fch			;b835
	pop af			;b837
	rlca			;b838
	inc h			;b839
	inc h			;b83a
	ld h,013h		;b83b
	add hl,bc		;b83d
	ccf			;b83e
	call m,08d0fh		;b83f
	ld a,e			;b842
	ei			;b843
	rst 30h			;b844
	or 06eh			;b845
	ld l,l			;b847
	ld e,l			;b848
	rlca			;b849
	add hl,sp		;b84a
	ld h,b			;b84b
	rst 0			;b84c
	sbc a,a			;b84d
	ld a,07dh		;b84e
	dec sp			;b850
	call pe,0c0f8h		;b851
	ret m			;b854
	ld sp,iy		;b855
	jp p,lb2cah		;b857
	ld h,c			;b85a
	call z,0409eh		;b85b
	ret nz			;b85e
lb85fh:
	add a,b			;b85f
	add a,b			;b860
	jp p,07ffbh		;b861
	ccf			;b864
	rra			;b865
	rra			;b866
	rrca			;b867
	rrca			;b868
	nop			;b869
	add a,h			;b86a
	call m,054c5h		;b86b
	ld sp,hl		;b86e
	dec b			;b86f
	call m,0c381h		;b870
	rlca			;b873
	call nz,05402h		;b874
	ld (bc),a		;b877
	ld b,e			;b878
	add a,c			;b879
	ld d,h			;b87a
	inc b			;b87b
	push bc			;b87c
	ld (bc),a		;b87d
	ld d,h			;b87e
	ld b,043h		;b87f
	add a,h			;b881
	ld d,e			;b882
	jp 0fc53h		;b883
	dec b			;b886
	ld d,e			;b887
	add a,e			;b888
	push af			;b889
	ld d,e			;b88a
	ld d,h			;b88b
	inc b			;b88c
	push bc			;b88d
	add a,e			;b88e
	call nz,0c5c5h		;b88f
	dec b			;b892
	call nz,09503h		;b893
	rlca			;b896
	ret			;b897
	add a,e			;b898
	sub l			;b899
	ret			;b89a
	sub l			;b89b
	inc bc			;b89c
	ret			;b89d
	ld (bc),a		;b89e
	sub l			;b89f
	rlca			;b8a0
	sbc a,h			;b8a1
	ld (bc),a		;b8a2
	push bc			;b8a3
	adc a,d			;b8a4
	sub l			;b8a5
	ret			;b8a6
	sub l			;b8a7
	sub l			;b8a8
	sub h			;b8a9
	sbc a,h			;b8aa
	sbc a,h			;b8ab
	push bc			;b8ac
	ld d,h			;b8ad
	ld d,h			;b8ae
	dec b			;b8af
	ld b,e			;b8b0
	ld a,(bc)		;b8b1
	ld d,h			;b8b2
	inc b			;b8b3
	ld b,e			;b8b4
	add a,h			;b8b5
	push bc			;b8b6
	jp (hl)			;b8b7
	ret			;b8b8
	ld c,h			;b8b9
	inc bc			;b8ba
	sub l			;b8bb
	inc bc			;b8bc
	sbc a,h			;b8bd
	add a,c			;b8be
	sub h			;b8bf
	inc b			;b8c0
	sub l			;b8c1
	ld b,0c9h		;b8c2
	adc a,d			;b8c4
	ld e,c			;b8c5
	ld d,e			;b8c6
	jp 05353h		;b8c7
	ld b,e			;b8ca
	ld d,h			;b8cb
	push bc			;b8cc
	jp 004f3h		;b8cd
	ld b,e			;b8d0
	inc bc			;b8d1
	jr nc,lb85fh		;b8d2
	di			;b8d4
	ld d,e			;b8d5
	jp 0c394h		;b8d6
	ld d,e			;b8d9
	ld b,e			;b8da
	jp 054c5h		;b8db
	ld b,e			;b8de
	inc bc			;b8df
	jp 0c485h		;b8e0
	jp 0f5f4h		;b8e3
	call m,0f903h		;b8e6
	add a,c			;b8e9
	call nz,05404h		;b8ea
	ld (bc),a		;b8ed
	call nz,09402h		;b8ee
	add a,e			;b8f1
	call nz,0f5fch		;b8f2
	inc bc			;b8f5
	call p,0f388h		;b8f6
	ld sp,hl		;b8f9
	ld sp,hl		;b8fa
	call m,0fcc4h		;b8fb
	jp 003fch		;b8fe
	ld sp,hl		;b901
	ld (bc),a		;b902
	di			;b903
	ld (bc),a		;b904
	call p,0f585h		;b905
	call m,0f4f5h		;b908
	ld d,e			;b90b
	inc bc			;b90c
	call nz,0c904h		;b90d
	add a,c			;b910
	sub h			;b911
	inc bc			;b912
	call nz,0c908h		;b913
	add a,a			;b916
	push bc			;b917
	ld e,a			;b918
	call m,0c5f5h		;b919
	ld d,h			;b91c
	ld d,h			;b91d
	inc b			;b91e
	ld b,e			;b91f
	inc bc			;b920
	ld d,e			;b921
	add a,l			;b922
	ld d,h			;b923
	call nz,0c5c5h		;b924
	ld d,h			;b927
	inc bc			;b928
	ld b,e			;b929
	ld (bc),a		;b92a
	ld d,e			;b92b
	add a,d			;b92c
	ld b,e			;b92d
	di			;b92e
	inc bc			;b92f
	ld d,e			;b930
	add a,c			;b931
	jp 04c03h		;b932
	ld (bc),a		;b935
	push bc			;b936
	add a,e			;b937
	sub l			;b938
	push bc			;b939
	push bc			;b93a
	dec b			;b93b
	sub l			;b93c
	ld b,09ch		;b93d
	inc b			;b93f
	sub l			;b940
	adc a,b			;b941
	push hl			;b942
	sub l			;b943
	ld d,h			;b944
	call nz,0c5c5h		;b945
	sub l			;b948
	call p,0f30dh		;b949
	add a,e			;b94c
	call p,05343h		;b94d
	ld a,(bc)		;b950
	ld d,h			;b951
	ld (bc),a		;b952
	call nz,09402h		;b953
	inc bc			;b956
	call nz,09502h		;b957
	dec b			;b95a
	sub h			;b95b
	inc bc			;b95c
	sub l			;b95d
lb95eh:
	ld b,0c9h		;b95e
	add a,d			;b960
	push bc			;b961
	call nz,0c303h		;b962
	add a,c			;b965
	call nz,08500h		;b966
	rrca			;b969
	rlca			;b96a
	inc bc			;b96b
	ld bc,00301h		;b96c
	nop			;b96f
	inc bc			;b970
	ld bc,00303h		;b971
	ld (bc),a		;b974
	ld bc,00004h		;b975
	adc a,c			;b978
	dec a			;b979
	ld a,a			;b97a
	rst 0			;b97b
	or e			;b97c
	nop			;b97d
	ccf			;b97e
	rrca			;b97f
	rlca			;b980
	inc bc			;b981
	inc b			;b982
	ld bc,00304h		;b983
	inc bc			;b986
	rlca			;b987
	add a,c			;b988
	add a,b			;b989
	inc b			;b98a
	ret nz			;b98b
	inc bc			;b98c
	ret po			;b98d
	add a,e			;b98e
	rra			;b98f
	rrca			;b990
	rlca			;b991
	dec b			;b992
	nop			;b993
	add a,d			;b994
	ret m			;b995
	ret nz			;b996
	ld b,000h		;b997
	add a,l			;b999
	rst 38h			;b99a
	call m,0e0f0h		;b99b
	ret nz			;b99e
	inc bc			;b99f
	add a,b			;b9a0
	add a,l			;b9a1
	nop			;b9a2
	inc bc			;b9a3
	rlca			;b9a4
	rrca			;b9a5
	rrca			;b9a6
	inc bc			;b9a7
	rra			;b9a8
	ld b,000h		;b9a9
	add a,d			;b9ab
	call m,0066ch		;b9ac
	nop			;b9af
	add a,a			;b9b0
	ccf			;b9b1
	sbc a,a			;b9b2
	nop			;b9b3
	nop			;b9b4
	ld bc,00303h		;b9b5
	inc bc			;b9b8
	rlca			;b9b9
	nop			;b9ba
	add a,e			;b9bb
	sub b			;b9bc
	ret nz			;b9bd
	ret nz			;b9be
	ld de,08550h		;b9bf
	ld b,b			;b9c2
	ld d,b			;b9c3
	ld d,e			;b9c4
	jp 006c3h		;b9c5
	jr nc,$+20		;b9c8
	ld b,b			;b9ca
	ld d,030h		;b9cb
	inc bc			;b9cd
	ld b,b			;b9ce
	ld (bc),a		;b9cf
	ld d,b			;b9d0
	ld (bc),a		;b9d1
	ld b,b			;b9d2
	add a,c			;b9d3
	jr nc,lb9ddh		;b9d4
	ret p			;b9d6
	add a,d			;b9d7
	jr nc,lba1dh		;b9d8
	rlca			;b9da
	jr nc,lb95eh		;b9db
lb9ddh:
	ld b,e			;b9dd
	inc bc			;b9de
	jr nc,lb9e3h		;b9df
	ld b,b			;b9e1
	add a,e			;b9e2
lb9e3h:
	ld d,b			;b9e3
	ret nz			;b9e4
	ld d,b			;b9e5
	nop			;b9e6
	or d			;b9e7
	inc de			;b9e8
	ld h,a			;b9e9
	and 0cdh		;b9ea
	call 0cbdbh		;b9ec
	ret			;b9ef
	ccf			;b9f0
	nop			;b9f1
	nop			;b9f2
	ld a,h			;b9f3
	ex (sp),hl		;b9f4
	ex (sp),hl		;b9f5
	ld a,0e2h		;b9f6
	cp 03fh			;b9f8
lb9fah:
	rrca			;b9fa
	rst 20h			;b9fb
	di			;b9fc
	ei			;b9fd
	ld sp,08c81h		;b9fe
	halt			;ba01
	jp m,01901h		;ba02
	dec h			;ba05
	cp (hl)			;ba06
	rst 0			;ba07
	djnz lb9fah		;ba08
	djnz lba14h		;ba0a
	ex af,af'		;ba0c
	add a,b			;ba0d
	ret nz			;ba0e
	pop hl			;ba0f
	ret m			;ba10
	defb 0fdh,0fch,0fdh ;illegal sequence	;ba11
lba14h:
	ld a,h			;ba14
	dec a			;ba15
	ex (sp),hl		;ba16
	jp po,04827h		;ba17
	inc bc			;ba1a
	ld d,b			;ba1b
	adc a,e			;ba1c
lba1dh:
	ret pe			;ba1d
	dec bc			;ba1e
	rra			;ba1f
	inc bc			;ba20
	rlca			;ba21
	rrca			;ba22
	ret po			;ba23
	jr c,lba32h		;ba24
	jp nz,00068h		;ba26
	add a,h			;ba29
	jp 05453h		;ba2a
	ld d,e			;ba2d
	ld b,043h		;ba2e
	adc a,c			;ba30
	sbc a,c			;ba31
lba32h:
	call m,04ef4h		;ba32
	ld d,h			;ba35
	push bc			;ba36
	ld d,e			;ba37
	ld d,h			;ba38
	ld d,e			;ba39
	dec b			;ba3a
	ld b,e			;ba3b
	inc bc			;ba3c
	call m,0c303h		;ba3d
	inc b			;ba40
	call m,0f985h		;ba41
	push af			;ba44
	call m,09495h		;ba45
	inc bc			;ba48
	sub e			;ba49
	ld (bc),a		;ba4a
	sub h			;ba4b
	ld (bc),a		;ba4c
	sub l			;ba4d
	ex af,af'		;ba4e
	ret			;ba4f
	adc a,d			;ba50
	push bc			;ba51
	ld d,h			;ba52
	push bc			;ba53
	ld d,h			;ba54
	ld b,e			;ba55
	sub e			;ba56
	ld d,e			;ba57
	ld d,e			;ba58
	ld b,e			;ba59
	ld d,e			;ba5a
	nop			;ba5b
	ex af,af'		;ba5c
	rst 38h			;ba5d
	ld (bc),a		;ba5e
	ld a,e			;ba5f
	adc a,d			;ba60
	ld (hl),a		;ba61
	ld c,a			;ba62
	cp a			;ba63
	ex (sp),hl		;ba64
	sbc a,l			;ba65
	ld a,(hl)		;ba66
	pop af			;ba67
	call m,03386h		;ba68
	inc bc			;ba6b
	ld a,e			;ba6c
	defb 0ddh,0b7h,09dh ;illegal sequence	;ba6d
	ld a,b			;ba70
	ret po			;ba71
	nop			;ba72
	nop			;ba73
	cp 0ffh			;ba74
	ccf			;ba76
	or a			;ba77
	in a,(00dh)		;ba78
	call p,03202h		;ba7a
	ld a,c			;ba7d
	defb 0fdh,0a5h ;and iyl	;ba7e
	call z,05848h		;ba80
	ld b,b			;ba83
	nop			;ba84
	rlca			;ba85
	dec sp			;ba86
	ret p			;ba87
	ld a,a			;ba88
	rrca			;ba89
	pop hl			;ba8a
	call z,0dedeh		;ba8b
	dec e			;ba8e
	defb 0fdh,00dh,0fdh ;illegal sequence	;ba8f
	dec c			;ba92
	ld (bc),a		;ba93
	ld (bc),a		;ba94
	rst 38h			;ba95
	rra			;ba96
	rlca			;ba97
	ccf			;ba98
	ret m			;ba99
	ret nz			;ba9a
	ret m			;ba9b
	ret nz			;ba9c
	ret m			;ba9d
	ret nz			;ba9e
	jp 0fff8h		;ba9f
	call m,07e7fh		;baa2
	ld a,a			;baa5
	ld a,a			;baa6
	inc a			;baa7
	ret po			;baa8
	pop bc			;baa9
	ld a,000h		;baaa
	rrca			;baac
	ld bc,0e3f0h		;baad
	inc bc			;bab0
	and 006h		;bab1
	and 00ch		;bab3
	nop			;bab5
	inc bc			;bab6
	rlca			;bab7
	rra			;bab8
	ccf			;bab9
	nop			;baba
	nop			;babb
	ret po			;babc
	inc a			;babd
	add a,a			;babe
	ret po			;babf
	di			;bac0
	ld bc,0fe8fh		;bac1
lbac4h:
	ld (hl),b		;bac4
	ld a,a			;bac5
	ccf			;bac6
	ret po			;bac7
	pop af			;bac8
	ret po			;bac9
	ret po			;baca
	inc bc			;bacb
	ret nz			;bacc
	add a,c			;bacd
	ret p			;bace
	rlca			;bacf
	rrca			;bad0
	sub c			;bad1
	ret po			;bad2
	rst 8			;bad3
	ld h,a			;bad4
	or e			;bad5
	ret c			;bad6
	cpl			;bad7
	add a,d			;bad8
	jp po,01f76h		;bad9
lbadch:
	rra			;badc
	rst 38h			;badd
	rrca			;bade
	rrca			;badf
	ret p			;bae0
	ret p			;bae1
	nop			;bae2
	nop			;bae3
	add hl,bc		;bae4
	sub e			;bae5
	add a,d			;bae6
	jp 00453h		;bae7
	ld b,e			;baea
	inc b			;baeb
	ld d,e			;baec
	add a,e			;baed
	jp 0c393h		;baee
	inc bc			;baf1
	ld b,e			;baf2
	add a,c			;baf3
	ld d,e			;baf4
	inc bc			;baf5
	ld d,h			;baf6
	inc b			;baf7
	ld b,e			;baf8
	add a,h			;baf9
	ld d,e			;bafa
	ld d,h			;bafb
	call nz,00653h		;bafc
	ld d,h			;baff
	inc bc			;bb00
	ld b,e			;bb01
	ld (bc),a		;bb02
	di			;bb03
	add a,a			;bb04
	ld d,h			;bb05
	ld d,e			;bb06
	ld d,e			;bb07
	ld b,e			;bb08
	ld d,e			;bb09
	ld b,e			;bb0a
	ld b,e			;bb0b
	inc bc			;bb0c
	ld d,h			;bb0d
	ld (bc),a		;bb0e
	ld b,e			;bb0f
	inc b			;bb10
	di			;bb11
	ld (bc),a		;bb12
	ret			;bb13
	ld (bc),a		;bb14
	push bc			;bb15
	ld (bc),a		;bb16
	ld d,h			;bb17
	inc bc			;bb18
	ld b,e			;bb19
	ld (bc),a		;bb1a
	ld d,e			;bb1b
	inc bc			;bb1c
	push bc			;bb1d
	inc bc			;bb1e
	ld d,h			;bb1f
	add a,c			;bb20
	ld b,e			;bb21
	inc bc			;bb22
	ld d,h			;bb23
	ld (bc),a		;bb24
	ld b,e			;bb25
	add a,l			;bb26
	di			;bb27
	push bc			;bb28
	push bc			;bb29
	ld d,h			;bb2a
	ld d,h			;bb2b
	inc bc			;bb2c
	ld b,e			;bb2d
	inc bc			;bb2e
	jr nc,$+4		;bb2f
	call nz,05302h		;bb31
	adc a,e			;bb34
	jp 09053h		;bb35
	sub b			;bb38
	ret			;bb39
	ret			;bb3a
	push bc			;bb3b
	push bc			;bb3c
	ld d,b			;bb3d
	ld b,b			;bb3e
	ld b,e			;bb3f
	dec b			;bb40
	jr nc,lbac4h		;bb41
	ret p			;bb43
	inc bc			;bb44
	ld b,b			;bb45
	inc bc			;bb46
	jr nc,lbadch		;bb47
	di			;bb49
	inc (hl)		;bb4a
	inc (hl)		;bb4b
	ld d,e			;bb4c
	call nz,0c454h		;bb4d
	jp 05343h		;bb50
	ld d,h			;bb53
	jr nc,lbb99h		;bb54
	ld b,e			;bb56
	ld d,h			;bb57
	push bc			;bb58
	push bc			;bb59
	ld d,h			;bb5a
	ld d,h			;bb5b
	nop			;bb5c
	add a,e			;bb5d
	call sub_b798h		;bb5e
	inc bc			;bb61
	xor a			;bb62
	sub a			;bb63
	and a			;bb64
	sub e			;bb65
	ld c,h			;bb66
	ld h,(hl)		;bb67
	sbc a,b			;bb68
	rst 8			;bb69
	call m,01c98h		;bb6a
	inc a			;bb6d
	ld b,03fh		;bb6e
	rra			;bb70
	rrca			;bb71
	rlca			;bb72
	ld (hl),e		;bb73
	ret m			;bb74
	rst 38h			;bb75
	push af			;bb76
	push af			;bb77
	ret nz			;bb78
	ret m			;bb79
	xor b			;bb7a
	inc bc			;bb7b
	rrca			;bb7c
	sbc a,c			;bb7d
	rlca			;bb7e
	ccf			;bb7f
	ld a,a			;bb80
	rra			;bb81
	ccf			;bb82
	ccf			;bb83
	rra			;bb84
	ld a,a			;bb85
	rst 18h			;bb86
lbb87h:
	rst 38h			;bb87
	add a,b			;bb88
	add a,b			;bb89
	ret nz			;bb8a
	ret po			;bb8b
	ret p			;bb8c
	ret m			;bb8d
	ld c,007h		;bb8e
	inc bc			;bb90
	ld bc,07f01h		;bb91
	nop			;bb94
	add a,b			;bb95
	ld b,003h		;bb96
	inc bc			;bb98
lbb99h:
	ld (bc),a		;bb99
	ld bc,0c302h		;bb9a
	ld (bc),a		;bb9d
	rst 38h			;bb9e
	ld (bc),a		;bb9f
	cp 003h			;bba0
	ld (bc),a		;bba2
	and e			;bba3
	inc bc			;bba4
	add a,b			;bba5
	add a,b			;bba6
	ret nz			;bba7
	ret nz			;bba8
	ret p			;bba9
	jr c,lbbebh		;bbaa
	ld c,007h		;bbac
	rra			;bbae
	add a,a			;bbaf
	rst 0			;bbb0
	ret nz			;bbb1
	ret p			;bbb2
	ret nz			;bbb3
	dec bc			;bbb4
	ld (de),a		;bbb5
	adc a,d			;bbb6
	jp m,04df7h		;bbb7
	jr lbbefh		;bbba
	rst 30h			;bbbc
	ld (07d30h),a		;bbbd
	ld sp,03fc7h		;bbc0
	dec bc			;bbc3
	ret nz			;bbc4
	jr nz,lbb87h		;bbc5
	inc b			;bbc7
	rst 38h			;bbc8
	defb 0edh ;next byte illegal after ed	;bbc9
	ret m			;bbca
	ret nz			;bbcb
	ret po			;bbcc
	ret p			;bbcd
	defb 0fdh,0e6h,0c2h ;illegal sequence	;bbce
	ld (0e408h),a		;bbd1
	inc bc			;bbd4
	nop			;bbd5
	nop			;bbd6
	di			;bbd7
	add a,b			;bbd8
	dec sp			;bbd9
	pop af			;bbda
	push af			;bbdb
	call m,0fefch		;bbdc
	cp 0ffh			;bbdf
	rst 38h			;bbe1
	ld a,a			;bbe2
	ld a,a			;bbe3
	rst 20h			;bbe4
	ld (hl),e		;bbe5
	dec sp			;bbe6
	dec e			;bbe7
	rrca			;bbe8
	rlca			;bbe9
	inc bc			;bbea
lbbebh:
	ld bc,07f01h		;bbeb
	ld a,a			;bbee
lbbefh:
	ccf			;bbef
	ccf			;bbf0
	rra			;bbf1
	rra			;bbf2
	adc a,a			;bbf3
lbbf4h:
	rst 0			;bbf4
	ld h,a			;bbf5
	inc sp			;bbf6
	add hl,de		;bbf7
	ld a,a			;bbf8
	ld a,07fh		;bbf9
	ccf			;bbfb
	push bc			;bbfc
	defb 0fdh,038h,000h ;illegal sequence	;bbfd
	adc a,a			;bc00
	di			;bc01
	ld (hl),d		;bc02
	ld (07f1fh),a		;bc03
	ld a,a			;bc06
	inc bc			;bc07
	nop			;bc08
	inc bc			;bc09
	rlca			;bc0a
	inc c			;bc0b
	inc de			;bc0c
	inc bc			;bc0d
	ld bc,0c080h		;bc0e
	ret po			;bc11
	ret m			;bc12
	inc a			;bc13
	call m,0ff6eh		;bc14
	ld a,e			;bc17
	scf			;bc18
	cp (hl)			;bc19
	defb 0ddh,03fh,0bfh ;illegal sequence	;bc1a
	ld a,03eh		;bc1d
	ld e,h			;bc1f
	sbc a,h			;bc20
	inc e			;bc21
	inc e			;bc22
	ld e,00ch		;bc23
	add a,e			;bc25
	ret nz			;bc26
	or b			;bc27
	call z,0c0c3h		;bc28
	ret po			;bc2b
	and (hl)		;bc2c
	inc de			;bc2d
	inc de			;bc2e
	add hl,bc		;bc2f
	add hl,bc		;bc30
	add a,h			;bc31
	ld a,h			;bc32
	ld b,027h		;bc33
	ld b,a			;bc35
	jr c,lbc3bh		;bc36
	jr lbbf4h		;bc38
	ld a,h			;bc3a
lbc3bh:
	adc a,a			;bc3b
	ei			;bc3c
	ld a,c			;bc3d
	add hl,sp		;bc3e
	add hl,de		;bc3f
	sbc a,a			;bc40
	rst 0			;bc41
	ex (sp),hl		;bc42
	ex (sp),hl		;bc43
	pop af			;bc44
	ld a,c			;bc45
	add hl,sp		;bc46
	jp po,0e60ch		;bc47
	ld h,e			;bc4a
	add hl,de		;bc4b
	inc a			;bc4c
	ld bc,00fffh		;bc4d
	add a,b			;bc50
	rra			;bc51
	inc h			;bc52
	ld c,c			;bc53
	inc (hl)		;bc54
	ld h,e			;bc55
	and c			;bc56
	and b			;bc57
	ret nc			;bc58
	ld e,c			;bc59
	cpl			;bc5a
	inc de			;bc5b
	ld h,c			;bc5c
	ld e,01eh		;bc5d
	ret nz			;bc5f
	ccf			;bc60
	nop			;bc61
	ccf			;bc62
	ccf			;bc63
	adc a,a			;bc64
	ret nz			;bc65
	ld h,b			;bc66
	ld h,b			;bc67
	jr nc,$+50		;bc68
	add hl,sp		;bc6a
	sbc a,e			;bc6b
	rra			;bc6c
	rlca			;bc6d
	ld bc,0f0c0h		;bc6e
	cp h			;bc71
	cp (hl)			;bc72
	ld l,l			;bc73
	nop			;bc74
	adc a,d			;bc75
	ld d,e			;bc76
	jp 0c353h		;bc77
	sub h			;bc7a
	sub h			;bc7b
	call nz,05354h		;bc7c
	ld b,e			;bc7f
	ld b,0f3h		;bc80
	add a,l			;bc82
	ld b,e			;bc83
	di			;bc84
	ld b,e			;bc85
	ld d,e			;bc86
	ld d,e			;bc87
	inc b			;bc88
	ld b,e			;bc89
	add a,(hl)		;bc8a
	ccf			;bc8b
	ld b,e			;bc8c
	ret			;bc8d
	ret			;bc8e
	push bc			;bc8f
	ld d,h			;bc90
	inc b			;bc91
	ld b,e			;bc92
	inc b			;bc93
	ld d,h			;bc94
	inc bc			;bc95
	ld b,e			;bc96
	rlca			;bc97
	call p,0f586h		;bc98
	call m,0f5fch		;bc9b
	ld b,e			;bc9e
	ld b,e			;bc9f
	ex af,af'		;bca0
	di			;bca1
	add a,c			;bca2
	ld c,a			;bca3
	inc b			;bca4
	sub l			;bca5
	add a,d			;bca6
	ret			;bca7
	ld e,c			;bca8
	rlca			;bca9
	ret			;bcaa
	adc a,d			;bcab
	push bc			;bcac
	ld d,h			;bcad
	ld d,h			;bcae
	push bc			;bcaf
	ld d,e			;bcb0
	ld d,e			;bcb1
	ld b,e			;bcb2
	ld d,h			;bcb3
	ld d,h			;bcb4
	sub l			;bcb5
	inc b			;bcb6
	ret			;bcb7
	inc bc			;bcb8
	push bc			;bcb9
	adc a,b			;bcba
	ld d,h			;bcbb
	ld b,e			;bcbc
	sub l			;bcbd
	ld d,h			;bcbe
	ld b,e			;bcbf
	ld b,e			;bcc0
	di			;bcc1
	di			;bcc2
lbcc3h:
	inc bc			;bcc3
	ld b,e			;bcc4
	rlca			;bcc5
	di			;bcc6
	add a,e			;bcc7
	ld b,e			;bcc8
	ld d,h			;bcc9
	push bc			;bcca
	ex af,af'		;bccb
	ret			;bccc
	inc bc			;bccd
	sub l			;bcce
	add a,l			;bccf
	push bc			;bcd0
	ld d,h			;bcd1
	sub l			;bcd2
	sub l			;bcd3
	sub h			;bcd4
	ld c,09ch		;bcd5
	dec bc			;bcd7
	push bc			;bcd8
	ld (bc),a		;bcd9
	ld d,h			;bcda
	ld b,043h		;bcdb
	ld (bc),a		;bcdd
	call p,04381h		;bcde
	inc b			;bce1
	ld d,h			;bce2
	ex af,af'		;bce3
	push bc			;bce4
	inc b			;bce5
	push af			;bce6
	dec b			;bce7
	call p,0f31ch		;bce8
	ld (bc),a		;bceb
	sub l			;bcec
	dec b			;bced
	ret			;bcee
	dec b			;bcef
	push bc			;bcf0
	dec b			;bcf1
	ld d,h			;bcf2
	ld (bc),a		;bcf3
	ld d,e			;bcf4
	add a,e			;bcf5
	push af			;bcf6
	ld b,e			;bcf7
	ld b,e			;bcf8
	inc bc			;bcf9
	ld d,h			;bcfa
	ld (bc),a		;bcfb
	di			;bcfc
	add a,d			;bcfd
	ld d,e			;bcfe
	call p,0f305h		;bcff
	add a,e			;bd02
	call p,0f4f5h		;bd03
	inc b			;bd06
	di			;bd07
	add a,d			;bd08
	call p,00343h		;bd09
	di			;bd0c
	dec c			;bd0d
	ld b,e			;bd0e
	dec b			;bd0f
	di			;bd10
	nop			;bd11
	add a,e			;bd12
	pop bc			;bd13
	rrca			;bd14
	inc bc			;bd15
	ld d,001h		;bd16
	ld (bc),a		;bd18
	inc bc			;bd19
	ld (bc),a		;bd1a
	rlca			;bd1b
	inc bc			;bd1c
	rrca			;bd1d
	add a,e			;bd1e
	rst 8			;bd1f
	call m,00df0h		;bd20
	add a,b			;bd23
	ld (bc),a		;bd24
	nop			;bd25
	add a,(hl)		;bd26
	inc c			;bd27
	ld e,06eh		;bd28
lbd2ah:
	ld (hl),a		;bd2a
	ld c,l			;bd2b
	ld b,l			;bd2c
	nop			;bd2d
	sub b			;bd2e
	di			;bd2f
	ld b,b			;bd30
	ld d,b			;bd31
	ld d,b			;bd32
	ld b,b			;bd33
	ld b,b			;bd34
	ret p			;bd35
	ld d,b			;bd36
	ld d,b			;bd37
	jr nc,lbd2ah		;bd38
	ld b,b			;bd3a
	ld d,b			;bd3b
	ret nz			;bd3c
	sub b			;bd3d
	ret nz			;bd3e
	inc b			;bd3f
	jr nc,lbcc3h		;bd40
	ld d,b			;bd42
lbd43h:
	inc bc			;bd43
	ret nz			;bd44
	add a,c			;bd45
	ld d,b			;bd46
	inc bc			;bd47
	ret nz			;bd48
lbd49h:
	ld (bc),a		;bd49
	ld d,b			;bd4a
	sub c			;bd4b
	ld b,b			;bd4c
	jr nc,lbd92h		;bd4d
	ld b,b			;bd4f
	ld b,b			;bd50
	jr nc,lbd43h		;bd51
	ld d,b			;bd53
	ret nz			;bd54
	ret nz			;bd55
	ld d,b			;bd56
	jr nc,lbd49h		;bd57
	ld b,b			;bd59
	ld d,b			;bd5a
	ret nz			;bd5b
	sub b			;bd5c
	inc bc			;bd5d
	ret nz			;bd5e
	add a,(hl)		;bd5f
	sub b			;bd60
	ld d,b			;bd61
	ld b,b			;bd62
	ret p			;bd63
	ld sp,hl		;bd64
	push af			;bd65
	nop			;bd66
	and b			;bd67
	nop			;bd68
	inc a			;bd69
	nop			;bd6a
	nop			;bd6b
	call po,0d4c4h		;bd6c
	sub h			;bd6f
	rst 30h			;bd70
	rst 30h			;bd71
	ei			;bd72
	call m,01c38h		;bd73
	rrca			;bd76
	inc bc			;bd77
	rlca			;bd78
	ret nz			;bd79
	ret po			;bd7a
	ld (hl),b		;bd7b
	scf			;bd7c
	inc e			;bd7d
	jr lbd98h		;bd7e
	ld a,01fh		;bd80
lbd82h:
	ld de,07030h		;bd82
	ret p			;bd85
	or b			;bd86
	or b			;bd87
	inc bc			;bd88
	jr $-55			;bd89
	adc a,h			;bd8b
	call z,07266h		;bd8c
	ld a,a			;bd8f
	or h			;bd90
	xor d			;bd91
lbd92h:
	jp (hl)			;bd92
	and h			;bd93
	cp (hl)			;bd94
	rst 20h			;bd95
	and a			;bd96
	rst 38h			;bd97
lbd98h:
	dec hl			;bd98
	ld d,b			;bd99
	sub b			;bd9a
	jr nz,lbdfeh		;bd9b
	jp 0ffffh		;bd9d
	call p,09893h		;bda0
	ret m			;bda3
	inc c			;bda4
	dec b			;bda5
	rlca			;bda6
	rst 38h			;bda7
	dec bc			;bda8
	ld a,(bc)		;bda9
	ld d,027h		;bdaa
	ld b,h			;bdac
	adc a,h			;bdad
	inc c			;bdae
	rra			;bdaf
	rst 38h			;bdb0
	nop			;bdb1
	nop			;bdb2
	rst 38h			;bdb3
	rst 38h			;bdb4
	nop			;bdb5
	nop			;bdb6
	rst 38h			;bdb7
	jr z,lbd82h		;bdb8
	jr $+129		;bdba
	ret p			;bdbc
	ret po			;bdbd
	ret po			;bdbe
	rst 38h			;bdbf
	ret nc			;bdc0
	ld d,b			;bdc1
	ld l,b			;bdc2
	inc h			;bdc3
	ld (lb0b1h),hl		;bdc4
	sbc a,b			;bdc7
	nop			;bdc8
	inc a			;bdc9
	nop			;bdca
	nop			;bdcb
	daa			;bdcc
	inc bc			;bdcd
	ld a,e			;bdce
	ld h,c			;bdcf
	inc (hl)		;bdd0
	ld (hl),h		;bdd1
	dec b			;bdd2
	dec bc			;bdd3
	sub (hl)		;bdd4
	rst 38h			;bdd5
	sub d			;bdd6
	sub d			;bdd7
	jp nc,0f2d2h		;bdd8
	pop af			;bddb
	adc a,c			;bddc
	sbc a,b			;bddd
	ld c,c			;bdde
	ld c,c			;bddf
	ld c,e			;bde0
	ld c,e			;bde1
	ld c,l			;bde2
	adc a,c			;bde3
	sbc a,h			;bde4
	ld a,(de)		;bde5
	inc hl			;bde6
	inc a			;bde7
	ld a,03fh		;bde8
	ccf			;bdea
	inc bc			;bdeb
	ld a,a			;bdec
	sub e			;bded
	ld a,08fh		;bdee
	rst 0			;bdf0
	rst 20h			;bdf1
	rst 20h			;bdf2
	rst 28h			;bdf3
	ld sp,0ff33h		;bdf4
	ccf			;bdf7
	ld a,a			;bdf8
	inc a			;bdf9
	cp 07eh			;bdfa
	in a,(099h)		;bdfc
lbdfeh:
	cp l			;bdfe
	and l			;bdff
	and l			;be00
	dec b			;be01
	jr $-100		;be02
	add a,b			;be04
	ret nz			;be05
	ret po			;be06
	ret m			;be07
	cp a			;be08
	rst 20h			;be09
	and l			;be0a
	rst 38h			;be0b
	and l			;be0c
	cp l			;be0d
	rst 20h			;be0e
	push hl			;be0f
	ccf			;be10
	rrca			;be11
	inc bc			;be12
	ld bc,00f15h		;be13
	inc bc			;be16
	nop			;be17
	ld a,a			;be18
	ret po			;be19
	call m,099ffh		;be1a
	sbc a,c			;be1d
	inc b			;be1e
	in a,(002h)		;be1f
	ld a,a			;be21
	sbc a,b			;be22
	ccf			;be23
	rlca			;be24
	rrca			;be25
	ld bc,0ff01h		;be26
	ld b,l			;be29
	ld b,l			;be2a
	add a,c			;be2b
	rst 38h			;be2c
	add a,c			;be2d
	add a,c			;be2e
	ld b,c			;be2f
	ld a,a			;be30
	ld b,l			;be31
	dec h			;be32
	adc a,h			;be33
	ret z			;be34
	ld d,b			;be35
	ld h,b			;be36
	ld b,b			;be37
	add a,b			;be38
	ld bc,00801h		;be39
	rst 38h			;be3c
	adc a,b			;be3d
	inc bc			;be3e
	inc hl			;be3f
	ld hl,08771h		;be40
	daa			;be43
	ret z			;be44
	ret z			;be45
	nop			;be46
	add a,e			;be47
	inc b			;be48
	ld b,e			;be49
	ld b,e			;be4a
	add hl,bc		;be4b
	ccf			;be4c
	dec b			;be4d
	ld b,e			;be4e
	inc (hl)		;be4f
	di			;be50
	dec b			;be51
	call p,0f302h		;be52
	ld (bc),a		;be55
	sub l			;be56
	ld b,0f3h		;be57
	add a,d			;be59
	push af			;be5a
	call p,0f307h		;be5b
	inc b			;be5e
	call p,04302h		;be5f
	rlca			;be62
	ccf			;be63
	ld (bc),a		;be64
	call p,0f582h		;be65
	call p,0f303h		;be68
	add a,e			;be6b
	call p,0f4f5h		;be6c
	dec b			;be6f
	di			;be70
	add a,e			;be71
	call p,0f4f5h		;be72
	inc b			;be75
	di			;be76
	add a,c			;be77
	sub e			;be78
	ld b,053h		;be79
	add a,d			;be7b
	ld b,h			;be7c
	jp 05305h		;be7d
	adc a,a			;be80
	push af			;be81
	call p,0c5c5h		;be82
	ld d,e			;be85
	call nz,0fcc5h		;be86
	call p,0fcf5h		;be89
	call m,053f5h		;be8c
	call nz,09503h		;be8f
	add a,c			;be92
	call p,0f503h		;be93
	add a,d			;be96
	di			;be97
	call p,0f304h		;be98
	add a,e			;be9b
	call p,0fcf3h		;be9c
	inc bc			;be9f
	ld sp,hl		;bea0
	add a,c			;bea1
lbea2h:
	call p,0f503h		;bea2
	add a,l			;bea5
	push bc			;bea6
	call m,0f9f9h		;bea7
	call nz,05403h		;beaa
	add a,c			;bead
	ld b,e			;beae
	dec b			;beaf
	ccf			;beb0
	add a,l			;beb1
	push af			;beb2
	call p,0f3f3h		;beb3
	ld sp,hl		;beb6
	inc bc			;beb7
	push af			;beb8
	add a,e			;beb9
	ld sp,hl		;beba
	push af			;bebb
	call p,0f304h		;bebc
	ld b,0f4h		;bebf
	ld a,(bc)		;bec1
	push af			;bec2
	add a,a			;bec3
	call m,0f5f5h		;bec4
	ld d,e			;bec7
	ld d,e			;bec8
	call p,000f3h		;bec9
	ld (bc),a		;becc
	rst 38h			;becd
	sub (hl)		;bece
	ret m			;becf
	ret nz			;bed0
	nop			;bed1
	inc bc			;bed2
	rrca			;bed3
	ccf			;bed4
	ld bc,00703h		;bed5
	rrca			;bed8
	rra			;bed9
	ccf			;beda
	ld a,a			;bedb
	ld bc,00100h		;bedc
	inc bc			;bedf
	rlca			;bee0
	rra			;bee1
	ccf			;bee2
	ld a,a			;bee3
	rst 38h			;bee4
	inc bc			;bee5
	nop			;bee6
	and l			;bee7
	ret nz			;bee8
	ret p			;bee9
	ret m			;beea
	cp 0ffh			;beeb
	add a,b			;beed
	ret nz			;beee
	ret po			;beef
	ret p			;bef0
	ret m			;bef1
	call m,0fffeh		;bef2
	ld bc,00703h		;bef5
	rrca			;bef8
	rra			;bef9
	ccf			;befa
	ld a,a			;befb
	ld a,a			;befc
	add a,b			;befd
	ret nz			;befe
	ret po			;beff
	ret p			;bf00
	ret p			;bf01
	ret m			;bf02
	call m,0c0feh		;bf03
	ret po			;bf06
	ret p			;bf07
	ret m			;bf08
	ret m			;bf09
	call m,0fefch		;bf0a
	inc b			;bf0d
	nop			;bf0e
	inc b			;bf0f
	ld bc,00307h		;bf10
	ld b,000h		;bf13
	add a,e			;bf15
	inc bc			;bf16
	rrca			;bf17
	ccf			;bf18
	nop			;bf19
	dec b			;bf1a
	ld bc,02103h		;bf1b
	rlca			;bf1e
lbf1fh:
	djnz lbea2h		;bf1f
	ld hl,0101ah		;bf21
	inc bc			;bf24
	ret p			;bf25
	dec b			;bf26
	djnz lbf2bh		;bf27
	ret p			;bf29
	adc a,e			;bf2a
lbf2bh:
	jr nz,lbf3dh		;bf2b
	djnz lbf1fh		;bf2d
	jr nc,lbf51h		;bf2f
	ret p			;bf31
	ret p			;bf32
	jr nz,lbf45h		;bf33
	ret p			;bf35
	dec b			;bf36
	jr nc,lbf43h		;bf37
	djnz $+9		;bf39
	ret p			;bf3b
	inc bc			;bf3c
lbf3dh:
	djnz lbf3fh		;bf3d
lbf3fh:
	add a,c			;bf3f
	ld bc,00303h		;bf40
lbf43h:
	inc b			;bf43
	rlca			;bf44
lbf45h:
	add a,c			;bf45
	ld bc,00305h		;bf46
	ld (bc),a		;bf49
	nop			;bf4a
	ld (bc),a		;bf4b
	rlca			;bf4c
	add a,c			;bf4d
	rrca			;bf4e
	ld b,000h		;bf4f
lbf51h:
	inc bc			;bf51
	ret po			;bf52
	add a,l			;bf53
	ccf			;bf54
	rrca			;bf55
	rlca			;bf56
	inc bc			;bf57
	rrca			;bf58
	rlca			;bf59
	nop			;bf5a
	nop			;bf5b
	dec c			;bf5c
	djnz $+5		;bf5d
	ret p			;bf5f
	add a,d			;bf60
	ld hl,0061fh		;bf61
	ret p			;bf64
	ld (bc),a		;bf65
	inc hl			;bf66
	add a,d			;bf67
	ld (de),a		;bf68
	pop af			;bf69
	inc c			;bf6a
	ret p			;bf6b
	nop			;bf6c
	sub b			;bf6d
	inc bc			;bf6e
	ld a,a			;bf6f
	rst 38h			;bf70
	rra			;bf71
	rrca			;bf72
	rrca			;bf73
	ret p			;bf74
	ld a,(hl)		;bf75
	ret po			;bf76
	call m,0ffffh		;bf77
	ret po			;bf7a
	djnz $-61		;bf7b
	ld a,003h		;bf7d
	nop			;bf7f
	xor d			;bf80
	rst 38h			;bf81
	jp 07cfch		;bf82
	jr c,lbf87h		;bf85
lbf87h:
	ld bc,00f03h		;bf87
	rra			;bf8a
	ccf			;bf8b
	ld a,(hl)		;bf8c
	inc bc			;bf8d
	ld bc,00d06h		;bf8e
	inc bc			;bf91
	ld a,a			;bf92
	ret po			;bf93
	ret po			;bf94
	inc bc			;bf95
	ret nz			;bf96
	ccf			;bf97
	ret po			;bf98
	ret po			;bf99
	inc e			;bf9a
	pop af			;bf9b
	adc a,a			;bf9c
	ret p			;bf9d
	ld a,h			;bf9e
	rst 38h			;bf9f
	ld a,(hl)		;bfa0
	inc a			;bfa1
	ld a,0fch		;bfa2
	call m,03e83h		;bfa4
	inc a			;bfa7
	cp 07ch			;bfa8
	ld a,(hl)		;bfaa
	inc bc			;bfab
	ld a,0bah		;bfac
	nop			;bfae
	ld b,b			;bfaf
	ld (hl),b		;bfb0
	nop			;bfb1
	ld (hl),b		;bfb2
	rlca			;bfb3
	ret p			;bfb4
	rrca			;bfb5
	ld bc,00f07h		;bfb6
	rra			;bfb9
	ccf			;bfba
	ld a,a			;bfbb
	inc bc			;bfbc
	rlca			;bfbd
	rlca			;bfbe
	rrca			;bfbf
	rra			;bfc0
	ccf			;bfc1
	ld a,a			;bfc2
	ld bc,00f03h		;bfc3
	rlca			;bfc6
	ld e,03ch		;bfc7
	ld a,(hl)		;bfc9
	rst 38h			;bfca
	rst 20h			;bfcb
	adc a,0deh		;bfcc
	rrca			;bfce
	rrca			;bfcf
	rst 38h			;bfd0
	ret po			;bfd1
	rlca			;bfd2
	rra			;bfd3
	ccf			;bfd4
	ld a,a			;bfd5
	inc bc			;bfd6
	rst 38h			;bfd7
	rst 38h			;bfd8
	inc bc			;bfd9
	ret po			;bfda
	ret m			;bfdb
	call m,0c1feh		;bfdc
	ret po			;bfdf
	ret m			;bfe0
	call m,0e6feh		;bfe1
	ld (hl),d		;bfe4
	ld a,e			;bfe5
	ret nz			;bfe6
	ret po			;bfe7
	inc b			;bfe8
	ccf			;bfe9
	ld (bc),a		;bfea
	rra			;bfeb
	ld (bc),a		;bfec
	nop			;bfed
	ld (bc),a		;bfee
	rst 38h			;bfef
	add a,d			;bff0
	ret p			;bff1
	ret m			;bff2
	dec b			;bff3
	call m,0ff85h		;bff4
	inc bc			;bff7
	nop			;bff8
	inc bc			;bff9
	rlca			;bffa
	inc b			;bffb
	rrca			;bffc
	add a,(hl)		;bffd
	nop			;bffe
	rrca			;bfff
