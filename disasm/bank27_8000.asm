; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank27_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank27.bin

	org 08000h

	rst 38h			;8000
	dec de			;8001
	rst 38h			;8002
	nop			;8003
	rst 38h			;8004
	ld de,04000h		;8005
	ld bc,01311h		;8008
	rla			;800b
	dec de			;800c
	ld (bc),a		;800d
	inc l			;800e
	ld l,030h		;800f
	ld (00334h),a		;8011
	dec l			;8014
	cpl			;8015
	ld sp,03533h		;8016
	ld (bc),a		;8019
	ld bc,01e1ch		;801a
	jr nz,$+36		;801d
	inc bc			;801f
	ld bc,01f1dh		;8020
	ld hl,00223h		;8023
	ld (hl),038h		;8026
	ld a,(00d3ch)		;8028
	inc bc			;802b
	scf			;802c
	add hl,sp		;802d
	dec sp			;802e
	dec a			;802f
	ld c,002h		;8030
	ld bc,01814h		;8032
	ld d,01ah		;8035
	inc bc			;8037
	inc l			;8038
	ld l,030h		;8039
	ld (00234h),a		;803b
	dec l			;803e
	cpl			;803f
	ld sp,03533h		;8040
	inc bc			;8043
	ld bc,02a24h		;8044
	jr z,l806bh		;8047
	ld (bc),a		;8049
	ld bc,02b25h		;804a
	add hl,hl		;804d
	inc hl			;804e
	inc bc			;804f
	ld (hl),038h		;8050
	ld a,(00d3ch)		;8052
	ld (bc),a		;8055
	scf			;8056
	add hl,sp		;8057
	dec sp			;8058
	dec a			;8059
	ld c,003h		;805a
	ld bc,01210h		;805c
	ld d,01bh		;805f
	ld (bc),a		;8061
	ld bc,01311h		;8062
	rla			;8065
	dec de			;8066
	inc bc			;8067
	inc c			;8068
	ld b,005h		;8069
l806bh:
	ld b,008h		;806b
	ld (bc),a		;806d
	ld bc,01814h		;806e
	ld d,01ah		;8071
	inc bc			;8073
	ld bc,01915h		;8074
	rla			;8077
	dec de			;8078
	ld (bc),a		;8079
	inc l			;807a
	ld l,030h		;807b
	ld (00334h),a		;807d
	dec l			;8080
	cpl			;8081
	ld sp,03533h		;8082
	ld (bc),a		;8085
	ld bc,02624h		;8086
	jr z,$+36		;8089
	inc bc			;808b
	ld bc,02725h		;808c
	add hl,hl		;808f
	inc hl			;8090
	ld (bc),a		;8091
	ld (hl),038h		;8092
	ld a,(00d3ch)		;8094
	inc bc			;8097
	scf			;8098
	add hl,sp		;8099
	dec sp			;809a
	dec a			;809b
	ld c,002h		;809c
	ld bc,00f15h		;809e
	ld d,01ah		;80a1
	inc bc			;80a3
	inc l			;80a4
	ld l,030h		;80a5
	ld (00234h),a		;80a7
	dec l			;80aa
	cpl			;80ab
	ld sp,03533h		;80ac
	inc bc			;80af
	ld bc,01e1ch		;80b0
	jr nz,$+36		;80b3
	ld (bc),a		;80b5
	ld bc,01f1dh		;80b6
	ld hl,00323h		;80b9
	ld (hl),038h		;80bc
	ld a,(00d3ch)		;80be
	ld (bc),a		;80c1
	scf			;80c2
	add hl,sp		;80c3
	dec sp			;80c4
	dec a			;80c5
	ld c,003h		;80c6
	ld bc,01915h		;80c8
	ld d,01ah		;80cb
	ld (bc),a		;80cd
	inc l			;80ce
	ld l,030h		;80cf
	ld (00334h),a		;80d1
	dec l			;80d4
	cpl			;80d5
	ld sp,03533h		;80d6
	ld (bc),a		;80d9
	ld bc,02e2ch		;80da
	jr nc,$+54		;80dd
	inc bc			;80df
	ld bc,02f2dh		;80e0
	ld sp,00235h		;80e3
	ld bc,00901h		;80e6
	ld a,(bc)		;80e9
	dec bc			;80ea
	and (hl)		;80eb
	ld bc,00101h		;80ec
	ld bc,0a501h		;80ef
	ld bc,00101h		;80f2
	ld bc,0a701h		;80f5
	rst 38h			;80f8
	inc e			;80f9
	ld a,(0ffa4h)		;80fa
	ld de,04000h		;80fd
	rst 38h			;8100
	nop			;8101
	ld bc,00101h		;8102
	ld bc,0a501h		;8105
	ld bc,00101h		;8108
	ld bc,0a701h		;810b
	ld bc,00101h		;810e
	ld bc,0a501h		;8111
	ld bc,00101h		;8114
	ld bc,0a701h		;8117
	ld bc,00101h		;811a
	ld bc,0a501h		;811d
	ld bc,00101h		;8120
	ld bc,0a701h		;8123
	ld bc,00101h		;8126
	ld bc,0a501h		;8129
	rst 38h			;812c
	inc de			;812d
	ld a,(001a4h)		;812e
	ld bc,00101h		;8131
	ld bc,0ffa7h		;8134
	ld a,(de)		;8137
	rst 38h			;8138
	rla			;8139
	ld bc,011ffh		;813a
	dec b			;813d
	jr c,$+3		;813e
	ld bc,05901h		;8140
	ld a,0a5h		;8143
	ld bc,05801h		;8145
	ld e,d			;8148
	ccf			;8149
	ld b,l			;814a
	ld bc,00101h		;814b
	ld d,l			;814e
	ld b,b			;814f
	ld b,(hl)		;8150
	ld bc,00101h		;8151
	ld d,(hl)		;8154
	ld b,c			;8155
	ld b,a			;8156
	ld bc,05701h		;8157
	ld e,e			;815a
	ld b,h			;815b
	ld c,b			;815c
	ld bc,00101h		;815d
	ld e,(hl)		;8160
	ld d,b			;8161
	and a			;8162
	ld bc,00101h		;8163
	ld e,a			;8166
	ld d,c			;8167
	and l			;8168
	ld bc,06888h		;8169
	ld l,(hl)		;816c
	ld c,c			;816d
	ld b,l			;816e
	ld bc,0a889h		;816f
	ld l,a			;8172
	ld b,b			;8173
	ld b,(hl)		;8174
	ld bc,0a98ah		;8175
	ld l,h			;8178
	ld b,c			;8179
	ld b,a			;817a
	ld bc,00101h		;817b
	ld l,l			;817e
	ld b,h			;817f
	ld c,b			;8180
	ld bc,00101h		;8181
	ld h,c			;8184
	ld c,l			;8185
	and a			;8186
	ld bc,00101h		;8187
	ld bc,0a54eh		;818a
	ld bc,00101h		;818d
	ld bc,0a74ch		;8190
	ld bc,00101h		;8193
	ld bc,0a54fh		;8196
	ld bc,00101h		;8199
	ld bc,0a74eh		;819c
	ld bc,00101h		;819f
	ld bc,0a54fh		;81a2
	ld bc,00101h		;81a5
	ld (hl),b		;81a8
	ld d,e			;81a9
	and a			;81aa
	ld bc,00101h		;81ab
	ld h,d			;81ae
	ld d,h			;81af
	and l			;81b0
	ld bc,00101h		;81b1
	ld bc,0a74fh		;81b4
	ld bc,00101h		;81b7
	ld bc,0a54eh		;81ba
	ld bc,00101h		;81bd
	ld bc,0a74fh		;81c0
	ld bc,00101h		;81c3
	ld (hl),b		;81c6
	ld d,e			;81c7
	and a			;81c8
	ld bc,00101h		;81c9
	xor l			;81cc
	xor h			;81cd
	and l			;81ce
	ld bc,00101h		;81cf
	ld bc,0a74fh		;81d2
	ld bc,00101h		;81d5
	ld bc,0a54fh		;81d8
	ld bc,00101h		;81db
	xor d			;81de
	xor e			;81df
	and a			;81e0
	ld bc,00101h		;81e1
	xor l			;81e4
	xor h			;81e5
	and l			;81e6
	ld bc,00101h		;81e7
	ld bc,0a74fh		;81ea
	ld bc,00101h		;81ed
	ld bc,0a54eh		;81f0
	ld bc,00101h		;81f3
	ld bc,0a74fh		;81f6
	ld bc,00101h		;81f9
	ld (hl),b		;81fc
	ld d,e			;81fd
	and l			;81fe
	ld bc,00101h		;81ff
	ld e,h			;8202
	ld b,d			;8203
	ld b,l			;8204
	ld bc,00101h		;8205
	ld e,l			;8208
	ld b,e			;8209
	ld b,(hl)		;820a
	ld bc,06301h		;820b
	ld h,a			;820e
	ld b,c			;820f
	ld b,a			;8210
	ld bc,06401h		;8211
	ld l,e			;8214
	ld b,h			;8215
	ld c,b			;8216
	ld bc,06888h		;8217
	ld l,a			;821a
	ld c,e			;821b
	and a			;821c
	ld bc,06989h		;821d
	ld l,h			;8220
	ld c,d			;8221
	and l			;8222
	ld bc,06a8ah		;8223
	ld l,l			;8226
	ld c,c			;8227
	ld b,l			;8228
	ld bc,00101h		;8229
	ld d,l			;822c
	ld b,b			;822d
	ld b,(hl)		;822e
	ld bc,00101h		;822f
	ld h,(hl)		;8232
	ld b,c			;8233
	ld b,a			;8234
	ld bc,00101h		;8235
	ld (hl),c		;8238
	ld b,h			;8239
	ld c,b			;823a
	ld bc,00101h		;823b
	ld h,d			;823e
	ld d,h			;823f
	and a			;8240
	ld bc,00101h		;8241
	ld bc,0a54fh		;8244
	ld bc,00101h		;8247
	ld bc,0a74ch		;824a
	ld bc,00101h		;824d
	ld (hl),b		;8250
	ld d,e			;8251
	and l			;8252
	ld bc,00101h		;8253
	ld h,d			;8256
	ld d,h			;8257
	and l			;8258
	ld bc,00101h		;8259
	ld bc,0a552h		;825c
	rst 38h			;825f
	rra			;8260
	dec b			;8261
	rst 38h			;8262
	ld (de),a		;8263
	ld bc,00101h		;8264
	ld bc,0a74fh		;8267
	ld bc,00101h		;826a
	ld (hl),b		;826d
	ld d,e			;826e
	and l			;826f
	ld bc,00101h		;8270
	ld h,b			;8273
	ld c,c			;8274
	ld b,l			;8275
	ld bc,00101h		;8276
	ld d,l			;8279
	ld b,b			;827a
	ld b,(hl)		;827b
	ld bc,00101h		;827c
	ld d,(hl)		;827f
	ld b,c			;8280
	ld b,a			;8281
	ld bc,05701h		;8282
	ld e,e			;8285
	ld b,h			;8286
	ld c,b			;8287
	ld bc,00101h		;8288
	ld e,a			;828b
	ld c,e			;828c
	and a			;828d
	ld bc,0018bh		;828e
	ld l,(hl)		;8291
	ld c,d			;8292
	and l			;8293
	ld bc,0728ch		;8294
	ld l,a			;8297
	ld c,c			;8298
	ld b,l			;8299
	ld bc,0738dh		;829a
	ld l,h			;829d
	ld b,b			;829e
	ld b,(hl)		;829f
	ld a,d			;82a0
	adc a,(hl)		;82a1
l82a2h:
	ld (hl),l		;82a2
	ld l,a			;82a3
	ld b,c			;82a4
	nop			;82a5
	ld a,e			;82a6
	adc a,a			;82a7
	ld h,l			;82a8
	ld l,h			;82a9
	nop			;82aa
	nop			;82ab
	ld a,h			;82ac
	adc a,a			;82ad
	ld h,l			;82ae
	nop			;82af
	nop			;82b0
	nop			;82b1
	ld a,h			;82b2
	adc a,a			;82b3
	nop			;82b4
	nop			;82b5
	nop			;82b6
	nop			;82b7
	ld a,h			;82b8
	nop			;82b9
	nop			;82ba
	nop			;82bb
	nop			;82bc
	nop			;82bd
	cp 0ffh			;82be
	ld de,03801h		;82c0
	rst 38h			;82c3
	inc b			;82c4
	rst 38h			;82c5
	dec de			;82c6
	ld bc,00101h		;82c7
	ld bc,00101h		;82ca
	ld bc,07601h		;82cd
	ld (hl),a		;82d0
	ld a,b			;82d1
	ld a,c			;82d2
	ld a,(hl)		;82d3
	ld a,a			;82d4
	ld a,l			;82d5
	ld bc,00101h		;82d6
	ld bc,00101h		;82d9
	ld bc,00101h		;82dc
	add a,h			;82df
	add a,l			;82e0
	add a,l			;82e1
	add a,l			;82e2
	sub b			;82e3
	add a,l			;82e4
	rst 38h			;82e5
	ld de,03802h		;82e6
	ld bc,00101h		;82e9
	ld bc,00101h		;82ec
	ld bc,00101h		;82ef
	ld bc,00101h		;82f2
	ld bc,00101h		;82f5
	ld bc,00101h		;82f8
	ld bc,00101h		;82fb
	ld bc,00101h		;82fe
	ld bc,00101h		;8301
	ld bc,00101h		;8304
	rst 38h			;8307
	ld de,03803h		;8308
	ld bc,00101h		;830b
	ld bc,00101h		;830e
	ld bc,00101h		;8311
	ld bc,00101h		;8314
	ld bc,00101h		;8317
	ld bc,00101h		;831a
	ld bc,00101h		;831d
	ld bc,00101h		;8320
	ld bc,00101h		;8323
	ld bc,00101h		;8326
	rst 38h			;8329
	dec de			;832a
	rst 38h			;832b
	rla			;832c
	ld bc,000ffh		;832d
	rst 38h			;8330
	ld de,03804h		;8331
	rst 38h			;8334
	dec e			;8335
	ld bc,00101h		;8336
l8339h:
	ld bc,07d90h		;8339
	ld bc,00101h		;833c
	ld bc,07985h		;833f
	ld bc,00101h		;8342
	ld bc,07d91h		;8345
	ld bc,00101h		;8348
	ld bc,07e85h		;834b
	ld bc,00101h		;834e
	ld bc,07f86h		;8351
	ld bc,l9401h		;8354
	sbc a,b			;8357
	sbc a,h			;8358
	add a,b			;8359
	ld bc,l9501h		;835a
	sbc a,c			;835d
	sbc a,l			;835e
	add a,c			;835f
	ld bc,l9601h		;8360
	sbc a,d			;8363
	sbc a,(hl)		;8364
	add a,d			;8365
	ld bc,l9701h		;8366
	sbc a,e			;8369
	sbc a,a			;836a
	add a,e			;836b
	ld bc,00101h		;836c
	ld bc,07e87h		;836f
	ld bc,00101h		;8372
	ld bc,07f86h		;8375
	ld bc,00101h		;8378
	ld bc,080a0h		;837b
	ld bc,00101h		;837e
	ld bc,081a1h		;8381
	ld bc,00101h		;8384
	ld bc,l82a2h		;8387
	ld bc,00101h		;838a
	ld bc,l83a3h		;838d
	rst 38h			;8390
	djnz l8339h		;8391
	and e			;8393
	ld bc,00101h		;8394
	ld bc,l9392h		;8397
	ld bc,00101h		;839a
	ld bc,0a401h		;839d
	ld bc,00101h		;83a0
l83a3h:
	ld bc,l9201h		;83a3
	rst 38h			;83a6
	jr $+1			;83a7
	dec de			;83a9
	rst 38h			;83aa
	rla			;83ab
	ld bc,00bffh		;83ac
	rst 38h			;83af
	add hl,de		;83b0
	nop			;83b1
	ld bc,00101h		;83b2
	ld bc,00101h		;83b5
	ld bc,00101h		;83b8
	ld bc,00101h		;83bb
	ld bc,00101h		;83be
	rst 38h			;83c1
	inc de			;83c2
	ld c,l			;83c3
	and h			;83c4
	ld bc,00101h		;83c5
	ld bc,00101h		;83c8
	ld bc,00101h		;83cb
	ld bc,00101h		;83ce
	ld bc,00101h		;83d1
	rst 38h			;83d4
	ld de,0b805h		;83d5
	ld bc,00101h		;83d8
	ld bc,00101h		;83db
	ld bc,00101h		;83de
	ld bc,00101h		;83e1
	ld bc,00101h		;83e4
	ld bc,00101h		;83e7
	ld bc,00101h		;83ea
	ld bc,00101h		;83ed
	ld bc,00101h		;83f0
	ld bc,00101h		;83f3
	ld bc,00101h		;83f6
	ld bc,00101h		;83f9
	ld bc,00101h		;83fc
	ld bc,00101h		;83ff
	ld bc,00101h		;8402
	ld bc,00101h		;8405
	ld bc,00101h		;8408
	ld bc,00101h		;840b
	ld bc,00101h		;840e
	ld bc,00101h		;8411
	rst 38h			;8414
	rla			;8415
	ld (bc),a		;8416
	rst 38h			;8417
	nop			;8418
	ld bc,00101h		;8419
	ld bc,00101h		;841c
l841fh:
	ld bc,00101h		;841f
	ld bc,00101h		;8422
	ld bc,00101h		;8425
	ld bc,00101h		;8428
	ld bc,00101h		;842b
	ld bc,00101h		;842e
	rst 38h			;8431
	ld de,00806h		;8432
	cp 0ffh			;8435
	ld e,0ffh		;8437
	ld d,014h		;8439
	ld bc,01030h		;843b
	ld d,b			;843e
	ld hl,03470h		;843f
	dec h			;8442
	ld b,d			;8443
	ld (04752h),hl		;8444
	sub h			;8447
	ld b,a			;8448
	or (hl)			;8449
	ld h,0c3h		;844a
	cp 000h			;844c
	nop			;844e
	inc bc			;844f
	ld de,02214h		;8450
	dec h			;8453
	inc sp			;8454
	ld b,a			;8455
	ld b,l			;8456
	ld (07152h),hl		;8457
	sub e			;845a
	ld (hl),e		;845b
	or l			;845c
	jr nc,l841fh		;845d
	cp 0feh			;845f
	rst 38h			;8461
	dec de			;8462
	rst 38h			;8463
	nop			;8464
	dec b			;8465
	ld c,(hl)		;8466
	ld c,d			;8467
	ld d,h			;8468
	dec b			;8469
	ld h,004h		;846a
	ld c,a			;846c
	ld c,c			;846d
	ld d,l			;846e
	inc b			;846f
	daa			;8470
	dec b			;8471
	ld d,c			;8472
	ld c,d			;8473
	ld d,(hl)		;8474
	dec b			;8475
	ld h,004h		;8476
	ld d,d			;8478
	ld c,d			;8479
	ld d,e			;847a
	inc b			;847b
	daa			;847c
	dec b			;847d
	ld c,(hl)		;847e
	ld c,d			;847f
	ld d,h			;8480
	dec b			;8481
	ld h,004h		;8482
	ld c,a			;8484
	ld c,c			;8485
	ld d,l			;8486
	inc b			;8487
	daa			;8488
	dec b			;8489
	ld d,c			;848a
	ld c,d			;848b
	ld d,(hl)		;848c
	dec b			;848d
	ld h,004h		;848e
	ld d,d			;8490
	ld c,d			;8491
	ld d,e			;8492
	inc b			;8493
	daa			;8494
	inc b			;8495
	ld c,(hl)		;8496
	ld c,d			;8497
	ld d,h			;8498
	inc b			;8499
	ld hl,(04f05h)		;849a
	ld c,c			;849d
	ld d,l			;849e
	inc b			;849f
	daa			;84a0
	inc b			;84a1
	ld d,c			;84a2
	ld c,d			;84a3
	ld d,(hl)		;84a4
	dec b			;84a5
	ld h,005h		;84a6
	ld d,d			;84a8
	ld c,d			;84a9
	ld d,e			;84aa
	inc b			;84ab
	daa			;84ac
	inc b			;84ad
	ld c,(hl)		;84ae
	ld c,d			;84af
	ld d,h			;84b0
	inc e			;84b1
	ld hl,(04f05h)		;84b2
	ld c,c			;84b5
	ld d,l			;84b6
	inc b			;84b7
	daa			;84b8
	inc b			;84b9
	ld d,c			;84ba
	ld c,d			;84bb
	ld d,(hl)		;84bc
	dec b			;84bd
	ld h,005h		;84be
	ld d,d			;84c0
	ld c,d			;84c1
	ld d,e			;84c2
	inc b			;84c3
	daa			;84c4
	ld (de),a		;84c5
	ld c,(hl)		;84c6
	ld c,d			;84c7
	ld d,h			;84c8
	inc b			;84c9
	daa			;84ca
	ld (bc),a		;84cb
	ld b,049h		;84cc
	ld d,l			;84ce
	dec b			;84cf
	inc e			;84d0
	inc bc			;84d1
	rlca			;84d2
	ld c,d			;84d3
	ld d,(hl)		;84d4
	inc b			;84d5
	ld h,02ah		;84d6
	ld d,d			;84d8
	ld c,d			;84d9
	ld d,e			;84da
	dec b			;84db
	daa			;84dc
	add hl,hl		;84dd
	ld c,(hl)		;84de
	ld c,d			;84df
	ld d,h			;84e0
	inc e			;84e1
	ld hl,(04f2ah)		;84e2
	ld c,c			;84e5
	ld d,l			;84e6
	ld h,01ch		;84e7
	inc bc			;84e9
	rlca			;84ea
	ld c,d			;84eb
	ld d,(hl)		;84ec
	inc b			;84ed
	ld h,02ah		;84ee
	inc c			;84f0
	ld c,d			;84f1
	ld d,e			;84f2
	dec b			;84f3
	daa			;84f4
	rrca			;84f5
	ld c,(hl)		;84f6
	ld c,d			;84f7
	ld d,h			;84f8
	inc b			;84f9
	ld h,001h		;84fa
	ld c,a			;84fc
	ld c,c			;84fd
	ld d,l			;84fe
	add hl,hl		;84ff
	inc e			;8500
	ld (bc),a		;8501
	ld b,04ah		;8502
	ld d,(hl)		;8504
	add hl,hl		;8505
	inc e			;8506
	inc de			;8507
	dec c			;8508
	ld c,d			;8509
	ld d,e			;850a
	dec b			;850b
	daa			;850c
	rrca			;850d
	ld c,(hl)		;850e
	ld c,d			;850f
	ld d,h			;8510
	inc b			;8511
	ld h,001h		;8512
	ld c,a			;8514
	ld c,c			;8515
	ld d,l			;8516
	dec b			;8517
	daa			;8518
	ld (de),a		;8519
	ld d,c			;851a
	ld c,d			;851b
	ld d,(hl)		;851c
	inc b			;851d
	ld h,001h		;851e
	ld d,d			;8520
	ld c,d			;8521
	ld d,e			;8522
	dec b			;8523
	daa			;8524
	ld (de),a		;8525
	ld c,(hl)		;8526
	ld c,d			;8527
	ld d,h			;8528
	inc b			;8529
	ld h,001h		;852a
	ld c,a			;852c
	ld c,c			;852d
	ld d,l			;852e
	dec b			;852f
	daa			;8530
	ld (de),a		;8531
	ld d,c			;8532
	ld c,d			;8533
	ld d,(hl)		;8534
	inc b			;8535
	ld h,002h		;8536
	ld c,(hl)		;8538
	ld c,d			;8539
	ld d,e			;853a
	dec b			;853b
	daa			;853c
	ld hl,(04a4dh)		;853d
	ld d,h			;8540
	dec b			;8541
	ld hl,(04d2ah)		;8542
	ld c,d			;8545
	ld d,e			;8546
	nop			;8547
	ld hl,(05110h)		;8548
	ld c,c			;854b
	ld d,(hl)		;854c
	inc b			;854d
	add hl,sp		;854e
	rst 38h			;854f
	nop			;8550
	rst 38h			;8551
	ld (de),a		;8552
	ld de,04a52h		;8553
	ld d,e			;8556
	dec b			;8557
	dec sp			;8558
	ld (de),a		;8559
	ld c,(hl)		;855a
	ld c,d			;855b
	ld d,h			;855c
	rla			;855d
	inc sp			;855e
	ld (bc),a		;855f
	ld b,049h		;8560
	ld d,l			;8562
	dec (hl)		;8563
	ld (hl),013h		;8564
	dec c			;8566
	ld c,d			;8567
	ld d,(hl)		;8568
	inc b			;8569
	dec (hl)		;856a
	dec d			;856b
	ld d,c			;856c
	ld c,d			;856d
	ld d,e			;856e
	nop			;856f
	dec b			;8570
	ld (de),a		;8571
	ld c,(hl)		;8572
	ld c,d			;8573
	ld d,h			;8574
	dec b			;8575
	inc b			;8576
	inc bc			;8577
	rlca			;8578
	ld c,c			;8579
	ld d,l			;857a
	inc b			;857b
	nop			;857c
	add hl,hl		;857d
	ld hl,(0564ah)		;857e
	nop			;8581
	inc b			;8582
	add hl,hl		;8583
	ld hl,(03129h)		;8584
	scf			;8587
	inc hl			;8588
	inc bc			;8589
	ld hl,(01c29h)		;858a
	add hl,hl		;858d
	inc e			;858e
	nop			;858f
	ld hl,(01c29h)		;8590
	add hl,hl		;8593
	ld hl,(00000h)		;8594
	add hl,hl		;8597
	inc e			;8598
	add hl,hl		;8599
	ld hl,(00000h)		;859a
	nop			;859d
	inc e			;859e
	add hl,hl		;859f
	ld hl,(00000h)		;85a0
	nop			;85a3
	nop			;85a4
	add hl,hl		;85a5
	inc e			;85a6
	nop			;85a7
	nop			;85a8
	nop			;85a9
	nop			;85aa
	nop			;85ab
	inc e			;85ac
	rst 38h			;85ad
	ld a,(de)		;85ae
	rst 38h			;85af
	dec de			;85b0
	rst 38h			;85b1
	ld bc,02929h		;85b2
	jr c,l85bbh		;85b5
	dec b			;85b7
	nop			;85b8
	inc b			;85b9
	dec b			;85ba
l85bbh:
	nop			;85bb
	inc b			;85bc
	nop			;85bd
	inc b			;85be
	inc e			;85bf
	inc e			;85c0
	inc e			;85c1
	inc l			;85c2
	ld hl,(02a2ch)		;85c3
	inc b			;85c6
	dec b			;85c7
	inc b			;85c8
	inc b			;85c9
	nop			;85ca
	inc b			;85cb
	nop			;85cc
	inc l			;85cd
	inc l			;85ce
	inc l			;85cf
	inc l			;85d0
	add hl,hl		;85d1
	add hl,hl		;85d2
	add hl,hl		;85d3
	nop			;85d4
	inc b			;85d5
	ld a,005h		;85d6
	inc b			;85d8
	dec b			;85d9
	inc b			;85da
	inc e			;85db
	inc e			;85dc
	inc e			;85dd
	inc e			;85de
	inc e			;85df
	inc l			;85e0
	inc e			;85e1
	inc l			;85e2
	inc e			;85e3
	dec e			;85e4
	ld c,c			;85e5
	ld c,d			;85e6
	ld c,d			;85e7
	ld c,c			;85e8
	dec hl			;85e9
	dec hl			;85ea
	dec hl			;85eb
	dec hl			;85ec
	dec hl			;85ed
	dec hl			;85ee
	add hl,hl		;85ef
	add hl,hl		;85f0
	inc l			;85f1
	ld e,005h		;85f2
	inc b			;85f4
	nop			;85f5
	inc b			;85f6
	add hl,hl		;85f7
	add hl,hl		;85f8
	add hl,hl		;85f9
	add hl,hl		;85fa
	add hl,hl		;85fb
	add hl,hl		;85fc
	add hl,hl		;85fd
	inc e			;85fe
	inc e			;85ff
	dec e			;8600
	ld c,d			;8601
	ld c,c			;8602
	ld c,d			;8603
	ld c,d			;8604
	ld c,d			;8605
	ld c,c			;8606
	ld c,d			;8607
	dec h			;8608
	jr z,l8630h		;8609
	jr z,l8632h		;860b
	add hl,hl		;860d
	ld e,000h		;860e
	inc b			;8610
	dec b			;8611
	nop			;8612
	inc b			;8613
	dec b			;8614
	inc b			;8615
	dec b			;8616
	inc l			;8617
	inc l			;8618
	inc l			;8619
	inc l			;861a
	ld d,l			;861b
	inc e			;861c
	inc e			;861d
	inc e			;861e
	ld c,h			;861f
	ld c,h			;8620
	ld c,h			;8621
	ld c,h			;8622
	ld c,h			;8623
	ld c,h			;8624
	ld c,h			;8625
	ld hl,(02a2ah)		;8626
	ld d,l			;8629
	ld d,l			;862a
	add hl,hl		;862b
	add hl,hl		;862c
	ld d,c			;862d
	ld d,d			;862e
	rra			;862f
l8630h:
	ld c,a			;8630
	ld d,c			;8631
l8632h:
	ld d,d			;8632
	ld c,(hl)		;8633
	ld d,d			;8634
	ld d,c			;8635
	ld d,d			;8636
	ld d,l			;8637
	ld d,l			;8638
	ld d,l			;8639
	inc e			;863a
	inc e			;863b
	inc e			;863c
	ld e,056h		;863d
	ld d,e			;863f
	ld d,h			;8640
	ld d,e			;8641
	ld d,(hl)		;8642
	ld d,e			;8643
	ld d,(hl)		;8644
	ld d,l			;8645
	ld d,l			;8646
	ld d,l			;8647
	ld d,l			;8648
	add hl,hl		;8649
	add hl,hl		;864a
	dec e			;864b
	add hl,de		;864c
	add hl,de		;864d
	add hl,de		;864e
	add hl,de		;864f
	add hl,de		;8650
	add hl,de		;8651
	add hl,de		;8652
	ld d,l			;8653
	ld d,l			;8654
	ld d,l			;8655
	ld d,l			;8656
	ld d,l			;8657
	inc e			;8658
	inc e			;8659
	inc e			;865a
	dec sp			;865b
	add hl,sp		;865c
	ld a,(03a39h)		;865d
	dec sp			;8660
	ld d,l			;8661
	ld d,l			;8662
	ld d,l			;8663
	ld d,l			;8664
	ld d,l			;8665
	ld d,l			;8666
	rst 38h			;8667
	dec de			;8668
	rst 38h			;8669
	nop			;866a
	inc l			;866b
	ld hl,(05351h)		;866c
	add hl,de		;866f
	add hl,sp		;8670
	inc l			;8671
	ld hl,(0564dh)		;8672
	add hl,de		;8675
	ld hl,(04c11h)		;8676
	ld d,c			;8679
	ld d,e			;867a
	add hl,de		;867b
	dec sp			;867c
	ld (de),a		;867d
	ld c,h			;867e
	ld c,(hl)		;867f
	ld d,h			;8680
	add hl,de		;8681
	add hl,sp		;8682
	ld de,04f4ch		;8683
	ld d,l			;8686
	inc d			;8687
	jr $+1			;8688
	rla			;868a
	ld bc,04c12h		;868b
	ld d,d			;868e
	ld d,(hl)		;868f
	add hl,de		;8690
	dec sp			;8691
	ld de,04f4ch		;8692
	ld d,l			;8695
	add hl,de		;8696
	add hl,sp		;8697
	ld (de),a		;8698
	ld c,h			;8699
	ld d,d			;869a
	ld d,(hl)		;869b
	add hl,de		;869c
	ld a,(00918h)		;869d
	ld d,c			;86a0
	ld d,e			;86a1
	ld a,(de)		;86a2
	jr $+20			;86a3
	ld c,h			;86a5
	ld d,d			;86a6
	ld d,(hl)		;86a7
	add hl,de		;86a8
	add hl,sp		;86a9
	ld d,b			;86aa
	ld c,h			;86ab
	ld c,a			;86ac
	ld d,l			;86ad
	add hl,de		;86ae
	ld a,(04c12h)		;86af
	ld d,d			;86b2
	ld d,(hl)		;86b3
	add hl,de		;86b4
	dec sp			;86b5
	jr l86f9h		;86b6
	ld d,c			;86b8
	ld d,e			;86b9
	add hl,de		;86ba
	add hl,sp		;86bb
	dec de			;86bc
	ld b,c			;86bd
	ld c,(hl)		;86be
	ld d,h			;86bf
	add hl,de		;86c0
	ld a,(04c12h)		;86c1
	ld c,a			;86c4
	ld d,l			;86c5
	add hl,de		;86c6
	inc e			;86c7
	ld d,b			;86c8
	ld c,h			;86c9
	ld d,d			;86ca
	ld d,(hl)		;86cb
	ld a,(de)		;86cc
	jr $+20			;86cd
	ld c,h			;86cf
	ld d,c			;86d0
	ld d,e			;86d1
	dec de			;86d2
	inc h			;86d3
	inc a			;86d4
	ld c,h			;86d5
	ld c,(hl)		;86d6
	ld d,h			;86d7
	add hl,de		;86d8
	add hl,sp		;86d9
	ld (de),a		;86da
	ld c,h			;86db
	ld d,c			;86dc
	ld d,e			;86dd
	add hl,de		;86de
	ld a,(04c3ch)		;86df
	ld d,d			;86e2
	ld d,(hl)		;86e3
	add hl,de		;86e4
	dec sp			;86e5
	ld (de),a		;86e6
	ld c,h			;86e7
	ld c,a			;86e8
	ld d,l			;86e9
	add hl,de		;86ea
	add hl,sp		;86eb
	ld a,(de)		;86ec
	jr l86f9h		;86ed
	ld d,h			;86ef
	add hl,de		;86f0
	ld a,(de)		;86f1
	ld (de),a		;86f2
	ld c,h			;86f3
	ld d,c			;86f4
	ld d,e			;86f5
	add hl,de		;86f6
	dec sp			;86f7
	inc a			;86f8
l86f9h:
	ld c,h			;86f9
	ld d,d			;86fa
	ld d,(hl)		;86fb
	add hl,de		;86fc
	add hl,sp		;86fd
	ld (de),a		;86fe
	ld c,h			;86ff
	ld c,a			;8700
	ld d,l			;8701
	add hl,de		;8702
	ld a,(04c3ch)		;8703
	ld c,(hl)		;8706
	ld d,h			;8707
	add hl,de		;8708
	dec sp			;8709
	ld (de),a		;870a
	ld c,h			;870b
	ld d,c			;870c
	ld d,e			;870d
	add hl,de		;870e
	add hl,sp		;870f
	inc a			;8710
	ld c,h			;8711
	ld c,(hl)		;8712
	ld d,h			;8713
	add hl,de		;8714
	ld a,(04c12h)		;8715
	ld d,c			;8718
	ld d,e			;8719
	add hl,de		;871a
	dec sp			;871b
	ld a,(bc)		;871c
	ld c,h			;871d
	ld d,d			;871e
	ld a,(de)		;871f
	jr l872ch		;8720
	ld (de),a		;8722
	ld c,h			;8723
	ld d,c			;8724
	ld d,e			;8725
	add hl,de		;8726
	ld a,(04c3ch)		;8727
	ld d,d			;872a
	ld d,(hl)		;872b
l872ch:
	add hl,de		;872c
	dec sp			;872d
	jr l875ah		;872e
	ld c,a			;8730
	ld d,l			;8731
	add hl,de		;8732
	ld a,(de)		;8733
	dec de			;8734
	ld hl,(05652h)		;8735
	add hl,de		;8738
	dec de			;8739
	rst 38h			;873a
	rla			;873b
	ld bc,000ffh		;873c
	inc a			;873f
	ld c,h			;8740
	ld d,c			;8741
	ld d,e			;8742
	add hl,de		;8743
	add hl,sp		;8744
	ld (de),a		;8745
	ld c,h			;8746
	ld d,d			;8747
	ld d,(hl)		;8748
	add hl,de		;8749
	ld a,(04c3ch)		;874a
	ld c,a			;874d
	ld d,l			;874e
	add hl,de		;874f
	dec sp			;8750
	ld (de),a		;8751
	ld c,h			;8752
	ld c,(hl)		;8753
	ld d,h			;8754
	add hl,de		;8755
	dec hl			;8756
	ld hl,(0202ah)		;8757
l875ah:
	ld b,d			;875a
	add hl,hl		;875b
	inc l			;875c
	inc l			;875d
	add hl,hl		;875e
	jr nz,l87a3h		;875f
	add hl,hl		;8761
	inc l			;8762
	ld hl,(03f46h)		;8763
	jr nc,$+77		;8766
	ld hl,(0412ch)		;8768
	ld c,(hl)		;876b
	ld d,h			;876c
	ld b,b			;876d
	inc l			;876e
	ld hl,(05141h)		;876f
	ld d,e			;8772
	ld b,b			;8773
	ld hl,(04c04h)		;8774
	ld c,(hl)		;8777
	ld d,h			;8778
	add hl,de		;8779
	dec b			;877a
	dec b			;877b
	ld c,h			;877c
	ld d,c			;877d
	ld d,e			;877e
	add hl,de		;877f
	nop			;8780
	inc e			;8781
	inc l			;8782
	ld hl,(01921h)		;8783
	dec sp			;8786
	inc e			;8787
	inc l			;8788
	ld hl,(01953h)		;8789
	add hl,hl		;878c
	inc e			;878d
	inc l			;878e
	ld hl,(02f2eh)		;878f
	add hl,hl		;8792
	cp 0ffh			;8793
	ld a,(de)		;8795
	rst 38h			;8796
	dec de			;8797
	rst 38h			;8798
	rla			;8799
	ld bc,003ffh		;879a
	add hl,hl		;879d
	add hl,hl		;879e
	add hl,hl		;879f
	inc b			;87a0
	nop			;87a1
	inc (hl)		;87a2
l87a3h:
	inc b			;87a3
	ld sp,04448h		;87a4
	ld hl,(04a4ah)		;87a7
	ld c,c			;87aa
	ld c,d			;87ab
	inc hl			;87ac
	jr c,$+6		;87ad
	dec b			;87af
	nop			;87b0
	inc b			;87b1
	ld h,02ah		;87b2
	ld hl,(04743h)		;87b4
	ld c,d			;87b7
	ld c,c			;87b8
	ld c,d			;87b9
	ld hl,(02a2ah)		;87ba
	ld (hl),039h		;87bd
	ld hl,(00400h)		;87bf
	ld b,l			;87c2
	inc b			;87c3
	inc hl			;87c4
	add hl,hl		;87c5
	add hl,hl		;87c6
	add hl,hl		;87c7
	inc b			;87c8
	nop			;87c9
	dec b			;87ca
	nop			;87cb
	inc hl			;87cc
	inc e			;87cd
	inc e			;87ce
	inc e			;87cf
	nop			;87d0
	dec b			;87d1
	ld hl,(03339h)		;87d2
	ld c,b			;87d5
	inc (hl)		;87d6
	ld hl,(04a47h)		;87d7
	add hl,hl		;87da
	add hl,hl		;87db
	add hl,hl		;87dc
	ld b,e			;87dd
	ld c,c			;87de
	ld b,h			;87df
	ld c,d			;87e0
	ld c,c			;87e1
	ld hl,(02a2ah)		;87e2
	jr c,l87e7h		;87e5
l87e7h:
	inc b			;87e7
	dec b			;87e8
	ld b,a			;87e9
	dec b			;87ea
	nop			;87eb
	scf			;87ec
	inc e			;87ed
	inc e			;87ee
	inc e			;87ef
	inc b			;87f0
	nop			;87f1
	inc b			;87f2
	ld a,03dh		;87f3
	add hl,hl		;87f5
	add hl,hl		;87f6
	add hl,hl		;87f7
	ld c,d			;87f8
	ld c,c			;87f9
	add hl,hl		;87fa
	add hl,hl		;87fb
	add hl,hl		;87fc
	ld c,b			;87fd
	inc (hl)		;87fe
	ld hl,(00400h)		;87ff
	ld hl,(02a2ah)		;8802
	jr c,l880ch		;8805
	nop			;8807
	inc b			;8808
	dec b			;8809
	nop			;880a
	inc hl			;880b
l880ch:
	ld hl,(00038h)		;880c
	inc b			;880f
	ld b,a			;8810
	inc b			;8811
	inc b			;8812
	nop			;8813
	inc b			;8814
	dec l			;8815
	dec l			;8816
	dec l			;8817
	ld c,d			;8818
	ld c,c			;8819
	ld c,d			;881a
	ld (02932h),hl		;881b
	add hl,hl		;881e
	add hl,hl		;881f
	inc b			;8820
	dec b			;8821
	nop			;8822
	inc hl			;8823
	add hl,hl		;8824
	inc e			;8825
	inc e			;8826
	inc e			;8827
	dec b			;8828
	nop			;8829
	inc e			;882a
	inc e			;882b
	inc e			;882c
	rst 38h			;882d
	dec de			;882e
	rst 38h			;882f
	rla			;8830
	ld bc,000ffh		;8831
	rst 38h			;8834
	dec e			;8835
	inc a			;8836
	inc b			;8837
	dec b			;8838
	ld b,d			;8839
	ld d,027h		;883a
	inc a			;883c
	dec b			;883d
	nop			;883e
	ld c,d			;883f
	dec b			;8840
	ld h,050h		;8841
	ld c,d			;8843
	inc b			;8844
	ld c,d			;8845
	inc b			;8846
	daa			;8847
	inc a			;8848
	ld c,d			;8849
	ld b,a			;884a
	ld c,d			;884b
	ld c,d			;884c
	ld h,050h		;884d
	dec b			;884f
	nop			;8850
	ld c,d			;8851
	dec b			;8852
	daa			;8853
	inc a			;8854
	nop			;8855
	inc b			;8856
	ld c,c			;8857
	nop			;8858
	ld h,018h		;8859
	ld a,(bc)		;885b
	dec b			;885c
	ld c,d			;885d
	ld a,(de)		;885e
	jr l889dh		;885f
	dec b			;8861
	nop			;8862
	ld c,d			;8863
	dec b			;8864
	ld a,(01affh)		;8865
	ld d,b			;8868
	inc b			;8869
	inc b			;886a
	ld c,c			;886b
	nop			;886c
	dec sp			;886d
	inc a			;886e
	ld b,a			;886f
	dec b			;8870
	ld c,d			;8871
	inc b			;8872
	ld h,050h		;8873
	dec b			;8875
	nop			;8876
	ld c,d			;8877
	dec b			;8878
	ld a,(01a18h)		;8879
	jr l8888h		;887c
	nop			;887e
	ld a,(de)		;887f
	ld d,b			;8880
	inc b			;8881
	dec b			;8882
	ld c,c			;8883
	inc b			;8884
	add hl,sp		;8885
	inc a			;8886
	dec b			;8887
l8888h:
	nop			;8888
	ld c,d			;8889
	dec b			;888a
	ld a,(00050h)		;888b
	inc b			;888e
	ld c,d			;888f
	inc b			;8890
	dec sp			;8891
	inc a			;8892
	inc b			;8893
	dec b			;8894
	ld c,d			;8895
	ld a,(de)		;8896
	jr $+26			;8897
	ld a,(bc)		;8899
	nop			;889a
	ld c,d			;889b
	dec b			;889c
l889dh:
	ld a,(0003ch)		;889d
	inc b			;88a0
	ld c,c			;88a1
	nop			;88a2
	add hl,sp		;88a3
	ld d,b			;88a4
	inc b			;88a5
	dec b			;88a6
	ld c,d			;88a7
	inc b			;88a8
	dec sp			;88a9
	inc a			;88aa
	dec b			;88ab
	nop			;88ac
	inc b			;88ad
	dec b			;88ae
	add hl,sp		;88af
	ld hl,(00400h)		;88b0
	dec b			;88b3
	inc b			;88b4
	ld a,(0042ah)		;88b5
	dec b			;88b8
	inc b			;88b9
	dec b			;88ba
	add hl,sp		;88bb
	ld hl,(02a05h)		;88bc
	inc hl			;88bf
	inc hl			;88c0
	inc e			;88c1
	ld hl,(02a00h)		;88c2
	dec de			;88c5
	inc h			;88c6
	inc e			;88c7
	nop			;88c8
	inc b			;88c9
	dec b			;88ca
	nop			;88cb
	inc b			;88cc
	nop			;88cd
	dec b			;88ce
	nop			;88cf
	inc b			;88d0
	dec b			;88d1
	nop			;88d2
	inc b			;88d3
	inc b			;88d4
	dec b			;88d5
	nop			;88d6
	inc b			;88d7
	dec b			;88d8
	nop			;88d9
	nop			;88da
	inc b			;88db
	dec b			;88dc
	nop			;88dd
	inc b			;88de
	dec b			;88df
	rst 38h			;88e0
	add hl,de		;88e1
	nop			;88e2
	dec b			;88e3
	nop			;88e4
	inc b			;88e5
	dec b			;88e6
	nop			;88e7
	inc b			;88e8
	inc b			;88e9
	dec b			;88ea
	nop			;88eb
	inc b			;88ec
	dec b			;88ed
	nop			;88ee
	nop			;88ef
	inc b			;88f0
	dec b			;88f1
	nop			;88f2
	inc b			;88f3
	dec b			;88f4
	inc b			;88f5
	dec b			;88f6
	nop			;88f7
	inc b			;88f8
	nop			;88f9
	dec b			;88fa
	rst 38h			;88fb
	inc de			;88fc
	ld c,d			;88fd
	xor c			;88fe
l88ffh:
	inc b			;88ff
	dec b			;8900
	nop			;8901
	inc b			;8902
	nop			;8903
	dec b			;8904
	rst 38h			;8905
	jr l895fh		;8906
	ld d,a			;8908
	ld d,a			;8909
	ld d,a			;890a
	ld d,a			;890b
	ld d,a			;890c
	rst 38h			;890d
	inc de			;890e
	ld e,l			;890f
	xor c			;8910
	rst 38h			;8911
	ld de,02001h		;8912
	rst 38h			;8915
	rla			;8916
	ld (bc),a		;8917
	ld d,a			;8918
	ld d,a			;8919
	ld d,a			;891a
	ld d,a			;891b
	ld d,a			;891c
	ld d,a			;891d
	ld d,a			;891e
	ld d,a			;891f
	ld d,a			;8920
	ld d,a			;8921
	ld d,a			;8922
	ld d,a			;8923
	ld d,a			;8924
	ld d,a			;8925
	ld d,a			;8926
	ld d,a			;8927
	ld d,a			;8928
	ld d,a			;8929
	ld d,a			;892a
	ld d,a			;892b
	ld d,a			;892c
	ld d,a			;892d
	ld d,a			;892e
	ld d,a			;892f
	ld d,a			;8930
	ld d,a			;8931
	ld d,a			;8932
	ld d,a			;8933
	ld d,a			;8934
	ld d,a			;8935
	ld d,a			;8936
	ld d,a			;8937
	ld d,a			;8938
	ld d,a			;8939
	ld d,a			;893a
	ld d,a			;893b
	ld d,a			;893c
	ld d,a			;893d
	ld d,a			;893e
	ld d,a			;893f
	ld d,a			;8940
	ld d,a			;8941
	ld d,a			;8942
	ld d,a			;8943
	ld d,a			;8944
	ld d,a			;8945
	ld d,a			;8946
	ld d,a			;8947
	rst 38h			;8948
	inc d			;8949
	nop			;894a
	nop			;894b
	nop			;894c
	djnz l894fh		;894d
l894fh:
	jr nz,l8951h		;894f
l8951h:
	jr nc,l8953h		;8951
l8953h:
	ld b,b			;8953
	nop			;8954
	ld d,b			;8955
	nop			;8956
	sub b			;8957
	nop			;8958
	or b			;8959
	nop			;895a
	ret nz			;895b
	cp 000h			;895c
	nop			;895e
l895fh:
	ld sp,04211h		;895f
	ld (03353h),hl		;8962
	djnz l89a9h		;8965
	jr nz,$+85		;8967
	jr nc,l88ffh		;8969
	ld d,b			;896b
	or b			;896c
	inc sp			;896d
	jp 0fffeh		;896e
	dec de			;8971
	rst 38h			;8972
	add hl,bc		;8973
	rst 38h			;8974
	ld de,02000h		;8975
	nop			;8978
	nop			;8979
	nop			;897a
	nop			;897b
	nop			;897c
	jr nc,l897fh		;897d
l897fh:
	nop			;897f
	nop			;8980
	nop			;8981
	nop			;8982
	ld sp,00000h		;8983
	nop			;8986
	nop			;8987
	nop			;8988
	ld (00007h),a		;8989
	nop			;898c
	nop			;898d
	nop			;898e
	inc sp			;898f
	ld bc,00005h		;8990
	nop			;8993
	nop			;8994
	inc (hl)		;8995
	ld hl,00006h		;8996
	nop			;8999
	nop			;899a
	ld hl,(00012h)		;899b
	nop			;899e
	nop			;899f
	nop			;89a0
	jr z,l89c0h		;89a1
	ld (bc),a		;89a3
	nop			;89a4
	nop			;89a5
	nop			;89a6
	add hl,hl		;89a7
	ld d,b			;89a8
l89a9h:
	ld (bc),a		;89a9
	nop			;89aa
	nop			;89ab
	dec hl			;89ac
	ld l,015h		;89ad
	rla			;89af
	nop			;89b0
	nop			;89b1
	dec (hl)		;89b2
	ld a,(00152h)		;89b3
	dec b			;89b6
	nop			;89b7
	ld (hl),03bh		;89b8
	ld d,e			;89ba
	ld hl,00006h		;89bb
	add hl,sp		;89be
	inc a			;89bf
l89c0h:
	ld c,010h		;89c0
	nop			;89c2
	nop			;89c3
	dec a			;89c4
	ld a,01fh		;89c5
	nop			;89c7
	nop			;89c8
	nop			;89c9
	nop			;89ca
	ld hl,(00012h)		;89cb
	nop			;89ce
	nop			;89cf
	nop			;89d0
	ld sp,00011h		;89d1
	nop			;89d4
	nop			;89d5
	dec hl			;89d6
	ld l,01fh		;89d7
	nop			;89d9
	nop			;89da
	nop			;89db
	inc l			;89dc
	ld a,020h		;89dd
	dec b			;89df
	nop			;89e0
	nop			;89e1
	nop			;89e2
	ld hl,(00619h)		;89e3
	nop			;89e6
	nop			;89e7
	nop			;89e8
	inc sp			;89e9
	ld d,c			;89ea
	ld (bc),a		;89eb
	nop			;89ec
	nop			;89ed
	ld h,03bh		;89ee
	dec d			;89f0
	rla			;89f1
	nop			;89f2
	ld h,03bh		;89f3
	ld b,h			;89f5
	inc d			;89f6
	ld bc,02d05h		;89f7
	ld c,c			;89fa
	jr c,l8a15h		;89fb
	ld hl,00006h		;89fd
	dec l			;8a00
	cpl			;8a01
	ld c,010h		;8a02
	nop			;8a04
	nop			;8a05
	nop			;8a06
	ld c,d			;8a07
	rra			;8a08
	nop			;8a09
	nop			;8a0a
	nop			;8a0b
	nop			;8a0c
	add hl,hl		;8a0d
	inc de			;8a0e
	nop			;8a0f
	nop			;8a10
	nop			;8a11
	nop			;8a12
	jr z,l8a34h		;8a13
l8a15h:
	nop			;8a15
	nop			;8a16
	nop			;8a17
	nop			;8a18
	add hl,hl		;8a19
	inc de			;8a1a
	nop			;8a1b
	nop			;8a1c
	nop			;8a1d
	nop			;8a1e
	ld hl,(0001fh)		;8a1f
	nop			;8a22
	nop			;8a23
	nop			;8a24
	daa			;8a25
	inc de			;8a26
	nop			;8a27
	nop			;8a28
	nop			;8a29
	nop			;8a2a
	jr z,l8a4ch		;8a2b
	nop			;8a2d
	nop			;8a2e
	nop			;8a2f
	nop			;8a30
	add hl,hl		;8a31
	inc de			;8a32
	nop			;8a33
l8a34h:
	nop			;8a34
	nop			;8a35
	nop			;8a36
	ld hl,(0001fh)		;8a37
	nop			;8a3a
	nop			;8a3b
	nop			;8a3c
	add hl,hl		;8a3d
	inc de			;8a3e
	nop			;8a3f
	nop			;8a40
	nop			;8a41
	nop			;8a42
	jr z,l8a64h		;8a43
	nop			;8a45
	nop			;8a46
	nop			;8a47
	nop			;8a48
	add hl,hl		;8a49
	inc de			;8a4a
	nop			;8a4b
l8a4ch:
	nop			;8a4c
	nop			;8a4d
	nop			;8a4e
	ld hl,(0001fh)		;8a4f
	nop			;8a52
	nop			;8a53
	nop			;8a54
	daa			;8a55
	inc de			;8a56
	nop			;8a57
	nop			;8a58
	nop			;8a59
	nop			;8a5a
	jr z,l8a7ch		;8a5b
	nop			;8a5d
	nop			;8a5e
	nop			;8a5f
	nop			;8a60
	add hl,hl		;8a61
	inc de			;8a62
	nop			;8a63
l8a64h:
	nop			;8a64
	nop			;8a65
	nop			;8a66
	ld hl,(009ffh)		;8a67
	rst 38h			;8a6a
	ld de,02000h		;8a6b
	rra			;8a6e
	nop			;8a6f
	nop			;8a70
	nop			;8a71
	nop			;8a72
	add hl,hl		;8a73
	inc de			;8a74
	nop			;8a75
	nop			;8a76
	nop			;8a77
	nop			;8a78
	jr z,l8a9ah		;8a79
	nop			;8a7b
l8a7ch:
	nop			;8a7c
	nop			;8a7d
	nop			;8a7e
	add hl,hl		;8a7f
	inc de			;8a80
	nop			;8a81
	nop			;8a82
	nop			;8a83
	nop			;8a84
	ld hl,(0001fh)		;8a85
	nop			;8a88
	nop			;8a89
	nop			;8a8a
	daa			;8a8b
	inc de			;8a8c
	nop			;8a8d
	nop			;8a8e
	nop			;8a8f
	nop			;8a90
	jr z,l8ab2h		;8a91
	nop			;8a93
	nop			;8a94
	nop			;8a95
	nop			;8a96
	add hl,hl		;8a97
	inc de			;8a98
	nop			;8a99
l8a9ah:
	nop			;8a9a
	nop			;8a9b
	nop			;8a9c
	ld hl,(01affh)		;8a9d
	ld d,007h		;8aa0
	nop			;8aa2
	nop			;8aa3
	ld b,b			;8aa4
	ld b,d			;8aa5
	inc b			;8aa6
	ex af,af'		;8aa7
	nop			;8aa8
	nop			;8aa9
	ld b,c			;8aaa
	ld b,e			;8aab
	ld c,00dh		;8aac
	nop			;8aae
	nop			;8aaf
	add hl,sp		;8ab0
	inc a			;8ab1
l8ab2h:
	djnz l8ab4h		;8ab2
l8ab4h:
	nop			;8ab4
	nop			;8ab5
	dec a			;8ab6
	ld a,000h		;8ab7
	nop			;8ab9
	nop			;8aba
	nop			;8abb
	nop			;8abc
	jr z,l8abfh		;8abd
l8abfh:
	nop			;8abf
	nop			;8ac0
	nop			;8ac1
	nop			;8ac2
	add hl,hl		;8ac3
	ld a,(bc)		;8ac4
	nop			;8ac5
	nop			;8ac6
	nop			;8ac7
	nop			;8ac8
	ld c,e			;8ac9
	dec bc			;8aca
	rrca			;8acb
	nop			;8acc
	nop			;8acd
	ld h,03bh		;8ace
	jr l8aeeh		;8ad0
	nop			;8ad2
	nop			;8ad3
	dec l			;8ad4
	ld c,h			;8ad5
	add hl,bc		;8ad6
	nop			;8ad7
	nop			;8ad8
	nop			;8ad9
	nop			;8ada
	ld c,l			;8adb
	add hl,de		;8adc
	ld (bc),a		;8add
	nop			;8ade
	nop			;8adf
	nop			;8ae0
	ccf			;8ae1
	ld a,(de)		;8ae2
	ld (bc),a		;8ae3
	nop			;8ae4
	nop			;8ae5
	ld b,l			;8ae6
	ld b,a			;8ae7
	inc hl			;8ae8
	rlca			;8ae9
	nop			;8aea
	nop			;8aeb
	ld b,c			;8aec
	ld c,b			;8aed
l8aeeh:
	inc h			;8aee
	ex af,af'		;8aef
	nop			;8af0
	nop			;8af1
	ld b,(hl)		;8af2
	scf			;8af3
	dec h			;8af4
	ld (00007h),hl		;8af5
	nop			;8af8
	add hl,hl		;8af9
	jr l8b1dh		;8afa
	ld b,000h		;8afc
	nop			;8afe
	ld sp,009ffh		;8aff
	rst 38h			;8b02
	ld de,02000h		;8b03
	dec de			;8b06
	djnz l8b09h		;8b07
l8b09h:
	nop			;8b09
	nop			;8b0a
	ld (0001fh),a		;8b0b
	nop			;8b0e
	nop			;8b0f
	nop			;8b10
	ld hl,(00054h)		;8b11
	nop			;8b14
	nop			;8b15
	nop			;8b16
	jr z,l8b1ch		;8b17
	nop			;8b19
	nop			;8b1a
	nop			;8b1b
l8b1ch:
	nop			;8b1c
l8b1dh:
	add hl,hl		;8b1d
	ld d,l			;8b1e
	nop			;8b1f
	nop			;8b20
	nop			;8b21
	nop			;8b22
	ld (00716h),a		;8b23
	nop			;8b26
	nop			;8b27
	dec hl			;8b28
	ld l,024h		;8b29
	ex af,af'		;8b2b
	nop			;8b2c
	nop			;8b2d
	inc l			;8b2e
	ld a,025h		;8b2f
	ld (00007h),hl		;8b31
	nop			;8b34
	ld hl,(01affh)		;8b35
	jr l8b5bh		;8b38
	ld b,000h		;8b3a
	nop			;8b3c
	add hl,hl		;8b3d
	dec de			;8b3e
	djnz l8b41h		;8b3f
l8b41h:
	nop			;8b41
	nop			;8b42
	ld hl,(00013h)		;8b43
	nop			;8b46
	nop			;8b47
	nop			;8b48
	add hl,hl		;8b49
	rra			;8b4a
	nop			;8b4b
	nop			;8b4c
	nop			;8b4d
	dec hl			;8b4e
	ld l,012h		;8b4f
	nop			;8b51
	nop			;8b52
	ld b,b			;8b53
	ld d,(hl)		;8b54
	ld b,e			;8b55
	dec h			;8b56
	ld e,000h		;8b57
	ld b,c			;8b59
	cpl			;8b5a
l8b5bh:
	inc a			;8b5b
	jr l8b7ah		;8b5c
	nop			;8b5e
	ld b,(hl)		;8b5f
	ld c,d			;8b60
	ld c,l			;8b61
	ld de,00000h		;8b62
	nop			;8b65
	inc l			;8b66
	ld c,(hl)		;8b67
	rst 38h			;8b68
	add hl,bc		;8b69
	rst 38h			;8b6a
	ld de,02000h		;8b6b
	rst 38h			;8b6e
	add hl,de		;8b6f
	nop			;8b70
	rra			;8b71
	nop			;8b72
	nop			;8b73
	nop			;8b74
	nop			;8b75
	add hl,hl		;8b76
	inc de			;8b77
	nop			;8b78
	nop			;8b79
l8b7ah:
	nop			;8b7a
	nop			;8b7b
	jr z,l8b9dh		;8b7c
	nop			;8b7e
	nop			;8b7f
	nop			;8b80
	nop			;8b81
	add hl,hl		;8b82
	inc de			;8b83
	nop			;8b84
	nop			;8b85
	nop			;8b86
	nop			;8b87
	ld hl,(0001fh)		;8b88
	nop			;8b8b
	nop			;8b8c
	nop			;8b8d
	daa			;8b8e
	inc de			;8b8f
	nop			;8b90
	nop			;8b91
	nop			;8b92
	nop			;8b93
l8b94h:
	jr z,l8b94h		;8b94
	rst 38h			;8b96
	inc de			;8b97
	ld c,d			;8b98
	xor c			;8b99
	rst 38h			;8b9a
	dec d			;8b9b
	rst 38h			;8b9c
l8b9dh:
	jr $+1			;8b9d
	ld de,00001h		;8b9f
	rst 38h			;8ba2
	rla			;8ba3
	ld bc,014ffh		;8ba4
	rst 38h			;8ba7
	ld d,0ffh		;8ba8
	dec de			;8baa
	rst 38h			;8bab
	add hl,bc		;8bac
	ld (hl),004h		;8bad
	ex af,af'		;8baf
	inc b			;8bb0
	dec hl			;8bb1
	inc (hl)		;8bb2
	ld b,(hl)		;8bb3
	dec b			;8bb4
	add hl,bc		;8bb5
	dec b			;8bb6
	add hl,bc		;8bb7
	inc h			;8bb8
	ld c,a			;8bb9
	ld b,00ah		;8bba
	ld b,00ah		;8bbc
	dec h			;8bbe
	ld c,a			;8bbf
	rlca			;8bc0
	ex af,af'		;8bc1
	rlca			;8bc2
	ex af,af'		;8bc3
	ld h,035h		;8bc4
	inc b			;8bc6
	ex af,af'		;8bc7
	inc b			;8bc8
	ld hl,(05233h)		;8bc9
	dec b			;8bcc
	add hl,bc		;8bcd
	dec b			;8bce
	dec l			;8bcf
	dec c			;8bd0
	ld (hl),006h		;8bd1
	ex af,af'		;8bd3
	ld b,02bh		;8bd4
	inc sp			;8bd6
	ld c,a			;8bd7
	rlca			;8bd8
	ex af,af'		;8bd9
	rlca			;8bda
	ex af,af'		;8bdb
	dec de			;8bdc
	ld b,l			;8bdd
	inc b			;8bde
	ex af,af'		;8bdf
	inc b			;8be0
	ex af,af'		;8be1
	inc de			;8be2
	ld e,b			;8be3
	dec b			;8be4
	add hl,bc		;8be5
	dec b			;8be6
	add hl,bc		;8be7
	ld a,e			;8be8
	ld d,b			;8be9
	ld b,00ah		;8bea
	ld b,027h		;8bec
	dec a			;8bee
	ld e,c			;8bef
	rlca			;8bf0
	ex af,af'		;8bf1
	rlca			;8bf2
	ex af,af'		;8bf3
	ld a,e			;8bf4
	ld e,(hl)		;8bf5
	inc b			;8bf6
	ex af,af'		;8bf7
	inc b			;8bf8
	ex af,af'		;8bf9
	inc e			;8bfa
	ld e,l			;8bfb
	dec b			;8bfc
	add hl,bc		;8bfd
	dec b			;8bfe
	add hl,bc		;8bff
	dec e			;8c00
	ld d,c			;8c01
	ld b,00ah		;8c02
	ld b,02ah		;8c04
	jr nc,l8c5bh		;8c06
	rlca			;8c08
	ex af,af'		;8c09
	rlca			;8c0a
	dec hl			;8c0b
	ld (0045eh),a		;8c0c
	ex af,af'		;8c0f
	inc b			;8c10
	ex af,af'		;8c11
	ld e,05bh		;8c12
	dec b			;8c14
	add hl,bc		;8c15
	dec b			;8c16
	add hl,bc		;8c17
	rra			;8c18
	ld d,c			;8c19
	ld b,00ah		;8c1a
	ld b,02ah		;8c1c
	jr nc,l8c56h		;8c1e
	rlca			;8c20
	ex af,af'		;8c21
	rlca			;8c22
	dec hl			;8c23
	inc (hl)		;8c24
	ld c,a			;8c25
	inc b			;8c26
	ex af,af'		;8c27
	inc b			;8c28
	ex af,af'		;8c29
	jr l8c7bh		;8c2a
	dec b			;8c2c
	add hl,bc		;8c2d
	dec b			;8c2e
	add hl,bc		;8c2f
	add hl,de		;8c30
	dec (hl)		;8c31
	ld b,00ah		;8c32
	ld b,027h		;8c34
	inc (hl)		;8c36
	inc sp			;8c37
	jr nc,l8c6ah		;8c38
	ccf			;8c3a
	ex af,af'		;8c3b
	jr $+88			;8c3c
	ld a,e			;8c3e
	ld h,a			;8c3f
	ld l,h			;8c40
	ld (hl),b		;8c41
	add hl,de		;8c42
	ld d,d			;8c43
	ld h,b			;8c44
	ld l,b			;8c45
	ld b,071h		;8c46
	rrca			;8c48
	ld d,a			;8c49
	ld h,c			;8c4a
	ld l,c			;8c4b
	ld l,l			;8c4c
	ld (hl),d		;8c4d
	add hl,de		;8c4e
	ld d,(hl)		;8c4f
	ld h,d			;8c50
	ex af,af'		;8c51
	dec b			;8c52
	ld (hl),e		;8c53
	jr l8ca8h		;8c54
l8c56h:
	ld h,e			;8c56
	ex af,af'		;8c57
	ld b,074h		;8c58
	inc h			;8c5a
l8c5bh:
	jr c,l8cc1h		;8c5b
	add hl,bc		;8c5d
	rlca			;8c5e
	ld (hl),l		;8c5f
	ld h,001h		;8c60
	ld h,l			;8c62
	ld l,d			;8c63
	ld l,(hl)		;8c64
	halt			;8c65
	add hl,de		;8c66
	ld d,h			;8c67
	ld h,(hl)		;8c68
	ld l,e			;8c69
l8c6ah:
	ld l,a			;8c6a
	ld (0fe24h),hl		;8c6b
	rst 38h			;8c6e
	ld b,0ffh		;8c6f
	dec de			;8c71
	ld sp,02431h		;8c72
	dec h			;8c75
	ld h,017h		;8c76
	ld a,(bc)		;8c78
	jr nc,l8caeh		;8c79
l8c7bh:
	dec d			;8c7b
	add hl,bc		;8c7c
	ex af,af'		;8c7d
	ex af,af'		;8c7e
	add hl,bc		;8c7f
	ex af,af'		;8c80
	jr nc,l8c98h		;8c81
	inc b			;8c83
	dec b			;8c84
	dec b			;8c85
	ld b,007h		;8c86
	inc b			;8c88
	ld (de),a		;8c89
	dec a			;8c8a
	ld bc,00109h		;8c8b
	ld (bc),a		;8c8e
	add hl,bc		;8c8f
	inc bc			;8c90
	jr nc,l8ccch		;8c91
	ld a,(03b39h)		;8c93
	ld a,(bc)		;8c96
	inc a			;8c97
l8c98h:
	add hl,sp		;8c98
	ld a,(00832h)		;8c99
	add hl,bc		;8c9c
	ex af,af'		;8c9d
	ex af,af'		;8c9e
	add hl,bc		;8c9f
	ex af,af'		;8ca0
	dec a			;8ca1
	ld (00504h),a		;8ca2
	ld b,007h		;8ca5
	inc b			;8ca7
l8ca8h:
	dec b			;8ca8
	ld d,h			;8ca9
	ld c,d			;8caa
	ld b,e			;8cab
	add hl,bc		;8cac
	ex af,af'		;8cad
l8caeh:
	ex af,af'		;8cae
	add hl,bc		;8caf
	ld a,(bc)		;8cb0
	jr nc,l8ccbh		;8cb1
	dec d			;8cb3
	dec b			;8cb4
	inc a			;8cb5
	ld a,(0043bh)		;8cb6
	jr nc,l8cedh		;8cb9
	inc bc			;8cbb
	add hl,bc		;8cbc
	ld bc,00902h		;8cbd
	inc bc			;8cc0
l8cc1h:
	jr nc,l8cf5h		;8cc1
	inc b			;8cc3
	add hl,bc		;8cc4
	dec b			;8cc5
	ld b,009h		;8cc6
	rlca			;8cc8
	jr nc,l8d15h		;8cc9
l8ccbh:
	ld b,h			;8ccb
l8ccch:
	ld d,l			;8ccc
	ex af,af'		;8ccd
	ex af,af'		;8cce
	ld b,c			;8ccf
	ld b,h			;8cd0
	ld c,e			;8cd1
	ld d,018h		;8cd2
	dec d			;8cd4
	inc b			;8cd5
	dec b			;8cd6
	ld (01826h),hl		;8cd7
	ld (00901h),a		;8cda
	inc bc			;8cdd
	ld (bc),a		;8cde
	add hl,bc		;8cdf
	inc bc			;8ce0
	jr nc,l8d2dh		;8ce1
	ld b,e			;8ce3
	add hl,bc		;8ce4
	ld a,l			;8ce5
	ld b,h			;8ce6
	ld b,(hl)		;8ce7
	ld b,h			;8ce8
	ld c,e			;8ce9
	jr l8d01h		;8cea
	inc b			;8cec
l8cedh:
	ld a,h			;8ced
	ld d,024h		;8cee
	dec h			;8cf0
	ld h,032h		;8cf1
	inc bc			;8cf3
	add hl,bc		;8cf4
l8cf5h:
	ld bc,00902h		;8cf5
	ld (bc),a		;8cf8
	ld bc,0474ah		;8cf9
	ld c,b			;8cfc
	ld c,c			;8cfd
	ld b,a			;8cfe
	ld c,b			;8cff
	ld c,c			;8d00
l8d01h:
	ld b,a			;8d01
	rst 38h			;8d02
	dec de			;8d03
	rst 38h			;8d04
	add hl,bc		;8d05
	rst 38h			;8d06
	dec e			;8d07
	ld b,a			;8d08
	ld (bc),a		;8d09
	ld d,04ah		;8d0a
	ld (0ff18h),a		;8d0c
	add hl,bc		;8d0f
	ld c,b			;8d10
	inc bc			;8d11
	dec d			;8d12
	ld b,e			;8d13
	inc b			;8d14
l8d15h:
	add hl,de		;8d15
	ld b,(hl)		;8d16
	add hl,bc		;8d17
	inc b			;8d18
	add hl,bc		;8d19
	dec b			;8d1a
	inc h			;8d1b
	ld c,c			;8d1c
	ld bc,00a05h		;8d1d
	ld b,025h		;8d20
	ld b,a			;8d22
	ld (bc),a		;8d23
	ld b,008h		;8d24
	rlca			;8d26
	ld h,048h		;8d27
	inc bc			;8d29
	rlca			;8d2a
	ex af,af'		;8d2b
	ld (hl),a		;8d2c
l8d2dh:
	ld a,c			;8d2d
	ld b,(hl)		;8d2e
	add hl,bc		;8d2f
	inc b			;8d30
	add hl,bc		;8d31
	ld a,b			;8d32
	ld a,d			;8d33
	ld b,(hl)		;8d34
	ld bc,00a05h		;8d35
	inc b			;8d38
	inc h			;8d39
	rst 38h			;8d3a
	ld a,(de)		;8d3b
	ld sp,00651h		;8d3c
	ex af,af'		;8d3f
	dec b			;8d40
	ld h,037h		;8d41
	ld d,e			;8d43
	rlca			;8d44
	ex af,af'		;8d45
	ld b,015h		;8d46
	ld b,(hl)		;8d48
	add hl,bc		;8d49
	dec b			;8d4a
	add hl,bc		;8d4b
	rlca			;8d4c
	ld a,e			;8d4d
	ld b,a			;8d4e
	ld bc,00a06h		;8d4f
	inc b			;8d52
	dec e			;8d53
	ld c,b			;8d54
	ld (bc),a		;8d55
	rlca			;8d56
	ex af,af'		;8d57
	jr z,l8d8ah		;8d58
	ld d,b			;8d5a
	inc bc			;8d5b
	inc b			;8d5c
	ex af,af'		;8d5d
	ld l,00dh		;8d5e
	ld b,(hl)		;8d60
	add hl,bc		;8d61
	dec b			;8d62
	add hl,bc		;8d63
	inc b			;8d64
	inc h			;8d65
	ld c,c			;8d66
	ld bc,00a06h		;8d67
	dec b			;8d6a
	ld h,051h		;8d6b
	ld (bc),a		;8d6d
	dec b			;8d6e
	ex af,af'		;8d6f
	jr z,l8da5h		;8d70
	ld d,e			;8d72
	inc bc			;8d73
	ld b,008h		;8d74
	add hl,hl		;8d76
	cpl			;8d77
	ld e,d			;8d78
	add hl,bc		;8d79
	rlca			;8d7a
	add hl,bc		;8d7b
	inc b			;8d7c
	ld a,e			;8d7d
	ld e,h			;8d7e
	ld bc,00a05h		;8d7f
	rlca			;8d82
	dec e			;8d83
	jr nc,l8dc6h		;8d84
	ld b,008h		;8d86
	jr z,l8dbah		;8d88
l8d8ah:
	ld d,e			;8d8a
	inc bc			;8d8b
	rlca			;8d8c
	ex af,af'		;8d8d
	djnz l8dc4h		;8d8e
	ld e,d			;8d90
	add hl,bc		;8d91
	inc b			;8d92
	add hl,bc		;8d93
	ld b,018h		;8d94
	ld e,h			;8d96
	ld bc,00a05h		;8d97
	rlca			;8d9a
	dec de			;8d9b
	jr nc,l8ddeh		;8d9c
	ld b,008h		;8d9e
	ld a,(de)		;8da0
	jr nz,l8dddh		;8da1
	inc bc			;8da3
	rlca			;8da4
l8da5h:
	ex af,af'		;8da5
	dec b			;8da6
	inc de			;8da7
	dec sp			;8da8
	add hl,bc		;8da9
	inc b			;8daa
	add hl,bc		;8dab
	ld b,07bh		;8dac
	dec b			;8dae
	ld bc,00a05h		;8daf
	rlca			;8db2
	ld h,b			;8db3
	ld b,003h		;8db4
	ld b,008h		;8db6
	dec b			;8db8
	inc e			;8db9
l8dbah:
	inc a			;8dba
	add hl,bc		;8dbb
	rlca			;8dbc
	add hl,bc		;8dbd
	ld b,01dh		;8dbe
	ld a,(00401h)		;8dc0
	ld a,(bc)		;8dc3
l8dc4h:
	rlca			;8dc4
	inc d			;8dc5
l8dc6h:
	ld d,a			;8dc6
	jr nc,l8ddbh		;8dc7
	jr nc,l8dfbh		;8dc9
l8dcbh:
	jr nz,l8dcbh		;8dcb
	rst 38h			;8dcd
	dec de			;8dce
	rst 38h			;8dcf
	ld b,02fh		;8dd0
	ld (bc),a		;8dd2
	add hl,bc		;8dd3
	ld bc,00903h		;8dd4
	inc bc			;8dd7
	ld e,a			;8dd8
	ld a,00ah		;8dd9
l8ddbh:
	add hl,bc		;8ddb
	ld a,(bc)		;8ddc
l8dddh:
	ex af,af'		;8ddd
l8ddeh:
	add hl,bc		;8dde
	ex af,af'		;8ddf
	ld hl,00732h		;8de0
	inc b			;8de3
	dec b			;8de4
	ld b,007h		;8de5
	inc b			;8de7
	jr nc,l8e28h		;8de8
	ld bc,00209h		;8dea
	inc bc			;8ded
	add hl,bc		;8dee
	inc bc			;8def
	ld hl,0444ah		;8df0
	ld d,l			;8df3
	inc b			;8df4
	dec b			;8df5
	ld b,c			;8df6
	ld b,h			;8df7
	ld c,e			;8df8
	jr l8e0ch		;8df9
l8dfbh:
	dec d			;8dfb
	ld bc,01202h		;8dfc
	ld de,0ff16h		;8dff
	add hl,de		;8e02
	nop			;8e03
	ex af,af'		;8e04
	ex af,af'		;8e05
	add hl,bc		;8e06
	ld b,007h		;8e07
	add hl,bc		;8e09
	ld a,(bc)		;8e0a
	ex af,af'		;8e0b
l8e0ch:
	ld (bc),a		;8e0c
	ld bc,00209h		;8e0d
	ld bc,00309h		;8e10
	ld (bc),a		;8e13
	dec b			;8e14
	ld b,007h		;8e15
	inc b			;8e17
	dec bc			;8e18
	dec b			;8e19
	ld b,004h		;8e1a
	ex af,af'		;8e1c
	ex af,af'		;8e1d
	add hl,bc		;8e1e
	ld a,(bc)		;8e1f
	ex af,af'		;8e20
	add hl,bc		;8e21
	ld a,(bc)		;8e22
	ex af,af'		;8e23
	ld bc,00903h		;8e24
	ld (bc),a		;8e27
l8e28h:
	ld bc,00109h		;8e28
	ld (bc),a		;8e2b
	rst 38h			;8e2c
	inc de			;8e2d
	ld c,d			;8e2e
	xor c			;8e2f
	inc b			;8e30
	dec b			;8e31
	ld b,007h		;8e32
	dec b			;8e34
	ld b,007h		;8e35
	dec bc			;8e37
	rst 38h			;8e38
	dec d			;8e39
	rst 38h			;8e3a
	jr $+1			;8e3b
	ld de,00001h		;8e3d
	rst 38h			;8e40
	rla			;8e41
	ld (bc),a		;8e42
	rst 38h			;8e43
	inc d			;8e44
	rst 38h			;8e45
	ld d,0ffh		;8e46
	dec de			;8e48
	rst 38h			;8e49
	ex af,af'		;8e4a
	rst 38h			;8e4b
	ld de,02000h		;8e4c
	nop			;8e4f
	inc bc			;8e50
	ld a,(bc)		;8e51
	dec d			;8e52
	ld hl,00125h		;8e53
	inc bc			;8e56
	ld a,(bc)		;8e57
	dec d			;8e58
	ld hl,00125h		;8e59
	inc bc			;8e5c
	ld a,(bc)		;8e5d
	dec d			;8e5e
	ld hl,00125h		;8e5f
	inc bc			;8e62
	ld a,(bc)		;8e63
	dec d			;8e64
	ld hl,00127h		;8e65
	inc bc			;8e68
	ld a,(bc)		;8e69
	dec d			;8e6a
	ld hl,00225h		;8e6b
	inc bc			;8e6e
	ld a,(bc)		;8e6f
	dec d			;8e70
	ld hl,00125h		;8e71
	inc bc			;8e74
	ld a,(bc)		;8e75
	dec d			;8e76
	ld hl,00125h		;8e77
	inc bc			;8e7a
	ld a,(bc)		;8e7b
	dec d			;8e7c
	ld hl,00125h		;8e7d
	inc bc			;8e80
	ld a,(bc)		;8e81
	dec d			;8e82
	ld hl,00125h		;8e83
	inc bc			;8e86
	ld a,(bc)		;8e87
	dec d			;8e88
	ld hl,00124h		;8e89
	inc bc			;8e8c
	ld a,(bc)		;8e8d
	dec d			;8e8e
	ld hl,00025h		;8e8f
	inc bc			;8e92
	ld a,(bc)		;8e93
	dec d			;8e94
	ld hl,00125h		;8e95
	inc bc			;8e98
	ld a,(bc)		;8e99
	dec d			;8e9a
	ld hl,00125h		;8e9b
	inc bc			;8e9e
	ld a,(bc)		;8e9f
	dec d			;8ea0
	ld hl,00125h		;8ea1
	inc bc			;8ea4
	ld a,(bc)		;8ea5
	dec d			;8ea6
	ld hl,00127h		;8ea7
	inc bc			;8eaa
	ld a,(bc)		;8eab
	dec d			;8eac
	ld hl,00225h		;8ead
	inc bc			;8eb0
	ld a,(bc)		;8eb1
	dec d			;8eb2
	ld hl,00125h		;8eb3
	inc bc			;8eb6
	ld a,(bc)		;8eb7
	dec d			;8eb8
	ld hl,00125h		;8eb9
	inc bc			;8ebc
	ld a,(bc)		;8ebd
	dec d			;8ebe
	ld hl,00125h		;8ebf
	inc bc			;8ec2
	ld a,(bc)		;8ec3
	dec d			;8ec4
	ld hl,00125h		;8ec5
	inc bc			;8ec8
	ld a,(bc)		;8ec9
	dec d			;8eca
	ld hl,00124h		;8ecb
	inc bc			;8ece
	ld a,(bc)		;8ecf
	dec d			;8ed0
	ld hl,00025h		;8ed1
	inc bc			;8ed4
	ld a,(bc)		;8ed5
	dec d			;8ed6
	ld hl,00125h		;8ed7
	inc bc			;8eda
	ld a,(bc)		;8edb
	dec d			;8edc
	ld hl,00125h		;8edd
	inc bc			;8ee0
	ld a,(bc)		;8ee1
	dec d			;8ee2
	ld hl,00125h		;8ee3
	inc bc			;8ee6
	ld a,(bc)		;8ee7
	dec d			;8ee8
	ld hl,00127h		;8ee9
	inc bc			;8eec
	ld a,(bc)		;8eed
	dec d			;8eee
	ld hl,00225h		;8eef
	inc bc			;8ef2
	ld a,(bc)		;8ef3
	dec d			;8ef4
	ld hl,00125h		;8ef5
	inc bc			;8ef8
	ld a,(bc)		;8ef9
	dec d			;8efa
	ld hl,00125h		;8efb
	inc bc			;8efe
	ld a,(bc)		;8eff
	dec d			;8f00
	ld hl,00125h		;8f01
	inc bc			;8f04
	ld a,(bc)		;8f05
	dec d			;8f06
	ld hl,00125h		;8f07
	inc bc			;8f0a
	ld a,(bc)		;8f0b
	ld (de),a		;8f0c
	ld hl,00124h		;8f0d
	inc bc			;8f10
	ld a,(bc)		;8f11
	dec d			;8f12
	ld hl,00025h		;8f13
	inc bc			;8f16
	ld a,(bc)		;8f17
	dec d			;8f18
	ld hl,00125h		;8f19
	inc bc			;8f1c
	ld a,(bc)		;8f1d
	dec d			;8f1e
	ld hl,00125h		;8f1f
	inc bc			;8f22
	ld a,(bc)		;8f23
	ld (de),a		;8f24
	ld hl,00127h		;8f25
	inc bc			;8f28
	ld a,(bc)		;8f29
	dec d			;8f2a
	ld hl,00125h		;8f2b
	inc bc			;8f2e
	ld a,(bc)		;8f2f
	ld (de),a		;8f30
	ld hl,00225h		;8f31
	inc bc			;8f34
	ld a,(bc)		;8f35
	dec d			;8f36
	ld hl,00125h		;8f37
	inc bc			;8f3a
	ld a,(bc)		;8f3b
	ld (de),a		;8f3c
	ld hl,00125h		;8f3d
	inc bc			;8f40
	ld a,(bc)		;8f41
	dec d			;8f42
	ld hl,00125h		;8f43
	inc bc			;8f46
	ld a,(bc)		;8f47
	dec d			;8f48
	ld hl,00124h		;8f49
	inc bc			;8f4c
	ld a,(bc)		;8f4d
	ld (de),a		;8f4e
	ld hl,00125h		;8f4f
	inc bc			;8f52
	ld a,(bc)		;8f53
	dec d			;8f54
	ld hl,00025h		;8f55
	inc bc			;8f58
	rlca			;8f59
	inc de			;8f5a
	ld hl,00125h		;8f5b
	inc bc			;8f5e
	ld b,012h		;8f5f
	ld hl,00125h		;8f61
	inc bc			;8f64
	ld a,(bc)		;8f65
	dec d			;8f66
	ld hl,00127h		;8f67
	inc bc			;8f6a
	ld a,(bc)		;8f6b
	dec d			;8f6c
	ld hl,00125h		;8f6d
	inc bc			;8f70
	rlca			;8f71
	inc de			;8f72
	ld hl,00225h		;8f73
	dec b			;8f76
	ex af,af'		;8f77
	inc d			;8f78
	ld hl,00125h		;8f79
	inc bc			;8f7c
	ld a,(bc)		;8f7d
	dec d			;8f7e
	ld hl,00125h		;8f7f
	inc bc			;8f82
	ld a,(bc)		;8f83
	dec d			;8f84
	ld hl,00125h		;8f85
	inc bc			;8f88
	rlca			;8f89
	inc de			;8f8a
	ld hl,00124h		;8f8b
	inc bc			;8f8e
	ld b,015h		;8f8f
	ld hl,00125h		;8f91
	inc bc			;8f94
	rlca			;8f95
	inc de			;8f96
	ld hl,00025h		;8f97
	inc bc			;8f9a
	ld a,(bc)		;8f9b
	dec d			;8f9c
	ld hl,00125h		;8f9d
	inc b			;8fa0
	ex af,af'		;8fa1
	inc d			;8fa2
	ld (00125h),hl		;8fa3
	inc bc			;8fa6
	ld b,012h		;8fa7
	ld hl,00127h		;8fa9
	inc bc			;8fac
	rlca			;8fad
	inc de			;8fae
	ld hl,00125h		;8faf
	inc bc			;8fb2
	ld a,(bc)		;8fb3
	dec d			;8fb4
	ld hl,00225h		;8fb5
	inc bc			;8fb8
	ld a,(bc)		;8fb9
	dec d			;8fba
	ld hl,00125h		;8fbb
	inc bc			;8fbe
	ld a,(bc)		;8fbf
	dec d			;8fc0
	ld hl,00125h		;8fc1
	dec b			;8fc4
	add hl,de		;8fc5
	inc d			;8fc6
	ld hl,00125h		;8fc7
	inc bc			;8fca
	ld a,(bc)		;8fcb
	dec d			;8fcc
	ld hl,00124h		;8fcd
	inc bc			;8fd0
	ld a,(bc)		;8fd1
	dec d			;8fd2
	ld hl,00125h		;8fd3
	inc bc			;8fd6
	rlca			;8fd7
	inc de			;8fd8
	ld hl,00025h		;8fd9
	inc b			;8fdc
	ex af,af'		;8fdd
	inc d			;8fde
	ld (00125h),hl		;8fdf
	dec b			;8fe2
	add hl,de		;8fe3
	ld d,026h		;8fe4
	dec h			;8fe6
	ld bc,00603h		;8fe7
	dec d			;8fea
	ld hl,00127h		;8feb
	inc bc			;8fee
	rlca			;8fef
	inc de			;8ff0
	ld hl,00125h		;8ff1
	inc b			;8ff4
	add hl,de		;8ff5
	inc d			;8ff6
	ld (00225h),hl		;8ff7
	inc bc			;8ffa
	rlca			;8ffb
	inc de			;8ffc
	ld hl,0ff25h		;8ffd
	ex af,af'		;9000
	rst 38h			;9001
	ld de,02000h		;9002
	ld bc,00805h		;9005
	inc d			;9008
	ld hl,00125h		;9009
	inc bc			;900c
	ld b,012h		;900d
	ld hl,00125h		;900f
	dec b			;9012
	add hl,de		;9013
	inc d			;9014
	ld h,024h		;9015
	ld bc,00703h		;9017
	inc de			;901a
	ld hl,00125h		;901b
	inc b			;901e
	add hl,de		;901f
	inc d			;9020
	ld (00025h),hl		;9021
	inc bc			;9024
	ld b,015h		;9025
	ld hl,00125h		;9027
	inc bc			;902a
	rlca			;902b
	inc de			;902c
	ld hl,00125h		;902d
	dec b			;9030
	add hl,de		;9031
	ld d,026h		;9032
	daa			;9034
	ld bc,00a03h		;9035
	ld (de),a		;9038
	ld hl,00125h		;9039
	inc bc			;903c
	rlca			;903d
	inc de			;903e
	ld hl,00225h		;903f
	inc bc			;9042
	ld b,012h		;9043
	ld hl,00125h		;9045
	inc bc			;9048
	ld a,(bc)		;9049
	ld (de),a		;904a
	ld hl,00125h		;904b
	inc bc			;904e
	ld a,(bc)		;904f
	ld (de),a		;9050
	ld hl,00125h		;9051
	inc bc			;9054
	ld a,(bc)		;9055
	dec d			;9056
	ld hl,00124h		;9057
	inc bc			;905a
	ld a,(bc)		;905b
	ld (de),a		;905c
	ld hl,00125h		;905d
	inc bc			;9060
	ld a,(bc)		;9061
	dec d			;9062
	ld hl,0ff25h		;9063
	ld a,(de)		;9066
	nop			;9067
	inc bc			;9068
	dec bc			;9069
	ld e,021h		;906a
	dec h			;906c
	ld bc,00f03h		;906d
	jr z,l9093h		;9070
	dec h			;9072
	ld bc,00a03h		;9073
	dec d			;9076
	ld hl,00127h		;9077
	inc bc			;907a
	ld a,(bc)		;907b
	dec d			;907c
	ld hl,00125h		;907d
	inc bc			;9080
	dec bc			;9081
	ld e,021h		;9082
	dec h			;9084
	ld (bc),a		;9085
	inc bc			;9086
	rrca			;9087
	jr z,l90abh		;9088
	dec h			;908a
	ld bc,00a03h		;908b
	dec d			;908e
	ld hl,00125h		;908f
	inc bc			;9092
l9093h:
	ld a,(bc)		;9093
	dec d			;9094
	ld hl,00125h		;9095
	inc bc			;9098
	dec bc			;9099
	ld e,021h		;909a
	inc h			;909c
	ld bc,00f03h		;909d
	jr z,l90c3h		;90a0
	dec h			;90a2
	ld bc,00a03h		;90a3
	dec d			;90a6
	ld hl,00025h		;90a7
	inc bc			;90aa
l90abh:
	rlca			;90ab
	inc de			;90ac
	ld hl,00125h		;90ad
	inc bc			;90b0
	dec bc			;90b1
	ld e,021h		;90b2
	dec h			;90b4
	ld bc,00f03h		;90b5
	jr z,l90dbh		;90b8
	daa			;90ba
	ld bc,00703h		;90bb
	inc de			;90be
	ld hl,00125h		;90bf
	inc b			;90c2
l90c3h:
	ex af,af'		;90c3
	inc d			;90c4
	ld h,025h		;90c5
	ld (bc),a		;90c7
	inc bc			;90c8
	dec bc			;90c9
	ld e,021h		;90ca
	dec h			;90cc
	ld bc,00f03h		;90cd
	jr z,l90f3h		;90d0
	dec h			;90d2
	ld bc,00805h		;90d3
	ld a,(de)		;90d6
	ld hl,00125h		;90d7
	inc bc			;90da
l90dbh:
	ld a,(bc)		;90db
	ld (de),a		;90dc
	ld hl,00124h		;90dd
	inc bc			;90e0
	dec bc			;90e1
	ld e,021h		;90e2
	dec h			;90e4
	ld bc,00f03h		;90e5
	jr z,l910bh		;90e8
	dec h			;90ea
	nop			;90eb
	inc bc			;90ec
	ld a,(bc)		;90ed
	dec d			;90ee
	ld hl,00125h		;90ef
	inc bc			;90f2
l90f3h:
	rlca			;90f3
	inc de			;90f4
	ld hl,00125h		;90f5
	inc bc			;90f8
	ld a,(bc)		;90f9
	ld e,021h		;90fa
	daa			;90fc
	ld bc,00a03h		;90fd
	jr z,$+35		;9100
	dec h			;9102
	ld bc,00b03h		;9103
	dec d			;9106
	ld hl,00125h		;9107
	inc bc			;910a
l910bh:
	rrca			;910b
	dec d			;910c
	ld hl,00027h		;910d
	inc bc			;9110
	rlca			;9111
	inc de			;9112
	ld hl,00125h		;9113
	inc b			;9116
	ex af,af'		;9117
	jr $+40			;9118
	dec h			;911a
	ld bc,00a03h		;911b
	ld e,021h		;911e
	daa			;9120
	ld bc,00a03h		;9121
	jr z,l9147h		;9124
	dec h			;9126
	ld bc,00b03h		;9127
	ld (de),a		;912a
	ld hl,00225h		;912b
	inc bc			;912e
	rrca			;912f
	rla			;9130
	ld hl,00125h		;9131
	inc bc			;9134
	ld a,(bc)		;9135
	dec de			;9136
	ld hl,00125h		;9137
	inc bc			;913a
	add hl,hl		;913b
	jr z,l915fh		;913c
	daa			;913e
	ld bc,00f03h		;913f
	dec d			;9142
	ld hl,00125h		;9143
	inc bc			;9146
l9147h:
	ld b,017h		;9147
	ld hl,00125h		;9149
	inc bc			;914c
	add hl,hl		;914d
	dec de			;914e
	ld hl,00025h		;914f
	inc bc			;9152
	ld c,01bh		;9153
	ld hl,00125h		;9155
	inc bc			;9158
	ld c,02bh		;9159
	ld hl,00125h		;915b
	inc bc			;915e
l915fh:
	inc hl			;915f
	ld (de),a		;9160
	ld hl,00124h		;9161
	inc bc			;9164
	ld a,(bc)		;9165
	ld e,021h		;9166
	dec h			;9168
	ld bc,00b03h		;9169
	jr z,$+35		;916c
	dec h			;916e
	ld (bc),a		;916f
	inc bc			;9170
	dec c			;9171
	inc de			;9172
	ld hl,00125h		;9173
	inc bc			;9176
	rrca			;9177
	ld (de),a		;9178
	ld hl,00125h		;9179
	inc b			;917c
	ex af,af'		;917d
	inc d			;917e
	ld h,027h		;917f
	ld bc,02903h		;9181
	rla			;9184
	ld hl,00125h		;9185
	inc bc			;9188
	rrca			;9189
	jr z,l91adh		;918a
	dec h			;918c
	ld bc,00a03h		;918d
	dec d			;9190
	ld hl,00025h		;9191
	inc bc			;9194
	add hl,hl		;9195
	rla			;9196
	ld hl,00125h		;9197
	inc bc			;919a
	rrca			;919b
	jr z,l91bfh		;919c
	dec h			;919e
	ld bc,00a03h		;919f
	dec d			;91a2
	ld hl,00124h		;91a3
	inc bc			;91a6
	add hl,hl		;91a7
	rla			;91a8
	ld hl,00125h		;91a9
	inc bc			;91ac
l91adh:
	ld c,01bh		;91ad
	ld hl,00125h		;91af
	inc bc			;91b2
	dec bc			;91b3
	ld e,021h		;91b4
	dec h			;91b6
	nop			;91b7
	inc bc			;91b8
	inc hl			;91b9
	dec hl			;91ba
	ld hl,00125h		;91bb
	inc bc			;91be
l91bfh:
	ld a,(bc)		;91bf
	dec d			;91c0
	ld hl,00127h		;91c1
	inc bc			;91c4
	dec bc			;91c5
	ld e,021h		;91c6
	dec h			;91c8
	ld bc,02303h		;91c9
	dec de			;91cc
	ld hl,00125h		;91cd
	inc bc			;91d0
	ld a,(bc)		;91d1
	dec hl			;91d2
	ld hl,00225h		;91d3
	inc bc			;91d6
	dec bc			;91d7
	dec d			;91d8
	ld hl,00125h		;91d9
	inc bc			;91dc
	inc hl			;91dd
	ld e,021h		;91de
	dec h			;91e0
	ld bc,00a03h		;91e1
	dec de			;91e4
	ld hl,00124h		;91e5
	inc bc			;91e8
	dec bc			;91e9
	dec hl			;91ea
	ld hl,00125h		;91eb
	inc bc			;91ee
	ld c,015h		;91ef
	ld hl,00125h		;91f1
	inc bc			;91f4
	ld de,02120h		;91f5
	dec h			;91f8
	nop			;91f9
	inc bc			;91fa
	ld a,(bc)		;91fb
	dec hl			;91fc
	ld hl,00125h		;91fd
	inc bc			;9200
l9201h:
	dec bc			;9201
	dec d			;9202
	ld hl,00127h		;9203
	inc bc			;9206
	ld c,01eh		;9207
	ld hl,00125h		;9209
	inc bc			;920c
	inc hl			;920d
	dec hl			;920e
	ld hl,00125h		;920f
	inc bc			;9212
	ld a,(bc)		;9213
	dec d			;9214
	ld hl,00225h		;9215
	inc bc			;9218
	ld a,(bc)		;9219
	dec d			;921a
	ld hl,00125h		;921b
	inc bc			;921e
	ld a,(bc)		;921f
	dec d			;9220
	ld hl,00125h		;9221
	inc bc			;9224
	dec bc			;9225
	ld e,021h		;9226
	inc h			;9228
	ld bc,00f03h		;9229
	dec hl			;922c
	ld hl,00125h		;922d
	inc bc			;9230
	ld a,(bc)		;9231
	dec d			;9232
	ld hl,00125h		;9233
	inc bc			;9236
	ld a,(bc)		;9237
	ld e,021h		;9238
	dec h			;923a
	nop			;923b
	inc bc			;923c
	dec bc			;923d
	jr z,l9261h		;923e
	dec h			;9240
	ld bc,02303h		;9241
	ld (de),a		;9244
	ld hl,00127h		;9245
	inc bc			;9248
	ld a,(bc)		;9249
	dec d			;924a
	ld hl,00125h		;924b
	inc bc			;924e
	add hl,hl		;924f
	rla			;9250
	ld hl,00125h		;9251
	inc bc			;9254
	ld c,01bh		;9255
	ld hl,00225h		;9257
	inc bc			;925a
	ld c,01bh		;925b
	ld hl,00125h		;925d
	inc bc			;9260
l9261h:
	dec c			;9261
	inc e			;9262
	ld hl,00125h		;9263
	inc bc			;9266
	rrca			;9267
	jr z,l928bh		;9268
	inc h			;926a
	ld bc,00a03h		;926b
	ld (de),a		;926e
	ld hl,00125h		;926f
	inc bc			;9272
	ld a,(bc)		;9273
	ld (de),a		;9274
	ld hl,00125h		;9275
	inc bc			;9278
	dec bc			;9279
	ld e,021h		;927a
	dec h			;927c
	nop			;927d
	inc bc			;927e
	ld c,01bh		;927f
	ld hl,00125h		;9281
	inc bc			;9284
	ld c,01bh		;9285
	ld hl,00127h		;9287
	inc bc			;928a
l928bh:
	ld c,01bh		;928b
	ld hl,00125h		;928d
	inc bc			;9290
	dec bc			;9291
	ld e,021h		;9292
	dec h			;9294
	ld bc,00e03h		;9295
	dec de			;9298
	ld hl,00225h		;9299
	inc b			;929c
	add hl,bc		;929d
	dec e			;929e
	ld (00125h),hl		;929f
	inc bc			;92a2
	ld c,01bh		;92a3
	ld hl,0ff25h		;92a5
	add hl,de		;92a8
	nop			;92a9
	rst 38h			;92aa
	ex af,af'		;92ab
	rst 38h			;92ac
	ld de,02000h		;92ad
	ld bc,00f03h		;92b0
	jr z,l92d6h		;92b3
	inc h			;92b5
	ld bc,00a03h		;92b6
	dec d			;92b9
	ld hl,00125h		;92ba
	inc bc			;92bd
	ld a,(bc)		;92be
	dec d			;92bf
	ld hl,00225h		;92c0
	inc bc			;92c3
	ld a,(bc)		;92c4
	dec d			;92c5
	ld hl,02127h		;92c6
	inc bc			;92c9
	ld a,(bc)		;92ca
	dec d			;92cb
	ld hl,02103h		;92cc
	inc bc			;92cf
	ld a,(bc)		;92d0
	dec d			;92d1
	ld hl,02103h		;92d2
	inc bc			;92d5
l92d6h:
	ld a,(bc)		;92d6
	dec d			;92d7
	ld hl,02103h		;92d8
	inc bc			;92db
	ld a,(bc)		;92dc
	dec d			;92dd
	ld hl,02103h		;92de
	inc bc			;92e1
	ld a,(bc)		;92e2
	dec d			;92e3
	ld hl,02103h		;92e4
	inc bc			;92e7
	ld a,(bc)		;92e8
	dec d			;92e9
	ld hl,02103h		;92ea
	inc bc			;92ed
	ld a,(bc)		;92ee
	dec d			;92ef
	ld hl,0ff03h		;92f0
	inc de			;92f3
	ld e,0b3h		;92f4
	ld hl,00a03h		;92f6
	dec d			;92f9
	ld hl,0ff03h		;92fa
	ld de,02004h		;92fd
	rst 38h			;9300
	rla			;9301
	ld bc,00321h		;9302
	ld a,(bc)		;9305
	dec d			;9306
	ld hl,02103h		;9307
	inc bc			;930a
	ld a,(bc)		;930b
	dec d			;930c
	ld hl,02103h		;930d
	inc bc			;9310
	ld a,(bc)		;9311
	dec d			;9312
	ld hl,02103h		;9313
	inc bc			;9316
	ld a,(bc)		;9317
	dec d			;9318
	ld hl,0fe03h		;9319
	rst 38h			;931c
	ld d,000h		;931d
	nop			;931f
	nop			;9320
	djnz l9323h		;9321
l9323h:
	jr nz,l9365h		;9323
	jr nc,l932ch		;9325
	ld b,b			;9327
	scf			;9328
	ld d,l			;9329
	ld h,b			;932a
	sub b			;932b
l932ch:
	ld b,b			;932c
	or b			;932d
	ld h,b			;932e
	ret nz			;932f
	rst 38h			;9330
	rst 38h			;9331
	dec de			;9332
	rst 38h			;9333
	nop			;9334
	djnz l9341h		;9335
	ex af,af'		;9337
	rrca			;9338
	inc bc			;9339
	jr c,l934dh		;933a
	dec bc			;933c
	add hl,bc		;933d
	rrca			;933e
	inc b			;933f
	scf			;9340
l9341h:
	djnz l934dh		;9341
	inc c			;9343
	ld b,001h		;9344
	jr c,l9359h		;9346
	dec bc			;9348
	dec c			;9349
	rlca			;934a
	dec b			;934b
	scf			;934c
l934dh:
	djnz $+13		;934d
	ld c,007h		;934f
	ld bc,01139h		;9351
	ld a,(bc)		;9354
	ex af,af'		;9355
	ld b,003h		;9356
	inc (hl)		;9358
l9359h:
	djnz $+13		;9359
	add hl,bc		;935b
	rlca			;935c
	inc b			;935d
	ld d,e			;935e
	ld de,0080ah		;935f
	ld b,018h		;9362
	ld e,a			;9364
l9365h:
	djnz l936ah		;9365
	ld bc,02618h		;9367
l936ah:
	ld a,(de)		;936a
	ld de,01804h		;936b
	add hl,de		;936e
	ld e,(hl)		;936f
	inc e			;9370
	djnz l9374h		;9371
	ld b,(hl)		;9373
l9374h:
	ld a,(de)		;9374
	ld e,h			;9375
	ld a,(de)		;9376
	ld de,04704h		;9377
	inc b			;937a
	dec sp			;937b
	ld bc,00310h		;937c
	dec b			;937f
	ld (bc),a		;9380
	inc a			;9381
	ld a,011h		;9382
	ld (bc),a		;9384
	ld bc,03d03h		;9385
	ld c,(hl)		;9388
	ld d,c			;9389
	ld hl,02718h		;938a
	add hl,hl		;938d
	ld c,c			;938e
	ld sp,02625h		;938f
l9392h:
	jr z,l93beh		;9392
	ld sp,0fffeh		;9394
	dec b			;9397
	rst 38h			;9398
	dec de			;9399
	ld sp,05453h		;939a
	ld d,l			;939d
	dec h			;939e
	ld d,01ah		;939f
	ld (bc),a		;93a1
	inc bc			;93a2
	ld (bc),a		;93a3
	inc b			;93a4
	ld bc,04352h		;93a5
	ld c,c			;93a8
	ld sp,05f53h		;93a9
	ld a,(de)		;93ac
	jr $+27			;93ad
	ld a,(de)		;93af
	ld bc,00203h		;93b0
	inc b			;93b3
	dec b			;93b4
	ld c,d			;93b5
	ld c,e			;93b6
	ld b,d			;93b7
	jr nc,l940dh		;93b8
	ld e,a			;93ba
	ld a,(de)		;93bb
	ld (bc),a		;93bc
	inc e			;93bd
l93beh:
	ld a,(de)		;93be
	ld (bc),a		;93bf
	ld (bc),a		;93c0
	ld (bc),a		;93c1
	inc b			;93c2
	ld (bc),a		;93c3
	jr l9439h		;93c4
	ld d,(hl)		;93c6
	ld sp,05f53h		;93c7
	ld a,(de)		;93ca
	ld (bc),a		;93cb
	ld (bc),a		;93cc
	ld (bc),a		;93cd
	ld (bc),a		;93ce
	jr l9417h		;93cf
	ld b,a			;93d1
	dec b			;93d2
	jr l93fbh		;93d3
	ld d,(hl)		;93d5
	jr nc,l942bh		;93d6
	ld e,a			;93d8
	ld a,(de)		;93d9
	ld (bc),a		;93da
	ld (bc),a		;93db
	ld (bc),a		;93dc
	add hl,bc		;93dd
	jr l9406h		;93de
	ld b,l			;93e0
	jr c,$+95		;93e1
	ld (hl),h		;93e3
	ld d,(hl)		;93e4
	ld sp,05f53h		;93e5
	ld a,(de)		;93e8
	inc b			;93e9
	inc bc			;93ea
	inc b			;93eb
	inc bc			;93ec
	jr l9415h		;93ed
	ld d,(hl)		;93ef
	ld sp,03130h		;93f0
	jr nc,l9425h		;93f3
	ld d,e			;93f5
	ld e,a			;93f6
	ld a,(de)		;93f7
	ld bc,00304h		;93f8
l93fbh:
	ld bc,02618h		;93fb
	ld e,(hl)		;93fe
	ld e,a			;93ff
	rla			;9400
l9401h:
	ld de,03111h		;9401
	ld d,e			;9404
	ld e,a			;9405
l9406h:
	ld a,(de)		;9406
	ld bc,04a02h		;9407
	ld c,e			;940a
	ld d,e			;940b
	ld e,a			;940c
l940dh:
	ld a,(de)		;940d
	inc e			;940e
	ld a,(de)		;940f
	ld bc,03002h		;9410
	ld d,e			;9413
	ld b,b			;9414
l9415h:
	ld l,005h		;9415
l9417h:
	ld bc,02a03h		;9417
	dec hl			;941a
	ld e,a			;941b
	ld a,(de)		;941c
	ld bc,00301h		;941d
	inc b			;9420
	ld sp,05753h		;9421
	ld d,(hl)		;9424
l9425h:
	ld b,c			;9425
	dec a			;9426
	ld (bc),a		;9427
	ld (bc),a		;9428
	ld (bc),a		;9429
	inc e			;942a
l942bh:
	ld a,(de)		;942b
	inc b			;942c
	jr l9475h		;942d
	ld b,a			;942f
	jr nc,l9485h		;9430
	ld d,a			;9432
	ld d,(hl)		;9433
	ld sp,04142h		;9434
	dec a			;9437
	ld (bc),a		;9438
l9439h:
	dec b			;9439
	ld bc,01803h		;943a
	add hl,de		;943d
	ld a,(de)		;943e
	ld sp,05753h		;943f
	ld d,(hl)		;9442
	ld sp,03130h		;9443
	ld b,d			;9446
	ld b,c			;9447
	ld c,b			;9448
	scf			;9449
	scf			;944a
	ld e,l			;944b
	ld h,045h		;944c
	rst 38h			;944e
	dec de			;944f
	rst 38h			;9450
	add hl,bc		;9451
	rst 38h			;9452
	ld de,02001h		;9453
	rst 38h			;9456
	dec e			;9457
	ld h,01ah		;9458
	ld bc,01918h		;945a
	ld b,l			;945d
	rst 38h			;945e
	add hl,bc		;945f
	rst 38h			;9460
	ld de,02001h		;9461
	ld e,(hl)		;9464
	inc e			;9465
	ld bc,01a46h		;9466
	jr c,$+97		;9469
	ld a,(de)		;946b
	inc bc			;946c
	ld b,a			;946d
	ld (bc),a		;946e
	scf			;946f
	rla			;9470
	ld bc,00104h		;9471
	inc bc			;9474
l9475h:
	jr c,$+19		;9475
	ld (bc),a		;9477
	inc bc			;9478
	inc b			;9479
	inc b			;947a
	scf			;947b
	djnz l9481h		;947c
	inc b			;947e
	inc bc			;947f
	ld (bc),a		;9480
l9481h:
	jr c,$+19		;9481
	inc b			;9483
	ld (bc),a		;9484
l9485h:
	inc bc			;9485
	ld bc,0105dh		;9486
	dec de			;9489
	inc b			;948a
	inc b			;948b
	jr $+40			;948c
	rst 38h			;948e
	ld a,(de)		;948f
	dec d			;9490
	inc e			;9491
	dec b			;9492
	ld bc,04546h		;9493
	ld d,01ah		;9496
	rrca			;9498
	ld bc,03847h		;9499
	rla			;949c
	ld a,(bc)		;949d
	inc c			;949e
	rlca			;949f
	ld bc,01037h		;94a0
	dec bc			;94a3
	ld b,00fh		;94a4
	dec b			;94a6
	jr c,l94bah		;94a7
	ld a,(bc)		;94a9
	dec c			;94aa
	rlca			;94ab
	ld (bc),a		;94ac
	scf			;94ad
	djnz $+13		;94ae
	ld b,00fh		;94b0
	dec b			;94b2
	jr c,l94c6h		;94b3
	ld a,(bc)		;94b5
	ld c,007h		;94b6
	add hl,bc		;94b8
	scf			;94b9
l94bah:
	djnz l94d7h		;94ba
	rrca			;94bc
	ld (bc),a		;94bd
	ld (bc),a		;94be
	ld e,l			;94bf
	dec d			;94c0
	inc e			;94c1
	inc b			;94c2
	inc bc			;94c3
	jr l94ech		;94c4
l94c6h:
	ld d,01ah		;94c6
	inc bc			;94c8
	jr $+27			;94c9
	ld d,(hl)		;94cb
	rla			;94cc
	inc bc			;94cd
	inc b			;94ce
	ld b,(hl)		;94cf
	ld a,(de)		;94d0
	ld sp,00410h		;94d1
	rrca			;94d4
	ld b,a			;94d5
	inc b			;94d6
l94d7h:
	jr nc,$+19		;94d7
	ld a,(bc)		;94d9
	inc c			;94da
	ld b,002h		;94db
	ld sp,00b10h		;94dd
	dec c			;94e0
	nop			;94e1
	rlca			;94e2
	jr nc,$+19		;94e3
	inc bc			;94e5
	rrca			;94e6
	ld (bc),a		;94e7
	rrca			;94e8
	ld sp,00b10h		;94e9
l94ech:
	dec c			;94ec
	nop			;94ed
	ld b,030h		;94ee
	ld de,00d0ah		;94f0
	rlca			;94f3
	inc bc			;94f4
	ld sp,00310h		;94f5
	rrca			;94f8
	inc b			;94f9
	inc b			;94fa
	jr nc,$+79		;94fb
	ccf			;94fd
	ld bc,04a04h		;94fe
l9501h:
	inc (hl)		;9501
	inc d			;9502
	ld c,l			;9503
	inc bc			;9504
	ld a,(0324bh)		;9505
	inc d			;9508
	inc d			;9509
	dec b			;950a
	jr c,$+51		;950b
	inc sp			;950d
	inc d			;950e
	inc l			;950f
	inc b			;9510
	ld d,b			;9511
	inc (hl)		;9512
	dec (hl)		;9513
	inc l			;9514
	dec l			;9515
	inc bc			;9516
	ld (bc),a		;9517
	ld c,a			;9518
	inc (hl)		;9519
	djnz l9520h		;951a
	inc b			;951c
	ld bc,03003h		;951d
l9520h:
	ld de,00202h		;9520
	inc bc			;9523
	ld (bc),a		;9524
	ld sp,00510h		;9525
	inc bc			;9528
	inc b			;9529
	ld bc,01130h		;952a
	ld bc,00304h		;952d
	ld (bc),a		;9530
	ld sp,00210h		;9531
	ld (bc),a		;9534
	ld bc,03003h		;9535
	ld de,00303h		;9538
	dec b			;953b
	inc b			;953c
	ld sp,00410h		;953d
	inc b			;9540
	ld bc,03002h		;9541
	ld de,00201h		;9544
	inc b			;9547
	inc bc			;9548
	ld sp,00510h		;9549
	inc bc			;954c
	ld (bc),a		;954d
	inc b			;954e
	jr nc,$+19		;954f
	ld bc,05104h		;9551
	ld bc,01031h		;9554
	inc bc			;9557
	ld (bc),a		;9558
	ld sp,03003h		;9559
	ld de,00304h		;955c
	cpl			;955f
	inc b			;9560
	ld sp,00110h		;9561
	inc b			;9564
	inc bc			;9565
	ld (bc),a		;9566
	jr nc,l957ah		;9567
	ld (bc),a		;9569
	ld (bc),a		;956a
	ld bc,03103h		;956b
	djnz $+6		;956e
	inc bc			;9570
	dec b			;9571
	inc b			;9572
	jr nc,$+19		;9573
	ld (bc),a		;9575
	inc b			;9576
	ld bc,03102h		;9577
l957ah:
	djnz l957fh		;957a
	ld (bc),a		;957c
	dec b			;957d
	inc bc			;957e
l957fh:
	jr nc,l9592h		;957f
	inc b			;9581
	ld (bc),a		;9582
	add hl,bc		;9583
	inc b			;9584
	ld sp,00210h		;9585
	inc bc			;9588
	inc b			;9589
	ld c,d			;958a
	inc (hl)		;958b
	ld de,00402h		;958c
	ld a,(0324bh)		;958f
l9592h:
	djnz l9595h		;9592
	ld (bc),a		;9594
l9595h:
	scf			;9595
	ld sp,01133h		;9596
	dec b			;9599
	inc bc			;959a
	jr c,l95d1h		;959b
	dec (hl)		;959d
	djnz l95a1h		;959e
	inc b			;95a0
l95a1h:
	ld d,b			;95a1
	ld sp,01134h		;95a2
	ld (bc),a		;95a5
	ld (bc),a		;95a6
	ld (bc),a		;95a7
	ld c,a			;95a8
	inc sp			;95a9
	djnz l95aeh		;95aa
	ld (bc),a		;95ac
	ld (bc),a		;95ad
l95aeh:
	ld (bc),a		;95ae
	inc (hl)		;95af
	ld de,0604ch		;95b0
	ld (bc),a		;95b3
	inc bc			;95b4
	ld sp,03612h		;95b5
	ld e,b			;95b8
	ld (bc),a		;95b9
	inc b			;95ba
	jr nc,$+4		;95bb
	ld bc,00103h		;95bd
	ld (bc),a		;95c0
	ld sp,00513h		;95c1
	ld (bc),a		;95c4
	inc bc			;95c5
	inc bc			;95c6
	jr nc,$+19		;95c7
	ld bc,00402h		;95c9
	inc b			;95cc
	ld sp,00312h		;95cd
	inc b			;95d0
l95d1h:
	ld bc,03002h		;95d1
	ld (bc),a		;95d4
	inc b			;95d5
	ld (bc),a		;95d6
	ld d,c			;95d7
	inc bc			;95d8
	ld sp,00213h		;95d9
	ld (bc),a		;95dc
	cpl			;95dd
	inc b			;95de
	jr nc,l95f2h		;95df
	inc bc			;95e1
	ld (bc),a		;95e2
	ld (bc),a		;95e3
	ld (bc),a		;95e4
	inc (hl)		;95e5
	ld (de),a		;95e6
	inc b			;95e7
	dec b			;95e8
	ld (bc),a		;95e9
	inc bc			;95ea
	jr nc,$+4		;95eb
	ld bc,0030fh		;95ed
	inc b			;95f0
	inc (hl)		;95f1
l95f2h:
	inc de			;95f2
	ld a,(bc)		;95f3
	dec c			;95f4
	ld b,04ah		;95f5
	jr nc,l960ah		;95f7
	dec bc			;95f9
	ld b,00fh		;95fa
	ld c,e			;95fc
	dec hl			;95fd
	djnz l960ah		;95fe
	rlca			;9600
l9601h:
	rrca			;9601
	jr nc,l961ah		;9602
	ld de,00e0bh		;9604
	ld b,031h		;9607
	ld a,(de)		;9609
l960ah:
	djnz l960dh		;960a
	rrca			;960c
l960dh:
	ld (bc),a		;960d
	ld sp,01102h		;960e
	ld (bc),a		;9611
	dec de			;9612
	ld (bc),a		;9613
	ld sp,01003h		;9614
	jr l9635h		;9617
	ld (bc),a		;9619
l961ah:
	ld e,e			;961a
	inc b			;961b
	dec d			;961c
	add hl,de		;961d
	ld a,(de)		;961e
	ld bc,00203h		;961f
	ld d,01ah		;9622
	inc bc			;9624
	dec b			;9625
	inc b			;9626
	inc bc			;9627
	rla			;9628
	ld bc,00104h		;9629
	ld (bc),a		;962c
	inc b			;962d
	ld (00204h),hl		;962e
	ld c,d			;9631
	ld d,c			;9632
	jr $+83			;9633
l9635h:
	ld d,c			;9635
	ld d,c			;9636
	inc (hl)		;9637
	ld d,e			;9638
	ld d,a			;9639
	inc (hl)		;963a
	dec (hl)		;963b
	dec (hl)		;963c
	ld d,e			;963d
	ld b,b			;963e
	ld d,(hl)		;963f
	cp 0ffh			;9640
	dec de			;9642
	rst 38h			;9643
	dec b			;9644
	rst 38h			;9645
	ld de,02006h		;9646
	ld sp,05335h		;9649
	ld e,a			;964c
	ld a,(de)		;964d
	inc bc			;964e
	inc b			;964f
	ld bc,00402h		;9650
	inc bc			;9653
	jr l967ch		;9654
	ld d,(hl)		;9656
	ld sp,03031h		;9657
	ld d,e			;965a
	ld e,a			;965b
	ld a,(de)		;965c
	ld a,(bc)		;965d
	dec bc			;965e
	jr l96a7h		;965f
	ld b,a			;9661
	ld (bc),a		;9662
	jr l968bh		;9663
	ld d,(hl)		;9665
	ld sp,03034h		;9666
	ld d,e			;9669
	ld e,a			;966a
	ld a,(de)		;966b
	dec b			;966c
	inc c			;966d
	jr l96e3h		;966e
	ld d,(hl)		;9670
	jr nc,l96c6h		;9671
	ld b,b			;9673
	ld d,(hl)		;9674
	ld sp,03534h		;9675
	ld d,e			;9678
	ld e,a			;9679
	ld a,(de)		;967a
	inc bc			;967b
l967ch:
	inc bc			;967c
	ld bc,05626h		;967d
	ld sp,04053h		;9680
	ld d,(hl)		;9683
	ld sp,03131h		;9684
	ld d,e			;9687
	ld e,a			;9688
	ld a,(de)		;9689
	ld (bc),a		;968a
l968bh:
	ld bc,02618h		;968b
	ld d,(hl)		;968e
	jr nc,l96e4h		;968f
	ld b,b			;9691
	ld d,(hl)		;9692
	ld sp,03131h		;9693
	ld d,e			;9696
	ld b,b			;9697
	ld l,002h		;9698
	inc bc			;969a
	inc b			;969b
	inc e			;969c
	ld a,(de)		;969d
	ccf			;969e
	ld d,e			;969f
	ld b,b			;96a0
	ld d,(hl)		;96a1
	ld sp,03131h		;96a2
	ld d,e			;96a5
	ld b,b			;96a6
l96a7h:
	ld d,(hl)		;96a7
	rra			;96a8
	ld (bc),a		;96a9
	ld (bc),a		;96aa
	ld bc,00203h		;96ab
	jr $+40			;96ae
	ld d,(hl)		;96b0
	ld sp,03131h		;96b1
	ld d,e			;96b4
	ld b,b			;96b5
	ld d,(hl)		;96b6
	ld sp,04620h		;96b7
	ld b,a			;96ba
	dec b			;96bb
	add hl,bc		;96bc
	jr l96e5h		;96bd
	ld d,(hl)		;96bf
	ld sp,03131h		;96c0
	ld d,e			;96c3
	ld b,b			;96c4
	ld d,(hl)		;96c5
l96c6h:
	ld sp,05f53h		;96c6
	ld a,(de)		;96c9
	inc bc			;96ca
	inc b			;96cb
	jr l96f4h		;96cc
	ld d,(hl)		;96ce
	ld sp,03131h		;96cf
	ld d,e			;96d2
	ld b,b			;96d3
	ld d,(hl)		;96d4
	ld sp,05f53h		;96d5
	ld a,(de)		;96d8
	ld bc,01805h		;96d9
	ld h,056h		;96dc
	ld sp,01bffh		;96de
	rst 38h			;96e1
	inc bc			;96e2
l96e3h:
	ld b,b			;96e3
l96e4h:
	ld e,(hl)		;96e4
l96e5h:
	ld e,h			;96e5
	ld b,a			;96e6
	dec de			;96e7
	ld e,d			;96e8
	ld e,(hl)		;96e9
	ld e,a			;96ea
	ld e,(hl)		;96eb
	ld e,a			;96ec
	ld a,(de)		;96ed
	inc bc			;96ee
	inc b			;96ef
	jr l970bh		;96f0
	ld a,(de)		;96f2
	rst 38h			;96f3
l96f4h:
	add hl,de		;96f4
	nop			;96f5
	ld e,a			;96f6
	ld a,(de)		;96f7
	inc b			;96f8
	inc bc			;96f9
	dec de			;96fa
	inc e			;96fb
	ld a,(de)		;96fc
	ld bc,013ffh		;96fd
	ld l,c			;9700
l9701h:
	or a			;9701
	ld a,(de)		;9702
	ld bc,00403h		;9703
	ld (bc),a		;9706
	ld bc,00403h		;9707
	rst 38h			;970a
l970bh:
	ld de,00002h		;970b
	rst 38h			;970e
	rla			;970f
	ld bc,00000h		;9710
	nop			;9713
	nop			;9714
	nop			;9715
	nop			;9716
	nop			;9717
	nop			;9718
	nop			;9719
	nop			;971a
	nop			;971b
	nop			;971c
	nop			;971d
	nop			;971e
	nop			;971f
	nop			;9720
	nop			;9721
	nop			;9722
	nop			;9723
	nop			;9724
	nop			;9725
	nop			;9726
	nop			;9727
	nop			;9728
	rst 38h			;9729
	ld de,00003h		;972a
	nop			;972d
	nop			;972e
	nop			;972f
	nop			;9730
	nop			;9731
	nop			;9732
	nop			;9733
	nop			;9734
	nop			;9735
	nop			;9736
	nop			;9737
	nop			;9738
	nop			;9739
	nop			;973a
	nop			;973b
	nop			;973c
	rst 38h			;973d
	ld de,00004h		;973e
	nop			;9741
	nop			;9742
	nop			;9743
	nop			;9744
	nop			;9745
	nop			;9746
	nop			;9747
	nop			;9748
	ld h,c			;9749
	ld h,d			;974a
	ld h,e			;974b
	nop			;974c
	nop			;974d
	ld h,h			;974e
	ld h,l			;974f
	ld h,(hl)		;9750
	rst 38h			;9751
	ld de,00005h		;9752
	ld h,a			;9755
	ld l,b			;9756
	ld l,c			;9757
	nop			;9758
	nop			;9759
	ld l,l			;975a
	ld l,(hl)		;975b
	ld l,a			;975c
	ld l,d			;975d
	ld l,e			;975e
	ld l,h			;975f
	nop			;9760
	nop			;9761
	ld (hl),b		;9762
	ld (hl),c		;9763
	ld (hl),d		;9764
	rst 38h			;9765
	dec e			;9766
	rst 38h			;9767
	ld d,000h		;9768
	nop			;976a
	nop			;976b
	ld b,b			;976c
	nop			;976d
	ld d,b			;976e
	cp 0ffh			;976f
	dec de			;9771
	rst 38h			;9772
	add hl,bc		;9773
	rst 38h			;9774
	ld de,00000h		;9775
	ld l,b			;9778
	ld l,b			;9779
	ld (hl),e		;977a
	nop			;977b
	ld d,h			;977c
	ld e,b			;977d
	ld h,l			;977e
	ld h,l			;977f
	ld l,l			;9780
	nop			;9781
	ld d,d			;9782
	ld e,c			;9783
	ld l,h			;9784
	ld h,(hl)		;9785
	dec a			;9786
	ld b,e			;9787
	ld b,(hl)		;9788
	ld d,l			;9789
	ld l,b			;978a
	ld h,c			;978b
	ld b,c			;978c
	ld b,h			;978d
	ld b,a			;978e
	ld b,a			;978f
	inc e			;9790
	ld l,e			;9791
	ccf			;9792
	ld b,l			;9793
	inc b			;9794
	inc b			;9795
	dec e			;9796
	ld e,a			;9797
	ld (hl),d		;9798
	ld c,(hl)		;9799
	dec b			;979a
	dec b			;979b
	ld hl,07325h		;979c
	ld (de),a		;979f
	ex af,af'		;97a0
	add hl,bc		;97a1
	ld h,026h		;97a2
	nop			;97a4
	ld c,010h		;97a5
	djnz $+37		;97a7
	daa			;97a9
	nop			;97aa
	rrca			;97ab
	ld de,02411h		;97ac
	jr z,l97fch		;97af
	inc de			;97b1
	dec d			;97b2
	ld b,01ch		;97b3
	ld l,l			;97b5
	ld b,b			;97b6
	ld b,e			;97b7
	ld b,(hl)		;97b8
	inc bc			;97b9
	sbc a,e			;97ba
	ld (hl),c		;97bb
	ld b,c			;97bc
	ld b,h			;97bd
	sbc a,l			;97be
	sbc a,a			;97bf
	sbc a,h			;97c0
	ld (hl),b		;97c1
	ld b,d			;97c2
	ld b,l			;97c3
	sbc a,(hl)		;97c4
	and b			;97c5
	ld (00016h),a		;97c6
	rla			;97c9
	add hl,de		;97ca
	jr l9839h		;97cb
	ld d,b			;97cd
	ld c,e			;97ce
	ld c,a			;97cf
	scf			;97d0
	ld e,b			;97d1
	dec hl			;97d2
	ld h,c			;97d3
	ld a,(de)		;97d4
	ld d,04ch		;97d5
	inc b			;97d7
	ld l,062h		;97d8
	dec de			;97da
	ld b,e			;97db
	ld b,(hl)		;97dc
	ex af,af'		;97dd
	dec l			;97de
	ld h,e			;97df
	ld a,044h		;97e0
	ld b,a			;97e2
	rlca			;97e3
	ld l,h			;97e4
	ld d,b			;97e5
	ccf			;97e6
	ld b,l			;97e7
	ld (hl),001h		;97e8
	dec hl			;97ea
	ld h,a			;97eb
	ld c,c			;97ec
	ld e,d			;97ed
	ld d,l			;97ee
	ld (bc),a		;97ef
	ld h,064h		;97f0
	ld c,d			;97f2
	ld a,(de)		;97f3
	ld d,(hl)		;97f4
	rlca			;97f5
	daa			;97f6
	ld l,b			;97f7
	rla			;97f8
	dec de			;97f9
	scf			;97fa
	ld e,b			;97fb
l97fch:
	dec l			;97fc
	ld h,b			;97fd
	nop			;97fe
	nop			;97ff
	ld d,e			;9800
	inc b			;9801
	ld l,h			;9802
	ld c,l			;9803
	ld l,c			;9804
	jr c,l983eh		;9805
	inc d			;9807
	ld (01633h),a		;9808
	nop			;980b
	ld d,e			;980c
	rlca			;980d
	ld l,h			;980e
	ld c,l			;980f
	ld l,c			;9810
	add hl,sp		;9811
	scf			;9812
	ld bc,0742bh		;9813
	dec a			;9816
	ld b,e			;9817
	ld b,(hl)		;9818
	ld (bc),a		;9819
	inc l			;981a
	ld (hl),l		;981b
	ld b,c			;981c
	ld b,h			;981d
	ld b,a			;981e
	rlca			;981f
	dec l			;9820
	inc a			;9821
	ld l,(hl)		;9822
	ld b,l			;9823
	ld (hl),058h		;9824
	add hl,hl		;9826
	ld l,a			;9827
	ld (hl),e		;9828
	rla			;9829
	add hl,de		;982a
	jr l9857h		;982b
	ld d,b			;982d
	ld c,e			;982e
	ld d,a			;982f
	dec sp			;9830
	ld e,b			;9831
	dec l			;9832
	ld h,d			;9833
	ld b,b			;9834
	ld b,e			;9835
	ld b,(hl)		;9836
	inc b			;9837
	ld h,l			;9838
l9839h:
	ld (hl),b		;9839
	jr $+70			;983a
	ld b,a			;983c
	rlca			;983d
l983eh:
	ld l,d			;983e
	ld (hl),c		;983f
	rla			;9840
	ld b,l			;9841
	ld (hl),058h		;9842
	ld h,l			;9844
	ld h,l			;9845
	jr l989ah		;9846
	ld e,c			;9848
	inc b			;9849
	ld l,h			;984a
	ld d,b			;984b
	dec (hl)		;984c
	ld d,a			;984d
	dec sp			;984e
	dec b			;984f
	jr nc,l98b9h		;9850
	nop			;9852
	inc c			;9853
	ld a,(bc)		;9854
	djnz l9888h		;9855
l9857h:
	ld (hl),l		;9857
	nop			;9858
	dec c			;9859
	dec bc			;985a
	dec bc			;985b
	ld l,h			;985c
	ld d,b			;985d
	dec (hl)		;985e
	jr c,l98bch		;985f
	ld d,l			;9861
	dec hl			;9862
	ld e,a			;9863
	ld (hl),d		;9864
	nop			;9865
	rla			;9866
	inc b			;9867
	ld l,068h		;9868
	ld a,(de)		;986a
	add hl,sp		;986b
	scf			;986c
	ex af,af'		;986d
	dec l			;986e
	ld h,l			;986f
	dec de			;9870
	ld e,h			;9871
	ld e,(hl)		;9872
	rlca			;9873
	ld l,h			;9874
	ld d,b			;9875
	ld c,e			;9876
	jr c,l98b0h		;9877
	ld e,b			;9879
	ld (01633h),a		;987a
	nop			;987d
	rla			;987e
	jr l98e6h		;987f
	ld h,b			;9881
	nop			;9882
	ld a,(0555bh)		;9883
	dec hl			;9886
	ld e,a			;9887
l9888h:
	ld (hl),d		;9888
	nop			;9889
	ld d,c			;988a
	inc b			;988b
	ld (07330h),hl		;988c
	inc c			;988f
	ld a,(bc)		;9890
	djnz $+49		;9891
	ld sp,00d00h		;9893
	dec bc			;9896
	dec bc			;9897
	ld e,07bh		;9898
l989ah:
	add a,d			;989a
	adc a,b			;989b
	sub b			;989c
	jr nz,l9916h		;989d
	ld a,h			;989f
	nop			;98a0
	adc a,c			;98a1
	sub c			;98a2
	inc (hl)		;98a3
	ld e,07bh		;98a4
	add a,e			;98a6
	adc a,d			;98a7
	sub b			;98a8
	jr nz,l9922h		;98a9
	ld a,h			;98ab
	nop			;98ac
	adc a,c			;98ad
	sub c			;98ae
	inc (hl)		;98af
l98b0h:
	ld e,07bh		;98b0
	add a,d			;98b2
	adc a,b			;98b3
	sub b			;98b4
	jr nz,$+121		;98b5
	ld a,h			;98b7
	nop			;98b8
l98b9h:
	adc a,c			;98b9
	sub c			;98ba
	inc (hl)		;98bb
l98bch:
	ld e,07bh		;98bc
	add a,d			;98be
	adc a,b			;98bf
	sub b			;98c0
	jr nz,l993ah		;98c1
	ld a,h			;98c3
	nop			;98c4
	adc a,c			;98c5
	sub c			;98c6
	inc (hl)		;98c7
	rst 38h			;98c8
	rla			;98c9
	ld (bc),a		;98ca
	rst 38h			;98cb
	ld de,00001h		;98cc
	rst 38h			;98cf
	inc de			;98d0
	dec (hl)		;98d1
	cp c			;98d2
	ld e,07bh		;98d3
	add a,d			;98d5
	adc a,b			;98d6
	sub b			;98d7
	jr nz,l9951h		;98d8
	ld a,h			;98da
	nop			;98db
	adc a,c			;98dc
	sub c			;98dd
	inc (hl)		;98de
	ld e,07bh		;98df
	add a,e			;98e1
	adc a,d			;98e2
	sub b			;98e3
	jr nz,l995dh		;98e4
l98e6h:
	ld a,l			;98e6
	nop			;98e7
	adc a,e			;98e8
	sub d			;98e9
	inc (hl)		;98ea
	ld e,07eh		;98eb
	add a,h			;98ed
	adc a,h			;98ee
	sub e			;98ef
	sub a			;98f0
	rst 38h			;98f1
	add hl,de		;98f2
	add a,h			;98f3
	ld a,b			;98f4
	ld a,a			;98f5
	add a,l			;98f6
	adc a,l			;98f7
	sub h			;98f8
	sbc a,b			;98f9
	ld a,c			;98fa
	add a,b			;98fb
	add a,(hl)		;98fc
	adc a,(hl)		;98fd
	sub l			;98fe
	sbc a,c			;98ff
	ld a,d			;9900
	add a,c			;9901
	add a,a			;9902
	adc a,a			;9903
	sub (hl)		;9904
	sbc a,d			;9905
	cp 0ffh			;9906
	ld d,0ffh		;9908
	ld a,(de)		;990a
	rst 38h			;990b
	add hl,bc		;990c
	rst 38h			;990d
	rla			;990e
	ld (bc),a		;990f
	rst 38h			;9910
	ld a,(de)		;9911
	rst 38h			;9912
	add hl,bc		;9913
	rst 38h			;9914
	rla			;9915
l9916h:
	ld bc,019ffh		;9916
	nop			;9919
	rst 38h			;991a
	ld a,(de)		;991b
	rst 38h			;991c
	add hl,bc		;991d
	rst 38h			;991e
	inc de			;991f
	ld c,d			;9920
	xor c			;9921
l9922h:
	rst 38h			;9922
	dec d			;9923
	rst 38h			;9924
	jr $+1			;9925
	ld de,00001h		;9927
	rst 38h			;992a
	rla			;992b
	ld bc,014ffh		;992c
	rst 38h			;992f
	inc de			;9930
	dec (hl)		;9931
	cp c			;9932
	rst 38h			;9933
	ld d,030h		;9934
	nop			;9936
	ld b,b			;9937
	djnz l998ah		;9938
l993ah:
	jr nz,$+20		;993a
	ld (04424h),a		;993c
	inc (hl)		;993f
	ld d,(hl)		;9940
	ld h,h			;9941
	sub a			;9942
	scf			;9943
	or h			;9944
	ld b,h			;9945
	rst 0			;9946
	cp 0ffh			;9947
	dec de			;9949
	rst 38h			;994a
	add hl,bc		;994b
	rst 38h			;994c
	ld de,00002h		;994d
	rst 38h			;9950
l9951h:
	rla			;9951
	ld (bc),a		;9952
	ld bc,00f05h		;9953
	dec c			;9956
	add hl,bc		;9957
	inc b			;9958
	ld (bc),a		;9959
	ld b,009h		;995a
	dec bc			;995c
l995dh:
	dec c			;995d
	ld c,004h		;995e
	rlca			;9960
	ld b,009h		;9961
	rrca			;9963
	dec c			;9964
	add hl,bc		;9965
	ex af,af'		;9966
	ld (bc),a		;9967
	ld bc,00b09h		;9968
	dec bc			;996b
	inc b			;996c
	rlca			;996d
	inc bc			;996e
	inc c			;996f
	ex af,af'		;9970
	nop			;9971
	dec c			;9972
	dec c			;9973
	rlca			;9974
	ld (bc),a		;9975
	inc bc			;9976
	ld c,004h		;9977
	add hl,bc		;9979
	dec c			;997a
	ld b,008h		;997b
	ex af,af'		;997d
	dec b			;997e
	dec bc			;997f
	rrca			;9980
	dec c			;9981
	inc b			;9982
	rlca			;9983
	ld c,007h		;9984
	add hl,bc		;9986
	inc b			;9987
	dec bc			;9988
	inc b			;9989
l998ah:
	dec c			;998a
	ld b,005h		;998b
	dec bc			;998d
	dec c			;998e
	ld c,00dh		;998f
	ld c,00dh		;9991
	add hl,bc		;9993
	dec bc			;9994
	ex af,af'		;9995
	dec bc			;9996
	dec c			;9997
	ld c,00dh		;9998
	ld bc,00701h		;999a
	inc b			;999d
	ex af,af'		;999e
	dec bc			;999f
	dec c			;99a0
	inc bc			;99a1
	inc c			;99a2
	ex af,af'		;99a3
	dec c			;99a4
	dec b			;99a5
	rlca			;99a6
	ex af,af'		;99a7
	ld a,(bc)		;99a8
	ld bc,00504h		;99a9
	ld c,009h		;99ac
	dec b			;99ae
	ex af,af'		;99af
	ld c,00dh		;99b0
	rlca			;99b2
	ex af,af'		;99b3
	inc b			;99b4
	dec c			;99b5
	dec b			;99b6
	add hl,bc		;99b7
	dec bc			;99b8
	add hl,bc		;99b9
	rlca			;99ba
	dec bc			;99bb
	ld c,00dh		;99bc
	ld c,004h		;99be
	ld c,00dh		;99c0
	rrca			;99c2
	dec bc			;99c3
	inc b			;99c4
	ld bc,00e08h		;99c5
	rlca			;99c8
	ld b,005h		;99c9
	ld c,00dh		;99cb
	dec bc			;99cd
	inc b			;99ce
	ld (bc),a		;99cf
	inc c			;99d0
	ld bc,00706h		;99d1
	add hl,bc		;99d4
	dec c			;99d5
	rrca			;99d6
	ld c,001h		;99d7
	inc b			;99d9
	ld b,00eh		;99da
	add hl,bc		;99dc
	ex af,af'		;99dd
	rlca			;99de
	ld (bc),a		;99df
	ex af,af'		;99e0
	dec b			;99e1
	inc b			;99e2
	inc b			;99e3
	dec b			;99e4
	inc bc			;99e5
	dec bc			;99e6
	add hl,bc		;99e7
	dec c			;99e8
	ld b,004h		;99e9
	ex af,af'		;99eb
	ex af,af'		;99ec
	ld c,009h		;99ed
	add hl,bc		;99ef
	inc bc			;99f0
	ld c,009h		;99f1
	rrca			;99f3
	dec bc			;99f4
	dec b			;99f5
	rlca			;99f6
	dec c			;99f7
	inc b			;99f8
	add hl,bc		;99f9
	ld c,001h		;99fa
	inc b			;99fc
	dec bc			;99fd
	dec b			;99fe
	inc bc			;99ff
	ex af,af'		;9a00
	add hl,bc		;9a01
	dec b			;9a02
	rlca			;9a03
	dec b			;9a04
	add hl,bc		;9a05
	rlca			;9a06
	rlca			;9a07
	ld bc,00b09h		;9a08
	rrca			;9a0b
	ld c,004h		;9a0c
	add hl,bc		;9a0e
	rrca			;9a0f
	dec bc			;9a10
	dec c			;9a11
	rrca			;9a12
	inc b			;9a13
	dec bc			;9a14
	rrca			;9a15
	dec bc			;9a16
	inc b			;9a17
	nop			;9a18
	inc b			;9a19
	nop			;9a1a
	dec bc			;9a1b
	nop			;9a1c
	nop			;9a1d
	dec bc			;9a1e
	nop			;9a1f
	dec bc			;9a20
	nop			;9a21
	nop			;9a22
	rrca			;9a23
	nop			;9a24
	rrca			;9a25
	nop			;9a26
	nop			;9a27
	nop			;9a28
	nop			;9a29
	nop			;9a2a
	nop			;9a2b
	nop			;9a2c
	nop			;9a2d
l9a2eh:
	nop			;9a2e
	nop			;9a2f
	nop			;9a30
	nop			;9a31
	nop			;9a32
	nop			;9a33
	nop			;9a34
	nop			;9a35
	nop			;9a36
	nop			;9a37
	nop			;9a38
	nop			;9a39
	nop			;9a3a
	nop			;9a3b
	nop			;9a3c
	nop			;9a3d
	nop			;9a3e
	nop			;9a3f
	nop			;9a40
	nop			;9a41
	nop			;9a42
	rst 38h			;9a43
	add hl,de		;9a44
	nop			;9a45
	nop			;9a46
	nop			;9a47
	nop			;9a48
	nop			;9a49
	nop			;9a4a
	nop			;9a4b
	nop			;9a4c
	nop			;9a4d
	nop			;9a4e
	nop			;9a4f
	nop			;9a50
	nop			;9a51
	nop			;9a52
	nop			;9a53
	nop			;9a54
	nop			;9a55
	nop			;9a56
	nop			;9a57
	nop			;9a58
	nop			;9a59
	nop			;9a5a
	nop			;9a5b
	nop			;9a5c
	nop			;9a5d
	rst 38h			;9a5e
	dec d			;9a5f
	rst 38h			;9a60
	jr $+1			;9a61
	ld de,00003h		;9a63
	rst 38h			;9a66
	inc de			;9a67
	ld l,h			;9a68
	cp d			;9a69
	rst 38h			;9a6a
	inc d			;9a6b
	nop			;9a6c
	nop			;9a6d
	ld bc,00112h		;9a6e
	inc hl			;9a71
	ld (de),a		;9a72
	inc (hl)		;9a73
	inc hl			;9a74
	ld b,l			;9a75
	ld d,b			;9a76
	ld d,b			;9a77
	ld d,b			;9a78
	sub b			;9a79
	jr nc,l9a2eh		;9a7a
	ld b,b			;9a7c
	jp 0fffeh		;9a7d
	dec de			;9a80
	rst 38h			;9a81
	add hl,bc		;9a82
	rst 38h			;9a83
	ld de,00000h		;9a84
	nop			;9a87
	inc c			;9a88
	ld c,00dh		;9a89
	ld hl,00128h		;9a8b
	dec c			;9a8e
	rrca			;9a8f
	ld c,00ch		;9a90
	add hl,hl		;9a92
	ld (bc),a		;9a93
	ld c,00ch		;9a94
	rrca			;9a96
	dec c			;9a97
	ld hl,(00f03h)		;9a98
	dec c			;9a9b
	inc c			;9a9c
	ld c,02bh		;9a9d
	nop			;9a9f
	inc c			;9aa0
	ld c,00dh		;9aa1
	ld hl,00128h		;9aa3
	dec c			;9aa6
	rrca			;9aa7
	ld c,00ch		;9aa8
	add hl,hl		;9aaa
	inc b			;9aab
	djnz $+14		;9aac
	dec de			;9aae
	ld (hl),035h		;9aaf
	dec b			;9ab1
	ld de,01c17h		;9ab2
	ld (0002ch),hl		;9ab5
	rrca			;9ab8
	ld c,00ch		;9ab9
	ld hl,00628h		;9abb
	inc c			;9abe
	rrca			;9abf
	dec c			;9ac0
	ld c,02dh		;9ac1
	inc (hl)		;9ac3
	dec c			;9ac4
	inc c			;9ac5
	ld c,00fh		;9ac6
	ld l,007h		;9ac8
	ld (de),a		;9aca
	dec c			;9acb
	rrca			;9acc
	inc hl			;9acd
	cpl			;9ace
	ex af,af'		;9acf
	inc de			;9ad0
	ld c,01dh		;9ad1
	inc h			;9ad3
	jr nc,l9adfh		;9ad4
	inc d			;9ad6
	jr l9af7h		;9ad7
	dec h			;9ad9
	ld sp,0150ah		;9ada
	add hl,de		;9add
	rra			;9ade
l9adfh:
	ld h,032h		;9adf
	dec bc			;9ae1
	ld d,01ah		;9ae2
	jr nz,l9b0dh		;9ae4
	inc sp			;9ae6
	cp 0ffh			;9ae7
	ld d,0ffh		;9ae9
	rst 38h			;9aeb
	rst 38h			;9aec
	rst 38h			;9aed
	rst 38h			;9aee
	rst 38h			;9aef
	rst 38h			;9af0
	rst 38h			;9af1
	rst 38h			;9af2
	rst 38h			;9af3
	rst 38h			;9af4
	rst 38h			;9af5
	rst 38h			;9af6
l9af7h:
	rst 38h			;9af7
	rst 38h			;9af8
	rst 38h			;9af9
	rst 38h			;9afa
	rst 38h			;9afb
	rst 38h			;9afc
	rst 38h			;9afd
	rst 38h			;9afe
	rst 38h			;9aff
	rst 38h			;9b00
	rst 38h			;9b01
	rst 38h			;9b02
	rst 38h			;9b03
	rst 38h			;9b04
	rst 38h			;9b05
	rst 38h			;9b06
	rst 38h			;9b07
	rst 38h			;9b08
	rst 38h			;9b09
	rst 38h			;9b0a
	rst 38h			;9b0b
	rst 38h			;9b0c
l9b0dh:
	rst 38h			;9b0d
	rst 38h			;9b0e
	rst 38h			;9b0f
	rst 38h			;9b10
	rst 38h			;9b11
	rst 38h			;9b12
	rst 38h			;9b13
	rst 38h			;9b14
	rst 38h			;9b15
	rst 38h			;9b16
	rst 38h			;9b17
	rst 38h			;9b18
	rst 38h			;9b19
	rst 38h			;9b1a
	rst 38h			;9b1b
	rst 38h			;9b1c
	rst 38h			;9b1d
	rst 38h			;9b1e
	rst 38h			;9b1f
	rst 38h			;9b20
	rst 38h			;9b21
	rst 38h			;9b22
	rst 38h			;9b23
	rst 38h			;9b24
	rst 38h			;9b25
	rst 38h			;9b26
	rst 38h			;9b27
	rst 38h			;9b28
	rst 38h			;9b29
	rst 38h			;9b2a
	rst 38h			;9b2b
	rst 38h			;9b2c
	rst 38h			;9b2d
	rst 38h			;9b2e
	rst 38h			;9b2f
	rst 38h			;9b30
	rst 38h			;9b31
	rst 38h			;9b32
	rst 38h			;9b33
	rst 38h			;9b34
	rst 38h			;9b35
	rst 38h			;9b36
	rst 38h			;9b37
	rst 38h			;9b38
	rst 38h			;9b39
	rst 38h			;9b3a
	rst 38h			;9b3b
	rst 38h			;9b3c
	rst 38h			;9b3d
	rst 38h			;9b3e
	rst 38h			;9b3f
	rst 38h			;9b40
	rst 38h			;9b41
	rst 38h			;9b42
	rst 38h			;9b43
	rst 38h			;9b44
	rst 38h			;9b45
	rst 38h			;9b46
	rst 38h			;9b47
	rst 38h			;9b48
	rst 38h			;9b49
	rst 38h			;9b4a
	rst 38h			;9b4b
	rst 38h			;9b4c
	rst 38h			;9b4d
	rst 38h			;9b4e
	rst 38h			;9b4f
	rst 38h			;9b50
	rst 38h			;9b51
	rst 38h			;9b52
	rst 38h			;9b53
	rst 38h			;9b54
	rst 38h			;9b55
	rst 38h			;9b56
	rst 38h			;9b57
	rst 38h			;9b58
	rst 38h			;9b59
	rst 38h			;9b5a
	rst 38h			;9b5b
	rst 38h			;9b5c
	rst 38h			;9b5d
	rst 38h			;9b5e
	rst 38h			;9b5f
	rst 38h			;9b60
	rst 38h			;9b61
	rst 38h			;9b62
	rst 38h			;9b63
	rst 38h			;9b64
	rst 38h			;9b65
	rst 38h			;9b66
	rst 38h			;9b67
	rst 38h			;9b68
	rst 38h			;9b69
	rst 38h			;9b6a
	rst 38h			;9b6b
	rst 38h			;9b6c
	rst 38h			;9b6d
	rst 38h			;9b6e
	rst 38h			;9b6f
	rst 38h			;9b70
	rst 38h			;9b71
	rst 38h			;9b72
	rst 38h			;9b73
	rst 38h			;9b74
	rst 38h			;9b75
	rst 38h			;9b76
	rst 38h			;9b77
	rst 38h			;9b78
	rst 38h			;9b79
	rst 38h			;9b7a
	rst 38h			;9b7b
	rst 38h			;9b7c
	rst 38h			;9b7d
	rst 38h			;9b7e
	rst 38h			;9b7f
	rst 38h			;9b80
	rst 38h			;9b81
	rst 38h			;9b82
	rst 38h			;9b83
	rst 38h			;9b84
	rst 38h			;9b85
	rst 38h			;9b86
	rst 38h			;9b87
	rst 38h			;9b88
	rst 38h			;9b89
	rst 38h			;9b8a
	rst 38h			;9b8b
	rst 38h			;9b8c
	rst 38h			;9b8d
	rst 38h			;9b8e
	rst 38h			;9b8f
	rst 38h			;9b90
	rst 38h			;9b91
	rst 38h			;9b92
	rst 38h			;9b93
	rst 38h			;9b94
	rst 38h			;9b95
	rst 38h			;9b96
	rst 38h			;9b97
	rst 38h			;9b98
	rst 38h			;9b99
	rst 38h			;9b9a
	rst 38h			;9b9b
	rst 38h			;9b9c
	rst 38h			;9b9d
	rst 38h			;9b9e
	rst 38h			;9b9f
	rst 38h			;9ba0
	rst 38h			;9ba1
	rst 38h			;9ba2
	rst 38h			;9ba3
	rst 38h			;9ba4
	rst 38h			;9ba5
	rst 38h			;9ba6
	rst 38h			;9ba7
	rst 38h			;9ba8
	rst 38h			;9ba9
	rst 38h			;9baa
	rst 38h			;9bab
	rst 38h			;9bac
	rst 38h			;9bad
	rst 38h			;9bae
	rst 38h			;9baf
	rst 38h			;9bb0
	rst 38h			;9bb1
	rst 38h			;9bb2
	rst 38h			;9bb3
	rst 38h			;9bb4
	rst 38h			;9bb5
	rst 38h			;9bb6
	rst 38h			;9bb7
	rst 38h			;9bb8
	rst 38h			;9bb9
	rst 38h			;9bba
	rst 38h			;9bbb
	rst 38h			;9bbc
	rst 38h			;9bbd
	rst 38h			;9bbe
	rst 38h			;9bbf
	rst 38h			;9bc0
	rst 38h			;9bc1
	rst 38h			;9bc2
	rst 38h			;9bc3
	rst 38h			;9bc4
	rst 38h			;9bc5
	rst 38h			;9bc6
	rst 38h			;9bc7
	rst 38h			;9bc8
	rst 38h			;9bc9
	rst 38h			;9bca
	rst 38h			;9bcb
	rst 38h			;9bcc
	rst 38h			;9bcd
	rst 38h			;9bce
	rst 38h			;9bcf
	rst 38h			;9bd0
	rst 38h			;9bd1
	rst 38h			;9bd2
	rst 38h			;9bd3
	rst 38h			;9bd4
	rst 38h			;9bd5
	rst 38h			;9bd6
	rst 38h			;9bd7
	rst 38h			;9bd8
	rst 38h			;9bd9
	rst 38h			;9bda
	rst 38h			;9bdb
	rst 38h			;9bdc
	rst 38h			;9bdd
	rst 38h			;9bde
	rst 38h			;9bdf
	rst 38h			;9be0
	rst 38h			;9be1
	rst 38h			;9be2
	rst 38h			;9be3
	rst 38h			;9be4
	rst 38h			;9be5
	rst 38h			;9be6
	rst 38h			;9be7
	rst 38h			;9be8
	rst 38h			;9be9
	rst 38h			;9bea
	rst 38h			;9beb
	rst 38h			;9bec
	rst 38h			;9bed
	rst 38h			;9bee
	rst 38h			;9bef
	rst 38h			;9bf0
	rst 38h			;9bf1
	rst 38h			;9bf2
	rst 38h			;9bf3
	rst 38h			;9bf4
	rst 38h			;9bf5
	rst 38h			;9bf6
	rst 38h			;9bf7
	rst 38h			;9bf8
	rst 38h			;9bf9
	rst 38h			;9bfa
	rst 38h			;9bfb
	rst 38h			;9bfc
	rst 38h			;9bfd
	rst 38h			;9bfe
	rst 38h			;9bff
	rst 38h			;9c00
	rst 38h			;9c01
	rst 38h			;9c02
	rst 38h			;9c03
	rst 38h			;9c04
	rst 38h			;9c05
	rst 38h			;9c06
	rst 38h			;9c07
	rst 38h			;9c08
	rst 38h			;9c09
	rst 38h			;9c0a
	rst 38h			;9c0b
	rst 38h			;9c0c
	rst 38h			;9c0d
	rst 38h			;9c0e
	rst 38h			;9c0f
	rst 38h			;9c10
	rst 38h			;9c11
	rst 38h			;9c12
	rst 38h			;9c13
	rst 38h			;9c14
	rst 38h			;9c15
	rst 38h			;9c16
	rst 38h			;9c17
	rst 38h			;9c18
	rst 38h			;9c19
	rst 38h			;9c1a
	rst 38h			;9c1b
	rst 38h			;9c1c
	rst 38h			;9c1d
	rst 38h			;9c1e
	rst 38h			;9c1f
	rst 38h			;9c20
	rst 38h			;9c21
	rst 38h			;9c22
	rst 38h			;9c23
	rst 38h			;9c24
	rst 38h			;9c25
	rst 38h			;9c26
	rst 38h			;9c27
	rst 38h			;9c28
	rst 38h			;9c29
	rst 38h			;9c2a
	rst 38h			;9c2b
	rst 38h			;9c2c
	rst 38h			;9c2d
	rst 38h			;9c2e
	rst 38h			;9c2f
	rst 38h			;9c30
	rst 38h			;9c31
	rst 38h			;9c32
	rst 38h			;9c33
	rst 38h			;9c34
	rst 38h			;9c35
	rst 38h			;9c36
	rst 38h			;9c37
	rst 38h			;9c38
	rst 38h			;9c39
	rst 38h			;9c3a
	rst 38h			;9c3b
	rst 38h			;9c3c
	rst 38h			;9c3d
	rst 38h			;9c3e
	rst 38h			;9c3f
	rst 38h			;9c40
	rst 38h			;9c41
	rst 38h			;9c42
	rst 38h			;9c43
	rst 38h			;9c44
	rst 38h			;9c45
	rst 38h			;9c46
	rst 38h			;9c47
	rst 38h			;9c48
	rst 38h			;9c49
	rst 38h			;9c4a
	rst 38h			;9c4b
	rst 38h			;9c4c
	rst 38h			;9c4d
	rst 38h			;9c4e
	rst 38h			;9c4f
	rst 38h			;9c50
	rst 38h			;9c51
	rst 38h			;9c52
	rst 38h			;9c53
	rst 38h			;9c54
	rst 38h			;9c55
	rst 38h			;9c56
	rst 38h			;9c57
	rst 38h			;9c58
	rst 38h			;9c59
	rst 38h			;9c5a
	rst 38h			;9c5b
	rst 38h			;9c5c
	rst 38h			;9c5d
	rst 38h			;9c5e
	rst 38h			;9c5f
	rst 38h			;9c60
	rst 38h			;9c61
	rst 38h			;9c62
	rst 38h			;9c63
	rst 38h			;9c64
	rst 38h			;9c65
	rst 38h			;9c66
	rst 38h			;9c67
	rst 38h			;9c68
	rst 38h			;9c69
	rst 38h			;9c6a
	rst 38h			;9c6b
	rst 38h			;9c6c
	rst 38h			;9c6d
	rst 38h			;9c6e
	rst 38h			;9c6f
	rst 38h			;9c70
	rst 38h			;9c71
	rst 38h			;9c72
	rst 38h			;9c73
	rst 38h			;9c74
	rst 38h			;9c75
	rst 38h			;9c76
	rst 38h			;9c77
	rst 38h			;9c78
	rst 38h			;9c79
	rst 38h			;9c7a
	rst 38h			;9c7b
	rst 38h			;9c7c
	rst 38h			;9c7d
	rst 38h			;9c7e
	rst 38h			;9c7f
	rst 38h			;9c80
	rst 38h			;9c81
	rst 38h			;9c82
	rst 38h			;9c83
	rst 38h			;9c84
	rst 38h			;9c85
	rst 38h			;9c86
	rst 38h			;9c87
	rst 38h			;9c88
	rst 38h			;9c89
	rst 38h			;9c8a
	rst 38h			;9c8b
	rst 38h			;9c8c
	rst 38h			;9c8d
	rst 38h			;9c8e
	rst 38h			;9c8f
	rst 38h			;9c90
	rst 38h			;9c91
	rst 38h			;9c92
	rst 38h			;9c93
	rst 38h			;9c94
	rst 38h			;9c95
	rst 38h			;9c96
	rst 38h			;9c97
	rst 38h			;9c98
	rst 38h			;9c99
	rst 38h			;9c9a
	rst 38h			;9c9b
	rst 38h			;9c9c
	rst 38h			;9c9d
	rst 38h			;9c9e
	rst 38h			;9c9f
	rst 38h			;9ca0
	rst 38h			;9ca1
	rst 38h			;9ca2
	rst 38h			;9ca3
	rst 38h			;9ca4
	rst 38h			;9ca5
	rst 38h			;9ca6
	rst 38h			;9ca7
	rst 38h			;9ca8
	rst 38h			;9ca9
	rst 38h			;9caa
	rst 38h			;9cab
	rst 38h			;9cac
	rst 38h			;9cad
	rst 38h			;9cae
	rst 38h			;9caf
	rst 38h			;9cb0
	rst 38h			;9cb1
	rst 38h			;9cb2
	rst 38h			;9cb3
	rst 38h			;9cb4
	rst 38h			;9cb5
	rst 38h			;9cb6
	rst 38h			;9cb7
	rst 38h			;9cb8
	rst 38h			;9cb9
	rst 38h			;9cba
	rst 38h			;9cbb
	rst 38h			;9cbc
	rst 38h			;9cbd
	rst 38h			;9cbe
	rst 38h			;9cbf
	rst 38h			;9cc0
	rst 38h			;9cc1
	rst 38h			;9cc2
	rst 38h			;9cc3
	rst 38h			;9cc4
	rst 38h			;9cc5
	rst 38h			;9cc6
	rst 38h			;9cc7
	rst 38h			;9cc8
	rst 38h			;9cc9
	rst 38h			;9cca
	rst 38h			;9ccb
	rst 38h			;9ccc
	rst 38h			;9ccd
	rst 38h			;9cce
	rst 38h			;9ccf
	rst 38h			;9cd0
	rst 38h			;9cd1
	rst 38h			;9cd2
	rst 38h			;9cd3
	rst 38h			;9cd4
	rst 38h			;9cd5
	rst 38h			;9cd6
	rst 38h			;9cd7
	rst 38h			;9cd8
	rst 38h			;9cd9
	rst 38h			;9cda
	rst 38h			;9cdb
	rst 38h			;9cdc
	rst 38h			;9cdd
	rst 38h			;9cde
	rst 38h			;9cdf
	rst 38h			;9ce0
	rst 38h			;9ce1
	rst 38h			;9ce2
	rst 38h			;9ce3
	rst 38h			;9ce4
	rst 38h			;9ce5
	rst 38h			;9ce6
	rst 38h			;9ce7
	rst 38h			;9ce8
	rst 38h			;9ce9
	rst 38h			;9cea
	rst 38h			;9ceb
	rst 38h			;9cec
	rst 38h			;9ced
	rst 38h			;9cee
	rst 38h			;9cef
	rst 38h			;9cf0
	rst 38h			;9cf1
	rst 38h			;9cf2
	rst 38h			;9cf3
	rst 38h			;9cf4
	rst 38h			;9cf5
	rst 38h			;9cf6
	rst 38h			;9cf7
	rst 38h			;9cf8
	rst 38h			;9cf9
	rst 38h			;9cfa
	rst 38h			;9cfb
	rst 38h			;9cfc
	rst 38h			;9cfd
	rst 38h			;9cfe
	rst 38h			;9cff
	rst 38h			;9d00
	rst 38h			;9d01
	rst 38h			;9d02
	rst 38h			;9d03
	rst 38h			;9d04
	rst 38h			;9d05
	rst 38h			;9d06
	rst 38h			;9d07
	rst 38h			;9d08
	rst 38h			;9d09
	rst 38h			;9d0a
	rst 38h			;9d0b
	rst 38h			;9d0c
	rst 38h			;9d0d
	rst 38h			;9d0e
	rst 38h			;9d0f
	rst 38h			;9d10
	rst 38h			;9d11
	rst 38h			;9d12
	rst 38h			;9d13
	rst 38h			;9d14
	rst 38h			;9d15
	rst 38h			;9d16
	rst 38h			;9d17
	rst 38h			;9d18
	rst 38h			;9d19
	rst 38h			;9d1a
	rst 38h			;9d1b
	rst 38h			;9d1c
	rst 38h			;9d1d
	rst 38h			;9d1e
	rst 38h			;9d1f
	rst 38h			;9d20
	rst 38h			;9d21
	rst 38h			;9d22
	rst 38h			;9d23
	rst 38h			;9d24
	rst 38h			;9d25
	rst 38h			;9d26
	rst 38h			;9d27
	rst 38h			;9d28
	rst 38h			;9d29
	rst 38h			;9d2a
	rst 38h			;9d2b
	rst 38h			;9d2c
	rst 38h			;9d2d
	rst 38h			;9d2e
	rst 38h			;9d2f
	rst 38h			;9d30
	rst 38h			;9d31
	rst 38h			;9d32
	rst 38h			;9d33
	rst 38h			;9d34
	rst 38h			;9d35
	rst 38h			;9d36
	rst 38h			;9d37
	rst 38h			;9d38
	rst 38h			;9d39
	rst 38h			;9d3a
	rst 38h			;9d3b
	rst 38h			;9d3c
	rst 38h			;9d3d
	rst 38h			;9d3e
	rst 38h			;9d3f
	rst 38h			;9d40
	rst 38h			;9d41
	rst 38h			;9d42
	rst 38h			;9d43
	rst 38h			;9d44
	rst 38h			;9d45
	rst 38h			;9d46
	rst 38h			;9d47
	rst 38h			;9d48
	rst 38h			;9d49
	rst 38h			;9d4a
	rst 38h			;9d4b
	rst 38h			;9d4c
	rst 38h			;9d4d
	rst 38h			;9d4e
	rst 38h			;9d4f
	rst 38h			;9d50
	rst 38h			;9d51
	rst 38h			;9d52
	rst 38h			;9d53
	rst 38h			;9d54
	rst 38h			;9d55
	rst 38h			;9d56
	rst 38h			;9d57
	rst 38h			;9d58
	rst 38h			;9d59
	rst 38h			;9d5a
	rst 38h			;9d5b
	rst 38h			;9d5c
	rst 38h			;9d5d
	rst 38h			;9d5e
	rst 38h			;9d5f
	rst 38h			;9d60
	rst 38h			;9d61
	rst 38h			;9d62
	rst 38h			;9d63
	rst 38h			;9d64
	rst 38h			;9d65
	rst 38h			;9d66
	rst 38h			;9d67
	rst 38h			;9d68
	rst 38h			;9d69
	rst 38h			;9d6a
	rst 38h			;9d6b
	rst 38h			;9d6c
	rst 38h			;9d6d
	rst 38h			;9d6e
	rst 38h			;9d6f
	rst 38h			;9d70
	rst 38h			;9d71
	rst 38h			;9d72
	rst 38h			;9d73
	rst 38h			;9d74
	rst 38h			;9d75
	rst 38h			;9d76
	rst 38h			;9d77
	rst 38h			;9d78
	rst 38h			;9d79
	rst 38h			;9d7a
	rst 38h			;9d7b
	rst 38h			;9d7c
	rst 38h			;9d7d
	rst 38h			;9d7e
	rst 38h			;9d7f
	rst 38h			;9d80
	rst 38h			;9d81
	rst 38h			;9d82
	rst 38h			;9d83
	rst 38h			;9d84
	rst 38h			;9d85
	rst 38h			;9d86
	rst 38h			;9d87
	rst 38h			;9d88
	rst 38h			;9d89
	rst 38h			;9d8a
	rst 38h			;9d8b
	rst 38h			;9d8c
	rst 38h			;9d8d
	rst 38h			;9d8e
	rst 38h			;9d8f
	rst 38h			;9d90
	rst 38h			;9d91
	rst 38h			;9d92
	rst 38h			;9d93
	rst 38h			;9d94
	rst 38h			;9d95
	rst 38h			;9d96
	rst 38h			;9d97
	rst 38h			;9d98
	rst 38h			;9d99
	rst 38h			;9d9a
	rst 38h			;9d9b
	rst 38h			;9d9c
	rst 38h			;9d9d
	rst 38h			;9d9e
	rst 38h			;9d9f
	rst 38h			;9da0
	rst 38h			;9da1
	rst 38h			;9da2
	rst 38h			;9da3
	rst 38h			;9da4
	rst 38h			;9da5
	rst 38h			;9da6
	rst 38h			;9da7
	rst 38h			;9da8
	rst 38h			;9da9
	rst 38h			;9daa
	rst 38h			;9dab
	rst 38h			;9dac
	rst 38h			;9dad
	rst 38h			;9dae
	rst 38h			;9daf
	rst 38h			;9db0
	rst 38h			;9db1
	rst 38h			;9db2
	rst 38h			;9db3
	rst 38h			;9db4
	rst 38h			;9db5
	rst 38h			;9db6
	rst 38h			;9db7
	rst 38h			;9db8
	rst 38h			;9db9
	rst 38h			;9dba
	rst 38h			;9dbb
	rst 38h			;9dbc
	rst 38h			;9dbd
	rst 38h			;9dbe
	rst 38h			;9dbf
	rst 38h			;9dc0
	rst 38h			;9dc1
	rst 38h			;9dc2
	rst 38h			;9dc3
	rst 38h			;9dc4
	rst 38h			;9dc5
	rst 38h			;9dc6
	rst 38h			;9dc7
	rst 38h			;9dc8
	rst 38h			;9dc9
	rst 38h			;9dca
	rst 38h			;9dcb
	rst 38h			;9dcc
	rst 38h			;9dcd
	rst 38h			;9dce
	rst 38h			;9dcf
	rst 38h			;9dd0
	rst 38h			;9dd1
	rst 38h			;9dd2
	rst 38h			;9dd3
	rst 38h			;9dd4
	rst 38h			;9dd5
	rst 38h			;9dd6
	rst 38h			;9dd7
	rst 38h			;9dd8
	rst 38h			;9dd9
	rst 38h			;9dda
	rst 38h			;9ddb
	rst 38h			;9ddc
	rst 38h			;9ddd
	rst 38h			;9dde
	rst 38h			;9ddf
	rst 38h			;9de0
	rst 38h			;9de1
	rst 38h			;9de2
	rst 38h			;9de3
	rst 38h			;9de4
	rst 38h			;9de5
	rst 38h			;9de6
	rst 38h			;9de7
	rst 38h			;9de8
	rst 38h			;9de9
	rst 38h			;9dea
	rst 38h			;9deb
	rst 38h			;9dec
	rst 38h			;9ded
	rst 38h			;9dee
	rst 38h			;9def
	rst 38h			;9df0
	rst 38h			;9df1
	rst 38h			;9df2
	rst 38h			;9df3
	rst 38h			;9df4
	rst 38h			;9df5
	rst 38h			;9df6
	rst 38h			;9df7
	rst 38h			;9df8
	rst 38h			;9df9
	rst 38h			;9dfa
	rst 38h			;9dfb
	rst 38h			;9dfc
	rst 38h			;9dfd
	rst 38h			;9dfe
	rst 38h			;9dff
	rst 38h			;9e00
	rst 38h			;9e01
	rst 38h			;9e02
	rst 38h			;9e03
	rst 38h			;9e04
	rst 38h			;9e05
	rst 38h			;9e06
	rst 38h			;9e07
	rst 38h			;9e08
	rst 38h			;9e09
	rst 38h			;9e0a
	rst 38h			;9e0b
	rst 38h			;9e0c
	rst 38h			;9e0d
	rst 38h			;9e0e
	rst 38h			;9e0f
	rst 38h			;9e10
	rst 38h			;9e11
	rst 38h			;9e12
	rst 38h			;9e13
	rst 38h			;9e14
	rst 38h			;9e15
	rst 38h			;9e16
	rst 38h			;9e17
	rst 38h			;9e18
	rst 38h			;9e19
	rst 38h			;9e1a
	rst 38h			;9e1b
	rst 38h			;9e1c
	rst 38h			;9e1d
	rst 38h			;9e1e
	rst 38h			;9e1f
	rst 38h			;9e20
	rst 38h			;9e21
	rst 38h			;9e22
	rst 38h			;9e23
	rst 38h			;9e24
	rst 38h			;9e25
	rst 38h			;9e26
	rst 38h			;9e27
	rst 38h			;9e28
	rst 38h			;9e29
	rst 38h			;9e2a
	rst 38h			;9e2b
	rst 38h			;9e2c
	rst 38h			;9e2d
	rst 38h			;9e2e
	rst 38h			;9e2f
	rst 38h			;9e30
	rst 38h			;9e31
	rst 38h			;9e32
	rst 38h			;9e33
	rst 38h			;9e34
	rst 38h			;9e35
	rst 38h			;9e36
	rst 38h			;9e37
	rst 38h			;9e38
	rst 38h			;9e39
	rst 38h			;9e3a
	rst 38h			;9e3b
	rst 38h			;9e3c
	rst 38h			;9e3d
	rst 38h			;9e3e
	rst 38h			;9e3f
	rst 38h			;9e40
	rst 38h			;9e41
	rst 38h			;9e42
	rst 38h			;9e43
	rst 38h			;9e44
	rst 38h			;9e45
	rst 38h			;9e46
	rst 38h			;9e47
	rst 38h			;9e48
	rst 38h			;9e49
	rst 38h			;9e4a
	rst 38h			;9e4b
	rst 38h			;9e4c
	rst 38h			;9e4d
	rst 38h			;9e4e
	rst 38h			;9e4f
	rst 38h			;9e50
	rst 38h			;9e51
	rst 38h			;9e52
	rst 38h			;9e53
	rst 38h			;9e54
	rst 38h			;9e55
	rst 38h			;9e56
	rst 38h			;9e57
	rst 38h			;9e58
	rst 38h			;9e59
	rst 38h			;9e5a
	rst 38h			;9e5b
	rst 38h			;9e5c
	rst 38h			;9e5d
	rst 38h			;9e5e
	rst 38h			;9e5f
	rst 38h			;9e60
	rst 38h			;9e61
	rst 38h			;9e62
	rst 38h			;9e63
	rst 38h			;9e64
	rst 38h			;9e65
	rst 38h			;9e66
	rst 38h			;9e67
	rst 38h			;9e68
	rst 38h			;9e69
	rst 38h			;9e6a
	rst 38h			;9e6b
	rst 38h			;9e6c
	rst 38h			;9e6d
	rst 38h			;9e6e
	rst 38h			;9e6f
	rst 38h			;9e70
	rst 38h			;9e71
	rst 38h			;9e72
	rst 38h			;9e73
	rst 38h			;9e74
	rst 38h			;9e75
	rst 38h			;9e76
	rst 38h			;9e77
	rst 38h			;9e78
	rst 38h			;9e79
	rst 38h			;9e7a
	rst 38h			;9e7b
	rst 38h			;9e7c
	rst 38h			;9e7d
	rst 38h			;9e7e
	rst 38h			;9e7f
	rst 38h			;9e80
	rst 38h			;9e81
	rst 38h			;9e82
	rst 38h			;9e83
	rst 38h			;9e84
	rst 38h			;9e85
	rst 38h			;9e86
	rst 38h			;9e87
	rst 38h			;9e88
	rst 38h			;9e89
	rst 38h			;9e8a
	rst 38h			;9e8b
	rst 38h			;9e8c
	rst 38h			;9e8d
	rst 38h			;9e8e
	rst 38h			;9e8f
	rst 38h			;9e90
	rst 38h			;9e91
	rst 38h			;9e92
	rst 38h			;9e93
	rst 38h			;9e94
	rst 38h			;9e95
	rst 38h			;9e96
	rst 38h			;9e97
	rst 38h			;9e98
	rst 38h			;9e99
	rst 38h			;9e9a
	rst 38h			;9e9b
	rst 38h			;9e9c
	rst 38h			;9e9d
	rst 38h			;9e9e
	rst 38h			;9e9f
	rst 38h			;9ea0
	rst 38h			;9ea1
	rst 38h			;9ea2
	rst 38h			;9ea3
	rst 38h			;9ea4
	rst 38h			;9ea5
	rst 38h			;9ea6
	rst 38h			;9ea7
	rst 38h			;9ea8
	rst 38h			;9ea9
	rst 38h			;9eaa
	rst 38h			;9eab
	rst 38h			;9eac
	rst 38h			;9ead
	rst 38h			;9eae
	rst 38h			;9eaf
	rst 38h			;9eb0
	rst 38h			;9eb1
	rst 38h			;9eb2
	rst 38h			;9eb3
	rst 38h			;9eb4
	rst 38h			;9eb5
	rst 38h			;9eb6
	rst 38h			;9eb7
	rst 38h			;9eb8
	rst 38h			;9eb9
	rst 38h			;9eba
	rst 38h			;9ebb
	rst 38h			;9ebc
	rst 38h			;9ebd
	rst 38h			;9ebe
	rst 38h			;9ebf
	rst 38h			;9ec0
	rst 38h			;9ec1
	rst 38h			;9ec2
	rst 38h			;9ec3
	rst 38h			;9ec4
	rst 38h			;9ec5
	rst 38h			;9ec6
	rst 38h			;9ec7
	rst 38h			;9ec8
	rst 38h			;9ec9
	rst 38h			;9eca
	rst 38h			;9ecb
	rst 38h			;9ecc
	rst 38h			;9ecd
	rst 38h			;9ece
	rst 38h			;9ecf
	rst 38h			;9ed0
	rst 38h			;9ed1
	rst 38h			;9ed2
	rst 38h			;9ed3
	rst 38h			;9ed4
	rst 38h			;9ed5
	rst 38h			;9ed6
	rst 38h			;9ed7
	rst 38h			;9ed8
	rst 38h			;9ed9
	rst 38h			;9eda
	rst 38h			;9edb
	rst 38h			;9edc
	rst 38h			;9edd
	rst 38h			;9ede
	rst 38h			;9edf
	rst 38h			;9ee0
	rst 38h			;9ee1
	rst 38h			;9ee2
	rst 38h			;9ee3
	rst 38h			;9ee4
	rst 38h			;9ee5
	rst 38h			;9ee6
	rst 38h			;9ee7
	rst 38h			;9ee8
	rst 38h			;9ee9
	rst 38h			;9eea
	rst 38h			;9eeb
	rst 38h			;9eec
	rst 38h			;9eed
	rst 38h			;9eee
	rst 38h			;9eef
	rst 38h			;9ef0
	rst 38h			;9ef1
	rst 38h			;9ef2
	rst 38h			;9ef3
	rst 38h			;9ef4
	rst 38h			;9ef5
	rst 38h			;9ef6
	rst 38h			;9ef7
	rst 38h			;9ef8
	rst 38h			;9ef9
	rst 38h			;9efa
	rst 38h			;9efb
	rst 38h			;9efc
	rst 38h			;9efd
	rst 38h			;9efe
	rst 38h			;9eff
	rst 38h			;9f00
	rst 38h			;9f01
	rst 38h			;9f02
	rst 38h			;9f03
	rst 38h			;9f04
	rst 38h			;9f05
	rst 38h			;9f06
	rst 38h			;9f07
	rst 38h			;9f08
	rst 38h			;9f09
	rst 38h			;9f0a
	rst 38h			;9f0b
	rst 38h			;9f0c
	rst 38h			;9f0d
	rst 38h			;9f0e
	rst 38h			;9f0f
	rst 38h			;9f10
	rst 38h			;9f11
	rst 38h			;9f12
	rst 38h			;9f13
	rst 38h			;9f14
	rst 38h			;9f15
	rst 38h			;9f16
	rst 38h			;9f17
	rst 38h			;9f18
	rst 38h			;9f19
	rst 38h			;9f1a
	rst 38h			;9f1b
	rst 38h			;9f1c
	rst 38h			;9f1d
	rst 38h			;9f1e
	rst 38h			;9f1f
	rst 38h			;9f20
	rst 38h			;9f21
	rst 38h			;9f22
	rst 38h			;9f23
	rst 38h			;9f24
	rst 38h			;9f25
	rst 38h			;9f26
	rst 38h			;9f27
	rst 38h			;9f28
	rst 38h			;9f29
	rst 38h			;9f2a
	rst 38h			;9f2b
	rst 38h			;9f2c
	rst 38h			;9f2d
	rst 38h			;9f2e
	rst 38h			;9f2f
	rst 38h			;9f30
	rst 38h			;9f31
	rst 38h			;9f32
	rst 38h			;9f33
	rst 38h			;9f34
	rst 38h			;9f35
	rst 38h			;9f36
	rst 38h			;9f37
	rst 38h			;9f38
	rst 38h			;9f39
	rst 38h			;9f3a
	rst 38h			;9f3b
	rst 38h			;9f3c
	rst 38h			;9f3d
	rst 38h			;9f3e
	rst 38h			;9f3f
	rst 38h			;9f40
	rst 38h			;9f41
	rst 38h			;9f42
	rst 38h			;9f43
	rst 38h			;9f44
	rst 38h			;9f45
	rst 38h			;9f46
	rst 38h			;9f47
	rst 38h			;9f48
	rst 38h			;9f49
	rst 38h			;9f4a
	rst 38h			;9f4b
	rst 38h			;9f4c
	rst 38h			;9f4d
	rst 38h			;9f4e
	rst 38h			;9f4f
	rst 38h			;9f50
	rst 38h			;9f51
	rst 38h			;9f52
	rst 38h			;9f53
	rst 38h			;9f54
	rst 38h			;9f55
	rst 38h			;9f56
	rst 38h			;9f57
	rst 38h			;9f58
	rst 38h			;9f59
	rst 38h			;9f5a
	rst 38h			;9f5b
	rst 38h			;9f5c
	rst 38h			;9f5d
	rst 38h			;9f5e
	rst 38h			;9f5f
	rst 38h			;9f60
	rst 38h			;9f61
	rst 38h			;9f62
	rst 38h			;9f63
	rst 38h			;9f64
	rst 38h			;9f65
	rst 38h			;9f66
	rst 38h			;9f67
	rst 38h			;9f68
	rst 38h			;9f69
	rst 38h			;9f6a
	rst 38h			;9f6b
	rst 38h			;9f6c
	rst 38h			;9f6d
	rst 38h			;9f6e
	rst 38h			;9f6f
	rst 38h			;9f70
	rst 38h			;9f71
	rst 38h			;9f72
	rst 38h			;9f73
	rst 38h			;9f74
	rst 38h			;9f75
	rst 38h			;9f76
	rst 38h			;9f77
	rst 38h			;9f78
	rst 38h			;9f79
	rst 38h			;9f7a
	rst 38h			;9f7b
	rst 38h			;9f7c
	rst 38h			;9f7d
	rst 38h			;9f7e
	rst 38h			;9f7f
	rst 38h			;9f80
	rst 38h			;9f81
	rst 38h			;9f82
	rst 38h			;9f83
	rst 38h			;9f84
	rst 38h			;9f85
	rst 38h			;9f86
	rst 38h			;9f87
	rst 38h			;9f88
	rst 38h			;9f89
	rst 38h			;9f8a
	rst 38h			;9f8b
	rst 38h			;9f8c
	rst 38h			;9f8d
	rst 38h			;9f8e
	rst 38h			;9f8f
	rst 38h			;9f90
	rst 38h			;9f91
	rst 38h			;9f92
	rst 38h			;9f93
	rst 38h			;9f94
	rst 38h			;9f95
	rst 38h			;9f96
	rst 38h			;9f97
	rst 38h			;9f98
	rst 38h			;9f99
	rst 38h			;9f9a
	rst 38h			;9f9b
	rst 38h			;9f9c
	rst 38h			;9f9d
	rst 38h			;9f9e
	rst 38h			;9f9f
	rst 38h			;9fa0
	rst 38h			;9fa1
	rst 38h			;9fa2
	rst 38h			;9fa3
	rst 38h			;9fa4
	rst 38h			;9fa5
	rst 38h			;9fa6
	rst 38h			;9fa7
	rst 38h			;9fa8
	rst 38h			;9fa9
	rst 38h			;9faa
	rst 38h			;9fab
	rst 38h			;9fac
	rst 38h			;9fad
	rst 38h			;9fae
	rst 38h			;9faf
	rst 38h			;9fb0
	rst 38h			;9fb1
	rst 38h			;9fb2
	rst 38h			;9fb3
	rst 38h			;9fb4
	rst 38h			;9fb5
	rst 38h			;9fb6
	rst 38h			;9fb7
	rst 38h			;9fb8
	rst 38h			;9fb9
	rst 38h			;9fba
	rst 38h			;9fbb
	rst 38h			;9fbc
	rst 38h			;9fbd
	rst 38h			;9fbe
	rst 38h			;9fbf
	rst 38h			;9fc0
	rst 38h			;9fc1
	rst 38h			;9fc2
	rst 38h			;9fc3
	rst 38h			;9fc4
	rst 38h			;9fc5
	rst 38h			;9fc6
	rst 38h			;9fc7
	rst 38h			;9fc8
	rst 38h			;9fc9
	rst 38h			;9fca
	rst 38h			;9fcb
	rst 38h			;9fcc
	rst 38h			;9fcd
	rst 38h			;9fce
	rst 38h			;9fcf
	rst 38h			;9fd0
	rst 38h			;9fd1
	rst 38h			;9fd2
	rst 38h			;9fd3
	rst 38h			;9fd4
	rst 38h			;9fd5
	rst 38h			;9fd6
	rst 38h			;9fd7
	rst 38h			;9fd8
	rst 38h			;9fd9
	rst 38h			;9fda
	rst 38h			;9fdb
	rst 38h			;9fdc
	rst 38h			;9fdd
	rst 38h			;9fde
	rst 38h			;9fdf
	rst 38h			;9fe0
	rst 38h			;9fe1
	rst 38h			;9fe2
	rst 38h			;9fe3
	rst 38h			;9fe4
	rst 38h			;9fe5
	rst 38h			;9fe6
	rst 38h			;9fe7
	rst 38h			;9fe8
	rst 38h			;9fe9
	rst 38h			;9fea
	rst 38h			;9feb
	rst 38h			;9fec
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
