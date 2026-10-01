; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank07_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank07.bin

	org 08000h

	jp l8003h		;8000
l8003h:
	ld a,(0ca41h)		;8003
	or a			;8006
	jr nz,l801dh		;8007
	ld a,(0ce76h)		;8009
	or a			;800c
	ret nz			;800d
	ld a,(0ce75h)		;800e
	or a			;8011
	ret nz			;8012
	call sub_8026h		;8013
	call sub_82deh		;8016
	call 0826dh		;8019
	ret			;801c
l801dh:
	ld bc,00500h		;801d
l8020h:
	dec bc			;8020
	ld a,b			;8021
	or c			;8022
	jr nz,l8020h		;8023
	ret			;8025
sub_8026h:
	ld iy,0ca40h		;8026
	call sub_8039h		;802a
	ret			;802d
	ld iy,0cac0h		;802e
	call sub_8039h		;8032
	ld iy,0cae0h		;8035
sub_8039h:
	ld a,(iy+000h)		;8039
	and a			;803c
	ret z			;803d
	exx			;803e
	ld l,(iy+008h)		;803f
	dec l			;8042
	ld h,(iy+013h)		;8043
	ld e,(iy+00ah)		;8046
	dec e			;8049
	ld a,(iy+014h)		;804a
	and 07fh		;804d
	ld d,a			;804f
	exx			;8050
	ld ix,0ce80h		;8051
	ld b,014h		;8055
l8057h:
	push bc			;8057
	ld a,(ix+000h)		;8058
	cp 05fh			;805b
	jr z,l809ch		;805d
	dec a			;805f
	cp 07fh			;8060
	jr nc,l809ch		;8062
	ld a,(ix+015h)		;8064
	and 0b0h		;8067
	cp 0b0h			;8069
	jr nz,l809ch		;806b
	exx			;806d
	ld c,(ix+00ah)		;806e
	ld b,(ix+014h)		;8071
	res 7,b			;8074
	ld a,b			;8076
	add a,d			;8077
	ld b,a			;8078
	ld a,e			;8079
	sub c			;807a
	add a,d			;807b
	cp b			;807c
	jr nc,l809bh		;807d
	ex de,hl		;807f
	ld c,(ix+008h)		;8080
	ld b,(ix+013h)		;8083
	ld a,b			;8086
	add a,d			;8087
	ld b,a			;8088
	ld a,e			;8089
	sub c			;808a
	add a,d			;808b
	cp b			;808c
	ex de,hl		;808d
	jr nc,l809bh		;808e
	push hl			;8090
	push de			;8091
	push ix			;8092
	call sub_80e9h		;8094
	pop ix			;8097
	pop de			;8099
	pop hl			;809a
l809bh:
	exx			;809b
l809ch:
	pop bc			;809c
	ld de,00040h		;809d
	add ix,de		;80a0
	djnz l8057h		;80a2
	ret			;80a4
sub_80a5h:
	ld de,0fff3h		;80a5
	add hl,de		;80a8
	ld c,(hl)		;80a9
	inc l			;80aa
	inc l			;80ab
	ld e,(hl)		;80ac
	ld a,009h		;80ad
	add a,l			;80af
	ld l,a			;80b0
	jr nc,l80b4h		;80b1
	inc h			;80b3
l80b4h:
	ld b,(hl)		;80b4
	inc l			;80b5
	ld a,(hl)		;80b6
	and 07fh		;80b7
	ld d,a			;80b9
	push de			;80ba
	exx			;80bb
	pop bc			;80bc
	exx			;80bd
	ld e,(iy+008h)		;80be
	ld d,(iy+013h)		;80c1
	exx			;80c4
	ld e,(iy+00ah)		;80c5
	ld a,(iy+014h)		;80c8
	and 07fh		;80cb
	ld d,a			;80cd
	exx			;80ce
	ret			;80cf
sub_80d0h:
	ld a,b			;80d0
	add a,d			;80d1
	ld b,a			;80d2
	ld a,e			;80d3
	sub c			;80d4
	add a,d			;80d5
	cp b			;80d6
	ret nc			;80d7
	exx			;80d8
	ld a,b			;80d9
	add a,d			;80da
	ld b,a			;80db
	ld a,e			;80dc
	sub c			;80dd
	add a,d			;80de
	cp b			;80df
	exx			;80e0
	ret			;80e1
sub_80e2h:
	ld a,l			;80e2
	sub 014h		;80e3
	ld l,a			;80e5
	push hl			;80e6
	pop ix			;80e7
sub_80e9h:
	call sub_815eh		;80e9
l80ech:
	push bc			;80ec
	call sub_816bh		;80ed
l80f0h:
	push bc			;80f0
	call sub_8198h		;80f1
	jr c,l80fbh		;80f4
	call sub_80d0h		;80f6
	jr c,l810dh		;80f9
l80fbh:
	pop bc			;80fb
	djnz l80f0h		;80fc
	pop bc			;80fe
	ld hl,(0cb14h)		;80ff
	ld de,00006h		;8102
	add hl,de		;8105
	ld (0cb14h),hl		;8106
	djnz l80ech		;8109
	or a			;810b
	ret			;810c
l810dh:
	pop bc			;810d
	pop bc			;810e
	push ix			;810f
	push iy			;8111
	call sub_813fh		;8113
	call sub_815ah		;8116
	push ix			;8119
	push iy			;811b
	pop ix			;811d
	pop iy			;811f
	call sub_813fh		;8121
	call sub_815ah		;8124
	ld a,(ix+000h)		;8127
	cp 004h			;812a
	jr nz,l8139h		;812c
	ld e,0e8h		;812e
	ld b,001h		;8130
	call 078e6h		;8132
	ld (ix+000h),000h	;8135
l8139h:
	pop iy			;8139
	pop ix			;813b
	scf			;813d
	ret			;813e
sub_813fh:
	ld a,(ix+000h)		;813f
	ld c,001h		;8142
	cp 004h			;8144
	jr z,l8154h		;8146
	sub 002h		;8148
	cp 008h			;814a
	jr nc,l8150h		;814c
	ld c,002h		;814e
l8150h:
	ld (iy+004h),c		;8150
	ret			;8153
l8154h:
	ld a,(ix+006h)		;8154
	ld c,a			;8157
	jr l8150h		;8158
sub_815ah:
	call 0600ch		;815a
	ret			;815d
sub_815eh:
	ld a,(iy+000h)		;815e
	ld b,(iy+005h)		;8161
	call sub_8178h		;8164
	ld (0cb14h),hl		;8167
	ret			;816a
sub_816bh:
	ld a,(ix+000h)		;816b
	ld b,(ix+005h)		;816e
	call sub_8178h		;8171
	ld (0cb16h),hl		;8174
	ret			;8177
sub_8178h:
	dec a			;8178
	ld h,000h		;8179
	ld l,a			;817b
	ld de,l8496h		;817c
	add hl,de		;817f
	ld c,(hl)		;8180
	ld de,l8496h		;8181
	ld l,a			;8184
	ld h,000h		;8185
	add hl,hl		;8187
	add hl,de		;8188
	ld e,(hl)		;8189
	inc hl			;818a
	ld d,(hl)		;818b
	ld l,b			;818c
	ld h,000h		;818d
	add hl,hl		;818f
	add hl,de		;8190
	ld a,(hl)		;8191
	inc hl			;8192
	ld h,(hl)		;8193
	ld l,a			;8194
	ld b,(hl)		;8195
	inc hl			;8196
	ret			;8197
sub_8198h:
	call sub_81b0h		;8198
	ret c			;819b
	push bc			;819c
	push de			;819d
	call sub_81c9h		;819e
	jp c,0469dh		;81a1
	push bc			;81a4
	push de			;81a5
	exx			;81a6
	pop de			;81a7
	exx			;81a8
	pop de			;81a9
	exx			;81aa
	pop bc			;81ab
	exx			;81ac
	pop bc			;81ad
	or a			;81ae
	ret			;81af
sub_81b0h:
	ld e,(iy+009h)		;81b0
	ld d,(iy+00ah)		;81b3
	ld l,(iy+007h)		;81b6
	ld h,(iy+008h)		;81b9
	ld bc,(0cb14h)		;81bc
	push bc			;81c0
	call sub_81e0h		;81c1
	pop hl			;81c4
	ld (0cb14h),hl		;81c5
	ret			;81c8
sub_81c9h:
	ld e,(ix+009h)		;81c9
	ld d,(ix+00ah)		;81cc
	ld l,(ix+007h)		;81cf
	ld h,(ix+008h)		;81d2
	ld bc,(0cb16h)		;81d5
	call sub_81e0h		;81d9
	ld (0cb16h),hl		;81dc
	ret			;81df
sub_81e0h:
	add hl,hl		;81e0
	add hl,hl		;81e1
	add hl,hl		;81e2
	ld a,h			;81e3
	ex de,hl		;81e4
	add hl,hl		;81e5
	add hl,hl		;81e6
	add hl,hl		;81e7
	ex af,af'		;81e8
	ld a,h			;81e9
	ex af,af'		;81ea
	ld l,c			;81eb
	ld h,b			;81ec
	inc hl			;81ed
	add a,(hl)		;81ee
	ld c,a			;81ef
	inc hl			;81f0
	ex af,af'		;81f1
	add a,(hl)		;81f2
	ld b,a			;81f3
	ex af,af'		;81f4
	inc hl			;81f5
	inc hl			;81f6
	inc hl			;81f7
	ld a,(hl)		;81f8
	or a			;81f9
	jp z,l8216h		;81fa
	inc hl			;81fd
	push hl			;81fe
	ld de,l8219h		;81ff
	ld l,a			;8202
	ld h,000h		;8203
	add hl,hl		;8205
	add hl,hl		;8206
	add hl,de		;8207
	ld a,(hl)		;8208
	add a,c			;8209
	ld c,a			;820a
	inc hl			;820b
	ld a,b			;820c
	ld b,(hl)		;820d
	inc hl			;820e
	add a,(hl)		;820f
	ld e,a			;8210
	inc hl			;8211
	ld d,(hl)		;8212
	pop hl			;8213
	or a			;8214
	ret			;8215
l8216h:
	inc hl			;8216
	scf			;8217
	ret			;8218
l8219h:
	ex af,af'		;8219
	ld b,003h		;821a
	ld a,(bc)		;821c
	add hl,bc		;821d
	inc b			;821e
	ld b,006h		;821f
	rlca			;8221
	ld (bc),a		;8222
	nop			;8223
	djnz l8226h		;8224
l8226h:
	djnz l8228h		;8226
l8228h:
	djnz l8230h		;8228
	inc b			;822a
	ld b,004h		;822b
	nop			;822d
	djnz l8235h		;822e
l8230h:
	ld b,000h		;8230
	nop			;8232
	djnz $+18		;8233
l8235h:
	ld (bc),a		;8235
	ld (bc),a		;8236
	ld c,00eh		;8237
	inc b			;8239
	inc b			;823a
	inc c			;823b
	inc c			;823c
	nop			;823d
	nop			;823e
	nop			;823f
	nop			;8240
	ld (bc),a		;8241
	ld c,000h		;8242
	djnz l8246h		;8244
l8246h:
	djnz l824fh		;8246
	ld (bc),a		;8248
	rlca			;8249
	ld (bc),a		;824a
	nop			;824b
	djnz l8254h		;824c
	inc b			;824e
l824fh:
	nop			;824f
	djnz l8256h		;8250
	ex af,af'		;8252
	nop			;8253
l8254h:
	djnz l8256h		;8254
l8256h:
	djnz $+9		;8256
	ld (bc),a		;8258
	nop			;8259
	djnz l8262h		;825a
	inc b			;825c
	nop			;825d
	djnz l8264h		;825e
	ex af,af'		;8260
	inc b			;8261
l8262h:
	ex af,af'		;8262
	nop			;8263
l8264h:
	djnz l8268h		;8264
	inc c			;8266
	nop			;8267
l8268h:
	djnz l826bh		;8268
	rrca			;826a
l826bh:
	nop			;826b
	djnz l826bh		;826c
	ld hl,0ca40h		;826e
	call sub_8280h		;8271
	ret			;8274
	ld iy,0cac0h		;8275
	call sub_8280h		;8279
	ld iy,0cae0h		;827c
sub_8280h:
	ld ix,0d460h		;8280
	ld b,012h		;8284
	exx			;8286
	ld l,(iy+008h)		;8287
	dec l			;828a
	ld h,(iy+013h)		;828b
	ld e,(iy+00ah)		;828e
	dec e			;8291
	ld a,(iy+014h)		;8292
	and 07fh		;8295
	ld d,a			;8297
	exx			;8298
l8299h:
	push bc			;8299
	ld a,(ix+000h)		;829a
	or a			;829d
	jr z,l82d5h		;829e
	bit 4,(ix+015h)		;82a0
	jr z,l82d5h		;82a4
	exx			;82a6
	ld c,(ix+00ah)		;82a7
	ld b,(ix+014h)		;82aa
	res 7,b			;82ad
	ld a,b			;82af
	add a,d			;82b0
	ld b,a			;82b1
	ld a,e			;82b2
	sub c			;82b3
	add a,d			;82b4
	cp b			;82b5
	jr nc,l82d4h		;82b6
	ex de,hl		;82b8
	ld c,(ix+008h)		;82b9
	ld b,(ix+013h)		;82bc
	ld a,b			;82bf
	add a,d			;82c0
	ld b,a			;82c1
	ld a,e			;82c2
	sub c			;82c3
	add a,d			;82c4
	cp b			;82c5
	ex de,hl		;82c6
	jr nc,l82d4h		;82c7
	push hl			;82c9
	push de			;82ca
	push ix			;82cb
	call sub_80e9h		;82cd
	pop ix			;82d0
	pop de			;82d2
	pop hl			;82d3
l82d4h:
	exx			;82d4
l82d5h:
	pop bc			;82d5
	ld de,00020h		;82d6
	add ix,de		;82d9
	djnz l8299h		;82db
	ret			;82dd
sub_82deh:
	call sub_82e5h		;82de
	call sub_8320h		;82e1
	ret			;82e4
sub_82e5h:
	ld hl,0d700h		;82e5
	call sub_83bdh		;82e8
	ld hl,0cc40h		;82eb
	ld a,008h		;82ee
	ld bc,00020h		;82f0
	ld d,0d7h		;82f3
l82f5h:
	ex af,af'		;82f5
	ld a,(hl)		;82f6
	or a			;82f7
	jr z,l831ah		;82f8
	set 3,l			;82fa
	ld a,(hl)		;82fc
	inc a			;82fd
	jp m,l8315h		;82fe
	add a,a			;8301
	add a,a			;8302
	add a,a			;8303
	and 0f0h		;8304
	ld e,a			;8306
	set 1,l			;8307
	ld a,(hl)		;8309
	inc a			;830a
	jp m,l8313h		;830b
	rrca			;830e
	and 00fh		;830f
	or e			;8311
	ld e,a			;8312
l8313h:
	res 1,l			;8313
l8315h:
	res 3,l			;8315
	ld a,001h		;8317
	ld (de),a		;8319
l831ah:
	add hl,bc		;831a
	ex af,af'		;831b
	dec a			;831c
	jr nz,l82f5h		;831d
	ret			;831f
sub_8320h:
	ld hl,0ce80h		;8320
	ld b,014h		;8323
	ld d,0d7h		;8325
l8327h:
	push bc			;8327
	ld a,(hl)		;8328
	cp 05fh			;8329
	jr z,l837eh		;832b
	dec a			;832d
	jp m,l837eh		;832e
	ld bc,00015h		;8331
	add hl,bc		;8334
	ld a,(hl)		;8335
	and 0b0h		;8336
	xor 0b0h		;8338
	jr nz,l837eh		;833a
	sbc hl,bc		;833c
	set 3,l			;833e
	ld a,(hl)		;8340
	add a,a			;8341
	add a,a			;8342
	add a,a			;8343
	and 0f0h		;8344
	ld e,a			;8346
	set 1,l			;8347
	ld a,(hl)		;8349
	rrca			;834a
	and 00fh		;834b
	or e			;834d
	ld e,a			;834e
	ld a,009h		;834f
	add a,l			;8351
	ld l,a			;8352
	ld c,(hl)		;8353
	res 7,c			;8354
	inc hl			;8356
	ld b,(hl)		;8357
	res 7,b			;8358
	srl b			;835a
	srl c			;835c
l835eh:
	push bc			;835e
	push de			;835f
l8360h:
	ld a,(de)		;8360
	inc e			;8361
	jr z,l8373h		;8362
	or a			;8364
	jr nz,l838ah		;8365
	dec b			;8367
	jr z,l8373h		;8368
	ld a,(de)		;836a
	inc e			;836b
	jr z,l8373h		;836c
	or a			;836e
	jr nz,l838ah		;836f
	djnz l8360h		;8371
l8373h:
	pop de			;8373
	ld a,e			;8374
	add a,010h		;8375
	ld e,a			;8377
	pop bc			;8378
	jr c,l837eh		;8379
	dec c			;837b
	jr nz,l835eh		;837c
l837eh:
	ld a,l			;837e
	and 0e0h		;837f
	ld l,a			;8381
	ld bc,00040h		;8382
	add hl,bc		;8385
l8386h:
	pop bc			;8386
	djnz l8327h		;8387
	ret			;8389
l838ah:
	pop bc			;838a
	pop bc			;838b
	push hl			;838c
	push de			;838d
	call sub_8395h		;838e
	pop de			;8391
	pop hl			;8392
	jr l837eh		;8393
sub_8395h:
	ld a,l			;8395
	and 0e0h		;8396
	ld l,a			;8398
	push hl			;8399
	pop iy			;839a
	ld hl,0cc40h		;839c
	ld b,008h		;839f
l83a1h:
	push hl			;83a1
	push bc			;83a2
	ld a,(hl)		;83a3
	or a			;83a4
	jr z,l83b4h		;83a5
	ld de,00015h		;83a7
	add hl,de		;83aa
	call sub_80a5h		;83ab
	call sub_80d0h		;83ae
	call c,sub_80e2h	;83b1
l83b4h:
	pop bc			;83b4
	pop hl			;83b5
	ld de,00020h		;83b6
	add hl,de		;83b9
	djnz l83a1h		;83ba
	ret			;83bc
sub_83bdh:
	xor a			;83bd
	ld l,a			;83be
l83bfh:
	ld (hl),a		;83bf
	inc l			;83c0
	ld (hl),a		;83c1
	inc l			;83c2
	ld (hl),a		;83c3
	inc l			;83c4
	ld (hl),a		;83c5
	inc l			;83c6
	ld (hl),a		;83c7
	inc l			;83c8
	ld (hl),a		;83c9
	inc l			;83ca
	ld (hl),a		;83cb
	inc l			;83cc
	ld (hl),a		;83cd
	inc l			;83ce
	jp nz,l83bfh		;83cf
	ret			;83d2
	rst 38h			;83d3
	rst 38h			;83d4
	rst 38h			;83d5
	rst 38h			;83d6
	rst 38h			;83d7
	rst 38h			;83d8
	rst 38h			;83d9
	rst 38h			;83da
	rst 38h			;83db
	rst 38h			;83dc
	rst 38h			;83dd
	rst 38h			;83de
	rst 38h			;83df
	rst 38h			;83e0
	rst 38h			;83e1
	rst 38h			;83e2
	rst 38h			;83e3
	rst 38h			;83e4
	rst 38h			;83e5
	rst 38h			;83e6
	rst 38h			;83e7
	rst 38h			;83e8
	rst 38h			;83e9
	rst 38h			;83ea
	rst 38h			;83eb
	rst 38h			;83ec
	rst 38h			;83ed
	rst 38h			;83ee
	rst 38h			;83ef
	rst 38h			;83f0
	rst 38h			;83f1
	rst 38h			;83f2
	rst 38h			;83f3
	rst 38h			;83f4
	rst 38h			;83f5
	rst 38h			;83f6
	rst 38h			;83f7
	rst 38h			;83f8
	rst 38h			;83f9
	rst 38h			;83fa
	rst 38h			;83fb
	rst 38h			;83fc
	rst 38h			;83fd
	rst 38h			;83fe
	rst 38h			;83ff
	jr nc,l8386h		;8400
	dec (hl)		;8402
	add a,h			;8403
	add hl,sp		;8404
	add a,h			;8405
	add hl,sp		;8406
	add a,h			;8407
	ld b,b			;8408
	add a,h			;8409
	ld c,b			;840a
	add a,h			;840b
	ld c,l			;840c
	add a,h			;840d
	ld c,l			;840e
	add a,h			;840f
	ld d,d			;8410
	add a,h			;8411
	ld d,(hl)		;8412
	add a,h			;8413
	ld e,e			;8414
	add a,h			;8415
	ld h,e			;8416
	add a,h			;8417
	ld l,d			;8418
	add a,h			;8419
	ld (hl),d		;841a
	add a,h			;841b
	ld (hl),h		;841c
	add a,h			;841d
	ld a,d			;841e
	add a,h			;841f
	ld a,(hl)		;8420
	add a,h			;8421
	add a,d			;8422
	add a,h			;8423
	add a,h			;8424
	add a,h			;8425
	ld (hl),d		;8426
	add a,h			;8427
	add a,(hl)		;8428
	add a,h			;8429
	adc a,d			;842a
	add a,h			;842b
	sub b			;842c
	add a,h			;842d
	sub e			;842e
	add a,h			;842f
	nop			;8430
	ld (bc),a		;8431
	ld bc,0ff03h		;8432
	inc bc			;8435
	nop			;8436
	inc bc			;8437
	rst 38h			;8438
	ld (bc),a		;8439
	nop			;843a
	nop			;843b
	inc bc			;843c
	inc bc			;843d
	ld bc,002ffh		;843e
	nop			;8441
	ld (bc),a		;8442
	ld bc,00003h		;8443
	inc bc			;8446
	rst 38h			;8447
	ld (bc),a		;8448
	ld (bc),a		;8449
	nop			;844a
	ld (bc),a		;844b
	rst 38h			;844c
	inc bc			;844d
	ld bc,00301h		;844e
	rst 38h			;8451
	ld bc,00003h		;8452
	rst 38h			;8455
	nop			;8456
	inc bc			;8457
	nop			;8458
	ld (bc),a		;8459
	rst 38h			;845a
	ld (bc),a		;845b
	nop			;845c
	ld (bc),a		;845d
	ld bc,00102h		;845e
	ld (bc),a		;8461
	rst 38h			;8462
	ld (bc),a		;8463
	ld bc,00003h		;8464
	nop			;8467
	ld (bc),a		;8468
	rst 38h			;8469
	nop			;846a
	ld (bc),a		;846b
	nop			;846c
	inc bc			;846d
l846eh:
	inc bc			;846e
	ld bc,0ff02h		;846f
	ld bc,003ffh		;8472
	ld bc,00002h		;8475
	ld (bc),a		;8478
	rst 38h			;8479
	ld bc,00103h		;847a
	rst 38h			;847d
	inc bc			;847e
	ld bc,0ff03h		;847f
	ld (bc),a		;8482
	rst 38h			;8483
	inc bc			;8484
	rst 38h			;8485
	inc bc			;8486
	nop			;8487
	ld (bc),a		;8488
	rst 38h			;8489
	ld (bc),a		;848a
	ld (bc),a		;848b
	nop			;848c
	nop			;848d
	ld (bc),a		;848e
	rst 38h			;848f
	nop			;8490
	ld (bc),a		;8491
	rst 38h			;8492
	nop			;8493
	inc bc			;8494
	rst 38h			;8495
l8496h:
	push bc			;8496
	xor c			;8497
	exx			;8498
	xor c			;8499
	pop hl			;849a
	xor c			;849b
	ex (sp),hl		;849c
	xor c			;849d
	rlca			;849e
	xor d			;849f
	rlca			;84a0
	xor d			;84a1
	rlca			;84a2
	xor d			;84a3
	add hl,bc		;84a4
	xor d			;84a5
	add hl,de		;84a6
	xor d			;84a7
	dec de			;84a8
	xor d			;84a9
	dec sp			;84aa
	xor d			;84ab
	dec sp			;84ac
	xor d			;84ad
	dec sp			;84ae
l84afh:
	xor d			;84af
	ld b,c			;84b0
	xor d			;84b1
	ld b,c			;84b2
	xor d			;84b3
	ld (028ach),hl		;84b4
	xor h			;84b7
	ld l,0ach		;84b8
	ld (036ach),a		;84ba
	xor h			;84bd
	ld (hl),0ach		;84be
	jr c,l846eh		;84c0
	ld a,(03cach)		;84c2
	xor h			;84c5
	ld b,b			;84c6
	xor h			;84c7
	ld c,d			;84c8
	xor h			;84c9
	inc (hl)		;84ca
	xor a			;84cb
	ld (hl),0afh		;84cc
	ld (hl),0afh		;84ce
	ld l,l			;84d0
	xor l			;84d1
	ld l,a			;84d2
	xor l			;84d3
	ld a,c			;84d4
	xor l			;84d5
	ld a,c			;84d6
	xor l			;84d7
	add a,c			;84d8
	xor l			;84d9
	add a,c			;84da
	xor l			;84db
	add a,e			;84dc
	xor l			;84dd
	add a,e			;84de
	xor l			;84df
	add a,a			;84e0
	xor l			;84e1
	ld c,d			;84e2
	xor (hl)		;84e3
	ld c,(hl)		;84e4
	xor (hl)		;84e5
	ld c,(hl)		;84e6
	xor (hl)		;84e7
	ld c,(hl)		;84e8
	xor (hl)		;84e9
	ld d,b			;84ea
	xor (hl)		;84eb
	ld d,b			;84ec
	xor (hl)		;84ed
	ld d,d			;84ee
	xor (hl)		;84ef
	ld d,(hl)		;84f0
	xor (hl)		;84f1
	ld d,(hl)		;84f2
	xor (hl)		;84f3
	ld e,b			;84f4
	xor (hl)		;84f5
	ld e,d			;84f6
	xor (hl)		;84f7
	inc a			;84f8
	xor a			;84f9
	inc a			;84fa
	xor a			;84fb
	ld a,0afh		;84fc
	jr c,l84afh		;84fe
	ld a,0afh		;8500
	ld l,l			;8502
	xor a			;8503
	ld (hl),l		;8504
	xor a			;8505
	ld (hl),l		;8506
	xor a			;8507
	ld (hl),l		;8508
	xor a			;8509
	ld (hl),l		;850a
	xor a			;850b
	add a,l			;850c
	xor a			;850d
	add a,l			;850e
	xor a			;850f
	add a,l			;8510
	xor a			;8511
	add a,l			;8512
	xor a			;8513
	add hl,bc		;8514
	or b			;8515
	ld de,011b0h		;8516
	or b			;8519
	inc de			;851a
	or b			;851b
	xor e			;851c
	or b			;851d
	xor a			;851e
	or b			;851f
	or c			;8520
	or b			;8521
	or c			;8522
	or b			;8523
	or c			;8524
	or b			;8525
	cp c			;8526
	or b			;8527
	cp l			;8528
	or b			;8529
	sbc a,e			;852a
	or c			;852b
	sbc a,l			;852c
	or c			;852d
	xor l			;852e
	or c			;852f
	sbc a,l			;8530
	or c			;8531
	or c			;8532
	or c			;8533
	or c			;8534
	or c			;8535
	and b			;8536
	or d			;8537
	and b			;8538
	or d			;8539
	and b			;853a
	or d			;853b
	and b			;853c
	or d			;853d
	adc a,c			;853e
	xor l			;853f
	and b			;8540
	or d			;8541
	and b			;8542
	or d			;8543
	and d			;8544
	or d			;8545
	and b			;8546
	or d			;8547
	and b			;8548
	or d			;8549
	and b			;854a
	or d			;854b
	ccf			;854c
	or b			;854d
	and b			;854e
	or d			;854f
	and (hl)		;8550
	or d			;8551
	and b			;8552
	or d			;8553
	xor h			;8554
	or d			;8555
	or b			;8556
	or d			;8557
	add a,0b2h		;8558
	adc a,0b2h		;855a
	ld e,(hl)		;855c
	xor (hl)		;855d
	adc a,0b2h		;855e
	or h			;8560
	or d			;8561
	or (hl)			;8562
	or d			;8563
	adc a,a			;8564
	xor l			;8565
	and b			;8566
	or d			;8567
	and b			;8568
	or d			;8569
	and b			;856a
	or d			;856b
	and b			;856c
	or d			;856d
	and b			;856e
	or d			;856f
	call c,0e2b2h		;8570
	or d			;8573
	sub 0b2h		;8574
	and b			;8576
	or d			;8577
	and b			;8578
	or d			;8579
	and b			;857a
	or d			;857b
	ret c			;857c
	or d			;857d
	jp c,0a0b2h		;857e
	or d			;8581
	and b			;8582
	or d			;8583
	or l			;8584
	or c			;8585
	or l			;8586
	or c			;8587
	and b			;8588
	or d			;8589
	and b			;858a
	or d			;858b
	pop bc			;858c
	or b			;858d
	and b			;858e
	or d			;858f
	and b			;8590
	or d			;8591
	and b			;8592
	or d			;8593
	and b			;8594
	or d			;8595
	call po,0e487h		;8596
	add a,a			;8599
	call po,0f687h		;859a
	add a,a			;859d
	or 087h			;859e
	or 087h			;85a0
	or 087h			;85a2
	or 087h			;85a4
	or 087h			;85a6
	or 087h			;85a8
	or 087h			;85aa
	or 087h			;85ac
	or 087h			;85ae
	rst 38h			;85b0
	sbc a,e			;85b1
	or 087h			;85b2
	ld a,088h		;85b4
	ld a,088h		;85b6
	ld a,088h		;85b8
	ld a,088h		;85ba
	ld a,088h		;85bc
	ld e,h			;85be
	adc a,b			;85bf
	ld e,h			;85c0
	adc a,b			;85c1
	ld e,h			;85c2
	adc a,b			;85c3
	ld e,h			;85c4
	adc a,b			;85c5
	ld e,h			;85c6
	adc a,b			;85c7
	ld e,h			;85c8
	adc a,b			;85c9
	and 095h		;85ca
	and 095h		;85cc
	ld (hl),d		;85ce
	adc a,d			;85cf
	ld (hl),d		;85d0
	adc a,d			;85d1
	ld (hl),d		;85d2
	adc a,d			;85d3
	ld (hl),h		;85d4
	adc a,d			;85d5
	add a,h			;85d6
	adc a,d			;85d7
	add a,h			;85d8
	adc a,d			;85d9
	adc a,b			;85da
	adc a,d			;85db
	adc a,b			;85dc
	adc a,d			;85dd
	cp b			;85de
	adc a,d			;85df
	cp b			;85e0
	adc a,d			;85e1
	or c			;85e2
	adc a,a			;85e3
	or c			;85e4
	adc a,a			;85e5
	or a			;85e6
	adc a,a			;85e7
	rst 0			;85e8
	adc a,a			;85e9
	rst 0			;85ea
	adc a,a			;85eb
	res 1,a			;85ec
	res 1,a			;85ee
	res 1,a			;85f0
	out (08fh),a		;85f2
	out (08fh),a		;85f4
	out (08fh),a		;85f6
	jp pe,0fa95h		;85f8
	sub l			;85fb
	jp m,0fa95h		;85fc
	sub l			;85ff
	jp m,07195h		;8600
	sub (hl)		;8603
	ld (hl),c		;8604
	sub (hl)		;8605
	ld a,e			;8606
	sub (hl)		;8607
	ld a,a			;8608
	sub (hl)		;8609
	ld a,a			;860a
	sub (hl)		;860b
	sbc a,c			;860c
	sub (hl)		;860d
	jp (hl)			;860e
	adc a,a			;860f
	xor l			;8610
	sub (hl)		;8611
	xor l			;8612
	sub (hl)		;8613
	rst 10h			;8614
	sbc a,d			;8615
	rst 10h			;8616
	sbc a,d			;8617
	rst 28h			;8618
	sbc a,d			;8619
	rst 28h			;861a
	sbc a,d			;861b
	inc de			;861c
	sbc a,h			;861d
	inc de			;861e
	sbc a,h			;861f
	inc de			;8620
	sbc a,h			;8621
	ld e,a			;8622
	and (hl)		;8623
	inc de			;8624
	sbc a,h			;8625
	add hl,de		;8626
	sbc a,h			;8627
	add hl,de		;8628
	sbc a,h			;8629
	or e			;862a
	sbc a,(hl)		;862b
	or e			;862c
	sbc a,(hl)		;862d
	or e			;862e
	sbc a,(hl)		;862f
	or e			;8630
	sbc a,(hl)		;8631
	or e			;8632
	sbc a,(hl)		;8633
	or a			;8634
	sbc a,(hl)		;8635
	dec hl			;8636
	and (hl)		;8637
	dec hl			;8638
	and (hl)		;8639
	dec hl			;863a
	and (hl)		;863b
	dec hl			;863c
	and (hl)		;863d
	cp h			;863e
	adc a,d			;863f
	ret nc			;8640
	adc a,d			;8641
	dec hl			;8642
	and (hl)		;8643
	dec hl			;8644
	and (hl)		;8645
	call c,0138ah		;8646
	sbc a,a			;8649
	dec hl			;864a
	and (hl)		;864b
	dec hl			;864c
	and (hl)		;864d
	dec hl			;864e
	and (hl)		;864f
	dec hl			;8650
	and (hl)		;8651
	dec hl			;8652
	and (hl)		;8653
	dec hl			;8654
	and (hl)		;8655
	dec hl			;8656
	and (hl)		;8657
	dec hl			;8658
	and (hl)		;8659
	dec hl			;865a
	and (hl)		;865b
	out (08fh),a		;865c
	dec hl			;865e
	and (hl)		;865f
	dec hl			;8660
	and (hl)		;8661
	dec hl			;8662
	and (hl)		;8663
	dec hl			;8664
	and (hl)		;8665
	dec hl			;8666
	and (hl)		;8667
	scf			;8668
	and (hl)		;8669
	ld b,c			;866a
	and (hl)		;866b
	dec hl			;866c
	and (hl)		;866d
	dec hl			;866e
	and (hl)		;866f
	dec hl			;8670
	and (hl)		;8671
	dec hl			;8672
	and (hl)		;8673
	dec hl			;8674
	and (hl)		;8675
	call m,02b95h		;8676
	and (hl)		;8679
	add hl,de		;867a
	sbc a,h			;867b
	dec hl			;867c
	and (hl)		;867d
	dec hl			;867e
	and (hl)		;867f
	defb 0ddh,09bh,0ddh ;illegal sequence	;8680
	sbc a,e			;8683
	cp e			;8684
	sbc a,(hl)		;8685
	ld bc,0a39fh		;8686
	sub (hl)		;8689
	add hl,hl		;868a
	sbc a,h			;868b
	dec hl			;868c
	and (hl)		;868d
	dec hl			;868e
	and (hl)		;868f
	dec hl			;8690
	and (hl)		;8691
	dec hl			;8692
	and (hl)		;8693
l8694h:
	dec hl			;8694
	and (hl)		;8695
	rst 38h			;8696
	rst 38h			;8697
	rst 38h			;8698
	rst 38h			;8699
	rst 38h			;869a
	rst 38h			;869b
	rst 38h			;869c
	rst 38h			;869d
	rst 38h			;869e
	rst 38h			;869f
	rst 38h			;86a0
	rst 38h			;86a1
	rst 38h			;86a2
	rst 38h			;86a3
	rst 38h			;86a4
	rst 38h			;86a5
	rst 38h			;86a6
	rst 38h			;86a7
	rst 38h			;86a8
	rst 38h			;86a9
	rst 38h			;86aa
	rst 38h			;86ab
	rst 38h			;86ac
	rst 38h			;86ad
	rst 38h			;86ae
	rst 38h			;86af
	rst 38h			;86b0
	rst 38h			;86b1
l86b2h:
	rst 38h			;86b2
	rst 38h			;86b3
l86b4h:
	rst 38h			;86b4
	rst 38h			;86b5
	rst 38h			;86b6
	rst 38h			;86b7
	rst 38h			;86b8
	rst 38h			;86b9
	rst 38h			;86ba
	rst 38h			;86bb
	rst 38h			;86bc
	rst 38h			;86bd
	rst 38h			;86be
	rst 38h			;86bf
	call po,0f486h		;86c0
	add a,(hl)		;86c3
	inc b			;86c4
	add a,a			;86c5
	inc d			;86c6
	add a,a			;86c7
	inc h			;86c8
	add a,a			;86c9
	inc (hl)		;86ca
	add a,a			;86cb
	ld b,h			;86cc
	add a,a			;86cd
	ld b,h			;86ce
	add a,a			;86cf
	ld d,h			;86d0
	add a,a			;86d1
	ld h,h			;86d2
	add a,a			;86d3
	ld (hl),h		;86d4
	add a,a			;86d5
l86d6h:
	add a,h			;86d6
	add a,a			;86d7
	sub h			;86d8
	add a,a			;86d9
	and h			;86da
	add a,a			;86db
	or h			;86dc
	add a,a			;86dd
	call nz,0c487h		;86de
	add a,a			;86e1
	call nc,00387h		;86e2
	ld de,02214h		;86e5
	dec h			;86e8
	inc sp			;86e9
	ld b,a			;86ea
	ld b,l			;86eb
	ld (hl),c		;86ec
	sub e			;86ed
	ld (hl),e		;86ee
	or l			;86ef
	jr nc,l86b2h		;86f0
	jr nc,l86b4h		;86f2
	ld sp,04211h		;86f4
	ld (03353h),hl		;86f7
	djnz l873eh		;86fa
	jr nz,$+85		;86fc
	jr nc,l8694h		;86fe
l8700h:
	ld d,b			;8700
	or b			;8701
	inc sp			;8702
	jp 01202h		;8703
	inc bc			;8706
	inc hl			;8707
	inc b			;8708
	inc (hl)		;8709
	dec b			;870a
	ld b,l			;870b
	ld d,d			;870c
	ld d,h			;870d
	ld b,b			;870e
	sub b			;870f
	ld b,c			;8710
	or e			;8711
	jr nc,l86d6h		;8712
	ld bc,00212h		;8714
	inc hl			;8717
	inc bc			;8718
	inc (hl)		;8719
	inc b			;871a
	ld b,l			;871b
	ld h,b			;871c
	ld d,h			;871d
	ld b,b			;871e
	sub d			;871f
	ld d,b			;8720
	or e			;8721
	inc b			;8722
	ret nz			;8723
	ld h,(hl)		;8724
	ld d,010h		;8725
	ld hl,03220h		;8727
	ld sp,04243h		;872a
	ld d,h			;872d
	ld d,b			;872e
	sub b			;872f
l8730h:
	ld b,b			;8730
	or b			;8731
l8732h:
	ld h,b			;8732
	ret nz			;8733
l8734h:
	dec d			;8734
	ld (de),a		;8735
	ld (hl),024h		;8736
	ld d,a			;8738
	ld (hl),002h		;8739
	ld b,b			;873b
	inc de			;873c
	ld d,b			;873d
l873eh:
	inc b			;873e
	sub c			;873f
	inc b			;8740
	sub c			;8741
	inc b			;8742
	sub c			;8743
	ld bc,00112h		;8744
	inc hl			;8747
	ld (de),a		;8748
	inc (hl)		;8749
	inc hl			;874a
	ld b,l			;874b
	jr nc,l8700h		;874c
	ld b,b			;874e
	jp 0c340h		;874f
l8752h:
	ld b,b			;8752
	jp 00114h		;8753
l8756h:
	jr nc,$+18		;8756
	ld d,b			;8758
	ld hl,03470h		;8759
	dec h			;875c
	ld b,d			;875d
	ld (04752h),hl		;875e
	sub h			;8761
	ld b,a			;8762
	sub h			;8763
	jr nc,$+18		;8764
	ld b,b			;8766
	ld hl,03350h		;8767
	ld h,b			;876a
	ld b,h			;876b
	ld (hl),c		;876c
	sub e			;876d
	ld (hl),e		;876e
	or l			;876f
	jr nc,l8732h		;8770
	jr nc,l8734h		;8772
	ld sp,04211h		;8774
	ld (03353h),hl		;8777
	ld b,b			;877a
	ld b,c			;877b
	ld d,b			;877c
	ld d,e			;877d
	ld h,b			;877e
	sub h			;877f
l8780h:
	ld d,b			;8780
	or b			;8781
	inc sp			;8782
	jp 01130h		;8783
	ld b,b			;8786
	ld (03350h),hl		;8787
	ld h,b			;878a
	ld b,h			;878b
	ld d,d			;878c
	ld d,h			;878d
	ld b,b			;878e
	sub b			;878f
	ld b,c			;8790
	or e			;8791
	jr nc,l8756h		;8792
	jr nc,$+18		;8794
	ld b,b			;8796
	ld hl,03350h		;8797
	ld h,b			;879a
	ld b,h			;879b
	ld h,b			;879c
	ld d,b			;879d
	jr nz,l8730h		;879e
	ld b,b			;87a0
	or b			;87a1
	inc b			;87a2
	ret nz			;87a3
	ld h,l			;87a4
	ld d,030h		;87a5
	ld hl,03140h		;87a7
	ld h,c			;87aa
	ld b,h			;87ab
	ld (hl),b		;87ac
	ld d,(hl)		;87ad
	ld d,b			;87ae
	sub b			;87af
	ld b,b			;87b0
	or b			;87b1
	ld h,b			;87b2
	ret nz			;87b3
	ld b,b			;87b4
	ld de,02350h		;87b5
	ld h,b			;87b8
	inc (hl)		;87b9
	ld (bc),a		;87ba
	ld b,b			;87bb
	inc de			;87bc
	ld d,b			;87bd
	jr nz,$-110		;87be
	jr nz,l8752h		;87c0
	jr nz,$-110		;87c2
	ld bc,00112h		;87c4
	inc hl			;87c7
	ld (de),a		;87c8
	inc (hl)		;87c9
	inc hl			;87ca
	ld b,l			;87cb
	jr nc,l8780h		;87cc
	ld b,b			;87ce
	jp 0c340h		;87cf
	ld b,b			;87d2
	jp 00040h		;87d3
	jr nc,l87e8h		;87d6
	ld d,b			;87d8
	ld hl,03470h		;87d9
	ld (hl),b		;87dc
	ld b,b			;87dd
	ld (07052h),hl		;87de
	sub h			;87e1
	ld (hl),b		;87e2
	sub h			;87e3
	or 087h			;87e4
	cp 087h			;87e6
l87e8h:
	ld b,088h		;87e8
	ld c,088h		;87ea
	ld d,088h		;87ec
	ld e,088h		;87ee
	ld h,088h		;87f0
	ld l,088h		;87f2
	ld (hl),088h		;87f4
	nop			;87f6
	nop			;87f7
	ld (bc),a		;87f8
	ld (bc),a		;87f9
	adc a,0cfh		;87fa
	ret nc			;87fc
	pop de			;87fd
	nop			;87fe
	nop			;87ff
	ld (bc),a		;8800
	ld (bc),a		;8801
	jp nc,0d4d3h		;8802
	push de			;8805
	nop			;8806
	nop			;8807
	ld (bc),a		;8808
	ld (bc),a		;8809
	sub 0d7h		;880a
	ret c			;880c
	exx			;880d
	nop			;880e
	nop			;880f
	ld (bc),a		;8810
	ld (bc),a		;8811
	jp c,0dcdbh		;8812
	defb 0ddh,000h,000h ;illegal sequence	;8815
	ld (bc),a		;8818
	ld (bc),a		;8819
	sbc a,0dfh		;881a
	ret po			;881c
	pop hl			;881d
	nop			;881e
	nop			;881f
	ld (bc),a		;8820
	ld (bc),a		;8821
	jp po,0e4e3h		;8822
	push hl			;8825
	nop			;8826
	nop			;8827
	ld (bc),a		;8828
	ld (bc),a		;8829
	and 0e7h		;882a
	ret pe			;882c
	jp (hl)			;882d
	nop			;882e
	nop			;882f
	ld (bc),a		;8830
	ld (bc),a		;8831
	jp po,0e4e3h		;8832
	push hl			;8835
	nop			;8836
	nop			;8837
	ld (bc),a		;8838
	ld (bc),a		;8839
	and 0e7h		;883a
	ret pe			;883c
	jp (hl)			;883d
	ld e,h			;883e
	adc a,b			;883f
	sub d			;8840
	adc a,b			;8841
	ret z			;8842
	adc a,b			;8843
	call pe,00888h		;8844
	adc a,c			;8847
	inc l			;8848
	adc a,c			;8849
	ld d,b			;884a
	adc a,c			;884b
	ld (hl),a		;884c
	adc a,c			;884d
	and e			;884e
	adc a,c			;884f
	rst 8			;8850
	adc a,c			;8851
	or 089h			;8852
	ld (de),a		;8854
	adc a,d			;8855
	ld (hl),08ah		;8856
	ld h,d			;8858
	adc a,d			;8859
	ld l,d			;885a
	adc a,d			;885b
	nop			;885c
	nop			;885d
	dec b			;885e
	ld a,(bc)		;885f
	nop			;8860
	ld bc,05002h		;8861
	ld d,c			;8864
	ld d,d			;8865
	ld d,e			;8866
	inc bc			;8867
	nop			;8868
	nop			;8869
	inc b			;886a
	ld d,h			;886b
	ld d,l			;886c
	ld d,(hl)		;886d
	ld d,a			;886e
	ld e,b			;886f
	ld e,c			;8870
	ld e,d			;8871
	dec b			;8872
	ld b,000h		;8873
	nop			;8875
	rlca			;8876
	ld e,e			;8877
	ld e,h			;8878
	ld e,l			;8879
	ld e,(hl)		;887a
	ld e,a			;887b
	ld h,b			;887c
	ex af,af'		;887d
	nop			;887e
	nop			;887f
	nop			;8880
	nop			;8881
	nop			;8882
	nop			;8883
	nop			;8884
	add hl,bc		;8885
	ld h,c			;8886
	ld a,(bc)		;8887
	nop			;8888
	nop			;8889
	nop			;888a
	nop			;888b
	nop			;888c
	nop			;888d
	nop			;888e
	nop			;888f
	dec bc			;8890
	ld h,d			;8891
	nop			;8892
	nop			;8893
	dec b			;8894
	ld a,(bc)		;8895
	nop			;8896
	nop			;8897
	nop			;8898
	nop			;8899
	nop			;889a
	nop			;889b
	nop			;889c
	nop			;889d
	dec bc			;889e
	ld h,d			;889f
	nop			;88a0
	nop			;88a1
	nop			;88a2
	nop			;88a3
	nop			;88a4
	nop			;88a5
	nop			;88a6
	add hl,bc		;88a7
	ld h,c			;88a8
	ld a,(bc)		;88a9
	nop			;88aa
	nop			;88ab
	rlca			;88ac
	ld e,e			;88ad
	ld e,h			;88ae
	ld e,l			;88af
	ld e,(hl)		;88b0
	ld e,a			;88b1
	ld h,b			;88b2
	ex af,af'		;88b3
	inc b			;88b4
	ld d,h			;88b5
	ld d,l			;88b6
	ld d,(hl)		;88b7
	ld d,a			;88b8
	ld e,b			;88b9
	ld e,c			;88ba
	ld e,d			;88bb
	dec b			;88bc
	ld b,000h		;88bd
	ld bc,05002h		;88bf
	ld d,c			;88c2
	ld d,d			;88c3
	ld d,e			;88c4
	inc bc			;88c5
	nop			;88c6
	nop			;88c7
	nop			;88c8
	nop			;88c9
	ex af,af'		;88ca
	inc b			;88cb
	nop			;88cc
	ld h,063h		;88cd
	ld h,h			;88cf
	nop			;88d0
	daa			;88d1
	ld h,l			;88d2
	ld h,(hl)		;88d3
	ld l,d			;88d4
	ld l,e			;88d5
	rst 0			;88d6
	ld l,h			;88d7
	ld (hl),c		;88d8
	ld (hl),d		;88d9
	ret z			;88da
	ld (hl),e		;88db
	ld (hl),c		;88dc
	ld (hl),d		;88dd
	ret z			;88de
	ld (hl),e		;88df
	ld l,d			;88e0
	ld l,e			;88e1
	rst 0			;88e2
	ld l,h			;88e3
	nop			;88e4
	daa			;88e5
	ld h,l			;88e6
	ld h,(hl)		;88e7
	nop			;88e8
	ld h,063h		;88e9
	ld h,h			;88eb
	ld bc,006fch		;88ec
	inc b			;88ef
	sub (hl)		;88f0
	rla			;88f1
	jr l88f4h		;88f2
l88f4h:
	nop			;88f4
	nop			;88f5
	add hl,de		;88f6
	sub a			;88f7
	nop			;88f8
	nop			;88f9
	nop			;88fa
	sbc a,b			;88fb
	nop			;88fc
	nop			;88fd
	nop			;88fe
	sbc a,b			;88ff
	nop			;8900
	nop			;8901
	add hl,de		;8902
	sub a			;8903
	sub (hl)		;8904
	rla			;8905
	jr l8908h		;8906
l8908h:
	nop			;8908
	call m,00408h		;8909
	ld a,(de)		;890c
	nop			;890d
	nop			;890e
	nop			;890f
	dec de			;8910
	sbc a,c			;8911
	inc e			;8912
	nop			;8913
	nop			;8914
	nop			;8915
	dec e			;8916
	sbc a,d			;8917
	nop			;8918
	nop			;8919
	nop			;891a
	ld e,000h		;891b
	nop			;891d
	nop			;891e
	ld e,000h		;891f
	nop			;8921
	dec e			;8922
	sbc a,d			;8923
	dec de			;8924
	sbc a,c			;8925
	inc e			;8926
	nop			;8927
	ld a,(de)		;8928
	nop			;8929
	nop			;892a
	nop			;892b
	nop			;892c
	call m,00408h		;892d
	sbc a,e			;8930
	jr l8933h		;8931
l8933h:
	nop			;8933
	nop			;8934
	jr nz,l8958h		;8935
	ld (00000h),hl		;8937
	inc h			;893a
	sbc a,h			;893b
	nop			;893c
	nop			;893d
	inc hl			;893e
	dec h			;893f
	nop			;8940
	nop			;8941
	inc hl			;8942
	dec h			;8943
	nop			;8944
	nop			;8945
	inc h			;8946
	sbc a,h			;8947
	nop			;8948
	jr nz,l896ch		;8949
	ld (0189bh),hl		;894b
	nop			;894e
	nop			;894f
	defb 0fdh,004h,007h ;illegal sequence	;8950
	dec b			;8953
	nop			;8954
	ld hl,(02bach)		;8955
l8958h:
	inc l			;8958
	dec l			;8959
	ld l,0adh		;895a
	cpl			;895c
	nop			;895d
	xor (hl)		;895e
	nop			;895f
	xor a			;8960
	nop			;8961
	nop			;8962
	xor c			;8963
	xor d			;8964
	sbc a,l			;8965
	sbc a,(hl)		;8966
	sbc a,a			;8967
	ld h,a			;8968
	ld l,b			;8969
	ld l,c			;896a
	and b			;896b
l896ch:
	and c			;896c
	ld l,l			;896d
	ld l,(hl)		;896e
	ld l,a			;896f
	ld (hl),b		;8970
	or c			;8971
	ld (hl),h		;8972
	ld (hl),l		;8973
	halt			;8974
	ld (hl),a		;8975
	ld a,b			;8976
	call m,00804h		;8977
	dec b			;897a
	jr nc,l89aeh		;897b
	nop			;897d
	nop			;897e
	nop			;897f
	and d			;8980
	nop			;8981
	nop			;8982
	nop			;8983
	nop			;8984
	and e			;8985
	nop			;8986
	inc sp			;8987
	inc (hl)		;8988
	and (hl)		;8989
	and h			;898a
	ld (0b0a7h),a		;898b
	nop			;898e
	xor c			;898f
	and l			;8990
	xor b			;8991
	sbc a,(hl)		;8992
	sbc a,a			;8993
	ld h,a			;8994
	ld l,b			;8995
	ld l,c			;8996
	and b			;8997
	and c			;8998
	ld l,l			;8999
	ld l,(hl)		;899a
	ld l,a			;899b
	ld (hl),b		;899c
	or c			;899d
	ld (hl),h		;899e
	ld (hl),l		;899f
	halt			;89a0
	ld (hl),a		;89a1
	ld a,b			;89a2
	inc b			;89a3
	inc b			;89a4
	ex af,af'		;89a5
	dec b			;89a6
	ld (hl),h		;89a7
	ld (hl),l		;89a8
	halt			;89a9
	ld (hl),a		;89aa
	ld a,b			;89ab
	ld l,l			;89ac
	ld l,(hl)		;89ad
l89aeh:
	ld l,a			;89ae
	ld (hl),b		;89af
	or c			;89b0
	ld h,a			;89b1
	ld l,b			;89b2
	ld l,c			;89b3
	and b			;89b4
	and c			;89b5
	xor c			;89b6
	xor d			;89b7
	xor b			;89b8
	sbc a,(hl)		;89b9
	sbc a,a			;89ba
	and h			;89bb
	ld (0b0a7h),a		;89bc
	nop			;89bf
	and e			;89c0
	nop			;89c1
	inc sp			;89c2
	inc (hl)		;89c3
	and (hl)		;89c4
	and d			;89c5
	nop			;89c6
	nop			;89c7
	nop			;89c8
	nop			;89c9
	jr nc,l89fdh		;89ca
	nop			;89cc
	nop			;89cd
	nop			;89ce
	inc b			;89cf
	inc b			;89d0
	rlca			;89d1
	dec b			;89d2
	ld (hl),h		;89d3
l89d4h:
	ld (hl),l		;89d4
	halt			;89d5
	ld (hl),a		;89d6
	ld a,b			;89d7
	ld l,l			;89d8
	ld l,(hl)		;89d9
	ld l,a			;89da
	ld (hl),b		;89db
	or c			;89dc
	ld h,a			;89dd
	ld l,b			;89de
	ld l,c			;89df
	and b			;89e0
	and c			;89e1
	xor c			;89e2
	xor d			;89e3
	sbc a,l			;89e4
	sbc a,(hl)		;89e5
	sbc a,a			;89e6
	xor (hl)		;89e7
l89e8h:
	nop			;89e8
	xor a			;89e9
	nop			;89ea
	nop			;89eb
	dec l			;89ec
	ld l,0adh		;89ed
	cpl			;89ef
	nop			;89f0
	nop			;89f1
	ld hl,(02bach)		;89f2
	inc l			;89f5
	ld bc,00609h		;89f6
	inc b			;89f9
	dec c			;89fa
	ld a,(hl)		;89fb
	ld a,a			;89fc
l89fdh:
	add a,b			;89fd
	ld a,e			;89fe
	add a,c			;89ff
	add a,d			;8a00
	add a,e			;8a01
	ld a,c			;8a02
	ld a,d			;8a03
	or e			;8a04
	jr z,l8a80h		;8a05
	ld a,d			;8a07
	or d			;8a08
	jr z,$+125		;8a09
	add a,c			;8a0b
	add a,d			;8a0c
	add a,e			;8a0d
	dec c			;8a0e
	ld a,(hl)		;8a0f
	ld a,a			;8a10
	add a,b			;8a11
	nop			;8a12
	add hl,bc		;8a13
	ex af,af'		;8a14
	inc b			;8a15
	nop			;8a16
	rrca			;8a17
	add a,h			;8a18
	add a,l			;8a19
	ld c,086h		;8a1a
	add a,a			;8a1c
	adc a,b			;8a1d
	ld a,h			;8a1e
	adc a,c			;8a1f
	adc a,d			;8a20
	adc a,e			;8a21
	ld a,c			;8a22
	ld a,d			;8a23
	or e			;8a24
	jr z,l8aa0h		;8a25
	ld a,d			;8a27
	or d			;8a28
	jr z,l8aa7h		;8a29
	adc a,c			;8a2b
	adc a,d			;8a2c
	adc a,e			;8a2d
	ld c,086h		;8a2e
	add a,a			;8a30
	adc a,b			;8a31
	nop			;8a32
	rrca			;8a33
	add a,h			;8a34
	add a,l			;8a35
	rst 38h			;8a36
	add hl,bc		;8a37
	ld a,(bc)		;8a38
	inc b			;8a39
	nop			;8a3a
	ld (de),a		;8a3b
	adc a,h			;8a3c
	inc de			;8a3d
	ld de,l8e8dh		;8a3e
	adc a,a			;8a41
	djnz l89d4h		;8a42
	sub c			;8a44
	sub d			;8a45
	ld a,l			;8a46
	sub e			;8a47
	sub h			;8a48
	sub l			;8a49
	ld a,c			;8a4a
	ld a,d			;8a4b
	or e			;8a4c
	jr z,l8ac8h		;8a4d
l8a4fh:
	ld a,d			;8a4f
	or d			;8a50
	jr z,l8ad0h		;8a51
	sub e			;8a53
	sub h			;8a54
	sub l			;8a55
	djnz l89e8h		;8a56
	sub c			;8a58
	sub d			;8a59
	ld de,l8e8dh		;8a5a
	adc a,a			;8a5d
	nop			;8a5e
	ld (de),a		;8a5f
	adc a,h			;8a60
	inc de			;8a61
	ld (bc),a		;8a62
	ld (bc),a		;8a63
	inc b			;8a64
	ld bc,0cac9h		;8a65
	jp z,002c9h		;8a68
	ld (bc),a		;8a6b
	inc b			;8a6c
	ld bc,0cbabh		;8a6d
	res 5,e			;8a70
	ld b,l			;8a72
	adc a,l			;8a73
	ld e,l			;8a74
	adc a,l			;8a75
	ld h,l			;8a76
	adc a,l			;8a77
	ld l,l			;8a78
	adc a,l			;8a79
	ld (hl),l		;8a7a
	adc a,l			;8a7b
	ld e,l			;8a7c
	adc a,l			;8a7d
	ld e,l			;8a7e
	adc a,l			;8a7f
l8a80h:
	ld e,l			;8a80
	adc a,l			;8a81
	ld e,l			;8a82
	adc a,l			;8a83
	ld hl,02d8dh		;8a84
	adc a,l			;8a87
	and c			;8a88
	adc a,l			;8a89
	or c			;8a8a
	adc a,l			;8a8b
	pop bc			;8a8c
	adc a,l			;8a8d
	pop de			;8a8e
	adc a,l			;8a8f
	pop hl			;8a90
	adc a,l			;8a91
	pop af			;8a92
	adc a,l			;8a93
	ld bc,0118eh		;8a94
	adc a,(hl)		;8a97
	ld hl,0438eh		;8a98
	adc a,(hl)		;8a9b
	ld h,l			;8a9c
	adc a,(hl)		;8a9d
	add a,a			;8a9e
	adc a,(hl)		;8a9f
l8aa0h:
	xor c			;8aa0
	adc a,(hl)		;8aa1
	res 1,(hl)		;8aa2
	defb 0edh ;next byte illegal after ed	;8aa4
	adc a,(hl)		;8aa5
	rrca			;8aa6
l8aa7h:
	adc a,a			;8aa7
	ld sp,0418fh		;8aa8
	adc a,a			;8aab
	ld d,c			;8aac
	adc a,a			;8aad
	ld h,c			;8aae
	adc a,a			;8aaf
	ld (hl),c		;8ab0
	adc a,a			;8ab1
	add a,c			;8ab2
	adc a,a			;8ab3
	sub c			;8ab4
	adc a,a			;8ab5
	and c			;8ab6
	adc a,a			;8ab7
	ld a,l			;8ab8
	adc a,l			;8ab9
	adc a,c			;8aba
	adc a,l			;8abb
	call c,0038ah		;8abc
	adc a,e			;8abf
	dec h			;8ac0
	adc a,e			;8ac1
	jr nc,l8a4fh		;8ac2
	ld b,d			;8ac4
	adc a,e			;8ac5
	ld e,e			;8ac6
	adc a,e			;8ac7
l8ac8h:
	ld (hl),h		;8ac8
	adc a,e			;8ac9
	ld a,(hl)		;8aca
	adc a,e			;8acb
	adc a,(hl)		;8acc
	adc a,e			;8acd
	and h			;8ace
	adc a,e			;8acf
l8ad0h:
	ret nz			;8ad0
	adc a,e			;8ad1
	inc d			;8ad2
	adc a,h			;8ad3
	ld l,b			;8ad4
	adc a,h			;8ad5
	cp h			;8ad6
	adc a,h			;8ad7
	djnz $-113		;8ad8
	inc e			;8ada
	adc a,l			;8adb
	nop			;8adc
	nop			;8add
	dec b			;8ade
	rlca			;8adf
	nop			;8ae0
	nop			;8ae1
	nop			;8ae2
	nop			;8ae3
	nop			;8ae4
	nop			;8ae5
	nop			;8ae6
	nop			;8ae7
	nop			;8ae8
	nop			;8ae9
	nop			;8aea
	nop			;8aeb
	nop			;8aec
	nop			;8aed
	nop			;8aee
	nop			;8aef
	nop			;8af0
	nop			;8af1
	nop			;8af2
	or h			;8af3
	and a			;8af4
	nop			;8af5
	nop			;8af6
	nop			;8af7
	or a			;8af8
	and (hl)		;8af9
	sub e			;8afa
	sub h			;8afb
	nop			;8afc
	or a			;8afd
	and (hl)		;8afe
	sub e			;8aff
	sub h			;8b00
	sub l			;8b01
	sub (hl)		;8b02
	nop			;8b03
	nop			;8b04
	dec b			;8b05
	ld b,000h		;8b06
	nop			;8b08
	nop			;8b09
	inc de			;8b0a
	dec d			;8b0b
	nop			;8b0c
	nop			;8b0d
	nop			;8b0e
	cp b			;8b0f
	ld de,0b918h		;8b10
	xor b			;8b13
	xor c			;8b14
	xor c			;8b15
	xor d			;8b16
	xor e			;8b17
	nop			;8b18
	add a,(hl)		;8b19
	dec hl			;8b1a
	inc l			;8b1b
	sub d			;8b1c
	sbc a,e			;8b1d
	nop			;8b1e
	and b			;8b1f
	ld a,(de)		;8b20
	inc e			;8b21
	and l			;8b22
	sbc a,d			;8b23
	nop			;8b24
	nop			;8b25
	nop			;8b26
	ld bc,00007h		;8b27
	adc a,a			;8b2a
	add a,a			;8b2b
	sub a			;8b2c
	sbc a,a			;8b2d
	sbc a,a			;8b2e
	sbc a,a			;8b2f
	nop			;8b30
	nop			;8b31
	ld (bc),a		;8b32
	rlca			;8b33
	nop			;8b34
	adc a,a			;8b35
	add a,a			;8b36
	sub a			;8b37
	sbc a,a			;8b38
	sbc a,a			;8b39
	sbc a,a			;8b3a
	cp b			;8b3b
	ld de,0b918h		;8b3c
	sbc a,l			;8b3f
	sub c			;8b40
	nop			;8b41
	nop			;8b42
	nop			;8b43
	inc bc			;8b44
	rlca			;8b45
	nop			;8b46
	adc a,a			;8b47
	add a,a			;8b48
	sub a			;8b49
	sbc a,a			;8b4a
	sbc a,a			;8b4b
	sbc a,a			;8b4c
	cp b			;8b4d
	ld de,0b918h		;8b4e
	sbc a,l			;8b51
	sub c			;8b52
	nop			;8b53
	nop			;8b54
	ld (de),a		;8b55
	inc d			;8b56
	nop			;8b57
	nop			;8b58
	nop			;8b59
	nop			;8b5a
	nop			;8b5b
	nop			;8b5c
	inc bc			;8b5d
	rlca			;8b5e
	nop			;8b5f
	adc a,a			;8b60
	add a,a			;8b61
	sub a			;8b62
	sbc a,a			;8b63
	sbc a,a			;8b64
	sbc a,a			;8b65
	cp b			;8b66
	ld de,0b918h		;8b67
	sbc a,l			;8b6a
	sub c			;8b6b
	nop			;8b6c
	nop			;8b6d
	ld (de),a		;8b6e
	inc d			;8b6f
	nop			;8b70
	nop			;8b71
	nop			;8b72
	nop			;8b73
	nop			;8b74
	nop			;8b75
	ld bc,l9006h		;8b76
	dec de			;8b79
	dec e			;8b7a
	sbc a,h			;8b7b
	sbc a,e			;8b7c
	nop			;8b7d
	nop			;8b7e
	nop			;8b7f
	ld (bc),a		;8b80
	ld b,090h		;8b81
	dec de			;8b83
	dec e			;8b84
	sbc a,h			;8b85
	sbc a,e			;8b86
	nop			;8b87
	sbc a,l			;8b88
	sub c			;8b89
	nop			;8b8a
	sbc a,(hl)		;8b8b
	xor e			;8b8c
	nop			;8b8d
	nop			;8b8e
	nop			;8b8f
	inc bc			;8b90
	ld b,090h		;8b91
	dec de			;8b93
	dec e			;8b94
	sbc a,h			;8b95
	sbc a,e			;8b96
	nop			;8b97
	sbc a,l			;8b98
	sub c			;8b99
	nop			;8b9a
	sbc a,(hl)		;8b9b
	xor e			;8b9c
	nop			;8b9d
	nop			;8b9e
	nop			;8b9f
	cp b			;8ba0
	ld de,0b918h		;8ba1
	nop			;8ba4
	nop			;8ba5
	inc b			;8ba6
	ld b,090h		;8ba7
	dec de			;8ba9
	dec e			;8baa
	sbc a,h			;8bab
	sbc a,e			;8bac
	nop			;8bad
	sbc a,l			;8bae
	sub c			;8baf
	nop			;8bb0
	sbc a,(hl)		;8bb1
	xor e			;8bb2
	nop			;8bb3
	nop			;8bb4
	nop			;8bb5
	cp b			;8bb6
	ld de,0b918h		;8bb7
	nop			;8bba
	nop			;8bbb
	nop			;8bbc
	ld (de),a		;8bbd
	inc d			;8bbe
	nop			;8bbf
	nop			;8bc0
	nop			;8bc1
	ld a,(bc)		;8bc2
	ex af,af'		;8bc3
	nop			;8bc4
	ld l,c			;8bc5
	ld l,b			;8bc6
	ld h,b			;8bc7
	ld h,(hl)		;8bc8
	ld l,e			;8bc9
	nop			;8bca
	nop			;8bcb
	nop			;8bcc
	ld h,c			;8bcd
	ld h,d			;8bce
	ld h,e			;8bcf
	ld h,a			;8bd0
	ld h,h			;8bd1
	ld (hl),l		;8bd2
	nop			;8bd3
	nop			;8bd4
	ld l,a			;8bd5
	ld (hl),h		;8bd6
	ld l,l			;8bd7
	ld h,l			;8bd8
	ld l,d			;8bd9
	ld (hl),b		;8bda
	nop			;8bdb
	nop			;8bdc
	halt			;8bdd
	adc a,b			;8bde
	add a,d			;8bdf
	add a,e			;8be0
	ld a,a			;8be1
	ld a,c			;8be2
	nop			;8be3
	nop			;8be4
	xor h			;8be5
	adc a,a			;8be6
	ld bc,l8e02h		;8be7
	or b			;8bea
	nop			;8beb
	nop			;8bec
	nop			;8bed
	cp h			;8bee
	inc hl			;8bef
	inc h			;8bf0
	cp l			;8bf1
	nop			;8bf2
	nop			;8bf3
	nop			;8bf4
	or h			;8bf5
	adc a,l			;8bf6
	add hl,bc		;8bf7
	ld a,(bc)		;8bf8
	sub b			;8bf9
	cp b			;8bfa
	nop			;8bfb
	nop			;8bfc
	ld a,b			;8bfd
	ld a,l			;8bfe
	add a,c			;8bff
	add a,b			;8c00
	ld a,(hl)		;8c01
	ld a,h			;8c02
	nop			;8c03
	ld sp,07173h		;8c04
	ld l,(hl)		;8c07
	ld (hl),c		;8c08
	ld (hl),d		;8c09
	ld l,h			;8c0a
	ld (0657bh),a		;8c0b
	ld a,(03a3ah)		;8c0e
	ld a,(07c5bh)		;8c11
	nop			;8c14
	nop			;8c15
	ld a,(bc)		;8c16
	ex af,af'		;8c17
	nop			;8c18
	ld l,c			;8c19
	ld l,b			;8c1a
	ld h,b			;8c1b
	ld h,(hl)		;8c1c
	ld l,e			;8c1d
	nop			;8c1e
	nop			;8c1f
	nop			;8c20
	ld h,c			;8c21
	ld h,d			;8c22
	ld h,e			;8c23
	ld h,a			;8c24
	ld h,h			;8c25
	ld (hl),l		;8c26
	nop			;8c27
	nop			;8c28
	ld l,a			;8c29
	ld (hl),h		;8c2a
	ld l,l			;8c2b
	ld h,l			;8c2c
	ld l,d			;8c2d
	ld (hl),b		;8c2e
	nop			;8c2f
	nop			;8c30
	ld (hl),a		;8c31
	adc a,d			;8c32
	add a,h			;8c33
	add a,l			;8c34
	adc a,c			;8c35
	ld a,d			;8c36
	nop			;8c37
	nop			;8c38
	xor l			;8c39
	sub e			;8c3a
	inc bc			;8c3b
	inc b			;8c3c
	sub d			;8c3d
	or c			;8c3e
	nop			;8c3f
	nop			;8c40
	nop			;8c41
	cp h			;8c42
	inc hl			;8c43
	inc h			;8c44
	cp l			;8c45
	nop			;8c46
	nop			;8c47
	nop			;8c48
	or l			;8c49
	sub c			;8c4a
	dec bc			;8c4b
	inc c			;8c4c
	sub h			;8c4d
	cp c			;8c4e
	nop			;8c4f
	nop			;8c50
	halt			;8c51
	add a,b			;8c52
	add a,(hl)		;8c53
	add a,a			;8c54
	adc a,e			;8c55
	ld a,e			;8c56
	nop			;8c57
	ld sp,07173h		;8c58
	ld l,(hl)		;8c5b
	ld (hl),c		;8c5c
	ld (hl),d		;8c5d
	ld l,h			;8c5e
	ld (0657bh),a		;8c5f
	ld a,(03a3ah)		;8c62
	ld a,(07c5bh)		;8c65
	nop			;8c68
	nop			;8c69
	ld a,(bc)		;8c6a
	ex af,af'		;8c6b
	nop			;8c6c
	ld l,c			;8c6d
	ld l,b			;8c6e
	ld h,b			;8c6f
	ld h,(hl)		;8c70
	ld l,e			;8c71
	nop			;8c72
	nop			;8c73
	nop			;8c74
	ld h,c			;8c75
	ld h,d			;8c76
	ld h,e			;8c77
	ld h,a			;8c78
	ld h,h			;8c79
	ld (hl),l		;8c7a
	nop			;8c7b
	nop			;8c7c
	ld l,a			;8c7d
	ld (hl),h		;8c7e
	ld l,l			;8c7f
	ld h,l			;8c80
	ld l,d			;8c81
	ld (hl),b		;8c82
	nop			;8c83
	nop			;8c84
	halt			;8c85
	add a,b			;8c86
	add a,(hl)		;8c87
	add a,a			;8c88
	adc a,e			;8c89
	ld a,e			;8c8a
	nop			;8c8b
	nop			;8c8c
	xor (hl)		;8c8d
	sub a			;8c8e
	dec b			;8c8f
	ld b,096h		;8c90
l8c92h:
	or d			;8c92
	nop			;8c93
	nop			;8c94
	nop			;8c95
	cp h			;8c96
	inc hl			;8c97
	inc h			;8c98
	cp l			;8c99
	nop			;8c9a
	nop			;8c9b
	nop			;8c9c
	or (hl)			;8c9d
	sub l			;8c9e
	dec c			;8c9f
	ld c,098h		;8ca0
	cp d			;8ca2
	nop			;8ca3
	nop			;8ca4
	ld (hl),a		;8ca5
	adc a,d			;8ca6
	add a,h			;8ca7
	add a,l			;8ca8
	adc a,c			;8ca9
	ld a,d			;8caa
	nop			;8cab
	ld sp,07173h		;8cac
	ld l,(hl)		;8caf
	ld (hl),c		;8cb0
	ld (hl),d		;8cb1
	ld l,h			;8cb2
	ld (0657bh),a		;8cb3
	ld a,(03a3ah)		;8cb6
	ld a,(07c5bh)		;8cb9
	nop			;8cbc
	nop			;8cbd
	ld a,(bc)		;8cbe
	ex af,af'		;8cbf
	nop			;8cc0
	ld l,c			;8cc1
	ld l,b			;8cc2
	ld h,b			;8cc3
	ld h,(hl)		;8cc4
	ld l,e			;8cc5
	nop			;8cc6
l8cc7h:
	nop			;8cc7
	nop			;8cc8
	ld h,c			;8cc9
	ld h,d			;8cca
	ld h,e			;8ccb
	ld h,a			;8ccc
	ld h,h			;8ccd
	ld (hl),l		;8cce
	nop			;8ccf
	nop			;8cd0
	ld l,a			;8cd1
	ld (hl),h		;8cd2
l8cd3h:
	ld l,l			;8cd3
	ld h,l			;8cd4
	ld l,d			;8cd5
	ld (hl),b		;8cd6
	nop			;8cd7
	nop			;8cd8
	ld a,b			;8cd9
	ld a,l			;8cda
	add a,c			;8cdb
	add a,b			;8cdc
	ld a,(hl)		;8cdd
	ld a,h			;8cde
	nop			;8cdf
	nop			;8ce0
	xor a			;8ce1
	sbc a,e			;8ce2
	rlca			;8ce3
	ex af,af'		;8ce4
	sbc a,d			;8ce5
	or e			;8ce6
	nop			;8ce7
	nop			;8ce8
	nop			;8ce9
	cp h			;8cea
	inc hl			;8ceb
	inc h			;8cec
	cp l			;8ced
	nop			;8cee
	nop			;8cef
	nop			;8cf0
	or a			;8cf1
	sbc a,c			;8cf2
	rrca			;8cf3
	djnz l8c92h		;8cf4
	cp e			;8cf6
	nop			;8cf7
	nop			;8cf8
	halt			;8cf9
	adc a,b			;8cfa
	add a,d			;8cfb
	add a,e			;8cfc
	ld a,a			;8cfd
	ld a,c			;8cfe
	nop			;8cff
	ld sp,07173h		;8d00
	ld l,(hl)		;8d03
	ld (hl),c		;8d04
	ld (hl),d		;8d05
	ld l,h			;8d06
	ld (0657bh),a		;8d07
	ld a,(03a3ah)		;8d0a
	ld a,(07c5bh)		;8d0d
	nop			;8d10
	nop			;8d11
	ld bc,06408h		;8d12
	ld h,(hl)		;8d15
	add a,b			;8d16
	add a,b			;8d17
	add a,b			;8d18
	add a,b			;8d19
	ld e,h			;8d1a
	ld e,d			;8d1b
	nop			;8d1c
	nop			;8d1d
	ld bc,00001h		;8d1e
	nop			;8d21
	nop			;8d22
	ld (bc),a		;8d23
	inc b			;8d24
	ld d,020h		;8d25
	dec l			;8d27
	ld d,017h		;8d28
	ld hl,0178ah		;8d2a
	nop			;8d2d
	nop			;8d2e
	ld (bc),a		;8d2f
	inc b			;8d30
	ld l,024h		;8d31
	ld h,02eh		;8d33
	adc a,(hl)		;8d35
	cpl			;8d36
	jr nc,l8cc7h		;8d37
	nop			;8d39
	nop			;8d3a
	ld (bc),a		;8d3b
	inc b			;8d3c
	or (hl)			;8d3d
	and c			;8d3e
	and d			;8d3f
	or (hl)			;8d40
	adc a,(hl)		;8d41
	cpl			;8d42
	jr nc,l8cd3h		;8d43
	ld (bc),a		;8d45
	ld (bc),a		;8d46
	ld (bc),a		;8d47
	inc b			;8d48
	or d			;8d49
	ld e,022h		;8d4a
	xor a			;8d4c
	adc a,l			;8d4d
	rra			;8d4e
	inc hl			;8d4f
	and h			;8d50
	ld (bc),a		;8d51
	ld (bc),a		;8d52
	ld (bc),a		;8d53
	inc b			;8d54
	or e			;8d55
	or l			;8d56
	or c			;8d57
	xor a			;8d58
	adc a,l			;8d59
	adc a,e			;8d5a
	adc a,h			;8d5b
	and h			;8d5c
	nop			;8d5d
	nop			;8d5e
	ld (bc),a		;8d5f
	ld (bc),a		;8d60
	ld bc,00302h		;8d61
	inc b			;8d64
	nop			;8d65
	nop			;8d66
	ld (bc),a		;8d67
	ld (bc),a		;8d68
	dec b			;8d69
	ld b,007h		;8d6a
	ex af,af'		;8d6c
	nop			;8d6d
	nop			;8d6e
	ld (bc),a		;8d6f
	ld (bc),a		;8d70
	add hl,bc		;8d71
	ld a,(bc)		;8d72
	dec bc			;8d73
	inc c			;8d74
	nop			;8d75
	nop			;8d76
	ld (bc),a		;8d77
	ld (bc),a		;8d78
	dec c			;8d79
	ld c,00fh		;8d7a
	djnz l8d7eh		;8d7c
l8d7eh:
	nop			;8d7e
	ld (bc),a		;8d7f
	inc b			;8d80
	xor h			;8d81
	dec h			;8d82
	daa			;8d83
	xor l			;8d84
	sbc a,b			;8d85
	add hl,hl		;8d86
	ld hl,(00099h)		;8d87
	nop			;8d8a
	ld (bc),a		;8d8b
	inc b			;8d8c
	xor h			;8d8d
	jr z,l8da9h		;8d8e
	xor l			;8d90
	sbc a,b			;8d91
	add hl,hl		;8d92
	ld hl,(00099h)		;8d93
	nop			;8d96
	ld (bc),a		;8d97
	inc b			;8d98
	xor (hl)		;8d99
	nop			;8d9a
	nop			;8d9b
	or b			;8d9c
	sbc a,b			;8d9d
	adc a,b			;8d9e
	adc a,c			;8d9f
	sbc a,c			;8da0
	nop			;8da1
	nop			;8da2
	inc b			;8da3
	inc bc			;8da4
l8da5h:
	or h			;8da5
	ld l,b			;8da6
	ld (hl),d		;8da7
	or d			;8da8
l8da9h:
	ld d,e			;8da9
	ld d,c			;8daa
	nop			;8dab
	sbc a,c			;8dac
	sbc a,h			;8dad
	cp h			;8dae
	jp nz,000a5h		;8daf
	nop			;8db2
	inc b			;8db3
	inc bc			;8db4
	or (hl)			;8db5
	ld l,b			;8db6
	ld (hl),d		;8db7
	cp b			;8db8
	ld l,c			;8db9
	ld l,l			;8dba
	nop			;8dbb
	xor e			;8dbc
	sbc a,a			;8dbd
	jp nz,08d8fh		;8dbe
	nop			;8dc1
	nop			;8dc2
	inc b			;8dc3
	inc bc			;8dc4
	or h			;8dc5
	ld l,b			;8dc6
	ld (hl),d		;8dc7
	or d			;8dc8
	ld d,e			;8dc9
	ld d,c			;8dca
	nop			;8dcb
	sbc a,d			;8dcc
	sbc a,(hl)		;8dcd
	cp e			;8dce
	cp d			;8dcf
	cp l			;8dd0
	nop			;8dd1
	nop			;8dd2
	inc b			;8dd3
	inc bc			;8dd4
	or (hl)			;8dd5
	ld l,b			;8dd6
	ld (hl),d		;8dd7
	cp b			;8dd8
	ld l,c			;8dd9
	ld e,h			;8dda
	nop			;8ddb
	and a			;8ddc
	and c			;8ddd
	cp d			;8dde
	cp l			;8ddf
	cp (hl)			;8de0
	nop			;8de1
	nop			;8de2
	inc b			;8de3
	inc bc			;8de4
	or h			;8de5
	ld l,b			;8de6
	ld (hl),d		;8de7
	or d			;8de8
	ld d,e			;8de9
	ld d,c			;8dea
	nop			;8deb
	sbc a,c			;8dec
	sbc a,h			;8ded
	cp l			;8dee
	cp (hl)			;8def
	and l			;8df0
	nop			;8df1
	nop			;8df2
	inc b			;8df3
	inc bc			;8df4
	or (hl)			;8df5
	ld l,b			;8df6
	ld (hl),d		;8df7
	cp b			;8df8
	ld l,c			;8df9
	ld l,l			;8dfa
	nop			;8dfb
	xor e			;8dfc
	sbc a,a			;8dfd
	cp (hl)			;8dfe
	adc a,a			;8dff
	adc a,l			;8e00
	nop			;8e01
l8e02h:
	nop			;8e02
	inc b			;8e03
	inc bc			;8e04
	or h			;8e05
	ld l,b			;8e06
	ld (hl),d		;8e07
	or d			;8e08
	ld d,e			;8e09
	ld d,c			;8e0a
	nop			;8e0b
	sbc a,d			;8e0c
	sbc a,(hl)		;8e0d
	cp e			;8e0e
	cp d			;8e0f
	cp h			;8e10
	nop			;8e11
	nop			;8e12
	inc b			;8e13
	inc bc			;8e14
	or (hl)			;8e15
	ld l,b			;8e16
	ld (hl),d		;8e17
	cp b			;8e18
	ld l,c			;8e19
	ld e,h			;8e1a
	nop			;8e1b
	and a			;8e1c
	and c			;8e1d
	cp d			;8e1e
	cp h			;8e1f
	jp nz,00301h		;8e20
	inc bc			;8e23
	ld a,(bc)		;8e24
	ld c,a			;8e25
	ld d,b			;8e26
	ld d,d			;8e27
	ld c,l			;8e28
	ld c,a			;8e29
	ld d,b			;8e2a
	ld d,d			;8e2b
	ld c,l			;8e2c
	ld c,a			;8e2d
	ld d,b			;8e2e
	adc a,(hl)		;8e2f
	sub d			;8e30
	sub h			;8e31
	sub b			;8e32
	adc a,(hl)		;8e33
	sub d			;8e34
	sub h			;8e35
	sub b			;8e36
	adc a,(hl)		;8e37
	sub d			;8e38
	sub c			;8e39
	sbc a,b			;8e3a
	cp (hl)			;8e3b
	and l			;8e3c
	sub c			;8e3d
	cp h			;8e3e
	jp nz,l91a5h		;8e3f
	sbc a,b			;8e42
	ld bc,00303h		;8e43
	ld a,(bc)		;8e46
	ld d,d			;8e47
	ld c,l			;8e48
	ld l,h			;8e49
	ld l,(hl)		;8e4a
	ld d,d			;8e4b
	ld c,l			;8e4c
	ld l,h			;8e4d
	ld l,(hl)		;8e4e
	ld d,d			;8e4f
	ld c,l			;8e50
	sub (hl)		;8e51
	and h			;8e52
	and e			;8e53
	and (hl)		;8e54
	sub (hl)		;8e55
	and h			;8e56
	and e			;8e57
	and (hl)		;8e58
	sub (hl)		;8e59
	and h			;8e5a
	sbc a,b			;8e5b
	cp (hl)			;8e5c
	and l			;8e5d
	adc a,l			;8e5e
	cp h			;8e5f
	jp nz,l8da5h		;8e60
	sbc a,b			;8e63
	cp (hl)			;8e64
	ld bc,00303h		;8e65
	ld a,(bc)		;8e68
	ld d,d			;8e69
	ld c,l			;8e6a
	ld c,a			;8e6b
	ld d,b			;8e6c
	ld d,d			;8e6d
	ld c,l			;8e6e
	ld c,a			;8e6f
	ld d,b			;8e70
	ld d,d			;8e71
	ld c,l			;8e72
	sub h			;8e73
	sub b			;8e74
	adc a,(hl)		;8e75
	sub d			;8e76
	sub h			;8e77
	sub b			;8e78
	adc a,(hl)		;8e79
	sub d			;8e7a
	sub h			;8e7b
	sub b			;8e7c
	cp (hl)			;8e7d
	and l			;8e7e
	sub c			;8e7f
	cp h			;8e80
	jp nz,l91a5h		;8e81
	sbc a,b			;8e84
	cp (hl)			;8e85
	and l			;8e86
	ld bc,00303h		;8e87
	ld a,(bc)		;8e8a
	ld l,h			;8e8b
	ld l,(hl)		;8e8c
l8e8dh:
	ld d,d			;8e8d
	ld c,l			;8e8e
	ld l,h			;8e8f
	ld l,(hl)		;8e90
	ld d,d			;8e91
	ld c,l			;8e92
	ld l,h			;8e93
	ld l,(hl)		;8e94
	and e			;8e95
	and (hl)		;8e96
	sub (hl)		;8e97
	and h			;8e98
	and e			;8e99
	and (hl)		;8e9a
	sub (hl)		;8e9b
	and h			;8e9c
	and e			;8e9d
	and (hl)		;8e9e
	and l			;8e9f
	adc a,l			;8ea0
	cp h			;8ea1
	jp nz,l8da5h		;8ea2
	sbc a,b			;8ea5
	cp (hl)			;8ea6
	and l			;8ea7
	adc a,l			;8ea8
	ld bc,00303h		;8ea9
	ld a,(bc)		;8eac
	ld c,a			;8ead
	ld d,b			;8eae
	ld d,d			;8eaf
	ld c,l			;8eb0
	ld c,a			;8eb1
	ld d,b			;8eb2
	ld d,d			;8eb3
	ld c,l			;8eb4
	ld c,a			;8eb5
	ld d,b			;8eb6
	adc a,(hl)		;8eb7
	sub d			;8eb8
	sub h			;8eb9
	sub b			;8eba
	adc a,(hl)		;8ebb
	sub d			;8ebc
	sub h			;8ebd
	sub b			;8ebe
	adc a,(hl)		;8ebf
	sub d			;8ec0
	sub c			;8ec1
	cp h			;8ec2
	jp nz,l91a5h		;8ec3
	sbc a,b			;8ec6
	cp (hl)			;8ec7
	and l			;8ec8
	sub c			;8ec9
	cp h			;8eca
	ld bc,00303h		;8ecb
	ld a,(bc)		;8ece
	ld d,d			;8ecf
	ld c,l			;8ed0
	ld l,h			;8ed1
	ld l,(hl)		;8ed2
	ld d,d			;8ed3
	ld c,l			;8ed4
	ld l,h			;8ed5
	ld l,(hl)		;8ed6
	ld d,d			;8ed7
	ld c,l			;8ed8
	sub (hl)		;8ed9
	and h			;8eda
	and e			;8edb
	and (hl)		;8edc
	sub (hl)		;8edd
	and h			;8ede
	and e			;8edf
	and (hl)		;8ee0
	sub (hl)		;8ee1
	and h			;8ee2
	cp h			;8ee3
	jp nz,l8da5h		;8ee4
	sbc a,b			;8ee7
	cp (hl)			;8ee8
	and l			;8ee9
	adc a,l			;8eea
	cp h			;8eeb
	jp nz,00301h		;8eec
	inc bc			;8eef
	ld a,(bc)		;8ef0
	ld d,d			;8ef1
	ld c,l			;8ef2
	ld c,a			;8ef3
	ld d,b			;8ef4
	ld d,d			;8ef5
	ld c,l			;8ef6
	ld c,a			;8ef7
	ld d,b			;8ef8
	ld d,d			;8ef9
	ld c,l			;8efa
	sub h			;8efb
	sub b			;8efc
	adc a,(hl)		;8efd
	sub d			;8efe
	sub h			;8eff
	sub b			;8f00
	adc a,(hl)		;8f01
	sub d			;8f02
	sub h			;8f03
	sub b			;8f04
	jp nz,l91a5h		;8f05
	sbc a,b			;8f08
	cp (hl)			;8f09
	and l			;8f0a
	sub c			;8f0b
	cp h			;8f0c
	jp nz,001a5h		;8f0d
	inc bc			;8f10
	inc bc			;8f11
	ld a,(bc)		;8f12
	ld l,h			;8f13
	ld l,(hl)		;8f14
	ld d,d			;8f15
	ld c,l			;8f16
	ld l,h			;8f17
	ld l,(hl)		;8f18
	ld d,d			;8f19
	ld c,l			;8f1a
	ld l,h			;8f1b
	ld l,(hl)		;8f1c
	and e			;8f1d
	and (hl)		;8f1e
	sub (hl)		;8f1f
	and h			;8f20
	and e			;8f21
	and (hl)		;8f22
	sub (hl)		;8f23
	and h			;8f24
	and e			;8f25
	and (hl)		;8f26
	and l			;8f27
	adc a,l			;8f28
	sbc a,b			;8f29
	cp (hl)			;8f2a
	and l			;8f2b
	adc a,l			;8f2c
	cp h			;8f2d
	jp nz,l8da5h		;8f2e
	nop			;8f31
	dec c			;8f32
	inc b			;8f33
	inc bc			;8f34
	ld e,e			;8f35
	ld a,l			;8f36
	or l			;8f37
	ld l,e			;8f38
	ld l,d			;8f39
	or e			;8f3a
	sbc a,l			;8f3b
	sbc a,e			;8f3c
	nop			;8f3d
	cp (hl)			;8f3e
	cp e			;8f3f
	cp d			;8f40
	nop			;8f41
	dec c			;8f42
	inc b			;8f43
	inc bc			;8f44
	ld e,e			;8f45
	ld a,l			;8f46
	or a			;8f47
	ld c,h			;8f48
	ld (hl),e		;8f49
	cp c			;8f4a
	and b			;8f4b
	xor b			;8f4c
	nop			;8f4d
	and l			;8f4e
	sub e			;8f4f
	cp h			;8f50
	nop			;8f51
	dec c			;8f52
	inc b			;8f53
	inc bc			;8f54
	ld e,e			;8f55
	ld a,l			;8f56
	or l			;8f57
	ld l,e			;8f58
	ld l,d			;8f59
	or e			;8f5a
	xor c			;8f5b
	sbc a,e			;8f5c
	or c			;8f5d
	sub l			;8f5e
	cp h			;8f5f
	jp nz,00d00h		;8f60
	inc b			;8f63
	inc bc			;8f64
	ld e,e			;8f65
	ld a,l			;8f66
	or a			;8f67
	ld c,(hl)		;8f68
	ld (hl),e		;8f69
	cp c			;8f6a
	and d			;8f6b
	xor d			;8f6c
	nop			;8f6d
	cp h			;8f6e
	jp nz,000bbh		;8f6f
	dec c			;8f72
	inc b			;8f73
	inc bc			;8f74
	ld e,e			;8f75
	ld a,l			;8f76
	or l			;8f77
	ld l,e			;8f78
	ld l,d			;8f79
	or e			;8f7a
	sbc a,l			;8f7b
	sbc a,e			;8f7c
	nop			;8f7d
	jp nz,0babbh		;8f7e
	nop			;8f81
	dec c			;8f82
	inc b			;8f83
	inc bc			;8f84
	ld e,e			;8f85
	ld a,l			;8f86
	or a			;8f87
	ld c,h			;8f88
	ld (hl),e		;8f89
	cp c			;8f8a
	and b			;8f8b
	xor b			;8f8c
	nop			;8f8d
	and l			;8f8e
	sub e			;8f8f
	cp l			;8f90
	nop			;8f91
	dec c			;8f92
	inc b			;8f93
	inc bc			;8f94
	ld e,e			;8f95
	ld a,l			;8f96
	or l			;8f97
	ld l,e			;8f98
	ld l,d			;8f99
	or e			;8f9a
	xor c			;8f9b
	sbc a,e			;8f9c
	or c			;8f9d
	sub l			;8f9e
	cp l			;8f9f
	cp (hl)			;8fa0
	nop			;8fa1
	dec c			;8fa2
	inc b			;8fa3
	inc bc			;8fa4
	ld e,e			;8fa5
	ld a,l			;8fa6
	or a			;8fa7
	ld c,(hl)		;8fa8
	ld (hl),e		;8fa9
	cp c			;8faa
	and d			;8fab
	xor d			;8fac
	nop			;8fad
	sbc a,b			;8fae
	cp (hl)			;8faf
	cp e			;8fb0
	ld sp,hl		;8fb1
	adc a,a			;8fb2
	ld c,l			;8fb3
	sub b			;8fb4
	and c			;8fb5
	sub b			;8fb6
	push af			;8fb7
	sub b			;8fb8
	defb 0fdh,090h,005h ;illegal sequence	;8fb9
	sub c			;8fbc
	dec c			;8fbd
	sub c			;8fbe
	dec d			;8fbf
	sub c			;8fc0
	dec e			;8fc1
	sub c			;8fc2
	dec h			;8fc3
	sub c			;8fc4
	dec l			;8fc5
	sub c			;8fc6
	dec (hl)		;8fc7
	sub c			;8fc8
	ld b,c			;8fc9
	sub c			;8fca
	ld h,c			;8fcb
	sub c			;8fcc
	ld h,a			;8fcd
	sub c			;8fce
	ld l,l			;8fcf
	sub c			;8fd0
	ld (hl),e		;8fd1
	sub c			;8fd2
	ld a,c			;8fd3
	sub c			;8fd4
	dec (hl)		;8fd5
	sub d			;8fd6
	add a,c			;8fd7
	sub d			;8fd8
	cp e			;8fd9
	sub d			;8fda
	ex (sp),hl		;8fdb
	sub d			;8fdc
	rrca			;8fdd
	sub e			;8fde
	ld c,e			;8fdf
	sub e			;8fe0
	add a,c			;8fe1
	sub e			;8fe2
	add a,093h		;8fe3
	add a,093h		;8fe5
	rst 10h			;8fe7
	sub c			;8fe8
	add a,093h		;8fe9
	ld a,(bc)		;8feb
	sub h			;8fec
	ld c,(hl)		;8fed
	sub h			;8fee
	sub d			;8fef
	sub h			;8ff0
	sub 094h		;8ff1
	ld a,(de)		;8ff3
	sub l			;8ff4
	ld e,(hl)		;8ff5
	sub l			;8ff6
	and d			;8ff7
	sub l			;8ff8
	nop			;8ff9
	nop			;8ffa
	ex af,af'		;8ffb
	ld a,(bc)		;8ffc
	nop			;8ffd
	nop			;8ffe
	nop			;8fff
	ld (de),a		;9000
	ld b,h			;9001
	ld b,b			;9002
	inc d			;9003
	nop			;9004
	nop			;9005
l9006h:
	nop			;9006
	nop			;9007
	nop			;9008
	dec e			;9009
	jr z,l904bh		;900a
	cpl			;900c
	ld b,d			;900d
	ld a,(de)		;900e
	nop			;900f
	nop			;9010
	nop			;9011
	add hl,de		;9012
	ld b,e			;9013
	ld c,d			;9014
	inc l			;9015
	ld e,01fh		;9016
	inc (hl)		;9018
	dec sp			;9019
	rrca			;901a
	inc c			;901b
	add hl,sp		;901c
	ld b,l			;901d
	ld e,01fh		;901e
	jr nz,l9043h		;9020
	ld l,047h		;9022
	djnz $+15		;9024
	ld b,(hl)		;9026
	inc a			;9027
	jr nz,l904bh		;9028
	ld (03d23h),hl		;902a
	ld b,c			;902d
	ld de,0350eh		;902e
	ld sp,02733h		;9031
	dec h			;9034
	ld (01548h),a		;9035
	nop			;9038
	nop			;9039
	nop			;903a
	rla			;903b
	ld c,c			;903c
	ld a,030h		;903d
	scf			;903f
	jr l9042h		;9040
l9042h:
	nop			;9042
l9043h:
	nop			;9043
	nop			;9044
	nop			;9045
	inc de			;9046
	ld a,(01638h)		;9047
	nop			;904a
l904bh:
	nop			;904b
	nop			;904c
	nop			;904d
	nop			;904e
	ex af,af'		;904f
	ld a,(bc)		;9050
	nop			;9051
	nop			;9052
	nop			;9053
	ld (de),a		;9054
	ld b,h			;9055
	ld b,b			;9056
	inc d			;9057
	nop			;9058
	nop			;9059
	nop			;905a
	nop			;905b
	nop			;905c
	inc e			;905d
	jr z,l909fh		;905e
	cpl			;9060
	ld (hl),01ah		;9061
	nop			;9063
	nop			;9064
	nop			;9065
	dec de			;9066
	ld hl,(02b29h)		;9067
	ld (03423h),hl		;906a
	dec sp			;906d
	rrca			;906e
	inc c			;906f
	add hl,sp		;9070
	ld b,l			;9071
	ld (02523h),hl		;9072
	ld (0472eh),a		;9075
	djnz $+15		;9078
	ld b,(hl)		;907a
	inc a			;907b
	dec h			;907c
	ld (01f1eh),a		;907d
	dec a			;9080
	ld b,c			;9081
	ld de,0350eh		;9082
	ld sp,02624h		;9085
	jr nz,l90abh		;9088
	ld c,b			;908a
	dec d			;908b
	nop			;908c
	nop			;908d
	nop			;908e
	rla			;908f
	ld c,c			;9090
	ld a,030h		;9091
	scf			;9093
	jr l9096h		;9094
l9096h:
	nop			;9096
	nop			;9097
	nop			;9098
	nop			;9099
	inc de			;909a
	ld a,(01638h)		;909b
	nop			;909e
l909fh:
	nop			;909f
	nop			;90a0
	nop			;90a1
	nop			;90a2
	ex af,af'		;90a3
	ld a,(bc)		;90a4
	nop			;90a5
	nop			;90a6
	nop			;90a7
	ld (de),a		;90a8
	ld b,h			;90a9
	ld b,b			;90aa
l90abh:
	inc d			;90ab
	nop			;90ac
	nop			;90ad
	nop			;90ae
	nop			;90af
	nop			;90b0
	inc e			;90b1
	jr z,l90f3h		;90b2
	cpl			;90b4
	ld (hl),01ah		;90b5
	nop			;90b7
	nop			;90b8
	nop			;90b9
	dec de			;90ba
	ld hl,(00b29h)		;90bb
	ld a,(bc)		;90be
	call z,03b34h		;90bf
	rrca			;90c2
	inc c			;90c3
	add hl,sp		;90c4
	ld b,l			;90c5
	ld a,(bc)		;90c6
	call z,009cdh		;90c7
	ld l,047h		;90ca
	djnz $+15		;90cc
	ld b,(hl)		;90ce
	inc a			;90cf
	call 00a09h		;90d0
	call z,0413dh		;90d3
	ld de,0350eh		;90d6
	ld sp,02733h		;90d9
	call 04809h		;90dc
	dec d			;90df
	nop			;90e0
	nop			;90e1
	nop			;90e2
	rla			;90e3
	ld c,c			;90e4
	ld a,030h		;90e5
	scf			;90e7
	jr l90eah		;90e8
l90eah:
	nop			;90ea
	nop			;90eb
	nop			;90ec
	nop			;90ed
	inc de			;90ee
	ld a,(01638h)		;90ef
	nop			;90f2
l90f3h:
	nop			;90f3
	nop			;90f4
	nop			;90f5
	nop			;90f6
	ld (bc),a		;90f7
	ld (bc),a		;90f8
	ld bc,0b802h		;90f9
	cp c			;90fc
	nop			;90fd
	nop			;90fe
	ld (bc),a		;90ff
	ld (bc),a		;9100
	inc bc			;9101
	inc b			;9102
	cp d			;9103
	cp e			;9104
	nop			;9105
	nop			;9106
	ld (bc),a		;9107
	ld (bc),a		;9108
	dec b			;9109
	ld b,0b8h		;910a
	cp c			;910c
	nop			;910d
	nop			;910e
	ld (bc),a		;910f
	ld (bc),a		;9110
	rlca			;9111
	ex af,af'		;9112
	cp d			;9113
	cp e			;9114
	nop			;9115
	nop			;9116
	ld (bc),a		;9117
	ld (bc),a		;9118
	cp h			;9119
	cp l			;911a
	add hl,bc		;911b
	ld a,(bc)		;911c
	nop			;911d
	nop			;911e
	ld (bc),a		;911f
	ld (bc),a		;9120
	cp (hl)			;9121
	cp a			;9122
	dec bc			;9123
	inc c			;9124
	nop			;9125
	nop			;9126
	ld (bc),a		;9127
	ld (bc),a		;9128
	cp h			;9129
	cp l			;912a
	dec c			;912b
	ld c,000h		;912c
	nop			;912e
	ld (bc),a		;912f
	ld (bc),a		;9130
	cp (hl)			;9131
	cp a			;9132
	rrca			;9133
	djnz l9136h		;9134
l9136h:
	nop			;9136
	ld (bc),a		;9137
	inc b			;9138
	xor d			;9139
	xor h			;913a
	xor l			;913b
	xor e			;913c
	or h			;913d
	or l			;913e
	or (hl)			;913f
	or a			;9140
	nop			;9141
	nop			;9142
	ld (bc),a		;9143
	inc b			;9144
	or b			;9145
	or c			;9146
	or d			;9147
	or e			;9148
	xor b			;9149
	xor (hl)		;914a
	xor a			;914b
	xor c			;914c
	nop			;914d
	nop			;914e
	ld (bc),a		;914f
	inc b			;9150
	nop			;9151
	nop			;9152
	nop			;9153
	nop			;9154
	ret nz			;9155
	pop bc			;9156
	jp nz,000c3h		;9157
	nop			;915a
	ld bc,0c404h		;915b
	push bc			;915e
	add a,0c7h		;915f
	nop			;9161
	nop			;9162
	ld (bc),a		;9163
	ld bc,0cdcch		;9164
	nop			;9167
	nop			;9168
	ld bc,0ca02h		;9169
	rlc c			;916c
	nop			;916e
	ld bc,0cc02h		;916f
	call 00000h		;9172
	ld bc,0ca02h		;9175
	rlc b			;9178
	nop			;917a
	add hl,bc		;917b
	ld a,(bc)		;917c
	nop			;917d
	nop			;917e
	nop			;917f
	nop			;9180
	sbc a,b			;9181
	sbc a,c			;9182
	add hl,sp		;9183
	ld e,c			;9184
	xor d			;9185
	xor a			;9186
	nop			;9187
	nop			;9188
	nop			;9189
	sbc a,d			;918a
	ld a,d			;918b
	ld l,a			;918c
	ld e,d			;918d
	ld a,(01f3bh)		;918e
	nop			;9191
	nop			;9192
	nop			;9193
	or c			;9194
	and a			;9195
	ld (hl),b		;9196
	ld e,e			;9197
	ld (hl),h		;9198
	adc a,a			;9199
	jr nz,l919ch		;919a
l919ch:
	nop			;919c
	sub a			;919d
	or (hl)			;919e
	or a			;919f
	ccf			;91a0
	ld (hl),d		;91a1
	xor a			;91a2
	ld (hl),b		;91a3
	ld c,(hl)		;91a4
l91a5h:
	nop			;91a5
	nop			;91a6
	sbc a,b			;91a7
	cp d			;91a8
	cp e			;91a9
	ld d,h			;91aa
	or c			;91ab
	ld b,b			;91ac
	dec h			;91ad
	ld h,000h		;91ae
	nop			;91b0
	sbc a,c			;91b1
	sbc a,l			;91b2
	ld a,e			;91b3
	ld d,e			;91b4
	or b			;91b5
	scf			;91b6
	jr c,l91f2h		;91b7
	nop			;91b9
	sbc a,c			;91ba
	ld d,c			;91bb
	ld c,l			;91bc
	ld a,c			;91bd
	ld l,(hl)		;91be
	ld l,a			;91bf
	ld (hl),e		;91c0
	ld (hl),l		;91c1
	ret nz			;91c2
	sbc a,c			;91c3
	ld d,c			;91c4
	ld c,l			;91c5
	xor d			;91c6
	xor h			;91c7
	xor d			;91c8
	xor e			;91c9
	jp 05762h		;91ca
	ld d,c			;91cd
	ld c,l			;91ce
	xor (hl)		;91cf
	and (hl)		;91d0
	xor (hl)		;91d1
	and (hl)		;91d2
	ld (hl),c		;91d3
	ld e,(hl)		;91d4
	ld h,b			;91d5
	ld h,c			;91d6
	nop			;91d7
	nop			;91d8
	add hl,bc		;91d9
	ld a,(bc)		;91da
	ld l,(hl)		;91db
	xor e			;91dc
	adc a,h			;91dd
	and h			;91de
	sbc a,(hl)		;91df
	nop			;91e0
	nop			;91e1
	nop			;91e2
	nop			;91e3
	nop			;91e4
	inc e			;91e5
	ld c,b			;91e6
	ret nz			;91e7
	pop bc			;91e8
	jp nz,l9ec3h		;91e9
	nop			;91ec
	nop			;91ed
	nop			;91ee
	dec e			;91ef
	ld (hl),a		;91f0
	ld h,h			;91f1
l91f2h:
	ld h,(hl)		;91f2
	ld l,b			;91f3
	adc a,c			;91f4
	add a,d			;91f5
	and e			;91f6
	nop			;91f7
	nop			;91f8
	ld (hl),h		;91f9
	ld b,e			;91fa
	ld h,l			;91fb
	ld h,h			;91fc
	ld l,c			;91fd
	ld l,l			;91fe
	sbc a,(hl)		;91ff
	sbc a,a			;9200
	nop			;9201
	nop			;9202
	daa			;9203
	jr z,l924dh		;9204
	ld e,e			;9206
	ld h,e			;9207
	ld c,a			;9208
	ld h,e			;9209
	ld c,a			;920a
	and e			;920b
	nop			;920c
	add hl,hl		;920d
	ld hl,(0772bh)		;920e
	ld e,d			;9211
	ld e,h			;9212
	ld e,d			;9213
	ld e,h			;9214
	halt			;9215
	and l			;9216
	dec (hl)		;9217
	ld (hl),03bh		;9218
	inc a			;921a
	add a,d			;921b
	add a,d			;921c
	add a,d			;921d
	add a,0c7h		;921e
	or d			;9220
	ld e,l			;9221
	ret z			;9222
	ret			;9223
	add a,0cbh		;9224
	ret z			;9226
	ret			;9227
	push bc			;9228
	jp nz,058b3h		;9229
	adc a,b			;922c
	adc a,c			;922d
	adc a,d			;922e
	adc a,e			;922f
	adc a,b			;9230
	adc a,c			;9231
	adc a,h			;9232
	and c			;9233
	nop			;9234
	nop			;9235
	nop			;9236
	add hl,bc		;9237
	ex af,af'		;9238
	nop			;9239
	nop			;923a
	nop			;923b
	nop			;923c
	nop			;923d
	xor a			;923e
	ld l,(hl)		;923f
	nop			;9240
	nop			;9241
	nop			;9242
	nop			;9243
	nop			;9244
	dec sp			;9245
	rra			;9246
	inc e			;9247
	ld c,b			;9248
	nop			;9249
	nop			;924a
	nop			;924b
	halt			;924c
l924dh:
	ld l,h			;924d
	jr nz,$+31		;924e
	ld (hl),a		;9250
	nop			;9251
	nop			;9252
	jr nc,l92aeh		;9253
	dec l			;9255
	dec a			;9256
	ld b,c			;9257
	ld b,e			;9258
	nop			;9259
	ld d,l			;925a
	inc l			;925b
	dec l			;925c
	ld l,02fh		;925d
	ld b,d			;925f
	nop			;9260
	xor l			;9261
	ld sp,02e2dh		;9262
	ld l,b			;9265
	ld c,c			;9266
	nop			;9267
	nop			;9268
	rra			;9269
	inc e			;926a
	ld (03433h),a		;926b
	nop			;926e
	nop			;926f
	nop			;9270
	jr nz,l9290h		;9271
	ld d,b			;9273
	and a			;9274
	nop			;9275
	nop			;9276
	nop			;9277
	nop			;9278
	ld c,d			;9279
	ld c,e			;927a
	ld d,(hl)		;927b
	nop			;927c
	nop			;927d
	nop			;927e
	nop			;927f
	nop			;9280
	nop			;9281
	nop			;9282
	ld b,009h		;9283
	nop			;9285
	nop			;9286
	nop			;9287
	nop			;9288
	nop			;9289
	nop			;928a
	xor a			;928b
	ld l,(hl)		;928c
	nop			;928d
	nop			;928e
	nop			;928f
l9290h:
	nop			;9290
	add a,h			;9291
	ld c,l			;9292
	ld c,(hl)		;9293
	rra			;9294
	inc e			;9295
	ld c,b			;9296
	or b			;9297
	and (hl)		;9298
	ld c,a			;9299
	ld d,b			;929a
	ld d,c			;929b
	ld a,c			;929c
	jr nz,l92bch		;929d
	ld (hl),a		;929f
	rra			;92a0
	inc e			;92a1
	ld b,h			;92a2
	ld b,l			;92a3
	ld b,(hl)		;92a4
	ld h,a			;92a5
	ld c,h			;92a6
	ld (hl),h		;92a7
	ld b,e			;92a8
	jr nz,l92c8h		;92a9
	ld c,b			;92ab
	ld l,d			;92ac
	ld l,e			;92ad
l92aeh:
	ld a,b			;92ae
	nop			;92af
	nop			;92b0
	nop			;92b1
	and b			;92b2
	ld l,h			;92b3
	ld d,d			;92b4
	nop			;92b5
	nop			;92b6
	nop			;92b7
	nop			;92b8
	nop			;92b9
	nop			;92ba
	nop			;92bb
l92bch:
	nop			;92bc
	inc b			;92bd
	add hl,bc		;92be
	sub (hl)		;92bf
	sub a			;92c0
	sbc a,l			;92c1
	sbc a,h			;92c2
	ld (hl),d		;92c3
	add a,c			;92c4
	adc a,b			;92c5
	xor (hl)		;92c6
	ld l,(hl)		;92c7
l92c8h:
	rra			;92c8
	inc e			;92c9
	ld c,e			;92ca
	ld c,h			;92cb
	ld c,h			;92cc
	ld c,h			;92cd
	ld e,l			;92ce
	rra			;92cf
	inc e			;92d0
	jr nz,l92f0h		;92d1
	add a,b			;92d3
	inc a			;92d4
	inc a			;92d5
	inc a			;92d6
	adc a,d			;92d7
	jr nz,l92f7h		;92d8
	sbc a,e			;92da
	cp b			;92db
	cp c			;92dc
	ld h,(hl)		;92dd
	ld a,0a8h		;92de
	xor c			;92e0
	ld c,(hl)		;92e1
	ld (hl),h		;92e2
	nop			;92e3
	nop			;92e4
	dec b			;92e5
	ex af,af'		;92e6
	sub (hl)		;92e7
	sub a			;92e8
	sbc a,(hl)		;92e9
	nop			;92ea
	nop			;92eb
	nop			;92ec
	nop			;92ed
	nop			;92ee
	rra			;92ef
l92f0h:
	inc e			;92f0
	ld d,d			;92f1
	ld c,d			;92f2
	sbc a,a			;92f3
	sbc a,(hl)		;92f4
	nop			;92f5
	nop			;92f6
l92f7h:
	jr nz,l9316h		;92f7
	ld b,a			;92f9
	ld d,e			;92fa
	ld d,h			;92fb
	xor b			;92fc
	xor l			;92fd
	ld l,(hl)		;92fe
	add a,a			;92ff
	ld e,h			;9300
	ld (hl),c		;9301
	dec a			;9302
	ld a,03fh		;9303
	rra			;9305
	inc e			;9306
	nop			;9307
	nop			;9308
	nop			;9309
	adc a,(hl)		;930a
	ld h,e			;930b
	ld h,c			;930c
	jr nz,l932ch		;930d
	nop			;930f
	nop			;9310
	ex af,af'		;9311
	rlca			;9312
	sub (hl)		;9313
	sub a			;9314
	nop			;9315
l9316h:
	nop			;9316
	nop			;9317
	nop			;9318
	nop			;9319
	rra			;931a
	inc e			;931b
	and l			;931c
	nop			;931d
	nop			;931e
	nop			;931f
	nop			;9320
	jr nz,l9340h		;9321
	ld e,(hl)		;9323
	and b			;9324
	nop			;9325
	nop			;9326
	nop			;9327
	or d			;9328
	ld a,b			;9329
	ld e,a			;932a
	ld d,(hl)		;932b
l932ch:
	and b			;932c
	nop			;932d
	nop			;932e
	nop			;932f
	or l			;9330
	ld b,b			;9331
	ld a,e			;9332
	ld d,(hl)		;9333
	and b			;9334
	nop			;9335
	nop			;9336
	nop			;9337
	ld a,l			;9338
	ld b,b			;9339
	ld a,(hl)		;933a
	ld l,l			;933b
	add a,(hl)		;933c
	nop			;933d
	nop			;933e
	nop			;933f
l9340h:
	ld (hl),e		;9340
	ld b,c			;9341
	rra			;9342
	inc e			;9343
	nop			;9344
	nop			;9345
	nop			;9346
	nop			;9347
	ld h,l			;9348
	jr nz,l9368h		;9349
	nop			;934b
	nop			;934c
	ld a,(bc)		;934d
	dec b			;934e
	sub (hl)		;934f
	sub a			;9350
	nop			;9351
	nop			;9352
	nop			;9353
	rra			;9354
	inc e			;9355
	sbc a,b			;9356
	nop			;9357
	nop			;9358
	jr nz,l9378h		;9359
	xor c			;935b
	and c			;935c
	nop			;935d
	ld a,h			;935e
	ld (hl),l		;935f
	ld d,a			;9360
	and d			;9361
	nop			;9362
	or h			;9363
	ld b,d			;9364
	ld d,l			;9365
	ld c,c			;9366
	nop			;9367
l9368h:
	or e			;9368
	ld l,c			;9369
	ld b,e			;936a
	add a,e			;936b
	and c			;936c
	nop			;936d
	ld l,d			;936e
	ld b,h			;936f
	ld e,b			;9370
	and d			;9371
	nop			;9372
	ld l,e			;9373
	ld b,l			;9374
	adc a,l			;9375
	add a,l			;9376
	nop			;9377
l9378h:
	adc a,e			;9378
	ld b,(hl)		;9379
	rra			;937a
	inc e			;937b
	nop			;937c
	nop			;937d
	ld h,a			;937e
	jr nz,l939eh		;937f
	nop			;9381
	nop			;9382
	dec b			;9383
	dec c			;9384
	nop			;9385
	nop			;9386
	nop			;9387
	nop			;9388
	nop			;9389
	inc bc			;938a
	inc b			;938b
	dec b			;938c
	nop			;938d
	nop			;938e
	nop			;938f
	nop			;9390
	nop			;9391
	nop			;9392
	ld (bc),a		;9393
	ld d,010h		;9394
	dec h			;9396
	ld h,027h		;9397
	jr z,$+8		;9399
	rlca			;939b
	ex af,af'		;939c
	nop			;939d
l939eh:
	nop			;939e
	ld a,(bc)		;939f
	jr $+15			;93a0
	rrca			;93a2
	inc de			;93a3
	inc de			;93a4
	add hl,hl		;93a5
	ld hl,(0212bh)		;93a6
	dec de			;93a9
	rla			;93aa
	ld de,0191ah		;93ab
	ld c,014h		;93ae
	add hl,bc		;93b0
	ld e,01eh		;93b1
	inc hl			;93b3
	inc h			;93b4
	ld (de),a		;93b5
	dec d			;93b6
	dec d			;93b7
	ld (01a00h),hl		;93b8
	dec bc			;93bb
	inc c			;93bc
	nop			;93bd
	nop			;93be
	nop			;93bf
	nop			;93c0
	nop			;93c1
	nop			;93c2
	nop			;93c3
	nop			;93c4
	nop			;93c5
	nop			;93c6
	nop			;93c7
	inc b			;93c8
	djnz l93cbh		;93c9
l93cbh:
	nop			;93cb
	nop			;93cc
	nop			;93cd
	nop			;93ce
	nop			;93cf
	nop			;93d0
	nop			;93d1
	nop			;93d2
	nop			;93d3
	nop			;93d4
	nop			;93d5
	nop			;93d6
	add a,0c7h		;93d7
	or d			;93d9
	nop			;93da
	nop			;93db
	nop			;93dc
	nop			;93dd
	nop			;93de
	nop			;93df
	nop			;93e0
	ret z			;93e1
	ret			;93e2
	add a,0cbh		;93e3
	ret z			;93e5
	ret			;93e6
	push bc			;93e7
	jp nz,000b3h		;93e8
	nop			;93eb
	nop			;93ec
	nop			;93ed
	nop			;93ee
	nop			;93ef
	nop			;93f0
	adc a,b			;93f1
	adc a,c			;93f2
	adc a,d			;93f3
	adc a,e			;93f4
	adc a,b			;93f5
	adc a,c			;93f6
	adc a,h			;93f7
	and c			;93f8
	nop			;93f9
	add a,l			;93fa
	add a,e			;93fb
	add a,(hl)		;93fc
	ld a,d			;93fd
	add a,h			;93fe
	ld a,l			;93ff
	add a,(hl)		;9400
	ld a,d			;9401
	add a,l			;9402
	add a,e			;9403
	add a,(hl)		;9404
	ld a,d			;9405
	add a,h			;9406
	sub c			;9407
	sub e			;9408
	sub h			;9409
	nop			;940a
	nop			;940b
	inc b			;940c
	djnz l940fh		;940d
l940fh:
	nop			;940f
	nop			;9410
	nop			;9411
	nop			;9412
	nop			;9413
	nop			;9414
	nop			;9415
	nop			;9416
	nop			;9417
	nop			;9418
	nop			;9419
	nop			;941a
	add a,0c7h		;941b
	or h			;941d
	nop			;941e
	nop			;941f
	nop			;9420
	nop			;9421
	nop			;9422
	nop			;9423
	nop			;9424
	add a,0cbh		;9425
	call z,0c6cdh		;9427
	set 1,d			;942a
	pop bc			;942c
	or l			;942d
	nop			;942e
	nop			;942f
	nop			;9430
	nop			;9431
	nop			;9432
	nop			;9433
	nop			;9434
	adc a,l			;9435
	adc a,(hl)		;9436
	adc a,a			;9437
	cp h			;9438
	adc a,l			;9439
	adc a,(hl)		;943a
	cp l			;943b
	and d			;943c
	nop			;943d
	add a,e			;943e
	add a,(hl)		;943f
	add a,a			;9440
	add a,h			;9441
	ld a,l			;9442
	add a,(hl)		;9443
	add a,a			;9444
	add a,l			;9445
	add a,e			;9446
	add a,(hl)		;9447
	add a,a			;9448
	add a,h			;9449
	ld a,l			;944a
	add a,(hl)		;944b
	sub l			;944c
	sub d			;944d
	nop			;944e
	nop			;944f
	inc b			;9450
	djnz l9453h		;9451
l9453h:
	nop			;9453
	nop			;9454
	nop			;9455
	nop			;9456
	nop			;9457
	nop			;9458
	nop			;9459
	nop			;945a
	nop			;945b
	nop			;945c
	nop			;945d
	nop			;945e
	add a,0c7h		;945f
	or d			;9461
	nop			;9462
	nop			;9463
	nop			;9464
	nop			;9465
	nop			;9466
	nop			;9467
	nop			;9468
	add a,0cbh		;9469
	ret z			;946b
	ret			;946c
	add a,0cbh		;946d
	push bc			;946f
	jp nz,000b3h		;9470
	nop			;9473
	nop			;9474
	nop			;9475
	nop			;9476
	nop			;9477
	nop			;9478
	adc a,d			;9479
	adc a,e			;947a
	adc a,b			;947b
	adc a,c			;947c
	adc a,d			;947d
	adc a,e			;947e
	cp (hl)			;947f
	and c			;9480
	nop			;9481
	add a,(hl)		;9482
	ld a,d			;9483
	add a,h			;9484
	ld a,l			;9485
	add a,(hl)		;9486
	ld a,d			;9487
	add a,l			;9488
	add a,e			;9489
	add a,(hl)		;948a
	ld a,d			;948b
	add a,h			;948c
	ld a,l			;948d
	add a,(hl)		;948e
	sub (hl)		;948f
	sub d			;9490
	add a,c			;9491
	nop			;9492
	nop			;9493
	inc b			;9494
	djnz l9497h		;9495
l9497h:
	nop			;9497
	nop			;9498
	nop			;9499
	nop			;949a
	nop			;949b
	nop			;949c
	nop			;949d
	nop			;949e
	nop			;949f
	nop			;94a0
	nop			;94a1
	nop			;94a2
	add a,0c7h		;94a3
	or h			;94a5
	nop			;94a6
	nop			;94a7
	nop			;94a8
	nop			;94a9
	nop			;94aa
	nop			;94ab
	nop			;94ac
	call z,0c6cdh		;94ad
	set 1,h			;94b0
	call 0c1c4h		;94b2
	or l			;94b5
	nop			;94b6
	nop			;94b7
	nop			;94b8
	nop			;94b9
	nop			;94ba
	nop			;94bb
	nop			;94bc
	adc a,a			;94bd
	cp h			;94be
	adc a,l			;94bf
	adc a,(hl)		;94c0
	adc a,a			;94c1
	cp h			;94c2
	cp a			;94c3
	and h			;94c4
	nop			;94c5
	add a,a			;94c6
	add a,h			;94c7
	ld a,l			;94c8
	add a,(hl)		;94c9
	add a,a			;94ca
	add a,l			;94cb
	add a,e			;94cc
	add a,(hl)		;94cd
	add a,a			;94ce
	add a,h			;94cf
	ld a,l			;94d0
	add a,(hl)		;94d1
	add a,a			;94d2
	add a,l			;94d3
	add a,c			;94d4
	sub e			;94d5
	nop			;94d6
	nop			;94d7
	inc b			;94d8
	djnz l94dbh		;94d9
l94dbh:
	nop			;94db
	nop			;94dc
	nop			;94dd
	nop			;94de
	nop			;94df
	nop			;94e0
	nop			;94e1
	nop			;94e2
	nop			;94e3
	nop			;94e4
	nop			;94e5
	nop			;94e6
	add a,0c7h		;94e7
	or d			;94e9
	nop			;94ea
	nop			;94eb
	nop			;94ec
	nop			;94ed
	nop			;94ee
	nop			;94ef
	nop			;94f0
	ret z			;94f1
	ret			;94f2
	add a,0cbh		;94f3
	ret z			;94f5
	ret			;94f6
	push bc			;94f7
	jp nz,000b3h		;94f8
	nop			;94fb
	nop			;94fc
	nop			;94fd
	nop			;94fe
	nop			;94ff
	nop			;9500
	adc a,b			;9501
	adc a,c			;9502
	adc a,d			;9503
	adc a,e			;9504
	adc a,b			;9505
	adc a,c			;9506
	adc a,h			;9507
	and c			;9508
	nop			;9509
	add a,h			;950a
	ld a,l			;950b
	add a,(hl)		;950c
	ld a,d			;950d
	add a,l			;950e
	add a,e			;950f
	add a,(hl)		;9510
	ld a,d			;9511
	add a,h			;9512
	ld a,l			;9513
	add a,(hl)		;9514
	ld a,d			;9515
	add a,l			;9516
	add a,c			;9517
	sub e			;9518
	sub h			;9519
	nop			;951a
	nop			;951b
	inc b			;951c
	djnz l951fh		;951d
l951fh:
	nop			;951f
	nop			;9520
	nop			;9521
	nop			;9522
	nop			;9523
	nop			;9524
	nop			;9525
	nop			;9526
	nop			;9527
	nop			;9528
	nop			;9529
	nop			;952a
	add a,0c7h		;952b
	or h			;952d
	nop			;952e
	nop			;952f
	nop			;9530
	nop			;9531
	nop			;9532
	nop			;9533
	nop			;9534
	add a,0cbh		;9535
	call z,0c6cdh		;9537
	set 1,d			;953a
	pop bc			;953c
	or l			;953d
	nop			;953e
	nop			;953f
	nop			;9540
	nop			;9541
	nop			;9542
	nop			;9543
	nop			;9544
	adc a,l			;9545
	adc a,(hl)		;9546
	adc a,a			;9547
	cp h			;9548
	adc a,l			;9549
	adc a,(hl)		;954a
	cp l			;954b
	and d			;954c
	nop			;954d
	ld a,l			;954e
	add a,(hl)		;954f
	add a,a			;9550
	add a,l			;9551
	add a,e			;9552
	add a,(hl)		;9553
	add a,a			;9554
	add a,h			;9555
	ld a,l			;9556
	add a,(hl)		;9557
	add a,a			;9558
	add a,l			;9559
	add a,e			;955a
	add a,(hl)		;955b
	sub l			;955c
	sub b			;955d
	nop			;955e
	nop			;955f
	inc b			;9560
	djnz l9563h		;9561
l9563h:
	nop			;9563
	nop			;9564
	nop			;9565
	nop			;9566
	nop			;9567
	nop			;9568
	nop			;9569
	nop			;956a
	nop			;956b
	nop			;956c
	nop			;956d
	nop			;956e
	add a,0c7h		;956f
	or d			;9571
	nop			;9572
	nop			;9573
	nop			;9574
	nop			;9575
	nop			;9576
	nop			;9577
	nop			;9578
	add a,0cbh		;9579
	ret z			;957b
	ret			;957c
	add a,0cbh		;957d
	push bc			;957f
	jp nz,000b3h		;9580
	nop			;9583
	nop			;9584
	nop			;9585
	nop			;9586
	nop			;9587
	nop			;9588
	adc a,d			;9589
	adc a,e			;958a
	adc a,b			;958b
	adc a,c			;958c
	adc a,d			;958d
	adc a,e			;958e
	cp (hl)			;958f
	and c			;9590
	nop			;9591
	add a,(hl)		;9592
	ld a,d			;9593
	add a,l			;9594
	add a,e			;9595
	add a,(hl)		;9596
	ld a,d			;9597
	add a,h			;9598
	ld a,l			;9599
	add a,(hl)		;959a
	ld a,d			;959b
	add a,l			;959c
	add a,e			;959d
	add a,(hl)		;959e
	sub (hl)		;959f
	sub b			;95a0
	sub c			;95a1
	nop			;95a2
	nop			;95a3
	inc b			;95a4
	djnz l95a7h		;95a5
l95a7h:
	nop			;95a7
	nop			;95a8
	nop			;95a9
	nop			;95aa
	nop			;95ab
	nop			;95ac
	nop			;95ad
	nop			;95ae
	nop			;95af
	nop			;95b0
	nop			;95b1
	nop			;95b2
	add a,0c7h		;95b3
	or h			;95b5
	nop			;95b6
	nop			;95b7
	nop			;95b8
	nop			;95b9
	nop			;95ba
	nop			;95bb
	nop			;95bc
	call z,0c6cdh		;95bd
	set 1,h			;95c0
	call 0c1c4h		;95c2
	or l			;95c5
	nop			;95c6
	nop			;95c7
	nop			;95c8
	nop			;95c9
	nop			;95ca
	nop			;95cb
	nop			;95cc
	adc a,a			;95cd
	cp h			;95ce
	adc a,l			;95cf
	adc a,(hl)		;95d0
	adc a,a			;95d1
	cp h			;95d2
	cp a			;95d3
	and h			;95d4
	nop			;95d5
	add a,a			;95d6
	add a,l			;95d7
	add a,e			;95d8
	add a,(hl)		;95d9
	add a,a			;95da
	add a,h			;95db
	ld a,l			;95dc
	add a,(hl)		;95dd
	add a,a			;95de
	add a,l			;95df
	add a,e			;95e0
	add a,(hl)		;95e1
	add a,a			;95e2
	add a,h			;95e3
	sub c			;95e4
	sub e			;95e5
	ld bc,00d96h		;95e6
	sub (hl)		;95e9
	ld d,c			;95ea
	sub (hl)		;95eb
	ld e,c			;95ec
	sub (hl)		;95ed
	ld h,c			;95ee
	sub (hl)		;95ef
	ld l,c			;95f0
	sub (hl)		;95f1
	ld sp,03996h		;95f2
	sub (hl)		;95f5
	ld b,c			;95f6
	sub (hl)		;95f7
	ld c,c			;95f8
	sub (hl)		;95f9
	call m,00095h		;95fa
	nop			;95fd
	ld bc,0cd01h		;95fe
	nop			;9601
	nop			;9602
	ld (bc),a		;9603
	inc b			;9604
	call nz,0c1c0h		;9605
	push bc			;9608
	cp h			;9609
	cp l			;960a
	cp (hl)			;960b
	cp a			;960c
	nop			;960d
	nop			;960e
	ld (bc),a		;960f
	inc b			;9610
	cp h			;9611
	cp l			;9612
	cp (hl)			;9613
	cp a			;9614
	call nz,0c1c0h		;9615
	push bc			;9618
	nop			;9619
	nop			;961a
	ld (bc),a		;961b
	inc b			;961c
	add a,0c7h		;961d
	ret z			;961f
	ret			;9620
	cp h			;9621
	jp nz,0bfc3h		;9622
	nop			;9625
	nop			;9626
	ld (bc),a		;9627
	inc b			;9628
	cp h			;9629
	jp nz,0bfc3h		;962a
	add a,0c7h		;962d
	ret z			;962f
	ret			;9630
	nop			;9631
	nop			;9632
	ld (bc),a		;9633
	ld (bc),a		;9634
	or a			;9635
	cp b			;9636
	xor a			;9637
	or b			;9638
	nop			;9639
	nop			;963a
	ld (bc),a		;963b
	ld (bc),a		;963c
	or a			;963d
	cp b			;963e
	or c			;963f
	or d			;9640
	nop			;9641
	nop			;9642
	ld (bc),a		;9643
	ld (bc),a		;9644
	or a			;9645
	cp b			;9646
	or e			;9647
	or h			;9648
	nop			;9649
	nop			;964a
	ld (bc),a		;964b
	ld (bc),a		;964c
	or a			;964d
	cp b			;964e
	or l			;964f
	or (hl)			;9650
	nop			;9651
	nop			;9652
	ld (bc),a		;9653
	ld (bc),a		;9654
	xor a			;9655
	or b			;9656
	or a			;9657
	cp b			;9658
	nop			;9659
	nop			;965a
	ld (bc),a		;965b
	ld (bc),a		;965c
	or c			;965d
	or d			;965e
	or a			;965f
	cp b			;9660
	nop			;9661
	nop			;9662
	ld (bc),a		;9663
	ld (bc),a		;9664
	or e			;9665
	or h			;9666
	or a			;9667
	cp b			;9668
	nop			;9669
	nop			;966a
	ld (bc),a		;966b
	ld (bc),a		;966c
	or l			;966d
	or (hl)			;966e
	or a			;966f
	cp b			;9670
	add a,c			;9671
	sub a			;9672
	ld h,h			;9673
	sub a			;9674
	ld b,a			;9675
	sub a			;9676
	sbc a,(hl)		;9677
	sub a			;9678
	cp e			;9679
	sub a			;967a
	ex de,hl		;967b
	sub (hl)		;967c
	add hl,de		;967d
	sub a			;967e
	ld b,09ah		;967f
	dec bc			;9681
	sbc a,d			;9682
	dec e			;9683
	sbc a,d			;9684
	cpl			;9685
	sbc a,d			;9686
	ld b,c			;9687
	sbc a,d			;9688
	ld d,e			;9689
	sbc a,d			;968a
	ld h,l			;968b
	sbc a,d			;968c
	ld (hl),a		;968d
	sbc a,d			;968e
	add a,a			;968f
	sbc a,d			;9690
	sub a			;9691
	sbc a,d			;9692
	and a			;9693
	sbc a,d			;9694
	or a			;9695
	sbc a,d			;9696
	rst 0			;9697
	sbc a,d			;9698
	ret c			;9699
	sub a			;969a
	daa			;969b
	sbc a,b			;969c
	ld e,a			;969d
	sbc a,b			;969e
	xor (hl)		;969f
	sbc a,b			;96a0
	and 098h		;96a1
	adc a,d			;96a3
	sbc a,c			;96a4
	and (hl)		;96a5
	sbc a,c			;96a6
	cp d			;96a7
	sbc a,c			;96a8
	adc a,099h		;96a9
	jp pe,01699h		;96ab
	or h			;96ae
	ex af,af'		;96af
	or l			;96b0
	ld c,b			;96b1
	or l			;96b2
	add a,h			;96b3
	or l			;96b4
	ret nz			;96b5
	or l			;96b6
	call m,038b5h		;96b7
	or (hl)			;96ba
	ld (hl),h		;96bb
	or (hl)			;96bc
	or b			;96bd
	or (hl)			;96be
	call pe,028b6h		;96bf
	or a			;96c2
	dec sp			;96c3
	or a			;96c4
	ld c,(hl)		;96c5
	or a			;96c6
	ld e,e			;96c7
	or a			;96c8
	ld l,(hl)		;96c9
	or a			;96ca
	add a,h			;96cb
	or a			;96cc
	sbc a,d			;96cd
	or a			;96ce
	xor d			;96cf
	or a			;96d0
	ret nz			;96d1
	or a			;96d2
	sub 0b7h		;96d3
	and 0b7h		;96d5
	or 0b7h			;96d7
	ld b,0b8h		;96d9
	inc e			;96db
	cp b			;96dc
	inc l			;96dd
	cp b			;96de
	inc a			;96df
	cp b			;96e0
	ld c,h			;96e1
	cp b			;96e2
	ld e,h			;96e3
	cp b			;96e4
	ld (hl),d		;96e5
	cp b			;96e6
	adc a,b			;96e7
	cp b			;96e8
	sbc a,(hl)		;96e9
	cp b			;96ea
	nop			;96eb
	nop			;96ec
	rlca			;96ed
	ld b,080h		;96ee
	ld (hl),d		;96f0
	or (hl)			;96f1
	or a			;96f2
	xor h			;96f3
	adc a,l			;96f4
	and h			;96f5
	xor (hl)		;96f6
	xor a			;96f7
	cp e			;96f8
	ret nz			;96f9
	adc a,h			;96fa
	nop			;96fb
	and a			;96fc
	and (hl)		;96fd
	call z,000a7h		;96fe
	or e			;9701
	sbc a,c			;9702
	ld d,d			;9703
	ld d,e			;9704
	sbc a,b			;9705
	call nz,0a700h		;9706
	and l			;9709
	cp (hl)			;970a
	and a			;970b
	nop			;970c
	and h			;970d
	xor (hl)		;970e
	or b			;970f
	cp h			;9710
	ret nz			;9711
	adc a,h			;9712
	add a,b			;9713
	ld (hl),d		;9714
	or h			;9715
	or l			;9716
	xor h			;9717
	adc a,l			;9718
	nop			;9719
	nop			;971a
	rlca			;971b
	ld b,080h		;971c
	ld (hl),d		;971e
	or (hl)			;971f
	or a			;9720
	xor h			;9721
	adc a,l			;9722
	and h			;9723
	xor (hl)		;9724
	xor a			;9725
	cp e			;9726
	ret nz			;9727
	adc a,h			;9728
	nop			;9729
	xor b			;972a
	and (hl)		;972b
	call z,000a8h		;972c
	nop			;972f
	nop			;9730
	nop			;9731
	nop			;9732
	nop			;9733
	nop			;9734
	nop			;9735
	sub h			;9736
	and l			;9737
	cp (hl)			;9738
	sub h			;9739
	nop			;973a
	and h			;973b
	xor (hl)		;973c
	or b			;973d
	cp h			;973e
	ret nz			;973f
	adc a,h			;9740
	add a,b			;9741
	ld (hl),d		;9742
	or h			;9743
	or l			;9744
	xor h			;9745
	adc a,l			;9746
	nop			;9747
	nop			;9748
	dec b			;9749
	dec b			;974a
	dec a			;974b
	sbc a,l			;974c
	sub e			;974d
	sbc a,(hl)		;974e
	ld b,c			;974f
	ld a,054h		;9750
	ld d,a			;9752
	ld e,e			;9753
	ld b,d			;9754
	and b			;9755
	and c			;9756
	ld e,b			;9757
	ld e,c			;9758
	sub d			;9759
	sbc a,h			;975a
	ld d,(hl)		;975b
	ld l,(hl)		;975c
	ld e,d			;975d
	dec (hl)		;975e
	ld (hl),038h		;975f
	sub e			;9761
	sbc a,a			;9762
	scf			;9763
	nop			;9764
	nop			;9765
	dec b			;9766
	dec b			;9767
	dec a			;9768
	sbc a,l			;9769
	rst 0			;976a
	sbc a,(hl)		;976b
	ld b,c			;976c
	ld a,054h		;976d
	and d			;976f
	ld e,e			;9770
	ld b,d			;9771
	sub d			;9772
	ld d,l			;9773
	ld e,b			;9774
	ld e,c			;9775
	sub d			;9776
	sbc a,h			;9777
	ld d,(hl)		;9778
	ld l,(hl)		;9779
	ld e,d			;977a
	dec (hl)		;977b
	ld (hl),038h		;977c
	sub e			;977e
	sbc a,a			;977f
	scf			;9780
	nop			;9781
	nop			;9782
	dec b			;9783
	dec b			;9784
	dec a			;9785
	sbc a,l			;9786
	sub e			;9787
	sbc a,(hl)		;9788
	ld b,c			;9789
	ld a,054h		;978a
	ld d,a			;978c
	ld e,e			;978d
	ld b,d			;978e
	sub d			;978f
	ld d,l			;9790
	ld e,b			;9791
	cp b			;9792
	and b			;9793
	sbc a,h			;9794
	ld d,(hl)		;9795
	ld l,(hl)		;9796
	ld e,d			;9797
	dec (hl)		;9798
	ld (hl),038h		;9799
	sub e			;979b
	sbc a,a			;979c
	scf			;979d
	nop			;979e
	nop			;979f
	dec b			;97a0
	dec b			;97a1
	dec a			;97a2
	sbc a,l			;97a3
	sub e			;97a4
	sbc a,(hl)		;97a5
	ld b,c			;97a6
	ld a,054h		;97a7
	ld d,a			;97a9
	ld e,e			;97aa
	ld b,d			;97ab
	sub d			;97ac
	ld d,l			;97ad
	ld e,b			;97ae
	ld e,c			;97af
	sub d			;97b0
	sbc a,h			;97b1
	ld d,(hl)		;97b2
	jp 0355ah		;97b3
	ld (hl),038h		;97b6
	rst 0			;97b8
	sbc a,a			;97b9
	scf			;97ba
	nop			;97bb
	nop			;97bc
	dec b			;97bd
	dec b			;97be
	dec a			;97bf
	sbc a,l			;97c0
	rst 0			;97c1
	sbc a,(hl)		;97c2
	ld b,c			;97c3
	ld a,054h		;97c4
	sub a			;97c6
	ld e,e			;97c7
	ld b,d			;97c8
	and b			;97c9
	cp c			;97ca
	nop			;97cb
	cp c			;97cc
	and b			;97cd
	sbc a,h			;97ce
	ld d,(hl)		;97cf
	ret z			;97d0
	ld e,d			;97d1
	dec (hl)		;97d2
	ld (hl),038h		;97d3
	rst 0			;97d5
	sbc a,a			;97d6
	scf			;97d7
	nop			;97d8
	nop			;97d9
	dec b			;97da
	rrca			;97db
	nop			;97dc
	nop			;97dd
	nop			;97de
	nop			;97df
	nop			;97e0
	nop			;97e1
	nop			;97e2
	nop			;97e3
	nop			;97e4
	ld bc,00302h		;97e5
	inc b			;97e8
	dec b			;97e9
	ld b,000h		;97ea
	nop			;97ec
	nop			;97ed
	nop			;97ee
	ld de,01312h		;97ef
	ld d,b			;97f2
	ld d,c			;97f3
	ld d,d			;97f4
	ld d,d			;97f5
	ld d,e			;97f6
	ld d,h			;97f7
	ld d,l			;97f8
	ld d,(hl)		;97f9
	nop			;97fa
	ld d,017h		;97fb
	ld h,c			;97fd
	ld h,d			;97fe
	ld h,e			;97ff
	ld h,h			;9800
	ld h,l			;9801
	ld h,(hl)		;9802
	ld h,a			;9803
	ld l,b			;9804
	ld l,c			;9805
	ld l,d			;9806
	ld l,e			;9807
	ld d,d			;9808
	add hl,de		;9809
	ld (hl),l		;980a
	ld a,(de)		;980b
	halt			;980c
	dec de			;980d
	inc e			;980e
	dec e			;980f
	ld e,01fh		;9810
	jr nz,l9835h		;9812
	ld (02020h),hl		;9814
	ld (00026h),hl		;9817
	nop			;981a
	nop			;981b
	nop			;981c
	daa			;981d
	nop			;981e
	nop			;981f
	nop			;9820
	nop			;9821
	nop			;9822
	nop			;9823
	nop			;9824
	nop			;9825
	nop			;9826
	nop			;9827
	nop			;9828
	inc b			;9829
	dec c			;982a
	rlca			;982b
	ex af,af'		;982c
	add hl,bc		;982d
	ld a,(bc)		;982e
	dec bc			;982f
	dec b			;9830
	inc c			;9831
	dec c			;9832
	ld c,00fh		;9833
l9835h:
	djnz l9837h		;9835
l9837h:
	nop			;9837
	ld d,d			;9838
	ld d,a			;9839
	ld e,b			;983a
	ld e,c			;983b
	ld e,d			;983c
	ld e,e			;983d
	ld e,h			;983e
	ld e,l			;983f
	ld e,(hl)		;9840
	ld e,a			;9841
	ld h,b			;9842
	inc d			;9843
	dec d			;9844
	ld h,a			;9845
	ld l,h			;9846
	ld l,l			;9847
	ld l,(hl)		;9848
	ld h,a			;9849
	ld l,a			;984a
	ld (hl),b		;984b
	ld (hl),c		;984c
	ld (hl),d		;984d
	ld e,a			;984e
	ld (hl),e		;984f
	ld (hl),h		;9850
	jr l9875h		;9851
	inc hl			;9853
	nop			;9854
	inc hl			;9855
	jr nz,$+38		;9856
	ld (hl),a		;9858
	ld a,b			;9859
	ld a,c			;985a
	ld a,d			;985b
	ld a,e			;985c
	ld a,h			;985d
	nop			;985e
	nop			;985f
	nop			;9860
	dec b			;9861
	rrca			;9862
	ld h,000h		;9863
	nop			;9865
	nop			;9866
	nop			;9867
	daa			;9868
	nop			;9869
	nop			;986a
	nop			;986b
	nop			;986c
	nop			;986d
	nop			;986e
	nop			;986f
	nop			;9870
	nop			;9871
	add hl,de		;9872
	ld (hl),l		;9873
	ld a,(de)		;9874
l9875h:
	halt			;9875
	dec de			;9876
	inc e			;9877
	dec e			;9878
	ld e,01fh		;9879
	jr nz,l989eh		;987b
	rra			;987d
	jr nz,l98a0h		;987e
	ld (01600h),hl		;9880
	rla			;9883
	ld h,c			;9884
	ld h,d			;9885
	ld h,e			;9886
	ld h,h			;9887
	ld h,l			;9888
	ld h,(hl)		;9889
	ld h,a			;988a
	ld l,b			;988b
	ld l,c			;988c
	ld l,d			;988d
	ld l,e			;988e
	ld d,d			;988f
	nop			;9890
	nop			;9891
	nop			;9892
	nop			;9893
	ld de,01312h		;9894
	ld d,b			;9897
l9898h:
	ld d,c			;9898
	ld d,d			;9899
	ld d,d			;989a
	ld d,e			;989b
	ld d,h			;989c
	ld d,l			;989d
l989eh:
	ld d,(hl)		;989e
	nop			;989f
l98a0h:
	nop			;98a0
	nop			;98a1
	nop			;98a2
	nop			;98a3
	nop			;98a4
	nop			;98a5
	nop			;98a6
	nop			;98a7
	ld bc,00302h		;98a8
	inc b			;98ab
	dec b			;98ac
	ld b,000h		;98ad
	nop			;98af
	inc b			;98b0
	dec c			;98b1
	ld (00023h),hl		;98b2
	inc hl			;98b5
	jr nz,l98dch		;98b6
	ld (hl),a		;98b8
	ld a,b			;98b9
	ld a,c			;98ba
	ld a,d			;98bb
	ld a,e			;98bc
	ld a,h			;98bd
	nop			;98be
	ld h,a			;98bf
	ld l,h			;98c0
	ld l,l			;98c1
	ld l,(hl)		;98c2
	ld h,a			;98c3
	ld l,a			;98c4
	ld (hl),b		;98c5
	ld (hl),c		;98c6
	ld (hl),d		;98c7
	ld e,a			;98c8
	ld (hl),e		;98c9
	ld (hl),h		;98ca
	jr l991fh		;98cb
	ld d,a			;98cd
	ld e,b			;98ce
	ld e,c			;98cf
	ld e,d			;98d0
	ld e,e			;98d1
	ld e,h			;98d2
	ld e,l			;98d3
	ld e,(hl)		;98d4
	ld e,a			;98d5
	ld h,b			;98d6
	inc d			;98d7
	dec d			;98d8
	rlca			;98d9
	ex af,af'		;98da
	add hl,bc		;98db
l98dch:
	ld a,(bc)		;98dc
	dec bc			;98dd
	dec b			;98de
	inc c			;98df
	dec c			;98e0
	ld c,00fh		;98e1
	djnz l98e5h		;98e3
l98e5h:
	nop			;98e5
	nop			;98e6
	nop			;98e7
	djnz l98f4h		;98e8
	nop			;98ea
	nop			;98eb
	nop			;98ec
	nop			;98ed
	nop			;98ee
	nop			;98ef
	nop			;98f0
	dec h			;98f1
l98f2h:
	ld a,l			;98f2
	nop			;98f3
l98f4h:
	ld a,(hl)		;98f4
	ld a,a			;98f5
	add a,b			;98f6
	ld h,a			;98f7
	add a,c			;98f8
	add a,d			;98f9
	add a,e			;98fa
	add a,h			;98fb
	add a,l			;98fc
	ld a,(03b00h)		;98fd
	add a,(hl)		;9900
	add a,a			;9901
	adc a,b			;9902
	adc a,c			;9903
	adc a,d			;9904
	adc a,e			;9905
	add a,l			;9906
	ld a,(00000h)		;9907
	jr z,l9898h		;990a
	adc a,l			;990c
	adc a,(hl)		;990d
	ld (hl),h		;990e
	adc a,a			;990f
	sub b			;9910
	nop			;9911
	nop			;9912
	nop			;9913
	nop			;9914
	sub c			;9915
	sub d			;9916
	sub e			;9917
	sub h			;9918
	sub l			;9919
	sub (hl)		;991a
	sub a			;991b
	nop			;991c
	nop			;991d
	nop			;991e
l991fh:
	sbc a,b			;991f
	sbc a,c			;9920
	sbc a,d			;9921
	sbc a,e			;9922
	sbc a,h			;9923
	sbc a,l			;9924
	sbc a,(hl)		;9925
	nop			;9926
	nop			;9927
	nop			;9928
	sbc a,a			;9929
	and b			;992a
	and c			;992b
	and d			;992c
	and e			;992d
	ld d,e			;992e
	add hl,hl		;992f
	nop			;9930
	nop			;9931
	nop			;9932
	and h			;9933
	and l			;9934
	and l			;9935
	and l			;9936
	and l			;9937
	and (hl)		;9938
	add hl,hl		;9939
	nop			;993a
	nop			;993b
	nop			;993c
	and h			;993d
	and l			;993e
	and l			;993f
	and l			;9940
	and l			;9941
	and (hl)		;9942
	add hl,hl		;9943
	nop			;9944
	nop			;9945
	nop			;9946
	and h			;9947
	cp c			;9948
	cp d			;9949
	and d			;994a
	and e			;994b
	ld d,e			;994c
	add hl,hl		;994d
	nop			;994e
	nop			;994f
	nop			;9950
	sbc a,b			;9951
	sbc a,d			;9952
	cp e			;9953
	cp e			;9954
	sbc a,e			;9955
	sbc a,l			;9956
	sbc a,(hl)		;9957
	nop			;9958
	nop			;9959
	nop			;995a
	add a,a			;995b
	sbc a,c			;995c
	sbc a,c			;995d
	sbc a,e			;995e
	sub l			;995f
	sub (hl)		;9960
	sub a			;9961
	nop			;9962
	nop			;9963
	jr z,l98f2h		;9964
	cp b			;9966
	sub d			;9967
	add a,d			;9968
	adc a,a			;9969
	sub b			;996a
	nop			;996b
	nop			;996c
	dec sp			;996d
	add a,(hl)		;996e
	add a,a			;996f
	adc a,b			;9970
	adc a,c			;9971
l9972h:
	adc a,d			;9972
	adc a,e			;9973
	add a,l			;9974
	ld a,(07f7eh)		;9975
	add a,b			;9978
	ld h,a			;9979
	add a,c			;997a
	add a,d			;997b
	add a,e			;997c
	add a,h			;997d
	add a,l			;997e
	ld a,(00000h)		;997f
	nop			;9982
	nop			;9983
	nop			;9984
	nop			;9985
	nop			;9986
	dec h			;9987
	ld a,l			;9988
	nop			;9989
	nop			;998a
	nop			;998b
	ex af,af'		;998c
	inc bc			;998d
	nop			;998e
	nop			;998f
	jr z,l9992h		;9990
l9992h:
	ld l,0a7h		;9992
	cpl			;9994
	xor b			;9995
	xor c			;9996
	ld hl,(0cb36h)		;9997
	ld hl,(0cb36h)		;999a
	cpl			;999d
	xor b			;999e
	xor c			;999f
	nop			;99a0
	ld l,0a7h		;99a1
	nop			;99a3
	nop			;99a4
	jr z,l99a7h		;99a5
l99a7h:
	ld bc,00208h		;99a7
	nop			;99aa
	jr z,l99ddh		;99ab
	xor l			;99ad
	xor (hl)		;99ae
	xor a			;99af
	or b			;99b0
	res 6,b			;99b1
	res 5,(hl)		;99b3
	xor a			;99b5
	jr nc,$-81		;99b6
	nop			;99b8
	jr z,l99bbh		;99b9
l99bbh:
	ld bc,00208h		;99bb
	dec (hl)		;99be
	jr c,l9972h		;99bf
	or d			;99c1
	or e			;99c2
	or h			;99c3
	or l			;99c4
	res 6,l			;99c5
	res 6,e			;99c7
	or h			;99c9
	or c			;99ca
	or d			;99cb
	dec (hl)		;99cc
	jr c,l99cfh		;99cd
l99cfh:
	nop			;99cf
	ex af,af'		;99d0
	inc bc			;99d1
	nop			;99d2
	ld (03137h),a		;99d3
	or (hl)			;99d6
	or a			;99d7
	inc sp			;99d8
	inc (hl)		;99d9
	call z,00000h		;99da
l99ddh:
	rlc b			;99dd
	nop			;99df
	defb 0cbh,033h ;sli e	;99e0
	inc (hl)		;99e2
	call z,0b631h		;99e3
	or a			;99e6
	nop			;99e7
	ld (00037h),a		;99e8
	nop			;99eb
	ex af,af'		;99ec
	inc bc			;99ed
	xor d			;99ee
	dec hl			;99ef
	inc l			;99f0
	dec l			;99f1
	xor e			;99f2
	xor h			;99f3
	nop			;99f4
	add hl,sp		;99f5
	call 00000h		;99f6
	rlc b			;99f9
	nop			;99fb
	rlc b			;99fc
	add hl,sp		;99fe
	call 0ab2dh		;99ff
	xor h			;9a02
	xor d			;9a03
	dec hl			;9a04
	inc l			;9a05
	nop			;9a06
	nop			;9a07
	ld bc,00001h		;9a08
	nop			;9a0b
	nop			;9a0c
	ld c,001h		;9a0d
	call nz,000c5h		;9a0f
	nop			;9a12
	nop			;9a13
	nop			;9a14
	nop			;9a15
	nop			;9a16
	nop			;9a17
	nop			;9a18
	nop			;9a19
	nop			;9a1a
	ret			;9a1b
	jp z,00000h		;9a1c
	ld c,001h		;9a1f
	call nz,0c6c5h		;9a21
	rst 0			;9a24
	nop			;9a25
	nop			;9a26
	nop			;9a27
	nop			;9a28
	nop			;9a29
	nop			;9a2a
	rst 0			;9a2b
	ret z			;9a2c
	ret			;9a2d
	jp z,00000h		;9a2e
	ld c,001h		;9a31
	call nz,0c6c5h		;9a33
	rst 0			;9a36
	ret z			;9a37
	ret			;9a38
	nop			;9a39
	nop			;9a3a
	push bc			;9a3b
	add a,0c7h		;9a3c
	ret z			;9a3e
	ret			;9a3f
	jp z,00000h		;9a40
	ld c,001h		;9a43
	call nz,0c6c5h		;9a45
	rst 0			;9a48
	ret z			;9a49
	ret			;9a4a
	jp z,0c5c4h		;9a4b
	add a,0c7h		;9a4e
	ret z			;9a50
	ret			;9a51
	jp z,00000h		;9a52
	ld c,001h		;9a55
	jp z,0c5c4h		;9a57
	add a,0c7h		;9a5a
	ret z			;9a5c
	ret			;9a5d
	jp z,0c5c4h		;9a5e
	add a,0c7h		;9a61
	ret z			;9a63
	ret			;9a64
	nop			;9a65
	nop			;9a66
	ld c,001h		;9a67
	ret			;9a69
	jp z,0c5c4h		;9a6a
	add a,0c7h		;9a6d
	ret z			;9a6f
	ret			;9a70
	jp z,0c5c4h		;9a71
	add a,0c7h		;9a74
	ret z			;9a76
	nop			;9a77
	nop			;9a78
	inc c			;9a79
	ld bc,000c6h		;9a7a
	nop			;9a7d
	nop			;9a7e
	nop			;9a7f
	nop			;9a80
	nop			;9a81
	nop			;9a82
	nop			;9a83
	nop			;9a84
	nop			;9a85
	jp z,00000h		;9a86
	inc c			;9a89
	ld bc,0c7c6h		;9a8a
	ret z			;9a8d
	nop			;9a8e
	nop			;9a8f
	nop			;9a90
	nop			;9a91
	nop			;9a92
	nop			;9a93
	ret z			;9a94
	ret			;9a95
	jp z,00000h		;9a96
	inc c			;9a99
	ld bc,0c7c6h		;9a9a
	ret z			;9a9d
	ret			;9a9e
	jp z,00000h		;9a9f
	add a,0c7h		;9aa2
l9aa4h:
	ret z			;9aa4
	ret			;9aa5
	jp z,00000h		;9aa6
	inc c			;9aa9
	ld bc,0c7c6h		;9aaa
	ret z			;9aad
	ret			;9aae
	jp z,0c5c4h		;9aaf
	add a,0c7h		;9ab2
	ret z			;9ab4
	ret			;9ab5
	jp z,00000h		;9ab6
	inc c			;9ab9
	ld bc,0c6c5h		;9aba
	rst 0			;9abd
	ret z			;9abe
	ret			;9abf
	jp z,0c5c4h		;9ac0
	add a,0c7h		;9ac3
	ret z			;9ac5
	ret			;9ac6
	nop			;9ac7
	nop			;9ac8
	inc c			;9ac9
	ld bc,0c5c4h		;9aca
	add a,0c7h		;9acd
	ret z			;9acf
	ret			;9ad0
	jp z,0c5c4h		;9ad1
	add a,0c7h		;9ad4
	ret z			;9ad6
	dec b			;9ad7
	sbc a,e			;9ad8
	add hl,de		;9ad9
	sbc a,e			;9ada
	dec l			;9adb
	sbc a,e			;9adc
	ld b,c			;9add
	sbc a,e			;9ade
	ld d,l			;9adf
	sbc a,e			;9ae0
	ld l,c			;9ae1
	sbc a,e			;9ae2
	ld a,l			;9ae3
	sbc a,e			;9ae4
	adc a,l			;9ae5
	sbc a,e			;9ae6
	sbc a,c			;9ae7
	sbc a,e			;9ae8
	and c			;9ae9
	sbc a,e			;9aea
	or l			;9aeb
	sbc a,e			;9aec
	ret			;9aed
	sbc a,e			;9aee
	pop af			;9aef
	sbc a,d			;9af0
	inc bc			;9af1
	defb 0fdh,002h,008h ;illegal sequence	;9af2
	jr nz,l9aa4h		;9af5
	or e			;9af7
	dec hl			;9af8
	ld d,(hl)		;9af9
	cp e			;9afa
	or l			;9afb
	ld c,e			;9afc
	rla			;9afd
	inc h			;9afe
	inc e			;9aff
	ld (0474dh),hl		;9b00
	ld c,a			;9b03
	ld b,d			;9b04
	nop			;9b05
	nop			;9b06
	inc b			;9b07
	inc b			;9b08
	sub h			;9b09
	sbc a,e			;9b0a
	sbc a,h			;9b0b
	sub h			;9b0c
	sub l			;9b0d
	sub (hl)		;9b0e
	sub (hl)		;9b0f
	sbc a,(hl)		;9b10
	sub a			;9b11
	sbc a,b			;9b12
	and c			;9b13
	and b			;9b14
	sbc a,c			;9b15
	sbc a,d			;9b16
	and e			;9b17
	and d			;9b18
	nop			;9b19
	nop			;9b1a
	inc b			;9b1b
	inc b			;9b1c
	xor e			;9b1d
	xor h			;9b1e
	or l			;9b1f
	or h			;9b20
	xor c			;9b21
	xor d			;9b22
	or e			;9b23
	or d			;9b24
	and a			;9b25
	xor b			;9b26
	xor b			;9b27
	or b			;9b28
	and (hl)		;9b29
	xor l			;9b2a
	xor (hl)		;9b2b
	and (hl)		;9b2c
	nop			;9b2d
	nop			;9b2e
	ex af,af'		;9b2f
	ld (bc),a		;9b30
	call z,000cdh		;9b31
	nop			;9b34
	nop			;9b35
	nop			;9b36
	nop			;9b37
	nop			;9b38
	nop			;9b39
	nop			;9b3a
	nop			;9b3b
	nop			;9b3c
	nop			;9b3d
	nop			;9b3e
	call z,000cdh		;9b3f
	nop			;9b42
	ex af,af'		;9b43
	ld (bc),a		;9b44
	call z,0cccdh		;9b45
	call 00000h		;9b48
	nop			;9b4b
	nop			;9b4c
	nop			;9b4d
	nop			;9b4e
	nop			;9b4f
	nop			;9b50
	call z,0cccdh		;9b51
	call 00000h		;9b54
	ex af,af'		;9b57
	ld (bc),a		;9b58
	call z,0cccdh		;9b59
	call 0cdcch		;9b5c
	nop			;9b5f
	nop			;9b60
	nop			;9b61
	nop			;9b62
	call z,0cccdh		;9b63
	call 0cdcch		;9b66
	nop			;9b69
	nop			;9b6a
	ex af,af'		;9b6b
	ld (bc),a		;9b6c
	call z,0cccdh		;9b6d
	call 0cdcch		;9b70
	call z,0cccdh		;9b73
	call 0cdcch		;9b76
	call z,0cccdh		;9b79
	call 00001h		;9b7c
	ld b,002h		;9b7f
	call z,0cccdh		;9b81
	call 0cdcch		;9b84
	call z,0cccdh		;9b87
	call 0cdcch		;9b8a
	ld (bc),a		;9b8d
	nop			;9b8e
	inc b			;9b8f
	ld (bc),a		;9b90
	call z,0cccdh		;9b91
	call 0cdcch		;9b94
	call z,003cdh		;9b97
	nop			;9b9a
	ld (bc),a		;9b9b
	ld (bc),a		;9b9c
l9b9dh:
	call z,0cccdh		;9b9d
	call 00000h		;9ba0
l9ba3h:
	ex af,af'		;9ba3
	ld (bc),a		;9ba4
	add a,b			;9ba5
	add a,e			;9ba6
	nop			;9ba7
	nop			;9ba8
	nop			;9ba9
	nop			;9baa
	nop			;9bab
	nop			;9bac
	nop			;9bad
	nop			;9bae
	nop			;9baf
	nop			;9bb0
	nop			;9bb1
	nop			;9bb2
	add a,b			;9bb3
	add a,e			;9bb4
	nop			;9bb5
	nop			;9bb6
	ex af,af'		;9bb7
	ld (bc),a		;9bb8
	add a,c			;9bb9
	add a,h			;9bba
	nop			;9bbb
	nop			;9bbc
	nop			;9bbd
	nop			;9bbe
	nop			;9bbf
	nop			;9bc0
	nop			;9bc1
	nop			;9bc2
	nop			;9bc3
	nop			;9bc4
	nop			;9bc5
	nop			;9bc6
	add a,c			;9bc7
	add a,h			;9bc8
	nop			;9bc9
	nop			;9bca
	ex af,af'		;9bcb
	ld (bc),a		;9bcc
	add a,d			;9bcd
	add a,l			;9bce
	nop			;9bcf
	nop			;9bd0
	nop			;9bd1
	nop			;9bd2
	nop			;9bd3
	nop			;9bd4
	nop			;9bd5
	nop			;9bd6
	nop			;9bd7
	nop			;9bd8
	nop			;9bd9
	nop			;9bda
	add a,d			;9bdb
	add a,l			;9bdc
	and h			;9bdd
	cp c			;9bde
	inc c			;9bdf
	cp d			;9be0
	jr l9b9dh		;9be1
	inc h			;9be3
	cp d			;9be4
	jr nc,$-68		;9be5
	jr c,l9ba3h		;9be7
	ld b,b			;9be9
	cp d			;9bea
	ld d,(hl)		;9beb
	cp d			;9bec
	ld l,b			;9bed
	cp d			;9bee
	ld a,h			;9bef
	cp d			;9bf0
	sub b			;9bf1
	cp d			;9bf2
	sbc a,l			;9bf3
	cp d			;9bf4
	or e			;9bf5
	cp d			;9bf6
	ret			;9bf7
	cp d			;9bf8
	ret c			;9bf9
	cp d			;9bfa
	jp p,00cbah		;9bfb
	cp e			;9bfe
	ld c,e			;9bff
	sbc a,l			;9c00
	ld a,a			;9c01
	sbc a,l			;9c02
	or e			;9c03
	sbc a,l			;9c04
	rst 28h			;9c05
	sbc a,l			;9c06
	inc bc			;9c07
	sbc a,(hl)		;9c08
	cpl			;9c09
	sbc a,(hl)		;9c0a
	ld h,e			;9c0b
	sbc a,(hl)		;9c0c
	sbc a,a			;9c0d
	sbc a,(hl)		;9c0e
	ex (sp),hl		;9c0f
	and (hl)		;9c10
	ld b,c			;9c11
	and a			;9c12
	ld a,a			;9c13
	sbc a,h			;9c14
	jp 0079ch		;9c15
	sbc a,l			;9c18
	ccf			;9c19
	sbc a,h			;9c1a
	ld b,a			;9c1b
	sbc a,h			;9c1c
	ld c,a			;9c1d
	sbc a,h			;9c1e
	ld d,a			;9c1f
	sbc a,h			;9c20
	ld e,a			;9c21
	sbc a,h			;9c22
	ld h,a			;9c23
	sbc a,h			;9c24
	ld l,a			;9c25
	sbc a,h			;9c26
	ld (hl),a		;9c27
	sbc a,h			;9c28
	inc d			;9c29
	cp e			;9c2a
	ret nz			;9c2b
	cp e			;9c2c
	add a,h			;9c2d
	cp h			;9c2e
	ld h,b			;9c2f
	cp l			;9c30
	or d			;9c31
	cp l			;9c32
	inc b			;9c33
	cp (hl)			;9c34
	ld d,(hl)		;9c35
	cp (hl)			;9c36
	xor b			;9c37
	cp (hl)			;9c38
	jp m,04cbeh		;9c39
	cp a			;9c3c
	sbc a,(hl)		;9c3d
	cp a			;9c3e
	nop			;9c3f
	nop			;9c40
	ld (bc),a		;9c41
	ld (bc),a		;9c42
	cp (hl)			;9c43
	cp a			;9c44
	ld bc,00002h		;9c45
	nop			;9c48
	ld (bc),a		;9c49
	ld (bc),a		;9c4a
	ret nz			;9c4b
	pop bc			;9c4c
	ld bc,00002h		;9c4d
	nop			;9c50
	ld (bc),a		;9c51
	ld (bc),a		;9c52
	jp 001c2h		;9c53
	ld (bc),a		;9c56
	nop			;9c57
	nop			;9c58
	ld (bc),a		;9c59
	ld (bc),a		;9c5a
	push bc			;9c5b
	call nz,00201h		;9c5c
	nop			;9c5f
	nop			;9c60
	ld (bc),a		;9c61
	ld (bc),a		;9c62
	inc bc			;9c63
	inc b			;9c64
	add a,0c7h		;9c65
	nop			;9c67
	nop			;9c68
	ld (bc),a		;9c69
	ld (bc),a		;9c6a
	inc bc			;9c6b
	inc b			;9c6c
	ret z			;9c6d
	ret			;9c6e
	nop			;9c6f
	nop			;9c70
	ld (bc),a		;9c71
	ld (bc),a		;9c72
	inc bc			;9c73
	inc b			;9c74
	set 1,d			;9c75
	nop			;9c77
	nop			;9c78
	ld (bc),a		;9c79
	ld (bc),a		;9c7a
	inc bc			;9c7b
	inc b			;9c7c
	call 0fdcch		;9c7d
	defb 0fdh,008h,008h ;illegal sequence	;9c80
	nop			;9c83
	xor c			;9c84
	xor h			;9c85
	ld b,e			;9c86
	ld b,e			;9c87
	cp l			;9c88
	cp d			;9c89
	nop			;9c8a
	or l			;9c8b
	xor b			;9c8c
	ld b,(hl)		;9c8d
	ld b,h			;9c8e
	ld b,h			;9c8f
	ld b,(hl)		;9c90
	cp c			;9c91
	xor (hl)		;9c92
	ld a,054h		;9c93
	ld d,l			;9c95
	ld b,l			;9c96
	ld b,l			;9c97
	ld d,l			;9c98
	ld d,h			;9c99
	or b			;9c9a
	ld c,c			;9c9b
	ld b,b			;9c9c
	ld c,e			;9c9d
	inc de			;9c9e
	cpl			;9c9f
	ld c,e			;9ca0
	ld b,b			;9ca1
	ld l,h			;9ca2
	nop			;9ca3
	ld c,c			;9ca4
	ld c,e			;9ca5
	dec d			;9ca6
	ld sp,0404bh		;9ca7
	ld l,h			;9caa
	nop			;9cab
	nop			;9cac
	scf			;9cad
	ld b,d			;9cae
	ld b,d			;9caf
	ld c,d			;9cb0
	ld b,a			;9cb1
	or h			;9cb2
	nop			;9cb3
	nop			;9cb4
	nop			;9cb5
	jr nc,l9cf9h		;9cb6
	ld c,b			;9cb8
	or (hl)			;9cb9
	or a			;9cba
	nop			;9cbb
	nop			;9cbc
	nop			;9cbd
	nop			;9cbe
	jr nc,l9ce9h		;9cbf
	cp b			;9cc1
	nop			;9cc2
	defb 0fdh,0fdh,008h ;illegal sequence	;9cc3
	ex af,af'		;9cc6
	nop			;9cc7
	xor c			;9cc8
	xor h			;9cc9
	ld b,e			;9cca
	ld b,e			;9ccb
	cp l			;9ccc
	cp d			;9ccd
	nop			;9cce
	sbc a,l			;9ccf
	xor b			;9cd0
	ld b,(hl)		;9cd1
	ld b,h			;9cd2
	ld b,h			;9cd3
	ld b,(hl)		;9cd4
	cp c			;9cd5
	and h			;9cd6
	sbc a,a			;9cd7
	ld d,h			;9cd8
	ld d,l			;9cd9
	ld b,l			;9cda
	ld b,l			;9cdb
	ld d,l			;9cdc
	ld d,h			;9cdd
	ld (0406ch),hl		;9cde
	ld c,e			;9ce1
	inc de			;9ce2
	cpl			;9ce3
	ld c,e			;9ce4
	ld b,b			;9ce5
	ld l,a			;9ce6
	ld l,h			;9ce7
	ld b,b			;9ce8
l9ce9h:
	ld c,e			;9ce9
	dec d			;9cea
	ld sp,06f4bh		;9ceb
	nop			;9cee
	and e			;9cef
	ld b,a			;9cf0
	ld c,d			;9cf1
	ld b,d			;9cf2
	ld b,d			;9cf3
	dec de			;9cf4
	nop			;9cf5
	nop			;9cf6
	and (hl)		;9cf7
	and l			;9cf8
l9cf9h:
	ld c,b			;9cf9
	ld b,c			;9cfa
	inc d			;9cfb
	nop			;9cfc
	nop			;9cfd
	nop			;9cfe
	nop			;9cff
	and a			;9d00
	inc c			;9d01
	inc d			;9d02
	nop			;9d03
	nop			;9d04
	nop			;9d05
	nop			;9d06
	defb 0fdh,0fdh,008h ;illegal sequence	;9d07
	ex af,af'		;9d0a
	nop			;9d0b
	nop			;9d0c
	nop			;9d0d
	dec bc			;9d0e
	ld b,e			;9d0f
	cp l			;9d10
	cp d			;9d11
	nop			;9d12
	nop			;9d13
	nop			;9d14
	dec bc			;9d15
	ld b,h			;9d16
	ld b,h			;9d17
	ld b,(hl)		;9d18
	cp c			;9d19
	xor (hl)		;9d1a
	nop			;9d1b
	dec bc			;9d1c
	ld d,l			;9d1d
	ld b,l			;9d1e
	ld b,l			;9d1f
	ld d,l			;9d20
	ld d,h			;9d21
	or b			;9d22
	dec bc			;9d23
	ld b,b			;9d24
	ld c,e			;9d25
	inc de			;9d26
	cpl			;9d27
	ld c,e			;9d28
	ld b,b			;9d29
	ld l,h			;9d2a
	ld l,h			;9d2b
	ld b,b			;9d2c
	ld c,e			;9d2d
	dec d			;9d2e
	ld sp,0404bh		;9d2f
	ld l,h			;9d32
	and e			;9d33
	ld b,a			;9d34
	ld c,d			;9d35
	ld b,d			;9d36
	ld b,d			;9d37
	ld c,d			;9d38
	ld b,a			;9d39
	or h			;9d3a
	and (hl)		;9d3b
	and l			;9d3c
	ld c,b			;9d3d
	ld b,c			;9d3e
	ld b,c			;9d3f
	ld c,b			;9d40
	or (hl)			;9d41
	or a			;9d42
	nop			;9d43
	and (hl)		;9d44
	sbc a,h			;9d45
	ld l,l			;9d46
	ld l,l			;9d47
	xor l			;9d48
	or a			;9d49
	nop			;9d4a
	nop			;9d4b
	nop			;9d4c
	dec b			;9d4d
	ex af,af'		;9d4e
	nop			;9d4f
	or l			;9d50
	jr nc,l9d5fh		;9d51
	dec de			;9d53
	ld sp,000b7h		;9d54
	nop			;9d57
	cp c			;9d58
	ld (03e2fh),hl		;9d59
	scf			;9d5c
	sbc a,h			;9d5d
	nop			;9d5e
l9d5fh:
	nop			;9d5f
	cp b			;9d60
	ld d,h			;9d61
	ld d,l			;9d62
	ld l,l			;9d63
	ld l,h			;9d64
	sbc a,l			;9d65
	nop			;9d66
	nop			;9d67
	or h			;9d68
	ld b,007h		;9d69
	dec d			;9d6b
	inc d			;9d6c
	or (hl)			;9d6d
	nop			;9d6e
	nop			;9d6f
	nop			;9d70
	cp d			;9d71
	dec b			;9d72
	inc de			;9d73
	sbc a,a			;9d74
	nop			;9d75
	nop			;9d76
	nop			;9d77
	nop			;9d78
	nop			;9d79
	nop			;9d7a
	nop			;9d7b
	nop			;9d7c
	nop			;9d7d
	nop			;9d7e
	nop			;9d7f
	nop			;9d80
	ld b,008h		;9d81
	or l			;9d83
	ld c,l			;9d84
	ld e,a			;9d85
	ld h,b			;9d86
	ld h,c			;9d87
	ld e,a			;9d88
	ld l,a			;9d89
	or a			;9d8a
	nop			;9d8b
	or l			;9d8c
	jr nc,l9d9bh		;9d8d
	dec de			;9d8f
	ld sp,000b7h		;9d90
	nop			;9d93
	cp c			;9d94
	ld (03e2fh),hl		;9d95
	scf			;9d98
	sbc a,h			;9d99
	nop			;9d9a
l9d9bh:
	nop			;9d9b
	cp b			;9d9c
	ld d,h			;9d9d
	ld d,l			;9d9e
	ld l,l			;9d9f
	ld l,h			;9da0
	sbc a,l			;9da1
	nop			;9da2
	nop			;9da3
	or h			;9da4
	ld b,007h		;9da5
	dec d			;9da7
	inc d			;9da8
	or (hl)			;9da9
	nop			;9daa
	nop			;9dab
	nop			;9dac
	cp d			;9dad
	dec b			;9dae
	inc de			;9daf
	sbc a,a			;9db0
	nop			;9db1
	nop			;9db2
	nop			;9db3
	nop			;9db4
	rlca			;9db5
	ex af,af'		;9db6
	or l			;9db7
	ld c,l			;9db8
	ld e,a			;9db9
	ld h,b			;9dba
	ld h,c			;9dbb
	ld e,a			;9dbc
	ld l,a			;9dbd
	or a			;9dbe
	nop			;9dbf
	or l			;9dc0
	jr nc,l9dcfh		;9dc1
	dec de			;9dc3
	ld sp,000b7h		;9dc4
	nop			;9dc7
	nop			;9dc8
	and a			;9dc9
	xor b			;9dca
	xor c			;9dcb
	cp l			;9dcc
	nop			;9dcd
	nop			;9dce
l9dcfh:
	nop			;9dcf
	cp c			;9dd0
	and e			;9dd1
	and h			;9dd2
	and l			;9dd3
	and (hl)		;9dd4
	sbc a,h			;9dd5
	nop			;9dd6
	nop			;9dd7
	ld c,d			;9dd8
	ld c,e			;9dd9
	ld b,a			;9dda
	ld b,c			;9ddb
	ld b,l			;9ddc
	ld b,h			;9ddd
	nop			;9dde
	nop			;9ddf
	ld c,b			;9de0
	ld b,(hl)		;9de1
	dec hl			;9de2
	add hl,hl		;9de3
	ld b,b			;9de4
	ld b,d			;9de5
	nop			;9de6
	nop			;9de7
	or h			;9de8
	ld c,c			;9de9
	ld hl,(04328h)		;9dea
	or (hl)			;9ded
	nop			;9dee
	nop			;9def
	nop			;9df0
	ld (bc),a		;9df1
	ex af,af'		;9df2
	nop			;9df3
	or l			;9df4
	jr nc,l9e03h		;9df5
	dec de			;9df7
	ld sp,000b7h		;9df8
	nop			;9dfb
	nop			;9dfc
	xor h			;9dfd
	xor l			;9dfe
	xor (hl)		;9dff
	or b			;9e00
	nop			;9e01
	nop			;9e02
l9e03h:
	ld (bc),a		;9e03
	nop			;9e04
	dec b			;9e05
	ex af,af'		;9e06
	nop			;9e07
	nop			;9e08
	cp d			;9e09
	dec b			;9e0a
	inc de			;9e0b
	sbc a,a			;9e0c
	nop			;9e0d
	nop			;9e0e
	nop			;9e0f
	or h			;9e10
	ld b,007h		;9e11
	dec d			;9e13
	inc d			;9e14
	or (hl)			;9e15
	nop			;9e16
	nop			;9e17
	cp b			;9e18
	ld d,h			;9e19
	ld d,l			;9e1a
	ld l,l			;9e1b
	ld l,h			;9e1c
	sbc a,l			;9e1d
	nop			;9e1e
	nop			;9e1f
	cp c			;9e20
	ld (03e2fh),hl		;9e21
	scf			;9e24
	sbc a,h			;9e25
	nop			;9e26
	nop			;9e27
	or l			;9e28
	jr nc,l9e37h		;9e29
	dec de			;9e2b
	ld sp,000b7h		;9e2c
	ld bc,00600h		;9e2f
	ex af,af'		;9e32
	nop			;9e33
	nop			;9e34
	cp d			;9e35
	dec b			;9e36
l9e37h:
	inc de			;9e37
	sbc a,a			;9e38
	nop			;9e39
	nop			;9e3a
	nop			;9e3b
	or h			;9e3c
	ld b,007h		;9e3d
	dec d			;9e3f
	inc d			;9e40
	or (hl)			;9e41
	nop			;9e42
	nop			;9e43
	cp b			;9e44
	ld d,h			;9e45
	ld d,l			;9e46
	ld l,l			;9e47
	ld l,h			;9e48
	sbc a,l			;9e49
	nop			;9e4a
	nop			;9e4b
	cp c			;9e4c
	ld (03e2fh),hl		;9e4d
	scf			;9e50
	sbc a,h			;9e51
	nop			;9e52
	nop			;9e53
	or l			;9e54
	jr nc,l9e63h		;9e55
	dec de			;9e57
	ld sp,000b7h		;9e58
	or l			;9e5b
	ld c,l			;9e5c
	ld e,a			;9e5d
	ld h,b			;9e5e
	ld h,c			;9e5f
	ld e,a			;9e60
	ld l,a			;9e61
	or a			;9e62
l9e63h:
	nop			;9e63
	nop			;9e64
	rlca			;9e65
	ex af,af'		;9e66
	nop			;9e67
	or h			;9e68
	ld c,c			;9e69
	ld hl,(04328h)		;9e6a
	or (hl)			;9e6d
	nop			;9e6e
	nop			;9e6f
	ld c,b			;9e70
	ld b,(hl)		;9e71
	dec hl			;9e72
	add hl,hl		;9e73
	ld b,b			;9e74
	ld b,d			;9e75
	nop			;9e76
	nop			;9e77
	ld c,d			;9e78
	ld c,e			;9e79
	ld b,a			;9e7a
	ld b,c			;9e7b
	ld b,l			;9e7c
	ld b,h			;9e7d
	nop			;9e7e
	nop			;9e7f
	cp c			;9e80
	and e			;9e81
	and h			;9e82
	and l			;9e83
	and (hl)		;9e84
	sbc a,h			;9e85
	nop			;9e86
	nop			;9e87
	nop			;9e88
	and a			;9e89
	xor b			;9e8a
	xor c			;9e8b
	cp l			;9e8c
	nop			;9e8d
	nop			;9e8e
	nop			;9e8f
	or l			;9e90
	jr nc,l9e9fh		;9e91
	dec de			;9e93
	ld sp,000b7h		;9e94
	or l			;9e97
	ld c,l			;9e98
	ld e,a			;9e99
	ld h,b			;9e9a
	ld h,c			;9e9b
	ld e,a			;9e9c
	ld l,a			;9e9d
	or a			;9e9e
l9e9fh:
	dec b			;9e9f
	nop			;9ea0
	ld (bc),a		;9ea1
	ex af,af'		;9ea2
	nop			;9ea3
	nop			;9ea4
	xor h			;9ea5
	xor l			;9ea6
	xor (hl)		;9ea7
	or b			;9ea8
	nop			;9ea9
	nop			;9eaa
	nop			;9eab
	or l			;9eac
	jr nc,l9ebbh		;9ead
	dec de			;9eaf
	ld sp,000b7h		;9eb0
	dec l			;9eb3
	and d			;9eb4
	ld b,b			;9eb5
	and d			;9eb6
	or l			;9eb7
	and c			;9eb8
	pop af			;9eb9
	and c			;9eba
l9ebbh:
	ld d,e			;9ebb
	and d			;9ebc
	rlca			;9ebd
	and e			;9ebe
	ld b,e			;9ebf
	and e			;9ec0
	ld a,a			;9ec1
	and e			;9ec2
l9ec3h:
	ld b,e			;9ec3
	and h			;9ec4
	ld e,a			;9ec5
	and h			;9ec6
	ld a,e			;9ec7
	and h			;9ec8
	sub a			;9ec9
	and h			;9eca
	or e			;9ecb
	and h			;9ecc
	cp e			;9ecd
	and h			;9ece
	jp 0cba4h		;9ecf
	and h			;9ed2
	rst 10h			;9ed3
	and h			;9ed4
	rst 20h			;9ed5
	and h			;9ed6
	rst 30h			;9ed7
	and h			;9ed8
	dec de			;9ed9
	and l			;9eda
	inc de			;9edb
	and l			;9edc
	dec bc			;9edd
	and l			;9ede
	inc hl			;9edf
	and l			;9ee0
	dec hl			;9ee1
	and l			;9ee2
	inc sp			;9ee3
	and l			;9ee4
	dec sp			;9ee5
	and l			;9ee6
	ld b,e			;9ee7
	and l			;9ee8
	ld c,a			;9ee9
	and l			;9eea
	ld e,a			;9eeb
	and l			;9eec
	ld (hl),e		;9eed
	and l			;9eee
	adc a,e			;9eef
	and l			;9ef0
	and a			;9ef1
	and l			;9ef2
	rst 0			;9ef3
	and l			;9ef4
	rst 20h			;9ef5
	and l			;9ef6
	rlca			;9ef7
	and (hl)		;9ef8
	inc de			;9ef9
	and (hl)		;9efa
	rra			;9efb
	and (hl)		;9efc
	inc de			;9efd
	and (hl)		;9efe
	rlca			;9eff
	and (hl)		;9f00
	jp (hl)			;9f01
	and b			;9f02
	add hl,bc		;9f03
	and c			;9f04
	add hl,hl		;9f05
	and c			;9f06
	ld c,c			;9f07
	and c			;9f08
	ld a,h			;9f09
	and (hl)		;9f0a
	adc a,a			;9f0b
	and (hl)		;9f0c
	xor a			;9f0d
	and (hl)		;9f0e
	ex (sp),hl		;9f0f
	and (hl)		;9f10
	ld b,c			;9f11
	and a			;9f12
	scf			;9f13
	sbc a,a			;9f14
	inc a			;9f15
	sbc a,a			;9f16
	ld b,l			;9f17
	sbc a,a			;9f18
	ld d,e			;9f19
	sbc a,a			;9f1a
	ld h,(hl)		;9f1b
	sbc a,a			;9f1c
	ld a,(hl)		;9f1d
	sbc a,a			;9f1e
	sbc a,e			;9f1f
	sbc a,a			;9f20
	cp l			;9f21
	sbc a,a			;9f22
	call po,0109fh		;9f23
	and b			;9f26
	scf			;9f27
	sbc a,a			;9f28
	ld b,c			;9f29
	and b			;9f2a
	ld c,d			;9f2b
	and b			;9f2c
	ld e,b			;9f2d
	and b			;9f2e
	ld l,e			;9f2f
	and b			;9f30
	add a,e			;9f31
	and b			;9f32
	and b			;9f33
	and b			;9f34
	jp nz,000a0h		;9f35
	nop			;9f38
	ld bc,00001h		;9f39
	rst 38h			;9f3c
	nop			;9f3d
	ld bc,00205h		;9f3e
	xor (hl)		;9f41
	xor a			;9f42
	sbc a,c			;9f43
	sbc a,d			;9f44
	cp 000h			;9f45
	ld (bc),a		;9f47
	dec b			;9f48
	ld (bc),a		;9f49
	xor (hl)		;9f4a
	xor a			;9f4b
	sbc a,c			;9f4c
	sbc a,d			;9f4d
	dec de			;9f4e
	sub a			;9f4f
	sbc a,b			;9f50
	sbc a,e			;9f51
	sbc a,h			;9f52
	defb 0fdh,000h,003h ;illegal sequence	;9f53
	dec b			;9f56
	ld (bc),a		;9f57
	xor (hl)		;9f58
	xor a			;9f59
	sbc a,c			;9f5a
	sbc a,d			;9f5b
	dec de			;9f5c
	sub a			;9f5d
	sbc a,b			;9f5e
	sbc a,e			;9f5f
	sbc a,h			;9f60
	inc e			;9f61
	sbc a,l			;9f62
	sbc a,(hl)		;9f63
	sbc a,c			;9f64
	sbc a,d			;9f65
	call m,00400h		;9f66
	dec b			;9f69
	ld (bc),a		;9f6a
	xor (hl)		;9f6b
	xor a			;9f6c
	sbc a,c			;9f6d
	sbc a,d			;9f6e
	dec de			;9f6f
	sub a			;9f70
	sbc a,b			;9f71
	sbc a,e			;9f72
	sbc a,h			;9f73
	inc e			;9f74
	sbc a,l			;9f75
	sbc a,(hl)		;9f76
	sbc a,c			;9f77
	sbc a,d			;9f78
	dec de			;9f79
	sub a			;9f7a
	sbc a,b			;9f7b
	sbc a,e			;9f7c
	sbc a,h			;9f7d
	ei			;9f7e
	nop			;9f7f
	dec b			;9f80
	dec b			;9f81
	ld (bc),a		;9f82
	xor (hl)		;9f83
	xor a			;9f84
	sbc a,c			;9f85
	sbc a,d			;9f86
	dec de			;9f87
	sub a			;9f88
	sbc a,b			;9f89
	sbc a,e			;9f8a
	sbc a,h			;9f8b
	inc e			;9f8c
	sbc a,l			;9f8d
	sbc a,(hl)		;9f8e
	sbc a,c			;9f8f
	sbc a,d			;9f90
	dec de			;9f91
	sub a			;9f92
	sbc a,b			;9f93
	sbc a,e			;9f94
	sbc a,h			;9f95
	inc e			;9f96
	sbc a,l			;9f97
	sbc a,(hl)		;9f98
	sbc a,c			;9f99
	sbc a,d			;9f9a
	jp m,00600h		;9f9b
	dec b			;9f9e
	ld (bc),a		;9f9f
	xor (hl)		;9fa0
	xor a			;9fa1
	sbc a,c			;9fa2
	sbc a,d			;9fa3
	dec de			;9fa4
	sub a			;9fa5
	sbc a,b			;9fa6
	sbc a,e			;9fa7
	sbc a,h			;9fa8
	inc e			;9fa9
	sbc a,l			;9faa
	sbc a,(hl)		;9fab
	sbc a,c			;9fac
	sbc a,d			;9fad
	dec de			;9fae
	sub a			;9faf
	sbc a,b			;9fb0
	sbc a,e			;9fb1
	sbc a,h			;9fb2
	inc e			;9fb3
	sbc a,l			;9fb4
	sbc a,(hl)		;9fb5
	sbc a,c			;9fb6
	sbc a,d			;9fb7
	dec de			;9fb8
	sub a			;9fb9
	sbc a,b			;9fba
	sbc a,e			;9fbb
	sbc a,h			;9fbc
	ld sp,hl		;9fbd
	nop			;9fbe
	rlca			;9fbf
	dec b			;9fc0
	ld (bc),a		;9fc1
	xor (hl)		;9fc2
	xor a			;9fc3
	sbc a,c			;9fc4
	sbc a,d			;9fc5
	dec de			;9fc6
	sub a			;9fc7
	sbc a,b			;9fc8
	sbc a,e			;9fc9
	sbc a,h			;9fca
	inc e			;9fcb
	sbc a,l			;9fcc
	sbc a,(hl)		;9fcd
	sbc a,c			;9fce
	sbc a,d			;9fcf
	dec de			;9fd0
	sub a			;9fd1
	sbc a,b			;9fd2
	sbc a,e			;9fd3
	sbc a,h			;9fd4
	inc e			;9fd5
	sbc a,l			;9fd6
	sbc a,(hl)		;9fd7
	sbc a,c			;9fd8
	sbc a,d			;9fd9
	dec de			;9fda
	sub a			;9fdb
	sbc a,b			;9fdc
	sbc a,e			;9fdd
	sbc a,h			;9fde
	inc e			;9fdf
	sbc a,l			;9fe0
	sbc a,(hl)		;9fe1
	sbc a,c			;9fe2
	sbc a,d			;9fe3
	ret m			;9fe4
	nop			;9fe5
	ex af,af'		;9fe6
	dec b			;9fe7
	ld (bc),a		;9fe8
	xor (hl)		;9fe9
	xor a			;9fea
	sbc a,c			;9feb
	sbc a,d			;9fec
	dec de			;9fed
	sub a			;9fee
	sbc a,b			;9fef
	sbc a,e			;9ff0
	sbc a,h			;9ff1
	inc e			;9ff2
	sbc a,l			;9ff3
	sbc a,(hl)		;9ff4
	sbc a,c			;9ff5
	sbc a,d			;9ff6
	dec de			;9ff7
	sub a			;9ff8
	sbc a,b			;9ff9
	sbc a,e			;9ffa
	sbc a,h			;9ffb
	inc e			;9ffc
	sbc a,l			;9ffd
	sbc a,(hl)		;9ffe
	sbc a,c			;9fff
