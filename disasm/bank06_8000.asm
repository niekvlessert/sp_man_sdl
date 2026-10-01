; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank06_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank06.bin

	org 08000h

l8000h:
	call 06a13h		;8000
	call 06e91h		;8003
	ld a,(ix+001h)		;8006
	dec a			;8009
	jr z,l8049h		;800a
	dec a			;800c
	jr z,l8040h		;800d
	call 06754h		;800f
	ld b,007h		;8012
l8014h:
	push bc			;8014
	call 06814h		;8015
	jp c,0469fh		;8018
	call 06926h		;801b
	call 0699eh		;801e
	pop bc			;8021
	djnz l8014h		;8022
	call 0a12bh		;8024
	call 0a10fh		;8027
	call 06c4bh		;802a
	ld a,(0ca04h)		;802d
	and a			;8030
	ld a,020h		;8031
	jr z,l8037h		;8033
	ld a,040h		;8035
l8037h:
	ld (ix+016h),a		;8037
	call 069d7h		;803a
	jp 06c1dh		;803d
l8040h:
	ld a,(0c0d4h)		;8040
	cp 003h			;8043
	ret nz			;8045
	jp 06c1dh		;8046
l8049h:
	call 0a0b6h		;8049
	call 06ad2h		;804c
	call z,0a12bh		;804f
	call 06adfh		;8052
	ret nz			;8055
	call 0a10fh		;8056
	ld a,(ix+021h)		;8059
	cp 008h			;805c
	jr c,l8061h		;805e
	xor a			;8060
l8061h:
	ld l,a			;8061
	inc a			;8062
	ld (ix+021h),a		;8063
	ld h,000h		;8066
	ld de,0a0a4h		;8068
	add hl,de		;806b
	ld b,(hl)		;806c
	ld a,(0ca04h)		;806d
	and a			;8070
	jr nz,l8076h		;8071
	ld a,b			;8073
	rlca			;8074
	ret c			;8075
l8076h:
	ld a,b			;8076
	and a			;8077
	ret z			;8078
	and 003h		;8079
	dec a			;807b
	jr z,l808ch		;807c
	dec a			;807e
	jr z,l8095h		;807f
	dec a			;8081
	jr z,l8084h		;8082
l8084h:
	ld hl,0a0b1h		;8084
	ld bc,00008h		;8087
	jr l809bh		;808a
l808ch:
	ld hl,0a0b1h		;808c
	ld bc,00008h		;808f
	call 0a09bh		;8092
l8095h:
	ld hl,0a0ach		;8095
	ld bc,000feh		;8098
l809bh:
	ld a,(ix+022h)		;809b
	ld (0ca26h),a		;809e
	jp 07306h		;80a1
	add a,d			;80a4
	add a,e			;80a5
	nop			;80a6
	nop			;80a7
	add a,d			;80a8
	inc bc			;80a9
	ld (bc),a		;80aa
	add a,c			;80ab
	nop			;80ac
	rrca			;80ad
	ld c,00dh		;80ae
	rst 38h			;80b0
	nop			;80b1
	ld bc,00302h		;80b2
	rst 38h			;80b5
	ld a,(ix+023h)		;80b6
	and a			;80b9
	call z,0a0cch		;80ba
	dec (ix+023h)		;80bd
	ld e,(ix+011h)		;80c0
	ld d,(ix+012h)		;80c3
	ld hl,00000h		;80c6
	jp 06c6dh		;80c9
	ld a,(ix+024h)		;80cc
	cp 007h			;80cf
	jr c,l80d4h		;80d1
	xor a			;80d3
l80d4h:
	ld l,a			;80d4
	inc a			;80d5
	ld (ix+024h),a		;80d6
	ld h,000h		;80d9
	add hl,hl		;80db
	ld de,0a0f7h		;80dc
	add hl,de		;80df
	ld a,(hl)		;80e0
	ld (ix+023h),a		;80e1
	inc hl			;80e4
	ld l,(hl)		;80e5
	ld h,000h		;80e6
	add hl,hl		;80e8
	ld de,0a105h		;80e9
	add hl,de		;80ec
	ld a,(hl)		;80ed
	ld (ix+011h),a		;80ee
	inc hl			;80f1
	ld a,(hl)		;80f2
	ld (ix+012h),a		;80f3
	ret			;80f6
	ld b,b			;80f7
	nop			;80f8
	djnz l80ffh		;80f9
	ex af,af'		;80fb
	ld bc,00040h		;80fc
l80ffh:
	ex af,af'		;80ff
	ld bc,00020h		;8100
	ex af,af'		;8103
	inc bc			;8104
	nop			;8105
	nop			;8106
	jr nz,l8109h		;8107
l8109h:
	ret po			;8109
	rst 38h			;810a
	ld b,b			;810b
	nop			;810c
	ret nz			;810d
	rst 38h			;810e
	ld a,(ix+016h)		;810f
	ld b,a			;8112
	and a			;8113
	jr nz,l8117h		;8114
	inc b			;8116
l8117h:
	cp 018h			;8117
	jr nc,l811dh		;8119
	ld a,018h		;811b
l811dh:
	ld (ix+018h),a		;811d
	xor a			;8120
	sub b			;8121
	rrca			;8122
	rrca			;8123
	rrca			;8124
	and 01fh		;8125
	ld (ix+022h),a		;8127
	ret			;812a
	res 7,(ix+014h)		;812b
	ld a,(ix+020h)		;812f
	cp 00eh			;8132
	jr c,l8137h		;8134
	xor a			;8136
l8137h:
	ld l,a			;8137
	inc a			;8138
	ld (ix+020h),a		;8139
	ld h,000h		;813c
	add hl,hl		;813e
	ld de,0a15fh		;813f
	add hl,de		;8142
	ld e,(hl)		;8143
	inc hl			;8144
	ld a,(hl)		;8145
	ld (ix+017h),e		;8146
	ld (ix+006h),a		;8149
	cp 004h			;814c
	jr nz,l8157h		;814e
	call 07ca7h		;8150
	set 7,(ix+014h)		;8153
l8157h:
	dec a			;8157
	dec a			;8158
	ret nz			;8159
	ld a,029h		;815a
	jp 04af5h		;815c
	inc bc			;815f
	inc b			;8160
	ld (bc),a		;8161
	nop			;8162
	inc b			;8163
	ld bc,00204h		;8164
	inc b			;8167
	ld bc,00208h		;8168
	ld (bc),a		;816b
	inc bc			;816c
	ex af,af'		;816d
	inc b			;816e
	ld (bc),a		;816f
	nop			;8170
	inc b			;8171
	ld bc,00218h		;8172
	inc b			;8175
	ld bc,00202h		;8176
	ld (bc),a		;8179
	inc bc			;817a
	call 0a2a9h		;817b
	call 0a22dh		;817e
	ld a,(ix+001h)		;8181
	call 0461ah		;8184
	sub c			;8187
	and c			;8188
	sbc a,d			;8189
	and c			;818a
	cp e			;818b
	and c			;818c
	rst 20h			;818d
	and c			;818e
	dec b			;818f
	and d			;8190
	call 0a24ah		;8191
	call 0a235h		;8194
	jp 06c1dh		;8197
	call 06ad2h		;819a
	ret nz			;819d
	ld a,(ix+020h)		;819e
	ld c,a			;81a1
	and a			;81a2
	ld b,004h		;81a3
	jr z,l81a9h		;81a5
	ld b,008h		;81a7
l81a9h:
	call 06ab8h		;81a9
	ret nz			;81ac
	ld a,c			;81ad
	call 0a26ah		;81ae
	call 0a235h		;81b1
	ld (ix+017h),006h	;81b4
	jp 06c1dh		;81b8
	call 06ad2h		;81bb
	ret nz			;81be
	ld a,(ix+020h)		;81bf
	and a			;81c2
	ld de,0a275h		;81c3
	jr z,l81cbh		;81c6
	ld de,0a27ah		;81c8
l81cbh:
	ld a,(ix+021h)		;81cb
	inc a			;81ce
	cp 005h			;81cf
	jp nc,06c1dh		;81d1
	ld (ix+021h),a		;81d4
	ld b,a			;81d7
	ld l,a			;81d8
	ld h,000h		;81d9
	add hl,de		;81db
	ld a,(hl)		;81dc
	ld (ix+006h),a		;81dd
	dec b			;81e0
	ret nz			;81e1
	ld a,028h		;81e2
	jp 04af5h		;81e4
	ld a,(ix+020h)		;81e7
	and a			;81ea
	ld b,004h		;81eb
	jr z,l81f1h		;81ed
	ld b,00ah		;81ef
l81f1h:
	ld a,(0ca02h)		;81f1
	and 003h		;81f4
	jp po,0a1fah		;81f6
	xor a			;81f9
	add a,b			;81fa
	ld (ix+006h),a		;81fb
	call 06adfh		;81fe
	ret nz			;8201
	jp 06c1dh		;8202
	ld a,(ix+020h)		;8205
	and a			;8208
	ld de,0a275h		;8209
	jr z,l8211h		;820c
	ld de,0a27ah		;820e
l8211h:
	ld a,(ix+021h)		;8211
	sub 001h		;8214
	jp c,0a225h		;8216
	ld (ix+021h),a		;8219
	ld l,a			;821c
	ld h,000h		;821d
	add hl,de		;821f
	ld a,(hl)		;8220
	ld (ix+006h),a		;8221
	ret			;8224
	call 0a235h		;8225
	ld (ix+001h),001h	;8228
	ret			;822c
	ld a,(0ce52h)		;822d
	and a			;8230
	ret z			;8231
	jp 06e98h		;8232
	ld de,0a29bh		;8235
	ld l,(ix+038h)		;8238
	dec l			;823b
	ld h,000h		;823c
	add hl,hl		;823e
	add hl,de		;823f
	ld e,(hl)		;8240
	inc hl			;8241
	ld d,(hl)		;8242
	ld (ix+017h),e		;8243
	ld (ix+018h),d		;8246
	ret			;8249
	ld l,(ix+038h)		;824a
	dec l			;824d
	ld h,000h		;824e
	add hl,hl		;8250
	add hl,hl		;8251
	ld de,0a27fh		;8252
	add hl,de		;8255
	ld a,(hl)		;8256
	add a,(ix+008h)		;8257
	ld (ix+008h),a		;825a
	inc hl			;825d
	ld a,(hl)		;825e
	add a,(ix+00ah)		;825f
	ld (ix+00ah),a		;8262
	inc hl			;8265
	ld a,(hl)		;8266
	ld (ix+020h),a		;8267
	and a			;826a
	ld a,000h		;826b
	jr z,l8271h		;826d
	ld a,004h		;826f
l8271h:
	ld (ix+005h),a		;8271
	ret			;8274
	nop			;8275
	ld bc,00302h		;8276
	inc b			;8279
	nop			;827a
	rlca			;827b
	ex af,af'		;827c
	add hl,bc		;827d
	ld a,(bc)		;827e
	defb 0fdh,0fdh,000h ;illegal sequence	;827f
	nop			;8282
	ld sp,iy		;8283
	nop			;8285
	nop			;8286
	defb 0fdh,0f6h,000h ;illegal sequence	;8287
	nop			;828a
	defb 0fdh,0f3h,000h ;illegal sequence	;828b
	nop			;828e
	cp 0f0h			;828f
	ld bc,0fe00h		;8291
	xor 001h		;8294
	nop			;8296
	cp 0ebh			;8297
	ld bc,04000h		;8299
	ex af,af'		;829c
	add a,b			;829d
	ex af,af'		;829e
	jr nz,l82a9h		;829f
	ld b,b			;82a1
	ex af,af'		;82a2
	jr nc,l82adh		;82a3
	add a,b			;82a5
	ex af,af'		;82a6
	ex af,af'		;82a7
	ex af,af'		;82a8
l82a9h:
	ld a,(0ca41h)		;82a9
	and a			;82ac
l82adh:
	ret z			;82ad
	jp 06e98h		;82ae
	ld a,(ix+001h)		;82b1
	and a			;82b4
	jr nz,l82c3h		;82b5
	call 06754h		;82b7
	call 06796h		;82ba
	ld (ix+006h),a		;82bd
	jp 06c1dh		;82c0
l82c3h:
	ld a,(ix+006h)		;82c3
	and a			;82c6
	jr nz,l82ceh		;82c7
	ld a,0fbh		;82c9
	call 06c75h		;82cb
l82ceh:
	ld a,(0ce52h)		;82ce
	and a			;82d1
	ret z			;82d2
	ld (ix+004h),0ffh	;82d3
	ret			;82d7
	call 06a13h		;82d8
	call 06e91h		;82db
	ld a,0f3h		;82de
	call 06c75h		;82e0
	call 0a2ech		;82e3
	ld de,0a494h		;82e6
	jp 07b65h		;82e9
	ld a,(ix+001h)		;82ec
	call 0461ah		;82ef
	nop			;82f2
	and e			;82f3
	dec l			;82f4
	and e			;82f5
	jr c,$-91		;82f6
	ld d,e			;82f8
	and e			;82f9
	ld h,d			;82fa
	and e			;82fb
	ld (hl),c		;82fc
	and e			;82fd
	add a,b			;82fe
	and e			;82ff
	ld (ix+00ah),028h	;8300
	ld (ix+008h),00ch	;8304
	ld (ix+006h),006h	;8308
	xor a			;830c
	call 06c5ch		;830d
	call 067feh		;8310
	ld bc,00406h		;8313
	call 06929h		;8316
	ld (ix+026h),012h	;8319
	ld a,(0ca04h)		;831d
	and a			;8320
	jr z,l8327h		;8321
	ld (ix+016h),06ch	;8323
l8327h:
	call 069d7h		;8327
	jp 06c1dh		;832a
	call 0688bh		;832d
	call nc,06886h		;8330
	call 06c1dh		;8333
	jr l838eh		;8336
	dec (ix+026h)		;8338
	jr nz,l8340h		;833b
	dec (ix+006h)		;833d
l8340h:
	call 0a45ch		;8340
	call 0a3f9h		;8343
	ret nz			;8346
	set 7,(ix+014h)		;8347
	call 0a430h		;834b
	call 06c1dh		;834e
	jr l838eh		;8351
	call 0a45ch		;8353
	call 0a40dh		;8356
	call 0a3f9h		;8359
	ret nz			;835c
	call 06c1dh		;835d
	jr l838eh		;8360
	call 0a3dfh		;8362
	call 0a45ch		;8365
	call 0a3f9h		;8368
	ret nz			;836b
	call 06c1dh		;836c
	jr l838eh		;836f
	call 0a45ch		;8371
	call 0a413h		;8374
	call 0a3f9h		;8377
	ret nz			;837a
	call 06c1dh		;837b
	jr l838eh		;837e
	call 0a3c4h		;8380
	call 0a45ch		;8383
	call 0a3f9h		;8386
	ret nz			;8389
	ld (ix+001h),003h	;838a
l838eh:
	ld a,(ix+001h)		;838e
	dec a			;8391
	dec a			;8392
	ld l,a			;8393
	ld h,000h		;8394
	add hl,hl		;8396
	add hl,hl		;8397
	ld de,0a3b0h		;8398
	add hl,de		;839b
	ld a,(hl)		;839c
	ld (ix+011h),a		;839d
	inc hl			;83a0
	ld a,(hl)		;83a1
	ld (ix+012h),a		;83a2
	inc hl			;83a5
	ld a,(hl)		;83a6
	ld (ix+017h),a		;83a7
	inc hl			;83aa
	ld a,(hl)		;83ab
	ld (ix+020h),a		;83ac
	ret			;83af
	ret nz			;83b0
	rst 38h			;83b1
	ld e,b			;83b2
	ld bc,00000h		;83b3
	inc h			;83b6
	ld bc,0ffc0h		;83b7
	jr z,$+18		;83ba
	nop			;83bc
	nop			;83bd
	inc h			;83be
	ld bc,00040h		;83bf
	jr z,l83d8h		;83c2
	ld a,(ix+020h)		;83c4
	dec a			;83c7
	jr z,l83ceh		;83c8
	ld (ix+020h),a		;83ca
	ret			;83cd
l83ceh:
	ld a,(ix+006h)		;83ce
	inc a			;83d1
	cp 006h			;83d2
	ret z			;83d4
	ld (ix+006h),a		;83d5
l83d8h:
	dec a			;83d8
	ret nz			;83d9
	ld a,026h		;83da
	jp 04af5h		;83dc
	ld a,(ix+020h)		;83df
	dec a			;83e2
	jr z,l83e9h		;83e3
	ld (ix+020h),a		;83e5
	ret			;83e8
l83e9h:
	ld a,(ix+006h)		;83e9
	and a			;83ec
	ret z			;83ed
	dec a			;83ee
	ld (ix+006h),a		;83ef
	and a			;83f2
	ret nz			;83f3
	ld a,027h		;83f4
	jp 04af5h		;83f6
	call 06ad2h		;83f9
	ret z			;83fc
	ld e,(ix+011h)		;83fd
	ld d,(ix+012h)		;8400
	ld hl,00000h		;8403
	call 06c6dh		;8406
	ld a,001h		;8409
	and a			;840b
	ret			;840c
	ld (ix+024h),000h	;840d
	jr l8416h		;8411
	inc (ix+024h)		;8413
l8416h:
	call 06adfh		;8416
	ret nz			;8419
	ld a,(ix+023h)		;841a
	dec (ix+023h)		;841d
	and a			;8420
	ret nz			;8421
	ld (ix+023h),002h	;8422
	call 0a560h		;8426
	inc (ix+025h)		;8429
	dec (ix+021h)		;842c
	ret nz			;842f
	ld l,(ix+022h)		;8430
	inc (ix+022h)		;8433
	ld h,000h		;8436
	add hl,hl		;8438
	ld de,0a453h		;8439
	add hl,de		;843c
	ld a,(hl)		;843d
	and a			;843e
	jr nz,l8445h		;843f
	ld (ix+022h),a		;8441
	ex de,hl		;8444
l8445h:
	ld a,(hl)		;8445
	ld (ix+018h),a		;8446
	inc hl			;8449
	ld a,(hl)		;844a
	ld (ix+021h),a		;844b
	ld (ix+025h),000h	;844e
	ret			;8452
	ld b,006h		;8453
	ld (de),a		;8455
	ex af,af'		;8456
	ex af,af'		;8457
	inc b			;8458
	ld (de),a		;8459
	ex af,af'		;845a
	nop			;845b
	ld a,(ix+006h)		;845c
	and a			;845f
	jr z,l8472h		;8460
	cp 005h			;8462
	jr z,l8472h		;8464
	ld l,a			;8466
	ld h,000h		;8467
	ld de,0a486h		;8469
	add hl,de		;846c
	ld a,(hl)		;846d
	ld (ix+005h),a		;846e
	ret			;8471
l8472h:
	call 06b94h		;8472
	ld a,c			;8475
	add a,002h		;8476
	and 007h		;8478
	ld l,a			;847a
	ld h,000h		;847b
	ld de,0a48ch		;847d
	add hl,de		;8480
	ld a,(hl)		;8481
	ld (ix+005h),a		;8482
	ret			;8485
	dec b			;8486
	nop			;8487
	ld bc,00404h		;8488
	dec b			;848b
	ld (bc),a		;848c
	inc bc			;848d
	inc b			;848e
	dec b			;848f
	dec b			;8490
	dec b			;8491
	ld (bc),a		;8492
	ld (bc),a		;8493
	and d			;8494
	and h			;8495
	or a			;8496
	and h			;8497
	call z,0e1a4h		;8498
	and h			;849b
	or 0a4h			;849c
	dec bc			;849e
	and l			;849f
	jr nz,$-89		;84a0
	dec d			;84a2
	nop			;84a3
	nop			;84a4
	ld bc,0fe00h		;84a5
	nop			;84a8
	ld a,(bc)		;84a9
	ld bc,0fe0ah		;84aa
	nop			;84ad
	inc b			;84ae
	ld bc,0fe01h		;84af
	inc b			;84b2
	rst 30h			;84b3
	ld bc,0ff07h		;84b4
	dec d			;84b7
	nop			;84b8
	nop			;84b9
	ld bc,0fe00h		;84ba
	nop			;84bd
	ld a,(bc)		;84be
	ld bc,0fe0ah		;84bf
	ld bc,001f6h		;84c2
	rlca			;84c5
	cp 000h			;84c6
	inc bc			;84c8
	ld bc,0ff02h		;84c9
	dec d			;84cc
	nop			;84cd
	nop			;84ce
	ld bc,0fe00h		;84cf
	nop			;84d2
	ld a,(bc)		;84d3
	ld bc,0fe0ah		;84d4
	rst 38h			;84d7
	push af			;84d8
	ld bc,0fe07h		;84d9
	nop			;84dc
	ld (bc),a		;84dd
	ld bc,0ff03h		;84de
	dec d			;84e1
	nop			;84e2
	nop			;84e3
	ld bc,0fe00h		;84e4
	nop			;84e7
	ld a,(bc)		;84e8
	ld bc,0fe0ah		;84e9
	defb 0fdh,0f6h,001h ;illegal sequence	;84ec
	rlca			;84ef
	cp 0feh			;84f0
	inc bc			;84f2
	ld bc,0ff04h		;84f3
	dec d			;84f6
	nop			;84f7
	nop			;84f8
	ld bc,0fe00h		;84f9
	nop			;84fc
	ld a,(bc)		;84fd
	ld bc,0fe0ah		;84fe
	jp m,001f7h		;8501
	rlca			;8504
	cp 0fbh			;8505
	inc b			;8507
	ld bc,0ff05h		;8508
	dec d			;850b
	nop			;850c
	nop			;850d
	ld bc,0fe00h		;850e
	nop			;8511
	ld a,(bc)		;8512
	ld bc,0fe0ah		;8513
	ret m			;8516
	ld sp,hl		;8517
	ld bc,0fe07h		;8518
	ld sp,hl		;851b
	ld b,001h		;851c
	ld b,0ffh		;851e
	djnz l8522h		;8520
l8522h:
	nop			;8522
	ld bc,0fe00h		;8523
	ld sp,hl		;8526
	ld b,001h		;8527
	ld b,0feh		;8529
	ret m			;852b
	ld sp,hl		;852c
	ld bc,0ff07h		;852d
	ld a,(ix+001h)		;8530
	and a			;8533
	jr nz,l853dh		;8534
	ld (ix+020h),000h	;8536
	jp 06c1dh		;853a
l853dh:
	ld a,(0ca3bh)		;853d
	add a,(ix+00ah)		;8540
	and 007h		;8543
	ld d,a			;8545
	ld a,(0ca1ch)		;8546
	add a,(ix+009h)		;8549
	jr nc,l854fh		;854c
	inc d			;854e
l854fh:
	res 3,d			;854f
	ld a,(ix+020h)		;8551
	add a,d			;8554
	ld (ix+006h),a		;8555
	ld a,(0ce52h)		;8558
	and a			;855b
	ret z			;855c
	jp 06e98h		;855d
	ld a,040h		;8560
	call 0684ch		;8562
	ret c			;8565
	ld a,(ix+024h)		;8566
	ld (iy+024h),a		;8569
	ld a,(ix+021h)		;856c
	ld (iy+021h),a		;856f
	ld a,(ix+025h)		;8572
	and 003h		;8575
	ld bc,00c00h		;8577
	add a,b			;857a
	ld b,a			;857b
	jp 06929h		;857c
	ld a,(ix+001h)		;857f
	dec a			;8582
	jr z,l85a7h		;8583
	dec a			;8585
	jr z,l85b1h		;8586
	dec a			;8588
	jr z,l8608h		;8589
	ld a,(ix+024h)		;858b
	and a			;858e
	ld a,00bh		;858f
	jr z,l8595h		;8591
	ld a,004h		;8593
l8595h:
	ld (ix+017h),a		;8595
	ld hl,0ffa0h		;8598
	call 06bf3h		;859b
	ld hl,0fff8h		;859e
	call 06c0ch		;85a1
	jp 06c1dh		;85a4
l85a7h:
	call 06a9ah		;85a7
	call 06ad2h		;85aa
	ret nz			;85ad
	jp 06c1dh		;85ae
l85b1h:
	ld a,(0ca02h)		;85b1
	and 003h		;85b4
	ret nz			;85b6
	ld b,003h		;85b7
	call 06ab8h		;85b9
	cp 002h			;85bc
	ret c			;85be
	ld iy,0ca40h		;85bf
	ld a,01dh		;85c3
	call 06b85h		;85c5
	call 09da9h		;85c8
	cp 098h			;85cb
	jr c,l85d1h		;85cd
	ld a,098h		;85cf
l85d1h:
	push af			;85d1
	ex af,af'		;85d2
	call 04678h		;85d3
	and 007h		;85d6
	add a,a			;85d8
	add a,a			;85d9
	ld b,a			;85da
	ex af,af'		;85db
	sub b			;85dc
	call 09de8h		;85dd
	call 06b6fh		;85e0
	pop af			;85e3
	rlca			;85e4
	rlca			;85e5
	rlca			;85e6
	and 007h		;85e7
	ld l,a			;85e9
	ld h,000h		;85ea
	ld de,0a601h		;85ec
	add hl,de		;85ef
	ld a,(hl)		;85f0
	ld (ix+018h),a		;85f1
	ld (ix+017h),006h	;85f4
	ld hl,00012h		;85f8
	call 06c0ch		;85fb
	jp 06c1dh		;85fe
	djnz $+12		;8601
	ex af,af'		;8603
	ld c,00bh		;8604
	add hl,bc		;8606
	inc b			;8607
l8608h:
	call 0a61eh		;8608
	call 0a62dh		;860b
	call 06adfh		;860e
	ret nz			;8611
	call 06a9ah		;8612
	call 06ad2h		;8615
	ret nz			;8618
	ld (ix+005h),003h	;8619
	ret			;861d
	ld a,(ix+008h)		;861e
	add a,001h		;8621
	ret nc			;8623
	ld (ix+008h),000h	;8624
	ld (ix+007h),000h	;8628
	ret			;862c
	ld de,00101h		;862d
	call 0a63ah		;8630
	ret z			;8633
	ret c			;8634
	ld (ix+004h),0ffh	;8635
	ret			;8639
	ld a,e			;863a
	add a,(ix+008h)		;863b
	ld e,a			;863e
	ld a,d			;863f
	add a,(ix+00ah)		;8640
	ld d,a			;8643
	jp 0753ch		;8644
	ld a,0ffh		;8647
	call 06c75h		;8649
	call 06a13h		;864c
	ld de,0a7c3h		;864f
	call 07b65h		;8652
	call 06ad2h		;8655
	call z,0a795h		;8658
	ld a,(ix+001h)		;865b
	dec a			;865e
	jr z,l8682h		;865f
	dec a			;8661
	jr z,l8697h		;8662
	jp p,0a6adh		;8664
	ld (ix+008h),001h	;8667
	ld (ix+00ah),01fh	;866b
	ld (ix+018h),014h	;866f
	call 0a768h		;8673
	call 0a795h		;8676
	call 0a6c3h		;8679
	call 069d7h		;867c
	jp 06c1dh		;867f
l8682h:
	call 0a6c3h		;8682
	ld a,(ix+00ah)		;8685
	cp 00eh			;8688
	ret nc			;868a
	ld de,00000h		;868b
	ld hl,00000h		;868e
	call 06c6dh		;8691
	call 06c1dh		;8694
l8697h:
	ld hl,00000h		;8697
	ld de,00040h		;869a
	call 06c6dh		;869d
	call 0a6cch		;86a0
	ld a,(ix+00ah)		;86a3
	cp 015h			;86a6
	ret c			;86a8
	inc (ix+001h)		;86a9
	ret			;86ac
	ld hl,00000h		;86ad
	ld de,0ffc0h		;86b0
	call 06c6dh		;86b3
	call 0a6cch		;86b6
	ld a,(ix+00ah)		;86b9
	cp 00ah			;86bc
	ret nc			;86be
	dec (ix+001h)		;86bf
	ret			;86c2
	ld de,0ffe0h		;86c3
	ld hl,00000h		;86c6
	jp 06c6dh		;86c9
	ld a,(ix+002h)		;86cc
	cp 005h			;86cf
	jp nc,04ae0h		;86d1
	call 0461ah		;86d4
	pop hl			;86d7
	and (hl)		;86d8
	jp (hl)			;86d9
	and (hl)		;86da
	ld sp,hl		;86db
	and (hl)		;86dc
	inc d			;86dd
	and a			;86de
	add hl,sp		;86df
	and a			;86e0
	dec (ix+018h)		;86e1
	ret nz			;86e4
	inc (ix+002h)		;86e5
	ret			;86e8
	call 0a759h		;86e9
	ld a,(ix+003h)		;86ec
	or a			;86ef
	ret nz			;86f0
	inc (ix+002h)		;86f1
	ld (ix+018h),00ah	;86f4
	ret			;86f8
	dec (ix+018h)		;86f9
	ret nz			;86fc
	ld a,(ix+023h)		;86fd
	call 0a762h		;8700
	ld (ix+023h),a		;8703
	inc a			;8706
	ld (ix+021h),a		;8707
	ld (ix+022h),002h	;870a
	ld (ix+018h),005h	;870e
	jr l8732h		;8712
	call 0a759h		;8714
	dec (ix+018h)		;8717
	ret nz			;871a
	ld a,(ix+023h)		;871b
	call 0a762h		;871e
	inc a			;8721
	ld (ix+021h),a		;8722
	ld (ix+022h),001h	;8725
	call 04678h		;8729
	and 00fh		;872c
	inc a			;872e
	ld (ix+018h),a		;872f
l8732h:
	inc (ix+003h)		;8732
	inc (ix+002h)		;8735
	ret			;8738
	call 0a759h		;8739
	dec (ix+018h)		;873c
	ret nz			;873f
	ld a,(ix+023h)		;8740
	call 0a762h		;8743
	call 0a762h		;8746
	inc a			;8749
	ld (ix+021h),a		;874a
	ld (ix+022h),001h	;874d
	inc (ix+003h)		;8751
	ld (ix+002h),001h	;8754
	ret			;8758
	ld (ix+021h),000h	;8759
	ld (ix+022h),000h	;875d
	ret			;8761
	inc a			;8762
	cp 003h			;8763
	ret c			;8765
	xor a			;8766
	ret			;8767
	ld a,001h		;8768
	call 0a774h		;876a
	ld a,002h		;876d
	call 0a774h		;876f
	ld a,003h		;8772
	push ix			;8774
	push ix			;8776
	push af			;8778
	ld a,03fh		;8779
	call 069bfh		;877b
	pop bc			;877e
	jr c,l8792h		;877f
	ld (ix+003h),b		;8781
	ld (ix+023h),001h	;8784
	pop iy			;8788
	ld a,b			;878a
	dec a			;878b
	call 0a9b4h		;878c
	call 0a95dh		;878f
l8792h:
	pop ix			;8792
	ret			;8794
	ld a,(ix+020h)		;8795
	cp 008h			;8798
	jr c,l879dh		;879a
	xor a			;879c
l879dh:
	ld l,a			;879d
	inc a			;879e
	ld (ix+020h),a		;879f
	ld h,000h		;87a2
	add hl,hl		;87a4
	ld de,0a7b3h		;87a5
	add hl,de		;87a8
	ld e,(hl)		;87a9
	inc hl			;87aa
	ld d,(hl)		;87ab
	ld (ix+017h),e		;87ac
	ld (ix+006h),d		;87af
	ret			;87b2
	ld (bc),a		;87b3
	nop			;87b4
	ld (bc),a		;87b5
	ld bc,00202h		;87b6
	ld (bc),a		;87b9
	inc bc			;87ba
	ld (bc),a		;87bb
	inc b			;87bc
	ld (bc),a		;87bd
	dec b			;87be
	ld (bc),a		;87bf
	ld b,002h		;87c0
	rlca			;87c2
	out (0a7h),a		;87c3
	ex (sp),hl		;87c5
	and a			;87c6
	di			;87c7
	and a			;87c8
	inc bc			;87c9
	xor b			;87ca
	inc de			;87cb
	xor b			;87cc
	inc hl			;87cd
	xor b			;87ce
	inc sp			;87cf
	xor b			;87d0
	ld b,e			;87d1
	xor b			;87d2
	djnz l87d5h		;87d3
l87d5h:
	nop			;87d5
	ld bc,0fe00h		;87d6
	ld de,001ffh		;87d9
	ld bc,012feh		;87dc
	pop af			;87df
	ld bc,0ff02h		;87e0
	djnz l87e5h		;87e3
l87e5h:
	nop			;87e5
	ld bc,0fe00h		;87e6
	ld de,001ffh		;87e9
	ld bc,012feh		;87ec
	pop af			;87ef
	ld bc,0ff03h		;87f0
	djnz l87f5h		;87f3
l87f5h:
	nop			;87f5
	ld bc,0fe00h		;87f6
	ld de,001ffh		;87f9
	ld bc,012feh		;87fc
	pop af			;87ff
l8800h:
	ld bc,0ff04h		;8800
	djnz l8805h		;8803
l8805h:
	nop			;8805
	ld bc,0fe00h		;8806
	ld de,001ffh		;8809
	ld bc,012feh		;880c
	pop af			;880f
	ld bc,0ff05h		;8810
	djnz l8815h		;8813
l8815h:
	nop			;8815
	ld bc,0fe00h		;8816
	ld de,001ffh		;8819
	ld bc,012feh		;881c
	pop af			;881f
	ld bc,0ff06h		;8820
	djnz l8825h		;8823
l8825h:
	nop			;8825
	ld bc,0fe00h		;8826
	ld de,001ffh		;8829
	ld bc,012feh		;882c
	pop af			;882f
	ld bc,0ff07h		;8830
	djnz l8835h		;8833
l8835h:
	nop			;8835
	ld bc,0fe00h		;8836
	ld de,001ffh		;8839
	ld bc,012feh		;883c
	pop af			;883f
	ld bc,0ff08h		;8840
	djnz l8845h		;8843
l8845h:
	nop			;8845
	ld bc,0fe00h		;8846
	ld de,001ffh		;8849
	ld bc,012feh		;884c
	pop af			;884f
	ld bc,0ff09h		;8850
	ld hl,0ca19h		;8853
	ld a,(hl)		;8856
	push af			;8857
	srl a			;8858
	ld (hl),a		;885a
	call 0a863h		;885b
	pop af			;885e
	ld (0ca19h),a		;885f
	ret			;8862
	call 0a9a2h		;8863
	jp c,07cc3h		;8866
	call 0a884h		;8869
	ld a,(ix+023h)		;886c
	cp 002h			;886f
	ret nz			;8871
	ld a,(ix+024h)		;8872
	or a			;8875
	ret z			;8876
	ld a,(ix+004h)		;8877
	or a			;887a
	ret z			;887b
	ld (iy+004h),a		;887c
	ld (ix+004h),000h	;887f
	ret			;8883
	ld a,(ix+001h)		;8884
	cp 008h			;8887
	jp nc,04ae0h		;8889
	call 0461ah		;888c
	sbc a,a			;888f
	xor b			;8890
	cp b			;8891
	xor b			;8892
	push bc			;8893
	xor b			;8894
	jp nc,0d2a8h		;8895
	xor b			;8898
	push af			;8899
	xor b			;889a
	inc de			;889b
	xor c			;889c
	inc de			;889d
	xor c			;889e
	ld a,(iy+021h)		;889f
	cp (ix+003h)		;88a2
	ret nz			;88a5
	ld a,(iy+022h)		;88a6
	ld (ix+001h),a		;88a9
	ld (ix+023h),a		;88ac
	ld (ix+017h),003h	;88af
	ld (ix+004h),000h	;88b3
	ret			;88b7
	call 0a93eh		;88b8
	ret nz			;88bb
	ld (ix+001h),004h	;88bc
	ld (ix+017h),028h	;88c0
	ret			;88c4
	call 0a93eh		;88c5
	ret nz			;88c8
	ld (ix+001h),005h	;88c9
	ld (ix+017h),01eh	;88cd
	ret			;88d1
	call 0a8e8h		;88d2
	ld a,(ix+017h)		;88d5
	cp 025h			;88d8
	jp z,07143h		;88da
	cp 01ch			;88dd
	jp z,0aa06h		;88df
	cp 012h			;88e2
	jp z,07143h		;88e4
	ret			;88e7
	dec (ix+017h)		;88e8
	ret nz			;88eb
	ld (ix+001h),007h	;88ec
	ld (ix+017h),005h	;88f0
	ret			;88f4
	ld a,(0ca02h)		;88f5
	and 003h		;88f8
	jr nz,l890ch		;88fa
	ld a,(ix+024h)		;88fc
	inc a			;88ff
	cp 004h			;8900
	jr c,l8906h		;8902
	ld a,002h		;8904
l8906h:
	ld (ix+024h),a		;8906
	call 0a95dh		;8909
l890ch:
	dec (ix+017h)		;890c
	ret nz			;890f
	jp 0a8ech		;8910
	call 0a91fh		;8913
	ret nz			;8916
	dec (iy+003h)		;8917
	ld (ix+001h),000h	;891a
	ret			;891e
	dec (ix+017h)		;891f
	ret nz			;8922
	ld (ix+017h),001h	;8923
	ld a,(ix+024h)		;8927
	push af			;892a
	cp 002h			;892b
	ld a,02bh		;892d
	call z,04af5h		;892f
	pop af			;8932
	dec a			;8933
	ld (ix+024h),a		;8934
	push af			;8937
	call 0a95dh		;8938
	pop af			;893b
	or a			;893c
	ret			;893d
	dec (ix+017h)		;893e
	ret nz			;8941
	ld (ix+017h),001h	;8942
	ld a,(ix+024h)		;8946
	push af			;8949
	or a			;894a
	ld a,02ah		;894b
	call z,04af5h		;894d
	pop af			;8950
	inc a			;8951
	ld (ix+024h),a		;8952
	push af			;8955
	call 0a95dh		;8956
	pop af			;8959
	cp 002h			;895a
	ret			;895c
	ld a,(ix+024h)		;895d
	push af			;8960
	ld a,(ix+023h)		;8961
	dec a			;8964
	call 0a998h		;8965
	push af			;8968
	ld a,(ix+003h)		;8969
	dec a			;896c
	call 0a99fh		;896d
	pop bc			;8970
	add a,b			;8971
	pop bc			;8972
	add a,b			;8973
	ld hl,0a9e2h		;8974
	call 04600h		;8977
	ld a,(hl)		;897a
	or a			;897b
	jr z,l898ch		;897c
	dec a			;897e
	ld (ix+006h),a		;897f
	set 6,(ix+015h)		;8982
	set 4,(ix+015h)		;8986
	jr l8994h		;898a
l898ch:
	res 6,(ix+015h)		;898c
	res 4,(ix+015h)		;8990
l8994h:
	ld a,b			;8994
	cp 002h			;8995
	ret			;8997
	call 0a99fh		;8998
	ld c,a			;899b
	add a,a			;899c
	add a,c			;899d
	ret			;899e
	add a,a			;899f
	add a,a			;89a0
	ret			;89a1
	call 068deh		;89a2
	ret c			;89a5
	ld a,(ix+003h)		;89a6
	dec a			;89a9
	jr z,l89b0h		;89aa
	ld a,(iy+021h)		;89ac
	ret			;89af
l89b0h:
	ld a,(iy+022h)		;89b0
	ret			;89b3
	ld hl,0a9dch		;89b4
	call 0468eh		;89b7
	ex de,hl		;89ba
	ld b,(iy+008h)		;89bb
	ld c,(iy+007h)		;89be
	ld h,e			;89c1
	ld l,000h		;89c2
	add hl,bc		;89c4
	ld (ix+008h),h		;89c5
	ld (ix+007h),l		;89c8
	ld b,(iy+00ah)		;89cb
	ld c,(iy+009h)		;89ce
	ld h,d			;89d1
	ld l,000h		;89d2
	add hl,bc		;89d4
	ld (ix+00ah),h		;89d5
	ld (ix+009h),l		;89d8
	ret			;89db
	ld b,000h		;89dc
	ld a,(bc)		;89de
	nop			;89df
	ld c,0ffh		;89e0
	dec bc			;89e2
	inc c			;89e3
	dec c			;89e4
	dec c			;89e5
	rrca			;89e6
	djnz l89fah		;89e7
	ld de,01312h		;89e9
	inc d			;89ec
	inc d			;89ed
	dec bc			;89ee
	inc e			;89ef
	jr $+27			;89f0
	rrca			;89f2
	rla			;89f3
	dec d			;89f4
	ld d,012h		;89f5
	dec e			;89f7
	ld a,(de)		;89f8
	dec de			;89f9
l89fah:
	dec bc			;89fa
	ld c,000h		;89fb
	nop			;89fd
	rrca			;89fe
	ld e,000h		;89ff
	nop			;8a01
	ld (de),a		;8a02
	rra			;8a03
	nop			;8a04
	nop			;8a05
	ld hl,0aa15h		;8a06
	call 07186h		;8a09
	ld bc,00200h		;8a0c
	call 07306h		;8a0f
	jp 07143h		;8a12
	rrca			;8a15
	nop			;8a16
	ld bc,0cdffh		;8a17
	inc de			;8a1a
	ld l,d			;8a1b
	ld a,0f8h		;8a1c
	call 06c75h		;8a1e
	ld de,0acdeh		;8a21
	call 07b65h		;8a24
	call 0ab42h		;8a27
	call 0ac96h		;8a2a
	call 0ac2ch		;8a2d
	ld a,(ix+001h)		;8a30
	call 0461ah		;8a33
	ld c,b			;8a36
	xor d			;8a37
	ld h,h			;8a38
	xor d			;8a39
	adc a,a			;8a3a
	xor d			;8a3b
	and l			;8a3c
	xor d			;8a3d
	cp a			;8a3e
	xor d			;8a3f
	exx			;8a40
	xor d			;8a41
	inc bc			;8a42
	xor e			;8a43
	ld h,0abh		;8a44
	ld a,(0ddabh)		;8a46
	ld (hl),008h		;8a49
	inc b			;8a4b
	ld (ix+00ah),01fh	;8a4c
	ld (ix+023h),030h	;8a50
	ld (ix+025h),015h	;8a54
	call 0ac10h		;8a58
	call 06c4bh		;8a5b
	call 069d7h		;8a5e
	jp 06c1dh		;8a61
	call 0ac54h		;8a64
	ld de,0ffe0h		;8a67
	ld a,0d0h		;8a6a
	call 0aa73h		;8a6c
	ret c			;8a6f
	jp 06c1dh		;8a70
	cp (ix+022h)		;8a73
	jr z,l8a8ah		;8a76
	inc (ix+022h)		;8a78
	ld (ix+029h),001h	;8a7b
	ld hl,00000h		;8a7f
	call 06c6dh		;8a82
	call 0ac65h		;8a85
	scf			;8a88
	ret			;8a89
l8a8ah:
	xor a			;8a8a
	ld (ix+022h),a		;8a8b
	ret			;8a8e
	call 0ac54h		;8a8f
	ld de,00020h		;8a92
	ld a,040h		;8a95
	call 0aa73h		;8a97
	ret c			;8a9a
	call 0abe1h		;8a9b
	ld (ix+029h),000h	;8a9e
	jp 06c1dh		;8aa2
	call 0ab86h		;8aa5
	call 0abeah		;8aa8
	call 0ac54h		;8aab
	call 0ac65h		;8aae
	call 06ad2h		;8ab1
	ret nz			;8ab4
	call 0abe1h		;8ab5
	ld (ix+028h),003h	;8ab8
	jp 06c1dh		;8abc
	call 0ab86h		;8abf
	call 0ac54h		;8ac2
	call 0ac65h		;8ac5
	ld b,004h		;8ac8
	call 06ab8h		;8aca
	ret nz			;8acd
	dec (ix+028h)		;8ace
	ret nz			;8ad1
	ld (ix+027h),020h	;8ad2
	jp 06c1dh		;8ad6
	call 0ab86h		;8ad9
	call 0ac54h		;8adc
	call 0ac65h		;8adf
	call 0aaf2h		;8ae2
	dec (ix+027h)		;8ae5
	ret nz			;8ae8
	ld (ix+026h),000h	;8ae9
	ld (ix+001h),003h	;8aed
	ret			;8af1
	ld a,(ix+026h)		;8af2
	and a			;8af5
	ret nz			;8af6
	ld de,00104h		;8af7
	call 0915dh		;8afa
	inc (ix+026h)		;8afd
	jp 0ac10h		;8b00
	res 7,(ix+014h)		;8b03
	ld de,0ffe0h		;8b07
	ld hl,00000h		;8b0a
	call 06c6dh		;8b0d
	call 0ac65h		;8b10
	inc (ix+022h)		;8b13
	ld a,(ix+022h)		;8b16
	cp 040h			;8b19
	ret nz			;8b1b
	call 0abe1h		;8b1c
	ld (ix+006h),005h	;8b1f
	jp 06c1dh		;8b23
	call 0ac65h		;8b26
	call 0ac59h		;8b29
	ret nz			;8b2c
	ld a,001h		;8b2d
	ld (0ce75h),a		;8b2f
	ld a,051h		;8b32
	call 04af5h		;8b34
	jp 06c1dh		;8b37
	call 0ac65h		;8b3a
	call 0ac86h		;8b3d
	jr l8b8fh		;8b40
	ld a,(ix+001h)		;8b42
	cp 003h			;8b45
	ret c			;8b47
	cp 006h			;8b48
	ret nc			;8b4a
	ld a,(ix+02ah)		;8b4b
	and a			;8b4e
	call z,0ab60h		;8b4f
	dec a			;8b52
	ld (ix+02ah),a		;8b53
	ld a,(ix+02bh)		;8b56
	and a			;8b59
	ret z			;8b5a
	add a,01dh		;8b5b
	jp 07a43h		;8b5d
	ld a,(ix+02bh)		;8b60
	inc a			;8b63
	cp 006h			;8b64
	jr c,l8b69h		;8b66
	xor a			;8b68
l8b69h:
	ld (ix+02bh),a		;8b69
	and a			;8b6c
	ld bc,00840h		;8b6d
	jr z,l8b7ch		;8b70
	cp 003h			;8b72
	ld bc,04008h		;8b74
	jr z,l8b7ch		;8b77
	ld a,006h		;8b79
	ret			;8b7b
l8b7ch:
	ld a,(0ca19h)		;8b7c
	cp 006h			;8b7f
	jr c,l8b84h		;8b81
	ld b,c			;8b83
l8b84h:
	ld a,b			;8b84
	ret			;8b85
	call 04678h		;8b86
	and 00eh		;8b89
	ret nz			;8b8b
	jp l9e0fh		;8b8c
l8b8fh:
	ld h,(ix+008h)		;8b8f
	ld l,(ix+007h)		;8b92
	ld de,00600h		;8b95
	add hl,de		;8b98
	call 0abd1h		;8b99
	ld a,h			;8b9c
	ld hl,(0ca47h)		;8b9d
	call 0abd1h		;8ba0
	cp h			;8ba3
	call 0abd7h		;8ba4
	push hl			;8ba7
	add hl,de		;8ba8
	ld (0ca47h),hl		;8ba9
	ld h,(ix+00ah)		;8bac
	ld l,(ix+009h)		;8baf
	ld de,0fe00h		;8bb2
	add hl,de		;8bb5
	call 0abd1h		;8bb6
	ld a,h			;8bb9
	ld hl,(0ca49h)		;8bba
	call 0abd1h		;8bbd
	cp h			;8bc0
	call 0abd7h		;8bc1
	ld a,l			;8bc4
	add hl,de		;8bc5
	ld (0ca49h),hl		;8bc6
	pop hl			;8bc9
	or l			;8bca
	ret nz			;8bcb
	inc a			;8bcc
	ld (0ca0fh),a		;8bcd
	ret			;8bd0
	ld d,h			;8bd1
	ld e,l			;8bd2
	add hl,hl		;8bd3
	add hl,hl		;8bd4
	add hl,hl		;8bd5
	ret			;8bd6
	ld hl,00000h		;8bd7
	ret z			;8bda
	ld l,020h		;8bdb
	ret nc			;8bdd
	jp 04612h		;8bde
	ld hl,00000h		;8be1
	ld de,00000h		;8be4
	jp 06c6dh		;8be7
	ld a,(ix+023h)		;8bea
	cp 060h			;8bed
	inc a			;8bef
	jr c,l8bfbh		;8bf0
	ld a,001h		;8bf2
	xor (ix+024h)		;8bf4
	ld (ix+024h),a		;8bf7
l8bfah:
	xor a			;8bfa
l8bfbh:
	ld (ix+023h),a		;8bfb
	ld a,(ix+024h)		;8bfe
	and a			;8c01
	ld hl,0ffe0h		;8c02
	jr z,l8c0ah		;8c05
	ld hl,00020h		;8c07
l8c0ah:
	ld de,00000h		;8c0a
	jp 06c6dh		;8c0d
	ld a,(ix+021h)		;8c10
	ld l,a			;8c13
	inc a			;8c14
	cp 004h			;8c15
	jr nz,l8c1ah		;8c17
	xor a			;8c19
l8c1ah:
	ld (ix+021h),a		;8c1a
	ld h,000h		;8c1d
	ld de,0ac28h		;8c1f
	add hl,de		;8c22
	ld a,(hl)		;8c23
	ld (ix+017h),a		;8c24
	ret			;8c27
	jr nz,$+66		;8c28
	ld h,b			;8c2a
	jr nz,l8bfah		;8c2b
	inc e			;8c2d
	ld l,d			;8c2e
	ld a,(ix+029h)		;8c2f
	and a			;8c32
	ret nz			;8c33
	ld a,(ix+02bh)		;8c34
	and a			;8c37
	ret z			;8c38
	call 07c6bh		;8c39
	ret nc			;8c3c
	ld a,001h		;8c3d
	ld (0ce76h),a		;8c3f
	call 0abe1h		;8c42
	ld (ix+005h),000h	;8c45
	ld (ix+001h),006h	;8c49
	ld (ix+029h),001h	;8c4d
	jp 07cbeh		;8c51
	ld b,005h		;8c54
	jp 06ac2h		;8c56
	call 0acd8h		;8c59
	ret nz			;8c5c
	ld b,00ah		;8c5d
	call 06ac2h		;8c5f
	cp 009h			;8c62
	ret			;8c64
	ld b,(ix+020h)		;8c65
	call 0acd8h		;8c68
	ld a,b			;8c6b
	jr nz,l8c77h		;8c6c
	cp 003h			;8c6e
	inc a			;8c70
	jr c,l8c74h		;8c71
	xor a			;8c73
l8c74h:
	ld (ix+020h),a		;8c74
l8c77h:
	and a			;8c77
	ret z			;8c78
	dec a			;8c79
	push af			;8c7a
	add a,00fh		;8c7b
	call 07a43h		;8c7d
	pop af			;8c80
	add a,012h		;8c81
	jp 07a43h		;8c83
	ld a,(ix+025h)		;8c86
	inc a			;8c89
	cp 01eh			;8c8a
	jr nz,l8c90h		;8c8c
	ld a,01bh		;8c8e
l8c90h:
	ld (ix+025h),a		;8c90
	jp 07a43h		;8c93
	call 0acd8h		;8c96
	ret nz			;8c99
	ld b,008h		;8c9a
	call 06aech		;8c9c
	push af			;8c9f
	call 0acbah		;8ca0
	ld a,005h		;8ca3
	call 04776h		;8ca5
	pop bc			;8ca8
	ld a,(ix+001h)		;8ca9
	cp 005h			;8cac
	ret nc			;8cae
	ld a,003h		;8caf
	add a,b			;8cb1
	call 0acbah		;8cb2
	ld a,009h		;8cb5
	jp 04776h		;8cb7
	and 007h		;8cba
	ld l,a			;8cbc
	ld h,000h		;8cbd
	add hl,hl		;8cbf
	ld de,0acc8h		;8cc0
	add hl,de		;8cc3
	ld d,(hl)		;8cc4
	inc hl			;8cc5
	ld e,(hl)		;8cc6
	ret			;8cc7
	ld d,b			;8cc8
	nop			;8cc9
	ld d,b			;8cca
	ld bc,00250h		;8ccb
	ld h,b			;8cce
	ld (bc),a		;8ccf
	ld h,b			;8cd0
	inc bc			;8cd1
	ld h,b			;8cd2
	inc bc			;8cd3
	ld (hl),b		;8cd4
	inc bc			;8cd5
	ld (hl),b		;8cd6
	inc b			;8cd7
	ld a,(0ca02h)		;8cd8
	and 001h		;8cdb
	ret			;8cdd
	jp p,007ach		;8cde
	xor l			;8ce1
	ld hl,03badh		;8ce2
	xor l			;8ce5
	ld d,l			;8ce6
	xor l			;8ce7
	ld l,a			;8ce8
	xor l			;8ce9
	adc a,(hl)		;8cea
	xor l			;8ceb
	xor l			;8cec
	xor l			;8ced
	call z,0ebadh		;8cee
	xor l			;8cf1
	dec d			;8cf2
	nop			;8cf3
	ld (bc),a		;8cf4
	ld bc,0fe00h		;8cf5
	ld sp,hl		;8cf8
	inc b			;8cf9
	ld bc,0fe01h		;8cfa
	djnz l8d03h		;8cfd
	ld bc,0fe02h		;8cff
	nop			;8d02
l8d03h:
	dec c			;8d03
	ld bc,0ff03h		;8d04
	ld a,(de)		;8d07
	nop			;8d08
	ld (bc),a		;8d09
	ld bc,0fe00h		;8d0a
	ld sp,hl		;8d0d
	inc b			;8d0e
	ld bc,0fe01h		;8d0f
	djnz l8d18h		;8d12
	ld bc,0fe02h		;8d14
	nop			;8d17
l8d18h:
	dec c			;8d18
	ld bc,0fe03h		;8d19
	ld (bc),a		;8d1c
	ld (bc),a		;8d1d
	ld bc,0ff04h		;8d1e
	ld a,(de)		;8d21
	nop			;8d22
	ld (bc),a		;8d23
	ld bc,0fe00h		;8d24
	ld sp,hl		;8d27
	inc b			;8d28
	ld bc,0fe01h		;8d29
	djnz l8d32h		;8d2c
	ld bc,0fe02h		;8d2e
	nop			;8d31
l8d32h:
	dec c			;8d32
	ld bc,0fe03h		;8d33
	ld (bc),a		;8d36
	ld (bc),a		;8d37
	ld bc,0ff05h		;8d38
	ld a,(de)		;8d3b
	nop			;8d3c
	ld (bc),a		;8d3d
	ld bc,0fe00h		;8d3e
	ld sp,hl		;8d41
	inc b			;8d42
	ld bc,0fe01h		;8d43
	djnz l8d4ch		;8d46
	ld bc,0fe02h		;8d48
	nop			;8d4b
l8d4ch:
	dec c			;8d4c
	ld bc,0fe03h		;8d4d
	ld (bc),a		;8d50
	ld (bc),a		;8d51
	ld bc,0ff06h		;8d52
	ld a,(de)		;8d55
	nop			;8d56
	ld (bc),a		;8d57
	ld bc,0fe00h		;8d58
	ld sp,hl		;8d5b
	inc b			;8d5c
	ld bc,0fe01h		;8d5d
	djnz l8d66h		;8d60
	ld bc,0fe02h		;8d62
	nop			;8d65
l8d66h:
	dec c			;8d66
	ld bc,0fe03h		;8d67
	ld (bc),a		;8d6a
	ld (bc),a		;8d6b
	ld bc,0ff07h		;8d6c
	rra			;8d6f
	nop			;8d70
	ld (bc),a		;8d71
	ld bc,0fe00h		;8d72
	ld sp,hl		;8d75
	inc b			;8d76
	ld bc,0fe01h		;8d77
	djnz l8d80h		;8d7a
	ld bc,0fe02h		;8d7c
	nop			;8d7f
l8d80h:
	dec c			;8d80
	ld bc,0fe03h		;8d81
	ld b,001h		;8d84
	ld bc,0fe0ah		;8d86
	ld (bc),a		;8d89
	ld (bc),a		;8d8a
	ld bc,0ff07h		;8d8b
	rra			;8d8e
	nop			;8d8f
	ld (bc),a		;8d90
	ld bc,0fe00h		;8d91
	ld sp,hl		;8d94
	inc b			;8d95
	ld bc,0fe01h		;8d96
	djnz l8d9fh		;8d99
	ld bc,0fe02h		;8d9b
	nop			;8d9e
l8d9fh:
	dec c			;8d9f
	ld bc,0fe03h		;8da0
	ld b,000h		;8da3
	ld bc,0fe0bh		;8da5
	ld (bc),a		;8da8
	ld (bc),a		;8da9
	ld bc,0ff07h		;8daa
	rra			;8dad
	nop			;8dae
	ld (bc),a		;8daf
	ld bc,0fe00h		;8db0
	ld sp,hl		;8db3
	inc b			;8db4
	ld bc,0fe01h		;8db5
	djnz l8dbeh		;8db8
	ld bc,0fe02h		;8dba
	nop			;8dbd
l8dbeh:
	dec c			;8dbe
	ld bc,0fe03h		;8dbf
	dec b			;8dc2
	nop			;8dc3
	ld bc,0fe0ch		;8dc4
	ld (bc),a		;8dc7
	ld (bc),a		;8dc8
	ld bc,0ff07h		;8dc9
	rra			;8dcc
	nop			;8dcd
	ld (bc),a		;8dce
	ld bc,0fe00h		;8dcf
	ld sp,hl		;8dd2
	inc b			;8dd3
	ld bc,0fe01h		;8dd4
	djnz l8dddh		;8dd7
	ld bc,0fe02h		;8dd9
	nop			;8ddc
l8dddh:
	dec c			;8ddd
	ld bc,0fe03h		;8dde
	dec b			;8de1
	nop			;8de2
	ld bc,0fe0dh		;8de3
	ld (bc),a		;8de6
	ld (bc),a		;8de7
	ld bc,0ff07h		;8de8
	rra			;8deb
	nop			;8dec
	ld (bc),a		;8ded
	ld bc,0fe00h		;8dee
	ld sp,hl		;8df1
	inc b			;8df2
	ld bc,0fe01h		;8df3
	djnz l8dfch		;8df6
	ld bc,0fe02h		;8df8
	nop			;8dfb
l8dfch:
	dec c			;8dfc
	ld bc,0fe03h		;8dfd
	inc b			;8e00
	nop			;8e01
	ld bc,0fe0eh		;8e02
	ld (bc),a		;8e05
	ld (bc),a		;8e06
	ld bc,0ff07h		;8e07
	call 0aef9h		;8e0a
	call 06a13h		;8e0d
	call 06e91h		;8e10
	ld a,0f4h		;8e13
	call 06c75h		;8e15
	ld de,0b03ch		;8e18
	call 07b65h		;8e1b
	ld a,(ix+001h)		;8e1e
	dec a			;8e21
	jr z,l8e41h		;8e22
	dec a			;8e24
	jr z,l8e64h		;8e25
	dec a			;8e27
	jr z,l8e88h		;8e28
	ld (ix+008h),009h	;8e2a
	ld (ix+00ah),028h	;8e2e
	call 0af66h		;8e32
	call 0af92h		;8e35
	call 0aebbh		;8e38
	call 069d7h		;8e3b
	jp 06c1dh		;8e3e
l8e41h:
	call 0afaah		;8e41
	call 0afd4h		;8e44
	ld (ix+021h),001h	;8e47
	call 0aee2h		;8e4b
	inc (ix+020h)		;8e4e
	ld a,(ix+020h)		;8e51
	cp 050h			;8e54
	ret nz			;8e56
	ld (ix+021h),000h	;8e57
	call 0aee2h		;8e5b
	call 0b002h		;8e5e
	jp 06c1dh		;8e61
l8e64h:
	call 0af66h		;8e64
	call 0afaah		;8e67
	call 0af8ch		;8e6a
	call 0afb3h		;8e6d
	call 0afd4h		;8e70
	call 0aed8h		;8e73
	call 0aeabh		;8e76
	dec (ix+011h)		;8e79
	ret nz			;8e7c
	call 0b002h		;8e7d
	ld l,000h		;8e80
	call 0aee5h		;8e82
	jp 06c1dh		;8e85
l8e88h:
	call 0af66h		;8e88
	call 0af8ch		;8e8b
	call 0afd4h		;8e8e
	ld a,(ix+010h)		;8e91
	and a			;8e94
	jr z,l8e9dh		;8e95
	dec (ix+010h)		;8e97
	jp 0b04eh		;8e9a
l8e9dh:
	call 06ad2h		;8e9d
	ret nz			;8ea0
	ld (ix+001h),002h	;8ea1
	ld bc,0fe03h		;8ea5
	jp 0751ah		;8ea8
	call 06adfh		;8eab
	ret nz			;8eae
	ld de,00000h		;8eaf
	call sub_9157h		;8eb2
	ld de,00007h		;8eb5
	call sub_9157h		;8eb8
	ld a,(ix+012h)		;8ebb
	cp 005h			;8ebe
	jr c,l8ec3h		;8ec0
	xor a			;8ec2
l8ec3h:
	ld l,a			;8ec3
	inc a			;8ec4
	ld (ix+012h),a		;8ec5
	ld h,000h		;8ec8
	ld de,0aed3h		;8eca
	add hl,de		;8ecd
	ld a,(hl)		;8ece
	ld (ix+018h),a		;8ecf
	ret			;8ed2
	inc de			;8ed3
	daa			;8ed4
	inc sp			;8ed5
	jr l8eefh		;8ed6
	ld a,(ix+022h)		;8ed8
	dec (ix+022h)		;8edb
	and a			;8ede
	call z,0af18h		;8edf
	ld l,(ix+021h)		;8ee2
	ld h,000h		;8ee5
	add hl,hl		;8ee7
	add hl,hl		;8ee8
	ld de,0af37h		;8ee9
	add hl,de		;8eec
	ld e,(hl)		;8eed
	inc hl			;8eee
l8eefh:
	ld d,(hl)		;8eef
	inc hl			;8ef0
	ld a,(hl)		;8ef1
	inc hl			;8ef2
	ld h,(hl)		;8ef3
	ld l,a			;8ef4
	ex de,hl		;8ef5
	jp 06c6dh		;8ef6
	ld a,(ix+008h)		;8ef9
	cp 014h			;8efc
	ret c			;8efe
	ld (ix+016h),000h	;8eff
	ld (ix+004h),001h	;8f03
	ld a,(ix+008h)		;8f07
	dec a			;8f0a
	dec a			;8f0b
	ld (ix+008h),a		;8f0c
	ld hl,00000h		;8f0f
	ld de,00000h		;8f12
	jp 06c6dh		;8f15
	ld l,(ix+023h)		;8f18
	ld h,000h		;8f1b
	add hl,hl		;8f1d
	ld de,0af53h		;8f1e
	add hl,de		;8f21
	ld a,(hl)		;8f22
	inc a			;8f23
	jr nz,l8f2ah		;8f24
	ld (ix+023h),a		;8f26
	ex de,hl		;8f29
l8f2ah:
	inc (ix+023h)		;8f2a
	ld a,(hl)		;8f2d
	ld (ix+021h),a		;8f2e
	inc hl			;8f31
	ld a,(hl)		;8f32
	ld (ix+022h),a		;8f33
	ret			;8f36
	nop			;8f37
	nop			;8f38
	nop			;8f39
	nop			;8f3a
	nop			;8f3b
	nop			;8f3c
	ret nz			;8f3d
	rst 38h			;8f3e
	nop			;8f3f
	nop			;8f40
	ld b,b			;8f41
	nop			;8f42
	ld h,b			;8f43
	nop			;8f44
	nop			;8f45
	nop			;8f46
	and b			;8f47
	rst 38h			;8f48
	nop			;8f49
	nop			;8f4a
	ld b,b			;8f4b
	nop			;8f4c
	ret nz			;8f4d
	rst 38h			;8f4e
	ret nz			;8f4f
	rst 38h			;8f50
	ret nz			;8f51
	rst 38h			;8f52
	inc bc			;8f53
	djnz l8f5ah		;8f54
	jr nz,$+5		;8f56
	jr nz,l8f5eh		;8f58
l8f5ah:
	jr nz,$+7		;8f5a
	jr nc,l8f60h		;8f5c
l8f5eh:
	jr nc,l8f66h		;8f5e
l8f60h:
	jr nc,l8f64h		;8f60
	jr nc,$+5		;8f62
l8f64h:
	djnz $+1		;8f64
l8f66h:
	ld a,(ix+024h)		;8f66
	dec (ix+024h)		;8f69
	and a			;8f6c
	ret nz			;8f6d
	ld a,(ix+025h)		;8f6e
	ld l,a			;8f71
	ld h,000h		;8f72
	inc a			;8f74
	cp 004h			;8f75
	jr nz,l8f7ah		;8f77
	xor a			;8f79
l8f7ah:
	ld (ix+025h),a		;8f7a
	add hl,hl		;8f7d
	ld de,0b02ch		;8f7e
	add hl,de		;8f81
	ld a,(hl)		;8f82
	ld (ix+026h),a		;8f83
	inc hl			;8f86
	ld a,(hl)		;8f87
	ld (ix+024h),a		;8f88
	ret			;8f8b
	ld a,(0ca02h)		;8f8c
	and 003h		;8f8f
	ret nz			;8f91
	ld a,(ix+027h)		;8f92
	ld l,a			;8f95
	ld h,000h		;8f96
	inc a			;8f98
	cp 004h			;8f99
	jr nz,l8f9eh		;8f9b
	xor a			;8f9d
l8f9eh:
	ld (ix+027h),a		;8f9e
	ld de,0b034h		;8fa1
	add hl,de		;8fa4
	ld a,(hl)		;8fa5
	ld (ix+028h),a		;8fa6
	ret			;8fa9
	ld a,(0ca02h)		;8faa
	rrca			;8fad
	ret c			;8fae
	inc (ix+029h)		;8faf
	ret			;8fb2
	ld a,(ix+02ah)		;8fb3
	inc (ix+02ah)		;8fb6
	and 003h		;8fb9
	ret nz			;8fbb
	ld a,(ix+02bh)		;8fbc
	ld l,a			;8fbf
	ld h,000h		;8fc0
	inc a			;8fc2
	cp 004h			;8fc3
	jr nz,l8fc8h		;8fc5
	xor a			;8fc7
l8fc8h:
	ld (ix+02bh),a		;8fc8
	ld de,0b038h		;8fcb
	add hl,de		;8fce
	ld a,(hl)		;8fcf
	ld (ix+02ch),a		;8fd0
	ret			;8fd3
	ld a,(ix+026h)		;8fd4
	call 07a43h		;8fd7
	ld a,(ix+028h)		;8fda
	call 07a43h		;8fdd
	ld a,(ix+02ch)		;8fe0
	and a			;8fe3
	jr z,l8fe9h		;8fe4
	call 07a43h		;8fe6
l8fe9h:
	ld a,(ix+029h)		;8fe9
	rrca			;8fec
	jr c,l8ff8h		;8fed
	ld a,006h		;8fef
	call 07a43h		;8ff1
	ld a,008h		;8ff4
	jr l8fffh		;8ff6
l8ff8h:
	ld a,007h		;8ff8
	call 07a43h		;8ffa
	ld a,009h		;8ffd
l8fffh:
	jp 07a43h		;8fff
	ld l,(ix+00fh)		;9002
	inc (ix+00fh)		;9005
	ld h,000h		;9008
	add hl,hl		;900a
	ld de,0b025h		;900b
	add hl,de		;900e
	ld a,(hl)		;900f
	inc a			;9010
	jr nz,l9017h		;9011
	ld (ix+00fh),a		;9013
	ex de,hl		;9016
l9017h:
	ld a,(hl)		;9017
	ld (ix+010h),a		;9018
	inc hl			;901b
	ld a,(hl)		;901c
	ld (ix+011h),a		;901d
	ld (ix+017h),020h	;9020
	ret			;9024
	ex af,af'		;9025
	jr l9032h		;9026
	jr z,l9036h		;9028
	ld c,b			;902a
	rst 38h			;902b
	ld a,(bc)		;902c
	inc b			;902d
	dec bc			;902e
	ld (bc),a		;902f
	inc c			;9030
	ld (bc),a		;9031
l9032h:
	dec bc			;9032
	ld (bc),a		;9033
	inc bc			;9034
	inc b			;9035
l9036h:
	dec b			;9036
	inc b			;9037
	nop			;9038
	dec c			;9039
	ld c,00dh		;903a
	ld a,0b0h		;903c
	djnz l9040h		;903e
l9040h:
	nop			;9040
	ld bc,0fe02h		;9041
	ei			;9044
	ld sp,hl		;9045
	ld bc,0fe00h		;9046
	ex af,af'		;9049
	ld sp,hl		;904a
	ld bc,0ff01h		;904b
	ld a,058h		;904e
	call 0684ch		;9050
	ret c			;9053
	ld bc,0fbfdh		;9054
	ld a,(0ca02h)		;9057
	rrca			;905a
	jr c,l9063h		;905b
	ld bc,0fb09h		;905d
	inc (iy+020h)		;9060
l9063h:
	jp 06929h		;9063
	ld a,(ix+001h)		;9066
	dec a			;9069
	jr z,l90b6h		;906a
	dec a			;906c
	jr z,l90c0h		;906d
	ld a,00ah		;906f
	ld (0ca26h),a		;9071
	call 04678h		;9074
	and 03fh		;9077
	ld b,a			;9079
	ld a,(ix+020h)		;907a
	and a			;907d
	ld a,080h		;907e
	jr z,l9084h		;9080
	ld a,040h		;9082
l9084h:
	add a,b			;9084
	call 09de8h		;9085
	call 07240h		;9088
	sra h			;908b
	rr l			;908d
	sra h			;908f
	rr l			;9091
	sra h			;9093
	rr l			;9095
	ld (ix+00fh),l		;9097
	ld (ix+010h),h		;909a
	sra d			;909d
	rr e			;909f
	sra d			;90a1
	rr e			;90a3
	sra d			;90a5
	rr e			;90a7
	ld (ix+011h),e		;90a9
	ld (ix+012h),d		;90ac
	ld (ix+017h),009h	;90af
	jp 06c1dh		;90b3
l90b6h:
	call 06a9ah		;90b6
	call 06ad2h		;90b9
	ret nz			;90bc
	jp 06c1dh		;90bd
l90c0h:
	ret			;90c0
	ret			;90c1
	call 0b4c1h		;90c2
	ld de,0b455h		;90c5
	call 07b65h		;90c8
	ret			;90cb
	ld a,(ix+001h)		;90cc
	cp 006h			;90cf
	jp nc,04ae0h		;90d1
	call 0461ah		;90d4
	and 0b0h		;90d7
	ei			;90d9
	or b			;90da
	rrca			;90db
	or c			;90dc
	dec hl			;90dd
	or c			;90de
	ld b,c			;90df
	or c			;90e0
	ld h,h			;90e1
	or c			;90e2
	call 06c4bh		;90e3
	call 06754h		;90e6
	ld (ix+006h),000h	;90e9
	ld (ix+008h),006h	;90ed
	ld (ix+00ah),01fh	;90f1
	call 069d7h		;90f5
	call 06c1dh		;90f8
	ld b,008h		;90fb
l90fdh:
	push bc			;90fd
	call 0b39dh		;90fe
	jr c,l910bh		;9101
	pop bc			;9103
	djnz l90fdh		;9104
	call 06c1dh		;9106
	jr l910fh		;9109
l910bh:
	pop bc			;910b
	call 06c1dh		;910c
l910fh:
	ld b,008h		;910f
l9111h:
	push bc			;9111
	call 0688bh		;9112
	jr c,l9125h		;9115
	call 06886h		;9117
	push ix			;911a
	push iy			;911c
	pop ix			;911e
	call 06c21h		;9120
	pop ix			;9123
l9125h:
	pop bc			;9125
	djnz l9111h		;9126
	jp 06c1dh		;9128
	call 0b0c2h		;912b
	ld a,(ix+037h)		;912e
	or a			;9131
	ret nz			;9132
	inc (ix+001h)		;9133
	ld hl,0b4a3h		;9136
	call 04ce0h		;9139
	ld (ix+017h),010h	;913c
	ret			;9140
	call 0b0c2h		;9141
	dec (ix+017h)		;9144
	ret nz			;9147
	set 7,(ix+014h)		;9148
	inc (ix+001h)		;914c
	ld (ix+003h),00ah	;914f
	ld (ix+018h),032h	;9153
sub_9157h:
	set 4,(ix+015h)		;9157
	call 04e73h		;915b
	ld hl,0b366h		;915e
	jp 0b2edh		;9161
	call 06a13h		;9164
	call 0b290h		;9167
	call 0b170h		;916a
	jp 0b0c2h		;916d
	dec (ix+018h)		;9170
	jr z,l917eh		;9173
	dec (ix+018h)		;9175
	jr z,l917eh		;9178
	dec (ix+018h)		;917a
	ret nz			;917d
l917eh:
	ld a,(ix+003h)		;917e
	res 7,a			;9181
	ld (ix+018h),a		;9183
	ld a,(ix+002h)		;9186
	push af			;9189
	call 0b1b4h		;918a
	pop af			;918d
	inc a			;918e
	cp 008h			;918f
	jr c,l9194h		;9191
	xor a			;9193
l9194h:
	ld (ix+002h),a		;9194
	ld a,(ix+003h)		;9197
	bit 7,a			;919a
	jr z,l91aah		;919c
	inc a			;919e
	ld (ix+003h),a		;919f
	cp 088h			;91a2
	ret c			;91a4
	ld (ix+003h),007h	;91a5
	ret			;91a9
l91aah:
	dec a			;91aa
	ld (ix+003h),a		;91ab
	ret nz			;91ae
	ld (ix+003h),082h	;91af
	ret			;91b3
	push ix			;91b4
	push ix			;91b6
	ld a,05ch		;91b8
	call 069a3h		;91ba
	pop iy			;91bd
	call nc,0b1e4h		;91bf
	pop ix			;91c2
	ld a,(ix+018h)		;91c4
	and 07fh		;91c7
	cp 005h			;91c9
	ld a,02dh		;91cb
	jp nc,04af5h		;91cd
	bit 0,(ix+002h)		;91d0
	ret nz			;91d4
	jp 04af5h		;91d5
	ld a,(de)		;91d8
	inc de			;91d9
	ld l,a			;91da
	rlca			;91db
	sbc a,a			;91dc
	ld h,a			;91dd
	add hl,hl		;91de
	add hl,hl		;91df
	add hl,hl		;91e0
	add hl,hl		;91e1
	add hl,hl		;91e2
	ret			;91e3
	ld a,(iy+002h)		;91e4
	ld (ix+003h),a		;91e7
	add a,a			;91ea
	add a,a			;91eb
	ld e,a			;91ec
	ld d,000h		;91ed
	ld hl,0b248h		;91ef
	add hl,de		;91f2
	ex de,hl		;91f3
	call 0b1d8h		;91f4
	ld b,(iy+008h)		;91f7
	ld c,(iy+007h)		;91fa
	add hl,bc		;91fd
	ld (ix+008h),h		;91fe
	ld (ix+007h),l		;9201
	call 0b1d8h		;9204
	ld b,(iy+00ah)		;9207
	ld c,(iy+009h)		;920a
	add hl,bc		;920d
	ld (ix+00ah),h		;920e
	ld (ix+009h),l		;9211
	call 0b1d8h		;9214
	ld b,(iy+00eh)		;9217
	ld c,(iy+00dh)		;921a
	sra b			;921d
	rr c			;921f
	add hl,bc		;9221
	ld (ix+00eh),h		;9222
	ld (ix+00dh),l		;9225
	call 0b1d8h		;9228
	ld b,(iy+00ch)		;922b
	ld c,(iy+00bh)		;922e
	sra b			;9231
	rr c			;9233
	add hl,bc		;9235
	ld (ix+00ch),h		;9236
	ld (ix+00bh),l		;9239
	ld a,000h		;923c
	call 0b268h		;923e
	ld (ix+006h),a		;9241
	ld (ix+005h),a		;9244
	ret			;9247
	ret m			;9248
	ret m			;9249
	jp m,0f8fah		;924a
	jr nz,l924fh		;924d
l924fh:
	ret m			;924f
	ret m			;9250
	ld b,b			;9251
	ld b,0fah		;9252
	jr nz,$+74		;9254
	ex af,af'		;9256
	nop			;9257
	ld b,b			;9258
	ld b,b			;9259
	ld b,006h		;925a
	ld c,b			;925c
	jr nz,l925fh		;925d
l925fh:
	ex af,af'		;925f
	ld b,b			;9260
	ret m			;9261
	jp m,02006h		;9262
	ret p			;9265
	ret m			;9266
	nop			;9267
	ld b,a			;9268
	ld a,(ix+003h)		;9269
	ld c,a			;926c
	add a,a			;926d
	add a,c			;926e
	add a,b			;926f
	ld hl,0b278h		;9270
	call 04600h		;9273
	ld a,(hl)		;9276
	ret			;9277
	ld b,007h		;9278
	ex af,af'		;927a
	nop			;927b
	ld bc,00302h		;927c
	inc b			;927f
	dec b			;9280
	add hl,bc		;9281
	ld a,(bc)		;9282
	dec bc			;9283
	ex af,af'		;9284
	rlca			;9285
	ld b,002h		;9286
	ld bc,00500h		;9288
	inc b			;928b
	inc bc			;928c
	dec bc			;928d
	ld a,(bc)		;928e
	add hl,bc		;928f
	call 06c7dh		;9290
	ld h,(ix+010h)		;9293
	ld l,(ix+00fh)		;9296
	ld d,(ix+012h)		;9299
	ld e,(ix+011h)		;929c
	call 06d4fh		;929f
	call 0b2f2h		;92a2
	jp c,0b329h		;92a5
l92a8h:
	call 0b335h		;92a8
	push af			;92ab
	ld (ix+024h),d		;92ac
	ld (ix+023h),e		;92af
	push de			;92b2
	ld h,(ix+008h)		;92b3
	ld l,(ix+007h)		;92b6
	call 0b2d9h		;92b9
	ld e,h			;92bc
	ld h,(ix+00ah)		;92bd
	ld l,(ix+009h)		;92c0
	call 0b2d9h		;92c3
	ld d,h			;92c6
	pop bc			;92c7
	pop af			;92c8
	call 06b63h		;92c9
	ld (ix+010h),h		;92cc
	ld (ix+00fh),l		;92cf
	ld (ix+012h),d		;92d2
	ld (ix+011h),e		;92d5
	ret			;92d8
	bit 7,h			;92d9
	jr z,l92e1h		;92db
	ld hl,00000h		;92dd
	ret			;92e0
l92e1h:
	add hl,hl		;92e1
	jr c,l92e9h		;92e2
	add hl,hl		;92e4
	jr c,l92e9h		;92e5
	add hl,hl		;92e7
	ret nc			;92e8
l92e9h:
	ld hl,000ffh		;92e9
	ret			;92ec
	call 0b34eh		;92ed
	jr l92a8h		;92f0
	ld l,(ix+024h)		;92f2
	ld h,000h		;92f5
	add hl,hl		;92f7
	add hl,hl		;92f8
	add hl,hl		;92f9
	add hl,hl		;92fa
	add hl,hl		;92fb
	ld d,(ix+00ah)		;92fc
	ld e,(ix+009h)		;92ff
	sbc hl,de		;9302
	bit 7,h			;9304
	call nz,04612h		;9306
	push hl			;9309
	ld l,(ix+023h)		;930a
	ld h,000h		;930d
	add hl,hl		;930f
	add hl,hl		;9310
	add hl,hl		;9311
	add hl,hl		;9312
	add hl,hl		;9313
	ld d,(ix+008h)		;9314
	ld e,(ix+007h)		;9317
	sbc hl,de		;931a
	bit 7,h			;931c
	call nz,04612h		;931e
	pop de			;9321
	add hl,de		;9322
	ld de,00400h		;9323
	sbc hl,de		;9326
	ret			;9328
	call 0b32fh		;9329
	jp 0b2abh		;932c
	call 0b335h		;932f
	call 0b34eh		;9332
l9335h:
	ld h,(ix+021h)		;9335
	ld l,(ix+022h)		;9338
	ld a,(hl)		;933b
	inc hl			;933c
	bit 7,a			;933d
	jr nz,l9346h		;933f
	ld e,(hl)		;9341
	inc hl			;9342
	ld d,(hl)		;9343
	inc hl			;9344
	ret			;9345
l9346h:
	call 0b355h		;9346
	call 0b34eh		;9349
	jr l9335h		;934c
	ld (ix+021h),h		;934e
	ld (ix+022h),l		;9351
	ret			;9354
	inc a			;9355
	jr z,l9361h		;9356
	call 0b341h		;9358
	push hl			;935b
	call 0b4b6h		;935c
	pop hl			;935f
	ret			;9360
l9361h:
	call 0b341h		;9361
	ex de,hl		;9364
	ret			;9365
	cp 0f4h			;9366
	or h			;9368
	inc b			;9369
	jr c,$+98		;936a
	ex af,af'		;936c
	jr nz,$-70		;936d
	inc c			;936f
	ld l,b			;9370
	cp b			;9371
	djnz $+106		;9372
	jr l938ah		;9374
	jr nz,l9390h		;9376
	ex af,af'		;9378
	ex af,af'		;9379
	cp b			;937a
	ex af,af'		;937b
	ld h,b			;937c
	cp b			;937d
	ex af,af'		;937e
	ld h,b			;937f
	ex af,af'		;9380
	ex af,af'		;9381
	ex af,af'		;9382
	ex af,af'		;9383
	ex af,af'		;9384
	ex af,af'		;9385
	cp b			;9386
	ex af,af'		;9387
	ld h,b			;9388
	ex af,af'		;9389
l938ah:
	ex af,af'		;938a
	ex af,af'		;938b
	ex af,af'		;938c
	ex af,af'		;938d
	ld h,b			;938e
	cp b			;938f
l9390h:
	ex af,af'		;9390
	ld h,b			;9391
	ex af,af'		;9392
	ex af,af'		;9393
	ex af,af'		;9394
	ex af,af'		;9395
	rst 38h			;9396
	ld a,b			;9397
	or e			;9398
	call 0b3a0h		;9399
	ret			;939c
	ld a,008h		;939d
	sub b			;939f
	ld l,a			;93a0
	ld h,000h		;93a1
	add hl,hl		;93a3
	ld e,l			;93a4
	ld d,h			;93a5
	add hl,hl		;93a6
	add hl,de		;93a7
	ld de,0b3dbh		;93a8
	add hl,de		;93ab
	push hl			;93ac
	call 067feh		;93ad
	pop hl			;93b0
	ret c			;93b1
	ld b,(hl)		;93b2
	inc hl			;93b3
	ld c,(hl)		;93b4
	inc hl			;93b5
	push hl			;93b6
	call 06929h		;93b7
	pop hl			;93ba
	ld b,(hl)		;93bb
	inc hl			;93bc
	ld c,(hl)		;93bd
	inc hl			;93be
	ld (iy+006h),c		;93bf
	ld (iy+005h),b		;93c2
	ld b,(hl)		;93c5
	inc hl			;93c6
	ld c,(hl)		;93c7
	ld (iy+013h),b		;93c8
	set 7,c			;93cb
	ld (iy+014h),c		;93cd
	ld a,(ix+009h)		;93d0
	ld (iy+009h),a		;93d3
	call 0699eh		;93d6
	or a			;93d9
	ret			;93da
	call m,00003h		;93db
	add hl,bc		;93de
	ld bc,00a01h		;93df
	inc bc			;93e2
	ld bc,00108h		;93e3
	ld bc,0fa00h		;93e6
	ld (bc),a		;93e9
	dec bc			;93ea
	add hl,bc		;93eb
	inc bc			;93ec
	inc b			;93ed
	jp m,00702h		;93ee
	ex af,af'		;93f1
	inc bc			;93f2
	ex af,af'		;93f3
	jp m,00c02h		;93f4
	add hl,bc		;93f7
	inc bc			;93f8
	nop			;93f9
	rlca			;93fa
	ld (bc),a		;93fb
	ld c,009h		;93fc
	inc bc			;93fe
	inc b			;93ff
	add hl,bc		;9400
	ld (bc),a		;9401
	ld b,008h		;9402
	inc bc			;9404
	ex af,af'		;9405
	rlca			;9406
	ld (bc),a		;9407
	rrca			;9408
	add hl,bc		;9409
	inc bc			;940a
	nop			;940b
	inc b			;940c
	ld (bc),a		;940d
	dec c			;940e
	ld a,(bc)		;940f
	ld (bc),a		;9410
	nop			;9411
	rst 30h			;9412
	ld (bc),a		;9413
	ld a,(bc)		;9414
	ld a,(bc)		;9415
	ld (bc),a		;9416
	inc bc			;9417
	inc b			;9418
	ld (bc),a		;9419
	dec c			;941a
	ld a,(bc)		;941b
	ld (bc),a		;941c
	inc bc			;941d
	rst 30h			;941e
	ld (bc),a		;941f
	ld a,(bc)		;9420
	ld a,(bc)		;9421
	ld (bc),a		;9422
	ld a,(ix+001h)		;9423
	dec a			;9426
	jr z,l943fh		;9427
	ret p			;9429
	ld (ix+001h),002h	;942a
	ld a,(ix+005h)		;942e
	cp 002h			;9431
	ret nc			;9433
	dec (ix+001h)		;9434
	call 0b447h		;9437
	res 4,(ix+015h)		;943a
	ret			;943e
l943fh:
	ld a,(ix+037h)		;943f
	or a			;9442
	ret nz			;9443
	jp 06e98h		;9444
	add a,a			;9447
	add a,008h		;9448
	push af			;944a
	call 0b399h		;944b
	pop bc			;944e
	ld a,b			;944f
	inc a			;9450
	call 0b399h		;9451
	ret			;9454
	ld h,c			;9455
	or h			;9456
	ld l,h			;9457
	or h			;9458
	ld (hl),a		;9459
	or h			;945a
	add a,d			;945b
	or h			;945c
	adc a,l			;945d
	or h			;945e
	sbc a,b			;945f
	or h			;9460
	dec bc			;9461
	nop			;9462
	nop			;9463
	ld bc,0fe00h		;9464
	inc b			;9467
	inc bc			;9468
	ld bc,0ff03h		;9469
	dec bc			;946c
	nop			;946d
	nop			;946e
	ld bc,0fe00h		;946f
	inc b			;9472
	inc bc			;9473
	ld bc,0ff01h		;9474
	dec bc			;9477
	nop			;9478
	nop			;9479
	ld bc,0fe00h		;947a
	inc b			;947d
	inc bc			;947e
	ld bc,0ff02h		;947f
	dec bc			;9482
	nop			;9483
	nop			;9484
	ld bc,0fe00h		;9485
	inc b			;9488
	dec b			;9489
	ld bc,0ff04h		;948a
	dec bc			;948d
	nop			;948e
	nop			;948f
	ld bc,0fe00h		;9490
	inc b			;9493
	inc bc			;9494
	ld bc,0ff05h		;9495
	dec bc			;9498
	nop			;9499
	nop			;949a
	ld bc,0fe00h		;949b
	inc b			;949e
	dec b			;949f
	ld bc,0ff10h		;94a0
	nop			;94a3
	nop			;94a4
	ld h,h			;94a5
	ld d,010h		;94a6
	ld hl,03220h		;94a8
	ld sp,04243h		;94ab
	ld d,h			;94ae
	nop			;94af
	sub b			;94b0
	nop			;94b1
	or b			;94b2
	nop			;94b3
	ret nz			;94b4
	rst 38h			;94b5
	ld (ix+026h),e		;94b6
	ld (ix+027h),d		;94b9
	ld (ix+025h),001h	;94bc
	ret			;94c0
	ld a,(ix+025h)		;94c1
	or a			;94c4
	ret z			;94c5
	dec a			;94c6
	ld (ix+025h),a		;94c7
	ret nz			;94ca
	ld l,(ix+026h)		;94cb
	ld h,(ix+027h)		;94ce
	call 0b4dbh		;94d1
	ld (ix+026h),l		;94d4
	ld (ix+027h),h		;94d7
	ret			;94da
l94dbh:
	ld a,(hl)		;94db
	inc hl			;94dc
	cp 0ffh			;94dd
	jr z,l94eeh		;94df
	ld (ix+025h),a		;94e1
	ld a,(hl)		;94e4
	bit 7,a			;94e5
	jr nz,l94ech		;94e7
	ld (ix+006h),a		;94e9
l94ech:
	inc hl			;94ec
	ret			;94ed
l94eeh:
	ld e,(hl)		;94ee
	inc hl			;94ef
	ld d,(hl)		;94f0
	ex de,hl		;94f1
	jr l94dbh		;94f2
	dec b			;94f4
	ld bc,00205h		;94f5
	inc bc			;94f8
	inc bc			;94f9
	ex af,af'		;94fa
	dec b			;94fb
	inc b			;94fc
	ld (bc),a		;94fd
	add hl,de		;94fe
	inc bc			;94ff
	dec b			;9500
	inc b			;9501
	dec b			;9502
	inc bc			;9503
	dec b			;9504
	dec b			;9505
	ld (bc),a		;9506
	ld (bc),a		;9507
	ld (bc),a		;9508
	ld bc,00002h		;9509
	ld (bc),a		;950c
	ld bc,00202h		;950d
	rst 38h			;9510
	cp 0b4h			;9511
	call 06a13h		;9513
	ld a,(ix+016h)		;9516
	cp 010h			;9519
	call c,0b53ah		;951b
	call 0b5fdh		;951e
	ld a,(ix+001h)		;9521
	cp 007h			;9524
	jp nc,04ae0h		;9526
	call 0461ah		;9529
	ld d,l			;952c
	or l			;952d
	ld (hl),e		;952e
	or l			;952f
	ld a,(hl)		;9530
	or l			;9531
	sbc a,a			;9532
	or l			;9533
	or a			;9534
	or l			;9535
	push bc			;9536
	or l			;9537
	in a,(0b5h)		;9538
	call 07058h		;953a
	ld (ix+016h),000h	;953d
	ld (ix+004h),001h	;9541
	ld a,002h		;9545
	ld (0c0d4h),a		;9547
	ret			;954a
	call 06c4bh		;954b
	ld bc,00206h		;954e
	ld (0ce69h),bc		;9551
	call 06754h		;9555
	ld a,(ix+008h)		;9558
	sub 004h		;955b
	ld (ix+008h),a		;955d
	ld (ix+00ah),007h	;9560
	ld (ix+018h),01eh	;9564
	call 069d7h		;9568
	ld a,020h		;956b
	ld (0ce4ah),a		;956d
	jp 06c1dh		;9570
	dec (ix+018h)		;9573
	ret nz			;9576
	ld (ix+017h),005h	;9577
	jp 06c1dh		;957b
	dec (ix+017h)		;957e
	ret nz			;9581
	ld (ix+017h),005h	;9582
	ld a,(ix+022h)		;9586
	push af			;9589
	or a			;958a
	ld a,02eh		;958b
	call z,04af5h		;958d
	pop af			;9590
	inc a			;9591
	ld (ix+022h),a		;9592
	cp 002h			;9595
	ret c			;9597
	ld (ix+017h),005h	;9598
	jp 06c1dh		;959c
	dec (ix+017h)		;959f
	ret nz			;95a2
	call 0b638h		;95a3
	ld (ix+017h),014h	;95a6
	ld a,(ix+021h)		;95aa
	inc a			;95ad
	ld (ix+021h),a		;95ae
	cp 004h			;95b1
	ret c			;95b3
	jp 06c1dh		;95b4
	dec (ix+017h)		;95b7
	ret nz			;95ba
	call 0b638h		;95bb
	ld (ix+017h),005h	;95be
	jp 06c1dh		;95c2
	dec (ix+017h)		;95c5
	ret nz			;95c8
	call 0b638h		;95c9
	ld (ix+017h),005h	;95cc
	ld a,(ix+021h)		;95d0
	dec a			;95d3
	ld (ix+021h),a		;95d4
	ret nz			;95d7
	jp 06c1dh		;95d8
	dec (ix+017h)		;95db
	ret nz			;95de
	ld (ix+017h),005h	;95df
	ld a,(ix+022h)		;95e3
	push af			;95e6
	cp 002h			;95e7
	ld a,02fh		;95e9
	call z,04af5h		;95eb
	pop af			;95ee
	dec a			;95ef
	ld (ix+022h),a		;95f0
	ret nz			;95f3
	ld (ix+001h),001h	;95f4
	ld (ix+018h),01eh	;95f8
	ret			;95fc
	call 0b60ch		;95fd
	ld a,(ix+022h)		;9600
	ld (ix+006h),a		;9603
	ld de,0b670h		;9606
	jp 07b65h		;9609
	ld a,(ix+021h)		;960c
	or a			;960f
	ret z			;9610
	ld b,(ix+008h)		;9611
	push bc			;9614
	neg			;9615
	add a,b			;9617
	inc a			;9618
	ld (ix+008h),a		;9619
	ld a,(ix+005h)		;961c
	inc a			;961f
	cp 008h			;9620
	jr c,l9625h		;9622
	xor a			;9624
l9625h:
	ld (ix+005h),a		;9625
	add a,003h		;9628
	ld (ix+006h),a		;962a
	ld de,0b670h		;962d
	call 07b65h		;9630
	pop bc			;9633
	ld (ix+008h),b		;9634
	ret			;9637
	ld hl,0ce80h		;9638
	ld b,014h		;963b
l963dh:
	ld a,(hl)		;963d
	cp 00dh			;963e
	ret z			;9640
	ld de,00040h		;9641
	add hl,de		;9644
	djnz l963dh		;9645
	push ix			;9647
	push ix			;9649
	ld a,00dh		;964b
	call 069a3h		;964d
	jr c,l966bh		;9650
	pop iy			;9652
	ld a,(iy+00ah)		;9654
	add a,008h		;9657
	ld (ix+00ah),a		;9659
	ld a,(iy+008h)		;965c
	add a,002h		;965f
	ld (ix+008h),a		;9661
	pop ix			;9664
	ld a,017h		;9666
	jp 04af5h		;9668
l966bh:
	pop ix			;966b
	pop ix			;966d
	ret			;966f
	add a,(hl)		;9670
	or (hl)			;9671
	adc a,h			;9672
	or (hl)			;9673
	sub d			;9674
	or (hl)			;9675
	sbc a,b			;9676
	or (hl)			;9677
	sbc a,(hl)		;9678
	or (hl)			;9679
	and h			;967a
	or (hl)			;967b
	xor d			;967c
	or (hl)			;967d
	or b			;967e
	or (hl)			;967f
	or (hl)			;9680
	or (hl)			;9681
	cp h			;9682
	or (hl)			;9683
	jp nz,006b6h		;9684
	inc b			;9687
	ld (bc),a		;9688
	ld bc,0ff00h		;9689
	ld b,004h		;968c
	ld bc,00101h		;968e
	rst 38h			;9691
	ld b,004h		;9692
	nop			;9694
	ld bc,0ff02h		;9695
	ld b,004h		;9698
	ld b,001h		;969a
	inc bc			;969c
	rst 38h			;969d
	ld b,004h		;969e
	ld b,001h		;96a0
	inc b			;96a2
	rst 38h			;96a3
	ld b,004h		;96a4
	ld b,001h		;96a6
	dec b			;96a8
	rst 38h			;96a9
	ld b,004h		;96aa
	ld b,001h		;96ac
	ld b,0ffh		;96ae
	ld b,004h		;96b0
	ld b,001h		;96b2
	rlca			;96b4
	rst 38h			;96b5
	ld b,004h		;96b6
	ld b,001h		;96b8
	ex af,af'		;96ba
	rst 38h			;96bb
	ld b,004h		;96bc
	ld b,001h		;96be
	add hl,bc		;96c0
	rst 38h			;96c1
	ld b,004h		;96c2
	ld b,001h		;96c4
	ld a,(bc)		;96c6
	rst 38h			;96c7
	ret			;96c8
	ld a,05eh		;96c9
	call 0684ch		;96cb
	ret c			;96ce
	ld a,(ix+025h)		;96cf
	and a			;96d2
	ld bc,0fa07h		;96d3
	jr z,l96dbh		;96d6
	ld bc,0f509h		;96d8
l96dbh:
	jp 06929h		;96db
	ld a,(ix+001h)		;96de
	dec a			;96e1
	jr z,l9748h		;96e2
	dec a			;96e4
	jr z,l9758h		;96e5
	ld a,00eh		;96e7
	ld (0ca26h),a		;96e9
	call 04678h		;96ec
	and 03fh		;96ef
	add a,040h		;96f1
	call 09de8h		;96f3
	call 07240h		;96f6
	call 06bebh		;96f9
	sra h			;96fc
	rr l			;96fe
	sra h			;9700
	rr l			;9702
	sra h			;9704
	rr l			;9706
	call 04612h		;9708
	ld (ix+00fh),l		;970b
	ld (ix+010h),h		;970e
	sra d			;9711
	rr e			;9713
	sra d			;9715
	rr e			;9717
	sra d			;9719
	rr e			;971b
	ex de,hl		;971d
	call 04612h		;971e
	ld (ix+011h),l		;9721
	ld (ix+012h),h		;9724
	ld (ix+017h),00ch	;9727
	ld a,(0ca19h)		;972b
	cp 004h			;972e
	ld bc,00204h		;9730
	jr c,l973fh		;9733
	ld bc,00806h		;9735
	cp 008h			;9738
	jr c,l973fh		;973a
	ld bc,00e07h		;973c
l973fh:
	ld (ix+016h),b		;973f
	ld (ix+018h),c		;9742
	jp 06c1dh		;9745
l9748h:
	ld a,(0ca02h)		;9748
	and 007h		;974b
	ret nz			;974d
	call 06a9ah		;974e
	call 06ad2h		;9751
	ret nz			;9754
	jp 06c1dh		;9755
l9758h:
	call 06adfh		;9758
	ret nz			;975b
	ld (ix+018h),002h	;975c
	inc (ix+005h)		;9760
	ld a,(ix+005h)		;9763
	cp 003h			;9766
	ret nz			;9768
	jp 06e98h		;9769
	ld a,(0ce76h)		;976c
	or a			;976f
	jp nz,07cc3h		;9770
	ld a,(ix+001h)		;9773
	cp 002h			;9776
	jp nc,04ae0h		;9778
	call 0461ah		;977b
	add a,d			;977e
	or a			;977f
	rlca			;9780
	cp b			;9781
	call 06796h		;9782
	ld (ix+003h),a		;9785
	ld (ix+016h),0ffh	;9788
	ld (ix+005h),011h	;978c
	ld hl,0c000h		;9790
	ld (ix+021h),h		;9793
	ld (ix+022h),l		;9796
	ld (ix+008h),017h	;9799
	bit 0,(ix+003h)		;979d
	ld a,005h		;97a1
	ld hl,0b9d0h		;97a3
	jr z,l97adh		;97a6
	ld a,019h		;97a8
	ld hl,0b978h		;97aa
l97adh:
	ld (ix+00ah),a		;97ad
	ld (ix+028h),h		;97b0
	ld (ix+027h),l		;97b3
	call 0b7bch		;97b6
	jp 06c1dh		;97b9
	ld b,007h		;97bc
l97beh:
	push bc			;97be
	call 0b7cah		;97bf
	jr c,l97c8h		;97c2
	pop bc			;97c4
	djnz l97beh		;97c5
	ret			;97c7
l97c8h:
	pop bc			;97c8
	ret			;97c9
	call 0682ah		;97ca
	ret c			;97cd
	ld a,(ix+017h)		;97ce
	inc a			;97d1
	ld (ix+017h),a		;97d2
	ld (iy+005h),011h	;97d5
	ld (iy+016h),0ffh	;97d9
	rrca			;97dd
	jr nc,l97e7h		;97de
	set 3,(iy+015h)		;97e0
	dec (iy+005h)		;97e4
l97e7h:
	ld h,(ix+008h)		;97e7
	ld (iy+008h),h		;97ea
	ld h,(ix+00ah)		;97ed
	ld (iy+00ah),h		;97f0
	ld (iy+001h),001h	;97f3
	ld (ix+021h),000h	;97f7
	ld a,(iy+002h)		;97fb
	inc a			;97fe
	ld (iy+002h),a		;97ff
	ld (ix+002h),a		;9802
	or a			;9805
	ret			;9806
	ld a,(ix+016h)		;9807
	or a			;980a
	jp z,07cc3h		;980b
	call 068b9h		;980e
	call 0b82ch		;9811
	ld a,(ix+036h)		;9814
	or a			;9817
	ret nz			;9818
	ld a,(ix+021h)		;9819
	rrca			;981c
	rrca			;981d
	rrca			;981e
	rrca			;981f
	add a,004h		;9820
	and 00fh		;9822
	ld (ix+005h),a		;9824
	set 3,(ix+015h)		;9827
	ret			;982b
	jp c,0b8cbh		;982c
	call 0b899h		;982f
	call 0b842h		;9832
	ld a,(ix+004h)		;9835
	or a			;9838
	ret z			;9839
	ld (iy+004h),a		;983a
	ld (ix+004h),000h	;983d
	ret			;9841
	push af			;9842
	call 074edh		;9843
	call 0b873h		;9846
	pop af			;9849
	push af			;984a
	push hl			;984b
	call 074efh		;984c
	call 0b873h		;984f
	ld d,(iy+008h)		;9852
	ld e,(iy+007h)		;9855
	or a			;9858
	add hl,de		;9859
	ld (ix+008h),h		;985a
	ld (ix+007h),l		;985d
	ex (sp),hl		;9860
	ld d,(iy+00ah)		;9861
	ld e,(iy+009h)		;9864
	or a			;9867
	add hl,de		;9868
	ld (ix+00ah),h		;9869
	ld (ix+009h),l		;986c
	ex de,hl		;986f
	pop hl			;9870
	pop af			;9871
	ret			;9872
	bit 7,h			;9873
	jr z,l9880h		;9875
	call 04612h		;9877
	call 0b880h		;987a
	jp 04612h		;987d
l9880h:
	ld h,000h		;9880
	add hl,hl		;9882
	ld d,h			;9883
	ld e,l			;9884
	add hl,hl		;9885
	add hl,hl		;9886
	add hl,hl		;9887
	or a			;9888
	sbc hl,de		;9889
	add hl,hl		;988b
	add hl,hl		;988c
	add hl,hl		;988d
	add hl,hl		;988e
	rl l			;988f
	rl h			;9891
	sbc a,a			;9893
	ld l,h			;9894
	and 001h		;9895
	ld h,a			;9897
	ret			;9898
	ld h,(iy+025h)		;9899
	ld l,(iy+026h)		;989c
	ld d,(iy+023h)		;989f
	ld e,(iy+024h)		;98a2
	ld (ix+023h),d		;98a5
	ld (ix+024h),e		;98a8
	add hl,de		;98ab
	ld (ix+025h),h		;98ac
	ld (ix+026h),l		;98af
	ld d,(iy+021h)		;98b2
	ld e,(iy+022h)		;98b5
	add hl,de		;98b8
	ld (ix+021h),h		;98b9
	ld (ix+022h),l		;98bc
	ld a,h			;98bf
	ret			;98c0
	push hl			;98c1
	push af			;98c2
	ld hl,l8000h		;98c3
	add hl,de		;98c6
	ex de,hl		;98c7
	pop af			;98c8
	pop hl			;98c9
	ret			;98ca
	ld a,(ix+004h)		;98cb
	or a			;98ce
	jr nz,l9923h		;98cf
	ld h,(ix+028h)		;98d1
	ld l,(ix+027h)		;98d4
	ld d,(ix+021h)		;98d7
	ld e,(ix+022h)		;98da
	call 0b949h		;98dd
	ld (ix+021h),d		;98e0
	ld (ix+022h),e		;98e3
	push af			;98e6
	ld d,(ix+025h)		;98e7
	ld e,(ix+026h)		;98ea
	call 0b8c1h		;98ed
	call 0b949h		;98f0
	call 0b8c1h		;98f3
	ld (ix+025h),d		;98f6
	ld (ix+026h),e		;98f9
	push af			;98fc
	ld d,(ix+023h)		;98fd
	ld e,(ix+024h)		;9900
	call 0b8c1h		;9903
	call 0b949h		;9906
	call 0b8c1h		;9909
	ld (ix+023h),d		;990c
	ld (ix+024h),e		;990f
	ld c,000h		;9912
	rr c			;9914
	pop af			;9916
	rr c			;9917
	pop af			;9919
	rr c			;991a
	ld a,c			;991c
	or a			;991d
	ret nz			;991e
	call 0b928h		;991f
	ret			;9922
l9923h:
	ld (ix+004h),000h	;9923
	ret			;9927
	ld h,(ix+028h)		;9928
	ld l,(ix+027h)		;992b
	ld de,0000ch		;992e
	add hl,de		;9931
	ld e,(hl)		;9932
	inc hl			;9933
	ld a,(hl)		;9934
	dec hl			;9935
	and e			;9936
	inc a			;9937
	call z,0b942h		;9938
	ld (ix+028h),h		;993b
	ld (ix+027h),l		;993e
	ret			;9941
	inc hl			;9942
	inc hl			;9943
	ld e,(hl)		;9944
	inc hl			;9945
	ld d,(hl)		;9946
	ex de,hl		;9947
	ret			;9948
	ld a,h			;9949
	or l			;994a
	ret z			;994b
	ld c,(hl)		;994c
	inc hl			;994d
	ld b,(hl)		;994e
	inc hl			;994f
	push bc			;9950
	ld c,(hl)		;9951
	inc hl			;9952
	ld b,(hl)		;9953
	inc hl			;9954
	ex (sp),hl		;9955
	call 0b95bh		;9956
	pop hl			;9959
	ret			;995a
	call 04650h		;995b
	ret z			;995e
	jr c,l996bh		;995f
	ex de,hl		;9961
	add hl,bc		;9962
	ex de,hl		;9963
	call 04650h		;9964
	ccf			;9967
	ret c			;9968
	jr l9974h		;9969
l996bh:
	ex de,hl		;996b
	or a			;996c
	sbc hl,bc		;996d
	ex de,hl		;996f
	call 04650h		;9970
	ret c			;9973
l9974h:
	ld d,h			;9974
	ld e,l			;9975
	or a			;9976
	ret			;9977
	nop			;9978
	sbc a,b			;9979
	nop			;997a
	ld b,000h		;997b
	add a,b			;997d
	add a,b			;997e
	ld bc,07800h		;997f
	add a,b			;9982
	ld bc,0d800h		;9983
	sub b			;9986
	nop			;9987
	nop			;9988
	ld a,e			;9989
	ld e,000h		;998a
	nop			;998c
	add a,b			;998d
	jr l9990h		;998e
l9990h:
	nop			;9990
	ret pe			;9991
	sub b			;9992
	nop			;9993
	nop			;9994
	add a,b			;9995
	ld e,000h		;9996
	nop			;9998
	adc a,b			;9999
	jr l999ch		;999a
l999ch:
	nop			;999c
	or b			;999d
	sub b			;999e
	nop			;999f
	nop			;99a0
	add a,b			;99a1
	ld e,000h		;99a2
	nop			;99a4
	ld a,b			;99a5
	jr l99a8h		;99a6
l99a8h:
	nop			;99a8
	or b			;99a9
	sub b			;99aa
	nop			;99ab
	nop			;99ac
	add a,b			;99ad
	ld e,000h		;99ae
	nop			;99b0
	ld a,(hl)		;99b1
	jr l99b4h		;99b2
l99b4h:
	nop			;99b4
	ret c			;99b5
	sub b			;99b6
	nop			;99b7
	nop			;99b8
	ld a,e			;99b9
	ld e,000h		;99ba
	nop			;99bc
	add a,b			;99bd
	jr l99c0h		;99be
l99c0h:
	nop			;99c0
	or b			;99c1
	sub b			;99c2
	nop			;99c3
	nop			;99c4
	add a,b			;99c5
	ld e,000h		;99c6
	nop			;99c8
	ld a,(hl)		;99c9
	jr l99cch		;99ca
l99cch:
	rst 38h			;99cc
	rst 38h			;99cd
	add a,h			;99ce
	cp c			;99cf
	nop			;99d0
	ret pe			;99d1
	nop			;99d2
	inc bc			;99d3
	nop			;99d4
	add a,b			;99d5
	add a,b			;99d6
	ld bc,l8800h		;99d7
	add a,b			;99da
	ld bc,0a800h		;99db
	sub b			;99de
	nop			;99df
	nop			;99e0
	add a,l			;99e1
	ld e,000h		;99e2
	nop			;99e4
	add a,b			;99e5
	jr l99e8h		;99e6
l99e8h:
	nop			;99e8
	sbc a,b			;99e9
	sub b			;99ea
	nop			;99eb
	nop			;99ec
	add a,b			;99ed
	ld e,000h		;99ee
	nop			;99f0
	ld a,b			;99f1
	jr l99f4h		;99f2
l99f4h:
	nop			;99f4
	ret nc			;99f5
	sub b			;99f6
	nop			;99f7
	nop			;99f8
	add a,b			;99f9
	ld e,000h		;99fa
	nop			;99fc
	adc a,b			;99fd
	jr l9a00h		;99fe
l9a00h:
	nop			;9a00
	ret nc			;9a01
	sub b			;9a02
	nop			;9a03
	nop			;9a04
	add a,b			;9a05
	ld e,000h		;9a06
	nop			;9a08
	add a,d			;9a09
	jr l9a0ch		;9a0a
l9a0ch:
	nop			;9a0c
	xor b			;9a0d
	ret nz			;9a0e
	nop			;9a0f
	nop			;9a10
	add a,l			;9a11
	jr nc,l9a14h		;9a12
l9a14h:
	nop			;9a14
	add a,b			;9a15
	jr nc,l9a18h		;9a16
l9a18h:
	nop			;9a18
	ret nc			;9a19
	sub b			;9a1a
	nop			;9a1b
	nop			;9a1c
	add a,b			;9a1d
	ld e,000h		;9a1e
	nop			;9a20
	add a,d			;9a21
	jr l9a24h		;9a22
l9a24h:
	rst 38h			;9a24
	rst 38h			;9a25
	call c,0ddb9h		;9a26
	ld a,(hl)		;9a29
	rla			;9a2a
	inc a			;9a2b
	cp 003h			;9a2c
	jr c,l9a31h		;9a2e
	xor a			;9a30
l9a31h:
	ld (ix+017h),a		;9a31
	call 0b268h		;9a34
	ld (ix+005h),a		;9a37
	ret			;9a3a
	ld a,(ix+001h)		;9a3b
	dec a			;9a3e
	jr z,l9a5dh		;9a3f
	call 06754h		;9a41
	ld a,d			;9a44
	rla			;9a45
	ld c,006h		;9a46
	jr nc,l9a52h		;9a48
	inc (ix+020h)		;9a4a
	ld (ix+006h),001h	;9a4d
	inc c			;9a51
l9a52h:
	ld (ix+03eh),c		;9a52
	ld a,020h		;9a55
	call 06ae8h		;9a57
	jp 06c1dh		;9a5a
l9a5dh:
	call 06adfh		;9a5d
	ret nz			;9a60
	ld b,(ix+008h)		;9a61
	inc b			;9a64
	ld a,(0ca48h)		;9a65
	sub b			;9a68
	jr nc,l9a6dh		;9a69
	neg			;9a6b
l9a6dh:
	cp 004h			;9a6d
	jr nc,l9a81h		;9a6f
	ld b,(ix+00ah)		;9a71
	inc b			;9a74
	inc b			;9a75
	ld a,(0ca4ah)		;9a76
	sub b			;9a79
	jr nc,l9a7eh		;9a7a
	neg			;9a7c
l9a7eh:
	cp 006h			;9a7e
	ret c			;9a80
l9a81h:
	ld a,030h		;9a81
	call 06ae8h		;9a83
	call 06814h		;9a86
	ret c			;9a89
	ld a,(ix+020h)		;9a8a
	ld (iy+020h),a		;9a8d
	ld bc,00201h		;9a90
	and a			;9a93
	jr nz,l9a99h		;9a94
	ld bc,002feh		;9a96
l9a99h:
	call 06929h		;9a99
	jp 0699eh		;9a9c
	ld a,(ix+001h)		;9a9f
	call 0461ah		;9aa2
	xor e			;9aa5
	cp d			;9aa6
	call pe,01abah		;9aa7
	cp e			;9aaa
	ld a,(ix+020h)		;9aab
	ld c,a			;9aae
	ld b,(ix+008h)		;9aaf
	ld (ix+022h),b		;9ab2
	call 0bb27h		;9ab5
	jr c,l9b24h		;9ab8
	ld a,c			;9aba
	and a			;9abb
	ld hl,0ff60h		;9abc
	ld de,00018h		;9abf
	jr z,l9acah		;9ac2
	ld hl,000a0h		;9ac4
	ld de,0ffe8h		;9ac7
l9acah:
	call 06bf3h		;9aca
	ex de,hl		;9acd
	call 06c0ch		;9ace
	ld hl,0ce55h		;9ad1
	ld a,(0ca19h)		;9ad4
	cp 004h			;9ad7
	ld b,002h		;9ad9
	jr c,l9adfh		;9adb
	ld b,004h		;9add
l9adfh:
	ld a,(hl)		;9adf
	inc a			;9ae0
	cp b			;9ae1
	jr c,l9ae8h		;9ae2
	xor a			;9ae4
	inc (ix+03dh)		;9ae5
l9ae8h:
	ld (hl),a		;9ae8
	jp 06c1dh		;9ae9
	ld a,(ix+020h)		;9aec
	and a			;9aef
	ld l,(ix+00ch)		;9af0
	ld h,(ix+00bh)		;9af3
	jr nz,l9afbh		;9af6
	call 04612h		;9af8
l9afbh:
	ld de,00008h		;9afb
	call 04650h		;9afe
	call c,06a9ah		;9b01
	ld a,(ix+021h)		;9b04
	sub (ix+008h)		;9b07
	jr nc,l9b0eh		;9b0a
	neg			;9b0c
l9b0eh:
	cp 001h			;9b0e
	ret nc			;9b10
	call 0bb48h		;9b11
	call 06bf0h		;9b14
	jp 06c1dh		;9b17
	call 06a9ah		;9b1a
	ld a,(ix+008h)		;9b1d
	cp (ix+022h)		;9b20
	ret nz			;9b23
l9b24h:
	jp 06e98h		;9b24
	ld a,(0ca48h)		;9b27
	inc a			;9b2a
	ld d,a			;9b2b
	inc b			;9b2c
	sub b			;9b2d
	ld b,a			;9b2e
	ld a,c			;9b2f
	and a			;9b30
	ld a,b			;9b31
	jr nz,l9b36h		;9b32
	neg			;9b34
l9b36h:
	rla			;9b36
	ret c			;9b37
	ld a,004h		;9b38
	cp d			;9b3a
	jr nc,l9b43h		;9b3b
	ld a,010h		;9b3d
	cp d			;9b3f
	jr c,l9b43h		;9b40
	ld a,d			;9b42
l9b43h:
	ld (ix+021h),a		;9b43
	or a			;9b46
	ret			;9b47
	ld a,(0ca4ah)		;9b48
	sub (ix+00ah)		;9b4b
	ld e,a			;9b4e
	jr nc,l9b53h		;9b4f
	neg			;9b51
l9b53h:
	cp 006h			;9b53
	ret c			;9b55
	ld a,(ix+00ah)		;9b56
	and a			;9b59
	ret m			;9b5a
	ld a,e			;9b5b
	and a			;9b5c
	ld bc,00000h		;9b5d
	jp m,0bb66h		;9b60
	ld bc,00400h		;9b63
	jp l9caah+3		;9b66
	ld a,(ix+001h)		;9b69
	dec a			;9b6c
	jr z,l9ba8h		;9b6d
	dec a			;9b6f
	jr z,l9bc0h		;9b70
	dec a			;9b72
	jr z,l9bc5h		;9b73
	call 06796h		;9b75
	ld d,a			;9b78
	and 03fh		;9b79
	ld (ix+008h),a		;9b7b
	ld a,d			;9b7e
	rlca			;9b7f
	jr nc,l9b85h		;9b80
	inc (ix+020h)		;9b82
l9b85h:
	ld de,0ff80h		;9b85
	ld b,01eh		;9b88
	ld a,(0ca04h)		;9b8a
	and a			;9b8d
	jr z,l9b9ch		;9b8e
	ld de,00080h		;9b90
	ld b,000h		;9b93
	inc (ix+023h)		;9b95
	ld (ix+016h),040h	;9b98
l9b9ch:
	ld (ix+00ah),b		;9b9c
	call 06bfdh		;9b9f
	inc (ix+017h)		;9ba2
	jp 06c1dh		;9ba5
l9ba8h:
	call 0bc01h		;9ba8
	ld a,(ix+00ah)		;9bab
	sub 01ah		;9bae
	jr nc,l9bb4h		;9bb0
	neg			;9bb2
l9bb4h:
	cp 001h			;9bb4
	ret nc			;9bb6
	call 06bfah		;9bb7
	call 0bbf1h		;9bba
	jp 06c1dh		;9bbd
l9bc0h:
	call 0bbc6h		;9bc0
	jr l9c0bh		;9bc3
l9bc5h:
	ret			;9bc5
	ld a,(ix+008h)		;9bc6
	cp 002h			;9bc9
	jr c,l9bd0h		;9bcb
	cp 00fh			;9bcd
	ret c			;9bcf
l9bd0h:
	ld a,001h		;9bd0
	xor (ix+020h)		;9bd2
	ld (ix+020h),a		;9bd5
	call 0bbf1h		;9bd8
	ld a,(ix+021h)		;9bdb
	inc a			;9bde
	ld (ix+021h),a		;9bdf
	cp 003h			;9be2
	ret c			;9be4
	call 06bf0h		;9be5
	ld de,0ff60h		;9be8
	call 06bfdh		;9beb
	jp 06c1dh		;9bee
	ld a,(ix+020h)		;9bf1
	and a			;9bf4
	ld hl,00040h		;9bf5
	jr nz,l9bfdh		;9bf8
	ld hl,0ffc0h		;9bfa
l9bfdh:
	call 06bf3h		;9bfd
	ret			;9c00
	call 06ad2h		;9c01
	ret nz			;9c04
	ld (ix+017h),008h	;9c05
	jr l9c20h		;9c09
l9c0bh:
	call 06ad2h		;9c0b
	ret nz			;9c0e
	call 0755dh		;9c0f
	ld a,e			;9c12
	bit 7,a			;9c13
	jr z,l9c19h		;9c15
	neg			;9c17
l9c19h:
	cp 002h			;9c19
	ret nc			;9c1b
	ld (ix+017h),028h	;9c1c
l9c20h:
	ld bc,001ffh		;9c20
	call 0bc2fh		;9c23
	ld bc,00002h		;9c26
	call 0bc2fh		;9c29
	ld bc,00105h		;9c2c
	push bc			;9c2f
	ld bc,00000h		;9c30
	call sub_9cb5h		;9c33
	pop bc			;9c36
	jp 0737ch		;9c37
	call 0bc4dh		;9c3a
	call 07c44h		;9c3d
	jp c,07cc3h		;9c40
	ld a,(ix+00ah)		;9c43
	add a,008h		;9c46
	and a			;9c48
	ret p			;9c49
	jp 06e98h		;9c4a
	ld a,(ix+001h)		;9c4d
	and a			;9c50
	jr nz,l9c64h		;9c51
	call 06754h		;9c53
	ld (ix+03eh),009h	;9c56
	ld (ix+005h),001h	;9c5a
	call 0bcaah		;9c5e
	jp 06c1dh		;9c61
l9c64h:
	ld a,(ix+00ah)		;9c64
	and a			;9c67
	ret m			;9c68
	cp 01ch			;9c69
	ret nc			;9c6b
	ld a,(ix+008h)		;9c6c
	cp 018h			;9c6f
	ret nc			;9c71
	ld a,(ix+024h)		;9c72
	and a			;9c75
	call z,0bcc0h		;9c76
	call 06ad2h		;9c79
	ret nz			;9c7c
	call 06adfh		;9c7d
	ret nz			;9c80
	ld (ix+018h),004h	;9c81
	ld a,(ix+024h)		;9c85
	inc (ix+024h)		;9c88
	cp 003h			;9c8b
	jr z,l9caah		;9c8d
	cp 001h			;9c8f
	ret z			;9c91
	ld b,(ix+005h)		;9c92
	call sub_9cc0h		;9c95
	ex de,hl		;9c98
	ld l,(ix+005h)		;9c99
	ld h,000h		;9c9c
	add hl,hl		;9c9e
	ld bc,0bcb6h		;9c9f
	add hl,bc		;9ca2
	ld c,(hl)		;9ca3
	inc hl			;9ca4
	ld b,(hl)		;9ca5
	ex de,hl		;9ca6
	jp 0737ch		;9ca7
l9caah:
	ld (ix+024h),000h	;9caa
	ld (ix+017h),020h	;9cae
	inc (ix+018h)		;9cb2
sub_9cb5h:
	ret			;9cb5
	ld (bc),a		;9cb6
	nop			;9cb7
	ld bc,00001h		;9cb8
	ld (bc),a		;9cbb
	ld bc,00204h		;9cbc
	dec b			;9cbf
sub_9cc0h:
	ld iy,0ca40h		;9cc0
	call 06b85h		;9cc4
	call 09da9h		;9cc7
	rrca			;9cca
	rrca			;9ccb
	rrca			;9ccc
	rrca			;9ccd
	and 00fh		;9cce
	ld l,a			;9cd0
	ld h,000h		;9cd1
	ld de,0bcdch		;9cd3
	add hl,de		;9cd6
	ld a,(hl)		;9cd7
	ld (ix+005h),a		;9cd8
	ret			;9cdb
	inc b			;9cdc
	inc bc			;9cdd
	inc bc			;9cde
	ld (bc),a		;9cdf
	ld (bc),a		;9ce0
	ld bc,00001h		;9ce1
	nop			;9ce4
	ld bc,00201h		;9ce5
	ld (bc),a		;9ce8
	inc bc			;9ce9
	inc bc			;9cea
	inc b			;9ceb
	call 082cah		;9cec
	call 07c44h		;9cef
	jp c,07cc3h		;9cf2
	ld a,(ix+00ah)		;9cf5
	inc a			;9cf8
	and a			;9cf9
	ret p			;9cfa
	jp 06e98h		;9cfb
	call 06754h		;9cfe
	ld hl,0ce53h		;9d01
	inc (hl)		;9d04
	ld a,(hl)		;9d05
	rrca			;9d06
	jr nc,l9d0ch		;9d07
	inc (ix+03dh)		;9d09
l9d0ch:
	jp 06c1dh		;9d0c
	ld a,(ix+001h)		;9d0f
	dec a			;9d12
	jr z,l9d22h		;9d13
	dec a			;9d15
	jr z,l9d47h		;9d16
	call 06754h		;9d18
	ld (ix+03eh),00bh	;9d1b
	jp 06c1dh		;9d1f
l9d22h:
	ld l,(ix+020h)		;9d22
	ld h,000h		;9d25
	add hl,hl		;9d27
	ld de,0bd6bh		;9d28
	add hl,de		;9d2b
	ld a,(hl)		;9d2c
	and a			;9d2d
	ret z			;9d2e
	cp (ix+00ah)		;9d2f
	ret c			;9d32
	inc (ix+020h)		;9d33
	inc hl			;9d36
	ld a,(0ca19h)		;9d37
	cp (hl)			;9d3a
	ret c			;9d3b
	ld (ix+018h),006h	;9d3c
	ld (ix+006h),001h	;9d40
	jp 06c1dh		;9d44
l9d47h:
	call 06adfh		;9d47
	ret nz			;9d4a
	ld de,00004h		;9d4b
	ld bc,000ffh		;9d4e
	call 09d1eh		;9d51
	ld de,00007h		;9d54
	ld bc,003ffh		;9d57
	call 09d1eh		;9d5a
	ld a,017h		;9d5d
	call 04af0h		;9d5f
	ld (ix+006h),000h	;9d62
	ld (ix+001h),001h	;9d66
	ret			;9d6a
	dec de			;9d6b
	inc bc			;9d6c
	jr l9d6fh		;9d6d
l9d6fh:
	djnz $+7		;9d6f
	inc b			;9d71
	ex af,af'		;9d72
	nop			;9d73
	ld a,(ix+001h)		;9d74
	dec a			;9d77
	jr z,l9d88h		;9d78
	call 04678h		;9d7a
	ld d,018h		;9d7d
	call 0722ah		;9d7f
	call 06bebh		;9d82
	jp 06c1dh		;9d85
l9d88h:
	ld a,(ix+008h)		;9d88
	sub 001h		;9d8b
	cp 014h			;9d8d
	call nc,06b43h		;9d8f
	ld a,(ix+00ah)		;9d92
	cp 01dh			;9d95
	call nc,06b53h		;9d97
	ret			;9d9a
	ld a,(ix+001h)		;9d9b
	and a			;9d9e
	jr nz,l9dadh		;9d9f
	call 06754h		;9da1
	call 06796h		;9da4
	ld (ix+020h),a		;9da7
	jp 06c1dh		;9daa
l9dadh:
	ld a,(ix+00ah)		;9dad
	add a,011h		;9db0
	and a			;9db2
	jp m,06e98h		;9db3
	ld a,(0ca3bh)		;9db6
	add a,(ix+00ah)		;9db9
	and 007h		;9dbc
	ld d,a			;9dbe
	ld a,(0ca1ch)		;9dbf
	add a,(ix+009h)		;9dc2
	jr nc,l9dc8h		;9dc5
	inc d			;9dc7
l9dc8h:
	res 3,d			;9dc8
	ld c,d			;9dca
	ld b,003h		;9dcb
	xor a			;9dcd
l9dceh:
	push af			;9dce
	push bc			;9dcf
	add a,c			;9dd0
	call 07a43h		;9dd1
	pop bc			;9dd4
	pop af			;9dd5
	add a,008h		;9dd6
	djnz l9dceh		;9dd8
	ret			;9dda
	ld a,(ix+001h)		;9ddb
	dec a			;9dde
	jr z,l9df6h		;9ddf
	dec a			;9de1
	jr z,l9e36h		;9de2
	dec a			;9de4
	jr z,l9e52h		;9de5
	call 06754h		;9de7
	ld a,d			;9dea
	bit 7,a			;9deb
	jr z,l9df3h		;9ded
	ld (ix+00ah),000h	;9def
l9df3h:
	jp 06c1dh		;9df3
l9df6h:
	ld iy,0ca40h		;9df6
	ld a,008h		;9dfa
	call 06b7fh		;9dfc
	sra h			;9dff
	rr l			;9e01
	sra h			;9e03
	rr l			;9e05
	ld (ix+00bh),l		;9e07
	ld (ix+00ch),h		;9e0a
	sra h			;9e0d
l9e0fh:
	rr l			;9e0f
	ld (ix+00fh),l		;9e11
	ld (ix+010h),h		;9e14
	sra d			;9e17
	rr e			;9e19
	sra d			;9e1b
	rr e			;9e1d
	ld (ix+00dh),e		;9e1f
	ld (ix+00eh),d		;9e22
	sra d			;9e25
	rr e			;9e27
	ld (ix+011h),e		;9e29
	ld (ix+012h),d		;9e2c
	ld (ix+017h),010h	;9e2f
	jp 06c1dh		;9e33
l9e36h:
	ld (ix+005h),001h	;9e36
	call 06ad2h		;9e3a
	jr z,l9e42h		;9e3d
	jp 06a9ah		;9e3f
l9e42h:
	ld hl,00020h		;9e42
	ld de,00000h		;9e45
	call 06bebh		;9e48
	ld (ix+017h),008h	;9e4b
	jp 06c1dh		;9e4f
l9e52h:
	ld (ix+005h),000h	;9e52
	call 06ad2h		;9e56
	ret nz			;9e59
	ld (ix+001h),001h	;9e5a
	ret			;9e5e
	ld a,(ix+001h)		;9e5f
	dec a			;9e62
	jr z,l9e7eh		;9e63
	dec a			;9e65
	jr z,l9ec4h		;9e66
	dec a			;9e68
	jr z,l9eb7h		;9e69
	call 06754h		;9e6b
	call 06796h		;9e6e
	call 06796h		;9e71
	ld (ix+021h),a		;9e74
	ld (ix+03eh),00ch	;9e77
	jp 06c1dh		;9e7b
l9e7eh:
	ld (ix+006h),000h	;9e7e
	ld l,(ix+026h)		;9e82
	ld h,000h		;9e85
	add hl,hl		;9e87
	ld de,0befdh		;9e88
	add hl,de		;9e8b
	ld a,(hl)		;9e8c
	and a			;9e8d
	ret z			;9e8e
	cp (ix+00ah)		;9e8f
	ret c			;9e92
	inc hl			;9e93
	inc (ix+026h)		;9e94
	ld b,(hl)		;9e97
	ld a,(0ca19h)		;9e98
	cp b			;9e9b
	ret c			;9e9c
	call 0755dh		;9e9d
	ld a,e			;9ea0
	bit 7,a			;9ea1
	jr z,l9ea7h		;9ea3
	neg			;9ea5
l9ea7h:
	cp 00fh			;9ea7
	jr c,l9eadh		;9ea9
	ld a,00fh		;9eab
l9eadh:
	ld (ix+025h),a		;9ead
	ld (ix+018h),006h	;9eb0
	jp 06c1dh		;9eb4
l9eb7h:
	call 06adfh		;9eb7
	ret nz			;9eba
	ld (ix+022h),000h	;9ebb
	ld (ix+001h),001h	;9ebf
	ret			;9ec3
l9ec4h:
	ld (ix+006h),001h	;9ec4
	call 06adfh		;9ec8
	ret nz			;9ecb
	ld a,011h		;9ecc
	call 0684ch		;9ece
	ret c			;9ed1
	ld bc,00202h		;9ed2
	call 06929h		;9ed5
	call 0699eh		;9ed8
	ld l,(ix+025h)		;9edb
	ld h,000h		;9ede
	ld de,0bf04h		;9ee0
	add hl,de		;9ee3
	ld a,(hl)		;9ee4
	ld (iy+017h),a		;9ee5
	ld (ix+018h),004h	;9ee8
	inc (ix+022h)		;9eec
	ld a,(ix+021h)		;9eef
	cp (ix+022h)		;9ef2
	ret nz			;9ef5
	ld (ix+018h),008h	;9ef6
	jp 06c1dh		;9efa
	ld a,(de)		;9efd
	nop			;9efe
	ld (de),a		;9eff
	dec b			;9f00
	ld b,008h		;9f01
	nop			;9f03
	ld (bc),a		;9f04
	inc bc			;9f05
	inc b			;9f06
	inc b			;9f07
	dec b			;9f08
	dec b			;9f09
	ld b,006h		;9f0a
	rlca			;9f0c
	rlca			;9f0d
	ex af,af'		;9f0e
	add hl,bc		;9f0f
	ld a,(bc)		;9f10
	dec bc			;9f11
	inc c			;9f12
	dec c			;9f13
	call 06a13h		;9f14
	ld de,0bfc0h		;9f17
	call 07b65h		;9f1a
	ld a,(ix+001h)		;9f1d
	dec a			;9f20
	jr z,l9f3fh		;9f21
	dec a			;9f23
	jr z,l9f5fh		;9f24
	dec a			;9f26
	jr z,l9f8dh		;9f27
	call 06754h		;9f29
	call 069f2h		;9f2c
	ld a,(0ca04h)		;9f2f
	and a			;9f32
	jr z,l9f39h		;9f33
	ld (ix+016h),038h	;9f35
l9f39h:
	call 0bfaeh		;9f39
	jp 06c1dh		;9f3c
l9f3fh:
	ld b,004h		;9f3f
	call 06ac2h		;9f41
	call 07c6bh		;9f44
	ret nc			;9f47
	ld a,001h		;9f48
	ld (0ce4ch),a		;9f4a
	ld a,034h		;9f4d
	call 04af5h		;9f4f
	call 07cbeh		;9f52
	ld (ix+017h),005h	;9f55
	inc (ix+018h)		;9f59
	jp 06c1dh		;9f5c
l9f5fh:
	call 0bf9ah		;9f5f
	call 06adfh		;9f62
	ret nz			;9f65
	ld (ix+018h),004h	;9f66
	call 06ad2h		;9f6a
	jr z,l9f86h		;9f6d
	cp 003h			;9f6f
	jr nz,l9f77h		;9f71
	ld (ix+006h),004h	;9f73
l9f77h:
	dec a			;9f77
	ld l,a			;9f78
	ld h,000h		;9f79
	add hl,hl		;9f7b
	ld de,0bfb8h		;9f7c
	add hl,de		;9f7f
	ld e,(hl)		;9f80
	inc hl			;9f81
	ld d,(hl)		;9f82
	jp 09a62h		;9f83
l9f86h:
	ld (ix+017h),070h	;9f86
	jp 06c1dh		;9f8a
l9f8dh:
	call 0bf9ah		;9f8d
	call 06ad2h		;9f90
	ret nz			;9f93
	call 069fbh		;9f94
	jp 06e98h		;9f97
	ld hl,0ce48h		;9f9a
	res 1,(hl)		;9f9d
	dec (ix+020h)		;9f9f
	ret nz			;9fa2
	ld (hl),003h		;9fa3
	ld a,(0ce4dh)		;9fa5
	and a			;9fa8
	ld a,035h		;9fa9
	call z,04af0h		;9fab
	call 04678h		;9fae
	and 007h		;9fb1
	inc a			;9fb3
	ld (ix+020h),a		;9fb4
	ret			;9fb7
	defb 0fdh,002h,0feh ;illegal sequence	;9fb8
	ex af,af'		;9fbb
	ld (bc),a		;9fbc
	inc b			;9fbd
	inc b			;9fbe
	cp 0cah			;9fbf
	cp a			;9fc1
	push de			;9fc2
	cp a			;9fc3
	ret po			;9fc4
	cp a			;9fc5
	ex de,hl		;9fc6
	cp a			;9fc7
	or 0bfh			;9fc8
	dec bc			;9fca
	nop			;9fcb
	nop			;9fcc
	ld bc,0fe00h		;9fcd
	ld a,(bc)		;9fd0
	nop			;9fd1
	ld bc,0ff04h		;9fd2
	dec bc			;9fd5
	nop			;9fd6
	nop			;9fd7
	ld bc,0fe01h		;9fd8
	ld a,(bc)		;9fdb
	nop			;9fdc
	ld bc,0ff04h		;9fdd
	dec bc			;9fe0
	nop			;9fe1
	nop			;9fe2
	ld bc,0fe02h		;9fe3
	ld a,(bc)		;9fe6
	nop			;9fe7
	ld bc,0ff04h		;9fe8
	dec bc			;9feb
	nop			;9fec
	nop			;9fed
	ld bc,0fe03h		;9fee
	ld a,(bc)		;9ff1
	nop			;9ff2
	ld bc,0ff04h		;9ff3
	ld b,000h		;9ff6
	nop			;9ff8
	ld bc,0ff05h		;9ff9
	rst 38h			;9ffc
	rst 38h			;9ffd
	rst 38h			;9ffe
	rst 38h			;9fff
