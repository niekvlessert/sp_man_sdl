; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank25_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank25.bin

	org 0a000h

	rst 38h			;a000
	rst 38h			;a001
	rst 38h			;a002
	rst 38h			;a003
	rst 38h			;a004
	rst 38h			;a005
	rst 38h			;a006
	rst 38h			;a007
	rst 38h			;a008
	rst 38h			;a009
	rst 38h			;a00a
	rst 38h			;a00b
	rst 38h			;a00c
	rst 38h			;a00d
	rst 38h			;a00e
	rst 38h			;a00f
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
	ld (bc),a		;a020
	ld (bc),a		;a021
	ld (bc),a		;a022
	ld (bc),a		;a023
	cp h			;a024
	jp nz,lbabbh		;a025
	call nz,0c1c0h		;a028
	push bc			;a02b
	ld (bc),a		;a02c
	ld (bc),a		;a02d
	ld (bc),a		;a02e
	ld (bc),a		;a02f
	ld (bc),a		;a030
	ld (bc),a		;a031
	ld (bc),a		;a032
	ld (bc),a		;a033
	cp l			;a034
	cp (hl)			;a035
	cp e			;a036
	cp d			;a037
la038h:
	call nz,sub_bfc3h	;a038
	push bc			;a03b
	ld (bc),a		;a03c
	ld (bc),a		;a03d
	ld (bc),a		;a03e
	ld (bc),a		;a03f
	nop			;a040
	nop			;a041
	nop			;a042
	nop			;a043
	nop			;a044
	ld c,e			;a045
	ld (00000h),a		;a046
	ld h,c			;a049
	ld c,(hl)		;a04a
	ld c,a			;a04b
	nop			;a04c
	ld l,l			;a04d
	ld d,c			;a04e
	ld (hl),l		;a04f
	xor c			;a050
	ld h,h			;a051
	ld d,b			;a052
	halt			;a053
	or (hl)			;a054
	ld d,d			;a055
	sub (hl)		;a056
	sbc a,c			;a057
	xor d			;a058
	or a			;a059
	cp b			;a05a
	xor b			;a05b
	sub d			;a05c
	ld (hl),h		;a05d
	sub a			;a05e
	sbc a,d			;a05f
	xor c			;a060
	ld d,d			;a061
	add a,e			;a062
	sbc a,c			;a063
	or (hl)			;a064
	or a			;a065
	cp b			;a066
	xor b			;a067
	xor d			;a068
	cp c			;a069
	sub a			;a06a
	sbc a,e			;a06b
	sub d			;a06c
	cp d			;a06d
	ld e,04ah		;a06e
	xor c			;a070
	sub h			;a071
	sub l			;a072
	xor e			;a073
	scf			;a074
	or a			;a075
	cp b			;a076
	xor b			;a077
	add hl,sp		;a078
	cp c			;a079
	sub a			;a07a
	sbc a,e			;a07b
	jr c,la038h		;a07c
	ld e,04ah		;a07e
	inc hl			;a080
	inc l			;a081
	dec hl			;a082
	ld (02d24h),hl		;a083
	daa			;a086
	dec h			;a087
	inc d			;a088
	ld h,029h		;a089
	ld (de),a		;a08b
	inc de			;a08c
	jr z,la0b9h		;a08d
	ld (bc),a		;a08f
	ld c,a			;a090
	nop			;a091
	nop			;a092
	nop			;a093
	ld (hl),l		;a094
	nop			;a095
	nop			;a096
	nop			;a097
	halt			;a098
	nop			;a099
	nop			;a09a
	nop			;a09b
la09ch:
	sbc a,c			;a09c
	nop			;a09d
	nop			;a09e
	nop			;a09f
	xor e			;a0a0
	nop			;a0a1
	nop			;a0a2
	nop			;a0a3
	xor b			;a0a4
	nop			;a0a5
	nop			;a0a6
	nop			;a0a7
	sbc a,e			;a0a8
	nop			;a0a9
	nop			;a0aa
	nop			;a0ab
	ld c,d			;a0ac
	nop			;a0ad
	nop			;a0ae
	nop			;a0af
	ld (00000h),hl		;a0b0
	nop			;a0b3
la0b4h:
	dec h			;a0b4
	nop			;a0b5
	nop			;a0b6
	nop			;a0b7
	ld (de),a		;a0b8
la0b9h:
	nop			;a0b9
	nop			;a0ba
	nop			;a0bb
	ld (bc),a		;a0bc
	nop			;a0bd
	nop			;a0be
	nop			;a0bf
	nop			;a0c0
	ld h,c			;a0c1
	ld c,(hl)		;a0c2
	ld c,a			;a0c3
	nop			;a0c4
	ld l,l			;a0c5
	ld d,c			;a0c6
	ld (hl),l		;a0c7
	nop			;a0c8
	ld h,h			;a0c9
	ld d,b			;a0ca
	halt			;a0cb
la0cch:
	nop			;a0cc
	ld d,d			;a0cd
	sub (hl)		;a0ce
	sbc a,c			;a0cf
	rlca			;a0d0
	dec bc			;a0d1
	inc hl			;a0d2
	inc l			;a0d3
	dec e			;a0d4
	rra			;a0d5
	inc h			;a0d6
	dec l			;a0d7
	dec e			;a0d8
	rra			;a0d9
	inc d			;a0da
	ld h,01ch		;a0db
	rla			;a0dd
	inc de			;a0de
	jr z,la10ch		;a0df
	ld (00d21h),hl		;a0e1
	daa			;a0e4
	dec h			;a0e5
	inc c			;a0e6
	jr nz,la112h		;a0e7
	ld (de),a		;a0e9
	add hl,de		;a0ea
	dec c			;a0eb
	ld hl,(01802h)		;a0ec
	ld (bc),a		;a0ef
	dec h			;a0f0
	xor l			;a0f1
	ld l,03ah		;a0f2
la0f4h:
	sbc a,h			;a0f4
	and b			;a0f5
	and d			;a0f6
	sbc a,(hl)		;a0f7
	sbc a,l			;a0f8
	and c			;a0f9
	and e			;a0fa
	sbc a,a			;a0fb
	ld a,(0253fh)		;a0fc
	ld a,(03c7ch)		;a0ff
	add a,c			;a102
	inc a			;a103
	add a,h			;a104
	ld b,b			;a105
	cpl			;a106
	ld b,b			;a107
	ld a,h			;a108
	or b			;a109
	or d			;a10a
	or e			;a10b
la10ch:
	ld a,c			;a10c
	jr nc,la0b4h		;a10d
	ld c,h			;a10f
	add a,c			;a110
	inc a			;a111
la112h:
	add a,c			;a112
	inc a			;a113
	cpl			;a114
	ld b,b			;a115
	cpl			;a116
	ld b,b			;a117
	or h			;a118
	or e			;a119
	or d			;a11a
	or b			;a11b
	ld h,b			;a11c
	ld (hl),d		;a11d
	ld a,(hl)		;a11e
	ld b,a			;a11f
	ld a,h			;a120
	or c			;a121
	ld sp,0796ah		;a122
	jr nc,la0cch		;a125
	ld l,c			;a127
	ld a,h			;a128
	or c			;a129
	ld sp,084b2h		;a12a
	sub c			;a12d
	ld l,03ah		;a12e
	add a,a			;a130
	ld l,e			;a131
	and (hl)		;a132
	ld (hl),08fh		;a133
	ld l,h			;a135
	ld a,(hl)		;a136
	ld b,a			;a137
	dec l			;a138
	or d			;a139
	and (hl)		;a13a
	ld (hl),048h		;a13b
	sub c			;a13d
	ld l,03ah		;a13e
	ld a,h			;a140
	inc a			;a141
	add a,c			;a142
	inc a			;a143
	add a,h			;a144
	ld b,b			;a145
	cpl			;a146
	ld b,b			;a147
	ld a,h			;a148
	or b			;a149
	or d			;a14a
	or e			;a14b
	ld a,c			;a14c
	jr nc,la0f4h		;a14d
	xor (hl)		;a14f
	add a,c			;a150
	inc a			;a151
	add a,c			;a152
	inc a			;a153
	cpl			;a154
	ld b,b			;a155
	cpl			;a156
	ld b,b			;a157
	or h			;a158
	or e			;a159
	or d			;a15a
	or b			;a15b
	sub e			;a15c
	xor h			;a15d
	add a,d			;a15e
	ld b,a			;a15f
	ld a,h			;a160
	dec a			;a161
	dec sp			;a162
	ld a,084h		;a163
	ccf			;a165
	dec h			;a166
	adc a,(hl)		;a167
	ld a,c			;a168
	jr nc,la1e5h		;a169
	ex af,af'		;a16b
	inc c			;a16c
	ex af,af'		;a16d
	add hl,bc		;a16e
	dec b			;a16f
	ld b,c			;a170
	or l			;a171
	dec sp			;a172
	sub c			;a173
	ld b,d			;a174
	sub b			;a175
	dec h			;a176
	ld a,(00909h)		;a177
	ld a,(hl)		;a17a
	ld b,a			;a17b
	ld bc,00a01h		;a17c
	ld b,07ch		;a17f
	or c			;a181
	ld sp,0793dh		;a182
	jr nc,$-89		;a185
	sub c			;a187
	ld a,h			;a188
	or c			;a189
	ld sp,084b2h		;a18a
	xor l			;a18d
	ld l,03ah		;a18e
	dec h			;a190
	ccf			;a191
	ld c,c			;a192
	ld (hl),025h		;a193
	xor h			;a195
	add a,d			;a196
	ld b,a			;a197
	ld a,(0493dh)		;a198
	ld (hl),03ah		;a19b
la19dh:
	xor (hl)		;a19d
	ld l,03ah		;a19e
	ld hl,0151ah		;a1a0
	djnz la1b1h		;a1a3
	jr nz,la1c5h		;a1a5
	ld a,(de)		;a1a7
	add hl,de		;a1a8
	ld a,(de)		;a1a9
	dec d			;a1aa
	ld de,00218h		;a1ab
	ld (bc),a		;a1ae
	ld (bc),a		;a1af
	ld (bc),a		;a1b0
la1b1h:
	ld (bc),a		;a1b1
	ld a,(de)		;a1b2
	ld (bc),a		;a1b3
	dec d			;a1b4
	dec d			;a1b5
	jr nz,la1d6h		;a1b6
	ld (bc),a		;a1b8
	ld (bc),a		;a1b9
	ld a,(de)		;a1ba
	dec d			;a1bb
	ld (bc),a		;a1bc
	ld (bc),a		;a1bd
	ld (bc),a		;a1be
	ld (bc),a		;a1bf
	nop			;a1c0
	nop			;a1c1
	nop			;a1c2
	nop			;a1c3
	and a			;a1c4
la1c5h:
	add a,c			;a1c5
	inc a			;a1c6
	add a,c			;a1c7
	jr z,la1f9h		;a1c8
	ld b,b			;a1ca
	cpl			;a1cb
	ld e,e			;a1cc
	adc a,c			;a1cd
	ld l,b			;a1ce
	or h			;a1cf
	nop			;a1d0
	nop			;a1d1
	nop			;a1d2
	nop			;a1d3
	inc a			;a1d4
	add a,c			;a1d5
la1d6h:
	inc a			;a1d6
	add a,c			;a1d7
	ld b,b			;a1d8
	cpl			;a1d9
	ld b,b			;a1da
	cpl			;a1db
	ld h,d			;a1dc
	or d			;a1dd
	add a,(hl)		;a1de
	or d			;a1df
	ld a,e			;a1e0
	ld a,l			;a1e1
	ld h,a			;a1e2
	adc a,d			;a1e3
	ld e,e			;a1e4
la1e5h:
	adc a,c			;a1e5
	ld h,(hl)		;a1e6
	ld l,(hl)		;a1e7
	adc a,b			;a1e8
	adc a,e			;a1e9
	ld e,c			;a1ea
	ld d,l			;a1eb
	add a,l			;a1ec
	sbc a,b			;a1ed
	ld (hl),c		;a1ee
	ld l,a			;a1ef
	ld d,e			;a1f0
	adc a,h			;a1f1
	ld e,l			;a1f2
	ld e,(hl)		;a1f3
	ld d,a			;a1f4
	ld d,(hl)		;a1f5
	ld e,h			;a1f6
	ld e,a			;a1f7
	ld e,b			;a1f8
la1f9h:
	ld d,h			;a1f9
	ld e,d			;a1fa
	ld (hl),b		;a1fb
	ld h,l			;a1fc
	ld c,l			;a1fd
	ld (hl),a		;a1fe
	and h			;a1ff
	ld h,02eh		;a200
	xor l			;a202
	ld l,027h		;a203
	dec sp			;a205
	adc a,l			;a206
	ld a,078h		;a207
	ld a,c			;a209
	jr nc,$-112		;a20a
	ld h,009h		;a20c
	add hl,bc		;a20e
	ex af,af'		;a20f
la210h:
	ld h,e			;a210
	xor l			;a211
	ld l,03ah		;a212
	ld b,c			;a214
	or l			;a215
	dec sp			;a216
	xor a			;a217
	ld b,d			;a218
	sub b			;a219
	ld a,(hl)		;a21a
	ld b,a			;a21b
	add hl,bc		;a21c
	add hl,bc		;a21d
	ld a,(bc)		;a21e
	ld b,00ch		;a21f
	ex af,af'		;a221
	add hl,bc		;a222
	dec b			;a223
	ld hl,0151ah		;a224
	djnz la235h		;a227
	jr nz,$+32		;a229
	dec c			;a22b
	dec d			;a22c
	ld a,(de)		;a22d
	dec d			;a22e
	ld de,00101h		;a22f
	ld a,(bc)		;a232
	ld b,016h		;a233
la235h:
	ld d,00dh		;a235
	ld (bc),a		;a237
	ld a,(de)		;a238
	dec d			;a239
	jr nz,la25ah		;a23a
	ld (bc),a		;a23c
	ld (bc),a		;a23d
	dec c			;a23e
	dec d			;a23f
	nop			;a240
	nop			;a241
	nop			;a242
	nop			;a243
	and a			;a244
	add a,c			;a245
	inc a			;a246
	add a,c			;a247
	jr z,la279h		;a248
	ld b,b			;a24a
	cpl			;a24b
	ld a,h			;a24c
	or d			;a24d
	or e			;a24e
	or h			;a24f
	nop			;a250
	nop			;a251
	nop			;a252
	nop			;a253
la254h:
	inc a			;a254
	add a,c			;a255
	inc a			;a256
	add a,c			;a257
	ld b,b			;a258
	cpl			;a259
la25ah:
	ld b,b			;a25a
	cpl			;a25b
	or e			;a25c
	or h			;a25d
	or e			;a25e
	or d			;a25f
	ld a,c			;a260
	jr nc,la2ddh		;a261
	xor (hl)		;a263
	ld a,h			;a264
	or c			;a265
	ld sp,0793dh		;a266
	jr nc,la210h		;a269
	sub c			;a26b
	ld a,h			;a26c
	or c			;a26d
	ld sp,093b2h		;a26e
	xor h			;a271
	add a,d			;a272
	ld b,a			;a273
	dec h			;a274
	dec a			;a275
	ld c,c			;a276
	ld (hl),025h		;a277
la279h:
	xor h			;a279
	add a,d			;a27a
	ld b,a			;a27b
	ld a,(0493dh)		;a27c
	ld (hl),084h		;a27f
	xor l			;a281
	ld l,03ah		;a282
	ld a,h			;a284
	adc a,l			;a285
	dec sp			;a286
	ld a,084h		;a287
	dec a			;a289
	dec h			;a28a
	adc a,(hl)		;a28b
	ld a,c			;a28c
	jr nc,$+124		;a28d
	ex af,af'		;a28f
	ld a,(02eaeh)		;a290
	ld a,(lb541h)		;a293
	dec sp			;a296
	sub c			;a297
	ld b,d			;a298
	sub b			;a299
	dec h			;a29a
	ld a,(00909h)		;a29b
	ld a,(hl)		;a29e
	ld b,a			;a29f
	ld a,c			;a2a0
	jr nc,la31dh		;a2a1
	xor l			;a2a3
	or c			;a2a4
	ld sp,la09ch		;a2a5
	or c			;a2a8
	ld sp,la19dh		;a2a9
	ld a,c			;a2ac
	jr nc,la254h		;a2ad
	ccf			;a2af
	ld l,03ah		;a2b0
	add a,d			;a2b2
	ld b,a			;a2b3
	and d			;a2b4
	sbc a,(hl)		;a2b5
	ld c,c			;a2b6
	ld (hl),0a3h		;a2b7
	sbc a,a			;a2b9
	add a,d			;a2ba
	ld b,a			;a2bb
	dec h			;a2bc
	ld a,(03649h)		;a2bd
	nop			;a2c0
	nop			;a2c1
	nop			;a2c2
	nop			;a2c3
	nop			;a2c4
	nop			;a2c5
	ld c,e			;a2c6
	ld (00000h),a		;a2c7
	ld h,c			;a2ca
	ld c,(hl)		;a2cb
	nop			;a2cc
	nop			;a2cd
	ld l,l			;a2ce
	ld d,c			;a2cf
	nop			;a2d0
	nop			;a2d1
	nop			;a2d2
	nop			;a2d3
	nop			;a2d4
	nop			;a2d5
	nop			;a2d6
	nop			;a2d7
	ld c,a			;a2d8
	nop			;a2d9
	nop			;a2da
	nop			;a2db
	ld (hl),l		;a2dc
la2ddh:
	nop			;a2dd
	nop			;a2de
	nop			;a2df
	add a,c			;a2e0
	xor c			;a2e1
	ld h,h			;a2e2
	ld d,b			;a2e3
	cpl			;a2e4
	or (hl)			;a2e5
	ld d,d			;a2e6
	sub (hl)		;a2e7
	or d			;a2e8
	xor d			;a2e9
	or a			;a2ea
	cp b			;a2eb
	or b			;a2ec
	sub d			;a2ed
	ld (hl),h		;a2ee
	sub a			;a2ef
	halt			;a2f0
	ld a,h			;a2f1
	ld b,l			;a2f2
	add hl,hl		;a2f3
	sbc a,c			;a2f4
	add a,h			;a2f5
	ld (la846h),hl		;a2f6
	ld a,h			;a2f9
	inc l			;a2fa
	inc h			;a2fb
	sbc a,e			;a2fc
	ld a,c			;a2fd
	ld hl,(0b22bh)		;a2fe
	xor c			;a301
	ld d,d			;a302
	add a,e			;a303
	or b			;a304
	or (hl)			;a305
	or a			;a306
	cp b			;a307
	ld l,0aah		;a308
	cp c			;a30a
	sub a			;a30b
	dec sp			;a30c
	sub d			;a30d
	cp d			;a30e
	ld e,099h		;a30f
	jr nz,la334h		;a311
	ld b,(hl)		;a313
	xor b			;a314
	ld a,c			;a315
	inc sp			;a316
	inc hl			;a317
	sbc a,e			;a318
	ld a,h			;a319
	inc sp			;a31a
	inc hl			;a31b
	ld c,d			;a31c
la31dh:
	add a,h			;a31d
	ld b,e			;a31e
	inc (hl)		;a31f
	add hl,bc		;a320
	xor c			;a321
	sub h			;a322
	sub l			;a323
	ld bc,lb737h		;a324
	cp b			;a327
	add hl,bc		;a328
	add hl,sp		;a329
	cp c			;a32a
	sub a			;a32b
	ld bc,lba38h		;a32c
	ld e,0abh		;a32f
	ld a,h			;a331
	ld b,e			;a332
	inc (hl)		;a333
la334h:
	xor b			;a334
	add a,h			;a335
	ld b,h			;a336
	dec (hl)		;a337
	sbc a,e			;a338
	ld a,c			;a339
	ld b,h			;a33a
	dec (hl)		;a33b
	ld c,d			;a33c
	inc c			;a33d
	inc b			;a33e
	inc bc			;a33f
	ld (bc),a		;a340
	inc hl			;a341
	inc l			;a342
	dec hl			;a343
	jr nz,la36ah		;a344
	dec l			;a346
	daa			;a347
	dec c			;a348
	inc d			;a349
	ld h,029h		;a34a
	dec c			;a34c
	inc de			;a34d
	jr z,la37ah		;a34e
	ld (00421h),hl		;a350
	inc bc			;a353
	dec h			;a354
	inc c			;a355
	ld (bc),a		;a356
	ld (bc),a		;a357
	ld (de),a		;a358
	add hl,de		;a359
	ld (bc),a		;a35a
	ld (bc),a		;a35b
	ld (bc),a		;a35c
	jr la361h		;a35d
	ld (bc),a		;a35f
la360h:
	nop			;a360
la361h:
	nop			;a361
	nop			;a362
	nop			;a363
	nop			;a364
	nop			;a365
	nop			;a366
	ld c,e			;a367
	nop			;a368
	nop			;a369
la36ah:
	nop			;a36a
	ld h,c			;a36b
	nop			;a36c
	nop			;a36d
	nop			;a36e
	ld l,l			;a36f
la370h:
	nop			;a370
	nop			;a371
	nop			;a372
	nop			;a373
	ld (00000h),a		;a374
	nop			;a377
	ld c,(hl)		;a378
	ld c,a			;a379
la37ah:
	nop			;a37a
	nop			;a37b
	ld d,c			;a37c
	ld (hl),l		;a37d
	nop			;a37e
	nop			;a37f
	rra			;a380
	ld (hl),e		;a381
	xor c			;a382
	ld h,h			;a383
	dec d			;a384
	ld d,0b6h		;a385
	ld d,d			;a387
	rla			;a388
	inc e			;a389
la38ah:
	xor d			;a38a
	or a			;a38b
	jr la3a7h		;a38c
	sub d			;a38e
	ld (hl),h		;a38f
	ld d,b			;a390
	halt			;a391
	ld a,h			;a392
	inc a			;a393
	sub (hl)		;a394
	sbc a,c			;a395
	add a,h			;a396
	ld b,b			;a397
	cp b			;a398
	xor b			;a399
	ld a,h			;a39a
	or b			;a39b
	sub a			;a39c
	sbc a,e			;a39d
	ld a,c			;a39e
	jr nc,la3b5h		;a39f
	ld de,052a9h		;a3a1
	inc de			;a3a4
	dec de			;a3a5
	or (hl)			;a3a6
la3a7h:
	or a			;a3a7
	inc de			;a3a8
	dec de			;a3a9
	xor d			;a3aa
	cp c			;a3ab
	ld (de),a		;a3ac
	dec e			;a3ad
	sub d			;a3ae
	cp d			;a3af
	sub l			;a3b0
	xor e			;a3b1
	ld a,h			;a3b2
	adc a,l			;a3b3
	cp b			;a3b4
la3b5h:
	xor b			;a3b5
	add a,h			;a3b6
	dec a			;a3b7
	sub a			;a3b8
	sbc a,e			;a3b9
	ld a,c			;a3ba
	jr nc,la3dbh		;a3bb
	ld c,d			;a3bd
	inc c			;a3be
	ex af,af'		;a3bf
	ld (de),a		;a3c0
	dec e			;a3c1
	xor c			;a3c2
	sub h			;a3c3
	djnz la3e0h		;a3c4
	scf			;a3c6
	or a			;a3c7
	add a,b			;a3c8
	ld a,a			;a3c9
	add hl,sp		;a3ca
	cp c			;a3cb
	rlca			;a3cc
	dec bc			;a3cd
	jr c,la38ah		;a3ce
	sub (hl)		;a3d0
	sbc a,c			;a3d1
	ld a,h			;a3d2
	or c			;a3d3
	cp b			;a3d4
	xor b			;a3d5
	ld a,c			;a3d6
	jr nc,la370h		;a3d7
	sbc a,e			;a3d9
	ld a,h			;a3da
la3dbh:
	or c			;a3db
	ld e,04ah		;a3dc
	add a,h			;a3de
	xor l			;a3df
la3e0h:
	nop			;a3e0
	nop			;a3e1
	ld a,b			;a3e2
	ret nz			;a3e3
	nop			;a3e4
	ld sp,0707eh		;a3e5
	nop			;a3e8
	nop			;a3e9
	ld a,d			;a3ea
	ld a,e			;a3eb
	nop			;a3ec
	nop			;a3ed
	nop			;a3ee
	nop			;a3ef
	ld b,l			;a3f0
	ld c,e			;a3f1
	ld b,a			;a3f2
	ld c,e			;a3f3
	halt			;a3f4
	ld (hl),a		;a3f5
	ld h,e			;a3f6
	ld h,e			;a3f7
	or h			;a3f8
	ld l,b			;a3f9
	ld (hl),d		;a3fa
	add a,e			;a3fb
	or d			;a3fc
	ld d,e			;a3fd
	ld d,c			;a3fe
	ld c,a			;a3ff
	ld b,a			;a400
	ld c,e			;a401
	ld b,a			;a402
	ld c,c			;a403
	ld e,d			;a404
	ld h,c			;a405
	ld (hl),c		;a406
	ld e,d			;a407
	add a,h			;a408
	add a,(hl)		;a409
	add a,l			;a40a
	add a,h			;a40b
	ld d,b			;a40c
	ld d,d			;a40d
	ld c,l			;a40e
	ld c,a			;a40f
	ld c,d			;a410
	ld c,c			;a411
	ld b,a			;a412
	ld b,(hl)		;a413
	ld h,c			;a414
	ld (hl),c		;a415
	ld e,d			;a416
	ld h,d			;a417
	add a,(hl)		;a418
	add a,l			;a419
	add a,h			;a41a
	add a,(hl)		;a41b
	ld d,b			;a41c
	ld d,d			;a41d
	ld c,l			;a41e
	ld c,a			;a41f
	ld b,a			;a420
	ld c,e			;a421
	ld b,a			;a422
	ld b,(hl)		;a423
	halt			;a424
	ld (hl),a		;a425
	ld h,e			;a426
	ld h,e			;a427
	or h			;a428
	ld l,b			;a429
	ld (hl),d		;a42a
	add a,e			;a42b
	or d			;a42c
	ld d,e			;a42d
	ld d,c			;a42e
	ld c,a			;a42f
	ld c,b			;a430
	ld c,e			;a431
	ld b,a			;a432
	ld c,c			;a433
	ld e,d			;a434
	ld h,c			;a435
	ld (hl),c		;a436
	ld e,d			;a437
	add a,h			;a438
	add a,(hl)		;a439
	add a,l			;a43a
	add a,h			;a43b
	ld d,b			;a43c
	ld d,d			;a43d
	ld c,l			;a43e
	ld c,a			;a43f
	ld c,b			;a440
	ld c,e			;a441
	ld b,a			;a442
	ld c,e			;a443
	ld h,e			;a444
	ld h,e			;a445
	ld a,b			;a446
	ld a,c			;a447
	add a,d			;a448
	ld e,e			;a449
	ld a,l			;a44a
	or l			;a44b
	ld d,b			;a44c
	ld l,e			;a44d
	ld l,d			;a44e
	or e			;a44f
	nop			;a450
	sbc a,c			;a451
	sbc a,h			;a452
	adc a,(hl)		;a453
	cp l			;a454
	cp (hl)			;a455
	and l			;a456
	sub c			;a457
	call nz,sub_bfc3h	;a458
	push bc			;a45b
	nop			;a45c
	nop			;a45d
	nop			;a45e
	nop			;a45f
	sub d			;a460
	sub h			;a461
	sub b			;a462
	adc a,(hl)		;a463
	sub a			;a464
	jp nz,091a5h		;a465
	call nz,0c1c0h		;a468
	push bc			;a46b
	nop			;a46c
	nop			;a46d
	nop			;a46e
	nop			;a46f
	sub d			;a470
	sub h			;a471
	sub b			;a472
	adc a,(hl)		;a473
	sbc a,b			;a474
	cp (hl)			;a475
	and l			;a476
	sub c			;a477
	call nz,sub_bfc3h	;a478
	push bc			;a47b
	nop			;a47c
	nop			;a47d
	nop			;a47e
	nop			;a47f
	sub d			;a480
	sbc a,l			;a481
	sbc a,e			;a482
	nop			;a483
	sub a			;a484
	jp nz,lbabbh		;a485
	call nz,0c1c0h		;a488
	push bc			;a48b
	nop			;a48c
	nop			;a48d
	nop			;a48e
	nop			;a48f
	ld b,a			;a490
	ld c,e			;a491
	ld b,a			;a492
	ld c,e			;a493
	halt			;a494
	ld (hl),a		;a495
	ld h,e			;a496
	ld h,e			;a497
	or h			;a498
	ld l,b			;a499
	ld (hl),d		;a49a
	add a,e			;a49b
	or d			;a49c
	ld d,e			;a49d
	ld d,c			;a49e
	ld c,a			;a49f
	ld b,a			;a4a0
	ld c,e			;a4a1
	ld b,a			;a4a2
	ld c,e			;a4a3
	ld (hl),h		;a4a4
	ld l,a			;a4a5
	add a,c			;a4a6
	add a,b			;a4a7
	ld e,l			;a4a8
	ld e,(hl)		;a4a9
	ld d,l			;a4aa
	ld d,a			;a4ab
	ld e,a			;a4ac
	ld h,b			;a4ad
	ld d,(hl)		;a4ae
	ld e,b			;a4af
	ld b,a			;a4b0
	ld c,e			;a4b1
	ld b,a			;a4b2
	ld c,e			;a4b3
	add a,c			;a4b4
	add a,b			;a4b5
	ld (hl),h		;a4b6
	ld l,a			;a4b7
	ld d,l			;a4b8
	ld d,a			;a4b9
	ld e,l			;a4ba
	ld e,(hl)		;a4bb
	ld d,(hl)		;a4bc
	ld e,b			;a4bd
	ld e,a			;a4be
	ld h,b			;a4bf
	nop			;a4c0
	nop			;a4c1
	nop			;a4c2
	nop			;a4c3
	add a,c			;a4c4
	add a,b			;a4c5
	ld (hl),h		;a4c6
	ld l,a			;a4c7
	ld d,l			;a4c8
	ld d,a			;a4c9
	ld e,l			;a4ca
	ld e,(hl)		;a4cb
	ld d,(hl)		;a4cc
	ld e,b			;a4cd
	ld e,a			;a4ce
	ld h,b			;a4cf
	ld b,a			;a4d0
	ld c,e			;a4d1
	ld b,a			;a4d2
	ld c,h			;a4d3
	add a,c			;a4d4
	add a,b			;a4d5
	add a,c			;a4d6
	add a,b			;a4d7
	ld d,l			;a4d8
	ld d,a			;a4d9
	ld d,l			;a4da
	ld d,a			;a4db
	ld d,(hl)		;a4dc
	ld e,b			;a4dd
	ld d,(hl)		;a4de
	ld e,b			;a4df
	nop			;a4e0
	nop			;a4e1
	nop			;a4e2
	nop			;a4e3
	ld a,h			;a4e4
	ld a,h			;a4e5
	adc a,c			;a4e6
	ld a,h			;a4e7
	ld d,h			;a4e8
	ld e,c			;a4e9
	ld d,h			;a4ea
	ld e,c			;a4eb
	ld a,a			;a4ec
	ld a,a			;a4ed
	add a,a			;a4ee
	ld a,a			;a4ef
	nop			;a4f0
	nop			;a4f1
	nop			;a4f2
	nop			;a4f3
	ld (hl),h		;a4f4
	ld l,a			;a4f5
	ld (hl),h		;a4f6
	ld l,a			;a4f7
	ld e,l			;a4f8
	ld e,(hl)		;a4f9
	ld e,l			;a4fa
	ld e,(hl)		;a4fb
	ld e,a			;a4fc
	ld h,b			;a4fd
	ld e,a			;a4fe
	ld h,b			;a4ff
	ld b,a			;a500
	ld e,a			;a501
	ld (hl),b		;a502
	ld (hl),b		;a503
	add a,c			;a504
	ld h,h			;a505
	ld (hl),l		;a506
	ld (hl),l		;a507
	ld d,l			;a508
	ld h,l			;a509
	adc a,b			;a50a
	adc a,b			;a50b
	ld d,(hl)		;a50c
	ld e,b			;a50d
	ld e,a			;a50e
	ld h,b			;a50f
	ld (hl),b		;a510
	ld (hl),b		;a511
	push bc			;a512
	ld c,e			;a513
	ld (hl),l		;a514
	ld (hl),l		;a515
	ld h,a			;a516
	add a,b			;a517
	adc a,b			;a518
	adc a,b			;a519
	ld h,(hl)		;a51a
	ld d,a			;a51b
	ld e,a			;a51c
	ld h,b			;a51d
	ld d,(hl)		;a51e
	ld e,b			;a51f
	nop			;a520
	nop			;a521
	nop			;a522
	nop			;a523
	ld (hl),h		;a524
	ld l,a			;a525
	add a,c			;a526
	add a,b			;a527
	ld e,l			;a528
	ld e,(hl)		;a529
	ld d,l			;a52a
	ld d,a			;a52b
	ld e,a			;a52c
	ld h,b			;a52d
	ld d,(hl)		;a52e
	ld e,b			;a52f
	ld b,l			;a530
	ld c,e			;a531
	ld b,a			;a532
	ld c,e			;a533
	ld (hl),h		;a534
	ld l,a			;a535
	add a,c			;a536
	add a,b			;a537
	ld e,l			;a538
	ld e,(hl)		;a539
	ld d,l			;a53a
	ld d,a			;a53b
	ld e,a			;a53c
	ld h,b			;a53d
	ld d,(hl)		;a53e
	ld e,b			;a53f
	ld b,a			;a540
	ld c,e			;a541
	ld b,a			;a542
	ld c,h			;a543
	add a,c			;a544
	add a,b			;a545
	ld (hl),h		;a546
	ld l,a			;a547
	ld d,l			;a548
	ld d,a			;a549
	ld e,l			;a54a
	ld e,(hl)		;a54b
	ld d,(hl)		;a54c
	ld e,b			;a54d
	ld e,a			;a54e
	ld h,b			;a54f
	nop			;a550
	ld d,e			;a551
	ld e,(hl)		;a552
	ld l,l			;a553
	ld e,l			;a554
	ld l,c			;a555
	ld e,d			;a556
	ld c,a			;a557
	ld a,c			;a558
	ld l,c			;a559
	ld e,d			;a55a
	ld c,a			;a55b
	ld c,(hl)		;a55c
	ld d,l			;a55d
	ld c,(hl)		;a55e
	ld d,l			;a55f
	ld h,h			;a560
	nop			;a561
	nop			;a562
	nop			;a563
	ld h,a			;a564
	ld l,a			;a565
	ld e,l			;a566
	ld l,a			;a567
	ld h,a			;a568
	ld d,a			;a569
	ld a,c			;a56a
	ld d,a			;a56b
	ld c,(hl)		;a56c
	ld d,l			;a56d
	ld c,(hl)		;a56e
	add a,d			;a56f
	nop			;a570
	nop			;a571
	nop			;a572
	nop			;a573
	nop			;a574
	nop			;a575
	nop			;a576
	nop			;a577
	nop			;a578
	nop			;a579
	nop			;a57a
	nop			;a57b
	ld d,e			;a57c
	ld e,(hl)		;a57d
	ld l,l			;a57e
	ld h,h			;a57f
	nop			;a580
	nop			;a581
	nop			;a582
	nop			;a583
	nop			;a584
	nop			;a585
	nop			;a586
	nop			;a587
	nop			;a588
	nop			;a589
	nop			;a58a
	nop			;a58b
	cp d			;a58c
	nop			;a58d
	nop			;a58e
	nop			;a58f
	dec (hl)		;a590
	ld e,e			;a591
	ld (hl),h		;a592
	add a,c			;a593
	ld (hl),0c1h		;a594
	ld a,h			;a596
	ld a,l			;a597
	ld (03c44h),a		;a598
	dec a			;a59b
	nop			;a59c
	cp e			;a59d
	ld a,03bh		;a59e
	jr c,la5e3h		;a5a0
	ld b,b			;a5a2
	add hl,sp		;a5a3
	inc sp			;a5a4
	scf			;a5a5
	ccf			;a5a6
	ld b,d			;a5a7
	inc (hl)		;a5a8
	dec a			;a5a9
	ld a,(05443h)		;a5aa
	ld d,l			;a5ad
	ld c,(hl)		;a5ae
	ld d,l			;a5af
	ld l,c			;a5b0
	ld e,d			;a5b1
	ld c,a			;a5b2
	ld h,a			;a5b3
	ld l,c			;a5b4
	ld e,d			;a5b5
	ld c,a			;a5b6
	ld h,a			;a5b7
	ld l,c			;a5b8
	ld e,d			;a5b9
	ld c,a			;a5ba
	ld h,a			;a5bb
	ld l,e			;a5bc
	ld d,l			;a5bd
	ld c,(hl)		;a5be
	ld d,l			;a5bf
	nop			;a5c0
	nop			;a5c1
	nop			;a5c2
	nop			;a5c3
	nop			;a5c4
	nop			;a5c5
	nop			;a5c6
	nop			;a5c7
	cp h			;a5c8
	jp nz,06f5dh		;a5c9
	ld c,(hl)		;a5cc
	ld d,l			;a5cd
	ld c,(hl)		;a5ce
	add a,d			;a5cf
	nop			;a5d0
	nop			;a5d1
	nop			;a5d2
	nop			;a5d3
	cp h			;a5d4
	jp nz,06f5dh		;a5d5
	halt			;a5d8
	ld e,b			;a5d9
	ld a,c			;a5da
	ld d,a			;a5db
	ld l,e			;a5dc
	ld d,l			;a5dd
	ld c,(hl)		;a5de
	ld d,l			;a5df
	nop			;a5e0
	nop			;a5e1
	nop			;a5e2
la5e3h:
	nop			;a5e3
	ld e,l			;a5e4
	ld l,a			;a5e5
	ld e,l			;a5e6
	ld l,a			;a5e7
	ld a,c			;a5e8
	ld d,a			;a5e9
	ld a,c			;a5ea
	ld d,a			;a5eb
	ld c,(hl)		;a5ec
	ld d,l			;a5ed
	ld c,(hl)		;a5ee
	ld d,l			;a5ef
	nop			;a5f0
	nop			;a5f1
	nop			;a5f2
	cp h			;a5f3
	ld e,l			;a5f4
	ld l,a			;a5f5
	ld e,l			;a5f6
	ld l,a			;a5f7
	ld a,c			;a5f8
	ld d,a			;a5f9
	ld a,c			;a5fa
	ld d,a			;a5fb
	ld c,(hl)		;a5fc
	ld d,l			;a5fd
	ld c,(hl)		;a5fe
	ld d,l			;a5ff
	nop			;a600
	nop			;a601
	nop			;a602
	nop			;a603
	cp h			;a604
	jp nz,06f5dh		;a605
	halt			;a608
	ld e,b			;a609
	ld a,c			;a60a
	ld d,a			;a60b
	ld c,(hl)		;a60c
	ld d,l			;a60d
	ld c,(hl)		;a60e
	ld d,l			;a60f
	nop			;a610
	nop			;a611
	nop			;a612
	nop			;a613
	jp 000bdh		;a614
	nop			;a617
	ld l,(hl)		;a618
	ld d,(hl)		;a619
	jp 04e00h		;a61a
	ld d,l			;a61d
	ld c,(hl)		;a61e
	ld c,l			;a61f
	nop			;a620
	nop			;a621
	nop			;a622
	nop			;a623
	nop			;a624
	nop			;a625
	nop			;a626
	nop			;a627
	nop			;a628
	nop			;a629
	nop			;a62a
	nop			;a62b
	ld c,(hl)		;a62c
	ld d,l			;a62d
	ld c,(hl)		;a62e
	ld c,l			;a62f
	nop			;a630
	nop			;a631
	nop			;a632
	nop			;a633
	nop			;a634
	nop			;a635
	nop			;a636
	nop			;a637
	nop			;a638
	nop			;a639
	nop			;a63a
	ld d,e			;a63b
	nop			;a63c
	nop			;a63d
	nop			;a63e
	ld l,c			;a63f
	nop			;a640
	nop			;a641
	nop			;a642
	nop			;a643
	nop			;a644
	nop			;a645
	nop			;a646
	nop			;a647
	ld e,(hl)		;a648
	ld l,l			;a649
	ld h,h			;a64a
	nop			;a64b
	ld e,d			;a64c
	ld c,a			;a64d
	ld h,a			;a64e
	nop			;a64f
	ld a,(03a3ah)		;a650
	ld a,(03a3ah)		;a653
	ld a,(03a3ah)		;a656
	ld a,(03a3ah)		;a659
	ld a,(0353bh)		;a65c
	add a,e			;a65f
	ld h,h			;a660
	nop			;a661
	nop			;a662
	nop			;a663
	ld h,a			;a664
	jp 000bdh		;a665
	ld h,a			;a668
	ld l,(hl)		;a669
	ld d,(hl)		;a66a
	jp 0554eh		;a66b
	ld c,(hl)		;a66e
	add a,d			;a66f
	nop			;a670
	nop			;a671
	nop			;a672
	ld l,c			;a673
	ld e,l			;a674
	ld l,a			;a675
	ld e,l			;a676
	ld l,a			;a677
	ld a,c			;a678
	ld d,a			;a679
	ld a,c			;a67a
	ld d,a			;a67b
	ld c,(hl)		;a67c
	ld d,l			;a67d
	ld c,(hl)		;a67e
	add a,d			;a67f
	ld (03c44h),a		;a680
	dec a			;a683
	nop			;a684
	cp e			;a685
	ld a,03bh		;a686
	nop			;a688
	nop			;a689
	ld a,b			;a68a
	ret nz			;a68b
	nop			;a68c
	ld sp,06c7ah		;a68d
	inc (hl)		;a690
	dec a			;a691
	ld a,(03b43h)		;a692
	ld e,c			;a695
	ld e,c			;a696
	nop			;a697
	ret nz			;a698
	ccf			;a699
	ld b,d			;a69a
	jp 03a6ch		;a69b
	ld b,e			;a69e
	ld l,(hl)		;a69f
	nop			;a6a0
	nop			;a6a1
	nop			;a6a2
	nop			;a6a3
	nop			;a6a4
	nop			;a6a5
	nop			;a6a6
	nop			;a6a7
	cp l			;a6a8
	nop			;a6a9
	nop			;a6aa
	nop			;a6ab
	ld d,(hl)		;a6ac
	jp 00000h		;a6ad
	ld e,d			;a6b0
	ld a,e			;a6b1
	cp a			;a6b2
	ld (hl),e		;a6b3
	ld e,l			;a6b4
	add a,h			;a6b5
	cp (hl)			;a6b6
	ld e,e			;a6b7
	ld h,l			;a6b8
	ld d,c			;a6b9
	ld e,h			;a6ba
	pop bc			;a6bb
	ld l,e			;a6bc
	ld d,l			;a6bd
	ld c,(hl)		;a6be
	ld d,l			;a6bf
	ld l,d			;a6c0
	ld l,d			;a6c1
	ld l,d			;a6c2
	ld a,a			;a6c3
	ld (hl),b		;a6c4
	ld (hl),b		;a6c5
	ld (hl),b		;a6c6
	push bc			;a6c7
	ld (hl),c		;a6c8
	ld (hl),c		;a6c9
	ld (hl),c		;a6ca
	ld h,e			;a6cb
	ld (hl),d		;a6cc
	ld (hl),d		;a6cd
	ld (hl),d		;a6ce
	ld h,d			;a6cf
	add a,b			;a6d0
	call nz,0c37eh		;a6d1
	add a,e			;a6d4
	add a,l			;a6d5
	ld d,b			;a6d6
	ld l,a			;a6d7
	add a,e			;a6d8
	ld (hl),l		;a6d9
	ld d,d			;a6da
	ld h,(hl)		;a6db
	ld c,(hl)		;a6dc
	ld d,l			;a6dd
	ld c,(hl)		;a6de
	ld d,l			;a6df
	jp nz,lbf7bh		;a6e0
	ld (hl),e		;a6e3
	ld e,l			;a6e4
	add a,h			;a6e5
	cp (hl)			;a6e6
	ld e,e			;a6e7
	ld h,l			;a6e8
	ld d,c			;a6e9
	ld e,h			;a6ea
	pop bc			;a6eb
	ld c,(hl)		;a6ec
	ld d,l			;a6ed
	ld c,(hl)		;a6ee
	ld d,l			;a6ef
	ld (hl),a		;a6f0
	ld (hl),a		;a6f1
	ld l,d			;a6f2
	ld l,d			;a6f3
	ld (hl),h		;a6f4
	add a,c			;a6f5
	ld e,a			;a6f6
	ld (hl),b		;a6f7
	ld a,h			;a6f8
	ld a,l			;a6f9
	ld h,b			;a6fa
	ld (hl),c		;a6fb
	ld c,(hl)		;a6fc
	ld d,l			;a6fd
	ld h,c			;a6fe
	ld (hl),d		;a6ff
	nop			;a700
	nop			;a701
	nop			;a702
	nop			;a703
	nop			;a704
	nop			;a705
	nop			;a706
	nop			;a707
	nop			;a708
	nop			;a709
	nop			;a70a
	nop			;a70b
	ld d,h			;a70c
	ld d,l			;a70d
	ld c,(hl)		;a70e
	ld d,l			;a70f
	nop			;a710
	nop			;a711
	nop			;a712
	nop			;a713
	nop			;a714
	nop			;a715
	nop			;a716
	nop			;a717
	nop			;a718
	nop			;a719
	nop			;a71a
	nop			;a71b
	ld l,e			;a71c
	ld d,l			;a71d
	ld c,(hl)		;a71e
	ld d,l			;a71f
	nop			;a720
	nop			;a721
	ld (00039h),a		;a722
	nop			;a725
	inc sp			;a726
	ld a,000h		;a727
	ld (03c39h),a		;a729
	nop			;a72c
	inc sp			;a72d
	ld a,03dh		;a72e
	inc a			;a730
	scf			;a731
	jr c,la76eh		;a732
	dec a			;a734
	inc (hl)		;a735
	ld (hl),03ah		;a736
	scf			;a738
	jr c,la775h		;a739
	ld a,(03634h)		;a73b
	dec sp			;a73e
	dec (hl)		;a73f
	inc a			;a740
	scf			;a741
	jr c,la77eh		;a742
	dec a			;a744
	inc (hl)		;a745
	ld (hl),03ah		;a746
	scf			;a748
	jr c,la785h		;a749
	ld a,(03634h)		;a74b
	dec sp			;a74e
	dec (hl)		;a74f
	ld a,(03a3ah)		;a750
	ld a,(03a3ah)		;a753
	ld a,(03a3ah)		;a756
	ld a,(03a3ah)		;a759
	add a,e			;a75c
	dec sp			;a75d
	dec (hl)		;a75e
	add a,e			;a75f
	nop			;a760
	nop			;a761
	nop			;a762
	nop			;a763
	nop			;a764
	nop			;a765
	cp e			;a766
	ld b,b			;a767
	nop			;a768
	nop			;a769
	cp h			;a76a
	ld b,d			;a76b
	nop			;a76c
	nop			;a76d
la76eh:
	nop			;a76e
	nop			;a76f
	nop			;a770
	nop			;a771
	nop			;a772
	nop			;a773
	ld b,c			;a774
la775h:
	ld b,h			;a775
	ld c,c			;a776
	ld b,l			;a777
	ld b,e			;a778
	ld c,e			;a779
	ld c,d			;a77a
	ccf			;a77b
	nop			;a77c
	cp l			;a77d
la77eh:
	ret nz			;a77e
	ld c,h			;a77f
	halt			;a780
	ld e,b			;a781
	ld a,c			;a782
	ld d,a			;a783
	ld b,a			;a784
la785h:
	ld b,a			;a785
	ld b,l			;a786
	ld b,a			;a787
	ld b,(hl)		;a788
	ld c,b			;a789
	ld b,(hl)		;a78a
	ccf			;a78b
	ld c,l			;a78c
	ld c,(hl)		;a78d
	add a,(hl)		;a78e
	add a,a			;a78f
	ld a,c			;a790
	ld d,a			;a791
	ld a,c			;a792
	ld d,a			;a793
	ld b,a			;a794
	ld b,a			;a795
	ld b,a			;a796
	ld b,a			;a797
	ccf			;a798
	ld b,(hl)		;a799
	ld c,b			;a79a
	ld b,(hl)		;a79b
	add a,a			;a79c
	add a,a			;a79d
	add a,a			;a79e
	add a,a			;a79f
	nop			;a7a0
	ld (03c39h),a		;a7a1
	nop			;a7a4
	inc sp			;a7a5
	ld a,03dh		;a7a6
	ld (03c39h),a		;a7a8
	scf			;a7ab
	inc sp			;a7ac
	ld a,03dh		;a7ad
	inc (hl)		;a7af
	scf			;a7b0
	jr c,la7edh		;a7b1
	ld a,(03634h)		;a7b3
	ld a,(0383ah)		;a7b6
	ld a,(03a3ah)		;a7b9
	ld (hl),03bh		;a7bc
	dec (hl)		;a7be
	add a,e			;a7bf
	ld a,(03a3ah)		;a7c0
	ld a,(03a3ah)		;a7c3
	ld a,(03a3ah)		;a7c6
	ld a,(03a3ah)		;a7c9
	dec sp			;a7cc
	dec (hl)		;a7cd
	add a,e			;a7ce
	ld a,(05a69h)		;a7cf
	ld c,a			;a7d2
	ld h,a			;a7d3
	ld b,a			;a7d4
	ld b,a			;a7d5
	ld b,a			;a7d6
	ld b,a			;a7d7
	ccf			;a7d8
	ld b,(hl)		;a7d9
	ld c,b			;a7da
	ld b,(hl)		;a7db
	add a,a			;a7dc
	add a,a			;a7dd
	add a,a			;a7de
	add a,a			;a7df
	ld a,c			;a7e0
	ld e,a			;a7e1
	ld (hl),b		;a7e2
	ld (hl),b		;a7e3
	ld b,a			;a7e4
	ld h,b			;a7e5
	ld (hl),c		;a7e6
	ld (hl),c		;a7e7
	ccf			;a7e8
	ld h,c			;a7e9
	ld (hl),d		;a7ea
	ld (hl),d		;a7eb
	add a,a			;a7ec
la7edh:
	add a,a			;a7ed
	add a,a			;a7ee
	add a,a			;a7ef
	ld (hl),b		;a7f0
	ld (hl),b		;a7f1
	push bc			;a7f2
	ld d,a			;a7f3
	ld (hl),c		;a7f4
	ld (hl),c		;a7f5
	ld h,e			;a7f6
	ld b,a			;a7f7
	ld (hl),d		;a7f8
	ld (hl),d		;a7f9
	ld h,d			;a7fa
	ccf			;a7fb
	add a,a			;a7fc
	add a,a			;a7fd
	add a,a			;a7fe
	add a,a			;a7ff
	ld h,l			;a800
	ld d,c			;a801
	ld e,h			;a802
	pop bc			;a803
	ld b,a			;a804
	ld b,a			;a805
	ld b,a			;a806
	ld b,a			;a807
	ccf			;a808
	ld b,(hl)		;a809
	ld c,b			;a80a
	ld b,(hl)		;a80b
	add a,a			;a80c
	add a,a			;a80d
	add a,a			;a80e
	add a,a			;a80f
	ld a,h			;a810
	ld a,l			;a811
	ld h,b			;a812
	ld (hl),c		;a813
	ld b,a			;a814
	ld b,a			;a815
	ld h,c			;a816
	ld (hl),d		;a817
	ccf			;a818
	ld b,(hl)		;a819
	ld c,b			;a81a
	ld b,(hl)		;a81b
	add a,a			;a81c
	add a,a			;a81d
	add a,a			;a81e
	add a,a			;a81f
	ld (hl),c		;a820
	ld (hl),c		;a821
	ld (hl),c		;a822
	ld h,e			;a823
	ld (hl),d		;a824
	ld (hl),d		;a825
	ld (hl),d		;a826
	ld h,d			;a827
	ccf			;a828
	ld b,(hl)		;a829
	ld c,b			;a82a
	ld b,(hl)		;a82b
	add a,a			;a82c
	add a,a			;a82d
	add a,a			;a82e
	add a,a			;a82f
	add a,e			;a830
	ld (hl),l		;a831
	ld d,d			;a832
	ld h,(hl)		;a833
	ld b,a			;a834
	ld b,a			;a835
	ld b,a			;a836
	ld b,a			;a837
	ccf			;a838
	ld b,(hl)		;a839
	ld c,b			;a83a
	ld b,(hl)		;a83b
	add a,a			;a83c
	add a,a			;a83d
	add a,a			;a83e
	add a,a			;a83f
	nop			;a840
	nop			;a841
	nop			;a842
	nop			;a843
	nop			;a844
	nop			;a845
la846h:
	nop			;a846
	nop			;a847
	nop			;a848
	nop			;a849
	nop			;a84a
	nop			;a84b
	ld sp,05dc2h		;a84c
	ld l,a			;a84f
	nop			;a850
	nop			;a851
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
	ld e,l			;a85c
	ld l,a			;a85d
	ld e,l			;a85e
	ld l,a			;a85f
	nop			;a860
	nop			;a861
	nop			;a862
	nop			;a863
	nop			;a864
	nop			;a865
	nop			;a866
	nop			;a867
	nop			;a868
	nop			;a869
	nop			;a86a
	ld sp,06f5dh		;a86b
	ld e,l			;a86e
	ld l,a			;a86f
	nop			;a870
	nop			;a871
	nop			;a872
	nop			;a873
	nop			;a874
	nop			;a875
	nop			;a876
	nop			;a877
	cp d			;a878
	nop			;a879
	nop			;a87a
	nop			;a87b
	ld e,l			;a87c
	ld l,a			;a87d
	ld e,l			;a87e
	ld l,a			;a87f
	nop			;a880
	nop			;a881
	nop			;a882
	nop			;a883
	nop			;a884
	nop			;a885
	nop			;a886
	nop			;a887
	dec (hl)		;a888
	ld e,e			;a889
	ld (hl),h		;a88a
	add a,c			;a88b
	ld (hl),0c1h		;a88c
	ld a,h			;a88e
	ld a,l			;a88f
	nop			;a890
	nop			;a891
	nop			;a892
	nop			;a893
	cp d			;a894
	nop			;a895
	nop			;a896
	nop			;a897
	jr c,la8dbh		;a898
	ld b,b			;a89a
	add hl,sp		;a89b
	inc sp			;a89c
	scf			;a89d
	ccf			;a89e
	ld b,d			;a89f
	nop			;a8a0
	nop			;a8a1
	nop			;a8a2
	nop			;a8a3
	nop			;a8a4
	nop			;a8a5
	nop			;a8a6
	nop			;a8a7
	cp (hl)			;a8a8
	nop			;a8a9
	nop			;a8aa
	nop			;a8ab
	cp a			;a8ac
	nop			;a8ad
	nop			;a8ae
	nop			;a8af
	nop			;a8b0
	nop			;a8b1
	nop			;a8b2
	nop			;a8b3
	nop			;a8b4
	nop			;a8b5
	nop			;a8b6
	cp e			;a8b7
	nop			;a8b8
	nop			;a8b9
	nop			;a8ba
	cp h			;a8bb
	nop			;a8bc
	nop			;a8bd
	nop			;a8be
	nop			;a8bf
	nop			;a8c0
	nop			;a8c1
	nop			;a8c2
	nop			;a8c3
	ld b,b			;a8c4
	ld b,c			;a8c5
	ld b,h			;a8c6
	ld c,c			;a8c7
	ld b,d			;a8c8
	ld b,e			;a8c9
	ld c,e			;a8ca
	ld c,d			;a8cb
	nop			;a8cc
	nop			;a8cd
	cp l			;a8ce
	ret nz			;a8cf
	nop			;a8d0
	nop			;a8d1
	nop			;a8d2
	ld (04745h),a		;a8d3
	ld b,a			;a8d6
	ld b,l			;a8d7
	ccf			;a8d8
	ld b,(hl)		;a8d9
	ld c,b			;a8da
la8dbh:
	ld b,(hl)		;a8db
	ld c,h			;a8dc
	ld c,l			;a8dd
	ld c,(hl)		;a8de
	add a,(hl)		;a8df
	add hl,sp		;a8e0
	inc a			;a8e1
	scf			;a8e2
	jr c,la92ch		;a8e3
	ld b,a			;a8e5
	ld b,a			;a8e6
	ld b,a			;a8e7
	ccf			;a8e8
	ccf			;a8e9
	ld b,(hl)		;a8ea
	ld c,b			;a8eb
	add a,a			;a8ec
	add a,a			;a8ed
	add a,a			;a8ee
	add a,a			;a8ef
	ld a,(03a3ah)		;a8f0
	ld a,(04747h)		;a8f3
	ld b,a			;a8f6
	ld b,a			;a8f7
	ld b,(hl)		;a8f8
	ccf			;a8f9
	ccf			;a8fa
	ccf			;a8fb
	add a,a			;a8fc
	add a,a			;a8fd
	add a,a			;a8fe
	add a,a			;a8ff
	nop			;a900
	nop			;a901
	nop			;a902
	nop			;a903
	nop			;a904
	nop			;a905
	nop			;a906
	nop			;a907
	ld d,e			;a908
	ld e,(hl)		;a909
	ld l,l			;a90a
	ld h,h			;a90b
	ld l,c			;a90c
	ld e,d			;a90d
	ld c,a			;a90e
	ld h,a			;a90f
	nop			;a910
	nop			;a911
	nop			;a912
	nop			;a913
	ld d,e			;a914
	ld e,(hl)		;a915
	ld l,l			;a916
	ld h,h			;a917
	ld l,c			;a918
	ld e,d			;a919
	ld c,a			;a91a
	ld h,a			;a91b
	ld l,c			;a91c
	ld e,d			;a91d
	ld c,a			;a91e
	ld h,a			;a91f
	nop			;a920
	nop			;a921
	nop			;a922
	nop			;a923
	nop			;a924
	nop			;a925
	nop			;a926
	nop			;a927
	cp d			;a928
	nop			;a929
	nop			;a92a
	nop			;a92b
la92ch:
	ld d,(hl)		;a92c
	jp 000bah		;a92d
	ld d,a			;a930
	ld a,c			;a931
	ld d,(hl)		;a932
	jp 04747h		;a933
	ld b,a			;a936
	call nz,03f3fh		;a937
	ld c,b			;a93a
	add a,l			;a93b
	add a,a			;a93c
	add a,a			;a93d
	ld c,b			;a93e
	ld (hl),l		;a93f
	nop			;a940
	nop			;a941
	nop			;a942
	nop			;a943
	nop			;a944
	nop			;a945
	nop			;a946
	or h			;a947
	nop			;a948
	ld h,c			;a949
	ld h,d			;a94a
	ld h,e			;a94b
	nop			;a94c
	ld (hl),l		;a94d
	halt			;a94e
	ld l,c			;a94f
	nop			;a950
	nop			;a951
	nop			;a952
	nop			;a953
	nop			;a954
	nop			;a955
	nop			;a956
	nop			;a957
	ld (hl),a		;a958
	ld a,b			;a959
	ld a,c			;a95a
	add a,e			;a95b
	ld h,a			;a95c
	ld d,e			;a95d
	add a,c			;a95e
	ld d,e			;a95f
	nop			;a960
	nop			;a961
	nop			;a962
	nop			;a963
	nop			;a964
	nop			;a965
	nop			;a966
	nop			;a967
	add a,e			;a968
	ld a,c			;a969
	add a,h			;a96a
	add a,l			;a96b
	ld d,e			;a96c
	add a,c			;a96d
	ld d,e			;a96e
	ld e,l			;a96f
	nop			;a970
	nop			;a971
	nop			;a972
	nop			;a973
	or h			;a974
	nop			;a975
	nop			;a976
	nop			;a977
	ld e,c			;a978
	ld e,b			;a979
	ld d,a			;a97a
	nop			;a97b
	ld e,a			;a97c
	ld (hl),c		;a97d
	ld (hl),b		;a97e
	nop			;a97f
	or a			;a980
	ld (hl),h		;a981
	ld (hl),e		;a982
	ld (hl),d		;a983
	nop			;a984
	cp d			;a985
	cp e			;a986
	ld h,b			;a987
	nop			;a988
	nop			;a989
	ld (00039h),a		;a98a
	nop			;a98d
	inc sp			;a98e
	ld a,068h		;a98f
	ccf			;a991
	ld b,(hl)		;a992
	ld c,b			;a993
	ld c,h			;a994
	ld c,l			;a995
	ld c,(hl)		;a996
	add a,(hl)		;a997
	inc a			;a998
	scf			;a999
	jr c,la9d6h		;a99a
	dec a			;a99c
	inc (hl)		;a99d
	ld (hl),03ah		;a99e
	ld c,b			;a9a0
	ld b,(hl)		;a9a1
	ccf			;a9a2
	ld e,(hl)		;a9a3
	ld c,a			;a9a4
	ld a,l			;a9a5
	ld c,l			;a9a6
	ld a,(hl)		;a9a7
	ld a,(05152h)		;a9a8
	ld a,a			;a9ab
	ld a,(06c6bh)		;a9ac
	ld a,d			;a9af
	ld l,l			;a9b0
	ld l,(hl)		;a9b1
	ld l,a			;a9b2
	cp b			;a9b3
	ld d,(hl)		;a9b4
	cp h			;a9b5
	cp l			;a9b6
	nop			;a9b7
	ld d,b			;a9b8
	ld sp,00000h		;a9b9
	add a,d			;a9bc
	cp c			;a9bd
	nop			;a9be
	nop			;a9bf
	nop			;a9c0
	ld (03c39h),a		;a9c1
	nop			;a9c4
	inc sp			;a9c5
	ld a,03dh		;a9c6
	jp nz,lbf7bh		;a9c8
	ld (hl),e		;a9cb
	ld e,l			;a9cc
	add a,h			;a9cd
	cp (hl)			;a9ce
	ld e,e			;a9cf
	scf			;a9d0
	jr c,laa0dh		;a9d1
	ld a,(03634h)		;a9d3
la9d6h:
	dec sp			;a9d6
	dec (hl)		;a9d7
	ld (hl),a		;a9d8
	ld (hl),a		;a9d9
	ld l,d			;a9da
	ld l,d			;a9db
	ld (hl),h		;a9dc
	add a,c			;a9dd
	ld e,a			;a9de
	ld (hl),b		;a9df
	ld a,(0523ah)		;a9e0
	ld d,c			;a9e3
	add a,e			;a9e4
	ld a,(06c6bh)		;a9e5
	ld l,d			;a9e8
	ld l,d			;a9e9
	ld l,d			;a9ea
	ld a,a			;a9eb
	ld (hl),b		;a9ec
	ld (hl),b		;a9ed
	ld (hl),b		;a9ee
	push bc			;a9ef
	ld a,a			;a9f0
	ld d,b			;a9f1
	ld sp,07a00h		;a9f2
	add a,d			;a9f5
	cp c			;a9f6
	nop			;a9f7
	add a,b			;a9f8
	call nz,0c37eh		;a9f9
	add a,e			;a9fc
	add a,l			;a9fd
	ld d,b			;a9fe
	ld l,a			;a9ff
	nop			;aa00
	nop			;aa01
	nop			;aa02
	nop			;aa03
	nop			;aa04
	nop			;aa05
	nop			;aa06
	nop			;aa07
	jp nz,lbf7bh		;aa08
	ld (hl),e		;aa0b
	ld e,l			;aa0c
laa0dh:
	add a,h			;aa0d
	cp (hl)			;aa0e
	ld e,e			;aa0f
	nop			;aa10
	nop			;aa11
	nop			;aa12
	nop			;aa13
	nop			;aa14
	nop			;aa15
	nop			;aa16
	nop			;aa17
	ld (hl),a		;aa18
	ld (hl),a		;aa19
	ld l,d			;aa1a
	ld l,d			;aa1b
	ld (hl),h		;aa1c
	add a,c			;aa1d
	ld e,a			;aa1e
	ld (hl),b		;aa1f
	nop			;aa20
	nop			;aa21
	nop			;aa22
	nop			;aa23
	nop			;aa24
	nop			;aa25
	nop			;aa26
	nop			;aa27
	ld l,d			;aa28
	ld l,d			;aa29
	ld l,d			;aa2a
	ld a,a			;aa2b
	ld (hl),b		;aa2c
	ld (hl),b		;aa2d
	ld (hl),b		;aa2e
	push bc			;aa2f
	nop			;aa30
	nop			;aa31
	nop			;aa32
	nop			;aa33
	nop			;aa34
	nop			;aa35
	nop			;aa36
	nop			;aa37
	add a,b			;aa38
	call nz,0c37eh		;aa39
	add a,e			;aa3c
	add a,l			;aa3d
	ld d,b			;aa3e
	ld l,a			;aa3f
	cp d			;aa40
	nop			;aa41
	nop			;aa42
	nop			;aa43
	ld a,(hl)		;aa44
	jp 000bah		;aa45
	ld d,b			;aa48
	ld l,a			;aa49
	ld d,(hl)		;aa4a
	jp 06652h		;aa4b
	ld d,a			;aa4e
	ld a,c			;aa4f
	nop			;aa50
	nop			;aa51
	nop			;aa52
	nop			;aa53
	cp h			;aa54
	jp nz,lbabbh		;aa55
	call nz,0c1c0h		;aa58
	push bc			;aa5b
	ld (bc),a		;aa5c
	ld (bc),a		;aa5d
	ld (bc),a		;aa5e
	ld (bc),a		;aa5f
	ld (bc),a		;aa60
	nop			;aa61
	nop			;aa62
	nop			;aa63
	cp l			;aa64
	cp (hl)			;aa65
	cp e			;aa66
	cp d			;aa67
	call nz,sub_bfc3h	;aa68
	push bc			;aa6b
	ld (bc),a		;aa6c
	ld (bc),a		;aa6d
	ld (bc),a		;aa6e
	ld (bc),a		;aa6f
	nop			;aa70
	nop			;aa71
	nop			;aa72
	nop			;aa73
	cp l			;aa74
	cp (hl)			;aa75
	cp e			;aa76
	cp d			;aa77
	call nz,sub_bfc3h	;aa78
	push bc			;aa7b
	ld (bc),a		;aa7c
	ld (bc),a		;aa7d
	ld (bc),a		;aa7e
	ld (bc),a		;aa7f
	inc (hl)		;aa80
	dec a			;aa81
	ld a,(03b43h)		;aa82
	ld e,c			;aa85
	ld e,c			;aa86
	nop			;aa87
	ret nz			;aa88
	ccf			;aa89
	ld b,d			;aa8a
	jp 03a6ch		;aa8b
	ld b,e			;aa8e
	ld l,(hl)		;aa8f
	nop			;aa90
	nop			;aa91
	nop			;aa92
	nop			;aa93
	nop			;aa94
	nop			;aa95
	nop			;aa96
	nop			;aa97
	cp l			;aa98
	nop			;aa99
	nop			;aa9a
	nop			;aa9b
	ld d,(hl)		;aa9c
	nop			;aa9d
	nop			;aa9e
	nop			;aa9f
	nop			;aaa0
	nop			;aaa1
	nop			;aaa2
	nop			;aaa3
	nop			;aaa4
	nop			;aaa5
	nop			;aaa6
	nop			;aaa7
	nop			;aaa8
	nop			;aaa9
	nop			;aaaa
	nop			;aaab
	nop			;aaac
	nop			;aaad
	ld d,h			;aaae
	ld d,l			;aaaf
	nop			;aab0
	nop			;aab1
	ld b,l			;aab2
	ld c,e			;aab3
	ld (hl),h		;aab4
	ld l,a			;aab5
	add a,c			;aab6
	add a,b			;aab7
	ld e,l			;aab8
	ld e,(hl)		;aab9
	ld d,l			;aaba
	ld d,a			;aabb
	ld e,a			;aabc
	ld h,b			;aabd
	ld d,(hl)		;aabe
	ld e,b			;aabf
	ld b,a			;aac0
	ld c,h			;aac1
	nop			;aac2
	nop			;aac3
	add a,c			;aac4
	add a,b			;aac5
	ld (hl),h		;aac6
	ld l,a			;aac7
	ld d,l			;aac8
	ld d,a			;aac9
	ld e,l			;aaca
	ld e,(hl)		;aacb
	ld d,(hl)		;aacc
	ld e,b			;aacd
	ld e,a			;aace
	ld h,b			;aacf
	nop			;aad0
	nop			;aad1
	nop			;aad2
	nop			;aad3
	nop			;aad4
	nop			;aad5
	nop			;aad6
	nop			;aad7
	nop			;aad8
	nop			;aad9
	nop			;aada
	nop			;aadb
	ld c,(hl)		;aadc
	ld c,l			;aadd
	nop			;aade
	nop			;aadf
	ld d,l			;aae0
	ld e,b			;aae1
	ld e,e			;aae2
	ld e,e			;aae3
	ld d,(hl)		;aae4
	ld d,c			;aae5
	ld e,(hl)		;aae6
	ld d,e			;aae7
	ld e,a			;aae8
	ld d,c			;aae9
	ld d,c			;aaea
	ld e,l			;aaeb
	ld d,a			;aaec
	ld e,d			;aaed
	ld d,d			;aaee
	ld c,(hl)		;aaef
	ld hl,02323h		;aaf0
	ld hl,04818h		;aaf3
	ld c,b			;aaf6
	jr lab2bh		;aaf7
	ld c,c			;aaf9
	ld c,c			;aafa
	ld (05a57h),a		;aafb
	ld e,d			;aafe
	ld c,(hl)		;aaff
	ld (02928h),hl		;ab00
	daa			;ab03
	scf			;ab04
	add hl,de		;ab05
	ld b,d			;ab06
	dec a			;ab07
	jr c,lab43h		;ab08
	ld d,026h		;ab0a
	inc a			;ab0c
	ld b,h			;ab0d
	ld b,c			;ab0e
	daa			;ab0f
	ld (03528h),hl		;ab10
	dec d			;ab13
	inc (hl)		;ab14
	ld de,02716h		;ab15
	ld hl,(04240h)		;ab18
	dec a			;ab1b
	jr c,lab57h		;ab1c
	add hl,hl		;ab1e
	ld h,055h		;ab1f
	ld e,e			;ab21
	ld e,c			;ab22
	ld e,e			;ab23
	ld d,(hl)		;ab24
	ld e,l			;ab25
	ld e,(hl)		;ab26
	ld d,e			;ab27
	ld e,a			;ab28
	ld c,a			;ab29
	ld d,h			;ab2a
lab2bh:
	ld d,e			;ab2b
	ld d,a			;ab2c
	ld e,d			;ab2d
	ld e,d			;ab2e
	ld c,(hl)		;ab2f
	ld d,l			;ab30
	ld e,h			;ab31
	ld e,e			;ab32
	ld e,e			;ab33
	ld d,(hl)		;ab34
	ld d,b			;ab35
	ld c,e			;ab36
	ld d,e			;ab37
	ld d,(hl)		;ab38
	ld d,b			;ab39
	ld c,e			;ab3a
	ld d,e			;ab3b
	ld d,a			;ab3c
	ld c,h			;ab3d
	ld c,l			;ab3e
	ld c,(hl)		;ab3f
	ld (hl),h		;ab40
	ld (hl),h		;ab41
	dec (hl)		;ab42
lab43h:
	dec a			;ab43
	ld h,b			;ab44
	ld h,c			;ab45
	ld l,d			;ab46
	ld h,b			;ab47
	ld (hl),l		;ab48
	ld a,b			;ab49
	ld (hl),l		;ab4a
	sbc a,b			;ab4b
	ld l,a			;ab4c
	ld l,(hl)		;ab4d
	ld l,(hl)		;ab4e
	ld l,a			;ab4f
	ld (hl),h		;ab50
	ld (hl),h		;ab51
	ld b,c			;ab52
	daa			;ab53
	ld h,b			;ab54
	ld h,c			;ab55
	dec (hl)		;ab56
lab57h:
	dec a			;ab57
	ld (hl),l		;ab58
	ld a,b			;ab59
	ld (hl),l		;ab5a
	sbc a,b			;ab5b
	ld a,a			;ab5c
	add a,b			;ab5d
	adc a,h			;ab5e
	ld a,a			;ab5f
	ld (hl),h		;ab60
	ld (hl),h		;ab61
	ld b,d			;ab62
	dec a			;ab63
	ld h,b			;ab64
	ld h,c			;ab65
	add hl,hl		;ab66
	ld h,075h		;ab67
	ld a,b			;ab69
	ld b,c			;ab6a
	daa			;ab6b
	adc a,l			;ab6c
	adc a,l			;ab6d
	dec (hl)		;ab6e
	dec a			;ab6f
	ld b,c			;ab70
	inc a			;ab71
	ld b,h			;ab72
	daa			;ab73
	dec (hl)		;ab74
	dec l			;ab75
	ld l,03dh		;ab76
	ld l,e			;ab78
	sbc a,c			;ab79
	sbc a,c			;ab7a
	ld a,c			;ab7b
	ld h,e			;ab7c
	ld h,e			;ab7d
	ld h,h			;ab7e
	ld h,e			;ab7f
	ld b,d			;ab80
	inc (hl)		;ab81
	ld de,0163dh		;ab82
	ld hl,(02640h)		;ab85
	ld b,c			;ab88
	scf			;ab89
	add hl,de		;ab8a
	daa			;ab8b
	dec (hl)		;ab8c
	jr c,labc8h		;ab8d
	dec a			;ab8f
	ld d,03dh		;ab90
	ld a,022h		;ab92
	add hl,hl		;ab94
	ld h,01eh		;ab95
	scf			;ab97
	ld b,c			;ab98
	daa			;ab99
	rra			;ab9a
	jr c,labd2h		;ab9b
	dec a			;ab9d
	ld hl,01623h		;ab9e
	ld h,047h		;aba1
	inc l			;aba3
	ld b,c			;aba4
	daa			;aba5
	ld l,d			;aba6
	ld h,b			;aba7
	dec (hl)		;aba8
	dec a			;aba9
	ld (hl),l		;abaa
	sbc a,b			;abab
	ld a,a			;abac
	add a,b			;abad
	adc a,h			;abae
	ld a,a			;abaf
	add hl,hl		;abb0
	ld h,048h		;abb1
	jr labcbh		;abb3
	dec d			;abb5
	ld c,c			;abb6
	ld (02741h),a		;abb7
	ld (hl),l		;abba
	sbc a,b			;abbb
	dec (hl)		;abbc
	dec a			;abbd
	adc a,l			;abbe
	adc a,l			;abbf
	jr z,lac00h		;abc0
	ld b,d			;abc2
	ld h,019h		;abc3
	ld e,029h		;abc5
	dec d			;abc7
labc8h:
	add hl,sp		;abc8
	rra			;abc9
	ld b,c			;abca
labcbh:
	daa			;abcb
	inc hl			;abcc
	ld hl,03d35h		;abcd
	ld a,022h		;abd0
labd2h:
	jr z,lac12h		;abd2
	ld e,037h		;abd4
	add hl,de		;abd6
	ld e,01fh		;abd7
	jr c,$+59		;abd9
	rra			;abdb
	dec l			;abdc
	ld l,04dh		;abdd
	ld c,(hl)		;abdf
	ld a,022h		;abe0
	jr z,lac22h		;abe2
	ld e,037h		;abe4
	add hl,de		;abe6
	ld e,01fh		;abe7
	jr c,lac24h		;abe9
	rra			;abeb
	inc a			;abec
	ld b,h			;abed
	ld c,l			;abee
	ld c,(hl)		;abef
	inc hl			;abf0
	dec de			;abf1
	dec e			;abf2
	inc hl			;abf3
	ld a,043h		;abf4
	rla			;abf6
	ld a,01fh		;abf7
	jr c,lac34h		;abf9
	rra			;abfb
	ld d,a			;abfc
	ld e,d			;abfd
	ld e,d			;abfe
	ld c,(hl)		;abff
lac00h:
	ld a,022h		;ac00
	jr z,lac42h		;ac02
	ld e,037h		;ac04
	add hl,de		;ac06
	ld e,01fh		;ac07
	jr c,$+59		;ac09
	rra			;ac0b
	ld d,a			;ac0c
	ld e,d			;ac0d
	ld d,d			;ac0e
	ld c,(hl)		;ac0f
	ld b,c			;ac10
	dec d			;ac11
lac12h:
	ld (03528h),hl		;ac12
	daa			;ac15
	inc (hl)		;ac16
	ld de,03d42h		;ac17
	ld hl,(01640h)		;ac1a
	ld h,038h		;ac1d
	add hl,sp		;ac1f
	ld h,l			;ac20
	ld h,l			;ac21
lac22h:
	ld h,l			;ac22
	ld h,(hl)		;ac23
lac24h:
	sbc a,d			;ac24
	sbc a,e			;ac25
	sbc a,e			;ac26
	sbc a,h			;ac27
	ld b,c			;ac28
	inc a			;ac29
	ld b,h			;ac2a
	dec d			;ac2b
	dec (hl)		;ac2c
	dec l			;ac2d
	ld l,027h		;ac2e
	ld a,022h		;ac30
	jr z,lac72h		;ac32
lac34h:
	ld e,037h		;ac34
	add hl,de		;ac36
	ld e,01fh		;ac37
	jr c,lac74h		;ac39
	rra			;ac3b
	ld hl,0525ah		;ac3c
	ld c,(hl)		;ac3f
	jr lac8ah		;ac40
lac42h:
	ld c,b			;ac42
	jr lac77h		;ac43
	ld c,c			;ac45
	ld c,c			;ac46
	ld (05056h),a		;ac47
	ld c,e			;ac4a
	ld d,e			;ac4b
	ld d,a			;ac4c
	ld c,h			;ac4d
	ld c,l			;ac4e
	ld c,(hl)		;ac4f
	ld d,l			;ac50
	ld e,e			;ac51
	ld b,c			;ac52
	dec d			;ac53
	ld d,(hl)		;ac54
	ld e,l			;ac55
	dec (hl)		;ac56
	daa			;ac57
	ld e,a			;ac58
	ld c,a			;ac59
	ld d,03dh		;ac5a
	ld d,a			;ac5c
	ld e,d			;ac5d
	add hl,hl		;ac5e
	ld h,016h		;ac5f
	ld e,01eh		;ac61
	daa			;ac63
	ld b,c			;ac64
	rra			;ac65
	rra			;ac66
	dec a			;ac67
	dec (hl)		;ac68
	ld b,a			;ac69
	inc l			;ac6a
	dec d			;ac6b
	add hl,hl		;ac6c
	ccf			;ac6d
	ld b,(hl)		;ac6e
	ld h,065h		;ac6f
	ld h,l			;ac71
lac72h:
	ld h,l			;ac72
	ld h,(hl)		;ac73
lac74h:
	sbc a,d			;ac74
	sbc a,e			;ac75
	sbc a,e			;ac76
lac77h:
	sbc a,h			;ac77
	ld d,(hl)		;ac78
	nop			;ac79
	nop			;ac7a
	adc a,e			;ac7b
	ld d,(hl)		;ac7c
	nop			;ac7d
	nop			;ac7e
	ld d,e			;ac7f
	ld b,c			;ac80
	inc a			;ac81
	ld b,h			;ac82
	dec d			;ac83
	dec (hl)		;ac84
	dec l			;ac85
	ld l,027h		;ac86
	ld d,047h		;ac88
lac8ah:
	inc l			;ac8a
	dec a			;ac8b
	add hl,hl		;ac8c
	ld hl,02621h		;ac8d
	ld c,b			;ac90
	inc a			;ac91
	ld b,h			;ac92
	dec d			;ac93
	ld c,c			;ac94
	dec l			;ac95
	ld l,027h		;ac96
	dec h			;ac98
	ld b,a			;ac99
	inc l			;ac9a
	dec a			;ac9b
	inc h			;ac9c
	ld hl,02621h		;ac9d
	ld a,022h		;aca0
	jr z,lace2h		;aca2
	ld e,037h		;aca4
	add hl,de		;aca6
	ld e,01fh		;aca7
	jr c,lace4h		;aca9
	rra			;acab
	jr nz,lacf8h		;acac
	ld c,d			;acae
	jr nz,lacd3h		;acaf
	jr z,lacf4h		;acb1
	dec d			;acb3
	inc (hl)		;acb4
	ld de,02735h		;acb5
	ld hl,(01640h)		;acb8
	dec a			;acbb
	jr c,lacf7h		;acbc
	add hl,hl		;acbe
	ld h,022h		;acbf
	jr z,lacech		;acc1
	daa			;acc3
	scf			;acc4
	add hl,de		;acc5
	ld b,c			;acc6
	dec a			;acc7
	jr c,lad03h		;acc8
	dec (hl)		;acca
	ld h,03ch		;accb
	ld b,h			;accd
	ld d,015h		;acce
	ld (hl),h		;acd0
	ld (hl),h		;acd1
	halt			;acd2
lacd3h:
	ld (hl),h		;acd3
	ld h,b			;acd4
	ld h,c			;acd5
	ld l,d			;acd6
	ld h,b			;acd7
	inc a			;acd8
	ld b,h			;acd9
	ld b,c			;acda
	dec d			;acdb
	dec l			;acdc
	ld l,035h		;acdd
	daa			;acdf
	ld b,l			;ace0
	inc de			;ace1
lace2h:
	ld (hl),03ah		;ace2
lace4h:
	jr nc,lad17h		;ace4
	cpl			;ace6
	dec hl			;ace7
	ld (hl),l		;ace8
	ld a,b			;ace9
	ld (hl),l		;acea
	sbc a,b			;aceb
lacech:
	ld a,a			;acec
	add a,b			;aced
	adc a,h			;acee
	ld a,a			;acef
	inc hl			;acf0
	dec de			;acf1
	dec e			;acf2
	inc hl			;acf3
lacf4h:
	jr c,lad39h		;acf4
	rla			;acf6
lacf7h:
	add hl,sp		;acf7
lacf8h:
	sbc a,l			;acf8
	sbc a,(hl)		;acf9
	sbc a,l			;acfa
	sub d			;acfb
	ld l,h			;acfc
	ld l,h			;acfd
	ld l,h			;acfe
	sub e			;acff
	ld a,l			;ad00
	ld a,e			;ad01
	ld a,l			;ad02
lad03h:
	ld a,h			;ad03
	and c			;ad04
	and d			;ad05
	and e			;ad06
	and e			;ad07
	adc a,c			;ad08
	sub l			;ad09
	inc a			;ad0a
	ld b,h			;ad0b
	and (hl)		;ad0c
	and h			;ad0d
	dec l			;ad0e
	ld l,055h		;ad0f
	ld e,e			;ad11
	inc a			;ad12
	ld b,h			;ad13
	ld d,(hl)		;ad14
	ld e,l			;ad15
	dec l			;ad16
lad17h:
	ld l,05fh		;ad17
	ld c,a			;ad19
	ld b,a			;ad1a
	inc l			;ad1b
	ld d,a			;ad1c
	ld e,d			;ad1d
	ccf			;ad1e
	ld b,(hl)		;ad1f
	ld a,(01e1eh)		;ad20
	daa			;ad23
	dec hl			;ad24
	rra			;ad25
	rra			;ad26
	dec a			;ad27
	dec h			;ad28
	ld b,a			;ad29
	inc l			;ad2a
	dec d			;ad2b
	inc h			;ad2c
	ccf			;ad2d
	ld b,(hl)		;ad2e
	ld h,033h		;ad2f
	ld a,(de)		;ad31
	inc e			;ad32
	dec sp			;ad33
	inc a			;ad34
	ld b,h			;ad35
	ld b,a			;ad36
	inc l			;ad37
	ld b,l			;ad38
lad39h:
	inc de			;ad39
	ld (hl),03ah		;ad3a
	jr nc,lad6fh		;ad3c
	cpl			;ad3e
	dec hl			;ad3f
	ld d,l			;ad40
	ld e,e			;ad41
	ld e,c			;ad42
	ld e,e			;ad43
	ld d,(hl)		;ad44
	ld e,l			;ad45
	ld e,(hl)		;ad46
	ld d,e			;ad47
	jr lad92h		;ad48
	ld c,b			;ad4a
	jr lad7fh		;ad4b
	ld c,c			;ad4d
	ld c,c			;ad4e
	ld (05c55h),a		;ad4f
	ld e,e			;ad52
	ld e,e			;ad53
	ld d,(hl)		;ad54
	ld d,b			;ad55
	ld c,e			;ad56
	ld d,e			;ad57
	ld b,l			;ad58
	inc de			;ad59
	ld (hl),03ah		;ad5a
	jr nc,lad8fh		;ad5c
	cpl			;ad5e
	dec hl			;ad5f
	inc sp			;ad60
	ld a,(de)		;ad61
	inc e			;ad62
	dec sp			;ad63
	inc a			;ad64
	ld b,h			;ad65
	ld b,a			;ad66
	inc l			;ad67
	inc hl			;ad68
	dec de			;ad69
	dec e			;ad6a
	inc hl			;ad6b
	jr c,ladb1h		;ad6c
	rla			;ad6e
lad6fh:
	add hl,sp		;ad6f
	inc hl			;ad70
	dec de			;ad71
	dec e			;ad72
	inc hl			;ad73
	ld a,043h		;ad74
	rla			;ad76
	ld a,01fh		;ad77
	jr c,ladb4h		;ad79
	rra			;ad7b
	ld hl,02323h		;ad7c
lad7fh:
	ld hl,0223eh		;ad7f
	jr z,ladc2h		;ad82
	ld e,037h		;ad84
	add hl,de		;ad86
	ld e,01fh		;ad87
	jr c,ladc4h		;ad89
	rra			;ad8b
	ld hl,02323h		;ad8c
lad8fh:
	ld hl,01345h		;ad8f
lad92h:
	ld (hl),03ah		;ad92
	jr nc,ladc7h		;ad94
	cpl			;ad96
	dec hl			;ad97
	inc sp			;ad98
	ld a,(de)		;ad99
	inc e			;ad9a
	dec sp			;ad9b
	inc a			;ad9c
	ld b,h			;ad9d
	ld b,a			;ad9e
	inc l			;ad9f
	jr ladeah		;ada0
	ld c,b			;ada2
	jr ladd7h		;ada3
	ld c,c			;ada5
	ld c,c			;ada6
	ld (01a33h),a		;ada7
	inc e			;adaa
	dec sp			;adab
	inc a			;adac
	ld b,h			;adad
	ld b,a			;adae
	inc l			;adaf
	inc hl			;adb0
ladb1h:
	dec de			;adb1
	dec e			;adb2
	inc hl			;adb3
ladb4h:
	jr c,ladf9h		;adb4
	rla			;adb6
	add hl,sp		;adb7
	ld b,l			;adb8
	inc de			;adb9
	ld (hl),03ah		;adba
	jr nc,ladefh		;adbc
	cpl			;adbe
	dec hl			;adbf
	ld l,l			;adc0
	ld l,(hl)		;adc1
ladc2h:
	inc a			;adc2
	ld b,h			;adc3
ladc4h:
	sub b			;adc4
	adc a,a			;adc5
	dec l			;adc6
ladc7h:
	ld l,09dh		;adc7
	sbc a,(hl)		;adc9
	ld b,a			;adca
	inc l			;adcb
	ld l,h			;adcc
	ld l,h			;adcd
	ccf			;adce
	ld b,(hl)		;adcf
	ld h,l			;add0
	ld h,l			;add1
	inc a			;add2
	ld b,h			;add3
	sbc a,d			;add4
	sbc a,e			;add5
	dec l			;add6
ladd7h:
	ld l,056h		;add7
	nop			;add9
	ld b,a			;adda
	inc l			;addb
	ld d,(hl)		;addc
	nop			;addd
	ccf			;adde
	ld b,(hl)		;addf
	ld l,a			;ade0
	ld l,(hl)		;ade1
	ld l,(hl)		;ade2
	ld l,a			;ade3
	adc a,(hl)		;ade4
	adc a,a			;ade5
	adc a,(hl)		;ade6
	sub b			;ade7
	inc a			;ade8
	ld b,h			;ade9
ladeah:
	sbc a,l			;adea
	sub d			;adeb
	dec l			;adec
	ld l,06ch		;aded
ladefh:
	sub e			;adef
	ld l,a			;adf0
	ld l,(hl)		;adf1
	inc a			;adf2
	ld b,h			;adf3
	adc a,(hl)		;adf4
	adc a,a			;adf5
	dec l			;adf6
	ld l,09dh		;adf7
ladf9h:
	sbc a,(hl)		;adf9
	ld b,a			;adfa
	inc l			;adfb
	ld l,h			;adfc
	ld l,h			;adfd
	ccf			;adfe
	ld b,(hl)		;adff
	ld a,l			;ae00
	ld a,e			;ae01
	ld a,l			;ae02
	ld a,h			;ae03
	and c			;ae04
	and d			;ae05
	and e			;ae06
	and e			;ae07
	ld a,022h		;ae08
	jr z,lae4ah		;ae0a
	ld e,037h		;ae0c
	add hl,de		;ae0e
	ld e,055h		;ae0f
	ld e,b			;ae11
	ld b,d			;ae12
	daa			;ae13
	ld d,(hl)		;ae14
	ld d,c			;ae15
	ld d,03dh		;ae16
	ld b,l			;ae18
	inc de			;ae19
	ld (hl),03ah		;ae1a
	jr nc,lae4fh		;ae1c
	cpl			;ae1e
	dec hl			;ae1f
	inc sp			;ae20
	ld a,(de)		;ae21
	inc e			;ae22
	dec sp			;ae23
	inc a			;ae24
	ld b,h			;ae25
	ld b,a			;ae26
	inc l			;ae27
	ld e,a			;ae28
	ld c,a			;ae29
	ld d,h			;ae2a
	ld d,e			;ae2b
	ld d,a			;ae2c
	ld e,d			;ae2d
	ld e,d			;ae2e
	ld c,(hl)		;ae2f
	ld d,l			;ae30
	ld e,h			;ae31
	ld e,e			;ae32
	ld e,e			;ae33
	ld d,(hl)		;ae34
	ld d,b			;ae35
	ld c,e			;ae36
	ld d,e			;ae37
	jr z,lae78h		;ae38
	ld c,e			;ae3a
	ld d,e			;ae3b
	add hl,de		;ae3c
	ld e,04dh		;ae3d
	ld c,(hl)		;ae3f
	inc a			;ae40
	ld b,h			;ae41
	ld e,c			;ae42
	ld e,e			;ae43
	dec l			;ae44
	ld l,05eh		;ae45
	ld d,e			;ae47
	ld b,a			;ae48
	inc l			;ae49
lae4ah:
	jr z,lae8ah		;ae4a
	ld (de),a		;ae4c
	inc d			;ae4d
	add hl,de		;ae4e
lae4fh:
	ld e,055h		;ae4f
	ld e,e			;ae51
	ld a,022h		;ae52
	ld d,(hl)		;ae54
	ld e,l			;ae55
	ld e,037h		;ae56
	ld e,a			;ae58
	ld c,a			;ae59
	rra			;ae5a
	jr c,laeb4h		;ae5b
	ld e,d			;ae5d
	ld hl,02823h		;ae5e
	ld a,05bh		;ae61
	ld e,e			;ae63
	add hl,de		;ae64
	ld e,04bh		;ae65
	ld d,e			;ae67
	add hl,sp		;ae68
	rra			;ae69
	ld c,e			;ae6a
	ld d,e			;ae6b
	inc hl			;ae6c
	ld hl,04e4dh		;ae6d
	ld d,l			;ae70
	ld e,e			;ae71
	ld e,c			;ae72
	ld e,e			;ae73
	ld d,(hl)		;ae74
	ld e,l			;ae75
	ld e,(hl)		;ae76
	ld d,e			;ae77
lae78h:
	ld a,022h		;ae78
	jr z,$+64		;ae7a
	ld e,037h		;ae7c
	add hl,de		;ae7e
	ld e,055h		;ae7f
	ld e,h			;ae81
	ld e,e			;ae82
	ld e,e			;ae83
	ld d,(hl)		;ae84
	ld d,b			;ae85
	ld c,e			;ae86
	ld d,e			;ae87
	ld a,022h		;ae88
lae8ah:
	jr z,laecah		;ae8a
	ld e,037h		;ae8c
	add hl,de		;ae8e
	ld e,055h		;ae8f
	ld e,b			;ae91
	ld e,e			;ae92
	ld e,e			;ae93
	ld d,(hl)		;ae94
	ld d,c			;ae95
	ld e,(hl)		;ae96
	ld d,e			;ae97
	ld a,022h		;ae98
	jr z,laedah		;ae9a
	ld e,037h		;ae9c
	add hl,de		;ae9e
	ld e,033h		;ae9f
	ld a,(de)		;aea1
	inc e			;aea2
	dec sp			;aea3
	jr laeeeh		;aea4
	ld c,b			;aea6
	jr laedbh		;aea7
	ld c,c			;aea9
	ld c,c			;aeaa
	ld (05a57h),a		;aeab
	ld e,d			;aeae
	ld c,(hl)		;aeaf
	ld d,l			;aeb0
	ld e,e			;aeb1
	inc a			;aeb2
	ld b,h			;aeb3
laeb4h:
	ld d,(hl)		;aeb4
	ld e,l			;aeb5
	dec l			;aeb6
	ld l,03eh		;aeb7
	ld (02c47h),hl		;aeb9
	ld e,037h		;aebc
	add hl,de		;aebe
	ld e,055h		;aebf
	ld e,h			;aec1
	ld e,e			;aec2
	ld e,e			;aec3
	ld d,(hl)		;aec4
	ld d,b			;aec5
	ld c,e			;aec6
	ld d,e			;aec7
	ld d,(hl)		;aec8
	ld d,b			;aec9
laecah:
	ld b,c			;aeca
	dec d			;aecb
	ld d,a			;aecc
	ld c,h			;aecd
	dec (hl)		;aece
	daa			;aecf
	inc hl			;aed0
	inc hl			;aed1
	halt			;aed2
	ld (hl),h		;aed3
	jr c,laf0fh		;aed4
	ld l,d			;aed6
	ld h,b			;aed7
	ld (hl),l		;aed8
	ld a,b			;aed9
laedah:
	ld (hl),l		;aeda
laedbh:
	sbc a,b			;aedb
	ld l,a			;aedc
	ld l,(hl)		;aedd
	ld l,(hl)		;aede
	ld l,a			;aedf
	ld h,l			;aee0
	ld h,l			;aee1
	ld h,l			;aee2
	ld h,(hl)		;aee3
	sbc a,d			;aee4
	sbc a,e			;aee5
	sbc a,e			;aee6
	sbc a,h			;aee7
	ld a,022h		;aee8
	jr z,laf2ah		;aeea
	ld e,037h		;aeec
laeeeh:
	add hl,de		;aeee
	ld e,018h		;aeef
	ld c,b			;aef1
	ld c,b			;aef2
	jr laf27h		;aef3
	ld c,c			;aef5
	ld c,c			;aef6
	ld (0996bh),a		;aef7
	sbc a,c			;aefa
	ld a,c			;aefb
	ld h,e			;aefc
	ld h,e			;aefd
	ld h,h			;aefe
	ld h,e			;aeff
	ld l,l			;af00
	add a,l			;af01
	add a,(hl)		;af02
	ld l,l			;af03
	adc a,(hl)		;af04
	adc a,a			;af05
	adc a,(hl)		;af06
	sub b			;af07
	ld a,022h		;af08
	jr z,laf4ah		;af0a
	ld e,037h		;af0c
	add hl,de		;af0e
laf0fh:
	ld e,03ch		;af0f
	ld b,h			;af11
	ld a,l			;af12
	ld a,h			;af13
	dec l			;af14
	ld l,0a3h		;af15
	and e			;af17
	ld b,a			;af18
	inc l			;af19
	sub a			;af1a
	sub c			;af1b
	ccf			;af1c
	ld b,(hl)		;af1d
	ld h,d			;af1e
	and a			;af1f
	ld b,l			;af20
	inc de			;af21
	ld (hl),03ah		;af22
	jr nc,laf57h		;af24
	cpl			;af26
laf27h:
	dec hl			;af27
	sub c			;af28
	sub l			;af29
laf2ah:
	sub a			;af2a
	sub c			;af2b
	and a			;af2c
	and h			;af2d
	ld h,d			;af2e
	and a			;af2f
	ld b,l			;af30
	inc de			;af31
	ld (hl),03ah		;af32
	jr nc,laf67h		;af34
	cpl			;af36
	dec hl			;af37
	ld e,a			;af38
	ld d,c			;af39
	ld d,c			;af3a
	ld e,l			;af3b
	ld d,a			;af3c
	ld e,d			;af3d
	ld d,d			;af3e
	ld c,(hl)		;af3f
	jr laf8ah		;af40
	ld c,b			;af42
	jr laf77h		;af43
	ld c,c			;af45
	ld c,c			;af46
	ld (02323h),a		;af47
laf4ah:
	sbc a,c			;af4a
	ld a,c			;af4b
	jr c,laf87h		;af4c
	ld h,h			;af4e
	ld h,e			;af4f
	ld d,l			;af50
	ld e,b			;af51
	ld e,b			;af52
	ld e,e			;af53
	ld d,(hl)		;af54
	ld d,e			;af55
	and c			;af56
laf57h:
	ld e,l			;af57
	ld d,(hl)		;af58
	ld d,e			;af59
	sub c			;af5a
	ld e,l			;af5b
	ld d,a			;af5c
	ld c,h			;af5d
	ld c,l			;af5e
	ld c,(hl)		;af5f
	jr lafaah		;af60
	ld c,b			;af62
	jr laf97h		;af63
	ld c,c			;af65
	ld c,c			;af66
laf67h:
	ld (02323h),a		;af67
	ld d,h			;af6a
	ld d,e			;af6b
	jr c,lafa7h		;af6c
	ld e,d			;af6e
	ld c,(hl)		;af6f
	ld a,h			;af70
	add a,c			;af71
	add a,d			;af72
	and l			;af73
	and c			;af74
	ld (hl),d		;af75
	ld l,b			;af76
laf77h:
	and b			;af77
	sub c			;af78
	ld l,c			;af79
	ld h,a			;af7a
	ld a,(hl)		;af7b
	and a			;af7c
	add a,e			;af7d
	add a,h			;af7e
	ld a,d			;af7f
	ld a,l			;af80
	ld a,e			;af81
	ld a,l			;af82
	ld a,h			;af83
	and c			;af84
	and d			;af85
	and e			;af86
laf87h:
	and e			;af87
	sub c			;af88
	sub l			;af89
laf8ah:
	sub a			;af8a
	sub c			;af8b
	and a			;af8c
	and h			;af8d
	ld h,d			;af8e
	and a			;af8f
	inc a			;af90
	ld b,h			;af91
	ld h,l			;af92
	ld h,(hl)		;af93
	dec l			;af94
	ld l,09bh		;af95
laf97h:
	sbc a,h			;af97
	ld b,a			;af98
	inc l			;af99
	jr z,lafdah		;af9a
	ld (de),a		;af9c
	inc d			;af9d
	add hl,de		;af9e
	ld e,056h		;af9f
	nop			;afa1
	nop			;afa2
	ld d,e			;afa3
	ld d,(hl)		;afa4
	nop			;afa5
	nop			;afa6
lafa7h:
	adc a,e			;afa7
	ld l,e			;afa8
	sbc a,c			;afa9
lafaah:
	sbc a,c			;afaa
	ld a,c			;afab
	ld h,e			;afac
	ld h,e			;afad
	ld h,h			;afae
	ld h,e			;afaf
	jr laffah		;afb0
	ld c,b			;afb2
	jr lafe7h		;afb3
	ld c,c			;afb5
	ld c,c			;afb6
	ld (07875h),a		;afb7
	ld (hl),l		;afba
	sbc a,b			;afbb
	ld a,a			;afbc
	add a,b			;afbd
	adc a,h			;afbe
	ld a,a			;afbf
	ld (hl),h		;afc0
	ld (hl),h		;afc1
	halt			;afc2
	ld (hl),h		;afc3
	ld h,b			;afc4
	ld h,c			;afc5
	ld l,d			;afc6
	ld h,b			;afc7
	ld (hl),l		;afc8
	ld a,b			;afc9
	ld (hl),l		;afca
	sbc a,b			;afcb
	adc a,l			;afcc
	adc a,l			;afcd
	adc a,l			;afce
	adc a,l			;afcf
	ld (hl),h		;afd0
	ld (hl),h		;afd1
	halt			;afd2
	ld (hl),h		;afd3
	ld h,b			;afd4
	ld h,c			;afd5
	ld l,d			;afd6
	ld h,b			;afd7
	ld (hl),l		;afd8
	ld a,b			;afd9
lafdah:
	ld (hl),l		;afda
	sbc a,b			;afdb
	ld (hl),e		;afdc
	add a,a			;afdd
	ld (hl),e		;afde
	add a,a			;afdf
	inc sp			;afe0
	ld a,(de)		;afe1
	inc e			;afe2
	dec sp			;afe3
	jr lb02eh		;afe4
	ld c,b			;afe6
lafe7h:
	jr lb01bh		;afe7
	ld c,c			;afe9
	ld c,c			;afea
	ld (04c57h),a		;afeb
	ld c,l			;afee
	ld c,(hl)		;afef
	ld (hl),h		;aff0
	ld (hl),h		;aff1
	halt			;aff2
	ld (hl),h		;aff3
	ld h,b			;aff4
	ld h,c			;aff5
	ld l,d			;aff6
	ld h,b			;aff7
	ld (hl),l		;aff8
	ld a,b			;aff9
laffah:
	ld (hl),l		;affa
	sbc a,b			;affb
	ld l,a			;affc
	ld l,(hl)		;affd
	ld l,(hl)		;affe
	ld l,a			;afff
	ld (hl),h		;b000
	ld (hl),h		;b001
	halt			;b002
	ld (hl),h		;b003
	ld h,b			;b004
	ld h,c			;b005
	ld l,d			;b006
	ld h,b			;b007
	ld (hl),l		;b008
	ld a,b			;b009
	ld (hl),l		;b00a
	sbc a,b			;b00b
	ld a,a			;b00c
	add a,b			;b00d
	adc a,h			;b00e
	ld a,a			;b00f
	ld l,a			;b010
	ld l,(hl)		;b011
	ld l,(hl)		;b012
	ld l,a			;b013
	adc a,(hl)		;b014
	adc a,a			;b015
	adc a,(hl)		;b016
	sub b			;b017
	sbc a,l			;b018
	sbc a,(hl)		;b019
	sbc a,l			;b01a
lb01bh:
	sub d			;b01b
	ld l,h			;b01c
	ld l,h			;b01d
	ld l,h			;b01e
	sub e			;b01f
	adc a,b			;b020
	adc a,b			;b021
	adc a,b			;b022
	adc a,b			;b023
	adc a,(hl)		;b024
	adc a,a			;b025
	adc a,(hl)		;b026
	sub b			;b027
	sbc a,l			;b028
	sbc a,(hl)		;b029
	sbc a,l			;b02a
	sub d			;b02b
	ld l,h			;b02c
	ld l,h			;b02d
lb02eh:
	ld l,h			;b02e
	ld (hl),a		;b02f
	sub h			;b030
	sub (hl)		;b031
	sub h			;b032
	sub (hl)		;b033
	adc a,(hl)		;b034
	adc a,a			;b035
	adc a,(hl)		;b036
	sub b			;b037
	sbc a,l			;b038
	sbc a,(hl)		;b039
	sbc a,l			;b03a
	sub d			;b03b
	ld l,h			;b03c
	ld l,h			;b03d
	ld l,h			;b03e
	sub e			;b03f
	ld l,l			;b040
	add a,l			;b041
	add a,(hl)		;b042
	ld l,l			;b043
	adc a,(hl)		;b044
	adc a,a			;b045
	adc a,(hl)		;b046
	sub b			;b047
	sbc a,l			;b048
	sbc a,(hl)		;b049
	sbc a,l			;b04a
	sub d			;b04b
	ld l,h			;b04c
	ld l,h			;b04d
	ld l,h			;b04e
	ld (hl),a		;b04f
	nop			;b050
	nop			;b051
	nop			;b052
	nop			;b053
	nop			;b054
	nop			;b055
	nop			;b056
	nop			;b057
	nop			;b058
	nop			;b059
	nop			;b05a
	nop			;b05b
	nop			;b05c
	nop			;b05d
	nop			;b05e
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
	and e			;b070
	sbc a,d			;b071
	sbc a,c			;b072
	and c			;b073
	and (hl)		;b074
	and b			;b075
	sbc a,d			;b076
	sub h			;b077
	inc de			;b078
	adc a,(hl)		;b079
	and b			;b07a
	sbc a,c			;b07b
	nop			;b07c
	ld (hl),c		;b07d
	sbc a,(hl)		;b07e
	sbc a,l			;b07f
	nop			;b080
	ld bc,00002h		;b081
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
	nop			;b08f
	sbc a,b			;b090
	adc a,b			;b091
	ld a,e			;b092
	and c			;b093
	and e			;b094
	adc a,h			;b095
	add a,h			;b096
	sub a			;b097
	ld (hl),c		;b098
	and e			;b099
	and c			;b09a
	rlca			;b09b
	inc bc			;b09c
	ld (hl),b		;b09d
	ld (hl),d		;b09e
	nop			;b09f
	and c			;b0a0
	sub e			;b0a1
	ld (hl),l		;b0a2
	ld a,e			;b0a3
	sub h			;b0a4
	sbc a,e			;b0a5
	sub e			;b0a6
	and h			;b0a7
	and d			;b0a8
	sub h			;b0a9
	and c			;b0aa
	ld (hl),l		;b0ab
	sbc a,d			;b0ac
	sbc a,c			;b0ad
	sub e			;b0ae
	sub (hl)		;b0af
	nop			;b0b0
	nop			;b0b1
	ld (hl),c		;b0b2
	sbc a,a			;b0b3
	nop			;b0b4
	nop			;b0b5
	inc bc			;b0b6
	ld l,a			;b0b7
	nop			;b0b8
	nop			;b0b9
	nop			;b0ba
	nop			;b0bb
	nop			;b0bc
	nop			;b0bd
	nop			;b0be
	nop			;b0bf
	sub c			;b0c0
	ld (hl),e		;b0c1
	ld b,000h		;b0c2
	ld l,(hl)		;b0c4
	dec b			;b0c5
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
	inc b			;b0d2
	sub l			;b0d3
	nop			;b0d4
	nop			;b0d5
	nop			;b0d6
	ld (hl),c		;b0d7
	nop			;b0d8
	nop			;b0d9
	nop			;b0da
	nop			;b0db
	nop			;b0dc
	nop			;b0dd
	nop			;b0de
	nop			;b0df
	and b			;b0e0
	sbc a,c			;b0e1
	and c			;b0e2
	and c			;b0e3
	sbc a,(hl)		;b0e4
	sub b			;b0e5
	sub b			;b0e6
	sbc a,h			;b0e7
	ld (hl),c		;b0e8
	sbc a,a			;b0e9
	sub c			;b0ea
	ld (hl),e		;b0eb
	inc bc			;b0ec
	ld l,a			;b0ed
	ld l,(hl)		;b0ee
	dec b			;b0ef
	sub d			;b0f0
	adc a,l			;b0f1
	sbc a,b			;b0f2
	ld a,e			;b0f3
	sub e			;b0f4
	adc a,e			;b0f5
	adc a,h			;b0f6
	add a,h			;b0f7
	and d			;b0f8
	add a,e			;b0f9
	adc a,a			;b0fa
	and e			;b0fb
	sbc a,c			;b0fc
	and c			;b0fd
	ld (hl),h		;b0fe
	adc a,c			;b0ff
	nop			;b100
	ld (hl),c		;b101
	and (hl)		;b102
	and b			;b103
	nop			;b104
	nop			;b105
	inc de			;b106
	sub l			;b107
	nop			;b108
	nop			;b109
	nop			;b10a
	ld (hl),c		;b10b
	nop			;b10c
	nop			;b10d
	nop			;b10e
	nop			;b10f
	sbc a,d			;b110
	and d			;b111
	sub h			;b112
	ld (hl),l		;b113
	and e			;b114
	sbc a,d			;b115
	sbc a,c			;b116
	sub (hl)		;b117
	and (hl)		;b118
	and l			;b119
	sbc a,c			;b11a
	sub e			;b11b
	ld (hl),c		;b11c
	adc a,(hl)		;b11d
	sbc a,l			;b11e
	and c			;b11f
	ld a,e			;b120
	and c			;b121
	ld a,e			;b122
	and c			;b123
	ld (hl),l		;b124
	ld (hl),l		;b125
	and c			;b126
	and c			;b127
	and d			;b128
	and c			;b129
	adc a,b			;b12a
	ld a,e			;b12b
	sub a			;b12c
	sbc a,b			;b12d
	ld a,c			;b12e
	add a,h			;b12f
	sub e			;b130
	ex af,af'		;b131
	nop			;b132
	nop			;b133
	ld (hl),d		;b134
	nop			;b135
	nop			;b136
	nop			;b137
	ld b,000h		;b138
	nop			;b13a
	nop			;b13b
	nop			;b13c
	nop			;b13d
	nop			;b13e
	nop			;b13f
	and c			;b140
	sub e			;b141
	sbc a,e			;b142
	and c			;b143
	and h			;b144
	sub (hl)		;b145
	sub h			;b146
	and c			;b147
	sbc a,e			;b148
	sub e			;b149
	and h			;b14a
	ex af,af'		;b14b
	sub h			;b14c
	and c			;b14d
	rlca			;b14e
	nop			;b14f
	inc b			;b150
	sub l			;b151
	and b			;b152
	and d			;b153
	nop			;b154
	ld (hl),c		;b155
	sbc a,(hl)		;b156
	sbc a,l			;b157
	nop			;b158
	nop			;b159
	ld (hl),c		;b15a
	sbc a,a			;b15b
	nop			;b15c
	nop			;b15d
	inc bc			;b15e
	ld l,a			;b15f
	sub e			;b160
	ex af,af'		;b161
	nop			;b162
	nop			;b163
	rlca			;b164
	nop			;b165
	nop			;b166
	nop			;b167
	nop			;b168
	nop			;b169
	nop			;b16a
	nop			;b16b
	nop			;b16c
	nop			;b16d
	nop			;b16e
	nop			;b16f
	ld a,e			;b170
	and c			;b171
	ld a,e			;b172
	and c			;b173
	add a,h			;b174
	sub a			;b175
	sbc a,b			;b176
	halt			;b177
	and c			;b178
	rlca			;b179
	nop			;b17a
	nop			;b17b
	ld (hl),d		;b17c
	nop			;b17d
	nop			;b17e
	nop			;b17f
	add a,c			;b180
	adc a,l			;b181
	sbc a,b			;b182
	adc a,b			;b183
	add a,l			;b184
	add a,c			;b185
	and e			;b186
	adc a,h			;b187
	ld bc,07102h		;b188
	and e			;b18b
	nop			;b18c
	nop			;b18d
	inc bc			;b18e
	ld (hl),b		;b18f
	sub e			;b190
	ld (hl),l		;b191
	ld a,e			;b192
	and c			;b193
	and c			;b194
	add a,a			;b195
	add a,d			;b196
	sub a			;b197
	nop			;b198
	nop			;b199
	ld bc,00002h		;b19a
	nop			;b19d
	nop			;b19e
	nop			;b19f
	sub e			;b1a0
	and c			;b1a1
	sbc a,e			;b1a2
	ld (hl),l		;b1a3
	and c			;b1a4
	sbc a,e			;b1a5
	and c			;b1a6
	sub e			;b1a7
	sub (hl)		;b1a8
	sub h			;b1a9
	and c			;b1aa
	and h			;b1ab
	and h			;b1ac
	and h			;b1ad
	sbc a,c			;b1ae
	ld (hl),l		;b1af
	adc a,l			;b1b0
	sbc a,b			;b1b1
	adc a,b			;b1b2
	ld a,h			;b1b3
	ld a,(hl)		;b1b4
	and b			;b1b5
	adc a,h			;b1b6
	add a,h			;b1b7
	add a,c			;b1b8
	sub l			;b1b9
	and e			;b1ba
	sub h			;b1bb
	add a,l			;b1bc
	add a,c			;b1bd
	ld a,(hl)		;b1be
	ld a,l			;b1bf
	add a,c			;b1c0
	adc a,(hl)		;b1c1
	ld (hl),a		;b1c2
	and d			;b1c3
	add a,l			;b1c4
	ld a,a			;b1c5
	and e			;b1c6
	sbc a,d			;b1c7
	nop			;b1c8
	inc b			;b1c9
	and (hl)		;b1ca
	ld (hl),a		;b1cb
	nop			;b1cc
	nop			;b1cd
	ld (hl),c		;b1ce
	and e			;b1cf
	ld bc,01302h		;b1d0
	sub l			;b1d3
	nop			;b1d4
	nop			;b1d5
	nop			;b1d6
	ld (hl),c		;b1d7
	nop			;b1d8
	nop			;b1d9
	nop			;b1da
	nop			;b1db
	nop			;b1dc
	nop			;b1dd
	nop			;b1de
	nop			;b1df
	ld (hl),l		;b1e0
	ld a,e			;b1e1
	ld a,e			;b1e2
	and c			;b1e3
	ld (hl),l		;b1e4
	ld (hl),l		;b1e5
	sbc a,e			;b1e6
	and c			;b1e7
	ld (hl),l		;b1e8
	sub (hl)		;b1e9
	and c			;b1ea
	sub e			;b1eb
	sbc a,e			;b1ec
	sub e			;b1ed
	and c			;b1ee
	sub (hl)		;b1ef
	ld a,e			;b1f0
	add a,c			;b1f1
	adc a,l			;b1f2
	sbc a,b			;b1f3
	sub a			;b1f4
	sbc a,b			;b1f5
	adc a,e			;b1f6
	adc a,h			;b1f7
	ld a,e			;b1f8
	and c			;b1f9
	add a,e			;b1fa
	adc a,a			;b1fb
	sub a			;b1fc
	sbc a,b			;b1fd
	and c			;b1fe
	ld (hl),h		;b1ff
	adc a,b			;b200
	sub h			;b201
	and c			;b202
	ld a,e			;b203
	adc a,h			;b204
	add a,h			;b205
	and c			;b206
	add a,l			;b207
	and e			;b208
	sbc a,d			;b209
	adc a,b			;b20a
	ld a,e			;b20b
	adc a,c			;b20c
	sbc a,b			;b20d
	ld a,c			;b20e
	add a,h			;b20f
	ld a,e			;b210
	and c			;b211
	sub a			;b212
	sbc a,b			;b213
	ld (hl),l		;b214
	and c			;b215
	and c			;b216
	ld a,e			;b217
	and h			;b218
	sbc a,c			;b219
	sub e			;b21a
	ex af,af'		;b21b
	adc a,d			;b21c
	sub e			;b21d
	ex af,af'		;b21e
	nop			;b21f
	sbc a,c			;b220
	and h			;b221
	sub e			;b222
	rlca			;b223
	sbc a,l			;b224
	sbc a,h			;b225
	ld (hl),d		;b226
	nop			;b227
	sub c			;b228
	ld (hl),e		;b229
	ld b,000h		;b22a
	ld l,(hl)		;b22c
	dec b			;b22d
	nop			;b22e
	nop			;b22f
	sub a			;b230
	sbc a,b			;b231
	ld a,e			;b232
	and c			;b233
	add a,h			;b234
	sbc a,e			;b235
	and c			;b236
	and c			;b237
	sbc a,l			;b238
	sbc a,d			;b239
	adc a,b			;b23a
	ld a,e			;b23b
	and b			;b23c
	ld a,b			;b23d
	ld a,c			;b23e
	add a,h			;b23f
	ld (hl),c		;b240
	ld a,(hl)		;b241
	and b			;b242
	and d			;b243
	nop			;b244
	inc de			;b245
	sbc a,(hl)		;b246
	sbc a,l			;b247
	nop			;b248
	nop			;b249
	ld (hl),c		;b24a
	sbc a,a			;b24b
	nop			;b24c
	nop			;b24d
	inc bc			;b24e
	ld l,a			;b24f
	sbc a,b			;b250
	ld a,d			;b251
	ld a,h			;b252
	sbc a,e			;b253
	add a,a			;b254
	ld a,c			;b255
	add a,h			;b256
	and c			;b257
	nop			;b258
	ld bc,00002h		;b259
	nop			;b25c
	nop			;b25d
	nop			;b25e
	nop			;b25f
	adc a,d			;b260
	and c			;b261
	sbc a,c			;b262
	and c			;b263
	halt			;b264
	ld a,b			;b265
	sbc a,d			;b266
	sub h			;b267
	inc de			;b268
	adc a,(hl)		;b269
	and b			;b26a
	sbc a,c			;b26b
	nop			;b26c
	ld (hl),c		;b26d
	sbc a,(hl)		;b26e
	sbc a,l			;b26f
	sub e			;b270
	ld (hl),l		;b271
	and c			;b272
	sub e			;b273
	sbc a,c			;b274
	sub e			;b275
	sbc a,e			;b276
	and c			;b277
	and c			;b278
	sub e			;b279
	and c			;b27a
	ex af,af'		;b27b
	sbc a,l			;b27c
	sbc a,h			;b27d
	ld (hl),d		;b27e
	nop			;b27f
	ld a,a			;b280
	and e			;b281
	sbc a,d			;b282
	sub h			;b283
	add a,e			;b284
	adc a,a			;b285
	and e			;b286
	and d			;b287
	ld b,013h		;b288
	and (hl)		;b28a
	sbc a,d			;b28b
	nop			;b28c
	nop			;b28d
	ld (hl),c		;b28e
	and e			;b28f
	ld a,e			;b290
	sub a			;b291
	sbc a,b			;b292
	and c			;b293
	and c			;b294
	adc a,d			;b295
	and h			;b296
	and c			;b297
	adc a,b			;b298
	ld a,h			;b299
	sub e			;b29a
	add a,(hl)		;b29b
	ld a,c			;b29c
	add a,h			;b29d
	halt			;b29e
	ld a,b			;b29f
	ld (hl),l		;b2a0
	sub e			;b2a1
	ld a,a			;b2a2
	sub l			;b2a3
	ld (hl),l		;b2a4
	sub e			;b2a5
	add a,b			;b2a6
	and (hl)		;b2a7
	and d			;b2a8
	sub h			;b2a9
	sub e			;b2aa
	ld a,a			;b2ab
	sbc a,d			;b2ac
	and d			;b2ad
	sub h			;b2ae
	add a,e			;b2af
	adc a,b			;b2b0
	ld a,h			;b2b1
	ld a,e			;b2b2
	and c			;b2b3
	adc a,h			;b2b4
	add a,h			;b2b5
	and c			;b2b6
	sbc a,b			;b2b7
	and b			;b2b8
	sub h			;b2b9
lb2bah:
	sbc a,e			;b2ba
	sub e			;b2bb
	and (hl)		;b2bc
	ld a,l			;b2bd
	sbc a,c			;b2be
	and c			;b2bf
	nop			;b2c0
	nop			;b2c1
	inc bc			;b2c2
	ld (hl),b		;b2c3
	nop			;b2c4
	inc bc			;b2c5
	ld (hl),c		;b2c6
	and b			;b2c7
	nop			;b2c8
	ld (hl),d		;b2c9
	sbc a,(hl)		;b2ca
	sub d			;b2cb
	ex af,af'		;b2cc
	and l			;b2cd
	ld a,b			;b2ce
	sbc a,h			;b2cf
	nop			;b2d0
	nop			;b2d1
	nop			;b2d2
	nop			;b2d3
	nop			;b2d4
	nop			;b2d5
	nop			;b2d6
	nop			;b2d7
	adc a,d			;b2d8
	ld a,h			;b2d9
	ld (hl),h		;b2da
	sbc a,a			;b2db
	ld (hl),a		;b2dc
	ld (hl),a		;b2dd
	and c			;b2de
	ld (hl),a		;b2df
	nop			;b2e0
	nop			;b2e1
	nop			;b2e2
	nop			;b2e3
	inc bc			;b2e4
	ld b,003h		;b2e5
	ld b,0a4h		;b2e7
	sub a			;b2e9
	sbc a,b			;b2ea
	and c			;b2eb
	ld (hl),a		;b2ec
	adc a,b			;b2ed
	add a,h			;b2ee
	sub e			;b2ef
	nop			;b2f0
	nop			;b2f1
	nop			;b2f2
	nop			;b2f3
	nop			;b2f4
	inc b			;b2f5
	ld b,004h		;b2f6
	ld (hl),l		;b2f8
	add a,d			;b2f9
	adc a,l			;b2fa
	sbc a,a			;b2fb
	ld a,a			;b2fc
	ld (hl),a		;b2fd
	and c			;b2fe
	ld (hl),a		;b2ff
	nop			;b300
	nop			;b301
	nop			;b302
	nop			;b303
	dec b			;b304
	ld b,005h		;b305
	ld b,081h		;b307
	ld (hl),a		;b309
	add a,l			;b30a
	add a,h			;b30b
	sub h			;b30c
	adc a,c			;b30d
	adc a,l			;b30e
	and c			;b30f
	nop			;b310
	nop			;b311
	nop			;b312
	nop			;b313
	nop			;b314
	nop			;b315
	nop			;b316
	nop			;b317
	nop			;b318
	nop			;b319
	inc bc			;b31a
	ld l,l			;b31b
	nop			;b31c
	inc bc			;b31d
	ld (hl),c		;b31e
	ld a,d			;b31f
	nop			;b320
	nop			;b321
	nop			;b322
	nop			;b323
	nop			;b324
	nop			;b325
	nop			;b326
	nop			;b327
	ld l,d			;b328
	ld (bc),a		;b329
	nop			;b32a
	nop			;b32b
	sub c			;b32c
	ld l,e			;b32d
	ld (bc),a		;b32e
	nop			;b32f
	ld l,a			;b330
	ld bc,00000h		;b331
	ld a,d			;b334
	ld l,c			;b335
	ld (bc),a		;b336
	nop			;b337
	sub d			;b338
	sub d			;b339
	ld l,h			;b33a
	nop			;b33b
	sbc a,c			;b33c
	sub e			;b33d
	and c			;b33e
	rlca			;b33f
	nop			;b340
	ld (hl),d		;b341
	sbc a,(hl)		;b342
	sbc a,l			;b343
	ex af,af'		;b344
	sub b			;b345
	and b			;b346
	sbc a,h			;b347
	add a,c			;b348
	ld a,b			;b349
	sbc a,d			;b34a
	sbc a,c			;b34b
	sub e			;b34c
	sub (hl)		;b34d
	and d			;b34e
	sub h			;b34f
	sbc a,h			;b350
	sub (hl)		;b351
	and c			;b352
	ld a,a			;b353
	add a,e			;b354
	sub e			;b355
	and c			;b356
	sub e			;b357
	ld a,a			;b358
	ld a,a			;b359
	sub (hl)		;b35a
	sub h			;b35b
	ld a,a			;b35c
	ld (hl),a		;b35d
	ld (hl),a		;b35e
	and c			;b35f
	rlca			;b360
	nop			;b361
	nop			;b362
	nop			;b363
	sub e			;b364
	rlca			;b365
	nop			;b366
	nop			;b367
	adc a,b			;b368
	adc a,d			;b369
	ld a,h			;b36a
	ld (hl),h		;b36b
	ld a,(hl)		;b36c
	adc a,l			;b36d
	ld (hl),a		;b36e
	add a,e			;b36f
	nop			;b370
	nop			;b371
	nop			;b372
	nop			;b373
	dec b			;b374
	inc b			;b375
	ld b,000h		;b376
	sbc a,a			;b378
	and h			;b379
	sub a			;b37a
	sbc a,b			;b37b
	ld (hl),a		;b37c
	add a,e			;b37d
	ld (hl),a		;b37e
	and c			;b37f
	inc bc			;b380
	ld (hl),b		;b381
	rlca			;b382
	nop			;b383
	ld (hl),e		;b384
	halt			;b385
	sub e			;b386
	rlca			;b387
	and c			;b388
	adc a,c			;b389
	add a,d			;b38a
	sub a			;b38b
	sbc a,c			;b38c
	ld a,a			;b38d
	ld (hl),a		;b38e
	and c			;b38f
	nop			;b390
	nop			;b391
	inc bc			;b392
	ld (hl),b		;b393
	nop			;b394
	nop			;b395
	ld (hl),e		;b396
	halt			;b397
	sub a			;b398
	sbc a,b			;b399
	and c			;b39a
	ld a,h			;b39b
	ld (hl),a		;b39c
	add a,e			;b39d
	sbc a,e			;b39e
	ld a,a			;b39f
	rlca			;b3a0
	nop			;b3a1
	nop			;b3a2
	nop			;b3a3
	sub e			;b3a4
	rlca			;b3a5
	nop			;b3a6
	nop			;b3a7
	add a,d			;b3a8
	sub a			;b3a9
	sub a			;b3aa
	sbc a,b			;b3ab
	ld (hl),a		;b3ac
	and c			;b3ad
	ld (hl),a		;b3ae
	and c			;b3af
	nop			;b3b0
	nop			;b3b1
	nop			;b3b2
	nop			;b3b3
	nop			;b3b4
	nop			;b3b5
	nop			;b3b6
	nop			;b3b7
	ld l,d			;b3b8
	ld (bc),a		;b3b9
	nop			;b3ba
	nop			;b3bb
	sub c			;b3bc
	ld l,e			;b3bd
	ld (bc),a		;b3be
	ld (de),a		;b3bf
	nop			;b3c0
	inc bc			;b3c1
	ld l,(hl)		;b3c2
	ld bc,07100h		;b3c3
	ld a,d			;b3c6
	ld l,c			;b3c7
	ex af,af'		;b3c8
	sbc a,(hl)		;b3c9
	sub d			;b3ca
	sbc a,h			;b3cb
	and (hl)		;b3cc
	and e			;b3cd
	and c			;b3ce
	and c			;b3cf
	sub (hl)		;b3d0
	and c			;b3d1
	rlca			;b3d2
	nop			;b3d3
	ld a,a			;b3d4
	and c			;b3d5
	add a,e			;b3d6
	rlca			;b3d7
	ld a,a			;b3d8
	sub (hl)		;b3d9
	and c			;b3da
	and c			;b3db
	ld a,a			;b3dc
	ld a,a			;b3dd
	sbc a,e			;b3de
	and c			;b3df
	ld a,a			;b3e0
	ld a,l			;b3e1
	ld a,e			;b3e2
	sbc a,d			;b3e3
	adc a,a			;b3e4
	sub l			;b3e5
	and e			;b3e6
	sub h			;b3e7
	sub l			;b3e8
	sub b			;b3e9
	adc a,h			;b3ea
	add a,h			;b3eb
	sub l			;b3ec
	ld a,c			;b3ed
	add a,(hl)		;b3ee
	and c			;b3ef
	nop			;b3f0
	nop			;b3f1
	nop			;b3f2
	nop			;b3f3
	ld (bc),a		;b3f4
	nop			;b3f5
	nop			;b3f6
	nop			;b3f7
	ld l,h			;b3f8
	nop			;b3f9
	nop			;b3fa
	inc bc			;b3fb
	sub e			;b3fc
	rlca			;b3fd
	inc b			;b3fe
	ld (hl),c		;b3ff
	sbc a,l			;b400
	sbc a,h			;b401
	ld l,h			;b402
	ld (hl),d		;b403
	sub e			;b404
	and c			;b405
	adc a,a			;b406
	sub l			;b407
	sbc a,c			;b408
	adc a,(hl)		;b409
	sub l			;b40a
	sub b			;b40b
	and c			;b40c
	ld a,l			;b40d
	sub l			;b40e
	ld a,c			;b40f
	ld a,e			;b410
	sbc a,d			;b411
	sbc a,c			;b412
	ld a,a			;b413
	ld a,b			;b414
	sbc a,c			;b415
	and c			;b416
	ld a,a			;b417
	adc a,h			;b418
	add a,h			;b419
	sbc a,e			;b41a
	adc a,b			;b41b
	add a,(hl)		;b41c
	and c			;b41d
	sub e			;b41e
	add a,(hl)		;b41f
	sub (hl)		;b420
	and c			;b421
	add a,c			;b422
	sbc a,d			;b423
	ld a,a			;b424
	sub e			;b425
	sub (hl)		;b426
	and d			;b427
	sub (hl)		;b428
	and c			;b429
	adc a,b			;b42a
	adc a,d			;b42b
	ld (hl),a		;b42c
	and c			;b42d
	ld a,(hl)		;b42e
	adc a,l			;b42f
	nop			;b430
	nop			;b431
	nop			;b432
	nop			;b433
	nop			;b434
	nop			;b435
	nop			;b436
	nop			;b437
	ld l,(hl)		;b438
	ld bc,00000h		;b439
	ld a,d			;b43c
	ld l,c			;b43d
	ld (bc),a		;b43e
	nop			;b43f
	sbc a,l			;b440
	sbc a,h			;b441
	ld l,h			;b442
	nop			;b443
	sub (hl)		;b444
	and c			;b445
	and c			;b446
	rlca			;b447
	sub (hl)		;b448
	sub e			;b449
	adc a,b			;b44a
	adc a,d			;b44b
	ld (hl),a		;b44c
	and c			;b44d
	ld a,(hl)		;b44e
	ld (hl),a		;b44f
	sub a			;b450
	sbc a,b			;b451
	ld (hl),a		;b452
	and c			;b453
	ld (hl),a		;b454
	and c			;b455
	sub a			;b456
	sbc a,b			;b457
	ld a,a			;b458
	sub (hl)		;b459
	sbc a,c			;b45a
	adc a,b			;b45b
	and c			;b45c
	ld a,a			;b45d
	adc a,b			;b45e
	add a,a			;b45f
	nop			;b460
	nop			;b461
	nop			;b462
	nop			;b463
	nop			;b464
	nop			;b465
	nop			;b466
	inc bc			;b467
	nop			;b468
	nop			;b469
	nop			;b46a
	ld (hl),d		;b46b
	nop			;b46c
	nop			;b46d
	ex af,af'		;b46e
	and l			;b46f
	inc bc			;b470
	ld l,l			;b471
	ld l,d			;b472
	ld (bc),a		;b473
	ld (hl),c		;b474
	ld a,d			;b475
	sub c			;b476
	ld l,e			;b477
	sbc a,(hl)		;b478
	sbc a,l			;b479
	sub d			;b47a
	sbc a,h			;b47b
	and e			;b47c
	and c			;b47d
	add a,e			;b47e
	and c			;b47f
	nop			;b480
	ld (de),a		;b481
	ld a,e			;b482
	sbc a,d			;b483
	inc b			;b484
	ld (hl),e		;b485
	and e			;b486
	and d			;b487
	add a,e			;b488
	adc a,c			;b489
	add a,d			;b48a
	sbc a,e			;b48b
	ld a,a			;b48c
	ld a,a			;b48d
	ld (hl),a		;b48e
	and c			;b48f
	sbc a,c			;b490
	and c			;b491
	ld a,a			;b492
	ld a,a			;b493
	and d			;b494
	sub h			;b495
	sub e			;b496
	ld a,a			;b497
	adc a,b			;b498
	add a,h			;b499
	ld a,a			;b49a
	and c			;b49b
	add a,(hl)		;b49c
	add a,e			;b49d
	ld (hl),a		;b49e
	add a,e			;b49f
	sbc a,c			;b4a0
	sub e			;b4a1
	ld a,a			;b4a2
	ld a,a			;b4a3
	and d			;b4a4
	sub h			;b4a5
	ld a,a			;b4a6
	ld a,a			;b4a7
	sbc a,e			;b4a8
	sbc a,e			;b4a9
	ld a,a			;b4aa
	adc a,(hl)		;b4ab
	ld (hl),a		;b4ac
	and c			;b4ad
	sub e			;b4ae
	ld a,l			;b4af
	nop			;b4b0
	nop			;b4b1
	nop			;b4b2
	nop			;b4b3
	nop			;b4b4
	nop			;b4b5
	nop			;b4b6
	nop			;b4b7
	nop			;b4b8
	nop			;b4b9
	nop			;b4ba
	ex af,af'		;b4bb
	nop			;b4bc
	inc b			;b4bd
	ld (de),a		;b4be
	and l			;b4bf
	nop			;b4c0
	nop			;b4c1
	nop			;b4c2
	nop			;b4c3
	ld (bc),a		;b4c4
	nop			;b4c5
	nop			;b4c6
	nop			;b4c7
	ld l,h			;b4c8
	nop			;b4c9
	nop			;b4ca
	nop			;b4cb
	sub e			;b4cc
	rlca			;b4cd
	nop			;b4ce
	nop			;b4cf
	sub e			;b4d0
	adc a,b			;b4d1
	add a,a			;b4d2
	sub b			;b4d3
	adc a,b			;b4d4
	ld a,l			;b4d5
	sub l			;b4d6
	ld a,c			;b4d7
	add a,a			;b4d8
	sub b			;b4d9
	ld a,b			;b4da
	adc a,h			;b4db
	ld a,b			;b4dc
	sbc a,d			;b4dd
	sbc a,d			;b4de
	adc a,l			;b4df
	sbc a,d			;b4e0
	sbc a,c			;b4e1
	ld a,a			;b4e2
	sub (hl)		;b4e3
	and d			;b4e4
	sub h			;b4e5
	ld a,a			;b4e6
	ld a,a			;b4e7
	sbc a,c			;b4e8
	sbc a,e			;b4e9
	ld a,a			;b4ea
	and c			;b4eb
	and c			;b4ec
	sub e			;b4ed
	ld a,a			;b4ee
	and c			;b4ef
	sub a			;b4f0
	sbc a,b			;b4f1
	and c			;b4f2
	add a,b			;b4f3
	ld (hl),a		;b4f4
	and c			;b4f5
	adc a,(hl)		;b4f6
	sub l			;b4f7
	sub a			;b4f8
	sbc a,b			;b4f9
	adc a,e			;b4fa
	adc a,h			;b4fb
	ld (hl),a		;b4fc
	adc a,(hl)		;b4fd
	sub l			;b4fe
	add a,(hl)		;b4ff
	sub a			;b500
	sbc a,b			;b501
	ld l,h			;b502
	nop			;b503
	ld (hl),a		;b504
	add a,e			;b505
	sub e			;b506
	rlca			;b507
	ld a,a			;b508
	sub (hl)		;b509
	adc a,b			;b50a
	adc a,d			;b50b
	ld (hl),a		;b50c
	and c			;b50d
	ld a,(hl)		;b50e
	adc a,l			;b50f
	nop			;b510
	nop			;b511
	nop			;b512
	ld (de),a		;b513
	nop			;b514
	nop			;b515
	inc b			;b516
	ld (hl),e		;b517
	ld (hl),l		;b518
	ld (hl),h		;b519
	sbc a,b			;b51a
	adc a,c			;b51b
	ld (hl),a		;b51c
	and c			;b51d
	add a,e			;b51e
	sub (hl)		;b51f
	ld a,a			;b520
	sub (hl)		;b521
	sub a			;b522
	sbc a,b			;b523
	ld a,a			;b524
	ld a,a			;b525
	adc a,l			;b526
	and c			;b527
	adc a,b			;b528
	add a,d			;b529
	sub a			;b52a
	sbc a,b			;b52b
	add a,(hl)		;b52c
	and c			;b52d
	ld (hl),a		;b52e
	adc a,(hl)		;b52f
	add a,e			;b530
	add a,b			;b531
	sub l			;b532
	sbc a,b			;b533
	adc a,(hl)		;b534
	sub l			;b535
	and e			;b536
	and d			;b537
	adc a,e			;b538
	add a,l			;b539
	adc a,d			;b53a
	add a,h			;b53b
	and e			;b53c
	adc a,l			;b53d
	add a,(hl)		;b53e
	sbc a,b			;b53f
	and c			;b540
lb541h:
	sbc a,h			;b541
	ld l,h			;b542
	nop			;b543
	and c			;b544
	add a,e			;b545
	sub e			;b546
	rlca			;b547
	and c			;b548
	sub e			;b549
	sub e			;b54a
	and c			;b54b
	sub e			;b54c
	ld a,a			;b54d
	ld a,a			;b54e
	sub e			;b54f
	ld a,e			;b550
	add a,c			;b551
	adc a,l			;b552
	sbc a,b			;b553
	sub a			;b554
	sbc a,b			;b555
	adc a,e			;b556
	adc a,h			;b557
	sbc a,l			;b558
	sbc a,c			;b559
	add a,e			;b55a
	adc a,a			;b55b
	and b			;b55c
	sbc a,d			;b55d
	add a,l			;b55e
	ld (hl),h		;b55f
	sub a			;b560
	sbc a,b			;b561
	ld a,e			;b562
	ld a,a			;b563
	ld (hl),l		;b564
	ld (hl),l		;b565
	and c			;b566
	add a,b			;b567
	and d			;b568
	and c			;b569
	adc a,b			;b56a
	ld a,e			;b56b
	sub a			;b56c
	sbc a,b			;b56d
	ld a,c			;b56e
	add a,h			;b56f
	adc a,b			;b570
	sub h			;b571
	and c			;b572
	ld a,a			;b573
	adc a,h			;b574
	add a,h			;b575
	and c			;b576
	add a,b			;b577
	and e			;b578
	sbc a,d			;b579
	adc a,b			;b57a
	ld a,e			;b57b
	adc a,c			;b57c
	sbc a,b			;b57d
	ld a,c			;b57e
	add a,h			;b57f
	ld a,e			;b580
	add a,c			;b581
	adc a,l			;b582
	sbc a,b			;b583
	sub a			;b584
	sbc a,b			;b585
	adc a,e			;b586
	adc a,h			;b587
	adc a,b			;b588
	and c			;b589
	add a,e			;b58a
	adc a,a			;b58b
	ld a,c			;b58c
	add a,h			;b58d
	and c			;b58e
	sub d			;b58f
	adc a,b			;b590
	sub h			;b591
	and c			;b592
	ld a,e			;b593
	adc a,h			;b594
	add a,h			;b595
	sbc a,e			;b596
	sub e			;b597
	and e			;b598
	sbc a,e			;b599
	sub h			;b59a
	and c			;b59b
	adc a,c			;b59c
	add a,h			;b59d
	sbc a,c			;b59e
	sub e			;b59f
	sbc a,b			;b5a0
	ld a,d			;b5a1
	add a,c			;b5a2
	adc a,l			;b5a3
	add a,a			;b5a4
	ld a,c			;b5a5
	add a,h			;b5a6
	add a,c			;b5a7
	nop			;b5a8
	ld bc,00002h		;b5a9
	nop			;b5ac
	nop			;b5ad
	nop			;b5ae
	nop			;b5af
	ld a,e			;b5b0
	and c			;b5b1
	ld a,e			;b5b2
	and c			;b5b3
	sbc a,b			;b5b4
	halt			;b5b5
	add a,d			;b5b6
	sub a			;b5b7
	nop			;b5b8
	nop			;b5b9
	ld bc,00002h		;b5ba
	nop			;b5bd
	nop			;b5be
	nop			;b5bf
	inc bc			;b5c0
	ld (hl),b		;b5c1
	sbc a,(hl)		;b5c2
	sbc a,l			;b5c3
	ld (hl),d		;b5c4
	sub b			;b5c5
	and b			;b5c6
	sbc a,h			;b5c7
	add a,c			;b5c8
	ld a,b			;b5c9
	sbc a,d			;b5ca
	sbc a,c			;b5cb
	sub e			;b5cc
	sub (hl)		;b5cd
	and d			;b5ce
	sub h			;b5cf
	nop			;b5d0
	nop			;b5d1
	nop			;b5d2
	nop			;b5d3
	nop			;b5d4
	nop			;b5d5
	nop			;b5d6
	nop			;b5d7
	nop			;b5d8
	nop			;b5d9
	nop			;b5da
	nop			;b5db
	nop			;b5dc
	nop			;b5dd
	nop			;b5de
	nop			;b5df
	ld e,001h		;b5e0
	ld e,001h		;b5e2
	dec b			;b5e4
	ld (bc),a		;b5e5
	rlca			;b5e6
	jr nz,$+35		;b5e7
	ld hl,02121h		;b5e9
	inc hl			;b5ec
	inc hl			;b5ed
	inc hl			;b5ee
	inc hl			;b5ef
	ld e,001h		;b5f0
	ld e,001h		;b5f2
	dec b			;b5f4
	ld (bc),a		;b5f5
	rlca			;b5f6
	jr nz,$+38		;b5f7
	cpl			;b5f9
	ld hl,04026h		;b5fa
	ld l,023h		;b5fd
	ld c,d			;b5ff
	ld e,001h		;b600
	ld e,001h		;b602
	dec b			;b604
	ld (bc),a		;b605
	rlca			;b606
	jr nz,lb62ah		;b607
	ld hl,02126h		;b609
	inc hl			;b60c
	inc hl			;b60d
	ld c,d			;b60e
	inc hl			;b60f
	ld (02722h),hl		;b610
	ld (01d1dh),hl		;b613
	jr nc,$+31		;b616
	ld a,(0303ah)		;b618
	ld a,(02c2ch)		;b61b
	ld sp,0292ch		;b61e
	ld (02922h),hl		;b621
	ld hl,(01d1dh)		;b624
	ld hl,(03a2bh)		;b627
lb62ah:
	ld a,(03c3bh)		;b62a
	inc l			;b62d
	inc l			;b62e
	inc a			;b62f
	inc bc			;b630
	inc bc			;b631
	add hl,hl		;b632
	ld (03232h),hl		;b633
	ld hl,(03949h)		;b636
	ld b,h			;b639
	dec sp			;b63a
	ld a,(00606h)		;b63b
	inc a			;b63e
	inc l			;b63f
	ld (02722h),hl		;b640
	ld (04349h),hl		;b643
	jr nc,lb665h		;b646
	ld a,(0303ah)		;b648
	ld a,(02c2ch)		;b64b
	ld sp,00f2ch		;b64e
	dec l			;b651
	djnz lb665h		;b652
	ld e,001h		;b654
	ld e,001h		;b656
	dec b			;b658
	ld (bc),a		;b659
	rlca			;b65a
	jr nz,lb67bh		;b65b
	ld bc,0011eh		;b65d
	inc (hl)		;b660
	ld b,a			;b661
	ld b,(hl)		;b662
	ld c,b			;b663
	dec h			;b664
lb665h:
	ld c,00ch		;b665
	dec c			;b667
	inc (hl)		;b668
	ld b,a			;b669
	ld b,(hl)		;b66a
	ld c,b			;b66b
	dec h			;b66c
	ld c,00ch		;b66d
	dec c			;b66f
	djnz $+17		;b670
	inc b			;b672
	ex af,af'		;b673
	jr z,lb677h		;b674
	inc sp			;b676
lb677h:
	add hl,bc		;b677
	rra			;b678
	jr nz,$+12		;b679
lb67bh:
	dec bc			;b67b
	jr z,$+3		;b67c
	ld e,001h		;b67e
	ld (02222h),hl		;b680
	ld (01d1dh),hl		;b683
	dec e			;b686
	dec e			;b687
	ld a,(03a3ah)		;b688
	ld a,(02c2ch)		;b68b
	inc l			;b68e
	inc l			;b68f
	adc a,c			;b690
	ld h,l			;b691
	ld h,a			;b692
	adc a,c			;b693
	ld e,(hl)		;b694
	ld l,d			;b695
	ld l,e			;b696
	ld e,(hl)		;b697
	ld l,b			;b698
	ld l,e			;b699
	ld l,h			;b69a
	ld e,(hl)		;b69b
	ld a,e			;b69c
	ld l,d			;b69d
	ld l,h			;b69e
	ld e,(hl)		;b69f
	ld l,e			;b6a0
	ld l,h			;b6a1
	ld e,(hl)		;b6a2
	ld e,l			;b6a3
	ld a,l			;b6a4
	sub c			;b6a5
	sbc a,d			;b6a6
	ld l,b			;b6a7
	cp a			;b6a8
	xor l			;b6a9
	ld (hl),c		;b6aa
	ld a,e			;b6ab
	ld l,e			;b6ac
	ld l,h			;b6ad
	ld e,(hl)		;b6ae
	ld e,l			;b6af
	adc a,c			;b6b0
	adc a,(hl)		;b6b1
	adc a,c			;b6b2
	adc a,(hl)		;b6b3
	ld e,(hl)		;b6b4
	ld e,h			;b6b5
	ld e,(hl)		;b6b6
	ld e,h			;b6b7
	ld e,a			;b6b8
	adc a,e			;b6b9
	xor e			;b6ba
	ld e,l			;b6bb
	ld e,a			;b6bc
	sbc a,e			;b6bd
	add a,05ch		;b6be
	adc a,c			;b6c0
	adc a,(hl)		;b6c1
	adc a,c			;b6c2
	adc a,(hl)		;b6c3
	ld e,(hl)		;b6c4
	ld e,h			;b6c5
	ld e,(hl)		;b6c6
	ld e,h			;b6c7
	ld e,a			;b6c8
	ld e,l			;b6c9
	ld e,a			;b6ca
	ld e,l			;b6cb
	ld e,a			;b6cc
	ld e,h			;b6cd
	ld e,a			;b6ce
	ld e,h			;b6cf
	ld h,h			;b6d0
	adc a,(hl)		;b6d1
	ld h,a			;b6d2
	ret			;b6d3
	ld h,b			;b6d4
	ld e,h			;b6d5
	ld l,e			;b6d6
	ld l,l			;b6d7
	ld h,b			;b6d8
	ld e,l			;b6d9
	ld l,e			;b6da
	ld l,l			;b6db
	ld h,b			;b6dc
	ld e,h			;b6dd
	ld l,e			;b6de
	ld l,l			;b6df
	adc a,c			;b6e0
	adc a,(hl)		;b6e1
	ld h,a			;b6e2
	adc a,c			;b6e3
	ld l,b			;b6e4
	ld e,h			;b6e5
	ld l,e			;b6e6
	ld e,(hl)		;b6e7
	ld a,e			;b6e8
	ld e,l			;b6e9
	ld l,h			;b6ea
	ld e,(hl)		;b6eb
	ld e,a			;b6ec
	ld e,h			;b6ed
	ld l,h			;b6ee
	ld e,(hl)		;b6ef
	ld h,h			;b6f0
	adc a,c			;b6f1
	adc a,(hl)		;b6f2
	adc a,c			;b6f3
	ld h,b			;b6f4
	ld a,l			;b6f5
	sub c			;b6f6
	sbc a,d			;b6f7
	ld h,b			;b6f8
	cp a			;b6f9
	xor l			;b6fa
	ld (hl),c		;b6fb
	ld h,b			;b6fc
	ld e,a			;b6fd
	ld e,h			;b6fe
	ld e,(hl)		;b6ff
	adc a,c			;b700
	ld h,l			;b701
	ld h,a			;b702
	ret			;b703
	ld l,b			;b704
	ld l,e			;b705
	ld l,d			;b706
	ld l,l			;b707
	ld a,e			;b708
	ld l,h			;b709
	ld l,h			;b70a
	ld l,l			;b70b
	ld e,h			;b70c
	ld l,e			;b70d
	ld l,d			;b70e
	ld l,l			;b70f
	ld h,h			;b710
	adc a,(hl)		;b711
	ld h,a			;b712
	adc a,c			;b713
	ld h,b			;b714
	ld e,h			;b715
	ld l,e			;b716
	ld e,(hl)		;b717
	ld h,b			;b718
	ld e,l			;b719
	ld l,h			;b71a
	ld e,(hl)		;b71b
	ld h,b			;b71c
	ld e,h			;b71d
	ld l,h			;b71e
	ld e,(hl)		;b71f
	adc a,c			;b720
	adc a,(hl)		;b721
	ld h,a			;b722
	ret			;b723
	ld e,(hl)		;b724
	ld e,h			;b725
	ld l,e			;b726
	ld l,l			;b727
	ld e,a			;b728
	ld e,l			;b729
	ld l,h			;b72a
	ld l,l			;b72b
	ld e,a			;b72c
	ld e,h			;b72d
	ld l,h			;b72e
	ld l,l			;b72f
	adc a,c			;b730
	adc a,(hl)		;b731
	ld h,a			;b732
	adc a,c			;b733
	ld e,(hl)		;b734
	ld e,h			;b735
	ld l,e			;b736
lb737h:
	ld e,(hl)		;b737
	ld e,a			;b738
	ld e,l			;b739
	ld l,h			;b73a
	ld e,(hl)		;b73b
	ld e,a			;b73c
	ld e,h			;b73d
	ld l,h			;b73e
	ld e,(hl)		;b73f
	adc a,c			;b740
	ld h,a			;b741
	ret			;b742
	ld c,b			;b743
	ld e,(hl)		;b744
	ld l,d			;b745
	ld l,l			;b746
	dec c			;b747
	ld e,a			;b748
	ld l,c			;b749
	ld l,l			;b74a
	ld c,b			;b74b
	ld e,a			;b74c
	ld l,d			;b74d
	ld l,l			;b74e
	dec c			;b74f
	adc a,c			;b750
	adc a,(hl)		;b751
	adc a,c			;b752
	adc a,c			;b753
	ld a,l			;b754
	sub c			;b755
	sbc a,d			;b756
	ld l,b			;b757
	cp a			;b758
	xor l			;b759
	ld (hl),c		;b75a
	ld a,e			;b75b
	ld e,(hl)		;b75c
	ld e,h			;b75d
	ld e,(hl)		;b75e
	ld e,a			;b75f
	ld h,l			;b760
	ld h,a			;b761
	ld (hl),h		;b762
	ld h,l			;b763
	ld l,h			;b764
	ld l,d			;b765
	push bc			;b766
	ld l,c			;b767
	ld l,e			;b768
	ld l,c			;b769
	push bc			;b76a
	ld l,e			;b76b
	ld l,h			;b76c
	ld l,d			;b76d
	push bc			;b76e
	ld l,c			;b76f
	add hl,hl		;b770
	inc bc			;b771
	inc bc			;b772
	add hl,hl		;b773
	ld hl,(03232h)		;b774
	ld hl,(08e64h)		;b777
	ld h,a			;b77a
	ret			;b77b
	ld e,a			;b77c
	ld e,h			;b77d
	ld l,e			;b77e
	ld l,l			;b77f
	ret			;b780
	cp d			;b781
	or d			;b782
	ld h,h			;b783
	ld l,l			;b784
	cp d			;b785
	or d			;b786
	ld h,b			;b787
	ld l,l			;b788
	adc a,(hl)		;b789
	ld h,a			;b78a
	ld h,b			;b78b
	ld e,a			;b78c
	ld e,h			;b78d
	ld l,e			;b78e
	ld e,(hl)		;b78f
	or d			;b790
	xor d			;b791
	sub l			;b792
	cp d			;b793
	ld a,a			;b794
	ld h,e			;b795
	pop bc			;b796
	ld a,(hl)		;b797
	and e			;b798
	xor c			;b799
	and e			;b79a
	and e			;b79b
	ld a,(hl)		;b79c
	ld h,e			;b79d
	ld a,(hl)		;b79e
	ld a,(hl)		;b79f
	or d			;b7a0
	or c			;b7a1
	or c			;b7a2
	cp l			;b7a3
	ld a,(hl)		;b7a4
	ld h,e			;b7a5
	ld a,(hl)		;b7a6
	pop bc			;b7a7
	and e			;b7a8
	xor c			;b7a9
	and e			;b7aa
	and e			;b7ab
	ld a,(hl)		;b7ac
	ld h,e			;b7ad
	ld a,(hl)		;b7ae
	ld a,(hl)		;b7af
	rrca			;b7b0
	dec l			;b7b1
	djnz lb7c5h		;b7b2
	cp d			;b7b4
	or d			;b7b5
	cp l			;b7b6
	or c			;b7b7
	pop bc			;b7b8
	ld a,(hl)		;b7b9
	ld h,e			;b7ba
	ld a,a			;b7bb
	cp d			;b7bc
	or d			;b7bd
	cp l			;b7be
	or c			;b7bf
	inc (hl)		;b7c0
	ld b,a			;b7c1
	ld b,(hl)		;b7c2
	ld c,b			;b7c3
	xor d			;b7c4
lb7c5h:
	sub l			;b7c5
	cp d			;b7c6
	or d			;b7c7
	ld a,(hl)		;b7c8
	ld a,a			;b7c9
	ld h,e			;b7ca
	pop bc			;b7cb
	or d			;b7cc
	or c			;b7cd
	cp l			;b7ce
	or d			;b7cf
	ld e,(hl)		;b7d0
	ld e,l			;b7d1
	ld l,h			;b7d2
	ld e,(hl)		;b7d3
	ld e,a			;b7d4
	ld a,l			;b7d5
	sub c			;b7d6
	sbc a,d			;b7d7
	ld e,(hl)		;b7d8
	cp a			;b7d9
	xor l			;b7da
	ld (hl),c		;b7db
	ld e,a			;b7dc
	ld e,h			;b7dd
	ld l,h			;b7de
	ld e,(hl)		;b7df
	ld h,b			;b7e0
	ld e,l			;b7e1
	ld l,h			;b7e2
	ld e,(hl)		;b7e3
	ld h,b			;b7e4
	ld a,l			;b7e5
	sub c			;b7e6
	sbc a,d			;b7e7
	ld h,b			;b7e8
	cp a			;b7e9
	xor l			;b7ea
	ld (hl),c		;b7eb
	ld h,b			;b7ec
	ld e,h			;b7ed
	ld l,h			;b7ee
	ld e,(hl)		;b7ef
	ld h,h			;b7f0
	ret			;b7f1
	cp d			;b7f2
	cp l			;b7f3
	ld h,b			;b7f4
	ld l,l			;b7f5
	pop bc			;b7f6
	ld h,e			;b7f7
	ld h,b			;b7f8
	ld l,l			;b7f9
	adc a,(hl)		;b7fa
	adc a,c			;b7fb
	ld h,b			;b7fc
	ld e,a			;b7fd
	ld e,h			;b7fe
	ld e,(hl)		;b7ff
	or c			;b800
	or d			;b801
	ld h,h			;b802
	ret			;b803
lb804h:
	ld a,a			;b804
	pop bc			;b805
	ld h,b			;b806
	ld l,l			;b807
	adc a,(hl)		;b808
	adc a,c			;b809
	ld h,b			;b80a
	ld l,l			;b80b
	ld e,h			;b80c
	ld e,(hl)		;b80d
	ld e,(hl)		;b80e
	ld l,l			;b80f
	ret			;b810
	cp d			;b811
	or d			;b812
	cp l			;b813
	ld l,l			;b814
	pop bc			;b815
	ld a,(hl)		;b816
	ld h,e			;b817
	ld l,l			;b818
	adc a,c			;b819
	adc a,(hl)		;b81a
	adc a,c			;b81b
	ld e,a			;b81c
	ld e,(hl)		;b81d
	ld e,h			;b81e
	ld e,(hl)		;b81f
	xor d			;b820
	sub l			;b821
	cp d			;b822
	or d			;b823
	ld a,a			;b824
	ld a,(hl)		;b825
	ld h,e			;b826
	ld a,(hl)		;b827
	adc a,(hl)		;b828
	adc a,c			;b829
	adc a,(hl)		;b82a
	adc a,c			;b82b
	ld e,h			;b82c
	ld e,(hl)		;b82d
	ld e,h			;b82e
	ld e,(hl)		;b82f
	or c			;b830
	or d			;b831
	cp l			;b832
	ld h,h			;b833
	ld a,a			;b834
	ld h,e			;b835
	pop bc			;b836
	ld h,b			;b837
	adc a,(hl)		;b838
	adc a,c			;b839
	adc a,(hl)		;b83a
	ld h,b			;b83b
	ld e,h			;b83c
	ld e,(hl)		;b83d
	ld e,h			;b83e
	ld e,(hl)		;b83f
	rrca			;b840
	dec l			;b841
	djnz $+19		;b842
	ld e,001h		;b844
	ld e,001h		;b846
	ld h,h			;b848
	adc a,(hl)		;b849
	ld h,a			;b84a
	ret			;b84b
	ld e,(hl)		;b84c
	ld e,h			;b84d
	ld l,e			;b84e
	ld l,l			;b84f
	add hl,hl		;b850
	inc bc			;b851
	inc bc			;b852
	add hl,hl		;b853
	ld hl,(03232h)		;b854
	ld hl,(08e64h)		;b857
	ld h,a			;b85a
	adc a,c			;b85b
	ld h,b			;b85c
	ld e,h			;b85d
	ld l,h			;b85e
	ld e,(hl)		;b85f
	ld (02722h),hl		;b860
	ld (04349h),hl		;b863
	jr nc,$+31		;b866
	adc a,c			;b868
	adc a,(hl)		;b869
	ld h,a			;b86a
	ret			;b86b
	ld e,(hl)		;b86c
	ld e,h			;b86d
	ld l,e			;b86e
	ld l,l			;b86f
	rrca			;b870
	dec l			;b871
	djnz $+19		;b872
	ld e,001h		;b874
	ld e,001h		;b876
	ld h,h			;b878
	adc a,(hl)		;b879
	ld h,a			;b87a
	adc a,c			;b87b
	ld h,b			;b87c
	ld e,h			;b87d
	ld l,h			;b87e
	ld e,(hl)		;b87f
	rrca			;b880
	dec l			;b881
	djnz lb895h		;b882
	ld e,001h		;b884
	ld e,001h		;b886
	adc a,c			;b888
	adc a,(hl)		;b889
	ld h,a			;b88a
	ret			;b88b
	ld e,(hl)		;b88c
	ld e,h			;b88d
	ld l,e			;b88e
	ld l,l			;b88f
	inc (hl)		;b890
	ld b,a			;b891
	ld b,(hl)		;b892
	ld c,b			;b893
	dec h			;b894
lb895h:
	ld c,00ch		;b895
	dec c			;b897
	adc a,c			;b898
	adc a,(hl)		;b899
	ld h,a			;b89a
	adc a,c			;b89b
	ld e,(hl)		;b89c
	ld e,h			;b89d
	ld l,e			;b89e
	ld e,(hl)		;b89f
	inc (hl)		;b8a0
	ld b,a			;b8a1
	ld b,(hl)		;b8a2
	ld c,b			;b8a3
	dec h			;b8a4
	ld c,00ch		;b8a5
	dec c			;b8a7
	ld h,l			;b8a8
	ld h,a			;b8a9
	adc a,(hl)		;b8aa
	adc a,c			;b8ab
	ld l,e			;b8ac
	ld l,h			;b8ad
	ld e,(hl)		;b8ae
	ld e,(hl)		;b8af
	ld (02722h),hl		;b8b0
	ld (04349h),hl		;b8b3
	jr nc,lb8d5h		;b8b6
	ld h,l			;b8b8
	ld h,a			;b8b9
	adc a,(hl)		;b8ba
	ret			;b8bb
	ld l,e			;b8bc
	ld l,h			;b8bd
	ld e,(hl)		;b8be
	ld l,l			;b8bf
	ld e,a			;b8c0
	ld e,l			;b8c1
	ld l,h			;b8c2
	ld l,l			;b8c3
	ld e,a			;b8c4
	ld e,h			;b8c5
	ld l,e			;b8c6
	ld l,l			;b8c7
	adc a,e			;b8c8
	xor e			;b8c9
	ld l,h			;b8ca
	ld l,l			;b8cb
	sbc a,e			;b8cc
	add a,0c5h		;b8cd
	ld l,l			;b8cf
	ld h,b			;b8d0
	ld e,l			;b8d1
	ld l,h			;b8d2
	ld e,(hl)		;b8d3
	ld h,b			;b8d4
lb8d5h:
	ld e,h			;b8d5
	push bc			;b8d6
	ld e,a			;b8d7
	ld h,b			;b8d8
	ld e,l			;b8d9
	ld l,h			;b8da
	ld e,(hl)		;b8db
	ld h,b			;b8dc
	ld e,h			;b8dd
	push bc			;b8de
	ld e,a			;b8df
	ld e,a			;b8e0
	ld e,h			;b8e1
	ld e,(hl)		;b8e2
	ld e,a			;b8e3
	ld a,l			;b8e4
	sub c			;b8e5
	sbc a,d			;b8e6
	ld l,b			;b8e7
	cp a			;b8e8
	xor l			;b8e9
	ld (hl),c		;b8ea
	ld a,e			;b8eb
	ld e,(hl)		;b8ec
	ld e,h			;b8ed
	ld e,(hl)		;b8ee
	ld e,a			;b8ef
	ld e,a			;b8f0
	ld e,l			;b8f1
	ld l,h			;b8f2
	ld l,l			;b8f3
	ld e,(hl)		;b8f4
	ld e,h			;b8f5
	push bc			;b8f6
	ld l,l			;b8f7
	ld e,a			;b8f8
	ld e,l			;b8f9
	ld l,h			;b8fa
	ld l,l			;b8fb
	ld e,(hl)		;b8fc
	ld e,h			;b8fd
	push bc			;b8fe
	ld l,l			;b8ff
	ld e,a			;b900
	ld e,l			;b901
	ld l,h			;b902
	ld e,(hl)		;b903
	ld e,(hl)		;b904
	ld e,h			;b905
	push bc			;b906
	ld e,a			;b907
	ld e,a			;b908
	ld e,l			;b909
	ld l,h			;b90a
	ld e,(hl)		;b90b
	ld e,(hl)		;b90c
	ld e,h			;b90d
	push bc			;b90e
	ld e,a			;b90f
	ld e,a			;b910
	ld e,l			;b911
	ld l,h			;b912
	ld e,(hl)		;b913
	ld e,a			;b914
	ld e,h			;b915
	push bc			;b916
	ld e,a			;b917
	ld e,a			;b918
	adc a,e			;b919
	xor e			;b91a
	ld e,(hl)		;b91b
	ld e,a			;b91c
	sbc a,e			;b91d
	add a,05fh		;b91e
	ld h,b			;b920
	ld e,l			;b921
	ld l,e			;b922
	ld e,a			;b923
	ld h,b			;b924
	ld e,h			;b925
	ld l,h			;b926
	ld e,(hl)		;b927
	ld h,b			;b928
	ld e,l			;b929
	ld l,h			;b92a
	ld e,(hl)		;b92b
	res 1,a			;b92c
	ld h,(hl)		;b92e
	adc a,d			;b92f
	ld e,a			;b930
	ld e,h			;b931
	ld l,e			;b932
	ld e,a			;b933
	ld e,(hl)		;b934
	ld e,l			;b935
	ld l,h			;b936
	ld e,(hl)		;b937
	ld e,a			;b938
	ld e,h			;b939
	ld l,h			;b93a
	ld l,l			;b93b
	adc a,d			;b93c
	adc a,a			;b93d
	ld h,(hl)		;b93e
	jp z,05d5fh		;b93f
	ld l,h			;b942
	ld e,(hl)		;b943
	ld e,(hl)		;b944
	ld e,h			;b945
	push bc			;b946
	ld e,a			;b947
	ld e,a			;b948
	ld e,l			;b949
	ld l,h			;b94a
	ld l,l			;b94b
	ld e,(hl)		;b94c
	ld e,h			;b94d
	push bc			;b94e
	ld l,l			;b94f
	ld e,a			;b950
	ld e,h			;b951
	ld l,l			;b952
	ld bc,05d5fh		;b953
	ld l,l			;b956
	jr nz,lb9b8h		;b957
	ld e,h			;b959
	ld l,l			;b95a
	ld hl,08a8fh		;b95b
	jp z,08923h		;b95e
	adc a,(hl)		;b961
	ld h,a			;b962
	adc a,c			;b963
	ld e,(hl)		;b964
	ld e,h			;b965
	ld l,h			;b966
	ld e,(hl)		;b967
	ld e,(hl)		;b968
	ld e,h			;b969
	ld l,h			;b96a
	ld e,(hl)		;b96b
	adc a,d			;b96c
	adc a,a			;b96d
	ld h,(hl)		;b96e
	adc a,d			;b96f
	ld h,a			;b970
	ld h,l			;b971
	adc a,c			;b972
	adc a,c			;b973
	ld l,e			;b974
	ld l,h			;b975
	ld e,(hl)		;b976
	ld e,(hl)		;b977
	push bc			;b978
	ld l,h			;b979
	ld e,(hl)		;b97a
	ld e,(hl)		;b97b
	ld h,(hl)		;b97c
	ld h,(hl)		;b97d
	adc a,d			;b97e
	adc a,d			;b97f
	adc a,c			;b980
	adc a,(hl)		;b981
	ld h,a			;b982
	ret			;b983
	ld e,(hl)		;b984
	ld e,h			;b985
	ld l,e			;b986
	ld l,l			;b987
	ld e,(hl)		;b988
	ld e,h			;b989
	ld l,e			;b98a
	ld l,l			;b98b
	adc a,d			;b98c
	adc a,a			;b98d
	ld h,(hl)		;b98e
	jp z,08e64h		;b98f
	ld h,a			;b992
	adc a,c			;b993
	ld h,b			;b994
	ld e,h			;b995
	ld l,h			;b996
	ld e,(hl)		;b997
	ld h,b			;b998
	ld e,h			;b999
	ld l,h			;b99a
	ld e,(hl)		;b99b
	res 1,a			;b99c
	ld h,(hl)		;b99e
	adc a,d			;b99f
	ld h,b			;b9a0
	ld e,l			;b9a1
	ld l,e			;b9a2
	ld l,l			;b9a3
	ld h,b			;b9a4
	ld e,h			;b9a5
	push bc			;b9a6
	ld l,l			;b9a7
	ld h,b			;b9a8
	ld e,l			;b9a9
	ld l,e			;b9aa
	ld l,l			;b9ab
	ld h,b			;b9ac
	ld e,h			;b9ad
	push bc			;b9ae
	ld l,l			;b9af
	ld e,a			;b9b0
	ld e,h			;b9b1
	ld l,h			;b9b2
	ld l,l			;b9b3
	sub c			;b9b4
	sbc a,d			;b9b5
	ld l,b			;b9b6
	ld l,l			;b9b7
lb9b8h:
	xor l			;b9b8
	ld (hl),c		;b9b9
	ld a,e			;b9ba
	ld l,l			;b9bb
	ld e,a			;b9bc
	ld e,h			;b9bd
	push bc			;b9be
	ld l,l			;b9bf
	ld h,b			;b9c0
	ld e,h			;b9c1
	ld l,e			;b9c2
	ld l,l			;b9c3
	res 1,a			;b9c4
	ld h,(hl)		;b9c6
	jp z,03a3ah		;b9c7
	jr nc,lba06h		;b9ca
	inc l			;b9cc
	inc l			;b9cd
	ld sp,0602ch		;b9ce
	ld e,h			;b9d1
	ld l,e			;b9d2
	ld l,l			;b9d3
	res 1,a			;b9d4
	ld h,(hl)		;b9d6
	jp z,02f24h		;b9d7
	ld hl,04026h		;b9da
	ld l,023h		;b9dd
	ld c,d			;b9df
	ld h,b			;b9e0
	ld e,h			;b9e1
	ld l,h			;b9e2
	ld e,(hl)		;b9e3
	res 1,a			;b9e4
	ld h,(hl)		;b9e6
	adc a,d			;b9e7
	inc (hl)		;b9e8
	ld b,a			;b9e9
	ld b,(hl)		;b9ea
	ld c,b			;b9eb
	dec h			;b9ec
	ld c,00ch		;b9ed
	dec c			;b9ef
	ld h,b			;b9f0
	ld e,h			;b9f1
	ld l,h			;b9f2
	ld e,(hl)		;b9f3
	res 1,a			;b9f4
	ld h,(hl)		;b9f6
	adc a,d			;b9f7
	dec b			;b9f8
	ld (bc),a		;b9f9
	rlca			;b9fa
	jr nz,lba1bh		;b9fb
	ld bc,0011eh		;b9fd
	ld e,(hl)		;ba00
	ld e,h			;ba01
	ld l,e			;ba02
	ld l,l			;ba03
	adc a,d			;ba04
	adc a,a			;ba05
lba06h:
	ld h,(hl)		;ba06
	jp z,00205h		;ba07
	rlca			;ba0a
	jr nz,$+32		;ba0b
	ld bc,0011eh		;ba0d
	ld e,(hl)		;ba10
	ld e,h			;ba11
	ld l,h			;ba12
	ld e,(hl)		;ba13
	adc a,d			;ba14
	adc a,a			;ba15
	ld h,(hl)		;ba16
	adc a,d			;ba17
	dec b			;ba18
	ld (bc),a		;ba19
	rlca			;ba1a
lba1bh:
	jr nz,lba3bh		;ba1b
	ld bc,0011eh		;ba1d
	ld e,(hl)		;ba20
	ld e,h			;ba21
	ld l,e			;ba22
	ld l,l			;ba23
	adc a,d			;ba24
	adc a,a			;ba25
	ld h,(hl)		;ba26
	jp z,0011eh		;ba27
	ld e,001h		;ba2a
	dec b			;ba2c
	ld (bc),a		;ba2d
	rlca			;ba2e
	jr nz,lba8fh		;ba2f
	ld e,h			;ba31
	ld l,h			;ba32
	ld e,(hl)		;ba33
	adc a,d			;ba34
	adc a,a			;ba35
	ld h,(hl)		;ba36
	adc a,d			;ba37
lba38h:
	inc (hl)		;ba38
	ld b,a			;ba39
	ld b,(hl)		;ba3a
lba3bh:
	ld c,b			;ba3b
	dec h			;ba3c
	ld c,00ch		;ba3d
	dec c			;ba3f
	ld e,(hl)		;ba40
	ld e,h			;ba41
	ld l,h			;ba42
	ld e,(hl)		;ba43
	adc a,d			;ba44
	adc a,a			;ba45
	ld h,(hl)		;ba46
	adc a,d			;ba47
	ld a,(0303ah)		;ba48
	ld a,(02c2ch)		;ba4b
	ld sp,05e2ch		;ba4e
	ld e,h			;ba51
	ld l,h			;ba52
	ld e,(hl)		;ba53
	adc a,d			;ba54
	adc a,a			;ba55
	ld h,(hl)		;ba56
	adc a,d			;ba57
	dec hl			;ba58
	ld a,(03b3ah)		;ba59
	inc a			;ba5c
	inc l			;ba5d
	inc l			;ba5e
	inc a			;ba5f
	ld e,(hl)		;ba60
	ld e,h			;ba61
	ld l,h			;ba62
	ld e,(hl)		;ba63
	adc a,d			;ba64
	adc a,a			;ba65
	ld h,(hl)		;ba66
	adc a,d			;ba67
	add hl,sp		;ba68
	ld b,h			;ba69
	dec sp			;ba6a
	ld a,(00606h)		;ba6b
	inc a			;ba6e
	inc l			;ba6f
	ld e,(hl)		;ba70
	ld e,h			;ba71
	ld l,h			;ba72
	ld e,(hl)		;ba73
	adc a,d			;ba74
	adc a,a			;ba75
	ld h,(hl)		;ba76
	adc a,d			;ba77
	ld e,(hl)		;ba78
	ld e,l			;ba79
	ld l,e			;ba7a
	ld l,l			;ba7b
	ld e,a			;ba7c
	ld e,h			;ba7d
	push bc			;ba7e
	ld l,l			;ba7f
	ld e,(hl)		;ba80
	ld e,h			;ba81
	ld l,h			;ba82
	ld e,(hl)		;ba83
	adc a,d			;ba84
	adc a,a			;ba85
	ld h,(hl)		;ba86
	adc a,d			;ba87
	ld e,a			;ba88
	ld e,l			;ba89
	ld l,e			;ba8a
	ld e,a			;ba8b
	ld e,(hl)		;ba8c
	ld e,h			;ba8d
	ld l,h			;ba8e
lba8fh:
	ld e,(hl)		;ba8f
	ld e,a			;ba90
	ld e,h			;ba91
	ld e,l			;ba92
	ld e,(hl)		;ba93
	ld l,l			;ba94
	adc a,d			;ba95
lba96h:
	adc a,a			;ba96
	adc a,d			;ba97
	ld l,l			;ba98
	pop bc			;ba99
	ld a,(hl)		;ba9a
	ld h,e			;ba9b
	jp z,lb2bah		;ba9c
	cp l			;ba9f
	ld e,(hl)		;baa0
	ld e,h			;baa1
	ld e,a			;baa2
	ld e,h			;baa3
	adc a,a			;baa4
	adc a,d			;baa5
	adc a,a			;baa6
	adc a,d			;baa7
	ld a,a			;baa8
	ld a,(hl)		;baa9
	ld h,e			;baaa
	ld a,(hl)		;baab
	jp nz,lba96h		;baac
	or d			;baaf
	ld e,(hl)		;bab0
	ld e,l			;bab1
	ld e,a			;bab2
	ld e,h			;bab3
	adc a,a			;bab4
	adc a,d			;bab5
	adc a,a			;bab6
	ld h,b			;bab7
	ld a,a			;bab8
	ld h,e			;bab9
	pop bc			;baba
lbabbh:
	ld h,b			;babb
	or c			;babc
	or d			;babd
	cp l			;babe
	bit 3,(hl)		;babf
	ld e,h			;bac1
	ld l,h			;bac2
	ld e,(hl)		;bac3
	adc a,d			;bac4
	adc a,a			;bac5
	ld h,(hl)		;bac6
	adc a,d			;bac7
	ld e,001h		;bac8
	ld e,001h		;baca
	dec b			;bacc
	ld (bc),a		;bacd
	rlca			;bace
	jr nz,lbb31h		;bacf
	ld e,h			;bad1
	ld l,e			;bad2
	ld l,l			;bad3
	ld h,b			;bad4
	ld e,l			;bad5
	ld l,h			;bad6
	ld l,l			;bad7
	ld h,b			;bad8
	ld e,h			;bad9
	ld l,h			;bada
	ld l,l			;badb
	res 1,a			;badc
	ld h,(hl)		;bade
	jp z,05c60h		;badf
	ld l,e			;bae2
	ld e,a			;bae3
	ld h,b			;bae4
	ld e,l			;bae5
	ld l,h			;bae6
	ld e,(hl)		;bae7
	ld h,b			;bae8
	ld e,h			;bae9
	ld l,h			;baea
	ld e,(hl)		;baeb
	res 1,a			;baec
	ld h,(hl)		;baee
	adc a,d			;baef
	ld e,h			;baf0
	ld l,e			;baf1
	ld l,d			;baf2
	ld e,h			;baf3
	ld e,l			;baf4
	ld l,h			;baf5
	ld l,c			;baf6
	ld e,l			;baf7
	ld e,h			;baf8
	ld l,h			;baf9
	ld l,d			;bafa
	ld e,h			;bafb
	adc a,a			;bafc
	ld h,(hl)		;bafd
	ld h,(hl)		;bafe
	adc a,a			;baff
	ld e,a			;bb00
	ld e,h			;bb01
	ld l,e			;bb02
	ld l,l			;bb03
	ld e,(hl)		;bb04
	ld e,l			;bb05
	ld l,h			;bb06
	ld l,l			;bb07
	ld e,a			;bb08
	ld e,h			;bb09
	ld l,h			;bb0a
	ld l,l			;bb0b
	adc a,d			;bb0c
	adc a,a			;bb0d
	ld h,(hl)		;bb0e
	jp z,05c60h		;bb0f
	ld l,e			;bb12
	ld e,a			;bb13
	ld h,b			;bb14
	ld e,l			;bb15
	ld l,h			;bb16
	ld e,(hl)		;bb17
	ld h,b			;bb18
	ld e,h			;bb19
	ld l,h			;bb1a
	ld e,(hl)		;bb1b
	res 1,a			;bb1c
	ld h,(hl)		;bb1e
	adc a,d			;bb1f
	ld e,(hl)		;bb20
	ld e,h			;bb21
	ld l,e			;bb22
	ld l,l			;bb23
	adc a,d			;bb24
	adc a,a			;bb25
	ld h,(hl)		;bb26
	jp z,04734h		;bb27
	ld b,(hl)		;bb2a
	ld c,b			;bb2b
	dec h			;bb2c
	ld c,00ch		;bb2d
	dec c			;bb2f
	ld e,(hl)		;bb30
lbb31h:
	ld e,h			;bb31
	ld e,(hl)		;bb32
	ld e,a			;bb33
	ld a,l			;bb34
	sub c			;bb35
	sbc a,d			;bb36
	ld l,b			;bb37
	cp a			;bb38
	xor l			;bb39
	ld (hl),c		;bb3a
	ld a,e			;bb3b
	adc a,a			;bb3c
	adc a,d			;bb3d
	adc a,a			;bb3e
	adc a,d			;bb3f
	ld e,a			;bb40
	ld e,h			;bb41
	ld l,e			;bb42
	ld e,h			;bb43
	ld e,(hl)		;bb44
	ld e,l			;bb45
	ld l,h			;bb46
	ld e,(hl)		;bb47
	ld e,(hl)		;bb48
	ld e,h			;bb49
	ld l,c			;bb4a
	ld e,h			;bb4b
	adc a,d			;bb4c
	adc a,a			;bb4d
	ld h,(hl)		;bb4e
	adc a,a			;bb4f
	pop bc			;bb50
	ld a,(hl)		;bb51
	ld h,e			;bb52
	pop bc			;bb53
	cp d			;bb54
	or d			;bb55
	cp l			;bb56
	or c			;bb57
	inc (hl)		;bb58
	ld b,a			;bb59
	ld b,(hl)		;bb5a
	ld c,b			;bb5b
	dec h			;bb5c
	ld c,00ch		;bb5d
	dec c			;bb5f
	pop bc			;bb60
	ld a,(hl)		;bb61
	ld h,e			;bb62
	ld a,a			;bb63
	cp d			;bb64
	or d			;bb65
	cp l			;bb66
	or c			;bb67
	ld e,001h		;bb68
	ld e,001h		;bb6a
	dec b			;bb6c
	ld (bc),a		;bb6d
	rlca			;bb6e
	jr nz,lbbefh		;bb6f
	ld a,a			;bb71
	ld h,e			;bb72
	pop bc			;bb73
	or d			;bb74
	or c			;bb75
	cp l			;bb76
	or d			;bb77
	inc (hl)		;bb78
	ld b,a			;bb79
	ld b,(hl)		;bb7a
	ld c,b			;bb7b
	dec h			;bb7c
	ld c,00ch		;bb7d
	dec c			;bb7f
	ld a,(hl)		;bb80
	ld a,a			;bb81
	ld h,e			;bb82
	pop bc			;bb83
	or d			;bb84
	or c			;bb85
	cp l			;bb86
	or d			;bb87
	ld e,001h		;bb88
	ld e,001h		;bb8a
	dec b			;bb8c
	ld (bc),a		;bb8d
	rlca			;bb8e
	jr nz,$+128		;bb8f
	ld a,a			;bb91
	ld h,e			;bb92
	pop bc			;bb93
	or d			;bb94
	or c			;bb95
	cp l			;bb96
	or d			;bb97
	dec hl			;bb98
	ld a,(03b3ah)		;bb99
	inc a			;bb9c
	inc l			;bb9d
	inc l			;bb9e
	inc a			;bb9f
	ld a,(hl)		;bba0
	ld a,(hl)		;bba1
	ld h,e			;bba2
	ld a,(hl)		;bba3
	or d			;bba4
	or c			;bba5
	cp l			;bba6
	or d			;bba7
	ld e,001h		;bba8
	ld e,001h		;bbaa
	dec b			;bbac
	ld (bc),a		;bbad
	rlca			;bbae
	jr nz,lbc2fh		;bbaf
	ld a,(hl)		;bbb1
	ld h,e			;bbb2
	ld a,(hl)		;bbb3
	or d			;bbb4
	jp nz,lba96h		;bbb5
	ld e,001h		;bbb8
	ld e,001h		;bbba
	dec b			;bbbc
	ld (bc),a		;bbbd
	rlca			;bbbe
	jr nz,lbc21h		;bbbf
	ld e,l			;bbc1
	ld l,h			;bbc2
	ld e,(hl)		;bbc3
	ld h,b			;bbc4
	ld e,h			;bbc5
	ld l,c			;bbc6
	ld e,h			;bbc7
	ld h,b			;bbc8
	ld e,l			;bbc9
	adc a,e			;bbca
	xor e			;bbcb
	ld h,b			;bbcc
	ld e,h			;bbcd
	sbc a,e			;bbce
	add a,0b2h		;bbcf
	or c			;bbd1
	or c			;bbd2
	cp l			;bbd3
	ld a,a			;bbd4
	ld h,e			;bbd5
	pop bc			;bbd6
	ld a,(hl)		;bbd7
	and e			;bbd8
	xor c			;bbd9
	and e			;bbda
	and e			;bbdb
	ld a,(hl)		;bbdc
	ld h,e			;bbdd
	ld a,(hl)		;bbde
	ld a,(hl)		;bbdf
	or d			;bbe0
	or d			;bbe1
	ld (hl),l		;bbe2
	ld a,b			;bbe3
	ld h,e			;bbe4
	pop bc			;bbe5
	halt			;bbe6
	ld a,c			;bbe7
	xor c			;bbe8
	and e			;bbe9
	call 06361h		;bbea
	ld a,(hl)		;bbed
	ld a,(hl)		;bbee
lbbefh:
	ld a,a			;bbef
	ld a,b			;bbf0
	add a,d			;bbf1
	add a,(hl)		;bbf2
	add a,h			;bbf3
	ld h,c			;bbf4
	sub b			;bbf5
	inc d			;bbf6
	dec d			;bbf7
	ld h,d			;bbf8
	dec de			;bbf9
	rlca			;bbfa
	jr nz,lbc18h		;bbfb
	ld bc,0011eh		;bbfd
	add a,(hl)		;bc00
	add a,h			;bc01
	add a,(hl)		;bc02
	add a,h			;bc03
	ld e,001h		;bc04
	ld e,001h		;bc06
	dec b			;bc08
	ld (bc),a		;bc09
	rlca			;bc0a
	jr nz,lbc2bh		;bc0b
	ld bc,0011eh		;bc0d
	add a,(hl)		;bc10
	add a,h			;bc11
	dec de			;bc12
	ld c,b			;bc13
	jr lbc2bh		;bc14
	inc c			;bc16
	dec c			;bc17
lbc18h:
	inc (hl)		;bc18
	ld b,a			;bc19
	ld b,(hl)		;bc1a
	ld c,b			;bc1b
	dec h			;bc1c
	ld c,00ch		;bc1d
	dec c			;bc1f
	rrca			;bc20
lbc21h:
	dec l			;bc21
	djnz lbc35h		;bc22
	ld e,001h		;bc24
	ld e,019h		;bc26
	dec b			;bc28
	ld (bc),a		;bc29
	add hl,de		;bc2a
lbc2bh:
	add a,a			;bc2b
	ld e,019h		;bc2c
	add a,a			;bc2e
lbc2fh:
	adc a,b			;bc2f
	ld a,h			;bc30
	ld a,h			;bc31
	cp d			;bc32
	or d			;bc33
	xor c			;bc34
lbc35h:
	pop bc			;bc35
	ld a,(hl)		;bc36
	ld h,e			;bc37
	adc a,b			;bc38
	ld l,l			;bc39
	cp d			;bc3a
	or d			;bc3b
	ld a,c			;bc3c
	ld l,l			;bc3d
	cp d			;bc3e
	or d			;bc3f
	pop bc			;bc40
	ld a,a			;bc41
	ld h,e			;bc42
	ld a,(hl)		;bc43
	ld (hl),l		;bc44
	ld a,b			;bc45
	ld a,b			;bc46
	add a,d			;bc47
	halt			;bc48
	ld a,c			;bc49
	ld h,c			;bc4a
	sub b			;bc4b
	call 06261h		;bc4c
	dec de			;bc4f
	ld a,a			;bc50
	ld h,e			;bc51
	pop bc			;bc52
	ld a,(hl)		;bc53
	add a,(hl)		;bc54
	ld a,h			;bc55
	ld a,h			;bc56
	ld a,h			;bc57
	inc d			;bc58
	dec d			;bc59
	rlca			;bc5a
	jr nz,lbc7bh		;bc5b
	ld bc,0011eh		;bc5d
	ld h,e			;bc60
	ld a,(hl)		;bc61
	pop bc			;bc62
	ld c,(hl)		;bc63
	ld a,h			;bc64
	ld a,h			;bc65
	ld a,h			;bc66
	ld c,a			;bc67
	inc (hl)		;bc68
	ld b,a			;bc69
	ld b,(hl)		;bc6a
	ld c,b			;bc6b
	dec h			;bc6c
	ld c,00ch		;bc6d
	dec c			;bc6f
	ld d,c			;bc70
	ld a,h			;bc71
	adc a,b			;bc72
	ld a,c			;bc73
	ld d,b			;bc74
	ld a,h			;bc75
	ld (hl),a		;bc76
	ld a,d			;bc77
	dec b			;bc78
	ld h,h			;bc79
	cp d			;bc7a
lbc7bh:
	or d			;bc7b
	ld e,060h		;bc7c
	pop bc			;bc7e
	ld a,(hl)		;bc7f
	ld a,c			;bc80
	ld l,l			;bc81
	pop bc			;bc82
	ld h,e			;bc83
	add a,e			;bc84
	add a,l			;bc85
	cp d			;bc86
	or c			;bc87
	cp l			;bc88
	or d			;bc89
	or c			;bc8a
	or d			;bc8b
	ld h,e			;bc8c
	ld a,(hl)		;bc8d
	ld a,a			;bc8e
	ld h,e			;bc8f
	ld a,(hl)		;bc90
	ld a,a			;bc91
	inc e			;bc92
	add hl,hl		;bc93
	ld a,h			;bc94
	ccf			;bc95
	dec e			;bc96
	ld hl,(03a2bh)		;bc97
	ld a,(03c3bh)		;bc9a
	inc l			;bc9d
	inc l			;bc9e
	inc a			;bc9f
	ld (02722h),hl		;bca0
	ld (01d1dh),hl		;bca3
	jr nc,lbcc5h		;bca6
	ld b,l			;bca8
	ld a,h			;bca9
	ld a,h			;bcaa
	ld c,l			;bcab
	ld c,h			;bcac
	ld h,e			;bcad
	ld a,(hl)		;bcae
	ld c,e			;bcaf
	ld (la360h),hl		;bcb0
	and e			;bcb3
	dec e			;bcb4
	ld h,b			;bcb5
	pop bc			;bcb6
	ld a,(hl)		;bcb7
	ld b,l			;bcb8
	ld a,h			;bcb9
	ld a,h			;bcba
	ld a,h			;bcbb
	ld c,h			;bcbc
	pop bc			;bcbd
	ld a,(hl)		;bcbe
	ld a,a			;bcbf
	xor c			;bcc0
	and e			;bcc1
	and e			;bcc2
	xor c			;bcc3
	ld h,e			;bcc4
lbcc5h:
	ld a,(hl)		;bcc5
	pop bc			;bcc6
	ld h,e			;bcc7
	xor d			;bcc8
	sub l			;bcc9
	ld a,h			;bcca
	ld a,h			;bccb
	ld h,e			;bccc
	ld a,(hl)		;bccd
	ld a,a			;bcce
	ld h,e			;bccf
	rrca			;bcd0
	dec l			;bcd1
	djnz $+19		;bcd2
	ld e,001h		;bcd4
	ld e,001h		;bcd6
	dec b			;bcd8
	ld (bc),a		;bcd9
	rlca			;bcda
	jr nz,lbcfbh		;bcdb
	ld bc,0831eh		;bcdd
	rrca			;bce0
	dec l			;bce1
	djnz lbcfdh		;bce2
	ld e,001h		;bce4
	add hl,de		;bce6
	add a,a			;bce7
	ld d,017h		;bce8
	ld l,a			;bcea
	adc a,b			;bceb
	add a,l			;bcec
	add a,e			;bced
	add a,l			;bcee
	ld (hl),a		;bcef
	xor c			;bcf0
	pop bc			;bcf1
	pop bc			;bcf2
	xor c			;bcf3
	adc a,b			;bcf4
	and e			;bcf5
	and e			;bcf6
	ld (hl),b		;bcf7
	ld a,c			;bcf8
	adc a,e			;bcf9
	xor e			;bcfa
lbcfbh:
	ld a,c			;bcfb
	ld a,d			;bcfc
lbcfdh:
	sbc a,e			;bcfd
	add a,07ah		;bcfe
	ld a,(de)		;bd00
	dec l			;bd01
	djnz $+19		;bd02
	ld l,a			;bd04
	ld a,(de)		;bd05
	ld e,001h		;bd06
	ld (hl),b		;bd08
	add a,a			;bd09
	ld (de),a		;bd0a
	inc de			;bd0b
	ld a,d			;bd0c
	add a,c			;bd0d
	add a,l			;bd0e
	add a,e			;bd0f
	rrca			;bd10
	dec l			;bd11
	djnz lbd25h		;bd12
	ld e,001h		;bd14
	ld e,001h		;bd16
	dec b			;bd18
	ld (bc),a		;bd19
	rlca			;bd1a
	jr nz,$-121		;bd1b
	add a,e			;bd1d
	add a,l			;bd1e
	add a,e			;bd1f
	inc (hl)		;bd20
	ld b,a			;bd21
	ld b,(hl)		;bd22
	add hl,de		;bd23
	dec h			;bd24
lbd25h:
	ld c,019h		;bd25
	add a,a			;bd27
	ld d,017h		;bd28
	ld l,a			;bd2a
	adc a,b			;bd2b
	add a,l			;bd2c
	add a,e			;bd2d
	add a,l			;bd2e
	ld (hl),a		;bd2f
	xor c			;bd30
	pop bc			;bd31
	ld a,a			;bd32
	ld h,e			;bd33
	adc a,b			;bd34
	and e			;bd35
	and e			;bd36
	pop bc			;bd37
	ld a,c			;bd38
	adc a,e			;bd39
	xor e			;bd3a
	cp d			;bd3b
	ld a,d			;bd3c
	sbc a,e			;bd3d
	add a,0bah		;bd3e
	ld (02227h),hl		;bd40
	ld (0301dh),hl		;bd43
	dec e			;bd46
	dec e			;bd47
	ld a,(03a30h)		;bd48
	ld a,(0312ch)		;bd4b
	inc l			;bd4e
	inc l			;bd4f
	ld (02722h),hl		;bd50
	ld (01d1dh),hl		;bd53
	jr nc,lbd75h		;bd56
	adc a,c			;bd58
	adc a,(hl)		;bd59
	ld h,a			;bd5a
	ret			;bd5b
	ld e,(hl)		;bd5c
	ld e,h			;bd5d
	ld l,e			;bd5e
	ld l,l			;bd5f
	adc a,c			;bd60
	adc a,(hl)		;bd61
	adc a,c			;bd62
	adc a,(hl)		;bd63
	ld e,(hl)		;bd64
	ld e,h			;bd65
	ld e,(hl)		;bd66
	ld e,h			;bd67
	ld e,a			;bd68
	ld e,l			;bd69
	ld e,a			;bd6a
	ld e,l			;bd6b
	ld e,a			;bd6c
	ld e,h			;bd6d
	ld e,a			;bd6e
	ld e,h			;bd6f
	ld h,b			;bd70
	ld e,l			;bd71
	ld l,h			;bd72
	ld e,(hl)		;bd73
	ld a,l			;bd74
lbd75h:
	sub c			;bd75
	sbc a,d			;bd76
	ld l,b			;bd77
	cp a			;bd78
	xor l			;bd79
	ld (hl),c		;bd7a
	ld a,e			;bd7b
	ld h,b			;bd7c
	ld e,h			;bd7d
	push bc			;bd7e
	ld e,a			;bd7f
	cp d			;bd80
	or c			;bd81
	or c			;bd82
	cp l			;bd83
	pop bc			;bd84
	ld h,e			;bd85
	ld a,a			;bd86
	ld a,(hl)		;bd87
	and e			;bd88
	xor c			;bd89
	and e			;bd8a
	and e			;bd8b
	pop bc			;bd8c
	ld h,e			;bd8d
	ld a,(hl)		;bd8e
	ld a,(hl)		;bd8f
	add hl,hl		;bd90
	ld (08e64h),hl		;bd91
	ld hl,(0601dh)		;bd94
	ld e,h			;bd97
	dec hl			;bd98
	ld a,(05d60h)		;bd99
	inc a			;bd9c
	inc l			;bd9d
	ld h,b			;bd9e
	ld e,h			;bd9f
	ld hl,06021h		;bda0
	ld e,h			;bda3
	ld hl,0cb21h		;bda4
	adc a,a			;bda7
	dec b			;bda8
	ld (bc),a		;bda9
	rlca			;bdaa
	jr nz,lbdcbh		;bdab
	ld bc,0011eh		;bdad
	cp b			;bdb0
	cp c			;bdb1
	add hl,bc		;bdb2
	inc c			;bdb3
	cp b			;bdb4
	cp c			;bdb5
	ex af,af'		;bdb6
	dec bc			;bdb7
	cp h			;bdb8
	cp l			;bdb9
	cp (hl)			;bdba
	cp (hl)			;bdbb
lbdbch:
	cp d			;bdbc
	cp e			;bdbd
	push bc			;bdbe
	push bc			;bdbf
	add hl,bc		;bdc0
	inc c			;bdc1
	add hl,bc		;bdc2
	inc c			;bdc3
	ex af,af'		;bdc4
	dec bc			;bdc5
	ex af,af'		;bdc6
	dec bc			;bdc7
	cp (hl)			;bdc8
	cp (hl)			;bdc9
	cp (hl)			;bdca
lbdcbh:
	cp (hl)			;bdcb
	push bc			;bdcc
	push bc			;bdcd
	push bc			;bdce
	push bc			;bdcf
	add hl,bc		;bdd0
	inc c			;bdd1
	cp b			;bdd2
	cp c			;bdd3
	ex af,af'		;bdd4
	dec bc			;bdd5
	cp b			;bdd6
	cp c			;bdd7
	cp (hl)			;bdd8
	cp (hl)			;bdd9
	cp h			;bdda
	cp l			;bddb
	push bc			;bddc
	push bc			;bddd
	cp d			;bdde
	cp e			;bddf
	ld (bc),a		;bde0
	dec b			;bde1
	ld (bc),a		;bde2
	dec b			;bde3
	inc bc			;bde4
	ld b,003h		;bde5
	ld b,001h		;bde7
	inc b			;bde9
	ld bc,00e04h		;bdea
	dec c			;bded
	ld c,00dh		;bdee
	ld (bc),a		;bdf0
	add hl,de		;bdf1
	ld a,(de)		;bdf2
	add hl,de		;bdf3
	inc bc			;bdf4
	dec e			;bdf5
	dec de			;bdf6
	dec e			;bdf7
	ld bc,01a19h		;bdf8
	add hl,de		;bdfb
	ld c,01dh		;bdfc
	dec de			;bdfe
	dec e			;bdff
	ld (bc),a		;be00
	dec b			;be01
	ld (bc),a		;be02
	dec b			;be03
	inc bc			;be04
	ld b,003h		;be05
	ld b,001h		;be07
	add hl,de		;be09
	ld a,(de)		;be0a
	add hl,de		;be0b
	ld c,01dh		;be0c
	dec de			;be0e
	dec e			;be0f
	rrca			;be10
	rrca			;be11
	rrca			;be12
	rrca			;be13
	djnz $+18		;be14
	djnz $+18		;be16
	dec h			;be18
	inc h			;be19
	dec h			;be1a
	dec h			;be1b
	dec h			;be1c
	inc h			;be1d
	dec h			;be1e
	dec h			;be1f
	inc h			;be20
	rrca			;be21
	inc h			;be22
	rrca			;be23
	inc e			;be24
	djnz lbe43h		;be25
	djnz lbe47h		;be27
	rra			;be29
	ld e,025h		;be2a
	inc e			;be2c
	jr nz,lbe4bh		;be2d
	dec h			;be2f
	rrca			;be30
	inc hl			;be31
	rrca			;be32
	inc hl			;be33
	djnz $+35		;be34
	djnz lbe59h		;be36
	dec h			;be38
	dec e			;be39
	dec h			;be3a
	dec e			;be3b
	dec h			;be3c
	ld hl,02125h		;be3d
	cp (hl)			;be40
	cp (hl)			;be41
	cp (hl)			;be42
lbe43h:
	cp (hl)			;be43
	push bc			;be44
	push bc			;be45
	push bc			;be46
lbe47h:
	push bc			;be47
	dec h			;be48
	dec e			;be49
	dec h			;be4a
lbe4bh:
	dec e			;be4b
	dec h			;be4c
	ld hl,02125h		;be4d
	rrca			;be50
	rrca			;be51
	rrca			;be52
	rrca			;be53
	djnz lbe66h		;be54
	djnz lbe68h		;be56
	dec h			;be58
lbe59h:
	dec h			;be59
	dec h			;be5a
	dec h			;be5b
	dec h			;be5c
	dec h			;be5d
	dec h			;be5e
	dec h			;be5f
	cp h			;be60
	cp l			;be61
	cp (hl)			;be62
	cp (hl)			;be63
	cp d			;be64
	cp e			;be65
lbe66h:
	push bc			;be66
	push bc			;be67
lbe68h:
	dec h			;be68
	dec h			;be69
	dec h			;be6a
	dec h			;be6b
	dec h			;be6c
	dec h			;be6d
	dec h			;be6e
	dec h			;be6f
	cp (hl)			;be70
	cp (hl)			;be71
	cp (hl)			;be72
	cp (hl)			;be73
	push bc			;be74
	push bc			;be75
	push bc			;be76
	push bc			;be77
	dec h			;be78
	inc h			;be79
	dec h			;be7a
	dec h			;be7b
	dec h			;be7c
	inc h			;be7d
	dec h			;be7e
	dec h			;be7f
	cp (hl)			;be80
	cp (hl)			;be81
	cp (hl)			;be82
	cp (hl)			;be83
	push bc			;be84
	push bc			;be85
	push bc			;be86
	push bc			;be87
	ld e,01ah		;be88
	ld e,025h		;be8a
	inc e			;be8c
	jr nz,lbeabh		;be8d
	dec h			;be8f
	cp (hl)			;be90
	cp (hl)			;be91
	cp (hl)			;be92
	cp (hl)			;be93
	push bc			;be94
	push bc			;be95
	push bc			;be96
	push bc			;be97
	dec h			;be98
	dec h			;be99
	dec h			;be9a
	dec h			;be9b
	dec h			;be9c
	dec h			;be9d
	dec h			;be9e
	dec h			;be9f
	cp (hl)			;bea0
	cp (hl)			;bea1
	cp h			;bea2
	cp l			;bea3
	push bc			;bea4
	push bc			;bea5
	cp d			;bea6
	cp e			;bea7
	dec h			;bea8
	dec h			;bea9
	dec h			;beaa
lbeabh:
	dec h			;beab
	dec h			;beac
	dec h			;bead
	dec h			;beae
	dec h			;beaf
	cp h			;beb0
	cp l			;beb1
	cp (hl)			;beb2
	cp (hl)			;beb3
	cp d			;beb4
	cp e			;beb5
	push bc			;beb6
	push bc			;beb7
	cp b			;beb8
	cp c			;beb9
	dec h			;beba
	dec h			;bebb
	cp b			;bebc
	cp c			;bebd
	dec h			;bebe
	dec h			;bebf
	cp h			;bec0
	cp l			;bec1
	rrca			;bec2
	rrca			;bec3
	cp d			;bec4
	cp e			;bec5
	djnz lbed8h		;bec6
	cp b			;bec8
	cp c			;bec9
	dec h			;beca
	dec h			;becb
	cp b			;becc
	cp c			;becd
	dec h			;bece
	dec h			;becf
	ld d,016h		;bed0
	ld d,016h		;bed2
	dec d			;bed4
	dec d			;bed5
	dec d			;bed6
	dec d			;bed7
lbed8h:
	inc d			;bed8
	inc de			;bed9
	inc d			;beda
	inc de			;bedb
	rlca			;bedc
	ld a,(bc)		;bedd
	rlca			;bede
	ld a,(bc)		;bedf
	inc hl			;bee0
	ld d,023h		;bee1
	ld d,024h		;bee3
	dec d			;bee5
	inc h			;bee6
	dec d			;bee7
	inc d			;bee8
	inc de			;bee9
	inc d			;beea
	inc de			;beeb
	rlca			;beec
	ld a,(bc)		;beed
	rlca			;beee
	ld a,(bc)		;beef
	ld d,021h		;bef0
	ld d,021h		;bef2
	dec d			;bef4
	dec e			;bef5
	dec d			;bef6
	dec e			;bef7
	inc d			;bef8
	add hl,de		;bef9
	ld a,(de)		;befa
	add hl,de		;befb
	rlca			;befc
	dec e			;befd
	dec de			;befe
	dec e			;beff
	ld d,016h		;bf00
	ld d,016h		;bf02
	dec d			;bf04
	dec d			;bf05
	dec d			;bf06
	dec d			;bf07
	inc d			;bf08
	inc de			;bf09
	inc d			;bf0a
	inc de			;bf0b
	rlca			;bf0c
	ld a,(bc)		;bf0d
	rlca			;bf0e
	ld a,(bc)		;bf0f
	ld d,019h		;bf10
	ld d,019h		;bf12
	dec d			;bf14
	dec e			;bf15
	dec d			;bf16
	dec e			;bf17
	inc d			;bf18
	ld hl,02114h		;bf19
	rlca			;bf1c
	dec e			;bf1d
	rlca			;bf1e
	dec e			;bf1f
	ld d,016h		;bf20
	ld d,016h		;bf22
	dec d			;bf24
	dec d			;bf25
	dec d			;bf26
	dec d			;bf27
	inc d			;bf28
	inc de			;bf29
	cp h			;bf2a
	cp l			;bf2b
	rlca			;bf2c
	ld a,(bc)		;bf2d
	cp d			;bf2e
	cp e			;bf2f
	ld d,019h		;bf30
	ld a,(de)		;bf32
	add hl,de		;bf33
	dec d			;bf34
	dec e			;bf35
	dec de			;bf36
	dec e			;bf37
	inc d			;bf38
	ld hl,02114h		;bf39
	rlca			;bf3c
	dec e			;bf3d
	rlca			;bf3e
	dec e			;bf3f
	rrca			;bf40
	dec e			;bf41
	rrca			;bf42
	dec e			;bf43
	djnz lbf5fh		;bf44
	ld a,(de)		;bf46
	add hl,de		;bf47
	dec h			;bf48
	dec e			;bf49
	dec de			;bf4a
	dec e			;bf4b
	dec h			;bf4c
	ld hl,02125h		;bf4d
	ld d,01dh		;bf50
	ld d,01dh		;bf52
	dec d			;bf54
	ld (02215h),hl		;bf55
	inc d			;bf58
	inc de			;bf59
	inc d			;bf5a
	inc de			;bf5b
	rlca			;bf5c
	ld a,(bc)		;bf5d
	rlca			;bf5e
lbf5fh:
	ld a,(bc)		;bf5f
	ld d,016h		;bf60
	ld d,016h		;bf62
	dec d			;bf64
	dec d			;bf65
	dec d			;bf66
	dec d			;bf67
	cp (hl)			;bf68
	cp (hl)			;bf69
	cp (hl)			;bf6a
	cp (hl)			;bf6b
	push bc			;bf6c
	push bc			;bf6d
	push bc			;bf6e
	push bc			;bf6f
	inc hl			;bf70
	ld d,023h		;bf71
	ld d,024h		;bf73
	dec d			;bf75
	inc h			;bf76
	dec d			;bf77
	cp (hl)			;bf78
	cp (hl)			;bf79
	cp (hl)			;bf7a
lbf7bh:
	cp (hl)			;bf7b
	push bc			;bf7c
	push bc			;bf7d
	push bc			;bf7e
	push bc			;bf7f
	ld d,021h		;bf80
	ld d,021h		;bf82
	dec d			;bf84
	dec e			;bf85
	dec d			;bf86
	dec e			;bf87
	cp (hl)			;bf88
	cp (hl)			;bf89
	cp (hl)			;bf8a
	cp (hl)			;bf8b
	push bc			;bf8c
	push bc			;bf8d
	push bc			;bf8e
	push bc			;bf8f
	ld d,016h		;bf90
	ld d,016h		;bf92
	dec d			;bf94
	dec d			;bf95
	dec d			;bf96
	dec d			;bf97
	cp h			;bf98
	cp l			;bf99
	cp (hl)			;bf9a
	cp (hl)			;bf9b
	cp d			;bf9c
	cp e			;bf9d
	push bc			;bf9e
	push bc			;bf9f
	cp b			;bfa0
	cp c			;bfa1
	ld d,016h		;bfa2
	cp b			;bfa4
	cp c			;bfa5
	dec d			;bfa6
	dec d			;bfa7
	cp h			;bfa8
	cp l			;bfa9
	inc d			;bfaa
	inc de			;bfab
	cp d			;bfac
	cp e			;bfad
	rlca			;bfae
	ld a,(bc)		;bfaf
	cp b			;bfb0
	cp c			;bfb1
	ld d,016h		;bfb2
	cp b			;bfb4
	cp c			;bfb5
	dec d			;bfb6
	dec d			;bfb7
	cp h			;bfb8
	cp l			;bfb9
	cp (hl)			;bfba
	cp (hl)			;bfbb
	cp d			;bfbc
	cp e			;bfbd
	push bc			;bfbe
	push bc			;bfbf
	add hl,bc		;bfc0
	inc c			;bfc1
	add hl,bc		;bfc2
sub_bfc3h:
	inc c			;bfc3
	ex af,af'		;bfc4
	dec bc			;bfc5
	ex af,af'		;bfc6
	dec bc			;bfc7
	ld (de),a		;bfc8
	ld de,01112h		;bfc9
	jr lbfe5h		;bfcc
	jr $+25			;bfce
	add hl,bc		;bfd0
	ld hl,02109h		;bfd1
	ex af,af'		;bfd4
	dec e			;bfd5
	ex af,af'		;bfd6
	dec e			;bfd7
	ld (de),a		;bfd8
	add hl,de		;bfd9
	ld a,(de)		;bfda
	add hl,de		;bfdb
	jr $+35			;bfdc
	dec de			;bfde
	ld hl,lbdbch		;bfdf
	rrca			;bfe2
	rrca			;bfe3
	cp d			;bfe4
lbfe5h:
	cp e			;bfe5
	djnz lbff8h		;bfe6
	dec h			;bfe8
	dec h			;bfe9
	dec h			;bfea
	dec h			;bfeb
	dec h			;bfec
	dec h			;bfed
	dec h			;bfee
	dec h			;bfef
	cp h			;bff0
	cp l			;bff1
	cp (hl)			;bff2
	cp (hl)			;bff3
	cp d			;bff4
	cp e			;bff5
	push bc			;bff6
	push bc			;bff7
lbff8h:
	cp b			;bff8
	cp c			;bff9
	ld bc,lb804h		;bffa
	cp c			;bffd
	ld c,00dh		;bffe
