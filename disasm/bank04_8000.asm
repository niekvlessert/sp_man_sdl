; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank04_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank04.bin

	org 08000h

	jp 0625eh		;8000
	jp 06214h		;8003
	jp 0601eh		;8006
	jp 060b4h		;8009
	jp 06459h		;800c
	jp 0606ah		;800f
	jp 062cbh		;8012
	jp 078e1h		;8015
	jp 07de4h		;8018
	jp 07df1h		;801b
	call 060fah		;801e
	call 06056h		;8021
	call 06035h		;8024
	call 06048h		;8027
	call 06485h		;802a
	ld a,(0ce74h)		;802d
	or a			;8030
	ret z			;8031
	jp 0607dh		;8032
	ld hl,0ce4fh		;8035
	ld a,(hl)		;8038
	and a			;8039
	ret z			;803a
	ld b,002h		;803b
	cp b			;803d
	jr z,l8042h		;803e
	ld (hl),b		;8040
	ret			;8041
l8042h:
	ld a,001h		;8042
	ld (0ca0fh),a		;8044
	ret			;8047
	ld hl,0cb06h		;8048
	ld a,(hl)		;804b
	ld (hl),000h		;804c
	and 00fh		;804e
	cp 002h			;8050
	ret c			;8052
	ld (hl),080h		;8053
	ret			;8055
	ld bc,01440h		;8056
	ld ix,0ce80h		;8059
l805dh:
	push bc			;805d
	call 0606ah		;805e
	pop bc			;8061
	ld e,c			;8062
	ld d,000h		;8063
	add ix,de		;8065
	djnz l805dh		;8067
	ret			;8069
	call 06e2ch		;806a
	ret z			;806d
	jp c,07d9ch		;806e
	jp 064a2h		;8071
	ld a,(ix+034h)		;8074
	bit 6,a			;8077
	ret z			;8079
	jp 06e98h		;807a
	ld bc,01440h		;807d
	ld ix,0ce80h		;8080
l8084h:
	push bc			;8084
	ld a,(ix+000h)		;8085
	cp 01bh			;8088
	call z,0609ah		;808a
	pop bc			;808d
	ld e,c			;808e
	ld d,000h		;808f
	add ix,de		;8091
	djnz l8084h		;8093
	xor a			;8095
	ld (0ce74h),a		;8096
	ret			;8099
	ld d,(ix+00ah)		;809a
	ld e,(ix+008h)		;809d
	inc d			;80a0
	inc e			;80a1
	call 07b06h		;80a2
	ld a,(de)		;80a5
	sub 0cbh		;80a6
	cp 003h			;80a8
	ret nc			;80aa
	ld (ix+016h),000h	;80ab
	ld (ix+004h),001h	;80af
	ret			;80b3
	call 060beh		;80b4
	call 060d0h		;80b7
	call 060c7h		;80ba
	ret			;80bd
	ld hl,0ce40h		;80be
	ld bc,0053fh		;80c1
	jp 04648h		;80c4
	ld hl,0d440h		;80c7
	ld bc,0025fh		;80ca
	jp 04648h		;80cd
	ld a,014h		;80d0
	ld (0ce44h),a		;80d2
	ret			;80d5
	inc hl			;80d6
	inc hl			;80d7
	ld a,(hl)		;80d8
	dec a			;80d9
	ex de,hl		;80da
	cp 003h			;80db
	jp nc,04ae0h		;80dd
	call 0461ah		;80e0
	jp (hl)			;80e3
	ld h,b			;80e4
	jp (hl)			;80e5
	ld h,b			;80e6
	call p,0eb60h		;80e7
	ld a,(hl)		;80ea
	ld (0ce60h),a		;80eb
	inc hl			;80ee
	ld a,(hl)		;80ef
	ld (0ce61h),a		;80f0
	ret			;80f3
	ex de,hl		;80f4
	ld a,(hl)		;80f5
	ld (0ce60h),a		;80f6
	ret			;80f9
	ld a,(0ce60h)		;80fa
	and a			;80fd
	ret z			;80fe
	dec a			;80ff
	jr z,l8125h		;8100
	dec a			;8102
	jr z,l8105h		;8103
l8105h:
	ld bc,01440h		;8105
	ld ix,0ce80h		;8108
l810ch:
	push bc			;810c
	ld a,(ix+000h)		;810d
	cp 065h			;8110
	jr z,l8118h		;8112
	and a			;8114
	call nz,06e98h		;8115
l8118h:
	pop bc			;8118
	ld d,000h		;8119
	ld e,c			;811b
	add ix,de		;811c
	djnz l810ch		;811e
	xor a			;8120
l8121h:
	ld (0ce60h),a		;8121
	ret			;8124
l8125h:
	ld a,(0ce61h)		;8125
	and a			;8128
l8129h:
	jr z,l8173h		;8129
l812bh:
	ld l,a			;812b
	ld a,(0ca02h)		;812c
	and 001h		;812f
	ret nz			;8131
	dec l			;8132
	ld h,000h		;8133
	ld de,0617eh		;8135
	add hl,hl		;8138
	add hl,de		;8139
	ld e,(hl)		;813a
	inc hl			;813b
	ld d,(hl)		;813c
	ld a,(de)		;813d
	ld c,a			;813e
	inc de			;813f
	ld hl,0ce68h		;8140
	ld b,(hl)		;8143
	inc (hl)		;8144
	cp b			;8145
l8146h:
	jr nz,l814ch		;8146
l8148h:
	ld (hl),000h		;8148
l814ah:
	ld b,000h		;814a
l814ch:
	push de			;814c
	push bc			;814d
l814eh:
	ld l,b			;814e
	ld h,000h		;814f
	add hl,hl		;8151
	add hl,de		;8152
	ld d,(hl)		;8153
	inc hl			;8154
	ld b,(hl)		;8155
	ld a,b			;8156
	and 00fh		;8157
	ld e,a			;8159
	ld a,b			;815a
	rlca			;815b
	rlca			;815c
	rlca			;815d
	rlca			;815e
	and 00fh		;815f
	call 04776h		;8161
	pop bc			;8164
	pop de			;8165
	ld l,c			;8166
	ld h,000h		;8167
	add hl,hl		;8169
	add hl,de		;816a
	ld a,(hl)		;816b
	add a,001h		;816c
	ret c			;816e
	inc hl			;816f
	ex de,hl		;8170
	jr l814ch		;8171
l8173h:
	xor a			;8173
	ld (0ce60h),a		;8174
	ld (0ce61h),a		;8177
	ld (0ce68h),a		;817a
	ret			;817d
	adc a,b			;817e
	ld h,c			;817f
	sbc a,(hl)		;8180
	ld h,c			;8181
	pop bc			;8182
	ld h,c			;8183
	call c,0fe61h		;8184
	ld h,c			;8187
	ld a,(bc)		;8188
	nop			;8189
	sub b			;818a
	djnz $-110		;818b
	jr nz,$-110		;818d
	jr nc,l8121h		;818f
	ld b,b			;8191
	sub b			;8192
	ld d,b			;8193
	sub b			;8194
	ld b,b			;8195
	sub b			;8196
l8197h:
	jr nc,l8129h		;8197
	jr nz,l812bh		;8199
	djnz $-110		;819b
	rst 38h			;819d
	ex af,af'		;819e
	ld (hl),b		;819f
	ld b,h			;81a0
	ld h,b			;81a1
	ld b,e			;81a2
	ld d,b			;81a3
	ld b,d			;81a4
	ld b,b			;81a5
	ld b,c			;81a6
	jr nc,l81e9h		;81a7
	ld b,b			;81a9
l81aah:
	ld b,c			;81aa
	ld d,b			;81ab
	ld b,d			;81ac
	ld h,b			;81ad
	ld b,e			;81ae
	cp 070h			;81af
	sub b			;81b1
	ld d,b			;81b2
	sub b			;81b3
	jr nc,l8146h		;81b4
	jr nz,l8148h		;81b6
	djnz l814ah		;81b8
	jr nz,l814ch		;81ba
	jr nc,l814eh		;81bc
	ld d,b			;81be
	sub b			;81bf
	rst 38h			;81c0
	ld b,077h		;81c1
	or a			;81c3
	ld (hl),h		;81c4
	or l			;81c5
	ld (hl),d		;81c6
	or e			;81c7
	ld (hl),b		;81c8
	or c			;81c9
	ld (hl),d		;81ca
	or e			;81cb
	ld (hl),h		;81cc
	or l			;81cd
	cp 074h			;81ce
	push bc			;81d0
	ld (hl),b		;81d1
	pop bc			;81d2
	ld d,b			;81d3
	ret nz			;81d4
	jr nc,l8197h		;81d5
	ld d,b			;81d7
	ret nz			;81d8
	ld (hl),b		;81d9
	pop bc			;81da
	rst 38h			;81db
	djnz $+89		;81dc
	sub (hl)		;81de
	ld b,a			;81df
	sub l			;81e0
	scf			;81e1
	sub h			;81e2
	daa			;81e3
	sub e			;81e4
	ld d,092h		;81e5
	dec b			;81e7
	sub c			;81e8
l81e9h:
	inc b			;81e9
	sub b			;81ea
	inc bc			;81eb
	sub b			;81ec
	inc bc			;81ed
	sub b			;81ee
	inc b			;81ef
	sub b			;81f0
	dec b			;81f1
	sub c			;81f2
	ld d,092h		;81f3
	daa			;81f5
	sub e			;81f6
	scf			;81f7
	sub h			;81f8
	ld b,a			;81f9
	sub l			;81fa
	ld d,a			;81fb
	sub (hl)		;81fc
	rst 38h			;81fd
	ld a,(bc)		;81fe
	ld (hl),a		;81ff
	sub a			;8200
	ld h,a			;8201
	sub (hl)		;8202
	ld d,a			;8203
	sub l			;8204
	ld b,(hl)		;8205
	sub h			;8206
	dec (hl)		;8207
	sub e			;8208
	inc h			;8209
	sub d			;820a
	dec (hl)		;820b
	sub e			;820c
	ld b,(hl)		;820d
	sub h			;820e
	ld d,a			;820f
	sub l			;8210
	ld h,a			;8211
	sub (hl)		;8212
	rst 38h			;8213
	ld a,(0e900h)		;8214
	and a			;8217
	call z,06222h		;8218
	ld hl,0e900h		;821b
	ld (0ce42h),hl		;821e
	ret			;8221
	ld de,l93b8h		;8222
	ld hl,(0ca10h)		;8225
	ld h,000h		;8228
	add hl,hl		;822a
	add hl,de		;822b
	ld e,(hl)		;822c
	inc hl			;822d
	ld d,(hl)		;822e
	ld hl,0e900h		;822f
	ex de,hl		;8232
	ld bc,00600h		;8233
	ldir			;8236
	ret			;8238
	ld a,(0ce7fh)		;8239
	or a			;823c
	ret z			;823d
	call 069a3h		;823e
	ret c			;8241
	ld (ix+031h),081h	;8242
	ld (ix+032h),0eeh	;8246
	ld a,(0ee80h)		;824a
	ld (ix+030h),a		;824d
	ld a,(0ee81h)		;8250
	ld (ix+02fh),a		;8253
	call 06344h		;8256
	xor a			;8259
	ld (0ce7fh),a		;825a
	ret			;825d
l825eh:
	call 06239h		;825e
	ld hl,(0ce42h)		;8261
	ld a,(hl)		;8264
	and a			;8265
	ret z			;8266
	ld d,a			;8267
	inc hl			;8268
	ld e,(hl)		;8269
	inc hl			;826a
	ld b,(hl)		;826b
	and a			;826c
	jp p,06279h		;826d
	and 07fh		;8270
	ld d,a			;8272
	ld a,(0ca04h)		;8273
	and a			;8276
	jr z,l82abh		;8277
	push hl			;8279
	ld hl,(0ca34h)		;827a
	call 04650h		;827d
	pop hl			;8280
	ret c			;8281
	jr nz,l82abh		;8282
	ld a,b			;8284
	bit 7,a			;8285
	jr z,l8293h		;8287
	and 07fh		;8289
	ld b,a			;828b
	ld a,(0ca19h)		;828c
	cp 004h			;828f
	jr c,l82abh		;8291
l8293h:
	push hl			;8293
	call 062bbh		;8294
	jr z,l82aah		;8297
	ld a,(0ca33h)		;8299
	or a			;829c
	call nz,06306h		;829d
	jr c,l82aah		;82a0
	call 066d0h		;82a2
	jr c,l82aah		;82a5
	call 06344h		;82a7
l82aah:
	pop hl			;82aa
l82abh:
	inc hl			;82ab
	ld a,(hl)		;82ac
	and 07fh		;82ad
	dec a			;82af
	dec a			;82b0
	dec a			;82b1
	ld e,a			;82b2
	ld d,000h		;82b3
	add hl,de		;82b5
	ld (0ce42h),hl		;82b6
	jr l825eh		;82b9
	ld a,b			;82bb
	cp 05fh			;82bc
	ret nz			;82be
	call 060d6h		;82bf
	xor a			;82c2
	ret			;82c3
	ld hl,0e900h		;82c4
	ld (0ca34h),hl		;82c7
	ret			;82ca
	ld ix,0ce80h		;82cb
	ld b,014h		;82cf
l82d1h:
	ld a,(ix+000h)		;82d1
	and a			;82d4
	jr z,l82feh		;82d5
	ld a,(ix+015h)		;82d7
	bit 2,a			;82da
	jr z,l82feh		;82dc
	ld hl,(0ca12h)		;82de
	ld e,(ix+007h)		;82e1
	ld d,(ix+008h)		;82e4
	add hl,de		;82e7
	ld (ix+007h),l		;82e8
	ld (ix+008h),h		;82eb
	ld hl,(0ca14h)		;82ee
	ld e,(ix+009h)		;82f1
	ld d,(ix+00ah)		;82f4
	add hl,de		;82f7
	ld (ix+009h),l		;82f8
	ld (ix+00ah),h		;82fb
l82feh:
	ld de,00040h		;82fe
	add ix,de		;8301
	djnz l82d1h		;8303
	ret			;8305
	ld de,06315h		;8306
l8309h:
	ld a,(de)		;8309
	inc a			;830a
	jr z,l8313h		;830b
	dec a			;830d
	inc de			;830e
	cp b			;830f
	ret z			;8310
	jr l8309h		;8311
l8313h:
	scf			;8313
	ret			;8314
	inc de			;8315
	rla			;8316
	add hl,de		;8317
	rra			;8318
	jr nz,l833ch		;8319
	ld (02624h),hl		;831b
	daa			;831e
	jr z,l834ah		;831f
	ld hl,(02c2bh)		;8321
	dec l			;8324
	ld l,02fh		;8325
	jr nc,l835ah		;8327
	ld (03534h),a		;8329
	ld (hl),038h		;832c
	add hl,sp		;832e
	ld a,(04841h)		;832f
	ld c,c			;8332
	ld c,d			;8333
	ld c,e			;8334
	ld c,h			;8335
	ld c,l			;8336
	ld c,(hl)		;8337
	ld c,a			;8338
	ld d,b			;8339
	ld d,l			;833a
	ld d,(hl)		;833b
l833ch:
	ld e,d			;833c
	ld e,a			;833d
	ld h,l			;833e
	ld (hl),d		;833f
	ld (hl),e		;8340
	ld (hl),h		;8341
	ld (hl),l		;8342
	rst 38h			;8343
	ld a,(ix+000h)		;8344
	and a			;8347
	ret z			;8348
	ld b,a			;8349
l834ah:
	rlca			;834a
	ret c			;834b
	ld a,b			;834c
	dec a			;834d
	cp 07ch			;834e
	jp nc,04ae0h		;8350
	ld l,a			;8353
	ld h,000h		;8354
	add hl,hl		;8356
	ld de,06360h		;8357
l835ah:
	add hl,de		;835a
	ld e,(hl)		;835b
	inc hl			;835c
	ld d,(hl)		;835d
	ex de,hl		;835e
	jp (hl)			;835f
	inc b			;8360
l8361h:
	ld d,c			;8361
	inc b			;8362
	ld d,c			;8363
	call 00450h		;8364
	ld d,c			;8367
	inc b			;8368
	ld d,c			;8369
	inc b			;836a
	ld d,c			;836b
	inc b			;836c
	ld d,c			;836d
	inc b			;836e
	ld d,c			;836f
	inc b			;8370
	ld d,c			;8371
	inc b			;8372
	ld d,c			;8373
	inc b			;8374
	ld d,c			;8375
	inc b			;8376
	ld d,c			;8377
	dec c			;8378
	ld c,a			;8379
	inc e			;837a
	ld c,a			;837b
	nop			;837c
	ld c,a			;837d
	sub c			;837e
	ld d,d			;837f
	dec b			;8380
	ld d,e			;8381
	ld e,d			;8382
	ld d,e			;8383
	cp e			;8384
	ld d,e			;8385
	ld hl,(009aeh)		;8386
	add a,b			;8389
	jr c,l83e0h		;838a
	adc a,a			;838c
	add a,b			;838d
	ret			;838e
	ld d,h			;838f
	sub d			;8390
	ld d,l			;8391
	ld l,h			;8392
	ld d,a			;8393
	or l			;8394
	ld e,e			;8395
	ld b,c			;8396
	cp d			;8397
	xor e			;8398
	cp d			;8399
	ld (hl),l		;839a
	cp e			;839b
	ld d,e			;839c
	cp h			;839d
	cp 0bch			;839e
	ld a,(bc)		;83a0
	ld d,b			;83a1
	jr l8361h		;83a2
	ld a,d			;83a4
	cp l			;83a5
	and c			;83a6
	cp l			;83a7
	rst 20h			;83a8
	cp l			;83a9
	ld l,e			;83aa
	cp (hl)			;83ab
	ld d,b			;83ac
	add a,c			;83ad
	add hl,hl		;83ae
	add a,d			;83af
	ret nc			;83b0
	add a,d			;83b1
	scf			;83b2
	add a,e			;83b3
	ld b,a			;83b4
	add a,e			;83b5
	or l			;83b6
	add a,e			;83b7
	ld sp,01284h		;83b8
	add a,l			;83bb
	and h			;83bc
	add a,(hl)		;83bd
	ld e,a			;83be
	add a,a			;83bf
	rst 18h			;83c0
	ld e,h			;83c1
	cp e			;83c2
	add a,a			;83c3
	add hl,bc		;83c4
	adc a,b			;83c5
	rrca			;83c6
	adc a,c			;83c7
	rra			;83c8
	adc a,c			;83c9
	xor (hl)		;83ca
	adc a,d			;83cb
	ld h,c			;83cc
	ld d,c			;83cd
	ld sp,hl		;83ce
	adc a,e			;83cf
	ld a,(02b8ch)		;83d0
	adc a,l			;83d3
	sub c			;83d4
	and c			;83d5
	or a			;83d6
	and d			;83d7
	ld (hl),0a5h		;83d8
	ld h,a			;83da
	and (hl)		;83db
	ld d,e			;83dc
	xor b			;83dd
	adc a,e			;83de
	and l			;83df
l83e0h:
	dec sp			;83e0
	adc a,l			;83e1
	adc a,d			;83e2
	ld e,d			;83e3
	sub h			;83e4
	adc a,(hl)		;83e5
	and a			;83e6
	adc a,a			;83e7
	inc h			;83e8
	sub b			;83e9
	ccf			;83ea
	sub b			;83eb
	ld sp,0c95bh		;83ec
	sub c			;83ef
	push af			;83f0
	sub d			;83f1
	sbc a,d			;83f2
	sub e			;83f3
	halt			;83f4
	sub h			;83f5
	add a,b			;83f6
	sub h			;83f7
	jp m,04794h		;83f8
	sub (hl)		;83fb
	and b			;83fc
	sub (hl)		;83fd
	xor b			;83fe
	ld e,d			;83ff
	ld e,b			;8400
	ld h,h			;8401
	ld b,b			;8402
	sbc a,c			;8403
	ld c,h			;8404
	sbc a,c			;8405
	and e			;8406
	sbc a,c			;8407
	ld de,02959h		;8408
	cp a			;840b
	ld e,b			;840c
	ld h,h			;840d
	ld l,a			;840e
	or b			;840f
	ret z			;8410
	or (hl)			;8411
	dec bc			;8412
	sbc a,b			;8413
	ld e,b			;8414
	ld h,h			;8415
	jr z,$-68		;8416
	ld e,b			;8418
	ld h,h			;8419
	rst 20h			;841a
	or (hl)			;841b
	ld e,b			;841c
	ld h,h			;841d
	ld hl,(0fa5bh)		;841e
	sbc a,e			;8421
	ld b,b			;8422
	sbc a,d			;8423
	rst 38h			;8424
	sbc a,a			;8425
	nop			;8426
	and e			;8427
	adc a,d			;8428
	ld e,l			;8429
	ld (hl),d		;842a
	sbc a,h			;842b
	dec e			;842c
	sbc a,l			;842d
	ld e,051h		;842e
	add a,d			;8430
	sbc a,d			;8431
	ld e,b			;8432
	ld h,h			;8433
	ld e,b			;8434
	ld h,h			;8435
	ld e,b			;8436
	ld h,h			;8437
	ld e,b			;8438
	ld h,h			;8439
	ld c,l			;843a
	sbc a,a			;843b
	cp (hl)			;843c
	sbc a,a			;843d
	ld e,09dh		;843e
	pop bc			;8440
	or b			;8441
	pop af			;8442
	adc a,d			;8443
	ld h,c			;8444
	sub h			;8445
	ld a,d			;8446
	sbc a,(hl)		;8447
	ld a,e			;8448
	sbc a,(hl)		;8449
	ld hl,(0e3b4h)		;844a
	or b			;844d
	ld c,b			;844e
	xor d			;844f
	pop bc			;8450
	sub (hl)		;8451
	rrca			;8452
	and b			;8453
	ld c,e			;8454
	or l			;8455
	add a,d			;8456
	or a			;8457
	ret			;8458
	ld bc,(0f0f2h)		;8459
	push bc			;845d
	call 04b99h		;845e
	call 06472h		;8461
	pop bc			;8464
	ld (0f0f2h),bc		;8465
	ld a,c			;8469
	ld (09000h),a		;846a
	ld a,b			;846d
	ld (0b000h),a		;846e
	ret			;8471
	ld a,(ix+000h)		;8472
	cp 003h			;8475
	jp z,05100h		;8477
	cp 04dh			;847a
	jp z,l95ddh		;847c
	cp 027h			;847f
	jp z,l81aah		;8481
	ret			;8484
	ld bc,01220h		;8485
	ld ix,0d460h		;8488
l848ch:
	push bc			;848c
	ld a,(ix+000h)		;848d
	and a			;8490
	jr z,l8496h		;8491
	call 0649fh		;8493
l8496h:
	pop bc			;8496
	ld e,c			;8497
	ld d,000h		;8498
	add ix,de		;849a
	djnz l848ch		;849c
	ret			;849e
	jp 064a2h		;849f
	call 06a7fh		;84a2
	ld a,(ix+000h)		;84a5
	ld (0f0feh),a		;84a8
	dec a			;84ab
	cp 05eh			;84ac
	call nz,06c21h		;84ae
	call 064b9h		;84b1
	xor a			;84b4
	ld (0f0feh),a		;84b5
	ret			;84b8
	cp 07ch			;84b9
	jp nc,04ae0h		;84bb
	ld l,a			;84be
	ld h,000h		;84bf
	add hl,hl		;84c1
	add hl,hl		;84c2
	ld de,064d1h		;84c3
	add hl,de		;84c6
	ld e,(hl)		;84c7
	inc hl			;84c8
	ld d,(hl)		;84c9
	push de			;84ca
	inc hl			;84cb
	ld e,(hl)		;84cc
	inc hl			;84cd
	ld d,(hl)		;84ce
	ex de,hl		;84cf
	jp (hl)			;84d0
	push af			;84d1
	ld l,l			;84d2
	ld de,0f551h		;84d3
	ld l,l			;84d6
	ld de,0f551h		;84d7
	ld l,l			;84da
	ret nc			;84db
	ld d,b			;84dc
	push af			;84dd
	ld l,l			;84de
	ld de,0f551h		;84df
	ld l,l			;84e2
	ld de,0f551h		;84e3
	ld l,l			;84e6
	ld de,0f551h		;84e7
	ld l,l			;84ea
	ld de,0f551h		;84eb
	ld l,l			;84ee
	ld de,0f551h		;84ef
	ld l,l			;84f2
	ld de,0f551h		;84f3
	ld l,l			;84f6
	ld de,0f551h		;84f7
	ld l,l			;84fa
	ld de,0f551h		;84fb
	ld l,l			;84fe
	ld de,0f551h		;84ff
	ld l,l			;8502
	dec c			;8503
	ld c,a			;8504
	dec (hl)		;8505
	ld l,(hl)		;8506
	inc sp			;8507
	ld c,a			;8508
	push af			;8509
	ld l,l			;850a
	nop			;850b
	ld c,a			;850c
	push af			;850d
	ld l,l			;850e
	adc a,b			;850f
	ld d,d			;8510
	push af			;8511
	ld l,l			;8512
	call p,0f552h		;8513
	ld l,l			;8516
	ld c,(hl)		;8517
	ld d,e			;8518
	push af			;8519
	ld l,l			;851a
	call nz,04453h		;851b
	ld l,(hl)		;851e
	ld a,(bc)		;851f
	xor (hl)		;8520
	push af			;8521
	ld l,l			;8522
	nop			;8523
	add a,b			;8524
	push af			;8525
	ld l,l			;8526
	inc l			;8527
	ld d,h			;8528
	push af			;8529
	ld l,l			;852a
	ld a,a			;852b
	add a,b			;852c
	push af			;852d
l852eh:
	ld l,l			;852e
	pop bc			;852f
	ld d,h			;8530
	push af			;8531
	ld l,l			;8532
	ld a,h			;8533
	ld d,l			;8534
	push af			;8535
	ld l,l			;8536
	ld h,e			;8537
	ld d,a			;8538
	out (06dh),a		;8539
	jp nz,0e15bh		;853b
	ld l,l			;853e
	dec sp			;853f
	cp d			;8540
	push af			;8541
	ld l,l			;8542
	sbc a,a			;8543
	cp d			;8544
	push af			;8545
	ld l,l			;8546
	ld l,c			;8547
	cp e			;8548
	jp nz,03a66h		;8549
	cp h			;854c
	jp nz,0ec66h		;854d
	cp h			;8550
	pop hl			;8551
	ld l,l			;8552
	pop af			;8553
	ld c,a			;8554
	pop hl			;8555
	ld l,l			;8556
	rrca			;8557
	cp l			;8558
	dec (hl)		;8559
	ld l,(hl)		;855a
	ld (hl),h		;855b
	cp l			;855c
	jp nz,09b66h		;855d
	cp l			;8560
	push af			;8561
	ld l,l			;8562
	in a,(0bdh)		;8563
	pop hl			;8565
	ld l,l			;8566
	ld e,a			;8567
	cp (hl)			;8568
	pop hl			;8569
l856ah:
	ld l,l			;856a
	ld (hl),b		;856b
	add a,c			;856c
	dec (hl)		;856d
	ld l,(hl)		;856e
	dec e			;856f
	add a,d			;8570
	pop hl			;8571
	ld l,l			;8572
	jp z,00982h		;8573
	ld l,(hl)		;8576
	jr c,$-123		;8577
	dec (hl)		;8579
	ld l,(hl)		;857a
	ld b,c			;857b
	add a,e			;857c
	dec (hl)		;857d
	ld l,(hl)		;857e
	cp a			;857f
	add a,e			;8580
	add hl,bc		;8581
	ld l,(hl)		;8582
	ld c,l			;8583
	add a,h			;8584
	dec (hl)		;8585
	ld l,(hl)		;8586
	ld sp,hl		;8587
	add a,h			;8588
	push af			;8589
	ld l,l			;858a
	sub h			;858b
	add a,(hl)		;858c
	out (06dh),a		;858d
	sbc a,e			;858f
	add a,a			;8590
	push af			;8591
	ld l,l			;8592
	di			;8593
	ld e,h			;8594
	pop hl			;8595
l8596h:
	ld l,l			;8596
	pop bc			;8597
	add a,a			;8598
	push af			;8599
	ld l,l			;859a
	pop af			;859b
	add a,a			;859c
	push af			;859d
	ld l,l			;859e
	rrca			;859f
	adc a,c			;85a0
	push af			;85a1
	ld l,l			;85a2
	djnz l852eh		;85a3
	pop hl			;85a5
	ld l,l			;85a6
	xor (hl)		;85a7
	adc a,d			;85a8
	out (06dh),a		;85a9
	ld c,h			;85ab
	ld d,c			;85ac
	dec (hl)		;85ad
	ld l,(hl)		;85ae
	di			;85af
	adc a,e			;85b0
	dec (hl)		;85b1
	ld l,(hl)		;85b2
	inc (hl)		;85b3
	adc a,h			;85b4
	dec (hl)		;85b5
	ld l,(hl)		;85b6
	dec hl			;85b7
	adc a,l			;85b8
	push af			;85b9
	ld l,l			;85ba
	ld a,e			;85bb
	and c			;85bc
	ld b,h			;85bd
	ld l,(hl)		;85be
	or c			;85bf
	and d			;85c0
	ld b,h			;85c1
	ld l,(hl)		;85c2
	jr nc,l856ah		;85c3
	ld b,h			;85c5
	ld l,(hl)		;85c6
	ld b,a			;85c7
	and (hl)		;85c8
	push af			;85c9
	ld l,l			;85ca
	ld d,e			;85cb
	xor b			;85cc
	push af			;85cd
	ld l,l			;85ce
	ld a,a			;85cf
	and l			;85d0
	pop hl			;85d1
	ld l,l			;85d2
	inc l			;85d3
	adc a,l			;85d4
	push af			;85d5
	ld l,l			;85d6
	add a,h			;85d7
	ld e,d			;85d8
	out (06dh),a		;85d9
	add a,c			;85db
	adc a,(hl)		;85dc
	push af			;85dd
	ld l,l			;85de
	sub h			;85df
	adc a,a			;85e0
	push af			;85e1
	ld l,l			;85e2
	inc a			;85e3
	sub b			;85e4
	dec e			;85e5
	ld l,(hl)		;85e6
	ld d,h			;85e7
	sub b			;85e8
	jp nz,02b66h		;85e9
	ld e,e			;85ec
	jp nz,0ac66h		;85ed
	sub c			;85f0
	dec e			;85f1
	ld l,(hl)		;85f2
	call po,0f592h		;85f3
	ld l,l			;85f6
	ld a,e			;85f7
	sub e			;85f8
	push af			;85f9
	ld l,l			;85fa
l85fbh:
	halt			;85fb
	sub h			;85fc
	push af			;85fd
	ld l,l			;85fe
	ld (hl),a		;85ff
	sub h			;8600
	jp nz,00866h		;8601
	sub l			;8604
	push af			;8605
	ld l,l			;8606
	ld d,l			;8607
	sub (hl)		;8608
	pop hl			;8609
	ld l,l			;860a
	ld e,b			;860b
	sub (hl)		;860c
	dec (hl)		;860d
	ld l,(hl)		;860e
	and d			;860f
	ld e,d			;8610
	push af			;8611
	ld l,l			;8612
	dec a			;8613
	sbc a,b			;8614
	push af			;8615
	ld l,l			;8616
	ld b,b			;8617
l8618h:
	sbc a,c			;8618
	push af			;8619
	ld l,l			;861a
	ld b,b			;861b
	sbc a,c			;861c
	push af			;861d
	ld l,l			;861e
	sbc a,d			;861f
	sbc a,c			;8620
	dec (hl)		;8621
	ld l,(hl)		;8622
	ret p			;8623
	ld e,b			;8624
	jp nz,01466h		;8625
	cp a			;8628
	push af			;8629
	ld l,l			;862a
	pop bc			;862b
	ld h,(hl)		;862c
	push af			;862d
	ld l,l			;862e
	ld h,(hl)		;862f
	or b			;8630
	push af			;8631
	ld l,l			;8632
	ret z			;8633
	or (hl)			;8634
	dec (hl)		;8635
	ld l,(hl)		;8636
	dec b			;8637
	sbc a,b			;8638
	push af			;8639
	ld l,l			;863a
	pop bc			;863b
	ld h,(hl)		;863c
	push af			;863d
	ld l,l			;863e
	jr z,l85fbh		;863f
	push af			;8641
	ld l,l			;8642
	pop bc			;8643
	ld h,(hl)		;8644
	push af			;8645
	ld l,l			;8646
	sbc a,0b6h		;8647
	ld l,l			;8649
	ld l,(hl)		;864a
	add hl,sp		;864b
	sbc a,d			;864c
	ld l,(hl)		;864d
	ld l,(hl)		;864e
	add hl,de		;864f
	ld e,e			;8650
	ld l,(hl)		;8651
	ld l,(hl)		;8652
	dec sp			;8653
	sbc a,h			;8654
	push af			;8655
	ld l,l			;8656
	ld b,c			;8657
	sbc a,d			;8658
	ld l,(hl)		;8659
	ld l,(hl)		;865a
	rst 38h			;865b
	sbc a,a			;865c
	ld b,h			;865d
	ld l,(hl)		;865e
	ret c			;865f
	and d			;8660
	push af			;8661
	ld l,l			;8662
	and b			;8663
	ld e,l			;8664
	push af			;8665
	ld l,l			;8666
	ld l,h			;8667
	sbc a,h			;8668
	ld l,(hl)		;8669
	ld l,(hl)		;866a
	dec e			;866b
	sbc a,l			;866c
	push af			;866d
	ld l,l			;866e
	ld (de),a		;866f
	ld d,c			;8670
	dec (hl)		;8671
	ld l,(hl)		;8672
	ld a,h			;8673
	sbc a,d			;8674
	jp nz,0d766h		;8675
	sbc a,d			;8678
	dec (hl)		;8679
	ld l,(hl)		;867a
	jr c,l8618h		;867b
	push af			;867d
	ld l,l			;867e
	pop bc			;867f
	ld h,(hl)		;8680
	push af			;8681
	ld l,l			;8682
	pop bc			;8683
	ld h,(hl)		;8684
	push af			;8685
	ld l,l			;8686
	ld b,a			;8687
	sbc a,a			;8688
	push af			;8689
	ld l,l			;868a
	or b			;868b
	sbc a,a			;868c
	push af			;868d
	ld l,l			;868e
	ld h,b			;868f
	sbc a,l			;8690
	ld b,h			;8691
	ld l,(hl)		;8692
	pop bc			;8693
	or b			;8694
	push af			;8695
	ld l,l			;8696
	rst 10h			;8697
	adc a,d			;8698
	dec e			;8699
	ld l,(hl)		;869a
	ld (hl),e		;869b
	sub h			;869c
	push af			;869d
	ld l,l			;869e
	ld a,d			;869f
	sbc a,(hl)		;86a0
	add a,c			;86a1
	ld l,(hl)		;86a2
	ld a,h			;86a3
	sbc a,(hl)		;86a4
	dec (hl)		;86a5
	ld l,(hl)		;86a6
	inc hl			;86a7
	or h			;86a8
	ld b,h			;86a9
	ld l,(hl)		;86aa
	call z,0c2b0h		;86ab
	ld h,(hl)		;86ae
	add hl,de		;86af
	xor d			;86b0
	dec (hl)		;86b1
	ld l,(hl)		;86b2
	xor h			;86b3
	sub (hl)		;86b4
	ld b,h			;86b5
	ld l,(hl)		;86b6
	nop			;86b7
	and b			;86b8
	ld b,h			;86b9
	ld l,(hl)		;86ba
	inc de			;86bb
	or l			;86bc
	jp nz,06c66h		;86bd
l86c0h:
	or a			;86c0
	ret			;86c1
	jp 07747h		;86c2
	nop			;86c5
	rst 38h			;86c6
	rst 38h			;86c7
	rst 38h			;86c8
	rst 38h			;86c9
	rst 38h			;86ca
	rst 38h			;86cb
	rst 38h			;86cc
	rst 38h			;86cd
	rst 38h			;86ce
	rst 38h			;86cf
	call 0671ah		;86d0
	ret c			;86d3
	call 06747h		;86d4
	call 067b0h		;86d7
	jr l86f4h		;86da
	call 0671ah		;86dc
	ret c			;86df
	call 06747h		;86e0
	ld (ix+000h),d		;86e3
	ld (ix+02dh),c		;86e6
	jr l86f4h		;86e9
	call 0671ah		;86eb
	call 06747h		;86ee
	call 067ceh		;86f1
l86f4h:
	push ix			;86f4
	pop hl			;86f6
	call 04befh		;86f7
	ld a,(hl)		;86fa
	dec a			;86fb
	ld de,00013h		;86fc
	add hl,de		;86ff
	push hl			;8700
	ld de,l9100h		;8701
	call 04624h		;8704
	ld c,(hl)		;8707
	inc hl			;8708
	ld b,(hl)		;8709
	inc hl			;870a
	ld a,(hl)		;870b
	inc hl			;870c
	ld d,(hl)		;870d
	pop hl			;870e
	ld (hl),c		;870f
	inc l			;8710
	ld (hl),b		;8711
	inc l			;8712
	ld (hl),a		;8713
	inc l			;8714
	ld (hl),d		;8715
	inc l			;8716
	jp 04b99h		;8717
	ld a,(0ce44h)		;871a
	sub 001h		;871d
	jr c,l873eh		;871f
	ld (0ce44h),a		;8721
	exx			;8724
	ld hl,0ce80h		;8725
	ld de,00040h		;8728
	ld b,014h		;872b
	ld c,001h		;872d
l872fh:
	ld a,(hl)		;872f
	and a			;8730
	jr z,l8737h		;8731
	add hl,de		;8733
	inc c			;8734
	djnz l872fh		;8735
l8737h:
	ld a,c			;8737
	push hl			;8738
	exx			;8739
	pop ix			;873a
	ld c,a			;873c
	ret			;873d
l873eh:
	ld hl,(0ce50h)		;873e
	inc hl			;8741
	ld (0ce50h),hl		;8742
	scf			;8745
	ret			;8746
	exx			;8747
	push ix			;8748
	pop hl			;874a
	xor a			;874b
	ld b,040h		;874c
l874eh:
	ld (hl),a		;874e
	inc hl			;874f
	djnz l874eh		;8750
	exx			;8752
	ret			;8753
	call 06796h		;8754
	ld d,a			;8757
	and 07fh		;8758
	ld b,a			;875a
	ld a,(0c0d5h)		;875b
	dec a			;875e
	jr z,l877ch		;875f
	dec a			;8761
	jr z,l8780h		;8762
	dec a			;8764
	jr z,l8780h		;8765
	dec a			;8767
	jr z,l8785h		;8768
	dec a			;876a
	jr z,l878dh		;876b
	dec a			;876d
	jr z,l8773h		;876e
	dec a			;8770
	jr z,l8773h		;8771
l8773h:
	ld c,b			;8773
	ld a,000h		;8774
	sub (ix+013h)		;8776
	ld b,a			;8779
	jr l878fh		;877a
l877ch:
	ld c,020h		;877c
	jr l878fh		;877e
l8780h:
	ld c,b			;8780
	ld b,018h		;8781
	jr l878fh		;8783
l8785h:
	ld a,b			;8785
	sub 018h		;8786
	ld c,a			;8788
	ld b,018h		;8789
	jr l878fh		;878b
l878dh:
	ld c,000h		;878d
l878fh:
	ld (ix+008h),b		;878f
	ld (ix+00ah),c		;8792
	ret			;8795
	ld a,(ix+02eh)		;8796
	cp (ix+02fh)		;8799
	inc a			;879c
	ccf			;879d
	ret c			;879e
	ld (ix+02eh),a		;879f
	ld l,(ix+031h)		;87a2
	ld h,(ix+032h)		;87a5
	add a,l			;87a8
	ld l,a			;87a9
	jr nc,l87adh		;87aa
	inc h			;87ac
l87adh:
	ld a,(hl)		;87ad
	and a			;87ae
	ret			;87af
	ld a,(hl)		;87b0
	and 07fh		;87b1
	ld d,a			;87b3
	inc hl			;87b4
	ld a,(hl)		;87b5
	ld e,000h		;87b6
	rlca			;87b8
	jr nc,l87bdh		;87b9
	ld e,080h		;87bb
l87bdh:
	srl a			;87bd
	dec a			;87bf
	dec a			;87c0
	dec a			;87c1
	dec a			;87c2
	or e			;87c3
	call 067e8h		;87c4
	ld (ix+000h),d		;87c7
	ld (ix+02dh),c		;87ca
	ret			;87cd
	ld l,(iy+031h)		;87ce
	ld h,(iy+032h)		;87d1
	ld e,(iy+02fh)		;87d4
	ld d,000h		;87d7
	add hl,de		;87d9
	call 067e7h		;87da
	call 06796h		;87dd
	ld (ix+000h),a		;87e0
	ld (ix+02dh),c		;87e3
	ret			;87e6
	ld a,(hl)		;87e7
	ld b,a			;87e8
	rlca			;87e9
	ld a,b			;87ea
	jr nc,l87f4h		;87eb
	and 03fh		;87ed
	ld (ix+030h),a		;87ef
	inc hl			;87f2
	ld b,(hl)		;87f3
l87f4h:
	ld (ix+02fh),b		;87f4
	ld (ix+031h),l		;87f7
	ld (ix+032h),h		;87fa
	ret			;87fd
	ld a,001h		;87fe
	call 06871h		;8800
	ret c			;8803
	set 7,(ix+034h)		;8804
	call 04656h		;8808
	call 066ebh		;880b
	call 06938h		;880e
	jp 04656h		;8811
	ld a,001h		;8814
	call 06871h		;8816
	ret c			;8819
	set 7,(ix+034h)		;881a
	call 04656h		;881e
	call 066ebh		;8821
	call 0694dh		;8824
	jp 04656h		;8827
	ld b,(ix+02eh)		;882a
	push bc			;882d
	call 06836h		;882e
	pop bc			;8831
	ld (ix+02eh),b		;8832
	ret			;8835
	ld a,001h		;8836
	call 06871h		;8838
	ret c			;883b
	set 7,(ix+034h)		;883c
	call 04656h		;8840
	call 066ebh		;8843
	call 06964h		;8846
	jp 04656h		;8849
	ld d,a			;884c
	ld a,001h		;884d
	call 06871h		;884f
	ret c			;8852
	call 04656h		;8853
	call 066dch		;8856
	or a			;8859
	jp 04656h		;885a
	ld d,a			;885d
	ld a,001h		;885e
	call 06871h		;8860
	ret c			;8863
	call 04656h		;8864
	call 066dch		;8867
	call 0694dh		;886a
	or a			;886d
	jp 04656h		;886e
	ld hl,0ce44h		;8871
	ld b,(hl)		;8874
	ld c,a			;8875
	and 07fh		;8876
	cp (hl)			;8878
	ld b,a			;8879
	ccf			;887a
	ret nc			;887b
	bit 7,c			;887c
	jr nz,l8884h		;887e
	ld a,(hl)		;8880
	and a			;8881
	ld b,a			;8882
	ret nz			;8883
l8884h:
	scf			;8884
	ret			;8885
	res 7,(iy+000h)		;8886
	ret			;888a
	inc (ix+039h)		;888b
	ld c,(ix+039h)		;888e
	ld hl,0ce80h		;8891
	ld b,014h		;8894
l8896h:
	push hl			;8896
	ld de,00034h		;8897
	add hl,de		;889a
	ld e,(hl)		;889b
	ld a,(ix+02dh)		;889c
	cp e			;889f
	jr nz,l88a8h		;88a0
	ld de,00004h		;88a2
	add hl,de		;88a5
	ld a,(hl)		;88a6
	cp c			;88a7
l88a8h:
	pop hl			;88a8
	jr z,l88b5h		;88a9
	ld de,00040h		;88ab
	add hl,de		;88ae
	djnz l8896h		;88af
	scf			;88b1
	ld hl,0d700h		;88b2
l88b5h:
	push hl			;88b5
	pop iy			;88b6
	ret			;88b8
	ld a,(ix+035h)		;88b9
	and a			;88bc
	jr z,l88cfh		;88bd
	rla			;88bf
	ret c			;88c0
	rra			;88c1
	jr l88f8h		;88c2
	ld a,(ix+036h)		;88c4
	and a			;88c7
	jr z,l88cfh		;88c8
	rla			;88ca
	ret c			;88cb
	rra			;88cc
	jr l88f8h		;88cd
l88cfh:
	ld hl,0d700h		;88cf
	scf			;88d2
	ret			;88d3
	ld a,(ix+036h)		;88d4
	jr l88f8h		;88d7
	ld a,(iy+036h)		;88d9
	jr l88f8h		;88dc
	ld a,(ix+034h)		;88de
	ld c,a			;88e1
	and 03fh		;88e2
	call 068f8h		;88e4
	ld a,c			;88e7
	bit 6,a			;88e8
	jr nz,l88f2h		;88ea
	and 03fh		;88ec
	cp (iy+02dh)		;88ee
	ret			;88f1
l88f2h:
	ld iy,0d700h		;88f2
	scf			;88f6
	ret			;88f7
l88f8h:
	call 068ffh		;88f8
	push hl			;88fb
	pop iy			;88fc
	ret			;88fe
	dec a			;88ff
	rrca			;8900
	rrca			;8901
	ld b,a			;8902
	and 0f0h		;8903
	ld l,a			;8905
	ld a,b			;8906
	and 00fh		;8907
	ld h,a			;8909
	ld de,0ce80h		;890a
	add hl,de		;890d
	ret			;890e
	ld bc,00000h		;890f
	exx			;8912
	call 068deh		;8913
	exx			;8916
	ld a,(iy+008h)		;8917
	add a,c			;891a
	ld (ix+008h),a		;891b
	ld a,(iy+00ah)		;891e
	add a,b			;8921
	ld (ix+00ah),a		;8922
	ret			;8925
	ld bc,00000h		;8926
	ld a,(ix+008h)		;8929
	add a,c			;892c
	ld (iy+008h),a		;892d
	ld a,(ix+00ah)		;8930
	add a,b			;8933
	ld (iy+00ah),a		;8934
	ret			;8937
	call 0694dh		;8938
	ld a,(iy+02dh)		;893b
	ld b,(ix+02dh)		;893e
	cp b			;8941
	jr nc,l894bh		;8942
	ld (ix+03ah),c		;8944
	ld (ix+000h),05fh	;8947
l894bh:
	xor a			;894b
	ret			;894c
	inc (iy+037h)		;894d
	ld a,(iy+037h)		;8950
	ld (iy+03bh),a		;8953
	ld (ix+038h),a		;8956
	ld a,(ix+000h)		;8959
	ld c,a			;895c
	ld a,(iy+02dh)		;895d
	ld (ix+034h),a		;8960
	ret			;8963
	inc (iy+037h)		;8964
	ld a,(iy+037h)		;8967
	ld (ix+038h),a		;896a
	ld c,(ix+000h)		;896d
	ld a,(iy+02dh)		;8970
	ld (ix+034h),a		;8973
	ld a,(iy+033h)		;8976
	ld b,(ix+02dh)		;8979
	ld (iy+033h),b		;897c
	and a			;897f
	jr z,l8991h		;8980
	ld (ix+035h),a		;8982
	call 068ffh		;8985
	ld de,00036h		;8988
	add hl,de		;898b
	ld a,(ix+02dh)		;898c
	ld (hl),a		;898f
	ret			;8990
l8991h:
	ld a,(iy+02dh)		;8991
	ld (ix+035h),a		;8994
	ld a,(ix+02dh)		;8997
	ld (iy+036h),a		;899a
	ret			;899d
	xor a			;899e
	ld (ix+02eh),a		;899f
	ret			;89a2
	push ix			;89a3
	pop iy			;89a5
	push af			;89a7
	call 0671ah		;89a8
	jp c,0469fh		;89ab
	push bc			;89ae
	call 06747h		;89af
	pop bc			;89b2
	ld (ix+02dh),c		;89b3
	pop af			;89b6
	ld (ix+000h),a		;89b7
	call 066f4h		;89ba
	or a			;89bd
	ret			;89be
	call 069a3h		;89bf
	ret c			;89c2
	call 0694dh		;89c3
	inc (iy+039h)		;89c6
	set 7,(iy+034h)		;89c9
	res 7,(ix+000h)		;89cd
	res 7,(ix+03ah)		;89d1
	or a			;89d5
	ret			;89d6
	ld a,(0ca10h)		;89d7
	ld (0ce4bh),a		;89da
	inc (ix+03fh)		;89dd
	ld a,(ix+016h)		;89e0
	rrca			;89e3
	rrca			;89e4
	and 03fh		;89e5
	ld (0ce4ah),a		;89e7
	xor a			;89ea
	ld hl,0ce48h		;89eb
	ld (hl),a		;89ee
	inc hl			;89ef
	ld (hl),a		;89f0
	ret			;89f1
	call 069d7h		;89f2
	ld a,008h		;89f5
	ld (0ce4bh),a		;89f7
	ret			;89fa
	ld hl,0ce48h		;89fb
	ld a,001h		;89fe
	ld (hl),a		;8a00
	inc hl			;8a01
	ld (hl),a		;8a02
	call 04bb0h		;8a03
	call 06a3ch		;8a06
	call 04b99h		;8a09
	xor a			;8a0c
	ld de,00000h		;8a0d
	jp 04776h		;8a10
	call 04bb0h		;8a13
	call 06a22h		;8a16
	jp 04b99h		;8a19
	ld hl,0ce48h		;8a1c
	res 1,(hl)		;8a1f
	ret			;8a21
	ld hl,0ce48h		;8a22
	ld de,l86c0h		;8a25
	ld a,(hl)		;8a28
	inc hl			;8a29
	cp (hl)			;8a2a
	jr nz,l8a34h		;8a2b
	ld a,(0ca02h)		;8a2d
	and 003h		;8a30
	ret nz			;8a32
	ld a,(hl)		;8a33
l8a34h:
	ld (hl),a		;8a34
	rrca			;8a35
	rrca			;8a36
	jr c,l8a6ch		;8a37
	and a			;8a39
	jr z,l8a3fh		;8a3a
	ld de,086d2h		;8a3c
l8a3fh:
	call 06a4fh		;8a3f
	ld b,008h		;8a42
l8a44h:
	push bc			;8a44
	call 06a5ch		;8a45
	call 04776h		;8a48
	pop bc			;8a4b
	djnz l8a44h		;8a4c
	ret			;8a4e
	ld a,(0ce4bh)		;8a4f
	add a,a			;8a52
	ld l,a			;8a53
	ld h,000h		;8a54
	add hl,de		;8a56
	ld e,(hl)		;8a57
	inc hl			;8a58
	ld d,(hl)		;8a59
	ex de,hl		;8a5a
	ret			;8a5b
	ld d,(hl)		;8a5c
	inc hl			;8a5d
	ld b,(hl)		;8a5e
	inc hl			;8a5f
	ld a,b			;8a60
	and 00fh		;8a61
	ld e,a			;8a63
	ld a,b			;8a64
	rlca			;8a65
	rlca			;8a66
	rlca			;8a67
	rlca			;8a68
	and 00fh		;8a69
	ret			;8a6b
l8a6ch:
	call 06a4fh		;8a6c
	ld b,008h		;8a6f
l8a71h:
	push bc			;8a71
	call 06a5ch		;8a72
	ld de,06606h		;8a75
	call 04776h		;8a78
	pop bc			;8a7b
	djnz l8a71h		;8a7c
	ret			;8a7e
	push ix			;8a7f
	pop hl			;8a81
	ld de,00007h		;8a82
	add hl,de		;8a85
	ld d,h			;8a86
	ld e,l			;8a87
	ld a,004h		;8a88
	add a,e			;8a8a
	ld e,a			;8a8b
	call 06a8fh		;8a8c
l8a8fh:
	ld a,(de)		;8a8f
	add a,(hl)		;8a90
	ld (hl),a		;8a91
	inc l			;8a92
	inc e			;8a93
	ld a,(de)		;8a94
	adc a,(hl)		;8a95
	ld (hl),a		;8a96
	inc l			;8a97
	inc e			;8a98
	ret			;8a99
	push ix			;8a9a
	pop hl			;8a9c
	ld de,0000bh		;8a9d
	add hl,de		;8aa0
	ld e,l			;8aa1
	ld d,h			;8aa2
	ld a,004h		;8aa3
	add a,e			;8aa5
	ld e,a			;8aa6
	call 06a8fh		;8aa7
	jr l8a8fh		;8aaa
	ld a,(0ca10h)		;8aac
	ld h,000h		;8aaf
	ld l,a			;8ab1
	add hl,de		;8ab2
	ld a,(hl)		;8ab3
	ld (ix+005h),a		;8ab4
	ret			;8ab7
	ld a,(ix+005h)		;8ab8
	call 06acch		;8abb
	ld (ix+005h),a		;8abe
	ret			;8ac1
	ld a,(ix+006h)		;8ac2
	call 06acch		;8ac5
	ld (ix+006h),a		;8ac8
	ret			;8acb
	inc a			;8acc
	cp b			;8acd
	jr nz,l8ad1h		;8ace
	xor a			;8ad0
l8ad1h:
	ret			;8ad1
	ld a,(ix+017h)		;8ad2
	dec a			;8ad5
	ret z			;8ad6
	ld (ix+017h),a		;8ad7
	ret			;8ada
	ld (ix+017h),a		;8adb
	ret			;8ade
	ld a,(ix+018h)		;8adf
	dec a			;8ae2
	ret z			;8ae3
	ld (ix+018h),a		;8ae4
	ret			;8ae7
	ld (ix+018h),a		;8ae8
	ret			;8aeb
	ld a,(ix+018h)		;8aec
	bit 7,a			;8aef
	jr nz,l8af9h		;8af1
	ld c,000h		;8af3
	inc a			;8af5
	cp b			;8af6
	jr nz,l8b02h		;8af7
l8af9h:
	ld c,080h		;8af9
	and 07fh		;8afb
	dec a			;8afd
	jr nz,l8b02h		;8afe
	ld c,000h		;8b00
l8b02h:
	or c			;8b02
	ld (ix+018h),a		;8b03
	ret			;8b06
	ld l,(ix+00bh)		;8b07
	ld h,(ix+00ch)		;8b0a
	ld a,h			;8b0d
	rlca			;8b0e
	call c,04612h		;8b0f
	jp 04650h		;8b12
	ld l,(ix+00dh)		;8b15
	ld h,(ix+00eh)		;8b18
	ld a,h			;8b1b
	rlca			;8b1c
	call c,04612h		;8b1d
	jp 04650h		;8b20
	ld l,(ix+00fh)		;8b23
	ld h,(ix+010h)		;8b26
	call 04612h		;8b29
	ld (ix+00fh),l		;8b2c
	ld (ix+010h),h		;8b2f
	ret			;8b32
	ld l,(ix+011h)		;8b33
	ld h,(ix+012h)		;8b36
	call 04612h		;8b39
	ld (ix+011h),l		;8b3c
	ld (ix+012h),h		;8b3f
	ret			;8b42
	ld l,(ix+00bh)		;8b43
	ld h,(ix+00ch)		;8b46
	call 04612h		;8b49
	ld (ix+00bh),l		;8b4c
	ld (ix+00ch),h		;8b4f
	ret			;8b52
	ld l,(ix+00dh)		;8b53
	ld h,(ix+00eh)		;8b56
	call 04612h		;8b59
	ld (ix+00dh),l		;8b5c
	ld (ix+00eh),h		;8b5f
	ret			;8b62
	ld (0ca26h),a		;8b63
	call 07270h		;8b66
	jp 07240h		;8b69
	call 06b85h		;8b6c
	call 07240h		;8b6f
	ld (ix+00bh),l		;8b72
	ld (ix+00ch),h		;8b75
	ld (ix+00dh),e		;8b78
	ld (ix+00eh),d		;8b7b
	ret			;8b7e
	call 06b85h		;8b7f
	jp 07240h		;8b82
	ld (0ca26h),a		;8b85
	call 071d6h		;8b88
	jp 07270h		;8b8b
	call 071b8h		;8b8e
	jp 07270h		;8b91
	ld c,000h		;8b94
	ld a,(0ca4ah)		;8b96
	sub (ix+00ah)		;8b99
	jr nc,l8ba2h		;8b9c
	neg			;8b9e
	or 080h			;8ba0
l8ba2h:
	ld d,a			;8ba2
	ld a,(0ca48h)		;8ba3
	sub (ix+008h)		;8ba6
	jr nc,l8bafh		;8ba9
	neg			;8bab
	or 080h			;8bad
l8bafh:
	ld e,a			;8baf
	ld a,d			;8bb0
	rlca			;8bb1
	jr nc,l8bbeh		;8bb2
	ld c,000h		;8bb4
	ld a,e			;8bb6
	rlca			;8bb7
	jr c,l8bc6h		;8bb8
	ld c,006h		;8bba
	jr l8bc6h		;8bbc
l8bbeh:
	ld c,002h		;8bbe
	ld a,e			;8bc0
	rlca			;8bc1
	jr c,l8bc6h		;8bc2
	ld c,004h		;8bc4
l8bc6h:
	ld b,000h		;8bc6
	ld a,d			;8bc8
	rlca			;8bc9
	jr nc,l8bceh		;8bca
	ld b,080h		;8bcc
l8bceh:
	srl a			;8bce
	ld d,a			;8bd0
	ld a,e			;8bd1
	and 080h		;8bd2
	xor b			;8bd4
	ld b,a			;8bd5
	ld a,e			;8bd6
	and 07fh		;8bd7
	sub d			;8bd9
	jr c,l8be1h		;8bda
	ld a,b			;8bdc
	and a			;8bdd
	ret nz			;8bde
	inc c			;8bdf
	ret			;8be0
l8be1h:
	ld a,b			;8be1
	and a			;8be2
	ret z			;8be3
	inc c			;8be4
	ret			;8be5
	call 06bfah		;8be6
	jr l8bf0h		;8be9
	call 06bfdh		;8beb
	jr l8bf3h		;8bee
l8bf0h:
	ld hl,00000h		;8bf0
l8bf3h:
	ld (ix+00bh),l		;8bf3
	ld (ix+00ch),h		;8bf6
	ret			;8bf9
	ld de,00000h		;8bfa
	ld (ix+00dh),e		;8bfd
	ld (ix+00eh),d		;8c00
	ret			;8c03
	call 06c16h		;8c04
	jr l8c0ch		;8c07
	ld hl,00000h		;8c09
l8c0ch:
	ld (ix+00fh),l		;8c0c
	ld (ix+010h),h		;8c0f
	ret			;8c12
	ld de,00000h		;8c13
	ld (ix+011h),e		;8c16
	ld (ix+012h),d		;8c19
	ret			;8c1c
	inc (ix+001h)		;8c1d
	ret			;8c20
	bit 2,(ix+015h)		;8c21
	ret z			;8c25
	call 06c3ah		;8c26
	ld hl,(0ca12h)		;8c29
	ld e,(ix+007h)		;8c2c
	ld d,(ix+008h)		;8c2f
	add hl,de		;8c32
	ld (ix+007h),l		;8c33
	ld (ix+008h),h		;8c36
	ret			;8c39
	ld hl,(0ca14h)		;8c3a
	ld e,(ix+009h)		;8c3d
	ld d,(ix+00ah)		;8c40
	add hl,de		;8c43
	ld (ix+009h),l		;8c44
	ld (ix+00ah),h		;8c47
	ret			;8c4a
	push ix			;8c4b
	push iy			;8c4d
	call 04c2ah		;8c4f
	add hl,bc		;8c52
	ld a,(bc)		;8c53
	dec bc			;8c54
	add hl,bc		;8c55
	ld l,l			;8c56
	pop iy			;8c57
	pop ix			;8c59
	ret			;8c5b
	push ix			;8c5c
	push iy			;8c5e
	call 04c2ah		;8c60
	add hl,bc		;8c63
	ld a,(bc)		;8c64
	dec bc			;8c65
	inc c			;8c66
	ld l,l			;8c67
	pop iy			;8c68
	pop ix			;8c6a
	ret			;8c6c
	ld (0c0dch),hl		;8c6d
	ld (0c0deh),de		;8c70
	ret			;8c74
	add a,(ix+008h)		;8c75
	neg			;8c78
	add a,a			;8c7a
	add a,a			;8c7b
	add a,a			;8c7c
	and 0f8h		;8c7d
	ld d,a			;8c7f
	ld a,(ix+009h)		;8c80
	and 0e0h		;8c83
	neg			;8c85
	and 0e0h		;8c87
	ld (0ca1ch),a		;8c89
	rlca			;8c8c
	rlca			;8c8d
	rlca			;8c8e
	ld (0c0bbh),a		;8c8f
	ld a,(ix+007h)		;8c92
	and 0e0h		;8c95
	jr z,l8c9fh		;8c97
	ex af,af'		;8c99
	ld a,d			;8c9a
	sub 008h		;8c9b
	ld d,a			;8c9d
	ex af,af'		;8c9e
l8c9fh:
	neg			;8c9f
	and 0e0h		;8ca1
	ld (0ca1ah),a		;8ca3
	rlca			;8ca6
	rlca			;8ca7
	rlca			;8ca8
	or d			;8ca9
	ld (0c0d2h),a		;8caa
	ret			;8cad
	call 06cb5h		;8cae
	call 06a9ah		;8cb1
	ret			;8cb4
	push hl			;8cb5
	push de			;8cb6
	pop bc			;8cb7
	call 06ccdh		;8cb8
	pop bc			;8cbb
	ld h,(ix+00eh)		;8cbc
	ld l,(ix+00dh)		;8cbf
	call 06cdeh		;8cc2
	or a			;8cc5
	sbc hl,bc		;8cc6
	ret c			;8cc8
	call 06b33h		;8cc9
	ret			;8ccc
	ld h,(ix+00ch)		;8ccd
	ld l,(ix+00bh)		;8cd0
	call 06cdeh		;8cd3
	or a			;8cd6
	sbc hl,bc		;8cd7
	ret c			;8cd9
	call 06b23h		;8cda
	ret			;8cdd
	bit 7,h			;8cde
	ret z			;8ce0
	ld a,h			;8ce1
	cpl			;8ce2
	ld h,a			;8ce3
	ld a,l			;8ce4
	cpl			;8ce5
	ld l,a			;8ce6
	inc hl			;8ce7
	ret			;8ce8
	ld (ix+02ah),0ffh	;8ce9
	ret			;8ced
	push af			;8cee
	call 06d2ch		;8cef
	pop af			;8cf2
	jr nz,l8d0eh		;8cf3
	ld a,(ix+00ah)		;8cf5
	ld (ix+028h),a		;8cf8
	ld a,(ix+009h)		;8cfb
	ld (ix+029h),a		;8cfe
	ld a,(ix+008h)		;8d01
	ld (ix+02ah),a		;8d04
	ld a,(ix+007h)		;8d07
	ld (ix+02bh),a		;8d0a
	ret			;8d0d
l8d0eh:
	ld a,(ix+02ah)		;8d0e
	inc a			;8d11
	ret z			;8d12
	ld a,(ix+028h)		;8d13
	ld (ix+00ah),a		;8d16
	ld a,(ix+029h)		;8d19
	ld (ix+009h),a		;8d1c
	ld a,(ix+02ah)		;8d1f
	ld (ix+008h),a		;8d22
	ld a,(ix+02bh)		;8d25
	ld (ix+007h),a		;8d28
	ret			;8d2b
	ld de,(0ca14h)		;8d2c
	ld h,(ix+028h)		;8d30
	ld l,(ix+029h)		;8d33
	add hl,de		;8d36
	ld (ix+028h),h		;8d37
	ld (ix+029h),l		;8d3a
	ld de,(0ca12h)		;8d3d
	ld h,(ix+02ah)		;8d41
	ld l,(ix+02bh)		;8d44
	add hl,de		;8d47
	ld (ix+02ah),h		;8d48
	ld (ix+02bh),l		;8d4b
	ret			;8d4e
	push hl			;8d4f
	ld b,d			;8d50
	ld c,e			;8d51
	ld h,(ix+00eh)		;8d52
	ld l,(ix+00dh)		;8d55
	ld d,h			;8d58
	ld e,l			;8d59
	add hl,hl		;8d5a
	add hl,hl		;8d5b
	add hl,hl		;8d5c
	or a			;8d5d
	sbc hl,de		;8d5e
	add hl,bc		;8d60
	sra h			;8d61
	rr l			;8d63
	sra h			;8d65
	rr l			;8d67
	sra h			;8d69
	rr l			;8d6b
	ld (ix+00eh),h		;8d6d
	ld (ix+00dh),l		;8d70
	pop bc			;8d73
	ld h,(ix+00ch)		;8d74
	ld l,(ix+00bh)		;8d77
	ld d,h			;8d7a
	ld e,l			;8d7b
	add hl,hl		;8d7c
	add hl,hl		;8d7d
	add hl,hl		;8d7e
	or a			;8d7f
	sbc hl,de		;8d80
	add hl,bc		;8d82
	sra h			;8d83
	rr l			;8d85
	sra h			;8d87
	rr l			;8d89
	sra h			;8d8b
	rr l			;8d8d
	ld (ix+00ch),h		;8d8f
	ld (ix+00bh),l		;8d92
	ret			;8d95
	push hl			;8d96
	ld b,d			;8d97
	ld c,e			;8d98
	ld h,(ix+00eh)		;8d99
	ld l,(ix+00dh)		;8d9c
	ld d,h			;8d9f
	ld e,l			;8da0
	add hl,hl		;8da1
	add hl,hl		;8da2
	or a			;8da3
	sbc hl,de		;8da4
	add hl,bc		;8da6
	sra h			;8da7
	rr l			;8da9
	sra h			;8dab
	rr l			;8dad
	ld (ix+00eh),h		;8daf
	ld (ix+00dh),l		;8db2
	pop bc			;8db5
	ld h,(ix+00ch)		;8db6
	ld l,(ix+00bh)		;8db9
	ld d,h			;8dbc
	ld e,l			;8dbd
	add hl,hl		;8dbe
	add hl,hl		;8dbf
	or a			;8dc0
	sbc hl,de		;8dc1
	add hl,bc		;8dc3
	sra h			;8dc4
	rr l			;8dc6
	sra h			;8dc8
	rr l			;8dca
	ld (ix+00ch),h		;8dcc
	ld (ix+00bh),l		;8dcf
	ret			;8dd2
	call 06e2ch		;8dd3
	ret c			;8dd6
	ret z			;8dd7
	call 06edah		;8dd8
	call nc,06e98h		;8ddb
	or a			;8dde
	jr l8dech		;8ddf
	call 06e2ch		;8de1
	ret c			;8de4
	ret z			;8de5
	call 06f0dh		;8de6
	jp c,06e98h		;8de9
l8dech:
	call 07c44h		;8dec
	call c,07cc3h		;8def
	jp 07747h		;8df2
	call 06e2ch		;8df5
	ret c			;8df8
	ret z			;8df9
	call 06eedh		;8dfa
	jp c,06e98h		;8dfd
	call 07c44h		;8e00
	call c,07cc3h		;8e03
	jp 07747h		;8e06
	call 06e2ch		;8e09
	ret c			;8e0c
	ret z			;8e0d
	call 06effh		;8e0e
	jp c,06e98h		;8e11
	call 07c44h		;8e14
	call c,07cc3h		;8e17
	jp 07747h		;8e1a
	call 06f1fh		;8e1d
	jp c,06e98h		;8e20
	call 07c44h		;8e23
	call c,07cc3h		;8e26
	jp 07747h		;8e29
	ld a,(ix+000h)		;8e2c
	ld b,a			;8e2f
	and a			;8e30
	ret z			;8e31
	rla			;8e32
	ld a,b			;8e33
	ret			;8e34
	call 06f47h		;8e35
	jp c,06e98h		;8e38
	call 07c44h		;8e3b
	call c,07cc3h		;8e3e
	jp 07747h		;8e41
	call 07c63h		;8e44
	call c,06e50h		;8e47
	call c,07cc3h		;8e4a
	jp 07747h		;8e4d
	ex af,af'		;8e50
	ld a,001h		;8e51
	ld (0ce52h),a		;8e53
	ld (0ce76h),a		;8e56
	ld a,(0ce6ah)		;8e59
	add a,(ix+008h)		;8e5c
	ld (ix+008h),a		;8e5f
	ld a,(0ce69h)		;8e62
	add a,(ix+00ah)		;8e65
	ld (ix+00ah),a		;8e68
	ex af,af'		;8e6b
	ret			;8e6c
	ret			;8e6d
	call 06eedh		;8e6e
	jp c,06each		;8e71
	ld a,(ix+004h)		;8e74
	or a			;8e77
	jp nz,06each		;8e78
	call 07c27h		;8e7b
	jp 07747h		;8e7e
	call 06eedh		;8e81
	jp c,06each		;8e84
	ld a,(ix+004h)		;8e87
	or a			;8e8a
	jp nz,06each		;8e8b
	jp 07747h		;8e8e
	ld a,001h		;8e91
	ld (0ce4fh),a		;8e93
	ret			;8e96
	ret			;8e97
	call 07d3eh		;8e98
	ld hl,0ce44h		;8e9b
	inc (hl)		;8e9e
	call 06eb4h		;8e9f
	xor a			;8ea2
	ld (ix+034h),a		;8ea3
	ld (ix+02dh),a		;8ea6
	ld (ix+038h),a		;8ea9
	xor a			;8eac
	ld (ix+000h),a		;8ead
	ld (ix+015h),a		;8eb0
	ret			;8eb3
	xor a			;8eb4
	ld (ix+019h),a		;8eb5
	ld (ix+01ah),a		;8eb8
	ld (ix+01bh),a		;8ebb
	ld (ix+01ch),a		;8ebe
	ld (ix+01dh),a		;8ec1
	ld (ix+01eh),a		;8ec4
	ld (ix+01fh),a		;8ec7
	ret			;8eca
	ld a,(ix+015h)		;8ecb
	ld b,a			;8ece
	rlca			;8ecf
	rlca			;8ed0
	rlca			;8ed1
	and 003h		;8ed2
	or b			;8ed4
	ld (ix+015h),a		;8ed5
	and a			;8ed8
	ret			;8ed9
	call 06ecbh		;8eda
	ld a,(ix+008h)		;8edd
	add a,008h		;8ee0
	sub 028h		;8ee2
	ret nc			;8ee4
	ld a,(ix+00ah)		;8ee5
	add a,00ah		;8ee8
	sub 034h		;8eea
	ret			;8eec
	call 06ecbh		;8eed
	ret z			;8ef0
	ld de,018fch		;8ef1
	ld hl,022feh		;8ef4
	ld a,(ix+008h)		;8ef7
	ld b,(ix+00ah)		;8efa
	jr l8f2dh		;8efd
	ld de,01bf0h		;8eff
	ld hl,022feh		;8f02
	ld a,(ix+008h)		;8f05
	ld b,(ix+00ah)		;8f08
	jr l8f2dh		;8f0b
	call 06ecbh		;8f0d
	ret z			;8f10
	ld de,01afeh		;8f11
	ld hl,022feh		;8f14
	ld a,(ix+008h)		;8f17
	ld b,(ix+00ah)		;8f1a
	jr l8f2dh		;8f1d
	ld de,01af8h		;8f1f
	ld hl,022f0h		;8f22
	ld a,(ix+008h)		;8f25
	ld b,(ix+00ah)		;8f28
	jr l8f2dh		;8f2b
l8f2dh:
	bit 7,a			;8f2d
	jr nz,l8f36h		;8f2f
	cp d			;8f31
	jr nc,l8f45h		;8f32
	jr l8f39h		;8f34
l8f36h:
	cp e			;8f36
	jr c,l8f45h		;8f37
l8f39h:
	ld a,b			;8f39
	bit 7,a			;8f3a
	jr nz,l8f43h		;8f3c
	cp h			;8f3e
	jr nc,l8f45h		;8f3f
	or a			;8f41
	ret			;8f42
l8f43h:
	cp l			;8f43
	ret nc			;8f44
l8f45h:
	scf			;8f45
	ret			;8f46
	ld de,02cf6h		;8f47
	ld hl,02cf6h		;8f4a
	ld a,(ix+008h)		;8f4d
	ld b,(ix+00ah)		;8f50
	jr l8f2dh		;8f53
	push ix			;8f55
	push de			;8f57
	call 0671ah		;8f58
	jr c,l8f88h		;8f5b
	call 06747h		;8f5d
	ld (ix+000h),003h	;8f60
	call 066f4h		;8f64
	pop de			;8f67
	ld (ix+00ah),d		;8f68
	ld (ix+008h),e		;8f6b
	ld bc,(0ca31h)		;8f6e
	ld a,b			;8f72
	rrca			;8f73
	rrca			;8f74
	rrca			;8f75
	neg			;8f76
	ld (ix+009h),a		;8f78
	ld a,c			;8f7b
	rrca			;8f7c
	rrca			;8f7d
	rrca			;8f7e
	neg			;8f7f
	ld (ix+007h),a		;8f81
	or a			;8f84
	pop ix			;8f85
	ret			;8f87
l8f88h:
	pop bc			;8f88
	pop ix			;8f89
	ret			;8f8b
	ld ix,0cac0h		;8f8c
	ld a,(ix+000h)		;8f90
	or a			;8f93
	jr z,l8fa2h		;8f94
	ld ix,0cae0h		;8f96
	ld a,(ix+000h)		;8f9a
	or a			;8f9d
	jr z,l8fa2h		;8f9e
	scf			;8fa0
	ret			;8fa1
l8fa2h:
	push de			;8fa2
	push hl			;8fa3
	push ix			;8fa4
	pop hl			;8fa6
	ld bc,0001fh		;8fa7
	call 04648h		;8faa
	pop hl			;8fad
	pop de			;8fae
	ld (ix+015h),091h	;8faf
	ld (ix+013h),003h	;8fb3
	ld (ix+014h),003h	;8fb7
	ld (ix+000h),002h	;8fbb
	ld (ix+00ah),d		;8fbf
	ld (ix+009h),e		;8fc2
	ld (ix+008h),h		;8fc5
	ld (ix+007h),l		;8fc8
	or a			;8fcb
	ret			;8fcc
	call 07024h		;8fcd
	call 06fe1h		;8fd0
	ld (ix+003h),a		;8fd3
	ld hl,07049h		;8fd6
	call 04600h		;8fd9
	ld a,(hl)		;8fdc
	ld (ix+006h),a		;8fdd
	ret			;8fe0
	push af			;8fe1
	call 06ff7h		;8fe2
	or a			;8fe5
	jr nz,l8feah		;8fe6
	pop af			;8fe8
	ret			;8fe9
l8feah:
	dec a			;8fea
	jr nz,l8ff2h		;8feb
	ld a,00eh		;8fed
	jp 0469fh		;8fef
l8ff2h:
	ld a,00ch		;8ff2
	jp 0469fh		;8ff4
	cp 003h			;8ff7
	jr z,l9005h		;8ff9
	cp 00ah			;8ffb
	jr z,l900dh		;8ffd
	cp 007h			;8fff
	jr z,l9017h		;9001
l9003h:
	xor a			;9003
	ret			;9004
l9005h:
	ld a,(0cb48h)		;9005
	or a			;9008
	ret z			;9009
	ld a,001h		;900a
	ret			;900c
l900dh:
	ld a,(0cb41h)		;900d
	cp 00ah			;9010
	jr nz,l9003h		;9012
	ld a,002h		;9014
	ret			;9016
l9017h:
	ld a,(0cb50h)		;9017
	or a			;901a
	ret z			;901b
	ld a,(0cb58h)		;901c
	or a			;901f
	ret z			;9020
	ld a,001h		;9021
	ret			;9023
	or a			;9024
	ld a,(0cc01h)		;9025
	ld hl,07042h		;9028
	ld bc,00008h		;902b
	cpir			;902e
	ld a,002h		;9030
	jr nz,l9035h		;9032
	ld a,(hl)		;9034
l9035h:
	ld (0cc01h),a		;9035
	ret			;9038
	dec a			;9039
	ld hl,07042h		;903a
	call 04600h		;903d
	ld a,(hl)		;9040
	ret			;9041
	ld (bc),a		;9042
	ld c,003h		;9043
	rlca			;9045
	ld a,(bc)		;9046
	dec bc			;9047
	ld (bc),a		;9048
	rst 38h			;9049
	rst 38h			;904a
	nop			;904b
	ld (bc),a		;904c
	rst 38h			;904d
	rst 38h			;904e
	rst 38h			;904f
	inc bc			;9050
	rst 38h			;9051
	rst 38h			;9052
	ld bc,00804h		;9053
	ld b,007h		;9056
	ld hl,0ce80h		;9058
	ld b,014h		;905b
l905dh:
	ld a,(hl)		;905d
	and a			;905e
	jr z,l9081h		;905f
	bit 7,a			;9061
	jr nz,l9081h		;9063
	push bc			;9065
	push hl			;9066
	ld hl,070b7h		;9067
	ld bc,00023h		;906a
	cpir			;906d
	pop hl			;906f
	pop bc			;9070
	jr z,l9081h		;9071
	push hl			;9073
	ld de,00004h		;9074
	add hl,de		;9077
	ld (hl),001h		;9078
	ld de,00012h		;907a
	add hl,de		;907d
	ld (hl),000h		;907e
	pop hl			;9080
l9081h:
	ld de,00040h		;9081
	add hl,de		;9084
	djnz l905dh		;9085
	call 0708bh		;9087
	ret			;908a
	ld hl,0ce80h		;908b
	ld b,014h		;908e
l9090h:
	ld a,(hl)		;9090
	push bc			;9091
	push hl			;9092
	ld hl,070d2h		;9093
	ld bc,00008h		;9096
	cpir			;9099
	jr z,l90a6h		;909b
	pop hl			;909d
	pop bc			;909e
	ld de,00040h		;909f
	add hl,de		;90a2
	djnz l9090h		;90a3
	ret			;90a5
l90a6h:
	pop hl			;90a6
	pop bc			;90a7
	ld de,00016h		;90a8
	add hl,de		;90ab
	ld a,(0ce4ah)		;90ac
	dec a			;90af
	ld (hl),a		;90b0
	ld hl,0ce48h		;90b1
	ld (hl),001h		;90b4
	ret			;90b6
	ld h,l			;90b7
	ld (bc),a		;90b8
	inc bc			;90b9
	ld c,024h		;90ba
	ld hl,(07235h)		;90bc
	ld (hl),l		;90bf
	add hl,sp		;90c0
	ld c,b			;90c1
	ld c,l			;90c2
	ld l,c			;90c3
	ld l,d			;90c4
	ld l,e			;90c5
	ld d,d			;90c6
	ld d,e			;90c7
	ld d,h			;90c8
	dec sp			;90c9
	inc a			;90ca
	dec a			;90cb
	ld a,h			;90cc
	ccf			;90cd
	ld e,a			;90ce
	ld a,b			;90cf
	ld a,c			;90d0
	ld d,(hl)		;90d1
	ld a,03eh		;90d2
	ld h,h			;90d4
	ld (hl),c		;90d5
	ld a,d			;90d6
	inc d			;90d7
	ld (hl),a		;90d8
	ld a,e			;90d9
	push af			;90da
	call 07207h		;90db
	pop de			;90de
	scf			;90df
	ret nz			;90e0
	push de			;90e1
	call 0721dh		;90e2
	pop de			;90e5
	ld (hl),d		;90e6
	push hl			;90e7
	pop ix			;90e8
	call 066f7h		;90ea
	or a			;90ed
	ret			;90ee
	ld a,(ix+013h)		;90ef
	rrca			;90f2
	and 03fh		;90f3
	add a,(ix+008h)		;90f5
	ld h,a			;90f8
	ld l,(ix+007h)		;90f9
	ld a,(ix+014h)		;90fc
	rrca			;90ff
l9100h:
	and 03fh		;9100
	add a,(ix+00ah)		;9102
	ld d,a			;9105
	ld e,(ix+009h)		;9106
	ld bc,00c00h		;9109
	call 07725h		;910c
	ret			;910f
	call 07197h		;9110
	ld iy,0ca40h		;9113
	ld b,(iy+00ah)		;9117
	ld c,(iy+008h)		;911a
	push bc			;911d
	push iy			;911e
	call 04678h		;9120
	and 007h		;9123
	sub 004h		;9125
	add a,b			;9127
	ld (iy+00ah),a		;9128
	call 04678h		;912b
	and 007h		;912e
	sub 004h		;9130
	add a,c			;9132
	ld (iy+008h),a		;9133
	call 0714ah		;9136
	pop iy			;9139
	pop bc			;913b
	ld (iy+00ah),b		;913c
	ld (iy+008h),c		;913f
	ret			;9142
	call 070efh		;9143
	ret c			;9146
	call 07197h		;9147
	call 07207h		;914a
	ret nz			;914d
	call 0721dh		;914e
	push hl			;9151
	call 071b8h		;9152
	call 07270h		;9155
	call 07240h		;9158
	pop bc			;915b
	ld a,c			;915c
	ld c,l			;915d
	ld l,a			;915e
	ld a,b			;915f
	ld b,h			;9160
	ld h,a			;9161
	ld a,060h		;9162
	ld (hl),a		;9164
	push hl			;9165
	ld a,008h		;9166
	add a,l			;9168
	ld l,a			;9169
	ld a,(ix+008h)		;916a
	ld (hl),a		;916d
	inc l			;916e
	inc l			;916f
	ld a,(ix+00ah)		;9170
	ld (hl),a		;9173
	inc l			;9174
	ld (hl),c		;9175
	inc l			;9176
	ld (hl),b		;9177
	inc l			;9178
	ld (hl),e		;9179
	inc l			;917a
	ld (hl),d		;917b
	ld de,00009h		;917c
	add hl,de		;917f
	ld (hl),004h		;9180
	pop hl			;9182
	jp 066f7h		;9183
	exx			;9186
	ld hl,071a8h		;9187
	ld de,(0ca19h)		;918a
	ld d,000h		;918e
	add hl,de		;9190
	ld a,(hl)		;9191
	ld (0ca26h),a		;9192
	exx			;9195
	ret			;9196
	exx			;9197
	ld hl,071a8h		;9198
	ld de,(0ca19h)		;919b
	ld d,000h		;919f
	add hl,de		;91a1
	ld a,(hl)		;91a2
	ld (0ca26h),a		;91a3
	exx			;91a6
	ret			;91a7
	djnz $+19		;91a8
	ld (de),a		;91aa
	inc de			;91ab
	inc d			;91ac
	dec d			;91ad
	ld d,017h		;91ae
	rla			;91b0
	jr $+26			;91b1
	add hl,de		;91b3
	add hl,de		;91b4
	ld a,(de)		;91b5
	ld a,(de)		;91b6
	dec de			;91b7
	ld de,(0ca47h)		;91b8
	ld bc,(0ca49h)		;91bc
	call 071eah		;91c0
	ex de,hl		;91c3
	ld e,(ix+007h)		;91c4
	ld d,(ix+008h)		;91c7
	ld c,(ix+009h)		;91ca
	ld b,(ix+00ah)		;91cd
	call 071eah		;91d0
	ld c,l			;91d3
	ld b,h			;91d4
	ret			;91d5
	ld e,(iy+007h)		;91d6
	ld d,(iy+008h)		;91d9
	ld c,(iy+009h)		;91dc
	ld b,(iy+00ah)		;91df
	call 071eah		;91e2
	ex de,hl		;91e5
	call 071c4h		;91e6
	ret			;91e9
	ld a,e			;91ea
	rlca			;91eb
	rlca			;91ec
	rlca			;91ed
	and 007h		;91ee
	sla d			;91f0
	sla d			;91f2
	sla d			;91f4
	or d			;91f6
	ld e,a			;91f7
	ld a,c			;91f8
	rlca			;91f9
	rlca			;91fa
	rlca			;91fb
	and 007h		;91fc
	sla b			;91fe
	sla b			;9200
	sla b			;9202
	or b			;9204
	ld d,a			;9205
	ret			;9206
	ld hl,0d460h		;9207
	exx			;920a
	ld b,012h		;920b
l920dh:
	exx			;920d
	ld a,(hl)		;920e
	and a			;920f
	ret z			;9210
	ld a,020h		;9211
	add a,l			;9213
	jr nc,l9217h		;9214
	inc h			;9216
l9217h:
	ld l,a			;9217
	exx			;9218
	djnz l920dh		;9219
	exx			;921b
	ret			;921c
	push hl			;921d
	exx			;921e
	pop hl			;921f
	ld b,020h		;9220
	ld c,000h		;9222
l9224h:
	ld (hl),c		;9224
	inc hl			;9225
	djnz l9224h		;9226
	exx			;9228
	ret			;9229
	ld e,a			;922a
	ld a,d			;922b
	ld (0ca26h),a		;922c
	ld a,d			;922f
	and 080h		;9230
	ld (0ca23h),a		;9232
	ld a,d			;9235
	add a,040h		;9236
	and 080h		;9238
	ld (0ca24h),a		;923a
	ld a,e			;923d
	and 03fh		;923e
	ld d,000h		;9240
	ld e,a			;9242
	sub 03fh		;9243
	neg			;9245
	ld hl,073adh		;9247
	push hl			;924a
	add hl,de		;924b
	ld c,(hl)		;924c
	pop hl			;924d
	ld e,a			;924e
	add hl,de		;924f
	ld a,(hl)		;9250
	ld (0ca22h),a		;9251
	ld e,c			;9254
	call 0729eh		;9255
	ld a,(0ca23h)		;9258
	and a			;925b
	call nz,0460ah		;925c
	push de			;925f
	ld a,(0ca22h)		;9260
	ld e,a			;9263
	call 0729eh		;9264
	ld a,(0ca24h)		;9267
	and a			;926a
	call nz,0460ah		;926b
	pop hl			;926e
	ret			;926f
	ld hl,0ca23h		;9270
	ld (hl),000h		;9273
	ld a,c			;9275
	sub e			;9276
	jr nc,l927ch		;9277
	neg			;9279
	inc (hl)		;927b
l927ch:
	inc hl			;927c
	ld (hl),000h		;927d
	and 0f0h		;927f
	ld e,a			;9281
	ld a,b			;9282
	sub d			;9283
	jr nc,l9289h		;9284
	neg			;9286
	inc (hl)		;9288
l9289h:
	ld d,a			;9289
	ld a,d			;928a
	rra			;928b
	rra			;928c
	rra			;928d
	rra			;928e
	and 00fh		;928f
	add a,e			;9291
	ld e,a			;9292
	ld d,000h		;9293
	ld hl,073edh		;9295
	add hl,de		;9298
	ld a,(hl)		;9299
	ld (0ca20h),a		;929a
	ret			;929d
	ld a,(0ca26h)		;929e
	ld h,a			;92a1
	call 072b0h		;92a2
	xor a			;92a5
	add hl,hl		;92a6
	adc a,a			;92a7
	add hl,hl		;92a8
	adc a,a			;92a9
	add hl,hl		;92aa
	adc a,a			;92ab
	ld l,h			;92ac
	ld h,a			;92ad
	ex de,hl		;92ae
	ret			;92af
	ld l,000h		;92b0
	ld d,l			;92b2
	add hl,hl		;92b3
	jr nc,l92b7h		;92b4
	add hl,de		;92b6
l92b7h:
	add hl,hl		;92b7
	jr nc,l92bbh		;92b8
	add hl,de		;92ba
l92bbh:
	add hl,hl		;92bb
	jr nc,l92bfh		;92bc
	add hl,de		;92be
l92bfh:
	add hl,hl		;92bf
	jr nc,l92c3h		;92c0
	add hl,de		;92c2
l92c3h:
	add hl,hl		;92c3
	jr nc,l92c7h		;92c4
	add hl,de		;92c6
l92c7h:
	add hl,hl		;92c7
	jr nc,l92cbh		;92c8
	add hl,de		;92ca
l92cbh:
	add hl,hl		;92cb
	jr nc,l92cfh		;92cc
	add hl,de		;92ce
l92cfh:
	add hl,hl		;92cf
	jr nc,l92d3h		;92d0
	add hl,de		;92d2
l92d3h:
	ret			;92d3
	ld a,(ix+008h)		;92d4
	cp 016h			;92d7
	ret nc			;92d9
	ld hl,0ce6ch		;92da
	inc (hl)		;92dd
	call 0750fh		;92de
	ret c			;92e1
	call 07586h		;92e2
	ex af,af'		;92e5
	ld a,(ix+020h)		;92e6
	and a			;92e9
	jr nz,l92f1h		;92ea
	ex af,af'		;92ec
	ret nc			;92ed
	jp 07143h		;92ee
l92f1h:
	ex af,af'		;92f1
	ret c			;92f2
	jp 07143h		;92f3
	ld (0ca26h),a		;92f6
	call 070efh		;92f9
	ret c			;92fc
	jp 0714ah		;92fd
	ld bc,00000h		;9300
	call 07197h		;9303
l9306h:
	ld a,(hl)		;9306
	inc a			;9307
	ret z			;9308
	dec a			;9309
	push hl			;930a
	push bc			;930b
	ld l,a			;930c
	ld h,000h		;930d
	add hl,hl		;930f
	ld de,0738dh		;9310
	add hl,de		;9313
	ld b,(hl)		;9314
	inc hl			;9315
	ld c,(hl)		;9316
	call 07322h		;9317
	pop bc			;931a
	call 0737ch		;931b
	pop hl			;931e
	inc hl			;931f
	jr l9306h		;9320
l9322h:
	call 07207h		;9322
	ret nz			;9325
	call 0721dh		;9326
	push hl			;9329
	push bc			;932a
	call 0733bh		;932b
	pop bc			;932e
	call 0734dh		;932f
	call 07240h		;9332
	pop bc			;9335
	call 0715ch		;9336
	xor a			;9339
	ret			;933a
	push bc			;933b
	ld e,(ix+007h)		;933c
	ld d,(ix+008h)		;933f
	ld c,(ix+009h)		;9342
	ld b,(ix+00ah)		;9345
	call 071eah		;9348
	pop bc			;934b
	ret			;934c
	ld hl,0ca23h		;934d
	ld d,000h		;9350
	ld a,b			;9352
	rrca			;9353
	jr nc,l9357h		;9354
	inc d			;9356
l9357h:
	ld (hl),d		;9357
	ld d,000h		;9358
	inc hl			;935a
	rrca			;935b
	jr nc,l935fh		;935c
	inc d			;935e
l935fh:
	ld (hl),d		;935f
	ld a,c			;9360
	ret			;9361
	ld l,a			;9362
	ld h,000h		;9363
	add hl,hl		;9365
	ld de,0738dh		;9366
	add hl,de		;9369
	ld b,(hl)		;936a
	inc hl			;936b
	ld c,(hl)		;936c
	jr l9322h		;936d
	ld c,000h		;936f
	ld a,l			;9371
	and 0e0h		;9372
	ld l,a			;9374
	ld (hl),b		;9375
	ld a,005h		;9376
	add a,l			;9378
	ld l,a			;9379
	ld (hl),c		;937a
	ret			;937b
	ld a,l			;937c
	and 0e0h		;937d
	ld l,a			;937f
	ld a,008h		;9380
	add a,l			;9382
	ld l,a			;9383
	ld a,c			;9384
	add a,(hl)		;9385
	ld (hl),a		;9386
	inc l			;9387
	inc l			;9388
	ld a,b			;9389
	add a,(hl)		;938a
	ld (hl),a		;938b
	ret			;938c
	ld (bc),a		;938d
	nop			;938e
	inc bc			;938f
	djnz $+5		;9390
	jr nz,l9397h		;9392
	jr nc,l9397h		;9394
	ccf			;9396
l9397h:
	ld bc,00130h		;9397
	jr nz,$+3		;939a
	djnz l939fh		;939c
	nop			;939e
l939fh:
	nop			;939f
	djnz l93a2h		;93a0
l93a2h:
	jr nz,l93a4h		;93a2
l93a4h:
	jr nc,l93a6h		;93a4
l93a6h:
	ccf			;93a6
	ld (bc),a		;93a7
	jr nc,l93ach		;93a8
	jr nz,l93aeh		;93aa
l93ach:
	djnz l93aeh		;93ac
l93aeh:
	ld b,00ch		;93ae
	ld (de),a		;93b0
	add hl,de		;93b1
	rra			;93b2
	ld h,02ch		;93b3
	ld (03e38h),a		;93b5
l93b8h:
	ld b,h			;93b8
	ld c,d			;93b9
	ld d,b			;93ba
	ld d,(hl)		;93bb
	ld e,h			;93bc
	ld h,d			;93bd
	ld l,b			;93be
	ld l,l			;93bf
	ld (hl),e		;93c0
	ld a,c			;93c1
	ld a,(hl)		;93c2
	add a,h			;93c3
	adc a,c			;93c4
	adc a,(hl)		;93c5
	sub e			;93c6
	sbc a,c			;93c7
	sbc a,(hl)		;93c8
	and d			;93c9
	and a			;93ca
	xor h			;93cb
	or c			;93cc
	or l			;93cd
	cp c			;93ce
	cp (hl)			;93cf
	jp nz,0cac6h		;93d0
	adc a,0d1h		;93d3
	push de			;93d5
	ret c			;93d6
	call c,0e2dfh		;93d7
	push hl			;93da
	rst 20h			;93db
	jp pe,0efedh		;93dc
	pop af			;93df
	di			;93e0
	push af			;93e1
	rst 30h			;93e2
	ret m			;93e3
	jp m,0fcfbh		;93e4
	defb 0fdh,0feh,0feh ;illegal sequence	;93e7
	rst 38h			;93ea
	rst 38h			;93eb
	rst 38h			;93ec
	jr nz,l93fch		;93ed
	ex af,af'		;93ef
	ld b,004h		;93f0
	inc b			;93f2
	inc bc			;93f3
	inc bc			;93f4
	ld (bc),a		;93f5
	ld (bc),a		;93f6
	ld (bc),a		;93f7
	ld (bc),a		;93f8
	ld bc,00101h		;93f9
l93fch:
	ld bc,02033h		;93fc
	ld d,010h		;93ff
	dec c			;9401
	dec bc			;9402
	add hl,bc		;9403
	ex af,af'		;9404
	rlca			;9405
	ld b,006h		;9406
	dec b			;9408
	dec b			;9409
	inc b			;940a
	inc b			;940b
	inc b			;940c
	jr c,l9439h		;940d
	jr nz,l942ah		;940f
	dec d			;9411
	ld de,00d0fh		;9412
	inc c			;9415
	ld a,(bc)		;9416
	add hl,bc		;9417
	add hl,bc		;9418
	ex af,af'		;9419
	rlca			;941a
	rlca			;941b
	ld b,03ah		;941c
	cpl			;941e
	daa			;941f
	jr nz,l943dh		;9420
	rla			;9422
	inc d			;9423
	ld (de),a		;9424
	djnz $+16		;9425
	dec c			;9427
	inc c			;9428
	dec bc			;9429
l942ah:
	ld a,(bc)		;942a
	ld a,(bc)		;942b
	add hl,bc		;942c
	dec sp			;942d
	inc sp			;942e
	dec hl			;942f
	dec h			;9430
	jr nz,l944fh		;9431
	add hl,de		;9433
	ld d,014h		;9434
	ld (de),a		;9436
	djnz l9448h		;9437
l9439h:
	ld c,00dh		;9439
	inc c			;943b
	dec bc			;943c
l943dh:
	inc a			;943d
	dec (hl)		;943e
	ld l,029h		;943f
	inc h			;9441
	jr nz,l9460h		;9442
	ld a,(de)		;9444
	rla			;9445
	dec d			;9446
	inc d			;9447
l9448h:
	ld (de),a		;9448
	ld de,00f10h		;9449
	ld c,03dh		;944c
	scf			;944e
l944fh:
	ld sp,0272ch		;944f
	inc hl			;9452
	jr nz,l9472h		;9453
	ld a,(de)		;9455
	jr l946eh		;9456
	dec d			;9458
	inc de			;9459
	ld (de),a		;945a
	ld de,03d10h		;945b
	jr c,l9493h		;945e
l9460h:
	ld l,02ah		;9460
	ld h,023h		;9462
	jr nz,l9483h		;9464
	dec de			;9466
	add hl,de		;9467
	rla			;9468
	ld d,015h		;9469
	inc de			;946b
	ld (de),a		;946c
	dec a			;946d
l946eh:
	add hl,sp		;946e
	inc (hl)		;946f
	jr nc,l949eh		;9470
l9472h:
	jr z,l9499h		;9472
	ld (01e20h),hl		;9474
	inc e			;9477
	ld a,(de)		;9478
	jr l9492h		;9479
	dec d			;947b
	inc d			;947c
	ld a,039h		;947d
	dec (hl)		;947f
	ld sp,02a2eh		;9480
l9483h:
	daa			;9483
	dec h			;9484
	ld (01e20h),hl		;9485
	inc e			;9488
	ld a,(de)		;9489
	add hl,de		;948a
	rla			;948b
	ld d,03eh		;948c
	ld a,(03336h)		;948e
	cpl			;9491
l9492h:
	inc l			;9492
l9493h:
	add hl,hl		;9493
	daa			;9494
	inc h			;9495
	ld (01e20h),hl		;9496
l9499h:
	inc e			;9499
	dec de			;949a
	add hl,de		;949b
	jr $+64			;949c
l949eh:
	dec sp			;949e
	scf			;949f
	inc (hl)		;94a0
	ld sp,02b2eh		;94a1
	jr z,l94cch		;94a4
	inc h			;94a6
	ld (01e20h),hl		;94a7
	dec e			;94aa
	dec de			;94ab
	ld a,(de)		;94ac
	ld a,03bh		;94ad
	jr c,l94e6h		;94af
	ld (02c2fh),a		;94b1
	ld hl,(02528h)		;94b4
	inc hl			;94b7
	ld (01e20h),hl		;94b8
	dec e			;94bb
	inc e			;94bc
	ld a,03bh		;94bd
	jr c,l94f7h		;94bf
	inc sp			;94c1
	jr nc,$+48		;94c2
	dec hl			;94c4
	add hl,hl		;94c5
	daa			;94c6
	dec h			;94c7
	inc hl			;94c8
	ld hl,01e20h		;94c9
l94cch:
	dec e			;94cc
	ld a,03ch		;94cd
	add hl,sp		;94cf
	ld (hl),034h		;94d0
	ld sp,02c2fh		;94d2
	ld hl,(02628h)		;94d5
	dec h			;94d8
	inc hl			;94d9
	ld hl,01e20h		;94da
	ccf			;94dd
	inc a			;94de
	add hl,sp		;94df
	scf			;94e0
	inc (hl)		;94e1
	ld (02d30h),a		;94e2
	dec hl			;94e5
l94e6h:
	add hl,hl		;94e6
	jr z,l950fh		;94e7
	inc h			;94e9
	inc hl			;94ea
	ld hl,0c620h		;94eb
	ld b,b			;94ee
	ld h,000h		;94ef
	bit 7,a			;94f1
	jr z,l94ffh		;94f3
	res 7,a			;94f5
l94f7h:
	call 074ffh		;94f7
	neg			;94fa
	ld l,a			;94fc
	dec h			;94fd
	ret			;94fe
l94ffh:
	bit 6,a			;94ff
	jr z,l9506h		;9501
	cpl			;9503
	and 03fh		;9504
l9506h:
	ld de,073adh		;9506
	call 04605h		;9509
	ld a,(de)		;950c
	ld l,a			;950d
	ret			;950e
l950fh:
	call 04678h		;950f
	and 00fh		;9512
	ld hl,0ca19h		;9514
	cp (hl)			;9517
	ccf			;9518
	ret			;9519
	push bc			;951a
	call 07143h		;951b
	pop bc			;951e
	ret c			;951f
	jp 0737ch		;9520
	ld hl,0d440h		;9523
	ld bc,0025fh		;9526
	call 04648h		;9529
	nop			;952c
	nop			;952d
	nop			;952e
	nop			;952f
	nop			;9530
	nop			;9531
	nop			;9532
	nop			;9533
	nop			;9534
	nop			;9535
	nop			;9536
	nop			;9537
	nop			;9538
	nop			;9539
	nop			;953a
	nop			;953b
	ld a,(0ca1ah)		;953c
	add a,(ix+007h)		;953f
	ld a,000h		;9542
	adc a,e			;9544
	ld e,a			;9545
	ld a,(0ca1ch)		;9546
	add a,(ix+009h)		;9549
	ld a,000h		;954c
	adc a,d			;954e
	ld d,a			;954f
	call 07b18h		;9550
	ccf			;9553
	ret c			;9554
	ld a,(de)		;9555
	ld h,0deh		;9556
	ld l,a			;9558
	ld a,(hl)		;9559
	bit 0,a			;955a
	ret			;955c
	ld a,(0ca48h)		;955d
	sub (ix+008h)		;9560
	ld e,a			;9563
	ld a,(0ca4ah)		;9564
	sub (ix+00ah)		;9567
	ld d,a			;956a
	ret			;956b
	ld hl,(0ca49h)		;956c
	ld b,(ix+00ah)		;956f
	ld c,(ix+009h)		;9572
	or a			;9575
	sbc hl,bc		;9576
	ex de,hl		;9578
	ld hl,(0ca47h)		;9579
	ld b,(ix+008h)		;957c
	ld c,(ix+007h)		;957f
	or a			;9582
	sbc hl,bc		;9583
	ret			;9585
	push de			;9586
	ld hl,(0ca47h)		;9587
	ld d,(ix+008h)		;958a
	ld e,(ix+007h)		;958d
	or a			;9590
	sbc hl,de		;9591
	pop de			;9593
	ret			;9594
	ld h,d			;9595
	ld d,e			;9596
	ld e,000h		;9597
	ld l,e			;9599
	push bc			;959a
	call 076d0h		;959b
	call 07b18h		;959e
	jp nc,076c4h		;95a1
	ld a,(de)		;95a4
	call 076c9h		;95a5
	pop bc			;95a8
	ret			;95a9
	push bc			;95aa
	call 076d0h		;95ab
	push de			;95ae
	call 07b18h		;95af
	jp nc,076c3h		;95b2
	ld a,(de)		;95b5
	ld h,0deh		;95b6
	ld l,a			;95b8
	ld a,(hl)		;95b9
	bit 2,a			;95ba
	pop de			;95bc
	pop bc			;95bd
	or a			;95be
	bit 0,a			;95bf
	ret			;95c1
	push bc			;95c2
	call 076d0h		;95c3
	push de			;95c6
	call 07b18h		;95c7
	jp nc,076c3h		;95ca
	ld a,(de)		;95cd
	ld h,0deh		;95ce
	ld l,a			;95d0
	ld a,(hl)		;95d1
	bit 2,a			;95d2
	pop de			;95d4
	push af			;95d5
	jr nz,l95fah		;95d6
	pop af			;95d8
	pop bc			;95d9
	or a			;95da
	bit 0,a			;95db
l95ddh:
	ret			;95dd
	ld d,(ix+00ah)		;95de
	ld e,(ix+008h)		;95e1
	ld c,001h		;95e4
	push bc			;95e6
	push af			;95e7
	ld a,(0ca1ah)		;95e8
	add a,(ix+007h)		;95eb
	jr nc,l95f1h		;95ee
	inc e			;95f0
l95f1h:
	ld a,(0ca1ch)		;95f1
	add a,(ix+009h)		;95f4
	jr nc,l95fah		;95f7
	inc d			;95f9
l95fah:
	push de			;95fa
	call 07606h		;95fb
	pop de			;95fe
	pop bc			;95ff
	ld a,b			;9600
	pop bc			;9601
	bit 0,a			;9602
	ret nc			;9604
	ret			;9605
	push de			;9606
	exx			;9607
	pop de			;9608
	inc d			;9609
	inc e			;960a
	exx			;960b
	ld hl,0ce80h		;960c
	ld b,014h		;960f
l9611h:
	push bc			;9611
	ld a,(hl)		;9612
	or a			;9613
	jr z,l9619h		;9614
	call 07622h		;9616
l9619h:
	ld bc,00040h		;9619
	add hl,bc		;961c
	pop bc			;961d
	djnz l9611h		;961e
	or a			;9620
	ret			;9621
	ld a,008h		;9622
	add a,l			;9624
	ld l,a			;9625
	ld c,(hl)		;9626
	inc hl			;9627
	inc hl			;9628
	ld b,(hl)		;9629
	ld a,009h		;962a
	add a,l			;962c
	ld l,a			;962d
	ld e,(hl)		;962e
	inc hl			;962f
	ld d,(hl)		;9630
	res 7,d			;9631
	exx			;9633
	ld a,d			;9634
	exx			;9635
	sub b			;9636
	cp d			;9637
	jr nc,l9654h		;9638
	exx			;963a
	ld a,e			;963b
	exx			;963c
	sub c			;963d
	cp e			;963e
	jr nc,l9654h		;963f
	ld a,l			;9641
	and 0e0h		;9642
	ld l,a			;9644
	push hl			;9645
	pop iy			;9646
	call 07662h		;9648
	jr nc,l9654h		;964b
	call 076a9h		;964d
	scf			;9650
	jp 0469dh		;9651
l9654h:
	ld a,l			;9654
	and 0e0h		;9655
	ld l,a			;9657
	ret			;9658
l9659h:
	ld a,(iy+000h)		;9659
	cp 003h			;965c
	jr z,l9670h		;965e
	or a			;9660
	ret			;9661
	or a			;9662
	bit 4,(iy+015h)		;9663
	jr z,l96a8h		;9667
	ld a,(ix+000h)		;9669
	cp 001h			;966c
	jr z,l9659h		;966e
l9670h:
	push hl			;9670
	ld h,(iy+00ah)		;9671
	ld l,(iy+009h)		;9674
	ld bc,(0ca1ch)		;9677
	ld b,000h		;967b
	add hl,bc		;967d
	ld a,(iy+014h)		;967e
	and 01fh		;9681
	dec a			;9683
	ld b,a			;9684
	exx			;9685
	ld a,d			;9686
	dec a			;9687
	exx			;9688
	sub h			;9689
	cp b			;968a
	jr nc,l96a7h		;968b
	ld h,(iy+008h)		;968d
	ld l,(iy+007h)		;9690
	ld bc,(0ca1ah)		;9693
	ld b,000h		;9697
	add hl,bc		;9699
	ld a,(iy+013h)		;969a
	and 01fh		;969d
	dec a			;969f
	ld b,a			;96a0
	exx			;96a1
	ld a,e			;96a2
	dec a			;96a3
	exx			;96a4
	sub h			;96a5
	cp b			;96a6
l96a7h:
	pop hl			;96a7
l96a8h:
	ret			;96a8
	ld a,(ix+000h)		;96a9
	cp 004h			;96ac
	jr z,l96bdh		;96ae
	ld c,001h		;96b0
	sub 002h		;96b2
	cp 008h			;96b4
	ret nc			;96b6
	ld c,002h		;96b7
l96b9h:
	ld (iy+004h),c		;96b9
	ret			;96bc
l96bdh:
	ld a,(ix+006h)		;96bd
	ld c,a			;96c0
	jr l96b9h		;96c1
	pop de			;96c3
	ld a,080h		;96c4
	pop bc			;96c6
	scf			;96c7
	ret			;96c8
	ld h,0deh		;96c9
	ld l,a			;96cb
	ld a,(hl)		;96cc
	bit 0,a			;96cd
	ret			;96cf
	ld b,(ix+008h)		;96d0
	ld c,(ix+007h)		;96d3
	add hl,bc		;96d6
	ld bc,(0ca1ah)		;96d7
	ld b,000h		;96db
	add hl,bc		;96dd
	ex de,hl		;96de
	ld b,(ix+00ah)		;96df
	ld c,(ix+009h)		;96e2
	add hl,bc		;96e5
	ld bc,(0ca1ch)		;96e6
	ld b,000h		;96ea
	add hl,bc		;96ec
	ld l,d			;96ed
	ex de,hl		;96ee
	ret			;96ef
	ret			;96f0
	ld a,d			;96f1
	cp 020h			;96f2
	ret nc			;96f4
	ld a,e			;96f5
	cp 018h			;96f6
	ret nc			;96f8
	call 04e3ah		;96f9
	ex de,hl		;96fc
	scf			;96fd
	ret			;96fe
	push bc			;96ff
	ld l,(ix+009h)		;9700
	ld h,(ix+00ah)		;9703
	ld e,(ix+014h)		;9706
	srl e			;9709
	ld d,000h		;970b
	add hl,de		;970d
	ex de,hl		;970e
	ld l,(ix+007h)		;970f
	ld h,(ix+008h)		;9712
	ld c,(ix+014h)		;9715
	srl c			;9718
	ld b,000h		;971a
	add hl,bc		;971c
	pop bc			;971d
	jr l9725h		;971e
	ld h,e			;9720
	ld l,000h		;9721
	ld d,000h		;9723
l9725h:
	push bc			;9725
	push de			;9726
	ex de,hl		;9727
	ld hl,(0ca47h)		;9728
	inc h			;972b
	or a			;972c
	sbc hl,de		;972d
	bit 7,h			;972f
	call nz,04612h		;9731
	ex de,hl		;9734
	ld hl,(0ca49h)		;9735
	inc h			;9738
	pop bc			;9739
	or a			;973a
	sbc hl,bc		;973b
	bit 7,h			;973d
	call nz,04612h		;973f
	add hl,de		;9742
	pop bc			;9743
	sbc hl,bc		;9744
	ret			;9746
	ld bc,(0f0f2h)		;9747
	push bc			;974b
	call 04bb0h		;974c
	call 0776bh		;974f
	pop bc			;9752
	ld (0f0f2h),bc		;9753
	ld a,c			;9757
	ld (09000h),a		;9758
	ld a,b			;975b
	ld (0b000h),a		;975c
	ret			;975f
l9760h:
	ld a,(ix+015h)		;9760
	and 021h		;9763
	cp 020h			;9765
	ret nz			;9767
	jp 06eb4h		;9768
	ld a,(ix+015h)		;976b
	and 003h		;976e
	jr z,l9760h		;9770
	jp pe,0777bh		;9772
	rrca			;9775
	jr c,l977eh		;9776
	jp 07a3eh		;9778
	call 07a3eh		;977b
l977eh:
	ld (ix+019h),000h	;977e
	ld a,(ix+000h)		;9782
	dec a			;9785
	ld l,a			;9786
	ld h,000h		;9787
	add hl,hl		;9789
	ld de,l8496h		;978a
	add hl,de		;978d
	ld e,(hl)		;978e
	inc hl			;978f
	ld d,(hl)		;9790
	ld l,(ix+005h)		;9791
	ld h,000h		;9794
	add hl,hl		;9796
	add hl,de		;9797
	ld e,(hl)		;9798
	inc hl			;9799
	ld d,(hl)		;979a
	ex de,hl		;979b
	bit 3,(ix+015h)		;979c
	jr nz,l97b9h		;97a0
	ld b,(hl)		;97a2
	res 7,b			;97a3
l97a5h:
	push bc			;97a5
	call 07864h		;97a6
	call c,07861h		;97a9
	push hl			;97ac
	call 078e6h		;97ad
	call c,07821h		;97b0
	pop hl			;97b3
	pop bc			;97b4
	djnz l97a5h		;97b5
	or a			;97b7
	ret			;97b8
l97b9h:
	ld b,(hl)		;97b9
	res 7,b			;97ba
l97bch:
	push bc			;97bc
	call 07864h		;97bd
	call c,07861h		;97c0
	push hl			;97c3
	call 079b6h		;97c4
	call c,07821h		;97c7
	pop hl			;97ca
	pop bc			;97cb
	djnz l97bch		;97cc
	or a			;97ce
	ret			;97cf
	ld bc,(0f0f2h)		;97d0
	push bc			;97d4
	call 04bb0h		;97d5
	ld (ix+019h),000h	;97d8
	ld a,(ix+000h)		;97dc
	dec a			;97df
	ld l,a			;97e0
	ld h,000h		;97e1
	add hl,hl		;97e3
	ld de,l8496h		;97e4
	add hl,de		;97e7
	ld e,(hl)		;97e8
	inc hl			;97e9
	ld d,(hl)		;97ea
	ld l,(ix+005h)		;97eb
	ld h,000h		;97ee
	add hl,hl		;97f0
	add hl,de		;97f1
	ld e,(hl)		;97f2
	inc hl			;97f3
	ld d,(hl)		;97f4
	ex de,hl		;97f5
	ld b,(hl)		;97f6
	res 7,b			;97f7
l97f9h:
	push bc			;97f9
	call 07864h		;97fa
	call c,07861h		;97fd
	push hl			;9800
	call 0794eh		;9801
	call c,07821h		;9804
	pop hl			;9807
	pop bc			;9808
	djnz l97f9h		;9809
	or a			;980b
	pop bc			;980c
	ld (0f0f2h),bc		;980d
	ld a,c			;9811
	ld (09000h),a		;9812
	ld a,b			;9815
	ld (0b000h),a		;9816
	ret			;9819
l981ah:
	ld a,001h		;981a
	ld (0c0ech),a		;981c
	scf			;981f
	ret			;9820
	ld a,(ix+000h)		;9821
	cp 001h			;9824
	jr z,l981ah		;9826
	cp 01fh			;9828
	ret z			;982a
	cp 043h			;982b
	ret z			;982d
	cp 050h			;982e
	ret z			;9830
	cp 048h			;9831
	ret z			;9833
	pop hl			;9834
	pop bc			;9835
	pop bc			;9836
	inc hl			;9837
	inc hl			;9838
	inc hl			;9839
	inc hl			;983a
	inc hl			;983b
	push hl			;983c
	push ix			;983d
	pop de			;983f
	ld hl,02ba0h		;9840
	add hl,de		;9843
	ld bc,00240h		;9844
	or a			;9847
	sbc hl,bc		;9848
	jr c,l985ch		;984a
	ld hl,03180h		;984c
	add hl,de		;984f
	ld bc,00500h		;9850
	or a			;9853
	sbc hl,bc		;9854
	ret nc			;9856
	call 06e98h		;9857
	scf			;985a
	ret			;985b
l985ch:
	call 06each		;985c
	scf			;985f
	ret			;9860
	ld e,0e8h		;9861
	ret			;9863
	ld a,b			;9864
	dec a			;9865
	jr nz,l98b2h		;9866
	ex de,hl		;9868
	ld h,(ix+008h)		;9869
	ld l,(ix+007h)		;986c
	add hl,hl		;986f
	add hl,hl		;9870
	add hl,hl		;9871
	call c,07897h		;9872
	ld a,h			;9875
	ld h,(ix+00ah)		;9876
	ld l,(ix+009h)		;9879
	add hl,hl		;987c
	add hl,hl		;987d
	add hl,hl		;987e
	ex de,hl		;987f
	jp c,078a4h		;9880
	inc hl			;9883
	ld b,(hl)		;9884
	inc hl			;9885
	add a,(hl)		;9886
	ld e,a			;9887
	inc hl			;9888
	ld a,d			;9889
	add a,(hl)		;988a
	jp c,078a7h		;988b
	ld d,a			;988e
	inc hl			;988f
	ld c,(hl)		;9890
	inc hl			;9891
	ld a,b			;9892
	ld b,(hl)		;9893
	inc hl			;9894
	or a			;9895
	ret			;9896
	ld a,(ix+008h)		;9897
	cp 0feh			;989a
	ret nc			;989c
	ex de,hl		;989d
	call 078a4h		;989e
	jp 0469fh		;98a1
	inc hl			;98a4
	inc hl			;98a5
	inc hl			;98a6
	inc hl			;98a7
	inc hl			;98a8
	inc hl			;98a9
	ld bc,00101h		;98aa
	ld a,000h		;98ad
	ld e,0e8h		;98af
	ret			;98b1
l98b2h:
	ex de,hl		;98b2
	ld h,(ix+008h)		;98b3
	ld l,(ix+007h)		;98b6
	add hl,hl		;98b9
	add hl,hl		;98ba
	add hl,hl		;98bb
	call c,07897h		;98bc
	ld a,h			;98bf
	ld h,(ix+00ah)		;98c0
	ld l,(ix+009h)		;98c3
	add hl,hl		;98c6
	add hl,hl		;98c7
	add hl,hl		;98c8
	ex de,hl		;98c9
	jp c,078a4h		;98ca
	inc hl			;98cd
	ld b,(hl)		;98ce
	inc hl			;98cf
	add a,(hl)		;98d0
	ld e,a			;98d1
	inc hl			;98d2
	ld a,d			;98d3
	add a,(hl)		;98d4
	jp c,078a7h		;98d5
	ld d,a			;98d8
	inc hl			;98d9
	ld c,(hl)		;98da
	inc hl			;98db
	ld a,b			;98dc
	ld b,(hl)		;98dd
	inc hl			;98de
	or a			;98df
	ret			;98e0
	ld (ix+019h),000h	;98e1
	ret			;98e5
	ld l,(ix+000h)		;98e6
	ld h,0dfh		;98e9
	add a,(hl)		;98eb
	ex af,af'		;98ec
	ld a,(ix+019h)		;98ed
	or a			;98f0
	jr nz,l9913h		;98f1
	inc a			;98f3
	ld (ix+019h),a		;98f4
	ld a,(ix+01ah)		;98f7
	or a			;98fa
	call z,0793dh		;98fb
l98feh:
	ld l,a			;98fe
	ld a,(0c0aah)		;98ff
	ld h,a			;9902
	res 7,(hl)		;9903
	res 0,l			;9905
	ld h,0c0h		;9907
	ld (hl),e		;9909
	inc h			;990a
	ld (hl),d		;990b
	inc h			;990c
	ex af,af'		;990d
	ld (hl),a		;990e
	inc h			;990f
	ld (hl),c		;9910
	or a			;9911
	ret			;9912
l9913h:
	cp 006h			;9913
	ret nc			;9915
	inc a			;9916
	ld (ix+019h),a		;9917
	push ix			;991a
	pop hl			;991c
	push bc			;991d
	add a,019h		;991e
	ld c,a			;9920
	ld b,000h		;9921
	add hl,bc		;9923
	pop bc			;9924
	ld a,(hl)		;9925
	or a			;9926
	call z,0792ch		;9927
	jr l98feh		;992a
	push bc			;992c
	push hl			;992d
	ld hl,0c023h		;992e
	ld b,00ch		;9931
	call 07a20h		;9933
	pop hl			;9936
	ld (hl),a		;9937
	pop bc			;9938
	ret nc			;9939
	jp 0469fh		;993a
	push bc			;993d
	ld hl,0c023h		;993e
	ld b,00ch		;9941
	call 07a20h		;9943
	ld (ix+01ah),a		;9946
	pop bc			;9949
	ret nc			;994a
	jp 0469fh		;994b
	ld l,(ix+000h)		;994e
	ld h,0dfh		;9951
	add a,(hl)		;9953
	ex af,af'		;9954
	ld a,(ix+019h)		;9955
	or a			;9958
	jr nz,l997bh		;9959
	inc a			;995b
	ld (ix+019h),a		;995c
	ld a,(ix+01ah)		;995f
	or a			;9962
	call z,079a5h		;9963
l9966h:
	ld l,a			;9966
	ld a,(0c0aah)		;9967
	ld h,a			;996a
	res 7,(hl)		;996b
	res 0,l			;996d
	ld h,0c0h		;996f
	ld (hl),e		;9971
	inc h			;9972
	ld (hl),d		;9973
	inc h			;9974
	ex af,af'		;9975
	ld (hl),a		;9976
	inc h			;9977
	ld (hl),c		;9978
	or a			;9979
	ret			;997a
l997bh:
	cp 006h			;997b
	ret nc			;997d
	inc a			;997e
	ld (ix+019h),a		;997f
	push ix			;9982
	pop hl			;9984
	push bc			;9985
	add a,019h		;9986
	ld c,a			;9988
	ld b,000h		;9989
	add hl,bc		;998b
	pop bc			;998c
	ld a,(hl)		;998d
	or a			;998e
	call z,07994h		;998f
	jr l9966h		;9992
	push bc			;9994
	push hl			;9995
	ld hl,0c009h		;9996
	ld b,00dh		;9999
	call 07a20h		;999b
	pop hl			;999e
	ld (hl),a		;999f
	pop bc			;99a0
	ret nc			;99a1
	jp 0469fh		;99a2
	push bc			;99a5
	ld hl,0c009h		;99a6
	ld b,00dh		;99a9
	call 07a20h		;99ab
	ld (ix+01ah),a		;99ae
	pop bc			;99b1
	ret nc			;99b2
	jp 0469fh		;99b3
	ld l,(ix+000h)		;99b6
	ld h,0dfh		;99b9
	add a,(hl)		;99bb
	ex af,af'		;99bc
	ld a,(ix+019h)		;99bd
	or a			;99c0
	jr nz,l99e5h		;99c1
	inc a			;99c3
	ld (ix+019h),a		;99c4
	ld a,(ix+01ah)		;99c7
	or a			;99ca
	call z,079feh		;99cb
l99ceh:
	ld l,a			;99ce
	ld a,(0c0aah)		;99cf
	ld h,a			;99d2
	res 7,(hl)		;99d3
	res 0,l			;99d5
	ld h,0c0h		;99d7
	ld (hl),e		;99d9
	inc h			;99da
	ld (hl),d		;99db
	inc h			;99dc
	ex af,af'		;99dd
	ld (hl),a		;99de
	inc h			;99df
	ld (hl),c		;99e0
	inc h			;99e1
	ld (hl),b		;99e2
	or a			;99e3
	ret			;99e4
l99e5h:
	cp 006h			;99e5
	ret nc			;99e7
	push ix			;99e8
	pop hl			;99ea
	inc a			;99eb
	ld (ix+019h),a		;99ec
	push bc			;99ef
	add a,019h		;99f0
	ld c,a			;99f2
	ld b,000h		;99f3
	add hl,bc		;99f5
	pop bc			;99f6
	ld a,(hl)		;99f7
	or a			;99f8
	call z,07a0fh		;99f9
	jr l99ceh		;99fc
	push bc			;99fe
	ld hl,0c03bh		;99ff
	ld b,00ch		;9a02
	call 07a20h		;9a04
	ld (ix+01ah),a		;9a07
	pop bc			;9a0a
	ret nc			;9a0b
	jp 0469fh		;9a0c
	push bc			;9a0f
	push hl			;9a10
	ld hl,0c03bh		;9a11
	ld b,00ch		;9a14
	call 07a20h		;9a16
	pop hl			;9a19
	ld (hl),a		;9a1a
	pop bc			;9a1b
	ret nc			;9a1c
	jp 0469fh		;9a1d
	call 07a35h		;9a20
	jr nz,l9a31h		;9a23
	ld (hl),08fh		;9a25
	inc h			;9a27
	inc h			;9a28
	inc h			;9a29
	ld (hl),08fh		;9a2a
	dec h			;9a2c
	dec h			;9a2d
	dec h			;9a2e
	ld a,l			;9a2f
	ret			;9a30
l9a31h:
	ld a,000h		;9a31
	scf			;9a33
	ret			;9a34
	xor a			;9a35
l9a36h:
	cp (hl)			;9a36
	ret z			;9a37
	inc l			;9a38
	inc l			;9a39
	djnz l9a36h		;9a3a
	scf			;9a3c
	ret			;9a3d
	call 07a5fh		;9a3e
	jr l9abah		;9a41
	push af			;9a43
	call 04bb0h		;9a44
	pop af			;9a47
	ld l,(ix+000h)		;9a48
	dec l			;9a4b
	ld h,000h		;9a4c
	add hl,hl		;9a4e
	ld de,l8596h		;9a4f
	add hl,de		;9a52
	ld e,(hl)		;9a53
	inc hl			;9a54
	ld d,(hl)		;9a55
	call 07a70h		;9a56
	call 07abah		;9a59
	jp 04b99h		;9a5c
	ld l,(ix+000h)		;9a5f
	dec l			;9a62
	ld h,000h		;9a63
	add hl,hl		;9a65
	ld de,l8596h		;9a66
	add hl,de		;9a69
	ld e,(hl)		;9a6a
	inc hl			;9a6b
	ld d,(hl)		;9a6c
	ld a,(ix+006h)		;9a6d
	ld h,000h		;9a70
	ld l,a			;9a72
	add hl,hl		;9a73
	add hl,de		;9a74
	ld e,(hl)		;9a75
	inc hl			;9a76
	ld d,(hl)		;9a77
	ex de,hl		;9a78
	ld a,(0ca1ah)		;9a79
	add a,(ix+007h)		;9a7c
	ld a,(ix+008h)		;9a7f
	adc a,(hl)		;9a82
	ld e,a			;9a83
	inc hl			;9a84
	ld a,(0ca1ch)		;9a85
	add a,(ix+009h)		;9a88
	ld a,(ix+00ah)		;9a8b
	adc a,(hl)		;9a8e
	ld d,a			;9a8f
	inc hl			;9a90
	ld b,(hl)		;9a91
	inc hl			;9a92
	ld c,(hl)		;9a93
	inc hl			;9a94
	ret			;9a95
	call 04bb0h		;9a96
	call 07aa8h		;9a99
	jp 04b99h		;9a9c
	inc d			;9a9f
	ld a,d			;9aa0
	cp 0deh			;9aa1
	ret c			;9aa3
	scf			;9aa4
	jp 0469bh		;9aa5
	ld a,(0ca1ah)		;9aa8
	add a,(ix+007h)		;9aab
	jr nc,l9ab1h		;9aae
	inc e			;9ab0
l9ab1h:
	ld a,(0ca1ch)		;9ab1
	add a,(ix+009h)		;9ab4
	jr nc,l9abah		;9ab7
	inc d			;9ab9
l9abah:
	push hl			;9aba
	call 07b29h		;9abb
	pop hl			;9abe
	ret nc			;9abf
l9ac0h:
	push bc			;9ac0
	push de			;9ac1
	ld a,(hl)		;9ac2
	or a			;9ac3
	jr z,l9ac7h		;9ac4
	ld (de),a		;9ac6
l9ac7h:
	inc hl			;9ac7
	inc e			;9ac8
	call z,07a9fh		;9ac9
	dec c			;9acc
	jr z,l9af7h		;9acd
	ld a,(hl)		;9acf
	or a			;9ad0
	jr z,l9ad4h		;9ad1
	ld (de),a		;9ad3
l9ad4h:
	inc hl			;9ad4
	inc e			;9ad5
	call z,07a9fh		;9ad6
	dec c			;9ad9
	jr z,l9af7h		;9ada
	ld a,(hl)		;9adc
	or a			;9add
	jr z,l9ae1h		;9ade
	ld (de),a		;9ae0
l9ae1h:
	inc hl			;9ae1
	inc e			;9ae2
	call z,07a9fh		;9ae3
	dec c			;9ae6
	jr z,l9af7h		;9ae7
	ld a,(hl)		;9ae9
	or a			;9aea
	jr z,l9aeeh		;9aeb
	ld (de),a		;9aed
l9aeeh:
	inc hl			;9aee
	inc e			;9aef
	call z,07a9fh		;9af0
	dec c			;9af3
	jp nz,07ac2h		;9af4
l9af7h:
	pop de			;9af7
	ld bc,00030h		;9af8
	ex de,hl		;9afb
	add hl,bc		;9afc
	ex de,hl		;9afd
	ld a,d			;9afe
	cp 0deh			;9aff
	pop bc			;9b01
	ret nc			;9b02
	djnz l9ac0h		;9b03
	ret			;9b05
	ld a,(0ca1ah)		;9b06
	add a,(ix+007h)		;9b09
	jr nc,l9b0fh		;9b0c
	inc e			;9b0e
l9b0fh:
	ld a,(0ca1ch)		;9b0f
	add a,(ix+009h)		;9b12
	jr nc,l9b18h		;9b15
	inc d			;9b17
l9b18h:
	ld a,d			;9b18
	cp 020h			;9b19
	ret nc			;9b1b
	add a,008h		;9b1c
	push af			;9b1e
	ld a,e			;9b1f
	cp 018h			;9b20
	jp nc,07b4eh		;9b22
	add a,008h		;9b25
	jr l9b38h		;9b27
	ld a,d			;9b29
	add a,008h		;9b2a
	cp 028h			;9b2c
	ret nc			;9b2e
	push af			;9b2f
	ld a,e			;9b30
	add a,008h		;9b31
	cp 020h			;9b33
	jp nc,07b4eh		;9b35
l9b38h:
	ld e,a			;9b38
	add a,a			;9b39
	add a,e			;9b3a
	ld l,a			;9b3b
	ld h,000h		;9b3c
	add hl,hl		;9b3e
	add hl,hl		;9b3f
	add hl,hl		;9b40
	add hl,hl		;9b41
	ld de,0d800h		;9b42
	add hl,de		;9b45
	pop af			;9b46
	ld e,a			;9b47
	ld d,000h		;9b48
	add hl,de		;9b4a
	ex de,hl		;9b4b
	scf			;9b4c
	ret			;9b4d
	inc sp			;9b4e
	inc sp			;9b4f
	ret			;9b50
	ld hl,0dda0h		;9b51
	jr l9b59h		;9b54
	ld hl,0d950h		;9b56
l9b59h:
	ld a,d			;9b59
	add a,00fh		;9b5a
	cp 02fh			;9b5c
	ret nc			;9b5e
	ld e,a			;9b5f
	ld d,000h		;9b60
	add hl,de		;9b62
	scf			;9b63
	ret			;9b64
	ld l,(ix+006h)		;9b65
	ld h,000h		;9b68
	add hl,hl		;9b6a
	add hl,de		;9b6b
	ld e,(hl)		;9b6c
	inc hl			;9b6d
	ld d,(hl)		;9b6e
	ex de,hl		;9b6f
	call 07c01h		;9b70
	call 04bb0h		;9b73
	exx			;9b76
	ld l,(ix+000h)		;9b77
	dec l			;9b7a
	ld h,000h		;9b7b
	add hl,hl		;9b7d
	ld de,l8596h		;9b7e
	add hl,de		;9b81
	ld e,(hl)		;9b82
	inc hl			;9b83
	ld d,(hl)		;9b84
	ld (0ca27h),de		;9b85
	exx			;9b89
l9b8ah:
	ld a,(hl)		;9b8a
	inc hl			;9b8b
	ld d,(hl)		;9b8c
	add a,(ix+008h)		;9b8d
	ld e,a			;9b90
	ld a,(ix+00ah)		;9b91
	add a,d			;9b94
	ld d,a			;9b95
	ld (0ca29h),de		;9b96
	inc hl			;9b9a
l9b9bh:
	ld a,(hl)		;9b9b
	inc hl			;9b9c
	ld b,a			;9b9d
	inc a			;9b9e
	jp z,04b99h		;9b9f
	inc a			;9ba2
	jr z,l9b8ah		;9ba3
	ld a,080h		;9ba5
	add a,b			;9ba7
	jr c,l9bd5h		;9ba8
l9baah:
	push bc			;9baa
	push hl			;9bab
	ld l,(hl)		;9bac
	ld h,000h		;9bad
	add hl,hl		;9baf
	ld de,(0ca27h)		;9bb0
	add hl,de		;9bb4
	ld e,(hl)		;9bb5
	inc hl			;9bb6
	ld d,(hl)		;9bb7
	ex de,hl		;9bb8
	ld bc,0ca29h		;9bb9
	ld a,(bc)		;9bbc
	ld e,a			;9bbd
	add a,(hl)		;9bbe
	ld (bc),a		;9bbf
	inc bc			;9bc0
	inc hl			;9bc1
	ld a,(bc)		;9bc2
	ld d,a			;9bc3
	add a,(hl)		;9bc4
	ld (bc),a		;9bc5
	inc hl			;9bc6
	ld b,(hl)		;9bc7
	inc hl			;9bc8
	ld c,(hl)		;9bc9
	inc hl			;9bca
	call 07aa8h		;9bcb
	pop hl			;9bce
	pop bc			;9bcf
	inc hl			;9bd0
	djnz l9baah		;9bd1
	jr l9b9bh		;9bd3
l9bd5h:
	ld b,a			;9bd5
l9bd6h:
	push hl			;9bd6
	push bc			;9bd7
	ld l,(hl)		;9bd8
	ld h,000h		;9bd9
	add hl,hl		;9bdb
	ld de,(0ca27h)		;9bdc
	add hl,de		;9be0
	ld e,(hl)		;9be1
	inc hl			;9be2
	ld d,(hl)		;9be3
	ex de,hl		;9be4
	ld bc,0ca29h		;9be5
	ld a,(bc)		;9be8
	ld e,a			;9be9
	add a,(hl)		;9bea
	ld (bc),a		;9beb
	inc bc			;9bec
	inc hl			;9bed
	ld a,(bc)		;9bee
	ld d,a			;9bef
	add a,(hl)		;9bf0
	ld (bc),a		;9bf1
	inc hl			;9bf2
	ld b,(hl)		;9bf3
	inc hl			;9bf4
	ld c,(hl)		;9bf5
	inc hl			;9bf6
	call 07aa8h		;9bf7
	pop bc			;9bfa
	pop hl			;9bfb
	djnz l9bd6h		;9bfc
	inc hl			;9bfe
	jr l9b9bh		;9bff
	ld c,(hl)		;9c01
	ld b,000h		;9c02
	inc hl			;9c04
	dec c			;9c05
	ld de,0d700h		;9c06
	ldir			;9c09
	ld hl,0d700h		;9c0b
	ret			;9c0e
	push ix			;9c0f
	push iy			;9c11
	push iy			;9c13
	push ix			;9c15
	pop iy			;9c17
	pop ix			;9c19
	ld a,(ix+000h)		;9c1b
	call 07c26h		;9c1e
	pop iy			;9c21
	pop ix			;9c23
	ret			;9c25
	ret			;9c26
	bit 4,(ix+015h)		;9c27
	ret z			;9c2b
	ld d,(ix+00ah)		;9c2c
	ld e,(ix+008h)		;9c2f
	inc d			;9c32
	inc e			;9c33
	call 07b18h		;9c34
	jp nc,06each		;9c37
	ld a,(de)		;9c3a
	ld l,a			;9c3b
	ld h,0deh		;9c3c
	ld a,(hl)		;9c3e
	rrca			;9c3f
	ret nc			;9c40
	jp 06each		;9c41
	or a			;9c44
	bit 7,(ix+014h)		;9c45
	ret z			;9c49
	ld a,(ix+004h)		;9c4a
	ld (ix+004h),000h	;9c4d
	and a			;9c51
	ret z			;9c52
	ld b,a			;9c53
	ld a,(ix+016h)		;9c54
	sub b			;9c57
	ld (ix+016h),a		;9c58
	push af			;9c5b
	ld a,016h		;9c5c
	call 04af0h		;9c5e
	pop af			;9c61
	ret			;9c62
	ld a,(ix+03fh)		;9c63
	and a			;9c66
	ld c,001h		;9c67
	jr z,l9c77h		;9c69
	ld hl,0ce48h		;9c6b
	res 1,(hl)		;9c6e
	dec hl			;9c70
	ld a,(hl)		;9c71
	ld c,a			;9c72
	and a			;9c73
	jr z,l9c77h		;9c74
	dec (hl)		;9c76
l9c77h:
	bit 7,(ix+014h)		;9c77
	ret z			;9c7b
	ld a,(ix+004h)		;9c7c
	ld (ix+004h),000h	;9c7f
	and a			;9c83
	ret z			;9c84
	ld b,a			;9c85
	ld a,c			;9c86
	and a			;9c87
	jr nz,l9c8fh		;9c88
	ld (hl),004h		;9c8a
	inc hl			;9c8c
	set 1,(hl)		;9c8d
l9c8fh:
	ld a,(ix+016h)		;9c8f
	sub b			;9c92
	ld (ix+016h),a		;9c93
	push af			;9c96
	ld b,a			;9c97
	ld a,(0ce4ah)		;9c98
	cp b			;9c9b
	jr c,l9ca0h		;9c9c
	set 0,(hl)		;9c9e
l9ca0h:
	ld a,025h		;9ca0
	call 04af0h		;9ca2
	pop af			;9ca5
	ret			;9ca6
	ld (ix+004h),000h	;9ca7
	ret			;9cab
	ld a,(ix+004h)		;9cac
	and a			;9caf
	ret z			;9cb0
	ld (ix+004h),000h	;9cb1
	ld b,a			;9cb5
	ld a,(ix+016h)		;9cb6
	sub b			;9cb9
	ld (ix+016h),a		;9cba
	ret			;9cbd
	call 07d0ah		;9cbe
	jr l9cd9h		;9cc1
	ld a,004h		;9cc3
	ld (ix+015h),a		;9cc5
	res 7,(ix+014h)		;9cc8
	call 07d5eh		;9ccc
	call 07d1bh		;9ccf
	call 07d0ah		;9cd2
	ld a,(hl)		;9cd5
	ld (ix+000h),a		;9cd6
l9cd9h:
	inc hl			;9cd9
	ld a,(hl)		;9cda
	push hl			;9cdb
	call 04af0h		;9cdc
	pop hl			;9cdf
	inc hl			;9ce0
	ld l,(hl)		;9ce1
	dec l			;9ce2
	ld h,000h		;9ce3
	add hl,hl		;9ce5
	ld de,07cf6h		;9ce6
	add hl,de		;9ce9
	ld a,(hl)		;9cea
	add a,001h		;9ceb
	ret c			;9ced
	ld e,(hl)		;9cee
	inc hl			;9cef
	ld d,(hl)		;9cf0
	call 07e03h		;9cf1
	scf			;9cf4
	ret			;9cf5
	rst 38h			;9cf6
	rst 38h			;9cf7
	jr nz,l9cfah		;9cf8
l9cfah:
	ld b,b			;9cfa
	nop			;9cfb
	ld h,b			;9cfc
	nop			;9cfd
	nop			;9cfe
	ld bc,00200h		;9cff
	nop			;9d02
	inc b			;9d03
	nop			;9d04
	jr nz,l9d07h		;9d05
l9d07h:
	ld b,b			;9d07
	nop			;9d08
	ld d,b			;9d09
	ld a,(ix+000h)		;9d0a
	ld h,000h		;9d0d
	ld l,a			;9d0f
	add hl,hl		;9d10
	add a,l			;9d11
	ld l,a			;9d12
	jr nc,l9d16h		;9d13
	inc h			;9d15
l9d16h:
	ld de,07e74h		;9d16
	add hl,de		;9d19
	ret			;9d1a
	call 06eb4h		;9d1b
	xor a			;9d1e
	ld (ix+001h),a		;9d1f
	ld (ix+034h),a		;9d22
	ld (ix+038h),a		;9d25
	ld (ix+005h),a		;9d28
	ld (ix+006h),a		;9d2b
	ld (ix+017h),a		;9d2e
	ld (ix+00bh),a		;9d31
	ld (ix+00ch),a		;9d34
	ld (ix+00dh),a		;9d37
	ld (ix+00eh),a		;9d3a
	ret			;9d3d
	ld a,(ix+034h)		;9d3e
	ld b,(ix+02dh)		;9d41
	and a			;9d44
	ret z			;9d45
	push af			;9d46
	sla a			;9d47
	call c,07d89h		;9d49
	pop af			;9d4c
	sla a			;9d4d
	sla a			;9d4f
	ret c			;9d51
	and a			;9d52
	ret z			;9d53
	call 068deh		;9d54
	ret c			;9d57
	ret nz			;9d58
	dec (iy+037h)		;9d59
	jr l9da6h		;9d5c
	ld a,(ix+034h)		;9d5e
	ld b,(ix+02dh)		;9d61
	and a			;9d64
	ret z			;9d65
	push af			;9d66
	sla a			;9d67
	call c,07d89h		;9d69
	pop af			;9d6c
	sla a			;9d6d
	sla a			;9d6f
	ret c			;9d71
	and a			;9d72
	ret z			;9d73
	call 07d54h		;9d74
	dec (iy+03bh)		;9d77
	ret nz			;9d7a
	ld a,(iy+024h)		;9d7b
	and a			;9d7e
	ret nz			;9d7f
	ld a,(iy+03dh)		;9d80
	and a			;9d83
	ret z			;9d84
	inc (ix+03dh)		;9d85
	ret			;9d88
	ld a,b			;9d89
	ld b,014h		;9d8a
	ld hl,0ceb4h		;9d8c
	ld de,00040h		;9d8f
l9d92h:
	cp (hl)			;9d92
	jr nz,l9d97h		;9d93
	set 6,(hl)		;9d95
l9d97h:
	add hl,de		;9d97
	djnz l9d92h		;9d98
	jr l9da6h		;9d9a
	bit 6,(ix+034h)		;9d9c
	ret z			;9da0
	ld (ix+004h),0ffh	;9da1
	ret			;9da5
l9da6h:
	ld b,(ix+035h)		;9da6
	ld c,(ix+036h)		;9da9
	ld a,b			;9dac
	or c			;9dad
	ret z			;9dae
	ld a,b			;9daf
	call 068b9h		;9db0
	jr c,l9db9h		;9db3
	set 7,(iy+035h)		;9db5
l9db9h:
	ld a,c			;9db9
	call 068c4h		;9dba
	ret c			;9dbd
	set 7,(iy+036h)		;9dbe
	ret			;9dc2
	ld a,(ix+000h)		;9dc3
	call 07dd8h		;9dc6
	inc hl			;9dc9
	jp 07ce0h		;9dca
	ld a,(ix+000h)		;9dcd
	call 07dd8h		;9dd0
	inc hl			;9dd3
	ld a,(hl)		;9dd4
	jp 04af5h		;9dd5
	ld h,000h		;9dd8
	ld l,a			;9dda
	ld e,a			;9ddb
	ld d,h			;9ddc
	add hl,hl		;9ddd
	add hl,de		;9dde
	ld de,07e74h		;9ddf
	add hl,de		;9de2
	ret			;9de3
	call 07df1h		;9de4
	ld hl,00000h		;9de7
	ld (0c922h),hl		;9dea
	ld (0c923h),hl		;9ded
	ret			;9df0
	ld hl,00000h		;9df1
	ld (0cb0ah),hl		;9df4
	ld (0cb0ch),hl		;9df7
	ld (0cb10h),hl		;9dfa
	ld a,050h		;9dfd
	ld (0cb10h),a		;9dff
	ret			;9e02
	ld hl,0cb0bh		;9e03
	ld a,(hl)		;9e06
	add a,e			;9e07
	daa			;9e08
	ld (hl),a		;9e09
	inc l			;9e0a
	ld a,(hl)		;9e0b
	adc a,d			;9e0c
	daa			;9e0d
	ld (hl),a		;9e0e
	inc hl			;9e0f
	ld a,(hl)		;9e10
	adc a,000h		;9e11
	daa			;9e13
	ld (hl),a		;9e14
	jr nc,l9e29h		;9e15
	ld de,0c924h		;9e17
	ld a,099h		;9e1a
	ld (hl),a		;9e1c
	ld (de),a		;9e1d
	dec l			;9e1e
	dec e			;9e1f
	ld (hl),a		;9e20
	ld (de),a		;9e21
	dec l			;9e22
	dec e			;9e23
	ld a,090h		;9e24
	ld (hl),a		;9e26
	ld (de),a		;9e27
	ret			;9e28
l9e29h:
	ex de,hl		;9e29
	ld hl,0cb11h		;9e2a
	ld a,(de)		;9e2d
	cp (hl)			;9e2e
	jr c,l9e50h		;9e2f
	dec e			;9e31
	dec l			;9e32
	ld a,(de)		;9e33
	cp (hl)			;9e34
	jr c,l9e50h		;9e35
	ld a,(hl)		;9e37
	add a,050h		;9e38
	daa			;9e3a
	ld (hl),a		;9e3b
	inc l			;9e3c
	ld a,(hl)		;9e3d
	adc a,000h		;9e3e
	daa			;9e40
	ld (hl),a		;9e41
	ld hl,0cb0fh		;9e42
	ld a,(hl)		;9e45
	add a,001h		;9e46
	daa			;9e48
	ret c			;9e49
	ld (hl),a		;9e4a
	ld a,00fh		;9e4b
	call 04af0h		;9e4d
l9e50h:
	ld hl,0cb0dh		;9e50
	ld de,0c924h		;9e53
	ld a,(de)		;9e56
	sub (hl)		;9e57
	jr c,l9e67h		;9e58
	ret nz			;9e5a
	dec l			;9e5b
	dec e			;9e5c
	ld a,(de)		;9e5d
	sub (hl)		;9e5e
	jr c,l9e67h		;9e5f
	ret nz			;9e61
	dec l			;9e62
	dec e			;9e63
	ld a,(de)		;9e64
	sub (hl)		;9e65
	ret nc			;9e66
l9e67h:
	ld hl,0cb0bh		;9e67
	ld de,0c922h		;9e6a
	ld bc,00003h		;9e6d
	ldir			;9e70
	ret			;9e72
	ret			;9e73
	ld h,d			;9e74
	ld de,06201h		;9e75
	ld de,06201h		;9e78
	ld de,06201h		;9e7b
	ld de,06201h		;9e7e
	ld de,06201h		;9e81
	ld de,06201h		;9e84
	ld de,06201h		;9e87
	ld de,06201h		;9e8a
	ld de,06201h		;9e8d
	ld de,06201h		;9e90
	ld de,06201h		;9e93
	ld de,06201h		;9e96
	ld de,06201h		;9e99
	ld de,06201h		;9e9c
	inc d			;9e9f
	ld b,062h		;9ea0
	ld de,06201h		;9ea2
	djnz $+4		;9ea5
	ld h,d			;9ea7
	djnz $+4		;9ea8
	ld h,d			;9eaa
	djnz $+4		;9eab
	ld h,d			;9ead
	djnz l9eb2h		;9eae
	ld l,d			;9eb0
	ld c,l			;9eb1
l9eb2h:
	ex af,af'		;9eb2
	ld h,d			;9eb3
	djnz $+4		;9eb4
	ld h,d			;9eb6
	djnz $+4		;9eb7
	ld h,d			;9eb9
	djnz l9ebfh		;9eba
	ld h,d			;9ebc
	djnz $+4		;9ebd
l9ebfh:
	ld h,d			;9ebf
	ld de,06202h		;9ec0
	djnz $+4		;9ec3
	ld h,d			;9ec5
	djnz l9ecah		;9ec6
	ld l,e			;9ec8
	inc de			;9ec9
l9ecah:
	inc b			;9eca
	ld h,d			;9ecb
	djnz l9ed0h		;9ecc
	ld h,d			;9ece
	inc de			;9ecf
l9ed0h:
	dec b			;9ed0
	ld l,e			;9ed1
	inc d			;9ed2
	inc bc			;9ed3
	ld h,d			;9ed4
	ld de,06202h		;9ed5
	ld (de),a		;9ed8
	inc bc			;9ed9
	ld l,e			;9eda
	inc de			;9edb
	inc b			;9edc
	ld h,d			;9edd
	djnz $+5		;9ede
	ld h,d			;9ee0
	ld de,06201h		;9ee1
	ld de,06b02h		;9ee4
	inc de			;9ee7
	inc b			;9ee8
	ld h,d			;9ee9
	inc de			;9eea
	inc b			;9eeb
	ld l,e			;9eec
	inc d			;9eed
	ld b,062h		;9eee
	ld de,06202h		;9ef0
	ld de,06b01h		;9ef3
	inc de			;9ef6
	dec b			;9ef7
	ld h,d			;9ef8
	ld de,06205h		;9ef9
	ld de,00104h		;9efc
	inc e			;9eff
	ld b,062h		;9f00
	ld de,06202h		;9f02
	ld de,06206h		;9f05
	inc d			;9f08
	inc b			;9f09
	ld h,d			;9f0a
	ld de,06202h		;9f0b
	inc d			;9f0e
	dec b			;9f0f
	ld h,d			;9f10
	inc de			;9f11
	inc b			;9f12
	ld h,d			;9f13
	inc de			;9f14
	ld b,062h		;9f15
	ld de,06201h		;9f17
	djnz l9f1dh		;9f1a
	ld l,e			;9f1c
l9f1dh:
	inc de			;9f1d
	ld b,06bh		;9f1e
	ld hl,06207h		;9f20
	ld de,06204h		;9f23
	ld de,06a01h		;9f26
	ld de,06a01h		;9f29
	ld de,06a01h		;9f2c
	ld c,l			;9f2f
	ex af,af'		;9f30
	nop			;9f31
	ld de,06201h		;9f32
	djnz l9f38h		;9f35
	ld h,d			;9f37
l9f38h:
	ld de,06201h		;9f38
	djnz $+4		;9f3b
	ld h,d			;9f3d
	djnz l9f41h		;9f3e
	ld h,d			;9f40
l9f41h:
	djnz l9f45h		;9f41
	ld h,d			;9f43
	ld (de),a		;9f44
l9f45h:
	ld (bc),a		;9f45
	ld h,d			;9f46
	inc de			;9f47
	ld bc,01162h		;9f48
	ld bc,01162h		;9f4b
	ld bc,01062h		;9f4e
	ld (bc),a		;9f51
	ld h,d			;9f52
	djnz $+4		;9f53
	ld h,d			;9f55
	djnz $+5		;9f56
	ld h,d			;9f58
	ld de,06203h		;9f59
	inc de			;9f5c
	ld b,062h		;9f5d
	ld de,06b03h		;9f5f
	inc de			;9f62
	rlca			;9f63
	ld h,d			;9f64
	ld de,06207h		;9f65
	ld de,06201h		;9f68
	ld de,06201h		;9f6b
	ld de,06201h		;9f6e
	ld de,06b01h		;9f71
	inc de			;9f74
	dec b			;9f75
	ld l,e			;9f76
	inc d			;9f77
	rlca			;9f78
	ld h,d			;9f79
	ld de,06201h		;9f7a
	ld de,06201h		;9f7d
	ld de,06201h		;9f80
	ld de,06201h		;9f83
	ld de,06201h		;9f86
	ld de,06201h		;9f89
	ld de,06201h		;9f8c
	ld de,06201h		;9f8f
	ld de,06201h		;9f92
	ld de,06201h		;9f95
	ld de,06201h		;9f98
	ld de,06201h		;9f9b
	ld de,06a01h		;9f9e
	ld c,l			;9fa1
	ex af,af'		;9fa2
	ld h,d			;9fa3
	ld de,06201h		;9fa4
	ld de,06206h		;9fa7
	ld de,06201h		;9faa
	djnz $+4		;9fad
	ld h,d			;9faf
	ld de,06201h		;9fb0
	ld de,06201h		;9fb3
	ld de,06201h		;9fb6
	ld de,06201h		;9fb9
	ld de,06201h		;9fbc
	djnz l9fc2h		;9fbf
	ld h,d			;9fc1
l9fc2h:
	ld (de),a		;9fc2
	ld bc,01062h		;9fc3
	ld bc,04d6ah		;9fc6
	ex af,af'		;9fc9
	ld h,d			;9fca
	ld de,06201h		;9fcb
	ld de,06203h		;9fce
	inc de			;9fd1
	ld bc,01362h		;9fd2
	ld bc,01462h		;9fd5
	ld bc,04d6ah		;9fd8
	add hl,bc		;9fdb
	ld h,d			;9fdc
	ld c,l			;9fdd
	add hl,bc		;9fde
	ld h,d			;9fdf
	ld c,l			;9fe0
	ld a,(bc)		;9fe1
	ld l,d			;9fe2
	ld c,l			;9fe3
	ex af,af'		;9fe4
	ld l,d			;9fe5
	ld c,l			;9fe6
	add hl,bc		;9fe7
	ld h,d			;9fe8
	inc de			;9fe9
	ld bc,0ff00h		;9fea
	rst 38h			;9fed
	rst 38h			;9fee
	rst 38h			;9fef
	rst 38h			;9ff0
	rst 38h			;9ff1
	rst 38h			;9ff2
	rst 38h			;9ff3
	rst 38h			;9ff4
	rst 38h			;9ff5
	rst 38h			;9ff6
	rst 38h			;9ff7
	rst 38h			;9ff8
	rst 38h			;9ff9
	rst 38h			;9ffa
	rst 38h			;9ffb
	rst 38h			;9ffc
	rst 38h			;9ffd
	rst 38h			;9ffe
	rst 38h			;9fff
