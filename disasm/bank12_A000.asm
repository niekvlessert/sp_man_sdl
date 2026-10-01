; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank12_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank12.bin

	org 0a000h

	ld (00000h),hl		;a000
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
	nop			;a010
	nop			;a011
	nop			;a012
	nop			;a013
	nop			;a014
	nop			;a015
	nop			;a016
	nop			;a017
	nop			;a018
	nop			;a019
	nop			;a01a
	nop			;a01b
	nop			;a01c
	nop			;a01d
	nop			;a01e
	nop			;a01f
	ld bc,00b00h		;a020
	inc b			;a023
	inc c			;a024
	nop			;a025
	add hl,de		;a026
	nop			;a027
	add hl,de		;a028
	nop			;a029
	ld (06501h),a		;a02a
	ld (bc),a		;a02d
	adc a,(hl)		;a02e
	nop			;a02f
	jr la032h		;a030
la032h:
	and (hl)		;a032
	ld b,b			;a033
	and (hl)		;a034
	ld b,b			;a035
	ld b,h			;a036
	add a,b			;a037
	adc a,l			;a038
	nop			;a039
	adc a,c			;a03a
	nop			;a03b
	dec bc			;a03c
	nop			;a03d
	ld a,(de)		;a03e
	nop			;a03f
	ld (hl),000h		;a040
	ld b,h			;a042
	nop			;a043
	add a,h			;a044
	nop			;a045
	adc a,b			;a046
	nop			;a047
	adc a,b			;a048
	nop			;a049
	ld de,01100h		;a04a
	nop			;a04d
	ld hl,02300h		;a04e
	nop			;a051
	add a,l			;a052
	ld (bc),a		;a053
	add a,d			;a054
	nop			;a055
	add a,d			;a056
	nop			;a057
	add a,b			;a058
	nop			;a059
	add a,b			;a05a
	nop			;a05b
	nop			;a05c
	nop			;a05d
	nop			;a05e
	nop			;a05f
	nop			;a060
	nop			;a061
	dec hl			;a062
	rra			;a063
	dec hl			;a064
	rra			;a065
	dec hl			;a066
	rra			;a067
	ld l,a			;a068
	rra			;a069
	ld c,a			;a06a
	ccf			;a06b
	ld c,a			;a06c
	ccf			;a06d
	ld e,a			;a06e
	ccf			;a06f
	rst 18h			;a070
	ccf			;a071
	cp 0ffh			;a072
	defb 0fdh,0feh,0fch ;illegal sequence	;a074
	rst 38h			;a077
	cp 0ffh			;a078
	cp 0ffh			;a07a
	rst 38h			;a07c
	rst 38h			;a07d
	rst 38h			;a07e
	rst 38h			;a07f
	rst 38h			;a080
	rst 38h			;a081
	or (hl)			;a082
	ld h,b			;a083
	ld e,h			;a084
	ret po			;a085
	xor l			;a086
	ld b,b			;a087
	cp b			;a088
	ld b,b			;a089
	inc (hl)		;a08a
	ret z			;a08b
	ld e,b			;a08c
	ret po			;a08d
	pop de			;a08e
	ret po			;a08f
	and b			;a090
	ret p			;a091
	ld c,d			;a092
	dec a			;a093
	sbc a,d			;a094
	ld a,l			;a095
	sbc a,l			;a096
	ld a,a			;a097
	cp d			;a098
	ld a,l			;a099
	ld l,b			;a09a
	ccf			;a09b
	cp (hl)			;a09c
	ld a,c			;a09d
	ld (hl),0f9h		;a09e
	add a,l			;a0a0
	ld a,b			;a0a1
	jp m,0f9fch		;a0a2
	cp 0f8h			;a0a5
	rst 38h			;a0a7
	defb 0fdh,0feh,0feh ;illegal sequence	;a0a8
	rst 38h			;a0ab
	defb 0fdh,0ffh,0fbh ;illegal sequence	;a0ac
	rst 38h			;a0af
	ld sp,hl		;a0b0
	rst 38h			;a0b1
	and b			;a0b2
	ret nz			;a0b3
la0b4h:
	ld (0cec0h),a		;a0b4
	ret p			;a0b7
	ld (hl),h		;a0b8
	ret m			;a0b9
	ld a,d			;a0ba
	call m,0feddh		;a0bb
	jp po,0e4ffh		;a0be
	ei			;a0c1
	rla			;a0c2
	rrca			;a0c3
	rla			;a0c4
	rrca			;a0c5
la0c6h:
	jr nc,la0d7h		;a0c6
	rrca			;a0c8
	nop			;a0c9
	inc b			;a0ca
	inc bc			;a0cb
	add a,a			;a0cc
	inc bc			;a0cd
	adc a,e			;a0ce
	rlca			;a0cf
	ld b,l			;a0d0
	add a,e			;a0d1
	djnz la0b4h		;a0d2
	jr z,la0c6h		;a0d4
	ex af,af'		;a0d6
la0d7h:
	ret p			;a0d7
	inc d			;a0d8
	ret m			;a0d9
	call pe,05810h		;a0da
	add a,b			;a0dd
	ld c,c			;a0de
	add a,b			;a0df
	dec hl			;a0e0
	ret nz			;a0e1
	and e			;a0e2
	ld a,h			;a0e3
	sub 028h		;a0e4
	jp z,la134h		;a0e6
	ld e,(hl)		;a0e9
	call p,0ca0fh		;a0ea
	scf			;a0ed
	or l			;a0ee
	ld a,e			;a0ef
	ld d,h			;a0f0
	dec sp			;a0f1
	adc a,d			;a0f2
	rlca			;a0f3
	add a,h			;a0f4
	inc bc			;a0f5
	call nz,04503h		;a0f6
	inc bc			;a0f9
	jp po,la201h		;a0fa
	ld bc,00091h		;a0fd
	cp b			;a100
	nop			;a101
	add a,c			;a102
	nop			;a103
	adc a,c			;a104
	nop			;a105
	adc a,c			;a106
	nop			;a107
	ld b,b			;a108
	add a,b			;a109
	ld b,d			;a10a
	add a,b			;a10b
	and c			;a10c
	ret nz			;a10d
	ld d,b			;a10e
	ret po			;a10f
	xor b			;a110
	ld (hl),b		;a111
	ld hl,03000h		;a112
	nop			;a115
	sbc a,b			;a116
	nop			;a117
	adc a,(hl)		;a118
	nop			;a119
	ld b,e			;a11a
	nop			;a11b
	djnz la11eh		;a11c
la11eh:
	ld b,000h		;a11e
	ld h,b			;a120
	nop			;a121
	add a,b			;a122
	nop			;a123
	ld h,b			;a124
	nop			;a125
	dec c			;a126
	nop			;a127
la128h:
	nop			;a128
	nop			;a129
	nop			;a12a
	nop			;a12b
	ret nz			;a12c
	nop			;a12d
	jr c,la130h		;a12e
la130h:
	rst 0			;a130
	nop			;a131
	inc c			;a132
	nop			;a133
la134h:
	ld h,b			;a134
	nop			;a135
	nop			;a136
	nop			;a137
	nop			;a138
	nop			;a139
	nop			;a13a
	nop			;a13b
	nop			;a13c
	nop			;a13d
	ld b,b			;a13e
	nop			;a13f
	nop			;a140
	nop			;a141
	jr nz,la144h		;a142
la144h:
	add a,b			;a144
	nop			;a145
	nop			;a146
	nop			;a147
	ld bc,00200h		;a148
	ld bc,00304h		;a14b
	dec de			;a14e
	inc b			;a14f
	ld h,h			;a150
	jr la188h		;a151
	nop			;a153
	ld l,b			;a154
	nop			;a155
	ret nc			;a156
	nop			;a157
	ld (hl),b		;a158
	add a,b			;a159
	jp nz,08000h		;a15a
	nop			;a15d
	inc b			;a15e
	nop			;a15f
	inc b			;a160
	nop			;a161
	ld b,e			;a162
	nop			;a163
	ld b,(hl)		;a164
	nop			;a165
	add a,(hl)		;a166
	nop			;a167
	ld a,(bc)		;a168
	inc b			;a169
	ld (0640ch),a		;a16a
	jr $-90			;a16d
	jr la199h		;a16f
	djnz la173h		;a171
la173h:
	nop			;a173
	jr nz,la186h		;a174
	jr nz,la188h		;a176
	ld c,b			;a178
	jr nc,la1c3h		;a179
	jr nc,la128h		;a17b
	djnz la1b2h		;a17d
	nop			;a17f
	ld (hl),d		;a180
	nop			;a181
	rst 18h			;a182
	ccf			;a183
	adc a,a			;a184
	ld a,a			;a185
la186h:
	cp a			;a186
	ld a,a			;a187
la188h:
	adc a,a			;a188
	ld a,a			;a189
	ld e,a			;a18a
	cpl			;a18b
	ld d,a			;a18c
	cpl			;a18d
	ld c,e			;a18e
	scf			;a18f
	ld h,l			;a190
	rra			;a191
	ret c			;a192
	ret po			;a193
	adc a,(hl)		;a194
	ret po			;a195
	rst 10h			;a196
	ret pe			;a197
la198h:
	add a,e			;a198
la199h:
	call m,0fea9h		;a199
	dec c			;a19c
	cp 06dh			;a19d
	sbc a,(hl)		;a19f
	sub b			;a1a0
	rrca			;a1a1
	call z,05a31h		;a1a2
	ld hl,00730h		;a1a5
	djnz $+9		;a1a8
	add a,d			;a1aa
	ld bc,0019ah		;a1ab
	add a,d			;a1ae
	ld bc,000c1h		;a1af
la1b2h:
	ld a,a			;a1b2
la1b3h:
	rst 38h			;a1b3
	ld a,a			;a1b4
	rst 38h			;a1b5
	rst 38h			;a1b6
	rst 38h			;a1b7
	cp a			;a1b8
	rst 38h			;a1b9
	ld e,a			;a1ba
	cp a			;a1bb
	ld e,a			;a1bc
	cp a			;a1bd
	xor a			;a1be
	rst 18h			;a1bf
	cpl			;a1c0
	rst 18h			;a1c1
	di			;a1c2
la1c3h:
	call m,0fffah		;a1c3
	jp pe,0f7ffh		;a1c6
	rst 38h			;a1c9
	rst 38h			;a1ca
	rst 38h			;a1cb
	rst 38h			;a1cc
	rst 38h			;a1cd
	rst 38h			;a1ce
	rst 38h			;a1cf
	rst 38h			;a1d0
	rst 38h			;a1d1
	ld c,l			;a1d2
	add a,e			;a1d3
	or l			;a1d4
	jp 0916ah		;a1d5
	ld e,c			;a1d8
	and b			;a1d9
	inc e			;a1da
	ret po			;a1db
	call po,0aaf8h		;a1dc
	call p,sub_ba45h	;a1df
	and e			;a1e2
	ret nz			;a1e3
	ld b,c			;a1e4
	add a,b			;a1e5
	ld b,b			;a1e6
	add a,b			;a1e7
	ld (0d1c0h),hl		;a1e8
	jr nz,$+46		;a1eb
	djnz la201h		;a1ed
	inc c			;a1ef
	ld a,(bc)		;a1f0
	inc b			;a1f1
	sub (hl)		;a1f2
	ld a,c			;a1f3
	ld h,e			;a1f4
	inc e			;a1f5
	dec e			;a1f6
	ld (bc),a		;a1f7
	ld (bc),a		;a1f8
	ld bc,00081h		;a1f9
	ld b,h			;a1fc
	add a,b			;a1fd
	cp d			;a1fe
	ld b,b			;a1ff
	adc a,b			;a200
la201h:
	ld (hl),b		;a201
	call z,0e600h		;a202
	nop			;a205
	ld h,e			;a206
la207h:
	nop			;a207
	pop de			;a208
	jr nz,la1b3h		;a209
	djnz $-7		;a20b
	jr c,la198h		;a20d
	halt			;a20f
	sub a			;a210
	ld h,b			;a211
	ld b,(hl)		;a212
	jr c,la246h		;a213
	ld c,08eh		;a215
	ld bc,000c3h		;a217
	ld (hl),b		;a21a
	nop			;a21b
	inc c			;a21c
	nop			;a21d
	rlca			;a21e
	nop			;a21f
	add a,c			;a220
	nop			;a221
	inc e			;a222
	nop			;a223
	nop			;a224
	nop			;a225
	ret nz			;a226
	nop			;a227
	cp b			;a228
	ld b,b			;a229
	ld a,a			;a22a
	nop			;a22b
	nop			;a22c
	nop			;a22d
	nop			;a22e
	nop			;a22f
	ret po			;a230
	nop			;a231
	nop			;a232
	nop			;a233
	nop			;a234
	nop			;a235
	nop			;a236
	nop			;a237
	nop			;a238
	nop			;a239
	rlca			;a23a
	nop			;a23b
	ret m			;a23c
	nop			;a23d
	nop			;a23e
la23fh:
	nop			;a23f
	ld bc,00100h		;a240
	nop			;a243
	ld b,001h		;a244
la246h:
	add hl,de		;a246
	ld b,0fch		;a247
	nop			;a249
	add a,b			;a24a
	nop			;a24b
	nop			;a24c
	nop			;a24d
	djnz la250h		;a24e
la250h:
	ret nz			;a250
	nop			;a251
	sbc a,b			;a252
	ld h,b			;a253
	ld h,b			;a254
	add a,b			;a255
	add a,b			;a256
	nop			;a257
	nop			;a258
	nop			;a259
	nop			;a25a
	nop			;a25b
	jr la25eh		;a25c
la25eh:
	jr nc,la260h		;a25e
la260h:
	ld h,c			;a260
	nop			;a261
	inc c			;a262
	nop			;a263
	jr la266h		;a264
la266h:
	jr z,la278h		;a266
	jr z,la27ah		;a268
	ld d,c			;a26a
	jr nz,$-28		;a26b
	ld bc,003c5h		;a26d
	adc a,d			;a270
	rlca			;a271
	ld c,b			;a272
	jr nc,la23fh		;a273
	jr nc,la207h		;a275
	ld h,b			;a277
la278h:
	sub c			;a278
	ld h,b			;a279
la27ah:
	dec h			;a27a
	ret nz			;a27b
	xor d			;a27c
	pop bc			;a27d
	ld l,d			;a27e
	add a,a			;a27f
	call nc,0160fh		;a280
	jr nz,la2ebh		;a283
	nop			;a285
	xor 000h		;a286
	ld e,d			;a288
	add a,h			;a289
	ld d,h			;a28a
	adc a,b			;a28b
	inc h			;a28c
	sbc a,b			;a28d
	call po,0db18h		;a28e
	inc a			;a291
	sub d			;a292
	ld l,l			;a293
	cp b			;a294
	ld b,a			;a295
	ld d,(hl)		;a296
	dec sp			;a297
	ld d,h			;a298
	dec sp			;a299
	ld c,l			;a29a
	inc sp			;a29b
	ld c,e			;a29c
	scf			;a29d
	xor e			;a29e
	ld (hl),a		;a29f
	ld (hl),a		;a2a0
	rst 38h			;a2a1
	cp 0ffh			;a2a2
	defb 0fdh,0feh,0fch ;illegal sequence	;a2a4
	rst 38h			;a2a7
	jp m,0fafdh		;a2a8
	defb 0fdh,0fbh,0fch ;illegal sequence	;a2ab
	defb 0fdh,0feh,0fch ;illegal sequence	;a2ae
	rst 38h			;a2b1
	call p,0ac0fh		;a2b2
	ld b,a			;a2b5
	rst 10h			;a2b6
	call pe,0ecd2h		;a2b7
	ld a,(02ec4h)		;a2ba
	ret nc			;a2bd
	ex (sp),hl		;a2be
	inc e			;a2bf
la2c0h:
	ld l,e			;a2c0
	sbc a,h			;a2c1
	ld h,c			;a2c2
	add a,b			;a2c3
	or d			;a2c4
	pop bc			;a2c5
	ld d,c			;a2c6
	ret po			;a2c7
	xor c			;a2c8
	ld (hl),b		;a2c9
	and (hl)		;a2ca
	ld a,b			;a2cb
	and a			;a2cc
	ld a,b			;a2cd
	xor e			;a2ce
	ld (hl),b		;a2cf
	ld c,e			;a2d0
	jr nc,la2eah		;a2d1
	rst 28h			;a2d3
	rst 8			;a2d4
	rst 38h			;a2d5
	dec hl			;a2d6
	rst 38h			;a2d7
	ld b,a			;a2d8
	cp a			;a2d9
	or l			;a2da
	ld e,a			;a2db
	ld b,a			;a2dc
	ccf			;a2dd
	inc sp			;a2de
	rrca			;a2df
	cp l			;a2e0
	rlca			;a2e1
la2e2h:
	sub h			;a2e2
	ex de,hl		;a2e3
	add a,0fdh		;a2e4
	xor c			;a2e6
	or 0b5h			;a2e7
	ei			;a2e9
la2eah:
	push bc			;a2ea
la2ebh:
	ei			;a2eb
	jp pe,0f5fdh		;a2ec
	ret m			;a2ef
	or a			;a2f0
	ret m			;a2f1
	add a,l			;a2f2
	ld (bc),a		;a2f3
	add a,d			;a2f4
	ld bc,08041h		;a2f5
	ld b,c			;a2f8
	add a,b			;a2f9
	ld b,b			;a2fa
	add a,b			;a2fb
	and b			;a2fc
	ret nz			;a2fd
	jr nz,la2c0h		;a2fe
	djnz la2e2h		;a300
	ld (hl),078h		;a302
	jp c,02d3ch		;a304
	cp 01ch			;a307
	rst 38h			;a309
	cp 07fh			;a30a
	sbc a,(hl)		;a30c
	ld a,a			;a30d
	or a			;a30e
	ld a,a			;a30f
	ld c,a			;a310
	ccf			;a311
	ld c,b			;a312
	jr nc,la37bh		;a313
	jr la329h		;a315
	inc c			;a317
	ret			;a318
	ld b,02ah		;a319
	rst 0			;a31b
	call nc,sub_a8efh	;a31c
	rst 0			;a31f
	xor c			;a320
	add a,0e0h		;a321
	nop			;a323
	jr nc,la326h		;a324
la326h:
	jr la328h		;a326
la328h:
	ld (bc),a		;a328
la329h:
	nop			;a329
	sbc a,h			;a32a
	nop			;a32b
	add a,(hl)		;a32c
	ex af,af'		;a32d
	adc a,(hl)		;a32e
	nop			;a32f
	inc bc			;a330
	nop			;a331
	jr c,la334h		;a332
la334h:
	ld bc,00000h		;a334
	nop			;a337
	nop			;a338
	nop			;a339
	nop			;a33a
	nop			;a33b
	ld h,c			;a33c
	nop			;a33d
	nop			;a33e
	nop			;a33f
	ret nz			;a340
	nop			;a341
	ld b,000h		;a342
	djnz la346h		;a344
la346h:
	nop			;a346
	nop			;a347
	nop			;a348
	nop			;a349
	nop			;a34a
	nop			;a34b
	nop			;a34c
	nop			;a34d
	ld bc,00700h		;a34e
	nop			;a351
	ld (bc),a		;a352
	nop			;a353
	inc c			;a354
	nop			;a355
	inc sp			;a356
	nop			;a357
	ld c,(hl)		;a358
	inc bc			;a359
	sub l			;a35a
	ld c,06ah		;a35b
	inc e			;a35d
	sub h			;a35e
	ld a,b			;a35f
	ld c,h			;a360
	jr nc,$+99		;a361
	nop			;a363
	jp nz,04400h		;a364
	add a,b			;a367
	add a,c			;a368
	nop			;a369
	inc bc			;a36a
	nop			;a36b
	ld b,001h		;a36c
	add hl,bc		;a36e
	rlca			;a36f
	ld (hl),00fh		;a370
	dec d			;a372
	ld c,065h		;a373
	ld e,09ah		;a375
	ld a,h			;a377
	or (hl)			;a378
	ld a,b			;a379
	ld l,h			;a37a
la37bh:
	ret p			;a37b
	ret z			;a37c
	ret p			;a37d
	add hl,de		;a37e
	ret po			;a37f
	or c			;a380
	ld b,b			;a381
	sub l			;a382
	ld c,02dh		;a383
	ld e,051h		;a385
	ld a,06dh		;a387
	ld (074abh),a		;a389
	and (hl)		;a38c
	ld a,c			;a38d
	ld h,c			;a38e
	rst 38h			;a38f
	ld l,b			;a390
	rst 30h			;a391
	sbc a,03fh		;a392
	xor a			;a394
	ld e,a			;a395
	ld e,a			;a396
	rst 38h			;a397
	ld a,(hl)		;a398
	rst 38h			;a399
	ld e,(hl)		;a39a
	rst 38h			;a39b
	sbc a,(hl)		;a39c
	rst 38h			;a39d
	sbc a,l			;a39e
	rst 38h			;a39f
	ld a,a			;a3a0
	rst 38h			;a3a1
	call m,0faffh		;a3a2
	ld sp,iy		;a3a5
	rst 38h			;a3a7
	ret m			;a3a8
	rst 38h			;a3a9
	call m,0d9ffh		;a3aa
	rst 38h			;a3ad
	push af			;a3ae
la3afh:
	ei			;a3af
	push de			;a3b0
	ei			;a3b1
	cp e			;a3b2
	call z,0dcabh		;a3b3
	push de			;a3b6
	xor 0d4h		;a3b7
	rst 28h			;a3b9
	pop de			;a3ba
	xor 05bh		;a3bb
	call po,0c07eh		;a3bd
	inc sp			;a3c0
	ret nz			;a3c1
	ld b,l			;a3c2
	jr c,la3afh		;a3c3
	inc e			;a3c5
	xor d			;a3c6
	inc e			;a3c7
	sub h			;a3c8
	ex af,af'		;a3c9
	ld d,h			;a3ca
	ex af,af'		;a3cb
	dec c			;a3cc
	nop			;a3cd
	inc c			;a3ce
	nop			;a3cf
	ex af,af'		;a3d0
	nop			;a3d1
	ld e,e			;a3d2
	add a,a			;a3d3
	ret z			;a3d4
	rlca			;a3d5
la3d6h:
	call nz,0910fh		;a3d6
	rrca			;a3d9
	cp d			;a3da
	dec b			;a3db
	jr la3e5h		;a3dc
	add hl,bc		;a3de
	ld b,009h		;a3df
	ld b,0ffh		;a3e1
	rst 38h			;a3e3
	rst 38h			;a3e4
la3e5h:
	rst 38h			;a3e5
	rst 38h			;a3e6
	rst 38h			;a3e7
	rst 38h			;a3e8
	rst 38h			;a3e9
	rst 38h			;a3ea
	rst 38h			;a3eb
	rst 38h			;a3ec
	rst 38h			;a3ed
	ld a,a			;a3ee
	rst 38h			;a3ef
	ld a,a			;a3f0
	rst 38h			;a3f1
	rst 38h			;a3f2
	rst 38h			;a3f3
	rst 38h			;a3f4
	rst 38h			;a3f5
	rst 38h			;a3f6
	rst 38h			;a3f7
	rst 38h			;a3f8
	rst 38h			;a3f9
	rst 38h			;a3fa
	rst 38h			;a3fb
	pop af			;a3fc
	rst 38h			;a3fd
	ld (hl),a		;a3fe
	rst 38h			;a3ff
	cp a			;a400
	ld a,a			;a401
	sub (hl)		;a402
	ld sp,hl		;a403
	adc a,e			;a404
	ret p			;a405
	halt			;a406
	ret m			;a407
	exx			;a408
	cp 0a1h			;a409
	cp 0c2h			;a40b
	call m,0f8c4h		;a40d
	or h			;a410
	ret m			;a411
	and b			;a412
	ret nz			;a413
	jr nz,la3d6h		;a414
	and b			;a416
	ld b,b			;a417
	ld h,b			;a418
	nop			;a419
	ld h,b			;a41a
	nop			;a41b
	ld b,b			;a41c
	nop			;a41d
	ret nz			;a41e
	nop			;a41f
	ret nz			;a420
	nop			;a421
	dec hl			;a422
	rra			;a423
	rla			;a424
	rrca			;a425
	ld e,00fh		;a426
	inc de			;a428
	rrca			;a429
	add hl,bc		;a42a
	rlca			;a42b
	ld a,(bc)		;a42c
	rlca			;a42d
	dec b			;a42e
	inc bc			;a42f
	ld (bc),a		;a430
	ld bc,08245h		;a431
	ld b,l			;a434
	add a,d			;a435
	ld b,d			;a436
	add a,c			;a437
	and d			;a438
	pop bc			;a439
	xor c			;a43a
	ret nz			;a43b
	ld a,c			;a43c
	ret po			;a43d
	ld (hl),l		;a43e
	ret m			;a43f
	dec a			;a440
	cp 000h			;a441
	ld bc,00081h		;a443
	ex (sp),hl		;a446
	nop			;a447
	ld c,h			;a448
	add a,b			;a449
	adc a,b			;a44a
	nop			;a44b
	djnz la44eh		;a44c
la44eh:
	nop			;a44e
	nop			;a44f
	ld (bc),a		;a450
	nop			;a451
	ret nz			;a452
	nop			;a453
	add a,b			;a454
	nop			;a455
	ld bc,00700h		;a456
	nop			;a459
	add hl,bc		;a45a
	rlca			;a45b
	inc c			;a45c
la45dh:
	inc bc			;a45d
	rlca			;a45e
	nop			;a45f
	nop			;a460
	nop			;a461
	dec c			;a462
	nop			;a463
	ld (bc),a		;a464
	ld bc,0038ch		;a465
	ld sp,0ce0eh		;a468
	jr nc,la4a1h		;a46b
	ret nz			;a46d
	ret nz			;a46e
	nop			;a46f
	ld h,b			;a470
	nop			;a471
la472h:
	or b			;a472
	ld b,b			;a473
	ld b,b			;a474
	add a,b			;a475
	ret po			;a476
	nop			;a477
	inc bc			;a478
	nop			;a479
	inc b			;a47a
	inc bc			;a47b
	dec b			;a47c
	inc bc			;a47d
	dec de			;a47e
	rlca			;a47f
	ld (hl),00fh		;a480
	dec l			;a482
	ld e,05bh		;a483
	inc a			;a485
	cp e			;a486
	ld a,h			;a487
	ld h,e			;a488
	call m,0fcd2h		;a489
	and h			;a48c
	ret m			;a48d
	ld c,h			;a48e
	ret p			;a48f
	jr la472h		;a490
	jp po,04501h		;a492
	add a,e			;a495
	adc a,c			;a496
	rlca			;a497
	ld (de),a		;a498
	rrca			;a499
	dec d			;a49a
	ld c,026h		;a49b
	dec e			;a49d
	ld l,b			;a49e
	rra			;a49f
	pop de			;a4a0
la4a1h:
	ld a,0f5h		;a4a1
	cp 031h			;a4a3
	cp 064h			;a4a5
	ei			;a4a7
	ld e,a			;a4a8
	pop hl			;a4a9
	sbc a,l			;a4aa
	ex (sp),hl		;a4ab
	ld b,e			;a4ac
	rst 38h			;a4ad
	cpl			;a4ae
	rst 18h			;a4af
	sbc a,a			;a4b0
	ld a,a			;a4b1
	jp m,lb6ffh		;a4b2
	rst 38h			;a4b5
	jp nz,051ffh		;a4b6
	cp 0a1h			;a4b9
	cp 082h			;a4bb
	call m,09864h		;a4bd
	ld c,c			;a4c0
	or b			;a4c1
	ld l,a			;a4c2
	sub b			;a4c3
	or a			;a4c4
	nop			;a4c5
	xor h			;a4c6
	djnz la50fh		;a4c7
	jr c,la513h		;a4c9
	jr nc,la45dh		;a4cb
	ld h,b			;a4cd
	ret po			;a4ce
	nop			;a4cf
	add a,b			;a4d0
	nop			;a4d1
	ex af,af'		;a4d2
	nop			;a4d3
	jr la4d6h		;a4d4
la4d6h:
	djnz la4d8h		;a4d6
la4d8h:
	jr nz,la4dah		;a4d8
la4dah:
	nop			;a4da
	nop			;a4db
	nop			;a4dc
	nop			;a4dd
	nop			;a4de
	nop			;a4df
	nop			;a4e0
	nop			;a4e1
	inc d			;a4e2
	rrca			;a4e3
	ex af,af'		;a4e4
	rlca			;a4e5
	ld b,001h		;a4e6
	dec b			;a4e8
	ld (bc),a		;a4e9
	ld a,(bc)		;a4ea
	dec b			;a4eb
	inc c			;a4ec
	inc bc			;a4ed
	ld c,001h		;a4ee
	dec b			;a4f0
	ld (bc),a		;a4f1
	ccf			;a4f2
	rst 38h			;a4f3
	cp a			;a4f4
	ld a,a			;a4f5
	ccf			;a4f6
	rst 38h			;a4f7
	ld a,a			;a4f8
	rst 38h			;a4f9
	ld a,a			;a4fa
	rst 38h			;a4fb
	rst 18h			;a4fc
	rst 38h			;a4fd
	call m,sub_bbffh	;a4fe
	ld a,h			;a501
	ld (hl),a		;a502
	ret m			;a503
	adc a,b			;a504
	ld a,a			;a505
	dec sp			;a506
	rst 0			;a507
	rst 0			;a508
	rst 38h			;a509
	rst 38h			;a50a
	rst 38h			;a50b
	ld e,0ffh		;a50c
	pop hl			;a50e
la50fh:
	ld e,01eh		;a50f
	nop			;a511
	add a,a			;a512
la513h:
	ld a,a			;a513
	ret m			;a514
	rlca			;a515
	rlca			;a516
	rst 38h			;a517
	rst 38h			;a518
	rst 38h			;a519
	jp nz,03dffh		;a51a
	jp nz,000c2h		;a51d
	nop			;a520
	nop			;a521
	rst 38h			;a522
	rst 38h			;a523
	rst 8			;a524
	ccf			;a525
	dec sp			;a526
	rst 38h			;a527
	call po,00bfbh		;a528
	ret p			;a52b
	ret p			;a52c
	nop			;a52d
	djnz la530h		;a52e
la530h:
	nop			;a530
	nop			;a531
	rst 38h			;a532
	rst 38h			;a533
	cp 0ffh			;a534
	pop bc			;a536
	cp 03eh			;a537
	ret nz			;a539
	ret nz			;a53a
	nop			;a53b
	nop			;a53c
	nop			;a53d
	nop			;a53e
	nop			;a53f
	ld b,b			;a540
	nop			;a541
	cp 0ffh			;a542
	rrca			;a544
	rst 38h			;a545
	ret p			;a546
	rrca			;a547
la548h:
	rrca			;a548
	nop			;a549
	nop			;a54a
	nop			;a54b
	nop			;a54c
	nop			;a54d
	ld d,b			;a54e
	nop			;a54f
	ret pe			;a550
	djnz la58fh		;a551
	jp 0ffc3h		;a553
	ld a,0ffh		;a556
	ret nz			;a558
	ccf			;a559
	scf			;a55a
	ex af,af'		;a55b
	ex af,af'		;a55c
	nop			;a55d
	ret p			;a55e
	nop			;a55f
	add a,b			;a560
	nop			;a561
	rst 38h			;a562
	rst 38h			;a563
	ld c,0ffh		;a564
	ld (hl),c		;a566
	adc a,(hl)		;a567
	cp l			;a568
	ld (bc),a		;a569
	rst 0			;a56a
	nop			;a56b
	ret p			;a56c
	nop			;a56d
	inc e			;a56e
	nop			;a56f
	ld (bc),a		;a570
	nop			;a571
	exx			;a572
	rst 20h			;a573
	and (hl)		;a574
	pop bc			;a575
	ld c,l			;a576
	add a,b			;a577
	call nz,08300h		;a578
	nop			;a57b
	ld (bc),a		;a57c
	nop			;a57d
	ld (bc),a		;a57e
	nop			;a57f
	nop			;a580
	nop			;a581
	ret p			;a582
	rst 38h			;a583
	ret z			;a584
	ret p			;a585
	jr nc,la548h		;a586
	ret nz			;a588
	nop			;a589
	ret nz			;a58a
	nop			;a58b
	add a,b			;a58c
	nop			;a58d
	nop			;a58e
la58fh:
	nop			;a58f
	nop			;a590
	nop			;a591
	rra			;a592
	rst 38h			;a593
	pop bc			;a594
	ccf			;a595
	inc a			;a596
	inc bc			;a597
	ld (bc),a		;a598
	ld bc,00009h		;a599
	ld l,000h		;a59c
	nop			;a59e
	nop			;a59f
	nop			;a5a0
	nop			;a5a1
	ld sp,hl		;a5a2
	cp 0fch			;a5a3
	rst 38h			;a5a5
	ccf			;a5a6
	rst 38h			;a5a7
	exx			;a5a8
	ccf			;a5a9
	ld h,019h		;a5aa
	sbc a,c			;a5ac
	nop			;a5ad
	nop			;a5ae
	nop			;a5af
	ld bc,01f00h		;a5b0
	rst 38h			;a5b3
	pop bc			;a5b4
	ccf			;a5b5
	inc a			;a5b6
	inc bc			;a5b7
	ld (bc),a		;a5b8
	ld bc,00001h		;a5b9
	nop			;a5bc
	nop			;a5bd
	nop			;a5be
	nop			;a5bf
	nop			;a5c0
	nop			;a5c1
	rst 38h			;a5c2
	rst 38h			;a5c3
	rst 38h			;a5c4
	rst 38h			;a5c5
	rst 30h			;a5c6
	rst 38h			;a5c7
	ld l,b			;a5c8
	rst 30h			;a5c9
	sub a			;a5ca
	ld h,b			;a5cb
	ld h,b			;a5cc
	nop			;a5cd
	ld bc,00100h		;a5ce
	nop			;a5d1
	ld e,l			;a5d2
	ld a,0beh		;a5d3
	ld a,a			;a5d5
	ld a,a			;a5d6
	rst 38h			;a5d7
	add a,c			;a5d8
	rst 38h			;a5d9
	ld a,(hl)		;a5da
	add a,c			;a5db
	add a,c			;a5dc
	nop			;a5dd
	nop			;a5de
	nop			;a5df
	dec b			;a5e0
	nop			;a5e1
	ld (bc),a		;a5e2
	ld bc,003fdh		;a5e3
	inc bc			;a5e6
	rst 38h			;a5e7
	rst 38h			;a5e8
	rst 38h			;a5e9
	add a,h			;a5ea
	rst 38h			;a5eb
	ld a,e			;a5ec
	add a,h			;a5ed
	add a,h			;a5ee
	nop			;a5ef
	ld de,lb300h		;a5f0
	call z,0fec5h		;a5f3
	cp 0ffh			;a5f6
la5f8h:
	ret p			;a5f8
	rst 38h			;a5f9
	rrca			;a5fa
	ret p			;a5fb
	ret p			;a5fc
	nop			;a5fd
	nop			;a5fe
	nop			;a5ff
	nop			;a600
	nop			;a601
	call p,0e30fh		;a602
	inc e			;a605
	inc e			;a606
	rst 38h			;a607
	ccf			;a608
	rst 38h			;a609
	ret nz			;a60a
	ccf			;a60b
	ccf			;a60c
	nop			;a60d
	nop			;a60e
	nop			;a60f
	nop			;a610
	nop			;a611
	ld bc,0ff00h		;a612
	nop			;a615
	jr la5f8h		;a616
	and b			;a618
	ld b,b			;a619
	rrca			;a61a
	nop			;a61b
	ret p			;a61c
	rrca			;a61d
	ld c,0ffh		;a61e
	ld sp,hl		;a620
	cp 0c1h			;a621
	nop			;a623
	rst 38h			;a624
	nop			;a625
	nop			;a626
	nop			;a627
	rst 38h			;a628
	nop			;a629
	rlca			;a62a
	ret m			;a62b
	adc a,b			;a62c
	ret p			;a62d
	ld (hl),e		;a62e
	add a,b			;a62f
	inc e			;a630
	and e			;a631
	adc a,c			;a632
	nop			;a633
	and a			;a634
	nop			;a635
	cp 000h			;a636
	ret p			;a638
	nop			;a639
	nop			;a63a
	nop			;a63b
	rra			;a63c
	nop			;a63d
	ret po			;a63e
	rra			;a63f
	rra			;a640
	rst 38h			;a641
	cp a			;a642
	ld b,b			;a643
	ei			;a644
	inc b			;a645
	inc b			;a646
	nop			;a647
	nop			;a648
	nop			;a649
	nop			;a64a
	nop			;a64b
	call m,00300h		;a64c
	call m,0fffch		;a64f
	rlca			;a652
	ret m			;a653
	ret nz			;a654
	ccf			;a655
	ccf			;a656
	nop			;a657
	nop			;a658
	nop			;a659
	nop			;a65a
	nop			;a65b
	nop			;a65c
	nop			;a65d
	rst 38h			;a65e
	nop			;a65f
	nop			;a660
	rst 38h			;a661
	ex af,af'		;a662
	add a,b			;a663
	ld (hl),b		;a664
	add a,b			;a665
	add a,b			;a666
	nop			;a667
	nop			;a668
	nop			;a669
	nop			;a66a
	nop			;a66b
	ccf			;a66c
	nop			;a66d
	ret nz			;a66e
	ccf			;a66f
	ccf			;a670
	rst 38h			;a671
	ld bc,00100h		;a672
	nop			;a675
	nop			;a676
	nop			;a677
	inc bc			;a678
	nop			;a679
	call m,00300h		;a67a
	call m,0fffch		;a67d
	rst 38h			;a680
	rst 38h			;a681
	ex af,af'		;a682
	nop			;a683
	add a,b			;a684
	nop			;a685
	ld h,b			;a686
	nop			;a687
	add a,e			;a688
	nop			;a689
	adc a,b			;a68a
	nop			;a68b
	add a,c			;a68c
	nop			;a68d
	ld e,(hl)		;a68e
	add a,c			;a68f
	ld hl,025dfh		;a690
	nop			;a693
	nop			;a694
	nop			;a695
	ld (hl),000h		;a696
	ret			;a698
	ld (hl),0b6h		;a699
	ld a,a			;a69b
	ld l,(hl)		;a69c
	rst 38h			;a69d
	sub l			;a69e
	xor 0aah		;a69f
	call nz,00080h		;a6a1
	ld a,h			;a6a4
	nop			;a6a5
	inc hl			;a6a6
	inc e			;a6a7
	jp 01c3ch		;a6a8
	ex (sp),hl		;a6ab
	and e			;a6ac
	ld c,a			;a6ad
la6aeh:
	ld d,a			;a6ae
	cpl			;a6af
	xor a			;a6b0
	ld a,a			;a6b1
	nop			;a6b2
	nop			;a6b3
	ld b,b			;a6b4
	nop			;a6b5
	ld bc,0e400h		;a6b6
	nop			;a6b9
	dec de			;a6ba
	ret po			;a6bb
	and 0f9h		;a6bc
	ld sp,hl		;a6be
	rst 38h			;a6bf
	rst 38h			;a6c0
	rst 38h			;a6c1
	nop			;a6c2
	nop			;a6c3
	nop			;a6c4
	nop			;a6c5
	nop			;a6c6
	nop			;a6c7
	inc bc			;a6c8
	nop			;a6c9
	ex af,af'		;a6ca
	nop			;a6cb
	add a,c			;a6cc
	nop			;a6cd
	ld e,(hl)		;a6ce
	add a,c			;a6cf
	ld h,b			;a6d0
	sbc a,a			;a6d1
	dec h			;a6d2
	nop			;a6d3
	nop			;a6d4
	nop			;a6d5
	ld (hl),000h		;a6d6
	ret			;a6d8
	ld (hl),0b6h		;a6d9
	ld a,a			;a6db
	ld l,(hl)		;a6dc
	rst 38h			;a6dd
	dec d			;a6de
	xor 06ah		;a6df
	add a,h			;a6e1
	add a,b			;a6e2
	nop			;a6e3
	ld a,h			;a6e4
	nop			;a6e5
	inc hl			;a6e6
	inc e			;a6e7
	jp 01c3ch		;a6e8
	ret po			;a6eb
	jr nz,la6aeh		;a6ec
	ret nz			;a6ee
	nop			;a6ef
	nop			;a6f0
	nop			;a6f1
	ld bc,08000h		;a6f2
	nop			;a6f5
	ld h,b			;a6f6
	add a,b			;a6f7
	and (hl)		;a6f8
	ld b,b			;a6f9
	ld (hl),c		;a6fa
	nop			;a6fb
	jr la6feh		;a6fc
la6feh:
	nop			;a6fe
	nop			;a6ff
	nop			;a700
	nop			;a701
	nop			;a702
	nop			;a703
	ld b,b			;a704
	nop			;a705
	ld bc,0e400h		;a706
	nop			;a709
	ld b,e			;a70a
	nop			;a70b
	ld (de),a		;a70c
	ld bc,0030dh		;a70d
	di			;a710
	rrca			;a711
	rst 38h			;a712
	rst 38h			;a713
	rst 38h			;a714
	rst 38h			;a715
	rst 38h			;a716
	rst 38h			;a717
	rst 28h			;a718
	rst 38h			;a719
	rst 38h			;a71a
	rst 38h			;a71b
	rst 38h			;a71c
	rst 38h			;a71d
	rst 38h			;a71e
	rst 38h			;a71f
	rst 38h			;a720
	rst 38h			;a721
	rst 38h			;a722
	rst 38h			;a723
	rst 38h			;a724
	rst 38h			;a725
	rst 38h			;a726
	rst 38h			;a727
	rst 38h			;a728
	rst 38h			;a729
	rst 28h			;a72a
	rst 18h			;a72b
	rst 38h			;a72c
	rst 38h			;a72d
	rst 38h			;a72e
	rst 38h			;a72f
	rst 38h			;a730
	rst 38h			;a731
	rst 38h			;a732
	rst 38h			;a733
	rst 38h			;a734
	rst 38h			;a735
	rst 38h			;a736
	rst 38h			;a737
	rst 38h			;a738
	rst 38h			;a739
	rst 38h			;a73a
	ei			;a73b
	rst 38h			;a73c
	rst 38h			;a73d
	rst 38h			;a73e
	rst 38h			;a73f
	rst 38h			;a740
	rst 38h			;a741
	rst 38h			;a742
	rst 38h			;a743
	rst 38h			;a744
	rst 38h			;a745
	rst 18h			;a746
	rst 18h			;a747
	rst 38h			;a748
	rst 38h			;a749
	rst 38h			;a74a
	rst 38h			;a74b
	rst 38h			;a74c
	rst 38h			;a74d
	rst 38h			;a74e
	rst 38h			;a74f
	rst 38h			;a750
	rst 38h			;a751
	rst 38h			;a752
	rst 38h			;a753
	rst 38h			;a754
	rst 38h			;a755
	rst 38h			;a756
	rst 38h			;a757
	rst 38h			;a758
	rst 38h			;a759
	rst 38h			;a75a
	rst 38h			;a75b
	cp a			;a75c
	cp a			;a75d
	defb 0fdh,0fdh,0ffh ;illegal sequence	;a75e
	rst 38h			;a761
	rst 38h			;a762
	rst 38h			;a763
	defb 0fdh,0bdh ;cp iyl	;a764
	rst 38h			;a766
	rst 38h			;a767
	rst 38h			;a768
	rst 38h			;a769
	rst 38h			;a76a
	rst 38h			;a76b
	rst 18h			;a76c
	rst 18h			;a76d
	rst 38h			;a76e
	rst 38h			;a76f
	defb 0fdh,0fdh,0ffh ;illegal sequence	;a770
	rst 38h			;a773
	rst 18h			;a774
	rst 18h			;a775
	rst 38h			;a776
	defb 0fdh,0ffh,0ffh ;illegal sequence	;a777
	rst 38h			;a77a
	rst 38h			;a77b
	rst 18h			;a77c
	rst 18h			;a77d
	rst 38h			;a77e
	rst 30h			;a77f
	rst 38h			;a780
	rst 38h			;a781
	rst 38h			;a782
	rst 38h			;a783
	rst 38h			;a784
	rst 38h			;a785
	rst 38h			;a786
	rst 38h			;a787
	rst 38h			;a788
	rst 38h			;a789
	rst 38h			;a78a
	rst 38h			;a78b
	rst 38h			;a78c
	rst 38h			;a78d
	rst 38h			;a78e
	rst 38h			;a78f
	rst 38h			;a790
	rst 38h			;a791
	nop			;a792
	ld l,h			;a793
	nop			;a794
	ld a,h			;a795
	ld bc,00278h		;a796
	ld (hl),b		;a799
	inc b			;a79a
	ld h,b			;a79b
	ex af,af'		;a79c
	ld b,a			;a79d
	djnz la7afh		;a79e
	nop			;a7a0
	nop			;a7a1
	nop			;a7a2
	add hl,de		;a7a3
	nop			;a7a4
	dec e			;a7a5
	ret nz			;a7a6
	rrca			;a7a7
	jr nz,la7b1h		;a7a8
	djnz la7afh		;a7aa
	ex af,af'		;a7ac
	pop af			;a7ad
	inc b			;a7ae
la7afh:
	ret m			;a7af
	nop			;a7b0
la7b1h:
	nop			;a7b1
	rst 38h			;a7b2
	nop			;a7b3
	nop			;a7b4
	rst 38h			;a7b5
	nop			;a7b6
	nop			;a7b7
	ret po			;a7b8
	nop			;a7b9
	nop			;a7ba
	pop af			;a7bb
	nop			;a7bc
	ld d,c			;a7bd
	nop			;a7be
	ld d,c			;a7bf
	nop			;a7c0
	pop af			;a7c1
	rst 38h			;a7c2
	nop			;a7c3
	nop			;a7c4
	rst 38h			;a7c5
	nop			;a7c6
	nop			;a7c7
	rst 38h			;a7c8
	nop			;a7c9
	nop			;a7ca
	rst 38h			;a7cb
	nop			;a7cc
	ld d,l			;a7cd
	nop			;a7ce
	ld d,l			;a7cf
	nop			;a7d0
	rst 38h			;a7d1
	nop			;a7d2
	rst 38h			;a7d3
	nop			;a7d4
	nop			;a7d5
	nop			;a7d6
	nop			;a7d7
	nop			;a7d8
	nop			;a7d9
	rst 38h			;a7da
	nop			;a7db
	nop			;a7dc
	nop			;a7dd
	nop			;a7de
	rst 38h			;a7df
	nop			;a7e0
	rst 38h			;a7e1
	nop			;a7e2
	nop			;a7e3
	rrca			;a7e4
	nop			;a7e5
	ld b,b			;a7e6
	ld c,020h		;a7e7
	ld b,a			;a7e9
	djnz la84fh		;a7ea
	ex af,af'		;a7ec
	ld h,c			;a7ed
	inc b			;a7ee
	ld h,b			;a7ef
	nop			;a7f0
	ld h,h			;a7f1
	nop			;a7f2
	nop			;a7f3
	ret m			;a7f4
	nop			;a7f5
	ld bc,00238h		;a7f6
	ld (hl),c		;a7f9
	inc b			;a7fa
	pop hl			;a7fb
	ex af,af'		;a7fc
	pop bc			;a7fd
	djnz la801h		;a7fe
	nop			;a800
la801h:
	ld de,0ff00h		;a801
	nop			;a804
	nop			;a805
	rst 38h			;a806
	nop			;a807
	nop			;a808
	rst 38h			;a809
	nop			;a80a
	nop			;a80b
	rst 38h			;a80c
	nop			;a80d
	nop			;a80e
	rst 38h			;a80f
	nop			;a810
	rst 38h			;a811
	ld hl,021c6h		;a812
	add a,021h		;a815
	add a,021h		;a817
	add a,021h		;a819
	add a,021h		;a81b
	add a,021h		;a81d
	add a,021h		;a81f
	add a,000h		;a821
	ld bc,00100h		;a823
	nop			;a826
	ld bc,00100h		;a827
	nop			;a82a
	ld bc,00100h		;a82b
	nop			;a82e
	ld bc,00100h		;a82f
	add a,b			;a832
	nop			;a833
	add a,b			;a834
	nop			;a835
	add a,b			;a836
	nop			;a837
	add a,b			;a838
	nop			;a839
	add a,b			;a83a
	nop			;a83b
	add a,b			;a83c
	nop			;a83d
	add a,b			;a83e
	nop			;a83f
	add a,b			;a840
	nop			;a841
	add a,h			;a842
	ld h,e			;a843
	add a,h			;a844
	ld h,e			;a845
	add a,h			;a846
	ld h,e			;a847
	add a,h			;a848
	ld h,e			;a849
	add a,h			;a84a
	ld h,e			;a84b
	add a,h			;a84c
	ld h,e			;a84d
	add a,h			;a84e
la84fh:
	ld h,e			;a84f
	add a,h			;a850
	ld h,e			;a851
	nop			;a852
	nop			;a853
	nop			;a854
	nop			;a855
	nop			;a856
	nop			;a857
	nop			;a858
	nop			;a859
	nop			;a85a
	nop			;a85b
	jr la866h		;a85c
	inc e			;a85e
	inc c			;a85f
	inc e			;a860
	inc c			;a861
	nop			;a862
	nop			;a863
	nop			;a864
	nop			;a865
la866h:
	nop			;a866
	nop			;a867
	jr nc,la87ah		;a868
	jr c,la884h		;a86a
	jr c,la886h		;a86c
	jr c,la888h		;a86e
	jr c,la88ah		;a870
	ld b,b			;a872
	ret nz			;a873
	ld b,b			;a874
	ret nz			;a875
	ld b,b			;a876
	ret nz			;a877
	ld b,b			;a878
	ret nz			;a879
la87ah:
	ld b,d			;a87a
	add a,042h		;a87b
	add a,002h		;a87d
	ld b,002h		;a87f
	ld b,000h		;a881
	nop			;a883
la884h:
	nop			;a884
	nop			;a885
la886h:
	nop			;a886
	nop			;a887
la888h:
	nop			;a888
	nop			;a889
la88ah:
	nop			;a88a
	nop			;a88b
	nop			;a88c
	nop			;a88d
	nop			;a88e
	nop			;a88f
	djnz la8c2h		;a890
	nop			;a892
	nop			;a893
	ld (bc),a		;a894
	ld bc,00102h		;a895
	ld (bc),a		;a898
	ld bc,00000h		;a899
	nop			;a89c
	nop			;a89d
	nop			;a89e
	nop			;a89f
	nop			;a8a0
	nop			;a8a1
	nop			;a8a2
	nop			;a8a3
	nop			;a8a4
	nop			;a8a5
	nop			;a8a6
	nop			;a8a7
	nop			;a8a8
	nop			;a8a9
	ld (bc),a		;a8aa
	ld b,002h		;a8ab
	ld b,002h		;a8ad
	ld b,002h		;a8af
	ld b,01ch		;a8b1
	inc c			;a8b3
	inc e			;a8b4
	inc c			;a8b5
	inc e			;a8b6
	inc c			;a8b7
	inc e			;a8b8
	inc c			;a8b9
	inc e			;a8ba
	inc c			;a8bb
	inc e			;a8bc
	inc b			;a8bd
	inc b			;a8be
	nop			;a8bf
	nop			;a8c0
	nop			;a8c1
la8c2h:
	jr c,la8dch		;a8c2
	jr c,la8deh		;a8c4
	jr c,la8d0h		;a8c6
	ex af,af'		;a8c8
	nop			;a8c9
	nop			;a8ca
	nop			;a8cb
	nop			;a8cc
	nop			;a8cd
	nop			;a8ce
	nop			;a8cf
la8d0h:
	nop			;a8d0
	nop			;a8d1
	djnz la904h		;a8d2
	ld (de),a		;a8d4
	ld sp,03112h		;a8d5
	ld (bc),a		;a8d8
	ld bc,00000h		;a8d9
la8dch:
	nop			;a8dc
	nop			;a8dd
la8deh:
	nop			;a8de
	nop			;a8df
	nop			;a8e0
	nop			;a8e1
	nop			;a8e2
	nop			;a8e3
	nop			;a8e4
	nop			;a8e5
	nop			;a8e6
	nop			;a8e7
	jr nz,la8fah		;a8e8
	nop			;a8ea
	nop			;a8eb
	nop			;a8ec
	nop			;a8ed
	nop			;a8ee
sub_a8efh:
	nop			;a8ef
	nop			;a8f0
	nop			;a8f1
	nop			;a8f2
	nop			;a8f3
	ld b,000h		;a8f4
	ld b,000h		;a8f6
	ld b,000h		;a8f8
la8fah:
	ld b,000h		;a8fa
	ld b,000h		;a8fc
	ld b,000h		;a8fe
	ld b,000h		;a900
	nop			;a902
	nop			;a903
la904h:
	nop			;a904
	nop			;a905
	nop			;a906
	nop			;a907
	nop			;a908
	nop			;a909
	nop			;a90a
	nop			;a90b
	jr nc,la90eh		;a90c
la90eh:
	jr nc,la910h		;a90e
la910h:
	jr nc,la912h		;a910
la912h:
	ex af,af'		;a912
	ex af,af'		;a913
	add hl,bc		;a914
	add hl,bc		;a915
	ld bc,00001h		;a916
	nop			;a919
	nop			;a91a
	nop			;a91b
	nop			;a91c
	nop			;a91d
	nop			;a91e
	nop			;a91f
	nop			;a920
	nop			;a921
	nop			;a922
	nop			;a923
	nop			;a924
	nop			;a925
	nop			;a926
	jr nz,la929h		;a927
la929h:
	nop			;a929
	nop			;a92a
	nop			;a92b
	ret po			;a92c
	ret po			;a92d
	ret po			;a92e
	ld a,b			;a92f
	sbc a,b			;a930
	nop			;a931
	rst 38h			;a932
	rst 38h			;a933
	halt			;a934
	sbc a,l			;a935
	dec hl			;a936
	add a,h			;a937
	ei			;a938
	ld a,c			;a939
	inc l			;a93a
	ld d,e			;a93b
	ld d,e			;a93c
	nop			;a93d
	ccf			;a93e
	ccf			;a93f
	nop			;a940
	nop			;a941
	sub b			;a942
	nop			;a943
	nop			;a944
	nop			;a945
	nop			;a946
	nop			;a947
	nop			;a948
	nop			;a949
	nop			;a94a
	nop			;a94b
	nop			;a94c
	nop			;a94d
	nop			;a94e
	nop			;a94f
	nop			;a950
	nop			;a951
	ld b,c			;a952
	cp a			;a953
	cp h			;a954
	nop			;a955
	rst 38h			;a956
	ei			;a957
	nop			;a958
	ld b,006h		;a959
	nop			;a95b
	nop			;a95c
	nop			;a95d
	nop			;a95e
	nop			;a95f
	nop			;a960
	nop			;a961
	nop			;a962
	nop			;a963
	nop			;a964
	nop			;a965
	nop			;a966
	nop			;a967
	nop			;a968
	nop			;a969
	jr nz,$+1		;a96a
	ld c,a			;a96c
	nop			;a96d
	ret m			;a96e
	cp b			;a96f
	jr nz,la9e2h		;a970
	ld d,b			;a972
	nop			;a973
	jr nc,$+50		;a974
	nop			;a976
	nop			;a977
	nop			;a978
	nop			;a979
	nop			;a97a
	nop			;a97b
	nop			;a97c
	nop			;a97d
	nop			;a97e
	nop			;a97f
	nop			;a980
	nop			;a981
	nop			;a982
	nop			;a983
	nop			;a984
	nop			;a985
	nop			;a986
	nop			;a987
	djnz la98ah		;a988
la98ah:
	nop			;a98a
	jr c,la99dh		;a98b
	nop			;a98d
	djnz la990h		;a98e
la990h:
	nop			;a990
	nop			;a991
	nop			;a992
	nop			;a993
	nop			;a994
	nop			;a995
	nop			;a996
	nop			;a997
	nop			;a998
	nop			;a999
	nop			;a99a
	nop			;a99b
	nop			;a99c
la99dh:
	inc h			;a99d
	jr la9a0h		;a99e
la9a0h:
	ld e,d			;a9a0
	inc a			;a9a1
	nop			;a9a2
	inc h			;a9a3
	ld h,(hl)		;a9a4
	jr la9cbh		;a9a5
	ld h,(hl)		;a9a7
	jr laa04h		;a9a8
	inc a			;a9aa
	nop			;a9ab
	inc h			;a9ac
	jr la9afh		;a9ad
la9afh:
	nop			;a9af
	nop			;a9b0
	nop			;a9b1
	inc a			;a9b2
	inc a			;a9b3
	nop			;a9b4
	ld b,d			;a9b5
	ld b,d			;a9b6
	inc a			;a9b7
	add a,c			;a9b8
	add a,c			;a9b9
	ld a,(hl)		;a9ba
	add a,c			;a9bb
	add a,c			;a9bc
	ld a,(hl)		;a9bd
	add a,c			;a9be
	add a,c			;a9bf
	ld a,(hl)		;a9c0
	add a,c			;a9c1
	add a,c			;a9c2
	ld a,(hl)		;a9c3
	ld b,d			;a9c4
	ld b,d			;a9c5
	inc a			;a9c6
	inc a			;a9c7
	inc a			;a9c8
	nop			;a9c9
	inc a			;a9ca
la9cbh:
	nop			;a9cb
	inc a			;a9cc
	ld a,(hl)		;a9cd
	nop			;a9ce
	ld h,(hl)		;a9cf
	rst 38h			;a9d0
	nop			;a9d1
	jp 018e7h		;a9d2
	add a,c			;a9d5
	rst 20h			;a9d6
	jr $-125		;a9d7
	rst 38h			;a9d9
	nop			;a9da
	jp 0007eh		;a9db
	ld h,(hl)		;a9de
	inc a			;a9df
	nop			;a9e0
	inc a			;a9e1
la9e2h:
	nop			;a9e2
	nop			;a9e3
	nop			;a9e4
	jr la9e7h		;a9e5
la9e7h:
	nop			;a9e7
	inc a			;a9e8
	jr la9ebh		;a9e9
la9ebh:
	ld h,(hl)		;a9eb
	inc h			;a9ec
	jr laa55h		;a9ed
	inc h			;a9ef
	jr laa2eh		;a9f0
	jr la9f4h		;a9f2
la9f4h:
	jr la9f6h		;a9f4
la9f6h:
	nop			;a9f6
	nop			;a9f7
	nop			;a9f8
	nop			;a9f9
	nop			;a9fa
	nop			;a9fb
	nop			;a9fc
	jr laa17h		;a9fd
	nop			;a9ff
	inc h			;aa00
	inc h			;aa01
	jr laa46h		;aa02
laa04h:
	ld b,d			;aa04
	inc a			;aa05
	ld b,d			;aa06
	ld b,d			;aa07
	inc a			;aa08
	inc h			;aa09
	inc h			;aa0a
	jr $+26			;aa0b
	jr laa0fh		;aa0d
laa0fh:
	nop			;aa0f
	nop			;aa10
	nop			;aa11
	nop			;aa12
	nop			;aa13
	nop			;aa14
	jr laa17h		;aa15
laa17h:
	jr laa55h		;aa17
	nop			;aa19
	inc h			;aa1a
	ld h,(hl)		;aa1b
	jr laa60h		;aa1c
	ld h,(hl)		;aa1e
	jr laa63h		;aa1f
	inc a			;aa21
	nop			;aa22
	inc h			;aa23
	jr laa26h		;aa24
laa26h:
	jr laa28h		;aa26
laa28h:
	nop			;aa28
	nop			;aa29
	nop			;aa2a
	nop			;aa2b
	nop			;aa2c
	nop			;aa2d
laa2eh:
	nop			;aa2e
	nop			;aa2f
	nop			;aa30
	nop			;aa31
	nop			;aa32
	nop			;aa33
	nop			;aa34
	nop			;aa35
	nop			;aa36
	nop			;aa37
	nop			;aa38
	ld bc,00000h		;aa39
	inc bc			;aa3c
	ld bc,00200h		;aa3d
	ld bc,00000h		;aa40
	nop			;aa43
	nop			;aa44
	nop			;aa45
laa46h:
	nop			;aa46
	nop			;aa47
	nop			;aa48
	nop			;aa49
	nop			;aa4a
	nop			;aa4b
	nop			;aa4c
	nop			;aa4d
	nop			;aa4e
	nop			;aa4f
	nop			;aa50
	add a,b			;aa51
	nop			;aa52
	nop			;aa53
	ret nz			;aa54
laa55h:
	add a,b			;aa55
	nop			;aa56
	ld b,b			;aa57
	add a,b			;aa58
	nop			;aa59
	ld bc,00000h		;aa5a
	nop			;aa5d
	nop			;aa5e
	nop			;aa5f
laa60h:
	nop			;aa60
	nop			;aa61
	nop			;aa62
laa63h:
	nop			;aa63
	nop			;aa64
	nop			;aa65
	nop			;aa66
	nop			;aa67
	nop			;aa68
	nop			;aa69
	nop			;aa6a
	nop			;aa6b
	nop			;aa6c
	nop			;aa6d
	nop			;aa6e
	nop			;aa6f
	nop			;aa70
	nop			;aa71
	add a,b			;aa72
	nop			;aa73
	nop			;aa74
	nop			;aa75
	nop			;aa76
	nop			;aa77
	nop			;aa78
	nop			;aa79
	nop			;aa7a
	nop			;aa7b
	nop			;aa7c
	nop			;aa7d
	nop			;aa7e
laa7fh:
	nop			;aa7f
	nop			;aa80
	nop			;aa81
	nop			;aa82
	nop			;aa83
	nop			;aa84
	nop			;aa85
	nop			;aa86
	nop			;aa87
	nop			;aa88
	nop			;aa89
	nop			;aa8a
	nop			;aa8b
	nop			;aa8c
	nop			;aa8d
	nop			;aa8e
	nop			;aa8f
laa90h:
	nop			;aa90
	nop			;aa91
laa92h:
	nop			;aa92
	nop			;aa93
	nop			;aa94
	nop			;aa95
	nop			;aa96
	nop			;aa97
	nop			;aa98
	nop			;aa99
	nop			;aa9a
	nop			;aa9b
	nop			;aa9c
	nop			;aa9d
	nop			;aa9e
	nop			;aa9f
	nop			;aaa0
	nop			;aaa1
	add a,b			;aaa2
	add a,b			;aaa3
laaa4h:
	add a,b			;aaa4
	add a,b			;aaa5
	add a,b			;aaa6
	add a,b			;aaa7
	ld b,b			;aaa8
	ret nz			;aaa9
	ld b,b			;aaaa
	ret nz			;aaab
	ld b,b			;aaac
	ret nz			;aaad
	jr nz,laa90h		;aaae
	jr nz,laa92h		;aab0
	djnz laaa4h		;aab2
	sub b			;aab4
	ld (hl),b		;aab5
	adc a,b			;aab6
	ld a,b			;aab7
	ret z			;aab8
	jr c,laa7fh		;aab9
	inc a			;aabb
laabch:
	call po,0f21ch		;aabc
	ld c,0f2h		;aabf
	adc a,(hl)		;aac1
	ld sp,hl		;aac2
	add a,a			;aac3
	call m,0fcc3h		;aac4
	ex (sp),hl		;aac7
	cp 0f1h			;aac8
	rst 38h			;aaca
	ret m			;aacb
	rst 38h			;aacc
	ret m			;aacd
	rst 38h			;aace
	ld a,h			;aacf
	rst 38h			;aad0
	ld a,000h		;aad1
	nop			;aad3
	add a,b			;aad4
	add a,b			;aad5
	add a,b			;aad6
	add a,b			;aad7
	ld b,b			;aad8
	ret nz			;aad9
	jr nz,laabch		;aada
	sub b			;aadc
	ld (hl),b		;aadd
	ret z			;aade
	jr c,$-26		;aadf
	inc e			;aae1
	rst 38h			;aae2
	rra			;aae3
	rst 38h			;aae4
	rrca			;aae5
	rst 38h			;aae6
	rlca			;aae7
	rst 38h			;aae8
	inc bc			;aae9
	rst 38h			;aaea
	ld bc,028f7h		;aaeb
	di			;aaee
	inc l			;aaef
	di			;aaf0
	inc l			;aaf1
	jp p,0f90eh		;aaf2
laaf5h:
	add a,a			;aaf5
	call m,0fec3h		;aaf6
	pop hl			;aaf9
	rst 38h			;aafa
	ret p			;aafb
	rst 38h			;aafc
	ret m			;aafd
	rst 38h			;aafe
	inc a			;aaff
	rst 38h			;ab00
	ld e,000h		;ab01
	nop			;ab03
	nop			;ab04
	nop			;ab05
	add a,b			;ab06
	add a,b			;ab07
	ld b,b			;ab08
	ret nz			;ab09
	jr nz,$-30		;ab0a
	sub b			;ab0c
	ld (hl),b		;ab0d
	ret z			;ab0e
	jr c,laaf5h		;ab0f
	inc e			;ab11
	di			;ab12
	inc l			;ab13
	di			;ab14
	inc l			;ab15
	di			;ab16
	inc l			;ab17
	di			;ab18
	inc l			;ab19
	di			;ab1a
	inc l			;ab1b
	ei			;ab1c
	inc h			;ab1d
	rst 38h			;ab1e
	jr $+1			;ab1f
	add a,h			;ab21
	rst 38h			;ab22
	rrca			;ab23
	rst 38h			;ab24
	rlca			;ab25
	rst 38h			;ab26
	ld bc,050efh		;ab27
lab2ah:
	rst 20h			;ab2a
	ld e,b			;ab2b
	rst 20h			;ab2c
	ld e,b			;ab2d
	rst 20h			;ab2e
	ld e,b			;ab2f
	rst 20h			;ab30
	ld e,b			;ab31
	jp p,0f90eh		;ab32
	add a,a			;ab35
	call m,0fee3h		;ab36
	pop af			;ab39
	rst 38h			;ab3a
	inc a			;ab3b
	rst 38h			;ab3c
	ld c,0ffh		;ab3d
	rlca			;ab3f
	rst 38h			;ab40
	inc bc			;ab41
	nop			;ab42
	nop			;ab43
	nop			;ab44
	nop			;ab45
	ret nz			;ab46
	ret nz			;ab47
	jr nz,lab2ah		;ab48
	sbc a,b			;ab4a
	ld a,b			;ab4b
	call nz,0f33ch		;ab4c
	rrca			;ab4f
	ret m			;ab50
	rst 0			;ab51
	rst 38h			;ab52
	ret nz			;ab53
	rst 38h			;ab54
	ret po			;ab55
	ld a,a			;ab56
	ret m			;ab57
	cp a			;ab58
	ld a,h			;ab59
	rst 8			;ab5a
	ccf			;ab5b
	rst 30h			;ab5c
	rrca			;ab5d
	ld sp,hl		;ab5e
	add a,a			;ab5f
	cp 0e1h			;ab60
	rst 20h			;ab62
	ld e,c			;ab63
	rst 20h			;ab64
	ld e,c			;ab65
	rst 30h			;ab66
	ld c,c			;ab67
	rst 38h			;ab68
	ld sp,009ffh		;ab69
	rst 38h			;ab6c
	add a,c			;ab6d
	rst 38h			;ab6e
	ret po			;ab6f
	ld a,a			;ab70
	ret m			;ab71
	cp a			;ab72
	ld b,b			;ab73
	cp a			;ab74
	ld b,b			;ab75
	cp a			;ab76
	ld b,b			;ab77
	cp a			;ab78
	ld b,b			;ab79
	cp l			;ab7a
	ld c,d			;ab7b
	cp l			;ab7c
	ld c,d			;ab7d
	defb 0fdh,0cah,0fdh ;illegal sequence	;ab7e
	ld a,(bc)		;ab81
	cp 0f1h			;ab82
lab84h:
	rst 38h			;ab84
	ld a,h			;ab85
	rst 38h			;ab86
	ld a,a			;ab87
	di			;ab88
	ld a,a			;ab89
	call m,0ff73h		;ab8a
	inc a			;ab8d
	rst 38h			;ab8e
	rlca			;ab8f
	rst 28h			;ab90
	ld d,c			;ab91
	jr nc,lab84h		;ab92
	adc a,(hl)		;ab94
	ld a,(hl)		;ab95
	pop hl			;ab96
	rra			;ab97
	call m,0ffc3h		;ab98
	ret m			;ab9b
	ccf			;ab9c
	rst 38h			;ab9d
	rst 8			;ab9e
	ccf			;ab9f
	rst 38h			;aba0
	call pe,0e0ffh		;aba1
	defb 0fdh,06ah ;ld iyl,d	;aba4
	defb 0fdh,06ah ;ld iyl,d	;aba6
	defb 0fdh,06ah ;ld iyl,d	;aba8
	defb 0fdh,06ah ;ld iyl,d	;abaa
	defb 0fdh,06ah ;ld iyl,d	;abac
	defb 0fdh,06ah ;ld iyl,d	;abae
	defb 0fdh,06ah ;ld iyl,d	;abb0
	sbc a,a			;abb2
	ld a,(hl)		;abb3
	rst 20h			;abb4
	rra			;abb5
	ei			;abb6
	rlca			;abb7
	cp 007h			;abb8
	cp 007h			;abba
	xor 057h		;abbc
	xor 057h		;abbe
	xor 057h		;abc0
labc2h:
	defb 0fdh,00ah,0ffh ;illegal sequence	;abc2
	add a,(hl)		;abc5
	rst 38h			;abc6
	ret po			;abc7
	ld a,a			;abc8
	call m,07f8fh		;abc9
	di			;abcc
	rrca			;abcd
	call m,0ff03h		;abce
	djnz labc2h		;abd1
	ld d,b			;abd3
	xor 055h		;abd4
	xor 055h		;abd6
	cp 035h			;abd8
	rst 38h			;abda
	add a,e			;abdb
	rst 38h			;abdc
	ret p			;abdd
	ld a,a			;abde
	rst 38h			;abdf
	adc a,(hl)		;abe0
	ld a,(hl)		;abe1
	scf			;abe2
	ex af,af'		;abe3
	inc h			;abe4
	scf			;abe5
	ex af,af'		;abe6
	inc h			;abe7
	scf			;abe8
	ex af,af'		;abe9
	inc h			;abea
	scf			;abeb
	ex af,af'		;abec
	inc h			;abed
	scf			;abee
	ex af,af'		;abef
	inc h			;abf0
	scf			;abf1
	ex af,af'		;abf2
	inc h			;abf3
	scf			;abf4
	ex af,af'		;abf5
	inc h			;abf6
	scf			;abf7
	ex af,af'		;abf8
	inc h			;abf9
	ld a,a			;abfa
	ret nz			;abfb
	jr nz,lac71h		;abfc
	rst 8			;abfe
	jr nz,lac74h		;abff
	rst 8			;ac01
	jr nz,lac77h		;ac02
	rst 8			;ac04
	jr nz,lac7ah		;ac05
	rst 8			;ac07
	jr nz,lac7dh		;ac08
	rst 8			;ac0a
	jr nz,lac80h		;ac0b
	rst 8			;ac0d
	jr nz,lac88h		;ac0e
	rst 0			;ac10
	jr nz,$+1		;ac11
	nop			;ac13
	inc b			;ac14
	ld a,h			;ac15
	ld a,e			;ac16
	add a,b			;ac17
	ld a,b			;ac18
	ld a,b			;ac19
	add a,a			;ac1a
	ld a,a			;ac1b
	ld a,a			;ac1c
	add a,b			;ac1d
	ld a,a			;ac1e
	ld a,a			;ac1f
	add a,b			;ac20
	ld a,a			;ac21
	ld a,a			;ac22
	add a,b			;ac23
	ccf			;ac24
	ccf			;ac25
	ret nz			;ac26
	ret nz			;ac27
	rst 38h			;ac28
	nop			;ac29
	ret p			;ac2a
	nop			;ac2b
	nop			;ac2c
	nop			;ac2d
	add a,b			;ac2e
	nop			;ac2f
	nop			;ac30
	nop			;ac31
	nop			;ac32
	nop			;ac33
	nop			;ac34
	nop			;ac35
	nop			;ac36
	nop			;ac37
	nop			;ac38
	nop			;ac39
	nop			;ac3a
	rlca			;ac3b
	nop			;ac3c
	nop			;ac3d
	inc c			;ac3e
	inc bc			;ac3f
	nop			;ac40
	inc de			;ac41
lac42h:
	rrca			;ac42
	nop			;ac43
	inc (hl)		;ac44
	inc c			;ac45
	inc bc			;ac46
	jr z,lac61h		;ac47
	rlca			;ac49
	nop			;ac4a
	nop			;ac4b
	nop			;ac4c
	nop			;ac4d
	nop			;ac4e
	nop			;ac4f
	nop			;ac50
	nop			;ac51
	nop			;ac52
	ret nz			;ac53
	nop			;ac54
	nop			;ac55
	ld h,b			;ac56
	add a,b			;ac57
	nop			;ac58
	sub b			;ac59
	ret po			;ac5a
	nop			;ac5b
	ld e,b			;ac5c
	ld h,b			;ac5d
	add a,b			;ac5e
	jr z,lac91h		;ac5f
lac61h:
	ret nz			;ac61
	nop			;ac62
	nop			;ac63
	nop			;ac64
	rrca			;ac65
	nop			;ac66
	nop			;ac67
	jr c,lac71h		;ac68
	nop			;ac6a
	ld h,a			;ac6b
	rra			;ac6c
	nop			;ac6d
	ld e,h			;ac6e
	inc a			;ac6f
	inc bc			;ac70
lac71h:
	ret nc			;ac71
	jr nc,lac83h		;ac72
lac74h:
	or b			;ac74
	ld (hl),b		;ac75
	rrca			;ac76
lac77h:
	and b			;ac77
	ld h,b			;ac78
	rra			;ac79
lac7ah:
	nop			;ac7a
	nop			;ac7b
	nop			;ac7c
lac7dh:
	ret po			;ac7d
	nop			;ac7e
	nop			;ac7f
lac80h:
	jr c,lac42h		;ac80
	nop			;ac82
lac83h:
	call z,000f0h		;ac83
	ld (hl),h		;ac86
	ld a,b			;ac87
lac88h:
	add a,b			;ac88
	ld d,018h		;ac89
	ret po			;ac8b
	ld a,(de)		;ac8c
	inc e			;ac8d
	ret po			;ac8e
	ld a,(bc)		;ac8f
	inc c			;ac90
lac91h:
	ret p			;ac91
	nop			;ac92
	nop			;ac93
lac94h:
	nop			;ac94
	rrca			;ac95
	rrca			;ac96
	nop			;ac97
	jr nc,laccah		;ac98
	rrca			;ac9a
	ld h,b			;ac9b
	ld h,b			;ac9c
	rra			;ac9d
	ld b,b			;ac9e
	ld b,b			;ac9f
	ccf			;aca0
	add a,b			;aca1
	add a,b			;aca2
	ld a,a			;aca3
	add a,b			;aca4
	add a,b			;aca5
	ld a,a			;aca6
	add a,b			;aca7
	add a,b			;aca8
	ld a,a			;aca9
	nop			;acaa
	nop			;acab
	nop			;acac
	ret po			;acad
	ret po			;acae
	nop			;acaf
	jr laccah		;acb0
	ret po			;acb2
	inc c			;acb3
	inc c			;acb4
	ret p			;acb5
	inc b			;acb6
	inc b			;acb7
	ret m			;acb8
	ld (bc),a		;acb9
	ld (bc),a		;acba
	call m,00202h		;acbb
	call m,00202h		;acbe
	call m,00000h		;acc1
	nop			;acc4
	nop			;acc5
	nop			;acc6
	nop			;acc7
	nop			;acc8
	nop			;acc9
laccah:
	nop			;acca
	nop			;accb
laccch:
	nop			;accc
	rlca			;accd
	inc bc			;acce
	nop			;accf
	inc c			;acd0
	rrca			;acd1
	nop			;acd2
	djnz lace1h		;acd3
	inc bc			;acd5
	jr nc,lacf1h		;acd6
	rlca			;acd8
	jr nz,lacdbh		;acd9
lacdbh:
	nop			;acdb
	nop			;acdc
	nop			;acdd
	nop			;acde
	nop			;acdf
	nop			;ace0
lace1h:
	nop			;ace1
	nop			;ace2
	nop			;ace3
	nop			;ace4
	ret nz			;ace5
	add a,b			;ace6
	nop			;ace7
	ld h,b			;ace8
	ret po			;ace9
	nop			;acea
	djnz lad4dh		;aceb
	add a,b			;aced
	jr lad20h		;acee
	ret nz			;acf0
lacf1h:
	ex af,af'		;acf1
	add hl,de		;acf2
	rlca			;acf3
	jr nz,lad02h		;acf4
	inc bc			;acf6
	jr nc,lad08h		;acf7
	nop			;acf9
	djnz lacffh		;acfa
	nop			;acfc
	inc c			;acfd
	nop			;acfe
lacffh:
	nop			;acff
	rlca			;ad00
	nop			;ad01
lad02h:
	nop			;ad02
	nop			;ad03
	nop			;ad04
	nop			;ad05
	nop			;ad06
	nop			;ad07
lad08h:
	nop			;ad08
	nop			;ad09
	jr nc,laccch		;ad0a
	ex af,af'		;ad0c
	ld h,b			;ad0d
	add a,b			;ad0e
	jr lacf1h		;ad0f
	nop			;ad11
	djnz lac94h		;ad12
	nop			;ad14
	ld h,b			;ad15
	nop			;ad16
	nop			;ad17
	ret nz			;ad18
	nop			;ad19
	nop			;ad1a
	nop			;ad1b
	nop			;ad1c
	nop			;ad1d
	nop			;ad1e
	nop			;ad1f
lad20h:
	nop			;ad20
	nop			;ad21
	nop			;ad22
	nop			;ad23
	nop			;ad24
	nop			;ad25
	nop			;ad26
	nop			;ad27
	nop			;ad28
	nop			;ad29
	nop			;ad2a
	nop			;ad2b
	nop			;ad2c
	nop			;ad2d
	nop			;ad2e
	nop			;ad2f
	nop			;ad30
	nop			;ad31
	nop			;ad32
	nop			;ad33
	nop			;ad34
	nop			;ad35
	nop			;ad36
	nop			;ad37
	nop			;ad38
	rst 38h			;ad39
	nop			;ad3a
	nop			;ad3b
	rrca			;ad3c
	adc a,(hl)		;ad3d
	nop			;ad3e
	nop			;ad3f
	rrca			;ad40
	ld a,b			;ad41
	nop			;ad42
	nop			;ad43
	nop			;ad44
	nop			;ad45
	nop			;ad46
	nop			;ad47
	nop			;ad48
	nop			;ad49
	nop			;ad4a
	nop			;ad4b
	nop			;ad4c
lad4dh:
	nop			;ad4d
	nop			;ad4e
	nop			;ad4f
	nop			;ad50
	nop			;ad51
	nop			;ad52
	nop			;ad53
	nop			;ad54
	nop			;ad55
	rst 38h			;ad56
	rst 38h			;ad57
	rst 38h			;ad58
	rst 38h			;ad59
	rst 30h			;ad5a
	adc a,b			;ad5b
	adc a,b			;ad5c
	adc a,b			;ad5d
	or 066h			;ad5e
	ld h,(hl)		;ad60
	ld h,(hl)		;ad61
	nop			;ad62
	nop			;ad63
	nop			;ad64
	nop			;ad65
	nop			;ad66
	nop			;ad67
	nop			;ad68
	nop			;ad69
	nop			;ad6a
	nop			;ad6b
	nop			;ad6c
	nop			;ad6d
	nop			;ad6e
	nop			;ad6f
	nop			;ad70
	nop			;ad71
	nop			;ad72
	nop			;ad73
	nop			;ad74
	nop			;ad75
	rst 38h			;ad76
	rst 38h			;ad77
	nop			;ad78
	nop			;ad79
	adc a,b			;ad7a
	adc a,b			;ad7b
	rst 38h			;ad7c
	rst 38h			;ad7d
	ld h,(hl)		;ad7e
	ld h,(hl)		;ad7f
	ld (hl),a		;ad80
	ret p			;ad81
	nop			;ad82
	nop			;ad83
	nop			;ad84
	nop			;ad85
	nop			;ad86
	nop			;ad87
	nop			;ad88
	nop			;ad89
	nop			;ad8a
	nop			;ad8b
	nop			;ad8c
	add hl,bc		;ad8d
	nop			;ad8e
	nop			;ad8f
	nop			;ad90
	nop			;ad91
	nop			;ad92
	rrca			;ad93
	rst 38h			;ad94
	rst 38h			;ad95
	nop			;ad96
	rst 38h			;ad97
	adc a,b			;ad98
	adc a,b			;ad99
	rst 38h			;ad9a
	rst 28h			;ad9b
	rst 30h			;ad9c
	ld (hl),a		;ad9d
	ld (hl),a		;ad9e
	nop			;ad9f
	rst 38h			;ada0
	rst 38h			;ada1
	nop			;ada2
	nop			;ada3
	nop			;ada4
	nop			;ada5
	nop			;ada6
	nop			;ada7
	nop			;ada8
	nop			;ada9
	nop			;adaa
	nop			;adab
	nop			;adac
	nop			;adad
	add hl,bc		;adae
	nop			;adaf
	nop			;adb0
	nop			;adb1
	nop			;adb2
	nop			;adb3
	nop			;adb4
	nop			;adb5
	rst 38h			;adb6
	ret p			;adb7
	nop			;adb8
	nop			;adb9
	ld a,a			;adba
	rst 38h			;adbb
	ret p			;adbc
	nop			;adbd
	rst 30h			;adbe
	adc a,b			;adbf
	adc a,a			;adc0
	nop			;adc1
	nop			;adc2
	nop			;adc3
	rrca			;adc4
	rst 38h			;adc5
	nop			;adc6
	nop			;adc7
	rrca			;adc8
	ld a,(hl)		;adc9
	nop			;adca
	nop			;adcb
	rrca			;adcc
	ld a,b			;adcd
	nop			;adce
	nop			;adcf
	rrca			;add0
	ld a,b			;add1
	nop			;add2
	nop			;add3
	rrca			;add4
	ld a,b			;add5
	nop			;add6
	nop			;add7
	rrca			;add8
	ld a,b			;add9
	nop			;adda
	nop			;addb
	rrca			;addc
	ld a,b			;addd
	nop			;adde
	nop			;addf
	adc a,a			;ade0
	rst 38h			;ade1
	ld l,a			;ade2
	rst 38h			;ade3
	rst 38h			;ade4
	rst 38h			;ade5
	ret m			;ade6
	cp 0eeh			;ade7
	xor 0f7h		;ade9
	ret m			;adeb
	adc a,b			;adec
	adc a,b			;aded
	rst 30h			;adee
	ret m			;adef
	adc a,b			;adf0
	rst 30h			;adf1
	rst 30h			;adf2
	ret m			;adf3
	ld a,b			;adf4
	rst 38h			;adf5
	rst 30h			;adf6
	ret m			;adf7
	adc a,b			;adf8
	adc a,b			;adf9
	rst 30h			;adfa
	rst 38h			;adfb
	rst 38h			;adfc
	rst 38h			;adfd
	rst 38h			;adfe
	rst 30h			;adff
	adc a,b			;ae00
	add a,a			;ae01
	rst 38h			;ae02
	rst 38h			;ae03
	rst 38h			;ae04
	ret m			;ae05
	xor 0e6h		;ae06
	xor 0efh		;ae08
	adc a,b			;ae0a
	adc a,b			;ae0b
	ld l,b			;ae0c
	adc a,b			;ae0d
	adc a,b			;ae0e
	ld l,b			;ae0f
	ld l,b			;ae10
	adc a,a			;ae11
	rst 38h			;ae12
	ret m			;ae13
	ld l,b			;ae14
	rst 38h			;ae15
	adc a,b			;ae16
	adc a,b			;ae17
	ld l,a			;ae18
	rst 30h			;ae19
	rst 38h			;ae1a
	rst 38h			;ae1b
	rst 38h			;ae1c
	rst 30h			;ae1d
	ret m			;ae1e
	adc a,b			;ae1f
	rst 38h			;ae20
	or 088h			;ae21
	adc a,b			;ae23
	ld (hl),a		;ae24
	ld (hl),a		;ae25
	ld (hl),a		;ae26
	ld (hl),a		;ae27
	adc a,(hl)		;ae28
	xor 0f6h		;ae29
	ld (hl),a		;ae2b
	adc a,b			;ae2c
	adc a,b			;ae2d
	rst 38h			;ae2e
	rst 38h			;ae2f
	rst 38h			;ae30
	ld h,a			;ae31
	ld (hl),a		;ae32
	ld a,a			;ae33
	rst 38h			;ae34
	rst 38h			;ae35
	adc a,(hl)		;ae36
	add a,a			;ae37
	rst 30h			;ae38
	adc a,b			;ae39
	adc a,b			;ae3a
	add a,a			;ae3b
	rst 38h			;ae3c
	rst 38h			;ae3d
	ld (hl),a		;ae3e
	halt			;ae3f
	cp 088h			;ae40
	ld a,a			;ae42
	ld (hl),a		;ae43
	ld a,a			;ae44
	ret p			;ae45
	xor 0ffh		;ae46
	rst 30h			;ae48
	ld a,a			;ae49
	adc a,b			;ae4a
	adc a,b			;ae4b
	cp 08fh			;ae4c
	ld (hl),a		;ae4e
	ld (hl),a		;ae4f
	rst 30h			;ae50
	ld a,a			;ae51
	rst 38h			;ae52
	rst 38h			;ae53
	ld b,06fh		;ae54
	add a,a			;ae56
	ld a,a			;ae57
	rst 38h			;ae58
	ret p			;ae59
	rst 38h			;ae5a
	rst 38h			;ae5b
	ret p			;ae5c
	nop			;ae5d
	adc a,b			;ae5e
	add a,a			;ae5f
	ret p			;ae60
	nop			;ae61
	nop			;ae62
	sbc a,b			;ae63
	ld (hl),b		;ae64
	rst 30h			;ae65
	nop			;ae66
	nop			;ae67
	nop			;ae68
	rrca			;ae69
	nop			;ae6a
	nop			;ae6b
	nop			;ae6c
	nop			;ae6d
	nop			;ae6e
	nop			;ae6f
	nop			;ae70
	sbc a,b			;ae71
	nop			;ae72
	nop			;ae73
	nop			;ae74
	nop			;ae75
	nop			;ae76
	nop			;ae77
	nop			;ae78
	nop			;ae79
	nop			;ae7a
	nop			;ae7b
	nop			;ae7c
	nop			;ae7d
	nop			;ae7e
	nop			;ae7f
	nop			;ae80
	nop			;ae81
	add a,b			;ae82
	ld b,066h		;ae83
	ld h,(hl)		;ae85
	or 08fh			;ae86
	rst 38h			;ae88
	rst 38h			;ae89
	sub b			;ae8a
	nop			;ae8b
	nop			;ae8c
	nop			;ae8d
	nop			;ae8e
	nop			;ae8f
	nop			;ae90
	nop			;ae91
	nop			;ae92
	nop			;ae93
	nop			;ae94
	nop			;ae95
	nop			;ae96
	nop			;ae97
	nop			;ae98
	nop			;ae99
	nop			;ae9a
	nop			;ae9b
	nop			;ae9c
	nop			;ae9d
	nop			;ae9e
	nop			;ae9f
	nop			;aea0
	nop			;aea1
	or 06fh			;aea2
	rrca			;aea4
	rst 38h			;aea5
	rst 38h			;aea6
	rst 30h			;aea7
	rst 38h			;aea8
	rst 38h			;aea9
	nop			;aeaa
	rst 38h			;aeab
	rst 38h			;aeac
	ld l,b			;aead
	nop			;aeae
	nop			;aeaf
	nop			;aeb0
	rst 38h			;aeb1
	nop			;aeb2
	nop			;aeb3
	nop			;aeb4
	nop			;aeb5
	nop			;aeb6
	nop			;aeb7
	nop			;aeb8
	nop			;aeb9
	nop			;aeba
	nop			;aebb
	nop			;aebc
	nop			;aebd
	nop			;aebe
	nop			;aebf
	nop			;aec0
	nop			;aec1
	ld h,(hl)		;aec2
	ld l,a			;aec3
	ret m			;aec4
	ld (hl),a		;aec5
	rst 38h			;aec6
	rst 38h			;aec7
	adc a,a			;aec8
	rst 38h			;aec9
	rst 38h			;aeca
	nop			;aecb
	ret m			;aecc
	ld h,(hl)		;aecd
	ret p			;aece
	nop			;aecf
	rrca			;aed0
	adc a,b			;aed1
	nop			;aed2
	nop			;aed3
	nop			;aed4
	rst 38h			;aed5
	nop			;aed6
	nop			;aed7
	sub (hl)		;aed8
	nop			;aed9
	nop			;aeda
	nop			;aedb
	nop			;aedc
	nop			;aedd
	nop			;aede
	nop			;aedf
	nop			;aee0
	nop			;aee1
	ld (hl),a		;aee2
	halt			;aee3
	ret p			;aee4
	nop			;aee5
	rst 38h			;aee6
	rst 38h			;aee7
	nop			;aee8
	nop			;aee9
	ld l,a			;aeea
	nop			;aeeb
	nop			;aeec
	nop			;aeed
	ld a,a			;aeee
	nop			;aeef
	nop			;aef0
	nop			;aef1
	rst 38h			;aef2
	nop			;aef3
	nop			;aef4
	nop			;aef5
	nop			;aef6
	nop			;aef7
	nop			;aef8
	nop			;aef9
	nop			;aefa
	nop			;aefb
	nop			;aefc
	nop			;aefd
	nop			;aefe
	nop			;aeff
	nop			;af00
	nop			;af01
	nop			;af02
	nop			;af03
	nop			;af04
	nop			;af05
	nop			;af06
	nop			;af07
	nop			;af08
	nop			;af09
	nop			;af0a
	nop			;af0b
	nop			;af0c
	add hl,bc		;af0d
	nop			;af0e
	nop			;af0f
	nop			;af10
	nop			;af11
	nop			;af12
	nop			;af13
	nop			;af14
	nop			;af15
	nop			;af16
	nop			;af17
	nop			;af18
	nop			;af19
	nop			;af1a
	nop			;af1b
	nop			;af1c
	rrca			;af1d
	nop			;af1e
	nop			;af1f
	nop			;af20
	rrca			;af21
	nop			;af22
	nop			;af23
	nop			;af24
	nop			;af25
	nop			;af26
	nop			;af27
	nop			;af28
	nop			;af29
	ld (hl),b		;af2a
	nop			;af2b
	sub b			;af2c
	nop			;af2d
	nop			;af2e
	nop			;af2f
	nop			;af30
	nop			;af31
	rrca			;af32
	rst 38h			;af33
	nop			;af34
	nop			;af35
	rst 30h			;af36
	adc a,(hl)		;af37
	rst 38h			;af38
	rst 38h			;af39
	ld a,a			;af3a
	rst 38h			;af3b
	ret m			;af3c
	adc a,a			;af3d
	ld a,a			;af3e
	or 077h			;af3f
	rst 30h			;af41
	nop			;af42
	nop			;af43
	nop			;af44
	nop			;af45
	nop			;af46
	nop			;af47
	nop			;af48
	nop			;af49
	nop			;af4a
	nop			;af4b
	nop			;af4c
	nop			;af4d
	nop			;af4e
	nop			;af4f
	nop			;af50
	nop			;af51
	nop			;af52
	nop			;af53
	nop			;af54
	nop			;af55
	rst 38h			;af56
	ret p			;af57
	nop			;af58
	nop			;af59
	ld (hl),a		;af5a
	ld a,a			;af5b
	nop			;af5c
	nop			;af5d
	adc a,(hl)		;af5e
	rst 28h			;af5f
	nop			;af60
	nop			;af61
	nop			;af62
	nop			;af63
	nop			;af64
	rst 38h			;af65
	nop			;af66
	nop			;af67
	nop			;af68
	ret m			;af69
	nop			;af6a
	nop			;af6b
	nop			;af6c
	or 000h			;af6d
	nop			;af6f
	rrca			;af70
	adc a,a			;af71
	nop			;af72
	nop			;af73
	rrca			;af74
	ld a,b			;af75
	rrca			;af76
	rst 38h			;af77
	rst 38h			;af78
	rst 30h			;af79
	rst 30h			;af7a
	ld (hl),a		;af7b
	ld h,(hl)		;af7c
	rst 38h			;af7d
	ret m			;af7e
	adc a,b			;af7f
	adc a,b			;af80
	ld a,a			;af81
	rst 30h			;af82
	adc a,a			;af83
	ld h,(hl)		;af84
	rst 30h			;af85
	adc a,a			;af86
	rst 30h			;af87
	rst 38h			;af88
	rst 30h			;af89
	adc a,b			;af8a
	rst 38h			;af8b
	ld (hl),a		;af8c
	rst 38h			;af8d
	ld l,a			;af8e
	adc a,b			;af8f
	rst 38h			;af90
	ld h,a			;af91
	rst 38h			;af92
	ld a,a			;af93
	adc a,a			;af94
	ld h,(hl)		;af95
	rst 38h			;af96
	ld a,a			;af97
	ld a,a			;af98
	ld l,a			;af99
	rst 38h			;af9a
	rst 38h			;af9b
	ld a,a			;af9c
	ld h,(hl)		;af9d
	ret m			;af9e
	rst 38h			;af9f
	ld a,a			;afa0
	ld h,(hl)		;afa1
	ld a,b			;afa2
	adc a,b			;afa3
	ret p			;afa4
	nop			;afa5
	ld (hl),a		;afa6
	ld (hl),a		;afa7
	ret p			;afa8
	nop			;afa9
	rst 38h			;afaa
	rst 38h			;afab
	ret p			;afac
	nop			;afad
	adc a,b			;afae
	xor 0f0h		;afaf
	nop			;afb1
	ld a,b			;afb2
	ret pe			;afb3
	ret p			;afb4
	nop			;afb5
	ld a,b			;afb6
	ret pe			;afb7
	rst 38h			;afb8
	ret p			;afb9
	ld h,a			;afba
	halt			;afbb
	or 06fh			;afbc
	ld a,b			;afbe
	xor 0f8h		;afbf
	adc a,a			;afc1
	or 086h			;afc2
	ld h,(hl)		;afc4
	ld a,a			;afc5
	rrca			;afc6
	rst 38h			;afc7
	rst 38h			;afc8
	rst 38h			;afc9
	nop			;afca
	nop			;afcb
	nop			;afcc
	rrca			;afcd
	nop			;afce
	nop			;afcf
	nop			;afd0
	nop			;afd1
	nop			;afd2
	nop			;afd3
	nop			;afd4
	nop			;afd5
	nop			;afd6
	nop			;afd7
	nop			;afd8
	nop			;afd9
	nop			;afda
	nop			;afdb
	nop			;afdc
	nop			;afdd
	nop			;afde
	nop			;afdf
	nop			;afe0
	nop			;afe1
	adc a,(hl)		;afe2
	ld a,a			;afe3
	ld a,a			;afe4
	ld h,(hl)		;afe5
	adc a,b			;afe6
	ld a,a			;afe7
	ld a,a			;afe8
	ld h,(hl)		;afe9
	ld (hl),a		;afea
	ld a,a			;afeb
	rst 38h			;afec
	ld h,(hl)		;afed
	or 0ffh			;afee
	adc a,a			;aff0
	ld l,a			;aff1
	rrca			;aff2
	or 07fh			;aff3
	ld h,(hl)		;aff5
	rrca			;aff6
	or 06fh			;aff7
	ld h,(hl)		;aff9
	nop			;affa
	rst 38h			;affb
	ld l,a			;affc
	ld h,(hl)		;affd
	nop			;affe
	rst 30h			;afff
	rst 38h			;b000
	ld h,(hl)		;b001
	ld a,b			;b002
	ret pe			;b003
	rst 38h			;b004
	ret p			;b005
	ld a,b			;b006
	ret pe			;b007
	ret p			;b008
	nop			;b009
	ld a,b			;b00a
	ret pe			;b00b
	ret p			;b00c
	nop			;b00d
	ld a,b			;b00e
	ret pe			;b00f
	ret p			;b010
	nop			;b011
	ld h,a			;b012
	halt			;b013
	ret p			;b014
	nop			;b015
	ld a,b			;b016
	xor 0f0h		;b017
	nop			;b019
	ld a,b			;b01a
	ret pe			;b01b
	ret p			;b01c
	nop			;b01d
	ld a,b			;b01e
	ret pe			;b01f
	ret p			;b020
	nop			;b021
	nop			;b022
	rrca			;b023
	ld a,a			;b024
	ld h,(hl)		;b025
	nop			;b026
	rrca			;b027
	ld l,a			;b028
	rst 38h			;b029
	nop			;b02a
	nop			;b02b
	rst 38h			;b02c
	ld l,a			;b02d
	nop			;b02e
	nop			;b02f
	rst 38h			;b030
	ld l,b			;b031
	nop			;b032
	nop			;b033
	rrca			;b034
	ld l,b			;b035
	nop			;b036
	nop			;b037
	rrca			;b038
	ld l,b			;b039
	nop			;b03a
	nop			;b03b
	nop			;b03c
	push af			;b03d
	nop			;b03e
	nop			;b03f
	add hl,bc		;b040
	nop			;b041
	ld (hl),a		;b042
	halt			;b043
	ret p			;b044
	nop			;b045
	ld h,(hl)		;b046
	ld l,a			;b047
	ret p			;b048
	nop			;b049
	rst 38h			;b04a
	rst 38h			;b04b
	add a,b			;b04c
	nop			;b04d
	ld l,b			;b04e
	ld a,a			;b04f
	ld l,b			;b050
	add hl,bc		;b051
	ld h,a			;b052
	ret p			;b053
	ld b,080h		;b054
	rst 38h			;b056
	nop			;b057
	nop			;b058
	ld h,b			;b059
	nop			;b05a
	nop			;b05b
	add hl,bc		;b05c
	nop			;b05d
	sub b			;b05e
	nop			;b05f
	nop			;b060
	nop			;b061
	nop			;b062
	nop			;b063
	nop			;b064
	nop			;b065
	nop			;b066
	nop			;b067
	nop			;b068
	nop			;b069
	nop			;b06a
	nop			;b06b
	nop			;b06c
	nop			;b06d
	nop			;b06e
	nop			;b06f
	nop			;b070
	nop			;b071
	nop			;b072
	nop			;b073
	nop			;b074
	nop			;b075
	nop			;b076
	nop			;b077
	nop			;b078
	rrca			;b079
	nop			;b07a
	nop			;b07b
	nop			;b07c
	or 000h			;b07d
	nop			;b07f
	rrca			;b080
	ld h,a			;b081
	nop			;b082
	nop			;b083
	nop			;b084
	nop			;b085
	nop			;b086
	nop			;b087
	nop			;b088
	nop			;b089
	nop			;b08a
	nop			;b08b
	nop			;b08c
	nop			;b08d
	nop			;b08e
	rst 38h			;b08f
	rst 38h			;b090
	rst 38h			;b091
	rst 38h			;b092
	rst 38h			;b093
	rst 30h			;b094
	ld (hl),a		;b095
	ld h,a			;b096
	ld (hl),a		;b097
	rst 38h			;b098
	ld a,b			;b099
	ld a,b			;b09a
	adc a,b			;b09b
	ld a,a			;b09c
	adc a,(hl)		;b09d
	adc a,b			;b09e
	ret pe			;b09f
	add a,a			;b0a0
	ret m			;b0a1
	nop			;b0a2
	nop			;b0a3
	nop			;b0a4
	nop			;b0a5
	nop			;b0a6
	nop			;b0a7
	nop			;b0a8
	nop			;b0a9
	nop			;b0aa
	nop			;b0ab
	nop			;b0ac
	nop			;b0ad
	rst 38h			;b0ae
	rst 38h			;b0af
	rst 38h			;b0b0
	ret p			;b0b1
	halt			;b0b2
	ld h,a			;b0b3
	halt			;b0b4
	ld l,a			;b0b5
	adc a,b			;b0b6
	ld l,b			;b0b7
	add a,a			;b0b8
	ld (hl),a		;b0b9
	xor 0e6h		;b0ba
	adc a,b			;b0bc
	adc a,b			;b0bd
	xor 0e6h		;b0be
	xor 0eeh		;b0c0
	nop			;b0c2
	nop			;b0c3
	nop			;b0c4
	nop			;b0c5
	nop			;b0c6
	nop			;b0c7
	nop			;b0c8
	nop			;b0c9
	nop			;b0ca
	nop			;b0cb
	nop			;b0cc
	nop			;b0cd
	nop			;b0ce
	nop			;b0cf
	nop			;b0d0
	nop			;b0d1
	rst 38h			;b0d2
	ret p			;b0d3
	nop			;b0d4
	nop			;b0d5
	ld (hl),a		;b0d6
	ld a,a			;b0d7
	rst 38h			;b0d8
	nop			;b0d9
	ld a,b			;b0da
	add a,a			;b0db
	ld (hl),a		;b0dc
	rst 38h			;b0dd
	ld a,(hl)		;b0de
	adc a,b			;b0df
	adc a,b			;b0e0
	ld a,a			;b0e1
	nop			;b0e2
	nop			;b0e3
	nop			;b0e4
	nop			;b0e5
	nop			;b0e6
	nop			;b0e7
	nop			;b0e8
	rrca			;b0e9
	nop			;b0ea
	nop			;b0eb
	nop			;b0ec
	rst 30h			;b0ed
	nop			;b0ee
	nop			;b0ef
	rrca			;b0f0
	ld a,a			;b0f1
	nop			;b0f2
	nop			;b0f3
	rrca			;b0f4
	rst 38h			;b0f5
	nop			;b0f6
	rrca			;b0f7
	rst 38h			;b0f8
	rst 38h			;b0f9
	rrca			;b0fa
	rst 38h			;b0fb
	or 066h			;b0fc
	rst 38h			;b0fe
	ld a,a			;b0ff
	rst 38h			;b100
	rst 38h			;b101
	nop			;b102
	nop			;b103
	sub b			;b104
	nop			;b105
	rst 38h			;b106
	rst 38h			;b107
	rst 38h			;b108
	rst 38h			;b109
	ld a,b			;b10a
	adc a,b			;b10b
	xor 0e8h		;b10c
	rst 38h			;b10e
	rst 38h			;b10f
	rst 38h			;b110
	rst 38h			;b111
	defb 0fdh,0fdh,0ffh ;illegal sequence	;b112
	rst 18h			;b115
	rst 38h			;b116
	rst 38h			;b117
	rst 38h			;b118
	rst 38h			;b119
	ld h,(hl)		;b11a
	ld (hl),a		;b11b
	ld a,b			;b11c
	rst 28h			;b11d
	rst 30h			;b11e
	ld (hl),a		;b11f
	adc a,(hl)		;b120
	ret pe			;b121
	add hl,bc		;b122
	nop			;b123
	nop			;b124
	sub b			;b125
	ret p			;b126
	nop			;b127
	nop			;b128
	ex af,af'		;b129
	adc a,a			;b12a
	ret p			;b12b
	ex af,af'		;b12c
	ld a,a			;b12d
	adc a,b			;b12e
	adc a,a			;b12f
	add a,a			;b130
	ret p			;b131
	rst 38h			;b132
	add a,a			;b133
	rst 38h			;b134
	nop			;b135
	rst 38h			;b136
	ld (hl),a		;b137
	rst 28h			;b138
	nop			;b139
	ld sp,hl		;b13a
	cp 0e8h			;b13b
	ret p			;b13d
	ld a,a			;b13e
	cp 087h			;b13f
	ld a,a			;b141
	nop			;b142
	nop			;b143
	nop			;b144
	nop			;b145
	ret p			;b146
	sub b			;b147
	nop			;b148
	nop			;b149
	nop			;b14a
	nop			;b14b
	nop			;b14c
	nop			;b14d
	nop			;b14e
	nop			;b14f
	nop			;b150
	nop			;b151
	nop			;b152
	nop			;b153
	nop			;b154
	nop			;b155
	nop			;b156
	nop			;b157
	nop			;b158
	nop			;b159
	nop			;b15a
	nop			;b15b
	nop			;b15c
	nop			;b15d
	nop			;b15e
	nop			;b15f
	nop			;b160
	nop			;b161
	nop			;b162
	nop			;b163
	rrca			;b164
	ld (hl),a		;b165
	nop			;b166
	nop			;b167
	or 078h			;b168
	nop			;b16a
	nop			;b16b
	rst 30h			;b16c
	ld a,b			;b16d
	nop			;b16e
	nop			;b16f
	rst 30h			;b170
	adc a,b			;b171
	nop			;b172
	rrca			;b173
	ld h,a			;b174
	adc a,b			;b175
	nop			;b176
	rrca			;b177
	ld h,a			;b178
	adc a,b			;b179
	nop			;b17a
	rrca			;b17b
	ld h,a			;b17c
	ld a,b			;b17d
	nop			;b17e
	rrca			;b17f
	or 077h			;b180
	adc a,b			;b182
	xor 087h		;b183
	ret m			;b185
	adc a,b			;b186
	xor 087h		;b187
	rst 30h			;b189
	adc a,b			;b18a
	xor 087h		;b18b
	ld l,a			;b18d
	adc a,(hl)		;b18e
	xor 087h		;b18f
	ld l,a			;b191
	adc a,(hl)		;b192
	ret pe			;b193
	add a,a			;b194
	ld l,a			;b195
	xor 088h		;b196
	ld (hl),a		;b198
	ld l,a			;b199
	adc a,b			;b19a
	ld (hl),a		;b19b
	halt			;b19c
	rst 38h			;b19d
	ld (hl),a		;b19e
	halt			;b19f
	ld l,a			;b1a0
	rst 38h			;b1a1
	xor 0eeh		;b1a2
	ld l,(hl)		;b1a4
	xor 088h		;b1a5
	adc a,b			;b1a7
	ld l,b			;b1a8
	adc a,b			;b1a9
	adc a,(hl)		;b1aa
	xor 0e6h		;b1ab
	adc a,b			;b1ad
	adc a,(hl)		;b1ae
	xor 0e6h		;b1af
	xor 078h		;b1b1
	adc a,b			;b1b3
	adc a,b			;b1b4
	ld l,b			;b1b5
	ld a,b			;b1b6
	adc a,b			;b1b7
	adc a,b			;b1b8
	ld h,a			;b1b9
	ld h,a			;b1ba
	ld (hl),a		;b1bb
	ld (hl),a		;b1bc
	ld l,a			;b1bd
	ld h,a			;b1be
	ld (hl),a		;b1bf
	ld h,(hl)		;b1c0
	rst 38h			;b1c1
	rst 20h			;b1c2
	xor 0e8h		;b1c3
	add a,a			;b1c5
	add a,a			;b1c6
	adc a,(hl)		;b1c7
	xor 0e8h		;b1c8
	adc a,b			;b1ca
	ld a,b			;b1cb
	adc a,b			;b1cc
	adc a,b			;b1cd
	xor 07eh		;b1ce
	xor 08eh		;b1d0
	adc a,b			;b1d2
	add a,a			;b1d3
	adc a,b			;b1d4
	adc a,b			;b1d5
	ld (hl),a		;b1d6
	ld (hl),a		;b1d7
	ld (hl),a		;b1d8
	ld (hl),a		;b1d9
	ld h,(hl)		;b1da
	ld h,(hl)		;b1db
	ld h,(hl)		;b1dc
	rst 38h			;b1dd
	rst 38h			;b1de
	rst 38h			;b1df
	rst 38h			;b1e0
	ld (hl),a		;b1e1
	ld a,a			;b1e2
	rst 30h			;b1e3
	ld a,b			;b1e4
	adc a,b			;b1e5
	add a,a			;b1e6
	ld a,a			;b1e7
	rst 38h			;b1e8
	ld h,(hl)		;b1e9
	adc a,b			;b1ea
	add a,a			;b1eb
	rst 38h			;b1ec
	rst 38h			;b1ed
	adc a,b			;b1ee
	adc a,b			;b1ef
	ld a,a			;b1f0
	ld a,b			;b1f1
	adc a,b			;b1f2
	adc a,b			;b1f3
	add a,a			;b1f4
	rst 30h			;b1f5
	ld (hl),a		;b1f6
	ld (hl),a		;b1f7
	ld a,a			;b1f8
	rst 38h			;b1f9
	rst 38h			;b1fa
	rst 38h			;b1fb
	rst 30h			;b1fc
	ld a,a			;b1fd
	ld (hl),a		;b1fe
	ld (hl),a		;b1ff
	ld a,(hl)		;b200
	xor 08fh		;b201
	rst 38h			;b203
	rst 38h			;b204
	add a,a			;b205
	ld h,(hl)		;b206
	ld (hl),a		;b207
	ld l,a			;b208
	rst 38h			;b209
	rst 38h			;b20a
	rst 38h			;b20b
	rst 38h			;b20c
	adc a,b			;b20d
	adc a,(hl)		;b20e
	ret pe			;b20f
	ld (hl),a		;b210
	ld h,(hl)		;b211
	ld (hl),a		;b212
	ld a,a			;b213
	rst 38h			;b214
	rst 38h			;b215
	rst 38h			;b216
	rst 38h			;b217
	ld l,b			;b218
	rst 30h			;b219
	or 08eh			;b21a
	ld l,b			;b21c
	or 0f6h			;b21d
	adc a,(hl)		;b21f
	rst 38h			;b220
	rst 38h			;b221
	halt			;b222
	ret m			;b223
	ld (hl),a		;b224
	ld a,a			;b225
	rst 38h			;b226
	ld (hl),a		;b227
	ld a,a			;b228
	rst 38h			;b229
	adc a,b			;b22a
	ld l,a			;b22b
	rst 38h			;b22c
	ld a,b			;b22d
	ld l,a			;b22e
	rst 38h			;b22f
	ret m			;b230
	adc a,(hl)		;b231
	or 07fh			;b232
	adc a,(hl)		;b234
	xor 077h		;b235
	adc a,a			;b237
	ld a,b			;b238
	adc a,b			;b239
	adc a,b			;b23a
	adc a,b			;b23b
	rst 38h			;b23c
	rst 38h			;b23d
	ld a,b			;b23e
	rst 38h			;b23f
	rst 30h			;b240
	adc a,b			;b241
	nop			;b242
	nop			;b243
	nop			;b244
	nop			;b245
	ret p			;b246
	nop			;b247
	nop			;b248
	nop			;b249
	adc a,a			;b24a
	nop			;b24b
	nop			;b24c
	nop			;b24d
	xor 0f0h		;b24e
	nop			;b250
	nop			;b251
	ret pe			;b252
	ld a,a			;b253
	nop			;b254
	nop			;b255
	add a,a			;b256
	ld l,a			;b257
	nop			;b258
	nop			;b259
	ld h,(hl)		;b25a
	ld l,a			;b25b
	nop			;b25c
	nop			;b25d
	rst 38h			;b25e
	ret p			;b25f
	nop			;b260
	nop			;b261
	nop			;b262
	rrca			;b263
	rst 38h			;b264
	ld h,(hl)		;b265
	nop			;b266
	or 0ffh			;b267
	rst 38h			;b269
	nop			;b26a
	ret m			;b26b
	ld (hl),a		;b26c
	ld (hl),a		;b26d
	nop			;b26e
	rst 30h			;b26f
	ld h,(hl)		;b270
	ld h,(hl)		;b271
	nop			;b272
	rst 30h			;b273
	ld h,(hl)		;b274
	ld h,(hl)		;b275
	nop			;b276
	rst 30h			;b277
	ld h,(hl)		;b278
	ld h,(hl)		;b279
	nop			;b27a
	rst 30h			;b27b
	ld h,(hl)		;b27c
	ld h,(hl)		;b27d
	nop			;b27e
	rst 30h			;b27f
	ld h,(hl)		;b280
	ld h,(hl)		;b281
	ld h,(hl)		;b282
	ld h,(hl)		;b283
	rst 38h			;b284
	or 0ffh			;b285
	rst 38h			;b287
	rst 38h			;b288
	or 08eh			;b289
	xor 087h		;b28b
	rst 38h			;b28d
	ld (hl),a		;b28e
	adc a,b			;b28f
	halt			;b290
	rst 30h			;b291
	ld (hl),a		;b292
	adc a,b			;b293
	halt			;b294
	or 077h			;b295
	adc a,b			;b297
	halt			;b298
	or 077h			;b299
	adc a,b			;b29b
	halt			;b29c
	or 077h			;b29d
	adc a,b			;b29f
	halt			;b2a0
	or 066h			;b2a1
	ld h,(hl)		;b2a3
	rst 38h			;b2a4
	or 0ffh			;b2a5
	rst 38h			;b2a7
	adc a,b			;b2a8
	rst 30h			;b2a9
	adc a,(hl)		;b2aa
	xor 0e7h		;b2ab
	or 078h			;b2ad
	adc a,b			;b2af
	ret pe			;b2b0
	or 078h			;b2b1
	adc a,b			;b2b3
	rst 20h			;b2b4
	or 078h			;b2b5
	adc a,b			;b2b7
	rst 20h			;b2b8
	or 078h			;b2b9
	adc a,b			;b2bb
	rst 20h			;b2bc
	or 076h			;b2bd
	ret pe			;b2bf
	rst 20h			;b2c0
	or 077h			;b2c1
	ld (hl),a		;b2c3
	ld (hl),a		;b2c4
	xor 08eh		;b2c5
	xor 0eeh		;b2c7
	adc a,b			;b2c9
	ld a,(hl)		;b2ca
	ret pe			;b2cb
	adc a,b			;b2cc
	adc a,b			;b2cd
	ld a,(hl)		;b2ce
	add a,(hl)		;b2cf
	add a,(hl)		;b2d0
	adc a,b			;b2d1
	ld a,(hl)		;b2d2
	add a,(hl)		;b2d3
	add a,(hl)		;b2d4
	adc a,b			;b2d5
	ld a,(hl)		;b2d6
	adc a,b			;b2d7
	adc a,b			;b2d8
	ld a,a			;b2d9
	ld a,(hl)		;b2da
	adc a,b			;b2db
	add a,a			;b2dc
	rst 30h			;b2dd
	ld a,(hl)		;b2de
	adc a,b			;b2df
	add a,a			;b2e0
	or 0eeh			;b2e1
	xor 0e8h		;b2e3
	adc a,b			;b2e5
	adc a,b			;b2e6
	adc a,b			;b2e7
	adc a,b			;b2e8
	adc a,b			;b2e9
	adc a,b			;b2ea
	adc a,b			;b2eb
	adc a,b			;b2ec
	adc a,b			;b2ed
	adc a,b			;b2ee
	adc a,b			;b2ef
	adc a,b			;b2f0
	adc a,b			;b2f1
	adc a,b			;b2f2
	ld a,a			;b2f3
	rst 38h			;b2f4
	adc a,b			;b2f5
	rst 38h			;b2f6
	ret m			;b2f7
	adc a,a			;b2f8
	adc a,b			;b2f9
	adc a,(hl)		;b2fa
	ret pe			;b2fb
	ld a,a			;b2fc
	adc a,a			;b2fd
	ld a,(hl)		;b2fe
	add a,a			;b2ff
lb300h:
	ld a,a			;b300
	rst 38h			;b301
	rst 38h			;b302
	rst 30h			;b303
	or 06fh			;b304
	rst 38h			;b306
	or 06eh			;b307
	rst 28h			;b309
	rst 38h			;b30a
	ld a,(hl)		;b30b
	xor 08fh		;b30c
	rst 38h			;b30e
	ld h,a			;b30f
	adc a,b			;b310
	adc a,a			;b311
	rst 38h			;b312
	ld h,a			;b313
	adc a,b			;b314
	adc a,a			;b315
	rst 38h			;b316
	ld h,a			;b317
	adc a,b			;b318
	adc a,a			;b319
	rst 38h			;b31a
	ld h,a			;b31b
	adc a,b			;b31c
	adc a,a			;b31d
	rst 38h			;b31e
	ld h,a			;b31f
	adc a,b			;b320
	rst 38h			;b321
	rst 38h			;b322
	ret m			;b323
	adc a,(hl)		;b324
	xor 0f8h		;b325
	xor 0eeh		;b327
	ret pe			;b329
	rst 38h			;b32a
	cp 0e8h			;b32b
	adc a,b			;b32d
	ld l,a			;b32e
	rst 38h			;b32f
	ret pe			;b330
	adc a,b			;b331
	ld a,a			;b332
	ld l,a			;b333
	ret pe			;b334
	adc a,b			;b335
	ld a,a			;b336
	ld a,a			;b337
	ret pe			;b338
	adc a,b			;b339
	ld a,a			;b33a
	ld a,a			;b33b
	ret pe			;b33c
	ld (hl),a		;b33d
	ld a,a			;b33e
	ld l,a			;b33f
	ld (hl),a		;b340
	rst 38h			;b341
	ret pe			;b342
	rst 38h			;b343
	nop			;b344
	nop			;b345
	adc a,b			;b346
	ld a,a			;b347
	nop			;b348
	nop			;b349
	adc a,b			;b34a
	ld a,a			;b34b
	nop			;b34c
	nop			;b34d
	adc a,b			;b34e
	ld a,a			;b34f
	nop			;b350
	nop			;b351
	add a,a			;b352
	rst 38h			;b353
	nop			;b354
	nop			;b355
	ld a,a			;b356
	ret p			;b357
	nop			;b358
	nop			;b359
	rst 38h			;b35a
	rst 38h			;b35b
	nop			;b35c
	nop			;b35d
	rst 30h			;b35e
	rst 38h			;b35f
	nop			;b360
	nop			;b361
	nop			;b362
	or 0ffh			;b363
	rst 38h			;b365
	nop			;b366
	rst 30h			;b367
	ld h,(hl)		;b368
	ld h,(hl)		;b369
	nop			;b36a
	rst 30h			;b36b
	ld h,(hl)		;b36c
	ld h,(hl)		;b36d
	nop			;b36e
	rst 30h			;b36f
	ld h,(hl)		;b370
	ld h,(hl)		;b371
	nop			;b372
	rst 30h			;b373
	ld h,(hl)		;b374
	ld h,(hl)		;b375
	nop			;b376
	rst 30h			;b377
	ld h,(hl)		;b378
	ld h,(hl)		;b379
	nop			;b37a
	rst 30h			;b37b
	ld h,(hl)		;b37c
	ld h,(hl)		;b37d
	nop			;b37e
	rst 30h			;b37f
	ld h,(hl)		;b380
	ld h,(hl)		;b381
	ld h,(hl)		;b382
	ld (hl),a		;b383
	ld h,(hl)		;b384
	rst 38h			;b385
	ld (hl),a		;b386
	adc a,b			;b387
	halt			;b388
	rst 30h			;b389
	ld (hl),a		;b38a
	adc a,b			;b38b
	halt			;b38c
	or 077h			;b38d
	adc a,b			;b38f
	halt			;b390
	or 077h			;b391
	adc a,b			;b393
	halt			;b394
	or 077h			;b395
	adc a,b			;b397
	halt			;b398
	or 077h			;b399
	adc a,b			;b39b
	halt			;b39c
	or 077h			;b39d
	adc a,b			;b39f
	halt			;b3a0
	or 067h			;b3a1
	add a,a			;b3a3
	add a,a			;b3a4
	or 086h			;b3a5
	adc a,(hl)		;b3a7
	ret pe			;b3a8
	or 076h			;b3a9
	adc a,b			;b3ab
	rst 20h			;b3ac
	or 07fh			;b3ad
	ret m			;b3af
	rst 20h			;b3b0
	or 076h			;b3b1
	ld l,b			;b3b3
	rst 20h			;b3b4
	or 078h			;b3b5
	adc a,b			;b3b7
	rst 20h			;b3b8
	or 078h			;b3b9
	adc a,b			;b3bb
	rst 20h			;b3bc
	or 078h			;b3bd
	adc a,b			;b3bf
	ret pe			;b3c0
	or 07eh			;b3c1
	ld a,(hl)		;b3c3
	add a,(hl)		;b3c4
	or 07eh			;b3c5
	rst 38h			;b3c7
	add a,(hl)		;b3c8
	or 078h			;b3c9
	adc a,b			;b3cb
	add a,(hl)		;b3cc
	or 07eh			;b3cd
	adc a,b			;b3cf
	add a,(hl)		;b3d0
	rst 38h			;b3d1
	ld a,(hl)		;b3d2
	adc a,b			;b3d3
	add a,(hl)		;b3d4
	or 078h			;b3d5
	adc a,b			;b3d7
	add a,(hl)		;b3d8
	or 078h			;b3d9
	adc a,b			;b3db
	add a,(hl)		;b3dc
	rst 38h			;b3dd
	ld a,b			;b3de
	adc a,b			;b3df
	add a,(hl)		;b3e0
	ld h,(hl)		;b3e1
	ld a,(hl)		;b3e2
	add a,a			;b3e3
	ld a,a			;b3e4
	ret m			;b3e5
	ld a,(hl)		;b3e6
	add a,a			;b3e7
	rst 38h			;b3e8
	ld h,(hl)		;b3e9
	ld a,(hl)		;b3ea
	rst 38h			;b3eb
	ld a,a			;b3ec
	adc a,(hl)		;b3ed
	rst 38h			;b3ee
	add a,a			;b3ef
	ld a,a			;b3f0
	halt			;b3f1
	ld a,(hl)		;b3f2
	adc a,a			;b3f3
	rst 38h			;b3f4
	rst 38h			;b3f5
	ld a,a			;b3f6
	rst 38h			;b3f7
	ld l,a			;b3f8
	rst 38h			;b3f9
	rst 38h			;b3fa
	ld h,(hl)		;b3fb
	adc a,a			;b3fc
	rst 30h			;b3fd
	ld h,(hl)		;b3fe
	adc a,b			;b3ff
	adc a,a			;b400
	rst 30h			;b401
	rst 28h			;b402
	ld h,a			;b403
	adc a,a			;b404
	rst 38h			;b405
	ld l,a			;b406
	rst 38h			;b407
	rst 38h			;b408
	rst 38h			;b409
	xor 0ffh		;b40a
	adc a,b			;b40c
	adc a,a			;b40d
	ld h,(hl)		;b40e
	cp 0eeh			;b40f
	or 0ffh			;b411
	cp 0efh			;b413
	ld h,a			;b415
	rst 38h			;b416
	adc a,b			;b417
	adc a,a			;b418
	ld a,b			;b419
	ld a,a			;b41a
	adc a,b			;b41b
	rst 30h			;b41c
	adc a,b			;b41d
	rst 38h			;b41e
	adc a,b			;b41f
	rst 30h			;b420
	adc a,b			;b421
	ld l,a			;b422
	rst 30h			;b423
	rst 38h			;b424
	rst 38h			;b425
	rst 38h			;b426
	rst 38h			;b427
	rst 38h			;b428
	ld (hl),a		;b429
	rst 38h			;b42a
	rst 38h			;b42b
	rst 30h			;b42c
	ld h,(hl)		;b42d
	ld a,a			;b42e
	rst 30h			;b42f
	halt			;b430
	rst 38h			;b431
	add a,a			;b432
	or 06fh			;b433
	rst 30h			;b435
	adc a,b			;b436
	rst 38h			;b437
	rst 38h			;b438
	ld a,b			;b439
	adc a,b			;b43a
	adc a,a			;b43b
	rst 30h			;b43c
	adc a,b			;b43d
	xor 08fh		;b43e
	ld a,(hl)		;b440
	xor 076h		;b441
	rst 38h			;b443
	rst 38h			;b444
	rst 38h			;b445
	ld l,a			;b446
	or 088h			;b447
	adc a,(hl)		;b449
	rst 38h			;b44a
	ld a,b			;b44b
	adc a,b			;b44c
	xor 0f7h		;b44d
	ld (hl),a		;b44f
	ld (hl),a		;b450
	ld (hl),a		;b451
	ld a,a			;b452
	rst 38h			;b453
	rst 38h			;b454
	rst 38h			;b455
	ld (hl),a		;b456
	ld (hl),a		;b457
	ld (hl),a		;b458
	ld (hl),a		;b459
	adc a,b			;b45a
	adc a,b			;b45b
	adc a,b			;b45c
	adc a,(hl)		;b45d
	xor 0eeh		;b45e
	xor 0eeh		;b460
	rst 38h			;b462
	nop			;b463
	nop			;b464
	nop			;b465
	rst 20h			;b466
	rst 38h			;b467
	nop			;b468
	nop			;b469
	halt			;b46a
	ret m			;b46b
	ret p			;b46c
	nop			;b46d
	ld l,a			;b46e
	adc a,(hl)		;b46f
	rst 28h			;b470
	nop			;b471
	rst 30h			;b472
	xor 088h		;b473
	ret p			;b475
	adc a,(hl)		;b476
	ld a,b			;b477
	add a,a			;b478
	ret p			;b479
	xor 0e7h		;b47a
	add a,a			;b47c
	ret p			;b47d
	xor 088h		;b47e
	ld a,a			;b480
	nop			;b481
	nop			;b482
	rst 30h			;b483
	ld h,(hl)		;b484
	ld h,(hl)		;b485
	nop			;b486
	rst 30h			;b487
	ld h,(hl)		;b488
	ld h,(hl)		;b489
	nop			;b48a
	rst 30h			;b48b
	ld h,(hl)		;b48c
	ld h,(hl)		;b48d
	nop			;b48e
	rst 30h			;b48f
	ld h,(hl)		;b490
	ld h,(hl)		;b491
	nop			;b492
	rst 30h			;b493
	ld h,(hl)		;b494
	ld h,(hl)		;b495
	nop			;b496
	rst 30h			;b497
	ld h,(hl)		;b498
	ld h,(hl)		;b499
	nop			;b49a
	rst 30h			;b49b
	ld h,(hl)		;b49c
	ld h,(hl)		;b49d
	nop			;b49e
	rst 30h			;b49f
	ld h,(hl)		;b4a0
	ld h,(hl)		;b4a1
	ld (hl),a		;b4a2
	adc a,b			;b4a3
	halt			;b4a4
	rst 38h			;b4a5
	ld (hl),a		;b4a6
	adc a,b			;b4a7
	halt			;b4a8
	or 077h			;b4a9
	adc a,b			;b4ab
	halt			;b4ac
	or 077h			;b4ad
	adc a,b			;b4af
	halt			;b4b0
	or 077h			;b4b1
	adc a,b			;b4b3
	halt			;b4b4
	or 077h			;b4b5
	adc a,b			;b4b7
	halt			;b4b8
	or 077h			;b4b9
	adc a,b			;b4bb
	halt			;b4bc
	or 077h			;b4bd
	adc a,b			;b4bf
	halt			;b4c0
	or 067h			;b4c1
	halt			;b4c3
	ld (hl),a		;b4c4
	or 078h			;b4c5
	ld a,(hl)		;b4c7
	rst 20h			;b4c8
	or 078h			;b4c9
	ld a,b			;b4cb
	rst 20h			;b4cc
	or 078h			;b4cd
	ld a,b			;b4cf
	rst 20h			;b4d0
	or 078h			;b4d1
	ld a,b			;b4d3
	rst 20h			;b4d4
	or 078h			;b4d5
	ld a,b			;b4d7
	rst 20h			;b4d8
	or 078h			;b4d9
	ld a,b			;b4db
	rst 20h			;b4dc
	or 078h			;b4dd
	ld a,b			;b4df
	rst 20h			;b4e0
	or 078h			;b4e1
	ld a,(hl)		;b4e3
	add a,(hl)		;b4e4
	ld h,(hl)		;b4e5
	ld a,b			;b4e6
	rst 38h			;b4e7
	adc a,b			;b4e8
	adc a,b			;b4e9
	ld a,b			;b4ea
	adc a,b			;b4eb
	add a,(hl)		;b4ec
	adc a,b			;b4ed
	ld a,b			;b4ee
	add a,(hl)		;b4ef
	add a,(hl)		;b4f0
	adc a,b			;b4f1
	ld a,b			;b4f2
	add a,(hl)		;b4f3
	adc a,b			;b4f4
	adc a,b			;b4f5
	ld a,b			;b4f6
	adc a,b			;b4f7
	adc a,b			;b4f8
	ld (hl),a		;b4f9
	ld a,b			;b4fa
	adc a,b			;b4fb
	ld (hl),a		;b4fc
	rst 38h			;b4fd
	ld a,b			;b4fe
	ld (hl),a		;b4ff
	rst 38h			;b500
	xor 088h		;b501
	adc a,b			;b503
	adc a,a			;b504
	rst 38h			;b505
	adc a,b			;b506
	adc a,b			;b507
	adc a,a			;b508
	ret m			;b509
	adc a,b			;b50a
	add a,a			;b50b
	ld a,a			;b50c
	rst 20h			;b50d
	add a,a			;b50e
	ld a,a			;b50f
	cp 087h			;b510
	ld a,a			;b512
	rst 30h			;b513
	ret pe			;b514
	add a,a			;b515
	cp 0f6h			;b516
	adc a,b			;b518
	adc a,a			;b519
	ret pe			;b51a
	or 088h			;b51b
	adc a,a			;b51d
	adc a,b			;b51e
	or 088h			;b51f
	rst 38h			;b521
	rst 38h			;b522
	adc a,b			;b523
	rst 30h			;b524
	adc a,b			;b525
	rst 38h			;b526
	adc a,b			;b527
	rst 30h			;b528
	adc a,b			;b529
	rst 38h			;b52a
	adc a,b			;b52b
	rst 30h			;b52c
	ld a,b			;b52d
	rst 38h			;b52e
	ld a,b			;b52f
	or 077h			;b530
	rst 38h			;b532
	ld (hl),a		;b533
	or 067h			;b534
	rst 38h			;b536
	ld h,a			;b537
	ld l,a			;b538
	ld h,a			;b539
	rst 38h			;b53a
	rst 30h			;b53b
	ld a,a			;b53c
	ld h,(hl)		;b53d
	rst 38h			;b53e
	or 077h			;b53f
	or 0e8h			;b541
	adc a,a			;b543
	ld (hl),a		;b544
	ld (hl),a		;b545
	adc a,b			;b546
	adc a,a			;b547
	rst 38h			;b548
	rst 38h			;b549
	adc a,b			;b54a
	ld a,a			;b54b
	rst 38h			;b54c
	rst 38h			;b54d
	add a,a			;b54e
	ld a,a			;b54f
	rst 30h			;b550
	ld (hl),a		;b551
	ld (hl),a		;b552
	ld l,a			;b553
	ld h,a			;b554
	adc a,b			;b555
	halt			;b556
	rst 38h			;b557
	rst 38h			;b558
	rst 38h			;b559
	ld h,(hl)		;b55a
	rst 38h			;b55b
	or 066h			;b55c
	ld l,a			;b55e
	cp 087h			;b55f
	ld (hl),a		;b561
	ld (hl),a		;b562
	ld (hl),a		;b563
	ld (hl),a		;b564
	ld (hl),a		;b565
	rst 38h			;b566
	rst 38h			;b567
	rst 38h			;b568
	rst 38h			;b569
	rst 38h			;b56a
	rst 38h			;b56b
	rst 38h			;b56c
	rst 38h			;b56d
	ld (hl),a		;b56e
	ld (hl),a		;b56f
	ld (hl),a		;b570
	rst 38h			;b571
	adc a,b			;b572
	adc a,b			;b573
	adc a,b			;b574
	halt			;b575
	rst 38h			;b576
	rst 38h			;b577
	rst 38h			;b578
	rst 38h			;b579
	ret p			;b57a
	nop			;b57b
	nop			;b57c
	nop			;b57d
	cp a			;b57e
	nop			;b57f
	nop			;b580
	nop			;b581
	ret pe			;b582
	add a,a			;b583
	ret p			;b584
	nop			;b585
	ld a,b			;b586
	halt			;b587
	ret p			;b588
	nop			;b589
	rst 30h			;b58a
	ld l,a			;b58b
	nop			;b58c
	nop			;b58d
	halt			;b58e
	ret p			;b58f
	nop			;b590
	nop			;b591
	rst 38h			;b592
	nop			;b593
	nop			;b594
	nop			;b595
	nop			;b596
	nop			;b597
	nop			;b598
	nop			;b599
	nop			;b59a
	nop			;b59b
	nop			;b59c
	nop			;b59d
	nop			;b59e
	nop			;b59f
	nop			;b5a0
	nop			;b5a1
	nop			;b5a2
	or 0ffh			;b5a3
	rst 38h			;b5a5
	nop			;b5a6
	rst 30h			;b5a7
	ld h,(hl)		;b5a8
	ld h,(hl)		;b5a9
	nop			;b5aa
	rst 30h			;b5ab
	ld h,(hl)		;b5ac
	ld h,(hl)		;b5ad
	nop			;b5ae
	or 0ffh			;b5af
	rst 38h			;b5b1
	nop			;b5b2
	or 076h			;b5b3
	ld h,(hl)		;b5b5
	nop			;b5b6
	or 076h			;b5b7
	ld h,(hl)		;b5b9
	nop			;b5ba
	or 076h			;b5bb
	ld h,(hl)		;b5bd
	nop			;b5be
	or 076h			;b5bf
	ld h,(hl)		;b5c1
	ld h,(hl)		;b5c2
	ld (hl),a		;b5c3
	ld h,(hl)		;b5c4
	or 077h			;b5c5
	adc a,b			;b5c7
	halt			;b5c8
	or 077h			;b5c9
	adc a,b			;b5cb
	halt			;b5cc
	or 066h			;b5cd
	ld l,b			;b5cf
	halt			;b5d0
	rst 38h			;b5d1
	ld (hl),a		;b5d2
	ld l,b			;b5d3
	halt			;b5d4
	or 077h			;b5d5
	ld l,b			;b5d7
	halt			;b5d8
	or 077h			;b5d9
	ld l,b			;b5db
	halt			;b5dc
	rst 38h			;b5dd
	ld (hl),a		;b5de
	ld l,b			;b5df
	halt			;b5e0
	rst 30h			;b5e1
	ld a,b			;b5e2
	ld a,b			;b5e3
	rst 20h			;b5e4
	or 078h			;b5e5
	ld a,b			;b5e7
	rst 20h			;b5e8
	rst 38h			;b5e9
	ld a,b			;b5ea
	ld a,b			;b5eb
	add a,(hl)		;b5ec
	rst 30h			;b5ed
	ld h,a			;b5ee
	ld h,(hl)		;b5ef
	ld (hl),a		;b5f0
	or 078h			;b5f1
	adc a,b			;b5f3
	rst 20h			;b5f4
	or 076h			;b5f5
	ret pe			;b5f7
	rst 20h			;b5f8
	or 067h			;b5f9
	add a,a			;b5fb
	add a,(hl)		;b5fc
	or 087h			;b5fd
	adc a,(hl)		;b5ff
	ret pe			;b600
	or 067h			;b601
	rst 38h			;b603
	adc a,(hl)		;b604
	adc a,b			;b605
	rst 38h			;b606
	adc a,b			;b607
	ret pe			;b608
	adc a,b			;b609
	adc a,b			;b60a
	ld (hl),a		;b60b
	ret pe			;b60c
	adc a,b			;b60d
	ld (hl),a		;b60e
	ld (hl),a		;b60f
	ret pe			;b610
	adc a,b			;b611
	ld (hl),a		;b612
	ld (hl),a		;b613
	adc a,b			;b614
	adc a,b			;b615
	ld (hl),a		;b616
	ld (hl),a		;b617
	ret pe			;b618
	adc a,b			;b619
	ld (hl),a		;b61a
	ld (hl),a		;b61b
	adc a,b			;b61c
	ld (hl),a		;b61d
	ld (hl),a		;b61e
	ld (hl),a		;b61f
	add a,a			;b620
	rst 38h			;b621
	adc a,b			;b622
	or 087h			;b623
	rst 38h			;b625
	adc a,b			;b626
	or 07fh			;b627
	rst 38h			;b629
	adc a,b			;b62a
	rst 38h			;b62b
	or 0f6h			;b62c
	adc a,b			;b62e
	rst 38h			;b62f
	ld h,a			;b630
	rst 38h			;b631
	add a,a			;b632
	or 077h			;b633
	rst 30h			;b635
	ld a,a			;b636
	ld h,a			;b637
	ld a,a			;b638
	ld h,(hl)		;b639
	or 078h			;b63a
	ld a,a			;b63c
	ld h,(hl)		;b63d
	ld h,a			;b63e
	add a,a			;b63f
	rst 38h			;b640
	or (hl)			;b641
	rst 38h			;b642
	rst 38h			;b643
	ld h,(hl)		;b644
	ld l,a			;b645
	ld l,a			;b646
	rst 38h			;b647
	rst 38h			;b648
	rst 38h			;b649
	rst 30h			;b64a
	ld a,a			;b64b
	rst 38h			;b64c
	rst 38h			;b64d
	ret pe			;b64e
	ld (hl),a		;b64f
	or (hl)			;b650
	ret p			;b651
	adc a,(hl)		;b652
	add a,a			;b653
	or a			;b654
	ret p			;b655
	ld a,b			;b656
	ret pe			;b657
	rst 0			;b658
	ret p			;b659
	ld h,a			;b65a
	adc a,h			;b65b
	adc a,b			;b65c
	ret p			;b65d
	ld h,(hl)		;b65e
	ret z			;b65f
	rst 28h			;b660
	nop			;b661
	rst 38h			;b662
	rst 30h			;b663
	ret pe			;b664
	ld a,e			;b665
	nop			;b666
	or 07eh			;b667
	rst 0			;b669
	nop			;b66a
	rrca			;b66b
	cp h			;b66c
	call pe,00000h		;b66d
	ei			;b670
	adc a,000h		;b671
	nop			;b673
	rrca			;b674
	ld h,a			;b675
	nop			;b676
	nop			;b677
	nop			;b678
	rst 38h			;b679
	nop			;b67a
	nop			;b67b
	ex af,af'		;b67c
	ld h,b			;b67d
	nop			;b67e
	nop			;b67f
	add a,(hl)		;b680
	nop			;b681
	ld a,a			;b682
	nop			;b683
	nop			;b684
	nop			;b685
	or a			;b686
	ret p			;b687
	nop			;b688
	nop			;b689
	ld (hl),a		;b68a
	ret p			;b68b
	nop			;b68c
	nop			;b68d
	adc a,a			;b68e
	nop			;b68f
	nop			;b690
	nop			;b691
	ret p			;b692
	nop			;b693
	nop			;b694
	nop			;b695
	nop			;b696
	nop			;b697
	nop			;b698
	nop			;b699
	nop			;b69a
	nop			;b69b
	nop			;b69c
	nop			;b69d
	nop			;b69e
	nop			;b69f
	nop			;b6a0
	nop			;b6a1
	nop			;b6a2
	or 076h			;b6a3
	ld h,(hl)		;b6a5
	nop			;b6a6
	or 076h			;b6a7
	ld h,(hl)		;b6a9
	nop			;b6aa
	or 076h			;b6ab
	ld h,(hl)		;b6ad
	nop			;b6ae
	or 076h			;b6af
	ld h,(hl)		;b6b1
	nop			;b6b2
	rst 38h			;b6b3
	ld l,a			;b6b4
	rst 38h			;b6b5
	nop			;b6b6
	adc a,a			;b6b7
	rst 38h			;b6b8
	rst 38h			;b6b9
	ex af,af'		;b6ba
	ld a,a			;b6bb
	rst 38h			;b6bc
	rst 38h			;b6bd
	add a,a			;b6be
	ld l,a			;b6bf
	rst 30h			;b6c0
	adc a,b			;b6c1
	ld (hl),a		;b6c2
	ld l,b			;b6c3
	halt			;b6c4
	or 077h			;b6c5
	ld l,b			;b6c7
	halt			;b6c8
	or 077h			;b6c9
	ld l,b			;b6cb
	halt			;b6cc
	or 077h			;b6cd
	ld h,a			;b6cf
	halt			;b6d0
	or 066h			;b6d1
	or 06fh			;b6d3
	or 0ffh			;b6d5
	rst 38h			;b6d7
	rst 30h			;b6d8
	add a,(hl)		;b6d9
	rst 38h			;b6da
	or 0f7h			;b6db
	rst 28h			;b6dd
	xor 0e8h		;b6de
	rst 30h			;b6e0
	rst 28h			;b6e1
	halt			;b6e2
	adc a,b			;b6e3
	rst 20h			;b6e4
	or 07fh			;b6e5
	ret m			;b6e7
	rst 20h			;b6e8
	rst 38h			;b6e9
	halt			;b6ea
	ld l,b			;b6eb
	rst 20h			;b6ec
	rst 38h			;b6ed
	ld a,b			;b6ee
	adc a,b			;b6ef
	ld (hl),a		;b6f0
	rst 38h			;b6f1
	ld (hl),a		;b6f2
	ld (hl),a		;b6f3
	rst 38h			;b6f4
	rst 38h			;b6f5
	ld l,a			;b6f6
	rst 38h			;b6f7
	rst 38h			;b6f8
	or 0ffh			;b6f9
	rst 38h			;b6fb
	ld l,a			;b6fc
	rst 30h			;b6fd
	rst 38h			;b6fe
lb6ffh:
	ld h,a			;b6ff
	ld a,a			;b700
	ret m			;b701
	ld (hl),a		;b702
	ld h,(hl)		;b703
	rst 38h			;b704
	or 066h			;b705
	rst 38h			;b707
	rst 38h			;b708
	rst 30h			;b709
	rst 38h			;b70a
	or 0ffh			;b70b
	ld a,b			;b70d
	rst 38h			;b70e
	ld h,(hl)		;b70f
	ld a,a			;b710
	adc a,b			;b711
	ld h,(hl)		;b712
	ld (hl),a		;b713
	adc a,a			;b714
	ld (hl),a		;b715
	ld (hl),a		;b716
	adc a,b			;b717
	adc a,a			;b718
	ld (hl),a		;b719
	adc a,b			;b71a
	adc a,b			;b71b
	ld h,(hl)		;b71c
	ld a,a			;b71d
	adc a,b			;b71e
	add a,a			;b71f
	or 0ffh			;b720
	ld a,b			;b722
	add a,a			;b723
	or 07bh			;b724
	adc a,b			;b726
	ld a,a			;b727
	rst 38h			;b728
	or 087h			;b729
	ld a,a			;b72b
	ret p			;b72c
	rst 38h			;b72d
	ld (hl),a		;b72e
	or 0f0h			;b72f
	nop			;b731
	ld a,a			;b732
	add a,(hl)		;b733
	ret p			;b734
	nop			;b735
	rst 38h			;b736
	add a,(hl)		;b737
	ret p			;b738
	nop			;b739
	cp 086h			;b73a
	ret p			;b73c
	nop			;b73d
	cp 086h			;b73e
	ret p			;b740
	nop			;b741
	cp h			;b742
	ld a,b			;b743
	ld a,a			;b744
	nop			;b745
	ld h,(hl)		;b746
	ld a,a			;b747
	ret p			;b748
	nop			;b749
	rst 38h			;b74a
	ret p			;b74b
	nop			;b74c
	nop			;b74d
	nop			;b74e
	nop			;b74f
	nop			;b750
	nop			;b751
	nop			;b752
	nop			;b753
	nop			;b754
	nop			;b755
	nop			;b756
	nop			;b757
	nop			;b758
	nop			;b759
	nop			;b75a
	nop			;b75b
	nop			;b75c
	nop			;b75d
	nop			;b75e
	nop			;b75f
	nop			;b760
	nop			;b761
	nop			;b762
	sub b			;b763
	ld h,b			;b764
	nop			;b765
	nop			;b766
	nop			;b767
	add hl,bc		;b768
	nop			;b769
	nop			;b76a
	nop			;b76b
	nop			;b76c
	nop			;b76d
	nop			;b76e
	nop			;b76f
	nop			;b770
	nop			;b771
	nop			;b772
	nop			;b773
	nop			;b774
	nop			;b775
	nop			;b776
	nop			;b777
	nop			;b778
	nop			;b779
	nop			;b77a
	nop			;b77b
	nop			;b77c
	nop			;b77d
	nop			;b77e
	nop			;b77f
	nop			;b780
	nop			;b781
	nop			;b782
	nop			;b783
	nop			;b784
	ex af,af'		;b785
	nop			;b786
	nop			;b787
	nop			;b788
	add a,a			;b789
	nop			;b78a
	nop			;b78b
	sbc a,c			;b78c
	ld l,a			;b78d
	nop			;b78e
	nop			;b78f
	sbc a,c			;b790
	rst 38h			;b791
	nop			;b792
	nop			;b793
	nop			;b794
	add hl,bc		;b795
	nop			;b796
	nop			;b797
	nop			;b798
	nop			;b799
	nop			;b79a
	nop			;b79b
	nop			;b79c
	nop			;b79d
	nop			;b79e
	nop			;b79f
	nop			;b7a0
	nop			;b7a1
	halt			;b7a2
	ret p			;b7a3
	inc c			;b7a4
	rst 18h			;b7a5
	rst 38h			;b7a6
	nop			;b7a7
	rrca			;b7a8
	or 0f0h			;b7a9
	nop			;b7ab
	nop			;b7ac
	rst 38h			;b7ad
	nop			;b7ae
	nop			;b7af
	nop			;b7b0
	rst 38h			;b7b1
	nop			;b7b2
	nop			;b7b3
	nop			;b7b4
	rrca			;b7b5
	nop			;b7b6
	nop			;b7b7
	nop			;b7b8
	rrca			;b7b9
	nop			;b7ba
	nop			;b7bb
	nop			;b7bc
	nop			;b7bd
	nop			;b7be
	nop			;b7bf
	nop			;b7c0
	nop			;b7c1
	call m,0f7d6h		;b7c2
	rst 28h			;b7c5
	ld h,(hl)		;b7c6
	ld h,(hl)		;b7c7
	rst 30h			;b7c8
	rst 28h			;b7c9
	rst 38h			;b7ca
	rst 38h			;b7cb
	rst 30h			;b7cc
	rst 28h			;b7cd
	adc a,(hl)		;b7ce
	ret pe			;b7cf
	or 079h			;b7d0
	ld h,(hl)		;b7d2
	ld h,(hl)		;b7d3
	sbc a,a			;b7d4
	ld sp,hl		;b7d5
	ld l,a			;b7d6
	rst 38h			;b7d7
	or 06fh			;b7d8
	rst 30h			;b7da
	add a,a			;b7db
	halt			;b7dc
	sbc a,c			;b7dd
	rrca			;b7de
	ld h,(hl)		;b7df
	rst 38h			;b7e0
	ld h,(hl)		;b7e1
	ld a,a			;b7e2
	ld a,b			;b7e3
	ld a,a			;b7e4
	ld a,b			;b7e5
	ld l,a			;b7e6
	adc a,b			;b7e7
	rst 38h			;b7e8
	ld (hl),a		;b7e9
	rst 30h			;b7ea
	add a,a			;b7eb
	rst 38h			;b7ec
	halt			;b7ed
	sbc a,b			;b7ee
	ld a,a			;b7ef
	or 066h			;b7f0
	sub a			;b7f2
	ld a,a			;b7f3
	or 06fh			;b7f4
	ld (hl),a		;b7f6
	rst 38h			;b7f7
	ld l,a			;b7f8
	rst 38h			;b7f9
	ld l,a			;b7fa
	rst 38h			;b7fb
	rst 38h			;b7fc
	or 0ffh			;b7fd
	rst 38h			;b7ff
	or 077h			;b800
	add a,a			;b802
	halt			;b803
	rst 38h			;b804
	rst 38h			;b805
	halt			;b806
	ld l,a			;b807
	rst 38h			;b808
	ret p			;b809
	ld h,(hl)		;b80a
	rst 38h			;b80b
	rst 38h			;b80c
	nop			;b80d
	ld l,a			;b80e
	or 0f0h			;b80f
	nop			;b811
	rst 38h			;b812
	ld l,a			;b813
	nop			;b814
	nop			;b815
	or 0f0h			;b816
	nop			;b818
	nop			;b819
	ld a,a			;b81a
	nop			;b81b
	nop			;b81c
	nop			;b81d
	ret p			;b81e
	nop			;b81f
	nop			;b820
	nop			;b821
	ret m			;b822
	ld a,a			;b823
	ret p			;b824
	nop			;b825
	rrca			;b826
	rst 38h			;b827
	nop			;b828
	nop			;b829
	nop			;b82a
	nop			;b82b
	nop			;b82c
	nop			;b82d
	nop			;b82e
	nop			;b82f
	nop			;b830
	nop			;b831
	nop			;b832
	nop			;b833
	nop			;b834
	nop			;b835
	nop			;b836
	nop			;b837
	nop			;b838
	nop			;b839
	nop			;b83a
	nop			;b83b
	nop			;b83c
	nop			;b83d
	nop			;b83e
	nop			;b83f
	nop			;b840
	nop			;b841
	nop			;b842
	nop			;b843
	nop			;b844
	nop			;b845
	nop			;b846
	nop			;b847
	nop			;b848
	nop			;b849
	nop			;b84a
	nop			;b84b
	nop			;b84c
	nop			;b84d
	nop			;b84e
	nop			;b84f
	nop			;b850
	ex af,af'		;b851
	nop			;b852
	nop			;b853
	nop			;b854
	ld b,000h		;b855
	nop			;b857
	sbc a,a			;b858
	nop			;b859
	nop			;b85a
	nop			;b85b
	nop			;b85c
	nop			;b85d
	nop			;b85e
	nop			;b85f
	nop			;b860
	nop			;b861
	nop			;b862
	rst 38h			;b863
	rst 38h			;b864
	rst 38h			;b865
	ex af,af'		;b866
	ld l,a			;b867
	rst 38h			;b868
	ld h,(hl)		;b869
	add a,(hl)		;b86a
	nop			;b86b
	nop			;b86c
	rst 30h			;b86d
	ld h,b			;b86e
	nop			;b86f
	nop			;b870
	rrca			;b871
	nop			;b872
	nop			;b873
	nop			;b874
	rrca			;b875
	nop			;b876
	nop			;b877
	nop			;b878
	ret m			;b879
	nop			;b87a
	nop			;b87b
	sub b			;b87c
	add a,b			;b87d
	nop			;b87e
	nop			;b87f
	nop			;b880
	add hl,bc		;b881
	rst 38h			;b882
	ld h,(hl)		;b883
	rst 30h			;b884
	rst 38h			;b885
	ld (hl),a		;b886
	adc a,b			;b887
	rst 38h			;b888
	nop			;b889
	adc a,(hl)		;b88a
	adc a,a			;b88b
	ret p			;b88c
	nop			;b88d
	rst 38h			;b88e
	ret p			;b88f
	nop			;b890
	nop			;b891
	add a,(hl)		;b892
	ret p			;b893
	nop			;b894
	nop			;b895
	ld l,a			;b896
	nop			;b897
	nop			;b898
	nop			;b899
	sub b			;b89a
	nop			;b89b
	nop			;b89c
	nop			;b89d
	nop			;b89e
	nop			;b89f
	nop			;b8a0
	nop			;b8a1
	nop			;b8a2
	nop			;b8a3
	nop			;b8a4
	nop			;b8a5
	nop			;b8a6
	nop			;b8a7
	nop			;b8a8
	nop			;b8a9
	nop			;b8aa
	nop			;b8ab
	nop			;b8ac
	nop			;b8ad
	nop			;b8ae
	nop			;b8af
	nop			;b8b0
	nop			;b8b1
	nop			;b8b2
	nop			;b8b3
	nop			;b8b4
	nop			;b8b5
	nop			;b8b6
	nop			;b8b7
	nop			;b8b8
	nop			;b8b9
	nop			;b8ba
	nop			;b8bb
	rst 38h			;b8bc
	rst 38h			;b8bd
	nop			;b8be
	rrca			;b8bf
	ret pe			;b8c0
	cp 000h			;b8c1
	nop			;b8c3
	nop			;b8c4
	nop			;b8c5
	nop			;b8c6
	nop			;b8c7
	nop			;b8c8
	nop			;b8c9
	nop			;b8ca
	nop			;b8cb
	nop			;b8cc
	nop			;b8cd
	nop			;b8ce
	nop			;b8cf
	nop			;b8d0
	nop			;b8d1
	nop			;b8d2
	nop			;b8d3
	nop			;b8d4
	nop			;b8d5
	nop			;b8d6
	nop			;b8d7
	nop			;b8d8
	nop			;b8d9
	rst 38h			;b8da
	rst 38h			;b8db
	rst 38h			;b8dc
	rst 38h			;b8dd
	xor 0eeh		;b8de
	xor 08eh		;b8e0
	nop			;b8e2
	nop			;b8e3
	nop			;b8e4
	nop			;b8e5
	nop			;b8e6
	nop			;b8e7
	nop			;b8e8
	nop			;b8e9
	nop			;b8ea
	nop			;b8eb
	nop			;b8ec
	nop			;b8ed
	nop			;b8ee
	nop			;b8ef
	nop			;b8f0
	nop			;b8f1
	nop			;b8f2
	nop			;b8f3
	nop			;b8f4
	nop			;b8f5
	nop			;b8f6
	nop			;b8f7
	nop			;b8f8
	nop			;b8f9
	rst 38h			;b8fa
	nop			;b8fb
	nop			;b8fc
	nop			;b8fd
	ret pe			;b8fe
	rst 38h			;b8ff
	rst 38h			;b900
	nop			;b901
	nop			;b902
	nop			;b903
	nop			;b904
	nop			;b905
	nop			;b906
	nop			;b907
	nop			;b908
	nop			;b909
	nop			;b90a
	nop			;b90b
	nop			;b90c
	nop			;b90d
	nop			;b90e
	nop			;b90f
	nop			;b910
	nop			;b911
	nop			;b912
	nop			;b913
	nop			;b914
	nop			;b915
	nop			;b916
	rst 38h			;b917
	rst 38h			;b918
	rst 38h			;b919
	nop			;b91a
	rrca			;b91b
	adc a,(hl)		;b91c
	add a,a			;b91d
	rrca			;b91e
	rst 38h			;b91f
	ld h,a			;b920
	or 000h			;b921
	nop			;b923
	nop			;b924
	nop			;b925
	nop			;b926
	nop			;b927
	nop			;b928
	nop			;b929
	nop			;b92a
	nop			;b92b
	nop			;b92c
	nop			;b92d
	sub b			;b92e
	nop			;b92f
	nop			;b930
	nop			;b931
	nop			;b932
	nop			;b933
	nop			;b934
	nop			;b935
	ret p			;b936
	nop			;b937
	nop			;b938
	nop			;b939
	ld l,a			;b93a
	ret p			;b93b
	nop			;b93c
	nop			;b93d
	ld l,a			;b93e
	ret p			;b93f
	rst 38h			;b940
	ret p			;b941
	nop			;b942
	rrca			;b943
	rst 38h			;b944
	ret m			;b945
	nop			;b946
	rrca			;b947
	ld a,b			;b948
	ret m			;b949
	nop			;b94a
	rrca			;b94b
	ld a,b			;b94c
	ret m			;b94d
	nop			;b94e
	rrca			;b94f
	ld a,b			;b950
	rst 30h			;b951
	nop			;b952
	rrca			;b953
	ld h,a			;b954
	rst 38h			;b955
	nop			;b956
	rrca			;b957
	rst 38h			;b958
	rst 38h			;b959
	add hl,bc		;b95a
	ex af,af'		;b95b
	rst 38h			;b95c
	halt			;b95d
	nop			;b95e
	ld sp,hl		;b95f
	nop			;b960
	ld l,a			;b961
	add a,(hl)		;b962
	adc a,b			;b963
	adc a,b			;b964
	ld a,b			;b965
	rst 38h			;b966
	adc a,b			;b967
	adc a,b			;b968
	ld l,b			;b969
	add a,(hl)		;b96a
	add a,a			;b96b
	ld (hl),a		;b96c
	ret m			;b96d
	rst 38h			;b96e
	ld a,a			;b96f
	rst 38h			;b970
	or 0ffh			;b971
	rst 38h			;b973
	rst 38h			;b974
	rst 38h			;b975
	or 067h			;b976
	ld (hl),a		;b978
	ld h,(hl)		;b979
	rst 38h			;b97a
	rst 38h			;b97b
	rst 38h			;b97c
	rst 38h			;b97d
	nop			;b97e
	nop			;b97f
	add hl,bc		;b980
	nop			;b981
	adc a,b			;b982
	halt			;b983
	ret pe			;b984
	rst 38h			;b985
	ld l,a			;b986
	rst 38h			;b987
	add a,a			;b988
	rst 38h			;b989
	ret m			;b98a
	ld l,a			;b98b
	rst 38h			;b98c
	rst 30h			;b98d
	rst 38h			;b98e
	rst 38h			;b98f
	adc a,a			;b990
	ld a,b			;b991
	rst 38h			;b992
	rst 38h			;b993
	ld a,a			;b994
	ld a,b			;b995
	ld h,(hl)		;b996
	rst 38h			;b997
	ld l,a			;b998
	ld h,a			;b999
	rst 38h			;b99a
	rst 38h			;b99b
	rst 30h			;b99c
	or 009h			;b99d
	nop			;b99f
	rst 38h			;b9a0
	rst 38h			;b9a1
	rst 30h			;b9a2
	adc a,a			;b9a3
	rst 38h			;b9a4
	ret pe			;b9a5
	rst 38h			;b9a6
	halt			;b9a7
	ld l,a			;b9a8
	ld (hl),a		;b9a9
	ld (hl),a		;b9aa
	rst 38h			;b9ab
	rst 38h			;b9ac
	rst 38h			;b9ad
	ret pe			;b9ae
	ld a,a			;b9af
	rst 38h			;b9b0
	adc a,b			;b9b1
	adc a,b			;b9b2
	ld a,a			;b9b3
	add a,a			;b9b4
	rst 38h			;b9b5
	ld (hl),a		;b9b6
	rst 38h			;b9b7
	rst 38h			;b9b8
	ret pe			;b9b9
	ld h,(hl)		;b9ba
	rst 38h			;b9bb
	add a,a			;b9bc
	ld (hl),a		;b9bd
	rst 38h			;b9be
	rst 38h			;b9bf
	rst 38h			;b9c0
	rst 38h			;b9c1
	adc a,b			;b9c2
	adc a,a			;b9c3
	adc a,b			;b9c4
	adc a,a			;b9c5
	ld (hl),a		;b9c6
	ld a,a			;b9c7
	xor 0efh		;b9c8
	rst 38h			;b9ca
	rst 38h			;b9cb
	adc a,b			;b9cc
	adc a,a			;b9cd
	ld (hl),a		;b9ce
	rst 38h			;b9cf
	ld (hl),a		;b9d0
	ld a,a			;b9d1
	rst 38h			;b9d2
	rst 38h			;b9d3
	ld h,(hl)		;b9d4
	ld l,a			;b9d5
	adc a,b			;b9d6
	ld a,a			;b9d7
	rst 38h			;b9d8
	ret p			;b9d9
	ld (hl),a		;b9da
	ld h,b			;b9db
	nop			;b9dc
	nop			;b9dd
	rst 38h			;b9de
	nop			;b9df
	nop			;b9e0
	nop			;b9e1
	nop			;b9e2
	nop			;b9e3
	ld b,08fh		;b9e4
	nop			;b9e6
	nop			;b9e7
	nop			;b9e8
	rst 38h			;b9e9
	nop			;b9ea
	nop			;b9eb
	nop			;b9ec
	nop			;b9ed
	nop			;b9ee
	nop			;b9ef
	nop			;b9f0
	nop			;b9f1
	nop			;b9f2
	nop			;b9f3
	nop			;b9f4
	nop			;b9f5
	nop			;b9f6
	nop			;b9f7
	nop			;b9f8
	nop			;b9f9
	nop			;b9fa
	nop			;b9fb
	nop			;b9fc
	nop			;b9fd
	nop			;b9fe
	nop			;b9ff
	nop			;ba00
	nop			;ba01
	ret p			;ba02
	nop			;ba03
	ret m			;ba04
	ld (hl),a		;ba05
	nop			;ba06
	nop			;ba07
	rrca			;ba08
	add a,a			;ba09
	nop			;ba0a
	nop			;ba0b
	nop			;ba0c
	rst 38h			;ba0d
	nop			;ba0e
	nop			;ba0f
	sub b			;ba10
	nop			;ba11
	nop			;ba12
	nop			;ba13
	nop			;ba14
	nop			;ba15
	nop			;ba16
	nop			;ba17
	nop			;ba18
	nop			;ba19
	nop			;ba1a
	nop			;ba1b
	nop			;ba1c
	nop			;ba1d
	nop			;ba1e
	nop			;ba1f
	nop			;ba20
	nop			;ba21
	nop			;ba22
	nop			;ba23
	nop			;ba24
	nop			;ba25
	nop			;ba26
	nop			;ba27
	nop			;ba28
	nop			;ba29
	nop			;ba2a
	nop			;ba2b
	rrca			;ba2c
	rst 38h			;ba2d
	nop			;ba2e
	nop			;ba2f
	rst 30h			;ba30
	ret pe			;ba31
	nop			;ba32
	nop			;ba33
	ret m			;ba34
	halt			;ba35
	nop			;ba36
	nop			;ba37
	rst 38h			;ba38
	rst 38h			;ba39
	nop			;ba3a
	nop			;ba3b
	ret m			;ba3c
	rst 20h			;ba3d
	nop			;ba3e
	nop			;ba3f
	rst 30h			;ba40
	add a,(hl)		;ba41
	nop			;ba42
	nop			;ba43
	nop			;ba44
sub_ba45h:
	nop			;ba45
	nop			;ba46
	nop			;ba47
	nop			;ba48
	nop			;ba49
	rst 38h			;ba4a
	rst 38h			;ba4b
	rst 38h			;ba4c
	rst 38h			;ba4d
	ret m			;ba4e
	xor 0eeh		;ba4f
	xor 0ffh		;ba51
	rst 38h			;ba53
	rst 38h			;ba54
	rst 38h			;ba55
	rst 30h			;ba56
	ld (hl),a		;ba57
	ld (hl),a		;ba58
	ld (hl),a		;ba59
	cp 0eeh			;ba5a
	xor 0eeh		;ba5c
	ret m			;ba5e
	add a,a			;ba5f
	adc a,b			;ba60
	adc a,b			;ba61
	nop			;ba62
	nop			;ba63
	nop			;ba64
	nop			;ba65
	nop			;ba66
	nop			;ba67
	nop			;ba68
	nop			;ba69
	rst 38h			;ba6a
	rst 38h			;ba6b
	rst 38h			;ba6c
	rst 38h			;ba6d
	xor 0eeh		;ba6e
	xor 0e8h		;ba70
	rst 38h			;ba72
	rst 38h			;ba73
	rst 38h			;ba74
	rst 38h			;ba75
	ld (hl),a		;ba76
	ld (hl),a		;ba77
	ld (hl),a		;ba78
	ld (hl),a		;ba79
	xor 0eeh		;ba7a
	xor 0eeh		;ba7c
	adc a,b			;ba7e
	adc a,b			;ba7f
	adc a,b			;ba80
	adc a,a			;ba81
	nop			;ba82
	nop			;ba83
	nop			;ba84
	nop			;ba85
	nop			;ba86
	nop			;ba87
	nop			;ba88
	nop			;ba89
	ret p			;ba8a
	nop			;ba8b
	nop			;ba8c
	nop			;ba8d
	adc a,a			;ba8e
	rst 38h			;ba8f
	rst 38h			;ba90
	ret p			;ba91
	rst 38h			;ba92
	ret m			;ba93
	adc a,b			;ba94
	ld a,a			;ba95
	ld (hl),a		;ba96
	ld l,a			;ba97
	rst 30h			;ba98
	adc a,a			;ba99
	xor 07fh		;ba9a
	rst 38h			;ba9c
	rst 38h			;ba9d
	rst 38h			;ba9e
	rst 38h			;ba9f
	cp 0efh			;baa0
	nop			;baa2
	nop			;baa3
	nop			;baa4
	nop			;baa5
	nop			;baa6
	nop			;baa7
	nop			;baa8
	nop			;baa9
	nop			;baaa
	nop			;baab
	nop			;baac
	nop			;baad
	nop			;baae
	nop			;baaf
	nop			;bab0
	nop			;bab1
	rst 38h			;bab2
	rst 38h			;bab3
	nop			;bab4
	nop			;bab5
	adc a,(hl)		;bab6
	add a,a			;bab7
	rst 38h			;bab8
	rst 38h			;bab9
	rst 38h			;baba
	rst 38h			;babb
	rst 38h			;babc
	ret pe			;babd
	rst 38h			;babe
	xor 07fh		;babf
	ld (hl),a		;bac1
	nop			;bac2
	nop			;bac3
	nop			;bac4
	rst 38h			;bac5
	nop			;bac6
	nop			;bac7
	rrca			;bac8
	ld a,b			;bac9
	nop			;baca
	nop			;bacb
	nop			;bacc
	rst 38h			;bacd
	nop			;bace
	rrca			;bacf
	rst 38h			;bad0
	rst 38h			;bad1
	rrca			;bad2
	ret m			;bad3
	ret pe			;bad4
	ld a,a			;bad5
	rst 38h			;bad6
	rst 38h			;bad7
	add a,a			;bad8
	rst 38h			;bad9
	adc a,a			;bada
	ret pe			;badb
	rst 38h			;badc
	rst 38h			;badd
	ld a,a			;bade
	add a,a			;badf
	ret m			;bae0
	xor 0ffh		;bae1
	rst 38h			;bae3
	nop			;bae4
	nop			;bae5
	ret pe			;bae6
	halt			;bae7
	rst 38h			;bae8
	nop			;bae9
	ret m			;baea
	ret pe			;baeb
	ld l,a			;baec
	ret p			;baed
	ld l,a			;baee
	rst 38h			;baef
	rst 38h			;baf0
	rst 38h			;baf1
	rst 38h			;baf2
	adc a,(hl)		;baf3
	xor 0efh		;baf4
	ld h,a			;baf6
	adc a,b			;baf7
	adc a,b			;baf8
	adc a,a			;baf9
	rst 38h			;bafa
	rst 30h			;bafb
	ld (hl),a		;bafc
	ld a,a			;bafd
	xor 08fh		;bafe
	ld h,(hl)		;bb00
	ld l,a			;bb01
	nop			;bb02
	nop			;bb03
	nop			;bb04
	nop			;bb05
	nop			;bb06
	nop			;bb07
	nop			;bb08
	nop			;bb09
	nop			;bb0a
	nop			;bb0b
	nop			;bb0c
	nop			;bb0d
	nop			;bb0e
	nop			;bb0f
	nop			;bb10
	nop			;bb11
	rrca			;bb12
	rst 38h			;bb13
	rst 38h			;bb14
	ret p			;bb15
	ret m			;bb16
	xor 0eeh		;bb17
	adc a,a			;bb19
	or 077h			;bb1a
	ld (hl),a		;bb1c
	ld l,a			;bb1d
	rst 38h			;bb1e
	rst 38h			;bb1f
	rst 38h			;bb20
	rst 38h			;bb21
	nop			;bb22
	nop			;bb23
	rst 30h			;bb24
	add a,(hl)		;bb25
	nop			;bb26
	nop			;bb27
	rst 30h			;bb28
	add a,(hl)		;bb29
	nop			;bb2a
	nop			;bb2b
	rst 30h			;bb2c
	add a,(hl)		;bb2d
	nop			;bb2e
	nop			;bb2f
	rst 38h			;bb30
	rst 38h			;bb31
	nop			;bb32
	nop			;bb33
	sub 087h		;bb34
	nop			;bb36
	nop			;bb37
	ld a,a			;bb38
	ld l,a			;bb39
	add hl,bc		;bb3a
	ex af,af'		;bb3b
	ret p			;bb3c
	rst 38h			;bb3d
	nop			;bb3e
	sbc a,a			;bb3f
	nop			;bb40
	ld a,c			;bb41
	ret m			;bb42
	rst 38h			;bb43
	adc a,b			;bb44
	ld (hl),a		;bb45
	ret m			;bb46
	add a,a			;bb47
	adc a,a			;bb48
	rst 38h			;bb49
	ret m			;bb4a
	rst 38h			;bb4b
	adc a,b			;bb4c
	adc a,b			;bb4d
	or 066h			;bb4e
	ld h,(hl)		;bb50
	ld h,(hl)		;bb51
	ld l,a			;bb52
	rst 38h			;bb53
	rst 38h			;bb54
	rst 38h			;bb55
	or 066h			;bb56
	ld (hl),a		;bb58
	ld (hl),a		;bb59
	rst 38h			;bb5a
	rst 38h			;bb5b
	rst 38h			;bb5c
	rst 38h			;bb5d
	nop			;bb5e
	nop			;bb5f
	nop			;bb60
	nop			;bb61
	ld a,a			;bb62
	adc a,b			;bb63
	ld (hl),a		;bb64
	ld a,a			;bb65
	rst 38h			;bb66
	adc a,b			;bb67
	rst 38h			;bb68
	rst 38h			;bb69
	adc a,b			;bb6a
	adc a,b			;bb6b
	rst 38h			;bb6c
	ld h,a			;bb6d
	ld h,(hl)		;bb6e
	ld h,(hl)		;bb6f
	rst 38h			;bb70
	rst 38h			;bb71
	rst 38h			;bb72
	rst 38h			;bb73
	rst 38h			;bb74
	adc a,b			;bb75
	halt			;bb76
	ld h,(hl)		;bb77
	rst 38h			;bb78
	ld h,(hl)		;bb79
	rst 38h			;bb7a
	rst 38h			;bb7b
	rst 38h			;bb7c
	rst 38h			;bb7d
	nop			;bb7e
	nop			;bb7f
	add hl,bc		;bb80
	sub b			;bb81
	adc a,(hl)		;bb82
	add a,a			;bb83
	ret m			;bb84
	adc a,a			;bb85
	rst 38h			;bb86
	rst 38h			;bb87
	rst 38h			;bb88
	rst 38h			;bb89
	ld a,b			;bb8a
	adc a,b			;bb8b
	ld (hl),a		;bb8c
	ld l,a			;bb8d
	rst 38h			;bb8e
	rst 38h			;bb8f
	rst 38h			;bb90
	rst 38h			;bb91
	ret pe			;bb92
	halt			;bb93
	ld l,a			;bb94
	rst 38h			;bb95
	ld h,a			;bb96
	ld h,(hl)		;bb97
	rst 38h			;bb98
	rst 38h			;bb99
	rst 38h			;bb9a
	rst 38h			;bb9b
	rst 38h			;bb9c
	rst 38h			;bb9d
	rrca			;bb9e
	add a,a			;bb9f
	ret p			;bba0
	rrca			;bba1
	rst 38h			;bba2
	ld (hl),a		;bba3
	rst 38h			;bba4
	rst 38h			;bba5
	adc a,b			;bba6
	rst 38h			;bba7
	ld a,b			;bba8
	add a,a			;bba9
	ld h,(hl)		;bbaa
	rst 30h			;bbab
	adc a,(hl)		;bbac
	ret pe			;bbad
	rst 38h			;bbae
	rst 30h			;bbaf
	adc a,(hl)		;bbb0
	ret pe			;bbb1
	rst 38h			;bbb2
	rst 30h			;bbb3
	adc a,b			;bbb4
	adc a,b			;bbb5
	rst 38h			;bbb6
	or 077h			;bbb7
	ld (hl),a		;bbb9
	add a,a			;bbba
	rst 38h			;bbbb
	ld h,(hl)		;bbbc
	ld h,(hl)		;bbbd
	ld a,(hl)		;bbbe
	adc a,e			;bbbf
	rst 38h			;bbc0
	rst 38h			;bbc1
	rst 38h			;bbc2
	ld a,a			;bbc3
	ret m			;bbc4
	adc a,b			;bbc5
	rst 38h			;bbc6
	ret m			;bbc7
	or 066h			;bbc8
	ld a,a			;bbca
	ld l,b			;bbcb
	rst 38h			;bbcc
	rst 38h			;bbcd
	ld a,a			;bbce
	rst 38h			;bbcf
	rst 38h			;bbd0
	ld a,b			;bbd1
	ld a,a			;bbd2
	ld l,b			;bbd3
	adc a,a			;bbd4
	ld (hl),a		;bbd5
	ld l,a			;bbd6
	rst 38h			;bbd7
	rst 38h			;bbd8
	or 0ffh			;bbd9
	rst 38h			;bbdb
	rst 38h			;bbdc
	rst 38h			;bbdd
	ret p			;bbde
	nop			;bbdf
	rst 38h			;bbe0
	rst 38h			;bbe1
	adc a,b			;bbe2
	ld a,a			;bbe3
	rst 38h			;bbe4
	rst 38h			;bbe5
	ld h,(hl)		;bbe6
	rst 38h			;bbe7
	ld h,(hl)		;bbe8
	ld l,a			;bbe9
	rst 38h			;bbea
	rst 38h			;bbeb
	rst 38h			;bbec
	adc a,a			;bbed
	xor 0eeh		;bbee
	add a,a			;bbf0
	rst 38h			;bbf1
	ld (hl),a		;bbf2
	ld (hl),a		;bbf3
	ld (hl),a		;bbf4
	ret p			;bbf5
	ld h,(hl)		;bbf6
	ld h,(hl)		;bbf7
	ld l,a			;bbf8
	ret p			;bbf9
	rst 38h			;bbfa
	rst 38h			;bbfb
	rst 38h			;bbfc
	nop			;bbfd
	rst 38h			;bbfe
sub_bbffh:
	rst 38h			;bbff
	ret p			;bc00
	nop			;bc01
	rst 30h			;bc02
	adc a,b			;bc03
	adc a,b			;bc04
	ld a,a			;bc05
	or 077h			;bc06
	ld (hl),a		;bc08
	ld l,a			;bc09
	rst 38h			;bc0a
	rst 38h			;bc0b
	rst 38h			;bc0c
	rst 38h			;bc0d
	rst 38h			;bc0e
	ld h,(hl)		;bc0f
	ld h,(hl)		;bc10
	rst 38h			;bc11
	rrca			;bc12
	rst 38h			;bc13
	rst 38h			;bc14
	ret p			;bc15
	nop			;bc16
	nop			;bc17
	nop			;bc18
	nop			;bc19
	nop			;bc1a
	nop			;bc1b
	nop			;bc1c
	nop			;bc1d
	nop			;bc1e
	nop			;bc1f
	nop			;bc20
	nop			;bc21
	nop			;bc22
	nop			;bc23
	rst 38h			;bc24
	ld h,(hl)		;bc25
	nop			;bc26
	nop			;bc27
	nop			;bc28
	cp 000h			;bc29
	nop			;bc2b
	nop			;bc2c
	rrca			;bc2d
	nop			;bc2e
	nop			;bc2f
	nop			;bc30
	nop			;bc31
	nop			;bc32
	nop			;bc33
	add hl,bc		;bc34
	nop			;bc35
	nop			;bc36
	nop			;bc37
	nop			;bc38
	add hl,bc		;bc39
	nop			;bc3a
	nop			;bc3b
	nop			;bc3c
	nop			;bc3d
	nop			;bc3e
	nop			;bc3f
	nop			;bc40
	nop			;bc41
	ret m			;bc42
	cp b			;bc43
	halt			;bc44
	ret p			;bc45
	rrca			;bc46
	adc a,(hl)		;bc47
	adc a,a			;bc48
	nop			;bc49
	nop			;bc4a
	rst 38h			;bc4b
	ret p			;bc4c
	nop			;bc4d
	nop			;bc4e
	nop			;bc4f
	nop			;bc50
	nop			;bc51
	nop			;bc52
	nop			;bc53
	nop			;bc54
	nop			;bc55
	nop			;bc56
lbc57h:
	nop			;bc57
	nop			;bc58
	nop			;bc59
	nop			;bc5a
	nop			;bc5b
	nop			;bc5c
	nop			;bc5d
	nop			;bc5e
	nop			;bc5f
	nop			;bc60
	nop			;bc61
	ld h,(hl)		;bc62
	ld l,a			;bc63
	ret p			;bc64
	nop			;bc65
	add a,a			;bc66
	halt			;bc67
	ret p			;bc68
	nop			;bc69
	ret pe			;bc6a
	halt			;bc6b
	ret p			;bc6c
	nop			;bc6d
	ei			;bc6e
	cp e			;bc6f
	ret p			;bc70
	nop			;bc71
	rrca			;bc72
	add a,a			;bc73
	ret p			;bc74
	nop			;bc75
	nop			;bc76
	rst 38h			;bc77
	ret p			;bc78
	nop			;bc79
	nop			;bc7a
	nop			;bc7b
	nop			;bc7c
	nop			;bc7d
	nop			;bc7e
	nop			;bc7f
	nop			;bc80
	nop			;bc81
	nop			;bc82
	nop			;bc83
	nop			;bc84
	nop			;bc85
	nop			;bc86
	nop			;bc87
	nop			;bc88
	nop			;bc89
	nop			;bc8a
	nop			;bc8b
	nop			;bc8c
	nop			;bc8d
	nop			;bc8e
	nop			;bc8f
	nop			;bc90
	nop			;bc91
	nop			;bc92
	rst 38h			;bc93
	rst 38h			;bc94
	rst 38h			;bc95
	rrca			;bc96
	rst 20h			;bc97
	xor 0eeh		;bc98
	rrca			;bc9a
	ld a,a			;bc9b
	adc a,b			;bc9c
	adc a,b			;bc9d
	rrca			;bc9e
	ld a,a			;bc9f
	adc a,b			;bca0
	rst 38h			;bca1
	nop			;bca2
	nop			;bca3
	nop			;bca4
	nop			;bca5
	nop			;bca6
	nop			;bca7
	nop			;bca8
	nop			;bca9
	nop			;bcaa
	nop			;bcab
	nop			;bcac
	nop			;bcad
	nop			;bcae
	nop			;bcaf
	nop			;bcb0
	nop			;bcb1
	rst 38h			;bcb2
	rrca			;bcb3
	rst 38h			;bcb4
	rrca			;bcb5
	xor 0f8h		;bcb6
	rst 28h			;bcb8
	rst 38h			;bcb9
	ld l,b			;bcba
	ld l,a			;bcbb
	rst 38h			;bcbc
	ld a,b			;bcbd
	ret m			;bcbe
	ret m			;bcbf
	rst 38h			;bcc0
	adc a,(hl)		;bcc1
	nop			;bcc2
	nop			;bcc3
	nop			;bcc4
	nop			;bcc5
	nop			;bcc6
	nop			;bcc7
	nop			;bcc8
	rst 38h			;bcc9
	nop			;bcca
	nop			;bccb
	rrca			;bccc
	ld e,000h		;bccd
	nop			;bccf
	pop af			;bcd0
	xor 000h		;bcd1
	rrca			;bcd3
	jr lbc57h		;bcd4
	nop			;bcd6
	rrca			;bcd7
	rra			;bcd8
	ret m			;bcd9
	nop			;bcda
	pop af			;bcdb
	adc a,a			;bcdc
	adc a,a			;bcdd
	nop			;bcde
	pop af			;bcdf
	adc a,a			;bce0
	adc a,a			;bce1
	nop			;bce2
	nop			;bce3
	rst 38h			;bce4
	rst 38h			;bce5
	rst 38h			;bce6
	rst 38h			;bce7
	cp 0eeh			;bce8
	xor 0efh		;bcea
	pop hl			;bcec
	ld de,0eeeeh		;bced
	pop af			;bcf0
	ld de,01e11h		;bcf1
	rra			;bcf4
	ld de,01111h		;bcf5
	rst 28h			;bcf8
	ld de,01e81h		;bcf9
	xor 0f1h		;bcfc
	adc a,b			;bcfe
	adc a,b			;bcff
	add a,c			;bd00
	ret m			;bd01
	rst 38h			;bd02
	nop			;bd03
	nop			;bd04
	nop			;bd05
	pop hl			;bd06
	rst 38h			;bd07
	nop			;bd08
	nop			;bd09
	ld e,011h		;bd0a
	rst 38h			;bd0c
	ret p			;bd0d
	ld de,01eefh		;bd0e
	rst 28h			;bd11
	ld de,0f111h		;bd12
	xor 011h		;bd15
	ld de,011f8h		;bd17
	ld de,08f11h		;bd1a
	ld de,01111h		;bd1d
	rra			;bd20
	add a,c			;bd21
	nop			;bd22
	nop			;bd23
	nop			;bd24
	nop			;bd25
	nop			;bd26
	nop			;bd27
	nop			;bd28
	nop			;bd29
	nop			;bd2a
	nop			;bd2b
	nop			;bd2c
	nop			;bd2d
	ret p			;bd2e
	nop			;bd2f
	nop			;bd30
	nop			;bd31
	rra			;bd32
	rst 38h			;bd33
	nop			;bd34
	nop			;bd35
	pop hl			;bd36
	xor 0f0h		;bd37
	nop			;bd39
	rra			;bd3a
	ld de,000efh		;bd3b
	rra			;bd3e
	add a,c			;bd3f
	ld e,0f0h		;bd40
	nop			;bd42
	nop			;bd43
	nop			;bd44
	nop			;bd45
	nop			;bd46
	nop			;bd47
	nop			;bd48
	nop			;bd49
	nop			;bd4a
	nop			;bd4b
	nop			;bd4c
	nop			;bd4d
	nop			;bd4e
	nop			;bd4f
	nop			;bd50
	nop			;bd51
	nop			;bd52
	nop			;bd53
	nop			;bd54
	nop			;bd55
	nop			;bd56
	nop			;bd57
	nop			;bd58
	rrca			;bd59
	nop			;bd5a
	nop			;bd5b
	rrca			;bd5c
	rst 38h			;bd5d
	nop			;bd5e
	nop			;bd5f
	pop af			;bd60
	ld de,0ff0fh		;bd61
	rst 38h			;bd64
	ret m			;bd65
	rrca			;bd66
	push af			;bd67
	ld d,l			;bd68
	ret m			;bd69
	rrca			;bd6a
	push af			;bd6b
lbd6ch:
	ld d,l			;bd6c
	ret m			;bd6d
	pop af			;bd6e
	push af			;bd6f
	ld d,l			;bd70
	ret m			;bd71
	pop af			;bd72
	call p,0f844h		;bd73
	jr lbd6ch		;bd76
	ld b,h			;bd78
	ret m			;bd79
	rst 38h			;bd7a
	call p,0ff44h		;bd7b
	rra			;bd7e
	di			;bd7f
	inc sp			;bd80
	ret m			;bd81
	adc a,b			;bd82
	ld de,0f818h		;bd83
	add a,c			;bd86
	ld de,0f811h		;bd87
	ld de,01111h		;bd8a
	ret m			;bd8d
	ld de,01111h		;bd8e
	ret m			;bd91
	ld de,01811h		;bd92
	ret m			;bd95
	add a,c			;bd96
	ld de,0f81fh		;bd97
	add a,c			;bd9a
	ld de,0f88fh		;bd9b
	rst 38h			;bd9e
	ret m			;bd9f
	rst 38h			;bda0
	adc a,b			;bda1
	ld de,01f11h		;bda2
	adc a,b			;bda5
lbda6h:
	add a,c			;bda6
lbda7h:
	ld de,0f811h		;bda7
	adc a,b			;bdaa
	adc a,b			;bdab
	jr lbda6h		;bdac
	add a,c			;bdae
	ld de,0f81eh		;bdaf
	ld de,01111h		;bdb2
	ret m			;bdb5
	ld de,01111h		;bdb6
	ret m			;bdb9
	ld de,01f11h		;bdba
	add a,c			;bdbd
	ld de,01f11h		;bdbe
	add a,c			;bdc1
	ld de,011f8h		;bdc2
	ret p			;bdc5
	add a,c			;bdc6
	ret m			;bdc7
	ld de,0111fh		;bdc8
	rra			;bdcb
	ld de,0111fh		;bdcc
	rra			;bdcf
	adc a,b			;bdd0
	rra			;bdd1
	ld de,0881fh		;bdd2
	adc a,a			;bdd5
	ld de,0811fh		;bdd6
	rra			;bdd9
	ld de,011f8h		;bdda
	rst 38h			;bddd
	ld de,011f8h		;bdde
	rst 38h			;bde1
	nop			;bde2
	rrca			;bde3
	ld de,00011h		;bde4
	rrca			;bde7
	add a,c			;bde8
	adc a,b			;bde9
	nop			;bdea
	rrca			;bdeb
	add a,c			;bdec
	adc a,b			;bded
	nop			;bdee
	rrca			;bdef
	add a,c			;bdf0
	adc a,b			;bdf1
	nop			;bdf2
	nop			;bdf3
	ret m			;bdf4
	jr lbdf7h		;bdf5
lbdf7h:
	nop			;bdf7
	rrca			;bdf8
	ret m			;bdf9
	nop			;bdfa
	nop			;bdfb
	nop			;bdfc
	rrca			;bdfd
	nop			;bdfe
	nop			;bdff
	nop			;be00
	nop			;be01
	ld de,0331fh		;be02
	rst 38h			;be05
	add a,c			;be06
	rra			;be07
	inc sp			;be08
	ccf			;be09
	adc a,b			;be0a
	ld de,02ff2h		;be0b
	adc a,b			;be0e
	add a,c			;be0f
	jp p,0882fh		;be10
	add a,c			;be13
	rst 38h			;be14
	rst 38h			;be15
	jr lbda7h		;be16
	rst 38h			;be18
	rst 38h			;be19
	rst 38h			;be1a
	ret p			;be1b
	rrca			;be1c
	ccf			;be1d
	nop			;be1e
	nop			;be1f
	rrca			;be20
	ccf			;be21
	adc a,b			;be22
	adc a,b			;be23
	rst 38h			;be24
	add a,c			;be25
	rst 38h			;be26
	rst 38h			;be27
	rst 38h			;be28
	jr lbe5eh		;be29
	inc sp			;be2b
	pop af			;be2c
	adc a,b			;be2d
	rst 38h			;be2e
	rst 38h			;be2f
	ret m			;be30
	adc a,b			;be31
	rst 38h			;be32
	rst 38h			;be33
	ret m			;be34
	adc a,b			;be35
	ld de,0ff88h		;be36
	adc a,b			;be39
	add a,c			;be3a
	ld de,0ff88h		;be3b
	ret m			;be3e
	adc a,b			;be3f
	adc a,b			;be40
	rst 38h			;be41
	add a,c			;be42
	ld de,0818fh		;be43
	adc a,b			;be46
	adc a,b			;be47
	ret m			;be48
	adc a,b			;be49
	adc a,b			;be4a
	adc a,a			;be4b
	ret m			;be4c
	adc a,b			;be4d
	adc a,b			;be4e
	adc a,a			;be4f
	adc a,b			;be50
	adc a,a			;be51
	adc a,b			;be52
	ret m			;be53
	adc a,b			;be54
	ret m			;be55
	adc a,a			;be56
	adc a,b			;be57
	adc a,a			;be58
	rst 38h			;be59
	ret m			;be5a
	rst 38h			;be5b
	rst 38h			;be5c
	ret m			;be5d
lbe5eh:
	rst 38h			;be5e
	rst 38h			;be5f
	adc a,b			;be60
	adc a,b			;be61
	rra			;be62
	add a,c			;be63
	rra			;be64
	rst 28h			;be65
	adc a,a			;be66
	ld de,0ff1fh		;be67
	ret m			;be6a
	add a,c			;be6b
	pop af			;be6c
	rra			;be6d
	adc a,b			;be6e
	adc a,a			;be6f
	ld de,0881fh		;be70
	pop af			;be73
	ld de,0ffffh		;be74
	ld de,0ff81h		;be77
	ld de,01188h		;be7a
	rst 38h			;be7d
	adc a,b			;be7e
	add a,c			;be7f
	rra			;be80
	rst 38h			;be81
	nop			;be82
	nop			;be83
	ld b,053h		;be84
	nop			;be86
	nop			;be87
	rrca			;be88
	ld d,e			;be89
	nop			;be8a
	nop			;be8b
	rrca			;be8c
	ld d,e			;be8d
	nop			;be8e
	nop			;be8f
	rrca			;be90
	ld d,e			;be91
	nop			;be92
	nop			;be93
	rrca			;be94
	ld d,e			;be95
	nop			;be96
	nop			;be97
	rrca			;be98
	ld d,e			;be99
	nop			;be9a
	nop			;be9b
	rrca			;be9c
	ld d,e			;be9d
	nop			;be9e
	nop			;be9f
	rrca			;bea0
	ld d,e			;bea1
	rst 38h			;bea2
	rst 38h			;bea3
	rst 38h			;bea4
	adc a,b			;bea5
	pop af			;bea6
	adc a,b			;bea7
	adc a,b			;bea8
	adc a,b			;bea9
	pop af			;beaa
	ld de,08818h		;beab
	pop af			;beae
	jr lbec2h		;beaf
	ld de,011ffh		;beb1
	adc a,b			;beb4
	adc a,b			;beb5
	rst 38h			;beb6
	rst 38h			;beb7
	adc a,b			;beb8
	adc a,b			;beb9
	rst 38h			;beba
	rst 38h			;bebb
	rst 38h			;bebc
	rst 38h			;bebd
	or 0ffh			;bebe
	rst 38h			;bec0
	rst 38h			;bec1
lbec2h:
	adc a,b			;bec2
	adc a,b			;bec3
	adc a,b			;bec4
	adc a,b			;bec5
	adc a,b			;bec6
	adc a,b			;bec7
	adc a,b			;bec8
	adc a,b			;bec9
	adc a,b			;beca
	adc a,b			;becb
	adc a,b			;becc
	adc a,b			;becd
	adc a,b			;bece
	adc a,b			;becf
	adc a,b			;bed0
	adc a,b			;bed1
	adc a,b			;bed2
	adc a,b			;bed3
	adc a,b			;bed4
	adc a,a			;bed5
	adc a,b			;bed6
	adc a,b			;bed7
	rst 38h			;bed8
	rst 38h			;bed9
	rst 38h			;beda
	rst 38h			;bedb
	rst 38h			;bedc
	rst 38h			;bedd
	rst 38h			;bede
	rst 38h			;bedf
	or 066h			;bee0
	adc a,b			;bee2
	add a,c			;bee3
	rra			;bee4
	rst 38h			;bee5
	adc a,b			;bee6
	ld de,0f7ffh		;bee7
	add a,c			;beea
	rra			;beeb
	rst 38h			;beec
	halt			;beed
	adc a,a			;beee
	rst 38h			;beef
	or 076h			;bef0
	rst 38h			;bef2
	rst 38h			;bef3
	ld h,a			;bef4
	ld h,(hl)		;bef5
	rst 38h			;bef6
	ld h,(hl)		;bef7
	ld h,a			;bef8
	ld h,(hl)		;bef9
	ld h,(hl)		;befa
	ld h,(hl)		;befb
	halt			;befc
	ld h,(hl)		;befd
	ld h,(hl)		;befe
	ld h,(hl)		;beff
	ld h,(hl)		;bf00
	ld l,a			;bf01
	nop			;bf02
	nop			;bf03
	nop			;bf04
	nop			;bf05
	nop			;bf06
	nop			;bf07
	nop			;bf08
	nop			;bf09
	nop			;bf0a
	nop			;bf0b
	nop			;bf0c
	nop			;bf0d
	ld c,0e0h		;bf0e
	nop			;bf10
	nop			;bf11
	ld c,0e0h		;bf12
	nop			;bf14
	nop			;bf15
	nop			;bf16
	nop			;bf17
	nop			;bf18
	nop			;bf19
	nop			;bf1a
	nop			;bf1b
	nop			;bf1c
	nop			;bf1d
	nop			;bf1e
	nop			;bf1f
	nop			;bf20
	nop			;bf21
	nop			;bf22
	nop			;bf23
	nop			;bf24
	nop			;bf25
	nop			;bf26
	nop			;bf27
	nop			;bf28
	nop			;bf29
	nop			;bf2a
	nop			;bf2b
	nop			;bf2c
	nop			;bf2d
	nop			;bf2e
	nop			;bf2f
	nop			;bf30
	nop			;bf31
	nop			;bf32
	nop			;bf33
	nop			;bf34
	nop			;bf35
	nop			;bf36
	nop			;bf37
	nop			;bf38
	nop			;bf39
	nop			;bf3a
	nop			;bf3b
	nop			;bf3c
	nop			;bf3d
	nop			;bf3e
	nop			;bf3f
	nop			;bf40
	ret po			;bf41
	nop			;bf42
	nop			;bf43
	nop			;bf44
	nop			;bf45
	nop			;bf46
	nop			;bf47
	nop			;bf48
	nop			;bf49
	nop			;bf4a
	nop			;bf4b
	nop			;bf4c
	nop			;bf4d
	nop			;bf4e
	nop			;bf4f
	nop			;bf50
	nop			;bf51
	nop			;bf52
	nop			;bf53
	nop			;bf54
	nop			;bf55
	nop			;bf56
	ld c,000h		;bf57
	nop			;bf59
	nop			;bf5a
	ret po			;bf5b
	nop			;bf5c
	nop			;bf5d
	ld c,000h		;bf5e
	nop			;bf60
	nop			;bf61
	nop			;bf62
	nop			;bf63
	nop			;bf64
	nop			;bf65
	nop			;bf66
	nop			;bf67
	nop			;bf68
	ld c,000h		;bf69
	nop			;bf6b
	nop			;bf6c
	ret po			;bf6d
	nop			;bf6e
	nop			;bf6f
	ld c,000h		;bf70
	nop			;bf72
	nop			;bf73
	xor 000h		;bf74
	nop			;bf76
	ld c,0e0h		;bf77
	nop			;bf79
	nop			;bf7a
	nop			;bf7b
	nop			;bf7c
	nop			;bf7d
	ret po			;bf7e
	nop			;bf7f
	nop			;bf80
	nop			;bf81
	nop			;bf82
	nop			;bf83
	nop			;bf84
	nop			;bf85
	nop			;bf86
	nop			;bf87
	nop			;bf88
	nop			;bf89
	nop			;bf8a
	xor 000h		;bf8b
	nop			;bf8d
	nop			;bf8e
	xor 000h		;bf8f
	nop			;bf91
	nop			;bf92
	nop			;bf93
	nop			;bf94
	nop			;bf95
	nop			;bf96
	nop			;bf97
	nop			;bf98
	nop			;bf99
	nop			;bf9a
	nop			;bf9b
	nop			;bf9c
	nop			;bf9d
	nop			;bf9e
	nop			;bf9f
	nop			;bfa0
	nop			;bfa1
	nop			;bfa2
	nop			;bfa3
	nop			;bfa4
	nop			;bfa5
	nop			;bfa6
	ret po			;bfa7
	nop			;bfa8
	nop			;bfa9
	nop			;bfaa
	nop			;bfab
	nop			;bfac
	nop			;bfad
	nop			;bfae
	nop			;bfaf
	nop			;bfb0
	nop			;bfb1
	nop			;bfb2
	nop			;bfb3
	nop			;bfb4
	nop			;bfb5
	nop			;bfb6
	nop			;bfb7
	nop			;bfb8
	nop			;bfb9
	nop			;bfba
	nop			;bfbb
	nop			;bfbc
	nop			;bfbd
	nop			;bfbe
	nop			;bfbf
	nop			;bfc0
	nop			;bfc1
	nop			;bfc2
	nop			;bfc3
	nop			;bfc4
	nop			;bfc5
	nop			;bfc6
	nop			;bfc7
	nop			;bfc8
	nop			;bfc9
	nop			;bfca
	nop			;bfcb
	nop			;bfcc
	nop			;bfcd
	nop			;bfce
	nop			;bfcf
	nop			;bfd0
	nop			;bfd1
	nop			;bfd2
	nop			;bfd3
	nop			;bfd4
	nop			;bfd5
	nop			;bfd6
	nop			;bfd7
	nop			;bfd8
	nop			;bfd9
	xor 000h		;bfda
	nop			;bfdc
	nop			;bfdd
	xor 000h		;bfde
	nop			;bfe0
	nop			;bfe1
	ld c,000h		;bfe2
	nop			;bfe4
	nop			;bfe5
	nop			;bfe6
	nop			;bfe7
	nop			;bfe8
	nop			;bfe9
	nop			;bfea
	xor 0e0h		;bfeb
	nop			;bfed
	nop			;bfee
	xor 0eeh		;bfef
	nop			;bff1
	nop			;bff2
	xor 0eeh		;bff3
	nop			;bff5
	nop			;bff6
	ld c,0eeh		;bff7
	ret po			;bff9
	nop			;bffa
	nop			;bffb
	xor 0e0h		;bffc
	nop			;bffe
	nop			;bfff
