; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank10_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank10.bin

	org 08000h

	push af			;8000
	call sub_8032h		;8001
	pop af			;8004
	ld hl,l8189h		;8005
	call 0468eh		;8008
	call sub_8046h		;800b
	ret			;800e
	call sub_8032h		;800f
	ld a,(0ca10h)		;8012
	ld hl,l8177h		;8015
	call 0468eh		;8018
	call sub_8046h		;801b
	ret			;801e
	call sub_8029h		;801f
	call sub_803bh		;8022
	call sub_8371h		;8025
	ret			;8028
sub_8029h:
	ld hl,0de00h		;8029
	ld bc,000ffh		;802c
	jp l8226h		;802f
sub_8032h:
	ld hl,0de00h		;8032
	ld bc,000cdh		;8035
	jp l8226h		;8038
sub_803bh:
	push af			;803b
	ld hl,l83fdh		;803c
	call sub_8046h		;803f
	pop af			;8042
	call sub_815fh		;8043
sub_8046h:
	push hl			;8046
	ld hl,0d700h		;8047
	ld bc,000ffh		;804a
	call l8226h		;804d
	pop ix			;8050
	ld a,(ix+000h)		;8052
	inc a			;8055
	call nz,sub_8069h	;8056
l8059h:
	inc ix			;8059
	call sub_818fh		;805b
	call sub_81c2h		;805e
	jr c,l8059h		;8061
	inc ix			;8063
	call sub_8209h		;8065
	ret			;8068
sub_8069h:
	push ix			;8069
	pop hl			;806b
	call 04ce0h		;806c
	push hl			;806f
	pop ix			;8070
	ret			;8072
	ld a,(00007h)		;8073
	ld c,a			;8076
	ld de,00000h		;8077
	ld a,0ffh		;807a
l807ch:
	out (c),a		;807c
	dec e			;807e
	jr nz,l807ch		;807f
	dec d			;8081
	jr nz,l807ch		;8082
	ret			;8084
	xor a			;8085
	ld b,000h		;8086
l8088h:
	out (c),a		;8088
	inc a			;808a
	djnz l8088h		;808b
l808dh:
	ret			;808d
	ld a,008h		;808e
	call sub_8157h		;8090
	bit 5,a			;8093
	jr z,l80afh		;8095
	bit 6,a			;8097
	jr z,l80a6h		;8099
	call sub_80d6h		;809b
	ret z			;809e
	call sub_80ech		;809f
	call sub_80f8h		;80a2
	ret			;80a5
l80a6h:
	ld a,(0c0b2h)		;80a6
	dec a			;80a9
	and 003h		;80aa
	ret z			;80ac
	jr l80b6h		;80ad
l80afh:
	ld a,(0c0b2h)		;80af
	and 003h		;80b2
	ret z			;80b4
	inc a			;80b5
l80b6h:
	set 7,a			;80b6
	ld (0c0b2h),a		;80b8
	and 003h		;80bb
	rrca			;80bd
	rrca			;80be
	push ix			;80bf
	push bc			;80c1
	push af			;80c2
	ld b,a			;80c3
	ld c,017h		;80c4
	call 00047h		;80c6
	pop af			;80c9
	pop bc			;80ca
	pop ix			;80cb
l80cdh:
	ld a,008h		;80cd
	call sub_8157h		;80cf
	inc a			;80d2
	ret z			;80d3
	jr l80cdh		;80d4
sub_80d6h:
	ld a,002h		;80d6
	call sub_8157h		;80d8
	push af			;80db
	ld a,003h		;80dc
	call sub_8157h		;80de
	pop bc			;80e1
	rl b			;80e2
	rla			;80e4
	rl b			;80e5
	rla			;80e7
	cpl			;80e8
	and 07fh		;80e9
	ret			;80eb
sub_80ech:
	ld c,0ffh		;80ec
l80eeh:
	rrca			;80ee
	inc c			;80ef
	jr nc,l80eeh		;80f0
	ld a,c			;80f2
	ret			;80f3
	ld (0c0b5h),a		;80f4
	ret			;80f7
sub_80f8h:
	ld (0c0b4h),a		;80f8
	call 04e82h		;80fb
	push ix			;80fe
	and 001h		;8100
	push hl			;8102
	push af			;8103
	ld de,02000h		;8104
	add hl,de		;8107
	push bc			;8108
	ld b,006h		;8109
l810bh:
	sra a			;810b
	rr h			;810d
	rr l			;810f
	djnz l810bh		;8111
	pop bc			;8113
	ld a,000h		;8114
	or h			;8116
	ld h,a			;8117
	ld a,07fh		;8118
	or l			;811a
	ld l,a			;811b
	or h			;811c
	push bc			;811d
	push af			;811e
	ld b,h			;811f
	ld c,00ah		;8120
	call 00047h		;8122
	pop af			;8125
	pop bc			;8126
l8127h:
	push bc			;8127
	push af			;8128
	ld b,l			;8129
	ld c,003h		;812a
	call 00047h		;812c
	pop af			;812f
	pop bc			;8130
	pop af			;8131
	pop hl			;8132
	push bc			;8133
	ld b,003h		;8134
l8136h:
	sra a			;8136
	rr h			;8138
	rr l			;813a
	djnz l8136h		;813c
	pop bc			;813e
	ld a,h			;813f
	or 003h			;8140
	push bc			;8142
	push af			;8143
	ld b,a			;8144
	ld c,004h		;8145
	call 00047h		;8147
	pop af			;814a
	pop bc			;814b
	pop ix			;814c
	ret			;814e
	ld a,007h		;814f
	call sub_8157h		;8151
	bit 3,a			;8154
	ret			;8156
sub_8157h:
	push ix			;8157
	call 00141h		;8159
	pop ix			;815c
	ret			;815e
sub_815fh:
	ld hl,l8165h		;815f
	jp 0468eh		;8162
l8165h:
	ld b,(hl)		;8165
	add a,h			;8166
	ld a,a			;8167
	add a,(hl)		;8168
	ld d,087h		;8169
	ret nc			;816b
	adc a,b			;816c
	cp d			;816d
	adc a,c			;816e
	xor (hl)		;816f
	adc a,e			;8170
	ld h,h			;8171
	adc a,(hl)		;8172
	ld d,(hl)		;8173
	sub c			;8174
	add a,d			;8175
	sub c			;8176
l8177h:
	ld c,c			;8177
	add a,(hl)		;8178
	add hl,bc		;8179
	add a,a			;817a
	or h			;817b
	adc a,b			;817c
	sbc a,e			;817d
	adc a,c			;817e
	sub d			;817f
	adc a,e			;8180
	add hl,hl		;8181
	adc a,(hl)		;8182
	ld c,h			;8183
l8184h:
	sub c			;8184
	ld (hl),d		;8185
	sub c			;8186
	add a,d			;8187
	sub c			;8188
l8189h:
	ld d,(hl)		;8189
	add a,(hl)		;818a
	ld b,l			;818b
	adc a,(hl)		;818c
	ld h,(hl)		;818d
	add a,(hl)		;818e
sub_818fh:
	ld hl,0d710h		;818f
	ld bc,000efh		;8192
	call l8226h		;8195
l8198h:
	ld a,(ix+000h)		;8198
	inc a			;819b
	inc ix			;819c
	ret z			;819e
	dec a			;819f
	jr z,l81b7h		;81a0
	dec a			;81a2
	call sub_81bah		;81a3
	ld l,a			;81a6
	ld h,000h		;81a7
	ld de,0d710h		;81a9
	add hl,de		;81ac
l81adh:
	ld a,(hl)		;81ad
	or a			;81ae
	inc hl			;81af
	jr nz,l81adh		;81b0
	dec hl			;81b2
	inc c			;81b3
	ld (hl),c		;81b4
	jr l8198h		;81b5
l81b7h:
	inc c			;81b7
	jr l8198h		;81b8
sub_81bah:
	add a,a			;81ba
	add a,a			;81bb
	ld b,a			;81bc
	add a,a			;81bd
	add a,a			;81be
	add a,a			;81bf
	sub b			;81c0
	ret			;81c1
sub_81c2h:
	ld a,(ix+000h)		;81c2
	inc a			;81c5
	or a			;81c6
	ret z			;81c7
	cp 0ffh			;81c8
	scf			;81ca
	ret z			;81cb
	ld l,(ix+003h)		;81cc
	ld h,(ix+004h)		;81cf
	ld a,(ix+007h)		;81d2
	call sub_827bh		;81d5
	ld a,(ix+000h)		;81d8
	call sub_82e8h		;81db
	ld d,(ix+002h)		;81de
	ld a,(ix+001h)		;81e1
	call sub_8233h		;81e4
	ld a,(ix+007h)		;81e7
	ld l,(ix+005h)		;81ea
	ld h,(ix+006h)		;81ed
	call sub_827bh		;81f0
	ld a,(ix+000h)		;81f3
	call sub_82fch		;81f6
	ld d,(ix+002h)		;81f9
	ld a,(ix+001h)		;81fc
	call sub_822eh		;81ff
	ld bc,00008h		;8202
	add ix,bc		;8205
	jr sub_81c2h		;8207
sub_8209h:
	ld h,0deh		;8209
	ld l,(ix+001h)		;820b
	ld a,(ix+002h)		;820e
	sub l			;8211
	inc a			;8212
	ld b,a			;8213
	ld a,(ix+000h)		;8214
	cp 0ffh			;8217
	ret z			;8219
l821ah:
	ld (hl),a		;821a
	inc hl			;821b
	djnz l821ah		;821c
	inc ix			;821e
	inc ix			;8220
	inc ix			;8222
	jr sub_8209h		;8224
l8226h:
	ld (hl),000h		;8226
	ld d,h			;8228
	ld e,l			;8229
	inc de			;822a
	ldir			;822b
	ret			;822d
sub_822eh:
	push af			;822e
	ld a,020h		;822f
	jr l8235h		;8231
sub_8233h:
	push af			;8233
	xor a			;8234
l8235h:
	ld (0c93eh),a		;8235
	pop af			;8238
	ld bc,00800h		;8239
l823ch:
	add a,a			;823c
	push af			;823d
	push bc			;823e
	push de			;823f
	call c,sub_824ah	;8240
	pop de			;8243
	pop bc			;8244
	pop af			;8245
	inc c			;8246
	djnz l823ch		;8247
	ret			;8249
sub_824ah:
	ld a,c			;824a
	call sub_81bah		;824b
	ld c,a			;824e
	ld b,000h		;824f
	ld hl,0d710h		;8251
	add hl,bc		;8254
l8255h:
	ld a,(hl)		;8255
	inc hl			;8256
	or a			;8257
	ret z			;8258
	dec a			;8259
	push hl			;825a
	push de			;825b
	call sub_8263h		;825c
	pop de			;825f
	pop hl			;8260
	jr l8255h		;8261
sub_8263h:
	ld l,d			;8263
	ld h,000h		;8264
	add hl,hl		;8266
	add hl,hl		;8267
	add hl,hl		;8268
	push hl			;8269
	call 04e8ah		;826a
	pop de			;826d
	add hl,de		;826e
	ex de,hl		;826f
	ld hl,0d800h		;8270
	ld bc,(0d700h)		;8273
	call 046adh		;8277
	ret			;827a
sub_827bh:
	ld de,0d800h		;827b
	call sub_82bah		;827e
	call sub_8290h		;8281
	ld h,d			;8284
	ld l,e			;8285
	or a			;8286
	ld bc,0d800h		;8287
	sbc hl,bc		;828a
	ld (0d700h),hl		;828c
	ret			;828f
sub_8290h:
	ld a,(hl)		;8290
	inc l			;8291
	call z,sub_82d2h	;8292
	or a			;8295
	ret z			;8296
	ld b,a			;8297
	and 07fh		;8298
	cp b			;829a
	jr z,l82afh		;829b
	or a			;829d
	jr z,sub_8290h		;829e
	ld c,a			;82a0
	ld b,000h		;82a1
l82a3h:
	ld a,(hl)		;82a3
	ld (de),a		;82a4
	inc de			;82a5
	inc l			;82a6
	call z,sub_82d2h	;82a7
	dec c			;82aa
	jr nz,l82a3h		;82ab
	jr sub_8290h		;82ad
l82afh:
	ld a,(hl)		;82af
	inc l			;82b0
	call z,sub_82d2h	;82b1
l82b4h:
	ld (de),a		;82b4
	inc de			;82b5
	djnz l82b4h		;82b6
	jr sub_8290h		;82b8
sub_82bah:
	push af			;82ba
	ld a,h			;82bb
	and 0e0h		;82bc
	rlca			;82be
	rlca			;82bf
	rlca			;82c0
	add a,00ch		;82c1
	pop bc			;82c3
	add a,b			;82c4
	ld (0d703h),a		;82c5
	call 04c23h		;82c8
	ld a,h			;82cb
	and 01fh		;82cc
	add a,0a0h		;82ce
	ld h,a			;82d0
	ret			;82d1
sub_82d2h:
	push af			;82d2
	inc h			;82d3
	ld a,h			;82d4
	cp 0c0h			;82d5
	jr c,l82e6h		;82d7
	sub 020h		;82d9
	ld h,a			;82db
	ld a,(0d703h)		;82dc
	inc a			;82df
	ld (0d703h),a		;82e0
	call 04c23h		;82e3
l82e6h:
	pop af			;82e6
	ret			;82e7
sub_82e8h:
	push de			;82e8
	push af			;82e9
	ex de,hl		;82ea
	bit 0,a			;82eb
	call nz,sub_8307h	;82ed
	pop af			;82f0
	pop de			;82f1
	push de			;82f2
	push af			;82f3
	bit 1,a			;82f4
	call nz,sub_8341h	;82f6
	pop af			;82f9
	pop de			;82fa
	ret			;82fb
sub_82fch:
	push de			;82fc
	push af			;82fd
	ex de,hl		;82fe
	bit 0,a			;82ff
	call nz,sub_8307h	;8301
	pop af			;8304
	pop de			;8305
	ret			;8306
sub_8307h:
	ld bc,(0d700h)		;8307
	srl b			;830b
	rr c			;830d
	srl b			;830f
	rr c			;8311
	srl b			;8313
	rr c			;8315
	ld a,b			;8317
	or c			;8318
l8319h:
	jr z,l8319h		;8319
	ld hl,0d800h		;831b
	ld de,0d807h		;831e
l8321h:
	push de			;8321
	push bc			;8322
	call sub_8334h		;8323
	pop bc			;8326
	pop de			;8327
	inc de			;8328
	ld hl,00007h		;8329
	add hl,de		;832c
	ex de,hl		;832d
	dec bc			;832e
	ld a,b			;832f
	or c			;8330
	jr nz,l8321h		;8331
	ret			;8333
sub_8334h:
	ld b,004h		;8334
l8336h:
	ld c,(hl)		;8336
	ld a,(de)		;8337
	ex de,hl		;8338
	ld (hl),c		;8339
	ld (de),a		;833a
	ex de,hl		;833b
	inc hl			;833c
	dec de			;833d
	djnz l8336h		;833e
	ret			;8340
sub_8341h:
	ld de,(0d700h)		;8341
	ld hl,0d800h		;8345
l8348h:
	ld a,(hl)		;8348
	rr a			;8349
	rl c			;834b
	rr a			;834d
	rl c			;834f
	rr a			;8351
	rl c			;8353
	rr a			;8355
	rl c			;8357
	rr a			;8359
	rl c			;835b
	rr a			;835d
	rl c			;835f
	rr a			;8361
	rl c			;8363
	rr a			;8365
	rl c			;8367
	ld (hl),c		;8369
	inc hl			;836a
	dec de			;836b
	ld a,d			;836c
	or e			;836d
	jr nz,l8348h		;836e
	ret			;8370
sub_8371h:
	ld a,(0ca10h)		;8371
	cp 007h			;8374
	ret z			;8376
	ld hl,0df00h		;8377
	ld bc,0007fh		;837a
	call 04648h		;837d
	ld hl,l92b8h		;8380
	call sub_8389h		;8383
	call sub_83b6h		;8386
sub_8389h:
	push hl			;8389
	pop ix			;838a
l838ch:
	ld a,(ix+000h)		;838c
	or a			;838f
	ret z			;8390
	ld h,(ix+003h)		;8391
	ld l,(ix+002h)		;8394
	ld a,(ix+004h)		;8397
	call sub_827bh		;839a
	ld a,(ix+000h)		;839d
	ld l,(ix+001h)		;83a0
	call sub_83d5h		;83a3
	ld a,(ix+001h)		;83a6
	ld l,(ix+005h)		;83a9
	ld h,0dfh		;83ac
	ld (hl),a		;83ae
	ld bc,00006h		;83af
	add ix,bc		;83b2
	jr l838ch		;83b4
sub_83b6h:
	ld a,(0ca10h)		;83b6
	ld hl,l83c0h		;83b9
	call 0468eh		;83bc
	ret			;83bf
l83c0h:
	rst 10h			;83c0
	sub d			;83c1
	ld h,093h		;83c2
	ld a,e			;83c4
	sub e			;83c5
	cp b			;83c6
	sub e			;83c7
	ex (sp),hl		;83c8
	sub e			;83c9
	ld c,094h		;83ca
	ccf			;83cc
	sub h			;83cd
	ld a,h			;83ce
	sub h			;83cf
	ld a,l			;83d0
	sub h			;83d1
	call nc,00083h		;83d2
sub_83d5h:
	ld de,0c800h		;83d5
	ld h,000h		;83d8
	add hl,hl		;83da
	add hl,hl		;83db
	add hl,hl		;83dc
	add hl,de		;83dd
	ld b,003h		;83de
l83e0h:
	rrca			;83e0
	push hl			;83e1
	push af			;83e2
	push bc			;83e3
	call c,sub_83f1h	;83e4
	pop bc			;83e7
	pop af			;83e8
	pop hl			;83e9
	ld de,00800h		;83ea
	add hl,de		;83ed
	djnz l83e0h		;83ee
	ret			;83f0
sub_83f1h:
	ex de,hl		;83f1
	ld hl,0d800h		;83f2
	ld bc,(0d700h)		;83f5
	call 046ach		;83f9
	ret			;83fc
l83fdh:
	ld (hl),b		;83fd
	ld h,b			;83fe
	rla			;83ff
	ld (hl),c		;8400
l8401h:
	ld b,l			;8401
l8402h:
	add a,h			;8402
	ld (hl),b		;8403
	and a			;8404
	inc sp			;8405
	out (077h),a		;8406
l8408h:
	rst 20h			;8408
	nop			;8409
	ret p			;840a
	rst 38h			;840b
	ld bc,00101h		;840c
	ld bc,00101h		;840f
	ld bc,00101h		;8412
	ld bc,00101h		;8415
	ld bc,00101h		;8418
	ld bc,00101h		;841b
	ld bc,00101h		;841e
	ld bc,00101h		;8421
	ld bc,00101h		;8424
	ld bc,000ffh		;8427
	add a,b			;842a
	nop			;842b
	ccf			;842c
	ld b,b			;842d
	ccf			;842e
	ld b,b			;842f
	nop			;8430
	nop			;8431
	add a,b			;8432
	adc a,048h		;8433
	ld b,b			;8435
	dec hl			;8436
	ld b,c			;8437
	nop			;8438
	nop			;8439
	add a,b			;843a
	ex de,hl		;843b
	dec d			;843c
	ld c,d			;843d
	sub a			;843e
	ld c,c			;843f
	inc b			;8440
	rst 38h			;8441
	inc h			;8442
	adc a,0e9h		;8443
	rst 38h			;8445
	ld (bc),a		;8446
	nop			;8447
	inc b			;8448
	djnz $+24		;8449
	ld hl,03227h		;844b
	nop			;844e
	ld b,b			;844f
	ld (00052h),hl		;8450
	sub b			;8453
	ld b,a			;8454
	or (hl)			;8455
	ld h,0c3h		;8456
	rst 38h			;8458
	nop			;8459
	nop			;845a
	nop			;845b
	nop			;845c
	dec b			;845d
	inc b			;845e
	ex af,af'		;845f
	ld bc,00506h		;8460
	inc b			;8463
	ex af,af'		;8464
	rlca			;8465
	ld b,005h		;8466
	inc b			;8468
	rlca			;8469
	rlca			;846a
	ld b,005h		;846b
	inc bc			;846d
	inc bc			;846e
	ld (bc),a		;846f
	ld bc,00000h		;8470
	nop			;8473
	nop			;8474
	rst 38h			;8475
	nop			;8476
	rst 38h			;8477
	nop			;8478
	or e			;8479
	ld b,e			;847a
	or (hl)			;847b
	ld b,e			;847c
	nop			;847d
	nop			;847e
	rst 38h			;847f
	add a,0b9h		;8480
	ld b,e			;8482
	call c,00043h		;8483
	nop			;8486
	add a,b			;8487
	cp c			;8488
	rst 18h			;8489
	ld b,e			;848a
	ld b,b			;848b
	ld b,h			;848c
	nop			;848d
l848eh:
	nop			;848e
	pop af			;848f
	ld sp,04e3eh		;8490
	ld c,d			;8493
	ld c,(hl)		;8494
	nop			;8495
	nop			;8496
	add a,b			;8497
	ld c,h			;8498
	ld e,d			;8499
	ld c,(hl)		;849a
	defb 0fdh,04fh,000h ;illegal sequence	;849b
	nop			;849e
	add a,b			;849f
	adc a,l			;84a0
	jr c,$+83		;84a1
	ld sp,00052h		;84a3
	nop			;84a6
	add a,b			;84a7
	or c			;84a8
	push hl			;84a9
	ld d,d			;84aa
	jr l8500h		;84ab
	nop			;84ad
	nop			;84ae
	defb 0fdh,001h,059h ;illegal sequence	;84af
	ld d,e			;84b2
	jp nc,00054h		;84b3
	nop			;84b6
	ld h,c			;84b7
	inc sp			;84b8
	ld (hl),056h		;84b9
	jp pe,00056h		;84bb
	nop			;84be
	ld a,c			;84bf
	ld c,a			;84c0
	ld (hl),l		;84c1
	ld d,a			;84c2
	sbc a,058h		;84c3
	nop			;84c5
	nop			;84c6
	ld a,l			;84c7
	add a,(hl)		;84c8
	ex af,af'		;84c9
	ld e,d			;84ca
	ret c			;84cb
	ld e,e			;84cc
	nop			;84cd
	nop			;84ce
	jr nz,l848eh		;84cf
	ld e,a			;84d1
	ld e,l			;84d2
	ld (hl),b		;84d3
	ld e,l			;84d4
	nop			;84d5
	nop			;84d6
	inc e			;84d7
	ld (05d83h),a		;84d8
	ccf			;84db
	ld e,(hl)		;84dc
	nop			;84dd
	nop			;84de
	inc e			;84df
	add a,(hl)		;84e0
	call 0db5eh		;84e1
	ld e,(hl)		;84e4
	nop			;84e5
	nop			;84e6
	jr $-67			;84e7
	jp po,0f95eh		;84e9
	ld e,(hl)		;84ec
	nop			;84ed
	nop			;84ee
	inc e			;84ef
	ret nz			;84f0
	rrca			;84f1
	ld e,a			;84f2
	jr l8554h		;84f3
	nop			;84f5
	nop			;84f6
	ex af,af'		;84f7
	ld sp,05f21h		;84f8
	jr z,l855ch		;84fb
	nop			;84fd
	nop			;84fe
	ex af,af'		;84ff
l8500h:
	ld l,e			;8500
	dec l			;8501
	ld e,a			;8502
	add hl,sp		;8503
	ld e,a			;8504
	nop			;8505
	nop			;8506
	ex af,af'		;8507
	ld a,d			;8508
	ld c,d			;8509
	ld e,a			;850a
	ld d,h			;850b
	ld e,a			;850c
	nop			;850d
	nop			;850e
	ex af,af'		;850f
	add a,d			;8510
	ld e,c			;8511
	ld e,a			;8512
	ld h,e			;8513
	ld e,a			;8514
	nop			;8515
	nop			;8516
	ex af,af'		;8517
	xor d			;8518
	ld l,l			;8519
	ld e,a			;851a
	ld a,a			;851b
	ld e,a			;851c
	nop			;851d
	nop			;851e
	ex af,af'		;851f
	cp c			;8520
	sub b			;8521
	ld e,a			;8522
	sbc a,a			;8523
	ld e,a			;8524
	nop			;8525
	nop			;8526
	inc b			;8527
	ld sp,05fabh		;8528
	or h			;852b
	ld e,a			;852c
	nop			;852d
	nop			;852e
	inc b			;852f
	ld c,a			;8530
	or a			;8531
	ld e,a			;8532
	ld e,b			;8533
	ld h,c			;8534
	nop			;8535
	nop			;8536
	inc b			;8537
	and (hl)		;8538
	cp (hl)			;8539
	ld h,d			;853a
	defb 0ddh,062h ;ld ixh,d	;853b
	nop			;853d
	nop			;853e
	inc b			;853f
	or h			;8540
	push af			;8541
	ld h,d			;8542
	scf			;8543
	ld h,e			;8544
	nop			;8545
	nop			;8546
	ld (bc),a		;8547
	ld bc,06376h		;8548
	dec b			;854b
	ld h,h			;854c
	nop			;854d
	nop			;854e
	ld (bc),a		;854f
	inc de			;8550
	halt			;8551
	ld h,e			;8552
	dec b			;8553
l8554h:
	ld h,h			;8554
	nop			;8555
	nop			;8556
	ld (bc),a		;8557
	ld sp,06495h		;8558
	and d			;855b
l855ch:
	ld h,h			;855c
	nop			;855d
	nop			;855e
	ld (bc),a		;855f
	ld c,e			;8560
	and a			;8561
	ld h,h			;8562
	or e			;8563
	ld h,h			;8564
	nop			;8565
	nop			;8566
	ld (bc),a		;8567
	ld h,b			;8568
	cp (hl)			;8569
	ld h,h			;856a
	adc a,l			;856b
	ld h,l			;856c
	nop			;856d
	nop			;856e
	ld (bc),a		;856f
	adc a,l			;8570
	ld a,b			;8571
	ld h,(hl)		;8572
	jp m,00066h		;8573
	nop			;8576
	ld (bc),a		;8577
l8578h:
	xor h			;8578
	ld a,h			;8579
	ld h,a			;857a
	dec c			;857b
	ld l,b			;857c
	nop			;857d
	nop			;857e
	ld bc,l8a32h		;857f
	ld l,b			;8582
	ex (sp),hl		;8583
	ld l,b			;8584
	nop			;8585
	nop			;8586
	rst 38h			;8587
	adc a,048h		;8588
	ld b,b			;858a
	in a,(042h)		;858b
	nop			;858d
	nop			;858e
	rst 38h			;858f
	ex de,hl		;8590
	dec d			;8591
	ld c,d			;8592
	sub 049h		;8593
	inc b			;8595
	cp 005h			;8596
	dec b			;8598
	dec b			;8599
	inc b			;859a
	nop			;859b
	nop			;859c
	nop			;859d
	nop			;859e
	nop			;859f
	nop			;85a0
	nop			;85a1
	nop			;85a2
	nop			;85a3
	nop			;85a4
	nop			;85a5
	nop			;85a6
	nop			;85a7
	nop			;85a8
	nop			;85a9
	nop			;85aa
	nop			;85ab
	nop			;85ac
	nop			;85ad
	nop			;85ae
	ld bc,00302h		;85af
	nop			;85b2
	rst 38h			;85b3
	nop			;85b4
	ret po			;85b5
	ld bc,07b10h		;85b6
	jr nc,l8637h		;85b9
	inc b			;85bb
	nop			;85bc
	ret nz			;85bd
	inc l			;85be
	cp 07ch			;85bf
	ld e,l			;85c1
	ld a,l			;85c2
	inc b			;85c3
	nop			;85c4
	ret nz			;85c5
	sub b			;85c6
	xor (hl)		;85c7
l85c8h:
	ld a,l			;85c8
	defb 0ddh,07dh ;ld a,ixl	;85c9
	inc b			;85cb
	nop			;85cc
l85cdh:
	add a,b			;85cd
	add hl,sp		;85ce
	jp m,02f7dh		;85cf
	ld a,(hl)		;85d2
	inc b			;85d3
	nop			;85d4
	add a,b			;85d5
	sbc a,b			;85d6
	ld c,(hl)		;85d7
	ld a,(hl)		;85d8
	ld (hl),c		;85d9
	ld a,(hl)		;85da
	inc b			;85db
	nop			;85dc
	ld b,b			;85dd
	add hl,sp		;85de
	ld a,(hl)		;85df
	ld a,(hl)		;85e0
	ex (sp),hl		;85e1
	add a,b			;85e2
	inc b			;85e3
	nop			;85e4
	ld b,b			;85e5
	sbc a,b			;85e6
	jp p,0c981h		;85e7
	add a,d			;85ea
	inc b			;85eb
	nop			;85ec
	jr nz,$+46		;85ed
	dec sp			;85ef
	add a,e			;85f0
	and l			;85f1
	add a,l			;85f2
	inc b			;85f3
	nop			;85f4
	jr nz,l8578h		;85f5
	inc sp			;85f7
	add a,a			;85f8
	ld h,(hl)		;85f9
	adc a,c			;85fa
	inc b			;85fb
	nop			;85fc
	jr l85ffh		;85fd
l85ffh:
	or e			;85ff
	ld b,e			;8600
	or (hl)			;8601
	ld b,e			;8602
	nop			;8603
	nop			;8604
	jr l85cdh		;8605
	cp c			;8607
	ld b,e			;8608
	call c,00043h		;8609
	nop			;860c
	djnz l85c8h		;860d
	rst 18h			;860f
	ld b,e			;8610
	ld b,b			;8611
	ld b,h			;8612
	nop			;8613
	nop			;8614
	jr l8618h		;8615
	add a,h			;8617
l8618h:
	ld b,h			;8618
	call z,00044h		;8619
	nop			;861c
	djnz $+18		;861d
	cp 044h			;861f
	xor h			;8621
	ld b,l			;8622
	nop			;8623
	nop			;8624
	ex af,af'		;8625
	djnz l8633h		;8626
	ld b,(hl)		;8628
	inc (hl)		;8629
	ld c,d			;862a
	nop			;862b
	nop			;862c
	ret m			;862d
	adc a,048h		;862e
	ld b,b			;8630
	in a,(042h)		;8631
l8633h:
	nop			;8633
	nop			;8634
	ret m			;8635
	ex de,hl		;8636
l8637h:
	dec d			;8637
	ld c,d			;8638
	sub 049h		;8639
	inc b			;863b
	nop			;863c
	ld b,b			;863d
	ret nz			;863e
	nop			;863f
	ld b,b			;8640
	ld e,040h		;8641
	nop			;8643
	rst 38h			;8644
	inc bc			;8645
	cp l			;8646
	push bc			;8647
	rst 38h			;8648
	rst 38h			;8649
	rst 38h			;864a
	rst 38h			;864b
	ld b,a			;864c
	ld bc,00210h		;864d
	ld de,0031eh		;8650
	rra			;8653
	adc a,l			;8654
	rst 38h			;8655
	rst 38h			;8656
	rst 38h			;8657
	rst 38h			;8658
	inc bc			;8659
	dec c			;865a
	adc a,a			;865b
	inc bc			;865c
	and (hl)		;865d
	or c			;865e
	ld b,a			;865f
	or (hl)			;8660
	cp e			;8661
	inc bc			;8662
	cp h			;8663
	call 0ffffh		;8664
	rst 38h			;8667
	rst 38h			;8668
	ld b,a			;8669
	ld bc,04710h		;866a
	ld d,030h		;866d
	ld (bc),a		;866f
	ld de,00211h		;8670
	jr l868dh		;8673
	inc bc			;8675
	inc sp			;8676
	adc a,h			;8677
	ld (bc),a		;8678
	adc a,l			;8679
	xor e			;867a
	inc bc			;867b
	cp l			;867c
	push bc			;867d
	rst 38h			;867e
	jr nz,$+3		;867f
	ld sp,04212h		;8681
	inc hl			;8684
	inc b			;8685
	ld sp,04306h		;8686
	rlca			;8689
	ld d,l			;868a
	nop			;868b
	sub b			;868c
l868dh:
	ld d,(hl)		;868d
	or (hl)			;868e
	inc de			;868f
	jp 001ffh		;8690
	ld bc,00101h		;8693
	ld (bc),a		;8696
	ld (bc),a		;8697
	inc bc			;8698
	inc bc			;8699
	rst 38h			;869a
	nop			;869b
	add a,b			;869c
	ld bc,04000h		;869d
	add a,d			;86a0
	ld b,b			;86a1
	inc b			;86a2
	nop			;86a3
	add a,b			;86a4
	ld de,040f0h		;86a5
	ld h,042h		;86a8
	inc b			;86aa
	nop			;86ab
	add a,b			;86ac
	ld c,e			;86ad
l86aeh:
	sub (hl)		;86ae
	ld b,e			;86af
	xor h			;86b0
	ld b,l			;86b1
	inc b			;86b2
	nop			;86b3
	add a,b			;86b4
	xor b			;86b5
	ld e,b			;86b6
	ld b,a			;86b7
	ld (hl),l		;86b8
	ld c,b			;86b9
	inc b			;86ba
	nop			;86bb
	ld b,b			;86bc
	ld bc,0b0f1h		;86bd
	sub l			;86c0
	or d			;86c1
	nop			;86c2
	ld bc,00120h		;86c3
	pop af			;86c6
	or b			;86c7
	sub l			;86c8
	or d			;86c9
	nop			;86ca
	nop			;86cb
	ld b,b			;86cc
	ld d,b			;86cd
	call nz,0d4b3h		;86ce
	or (hl)			;86d1
	nop			;86d2
	ld bc,05020h		;86d3
	call nz,0d4b3h		;86d6
	or (hl)			;86d9
	nop			;86da
	nop			;86db
	ld h,b			;86dc
	call nz,0b94eh		;86dd
	add a,(hl)		;86e0
	cp c			;86e1
	nop			;86e2
	nop			;86e3
	ld b,b			;86e4
	res 1,c			;86e5
	cp c			;86e7
	and e			;86e8
	cp c			;86e9
	nop			;86ea
	ld bc,0cb20h		;86eb
	adc a,c			;86ee
	cp c			;86ef
	and e			;86f0
	cp c			;86f1
	nop			;86f2
	nop			;86f3
	jr nz,l86aeh		;86f4
	or (hl)			;86f6
	cp c			;86f7
	ret pe			;86f8
	cp c			;86f9
	nop			;86fa
	rst 38h			;86fb
	ld b,a			;86fc
	ld bc,00310h		;86fd
	ld de,0474ah		;8700
	xor h			;8703
	cp a			;8704
	inc bc			;8705
	ret nz			;8706
	call 0ffffh		;8707
	rst 38h			;870a
	rst 38h			;870b
	inc bc			;870c
	ld d,b			;870d
	cp l			;870e
	ld b,a			;870f
	set 1,l			;8710
	ld (bc),a		;8712
	call nz,0ffcah		;8713
	nop			;8716
	nop			;8717
	jr nc,$+19		;8718
	ld h,c			;871a
	inc h			;871b
	ld (hl),h		;871c
	ld (hl),074h		;871d
	ld b,h			;871f
	ld (07252h),hl		;8720
	sub d			;8723
	ld b,(hl)		;8724
	or (hl)			;8725
	inc d			;8726
	jp 001ffh		;8727
	ld bc,00202h		;872a
	inc bc			;872d
	inc b			;872e
	dec b			;872f
	ld b,0ffh		;8730
	nop			;8732
	rst 38h			;8733
	nop			;8734
	ld b,l			;8735
	ld b,b			;8736
	ld b,d			;8737
	ld b,b			;8738
	nop			;8739
	nop			;873a
	add a,b			;873b
	ld bc,06918h		;873c
	ld c,h			;873f
	ld l,c			;8740
	nop			;8741
	nop			;8742
	add a,b			;8743
	ld l,(hl)		;8744
	ld h,h			;8745
	ld l,c			;8746
	add hl,hl		;8747
	ld l,e			;8748
	nop			;8749
	nop			;874a
	ld b,b			;874b
	ld bc,06bf9h		;874c
	add hl,hl		;874f
	ld l,h			;8750
	nop			;8751
	nop			;8752
	ld b,b			;8753
	ld l,c			;8754
	ld b,b			;8755
	ld l,h			;8756
	ld hl,(0006eh)		;8757
	nop			;875a
	ret nz			;875b
	add hl,bc		;875c
	jr nz,l87ceh		;875d
	ret pe			;875f
	ld (hl),c		;8760
	nop			;8761
	nop			;8762
	ret nz			;8763
	and a			;8764
	dec c			;8765
	ld (hl),h		;8766
	ld b,l			;8767
	ld (hl),h		;8768
	nop			;8769
	nop			;876a
	add a,b			;876b
	xor a			;876c
	ld a,h			;876d
	ld (hl),h		;876e
	adc a,074h		;876f
	nop			;8771
	ld bc,0af40h		;8772
	ld a,h			;8775
	ld (hl),h		;8776
	adc a,074h		;8777
	nop			;8779
	nop			;877a
	ret nz			;877b
	cp c			;877c
	inc e			;877d
	ld (hl),l		;877e
	ld l,075h		;877f
	nop			;8781
	nop			;8782
	add a,b			;8783
	cp h			;8784
	ld c,b			;8785
l8786h:
	ld (hl),l		;8786
	xor h			;8787
	ld (hl),l		;8788
	nop			;8789
	ld bc,0bc40h		;878a
	ld c,b			;878d
	ld (hl),l		;878e
	xor h			;878f
	ld (hl),l		;8790
	nop			;8791
	nop			;8792
	ret nz			;8793
	jp z,07613h		;8794
	inc (hl)		;8797
	halt			;8798
	nop			;8799
	nop			;879a
	ret nz			;879b
	ld e,b			;879c
	cp c			;879d
	ld b,e			;879e
	call c,00043h		;879f
	nop			;87a2
	jr nz,$+3		;87a3
	call z,01a9eh		;87a5
	sbc a,a			;87a8
	nop			;87a9
	nop			;87aa
	jr nc,l87bdh		;87ab
	ccf			;87ad
	sbc a,a			;87ae
	ld e,h			;87af
	sbc a,a			;87b0
	nop			;87b1
	nop			;87b2
	jr nz,l87fdh		;87b3
	ld l,l			;87b5
	sbc a,a			;87b6
	inc e			;87b7
	and c			;87b8
	nop			;87b9
	nop			;87ba
l87bbh:
	jr nc,$-109		;87bb
l87bdh:
	adc a,h			;87bd
	and d			;87be
	rst 28h			;87bf
	and d			;87c0
	nop			;87c1
l87c2h:
	nop			;87c2
	jr nc,l8786h		;87c3
	ld d,h			;87c5
	and e			;87c6
l87c7h:
	ld a,e			;87c7
	and e			;87c8
	nop			;87c9
	nop			;87ca
	jr nc,$-54		;87cb
	and h			;87cd
l87ceh:
	and e			;87ce
	or (hl)			;87cf
	and e			;87d0
	nop			;87d1
	nop			;87d2
	djnz l87d6h		;87d3
	ret z			;87d5
l87d6h:
	and e			;87d6
	ld (de),a		;87d7
	and h			;87d8
	nop			;87d9
	nop			;87da
	djnz l87eah		;87db
	ld b,a			;87dd
	and h			;87de
	ld d,e			;87df
	and h			;87e0
	nop			;87e1
	nop			;87e2
	djnz l8815h		;87e3
	ld h,e			;87e5
	and h			;87e6
	pop bc			;87e7
	and (hl)		;87e8
	nop			;87e9
l87eah:
	nop			;87ea
	jr $-85			;87eb
	rst 30h			;87ed
	xor b			;87ee
	adc a,h			;87ef
	xor c			;87f0
	nop			;87f1
	nop			;87f2
	jr l87bbh		;87f3
	ld a,(de)		;87f5
	xor d			;87f6
	ld h,0aah		;87f7
	nop			;87f9
	nop			;87fa
	jr l87c7h		;87fb
l87fdh:
	inc (hl)		;87fd
	xor d			;87fe
	ld d,(hl)		;87ff
	xor d			;8800
	nop			;8801
	nop			;8802
	ex af,af'		;8803
	ld bc,0aa77h		;8804
	ind			;8807
	nop			;8809
	nop			;880a
	ex af,af'		;880b
	jr nz,l8846h		;880c
	xor e			;880e
	xor a			;880f
	xor e			;8810
	nop			;8811
	inc bc			;8812
	ex af,af'		;8813
	dec sp			;8814
l8815h:
	jr c,l87c2h		;8815
	xor a			;8817
	xor e			;8818
	nop			;8819
	nop			;881a
	ex af,af'		;881b
	ld a,(0ac48h)		;881c
	ld c,l			;881f
	xor h			;8820
	nop			;8821
	nop			;8822
	ex af,af'		;8823
	ld d,l			;8824
	ld d,e			;8825
	xor h			;8826
	xor e			;8827
	xor h			;8828
	nop			;8829
	nop			;882a
	ex af,af'		;882b
	ld h,l			;882c
	dec d			;882d
	xor l			;882e
	add hl,sp		;882f
	xor l			;8830
	nop			;8831
	ld (bc),a		;8832
	ex af,af'		;8833
	ld l,h			;8834
	dec d			;8835
	xor l			;8836
	add hl,sp		;8837
	xor l			;8838
	nop			;8839
	nop			;883a
	ex af,af'		;883b
	ld (hl),e		;883c
	ld l,l			;883d
	xor l			;883e
	ret p			;883f
	xor (hl)		;8840
	nop			;8841
	nop			;8842
	ex af,af'		;8843
	cp h			;8844
	ccf			;8845
l8846h:
	or b			;8846
	adc a,h			;8847
	or b			;8848
	nop			;8849
	nop			;884a
	ex af,af'		;884b
	ret z			;884c
	ret nc			;884d
	or b			;884e
	pop hl			;884f
	or b			;8850
	nop			;8851
	rst 38h			;8852
	inc bc			;8853
	add hl,bc		;8854
	dec bc			;8855
	ld b,a			;8856
	ld e,023h		;8857
	inc bc			;8859
	inc h			;885a
	inc h			;885b
	ld b,a			;885c
	dec h			;885d
	dec h			;885e
	ld (bc),a		;885f
	ld h,027h		;8860
	inc bc			;8862
	jr z,l888fh		;8863
	ld b,a			;8865
	dec hl			;8866
	inc l			;8867
	inc bc			;8868
	dec l			;8869
	dec l			;886a
	ld (bc),a		;886b
	ld l,030h		;886c
	inc bc			;886e
	ld sp,04731h		;886f
	ld (00332h),a		;8872
	inc sp			;8875
	inc sp			;8876
	ld (bc),a		;8877
	inc (hl)		;8878
	inc (hl)		;8879
	inc bc			;887a
	dec (hl)		;887b
	scf			;887c
	ld (bc),a		;887d
	jr c,l88c1h		;887e
	inc bc			;8880
	ld b,d			;8881
	ld b,e			;8882
	ld (bc),a		;8883
	ld b,h			;8884
	ld b,a			;8885
	inc bc			;8886
	ld c,b			;8887
l8888h:
	ld c,d			;8888
	ld b,a			;8889
	ld d,(hl)		;888a
	ld d,a			;888b
	ld b,a			;888c
	ld h,b			;888d
	ld l,b			;888e
l888fh:
	inc bc			;888f
	ld l,c			;8890
l8891h:
	and (hl)		;8891
	dec de			;8892
	and a			;8893
	xor (hl)		;8894
	ld b,a			;8895
	xor a			;8896
	cp b			;8897
	inc bc			;8898
	cp c			;8899
	cp e			;889a
	ld (bc),a		;889b
	cp h			;889c
	cp h			;889d
l889eh:
	ld b,a			;889e
	cp l			;889f
	cp (hl)			;88a0
	ld (bc),a		;88a1
	cp a			;88a2
	cp a			;88a3
	ld b,a			;88a4
	ret nz			;88a5
	pop bc			;88a6
	inc bc			;88a7
	jp nz,00bc3h		;88a8
	jp z,003cbh		;88ab
	call z,000cdh		;88ae
	jp z,0ffcbh		;88b1
	nop			;88b4
	nop			;88b5
	ld (bc),a		;88b6
	ld (de),a		;88b7
	inc bc			;88b8
	inc hl			;88b9
	inc b			;88ba
	inc (hl)		;88bb
	dec b			;88bc
	ld b,l			;88bd
	ld d,d			;88be
	ld d,h			;88bf
	ld b,b			;88c0
l88c1h:
	sub b			;88c1
	ld b,c			;88c2
	or e			;88c3
	jr nc,l8888h		;88c4
	rst 38h			;88c6
	rst 38h			;88c7
	rst 38h			;88c8
	inc bc			;88c9
	jr nc,l8891h		;88ca
	ld b,a			;88cc
	add a,0cdh		;88cd
	rst 38h			;88cf
	ld (bc),a		;88d0
	nop			;88d1
	inc de			;88d2
	ld de,02224h		;88d3
	ld b,b			;88d6
	jr nc,l894ch		;88d7
	ld b,e			;88d9
	ld (hl),b		;88da
	ld d,l			;88db
	ld (05692h),hl		;88dc
	or (hl)			;88df
	inc de			;88e0
	jp 001ffh		;88e1
	ld bc,00101h		;88e4
	ld (bc),a		;88e7
	ld (bc),a		;88e8
	inc bc			;88e9
	inc bc			;88ea
	rst 38h			;88eb
	nop			;88ec
	add a,b			;88ed
	ld bc,07647h		;88ee
	inc l			;88f1
	ld a,b			;88f2
	nop			;88f3
	nop			;88f4
	add a,b			;88f5
	ld d,d			;88f6
	halt			;88f7
	ld a,c			;88f8
	ret z			;88f9
	ld a,c			;88fa
	nop			;88fb
	nop			;88fc
	add a,b			;88fd
	ld e,h			;88fe
	dec b			;88ff
	ld a,d			;8900
	and e			;8901
	ld a,h			;8902
	nop			;8903
	nop			;8904
	ld b,b			;8905
	ld bc,l955fh		;8906
l8909h:
	jp (hl)			;8909
	sub l			;890a
	inc b			;890b
	ld bc,00120h		;890c
	ld e,a			;890f
	sub l			;8910
	jp (hl)			;8911
	sub l			;8912
	inc b			;8913
	nop			;8914
	ld b,b			;8915
	ld d,b			;8916
	ld (hl),097h		;8917
	rst 30h			;8919
	sbc a,c			;891a
	inc b			;891b
	ld bc,05020h		;891c
	ld (hl),097h		;891f
	rst 30h			;8921
	sbc a,c			;8922
	inc b			;8923
	nop			;8924
	ld b,b			;8925
	rla			;8926
	dec (hl)		;8927
	sub (hl)		;8928
	and 096h		;8929
	inc b			;892b
	ld bc,01720h		;892c
	dec (hl)		;892f
	sub (hl)		;8930
	and 096h		;8931
	inc b			;8933
	nop			;8934
	ld h,b			;8935
	or d			;8936
	ld e,d			;8937
	sbc a,h			;8938
	ld l,h			;8939
	sbc a,h			;893a
	inc b			;893b
	nop			;893c
	ld b,b			;893d
	rst 0			;893e
	ld (hl),a		;893f
	sbc a,h			;8940
	and c			;8941
	sbc a,h			;8942
	inc b			;8943
	ld bc,0c720h		;8944
	ld (hl),a		;8947
	sbc a,h			;8948
	and c			;8949
	sbc a,h			;894a
	inc b			;894b
l894ch:
	nop			;894c
	ld h,b			;894d
	call z,09ccbh		;894e
	defb 0ddh,09ch ;sbc a,ixh	;8951
	inc b			;8953
	rst 38h			;8954
	ld b,a			;8955
	ld d,d			;8956
	ld e,e			;8957
	inc bc			;8958
	ld e,h			;8959
	sbc a,e			;895a
	ld b,a			;895b
	ld l,(hl)		;895c
	ld l,(hl)		;895d
	ld (bc),a		;895e
	sub d			;895f
	sub e			;8960
	ld (bc),a		;8961
	sbc a,b			;8962
	sbc a,c			;8963
	inc bc			;8964
	and e			;8965
	or d			;8966
	inc bc			;8967
	cp d			;8968
	jp nz,0c503h		;8969
	add a,003h		;896c
	ret z			;896e
	call 0af02h		;896f
	or b			;8972
	ld (bc),a		;8973
	cp e			;8974
	cp h			;8975
	add a,e			;8976
	ld (hl),d		;8977
	ld (hl),d		;8978
	add a,e			;8979
	add a,b			;897a
	add a,b			;897b
	add a,e			;897c
	adc a,h			;897d
	adc a,l			;897e
	add a,e			;897f
	sub h			;8980
	sub h			;8981
	add a,e			;8982
	and h			;8983
	and h			;8984
	ld (bc),a		;8985
	and a			;8986
	xor b			;8987
	add a,e			;8988
	xor h			;8989
	xor h			;898a
	add a,e			;898b
	xor (hl)		;898c
	xor (hl)		;898d
	add a,e			;898e
	ret nz			;898f
	ret nz			;8990
	ld b,a			;8991
	and l			;8992
	and (hl)		;8993
	ld b,a			;8994
	call z,047cch		;8995
	cp (hl)			;8998
	cp (hl)			;8999
	rst 38h			;899a
	nop			;899b
	nop			;899c
	ld bc,00212h		;899d
	inc hl			;89a0
l89a1h:
	inc bc			;89a1
	inc (hl)		;89a2
	inc b			;89a3
	ld b,l			;89a4
	ld h,b			;89a5
	ld d,h			;89a6
	ld b,b			;89a7
	sub d			;89a8
	ld d,b			;89a9
	or e			;89aa
	inc b			;89ab
	ret nz			;89ac
	rst 38h			;89ad
	rst 38h			;89ae
	rst 38h			;89af
	inc bc			;89b0
	ld d,b			;89b1
	ld h,d			;89b2
	ld (bc),a		;89b3
	ld h,e			;89b4
	or d			;89b5
	ld b,a			;89b6
	rst 0			;89b7
	call 022ffh		;89b8
	ld (bc),a		;89bb
	djnz l89ceh		;89bc
	jr nc,l89e0h		;89be
	ld d,b			;89c0
	jr nc,l89c8h		;89c1
	ld b,b			;89c3
	scf			;89c4
	ld d,l			;89c5
	ld (hl),b		;89c6
	sub b			;89c7
l89c8h:
	ld d,(hl)		;89c8
	or (hl)			;89c9
	inc de			;89ca
	jp 001ffh		;89cb
l89ceh:
	ld bc,00101h		;89ce
	inc b			;89d1
	inc b			;89d2
	inc b			;89d3
	inc b			;89d4
	inc bc			;89d5
	inc bc			;89d6
	inc bc			;89d7
	inc bc			;89d8
	ld (bc),a		;89d9
	ld (bc),a		;89da
	ld (bc),a		;89db
	ld (bc),a		;89dc
	dec b			;89dd
	dec b			;89de
	dec b			;89df
l89e0h:
	dec b			;89e0
	rst 38h			;89e1
	nop			;89e2
	ret p			;89e3
	ld bc,07ee0h		;89e4
	rst 30h			;89e7
	ld a,(hl)		;89e8
	nop			;89e9
	ld (bc),a		;89ea
	ret p			;89eb
	inc b			;89ec
	ret po			;89ed
	ld a,(hl)		;89ee
	rst 30h			;89ef
	ld a,(hl)		;89f0
	nop			;89f1
	ld bc,007f0h		;89f2
	ret po			;89f5
	ld a,(hl)		;89f6
	rst 30h			;89f7
	ld a,(hl)		;89f8
	nop			;89f9
	inc bc			;89fa
	ret p			;89fb
	ld a,(bc)		;89fc
	ret po			;89fd
	ld a,(hl)		;89fe
	rst 30h			;89ff
	ld a,(hl)		;8a00
	nop			;8a01
	nop			;8a02
	ret p			;8a03
	dec c			;8a04
	inc c			;8a05
	ld a,a			;8a06
	ld (hl),07fh		;8a07
	nop			;8a09
	ld bc,013f0h		;8a0a
	inc c			;8a0d
	ld a,a			;8a0e
	ld (hl),07fh		;8a0f
	nop			;8a11
	nop			;8a12
	ret p			;8a13
	add hl,de		;8a14
	ld e,e			;8a15
	ld a,a			;8a16
	and (hl)		;8a17
	ld a,a			;8a18
	nop			;8a19
l8a1ah:
	nop			;8a1a
	ret p			;8a1b
	cp b			;8a1c
	rst 30h			;8a1d
	ld a,a			;8a1e
	djnz l89a1h		;8a1f
	nop			;8a21
l8a22h:
	nop			;8a22
	ret p			;8a23
	call z,08041h		;8a24
	ld b,(hl)		;8a27
	add a,b			;8a28
	nop			;8a29
	nop			;8a2a
	ret p			;8a2b
	sub h			;8a2c
	ld c,c			;8a2d
	add a,b			;8a2e
	adc a,c			;8a2f
	add a,b			;8a30
	nop			;8a31
l8a32h:
	ld (bc),a		;8a32
	ret p			;8a33
	sbc a,l			;8a34
	ld c,c			;8a35
	add a,b			;8a36
	adc a,c			;8a37
	add a,b			;8a38
	nop			;8a39
	ld bc,0a6f0h		;8a3a
	ld c,c			;8a3d
	add a,b			;8a3e
	adc a,c			;8a3f
	add a,b			;8a40
	nop			;8a41
	ld bc,0a6f0h		;8a42
	ld c,c			;8a45
	add a,b			;8a46
	adc a,c			;8a47
	add a,b			;8a48
	nop			;8a49
	inc bc			;8a4a
	ret p			;8a4b
	xor a			;8a4c
	ld c,c			;8a4d
	add a,b			;8a4e
	adc a,c			;8a4f
	add a,b			;8a50
	nop			;8a51
	nop			;8a52
l8a53h:
	ret p			;8a53
	add a,b			;8a54
	out (080h),a		;8a55
	ret po			;8a57
	add a,b			;8a58
	nop			;8a59
	ld (bc),a		;8a5a
	ret p			;8a5b
	add a,e			;8a5c
	out (080h),a		;8a5d
	ret po			;8a5f
	add a,b			;8a60
	nop			;8a61
	nop			;8a62
	add a,b			;8a63
	cp (hl)			;8a64
	pop af			;8a65
	add a,b			;8a66
	ret m			;8a67
	add a,b			;8a68
	nop			;8a69
	ld bc,0c580h		;8a6a
	pop af			;8a6d
	add a,b			;8a6e
	ret m			;8a6f
	add a,b			;8a70
	nop			;8a71
	nop			;8a72
l8a73h:
	ld b,b			;8a73
	cp (hl)			;8a74
	rst 38h			;8a75
	add a,b			;8a76
	inc b			;8a77
	add a,c			;8a78
	nop			;8a79
	ld bc,0c540h		;8a7a
	rst 38h			;8a7d
	add a,b			;8a7e
	inc b			;8a7f
	add a,c			;8a80
	nop			;8a81
	nop			;8a82
l8a83h:
	jr nz,$-64		;8a83
	dec bc			;8a85
	add a,c			;8a86
	ld (de),a		;8a87
	add a,c			;8a88
	nop			;8a89
	ld bc,0c520h		;8a8a
	dec bc			;8a8d
	add a,c			;8a8e
	ld (de),a		;8a8f
	add a,c			;8a90
	nop			;8a91
	nop			;8a92
	djnz l8a53h		;8a93
	add hl,de		;8a95
	add a,c			;8a96
	jr nz,l8a1ah		;8a97
	nop			;8a99
	ld bc,0c510h		;8a9a
	add hl,de		;8a9d
	add a,c			;8a9e
	jr nz,l8a22h		;8a9f
	nop			;8aa1
	nop			;8aa2
	ret p			;8aa3
	adc a,048h		;8aa4
	ld b,b			;8aa6
	inc bc			;8aa7
	ld b,d			;8aa8
	nop			;8aa9
	nop			;8aaa
	ex af,af'		;8aab
	ld bc,0ba12h		;8aac
	jr z,$-68		;8aaf
	nop			;8ab1
	ld (bc),a		;8ab2
	ex af,af'		;8ab3
	inc b			;8ab4
	ld (de),a		;8ab5
	cp d			;8ab6
	jr z,l8a73h		;8ab7
	nop			;8ab9
	ld bc,00708h		;8aba
	ld (de),a		;8abd
	cp d			;8abe
	jr z,$-68		;8abf
	nop			;8ac1
	inc bc			;8ac2
	ex af,af'		;8ac3
	ld a,(bc)		;8ac4
	ld (de),a		;8ac5
	cp d			;8ac6
	jr z,l8a83h		;8ac7
	nop			;8ac9
	nop			;8aca
	ex af,af'		;8acb
	dec c			;8acc
	ld (047bah),a		;8acd
	cp d			;8ad0
	nop			;8ad1
	ld bc,01308h		;8ad2
	ld (047bah),a		;8ad5
	cp d			;8ad8
	nop			;8ad9
	nop			;8ada
	ex af,af'		;8adb
	dec h			;8adc
	ld d,d			;8add
	cp d			;8ade
	ld d,l			;8adf
	cp d			;8ae0
	nop			;8ae1
	nop			;8ae2
	ex af,af'		;8ae3
	ld l,b			;8ae4
	ld e,b			;8ae5
	cp d			;8ae6
	and l			;8ae7
	cp d			;8ae8
	nop			;8ae9
	ld (bc),a		;8aea
	ex af,af'		;8aeb
	ld (hl),d		;8aec
	ld e,b			;8aed
	cp d			;8aee
	and l			;8aef
	cp d			;8af0
	nop			;8af1
	nop			;8af2
	ex af,af'		;8af3
	xor h			;8af4
	call p,01abah		;8af5
	cp e			;8af8
	nop			;8af9
	nop			;8afa
	ex af,af'		;8afb
	cp h			;8afc
	ld e,l			;8afd
	cp e			;8afe
	ld l,c			;8aff
	cp e			;8b00
	nop			;8b01
l8b02h:
	ld bc,0bf08h		;8b02
	ld e,l			;8b05
	cp e			;8b06
	ld l,c			;8b07
	cp e			;8b08
	nop			;8b09
	nop			;8b0a
	ex af,af'		;8b0b
	ld h,083h		;8b0c
	cp e			;8b0e
	or a			;8b0f
	cp e			;8b10
	nop			;8b11
	ld bc,02d08h		;8b12
	add a,e			;8b15
	cp e			;8b16
	or a			;8b17
	cp e			;8b18
	nop			;8b19
	ld (bc),a		;8b1a
	ex af,af'		;8b1b
	inc (hl)		;8b1c
	add a,e			;8b1d
	cp e			;8b1e
	or a			;8b1f
	cp e			;8b20
	nop			;8b21
	inc bc			;8b22
	ex af,af'		;8b23
	dec sp			;8b24
	add a,e			;8b25
	cp e			;8b26
	or a			;8b27
	cp e			;8b28
	nop			;8b29
	nop			;8b2a
	ex af,af'		;8b2b
	ld b,d			;8b2c
	ret pe			;8b2d
	cp e			;8b2e
	di			;8b2f
	cp e			;8b30
	nop			;8b31
	ld bc,04408h		;8b32
l8b35h:
	ret pe			;8b35
	cp e			;8b36
	di			;8b37
	cp e			;8b38
	nop			;8b39
	nop			;8b3a
	ex af,af'		;8b3b
	ld a,h			;8b3c
	ld (bc),a		;8b3d
	cp h			;8b3e
	ld a,(000bch)		;8b3f
	ld bc,l8408h		;8b42
	ld (bc),a		;8b45
	cp h			;8b46
	ld a,(000bch)		;8b47
	ld (bc),a		;8b4a
	ex af,af'		;8b4b
	adc a,h			;8b4c
	ld (bc),a		;8b4d
	cp h			;8b4e
	ld a,(000bch)		;8b4f
	inc bc			;8b52
	ex af,af'		;8b53
	sub h			;8b54
	ld (bc),a		;8b55
	cp h			;8b56
	ld a,(000bch)		;8b57
	nop			;8b5a
	ex af,af'		;8b5b
	sbc a,h			;8b5c
	ld a,c			;8b5d
	cp h			;8b5e
	xor a			;8b5f
	cp h			;8b60
	nop			;8b61
	ld (bc),a		;8b62
	ex af,af'		;8b63
	and h			;8b64
	ld a,c			;8b65
	cp h			;8b66
	xor a			;8b67
	cp h			;8b68
	nop			;8b69
	nop			;8b6a
	ex af,af'		;8b6b
	jp nz,0bcebh		;8b6c
	inc e			;8b6f
	cp l			;8b70
	nop			;8b71
	ld (bc),a		;8b72
	ex af,af'		;8b73
	ret z			;8b74
	ex de,hl		;8b75
	cp h			;8b76
	inc e			;8b77
	cp l			;8b78
	nop			;8b79
	nop			;8b7a
	ex af,af'		;8b7b
	ld h,b			;8b7c
	ld c,e			;8b7d
	cp l			;8b7e
	ld d,l			;8b7f
	cp l			;8b80
	nop			;8b81
	ld (bc),a		;8b82
	ex af,af'		;8b83
	ld h,d			;8b84
	ld c,e			;8b85
	cp l			;8b86
	ld d,l			;8b87
	cp l			;8b88
	nop			;8b89
	rst 38h			;8b8a
	inc bc			;8b8b
	ld h,b			;8b8c
	xor e			;8b8d
	inc bc			;8b8e
	xor h			;8b8f
	call 000ffh		;8b90
	nop			;8b93
	ld h,(hl)		;8b94
	ld d,010h		;8b95
	ld hl,03220h		;8b97
	ld sp,04243h		;8b9a
	ld d,h			;8b9d
	nop			;8b9e
	sub b			;8b9f
	ld b,b			;8ba0
	or b			;8ba1
	ld h,b			;8ba2
	ret nz			;8ba3
	rst 38h			;8ba4
	rst 38h			;8ba5
	rst 38h			;8ba6
	ld (bc),a		;8ba7
	ld h,b			;8ba8
	xor e			;8ba9
	ld b,a			;8baa
	xor h			;8bab
	call 003ffh		;8bac
	nop			;8baf
	jr nc,$+20		;8bb0
	ld d,c			;8bb2
	inc h			;8bb3
	ld (hl),e		;8bb4
	ld (hl),024h		;8bb5
	ld b,b			;8bb7
	ld b,l			;8bb8
	ld d,b			;8bb9
	nop			;8bba
	sub b			;8bbb
	ld d,(hl)		;8bbc
	or (hl)			;8bbd
	inc de			;8bbe
	jp 001ffh		;8bbf
	ld bc,00101h		;8bc2
	inc bc			;8bc5
	inc bc			;8bc6
	ld (bc),a		;8bc7
	ld (bc),a		;8bc8
	ld bc,00101h		;8bc9
	inc b			;8bcc
	ld bc,00401h		;8bcd
	inc b			;8bd0
	ld bc,00404h		;8bd1
	dec b			;8bd4
	inc b			;8bd5
	inc b			;8bd6
	dec b			;8bd7
	ld b,001h		;8bd8
	ld bc,00101h		;8bda
	rst 38h			;8bdd
	nop			;8bde
	ret po			;8bdf
	ld bc,l8127h		;8be0
	ld d,d			;8be3
	add a,c			;8be4
	nop			;8be5
	nop			;8be6
	ret po			;8be7
	cp (hl)			;8be8
	add a,h			;8be9
	add a,c			;8bea
	and (hl)		;8beb
	add a,c			;8bec
	nop			;8bed
	ld (bc),a		;8bee
	ret po			;8bef
	jp nz,l8184h		;8bf0
	and (hl)		;8bf3
	add a,c			;8bf4
	nop			;8bf5
	ld bc,0c6e0h		;8bf6
	add a,h			;8bf9
	add a,c			;8bfa
	and (hl)		;8bfb
	add a,c			;8bfc
	nop			;8bfd
	inc bc			;8bfe
	ret po			;8bff
	jp z,l8184h		;8c00
	and (hl)		;8c03
	add a,c			;8c04
	nop			;8c05
	nop			;8c06
	ret po			;8c07
	ex af,af'		;8c08
	ret z			;8c09
	add a,c			;8c0a
	and b			;8c0b
	add a,d			;8c0c
	nop			;8c0d
	ld (bc),a		;8c0e
	ret po			;8c0f
	inc h			;8c10
	ret z			;8c11
	add a,c			;8c12
	and b			;8c13
l8c14h:
	add a,d			;8c14
	nop			;8c15
	nop			;8c16
	ret po			;8c17
	ld b,b			;8c18
	inc h			;8c19
	add a,e			;8c1a
	sub c			;8c1b
	add a,l			;8c1c
	nop			;8c1d
	nop			;8c1e
	ret po			;8c1f
	sbc a,h			;8c20
	add a,d			;8c21
	add a,a			;8c22
	nop			;8c23
	adc a,b			;8c24
	nop			;8c25
	ld (bc),a		;8c26
	ret po			;8c27
	xor l			;8c28
	add a,d			;8c29
	add a,a			;8c2a
	nop			;8c2b
	adc a,b			;8c2c
l8c2dh:
	nop			;8c2d
	nop			;8c2e
	ld b,b			;8c2f
	dec b			;8c30
	ld b,(hl)		;8c31
	adc a,b			;8c32
	ld h,b			;8c33
	adc a,b			;8c34
	nop			;8c35
	ld (bc),a		;8c36
	ld b,b			;8c37
	inc de			;8c38
	ld b,(hl)		;8c39
	adc a,b			;8c3a
	ld h,b			;8c3b
	adc a,b			;8c3c
	nop			;8c3d
	nop			;8c3e
	ld b,b			;8c3f
	inc c			;8c40
	halt			;8c41
	adc a,b			;8c42
	add a,b			;8c43
	adc a,b			;8c44
	nop			;8c45
	nop			;8c46
	ld b,b			;8c47
	dec de			;8c48
	adc a,d			;8c49
	adc a,b			;8c4a
	sub h			;8c4b
	adc a,b			;8c4c
	nop			;8c4d
	nop			;8c4e
	ld b,b			;8c4f
	ld (l889eh),hl		;8c50
	xor b			;8c53
	adc a,b			;8c54
	nop			;8c55
	ld (bc),a		;8c56
	ld b,b			;8c57
	scf			;8c58
	sbc a,(hl)		;8c59
	adc a,b			;8c5a
	xor b			;8c5b
	adc a,b			;8c5c
	nop			;8c5d
	nop			;8c5e
	ld b,b			;8c5f
	jr z,l8c14h		;8c60
	adc a,b			;8c62
	call nc,00088h		;8c63
	nop			;8c66
	ld b,b			;8c67
	cpl			;8c68
	or 088h			;8c69
	rst 38h			;8c6b
	adc a,b			;8c6c
	nop			;8c6d
	ld (bc),a		;8c6e
	ld b,b			;8c6f
	ld a,0f6h		;8c70
	adc a,b			;8c72
	rst 38h			;8c73
	adc a,b			;8c74
	nop			;8c75
	nop			;8c76
	ld b,b			;8c77
	jr nc,l8c83h		;8c78
	adc a,c			;8c7a
	inc de			;8c7b
	adc a,c			;8c7c
	nop			;8c7d
	ld (bc),a		;8c7e
	ld b,b			;8c7f
	ld sp,l8909h		;8c80
l8c83h:
	inc de			;8c83
	adc a,c			;8c84
	nop			;8c85
	nop			;8c86
	ld b,b			;8c87
	ld b,b			;8c88
	dec e			;8c89
	adc a,c			;8c8a
	ld c,h			;8c8b
	adc a,c			;8c8c
	nop			;8c8d
	ld (bc),a		;8c8e
	ld b,b			;8c8f
	ld b,(hl)		;8c90
	dec e			;8c91
	adc a,c			;8c92
	ld c,h			;8c93
	adc a,c			;8c94
	nop			;8c95
	nop			;8c96
	ld b,b			;8c97
	ld c,l			;8c98
	ld a,d			;8c99
	adc a,c			;8c9a
	add a,h			;8c9b
	adc a,c			;8c9c
	nop			;8c9d
	ld (bc),a		;8c9e
	ld b,b			;8c9f
	ld l,a			;8ca0
	ld a,d			;8ca1
	adc a,c			;8ca2
	add a,h			;8ca3
	adc a,c			;8ca4
	nop			;8ca5
	nop			;8ca6
	ld b,b			;8ca7
	ld d,h			;8ca8
	adc a,(hl)		;8ca9
	adc a,c			;8caa
	sbc a,l			;8cab
	adc a,c			;8cac
	nop			;8cad
	ld (bc),a		;8cae
	ld b,b			;8caf
	ld l,h			;8cb0
	adc a,(hl)		;8cb1
	adc a,c			;8cb2
	sbc a,l			;8cb3
	adc a,c			;8cb4
	nop			;8cb5
	nop			;8cb6
	ld b,b			;8cb7
	ld e,a			;8cb8
	xor l			;8cb9
	adc a,c			;8cba
	rst 0			;8cbb
	adc a,c			;8cbc
	nop			;8cbd
	nop			;8cbe
	ld b,b			;8cbf
	sbc a,a			;8cc0
	defb 0ddh,089h,0e7h ;illegal sequence	;8cc1
	adc a,c			;8cc4
	nop			;8cc5
	nop			;8cc6
	ld b,b			;8cc7
	and e			;8cc8
	rst 28h			;8cc9
	adc a,c			;8cca
	daa			;8ccb
	adc a,d			;8ccc
	nop			;8ccd
	nop			;8cce
	ld b,b			;8ccf
	xor h			;8cd0
	ld e,a			;8cd1
	adc a,d			;8cd2
	ld a,c			;8cd3
	adc a,d			;8cd4
	nop			;8cd5
	nop			;8cd6
	ld b,b			;8cd7
	or b			;8cd8
	sub e			;8cd9
	adc a,d			;8cda
	sbc a,l			;8cdb
	adc a,d			;8cdc
	nop			;8cdd
	nop			;8cde
	ld b,b			;8cdf
	or h			;8ce0
	and a			;8ce1
	adc a,d			;8ce2
	in a,(08ah)		;8ce3
	nop			;8ce5
	nop			;8ce6
	ld b,b			;8ce7
	cp l			;8ce8
	add hl,bc		;8ce9
	adc a,e			;8cea
	inc de			;8ceb
	adc a,e			;8cec
	nop			;8ced
	nop			;8cee
	ld b,b			;8cef
	sbc a,h			;8cf0
	dec e			;8cf1
	adc a,e			;8cf2
	add hl,hl		;8cf3
	adc a,e			;8cf4
	nop			;8cf5
	ld bc,00520h		;8cf6
	ld b,(hl)		;8cf9
	adc a,b			;8cfa
	ld h,b			;8cfb
	adc a,b			;8cfc
	nop			;8cfd
	inc bc			;8cfe
	jr nz,l8d14h		;8cff
	ld b,(hl)		;8d01
	adc a,b			;8d02
	ld h,b			;8d03
	adc a,b			;8d04
	nop			;8d05
	ld bc,00c20h		;8d06
	halt			;8d09
	adc a,b			;8d0a
	add a,b			;8d0b
	adc a,b			;8d0c
	nop			;8d0d
	ld bc,01b20h		;8d0e
	adc a,d			;8d11
	adc a,b			;8d12
	sub h			;8d13
l8d14h:
	adc a,b			;8d14
	nop			;8d15
	ld bc,02220h		;8d16
	sbc a,(hl)		;8d19
	adc a,b			;8d1a
	xor b			;8d1b
	adc a,b			;8d1c
	nop			;8d1d
	inc bc			;8d1e
	jr nz,$+57		;8d1f
	sbc a,(hl)		;8d21
	adc a,b			;8d22
	xor b			;8d23
	adc a,b			;8d24
	nop			;8d25
	ld bc,02820h		;8d26
	or d			;8d29
	adc a,b			;8d2a
	call nc,00088h		;8d2b
	ld bc,02f20h		;8d2e
	or 088h			;8d31
	rst 38h			;8d33
	adc a,b			;8d34
	nop			;8d35
	inc bc			;8d36
	jr nz,l8d77h		;8d37
	or 088h			;8d39
	rst 38h			;8d3b
	adc a,b			;8d3c
	nop			;8d3d
	ld bc,03020h		;8d3e
	add hl,bc		;8d41
	adc a,c			;8d42
	inc de			;8d43
	adc a,c			;8d44
	nop			;8d45
	inc bc			;8d46
	jr nz,l8d7ah		;8d47
	add hl,bc		;8d49
	adc a,c			;8d4a
	inc de			;8d4b
	adc a,c			;8d4c
	nop			;8d4d
	ld bc,04020h		;8d4e
	dec e			;8d51
	adc a,c			;8d52
	ld c,h			;8d53
	adc a,c			;8d54
	nop			;8d55
	inc bc			;8d56
	jr nz,$+72		;8d57
	dec e			;8d59
	adc a,c			;8d5a
	ld c,h			;8d5b
	adc a,c			;8d5c
	nop			;8d5d
	ld bc,04d20h		;8d5e
	ld a,d			;8d61
	adc a,c			;8d62
	add a,h			;8d63
	adc a,c			;8d64
	nop			;8d65
	inc bc			;8d66
	jr nz,l8dd8h		;8d67
	ld a,d			;8d69
	adc a,c			;8d6a
	add a,h			;8d6b
	adc a,c			;8d6c
	nop			;8d6d
	ld bc,05420h		;8d6e
	adc a,(hl)		;8d71
	adc a,c			;8d72
	sbc a,l			;8d73
	adc a,c			;8d74
	nop			;8d75
	inc bc			;8d76
l8d77h:
	jr nz,l8de5h		;8d77
	adc a,(hl)		;8d79
l8d7ah:
	adc a,c			;8d7a
	sbc a,l			;8d7b
	adc a,c			;8d7c
	nop			;8d7d
	ld bc,05f20h		;8d7e
	xor l			;8d81
	adc a,c			;8d82
	rst 0			;8d83
	adc a,c			;8d84
	nop			;8d85
	ld bc,09f20h		;8d86
	defb 0ddh,089h,0e7h ;illegal sequence	;8d89
	adc a,c			;8d8c
	nop			;8d8d
	ld bc,0a320h		;8d8e
	rst 28h			;8d91
	adc a,c			;8d92
	daa			;8d93
	adc a,d			;8d94
	nop			;8d95
	ld bc,0ac20h		;8d96
	ld e,a			;8d99
	adc a,d			;8d9a
	ld a,c			;8d9b
	adc a,d			;8d9c
	nop			;8d9d
	ld bc,0b020h		;8d9e
	sub e			;8da1
	adc a,d			;8da2
	sbc a,l			;8da3
	adc a,d			;8da4
	nop			;8da5
	ld bc,0b420h		;8da6
	and a			;8da9
	adc a,d			;8daa
	in a,(08ah)		;8dab
	nop			;8dad
	ld bc,0bd20h		;8dae
	add hl,bc		;8db1
	adc a,e			;8db2
	inc de			;8db3
	adc a,e			;8db4
	nop			;8db5
	ld bc,09c20h		;8db6
	dec e			;8db9
	adc a,e			;8dba
	add hl,hl		;8dbb
	adc a,e			;8dbc
	nop			;8dbd
	nop			;8dbe
	djnz $-71		;8dbf
	ccf			;8dc1
	adc a,e			;8dc2
	rst 8			;8dc3
	adc a,e			;8dc4
l8dc5h:
	inc b			;8dc5
	nop			;8dc6
	ex af,af'		;8dc7
	ld bc,l8c2dh		;8dc8
	ld e,h			;8dcb
	adc a,h			;8dcc
	inc b			;8dcd
	nop			;8dce
	ex af,af'		;8dcf
	ld a,(bc)		;8dd0
	and d			;8dd1
	adc a,h			;8dd2
	ld c,(hl)		;8dd3
	adc a,l			;8dd4
	inc b			;8dd5
	ld (bc),a		;8dd6
	ex af,af'		;8dd7
l8dd8h:
	inc h			;8dd8
	and d			;8dd9
	adc a,h			;8dda
	ld c,(hl)		;8ddb
	adc a,l			;8ddc
	inc b			;8ddd
	nop			;8dde
	inc c			;8ddf
	sub a			;8de0
	ld (bc),a		;8de1
	adc a,(hl)		;8de2
	ld sp,hl		;8de3
	adc a,(hl)		;8de4
l8de5h:
	inc b			;8de5
	nop			;8de6
	ex af,af'		;8de7
	or a			;8de8
	ret m			;8de9
	adc a,a			;8dea
	dec h			;8deb
	sub b			;8dec
	inc b			;8ded
	ld (bc),a		;8dee
	ex af,af'		;8def
	cp (hl)			;8df0
	ret m			;8df1
	adc a,a			;8df2
	dec h			;8df3
	sub b			;8df4
	inc b			;8df5
	nop			;8df6
	ex af,af'		;8df7
	push bc			;8df8
	ld b,e			;8df9
	sub b			;8dfa
l8dfbh:
	adc a,c			;8dfb
	sub b			;8dfc
	inc b			;8dfd
	nop			;8dfe
	inc b			;8dff
	ld bc,l90aeh		;8e00
	pop bc			;8e03
	sub c			;8e04
	inc b			;8e05
	ld (bc),a		;8e06
	inc b			;8e07
	ld hl,(l90aeh)		;8e08
	pop bc			;8e0b
	sub c			;8e0c
	inc b			;8e0d
	nop			;8e0e
	inc b			;8e0f
	ld d,e			;8e10
	ld a,e			;8e11
	sub d			;8e12
	defb 0fdh,093h,004h ;illegal sequence	;8e13
	nop			;8e16
	inc b			;8e17
	or a			;8e18
	ld b,b			;8e19
	sub l			;8e1a
	ld d,d			;8e1b
	sub l			;8e1c
	inc b			;8e1d
	rst 38h			;8e1e
	ld b,a			;8e1f
	ld bc,04704h		;8e20
	cp (hl)			;8e23
	call 00503h		;8e24
	ld (hl),b		;8e27
	rst 38h			;8e28
	nop			;8e29
	nop			;8e2a
	dec d			;8e2b
	ld (de),a		;8e2c
	ld (hl),024h		;8e2d
	ld d,a			;8e2f
	ld (hl),002h		;8e30
	ld b,b			;8e32
	inc de			;8e33
	ld d,b			;8e34
	inc b			;8e35
	sub c			;8e36
	ld (hl),b		;8e37
	or c			;8e38
	jr nc,l8dfbh		;8e39
	rst 38h			;8e3b
	rst 38h			;8e3c
	rst 38h			;8e3d
	inc bc			;8e3e
	ld bc,047b6h		;8e3f
	call z,0ffcdh		;8e42
	rst 38h			;8e45
	rst 38h			;8e46
	rst 38h			;8e47
	ld b,a			;8e48
	ld bc,04704h		;8e49
	cp (hl)			;8e4c
	call 00503h		;8e4d
	ld (hl),b		;8e50
	ld (bc),a		;8e51
	jr z,l8e7fh		;8e52
	ld (bc),a		;8e54
	ld b,b			;8e55
	ld c,e			;8e56
	ld b,a			;8e57
	and e			;8e58
	xor c			;8e59
	inc bc			;8e5a
	xor h			;8e5b
	xor (hl)		;8e5c
	inc bc			;8e5d
	and b			;8e5e
	and b			;8e5f
	ld b,a			;8e60
	cp l			;8e61
	cp l			;8e62
	rst 38h			;8e63
	jr nc,l8e66h		;8e64
l8e66h:
	ld b,b			;8e66
	djnz l8eb9h		;8e67
	jr nz,l8e7dh		;8e69
	ld (04424h),a		;8e6b
	inc (hl)		;8e6e
	ld d,(hl)		;8e6f
	ld h,h			;8e70
	sub a			;8e71
	ld b,a			;8e72
	or (hl)			;8e73
	ld h,0c3h		;8e74
	rst 38h			;8e76
	ld bc,00302h		;8e77
	inc b			;8e7a
	inc b			;8e7b
	dec b			;8e7c
l8e7dh:
	ld b,006h		;8e7d
l8e7fh:
	rlca			;8e7f
	rlca			;8e80
	rlca			;8e81
	rlca			;8e82
	rst 38h			;8e83
	nop			;8e84
	ret po			;8e85
	ld bc,l8b35h		;8e86
	sub l			;8e89
	adc a,e			;8e8a
	nop			;8e8b
	ld bc,00d80h		;8e8c
	di			;8e8f
	adc a,e			;8e90
	sub (hl)		;8e91
	adc a,h			;8e92
	nop			;8e93
	nop			;8e94
	ld (hl),b		;8e95
	dec c			;8e96
	di			;8e97
	adc a,e			;8e98
	sub (hl)		;8e99
	adc a,h			;8e9a
	nop			;8e9b
	ld bc,02480h		;8e9c
	ld a,(l808dh)		;8e9f
	adc a,l			;8ea2
	nop			;8ea3
	inc bc			;8ea4
	add a,b			;8ea5
	ld l,03ah		;8ea6
	adc a,l			;8ea8
	add a,b			;8ea9
	adc a,l			;8eaa
	nop			;8eab
	nop			;8eac
	ld h,b			;8ead
	inc h			;8eae
	ld a,(l808dh)		;8eaf
	adc a,l			;8eb2
	nop			;8eb3
	ld (bc),a		;8eb4
	ld h,b			;8eb5
	ld l,03ah		;8eb6
	adc a,l			;8eb8
l8eb9h:
	add a,b			;8eb9
	adc a,l			;8eba
	nop			;8ebb
	ld bc,04480h		;8ebc
	push bc			;8ebf
	adc a,l			;8ec0
	rst 20h			;8ec1
	adc a,l			;8ec2
	nop			;8ec3
	nop			;8ec4
	ld h,h			;8ec5
	jp z,l8dc5h		;8ec6
	rst 20h			;8ec9
	adc a,l			;8eca
	nop			;8ecb
	nop			;8ecc
	call m,00858h		;8ecd
	adc a,(hl)		;8ed0
	ld (hl),08eh		;8ed1
	nop			;8ed3
	ld (bc),a		;8ed4
	call m,0085eh		;8ed5
	adc a,(hl)		;8ed8
	ld (hl),08eh		;8ed9
	nop			;8edb
	ld bc,064fch		;8edc
	ex af,af'		;8edf
	adc a,(hl)		;8ee0
	ld (hl),08eh		;8ee1
	nop			;8ee3
	inc bc			;8ee4
	call m,0086ah		;8ee5
	adc a,(hl)		;8ee8
	ld (hl),08eh		;8ee9
	nop			;8eeb
	nop			;8eec
	call m,05970h		;8eed
	adc a,(hl)		;8ef0
	xor 08eh		;8ef1
	nop			;8ef3
	nop			;8ef4
	sub b			;8ef5
l8ef6h:
	sub b			;8ef6
	ld d,c			;8ef7
	adc a,a			;8ef8
	xor a			;8ef9
	adc a,a			;8efa
	nop			;8efb
	nop			;8efc
	add a,b			;8efd
l8efeh:
	cp h			;8efe
	ret m			;8eff
	adc a,a			;8f00
	dec d			;8f01
	sub b			;8f02
	nop			;8f03
	ld bc,03890h		;8f04
	daa			;8f07
	sub b			;8f08
	ld a,l			;8f09
	sub b			;8f0a
	nop			;8f0b
	nop			;8f0c
	jr nz,l8f47h		;8f0d
	daa			;8f0f
	sub b			;8f10
	ld a,l			;8f11
	sub b			;8f12
	nop			;8f13
	nop			;8f14
	ld b,b			;8f15
	jr c,l8ef6h		;8f16
	sub b			;8f18
	ld e,d			;8f19
	sub c			;8f1a
	nop			;8f1b
	ld (bc),a		;8f1c
	ld b,b			;8f1d
	ld c,b			;8f1e
	sbc a,090h		;8f1f
	ld e,d			;8f21
l8f22h:
	sub c			;8f22
	nop			;8f23
	nop			;8f24
	ret c			;8f25
	add a,e			;8f26
	jp nz,01c91h		;8f27
	sub d			;8f2a
	nop			;8f2b
	nop			;8f2c
	ld b,b			;8f2d
	adc a,(hl)		;8f2e
	ld l,e			;8f2f
	sub d			;8f30
	rlca			;8f31
	sub e			;8f32
	nop			;8f33
	ld (bc),a		;8f34
	ld b,b			;8f35
	and d			;8f36
	ld l,e			;8f37
	sub d			;8f38
	rlca			;8f39
	sub e			;8f3a
	nop			;8f3b
	nop			;8f3c
	ld b,b			;8f3d
	cp d			;8f3e
	ld c,(hl)		;8f3f
	sub e			;8f40
	sub l			;8f41
	sub e			;8f42
	nop			;8f43
	nop			;8f44
	ld h,b			;8f45
	or (hl)			;8f46
l8f47h:
	ret c			;8f47
	sub e			;8f48
	rst 30h			;8f49
l8f4ah:
	sub e			;8f4a
	nop			;8f4b
	nop			;8f4c
	inc h			;8f4d
	ld b,a			;8f4e
	ld d,094h		;8f4f
	ld (hl),a		;8f51
	sub h			;8f52
	nop			;8f53
	nop			;8f54
l8f55h:
	inc h			;8f55
	sub b			;8f56
	call z,0fa94h		;8f57
	sub h			;8f5a
	nop			;8f5b
	ld bc,05680h		;8f5c
	jr z,l8ef6h		;8f5f
	ld a,(00095h)		;8f61
	nop			;8f64
	jr nz,l8fbdh		;8f65
	jr z,l8efeh		;8f67
	ld a,(00095h)		;8f69
	ld bc,0a080h		;8f6c
	ld c,h			;8f6f
	sub l			;8f70
	adc a,e			;8f71
	sub l			;8f72
	nop			;8f73
	nop			;8f74
	jr nz,$-94		;8f75
	ld c,h			;8f77
	sub l			;8f78
	adc a,e			;8f79
	sub l			;8f7a
	nop			;8f7b
	ld bc,0c380h		;8f7c
	cp c			;8f7f
	sub l			;8f80
	di			;8f81
	sub l			;8f82
	nop			;8f83
	nop			;8f84
	jr nz,l8f4ah		;8f85
	cp c			;8f87
	sub l			;8f88
	di			;8f89
	sub l			;8f8a
	nop			;8f8b
	nop			;8f8c
	djnz l8f94h		;8f8d
	daa			;8f8f
	sub (hl)		;8f90
	ld h,c			;8f91
	sub (hl)		;8f92
	nop			;8f93
l8f94h:
	ld (bc),a		;8f94
	djnz l8fa3h		;8f95
	daa			;8f97
	sub (hl)		;8f98
	ld h,c			;8f99
	sub (hl)		;8f9a
	nop			;8f9b
	nop			;8f9c
	djnz l8f22h		;8f9d
	sub b			;8f9f
	sub (hl)		;8fa0
	cp l			;8fa1
	sub (hl)		;8fa2
l8fa3h:
	nop			;8fa3
	nop			;8fa4
	djnz l8f47h		;8fa5
	jp z,0f896h		;8fa7
	sub (hl)		;8faa
	nop			;8fab
	ld (bc),a		;8fac
	djnz l8f55h		;8fad
	jp z,0f896h		;8faf
	sub (hl)		;8fb2
	nop			;8fb3
	nop			;8fb4
	ex af,af'		;8fb5
	ld bc,l9716h		;8fb6
	ld l,d			;8fb9
	sbc a,b			;8fba
	nop			;8fbb
	ld (bc),a		;8fbc
l8fbdh:
	ex af,af'		;8fbd
	inc l			;8fbe
	ld d,097h		;8fbf
	ld l,d			;8fc1
	sbc a,b			;8fc2
	nop			;8fc3
	nop			;8fc4
	ex af,af'		;8fc5
	sbc a,a			;8fc6
	ld l,b			;8fc7
	sbc a,c			;8fc8
	cp e			;8fc9
	sbc a,c			;8fca
	nop			;8fcb
	nop			;8fcc
	ex af,af'		;8fcd
	xor h			;8fce
	rst 20h			;8fcf
	sbc a,c			;8fd0
	add hl,hl		;8fd1
	sbc a,d			;8fd2
	nop			;8fd3
	ld (bc),a		;8fd4
	ex af,af'		;8fd5
	or h			;8fd6
	rst 20h			;8fd7
	sbc a,c			;8fd8
	add hl,hl		;8fd9
	sbc a,d			;8fda
	nop			;8fdb
	nop			;8fdc
	ex af,af'		;8fdd
	cp h			;8fde
	ld e,h			;8fdf
	sbc a,d			;8fe0
	call po,0009ah		;8fe1
	nop			;8fe4
	inc b			;8fe5
	ld bc,09b5dh		;8fe6
	ld (hl),l		;8fe9
	sbc a,h			;8fea
	nop			;8feb
	ld (bc),a		;8fec
	inc b			;8fed
	inc h			;8fee
	ld e,l			;8fef
	sbc a,e			;8ff0
	ld (hl),l		;8ff1
	sbc a,h			;8ff2
	nop			;8ff3
	nop			;8ff4
	inc b			;8ff5
	sbc a,c			;8ff6
	ld (de),a		;8ff7
	sbc a,l			;8ff8
	ld l,09dh		;8ff9
	nop			;8ffb
	nop			;8ffc
	inc b			;8ffd
	xor l			;8ffe
	ld h,a			;8fff
	sbc a,l			;9000
	ld b,a			;9001
	sbc a,(hl)		;9002
	nop			;9003
	nop			;9004
	ld (bc),a		;9005
	ld bc,l9cedh		;9006
	ld (hl),c		;9009
	sbc a,l			;900a
	inc b			;900b
	nop			;900c
	ld (bc),a		;900d
	ld a,(de)		;900e
	sbc a,e			;900f
	sbc a,l			;9010
	ld (hl),d		;9011
	sbc a,a			;9012
	inc b			;9013
	nop			;9014
	ld (bc),a		;9015
	ld d,a			;9016
	ld e,c			;9017
	and b			;9018
	and l			;9019
	and b			;901a
	inc b			;901b
l901ch:
	nop			;901c
	ld (bc),a		;901d
	sra b			;901e
	ld a,c			;9020
	inc sp			;9021
	ld a,c			;9022
	inc b			;9023
	nop			;9024
	ld (bc),a		;9025
	srl a			;9026
	ld b,b			;9028
	inc a			;9029
	ld b,b			;902a
	nop			;902b
	cp 000h			;902c
	nop			;902e
	nop			;902f
	nop			;9030
	nop			;9031
	nop			;9032
	nop			;9033
	nop			;9034
	nop			;9035
	nop			;9036
	nop			;9037
	nop			;9038
	dec b			;9039
	ld b,007h		;903a
	ex af,af'		;903c
	rst 38h			;903d
	nop			;903e
	ex af,af'		;903f
	ld bc,06ee4h		;9040
	dec a			;9043
	ld l,a			;9044
	inc b			;9045
	nop			;9046
	ex af,af'		;9047
	jr nz,l90c0h		;9048
	ld l,a			;904a
	or 06fh			;904b
	inc b			;904d
	nop			;904e
	inc b			;904f
	ld bc,07070h		;9050
	ret			;9053
	ld (hl),b		;9054
	inc b			;9055
	nop			;9056
	inc b			;9057
	ld c,002h		;9058
	ld (hl),c		;905a
	rra			;905b
	ld (hl),c		;905c
	inc b			;905d
	nop			;905e
	inc b			;905f
	inc de			;9060
	ld (hl),071h		;9061
	ld (hl),a		;9063
	ld (hl),c		;9064
	inc b			;9065
	nop			;9066
	inc b			;9067
	jr nz,l901ch		;9068
	ld (hl),c		;906a
	ld e,h			;906b
	ld (hl),h		;906c
	inc b			;906d
	nop			;906e
	inc b			;906f
	add a,h			;9070
	xor l			;9071
	halt			;9072
	rst 20h			;9073
	halt			;9074
	inc b			;9075
	nop			;9076
	inc b			;9077
	adc a,e			;9078
	ld a,(de)		;9079
	ld (hl),a		;907a
	ld c,a			;907b
	ld (hl),a		;907c
	inc b			;907d
	nop			;907e
	inc b			;907f
	sub d			;9080
	add a,e			;9081
	ld (hl),a		;9082
	xor a			;9083
	ld (hl),a		;9084
	inc b			;9085
	nop			;9086
	inc b			;9087
	sbc a,d			;9088
	jp nc,00c77h		;9089
	ld a,b			;908c
	inc b			;908d
	nop			;908e
	ld b,0a5h		;908f
	ld b,(hl)		;9091
	ld a,b			;9092
	ld l,(hl)		;9093
	ld a,b			;9094
	inc b			;9095
	nop			;9096
	inc b			;9097
	xor (hl)		;9098
	add a,l			;9099
	ld a,b			;909a
	jp nz,00478h		;909b
	nop			;909e
	ld b,0c8h		;909f
	ld e,079h		;90a1
	dec h			;90a3
	ld a,c			;90a4
	inc b			;90a5
	nop			;90a6
	inc b			;90a7
	sra b			;90a8
	ld a,c			;90aa
	inc sp			;90ab
	ld a,c			;90ac
	inc b			;90ad
l90aeh:
	ld bc,0cb02h		;90ae
	jr z,l912ch		;90b1
	inc sp			;90b3
	ld a,c			;90b4
	inc b			;90b5
	ld bc,00102h		;90b6
	ld (hl),b		;90b9
	ld (hl),b		;90ba
	ret			;90bb
	ld (hl),b		;90bc
	inc b			;90bd
	nop			;90be
	ld (bc),a		;90bf
l90c0h:
	ld c,03ah		;90c0
	ld a,c			;90c2
	ld d,l			;90c3
	ld a,c			;90c4
	inc b			;90c5
	ld bc,01302h		;90c6
	ld (hl),071h		;90c9
	ld (hl),a		;90cb
	ld (hl),c		;90cc
	inc b			;90cd
	ld bc,02002h		;90ce
	or d			;90d1
	ld (hl),c		;90d2
	ld e,h			;90d3
	ld (hl),h		;90d4
	inc b			;90d5
	nop			;90d6
	ld (bc),a		;90d7
	add a,h			;90d8
	ld l,d			;90d9
	ld a,c			;90da
	and h			;90db
	ld a,c			;90dc
	inc b			;90dd
	ld bc,l8b02h		;90de
	ld a,(de)		;90e1
	ld (hl),a		;90e2
	ld c,a			;90e3
	ld (hl),a		;90e4
	inc b			;90e5
	nop			;90e6
	ld (bc),a		;90e7
	sub d			;90e8
	call 00379h		;90e9
	ld a,d			;90ec
	inc b			;90ed
	ld bc,l9a02h		;90ee
	jp nc,00c77h		;90f1
	ld a,b			;90f4
	inc b			;90f5
	nop			;90f6
	ld (bc),a		;90f7
	xor (hl)		;90f8
	ld l,07ah		;90f9
	ld l,b			;90fb
	ld a,d			;90fc
	inc b			;90fd
	ld bc,00101h		;90fe
	call po,03d6eh		;9101
	ld l,a			;9104
	inc b			;9105
	ld bc,02001h		;9106
	halt			;9109
	ld l,a			;910a
	or 06fh			;910b
	inc b			;910d
	nop			;910e
	inc b			;910f
	ret nz			;9110
	pop bc			;9111
	ld a,d			;9112
	jp nc,0047ah		;9113
	ld bc,0c002h		;9116
	pop bc			;9119
	ld a,d			;911a
	jp nc,0047ah		;911b
	nop			;911e
	inc b			;911f
	jp nz,07addh		;9120
	or 07ah			;9123
	inc b			;9125
	ld (bc),a		;9126
	inc b			;9127
	push bc			;9128
	defb 0ddh,07ah,0f6h ;illegal sequence	;9129
l912ch:
	ld a,d			;912c
	inc b			;912d
	ld bc,0c202h		;912e
	defb 0ddh,07ah,0f6h ;illegal sequence	;9131
	ld a,d			;9134
	inc b			;9135
	inc bc			;9136
	ld (bc),a		;9137
	push bc			;9138
	defb 0ddh,07ah,0f6h ;illegal sequence	;9139
	ld a,d			;913c
	inc b			;913d
	rst 38h			;913e
	inc bc			;913f
	ld bc,00257h		;9140
	jp 047c5h		;9143
	add a,0c9h		;9146
	inc bc			;9148
	jp z,0ffcdh		;9149
	rst 38h			;914c
	rst 38h			;914d
	rst 38h			;914e
	ld (bc),a		;914f
	ld bc,00257h		;9150
	xor h			;9153
	call 000ffh		;9154
	nop			;9157
	inc bc			;9158
	djnz l916fh		;9159
	ld hl,03225h		;915b
	ld (hl),043h		;915e
	ld b,a			;9160
	ld d,l			;9161
	ld (05692h),hl		;9162
	or (hl)			;9165
	inc d			;9166
	call nz,0ffffh		;9167
	rst 38h			;916a
	inc bc			;916b
	ld a,(de)		;916c
	ld d,(hl)		;916d
	inc bc			;916e
l916fh:
	set 1,l			;916f
	rst 38h			;9171
	rst 38h			;9172
	rst 38h			;9173
	rst 38h			;9174
	inc bc			;9175
	jr nz,l91f7h		;9176
	ld (bc),a		;9178
	add a,b			;9179
	cp a			;917a
	ld b,a			;917b
	ret nz			;917c
	rst 0			;917d
	ld b,a			;917e
	set 1,l			;917f
	rst 38h			;9181
	ld bc,00201h		;9182
	ld (de),a		;9185
	inc bc			;9186
	inc hl			;9187
	jr nz,$+51		;9188
	jr nc,l91ceh		;918a
	ld b,b			;918c
	ld d,e			;918d
	ld d,b			;918e
	sub h			;918f
	jr nc,$-78		;9190
	ld d,b			;9192
	ret nz			;9193
	rst 38h			;9194
	ld bc,00302h		;9195
	rlca			;9198
	ld bc,00302h		;9199
	rlca			;919c
	ld bc,00302h		;919d
	rlca			;91a0
	ld bc,00302h		;91a1
	rlca			;91a4
	rst 38h			;91a5
	nop			;91a6
	jr nz,l91b9h		;91a7
	ld c,e			;91a9
	and c			;91aa
	adc a,c			;91ab
	and c			;91ac
	inc b			;91ad
	ld bc,01080h		;91ae
	ld c,e			;91b1
	and c			;91b2
	adc a,c			;91b3
	and c			;91b4
	inc b			;91b5
	nop			;91b6
	ld h,b			;91b7
	dec de			;91b8
l91b9h:
	jp z,0d9a1h		;91b9
	and c			;91bc
	inc b			;91bd
	ld bc,01b80h		;91be
	jp z,0d9a1h		;91c1
	and c			;91c4
	inc b			;91c5
	nop			;91c6
	jr nz,l91e9h		;91c7
	ex de,hl		;91c9
	and c			;91ca
	ld b,l			;91cb
	and l			;91cc
	inc b			;91cd
l91ceh:
	ld bc,02080h		;91ce
	ex de,hl		;91d1
	and c			;91d2
	ld b,l			;91d3
	and l			;91d4
	inc b			;91d5
	nop			;91d6
	ld h,b			;91d7
	sbc a,l			;91d8
	rst 0			;91d9
	xor b			;91da
	ret c			;91db
	xor b			;91dc
	inc b			;91dd
	ld bc,l9d80h		;91de
	rst 0			;91e1
	xor b			;91e2
	ret c			;91e3
	xor b			;91e4
	inc b			;91e5
	nop			;91e6
	ret po			;91e7
	sbc a,c			;91e8
l91e9h:
	and (hl)		;91e9
	xor b			;91ea
	cp b			;91eb
	xor b			;91ec
	inc b			;91ed
	ld bc,l9be0h		;91ee
	and (hl)		;91f1
	xor b			;91f2
	cp b			;91f3
	xor b			;91f4
	inc b			;91f5
	nop			;91f6
l91f7h:
	ld h,b			;91f7
	sub a			;91f8
	add a,l			;91f9
	xor b			;91fa
	sub a			;91fb
	xor b			;91fc
	inc b			;91fd
	ld bc,l9780h		;91fe
	add a,l			;9201
	xor b			;9202
	sub a			;9203
	xor b			;9204
	inc b			;9205
	nop			;9206
	and b			;9207
	and b			;9208
l9209h:
	jp pe,036a8h		;9209
	xor c			;920c
	inc b			;920d
	ld bc,0a040h		;920e
	jp pe,036a8h		;9211
	xor c			;9214
	inc b			;9215
	nop			;9216
	ld h,b			;9217
	or b			;9218
	add a,b			;9219
	xor c			;921a
	sbc a,b			;921b
	xor c			;921c
	inc b			;921d
	nop			;921e
	and b			;921f
	or e			;9220
	or b			;9221
	xor c			;9222
	rst 0			;9223
l9224h:
	xor c			;9224
	inc b			;9225
	nop			;9226
	ld b,b			;9227
	jr nz,l9209h		;9228
	xor c			;922a
	ld l,d			;922b
	xor d			;922c
	inc b			;922d
	ld bc,04040h		;922e
	rst 18h			;9231
	xor c			;9232
	ld l,d			;9233
	xor d			;9234
	inc b			;9235
	nop			;9236
	ld b,b			;9237
	ld h,b			;9238
	ld sp,hl		;9239
	xor d			;923a
	sbc a,b			;923b
	xor e			;923c
	inc b			;923d
	ld bc,08040h		;923e
	ld sp,hl		;9241
	xor d			;9242
	sbc a,b			;9243
	xor e			;9244
	inc b			;9245
	nop			;9246
	ret po			;9247
	xor e			;9248
	ld b,l			;9249
	xor h			;924a
	ld l,a			;924b
	xor h			;924c
	inc b			;924d
	nop			;924e
	ld b,b			;924f
	cp a			;9250
	sub h			;9251
	xor h			;9252
	ld sp,hl		;9253
	xor h			;9254
	inc b			;9255
	nop			;9256
	add a,b			;9257
	cp c			;9258
	ld l,d			;9259
	xor l			;925a
	and c			;925b
	xor l			;925c
	inc b			;925d
	nop			;925e
	ld b,b			;925f
	cp e			;9260
	exx			;9261
	xor l			;9262
	ret m			;9263
	xor l			;9264
	inc b			;9265
	nop			;9266
	jr nz,l9224h		;9267
	add hl,de		;9269
	xor (hl)		;926a
	ld a,0aeh		;926b
	inc b			;926d
	cp 001h			;926e
	ld bc,00001h		;9270
	ld (bc),a		;9273
	ld (bc),a		;9274
	ld (bc),a		;9275
	nop			;9276
	inc bc			;9277
	inc bc			;9278
	inc bc			;9279
l927ah:
	nop			;927a
	inc b			;927b
	inc b			;927c
	inc b			;927d
	nop			;927e
	rst 38h			;927f
	nop			;9280
	and b			;9281
	ld bc,0a0c4h		;9282
	sbc a,0a0h		;9285
	inc b			;9287
	inc bc			;9288
	ld d,b			;9289
	ld bc,0a0c4h		;928a
	sbc a,0a0h		;928d
	inc b			;928f
	nop			;9290
	jr nc,l9297h		;9291
	push af			;9293
	and b			;9294
	rlca			;9295
	and c			;9296
l9297h:
	inc b			;9297
	inc bc			;9298
	ret nz			;9299
	inc b			;929a
	push af			;929b
	and b			;929c
	rlca			;929d
	and c			;929e
	inc b			;929f
	nop			;92a0
	ld d,b			;92a1
	ld b,019h		;92a2
	and c			;92a4
	inc sp			;92a5
	and c			;92a6
	inc b			;92a7
	inc bc			;92a8
	and b			;92a9
	ld b,019h		;92aa
	and c			;92ac
	inc sp			;92ad
	and c			;92ae
	inc b			;92af
	rst 38h			;92b0
	inc bc			;92b1
	jr nz,l927ah		;92b2
	ld b,a			;92b4
	rst 0			;92b5
	set 7,a			;92b6
l92b8h:
	rlca			;92b8
	nop			;92b9
	xor d			;92ba
	ld c,d			;92bb
	inc b			;92bc
	dec c			;92bd
	rlca			;92be
	inc a			;92bf
	jp z,0044bh		;92c0
	dec c			;92c3
	rlca			;92c4
	call m,0501fh		;92c5
	inc b			;92c8
	ld h,b			;92c9
	rlca			;92ca
	call z,04fe6h		;92cb
	inc b			;92ce
	ld h,a			;92cf
	rlca			;92d0
	call c,0504bh		;92d1
	inc b			;92d4
	ld h,d			;92d5
	nop			;92d6
	inc bc			;92d7
	ld c,h			;92d8
	pop hl			;92d9
	ld c,e			;92da
	inc b			;92db
	ld (de),a		;92dc
	inc bc			;92dd
	ld c,h			;92de
	pop hl			;92df
	ld c,e			;92e0
	inc b			;92e1
	ld l,b			;92e2
	inc bc			;92e3
	ld d,h			;92e4
	inc de			;92e5
	ld c,l			;92e6
	inc b			;92e7
	jr l92edh		;92e8
	ld e,h			;92ea
	sub c			;92eb
	ld c,l			;92ec
l92edh:
	inc b			;92ed
	dec d			;92ee
	inc bc			;92ef
	ld l,h			;92f0
	ld h,h			;92f1
	ld c,h			;92f2
	inc b			;92f3
	ld de,l8401h		;92f4
	add a,(hl)		;92f7
	ld d,c			;92f8
	inc b			;92f9
	ld e,002h		;92fa
	add a,h			;92fc
	ld sp,00451h		;92fd
	ld d,l			;9300
	inc bc			;9301
	and b			;9302
	rlca			;9303
	ld d,d			;9304
	inc b			;9305
	rra			;9306
	inc bc			;9307
	ret z			;9308
	jr nc,l935bh		;9309
	inc b			;930b
	ld (hl),b		;930c
	inc bc			;930d
	ld h,h			;930e
	ld c,a			;930f
	ld c,l			;9310
	inc b			;9311
	djnz l9317h		;9312
	sub h			;9314
	ld (hl),e		;9315
	ld d,c			;9316
l9317h:
	inc b			;9317
	ld h,c			;9318
	inc b			;9319
	ld d,b			;931a
	sbc a,l			;931b
	ld l,h			;931c
	inc b			;931d
	ld h,h			;931e
	inc b			;931f
	sbc a,b			;9320
	and 052h		;9321
	inc b			;9323
	ld b,b			;9324
	nop			;9325
	rlca			;9326
	ret c			;9327
	in a,(04fh)		;9328
	inc b			;932a
	ld h,a			;932b
	inc bc			;932c
	call z,04d13h		;932d
	inc b			;9330
	jr $+5			;9331
	ld c,h			;9333
	ld (00456h),a		;9334
	djnz l933ch		;9337
	ld h,h			;9339
	ld (hl),h		;933a
	ld d,(hl)		;933b
l933ch:
	inc b			;933c
	daa			;933d
	inc bc			;933e
	ld e,h			;933f
	dec d			;9340
	ld c,(hl)		;9341
	inc b			;9342
	ld d,001h		;9343
	adc a,h			;9345
	sbc a,b			;9346
	ld c,(hl)		;9347
	inc b			;9348
	add hl,de		;9349
	inc bc			;934a
	ld d,h			;934b
	out (04dh),a		;934c
	inc b			;934e
	inc de			;934f
	ld bc,02384h		;9350
	ld c,h			;9353
	inc b			;9354
	ld (de),a		;9355
	ld bc,071b4h		;9356
	ld d,l			;9359
	inc b			;935a
l935bh:
	inc l			;935b
	ld (bc),a		;935c
	cp h			;935d
	xor 053h		;935e
	inc b			;9360
	ld sp,0a402h		;9361
	xor h			;9364
	ld d,e			;9365
	inc b			;9366
	cpl			;9367
	ld (bc),a		;9368
	xor h			;9369
	jp (hl)			;936a
	ld d,l			;936b
	inc b			;936c
	ld hl,(l8402h)		;936d
	ld (hl),b		;9370
	ld d,h			;9371
	inc b			;9372
	dec l			;9373
	inc b			;9374
	add a,b			;9375
	call pe,0046dh		;9376
	dec sp			;9379
	nop			;937a
	ld bc,013ach		;937b
	ld c,l			;937e
	inc b			;937f
	jr l9383h		;9380
	ld c,h			;9382
l9383h:
	out (04dh),a		;9383
	inc b			;9385
	inc de			;9386
	ld bc,07554h		;9387
	ld e,b			;938a
	inc b			;938b
	dec e			;938c
	ld bc,0f75ch		;938d
	ld d,a			;9390
	inc b			;9391
	inc sp			;9392
	ld bc,0748ch		;9393
	ld d,a			;9396
	inc b			;9397
	dec (hl)		;9398
	ld bc,0b7b4h		;9399
	ld e,b			;939c
	inc b			;939d
	ld (hl),l		;939e
	ld bc,030c0h		;939f
	ld d,b			;93a2
	inc b			;93a3
	ld (hl),b		;93a4
	ld bc,0d9b8h		;93a5
	ld e,b			;93a8
	inc b			;93a9
	ld b,l			;93aa
	ld bc,01a9ch		;93ab
	ld e,c			;93ae
	inc b			;93af
	dec h			;93b0
	ld bc,0746ch		;93b1
	ld d,(hl)		;93b4
	inc b			;93b5
	daa			;93b6
	nop			;93b7
	ld bc,056bch		;93b8
	ld c,(hl)		;93bb
	inc b			;93bc
	rla			;93bd
	ld bc,0704ch		;93be
	ld d,h			;93c1
	inc b			;93c2
	dec l			;93c3
	ld bc,0985ch		;93c4
	ld c,(hl)		;93c7
	inc b			;93c8
	add hl,de		;93c9
	ld bc,03d84h		;93ca
	ld e,d			;93cd
	inc b			;93ce
	scf			;93cf
	ld bc,09da4h		;93d0
	ld e,c			;93d3
	inc b			;93d4
	ld l,(hl)		;93d5
	ld bc,0c094h		;93d6
	ld e,d			;93d9
	inc b			;93da
	ld l,a			;93db
	ld b,0c4h		;93dc
	ld b,d			;93de
	ld e,e			;93df
	inc b			;93e0
	ld e,b			;93e1
	nop			;93e2
	ld bc,034ach		;93e3
	ld e,a			;93e6
	inc b			;93e7
	jr l93ebh		;93e8
	ld c,h			;93ea
l93ebh:
	call p,0045eh		;93eb
	inc de			;93ee
	ld bc,0f054h		;93ef
	ld e,l			;93f2
	inc b			;93f3
	ld hl,07401h		;93f4
	ld (hl),h		;93f7
	ld d,(hl)		;93f8
	inc b			;93f9
	daa			;93fa
	ld bc,0399ch		;93fb
	ld h,b			;93fe
	inc b			;93ff
	ld c,c			;9400
	ld bc,030b4h		;9401
	ld d,b			;9404
	inc b			;9405
	ld (hl),b		;9406
	ld (bc),a		;9407
	ld l,b			;9408
	ld l,a			;9409
	ld e,e			;940a
	inc b			;940b
	ld e,h			;940c
	nop			;940d
	ld bc,03f84h		;940e
	ld h,c			;9411
	inc b			;9412
	ld c,b			;9413
	ld bc,0bc54h		;9414
	ld h,b			;9417
	inc b			;9418
	ld c,d			;9419
	ld bc,0ae7ch		;941a
	ld l,c			;941d
	inc b			;941e
	ld c,l			;941f
	ld bc,0f764h		;9420
	ld e,a			;9423
	inc b			;9424
	ld b,h			;9425
	ld bc,0566ch		;9426
	ld c,(hl)		;9429
	inc b			;942a
	rla			;942b
	ld bc,0ac4ch		;942c
	ld d,e			;942f
	inc b			;9430
	cpl			;9431
	ld bc,030d4h		;9432
	ld d,b			;9435
	inc b			;9436
	ld (hl),b		;9437
	ld (bc),a		;9438
	ld c,h			;9439
	ld h,c			;943a
	ld h,c			;943b
	inc b			;943c
	ld a,h			;943d
	nop			;943e
	ld bc,01554h		;943f
	ld c,(hl)		;9442
	inc b			;9443
	ld d,001h		;9444
	ld c,h			;9446
	xor (hl)		;9447
	ld l,c			;9448
	inc b			;9449
	ld c,l			;944a
	ld bc,0355ch		;944b
	ld h,l			;944e
	inc b			;944f
	ld a,(de)		;9450
	inc b			;9451
	call nc,064f3h		;9452
	inc b			;9455
	dec de			;9456
	inc b			;9457
	ld c,h			;9458
	ld l,069h		;9459
	inc b			;945b
	ld (hl),h		;945c
	inc b			;945d
	ld d,h			;945e
	ret p			;945f
	ld l,c			;9460
	inc b			;9461
	ld d,b			;9462
	inc b			;9463
	ld (hl),h		;9464
	call pe,0046dh		;9465
	ld a,b			;9468
	inc b			;9469
	adc a,h			;946a
	halt			;946b
	ld e,a			;946c
	inc b			;946d
	ld b,d			;946e
	inc b			;946f
	and b			;9470
	pop bc			;9471
	ld l,d			;9472
	inc b			;9473
	inc hl			;9474
	inc b			;9475
	xor b			;9476
	ld a,a			;9477
	ld l,d			;9478
	inc b			;9479
	ld b,e			;947a
	nop			;947b
	nop			;947c
	ld bc,0b150h		;947d
	ld l,e			;9480
	inc b			;9481
	ld c,h			;9482
	ld bc,0b150h		;9483
	ld l,e			;9486
	inc b			;9487
	ld c,(hl)		;9488
	ld bc,01894h		;9489
	ld l,e			;948c
	inc b			;948d
	ld e,(hl)		;948e
	ld bc,01894h		;948f
	ld l,e			;9492
	inc b			;9493
	ld h,(hl)		;9494
	nop			;9495
	rst 38h			;9496
	rst 38h			;9497
	rst 38h			;9498
	rst 38h			;9499
	rst 38h			;949a
	rst 38h			;949b
	rst 38h			;949c
	rst 38h			;949d
	rst 38h			;949e
	rst 38h			;949f
	rst 38h			;94a0
	rst 38h			;94a1
	rst 38h			;94a2
	rst 38h			;94a3
	rst 38h			;94a4
	rst 38h			;94a5
	rst 38h			;94a6
	rst 38h			;94a7
	rst 38h			;94a8
	rst 38h			;94a9
	rst 38h			;94aa
	rst 38h			;94ab
	rst 38h			;94ac
	rst 38h			;94ad
	rst 38h			;94ae
	rst 38h			;94af
	rst 38h			;94b0
	rst 38h			;94b1
	rst 38h			;94b2
	rst 38h			;94b3
	rst 38h			;94b4
	rst 38h			;94b5
	rst 38h			;94b6
	rst 38h			;94b7
	rst 38h			;94b8
	rst 38h			;94b9
	rst 38h			;94ba
	rst 38h			;94bb
	rst 38h			;94bc
	rst 38h			;94bd
	rst 38h			;94be
	rst 38h			;94bf
	rst 38h			;94c0
	rst 38h			;94c1
	rst 38h			;94c2
	rst 38h			;94c3
	rst 38h			;94c4
	rst 38h			;94c5
	rst 38h			;94c6
	rst 38h			;94c7
	rst 38h			;94c8
	rst 38h			;94c9
	rst 38h			;94ca
	rst 38h			;94cb
	rst 38h			;94cc
	rst 38h			;94cd
	rst 38h			;94ce
	rst 38h			;94cf
	rst 38h			;94d0
	rst 38h			;94d1
	rst 38h			;94d2
	rst 38h			;94d3
	rst 38h			;94d4
	rst 38h			;94d5
	rst 38h			;94d6
	rst 38h			;94d7
	rst 38h			;94d8
	rst 38h			;94d9
	rst 38h			;94da
	rst 38h			;94db
	rst 38h			;94dc
	rst 38h			;94dd
	rst 38h			;94de
	rst 38h			;94df
	rst 38h			;94e0
	rst 38h			;94e1
	rst 38h			;94e2
	rst 38h			;94e3
	rst 38h			;94e4
	rst 38h			;94e5
	rst 38h			;94e6
	rst 38h			;94e7
	rst 38h			;94e8
	rst 38h			;94e9
	rst 38h			;94ea
	rst 38h			;94eb
	rst 38h			;94ec
	rst 38h			;94ed
	rst 38h			;94ee
	rst 38h			;94ef
	rst 38h			;94f0
	rst 38h			;94f1
	rst 38h			;94f2
	rst 38h			;94f3
	rst 38h			;94f4
	rst 38h			;94f5
	rst 38h			;94f6
	rst 38h			;94f7
	rst 38h			;94f8
	rst 38h			;94f9
	rst 38h			;94fa
	rst 38h			;94fb
	rst 38h			;94fc
	rst 38h			;94fd
	rst 38h			;94fe
	rst 38h			;94ff
	inc b			;9500
	inc bc			;9501
	dec b			;9502
	inc bc			;9503
	ld b,003h		;9504
	rlca			;9506
	inc bc			;9507
	inc b			;9508
	inc bc			;9509
	ex af,af'		;950a
	inc bc			;950b
	add hl,bc		;950c
	inc bc			;950d
	ld a,(bc)		;950e
	inc bc			;950f
	ret pe			;9510
	ld bc,001e9h		;9511
	jp pe,0ff01h		;9514
	inc b			;9517
	rst 38h			;9518
	inc b			;9519
	rst 38h			;951a
	inc b			;951b
	rst 38h			;951c
	inc b			;951d
	rst 38h			;951e
	inc b			;951f
	rst 38h			;9520
	inc b			;9521
	rst 38h			;9522
	inc b			;9523
	rst 38h			;9524
	inc b			;9525
	rst 38h			;9526
	inc b			;9527
	rst 38h			;9528
	inc b			;9529
	rst 38h			;952a
	inc b			;952b
	rst 38h			;952c
	inc b			;952d
	rst 38h			;952e
	inc b			;952f
	rst 38h			;9530
	inc b			;9531
	rst 38h			;9532
	inc b			;9533
	rst 38h			;9534
	inc b			;9535
	rst 38h			;9536
	inc b			;9537
	sub d			;9538
	ld (bc),a		;9539
	sub e			;953a
	ld (bc),a		;953b
	sub h			;953c
	ld (bc),a		;953d
	rst 38h			;953e
	inc b			;953f
	dec bc			;9540
	inc bc			;9541
	inc c			;9542
	inc bc			;9543
	nop			;9544
	nop			;9545
	ld bc,00200h		;9546
	nop			;9549
	inc bc			;954a
	nop			;954b
	inc b			;954c
	nop			;954d
	dec b			;954e
	nop			;954f
	ld b,000h		;9550
	rlca			;9552
	nop			;9553
	ex af,af'		;9554
	nop			;9555
	add hl,bc		;9556
	nop			;9557
	ld a,(bc)		;9558
	nop			;9559
	dec bc			;955a
	nop			;955b
	inc c			;955c
	nop			;955d
	dec c			;955e
l955fh:
	nop			;955f
	ld c,000h		;9560
	rrca			;9562
	nop			;9563
	djnz l9566h		;9564
l9566h:
	ld de,01200h		;9566
	nop			;9569
	inc de			;956a
	nop			;956b
	add a,e			;956c
	ld (bc),a		;956d
	add a,h			;956e
	ld (bc),a		;956f
	add a,l			;9570
	ld (bc),a		;9571
	add a,(hl)		;9572
	ld (bc),a		;9573
	add a,a			;9574
	ld (bc),a		;9575
	rst 38h			;9576
	inc b			;9577
	sub l			;9578
	ld (bc),a		;9579
	sub (hl)		;957a
	ld (bc),a		;957b
	sub a			;957c
	ld (bc),a		;957d
	rst 38h			;957e
	inc b			;957f
	dec c			;9580
	inc bc			;9581
	ld c,003h		;9582
	inc d			;9584
	nop			;9585
	dec d			;9586
	nop			;9587
	ld d,000h		;9588
	rla			;958a
	nop			;958b
	jr l958eh		;958c
l958eh:
	add hl,de		;958e
	nop			;958f
	ld a,(de)		;9590
	nop			;9591
	dec de			;9592
	nop			;9593
	inc e			;9594
	nop			;9595
	dec e			;9596
	nop			;9597
	ld e,000h		;9598
	rra			;959a
	nop			;959b
	jr nz,l959eh		;959c
l959eh:
	ld hl,02200h		;959e
	nop			;95a1
	inc hl			;95a2
	nop			;95a3
	inc h			;95a4
	nop			;95a5
	dec h			;95a6
	nop			;95a7
	ld h,000h		;95a8
	daa			;95aa
	nop			;95ab
	adc a,b			;95ac
	ld (bc),a		;95ad
	adc a,c			;95ae
	ld (bc),a		;95af
	adc a,d			;95b0
	ld (bc),a		;95b1
	adc a,e			;95b2
	ld (bc),a		;95b3
	adc a,h			;95b4
	ld (bc),a		;95b5
	rst 38h			;95b6
	inc b			;95b7
	sbc a,b			;95b8
	ld (bc),a		;95b9
	sbc a,c			;95ba
	ld (bc),a		;95bb
	sbc a,d			;95bc
	ld (bc),a		;95bd
	rst 38h			;95be
	inc b			;95bf
	or b			;95c0
	inc b			;95c1
	or c			;95c2
	inc b			;95c3
	jr z,l95c6h		;95c4
l95c6h:
	add hl,hl		;95c6
	nop			;95c7
	ld hl,(02b00h)		;95c8
	nop			;95cb
	inc l			;95cc
	nop			;95cd
	dec l			;95ce
	nop			;95cf
	ld l,000h		;95d0
	cpl			;95d2
	nop			;95d3
	jr nc,l95d6h		;95d4
l95d6h:
	ld sp,03200h		;95d6
	nop			;95d9
	inc sp			;95da
	nop			;95db
	inc (hl)		;95dc
	nop			;95dd
	dec (hl)		;95de
	nop			;95df
	ld (hl),000h		;95e0
	scf			;95e2
	nop			;95e3
	jr c,l95e6h		;95e4
l95e6h:
	add hl,sp		;95e6
	nop			;95e7
	ld a,(03b00h)		;95e8
	nop			;95eb
	adc a,l			;95ec
	ld (bc),a		;95ed
	adc a,(hl)		;95ee
	ld (bc),a		;95ef
	adc a,a			;95f0
	ld (bc),a		;95f1
	sub b			;95f2
	ld (bc),a		;95f3
	sub c			;95f4
	ld (bc),a		;95f5
	rst 38h			;95f6
	inc b			;95f7
	rrca			;95f8
	inc bc			;95f9
	sbc a,e			;95fa
	ld (bc),a		;95fb
	sbc a,h			;95fc
	ld (bc),a		;95fd
	rst 38h			;95fe
	inc b			;95ff
	or (hl)			;9600
	inc b			;9601
	or a			;9602
	inc b			;9603
	inc a			;9604
	nop			;9605
	dec a			;9606
	nop			;9607
	ld a,000h		;9608
	ccf			;960a
	nop			;960b
	ld b,b			;960c
	nop			;960d
	ld b,c			;960e
	nop			;960f
	ld b,d			;9610
	nop			;9611
	ld b,e			;9612
	nop			;9613
	ld b,h			;9614
	nop			;9615
	ld b,l			;9616
	nop			;9617
	ld b,(hl)		;9618
	nop			;9619
	ld b,a			;961a
	nop			;961b
	ld a,000h		;961c
	ld c,b			;961e
	nop			;961f
	ld c,c			;9620
	nop			;9621
	ld c,d			;9622
	nop			;9623
	ld c,e			;9624
	nop			;9625
	ld c,h			;9626
	nop			;9627
	ld c,l			;9628
	nop			;9629
	ld c,(hl)		;962a
	nop			;962b
	rrca			;962c
	inc bc			;962d
	sbc a,l			;962e
	ld (bc),a		;962f
	sbc a,(hl)		;9630
	ld (bc),a		;9631
	sbc a,a			;9632
	ld (bc),a		;9633
	and b			;9634
	ld (bc),a		;9635
	and c			;9636
	ld (bc),a		;9637
	and d			;9638
	ld (bc),a		;9639
	and e			;963a
	ld (bc),a		;963b
	and h			;963c
	ld (bc),a		;963d
	rrca			;963e
	inc bc			;963f
	or d			;9640
	inc b			;9641
	or e			;9642
	inc b			;9643
	ld c,a			;9644
	nop			;9645
	ld d,b			;9646
	nop			;9647
	ld d,c			;9648
	nop			;9649
	ld d,d			;964a
	nop			;964b
	ld d,e			;964c
	nop			;964d
	ld d,h			;964e
	nop			;964f
	ld d,l			;9650
	nop			;9651
	ld d,(hl)		;9652
	nop			;9653
	ld d,a			;9654
	nop			;9655
	ld e,b			;9656
	nop			;9657
	ld e,c			;9658
	nop			;9659
	ld e,d			;965a
	nop			;965b
	ld e,e			;965c
	nop			;965d
	ld e,h			;965e
	nop			;965f
	ld e,l			;9660
	nop			;9661
	ld e,(hl)		;9662
	nop			;9663
	ld e,a			;9664
	nop			;9665
	ld h,b			;9666
	nop			;9667
	ld h,c			;9668
	nop			;9669
	ld h,d			;966a
	nop			;966b
	rrca			;966c
	inc bc			;966d
	and l			;966e
	ld (bc),a		;966f
	and (hl)		;9670
	ld (bc),a		;9671
	and a			;9672
	ld (bc),a		;9673
	xor b			;9674
	ld (bc),a		;9675
	xor c			;9676
	ld (bc),a		;9677
	xor d			;9678
	ld (bc),a		;9679
	xor e			;967a
	ld (bc),a		;967b
	xor h			;967c
	ld (bc),a		;967d
	rrca			;967e
	inc bc			;967f
	cp b			;9680
	inc b			;9681
	cp c			;9682
	inc b			;9683
	ld h,e			;9684
	nop			;9685
	ld h,h			;9686
	nop			;9687
	ld h,l			;9688
	nop			;9689
	ld h,(hl)		;968a
	nop			;968b
	ld h,a			;968c
	nop			;968d
	ld l,b			;968e
	nop			;968f
	ld l,c			;9690
	nop			;9691
	ld l,d			;9692
	nop			;9693
	ld l,e			;9694
	nop			;9695
	ld l,h			;9696
	nop			;9697
	ld l,l			;9698
	nop			;9699
	ld l,(hl)		;969a
	nop			;969b
	ld l,a			;969c
	nop			;969d
	ld (hl),b		;969e
	nop			;969f
	ld a,000h		;96a0
	ld (hl),c		;96a2
	nop			;96a3
	ld (hl),d		;96a4
	nop			;96a5
	ld (hl),e		;96a6
	nop			;96a7
	ld (hl),h		;96a8
	nop			;96a9
	ld (hl),l		;96aa
	nop			;96ab
	rrca			;96ac
	inc bc			;96ad
	xor l			;96ae
	ld (bc),a		;96af
	xor (hl)		;96b0
	ld (bc),a		;96b1
	xor a			;96b2
	ld (bc),a		;96b3
	or b			;96b4
	ld (bc),a		;96b5
	or c			;96b6
	ld (bc),a		;96b7
	or d			;96b8
	ld (bc),a		;96b9
	or e			;96ba
	ld (bc),a		;96bb
	or h			;96bc
	ld (bc),a		;96bd
	rrca			;96be
	inc bc			;96bf
	or h			;96c0
	inc b			;96c1
	or l			;96c2
	inc b			;96c3
	halt			;96c4
	nop			;96c5
	ld (hl),a		;96c6
	nop			;96c7
	ld a,b			;96c8
	nop			;96c9
	ld a,c			;96ca
	nop			;96cb
	ld a,d			;96cc
	nop			;96cd
	ld a,e			;96ce
	nop			;96cf
	ld a,h			;96d0
	nop			;96d1
	ld a,l			;96d2
	nop			;96d3
	ld a,(hl)		;96d4
	nop			;96d5
	ld a,a			;96d6
	nop			;96d7
	add a,b			;96d8
	nop			;96d9
	add a,c			;96da
	nop			;96db
	add a,d			;96dc
	nop			;96dd
	add a,e			;96de
	nop			;96df
	ld a,000h		;96e0
	ld a,000h		;96e2
	add a,h			;96e4
	nop			;96e5
	add a,l			;96e6
	nop			;96e7
	add a,(hl)		;96e8
	nop			;96e9
	add a,a			;96ea
	nop			;96eb
	rrca			;96ec
	inc bc			;96ed
	or l			;96ee
	ld (bc),a		;96ef
	or (hl)			;96f0
	ld (bc),a		;96f1
	or a			;96f2
	ld (bc),a		;96f3
	cp b			;96f4
	ld (bc),a		;96f5
	cp c			;96f6
	ld (bc),a		;96f7
	cp d			;96f8
	ld (bc),a		;96f9
	cp e			;96fa
	ld (bc),a		;96fb
	cp h			;96fc
	ld (bc),a		;96fd
	cp l			;96fe
	ld (bc),a		;96ff
	cp d			;9700
	inc b			;9701
	cp e			;9702
	inc b			;9703
	adc a,b			;9704
	nop			;9705
	adc a,c			;9706
	nop			;9707
	adc a,d			;9708
	nop			;9709
	adc a,e			;970a
	nop			;970b
	adc a,h			;970c
	nop			;970d
	adc a,l			;970e
	nop			;970f
	adc a,(hl)		;9710
	nop			;9711
	adc a,a			;9712
	nop			;9713
	sub b			;9714
	nop			;9715
l9716h:
	sub c			;9716
	nop			;9717
	sub d			;9718
	nop			;9719
	sub e			;971a
	nop			;971b
	sub h			;971c
	nop			;971d
	sub l			;971e
	nop			;971f
	ld a,000h		;9720
	sub (hl)		;9722
	nop			;9723
	sub a			;9724
	nop			;9725
	sbc a,b			;9726
	nop			;9727
	ld a,000h		;9728
	sbc a,c			;972a
	nop			;972b
	rrca			;972c
	inc bc			;972d
	cp (hl)			;972e
	ld (bc),a		;972f
	cp a			;9730
	ld (bc),a		;9731
	ret nz			;9732
	ld (bc),a		;9733
	pop bc			;9734
	ld (bc),a		;9735
	jp nz,0c302h		;9736
	ld (bc),a		;9739
	call nz,0c502h		;973a
	ld (bc),a		;973d
	add a,002h		;973e
	cp h			;9740
	inc b			;9741
	cp l			;9742
	inc b			;9743
	sbc a,d			;9744
	nop			;9745
	sbc a,e			;9746
	nop			;9747
	sbc a,h			;9748
	nop			;9749
	sbc a,l			;974a
	nop			;974b
	sbc a,(hl)		;974c
	nop			;974d
	sbc a,a			;974e
	nop			;974f
	and b			;9750
	nop			;9751
	and c			;9752
	nop			;9753
	and d			;9754
	nop			;9755
	and e			;9756
	nop			;9757
	and h			;9758
	nop			;9759
	and l			;975a
	nop			;975b
	and (hl)		;975c
	nop			;975d
	and a			;975e
	nop			;975f
	ld a,000h		;9760
	ld a,000h		;9762
	xor b			;9764
	nop			;9765
	xor c			;9766
	nop			;9767
	xor d			;9768
	nop			;9769
	xor e			;976a
	nop			;976b
	rrca			;976c
	inc bc			;976d
	rst 0			;976e
	ld (bc),a		;976f
	ret z			;9770
	ld (bc),a		;9771
	ret			;9772
	ld (bc),a		;9773
	jp z,0cb02h		;9774
	ld (bc),a		;9777
	call z,0cd02h		;9778
	ld (bc),a		;977b
	adc a,002h		;977c
	rrca			;977e
	inc bc			;977f
l9780h:
	cp (hl)			;9780
	inc b			;9781
	cp a			;9782
	inc b			;9783
	xor e			;9784
	nop			;9785
	xor h			;9786
	nop			;9787
	xor l			;9788
	nop			;9789
	xor (hl)		;978a
	nop			;978b
	xor a			;978c
	nop			;978d
	or b			;978e
	nop			;978f
	or c			;9790
	nop			;9791
	or d			;9792
	nop			;9793
	or e			;9794
	nop			;9795
	or h			;9796
	nop			;9797
	or l			;9798
	nop			;9799
	or (hl)			;979a
	nop			;979b
	or a			;979c
	nop			;979d
	cp b			;979e
	nop			;979f
	ld a,000h		;97a0
	cp c			;97a2
	nop			;97a3
	cp d			;97a4
	nop			;97a5
	cp e			;97a6
	nop			;97a7
	cp h			;97a8
	nop			;97a9
	ld a,000h		;97aa
	rrca			;97ac
	inc bc			;97ad
	rst 8			;97ae
	ld (bc),a		;97af
	ret nc			;97b0
	ld (bc),a		;97b1
	pop de			;97b2
	ld (bc),a		;97b3
	jp nc,0d302h		;97b4
	ld (bc),a		;97b7
	call nc,0d502h		;97b8
	ld (bc),a		;97bb
	rrca			;97bc
	inc bc			;97bd
	rrca			;97be
	inc bc			;97bf
	ex de,hl		;97c0
	ld bc,001efh		;97c1
	ld a,000h		;97c4
	cp l			;97c6
	nop			;97c7
	cp (hl)			;97c8
	nop			;97c9
	cp a			;97ca
	nop			;97cb
	ret nz			;97cc
	nop			;97cd
	pop bc			;97ce
	nop			;97cf
	jp nz,0c300h		;97d0
	nop			;97d3
	call nz,0c500h		;97d4
	nop			;97d7
	add a,000h		;97d8
	rst 0			;97da
	nop			;97db
	ret z			;97dc
	nop			;97dd
	ld a,000h		;97de
	ld a,000h		;97e0
	ret			;97e2
	nop			;97e3
	jp z,0cb00h		;97e4
	nop			;97e7
	call z,0cd00h		;97e8
	nop			;97eb
	sub 002h		;97ec
	rst 10h			;97ee
	ld (bc),a		;97ef
	ret c			;97f0
	ld (bc),a		;97f1
	exx			;97f2
	ld (bc),a		;97f3
	jp c,0db02h		;97f4
	ld (bc),a		;97f7
	rrca			;97f8
	inc bc			;97f9
	rrca			;97fa
	inc bc			;97fb
	rrca			;97fc
	inc bc			;97fd
	rrca			;97fe
	inc bc			;97ff
	call pe,0f001h		;9800
	ld bc,000ceh		;9803
	rst 8			;9806
	nop			;9807
	ret nc			;9808
	nop			;9809
	pop de			;980a
	nop			;980b
	jp nc,0d300h		;980c
	nop			;980f
	call nc,0d500h		;9810
	nop			;9813
	sub 000h		;9814
	rst 10h			;9816
	nop			;9817
	ret c			;9818
	nop			;9819
	exx			;981a
	nop			;981b
	ld a,000h		;981c
	ld a,000h		;981e
	ld a,000h		;9820
	jp c,0db00h		;9822
	nop			;9825
	call c,0dd00h		;9826
	nop			;9829
	sbc a,000h		;982a
	rrca			;982c
	inc bc			;982d
	call c,0dd02h		;982e
	ld (bc),a		;9831
	sbc a,002h		;9832
	rrca			;9834
	inc bc			;9835
	rrca			;9836
	inc bc			;9837
	rrca			;9838
	inc bc			;9839
	rrca			;983a
	inc bc			;983b
	rrca			;983c
	inc bc			;983d
	rrca			;983e
	inc bc			;983f
	defb 0edh ;next byte illegal after ed	;9840
	ld bc,004ffh		;9841
	rlc c			;9844
	rlc c			;9846
	add a,001h		;9848
	rlc c			;984a
	add a,001h		;984c
	rlc c			;984e
	ret			;9850
	ld bc,001c6h		;9851
	rlc c			;9854
	rlc c			;9856
	add a,001h		;9858
	rst 0			;985a
	ld bc,001cbh		;985b
	ret			;985e
	ld bc,001c6h		;985f
	ret			;9862
	ld bc,001c6h		;9863
	rst 0			;9866
	ld bc,001c8h		;9867
	ret			;986a
	ld bc,000dfh		;986b
	ret po			;986e
	nop			;986f
	pop hl			;9870
	nop			;9871
	jp po,0e300h		;9872
	nop			;9875
	call po,0e500h		;9876
	nop			;9879
	cp a			;987a
	ld bc,001c0h		;987b
	ld (de),a		;987e
	ld (bc),a		;987f
	xor 001h		;9880
	xor l			;9882
	inc b			;9883
	rlc c			;9884
	ret			;9886
	ld bc,001c5h		;9887
	rlc c			;988a
	ret z			;988c
	ld bc,001cbh		;988d
	rst 0			;9890
	ld bc,001cbh		;9891
	rlc c			;9894
	rlc c			;9896
	rlc c			;9898
	ret z			;989a
	ld bc,001c4h		;989b
	rlc c			;989e
	rst 0			;98a0
	ld bc,001c8h		;98a1
	ret z			;98a4
	ld bc,001cbh		;98a5
	push bc			;98a8
	ld bc,001cah		;98a9
	ret p			;98ac
	nop			;98ad
	pop af			;98ae
	nop			;98af
	jp p,0f300h		;98b0
	nop			;98b3
	call p,0f500h		;98b4
	nop			;98b7
	or 000h			;98b8
	pop bc			;98ba
	ld bc,00213h		;98bb
	inc d			;98be
	ld (bc),a		;98bf
	pop af			;98c0
	ld bc,004ffh		;98c1
	rlc c			;98c4
	rlc c			;98c6
	rlc c			;98c8
	add a,001h		;98ca
	rlc c			;98cc
	add a,001h		;98ce
	rlc c			;98d0
	rlc c			;98d2
	ret			;98d4
	ld bc,001cbh		;98d5
	rst 0			;98d8
	ld bc,001c9h		;98d9
	rlc c			;98dc
	rlc c			;98de
	rlc c			;98e0
	add a,001h		;98e2
	rlc c			;98e4
	rlc c			;98e6
	rlc c			;98e8
	rlc c			;98ea
	inc b			;98ec
	ld bc,00105h		;98ed
	ld b,001h		;98f0
	rlca			;98f2
	ld bc,00108h		;98f3
	add hl,bc		;98f6
	ld bc,0010ah		;98f7
	ld d,002h		;98fa
	rla			;98fc
	ld (bc),a		;98fd
	jr $+4			;98fe
	jp p,0ff01h		;9900
	inc b			;9903
	rlc c			;9904
	ret z			;9906
	ld bc,001cbh		;9907
	add a,001h		;990a
	rlc c			;990c
	call nz,0c701h		;990e
	ld bc,001cbh		;9911
	ret z			;9914
	ld bc,001c6h		;9915
	rlc c			;9918
	rst 0			;991a
	ld bc,001c6h		;991b
	rlc c			;991e
	add a,001h		;9920
	rlc c			;9922
	rlc c			;9924
	rlc c			;9926
	call nz,0cb01h		;9928
	ld bc,00118h		;992b
	add hl,de		;992e
	ld bc,0011ah		;992f
	dec de			;9932
	ld bc,0011ch		;9933
	dec e			;9936
	ld bc,00219h		;9937
	ld a,(de)		;993a
	ld (bc),a		;993b
	dec de			;993c
	ld (bc),a		;993d
	inc e			;993e
	ld (bc),a		;993f
	rst 38h			;9940
	inc b			;9941
	rst 38h			;9942
	inc b			;9943
	rlc c			;9944
	add a,001h		;9946
	ret			;9948
	ld bc,001cbh		;9949
	ret			;994c
	ld bc,001c7h		;994d
	rlc c			;9950
	ret			;9952
	ld bc,001c6h		;9953
	call nz,0c701h		;9956
	ld bc,001cbh		;9959
	rlc c			;995c
	ret			;995e
	ld bc,001c9h		;995f
	add a,001h		;9962
	rst 0			;9964
	ld bc,001c6h		;9965
	rlc c			;9968
	ret z			;996a
	ld bc,0012bh		;996b
	inc l			;996e
	ld bc,0012dh		;996f
	ld l,001h		;9972
	cpl			;9974
	ld bc,00130h		;9975
	dec e			;9978
	ld (bc),a		;9979
	ld e,002h		;997a
	rra			;997c
	ld (bc),a		;997d
	rrca			;997e
	inc bc			;997f
	rst 38h			;9980
	inc b			;9981
	rst 38h			;9982
	inc b			;9983
	rlc c			;9984
	call nz,0cb01h		;9986
	ld bc,001c6h		;9989
	rst 0			;998c
	ld bc,001cbh		;998d
	rst 0			;9990
	ld bc,001c6h		;9991
	rlc c			;9994
	rlc c			;9996
	rst 0			;9998
	ld bc,001cbh		;9999
	add a,001h		;999c
	rlc c			;999e
	push bc			;99a0
	ld bc,001cbh		;99a1
	rst 0			;99a4
	ld bc,001c8h		;99a5
	rst 0			;99a8
	ld bc,001cbh		;99a9
	ccf			;99ac
	ld bc,00140h		;99ad
	ld b,c			;99b0
	ld bc,00142h		;99b1
	ld b,e			;99b4
	ld bc,00144h		;99b5
	jr nz,$+4		;99b8
	ld hl,01c02h		;99ba
	ld (bc),a		;99bd
	rrca			;99be
	inc bc			;99bf
	rst 38h			;99c0
	inc b			;99c1
	rst 38h			;99c2
	inc b			;99c3
	ret z			;99c4
	ld bc,001cbh		;99c5
	rlc c			;99c8
	push bc			;99ca
	ld bc,001c7h		;99cb
	rlc c			;99ce
	rlc c			;99d0
	rlc c			;99d2
	rst 0			;99d4
	ld bc,001cbh		;99d5
	rlc c			;99d8
	rlc c			;99da
	rlc c			;99dc
	rlc c			;99de
	rlc c			;99e0
	add a,001h		;99e2
	rlc c			;99e4
	jp z,0cb01h		;99e6
	ld bc,001c6h		;99e9
	ld d,d			;99ec
	ld bc,00153h		;99ed
	ld d,h			;99f0
	ld bc,00155h		;99f1
	ld d,(hl)		;99f4
	ld bc,00157h		;99f5
	ld (02302h),hl		;99f8
	ld (bc),a		;99fb
	rrca			;99fc
	inc bc			;99fd
	rrca			;99fe
	inc bc			;99ff
	rst 38h			;9a00
	inc b			;9a01
l9a02h:
	rst 38h			;9a02
	inc b			;9a03
	rlc c			;9a04
	add a,001h		;9a06
	rst 0			;9a08
	ld bc,001cbh		;9a09
	rlc c			;9a0c
	add a,001h		;9a0e
	rlc c			;9a10
	rlc c			;9a12
	rlc c			;9a14
	ret z			;9a16
	ld bc,001c6h		;9a17
	rlc c			;9a1a
	rlc c			;9a1c
	rst 0			;9a1e
	ld bc,001c7h		;9a1f
	rlc c			;9a22
	rlc c			;9a24
	rlc c			;9a26
	rlc c			;9a28
	rlc c			;9a2a
	ld h,d			;9a2c
	ld bc,0015bh		;9a2d
	ld h,e			;9a30
	ld bc,00164h		;9a31
	ld h,l			;9a34
	ld bc,00224h		;9a35
	dec h			;9a38
	ld (bc),a		;9a39
	rrca			;9a3a
	inc bc			;9a3b
	rrca			;9a3c
	inc bc			;9a3d
	rrca			;9a3e
	inc bc			;9a3f
	rst 38h			;9a40
	inc b			;9a41
	rst 38h			;9a42
	inc b			;9a43
	rlc c			;9a44
	rst 0			;9a46
	ld bc,001cbh		;9a47
	rlc c			;9a4a
	rlc c			;9a4c
	rlc c			;9a4e
	rlc c			;9a50
	add a,001h		;9a52
	rlc c			;9a54
	add a,001h		;9a56
	rlc c			;9a58
	rlc c			;9a5a
	rst 0			;9a5c
	ld bc,001cbh		;9a5d
	rlc c			;9a60
	rlc c			;9a62
	rlc c			;9a64
	add a,001h		;9a66
	jp z,0cb01h		;9a68
	ld bc,0017eh		;9a6b
	ld h,002h		;9a6e
	daa			;9a70
	ld (bc),a		;9a71
	jr z,l9a76h		;9a72
	add hl,hl		;9a74
	ld (bc),a		;9a75
l9a76h:
	ld hl,(00f02h)		;9a76
	inc bc			;9a79
	rrca			;9a7a
	inc bc			;9a7b
	rrca			;9a7c
	inc bc			;9a7d
	rrca			;9a7e
	inc bc			;9a7f
	rst 38h			;9a80
	inc b			;9a81
	rst 38h			;9a82
	inc b			;9a83
	ret z			;9a84
	ld bc,001cbh		;9a85
	ret z			;9a88
	ld bc,001c7h		;9a89
	ret z			;9a8c
	ld bc,001c4h		;9a8d
	add a,001h		;9a90
	rst 0			;9a92
	ld bc,001cbh		;9a93
	rlc c			;9a96
	rlc c			;9a98
	ret z			;9a9a
	ld bc,001c6h		;9a9b
	rlc c			;9a9e
	rlc c			;9aa0
	rlc c			;9aa2
	ret z			;9aa4
	ld bc,001cbh		;9aa5
	add a,001h		;9aa8
	rlc c			;9aaa
	dec hl			;9aac
	ld (bc),a		;9aad
	inc l			;9aae
	ld (bc),a		;9aaf
	dec l			;9ab0
	ld (bc),a		;9ab1
	ld l,002h		;9ab2
	cpl			;9ab4
	ld (bc),a		;9ab5
	rrca			;9ab6
	inc bc			;9ab7
	rrca			;9ab8
	inc bc			;9ab9
	rrca			;9aba
	inc bc			;9abb
	rrca			;9abc
	inc bc			;9abd
	rrca			;9abe
	inc bc			;9abf
	rst 38h			;9ac0
	inc b			;9ac1
	rst 38h			;9ac2
	inc b			;9ac3
	jp z,0c601h		;9ac4
	ld bc,001cbh		;9ac7
	rlc c			;9aca
	add a,001h		;9acc
	add a,001h		;9ace
	rst 0			;9ad0
	ld bc,001c6h		;9ad1
	rlc c			;9ad4
	rlc c			;9ad6
	jp z,0c401h		;9ad8
	ld bc,001cbh		;9adb
	rst 0			;9ade
	ld bc,001c7h		;9adf
	add a,001h		;9ae2
	ret			;9ae4
	ld bc,001cbh		;9ae5
	ret z			;9ae8
	ld bc,001c7h		;9ae9
	jr nc,$+4		;9aec
	ld sp,03202h		;9aee
	ld (bc),a		;9af1
	inc sp			;9af2
	ld (bc),a		;9af3
	rrca			;9af4
	inc bc			;9af5
	rrca			;9af6
	inc bc			;9af7
	rrca			;9af8
	inc bc			;9af9
	rrca			;9afa
	inc bc			;9afb
	rrca			;9afc
	inc bc			;9afd
	rrca			;9afe
	inc bc			;9aff
	rst 38h			;9b00
	inc b			;9b01
	rst 38h			;9b02
	inc b			;9b03
	add a,001h		;9b04
	rlc c			;9b06
	call nz,0cb01h		;9b08
	ld bc,001c9h		;9b0b
	jp z,0c801h		;9b0e
	ld bc,001c5h		;9b11
	rlc c			;9b14
	rst 0			;9b16
	ld bc,001c6h		;9b17
	ret z			;9b1a
	ld bc,001cah		;9b1b
	rlc c			;9b1e
	rlc c			;9b20
	push bc			;9b22
	ld bc,001cbh		;9b23
	ret z			;9b26
	ld bc,001cbh		;9b27
	rst 0			;9b2a
	ld bc,00234h		;9b2b
	dec (hl)		;9b2e
	ld (bc),a		;9b2f
	ld (hl),002h		;9b30
	rrca			;9b32
	inc bc			;9b33
	rrca			;9b34
	inc bc			;9b35
	rrca			;9b36
	inc bc			;9b37
	rrca			;9b38
	inc bc			;9b39
	rrca			;9b3a
	inc bc			;9b3b
	rrca			;9b3c
	inc bc			;9b3d
	rrca			;9b3e
	inc bc			;9b3f
	rst 38h			;9b40
	inc b			;9b41
	call z,0cd01h		;9b42
	ld bc,001cch		;9b45
	call 0cc01h		;9b48
	ld bc,001cdh		;9b4b
	call z,0cd01h		;9b4e
	ld bc,001d4h		;9b51
	push de			;9b54
	ld bc,001d6h		;9b55
	rst 10h			;9b58
	ld bc,001cch		;9b59
	call 0cc01h		;9b5c
	ld bc,001cdh		;9b5f
	call z,0cd01h		;9b62
	ld bc,001cch		;9b65
	call 0df01h		;9b68
	ld (bc),a		;9b6b
	ret po			;9b6c
	ld (bc),a		;9b6d
	pop hl			;9b6e
	ld (bc),a		;9b6f
	jp po,0e302h		;9b70
	ld (bc),a		;9b73
	rst 38h			;9b74
	inc b			;9b75
	rst 38h			;9b76
	inc b			;9b77
	rst 38h			;9b78
	inc b			;9b79
	rst 38h			;9b7a
	inc b			;9b7b
	rst 38h			;9b7c
	inc b			;9b7d
	rst 38h			;9b7e
	inc b			;9b7f
	rst 38h			;9b80
	inc b			;9b81
	adc a,001h		;9b82
	rst 8			;9b84
	ld bc,001ceh		;9b85
	rst 8			;9b88
	ld bc,001ceh		;9b89
	rst 8			;9b8c
	ld bc,001ceh		;9b8d
	rst 8			;9b90
	ld bc,001d4h		;9b91
	push de			;9b94
	ld bc,001d6h		;9b95
	rst 10h			;9b98
	ld bc,001ceh		;9b99
	rst 8			;9b9c
	ld bc,001ceh		;9b9d
	rst 8			;9ba0
	ld bc,001ceh		;9ba1
	rst 8			;9ba4
	ld bc,001ceh		;9ba5
	rst 8			;9ba8
	ld bc,002e4h		;9ba9
	push hl			;9bac
	ld (bc),a		;9bad
	and 002h		;9bae
	rst 20h			;9bb0
	ld (bc),a		;9bb1
	ret pe			;9bb2
	ld (bc),a		;9bb3
	cp 002h			;9bb4
	rst 38h			;9bb6
	ld (bc),a		;9bb7
	nop			;9bb8
	inc bc			;9bb9
	scf			;9bba
	ld (bc),a		;9bbb
	jr c,l9bc0h		;9bbc
	rst 38h			;9bbe
	inc b			;9bbf
l9bc0h:
	rst 38h			;9bc0
	inc b			;9bc1
	ret nc			;9bc2
	ld bc,001d0h		;9bc3
	ret nc			;9bc6
	ld bc,001d0h		;9bc7
	ret nc			;9bca
	ld bc,001d0h		;9bcb
	ret nc			;9bce
	ld bc,001d0h		;9bcf
	call nc,0d501h		;9bd2
	ld bc,001d6h		;9bd5
	rst 10h			;9bd8
	ld bc,001d0h		;9bd9
	ret nc			;9bdc
	ld bc,001d0h		;9bdd
l9be0h:
	ret nc			;9be0
	ld bc,001d0h		;9be1
	ret nc			;9be4
	ld bc,001d0h		;9be5
	ret nc			;9be8
	ld bc,0030fh		;9be9
	rrca			;9bec
	inc bc			;9bed
	jp (hl)			;9bee
	ld (bc),a		;9bef
	jp pe,00f02h		;9bf0
	inc bc			;9bf3
	ld bc,00203h		;9bf4
	inc bc			;9bf7
	inc bc			;9bf8
	inc bc			;9bf9
	add hl,sp		;9bfa
	ld (bc),a		;9bfb
	ld a,(03b02h)		;9bfc
	ld (bc),a		;9bff
	rst 38h			;9c00
	inc b			;9c01
	pop de			;9c02
	ld bc,001d2h		;9c03
	pop de			;9c06
	ld bc,001d2h		;9c07
	pop de			;9c0a
	ld bc,001d2h		;9c0b
	pop de			;9c0e
	ld bc,001d2h		;9c0f
	call nc,0d501h		;9c12
	ld bc,001d6h		;9c15
	rst 10h			;9c18
	ld bc,001d1h		;9c19
	jp nc,0d101h		;9c1c
	ld bc,001d2h		;9c1f
	pop de			;9c22
	ld bc,001d2h		;9c23
	pop de			;9c26
	ld bc,001d2h		;9c27
	ex de,hl		;9c2a
	ld (bc),a		;9c2b
	call pe,0ed02h		;9c2c
	ld (bc),a		;9c2f
	xor 002h		;9c30
	rst 28h			;9c32
	ld (bc),a		;9c33
	ret p			;9c34
	ld (bc),a		;9c35
	pop af			;9c36
	ld (bc),a		;9c37
	jp p,00f02h		;9c38
	inc bc			;9c3b
	inc a			;9c3c
	ld (bc),a		;9c3d
	dec a			;9c3e
	ld (bc),a		;9c3f
	rst 38h			;9c40
	inc b			;9c41
	call z,0cd01h		;9c42
	ld bc,001cch		;9c45
	call 0cc01h		;9c48
	ld bc,001cdh		;9c4b
	call z,0cd01h		;9c4e
	ld bc,001d4h		;9c51
	push de			;9c54
	ld bc,001d6h		;9c55
	rst 10h			;9c58
	ld bc,001cch		;9c59
	call 0cc01h		;9c5c
	ld bc,001cdh		;9c5f
	call z,0cd01h		;9c62
	ld bc,001cch		;9c65
	call 0f301h		;9c68
	ld (bc),a		;9c6b
	call p,0f502h		;9c6c
	ld (bc),a		;9c6f
	or 002h			;9c70
	rst 30h			;9c72
	ld (bc),a		;9c73
	ret m			;9c74
	ld (bc),a		;9c75
	ld sp,hl		;9c76
	ld (bc),a		;9c77
	jp m,03e02h		;9c78
	ld (bc),a		;9c7b
	ccf			;9c7c
	ld (bc),a		;9c7d
	ld b,b			;9c7e
	ld (bc),a		;9c7f
	rst 38h			;9c80
	inc b			;9c81
	adc a,001h		;9c82
	rst 8			;9c84
	ld bc,001ceh		;9c85
	rst 8			;9c88
	ld bc,001ceh		;9c89
	rst 8			;9c8c
	ld bc,001ceh		;9c8d
	rst 8			;9c90
	ld bc,001d4h		;9c91
	push de			;9c94
	ld bc,001d6h		;9c95
	rst 10h			;9c98
	ld bc,001ceh		;9c99
	rst 8			;9c9c
	ld bc,001ceh		;9c9d
	rst 8			;9ca0
	ld bc,001ceh		;9ca1
	rst 8			;9ca4
	ld bc,001ceh		;9ca5
	rst 8			;9ca8
	ld bc,0030fh		;9ca9
	rrca			;9cac
	inc bc			;9cad
	rrca			;9cae
	inc bc			;9caf
	rrca			;9cb0
	inc bc			;9cb1
	call m,0fb02h		;9cb2
	ld (bc),a		;9cb5
	defb 0fdh,002h,00fh ;illegal sequence	;9cb6
	inc bc			;9cb9
	ld b,c			;9cba
	ld (bc),a		;9cbb
	ld b,d			;9cbc
	ld (bc),a		;9cbd
	ld b,e			;9cbe
	ld (bc),a		;9cbf
	rst 38h			;9cc0
	inc b			;9cc1
	out (001h),a		;9cc2
	out (001h),a		;9cc4
	out (001h),a		;9cc6
	out (001h),a		;9cc8
	out (001h),a		;9cca
	out (001h),a		;9ccc
	out (001h),a		;9cce
	out (001h),a		;9cd0
	call nc,0d501h		;9cd2
	ld bc,001d6h		;9cd5
	rst 10h			;9cd8
	ld bc,001d3h		;9cd9
	out (001h),a		;9cdc
	out (001h),a		;9cde
	out (001h),a		;9ce0
	out (001h),a		;9ce2
	out (001h),a		;9ce4
	out (001h),a		;9ce6
	out (001h),a		;9ce8
	rst 38h			;9cea
	inc b			;9ceb
	rst 38h			;9cec
l9cedh:
	inc b			;9ced
	rst 38h			;9cee
	inc b			;9cef
	rst 38h			;9cf0
	inc b			;9cf1
	rst 38h			;9cf2
	inc b			;9cf3
	rst 38h			;9cf4
	inc b			;9cf5
	rst 38h			;9cf6
	inc b			;9cf7
	rst 38h			;9cf8
	inc b			;9cf9
	rst 38h			;9cfa
	inc b			;9cfb
	rst 38h			;9cfc
	inc b			;9cfd
	rst 38h			;9cfe
	inc b			;9cff
	rst 38h			;9d00
	inc b			;9d01
	rst 38h			;9d02
	inc b			;9d03
	rst 38h			;9d04
	inc b			;9d05
	rst 38h			;9d06
	inc b			;9d07
	rst 38h			;9d08
	inc b			;9d09
	rst 38h			;9d0a
	inc b			;9d0b
	rst 38h			;9d0c
	inc b			;9d0d
	rst 38h			;9d0e
	inc b			;9d0f
	rst 38h			;9d10
	inc b			;9d11
	rst 38h			;9d12
	inc b			;9d13
	rst 38h			;9d14
	inc b			;9d15
	rst 38h			;9d16
	inc b			;9d17
	rst 38h			;9d18
	inc b			;9d19
	rst 38h			;9d1a
	inc b			;9d1b
	rst 38h			;9d1c
	inc b			;9d1d
	rst 38h			;9d1e
	inc b			;9d1f
	rst 38h			;9d20
	inc b			;9d21
	rst 38h			;9d22
	inc b			;9d23
	rst 38h			;9d24
	inc b			;9d25
	rst 38h			;9d26
	inc b			;9d27
	rst 38h			;9d28
	inc b			;9d29
	di			;9d2a
	ld bc,001f4h		;9d2b
	push af			;9d2e
	ld bc,001f6h		;9d2f
	rst 30h			;9d32
	ld bc,001f8h		;9d33
	rst 38h			;9d36
	inc b			;9d37
	inc bc			;9d38
	ld (bc),a		;9d39
	inc b			;9d3a
	ld (bc),a		;9d3b
	rst 38h			;9d3c
	inc b			;9d3d
	dec b			;9d3e
	ld (bc),a		;9d3f
	rst 38h			;9d40
	inc b			;9d41
	rst 18h			;9d42
	nop			;9d43
	ret po			;9d44
	nop			;9d45
	pop hl			;9d46
	nop			;9d47
	jp po,0e300h		;9d48
	nop			;9d4b
	call po,0e500h		;9d4c
	nop			;9d4f
	and 000h		;9d50
	rst 20h			;9d52
	nop			;9d53
	ret pe			;9d54
	nop			;9d55
	jp (hl)			;9d56
	nop			;9d57
	and 000h		;9d58
	rst 20h			;9d5a
	nop			;9d5b
	jp pe,0eb00h		;9d5c
	nop			;9d5f
	jp (hl)			;9d60
	nop			;9d61
	call pe,0ed00h		;9d62
	nop			;9d65
	xor 000h		;9d66
	rst 28h			;9d68
	nop			;9d69
	ld sp,hl		;9d6a
	ld bc,001fah		;9d6b
	inc c			;9d6e
	ld (bc),a		;9d6f
	ei			;9d70
	ld bc,001fch		;9d71
	inc c			;9d74
	ld (bc),a		;9d75
	rst 38h			;9d76
	inc b			;9d77
	ld b,002h		;9d78
	rst 38h			;9d7a
	inc b			;9d7b
	rlca			;9d7c
	ld (bc),a		;9d7d
	ex af,af'		;9d7e
	ld (bc),a		;9d7f
l9d80h:
	rst 38h			;9d80
	inc b			;9d81
	ret p			;9d82
	nop			;9d83
	pop af			;9d84
	nop			;9d85
	jp p,0f300h		;9d86
	nop			;9d89
	call p,0f500h		;9d8a
	nop			;9d8d
	or 000h			;9d8e
	rst 30h			;9d90
	nop			;9d91
	ret m			;9d92
	nop			;9d93
	ld sp,hl		;9d94
	nop			;9d95
	jp m,0fb00h		;9d96
	nop			;9d99
	call m,0fd00h		;9d9a
	nop			;9d9d
	cp 000h			;9d9e
	rst 38h			;9da0
	nop			;9da1
	nop			;9da2
	ld bc,00101h		;9da3
	ld (bc),a		;9da6
	ld bc,00103h		;9da7
	defb 0fdh,001h,0feh ;illegal sequence	;9daa
	ld bc,001ffh		;9dad
	nop			;9db0
	ld (bc),a		;9db1
	rst 38h			;9db2
	inc b			;9db3
	rst 38h			;9db4
	ld bc,004ffh		;9db5
	add hl,bc		;9db8
	ld (bc),a		;9db9
	ld a,(bc)		;9dba
	ld (bc),a		;9dbb
	dec bc			;9dbc
	ld (bc),a		;9dbd
	rst 38h			;9dbe
	inc b			;9dbf
	rst 38h			;9dc0
	inc b			;9dc1
	inc b			;9dc2
	ld bc,00105h		;9dc3
	ld b,001h		;9dc6
	rlca			;9dc8
	ld bc,00108h		;9dc9
	add hl,bc		;9dcc
	ld bc,0010ah		;9dcd
	dec bc			;9dd0
	ld bc,0010ch		;9dd1
	dec c			;9dd4
	ld bc,0010eh		;9dd5
	rrca			;9dd8
	ld bc,00110h		;9dd9
	ld de,01201h		;9ddc
	ld bc,00113h		;9ddf
	inc d			;9de2
	ld bc,00115h		;9de3
	ld d,001h		;9de6
	rla			;9de8
	ld bc,00201h		;9de9
	ld (bc),a		;9dec
	ld (bc),a		;9ded
	rst 38h			;9dee
	inc b			;9def
	rst 38h			;9df0
	inc b			;9df1
	rst 38h			;9df2
	inc b			;9df3
	rst 38h			;9df4
	inc b			;9df5
	rst 38h			;9df6
	inc b			;9df7
	dec c			;9df8
	ld (bc),a		;9df9
	ld b,002h		;9dfa
	ld c,002h		;9dfc
	rrca			;9dfe
	ld (bc),a		;9dff
	rst 38h			;9e00
	inc b			;9e01
	jr l9e05h		;9e02
	add hl,de		;9e04
l9e05h:
	ld bc,0011ah		;9e05
	dec de			;9e08
	ld bc,0011ch		;9e09
	dec e			;9e0c
	ld bc,0011eh		;9e0d
	rra			;9e10
	ld bc,0011fh		;9e11
	jr nz,$+3		;9e14
	ld hl,02201h		;9e16
	ld bc,00123h		;9e19
	inc h			;9e1c
	ld bc,00125h		;9e1d
	ld h,001h		;9e20
	daa			;9e22
	ld bc,00128h		;9e23
	add hl,hl		;9e26
	ld bc,0012ah		;9e27
	rst 38h			;9e2a
	inc b			;9e2b
	rst 38h			;9e2c
	inc b			;9e2d
	rst 38h			;9e2e
	inc b			;9e2f
	rst 38h			;9e30
	inc b			;9e31
	rst 38h			;9e32
	inc b			;9e33
	rst 38h			;9e34
	inc b			;9e35
	rst 38h			;9e36
	inc b			;9e37
	rst 38h			;9e38
	inc b			;9e39
	rst 38h			;9e3a
	inc b			;9e3b
	djnz $+4		;9e3c
	ld de,0ff02h		;9e3e
	inc b			;9e41
	dec hl			;9e42
	ld bc,0012ch		;9e43
	dec l			;9e46
	ld bc,0012eh		;9e47
	cpl			;9e4a
	ld bc,00130h		;9e4b
	ld sp,03201h		;9e4e
	ld bc,00133h		;9e51
	inc (hl)		;9e54
	ld bc,00135h		;9e55
	ld (hl),001h		;9e58
	scf			;9e5a
	ld bc,00138h		;9e5b
	add hl,sp		;9e5e
	ld bc,0013ah		;9e5f
	dec sp			;9e62
	ld bc,0013ch		;9e63
	dec a			;9e66
	ld bc,0013eh		;9e67
	rst 38h			;9e6a
	inc b			;9e6b
	rst 38h			;9e6c
	inc b			;9e6d
	rst 38h			;9e6e
	inc b			;9e6f
	rst 38h			;9e70
	inc b			;9e71
	rst 38h			;9e72
	inc b			;9e73
	rst 38h			;9e74
	inc b			;9e75
	rst 38h			;9e76
	inc b			;9e77
	rst 38h			;9e78
	inc b			;9e79
	rst 38h			;9e7a
	inc b			;9e7b
	rst 38h			;9e7c
	inc b			;9e7d
	rst 38h			;9e7e
	inc b			;9e7f
	rst 38h			;9e80
	inc b			;9e81
	ccf			;9e82
	ld bc,00140h		;9e83
	ld b,c			;9e86
	ld bc,00142h		;9e87
	ld b,e			;9e8a
	ld bc,00144h		;9e8b
	ld b,l			;9e8e
	ld bc,00146h		;9e8f
	ld b,a			;9e92
	ld bc,00148h		;9e93
	ld c,c			;9e96
	ld bc,0014ah		;9e97
	ld c,e			;9e9a
	ld bc,0014ch		;9e9b
	ld c,l			;9e9e
	ld bc,0014eh		;9e9f
	ld c,a			;9ea2
	ld bc,00150h		;9ea3
	ld d,b			;9ea6
	ld bc,00149h		;9ea7
	rst 38h			;9eaa
	inc b			;9eab
	rst 38h			;9eac
	inc b			;9ead
	rst 38h			;9eae
	inc b			;9eaf
	rst 38h			;9eb0
	inc b			;9eb1
	rst 38h			;9eb2
	inc b			;9eb3
	rst 38h			;9eb4
	inc b			;9eb5
	rst 38h			;9eb6
	inc b			;9eb7
	rst 38h			;9eb8
	inc b			;9eb9
	rst 38h			;9eba
	inc b			;9ebb
	rst 38h			;9ebc
	inc b			;9ebd
	rst 38h			;9ebe
	inc b			;9ebf
	rst 38h			;9ec0
	inc b			;9ec1
	ld d,d			;9ec2
	ld bc,00153h		;9ec3
	ld d,h			;9ec6
	ld bc,00155h		;9ec7
	ld d,(hl)		;9eca
	ld bc,00157h		;9ecb
	ld e,b			;9ece
	ld bc,00159h		;9ecf
	ld e,d			;9ed2
	ld bc,0015bh		;9ed3
	ld e,e			;9ed6
	ld bc,0015bh		;9ed7
	ld e,h			;9eda
	ld bc,0015dh		;9edb
	ld e,(hl)		;9ede
	ld bc,0015fh		;9edf
	ld h,b			;9ee2
	ld bc,00161h		;9ee3
	ld e,e			;9ee6
	ld bc,0015bh		;9ee7
	rst 38h			;9eea
	inc b			;9eeb
	rst 38h			;9eec
	inc b			;9eed
	rst 38h			;9eee
	inc b			;9eef
	rst 38h			;9ef0
	inc b			;9ef1
	rst 38h			;9ef2
	inc b			;9ef3
	rst 38h			;9ef4
	inc b			;9ef5
	rst 38h			;9ef6
	inc b			;9ef7
	rst 38h			;9ef8
	inc b			;9ef9
	rst 38h			;9efa
	inc b			;9efb
	rst 38h			;9efc
	inc b			;9efd
	rst 38h			;9efe
	inc b			;9eff
	rst 38h			;9f00
	inc b			;9f01
	ld h,d			;9f02
	ld bc,0015bh		;9f03
	ld h,e			;9f06
	ld bc,00164h		;9f07
	ld h,l			;9f0a
	ld bc,00166h		;9f0b
	ld h,a			;9f0e
	ld bc,00168h		;9f0f
	ld l,c			;9f12
	ld bc,0016ah		;9f13
	ld l,e			;9f16
	ld bc,0016ch		;9f17
	ld l,l			;9f1a
	ld bc,0016eh		;9f1b
	ld l,a			;9f1e
	ld bc,00170h		;9f1f
	ld (hl),c		;9f22
	ld bc,00172h		;9f23
	ld (hl),e		;9f26
	ld bc,00174h		;9f27
	rst 38h			;9f2a
	inc b			;9f2b
	rst 38h			;9f2c
	inc b			;9f2d
	rst 38h			;9f2e
	inc b			;9f2f
	rst 38h			;9f30
	inc b			;9f31
	rst 38h			;9f32
	inc b			;9f33
	rst 38h			;9f34
	inc b			;9f35
	rst 38h			;9f36
	inc b			;9f37
	rst 38h			;9f38
	inc b			;9f39
	rst 38h			;9f3a
	inc b			;9f3b
	rst 38h			;9f3c
	inc b			;9f3d
	rst 38h			;9f3e
	inc b			;9f3f
	rst 38h			;9f40
	inc b			;9f41
	ld (hl),l		;9f42
	ld bc,00176h		;9f43
	ld (hl),a		;9f46
	ld bc,00178h		;9f47
	ld a,c			;9f4a
	ld bc,0017ah		;9f4b
	ld a,e			;9f4e
	ld bc,0017ch		;9f4f
	ld a,l			;9f52
	ld bc,0017eh		;9f53
	ld a,a			;9f56
	ld bc,00180h		;9f57
	add a,c			;9f5a
	ld bc,00182h		;9f5b
	add a,e			;9f5e
	ld bc,00179h		;9f5f
	add a,h			;9f62
	ld bc,00185h		;9f63
	add a,(hl)		;9f66
	ld bc,00187h		;9f67
	rst 38h			;9f6a
	inc b			;9f6b
	rst 38h			;9f6c
	inc b			;9f6d
	rst 38h			;9f6e
	inc b			;9f6f
	rst 38h			;9f70
	inc b			;9f71
	rst 38h			;9f72
	inc b			;9f73
	rst 38h			;9f74
	inc b			;9f75
	rst 38h			;9f76
	inc b			;9f77
	rst 38h			;9f78
	inc b			;9f79
	rst 38h			;9f7a
	inc b			;9f7b
	rst 38h			;9f7c
	inc b			;9f7d
	rst 38h			;9f7e
	inc b			;9f7f
	rst 38h			;9f80
	inc b			;9f81
	adc a,b			;9f82
	ld bc,00189h		;9f83
	adc a,e			;9f86
	ld bc,0018ah		;9f87
	adc a,h			;9f8a
	ld bc,0018dh		;9f8b
	adc a,(hl)		;9f8e
	ld bc,0018fh		;9f8f
	sub b			;9f92
	ld bc,00191h		;9f93
	sub d			;9f96
	ld bc,00193h		;9f97
	sub h			;9f9a
	ld bc,00195h		;9f9b
	sub (hl)		;9f9e
	ld bc,00197h		;9f9f
	sbc a,b			;9fa2
	ld bc,00199h		;9fa3
	adc a,a			;9fa6
	ld bc,0019ah		;9fa7
	rst 38h			;9faa
	inc b			;9fab
	rst 38h			;9fac
	inc b			;9fad
	rst 38h			;9fae
	inc b			;9faf
	rst 38h			;9fb0
	inc b			;9fb1
	rst 38h			;9fb2
	inc b			;9fb3
	rst 38h			;9fb4
	inc b			;9fb5
	rst 38h			;9fb6
	inc b			;9fb7
	rst 38h			;9fb8
	inc b			;9fb9
	rst 38h			;9fba
	inc b			;9fbb
	rst 38h			;9fbc
	inc b			;9fbd
	rst 38h			;9fbe
	inc b			;9fbf
	rst 38h			;9fc0
	inc b			;9fc1
	sbc a,e			;9fc2
	ld bc,0019ch		;9fc3
	sbc a,l			;9fc6
	ld bc,0019eh		;9fc7
	sbc a,a			;9fca
	ld bc,001a0h		;9fcb
	and c			;9fce
	ld bc,001a2h		;9fcf
	and e			;9fd2
	ld bc,001a4h		;9fd3
	and l			;9fd6
	ld bc,001a6h		;9fd7
	and a			;9fda
	ld bc,001a8h		;9fdb
	xor c			;9fde
	ld bc,001aah		;9fdf
	xor e			;9fe2
	ld bc,001ach		;9fe3
	xor l			;9fe6
	ld bc,001aeh		;9fe7
	rst 38h			;9fea
	inc b			;9feb
	rst 38h			;9fec
	inc b			;9fed
	rst 38h			;9fee
	inc b			;9fef
	rst 38h			;9ff0
	inc b			;9ff1
	rst 38h			;9ff2
	inc b			;9ff3
	rst 38h			;9ff4
	inc b			;9ff5
	rst 38h			;9ff6
	inc b			;9ff7
	rst 38h			;9ff8
	inc b			;9ff9
	rst 38h			;9ffa
	inc b			;9ffb
	rst 38h			;9ffc
	inc b			;9ffd
	rst 38h			;9ffe
	inc b			;9fff
