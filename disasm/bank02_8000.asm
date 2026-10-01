; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank02_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank02.bin

	org 08000h

	jp l801bh		;8000
	jp l8224h		;8003
	jp l878ah		;8006
	jp l8f11h		;8009
	jp l8f64h		;800c
	jp l8fc5h		;800f
	jp l8238h		;8012
	jp l828ah		;8015
	jp l8220h		;8018
l801bh:
	call sub_8031h		;801b
	call sub_82b4h		;801e
	ld a,(0c907h)		;8021
	and 010h		;8024
	call nz,sub_8599h	;8026
	ld a,(0ca43h)		;8029
	or a			;802c
	call z,sub_84f6h	;802d
	ret			;8030
sub_8031h:
	call sub_8060h		;8031
	ld a,(ix+001h)		;8034
	or a			;8037
	jp z,077d0h		;8038
	call 07747h		;803b
	ld a,(0c0ech)		;803e
	or a			;8041
	ret z			;8042
	call 077d0h		;8043
	xor a			;8046
	ld (0c0ech),a		;8047
	ld (ix+019h),a		;804a
	ld (ix+01ah),a		;804d
	ld (ix+01bh),a		;8050
	ld (ix+01ch),a		;8053
	ld (ix+01dh),a		;8056
	ld (ix+01eh),a		;8059
	ld (ix+01fh),a		;805c
	ret			;805f
sub_8060h:
	ld ix,0ca40h		;8060
	ld a,(0ce75h)		;8064
	or a			;8067
	ret nz			;8068
	ld a,(ix+001h)		;8069
	dec a			;806c
	jr z,l80dah		;806d
	dec a			;806f
	jr z,l80efh		;8070
	call sub_80f4h		;8072
	call sub_820dh		;8075
	call sub_8108h		;8078
	ld a,(0ca03h)		;807b
	rrca			;807e
	ret c			;807f
	ld a,(0ce76h)		;8080
	or a			;8083
	ret nz			;8084
	ld a,(0ce75h)		;8085
	or a			;8088
	ret nz			;8089
	ld a,(ix+018h)		;808a
	or a			;808d
	jr z,l8099h		;808e
	dec a			;8090
	ld (ix+018h),a		;8091
	ld (ix+004h),000h	;8094
	ret			;8098
l8099h:
	call 07c44h		;8099
	ret			;809c
	ld (ix+001h),001h	;809d
	ld (ix+003h),001h	;80a1
	ld (ix+015h),02dh	;80a5
	res 7,(ix+014h)		;80a9
	ld (ix+005h),006h	;80ad
	xor a			;80b1
	ld (ix+019h),a		;80b2
	ld (ix+01ah),a		;80b5
	ld (ix+01bh),a		;80b8
	ld (ix+01ch),a		;80bb
	ld (ix+01dh),a		;80be
	ld (ix+01eh),a		;80c1
	ld (ix+01fh),a		;80c4
	set 3,(ix+015h)		;80c7
	ld a,04ch		;80cb
	call 04aebh		;80cd
	ld hl,0c947h		;80d0
	set 0,(hl)		;80d3
	ld (ix+017h),028h	;80d5
	ret			;80d9
l80dah:
	ld b,00ah		;80da
	ld a,(ix+005h)		;80dc
	inc a			;80df
	cp b			;80e0
	jr c,l80e5h		;80e1
	ld a,006h		;80e3
l80e5h:
	ld (ix+005h),a		;80e5
	call 06ad2h		;80e8
	ret nz			;80eb
	inc (ix+001h)		;80ec
l80efh:
	ld (ix+000h),000h	;80ef
	ret			;80f3
sub_80f4h:
	ld a,(0cb02h)		;80f4
	or a			;80f7
	ret z			;80f8
	dec a			;80f9
	ld (0cb02h),a		;80fa
	ret			;80fd
l80feh:
	ld hl,00000h		;80fe
	ld (0ca4bh),hl		;8101
	ld (0ca4dh),hl		;8104
	ret			;8107
sub_8108h:
	ld a,(0c900h)		;8108
	cp 004h			;810b
	jr z,l8114h		;810d
	ld a,(0c908h)		;810f
	jr l8117h		;8112
l8114h:
	ld a,(0c909h)		;8114
l8117h:
	and 00fh		;8117
	ld (0cb18h),a		;8119
	jr z,l80feh		;811c
	ld e,a			;811e
	add a,a			;811f
	add a,a			;8120
	add a,a			;8121
	add a,e			;8122
	ld e,a			;8123
	ld d,000h		;8124
	ld hl,l817dh		;8126
	add hl,de		;8129
	ld a,(hl)		;812a
	ld (0cb18h),a		;812b
	inc hl			;812e
	ld e,(hl)		;812f
	inc hl			;8130
	ld d,(hl)		;8131
	inc hl			;8132
	ld c,(hl)		;8133
	inc hl			;8134
	ld b,(hl)		;8135
	inc hl			;8136
	ld a,(0cb01h)		;8137
	or a			;813a
	push af			;813b
	push hl			;813c
	ex de,hl		;813d
	call nz,sub_8177h	;813e
	ld (0ca4bh),hl		;8141
	ld bc,(0ca47h)		;8144
	add hl,bc		;8148
	ld a,h			;8149
	cp 014h			;814a
	jr nc,l8151h		;814c
	ld (0ca47h),hl		;814e
l8151h:
	pop hl			;8151
	ld e,(hl)		;8152
	inc hl			;8153
	ld d,(hl)		;8154
	inc hl			;8155
	ld c,(hl)		;8156
	inc hl			;8157
	ld b,(hl)		;8158
	inc hl			;8159
	pop af			;815a
	ex de,hl		;815b
	call nz,sub_8177h	;815c
	ld (0ca4dh),hl		;815f
	ld bc,(0ca49h)		;8162
	add hl,bc		;8166
	ex de,hl		;8167
	ld hl,0ff80h		;8168
	add hl,de		;816b
	ld a,h			;816c
	cp 01dh			;816d
	jr nc,l8175h		;816f
	ld (0ca49h),de		;8171
l8175h:
	or a			;8175
	ret			;8176
sub_8177h:
	add hl,bc		;8177
	dec a			;8178
	jp nz,sub_8177h		;8179
	ret			;817c
l817dh:
	nop			;817d
	nop			;817e
	nop			;817f
	nop			;8180
	nop			;8181
	nop			;8182
	nop			;8183
	nop			;8184
	nop			;8185
	rlca			;8186
	add a,b			;8187
	rst 38h			;8188
	ex de,hl		;8189
	rst 38h			;818a
	nop			;818b
	nop			;818c
	nop			;818d
	nop			;818e
	inc bc			;818f
	add a,b			;8190
	nop			;8191
	dec d			;8192
	nop			;8193
	nop			;8194
	nop			;8195
	nop			;8196
	nop			;8197
	nop			;8198
	nop			;8199
	nop			;819a
	nop			;819b
	nop			;819c
	nop			;819d
	nop			;819e
	nop			;819f
	nop			;81a0
	dec b			;81a1
	nop			;81a2
	nop			;81a3
	nop			;81a4
	nop			;81a5
	add a,b			;81a6
	rst 38h			;81a7
	ex de,hl		;81a8
	rst 38h			;81a9
	ld b,0a0h		;81aa
	rst 38h			;81ac
	ret p			;81ad
	rst 38h			;81ae
	and b			;81af
	rst 38h			;81b0
	ret p			;81b1
	rst 38h			;81b2
	inc b			;81b3
	ld h,b			;81b4
	nop			;81b5
	djnz l81b8h		;81b6
l81b8h:
	and b			;81b8
	rst 38h			;81b9
	ret p			;81ba
	rst 38h			;81bb
	nop			;81bc
	nop			;81bd
	nop			;81be
	nop			;81bf
	nop			;81c0
	add a,b			;81c1
	rst 38h			;81c2
	ex de,hl		;81c3
	rst 38h			;81c4
	ld bc,00000h		;81c5
	nop			;81c8
	nop			;81c9
	add a,b			;81ca
	nop			;81cb
	dec d			;81cc
	nop			;81cd
	ex af,af'		;81ce
	and b			;81cf
	rst 38h			;81d0
	ret p			;81d1
	rst 38h			;81d2
	ld h,b			;81d3
	nop			;81d4
	djnz l81d7h		;81d5
l81d7h:
	ld (bc),a		;81d7
	ld h,b			;81d8
	nop			;81d9
	djnz l81dch		;81da
l81dch:
	ld h,b			;81dc
	nop			;81dd
	djnz l81e0h		;81de
l81e0h:
	ld bc,00000h		;81e0
	nop			;81e3
	nop			;81e4
	add a,b			;81e5
	nop			;81e6
	dec d			;81e7
	nop			;81e8
	nop			;81e9
	nop			;81ea
	nop			;81eb
	nop			;81ec
	nop			;81ed
	nop			;81ee
	nop			;81ef
	nop			;81f0
	nop			;81f1
	rlca			;81f2
	add a,b			;81f3
	rst 38h			;81f4
	ex de,hl		;81f5
	rst 38h			;81f6
	nop			;81f7
	nop			;81f8
	nop			;81f9
	nop			;81fa
	inc bc			;81fb
	add a,b			;81fc
	nop			;81fd
	dec d			;81fe
	nop			;81ff
	nop			;8200
	nop			;8201
	nop			;8202
	nop			;8203
	nop			;8204
l8205h:
	nop			;8205
	nop			;8206
	nop			;8207
	nop			;8208
	nop			;8209
	nop			;820a
	nop			;820b
	nop			;820c
sub_820dh:
	ld a,(0c908h)		;820d
	ld b,000h		;8210
	and 003h		;8212
	jr z,l821bh		;8214
	inc b			;8216
	rrca			;8217
	jr c,l821bh		;8218
	inc b			;821a
l821bh:
	ld hl,0ca45h		;821b
	ld (hl),b		;821e
	ret			;821f
l8220h:
	call l8224h		;8220
	ret			;8223
l8224h:
	call sub_8279h		;8224
	call sub_829fh		;8227
	xor a			;822a
	ld (0c0ech),a		;822b
	ld (0cb01h),a		;822e
	ld (0ca19h),a		;8231
	dec a			;8234
	ld (0cb02h),a		;8235
l8238h:
	xor a			;8238
	ld (0cc01h),a		;8239
	ld (0cb1dh),a		;823c
	call sub_828bh		;823f
	ld hl,0ca40h		;8242
	ld bc,0003fh		;8245
	call 04648h		;8248
	call sub_8254h		;824b
	call sub_83e7h		;824e
	jp l8704h		;8251
sub_8254h:
	ld ix,0ca40h		;8254
	ld (ix+000h),001h	;8258
	ld (ix+008h),008h	;825c
	ld (ix+00ah),005h	;8260
	ld (ix+015h),039h	;8264
	ld (ix+013h),003h	;8268
	ld (ix+014h),003h	;826c
	ld (ix+018h),00fh	;8270
	set 7,(ix+014h)		;8274
	ret			;8278
sub_8279h:
	ld hl,0cb40h		;8279
	ld bc,00027h		;827c
	call 04648h		;827f
	xor a			;8282
	ld (0cb1ah),a		;8283
	call sub_84a5h		;8286
	ret			;8289
l828ah:
	ret			;828a
sub_828bh:
	ld ix,0cac0h		;828b
	call sub_8296h		;828f
	ld ix,0cae0h		;8292
sub_8296h:
	ld (ix+019h),000h	;8296
	ld (ix+01ah),000h	;829a
	ret			;829e
sub_829fh:
	xor a			;829f
	ld (0cb03h),a		;82a0
	ld hl,0cac0h		;82a3
	ld bc,0003fh		;82a6
	call 04648h		;82a9
	ld bc,0ff80h		;82ac
	ld (0cb1bh),bc		;82af
	ret			;82b3
sub_82b4h:
	call sub_82c6h		;82b4
	ld ix,0cac0h		;82b7
	call sub_82d2h		;82bb
	ld ix,0cae0h		;82be
	call sub_82d2h		;82c2
	ret			;82c5
sub_82c6h:
	ld a,(0ca02h)		;82c6
	and 003h		;82c9
	ld (0cac5h),a		;82cb
	ld (0cae5h),a		;82ce
	ret			;82d1
sub_82d2h:
	ld a,(0ca41h)		;82d2
	or a			;82d5
	ret nz			;82d6
	ld a,(ix+000h)		;82d7
	or a			;82da
	ret z			;82db
	call sub_82e2h		;82dc
	jp 077d0h		;82df
sub_82e2h:
	ld a,(ix+001h)		;82e2
	dec a			;82e5
	jr z,l8320h		;82e6
	jp p,l8320h		;82e8
	ld bc,00300h		;82eb
	call 076ffh		;82ee
	ret nc			;82f1
	call 0756ch		;82f2
	call 04612h		;82f5
l82f8h:
	call sub_834ch		;82f8
	ld a,(0cb41h)		;82fb
	ld c,a			;82fe
	ld hl,l831ah		;82ff
	ld a,(0cb05h)		;8302
	bit 7,(ix+018h)		;8305
	jr nz,l830eh		;8309
	ld hl,0831dh		;830b
l830eh:
	call 04600h		;830e
l8311h:
	ld a,(hl)		;8311
	ld b,a			;8312
	call sub_84ach		;8313
	inc (ix+001h)		;8316
	ret			;8319
l831ah:
	ex af,af'		;831a
	rlca			;831b
	ld b,002h		;831c
	inc bc			;831e
	inc b			;831f
l8320h:
	call sub_8324h		;8320
	ret			;8323
sub_8324h:
	ld hl,(0ca49h)		;8324
	ld bc,(0cb1bh)		;8327
	add hl,bc		;832b
	ld (ix+00ah),h		;832c
	ld (ix+009h),l		;832f
	ld hl,(0ca47h)		;8332
	ld bc,000e0h		;8335
	add hl,bc		;8338
	ld b,(ix+018h)		;8339
	ld c,(ix+017h)		;833c
	add hl,bc		;833f
	ld (ix+008h),h		;8340
	ld (ix+007h),l		;8343
	ret			;8346
	sra h			;8347
	rr l			;8349
	ret			;834b
sub_834ch:
	call sub_837ah		;834c
	jr c,l8359h		;834f
	xor h			;8351
	bit 7,a			;8352
	jr nz,l8359h		;8354
	ld a,h			;8356
	cpl			;8357
	ld h,a			;8358
l8359h:
	bit 7,h			;8359
	jr z,l8361h		;835b
	set 7,(ix+010h)		;835d
l8361h:
	bit 7,(ix+010h)		;8361
	push af			;8365
	ld a,(ix+003h)		;8366
	ld de,l839ch		;8369
	call 04624h		;836c
	pop af			;836f
	call nz,04612h		;8370
	ld (ix+018h),h		;8373
	ld (ix+017h),l		;8376
	ret			;8379
sub_837ah:
	ld iy,0cac0h		;837a
	call sub_8392h		;837e
	jr nz,l838eh		;8381
	ld iy,0cae0h		;8383
	call sub_8392h		;8387
	jr nz,l838eh		;838a
	scf			;838c
	ret			;838d
l838eh:
	ld a,(iy+018h)		;838e
	ret			;8391
sub_8392h:
	ld a,(iy+000h)		;8392
	or a			;8395
	ret z			;8396
	ld a,(iy+001h)		;8397
	or a			;839a
	ret			;839b
l839ch:
	add a,b			;839c
	ld (bc),a		;839d
	nop			;839e
	inc bc			;839f
	nop			;83a0
	inc b			;83a1
	nop			;83a2
	dec b			;83a3
sub_83a4h:
	ld a,(iy+003h)		;83a4
	ld (0cb1ah),a		;83a7
	push iy			;83aa
	call sub_83b2h		;83ac
	pop iy			;83af
	ret			;83b1
sub_83b2h:
	call sub_83b8h		;83b2
	jp sub_83e7h		;83b5
sub_83b8h:
	ld a,(0cb1ah)		;83b8
	cp 00ah			;83bb
	call z,sub_843dh	;83bd
	cp 002h			;83c0
	jp z,l8479h		;83c2
	cp 00ch			;83c5
	call z,08437h		;83c7
	cp 003h			;83ca
	jp z,l8443h		;83cc
	cp 00bh			;83cf
	jp z,l8457h		;83d1
	cp 00dh			;83d4
	jp z,l844bh		;83d6
	cp 007h			;83d9
	jp z,l845dh		;83db
	cp 00eh			;83de
	jp z,l8470h		;83e0
	call sub_84ddh		;83e3
	ret			;83e6
sub_83e7h:
	ld c,000h		;83e7
	ld ix,0cb40h		;83e9
	ld b,005h		;83ed
l83efh:
	ld a,(ix+000h)		;83ef
	or a			;83f2
	jr z,l8406h		;83f3
	ld a,(ix+001h)		;83f5
	dec a			;83f8
	cp 00ah			;83f9
	jr nc,l8406h		;83fb
	ld hl,l842dh		;83fd
	call 04600h		;8400
	ld a,(hl)		;8403
l8404h:
	add a,c			;8404
l8405h:
	ld c,a			;8405
l8406h:
	ld de,00008h		;8406
	add ix,de		;8409
	djnz l83efh		;840b
	ld a,c			;840d
	and 0f0h		;840e
	rrca			;8410
	rrca			;8411
	rrca			;8412
	rrca			;8413
	ld c,a			;8414
	ld a,(0ca04h)		;8415
	add a,a			;8418
	add a,a			;8419
	add a,c			;841a
	ld c,a			;841b
	ld a,(0cb08h)		;841c
	call 04e79h		;841f
	add a,c			;8422
	cp 010h			;8423
	jr c,l8429h		;8425
	ld a,00fh		;8427
l8429h:
	ld (0ca19h),a		;8429
	ret			;842c
l842dh:
	djnz $+10		;842d
	jr nz,$+18		;842f
	nop			;8431
	nop			;8432
	nop			;8433
	nop			;8434
	nop			;8435
	jr l8405h		;8436
	ld d,087h		;8438
	ld a,001h		;843a
	ret			;843c
sub_843dh:
	call sub_871ah		;843d
	ld a,00ah		;8440
	ret			;8442
l8443h:
	ld b,080h		;8443
	ld c,003h		;8445
	jp sub_84ach		;8447
	ret			;844a
l844bh:
	ld a,00ah		;844b
	call 04af5h		;844d
	ret			;8450
	ld a,00fh		;8451
	call 04af5h		;8453
	ret			;8456
l8457h:
	ld a,001h		;8457
	ld (0cb1dh),a		;8459
	ret			;845c
l845dh:
	ld a,(ix+017h)		;845d
	cpl			;8460
	push af			;8461
	call 06f8ch		;8462
	jp c,0469fh		;8465
	pop af			;8468
	ld (ix+001h),002h	;8469
	jp l82f8h		;846d
l8470h:
	call sub_8484h		;8470
	ld a,00ah		;8473
	call 04af5h		;8475
	ret			;8478
l8479h:
	ld a,(0cb01h)		;8479
	inc a			;847c
	cp 005h			;847d
	ret nc			;847f
	ld (0cb01h),a		;8480
	ret			;8483
sub_8484h:
	ld de,(0cb07h)		;8484
	ld b,d			;8488
	ld e,0ffh		;8489
	inc d			;848b
	ld a,010h		;848c
	cp d			;848e
	jr nc,l8492h		;848f
	ld d,a			;8491
l8492h:
	ld (0cb07h),de		;8492
	ex de,hl		;8496
	ld a,h			;8497
	call 04e79h		;8498
	ld h,a			;849b
	ld a,b			;849c
	call 04e79h		;849d
	cp h			;84a0
	ret z			;84a1
	jp l871eh		;84a2
sub_84a5h:
	xor a			;84a5
	ld (0cb05h),a		;84a6
	ld b,a			;84a9
	ld c,a			;84aa
	inc c			;84ab
sub_84ach:
	push ix			;84ac
	call sub_84c0h		;84ae
	ld a,b			;84b1
	or a			;84b2
	jr nz,l84b7h		;84b3
	ld b,001h		;84b5
l84b7h:
	ld (ix+001h),c		;84b7
	ld (ix+000h),b		;84ba
	pop ix			;84bd
	ret			;84bf
sub_84c0h:
	ld a,b			;84c0
	or a			;84c1
	ld ix,0cb40h		;84c2
	ret z			;84c6
	sub 002h		;84c7
	sub 003h		;84c9
	ld ix,0cb58h		;84cb
	ret c			;84cf
	dec a			;84d0
	sub 003h		;84d1
	ld ix,0cb50h		;84d3
	ret c			;84d7
	ld ix,0cb48h		;84d8
	ret			;84dc
sub_84ddh:
	ld c,a			;84dd
	ld b,005h		;84de
	ld ix,0cb40h		;84e0
l84e4h:
	ld a,(ix+000h)		;84e4
	cp 009h			;84e7
	jr nc,l84eeh		;84e9
	ld (ix+001h),c		;84eb
l84eeh:
	ld de,00008h		;84ee
	add ix,de		;84f1
	djnz l84e4h		;84f3
	ret			;84f5
sub_84f6h:
	call sub_8530h		;84f6
	ld a,(0c907h)		;84f9
	bit 5,a			;84fc
	ret z			;84fe
	call sub_8526h		;84ff
	ret z			;8502
	ld a,008h		;8503
	call 04af5h		;8505
l8508h:
	call sub_8569h		;8508
	ld b,005h		;850b
	ld ix,0cb40h		;850d
l8511h:
	ld a,(ix+000h)		;8511
	and 00fh		;8514
	jr z,l851eh		;8516
	call sub_8588h		;8518
	ld (ix+000h),a		;851b
l851eh:
	ld de,00008h		;851e
	add ix,de		;8521
	djnz l8511h		;8523
	ret			;8525
sub_8526h:
	ld a,(0cb50h)		;8526
	or a			;8529
	ret nz			;852a
	ld a,(0cb58h)		;852b
	or a			;852e
	ret			;852f
sub_8530h:
	ld a,(0cb02h)		;8530
	cp 02eh			;8533
	ret nc			;8535
	ld hl,0ca02h		;8536
	ld a,(0ca10h)		;8539
	cp 005h			;853c
	ld a,00fh		;853e
	jr c,l8544h		;8540
	ld a,01fh		;8542
l8544h:
	and (hl)		;8544
	ret nz			;8545
	ld hl,(0cb07h)		;8546
	ld b,h			;8549
	ld de,00003h		;854a
	or a			;854d
	sbc hl,de		;854e
	ret c			;8550
	ld d,000h		;8551
	ld e,b			;8553
	or a			;8554
	sbc hl,de		;8555
	ret c			;8557
	ld (0cb07h),hl		;8558
	ld a,b			;855b
	call 04e79h		;855c
	ld b,a			;855f
	ld a,h			;8560
	call 04e79h		;8561
	xor b			;8564
	ret z			;8565
	jp l871eh		;8566
sub_8569h:
	ld a,(0cb05h)		;8569
	inc a			;856c
	cp 003h			;856d
	jr c,l8572h		;856f
	xor a			;8571
l8572h:
	ld (0cb05h),a		;8572
	rrca			;8575
	ld bc,00000h		;8576
	jr c,l8583h		;8579
	ld bc,00080h		;857b
	jr nz,l8583h		;857e
	ld bc,0ff80h		;8580
l8583h:
	ld (0cb1bh),bc		;8583
	ret			;8587
sub_8588h:
	ld hl,l8590h		;8588
	call 04600h		;858b
	ld a,(hl)		;858e
	ret			;858f
l8590h:
	nop			;8590
	ld bc,00403h		;8591
	ld (bc),a		;8594
	dec b			;8595
	ex af,af'		;8596
	ld b,007h		;8597
sub_8599h:
	ld a,(0ca43h)		;8599
	or a			;859c
	ret nz			;859d
	xor a			;859e
	ld (0cc0eh),a		;859f
	ld iy,0cb40h		;85a2
	ld ix,0cc40h		;85a6
	ld a,(iy+000h)		;85aa
	or a			;85ad
	ld b,003h		;85ae
	call nz,sub_85e7h	;85b0
	ld iy,0cb50h		;85b3
	ld ix,0cca0h		;85b7
	ld a,(iy+000h)		;85bb
	or a			;85be
	ld b,002h		;85bf
	call nz,sub_85e7h	;85c1
	ld iy,0cb58h		;85c4
	ld ix,0cce0h		;85c8
	ld a,(iy+000h)		;85cc
	or a			;85cf
	ld b,002h		;85d0
	call nz,sub_85e7h	;85d2
	ld iy,0cb48h		;85d5
	ld ix,0cd20h		;85d9
	ld a,(iy+000h)		;85dd
	or a			;85e0
	ld b,001h		;85e1
	call nz,sub_85e7h	;85e3
	ret			;85e6
sub_85e7h:
	cp 080h			;85e7
	jr nz,l85edh		;85e9
	ld a,001h		;85eb
l85edh:
	cp 005h			;85ed
	jr nz,l85fdh		;85ef
	ld (iy+000h),001h	;85f1
	call l85fdh		;85f5
	ld (iy+000h),005h	;85f8
	ret			;85fc
l85fdh:
	ld a,(iy+001h)		;85fd
	cp 00bh			;8600
	jp nc,04ae0h		;8602
l8605h:
	call 0461ah		;8605
l8608h:
	ld e,086h		;8608
	sbc a,h			;860a
	adc a,h			;860b
	ld e,086h		;860c
	ld d,b			;860e
	adc a,(hl)		;860f
	ld e,086h		;8610
	ld e,086h		;8612
	ld e,086h		;8614
	ld e,086h		;8616
	ld e,086h		;8618
	ld e,086h		;861a
	pop af			;861c
	adc a,e			;861d
	ret			;861e
sub_861fh:
	and 00fh		;861f
	dec a			;8621
	add a,a			;8622
	ld l,a			;8623
	add a,a			;8624
	add a,l			;8625
	ld l,a			;8626
	ld h,000h		;8627
	add hl,bc		;8629
	ld e,(hl)		;862a
	inc hl			;862b
	ld d,(hl)		;862c
	inc hl			;862d
	ld c,(hl)		;862e
	inc hl			;862f
	ld b,(hl)		;8630
	inc hl			;8631
	ld a,(hl)		;8632
	inc hl			;8633
	ld h,(hl)		;8634
	ld l,a			;8635
	ret			;8636
	ld a,(ix+003h)		;8637
	jr l8644h		;863a
sub_863ch:
	ld a,(iy+000h)		;863c
	and 00fh		;863f
	jr nz,l8644h		;8641
	inc a			;8643
l8644h:
	push hl			;8644
	call sub_8661h		;8645
	ld a,l			;8648
	rlca			;8649
	sbc a,a			;864a
	ld h,a			;864b
	add hl,hl		;864c
	add hl,hl		;864d
	add hl,hl		;864e
	add hl,hl		;864f
	add hl,hl		;8650
	add hl,bc		;8651
	ex (sp),hl		;8652
	ld l,h			;8653
	ld a,l			;8654
	rlca			;8655
	sbc a,a			;8656
	ld h,a			;8657
	add hl,hl		;8658
	add hl,hl		;8659
	add hl,hl		;865a
	add hl,hl		;865b
	add hl,hl		;865c
	add hl,de		;865d
	ex de,hl		;865e
	pop bc			;865f
	ret			;8660
sub_8661h:
	sub 002h		;8661
	sub 003h		;8663
	jr c,l8684h		;8665
	dec a			;8667
	sub 003h		;8668
	jr c,l8675h		;866a
	ld bc,(0ca47h)		;866c
	ld de,(0ca49h)		;8670
	ret			;8674
l8675h:
	ld a,(0cad8h)		;8675
	bit 7,a			;8678
	jr nz,l8693h		;867a
	ld a,(0caf8h)		;867c
	bit 7,a			;867f
	jr nz,l869ch		;8681
	ret			;8683
l8684h:
	ld a,(0cad8h)		;8684
	bit 7,a			;8687
	jr z,l8693h		;8689
	ld a,(0caf8h)		;868b
	bit 7,a			;868e
	jr z,l869ch		;8690
	ret			;8692
l8693h:
	ld bc,(0cac7h)		;8693
	ld de,(0cac9h)		;8697
	ret			;869b
l869ch:
	ld bc,(0cae7h)		;869c
	ld de,(0cae9h)		;86a0
	ret			;86a4
sub_86a5h:
	ld (ix+000h),a		;86a5
	ld a,(iy+000h)		;86a8
	ld (ix+003h),a		;86ab
	ret			;86ae
sub_86afh:
	call 075c2h		;86af
	ret z			;86b2
	jp c,l87dbh		;86b3
	bit 4,a			;86b6
	call nz,sub_86cbh	;86b8
	jp l87dbh		;86bb
sub_86beh:
	call 075c2h		;86be
	ret z			;86c1
	jp c,l87dbh		;86c2
	bit 4,a			;86c5
	jp nz,sub_86cbh		;86c7
	ret			;86ca
sub_86cbh:
	call 076f1h		;86cb
	ex de,hl		;86ce
	ld a,(hl)		;86cf
	cp 0a7h			;86d0
	ret c			;86d2
	inc a			;86d3
	cp 0afh			;86d4
	jr z,l86e2h		;86d6
	ret nc			;86d8
	ld (hl),a		;86d9
	ld a,01eh		;86da
	call 04af5h		;86dc
	jp l87dbh		;86df
l86e2h:
	ld (hl),000h		;86e2
	ld a,01fh		;86e4
	call 04af5h		;86e6
	jp l87dbh		;86e9
sub_86ech:
	ld a,(ix+004h)		;86ec
	or a			;86ef
	jp nz,l87dbh		;86f0
	ld a,(ix+008h)		;86f3
	cp 018h			;86f6
	jp nc,l87dbh		;86f8
	ld a,(ix+00ah)		;86fb
	cp 020h			;86fe
	ret c			;8700
	jp l87dbh		;8701
l8704h:
	push hl			;8704
l8705h:
	ld hl,0f0f9h		;8705
	ld (hl),000h		;8708
	pop hl			;870a
	ld hl,0cc40h		;870b
	ld bc,000ffh		;870e
	call 04648h		;8711
	jr l871eh		;8714
	ld c,000h		;8716
	jr l873dh		;8718
sub_871ah:
	ld c,006h		;871a
	jr l873dh		;871c
l871eh:
	call sub_8732h		;871e
	ld a,(0cb08h)		;8721
	call 04e79h		;8724
	xor a			;8727
	ld c,000h		;8728
	ld hl,00040h		;872a
	ld de,0c9a0h		;872d
	jr l8749h		;8730
sub_8732h:
	ld a,(0cb41h)		;8732
	ld c,000h		;8735
	cp 00ah			;8737
	jr nz,l873dh		;8739
	ld c,006h		;873b
l873dh:
	ld a,(0cb08h)		;873d
	call 04e79h		;8740
	ld hl,00020h		;8743
	ld de,0ca00h		;8746
l8749h:
	push de			;8749
	push hl			;874a
	add a,a			;874b
	add a,c			;874c
	ld l,a			;874d
	ld h,000h		;874e
	add hl,hl		;8750
	add hl,hl		;8751
	add hl,hl		;8752
	add hl,hl		;8753
	add hl,hl		;8754
	ld de,l89b0h		;8755
	add hl,de		;8758
	pop bc			;8759
	pop de			;875a
	ex de,hl		;875b
	jp l87fbh		;875c
sub_875fh:
	call 075c2h		;875f
	bit 5,a			;8762
	jp nz,l87bfh		;8764
	bit 1,a			;8767
	ret z			;8769
	ld (ix+004h),0ffh	;876a
	ret			;876e
sub_876fh:
	ld ix,0ca40h		;876f
	ld de,00140h		;8773
	ld hl,001e0h		;8776
	call sub_875fh		;8779
	ld ix,0ca40h		;877c
	ld de,001c0h		;8780
	ld hl,001e0h		;8783
	call sub_875fh		;8786
	ret			;8789
l878ah:
	call sub_876fh		;878a
	ld ix,0cc40h		;878d
	ld b,008h		;8791
l8793h:
	ld a,(ix+000h)		;8793
	or a			;8796
	push bc			;8797
	call nz,sub_87a4h	;8798
	pop bc			;879b
	ld de,00020h		;879c
	add ix,de		;879f
	djnz l8793h		;87a1
	ret			;87a3
sub_87a4h:
	cp 009h			;87a4
	jp nc,04ae0h		;87a6
	call 0461ah		;87a9
	cp (hl)			;87ac
	add a,a			;87ad
	cp (hl)			;87ae
	add a,a			;87af
	cp (hl)			;87b0
	add a,a			;87b1
	cp (hl)			;87b2
	add a,a			;87b3
	ld c,(hl)		;87b4
	adc a,l			;87b5
	cp (hl)			;87b6
	add a,a			;87b7
	cp (hl)			;87b8
	add a,a			;87b9
	sbc a,e			;87ba
	adc a,(hl)		;87bb
	ld (hl),a		;87bc
	adc a,b			;87bd
	ret			;87be
l87bfh:
	ld c,000h		;87bf
	ld a,(iy+000h)		;87c1
	cp 003h			;87c4
	ret nz			;87c6
	ld a,(iy+001h)		;87c7
	dec a			;87ca
	ret nz			;87cb
	push iy			;87cc
	call sub_83a4h		;87ce
	pop ix			;87d1
	call 06e98h		;87d3
	ld a,009h		;87d6
	jp 04af5h		;87d8
l87dbh:
	ld (ix+000h),000h	;87db
	or a			;87df
	ret			;87e0
sub_87e1h:
	ld de,00020h		;87e1
l87e4h:
	ld a,(ix+000h)		;87e4
	and a			;87e7
	jr z,l87f0h		;87e8
	add ix,de		;87ea
	djnz l87e4h		;87ec
	scf			;87ee
	ret			;87ef
l87f0h:
	push ix			;87f0
	pop hl			;87f2
	xor a			;87f3
	ld b,020h		;87f4
l87f6h:
	ld (hl),a		;87f6
	inc l			;87f7
	djnz l87f6h		;87f8
	ret			;87fa
l87fbh:
	push de			;87fb
	call sub_880dh		;87fc
	ld de,00800h		;87ff
	add hl,de		;8802
	pop de			;8803
	push de			;8804
	call sub_880dh		;8805
	ld de,00800h		;8808
	add hl,de		;880b
	pop de			;880c
sub_880dh:
	push bc			;880d
	push hl			;880e
	ex de,hl		;880f
	call 046ach		;8810
	pop hl			;8813
	pop bc			;8814
	ret			;8815
l8816h:
	push ix			;8816
	pop hl			;8818
	ld a,(hl)		;8819
	ld de,00020h		;881a
	add hl,de		;881d
	or (hl)			;881e
	add hl,de		;881f
	or (hl)			;8820
	ret nz			;8821
	push ix			;8822
	ld b,003h		;8824
	call sub_87e1h		;8826
	call sub_883bh		;8829
	ld (ix+003h),005h	;882c
	ld (ix+005h),004h	;8830
	pop ix			;8834
	ld b,003h		;8836
	call sub_87e1h		;8838
sub_883bh:
	xor a			;883b
	ld (0cb1dh),a		;883c
	ld a,008h		;883f
	call sub_86a5h		;8841
	ld (ix+014h),003h	;8844
	ld (ix+013h),003h	;8848
	xor a			;884c
	ld hl,0000ch		;884d
	call sub_863ch		;8850
	ld (ix+00ah),d		;8853
	ld (ix+009h),e		;8856
	ld (ix+008h),b		;8859
	ld (ix+007h),c		;885c
	ld de,00180h		;885f
	call 06bfdh		;8862
	ld (ix+015h),005h	;8865
	ld (ix+017h),005h	;8869
	call sub_8950h		;886d
	ld a,00ch		;8870
	call 04af5h		;8872
	or a			;8875
	ret			;8876
	call sub_8885h		;8877
	call 06a7fh		;887a
	ld a,(ix+000h)		;887d
	or a			;8880
	jp nz,077d0h		;8881
	ret			;8884
sub_8885h:
	ld a,(ix+001h)		;8885
	cp 006h			;8888
	jp nc,04ae0h		;888a
	call 0461ah		;888d
	sbc a,h			;8890
	adc a,b			;8891
	or b			;8892
	adc a,b			;8893
	call nz,0f988h		;8894
	adc a,b			;8897
	inc e			;8898
	adc a,c			;8899
	inc (hl)		;889a
	adc a,c			;889b
	call sub_88e6h		;889c
	dec (ix+017h)		;889f
	ret nz			;88a2
	ld (ix+017h),005h	;88a3
	ld de,000c0h		;88a7
	call 06bfdh		;88aa
	jp l894ch		;88ad
	call sub_88e6h		;88b0
	dec (ix+017h)		;88b3
	ret nz			;88b6
	ld (ix+017h),005h	;88b7
	ld de,00040h		;88bb
	call 06bfdh		;88be
	jp l894ch		;88c1
	call sub_88e6h		;88c4
	dec (ix+017h)		;88c7
	ret nz			;88ca
l88cbh:
	ld (ix+017h),003h	;88cb
	ld a,(ix+005h)		;88cf
	and 004h		;88d2
	inc a			;88d4
	ld (ix+005h),a		;88d5
	call sub_8950h		;88d8
	ld de,00000h		;88db
	call 06bfdh		;88de
	ld (ix+001h),003h	;88e1
	ret			;88e5
sub_88e6h:
	ld a,(ix+00ah)		;88e6
	cp 01dh			;88e9
	jr nc,l88cbh		;88eb
	ld h,001h		;88ed
	ld d,h			;88ef
	ld l,000h		;88f0
	ld e,l			;88f2
	call 075c2h		;88f3
	ret z			;88f6
	jr l88cbh		;88f7
	dec (ix+017h)		;88f9
	ret nz			;88fc
	ld (ix+017h),005h	;88fd
	ld a,(ix+005h)		;8901
	inc a			;8904
	ld (ix+005h),a		;8905
	push af			;8908
	call sub_8950h		;8909
	pop af			;890c
	and 003h		;890d
	cp 003h			;890f
	ret nz			;8911
	call sub_8973h		;8912
	ld a,00dh		;8915
	call 04af5h		;8917
	jr l894ch		;891a
	dec (ix+017h)		;891c
	ret nz			;891f
	bit 0,(ix+003h)		;8920
	jr z,l894ch		;8924
	call 04e65h		;8926
	call 04dd7h		;8929
	call 07523h		;892c
	call 07058h		;892f
	jr l894ch		;8932
	bit 0,(ix+003h)		;8934
	jp z,l87dbh		;8938
	call 0708bh		;893b
	ld a,00eh		;893e
	call 04af5h		;8940
	call 07523h		;8943
	call 07058h		;8946
	jp l87dbh		;8949
l894ch:
	inc (ix+001h)		;894c
	ret			;894f
sub_8950h:
	ld a,(ix+005h)		;8950
	bit 2,a			;8953
	ret nz			;8955
	cp 003h			;8956
	jr c,l895ch		;8958
	ld a,002h		;895a
l895ch:
	add a,a			;895c
	add a,a			;895d
	add a,a			;895e
	add a,a			;895f
	add a,a			;8960
	add a,a			;8961
	ld l,a			;8962
	ld h,000h		;8963
	ld de,l8b30h		;8965
	add hl,de		;8968
	ex de,hl		;8969
	ld bc,00040h		;896a
	ld hl,0ca20h		;896d
	jp l87fbh		;8970
sub_8973h:
	ld bc,01000h		;8973
	ld hl,0ef01h		;8976
l8979h:
	ld a,(hl)		;8979
	and 0e0h		;897a
	call sub_89aah		;897c
	rrca			;897f
	ld d,a			;8980
	inc hl			;8981
	inc hl			;8982
	ld a,(hl)		;8983
	and 0e0h		;8984
	call sub_89aah		;8986
	rlca			;8989
	rlca			;898a
	rlca			;898b
	ld e,a			;898c
	inc hl			;898d
	inc hl			;898e
	ld a,(hl)		;898f
	and 0e0h		;8990
	call sub_89aah		;8992
	rlca			;8995
	rlca			;8996
	rlca			;8997
	or d			;8998
	ld d,a			;8999
	inc hl			;899a
	inc hl			;899b
	ld a,c			;899c
	inc c			;899d
	push af			;899e
	push hl			;899f
	push bc			;89a0
	call 04776h		;89a1
	pop bc			;89a4
	pop hl			;89a5
	pop af			;89a6
	djnz l8979h		;89a7
	ret			;89a9
sub_89aah:
	sub 040h		;89aa
	ret nc			;89ac
	ld a,000h		;89ad
	ret			;89af
l89b0h:
	nop			;89b0
	nop			;89b1
	nop			;89b2
	nop			;89b3
	nop			;89b4
	nop			;89b5
	inc a			;89b6
	inc a			;89b7
	inc a			;89b8
	inc a			;89b9
	nop			;89ba
	nop			;89bb
	nop			;89bc
	nop			;89bd
	nop			;89be
	nop			;89bf
	nop			;89c0
	nop			;89c1
	nop			;89c2
	nop			;89c3
	nop			;89c4
	nop			;89c5
	inc a			;89c6
	inc a			;89c7
	inc a			;89c8
	inc a			;89c9
	nop			;89ca
	nop			;89cb
	nop			;89cc
	nop			;89cd
	nop			;89ce
	nop			;89cf
	nop			;89d0
	nop			;89d1
	ld bc,00101h		;89d2
	ld bc,00000h		;89d5
	nop			;89d8
	nop			;89d9
	ld bc,00101h		;89da
	ld bc,00000h		;89dd
	nop			;89e0
	nop			;89e1
	add a,b			;89e2
	add a,b			;89e3
	add a,b			;89e4
	add a,b			;89e5
	nop			;89e6
	nop			;89e7
	nop			;89e8
	nop			;89e9
	add a,b			;89ea
	add a,b			;89eb
	add a,b			;89ec
	add a,b			;89ed
	nop			;89ee
	nop			;89ef
	nop			;89f0
	nop			;89f1
	nop			;89f2
	nop			;89f3
	nop			;89f4
	nop			;89f5
	inc e			;89f6
	ld a,063h		;89f7
	ld a,01ch		;89f9
	nop			;89fb
	nop			;89fc
	nop			;89fd
	nop			;89fe
	nop			;89ff
	nop			;8a00
	nop			;8a01
	nop			;8a02
	nop			;8a03
	nop			;8a04
	nop			;8a05
	inc e			;8a06
	ld a,063h		;8a07
	ld a,01ch		;8a09
	nop			;8a0b
	nop			;8a0c
	nop			;8a0d
	nop			;8a0e
	nop			;8a0f
	nop			;8a10
	nop			;8a11
	ld bc,00101h		;8a12
	ld bc,00000h		;8a15
	nop			;8a18
	nop			;8a19
	ld bc,00101h		;8a1a
	ld bc,00000h		;8a1d
	nop			;8a20
	nop			;8a21
	add a,b			;8a22
	add a,b			;8a23
	add a,b			;8a24
	add a,b			;8a25
	nop			;8a26
	nop			;8a27
	nop			;8a28
	nop			;8a29
	add a,b			;8a2a
	add a,b			;8a2b
	add a,b			;8a2c
	add a,b			;8a2d
	nop			;8a2e
	nop			;8a2f
l8a30h:
	nop			;8a30
	nop			;8a31
	nop			;8a32
	nop			;8a33
	nop			;8a34
	inc e			;8a35
	ld a,063h		;8a36
	pop bc			;8a38
	ld h,e			;8a39
	ld a,01ch		;8a3a
	nop			;8a3c
	nop			;8a3d
	nop			;8a3e
	nop			;8a3f
	nop			;8a40
	nop			;8a41
	nop			;8a42
	nop			;8a43
	nop			;8a44
	inc e			;8a45
	ld a,063h		;8a46
	pop bc			;8a48
	ld h,e			;8a49
	ld a,01ch		;8a4a
	nop			;8a4c
	nop			;8a4d
	nop			;8a4e
	nop			;8a4f
	nop			;8a50
	nop			;8a51
	ld bc,00101h		;8a52
	ld bc,00000h		;8a55
	nop			;8a58
	nop			;8a59
	ld bc,00101h		;8a5a
	ld bc,00000h		;8a5d
	add a,b			;8a60
	add a,b			;8a61
	ret nz			;8a62
	ret nz			;8a63
	ret nz			;8a64
	ret nz			;8a65
	add a,b			;8a66
	nop			;8a67
	add a,b			;8a68
	add a,b			;8a69
	ret nz			;8a6a
	ret nz			;8a6b
	ret nz			;8a6c
	ret nz			;8a6d
	add a,b			;8a6e
	nop			;8a6f
	nop			;8a70
	nop			;8a71
	nop			;8a72
	nop			;8a73
	dec b			;8a74
	nop			;8a75
	ld (bc),a		;8a76
	nop			;8a77
	nop			;8a78
	inc b			;8a79
	nop			;8a7a
	dec b			;8a7b
	nop			;8a7c
	nop			;8a7d
	nop			;8a7e
	nop			;8a7f
	nop			;8a80
	nop			;8a81
	nop			;8a82
	nop			;8a83
	ret po			;8a84
	ld a,b			;8a85
	cp h			;8a86
	inc e			;8a87
	inc e			;8a88
	cp h			;8a89
	ld a,b			;8a8a
	ret po			;8a8b
	nop			;8a8c
	nop			;8a8d
	nop			;8a8e
	nop			;8a8f
	nop			;8a90
	jr $+26			;8a91
	jr $+26			;8a93
	jr l8aafh		;8a95
	nop			;8a97
	jr l8ab2h		;8a98
	jr $+26			;8a9a
	jr l8ab6h		;8a9c
	nop			;8a9e
	nop			;8a9f
	nop			;8aa0
	jr l8abbh		;8aa1
	jr $+26			;8aa3
	jr l8abfh		;8aa5
	nop			;8aa7
	jr l8ac2h		;8aa8
	jr l8ac4h		;8aaa
	jr l8ac6h		;8aac
	nop			;8aae
l8aafh:
	nop			;8aaf
	nop			;8ab0
	nop			;8ab1
l8ab2h:
	rla			;8ab2
	ld bc,0000ah		;8ab3
l8ab6h:
	ld (bc),a		;8ab6
	nop			;8ab7
	nop			;8ab8
	inc b			;8ab9
	nop			;8aba
l8abbh:
	ld a,(bc)		;8abb
	ld bc,00017h		;8abc
l8abfh:
	nop			;8abf
	nop			;8ac0
	nop			;8ac1
l8ac2h:
	add a,b			;8ac2
	ret po			;8ac3
l8ac4h:
	ret p			;8ac4
	ld a,b			;8ac5
l8ac6h:
	call m,03c3ch		;8ac6
	call m,0f078h		;8ac9
	ret po			;8acc
	add a,b			;8acd
	nop			;8ace
	nop			;8acf
	nop			;8ad0
	inc e			;8ad1
	inc e			;8ad2
	inc e			;8ad3
	inc e			;8ad4
	inc e			;8ad5
	inc e			;8ad6
	nop			;8ad7
	inc e			;8ad8
	inc e			;8ad9
	inc e			;8ada
	inc e			;8adb
	inc e			;8adc
	inc e			;8add
	nop			;8ade
	nop			;8adf
	nop			;8ae0
	jr c,l8b1bh		;8ae1
	jr c,l8b1dh		;8ae3
	jr c,l8b1fh		;8ae5
	nop			;8ae7
	jr c,l8b22h		;8ae8
	jr c,l8b24h		;8aea
	jr c,l8b26h		;8aec
	nop			;8aee
	nop			;8aef
	sbc a,a			;8af0
	inc bc			;8af1
	daa			;8af2
	nop			;8af3
	dec d			;8af4
	nop			;8af5
	ld bc,00000h		;8af6
	add hl,bc		;8af9
	nop			;8afa
	dec b			;8afb
	nop			;8afc
	daa			;8afd
	inc bc			;8afe
	sbc a,a			;8aff
	nop			;8b00
	ret nz			;8b01
	ret po			;8b02
	ret p			;8b03
l8b04h:
	ret m			;8b04
	jr c,l8b83h		;8b05
	inc e			;8b07
	inc e			;8b08
	ld a,h			;8b09
	jr c,l8b04h		;8b0a
	ret p			;8b0c
	ret po			;8b0d
	ret nz			;8b0e
	nop			;8b0f
	ex af,af'		;8b10
l8b11h:
	ex af,af'		;8b11
	inc e			;8b12
	inc e			;8b13
	inc e			;8b14
	inc e			;8b15
	ex af,af'		;8b16
	nop			;8b17
	ex af,af'		;8b18
	ex af,af'		;8b19
	inc e			;8b1a
l8b1bh:
	inc e			;8b1b
	inc e			;8b1c
l8b1dh:
	inc e			;8b1d
	ex af,af'		;8b1e
l8b1fh:
	nop			;8b1f
	djnz l8b32h		;8b20
l8b22h:
	jr c,$+58		;8b22
l8b24h:
	jr c,$+58		;8b24
l8b26h:
	djnz l8b28h		;8b26
l8b28h:
	djnz l8b3ah		;8b28
	jr c,l8b64h		;8b2a
	jr c,l8b66h		;8b2c
	djnz l8b30h		;8b2e
l8b30h:
	nop			;8b30
	nop			;8b31
l8b32h:
	nop			;8b32
	add hl,bc		;8b33
	ld bc,0061fh		;8b34
	ld b,009h		;8b37
	add hl,bc		;8b39
l8b3ah:
	rrca			;8b3a
	ld bc,0011fh		;8b3b
	ld (bc),a		;8b3e
	inc b			;8b3f
	nop			;8b40
	nop			;8b41
	nop			;8b42
	ld l,b			;8b43
	ex af,af'		;8b44
	ex af,af'		;8b45
	sub h			;8b46
	call p,00808h		;8b47
	ld l,h			;8b4a
	ret m			;8b4b
	ex af,af'		;8b4c
	ret p			;8b4d
	nop			;8b4e
	nop			;8b4f
	ex af,af'		;8b50
	inc c			;8b51
	ld c,006h		;8b52
	ld e,000h		;8b54
	add hl,bc		;8b56
	add hl,bc		;8b57
	ld b,006h		;8b58
	nop			;8b5a
	ld e,000h		;8b5b
	ld c,00ch		;8b5d
	ex af,af'		;8b5f
	nop			;8b60
	nop			;8b61
	nop			;8b62
	sub b			;8b63
l8b64h:
	ret p			;8b64
	ret p			;8b65
l8b66h:
	ld l,b			;8b66
	ex af,af'		;8b67
	call p,sub_90f4h	;8b68
	nop			;8b6b
	ret p			;8b6c
	nop			;8b6d
	nop			;8b6e
	nop			;8b6f
	nop			;8b70
	nop			;8b71
	nop			;8b72
	ld a,(bc)		;8b73
	ld a,(bc)		;8b74
	jp m,03535h		;8b75
	ld c,d			;8b78
	ld c,d			;8b79
	ld a,d			;8b7a
	rrca			;8b7b
	jp m,02809h		;8b7c
	ex af,af'		;8b7f
	nop			;8b80
	nop			;8b81
	nop			;8b82
l8b83h:
	ret nc			;8b83
	inc d			;8b84
	inc d			;8b85
	inc l			;8b86
	call pe,01010h		;8b87
	call nc,018f4h		;8b8a
l8b8dh:
	ret po			;8b8d
	nop			;8b8e
	nop			;8b8f
	djnz l8ba2h		;8b90
	jr nc,$+51		;8b92
	pop af			;8b94
l8b95h:
	dec b			;8b95
	ld c,d			;8b96
	ld c,d			;8b97
	dec (hl)		;8b98
	dec (hl)		;8b99
	dec b			;8b9a
	ret p			;8b9b
	ld bc,01030h		;8b9c
	djnz l8ba1h		;8b9f
l8ba1h:
	nop			;8ba1
l8ba2h:
	nop			;8ba2
	jr nz,l8b8dh		;8ba3
	ret pe			;8ba5
	ret nc			;8ba6
	djnz l8b95h		;8ba7
	call pe,00828h		;8ba9
	ret po			;8bac
	nop			;8bad
	nop			;8bae
	nop			;8baf
	nop			;8bb0
	nop			;8bb1
	ld b,00ah		;8bb2
	ld a,(bc)		;8bb4
	jp m,03535h		;8bb5
	ld c,d			;8bb8
	ld c,d			;8bb9
	ld a,d			;8bba
	rrca			;8bbb
	jp m,03807h		;8bbc
	ld b,000h		;8bbf
	nop			;8bc1
	nop			;8bc2
	ret nc			;8bc3
	ld de,02b15h		;8bc4
l8bc7h:
	ex de,hl		;8bc7
	inc d			;8bc8
	inc d			;8bc9
	push de			;8bca
	push af			;8bcb
	ld a,(de)		;8bcc
	ret po			;8bcd
	nop			;8bce
	nop			;8bcf
	nop			;8bd0
	ld b,038h		;8bd1
	ld sp,005f1h		;8bd3
	ld c,d			;8bd6
	ld c,d			;8bd7
	dec (hl)		;8bd8
	dec (hl)		;8bd9
	dec b			;8bda
	ret p			;8bdb
	ld bc,00638h		;8bdc
	nop			;8bdf
	nop			;8be0
	nop			;8be1
	nop			;8be2
	jr nz,l8bc7h		;8be3
	jp pe,014d4h		;8be5
	ex de,hl		;8be8
	ex de,hl		;8be9
	ld hl,(0e00ah)		;8bea
	nop			;8bed
	nop			;8bee
	nop			;8bef
	nop			;8bf0
	ld a,(iy+000h)		;8bf1
	dec a			;8bf4
	jp nz,l8c9ch		;8bf5
	ld a,(0cb1dh)		;8bf8
	or a			;8bfb
	jp nz,l8816h		;8bfc
	push ix			;8bff
	pop hl			;8c01
	ld a,(hl)		;8c02
	ld de,00020h		;8c03
	add hl,de		;8c06
	or (hl)			;8c07
	add hl,de		;8c08
	or (hl)			;8c09
	ret nz			;8c0a
	push ix			;8c0b
	push bc			;8c0d
	call sub_8c35h		;8c0e
	pop bc			;8c11
	pop ix			;8c12
	push ix			;8c14
	push bc			;8c16
	call sub_8c35h		;8c17
	pop bc			;8c1a
	pop ix			;8c1b
	ld hl,00100h		;8c1d
	call nc,sub_8c2eh	;8c20
	call sub_8c35h		;8c23
	ld hl,0ff00h		;8c26
	call nc,sub_8c2eh	;8c29
	or a			;8c2c
	ret			;8c2d
sub_8c2eh:
	ld (ix+00ch),h		;8c2e
	ld (ix+00bh),l		;8c31
	ret			;8c34
sub_8c35h:
	call sub_8c47h		;8c35
	ret c			;8c38
	push iy			;8c39
	call sub_8d51h		;8c3b
	pop iy			;8c3e
	ld a,003h		;8c40
	call 04af0h		;8c42
	or a			;8c45
	ret			;8c46
sub_8c47h:
	call sub_87e1h		;8c47
	ret c			;8c4a
	ld a,(0cb08h)		;8c4b
	call 04e79h		;8c4e
	inc a			;8c51
	add a,a			;8c52
	ld (ix+006h),a		;8c53
	ld a,(iy+000h)		;8c56
	ld (ix+003h),a		;8c59
	ld bc,l8ddch		;8c5c
	call sub_861fh		;8c5f
	ld (ix+00bh),e		;8c62
	ld (ix+00ch),d		;8c65
	ld (ix+00dh),c		;8c68
	ld (ix+00eh),b		;8c6b
	call sub_863ch		;8c6e
	ld (ix+00ah),d		;8c71
	ld (ix+009h),e		;8c74
	ld (ix+008h),b		;8c77
	ld (ix+007h),c		;8c7a
	ld (ix+014h),003h	;8c7d
	ld (ix+013h),003h	;8c81
	ld a,004h		;8c85
	call sub_86a5h		;8c87
	ld a,(iy+000h)		;8c8a
	dec a			;8c8d
	jr nz,l8d0bh		;8c8e
	ld a,(0cb08h)		;8c90
	call 04e79h		;8c93
	add a,00fh		;8c96
	ld (ix+005h),a		;8c98
	ret			;8c9b
l8c9ch:
	ld a,(iy+000h)		;8c9c
	dec a			;8c9f
	jr nz,l8ca9h		;8ca0
	ld a,(0cb1dh)		;8ca2
	or a			;8ca5
	jp nz,l8816h		;8ca6
l8ca9h:
	call sub_8ccdh		;8ca9
	ret c			;8cac
	ld a,(0cb08h)		;8cad
	call 04e79h		;8cb0
	inc a			;8cb3
	ld (ix+006h),a		;8cb4
	push af			;8cb7
	push iy			;8cb8
	call sub_8d51h		;8cba
	pop iy			;8cbd
	pop af			;8cbf
	cp 003h			;8cc0
	ld a,004h		;8cc2
	jr z,l8cc8h		;8cc4
	ld a,002h		;8cc6
l8cc8h:
	call 04af0h		;8cc8
	or a			;8ccb
	ret			;8ccc
sub_8ccdh:
	call sub_87e1h		;8ccd
	ret c			;8cd0
	ld a,(iy+000h)		;8cd1
	ld (ix+003h),a		;8cd4
	ld bc,l8ddch		;8cd7
	call sub_861fh		;8cda
	ld (ix+00bh),e		;8cdd
	ld (ix+00ch),d		;8ce0
	ld (ix+00dh),c		;8ce3
	ld (ix+00eh),b		;8ce6
	call sub_863ch		;8ce9
	ld (ix+00ah),d		;8cec
	ld (ix+009h),e		;8cef
	ld (ix+008h),b		;8cf2
	ld (ix+007h),c		;8cf5
	ld (ix+014h),003h	;8cf8
	ld (ix+013h),003h	;8cfc
	ld a,004h		;8d00
	call sub_86a5h		;8d02
	ld a,(iy+000h)		;8d05
	dec a			;8d08
	jr z,l8d1ch		;8d09
l8d0bh:
	xor a			;8d0b
	add a,a			;8d0c
	ld c,a			;8d0d
	ld a,(ix+00ch)		;8d0e
	or a			;8d11
	jr z,l8d16h		;8d12
	ld a,001h		;8d14
l8d16h:
	add a,c			;8d16
	ld (ix+005h),a		;8d17
	or a			;8d1a
	ret			;8d1b
l8d1ch:
	ld a,(0cb08h)		;8d1c
	call 04e79h		;8d1f
	add a,00ch		;8d22
	ld (ix+005h),a		;8d24
	or a			;8d27
	ret			;8d28
	ld bc,l8ddch		;8d29
	call sub_861fh		;8d2c
	ld (ix+00bh),e		;8d2f
	ld (ix+00ch),d		;8d32
	ld (ix+00dh),c		;8d35
	ld (ix+00eh),b		;8d38
	ld a,(0cb08h)		;8d3b
	call 04e79h		;8d3e
	add a,a			;8d41
	ld c,a			;8d42
	ld a,d			;8d43
	or a			;8d44
	jr z,l8d49h		;8d45
	ld a,001h		;8d47
l8d49h:
	add a,c			;8d49
	ld (ix+005h),a		;8d4a
	ret			;8d4d
	call 06a7fh		;8d4e
sub_8d51h:
	call sub_86ech		;8d51
	ret nc			;8d54
	bit 1,(ix+005h)		;8d55
	jp nz,l8da1h		;8d59
	call sub_8e0ch		;8d5c
	jp z,077d0h		;8d5f
	ld h,(ix+00eh)		;8d62
	ld l,(ix+00dh)		;8d65
	ld a,h			;8d68
	cpl			;8d69
	ld h,a			;8d6a
	ld a,l			;8d6b
	cpl			;8d6c
	ld l,a			;8d6d
	inc hl			;8d6e
	sra h			;8d6f
	rr l			;8d71
	ld bc,00100h		;8d73
	add hl,bc		;8d76
	ex de,hl		;8d77
	ld h,(ix+00ch)		;8d78
	ld l,(ix+00bh)		;8d7b
	ld a,h			;8d7e
	cpl			;8d7f
	ld h,a			;8d80
	ld a,l			;8d81
	cpl			;8d82
	ld l,a			;8d83
	inc hl			;8d84
	sra h			;8d85
	rr l			;8d87
	ld bc,00100h		;8d89
	add hl,bc		;8d8c
	call sub_86afh		;8d8d
	ld de,00100h		;8d90
	ld hl,00100h		;8d93
	call sub_86afh		;8d96
	ld a,(ix+000h)		;8d99
	or a			;8d9c
	jp nz,077d0h		;8d9d
	ret			;8da0
l8da1h:
	call sub_8e0ch		;8da1
	jp z,077d0h		;8da4
	ld de,00080h		;8da7
	ld hl,00080h		;8daa
	call sub_86beh		;8dad
	ld de,00080h		;8db0
	ld hl,00180h		;8db3
	call sub_86beh		;8db6
	ld de,00180h		;8db9
	ld hl,00180h		;8dbc
	call sub_86beh		;8dbf
	ld de,00180h		;8dc2
	ld hl,00080h		;8dc5
	call sub_86beh		;8dc8
	ld de,00100h		;8dcb
	ld hl,00100h		;8dce
	call sub_86afh		;8dd1
	ld a,(ix+000h)		;8dd4
	or a			;8dd7
	jp nz,077d0h		;8dd8
	ret			;8ddb
l8ddch:
	nop			;8ddc
	nop			;8ddd
	nop			;8dde
	ld (bc),a		;8ddf
	rlca			;8de0
	ld b,000h		;8de1
	nop			;8de3
	nop			;8de4
	ld (bc),a		;8de5
	rst 38h			;8de6
	nop			;8de7
	nop			;8de8
	ld (bc),a		;8de9
	nop			;8dea
	nop			;8deb
	rst 38h			;8dec
	nop			;8ded
	nop			;8dee
	nop			;8def
	nop			;8df0
	cp 0ffh			;8df1
	nop			;8df3
	nop			;8df4
	nop			;8df5
	nop			;8df6
	cp 007h			;8df7
	nop			;8df9
	nop			;8dfa
	nop			;8dfb
	nop			;8dfc
	cp 0ffh			;8dfd
	nop			;8dff
	nop			;8e00
	cp 000h			;8e01
	nop			;8e03
	rst 38h			;8e04
	nop			;8e05
	nop			;8e06
	nop			;8e07
	nop			;8e08
	ld (bc),a		;8e09
	rst 38h			;8e0a
	nop			;8e0b
sub_8e0ch:
	ld d,(ix+00ah)		;8e0c
	ld e,(ix+008h)		;8e0f
	call 07b06h		;8e12
	jr nc,l8e4dh		;8e15
	ex de,hl		;8e17
	ld d,0deh		;8e18
	ld e,(hl)		;8e1a
	ld a,(de)		;8e1b
	or a			;8e1c
	ret nz			;8e1d
	inc hl			;8e1e
	ld e,(hl)		;8e1f
	ld a,(de)		;8e20
	or a			;8e21
	ret nz			;8e22
	inc hl			;8e23
	ld e,(hl)		;8e24
	ld a,(de)		;8e25
	or a			;8e26
	ret nz			;8e27
	ld bc,0002eh		;8e28
	add hl,bc		;8e2b
	ld e,(hl)		;8e2c
	ld a,(de)		;8e2d
	or a			;8e2e
	ret nz			;8e2f
	inc hl			;8e30
	ld e,(hl)		;8e31
	ld a,(de)		;8e32
	or a			;8e33
	ret nz			;8e34
	inc hl			;8e35
	ld e,(hl)		;8e36
	ld a,(de)		;8e37
	or a			;8e38
	ret nz			;8e39
	ld bc,0002eh		;8e3a
	add hl,bc		;8e3d
	ld e,(hl)		;8e3e
	ld a,(de)		;8e3f
	or a			;8e40
	ret nz			;8e41
	inc hl			;8e42
	ld e,(hl)		;8e43
	ld a,(de)		;8e44
	or a			;8e45
	ret nz			;8e46
	inc hl			;8e47
	ld e,(hl)		;8e48
	ld a,(de)		;8e49
	or a			;8e4a
	ret nz			;8e4b
	ret			;8e4c
l8e4dh:
	or 0ffh			;8e4d
	ret			;8e4f
	ld b,001h		;8e50
	call sub_87e1h		;8e52
	ret c			;8e55
	ld a,(0cc0eh)		;8e56
	or a			;8e59
	ret nz			;8e5a
	ld a,001h		;8e5b
	ld (0cc0eh),a		;8e5d
	ld a,007h		;8e60
	call sub_86a5h		;8e62
	ld (ix+014h),003h	;8e65
	ld (ix+013h),003h	;8e69
	ld a,(iy+000h)		;8e6d
	ld a,004h		;8e70
	ld (ix+003h),a		;8e72
	xor a			;8e75
	ld hl,0000ch		;8e76
	call sub_863ch		;8e79
	ld (ix+00ah),d		;8e7c
	ld (ix+009h),e		;8e7f
	ld (ix+008h),b		;8e82
	ld (ix+007h),c		;8e85
	ld de,00000h		;8e88
	ld hl,00100h		;8e8b
	call 06bebh		;8e8e
	ld (ix+015h),005h	;8e91
	ld (ix+017h),001h	;8e95
	or a			;8e99
	ret			;8e9a
	call sub_8ebbh		;8e9b
	ld d,000h		;8e9e
	ld e,d			;8ea0
	ld l,d			;8ea1
	ld h,d			;8ea2
	inc h			;8ea3
	call sub_86beh		;8ea4
	ld d,000h		;8ea7
	ld e,d			;8ea9
	ld l,d			;8eaa
	inc d			;8eab
	ld h,d			;8eac
	call sub_86afh		;8ead
	call sub_86ech		;8eb0
	ld a,(ix+000h)		;8eb3
	or a			;8eb6
	jp nz,077d0h		;8eb7
	ret			;8eba
sub_8ebbh:
	ld a,(0ca10h)		;8ebb
	cp 004h			;8ebe
	jp z,06a7fh		;8ec0
	call 06c29h		;8ec3
	ld de,00100h		;8ec6
	ld hl,00200h		;8ec9
	call sub_8f06h		;8ecc
	ld de,00000h		;8ecf
	ld hl,00100h		;8ed2
	jr nc,l8effh		;8ed5
	ld de,00100h		;8ed7
	ld hl,00300h		;8eda
	call sub_8f06h		;8edd
	ld de,00000h		;8ee0
	ld hl,00200h		;8ee3
	jr nc,l8effh		;8ee6
	ld de,00300h		;8ee8
	ld hl,00200h		;8eeb
	call sub_8f06h		;8eee
	ld de,00200h		;8ef1
	ld hl,00100h		;8ef4
	jr nc,l8effh		;8ef7
	ld de,00200h		;8ef9
	ld hl,00000h		;8efc
l8effh:
	call 06bebh		;8eff
	call 06a7fh		;8f02
	ret			;8f05
sub_8f06h:
	call 075aah		;8f06
	ccf			;8f09
	ret nc			;8f0a
	cp 003h			;8f0b
	scf			;8f0d
	ret z			;8f0e
	or a			;8f0f
l8f10h:
	ret			;8f10
l8f11h:
	ret			;8f11
sub_8f12h:
	ld a,0afh		;8f12
	push hl			;8f14
	push af			;8f15
	call 0465fh		;8f16
	pop bc			;8f19
	pop hl			;8f1a
	push af			;8f1b
	push hl			;8f1c
	push bc			;8f1d
	ld a,(0f342h)		;8f1e
	ld h,040h		;8f21
	call 00024h		;8f23
	pop af			;8f26
	pop hl			;8f27
	call sub_8f34h		;8f28
	pop af			;8f2b
	push hl			;8f2c
	ld h,040h		;8f2d
	call 00024h		;8f2f
	pop hl			;8f32
	ret			;8f33
sub_8f34h:
	or a			;8f34
	jr z,l8f4dh		;8f35
	push hl			;8f37
	ld hl,0c000h		;8f38
	ld de,04000h		;8f3b
	ld bc,01000h		;8f3e
	call sub_8f56h		;8f41
	ld hl,(070f0h)		;8f44
	pop de			;8f47
	ld (070f0h),de		;8f48
	ret			;8f4c
l8f4dh:
	ld hl,0d000h		;8f4d
	ld de,05000h		;8f50
	ld bc,020f0h		;8f53
sub_8f56h:
	ld a,(hl)		;8f56
	ex af,af'		;8f57
	ld a,(de)		;8f58
	ld (hl),a		;8f59
	ex af,af'		;8f5a
	ld (de),a		;8f5b
	inc hl			;8f5c
	inc de			;8f5d
	dec bc			;8f5e
	ld a,b			;8f5f
	or c			;8f60
	jr nz,sub_8f56h		;8f61
	ret			;8f63
l8f64h:
	ld a,(0ffa7h)		;8f64
	cp 0c9h			;8f67
	ret z			;8f69
	ld a,(0fd9ah)		;8f6a
	ld bc,(0fd9bh)		;8f6d
	push af			;8f71
	push bc			;8f72
	ld a,0c9h		;8f73
	ld (0fd9ah),a		;8f75
	call sub_8f86h		;8f78
	di			;8f7b
	pop bc			;8f7c
	pop af			;8f7d
	ld (0fd9ah),a		;8f7e
	ld (0fd9bh),bc		;8f81
	ret			;8f85
sub_8f86h:
	call sub_8fb7h		;8f86
	di			;8f89
	ld de,(0c000h)		;8f8a
	ld (0c000h),sp		;8f8e
	ld hl,(0c000h)		;8f92
	ld (0c000h),de		;8f95
	call sub_8f12h		;8f99
	ld sp,0d000h		;8f9c
	call sub_8f12h+1	;8f9f
	ld a,01fh		;8fa2
	call 04c07h		;8fa4
	ld sp,0d200h		;8fa7
	jp 06000h		;8faa
sub_8fadh:
	call 04b8fh		;8fad
	ld a,(0f3e0h)		;8fb0
	set 5,a			;8fb3
	jr l8fbfh		;8fb5
sub_8fb7h:
	call 04b78h		;8fb7
	ld a,(0f3e0h)		;8fba
	res 5,a			;8fbd
l8fbfh:
	ld b,a			;8fbf
	ld c,001h		;8fc0
	jp 00047h		;8fc2
l8fc5h:
	di			;8fc5
	call sub_8f12h		;8fc6
	ld sp,0d000h		;8fc9
	push hl			;8fcc
	call sub_8f12h+1	;8fcd
	pop hl			;8fd0
	ld sp,hl		;8fd1
	call 06003h		;8fd2
	ld a,001h		;8fd5
	call 04c07h		;8fd7
	call sub_8fadh		;8fda
	ret			;8fdd
	ex af,af'		;8fde
	ld h,b			;8fdf
	ld (bc),a		;8fe0
	and (hl)		;8fe1
	ld de,00560h		;8fe2
	and (hl)		;8fe5
	inc b			;8fe6
	ld h,b			;8fe7
	ld (bc),a		;8fe8
	and (hl)		;8fe9
	ld (bc),a		;8fea
	jp pe,06003h		;8feb
	inc bc			;8fee
	and (hl)		;8fef
	add a,c			;8ff0
	ld h,b			;8ff1
	inc bc			;8ff2
	and (hl)		;8ff3
	inc b			;8ff4
	ld h,b			;8ff5
	dec d			;8ff6
	and (hl)		;8ff7
	dec b			;8ff8
	ld h,b			;8ff9
	inc b			;8ffa
	and (hl)		;8ffb
	inc b			;8ffc
	ld h,b			;8ffd
	adc a,e			;8ffe
	and (hl)		;8fff
	and 0aeh		;9000
	xor (hl)		;9002
	and (hl)		;9003
l9004h:
	and (hl)		;9004
	ld h,b			;9005
	ld h,b			;9006
	and 0a6h		;9007
	and (hl)		;9009
	dec b			;900a
	jp pe,0e683h		;900b
	and (hl)		;900e
	and (hl)		;900f
	dec b			;9010
	jp pe,0a602h		;9011
	inc b			;9014
	jp pe,0a602h		;9015
	jr l9004h		;9018
	ex af,af'		;901a
	and (hl)		;901b
	nop			;901c
	ex af,af'		;901d
	ld l,a			;901e
	ld (bc),a		;901f
	and (hl)		;9020
	ld de,0056fh		;9021
	and (hl)		;9024
	inc b			;9025
	ld l,a			;9026
	ld (bc),a		;9027
	and (hl)		;9028
	ld (bc),a		;9029
	jp pe,06f03h		;902a
	inc bc			;902d
	and (hl)		;902e
	add a,c			;902f
	ld l,a			;9030
	inc bc			;9031
	and (hl)		;9032
	inc b			;9033
	ld l,a			;9034
	dec d			;9035
	and (hl)		;9036
	dec b			;9037
	ld l,a			;9038
	inc b			;9039
	and (hl)		;903a
	inc b			;903b
	ld l,a			;903c
	adc a,e			;903d
	and (hl)		;903e
	and 0aeh		;903f
	xor (hl)		;9041
	and (hl)		;9042
l9043h:
	and (hl)		;9043
	ld l,a			;9044
	ld l,a			;9045
	and 0a6h		;9046
	and (hl)		;9048
	dec b			;9049
	jp pe,0e683h		;904a
	and (hl)		;904d
	and (hl)		;904e
	dec b			;904f
	jp pe,0a602h		;9050
	inc b			;9053
	jp pe,0a602h		;9054
	jr l9043h		;9057
	ex af,af'		;9059
	and (hl)		;905a
	nop			;905b
	add a,c			;905c
	ld bc,00305h		;905d
	ld (bc),a		;9060
	ld bc,04084h		;9061
	add a,b			;9064
	cp 0f8h			;9065
	inc b			;9067
	nop			;9068
	ld (bc),a		;9069
	add a,b			;906a
	inc b			;906b
	ret nz			;906c
	ei			;906d
	add a,b			;906e
	nop			;906f
	nop			;9070
	inc a			;9071
	ld a,a			;9072
	ld c,019h		;9073
	djnz $+35		;9075
	inc hl			;9077
	nop			;9078
	nop			;9079
	inc a			;907a
	rst 38h			;907b
l907ch:
	jr c,l907ch		;907c
	jr l90feh		;907e
	nop			;9080
l9081h:
	jr c,l9081h		;9081
	jr c,l9091h		;9083
	inc b			;9085
	cp 040h			;9086
	inc bc			;9088
	inc b			;9089
	ld a,a			;908a
	ccf			;908b
	ld a,a			;908c
	ld a,a			;908d
	inc bc			;908e
	daa			;908f
	ld c,a			;9090
l9091h:
	ld c,a			;9091
	cpl			;9092
	rrca			;9093
	daa			;9094
	daa			;9095
	inc hl			;9096
	ld sp,0f2e4h		;9097
l909ah:
	ld (hl),d		;909a
	ld (hl),d		;909b
	ld h,h			;909c
	ret po			;909d
	call m,018feh		;909e
	rrca			;90a1
l90a2h:
	inc bc			;90a2
	ld a,a			;90a3
l90a4h:
	ld a,a			;90a4
	ccf			;90a5
l90a6h:
	rlca			;90a6
	nop			;90a7
l90a8h:
	ld a,a			;90a8
	rst 30h			;90a9
l90aah:
	jp 0f301h		;90aa
	ex (sp),hl		;90ad
	ld bc,03c00h		;90ae
	add a,c			;90b1
	add a,c			;90b2
	rst 0			;90b3
	cp 038h			;90b4
	cp 07ch			;90b6
l90b8h:
	ld bc,07f1eh		;90b8
	inc e			;90bb
l90bch:
	inc sp			;90bc
	daa			;90bd
l90beh:
	ld l,a			;90be
	ld c,a			;90bf
l90c0h:
	add a,e			;90c0
	jr c,l9141h		;90c1
	inc a			;90c3
	rrca			;90c4
	jp 0f9f1h		;90c5
	cp 0feh			;90c8
	inc b			;90ca
	inc c			;90cb
	jr l90beh		;90cc
	cp 0f8h			;90ce
	cp c			;90d0
	ld a,(hl)		;90d1
	ld a,a			;90d2
	rst 38h			;90d3
	rst 38h			;90d4
	cp 07eh			;90d5
	sbc a,l			;90d7
	ld c,a			;90d8
	cpl			;90d9
	daa			;90da
	inc hl			;90db
	ld sp,0001ch		;90dc
	nop			;90df
	or 0ech			;90e0
	exx			;90e2
	rst 38h			;90e3
	cp 078h			;90e4
	nop			;90e6
	nop			;90e7
	ret z			;90e8
	inc bc			;90e9
	call po,0ec84h		;90ea
	call z,0f098h		;90ed
	nop			;90f0
	rst 38h			;90f1
	rst 38h			;90f2
	rst 38h			;90f3
sub_90f4h:
	rst 38h			;90f4
	rst 38h			;90f5
	rst 38h			;90f6
	rst 38h			;90f7
	rst 38h			;90f8
	rst 38h			;90f9
	rst 38h			;90fa
	rst 38h			;90fb
	rst 38h			;90fc
	rst 38h			;90fd
l90feh:
	rst 38h			;90fe
	rst 38h			;90ff
	inc b			;9100
	sub d			;9101
	ex af,af'		;9102
	sub d			;9103
	inc c			;9104
	sub d			;9105
	djnz l909ah		;9106
	inc d			;9108
	sub d			;9109
	inc d			;910a
	sub d			;910b
	djnz $-108		;910c
	djnz l90a2h		;910e
	djnz l90a4h		;9110
	jr l90a6h		;9112
	jr l90a8h		;9114
	jr l90aah		;9116
	jr $-108		;9118
	inc e			;911a
	sub d			;911b
	nop			;911c
	sub d			;911d
	inc h			;911e
	sub d			;911f
	inc h			;9120
	sub d			;9121
	inc h			;9122
	sub d			;9123
	jr z,l90b8h		;9124
	inc l			;9126
	sub d			;9127
	jr nc,l90bch		;9128
	inc (hl)		;912a
l912bh:
	sub d			;912b
	jr c,l90c0h		;912c
	inc h			;912e
l912fh:
	sub d			;912f
	inc a			;9130
	sub d			;9131
	ld b,b			;9132
l9133h:
	sub d			;9133
	ld b,h			;9134
	sub d			;9135
	ld c,b			;9136
	sub d			;9137
	ld c,h			;9138
	sub d			;9139
	ld d,b			;913a
l913bh:
	sub d			;913b
	ld d,h			;913c
l913dh:
	sub d			;913d
	ld e,b			;913e
	sub d			;913f
	ld e,h			;9140
l9141h:
	sub d			;9141
	ld h,b			;9142
	sub d			;9143
	ld h,h			;9144
	sub d			;9145
	ld l,b			;9146
	sub d			;9147
	ld l,h			;9148
	sub d			;9149
	ld (hl),b		;914a
	sub d			;914b
	ld a,b			;914c
	sub d			;914d
	ld a,h			;914e
	sub d			;914f
	add a,b			;9150
	sub d			;9151
	add a,h			;9152
	sub d			;9153
	adc a,b			;9154
	sub d			;9155
	adc a,h			;9156
l9157h:
	sub d			;9157
	sub b			;9158
	sub d			;9159
	sub h			;915a
	sub d			;915b
	sbc a,b			;915c
	sub d			;915d
	sbc a,h			;915e
	sub d			;915f
	and b			;9160
	sub d			;9161
	and h			;9162
	sub d			;9163
	xor b			;9164
	sub d			;9165
	xor h			;9166
	sub d			;9167
	or b			;9168
	sub d			;9169
	or h			;916a
	sub d			;916b
	cp h			;916c
	sub d			;916d
	ret nz			;916e
	sub d			;916f
	call nz,0c892h		;9170
	sub d			;9173
	call z,0d092h		;9174
	sub d			;9177
	call nc,0d892h		;9178
	sub d			;917b
	call c,0e092h		;917c
	sub d			;917f
	call po,0e892h		;9180
	sub d			;9183
	call pe,0f092h		;9184
	sub d			;9187
	call p,0f892h		;9188
	sub d			;918b
	call m,00092h		;918c
	sub e			;918f
	inc b			;9190
	sub e			;9191
	ex af,af'		;9192
	sub e			;9193
	inc c			;9194
	sub e			;9195
	djnz l912bh		;9196
	inc d			;9198
	sub e			;9199
	jr l912fh		;919a
	inc e			;919c
	sub e			;919d
	jr nz,l9133h		;919e
	inc l			;91a0
	sub e			;91a1
	inc l			;91a2
	sub e			;91a3
	inc l			;91a4
	sub e			;91a5
	jr z,l913bh		;91a6
	jr nc,l913dh		;91a8
	inc (hl)		;91aa
	sub e			;91ab
	ld c,b			;91ac
	sub e			;91ad
	ld l,b			;91ae
	sub e			;91af
	ld h,h			;91b0
	sub e			;91b1
	ld l,h			;91b2
	sub e			;91b3
	ld (hl),b		;91b4
	sub e			;91b5
	ld (hl),h		;91b6
	sub e			;91b7
	ld a,b			;91b8
	sub e			;91b9
	ld a,h			;91ba
	sub e			;91bb
	ld c,b			;91bc
	sub e			;91bd
	ld c,h			;91be
	sub e			;91bf
	ld d,b			;91c0
	sub e			;91c1
	jr c,l9157h		;91c2
	ld h,b			;91c4
	sub e			;91c5
	add a,b			;91c6
	sub e			;91c7
	add a,h			;91c8
	sub e			;91c9
	adc a,b			;91ca
	sub e			;91cb
	adc a,h			;91cc
	sub e			;91cd
	ld (hl),h		;91ce
	sub d			;91cf
	inc a			;91d0
	sub e			;91d1
	ld b,h			;91d2
	sub e			;91d3
	ld c,b			;91d4
	sub e			;91d5
	ld c,b			;91d6
	sub e			;91d7
	ld c,b			;91d8
	sub e			;91d9
	ld e,b			;91da
	sub e			;91db
	ld e,h			;91dc
	sub e			;91dd
	sub b			;91de
	sub e			;91df
	sub h			;91e0
	sub e			;91e1
	cp b			;91e2
	sub d			;91e3
	sbc a,b			;91e4
	sub e			;91e5
	sbc a,h			;91e6
	sub e			;91e7
	ld d,h			;91e8
	sub e			;91e9
	and b			;91ea
	sub e			;91eb
	and h			;91ec
	sub e			;91ed
	xor b			;91ee
	sub e			;91ef
	inc h			;91f0
	sub e			;91f1
	xor h			;91f2
	sub e			;91f3
	or b			;91f4
	sub e			;91f5
	or h			;91f6
	sub e			;91f7
	or h			;91f8
	sub e			;91f9
	or h			;91fa
	sub e			;91fb
	or h			;91fc
	sub e			;91fd
	or h			;91fe
	sub e			;91ff
	inc bc			;9200
	inc bc			;9201
	nop			;9202
	nop			;9203
	inc b			;9204
	inc b			;9205
	add hl,sp		;9206
	nop			;9207
	inc b			;9208
	inc b			;9209
	ld sp,00400h		;920a
	inc b			;920d
	ld d,(hl)		;920e
	nop			;920f
	inc b			;9210
	inc b			;9211
	ld sp,00301h		;9212
	inc bc			;9215
	ld d,d			;9216
	nop			;9217
	inc b			;9218
	add a,h			;9219
	cp l			;921a
	jr z,$+8		;921b
	adc a,d			;921d
	ld d,(hl)		;921e
	jr l9225h		;921f
	inc b			;9221
	ld sp,00400h		;9222
l9225h:
	add a,h			;9225
	cp c			;9226
	nop			;9227
	inc b			;9228
	add a,h			;9229
	cp c			;922a
	ld bc,l8508h		;922b
	inc d			;922e
	ret p			;922f
	inc b			;9230
	add a,h			;9231
	cp c			;9232
	ld bc,l8404h		;9233
	cp c			;9236
	ld bc,l8404h		;9237
	cp l			;923a
	ld (bc),a		;923b
	inc b			;923c
	add a,h			;923d
	cp l			;923e
	ld bc,l8404h		;923f
	cp l			;9242
	jr $+6			;9243
	add a,h			;9245
	cp c			;9246
	ld bc,08604h		;9247
	ld d,(hl)		;924a
	inc c			;924b
	inc b			;924c
	add a,h			;924d
	cp l			;924e
	ld bc,l8608h		;924f
	cp c			;9252
	ld a,(bc)		;9253
	ld b,088h		;9254
	ld a,a			;9256
	dec b			;9257
	inc b			;9258
	add a,h			;9259
	ld d,(hl)		;925a
	ld bc,l8404h		;925b
	cp c			;925e
	ld bc,08604h		;925f
	ld d,(hl)		;9262
	ld b,004h		;9263
	add a,h			;9265
	cp l			;9266
	dec b			;9267
	dec b			;9268
	dec b			;9269
	inc b			;926a
	nop			;926b
	inc b			;926c
	add a,h			;926d
	cp c			;926e
	ld bc,l8605h		;926f
	ld d,(hl)		;9272
	ex af,af'		;9273
	inc b			;9274
	add a,h			;9275
	cp l			;9276
	nop			;9277
	ld b,084h		;9278
	cp l			;927a
	ld c,00ah		;927b
	adc a,h			;927d
	ld e,(hl)		;927e
	rra			;927f
	inc b			;9280
	add a,h			;9281
	ld d,(hl)		;9282
	ld bc,00806h		;9283
	or c			;9286
	nop			;9287
	inc b			;9288
	add a,(hl)		;9289
	ld d,(hl)		;928a
	ld b,004h		;928b
	add a,h			;928d
	cp l			;928e
	ld b,004h		;928f
	add a,(hl)		;9291
	cp l			;9292
	ld bc,00405h		;9293
	inc b			;9296
	ld b,004h		;9297
	add a,h			;9299
	cp l			;929a
	ld (bc),a		;929b
	ld a,(bc)		;929c
	ld a,(bc)		;929d
	inc b			;929e
	nop			;929f
	inc b			;92a0
	add a,h			;92a1
	cp l			;92a2
	inc b			;92a3
	inc b			;92a4
	add a,h			;92a5
	ld d,(hl)		;92a6
	ld bc,l8608h		;92a7
	cp c			;92aa
	ld d,b			;92ab
	ld b,086h		;92ac
	ld d,(hl)		;92ae
	ld b,004h		;92af
	add a,h			;92b1
	cp c			;92b2
	ret p			;92b3
	inc bc			;92b4
	inc bc			;92b5
	ld d,(hl)		;92b6
	nop			;92b7
	ld (bc),a		;92b8
	ld (bc),a		;92b9
	inc b			;92ba
	nop			;92bb
	inc b			;92bc
	add a,h			;92bd
	or l			;92be
	nop			;92bf
	rlca			;92c0
	add a,a			;92c1
	ld d,(hl)		;92c2
	ld b,009h		;92c3
	adc a,b			;92c5
	ld d,(hl)		;92c6
	dec c			;92c7
	inc b			;92c8
	add a,h			;92c9
	ld d,(hl)		;92ca
	ld bc,00303h		;92cb
	ld l,a			;92ce
	nop			;92cf
	inc bc			;92d0
	add a,e			;92d1
	ld b,(hl)		;92d2
	ld bc,08303h		;92d3
	ld b,(hl)		;92d6
	ld bc,08303h		;92d7
	inc b			;92da
	ld a,b			;92db
	ld b,008h		;92dc
	inc d			;92de
	ld bc,l8404h		;92df
	cp l			;92e2
	nop			;92e3
	inc bc			;92e4
	inc bc			;92e5
	inc b			;92e6
	nop			;92e7
	inc b			;92e8
	add a,h			;92e9
	cp l			;92ea
	nop			;92eb
	inc b			;92ec
	inc b			;92ed
	cp l			;92ee
	nop			;92ef
	inc b			;92f0
	add a,h			;92f1
	cp l			;92f2
	ld bc,l8404h		;92f3
	cp c			;92f6
	nop			;92f7
	ld (bc),a		;92f8
	ld (bc),a		;92f9
	nop			;92fa
	nop			;92fb
	inc bc			;92fc
	inc bc			;92fd
	inc b			;92fe
	nop			;92ff
	inc b			;9300
	inc b			;9301
	or l			;9302
	nop			;9303
	inc b			;9304
	add a,h			;9305
	cp l			;9306
	ld bc,l8404h		;9307
	cp c			;930a
	ld (bc),a		;930b
	inc b			;930c
	add a,h			;930d
	cp l			;930e
	ld bc,00406h		;930f
	cp l			;9312
	ld bc,l8406h		;9313
	or l			;9316
	jr nc,l931fh		;9317
	inc b			;9319
	cp l			;931a
	ld bc,l8705h		;931b
	ld d,(hl)		;931e
l931fh:
	ld (bc),a		;931f
	inc b			;9320
	inc b			;9321
	ld h,a			;9322
	nop			;9323
	add hl,bc		;9324
	ld b,01ch		;9325
	jr nc,l932ch		;9327
	inc bc			;9329
	inc b			;932a
	nop			;932b
l932ch:
	inc bc			;932c
	inc bc			;932d
	nop			;932e
	nop			;932f
	ex af,af'		;9330
	adc a,h			;9331
	dec a			;9332
	ld a,(bc)		;9333
	inc c			;9334
	adc a,h			;9335
	inc d			;9336
	inc l			;9337
	inc b			;9338
	inc b			;9339
	dec l			;933a
	nop			;933b
	inc bc			;933c
	inc bc			;933d
	inc b			;933e
	nop			;933f
	inc bc			;9340
	inc bc			;9341
	inc b			;9342
	nop			;9343
	inc bc			;9344
	inc bc			;9345
	inc b			;9346
	nop			;9347
	inc b			;9348
	inc b			;9349
	dec a			;934a
	nop			;934b
	inc b			;934c
	inc b			;934d
	ld hl,00400h		;934e
	inc b			;9351
	ld sp,00400h		;9352
	inc b			;9355
	ld hl,00400h		;9356
	add a,h			;9359
	cp l			;935a
	nop			;935b
	inc b			;935c
	add a,h			;935d
	or c			;935e
	nop			;935f
	inc b			;9360
	inc b			;9361
	ld sp,00600h		;9362
	ld a,(bc)		;9365
	ld d,d			;9366
	nop			;9367
	inc b			;9368
	add a,h			;9369
	cp c			;936a
	ex af,af'		;936b
	inc bc			;936c
	inc bc			;936d
	ld d,(hl)		;936e
	nop			;936f
	inc b			;9370
	inc b			;9371
	dec a			;9372
	nop			;9373
	inc b			;9374
	add a,h			;9375
	cp c			;9376
	nop			;9377
	inc b			;9378
	inc b			;9379
	dec a			;937a
	nop			;937b
	inc b			;937c
	add a,h			;937d
	cp c			;937e
	nop			;937f
	ld b,006h		;9380
	dec a			;9382
	inc a			;9383
	ld (bc),a		;9384
	ld (bc),a		;9385
	nop			;9386
	nop			;9387
	inc b			;9388
	add a,h			;9389
	cp l			;938a
	inc b			;938b
	inc b			;938c
	inc b			;938d
	ld sp,00400h		;938e
	add a,h			;9391
	or c			;9392
	nop			;9393
	ld b,08ch		;9394
	inc d			;9396
	dec h			;9397
	inc b			;9398
	add a,h			;9399
	ld d,(hl)		;939a
	ld (bc),a		;939b
	inc b			;939c
	add a,h			;939d
	cp c			;939e
	nop			;939f
	ld (bc),a		;93a0
	add a,d			;93a1
	ld d,(hl)		;93a2
	inc bc			;93a3
	inc c			;93a4
	inc c			;93a5
	inc b			;93a6
	sbc a,c			;93a7
	dec bc			;93a8
	sub e			;93a9
	dec a			;93aa
	ld b,b			;93ab
	ld a,(bc)		;93ac
	add a,l			;93ad
	ld d,(hl)		;93ae
	nop			;93af
	inc c			;93b0
	adc a,h			;93b1
	inc d			;93b2
	and b			;93b3
	inc b			;93b4
	inc b			;93b5
	or l			;93b6
	nop			;93b7
	jp z,04e93h		;93b8
	sub (hl)		;93bb
	ld b,(hl)		;93bc
	sbc a,d			;93bd
	ld a,09ch		;93be
	and d			;93c0
	sbc a,l			;93c1
	sbc a,d			;93c2
	sbc a,a			;93c3
	ld h,a			;93c4
	and d			;93c5
	ld l,a			;93c6
	and e			;93c7
	ld c,e			;93c8
	and h			;93c9
	djnz l93cch		;93ca
l93cch:
	ld h,l			;93cc
	dec b			;93cd
	rst 38h			;93ce
	djnz l93f3h		;93cf
	ld e,a			;93d1
	ld b,001h		;93d2
	ld (bc),a		;93d4
	djnz l93ffh		;93d5
	ld d,c			;93d7
	adc a,l			;93d8
	ld b,002h		;93d9
	rra			;93db
	inc bc			;93dc
	ld (bc),a		;93dd
	add a,(hl)		;93de
	inc bc			;93df
	ld (de),a		;93e0
	nop			;93e1
	djnz l9414h		;93e2
	ld d,c			;93e4
	adc a,l			;93e5
	ld b,010h		;93e6
	rra			;93e8
	inc bc			;93e9
	ld (bc),a		;93ea
	add a,(hl)		;93eb
	inc bc			;93ec
l93edh:
	ld (de),a		;93ed
	ld bc,03810h		;93ee
	ld d,c			;93f1
	adc a,l			;93f2
l93f3h:
	ld b,002h		;93f3
	rra			;93f5
	inc b			;93f6
	ld (bc),a		;93f7
	add a,(hl)		;93f8
	inc bc			;93f9
	ld (de),a		;93fa
	nop			;93fb
	djnz l943eh		;93fc
	ld d,c			;93fe
l93ffh:
	adc a,(hl)		;93ff
	ex af,af'		;9400
	ld bc,0031fh		;9401
	ld bc,00220h		;9404
	ld h,b			;9407
	ld (bc),a		;9408
	djnz l941bh		;9409
	ld b,h			;940b
l940ch:
	ld d,c			;940c
	adc a,l			;940d
	ld b,010h		;940e
l9410h:
	rra			;9410
	inc b			;9411
l9412h:
	ld (bc),a		;9412
	add a,(hl)		;9413
l9414h:
	inc bc			;9414
	ld (de),a		;9415
	ld bc,04c10h		;9416
	ld d,c			;9419
	adc a,l			;941a
l941bh:
	ld b,006h		;941b
	rra			;941d
	inc b			;941e
	ld (bc),a		;941f
	add a,(hl)		;9420
	inc bc			;9421
	ld (de),a		;9422
	nop			;9423
	sub b			;9424
	ld d,b			;9425
l9426h:
	ld d,c			;9426
	adc a,(hl)		;9427
	ex af,af'		;9428
	ld bc,0031fh		;9429
	ld bc,00220h		;942c
	ld (hl),b		;942f
	ld (bc),a		;9430
	djnz $+18		;9431
	ld l,b			;9433
	ld e,005h		;9434
	add a,d			;9436
	djnz l94a2h		;9437
	ld e,005h		;9439
	rrca			;943b
	sub b			;943c
	add a,b			;943d
l943eh:
	ld d,c			;943e
	adc a,l			;943f
	ld b,008h		;9440
	ld bc,00203h		;9442
	ex af,af'		;9445
	inc bc			;9446
	jr l940ch		;9447
	djnz $-126		;9449
	ld d,c			;944b
	adc a,l			;944c
	ld b,008h		;944d
l944fh:
	rra			;944f
	inc b			;9450
	ld (bc),a		;9451
	add a,(hl)		;9452
	inc bc			;9453
	jr l9457h		;9454
	sub b			;9456
l9457h:
	adc a,b			;9457
	ld d,c			;9458
	adc a,l			;9459
l945ah:
	ld b,002h		;945a
	ld bc,00203h		;945c
	ex af,af'		;945f
	inc bc			;9460
	jr l9426h		;9461
	djnz l93edh		;9463
	ld d,c			;9465
	adc a,l			;9466
	ld b,00ch		;9467
	rra			;9469
	inc b			;946a
	ld (bc),a		;946b
	add a,(hl)		;946c
	inc bc			;946d
	jr l9472h		;946e
	djnz l9412h		;9470
l9472h:
	ld h,l			;9472
	dec b			;9473
l9474h:
	rst 38h			;9474
	djnz $-94		;9475
	ld d,c			;9477
	adc a,l			;9478
	ld b,002h		;9479
	rra			;947b
	inc b			;947c
l947dh:
	ld (bc),a		;947d
	inc b			;947e
	inc bc			;947f
	dec d			;9480
	ld bc,0a810h		;9481
	ld d,c			;9484
	adc a,l			;9485
	ld b,003h		;9486
	rra			;9488
l9489h:
	inc b			;9489
	ld (bc),a		;948a
	inc b			;948b
	inc bc			;948c
	dec d			;948d
	ld bc,0b010h		;948e
	ld d,c			;9491
	adc a,l			;9492
	ld b,002h		;9493
	rra			;9495
	inc b			;9496
l9497h:
	ld (bc),a		;9497
	inc b			;9498
	inc bc			;9499
	dec d			;949a
	dec b			;949b
	djnz l944fh		;949c
	ld e,a			;949e
l949fh:
	ld b,001h		;949f
	nop			;94a1
l94a2h:
	djnz l945ah		;94a2
	ld d,c			;94a4
	adc a,l			;94a5
l94a6h:
	ld b,002h		;94a6
	rra			;94a8
	inc b			;94a9
	ld (bc),a		;94aa
	inc b			;94ab
	inc bc			;94ac
	dec d			;94ad
l94aeh:
	dec b			;94ae
	djnz l9474h		;94af
	inc h			;94b1
	ld b,012h		;94b2
	nop			;94b4
	djnz l947dh		;94b5
	rra			;94b7
	dec b			;94b8
	ex af,af'		;94b9
	djnz l9489h		;94ba
	rra			;94bc
	dec b			;94bd
	rlca			;94be
	djnz l9497h		;94bf
	jr nz,l94c8h		;94c1
	dec bc			;94c3
	djnz l949fh		;94c4
	jr nz,$+7		;94c6
l94c8h:
	dec bc			;94c8
	djnz l94a6h		;94c9
	inc h			;94cb
	ld b,012h		;94cc
	nop			;94ce
	djnz l94aeh		;94cf
	jr nz,l94d8h		;94d1
	inc b			;94d3
	sub b			;94d4
	call po,00520h		;94d5
l94d8h:
	ld a,(bc)		;94d8
	djnz $-23		;94d9
	ld (00a05h),hl		;94db
	sub b			;94de
	jp pe,00520h		;94df
	inc c			;94e2
	sub b			;94e3
	call pe,00520h		;94e4
	dec c			;94e7
	djnz $-12		;94e8
	ld h,08ah		;94ea
	inc b			;94ec
	rrca			;94ed
	inc bc			;94ee
	inc bc			;94ef
	ld (bc),a		;94f0
	ld de,0f610h		;94f1
	ld d,l			;94f4
	ld b,010h		;94f5
	ld a,(de)		;94f7
	sub c			;94f8
	dec b			;94f9
	ld h,08ah		;94fa
	inc b			;94fc
	dec c			;94fd
	inc bc			;94fe
	inc bc			;94ff
	ld (bc),a		;9500
	ld de,00b11h		;9501
	ld d,l			;9504
	ld b,010h		;9505
	sub (hl)		;9507
	ld de,02019h		;9508
	dec b			;950b
	dec c			;950c
	ld de,0551dh		;950d
	ld b,010h		;9510
	sbc a,h			;9512
	sub c			;9513
	inc h			;9514
	jr nz,l951ch		;9515
	rrca			;9517
	sub c			;9518
	daa			;9519
	jr nz,l9521h		;951a
l951ch:
	rrca			;951c
	ld de,0202ah		;951d
	dec b			;9520
l9521h:
	dec c			;9521
	ld de,0552dh		;9522
	ld b,010h		;9525
	sbc a,l			;9527
	sub c			;9528
	ld (hl),020h		;9529
	dec b			;952b
	rrca			;952c
	sub c			;952d
	add hl,sp		;952e
	jr nz,l9536h		;952f
	rrca			;9531
	ld de,0203dh		;9532
	dec b			;9535
l9536h:
	dec c			;9536
	ld de,0243fh		;9537
	ld b,012h		;953a
	nop			;953c
	ld de,02041h		;953d
l9540h:
	dec b			;9540
	inc c			;9541
	ld de,01f42h		;9542
	dec b			;9545
	add hl,bc		;9546
	ld de,01f48h		;9547
	dec b			;954a
	ld b,011h		;954b
	ld d,c			;954d
	jr nz,l9555h		;954e
	inc b			;9550
	ld de,02054h		;9551
	dec b			;9554
l9555h:
	inc b			;9555
	ld de,02457h		;9556
	ld b,012h		;9559
	nop			;955b
	sub c			;955c
	ld d,(hl)		;955d
	jr nz,l9565h		;955e
	add hl,bc		;9560
	sub c			;9561
	ld e,b			;9562
	jr nz,l956ah		;9563
l9565h:
	ld a,(bc)		;9565
	ld de,0225ch		;9566
	dec b			;9569
l956ah:
	ld a,(bc)		;956a
	ld de,02265h		;956b
	dec b			;956e
	dec c			;956f
	sub c			;9570
	ld h,a			;9571
	ld d,c			;9572
	adc a,l			;9573
	ld b,002h		;9574
	ld bc,00203h		;9576
	ex af,af'		;9579
	inc bc			;957a
	jr l9540h		;957b
	ld de,0266eh		;957d
	adc a,d			;9580
	inc b			;9581
	rrca			;9582
	inc bc			;9583
	inc bc			;9584
	ld (bc),a		;9585
	ld de,07411h		;9586
	jr nz,l9590h		;9589
	dec c			;958b
	ld de,02077h		;958c
	dec b			;958f
l9590h:
	dec c			;9590
	ld de,0267eh		;9591
	adc a,d			;9594
	inc b			;9595
	rrca			;9596
	inc bc			;9597
	inc bc			;9598
	ld (bc),a		;9599
	ld de,l8311h		;959a
	ld (00d05h),hl		;959d
	ld de,02487h		;95a0
	ld b,012h		;95a3
	nop			;95a5
	ld de,02089h		;95a6
	dec b			;95a9
	dec bc			;95aa
	ld de,01f8ah		;95ab
	dec b			;95ae
l95afh:
	ex af,af'		;95af
	ld de,05190h		;95b0
	adc a,l			;95b3
	ld b,004h		;95b4
	rra			;95b6
	ld (bc),a		;95b7
	ld (bc),a		;95b8
	inc b			;95b9
	inc bc			;95ba
	dec d			;95bb
	dec b			;95bc
	ld de,01f91h		;95bd
	dec b			;95c0
	rlca			;95c1
	ld de,05198h		;95c2
	adc a,l			;95c5
	ld b,002h		;95c6
	rra			;95c8
	ld (bc),a		;95c9
	ld (bc),a		;95ca
	inc b			;95cb
	inc bc			;95cc
	dec d			;95cd
	dec b			;95ce
	ld de,01f99h		;95cf
	dec b			;95d2
	ex af,af'		;95d3
	ld de,0249fh		;95d4
	ld b,012h		;95d7
	nop			;95d9
	ld de,01fa0h		;95da
	dec b			;95dd
	ld bc,0ac91h		;95de
	ld d,c			;95e1
	adc a,l			;95e2
	ld b,002h		;95e3
	ld bc,00203h		;95e5
	ex af,af'		;95e8
	inc bc			;95e9
	jr l95afh		;95ea
	jr nz,l95f0h		;95ec
	jr nz,l95f5h		;95ee
l95f0h:
	inc h			;95f0
	jr nz,$+6		;95f1
	jr nz,l95fah		;95f3
l95f5h:
	dec l			;95f5
	jr nz,l95fch		;95f6
	jr nz,l95ffh		;95f8
l95fah:
	jr nc,$+34		;95fa
l95fch:
	inc b			;95fc
	rra			;95fd
	dec b			;95fe
l95ffh:
	ld h,020h		;95ff
	dec b			;9601
	rra			;9602
	dec b			;9603
	ld (004b0h),a		;9604
	ld d,c			;9607
	adc a,l			;9608
	ld b,002h		;9609
	rra			;960b
	ld (bc),a		;960c
	ld (bc),a		;960d
	inc b			;960e
	inc bc			;960f
	dec d			;9610
	dec b			;9611
	jr nc,l961ah		;9612
	rra			;9614
	dec b			;9615
	dec c			;9616
	or b			;9617
	ex af,af'		;9618
	ld d,c			;9619
l961ah:
	adc a,l			;961a
	ld b,003h		;961b
	rra			;961d
	ld (bc),a		;961e
	ld (bc),a		;961f
	inc b			;9620
	inc bc			;9621
	dec d			;9622
	dec b			;9623
	or b			;9624
	inc c			;9625
	pop de			;9626
	adc a,l			;9627
	ld b,004h		;9628
	rra			;962a
	ld (bc),a		;962b
	ld (bc),a		;962c
	inc b			;962d
	inc bc			;962e
	dec d			;962f
	dec b			;9630
	jr nc,$+15		;9631
	rra			;9633
	dec b			;9634
	rrca			;9635
	jr nc,l9650h		;9636
	ld d,(hl)		;9638
	dec b			;9639
	nop			;963a
	jr nc,l9676h		;963b
	ld b,a			;963d
	dec b			;963e
	ld c,040h		;963f
	jr z,l96a2h		;9641
	dec b			;9643
	inc bc			;9644
	ld d,b			;9645
	nop			;9646
	ld h,h			;9647
	adc a,b			;9648
	ld (bc),a		;9649
	inc c			;964a
	ld (bc),a		;964b
	dec a			;964c
	nop			;964d
	djnz l9671h		;964e
l9650h:
	ld d,c			;9650
	adc a,l			;9651
	ld b,010h		;9652
	rra			;9654
	inc bc			;9655
	ld (bc),a		;9656
	add a,(hl)		;9657
	inc bc			;9658
	ld (de),a		;9659
	nop			;965a
	djnz $+41		;965b
	add hl,de		;965d
	ld b,014h		;965e
	ld e,010h		;9660
	daa			;9662
	ld d,c			;9663
	adc a,l			;9664
	ld b,010h		;9665
	rra			;9667
	inc bc			;9668
	ld (bc),a		;9669
	add a,(hl)		;966a
	inc bc			;966b
	ld (de),a		;966c
	ld bc,02f10h		;966d
	ld d,c			;9670
l9671h:
	adc a,l			;9671
	ld b,008h		;9672
	rra			;9674
	inc bc			;9675
l9676h:
	ld (bc),a		;9676
	add a,(hl)		;9677
	inc bc			;9678
	ld (de),a		;9679
	nop			;967a
	djnz l96aeh		;967b
	ld d,c			;967d
	adc a,(hl)		;967e
	ex af,af'		;967f
	ld bc,0041fh		;9680
	ld bc,00320h		;9683
	ld c,b			;9686
	ld (bc),a		;9687
	djnz $+18		;9688
	scf			;968a
	add hl,de		;968b
	ld b,014h		;968c
	ld e,010h		;968e
	ld b,e			;9690
	add hl,hl		;9691
	dec b			;9692
	ld (de),a		;9693
	djnz $+71		;9694
	add hl,hl		;9696
	dec b			;9697
	ld (de),a		;9698
l9699h:
	djnz l96e6h		;9699
	add hl,hl		;969b
	dec b			;969c
	inc d			;969d
	djnz l96edh		;969e
	add hl,hl		;96a0
	dec b			;96a1
l96a2h:
	inc d			;96a2
	djnz l96f4h		;96a3
	ld d,c			;96a5
	adc a,l			;96a6
	ld b,008h		;96a7
	rra			;96a9
	inc b			;96aa
	ld (bc),a		;96ab
	add a,(hl)		;96ac
	inc bc			;96ad
l96aeh:
	jr l96b0h		;96ae
l96b0h:
	djnz l9703h		;96b0
	add hl,hl		;96b2
	dec b			;96b3
	add a,h			;96b4
	djnz l970eh		;96b5
	ld d,c			;96b7
	adc a,l			;96b8
	ld b,004h		;96b9
l96bbh:
	rra			;96bb
	inc b			;96bc
	ld (bc),a		;96bd
	add a,(hl)		;96be
	inc bc			;96bf
	jr l96c2h		;96c0
l96c2h:
	djnz l971fh		;96c2
	add hl,de		;96c4
	ld b,014h		;96c5
	ld e,010h		;96c7
	ld h,d			;96c9
	add hl,hl		;96ca
	dec b			;96cb
	add a,e			;96cc
	djnz l9733h		;96cd
	add hl,hl		;96cf
	dec b			;96d0
	add a,e			;96d1
	djnz l973dh		;96d2
	daa			;96d4
	dec b			;96d5
	inc c			;96d6
	djnz l974ah		;96d7
	add hl,de		;96d9
	ld b,014h		;96da
	ld e,010h		;96dc
	ld (hl),c		;96de
	daa			;96df
	dec b			;96e0
	ex af,af'		;96e1
	djnz $+121		;96e2
	ld d,c			;96e4
	adc a,l			;96e5
l96e6h:
	ld b,008h		;96e6
	rra			;96e8
	inc b			;96e9
	ld (bc),a		;96ea
	add a,(hl)		;96eb
	inc bc			;96ec
l96edh:
	jr l96efh		;96ed
l96efh:
	djnz l976ah		;96ef
	daa			;96f1
	dec b			;96f2
	ld (de),a		;96f3
l96f4h:
	djnz l9770h		;96f4
	add hl,de		;96f6
l96f7h:
	ld b,094h		;96f7
	ld bc,08110h		;96f9
	daa			;96fc
	dec b			;96fd
l96feh:
	ld c,010h		;96fe
	add a,l			;9700
	add hl,hl		;9701
	dec b			;9702
l9703h:
	add a,e			;9703
	djnz $-119		;9704
	add hl,de		;9706
	ld b,014h		;9707
	ld e,010h		;9709
	add a,a			;970b
	add hl,hl		;970c
	dec b			;970d
l970eh:
	add a,e			;970e
	djnz l9699h		;970f
	ld e,a			;9711
	ld b,001h		;9712
	ld bc,l8f10h		;9714
	ld l,007h		;9717
	ld (bc),a		;9719
	add a,d			;971a
	add a,d			;971b
	djnz l96bbh		;971c
	add hl,hl		;971e
l971fh:
	dec b			;971f
	inc d			;9720
	djnz l96c2h		;9721
	add hl,hl		;9723
	dec b			;9724
	inc d			;9725
	djnz $-94		;9726
	add hl,hl		;9728
	dec b			;9729
	add a,e			;972a
	sub b			;972b
	and l			;972c
	add hl,hl		;972d
	dec b			;972e
	inc d			;972f
	sub b			;9730
	xor c			;9731
	add hl,hl		;9732
l9733h:
	dec b			;9733
	add a,l			;9734
	djnz $-78		;9735
	ld e,a			;9737
	ld b,001h		;9738
	nop			;973a
	djnz $-75		;973b
l973dh:
	add hl,hl		;973d
	dec b			;973e
	add a,h			;973f
	djnz l96f7h		;9740
	add hl,hl		;9742
	dec b			;9743
	add a,(hl)		;9744
	djnz l96feh		;9745
	add hl,hl		;9747
	dec b			;9748
	adc a,b			;9749
l974ah:
	jr nz,l974dh		;974a
	add hl,hl		;974c
l974dh:
	dec b			;974d
	and b			;974e
	jr nz,l9752h		;974f
	add hl,hl		;9751
l9752h:
	dec b			;9752
	and d			;9753
	jr nz,l9757h		;9754
	dec hl			;9756
l9757h:
	adc a,c			;9757
	inc bc			;9758
	xor b			;9759
	djnz l975eh		;975a
	ld d,0a0h		;975c
l975eh:
	inc bc			;975e
	add hl,hl		;975f
	dec b			;9760
	dec c			;9761
	and b			;9762
	inc bc			;9763
	add hl,hl		;9764
	dec b			;9765
	rrca			;9766
	jr nz,l9772h		;9767
	add hl,hl		;9769
l976ah:
	dec b			;976a
	dec d			;976b
	and b			;976c
	dec bc			;976d
	add hl,hl		;976e
	dec b			;976f
l9770h:
	dec c			;9770
	and b			;9771
l9772h:
	dec bc			;9772
	add hl,hl		;9773
	dec b			;9774
	rrca			;9775
	jr nz,l978dh		;9776
	ld e,a			;9778
	ld b,001h		;9779
	ld bc,01520h		;977b
	ld l,007h		;977e
	dec e			;9780
	nop			;9781
	add a,d			;9782
	and b			;9783
	dec de			;9784
	dec hl			;9785
	adc a,c			;9786
	inc bc			;9787
	add hl,bc		;9788
	djnz l978dh		;9789
	ld d,020h		;978b
l978dh:
	ld hl,0072eh		;978d
	dec h			;9790
	nop			;9791
	add a,d			;9792
	and b			;9793
	inc hl			;9794
	add hl,hl		;9795
	dec b			;9796
	ld a,(bc)		;9797
	jr nc,l979ah		;9798
l979ah:
	add hl,hl		;979a
	dec b			;979b
	adc a,b			;979c
	jr nc,l979fh		;979d
l979fh:
	add hl,hl		;979f
	dec b			;97a0
	inc d			;97a1
	jr nc,l97a6h		;97a2
	add hl,hl		;97a4
	dec b			;97a5
l97a6h:
	adc a,b			;97a6
	jr nc,l97abh		;97a7
	add hl,hl		;97a9
	dec b			;97aa
l97abh:
	inc d			;97ab
	jr nc,$+6		;97ac
	add hl,hl		;97ae
	dec b			;97af
	adc a,d			;97b0
	jr nc,$+6		;97b1
	add hl,hl		;97b3
	dec b			;97b4
	ld (de),a		;97b5
	jr nc,l97beh		;97b6
	add hl,hl		;97b8
	dec b			;97b9
	adc a,d			;97ba
	jr nc,l97c3h		;97bb
	add hl,hl		;97bd
l97beh:
	dec b			;97be
	ld (de),a		;97bf
	jr nc,l97ceh		;97c0
	add hl,hl		;97c2
l97c3h:
	dec b			;97c3
	inc d			;97c4
	jr nc,l97d5h		;97c5
	add hl,hl		;97c7
	dec b			;97c8
	inc d			;97c9
	jr nc,l97e4h		;97ca
	ld d,c			;97cc
	adc a,l			;97cd
l97ceh:
	ld b,004h		;97ce
	rra			;97d0
	inc b			;97d1
	ld (bc),a		;97d2
	add a,(hl)		;97d3
	inc bc			;97d4
l97d5h:
	jr l97d7h		;97d5
l97d7h:
	jr nc,l97f3h		;97d7
	dec l			;97d9
	dec b			;97da
	add a,e			;97db
	jr nc,l97f8h		;97dc
	dec l			;97de
	dec b			;97df
	inc d			;97e0
	jr nc,l9803h		;97e1
	ld e,a			;97e3
l97e4h:
	ld b,001h		;97e4
	nop			;97e6
	jr nc,$+42		;97e7
	dec l			;97e9
	dec b			;97ea
	add a,e			;97eb
	jr nc,$+42		;97ec
	dec l			;97ee
	dec b			;97ef
	inc d			;97f0
	jr nc,$+53		;97f1
l97f3h:
	add hl,hl		;97f3
	dec b			;97f4
	inc d			;97f5
	jr nc,l982dh		;97f6
l97f8h:
	add hl,hl		;97f8
	dec b			;97f9
	inc d			;97fa
	jr nc,l9835h		;97fb
	add hl,hl		;97fd
	dec b			;97fe
	ld (de),a		;97ff
	jr nc,l983fh		;9800
	add hl,hl		;9802
l9803h:
	dec b			;9803
	add a,e			;9804
	jr nc,l9845h		;9805
	ld e,a			;9807
	ld b,001h		;9808
	ld bc,03f30h		;980a
	add hl,hl		;980d
	dec b			;980e
	add a,e			;980f
	jr nc,l9853h		;9810
l9812h:
	ld sp,00a06h		;9812
	ld bc,04c30h		;9815
	ld sp,00a06h		;9818
	nop			;981b
l981ch:
	jr nc,l986eh		;981c
	ld d,c			;981e
	adc a,(hl)		;981f
	ex af,af'		;9820
	ld bc,0031fh		;9821
	ld bc,00320h		;9824
	ld (hl),b		;9827
	ld (bc),a		;9828
	djnz $+50		;9829
	ld d,b			;982b
	add hl,hl		;982c
l982dh:
	dec b			;982d
	add a,e			;982e
	jr nc,l9883h		;982f
	add hl,hl		;9831
l9832h:
	dec b			;9832
	add a,e			;9833
	or b			;9834
l9835h:
	ld d,h			;9835
	add hl,hl		;9836
	dec b			;9837
l9838h:
	adc a,h			;9838
	jr nc,l988fh		;9839
	add hl,hl		;983b
	dec b			;983c
	ld (de),a		;983d
	or b			;983e
l983fh:
	ld d,(hl)		;983f
	add hl,hl		;9840
	dec b			;9841
	adc a,h			;9842
	jr nc,$+88		;9843
l9845h:
	add hl,hl		;9845
	dec b			;9846
	ld (de),a		;9847
	jr nc,$+95		;9848
	ld sp,00a06h		;984a
	ld bc,060b0h		;984d
l9850h:
	add hl,hl		;9850
	dec b			;9851
	inc d			;9852
l9853h:
	or b			;9853
	ld h,d			;9854
	add hl,hl		;9855
	dec b			;9856
	inc d			;9857
	jr nc,$+103		;9858
	ld sp,00a06h		;985a
	nop			;985d
	jr nc,l98c7h		;985e
	pop de			;9860
	adc a,l			;9861
	ld b,008h		;9862
	rra			;9864
	inc b			;9865
	ld (bc),a		;9866
	add a,(hl)		;9867
	inc bc			;9868
l9869h:
	jr l986bh		;9869
l986bh:
	jr nc,l98d5h		;986b
	add hl,hl		;986d
l986eh:
	dec b			;986e
	add a,e			;986f
l9870h:
	jr nc,l98dch		;9870
	add hl,hl		;9872
	dec b			;9873
	add a,e			;9874
	jr nc,l98e4h		;9875
l9877h:
	ld sp,00a06h		;9877
	ld bc,07030h		;987a
	dec hl			;987d
	adc a,c			;987e
	inc bc			;987f
	inc d			;9880
l9881h:
	djnz l9885h		;9881
l9883h:
	ld d,030h		;9883
l9885h:
	ld a,h			;9885
	ld sp,00a06h		;9886
	ld bc,07e30h		;9889
	add hl,hl		;988c
l988dh:
	dec b			;988d
	inc d			;988e
l988fh:
	jr nc,l9812h		;988f
	ld sp,00a06h		;9891
	nop			;9894
	jr nc,l981ch		;9895
	ld sp,00a06h		;9897
	ld bc,l8a30h		;989a
	dec l			;989d
	dec b			;989e
	add a,e			;989f
	jr nc,l9832h		;98a0
	ld e,a			;98a2
	ld b,001h		;98a3
	nop			;98a5
	jr nc,l9838h		;98a6
	dec l			;98a8
	dec b			;98a9
	inc d			;98aa
	jr nc,l983fh		;98ab
	pop de			;98ad
	adc a,l			;98ae
	ld b,00ah		;98af
	rra			;98b1
	inc b			;98b2
	ld (bc),a		;98b3
	add a,(hl)		;98b4
	inc bc			;98b5
	jr l98b8h		;98b6
l98b8h:
	or b			;98b8
	sub d			;98b9
	ld d,c			;98ba
	adc a,(hl)		;98bb
	ex af,af'		;98bc
l98bdh:
	ld bc,0031fh		;98bd
	ld bc,00320h		;98c0
	ld (hl),b		;98c3
	ld (bc),a		;98c4
	djnz l98f7h		;98c5
l98c7h:
	sbc a,d			;98c7
	add hl,hl		;98c8
	dec b			;98c9
	inc c			;98ca
	jr nc,l9869h		;98cb
	add hl,hl		;98cd
	dec b			;98ce
	adc a,d			;98cf
	jr nc,l9870h		;98d0
	add hl,hl		;98d2
	dec b			;98d3
	adc a,d			;98d4
l98d5h:
	jr nc,l9877h		;98d5
	add hl,hl		;98d7
	dec b			;98d8
	inc c			;98d9
	jr nc,l9881h		;98da
l98dch:
	add hl,hl		;98dc
	dec b			;98dd
	djnz l9910h		;98de
	and a			;98e0
	add hl,hl		;98e1
	dec b			;98e2
	add a,(hl)		;98e3
l98e4h:
	jr nc,l988dh		;98e4
	add hl,hl		;98e6
	dec b			;98e7
	djnz l991ah		;98e8
	xor c			;98ea
	add hl,hl		;98eb
	dec b			;98ec
	add a,(hl)		;98ed
	jr nc,$-85		;98ee
	add hl,hl		;98f0
	dec b			;98f1
	djnz l9924h		;98f2
	xor (hl)		;98f4
	ld d,e			;98f5
	adc a,b			;98f6
l98f7h:
	ld (bc),a		;98f7
	nop			;98f8
	ld (bc),a		;98f9
	ld hl,(0b830h)		;98fa
	cpl			;98fd
	dec b			;98fe
	sbc a,b			;98ff
	jr nc,l98bdh		;9900
	cpl			;9902
	dec b			;9903
	adc a,(hl)		;9904
	jr nc,$-67		;9905
	cpl			;9907
	dec b			;9908
	sub c			;9909
	ld b,b			;990a
	ld (bc),a		;990b
	cpl			;990c
	dec b			;990d
	sbc a,c			;990e
	ld b,b			;990f
l9910h:
	inc bc			;9910
	cpl			;9911
	dec b			;9912
	inc e			;9913
	ld b,b			;9914
	ld b,02fh		;9915
	dec b			;9917
	ld a,(de)		;9918
	ld b,b			;9919
l991ah:
	ex af,af'		;991a
	cpl			;991b
	dec b			;991c
	add a,l			;991d
	ret nz			;991e
	add hl,bc		;991f
	xor c			;9920
	dec b			;9921
	adc a,b			;9922
	ret nz			;9923
l9924h:
	add hl,bc		;9924
	add hl,hl		;9925
	dec b			;9926
	adc a,d			;9927
	ld b,b			;9928
	add hl,bc		;9929
	add hl,hl		;992a
	dec b			;992b
	ld d,040h		;992c
	dec bc			;992e
	cpl			;992f
	dec b			;9930
	inc bc			;9931
	ld b,b			;9932
	ld c,02fh		;9933
	dec b			;9935
	add a,l			;9936
	ld b,b			;9937
	rrca			;9938
	xor c			;9939
	dec b			;993a
	ex af,af'		;993b
	ld b,b			;993c
	rrca			;993d
	add hl,hl		;993e
	dec b			;993f
	ld a,(bc)		;9940
	ld b,b			;9941
	djnz l9973h		;9942
	dec b			;9944
	ld (bc),a		;9945
	ld b,b			;9946
	rla			;9947
	add hl,hl		;9948
	dec b			;9949
	inc d			;994a
	ld b,b			;994b
	rla			;994c
	add hl,hl		;994d
	dec b			;994e
	ld d,040h		;994f
	jr nz,l9982h		;9951
	dec b			;9953
	inc bc			;9954
	ld b,b			;9955
	ld hl,0052fh		;9956
	dec b			;9959
	ld b,b			;995a
	inc hl			;995b
	add hl,hl		;995c
	dec b			;995d
	adc a,b			;995e
	ld b,b			;995f
	inc hl			;9960
	add hl,hl		;9961
	dec b			;9962
	adc a,d			;9963
	ld b,b			;9964
	dec h			;9965
	cpl			;9966
	dec b			;9967
	inc bc			;9968
	ld b,b			;9969
	daa			;996a
	cpl			;996b
	dec b			;996c
	ld b,040h		;996d
	daa			;996f
	cpl			;9970
	dec b			;9971
	rla			;9972
l9973h:
	ld b,b			;9973
	jr z,$+49		;9974
	dec b			;9976
l9977h:
	dec de			;9977
	ld b,b			;9978
	add hl,hl		;9979
	cpl			;997a
	dec b			;997b
	jr l99beh		;997c
	dec (hl)		;997e
	add hl,hl		;997f
	dec b			;9980
	sub (hl)		;9981
l9982h:
	ld b,b			;9982
	dec (hl)		;9983
	add hl,hl		;9984
	dec b			;9985
	sbc a,b			;9986
	ld b,b			;9987
	ld b,e			;9988
	add hl,hl		;9989
	dec b			;998a
	ld d,040h		;998b
	ld b,e			;998d
	add hl,hl		;998e
	dec b			;998f
	jr l99e2h		;9990
	inc b			;9992
	dec hl			;9993
	adc a,c			;9994
	inc bc			;9995
	add a,e			;9996
	jr l999bh		;9997
	ld d,050h		;9999
l999bh:
	inc b			;999b
	dec hl			;999c
	adc a,c			;999d
	inc bc			;999e
	inc d			;999f
	jr z,l99a4h		;99a0
	ld d,050h		;99a2
l99a4h:
	djnz l9977h		;99a4
	adc a,(hl)		;99a6
	ex af,af'		;99a7
	ld bc,0031fh		;99a8
	ld bc,00320h		;99ab
	ld c,b			;99ae
	ld (bc),a		;99af
	djnz l9a02h		;99b0
	ld de,00529h		;99b2
	inc d			;99b5
	ld d,b			;99b6
	ld de,00529h		;99b7
	add a,e			;99ba
	ld d,b			;99bb
	inc de			;99bc
	add hl,hl		;99bd
l99beh:
	dec b			;99be
	inc d			;99bf
	ld d,b			;99c0
	inc de			;99c1
	add hl,hl		;99c2
	dec b			;99c3
	add a,e			;99c4
	ld d,b			;99c5
	jr $+97			;99c6
	ld b,001h		;99c8
	ld bc,02450h		;99ca
	and a			;99cd
	dec b			;99ce
	ld b,050h		;99cf
	jr z,l99a4h		;99d1
	adc a,l			;99d3
	ld b,00ah		;99d4
	rra			;99d6
	inc b			;99d7
	ld (bc),a		;99d8
	add a,(hl)		;99d9
	inc bc			;99da
	jr l99ddh		;99db
l99ddh:
	ld d,b			;99dd
	jr z,l9a11h		;99de
	ld b,00ah		;99e0
l99e2h:
	nop			;99e2
	ld d,b			;99e3
	jr c,l9a13h		;99e4
	dec b			;99e6
	add a,e			;99e7
	ld d,b			;99e8
	add hl,sp		;99e9
	dec l			;99ea
	dec b			;99eb
	inc d			;99ec
	ld d,b			;99ed
	ld b,c			;99ee
	or c			;99ef
	ld b,00ah		;99f0
	ld bc,04750h		;99f2
	dec hl			;99f5
	adc a,c			;99f6
	inc bc			;99f7
	add a,e			;99f8
	djnz l99fdh		;99f9
	ld d,050h		;99fb
l99fdh:
	ld c,b			;99fd
	ld e,a			;99fe
	ld b,001h		;99ff
	nop			;9a01
l9a02h:
	ld d,b			;9a02
	ld d,b			;9a03
	ld d,c			;9a04
	adc a,l			;9a05
	ld b,004h		;9a06
	rra			;9a08
	inc b			;9a09
	ld (bc),a		;9a0a
	add a,(hl)		;9a0b
	inc bc			;9a0c
	jr l9a0fh		;9a0d
l9a0fh:
	ld d,b			;9a0f
	ld d,d			;9a10
l9a11h:
	dec hl			;9a11
	adc a,c			;9a12
l9a13h:
	inc bc			;9a13
	inc d			;9a14
	djnz l9a19h		;9a15
	ld d,050h		;9a17
l9a19h:
	add a,b			;9a19
	ld e,a			;9a1a
	dec b			;9a1b
	inc bc			;9a1c
	ld d,b			;9a1d
	adc a,c			;9a1e
	inc a			;9a1f
	ld b,001h		;9a20
	nop			;9a22
	ld d,b			;9a23
	adc a,c			;9a24
	inc a			;9a25
	ld b,012h		;9a26
	ld (bc),a		;9a28
	ld d,b			;9a29
	sbc a,b			;9a2a
	inc a			;9a2b
	ld b,001h		;9a2c
	ld bc,l9850h		;9a2e
	inc a			;9a31
	ld b,013h		;9a32
	inc bc			;9a34
	ld d,b			;9a35
	sbc a,(hl)		;9a36
	inc a			;9a37
	ld b,004h		;9a38
	inc b			;9a3a
	ld d,b			;9a3b
	sbc a,(hl)		;9a3c
	ld a,d			;9a3d
	adc a,b			;9a3e
l9a3fh:
	ld (bc),a		;9a3f
	ex af,af'		;9a40
	ld (bc),a		;9a41
	dec sp			;9a42
	nop			;9a43
	nop			;9a44
	nop			;9a45
	djnz l9a61h		;9a46
	ld (01405h),a		;9a48
	djnz l9a68h		;9a4b
	ld (01405h),a		;9a4d
	djnz l9a6fh		;9a50
	ld (01405h),a		;9a52
	djnz l9a76h		;9a55
	ld d,c			;9a57
	adc a,h			;9a58
	ld b,008h		;9a59
	rra			;9a5b
	inc bc			;9a5c
	ld (bc),a		;9a5d
	sub b			;9a5e
	ld (bc),a		;9a5f
	inc de			;9a60
l9a61h:
	djnz l9a83h		;9a61
	ld (l8405h),a		;9a63
	djnz l9a8ah		;9a66
l9a68h:
	ld (l8405h),a		;9a68
	djnz l9a95h		;9a6b
	ld d,c			;9a6d
	adc a,h			;9a6e
l9a6fh:
	ld b,00ch		;9a6f
	rra			;9a71
	inc bc			;9a72
	ld (bc),a		;9a73
	sub b			;9a74
	ld (bc),a		;9a75
l9a76h:
	inc de			;9a76
	djnz $+42		;9a77
	ld d,c			;9a79
	adc a,h			;9a7a
	ld b,002h		;9a7b
	rra			;9a7d
	inc b			;9a7e
	ld (bc),a		;9a7f
	sub b			;9a80
	ld (bc),a		;9a81
	inc de			;9a82
l9a83h:
	djnz $+52		;9a83
	ld d,c			;9a85
	adc a,h			;9a86
	ld b,010h		;9a87
	rra			;9a89
l9a8ah:
	inc bc			;9a8a
	ld (bc),a		;9a8b
	sub b			;9a8c
	ld (bc),a		;9a8d
	inc de			;9a8e
	djnz $+54		;9a8f
	ld d,c			;9a91
	adc a,h			;9a92
	ld b,005h		;9a93
l9a95h:
	rra			;9a95
	inc bc			;9a96
	ld (bc),a		;9a97
	sub b			;9a98
	ld (bc),a		;9a99
	inc de			;9a9a
l9a9bh:
	djnz $+55		;9a9b
	ld (l8205h),a		;9a9d
	djnz l9ad7h		;9aa0
	ld (01405h),a		;9aa2
	djnz l9adeh		;9aa5
	ld (l8205h),a		;9aa7
	djnz $+58		;9aaa
	ld (01405h),a		;9aac
	djnz l9ae9h		;9aaf
	ld d,c			;9ab1
	adc a,l			;9ab2
	ld b,00ch		;9ab3
	nop			;9ab5
	ld b,002h		;9ab6
	adc a,h			;9ab8
	inc bc			;9ab9
	jr l9a3fh		;9aba
	djnz $+65		;9abc
	inc e			;9abe
	adc a,b			;9abf
	ld (bc),a		;9ac0
	add a,d			;9ac1
	ld (bc),a		;9ac2
	dec e			;9ac3
	djnz l9b09h		;9ac4
	ld d,c			;9ac6
	adc a,l			;9ac7
l9ac8h:
	ld b,004h		;9ac8
	rra			;9aca
	inc b			;9acb
	ld (bc),a		;9acc
	adc a,b			;9acd
	inc bc			;9ace
	jr l9ad4h		;9acf
	djnz $+70		;9ad1
	inc e			;9ad3
l9ad4h:
	adc a,b			;9ad4
	ld (bc),a		;9ad5
	inc d			;9ad6
l9ad7h:
	ld (bc),a		;9ad7
	dec e			;9ad8
	djnz l9b26h		;9ad9
	ld (l8405h),a		;9adb
l9adeh:
	djnz l9b2eh		;9ade
	ld (l8405h),a		;9ae0
	djnz l9b45h		;9ae3
	daa			;9ae5
	dec b			;9ae6
	ex af,af'		;9ae7
	sub b			;9ae8
l9ae9h:
	ld h,d			;9ae9
	daa			;9aea
	dec b			;9aeb
	djnz l9afeh		;9aec
	ld h,h			;9aee
	and a			;9aef
	dec b			;9af0
	inc c			;9af1
	djnz l9b5ah		;9af2
	daa			;9af4
	dec b			;9af5
	inc c			;9af6
	sub b			;9af7
	ld l,b			;9af8
	daa			;9af9
	dec b			;9afa
	inc b			;9afb
	djnz l9b6eh		;9afc
l9afeh:
	ld (hl),d		;9afe
	dec b			;9aff
	jr z,$+18		;9b00
	ld (hl),d		;9b02
	ld d,c			;9b03
	adc a,h			;9b04
	ld b,004h		;9b05
	rra			;9b07
	inc bc			;9b08
l9b09h:
	ld (bc),a		;9b09
	djnz $+4		;9b0a
	inc de			;9b0c
	djnz l9b87h		;9b0d
	ld d,c			;9b0f
	adc a,h			;9b10
	ld b,00ch		;9b11
	rra			;9b13
	inc bc			;9b14
	ld (bc),a		;9b15
	djnz $+4		;9b16
	inc de			;9b18
	djnz l9a9bh		;9b19
	ld d,c			;9b1b
	adc a,h			;9b1c
	ld b,002h		;9b1d
	rra			;9b1f
	inc bc			;9b20
	ld (bc),a		;9b21
	djnz l9b26h		;9b22
	inc de			;9b24
	sub b			;9b25
l9b26h:
	add a,h			;9b26
	daa			;9b27
	dec b			;9b28
	inc b			;9b29
l9b2ah:
	djnz $-118		;9b2a
	ld d,c			;9b2c
	adc a,h			;9b2d
l9b2eh:
	ld b,006h		;9b2e
	rra			;9b30
	inc bc			;9b31
l9b32h:
	ld (bc),a		;9b32
	djnz $+4		;9b33
	inc de			;9b35
	djnz l9ac8h		;9b36
	ld d,c			;9b38
	adc a,h			;9b39
	ld b,010h		;9b3a
	rra			;9b3c
	inc bc			;9b3d
	ld (bc),a		;9b3e
	djnz l9b43h		;9b3f
	inc de			;9b41
l9b42h:
	sub b			;9b42
l9b43h:
	sub h			;9b43
	daa			;9b44
l9b45h:
	dec b			;9b45
	inc b			;9b46
l9b47h:
	djnz $-102		;9b47
	ld d,c			;9b49
	adc a,h			;9b4a
	ld b,008h		;9b4b
	rra			;9b4d
	inc bc			;9b4e
l9b4fh:
	ld (bc),a		;9b4f
	djnz l9b54h		;9b50
	inc de			;9b52
	sub b			;9b53
l9b54h:
	sbc a,b			;9b54
	daa			;9b55
	dec b			;9b56
	inc c			;9b57
	sub b			;9b58
	xor b			;9b59
l9b5ah:
	inc e			;9b5a
	adc a,b			;9b5b
	ld (bc),a		;9b5c
	add a,d			;9b5d
	ld (bc),a		;9b5e
	dec e			;9b5f
	sub b			;9b60
	xor b			;9b61
	inc e			;9b62
	adc a,b			;9b63
	ld (bc),a		;9b64
	inc d			;9b65
	ld (bc),a		;9b66
	dec e			;9b67
	sub b			;9b68
	xor h			;9b69
	inc e			;9b6a
	adc a,b			;9b6b
	ld (bc),a		;9b6c
	add a,d			;9b6d
l9b6eh:
	ld (bc),a		;9b6e
	dec e			;9b6f
	sub b			;9b70
l9b71h:
	xor h			;9b71
	inc e			;9b72
	adc a,b			;9b73
	ld (bc),a		;9b74
	inc d			;9b75
	ld (bc),a		;9b76
	dec e			;9b77
	djnz l9b2ah		;9b78
l9b7ah:
	inc e			;9b7a
l9b7bh:
	adc a,b			;9b7b
	ld (bc),a		;9b7c
	add a,d			;9b7d
	ld (bc),a		;9b7e
	dec e			;9b7f
	djnz l9b32h		;9b80
	inc e			;9b82
l9b83h:
	adc a,b			;9b83
	ld (bc),a		;9b84
	inc d			;9b85
	ld (bc),a		;9b86
l9b87h:
	dec e			;9b87
	djnz l9b42h		;9b88
	ld (01405h),a		;9b8a
	djnz l9b47h		;9b8d
	ld (l8205h),a		;9b8f
	djnz l9b4fh		;9b92
	ld (01405h),a		;9b94
	djnz l9b54h		;9b97
	ld (l8205h),a		;9b99
l9b9ch:
	djnz l9b71h		;9b9c
	inc e			;9b9e
	adc a,b			;9b9f
	ld (bc),a		;9ba0
	inc d			;9ba1
l9ba2h:
	ld (bc),a		;9ba2
	dec e			;9ba3
	djnz l9b7ah		;9ba4
	inc sp			;9ba6
	dec b			;9ba7
	rst 38h			;9ba8
	djnz l9b83h		;9ba9
	ld (01405h),a		;9bab
	djnz $-30		;9bae
l9bb0h:
	and l			;9bb0
	dec b			;9bb1
	adc a,h			;9bb2
	djnz $-29		;9bb3
	and l			;9bb5
	dec b			;9bb6
	sub b			;9bb7
	djnz l9b9ch		;9bb8
	and l			;9bba
	dec b			;9bbb
	add a,h			;9bbc
	djnz l9ba2h		;9bbd
	and l			;9bbf
	dec b			;9bc0
l9bc1h:
	adc a,b			;9bc1
	sub b			;9bc2
	call po,00525h		;9bc3
l9bc6h:
	adc a,h			;9bc6
	djnz l9bb0h		;9bc7
	ld (l8405h),a		;9bc9
	sub b			;9bcc
l9bcdh:
	rst 20h			;9bcd
	dec h			;9bce
	dec b			;9bcf
	ex af,af'		;9bd0
	sub b			;9bd1
	ret pe			;9bd2
	dec h			;9bd3
	dec b			;9bd4
	inc c			;9bd5
	djnz l9bc1h		;9bd6
	ld (l8405h),a		;9bd8
	djnz l9bc6h		;9bdb
	ld (01205h),a		;9bdd
	djnz l9bcdh		;9be0
	ld (01205h),a		;9be2
l9be5h:
	sub b			;9be5
	call pe,00525h		;9be6
	djnz l9b7bh		;9be9
	defb 0edh ;next byte illegal after ed	;9beb
	dec h			;9bec
	dec b			;9bed
l9beeh:
	ld (de),a		;9bee
	djnz l9be5h		;9bef
	and a			;9bf1
	dec b			;9bf2
	ex af,af'		;9bf3
	djnz l9beeh		;9bf4
	and a			;9bf6
	dec b			;9bf7
	inc c			;9bf8
	sub b			;9bf9
	ret m			;9bfa
	and a			;9bfb
	dec b			;9bfc
	ld (de),a		;9bfd
	ld de,02800h		;9bfe
	dec b			;9c01
	inc c			;9c02
	ld de,0510fh		;9c03
	adc a,h			;9c06
	ld b,008h		;9c07
	rra			;9c09
	inc bc			;9c0a
	ld (bc),a		;9c0b
	sub b			;9c0c
	ld (bc),a		;9c0d
	inc de			;9c0e
	ld de,02810h		;9c0f
	dec b			;9c12
	ex af,af'		;9c13
	ld de,0511fh		;9c14
	adc a,h			;9c17
	ld b,012h		;9c18
	rra			;9c1a
	inc bc			;9c1b
	ld (bc),a		;9c1c
	sub b			;9c1d
	ld (bc),a		;9c1e
	inc de			;9c1f
	ld de,02824h		;9c20
	dec b			;9c23
	inc c			;9c24
	ld de,0512fh		;9c25
	adc a,h			;9c28
	ld b,004h		;9c29
	rra			;9c2b
	inc bc			;9c2c
	ld (bc),a		;9c2d
	sub b			;9c2e
	ld (bc),a		;9c2f
	inc de			;9c30
	ld de,05f5ch		;9c31
	dec b			;9c34
	inc bc			;9c35
	jr nz,l9c38h		;9c36
l9c38h:
	ld a,086h		;9c38
	ld (bc),a		;9c3a
	rst 38h			;9c3b
	nop			;9c3c
	nop			;9c3d
	djnz l9c60h		;9c3e
	add hl,de		;9c40
	ld b,012h		;9c41
	ld e,010h		;9c43
	jr z,l9c60h		;9c45
	ld b,092h		;9c47
	ld bc,02a10h		;9c49
	add hl,de		;9c4c
	ld b,010h		;9c4d
	ld e,010h		;9c4f
	inc l			;9c51
	rla			;9c52
	dec b			;9c53
	add a,e			;9c54
	sub b			;9c55
	ld l,039h		;9c56
	ld b,008h		;9c58
	nop			;9c5a
	sub b			;9c5b
	inc (hl)		;9c5c
	sub a			;9c5d
	dec b			;9c5e
	add a,e			;9c5f
l9c60h:
	djnz $+62		;9c60
	add hl,de		;9c62
	ld b,010h		;9c63
	ld e,010h		;9c65
	ld b,b			;9c67
	add hl,sp		;9c68
	ld b,008h		;9c69
	ld bc,04c10h		;9c6b
	add hl,de		;9c6e
	ld b,010h		;9c6f
	ld e,010h		;9c71
	ld d,b			;9c73
	add hl,sp		;9c74
	ld b,088h		;9c75
	nop			;9c77
	djnz l9ccah		;9c78
	rla			;9c7a
	dec b			;9c7b
	add a,e			;9c7c
	djnz l9cd3h		;9c7d
	add hl,de		;9c7f
	ld b,012h		;9c80
	ld e,010h		;9c82
	ld (hl),b		;9c84
	scf			;9c85
	adc a,c			;9c86
	inc bc			;9c87
	dec bc			;9c88
	jr nz,$+4		;9c89
	scf			;9c8b
	jr nz,l9c95h		;9c8c
	add hl,de		;9c8e
	ld b,080h		;9c8f
	ex af,af'		;9c91
	jr nz,l9c9bh		;9c92
	add hl,de		;9c94
l9c95h:
	ld b,080h		;9c95
	ld a,(bc)		;9c97
	jr nz,l9ca1h		;9c98
	add hl,de		;9c9a
l9c9bh:
	ld b,080h		;9c9b
	djnz l9cbfh		;9c9d
	inc d			;9c9f
	add hl,sp		;9ca0
l9ca1h:
	ld b,08ch		;9ca1
	inc bc			;9ca3
	jr nz,$+25		;9ca4
	add hl,de		;9ca6
	ld b,080h		;9ca7
	ex af,af'		;9ca9
	jr nz,l9cc3h		;9caa
	add hl,de		;9cac
	ld b,000h		;9cad
	jr l9cd1h		;9caf
	inc h			;9cb1
	add hl,sp		;9cb2
	ld b,008h		;9cb3
	ld (bc),a		;9cb5
	jr nz,l9cdfh		;9cb6
	add hl,de		;9cb8
	ld b,000h		;9cb9
	inc d			;9cbb
	jr nz,l9ce5h		;9cbc
	add hl,de		;9cbe
l9cbfh:
	ld b,080h		;9cbf
	ld d,0a0h		;9cc1
l9cc3h:
	scf			;9cc3
	add hl,de		;9cc4
	ld b,000h		;9cc5
	inc bc			;9cc7
	and b			;9cc8
	scf			;9cc9
l9ccah:
	add hl,de		;9cca
	ld b,080h		;9ccb
	inc bc			;9ccd
	jr nz,$+57		;9cce
	add hl,de		;9cd0
l9cd1h:
	ld b,080h		;9cd1
l9cd3h:
	add hl,de		;9cd3
	jr nz,$+57		;9cd4
	add hl,de		;9cd6
	ld b,000h		;9cd7
	add hl,de		;9cd9
	jr nz,l9d1fh		;9cda
	add hl,de		;9cdc
	ld b,080h		;9cdd
l9cdfh:
	inc b			;9cdf
	jr nz,l9d25h		;9ce0
	add hl,de		;9ce2
	ld b,000h		;9ce3
l9ce5h:
	ld (de),a		;9ce5
	jr nc,$+18		;9ce6
	jr c,$+7		;9ce8
	inc c			;9cea
	jr nc,$+18		;9ceb
	add hl,de		;9ced
	ld b,086h		;9cee
	ld bc,01430h		;9cf0
	add hl,de		;9cf3
	ld b,086h		;9cf4
	ld bc,01530h		;9cf6
	jr c,l9d00h		;9cf9
	inc b			;9cfb
	jr nc,l9d1ch		;9cfc
	jr c,$+7		;9cfe
l9d00h:
	inc c			;9d00
	jr nc,$+34		;9d01
	add hl,de		;9d03
	ld b,086h		;9d04
	ld bc,02630h		;9d06
	add hl,de		;9d09
	ld b,086h		;9d0a
	ld bc,02830h		;9d0c
	dec l			;9d0f
	dec b			;9d10
	ld (de),a		;9d11
	jr nc,l9d3dh		;9d12
	rla			;9d14
	dec b			;9d15
	add a,e			;9d16
	jr nc,$+46		;9d17
	rla			;9d19
	dec b			;9d1a
	add a,e			;9d1b
l9d1ch:
	jr nc,l9d4dh		;9d1c
	rla			;9d1e
l9d1fh:
	dec b			;9d1f
	add a,e			;9d20
	or b			;9d21
	ld sp,00517h		;9d22
l9d25h:
	add a,e			;9d25
	jr nc,$+59		;9d26
	add hl,sp		;9d28
	ld b,008h		;9d29
	nop			;9d2b
	jr nc,l9d72h		;9d2c
	add hl,de		;9d2e
	ld b,010h		;9d2f
	ld e,030h		;9d31
	ld c,c			;9d33
	add hl,sp		;9d34
	ld b,008h		;9d35
	nop			;9d37
	jr nc,$+86		;9d38
	add hl,de		;9d3a
	ld b,090h		;9d3b
l9d3dh:
	ld bc,05930h		;9d3d
	add hl,sp		;9d40
	ld b,008h		;9d41
	nop			;9d43
	jr nc,l9da0h		;9d44
	add hl,de		;9d46
	ld b,012h		;9d47
	ld e,030h		;9d49
	ld e,h			;9d4b
	add hl,de		;9d4c
l9d4dh:
	ld b,092h		;9d4d
	ld bc,06830h		;9d4f
	add hl,de		;9d52
	ld b,012h		;9d53
	ld e,030h		;9d55
	ld l,c			;9d57
	jr c,l9d5fh		;9d58
	ld b,030h		;9d5a
	ld l,c			;9d5c
	jr c,$+7		;9d5d
l9d5fh:
	dec c			;9d5f
	jr nc,l9dd2h		;9d60
	add hl,de		;9d62
	ld b,012h		;9d63
	ld e,030h		;9d65
	ld (hl),d		;9d67
	jr c,l9d6fh		;9d68
	ld b,030h		;9d6a
	ld (hl),d		;9d6c
	jr c,$+7		;9d6d
l9d6fh:
	dec c			;9d6f
	jr nc,l9deah		;9d70
l9d72h:
	add hl,de		;9d72
l9d73h:
	ld b,012h		;9d73
	ld e,040h		;9d75
	ld bc,00639h		;9d77
	ex af,af'		;9d7a
	ld (bc),a		;9d7b
	ld b,b			;9d7c
	inc bc			;9d7d
	add hl,de		;9d7e
	ld b,080h		;9d7f
	ex af,af'		;9d81
	ld b,b			;9d82
	inc bc			;9d83
	add hl,de		;9d84
	ld b,000h		;9d85
	ld (de),a		;9d87
	ld b,b			;9d88
	inc bc			;9d89
	add hl,de		;9d8a
	ld b,000h		;9d8b
	jr $+66			;9d8d
	ex af,af'		;9d8f
l9d90h:
	add hl,sp		;9d90
	ld b,010h		;9d91
	inc bc			;9d93
	ld b,b			;9d94
	ld l,05fh		;9d95
	dec b			;9d97
	inc bc			;9d98
	ld d,b			;9d99
	nop			;9d9a
	inc d			;9d9b
	dec b			;9d9c
	rst 38h			;9d9d
l9d9eh:
	nop			;9d9e
	nop			;9d9f
l9da0h:
	nop			;9da0
l9da1h:
	nop			;9da1
	djnz $+36		;9da2
	ld d,c			;9da4
	adc a,l			;9da5
	ld b,006h		;9da6
	rra			;9da8
	inc b			;9da9
	ld (bc),a		;9daa
	add a,(hl)		;9dab
l9dach:
	inc bc			;9dac
	jr $+3			;9dad
	djnz $+50		;9daf
	ld d,c			;9db1
	adc a,l			;9db2
	ld b,00ch		;9db3
	rra			;9db5
	inc b			;9db6
	ld (bc),a		;9db7
	add a,(hl)		;9db8
	inc bc			;9db9
	jr $+3			;9dba
	djnz l9e00h		;9dbc
	daa			;9dbe
	dec b			;9dbf
	inc c			;9dc0
	djnz $+74		;9dc1
	ld d,c			;9dc3
	adc a,l			;9dc4
	ld b,00ch		;9dc5
	rra			;9dc7
	inc b			;9dc8
	ld (bc),a		;9dc9
	add a,(hl)		;9dca
	inc bc			;9dcb
	jr $+3			;9dcc
	djnz $+104		;9dce
	daa			;9dd0
	dec b			;9dd1
l9dd2h:
	ex af,af'		;9dd2
	djnz l9e49h		;9dd3
	ld d,c			;9dd5
l9dd6h:
	adc a,l			;9dd6
	ld b,004h		;9dd7
	nop			;9dd9
	inc b			;9dda
	ld (bc),a		;9ddb
	add a,(hl)		;9ddc
	inc bc			;9ddd
	jr l9da1h		;9dde
	djnz $+118		;9de0
	ld d,c			;9de2
	adc a,l			;9de3
	ld b,00ch		;9de4
	nop			;9de6
	inc b			;9de7
	ld (bc),a		;9de8
	add a,(hl)		;9de9
l9deah:
	inc bc			;9dea
	jr $-61			;9deb
	djnz l9d73h		;9ded
l9defh:
	ld b,c			;9def
	ld b,004h		;9df0
	ld bc,l9410h		;9df2
	daa			;9df5
	dec b			;9df6
	ex af,af'		;9df7
	djnz l9d90h		;9df8
	ld c,c			;9dfa
	ld b,084h		;9dfb
	rra			;9dfd
	djnz $-104		;9dfe
l9e00h:
	ld c,c			;9e00
	ld b,010h		;9e01
	rra			;9e03
	djnz l9d9eh		;9e04
	ld b,c			;9e06
	ld b,004h		;9e07
	ld (bc),a		;9e09
	djnz l9dach		;9e0a
	daa			;9e0c
	dec b			;9e0d
	inc c			;9e0e
	djnz $-82		;9e0f
l9e11h:
	ld b,c			;9e11
	ld b,004h		;9e12
	inc bc			;9e14
	djnz $-72		;9e15
	daa			;9e17
	dec b			;9e18
	ex af,af'		;9e19
	djnz l9dd6h		;9e1a
	daa			;9e1c
	dec b			;9e1d
	inc c			;9e1e
	djnz $-62		;9e1f
	ld b,c			;9e21
	ld b,004h		;9e22
	inc b			;9e24
	djnz l9defh		;9e25
	daa			;9e27
	dec b			;9e28
	ex af,af'		;9e29
	djnz $-46		;9e2a
	daa			;9e2c
	dec b			;9e2d
	djnz l9e40h		;9e2e
	call nc,00641h		;9e30
	inc b			;9e33
	dec b			;9e34
	djnz l9e11h		;9e35
	ld d,c			;9e37
	adc a,h			;9e38
	ld b,008h		;9e39
l9e3bh:
	rra			;9e3b
	inc b			;9e3c
	ld (bc),a		;9e3d
	djnz $+4		;9e3e
l9e40h:
	inc de			;9e40
	djnz $-22		;9e41
	ld b,c			;9e43
	ld b,004h		;9e44
l9e46h:
	ld (bc),a		;9e46
	djnz l9e3bh		;9e47
l9e49h:
	daa			;9e49
	dec b			;9e4a
	ex af,af'		;9e4b
	djnz l9e46h		;9e4c
	ld d,c			;9e4e
	adc a,h			;9e4f
	ld b,010h		;9e50
	rra			;9e52
	inc b			;9e53
	ld (bc),a		;9e54
	djnz $+4		;9e55
	inc de			;9e57
	djnz $-2		;9e58
	ld b,c			;9e5a
	ld b,004h		;9e5b
	inc bc			;9e5d
	ld de,05104h		;9e5e
	adc a,h			;9e61
	ld b,00ah		;9e62
	rra			;9e64
	inc b			;9e65
	ld (bc),a		;9e66
	djnz $+4		;9e67
	inc de			;9e69
	ld de,04108h		;9e6a
	ld b,004h		;9e6d
	ld bc,02011h		;9e6f
	ld b,c			;9e72
	ld b,004h		;9e73
	rlca			;9e75
	sub c			;9e76
	jr z,$+67		;9e77
	ld b,004h		;9e79
	rlca			;9e7b
	ld de,04130h		;9e7c
	ld b,004h		;9e7f
	rlca			;9e81
	ld de,04940h		;9e82
	ld b,00ch		;9e85
	rra			;9e87
	ld de,04944h		;9e88
	ld b,08ch		;9e8b
	rra			;9e8d
	ld de,04948h		;9e8e
	ld b,00ch		;9e91
	rra			;9e93
	ld de,04958h		;9e94
	ld b,08ch		;9e97
	rra			;9e99
	ld de,0495eh		;9e9a
	ld b,00ch		;9e9d
	rra			;9e9f
	ld de,0496bh		;9ea0
	ld b,00ch		;9ea3
	rra			;9ea5
	ld de,02172h		;9ea6
	dec b			;9ea9
	nop			;9eaa
	ld de,0497bh		;9eab
	ld b,08ch		;9eae
	rra			;9eb0
	ld de,02188h		;9eb1
	dec b			;9eb4
	ld bc,l8b11h		;9eb5
	ld c,c			;9eb8
	ld b,00ah		;9eb9
	rra			;9ebb
	ld de,0499bh		;9ebc
	ld b,090h		;9ebf
	rra			;9ec1
	ld de,021a0h		;9ec2
	dec b			;9ec5
	ld (bc),a		;9ec6
	ld de,049abh		;9ec7
	ld b,010h		;9eca
	rra			;9ecc
	ld de,021b4h		;9ecd
	dec b			;9ed0
	ld bc,0c811h		;9ed1
	ld hl,00005h		;9ed4
	ld de,021dbh		;9ed7
	dec b			;9eda
	ld bc,0e811h		;9edb
	ld hl,00005h		;9ede
	ld de,021fah		;9ee1
	dec b			;9ee4
	ld (bc),a		;9ee5
	ld de,0a1fah		;9ee6
	dec b			;9ee9
	nop			;9eea
	ld (de),a		;9eeb
	ld a,(bc)		;9eec
	ld hl,00005h		;9eed
	ld (de),a		;9ef0
	ld a,(bc)		;9ef1
	and c			;9ef2
	dec b			;9ef3
	ld (bc),a		;9ef4
	ld (de),a		;9ef5
	ld hl,00521h		;9ef6
	nop			;9ef9
	ld (de),a		;9efa
	ld hl,00521h		;9efb
	ld bc,03112h		;9efe
	ld hl,00205h		;9f01
	ld (de),a		;9f04
	ld sp,005a1h		;9f05
	ld bc,04212h		;9f08
	ld hl,00105h		;9f0b
	ld (de),a		;9f0e
	ld b,h			;9f0f
	ld c,c			;9f10
	ld b,08ah		;9f11
	rra			;9f13
	ld (de),a		;9f14
	ld c,d			;9f15
	ld hl,00205h		;9f16
	ld (de),a		;9f19
	ld d,d			;9f1a
	ld hl,00105h		;9f1b
	ld (de),a		;9f1e
	ld h,d			;9f1f
	ld hl,00005h		;9f20
	ld (de),a		;9f23
	ld h,h			;9f24
	ld c,c			;9f25
	ld b,00ch		;9f26
	rra			;9f28
	ld (de),a		;9f29
	ld l,b			;9f2a
	ld hl,00205h		;9f2b
	ld (de),a		;9f2e
	ld a,d			;9f2f
	ld hl,00105h		;9f30
	ld (de),a		;9f33
	add a,b			;9f34
	ld c,c			;9f35
	ld b,08ch		;9f36
	rra			;9f38
	ld (de),a		;9f39
	adc a,b			;9f3a
	ld hl,00005h		;9f3b
	ld (de),a		;9f3e
	adc a,d			;9f3f
	ld hl,00205h		;9f40
	ld (de),a		;9f43
	sbc a,d			;9f44
	ld hl,00105h		;9f45
	ld (de),a		;9f48
	and b			;9f49
	ld c,c			;9f4a
	ld b,00ch		;9f4b
	rra			;9f4d
	ld (de),a		;9f4e
	and h			;9f4f
	ld hl,00005h		;9f50
	ld (de),a		;9f53
	cp b			;9f54
	ld hl,00105h		;9f55
	ld (de),a		;9f58
	cp h			;9f59
	ld c,c			;9f5a
	ld b,08ch		;9f5b
	rra			;9f5d
	ld (de),a		;9f5e
	ret z			;9f5f
	ld hl,00205h		;9f60
	ld (de),a		;9f63
	call nc,00649h		;9f64
	ld b,01fh		;9f67
	ld (de),a		;9f69
	call nc,00649h		;9f6a
	inc c			;9f6d
	rra			;9f6e
	ld (de),a		;9f6f
	call nc,00649h		;9f70
	ld (de),a		;9f73
	rra			;9f74
	ld (de),a		;9f75
	ret c			;9f76
	ld c,c			;9f77
	ld b,086h		;9f78
	rra			;9f7a
	ld (de),a		;9f7b
	ret c			;9f7c
	ld c,c			;9f7d
	ld b,08ch		;9f7e
	rra			;9f80
	ld (de),a		;9f81
	ret c			;9f82
	ld c,c			;9f83
	ld b,092h		;9f84
	rra			;9f86
	inc de			;9f87
	rrca			;9f88
	ld e,a			;9f89
	dec b			;9f8a
	inc bc			;9f8b
	inc de			;9f8c
	djnz $+121		;9f8d
	adc a,e			;9f8f
	ld (bc),a		;9f90
	dec b			;9f91
	add a,l			;9f92
	ld (bc),a		;9f93
	halt			;9f94
	ld (bc),a		;9f95
	halt			;9f96
	nop			;9f97
	nop			;9f98
	nop			;9f99
	djnz l9fc2h		;9f9a
	ld c,l			;9f9c
	dec b			;9f9d
	add a,h			;9f9e
	djnz l9fc9h		;9f9f
	cpl			;9fa1
	dec b			;9fa2
	sub b			;9fa3
	djnz $+44		;9fa4
	cpl			;9fa6
	dec b			;9fa7
	sub h			;9fa8
	djnz l9fd7h		;9fa9
	cpl			;9fab
	dec b			;9fac
	sub h			;9fad
	djnz l9fe0h		;9fae
	cpl			;9fb0
	dec b			;9fb1
	sub (hl)		;9fb2
	djnz l9fe5h		;9fb3
	cpl			;9fb5
	dec b			;9fb6
	sbc a,e			;9fb7
	djnz l9ff0h		;9fb8
	cpl			;9fba
	dec b			;9fbb
	sub b			;9fbc
	jr nz,l9fc2h		;9fbd
	ld c,b			;9fbf
	adc a,c			;9fc0
	inc bc			;9fc1
l9fc2h:
	ld (de),a		;9fc2
	ld (bc),a		;9fc3
	ld (bc),a		;9fc4
	ld c,b			;9fc5
	jr nz,l9fd2h		;9fc6
	ld c,b			;9fc8
l9fc9h:
	adc a,c			;9fc9
	inc bc			;9fca
	dec l			;9fcb
	ld bc,04802h		;9fcc
	jr nz,l9ffbh		;9fcf
	ld c,l			;9fd1
l9fd2h:
	dec b			;9fd2
	inc hl			;9fd3
	jr nc,l9fdbh		;9fd4
	ld c,l			;9fd6
l9fd7h:
	dec b			;9fd7
	rlca			;9fd8
	jr nc,l9fe5h		;9fd9
l9fdbh:
	ld c,d			;9fdb
	dec b			;9fdc
	ld c,030h		;9fdd
	ld a,(bc)		;9fdf
l9fe0h:
	ld c,d			;9fe0
	dec b			;9fe1
	ld (de),a		;9fe2
	jr nc,l9ff1h		;9fe3
l9fe5h:
	ld c,d			;9fe5
	dec b			;9fe6
	ld (de),a		;9fe7
	or b			;9fe8
	inc c			;9fe9
	ld c,d			;9fea
	dec b			;9feb
	ld b,030h		;9fec
	ld c,04ah		;9fee
l9ff0h:
	dec b			;9ff0
l9ff1h:
	ld (de),a		;9ff1
	jr nc,$+16		;9ff2
	ld c,d			;9ff4
	dec b			;9ff5
	inc bc			;9ff6
	jr nc,$+18		;9ff7
	ld c,d			;9ff9
	dec b			;9ffa
l9ffbh:
	ld (de),a		;9ffb
	jr nc,$+18		;9ffc
	ld c,d			;9ffe
	dec b			;9fff
