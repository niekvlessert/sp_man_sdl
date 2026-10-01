; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank08_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank08.bin

	org 0a000h

	sbc a,d			;a000
	dec de			;a001
	sub a			;a002
	sbc a,b			;a003
	sbc a,e			;a004
	sbc a,h			;a005
	inc e			;a006
	sbc a,l			;a007
	sbc a,(hl)		;a008
	sbc a,c			;a009
	sbc a,d			;a00a
	dec de			;a00b
	sub a			;a00c
	ld l,a			;a00d
	sbc a,e			;a00e
	sbc a,h			;a00f
	rst 30h			;a010
	nop			;a011
	add hl,bc		;a012
	dec b			;a013
	ld (bc),a		;a014
	xor (hl)		;a015
	xor a			;a016
	sbc a,c			;a017
	sbc a,d			;a018
	dec de			;a019
	sub a			;a01a
	sbc a,b			;a01b
	sbc a,e			;a01c
	sbc a,h			;a01d
	inc e			;a01e
	sbc a,l			;a01f
	sbc a,(hl)		;a020
	sbc a,c			;a021
	sbc a,d			;a022
	dec de			;a023
	sub a			;a024
	sbc a,b			;a025
	sbc a,e			;a026
	sbc a,h			;a027
	inc e			;a028
	sbc a,l			;a029
	sbc a,(hl)		;a02a
	sbc a,c			;a02b
	sbc a,d			;a02c
	dec de			;a02d
	sub a			;a02e
	sbc a,b			;a02f
	sbc a,e			;a030
	sbc a,h			;a031
	inc e			;a032
	sbc a,l			;a033
	sbc a,(hl)		;a034
	sbc a,c			;a035
	sbc a,d			;a036
	dec de			;a037
	sub a			;a038
	ld l,a			;a039
	sbc a,e			;a03a
	sbc a,h			;a03b
	inc e			;a03c
	sbc a,l			;a03d
	sbc a,(hl)		;a03e
	scf			;a03f
	jr nc,la042h		;a040
la042h:
	nop			;a042
	ld bc,00605h		;a043
	xor e			;a046
	xor h			;a047
	xor l			;a048
	sbc a,h			;a049
	nop			;a04a
	nop			;a04b
	ld (bc),a		;a04c
	dec b			;a04d
	dec de			;a04e
	sub a			;a04f
	ld l,a			;a050
	sbc a,c			;a051
	sbc a,d			;a052
	ld b,0abh		;a053
	xor h			;a055
	xor l			;a056
	sbc a,h			;a057
	nop			;a058
	nop			;a059
	inc bc			;a05a
	dec b			;a05b
	inc e			;a05c
	sbc a,l			;a05d
	sbc a,(hl)		;a05e
	xor l			;a05f
	sbc a,h			;a060
	dec de			;a061
	sub a			;a062
	ld l,a			;a063
	sbc a,c			;a064
	sbc a,d			;a065
	ld b,0abh		;a066
	xor h			;a068
	xor l			;a069
	sbc a,h			;a06a
	nop			;a06b
	nop			;a06c
	inc b			;a06d
	dec b			;a06e
	dec de			;a06f
	sub a			;a070
	ld l,a			;a071
	sbc a,c			;a072
	sbc a,d			;a073
	inc e			;a074
	sbc a,l			;a075
	sbc a,(hl)		;a076
	xor l			;a077
	sbc a,h			;a078
	dec de			;a079
	sub a			;a07a
	ld l,a			;a07b
	sbc a,c			;a07c
	sbc a,d			;a07d
	ld b,0abh		;a07e
	xor h			;a080
	xor l			;a081
	sbc a,h			;a082
	nop			;a083
	nop			;a084
	dec b			;a085
	dec b			;a086
	inc e			;a087
	sbc a,l			;a088
	sbc a,(hl)		;a089
	xor l			;a08a
	sbc a,h			;a08b
	dec de			;a08c
	sub a			;a08d
	ld l,a			;a08e
	sbc a,c			;a08f
	sbc a,d			;a090
	inc e			;a091
	sbc a,l			;a092
	sbc a,(hl)		;a093
	xor l			;a094
	sbc a,h			;a095
	dec de			;a096
	sub a			;a097
	ld l,a			;a098
	sbc a,c			;a099
	sbc a,d			;a09a
	ld b,0abh		;a09b
	xor h			;a09d
	xor l			;a09e
	sbc a,h			;a09f
	nop			;a0a0
	nop			;a0a1
	ld b,005h		;a0a2
	dec de			;a0a4
	ld l,(hl)		;a0a5
	ld l,a			;a0a6
	sbc a,c			;a0a7
	sbc a,d			;a0a8
	inc e			;a0a9
	sbc a,l			;a0aa
	sbc a,(hl)		;a0ab
	xor l			;a0ac
	sbc a,h			;a0ad
	dec de			;a0ae
	sub a			;a0af
	ld l,a			;a0b0
	sbc a,c			;a0b1
	sbc a,d			;a0b2
	inc e			;a0b3
	sbc a,l			;a0b4
	sbc a,(hl)		;a0b5
	xor l			;a0b6
	sbc a,h			;a0b7
	dec de			;a0b8
	sub a			;a0b9
	ld l,a			;a0ba
	sbc a,c			;a0bb
	sbc a,d			;a0bc
	ld b,0abh		;a0bd
	xor h			;a0bf
	xor l			;a0c0
	sbc a,h			;a0c1
	nop			;a0c2
	nop			;a0c3
	rlca			;a0c4
	dec b			;a0c5
	inc e			;a0c6
	sbc a,l			;a0c7
	sbc a,(hl)		;a0c8
	xor l			;a0c9
	sbc a,h			;a0ca
	dec de			;a0cb
	ld l,(hl)		;a0cc
	ld l,a			;a0cd
	sbc a,c			;a0ce
	sbc a,d			;a0cf
	inc e			;a0d0
	sbc a,l			;a0d1
	sbc a,(hl)		;a0d2
	xor l			;a0d3
	sbc a,h			;a0d4
	dec de			;a0d5
	sub a			;a0d6
	ld l,a			;a0d7
	sbc a,c			;a0d8
	sbc a,d			;a0d9
	inc e			;a0da
	sbc a,l			;a0db
	sbc a,(hl)		;a0dc
	xor l			;a0dd
	sbc a,h			;a0de
	dec de			;a0df
	sub a			;a0e0
	ld l,a			;a0e1
	sbc a,c			;a0e2
	sbc a,d			;a0e3
	ld b,0abh		;a0e4
	xor h			;a0e6
	xor l			;a0e7
	sbc a,h			;a0e8
	nop			;a0e9
	nop			;a0ea
	rlca			;a0eb
	inc b			;a0ec
	ld h,(hl)		;a0ed
	ld h,a			;a0ee
	ld h,b			;a0ef
	ld h,c			;a0f0
	ld l,b			;a0f1
	ld l,c			;a0f2
	ld h,d			;a0f3
	ld h,e			;a0f4
	ld (bc),a		;a0f5
	ld l,d			;a0f6
	jp z,00464h		;a0f7
	ret			;a0fa
	ret z			;a0fb
	push bc			;a0fc
	dec b			;a0fd
	adc a,d			;a0fe
	call z,08884h		;a0ff
	adc a,c			;a102
	add a,d			;a103
	add a,e			;a104
	add a,(hl)		;a105
	add a,a			;a106
	add a,b			;a107
	add a,c			;a108
	nop			;a109
	nop			;a10a
	rlca			;a10b
	inc b			;a10c
	ld l,e			;a10d
	ld l,h			;a10e
	ld h,b			;a10f
	ld h,c			;a110
	ld l,l			;a111
	ld l,(hl)		;a112
	ld h,d			;a113
	ld h,e			;a114
	inc bc			;a115
	jp z,065cbh		;a116
	ret			;a119
	ret z			;a11a
	rst 0			;a11b
	add a,003h		;a11c
	call z,085cdh		;a11e
	adc a,l			;a121
	adc a,(hl)		;a122
	add a,d			;a123
	add a,e			;a124
	adc a,e			;a125
	adc a,h			;a126
	add a,b			;a127
	add a,c			;a128
	nop			;a129
	nop			;a12a
	rlca			;a12b
	inc b			;a12c
	ld l,a			;a12d
	ld (hl),b		;a12e
	ld h,b			;a12f
	ld h,c			;a130
	ld (hl),c		;a131
	ld (hl),d		;a132
	ld h,d			;a133
	ld h,e			;a134
	ld (hl),e		;a135
	ld (hl),h		;a136
	ld (hl),l		;a137
	ld h,h			;a138
	ld (bc),a		;a139
	ex af,af'		;a13a
	ret			;a13b
	push bc			;a13c
	sub e			;a13d
	sub h			;a13e
	sub l			;a13f
	add a,h			;a140
	sub c			;a141
	sub d			;a142
	add a,d			;a143
	add a,e			;a144
	adc a,a			;a145
	sub b			;a146
	add a,b			;a147
	add a,c			;a148
	nop			;a149
	nop			;a14a
	dec c			;a14b
	ex af,af'		;a14c
	dec hl			;a14d
	inc l			;a14e
	ld d,(hl)		;a14f
	ld d,a			;a150
	add a,e			;a151
	sbc a,c			;a152
	cp (hl)			;a153
	cp l			;a154
	add a,l			;a155
	add a,(hl)		;a156
	or e			;a157
	add a,a			;a158
	cp a			;a159
	ld e,c			;a15a
	ld e,h			;a15b
	ld e,l			;a15c
	and e			;a15d
	ld d,c			;a15e
	add hl,hl		;a15f
	and l			;a160
	sbc a,b			;a161
	cp h			;a162
	cp (hl)			;a163
	and e			;a164
	dec b			;a165
	ld b,0bch		;a166
	cp l			;a168
	cp l			;a169
	cp (hl)			;a16a
	ld (bc),a		;a16b
	dec b			;a16c
	rlca			;a16d
	ld b,001h		;a16e
	dec b			;a170
	ld bc,00302h		;a171
	ld (bc),a		;a174
	ld (bc),a		;a175
	inc b			;a176
	rlca			;a177
	ld b,003h		;a178
	inc b			;a17a
	ld b,004h		;a17b
	inc bc			;a17d
	rlca			;a17e
	dec b			;a17f
	rlca			;a180
	ld (bc),a		;a181
	inc b			;a182
	ld (bc),a		;a183
	inc b			;a184
	ld b,003h		;a185
	dec b			;a187
	inc b			;a188
	rlca			;a189
	ld (bc),a		;a18a
	inc bc			;a18b
	dec b			;a18c
	ld (bc),a		;a18d
	inc b			;a18e
	inc bc			;a18f
	rlca			;a190
	inc b			;a191
	inc bc			;a192
	ld b,007h		;a193
	rlca			;a195
	ld b,001h		;a196
	and e			;a198
	cp e			;a199
	inc bc			;a19a
	ld b,004h		;a19b
	and e			;a19d
	sbc a,c			;a19e
	and b			;a19f
	and l			;a1a0
	and (hl)		;a1a1
	and e			;a1a2
	or b			;a1a3
	xor a			;a1a4
	add a,l			;a1a5
	add a,(hl)		;a1a6
sub_a1a7h:
	or b			;a1a7
	add a,a			;a1a8
	cp e			;a1a9
	cp l			;a1aa
	adc a,l			;a1ab
	adc a,(hl)		;a1ac
	dec hl			;a1ad
	inc l			;a1ae
	adc a,b			;a1af
	ld d,a			;a1b0
	adc a,a			;a1b1
	cp h			;a1b2
	cp (hl)			;a1b3
	cp a			;a1b4
	nop			;a1b5
	nop			;a1b6
	rlca			;a1b7
	ex af,af'		;a1b8
	nop			;a1b9
	nop			;a1ba
	nop			;a1bb
	nop			;a1bc
	ld (bc),a		;a1bd
	ld (de),a		;a1be
	ld d,018h		;a1bf
	nop			;a1c1
	ld b,010h		;a1c2
	inc a			;a1c4
	ld c,(hl)		;a1c5
	dec a			;a1c6
	ccf			;a1c7
	inc sp			;a1c8
	nop			;a1c9
	ld de,02220h		;a1ca
	ld hl,(0303eh)		;a1cd
	ld h,007h		;a1d0
	ld b,a			;a1d2
	dec e			;a1d3
	ld d,h			;a1d4
	dec hl			;a1d5
	ld b,b			;a1d6
	scf			;a1d7
	inc sp			;a1d8
	ex af,af'		;a1d9
	ld c,b			;a1da
	ld e,024h		;a1db
	ld c,h			;a1dd
	ld (hl),039h		;a1de
	inc sp			;a1e0
	add hl,bc		;a1e1
	ld b,h			;a1e2
	ld hl,02f56h		;a1e3
	ld sp,00032h		;a1e6
	nop			;a1e9
	nop			;a1ea
	inc bc			;a1eb
	rla			;a1ec
	inc d			;a1ed
	inc (hl)		;a1ee
	nop			;a1ef
	nop			;a1f0
	nop			;a1f1
	nop			;a1f2
	rlca			;a1f3
	ex af,af'		;a1f4
	nop			;a1f5
	nop			;a1f6
	dec bc			;a1f7
	inc c			;a1f8
	dec b			;a1f9
	dec (hl)		;a1fa
	ld d,c			;a1fb
	nop			;a1fc
	nop			;a1fd
	ld a,(bc)		;a1fe
	ld b,e			;a1ff
	ld d,e			;a200
	ld b,c			;a201
	ld b,(hl)		;a202
	ld a,(00d27h)		;a203
	ld c,l			;a206
	dec de			;a207
	inc hl			;a208
	dec h			;a209
	ld b,d			;a20a
	inc l			;a20b
	jr z,la21ch		;a20c
	ld c,c			;a20e
	inc e			;a20f
	ld c,a			;a210
	ld c,d			;a211
	jr c,la266h		;a212
	inc sp			;a214
	rrca			;a215
	ld a,(de)		;a216
	rra			;a217
	ld d,l			;a218
	ld c,e			;a219
	add hl,hl		;a21a
	ld b,l			;a21b
la21ch:
	inc sp			;a21c
	nop			;a21d
	inc b			;a21e
	ld bc,03b50h		;a21f
	ld l,02dh		;a222
	nop			;a224
	nop			;a225
	nop			;a226
	nop			;a227
	nop			;a228
	dec d			;a229
	add hl,de		;a22a
	inc de			;a22b
	nop			;a22c
	nop			;a22d
	nop			;a22e
	inc bc			;a22f
	dec b			;a230
	and h			;a231
	and (hl)		;a232
	and e			;a233
	call nz,sub_a1a7h	;a234
	jp 0c8c6h		;a237
	ld d,a			;a23a
	and l			;a23b
	push bc			;a23c
	rst 0			;a23d
	ret			;a23e
	ld d,(hl)		;a23f
	nop			;a240
	nop			;a241
	inc bc			;a242
	dec b			;a243
	and l			;a244
	push bc			;a245
	rst 0			;a246
	ret			;a247
	ld d,(hl)		;a248
	and c			;a249
	jp 0c8c6h		;a24a
	ld d,a			;a24d
	and h			;a24e
	and (hl)		;a24f
	and e			;a250
	call nz,000a7h		;a251
	nop			;a254
	djnz la262h		;a255
	nop			;a257
	nop			;a258
	ld bc,02120h		;a259
	ld (02423h),hl		;a25c
	dec h			;a25f
	ld h,027h		;a260
la262h:
	nop			;a262
	nop			;a263
	nop			;a264
	inc c			;a265
la266h:
	add hl,hl		;a266
	ld hl,(02c2bh)		;a267
	dec l			;a26a
	ld l,02fh		;a26b
	ld c,00eh		;a26d
	dec (hl)		;a26f
	ld (hl),037h		;a270
	jr c,la2adh		;a272
	ld a,(03c3bh)		;a274
	dec a			;a277
	sbc a,d			;a278
	sbc a,d			;a279
	xor e			;a27a
	xor l			;a27b
	ld b,(hl)		;a27c
	ld b,a			;a27d
	ld c,b			;a27e
	ld c,c			;a27f
	ld c,d			;a280
	ld c,e			;a281
	ld c,h			;a282
	sbc a,e			;a283
	sbc a,e			;a284
	xor e			;a285
	xor l			;a286
	ld d,(hl)		;a287
	ld d,a			;a288
	ld e,b			;a289
	ld e,c			;a28a
	ld e,d			;a28b
	ld e,e			;a28c
	ld e,h			;a28d
	sbc a,h			;a28e
	sbc a,h			;a28f
	xor e			;a290
	xor l			;a291
	ld h,a			;a292
	ld l,b			;a293
	ld l,c			;a294
	ld l,d			;a295
	ld l,d			;a296
	ld l,e			;a297
	ld l,h			;a298
	xor b			;a299
	xor b			;a29a
	xor e			;a29b
	xor l			;a29c
	ld (hl),a		;a29d
	xor (hl)		;a29e
	add a,l			;a29f
	add a,(hl)		;a2a0
	add a,a			;a2a1
	xor d			;a2a2
	or (hl)			;a2a3
	and a			;a2a4
	and a			;a2a5
	xor e			;a2a6
	xor l			;a2a7
	xor h			;a2a8
	xor a			;a2a9
	add a,h			;a2aa
	adc a,b			;a2ab
	adc a,c			;a2ac
la2adh:
	adc a,d			;a2ad
	xor a			;a2ae
	and (hl)		;a2af
	and (hl)		;a2b0
	xor e			;a2b1
	xor l			;a2b2
	xor h			;a2b3
	xor (hl)		;a2b4
	add a,h			;a2b5
	adc a,b			;a2b6
	adc a,c			;a2b7
	add a,a			;a2b8
	xor (hl)		;a2b9
	and l			;a2ba
	and l			;a2bb
	xor e			;a2bc
	xor l			;a2bd
	ld (hl),a		;a2be
	xor a			;a2bf
	add a,l			;a2c0
	add a,(hl)		;a2c1
	add a,l			;a2c2
	adc a,d			;a2c3
	or (hl)			;a2c4
	sbc a,h			;a2c5
	sbc a,h			;a2c6
	xor e			;a2c7
	xor l			;a2c8
	ld h,a			;a2c9
	ld l,b			;a2ca
	ld l,c			;a2cb
	ld l,d			;a2cc
	ld l,d			;a2cd
	ld l,e			;a2ce
	ld l,h			;a2cf
	sbc a,e			;a2d0
	sbc a,e			;a2d1
	xor e			;a2d2
	xor l			;a2d3
	ld d,(hl)		;a2d4
	ld d,a			;a2d5
	ld e,b			;a2d6
	ld e,c			;a2d7
	ld e,d			;a2d8
	ld e,e			;a2d9
	ld e,h			;a2da
	sbc a,d			;a2db
	sbc a,d			;a2dc
	xor e			;a2dd
	xor l			;a2de
	ld b,(hl)		;a2df
	ld b,a			;a2e0
	ld c,b			;a2e1
	ld c,c			;a2e2
	ld c,d			;a2e3
	ld c,e			;a2e4
	ld c,h			;a2e5
	ld c,00eh		;a2e6
	dec (hl)		;a2e8
	ld (hl),037h		;a2e9
	jr c,$+59		;a2eb
	ld a,(03c3bh)		;a2ed
	dec a			;a2f0
	nop			;a2f1
	nop			;a2f2
	nop			;a2f3
	inc c			;a2f4
	add hl,hl		;a2f5
	ld hl,(02c2bh)		;a2f6
	dec l			;a2f9
	ld l,02fh		;a2fa
	nop			;a2fc
	nop			;a2fd
	ld bc,02120h		;a2fe
	ld (02423h),hl		;a301
	dec h			;a304
	ld h,027h		;a305
	nop			;a307
	nop			;a308
	rlca			;a309
	ex af,af'		;a30a
	nop			;a30b
	ld bc,00302h		;a30c
	nop			;a30f
	nop			;a310
	nop			;a311
	nop			;a312
	inc b			;a313
	jr nz,$+35		;a314
	dec b			;a316
	nop			;a317
	nop			;a318
	nop			;a319
	nop			;a31a
	ld b,022h		;a31b
	inc hl			;a31d
	inc h			;a31e
	rlca			;a31f
	nop			;a320
	nop			;a321
	nop			;a322
	ex af,af'		;a323
	dec h			;a324
	ld h,027h		;a325
	add hl,bc		;a327
	nop			;a328
	nop			;a329
	nop			;a32a
	ld a,(bc)		;a32b
	jr z,la357h		;a32c
	ld hl,(00b2bh)		;a32e
	nop			;a331
	nop			;a332
	nop			;a333
	inc l			;a334
	dec l			;a335
	ld l,02fh		;a336
	inc c			;a338
	nop			;a339
	nop			;a33a
	dec c			;a33b
	jr nc,la36fh		;a33c
	ld (03433h),a		;a33e
	ld c,00fh		;a341
	nop			;a343
	nop			;a344
	rlca			;a345
	ex af,af'		;a346
	dec c			;a347
	jr nc,la37bh		;a348
	ld (03433h),a		;a34a
	ld c,00fh		;a34d
	nop			;a34f
	inc l			;a350
	dec l			;a351
	ld l,02fh		;a352
	inc c			;a354
	nop			;a355
	nop			;a356
la357h:
	ld a,(bc)		;a357
	jr z,la383h		;a358
	ld hl,(00b2bh)		;a35a
	nop			;a35d
	nop			;a35e
	ex af,af'		;a35f
	dec h			;a360
	ld h,027h		;a361
	add hl,bc		;a363
	nop			;a364
	nop			;a365
	nop			;a366
	ld b,022h		;a367
	inc hl			;a369
	inc h			;a36a
	rlca			;a36b
	nop			;a36c
	nop			;a36d
	nop			;a36e
la36fh:
	inc b			;a36f
	jr nz,$+35		;a370
	dec b			;a372
	nop			;a373
	nop			;a374
	nop			;a375
	nop			;a376
	nop			;a377
	ld bc,00302h		;a378
la37bh:
	nop			;a37b
	nop			;a37c
	nop			;a37d
	nop			;a37e
	nop			;a37f
	nop			;a380
	djnz la38fh		;a381
la383h:
	jr z,la3adh		;a383
	ld (bc),a		;a385
	inc bc			;a386
	inc b			;a387
	dec b			;a388
	nop			;a389
	nop			;a38a
	nop			;a38b
	nop			;a38c
	nop			;a38d
	nop			;a38e
la38fh:
	jr nc,la3c1h		;a38f
	ld sp,03332h		;a391
	inc (hl)		;a394
	ld b,007h		;a395
	nop			;a397
	nop			;a398
	nop			;a399
	nop			;a39a
	ld a,03fh		;a39b
	ld b,b			;a39d
	ld b,c			;a39e
	ld b,d			;a39f
	ld b,e			;a3a0
	ld b,h			;a3a1
	ld b,l			;a3a2
	ex af,af'		;a3a3
	nop			;a3a4
	nop			;a3a5
	nop			;a3a6
	ld c,l			;a3a7
	ld c,(hl)		;a3a8
	ld c,a			;a3a9
	ld d,b			;a3aa
	ld d,c			;a3ab
	ld d,d			;a3ac
la3adh:
	ld d,e			;a3ad
	ld d,h			;a3ae
	ld d,l			;a3af
	add hl,bc		;a3b0
	nop			;a3b1
	nop			;a3b2
	ld e,l			;a3b3
	ld e,(hl)		;a3b4
	ld e,a			;a3b5
	ld h,b			;a3b6
	ld h,c			;a3b7
	ld h,d			;a3b8
	ld h,e			;a3b9
	ld h,h			;a3ba
	ld h,l			;a3bb
	ld h,(hl)		;a3bc
	ld a,(bc)		;a3bd
	nop			;a3be
	ld l,l			;a3bf
	ld l,(hl)		;a3c0
la3c1h:
	ld l,a			;a3c1
	ld l,a			;a3c2
	ld (hl),b		;a3c3
	ld (hl),c		;a3c4
	ld (hl),d		;a3c5
	ld (hl),e		;a3c6
	ld (hl),h		;a3c7
	ld (hl),l		;a3c8
	halt			;a3c9
	dec bc			;a3ca
	ld a,d			;a3cb
	ld a,e			;a3cc
	ld a,h			;a3cd
	ld a,h			;a3ce
	ld a,l			;a3cf
	ld a,(hl)		;a3d0
	ld a,a			;a3d1
	add a,c			;a3d2
	add a,d			;a3d3
	add a,e			;a3d4
	add a,e			;a3d5
	dec c			;a3d6
	adc a,e			;a3d7
	adc a,h			;a3d8
	adc a,l			;a3d9
	adc a,(hl)		;a3da
	adc a,a			;a3db
	sub b			;a3dc
	sub c			;a3dd
	xor d			;a3de
	ld (hl),a		;a3df
	ld a,h			;a3e0
	nop			;a3e1
	nop			;a3e2
	adc a,e			;a3e3
	adc a,h			;a3e4
	adc a,l			;a3e5
	adc a,(hl)		;a3e6
	adc a,a			;a3e7
	sub b			;a3e8
	sub c			;a3e9
	xor d			;a3ea
	ld (hl),a		;a3eb
	ld a,h			;a3ec
	nop			;a3ed
	nop			;a3ee
	ld a,d			;a3ef
	ld a,e			;a3f0
	ld a,h			;a3f1
	ld a,h			;a3f2
	ld a,l			;a3f3
	ld a,(hl)		;a3f4
	ld a,a			;a3f5
	add a,c			;a3f6
	add a,d			;a3f7
	add a,e			;a3f8
	add a,e			;a3f9
	dec c			;a3fa
	ld l,l			;a3fb
	ld l,(hl)		;a3fc
	ld l,a			;a3fd
	ld l,a			;a3fe
	ld (hl),b		;a3ff
	ld (hl),c		;a400
	ld (hl),d		;a401
	ld (hl),e		;a402
	ld (hl),h		;a403
	ld (hl),l		;a404
	halt			;a405
	dec bc			;a406
	ld e,l			;a407
	ld e,(hl)		;a408
	ld e,a			;a409
	ld h,b			;a40a
	ld h,c			;a40b
	ld h,d			;a40c
	ld h,e			;a40d
	ld h,h			;a40e
	ld h,l			;a40f
	ld h,(hl)		;a410
	ld a,(bc)		;a411
	nop			;a412
	ld c,l			;a413
	ld c,(hl)		;a414
	ld c,a			;a415
	ld d,b			;a416
	ld d,c			;a417
	ld d,d			;a418
	ld d,e			;a419
	ld d,h			;a41a
	ld d,l			;a41b
	add hl,bc		;a41c
	nop			;a41d
	nop			;a41e
	ld a,03fh		;a41f
	ld b,b			;a421
	ld b,c			;a422
	ld b,d			;a423
	ld b,e			;a424
	ld b,h			;a425
	ld b,l			;a426
	ex af,af'		;a427
	nop			;a428
	nop			;a429
	nop			;a42a
	jr nc,la45dh		;a42b
	ld sp,03332h		;a42d
	inc (hl)		;a430
	ld b,007h		;a431
	nop			;a433
	nop			;a434
	nop			;a435
	nop			;a436
	jr z,la461h		;a437
	ld (bc),a		;a439
	inc bc			;a43a
	inc b			;a43b
	dec b			;a43c
	nop			;a43d
	nop			;a43e
	nop			;a43f
	nop			;a440
	nop			;a441
	nop			;a442
	nop			;a443
	nop			;a444
	inc c			;a445
	ld (bc),a		;a446
	rrca			;a447
	rrca			;a448
	sub d			;a449
	sub d			;a44a
	sub e			;a44b
	sub e			;a44c
	sbc a,l			;a44d
	sbc a,l			;a44e
	sbc a,(hl)		;a44f
	sbc a,(hl)		;a450
	sbc a,a			;a451
	sbc a,a			;a452
	xor c			;a453
	xor c			;a454
	xor b			;a455
	xor b			;a456
	and a			;a457
	and a			;a458
	and d			;a459
	and d			;a45a
	and c			;a45b
	and c			;a45c
la45dh:
	rrca			;a45d
	rrca			;a45e
	nop			;a45f
	nop			;a460
la461h:
	inc c			;a461
	ld (bc),a		;a462
	djnz la475h		;a463
	sub h			;a465
	sub h			;a466
	sub l			;a467
	sub l			;a468
	sub (hl)		;a469
	sub (hl)		;a46a
	xor c			;a46b
	xor c			;a46c
	xor b			;a46d
	xor b			;a46e
	and a			;a46f
	and a			;a470
	and b			;a471
	and b			;a472
	sub h			;a473
	sub h			;a474
la475h:
	sub e			;a475
	sub e			;a476
	sub d			;a477
	sub d			;a478
	djnz la48bh		;a479
	nop			;a47b
	nop			;a47c
	inc c			;a47d
	ld (bc),a		;a47e
	ld de,09711h		;a47f
	sub a			;a482
	sbc a,b			;a483
	sbc a,b			;a484
	sbc a,c			;a485
	sbc a,c			;a486
	and b			;a487
	and b			;a488
	and (hl)		;a489
	and (hl)		;a48a
la48bh:
	and l			;a48b
	and l			;a48c
	xor c			;a48d
	xor c			;a48e
	sub a			;a48f
	sub a			;a490
	sub (hl)		;a491
	sub (hl)		;a492
	sub l			;a493
	sub l			;a494
	ld de,00011h		;a495
	nop			;a498
	inc c			;a499
	ld (bc),a		;a49a
	ld (de),a		;a49b
	ld (de),a		;a49c
	and c			;a49d
	and c			;a49e
	and d			;a49f
	and d			;a4a0
	and (hl)		;a4a1
	and (hl)		;a4a2
	and l			;a4a3
	and l			;a4a4
	xor c			;a4a5
	xor c			;a4a6
	sbc a,a			;a4a7
	sbc a,a			;a4a8
	sbc a,(hl)		;a4a9
	sbc a,(hl)		;a4aa
	sbc a,l			;a4ab
	sbc a,l			;a4ac
	sbc a,c			;a4ad
	sbc a,c			;a4ae
	sbc a,b			;a4af
	sbc a,b			;a4b0
	ld (de),a		;a4b1
	ld (de),a		;a4b2
	ld b,0ffh		;a4b3
	inc b			;a4b5
	ld bc,01b1ah		;a4b6
	dec de			;a4b9
	ld a,(de)		;a4ba
	ld b,0ffh		;a4bb
	inc b			;a4bd
	ld bc,01c1dh		;a4be
	inc e			;a4c1
	dec e			;a4c2
	nop			;a4c3
	nop			;a4c4
	inc b			;a4c5
	ld bc,01913h		;a4c6
	add hl,de		;a4c9
	inc de			;a4ca
	nop			;a4cb
	nop			;a4cc
	inc b			;a4cd
	ld (bc),a		;a4ce
	inc de			;a4cf
	inc d			;a4d0
	add hl,de		;a4d1
	and e			;a4d2
	add hl,de		;a4d3
	and e			;a4d4
	inc de			;a4d5
	inc d			;a4d6
	nop			;a4d7
	nop			;a4d8
	ld b,002h		;a4d9
	nop			;a4db
	rla			;a4dc
	dec d			;a4dd
	and h			;a4de
	ld d,018h		;a4df
	ld d,018h		;a4e1
	dec d			;a4e3
	and h			;a4e4
	nop			;a4e5
	rla			;a4e6
	nop			;a4e7
	nop			;a4e8
	ld b,002h		;a4e9
	inc de			;a4eb
	inc d			;a4ec
	add hl,de		;a4ed
	and e			;a4ee
	nop			;a4ef
	nop			;a4f0
	nop			;a4f1
	nop			;a4f2
	add hl,de		;a4f3
	and e			;a4f4
	inc de			;a4f5
	inc d			;a4f6
	nop			;a4f7
	nop			;a4f8
	ex af,af'		;a4f9
	ld (bc),a		;a4fa
	nop			;a4fb
	rla			;a4fc
	dec d			;a4fd
	and h			;a4fe
	ld d,018h		;a4ff
	nop			;a501
	nop			;a502
	nop			;a503
	nop			;a504
	ld d,018h		;a505
	dec d			;a507
	and h			;a508
	nop			;a509
	rla			;a50a
	ld b,007h		;a50b
	inc b			;a50d
	ld bc,lb1b0h		;a50e
	or b			;a511
	or c			;a512
	ld b,007h		;a513
	inc b			;a515
	ld bc,lb3b2h		;a516
	or d			;a519
	or e			;a51a
	ld b,007h		;a51b
	inc b			;a51d
	ld bc,lb5b4h		;a51e
	or h			;a521
	or l			;a522
	ld b,00ch		;a523
	inc b			;a525
	ld bc,lb1b7h		;a526
	or b			;a529
	or a			;a52a
	ld b,00ch		;a52b
	inc b			;a52d
	ld bc,lb3b8h		;a52e
	or d			;a531
	cp b			;a532
	ld b,00ch		;a533
	inc b			;a535
	ld bc,lb5b9h		;a536
	or h			;a539
	cp c			;a53a
	ld b,001h		;a53b
	inc b			;a53d
	ld bc,0c8c8h		;a53e
	ret z			;a541
	ret z			;a542
	ld b,000h		;a543
	inc b			;a545
	ld (bc),a		;a546
	ret z			;a547
	ret			;a548
	ret z			;a549
	ret			;a54a
	ret z			;a54b
	ret			;a54c
	ret z			;a54d
	ret			;a54e
	ld b,0ffh		;a54f
	inc b			;a551
	inc bc			;a552
	ret z			;a553
	ret			;a554
	jp z,0c9c8h		;a555
	jp z,0c9c8h		;a558
	jp z,0c9c8h		;a55b
	jp z,0fe06h		;a55e
	inc b			;a561
	inc b			;a562
	ret z			;a563
	ret			;a564
	jp z,0c8c8h		;a565
	ret			;a568
	jp z,0c8c8h		;a569
	ret			;a56c
	jp z,0c8c8h		;a56d
	ret			;a570
	jp z,006c8h		;a571
	defb 0fdh,004h,005h ;illegal sequence	;a574
	ret z			;a577
	ret			;a578
	jp z,0c9c8h		;a579
	ret z			;a57c
	ret			;a57d
	jp z,0c9c8h		;a57e
	ret z			;a581
	ret			;a582
	jp z,0c9c8h		;a583
	ret z			;a586
	ret			;a587
	jp z,0c9c8h		;a588
	ld b,0fch		;a58b
	inc b			;a58d
	ld b,0c8h		;a58e
	ret			;a590
	jp z,0c9c8h		;a591
	jp z,0c9c8h		;a594
	jp z,0c9c8h		;a597
	jp z,0c9c8h		;a59a
	jp z,0c9c8h		;a59d
	jp z,0c9c8h		;a5a0
	jp z,0c9c8h		;a5a3
	jp z,0fb06h		;a5a6
	inc b			;a5a9
	rlca			;a5aa
	ret			;a5ab
	jp z,0c9c8h		;a5ac
	jp z,0c9c8h		;a5af
	ret			;a5b2
	jp z,0c9c8h		;a5b3
	jp z,0c9c8h		;a5b6
	ret			;a5b9
	jp z,0c9c8h		;a5ba
	jp z,0c9c8h		;a5bd
	ret			;a5c0
	jp z,0c9c8h		;a5c1
	jp z,0c9c8h		;a5c4
	ld b,0fbh		;a5c7
	inc b			;a5c9
	rlca			;a5ca
	jp z,0c9c8h		;a5cb
	jp z,0c9c8h		;a5ce
	jp z,0c8cah		;a5d1
	ret			;a5d4
	jp z,0c9c8h		;a5d5
	jp z,0c8cah		;a5d8
	ret			;a5db
	jp z,0c9c8h		;a5dc
	jp z,0c8cah		;a5df
	ret			;a5e2
	jp z,0c9c8h		;a5e3
	jp z,0fb06h		;a5e6
	inc b			;a5e9
	rlca			;a5ea
	ret z			;a5eb
	ret			;a5ec
	jp z,0c9c8h		;a5ed
	jp z,0c8c8h		;a5f0
	ret			;a5f3
	jp z,0c9c8h		;a5f4
	jp z,0c8c8h		;a5f7
	ret			;a5fa
	jp z,0c9c8h		;a5fb
	jp z,0c8c8h		;a5fe
	ret			;a601
	jp z,0c9c8h		;a602
	jp z,007c8h		;a605
	ld c,002h		;a608
	inc b			;a60a
	ret nz			;a60b
	call nz,0c1c7h		;a60c
	ret nz			;a60f
	call nz,0c1c7h		;a610
	rlca			;a613
	ld c,002h		;a614
	inc b			;a616
	ret nz			;a617
	jp 0c1c6h		;a618
	ret nz			;a61b
	jp 0c1c6h		;a61c
	rlca			;a61f
	ld c,002h		;a620
	inc b			;a622
	ret nz			;a623
	jp nz,0c1c5h		;a624
	ret nz			;a627
	jp nz,0c1c5h		;a628
	ld a,h			;a62b
	and (hl)		;a62c
	adc a,a			;a62d
	and (hl)		;a62e
	xor a			;a62f
	and (hl)		;a630
	ex (sp),hl		;a631
	and (hl)		;a632
	ld b,c			;a633
	and a			;a634
	ld (hl),a		;a635
	and (hl)		;a636
	ld a,h			;a637
	and (hl)		;a638
	adc a,a			;a639
	and (hl)		;a63a
	xor a			;a63b
	and (hl)		;a63c
	ex (sp),hl		;a63d
	and (hl)		;a63e
	ld b,c			;a63f
	and a			;a640
	ld a,h			;a641
	and (hl)		;a642
	adc a,a			;a643
	and (hl)		;a644
	xor a			;a645
	and (hl)		;a646
	ld c,l			;a647
	sub c			;a648
	ld e,c			;a649
	sub c			;a64a
	and c			;a64b
	sub b			;a64c
	add hl,de		;a64d
	sub (hl)		;a64e
	dec h			;a64f
	sub (hl)		;a650
	ld (hl),c		;a651
	sub (hl)		;a652
	ld d,c			;a653
	adc a,l			;a654
	ld d,c			;a655
	adc a,l			;a656
	add hl,sp		;a657
	adc a,l			;a658
	sub l			;a659
	adc a,l			;a65a
	cp e			;a65b
	sub a			;a65c
	add hl,de		;a65d
	sub a			;a65e
	add a,l			;a65f
	and a			;a660
	and a			;a661
	and a			;a662
	xor (hl)		;a663
	and a			;a664
	ret nc			;a665
	and a			;a666
	ld b,0a8h		;a667
	inc c			;a669
	xor b			;a66a
	ld b,d			;a66b
	xor b			;a66c
	adc a,h			;a66d
	xor b			;a66e
	xor b			;a66f
	xor b			;a670
	ld b,0a9h		;a671
	ld l,(hl)		;a673
	xor c			;a674
	or c			;a675
	xor c			;a676
	nop			;a677
	nop			;a678
	ld bc,00001h		;a679
	nop			;a67c
	nop			;a67d
	inc bc			;a67e
	dec b			;a67f
	nop			;a680
	xor 0efh		;a681
	ret p			;a683
	nop			;a684
	ex de,hl		;a685
	jp p,0fdfah		;a686
	defb 0edh ;next byte illegal after ed	;a689
	nop			;a68a
	call p,0ecf6h		;a68b
	nop			;a68e
	nop			;a68f
	nop			;a690
	inc b			;a691
	rlca			;a692
	nop			;a693
	nop			;a694
	xor 0efh		;a695
	rst 28h			;a697
	ret p			;a698
	nop			;a699
	nop			;a69a
	xor 0f7h		;a69b
	jp m,0f3f8h		;a69d
	defb 0edh ;next byte illegal after ed	;a6a0
	ex de,hl		;a6a1
	jp p,0fbfbh		;a6a2
	call m,0edf9h		;a6a5
	nop			;a6a8
	call p,0f5f6h		;a6a9
	or 0ech			;a6ac
	nop			;a6ae
	nop			;a6af
	nop			;a6b0
	ld b,008h		;a6b1
	nop			;a6b3
	nop			;a6b4
	xor 0efh		;a6b5
	rst 28h			;a6b7
	ret p			;a6b8
	nop			;a6b9
	nop			;a6ba
	nop			;a6bb
	xor 0f7h		;a6bc
	ret m			;a6be
	ret m			;a6bf
	di			;a6c0
	ret p			;a6c1
	nop			;a6c2
	nop			;a6c3
	pop af			;a6c4
	rst 30h			;a6c5
	jp m,0fcf8h		;a6c6
	defb 0fdh,0edh,0ebh ;illegal sequence	;a6c9
	jp p,0fcfbh		;a6cc
	call m,0ecfdh		;a6cf
	nop			;a6d2
	ex de,hl		;a6d3
	jp p,0fcfbh		;a6d4
	call m,0edf9h		;a6d7
	nop			;a6da
	nop			;a6db
	call p,0f5f6h		;a6dc
	or 0ech			;a6df
	nop			;a6e1
	nop			;a6e2
	nop			;a6e3
	nop			;a6e4
	add hl,bc		;a6e5
	ld a,(bc)		;a6e6
	nop			;a6e7
	nop			;a6e8
	xor 0efh		;a6e9
	ret p			;a6eb
	nop			;a6ec
	nop			;a6ed
	nop			;a6ee
	nop			;a6ef
	nop			;a6f0
	nop			;a6f1
	xor 0f7h		;a6f2
	jp m,0effdh		;a6f4
	ret p			;a6f7
	nop			;a6f8
	nop			;a6f9
	nop			;a6fa
	nop			;a6fb
	pop af			;a6fc
	ei			;a6fd
	jp m,0f8f7h		;a6fe
	defb 0fdh,0f0h,000h ;illegal sequence	;a701
	nop			;a704
	nop			;a705
	call p,0fbf2h		;a706
	jp m,0fdf8h		;a709
	defb 0fdh,0edh,000h ;illegal sequence	;a70c
	nop			;a70f
	ex de,hl		;a710
	jp p,0fafbh		;a711
	call m,0f3f8h		;a714
	ret p			;a717
	nop			;a718
	nop			;a719
	xor 0f2h		;a71a
	jp m,0fcfah		;a71c
	call m,0fdfch		;a71f
	defb 0edh ;next byte illegal after ed	;a722
	nop			;a723
	pop af			;a724
	jp p,0fcfbh		;a725
	call m,0f6f6h		;a728
	call pe,0eb00h		;a72b
	jp p,0fafbh		;a72e
	call m,0edf9h		;a731
	nop			;a734
	nop			;a735
	nop			;a736
	nop			;a737
	call p,0f5f6h		;a738
	or 0ech			;a73b
	nop			;a73d
	nop			;a73e
	nop			;a73f
	nop			;a740
	nop			;a741
	nop			;a742
	ex af,af'		;a743
	ex af,af'		;a744
	nop			;a745
	xor 0efh		;a746
	ret p			;a748
	nop			;a749
	nop			;a74a
	nop			;a74b
	nop			;a74c
	ex de,hl		;a74d
	jp p,0fdfah		;a74e
	rst 28h			;a751
	ret p			;a752
	nop			;a753
	nop			;a754
	nop			;a755
	call p,0fbf5h		;a756
	rst 30h			;a759
	ret m			;a75a
	ret p			;a75b
	nop			;a75c
	nop			;a75d
	nop			;a75e
	ex de,hl		;a75f
	jp p,0fafah		;a760
	defb 0fdh,0edh,000h ;illegal sequence	;a763
	nop			;a766
	nop			;a767
	call p,0f6f5h		;a768
	call pe,00000h		;a76b
	xor 0efh		;a76e
	ret p			;a770
	nop			;a771
	nop			;a772
	nop			;a773
	nop			;a774
	ex de,hl		;a775
	jp p,0fdfah		;a776
	defb 0edh ;next byte illegal after ed	;a779
	nop			;a77a
	nop			;a77b
	nop			;a77c
	nop			;a77d
	call p,0ecf6h		;a77e
	nop			;a781
	nop			;a782
	nop			;a783
	nop			;a784
	nop			;a785
	nop			;a786
	inc bc			;a787
	ld a,(bc)		;a788
	nop			;a789
	nop			;a78a
	nop			;a78b
	nop			;a78c
	nop			;a78d
	xor 0efh		;a78e
	rst 28h			;a790
	ret p			;a791
	nop			;a792
	nop			;a793
	nop			;a794
	nop			;a795
	nop			;a796
	xor 0f7h		;a797
	ret m			;a799
	jp m,0edfdh		;a79a
	xor 0efh		;a79d
	ret p			;a79f
	xor 0f7h		;a7a0
	rst 30h			;a7a2
	jp m,0f3f8h		;a7a3
	ret p			;a7a6
	nop			;a7a7
	nop			;a7a8
	ld bc,0ee03h		;a7a9
	rst 28h			;a7ac
	ret p			;a7ad
	nop			;a7ae
	nop			;a7af
	inc bc			;a7b0
	ld a,(bc)		;a7b1
	nop			;a7b2
	nop			;a7b3
	nop			;a7b4
	nop			;a7b5
	nop			;a7b6
	nop			;a7b7
	nop			;a7b8
	nop			;a7b9
	xor 0efh		;a7ba
	nop			;a7bc
	nop			;a7bd
	nop			;a7be
	nop			;a7bf
	xor 0efh		;a7c0
	ret p			;a7c2
	xor 0f1h		;a7c3
	rst 30h			;a7c5
	xor 0efh		;a7c6
	ret p			;a7c8
	xor 0f7h		;a7c9
	jp m,0f2f3h		;a7cb
	rst 30h			;a7ce
	ret m			;a7cf
	nop			;a7d0
	nop			;a7d1
	dec b			;a7d2
	ld a,(bc)		;a7d3
	xor 0efh		;a7d4
	ret p			;a7d6
	nop			;a7d7
	nop			;a7d8
	nop			;a7d9
	nop			;a7da
	nop			;a7db
	nop			;a7dc
	nop			;a7dd
	pop af			;a7de
	ret m			;a7df
	defb 0fdh,0edh,000h ;illegal sequence	;a7e0
	nop			;a7e3
	nop			;a7e4
	nop			;a7e5
	nop			;a7e6
	nop			;a7e7
	jp p,0f9fah		;a7e8
	defb 0edh ;next byte illegal after ed	;a7eb
	xor 0efh		;a7ec
	rst 28h			;a7ee
	ret p			;a7ef
	nop			;a7f0
	nop			;a7f1
	rst 30h			;a7f2
	call m,0eefdh		;a7f3
	rst 30h			;a7f6
	ret m			;a7f7
	jp m,0edfdh		;a7f8
	nop			;a7fb
	rst 30h			;a7fc
	jp m,0f7f7h		;a7fd
	ret m			;a800
	jp m,0f3f8h		;a801
	ret p			;a804
	xor 000h		;a805
	nop			;a807
	ld bc,0ef02h		;a808
	ret p			;a80b
	nop			;a80c
	nop			;a80d
	dec b			;a80e
	ld a,(bc)		;a80f
	nop			;a810
	nop			;a811
	nop			;a812
	nop			;a813
	nop			;a814
	xor 0efh		;a815
	ret p			;a817
	nop			;a818
	nop			;a819
	nop			;a81a
	nop			;a81b
	nop			;a81c
	nop			;a81d
	xor 0f7h		;a81e
	jp m,0edf3h		;a820
	xor 000h		;a823
	nop			;a825
	nop			;a826
	ex de,hl		;a827
	jp p,0fafbh		;a828
	ld sp,hl		;a82b
	xor 0f1h		;a82c
	nop			;a82e
	nop			;a82f
	nop			;a830
	xor 0f7h		;a831
	jp m,0f3fch		;a833
	jp p,0eef7h		;a836
	rst 28h			;a839
	xor 0f7h		;a83a
	ei			;a83c
	call m,0f8fah		;a83d
	ret m			;a840
	ei			;a841
	nop			;a842
	nop			;a843
	rlca			;a844
	ld a,(bc)		;a845
	nop			;a846
	nop			;a847
	xor 0efh		;a848
	ret p			;a84a
	nop			;a84b
	nop			;a84c
	nop			;a84d
	nop			;a84e
	nop			;a84f
	nop			;a850
	xor 0f7h		;a851
	jp m,0edfdh		;a853
	nop			;a856
	nop			;a857
	nop			;a858
	nop			;a859
	nop			;a85a
	pop af			;a85b
	rst 30h			;a85c
	ret m			;a85d
	di			;a85e
	defb 0edh ;next byte illegal after ed	;a85f
	xor 0efh		;a860
	rst 28h			;a862
	ret p			;a863
	rst 28h			;a864
	jp p,0f8fbh		;a865
	ld sp,hl		;a868
	xor 0f8h		;a869
	ret m			;a86b
	ret m			;a86c
	defb 0fdh,0f7h,0f7h ;illegal sequence	;a86d
	jp m,0f3fch		;a870
	jp p,0f9fah		;a873
	ei			;a876
	ld sp,hl		;a877
	ret m			;a878
	rst 30h			;a879
	jp m,0f7f8h		;a87a
	ret m			;a87d
	call m,0f2fdh		;a87e
	defb 0fdh,0fch,0fbh ;illegal sequence	;a881
	jp m,0fafah		;a884
	call m,0f3f9h		;a887
	ret m			;a88a
	rst 30h			;a88b
	nop			;a88c
	nop			;a88d
	inc b			;a88e
	ld b,0edh		;a88f
	nop			;a891
	nop			;a892
	nop			;a893
	nop			;a894
	nop			;a895
	ret p			;a896
	xor 0efh		;a897
	rst 28h			;a899
	ret p			;a89a
	nop			;a89b
	ret m			;a89c
	rst 30h			;a89d
	ret m			;a89e
	jp m,0edfdh		;a89f
	jp m,0faf8h		;a8a2
	ret m			;a8a5
	di			;a8a6
	ret p			;a8a7
	nop			;a8a8
	nop			;a8a9
	add hl,bc		;a8aa
	ld a,(bc)		;a8ab
	nop			;a8ac
	nop			;a8ad
	nop			;a8ae
	nop			;a8af
	nop			;a8b0
	xor 0efh		;a8b1
	rst 28h			;a8b3
	ret p			;a8b4
	nop			;a8b5
	nop			;a8b6
	nop			;a8b7
	nop			;a8b8
	nop			;a8b9
	xor 0f7h		;a8ba
	ret m			;a8bc
	ret m			;a8bd
	defb 0fdh,0f0h,000h ;illegal sequence	;a8be
	nop			;a8c1
	nop			;a8c2
	nop			;a8c3
	pop af			;a8c4
	rst 30h			;a8c5
	jp m,0fcf8h		;a8c6
	defb 0fdh,000h,000h ;illegal sequence	;a8c9
	nop			;a8cc
	ex de,hl		;a8cd
	jp p,0fafbh		;a8ce
	call m,0ecfdh		;a8d1
	nop			;a8d4
	nop			;a8d5
	nop			;a8d6
	ex de,hl		;a8d7
	jp p,0fcfbh		;a8d8
	call m,0edf3h		;a8db
	nop			;a8de
	nop			;a8df
	nop			;a8e0
	nop			;a8e1
	call p,0faf2h		;a8e2
	ret m			;a8e5
	ld sp,hl		;a8e6
	xor 000h		;a8e7
	nop			;a8e9
	nop			;a8ea
	nop			;a8eb
	nop			;a8ec
	pop af			;a8ed
	rst 30h			;a8ee
	jp m,0f2f3h		;a8ef
	nop			;a8f2
	nop			;a8f3
	xor 0efh		;a8f4
	xor 0f7h		;a8f6
	ei			;a8f8
	ret m			;a8f9
	ret m			;a8fa
	ret m			;a8fb
	xor 0efh		;a8fc
	rst 30h			;a8fe
	rst 30h			;a8ff
	rst 30h			;a900
	jp m,0faf8h		;a901
	jp m,000f8h		;a904
	nop			;a907
	ld a,(bc)		;a908
	ld a,(bc)		;a909
	nop			;a90a
	nop			;a90b
	nop			;a90c
	nop			;a90d
	xor 0efh		;a90e
	rst 28h			;a910
	ret p			;a911
	nop			;a912
	nop			;a913
	nop			;a914
	nop			;a915
	nop			;a916
	xor 0f7h		;a917
	ret m			;a919
	ret m			;a91a
	defb 0fdh,0f0h,000h ;illegal sequence	;a91b
	nop			;a91e
	nop			;a91f
	nop			;a920
	pop af			;a921
	rst 30h			;a922
	jp m,0fcf8h		;a923
	defb 0fdh,0edh,0edh ;illegal sequence	;a926
	nop			;a929
	ex de,hl		;a92a
	jp p,0fcfbh		;a92b
	call m,0ecfdh		;a92e
	nop			;a931
	xor 0eeh		;a932
	rst 28h			;a934
	rst 30h			;a935
	jp m,0f8fah		;a936
	di			;a939
	ret p			;a93a
	xor 0f1h		;a93b
	rst 30h			;a93d
	ret m			;a93e
	ei			;a93f
	jp m,0f8f8h		;a940
	ld sp,hl		;a943
	rst 30h			;a944
	ret m			;a945
	rst 30h			;a946
	ret m			;a947
	call m,0fafah		;a948
	ei			;a94b
	call m,0f2f3h		;a94c
	jp m,0faf8h		;a94f
	ret m			;a952
	ld sp,hl		;a953
	rst 30h			;a954
	jp m,0f7f8h		;a955
	ret m			;a958
	jp m,0fafah		;a959
	jp m,0f2f3h		;a95c
	jp m,0fafbh		;a95f
	jp m,0f8fch		;a962
	jp m,0f7f8h		;a965
	ret m			;a968
	jp m,0fafah		;a969
	call m,000f9h		;a96c
	nop			;a96f
	add hl,bc		;a970
	rlca			;a971
	nop			;a972
	nop			;a973
	xor 0efh		;a974
	rst 28h			;a976
	ret p			;a977
	nop			;a978
	nop			;a979
	ex de,hl		;a97a
	jp p,0f8fah		;a97b
	di			;a97e
	defb 0edh ;next byte illegal after ed	;a97f
	xor 0efh		;a980
	rst 30h			;a982
	ei			;a983
	call m,0edf9h		;a984
	rst 30h			;a987
	ret m			;a988
	jp m,0f6fch		;a989
	call pe,0fa00h		;a98c
	jp m,0f3f8h		;a98f
	defb 0edh ;next byte illegal after ed	;a992
	nop			;a993
	nop			;a994
	ret m			;a995
	ld sp,hl		;a996
	ei			;a997
	ld sp,hl		;a998
	ret p			;a999
	xor 0efh		;a99a
	call m,0f2fdh		;a99c
	defb 0fdh,0f8h,0f7h ;illegal sequence	;a99f
	jp m,0f3f9h		;a9a2
	ret m			;a9a5
	rst 30h			;a9a6
	jp m,0f8f8h		;a9a7
	ret m			;a9aa
	ret m			;a9ab
	ei			;a9ac
	ei			;a9ad
	jp m,0fafah		;a9ae
	nop			;a9b1
	nop			;a9b2
	inc b			;a9b3
	inc b			;a9b4
	rst 28h			;a9b5
	ret p			;a9b6
	nop			;a9b7
	nop			;a9b8
	ret m			;a9b9
	di			;a9ba
	ret p			;a9bb
	nop			;a9bc
	jp m,0fdfch		;a9bd
	defb 0edh ;next byte illegal after ed	;a9c0
	call m,0f3f8h		;a9c1
	ret p			;a9c4
	call 0e0aah		;a9c5
	xor d			;a9c8
	di			;a9c9
	xor d			;a9ca
	ld b,0abh		;a9cb
	inc de			;a9cd
	xor e			;a9ce
	jr nz,$-83		;a9cf
	dec l			;a9d1
	xor e			;a9d2
	inc (hl)		;a9d3
	xor e			;a9d4
	dec sp			;a9d5
	xor e			;a9d6
	ld b,d			;a9d7
	xor e			;a9d8
	ld d,b			;a9d9
	xor e			;a9da
	ld d,a			;a9db
	xor e			;a9dc
	ld e,(hl)		;a9dd
	xor e			;a9de
	ld h,l			;a9df
	xor e			;a9e0
	ld c,c			;a9e1
	xor e			;a9e2
	ld c,b			;a9e3
	xor d			;a9e4
	ld c,a			;a9e5
	xor d			;a9e6
	ld d,(hl)		;a9e7
	xor d			;a9e8
	ld e,l			;a9e9
	xor d			;a9ea
	ld h,h			;a9eb
	xor d			;a9ec
	ld l,e			;a9ed
	xor d			;a9ee
	ld (hl),d		;a9ef
	xor d			;a9f0
	ld a,c			;a9f1
	xor d			;a9f2
	add a,b			;a9f3
	xor d			;a9f4
	add a,a			;a9f5
	xor d			;a9f6
	adc a,(hl)		;a9f7
	xor d			;a9f8
	sub l			;a9f9
	xor d			;a9fa
	sbc a,h			;a9fb
	xor d			;a9fc
	and e			;a9fd
	xor d			;a9fe
	xor d			;a9ff
	xor d			;aa00
	or c			;aa01
	xor d			;aa02
	cp b			;aa03
	xor d			;aa04
	cp a			;aa05
	xor d			;aa06
	add a,0aah		;aa07
	ld a,d			;aa09
	xor e			;aa0a
	add a,c			;aa0b
	xor e			;aa0c
	adc a,b			;aa0d
	xor e			;aa0e
	adc a,a			;aa0f
	xor e			;aa10
	sub (hl)		;aa11
	xor e			;aa12
	sbc a,l			;aa13
	xor e			;aa14
	and h			;aa15
	xor e			;aa16
	xor e			;aa17
	xor e			;aa18
	ld (hl),e		;aa19
	xor e			;aa1a
	or d			;aa1b
	xor e			;aa1c
	cp c			;aa1d
	xor e			;aa1e
	ret nz			;aa1f
	xor e			;aa20
	rst 0			;aa21
	xor e			;aa22
	adc a,0abh		;aa23
	push de			;aa25
	xor e			;aa26
	call c,0e3abh		;aa27
	xor e			;aa2a
	jp pe,0f1abh		;aa2b
	xor e			;aa2e
	ret m			;aa2f
	xor e			;aa30
	rst 38h			;aa31
	xor e			;aa32
	ld b,0ach		;aa33
	dec c			;aa35
	xor h			;aa36
	inc d			;aa37
	xor h			;aa38
	dec de			;aa39
	xor h			;aa3a
	ld b,c			;aa3b
	xor d			;aa3c
	ld c,b			;aa3d
	xor d			;aa3e
	ld c,b			;aa3f
	xor d			;aa40
	ld bc,000d0h		;aa41
	nop			;aa44
	ld bc,003c5h		;aa45
	ld bc,00034h		;aa48
	nop			;aa4b
	djnz laa8eh		;aa4c
	inc c			;aa4e
	ld bc,00038h		;aa4f
	nop			;aa52
	ld de,00f40h		;aa53
	ld bc,00034h		;aa56
	nop			;aa59
	ld (de),a		;aa5a
	ld b,b			;aa5b
	dec c			;aa5c
	ld bc,00038h		;aa5d
	nop			;aa60
	inc de			;aa61
	ld b,b			;aa62
	djnz laa66h		;aa63
	inc (hl)		;aa65
laa66h:
	nop			;aa66
	nop			;aa67
	inc d			;aa68
	ld b,b			;aa69
	ld c,001h		;aa6a
	jr c,laa6eh		;aa6c
laa6eh:
	nop			;aa6e
	dec d			;aa6f
	ld b,b			;aa70
	ld de,03401h		;aa71
	nop			;aa74
	nop			;aa75
	ld d,040h		;aa76
	ld a,(bc)		;aa78
	ld bc,00038h		;aa79
	nop			;aa7c
	rla			;aa7d
	ld b,b			;aa7e
	ld a,(bc)		;aa7f
	ld bc,00034h		;aa80
	nop			;aa83
	jr laac6h		;aa84
	ld a,(bc)		;aa86
	ld bc,00038h		;aa87
	nop			;aa8a
	add hl,de		;aa8b
	ld b,b			;aa8c
	ld a,(bc)		;aa8d
laa8eh:
	ld bc,00034h		;aa8e
	nop			;aa91
	ld a,(de)		;aa92
	ld b,b			;aa93
	ld a,(bc)		;aa94
	ld bc,00038h		;aa95
	nop			;aa98
	dec de			;aa99
	ld b,b			;aa9a
	ld a,(bc)		;aa9b
	ld bc,00040h		;aa9c
	nop			;aa9f
	djnz laae2h		;aaa0
	inc c			;aaa2
	ld bc,00040h		;aaa3
	nop			;aaa6
	ld (de),a		;aaa7
	ld b,b			;aaa8
	dec c			;aaa9
	ld bc,00040h		;aaaa
	nop			;aaad
	inc d			;aaae
	ld b,b			;aaaf
	ld c,001h		;aab0
	ld b,b			;aab2
	nop			;aab3
	nop			;aab4
	ld d,040h		;aab5
	ld (de),a		;aab7
	ld bc,00040h		;aab8
	nop			;aabb
	jr $+66			;aabc
	inc de			;aabe
	ld bc,00040h		;aabf
	nop			;aac2
	ld a,(de)		;aac3
	ld b,b			;aac4
	inc d			;aac5
laac6h:
	ld bc,0003ch		;aac6
	nop			;aac9
	dec (hl)		;aaca
	ld b,b			;aacb
	inc bc			;aacc
	inc bc			;aacd
	inc c			;aace
	inc b			;aacf
	inc bc			;aad0
	inc l			;aad1
	ld b,b			;aad2
	ld bc,00010h		;aad3
	nop			;aad6
	dec l			;aad7
	ld b,b			;aad8
	nop			;aad9
	inc d			;aada
	djnz laaddh		;aadb
laaddh:
	ld l,040h		;aadd
	nop			;aadf
	inc bc			;aae0
	nop			;aae1
laae2h:
	inc b			;aae2
	inc bc			;aae3
	add hl,hl		;aae4
	ld b,b			;aae5
	ld bc,00004h		;aae6
	nop			;aae9
	ld hl,(00040h)		;aaea
	ex af,af'		;aaed
	djnz laaf0h		;aaee
laaf0h:
	dec hl			;aaf0
	ld b,b			;aaf1
	nop			;aaf2
	inc bc			;aaf3
	jr $+6			;aaf4
	inc bc			;aaf6
	cpl			;aaf7
	ld b,b			;aaf8
	ld bc,0001ch		;aaf9
	nop			;aafc
	jr nc,lab3fh		;aafd
	nop			;aaff
	jr nz,lab12h		;ab00
	nop			;ab02
	ld sp,00040h		;ab03
	ld (bc),a		;ab06
	ex af,af'		;ab07
	nop			;ab08
	nop			;ab09
	ld b,040h		;ab0a
	nop			;ab0c
	inc c			;ab0d
	nop			;ab0e
	ld (bc),a		;ab0f
	ld b,040h		;ab10
lab12h:
	ld bc,00002h		;ab12
	nop			;ab15
	nop			;ab16
	ld b,040h		;ab17
	nop			;ab19
	inc b			;ab1a
	nop			;ab1b
	ld (bc),a		;ab1c
	ld b,040h		;ab1d
	ld bc,01002h		;ab1f
	nop			;ab22
	nop			;ab23
	ld b,040h		;ab24
	nop			;ab26
	inc d			;ab27
	nop			;ab28
	ld (bc),a		;ab29
	ld b,040h		;ab2a
	ld bc,0dc01h		;ab2c
	nop			;ab2f
	nop			;ab30
	ld b,04ah		;ab31
	nop			;ab33
	ld bc,000e4h		;ab34
	nop			;ab37
	ld b,04ah		;ab38
	nop			;ab3a
	ld bc,000ech		;ab3b
	nop			;ab3e
lab3fh:
	ld b,04ah		;ab3f
	nop			;ab41
	ld bc,000f4h		;ab42
	nop			;ab45
	ld b,04ah		;ab46
	nop			;ab48
	ld bc,00034h		;ab49
	nop			;ab4c
	ld d,040h		;ab4d
	nop			;ab4f
	ld bc,00024h		;ab50
	nop			;ab53
	add hl,sp		;ab54
	ld b,b			;ab55
	ld bc,02801h		;ab56
	nop			;ab59
	nop			;ab5a
	ld a,(00140h)		;ab5b
	ld bc,0002ch		;ab5e
	nop			;ab61
	dec sp			;ab62
	ld b,b			;ab63
	ld bc,03001h		;ab64
	nop			;ab67
	nop			;ab68
	inc a			;ab69
	ld b,b			;ab6a
	ld bc,02801h		;ab6b
	nop			;ab6e
	nop			;ab6f
	ld e,040h		;ab70
	ld (bc),a		;ab72
	ld bc,0002ch		;ab73
	nop			;ab76
	dec bc			;ab77
	ld b,b			;ab78
	ld (bc),a		;ab79
	ld bc,00044h		;ab7a
	nop			;ab7d
	ret z			;ab7e
	nop			;ab7f
	ld (bc),a		;ab80
	ld bc,00044h		;ab81
	nop			;ab84
	jp z,00200h		;ab85
	ld bc,00044h		;ab88
	nop			;ab8b
	call z,00200h		;ab8c
	ld bc,00044h		;ab8f
	nop			;ab92
	ld c,040h		;ab93
	ld (bc),a		;ab95
	ld bc,00048h		;ab96
	nop			;ab99
	ret			;ab9a
	nop			;ab9b
	ld (bc),a		;ab9c
	ld bc,00048h		;ab9d
	nop			;aba0
	rlc b			;aba1
	ld (bc),a		;aba3
	ld bc,00048h		;aba4
	nop			;aba7
	call 00200h		;aba8
	ld bc,00048h		;abab
	nop			;abae
	ld c,040h		;abaf
	ld (bc),a		;abb1
	ld bc,00034h		;abb2
	inc b			;abb5
	add hl,hl		;abb6
	ld b,b			;abb7
	inc bc			;abb8
	ld bc,00038h		;abb9
	inc b			;abbc
	ld hl,(00340h)		;abbd
	ld bc,00434h		;abc0
	inc b			;abc3
	dec hl			;abc4
	ld b,b			;abc5
	inc bc			;abc6
	ld bc,00438h		;abc7
	inc b			;abca
	inc l			;abcb
	ld b,b			;abcc
	inc bc			;abcd
	ld bc,00434h		;abce
	nop			;abd1
	dec l			;abd2
	ld b,b			;abd3
	inc bc			;abd4
	ld bc,00438h		;abd5
	nop			;abd8
	ld l,040h		;abd9
	inc bc			;abdb
	ld bc,00434h		;abdc
	call m,0402fh		;abdf
	inc bc			;abe2
	ld bc,00438h		;abe3
	call m,04030h		;abe6
	inc bc			;abe9
	ld bc,00034h		;abea
	call m,04031h		;abed
	inc bc			;abf0
	ld bc,00038h		;abf1
	call m,04032h		;abf4
	inc bc			;abf7
	ld bc,0fc34h		;abf8
	call m,04033h		;abfb
	inc bc			;abfe
	ld bc,0fc38h		;abff
	call m,04034h		;ac02
	inc bc			;ac05
	ld bc,0fc34h		;ac06
	nop			;ac09
	dec (hl)		;ac0a
	ld b,b			;ac0b
	inc bc			;ac0c
	ld bc,0fc38h		;ac0d
	nop			;ac10
	ld (hl),040h		;ac11
	inc bc			;ac13
	ld bc,0fc34h		;ac14
	inc b			;ac17
	scf			;ac18
	ld b,b			;ac19
	inc bc			;ac1a
	ld bc,0fc38h		;ac1b
	inc b			;ac1e
	jr c,lac61h		;ac1f
	inc bc			;ac21
	ld l,d			;ac22
	xor h			;ac23
	ld (hl),c		;ac24
	xor h			;ac25
	ld a,b			;ac26
	xor h			;ac27
	ld a,a			;ac28
	xor h			;ac29
	add a,(hl)		;ac2a
	xor h			;ac2b
	adc a,l			;ac2c
	xor h			;ac2d
	sub h			;ac2e
	xor h			;ac2f
	sbc a,e			;ac30
	xor h			;ac31
	and d			;ac32
	xor h			;ac33
	xor c			;ac34
	xor h			;ac35
	or a			;ac36
	xor h			;ac37
	cp (hl)			;ac38
	xor h			;ac39
	push bc			;ac3a
	xor h			;ac3b
	call z,0d3ach		;ac3c
	xor h			;ac3f
	jp c,0e1ach		;ac40
	xor h			;ac43
	ret pe			;ac44
	xor h			;ac45
	rst 28h			;ac46
	xor h			;ac47
	or 0ach			;ac48
	defb 0fdh,0ach ;xor iyh	;ac4a
	inc b			;ac4c
	xor l			;ac4d
	dec bc			;ac4e
	xor l			;ac4f
	ld (de),a		;ac50
	xor l			;ac51
	daa			;ac52
	xor l			;ac53
	ld l,0adh		;ac54
	add hl,de		;ac56
	xor l			;ac57
	jr nz,$-81		;ac58
	dec (hl)		;ac5a
	xor l			;ac5b
	inc a			;ac5c
	xor l			;ac5d
	ld b,e			;ac5e
	xor l			;ac5f
	ld c,d			;ac60
lac61h:
	xor l			;ac61
	ld e,a			;ac62
	xor l			;ac63
	ld h,(hl)		;ac64
	xor l			;ac65
	ld d,c			;ac66
	xor l			;ac67
	ld e,b			;ac68
	xor l			;ac69
	ld bc,00000h		;ac6a
	nop			;ac6d
	ld e,h			;ac6e
	ld e,l			;ac6f
	inc bc			;ac70
	ld bc,00000h		;ac71
	nop			;ac74
	ld l,(hl)		;ac75
	ld l,a			;ac76
	inc bc			;ac77
	ld bc,00000h		;ac78
	nop			;ac7b
	and (hl)		;ac7c
	and a			;ac7d
	inc bc			;ac7e
	ld bc,00000h		;ac7f
	nop			;ac82
	ld d,h			;ac83
	ld d,l			;ac84
	inc bc			;ac85
	ld bc,00008h		;ac86
	nop			;ac89
	ld d,h			;ac8a
	ld d,l			;ac8b
	inc bc			;ac8c
	ld bc,00010h		;ac8d
	nop			;ac90
	ld d,h			;ac91
	ld d,l			;ac92
	inc bc			;ac93
	ld bc,00000h		;ac94
	nop			;ac97
	ld d,b			;ac98
	ld d,c			;ac99
	inc bc			;ac9a
	ld bc,00000h		;ac9b
	nop			;ac9e
	ld d,d			;ac9f
	ld d,e			;aca0
	inc bc			;aca1
	ld bc,00000h		;aca2
	nop			;aca5
	add a,b			;aca6
	add a,c			;aca7
	inc bc			;aca8
	ld bc,00000h		;aca9
	nop			;acac
	and b			;acad
	and c			;acae
	inc bc			;acaf
	ld bc,00000h		;acb0
	nop			;acb3
	dec bc			;acb4
	inc c			;acb5
	inc bc			;acb6
	ld bc,00000h		;acb7
	nop			;acba
	ld h,h			;acbb
	ld h,l			;acbc
	inc bc			;acbd
	ld bc,00000h		;acbe
	nop			;acc1
	ld (hl),h		;acc2
	ld (hl),l		;acc3
	inc bc			;acc4
	ld bc,00000h		;acc5
	nop			;acc8
	sub h			;acc9
	sub l			;acca
	inc bc			;accb
	ld bc,00000h		;accc
	nop			;accf
	ld e,d			;acd0
	ld e,e			;acd1
	inc bc			;acd2
	ld bc,00000h		;acd3
	nop			;acd6
	and d			;acd7
	and e			;acd8
	inc bc			;acd9
	ld bc,00008h		;acda
	nop			;acdd
	ld a,b			;acde
	ld a,c			;acdf
	inc bc			;ace0
	ld bc,00000h		;ace1
	nop			;ace4
	halt			;ace5
	ld (hl),a		;ace6
	inc bc			;ace7
	ld bc,00018h		;ace8
	nop			;aceb
	ld a,b			;acec
	ld a,c			;aced
	inc bc			;acee
	ld bc,00020h		;acef
	nop			;acf2
	halt			;acf3
	ld (hl),a		;acf4
	inc bc			;acf5
	ld bc,00010h		;acf6
	nop			;acf9
	ld a,d			;acfa
	ld a,e			;acfb
	inc bc			;acfc
	ld bc,00020h		;acfd
	nop			;ad00
	xor (hl)		;ad01
	xor a			;ad02
	inc bc			;ad03
	ld bc,00028h		;ad04
	nop			;ad07
	or b			;ad08
	or c			;ad09
	inc bc			;ad0a
	ld bc,00030h		;ad0b
	nop			;ad0e
	or b			;ad0f
	or c			;ad10
	inc bc			;ad11
	ld bc,00038h		;ad12
	nop			;ad15
	xor (hl)		;ad16
	xor a			;ad17
	inc bc			;ad18
	ld bc,00000h		;ad19
	nop			;ad1c
	xor d			;ad1d
	xor e			;ad1e
	inc bc			;ad1f
	ld bc,00008h		;ad20
	nop			;ad23
	xor d			;ad24
	xor e			;ad25
	inc bc			;ad26
	ld bc,00010h		;ad27
	nop			;ad2a
	xor h			;ad2b
	xor l			;ad2c
	inc bc			;ad2d
	ld bc,00018h		;ad2e
	nop			;ad31
	xor h			;ad32
	xor l			;ad33
	inc bc			;ad34
	ld bc,00060h		;ad35
	nop			;ad38
	or (hl)			;ad39
	or a			;ad3a
	inc bc			;ad3b
	ld bc,00068h		;ad3c
	nop			;ad3f
	cp b			;ad40
	cp c			;ad41
	inc bc			;ad42
	ld bc,00070h		;ad43
	nop			;ad46
	cp b			;ad47
	cp c			;ad48
	inc bc			;ad49
	ld bc,00078h		;ad4a
	nop			;ad4d
	or (hl)			;ad4e
	or a			;ad4f
	inc bc			;ad50
	ld bc,00040h		;ad51
	nop			;ad54
	or d			;ad55
	or e			;ad56
	inc bc			;ad57
	ld bc,00048h		;ad58
	nop			;ad5b
	or d			;ad5c
	or e			;ad5d
	inc bc			;ad5e
	ld bc,00050h		;ad5f
	nop			;ad62
	or h			;ad63
	or l			;ad64
	inc bc			;ad65
	ld bc,00058h		;ad66
	nop			;ad69
	or h			;ad6a
	or l			;ad6b
	inc bc			;ad6c
	inc d			;ad6d
	xor (hl)		;ad6e
	daa			;ad6f
	xor (hl)		;ad70
	ld l,0aeh		;ad71
	dec (hl)		;ad73
	xor (hl)		;ad74
	inc a			;ad75
	xor (hl)		;ad76
	ld b,e			;ad77
	xor (hl)		;ad78
	ret m			;ad79
	xor l			;ad7a
	rst 38h			;ad7b
	xor l			;ad7c
	ld b,0aeh		;ad7d
	dec c			;ad7f
	xor (hl)		;ad80
	pop af			;ad81
	xor l			;ad82
	ex (sp),hl		;ad83
	xor l			;ad84
	jp pe,027adh		;ad85
	xor (hl)		;ad88
	sbc a,b			;ad89
	xor l			;ad8a
	or c			;ad8b
	xor l			;ad8c
	jp z,091adh		;ad8d
	xor l			;ad90
	ld bc,00000h		;ad91
	nop			;ad94
	ld d,b			;ad95
	ld d,c			;ad96
	inc bc			;ad97
	inc b			;ad98
	nop			;ad99
	nop			;ad9a
	nop			;ad9b
	nop			;ad9c
	nop			;ad9d
	inc bc			;ad9e
	nop			;ad9f
	nop			;ada0
	nop			;ada1
	nop			;ada2
	nop			;ada3
	inc bc			;ada4
	nop			;ada5
	nop			;ada6
	nop			;ada7
	nop			;ada8
	nop			;ada9
	inc bc			;adaa
	nop			;adab
	nop			;adac
	nop			;adad
	nop			;adae
	nop			;adaf
	inc bc			;adb0
	inc b			;adb1
	nop			;adb2
	nop			;adb3
	nop			;adb4
	nop			;adb5
	nop			;adb6
ladb7h:
	inc bc			;adb7
	ex af,af'		;adb8
	jr $+34			;adb9
	ld b,04ah		;adbb
	inc bc			;adbd
	nop			;adbe
	nop			;adbf
	nop			;adc0
	nop			;adc1
	nop			;adc2
	inc bc			;adc3
	ex af,af'		;adc4
	jr ladffh		;adc5
	ld b,04ah		;adc7
	inc bc			;adc9
	inc b			;adca
	nop			;adcb
	jr ladeeh		;adcc
	ld b,04ah		;adce
	inc bc			;add0
	ex af,af'		;add1
	jr z,ladf4h		;add2
	ld b,04ah		;add4
	inc bc			;add6
	nop			;add7
	jr lae12h		;add8
	ld b,04ah		;adda
	inc bc			;addc
	ex af,af'		;addd
	jr z,$+58		;adde
	ld b,04ah		;ade0
lade2h:
	inc bc			;ade2
	ld bc,00000h		;ade3
	nop			;ade6
lade7h:
	cp a			;ade7
	ret nz			;ade8
	inc bc			;ade9
	ld bc,00008h		;adea
	nop			;aded
ladeeh:
	cp a			;adee
	ret nz			;adef
	inc bc			;adf0
	ld bc,00000h		;adf1
ladf4h:
	nop			;adf4
	scf			;adf5
	jr c,ladfbh		;adf6
	ld bc,00000h		;adf8
ladfbh:
	nop			;adfb
	sub (hl)		;adfc
	sub a			;adfd
	inc bc			;adfe
ladffh:
	ld bc,00008h		;adff
	nop			;ae02
	sub (hl)		;ae03
	sub a			;ae04
	inc bc			;ae05
	ld bc,00010h		;ae06
	nop			;ae09
	sub (hl)		;ae0a
	sub a			;ae0b
	inc bc			;ae0c
	ld bc,00018h		;ae0d
	nop			;ae10
	sub (hl)		;ae11
lae12h:
	sub a			;ae12
	inc bc			;ae13
	inc bc			;ae14
	ex af,af'		;ae15
	nop			;ae16
	ld b,060h		;ae17
	ld h,c			;ae19
	inc bc			;ae1a
	nop			;ae1b
	djnz lae1eh		;ae1c
lae1eh:
	ld e,(hl)		;ae1e
	ld e,a			;ae1f
	inc bc			;ae20
	ex af,af'		;ae21
	jr nz,lae2ah		;ae22
	ld h,b			;ae24
	ld h,c			;ae25
	inc bc			;ae26
	ld bc,01100h		;ae27
lae2ah:
	ex af,af'		;ae2a
	sbc a,d			;ae2b
	sbc a,e			;ae2c
	inc bc			;ae2d
	ld bc,00e08h		;ae2e
	djnz $-88		;ae31
	and a			;ae33
	inc bc			;ae34
	ld bc,00c10h		;ae35
	jr $-56			;ae38
	rst 0			;ae3a
	inc bc			;ae3b
	ld bc,00e18h		;ae3c
	jr nz,lade7h		;ae3f
	and a			;ae41
	inc bc			;ae42
	ld bc,01120h		;ae43
	jr z,lade2h		;ae46
	sbc a,e			;ae48
	inc bc			;ae49
	ld (hl),a		;ae4a
	xor (hl)		;ae4b
	ld l,d			;ae4c
	xor (hl)		;ae4d
	adc a,e			;ae4e
	xor (hl)		;ae4f
	xor d			;ae50
	xor (hl)		;ae51
	or a			;ae52
	xor (hl)		;ae53
	call nz,084aeh		;ae54
	xor (hl)		;ae57
	pop de			;ae58
	xor (hl)		;ae59
	ret c			;ae5a
	xor (hl)		;ae5b
	rst 18h			;ae5c
	xor (hl)		;ae5d
	and 0aeh		;ae5e
	di			;ae60
	xor (hl)		;ae61
	daa			;ae62
	xor a			;ae63
	ld a,(de)		;ae64
	xor a			;ae65
	dec c			;ae66
	xor a			;ae67
	nop			;ae68
	xor a			;ae69
	ld (bc),a		;ae6a
	nop			;ae6b
	nop			;ae6c
	nop			;ae6d
	ld (hl),b		;ae6e
	ld (hl),c		;ae6f
	inc bc			;ae70
	ex af,af'		;ae71
	djnz lae74h		;ae72
lae74h:
	ld (hl),d		;ae74
	ld (hl),e		;ae75
	inc bc			;ae76
	ld (bc),a		;ae77
	djnz lae7ah		;ae78
lae7ah:
	nop			;ae7a
	ld (hl),b		;ae7b
	ld (hl),c		;ae7c
	inc bc			;ae7d
	jr $+18			;ae7e
	nop			;ae80
	ld (hl),d		;ae81
	ld (hl),e		;ae82
	inc bc			;ae83
	ld bc,00000h		;ae84
	nop			;ae87
	cp d			;ae88
	cp e			;ae89
	inc bc			;ae8a
	dec b			;ae8b
	nop			;ae8c
	nop			;ae8d
	nop			;ae8e
	ld e,04ch		;ae8f
	inc bc			;ae91
	nop			;ae92
	nop			;ae93
	jr nz,$+56		;ae94
	ld c,h			;ae96
	inc bc			;ae97
	inc b			;ae98
	ex af,af'		;ae99
	djnz laeb9h		;ae9a
	ld c,h			;ae9c
	inc bc			;ae9d
	ex af,af'		;ae9e
	djnz laea1h		;ae9f
laea1h:
	inc e			;aea1
	ld c,h			;aea2
	inc bc			;aea3
	ex af,af'		;aea4
	djnz laec7h		;aea5
	inc e			;aea7
	ld c,h			;aea8
	inc bc			;aea9
	ld (bc),a		;aeaa
	nop			;aeab
	nop			;aeac
laeadh:
	nop			;aead
	add a,d			;aeae
	add a,e			;aeaf
	inc bc			;aeb0
	ex af,af'		;aeb1
	djnz laeb4h		;aeb2
laeb4h:
	add a,h			;aeb4
	add a,l			;aeb5
	inc bc			;aeb6
	ld (bc),a		;aeb7
	nop			;aeb8
laeb9h:
	nop			;aeb9
	nop			;aeba
	ccf			;aebb
	ld b,b			;aebc
	inc bc			;aebd
	ex af,af'		;aebe
	nop			;aebf
	djnz laf01h		;aec0
	ld b,b			;aec2
	inc bc			;aec3
	ld (bc),a		;aec4
	djnz laec7h		;aec5
laec7h:
	nop			;aec7
	ld b,c			;aec8
	ld b,d			;aec9
	inc bc			;aeca
	jr laecdh		;aecb
laecdh:
	djnz laf10h		;aecd
	ld b,d			;aecf
	inc bc			;aed0
	ld bc,00000h		;aed1
	nop			;aed4
	dec bc			;aed5
	ld c,h			;aed6
	inc bc			;aed7
	ld bc,00000h		;aed8
	nop			;aedb
	add a,(hl)		;aedc
	add a,a			;aedd
	inc bc			;aede
	ld bc,00008h		;aedf
	nop			;aee2
	adc a,b			;aee3
	adc a,c			;aee4
	inc bc			;aee5
	ld (bc),a		;aee6
	nop			;aee7
	ret nz			;aee8
	nop			;aee9
	nop			;aeea
	ld b,b			;aeeb
	inc bc			;aeec
	nop			;aeed
	ret nz			;aeee
	nop			;aeef
	nop			;aef0
	ld b,b			;aef1
	inc bc			;aef2
	ld (bc),a		;aef3
	ld b,b			;aef4
	rrca			;aef5
	add hl,de		;aef6
	dec b			;aef7
	ld c,b			;aef8
	inc bc			;aef9
	jr z,laf1bh		;aefa
	add hl,de		;aefc
	dec b			;aefd
	ld c,b			;aefe
	inc bc			;aeff
	ld (bc),a		;af00
laf01h:
	nop			;af01
	ld (de),a		;af02
	jr nz,$+7		;af03
	ld c,b			;af05
	inc bc			;af06
	ex af,af'		;af07
	ld (00516h),hl		;af08
	ld c,b			;af0b
	inc bc			;af0c
	ld (bc),a		;af0d
	djnz laf23h		;af0e
laf10h:
	jr nz,$+7		;af10
	ld c,b			;af12
	inc bc			;af13
	jr laf39h		;af14
	ld d,005h		;af16
	ld c,b			;af18
	inc bc			;af19
	ld (bc),a		;af1a
laf1bh:
	jr nz,laf2ch		;af1b
	add hl,de		;af1d
	dec b			;af1e
	ld c,b			;af1f
	inc bc			;af20
	jr z,laf42h		;af21
laf23h:
	add hl,de		;af23
	dec b			;af24
	ld c,b			;af25
	inc bc			;af26
	ld (bc),a		;af27
	jr nc,laf39h		;af28
	jr $+7			;af2a
laf2ch:
	ld c,b			;af2c
	inc bc			;af2d
	jr c,laf4fh		;af2e
	jr laf37h		;af30
	ld c,b			;af32
	inc bc			;af33
	ld d,c			;af34
	xor a			;af35
	ld e,b			;af36
laf37h:
	xor a			;af37
	ld e,a			;af38
laf39h:
	xor a			;af39
	ld h,(hl)		;af3a
	xor a			;af3b
	ld a,0afh		;af3c
	inc bc			;af3e
	nop			;af3f
	nop			;af40
	nop			;af41
laf42h:
	adc a,h			;af42
	adc a,l			;af43
	inc bc			;af44
	ex af,af'		;af45
	djnz $+12		;af46
	adc a,(hl)		;af48
	adc a,a			;af49
	inc bc			;af4a
	nop			;af4b
	jr nz,laf4eh		;af4c
laf4eh:
	adc a,h			;af4e
laf4fh:
	adc a,l			;af4f
	inc bc			;af50
	ld bc,00000h		;af51
	nop			;af54
	cp h			;af55
	cp l			;af56
	inc bc			;af57
	ld bc,00000h		;af58
	nop			;af5b
	adc a,d			;af5c
	adc a,e			;af5d
	inc bc			;af5e
	ld bc,00000h		;af5f
	nop			;af62
	sub b			;af63
	sub c			;af64
	inc bc			;af65
	ld bc,00008h		;af66
	nop			;af69
	dec a			;af6a
	ld a,003h		;af6b
	defb 0edh ;next byte illegal after ed	;af6d
	xor a			;af6e
	call p,0fbafh		;af6f
	xor a			;af72
	ld (bc),a		;af73
	or b			;af74
	add a,l			;af75
	xor a			;af76
	sub d			;af77
	xor a			;af78
	sbc a,a			;af79
	xor a			;af7a
	xor h			;af7b
	xor a			;af7c
	cp c			;af7d
	xor a			;af7e
	add a,0afh		;af7f
	out (0afh),a		;af81
	ret po			;af83
	xor a			;af84
	ld (bc),a		;af85
	nop			;af86
	ret nz			;af87
	nop			;af88
	nop			;af89
	ld b,b			;af8a
	ld bc,0c000h		;af8b
	nop			;af8e
	nop			;af8f
	ld b,b			;af90
	ld bc,00002h		;af91
	nop			;af94
	nop			;af95
	rlca			;af96
	ld c,(hl)		;af97
	ld bc,06000h		;af98
	nop			;af9b
	rlca			;af9c
	ld c,(hl)		;af9d
	ld bc,00802h		;af9e
	nop			;afa1
	nop			;afa2
	rlca			;afa3
	ld c,(hl)		;afa4
	ld bc,06008h		;afa5
	nop			;afa8
	rlca			;afa9
	ld c,(hl)		;afaa
	ld bc,01002h		;afab
lafaeh:
	nop			;afae
	nop			;afaf
	rlca			;afb0
	ld c,(hl)		;afb1
	ld bc,06010h		;afb2
	nop			;afb5
	rlca			;afb6
	ld c,(hl)		;afb7
	ld bc,00002h		;afb8
	ret nz			;afbb
	nop			;afbc
	nop			;afbd
	ld b,b			;afbe
	ld bc,0c000h		;afbf
	nop			;afc2
	nop			;afc3
	ld b,b			;afc4
lafc5h:
	ld bc,00002h		;afc5
	nop			;afc8
	nop			;afc9
	rlca			;afca
	ld c,(hl)		;afcb
	ld bc,05000h		;afcc
	nop			;afcf
	rlca			;afd0
	ld c,(hl)		;afd1
	ld bc,00802h		;afd2
	nop			;afd5
	nop			;afd6
	rlca			;afd7
	ld c,(hl)		;afd8
	ld bc,05008h		;afd9
	nop			;afdc
	rlca			;afdd
	ld c,(hl)		;afde
	ld bc,01002h		;afdf
	nop			;afe2
	nop			;afe3
	rlca			;afe4
	ld c,(hl)		;afe5
	ld bc,05010h		;afe6
	nop			;afe9
	rlca			;afea
	ld c,(hl)		;afeb
	ld bc,00001h		;afec
	nop			;afef
	nop			;aff0
	inc h			;aff1
	ld b,b			;aff2
	inc bc			;aff3
	ld bc,00004h		;aff4
	nop			;aff7
	inc h			;aff8
	ld b,b			;aff9
	inc bc			;affa
	ld bc,00008h		;affb
	nop			;affe
	inc h			;afff
	ld b,b			;b000
	inc bc			;b001
	ld bc,0000ch		;b002
	nop			;b005
	inc h			;b006
	ld b,b			;b007
	inc bc			;b008
	inc e			;b009
	or b			;b00a
	inc hl			;b00b
	or b			;b00c
	ld hl,(031b0h)		;b00d
	or b			;b010
	dec d			;b011
	or b			;b012
	jr c,lafc5h		;b013
	ld bc,00000h		;b015
	nop			;b018
	and h			;b019
	and l			;b01a
	inc bc			;b01b
	ld bc,00000h		;b01c
	nop			;b01f
	ld h,(hl)		;b020
	ld h,a			;b021
	inc bc			;b022
	ld bc,00008h		;b023
	nop			;b026
	ld l,b			;b027
	ld l,c			;b028
	inc bc			;b029
	ld bc,00010h		;b02a
	nop			;b02d
	ld l,d			;b02e
	ld l,e			;b02f
	inc bc			;b030
	ld bc,00018h		;b031
	nop			;b034
	ld l,h			;b035
	ld l,l			;b036
	inc bc			;b037
	ld bc,0fe00h		;b038
	nop			;b03b
	rlca			;b03c
	ld c,e			;b03d
	inc bc			;b03e
	ld d,a			;b03f
	or b			;b040
	ld e,(hl)		;b041
	or b			;b042
	ld h,l			;b043
	or b			;b044
	ld l,h			;b045
	or b			;b046
	ld (hl),e		;b047
	or b			;b048
	ld a,d			;b049
	or b			;b04a
	add a,c			;b04b
	or b			;b04c
	adc a,b			;b04d
	or b			;b04e
	adc a,a			;b04f
	or b			;b050
	sub (hl)		;b051
	or b			;b052
	sbc a,l			;b053
	or b			;b054
	and h			;b055
	or b			;b056
	ld bc,00000h		;b057
	nop			;b05a
	ld b,04ah		;b05b
	inc bc			;b05d
	ld bc,00008h		;b05e
	nop			;b061
	ld b,04ah		;b062
	inc bc			;b064
	ld bc,00010h		;b065
	nop			;b068
	ld b,04ah		;b069
	inc bc			;b06b
	ld bc,00018h		;b06c
	nop			;b06f
	ld b,04ah		;b070
	inc bc			;b072
	ld bc,00020h		;b073
	nop			;b076
	ld b,04ah		;b077
	inc bc			;b079
	ld bc,00028h		;b07a
	nop			;b07d
	ld b,04ah		;b07e
	inc bc			;b080
	ld bc,00030h		;b081
	nop			;b084
	ld b,04ah		;b085
	inc bc			;b087
	ld bc,00038h		;b088
	nop			;b08b
	ld b,04ah		;b08c
	inc bc			;b08e
	ld bc,00040h		;b08f
	nop			;b092
	ld b,04ah		;b093
	inc bc			;b095
	ld bc,00048h		;b096
	nop			;b099
	ld b,04ah		;b09a
	inc bc			;b09c
	ld bc,00050h		;b09d
	nop			;b0a0
	ld b,04ah		;b0a1
	inc bc			;b0a3
	ld bc,00058h		;b0a4
	nop			;b0a7
	ld b,04ah		;b0a8
	inc bc			;b0aa
	push hl			;b0ab
	or b			;b0ac
	call pe,071b0h		;b0ad
	or c			;b0b0
	ld a,b			;b0b1
	or c			;b0b2
	ld a,b			;b0b3
	or c			;b0b4
	ld a,b			;b0b5
sub_b0b6h:
	or c			;b0b6
	ld a,b			;b0b7
	or c			;b0b8
	ld a,a			;b0b9
	or c			;b0ba
	add a,(hl)		;b0bb
	or c			;b0bc
	adc a,l			;b0bd
	or c			;b0be
	sub h			;b0bf
	or c			;b0c0
	di			;b0c1
	or b			;b0c2
	jp m,001b0h		;b0c3
	or c			;b0c6
	ex af,af'		;b0c7
	or c			;b0c8
	rrca			;b0c9
	or c			;b0ca
	ld d,0b1h		;b0cb
	dec e			;b0cd
	or c			;b0ce
	inc h			;b0cf
	or c			;b0d0
	dec hl			;b0d1
	or c			;b0d2
	ld (039b1h),a		;b0d3
	or c			;b0d6
	ld b,b			;b0d7
	or c			;b0d8
	ld b,a			;b0d9
	or c			;b0da
	ld c,(hl)		;b0db
	or c			;b0dc
	ld d,l			;b0dd
	or c			;b0de
	ld e,h			;b0df
	or c			;b0e0
	ld h,e			;b0e1
	or c			;b0e2
	ld l,d			;b0e3
	or c			;b0e4
	ld bc,00000h		;b0e5
	nop			;b0e8
	sbc a,b			;b0e9
	sbc a,c			;b0ea
	inc bc			;b0eb
	ld bc,00008h		;b0ec
	nop			;b0ef
	sbc a,d			;b0f0
	sbc a,e			;b0f1
	inc bc			;b0f2
	ld bc,00004h		;b0f3
	nop			;b0f6
	ld bc,003c5h		;b0f7
	ld bc,0000ch		;b0fa
	nop			;b0fd
	ld bc,003c5h		;b0fe
	ld bc,00014h		;b101
	nop			;b104
	ld bc,003c5h		;b105
	ld bc,0001ch		;b108
	nop			;b10b
	ld bc,003c5h		;b10c
	ld bc,00024h		;b10f
	nop			;b112
	ld bc,003c5h		;b113
	ld bc,0002ch		;b116
	nop			;b119
	ld bc,003c5h		;b11a
	ld bc,00034h		;b11d
	nop			;b120
	ld bc,003c5h		;b121
	ld bc,0003ch		;b124
	nop			;b127
	ld bc,003c5h		;b128
	ld bc,00044h		;b12b
	nop			;b12e
	ld bc,003c5h		;b12f
	ld bc,0004ch		;b132
	nop			;b135
	ld bc,003c5h		;b136
	ld bc,00054h		;b139
	nop			;b13c
	ld bc,003c5h		;b13d
	ld bc,0005ch		;b140
	nop			;b143
	ld bc,003c5h		;b144
	ld bc,00064h		;b147
	nop			;b14a
	ld bc,003c5h		;b14b
	ld bc,0006ch		;b14e
	nop			;b151
	ld bc,003c5h		;b152
	ld bc,00074h		;b155
	nop			;b158
	ld bc,003c5h		;b159
	ld bc,0007ch		;b15c
	nop			;b15f
	ld bc,003c5h		;b160
	ld bc,00084h		;b163
	nop			;b166
	ld bc,003c5h		;b167
	ld bc,00000h		;b16a
	nop			;b16d
	pop bc			;b16e
	push bc			;b16f
	inc bc			;b170
	ld bc,00000h		;b171
	nop			;b174
	sub d			;b175
	sub e			;b176
	inc bc			;b177
	ld bc,00000h		;b178
	nop			;b17b
	ld e,c			;b17c
	nop			;b17d
	inc bc			;b17e
	ld bc,00000h		;b17f
	nop			;b182
	sbc a,(hl)		;b183
	sbc a,a			;b184
	inc bc			;b185
	ld bc,00008h		;b186
	nop			;b189
	sbc a,(hl)		;b18a
	sbc a,a			;b18b
	inc bc			;b18c
	ld bc,00000h		;b18d
	nop			;b190
	sbc a,h			;b191
	sbc a,l			;b192
	inc bc			;b193
	ld bc,00008h		;b194
	nop			;b197
	ld d,(hl)		;b198
	ld d,a			;b199
	inc bc			;b19a
	cp l			;b19b
	or c			;b19c
	call nz,0d1b1h		;b19d
	or c			;b1a0
	sbc a,0b1h		;b1a1
	ex de,hl		;b1a3
	or c			;b1a4
	ret m			;b1a5
	or c			;b1a6
	dec b			;b1a7
	or d			;b1a8
	ld (de),a		;b1a9
	or d			;b1aa
	rra			;b1ab
	or d			;b1ac
	inc l			;b1ad
	or d			;b1ae
	add hl,sp		;b1af
lb1b0h:
	or d			;b1b0
	ld b,(hl)		;b1b1
	or d			;b1b2
	ld e,c			;b1b3
	or d			;b1b4
	ld l,h			;b1b5
	or d			;b1b6
lb1b7h:
	ld a,c			;b1b7
	or d			;b1b8
	add a,(hl)		;b1b9
	or d			;b1ba
	sub e			;b1bb
	or d			;b1bc
	ld bc,00000h		;b1bd
	nop			;b1c0
	xor b			;b1c1
	xor c			;b1c2
	inc bc			;b1c3
	ld (bc),a		;b1c4
	nop			;b1c5
	nop			;b1c6
	nop			;b1c7
	add hl,bc		;b1c8
	ld c,005h		;b1c9
	nop			;b1cb
	ret nz			;b1cc
	nop			;b1cd
	nop			;b1ce
	nop			;b1cf
	dec b			;b1d0
	ld (bc),a		;b1d1
	ex af,af'		;b1d2
	nop			;b1d3
	nop			;b1d4
	add hl,bc		;b1d5
	ld c,005h		;b1d6
	nop			;b1d8
	ret nz			;b1d9
	nop			;b1da
	nop			;b1db
	nop			;b1dc
	dec b			;b1dd
	ld (bc),a		;b1de
	djnz lb1e1h		;b1df
lb1e1h:
	nop			;b1e1
	add hl,bc		;b1e2
	ld c,005h		;b1e3
	nop			;b1e5
	ret nz			;b1e6
	nop			;b1e7
	nop			;b1e8
	nop			;b1e9
	dec b			;b1ea
	ld (bc),a		;b1eb
	jr lb1eeh		;b1ec
lb1eeh:
	nop			;b1ee
	add hl,bc		;b1ef
	ld c,005h		;b1f0
	nop			;b1f2
	ret nz			;b1f3
	nop			;b1f4
	nop			;b1f5
	nop			;b1f6
	dec b			;b1f7
	ld (bc),a		;b1f8
	jr nz,lb1fbh		;b1f9
lb1fbh:
	nop			;b1fb
	add hl,bc		;b1fc
	ld c,005h		;b1fd
	nop			;b1ff
	ret nz			;b200
	nop			;b201
	nop			;b202
	nop			;b203
	dec b			;b204
	ld (bc),a		;b205
	jr z,lb208h		;b206
lb208h:
	nop			;b208
	add hl,bc		;b209
	ld c,005h		;b20a
	jr c,$+18		;b20c
	nop			;b20e
	add hl,bc		;b20f
	ld c,005h		;b210
	ld (bc),a		;b212
	jr nc,lb215h		;b213
lb215h:
	nop			;b215
	add hl,bc		;b216
	ld c,005h		;b217
	jr c,lb223h		;b219
	nop			;b21b
	add hl,bc		;b21c
	ld c,005h		;b21d
	ld (bc),a		;b21f
	jr nc,lb222h		;b220
lb222h:
	nop			;b222
lb223h:
	add hl,bc		;b223
	ld c,005h		;b224
	jr c,lb238h		;b226
	nop			;b228
	add hl,bc		;b229
	ld c,005h		;b22a
	ld (bc),a		;b22c
	nop			;b22d
	nop			;b22e
	nop			;b22f
	daa			;b230
	nop			;b231
	inc bc			;b232
	inc b			;b233
	djnz lb236h		;b234
lb236h:
	jr z,lb238h		;b236
lb238h:
	inc bc			;b238
	ld (bc),a		;b239
	nop			;b23a
	nop			;b23b
	nop			;b23c
	ld b,e			;b23d
	nop			;b23e
	inc bc			;b23f
	inc b			;b240
	djnz lb243h		;b241
lb243h:
	ld b,h			;b243
	nop			;b244
	inc bc			;b245
	inc bc			;b246
	nop			;b247
	rlca			;b248
	jr c,lb24dh		;b249
	nop			;b24b
	inc bc			;b24c
lb24dh:
	inc b			;b24d
	rla			;b24e
	jr c,lb253h		;b24f
	nop			;b251
	inc bc			;b252
lb253h:
	ex af,af'		;b253
	daa			;b254
	jr nc,lb259h		;b255
	nop			;b257
	inc bc			;b258
lb259h:
	inc bc			;b259
	inc c			;b25a
	nop			;b25b
	jr c,lb2b6h		;b25c
	nop			;b25e
	inc bc			;b25f
	djnz lb272h		;b260
	jr c,lb266h		;b262
	nop			;b264
	inc bc			;b265
lb266h:
	inc d			;b266
	jr nz,$+58		;b267
	ld (bc),a		;b269
	nop			;b26a
lb26bh:
	inc bc			;b26b
	ld (bc),a		;b26c
	nop			;b26d
	nop			;b26e
	nop			;b26f
	nop			;b270
	nop			;b271
lb272h:
	inc bc			;b272
	nop			;b273
	nop			;b274
	nop			;b275
	nop			;b276
	nop			;b277
	inc bc			;b278
	ld (bc),a		;b279
	nop			;b27a
	jr lb27dh		;b27b
lb27dh:
	rlca			;b27d
	ld c,(hl)		;b27e
	inc bc			;b27f
	nop			;b280
	ld d,b			;b281
	nop			;b282
	rlca			;b283
	ld c,(hl)		;b284
	inc bc			;b285
	ld (bc),a		;b286
	ex af,af'		;b287
	jr lb28ah		;b288
lb28ah:
	rlca			;b28a
	ld c,(hl)		;b28b
	inc bc			;b28c
	ex af,af'		;b28d
	ld d,b			;b28e
	nop			;b28f
	rlca			;b290
	ld c,(hl)		;b291
	inc bc			;b292
	ld (bc),a		;b293
	djnz lb2aeh		;b294
	nop			;b296
	rlca			;b297
	ld c,(hl)		;b298
	inc bc			;b299
	djnz $+82		;b29a
	nop			;b29c
	rlca			;b29d
	ld c,(hl)		;b29e
	inc bc			;b29f
	jp pe,0f1b2h		;b2a0
	or d			;b2a3
	ret m			;b2a4
	or d			;b2a5
	ld b,0b3h		;b2a6
	dec c			;b2a8
	or e			;b2a9
	inc d			;b2aa
	or e			;b2ab
	dec de			;b2ac
	or e			;b2ad
lb2aeh:
	ld (029b3h),hl		;b2ae
	or e			;b2b1
	add hl,hl		;b2b2
	or e			;b2b3
	rst 38h			;b2b4
	or d			;b2b5
lb2b6h:
	jr nc,lb26bh		;b2b6
	scf			;b2b8
	or e			;b2b9
	ld a,0b3h		;b2ba
	ld b,l			;b2bc
	or e			;b2bd
	ld c,h			;b2be
	or e			;b2bf
	ld d,e			;b2c0
	or e			;b2c1
	ld e,d			;b2c2
	or e			;b2c3
	ld h,c			;b2c4
	or e			;b2c5
	ld l,b			;b2c6
	or e			;b2c7
	ld l,a			;b2c8
	or e			;b2c9
	halt			;b2ca
	or e			;b2cb
	ld a,l			;b2cc
	or e			;b2cd
	add a,h			;b2ce
	or e			;b2cf
	sub a			;b2d0
	or e			;b2d1
	xor d			;b2d2
	or e			;b2d3
	cp l			;b2d4
	or e			;b2d5
	ret nc			;b2d6
	or e			;b2d7
	rst 10h			;b2d8
	or e			;b2d9
	sbc a,0b3h		;b2da
	push hl			;b2dc
	or e			;b2dd
	call pe,0f3b3h		;b2de
	or e			;b2e1
	jp m,001b3h		;b2e2
	or h			;b2e5
	ex af,af'		;b2e6
	or h			;b2e7
	rrca			;b2e8
	or h			;b2e9
	ld bc,00000h		;b2ea
	nop			;b2ed
	ld c,000h		;b2ee
	inc b			;b2f0
	ld bc,00000h		;b2f1
	nop			;b2f4
	rlca			;b2f5
	inc c			;b2f6
	inc b			;b2f7
	ld bc,00000h		;b2f8
	nop			;b2fb
	rlca			;b2fc
	inc c			;b2fd
	inc b			;b2fe
	ld bc,00000h		;b2ff
	nop			;b302
	inc c			;b303
	ld c,003h		;b304
	ld bc,00000h		;b306
	nop			;b309
	rlca			;b30a
	ld c,003h		;b30b
	ld bc,00008h		;b30d
	nop			;b310
	rlca			;b311
	ld c,003h		;b312
	ld bc,00010h		;b314
	nop			;b317
	ld c,00eh		;b318
	inc bc			;b31a
	ld bc,00000h		;b31b
	nop			;b31e
	ld (00400h),hl		;b31f
	ld bc,00000h		;b322
	nop			;b325
	ld (00400h),hl		;b326
	ld bc,00000h		;b329
	nop			;b32c
	ld h,d			;b32d
	nop			;b32e
	inc b			;b32f
	ld bc,00000h		;b330
	nop			;b333
	rra			;b334
	nop			;b335
	inc b			;b336
	ld bc,0000ch		;b337
	nop			;b33a
	jr nz,lb33dh		;b33b
lb33dh:
	inc b			;b33d
	ld bc,00008h		;b33e
	nop			;b341
	ld hl,00400h		;b342
	ld bc,00004h		;b345
	nop			;b348
	jr nz,lb34bh		;b349
lb34bh:
	inc b			;b34b
	ld bc,00000h		;b34c
	nop			;b34f
	rra			;b350
	nop			;b351
	inc b			;b352
	ld bc,0000ch		;b353
	nop			;b356
	jr nz,lb359h		;b357
lb359h:
	inc b			;b359
	ld bc,00008h		;b35a
	nop			;b35d
	ld hl,00400h		;b35e
	ld bc,00004h		;b361
	nop			;b364
	ld (00400h),hl		;b365
	ld bc,00000h		;b368
	nop			;b36b
	ld b,04ah		;b36c
	inc b			;b36e
	ld bc,00008h		;b36f
	nop			;b372
	ld b,04ah		;b373
	inc b			;b375
	ld bc,00010h		;b376
	nop			;b379
	ld b,04ah		;b37a
	inc b			;b37c
	ld bc,00018h		;b37d
	nop			;b380
	ld b,04ah		;b381
	inc b			;b383
	inc bc			;b384
	nop			;b385
	nop			;b386
	nop			;b387
	ld b,000h		;b388
	inc b			;b38a
	nop			;b38b
	nop			;b38c
	nop			;b38d
	ld b,000h		;b38e
	inc b			;b390
	nop			;b391
	nop			;b392
	nop			;b393
	ld b,000h		;b394
	inc b			;b396
	inc bc			;b397
	nop			;b398
	nop			;b399
	nop			;b39a
	ld b,000h		;b39b
	inc b			;b39d
	nop			;b39e
	nop			;b39f
	nop			;b3a0
	ld b,000h		;b3a1
	inc b			;b3a3
	nop			;b3a4
	nop			;b3a5
	nop			;b3a6
	ld b,000h		;b3a7
	inc b			;b3a9
	inc bc			;b3aa
	nop			;b3ab
	nop			;b3ac
	nop			;b3ad
	ld b,000h		;b3ae
	inc b			;b3b0
	nop			;b3b1
lb3b2h:
	nop			;b3b2
	nop			;b3b3
	ld b,000h		;b3b4
	inc b			;b3b6
	nop			;b3b7
lb3b8h:
	nop			;b3b8
	nop			;b3b9
	ld b,000h		;b3ba
	inc b			;b3bc
	inc bc			;b3bd
	nop			;b3be
	nop			;b3bf
	nop			;b3c0
	ld b,000h		;b3c1
	inc b			;b3c3
	nop			;b3c4
	nop			;b3c5
	nop			;b3c6
	ld b,000h		;b3c7
	inc b			;b3c9
	nop			;b3ca
	nop			;b3cb
	nop			;b3cc
	ld b,000h		;b3cd
	inc b			;b3cf
	ld bc,00000h		;b3d0
	nop			;b3d3
	inc hl			;b3d4
	nop			;b3d5
	inc bc			;b3d6
	ld bc,00000h		;b3d7
	nop			;b3da
	dec c			;b3db
	ld c,(hl)		;b3dc
	inc bc			;b3dd
	ld bc,00000h		;b3de
	nop			;b3e1
	cp (hl)			;b3e2
	nop			;b3e3
	inc b			;b3e4
	ld bc,00000h		;b3e5
	nop			;b3e8
	ld b,04ah		;b3e9
	inc bc			;b3eb
	ld bc,00008h		;b3ec
	nop			;b3ef
	ld b,04ah		;b3f0
	inc bc			;b3f2
	ld bc,00010h		;b3f3
	nop			;b3f6
	ld b,04ah		;b3f7
	inc bc			;b3f9
	ld bc,00000h		;b3fa
	nop			;b3fd
	dec h			;b3fe
	nop			;b3ff
	inc bc			;b400
	ld bc,00004h		;b401
	nop			;b404
	dec h			;b405
	nop			;b406
	inc bc			;b407
	ld bc,00008h		;b408
	nop			;b40b
	dec h			;b40c
	nop			;b40d
	inc bc			;b40e
	ld bc,0000ch		;b40f
	nop			;b412
	dec h			;b413
	nop			;b414
	inc bc			;b415
	nop			;b416
	nop			;b417
	ld de,0000eh		;b418
	nop			;b41b
	nop			;b41c
	nop			;b41d
	nop			;b41e
	dec bc			;b41f
	ld bc,04a48h		;b420
	ld c,c			;b423
	inc b			;b424
	nop			;b425
	nop			;b426
	nop			;b427
	nop			;b428
	nop			;b429
	nop			;b42a
	nop			;b42b
	inc bc			;b42c
	ld c,e			;b42d
	ld c,h			;b42e
	ld c,l			;b42f
	ld c,(hl)		;b430
	ld c,a			;b431
	ld d,b			;b432
	dec b			;b433
	nop			;b434
	nop			;b435
	nop			;b436
	nop			;b437
	nop			;b438
	ld (bc),a		;b439
	ld d,c			;b43a
	ld d,d			;b43b
	ld d,e			;b43c
	ld d,h			;b43d
	ld d,l			;b43e
	ld d,(hl)		;b43f
	ld d,a			;b440
	ld e,b			;b441
	rlca			;b442
	nop			;b443
	nop			;b444
	nop			;b445
	ld b,059h		;b446
	ld e,d			;b448
	ld e,e			;b449
	ld e,h			;b44a
	ld e,l			;b44b
	ld e,(hl)		;b44c
	ld e,a			;b44d
	ld h,b			;b44e
	ld h,c			;b44f
	ld h,d			;b450
	nop			;b451
	nop			;b452
	add hl,bc		;b453
	ld h,e			;b454
	ld h,h			;b455
	ld h,l			;b456
	ld h,(hl)		;b457
	ld h,a			;b458
	ld l,b			;b459
	ld l,c			;b45a
	ld l,d			;b45b
	ld l,e			;b45c
	ld l,h			;b45d
	ld l,l			;b45e
	ex af,af'		;b45f
	nop			;b460
	ld a,(bc)		;b461
	ld l,(hl)		;b462
	ld l,a			;b463
	ld (hl),b		;b464
	ld (hl),c		;b465
	ld (hl),d		;b466
	ld (hl),e		;b467
	ld (hl),h		;b468
	ld (hl),l		;b469
	halt			;b46a
	ld (hl),a		;b46b
	ld a,b			;b46c
	ld a,c			;b46d
	nop			;b46e
	nop			;b46f
	nop			;b470
	inc d			;b471
	ld (de),a		;b472
	inc de			;b473
	ld a,e			;b474
	ld a,h			;b475
	ld a,l			;b476
	sub h			;b477
	sub l			;b478
	sub (hl)		;b479
	sub a			;b47a
	sbc a,b			;b47b
	nop			;b47c
	nop			;b47d
	nop			;b47e
	nop			;b47f
	nop			;b480
	nop			;b481
	inc (hl)		;b482
	dec (hl)		;b483
	ld (hl),037h		;b484
	jr c,lb4c1h		;b486
	ld a,(0003bh)		;b488
	nop			;b48b
	nop			;b48c
	rlca			;b48d
	xor c			;b48e
	ld l,l			;b48f
	ld b,b			;b490
	ld b,c			;b491
	ld b,d			;b492
	ld b,e			;b493
	ld b,h			;b494
	ld b,l			;b495
	ld b,(hl)		;b496
	ld b,a			;b497
	nop			;b498
	ld c,b			;b499
	ld c,c			;b49a
	ld c,d			;b49b
	ld c,e			;b49c
	ld c,h			;b49d
	ld c,l			;b49e
	ld c,(hl)		;b49f
	ld c,a			;b4a0
	sub h			;b4a1
	sub l			;b4a2
	sub (hl)		;b4a3
	sub a			;b4a4
	sbc a,b			;b4a5
	nop			;b4a6
	nop			;b4a7
	inc d			;b4a8
	ld (de),a		;b4a9
	inc de			;b4aa
	ld d,c			;b4ab
	ld d,d			;b4ac
	dec (hl)		;b4ad
	ld (hl),037h		;b4ae
	jr c,lb4ebh		;b4b0
	ld a,(0003bh)		;b4b2
	nop			;b4b5
	nop			;b4b6
	nop			;b4b7
	nop			;b4b8
	inc bc			;b4b9
	ld d,l			;b4ba
	ld d,(hl)		;b4bb
	ld d,a			;b4bc
	ld b,e			;b4bd
	ld b,h			;b4be
	ld b,l			;b4bf
	ld b,(hl)		;b4c0
lb4c1h:
	ld b,a			;b4c1
	nop			;b4c2
	nop			;b4c3
	rlca			;b4c4
	xor c			;b4c5
	ld l,l			;b4c6
	ld e,c			;b4c7
	ld e,d			;b4c8
	ld c,a			;b4c9
	sub h			;b4ca
	sub l			;b4cb
	sub (hl)		;b4cc
	ld e,e			;b4cd
	ld e,h			;b4ce
	rrca			;b4cf
	ld c,b			;b4d0
	ld c,c			;b4d1
	ld c,d			;b4d2
	ld e,l			;b4d3
	ld e,(hl)		;b4d4
	ld d,d			;b4d5
	dec (hl)		;b4d6
	ld (hl),037h		;b4d7
	jr c,lb514h		;b4d9
	ld e,a			;b4db
	ld h,b			;b4dc
	inc b			;b4dd
	nop			;b4de
	inc d			;b4df
	ld (de),a		;b4e0
	inc de			;b4e1
	ld h,d			;b4e2
	ld h,e			;b4e3
	ld h,h			;b4e4
	ld h,l			;b4e5
	ld b,e			;b4e6
	ld h,(hl)		;b4e7
	ld h,a			;b4e8
	ld l,b			;b4e9
	dec b			;b4ea
lb4ebh:
	nop			;b4eb
	nop			;b4ec
	nop			;b4ed
	nop			;b4ee
	nop			;b4ef
	jp 07978h		;b4f0
	ld a,d			;b4f3
	ld a,e			;b4f4
	ld a,h			;b4f5
	ld a,l			;b4f6
	ld (bc),a		;b4f7
	ld bc,00000h		;b4f8
	add a,d			;b4fb
	xor c			;b4fc
	cp a			;b4fd
	xor e			;b4fe
	add a,e			;b4ff
	add a,h			;b500
	sub a			;b501
	sbc a,d			;b502
	rlca			;b503
	nop			;b504
	nop			;b505
	nop			;b506
	nop			;b507
	nop			;b508
	nop			;b509
	inc b			;b50a
	rrca			;b50b
	add a,l			;b50c
	add a,(hl)		;b50d
	add a,a			;b50e
	adc a,b			;b50f
	adc a,c			;b510
	adc a,d			;b511
	adc a,e			;b512
	sub b			;b513
lb514h:
	adc a,h			;b514
	adc a,l			;b515
	ex af,af'		;b516
	dec b			;b517
	nop			;b518
	nop			;b519
	nop			;b51a
	sbc a,e			;b51b
	and e			;b51c
	and h			;b51d
	sbc a,b			;b51e
	sub (hl)		;b51f
	adc a,(hl)		;b520
	adc a,a			;b521
	sub b			;b522
	adc a,d			;b523
	adc a,c			;b524
	adc a,d			;b525
	adc a,e			;b526
	adc a,l			;b527
	ex af,af'		;b528
	inc b			;b529
	sbc a,(hl)		;b52a
	sbc a,a			;b52b
	and b			;b52c
	and l			;b52d
	sbc a,l			;b52e
	and c			;b52f
	sbc a,c			;b530
	push bc			;b531
	sub h			;b532
	sub e			;b533
	sub d			;b534
	sub d			;b535
	sub c			;b536
	sub l			;b537
	ld b,09bh		;b538
	sbc a,h			;b53a
	sbc a,l			;b53b
	sbc a,h			;b53c
	and d			;b53d
	nop			;b53e
	nop			;b53f
	nop			;b540
	nop			;b541
	nop			;b542
	nop			;b543
	nop			;b544
	nop			;b545
	nop			;b546
	nop			;b547
	nop			;b548
	nop			;b549
	inc b			;b54a
	ld c,000h		;b54b
	jr nz,lb570h		;b54d
	ld (00010h),hl		;b54f
	nop			;b552
	nop			;b553
	rla			;b554
	inc hl			;b555
	inc h			;b556
	djnz lb559h		;b557
lb559h:
	nop			;b559
	dec h			;b55a
	ld h,011h		;b55b
	inc d			;b55d
	daa			;b55e
	ld (05a55h),hl		;b55f
	jr z,lb576h		;b562
	ccf			;b564
	add hl,hl		;b565
	ld h,l			;b566
	ld l,h			;b567
	ld l,l			;b568
	ld hl,(02c19h)		;b569
	ld h,(hl)		;b56c
	dec c			;b56d
	rra			;b56e
	ccf			;b56f
lb570h:
	dec hl			;b570
	dec l			;b571
	nop			;b572
	rla			;b573
	ld l,06ch		;b574
lb576h:
	nop			;b576
	ld c,b			;b577
	inc a			;b578
	ld b,a			;b579
	nop			;b57a
	nop			;b57b
	nop			;b57c
	nop			;b57d
	nop			;b57e
	ld b,l			;b57f
	cpl			;b580
	ld d,a			;b581
	dec de			;b582
	nop			;b583
	nop			;b584
	nop			;b585
	inc b			;b586
	ld c,013h		;b587
	ld b,e			;b589
	dec l			;b58a
	nop			;b58b
	nop			;b58c
	nop			;b58d
	nop			;b58e
	inc de			;b58f
	inc l			;b590
	inc hl			;b591
	inc e			;b592
	nop			;b593
	nop			;b594
	nop			;b595
	jr nc,lb5b7h		;b596
	ld b,l			;b598
	ld sp,00c32h		;b599
	ld h,a			;b59c
	inc sp			;b59d
	ld b,a			;b59e
	ld (de),a		;b59f
	dec a			;b5a0
	ld l,b			;b5a1
	ld c,d			;b5a2
	ld l,a			;b5a3
	ld b,(hl)		;b5a4
	inc h			;b5a5
	inc l			;b5a6
	ld h,(hl)		;b5a7
	ld c,l			;b5a8
	ld a,03fh		;b5a9
	dec hl			;b5ab
	dec l			;b5ac
	nop			;b5ad
	jr nz,$+48		;b5ae
	ld l,h			;b5b0
	inc (hl)		;b5b1
	nop			;b5b2
	ccf			;b5b3
lb5b4h:
	ld b,a			;b5b4
	nop			;b5b5
	nop			;b5b6
lb5b7h:
	nop			;b5b7
	nop			;b5b8
lb5b9h:
	nop			;b5b9
	ld b,l			;b5ba
	cpl			;b5bb
	ld h,01bh		;b5bc
	nop			;b5be
	nop			;b5bf
	nop			;b5c0
	nop			;b5c1
	inc b			;b5c2
	ld c,043h		;b5c3
	dec l			;b5c5
	nop			;b5c6
	nop			;b5c7
	nop			;b5c8
	nop			;b5c9
	nop			;b5ca
	inc de			;b5cb
	ld a,(de)		;b5cc
	djnz lb5cfh		;b5cd
lb5cfh:
	nop			;b5cf
	nop			;b5d0
	nop			;b5d1
	rra			;b5d2
	ld b,l			;b5d3
	ld sp,00b32h		;b5d4
	dec (hl)		;b5d7
	ld c,(hl)		;b5d8
	ld c,c			;b5d9
	ld a,029h		;b5da
	ld h,l			;b5dc
	ld hl,06f2eh		;b5dd
	inc h			;b5e0
	inc l			;b5e1
	ld h,(hl)		;b5e2
	ld c,l			;b5e3
	inc a			;b5e4
	ld d,b			;b5e5
	ld l,l			;b5e6
	dec l			;b5e7
	nop			;b5e8
	jr nz,lb619h		;b5e9
	ld e,(hl)		;b5eb
	ld h,b			;b5ec
	ld c,d			;b5ed
	ccf			;b5ee
	ld b,a			;b5ef
	nop			;b5f0
	nop			;b5f1
	nop			;b5f2
	nop			;b5f3
	nop			;b5f4
	ld b,l			;b5f5
	cpl			;b5f6
	ld h,01bh		;b5f7
	nop			;b5f9
	nop			;b5fa
	nop			;b5fb
	nop			;b5fc
	nop			;b5fd
	inc b			;b5fe
	ld c,02ah		;b5ff
	nop			;b601
	nop			;b602
	nop			;b603
	nop			;b604
	nop			;b605
	rla			;b606
	inc hl			;b607
	inc e			;b608
	nop			;b609
	nop			;b60a
	nop			;b60b
	nop			;b60c
	nop			;b60d
	ld c,b			;b60e
	ld b,(hl)		;b60f
	ld d,(hl)		;b610
	dec bc			;b611
	ld (hl),037h		;b612
	jr z,lb628h		;b614
	dec a			;b616
	ld b,d			;b617
	inc e			;b618
lb619h:
	add hl,de		;b619
	ld b,c			;b61a
	ld l,h			;b61b
	ld a,(03f52h)		;b61c
	inc a			;b61f
	jr z,$+111		;b620
	dec l			;b622
	nop			;b623
	jr nz,$+100		;b624
	ld h,e			;b626
	ld h,h			;b627
lb628h:
	ld e,l			;b628
	ld l,038h		;b629
	nop			;b62b
	nop			;b62c
	nop			;b62d
	nop			;b62e
	nop			;b62f
	ld b,l			;b630
	cpl			;b631
	ld h,01bh		;b632
	nop			;b634
	nop			;b635
	jr lb653h		;b636
	nop			;b638
	nop			;b639
	inc b			;b63a
	ld c,015h		;b63b
	nop			;b63d
	nop			;b63e
	nop			;b63f
	inc de			;b640
	ld b,e			;b641
	ld c,d			;b642
	ld (00010h),hl		;b643
	nop			;b646
	nop			;b647
	nop			;b648
	nop			;b649
	add hl,sp		;b64a
	ld l,(hl)		;b64b
	ld c,043h		;b64c
	ld d,d			;b64e
	rra			;b64f
	nop			;b650
	inc d			;b651
	ld e,a			;b652
lb653h:
	ld hl,(02c09h)		;b653
	ld l,h			;b656
	ld l,a			;b657
	ld d,e			;b658
	ld l,c			;b659
	ld a,051h		;b65a
	ld l,l			;b65c
	inc h			;b65d
	inc l			;b65e
	ld c,(hl)		;b65f
	ld c,c			;b660
	ld a,(bc)		;b661
	inc a			;b662
	ld (hl),d		;b663
	ld b,h			;b664
	ld l,03bh		;b665
	nop			;b667
	nop			;b668
	nop			;b669
	nop			;b66a
	ccf			;b66b
	ld b,a			;b66c
	dec de			;b66d
	nop			;b66e
	nop			;b66f
	nop			;b670
	nop			;b671
	jr $+29			;b672
	nop			;b674
	nop			;b675
	inc b			;b676
	ld c,000h		;b677
	nop			;b679
	nop			;b67a
	inc de			;b67b
	ld b,e			;b67c
	ld c,d			;b67d
	ld (00010h),hl		;b67e
	nop			;b681
	nop			;b682
	nop			;b683
	nop			;b684
	nop			;b685
	dec hl			;b686
	ld (05243h),hl		;b687
	rra			;b68a
	nop			;b68b
	inc d			;b68c
	ld c,h			;b68d
	ld hl,(0410fh)		;b68e
	ld l,h			;b691
	ld l,a			;b692
	ld c,a			;b693
	ld c,e			;b694
	dec c			;b695
	ld (hl),b		;b696
	ld l,(hl)		;b697
	inc e			;b698
	add hl,de		;b699
	ld b,c			;b69a
	ld e,h			;b69b
	ld d,a			;b69c
	inc a			;b69d
	ld l,d			;b69e
	ld h,l			;b69f
	ld hl,01b6ch		;b6a0
	nop			;b6a3
	nop			;b6a4
	dec e			;b6a5
	dec a			;b6a6
	inc a			;b6a7
	dec sp			;b6a8
	nop			;b6a9
	nop			;b6aa
	nop			;b6ab
	nop			;b6ac
	nop			;b6ad
	ld de,00000h		;b6ae
	nop			;b6b1
	inc b			;b6b2
	ld c,000h		;b6b3
	nop			;b6b5
	inc de			;b6b6
	ld b,e			;b6b7
	ld c,d			;b6b8
	ld (00010h),hl		;b6b9
	nop			;b6bc
	nop			;b6bd
	nop			;b6be
lb6bfh:
	nop			;b6bf
	nop			;b6c0
	nop			;b6c1
	ld (05243h),hl		;b6c2
	rra			;b6c5
	nop			;b6c6
	inc d			;b6c7
	daa			;b6c8
	ld hl,(04119h)		;b6c9
	ld l,h			;b6cc
	ld l,a			;b6cd
	ld c,a			;b6ce
	inc (hl)		;b6cf
	dec c			;b6d0
	ld (hl),b		;b6d1
	ld l,(hl)		;b6d2
	inc e			;b6d3
	nop			;b6d4
	rla			;b6d5
	ld h,a			;b6d6
	ld l,e			;b6d7
	inc a			;b6d8
	ld (hl),d		;b6d9
	ld b,h			;b6da
	inc hl			;b6db
	ld b,e			;b6dc
	ld l,h			;b6dd
	nop			;b6de
	nop			;b6df
	dec e			;b6e0
	dec a			;b6e1
	cpl			;b6e2
	jr z,lb6fbh		;b6e3
	nop			;b6e5
	nop			;b6e6
	nop			;b6e7
	jr lb6fch		;b6e8
	rra			;b6ea
	nop			;b6eb
	nop			;b6ec
	nop			;b6ed
	inc b			;b6ee
	ld c,000h		;b6ef
	ld e,02eh		;b6f1
	ld c,d			;b6f3
	ld (00010h),hl		;b6f4
	nop			;b6f7
	nop			;b6f8
	nop			;b6f9
	nop			;b6fa
lb6fbh:
	nop			;b6fb
lb6fch:
	nop			;b6fc
	nop			;b6fd
	ld e,b			;b6fe
	ld b,b			;b6ff
	dec de			;b700
	nop			;b701
	inc d			;b702
	daa			;b703
	ld hl,(0410fh)		;b704
	ld l,h			;b707
	ld l,a			;b708
	ld c,a			;b709
	ld h,l			;b70a
	ld l,h			;b70b
	ld e,c			;b70c
	ld sp,0001ch		;b70d
	inc de			;b710
	dec h			;b711
	ld (hl),c		;b712
	inc a			;b713
	ld l,d			;b714
	ld d,h			;b715
	djnz lb718h		;b716
lb718h:
	jr nz,lb748h		;b718
	nop			;b71a
	jr lb75ah		;b71b
	cpl			;b71d
	ld c,c			;b71e
	ld d,000h		;b71f
	nop			;b721
	nop			;b722
	dec e			;b723
	add hl,hl		;b724
	cpl			;b725
	ld h,01bh		;b726
	nop			;b728
	ld bc,00503h		;b729
	djnz lb6bfh		;b72c
	sub d			;b72e
	sub e			;b72f
	ld a,a			;b730
	dec c			;b731
	jr nc,lb765h		;b732
	ld (00e33h),a		;b734
	inc a			;b737
	dec a			;b738
	ld a,03fh		;b739
	nop			;b73b
	ld bc,00503h		;b73c
	ld de,09c99h		;b73f
	sbc a,e			;b742
	ld a,a			;b743
	nop			;b744
	nop			;b745
	add a,080h		;b746
lb748h:
	ld a,a			;b748
	ld b,072h		;b749
	ld l,d			;b74b
	ld l,e			;b74c
	ccf			;b74d
	nop			;b74e
	inc bc			;b74f
	inc bc			;b750
	inc bc			;b751
	push bc			;b752
	sbc a,(hl)		;b753
	sbc a,l			;b754
	add a,07eh		;b755
	ld a,l			;b757
	rst 0			;b758
	ld a,e			;b759
lb75ah:
	ld l,h			;b75a
	nop			;b75b
	ld bc,00503h		;b75c
	ld de,09a99h		;b75f
	sbc a,e			;b762
	ld a,a			;b763
	nop			;b764
lb765h:
	nop			;b765
	nop			;b766
	nop			;b767
	add hl,bc		;b768
	ld b,072h		;b769
	halt			;b76b
	ld (hl),a		;b76c
	ccf			;b76d
	nop			;b76e
	nop			;b76f
	inc bc			;b770
	ld b,010h		;b771
	sub c			;b773
	sub d			;b774
	sub e			;b775
	ld h,c			;b776
	ld d,c			;b777
	dec c			;b778
	jr nc,lb7ach		;b779
	ld (05453h),a		;b77b
	ld c,03ch		;b77e
	dec a			;b780
	ld a,058h		;b781
	ld e,c			;b783
	nop			;b784
	nop			;b785
	inc bc			;b786
	ld b,011h		;b787
	sbc a,c			;b789
	sbc a,h			;b78a
	sbc a,e			;b78b
	ld h,c			;b78c
	ld h,d			;b78d
	nop			;b78e
	nop			;b78f
	add a,080h		;b790
	ld a,h			;b792
	ld a,d			;b793
	ld b,072h		;b794
	ld l,d			;b796
	ld l,e			;b797
	ld e,b			;b798
	ld l,(hl)		;b799
	nop			;b79a
	ld (bc),a		;b79b
	inc bc			;b79c
	inc b			;b79d
	push bc			;b79e
	sbc a,(hl)		;b79f
	sbc a,l			;b7a0
	ld d,c			;b7a1
	add a,07eh		;b7a2
	ld a,l			;b7a4
	ld a,c			;b7a5
	rst 0			;b7a6
	ld a,e			;b7a7
	ld a,b			;b7a8
	ld e,c			;b7a9
	nop			;b7aa
	nop			;b7ab
lb7ach:
	inc bc			;b7ac
	ld b,010h		;b7ad
	sub c			;b7af
	sub d			;b7b0
	sub e			;b7b1
	ld h,c			;b7b2
	ld h,d			;b7b3
	inc bc			;b7b4
	ld (hl),e		;b7b5
	ld (hl),h		;b7b6
	ld (hl),l		;b7b7
	halt			;b7b8
	ld (hl),a		;b7b9
	ld a,(hl)		;b7ba
	ld a,a			;b7bb
	add a,b			;b7bc
	add a,c			;b7bd
	xor d			;b7be
	xor e			;b7bf
	nop			;b7c0
	nop			;b7c1
	inc bc			;b7c2
	ld b,011h		;b7c3
sub_b7c5h:
	sbc a,c			;b7c5
	sbc a,h			;b7c6
	sbc a,e			;b7c7
	ld h,c			;b7c8
	ld h,d			;b7c9
	nop			;b7ca
	nop			;b7cb
	add a,0c8h		;b7cc
	and a			;b7ce
	call nz,0c0bch		;b7cf
	cp (hl)			;b7d2
	xor b			;b7d3
	xor d			;b7d4
	xor e			;b7d5
	nop			;b7d6
	ld (bc),a		;b7d7
	inc bc			;b7d8
	inc b			;b7d9
	push bc			;b7da
	sbc a,(hl)		;b7db
	sbc a,l			;b7dc
	ld h,d			;b7dd
	add a,0c8h		;b7de
	ret			;b7e0
	and (hl)		;b7e1
	rst 0			;b7e2
	pop bc			;b7e3
	jp nz,000abh		;b7e4
	ld (bc),a		;b7e7
	inc bc			;b7e8
	inc b			;b7e9
	ret z			;b7ea
	pop bc			;b7eb
	jp nz,0b551h		;b7ec
	or e			;b7ef
	cp e			;b7f0
	cp b			;b7f1
	jp z,ladb7h		;b7f2
	ld e,c			;b7f5
	nop			;b7f6
	ld (bc),a		;b7f7
	inc bc			;b7f8
	inc b			;b7f9
	ret z			;b7fa
	jp 051c4h		;b7fb
	call z,lb5b4h		;b7fe
	cp b			;b801
	call laeb9h		;b802
	ld e,c			;b805
	nop			;b806
	nop			;b807
	inc bc			;b808
	ld b,011h		;b809
	sbc a,c			;b80b
	ld (hl),c		;b80c
	sbc a,e			;b80d
	ld h,c			;b80e
	ld d,c			;b80f
	nop			;b810
	nop			;b811
	call z,sub_bab6h	;b812
	or c			;b815
	ld b,072h		;b816
	xor h			;b818
	ld (hl),e		;b819
	ld e,b			;b81a
	ld e,c			;b81b
	nop			;b81c
	inc bc			;b81d
	inc bc			;b81e
	inc b			;b81f
	ret z			;b820
	pop bc			;b821
	jp nz,0cc7bh		;b822
	or e			;b825
	cp e			;b826
	inc (hl)		;b827
	call ladb7h		;b828
	ld b,b			;b82b
	nop			;b82c
	inc bc			;b82d
	inc bc			;b82e
	inc b			;b82f
	ret			;b830
	jp 07bc4h		;b831
	res 6,h			;b834
	or l			;b836
	inc (hl)		;b837
	jp z,laeb9h		;b838
	ld b,b			;b83b
	nop			;b83c
	ld (bc),a		;b83d
	inc bc			;b83e
	inc b			;b83f
	ret z			;b840
	pop bc			;b841
	jp nz,0cb62h		;b842
	or e			;b845
	cp e			;b846
	or d			;b847
	jp z,ladb7h		;b848
	xor e			;b84b
	nop			;b84c
	ld (bc),a		;b84d
	inc bc			;b84e
	inc b			;b84f
	ret			;b850
	jp 062c4h		;b851
	call z,0cbb4h		;b854
	cp b			;b857
	call laeb9h		;b858
	xor e			;b85b
	nop			;b85c
	ld bc,00603h		;b85d
	ld de,07e99h		;b860
	sbc a,e			;b863
	ld a,a			;b864
	ld a,e			;b865
	nop			;b866
	nop			;b867
	call z,sub_b0b6h	;b868
	inc (hl)		;b86b
	ld b,072h		;b86c
	xor h			;b86e
	ld (hl),h		;b86f
	ccf			;b870
	ld b,b			;b871
	nop			;b872
	nop			;b873
	inc bc			;b874
	ld b,011h		;b875
	sbc a,c			;b877
	ld (hl),c		;b878
	sbc a,e			;b879
	ld d,b			;b87a
	ld h,d			;b87b
	nop			;b87c
	nop			;b87d
	call z,sub_bab6h	;b87e
	or c			;b881
	cp h			;b882
	ret nz			;b883
	xor h			;b884
	xor b			;b885
	xor d			;b886
	xor e			;b887
	nop			;b888
	nop			;b889
	inc bc			;b88a
	ld b,011h		;b88b
	sbc a,c			;b88d
	sbc a,d			;b88e
	sbc a,e			;b88f
	ld d,b			;b890
	ld d,c			;b891
	nop			;b892
	nop			;b893
	nop			;b894
	nop			;b895
	ex af,af'		;b896
	ld (hl),l		;b897
	ld b,072h		;b898
	halt			;b89a
	ld (hl),e		;b89b
	ld e,b			;b89c
	ld l,(hl)		;b89d
	nop			;b89e
	nop			;b89f
	inc bc			;b8a0
	ld b,011h		;b8a1
	sbc a,c			;b8a3
	sbc a,d			;b8a4
	sbc a,e			;b8a5
	ld d,b			;b8a6
	ld h,d			;b8a7
	nop			;b8a8
	nop			;b8a9
	nop			;b8aa
	nop			;b8ab
	nop			;b8ac
	jp 0c0bch		;b8ad
	cp (hl)			;b8b0
	xor b			;b8b1
	xor d			;b8b2
	xor e			;b8b3
	nop			;b8b4
	nop			;b8b5
	nop			;b8b6
	nop			;b8b7
	nop			;b8b8
	nop			;b8b9
	nop			;b8ba
	nop			;b8bb
	nop			;b8bc
	ld bc,05b5ah		;b8bd
	ld e,h			;b8c0
	ld (bc),a		;b8c1
	nop			;b8c2
	nop			;b8c3
	nop			;b8c4
	nop			;b8c5
	nop			;b8c6
	nop			;b8c7
	nop			;b8c8
	nop			;b8c9
	inc bc			;b8ca
	inc b			;b8cb
	dec b			;b8cc
	ld e,l			;b8cd
	ld e,(hl)		;b8ce
	ld e,a			;b8cf
	ld h,b			;b8d0
	ld h,c			;b8d1
	ld b,007h		;b8d2
	nop			;b8d4
	ex af,af'		;b8d5
	add hl,bc		;b8d6
	ld h,d			;b8d7
	ld h,e			;b8d8
	ld h,h			;b8d9
	ld h,l			;b8da
	ld h,(hl)		;b8db
	ld h,a			;b8dc
	ld l,b			;b8dd
	ld l,c			;b8de
	ld l,c			;b8df
	ld l,d			;b8e0
	ld l,e			;b8e1
	ld l,h			;b8e2
	ld a,(bc)		;b8e3
	dec bc			;b8e4
	ld l,l			;b8e5
	ld l,(hl)		;b8e6
	ld l,a			;b8e7
	ld (hl),b		;b8e8
	ld (hl),c		;b8e9
	ld (hl),d		;b8ea
	ld (hl),c		;b8eb
	ld (hl),e		;b8ec
	ld (hl),e		;b8ed
	ld (hl),h		;b8ee
	ld (hl),h		;b8ef
	ld (hl),l		;b8f0
	halt			;b8f1
	ld (hl),a		;b8f2
	inc c			;b8f3
	nop			;b8f4
	jr nc,lb928h		;b8f5
	nop			;b8f7
	nop			;b8f8
	nop			;b8f9
	nop			;b8fa
	xor e			;b8fb
	add a,b			;b8fc
	add a,b			;b8fd
	or e			;b8fe
	ld a,b			;b8ff
	ld a,c			;b900
	ld a,d			;b901
	ld a,e			;b902
	djnz lb905h		;b903
lb905h:
	nop			;b905
	nop			;b906
	nop			;b907
	nop			;b908
	nop			;b909
	nop			;b90a
	nop			;b90b
	ret z			;b90c
	call nz,07cb4h		;b90d
	ld a,l			;b910
	ld a,(hl)		;b911
	ld a,a			;b912
	dec c			;b913
	nop			;b914
	nop			;b915
	nop			;b916
	nop			;b917
	nop			;b918
	nop			;b919
	nop			;b91a
	or d			;b91b
	jp lbac2h		;b91c
	and h			;b91f
	and l			;b920
	and (hl)		;b921
	and a			;b922
	dec e			;b923
	nop			;b924
	ld (00033h),a		;b925
lb928h:
	nop			;b928
	nop			;b929
	nop			;b92a
	or c			;b92b
	xor b			;b92c
	xor b			;b92d
	cp c			;b92e
	and b			;b92f
	and c			;b930
	and d			;b931
	and e			;b932
	jr nz,lb950h		;b933
	sub l			;b935
	sub (hl)		;b936
	sub a			;b937
	sbc a,b			;b938
	sbc a,c			;b939
	sbc a,d			;b93a
	sbc a,c			;b93b
	sbc a,e			;b93c
	sbc a,e			;b93d
	sbc a,h			;b93e
	sbc a,h			;b93f
	sbc a,l			;b940
	sbc a,(hl)		;b941
	sbc a,a			;b942
	inc e			;b943
	nop			;b944
	jr lb960h		;b945
	adc a,d			;b947
	adc a,e			;b948
	adc a,h			;b949
	adc a,l			;b94a
	adc a,(hl)		;b94b
	adc a,a			;b94c
	sub b			;b94d
	sub c			;b94e
	sub c			;b94f
lb950h:
	sub d			;b950
	sub e			;b951
	sub h			;b952
	ld a,(de)		;b953
	nop			;b954
	nop			;b955
	nop			;b956
	nop			;b957
	nop			;b958
	nop			;b959
	inc de			;b95a
	inc d			;b95b
	dec d			;b95c
	add a,l			;b95d
	add a,(hl)		;b95e
	add a,a			;b95f
lb960h:
	adc a,b			;b960
	adc a,c			;b961
	ld d,017h		;b962
	nop			;b964
	nop			;b965
	nop			;b966
	nop			;b967
	nop			;b968
	nop			;b969
	nop			;b96a
	nop			;b96b
	nop			;b96c
	ld de,08382h		;b96d
	add a,h			;b970
	ld (de),a		;b971
	nop			;b972
	nop			;b973
	ld c,080h		;b974
lb976h:
	add a,b			;b976
	cp (hl)			;b977
	or d			;b978
	set 0,(hl)		;b979
	cp l			;b97b
	xor (hl)		;b97c
	call z,sub_bccdh	;b97d
	ld e,0a8h		;b980
	xor b			;b982
	cp e			;b983
	xor l			;b984
	add a,b			;b985
	add a,b			;b986
	cp a			;b987
	xor (hl)		;b988
	ret z			;b989
	ret			;b98a
	ret nz			;b98b
	nop			;b98c
	jp z,0c1c2h		;b98d
	xor a			;b990
	xor b			;b991
	xor b			;b992
	cp b			;b993
	xor h			;b994
	add a,b			;b995
	add a,b			;b996
	or l			;b997
	rrca			;b998
	rst 0			;b999
	add a,0b6h		;b99a
	rra			;b99c
	call z,sub_b7c5h	;b99d
	or b			;b9a0
	xor b			;b9a1
	xor b			;b9a2
	cp b			;b9a3
	nop			;b9a4
	nop			;b9a5
	ld a,(bc)		;b9a6
	ld a,(bc)		;b9a7
	nop			;b9a8
	nop			;b9a9
	nop			;b9aa
	nop			;b9ab
	ld b,d			;b9ac
	ld b,e			;b9ad
	nop			;b9ae
	nop			;b9af
	nop			;b9b0
	nop			;b9b1
	nop			;b9b2
	daa			;b9b3
	jr z,lb9dch		;b9b4
	ld a,h			;b9b6
	adc a,h			;b9b7
	inc (hl)		;b9b8
	ld (hl),035h		;b9b9
	nop			;b9bb
	nop			;b9bc
	add hl,hl		;b9bd
	ld a,l			;b9be
	and d			;b9bf
	and c			;b9c0
	xor c			;b9c1
	xor d			;b9c2
	adc a,l			;b9c3
	scf			;b9c4
	nop			;b9c5
	nop			;b9c6
	ld a,(hl)		;b9c7
	ld a,a			;b9c8
	add a,b			;b9c9
	and b			;b9ca
	xor b			;b9cb
	sub b			;b9cc
	adc a,a			;b9cd
	adc a,(hl)		;b9ce
	nop			;b9cf
	add a,c			;b9d0
	add a,d			;b9d1
	add a,e			;b9d2
	and e			;b9d3
	ld h,b			;b9d4
	ld h,d			;b9d5
	xor e			;b9d6
	sub e			;b9d7
	sub d			;b9d8
	sub c			;b9d9
	adc a,c			;b9da
	adc a,d			;b9db
lb9dch:
	adc a,e			;b9dc
	sbc a,a			;b9dd
	ld h,c			;b9de
	ld h,e			;b9df
	and a			;b9e0
	sbc a,e			;b9e1
	sbc a,d			;b9e2
	sbc a,c			;b9e3
	nop			;b9e4
	add a,(hl)		;b9e5
	add a,a			;b9e6
	adc a,b			;b9e7
	sbc a,l			;b9e8
	and l			;b9e9
	sbc a,b			;b9ea
	sub a			;b9eb
	sub (hl)		;b9ec
	nop			;b9ed
	nop			;b9ee
	jr nc,lb976h		;b9ef
	sbc a,h			;b9f1
	sbc a,(hl)		;b9f2
	and (hl)		;b9f3
	and h			;b9f4
	sub l			;b9f5
	ld a,000h		;b9f6
	nop			;b9f8
	ld l,02fh		;b9f9
	dec l			;b9fb
	add a,h			;b9fc
	sub h			;b9fd
	dec sp			;b9fe
	dec a			;b9ff
	inc a			;ba00
	nop			;ba01
	nop			;ba02
	nop			;ba03
	nop			;ba04
	nop			;ba05
	ld b,h			;ba06
	ld b,l			;ba07
	nop			;ba08
	nop			;ba09
	nop			;ba0a
	nop			;ba0b
	nop			;ba0c
	nop			;ba0d
	ld (bc),a		;ba0e
	inc b			;ba0f
	and e			;ba10
	ld l,b			;ba11
	ld (hl),d		;ba12
	xor e			;ba13
	sbc a,a			;ba14
	ld l,c			;ba15
	ld (hl),e		;ba16
	and a			;ba17
	nop			;ba18
	nop			;ba19
	ld (bc),a		;ba1a
	inc b			;ba1b
	ld l,d			;ba1c
	ld l,e			;ba1d
	ld (hl),l		;ba1e
	ld (hl),h		;ba1f
	ld l,h			;ba20
	ld l,l			;ba21
	ld (hl),a		;ba22
	halt			;ba23
	nop			;ba24
	nop			;ba25
	ld (bc),a		;ba26
	inc b			;ba27
	ld l,(hl)		;ba28
	ld l,a			;ba29
	ld a,c			;ba2a
	ld a,b			;ba2b
	ld (hl),b		;ba2c
	ld (hl),c		;ba2d
	ld a,e			;ba2e
	ld a,d			;ba2f
	nop			;ba30
	nop			;ba31
	ld (bc),a		;ba32
	ld (bc),a		;ba33
	set 1,d			;ba34
	call 000cch		;ba36
	nop			;ba39
	ld (bc),a		;ba3a
	ld (bc),a		;ba3b
	call nz,0c6c5h		;ba3c
	rst 0			;ba3f
	nop			;ba40
	nop			;ba41
	add hl,bc		;ba42
	ld (bc),a		;ba43
	cp a			;ba44
	ret nz			;ba45
	cp d			;ba46
	cp e			;ba47
	cp b			;ba48
	cp c			;ba49
	cp b			;ba4a
	cp c			;ba4b
	or d			;ba4c
	or e			;ba4d
	or h			;ba4e
	or l			;ba4f
	or h			;ba50
	or l			;ba51
	or (hl)			;ba52
	or a			;ba53
	cp b			;ba54
	cp c			;ba55
	nop			;ba56
	nop			;ba57
	rlca			;ba58
	ld (bc),a		;ba59
	cp b			;ba5a
	cp c			;ba5b
	or d			;ba5c
	or e			;ba5d
	or h			;ba5e
	or l			;ba5f
	or h			;ba60
	or l			;ba61
	or (hl)			;ba62
	or a			;ba63
	cp d			;ba64
	cp e			;ba65
	cp h			;ba66
	cp l			;ba67
	nop			;ba68
	nop			;ba69
	inc b			;ba6a
	inc b			;ba6b
	nop			;ba6c
	nop			;ba6d
	cp d			;ba6e
	cp e			;ba6f
	ld a,(lbe91h)		;ba70
	nop			;ba73
	ld b,c			;ba74
	sbc a,c			;ba75
	pop bc			;ba76
	nop			;ba77
	nop			;ba78
	nop			;ba79
	cp d			;ba7a
	cp e			;ba7b
	nop			;ba7c
	nop			;ba7d
	inc b			;ba7e
	inc b			;ba7f
	cp d			;ba80
	cp e			;ba81
	nop			;ba82
	nop			;ba83
	nop			;ba84
	cp (hl)			;ba85
	add a,c			;ba86
	inc l			;ba87
	nop			;ba88
	pop bc			;ba89
	adc a,c			;ba8a
lba8bh:
	inc sp			;ba8b
	cp d			;ba8c
	cp e			;ba8d
	nop			;ba8e
	nop			;ba8f
	nop			;ba90
	nop			;ba91
	add hl,bc		;ba92
	ld bc,lafaeh		;ba93
	or b			;ba96
	or b			;ba97
	or b			;ba98
	or b			;ba99
	or c			;ba9a
	xor l			;ba9b
	xor (hl)		;ba9c
	nop			;ba9d
	nop			;ba9e
	add hl,bc		;ba9f
	ld (bc),a		;baa0
	xor l			;baa1
	nop			;baa2
	xor (hl)		;baa3
	nop			;baa4
	xor a			;baa5
	nop			;baa6
	or b			;baa7
	nop			;baa8
	or c			;baa9
	nop			;baaa
	xor l			;baab
	nop			;baac
	xor (hl)		;baad
	nop			;baae
	xor h			;baaf
	dec hl			;bab0
	nop			;bab1
	ccf			;bab2
	nop			;bab3
	nop			;bab4
	add hl,bc		;bab5
sub_bab6h:
	ld (bc),a		;bab6
	nop			;bab7
	xor l			;bab8
	nop			;bab9
	xor (hl)		;baba
	nop			;babb
	xor a			;babc
	nop			;babd
	or b			;babe
	nop			;babf
	or c			;bac0
	nop			;bac1
lbac2h:
	xor l			;bac2
	nop			;bac3
	xor (hl)		;bac4
	add hl,sp		;bac5
	xor h			;bac6
	ld sp,00000h		;bac7
	nop			;baca
	dec bc			;bacb
	ld bc,laeadh		;bacc
	xor a			;bacf
	or b			;bad0
	or b			;bad1
	or b			;bad2
	or b			;bad3
	or c			;bad4
	xor l			;bad5
	xor (hl)		;bad6
	xor a			;bad7
	nop			;bad8
	nop			;bad9
	dec bc			;bada
	ld (bc),a		;badb
	nop			;badc
	jr c,lba8bh		;badd
	ld (000adh),a		;badf
	xor (hl)		;bae2
	nop			;bae3
	xor a			;bae4
	nop			;bae5
	or b			;bae6
	nop			;bae7
	or c			;bae8
	nop			;bae9
	xor l			;baea
	nop			;baeb
	xor (hl)		;baec
	nop			;baed
	xor a			;baee
	nop			;baef
	or c			;baf0
	nop			;baf1
	nop			;baf2
	nop			;baf3
	dec bc			;baf4
	ld (bc),a		;baf5
	ld hl,(04000h)		;baf6
	xor h			;baf9
	nop			;bafa
	xor l			;bafb
	nop			;bafc
	xor (hl)		;bafd
	nop			;bafe
	xor a			;baff
	nop			;bb00
	or b			;bb01
	nop			;bb02
	or c			;bb03
	nop			;bb04
	xor l			;bb05
	nop			;bb06
	xor (hl)		;bb07
	nop			;bb08
	xor a			;bb09
	nop			;bb0a
	or c			;bb0b
	nop			;bb0c
	nop			;bb0d
	ld (bc),a		;bb0e
	ld (bc),a		;bb0f
	jp 0c2c9h		;bb10
	ret z			;bb13
	nop			;bb14
	nop			;bb15
	inc c			;bb16
	ld c,000h		;bb17
	push bc			;bb19
	ld b,017h		;bb1a
	dec e			;bb1c
	ld hl,03319h		;bb1d
	dec sp			;bb20
	scf			;bb21
	ld sp,0c506h		;bb22
	nop			;bb25
	ld b,003h		;bb26
	rlca			;bb28
	jr lbb45h		;bb29
	dec d			;bb2b
	inc hl			;bb2c
	dec a			;bb2d
	cpl			;bb2e
	inc (hl)		;bb2f
	ld (00307h),a		;bb30
	ld b,007h		;bb33
	inc b			;bb35
	ex af,af'		;bb36
	ld de,01610h		;bb37
	dec de			;bb3a
	dec (hl)		;bb3b
	jr nc,lbb68h		;bb3c
	dec hl			;bb3e
	ex af,af'		;bb3f
	inc b			;bb40
	rlca			;bb41
	ex af,af'		;bb42
	dec b			;bb43
	add hl,bc		;bb44
lbb45h:
	inc de			;bb45
	ld (de),a		;bb46
	inc d			;bb47
	inc e			;bb48
	ld (hl),02eh		;bb49
	inc l			;bb4b
	dec l			;bb4c
	add hl,bc		;bb4d
	dec b			;bb4e
	ex af,af'		;bb4f
	ld h,e			;bb50
	ld e,c			;bb51
	ld d,e			;bb52
	inc b			;bb53
	inc bc			;bb54
	ld (0461dh),hl		;bb55
	ld c,e			;bb58
	inc l			;bb59
	dec l			;bb5a
	ld d,e			;bb5b
	ld e,c			;bb5c
	ld h,e			;bb5d
	ld d,e			;bb5e
	ld e,d			;bb5f
	ld e,h			;bb60
	dec b			;bb61
	jr lbb87h		;bb62
	sub l			;bb64
	sub l			;bb65
	ld c,h			;bb66
	ld b,c			;bb67
lbb68h:
	ld l,05ch		;bb68
	ld e,d			;bb6a
	ld d,e			;bb6b
	ld e,a			;bb6c
	ld l,e			;bb6d
	dec h			;bb6e
	inc h			;bb6f
	rra			;bb70
	add a,c			;bb71
	add a,d			;bb72
	add a,d			;bb73
	add a,c			;bb74
	ld c,b			;bb75
	ld c,l			;bb76
	ld c,(hl)		;bb77
	ld e,a			;bb78
	ld l,e			;bb79
	ld l,b			;bb7a
	ld l,l			;bb7b
	ld d,01eh		;bb7c
	ld hl,01d5dh		;bb7e
	ld b,(hl)		;bb81
	ld e,l			;bb82
	ld c,d			;bb83
	ld b,a			;bb84
	ccf			;bb85
	ld l,b			;bb86
lbb87h:
	ld l,l			;bb87
	ld d,(hl)		;bb88
	ld d,a			;bb89
	adc a,d			;bb8a
	adc a,e			;bb8b
	inc d			;bb8c
	ld e,l			;bb8d
	dec e			;bb8e
	ld b,(hl)		;bb8f
	ld e,l			;bb90
	dec a			;bb91
	adc a,h			;bb92
	adc a,d			;bb93
	ld d,(hl)		;bb94
	ld d,a			;bb95
	nop			;bb96
	ld e,b			;bb97
	adc a,l			;bb98
	adc a,(hl)		;bb99
	adc a,a			;bb9a
	ld h,l			;bb9b
	ld l,h			;bb9c
	ld h,l			;bb9d
	ld l,h			;bb9e
	adc a,a			;bb9f
	adc a,(hl)		;bba0
	adc a,l			;bba1
	ld e,b			;bba2
	nop			;bba3
	nop			;bba4
	ld e,b			;bba5
	sub b			;bba6
	sub c			;bba7
	sub d			;bba8
	ld (hl),l		;bba9
	halt			;bbaa
	ld (hl),l		;bbab
	halt			;bbac
	sub d			;bbad
	sub e			;bbae
	sub h			;bbaf
	ld e,b			;bbb0
	nop			;bbb1
	nop			;bbb2
	ld e,b			;bbb3
	djnz lbbd6h		;bbb4
	ld (hl),d		;bbb6
	ld (hl),c		;bbb7
	ld (hl),c		;bbb8
	ld (hl),c		;bbb9
	ld (hl),c		;bbba
	ld (hl),d		;bbbb
	ld c,c			;bbbc
	add hl,sp		;bbbd
	ld e,b			;bbbe
	nop			;bbbf
	nop			;bbc0
	nop			;bbc1
	inc c			;bbc2
	djnz lbbc5h		;bbc3
lbbc5h:
	push bc			;bbc5
	ld b,017h		;bbc6
	dec e			;bbc8
	ld hl,00019h		;bbc9
	nop			;bbcc
	inc sp			;bbcd
	dec sp			;bbce
	scf			;bbcf
	ld sp,0c506h		;bbd0
	nop			;bbd3
	ld b,003h		;bbd4
lbbd6h:
	rlca			;bbd6
	jr lbbf3h		;bbd7
	dec d			;bbd9
	inc hl			;bbda
	nop			;bbdb
	nop			;bbdc
	dec a			;bbdd
	cpl			;bbde
	inc (hl)		;bbdf
	ld (00307h),a		;bbe0
	ld b,007h		;bbe3
	inc b			;bbe5
	ex af,af'		;bbe6
	ld de,01610h		;bbe7
	dec de			;bbea
	nop			;bbeb
	nop			;bbec
	dec (hl)		;bbed
	jr nc,lbc1ah		;bbee
	dec hl			;bbf0
	ex af,af'		;bbf1
	inc b			;bbf2
lbbf3h:
	rlca			;bbf3
	ex af,af'		;bbf4
	dec b			;bbf5
	add hl,bc		;bbf6
	inc de			;bbf7
	ld (de),a		;bbf8
	inc d			;bbf9
	inc e			;bbfa
	nop			;bbfb
	nop			;bbfc
	ld (hl),02eh		;bbfd
	inc l			;bbff
	dec l			;bc00
	add hl,bc		;bc01
	dec b			;bc02
	ex af,af'		;bc03
	ld h,e			;bc04
	ld e,c			;bc05
	ld d,e			;bc06
	inc b			;bc07
	inc bc			;bc08
	ld (0001dh),hl		;bc09
	nop			;bc0c
	ld b,(hl)		;bc0d
	ld c,e			;bc0e
	inc l			;bc0f
	dec l			;bc10
	ld d,e			;bc11
	ld e,c			;bc12
	ld h,e			;bc13
	ld d,e			;bc14
	ld e,d			;bc15
	ld e,h			;bc16
	dec b			;bc17
	jr lbc3dh		;bc18
lbc1ah:
	sub l			;bc1a
	add a,a			;bc1b
	add a,a			;bc1c
	sub l			;bc1d
	ld c,h			;bc1e
	ld b,c			;bc1f
	ld l,05ch		;bc20
	ld e,d			;bc22
	ld d,e			;bc23
	ld e,a			;bc24
	ld l,e			;bc25
	dec h			;bc26
	inc h			;bc27
	rra			;bc28
	add a,c			;bc29
	add a,d			;bc2a
	add a,(hl)		;bc2b
	add a,(hl)		;bc2c
	add a,d			;bc2d
	add a,c			;bc2e
	ld c,b			;bc2f
	ld c,l			;bc30
	ld c,(hl)		;bc31
	ld e,a			;bc32
	ld l,e			;bc33
	ld l,b			;bc34
	ld l,l			;bc35
	ld d,01eh		;bc36
	ld hl,01d5dh		;bc38
	nop			;bc3b
	nop			;bc3c
lbc3dh:
	ld b,(hl)		;bc3d
	ld e,l			;bc3e
	ld c,d			;bc3f
	ld b,a			;bc40
	ccf			;bc41
	ld l,b			;bc42
	ld l,l			;bc43
	ld d,(hl)		;bc44
	ld d,a			;bc45
	adc a,d			;bc46
	adc a,e			;bc47
	inc d			;bc48
	ld e,l			;bc49
	dec e			;bc4a
	nop			;bc4b
	nop			;bc4c
	ld b,(hl)		;bc4d
	ld e,l			;bc4e
	dec a			;bc4f
	adc a,h			;bc50
	adc a,d			;bc51
	ld d,(hl)		;bc52
	ld d,a			;bc53
	nop			;bc54
	ld e,b			;bc55
	adc a,l			;bc56
	adc a,(hl)		;bc57
	adc a,a			;bc58
	ld h,l			;bc59
	ld l,h			;bc5a
	add a,l			;bc5b
	add a,l			;bc5c
	ld h,l			;bc5d
	ld l,h			;bc5e
	adc a,a			;bc5f
	adc a,(hl)		;bc60
	adc a,l			;bc61
	ld e,b			;bc62
	nop			;bc63
	nop			;bc64
	ld e,b			;bc65
	sub b			;bc66
	sub c			;bc67
	sub d			;bc68
	ld (hl),l		;bc69
	halt			;bc6a
	adc a,b			;bc6b
	adc a,b			;bc6c
	ld (hl),l		;bc6d
	halt			;bc6e
	sub d			;bc6f
	sub e			;bc70
	sub h			;bc71
	ld e,b			;bc72
	nop			;bc73
	nop			;bc74
	ld e,b			;bc75
	djnz $+34		;bc76
	ld (hl),d		;bc78
	ld (hl),c		;bc79
	ld (hl),c		;bc7a
	ld (hl),c		;bc7b
	ld (hl),c		;bc7c
	ld (hl),c		;bc7d
	ld (hl),c		;bc7e
	ld (hl),d		;bc7f
	ld c,c			;bc80
	add hl,sp		;bc81
	ld e,b			;bc82
	nop			;bc83
	nop			;bc84
	nop			;bc85
	inc c			;bc86
	ld (de),a		;bc87
	nop			;bc88
	push bc			;bc89
	ld b,017h		;bc8a
	dec e			;bc8c
	ld hl,00019h		;bc8d
	nop			;bc90
	nop			;bc91
	nop			;bc92
	inc sp			;bc93
	dec sp			;bc94
	scf			;bc95
	ld sp,0c506h		;bc96
	nop			;bc99
	ld b,003h		;bc9a
	rlca			;bc9c
	jr $+28			;bc9d
	dec d			;bc9f
	inc hl			;bca0
	nop			;bca1
	nop			;bca2
	nop			;bca3
	nop			;bca4
	dec a			;bca5
	cpl			;bca6
	inc (hl)		;bca7
	ld (00307h),a		;bca8
	ld b,007h		;bcab
	inc b			;bcad
	ex af,af'		;bcae
	ld de,01610h		;bcaf
	dec de			;bcb2
	nop			;bcb3
	nop			;bcb4
	nop			;bcb5
	nop			;bcb6
	dec (hl)		;bcb7
	jr nc,lbce4h		;bcb8
	dec hl			;bcba
	ex af,af'		;bcbb
	inc b			;bcbc
	rlca			;bcbd
	ex af,af'		;bcbe
	dec b			;bcbf
	add hl,bc		;bcc0
	inc de			;bcc1
	ld (de),a		;bcc2
	inc d			;bcc3
	inc e			;bcc4
	nop			;bcc5
	nop			;bcc6
	nop			;bcc7
	nop			;bcc8
	ld (hl),02eh		;bcc9
	inc l			;bccb
	dec l			;bccc
sub_bccdh:
	add hl,bc		;bccd
	dec b			;bcce
	ex af,af'		;bccf
	ld h,e			;bcd0
	ld e,c			;bcd1
	ld d,e			;bcd2
	inc b			;bcd3
	inc bc			;bcd4
	ld (0001dh),hl		;bcd5
	nop			;bcd8
	nop			;bcd9
	nop			;bcda
	ld b,(hl)		;bcdb
	ld c,e			;bcdc
	inc l			;bcdd
	dec l			;bcde
	ld d,e			;bcdf
	ld e,c			;bce0
	ld h,e			;bce1
	ld d,e			;bce2
	ld e,d			;bce3
lbce4h:
	ld e,h			;bce4
	dec b			;bce5
	jr $+37			;bce6
	sub l			;bce8
	add a,a			;bce9
	add a,a			;bcea
	add a,a			;bceb
	add a,a			;bcec
	sub l			;bced
	ld c,h			;bcee
	ld b,c			;bcef
	ld l,05ch		;bcf0
	ld e,d			;bcf2
	ld d,e			;bcf3
	ld e,a			;bcf4
	ld l,e			;bcf5
	dec h			;bcf6
	inc h			;bcf7
	rra			;bcf8
	add a,c			;bcf9
	add a,d			;bcfa
	add a,(hl)		;bcfb
	add a,(hl)		;bcfc
	add a,(hl)		;bcfd
	add a,(hl)		;bcfe
	add a,d			;bcff
	add a,c			;bd00
	ld c,b			;bd01
	ld c,l			;bd02
	ld c,(hl)		;bd03
	ld e,a			;bd04
	ld l,e			;bd05
	ld l,b			;bd06
	ld l,l			;bd07
	ld d,01eh		;bd08
	ld hl,01d5dh		;bd0a
	nop			;bd0d
	nop			;bd0e
	nop			;bd0f
	nop			;bd10
	ld b,(hl)		;bd11
	ld e,l			;bd12
	ld c,d			;bd13
	ld b,a			;bd14
	ccf			;bd15
	ld l,b			;bd16
	ld l,l			;bd17
	ld d,(hl)		;bd18
	ld d,a			;bd19
	adc a,d			;bd1a
	adc a,e			;bd1b
	inc d			;bd1c
	ld e,l			;bd1d
	dec e			;bd1e
	nop			;bd1f
	nop			;bd20
	nop			;bd21
	nop			;bd22
	ld b,(hl)		;bd23
	ld e,l			;bd24
	dec a			;bd25
	adc a,h			;bd26
	adc a,d			;bd27
	ld d,(hl)		;bd28
	ld d,a			;bd29
	nop			;bd2a
	ld e,b			;bd2b
	adc a,l			;bd2c
	adc a,(hl)		;bd2d
	adc a,a			;bd2e
	ld h,l			;bd2f
	ld l,h			;bd30
	add a,l			;bd31
	add a,l			;bd32
	add a,l			;bd33
	add a,l			;bd34
	ld h,l			;bd35
	ld l,h			;bd36
	adc a,a			;bd37
	adc a,(hl)		;bd38
	adc a,l			;bd39
	ld e,b			;bd3a
	nop			;bd3b
	nop			;bd3c
	ld e,b			;bd3d
	sub b			;bd3e
	sub c			;bd3f
	sub d			;bd40
	ld (hl),l		;bd41
	halt			;bd42
	adc a,b			;bd43
	adc a,b			;bd44
	adc a,b			;bd45
	adc a,b			;bd46
	ld (hl),l		;bd47
	halt			;bd48
	sub d			;bd49
	sub e			;bd4a
	sub h			;bd4b
	ld e,b			;bd4c
	nop			;bd4d
	nop			;bd4e
	ld e,b			;bd4f
	djnz lbd72h		;bd50
	ld (hl),d		;bd52
	ld (hl),c		;bd53
	ld (hl),c		;bd54
	ld (hl),c		;bd55
	ld (hl),c		;bd56
	ld (hl),c		;bd57
	ld (hl),c		;bd58
	ld (hl),c		;bd59
	ld (hl),c		;bd5a
	ld (hl),d		;bd5b
	ld c,c			;bd5c
	add hl,sp		;bd5d
	ld e,b			;bd5e
	nop			;bd5f
	nop			;bd60
	nop			;bd61
	dec c			;bd62
	ld b,000h		;bd63
	add a,0c7h		;bd65
	ret			;bd67
	ret z			;bd68
	nop			;bd69
	cp h			;bd6a
	jp z,0cdcch		;bd6b
	set 0,e			;bd6e
	cp l			;bd70
	dec bc			;bd71
lbd72h:
	dec c			;bd72
	daa			;bd73
	dec h			;bd74
	call nz,00c00h		;bd75
	ld c,028h		;bd78
	ld h,000h		;bd7a
	nop			;bd7c
	sub a			;bd7d
	sbc a,b			;bd7e
	sbc a,c			;bd7f
	sbc a,d			;bd80
	nop			;bd81
	nop			;bd82
	and a			;bd83
	xor b			;bd84
	xor c			;bd85
	xor d			;bd86
	nop			;bd87
	nop			;bd88
	sub a			;bd89
	sbc a,b			;bd8a
	sbc a,c			;bd8b
	sbc a,d			;bd8c
	nop			;bd8d
	nop			;bd8e
	and a			;bd8f
	xor b			;bd90
	xor c			;bd91
	xor d			;bd92
	nop			;bd93
	nop			;bd94
	sub a			;bd95
	sbc a,b			;bd96
	sbc a,c			;bd97
	sbc a,d			;bd98
	nop			;bd99
	nop			;bd9a
	and a			;bd9b
	xor b			;bd9c
	xor c			;bd9d
	xor d			;bd9e
	nop			;bd9f
	nop			;bda0
	sub a			;bda1
	sbc a,b			;bda2
	sbc a,c			;bda3
	sbc a,d			;bda4
	nop			;bda5
	nop			;bda6
	and a			;bda7
	xor b			;bda8
	xor c			;bda9
	xor d			;bdaa
	nop			;bdab
	nop			;bdac
	sub a			;bdad
	sbc a,b			;bdae
	sbc a,c			;bdaf
	sbc a,d			;bdb0
	nop			;bdb1
	nop			;bdb2
	nop			;bdb3
	dec c			;bdb4
	ld b,000h		;bdb5
	add a,0c7h		;bdb7
	ret			;bdb9
	ret z			;bdba
	nop			;bdbb
	cp h			;bdbc
	jp z,0cdcch		;bdbd
	set 0,e			;bdc0
	cp l			;bdc2
	dec bc			;bdc3
	dec c			;bdc4
	daa			;bdc5
	dec h			;bdc6
	call nz,00c00h		;bdc7
	ld c,028h		;bdca
	ld h,000h		;bdcc
	nop			;bdce
	sbc a,e			;bdcf
	sbc a,h			;bdd0
	sbc a,l			;bdd1
	sbc a,(hl)		;bdd2
	nop			;bdd3
	nop			;bdd4
	xor e			;bdd5
	xor h			;bdd6
	xor l			;bdd7
	xor (hl)		;bdd8
	nop			;bdd9
	nop			;bdda
	sbc a,e			;bddb
	sbc a,h			;bddc
	sbc a,l			;bddd
	sbc a,(hl)		;bdde
	nop			;bddf
	nop			;bde0
	xor e			;bde1
	xor h			;bde2
	xor l			;bde3
	xor (hl)		;bde4
	nop			;bde5
	nop			;bde6
	sbc a,e			;bde7
	sbc a,h			;bde8
	sbc a,l			;bde9
	sbc a,(hl)		;bdea
	nop			;bdeb
	nop			;bdec
	xor e			;bded
	xor h			;bdee
	xor l			;bdef
	xor (hl)		;bdf0
	nop			;bdf1
	nop			;bdf2
	sbc a,e			;bdf3
	sbc a,h			;bdf4
	sbc a,l			;bdf5
	sbc a,(hl)		;bdf6
	nop			;bdf7
	nop			;bdf8
	xor e			;bdf9
	xor h			;bdfa
	xor l			;bdfb
	xor (hl)		;bdfc
	nop			;bdfd
	nop			;bdfe
	sbc a,e			;bdff
	sbc a,h			;be00
	sbc a,l			;be01
	sbc a,(hl)		;be02
	nop			;be03
	nop			;be04
	nop			;be05
	dec c			;be06
	ld b,000h		;be07
	add a,0c7h		;be09
	ret			;be0b
	ret z			;be0c
	nop			;be0d
	cp h			;be0e
	jp z,0cdcch		;be0f
	set 0,e			;be12
	cp l			;be14
	dec bc			;be15
	dec c			;be16
	daa			;be17
	dec h			;be18
	call nz,00c00h		;be19
	ld c,028h		;be1c
	ld h,000h		;be1e
	nop			;be20
	sbc a,a			;be21
	and b			;be22
	and c			;be23
	and d			;be24
	nop			;be25
	nop			;be26
	xor a			;be27
	or b			;be28
	or c			;be29
	or d			;be2a
	nop			;be2b
	nop			;be2c
	sbc a,a			;be2d
	and b			;be2e
	and c			;be2f
	and d			;be30
	nop			;be31
	nop			;be32
	xor a			;be33
	or b			;be34
	or c			;be35
	or d			;be36
	nop			;be37
	nop			;be38
	sbc a,a			;be39
	and b			;be3a
	and c			;be3b
	and d			;be3c
	nop			;be3d
	nop			;be3e
	xor a			;be3f
	or b			;be40
	or c			;be41
	or d			;be42
	nop			;be43
	nop			;be44
	sbc a,a			;be45
	and b			;be46
	and c			;be47
	and d			;be48
	nop			;be49
	nop			;be4a
	xor a			;be4b
	or b			;be4c
	or c			;be4d
	or d			;be4e
	nop			;be4f
	nop			;be50
	sbc a,a			;be51
	and b			;be52
	and c			;be53
	and d			;be54
	nop			;be55
	nop			;be56
	nop			;be57
	dec c			;be58
	ld b,000h		;be59
	add a,0c7h		;be5b
	ret			;be5d
	ret z			;be5e
	nop			;be5f
	cp h			;be60
	jp z,0cdcch		;be61
	set 0,e			;be64
	cp l			;be66
	dec bc			;be67
	dec c			;be68
	daa			;be69
	dec h			;be6a
	call nz,00c00h		;be6b
	ld c,028h		;be6e
	ld h,000h		;be70
	nop			;be72
	and e			;be73
	and h			;be74
	and l			;be75
	and (hl)		;be76
	nop			;be77
	nop			;be78
	or e			;be79
	or h			;be7a
	or l			;be7b
	or (hl)			;be7c
	nop			;be7d
	nop			;be7e
	and e			;be7f
	and h			;be80
	and l			;be81
	and (hl)		;be82
	nop			;be83
	nop			;be84
	or e			;be85
	or h			;be86
	or l			;be87
	or (hl)			;be88
	nop			;be89
	nop			;be8a
	and e			;be8b
	and h			;be8c
	and l			;be8d
	and (hl)		;be8e
	nop			;be8f
	nop			;be90
lbe91h:
	or e			;be91
	or h			;be92
	or l			;be93
	or (hl)			;be94
	nop			;be95
	nop			;be96
	and e			;be97
	and h			;be98
	and l			;be99
	and (hl)		;be9a
	nop			;be9b
	nop			;be9c
	or e			;be9d
	or h			;be9e
	or l			;be9f
	or (hl)			;bea0
	nop			;bea1
	nop			;bea2
	and e			;bea3
	and h			;bea4
	and l			;bea5
	and (hl)		;bea6
	nop			;bea7
	nop			;bea8
	nop			;bea9
	dec c			;beaa
	ld b,000h		;beab
	add a,0c7h		;bead
	ret			;beaf
	ret z			;beb0
	nop			;beb1
	cp h			;beb2
	jp z,0cdcch		;beb3
	set 0,e			;beb6
	cp l			;beb8
	dec bc			;beb9
	dec c			;beba
	daa			;bebb
	dec h			;bebc
	call nz,00c00h		;bebd
	ld c,028h		;bec0
	ld h,000h		;bec2
	nop			;bec4
	and a			;bec5
	xor b			;bec6
	xor c			;bec7
	xor d			;bec8
	nop			;bec9
	nop			;beca
	sub a			;becb
	sbc a,b			;becc
	sbc a,c			;becd
	sbc a,d			;bece
	nop			;becf
	nop			;bed0
	and a			;bed1
	xor b			;bed2
	xor c			;bed3
	xor d			;bed4
	nop			;bed5
	nop			;bed6
	sub a			;bed7
	sbc a,b			;bed8
	sbc a,c			;bed9
	sbc a,d			;beda
	nop			;bedb
	nop			;bedc
	and a			;bedd
	xor b			;bede
	xor c			;bedf
	xor d			;bee0
	nop			;bee1
	nop			;bee2
	sub a			;bee3
	sbc a,b			;bee4
	sbc a,c			;bee5
	sbc a,d			;bee6
	nop			;bee7
	nop			;bee8
	and a			;bee9
	xor b			;beea
	xor c			;beeb
	xor d			;beec
	nop			;beed
	nop			;beee
	sub a			;beef
	sbc a,b			;bef0
	sbc a,c			;bef1
	sbc a,d			;bef2
	nop			;bef3
	nop			;bef4
	and a			;bef5
	xor b			;bef6
	xor c			;bef7
	xor d			;bef8
	nop			;bef9
	nop			;befa
	nop			;befb
	dec c			;befc
	ld b,000h		;befd
	add a,0c7h		;beff
	ret			;bf01
	ret z			;bf02
	nop			;bf03
	cp h			;bf04
	jp z,0cdcch		;bf05
	set 0,e			;bf08
	cp l			;bf0a
	dec bc			;bf0b
	dec c			;bf0c
	daa			;bf0d
	dec h			;bf0e
	call nz,00c00h		;bf0f
	ld c,028h		;bf12
	ld h,000h		;bf14
	nop			;bf16
	xor e			;bf17
	xor h			;bf18
	xor l			;bf19
	xor (hl)		;bf1a
	nop			;bf1b
	nop			;bf1c
	sbc a,e			;bf1d
	sbc a,h			;bf1e
	sbc a,l			;bf1f
	sbc a,(hl)		;bf20
	nop			;bf21
	nop			;bf22
	xor e			;bf23
	xor h			;bf24
	xor l			;bf25
	xor (hl)		;bf26
	nop			;bf27
	nop			;bf28
	sbc a,e			;bf29
	sbc a,h			;bf2a
	sbc a,l			;bf2b
	sbc a,(hl)		;bf2c
	nop			;bf2d
	nop			;bf2e
	xor e			;bf2f
	xor h			;bf30
	xor l			;bf31
	xor (hl)		;bf32
	nop			;bf33
	nop			;bf34
	sbc a,e			;bf35
	sbc a,h			;bf36
	sbc a,l			;bf37
	sbc a,(hl)		;bf38
	nop			;bf39
	nop			;bf3a
	xor e			;bf3b
	xor h			;bf3c
	xor l			;bf3d
	xor (hl)		;bf3e
	nop			;bf3f
	nop			;bf40
	sbc a,e			;bf41
	sbc a,h			;bf42
	sbc a,l			;bf43
	sbc a,(hl)		;bf44
	nop			;bf45
	nop			;bf46
	xor e			;bf47
	xor h			;bf48
	xor l			;bf49
	xor (hl)		;bf4a
	nop			;bf4b
	nop			;bf4c
	nop			;bf4d
	dec c			;bf4e
	ld b,000h		;bf4f
	add a,0c7h		;bf51
	ret			;bf53
	ret z			;bf54
	nop			;bf55
	cp h			;bf56
	jp z,0cdcch		;bf57
	set 0,e			;bf5a
	cp l			;bf5c
	dec bc			;bf5d
	dec c			;bf5e
	daa			;bf5f
	dec h			;bf60
	call nz,00c00h		;bf61
	ld c,028h		;bf64
	ld h,000h		;bf66
	nop			;bf68
	xor a			;bf69
	or b			;bf6a
	or c			;bf6b
	or d			;bf6c
	nop			;bf6d
	nop			;bf6e
	sbc a,a			;bf6f
	and b			;bf70
	and c			;bf71
	and d			;bf72
	nop			;bf73
	nop			;bf74
	xor a			;bf75
	or b			;bf76
	or c			;bf77
	or d			;bf78
	nop			;bf79
	nop			;bf7a
	sbc a,a			;bf7b
	and b			;bf7c
	and c			;bf7d
	and d			;bf7e
	nop			;bf7f
	nop			;bf80
	xor a			;bf81
	or b			;bf82
	or c			;bf83
	or d			;bf84
	nop			;bf85
	nop			;bf86
	sbc a,a			;bf87
	and b			;bf88
	and c			;bf89
	and d			;bf8a
	nop			;bf8b
	nop			;bf8c
	xor a			;bf8d
	or b			;bf8e
	or c			;bf8f
	or d			;bf90
	nop			;bf91
	nop			;bf92
	sbc a,a			;bf93
	and b			;bf94
	and c			;bf95
	and d			;bf96
	nop			;bf97
	nop			;bf98
	xor a			;bf99
	or b			;bf9a
	or c			;bf9b
	or d			;bf9c
	nop			;bf9d
	nop			;bf9e
	nop			;bf9f
	dec c			;bfa0
	ld b,000h		;bfa1
	add a,0c7h		;bfa3
	ret			;bfa5
	ret z			;bfa6
	nop			;bfa7
	cp h			;bfa8
	jp z,0cdcch		;bfa9
	set 0,e			;bfac
	cp l			;bfae
	dec bc			;bfaf
	dec c			;bfb0
	daa			;bfb1
	dec h			;bfb2
	call nz,00c00h		;bfb3
	ld c,028h		;bfb6
	ld h,000h		;bfb8
	nop			;bfba
	or e			;bfbb
	or h			;bfbc
	or l			;bfbd
	or (hl)			;bfbe
	nop			;bfbf
	nop			;bfc0
	and e			;bfc1
	and h			;bfc2
	and l			;bfc3
	and (hl)		;bfc4
	nop			;bfc5
	nop			;bfc6
	or e			;bfc7
	or h			;bfc8
	or l			;bfc9
	or (hl)			;bfca
	nop			;bfcb
	nop			;bfcc
	and e			;bfcd
	and h			;bfce
	and l			;bfcf
	and (hl)		;bfd0
	nop			;bfd1
	nop			;bfd2
	or e			;bfd3
	or h			;bfd4
	or l			;bfd5
	or (hl)			;bfd6
	nop			;bfd7
	nop			;bfd8
	and e			;bfd9
	and h			;bfda
	and l			;bfdb
	and (hl)		;bfdc
	nop			;bfdd
	nop			;bfde
	or e			;bfdf
	or h			;bfe0
	or l			;bfe1
	or (hl)			;bfe2
	nop			;bfe3
	nop			;bfe4
	and e			;bfe5
	and h			;bfe6
	and l			;bfe7
	and (hl)		;bfe8
	nop			;bfe9
	nop			;bfea
	or e			;bfeb
	or h			;bfec
	or l			;bfed
	or (hl)			;bfee
	nop			;bfef
	nop			;bff0
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
