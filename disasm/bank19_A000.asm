; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank19_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank19.bin

	org 0a000h

	inc bc			;a000
	nop			;a001
	cpl			;a002
	ret			;a003
	add hl,sp		;a004
	add hl,bc		;a005
	rlca			;a006
	nop			;a007
	nop			;a008
	ret m			;a009
	inc c			;a00a
	rst 38h			;a00b
	inc b			;a00c
	rst 38h			;a00d
	ret p			;a00e
	ld c,a			;a00f
	ret po			;a010
	ret p			;a011
	rst 38h			;a012
	inc b			;a013
	inc c			;a014
	rst 38h			;a015
	ex af,af'		;a016
	ret m			;a017
	nop			;a018
	rlca			;a019
	rrca			;a01a
	add hl,bc		;a01b
	ld a,a			;a01c
	rst 28h			;a01d
	inc c			;a01e
	jr c,la059h		;a01f
	inc c			;a021
	rst 28h			;a022
	ld a,a			;a023
	rrca			;a024
	rrca			;a025
	rlca			;a026
	nop			;a027
	ret m			;a028
	dec bc			;a029
	rst 38h			;a02a
	inc c			;a02b
	rst 38h			;a02c
	rst 38h			;a02d
	ld b,0efh		;a02e
	rrca			;a030
	ld b,003h		;a031
	rst 38h			;a033
	add a,e			;a034
	inc c			;a035
	ei			;a036
	ret m			;a037
	nop			;a038
	rst 38h			;a039
	inc bc			;a03a
	add hl,bc		;a03b
	inc d			;a03c
	ld a,(bc)		;a03d
	ld b,l			;a03e
	ccf			;a03f
	rrca			;a040
	rlca			;a041
	inc bc			;a042
	ld bc,0751fh		;a043
	ld b,d			;a046
	inc h			;a047
	jr la04eh		;a048
	ret nz			;a04a
	ret po			;a04b
	ret pe			;a04c
	inc c			;a04d
la04eh:
	call po,0dcb6h		;a04e
	ret m			;a051
	ret p			;a052
	ret po			;a053
	call p,014eah		;a054
	ret pe			;a057
	ex af,af'		;a058
la059h:
	nop			;a059
	inc b			;a05a
	ld e,02fh		;a05b
	ld (hl),a		;a05d
	ld a,e			;a05e
	cp 0fch			;a05f
	call m,0f8f8h		;a061
	rst 38h			;a064
	ld a,e			;a065
	ld a,a			;a066
	ccf			;a067
	rra			;a068
	rlca			;a069
	jr nz,la084h		;a06a
	inc d			;a06c
	jp p,05ffah		;a06d
	cpl			;a070
	rrca			;a071
	rlca			;a072
	rlca			;a073
	rst 38h			;a074
	or 0fah			;a075
	inc e			;a077
	ret m			;a078
	ret po			;a079
	inc bc			;a07a
	rlca			;a07b
	rla			;a07c
	jr nc,la0a6h		;a07d
	ld l,l			;a07f
	dec sp			;a080
	rra			;a081
	rrca			;a082
	rlca			;a083
la084h:
	cpl			;a084
	ld d,a			;a085
	jr z,la09fh		;a086
	djnz la08ah		;a088
la08ah:
	ret nz			;a08a
	sub b			;a08b
	jr z,$+82		;a08c
	and d			;a08e
	call m,0e0f0h		;a08f
	ret nz			;a092
	add a,b			;a093
	ret m			;a094
	xor (hl)		;a095
	ld b,d			;a096
	inc h			;a097
	jr la0bah		;a098
	inc b			;a09a
	jr la0c5h		;a09b
	ld c,a			;a09d
	ld e,a			;a09e
la09fh:
	jp m,0f0f4h		;a09f
	ret po			;a0a2
	ret po			;a0a3
	rst 38h			;a0a4
	ld l,a			;a0a5
la0a6h:
	ld e,a			;a0a6
	jr c,la0c8h		;a0a7
	rlca			;a0a9
	jr nz,la124h		;a0aa
	call p,0deeeh		;a0ac
	ld a,a			;a0af
	ccf			;a0b0
	ccf			;a0b1
	rra			;a0b2
	rra			;a0b3
	rst 38h			;a0b4
	sbc a,0feh		;a0b5
	call m,081f8h		;a0b7
la0bah:
	ret po			;a0ba
	nop			;a0bb
	rst 38h			;a0bc
	rlca			;a0bd
	inc bc			;a0be
	ld bc,00d07h		;a0bf
	ld a,h			;a0c2
	cp 073h			;a0c3
la0c5h:
	ld b,039h		;a0c5
	inc bc			;a0c7
la0c8h:
	ld a,l			;a0c8
	jp m,00a75h		;a0c9
	nop			;a0cc
	ret po			;a0cd
	nop			;a0ce
	add a,b			;a0cf
	ret po			;a0d0
	or b			;a0d1
	ld a,07fh		;a0d2
	adc a,060h		;a0d4
	sbc a,h			;a0d6
	ret nz			;a0d7
	cp (hl)			;a0d8
	ld e,a			;a0d9
	ld l,0d0h		;a0da
	nop			;a0dc
la0ddh:
	ld bc,00804h		;a0dd
	inc b			;a0e0
	inc a			;a0e1
	ld b,003h		;a0e2
	adc a,a			;a0e4
	ld a,a			;a0e5
	jr c,$+58		;a0e6
	ld a,h			;a0e8
	ld b,08eh		;a0e9
	ei			;a0eb
	nop			;a0ec
	ret nz			;a0ed
	ret po			;a0ee
	djnz $+34		;a0ef
	inc a			;a0f1
	ld h,b			;a0f2
	ret nz			;a0f3
	pop af			;a0f4
	cp 01ch			;a0f5
	inc e			;a0f7
	ld a,060h		;a0f8
	pop af			;a0fa
	rst 18h			;a0fb
	nop			;a0fc
	nop			;a0fd
	rlca			;a0fe
	dec sp			;a0ff
	ld a,b			;a100
	rlca			;a101
	ld bc,01a26h		;a102
	rlca			;a105
	ld (hl),d		;a106
	call m,00107h		;a107
	ld (bc),a		;a10a
	dec b			;a10b
	ld (bc),a		;a10c
	nop			;a10d
	ret po			;a10e
	inc e			;a10f
	ld e,0e0h		;a110
	add a,b			;a112
	ld h,h			;a113
	ld e,b			;a114
	ret po			;a115
	ld c,(hl)		;a116
	ccf			;a117
	ret po			;a118
la119h:
	add a,b			;a119
	ld b,b			;a11a
	jr nz,la0ddh		;a11b
	nop			;a11d
	ld bc,0790ch		;a11e
	call m,03c7ch		;a121
la124h:
	dec de			;a124
	ld a,a			;a125
	adc a,a			;a126
	defb 0fdh,07ch ;ld a,iyh	;a127
	jr c,la12dh		;a129
	ld b,003h		;a12b
la12dh:
	nop			;a12d
	ret nz			;a12e
	ret p			;a12f
	sbc a,(hl)		;a130
	ccf			;a131
	ld a,03ch		;a132
	ret c			;a134
	cp 0f1h			;a135
	cp a			;a137
	ld a,01ch		;a138
	ld b,b			;a13a
	ret po			;a13b
	add a,c			;a13c
	ret nz			;a13d
	nop			;a13e
	add a,c			;a13f
	ld b,003h		;a140
	ld c,088h		;a142
	halt			;a144
	ret m			;a145
	rlca			;a146
	inc e			;a147
	inc bc			;a148
	rrca			;a149
	ret m			;a14a
	halt			;a14b
	inc bc			;a14c
	ld c,082h		;a14d
	ld b,060h		;a14f
	inc bc			;a151
	ld (hl),b		;a152
	adc a,b			;a153
	ld l,(hl)		;a154
	rra			;a155
	ret po			;a156
	jr c,la119h		;a157
	ret p			;a159
	rra			;a15a
	ld l,(hl)		;a15b
	inc bc			;a15c
	ld (hl),b		;a15d
	add a,c			;a15e
	ld h,b			;a15f
	nop			;a160
	and b			;a161
	inc bc			;a162
	dec de			;a163
	dec sp			;a164
	ld a,e			;a165
	ld a,e			;a166
	ld a,d			;a167
	defb 0fdh,0fbh,0fbh ;illegal sequence	;a168
	defb 0fdh,07ah,07bh ;illegal sequence	;a16b
	ld a,e			;a16e
	dec sp			;a16f
	dec de			;a170
	inc bc			;a171
	ret nz			;a172
	ret c			;a173
	call c,0dedeh		;a174
	ld e,(hl)		;a177
	cp a			;a178
	rst 18h			;a179
	rst 18h			;a17a
	cp a			;a17b
	ld e,(hl)		;a17c
	sbc a,0deh		;a17d
	call c,0c0d8h		;a17f
	ld b,000h		;a182
	inc bc			;a184
	ld (bc),a		;a185
	ld (bc),a		;a186
	rlca			;a187
	add a,l			;a188
	ld (de),a		;a189
	add hl,de		;a18a
	rrca			;a18b
	rlca			;a18c
	ld bc,08003h		;a18d
	inc bc			;a190
la191h:
	ld b,b			;a191
	inc bc			;a192
	jr nz,la197h		;a193
	djnz $-121		;a195
la197h:
	jr c,la191h		;a197
	ret p			;a199
	ret po			;a19a
	add a,b			;a19b
	inc bc			;a19c
	ld bc,00303h		;a19d
	inc bc			;a1a0
	rlca			;a1a1
	inc bc			;a1a2
	rrca			;a1a3
	add a,c			;a1a4
	ld b,006h		;a1a5
	nop			;a1a7
	inc bc			;a1a8
	add a,b			;a1a9
	inc bc			;a1aa
	ret nz			;a1ab
	ld (bc),a		;a1ac
	ret po			;a1ad
	add a,c			;a1ae
	ret nz			;a1af
	ld a,(bc)		;a1b0
	nop			;a1b1
	adc a,h			;a1b2
	ld bc,00602h		;a1b3
	ld l,044h		;a1b6
	ld h,b			;a1b8
	scf			;a1b9
	ccf			;a1ba
	rra			;a1bb
	rlca			;a1bc
	nop			;a1bd
	nop			;a1be
	ld b,020h		;a1bf
	inc bc			;a1c1
	ld h,b			;a1c2
	inc bc			;a1c3
	ret po			;a1c4
	add a,c			;a1c5
	ret nz			;a1c6
	dec b			;a1c7
	nop			;a1c8
	adc a,c			;a1c9
	ld bc,00703h		;a1ca
	rrca			;a1cd
	rra			;a1ce
	rra			;a1cf
	ccf			;a1d0
	rra			;a1d1
	ex af,af'		;a1d2
	inc b			;a1d3
	nop			;a1d4
	add a,d			;a1d5
	jr nz,$+66		;a1d6
	dec b			;a1d8
	ret nz			;a1d9
	inc bc			;a1da
	add a,b			;a1db
	dec bc			;a1dc
	nop			;a1dd
	adc a,c			;a1de
	inc bc			;a1df
	ld l,06eh		;a1e0
	ld h,h			;a1e2
	ld (hl),b		;a1e3
	ld a,c			;a1e4
	ccf			;a1e5
	ccf			;a1e6
	rrca			;a1e7
	inc b			;a1e8
	nop			;a1e9
	adc a,e			;a1ea
	inc b			;a1eb
	ex af,af'		;a1ec
	adc a,b			;a1ed
	djnz $+18		;a1ee
	jr nz,la212h		;a1f0
	ld b,b			;a1f2
	ret nz			;a1f3
	add a,b			;a1f4
	add a,b			;a1f5
la1f6h:
	rlca			;a1f6
	nop			;a1f7
	add a,d			;a1f8
	inc bc			;a1f9
	rrca			;a1fa
	inc bc			;a1fb
	rra			;a1fc
	add a,d			;a1fd
	rrca			;a1fe
	ld b,006h		;a1ff
	nop			;a201
	adc a,c			;a202
	inc c			;a203
	jr c,la1f6h		;a204
	ret p			;a206
	ret po			;a207
	ret po			;a208
la209h:
	ret nz			;a209
	ret nz			;a20a
	add a,b			;a20b
	ld a,(bc)		;a20c
	nop			;a20d
	adc a,d			;a20e
	jr nz,$+81		;a20f
	ld e,(hl)		;a211
la212h:
	ret z			;a212
	ret po			;a213
	pop hl			;a214
	ld a,a			;a215
	ld a,a			;a216
	ld a,00ch		;a217
	ld b,000h		;a219
	add a,a			;a21b
	ld (bc),a		;a21c
	add a,h			;a21d
	ex af,af'		;a21e
	djnz la281h		;a21f
	ret nz			;a221
	add a,b			;a222
	add hl,bc		;a223
	nop			;a224
	add a,c			;a225
	rra			;a226
	inc bc			;a227
	ccf			;a228
	add a,d			;a229
	rra			;a22a
	ld e,00ah		;a22b
	nop			;a22d
	add a,l			;a22e
	call m,0f0f8h		;a22f
	ret po			;a232
	add a,b			;a233
	add hl,bc		;a234
	nop			;a235
	adc a,d			;a236
	jr la269h		;a237
	ld h,(hl)		;a239
	ld l,a			;a23a
	or 0f0h			;a23b
	ld (hl),b		;a23d
	ld a,c			;a23e
	ld a,018h		;a23f
	add hl,bc		;a241
	nop			;a242
	add a,l			;a243
	ret nz			;a244
	nop			;a245
	rlca			;a246
	jr c,la209h		;a247
	add hl,bc		;a249
	nop			;a24a
	add a,e			;a24b
la24ch:
	ld c,01fh		;a24c
	rra			;a24e
	inc bc			;a24f
	rrca			;a250
	add a,c			;a251
	ld b,00ah		;a252
	nop			;a254
	add a,l			;a255
	ret nz			;a256
	ret m			;a257
	rst 38h			;a258
	ret m			;a259
	ret nz			;a25a
	rlca			;a25b
	nop			;a25c
	adc a,d			;a25d
	inc c			;a25e
	ld a,(06270h)		;a25f
	rst 30h			;a262
	di			;a263
	ret p			;a264
	ld a,b			;a265
	ld a,a			;a266
	ccf			;a267
	dec bc			;a268
la269h:
	nop			;a269
	add a,l			;a26a
	add a,b			;a26b
	ld b,b			;a26c
	nop			;a26d
	nop			;a26e
	call m,00007h		;a26f
	add a,e			;a272
	inc b			;a273
	rrca			;a274
	rra			;a275
	inc bc			;a276
	rrca			;a277
	add a,c			;a278
	rlca			;a279
	dec bc			;a27a
	nop			;a27b
	add a,a			;a27c
	add a,b			;a27d
	ret nz			;a27e
	ret po			;a27f
	ret p			;a280
la281h:
	ret m			;a281
	call m,00602h		;a282
	nop			;a285
	adc a,d			;a286
	rrca			;a287
	ccf			;a288
	inc a			;a289
	ld a,c			;a28a
	ld (hl),e		;a28b
	ld (hl),c		;a28c
	ld a,b			;a28d
	jr c,la29ch		;a28e
	inc bc			;a290
	rlca			;a291
	nop			;a292
	adc a,h			;a293
	add a,b			;a294
	nop			;a295
	add a,b			;a296
	add a,b			;a297
	ret nz			;a298
	ld b,b			;a299
	jr nz,la29ch		;a29a
la29ch:
	nop			;a29c
	ret nz			;a29d
	jr nc,la2a8h		;a29e
	dec b			;a2a0
	nop			;a2a1
	add a,a			;a2a2
	inc bc			;a2a3
	rlca			;a2a4
	rrca			;a2a5
	rrca			;a2a6
	rlca			;a2a7
la2a8h:
	rlca			;a2a8
	inc bc			;a2a9
	add hl,bc		;a2aa
	nop			;a2ab
	sbc a,c			;a2ac
	add a,b			;a2ad
	ret nz			;a2ae
	ret nz			;a2af
	ret po			;a2b0
	ret po			;a2b1
	ret p			;a2b2
	ret p			;a2b3
	ret m			;a2b4
	jr c,la2c3h		;a2b5
	inc b			;a2b7
	nop			;a2b8
	nop			;a2b9
	rlca			;a2ba
	rra			;a2bb
	ld a,038h		;a2bc
	ld a,c			;a2be
	ld a,b			;a2bf
	jr c,la2deh		;a2c0
	inc c			;a2c2
la2c3h:
	ld b,002h		;a2c3
	ld bc,00005h		;a2c5
	add a,e			;a2c8
	ret nz			;a2c9
	jr nz,la24ch		;a2ca
	inc bc			;a2cc
	ret nz			;a2cd
	ld (bc),a		;a2ce
	ld b,b			;a2cf
	inc bc			;a2d0
	nop			;a2d1
	add a,e			;a2d2
	add a,b			;a2d3
	ld b,b			;a2d4
	jr nz,$+5		;a2d5
	nop			;a2d7
	add a,c			;a2d8
	ld bc,00704h		;a2d9
	ld (bc),a		;a2dc
	inc bc			;a2dd
la2deh:
	ld (bc),a		;a2de
	ld bc,00007h		;a2df
	add a,c			;a2e2
	ret nz			;a2e3
	add hl,bc		;a2e4
	ret po			;a2e5
	adc a,e			;a2e6
	ld h,b			;a2e7
	jr nz,la2eah		;a2e8
la2eah:
	nop			;a2ea
	ld bc,00f07h		;a2eb
	add hl,de		;a2ee
	ld (de),a		;a2ef
	rlca			;a2f0
	rlca			;a2f1
	inc bc			;a2f2
	ld (bc),a		;a2f3
	ld b,000h		;a2f4
	add a,a			;a2f6
	add a,b			;a2f7
	ret po			;a2f8
	ret p			;a2f9
	ret m			;a2fa
	jr c,la30dh		;a2fb
	djnz la302h		;a2fd
	jr nz,la304h		;a2ff
	ld b,b			;a301
la302h:
	inc bc			;a302
	add a,b			;a303
la304h:
	inc bc			;a304
	nop			;a305
	add a,c			;a306
	ld b,003h		;a307
	rrca			;a309
	inc bc			;a30a
	rlca			;a30b
	inc bc			;a30c
la30dh:
	inc bc			;a30d
	inc bc			;a30e
	ld bc,00004h		;a30f
	add a,e			;a312
	ret nz			;a313
	ret po			;a314
	ret po			;a315
	inc bc			;a316
	ret nz			;a317
	inc bc			;a318
	add a,b			;a319
	inc b			;a31a
	nop			;a31b
	add a,e			;a31c
	inc bc			;a31d
	inc b			;a31e
	ld bc,00303h		;a31f
	ld (bc),a		;a322
	ld (bc),a		;a323
	inc bc			;a324
	nop			;a325
la326h:
	sub b			;a326
	ld bc,00402h		;a327
	nop			;a32a
	ret po			;a32b
	ret m			;a32c
	ld a,h			;a32d
	inc e			;a32e
	sbc a,(hl)		;a32f
	ld e,01ch		;a330
	jr c,la364h		;a332
	ld h,b			;a334
	ld b,b			;a335
	add a,b			;a336
	ld b,000h		;a337
	add a,c			;a339
	inc bc			;a33a
	add hl,bc		;a33b
	rlca			;a33c
	add a,d			;a33d
	ld b,004h		;a33e
	inc b			;a340
	nop			;a341
	add a,c			;a342
	add a,b			;a343
	inc b			;a344
	ret po			;a345
	ld (bc),a		;a346
	ret nz			;a347
	ld (bc),a		;a348
	add a,b			;a349
	rlca			;a34a
	nop			;a34b
	adc a,h			;a34c
	ld bc,00100h		;a34d
	ld bc,00203h		;a350
	inc b			;a353
	nop			;a354
	nop			;a355
	inc bc			;a356
	inc c			;a357
	djnz la35dh		;a358
	nop			;a35a
	adc a,d			;a35b
	ret p			;a35c
la35dh:
	call m,09e3ch		;a35d
	adc a,08eh		;a360
	ld e,01ch		;a362
la364h:
	jr nc,la326h		;a364
	ex af,af'		;a366
	nop			;a367
	adc a,e			;a368
	ld bc,00303h		;a369
	rlca			;a36c
	rlca			;a36d
	rrca			;a36e
	rrca			;a36f
	rra			;a370
	inc e			;a371
	jr nc,$+34		;a372
	dec b			;a374
	nop			;a375
	add a,a			;a376
	ret nz			;a377
	ret po			;a378
	ret p			;a379
	ret p			;a37a
	ret po			;a37b
	ret po			;a37c
	ret nz			;a37d
	inc c			;a37e
	nop			;a37f
	add a,l			;a380
	ld bc,00002h		;a381
	nop			;a384
	ccf			;a385
	ld b,000h		;a386
	adc a,d			;a388
	jr nc,la3e7h		;a389
	ld c,046h		;a38b
	rst 28h			;a38d
	rst 8			;a38e
	rrca			;a38f
	ld e,0feh		;a390
la392h:
	call m,00009h		;a392
	add a,a			;a395
	ld bc,00703h		;a396
	rrca			;a399
	rra			;a39a
	ccf			;a39b
	ld b,b			;a39c
	rlca			;a39d
	nop			;a39e
	add a,e			;a39f
	jr nz,la392h		;a3a0
	ret m			;a3a2
	inc bc			;a3a3
	ret p			;a3a4
	add a,c			;a3a5
	ret po			;a3a6
	dec c			;a3a7
	nop			;a3a8
	add a,l			;a3a9
	inc bc			;a3aa
	nop			;a3ab
	ret po			;a3ac
	inc e			;a3ad
	inc bc			;a3ae
	ex af,af'		;a3af
	nop			;a3b0
	adc a,d			;a3b1
	jr la3c0h		;a3b2
	ld h,(hl)		;a3b4
	or 06fh			;a3b5
	rrca			;a3b7
	ld c,09eh		;a3b8
	ld a,h			;a3ba
	jr la3c5h		;a3bb
	nop			;a3bd
	add a,l			;a3be
	inc bc			;a3bf
la3c0h:
	rra			;a3c0
	rst 38h			;a3c1
	rra			;a3c2
	inc bc			;a3c3
	ld a,(bc)		;a3c4
la3c5h:
	nop			;a3c5
	add a,e			;a3c6
	ld (hl),b		;a3c7
	ret m			;a3c8
	ret m			;a3c9
	inc bc			;a3ca
	ret p			;a3cb
	add a,c			;a3cc
	ld h,b			;a3cd
	ld a,(bc)		;a3ce
	nop			;a3cf
	add a,a			;a3d0
	ld b,b			;a3d1
	ld hl,00810h		;a3d2
	ld b,003h		;a3d5
	ld bc,00009h		;a3d7
	adc a,d			;a3da
	inc b			;a3db
	jp p,0137ah		;a3dc
	rlca			;a3df
	add a,a			;a3e0
	cp 0feh			;a3e1
	ld a,h			;a3e3
	jr nc,la3ech		;a3e4
	nop			;a3e6
la3e7h:
	add a,l			;a3e7
	ccf			;a3e8
	rra			;a3e9
	rrca			;a3ea
	rlca			;a3eb
la3ech:
	ld bc,0000bh		;a3ec
	add a,c			;a3ef
	ret m			;a3f0
	inc bc			;a3f1
	call m,0f882h		;a3f2
	ld a,b			;a3f5
	ex af,af'		;a3f6
	nop			;a3f7
	adc a,e			;a3f8
	jr nz,$+18		;a3f9
	ld de,00808h		;a3fb
	inc b			;a3fe
	inc b			;a3ff
	ld (bc),a		;a400
	inc bc			;a401
	ld bc,00801h		;a402
	nop			;a405
	adc a,c			;a406
	ret nz			;a407
	ld (hl),h		;a408
	halt			;a409
	ld h,00eh		;a40a
	sbc a,(hl)		;a40c
	call m,0f0fch		;a40d
	inc bc			;a410
	nop			;a411
	adc a,c			;a412
	jr nc,la431h		;a413
	rrca			;a415
	rrca			;a416
	rlca			;a417
	rlca			;a418
	inc bc			;a419
	inc bc			;a41a
	ld bc,0000ah		;a41b
	add a,d			;a41e
	ret nz			;a41f
	ret p			;a420
	inc bc			;a421
	ret m			;a422
	add a,d			;a423
	ret p			;a424
	ld h,b			;a425
	ld b,000h		;a426
	ld b,004h		;a428
	inc bc			;a42a
	ld b,003h		;a42b
	rlca			;a42d
	add a,c			;a42e
	inc bc			;a42f
	rlca			;a430
la431h:
	nop			;a431
	adc a,l			;a432
	add a,b			;a433
	ld b,b			;a434
	ld h,b			;a435
	ld (hl),h		;a436
	ld (0ec06h),hl		;a437
	call m,0e0f8h		;a43a
	nop			;a43d
	inc b			;a43e
	ld (bc),a		;a43f
	dec b			;a440
	inc bc			;a441
	inc bc			;a442
	ld bc,00009h		;a443
	adc a,c			;a446
	add a,b			;a447
	ret nz			;a448
	ret po			;a449
	ret p			;a44a
	ret m			;a44b
	ret m			;a44c
	call m,010f8h		;a44d
	inc b			;a450
	nop			;a451
	sbc a,(hl)		;a452
	inc bc			;a453
	inc c			;a454
	djnz la47dh		;a455
	cpl			;a457
	ld c,a			;a458
	ld b,(hl)		;a459
	ld h,b			;a45a
	ld h,b			;a45b
	jr nc,la49ah		;a45c
	rla			;a45e
	ld c,003h		;a45f
	nop			;a461
	nop			;a462
	ret nz			;a463
	ret p			;a464
	jr c,la47bh		;a465
	inc e			;a467
	ld c,00ah		;a468
	ld a,(de)		;a46a
	ld d,024h		;a46b
	call z,07098h		;a46d
	ret nz			;a470
	inc bc			;a471
	nop			;a472
	adc a,h			;a473
	inc bc			;a474
	rrca			;a475
	rra			;a476
	rra			;a477
	ccf			;a478
	ccf			;a479
	rra			;a47a
la47bh:
	rra			;a47b
	rrca			;a47c
la47dh:
	inc bc			;a47d
	ex af,af'		;a47e
	ld bc,00005h		;a47f
	adc a,l			;a482
	ret nz			;a483
	ret pe			;a484
	ret po			;a485
	ret p			;a486
	call p,0e8e4h		;a487
	ret c			;a48a
	jr nc,la4edh		;a48b
	add a,b			;a48d
	nop			;a48e
	nop			;a48f
	nop			;a490
	ret po			;a491
	nop			;a492
	inc c			;a493
	rra			;a494
	rra			;a495
	ld e,01ch		;a496
	dec e			;a498
	dec a			;a499
la49ah:
	inc a			;a49a
	ld a,03fh		;a49b
	rra			;a49d
	rlca			;a49e
	rlca			;a49f
	inc bc			;a4a0
	nop			;a4a1
	ld (hl),b		;a4a2
	ret m			;a4a3
	call m,01ffeh		;a4a4
	rst 8			;a4a7
	rst 28h			;a4a8
	rst 28h			;a4a9
	adc a,01eh		;a4aa
	cp 0feh			;a4ac
	call m,080f8h		;a4ae
	nop			;a4b1
	jr c,la533h		;a4b2
	ld a,a			;a4b4
	ld a,b			;a4b5
	inc sp			;a4b6
	scf			;a4b7
	scf			;a4b8
	inc sp			;a4b9
	ld a,c			;a4ba
	ld a,h			;a4bb
	ccf			;a4bc
	rrca			;a4bd
	rlca			;a4be
	rlca			;a4bf
	inc bc			;a4c0
	nop			;a4c1
	ret po			;a4c2
	ret p			;a4c3
	ret p			;a4c4
la4c5h:
	ld (hl),b		;a4c5
	jr c,$-96		;a4c6
	sbc a,0deh		;a4c8
	sbc a,h			;a4ca
	jr c,la4c5h		;a4cb
	call m,sub_bcfch	;a4cd
	jr la4d2h		;a4d0
la4d2h:
	ld (hl),b		;a4d2
	call m,07fffh		;a4d3
	jr c,la4ebh		;a4d6
	inc de			;a4d8
	add hl,de		;a4d9
	inc a			;a4da
	ld a,(hl)		;a4db
	rst 38h			;a4dc
	rst 38h			;a4dd
	rst 30h			;a4de
	ld h,e			;a4df
	inc bc			;a4e0
	inc bc			;a4e1
	ld h,b			;a4e2
	ret p			;a4e3
	ret p			;a4e4
	cp 0ffh			;a4e5
	ccf			;a4e7
	sbc a,a			;a4e8
	sbc a,0e8h		;a4e9
la4ebh:
	ld l,b			;a4eb
	sbc a,b			;a4ec
la4edh:
	call m,0bffeh		;a4ed
	sbc a,a			;a4f0
	ld c,000h		;a4f1
	and b			;a4f3
	ld bc,00603h		;a4f4
	ld bc,0301bh		;a4f7
	ld a,a			;a4fa
	rst 38h			;a4fb
	jr nz,la57dh		;a4fc
	inc (hl)		;a4fe
	jr $+15			;a4ff
	ld b,002h		;a501
	ld bc,0e820h		;a503
	ld a,(de)		;a506
	ret nz			;a507
	jp c,0ff3fh		;a508
	cp a			;a50b
	ccf			;a50c
	defb 0fdh,09ah,01ah ;illegal sequence	;a50d
	ld e,d			;a510
	jp z,020f8h		;a511
	inc bc			;a514
	nop			;a515
	sbc a,l			;a516
	inc c			;a517
	dec de			;a518
	rlca			;a519
	ccf			;a51a
	jr nz,$+1		;a51b
	ld a,a			;a51d
	rla			;a51e
	inc de			;a51f
	add hl,bc		;a520
	ld b,003h		;a521
	ld bc,0f8e0h		;a523
	ret nz			;a526
	ld a,(de)		;a527
	jp c,0e4a5h		;a528
	ld h,h			;a52b
	call po,080e7h		;a52c
	ret nz			;a52f
	jp c,0f8dah		;a530
la533h:
	ret po			;a533
	nop			;a534
	adc a,l			;a535
	inc sp			;a536
	rlca			;a537
	rlca			;a538
	dec de			;a539
	inc de			;a53a
	ld h,a			;a53b
	ccf			;a53c
	ex af,af'		;a53d
	rlca			;a53e
	inc hl			;a53f
	ld b,e			;a540
	rrca			;a541
	dec bc			;a542
	inc bc			;a543
	rlca			;a544
	call 0f066h		;a545
	ret p			;a548
	call pe,0e6e4h		;a549
	call m,0f089h		;a54c
	ret nz			;a54f
	ret nz			;a550
	ret po			;a551
	add a,h			;a552
	ret nz			;a553
	add a,b			;a554
	nop			;a555
	inc bc			;a556
	ld a,(hl)		;a557
	ld a,h			;a558
	jr c,la579h		;a559
	rra			;a55b
	cp 00bh			;a55c
	ld e,01bh		;a55e
	inc hl			;a560
	ld c,l			;a561
	ld c,c			;a562
	inc c			;a563
	ld c,003h		;a564
	ld h,b			;a566
	cp a			;a567
	rra			;a568
	adc a,03dh		;a569
	ret m			;a56b
	cp h			;a56c
	jp (hl)			;a56d
	ld a,0d8h		;a56e
	ret nz			;a570
	ld a,b			;a571
	inc b			;a572
	ld b,d			;a573
	add a,b			;a574
	nop			;a575
	ld h,(hl)		;a576
	rrca			;a577
	rrca			;a578
la579h:
	scf			;a579
	daa			;a57a
	ld h,a			;a57b
la57ch:
	ccf			;a57c
la57dh:
	sub c			;a57d
	rrca			;a57e
	inc bc			;a57f
	inc bc			;a580
	rlca			;a581
	ld hl,00103h		;a582
	nop			;a585
	call z,0e0e0h		;a586
	ret c			;a589
	ret z			;a58a
	and 0fch		;a58b
	djnz $-30		;a58d
	call nz,0f0c2h		;a58f
	ret nc			;a592
	inc bc			;a593
	ret po			;a594
	or b			;a595
	ld b,0fdh		;a596
	ret m			;a598
	ld (hl),e		;a599
	cp h			;a59a
	rra			;a59b
	dec a			;a59c
	sub a			;a59d
	ld a,h			;a59e
	dec de			;a59f
	inc bc			;a5a0
	ld e,020h		;a5a1
	ld b,d			;a5a3
	ld bc,0c000h		;a5a4
	ld a,(hl)		;a5a7
	ld a,01ch		;a5a8
	ld a,b			;a5aa
	ret m			;a5ab
	ld a,a			;a5ac
	ret nc			;a5ad
	ld a,b			;a5ae
	ret c			;a5af
	call nz,092b2h		;a5b0
	jr nc,la625h		;a5b3
	ret nz			;a5b5
	nop			;a5b6
	ld bc,02103h		;a5b7
	rlca			;a5ba
	inc bc			;a5bb
	inc bc			;a5bc
	rrca			;a5bd
	sub c			;a5be
	ccf			;a5bf
	ld h,a			;a5c0
	daa			;a5c1
	scf			;a5c2
	rrca			;a5c3
	rrca			;a5c4
	ld h,(hl)		;a5c5
	inc bc			;a5c6
	ret po			;a5c7
	xor l			;a5c8
	ret nc			;a5c9
	ret p			;a5ca
	jp nz,0e0c4h		;a5cb
	djnz $-2		;a5ce
	and 0c8h		;a5d0
	ret c			;a5d2
	ret po			;a5d3
	ret po			;a5d4
	call z,00100h		;a5d5
	ld b,d			;a5d8
	jr nz,la5f9h		;a5d9
	inc bc			;a5db
	dec de			;a5dc
	ld a,h			;a5dd
	sub a			;a5de
	dec a			;a5df
	rra			;a5e0
	cp h			;a5e1
	ld (hl),e		;a5e2
	ret m			;a5e3
	defb 0fdh,006h,0c0h ;illegal sequence	;a5e4
	ld (hl),b		;a5e7
	jr nc,la57ch		;a5e8
	or d			;a5ea
	call nz,078d8h		;a5eb
	ret nc			;a5ee
	ld a,a			;a5ef
	ret m			;a5f0
	ld a,b			;a5f1
	inc e			;a5f2
	ld a,07eh		;a5f3
	ret nz			;a5f5
	inc bc			;a5f6
	rlca			;a5f7
	rst 0			;a5f8
la5f9h:
	dec bc			;a5f9
	rrca			;a5fa
	ld b,e			;a5fb
	inc hl			;a5fc
	rlca			;a5fd
	ex af,af'		;a5fe
	ccf			;a5ff
	ld h,a			;a600
	inc de			;a601
	dec de			;a602
	rlca			;a603
	rlca			;a604
	inc sp			;a605
	nop			;a606
	add a,b			;a607
	ret nz			;a608
	add a,h			;a609
	ret po			;a60a
	ret nz			;a60b
	ret nz			;a60c
	ret p			;a60d
	adc a,c			;a60e
	call m,0e4e6h		;a60f
	call pe,0f0f0h		;a612
	ld h,(hl)		;a615
	inc bc			;a616
	ld c,00ch		;a617
	ld c,c			;a619
	ld c,l			;a61a
	inc hl			;a61b
	dec de			;a61c
	ld e,00bh		;a61d
	cp 01fh			;a61f
	ld e,038h		;a621
	ld a,h			;a623
	ld a,(hl)		;a624
la625h:
	inc bc			;a625
	nop			;a626
	add a,b			;a627
	ld b,d			;a628
	inc b			;a629
	ld a,b			;a62a
	ret nz			;a62b
	ret c			;a62c
	ld a,0e9h		;a62d
	cp h			;a62f
	ret m			;a630
	dec a			;a631
	adc a,01fh		;a632
	cp a			;a634
	ld h,b			;a635
	nop			;a636
	inc c			;a637
	ld (bc),a		;a638
	ld bc,0f979h		;a639
	rst 38h			;a63c
	djnz la63fh		;a63d
la63fh:
	ccf			;a63f
	inc bc			;a640
	add hl,bc		;a641
	and b			;a642
	ld de,00021h		;a643
	ld b,b			;a646
	ld h,(hl)		;a647
	ld h,a			;a648
	ld e,a			;a649
	sbc a,0feh		;a64a
	rst 38h			;a64c
	nop			;a64d
	adc a,b			;a64e
	rst 30h			;a64f
	rst 38h			;a650
	sub 0deh		;a651
	ld a,a			;a653
	daa			;a654
	sub (hl)		;a655
	nop			;a656
	djnz la65dh		;a657
	ld (bc),a		;a659
	ld a,(bc)		;a65a
	ld a,c			;a65b
	rst 0			;a65c
la65dh:
	ld (hl),c		;a65d
	add hl,sp		;a65e
	ld a,009h		;a65f
	inc bc			;a661
	ld (bc),a		;a662
	dec b			;a663
	nop			;a664
	sub c			;a665
	ld c,b			;a666
	ld (hl),b		;a667
	ld h,b			;a668
	xor 073h		;a669
	sbc a,09ch		;a66b
	add hl,hl		;a66d
	ld (hl),e		;a66e
	and 060h		;a66f
	ld d,b			;a671
	ex af,af'		;a672
	nop			;a673
	nop			;a674
	ld hl,00311h		;a675
	add hl,bc		;a678
	sbc a,d			;a679
	ccf			;a67a
	nop			;a67b
	djnz $+1		;a67c
	ld sp,hl		;a67e
	ld a,c			;a67f
	ld bc,00c02h		;a680
	nop			;a683
	sub (hl)		;a684
	daa			;a685
	ld a,a			;a686
	sbc a,0d6h		;a687
	rst 38h			;a689
	rst 30h			;a68a
	adc a,b			;a68b
	nop			;a68c
	rst 38h			;a68d
	cp 0deh			;a68e
	ld e,a			;a690
	ld h,a			;a691
	ld h,(hl)		;a692
	ld b,b			;a693
	inc bc			;a694
	nop			;a695
	or b			;a696
	ld (bc),a		;a697
	inc bc			;a698
	add hl,bc		;a699
	ld a,039h		;a69a
	ld (hl),c		;a69c
	rst 0			;a69d
	ld a,c			;a69e
	ld a,(bc)		;a69f
	ld (bc),a		;a6a0
	inc b			;a6a1
	djnz la6a4h		;a6a2
la6a4h:
	nop			;a6a4
	ex af,af'		;a6a5
	ld d,b			;a6a6
	ld h,b			;a6a7
	and 073h		;a6a8
	add hl,hl		;a6aa
	sbc a,h			;a6ab
	sbc a,073h		;a6ac
	xor 060h		;a6ae
	ld (hl),b		;a6b0
	ld c,b			;a6b1
	nop			;a6b2
	nop			;a6b3
	ld l,c			;a6b4
	call po,07bfeh		;a6b5
	ld l,e			;a6b8
	rst 38h			;a6b9
	rst 28h			;a6ba
	ld de,0ff00h		;a6bb
	ld a,a			;a6be
	ld a,e			;a6bf
	jp m,066e6h		;a6c0
	ld (bc),a		;a6c3
	nop			;a6c4
	add a,h			;a6c5
	adc a,b			;a6c6
	inc bc			;a6c7
	sub b			;a6c8
	sbc a,b			;a6c9
	call m,00800h		;a6ca
	rst 38h			;a6cd
	sbc a,a			;a6ce
	sbc a,(hl)		;a6cf
	add a,b			;a6d0
	ld b,b			;a6d1
	jr nc,la6d4h		;a6d2
la6d4h:
	nop			;a6d4
	djnz la6e1h		;a6d5
	ld b,067h		;a6d7
	adc a,094h		;a6d9
	add hl,sp		;a6db
	ld a,e			;a6dc
	adc a,077h		;a6dd
	ld b,00eh		;a6df
la6e1h:
	ld (de),a		;a6e1
	dec b			;a6e2
	nop			;a6e3
	and a			;a6e4
	ld b,b			;a6e5
	ret nz			;a6e6
	sub b			;a6e7
	ld a,h			;a6e8
	sbc a,h			;a6e9
	adc a,(hl)		;a6ea
	ex (sp),hl		;a6eb
	sbc a,(hl)		;a6ec
	ld d,b			;a6ed
	ld b,b			;a6ee
	jr nz,la6f9h		;a6ef
	nop			;a6f1
	ld (bc),a		;a6f2
	ld h,(hl)		;a6f3
	and 0fah		;a6f4
	ld a,e			;a6f6
	ld a,a			;a6f7
	rst 38h			;a6f8
la6f9h:
	nop			;a6f9
	ld de,0ffefh		;a6fa
	ld l,e			;a6fd
	ld a,e			;a6fe
	cp 0e4h			;a6ff
	ld l,c			;a701
	nop			;a702
	jr nc,la745h		;a703
	add a,b			;a705
	sbc a,(hl)		;a706
	sbc a,a			;a707
	rst 38h			;a708
	ex af,af'		;a709
	nop			;a70a
	call m,09003h		;a70b
	add a,d			;a70e
	adc a,b			;a70f
	add a,h			;a710
	inc bc			;a711
	nop			;a712
	sbc a,e			;a713
	ld (de),a		;a714
	ld c,006h		;a715
	ld (hl),a		;a717
	adc a,07bh		;a718
	add hl,sp		;a71a
	sub h			;a71b
	adc a,067h		;a71c
	ld b,00ah		;a71e
	djnz la722h		;a720
la722h:
	nop			;a722
	ex af,af'		;a723
	jr nz,$+66		;a724
	ld d,b			;a726
	sbc a,(hl)		;a727
	ex (sp),hl		;a728
	adc a,(hl)		;a729
	sbc a,h			;a72a
	ld a,h			;a72b
	sub b			;a72c
	ret nz			;a72d
	ld b,b			;a72e
	inc bc			;a72f
	nop			;a730
	adc a,l			;a731
	inc sp			;a732
	rlca			;a733
	rlca			;a734
	inc hl			;a735
	inc de			;a736
	ld h,a			;a737
	ccf			;a738
	inc bc			;a739
	rlca			;a73a
	inc hl			;a73b
	ld b,e			;a73c
	rrca			;a73d
	ld b,d			;a73e
	inc bc			;a73f
	rlca			;a740
	call 0f066h		;a741
	ret p			;a744
la745h:
	ld (0e6e4h),hl		;a745
	call m,0f060h		;a748
	ret nz			;a74b
	ret nz			;a74c
	ret po			;a74d
	add a,b			;a74e
	ret nz			;a74f
	add a,b			;a750
	nop			;a751
	inc bc			;a752
	ld a,(hl)		;a753
	ld a,h			;a754
	jr c,la775h		;a755
	rra			;a757
	cp 008h			;a758
	ld e,01bh		;a75a
	inc hl			;a75c
	ld c,l			;a75d
	ld c,c			;a75e
	inc c			;a75f
	ld c,003h		;a760
	ld h,b			;a762
	cp a			;a763
	rra			;a764
	adc a,03dh		;a765
	ret m			;a767
	cp h			;a768
	adc a,c			;a769
	ld a,0d8h		;a76a
	ret nz			;a76c
	ld a,b			;a76d
	inc b			;a76e
	ld b,d			;a76f
	add a,b			;a770
	nop			;a771
	ld h,(hl)		;a772
	rrca			;a773
	rrca			;a774
la775h:
	ld b,h			;a775
	daa			;a776
	ld h,a			;a777
la778h:
	ccf			;a778
	ld b,00fh		;a779
	inc bc			;a77b
	inc bc			;a77c
	rlca			;a77d
	ld bc,00103h		;a77e
	nop			;a781
	call z,0e0e0h		;a782
	call nz,0e6c8h		;a785
	call m,0e0c0h		;a788
	call nz,0f0c2h		;a78b
	ld b,d			;a78e
	inc bc			;a78f
	ret po			;a790
	or b			;a791
	ld b,0fdh		;a792
	ret m			;a794
	ld (hl),e		;a795
	cp h			;a796
	rra			;a797
	dec a			;a798
	sub c			;a799
	ld a,h			;a79a
	dec de			;a79b
	inc bc			;a79c
	ld e,020h		;a79d
	ld b,d			;a79f
	ld bc,0c000h		;a7a0
	ld a,(hl)		;a7a3
	ld a,01ch		;a7a4
	ld a,b			;a7a6
	ret m			;a7a7
	ld a,a			;a7a8
	djnz la823h		;a7a9
	ret c			;a7ab
	call nz,092b2h		;a7ac
	jr nc,la821h		;a7af
	ret nz			;a7b1
	nop			;a7b2
	ld bc,00103h		;a7b3
	rlca			;a7b6
	inc bc			;a7b7
	inc bc			;a7b8
	rrca			;a7b9
	ld b,03fh		;a7ba
	ld h,a			;a7bc
	daa			;a7bd
	ld b,h			;a7be
	rrca			;a7bf
	rrca			;a7c0
	ld h,(hl)		;a7c1
	inc bc			;a7c2
	ret po			;a7c3
	xor l			;a7c4
	ld b,d			;a7c5
	ret p			;a7c6
	jp nz,0e0c4h		;a7c7
	ret nz			;a7ca
	call m,0c8e6h		;a7cb
	call nz,0e0e0h		;a7ce
	call z,00100h		;a7d1
	ld b,d			;a7d4
	jr nz,la7f5h		;a7d5
	inc bc			;a7d7
	dec de			;a7d8
	ld a,h			;a7d9
	sub c			;a7da
	dec a			;a7db
	rra			;a7dc
	cp h			;a7dd
	ld (hl),e		;a7de
	ret m			;a7df
	defb 0fdh,006h,0c0h ;illegal sequence	;a7e0
	ld (hl),b		;a7e3
	jr nc,la778h		;a7e4
	or d			;a7e6
	call nz,078d8h		;a7e7
	djnz la86bh		;a7ea
	ret m			;a7ec
	ld a,b			;a7ed
	inc e			;a7ee
	ld a,07eh		;a7ef
	ret nz			;a7f1
	inc bc			;a7f2
	rlca			;a7f3
	rst 0			;a7f4
la7f5h:
	ld b,d			;a7f5
	rrca			;a7f6
	ld b,e			;a7f7
	inc hl			;a7f8
	rlca			;a7f9
	inc bc			;a7fa
	ccf			;a7fb
	ld h,a			;a7fc
	inc de			;a7fd
	inc hl			;a7fe
	rlca			;a7ff
	rlca			;a800
	inc sp			;a801
	nop			;a802
	add a,b			;a803
	ret nz			;a804
	add a,b			;a805
	ret po			;a806
	ret nz			;a807
	ret nz			;a808
	ret p			;a809
	ld h,b			;a80a
	call m,0e4e6h		;a80b
	ld (0f0f0h),hl		;a80e
	ld h,(hl)		;a811
	inc bc			;a812
	ld c,00ch		;a813
	ld c,c			;a815
	ld c,l			;a816
	inc hl			;a817
	dec de			;a818
	ld e,008h		;a819
	cp 01fh			;a81b
	ld e,038h		;a81d
	ld a,h			;a81f
	ld a,(hl)		;a820
la821h:
	inc bc			;a821
	nop			;a822
la823h:
	add a,b			;a823
	ld b,d			;a824
	inc b			;a825
	ld a,b			;a826
	ret nz			;a827
	ret c			;a828
	ld a,089h		;a829
	cp h			;a82b
	ret m			;a82c
	dec a			;a82d
	adc a,01fh		;a82e
	cp a			;a830
	ld h,b			;a831
	nop			;a832
	inc c			;a833
	ld (bc),a		;a834
	ld bc,0f979h		;a835
	rst 38h			;a838
	ld h,c			;a839
	add hl,sp		;a83a
	ccf			;a83b
	inc bc			;a83c
	add hl,bc		;a83d
	and b			;a83e
	ld de,00021h		;a83f
	ld b,b			;a842
	ld h,(hl)		;a843
	ld h,a			;a844
	ld e,a			;a845
	sbc a,0feh		;a846
	rst 38h			;a848
	sbc a,014h		;a849
	rst 30h			;a84b
	rst 38h			;a84c
	sub 0deh		;a84d
	ld a,a			;a84f
	daa			;a850
	sub (hl)		;a851
	nop			;a852
	djnz la859h		;a853
	ld (bc),a		;a855
	ld a,(bc)		;a856
	ld a,c			;a857
	rst 0			;a858
la859h:
	djnz la85bh		;a859
la85bh:
	ld a,009h		;a85b
	inc bc			;a85d
	ld (bc),a		;a85e
	dec b			;a85f
	nop			;a860
la861h:
	sub c			;a861
	ld c,b			;a862
	ld (hl),b		;a863
	ld h,b			;a864
	xor 073h		;a865
	nop			;a867
	adc a,b			;a868
	add hl,hl		;a869
	ld (hl),e		;a86a
la86bh:
	and 060h		;a86b
	ld d,b			;a86d
	ex af,af'		;a86e
	nop			;a86f
	nop			;a870
	ld hl,00311h		;a871
	add hl,bc		;a874
	sbc a,d			;a875
	ccf			;a876
	add hl,sp		;a877
	ld h,c			;a878
	rst 38h			;a879
	ld sp,hl		;a87a
	ld a,c			;a87b
	ld bc,00c02h		;a87c
	nop			;a87f
	sub (hl)		;a880
	daa			;a881
	ld a,a			;a882
	sbc a,0d6h		;a883
	rst 38h			;a885
	rst 30h			;a886
	inc d			;a887
	sbc a,0ffh		;a888
	cp 0deh			;a88a
	ld e,a			;a88c
	ld h,a			;a88d
	ld h,(hl)		;a88e
	ld b,b			;a88f
	inc bc			;a890
	nop			;a891
	or b			;a892
	ld (bc),a		;a893
	inc bc			;a894
	add hl,bc		;a895
	ld a,000h		;a896
	djnz la861h		;a898
	ld a,c			;a89a
	ld a,(bc)		;a89b
	ld (bc),a		;a89c
	inc b			;a89d
	djnz la8a0h		;a89e
la8a0h:
	nop			;a8a0
	ex af,af'		;a8a1
	ld d,b			;a8a2
	ld h,b			;a8a3
	and 073h		;a8a4
	add hl,hl		;a8a6
	adc a,b			;a8a7
	nop			;a8a8
	ld (hl),e		;a8a9
	xor 060h		;a8aa
	ld (hl),b		;a8ac
	ld c,b			;a8ad
	nop			;a8ae
	nop			;a8af
	ld l,c			;a8b0
	call po,07bfeh		;a8b1
	ld l,e			;a8b4
	rst 38h			;a8b5
	rst 28h			;a8b6
	jr z,$+125		;a8b7
	rst 38h			;a8b9
	ld a,a			;a8ba
	ld a,e			;a8bb
	jp m,066e6h		;a8bc
	ld (bc),a		;a8bf
	nop			;a8c0
	add a,h			;a8c1
	adc a,b			;a8c2
	inc bc			;a8c3
	sub b			;a8c4
	sbc a,b			;a8c5
	call m,0869ch		;a8c6
	rst 38h			;a8c9
	sbc a,a			;a8ca
	sbc a,(hl)		;a8cb
	add a,b			;a8cc
	ld b,b			;a8cd
	jr nc,la8d0h		;a8ce
la8d0h:
	nop			;a8d0
	djnz la8ddh		;a8d1
	ld b,067h		;a8d3
	adc a,094h		;a8d5
	ld de,0ce00h		;a8d7
	ld (hl),a		;a8da
	ld b,00eh		;a8db
la8ddh:
	ld (de),a		;a8dd
	dec b			;a8de
	nop			;a8df
	and a			;a8e0
	ld b,b			;a8e1
	ret nz			;a8e2
	sub b			;a8e3
	ld a,h			;a8e4
	nop			;a8e5
	ex af,af'		;a8e6
la8e7h:
	ex (sp),hl		;a8e7
	sbc a,(hl)		;a8e8
	ld d,b			;a8e9
	ld b,b			;a8ea
	jr nz,la8f5h		;a8eb
	nop			;a8ed
	ld (bc),a		;a8ee
	ld h,(hl)		;a8ef
	and 0fah		;a8f0
	ld a,e			;a8f2
	ld a,a			;a8f3
	rst 38h			;a8f4
la8f5h:
	ld a,e			;a8f5
	jr z,la8e7h		;a8f6
	rst 38h			;a8f8
	ld l,e			;a8f9
	ld a,e			;a8fa
	cp 0e4h			;a8fb
	ld l,c			;a8fd
	nop			;a8fe
	jr nc,la941h		;a8ff
	add a,b			;a901
	sbc a,(hl)		;a902
	sbc a,a			;a903
	rst 38h			;a904
	add a,(hl)		;a905
	sbc a,h			;a906
	call m,09003h		;a907
	add a,d			;a90a
	adc a,b			;a90b
	add a,h			;a90c
	inc bc			;a90d
	nop			;a90e
	sbc a,e			;a90f
	ld (de),a		;a910
	ld c,006h		;a911
	ld (hl),a		;a913
	adc a,000h		;a914
	ld de,0ce94h		;a916
	ld h,a			;a919
	ld b,00ah		;a91a
	djnz la91eh		;a91c
la91eh:
	nop			;a91e
	ex af,af'		;a91f
	jr nz,la962h		;a920
	ld d,b			;a922
	sbc a,(hl)		;a923
	ex (sp),hl		;a924
	ex af,af'		;a925
	nop			;a926
	ld a,h			;a927
	sub b			;a928
	ret nz			;a929
	ld b,b			;a92a
	inc bc			;a92b
	nop			;a92c
	nop			;a92d
	add a,l			;a92e
	nop			;a92f
	ld (0fd7dh),a		;a930
	cp 004h			;a933
	rst 38h			;a935
	ld (bc),a		;a936
	ld a,a			;a937
	or l			;a938
	ccf			;a939
	rra			;a93a
	rrca			;a93b
	rlca			;a93c
	inc bc			;a93d
	nop			;a93e
	ld c,b			;a93f
	or h			;a940
la941h:
	jp z,02de4h		;a941
	and 056h		;a944
	jp m,0fdfdh		;a946
	ei			;a949
	rst 38h			;a94a
	rst 38h			;a94b
	cp 0f8h			;a94c
	ld bc,0230dh		;a94e
	ld (hl),d		;a951
	ld (hl),c		;a952
	ret m			;a953
	push hl			;a954
	call p,059a6h		;a955
	ld (de),a		;a958
	dec de			;a959
	add hl,bc		;a95a
	inc bc			;a95b
	ld bc,0c000h		;a95c
	or b			;a95f
	ret z			;a960
	ld (hl),h		;a961
la962h:
	ld a,(01dd2h)		;a962
	xor c			;a965
	dec b			;a966
	sub d			;a967
	ld h,d			;a968
	push af			;a969
	pop bc			;a96a
	or d			;a96b
	call c,000b0h		;a96c
	sbc a,l			;a96f
	nop			;a970
	add a,c			;a971
	ld b,c			;a972
	ld (0170fh),hl		;a973
	inc bc			;a976
	inc c			;a977
	inc de			;a978
	ld a,(bc)		;a979
	ld c,02bh		;a97a
	inc bc			;a97c
	nop			;a97d
	ld bc,00000h		;a97e
	ld (bc),a		;a981
	ld b,04ch		;a982
	ld l,b			;a984
	ret p			;a985
	ld d,b			;a986
	ret p			;a987
	ld d,b			;a988
	ret po			;a989
	ret nc			;a98a
	ret m			;a98b
	add a,b			;a98c
	dec b			;a98d
	nop			;a98e
	sbc a,e			;a98f
	jr nz,$+87		;a990
	inc (hl)		;a992
	ld c,01ch		;a993
	dec de			;a995
	inc c			;a996
	rra			;a997
	dec d			;a998
	dec e			;a999
	ld (bc),a		;a99a
	ld bc,00100h		;a99b
	nop			;a99e
	nop			;a99f
	ld a,(bc)		;a9a0
	call nc,0e0d8h		;a9a1
	ret p			;a9a4
	ld (hl),b		;a9a5
	ret p			;a9a6
	ret p			;a9a7
	or b			;a9a8
	ld l,b			;a9a9
	add a,b			;a9aa
	inc bc			;a9ab
	nop			;a9ac
	nop			;a9ad
	add a,l			;a9ae
	ld sp,0317bh		;a9af
	ccf			;a9b2
	ld a,a			;a9b3
	inc bc			;a9b4
	rst 38h			;a9b5
	add a,d			;a9b6
	dec a			;a9b7
	jp 0db03h		;a9b8
	adc a,b			;a9bb
	jp 03f3fh		;a9bc
	adc a,h			;a9bf
	sbc a,08ch		;a9c0
	call m,003feh		;a9c2
	rst 38h			;a9c5
	add a,d			;a9c6
	cp h			;a9c7
	jp 0db03h		;a9c8
	add a,(hl)		;a9cb
	jp 0fcfch		;a9cc
	ccf			;a9cf
	ccf			;a9d0
	jp 0db03h		;a9d1
	add a,d			;a9d4
	jp 0033dh		;a9d5
	rst 38h			;a9d8
	adc a,b			;a9d9
	ld a,a			;a9da
	ccf			;a9db
	ld sp,0317bh		;a9dc
	call m,0c3fch		;a9df
	inc bc			;a9e2
	in a,(082h)		;a9e3
	jp 003bch		;a9e5
	rst 38h			;a9e8
	add a,l			;a9e9
	cp 0fch			;a9ea
	adc a,h			;a9ec
	sbc a,08ch		;a9ed
	nop			;a9ef
	dec b			;a9f0
	rst 38h			;a9f1
	adc a,(hl)		;a9f2
	rst 18h			;a9f3
	ld h,a			;a9f4
	inc de			;a9f5
	adc a,e			;a9f6
	ld b,c			;a9f7
	and c			;a9f8
	sub c			;a9f9
	sub b			;a9fa
	jr z,$+70		;a9fb
	and h			;a9fd
	nop			;a9fe
	add a,b			;a9ff
	add a,b			;aa00
	dec b			;aa01
	ret nz			;aa02
	inc b			;aa03
	ret po			;aa04
	inc b			;aa05
	ret p			;aa06
	add a,c			;aa07
	jr $+6			;aa08
	nop			;aa0a
	inc bc			;aa0b
	ld bc,00b02h		;aa0c
	add a,a			;aa0f
	ld (de),a		;aa10
	inc (hl)		;aa11
	ld h,l			;aa12
	ld c,c			;aa13
	jp 0f09fh		;aa14
	ld b,0f8h		;aa17
	inc bc			;aa19
	ret p			;aa1a
	ld (bc),a		;aa1b
	ret po			;aa1c
	ld (bc),a		;aa1d
	ret nz			;aa1e
	ld (bc),a		;aa1f
	add a,b			;aa20
	ld (bc),a		;aa21
	nop			;aa22
	add a,(hl)		;aa23
	ld hl,08443h		;aa24
	ex af,af'		;aa27
	ld bc,0040fh		;aa28
	rst 38h			;aa2b
	add a,h			;aa2c
	call m,0c0f0h		;aa2d
	nop			;aa30
	dec b			;aa31
	rst 38h			;aa32
	ld (bc),a		;aa33
	cp 084h			;aa34
	call m,080e0h		;aa36
	add a,b			;aa39
	ld b,000h		;aa3a
	add a,e			;aa3c
	ret nz			;aa3d
	ret p			;aa3e
	call m,0ff05h		;aa3f
laa42h:
	add a,a			;aa42
	rst 18h			;aa43
	ld h,a			;aa44
	inc de			;aa45
	adc a,e			;aa46
	ld b,c			;aa47
	and c			;aa48
	sub c			;aa49
	dec b			;aa4a
	nop			;aa4b
	ld (bc),a		;aa4c
	add a,b			;aa4d
	dec b			;aa4e
	ret nz			;aa4f
	inc b			;aa50
	ret po			;aa51
	add a,l			;aa52
	sub b			;aa53
	jr z,laa9ah		;aa54
	and h			;aa56
	jr $+6			;aa57
	nop			;aa59
	inc bc			;aa5a
	ld bc,00b02h		;aa5b
	add a,d			;aa5e
	ld (de),a		;aa5f
	inc (hl)		;aa60
	dec b			;aa61
	ret p			;aa62
	ld b,0f8h		;aa63
	inc bc			;aa65
	ret p			;aa66
	ld (bc),a		;aa67
	ret po			;aa68
	add a,h			;aa69
	ld h,l			;aa6a
	ld c,c			;aa6b
	jp 0059fh		;aa6c
	rst 38h			;aa6f
	ld (bc),a		;aa70
	cp 089h			;aa71
	call m,080e0h		;aa73
	add a,b			;aa76
	nop			;aa77
	ret nz			;aa78
	ret nz			;aa79
	add a,b			;aa7a
	add a,b			;aa7b
	inc c			;aa7c
	nop			;aa7d
	nop			;aa7e
laa7fh:
	ret nz			;aa7f
laa80h:
	inc bc			;aa80
	rlca			;aa81
	inc c			;aa82
laa83h:
	inc c			;aa83
	jr $+26			;aa84
	ret m			;aa86
	cp b			;aa87
	jr laa42h		;aa88
	ret m			;aa8a
	jr $+14			;aa8b
	inc c			;aa8d
	rlca			;aa8e
	inc bc			;aa8f
	ret nz			;aa90
	ret po			;aa91
	jr nc,laac4h		;aa92
	jr laaaeh		;aa94
	rra			;aa96
	dec e			;aa97
	jr laab7h		;aa98
laa9ah:
	rra			;aa9a
	jr laacdh		;aa9b
laa9dh:
	jr nc,laa7fh		;aa9d
	ret nz			;aa9f
	inc bc			;aaa0
	inc b			;aaa1
laaa2h:
	dec bc			;aaa2
	dec bc			;aaa3
	rla			;aaa4
	rla			;aaa5
	rst 30h			;aaa6
	ld d,a			;aaa7
	rst 30h			;aaa8
	ld d,a			;aaa9
	rst 30h			;aaaa
	rla			;aaab
	dec bc			;aaac
	dec bc			;aaad
laaaeh:
	inc b			;aaae
	inc bc			;aaaf
	ret nz			;aab0
	jr nz,laa83h		;aab1
	ret nc			;aab3
	ret pe			;aab4
	ret pe			;aab5
	rst 28h			;aab6
laab7h:
	jp pe,0eaefh		;aab7
	rst 28h			;aaba
	ret pe			;aabb
	ret nc			;aabc
	ret nc			;aabd
	jr nz,laa80h		;aabe
	nop			;aac0
	ret nz			;aac1
	inc bc			;aac2
	inc c			;aac3
laac4h:
	inc de			;aac4
	cpl			;aac5
	ld b,01fh		;aac6
	rra			;aac8
	ld b,0bfh		;aac9
	sbc a,a			;aacb
	ld b,e			;aacc
laacdh:
	ld b,b			;aacd
	jr nz,laae0h		;aace
	inc c			;aad0
	inc bc			;aad1
	ret nz			;aad2
	jr nc,laa9dh		;aad3
	call p,08000h		;aad5
	add a,b			;aad8
	nop			;aad9
	ld sp,iy		;aada
	jp nz,00402h		;aadc
	ex af,af'		;aadf
laae0h:
	jr nc,laaa2h		;aae0
	nop			;aae2
	inc bc			;aae3
	inc c			;aae4
	djnz lab60h		;aae5
	ld h,b			;aae7
	ret po			;aae8
	ld sp,hl		;aae9
	ld b,b			;aaea
	ld h,b			;aaeb
	inc a			;aaec
	ccf			;aaed
	rra			;aaee
	rrca			;aaef
	inc bc			;aaf0
	nop			;aaf1
	nop			;aaf2
	ret nz			;aaf3
	jr nc,$+10		;aaf4
	cp 07eh			;aaf6
	ld a,a			;aaf8
laaf9h:
	rst 38h			;aaf9
	ld (bc),a		;aafa
	ld b,03ch		;aafb
	call m,0f0f8h		;aafd
	ret nz			;ab00
	nop			;ab01
	nop			;ab02
	ld b,000h		;ab03
	ld (bc),a		;ab05
	rlca			;ab06
	ld c,000h		;ab07
	ld (bc),a		;ab09
	jr nz,lab14h		;ab0a
	nop			;ab0c
	ld b,000h		;ab0d
	ld (bc),a		;ab0f
	rlca			;ab10
	ld c,000h		;ab11
	ld (bc),a		;ab13
lab14h:
	jr nz,lab1eh		;ab14
	nop			;ab16
	nop			;ab17
	add a,l			;ab18
	rlca			;ab19
	jr lab3ch		;ab1a
	ld h,b			;ab1c
	ld b,b			;ab1d
lab1eh:
	inc b			;ab1e
	ret nz			;ab1f
	adc a,h			;ab20
	ret po			;ab21
	or b			;ab22
	ld a,h			;ab23
	ld e,a			;ab24
	daa			;ab25
	jr lab2fh		;ab26
	ret po			;ab28
	jr lab2fh		;ab29
	ld b,002h		;ab2b
	inc b			;ab2d
lab2eh:
	inc bc			;ab2e
lab2fh:
	add a,a			;ab2f
	rlca			;ab30
	dec c			;ab31
	ld a,0fah		;ab32
	call po,0e018h		;ab34
	inc bc			;ab37
	nop			;ab38
	ld (bc),a		;ab39
	inc c			;ab3a
	add a,d			;ab3b
lab3ch:
	nop			;ab3c
	ld (bc),a		;ab3d
	inc bc			;ab3e
	nop			;ab3f
	add a,l			;ab40
	ld b,b			;ab41
	nop			;ab42
	jr nz,$+26		;ab43
	rlca			;ab45
	dec bc			;ab46
	nop			;ab47
	adc a,b			;ab48
	ld (bc),a		;ab49
	nop			;ab4a
	inc b			;ab4b
	jr lab2eh		;ab4c
	nop			;ab4e
	rlca			;ab4f
	ex af,af'		;ab50
	inc bc			;ab51
	nop			;ab52
	inc bc			;ab53
	add a,b			;ab54
	inc bc			;ab55
	nop			;ab56
	ld (bc),a		;ab57
	ld b,b			;ab58
	adc a,b			;ab59
	jr nz,lab5ch		;ab5a
lab5ch:
	ld b,080h		;ab5c
	jr lab60h		;ab5e
lab60h:
	ld (bc),a		;ab60
	nop			;ab61
	inc bc			;ab62
	ld bc,00002h		;ab63
	add a,(hl)		;ab66
	ld bc,00200h		;ab67
	inc b			;ab6a
	ex af,af'		;ab6b
	ret po			;ab6c
	inc bc			;ab6d
	nop			;ab6e
	add a,d			;ab6f
	jr lab82h		;ab70
	ld b,000h		;ab72
	ld (bc),a		;ab74
	jr nz,laaf9h		;ab75
	djnz lab7fh		;ab77
	dec c			;ab79
	nop			;ab7a
	adc a,b			;ab7b
	inc b			;ab7c
	nop			;ab7d
	ret po			;ab7e
lab7fh:
	nop			;ab7f
	add a,b			;ab80
	nop			;ab81
lab82h:
	ex af,af'		;ab82
	ld b,b			;ab83
	inc b			;ab84
	nop			;ab85
	add a,c			;ab86
	add a,b			;ab87
lab88h:
	ld b,000h		;ab88
	add a,l			;ab8a
	add a,b			;ab8b
	ld bc,00000h		;ab8c
	ld bc,00006h		;ab8f
	add a,c			;ab92
	inc b			;ab93
	inc b			;ab94
	nop			;ab95
	add a,l			;ab96
	add hl,bc		;ab97
	add a,b			;ab98
	nop			;ab99
lab9ah:
	ex af,af'		;ab9a
	ld b,b			;ab9b
	inc b			;ab9c
	nop			;ab9d
	add a,c			;ab9e
	add a,b			;ab9f
	ld b,000h		;aba0
	add a,l			;aba2
	add a,b			;aba3
	ld bc,00000h		;aba4
	ld bc,00006h		;aba7
	add a,c			;abaa
	inc b			;abab
	inc b			;abac
	nop			;abad
	add a,c			;abae
	add hl,bc		;abaf
	nop			;abb0
	add a,e			;abb1
	nop			;abb2
	ex af,af'		;abb3
	rlca			;abb4
	ld c,000h		;abb5
	add a,d			;abb7
	djnz lab9ah		;abb8
	dec c			;abba
	nop			;abbb
	add a,h			;abbc
	ld b,b			;abbd
	inc h			;abbe
	ex af,af'		;abbf
	inc bc			;abc0
	inc c			;abc1
	nop			;abc2
	add a,h			;abc3
	ld (bc),a		;abc4
	inc h			;abc5
	djnz lab88h		;abc6
	inc c			;abc8
	nop			;abc9
labcah:
	add a,l			;abca
	inc e			;abcb
	rla			;abcc
	add hl,bc		;abcd
	inc b			;abce
	dec b			;abcf
	dec bc			;abd0
	nop			;abd1
	add a,(hl)		;abd2
	inc e			;abd3
	call p,010c8h		;abd4
	ld d,b			;abd7
	add a,b			;abd8
	ld a,(bc)		;abd9
	nop			;abda
	add a,a			;abdb
	jr nz,labe6h		;abdc
	ld b,003h		;abde
	ld (bc),a		;abe0
	inc bc			;abe1
	ld bc,00009h		;abe2
	add a,a			;abe5
labe6h:
	ld (bc),a		;abe6
	ex af,af'		;abe7
	jr nc,labcah		;abe8
	and b			;abea
	ld h,b			;abeb
	ret nz			;abec
	add hl,bc		;abed
	nop			;abee
	add a,l			;abef
	djnz lac09h		;abf0
	dec bc			;abf2
	dec b			;abf3
	dec b			;abf4
	inc bc			;abf5
	ld (bc),a		;abf6
	inc bc			;abf7
	ld bc,00005h		;abf8
	adc a,e			;abfb
	inc b			;abfc
	call p,0d0e8h		;abfd
	ret nc			;ac00
	and b			;ac01
	jr nz,$+34		;ac02
	ld b,b			;ac04
	ld b,b			;ac05
	ret nz			;ac06
	dec b			;ac07
	nop			;ac08
lac09h:
	add a,l			;ac09
	jr nz,lac14h		;ac0a
lac0ch:
	inc b			;ac0c
	ld (bc),a		;ac0d
	ld (bc),a		;ac0e
	inc bc			;ac0f
	ld bc,00008h		;ac10
	adc a,d			;ac13
lac14h:
	ld (bc),a		;ac14
	ex af,af'		;ac15
	djnz $+34		;ac16
	jr nz,$+66		;ac18
	ret nz			;ac1a
	ret nz			;ac1b
	add a,b			;ac1c
	add a,b			;ac1d
	rlca			;ac1e
	nop			;ac1f
lac20h:
	add a,h			;ac20
	inc c			;ac21
	inc bc			;ac22
	ld bc,00902h		;ac23
	ld bc,00003h		;ac26
	add a,(hl)		;ac29
	jr lac0ch		;ac2a
	ret nz			;ac2c
	and b			;ac2d
	ld b,b			;ac2e
	ret nz			;ac2f
	ld b,040h		;ac30
	adc a,b			;ac32
	ret nz			;ac33
	add a,b			;ac34
	nop			;ac35
	nop			;ac36
	djnz lac3dh		;ac37
	ld (bc),a		;ac39
	ld bc,0000ch		;ac3a
lac3dh:
	add a,(hl)		;ac3d
	inc b			;ac3e
	djnz lac61h		;ac3f
	ld b,b			;ac41
	add a,b			;ac42
	nop			;ac43
	ld b,080h		;ac44
	ld b,000h		;ac46
	dec c			;ac48
	ld bc,00088h		;ac49
	jr nz,lac4eh		;ac4c
lac4eh:
	ld b,b			;ac4e
	ret nz			;ac4f
	ret nz			;ac50
	ld b,b			;ac51
	ret nz			;ac52
	ld b,040h		;ac53
	ld (bc),a		;ac55
	ret nz			;ac56
	add a,e			;ac57
	nop			;ac58
	ld b,001h		;ac59
	ld c,000h		;ac5b
	add a,a			;ac5d
	djnz lac20h		;ac5e
	add a,b			;ac60
lac61h:
	nop			;ac61
	nop			;ac62
	add a,b			;ac63
	nop			;ac64
	ld b,080h		;ac65
	inc bc			;ac67
	nop			;ac68
	add a,c			;ac69
	ld bc,0000fh		;ac6a
	add a,d			;ac6d
	ret nz			;ac6e
	nop			;ac6f
	inc bc			;ac70
	add a,b			;ac71
	dec bc			;ac72
	nop			;ac73
	add a,d			;ac74
	ld b,001h		;ac75
	ld c,000h		;ac77
	add a,d			;ac79
	jr nc,$-62		;ac7a
	inc bc			;ac7c
	nop			;ac7d
	ld (bc),a		;ac7e
	add a,b			;ac7f
	add hl,bc		;ac80
	nop			;ac81
	rrca			;ac82
	ld bc,08082h		;ac83
	ret nz			;ac86
	ld c,040h		;ac87
	ld (de),a		;ac89
	nop			;ac8a
	ld c,080h		;ac8b
	rrca			;ac8d
	ld bc,00081h		;ac8e
	ld c,040h		;ac91
	add a,d			;ac93
	ret nz			;ac94
	add a,b			;ac95
	djnz lac98h		;ac96
lac98h:
	ld c,080h		;ac98
	ld (bc),a		;ac9a
	nop			;ac9b
	nop			;ac9c
	ex af,af'		;ac9d
	nop			;ac9e
	adc a,b			;ac9f
	inc c			;aca0
	inc bc			;aca1
	dec b			;aca2
	ld b,006h		;aca3
	inc bc			;aca5
	dec de			;aca6
	dec e			;aca7
	dec bc			;aca8
	nop			;aca9
	ld (bc),a		;acaa
	add a,b			;acab
	add a,d			;acac
	nop			;acad
	add a,b			;acae
	add hl,bc		;acaf
	nop			;acb0
	adc a,b			;acb1
	inc c			;acb2
	ld b,007h		;acb3
	inc bc			;acb5
	add hl,bc		;acb6
	dec c			;acb7
	ld c,037h		;acb8
	inc c			;acba
	nop			;acbb
	inc bc			;acbc
	add a,b			;acbd
	adc a,e			;acbe
	nop			;acbf
	add a,b			;acc0
	add a,b			;acc1
	ret nz			;acc2
	ld l,a			;acc3
	ld l,a			;acc4
	ld (hl),a		;acc5
	scf			;acc6
	dec de			;acc7
	rrca			;acc8
	inc bc			;acc9
	ld b,000h		;acca
	adc a,d			;accc
	inc de			;accd
	dec sp			;acce
	ld a,c			;accf
	inc a			;acd0
	cp a			;acd1
	sbc a,a			;acd2
	rst 8			;acd3
	and 0f8h		;acd4
	ret nz			;acd6
	add hl,bc		;acd7
	nop			;acd8
	add a,(hl)		;acd9
	dec sp			;acda
	add hl,sp		;acdb
	inc e			;acdc
	inc e			;acdd
	ld c,003h		;acde
	rlca			;ace0
	nop			;ace1
	adc a,c			;ace2
	inc e			;ace3
	ld c,0cfh		;ace4
	rst 20h			;ace6
	ex (sp),hl		;ace7
	ret p			;ace8
	ld a,h			;ace9
	inc a			;acea
	ex af,af'		;aceb
	dec c			;acec
	nop			;aced
	adc a,d			;acee
	ret p			;acef
	ld c,h			;acf0
	daa			;acf1
	inc de			;acf2
	dec e			;acf3
	ld e,00fh		;acf4
	rlca			;acf6
	ld sp,00b3ch		;acf7
	nop			;acfa
	dec b			;acfb
	add a,b			;acfc
	ld b,000h		;acfd
	adc a,d			;acff
	ld h,b			;ad00
	jr c,lad1fh		;ad01
	ld e,00eh		;ad03
	inc bc			;ad05
	add hl,de		;ad06
	ld e,01fh		;ad07
	rrca			;ad09
	dec c			;ad0a
	nop			;ad0b
	add a,e			;ad0c
	add a,b			;ad0d
	nop			;ad0e
	nop			;ad0f
	inc bc			;ad10
	add a,b			;ad11
	add a,(hl)		;ad12
	ld b,c			;ad13
	ld e,(hl)		;ad14
	cpl			;ad15
	rra			;ad16
	rrca			;ad17
	inc bc			;ad18
	rlca			;ad19
	nop			;ad1a
	adc a,c			;ad1b
	rla			;ad1c
	inc hl			;ad1d
	ld (hl),c		;ad1e
lad1fh:
	call m,08f7fh		;ad1f
	di			;ad22
	cp 0f0h			;ad23
	dec bc			;ad25
	nop			;ad26
	add a,h			;ad27
	ld sp,00e19h		;ad28
	inc bc			;ad2b
	ex af,af'		;ad2c
	nop			;ad2d
	adc a,b			;ad2e
	inc c			;ad2f
	ld e,03fh		;ad30
	ld c,a			;ad32
	di			;ad33
	call m,0887eh		;ad34
	ld (de),a		;ad37
	nop			;ad38
	add a,l			;ad39
	rra			;ad3a
	ld l,a			;ad3b
	inc c			;ad3c
	inc bc			;ad3d
	ld bc,0000bh		;ad3e
	add a,(hl)		;ad41
	ret nz			;ad42
	ret m			;ad43
	ld e,0e2h		;ad44
	defb 0fdh,03fh,00ah ;illegal sequence	;ad46
	nop			;ad49
	add a,(hl)		;ad4a
	rlca			;ad4b
	jr lad51h		;ad4c
	ld bc,00100h		;ad4e
lad51h:
	inc c			;ad51
	nop			;ad52
	add a,h			;ad53
	ret m			;ad54
	call m,0c31eh		;ad55
	rlca			;ad58
	nop			;ad59
	ld (bc),a		;ad5a
	ld bc,00384h		;ad5b
	adc a,a			;ad5e
	ld a,a			;ad5f
	rra			;ad60
	inc bc			;ad61
	nop			;ad62
	adc a,l			;ad63
	rst 0			;ad64
	ld sp,hl		;ad65
	ld a,a			;ad66
	ld a,a			;ad67
	ld bc,0fdffh		;ad68
	ex (sp),hl		;ad6b
	ld e,0feh		;ad6c
	ret m			;ad6e
	ret p			;ad6f
	add a,b			;ad70
	dec bc			;ad71
	nop			;ad72
	add a,h			;ad73
	ld bc,00003h		;ad74
	rra			;ad77
	inc b			;ad78
	nop			;ad79
	adc a,h			;ad7a
	call m,0073eh		;ad7b
	ld a,b			;ad7e
	ld a,a			;ad7f
	ret p			;ad80
	inc bc			;ad81
	cp 0f8h			;ad82
	ret nz			;ad84
	jr c,$-62		;ad85
	ld c,000h		;ad87
	add a,(hl)		;ad89
	rrca			;ad8a
	ld sp,0fe47h		;ad8b
	dec c			;ad8e
	inc bc			;ad8f
	ld a,(bc)		;ad90
	nop			;ad91
	add a,(hl)		;ad92
	ret po			;ad93
	call m,07c83h		;ad94
	rst 38h			;ad97
	ex (sp),hl		;ad98
	ld a,(bc)		;ad99
	nop			;ad9a
	add a,(hl)		;ad9b
	ld b,01fh		;ad9c
	ld a,009h		;ad9e
	inc bc			;ada0
	ld (bc),a		;ada1
	dec bc			;ada2
	nop			;ada3
	add a,(hl)		;ada4
	add a,b			;ada5
	ld a,h			;ada6
	rst 38h			;ada7
	add a,e			;ada8
	inc e			;ada9
	ld bc,0000bh		;adaa
	add a,c			;adad
	ld bc,00003h		;adae
	adc a,h			;adb1
	dec e			;adb2
	cp 0ffh			;adb3
	ld a,b			;adb5
	ld b,a			;adb6
	ccf			;adb7
	ld a,039h		;adb8
	rlca			;adba
	ld a,a			;adbb
	ld h,b			;adbc
	ret m			;adbd
	inc d			;adbe
	nop			;adbf
	adc a,h			;adc0
	cp 0e3h			;adc1
	ld bc,07f3fh		;adc3
	jr c,ladcfh		;adc6
	ccf			;adc8
	ld a,078h		;adc9
	nop			;adcb
	ld h,b			;adcc
	rrca			;adcd
	nop			;adce
ladcfh:
	add a,h			;adcf
	ld l,a			;add0
	inc c			;add1
	inc bc			;add2
	ld bc,0000ch		;add3
	add a,l			;add6
	ret m			;add7
	ld e,0e2h		;add8
	defb 0fdh,03fh,00bh ;illegal sequence	;adda
	nop			;addd
	add a,l			;adde
	jr lade4h		;addf
	ld bc,00100h		;ade1
lade4h:
	inc c			;ade4
	nop			;ade5
	add a,h			;ade6
	ret m			;ade7
	call m,0c31eh		;ade8
	nop			;adeb
	ld b,000h		;adec
	add a,a			;adee
	ld bc,00102h		;adef
	nop			;adf2
	inc b			;adf3
	ld a,(bc)		;adf4
	inc b			;adf5
	ld a,(bc)		;adf6
	nop			;adf7
	add a,c			;adf8
	add a,b			;adf9
	rrca			;adfa
	nop			;adfb
	add a,c			;adfc
	ld bc,00003h		;adfd
	add a,c			;ae00
	inc b			;ae01
	jr lae04h		;ae02
lae04h:
	adc a,c			;ae04
	ex af,af'		;ae05
	inc d			;ae06
	ex af,af'		;ae07
	ld (bc),a		;ae08
	dec b			;ae09
	ld (bc),a		;ae0a
	djnz lae35h		;ae0b
	djnz lae15h		;ae0d
	nop			;ae0f
	add a,e			;ae10
	djnz lae3bh		;ae11
	djnz $+5		;ae13
lae15h:
	nop			;ae15
	add a,e			;ae16
	jr nz,$+82		;ae17
	jr nz,$+11		;ae19
	nop			;ae1b
	add a,a			;ae1c
	ex af,af'		;ae1d
	nop			;ae1e
	nop			;ae1f
	ld (bc),a		;ae20
	nop			;ae21
	nop			;ae22
	djnz lae2dh		;ae23
	nop			;ae25
	add a,c			;ae26
	djnz lae2eh		;ae27
	nop			;ae29
	add a,c			;ae2a
	jr nz,lae34h		;ae2b
lae2dh:
	nop			;ae2d
lae2eh:
	adc a,l			;ae2e
lae2fh:
	djnz lae59h		;ae2f
	ld de,00102h		;ae31
lae34h:
	ld b,b			;ae34
lae35h:
	and b			;ae35
	ld b,h			;ae36
	ld a,(bc)		;ae37
	inc b			;ae38
	jr nz,lae8bh		;ae39
lae3bh:
	jr nz,lae41h		;ae3b
	nop			;ae3d
	add a,e			;ae3e
	ex af,af'		;ae3f
	inc d			;ae40
lae41h:
	adc a,b			;ae41
	dec b			;ae42
	nop			;ae43
	add a,e			;ae44
	djnz lae6fh		;ae45
	djnz $+7		;ae47
	nop			;ae49
	adc a,e			;ae4a
	djnz lae4dh		;ae4b
lae4dh:
	ld bc,00000h		;ae4d
	ld b,b			;ae50
	nop			;ae51
	inc b			;ae52
	nop			;ae53
	nop			;ae54
	jr nz,lae5dh		;ae55
	nop			;ae57
	add a,c			;ae58
lae59h:
	ex af,af'		;ae59
	rlca			;ae5a
	nop			;ae5b
	add a,c			;ae5c
lae5dh:
	djnz lae62h		;ae5d
	nop			;ae5f
	nop			;ae60
	rst 38h			;ae61
lae62h:
	nop			;ae62
	ld bc,00303h		;ae63
	ld (bc),a		;ae66
	add hl,bc		;ae67
	ld b,001h		;ae68
	nop			;ae6a
	inc bc			;ae6b
	dec b			;ae6c
	rlca			;ae6d
	add hl,bc		;ae6e
lae6fh:
	ld (de),a		;ae6f
	ld (bc),a		;ae70
	ex af,af'		;ae71
	add a,b			;ae72
	ret nz			;ae73
	ret po			;ae74
	ret po			;ae75
	and b			;ae76
	ld c,b			;ae77
	or b			;ae78
	ret nz			;ae79
	nop			;ae7a
lae7bh:
	ld h,b			;ae7b
	ret nc			;ae7c
	ret p			;ae7d
	ld c,b			;ae7e
	and h			;ae7f
	jr nz,lae8ah		;ae80
	inc bc			;ae82
	ld b,00ch		;ae83
	inc c			;ae85
	dec c			;ae86
	rrca			;ae87
	rlca			;ae88
	ld (bc),a		;ae89
lae8ah:
	inc bc			;ae8a
lae8bh:
	ld bc,00203h		;ae8b
	inc b			;ae8e
	add hl,bc		;ae8f
	ld bc,0e004h		;ae90
	or b			;ae93
	sbc a,b			;ae94
	sbc a,b			;ae95
	ret c			;ae96
	ret m			;ae97
	ld (hl),b		;ae98
	jr nz,lae7bh		;ae99
	ret nz			;ae9b
	ld h,b			;ae9c
	jr nz,lae2fh		;ae9d
	ret z			;ae9f
	ld b,b			;aea0
	djnz laea3h		;aea1
laea3h:
	ld bc,00303h		;aea3
	ld (bc),a		;aea6
	add hl,bc		;aea7
	ld b,001h		;aea8
	nop			;aeaa
	rlca			;aeab
	ex af,af'		;aeac
	ld de,00212h		;aead
	ld (bc),a		;aeb0
	ld bc,0c080h		;aeb1
	ret po			;aeb4
	ret po			;aeb5
	and b			;aeb6
	ld c,b			;aeb7
	or b			;aeb8
	ret nz			;aeb9
	nop			;aeba
laebbh:
	ld (hl),b		;aebb
	adc a,b			;aebc
	ld b,h			;aebd
	inc h			;aebe
	jr nz,laee1h		;aebf
	ld b,b			;aec1
	inc bc			;aec2
	ld b,00ch		;aec3
	inc c			;aec5
	dec c			;aec6
	rrca			;aec7
	rlca			;aec8
	ld (bc),a		;aec9
	inc bc			;aeca
	ld bc,00205h		;aecb
	inc b			;aece
	inc b			;aecf
laed0h:
	nop			;aed0
	nop			;aed1
	ret po			;aed2
	or b			;aed3
	sbc a,b			;aed4
	sbc a,b			;aed5
laed6h:
	ret c			;aed6
	ret m			;aed7
	ld (hl),b		;aed8
	jr nz,laebbh		;aed9
	ret nz			;aedb
laedch:
	ld d,b			;aedc
	jr nz,laeefh		;aedd
	djnz laee1h		;aedf
laee1h:
	add a,c			;aee1
	nop			;aee2
	nop			;aee3
	inc b			;aee4
	rst 38h			;aee5
	add a,h			;aee6
	ret m			;aee7
	ret po			;aee8
	ret nz			;aee9
	add a,b			;aeea
	inc b			;aeeb
	rst 38h			;aeec
	add a,c			;aeed
	rlca			;aeee
laeefh:
	inc bc			;aeef
	nop			;aef0
	ld b,0ffh		;aef1
	add a,h			;aef3
	ccf			;aef4
	rra			;aef5
	rst 38h			;aef6
	rst 38h			;aef7
	dec b			;aef8
	cp 086h			;aef9
	rst 38h			;aefb
	rrca			;aefc
	rlca			;aefd
	inc bc			;aefe
	ld bc,00301h		;aeff
	add a,b			;af02
	inc bc			;af03
	nop			;af04
	dec b			;af05
	dec bc			;af06
	ld (bc),a		;af07
	add a,b			;af08
	ld (bc),a		;af09
	ret nz			;af0a
	ld (bc),a		;af0b
	ret po			;af0c
	ld (bc),a		;af0d
	ret p			;af0e
	ld (bc),a		;af0f
	dec bc			;af10
	ld (bc),a		;af11
	nop			;af12
	inc b			;af13
	dec bc			;af14
	ld (bc),a		;af15
	ret m			;af16
	ld (bc),a		;af17
	call m,0fe02h		;af18
	add a,d			;af1b
	rst 38h			;af1c
	add a,b			;af1d
	inc bc			;af1e
	dec bc			;af1f
	dec b			;af20
	nop			;af21
	inc bc			;af22
	add a,b			;af23
	ld b,0c0h		;af24
	inc bc			;af26
	ret po			;af27
	inc bc			;af28
	ret p			;af29
	add a,c			;af2a
	ret m			;af2b
	ex af,af'		;af2c
	inc bc			;af2d
	ld (bc),a		;af2e
	nop			;af2f
	add a,(hl)		;af30
	add a,b			;af31
	ret po			;af32
	ret m			;af33
	cp 080h			;af34
	ret po			;af36
	ld b,000h		;af37
	add a,d			;af39
	ret nz			;af3a
laf3bh:
	ret p			;af3b
	nop			;af3c
	dec h			;af3d
	ld bc,02183h		;af3e
	ld b,c			;af41
	rra			;af42
	inc b			;af43
	djnz $-120		;af44
	jr nz,laf78h		;af46
	ld b,b			;af48
	jr nc,laf3bh		;af49
	jr nc,laf53h		;af4b
	djnz laed0h		;af4d
	jr nz,laf55h		;af4f
	djnz laed6h		;af51
laf53h:
	jr nz,laf85h		;af53
laf55h:
	ld b,b			;af55
	rlca			;af56
	djnz laedch		;af57
laf59h:
	ld hl,02030h		;af59
	dec bc			;af5c
	djnz $-125		;af5d
	jr nz,$+5		;af5f
	ret p			;af61
	adc a,b			;af62
	djnz laf55h		;af63
	jr nz,laf77h		;af65
	djnz laf59h		;af67
	ret p			;af69
	jr nz,$+7		;af6a
	djnz laf72h		;af6c
	ret p			;af6e
	inc b			;af6f
	djnz $+4		;af70
laf72h:
	ld hl,01008h		;af72
	nop			;af75
	add a,e			;af76
laf77h:
	rlca			;af77
laf78h:
	rra			;af78
	rra			;af79
	inc bc			;af7a
	ccf			;af7b
	ld (bc),a		;af7c
	ld a,a			;af7d
	add a,e			;af7e
	ret p			;af7f
	call m,003feh		;af80
	rst 38h			;af83
	add a,l			;af84
laf85h:
	call m,000ffh		;af85
	ld a,h			;af88
	ld a,h			;af89
	dec b			;af8a
	ld b,e			;af8b
	add a,c			;af8c
	rst 38h			;af8d
	rlca			;af8e
	ret nz			;af8f
	adc a,h			;af90
	rst 38h			;af91
	ret nz			;af92
	ret nz			;af93
	ret po			;af94
	ret po			;af95
	ret p			;af96
	ret p			;af97
	ret m			;af98
	cp h			;af99
	cp h			;af9a
	ld a,h			;af9b
	ld a,h			;af9c
	inc b			;af9d
	ld b,e			;af9e
	ld b,0c0h		;af9f
	add a,a			;afa1
	call c,0f8c0h		;afa2
	call m,0fefch		;afa5
	cp 003h			;afa8
	rst 38h			;afaa
	inc bc			;afab
	cp h			;afac
	ld (bc),a		;afad
	ld a,h			;afae
	ld (bc),a		;afaf
	call m,00084h		;afb0
	call c,0dcc0h		;afb3
	inc bc			;afb6
	ret nz			;afb7
	add a,c			;afb8
	add a,b			;afb9
	ld b,0ffh		;afba
	add a,(hl)		;afbc
	ld b,d			;afbd
	rst 38h			;afbe
	nop			;afbf
	add a,b			;afc0
	ret nz			;afc1
	ret nz			;afc2
	inc b			;afc3
	ret po			;afc4
	add a,c			;afc5
	nop			;afc6
	rlca			;afc7
	rra			;afc8
	add a,d			;afc9
	nop			;afca
	ld d,b			;afcb
	dec b			;afcc
	ret nc			;afcd
	ld (bc),a		;afce
	ld d,b			;afcf
	rlca			;afd0
	rla			;afd1
	add a,c			;afd2
	rst 38h			;afd3
	rlca			;afd4
	rrca			;afd5
	add a,d			;afd6
	rst 38h			;afd7
	rra			;afd8
	ld b,017h		;afd9
	add a,d			;afdb
	rst 38h			;afdc
	nop			;afdd
	ld b,0fch		;afde
	add a,c			;afe0
	rst 38h			;afe1
	ex af,af'		;afe2
	sub b			;afe3
	add a,l			;afe4
	call m,0e080h		;afe5
	ret m			;afe8
	cp 003h			;afe9
	rst 38h			;afeb
	adc a,b			;afec
	ret m			;afed
	cp 0c0h			;afee
	ret p			;aff0
	ret m			;aff1
	cp 0c0h			;aff2
	ret po			;aff4
	nop			;aff5
	ld b,021h		;aff6
	add a,d			;aff8
	ld (0061fh),a		;aff9
	ld hl,04381h		;affc
	inc bc			;afff
	rra			;b000
	adc a,b			;b001
	ld sp,012f1h		;b002
	inc hl			;b005
	inc (hl)		;b006
	inc hl			;b007
	di			;b008
	di			;b009
	rlca			;b00a
	jp p,03281h		;b00b
	rlca			;b00e
	ld hl,01f87h		;b00f
	ld sp,0f131h		;b012
	ld (de),a		;b015
	inc hl			;b016
	inc (hl)		;b017
	ex af,af'		;b018
	jp p,02108h		;b019
	adc a,b			;b01c
	ld (01f21h),a		;b01d
	ld sp,04131h		;b020
	rra			;b023
	rra			;b024
	dec b			;b025
	jp p,0f483h		;b026
	pop af			;b029
	pop af			;b02a
	dec b			;b02b
	ld (04383h),hl		;b02c
	rra			;b02f
	rra			;b030
	dec b			;b031
	ld hl,04381h		;b032
	inc bc			;b035
	rra			;b036
	and b			;b037
	ld hl,032ffh		;b038
	ld hl,01f21h		;b03b
	rra			;b03e
	ld hl,0ff32h		;b03f
	ld b,e			;b042
	ld (02132h),a		;b043
	rst 38h			;b046
	ld hl,0ff32h		;b047
	ld b,e			;b04a
	ld (02132h),a		;b04b
	pop af			;b04e
	pop af			;b04f
	ld (de),a		;b050
	rst 38h			;b051
	inc hl			;b052
lb053h:
	ld (de),a		;b053
	ld (de),a		;b054
	pop af			;b055
	pop af			;b056
	ld b,e			;b057
sub_b058h:
	dec b			;b058
	ld (02183h),a		;b059
	call p,005f4h		;b05c
	ld (02183h),a		;b05f
	call p,007f4h		;b062
	di			;b065
	ex af,af'		;b066
	ld (02082h),a		;b067
	djnz lb070h		;b06a
	ld hl,03202h		;b06c
	nop			;b06f
lb070h:
	ld (bc),a		;b070
	inc bc			;b071
	ld (bc),a		;b072
	ld bc,00006h		;b073
	add a,(hl)		;b076
	ret m			;b077
	rst 38h			;b078
	inc a			;b079
	jr nc,lb0bbh		;b07a
	ccf			;b07c
	inc bc			;b07d
	nop			;b07e
	add a,l			;b07f
	ret po			;b080
	rst 38h			;b081
	ret p			;b082
	add a,b			;b083
	ret m			;b084
	dec b			;b085
	nop			;b086
	add a,e			;b087
	ret p			;b088
	add a,b			;b089
	ret m			;b08a
	rlca			;b08b
	nop			;b08c
	adc a,c			;b08d
	ret po			;b08e
	nop			;b08f
	nop			;b090
	ret po			;b091
	ret m			;b092
	ret nz			;b093
	ret po			;b094
	ret p			;b095
	ret p			;b096
	dec b			;b097
	nop			;b098
	add a,e			;b099
	add a,b			;b09a
	ret po			;b09b
	ret m			;b09c
	inc b			;b09d
	nop			;b09e
	sub h			;b09f
	add a,b			;b0a0
	ret po			;b0a1
	ret m			;b0a2
	cp 000h			;b0a3
	ret nz			;b0a5
	ret po			;b0a6
	ret p			;b0a7
	ret m			;b0a8
	call m,080feh		;b0a9
	add a,b			;b0ac
	ret nz			;b0ad
	ret po			;b0ae
	ret p			;b0af
	ret m			;b0b0
	call m,0fefch		;b0b1
	inc bc			;b0b4
	nop			;b0b5
	inc bc			;b0b6
	add a,b			;b0b7
	ld (bc),a		;b0b8
	ret nz			;b0b9
	adc a,b			;b0ba
lb0bbh:
	rst 38h			;b0bb
	ret nz			;b0bc
	ret nz			;b0bd
	ld a,a			;b0be
	ccf			;b0bf
	rra			;b0c0
	rrca			;b0c1
	rlca			;b0c2
	ld b,0c0h		;b0c3
	add a,d			;b0c5
	add a,b			;b0c6
	nop			;b0c7
	nop			;b0c8
	add a,e			;b0c9
	jr nz,$+18		;b0ca
	djnz lb0d5h		;b0cc
	ret p			;b0ce
	ld (bc),a		;b0cf
	djnz lb053h		;b0d0
	ld hl,03203h		;b0d2
lb0d5h:
	dec b			;b0d5
	djnz $-123		;b0d6
	ld hl,03232h		;b0d8
	ld b,010h		;b0db
	ld (bc),a		;b0dd
lb0deh:
	ld hl,0100ch		;b0de
	inc b			;b0e1
	ld hl,01017h		;b0e2
	add a,c			;b0e5
	ld hl,01007h		;b0e6
	inc b			;b0e9
	ret p			;b0ea
	adc a,d			;b0eb
	djnz lb0deh		;b0ec
	jr nz,lb100h		;b0ee
lb0f0h:
	djnz $-12		;b0f0
	jp p,010f1h		;b0f2
	djnz $+5		;b0f5
	ret p			;b0f7
	adc a,b			;b0f8
	jr nz,lb12bh		;b0f9
	ld b,b			;b0fb
	jr nc,lb11eh		;b0fc
	djnz lb0f0h		;b0fe
lb100h:
	ret p			;b100
	nop			;b101
	inc b			;b102
	nop			;b103
	ld (bc),a		;b104
	rst 38h			;b105
	ld (bc),a		;b106
	nop			;b107
	inc b			;b108
	rst 38h			;b109
	ld (bc),a		;b10a
	nop			;b10b
	add a,c			;b10c
	rst 38h			;b10d
lb10eh:
	dec b			;b10e
	nop			;b10f
	inc bc			;b110
	rst 38h			;b111
	dec b			;b112
	nop			;b113
	ld (bc),a		;b114
	rst 38h			;b115
	add a,c			;b116
	nop			;b117
lb118h:
	dec b			;b118
	rst 38h			;b119
	ld (bc),a		;b11a
	nop			;b11b
	ld (bc),a		;b11c
	rst 38h			;b11d
lb11eh:
	nop			;b11e
	dec b			;b11f
	ret p			;b120
	ld (bc),a		;b121
	ld hl,00f06h		;b122
	inc bc			;b125
	ld hl,0f005h		;b126
	inc bc			;b129
	ld (de),a		;b12a
lb12bh:
	dec b			;b12b
	ret p			;b12c
	inc bc			;b12d
	rra			;b12e
	dec b			;b12f
	rrca			;b130
	ld (bc),a		;b131
	jp p,01081h		;b132
	nop			;b135
	inc b			;b136
	nop			;b137
	add a,a			;b138
	ld bc,00703h		;b139
	rrca			;b13c
	rlca			;b13d
	rra			;b13e
	ld a,a			;b13f
	dec b			;b140
	add a,c			;b141
	add a,(hl)		;b142
	ld bc,00703h		;b143
	rrca			;b146
	rra			;b147
	ccf			;b148
	dec b			;b149
	ld a,a			;b14a
	add a,c			;b14b
	rst 38h			;b14c
	ex af,af'		;b14d
	nop			;b14e
	add a,e			;b14f
	rlca			;b150
	rra			;b151
	ld a,a			;b152
	inc b			;b153
	add a,c			;b154
	dec b			;b155
	rst 38h			;b156
	add a,d			;b157
	ret po			;b158
	ret nz			;b159
	dec b			;b15a
	ld a,a			;b15b
	add a,c			;b15c
	rst 38h			;b15d
	inc bc			;b15e
	nop			;b15f
	ld (bc),a		;b160
	inc bc			;b161
	ld (bc),a		;b162
	inc c			;b163
	adc a,e			;b164
	inc a			;b165
	ld a,(hl)		;b166
	ld a,(hl)		;b167
	rrca			;b168
	rrca			;b169
	nop			;b16a
	ex (sp),hl		;b16b
	pop bc			;b16c
	pop bc			;b16d
	inc bc			;b16e
	inc bc			;b16f
	ld b,007h		;b170
	rlca			;b172
	nop			;b173
	add a,c			;b174
	ld bc,00600h		;b175
	djnz lb17ch		;b178
	jr nz,lb17fh		;b17a
lb17ch:
	djnz lb10eh		;b17c
	pop af			;b17e
lb17fh:
	jp p,0f3f2h		;b17f
	di			;b182
	djnz $+18		;b183
	jr nz,lb1a7h		;b185
	jr nc,lb1b9h		;b187
	ld b,b			;b189
	ld b,e			;b18a
	call po,02143h		;b18b
	add hl,bc		;b18e
	ret p			;b18f
	inc bc			;b190
	djnz lb118h		;b191
	pop af			;b193
	call p,0f1f3h		;b194
	pop af			;b197
	ld b,003h		;b198
	add a,l			;b19a
	ld b,b			;b19b
	ld b,e			;b19c
	call po,02143h		;b19d
	inc b			;b1a0
	ret p			;b1a1
	add a,h			;b1a2
	ret nz			;b1a3
	or b			;b1a4
	ret nz			;b1a5
	or b			;b1a6
lb1a7h:
	inc bc			;b1a7
	ld h,b			;b1a8
	add a,e			;b1a9
	or (hl)			;b1aa
	add a,0c6h		;b1ab
	inc bc			;b1ad
	ld h,l			;b1ae
	djnz lb211h		;b1af
	nop			;b1b1
	dec b			;b1b2
	rla			;b1b3
	inc b			;b1b4
	ret nz			;b1b5
	inc b			;b1b6
	cp 003h			;b1b7
lb1b9h:
	call m,09008h		;b1b9
	dec b			;b1bc
	rst 38h			;b1bd
	ld (bc),a		;b1be
	nop			;b1bf
	and d			;b1c0
	rst 38h			;b1c1
	ret po			;b1c2
	pop hl			;b1c3
	jp 0f88eh		;b1c4
	ret po			;b1c7
	inc bc			;b1c8
	rra			;b1c9
	rra			;b1ca
	ccf			;b1cb
	add a,b			;b1cc
	inc bc			;b1cd
	rrca			;b1ce
	ld a,(hl)		;b1cf
	ret p			;b1d0
	add a,b			;b1d1
	ret p			;b1d2
	ccf			;b1d3
	rst 38h			;b1d4
	ret m			;b1d5
	ret nz			;b1d6
	inc bc			;b1d7
	rra			;b1d8
lb1d9h:
	rlca			;b1d9
	rlca			;b1da
	ex (sp),hl		;b1db
	inc bc			;b1dc
	inc b			;b1dd
	ld a,h			;b1de
	inc b			;b1df
	ld a,h			;b1e0
	inc c			;b1e1
	inc c			;b1e2
	inc bc			;b1e3
	add a,b			;b1e4
	add a,d			;b1e5
	rst 38h			;b1e6
	nop			;b1e7
	inc bc			;b1e8
	add a,b			;b1e9
	dec b			;b1ea
	ld b,082h		;b1eb
	rst 38h			;b1ed
	cp 003h			;b1ee
	sub b			;b1f0
	sub c			;b1f1
	sub e			;b1f2
	sbc a,a			;b1f3
	ret m			;b1f4
	ret nz			;b1f5
	ld b,001h		;b1f6
	rrca			;b1f8
	ld a,a			;b1f9
	call m,0f0f8h		;b1fa
	ret po			;b1fd
	ret po			;b1fe
	call m,007e0h		;b1ff
	rra			;b202
	inc bc			;b203
	ccf			;b204
	sub c			;b205
	nop			;b206
	rrca			;b207
	ld bc,03f0fh		;b208
	ld bc,00000h		;b20b
	rst 38h			;b20e
	ccf			;b20f
	rlca			;b210
lb211h:
	ccf			;b211
	rst 38h			;b212
	rst 38h			;b213
	nop			;b214
	nop			;b215
	rst 38h			;b216
	ex af,af'		;b217
	call m,0ff85h		;b218
	add a,b			;b21b
	add a,b			;b21c
	rst 38h			;b21d
	nop			;b21e
	inc bc			;b21f
	add a,b			;b220
	inc b			;b221
	ccf			;b222
	add a,(hl)		;b223
	rra			;b224
	ccf			;b225
	ccf			;b226
	add a,b			;b227
	add a,b			;b228
	call m,0ff03h		;b229
	ld (bc),a		;b22c
	nop			;b22d
	sub c			;b22e
	rst 38h			;b22f
	add a,b			;b230
	ret m			;b231
	ret nz			;b232
	ret m			;b233
	cp 000h			;b234
	rrca			;b236
	rrca			;b237
	call m,0fce0h		;b238
	ret po			;b23b
	ret m			;b23c
	call m,000fch		;b23d
	ex af,af'		;b240
	ld a,a			;b241
	adc a,h			;b242
	rst 38h			;b243
	nop			;b244
	nop			;b245
	ld bc,00703h		;b246
	rrca			;b249
	rra			;b24a
	call pe,sub_b058h	;b24b
	or b			;b24e
	inc b			;b24f
	jr nc,lb1d9h		;b250
	ld e,07eh		;b252
	rlca			;b254
	rrca			;b255
	rra			;b256
	rra			;b257
	rrca			;b258
	inc bc			;b259
	rlca			;b25a
	add a,l			;b25b
	ld e,a			;b25c
	nop			;b25d
	nop			;b25e
	ld a,h			;b25f
	nop			;b260
	inc bc			;b261
	ret m			;b262
	add a,l			;b263
	ret nc			;b264
	ret p			;b265
	add a,b			;b266
	ret p			;b267
	cp 005h			;b268
	ret p			;b26a
	add a,h			;b26b
	ret m			;b26c
	ret nz			;b26d
	ld bc,0030fh		;b26e
	rst 38h			;b271
	add a,l			;b272
	inc bc			;b273
	rrca			;b274
	ccf			;b275
	call m,005c0h		;b276
	rst 38h			;b279
	add a,e			;b27a
	ret nz			;b27b
	nop			;b27c
	rrca			;b27d
	inc bc			;b27e
	rst 38h			;b27f
	add a,h			;b280
	ret po			;b281
	nop			;b282
	inc bc			;b283
	ld a,a			;b284
	inc b			;b285
	rst 38h			;b286
	inc b			;b287
	nop			;b288
	inc bc			;b289
	rst 38h			;b28a
	inc b			;b28b
	nop			;b28c
	add a,h			;b28d
	rlca			;b28e
	ret po			;b28f
	rst 38h			;b290
	rst 38h			;b291
	ld b,0dbh		;b292
	adc a,b			;b294
	ret p			;b295
	rst 38h			;b296
	rrca			;b297
	ret po			;b298
	ret po			;b299
	rst 38h			;b29a
	rra			;b29b
	rlca			;b29c
	inc bc			;b29d
	nop			;b29e
	ld (bc),a		;b29f
	rst 38h			;b2a0
	ld (bc),a		;b2a1
	nop			;b2a2
	add a,0c0h		;b2a3
	rst 38h			;b2a5
	nop			;b2a6
	nop			;b2a7
	rst 38h			;b2a8
	call m,0fcc0h		;b2a9
	rst 38h			;b2ac
	call m,0ffffh		;b2ad
	nop			;b2b0
	nop			;b2b1
	ret po			;b2b2
	call m,03880h		;b2b3
	jr $+30			;b2b6
	adc a,(hl)		;b2b8
	add a,a			;b2b9
	jp 0f8e0h		;b2ba
	ld a,a			;b2bd
	rrca			;b2be
	nop			;b2bf
	nop			;b2c0
	add a,b			;b2c1
	rst 38h			;b2c2
	rst 38h			;b2c3
	rra			;b2c4
	rst 38h			;b2c5
	ret m			;b2c6
	nop			;b2c7
	inc bc			;b2c8
	ccf			;b2c9
	rst 38h			;b2ca
	call m,000e0h		;b2cb
	inc bc			;b2ce
	ccf			;b2cf
	call m,080e0h		;b2d0
	ld bc,07e07h		;b2d3
	ret p			;b2d6
	add a,b			;b2d7
	ld bc,07f0fh		;b2d8
	inc bc			;b2db
	rrca			;b2dc
	nop			;b2dd
	rlca			;b2de
	ccf			;b2df
	inc bc			;b2e0
	rra			;b2e1
	inc bc			;b2e2
	rra			;b2e3
	ld a,a			;b2e4
	nop			;b2e5
	rlca			;b2e6
	ld a,a			;b2e7
	ld bc,0033fh		;b2e8
	rst 38h			;b2eb
	add a,a			;b2ec
	rra			;b2ed
	rst 38h			;b2ee
	inc bc			;b2ef
	rst 38h			;b2f0
	nop			;b2f1
	add a,b			;b2f2
	ld a,(hl)		;b2f3
	inc bc			;b2f4
	nop			;b2f5
	dec b			;b2f6
	cp 082h			;b2f7
	rst 38h			;b2f9
	add a,b			;b2fa
	inc bc			;b2fb
	ccf			;b2fc
	add a,c			;b2fd
	ld e,003h		;b2fe
	ccf			;b300
	ex af,af'		;b301
	in a,(081h)		;b302
	ld bc,0fc03h		;b304
	add a,c			;b307
	ld a,b			;b308
	inc b			;b309
	call m,0ff81h		;b30a
	dec b			;b30d
	ld a,a			;b30e
	sbc a,c			;b30f
	ld a,(hl)		;b310
	nop			;b311
	add a,b			;b312
	ret po			;b313
	ret p			;b314
	ret p			;b315
	ret m			;b316
	ld sp,hl		;b317
	ei			;b318
	ret po			;b319
	ret m			;b31a
	ret m			;b31b
	add a,b			;b31c
	cp 07eh			;b31d
	rst 38h			;b31f
	add a,c			;b320
	add a,b			;b321
	ret po			;b322
	ret p			;b323
	ret m			;b324
	call m,090feh		;b325
	ret z			;b328
	inc bc			;b329
	rst 38h			;b32a
	add a,l			;b32b
	cp 0f8h			;b32c
	ret po			;b32e
	ret nz			;b32f
	add a,b			;b330
	inc bc			;b331
	rst 38h			;b332
	sub d			;b333
	nop			;b334
	rrca			;b335
	ccf			;b336
	ld a,a			;b337
	ld bc,0ff80h		;b338
	rst 38h			;b33b
	rrca			;b33c
	rra			;b33d
	ld a,a			;b33e
	inc bc			;b33f
	rlca			;b340
	rra			;b341
	ret nz			;b342
	ret p			;b343
	rra			;b344
	ccf			;b345
	inc bc			;b346
	rst 38h			;b347
	add a,h			;b348
	ccf			;b349
	ld a,a			;b34a
	nop			;b34b
	nop			;b34c
	ld b,0ffh		;b34d
	add a,e			;b34f
	ld a,a			;b350
	ccf			;b351
	rrca			;b352
	inc bc			;b353
	nop			;b354
	rlca			;b355
	rst 38h			;b356
	add a,l			;b357
	nop			;b358
	ld a,(hl)		;b359
	nop			;b35a
	nop			;b35b
	rst 38h			;b35c
	inc b			;b35d
	ret p			;b35e
	ld (bc),a		;b35f
	rst 38h			;b360
	add a,c			;b361
	cp 004h			;b362
	add a,b			;b364
	add a,h			;b365
	ld bc,0e080h		;b366
	ret m			;b369
	dec b			;b36a
	ld a,a			;b36b
	rlca			;b36c
	in a,(089h)		;b36d
	rst 38h			;b36f
	ld bc,01f07h		;b370
	ld a,a			;b373
	ld a,a			;b374
	ccf			;b375
	rra			;b376
	rlca			;b377
	ex af,af'		;b378
	add a,c			;b379
lb37ah:
	add a,h			;b37a
	ei			;b37b
	or 0e6h			;b37c
	add a,(hl)		;b37e
	inc bc			;b37f
	ld b,08ah		;b380
	inc bc			;b382
	add a,c			;b383
	inc c			;b384
	inc b			;b385
	ld b,b			;b386
	ld h,d			;b387
	ld a,(hl)		;b388
	inc a			;b389
	add a,c			;b38a
	ret z			;b38b
	ld b,064h		;b38c
	adc a,d			;b38e
	ret z			;b38f
	ret nz			;b390
	ret po			;b391
	ret p			;b392
	ret p			;b393
	ret m			;b394
	ret m			;b395
	call m,0807fh		;b396
	inc bc			;b399
	ld bc,00004h		;b39a
	add a,c			;b39d
	inc bc			;b39e
	inc bc			;b39f
	rlca			;b3a0
	add a,c			;b3a1
	rst 38h			;b3a2
	inc bc			;b3a3
	nop			;b3a4
	inc bc			;b3a5
	rrca			;b3a6
	ld (bc),a		;b3a7
	nop			;b3a8
	ld b,0ffh		;b3a9
	ld (bc),a		;b3ab
	nop			;b3ac
	add a,h			;b3ad
	rst 38h			;b3ae
	ei			;b3af
	rst 38h			;b3b0
	rst 38h			;b3b1
	inc bc			;b3b2
	nop			;b3b3
	inc b			;b3b4
	ld bc,00795h		;b3b5
	jr c,lb37ah		;b3b8
	inc bc			;b3ba
	rrca			;b3bb
	rra			;b3bc
	rra			;b3bd
	rrca			;b3be
	nop			;b3bf
	rrca			;b3c0
	rst 38h			;b3c1
	rrca			;b3c2
	ld a,a			;b3c3
	rlca			;b3c4
	rrca			;b3c5
	rlca			;b3c6
	ld a,0feh		;b3c7
	ld a,(hl)		;b3c9
	cp 07ch			;b3ca
	inc bc			;b3cc
	cp 008h			;b3cd
	add a,b			;b3cf
	add a,c			;b3d0
	ld bc,0fc06h		;b3d1
	add a,e			;b3d4
	pop hl			;b3d5
	rst 38h			;b3d6
	nop			;b3d7
	inc bc			;b3d8
	ld a,a			;b3d9
	adc a,e			;b3da
	rst 38h			;b3db
	add a,b			;b3dc
	nop			;b3dd
	call m,0fcf8h		;b3de
	cp 03fh			;b3e1
	inc bc			;b3e3
	ret nz			;b3e4
	ret m			;b3e5
	inc bc			;b3e6
	add a,c			;b3e7
	adc a,d			;b3e8
	inc a			;b3e9
	add a,c			;b3ea
	add a,b			;b3eb
	add a,b			;b3ec
	ret p			;b3ed
	sbc a,b			;b3ee
	ret po			;b3ef
	ccf			;b3f0
	ccf			;b3f1
	ld a,a			;b3f2
	inc bc			;b3f3
	rst 38h			;b3f4
	inc b			;b3f5
	ret nz			;b3f6
	add a,(hl)		;b3f7
	ld a,a			;b3f8
	rst 38h			;b3f9
	nop			;b3fa
	nop			;b3fb
	cp 000h			;b3fc
	ld b,080h		;b3fe
	ex af,af'		;b400
	add a,c			;b401
	add a,h			;b402
	rst 38h			;b403
	add a,c			;b404
	add a,c			;b405
	rst 38h			;b406
	inc b			;b407
	add a,c			;b408
	sbc a,d			;b409
	inc bc			;b40a
	ret nz			;b40b
	ret p			;b40c
	call m,0839fh		;b40d
	ld a,(hl)		;b410
	ld a,(hl)		;b411
	ccf			;b412
	rlca			;b413
	ccf			;b414
	rrca			;b415
	inc bc			;b416
	ret nz			;b417
	ret p			;b418
	call m,01cfeh		;b419
	cp 01eh			;b41c
	cp 07eh			;b41e
	ld c,001h		;b420
	add a,b			;b422
	add a,b			;b423
	inc bc			;b424
	rst 38h			;b425
	ld (bc),a		;b426
	nop			;b427
	add a,h			;b428
	rst 38h			;b429
	inc bc			;b42a
	rrca			;b42b
	rra			;b42c
	inc b			;b42d
	ccf			;b42e
	ld (bc),a		;b42f
	rra			;b430
	adc a,a			;b431
	ld a,a			;b432
	rrca			;b433
	rra			;b434
	rra			;b435
	rrca			;b436
	nop			;b437
	ld a,a			;b438
	nop			;b439
	ret p			;b43a
	cp 0c0h			;b43b
	ret nz			;b43d
	call m,0f0e0h		;b43e
	ex af,af'		;b441
	ld a,(hl)		;b442
	adc a,l			;b443
	inc bc			;b444
	ret nz			;b445
	ret p			;b446
	ret m			;b447
	ret m			;b448
	ret po			;b449
	rrca			;b44a
	rst 38h			;b44b
	cp 0fch			;b44c
	ccf			;b44e
	rra			;b44f
	rra			;b450
	inc bc			;b451
	nop			;b452
	ld (bc),a		;b453
	rst 38h			;b454
	add a,e			;b455
	nop			;b456
	rst 38h			;b457
	rst 38h			;b458
	inc bc			;b459
	nop			;b45a
	nop			;b45b
	sub b			;b45c
	ld b,e			;b45d
	ld (02132h),a		;b45e
	rst 38h			;b461
	ret c			;b462
	defb 0fdh,0d8h,044h ;illegal sequence	;b463
	ld (02132h),a		;b466
	rst 38h			;b469
	ret pe			;b46a
	adc a,l			;b46b
	ret pe			;b46c
	dec b			;b46d
	di			;b46e
	add a,e			;b46f
	call p,0f1f2h		;b470
	ld b,034h		;b473
	ld (bc),a		;b475
	ld (de),a		;b476
	inc b			;b477
	ld (03102h),a		;b478
	ld (bc),a		;b47b
	pop af			;b47c
	add a,e			;b47d
	ld (de),a		;b47e
	ld (00521h),a		;b47f
	pop af			;b482
	add a,c			;b483
	djnz $+6		;b484
	pop af			;b486
	ld (bc),a		;b487
	ld hl,03293h		;b488
	nop			;b48b
	pop af			;b48c
	pop af			;b48d
	ld hl,03221h		;b48e
	ld (00043h),a		;b491
	ld hl,03221h		;b494
	ld c,a			;b497
	ld c,a			;b498
	ld (0ff43h),a		;b499
	ld b,e			;b49c
	inc bc			;b49d
	ld (02181h),a		;b49e
	add hl,bc		;b4a1
	pop af			;b4a2
	add a,c			;b4a3
	ld hl,0f10ah		;b4a4
	rlca			;b4a7
	ld hl,03203h		;b4a8
	ld (bc),a		;b4ab
	ld b,e			;b4ac
	ld (bc),a		;b4ad
	ld (de),a		;b4ae
	add a,c			;b4af
	ld (04305h),a		;b4b0
	ld (bc),a		;b4b3
	ld (de),a		;b4b4
	dec b			;b4b5
	ld b,e			;b4b6
	adc a,e			;b4b7
	ld (01f21h),a		;b4b8
	ld b,e			;b4bb
	ld b,e			;b4bc
	ld (0f4f4h),a		;b4bd
	ld b,e			;b4c0
	ld (00521h),a		;b4c1
	ld b,e			;b4c4
	add a,e			;b4c5
	ld (0f121h),a		;b4c6
	ld b,043h		;b4c9
	ld (bc),a		;b4cb
	ld (de),a		;b4cc
	ld (bc),a		;b4cd
	ld (04304h),a		;b4ce
	add a,l			;b4d1
	ld (01021h),a		;b4d2
	ld hl,00521h		;b4d5
	ld (0f181h),a		;b4d8
	inc bc			;b4db
	ld (de),a		;b4dc
	add a,h			;b4dd
	inc hl			;b4de
	inc (hl)		;b4df
	ld c,(hl)		;b4e0
	inc (hl)		;b4e1
	inc b			;b4e2
	pop af			;b4e3
	add a,h			;b4e4
	jp p,0f4f3h		;b4e5
	jp p,0f108h		;b4e8
	ld (bc),a		;b4eb
	ld hl,03206h		;b4ec
	ld (bc),a		;b4ef
	rst 38h			;b4f0
	inc bc			;b4f1
	call po,04302h		;b4f2
	adc a,a			;b4f5
	ld (0ffffh),a		;b4f6
	call po,04343h		;b4f9
	ld (02121h),a		;b4fc
	rst 38h			;b4ff
	rst 38h			;b500
	ld b,e			;b501
	ld (02121h),a		;b502
	inc b			;b505
	pop af			;b506
	add a,c			;b507
	ld (0f10ch),hl		;b508
	add a,c			;b50b
	ld hl,0f105h		;b50c
	inc bc			;b50f
	ld hl,0f105h		;b510
	inc bc			;b513
	ld (0f105h),a		;b514
	ld (bc),a		;b517
	ld (de),a		;b518
	add a,c			;b519
	ld sp,0f105h		;b51a
	ld (bc),a		;b51d
	jp p,0f381h		;b51e
	inc bc			;b521
	pop af			;b522
	add a,(hl)		;b523
	ld hl,03232h		;b524
	ld sp,04141h		;b527
	inc bc			;b52a
	rra			;b52b
	inc bc			;b52c
	inc hl			;b52d
	add a,c			;b52e
	ld b,e			;b52f
	inc b			;b530
	rra			;b531
	add a,c			;b532
	ld hl,03203h		;b533
	add a,c			;b536
	djnz $+6		;b537
	pop af			;b539
	ld (bc),a		;b53a
	ld hl,03281h		;b53b
	ex af,af'		;b53e
	pop af			;b53f
	inc b			;b540
	ld hl,0f104h		;b541
	inc bc			;b544
	ld hl,0f10bh		;b545
	ld (bc),a		;b548
	ld hl,0f103h		;b549
	inc bc			;b54c
	ld hl,03202h		;b54d
	inc bc			;b550
	ld hl,03202h		;b551
	inc bc			;b554
	ld b,e			;b555
	inc bc			;b556
	ld (04305h),a		;b557
	ld (bc),a		;b55a
	ld (04303h),a		;b55b
	xor h			;b55e
	pop af			;b55f
	sub c			;b560
	sub c			;b561
	inc sp			;b562
	inc sp			;b563
	ld b,c			;b564
	ld b,d			;b565
	ld b,e			;b566
	ld b,d			;b567
	ld b,c			;b568
	ld b,c			;b569
	ld sp,03221h		;b56a
	ld b,e			;b56d
	call po,03243h		;b56e
	ld hl,0f4f3h		;b571
	call p,0fefeh		;b574
	call p,0f3f4h		;b577
	ld b,c			;b57a
	ld hl,04332h		;b57b
	call po,03243h		;b57e
	ld hl,04343h		;b581
	ld b,c			;b584
	ld b,d			;b585
	ld b,e			;b586
	ld b,d			;b587
	ld b,c			;b588
	di			;b589
	di			;b58a
	rlca			;b58b
	ld b,e			;b58c
	dec b			;b58d
	ld (04302h),a		;b58e
	add a,c			;b591
	ld b,d			;b592
	ld b,021h		;b593
	ld (bc),a		;b595
	ld (0f10ch),a		;b596
	inc bc			;b599
	ld hl,03281h		;b59a
	inc bc			;b59d
	pop af			;b59e
	adc a,c			;b59f
	ld hl,03232h		;b5a0
	ld b,e			;b5a3
	ld b,e			;b5a4
	ld hl,0f1f1h		;b5a5
	ld (04304h),a		;b5a8
	add a,e			;b5ab
	ld (02121h),a		;b5ac
	inc c			;b5af
	ld b,e			;b5b0
	ld b,042h		;b5b1
	inc bc			;b5b3
	ld (09102h),a		;b5b4
	inc bc			;b5b7
	ld b,e			;b5b8
	add a,e			;b5b9
	ld (0f12fh),a		;b5ba
	inc b			;b5bd
	ld b,e			;b5be
	adc a,b			;b5bf
	ld (0f12fh),a		;b5c0
	pop af			;b5c3
	ld sp,02131h		;b5c4
	pop af			;b5c7
	inc b			;b5c8
	ld (de),a		;b5c9
	add a,e			;b5ca
	di			;b5cb
	jp p,005f2h		;b5cc
	pop af			;b5cf
	inc bc			;b5d0
	ld b,c			;b5d1
	ld (bc),a		;b5d2
	ld b,d			;b5d3
	adc a,e			;b5d4
	ld (02131h),a		;b5d5
	or 0f9h			;b5d8
	rra			;b5da
	ld hl,0f61fh		;b5db
	ld sp,hl		;b5de
	rra			;b5df
	rlca			;b5e0
	ld b,e			;b5e1
	add a,h			;b5e2
	ld b,d			;b5e3
	ld hl,0e1e1h		;b5e4
	inc b			;b5e7
	ld sp,02181h		;b5e8
	ex af,af'		;b5eb
	ld (02107h),a		;b5ec
	ld (bc),a		;b5ef
	pop af			;b5f0
	inc b			;b5f1
	ld hl,0ff03h		;b5f2
	inc b			;b5f5
	ld (01f04h),a		;b5f6
	inc b			;b5f9
	ld b,e			;b5fa
	inc b			;b5fb
	pop af			;b5fc
	inc b			;b5fd
	ld b,e			;b5fe
	ld (bc),a		;b5ff
	pop af			;b600
	ld (bc),a		;b601
	ld sp,hl		;b602
	inc bc			;b603
	ld hl,01f05h		;b604
	add a,e			;b607
	jp p,0f1f1h		;b608
	ex af,af'		;b60b
	ld hl,03202h		;b60c
	inc bc			;b60f
	ld b,e			;b610
	ld (bc),a		;b611
	ld hl,03202h		;b612
	inc b			;b615
	ld b,e			;b616
	sub h			;b617
	ld hl,04332h		;b618
	rst 38h			;b61b
	rst 38h			;b61c
	ld b,e			;b61d
	ld (0f132h),a		;b61e
	ld hl,04332h		;b621
	ld b,e			;b624
	ld (02121h),a		;b625
	call p,031f4h		;b628
	ld (01204h),a		;b62b
	add a,d			;b62e
	call p,00442h		;b62f
	ld sp,02102h		;b632
	adc a,h			;b635
	ld b,d			;b636
	inc (hl)		;b637
	inc hl			;b638
	ld hl,03221h		;b639
	inc de			;b63c
	inc de			;b63d
	ld (0f121h),a		;b63e
	ld b,c			;b641
	inc b			;b642
	ld (0f381h),a		;b643
	inc bc			;b646
	jp p,0f181h		;b647
	inc bc			;b64a
	ld (02081h),a		;b64b
	inc bc			;b64e
	ld hl,0ff82h		;b64f
	ld (02103h),a		;b652
	add a,h			;b655
	ld (0e443h),a		;b656
	ld b,e			;b659
	inc bc			;b65a
	ld (0f102h),a		;b65b
	add a,a			;b65e
	ld (de),a		;b65f
	pop af			;b660
	pop af			;b661
	ld (de),a		;b662
	inc hl			;b663
	rst 38h			;b664
	ld hl,0f103h		;b665
	ld (bc),a		;b668
	jp p,03284h		;b669
	rst 38h			;b66c
	ld (00332h),a		;b66d
	ld hl,0f103h		;b670
	ld (bc),a		;b673
	ld b,e			;b674
	ld (bc),a		;b675
	ld (02103h),a		;b676
	add a,h			;b679
	pop af			;b67a
	ld (04343h),a		;b67b
	inc bc			;b67e
	jp p,04302h		;b67f
	ex af,af'		;b682
	ld hl,03202h		;b683
	dec b			;b686
	ld b,e			;b687
	inc b			;b688
	ld (04302h),a		;b689
	ld (bc),a		;b68c
	ld (02102h),a		;b68d
	ld (bc),a		;b690
	ld (04386h),a		;b691
	rst 38h			;b694
	ld (04343h),a		;b695
	ld sp,02105h		;b698
	ld (bc),a		;b69b
	pop af			;b69c
	ld (bc),a		;b69d
	ld (04184h),a		;b69e
	ld sp,02121h		;b6a1
	inc bc			;b6a4
	cpl			;b6a5
	inc bc			;b6a6
	inc (hl)		;b6a7
	ld (bc),a		;b6a8
	ld hl,0ff02h		;b6a9
	nop			;b6ac
	sub d			;b6ad
	ret p			;b6ae
	rrca			;b6af
	rrca			;b6b0
	ccf			;b6b1
	jr c,lb6bah		;b6b2
	jr c,lb6eeh		;b6b4
	cp a			;b6b6
	cp e			;b6b7
	rst 38h			;b6b8
	rrca			;b6b9
lb6bah:
	rrca			;b6ba
	ret p			;b6bb
	ret p			;b6bc
	rrca			;b6bd
	rst 38h			;b6be
	di			;b6bf
	inc bc			;b6c0
	rst 38h			;b6c1
	add a,(hl)		;b6c2
	inc bc			;b6c3
	ret m			;b6c4
	rlca			;b6c5
	rst 38h			;b6c6
	ei			;b6c7
	ld a,a			;b6c8
	inc bc			;b6c9
	ex de,hl		;b6ca
	adc a,(hl)		;b6cb
	rst 38h			;b6cc
	ccf			;b6cd
	ret p			;b6ce
	ret nz			;b6cf
	add a,b			;b6d0
	add a,b			;b6d1
	nop			;b6d2
	rst 28h			;b6d3
	rst 8			;b6d4
	rst 8			;b6d5
	rrca			;b6d6
	inc bc			;b6d7
	ld bc,00301h		;b6d8
	jr nc,$-117		;b6db
	ei			;b6dd
	ret p			;b6de
	ret p			;b6df
	rrca			;b6e0
	rrca			;b6e1
	rst 38h			;b6e2
	ret m			;b6e3
	rrca			;b6e4
	rrca			;b6e5
	nop			;b6e6
	ld (bc),a		;b6e7
	res 0,(hl)		;b6e8
	cp a			;b6ea
	call m,0cbcbh		;b6eb
lb6eeh:
	ei			;b6ee
	cp h			;b6ef
	inc bc			;b6f0
	ld sp,hl		;b6f1
	add a,e			;b6f2
	ei			;b6f3
	cp h			;b6f4
	cp h			;b6f5
	inc bc			;b6f6
	ei			;b6f7
	inc b			;b6f8
	ld sp,hl		;b6f9
	add a,e			;b6fa
	ei			;b6fb
	set 1,e			;b6fc
	rlca			;b6fe
	ld sp,hl		;b6ff
	add a,(hl)		;b700
	ei			;b701
	or 0b6h			;b702
	add a,0b6h		;b704
	or (hl)			;b706
	inc bc			;b707
	ld h,l			;b708
	ld (bc),a		;b709
	or 082h			;b70a
	or (hl)			;b70c
	add a,003h		;b70d
	and 084h		;b70f
	ld h,l			;b711
	ei			;b712
	cp h			;b713
	cp h			;b714
	inc b			;b715
	ei			;b716
	add a,c			;b717
	cp h			;b718
	nop			;b719
	add a,d			;b71a
	rst 38h			;b71b
	adc a,a			;b71c
	ld b,081h		;b71d
	adc a,e			;b71f
	ld bc,0f1c1h		;b720
	ld sp,hl		;b723
	defb 0fdh,0ffh,0feh ;illegal sequence	;b724
	cp 0f8h			;b727
	ret p			;b729
	ret nz			;b72a
	inc b			;b72b
	add a,b			;b72c
	add a,h			;b72d
	rla			;b72e
	rra			;b72f
	rrca			;b730
	inc bc			;b731
	inc b			;b732
	ld bc,0e886h		;b733
	rrca			;b736
	ld bc,0f8c0h		;b737
	rst 38h			;b73a
	inc bc			;b73b
	ld a,a			;b73c
	sub b			;b73d
	rst 38h			;b73e
	cp 000h			;b73f
	rrca			;b741
	rst 38h			;b742
	rst 28h			;b743
	rst 28h			;b744
	rst 38h			;b745
	rrca			;b746
	rrca			;b747
	pop af			;b748
	pop de			;b749
	sbc a,a			;b74a
	rst 38h			;b74b
	xor e			;b74c
	rst 38h			;b74d
	nop			;b74e
	inc bc			;b74f
	ei			;b750
	add a,l			;b751
	cp h			;b752
	ei			;b753
	cp h			;b754
	cp h			;b755
	adc a,006h		;b756
	pop af			;b758
	sub h			;b759
	jp p,042f3h		;b75a
	ld b,c			;b75d
	ld sp,01231h		;b75e
	inc hl			;b761
	inc (hl)		;b762
	call po,04142h		;b763
	ld sp,01231h		;b766
	inc hl			;b769
	inc (hl)		;b76a
	call po,02121h		;b76b
	inc b			;b76e
	pop af			;b76f
	add a,d			;b770
	jp p,003f3h		;b771
	ld hl,0f102h		;b774
	inc bc			;b777
	ld sp,hl		;b778
	adc a,b			;b779
	jp p,0f4f1h		;b77a
	jp p,0f3f3h		;b77d
	ld sp,hl		;b780
	ld sp,hl		;b781
	nop			;b782
	dec b			;b783
	rst 38h			;b784
	add a,e			;b785
	nop			;b786
	rst 38h			;b787
	rst 38h			;b788
	ld b,000h		;b789
	add a,h			;b78b
	rst 38h			;b78c
	nop			;b78d
	nop			;b78e
	rst 38h			;b78f
	ld b,000h		;b790
	ld (bc),a		;b792
	rst 38h			;b793
	rlca			;b794
	nop			;b795
	adc a,c			;b796
	rst 38h			;b797
	nop			;b798
	nop			;b799
	rst 38h			;b79a
	rst 38h			;b79b
	nop			;b79c
	nop			;b79d
	rst 38h			;b79e
	rst 38h			;b79f
	ld b,000h		;b7a0
	add a,e			;b7a2
	rst 38h			;b7a3
	nop			;b7a4
	nop			;b7a5
	ex af,af'		;b7a6
	rst 38h			;b7a7
	ld (bc),a		;b7a8
	nop			;b7a9
	ld (bc),a		;b7aa
	rst 38h			;b7ab
	add a,c			;b7ac
	nop			;b7ad
	nop			;b7ae
	add a,c			;b7af
	ld sp,hl		;b7b0
	ld b,012h		;b7b1
	ld (bc),a		;b7b3
	pop af			;b7b4
	rlca			;b7b5
	ld (0f107h),a		;b7b6
	ld (bc),a		;b7b9
	ld (de),a		;b7ba
	ld (bc),a		;b7bb
	pop af			;b7bc
	ex af,af'		;b7bd
	ld (0f102h),a		;b7be
	ld (bc),a		;b7c1
	inc hl			;b7c2
	ld (bc),a		;b7c3
	inc d			;b7c4
	ld (bc),a		;b7c5
	cpl			;b7c6
	rlca			;b7c7
	ld hl,01f02h		;b7c8
	ex af,af'		;b7cb
	inc hl			;b7cc
	ld (bc),a		;b7cd
	inc (hl)		;b7ce
	ld (bc),a		;b7cf
	rra			;b7d0
	nop			;b7d1
	inc b			;b7d2
	rst 38h			;b7d3
	ld (bc),a		;b7d4
	nop			;b7d5
	dec b			;b7d6
	rst 38h			;b7d7
	add a,(hl)		;b7d8
	nop			;b7d9
	rst 38h			;b7da
	rst 38h			;b7db
	nop			;b7dc
	rst 38h			;b7dd
	rst 38h			;b7de
	ex af,af'		;b7df
	nop			;b7e0
	add a,e			;b7e1
	rst 38h			;b7e2
	nop			;b7e3
	nop			;b7e4
	ld a,(bc)		;b7e5
	rst 38h			;b7e6
	ld (bc),a		;b7e7
	nop			;b7e8
	ld (bc),a		;b7e9
	rst 38h			;b7ea
	ld (bc),a		;b7eb
	nop			;b7ec
	ld (bc),a		;b7ed
	rst 38h			;b7ee
	inc bc			;b7ef
	nop			;b7f0
	ld (bc),a		;b7f1
	rst 38h			;b7f2
	add a,c			;b7f3
	nop			;b7f4
	ld b,0ffh		;b7f5
	add a,e			;b7f7
	nop			;b7f8
	rst 38h			;b7f9
	rst 38h			;b7fa
	inc b			;b7fb
	nop			;b7fc
	add a,a			;b7fd
	rst 38h			;b7fe
	nop			;b7ff
	nop			;b800
	rst 38h			;b801
	nop			;b802
	nop			;b803
	rst 38h			;b804
	rlca			;b805
	add a,c			;b806
	add a,c			;b807
	rst 38h			;b808
	ex af,af'		;b809
	add a,c			;b80a
	nop			;b80b
	inc bc			;b80c
	rra			;b80d
	ld (bc),a		;b80e
	ld hl,01f02h		;b80f
	ld b,023h		;b812
	inc bc			;b814
	rra			;b815
	ex af,af'		;b816
	inc hl			;b817
	inc bc			;b818
	pop af			;b819
	ld a,(bc)		;b81a
	ld (04302h),a		;b81b
	ld (bc),a		;b81e
	ld (de),a		;b81f
	ld (bc),a		;b820
	pop af			;b821
	ld (bc),a		;b822
	ld (04303h),a		;b823
	ld (bc),a		;b826
	ld hl,03406h		;b827
	inc b			;b82a
	ld (de),a		;b82b
	ld (bc),a		;b82c
	pop af			;b82d
	dec b			;b82e
	ld (0f103h),a		;b82f
	ld (bc),a		;b832
	ld (0f402h),a		;b833
	ld (bc),a		;b836
	cp 08ch			;b837
	call p,0f1f3h		;b839
	pop af			;b83c
	jp p,0f3f2h		;b83d
	di			;b840
	call p,0fef4h		;b841
	cp 000h			;b844
	add a,a			;b846
	rst 38h			;b847
	nop			;b848
	nop			;b849
	rst 38h			;b84a
	rst 38h			;b84b
	nop			;b84c
	nop			;b84d
	rlca			;b84e
	rst 38h			;b84f
	add a,h			;b850
	nop			;b851
	rst 38h			;b852
	rst 38h			;b853
	nop			;b854
	rlca			;b855
	rst 38h			;b856
	add a,a			;b857
	nop			;b858
	rst 38h			;b859
	rst 38h			;b85a
	nop			;b85b
	nop			;b85c
	rst 38h			;b85d
	rst 38h			;b85e
	dec bc			;b85f
	nop			;b860
	add a,l			;b861
	ld d,h			;b862
	nop			;b863
	ld d,h			;b864
	nop			;b865
	nop			;b866
	ex af,af'		;b867
	add a,b			;b868
	ex af,af'		;b869
	add a,c			;b86a
	ex af,af'		;b86b
	rra			;b86c
	nop			;b86d
	ld (bc),a		;b86e
	ld hl,01f02h		;b86f
	ld (bc),a		;b872
	inc hl			;b873
	dec d			;b874
	inc (hl)		;b875
	ld (bc),a		;b876
	ld hl,01f02h		;b877
	add hl,bc		;b87a
	inc hl			;b87b
	ex af,af'		;b87c
	sbc a,a			;b87d
	ex af,af'		;b87e
	ld b,d			;b87f
	ex af,af'		;b880
	ld (0f108h),a		;b881
	nop			;b884
	add a,h			;b885
	rst 38h			;b886
	add a,c			;b887
	add a,c			;b888
	rst 38h			;b889
	inc c			;b88a
	add a,c			;b88b
	add a,c			;b88c
	rst 38h			;b88d
	inc bc			;b88e
	add a,c			;b88f
	add a,c			;b890
	rst 38h			;b891
	inc c			;b892
	add a,c			;b893
	add a,c			;b894
	rst 38h			;b895
	inc bc			;b896
	add a,c			;b897
	add a,c			;b898
	rst 38h			;b899
	inc c			;b89a
	add a,c			;b89b
	add a,c			;b89c
	rst 38h			;b89d
	dec c			;b89e
	add a,c			;b89f
	and b			;b8a0
	inc bc			;b8a1
	ret nz			;b8a2
	ret p			;b8a3
	call m,0839fh		;b8a4
	ld a,(hl)		;b8a7
	ld a,(hl)		;b8a8
	inc bc			;b8a9
	ret nz			;b8aa
	ret p			;b8ab
	call m,0839fh		;b8ac
	ld a,(hl)		;b8af
	ld a,(hl)		;b8b0
	inc bc			;b8b1
	ret nz			;b8b2
	ret p			;b8b3
	call m,0ff8fh		;b8b4
	add a,c			;b8b7
	add a,c			;b8b8
	call m,0f0c0h		;b8b9
	call m,083ffh		;b8bc
	rst 38h			;b8bf
	ld a,(hl)		;b8c0
	nop			;b8c1
	ld (bc),a		;b8c2
	pop af			;b8c3
	adc a,(hl)		;b8c4
	ld (de),a		;b8c5
	pop af			;b8c6
	pop af			;b8c7
	ld (de),a		;b8c8
	inc hl			;b8c9
	rst 38h			;b8ca
	ld (de),a		;b8cb
	inc hl			;b8cc
	inc hl			;b8cd
	inc (hl)		;b8ce
	rst 38h			;b8cf
	inc hl			;b8d0
	inc (hl)		;b8d1
	inc (hl)		;b8d2
	inc bc			;b8d3
	pop af			;b8d4
	adc a,l			;b8d5
	ld (de),a		;b8d6
	pop af			;b8d7
	pop af			;b8d8
	ld (de),a		;b8d9
	ld (de),a		;b8da
	inc hl			;b8db
	rst 38h			;b8dc
	ld (de),a		;b8dd
	inc hl			;b8de
	inc hl			;b8df
	inc (hl)		;b8e0
	rst 38h			;b8e1
	inc hl			;b8e2
	inc b			;b8e3
	pop af			;b8e4
	adc a,b			;b8e5
	ld (de),a		;b8e6
	pop af			;b8e7
	pop af			;b8e8
	ld (de),a		;b8e9
	ld (de),a		;b8ea
	inc hl			;b8eb
	rst 38h			;b8ec
	inc hl			;b8ed
	inc bc			;b8ee
	inc (hl)		;b8ef
	adc a,(hl)		;b8f0
	inc hl			;b8f1
	pop af			;b8f2
	ld (de),a		;b8f3
	pop af			;b8f4
	pop af			;b8f5
	ld (de),a		;b8f6
	inc hl			;b8f7
	rst 38h			;b8f8
	ld (de),a		;b8f9
	inc hl			;b8fa
	inc hl			;b8fb
	inc (hl)		;b8fc
	rst 38h			;b8fd
	inc hl			;b8fe
	inc bc			;b8ff
	inc (hl)		;b900
	add a,c			;b901
	ld hl,0f103h		;b902
	ld (bc),a		;b905
	jp p,03283h		;b906
	rst 38h			;b909
	ld hl,0f105h		;b90a
	inc bc			;b90d
	ld hl,0f103h		;b90e
	ld (bc),a		;b911
	jp p,0f183h		;b912
	ld (de),a		;b915
	ld (de),a		;b916
	inc b			;b917
	pop af			;b918
	ld (bc),a		;b919
	di			;b91a
	add a,c			;b91b
	ld hl,00800h		;b91c
	ld c,c			;b91f
	ex af,af'		;b920
	inc h			;b921
	ex af,af'		;b922
	sub d			;b923
	nop			;b924
	jr lb977h		;b925
	nop			;b927
	ex af,af'		;b928
	rst 38h			;b929
	ld (bc),a		;b92a
	nop			;b92b
	rlca			;b92c
	rst 38h			;b92d
	add a,c			;b92e
	nop			;b92f
	ld b,0ffh		;b930
	nop			;b932
	add hl,bc		;b933
lb934h:
	rst 20h			;b934
	rlca			;b935
	ld (hl),b		;b936
	ex af,af'		;b937
	rst 20h			;b938
	nop			;b939
	add a,e			;b93a
	rst 38h			;b93b
	nop			;b93c
	nop			;b93d
	dec b			;b93e
	rst 38h			;b93f
	ld (bc),a		;b940
	nop			;b941
	add a,c			;b942
	rst 38h			;b943
	dec b			;b944
	nop			;b945
	inc b			;b946
	rst 38h			;b947
	dec b			;b948
	nop			;b949
	inc bc			;b94a
	rst 38h			;b94b
	dec b			;b94c
	nop			;b94d
	add a,e			;b94e
	rst 38h			;b94f
	nop			;b950
	nop			;b951
	inc b			;b952
	rst 38h			;b953
	nop			;b954
	ld (bc),a		;b955
	jp p,0f102h		;b956
	dec b			;b959
	ld bc,02f03h		;b95a
	ld b,010h		;b95d
	ld b,0f0h		;b95f
	inc bc			;b961
	ld (de),a		;b962
	dec b			;b963
	ret p			;b964
	inc bc			;b965
	ld hl,00f05h		;b966
	nop			;b969
	sub e			;b96a
	jr c,lb934h		;b96b
	ld e,0e1h		;b96d
	pop hl			;b96f
	ld e,0f0h		;b970
	rrca			;b972
	ret p			;b973
	ret p			;b974
	rst 38h			;b975
	rst 38h			;b976
lb977h:
	cp a			;b977
	cp e			;b978
	rst 38h			;b979
	rst 38h			;b97a
	rrca			;b97b
	ret m			;b97c
	ret m			;b97d
	inc bc			;b97e
	nop			;b97f
	sbc a,c			;b980
	di			;b981
	rst 38h			;b982
	rrca			;b983
	rrca			;b984
	ret p			;b985
	ret p			;b986
	rrca			;b987
	rrca			;b988
	ret p			;b989
	ret p			;b98a
	rst 0			;b98b
	jp 0e0c0h		;b98c
	ret po			;b98f
	ret m			;b990
	ret nz			;b991
	ret p			;b992
	ei			;b993
	di			;b994
	inc bc			;b995
	rlca			;b996
	rlca			;b997
	rra			;b998
	inc bc			;b999
	inc bc			;b99a
	rrca			;b99b
	add a,(hl)		;b99c
	nop			;b99d
	xor e			;b99e
	rst 38h			;b99f
	xor e			;b9a0
	rst 38h			;b9a1
	rst 38h			;b9a2
	nop			;b9a3
	ld (bc),a		;b9a4
	rlc d			;b9a5
	ei			;b9a7
	dec b			;b9a8
	cp h			;b9a9
	inc bc			;b9aa
	ei			;b9ab
	inc b			;b9ac
	ld sp,hl		;b9ad
	ld (bc),a		;b9ae
	rlc h			;b9af
	cp a			;b9b1
	ld (bc),a		;b9b2
	ld sp,hl		;b9b3
	adc a,b			;b9b4
	res 7,a			;b9b5
	cp a			;b9b7
	set 1,e			;b9b8
	cp a			;b9ba
	cp a			;b9bb
	rlc (hl)		;b9bc
	ld h,l			;b9be
	add a,d			;b9bf
	or (hl)			;b9c0
	or 006h			;b9c1
	ld h,l			;b9c3
	add a,l			;b9c4
	add a,0b6h		;b9c5
	res 7,a			;b9c7
	cp a			;b9c9
	dec b			;b9ca
	ld sp,hl		;b9cb
	nop			;b9cc
	add a,c			;b9cd
	rst 38h			;b9ce
	inc bc			;b9cf
	nop			;b9d0
	add a,e			;b9d1
	rst 38h			;b9d2
	nop			;b9d3
	nop			;b9d4
	inc b			;b9d5
	rst 38h			;b9d6
	ld (bc),a		;b9d7
	nop			;b9d8
	adc a,b			;b9d9
	rst 38h			;b9da
	nop			;b9db
	nop			;b9dc
	rst 38h			;b9dd
	rst 38h			;b9de
	nop			;b9df
	nop			;b9e0
	rst 38h			;b9e1
	inc b			;b9e2
	nop			;b9e3
	ld (bc),a		;b9e4
	rst 38h			;b9e5
	inc bc			;b9e6
	nop			;b9e7
	add a,c			;b9e8
	rst 38h			;b9e9
	ld b,000h		;b9ea
	ld (bc),a		;b9ec
	rst 38h			;b9ed
	ld (bc),a		;b9ee
	nop			;b9ef
	ld (bc),a		;b9f0
	rst 38h			;b9f1
	ld (bc),a		;b9f2
	nop			;b9f3
	ld (bc),a		;b9f4
	rst 38h			;b9f5
	ld (bc),a		;b9f6
	nop			;b9f7
	add a,e			;b9f8
	rst 38h			;b9f9
	nop			;b9fa
	nop			;b9fb
	inc b			;b9fc
	rst 38h			;b9fd
	ld (bc),a		;b9fe
	nop			;b9ff
	ld b,0ffh		;ba00
	nop			;ba02
	inc bc			;ba03
	ld (0f103h),a		;ba04
	ld (bc),a		;ba07
	ld (de),a		;ba08
	inc b			;ba09
	ld (0f103h),a		;ba0a
	ld (bc),a		;ba0d
	jp p,01202h		;ba0e
	dec b			;ba11
	ld b,e			;ba12
	ld (bc),a		;ba13
	ld hl,03203h		;ba14
	inc bc			;ba17
	pop af			;ba18
	ld b,023h		;ba19
	ld (bc),a		;ba1b
	rra			;ba1c
	ld (bc),a		;ba1d
	inc (hl)		;ba1e
	ld (bc),a		;ba1f
	cpl			;ba20
	ld (bc),a		;ba21
	ld hl,03402h		;ba22
	inc bc			;ba25
	pop af			;ba26
	inc b			;ba27
	ld (de),a		;ba28
	ld (bc),a		;ba29
	jp p,02307h		;ba2a
	nop			;ba2d
	dec c			;ba2e
	ld a,(hl)		;ba2f
	add a,c			;ba30
	nop			;ba31
	djnz lbab2h		;ba32
	add a,e			;ba34
	nop			;ba35
	ld a,(hl)		;ba36
	nop			;ba37
	ld a,(bc)		;ba38
	ld a,(hl)		;ba39
	add a,c			;ba3a
	nop			;ba3b
	inc bc			;ba3c
	add a,c			;ba3d
	add a,c			;ba3e
	rst 38h			;ba3f
	inc c			;ba40
	ld a,(hl)		;ba41
	add a,c			;ba42
	nop			;ba43
	inc bc			;ba44
	ld a,(hl)		;ba45
	sbc a,b			;ba46
	nop			;ba47
	ld a,(hl)		;ba48
	add a,e			;ba49
	sbc a,a			;ba4a
	call m,0c0f0h		;ba4b
	inc bc			;ba4e
	ld a,(hl)		;ba4f
	ld a,(hl)		;ba50
	rst 38h			;ba51
	adc a,a			;ba52
	call m,0c0f0h		;ba53
	inc bc			;ba56
	ld a,(hl)		;ba57
	ld a,(hl)		;ba58
	add a,e			;ba59
	rst 38h			;ba5a
	call m,0c0f0h		;ba5b
	inc bc			;ba5e
	inc bc			;ba5f
	ld a,(hl)		;ba60
	add a,l			;ba61
	rst 38h			;ba62
	sbc a,h			;ba63
	ret p			;ba64
	ret nz			;ba65
	inc bc			;ba66
	nop			;ba67
	ld (bc),a		;ba68
	ld b,e			;ba69
	adc a,(hl)		;ba6a
	ld (043ffh),a		;ba6b
	ld (02132h),a		;ba6e
	rst 38h			;ba71
	ld (02121h),a		;ba72
	rra			;ba75
	rra			;ba76
	ld hl,0041fh		;ba77
	ld b,e			;ba7a
	adc a,c			;ba7b
	ld (043ffh),a		;ba7c
	ld (02132h),a		;ba7f
	rst 38h			;ba82
	ld (00421h),a		;ba83
	rra			;ba86
	add a,c			;ba87
	ld (04303h),a		;ba88
	adc a,b			;ba8b
	ld (032ffh),a		;ba8c
	ld hl,01f21h		;ba8f
	rra			;ba92
	jp p,0f103h		;ba93
	add a,e			;ba96
	ld (043ffh),a		;ba97
	inc bc			;ba9a
	ld (02188h),a		;ba9b
	rst 38h			;ba9e
	ld (02121h),a		;ba9f
	rra			;baa2
	rra			;baa3
	ld hl,01f03h		;baa4
	add a,c			;baa7
	ld hl,0f105h		;baa8
	add a,l			;baab
	ld hl,02132h		;baac
	di			;baaf
	di			;bab0
	inc bc			;bab1
lbab2h:
	pop af			;bab2
	inc bc			;bab3
	ld hl,0f105h		;bab4
	add a,h			;bab7
	ld hl,02132h		;bab8
	ld hl,0f104h		;babb
	add a,c			;babe
	ld hl,08d00h		;babf
	ld bc,0f1c1h		;bac2
	ld sp,hl		;bac5
	defb 0fdh,0ffh,0feh ;illegal sequence	;bac6
	cp 00fh			;bac9
	ld bc,0f8c0h		;bacb
	rst 38h			;bace
	inc bc			;bacf
	ld a,a			;bad0
	nop			;bad1
	ld b,0f1h		;bad2
	ld (bc),a		;bad4
	or 002h			;bad5
	ld hl,0f104h		;bad7
	ld (bc),a		;bada
	or 000h			;badb
	sub e			;badd
	ret m			;bade
	ret p			;badf
	rra			;bae0
	ld a,a			;bae1
	rrca			;bae2
	ccf			;bae3
	ld a,a			;bae4
	dec bc			;bae5
	ret m			;bae6
	ret p			;bae7
	rra			;bae8
	ld a,a			;bae9
	rrca			;baea
	ccf			;baeb
	ld a,a			;baec
	dec bc			;baed
	ret m			;baee
	ret p			;baef
	ret nz			;baf0
	inc b			;baf1
	add a,b			;baf2
	add a,c			;baf3
	dec bc			;baf4
	nop			;baf5
	add a,h			;baf6
	ld b,d			;baf7
	ld sp,06162h		;baf8
	inc bc			;bafb
	sub (hl)		;bafc
	add a,l			;bafd
	jp (hl)			;bafe
	ld b,d			;baff
	ld sp,04121h		;bb00
	inc bc			;bb03
	sub (hl)		;bb04
	adc a,c			;bb05
	jp (hl)			;bb06
	ld b,d			;bb07
	ld b,c			;bb08
	ld sp,01332h		;bb09
	inc h			;bb0c
	ld l,c			;bb0d
	jp (hl)			;bb0e
	nop			;bb0f
	add a,c			;bb10
	ld bc,0000ah		;bb11
	add a,l			;bb14
	inc bc			;bb15
	rlca			;bb16
	rrca			;bb17
	rra			;bb18
	ccf			;bb19
	ld b,000h		;bb1a
	add hl,bc		;bb1c
	rrca			;bb1d
	rlca			;bb1e
	nop			;bb1f
	ld (bc),a		;bb20
	ret p			;bb21
	add a,d			;bb22
	ret po			;bb23
	call m,0ff04h		;bb24
	add a,c			;bb27
	ret p			;bb28
	inc bc			;bb29
	nop			;bb2a
	add a,e			;bb2b
	ret nz			;bb2c
	ret m			;bb2d
	ret p			;bb2e
	ex af,af'		;bb2f
	nop			;bb30
	adc a,d			;bb31
	ret nz			;bb32
	ret po			;bb33
	ret p			;bb34
	rst 38h			;bb35
	nop			;bb36
	nop			;bb37
	cp a			;bb38
	ret nz			;bb39
	adc a,a			;bb3a
	inc bc			;bb3b
	inc b			;bb3c
	nop			;bb3d
	add a,a			;bb3e
	ld bc,00703h		;bb3f
	rrca			;bb42
	rra			;bb43
	ret p			;bb44
	ret po			;bb45
	inc bc			;bb46
	rrca			;bb47
	inc bc			;bb48
	rst 38h			;bb49
	add a,e			;bb4a
	call m,0c0f0h		;bb4b
	ex af,af'		;bb4e
	nop			;bb4f
	add a,c			;bb50
	add a,b			;bb51
	inc b			;bb52
	ret nz			;bb53
	add a,d			;bb54
	cp h			;bb55
	ld a,(hl)		;bb56
	inc bc			;bb57
	ret p			;bb58
	sub l			;bb59
	rra			;bb5a
	inc bc			;bb5b
	ret po			;bb5c
	add a,a			;bb5d
	add a,a			;bb5e
	inc bc			;bb5f
	add a,a			;bb60
	add a,a			;bb61
	ld a,a			;bb62
	ld a,a			;bb63
	ccf			;bb64
	ret po			;bb65
	call m,007e0h		;bb66
	rra			;bb69
	ccf			;bb6a
	ld a,a			;bb6b
	ld a,a			;bb6c
	cp 0fch			;bb6d
	inc bc			;bb6f
	ret m			;bb70
	inc bc			;bb71
	ret p			;bb72
	sbc a,b			;bb73
	rlca			;bb74
	inc bc			;bb75
	nop			;bb76
	ld a,a			;bb77
	ccf			;bb78
	rlca			;bb79
	nop			;bb7a
	nop			;bb7b
	ld d,a			;bb7c
	ld d,a			;bb7d
	add hl,hl		;bb7e
	add hl,hl		;bb7f
	xor b			;bb80
	xor b			;bb81
	rst 38h			;bb82
	rst 38h			;bb83
	rra			;bb84
	rlca			;bb85
	ret po			;bb86
	cp 0feh			;bb87
	ld a,h			;bb89
	ld (hl),b		;bb8a
	cp 003h			;bb8b
	rst 38h			;bb8d
	inc b			;bb8e
	nop			;bb8f
	adc a,(hl)		;bb90
	rst 38h			;bb91
	rlca			;bb92
	ccf			;bb93
	ccf			;bb94
	rst 38h			;bb95
	call m,0c0f0h		;bb96
	add a,b			;bb99
	nop			;bb9a
	rrca			;bb9b
	rrca			;bb9c
	nop			;bb9d
	rst 38h			;bb9e
	inc bc			;bb9f
	nop			;bba0
	add a,c			;bba1
	ld a,a			;bba2
	inc b			;bba3
	rrca			;bba4
	adc a,(hl)		;bba5
	rra			;bba6
	inc bc			;bba7
	ret po			;bba8
	ret p			;bba9
	ret po			;bbaa
	rrca			;bbab
lbbach:
	rlca			;bbac
	inc c			;bbad
	rrca			;bbae
	rrca			;bbaf
	rra			;bbb0
	ccf			;bbb1
	ccf			;bbb2
	ld a,a			;bbb3
	inc b			;bbb4
	ret p			;bbb5
	add a,h			;bbb6
	nop			;bbb7
	rrca			;bbb8
	rlca			;bbb9
	ccf			;bbba
	inc b			;bbbb
	inc bc			;bbbc
	sub c			;bbbd
	nop			;bbbe
	rst 38h			;bbbf
	cp 0f0h			;bbc0
lbbc2h:
	ret nz			;bbc2
	jr nc,$+26		;bbc3
	jr lbbd3h		;bbc5
	inc c			;bbc7
	jr lbbe2h		;bbc8
	jr nc,lbbach		;bbca
	add a,b			;bbcc
	call m,003e0h		;bbcd
	ld h,b			;bbd0
	sbc a,d			;bbd1
	sub b			;bbd2
lbbd3h:
	sbc a,a			;bbd3
	sub b			;bbd4
	sbc a,a			;bbd5
	nop			;bbd6
	nop			;bbd7
	add a,b			;bbd8
	ret p			;bbd9
	inc bc			;bbda
	inc c			;bbdb
	jr $+26			;bbdc
	jr nc,lbc10h		;bbde
	jr lbbfah		;bbe0
lbbe2h:
	inc c			;bbe2
	rlca			;bbe3
	ld bc,0073fh		;bbe4
	rst 38h			;bbe7
	ret p			;bbe8
	rrca			;bbe9
	ld a,a			;bbea
	inc bc			;bbeb
	inc bc			;bbec
	rlca			;bbed
	inc bc			;bbee
	ret p			;bbef
	sub l			;bbf0
	ei			;bbf1
	ld sp,hl		;bbf2
	ret m			;bbf3
	inc b			;bbf4
	cp 07bh			;bbf5
	ld (hl),09ch		;bbf7
	ld c,l			;bbf9
lbbfah:
	rst 20h			;bbfa
	inc sp			;bbfb
	ld sp,hl		;bbfc
	nop			;bbfd
	dec a			;bbfe
	ld h,l			;bbff
	ret			;bc00
	sub e			;bc01
	ld h,04eh		;bc02
	sbc a,h			;bc04
	ccf			;bc05
	ld b,00fh		;bc06
	dec b			;bc08
	nop			;bc09
	dec b			;bc0a
	ret p			;bc0b
	adc a,l			;bc0c
	rst 38h			;bc0d
	cp 0fch			;bc0e
lbc10h:
	ret m			;bc10
	ret p			;bc11
	nop			;bc12
	inc c			;bc13
	ld c,a			;bc14
lbc15h:
	rst 38h			;bc15
	rst 38h			;bc16
	call m,0c0f0h		;bc17
	inc bc			;bc1a
	nop			;bc1b
	rlca			;bc1c
	ld b,b			;bc1d
	ld (bc),a		;bc1e
	ret p			;bc1f
	add a,(hl)		;bc20
	jr nz,lbc33h		;bc21
	djnz lbc15h		;bc23
	ret nz			;bc25
	ret nz			;bc26
	inc b			;bc27
	nop			;bc28
	add a,c			;bc29
	rrca			;bc2a
	inc bc			;bc2b
	rst 38h			;bc2c
	add a,c			;bc2d
	ret p			;bc2e
	nop			;bc2f
	dec bc			;bc30
	ret p			;bc31
	add a,c			;bc32
lbc33h:
	ret po			;bc33
	dec bc			;bc34
	ld b,b			;bc35
	add a,c			;bc36
	call po,00005h		;bc37
	add a,e			;bc3a
	inc (hl)		;bc3b
	ld c,(hl)		;bc3c
	ld c,(hl)		;bc3d
	rlca			;bc3e
	jr nc,lbbc2h		;bc3f
	ld b,e			;bc41
	ld b,030h		;bc42
	ld (bc),a		;bc44
	ld (03004h),a		;bc45
	inc b			;bc48
	ld (02008h),a		;bc49
	dec b			;bc4c
	rra			;bc4d
	add a,c			;bc4e
	djnz lbc56h		;bc4f
	ret p			;bc51
	adc a,c			;bc52
	ret nc			;bc53
	add a,b			;bc54
	add a,b			;bc55
lbc56h:
	ret po			;bc56
	ret po			;bc57
	ret pe			;bc58
	ret pe			;bc59
	ret c			;bc5a
	ld e,l			;bc5b
	inc b			;bc5c
	dec b			;bc5d
	ex af,af'		;bc5e
	djnz lbc6bh		;bc5f
	inc de			;bc61
	add a,a			;bc62
	pop af			;bc63
	ld e,a			;bc64
	push de			;bc65
	ret c			;bc66
	ret c			;bc67
	ret pe			;bc68
	ret c			;bc69
	inc bc			;bc6a
lbc6bh:
	adc a,(hl)		;bc6b
	sub h			;bc6c
	ret c			;bc6d
	out (0d3h),a		;bc6e
	ld d,e			;bc70
	ret po			;bc71
	ld b,b			;bc72
	ld b,e			;bc73
	di			;bc74
	ld d,e			;bc75
	ld d,e			;bc76
	out (0d3h),a		;bc77
	ld b,e			;bc79
	ex (sp),hl		;bc7a
	ex (sp),hl		;bc7b
	ld b,e			;bc7c
	ex (sp),hl		;bc7d
	ld b,e			;bc7e
	ld b,e			;bc7f
	ld b,d			;bc80
	inc bc			;bc81
	ld (02104h),a		;bc82
	ld (bc),a		;bc85
	ld e,a			;bc86
	adc a,d			;bc87
	rst 18h			;bc88
	ret m			;bc89
	ret m			;bc8a
	defb 0fdh,0f5h,0f5h ;illegal sequence	;bc8b
	ld (0f353h),hl		;bc8e
	ld (02104h),a		;bc91
	add a,c			;bc94
	djnz lbc9dh		;bc95
	ld (0f102h),a		;bc97
	ld (bc),a		;bc9a
	ret po			;bc9b
	ld (bc),a		;bc9c
lbc9dh:
	ld c,(hl)		;bc9d
	ld b,043h		;bc9e
	ld b,0e4h		;bca0
	add a,a			;bca2
	ld b,b			;bca3
	ld sp,0f51fh		;bca4
	ld e,l			;bca7
	ret c			;bca8
	ret c			;bca9
	inc bc			;bcaa
	ret pe			;bcab
	add a,h			;bcac
	ret c			;bcad
	defb 0fdh,0f5h,080h ;illegal sequence	;bcae
	dec b			;bcb1
	ret po			;bcb2
	adc a,b			;bcb3
	ret pe			;bcb4
	adc a,l			;bcb5
	push de			;bcb6
	ld d,b			;bcb7
	ld d,b			;bcb8
	ld hl,03232h		;bcb9
	ex af,af'		;bcbc
	ld b,e			;bcbd
	ld b,0f3h		;bcbe
	dec b			;bcc0
	jp p,02103h		;bcc1
	ld (bc),a		;bcc4
	cpl			;bcc5
	add a,d			;bcc6
	pop af			;bcc7
	jp p,0f103h		;bcc8
	inc bc			;bccb
	inc (hl)		;bccc
	ld b,0f3h		;bccd
	dec b			;bccf
	jp p,02106h		;bcd0
	rlca			;bcd3
	ld (02103h),a		;bcd4
	ld (de),a		;bcd7
	pop af			;bcd8
	add a,l			;bcd9
	ld b,e			;bcda
	call po,03243h		;bcdb
	ld hl,01f03h		;bcde
	inc b			;bce1
	ld c,(hl)		;bce2
	add a,h			;bce3
	inc (hl)		;bce4
	inc hl			;bce5
	ld (de),a		;bce6
	pop af			;bce7
	ld b,0e4h		;bce8
	add a,d			;bcea
	ld b,e			;bceb
	ld (04308h),a		;bcec
	rlca			;bcef
	ld (02181h),a		;bcf0
	inc b			;bcf3
	ld (02102h),a		;bcf4
	ld (bc),a		;bcf7
	rra			;bcf8
	rlca			;bcf9
	ld (de),a		;bcfa
	add a,c			;bcfb
sub_bcfch:
	pop af			;bcfc
	nop			;bcfd
	ld (bc),a		;bcfe
	add a,b			;bcff
	rlca			;bd00
	ret nz			;bd01
	add a,e			;bd02
	add a,b			;bd03
	nop			;bd04
	add a,b			;bd05
	ex af,af'		;bd06
	ret nz			;bd07
	ld (bc),a		;bd08
	add a,b			;bd09
	ld (bc),a		;bd0a
	nop			;bd0b
	and e			;bd0c
	inc bc			;bd0d
	ld a,a			;bd0e
	ccf			;bd0f
	rrca			;bd10
	inc bc			;bd11
	ld a,a			;bd12
	rlca			;bd13
	nop			;bd14
	rra			;bd15
	rlca			;bd16
	rst 38h			;bd17
	rst 38h			;bd18
	cp 0f8h			;bd19
	ret nz			;bd1b
	nop			;bd1c
	rra			;bd1d
	rlca			;bd1e
	nop			;bd1f
	ret p			;bd20
	nop			;bd21
	nop			;bd22
	ret p			;bd23
	nop			;bd24
	rrca			;bd25
	nop			;bd26
	nop			;bd27
	rlca			;bd28
	rra			;bd29
	ccf			;bd2a
	ld a,a			;bd2b
	ld a,a			;bd2c
	rst 38h			;bd2d
	rst 38h			;bd2e
	nop			;bd2f
	inc bc			;bd30
	ret p			;bd31
	add a,h			;bd32
	ccf			;bd33
	rrca			;bd34
	inc bc			;bd35
	nop			;bd36
	inc bc			;bd37
	rrca			;bd38
	add a,h			;bd39
	rst 38h			;bd3a
	rrca			;bd3b
	rrca			;bd3c
	ld bc,00704h		;bd3d
	add a,c			;bd40
	inc bc			;bd41
	inc bc			;bd42
	ld bc,0f097h		;bd43
	call m,0fefeh		;bd46
	inc c			;bd49
	add a,c			;bd4a
	add a,c			;bd4b
	add a,a			;bd4c
	add a,a			;bd4d
	inc bc			;bd4e
	add a,a			;bd4f
	add a,a			;bd50
	ld a,a			;bd51
	ld a,a			;bd52
	ccf			;bd53
	inc c			;bd54
	add a,c			;bd55
	add a,c			;bd56
	rst 38h			;bd57
	rst 38h			;bd58
	ccf			;bd59
	rrca			;bd5a
	ld bc,00300h		;bd5b
	call p,0f30fh		;bd5e
	inc bc			;bd61
	jp p,0f103h		;bd62
	add a,c			;bd65
	ld (02104h),a		;bd66
	inc bc			;bd69
	djnz $-124		;bd6a
	ld d,e			;bd6c
	di			;bd6d
	inc bc			;bd6e
	jr nz,lbd74h		;bd6f
	djnz $-123		;bd71
	ld d,e			;bd73
lbd74h:
	jp p,003f2h		;bd74
	ld hl,01002h		;bd77
	inc bc			;bd7a
	call po,0f483h		;bd7b
	ld d,e			;bd7e
	ld d,e			;bd7f
	inc bc			;bd80
	out (003h),a		;bd81
	adc a,(hl)		;bd83
	add a,d			;bd84
	ret c			;bd85
	ld e,l			;bd86
	inc b			;bd87
	ld d,b			;bd88
	add a,d			;bd89
	ret nc			;bd8a
	adc a,l			;bd8b
	inc bc			;bd8c
	ret pe			;bd8d
	add a,l			;bd8e
	adc a,l			;bd8f
	push af			;bd90
	push af			;bd91
	ld e,l			;bd92
	ret c			;bd93
	inc b			;bd94
	adc a,(hl)		;bd95
	add a,c			;bd96
	ret c			;bd97
	dec b			;bd98
	ret pe			;bd99
	add a,e			;bd9a
	ret c			;bd9b
	ld e,l			;bd9c
	ret c			;bd9d
	inc bc			;bd9e
	adc a,(hl)		;bd9f
	add a,(hl)		;bda0
	ret c			;bda1
	out (0d3h),a		;bda2
	ld d,e			;bda4
	ret pe			;bda5
	ret c			;bda6
	inc bc			;bda7
	ld e,l			;bda8
	ld (bc),a		;bda9
	ld d,b			;bdaa
	add a,c			;bdab
	djnz lbdaeh		;bdac
lbdaeh:
	ld b,000h		;bdae
	ld (bc),a		;bdb0
	ld bc,07f85h		;bdb1
	ccf			;bdb4
	rra			;bdb5
	rrca			;bdb6
	inc bc			;bdb7
	inc bc			;bdb8
	nop			;bdb9
	inc bc			;bdba
	rst 38h			;bdbb
	add a,h			;bdbc
	add a,b			;bdbd
	ccf			;bdbe
	rrca			;bdbf
	inc bc			;bdc0
	ex af,af'		;bdc1
	nop			;bdc2
	add a,c			;bdc3
	ret p			;bdc4
	ld b,000h		;bdc5
	ld (bc),a		;bdc7
	rst 38h			;bdc8
	add a,h			;bdc9
	rrca			;bdca
	ccf			;bdcb
	rrca			;bdcc
	inc bc			;bdcd
	ex af,af'		;bdce
	nop			;bdcf
	add a,h			;bdd0
	rlca			;bdd1
	ccf			;bdd2
	ld a,a			;bdd3
	rlca			;bdd4
	inc b			;bdd5
	nop			;bdd6
	add a,h			;bdd7
	ret po			;bdd8
	call m,0e0feh		;bdd9
	nop			;bddc
	rlca			;bddd
	ret po			;bdde
	add a,c			;bddf
	add ix,bc		;bde0
	djnz lbde7h		;bde2
	pop af			;bde4
	add a,d			;bde5
	ret p			;bde6
lbde7h:
	djnz lbdf2h		;bde7
	ret p			;bde9
	ex af,af'		;bdea
	ret po			;bdeb
	add a,d			;bdec
	ld b,h			;bded
	push de			;bdee
	dec bc			;bdef
	ld d,b			;bdf0
	inc bc			;bdf1
lbdf2h:
	ret po			;bdf2
	add a,c			;bdf3
	call po,0e007h		;bdf4
	add a,c			;bdf7
	call po,08300h		;bdf8
	inc a			;bdfb
	ld a,03fh		;bdfc
	inc bc			;bdfe
	rra			;bdff
	inc bc			;be00
	rrca			;be01
	ld (bc),a		;be02
	rlca			;be03
	adc a,e			;be04
	rst 0			;be05
	jp po,0f8f0h		;be06
	call m,0fefeh		;be09
	call m,001e0h		;be0c
	rrca			;be0f
	inc bc			;be10
	cp 081h			;be11
	ld a,b			;be13
	rlca			;be14
	ld a,a			;be15
	adc a,b			;be16
	ld a,018h		;be17
	rlca			;be19
	rra			;be1a
	ccf			;be1b
	ld a,a			;be1c
	ld a,a			;be1d
	nop			;be1e
	inc bc			;be1f
	rrca			;be20
	ld (bc),a		;be21
	rlca			;be22
	add a,d			;be23
	inc bc			;be24
	ld bc,0ff03h		;be25
	ld (bc),a		;be28
	ld a,a			;be29
	add a,e			;be2a
	ccf			;be2b
	rra			;be2c
	rrca			;be2d
	nop			;be2e
	inc c			;be2f
	ret po			;be30
	ld (bc),a		;be31
	ret pe			;be32
	add a,d			;be33
	defb 0edh ;next byte illegal after ed	;be34
	push hl			;be35
	inc b			;be36
	ret pe			;be37
	ld (bc),a		;be38
	ret c			;be39
	add a,h			;be3a
	push de			;be3b
	ld e,a			;be3c
	di			;be3d
	di			;be3e
	ld b,031h		;be3f
	inc bc			;be41
	ld b,e			;be42
	add a,l			;be43
	di			;be44
	ld d,e			;be45
	ld d,e			;be46
	out (0d3h),a		;be47
	ex af,af'		;be49
	ld hl,03208h		;be4a
	nop			;be4d
	sub c			;be4e
	add a,b			;be4f
	ret nz			;be50
	ret po			;be51
	ret po			;be52
	call po,0f6f4h		;be53
	or 000h			;be56
	nop			;be58
	add a,b			;be59
	ret nz			;be5a
	ret po			;be5b
	ret p			;be5c
	ret m			;be5d
	call m,0030fh		;be5e
	rlca			;be61
	rlca			;be62
	inc bc			;be63
	inc bc			;be64
	ld bc,00003h		;be65
	add a,a			;be68
	add a,b			;be69
	ret nz			;be6a
	ret po			;be6b
	ret p			;be6c
	ret m			;be6d
	call m,000feh		;be6e
	ld a,(bc)		;be71
	jr nc,lbe7fh		;be72
	ret po			;be74
	ld (bc),a		;be75
	add a,b			;be76
	add a,c			;be77
	ret nc			;be78
	add hl,bc		;be79
	djnz lbe83h		;be7a
	ld b,b			;be7c
	nop			;be7d
	ld (bc),a		;be7e
lbe7fh:
	nop			;be7f
	sub (hl)		;be80
	ccf			;be81
	rst 38h			;be82
lbe83h:
	ret m			;be83
	ret nz			;be84
	call m,0f8f0h		;be85
	ret p			;be88
	ret po			;be89
	ret nz			;be8a
	add a,b			;be8b
	cp 0fch			;be8c
	ret p			;be8e
	di			;be8f
	ex (sp),hl		;be90
	rst 0			;be91
	add a,a			;be92
	rlca			;be93
	rrca			;be94
	rrca			;be95
	inc bc			;be96
	dec b			;be97
	rst 38h			;be98
	inc bc			;be99
	nop			;be9a
	ld (bc),a		;be9b
	rst 38h			;be9c
	add a,d			;be9d
	ccf			;be9e
	rlca			;be9f
	inc b			;bea0
	nop			;bea1
	dec b			;bea2
	rst 38h			;bea3
	add a,l			;bea4
	rra			;bea5
	inc bc			;bea6
	nop			;bea7
	ei			;bea8
	ei			;bea9
	inc bc			;beaa
	rst 30h			;beab
	ld (bc),a		;beac
	rst 20h			;bead
	adc a,e			;beae
	ld h,e			;beaf
	ccf			;beb0
	rra			;beb1
	rrca			;beb2
	rlca			;beb3
	inc bc			;beb4
	ld bc,00000h		;beb5
	dec sp			;beb8
	dec de			;beb9
	inc bc			;beba
	rlca			;bebb
	ld (bc),a		;bebc
	rrca			;bebd
	add a,c			;bebe
	inc bc			;bebf
	inc bc			;bec0
	rra			;bec1
	inc bc			;bec2
	rrca			;bec3
	ld (bc),a		;bec4
	rlca			;bec5
	ld a,(bc)		;bec6
	rst 38h			;bec7
	inc bc			;bec8
	ld a,a			;bec9
	inc bc			;beca
	ccf			;becb
	inc bc			;becc
	rra			;becd
	inc bc			;bece
	rrca			;becf
	add a,h			;bed0
	ld b,005h		;bed1
	inc bc			;bed3
	inc bc			;bed4
	inc bc			;bed5
	rlca			;bed6
	ld (bc),a		;bed7
	rrca			;bed8
	add a,c			;bed9
	inc bc			;beda
	inc bc			;bedb
	rrca			;bedc
	inc bc			;bedd
	rra			;bede
	ld (bc),a		;bedf
	ccf			;bee0
	ld (bc),a		;bee1
	ret nz			;bee2
	inc bc			;bee3
	ret po			;bee4
	inc bc			;bee5
	ret p			;bee6
	inc bc			;bee7
	ret m			;bee8
	inc bc			;bee9
	call m,0fe02h		;beea
	add a,e			;beed
	add a,b			;beee
	ret p			;beef
	cp 004h			;bef0
	rst 38h			;bef2
	add a,(hl)		;bef3
	ccf			;bef4
	ld a,a			;bef5
	ccf			;bef6
	rra			;bef7
	rst 28h			;bef8
	rst 28h			;bef9
	inc bc			;befa
	rst 30h			;befb
	inc bc			;befc
	rst 38h			;befd
	dec b			;befe
	nop			;beff
	add a,h			;bf00
	ret m			;bf01
	ret p			;bf02
	ex (sp),hl		;bf03
	rst 18h			;bf04
	inc b			;bf05
	rst 38h			;bf06
	add a,d			;bf07
	inc c			;bf08
	ld a,h			;bf09
	inc bc			;bf0a
	ret m			;bf0b
	inc b			;bf0c
	ret p			;bf0d
	dec b			;bf0e
	nop			;bf0f
	add a,d			;bf10
	cp 070h			;bf11
	inc b			;bf13
	rst 38h			;bf14
	add a,a			;bf15
	ret m			;bf16
	ret nz			;bf17
	nop			;bf18
	nop			;bf19
	rst 38h			;bf1a
	call m,005e0h		;bf1b
	nop			;bf1e
	add a,d			;bf1f
	ld a,a			;bf20
	ccf			;bf21
	inc bc			;bf22
	rra			;bf23
	add a,h			;bf24
	rrca			;bf25
	ld bc,00700h		;bf26
	rlca			;bf29
	nop			;bf2a
	ld (bc),a		;bf2b
	rst 38h			;bf2c
	add a,d			;bf2d
	rra			;bf2e
	inc bc			;bf2f
	inc b			;bf30
	nop			;bf31
	inc bc			;bf32
	inc bc			;bf33
	inc bc			;bf34
	ld bc,00002h		;bf35
	ld (bc),a		;bf38
	rst 38h			;bf39
	adc a,e			;bf3a
	ld a,a			;bf3b
	ccf			;bf3c
	rra			;bf3d
	rrca			;bf3e
	rlca			;bf3f
	inc bc			;bf40
	ld bc,00301h		;bf41
	rlca			;bf44
	rrca			;bf45
	inc bc			;bf46
	rlca			;bf47
	ld (bc),a		;bf48
	rra			;bf49
	inc bc			;bf4a
	rrca			;bf4b
	inc bc			;bf4c
	rlca			;bf4d
	sub c			;bf4e
	rst 38h			;bf4f
	nop			;bf50
	ret p			;bf51
	call m,00fc3h		;bf52
	ccf			;bf55
	call m,00fc3h		;bf56
	ccf			;bf59
	jr nc,$-62		;bf5a
	add a,b			;bf5c
	call m,0c0f0h		;bf5d
	ld b,0f8h		;bf60
	sub c			;bf62
	rst 38h			;bf63
	nop			;bf64
	inc bc			;bf65
	inc e			;bf66
	ret po			;bf67
	ret p			;bf68
	cp 0f8h			;bf69
	ret nz			;bf6b
	call m,0f8fch		;bf6c
	nop			;bf6f
	nop			;bf70
	rst 30h			;bf71
	rst 30h			;bf72
	di			;bf73
	inc b			;bf74
	rrca			;bf75
	add a,(hl)		;bf76
	rra			;bf77
	rrca			;bf78
	rla			;bf79
	dec sp			;bf7a
	dec a			;bf7b
	ld a,(hl)		;bf7c
	dec b			;bf7d
	rst 38h			;bf7e
	add a,(hl)		;bf7f
	ld a,a			;bf80
	rst 38h			;bf81
	ccf			;bf82
	rra			;bf83
	rlca			;bf84
	ld bc,00003h		;bf85
	sub b			;bf88
	rst 38h			;bf89
	rst 30h			;bf8a
	rst 30h			;bf8b
	ei			;bf8c
	ld sp,hl		;bf8d
	ret m			;bf8e
	inc a			;bf8f
	ld b,07fh		;bf90
	ccf			;bf92
	rra			;bf93
	rrca			;bf94
	rlca			;bf95
	inc bc			;bf96
	ld bc,00300h		;bf97
	rst 38h			;bf9a
	sub a			;bf9b
	ld a,a			;bf9c
	rrca			;bf9d
	ld bc,0f07fh		;bf9e
	nop			;bfa1
	rst 38h			;bfa2
	rst 38h			;bfa3
	nop			;bfa4
	rlca			;bfa5
	inc bc			;bfa6
	ld bc,07f00h		;bfa7
	ccf			;bfaa
	rla			;bfab
	inc bc			;bfac
	ld de,08cf8h		;bfad
	ld b,0ffh		;bfb0
	rst 38h			;bfb2
	ld b,000h		;bfb3
	adc a,b			;bfb5
	add a,b			;bfb6
	adc a,b			;bfb7
	ret z			;bfb8
	call z,0f8eeh		;bfb9
	adc a,h			;bfbc
	ld b,003h		;bfbd
	ret p			;bfbf
	add a,d			;bfc0
	ret m			;bfc1
	call m,0ff03h		;bfc2
	add a,c			;bfc5
	ret m			;bfc6
	inc bc			;bfc7
	call m,0fe03h		;bfc8
	inc bc			;bfcb
	ld a,a			;bfcc
	inc bc			;bfcd
	ccf			;bfce
	inc bc			;bfcf
	rra			;bfd0
	inc bc			;bfd1
	rrca			;bfd2
	xor a			;bfd3
	ret m			;bfd4
	ret z			;bfd5
	adc a,b			;bfd6
	inc a			;bfd7
	call m,0efefh		;bfd8
	rst 8			;bfdb
	add a,a			;bfdc
	rlca			;bfdd
	rlca			;bfde
	inc bc			;bfdf
	inc bc			;bfe0
	nop			;bfe1
	nop			;bfe2
	ld a,a			;bfe3
	ccf			;bfe4
	rlca			;bfe5
	ccf			;bfe6
	rra			;bfe7
	rlca			;bfe8
	rst 38h			;bfe9
	nop			;bfea
	nop			;bfeb
	rst 38h			;bfec
	ret po			;bfed
	call m,0e0f8h		;bfee
	ret p			;bff1
	ret nz			;bff2
	call m,0c3f0h		;bff3
	rlca			;bff6
	ccf			;bff7
	call m,0fef0h		;bff8
	ret po			;bffb
	call m,0fce8h		;bffc
	nop			;bfff
