; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank21_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank21.bin

	org 0a000h

	inc b			;a000
	ld d,d			;a001
	rlca			;a002
	ld d,h			;a003
	ld (bc),a		;a004
	ld d,c			;a005
	add a,d			;a006
	ld d,d			;a007
	ld d,e			;a008
	ex af,af'		;a009
	ld d,h			;a00a
	ld (bc),a		;a00b
	ld d,c			;a00c
	add a,d			;a00d
	ld b,e			;a00e
	ld (02103h),a		;a00f
	add a,c			;a012
	ld (04303h),a		;a013
	add a,c			;a016
	ld (02107h),a		;a017
	add a,c			;a01a
	ld (04303h),a		;a01b
	add a,e			;a01e
	ld (02121h),a		;a01f
	inc bc			;a022
	ld d,b			;a023
	inc b			;a024
	ld d,d			;a025
	inc b			;a026
	ld d,h			;a027
	add a,e			;a028
	ld d,c			;a029
	ld d,h			;a02a
	ld d,h			;a02b
	inc bc			;a02c
	ld b,e			;a02d
	inc bc			;a02e
	ld (04305h),a		;a02f
	ld (bc),a		;a032
	ld (02183h),a		;a033
	ld (00332h),a		;a036
	inc bc			;a039
	dec b			;a03a
	ld (02184h),a		;a03b
	ld sp,05141h		;a03e
	inc bc			;a041
	ld b,c			;a042
	inc b			;a043
	ld d,c			;a044
	ld (bc),a		;a045
	ld d,h			;a046
	inc bc			;a047
	ld b,e			;a048
	inc b			;a049
	ld d,e			;a04a
	inc bc			;a04b
	ld b,e			;a04c
	dec b			;a04d
	ld (02102h),a		;a04e
	ex af,af'		;a051
	ld (04384h),a		;a052
	ld (02132h),a		;a055
	nop			;a058
	inc bc			;a059
	nop			;a05a
	add a,c			;a05b
	djnz la063h		;a05c
	nop			;a05e
	add a,c			;a05f
	jr nz,la067h		;a060
	nop			;a062
la063h:
	add a,c			;a063
	inc b			;a064
	ld b,000h		;a065
la067h:
	add a,h			;a067
	ex af,af'		;a068
	nop			;a069
	nop			;a06a
	inc b			;a06b
	rlca			;a06c
	nop			;a06d
	add a,c			;a06e
	djnz la075h		;a06f
	nop			;a071
	add a,c			;a072
	ex af,af'		;a073
	rlca			;a074
la075h:
	nop			;a075
	add a,c			;a076
	inc b			;a077
	inc b			;a078
la079h:
	nop			;a079
	add a,c			;a07a
	djnz la083h		;a07b
	nop			;a07d
	add a,c			;a07e
	jr nz,la08bh		;a07f
	nop			;a081
	add a,c			;a082
la083h:
	inc b			;a083
	inc bc			;a084
	nop			;a085
	add a,c			;a086
	inc b			;a087
	dec b			;a088
	nop			;a089
	add a,e			;a08a
la08bh:
	add a,b			;a08b
	nop			;a08c
	ld (bc),a		;a08d
	dec b			;a08e
	nop			;a08f
	add a,c			;a090
	add a,b			;a091
	inc b			;a092
	nop			;a093
	add a,c			;a094
	ex af,af'		;a095
	rlca			;a096
	nop			;a097
	add a,c			;a098
	ex af,af'		;a099
	inc b			;a09a
	nop			;a09b
	add a,c			;a09c
	inc b			;a09d
	inc bc			;a09e
	nop			;a09f
	add a,e			;a0a0
	ld b,b			;a0a1
	nop			;a0a2
	nop			;a0a3
	nop			;a0a4
	add hl,bc		;a0a5
	add a,b			;a0a6
	djnz la079h		;a0a7
	ex af,af'		;a0a9
	ret po			;a0aa
	dec b			;a0ab
	add a,b			;a0ac
	ex af,af'		;a0ad
	ret nc			;a0ae
	dec b			;a0af
	add a,b			;a0b0
	rlca			;a0b1
	ret nc			;a0b2
	dec bc			;a0b3
	add a,b			;a0b4
	inc b			;a0b5
	ret po			;a0b6
	ld b,080h		;a0b7
	ex af,af'		;a0b9
	ret nc			;a0ba
	dec b			;a0bb
	add a,b			;a0bc
	ex af,af'		;a0bd
	ret nc			;a0be
	add hl,bc		;a0bf
	add a,b			;a0c0
	inc bc			;a0c1
	ret nc			;a0c2
	nop			;a0c3
	adc a,h			;a0c4
	ld a,(hl)		;a0c5
	jr $+62			;a0c6
	jr $+62			;a0c8
	add a,c			;a0ca
	jp 03cfeh		;a0cb
	jp 03281h		;a0ce
	inc bc			;a0d1
	inc a			;a0d2
	adc a,c			;a0d3
	cp c			;a0d4
	sbc a,(hl)		;a0d5
	rst 0			;a0d6
	inc a			;a0d7
	and l			;a0d8
	rst 20h			;a0d9
	ld h,l			;a0da
	ld a,(hl)		;a0db
	rst 0			;a0dc
	nop			;a0dd
	add a,c			;a0de
	djnz la0e4h		;a0df
	ld hl,01081h		;a0e1
la0e4h:
	dec b			;a0e4
	ret p			;a0e5
	add a,a			;a0e6
	pop af			;a0e7
	ld hl,01021h		;a0e8
	rrca			;a0eb
	pop af			;a0ec
	jp p,0f003h		;a0ed
	add a,c			;a0f0
	jp p,0f003h		;a0f1
	nop			;a0f4
	sub b			;a0f5
	ld b,a			;a0f6
	cp l			;a0f7
	inc de			;a0f8
	inc sp			;a0f9
	ld h,03fh		;a0fa
	jp 03b18h		;a0fc
	inc a			;a0ff
	ld b,h			;a100
	ld b,h			;a101
	call nz,03cc8h		;a102
	jp nz,08800h		;a105
	pop af			;a108
	ret p			;a109
	pop af			;a10a
	jp p,0f0f1h		;a10b
	ret p			;a10e
	djnz la114h		;a10f
	ret p			;a111
	add a,l			;a112
	pop af			;a113
la114h:
	jp p,0f0f1h		;a114
	ret p			;a117
	nop			;a118
	sbc a,b			;a119
	ld b,d			;a11a
	jp 0f725h		;a11b
	adc a,c			;a11e
	ret			;a11f
	ex de,hl		;a120
	sbc a,03ch		;a121
	ld a,(hl)		;a123
	jr c,la1a2h		;a124
la126h:
	jr c,la126h		;a126
	inc a			;a128
	inc a			;a129
	inc hl			;a12a
	jp 0ddddh		;a12b
	inc hl			;a12e
	inc de			;a12f
	inc a			;a130
	ld b,e			;a131
	nop			;a132
	adc a,d			;a133
	ret p			;a134
	pop af			;a135
	jp p,0f0f1h		;a136
	jp p,0f0f1h		;a139
	djnz la14eh		;a13c
	inc bc			;a13e
	ld hl,01002h		;a13f
	inc b			;a142
	rrca			;a143
	add a,l			;a144
	rra			;a145
	jp p,0f0f1h		;a146
	ret p			;a149
	nop			;a14a
	adc a,h			;a14b
	dec sp			;a14c
	inc a			;a14d
la14eh:
	ld b,h			;a14e
	ld b,h			;a14f
	call nz,03cc8h		;a150
	rrca			;a153
	sbc a,(hl)		;a154
	add hl,bc		;a155
	ex af,af'		;a156
	adc a,c			;a157
	inc b			;a158
	ret p			;a159
	adc a,h			;a15a
	ld b,e			;a15b
	inc a			;a15c
	inc de			;a15d
	inc hl			;a15e
	ld (03c22h),hl		;a15f
	ret p			;a162
	inc bc			;a163
	inc bc			;a164
	add a,b			;a165
	ld (03c03h),a		;a166
	add a,l			;a169
	cp c			;a16a
	dec sp			;a16b
	inc e			;a16c
	jp 00418h		;a16d
	rrca			;a170
	sub b			;a171
	ld a,a			;a172
	inc a			;a173
	inc hl			;a174
	inc hl			;a175
	jr nz,la1b7h		;a176
	ret p			;a178
	ret m			;a179
	add a,c			;a17a
	rst 38h			;a17b
	ld a,0c3h		;a17c
	ld a,01ch		;a17e
	ld a,01ch		;a180
	inc b			;a182
	ret p			;a183
	inc bc			;a184
	inc c			;a185
	add a,c			;a186
	ret p			;a187
	nop			;a188
	inc bc			;a189
	ret p			;a18a
	or d			;a18b
	pop af			;a18c
	jp p,0f0f1h		;a18d
	ld d,h			;a190
	jp p,0f0f1h		;a191
	ret p			;a194
	ld sp,05040h		;a195
	ld b,e			;a198
	ret p			;a199
	ret p			;a19a
	pop af			;a19b
	jp p,0f0f1h		;a19c
	ret p			;a19f
	jr nc,la1f2h		;a1a0
la1a2h:
	ld b,b			;a1a2
	ret p			;a1a3
	jr nz,la1c7h		;a1a4
	djnz la1b7h		;a1a6
	pop af			;a1a8
	djnz la1cbh		;a1a9
	djnz la1bdh		;a1ab
	ld sp,05340h		;a1ad
	ld b,h			;a1b0
	ret p			;a1b1
	ret p			;a1b2
	jp p,0f0f1h		;a1b3
	di			;a1b6
la1b7h:
	ld b,e			;a1b7
	ld d,h			;a1b8
	di			;a1b9
	di			;a1ba
	ret p			;a1bb
	ret p			;a1bc
la1bdh:
	djnz la1c2h		;a1bd
	ld hl,04388h		;a1bf
la1c2h:
	ld e,a			;a1c2
	ld b,b			;a1c3
	ld sp,02110h		;a1c4
la1c7h:
	djnz la1f9h		;a1c7
	nop			;a1c9
	add a,l			;a1ca
la1cbh:
	ld b,e			;a1cb
	inc a			;a1cc
	inc de			;a1cd
	inc hl			;a1ce
	ld (00305h),hl		;a1cf
	ld (bc),a		;a1d2
	jr c,la1d8h		;a1d3
	inc a			;a1d5
	add a,c			;a1d6
	cp c			;a1d7
la1d8h:
	nop			;a1d8
	ld (bc),a		;a1d9
	ret p			;a1da
	adc a,(hl)		;a1db
	pop af			;a1dc
	jp p,040f1h		;a1dd
	ld e,a			;a1e0
	sbc a,a			;a1e1
	ld d,b			;a1e2
	ld b,c			;a1e3
	ld hl,01021h		;a1e4
	rrca			;a1e7
	rrca			;a1e8
	pop af			;a1e9
	nop			;a1ea
	add a,d			;a1eb
	inc a			;a1ec
	jp 0f004h		;a1ed
	ld (bc),a		;a1f0
	rrca			;a1f1
la1f2h:
	add a,d			;a1f2
	sbc a,l			;a1f3
	jp 01f03h		;a1f4
	inc bc			;a1f7
	ret po			;a1f8
la1f9h:
	dec bc			;a1f9
	rrca			;a1fa
	inc b			;a1fb
	ret p			;a1fc
	add a,c			;a1fd
	rst 38h			;a1fe
	ex af,af'		;a1ff
	ret p			;a200
	add a,c			;a201
	inc a			;a202
	inc bc			;a203
	ld bc,07d98h		;a204
	jr c,la241h		;a207
	jr la20eh		;a209
	inc bc			;a20b
	ld a,h			;a20c
	ld a,l			;a20d
la20eh:
	sub d			;a20e
	ld (08c8dh),a		;a20f
	rlca			;a212
	rlca			;a213
	call m,0d00fh		;a214
	add a,038h		;a217
	jr c,la29ah		;a219
	rst 38h			;a21b
	ld a,a			;a21c
	rra			;a21d
	inc bc			;a21e
	ccf			;a21f
	adc a,e			;a220
	ret nz			;a221
	inc c			;a222
	cp 0f0h			;a223
	call m,0f8f0h		;a225
	rlca			;a228
	ld e,03ch		;a229
	jp 0f004h		;a22b
	ld (bc),a		;a22e
	rrca			;a22f
	sub d			;a230
	pop bc			;a231
	ccf			;a232
	ccf			;a233
	rra			;a234
	ccf			;a235
	ccf			;a236
	rra			;a237
	ld a,a			;a238
	inc a			;a239
	jr c,la2b8h		;a23a
	cp 08ch			;a23c
	adc a,h			;a23e
	cp 09dh			;a23f
la241h:
	rra			;a241
	rra			;a242
	inc b			;a243
	ret po			;a244
	and h			;a245
	add a,b			;a246
	ld a,(hl)		;a247
	ld a,01ch		;a248
	ld a,03eh		;a24a
	add a,b			;a24c
	inc a			;a24d
	ret nz			;a24e
	inc d			;a24f
	ld e,07eh		;a250
	ld e,080h		;a252
	ld h,b			;a254
	ccf			;a255
	ld b,b			;a256
	inc c			;a257
	ld a,(hl)		;a258
	inc e			;a259
	jr c,la2dbh		;a25a
	jr c,la29ah		;a25c
	inc a			;a25e
	nop			;a25f
	inc a			;a260
	add a,c			;a261
	inc a			;a262
	ld a,(hl)		;a263
	ld a,(hl)		;a264
	inc a			;a265
	ld a,(hl)		;a266
	ld a,(hl)		;a267
	ld l,b			;a268
	ld l,b			;a269
	ld b,00fh		;a26a
	add a,d			;a26c
	nop			;a26d
	rra			;a26e
	inc b			;a26f
	ret po			;a270
	dec b			;a271
	ret p			;a272
	inc b			;a273
	rrca			;a274
	add a,e			;a275
	ret m			;a276
	ret nz			;a277
	ccf			;a278
	inc bc			;a279
	rra			;a27a
	ld (bc),a		;a27b
	ret nz			;a27c
	add a,l			;a27d
	inc bc			;a27e
	rrca			;a27f
	ret m			;a280
	call m,003f8h		;a281
	rrca			;a284
	adc a,e			;a285
	inc c			;a286
	ret p			;a287
	ld a,h			;a288
	jr c,la2c7h		;a289
	ld a,(hl)		;a28b
	rra			;a28c
	add a,e			;a28d
	ex (sp),hl		;a28e
	dec sp			;a28f
	inc a			;a290
	inc b			;a291
	rrca			;a292
	add a,d			;a293
	ret p			;a294
	ret po			;a295
	ex af,af'		;a296
	ret p			;a297
	dec b			;a298
	rra			;a299
la29ah:
	ld (bc),a		;a29a
	ret nz			;a29b
	add a,c			;a29c
	inc bc			;a29d
	inc bc			;a29e
	rrca			;a29f
	add a,c			;a2a0
	ret po			;a2a1
	inc bc			;a2a2
	rra			;a2a3
	add a,e			;a2a4
	ret po			;a2a5
	cpl			;a2a6
	cpl			;a2a7
	inc b			;a2a8
	rrca			;a2a9
	ld (bc),a		;a2aa
	ret p			;a2ab
	ld (bc),a		;a2ac
	cpl			;a2ad
	adc a,b			;a2ae
	inc c			;a2af
	add a,b			;a2b0
	rrca			;a2b1
	rrca			;a2b2
	nop			;a2b3
	rrca			;a2b4
	rrca			;a2b5
	rra			;a2b6
	inc b			;a2b7
la2b8h:
	ret po			;a2b8
	sub (hl)		;a2b9
	rrca			;a2ba
	out (06eh),a		;a2bb
	rra			;a2bd
	add a,(hl)		;a2be
	jr c,la33dh		;a2bf
	ld a,h			;a2c1
	nop			;a2c2
	inc sp			;a2c3
	rra			;a2c4
	rra			;a2c5
	ccf			;a2c6
la2c7h:
	ccf			;a2c7
	ret c			;a2c8
	ccf			;a2c9
	ccf			;a2ca
	add a,b			;a2cb
	rrca			;a2cc
	ret m			;a2cd
	call m,003f8h		;a2ce
	rrca			;a2d1
	add a,c			;a2d2
	dec h			;a2d3
	inc bc			;a2d4
	ret p			;a2d5
	add a,l			;a2d6
	ld c,038h		;a2d7
	ld a,h			;a2d9
	ld a,h			;a2da
la2dbh:
	ret nz			;a2db
	rlca			;a2dc
	ret p			;a2dd
	sbc a,h			;a2de
	ld c,06eh		;a2df
	rra			;a2e1
	add a,(hl)		;a2e2
	jr c,la361h		;a2e3
	ld a,h			;a2e5
	nop			;a2e6
	inc sp			;a2e7
	ld h,06ch		;a2e8
	inc e			;a2ea
	add a,h			;a2eb
	jr c,la36ah		;a2ec
	ld e,067h		;a2ee
	ld h,h			;a2f0
	ret m			;a2f1
	add hl,bc		;a2f2
	and h			;a2f3
	ld (hl),b		;a2f4
	add a,060h		;a2f5
	ld (02098h),hl		;a2f7
	rra			;a2fa
	inc bc			;a2fb
	ret p			;a2fc
	ld (bc),a		;a2fd
	rrca			;a2fe
	sub b			;a2ff
	ld bc,05e9ch		;a300
	jr c,la381h		;a303
	ld b,h			;a305
	add a,b			;a306
	call z,040d0h		;a307
	and d			;a30a
	djnz $+66		;a30b
	ld a,03fh		;a30d
	rst 28h			;a30f
	ld c,000h		;a310
la312h:
	call c,0393dh		;a312
	nop			;a315
	nop			;a316
	add a,b			;a317
	inc bc			;a318
	cp 03ch			;a319
	ld a,(hl)		;a31b
	ld h,(hl)		;a31c
	inc a			;a31d
	jr c,la338h		;a31e
	inc a			;a320
	jr la39bh		;a321
	ld a,h			;a323
	ld a,h			;a324
	add a,c			;a325
	cp h			;a326
	jr c,$+128		;a327
	ld a,a			;a329
	jr c,la3a8h		;a32a
	ld a,h			;a32c
	cp d			;a32d
	add hl,sp		;a32e
	jr c,$-54		;a32f
	rra			;a331
	rrca			;a332
	ret p			;a333
	ret nz			;a334
	ld b,d			;a335
	rst 8			;a336
	inc a			;a337
la338h:
	ld a,h			;a338
	jr c,$+126		;a339
	ld a,h			;a33b
	ret nz			;a33c
la33dh:
	inc a			;a33d
	ld a,(hl)		;a33e
	ld a,h			;a33f
la340h:
	ret p			;a340
	ret m			;a341
	ld a,b			;a342
	jr nz,la312h		;a343
	jr c,la3c5h		;a345
	ld a,h			;a347
	inc a			;a348
	add hl,de		;a349
	add hl,de		;a34a
	inc a			;a34b
	jr c,la36dh		;a34c
	rst 28h			;a34e
	inc a			;a34f
	ld a,h			;a350
	rst 38h			;a351
	inc a			;a352
	ld a,h			;a353
	ld a,(hl)		;a354
	nop			;a355
	nop			;a356
	ld e,07fh		;a357
	ld a,07fh		;a359
	dec a			;a35b
	ld a,a			;a35c
	rst 38h			;a35d
	rst 8			;a35e
	inc a			;a35f
	ld a,h			;a360
la361h:
	jr nc,$+126		;a361
	call m,07cfeh		;a363
	nop			;a366
	ld a,a			;a367
	jr la3e6h		;a368
la36ah:
	jr c,la3d3h		;a36a
	ld h,a			;a36c
la36dh:
	rst 0			;a36d
	add a,e			;a36e
	inc bc			;a36f
	jr c,la374h		;a370
	inc a			;a372
	ld (bc),a		;a373
la374h:
	add a,c			;a374
	ld (bc),a		;a375
	jp 0fc8ah		;a376
	ld sp,hl		;a379
	ret p			;a37a
	rrca			;a37b
	rrca			;a37c
	jp nz,062f6h		;a37d
	ld (hl),a		;a380
la381h:
	add a,003h		;a381
	jr c,la340h		;a383
	add a,e			;a385
	jp 0fcf8h		;a386
	cp b			;a389
	sbc a,b			;a38a
	sbc a,d			;a38b
	jr la3d0h		;a38c
	adc a,h			;a38e
	jr la3cdh		;a38f
	ccf			;a391
	rra			;a392
	ld a,a			;a393
	ld e,03ch		;a394
	ld a,a			;a396
	inc a			;a397
	ld a,a			;a398
	ccf			;a399
	ccf			;a39a
la39bh:
	ret po			;a39b
	rrca			;a39c
	call m,060f0h		;a39d
	jp m,083fch		;a3a0
	ld a,(hl)		;a3a3
	ret p			;a3a4
	or c			;a3a5
	jr c,la426h		;a3a6
la3a8h:
	rra			;a3a8
	cpl			;a3a9
	ld a,b			;a3aa
	rst 38h			;a3ab
	rst 8			;a3ac
	pop af			;a3ad
	pop af			;a3ae
	inc bc			;a3af
	rrca			;a3b0
	rra			;a3b1
	ld a,a			;a3b2
	ld (hl),b		;a3b3
	nop			;a3b4
	rst 20h			;a3b5
	jp p,0dcfeh		;a3b6
	and 0e8h		;a3b9
	ld e,h			;a3bb
	cp 002h			;a3bc
	rra			;a3be
	ld a,a			;a3bf
	inc b			;a3c0
	rst 38h			;a3c1
	add a,e			;a3c2
	dec de			;a3c3
	ld b,b			;a3c4
la3c5h:
	cp 006h			;a3c5
	rst 38h			;a3c7
	ld (bc),a		;a3c8
	call m,0fe04h		;a3c9
	sbc a,e			;a3cc
la3cdh:
	ret pe			;a3cd
	ret nz			;a3ce
	ret p			;a3cf
la3d0h:
	call m,00658h		;a3d0
la3d3h:
	inc b			;a3d3
	ld h,b			;a3d4
	call m,07ce0h		;a3d5
	inc e			;a3d8
	sbc a,b			;a3d9
	rst 20h			;a3da
	ret po			;a3db
	rst 28h			;a3dc
	add a,b			;a3dd
	adc a,0f0h		;a3de
	ex (sp),hl		;a3e0
	add hl,sp		;a3e1
	inc e			;a3e2
	add a,h			;a3e3
	cp b			;a3e4
	ld a,a			;a3e5
la3e6h:
	rst 38h			;a3e6
	ld b,003h		;a3e7
	ret pe			;a3e9
	add a,c			;a3ea
	inc b			;a3eb
	inc bc			;a3ec
	call m,05e8dh		;a3ed
	xor a			;a3f0
	push hl			;a3f1
	di			;a3f2
	pop af			;a3f3
	ret po			;a3f4
	ret nz			;a3f5
	nop			;a3f6
	inc e			;a3f7
	and 0f1h		;a3f8
	ret m			;a3fa
	ret nz			;a3fb
	inc bc			;a3fc
	nop			;a3fd
	inc bc			;a3fe
	rrca			;a3ff
	adc a,c			;a400
	ret p			;a401
	ret nc			;a402
	add a,038h		;a403
	jr c,la44ah		;a405
	inc a			;a407
	inc de			;a408
	jr nz,la40fh		;a409
	rrca			;a40b
	add a,c			;a40c
	inc bc			;a40d
	inc bc			;a40e
la40fh:
	rrca			;a40f
	inc bc			;a410
	ret p			;a411
	add a,d			;a412
	ld (0039eh),a		;a413
	ret p			;a416
	inc bc			;a417
	rrca			;a418
	sub d			;a419
	ld b,d			;a41a
	ld a,a			;a41b
	cpl			;a41c
	rla			;a41d
	ld l,a			;a41e
	ld sp,0f083h		;a41f
	ret po			;a422
	call m,07e3eh		;a423
la426h:
	jr nc,la4a0h		;a426
	call m,00f00h		;a428
	rrca			;a42b
	inc b			;a42c
	ret p			;a42d
	add a,(hl)		;a42e
	push hl			;a42f
	ex (sp),hl		;a430
	ld h,d			;a431
	ld b,d			;a432
	ld b,e			;a433
	ld b,c			;a434
	inc b			;a435
	ld b,d			;a436
	sbc a,b			;a437
	ld b,b			;a438
	ld l,b			;a439
	ld l,b			;a43a
	nop			;a43b
	inc c			;a43c
	ld c,00fh		;a43d
	jr la4afh		;a43f
	ld h,06ch		;a441
	rra			;a443
	add a,(hl)		;a444
	jr c,$+126		;a445
	ld a,h			;a447
la448h:
	nop			;a448
	ld l,(hl)		;a449
la44ah:
	rra			;a44a
	add a,(hl)		;a44b
	jr c,la4cah		;a44c
	ld a,h			;a44e
	ld bc,01809h		;a44f
	inc bc			;a452
	adc a,a			;a453
	adc a,c			;a454
	ld a,a			;a455
	rra			;a456
	rra			;a457
	ret po			;a458
	xor 018h		;a459
	jr c,la469h		;a45b
	ld b,004h		;a45d
	ret p			;a45f
	sub h			;a460
	ld a,01ch		;a461
	ld a,03eh		;a463
	ld b,c			;a465
	dec a			;a466
	dec de			;a467
	rst 0			;a468
la469h:
	rrca			;a469
	rrca			;a46a
	ld (hl),d		;a46b
	ld a,b			;a46c
	inc a			;a46d
	ld a,h			;a46e
	inc a			;a46f
	ld l,(hl)		;a470
	ld c,a			;a471
	rst 8			;a472
	ld h,b			;a473
	ld h,h			;a474
	inc b			;a475
	nop			;a476
	adc a,a			;a477
	ld a,(hl)		;a478
	inc a			;a479
	ld a,a			;a47a
	inc a			;a47b
	ld a,(hl)		;a47c
	inc a			;a47d
	inc a			;a47e
	jr la448h		;a47f
	add a,e			;a481
	nop			;a482
	jr c,la4bdh		;a483
	inc a			;a485
	inc a			;a486
	inc bc			;a487
	add a,c			;a488
	add a,l			;a489
	inc a			;a48a
	ld a,h			;a48b
	jr c,la50ch		;a48c
	inc a			;a48e
	ex af,af'		;a48f
	jr $-111		;a490
	jp 01fe0h		;a492
	ccf			;a495
	ccf			;a496
	ret c			;a497
	ccf			;a498
	ld c,030h		;a499
	rrca			;a49b
	ret m			;a49c
	call m,00ff8h		;a49d
la4a0h:
	rst 38h			;a4a0
	add hl,bc		;a4a1
	rrca			;a4a2
	add a,e			;a4a3
	nop			;a4a4
	cpl			;a4a5
	cpl			;a4a6
	ld b,00fh		;a4a7
	ret nz			;a4a9
	inc e			;a4aa
	inc a			;a4ab
	ld a,h			;a4ac
	jr c,la52dh		;a4ad
la4afh:
	inc e			;a4af
	sbc a,b			;a4b0
	ld e,b			;a4b1
	ld c,038h		;a4b2
	add a,(hl)		;a4b4
	add a,b			;a4b5
	ccf			;a4b6
	ld a,a			;a4b7
	dec a			;a4b8
	ld a,a			;a4b9
	jr c,$+128		;a4ba
	ld a,h			;a4bc
la4bdh:
	cp h			;a4bd
	sbc a,b			;a4be
	cp l			;a4bf
la4c0h:
	inc a			;a4c0
	add a,c			;a4c1
	ld sp,07d7dh		;a4c2
	jr c,la53fh		;a4c5
	inc bc			;a4c7
	adc a,a			;a4c8
	ret m			;a4c9
la4cah:
	jr la50ah		;a4ca
	inc e			;a4cc
	ld a,01ch		;a4cd
	ld a,(hl)		;a4cf
	sbc a,h			;a4d0
	jp nz,0007ch		;a4d1
	ld a,a			;a4d4
	jr la553h		;a4d5
	jr c,la4c0h		;a4d7
	rst 20h			;a4d9
	add a,083h		;a4da
	nop			;a4dc
	jr c,la517h		;a4dd
	inc a			;a4df
	inc a			;a4e0
	add a,c			;a4e1
	ld b,c			;a4e2
	sbc a,a			;a4e3
	ret nz			;a4e4
	pop bc			;a4e5
	ld h,e			;a4e6
	ld e,03ch		;a4e7
	ld a,003h		;a4e9
	inc a			;a4eb
	sub b			;a4ec
	jp 09e03h		;a4ed
	adc a,b			;a4f0
	ld c,a			;a4f1
	ld a,l			;a4f2
	jr c,la532h		;a4f3
	ret nz			;a4f5
	cp 087h			;a4f6
	ret p			;a4f8
	ret p			;a4f9
	inc a			;a4fa
	rra			;a4fb
	ld a,a			;a4fc
	inc bc			;a4fd
	rra			;a4fe
	add a,c			;a4ff
	nop			;a500
	inc bc			;a501
	rrca			;a502
	adc a,(hl)		;a503
	sbc a,a			;a504
	jp m,083fch		;a505
	ld a,(hl)		;a508
	ret p			;a509
la50ah:
	add a,c			;a50a
	cp h			;a50b
la50ch:
	jr c,la58ch		;a50c
	ld a,a			;a50e
	jr c,la58dh		;a50f
	ld a,h			;a511
	inc bc			;a512
	ret p			;a513
	add a,c			;a514
	rst 0			;a515
	inc bc			;a516
la517h:
	inc a			;a517
	add a,e			;a518
	nop			;a519
	ret po			;a51a
	ret po			;a51b
	dec b			;a51c
	ccf			;a51d
	add a,l			;a51e
	add a,b			;a51f
	rlca			;a520
	ret p			;a521
	inc bc			;a522
	ret m			;a523
	inc bc			;a524
	rrca			;a525
	sbc a,e			;a526
	dec h			;a527
	rrca			;a528
	inc bc			;a529
	ccf			;a52a
	rst 38h			;a52b
	ld sp,hl		;a52c
la52dh:
	nop			;a52d
	pop bc			;a52e
	ex (sp),hl		;a52f
	ld a,(hl)		;a530
	inc a			;a531
la532h:
	inc a			;a532
	add a,e			;a533
	cp 01ch			;a534
	jp po,0fcfbh		;a536
	cp 0f0h			;a539
	call m,0f8f0h		;a53b
	rlca			;a53e
la53fh:
	ld e,02fh		;a53f
	cpl			;a541
	ld b,00fh		;a542
	nop			;a544
	ld (bc),a		;a545
	ret p			;a546
	cp l			;a547
	jr nc,la58ah		;a548
	ld d,b			;a54a
	ld b,e			;a54b
	ld b,e			;a54c
	ld d,b			;a54d
	pop af			;a54e
	ret p			;a54f
	jr nc,la595h		;a550
	ld d,h			;a552
la553h:
	ld d,h			;a553
	ld b,e			;a554
	jr nc,la59ah		;a555
	ld d,b			;a557
	ld b,b			;a558
	inc sp			;a559
	inc b			;a55a
	dec (hl)		;a55b
	ld b,h			;a55c
	ld d,e			;a55d
	inc (hl)		;a55e
	ld b,l			;a55f
	ld e,c			;a560
	ld e,c			;a561
	ld b,l			;a562
	inc (hl)		;a563
	di			;a564
	di			;a565
	ld d,e			;a566
	ld b,b			;a567
	ccf			;a568
	ld c,a			;a569
	ld d,e			;a56a
	sub h			;a56b
	ld d,l			;a56c
	ld c,c			;a56d
	djnz la5b1h		;a56e
	ld b,b			;a570
	ccf			;a571
	ccf			;a572
	ld b,e			;a573
	ld d,h			;a574
	sub l			;a575
	ld d,h			;a576
	sub l			;a577
	sub l			;a578
	ld d,h			;a579
	call p,043f4h		;a57a
	ld d,h			;a57d
	ld d,e			;a57e
	ld c,a			;a57f
	di			;a580
	di			;a581
	ld b,e			;a582
	ld d,h			;a583
	ld d,h			;a584
	dec b			;a585
	sub l			;a586
	add a,h			;a587
	ld d,h			;a588
	ld b,e			;a589
la58ah:
	ccf			;a58a
	ccf			;a58b
la58ch:
	inc bc			;a58c
la58dh:
	sub l			;a58d
	ld (bc),a		;a58e
	ld d,h			;a58f
	ld (bc),a		;a590
	ld b,e			;a591
	adc a,h			;a592
	ld d,h			;a593
	ret p			;a594
la595h:
	ret p			;a595
	jr nc,la5d8h		;a596
	ld d,b			;a598
	ld b,e			;a599
la59ah:
	ld b,e			;a59a
	ld d,b			;a59b
	di			;a59c
	ld b,e			;a59d
	ld d,h			;a59e
	inc b			;a59f
	sub l			;a5a0
	add a,d			;a5a1
	ld d,h			;a5a2
	ld b,e			;a5a3
	inc bc			;a5a4
	ld d,h			;a5a5
	ld (bc),a		;a5a6
	sub l			;a5a7
	inc bc			;a5a8
	ld d,h			;a5a9
	ld (bc),a		;a5aa
	sub l			;a5ab
	add a,d			;a5ac
	ld d,h			;a5ad
	ld b,e			;a5ae
	inc bc			;a5af
	ccf			;a5b0
la5b1h:
	add a,e			;a5b1
	ld b,e			;a5b2
	sub h			;a5b3
	ld d,h			;a5b4
	dec b			;a5b5
	ld b,e			;a5b6
	sub d			;a5b7
	ld d,h			;a5b8
	ld b,e			;a5b9
	ld b,e			;a5ba
	di			;a5bb
	di			;a5bc
	call p,05443h		;a5bd
	ld d,h			;a5c0
	sub l			;a5c1
	sub l			;a5c2
	ld d,h			;a5c3
	ld d,h			;a5c4
	ld b,e			;a5c5
	ccf			;a5c6
	ccf			;a5c7
	ld b,e			;a5c8
	push af			;a5c9
	inc b			;a5ca
	sub l			;a5cb
	xor (hl)		;a5cc
	ld d,h			;a5cd
	ld b,e			;a5ce
	djnz la5f2h		;a5cf
	di			;a5d1
	call p,04935h		;a5d2
	ld d,l			;a5d5
	sub h			;a5d6
	sub h			;a5d7
la5d8h:
	sub l			;a5d8
	sub l			;a5d9
	ld d,h			;a5da
	ld b,e			;a5db
	ccf			;a5dc
	ccf			;a5dd
	ld b,e			;a5de
	ld b,e			;a5df
	ld d,h			;a5e0
	sub l			;a5e1
	sub l			;a5e2
	ld d,h			;a5e3
	ld b,e			;a5e4
	ccf			;a5e5
	call p,09595h		;a5e6
	ld d,h			;a5e9
	ld b,e			;a5ea
	ccf			;a5eb
	ccf			;a5ec
	ld b,e			;a5ed
	ld d,h			;a5ee
	sub h			;a5ef
	sub l			;a5f0
	ld d,h			;a5f1
la5f2h:
	ld b,e			;a5f2
	di			;a5f3
	ld c,a			;a5f4
	ld d,h			;a5f5
	sub l			;a5f6
	ld b,e			;a5f7
	ld d,h			;a5f8
	sub l			;a5f9
	sub l			;a5fa
	inc bc			;a5fb
	ld d,h			;a5fc
	xor 043h		;a5fd
	ret p			;a5ff
	ret p			;a600
	jr nc,la643h		;a601
	ld d,b			;a603
	ld b,e			;a604
	ld b,e			;a605
	ld d,h			;a606
	ld b,e			;a607
	ld d,h			;a608
	dec (hl)		;a609
	ld c,c			;a60a
	ld d,e			;a60b
	sub h			;a60c
	ld d,l			;a60d
	ld c,c			;a60e
	ld c,c			;a60f
	sub l			;a610
	ld d,h			;a611
	ld b,e			;a612
	ccf			;a613
	ccf			;a614
	ld b,e			;a615
	ld d,h			;a616
	di			;a617
	inc (hl)		;a618
	ld b,l			;a619
	sub l			;a61a
	sub l			;a61b
	ld d,h			;a61c
	ld b,e			;a61d
	ld b,e			;a61e
	djnz la630h		;a61f
	di			;a621
	inc (hl)		;a622
	ld b,l			;a623
	ld e,c			;a624
	ld e,c			;a625
	ld b,l			;a626
	ret p			;a627
	ld bc,01020h		;a628
	di			;a62b
	inc (hl)		;a62c
	sub l			;a62d
	sub l			;a62e
	ld b,h			;a62f
la630h:
	sub l			;a630
	sub l			;a631
	ld d,h			;a632
	ld b,e			;a633
	ccf			;a634
	ccf			;a635
	ld b,e			;a636
	sub h			;a637
	ld d,h			;a638
	ld d,h			;a639
	sub h			;a63a
	ld d,h			;a63b
	ld b,e			;a63c
	ld b,e			;a63d
	di			;a63e
	ld d,h			;a63f
	sub l			;a640
	ld d,h			;a641
	ld b,e			;a642
la643h:
	di			;a643
	di			;a644
	inc (hl)		;a645
	ld d,h			;a646
	sub l			;a647
	sub l			;a648
	ld d,h			;a649
	ld b,e			;a64a
	di			;a64b
	ld c,a			;a64c
	ld d,h			;a64d
	sub l			;a64e
	sub l			;a64f
	ld d,h			;a650
	ld b,e			;a651
	ld b,e			;a652
	sub l			;a653
	ld d,h			;a654
	ld b,e			;a655
	ld d,e			;a656
	ld d,e			;a657
	sub h			;a658
	ld d,l			;a659
	ld c,c			;a65a
	dec (hl)		;a65b
	inc b			;a65c
	inc bc			;a65d
	ld b,b			;a65e
	sub h			;a65f
	ld d,h			;a660
	ld d,h			;a661
	sub h			;a662
	ld d,h			;a663
	ld b,e			;a664
	ld b,e			;a665
	ld d,e			;a666
	ld b,e			;a667
	sub h			;a668
	ld d,h			;a669
	ld d,h			;a66a
	sub e			;a66b
	inc bc			;a66c
	ld b,e			;a66d
	add a,c			;a66e
	ld d,h			;a66f
	rlca			;a670
	ld b,e			;a671
	sub b			;a672
	sub h			;a673
	ld d,e			;a674
	di			;a675
	ld b,e			;a676
	ld d,h			;a677
	sub l			;a678
	sub l			;a679
	ld d,h			;a67a
	ld b,e			;a67b
	ld b,e			;a67c
	ld d,e			;a67d
	ld d,h			;a67e
	ld b,e			;a67f
	ld b,e			;a680
	ld d,e			;a681
	ld d,h			;a682
	ld b,043h		;a683
	ld (bc),a		;a685
	ld d,h			;a686
	rrca			;a687
	ld b,e			;a688
	add a,c			;a689
	ld d,h			;a68a
	dec b			;a68b
	ld b,e			;a68c
	add a,l			;a68d
	sub l			;a68e
	ld d,h			;a68f
	ld d,h			;a690
	ld b,e			;a691
	ld d,h			;a692
	inc bc			;a693
	sub l			;a694
	add a,l			;a695
	ld d,h			;a696
	ld b,e			;a697
	ccf			;a698
	ld b,e			;a699
	ld b,e			;a69a
	inc bc			;a69b
	ld d,h			;a69c
	inc b			;a69d
	sub l			;a69e
	sub h			;a69f
	ld d,h			;a6a0
	ld b,e			;a6a1
	di			;a6a2
	ld b,e			;a6a3
	ld d,h			;a6a4
	ld d,h			;a6a5
	ld b,e			;a6a6
	ld d,h			;a6a7
	ld d,e			;a6a8
	ld b,e			;a6a9
	ld d,h			;a6aa
	sub l			;a6ab
	ld d,h			;a6ac
	ld b,e			;a6ad
la6aeh:
	ld d,e			;a6ae
	ld b,e			;a6af
	ld d,e			;a6b0
	sub l			;a6b1
	sub l			;a6b2
	ld d,h			;a6b3
	inc bc			;a6b4
	ld b,e			;a6b5
	add a,c			;a6b6
	sub l			;a6b7
	rlca			;a6b8
	ld d,h			;a6b9
	ld (bc),a		;a6ba
	di			;a6bb
	add a,e			;a6bc
	ld b,e			;a6bd
	ld d,h			;a6be
	ld d,h			;a6bf
	inc bc			;a6c0
	sub l			;a6c1
	inc b			;a6c2
	ld b,e			;a6c3
	ld (bc),a		;a6c4
	ld d,h			;a6c5
	ld (bc),a		;a6c6
	sub l			;a6c7
	ld (bc),a		;a6c8
	di			;a6c9
	add a,d			;a6ca
	ld b,e			;a6cb
	ld d,h			;a6cc
	ld b,095h		;a6cd
	ld (bc),a		;a6cf
	ld d,h			;a6d0
	ld (bc),a		;a6d1
	ld b,e			;a6d2
	ld (bc),a		;a6d3
	call p,05403h		;a6d4
	adc a,(hl)		;a6d7
	sub h			;a6d8
	ld d,h			;a6d9
	ld b,e			;a6da
	ccf			;a6db
	ccf			;a6dc
	ld b,e			;a6dd
	ld d,h			;a6de
	sub l			;a6df
	sub l			;a6e0
	ld d,h			;a6e1
	ld b,e			;a6e2
	ld b,e			;a6e3
	ld d,h			;a6e4
	di			;a6e5
	inc bc			;a6e6
	call p,0f38bh		;a6e7
	ld b,e			;a6ea
	ld d,h			;a6eb
	sub l			;a6ec
	ld b,e			;a6ed
	ld d,h			;a6ee
	sub l			;a6ef
	ld d,h			;a6f0
	ld d,h			;a6f1
	ld d,e			;a6f2
	ld d,h			;a6f3
	rlca			;a6f4
	sub l			;a6f5
	ld (bc),a		;a6f6
	ld d,h			;a6f7
	inc bc			;a6f8
	sub l			;a6f9
	ld (bc),a		;a6fa
	ld d,h			;a6fb
	add a,e			;a6fc
	ld c,a			;a6fd
	di			;a6fe
	ld b,e			;a6ff
	inc bc			;a700
	sub l			;a701
	add a,(hl)		;a702
	ld d,h			;a703
	ld b,e			;a704
	ld b,e			;a705
	di			;a706
	call p,00843h		;a707
	ld d,h			;a70a
	add a,a			;a70b
	ld b,e			;a70c
	ld d,e			;a70d
	ld d,e			;a70e
	ld d,h			;a70f
	ld d,h			;a710
	sub l			;a711
	sub l			;a712
	rlca			;a713
	ld d,h			;a714
	add a,c			;a715
	ld d,e			;a716
	jr la6aeh		;a717
	ld (bc),a		;a719
	ld d,h			;a71a
	inc b			;a71b
	sub l			;a71c
	inc b			;a71d
	ld d,h			;a71e
	ld (bc),a		;a71f
	ld b,e			;a720
	inc bc			;a721
	ld d,h			;a722
	add a,c			;a723
	ld d,e			;a724
	dec b			;a725
	ld d,h			;a726
	adc a,b			;a727
	ld d,e			;a728
	ld b,e			;a729
	ld b,e			;a72a
	ld d,h			;a72b
	ld d,h			;a72c
	ld b,e			;a72d
	ccf			;a72e
	ccf			;a72f
	inc bc			;a730
	jr nc,$+18		;a731
	ld b,e			;a733
	and e			;a734
	ld d,e			;a735
	ld c,a			;a736
	ccf			;a737
	ccf			;a738
	ld b,e			;a739
	ld d,h			;a73a
	ld d,h			;a73b
	sub l			;a73c
	ret p			;a73d
	ret p			;a73e
	pop af			;a73f
	ret p			;a740
	ld sp,05040h		;a741
	ld b,e			;a744
	ret p			;a745
la746h:
	jr nc,la78bh		;a746
	ld d,h			;a748
	ld d,h			;a749
	ld b,e			;a74a
	ccf			;a74b
	ret p			;a74c
	jp p,04330h		;a74d
	ld d,h			;a750
	ld d,h			;a751
	ld b,e			;a752
	jr nc,la746h		;a753
	ld b,e			;a755
	ld d,h			;a756
	ld d,h			;a757
	inc b			;a758
	ld b,e			;a759
	ld (bc),a		;a75a
	ld d,h			;a75b
	inc bc			;a75c
	sub l			;a75d
	add a,c			;a75e
	ld d,h			;a75f
	inc bc			;a760
	ld b,e			;a761
	ld (bc),a		;a762
	sub l			;a763
	add a,(hl)		;a764
	ld d,h			;a765
	ld b,e			;a766
	jr nc,la7a9h		;a767
	ld d,d			;a769
	sub c			;a76a
	ld b,090h		;a76b
	sub a			;a76d
	ld d,b			;a76e
	ld b,e			;a76f
	djnz la781h		;a770
	rrca			;a772
	sub b			;a773
	ld b,c			;a774
	ld (04350h),a		;a775
	ld b,e			;a778
	sub h			;a779
	ld d,h			;a77a
	ld d,h			;a77b
	sub h			;a77c
	ld d,h			;a77d
	ld b,e			;a77e
	ld b,e			;a77f
	sub h			;a780
la781h:
	ld d,h			;a781
	ld d,h			;a782
	sub h			;a783
	ld d,h			;a784
	inc bc			;a785
	ld b,e			;a786
	add a,l			;a787
	ld d,b			;a788
	ld d,c			;a789
	ld d,d			;a78a
la78bh:
	ld d,c			;a78b
	ld d,b			;a78c
	inc bc			;a78d
	ld e,a			;a78e
	sub h			;a78f
	call p,04935h		;a790
	ld d,e			;a793
	sub e			;a794
	ld d,h			;a795
	ld d,h			;a796
	ld b,e			;a797
	ld d,b			;a798
	sub b			;a799
	ld d,e			;a79a
	ld d,h			;a79b
	ld d,e			;a79c
	sub h			;a79d
	ld d,l			;a79e
	ld c,c			;a79f
	ld b,e			;a7a0
	sub h			;a7a1
	ld d,h			;a7a2
	ld b,e			;a7a3
	inc bc			;a7a4
	di			;a7a5
	adc a,h			;a7a6
	sub e			;a7a7
	ld d,e			;a7a8
la7a9h:
	ld b,h			;a7a9
	sub l			;a7aa
	ld d,h			;a7ab
	sub b			;a7ac
	ld d,h			;a7ad
	ld b,e			;a7ae
	ld d,e			;a7af
	ld d,h			;a7b0
	ld b,e			;a7b1
	ld d,e			;a7b2
	dec b			;a7b3
	ld b,e			;a7b4
	ld (bc),a		;a7b5
	sub l			;a7b6
	ld (bc),a		;a7b7
	ld d,h			;a7b8
	add a,h			;a7b9
	ld b,e			;a7ba
	ld b,b			;a7bb
	ld e,a			;a7bc
	sub c			;a7bd
	inc bc			;a7be
	ld d,h			;a7bf
	add a,a			;a7c0
	sub h			;a7c1
	ld d,h			;a7c2
	ld b,e			;a7c3
	ccf			;a7c4
	ccf			;a7c5
	inc (hl)		;a7c6
	ld b,l			;a7c7
	inc bc			;a7c8
	sub l			;a7c9
	ld (bc),a		;a7ca
	ld d,h			;a7cb
	adc a,l			;a7cc
	ld d,e			;a7cd
	sub c			;a7ce
	sub b			;a7cf
	sub b			;a7d0
	sbc a,a			;a7d1
	sub c			;a7d2
	sub c			;a7d3
	ret po			;a7d4
	ld sp,hl		;a7d5
	sub l			;a7d6
	sub l			;a7d7
	ld d,h			;a7d8
	ld b,e			;a7d9
	inc bc			;a7da
	di			;a7db
	add a,l			;a7dc
	ld b,e			;a7dd
	sub l			;a7de
	sub l			;a7df
	ld d,h			;a7e0
	ld b,e			;a7e1
	inc bc			;a7e2
	di			;a7e3
	sub d			;a7e4
	inc (hl)		;a7e5
	dec (hl)		;a7e6
	ld c,c			;a7e7
	ld d,l			;a7e8
	sub h			;a7e9
	ld d,e			;a7ea
	ld c,a			;a7eb
	ccf			;a7ec
	ccf			;a7ed
	djnz la7ffh		;a7ee
	rrca			;a7f0
	call p,04935h		;a7f1
	ld d,l			;a7f4
	sub h			;a7f5
	ld d,h			;a7f6
	inc bc			;a7f7
	sub l			;a7f8
	ld (bc),a		;a7f9
	ld d,h			;a7fa
	ld (bc),a		;a7fb
	ld b,e			;a7fc
	add a,e			;a7fd
	ld d,e			;a7fe
la7ffh:
	di			;a7ff
	ld b,e			;a800
	inc bc			;a801
	ld d,h			;a802
	inc bc			;a803
	sub l			;a804
	inc b			;a805
	ld d,h			;a806
	ld (bc),a		;a807
	ld b,e			;a808
	add a,c			;a809
	di			;a80a
	inc b			;a80b
	ld d,h			;a80c
	add a,c			;a80d
	ld b,e			;a80e
	inc bc			;a80f
	di			;a810
	add a,d			;a811
	sub e			;a812
	ld d,h			;a813
	inc bc			;a814
	sub l			;a815
	inc bc			;a816
	ld d,h			;a817
	ld (bc),a		;a818
	sub l			;a819
	ld (bc),a		;a81a
	ld d,h			;a81b
	ld (bc),a		;a81c
	ld b,e			;a81d
	ld (bc),a		;a81e
	call p,05403h		;a81f
	add a,l			;a822
	sub h			;a823
	ld d,h			;a824
	ld b,e			;a825
	ccf			;a826
	ccf			;a827
	inc b			;a828
	ld b,e			;a829
	adc a,b			;a82a
	di			;a82b
	ld b,e			;a82c
	ld d,h			;a82d
	sub l			;a82e
	ld d,h			;a82f
	ld b,e			;a830
	ccf			;a831
	ccf			;a832
	ld b,054h		;a833
	sbc a,b			;a835
	ld b,e			;a836
	di			;a837
	di			;a838
	ei			;a839
	bit 5,h			;a83a
	sub l			;a83c
	sub l			;a83d
	ld d,h			;a83e
	ld d,h			;a83f
	ld b,e			;a840
	ccf			;a841
	ccf			;a842
	ei			;a843
	ld b,l			;a844
	ld e,c			;a845
	ld e,c			;a846
	ld d,h			;a847
	ld b,e			;a848
	ld b,e			;a849
	di			;a84a
	ei			;a84b
	di			;a84c
	ld b,e			;a84d
	inc bc			;a84e
	ld d,h			;a84f
	inc bc			;a850
	sub l			;a851
	sub a			;a852
	add a,0bch		;a853
	ei			;a855
	cp c			;a856
	ld d,h			;a857
	ld b,e			;a858
	ccf			;a859
	ccf			;a85a
	bit 5,h			;a85b
	ld l,h			;a85d
	res 7,a			;a85e
	di			;a860
	inc (hl)		;a861
	ld d,h			;a862
	set 0,(hl)		;a863
	add a,0cbh		;a865
	ei			;a867
	ld c,a			;a868
	ld d,h			;a869
	rlca			;a86a
	sub l			;a86b
	add a,l			;a86c
	ld d,h			;a86d
	ld b,e			;a86e
	di			;a86f
	di			;a870
	inc (hl)		;a871
	dec b			;a872
	ld d,h			;a873
	inc bc			;a874
	sub l			;a875
	ld (bc),a		;a876
	ld d,h			;a877
	ld (bc),a		;a878
	ld b,e			;a879
	adc a,c			;a87a
	ld d,h			;a87b
	djnz la88dh		;a87c
	rrca			;a87e
	call p,04935h		;a87f
	ld d,l			;a882
	sub h			;a883
	nop			;a884
	sub b			;a885
	ld a,a			;a886
	rrca			;a887
	dec b			;a888
	ld (hl),l		;a889
	dec sp			;a88a
	add a,e			;a88b
	ret po			;a88c
la88dh:
	ret po			;a88d
	cp 03ch			;a88e
	ld a,(hl)		;a890
	jr nc,la90bh		;a891
	call m,00f00h		;a893
	nop			;a896
	add a,e			;a897
	ld b,e			;a898
	ld d,h			;a899
	ld d,h			;a89a
	inc b			;a89b
	ld b,e			;a89c
	ld (bc),a		;a89d
	ld d,h			;a89e
	inc bc			;a89f
	sub l			;a8a0
	add a,c			;a8a1
	ld d,h			;a8a2
	inc bc			;a8a3
	ld b,e			;a8a4
	nop			;a8a5
	sub b			;a8a6
	rst 38h			;a8a7
	nop			;a8a8
	cp 078h			;a8a9
	jr nc,la92bh		;a8ab
	inc a			;a8ad
	ld a,(hl)		;a8ae
	call m,0011fh		;a8af
	call po,0d0f8h		;a8b2
	call nz,000e8h		;a8b5
	ld (bc),a		;a8b8
	di			;a8b9
	add a,d			;a8ba
	ld b,e			;a8bb
	ld d,h			;a8bc
	inc bc			;a8bd
	sub l			;a8be
	add a,h			;a8bf
	ld d,h			;a8c0
	ret p			;a8c1
	di			;a8c2
	di			;a8c3
	dec b			;a8c4
	ld b,e			;a8c5
	nop			;a8c6
	add a,c			;a8c7
	ret po			;a8c8
	inc b			;a8c9
	rra			;a8ca
	adc a,e			;a8cb
	ret nz			;a8cc
	rrca			;a8cd
	rra			;a8ce
	rlca			;a8cf
	ret m			;a8d0
	call m,03ff8h		;a8d1
	ret nz			;a8d4
	rrca			;a8d5
	rst 38h			;a8d6
	nop			;a8d7
	ld (bc),a		;a8d8
	sub l			;a8d9
	add a,d			;a8da
	ld d,h			;a8db
	ld b,e			;a8dc
	inc bc			;a8dd
	ccf			;a8de
	adc a,c			;a8df
	ld b,e			;a8e0
	sub l			;a8e1
	sub l			;a8e2
	ld d,h			;a8e3
	ld b,e			;a8e4
	di			;a8e5
	di			;a8e6
	ld b,e			;a8e7
	ld b,e			;a8e8
	nop			;a8e9
	ld (bc),a		;a8ea
	rst 20h			;a8eb
	ld (bc),a		;a8ec
	jp 07885h		;a8ed
	ld a,03fh		;a8f0
	ccf			;a8f2
	pop af			;a8f3
	rlca			;a8f4
	ret p			;a8f5
	ld (bc),a		;a8f6
	sbc a,c			;a8f7
	adc a,a			;a8f8
	inc a			;a8f9
	ld a,(hl)		;a8fa
	jr c,$+126		;a8fb
	ld a,(hl)		;a8fd
	ld a,(hl)		;a8fe
	ld a,03eh		;a8ff
	inc e			;a901
	ld a,(hl)		;a902
	ld a,(hl)		;a903
	inc e			;a904
	inc a			;a905
	inc a			;a906
	add a,b			;a907
	inc bc			;a908
	inc a			;a909
la90ah:
	sbc a,c			;a90a
la90bh:
	jr la949h		;a90b
	inc a			;a90d
	ccf			;a90e
	rst 20h			;a90f
	rst 20h			;a910
	inc a			;a911
	ld a,(hl)		;a912
	jr c,$+126		;a913
	ld a,h			;a915
	inc a			;a916
	rst 38h			;a917
	ret p			;a918
	ld c,01ch		;a919
	ld a,(hl)		;a91b
	inc a			;a91c
	jr c,la997h		;a91d
	jr c,la95dh		;a91f
	jr c,la9a1h		;a921
	ld (hl),b		;a923
	inc bc			;a924
	rrca			;a925
	add a,h			;a926
	cp 0e0h			;a927
	rlca			;a929
	ccf			;a92a
la92bh:
	inc bc			;a92b
	ret po			;a92c
	add a,c			;a92d
	inc bc			;a92e
	inc b			;a92f
	rrca			;a930
	inc bc			;a931
	ret p			;a932
	add a,c			;a933
	ret nz			;a934
	nop			;a935
	inc bc			;a936
	push af			;a937
	adc a,h			;a938
	ld c,c			;a939
	sub l			;a93a
	sub l			;a93b
	ld d,h			;a93c
	ld b,e			;a93d
	call p,0f4f3h		;a93e
	dec (hl)		;a941
	ld c,c			;a942
	ld d,l			;a943
	sub h			;a944
	inc b			;a945
	ld d,e			;a946
	add a,c			;a947
	ld d,h			;a948
la949h:
	rlca			;a949
	sub l			;a94a
	inc bc			;a94b
	ld d,h			;a94c
	add a,c			;a94d
	ld b,e			;a94e
	inc bc			;a94f
	ccf			;a950
	add a,d			;a951
	ld b,e			;a952
	ld d,h			;a953
	inc bc			;a954
	sub l			;a955
	add a,l			;a956
	ld d,h			;a957
	ld sp,hl		;a958
	ld sp,hl		;a959
	ld d,e			;a95a
	ld d,h			;a95b
	inc b			;a95c
la95dh:
	sub l			;a95d
	ld (bc),a		;a95e
	di			;a95f
	add a,(hl)		;a960
	ld b,e			;a961
	ld d,h			;a962
	ld d,h			;a963
	sub l			;a964
	sub l			;a965
	ld d,h			;a966
	inc bc			;a967
	sub l			;a968
	ld (bc),a		;a969
	ld d,h			;a96a
	sub e			;a96b
	call p,0cfb3h		;a96c
	ld d,h			;a96f
	ld d,h			;a970
	call p,0fbf4h		;a971
	cp h			;a974
	add a,0c6h		;a975
	call p,0cbbfh		;a977
	ld l,h			;a97a
	ld l,h			;a97b
	res 6,l			;a97c
	ld sp,hl		;a97e
	nop			;a97f
	sub d			;a980
	ld a,(hl)		;a981
	jr c,la90ah		;a982
	add a,b			;a984
	ccf			;a985
	ld a,a			;a986
	dec a			;a987
	ld a,a			;a988
	jr la9c9h		;a989
	inc e			;a98b
	ld a,01ch		;a98c
	nop			;a98e
	nop			;a98f
	in a,(0e1h)		;a990
	pop hl			;a992
	dec b			;a993
	rra			;a994
	add a,c			;a995
	rrca			;a996
la997h:
	nop			;a997
	ld (bc),a		;a998
	di			;a999
	add a,c			;a99a
	ld b,e			;a99b
	inc bc			;a99c
	ld d,h			;a99d
	ld (bc),a		;a99e
	sub l			;a99f
	add a,d			;a9a0
la9a1h:
	ld d,e			;a9a1
	ld d,h			;a9a2
	dec b			;a9a3
	sub l			;a9a4
	adc a,c			;a9a5
	ld d,h			;a9a6
	ei			;a9a7
	cp h			;a9a8
	call m,0ccb6h		;a9a9
	ld l,e			;a9ac
	rst 8			;a9ad
	or e			;a9ae
	nop			;a9af
	sub c			;a9b0
	ld a,a			;a9b1
	dec a			;a9b2
	ld a,a			;a9b3
	ccf			;a9b4
	add a,b			;a9b5
	add a,(hl)		;a9b6
	jr c,laa37h		;a9b7
	in a,(0ffh)		;a9b9
	rst 38h			;a9bb
	inc e			;a9bc
	ld a,01ch		;a9bd
	ld a,018h		;a9bf
	rrca			;a9c1
	dec b			;a9c2
	ret po			;a9c3
	ld (bc),a		;a9c4
	ld e,000h		;a9c5
	ld (bc),a		;a9c7
	sub l			;a9c8
la9c9h:
	inc bc			;a9c9
	ld d,h			;a9ca
	add a,e			;a9cb
	ld b,e			;a9cc
	di			;a9cd
	di			;a9ce
	inc bc			;a9cf
	ld d,h			;a9d0
	inc bc			;a9d1
	sub l			;a9d2
	adc a,d			;a9d3
	ld d,h			;a9d4
	ld d,e			;a9d5
	or e			;a9d6
	call m,0ccb6h		;a9d7
	ld l,e			;a9da
	rst 8			;a9db
	res 7,a			;a9dc
	nop			;a9de
	sub d			;a9df
	ld a,01fh		;a9e0
	ret nz			;a9e2
	ret m			;a9e3
	cp 007h			;a9e4
	ret nz			;a9e6
	ret po			;a9e7
	jr laa68h		;a9e8
	inc a			;a9ea
	ld a,(hl)		;a9eb
	jp 00ffch		;a9ec
	ret m			;a9ef
	ld (hl),b		;a9f0
	ld (hl),b		;a9f1
	inc bc			;a9f2
	ret p			;a9f3
	ld (bc),a		;a9f4
	rrca			;a9f5
	add a,c			;a9f6
	rlca			;a9f7
	dec b			;a9f8
	ret p			;a9f9
	add a,e			;a9fa
	ld sp,hl		;a9fb
	rst 38h			;a9fc
	ret po			;a9fd
	inc bc			;a9fe
	ret p			;a9ff
	add a,l			;aa00
	ld b,b			;aa01
	ccf			;aa02
	ret p			;aa03
	ret po			;aa04
	ret po			;aa05
	inc bc			;aa06
	ret p			;aa07
	dec b			;aa08
	rrca			;aa09
	adc a,e			;aa0a
laa0bh:
	ret po			;aa0b
	ld bc,0ffffh		;aa0c
	rra			;aa0f
	rra			;aa10
	call m,0e13fh		;aa11
	add a,b			;aa14
	ld bc,00f03h		;aa15
	and (hl)		;aa18
	call m,0fef0h		;aa19
	rra			;aa1c
	ret p			;aa1d
	ret p			;aa1e
	rrca			;aa1f
	ccf			;aa20
	pop hl			;aa21
	ret nz			;aa22
	ret nz			;aa23
	ret p			;aa24
	rst 38h			;aa25
	inc bc			;aa26
	nop			;aa27
	ret nz			;aa28
	ret p			;aa29
	ret m			;aa2a
	ret po			;aa2b
	ret p			;aa2c
	ret p			;aa2d
	ret nz			;aa2e
	ret po			;aa2f
	ld a,a			;aa30
	jr nz,$-30		;aa31
	ret p			;aa33
	rrca			;aa34
	rrca			;aa35
	ret po			;aa36
laa37h:
	ret po			;aa37
	rrca			;aa38
	rrca			;aa39
	ret p			;aa3a
	rlca			;aa3b
	ret po			;aa3c
	call m,0040fh		;aa3d
	rlca			;aa40
	sbc a,d			;aa41
	ret p			;aa42
	call m,00f3fh		;aa43
	jp 0c3ffh		;aa46
	jr laa0bh		;aa49
	pop hl			;aa4b
	ccf			;aa4c
	ccf			;aa4d
	ld a,l			;aa4e
	add a,b			;aa4f
	ret p			;aa50
	ld a,a			;aa51
	call m,0cffch		;aa52
	rrca			;aa55
	inc bc			;aa56
	cp 0f0h			;aa57
	nop			;aa59
	ret p			;aa5a
	ret p			;aa5b
	inc bc			;aa5c
	ret m			;aa5d
	adc a,b			;aa5e
	ret p			;aa5f
	ccf			;aa60
	ret p			;aa61
	ret p			;aa62
	rrca			;aa63
	inc b			;aa64
	inc e			;aa65
	ret m			;aa66
	inc bc			;aa67
laa68h:
	rrca			;aa68
	nop			;aa69
	add a,d			;aa6a
	ld d,h			;aa6b
	ld b,e			;aa6c
	inc bc			;aa6d
	di			;aa6e
	sbc a,b			;aa6f
	ei			;aa70
	set 1,e			;aa71
	sub l			;aa73
	ld d,h			;aa74
	ld d,h			;aa75
	ld b,e			;aa76
	di			;aa77
	call m,0c6cbh		;aa78
	ld d,h			;aa7b
	ld c,a			;aa7c
	ei			;aa7d
	cp h			;aa7e
	add a,0c6h		;aa7f
	call m,sub_b6fbh	;aa81
	call z,0cf6bh		;aa84
	cp a			;aa87
	inc bc			;aa88
	di			;aa89
	sub b			;aa8a
	add a,0bch		;aa8b
	ld e,e			;aa8d
	ld d,h			;aa8e
	call p,0f4f3h		;aa8f
	ld b,l			;aa92
	push af			;aa93
	cp a			;aa94
	set 1,e			;aa95
	or h			;aa97
	ld c,a			;aa98
	di			;aa99
	inc (hl)		;aa9a
	inc bc			;aa9b
	rlc d			;aa9c
	ld l,h			;aa9e
	add a,e			;aa9f
	rst 8			;aaa0
	ei			;aaa1
	ei			;aaa2
	inc b			;aaa3
	add a,081h		;aaa4
	cp h			;aaa6
	inc bc			;aaa7
	ei			;aaa8
	adc a,d			;aaa9
	set 0,(hl)		;aaaa
	res 7,a			;aaac
	cp a			;aaae
	set 0,(hl)		;aaaf
	add a,0b4h		;aab1
laab3h:
	or l			;aab3
	inc bc			;aab4
	ei			;aab5
	inc bc			;aab6
	res 2,b			;aab7
	ld d,h			;aab9
	ld b,e			;aaba
	or l			;aabb
	ld sp,hl		;aabc
	push af			;aabd
	ei			;aabe
	ei			;aabf
	or h			;aac0
	ld d,h			;aac1
	ld d,h			;aac2
	ld b,e			;aac3
	ld d,e			;aac4
	ld b,e			;aac5
	ld b,e			;aac6
	ld d,h			;aac7
	ld d,h			;aac8
	inc bc			;aac9
	call m,0f388h		;aaca
	call p,04435h		;aacd
	ld d,e			;aad0
	ei			;aad1
	ei			;aad2
laad3h:
	call m,0fb04h		;aad3
	adc a,(hl)		;aad6
	set 0,(hl)		;aad7
	add a,0cbh		;aad9
	rst 38h			;aadb
	and (hl)		;aadc
	or 0fch			;aadd
	call m,0cbcbh		;aadf
	or e			;aae2
	ei			;aae3
	add a,003h		;aae4
	res 2,b			;aae6
	or l			;aae8
	or h			;aae9
	or e			;aaea
	call p,sub_b4b5h	;aaeb
	ei			;aaee
	di			;aaef
	ld b,e			;aaf0
laaf1h:
	ld b,e			;aaf1
	sub l			;aaf2
	sub l			;aaf3
	sub h			;aaf4
	push af			;aaf5
	ccf			;aaf6
	ld b,e			;aaf7
	nop			;aaf8
	add a,e			;aaf9
	rst 38h			;aafa
	ret nz			;aafb
	cp a			;aafc
	inc bc			;aafd
	ret po			;aafe
	adc a,a			;aaff
	sbc a,a			;ab00
	ret po			;ab01
	jp 0f03fh		;ab02
	ret p			;ab05
	ret m			;ab06
	ret m			;ab07
	rlca			;ab08
	rlca			;ab09
	rra			;ab0a
	rra			;ab0b
	ld h,b			;ab0c
	ret po			;ab0d
	rst 38h			;ab0e
	inc bc			;ab0f
	ret po			;ab10
	ld (bc),a		;ab11
	ret m			;ab12
	inc bc			;ab13
	rlca			;ab14
	inc bc			;ab15
	ret p			;ab16
	add a,c			;ab17
	ld a,a			;ab18
	inc b			;ab19
	ret po			;ab1a
	sub e			;ab1b
	ccf			;ab1c
	add a,b			;ab1d
	rst 38h			;ab1e
	rst 38h			;ab1f
	nop			;ab20
	nop			;ab21
	rst 38h			;ab22
	rst 38h			;ab23
	nop			;ab24
	nop			;ab25
	rst 38h			;ab26
	jp 0007eh		;ab27
	inc c			;ab2a
	inc bc			;ab2b
	inc a			;ab2c
	inc a			;ab2d
	add a,e			;ab2e
	inc b			;ab2f
	jr c,laab3h		;ab30
	ccf			;ab32
	inc bc			;ab33
	rrca			;ab34
	ld (bc),a		;ab35
	ret po			;ab36
	inc b			;ab37
	inc a			;ab38
	add a,e			;ab39
	adc a,a			;ab3a
	ret p			;ab3b
	ccf			;ab3c
	ld b,00fh		;ab3d
	adc a,c			;ab3f
	rlca			;ab40
	call m,01ffch		;ab41
	ret p			;ab44
	ld bc,0c3fdh		;ab45
	inc bc			;ab48
	dec b			;ab49
	jp 0f083h		;ab4a
	ld b,e			;ab4d
	inc e			;ab4e
	inc b			;ab4f
	jr c,laad3h		;ab50
	ld a,a			;ab52
	inc bc			;ab53
	rrca			;ab54
	adc a,b			;ab55
	ld h,e			;ab56
	ld a,03ch		;ab57
	ld h,b			;ab59
	rst 20h			;ab5a
	rlca			;ab5b
	inc a			;ab5c
	inc a			;ab5d
	inc b			;ab5e
	rrca			;ab5f
	add a,(hl)		;ab60
	nop			;ab61
lab62h:
	rrca			;ab62
	rrca			;ab63
	rlca			;ab64
	jp 0037eh		;ab65
	jp 03083h		;ab68
	ld c,0feh		;ab6b
	inc b			;ab6d
	jr c,laaf1h		;ab6e
	ccf			;ab70
	inc b			;ab71
	rrca			;ab72
	adc a,b			;ab73
	ret po			;ab74
	ld e,001h		;ab75
	jr c,$-31		;ab77
	rst 0			;ab79
	rst 0			;ab7a
	ccf			;ab7b
	rlca			;ab7c
	rrca			;ab7d
	add a,l			;ab7e
	inc bc			;ab7f
	inc c			;ab80
	djnz lab62h		;ab81
	nop			;ab83
	inc bc			;ab84
	inc a			;ab85
	sub b			;ab86
	ld bc,018f8h		;ab87
	ld h,b			;ab8a
	add a,b			;ab8b
	jp 0c3ffh		;ab8c
	adc a,a			;ab8f
	add a,b			;ab90
	inc a			;ab91
	inc a			;ab92
	ld bc,0c3bdh		;ab93
	add a,e			;ab96
	nop			;ab97
	inc bc			;ab98
	call m,0fba3h		;ab99
	cp h			;ab9c
	add a,0c6h		;ab9d
	set 6,e			;ab9f
	call m,sub_bffch	;aba1
	bit 5,h			;aba4
	ld l,h			;aba6
	set 1,e			;aba7
	ld l,h			;aba9
	ld l,h			;abaa
	set 7,e			;abab
	ei			;abad
	cp h			;abae
	add a,0cbh		;abaf
	ld l,h			;abb1
	ld l,h			;abb2
	res 7,a			;abb3
	cp a			;abb5
	bit 5,h			;abb6
	call m,034f3h		;abb8
	ld b,l			;abbb
	ld e,c			;abbc
	ld b,e			;abbd
	inc b			;abbe
	di			;abbf
	ld (bc),a		;abc0
	ld d,h			;abc1
	ld (bc),a		;abc2
	sub h			;abc3
	inc bc			;abc4
	di			;abc5
	ld (bc),a		;abc6
	ret p			;abc7
	and c			;abc8
	ld h,c			;abc9
	ld h,d			;abca
	djnz labdch		;abcb
	rrca			;abcd
	sub l			;abce
	ld d,h			;abcf
	ld b,e			;abd0
	ccf			;abd1
	ret p			;abd2
	or (hl)			;abd3
	ld h,b			;abd4
	or c			;abd5
	or 060h			;abd6
	djnz labfbh		;abd8
	djnz labebh		;abda
labdch:
	or 0f6h			;abdc
	ret p			;abde
	or (hl)			;abdf
	ld h,b			;abe0
	or b			;abe1
	inc c			;abe2
	or b			;abe3
	add a,0b0h		;abe4
	call m,0c206h		;abe6
	ld h,b			;abe9
	inc bc			;abea
labebh:
	ret p			;abeb
	adc a,0f1h		;abec
	di			;abee
	ret p			;abef
	ld bc,00112h		;abf0
	or 0f0h			;abf3
	ld h,b			;abf5
	sub l			;abf6
	ld d,h			;abf7
	ld b,e			;abf8
	ccf			;abf9
	ret p			;abfa
labfbh:
	or b			;abfb
	ld h,(hl)		;abfc
	or b			;abfd
	ld h,b			;abfe
	djnz lac22h		;abff
	ld h,c			;ac01
	or 060h			;ac02
	djnz $+35		;ac04
	ret p			;ac06
	or (hl)			;ac07
	ld h,b			;ac08
	cp h			;ac09
	or b			;ac0a
	or b			;ac0b
	add a,0b0h		;ac0c
	di			;ac0e
	ret p			;ac0f
	ret p			;ac10
	ld bc,06102h		;ac11
lac14h:
	ld h,b			;ac14
	or 095h			;ac15
	ld d,h			;ac17
	ld b,e			;ac18
	ccf			;ac19
	ret p			;ac1a
	or c			;ac1b
	ld h,b			;ac1c
	or (hl)			;ac1d
	nop			;ac1e
	ld h,c			;ac1f
	ld h,d			;ac20
lac21h:
	ld h,c			;ac21
lac22h:
	djnz lac14h		;ac22
	ret p			;ac24
	ld bc,lb0f0h		;ac25
	ld h,b			;ac28
	or (hl)			;ac29
	nop			;ac2a
	or c			;ac2b
	ret nz			;ac2c
	or (hl)			;ac2d
	ld h,d			;ac2e
	ld h,c			;ac2f
	ld h,b			;ac30
	or 020h			;ac31
	jr nz,lac45h		;ac33
	rrca			;ac35
	rrca			;ac36
	or 061h			;ac37
	ld h,d			;ac39
	ld h,c			;ac3a
	inc bc			;ac3b
	ret p			;ac3c
	add a,h			;ac3d
	add a,061h		;ac3e
	jr nz,lac52h		;ac40
	inc b			;ac42
	ret p			;ac43
	nop			;ac44
lac45h:
	xor b			;ac45
	rla			;ac46
	inc hl			;ac47
	dec bc			;ac48
	rra			;ac49
	daa			;ac4a
	add a,b			;ac4b
	ret m			;ac4c
	ccf			;ac4d
	inc a			;ac4e
	inc a			;ac4f
	ld a,(hl)		;ac50
	inc c			;ac51
lac52h:
	ld e,07fh		;ac52
	add a,e			;ac54
	add a,e			;ac55
	inc a			;ac56
	inc a			;ac57
	ld a,(hl)		;ac58
	jr nc,lacd3h		;ac59
	cp 0c1h			;ac5b
	rst 38h			;ac5d
	ccf			;ac5e
	ret m			;ac5f
	add a,b			;ac60
	daa			;ac61
	rra			;ac62
	dec bc			;ac63
	inc hl			;ac64
	rla			;ac65
	rst 38h			;ac66
	nop			;ac67
	ld a,a			;ac68
	ld e,00ch		;ac69
	ld a,(hl)		;ac6b
	inc a			;ac6c
	ld a,(hl)		;ac6d
	nop			;ac6e
	dec b			;ac6f
	ld b,e			;ac70
	ld (bc),a		;ac71
	di			;ac72
	add a,d			;ac73
	ret p			;ac74
	ld d,h			;ac75
	inc bc			;ac76
	sub l			;ac77
	add a,l			;ac78
	ld d,h			;ac79
	ld b,e			;ac7a
	ld b,e			;ac7b
	rst 38h			;ac7c
	ld d,h			;ac7d
	inc bc			;ac7e
	sub l			;ac7f
	add a,a			;ac80
	ld d,h			;ac81
	ld b,e			;ac82
	ld b,e			;ac83
	ret p			;ac84
	ret p			;ac85
	di			;ac86
	di			;ac87
	dec b			;ac88
	ld b,e			;ac89
	ld (bc),a		;ac8a
	di			;ac8b
	add a,d			;ac8c
	ld b,e			;ac8d
	ld d,h			;ac8e
	inc bc			;ac8f
	sub l			;ac90
	add a,c			;ac91
	ld d,h			;ac92
	nop			;ac93
	add a,c			;ac94
	rst 38h			;ac95
	ld b,00fh		;ac96
	sub e			;ac98
	ret m			;ac99
	ld a,(hl)		;ac9a
	jp 01881h		;ac9b
	jr lac21h		;ac9e
	jp 0e07eh		;aca0
	call m,0f0e7h		;aca3
	ret p			;aca6
	rst 20h			;aca7
	call m,0ffe0h		;aca8
	nop			;acab
	inc b			;acac
	jp po,00002h		;acad
	rlca			;acb0
	rrca			;acb1
	add a,d			;acb2
	ret p			;acb3
	rrca			;acb4
	ld b,0f0h		;acb5
	add a,e			;acb7
	rrca			;acb8
	ret nz			;acb9
	rra			;acba
	inc b			;acbb
	rrca			;acbc
	add a,h			;acbd
	rra			;acbe
	ret nz			;acbf
	nop			;acc0
	nop			;acc1
	inc bc			;acc2
	rst 38h			;acc3
	ld (bc),a		;acc4
	nop			;acc5
	ld (bc),a		;acc6
	rst 38h			;acc7
	ld b,0f0h		;acc8
	add a,d			;acca
	rst 28h			;accb
	rst 20h			;accc
	inc bc			;accd
	defb 0fdh,087h,0ffh ;illegal sequence	;acce
	cp a			;acd1
	cp a			;acd2
lacd3h:
	adc a,a			;acd3
	inc bc			;acd4
	add a,a			;acd5
	rst 20h			;acd6
	inc b			;acd7
	rst 0			;acd8
	add a,(hl)		;acd9
	ex (sp),hl		;acda
	rra			;acdb
	rra			;acdc
	ld a,a			;acdd
	rst 38h			;acde
	rst 38h			;acdf
	inc bc			;ace0
	rst 20h			;ace1
	add a,d			;ace2
	rst 38h			;ace3
	nop			;ace4
	inc b			;ace5
	ret m			;ace6
	adc a,h			;ace7
	cp 0ffh			;ace8
	ret nz			;acea
	ret nz			;aceb
	ret po			;acec
	ret m			;aced
	rst 38h			;acee
	ccf			;acef
	ret po			;acf0
	ret po			;acf1
	rlca			;acf2
	call m,0f804h		;acf3
	ld (bc),a		;acf6
	rra			;acf7
	nop			;acf8
	ld (bc),a		;acf9
	di			;acfa
	adc a,l			;acfb
	inc (hl)		;acfc
	ld b,l			;acfd
	ld b,l			;acfe
	inc (hl)		;acff
	di			;ad00
	di			;ad01
	set 0,(hl)		;ad02
	add a,0a6h		;ad04
	and (hl)		;ad06
	add a,0c6h		;ad07
	inc bc			;ad09
	rlc h			;ad0a
	add a,002h		;ad0c
	rlc d			;ad0e
	ei			;ad10
	adc a,h			;ad11
	bit 5,h			;ad12
	ld l,h			;ad14
	set 1,e			;ad15
	rst 38h			;ad17
	ld b,e			;ad18
	ld d,h			;ad19
	ld b,e			;ad1a
	cp a			;ad1b
	ccf			;ad1c
	ld c,e			;ad1d
	inc b			;ad1e
	ld d,h			;ad1f
	sub c			;ad20
	ld b,e			;ad21
	add hl,sp		;ad22
	dec (hl)		;ad23
	ld b,e			;ad24
	ld d,h			;ad25
	ld d,h			;ad26
	di			;ad27
	ld b,e			;ad28
	ld d,h			;ad29
	sub l			;ad2a
	sub l			;ad2b
	ld d,h			;ad2c
	ld b,e			;ad2d
	di			;ad2e
	di			;ad2f
	ld d,h			;ad30
	ld d,h			;ad31
	inc bc			;ad32
	sub l			;ad33
	ld (bc),a		;ad34
	inc (hl)		;ad35
	ld (bc),a		;ad36
	di			;ad37
	add a,l			;ad38
	call p,0f5f5h		;ad39
	call p,003f3h		;ad3c
	rst 30h			;ad3f
	add a,c			;ad40
	cp 005h			;ad41
	rst 30h			;ad43
	adc a,c			;ad44
	jp p,0f0f1h		;ad45
	ret p			;ad48
	jp p,0f1f2h		;ad49
	ret p			;ad4c
	add a,004h		;ad4d
	di			;ad4f
	adc a,b			;ad50
	rst 30h			;ad51
	cp 0feh			;ad52
	cp a			;ad54
	cp a			;ad55
	di			;ad56
	call p,003f5h		;ad57
	di			;ad5a
	dec b			;ad5b
	rst 30h			;ad5c
	adc a,e			;ad5d
	ei			;ad5e
	bit 5,h			;ad5f
	rst 30h			;ad61
	ld (hl),e		;ad62
	ld (hl),e		;ad63
	ld (hl),l		;ad64
	call p,0fbf3h		;ad65
	rlc b			;ad68
	sub h			;ad6a
	ld a,01fh		;ad6b
	ret nz			;ad6d
	ret m			;ad6e
	cp 007h			;ad6f
	ret nz			;ad71
	ret po			;ad72
	jr ladf3h		;ad73
	inc a			;ad75
	ld a,(hl)		;ad76
	jp 00ffch		;ad77
	rlca			;ad7a
	ld e,007h		;ad7b
	rlca			;ad7d
	ccf			;ad7e
	inc bc			;ad7f
	ret po			;ad80
	add a,l			;ad81
	inc bc			;ad82
	inc e			;ad83
	ccf			;ad84
	ld a,07fh		;ad85
	inc b			;ad87
	ret p			;ad88
	add a,c			;ad89
	dec h			;ad8a
	inc bc			;ad8b
	rrca			;ad8c
	add a,a			;ad8d
	ret m			;ad8e
	call m,0070fh		;ad8f
	add a,b			;ad92
	ret nz			;ad93
	ret nz			;ad94
	inc bc			;ad95
	ccf			;ad96
	ld (bc),a		;ad97
	ret po			;ad98
	add a,c			;ad99
	nop			;ad9a
	dec b			;ad9b
	ret po			;ad9c
	add a,d			;ad9d
	rra			;ad9e
	ret p			;ad9f
	nop			;ada0
	add a,d			;ada1
	ld d,h			;ada2
	ld b,e			;ada3
	inc b			;ada4
	di			;ada5
	ld (bc),a		;ada6
	ld b,e			;ada7
	sub d			;ada8
	sub l			;ada9
	ld d,h			;adaa
	ld d,h			;adab
	ld b,e			;adac
	di			;adad
	call p,05443h		;adae
	ld d,h			;adb1
	ld b,e			;adb2
	call p,0f3f4h		;adb3
	inc (hl)		;adb6
	ld b,l			;adb7
	ld b,l			;adb8
	ld b,e			;adb9
	ld b,e			;adba
	inc bc			;adbb
	ld d,h			;adbc
	sbc a,b			;adbd
	ld e,a			;adbe
	ld b,e			;adbf
	call p,05495h		;adc0
	ld c,a			;adc3
	di			;adc4
	ld b,e			;adc5
	ld d,h			;adc6
	ld d,h			;adc7
	ld b,e			;adc8
	ld d,h			;adc9
	ld b,e			;adca
	ccf			;adcb
	ccf			;adcc
	ld b,e			;adcd
	ld d,h			;adce
	ld d,h			;adcf
	ld b,e			;add0
	ld b,e			;add1
	call p,04435h		;add2
	ld d,e			;add5
	inc bc			;add6
	ld b,e			;add7
	nop			;add8
	inc bc			;add9
	inc a			;adda
	sub l			;addb
	nop			;addc
	jp 087ffh		;addd
	ld (hl),b		;ade0
	ld a,01fh		;ade1
	ret nz			;ade3
	ret m			;ade4
	cp 007h			;ade5
	ld (hl),b		;ade7
	inc e			;ade8
	jr lae69h		;ade9
	inc a			;adeb
	ld a,(hl)		;adec
	jp 03dfch		;aded
	nop			;adf0
	dec b			;adf1
	rrca			;adf2
ladf3h:
	add a,e			;adf3
	ld sp,hl		;adf4
	rst 38h			;adf5
	ret po			;adf6
	nop			;adf7
	adc a,d			;adf8
	djnz $+35		;adf9
	djnz lae0dh		;adfb
	ret p			;adfd
	ret p			;adfe
	call p,05454h		;adff
	ld b,e			;ae02
	inc bc			;ae03
	di			;ae04
	adc a,b			;ae05
	ret p			;ae06
	djnz lae19h		;ae07
	sub l			;ae09
	ld d,h			;ae0a
	ld d,h			;ae0b
	ld b,e			;ae0c
lae0dh:
	di			;ae0d
	inc bc			;ae0e
	ret p			;ae0f
	add a,l			;ae10
	ld d,b			;ae11
	ld b,h			;ae12
	dec (hl)		;ae13
	call p,003f3h		;ae14
	ret p			;ae17
	nop			;ae18
lae19h:
	ld (bc),a		;ae19
	pop hl			;ae1a
	ld b,01fh		;ae1b
	inc bc			;ae1d
	rrca			;ae1e
	add a,c			;ae1f
	jr c,lae25h		;ae20
	inc a			;ae22
	adc a,e			;ae23
	nop			;ae24
lae25h:
	ld a,l			;ae25
	jr c,lae65h		;ae26
	ret nz			;ae28
	cp 087h			;ae29
	ret p			;ae2b
	ret p			;ae2c
	ret po			;ae2d
	ret po			;ae2e
	inc bc			;ae2f
	ccf			;ae30
	ld (bc),a		;ae31
	ret nz			;ae32
	add a,l			;ae33
	add a,b			;ae34
	ret m			;ae35
	rrca			;ae36
	call m,003f8h		;ae37
	rrca			;ae3a
	add a,c			;ae3b
	dec h			;ae3c
	nop			;ae3d
	sub e			;ae3e
	di			;ae3f
	inc (hl)		;ae40
	call p,04435h		;ae41
	ld d,e			;ae44
	ld c,a			;ae45
	inc sp			;ae46
	ld d,h			;ae47
	ld b,e			;ae48
	ccf			;ae49
	sub e			;ae4a
	ld d,h			;ae4b
	ld b,e			;ae4c
	ccf			;ae4d
	ccf			;ae4e
	ld d,h			;ae4f
	ld d,h			;ae50
	ld b,e			;ae51
	inc bc			;ae52
	di			;ae53
	sub d			;ae54
	ld b,e			;ae55
	ld d,h			;ae56
	ld b,e			;ae57
	ld d,h			;ae58
	ld d,h			;ae59
	ld b,e			;ae5a
	ccf			;ae5b
	ccf			;ae5c
	ld b,e			;ae5d
	ld d,h			;ae5e
	or h			;ae5f
	ld d,h			;ae60
	ld d,h			;ae61
	ld b,e			;ae62
	di			;ae63
	ld c,a			;ae64
lae65h:
	ld d,h			;ae65
	sub l			;ae66
	nop			;ae67
	rst 38h			;ae68
lae69h:
	rst 38h			;ae69
	rst 38h			;ae6a
	rst 38h			;ae6b
	rst 38h			;ae6c
	rst 38h			;ae6d
	rst 38h			;ae6e
	rst 38h			;ae6f
	rst 38h			;ae70
	rst 38h			;ae71
	rst 38h			;ae72
	rst 38h			;ae73
	rst 38h			;ae74
	rst 38h			;ae75
	rst 38h			;ae76
	rst 38h			;ae77
	rst 38h			;ae78
	rst 38h			;ae79
	rst 38h			;ae7a
	rst 38h			;ae7b
	rst 38h			;ae7c
	rst 38h			;ae7d
	rst 38h			;ae7e
	rst 38h			;ae7f
	rst 38h			;ae80
	rst 38h			;ae81
	rst 38h			;ae82
	rst 38h			;ae83
	rst 38h			;ae84
	rst 38h			;ae85
	rst 38h			;ae86
	rst 38h			;ae87
	rst 38h			;ae88
	rst 38h			;ae89
	rst 38h			;ae8a
	rst 38h			;ae8b
	rst 38h			;ae8c
	rst 38h			;ae8d
	rst 38h			;ae8e
	rst 38h			;ae8f
	rst 38h			;ae90
	rst 38h			;ae91
	rst 38h			;ae92
	rst 38h			;ae93
	rst 38h			;ae94
	rst 38h			;ae95
	rst 38h			;ae96
	rst 38h			;ae97
	rst 38h			;ae98
	rst 38h			;ae99
	rst 38h			;ae9a
	rst 38h			;ae9b
	rst 38h			;ae9c
	rst 38h			;ae9d
	rst 38h			;ae9e
	rst 38h			;ae9f
	rst 38h			;aea0
	rst 38h			;aea1
	rst 38h			;aea2
	rst 38h			;aea3
	rst 38h			;aea4
	rst 38h			;aea5
	rst 38h			;aea6
	rst 38h			;aea7
	rst 38h			;aea8
	rst 38h			;aea9
	rst 38h			;aeaa
	rst 38h			;aeab
	rst 38h			;aeac
	rst 38h			;aead
	rst 38h			;aeae
	rst 38h			;aeaf
	rst 38h			;aeb0
	rst 38h			;aeb1
	rst 38h			;aeb2
	rst 38h			;aeb3
	rst 38h			;aeb4
	rst 38h			;aeb5
	rst 38h			;aeb6
	rst 38h			;aeb7
	rst 38h			;aeb8
	rst 38h			;aeb9
	rst 38h			;aeba
	rst 38h			;aebb
	rst 38h			;aebc
	rst 38h			;aebd
	rst 38h			;aebe
	rst 38h			;aebf
	rst 38h			;aec0
	rst 38h			;aec1
	rst 38h			;aec2
	rst 38h			;aec3
	rst 38h			;aec4
	rst 38h			;aec5
	rst 38h			;aec6
	rst 38h			;aec7
	rst 38h			;aec8
	rst 38h			;aec9
	rst 38h			;aeca
	rst 38h			;aecb
	rst 38h			;aecc
	rst 38h			;aecd
	rst 38h			;aece
	rst 38h			;aecf
	rst 38h			;aed0
	rst 38h			;aed1
	rst 38h			;aed2
	rst 38h			;aed3
	rst 38h			;aed4
	rst 38h			;aed5
	rst 38h			;aed6
	rst 38h			;aed7
	rst 38h			;aed8
	rst 38h			;aed9
	rst 38h			;aeda
	rst 38h			;aedb
	rst 38h			;aedc
	rst 38h			;aedd
	rst 38h			;aede
	rst 38h			;aedf
	rst 38h			;aee0
	rst 38h			;aee1
	rst 38h			;aee2
	rst 38h			;aee3
	rst 38h			;aee4
	rst 38h			;aee5
	rst 38h			;aee6
	rst 38h			;aee7
	rst 38h			;aee8
	rst 38h			;aee9
	rst 38h			;aeea
	rst 38h			;aeeb
	rst 38h			;aeec
	rst 38h			;aeed
	rst 38h			;aeee
	rst 38h			;aeef
	rst 38h			;aef0
	rst 38h			;aef1
	rst 38h			;aef2
	rst 38h			;aef3
	rst 38h			;aef4
	rst 38h			;aef5
	rst 38h			;aef6
	rst 38h			;aef7
	rst 38h			;aef8
	rst 38h			;aef9
	rst 38h			;aefa
	rst 38h			;aefb
	rst 38h			;aefc
	rst 38h			;aefd
	rst 38h			;aefe
	rst 38h			;aeff
	rst 38h			;af00
	rst 38h			;af01
	rst 38h			;af02
	rst 38h			;af03
	rst 38h			;af04
	rst 38h			;af05
	rst 38h			;af06
	rst 38h			;af07
	rst 38h			;af08
	rst 38h			;af09
	rst 38h			;af0a
	rst 38h			;af0b
	rst 38h			;af0c
	rst 38h			;af0d
	rst 38h			;af0e
	rst 38h			;af0f
	rst 38h			;af10
	rst 38h			;af11
	rst 38h			;af12
	rst 38h			;af13
	rst 38h			;af14
	rst 38h			;af15
	rst 38h			;af16
	rst 38h			;af17
	rst 38h			;af18
	rst 38h			;af19
	rst 38h			;af1a
	rst 38h			;af1b
	rst 38h			;af1c
	rst 38h			;af1d
	rst 38h			;af1e
	rst 38h			;af1f
	rst 38h			;af20
	rst 38h			;af21
	rst 38h			;af22
	rst 38h			;af23
	rst 38h			;af24
	rst 38h			;af25
	rst 38h			;af26
	rst 38h			;af27
	rst 38h			;af28
	rst 38h			;af29
	rst 38h			;af2a
	rst 38h			;af2b
	rst 38h			;af2c
	rst 38h			;af2d
	rst 38h			;af2e
	rst 38h			;af2f
	rst 38h			;af30
	rst 38h			;af31
	rst 38h			;af32
	rst 38h			;af33
	rst 38h			;af34
	rst 38h			;af35
	rst 38h			;af36
	rst 38h			;af37
	rst 38h			;af38
	rst 38h			;af39
	rst 38h			;af3a
	rst 38h			;af3b
	rst 38h			;af3c
	rst 38h			;af3d
	rst 38h			;af3e
	rst 38h			;af3f
	rst 38h			;af40
	rst 38h			;af41
	rst 38h			;af42
	rst 38h			;af43
	rst 38h			;af44
	rst 38h			;af45
	rst 38h			;af46
	rst 38h			;af47
	rst 38h			;af48
	rst 38h			;af49
	rst 38h			;af4a
	rst 38h			;af4b
	rst 38h			;af4c
	rst 38h			;af4d
	rst 38h			;af4e
	rst 38h			;af4f
	rst 38h			;af50
	rst 38h			;af51
	rst 38h			;af52
	rst 38h			;af53
	rst 38h			;af54
	rst 38h			;af55
	rst 38h			;af56
	rst 38h			;af57
	rst 38h			;af58
	rst 38h			;af59
	rst 38h			;af5a
	rst 38h			;af5b
	rst 38h			;af5c
	rst 38h			;af5d
	rst 38h			;af5e
	rst 38h			;af5f
	rst 38h			;af60
	rst 38h			;af61
	rst 38h			;af62
	rst 38h			;af63
	rst 38h			;af64
	rst 38h			;af65
	rst 38h			;af66
	rst 38h			;af67
	rst 38h			;af68
	rst 38h			;af69
	rst 38h			;af6a
	rst 38h			;af6b
	rst 38h			;af6c
	rst 38h			;af6d
	rst 38h			;af6e
	rst 38h			;af6f
	rst 38h			;af70
	rst 38h			;af71
	rst 38h			;af72
	rst 38h			;af73
	rst 38h			;af74
	rst 38h			;af75
	rst 38h			;af76
	rst 38h			;af77
	rst 38h			;af78
	rst 38h			;af79
	rst 38h			;af7a
	rst 38h			;af7b
	rst 38h			;af7c
	rst 38h			;af7d
	rst 38h			;af7e
	rst 38h			;af7f
	rst 38h			;af80
	rst 38h			;af81
	rst 38h			;af82
	rst 38h			;af83
	rst 38h			;af84
	rst 38h			;af85
	rst 38h			;af86
	rst 38h			;af87
	rst 38h			;af88
	rst 38h			;af89
	rst 38h			;af8a
	rst 38h			;af8b
	rst 38h			;af8c
	rst 38h			;af8d
	rst 38h			;af8e
	rst 38h			;af8f
	rst 38h			;af90
	rst 38h			;af91
	rst 38h			;af92
	rst 38h			;af93
	rst 38h			;af94
	rst 38h			;af95
	rst 38h			;af96
	rst 38h			;af97
	rst 38h			;af98
	rst 38h			;af99
	rst 38h			;af9a
	rst 38h			;af9b
	rst 38h			;af9c
	rst 38h			;af9d
	rst 38h			;af9e
	rst 38h			;af9f
	rst 38h			;afa0
	rst 38h			;afa1
	rst 38h			;afa2
	rst 38h			;afa3
	rst 38h			;afa4
	rst 38h			;afa5
	rst 38h			;afa6
	rst 38h			;afa7
	rst 38h			;afa8
	rst 38h			;afa9
	rst 38h			;afaa
	rst 38h			;afab
	rst 38h			;afac
	rst 38h			;afad
	rst 38h			;afae
	rst 38h			;afaf
	rst 38h			;afb0
	rst 38h			;afb1
	rst 38h			;afb2
	rst 38h			;afb3
	rst 38h			;afb4
	rst 38h			;afb5
	rst 38h			;afb6
	rst 38h			;afb7
	rst 38h			;afb8
	rst 38h			;afb9
	rst 38h			;afba
	rst 38h			;afbb
	rst 38h			;afbc
	rst 38h			;afbd
	rst 38h			;afbe
	rst 38h			;afbf
	rst 38h			;afc0
	rst 38h			;afc1
	rst 38h			;afc2
	rst 38h			;afc3
	rst 38h			;afc4
	rst 38h			;afc5
	rst 38h			;afc6
	rst 38h			;afc7
	rst 38h			;afc8
	rst 38h			;afc9
	rst 38h			;afca
	rst 38h			;afcb
	rst 38h			;afcc
	rst 38h			;afcd
	rst 38h			;afce
	rst 38h			;afcf
	rst 38h			;afd0
	rst 38h			;afd1
	rst 38h			;afd2
	rst 38h			;afd3
	rst 38h			;afd4
	rst 38h			;afd5
	rst 38h			;afd6
	rst 38h			;afd7
	rst 38h			;afd8
	rst 38h			;afd9
	rst 38h			;afda
	rst 38h			;afdb
	rst 38h			;afdc
	rst 38h			;afdd
	rst 38h			;afde
	rst 38h			;afdf
	rst 38h			;afe0
	rst 38h			;afe1
	rst 38h			;afe2
	rst 38h			;afe3
	rst 38h			;afe4
	rst 38h			;afe5
	rst 38h			;afe6
	rst 38h			;afe7
	rst 38h			;afe8
	rst 38h			;afe9
	rst 38h			;afea
	rst 38h			;afeb
	rst 38h			;afec
	rst 38h			;afed
	rst 38h			;afee
	rst 38h			;afef
	rst 38h			;aff0
	rst 38h			;aff1
	rst 38h			;aff2
	rst 38h			;aff3
	rst 38h			;aff4
	rst 38h			;aff5
	rst 38h			;aff6
	rst 38h			;aff7
	rst 38h			;aff8
	rst 38h			;aff9
	rst 38h			;affa
	rst 38h			;affb
	rst 38h			;affc
	rst 38h			;affd
	rst 38h			;affe
	rst 38h			;afff
	nop			;b000
	nop			;b001
	nop			;b002
	nop			;b003
	nop			;b004
	nop			;b005
	nop			;b006
	nop			;b007
	nop			;b008
	nop			;b009
	nop			;b00a
	nop			;b00b
	nop			;b00c
	nop			;b00d
	nop			;b00e
	nop			;b00f
	nop			;b010
	nop			;b011
	nop			;b012
	nop			;b013
	nop			;b014
	nop			;b015
	nop			;b016
	nop			;b017
	nop			;b018
	nop			;b019
	nop			;b01a
	nop			;b01b
	nop			;b01c
	nop			;b01d
	nop			;b01e
	nop			;b01f
	nop			;b020
	nop			;b021
	nop			;b022
	nop			;b023
	nop			;b024
	nop			;b025
	nop			;b026
	nop			;b027
	nop			;b028
	nop			;b029
	nop			;b02a
	nop			;b02b
	nop			;b02c
	nop			;b02d
	nop			;b02e
	nop			;b02f
	nop			;b030
	nop			;b031
	nop			;b032
	nop			;b033
	ld bc,00200h		;b034
	nop			;b037
	nop			;b038
	nop			;b039
	scf			;b03a
	nop			;b03b
	jr c,lb03eh		;b03c
lb03eh:
	add hl,sp		;b03e
	nop			;b03f
	nop			;b040
	nop			;b041
	ld e,a			;b042
	ld bc,00160h		;b043
	ld h,c			;b046
	ld bc,00162h		;b047
	ld h,e			;b04a
	ld bc,00164h		;b04b
	ld h,l			;b04e
	ld bc,00166h		;b04f
	ld h,a			;b052
	ld bc,00168h		;b053
	ld l,c			;b056
	ld bc,00166h		;b057
	ld h,a			;b05a
	ld bc,0016ah		;b05b
	ld l,e			;b05e
	ld bc,00169h		;b05f
	ld l,h			;b062
	ld bc,0016dh		;b063
	ld l,(hl)		;b066
	ld bc,0016fh		;b067
	nop			;b06a
	nop			;b06b
	nop			;b06c
	nop			;b06d
	nop			;b06e
	nop			;b06f
	nop			;b070
	nop			;b071
	inc bc			;b072
	nop			;b073
	inc b			;b074
	nop			;b075
	dec b			;b076
	nop			;b077
	nop			;b078
	nop			;b079
	adc a,e			;b07a
	nop			;b07b
	inc (hl)		;b07c
	nop			;b07d
	nop			;b07e
	nop			;b07f
	nop			;b080
	nop			;b081
	ld (hl),b		;b082
	ld bc,00171h		;b083
	ld (hl),d		;b086
	ld bc,00173h		;b087
	ld (hl),h		;b08a
	ld bc,00175h		;b08b
	halt			;b08e
	ld bc,00177h		;b08f
	ld a,b			;b092
	ld bc,00179h		;b093
	ld a,d			;b096
	ld bc,0017bh		;b097
	ld a,h			;b09a
	ld bc,0017dh		;b09b
	ld a,(hl)		;b09e
	ld bc,0017fh		;b09f
	nop			;b0a2
	ld (bc),a		;b0a3
	ld bc,00202h		;b0a4
	ld (bc),a		;b0a7
	inc bc			;b0a8
	ld (bc),a		;b0a9
	nop			;b0aa
	nop			;b0ab
	nop			;b0ac
	nop			;b0ad
	nop			;b0ae
	nop			;b0af
	ld b,000h		;b0b0
	rlca			;b0b2
	nop			;b0b3
	ex af,af'		;b0b4
	nop			;b0b5
	nop			;b0b6
	nop			;b0b7
	nop			;b0b8
	nop			;b0b9
	dec (hl)		;b0ba
	nop			;b0bb
	ld (hl),000h		;b0bc
	nop			;b0be
	nop			;b0bf
	nop			;b0c0
	nop			;b0c1
	inc b			;b0c2
	ld (bc),a		;b0c3
	dec b			;b0c4
	ld (bc),a		;b0c5
	ld b,002h		;b0c6
	rlca			;b0c8
	ld (bc),a		;b0c9
	ex af,af'		;b0ca
	ld (bc),a		;b0cb
	add hl,bc		;b0cc
	ld (bc),a		;b0cd
	ld a,(bc)		;b0ce
	ld (bc),a		;b0cf
	dec bc			;b0d0
	ld (bc),a		;b0d1
	inc c			;b0d2
	ld (bc),a		;b0d3
	dec c			;b0d4
	ld (bc),a		;b0d5
	ld c,002h		;b0d6
	rrca			;b0d8
	ld (bc),a		;b0d9
	djnz $+4		;b0da
	ld de,01202h		;b0dc
	ld (bc),a		;b0df
	inc de			;b0e0
	ld (bc),a		;b0e1
	inc d			;b0e2
	ld (bc),a		;b0e3
	dec d			;b0e4
	ld (bc),a		;b0e5
	ld d,002h		;b0e6
	rla			;b0e8
	ld (bc),a		;b0e9
	nop			;b0ea
	nop			;b0eb
	add hl,bc		;b0ec
	nop			;b0ed
	ld a,(bc)		;b0ee
	nop			;b0ef
lb0f0h:
	dec bc			;b0f0
	nop			;b0f1
	inc c			;b0f2
	nop			;b0f3
	dec c			;b0f4
	nop			;b0f5
	nop			;b0f6
	nop			;b0f7
	nop			;b0f8
	nop			;b0f9
	jr nc,lb0fch		;b0fa
lb0fch:
	ld sp,00000h		;b0fc
	nop			;b0ff
	nop			;b100
	nop			;b101
	jr lb106h		;b102
	add hl,de		;b104
	ld (bc),a		;b105
lb106h:
	ld a,(de)		;b106
	ld (bc),a		;b107
	dec de			;b108
	ld (bc),a		;b109
	inc e			;b10a
	ld (bc),a		;b10b
	dec e			;b10c
	ld (bc),a		;b10d
	ld e,002h		;b10e
	rra			;b110
	ld (bc),a		;b111
	add hl,de		;b112
	ld (bc),a		;b113
	jr nz,$+4		;b114
	ld hl,02202h		;b116
	ld (bc),a		;b119
	inc hl			;b11a
	ld (bc),a		;b11b
	inc h			;b11c
	ld (bc),a		;b11d
	dec h			;b11e
	ld (bc),a		;b11f
	ld h,002h		;b120
	daa			;b122
	ld (bc),a		;b123
	jr z,lb128h		;b124
	add hl,hl		;b126
	ld (bc),a		;b127
lb128h:
	ld hl,(00e02h)		;b128
	nop			;b12b
	rrca			;b12c
	nop			;b12d
	djnz lb130h		;b12e
lb130h:
	ld de,01200h		;b130
	nop			;b133
	inc de			;b134
	nop			;b135
	inc d			;b136
	nop			;b137
	dec d			;b138
	nop			;b139
	ld (03300h),a		;b13a
	nop			;b13d
	nop			;b13e
	nop			;b13f
	nop			;b140
	nop			;b141
	dec hl			;b142
	ld (bc),a		;b143
	inc l			;b144
	ld (bc),a		;b145
	dec l			;b146
	ld (bc),a		;b147
	ld l,002h		;b148
	cpl			;b14a
	ld (bc),a		;b14b
	jr nc,$+4		;b14c
	ld sp,03202h		;b14e
	ld (bc),a		;b151
	inc sp			;b152
	ld (bc),a		;b153
	inc (hl)		;b154
	ld (bc),a		;b155
	dec (hl)		;b156
	ld (bc),a		;b157
	ld (hl),002h		;b158
	scf			;b15a
	ld (bc),a		;b15b
	jr c,lb160h		;b15c
	add hl,sp		;b15e
	ld (bc),a		;b15f
lb160h:
	ld a,(03b02h)		;b160
	ld (bc),a		;b163
	inc a			;b164
	ld (bc),a		;b165
	dec a			;b166
	ld (bc),a		;b167
	ld a,002h		;b168
	ld d,000h		;b16a
	rla			;b16c
	nop			;b16d
	jr lb170h		;b16e
lb170h:
	add hl,de		;b170
	nop			;b171
	ld a,(de)		;b172
	nop			;b173
	dec de			;b174
	nop			;b175
	nop			;b176
	nop			;b177
	nop			;b178
	nop			;b179
	nop			;b17a
	nop			;b17b
	ld hl,(08c00h)		;b17c
	nop			;b17f
	nop			;b180
	nop			;b181
	ccf			;b182
	ld (bc),a		;b183
	ld b,b			;b184
	ld (bc),a		;b185
	ld b,c			;b186
	ld (bc),a		;b187
	ld b,d			;b188
	ld (bc),a		;b189
	ld b,e			;b18a
	ld (bc),a		;b18b
	ld b,h			;b18c
	ld (bc),a		;b18d
	ld b,l			;b18e
	ld (bc),a		;b18f
	ld b,(hl)		;b190
	ld (bc),a		;b191
	ld b,a			;b192
	ld (bc),a		;b193
	ld c,b			;b194
	ld (bc),a		;b195
	ld c,c			;b196
	ld (bc),a		;b197
	ld c,d			;b198
	ld (bc),a		;b199
	ld c,e			;b19a
	ld (bc),a		;b19b
	ld c,h			;b19c
	ld (bc),a		;b19d
	ld c,l			;b19e
	ld (bc),a		;b19f
	ld c,(hl)		;b1a0
	ld (bc),a		;b1a1
	ld c,a			;b1a2
	ld (bc),a		;b1a3
	ld d,b			;b1a4
	ld (bc),a		;b1a5
	ld c,c			;b1a6
	ld (bc),a		;b1a7
	ld d,c			;b1a8
	ld (bc),a		;b1a9
	nop			;b1aa
	nop			;b1ab
	nop			;b1ac
	nop			;b1ad
	nop			;b1ae
	nop			;b1af
	inc e			;b1b0
	nop			;b1b1
	dec e			;b1b2
	nop			;b1b3
	ld e,000h		;b1b4
	nop			;b1b6
	nop			;b1b7
	nop			;b1b8
	nop			;b1b9
	dec hl			;b1ba
	nop			;b1bb
	inc l			;b1bc
	nop			;b1bd
	dec l			;b1be
	nop			;b1bf
	nop			;b1c0
	nop			;b1c1
	ld d,d			;b1c2
	ld (bc),a		;b1c3
	ld d,e			;b1c4
	ld (bc),a		;b1c5
	ld d,h			;b1c6
	ld (bc),a		;b1c7
	ld d,l			;b1c8
	ld (bc),a		;b1c9
	ld d,(hl)		;b1ca
	ld (bc),a		;b1cb
	ld d,a			;b1cc
	ld (bc),a		;b1cd
	ld e,b			;b1ce
	ld (bc),a		;b1cf
	ld e,c			;b1d0
	ld (bc),a		;b1d1
	ld e,d			;b1d2
	ld (bc),a		;b1d3
	ld e,e			;b1d4
	ld (bc),a		;b1d5
	ld e,e			;b1d6
	ld (bc),a		;b1d7
	ld e,e			;b1d8
	ld (bc),a		;b1d9
	ld e,h			;b1da
	ld (bc),a		;b1db
	ld e,l			;b1dc
	ld (bc),a		;b1dd
	ld e,(hl)		;b1de
	ld (bc),a		;b1df
	ld e,a			;b1e0
	ld (bc),a		;b1e1
	ld h,b			;b1e2
	ld (bc),a		;b1e3
	ld h,c			;b1e4
	ld (bc),a		;b1e5
	ld e,e			;b1e6
	ld (bc),a		;b1e7
	ld e,e			;b1e8
	ld (bc),a		;b1e9
	nop			;b1ea
	nop			;b1eb
	nop			;b1ec
	nop			;b1ed
	nop			;b1ee
	nop			;b1ef
	nop			;b1f0
	nop			;b1f1
	rra			;b1f2
	nop			;b1f3
	jr nz,lb1f6h		;b1f4
lb1f6h:
	nop			;b1f6
	nop			;b1f7
	nop			;b1f8
	nop			;b1f9
	ld l,000h		;b1fa
	cpl			;b1fc
	nop			;b1fd
	nop			;b1fe
	nop			;b1ff
	nop			;b200
	nop			;b201
	ld h,d			;b202
	ld (bc),a		;b203
	ld h,c			;b204
	ld (bc),a		;b205
	ld h,e			;b206
	ld (bc),a		;b207
	ld h,h			;b208
	ld (bc),a		;b209
	ld h,l			;b20a
	ld (bc),a		;b20b
	ld h,(hl)		;b20c
	ld (bc),a		;b20d
	ld h,a			;b20e
	ld (bc),a		;b20f
	ld l,b			;b210
	ld (bc),a		;b211
	ld l,c			;b212
	ld (bc),a		;b213
	ld l,d			;b214
	ld (bc),a		;b215
	ld l,e			;b216
	ld (bc),a		;b217
	ld l,h			;b218
	ld (bc),a		;b219
	ld l,l			;b21a
	ld (bc),a		;b21b
	ld l,(hl)		;b21c
	ld (bc),a		;b21d
	ld l,a			;b21e
	ld (bc),a		;b21f
	ld (hl),b		;b220
	ld (bc),a		;b221
	ld (hl),c		;b222
	ld (bc),a		;b223
	ld (hl),d		;b224
	ld (bc),a		;b225
	ld (hl),e		;b226
	ld (bc),a		;b227
	ld (hl),h		;b228
	ld (bc),a		;b229
	nop			;b22a
	nop			;b22b
	nop			;b22c
	nop			;b22d
	ld d,e			;b22e
	nop			;b22f
	nop			;b230
	nop			;b231
	nop			;b232
	nop			;b233
	nop			;b234
	nop			;b235
	nop			;b236
	nop			;b237
	nop			;b238
	nop			;b239
	nop			;b23a
	nop			;b23b
	ld hl,02200h		;b23c
	nop			;b23f
	nop			;b240
	nop			;b241
	ld (hl),l		;b242
	ld (bc),a		;b243
	halt			;b244
	ld (bc),a		;b245
	ld (hl),a		;b246
	ld (bc),a		;b247
	ld a,b			;b248
	ld (bc),a		;b249
	ld a,c			;b24a
	ld (bc),a		;b24b
	ld a,d			;b24c
	ld (bc),a		;b24d
	ld a,e			;b24e
	ld (bc),a		;b24f
	ld a,h			;b250
	ld (bc),a		;b251
	ld a,l			;b252
	ld (bc),a		;b253
	ld a,(hl)		;b254
	ld (bc),a		;b255
	ld a,a			;b256
	ld (bc),a		;b257
	add a,b			;b258
	ld (bc),a		;b259
	add a,c			;b25a
	ld (bc),a		;b25b
	add a,d			;b25c
	ld (bc),a		;b25d
	add a,e			;b25e
	ld (bc),a		;b25f
	ld a,c			;b260
	ld (bc),a		;b261
	add a,h			;b262
	ld (bc),a		;b263
	add a,l			;b264
	ld (bc),a		;b265
	add a,(hl)		;b266
	ld (bc),a		;b267
	add a,a			;b268
	ld (bc),a		;b269
	nop			;b26a
	nop			;b26b
	nop			;b26c
	nop			;b26d
	ld d,h			;b26e
	nop			;b26f
	nop			;b270
	nop			;b271
	nop			;b272
	nop			;b273
	nop			;b274
	nop			;b275
	nop			;b276
	nop			;b277
	adc a,c			;b278
	nop			;b279
	inc hl			;b27a
	nop			;b27b
	inc h			;b27c
	nop			;b27d
	adc a,d			;b27e
	nop			;b27f
	nop			;b280
	nop			;b281
	adc a,b			;b282
	ld (bc),a		;b283
	adc a,c			;b284
	ld (bc),a		;b285
	adc a,e			;b286
	ld (bc),a		;b287
	adc a,d			;b288
	ld (bc),a		;b289
	adc a,h			;b28a
	ld (bc),a		;b28b
	adc a,l			;b28c
	ld (bc),a		;b28d
	adc a,(hl)		;b28e
	ld (bc),a		;b28f
	adc a,a			;b290
	ld (bc),a		;b291
	sub b			;b292
	ld (bc),a		;b293
	sub c			;b294
	ld (bc),a		;b295
	sub d			;b296
	ld (bc),a		;b297
	sub e			;b298
	ld (bc),a		;b299
	sub h			;b29a
	ld (bc),a		;b29b
	sub l			;b29c
	ld (bc),a		;b29d
	sub (hl)		;b29e
	ld (bc),a		;b29f
	sub a			;b2a0
	ld (bc),a		;b2a1
	sbc a,b			;b2a2
	ld (bc),a		;b2a3
	sbc a,c			;b2a4
	ld (bc),a		;b2a5
	adc a,a			;b2a6
	ld (bc),a		;b2a7
	sbc a,d			;b2a8
	ld (bc),a		;b2a9
	nop			;b2aa
	nop			;b2ab
	nop			;b2ac
	nop			;b2ad
	ld d,l			;b2ae
	nop			;b2af
	adc a,l			;b2b0
	nop			;b2b1
	nop			;b2b2
	nop			;b2b3
	nop			;b2b4
	nop			;b2b5
	nop			;b2b6
	nop			;b2b7
	dec h			;b2b8
	nop			;b2b9
	ld h,000h		;b2ba
	daa			;b2bc
	nop			;b2bd
	jr z,lb2c0h		;b2be
lb2c0h:
	nop			;b2c0
	nop			;b2c1
	sbc a,e			;b2c2
	ld (bc),a		;b2c3
	sbc a,h			;b2c4
	ld (bc),a		;b2c5
	sbc a,l			;b2c6
	ld (bc),a		;b2c7
	sbc a,(hl)		;b2c8
	ld (bc),a		;b2c9
	sbc a,a			;b2ca
	ld (bc),a		;b2cb
	and b			;b2cc
	ld (bc),a		;b2cd
	and c			;b2ce
	ld (bc),a		;b2cf
	and d			;b2d0
	ld (bc),a		;b2d1
	and e			;b2d2
	ld (bc),a		;b2d3
	and h			;b2d4
	ld (bc),a		;b2d5
	and l			;b2d6
	ld (bc),a		;b2d7
	and (hl)		;b2d8
	ld (bc),a		;b2d9
	and a			;b2da
	ld (bc),a		;b2db
	xor b			;b2dc
	ld (bc),a		;b2dd
	xor c			;b2de
	ld (bc),a		;b2df
	xor d			;b2e0
	ld (bc),a		;b2e1
	xor e			;b2e2
	ld (bc),a		;b2e3
	xor h			;b2e4
	ld (bc),a		;b2e5
	xor l			;b2e6
	ld (bc),a		;b2e7
	xor (hl)		;b2e8
	ld (bc),a		;b2e9
	nop			;b2ea
	nop			;b2eb
	ld d,(hl)		;b2ec
	nop			;b2ed
	ld d,a			;b2ee
	nop			;b2ef
	ld e,b			;b2f0
	nop			;b2f1
	nop			;b2f2
	nop			;b2f3
	nop			;b2f4
	nop			;b2f5
	nop			;b2f6
	nop			;b2f7
	nop			;b2f8
	nop			;b2f9
	nop			;b2fa
	nop			;b2fb
	add hl,hl		;b2fc
	nop			;b2fd
	nop			;b2fe
	nop			;b2ff
	nop			;b300
	nop			;b301
	xor a			;b302
	ld (bc),a		;b303
	or b			;b304
	ld (bc),a		;b305
	or c			;b306
	ld (bc),a		;b307
	xor a			;b308
	ld (bc),a		;b309
	or d			;b30a
	ld (bc),a		;b30b
	or e			;b30c
	ld (bc),a		;b30d
	or h			;b30e
	ld (bc),a		;b30f
	or l			;b310
	ld (bc),a		;b311
	or (hl)			;b312
	ld (bc),a		;b313
	or a			;b314
	ld (bc),a		;b315
	cp b			;b316
	ld (bc),a		;b317
	cp c			;b318
	ld (bc),a		;b319
	cp d			;b31a
	ld (bc),a		;b31b
	xor a			;b31c
	ld (bc),a		;b31d
	xor a			;b31e
	ld (bc),a		;b31f
	cp e			;b320
	ld (bc),a		;b321
	cp h			;b322
	ld (bc),a		;b323
	cp l			;b324
	ld (bc),a		;b325
	cp (hl)			;b326
	ld (bc),a		;b327
	xor a			;b328
	ld (bc),a		;b329
	ld e,c			;b32a
	nop			;b32b
	ld e,d			;b32c
	nop			;b32d
	ld e,e			;b32e
	nop			;b32f
	ld e,h			;b330
	nop			;b331
	ld e,l			;b332
	nop			;b333
	nop			;b334
	nop			;b335
	nop			;b336
	nop			;b337
	nop			;b338
	nop			;b339
	nop			;b33a
	nop			;b33b
	nop			;b33c
	nop			;b33d
	nop			;b33e
	nop			;b33f
	nop			;b340
	nop			;b341
	jp m,0fa00h		;b342
	nop			;b345
	push af			;b346
	nop			;b347
	jp m,0f500h		;b348
	nop			;b34b
	jp m,0f800h		;b34c
	nop			;b34f
	push af			;b350
	nop			;b351
	rst 30h			;b352
	nop			;b353
	jp m,0f500h		;b354
	nop			;b357
	or 000h			;b358
	jp m,0fa00h		;b35a
	nop			;b35d
	push af			;b35e
	nop			;b35f
	jp m,0f500h		;b360
	nop			;b363
	rst 30h			;b364
	nop			;b365
	ret m			;b366
	nop			;b367
	jp m,00000h		;b368
	nop			;b36b
	ld e,(hl)		;b36c
	nop			;b36d
	ld e,a			;b36e
	nop			;b36f
	ld h,b			;b370
	nop			;b371
	nop			;b372
	nop			;b373
	nop			;b374
	nop			;b375
	nop			;b376
	nop			;b377
	nop			;b378
	nop			;b379
	nop			;b37a
	nop			;b37b
	nop			;b37c
	nop			;b37d
	nop			;b37e
	nop			;b37f
	nop			;b380
	nop			;b381
	jp m,0f800h		;b382
	nop			;b385
	jp m,0fa00h		;b386
	nop			;b389
	jp m,0fa00h		;b38a
	nop			;b38d
	rst 30h			;b38e
	nop			;b38f
	jp m,0fa00h		;b390
	nop			;b393
	jp m,0fa00h		;b394
	nop			;b397
	rst 30h			;b398
	nop			;b399
	di			;b39a
	nop			;b39b
	jp m,0f600h		;b39c
	nop			;b39f
	jp m,0f600h		;b3a0
	nop			;b3a3
	jp m,0f500h		;b3a4
	nop			;b3a7
	or 000h			;b3a8
	nop			;b3aa
	nop			;b3ab
	nop			;b3ac
	nop			;b3ad
	ld h,c			;b3ae
	nop			;b3af
	ld h,d			;b3b0
	nop			;b3b1
	nop			;b3b2
	nop			;b3b3
	nop			;b3b4
	nop			;b3b5
	nop			;b3b6
	nop			;b3b7
	nop			;b3b8
	nop			;b3b9
	nop			;b3ba
	nop			;b3bb
	nop			;b3bc
	nop			;b3bd
	nop			;b3be
	nop			;b3bf
	nop			;b3c0
	nop			;b3c1
	jp m,0fa00h		;b3c2
	nop			;b3c5
	or 000h			;b3c6
	ret m			;b3c8
	nop			;b3c9
	jp m,0f500h		;b3ca
	nop			;b3cd
	jp m,0f700h		;b3ce
	nop			;b3d1
	ret m			;b3d2
	nop			;b3d3
	jp m,0f600h		;b3d4
	nop			;b3d7
	or 000h			;b3d8
	ret m			;b3da
	nop			;b3db
	jp m,0f700h		;b3dc
	nop			;b3df
	push af			;b3e0
	nop			;b3e1
	rst 30h			;b3e2
	nop			;b3e3
	jp m,0fa00h		;b3e4
	nop			;b3e7
	jp m,00000h		;b3e8
	nop			;b3eb
	nop			;b3ec
	nop			;b3ed
	ld h,e			;b3ee
	nop			;b3ef
	nop			;b3f0
	nop			;b3f1
	nop			;b3f2
	nop			;b3f3
	nop			;b3f4
	nop			;b3f5
	nop			;b3f6
	nop			;b3f7
	nop			;b3f8
	nop			;b3f9
	nop			;b3fa
	nop			;b3fb
	nop			;b3fc
	nop			;b3fd
	nop			;b3fe
	nop			;b3ff
lb400h:
	nop			;b400
	nop			;b401
	jp m,0f700h		;b402
	nop			;b405
	jp m,0fa00h		;b406
	nop			;b409
	jp m,0fa00h		;b40a
	nop			;b40d
	jp m,0fa00h		;b40e
	nop			;b411
	jp m,0fa00h		;b412
	nop			;b415
	jp m,0fa00h		;b416
	nop			;b419
	push af			;b41a
	nop			;b41b
	jp m,0f800h		;b41c
	nop			;b41f
	jp m,0fa00h		;b420
	nop			;b423
	jp m,0fa00h		;b424
	nop			;b427
	jp m,00000h		;b428
	nop			;b42b
	ld e,a			;b42c
	ld bc,00160h		;b42d
	ld h,c			;b430
	ld bc,00162h		;b431
	ld h,e			;b434
	ld bc,00164h		;b435
	ld h,l			;b438
	ld bc,002bfh		;b439
	ret nz			;b43c
	ld (bc),a		;b43d
	adc a,000h		;b43e
	nop			;b440
	nop			;b441
	jp m,0f500h		;b442
	nop			;b445
	jp m,0f700h		;b446
	nop			;b449
	push af			;b44a
	nop			;b44b
	jp m,0fa00h		;b44c
	nop			;b44f
	ld sp,hl		;b450
	nop			;b451
	push af			;b452
	nop			;b453
	jp m,0fa00h		;b454
	nop			;b457
	jp m,0fa00h		;b458
	nop			;b45b
	jp m,0f800h		;b45c
	nop			;b45f
	push af			;b460
	nop			;b461
	jp m,0f800h		;b462
	nop			;b465
	jp m,0fa00h		;b466
	nop			;b469
	nop			;b46a
	nop			;b46b
	ld (hl),b		;b46c
	ld bc,00171h		;b46d
	ld (hl),d		;b470
	ld bc,00173h		;b471
	ld (hl),h		;b474
	ld bc,00175h		;b475
	halt			;b478
	ld bc,002c1h		;b479
	rst 8			;b47c
	nop			;b47d
	ret nc			;b47e
	nop			;b47f
	nop			;b480
	nop			;b481
	jp m,0f300h		;b482
	nop			;b485
	jp m,0f700h		;b486
	nop			;b489
	ret m			;b48a
	nop			;b48b
	rst 30h			;b48c
	nop			;b48d
	jp m,0fa00h		;b48e
	nop			;b491
	jp m,0fa00h		;b492
	nop			;b495
	rst 30h			;b496
	nop			;b497
	jp m,0fa00h		;b498
	nop			;b49b
	jp m,0f500h		;b49c
	nop			;b49f
	jp m,0fa00h		;b4a0
	nop			;b4a3
	jp m,0fa00h		;b4a4
	nop			;b4a7
	push af			;b4a8
	nop			;b4a9
	nop			;b4aa
	nop			;b4ab
	inc b			;b4ac
	ld (bc),a		;b4ad
	dec b			;b4ae
	ld (bc),a		;b4af
	ld b,002h		;b4b0
	rlca			;b4b2
	ld (bc),a		;b4b3
	ex af,af'		;b4b4
sub_b4b5h:
	ld (bc),a		;b4b5
	add hl,bc		;b4b6
	ld (bc),a		;b4b7
	ld a,(bc)		;b4b8
	ld (bc),a		;b4b9
	jp nc,0d300h		;b4ba
	nop			;b4bd
	call nc,00000h		;b4be
	nop			;b4c1
	rst 30h			;b4c2
	nop			;b4c3
	jp m,0fa00h		;b4c4
	nop			;b4c7
	or 000h			;b4c8
	jp m,0fa00h		;b4ca
	nop			;b4cd
	ld sp,hl		;b4ce
	nop			;b4cf
	rst 30h			;b4d0
	nop			;b4d1
	or 000h			;b4d2
	rst 30h			;b4d4
	nop			;b4d5
	jp m,0f600h		;b4d6
	nop			;b4d9
	jp m,0f700h		;b4da
	nop			;b4dd
	jp m,0fa00h		;b4de
	nop			;b4e1
	jp m,0f600h		;b4e2
	nop			;b4e5
	jp m,0f400h		;b4e6
	nop			;b4e9
	nop			;b4ea
	nop			;b4eb
	jr lb4f0h		;b4ec
	add hl,de		;b4ee
	ld (bc),a		;b4ef
lb4f0h:
	ld a,(de)		;b4f0
	ld (bc),a		;b4f1
	dec de			;b4f2
	ld (bc),a		;b4f3
	inc e			;b4f4
	ld (bc),a		;b4f5
	dec e			;b4f6
	ld (bc),a		;b4f7
	push de			;b4f8
	nop			;b4f9
	sub 000h		;b4fa
	rst 10h			;b4fc
	nop			;b4fd
	ret c			;b4fe
	nop			;b4ff
	nop			;b500
	nop			;b501
	jp m,0f500h		;b502
	nop			;b505
	jp m,0fa00h		;b506
	nop			;b509
	jp m,0fa00h		;b50a
	nop			;b50d
	jp m,0fa00h		;b50e
	nop			;b511
	jp m,0fa00h		;b512
	nop			;b515
	push af			;b516
	nop			;b517
	jp m,0fa00h		;b518
	nop			;b51b
	jp m,0fa00h		;b51c
	nop			;b51f
	jp m,0fa00h		;b520
	nop			;b523
	jp m,0fa00h		;b524
	nop			;b527
	jp m,00000h		;b528
	nop			;b52b
	dec hl			;b52c
	ld (bc),a		;b52d
	inc l			;b52e
	ld (bc),a		;b52f
	dec l			;b530
	ld (bc),a		;b531
	ld l,002h		;b532
	cpl			;b534
	ld (bc),a		;b535
	jr nc,lb53ah		;b536
	exx			;b538
	nop			;b539
lb53ah:
	jp c,0db00h		;b53a
	nop			;b53d
	nop			;b53e
	nop			;b53f
	nop			;b540
	nop			;b541
	rst 30h			;b542
	nop			;b543
	ret m			;b544
	nop			;b545
	or 000h			;b546
	jp m,0fa00h		;b548
	nop			;b54b
	jp m,0fa00h		;b54c
	nop			;b54f
	push af			;b550
	nop			;b551
	jp m,0f700h		;b552
	nop			;b555
	jp m,0fa00h		;b556
	nop			;b559
	jp m,0fa00h		;b55a
	nop			;b55d
	jp m,0fa00h		;b55e
	nop			;b561
	jp m,0fa00h		;b562
	nop			;b565
	ret m			;b566
	nop			;b567
	jp m,00000h		;b568
	nop			;b56b
	ccf			;b56c
	ld (bc),a		;b56d
	ld b,b			;b56e
	ld (bc),a		;b56f
	ld b,c			;b570
	ld (bc),a		;b571
	ld b,d			;b572
	ld (bc),a		;b573
	ld b,e			;b574
	ld (bc),a		;b575
	ld b,h			;b576
	ld (bc),a		;b577
	call c,0dd00h		;b578
	nop			;b57b
	ret c			;b57c
	nop			;b57d
	nop			;b57e
	nop			;b57f
	nop			;b580
	nop			;b581
	jp m,0fa00h		;b582
	nop			;b585
	rst 30h			;b586
	nop			;b587
	or 000h			;b588
	ret m			;b58a
	nop			;b58b
	push af			;b58c
	nop			;b58d
	or 000h			;b58e
	jp m,0fa00h		;b590
	nop			;b593
	jp m,0fa00h		;b594
	nop			;b597
	rst 30h			;b598
	nop			;b599
	push af			;b59a
	nop			;b59b
	jp m,0fa00h		;b59c
	nop			;b59f
	jp m,0f500h		;b5a0
	nop			;b5a3
	jp m,0f500h		;b5a4
	nop			;b5a7
	jp m,00000h		;b5a8
	nop			;b5ab
	ld d,d			;b5ac
	ld (bc),a		;b5ad
	ld d,e			;b5ae
	ld (bc),a		;b5af
	ld d,h			;b5b0
	ld (bc),a		;b5b1
	ld d,l			;b5b2
	ld (bc),a		;b5b3
	ld d,(hl)		;b5b4
	ld (bc),a		;b5b5
	ld d,a			;b5b6
	ld (bc),a		;b5b7
	sbc a,000h		;b5b8
	rst 18h			;b5ba
	nop			;b5bb
	nop			;b5bc
	nop			;b5bd
	nop			;b5be
	nop			;b5bf
	nop			;b5c0
	nop			;b5c1
	ld sp,hl		;b5c2
	nop			;b5c3
	call p,0fa00h		;b5c4
	nop			;b5c7
	push af			;b5c8
	nop			;b5c9
	jp m,0f800h		;b5ca
	nop			;b5cd
	or 000h			;b5ce
	push af			;b5d0
	nop			;b5d1
	jp m,0fa00h		;b5d2
	nop			;b5d5
	ret m			;b5d6
	nop			;b5d7
	call p,0f700h		;b5d8
	nop			;b5db
	jp m,0fa00h		;b5dc
	nop			;b5df
	rst 30h			;b5e0
	nop			;b5e1
	ret m			;b5e2
	nop			;b5e3
	jp m,0f600h		;b5e4
	nop			;b5e7
	or 000h			;b5e8
	nop			;b5ea
	nop			;b5eb
	ld h,d			;b5ec
	ld (bc),a		;b5ed
	ld e,e			;b5ee
	ld (bc),a		;b5ef
	ld h,e			;b5f0
	ld (bc),a		;b5f1
	ld h,h			;b5f2
	ld (bc),a		;b5f3
	ld h,l			;b5f4
	ld (bc),a		;b5f5
	ret po			;b5f6
	nop			;b5f7
	pop hl			;b5f8
	nop			;b5f9
	nop			;b5fa
	nop			;b5fb
	nop			;b5fc
	nop			;b5fd
	nop			;b5fe
	nop			;b5ff
	nop			;b600
	nop			;b601
	jp m,0fa00h		;b602
	nop			;b605
	di			;b606
	nop			;b607
	jp m,0f500h		;b608
	nop			;b60b
	ret m			;b60c
	nop			;b60d
	or 000h			;b60e
	jp m,0fa00h		;b610
	nop			;b613
	rst 30h			;b614
	nop			;b615
	push af			;b616
	nop			;b617
	or 000h			;b618
	ret m			;b61a
	nop			;b61b
	rst 30h			;b61c
	nop			;b61d
	jp m,0fa00h		;b61e
	nop			;b621
	push af			;b622
	nop			;b623
	jp m,0f800h		;b624
	nop			;b627
	jp m,00000h		;b628
	nop			;b62b
	ld a,(hl)		;b62c
	ld (bc),a		;b62d
	jp po,0e300h		;b62e
	nop			;b631
	call po,0e500h		;b632
	nop			;b635
	and 000h		;b636
	nop			;b638
	nop			;b639
	nop			;b63a
	nop			;b63b
	nop			;b63c
	nop			;b63d
	nop			;b63e
	nop			;b63f
	nop			;b640
	nop			;b641
	sub (hl)		;b642
	nop			;b643
	sub a			;b644
	nop			;b645
	nop			;b646
	nop			;b647
	and d			;b648
	nop			;b649
	nop			;b64a
	nop			;b64b
	nop			;b64c
	nop			;b64d
	nop			;b64e
	nop			;b64f
	sub (hl)		;b650
	nop			;b651
	sub a			;b652
	nop			;b653
	nop			;b654
	nop			;b655
	and d			;b656
	nop			;b657
	nop			;b658
	nop			;b659
	nop			;b65a
	nop			;b65b
	nop			;b65c
	nop			;b65d
	add a,d			;b65e
	nop			;b65f
	add a,e			;b660
	nop			;b661
	nop			;b662
	nop			;b663
	ld (hl),h		;b664
	nop			;b665
	nop			;b666
	nop			;b667
	add a,a			;b668
	nop			;b669
	nop			;b66a
	nop			;b66b
	rst 20h			;b66c
	nop			;b66d
	ret pe			;b66e
	nop			;b66f
	jp (hl)			;b670
	nop			;b671
	jp pe,0eb00h		;b672
	nop			;b675
	nop			;b676
	nop			;b677
	nop			;b678
	nop			;b679
	nop			;b67a
	nop			;b67b
	nop			;b67c
	nop			;b67d
	nop			;b67e
	nop			;b67f
	sbc a,b			;b680
	nop			;b681
	sbc a,c			;b682
	nop			;b683
	and e			;b684
	nop			;b685
	and h			;b686
	nop			;b687
	and l			;b688
	nop			;b689
	and (hl)		;b68a
	nop			;b68b
	and a			;b68c
	nop			;b68d
	sbc a,b			;b68e
	nop			;b68f
	sbc a,c			;b690
	nop			;b691
	and e			;b692
	nop			;b693
	and h			;b694
	nop			;b695
	and l			;b696
	nop			;b697
	and (hl)		;b698
	nop			;b699
	and a			;b69a
	nop			;b69b
	halt			;b69c
	nop			;b69d
	add a,h			;b69e
	nop			;b69f
	ld (hl),a		;b6a0
	nop			;b6a1
	ld a,b			;b6a2
	nop			;b6a3
	nop			;b6a4
	nop			;b6a5
	nop			;b6a6
	nop			;b6a7
	nop			;b6a8
	nop			;b6a9
	nop			;b6aa
	nop			;b6ab
	call pe,0ed00h		;b6ac
	nop			;b6af
	xor 000h		;b6b0
	rst 28h			;b6b2
	nop			;b6b3
	nop			;b6b4
	nop			;b6b5
	nop			;b6b6
	nop			;b6b7
	nop			;b6b8
	nop			;b6b9
	nop			;b6ba
	nop			;b6bb
	nop			;b6bc
	nop			;b6bd
	nop			;b6be
	nop			;b6bf
	sbc a,d			;b6c0
	nop			;b6c1
	xor b			;b6c2
	nop			;b6c3
	xor c			;b6c4
	nop			;b6c5
	xor d			;b6c6
	nop			;b6c7
	xor e			;b6c8
	nop			;b6c9
	xor h			;b6ca
	nop			;b6cb
	xor l			;b6cc
	nop			;b6cd
	sbc a,d			;b6ce
	nop			;b6cf
	xor b			;b6d0
	nop			;b6d1
	xor c			;b6d2
	nop			;b6d3
	pop bc			;b6d4
	nop			;b6d5
	jp nz,0cd00h		;b6d6
	nop			;b6d9
	xor l			;b6da
	nop			;b6db
	ld a,c			;b6dc
	nop			;b6dd
	add a,l			;b6de
	nop			;b6df
	add a,(hl)		;b6e0
	nop			;b6e1
	nop			;b6e2
	nop			;b6e3
	nop			;b6e4
	nop			;b6e5
	ld a,h			;b6e6
	nop			;b6e7
	add a,b			;b6e8
	nop			;b6e9
	ld a,e			;b6ea
	nop			;b6eb
	ret p			;b6ec
	nop			;b6ed
	pop af			;b6ee
	nop			;b6ef
	nop			;b6f0
	nop			;b6f1
	nop			;b6f2
	nop			;b6f3
	nop			;b6f4
	nop			;b6f5
	nop			;b6f6
	nop			;b6f7
	nop			;b6f8
	nop			;b6f9
	nop			;b6fa
sub_b6fbh:
	nop			;b6fb
	nop			;b6fc
	nop			;b6fd
	nop			;b6fe
	nop			;b6ff
	sbc a,e			;b700
	nop			;b701
	xor (hl)		;b702
	nop			;b703
	xor a			;b704
	nop			;b705
	or b			;b706
	nop			;b707
	or c			;b708
	nop			;b709
	or d			;b70a
	nop			;b70b
	or e			;b70c
	nop			;b70d
	sbc a,e			;b70e
	nop			;b70f
	add a,000h		;b710
	rst 0			;b712
	nop			;b713
	jp 0c400h		;b714
	nop			;b717
	or d			;b718
	nop			;b719
	or e			;b71a
	nop			;b71b
	nop			;b71c
	nop			;b71d
	ld a,d			;b71e
	nop			;b71f
	nop			;b720
	nop			;b721
	nop			;b722
	nop			;b723
	adc a,b			;b724
	nop			;b725
	nop			;b726
	nop			;b727
	add a,c			;b728
	nop			;b729
	nop			;b72a
	nop			;b72b
	nop			;b72c
	nop			;b72d
	nop			;b72e
	nop			;b72f
	nop			;b730
	nop			;b731
	nop			;b732
	nop			;b733
	nop			;b734
	nop			;b735
	ld a,(00000h)		;b736
	nop			;b739
	nop			;b73a
	nop			;b73b
	nop			;b73c
	nop			;b73d
	ld a,(lb400h)		;b73e
	nop			;b741
	or l			;b742
	nop			;b743
	or (hl)			;b744
	nop			;b745
	or a			;b746
	nop			;b747
	cp b			;b748
	nop			;b749
	cp c			;b74a
	nop			;b74b
	cp d			;b74c
	nop			;b74d
	or h			;b74e
	nop			;b74f
	ret			;b750
	nop			;b751
	ret z			;b752
	nop			;b753
	or a			;b754
	nop			;b755
	push bc			;b756
	nop			;b757
	call z,sub_ba00h	;b758
	nop			;b75b
	nop			;b75c
	nop			;b75d
	ld a,l			;b75e
	nop			;b75f
	add a,b			;b760
	nop			;b761
	ld (hl),h		;b762
	nop			;b763
	nop			;b764
	nop			;b765
	nop			;b766
	nop			;b767
	nop			;b768
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
	dec sp			;b774
	nop			;b775
	inc a			;b776
	nop			;b777
	nop			;b778
	nop			;b779
	nop			;b77a
	nop			;b77b
	dec sp			;b77c
	nop			;b77d
	inc a			;b77e
	nop			;b77f
	sbc a,h			;b780
	nop			;b781
	cp e			;b782
	nop			;b783
	cp h			;b784
	nop			;b785
	cp l			;b786
	nop			;b787
	cp (hl)			;b788
	nop			;b789
	cp a			;b78a
	nop			;b78b
	nop			;b78c
	nop			;b78d
	sbc a,h			;b78e
	nop			;b78f
	jp z,0cb00h		;b790
	nop			;b793
	cp l			;b794
	nop			;b795
	cp (hl)			;b796
	nop			;b797
	cp a			;b798
	nop			;b799
	nop			;b79a
	nop			;b79b
	ld a,(hl)		;b79c
	nop			;b79d
	ld a,a			;b79e
	nop			;b79f
	add a,c			;b7a0
	nop			;b7a1
	nop			;b7a2
	nop			;b7a3
	nop			;b7a4
	nop			;b7a5
	ld (hl),l		;b7a6
	nop			;b7a7
	nop			;b7a8
	nop			;b7a9
	nop			;b7aa
	nop			;b7ab
	nop			;b7ac
	nop			;b7ad
	nop			;b7ae
	nop			;b7af
	nop			;b7b0
	nop			;b7b1
	dec a			;b7b2
	nop			;b7b3
	ld a,000h		;b7b4
	ccf			;b7b6
	nop			;b7b7
	nop			;b7b8
	nop			;b7b9
	dec a			;b7ba
	nop			;b7bb
	ld a,000h		;b7bc
	ccf			;b7be
	nop			;b7bf
	nop			;b7c0
	nop			;b7c1
	sbc a,l			;b7c2
	nop			;b7c3
	sbc a,(hl)		;b7c4
	nop			;b7c5
	ret nz			;b7c6
	nop			;b7c7
	and c			;b7c8
	nop			;b7c9
	sbc a,a			;b7ca
	nop			;b7cb
	and b			;b7cc
	nop			;b7cd
	nop			;b7ce
	nop			;b7cf
	sbc a,l			;b7d0
	nop			;b7d1
	sbc a,(hl)		;b7d2
	nop			;b7d3
	ret nz			;b7d4
	nop			;b7d5
	and c			;b7d6
	nop			;b7d7
	sbc a,a			;b7d8
	nop			;b7d9
	and b			;b7da
	nop			;b7db
	nop			;b7dc
	nop			;b7dd
	nop			;b7de
	nop			;b7df
	nop			;b7e0
	nop			;b7e1
	nop			;b7e2
	nop			;b7e3
	nop			;b7e4
	nop			;b7e5
	ld a,(00000h)		;b7e6
	nop			;b7e9
	nop			;b7ea
	nop			;b7eb
	nop			;b7ec
	nop			;b7ed
	ld a,(04000h)		;b7ee
	nop			;b7f1
	ld b,c			;b7f2
	nop			;b7f3
	ld b,d			;b7f4
	nop			;b7f5
	ld b,e			;b7f6
	nop			;b7f7
	ld b,b			;b7f8
	nop			;b7f9
	ld b,c			;b7fa
	nop			;b7fb
	ld b,d			;b7fc
	nop			;b7fd
	ld b,e			;b7fe
	nop			;b7ff
	nop			;b800
	nop			;b801
	nop			;b802
	nop			;b803
	nop			;b804
	nop			;b805
	nop			;b806
	nop			;b807
	nop			;b808
	nop			;b809
	nop			;b80a
	nop			;b80b
	nop			;b80c
	nop			;b80d
	nop			;b80e
	nop			;b80f
	ld a,(00000h)		;b810
	nop			;b813
	nop			;b814
	nop			;b815
	nop			;b816
	nop			;b817
	nop			;b818
	nop			;b819
	nop			;b81a
	nop			;b81b
	nop			;b81c
	nop			;b81d
	ld a,(00000h)		;b81e
	nop			;b821
	nop			;b822
	nop			;b823
	dec sp			;b824
	nop			;b825
	inc a			;b826
	nop			;b827
	nop			;b828
	nop			;b829
	nop			;b82a
	nop			;b82b
	dec sp			;b82c
	nop			;b82d
	inc a			;b82e
	nop			;b82f
	ld b,h			;b830
	nop			;b831
	ld b,l			;b832
	nop			;b833
	ld b,(hl)		;b834
	nop			;b835
	ld b,a			;b836
	nop			;b837
	ld b,h			;b838
	nop			;b839
	ld b,l			;b83a
	nop			;b83b
	ld l,(hl)		;b83c
	nop			;b83d
	ld h,l			;b83e
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
	dec sp			;b84e
	nop			;b84f
	inc a			;b850
	nop			;b851
	nop			;b852
	nop			;b853
	nop			;b854
	nop			;b855
	nop			;b856
	nop			;b857
	nop			;b858
	nop			;b859
	nop			;b85a
	nop			;b85b
	dec sp			;b85c
	nop			;b85d
	inc a			;b85e
	nop			;b85f
	nop			;b860
	nop			;b861
	dec a			;b862
	nop			;b863
	ld a,000h		;b864
	ccf			;b866
	nop			;b867
	nop			;b868
	nop			;b869
	dec a			;b86a
	nop			;b86b
	ld a,000h		;b86c
	ccf			;b86e
	nop			;b86f
	ld c,b			;b870
	nop			;b871
	ld c,c			;b872
	nop			;b873
	ld c,d			;b874
	nop			;b875
	ld c,e			;b876
	nop			;b877
	ld c,b			;b878
	nop			;b879
	ld c,c			;b87a
	nop			;b87b
	ld h,(hl)		;b87c
	nop			;b87d
	ld h,a			;b87e
	nop			;b87f
	nop			;b880
	nop			;b881
	nop			;b882
	nop			;b883
	nop			;b884
	nop			;b885
	nop			;b886
	nop			;b887
	nop			;b888
	nop			;b889
	nop			;b88a
	nop			;b88b
	dec a			;b88c
	nop			;b88d
	ld a,000h		;b88e
	ccf			;b890
	nop			;b891
	nop			;b892
	nop			;b893
	nop			;b894
	nop			;b895
	nop			;b896
	nop			;b897
	nop			;b898
	nop			;b899
	dec a			;b89a
	nop			;b89b
	ld a,000h		;b89c
	ccf			;b89e
	nop			;b89f
	ld b,b			;b8a0
	nop			;b8a1
	ld b,c			;b8a2
	nop			;b8a3
	ld b,d			;b8a4
	nop			;b8a5
	ld b,e			;b8a6
	nop			;b8a7
	ld b,b			;b8a8
	nop			;b8a9
	ld b,c			;b8aa
	nop			;b8ab
	ld b,d			;b8ac
	nop			;b8ad
	ld b,e			;b8ae
	nop			;b8af
	ld c,h			;b8b0
	nop			;b8b1
	ld c,l			;b8b2
	nop			;b8b3
	ld c,(hl)		;b8b4
	nop			;b8b5
	ld c,a			;b8b6
	nop			;b8b7
	ld c,h			;b8b8
	nop			;b8b9
	ld c,l			;b8ba
	nop			;b8bb
	ld c,(hl)		;b8bc
	nop			;b8bd
	ld c,a			;b8be
	nop			;b8bf
	nop			;b8c0
	nop			;b8c1
	nop			;b8c2
	nop			;b8c3
	nop			;b8c4
	nop			;b8c5
	nop			;b8c6
	nop			;b8c7
	nop			;b8c8
	nop			;b8c9
	ld b,b			;b8ca
	nop			;b8cb
	ld b,c			;b8cc
	nop			;b8cd
	ld b,d			;b8ce
	nop			;b8cf
	ld b,e			;b8d0
	nop			;b8d1
	nop			;b8d2
	nop			;b8d3
	nop			;b8d4
	nop			;b8d5
	nop			;b8d6
	nop			;b8d7
	ld b,b			;b8d8
	nop			;b8d9
	ld b,c			;b8da
	nop			;b8db
	ld b,d			;b8dc
	nop			;b8dd
	ld b,e			;b8de
	nop			;b8df
	ld b,h			;b8e0
	nop			;b8e1
	ld b,l			;b8e2
	nop			;b8e3
	ld l,h			;b8e4
	nop			;b8e5
	ld l,l			;b8e6
	nop			;b8e7
	ld b,h			;b8e8
	nop			;b8e9
	ld b,l			;b8ea
	nop			;b8eb
	ld h,h			;b8ec
	nop			;b8ed
	ld h,l			;b8ee
	nop			;b8ef
	ld d,b			;b8f0
	nop			;b8f1
	ld d,c			;b8f2
	nop			;b8f3
	ld d,d			;b8f4
	nop			;b8f5
	nop			;b8f6
	nop			;b8f7
	ld d,b			;b8f8
	nop			;b8f9
	ld d,c			;b8fa
	nop			;b8fb
	ld d,d			;b8fc
	nop			;b8fd
	nop			;b8fe
	nop			;b8ff
	nop			;b900
	nop			;b901
	nop			;b902
	nop			;b903
	nop			;b904
	nop			;b905
	nop			;b906
	nop			;b907
	nop			;b908
	nop			;b909
	ld b,h			;b90a
	nop			;b90b
	ld b,l			;b90c
	nop			;b90d
	ld l,b			;b90e
	nop			;b90f
	ld l,c			;b910
	nop			;b911
	adc a,(hl)		;b912
	nop			;b913
	adc a,a			;b914
	nop			;b915
	nop			;b916
	nop			;b917
	ld b,h			;b918
	nop			;b919
	ld b,l			;b91a
	nop			;b91b
	ld (hl),b		;b91c
	nop			;b91d
	ld (hl),c		;b91e
	nop			;b91f
	ld c,b			;b920
	nop			;b921
	ld c,c			;b922
	nop			;b923
	ld l,(hl)		;b924
	nop			;b925
	ld l,a			;b926
	nop			;b927
	ld c,b			;b928
	nop			;b929
	ld c,c			;b92a
	nop			;b92b
	ld h,(hl)		;b92c
	nop			;b92d
	ld h,a			;b92e
	nop			;b92f
	nop			;b930
	nop			;b931
	nop			;b932
	nop			;b933
	nop			;b934
	nop			;b935
	nop			;b936
	nop			;b937
	nop			;b938
	nop			;b939
	nop			;b93a
	nop			;b93b
	nop			;b93c
	nop			;b93d
	nop			;b93e
	nop			;b93f
	nop			;b940
	nop			;b941
	nop			;b942
	nop			;b943
	nop			;b944
	nop			;b945
	nop			;b946
	nop			;b947
	nop			;b948
	nop			;b949
	ld c,b			;b94a
	nop			;b94b
	ld c,c			;b94c
	nop			;b94d
	ld l,d			;b94e
	nop			;b94f
	sub b			;b950
	nop			;b951
	sub b			;b952
	nop			;b953
	sub c			;b954
	nop			;b955
	sub d			;b956
	nop			;b957
	ld c,b			;b958
	nop			;b959
	ld c,c			;b95a
	nop			;b95b
	ld (hl),d		;b95c
	nop			;b95d
	ld (hl),e		;b95e
	nop			;b95f
	ld c,h			;b960
	nop			;b961
	ld c,l			;b962
	nop			;b963
	ld c,(hl)		;b964
	nop			;b965
	ld c,a			;b966
	nop			;b967
	ld c,h			;b968
	nop			;b969
	ld c,l			;b96a
	nop			;b96b
	ld c,(hl)		;b96c
	nop			;b96d
	ld c,a			;b96e
	nop			;b96f
	nop			;b970
	nop			;b971
	nop			;b972
	nop			;b973
	nop			;b974
	nop			;b975
	nop			;b976
	nop			;b977
	nop			;b978
	nop			;b979
	nop			;b97a
	nop			;b97b
	nop			;b97c
	nop			;b97d
	nop			;b97e
	nop			;b97f
	nop			;b980
	nop			;b981
	nop			;b982
	nop			;b983
	nop			;b984
	nop			;b985
	nop			;b986
	nop			;b987
	nop			;b988
	nop			;b989
	ld c,h			;b98a
	nop			;b98b
	ld c,l			;b98c
	nop			;b98d
	ld l,e			;b98e
	nop			;b98f
	sub l			;b990
	nop			;b991
	sub e			;b992
	nop			;b993
	sub h			;b994
	nop			;b995
	nop			;b996
	nop			;b997
	ld c,h			;b998
	nop			;b999
	ld c,l			;b99a
	nop			;b99b
	ld c,(hl)		;b99c
	nop			;b99d
	ld c,a			;b99e
	nop			;b99f
	ld d,b			;b9a0
	nop			;b9a1
	ld d,c			;b9a2
	nop			;b9a3
	ld d,d			;b9a4
	nop			;b9a5
	nop			;b9a6
	nop			;b9a7
	ld d,b			;b9a8
	nop			;b9a9
	ld d,c			;b9aa
	nop			;b9ab
	ld d,d			;b9ac
	nop			;b9ad
	nop			;b9ae
	nop			;b9af
	nop			;b9b0
	nop			;b9b1
	nop			;b9b2
	nop			;b9b3
	nop			;b9b4
	nop			;b9b5
	nop			;b9b6
	nop			;b9b7
	nop			;b9b8
	nop			;b9b9
	nop			;b9ba
	nop			;b9bb
	nop			;b9bc
	nop			;b9bd
	nop			;b9be
	nop			;b9bf
	nop			;b9c0
	nop			;b9c1
	nop			;b9c2
	nop			;b9c3
	nop			;b9c4
	nop			;b9c5
	nop			;b9c6
	nop			;b9c7
	nop			;b9c8
	nop			;b9c9
	ld d,b			;b9ca
	nop			;b9cb
	ld d,c			;b9cc
	nop			;b9cd
	ld d,d			;b9ce
	nop			;b9cf
	nop			;b9d0
	nop			;b9d1
	nop			;b9d2
	nop			;b9d3
	nop			;b9d4
	nop			;b9d5
	nop			;b9d6
	nop			;b9d7
	ld d,b			;b9d8
	nop			;b9d9
	ld d,c			;b9da
	nop			;b9db
	ld d,d			;b9dc
	nop			;b9dd
	nop			;b9de
	nop			;b9df
	nop			;b9e0
	nop			;b9e1
	nop			;b9e2
	nop			;b9e3
	nop			;b9e4
	nop			;b9e5
	nop			;b9e6
	nop			;b9e7
	nop			;b9e8
	nop			;b9e9
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
sub_ba00h:
	rst 38h			;ba00
	rst 38h			;ba01
	cp 0feh			;ba02
	cp 0feh			;ba04
	cp 0feh			;ba06
	cp 0feh			;ba08
	cp 0feh			;ba0a
	cp 0feh			;ba0c
	cp 0feh			;ba0e
	cp 0feh			;ba10
	cp 0feh			;ba12
	cp 0feh			;ba14
	cp 0feh			;ba16
	cp 0feh			;ba18
	cp 0feh			;ba1a
	cp 0feh			;ba1c
	cp 0feh			;ba1e
	cp 0feh			;ba20
	cp 0feh			;ba22
	cp 0feh			;ba24
	cp 0feh			;ba26
	cp 0feh			;ba28
	cp 0feh			;ba2a
	cp 0feh			;ba2c
	cp 0feh			;ba2e
	cp 0feh			;ba30
	cp 0feh			;ba32
	cp 0feh			;ba34
	cp 0feh			;ba36
	cp 0feh			;ba38
	dec b			;ba3a
	nop			;ba3b
	cp 0feh			;ba3c
	cp 0feh			;ba3e
	cp 0feh			;ba40
	cp 0feh			;ba42
	cp 0feh			;ba44
	cp 0feh			;ba46
	cp 0feh			;ba48
	cp 0feh			;ba4a
	cp 0feh			;ba4c
	ld bc,00200h		;ba4e
	nop			;ba51
	cp 0feh			;ba52
	cp 0feh			;ba54
	cp 0feh			;ba56
	cp 0feh			;ba58
	cp 0feh			;ba5a
	cp 0feh			;ba5c
	cp 0feh			;ba5e
	cp 0feh			;ba60
	cp 0feh			;ba62
	cp 0feh			;ba64
	cp 0feh			;ba66
	cp 0feh			;ba68
	cp 0feh			;ba6a
	cp 0feh			;ba6c
	cp 0feh			;ba6e
	cp 0feh			;ba70
	dec b			;ba72
	nop			;ba73
	ld b,000h		;ba74
	dec c			;ba76
	nop			;ba77
	ld e,e			;ba78
	nop			;ba79
	ld b,c			;ba7a
	nop			;ba7b
	cp 0feh			;ba7c
	cp 0feh			;ba7e
	cp 0feh			;ba80
	cp 0feh			;ba82
	cp 0feh			;ba84
	cp 0feh			;ba86
	cp 0feh			;ba88
	cp 0feh			;ba8a
	ld c,000h		;ba8c
	sub d			;ba8e
	nop			;ba8f
	inc sp			;ba90
	nop			;ba91
	ld d,(hl)		;ba92
	nop			;ba93
	inc (hl)		;ba94
	nop			;ba95
	ld d,a			;ba96
	nop			;ba97
	xor h			;ba98
	nop			;ba99
	and b			;ba9a
	nop			;ba9b
	and c			;ba9c
	nop			;ba9d
	and d			;ba9e
	nop			;ba9f
	and e			;baa0
	nop			;baa1
	ld h,e			;baa2
	nop			;baa3
	ld h,h			;baa4
	nop			;baa5
	ld h,l			;baa6
	nop			;baa7
	rrca			;baa8
	nop			;baa9
	ld b,e			;baaa
	nop			;baab
	ld d,d			;baac
	nop			;baad
	ld b,h			;baae
	nop			;baaf
	ld e,h			;bab0
	nop			;bab1
	xor e			;bab2
	nop			;bab3
	ld e,l			;bab4
	nop			;bab5
	ld b,a			;bab6
	nop			;bab7
	add a,l			;bab8
	nop			;bab9
	djnz lbabch		;baba
lbabch:
	cp 0feh			;babc
	cp 0feh			;babe
	cp 0feh			;bac0
	cp 0feh			;bac2
	cp 0feh			;bac4
	cp 0feh			;bac6
	cp 0feh			;bac8
	cp 0feh			;baca
	dec (hl)		;bacc
	nop			;bacd
	ld l,(hl)		;bace
	nop			;bacf
	sub e			;bad0
	nop			;bad1
	ld l,a			;bad2
	nop			;bad3
	scf			;bad4
	nop			;bad5
	sub h			;bad6
	nop			;bad7
	xor l			;bad8
	nop			;bad9
	sub b			;bada
	nop			;badb
	ld a,b			;badc
	nop			;badd
	sub c			;bade
	nop			;badf
	ld (hl),h		;bae0
	nop			;bae1
	ld l,b			;bae2
	nop			;bae3
	ld d,e			;bae4
	nop			;bae5
	sbc a,d			;bae6
	nop			;bae7
	ld b,d			;bae8
	nop			;bae9
	add a,(hl)		;baea
	nop			;baeb
	add a,a			;baec
	nop			;baed
	adc a,c			;baee
	nop			;baef
	ld b,l			;baf0
	nop			;baf1
	adc a,d			;baf2
	nop			;baf3
	adc a,e			;baf4
	nop			;baf5
	ld c,b			;baf6
	nop			;baf7
	ld b,(hl)		;baf8
	nop			;baf9
	rlca			;bafa
	nop			;bafb
	cp 0feh			;bafc
	cp 0feh			;bafe
	cp 0feh			;bb00
	cp 0feh			;bb02
	cp 0feh			;bb04
	cp 0feh			;bb06
	cp 0feh			;bb08
	inc bc			;bb0a
	nop			;bb0b
	ld e,c			;bb0c
	nop			;bb0d
	ld a,d			;bb0e
	nop			;bb0f
	sbc a,c			;bb10
	nop			;bb11
	ld a,e			;bb12
	nop			;bb13
	sub l			;bb14
	nop			;bb15
	ld a,l			;bb16
	nop			;bb17
	ld a,a			;bb18
	nop			;bb19
	ld e,d			;bb1a
	nop			;bb1b
	ld a,h			;bb1c
	nop			;bb1d
	xor (hl)		;bb1e
	nop			;bb1f
	ld (hl),l		;bb20
	nop			;bb21
	ld h,d			;bb22
	nop			;bb23
	ld d,h			;bb24
	nop			;bb25
	ld c,d			;bb26
	nop			;bb27
	sbc a,e			;bb28
	nop			;bb29
	adc a,l			;bb2a
	nop			;bb2b
	ex af,af'		;bb2c
	nop			;bb2d
	adc a,h			;bb2e
	nop			;bb2f
	ld c,c			;bb30
	nop			;bb31
	ld e,(hl)		;bb32
	nop			;bb33
	sbc a,a			;bb34
	nop			;bb35
	ld e,a			;bb36
	nop			;bb37
	ld c,e			;bb38
	nop			;bb39
	cp 0feh			;bb3a
	cp 0feh			;bb3c
	cp 0feh			;bb3e
	cp 0feh			;bb40
	cp 0feh			;bb42
	cp 0feh			;bb44
	cp 0feh			;bb46
	cp 0feh			;bb48
	ld (hl),000h		;bb4a
	sub (hl)		;bb4c
	nop			;bb4d
	ld a,(hl)		;bb4e
	nop			;bb4f
	jr c,lbb52h		;bb50
lbb52h:
	sub a			;bb52
	nop			;bb53
	sbc a,b			;bb54
	nop			;bb55
	add hl,sp		;bb56
	nop			;bb57
	halt			;bb58
	nop			;bb59
	ld (hl),c		;bb5a
	nop			;bb5b
	add a,b			;bb5c
	nop			;bb5d
	ld (hl),d		;bb5e
	nop			;bb5f
	ld (hl),a		;bb60
	nop			;bb61
	ld l,h			;bb62
	nop			;bb63
	ld l,c			;bb64
	nop			;bb65
	sbc a,h			;bb66
	nop			;bb67
	ld c,h			;bb68
	nop			;bb69
	ld c,l			;bb6a
	nop			;bb6b
	ld l,d			;bb6c
	nop			;bb6d
	ld l,e			;bb6e
	nop			;bb6f
	ld c,(hl)		;bb70
	nop			;bb71
	sbc a,l			;bb72
	nop			;bb73
	sbc a,(hl)		;bb74
	nop			;bb75
	adc a,b			;bb76
	nop			;bb77
	ld de,0fe00h		;bb78
	cp 0feh			;bb7b
	cp 0feh			;bb7d
	cp 0feh			;bb7f
	cp 0feh			;bb81
	cp 0feh			;bb83
	cp 0feh			;bb85
	cp 0feh			;bb87
	cp 058h			;bb89
	nop			;bb8b
	add a,c			;bb8c
	nop			;bb8d
	ld a,(03b00h)		;bb8e
	nop			;bb91
	inc a			;bb92
	nop			;bb93
	add a,d			;bb94
	nop			;bb95
	dec a			;bb96
	nop			;bb97
	ld a,c			;bb98
	nop			;bb99
	add a,e			;bb9a
	nop			;bb9b
	ld a,000h		;bb9c
	ld h,(hl)		;bb9e
	nop			;bb9f
	add a,h			;bba0
	nop			;bba1
	ld h,b			;bba2
	nop			;bba3
	ld d,l			;bba4
	nop			;bba5
	ld h,c			;bba6
	nop			;bba7
	ld d,b			;bba8
	nop			;bba9
	ld b,b			;bbaa
	nop			;bbab
	ld (de),a		;bbac
	nop			;bbad
	ld d,c			;bbae
	nop			;bbaf
	ld c,a			;bbb0
	nop			;bbb1
	adc a,a			;bbb2
	nop			;bbb3
	ld l,l			;bbb4
	nop			;bbb5
	adc a,(hl)		;bbb6
	nop			;bbb7
	add hl,bc		;bbb8
	nop			;bbb9
	or b			;bbba
	nop			;bbbb
	or c			;bbbc
	nop			;bbbd
	cp 0feh			;bbbe
	cp 0feh			;bbc0
	cp 0feh			;bbc2
	cp 0feh			;bbc4
	cp 0feh			;bbc6
	inc b			;bbc8
	nop			;bbc9
	ld h,a			;bbca
	nop			;bbcb
	ccf			;bbcc
	nop			;bbcd
	cp 0feh			;bbce
	cp 0feh			;bbd0
	cp 0feh			;bbd2
	cp 0feh			;bbd4
	cp 0feh			;bbd6
	cp 0feh			;bbd8
	cp 0feh			;bbda
	cp 0feh			;bbdc
	cp 0feh			;bbde
	cp 0feh			;bbe0
	cp 0feh			;bbe2
	cp 0feh			;bbe4
	cp 0feh			;bbe6
	cp 0feh			;bbe8
	cp 0feh			;bbea
	cp 0feh			;bbec
	cp 0feh			;bbee
	cp 0feh			;bbf0
	cp 0feh			;bbf2
	cp 0feh			;bbf4
	cp 0feh			;bbf6
	cp 0feh			;bbf8
	cp 0feh			;bbfa
	cp 0feh			;bbfc
	cp 0feh			;bbfe
	cp 0feh			;bc00
	cp 0feh			;bc02
	cp 0feh			;bc04
	cp 0feh			;bc06
	cp 0feh			;bc08
	cp 0feh			;bc0a
	cp 0feh			;bc0c
	cp 0feh			;bc0e
	cp 0feh			;bc10
	cp 0feh			;bc12
	cp 0feh			;bc14
	cp 0feh			;bc16
	cp 0feh			;bc18
	dec bc			;bc1a
	nop			;bc1b
	inc l			;bc1c
	nop			;bc1d
	cp 0feh			;bc1e
	cp 0feh			;bc20
	cp 0feh			;bc22
	cp 0feh			;bc24
	cp 0feh			;bc26
	cp 0feh			;bc28
	cp 0feh			;bc2a
	cp 0feh			;bc2c
	cp 0feh			;bc2e
	cp 0feh			;bc30
	cp 0feh			;bc32
	cp 0feh			;bc34
	cp 0feh			;bc36
	cp 0feh			;bc38
	cp 0feh			;bc3a
	cp 0feh			;bc3c
	cp 0feh			;bc3e
	cp 0feh			;bc40
	cp 0feh			;bc42
	cp 0feh			;bc44
	cp 0feh			;bc46
	cp 0feh			;bc48
	cp 0feh			;bc4a
	cp 0feh			;bc4c
	cp 0feh			;bc4e
	cp 0feh			;bc50
	cp 0feh			;bc52
	cp 0feh			;bc54
	cp 0feh			;bc56
	cp 0feh			;bc58
	dec l			;bc5a
	nop			;bc5b
	ld l,000h		;bc5c
	cp 0feh			;bc5e
	cp 0feh			;bc60
	cp 0feh			;bc62
	cp 0feh			;bc64
	cp 0feh			;bc66
	dec d			;bc68
	nop			;bc69
	cp 0feh			;bc6a
	cp 0feh			;bc6c
	ld (0fe00h),a		;bc6e
	cp 0feh			;bc71
	cp 0feh			;bc73
	cp 0feh			;bc75
	cp 0feh			;bc77
	cp 0feh			;bc79
	cp 0feh			;bc7b
	cp 0feh			;bc7d
	cp 0feh			;bc7f
	cp 0feh			;bc81
	cp 0feh			;bc83
	cp 0feh			;bc85
	cp 0feh			;bc87
	cp 0feh			;bc89
	cp 0feh			;bc8b
	cp 0feh			;bc8d
	cp 0feh			;bc8f
	cp 0feh			;bc91
	cp 0feh			;bc93
	cp 0feh			;bc95
	cp 00ch			;bc97
	nop			;bc99
	cpl			;bc9a
	nop			;bc9b
	inc de			;bc9c
	nop			;bc9d
	inc d			;bc9e
	nop			;bc9f
	ld a,(bc)		;bca0
	nop			;bca1
	dec e			;bca2
	nop			;bca3
	ld e,000h		;bca4
	rra			;bca6
	nop			;bca7
	jr nz,lbcaah		;bca8
lbcaah:
	ld hl,02200h		;bcaa
	nop			;bcad
	inc hl			;bcae
	nop			;bcaf
	cp 0feh			;bcb0
	cp 0feh			;bcb2
	cp 0feh			;bcb4
	cp 0feh			;bcb6
	cp 0feh			;bcb8
	cp 0feh			;bcba
	cp 0feh			;bcbc
	cp 0feh			;bcbe
	cp 0feh			;bcc0
	cp 0feh			;bcc2
	cp 0feh			;bcc4
	cp 0feh			;bcc6
	cp 0feh			;bcc8
	cp 0feh			;bcca
	cp 0feh			;bccc
	cp 0feh			;bcce
	cp 0feh			;bcd0
	cp 0feh			;bcd2
	cp 0feh			;bcd4
	cp 0feh			;bcd6
	cp 0feh			;bcd8
	ld d,000h		;bcda
	rla			;bcdc
	nop			;bcdd
	jr lbce0h		;bcde
lbce0h:
	add hl,de		;bce0
	nop			;bce1
	inc h			;bce2
	nop			;bce3
	dec h			;bce4
	nop			;bce5
	ld h,000h		;bce6
	daa			;bce8
	nop			;bce9
	jr z,lbcech		;bcea
lbcech:
	cp 0feh			;bcec
	cp 0feh			;bcee
	cp 0feh			;bcf0
	cp 0feh			;bcf2
	cp 0feh			;bcf4
	cp 0feh			;bcf6
	cp 0feh			;bcf8
	cp 0feh			;bcfa
	cp 0feh			;bcfc
	cp 0feh			;bcfe
	cp 0feh			;bd00
	cp 0feh			;bd02
	cp 0feh			;bd04
	cp 0feh			;bd06
	cp 0feh			;bd08
	cp 0feh			;bd0a
	cp 0feh			;bd0c
	cp 0feh			;bd0e
	cp 0feh			;bd10
	cp 0feh			;bd12
	cp 0feh			;bd14
	cp 0feh			;bd16
	jr nc,lbd1ah		;bd18
lbd1ah:
	ld a,(de)		;bd1a
	nop			;bd1b
	ld sp,01b00h		;bd1c
	nop			;bd1f
	inc e			;bd20
	nop			;bd21
	add hl,hl		;bd22
	nop			;bd23
	ld hl,(02b00h)		;bd24
	nop			;bd27
	xor a			;bd28
	nop			;bd29
	cp 0feh			;bd2a
	cp 0feh			;bd2c
	cp 0feh			;bd2e
	cp 0feh			;bd30
	cp 0feh			;bd32
	cp 0feh			;bd34
	cp 0feh			;bd36
	cp 0feh			;bd38
	cp 0feh			;bd3a
	cp 0feh			;bd3c
	cp 0feh			;bd3e
	cp 0feh			;bd40
	cp 0feh			;bd42
	cp 0feh			;bd44
	cp 0feh			;bd46
	cp 0feh			;bd48
	cp 0feh			;bd4a
	cp 0feh			;bd4c
	cp 0feh			;bd4e
	cp 0feh			;bd50
	cp 0feh			;bd52
	cp 0feh			;bd54
	cp 0feh			;bd56
	xor c			;bd58
	nop			;bd59
	xor d			;bd5a
	nop			;bd5b
	and h			;bd5c
	nop			;bd5d
	and l			;bd5e
	nop			;bd5f
	and (hl)		;bd60
	nop			;bd61
	ld h,e			;bd62
	nop			;bd63
	ld h,h			;bd64
	nop			;bd65
	ld h,l			;bd66
	nop			;bd67
	rrca			;bd68
	nop			;bd69
	ld b,e			;bd6a
	nop			;bd6b
	ld d,d			;bd6c
	nop			;bd6d
	ld b,h			;bd6e
	nop			;bd6f
	cp 0feh			;bd70
	cp 0feh			;bd72
	cp 0feh			;bd74
	cp 0feh			;bd76
	cp 0feh			;bd78
	cp 0feh			;bd7a
	cp 0feh			;bd7c
	cp 0feh			;bd7e
	cp 0feh			;bd80
	cp 0feh			;bd82
	cp 0feh			;bd84
	cp 0feh			;bd86
	cp 0feh			;bd88
	cp 0feh			;bd8a
	cp 0feh			;bd8c
	cp 0feh			;bd8e
	cp 0feh			;bd90
	cp 0feh			;bd92
	cp 0feh			;bd94
	cp 0feh			;bd96
	ld (hl),e		;bd98
	nop			;bd99
	ld (hl),b		;bd9a
	nop			;bd9b
	ld a,b			;bd9c
	nop			;bd9d
	and a			;bd9e
	nop			;bd9f
	ld (hl),h		;bda0
	nop			;bda1
	ld l,b			;bda2
	nop			;bda3
	ld d,e			;bda4
	nop			;bda5
	sbc a,d			;bda6
	nop			;bda7
	ld b,d			;bda8
	nop			;bda9
	add a,(hl)		;bdaa
	nop			;bdab
	add a,a			;bdac
	nop			;bdad
	adc a,c			;bdae
	nop			;bdaf
	cp 0feh			;bdb0
	cp 0feh			;bdb2
	cp 0feh			;bdb4
	cp 0feh			;bdb6
	cp 0feh			;bdb8
	cp 0feh			;bdba
	cp 0feh			;bdbc
	cp 0feh			;bdbe
	cp 0feh			;bdc0
	cp 0feh			;bdc2
	cp 0feh			;bdc4
	cp 0feh			;bdc6
	cp 0feh			;bdc8
	cp 0feh			;bdca
	cp 0feh			;bdcc
	cp 0feh			;bdce
	cp 0feh			;bdd0
	cp 0feh			;bdd2
	cp 0feh			;bdd4
	cp 0feh			;bdd6
	ld a,a			;bdd8
	nop			;bdd9
	ld e,d			;bdda
	nop			;bddb
	ld a,h			;bddc
	nop			;bddd
	xor b			;bdde
	nop			;bddf
	ld (hl),l		;bde0
	nop			;bde1
	ld h,d			;bde2
	nop			;bde3
	ld d,h			;bde4
	nop			;bde5
	ld c,d			;bde6
	nop			;bde7
	sbc a,e			;bde8
	nop			;bde9
	adc a,l			;bdea
	nop			;bdeb
	ex af,af'		;bdec
	nop			;bded
	adc a,h			;bdee
	nop			;bdef
	cp 0feh			;bdf0
	cp 0feh			;bdf2
	cp 0feh			;bdf4
	cp 0feh			;bdf6
	cp 0feh			;bdf8
	cp 0feh			;bdfa
	cp 0feh			;bdfc
	cp 0feh			;bdfe
	cp 0feh			;be00
	rst 38h			;be02
	rst 38h			;be03
	nop			;be04
	nop			;be05
	nop			;be06
	nop			;be07
	nop			;be08
	nop			;be09
	nop			;be0a
	nop			;be0b
	nop			;be0c
	nop			;be0d
	nop			;be0e
	nop			;be0f
	nop			;be10
	nop			;be11
	nop			;be12
	nop			;be13
	nop			;be14
	nop			;be15
	nop			;be16
	nop			;be17
	nop			;be18
	nop			;be19
	nop			;be1a
	nop			;be1b
	nop			;be1c
	nop			;be1d
	nop			;be1e
	nop			;be1f
	nop			;be20
	nop			;be21
	nop			;be22
	nop			;be23
	nop			;be24
	nop			;be25
	nop			;be26
	nop			;be27
	nop			;be28
	nop			;be29
	nop			;be2a
	ld bc,00101h		;be2b
	ld (bc),a		;be2e
	inc bc			;be2f
	ld (bc),a		;be30
	inc b			;be31
	rlca			;be32
	dec b			;be33
	nop			;be34
	nop			;be35
	nop			;be36
	rra			;be37
	rra			;be38
	rra			;be39
	dec l			;be3a
	ld hl,07e3fh		;be3b
	ld a,(hl)		;be3e
	ld a,(hl)		;be3f
	add a,(hl)		;be40
	jp m,00c82h		;be41
	call p,00c64h		;be44
	call p,018c4h		;be47
	ret pe			;be4a
	ret z			;be4b
lbe4ch:
	nop			;be4c
	nop			;be4d
	nop			;be4e
	nop			;be4f
	nop			;be50
lbe51h:
	nop			;be51
	nop			;be52
	nop			;be53
	nop			;be54
	nop			;be55
	nop			;be56
	nop			;be57
	nop			;be58
	nop			;be59
	nop			;be5a
	ld bc,00101h		;be5b
	ld (bc),a		;be5e
	inc bc			;be5f
	ld (bc),a		;be60
	inc b			;be61
	rlca			;be62
	dec b			;be63
	ex af,af'		;be64
	rrca			;be65
lbe66h:
	dec bc			;be66
	djnz $+33		;be67
	rla			;be69
	jr nz,lbeabh		;be6a
	ld l,040h		;be6c
	ld a,a			;be6e
	ld e,(hl)		;be6f
	add a,b			;be70
	rst 38h			;be71
	cp h			;be72
	nop			;be73
	rst 38h			;be74
	ld a,b			;be75
	nop			;be76
	rst 38h			;be77
	ret m			;be78
	ld bc,0f0feh		;be79
	jr lbe66h		;be7c
	adc a,b			;be7e
	jr nc,lbe51h		;be7f
	djnz $+50		;be81
	ret nc			;be83
	djnz lbee6h		;be84
	and b			;be86
	jr nz,lbee9h		;be87
	and b			;be89
	jr nz,lbe4ch		;be8a
	ld b,b			;be8c
	ld b,b			;be8d
	ret nz			;be8e
	ld b,b			;be8f
	ld b,b			;be90
	add a,b			;be91
	add a,b			;be92
	add a,b			;be93
	nop			;be94
	nop			;be95
	nop			;be96
	nop			;be97
	nop			;be98
	nop			;be99
	nop			;be9a
	nop			;be9b
	nop			;be9c
	nop			;be9d
	nop			;be9e
	nop			;be9f
	nop			;bea0
	nop			;bea1
	nop			;bea2
	ld bc,00101h		;bea3
	ld (bc),a		;bea6
	inc bc			;bea7
	ld (bc),a		;bea8
	ld b,005h		;bea9
lbeabh:
	inc b			;beab
	ex af,af'		;beac
	rrca			;bead
	dec bc			;beae
	djnz $+33		;beaf
	rla			;beb1
	jr nz,lbef3h		;beb2
	cpl			;beb4
	ld b,b			;beb5
	ld a,a			;beb6
	ld e,a			;beb7
	add a,b			;beb8
	rst 38h			;beb9
	cp a			;beba
	nop			;bebb
	rst 38h			;bebc
	ld a,(hl)		;bebd
	nop			;bebe
	rst 38h			;bebf
	ret p			;bec0
	rrca			;bec1
	ret p			;bec2
	nop			;bec3
	ld bc,0f0feh		;bec4
	inc bc			;bec7
	pop iy			;bec8
	inc bc			;beca
	defb 0fdh,0c1h,006h ;illegal sequence	;becb
	jp m,006c2h		;bece
	jp m,00c82h		;bed1
	call p,00c04h		;bed4
	call p,0f804h		;bed7
	ex af,af'		;beda
	ex af,af'		;bedb
	nop			;bedc
	nop			;bedd
	nop			;bede
	nop			;bedf
	nop			;bee0
	nop			;bee1
	nop			;bee2
	nop			;bee3
	nop			;bee4
	nop			;bee5
lbee6h:
	nop			;bee6
	nop			;bee7
	nop			;bee8
lbee9h:
	nop			;bee9
	nop			;beea
	rlca			;beeb
	rlca			;beec
	rlca			;beed
	ccf			;beee
	ccf			;beef
lbef0h:
	jr c,lbef0h		;bef0
	rst 38h			;bef2
lbef3h:
	pop bc			;bef3
	nop			;bef4
	nop			;bef5
	nop			;bef6
	nop			;bef7
	nop			;bef8
	nop			;bef9
	nop			;befa
	nop			;befb
	nop			;befc
	nop			;befd
	nop			;befe
	nop			;beff
	rst 38h			;bf00
	rst 38h			;bf01
	rst 38h			;bf02
	ret m			;bf03
	rst 38h			;bf04
	rrca			;bf05
	jr c,$+1		;bf06
	rst 8			;bf08
	ld (hl),b		;bf09
	rst 38h			;bf0a
	sbc a,a			;bf0b
	rlca			;bf0c
	inc b			;bf0d
	inc b			;bf0e
	rlca			;bf0f
	rlca			;bf10
	rlca			;bf11
	ld bc,00101h		;bf12
	rst 38h			;bf15
	rst 38h			;bf16
	rst 38h			;bf17
	ret nz			;bf18
	rst 38h			;bf19
	rst 18h			;bf1a
	ld (hl),b		;bf1b
	rst 38h			;bf1c
	rst 30h			;bf1d
	jr nc,$+1		;bf1e
	or a			;bf20
	ld (hl),b		;bf21
	rst 38h			;bf22
	ld (hl),a		;bf23
	rst 38h			;bf24
	rrca			;bf25
	rrca			;bf26
	rst 38h			;bf27
	ret p			;bf28
	ret p			;bf29
	call m,00003h		;bf2a
	ret p			;bf2d
	rst 8			;bf2e
	ret nz			;bf2f
	ld a,a			;bf30
	cp 07eh			;bf31
	inc bc			;bf33
	rst 38h			;bf34
	add a,e			;bf35
	nop			;bf36
	rst 38h			;bf37
	call m,0ff00h		;bf38
	rst 38h			;bf3b
	ret p			;bf3c
	ret p			;bf3d
	ret p			;bf3e
	ret po			;bf3f
	jr nz,lbf62h		;bf40
	ld b,b			;bf42
	ret nz			;bf43
	ld b,b			;bf44
	ld b,b			;bf45
	ret nz			;bf46
	ld b,b			;bf47
	ret nz			;bf48
	ld b,b			;bf49
	ld b,b			;bf4a
	ret nz			;bf4b
	ret nz			;bf4c
	ret nz			;bf4d
	ld (hl),b		;bf4e
	ret p			;bf4f
	ld (hl),b		;bf50
	inc e			;bf51
	call pe,0018ch		;bf52
	ld bc,00701h		;bf55
	rlca			;bf58
	ld b,00fh		;bf59
	rrca			;bf5b
	ex af,af'		;bf5c
	rra			;bf5d
	rra			;bf5e
lbf5fh:
	djnz $+65		;bf5f
	ccf			;bf61
lbf62h:
	jr nz,lbfe3h		;bf62
	ld a,a			;bf64
lbf65h:
	ld b,c			;bf65
	ld a,a			;bf66
	ld a,(hl)		;bf67
	ld c,(hl)		;bf68
	cp a			;bf69
	ret p			;bf6a
	or b			;bf6b
	defb 0fdh,0ffh,002h ;illegal sequence	;bf6c
	rst 30h			;bf6f
	rst 38h			;bf70
	ex af,af'		;bf71
	rst 38h			;bf72
	rst 38h			;bf73
	inc bc			;bf74
	ld a,h			;bf75
	rst 38h			;bf76
	adc a,h			;bf77
	ret p			;bf78
	rst 38h			;bf79
	inc sp			;bf7a
	ret nz			;bf7b
	rst 38h			;bf7c
	rst 0			;bf7d
	add a,b			;bf7e
	ld a,a			;bf7f
	rra			;bf80
	nop			;bf81
	rst 38h			;bf82
	jr nc,lbf65h		;bf83
	rst 38h			;bf85
	ld a,(hl)		;bf86
	add a,b			;bf87
	rst 38h			;bf88
	cp a			;bf89
	inc bc			;bf8a
	call m,00778h		;bf8b
	rst 38h			;bf8e
	rst 30h			;bf8f
	ld c,0ffh		;bf90
	xor 000h		;bf92
	rst 38h			;bf94
	rst 38h			;bf95
	jr c,lbf5fh		;bf96
	rlca			;bf98
lbf99h:
	ret p			;bf99
	rst 38h			;bf9a
	ret p			;bf9b
	ret po			;bf9c
	rst 38h			;bf9d
	rst 28h			;bf9e
	ld bc,0fcfeh		;bf9f
	add a,a			;bfa2
	ld a,c			;bfa3
	add hl,sp		;bfa4
	ld c,0f7h		;bfa5
	halt			;bfa7
	jr lbf99h		;bfa8
	ex de,hl		;bfaa
	add hl,de		;bfab
	rst 30h			;bfac
	di			;bfad
	dec e			;bfae
	ei			;bfaf
	add hl,de		;bfb0
	rrca			;bfb1
	rst 38h			;bfb2
	rrca			;bfb3
	nop			;bfb4
	rst 38h			;bfb5
	nop			;bfb6
	rst 38h			;bfb7
	rlca			;bfb8
	rlca			;bfb9
	rst 38h			;bfba
	rst 38h			;bfbb
	rst 38h			;bfbc
	nop			;bfbd
	rst 38h			;bfbe
	rst 38h			;bfbf
	rst 38h			;bfc0
	nop			;bfc1
	nop			;bfc2
	nop			;bfc3
	rst 38h			;bfc4
	rst 38h			;bfc5
	rst 38h			;bfc6
	nop			;bfc7
	nop			;bfc8
	rst 38h			;bfc9
	rst 38h			;bfca
	rst 38h			;bfcb
	ld c,0f2h		;bfcc
	ld (bc),a		;bfce
	cp 0feh			;bfcf
	cp 0ffh			;bfd1
	rst 38h			;bfd3
	rst 38h			;bfd4
	ccf			;bfd5
	rst 0			;bfd6
	rlca			;bfd7
	rst 38h			;bfd8
	rst 38h			;bfd9
	rst 38h			;bfda
	nop			;bfdb
	rst 38h			;bfdc
	ret m			;bfdd
	rst 38h			;bfde
	nop			;bfdf
	nop			;bfe0
	rst 38h			;bfe1
	rst 38h			;bfe2
lbfe3h:
	rst 38h			;bfe3
	nop			;bfe4
	nop			;bfe5
	nop			;bfe6
	nop			;bfe7
	nop			;bfe8
	nop			;bfe9
	nop			;bfea
	nop			;bfeb
	nop			;bfec
	rst 38h			;bfed
	rst 38h			;bfee
	rst 38h			;bfef
	nop			;bff0
	rst 38h			;bff1
	rst 38h			;bff2
	rst 38h			;bff3
	add a,b			;bff4
	add a,b			;bff5
	rst 38h			;bff6
	rst 38h			;bff7
	rst 38h			;bff8
	nop			;bff9
	nop			;bffa
	nop			;bffb
sub_bffch:
	nop			;bffc
	nop			;bffd
	nop			;bffe
	nop			;bfff
