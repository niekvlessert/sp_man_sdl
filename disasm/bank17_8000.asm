; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank17_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank17.bin

	org 08000h

	rrca			;8000
	nop			;8001
	rra			;8002
	rra			;8003
	inc b			;8004
	rlca			;8005
	ld (bc),a		;8006
	ccf			;8007
	add a,d			;8008
	sbc a,(hl)		;8009
	cp h			;800a
	inc b			;800b
	inc a			;800c
	sub h			;800d
	nop			;800e
	ld a,07fh		;800f
	rst 38h			;8011
	rst 38h			;8012
	cp 0fch			;8013
	call m,0fffeh		;8015
	cp 0ffh			;8018
	rst 38h			;801a
	ld a,a			;801b
	ccf			;801c
	ccf			;801d
	ld a,a			;801e
	rst 38h			;801f
	ld a,l			;8020
	dec a			;8021
	inc b			;8022
	inc a			;8023
	add a,e			;8024
	nop			;8025
	ld a,h			;8026
	call m,0fe04h		;8027
	add a,c			;802a
	nop			;802b
	inc bc			;802c
	cp 003h			;802d
	nop			;802f
	adc a,c			;8030
	rst 38h			;8031
	call po,0ffe4h		;8032
	cp 000h			;8035
	add a,b			;8037
	add a,b			;8038
	nop			;8039
	inc bc			;803a
	ret pe			;803b
	inc bc			;803c
	ld bc,00303h		;803d
	ld (bc),a		;8040
	rlca			;8041
	add a,h			;8042
	rrca			;8043
	rlca			;8044
	ret m			;8045
	rrca			;8046
	inc b			;8047
	rra			;8048
	and b			;8049
	ld h,b			;804a
	rra			;804b
	rra			;804c
	pop hl			;804d
	cp 0feh			;804e
	rst 38h			;8050
	ret po			;8051
	rst 38h			;8052
	rst 38h			;8053
	add a,c			;8054
	inc a			;8055
	inc a			;8056
	ld a,(hl)		;8057
	call m,01e3ch		;8058
	ld e,09fh		;805b
	adc a,a			;805d
	ld b,a			;805e
	inc bc			;805f
	ld h,b			;8060
	di			;8061
	ld a,a			;8062
	ld a,a			;8063
	ccf			;8064
	ccf			;8065
	rrca			;8066
	ret po			;8067
	ccf			;8068
	rrca			;8069
	inc bc			;806a
	cp 09dh			;806b
	call m,007f0h		;806d
	call m,078f0h		;8070
	ld a,b			;8073
	ld sp,hl		;8074
	pop af			;8075
	ex (sp),hl		;8076
	jp 00f07h		;8077
	call m,0f8fch		;807a
	ret m			;807d
	ret p			;807e
	ret po			;807f
	ret nz			;8080
	add a,c			;8081
	rst 38h			;8082
	sbc a,b			;8083
	ld a,a			;8084
	ld a,a			;8085
	ld c,(hl)		;8086
	ld h,(hl)		;8087
	ld h,(hl)		;8088
	ld a,a			;8089
	inc b			;808a
	call nz,0cc86h		;808b
	and 0e6h		;808e
	cp 007h			;8090
	rlca			;8092
	dec b			;8093
	rrca			;8094
	add a,(hl)		;8095
	nop			;8096
	ccf			;8097
	ret nz			;8098
	ret po			;8099
	ret po			;809a
	ccf			;809b
	inc bc			;809c
	rrca			;809d
	sub h			;809e
	ret po			;809f
	ld e,0ffh		;80a0
	ret po			;80a2
	ret po			;80a3
l80a4h:
	ccf			;80a4
	inc bc			;80a5
	rlca			;80a6
	ld a,(hl)		;80a7
	jp 03c7eh		;80a8
	ld a,(hl)		;80ab
	rst 38h			;80ac
	rst 38h			;80ad
	rra			;80ae
	nop			;80af
l80b0h:
	inc a			;80b0
	ld (bc),a		;80b1
	call m,00303h		;80b2
	sbc a,l			;80b5
	nop			;80b6
	rrca			;80b7
	add a,b			;80b8
	ld (hl),b		;80b9
	rra			;80ba
	rra			;80bb
	ret nz			;80bc
	ret nz			;80bd
	jr l80b0h		;80be
	ld bc,0f80eh		;80c0
	rrca			;80c3
	rlca			;80c4
	call m,0e0e0h		;80c5
	pop bc			;80c8
	add a,a			;80c9
	rrca			;80ca
	ccf			;80cb
	add a,b			;80cc
	rst 38h			;80cd
	rst 38h			;80ce
	rlca			;80cf
	rra			;80d0
	ccf			;80d1
	ccf			;80d2
	inc b			;80d3
	ld a,a			;80d4
	ld (bc),a		;80d5
	rlca			;80d6
	inc b			;80d7
	inc bc			;80d8
	add a,l			;80d9
	rst 38h			;80da
	inc e			;80db
	cp 0ffh			;80dc
	rst 38h			;80de
	inc bc			;80df
	add a,b			;80e0
	add a,h			;80e1
	rst 38h			;80e2
	inc a			;80e3
	ret p			;80e4
	ret p			;80e5
	inc b			;80e6
	ret m			;80e7
	add a,e			;80e8
	add a,b			;80e9
	rst 38h			;80ea
	nop			;80eb
	inc bc			;80ec
	rra			;80ed
	and l			;80ee
	ret nz			;80ef
sub_80f0h:
	rrca			;80f0
	rlca			;80f1
	inc bc			;80f2
	rst 38h			;80f3
	nop			;80f4
	ld a,a			;80f5
	ld a,a			;80f6
	nop			;80f7
	nop			;80f8
	ccf			;80f9
	ccf			;80fa
	add a,b			;80fb
	ret m			;80fc
	add a,b			;80fd
l80feh:
	ret p			;80fe
	ret p			;80ff
sub_8100h:
	rrca			;8100
	rrca			;8101
	ld c,003h		;8102
	rrca			;8104
	inc a			;8105
	ret po			;8106
	rlca			;8107
	rlca			;8108
	rst 38h			;8109
	nop			;810a
	rrca			;810b
	rrca			;810c
	nop			;810d
	cp 0ffh			;810e
	ld a,h			;8110
	ret m			;8111
	rst 0			;8112
	rst 38h			;8113
	inc bc			;8114
	rra			;8115
	add a,h			;8116
	ret nz			;8117
	rrca			;8118
	inc bc			;8119
	ld bc,00300h		;811a
	djnz l80a4h		;811d
	ld hl,02132h		;811f
	ld hl,00432h		;8122
	djnz $+12		;8125
	ld hl,03282h		;8127
	ld b,e			;812a
	rlca			;812b
	ld hl,03206h		;812c
	add a,e			;812f
	ld hl,04313h		;8130
	inc bc			;8133
	ld (02185h),a		;8134
	ld b,c			;8137
	ld b,e			;8138
	ld b,e			;8139
	ld b,c			;813a
	inc b			;813b
	ld b,e			;813c
	add a,l			;813d
	ld (01f31h),a		;813e
	rra			;8141
	ld (04303h),a		;8142
	add a,h			;8145
	ld (01f21h),a		;8146
	jp p,02104h		;8149
	add a,h			;814c
	ld sp,0f121h		;814d
	pop af			;8150
	ld b,021h		;8151
	rlca			;8153
	ld (0430ah),a		;8154
	add a,l			;8157
	ld b,d			;8158
	jp p,04141h		;8159
	ld b,e			;815c
	inc bc			;815d
	di			;815e
	add a,c			;815f
	jp p,04203h		;8160
	add a,c			;8163
	ld b,e			;8164
	inc bc			;8165
	di			;8166
	add a,d			;8167
	jp p,00632h		;8168
	ld b,e			;816b
	adc a,b			;816c
	ld b,d			;816d
	ld (0f131h),a		;816e
	pop af			;8171
	ld b,e			;8172
	ld (00532h),a		;8173
	pop af			;8176
	add a,(hl)		;8177
	ld (02121h),a		;8178
	rst 38h			;817b
	ld (de),a		;817c
	ld (de),a		;817d
	inc bc			;817e
	pop af			;817f
	dec b			;8180
l8181h:
	ld (02186h),a		;8181
	rra			;8184
	rra			;8185
	jp p,02323h		;8186
	inc bc			;8189
	ld b,e			;818a
	add a,l			;818b
	ld (01f21h),a		;818c
	jp p,00423h		;818f
	ld b,d			;8192
	add a,c			;8193
	ld sp,01f03h		;8194
	inc bc			;8197
	jp p,0fe83h		;8198
	call p,005f3h		;819b
	jp p,0f485h		;819e
	di			;81a1
	jp p,0f1f1h		;81a2
	inc b			;81a5
	ld b,d			;81a6
	add a,c			;81a7
	ld sp,01f03h		;81a8
	inc bc			;81ab
	ld (02181h),a		;81ac
	inc bc			;81af
	rra			;81b0
	add a,c			;81b1
	ld hl,03203h		;81b2
	ld (bc),a		;81b5
	pop af			;81b6
	adc a,e			;81b7
	di			;81b8
	jp p,020f2h		;81b9
	ld hl,01f21h		;81bc
	rra			;81bf
	ld b,d			;81c0
	ld sp,008ffh		;81c1
	ld hl,03283h		;81c4
	ld hl,00521h		;81c7
	ld (04384h),a		;81ca
	ld b,d			;81cd
	ld hl,00331h		;81ce
	ld b,d			;81d1
	ld (bc),a		;81d2
	ld (04202h),a		;81d3
	add a,c			;81d6
	ld (04303h),a		;81d7
	add a,h			;81da
	ld (03221h),a		;81db
	ld (04204h),a		;81de
	adc a,d			;81e1
	ld hl,0f2f1h		;81e2
	jp p,0f3f3h		;81e5
	ld b,e			;81e8
	ld b,e			;81e9
	ld (003f1h),a		;81ea
	jp p,0f387h		;81ed
	ld b,e			;81f0
	ld b,e			;81f1
	ld (03221h),a		;81f2
	ld (04204h),a		;81f5
	add a,d			;81f8
	ld (00531h),a		;81f9
	ld b,c			;81fc
	ld (bc),a		;81fd
	ld sp,04302h		;81fe
	ld (bc),a		;8201
	pop af			;8202
	adc a,h			;8203
	ld b,e			;8204
	ld (043ffh),a		;8205
	ld b,e			;8208
	ld (0ffffh),a		;8209
	ld (0ff21h),a		;820c
	ld b,e			;820f
	ld b,021h		;8210
	ld (bc),a		;8212
	rra			;8213
	ld (bc),a		;8214
	ld (02193h),a		;8215
	inc de			;8218
	ld (02132h),a		;8219
	rra			;821c
	ld hl,04231h		;821d
	ld b,d			;8220
	ld hl,04341h		;8221
	ld (0f121h),a		;8224
	call p,03121h		;8227
	inc bc			;822a
	ld b,e			;822b
	ld (bc),a		;822c
	ld sp,03287h		;822d
	ld b,d			;8230
	ld b,d			;8231
	ld hl,01414h		;8232
	ld hl,0f103h		;8235
	add a,l			;8238
	ld (de),a		;8239
	ld (03234h),a		;823a
	ld hl,0f103h		;823d
	add a,c			;8240
	ld hl,03203h		;8241
	dec b			;8244
	inc de			;8245
	ld (bc),a		;8246
	ld hl,0ff81h		;8247
	ld b,021h		;824a
	add a,d			;824c
	ld (00711h),a		;824d
	ld b,e			;8250
	add a,c			;8251
	ld hl,03203h		;8252
	inc b			;8255
	ld b,e			;8256
	rlca			;8257
	ld hl,04387h		;8258
	inc de			;825b
	inc de			;825c
	ld (01f21h),a		;825d
	rra			;8260
	inc bc			;8261
	jp p,04302h		;8262
	sub e			;8265
	ld (02121h),a		;8266
	rra			;8269
	rra			;826a
	ld hl,03243h		;826b
	ld (01f21h),a		;826e
	rra			;8271
	ld sp,0f243h		;8272
	jp p,0f1f1h		;8275
	ld sp,04303h		;8278
	adc a,l			;827b
	pop af			;827c
	ld (de),a		;827d
	ld (de),a		;827e
	ld (04332h),a		;827f
	call p,032fch		;8282
	ld (01f21h),a		;8285
	rra			;8288
	inc bc			;8289
	jp p,l9f00h		;828a
	nop			;828d
	ccf			;828e
	ld a,a			;828f
	ld a,a			;8290
	inc bc			;8291
	rlca			;8292
	rlca			;8293
	rrca			;8294
	rra			;8295
	ret nz			;8296
	rst 38h			;8297
	cp 0ffh			;8298
	inc a			;829a
	ld a,a			;829b
	rst 38h			;829c
	rlca			;829d
	rlca			;829e
	ret p			;829f
	ret p			;82a0
	ret po			;82a1
	call m,0fefeh		;82a2
	rst 38h			;82a5
	add a,e			;82a6
l82a7h:
	inc a			;82a7
	inc a			;82a8
	jr c,l82a7h		;82a9
	call m,03803h		;82ab
	inc bc			;82ae
	rra			;82af
	add a,l			;82b0
	rst 38h			;82b1
	pop bc			;82b2
	pop bc			;82b3
	rst 38h			;82b4
	rst 38h			;82b5
	ex af,af'		;82b6
	cp l			;82b7
	ld b,0fdh		;82b8
	ld (bc),a		;82ba
	rst 38h			;82bb
	ld b,02fh		;82bc
	adc a,(hl)		;82be
	nop			;82bf
	ld a,a			;82c0
	ld a,a			;82c1
	ld bc,0fc07h		;82c2
	call m,01fffh		;82c5
	ret nz			;82c8
	rst 38h			;82c9
	cp 0ffh			;82ca
	ld a,h			;82cc
	inc b			;82cd
	ret m			;82ce
	ld (bc),a		;82cf
	rrca			;82d0
	adc a,l			;82d1
	ret po			;82d2
	call m,0e0feh		;82d3
	ret po			;82d6
	ret nz			;82d7
	rst 38h			;82d8
	cp 0ffh			;82d9
	ld a,h			;82db
	ret m			;82dc
	rst 0			;82dd
	rst 38h			;82de
	inc bc			;82df
	rra			;82e0
	adc a,h			;82e1
	ccf			;82e2
	rrca			;82e3
	rlca			;82e4
	inc bc			;82e5
	rlca			;82e6
	rlca			;82e7
	rrca			;82e8
	ld a,a			;82e9
	ld a,a			;82ea
	nop			;82eb
	ld a,(hl)		;82ec
	ld a,(hl)		;82ed
	nop			;82ee
	inc b			;82ef
	ld hl,03204h		;82f0
	add a,l			;82f3
	pop af			;82f4
	ld hl,03221h		;82f5
	ld (04303h),a		;82f8
	add a,h			;82fb
	ld hl,01f1fh		;82fc
	ld hl,03204h		;82ff
	ld (bc),a		;8302
	pop af			;8303
	add a,d			;8304
	ld hl,00432h		;8305
	ld b,e			;8308
	ld (bc),a		;8309
	rst 38h			;830a
	add a,l			;830b
	ld hl,03232h		;830c
	ld sp,hl		;830f
	ld sp,hl		;8310
	inc bc			;8311
	or 081h			;8312
	ld (04305h),a		;8314
	ld (bc),a		;8317
	rst 38h			;8318
	add a,c			;8319
	ld hl,03204h		;831a
	add a,c			;831d
	ld hl,0f103h		;831e
	inc b			;8321
	ld (de),a		;8322
	ld (bc),a		;8323
	pop af			;8324
	ld (bc),a		;8325
	ld hl,03202h		;8326
	adc a,a			;8329
	di			;832a
	rrca			;832b
	rrca			;832c
	pop af			;832d
	ld hl,03221h		;832e
	ld (0f443h),a		;8331
	rrca			;8334
	ld (de),a		;8335
	pop af			;8336
	pop af			;8337
	ld (de),a		;8338
	inc bc			;8339
	ld (0f28eh),a		;833a
	rra			;833d
	ld hl,03221h		;833e
	ld (0f443h),a		;8341
	ret m			;8344
	ld (02132h),a		;8345
	rra			;8348
	ret m			;8349
	inc bc			;834a
	defb 0fdh,084h ;add a,iyh	;834b
	ld hl,0fd1fh		;834d
	ret c			;8350
	inc b			;8351
	adc a,(hl)		;8352
	nop			;8353
	ld (bc),a		;8354
	rlca			;8355
	sub c			;8356
	rst 8			;8357
	call nz,0c5c6h		;8358
	inc a			;835b
	ld a,(hl)		;835c
	rlca			;835d
	nop			;835e
	rrca			;835f
	rrca			;8360
	nop			;8361
	nop			;8362
	rst 0			;8363
	pop bc			;8364
	rlca			;8365
	rlca			;8366
	rst 8			;8367
	inc bc			;8368
	jp 03c8bh		;8369
	jp 00007h		;836c
	rrca			;836f
	rrca			;8370
	nop			;8371
	nop			;8372
	rst 0			;8373
	pop bc			;8374
	rrca			;8375
	inc bc			;8376
	nop			;8377
	inc b			;8378
	ret nz			;8379
	nop			;837a
	adc a,e			;837b
	ld hl,0fc1fh		;837c
	res 6,l			;837f
	set 1,e			;8381
	call m,03232h		;8383
	ld hl,01f03h		;8386
	add a,a			;8389
	call m,021fbh		;838a
	rra			;838d
	push af			;838e
	or l			;838f
	rlc e			;8390
	call m,03202h		;8392
	add a,c			;8395
	ld hl,01f03h		;8396
	add a,d			;8399
	push af			;839a
	call m,0f004h		;839b
	add a,h			;839e
	defb 0fdh,0d8h,08eh ;illegal sequence	;839f
	ret c			;83a2
	nop			;83a3
	add a,l			;83a4
	rrca			;83a5
	rra			;83a6
	ld a,a			;83a7
	jp 00318h		;83a8
	jp 00f88h		;83ab
	rra			;83ae
	ld a,a			;83af
l83b0h:
	jp 018c3h		;83b0
	jp 000c3h		;83b3
	ld (bc),a		;83b6
	ret p			;83b7
	adc a,(hl)		;83b8
	or b			;83b9
	or l			;83ba
	and l			;83bb
	or l			;83bc
	set 7,h			;83bd
	ret p			;83bf
	ret p			;83c0
	ret nz			;83c1
	res 6,l			;83c2
	and l			;83c4
	or l			;83c5
	rlc b			;83c6
	inc b			;83c8
	nop			;83c9
	adc a,b			;83ca
	rlca			;83cb
	ccf			;83cc
	ret m			;83cd
	ret m			;83ce
	nop			;83cf
	inc bc			;83d0
	rra			;83d1
	rst 38h			;83d2
	inc bc			;83d3
	ret p			;83d4
	add a,h			;83d5
	nop			;83d6
	cp 07fh			;83d7
	ccf			;83d9
	inc bc			;83da
	rra			;83db
	add a,h			;83dc
	ccf			;83dd
	ld a,a			;83de
	ret p			;83df
	ret p			;83e0
	inc bc			;83e1
	ret po			;83e2
	ld (bc),a		;83e3
	ret nz			;83e4
	adc a,e			;83e5
	add a,b			;83e6
	rst 38h			;83e7
	rst 38h			;83e8
	ret nz			;83e9
	add a,b			;83ea
	add a,b			;83eb
	cp 0fch			;83ec
	ret m			;83ee
	nop			;83ef
	nop			;83f0
	dec b			;83f1
	rrca			;83f2
	add a,c			;83f3
	rlca			;83f4
	ld b,000h		;83f5
	add a,l			;83f7
	rrca			;83f8
	rst 38h			;83f9
	cp 0f8h			;83fa
	rrca			;83fc
	inc b			;83fd
	nop			;83fe
	sub c			;83ff
	rst 38h			;8400
	ld bc,00ff9h		;8401
	inc bc			;8404
	ld bc,00301h		;8405
	rst 38h			;8408
	ccf			;8409
	ld a,a			;840a
	ld a,a			;840b
	ld bc,0fc07h		;840c
	call m,000ffh		;840f
	ld b,0f0h		;8412
	add a,d			;8414
	pop af			;8415
	ld (de),a		;8416
	inc b			;8417
	ret p			;8418
	add a,l			;8419
	pop af			;841a
	ld (de),a		;841b
	inc hl			;841c
	inc hl			;841d
	pop af			;841e
	add hl,bc		;841f
	ret p			;8420
	add a,c			;8421
	jr nz,l8428h		;8422
	djnz $+5		;8424
	ret p			;8426
	add a,e			;8427
l8428h:
	ld (02121h),a		;8428
	dec b			;842b
	djnz l83b0h		;842c
	ret p			;842e
	jr nz,$+12		;842f
	djnz l8435h		;8431
	ret p			;8433
	add a,d			;8434
l8435h:
	ld hl,006f1h		;8435
	ret p			;8438
	add a,d			;8439
	jp p,006f1h		;843a
	ret p			;843d
	inc bc			;843e
	ld hl,03202h		;843f
	add a,e			;8442
	di			;8443
	rrca			;8444
	rrca			;8445
	nop			;8446
	ld b,00fh		;8447
	ld a,(bc)		;8449
	rra			;844a
	add a,d			;844b
	rst 38h			;844c
	call m,0f804h		;844d
	ld (bc),a		;8450
	ret p			;8451
	nop			;8452
	ld (bc),a		;8453
	djnz $-124		;8454
	ret p			;8456
	jr nz,l8465h		;8457
	djnz $+5		;8459
	ret p			;845b
	add a,l			;845c
	djnz $-14		;845d
	ret p			;845f
	jr nz,l8472h		;8460
	nop			;8462
	ld (bc),a		;8463
	ret p			;8464
l8465h:
	add a,e			;8465
	rlca			;8466
	ld a,a			;8467
	rlca			;8468
	inc bc			;8469
	rrca			;846a
	ld (bc),a		;846b
	rst 38h			;846c
	add a,e			;846d
	nop			;846e
	ret m			;846f
	ret m			;8470
	inc bc			;8471
l8472h:
	rst 38h			;8472
	ld (bc),a		;8473
	add a,b			;8474
	add a,c			;8475
	nop			;8476
	inc bc			;8477
	rlca			;8478
	add a,d			;8479
	add a,b			;847a
	call m,00105h		;847b
	ld (bc),a		;847e
	rst 38h			;847f
	adc a,(hl)		;8480
	cp 03fh			;8481
	ccf			;8483
sub_8484h:
	inc a			;8484
	inc a			;8485
	add a,e			;8486
	rst 38h			;8487
	ld a,(hl)		;8488
	ld a,(hl)		;8489
	ret po			;848a
	ret p			;848b
	ret p			;848c
	nop			;848d
	rra			;848e
	inc bc			;848f
	ccf			;8490
	add a,c			;8491
	rst 38h			;8492
	inc bc			;8493
	nop			;8494
	adc a,h			;8495
	rst 38h			;8496
	cp 0fch			;8497
	ret m			;8499
	ld a,h			;849a
	call m,000fch		;849b
	nop			;849e
	call m,03cfch		;849f
	inc bc			;84a2
	rra			;84a3
	add a,l			;84a4
	rst 38h			;84a5
	pop bc			;84a6
	pop bc			;84a7
	rra			;84a8
	rra			;84a9
	ex af,af'		;84aa
	cp l			;84ab
	ld (bc),a		;84ac
	rst 38h			;84ad
	add a,l			;84ae
	ret po			;84af
	rst 38h			;84b0
	pop hl			;84b1
	pop hl			;84b2
	ret po			;84b3
	inc bc			;84b4
	rst 38h			;84b5
	ld b,02fh		;84b6
	inc bc			;84b8
	rlca			;84b9
	add a,c			;84ba
	inc bc			;84bb
	inc bc			;84bc
	ld a,a			;84bd
	add a,l			;84be
	nop			;84bf
	ld a,a			;84c0
	ld a,000h		;84c1
	cp 003h			;84c3
	ret p			;84c5
	sbc a,c			;84c6
	nop			;84c7
	ret m			;84c8
	ret po			;84c9
	add a,b			;84ca
	ret p			;84cb
	ret p			;84cc
	nop			;84cd
	rlca			;84ce
	rlca			;84cf
	call m,00fe0h		;84d0
	cp 0e0h			;84d3
	rrca			;84d5
	rrca			;84d6
	inc bc			;84d7
	ld h,(hl)		;84d8
	jp 03c81h		;84d9
	rst 38h			;84dc
	ld a,(hl)		;84dd
	rst 38h			;84de
	rst 38h			;84df
	inc bc			;84e0
	ccf			;84e1
	sub b			;84e2
	add a,b			;84e3
	ret m			;84e4
	ret po			;84e5
	cp 0ffh			;84e6
	cp 00fh			;84e8
	rrca			;84ea
	rlca			;84eb
	ret p			;84ec
	ld a,a			;84ed
	rra			;84ee
	inc bc			;84ef
	nop			;84f0
	inc a			;84f1
	ld a,(hl)		;84f2
	inc bc			;84f3
	inc a			;84f4
	add a,(hl)		;84f5
	pop hl			;84f6
	rst 38h			;84f7
	rra			;84f8
	rst 38h			;84f9
	pop bc			;84fa
	pop bc			;84fb
	inc b			;84fc
	rra			;84fd
	ex af,af'		;84fe
	cp l			;84ff
	ld (bc),a		;8500
	pop hl			;8501
	add a,d			;8502
	ret po			;8503
	rst 38h			;8504
	inc b			;8505
	defb 0fdh,003h,0d0h ;illegal sequence	;8506
	add a,c			;8509
	nop			;850a
	inc b			;850b
	ret nc			;850c
	add a,c			;850d
	rrca			;850e
	inc bc			;850f
	rra			;8510
	inc bc			;8511
	ret po			;8512
	ld (bc),a		;8513
	rst 38h			;8514
	inc b			;8515
	ret p			;8516
	inc bc			;8517
	rra			;8518
	inc bc			;8519
	rrca			;851a
	adc a,b			;851b
	rlca			;851c
	rst 38h			;851d
	rra			;851e
	ccf			;851f
	ccf			;8520
	rlca			;8521
	ld bc,0033fh		;8522
	rst 38h			;8525
	xor b			;8526
	ld a,(hl)		;8527
	nop			;8528
	ccf			;8529
	rst 38h			;852a
	rst 38h			;852b
	call m,0c0f0h		;852c
	nop			;852f
	ld bc,0fe80h		;8530
	ret m			;8533
	ret po			;8534
	ret nz			;8535
	ret nz			;8536
	rra			;8537
	rra			;8538
	rst 38h			;8539
	cp 0f0h			;853a
	add a,b			;853c
	ccf			;853d
	ret po			;853e
	ret po			;853f
	ld c,003h		;8540
	rrca			;8542
	inc a			;8543
	ret po			;8544
	rlca			;8545
	rlca			;8546
	rst 38h			;8547
	nop			;8548
	rlca			;8549
	nop			;854a
	rra			;854b
	rra			;854c
	pop bc			;854d
	rrca			;854e
	ld b,003h		;854f
	and h			;8551
	ld bc,0f0c1h		;8552
	call m,03f3fh		;8555
	inc a			;8558
	inc e			;8559
	jp 07effh		;855a
	ld c,0feh		;855d
	rst 38h			;855f
	rst 38h			;8560
	cp 0feh			;8561
	nop			;8563
	nop			;8564
	cp 07eh			;8565
	ccf			;8567
	rra			;8568
	rra			;8569
	rst 38h			;856a
	rst 38h			;856b
	rra			;856c
	rra			;856d
	ld b,003h		;856e
	ld bc,07c7ch		;8570
	jr c,l85f1h		;8573
	jr c,l857ah		;8575
	ccf			;8577
	and h			;8578
	add a,b			;8579
l857ah:
	ret m			;857a
	ret nz			;857b
	ret po			;857c
	ret nz			;857d
	cp 00fh			;857e
	rrca			;8580
	rlca			;8581
	ret p			;8582
	rst 38h			;8583
	ld a,a			;8584
	rst 38h			;8585
	call m,0f0f0h		;8586
	nop			;8589
	rrca			;858a
	rrca			;858b
	ld c,003h		;858c
	ld a,(hl)		;858e
	call m,0f0f0h		;858f
	rra			;8592
	ccf			;8593
	ret po			;8594
	ret po			;8595
	ld a,h			;8596
	ld a,h			;8597
	ret p			;8598
	ret nz			;8599
	ret nz			;859a
	rra			;859b
	rra			;859c
	inc bc			;859d
	ld c,004h		;859e
	add a,b			;85a0
	inc b			;85a1
	ccf			;85a2
	adc a,(hl)		;85a3
	add a,b			;85a4
	cp 0feh			;85a5
	nop			;85a7
	cp 0feh			;85a8
	rlca			;85aa
	inc bc			;85ab
	ld a,(hl)		;85ac
	call m,0fefch		;85ad
	ccf			;85b0
	nop			;85b1
	inc b			;85b2
	inc bc			;85b3
	inc b			;85b4
	ld bc,03e02h		;85b5
	add a,c			;85b8
	cp 003h			;85b9
	call m,0f802h		;85bb
	add a,d			;85be
	ld bc,003ffh		;85bf
	call m,0f802h		;85c2
	sbc a,c			;85c5
	rrca			;85c6
	rra			;85c7
	nop			;85c8
	rra			;85c9
	rra			;85ca
	pop bc			;85cb
	rrca			;85cc
	inc bc			;85cd
	inc bc			;85ce
	rst 38h			;85cf
	rst 38h			;85d0
	rra			;85d1
	inc bc			;85d2
	rrca			;85d3
	ret nz			;85d4
	ret p			;85d5
	call m,00306h		;85d6
	ld bc,0c001h		;85d9
	ret m			;85dc
	ccf			;85dd
	rlca			;85de
	inc bc			;85df
	ccf			;85e0
	adc a,h			;85e1
	ld a,a			;85e2
	rlca			;85e3
	rlca			;85e4
	nop			;85e5
	ret po			;85e6
	cp 00fh			;85e7
	rrca			;85e9
	rlca			;85ea
	ret p			;85eb
	ld a,a			;85ec
	rrca			;85ed
	inc bc			;85ee
	ret po			;85ef
	inc b			;85f0
l85f1h:
	ccf			;85f1
	inc b			;85f2
	ld a,a			;85f3
	add a,l			;85f4
	ccf			;85f5
	ret nz			;85f6
	ret nz			;85f7
	add a,b			;85f8
	add a,b			;85f9
	inc bc			;85fa
	cp 002h			;85fb
	ret nz			;85fd
	ld (bc),a		;85fe
	add a,b			;85ff
	adc a,(hl)		;8600
	cp 0fch			;8601
	ret po			;8603
	rst 38h			;8604
	nop			;8605
	ld bc,0ffffh		;8606
	ld a,a			;8609
	ld h,b			;860a
	ret nz			;860b
	rst 38h			;860c
	ret nz			;860d
	cp 003h			;860e
	ret p			;8610
	adc a,l			;8611
	nop			;8612
	rrca			;8613
	rrca			;8614
	add a,b			;8615
	ret p			;8616
	ret p			;8617
	nop			;8618
	rlca			;8619
	rlca			;861a
	nop			;861b
	inc bc			;861c
	rra			;861d
	rst 38h			;861e
	inc bc			;861f
	ret p			;8620
	ld (bc),a		;8621
	nop			;8622
	add a,e			;8623
	inc bc			;8624
	rra			;8625
	rst 38h			;8626
	inc bc			;8627
	ret p			;8628
	cp l			;8629
	rlca			;862a
	cp 0fch			;862b
	ret p			;862d
	ret p			;862e
	rra			;862f
	ccf			;8630
	ret po			;8631
	ret po			;8632
	set 0,e			;8633
	rst 38h			;8635
	rst 38h			;8636
	ret p			;8637
	ret p			;8638
	inc c			;8639
	inc bc			;863a
	jr c,$-123		;863b
	sbc a,a			;863d
	rst 38h			;863e
	ret p			;863f
	ret p			;8640
	inc c			;8641
	inc bc			;8642
	rrca			;8643
	rrca			;8644
	nop			;8645
	cp 0ffh			;8646
	ld a,h			;8648
	ret m			;8649
	rst 28h			;864a
	rst 38h			;864b
	rst 38h			;864c
	nop			;864d
	ld bc,0ffffh		;864e
	ld a,a			;8651
	ld h,b			;8652
	rst 38h			;8653
	ret p			;8654
	add a,b			;8655
	ret p			;8656
	ret p			;8657
	nop			;8658
	rlca			;8659
	rlca			;865a
	rst 8			;865b
	ret p			;865c
	add a,b			;865d
	ret p			;865e
	ret p			;865f
	nop			;8660
	rlca			;8661
	rlca			;8662
	ld a,(hl)		;8663
	ccf			;8664
	rra			;8665
	rst 38h			;8666
	inc bc			;8667
	rra			;8668
	add a,l			;8669
	rst 38h			;866a
	nop			;866b
	rst 38h			;866c
	ret nz			;866d
	cp 003h			;866e
	ret p			;8670
	sub l			;8671
	nop			;8672
	rrca			;8673
	rrca			;8674
	add a,b			;8675
	ret p			;8676
	ret p			;8677
	nop			;8678
	rlca			;8679
	rlca			;867a
	nop			;867b
	inc bc			;867c
	rra			;867d
	rst 38h			;867e
	ret p			;867f
	ret p			;8680
	ld c,003h		;8681
	ld a,(hl)		;8683
	ccf			;8684
	rra			;8685
	rst 38h			;8686
	inc b			;8687
	rra			;8688
	add a,h			;8689
	ld a,(hl)		;868a
	ccf			;868b
	rra			;868c
	rst 38h			;868d
	inc bc			;868e
	rra			;868f
	sbc a,d			;8690
	rst 38h			;8691
	add a,b			;8692
	cp 07eh			;8693
	ld a,(hl)		;8695
	rlca			;8696
	ccf			;8697
	ret m			;8698
	ret m			;8699
	ld bc,00ff8h		;869a
	rst 38h			;869d
	rst 38h			;869e
	nop			;869f
	ex af,af'		;86a0
	rst 38h			;86a1
	ex af,af'		;86a2
	rst 38h			;86a3
	ld bc,0ffffh		;86a4
	nop			;86a7
	ex af,af'		;86a8
	rst 38h			;86a9
	rst 38h			;86aa
	inc b			;86ab
	ld a,(hl)		;86ac
	adc a,h			;86ad
	add a,b			;86ae
	cp 080h			;86af
	ld bc,00ff9h		;86b1
	rst 38h			;86b4
	ld bc,00b01h		;86b5
	rst 38h			;86b8
	rra			;86b9
	inc b			;86ba
	ld a,(hl)		;86bb
	add a,e			;86bc
	add a,b			;86bd
	cp 080h			;86be
	nop			;86c0
	ld (bc),a		;86c1
	inc hl			;86c2
	add a,e			;86c3
	ld hl,043f3h		;86c4
	inc bc			;86c7
	ld (04303h),a		;86c8
	add a,c			;86cb
	jp p,04f04h		;86cc
	inc bc			;86cf
	ld b,e			;86d0
	add a,l			;86d1
	ld (0f42fh),a		;86d2
	ld b,e			;86d5
	ld (0f204h),a		;86d6
	ld (bc),a		;86d9
	pop af			;86da
	add a,(hl)		;86db
	inc sp			;86dc
	ld hl,04332h		;86dd
	ld (00421h),a		;86e0
	pop af			;86e3
	add a,d			;86e4
	ld b,e			;86e5
	ld sp,01f03h		;86e6
	add a,l			;86e9
	ld hl,04332h		;86ea
	ld hl,00321h		;86ed
	rra			;86f0
	add a,l			;86f1
	ld hl,04332h		;86f2
	ld (00421h),a		;86f5
	rra			;86f8
	adc a,d			;86f9
	ld hl,04332h		;86fa
	ld (0f932h),a		;86fd
	ld sp,hl		;8700
	or 043h			;8701
	ld (04308h),a		;8703
	inc b			;8706
	pop af			;8707
	add a,d			;8708
	ld sp,hl		;8709
	or 004h			;870a
	jp p,0f181h		;870c
	dec b			;870f
	ld (de),a		;8710
	inc b			;8711
	ld (02104h),a		;8712
	inc bc			;8715
	ld b,e			;8716
	ld (bc),a		;8717
	ld (02183h),a		;8718
	rra			;871b
	rra			;871c
	inc bc			;871d
	ld (02181h),a		;871e
	inc bc			;8721
	rra			;8722
	inc bc			;8723
	ld hl,0f103h		;8724
	add a,e			;8727
	ld hl,04332h		;8728
	inc bc			;872b
	pop af			;872c
	ld (bc),a		;872d
	ld hl,03204h		;872e
	add a,c			;8731
	ld hl,01f03h		;8732
	inc bc			;8735
	ld hl,04302h		;8736
	add a,d			;8739
	ld (00421h),a		;873a
	pop af			;873d
	inc b			;873e
	ld b,e			;873f
	adc a,h			;8740
	ld (0f121h),a		;8741
	pop af			;8744
	ld (0f9f9h),a		;8745
	or 043h			;8748
	ld (02132h),a		;874a
	rlca			;874d
	ld b,e			;874e
	adc a,b			;874f
	ld (0f6f9h),a		;8750
	pop af			;8753
	pop af			;8754
	ld b,e			;8755
	ld (00332h),a		;8756
	ld hl,01f02h		;8759
	adc a,d			;875c
	ld (02121h),a		;875d
	rra			;8760
	ret p			;8761
	ret p			;8762
	ld de,02323h		;8763
	ld (de),a		;8766
	inc b			;8767
	pop af			;8768
	adc a,c			;8769
	ld (de),a		;876a
	inc hl			;876b
	inc (hl)		;876c
	ld (01f21h),a		;876d
	rra			;8770
	ld hl,00332h		;8771
	ld b,e			;8774
	add a,e			;8775
	ld (03221h),a		;8776
	ld c,043h		;8779
	add a,d			;877b
	di			;877c
	ld b,e			;877d
	inc bc			;877e
	ld (03183h),a		;877f
	rra			;8782
	rra			;8783
	dec b			;8784
	ld hl,0f102h		;8785
	add a,d			;8788
	inc de			;8789
	ld b,e			;878a
	inc b			;878b
	pop af			;878c
	add a,c			;878d
	ld sp,04303h		;878e
	ld (bc),a		;8791
	ld (02187h),a		;8792
	rra			;8795
	rra			;8796
	jp p,012f2h		;8797
	di			;879a
	inc bc			;879b
	jp p,0f104h		;879c
	add a,h			;879f
	ld (03243h),a		;87a0
	ld hl,0f104h		;87a3
	inc b			;87a6
	ld hl,01f02h		;87a7
	add a,d			;87aa
	inc sp			;87ab
	ld hl,0f106h		;87ac
	add a,c			;87af
	jp p,0f104h		;87b0
	add a,d			;87b3
	ld hl,00332h		;87b4
	ld b,e			;87b7
	add a,d			;87b8
	ld (00321h),a		;87b9
	rra			;87bc
	inc bc			;87bd
	ld hl,04302h		;87be
	add a,d			;87c1
	ld (00421h),a		;87c2
	pop af			;87c5
	ld (bc),a		;87c6
	ld hl,01f03h		;87c7
	add a,e			;87ca
	ld hl,0f332h		;87cb
	inc bc			;87ce
	pop af			;87cf
	ld (bc),a		;87d0
	ld (de),a		;87d1
	ld (bc),a		;87d2
	pop af			;87d3
	add a,d			;87d4
	ld (de),a		;87d5
	ld (02103h),a		;87d6
	ld (bc),a		;87d9
	rra			;87da
	sub e			;87db
	ld sp,0ff43h		;87dc
	rst 38h			;87df
	ld (03243h),a		;87e0
	rst 38h			;87e3
	ld b,e			;87e4
	ld (0ffffh),a		;87e5
	ld hl,01f21h		;87e8
	rra			;87eb
	ld (03221h),a		;87ec
	rlca			;87ef
	ld b,e			;87f0
	ld b,0f3h		;87f1
	add a,l			;87f3
	inc de			;87f4
	inc hl			;87f5
	ld hl,043ffh		;87f6
	inc b			;87f9
	ld (02184h),a		;87fa
	pop af			;87fd
	pop af			;87fe
	ld (02104h),a		;87ff
	adc a,c			;8802
	pop af			;8803
	ld (02132h),a		;8804
	rra			;8807
	rra			;8808
	jp p,012f2h		;8809
	inc b			;880c
	ld (02181h),a		;880d
	inc bc			;8810
	pop af			;8811
	add a,e			;8812
	jp p,0f3f3h		;8813
	inc bc			;8816
	inc hl			;8817
	ld (bc),a		;8818
	ld hl,03285h		;8819
	ld hl,0f21fh		;881c
	jp p,02303h		;881f
	ld (bc),a		;8822
	ld b,e			;8823
	sub b			;8824
	ld (0f121h),a		;8825
	jp p,032f2h		;8828
	rst 38h			;882b
	rst 38h			;882c
	ld sp,04142h		;882d
	ld c,a			;8830
	ld c,a			;8831
	ld b,e			;8832
	rst 38h			;8833
	rst 38h			;8834
	dec b			;8835
	ld b,e			;8836
	add a,h			;8837
	ld (0ffffh),a		;8838
	ld b,e			;883b
	inc bc			;883c
	ld (02102h),a		;883d
	add a,h			;8840
	defb 0fdh,00fh,00fh ;illegal sequence	;8841
	ld b,e			;8844
	inc b			;8845
	ld hl,0d88ch		;8846
	call p,032f4h		;8849
	ld (01f21h),a		;884c
	rra			;884f
	ret m			;8850
	ccf			;8851
	ld (00321h),a		;8852
	rra			;8855
	adc a,c			;8856
	ld hl,0fdfdh		;8857
	ret m			;885a
	ret m			;885b
	pop af			;885c
	ld (de),a		;885d
	inc hl			;885e
	inc hl			;885f
	inc b			;8860
	ret p			;8861
	add a,h			;8862
	pop af			;8863
	ld (de),a		;8864
	inc hl			;8865
	ld b,e			;8866
	inc bc			;8867
	pop af			;8868
	ld (bc),a		;8869
	ld (de),a		;886a
	ld (bc),a		;886b
	pop af			;886c
	add a,d			;886d
	ld (de),a		;886e
	push bc			;886f
	inc bc			;8870
	ei			;8871
	sub h			;8872
	pop af			;8873
	ld (de),a		;8874
	ld (0a5f3h),a		;8875
	push af			;8878
	ei			;8879
	ei			;887a
	pop af			;887b
	ld (de),a		;887c
	ld (0f1f3h),a		;887d
	ld (de),a		;8880
	ld (de),a		;8881
	ld (04332h),a		;8882
	call p,003fch		;8885
l8888h:
	rrca			;8888
	add a,c			;8889
	ld b,e			;888a
	inc b			;888b
	ld hl,0f302h		;888c
	add a,d			;888f
	ld (00321h),a		;8890
	rra			;8893
	add a,l			;8894
	ld hl,0f3fch		;8895
	ld (00321h),a		;8898
	rra			;889b
	add a,c			;889c
	ld hl,0f104h		;889d
	ld b,0f0h		;88a0
	adc a,d			;88a2
l88a3h:
	call p,03232h		;88a3
	ld hl,01f1fh		;88a6
	ret p			;88a9
	ccf			;88aa
	ld (00321h),a		;88ab
	rra			;88ae
	sub c			;88af
	ld hl,0fdfdh		;88b0
	ret m			;88b3
	ret m			;88b4
	pop af			;88b5
	ld (de),a		;88b6
	ld (0f1f3h),a		;88b7
	ret m			;88ba
	defb 0fdh,0fdh,0f8h ;illegal sequence	;88bb
	defb 0fdh,0fdh,0f8h ;illegal sequence	;88be
	inc b			;88c1
	pop af			;88c2
	add a,c			;88c3
	ret m			;88c4
	inc bc			;88c5
	defb 0fdh,002h,0e8h ;illegal sequence	;88c6
	ld (bc),a		;88c9
	ret c			;88ca
	ld (bc),a		;88cb
	defb 0fdh,088h,0f1h ;illegal sequence	;88cc
	ld (de),a		;88cf
	ld (de),a		;88d0
	pop af			;88d1
	defb 0fdh,0fdh,08dh ;illegal sequence	;88d2
	adc a,l			;88d5
	inc b			;88d6
	ret m			;88d7
	ld (bc),a		;88d8
	defb 0fdh,002h,08dh ;illegal sequence	;88d9
	ld (bc),a		;88dc
	ret m			;88dd
	add a,l			;88de
	xor 0d8h		;88df
	ret c			;88e1
	defb 0fdh,0d8h,003h ;illegal sequence	;88e2
	ret pe			;88e5
	adc a,l			;88e6
	jp p,0fdf1h		;88e7
	defb 0fdh,0f8h,0fdh ;illegal sequence	;88ea
	ret m			;88ed
	ret m			;88ee
	cp 0d8h			;88ef
	ret c			;88f1
	defb 0fdh,0d8h,003h ;illegal sequence	;88f2
	ret pe			;88f5
	nop			;88f6
	inc b			;88f7
	nop			;88f8
	adc a,b			;88f9
	rlca			;88fa
	ccf			;88fb
	ret m			;88fc
	ret m			;88fd
	inc bc			;88fe
	rra			;88ff
	rrca			;8900
	rst 38h			;8901
	inc bc			;8902
	ret p			;8903
	adc a,l			;8904
	nop			;8905
	ld a,(hl)		;8906
	call m,0f0f0h		;8907
	ld c,0ffh		;890a
	cp 0f8h			;890c
	daa			;890e
	ccf			;890f
	ccf			;8910
	cp 003h			;8911
	ret p			;8913
l8914h:
	add a,l			;8914
	nop			;8915
	set 0,e			;8916
	rst 38h			;8918
	rst 38h			;8919
	inc bc			;891a
	ret p			;891b
	add a,l			;891c
	nop			;891d
	jr c,l88a3h		;891e
	sbc a,a			;8920
	rst 38h			;8921
	inc bc			;8922
	ret p			;8923
	sub l			;8924
	nop			;8925
	rst 18h			;8926
	jp 018c3h		;8927
	jp 081c3h		;892a
	ld a,(hl)		;892d
	cp 0f8h			;892e
	rrca			;8930
	ld (hl),c		;8931
	jr nz,l8914h		;8932
	ld a,0c7h		;8934
	ld a,(hl)		;8936
	ccf			;8937
	rra			;8938
	rst 38h			;8939
	inc bc			;893a
	rra			;893b
	add a,h			;893c
	rst 38h			;893d
	cp 07fh			;893e
	ccf			;8940
	inc b			;8941
	rra			;8942
	add a,c			;8943
	ccf			;8944
	inc bc			;8945
	jp 0188ah		;8946
	jp 081c3h		;8949
	ld a,(hl)		;894c
	jp 03c81h		;894d
	ld a,(hl)		;8950
	inc a			;8951
	inc bc			;8952
	add a,c			;8953
	ld (bc),a		;8954
	sbc a,a			;8955
	adc a,e			;8956
	sub c			;8957
	ld (hl),c		;8958
	ld sp,0c180h		;8959
	pop bc			;895c
	rra			;895d
	add a,c			;895e
	inc a			;895f
	ld a,(hl)		;8960
	inc a			;8961
	inc bc			;8962
	add a,c			;8963
	inc bc			;8964
	pop bc			;8965
	adc a,b			;8966
	add a,b			;8967
	ld a,0ffh		;8968
	ret m			;896a
	ret m			;896b
	cp 07fh			;896c
	ccf			;896e
	inc b			;896f
	rra			;8970
	sbc a,c			;8971
	ccf			;8972
	rst 38h			;8973
	inc a			;8974
	rst 28h			;8975
	rst 0			;8976
	rst 8			;8977
	rst 38h			;8978
	ret m			;8979
	ret m			;897a
	ld bc,00ff8h		;897b
	ld (hl),c		;897e
	ld sp,0c180h		;897f
	pop bc			;8982
	ret po			;8983
	ld c,004h		;8984
	ld (hl),c		;8986
	jr nz,$-30		;8987
	ld a,0c1h		;8989
	nop			;898b
	ld b,0f0h		;898c
	add a,c			;898e
	pop af			;898f
	inc bc			;8990
	ld (de),a		;8991
	inc bc			;8992
	pop af			;8993
	add a,e			;8994
	ld (de),a		;8995
	inc hl			;8996
	inc hl			;8997
	inc bc			;8998
	pop af			;8999
	add a,c			;899a
	ld (de),a		;899b
	inc b			;899c
	ld (0b589h),a		;899d
	ei			;89a0
	ld c,a			;89a1
	ld (02132h),a		;89a2
	rra			;89a5
	rra			;89a6
	push bc			;89a7
	inc bc			;89a8
	ei			;89a9
	sbc a,c			;89aa
	pop af			;89ab
	ld (de),a		;89ac
	inc hl			;89ad
	inc hl			;89ae
	and l			;89af
	push af			;89b0
	ei			;89b1
	ei			;89b2
	pop af			;89b3
	ld (de),a		;89b4
	inc hl			;89b5
	inc hl			;89b6
	call m,0b5cbh		;89b7
	and l			;89ba
	or l			;89bb
	set 7,h			;89bc
	call m,0f121h		;89be
	push af			;89c1
	or l			;89c2
	rlc e			;89c3
	call m,0f104h		;89c5
	ld (bc),a		;89c8
	ei			;89c9
	ld (bc),a		;89ca
	call m,0f186h		;89cb
	push af			;89ce
	ei			;89cf
	ei			;89d0
	push af			;89d1
	ei			;89d2
	inc bc			;89d3
	call m,0cb89h		;89d4
	or l			;89d7
	and l			;89d8
	or l			;89d9
	set 7,h			;89da
	call m,0b5cbh		;89dc
	inc bc			;89df
	and l			;89e0
	adc a,l			;89e1
	or l			;89e2
	set 7,h			;89e3
	res 6,l			;89e5
	push bc			;89e7
	push bc			;89e8
	set 7,h			;89e9
	res 6,l			;89eb
	call m,003b5h		;89ed
	and l			;89f0
	adc a,h			;89f1
	or l			;89f2
	set 7,h			;89f3
	call m,0b5cbh		;89f5
	or l			;89f8
	and l			;89f9
	pop af			;89fa
	pop af			;89fb
	ld (de),a		;89fc
	pop af			;89fd
	inc bc			;89fe
	call m,0fb02h		;89ff
	dec b			;8a02
	call m,0fb92h		;8a03
	call m,0f1fch		;8a06
	ld (de),a		;8a09
	ld (de),a		;8a0a
	pop af			;8a0b
	call m,0cbc5h		;8a0c
	call m,0ffcbh		;8a0f
	or l			;8a12
	and l			;8a13
	and l			;8a14
	or l			;8a15
	rlc e			;8a16
	call m,sub_8100h	;8a18
	ret nz			;8a1b
	inc b			;8a1c
	rst 38h			;8a1d
	dec b			;8a1e
	ret nz			;8a1f
	inc b			;8a20
	rst 38h			;8a21
	add a,d			;8a22
	ret p			;8a23
	nop			;8a24
	nop			;8a25
	ld (bc),a		;8a26
	defb 0fdh,003h,000h ;illegal sequence	;8a27
	add a,(hl)		;8a2a
	defb 0fdh,0d8h,08eh ;illegal sequence	;8a2b
	ret c			;8a2e
	defb 0fdh,0fdh,005h ;illegal sequence	;8a2f
	rrca			;8a32
	nop			;8a33
	ld (bc),a		;8a34
	inc a			;8a35
	sub a			;8a36
	add a,c			;8a37
	pop bc			;8a38
	pop bc			;8a39
	ld a,a			;8a3a
	rra			;8a3b
	rst 38h			;8a3c
	ld a,09fh		;8a3d
	sub c			;8a3f
	ld (hl),c		;8a40
	ld sp,l8181h+2		;8a41
	add a,c			;8a44
	ld de,0019fh		;8a45
	adc a,(hl)		;8a48
	ld hl,0efb1h		;8a49
	daa			;8a4c
	daa			;8a4d
	inc bc			;8a4e
	call po,0db84h		;8a4f
	ld a,a			;8a52
	rra			;8a53
	rst 38h			;8a54
	nop			;8a55
	ld (bc),a		;8a56
	and l			;8a57
	add a,e			;8a58
	or l			;8a59
	set 7,h			;8a5a
	inc bc			;8a5c
	ret p			;8a5d
	sub l			;8a5e
	call m,0c5b5h		;8a5f
	push bc			;8a62
	ei			;8a63
	call m,0b5cbh		;8a64
	call m,0b5b5h		;8a67
	and l			;8a6a
	or l			;8a6b
	ei			;8a6c
	call m,0b5cbh		;8a6d
	or l			;8a70
	set 7,h			;8a71
	call m,0f003h		;8a73
	nop			;8a76
	add a,d			;8a77
	ret p			;8a78
	ret nz			;8a79
	ld b,000h		;8a7a
	adc a,b			;8a7c
	ret m			;8a7d
	ret po			;8a7e
l8a7fh:
	add a,b			;8a7f
	call m,sub_80f0h	;8a80
	nop			;8a83
	nop			;8a84
	ld b,00fh		;8a85
	ld (bc),a		;8a87
	rra			;8a88
	ld b,000h		;8a89
	add a,d			;8a8b
	ret nz			;8a8c
	ret p			;8a8d
	ld b,000h		;8a8e
	add a,(hl)		;8a90
	ret po			;8a91
	cp 0f8h			;8a92
	ret m			;8a94
	ret p			;8a95
	ret po			;8a96
	inc b			;8a97
	nop			;8a98
	ld (bc),a		;8a99
	call m,0e084h		;8a9a
	ret nz			;8a9d
	ret nz			;8a9e
	add a,b			;8a9f
	dec b			;8aa0
	nop			;8aa1
	add a,l			;8aa2
	add a,b			;8aa3
	ret p			;8aa4
	cp 0e0h			;8aa5
	call m,00006h		;8aa7
	add a,h			;8aaa
	ret p			;8aab
	rst 38h			;8aac
	ret p			;8aad
	rst 38h			;8aae
	ld a,(bc)		;8aaf
	nop			;8ab0
	ld (bc),a		;8ab1
	rst 38h			;8ab2
	ld (bc),a		;8ab3
	nop			;8ab4
	inc b			;8ab5
	rst 38h			;8ab6
	ld (bc),a		;8ab7
	nop			;8ab8
	add a,l			;8ab9
	rst 38h			;8aba
	nop			;8abb
	ret p			;8abc
	rrca			;8abd
	rrca			;8abe
	ld a,(bc)		;8abf
	rst 38h			;8ac0
	inc bc			;8ac1
	nop			;8ac2
	ex af,af'		;8ac3
	rst 38h			;8ac4
	rlca			;8ac5
	nop			;8ac6
	add a,d			;8ac7
	ret p			;8ac8
	rst 38h			;8ac9
	ex af,af'		;8aca
	nop			;8acb
	ld c,0ffh		;8acc
	inc bc			;8ace
	ret p			;8acf
	inc c			;8ad0
	rst 38h			;8ad1
	inc b			;8ad2
	rrca			;8ad3
	inc c			;8ad4
	rst 38h			;8ad5
	inc bc			;8ad6
	ret p			;8ad7
	ld c,0ffh		;8ad8
	add a,c			;8ada
	nop			;8adb
	ld b,0ffh		;8adc
	ld (bc),a		;8ade
	nop			;8adf
	add a,c			;8ae0
	ret p			;8ae1
	dec c			;8ae2
	nop			;8ae3
	inc b			;8ae4
	ret p			;8ae5
	inc c			;8ae6
	rst 38h			;8ae7
	inc b			;8ae8
	ret p			;8ae9
	ld b,000h		;8aea
	nop			;8aec
	ex af,af'		;8aed
	djnz l8af3h		;8aee
	ld hl,01007h		;8af0
l8af3h:
	add a,d			;8af3
	ret p			;8af4
	jr nz,l8b09h		;8af5
	djnz l8afbh		;8af7
	jr nz,l8b04h		;8af9
l8afbh:
	djnz l8a7fh		;8afb
	ret p			;8afd
	or b			;8afe
	ex af,af'		;8aff
	ret nz			;8b00
	inc bc			;8b01
	jr nz,$+4		;8b02
l8b04h:
	ld (0c008h),a		;8b04
	add a,e			;8b07
	push bc			;8b08
l8b09h:
	cp h			;8b09
	cp h			;8b0a
	ld a,(bc)		;8b0b
	ret nz			;8b0c
	ld (bc),a		;8b0d
	or l			;8b0e
	ld b,00ch		;8b0f
	dec b			;8b11
	rrc l			;8b12
	inc c			;8b14
	rlca			;8b15
	dec bc			;8b16
	ld (de),a		;8b17
	ret nz			;8b18
	ld (bc),a		;8b19
	rrc (hl)		;8b1a
	inc c			;8b1c
	add a,c			;8b1d
	rrc (hl)		;8b1e
	inc c			;8b20
	ld (bc),a		;8b21
	dec bc			;8b22
	ld c,00ch		;8b23
	add a,c			;8b25
	rl a			;8b26
	inc c			;8b28
	add a,c			;8b29
	cp e			;8b2a
	rrca			;8b2b
	ret nz			;8b2c
	add a,d			;8b2d
	cp h			;8b2e
	dec bc			;8b2f
	ld c,00ch		;8b30
	add a,d			;8b32
	dec bc			;8b33
	cp h			;8b34
	rlca			;8b35
	ret nz			;8b36
	nop			;8b37
	dec b			;8b38
	rst 38h			;8b39
	inc bc			;8b3a
	ret p			;8b3b
	inc b			;8b3c
	rst 38h			;8b3d
	ld (bc),a		;8b3e
	nop			;8b3f
	add a,c			;8b40
	rst 38h			;8b41
	dec b			;8b42
	nop			;8b43
	inc bc			;8b44
	ret p			;8b45
	add a,c			;8b46
	rrca			;8b47
	dec b			;8b48
	rst 38h			;8b49
	ld (bc),a		;8b4a
	nop			;8b4b
	ld b,0ffh		;8b4c
	inc bc			;8b4e
	rrca			;8b4f
	ld (bc),a		;8b50
	nop			;8b51
	inc b			;8b52
	rrca			;8b53
	ld b,0f0h		;8b54
	inc b			;8b56
	nop			;8b57
	inc bc			;8b58
	ret p			;8b59
	inc b			;8b5a
	rrca			;8b5b
	add a,d			;8b5c
	nop			;8b5d
	ret p			;8b5e
	inc bc			;8b5f
	rrca			;8b60
	inc b			;8b61
	rst 38h			;8b62
	ld (bc),a		;8b63
	rrca			;8b64
	inc bc			;8b65
	ret p			;8b66
	rlca			;8b67
	rst 38h			;8b68
	dec bc			;8b69
	rrca			;8b6a
	ld b,000h		;8b6b
	inc bc			;8b6d
	rrca			;8b6e
	dec b			;8b6f
	nop			;8b70
	inc bc			;8b71
	ret p			;8b72
	inc bc			;8b73
	nop			;8b74
	inc bc			;8b75
	rrca			;8b76
	ld (bc),a		;8b77
	ret p			;8b78
	add a,l			;8b79
	nop			;8b7a
	rst 38h			;8b7b
	rst 38h			;8b7c
	nop			;8b7d
	nop			;8b7e
	inc bc			;8b7f
	rst 38h			;8b80
	ex af,af'		;8b81
	rrca			;8b82
	ld (bc),a		;8b83
	rst 38h			;8b84
	ld b,00fh		;8b85
	ld b,000h		;8b87
	ex af,af'		;8b89
	ret p			;8b8a
	inc b			;8b8b
	nop			;8b8c
	ld (bc),a		;8b8d
	rst 38h			;8b8e
	add a,e			;8b8f
	nop			;8b90
	rst 38h			;8b91
	rst 38h			;8b92
	ld b,000h		;8b93
	add a,e			;8b95
	rst 38h			;8b96
	ret p			;8b97
	ret p			;8b98
	dec b			;8b99
	nop			;8b9a
	ld (bc),a		;8b9b
	ret p			;8b9c
	add a,d			;8b9d
	rrca			;8b9e
	nop			;8b9f
	inc b			;8ba0
	rrca			;8ba1
	inc b			;8ba2
	ret p			;8ba3
	inc b			;8ba4
	rrca			;8ba5
	inc bc			;8ba6
	rst 38h			;8ba7
	ld (bc),a		;8ba8
	ret p			;8ba9
	inc b			;8baa
	rrca			;8bab
	ld (bc),a		;8bac
	nop			;8bad
	nop			;8bae
	ld b,00ch		;8baf
	add a,d			;8bb1
	dec bc			;8bb2
	push bc			;8bb3
	dec b			;8bb4
	inc c			;8bb5
	inc bc			;8bb6
	ld e,e			;8bb7
	dec b			;8bb8
	ret nz			;8bb9
	add a,e			;8bba
	cp h			;8bbb
	ld e,e			;8bbc
	ld e,e			;8bbd
	ld b,00ch		;8bbe
	ld (bc),a		;8bc0
	ld e,e			;8bc1
	ld b,00ch		;8bc2
	add a,d			;8bc4
	res 6,l			;8bc5
	inc bc			;8bc7
	ret nz			;8bc8
	adc a,b			;8bc9
	or b			;8bca
	ld d,b			;8bcb
	cp h			;8bcc
	cp h			;8bcd
	ld d,b			;8bce
	cp e			;8bcf
	ld e,h			;8bd0
	or b			;8bd1
	dec b			;8bd2
	ret nz			;8bd3
	adc a,e			;8bd4
	or b			;8bd5
	ld d,b			;8bd6
	cp h			;8bd7
	cp h			;8bd8
	ld d,b			;8bd9
	or b			;8bda
	ret nz			;8bdb
	ret nz			;8bdc
	or l			;8bdd
	or l			;8bde
	rlc l			;8bdf
	inc c			;8be1
	add a,h			;8be2
	res 6,l			;8be3
	or l			;8be5
	rrc c			;8be6
	inc c			;8be8
	adc a,c			;8be9
	dec bc			;8bea
	push bc			;8beb
	cp e			;8bec
	inc c			;8bed
	dec bc			;8bee
	push bc			;8bef
	cp e			;8bf0
	ld e,h			;8bf1
	or b			;8bf2
	ex af,af'		;8bf3
	ret nz			;8bf4
	add a,d			;8bf5
	cp h			;8bf6
	ld e,e			;8bf7
	ld b,0c0h		;8bf8
	add a,d			;8bfa
	or b			;8bfb
	ld e,h			;8bfc
	inc b			;8bfd
	ret nz			;8bfe
	add a,e			;8bff
	cp h			;8c00
	ld e,e			;8c01
	ld e,e			;8c02
	inc bc			;8c03
	cp h			;8c04
	ld (bc),a		;8c05
	ld e,e			;8c06
	inc b			;8c07
	inc c			;8c08
	add a,a			;8c09
	or b			;8c0a
	ld d,b			;8c0b
	or b			;8c0c
	call z,0050bh		;8c0d
	dec bc			;8c10
	inc b			;8c11
	inc c			;8c12
	add a,h			;8c13
	dec bc			;8c14
	push bc			;8c15
	cp e			;8c16
	ld e,h			;8c17
	ld b,0b0h		;8c18
	ld (bc),a		;8c1a
	cp h			;8c1b
	add a,(hl)		;8c1c
	ld e,e			;8c1d
	dec bc			;8c1e
	push bc			;8c1f
	cp e			;8c20
	ld e,h			;8c21
	or b			;8c22
	ld b,0c0h		;8c23
	inc bc			;8c25
	or l			;8c26
	ex af,af'		;8c27
	ret nz			;8c28
	add a,d			;8c29
	res 6,l			;8c2a
	ld b,0c0h		;8c2c
	ld (bc),a		;8c2e
	cp h			;8c2f
	ld (bc),a		;8c30
	ret nz			;8c31
	adc a,d			;8c32
	or b			;8c33
	ld d,b			;8c34
	cp h			;8c35
	cp h			;8c36
	ld d,b			;8c37
	or b			;8c38
	set 1,e			;8c39
	dec b			;8c3b
	dec bc			;8c3c
	inc b			;8c3d
	inc c			;8c3e
	add a,l			;8c3f
	ld d,b			;8c40
	cp h			;8c41
	cp h			;8c42
	ld d,b			;8c43
	or b			;8c44
	inc bc			;8c45
	ret nz			;8c46
	nop			;8c47
	dec b			;8c48
	nop			;8c49
	inc bc			;8c4a
	rrca			;8c4b
	nop			;8c4c
	ld b,0c0h		;8c4d
	add a,d			;8c4f
	or b			;8c50
	ld d,b			;8c51
	nop			;8c52
	dec b			;8c53
	nop			;8c54
	ld (bc),a		;8c55
	rrca			;8c56
	add a,c			;8c57
	ret p			;8c58
	inc b			;8c59
	nop			;8c5a
	ld (bc),a		;8c5b
	rrca			;8c5c
	ld b,0f0h		;8c5d
	ex af,af'		;8c5f
	nop			;8c60
	inc b			;8c61
	rrca			;8c62
	add a,h			;8c63
	ret p			;8c64
	rst 38h			;8c65
	nop			;8c66
	nop			;8c67
	dec b			;8c68
	rst 38h			;8c69
	ld b,0f0h		;8c6a
	inc b			;8c6c
	rrca			;8c6d
	inc b			;8c6e
	ret p			;8c6f
	add a,c			;8c70
	rst 38h			;8c71
	rlca			;8c72
	ret p			;8c73
	add a,c			;8c74
	nop			;8c75
	ld b,00fh		;8c76
	ld (bc),a		;8c78
	ret p			;8c79
	ld (bc),a		;8c7a
	rst 38h			;8c7b
	inc bc			;8c7c
	ret p			;8c7d
	add hl,bc		;8c7e
	rrca			;8c7f
	sub l			;8c80
	nop			;8c81
	rrca			;8c82
	ret p			;8c83
	nop			;8c84
	rst 38h			;8c85
	rst 38h			;8c86
	nop			;8c87
	rst 38h			;8c88
	rst 38h			;8c89
	nop			;8c8a
	rrca			;8c8b
	rrca			;8c8c
	ret p			;8c8d
	ret p			;8c8e
	ret m			;8c8f
	rrca			;8c90
	nop			;8c91
	nop			;8c92
	rrca			;8c93
	nop			;8c94
	nop			;8c95
	inc bc			;8c96
	rrca			;8c97
	inc bc			;8c98
	ret p			;8c99
	ld (bc),a		;8c9a
	rrca			;8c9b
	add a,d			;8c9c
	nop			;8c9d
	ret p			;8c9e
	inc bc			;8c9f
	rrca			;8ca0
	adc a,b			;8ca1
	rst 38h			;8ca2
	nop			;8ca3
	rst 38h			;8ca4
	rst 38h			;8ca5
	nop			;8ca6
	nop			;8ca7
	rst 38h			;8ca8
	rst 38h			;8ca9
	nop			;8caa
	inc b			;8cab
	ld d,b			;8cac
	ld (bc),a		;8cad
	cp h			;8cae
	ld (bc),a		;8caf
	ld e,e			;8cb0
	dec b			;8cb1
	ret nz			;8cb2
	ld (bc),a		;8cb3
	cp h			;8cb4
	add a,h			;8cb5
	ld e,e			;8cb6
	push bc			;8cb7
	ld e,e			;8cb8
	cp h			;8cb9
	ld a,(bc)		;8cba
	ret nz			;8cbb
	add a,(hl)		;8cbc
	cp h			;8cbd
	ld e,e			;8cbe
	cp h			;8cbf
	cp h			;8cc0
	ld e,e			;8cc1
	ld e,e			;8cc2
	rlca			;8cc3
	inc c			;8cc4
	adc a,h			;8cc5
	dec bc			;8cc6
	push bc			;8cc7
	cp e			;8cc8
	ld e,h			;8cc9
	cp h			;8cca
	cp h			;8ccb
	dec bc			;8ccc
	inc c			;8ccd
	set 1,e			;8cce
	dec b			;8cd0
	dec bc			;8cd1
	inc bc			;8cd2
	inc c			;8cd3
	sbc a,h			;8cd4
	dec bc			;8cd5
	push bc			;8cd6
	cp e			;8cd7
	ld e,h			;8cd8
	or b			;8cd9
	ret nz			;8cda
	ret nz			;8cdb
	push bc			;8cdc
	dec bc			;8cdd
	inc c			;8cde
	inc c			;8cdf
	res 6,l			;8ce0
	or l			;8ce2
	set 1,e			;8ce3
	inc c			;8ce5
	inc c			;8ce6
	res 6,l			;8ce7
	or l			;8ce9
	rrc h			;8cea
	dec bc			;8cec
	push bc			;8ced
	cp e			;8cee
	ld e,h			;8cef
	or b			;8cf0
	ld b,0c0h		;8cf1
	inc bc			;8cf3
	or l			;8cf4
	ld (bc),a		;8cf5
	ret nz			;8cf6
	add a,l			;8cf7
	or l			;8cf8
	set 1,e			;8cf9
	or l			;8cfb
	rlc a			;8cfc
	ret nz			;8cfe
	adc a,h			;8cff
	cp h			;8d00
	ld e,e			;8d01
	ld e,e			;8d02
	cp h			;8d03
	ld e,e			;8d04
	ld e,e			;8d05
	cp h			;8d06
	cp h			;8d07
	or l			;8d08
	or l			;8d09
	rrc h			;8d0a
	inc bc			;8d0c
	or l			;8d0d
	ld (bc),a		;8d0e
	push bc			;8d0f
	ld (bc),a		;8d10
	res 0,c			;8d11
	inc c			;8d13
	nop			;8d14
	ld (bc),a		;8d15
	rst 38h			;8d16
	inc bc			;8d17
	rrca			;8d18
	rlca			;8d19
	ret p			;8d1a
	inc b			;8d1b
	rrca			;8d1c
	inc bc			;8d1d
	rst 38h			;8d1e
	dec b			;8d1f
	ret p			;8d20
	add a,c			;8d21
	nop			;8d22
	inc bc			;8d23
	ret p			;8d24
	inc bc			;8d25
	rrca			;8d26
	add a,d			;8d27
	nop			;8d28
	ret p			;8d29
	inc b			;8d2a
	rrca			;8d2b
	inc bc			;8d2c
	rst 38h			;8d2d
	dec b			;8d2e
	rrca			;8d2f
	inc bc			;8d30
	nop			;8d31
	ld (bc),a		;8d32
	ret p			;8d33
	inc b			;8d34
	rrca			;8d35
	ld (bc),a		;8d36
	rst 38h			;8d37
	nop			;8d38
	inc bc			;8d39
	inc c			;8d3a
	adc a,h			;8d3b
	res 6,l			;8d3c
	or l			;8d3e
	rrc h			;8d3f
	inc c			;8d41
	dec bc			;8d42
	dec b			;8d43
	set 1,e			;8d44
	dec b			;8d46
	dec bc			;8d47
	dec b			;8d48
	inc c			;8d49
	sub b			;8d4a
	dec bc			;8d4b
	push bc			;8d4c
	cp e			;8d4d
	ld e,h			;8d4e
	ret nz			;8d4f
	ret nz			;8d50
	cp h			;8d51
	ld e,e			;8d52
	ld e,e			;8d53
	cp h			;8d54
	ret nz			;8d55
	ret nz			;8d56
	set 1,e			;8d57
	push bc			;8d59
	dec bc			;8d5a
	inc b			;8d5b
	inc c			;8d5c
	add a,h			;8d5d
	push bc			;8d5e
	cp e			;8d5f
	ld e,h			;8d60
	cp h			;8d61
	inc b			;8d62
	ret nz			;8d63
	add a,l			;8d64
	push bc			;8d65
	set 1,e			;8d66
	or l			;8d68
	rlc e			;8d69
	inc c			;8d6b
	nop			;8d6c
	ld (bc),a		;8d6d
	rrca			;8d6e
	add a,e			;8d6f
	rlca			;8d70
	ld a,a			;8d71
	rlca			;8d72
	inc bc			;8d73
	rrca			;8d74
	ld (bc),a		;8d75
	rst 38h			;8d76
	add a,e			;8d77
	nop			;8d78
	ret m			;8d79
	ret m			;8d7a
	inc bc			;8d7b
	rst 38h			;8d7c
	ld (bc),a		;8d7d
	add a,b			;8d7e
	add a,c			;8d7f
	nop			;8d80
	inc bc			;8d81
	rlca			;8d82
	sub d			;8d83
	add a,b			;8d84
	call m,0fffeh		;8d85
	rst 38h			;8d88
	cp 0feh			;8d89
	nop			;8d8b
	nop			;8d8c
	cp 07eh			;8d8d
	ccf			;8d8f
	rra			;8d90
	rra			;8d91
	rst 38h			;8d92
	rst 38h			;8d93
	rra			;8d94
	rra			;8d95
	inc bc			;8d96
	nop			;8d97
	adc a,d			;8d98
	ld a,(hl)		;8d99
	ld a,h			;8d9a
	jr c,l8e19h		;8d9b
	jr c,l8da2h		;8d9d
	rra			;8d9f
	inc bc			;8da0
	nop			;8da1
l8da2h:
	add a,b			;8da2
	inc bc			;8da3
	ret nz			;8da4
	adc a,b			;8da5
	rst 38h			;8da6
	ld a,a			;8da7
	rrca			;8da8
	ld a,a			;8da9
	rrca			;8daa
	ld bc,00000h		;8dab
	inc b			;8dae
	rst 38h			;8daf
	sub h			;8db0
	rra			;8db1
	nop			;8db2
	ccf			;8db3
	nop			;8db4
	call m,000f0h		;8db5
	nop			;8db8
	ret m			;8db9
	nop			;8dba
	call m,0fc00h		;8dbb
	ret m			;8dbe
	ret po			;8dbf
	cp 0f8h			;8dc0
	ret nz			;8dc2
	call m,008c0h		;8dc3
	rra			;8dc6
	inc bc			;8dc7
	rlca			;8dc8
	add a,c			;8dc9
	inc bc			;8dca
	inc bc			;8dcb
	ld a,a			;8dcc
	add a,l			;8dcd
	jr nz,l8e4fh		;8dce
	ld a,000h		;8dd0
	cp 003h			;8dd2
	ret p			;8dd4
	adc a,c			;8dd5
	nop			;8dd6
	ret m			;8dd7
	ret po			;8dd8
	add a,b			;8dd9
	ret p			;8dda
	ret p			;8ddb
	nop			;8ddc
	rlca			;8ddd
	rlca			;8dde
	ld b,000h		;8ddf
	sub e			;8de1
	rrca			;8de2
	rst 38h			;8de3
	inc a			;8de4
	ld a,a			;8de5
	cp 0fch			;8de6
	ret m			;8de8
	ret p			;8de9
	ret nz			;8dea
	rrca			;8deb
	add a,b			;8dec
	ld bc,00f06h		;8ded
	ccf			;8df0
	ld a,a			;8df1
	ld a,a			;8df2
	rra			;8df3
	rrca			;8df4
	inc bc			;8df5
	rra			;8df6
	inc bc			;8df7
	ret po			;8df8
	ld (bc),a		;8df9
	rst 38h			;8dfa
	inc b			;8dfb
	ret p			;8dfc
	inc bc			;8dfd
	rra			;8dfe
	inc bc			;8dff
	rrca			;8e00
	ld (bc),a		;8e01
	rst 38h			;8e02
	adc a,l			;8e03
	rrca			;8e04
	nop			;8e05
	rlca			;8e06
	rlca			;8e07
	rst 38h			;8e08
	rst 38h			;8e09
	ld bc,00001h		;8e0a
	nop			;8e0d
	rrca			;8e0e
	ld e,07fh		;8e0f
	inc b			;8e11
	rst 38h			;8e12
	add a,e			;8e13
	rra			;8e14
	nop			;8e15
	ret m			;8e16
	ld b,0ffh		;8e17
l8e19h:
	adc a,l			;8e19
	inc a			;8e1a
	nop			;8e1b
	call m,0fce0h		;8e1c
	cp 0ffh			;8e1f
	rst 38h			;8e21
	call m,0fce0h		;8e22
	ret p			;8e25
	cp 003h			;8e26
	rst 38h			;8e28
	sub l			;8e29
	rra			;8e2a
	ret nz			;8e2b
	ret p			;8e2c
	call m,0dcc0h		;8e2d
	add a,b			;8e30
	adc a,(hl)		;8e31
	rra			;8e32
	nop			;8e33
	nop			;8e34
	ld a,a			;8e35
	rlca			;8e36
	nop			;8e37
	rra			;8e38
	inc bc			;8e39
	ret p			;8e3a
	rst 38h			;8e3b
	rst 38h			;8e3c
	call m,003f0h		;8e3d
	nop			;8e40
	sub b			;8e41
	ld a,a			;8e42
	sbc a,a			;8e43
	ld a,a			;8e44
	inc bc			;8e45
	rlca			;8e46
	rlca			;8e47
	inc bc			;8e48
	ld a,a			;8e49
	rra			;8e4a
	ld c,000h		;8e4b
	ret nz			;8e4d
	ret m			;8e4e
l8e4fh:
	nop			;8e4f
	rlca			;8e50
	rlca			;8e51
	inc b			;8e52
	rst 38h			;8e53
	inc bc			;8e54
	nop			;8e55
	ld (bc),a		;8e56
	rst 38h			;8e57
	ld (bc),a		;8e58
	nop			;8e59
	sbc a,(hl)		;8e5a
	ld bc,0000fh		;8e5b
	ret p			;8e5e
	ret p			;8e5f
	rst 38h			;8e60
	rst 38h			;8e61
	inc bc			;8e62
	rlca			;8e63
	nop			;8e64
	ret nz			;8e65
	ret nz			;8e66
	rst 38h			;8e67
	rst 38h			;8e68
	call m,0fcc0h		;8e69
	nop			;8e6c
	nop			;8e6d
	ret p			;8e6e
	nop			;8e6f
	nop			;8e70
	ld a,a			;8e71
	rlca			;8e72
	nop			;8e73
	rra			;8e74
	ld bc,0f0f0h		;8e75
	sbc a,a			;8e78
	inc bc			;8e79
	ccf			;8e7a
	adc a,b			;8e7b
	ld a,a			;8e7c
	rra			;8e7d
	rrca			;8e7e
	inc bc			;8e7f
	add a,b			;8e80
	ld bc,0001fh		;8e81
	dec b			;8e84
	ret p			;8e85
	add a,c			;8e86
	ld bc,0f004h		;8e87
	adc a,l			;8e8a
	call m,sub_80f0h	;8e8b
	ret nz			;8e8e
	ret nz			;8e8f
	ret p			;8e90
	ret p			;8e91
	inc c			;8e92
	rrca			;8e93
	di			;8e94
	ret m			;8e95
	nop			;8e96
	nop			;8e97
	inc bc			;8e98
	ret p			;8e99
	inc bc			;8e9a
	rrca			;8e9b
	add a,d			;8e9c
	ret p			;8e9d
	nop			;8e9e
	inc bc			;8e9f
	rrca			;8ea0
	rlca			;8ea1
	ret p			;8ea2
	add a,c			;8ea3
	rrca			;8ea4
	inc bc			;8ea5
	ret po			;8ea6
	inc bc			;8ea7
	ret p			;8ea8
	dec b			;8ea9
	rrca			;8eaa
	add a,(hl)		;8eab
	rst 38h			;8eac
	nop			;8ead
	rst 38h			;8eae
	rst 38h			;8eaf
	ret p			;8eb0
	ret p			;8eb1
	inc b			;8eb2
	rrca			;8eb3
	ld (bc),a		;8eb4
	ret p			;8eb5
	ld (bc),a		;8eb6
	rrca			;8eb7
	ld b,0f0h		;8eb8
	ld (bc),a		;8eba
	rrca			;8ebb
	add a,e			;8ebc
	ret m			;8ebd
	rst 38h			;8ebe
	ret p			;8ebf
	inc b			;8ec0
	rrca			;8ec1
	inc bc			;8ec2
	rst 38h			;8ec3
	add a,d			;8ec4
	ccf			;8ec5
	rlca			;8ec6
	inc bc			;8ec7
	rrca			;8ec8
	ld (bc),a		;8ec9
	ret p			;8eca
	ld (bc),a		;8ecb
	nop			;8ecc
	adc a,b			;8ecd
	ret m			;8ece
	rrca			;8ecf
	rrca			;8ed0
	ret p			;8ed1
	ret p			;8ed2
	rrca			;8ed3
	rst 38h			;8ed4
	ret p			;8ed5
	rlca			;8ed6
	rrca			;8ed7
	add a,h			;8ed8
	ld a,(hl)		;8ed9
	ccf			;8eda
	rra			;8edb
	rst 38h			;8edc
	inc b			;8edd
	rra			;8ede
	adc a,c			;8edf
	cp 0f8h			;8ee0
	rrca			;8ee2
	rst 38h			;8ee3
	rst 38h			;8ee4
	nop			;8ee5
	ex af,af'		;8ee6
	rst 38h			;8ee7
	rst 38h			;8ee8
	inc b			;8ee9
	ret p			;8eea
	add a,e			;8eeb
	nop			;8eec
	rlca			;8eed
	rlca			;8eee
	nop			;8eef
	ld (bc),a		;8ef0
	ld (02183h),a		;8ef1
	di			;8ef4
	ld b,e			;8ef5
	inc bc			;8ef6
	ld (04303h),a		;8ef7
	add a,c			;8efa
	jp p,04f04h		;8efb
	inc bc			;8efe
	ld b,e			;8eff
	add a,l			;8f00
	ld (0f42fh),a		;8f01
	ld b,e			;8f04
	ld (02104h),a		;8f05
	ld (bc),a		;8f08
	rra			;8f09
	add a,d			;8f0a
	inc sp			;8f0b
	ld hl,0f106h		;8f0c
	add a,c			;8f0f
	jp p,0f104h		;8f10
	add a,d			;8f13
	ld hl,00332h		;8f14
	ld b,e			;8f17
	add a,c			;8f18
	ld (02107h),a		;8f19
	inc bc			;8f1c
	ld (02106h),a		;8f1d
	dec b			;8f20
	ld (02102h),a		;8f21
	inc b			;8f24
	ld b,e			;8f25
	ld (bc),a		;8f26
	ld (02102h),a		;8f27
	inc bc			;8f2a
	ld (02103h),a		;8f2b
	ld a,(bc)		;8f2e
	djnz l8f35h		;8f2f
	ld (02104h),a		;8f31
	inc bc			;8f34
l8f35h:
	ld b,e			;8f35
	ld (bc),a		;8f36
	ld (02183h),a		;8f37
	rra			;8f3a
	rra			;8f3b
	inc bc			;8f3c
	ld (02181h),a		;8f3d
	inc bc			;8f40
	rra			;8f41
	add a,c			;8f42
	ld hl,0f008h		;8f43
	add a,c			;8f46
	ld (02108h),a		;8f47
	ld (bc),a		;8f4a
	pop af			;8f4b
	dec b			;8f4c
	ld hl,0f002h		;8f4d
	add a,h			;8f50
	ld de,02323h		;8f51
	ld (de),a		;8f54
	inc b			;8f55
	pop af			;8f56
	adc a,b			;8f57
	ld (de),a		;8f58
	inc hl			;8f59
	inc (hl)		;8f5a
	ld (01f21h),a		;8f5b
	rra			;8f5e
	ld hl,03205h		;8f5f
	add a,c			;8f62
	ld hl,03203h		;8f63
	inc b			;8f66
	ld b,e			;8f67
	add a,c			;8f68
	ld (04310h),a		;8f69
	ld (bc),a		;8f6c
	ld (04306h),a		;8f6d
	ld (bc),a		;8f70
	ld (04306h),a		;8f71
	inc bc			;8f74
	jr nz,$+4		;8f75
	ld (04305h),a		;8f77
	inc bc			;8f7a
	ld (02102h),a		;8f7b
	add a,c			;8f7e
	pop af			;8f7f
	rlca			;8f80
	ld (02183h),a		;8f81
	ld (00432h),a		;8f84
	ld b,e			;8f87
	ld (bc),a		;8f88
	ld (04302h),a		;8f89
	add a,(hl)		;8f8c
	ld (02121h),a		;8f8d
	pop af			;8f90
	rrca			;8f91
	rrca			;8f92
	inc b			;8f93
	ld (0f103h),a		;8f94
	inc bc			;8f97
	inc bc			;8f98
	adc a,e			;8f99
	ld (02121h),a		;8f9a
	pop af			;8f9d
	rrca			;8f9e
	rrca			;8f9f
	ld (02132h),a		;8fa0
	ld hl,003f1h		;8fa3
	rrca			;8fa6
	ld (bc),a		;8fa7
	ld (02103h),a		;8fa8
	inc bc			;8fab
	ret p			;8fac
	inc bc			;8fad
	ld (02102h),a		;8fae
	and d			;8fb1
	pop af			;8fb2
	rst 8			;8fb3
	or l			;8fb4
	pop af			;8fb5
	rst 8			;8fb6
	cp h			;8fb7
	ld d,d			;8fb8
	or d			;8fb9
	jp nz,032c2h		;8fba
	ld (02121h),a		;8fbd
	pop af			;8fc0
	rst 8			;8fc1
	ld e,h			;8fc2
	cp e			;8fc3
	push bc			;8fc4
	ld hl,0cff1h		;8fc5
	ld e,e			;8fc8
	cp h			;8fc9
	ret nz			;8fca
	ret nz			;8fcb
	or b			;8fcc
	pop af			;8fcd
	rst 8			;8fce
	push bc			;8fcf
	cp e			;8fd0
	push bc			;8fd1
	set 1,e			;8fd2
	inc b			;8fd4
	ret nz			;8fd5
	add a,h			;8fd6
	cp h			;8fd7
	ld e,e			;8fd8
	ld e,e			;8fd9
	cp h			;8fda
	inc b			;8fdb
	ret nz			;8fdc
	sub l			;8fdd
	cp h			;8fde
	ld e,e			;8fdf
	ld e,e			;8fe0
	cp h			;8fe1
	ret nz			;8fe2
	push bc			;8fe3
	cp e			;8fe4
	ld e,h			;8fe5
	cp h			;8fe6
	cp h			;8fe7
	or l			;8fe8
	rrc h			;8fe9
	inc c			;8feb
	res 6,l			;8fec
	or l			;8fee
	bit 3,h			;8fef
	cp h			;8ff1
	ret nz			;8ff2
	inc bc			;8ff3
	or l			;8ff4
	ld (bc),a		;8ff5
	rlc d			;8ff6
	or l			;8ff8
	ld (bc),a		;8ff9
	rlc d			;8ffa
	or l			;8ffc
	ld (bc),a		;8ffd
	rlc d			;8ffe
sub_9000h:
	inc c			;9000
	add a,(hl)		;9001
	dec bc			;9002
	rst 8			;9003
	inc c			;9004
	res 6,l			;9005
	or l			;9007
	dec b			;9008
	res 0,d			;9009
	dec b			;900b
	dec bc			;900c
	inc b			;900d
	inc c			;900e
	ld (bc),a		;900f
	ret p			;9010
	adc a,e			;9011
	ret nz			;9012
	cp h			;9013
	ld e,e			;9014
	ld e,e			;9015
	cp h			;9016
l9017h:
	cp h			;9017
	pop af			;9018
	pop af			;9019
	ei			;901a
	or l			;901b
	or l			;901c
	dec b			;901d
	res 2,h			;901e
	push bc			;9020
	cp e			;9021
	ld e,h			;9022
	cp e			;9023
	push bc			;9024
	set 6,c			;9025
	ret m			;9027
	defb 0fdh,0fdh,0f8h ;illegal sequence	;9028
	defb 0fdh,0fdh,0f8h ;illegal sequence	;902b
	ld hl,0fdf1h		;902e
	defb 0fdh,08dh ;adc a,iyl	;9031
	adc a,l			;9033
	inc bc			;9034
	ret m			;9035
	add a,e			;9036
	ld b,e			;9037
	ld (00321h),a		;9038
	rra			;903b
	add a,c			;903c
	ld hl,00200h		;903d
l9040h:
	nop			;9040
	dec b			;9041
	rrca			;9042
	adc a,l			;9043
	rlca			;9044
	ret po			;9045
	rst 38h			;9046
	nop			;9047
	ld bc,0ffffh		;9048
	ld a,a			;904b
	ld h,b			;904c
	rst 38h			;904d
	nop			;904e
	nop			;904f
	rst 38h			;9050
	inc bc			;9051
	ret p			;9052
	ld (bc),a		;9053
	nop			;9054
	add a,e			;9055
	inc bc			;9056
	rra			;9057
	rst 38h			;9058
	inc bc			;9059
	ret p			;905a
	inc bc			;905b
	nop			;905c
	sub d			;905d
	rst 38h			;905e
	ld bc,0ffffh		;905f
	ld a,a			;9062
	ld h,b			;9063
	add a,b			;9064
	cp 07eh			;9065
	ld a,(hl)		;9067
	rlca			;9068
	ccf			;9069
	ret m			;906a
	ret m			;906b
	nop			;906c
	inc bc			;906d
	rra			;906e
	rst 38h			;906f
	inc bc			;9070
	ret p			;9071
	add a,h			;9072
	nop			;9073
	cp 07fh			;9074
	ccf			;9076
	inc bc			;9077
	rra			;9078
	add a,(hl)		;9079
	ccf			;907a
	ld a,a			;907b
	ld a,(hl)		;907c
	ccf			;907d
	rra			;907e
	rst 38h			;907f
	inc bc			;9080
	rra			;9081
	ld (bc),a		;9082
	rst 38h			;9083
	add a,h			;9084
	rra			;9085
	nop			;9086
	ret p			;9087
	ret p			;9088
	inc bc			;9089
	rst 38h			;908a
	nop			;908b
	inc bc			;908c
	ret p			;908d
	add a,c			;908e
	jr nz,$+6		;908f
	djnz l9017h		;9091
	defb 0fdh,00fh,00fh ;illegal sequence	;9093
	ld b,e			;9096
	inc b			;9097
	ld hl,00f02h		;9098
	ld (bc),a		;909b
	inc (hl)		;909c
	add a,h			;909d
	ld (01f21h),a		;909e
	rra			;90a1
	inc b			;90a2
	ret p			;90a3
	add a,h			;90a4
	pop af			;90a5
	ld (de),a		;90a6
	inc hl			;90a7
	inc hl			;90a8
	inc bc			;90a9
	ret p			;90aa
	add a,c			;90ab
	ld b,e			;90ac
	inc b			;90ad
	ld hl,0e802h		;90ae
	ld (bc),a		;90b1
	ret c			;90b2
	ld (bc),a		;90b3
	defb 0fdh,08bh,0f1h ;illegal sequence	;90b4
	ld (de),a		;90b7
	defb 0fdh,0fdh,0f8h ;illegal sequence	;90b8
	ret m			;90bb
	pop af			;90bc
	ld (de),a		;90bd
	inc hl			;90be
	inc hl			;90bf
	pop af			;90c0
	rlca			;90c1
	ret p			;90c2
	inc b			;90c3
	pop af			;90c4
	add a,c			;90c5
	ret m			;90c6
	inc bc			;90c7
	defb 0fdh,003h,021h ;illegal sequence	;90c8
	add a,c			;90cb
	pop af			;90cc
	inc b			;90cd
	rrca			;90ce
	nop			;90cf
	add a,c			;90d0
	rst 38h			;90d1
	inc b			;90d2
	add a,c			;90d3
	adc a,e			;90d4
	add a,b			;90d5
	cp 080h			;90d6
	ex af,af'		;90d8
	rst 38h			;90d9
	ld bc,0ffffh		;90da
	nop			;90dd
	ex af,af'		;90de
sub_90dfh:
	rst 38h			;90df
	nop			;90e0
	inc bc			;90e1
	adc a,l			;90e2
	add a,d			;90e3
	rst 18h			;90e4
	adc a,l			;90e5
	inc bc			;90e6
	ret pe			;90e7
	ld (bc),a		;90e8
	ret m			;90e9
	ld (bc),a		;90ea
	defb 0fdh,002h,08dh ;illegal sequence	;90eb
	ld (bc),a		;90ee
	ret m			;90ef
	nop			;90f0
	dec b			;90f1
	rst 38h			;90f2
	add a,e			;90f3
	rst 30h			;90f4
	ret m			;90f5
	rrca			;90f6
	inc b			;90f7
	nop			;90f8
	add a,h			;90f9
	rlca			;90fa
	inc bc			;90fb
	jp 003feh		;90fc
	nop			;90ff
	add a,l			;9100
	ld bc,0f800h		;9101
	ld b,a			;9104
	djnz l910ah		;9105
	nop			;9107
	sub l			;9108
	add a,b			;9109
l910ah:
	ld a,b			;910a
	jr c,l9125h		;910b
	inc a			;910d
	nop			;910e
	jr nc,l911fh		;910f
	ret nz			;9111
	nop			;9112
	ld e,07ch		;9113
	jr c,l9117h		;9115
l9117h:
	nop			;9117
	add a,b			;9118
	ccf			;9119
	ccf			;911a
	ld a,03ch		;911b
	inc a			;911d
	inc bc			;911e
l911fh:
	nop			;911f
	or l			;9120
	ret nz			;9121
	cp a			;9122
	nop			;9123
	nop			;9124
l9125h:
	rrca			;9125
	ld c,003h		;9126
	rrca			;9128
	rrca			;9129
	rst 38h			;912a
	call po,0fe3eh		;912b
	nop			;912e
	ret nz			;912f
	ret m			;9130
	rst 38h			;9131
	ld h,b			;9132
	rst 38h			;9133
	ld a,h			;9134
	cp 080h			;9135
	ret po			;9137
	add a,b			;9138
	ld (bc),a		;9139
	ld a,d			;913a
	ld (bc),a		;913b
	jr c,l91bah		;913c
l913eh:
	nop			;913e
	ret po			;913f
	call m,0f880h		;9140
	ld a,(hl)		;9143
	ld a,b			;9144
	ld a,h			;9145
	ret nz			;9146
	rrca			;9147
	rra			;9148
	jr l913eh		;9149
	rra			;914b
	inc bc			;914c
	ld a,a			;914d
	nop			;914e
	nop			;914f
	ret m			;9150
	dec b			;9151
	sbc a,c			;9152
	ret nz			;9153
	ret nz			;9154
	ret p			;9155
	inc b			;9156
	nop			;9157
	add a,h			;9158
	ret nz			;9159
	pop bc			;915a
	call m,0040fh		;915b
	nop			;915e
	add a,h			;915f
	ex af,af'		;9160
	adc a,h			;9161
	add a,0e7h		;9162
	inc bc			;9164
	nop			;9165
	add a,l			;9166
	ex af,af'		;9167
	ld b,003h		;9168
	pop hl			;916a
	jp po,00005h		;916b
	add a,e			;916e
	ld b,b			;916f
	jr c,$+17		;9170
	inc bc			;9172
	nop			;9173
	add a,d			;9174
	ld b,001h		;9175
	inc bc			;9177
	rrca			;9178
	add a,e			;9179
	nop			;917a
	jr l9184h		;917b
	inc bc			;917d
	rrca			;917e
	ld (bc),a		;917f
	jp po,l8888h		;9180
	ret z			;9183
l9184h:
	call pe,0fefeh		;9184
	jr nz,l91a1h		;9187
	adc a,h			;9189
	inc b			;918a
	nop			;918b
	inc bc			;918c
	ld b,b			;918d
	add a,c			;918e
	ret nz			;918f
	inc b			;9190
	nop			;9191
	adc a,h			;9192
	rlca			;9193
	inc bc			;9194
	rra			;9195
	ld a,a			;9196
	ld bc,00e30h		;9197
	ret nz			;919a
	nop			;919b
	ld e,07ch		;919c
	jr c,l91a3h		;919e
	ret nz			;91a0
l91a1h:
	or d			;91a1
	add a,b			;91a2
l91a3h:
	and b			;91a3
	ret nz			;91a4
	ret nz			;91a5
	add a,b			;91a6
	ld bc,00303h		;91a7
	rlca			;91aa
	rrca			;91ab
	rra			;91ac
	rra			;91ad
	ccf			;91ae
	ret m			;91af
	call m,000ceh		;91b0
	nop			;91b3
	cp 000h			;91b4
	nop			;91b6
	ld e,03dh		;91b7
	inc a			;91b9
l91bah:
	nop			;91ba
	sbc a,0f0h		;91bb
	nop			;91bd
	nop			;91be
	inc e			;91bf
	adc a,l			;91c0
	rlca			;91c1
	rra			;91c2
	rlca			;91c3
	rlca			;91c4
	ld e,038h		;91c5
	ex af,af'		;91c7
	ret nz			;91c8
	ld bc,0f3c2h		;91c9
	pop bc			;91cc
	ld bc,03f00h		;91cd
	rrca			;91d0
l91d1h:
	add a,a			;91d1
	ret p			;91d2
	jr nc,$+5		;91d3
	nop			;91d5
	add a,l			;91d6
	call m,0c1e0h		;91d7
	jr c,$+98		;91da
	inc bc			;91dc
	nop			;91dd
	add a,l			;91de
	ret po			;91df
	pop bc			;91e0
	inc bc			;91e1
	inc b			;91e2
	ex af,af'		;91e3
	inc bc			;91e4
	nop			;91e5
	adc a,e			;91e6
	inc e			;91e7
	adc a,a			;91e8
	adc a,a			;91e9
	rst 38h			;91ea
	inc bc			;91eb
	inc bc			;91ec
	nop			;91ed
	nop			;91ee
	jr c,l91d1h		;91ef
	add a,b			;91f1
	dec b			;91f2
	nop			;91f3
	add a,h			;91f4
	rlca			;91f5
	jr c,l9258h		;91f6
	add a,b			;91f8
	inc b			;91f9
	nop			;91fa
	add a,l			;91fb
	ld b,0f8h		;91fc
	ret m			;91fe
	cp 000h			;91ff
	inc bc			;9201
	sbc a,a			;9202
	ld b,000h		;9203
	ld (bc),a		;9205
	ld a,(hl)		;9206
	add a,e			;9207
	ld a,038h		;9208
	jr nc,l9211h		;920a
	nop			;920c
	add a,c			;920d
	ld h,b			;920e
	inc bc			;920f
	ret nz			;9210
l9211h:
	inc b			;9211
	nop			;9212
	adc a,(hl)		;9213
	ld bc,00307h		;9214
	ld bc,00f01h		;9217
	inc bc			;921a
	rra			;921b
	ret p			;921c
	ret p			;921d
	ret po			;921e
	ret p			;921f
	ret m			;9220
	ret p			;9221
	inc bc			;9222
	ret m			;9223
	add a,d			;9224
	ld a,a			;9225
	ccf			;9226
	add hl,bc		;9227
	nop			;9228
	ld (bc),a		;9229
	ret nz			;922a
	xor (hl)		;922b
	cp 0ffh			;922c
	ld bc,00103h		;922e
	ld bc,0030fh		;9231
	nop			;9234
	cp 03fh			;9235
	ccf			;9237
	rra			;9238
	rrca			;9239
	inc bc			;923a
	ld bc,00000h		;923b
	ld bc,01f07h		;923e
	ccf			;9241
	ld a,a			;9242
	ld a,a			;9243
	ld bc,00103h		;9244
	inc bc			;9247
	inc bc			;9248
	rlca			;9249
	rrca			;924a
	rra			;924b
	ld a,a			;924c
	cp 000h			;924d
	inc bc			;924f
	rlca			;9250
	rrca			;9251
	rra			;9252
	ccf			;9253
	ld a,a			;9254
	ld a,a			;9255
	inc bc			;9256
	rlca			;9257
l9258h:
	rrca			;9258
	rrca			;9259
	inc bc			;925a
	rra			;925b
	add a,c			;925c
	ccf			;925d
	ld b,000h		;925e
	add a,d			;9260
	ccf			;9261
	rst 38h			;9262
	ld b,03fh		;9263
	add a,a			;9265
	ld e,000h		;9266
	nop			;9268
	rlca			;9269
	rlca			;926a
	rra			;926b
	ld a,a			;926c
	add hl,bc		;926d
	rst 38h			;926e
	add a,h			;926f
	ret m			;9270
	rrca			;9271
	rrca			;9272
	ccf			;9273
	ld b,0ffh		;9274
	sub c			;9276
	ld bc,00307h		;9277
	ld bc,00f01h		;927a
	inc bc			;927d
	ret po			;927e
	ld bc,00307h		;927f
	ld bc,00f01h		;9282
	inc bc			;9285
	inc bc			;9286
	rlca			;9287
	rlca			;9288
	nop			;9289
	rlca			;928a
	and b			;928b
	inc bc			;928c
	nop			;928d
	inc bc			;928e
	dec sp			;928f
	add a,e			;9290
	rst 38h			;9291
	nop			;9292
	nop			;9293
	nop			;9294
	rlca			;9295
	dec b			;9296
	dec b			;9297
	ld b,b			;9298
	add a,h			;9299
	ld d,b			;929a
	ld b,b			;929b
	ld d,h			;929c
	ld d,h			;929d
	dec b			;929e
	ld b,b			;929f
	add a,e			;92a0
	ld d,b			;92a1
	ld d,h			;92a2
	sub h			;92a3
	dec b			;92a4
	ld b,b			;92a5
	add a,(hl)		;92a6
	ld d,h			;92a7
	sub l			;92a8
	sub l			;92a9
	sub b			;92aa
	sub b			;92ab
	ld d,b			;92ac
	inc b			;92ad
	ld d,h			;92ae
	add a,c			;92af
	sub l			;92b0
	inc bc			;92b1
	ld d,b			;92b2
	add a,l			;92b3
	ld d,h			;92b4
	ld b,b			;92b5
	ld d,h			;92b6
	sub l			;92b7
	ld d,h			;92b8
	inc b			;92b9
	ld d,b			;92ba
	inc b			;92bb
	ld d,h			;92bc
	add a,e			;92bd
	sub b			;92be
	ld b,b			;92bf
	ld d,b			;92c0
	dec b			;92c1
	ld b,l			;92c2
	inc b			;92c3
	ld b,b			;92c4
	ld (bc),a		;92c5
	ld d,h			;92c6
	ld (bc),a		;92c7
	sub l			;92c8
	add a,l			;92c9
	ld b,b			;92ca
	ld d,b			;92cb
	call p,05454h		;92cc
	inc bc			;92cf
	sub l			;92d0
	ld (bc),a		;92d1
	ld d,b			;92d2
	add a,c			;92d3
	ld b,b			;92d4
	inc bc			;92d5
	ld d,h			;92d6
	ld (bc),a		;92d7
	sub l			;92d8
	ld (bc),a		;92d9
	sub b			;92da
	add a,c			;92db
	ld d,b			;92dc
	dec b			;92dd
	ld d,h			;92de
	inc bc			;92df
	sub b			;92e0
	add a,l			;92e1
	sub l			;92e2
	ld d,h			;92e3
	ld d,h			;92e4
	sbc a,a			;92e5
	defb 0fdh,005h,050h ;illegal sequence	;92e6
	add a,e			;92e9
	sub l			;92ea
	call p,006fdh		;92eb
	sub b			;92ee
	add a,d			;92ef
	sub l			;92f0
	sub h			;92f1
	ld b,090h		;92f2
	add a,d			;92f4
	sub l			;92f5
	ld d,h			;92f6
	ld b,090h		;92f7
	dec b			;92f9
	ld d,b			;92fa
	ld (bc),a		;92fb
	sub b			;92fc
	adc a,l			;92fd
	ret p			;92fe
	call p,sub_90dfh	;92ff
	sub b			;9302
	ld d,b			;9303
	ld b,b			;9304
	ld sp,hl		;9305
	push de			;9306
	ret c			;9307
	adc a,(hl)		;9308
	ld d,b			;9309
	ld d,b			;930a
	inc bc			;930b
	ld b,b			;930c
	inc bc			;930d
	ld d,h			;930e
	dec b			;930f
	sub b			;9310
	add a,c			;9311
	ld d,b			;9312
	ld b,040h		;9313
	add a,c			;9315
	ld d,b			;9316
	inc bc			;9317
	ld b,b			;9318
	ld (bc),a		;9319
	sub b			;931a
	add a,c			;931b
	ld d,b			;931c
	inc b			;931d
	ld d,h			;931e
	add a,c			;931f
	sub l			;9320
	ex af,af'		;9321
	ld b,b			;9322
	add a,c			;9323
	ld d,b			;9324
	rlca			;9325
	ld b,b			;9326
	add a,c			;9327
	sub l			;9328
	inc b			;9329
	ld d,h			;932a
	inc bc			;932b
	ld d,b			;932c
	ld (bc),a		;932d
	sub h			;932e
	ld (bc),a		;932f
	ld d,h			;9330
	add a,c			;9331
	call p,0f003h		;9332
	add a,e			;9335
	ld d,h			;9336
	sub h			;9337
	ld d,h			;9338
	inc bc			;9339
l933ah:
	ld b,b			;933a
	ld (bc),a		;933b
	ld d,b			;933c
	inc b			;933d
	ld d,h			;933e
	adc a,b			;933f
	ld b,b			;9340
	ld d,b			;9341
	sub b			;9342
	sub b			;9343
	call p,054f4h		;9344
	ld d,b			;9347
	inc b			;9348
	sub b			;9349
	ld (bc),a		;934a
	call p,05482h		;934b
	ld d,b			;934e
	inc b			;934f
	sub b			;9350
	add a,e			;9351
	ld d,h			;9352
	ld b,b			;9353
	ld d,b			;9354
	dec b			;9355
	sub b			;9356
	add a,h			;9357
	defb 0edh ;next byte illegal after ed	;9358
	ret c			;9359
	dec c			;935a
	dec c			;935b
	inc b			;935c
	sub b			;935d
	add a,c			;935e
	ld d,h			;935f
	ex af,af'		;9360
	ld d,b			;9361
	rlca			;9362
	sub b			;9363
	ld (bc),a		;9364
	ld d,h			;9365
	inc bc			;9366
	rrca			;9367
	add a,e			;9368
	call m,0fc8eh		;9369
	ex af,af'		;936c
	ret nc			;936d
	add a,d			;936e
	ld b,b			;936f
	ld d,b			;9370
	rlca			;9371
	sub b			;9372
	add a,c			;9373
	ld d,b			;9374
	ld b,090h		;9375
	ex af,af'		;9377
	ld b,b			;9378
	add a,c			;9379
	ld d,h			;937a
	inc b			;937b
	ld b,b			;937c
	add a,h			;937d
	ld d,h			;937e
	sub l			;937f
	ld d,h			;9380
	ld hl,0100ch		;9381
	inc bc			;9384
	ld hl,04005h		;9385
	ld (bc),a		;9388
	ld b,c			;9389
	add a,c			;938a
	ld hl,02005h		;938b
	inc bc			;938e
	djnz l9397h		;938f
	jr nz,$+4		;9391
	ld (02007h),a		;9393
	add a,e			;9396
l9397h:
	ld hl,01010h		;9397
	add hl,de		;939a
	jr nz,$+7		;939b
	djnz l93a1h		;939d
	ld (de),a		;939f
	dec c			;93a0
l93a1h:
	ld bc,02081h		;93a1
	ex af,af'		;93a4
	ld bc,04006h		;93a5
	add a,d			;93a8
	ld b,c			;93a9
	ld hl,04005h		;93aa
	ld (bc),a		;93ad
	ld b,c			;93ae
	add a,c			;93af
	ld (de),a		;93b0
	ex af,af'		;93b1
	djnz l933ah		;93b2
	ret nc			;93b4
	ret nz			;93b5
	add a,b			;93b6
	ret po			;93b7
	add a,b			;93b8
	ret nz			;93b9
	inc bc			;93ba
	ret nc			;93bb
	ld (bc),a		;93bc
	rst 8			;93bd
	add a,d			;93be
	ret pe			;93bf
	call 0f003h		;93c0
	nop			;93c3
	ret nz			;93c4
	nop			;93c5
	add a,b			;93c6
	rlca			;93c7
	jp p,0e2e2h		;93c8
	jp nz,031c2h		;93cb
	inc e			;93ce
	ret po			;93cf
	ld c,a			;93d0
	ld b,a			;93d1
	ld b,a			;93d2
	ld b,e			;93d3
	ld b,e			;93d4
	rst 0			;93d5
	ld bc,03966h		;93d6
	ld sp,02073h		;93d9
	halt			;93dc
	ex af,af'		;93dd
	ld (bc),a		;93de
	jr $+128		;93df
	jr $+62			;93e1
	ld a,b			;93e3
	ld a,l			;93e4
	inc a			;93e5
	ld a,(hl)		;93e6
	inc e			;93e7
	rlca			;93e8
	rra			;93e9
	ret p			;93ea
	ret nz			;93eb
	rst 38h			;93ec
	ld a,(0077eh)		;93ed
	ret p			;93f0
	call m,05357h		;93f1
	rst 38h			;93f4
	sub c			;93f5
	inc e			;93f6
	jp po,03cf6h		;93f7
	nop			;93fa
	ld h,b			;93fb
	inc sp			;93fc
	ld a,(hl)		;93fd
	jr $+62			;93fe
	jr l943eh		;9400
	inc a			;9402
	ld a,(hl)		;9403
	ld bc,07e03h		;9404
	and d			;9407
	ld a,a			;9408
	ld e,l			;9409
	ld b,c			;940a
	ex (sp),hl		;940b
	call m,0fe38h		;940c
	ld a,h			;940f
	ld a,h			;9410
	ld a,(hl)		;9411
	ret nz			;9412
	ret m			;9413
	ret nz			;9414
	ld a,(hl)		;9415
	ld a,(hl)		;9416
	ld a,h			;9417
	ret p			;9418
	call m,01f80h		;9419
	ret m			;941c
	and b			;941d
	ld a,000h		;941e
	add a,b			;9420
	rra			;9421
	ret po			;9422
	jr l949dh		;9423
	sbc a,b			;9425
	inc bc			;9426
	cp 03fh			;9427
	ccf			;9429
	inc bc			;942a
	cp 083h			;942b
	ret nz			;942d
	add a,c			;942e
	cp 006h			;942f
	ld bc,00f82h		;9431
	rlca			;9434
	dec b			;9435
	inc bc			;9436
	add a,e			;9437
	sbc a,c			;9438
	ld c,b			;9439
	ld bc,0c003h		;943a
	sub d			;943d
l943eh:
	ld bc,06307h		;943e
	inc sp			;9441
	nop			;9442
	jr l94c3h		;9443
	jr nc,l9483h		;9445
	ld a,(hl)		;9447
	ret nz			;9448
	inc c			;9449
	add a,e			;944a
	cp 0c3h			;944b
	ld a,(hl)		;944d
	ld a,(hl)		;944e
	rst 38h			;944f
	inc bc			;9450
	rrca			;9451
	sub a			;9452
	xor a			;9453
	call m,001e0h		;9454
	inc e			;9457
	rrca			;9458
	ret p			;9459
	ret p			;945a
	inc c			;945b
	ld c,b			;945c
	rra			;945d
	ld (0f23eh),a		;945e
	rst 38h			;9461
	rrca			;9462
	ld a,b			;9463
	jr $+126		;9464
	jr l94c6h		;9466
	jp nz,003ffh		;9468
	jp nz,0e203h		;946b
	add a,d			;946e
	ld b,e			;946f
	rst 38h			;9470
	inc bc			;9471
	ld b,e			;9472
	ld (bc),a		;9473
	ld b,a			;9474
	sbc a,d			;9475
	ld c,a			;9476
	inc a			;9477
	jr l94b8h		;9478
	ld e,h			;947a
	sbc a,028h		;947b
	nop			;947d
	inc bc			;947e
l947fh:
	ld a,a			;947f
	ld sp,l9040h		;9480
l9483h:
	ld b,b			;9483
	rrca			;9484
	jr l947fh		;9485
	cp (hl)			;9487
	add a,b			;9488
	ld b,b			;9489
	rra			;948a
	rra			;948b
	ld e,0e0h		;948c
	ret po			;948e
	add a,b			;948f
	inc bc			;9490
	nop			;9491
	ld (bc),a		;9492
	add a,b			;9493
	add a,d			;9494
	ret po			;9495
	ccf			;9496
	inc b			;9497
	xor (hl)		;9498
	ld (bc),a		;9499
	xor h			;949a
	sub (hl)		;949b
	xor b			;949c
l949dh:
	ret m			;949d
	ccf			;949e
	rra			;949f
	ccf			;94a0
	rrca			;94a1
	nop			;94a2
	nop			;94a3
	ld a,0ffh		;94a4
	ret po			;94a6
	call m,0c0f0h		;94a7
	inc bc			;94aa
	rlca			;94ab
	rrca			;94ac
	rrca			;94ad
	rlca			;94ae
	rra			;94af
	ld a,h			;94b0
	ret m			;94b1
	inc bc			;94b2
	ret p			;94b3
	add a,0f8h		;94b4
l94b6h:
	ret p			;94b6
	ld h,b			;94b7
l94b8h:
	nop			;94b8
	add a,b			;94b9
	inc c			;94ba
	ld a,(hl)		;94bb
	inc a			;94bc
	ld a,03fh		;94bd
	ccf			;94bf
	cp 0ffh			;94c0
	rlca			;94c2
l94c3h:
	ld bc,07c30h		;94c3
l94c6h:
	ld bc,l80feh		;94c6
	add a,b			;94c9
	ret po			;94ca
	ret nz			;94cb
	ret p			;94cc
	ccf			;94cd
	inc bc			;94ce
	inc bc			;94cf
	rlca			;94d0
l94d1h:
	rrca			;94d1
	ld bc,00f03h		;94d2
	call m,03f3ch		;94d5
	ld a,h			;94d8
	inc e			;94d9
	ld e,03fh		;94da
	dec a			;94dc
	ld a,l			;94dd
	add a,b			;94de
	adc a,b			;94df
	add a,b			;94e0
	call z,0f4cch		;94e1
	ret z			;94e4
	ret p			;94e5
	rrca			;94e6
	ccf			;94e7
	ld e,070h		;94e8
	call m,01f40h		;94ea
	rra			;94ed
	ld a,(hl)		;94ee
	ld a,(hl)		;94ef
	inc a			;94f0
	inc a			;94f1
	ld a,a			;94f2
	inc a			;94f3
	jr c,l94b6h		;94f4
	jr c,l9534h		;94f6
	ret nz			;94f8
	rst 38h			;94f9
	rst 38h			;94fa
	inc bc			;94fb
	rrca			;94fc
	and l			;94fd
	nop			;94fe
	inc a			;94ff
	add hl,sp		;9500
	add hl,sp		;9501
	ret m			;9502
sub_9503h:
	ret m			;9503
	inc bc			;9504
sub_9505h:
	ld bc,01e00h		;9505
	ld c,0deh		;9508
	jr z,l9548h		;950a
	inc a			;950c
	nop			;950d
	ccf			;950e
	dec de			;950f
	ccf			;9510
	ld e,01eh		;9511
	ret p			;9513
	rst 38h			;9514
	ld e,0fah		;9515
	call p,07cf8h		;9517
	jr c,l9594h		;951a
	ld a,b			;951c
	nop			;951d
	ret nz			;951e
	sbc a,b			;951f
	jr c,l955ah		;9520
	jp 0fe03h		;9522
	add a,c			;9525
	nop			;9526
	rlca			;9527
	jp p,0ff83h		;9528
	nop			;952b
	rst 38h			;952c
	dec b			;952d
	and 0a2h		;952e
	ld bc,000ffh		;9530
	nop			;9533
l9534h:
	rst 38h			;9534
	rst 38h			;9535
	nop			;9536
	nop			;9537
	call m,0c0e0h		;9538
	ret po			;953b
	ret po			;953c
	ret p			;953d
	call m,07801h		;953e
	ld e,a			;9541
	nop			;9542
	add a,c			;9543
	add a,c			;9544
	nop			;9545
	out (0d1h),a		;9546
l9548h:
	ld h,b			;9548
	ret po			;9549
	ret p			;954a
	ret p			;954b
	ld (hl),b		;954c
	jr z,l957fh		;954d
	djnz l94d1h		;954f
	ret nz			;9551
	inc bc			;9552
	ld a,a			;9553
	add a,e			;9554
	ccf			;9555
	rra			;9556
	ccf			;9557
	ex af,af'		;9558
	ld a,(hl)		;9559
l955ah:
	ex af,af'		;955a
	jp p,00181h		;955b
	dec b			;955e
	ret po			;955f
	ld (bc),a		;9560
	rst 38h			;9561
	adc a,c			;9562
	ld e,014h		;9563
	jr nz,l9587h		;9565
	ld b,041h		;9567
	inc bc			;9569
	rlca			;956a
	rst 38h			;956b
	inc bc			;956c
	pop de			;956d
	add a,c			;956e
	ld a,a			;956f
	inc bc			;9570
	ccf			;9571
	sub b			;9572
	jr c,l95b1h		;9573
	inc e			;9575
	inc e			;9576
	ld a,07fh		;9577
	rst 38h			;9579
	inc a			;957a
	rrca			;957b
	rlca			;957c
	inc bc			;957d
	rlca			;957e
l957fh:
	rlca			;957f
	inc bc			;9580
	cp 0ffh			;9581
	ex af,af'		;9583
	ld a,(hl)		;9584
	adc a,d			;9585
	rlca			;9586
l9587h:
	rrca			;9587
	rrca			;9588
	rra			;9589
	rrca			;958a
	rlca			;958b
	rlca			;958c
	add a,a			;958d
	rst 38h			;958e
	ld a,a			;958f
	inc bc			;9590
	rst 38h			;9591
	add a,l			;9592
	ld a,a			;9593
l9594h:
	ccf			;9594
sub_9595h:
	cp a			;9595
	ret p			;9596
	ret m			;9597
	inc b			;9598
	call m,0f802h		;9599
	add a,c			;959c
	ld a,(hl)		;959d
	inc bc			;959e
	add a,b			;959f
	add a,h			;95a0
	call po,00703h		;95a1
	rlca			;95a4
	ex af,af'		;95a5
	jp p,003adh		;95a6
	add hl,bc		;95a9
	ex af,af'		;95aa
	inc bc			;95ab
	rra			;95ac
	inc a			;95ad
	ld a,b			;95ae
	jr l95beh		;95af
l95b1h:
	nop			;95b1
	cp 080h			;95b2
	rra			;95b4
	ld a,a			;95b5
	ret nz			;95b6
	ret nz			;95b7
	ret p			;95b8
	nop			;95b9
	nop			;95ba
	ld a,(hl)		;95bb
	rst 38h			;95bc
	add a,l			;95bd
l95beh:
	add a,l			;95be
	dec b			;95bf
	add a,b			;95c0
	ret nz			;95c1
	ret p			;95c2
	jr nc,l95cdh		;95c3
	add a,b			;95c5
	ret nz			;95c6
	sub b			;95c7
	ret m			;95c8
	call m,00002h		;95c9
	nop			;95cc
l95cdh:
	and b			;95cd
	ld (hl),b		;95ce
	sub b			;95cf
	dec c			;95d0
	rst 38h			;95d1
	ex (sp),hl		;95d2
	ex (sp),hl		;95d3
	add a,e			;95d4
	inc bc			;95d5
	inc a			;95d6
	ex af,af'		;95d7
	dec c			;95d8
	sub h			;95d9
	inc e			;95da
	inc b			;95db
	inc c			;95dc
	sbc a,h			;95dd
	jr c,l9618h		;95de
	jr l95feh		;95e0
	sbc a,0cah		;95e2
	ret nz			;95e4
	sbc a,0cah		;95e5
	ret nz			;95e7
	rst 38h			;95e8
	ret po			;95e9
	add a,l			;95ea
	ld l,d			;95eb
	or a			;95ec
	rst 38h			;95ed
	inc b			;95ee
	adc a,d			;95ef
	ld (bc),a		;95f0
	add a,b			;95f1
	sub (hl)		;95f2
	jr nc,l964dh		;95f3
	ret nz			;95f5
	ret nc			;95f6
	add a,b			;95f7
	rra			;95f8
	ret nz			;95f9
	ld c,b			;95fa
	inc h			;95fb
	jr nz,l9636h		;95fc
l95feh:
	ld e,0cfh		;95fe
	sbc a,a			;9600
	jp 0070fh		;9601
	rlca			;9604
	inc bc			;9605
	ld bc,0b001h		;9606
	ld b,00dh		;9609
	sbc a,l			;960b
	rst 38h			;960c
	ld a,a			;960d
	ld e,00eh		;960e
	rrca			;9610
	rlca			;9611
	inc bc			;9612
	inc bc			;9613
	rlca			;9614
	rrca			;9615
	ret po			;9616
	ld a,a			;9617
l9618h:
	ld a,a			;9618
	ret nz			;9619
	ccf			;961a
	ccf			;961b
	ld h,e			;961c
	jp 0c0f8h		;961d
	rra			;9620
	inc a			;9621
	ret p			;9622
	ret m			;9623
	ld b,0c3h		;9624
	nop			;9626
	ld a,a			;9627
	exx			;9628
	inc b			;9629
	sbc a,c			;962a
	bit 7,a			;962b
	ld a,(hl)		;962d
	jr c,l9630h		;962e
l9630h:
	ld b,b			;9630
	ld h,h			;9631
	ld h,b			;9632
	inc de			;9633
	ld e,003h		;9634
l9636h:
	ret nz			;9636
	add a,b			;9637
	nop			;9638
	ld (bc),a		;9639
	rlca			;963a
	add a,a			;963b
	rlca			;963c
	inc a			;963d
	jr l967ch		;963e
	jr l967eh		;9640
	inc a			;9642
	add a,c			;9643
	add a,c			;9644
	jr c,l96c3h		;9645
	jr nc,l9649h		;9647
l9649h:
	ld a,(hl)		;9649
	jr c,l96cah		;964a
	ld a,(hl)		;964c
l964dh:
	cp 03ch			;964d
	ld a,(hl)		;964f
	ld e,03eh		;9650
	ld a,b			;9652
	ret nz			;9653
	call m,00806h		;9654
	cp 0fch			;9657
	ret p			;9659
	ret nz			;965a
	call m,0e0f8h		;965b
	add a,b			;965e
	nop			;965f
	ret p			;9660
	ret nz			;9661
	rrca			;9662
	ccf			;9663
	ld a,a			;9664
	nop			;9665
	ld (hl),b		;9666
	call m,03020h		;9667
	inc e			;966a
	ld a,a			;966b
	ld a,a			;966c
	ret nz			;966d
	ld a,b			;966e
	rra			;966f
	rlca			;9670
	ld bc,00f7fh		;9671
	ccf			;9674
	rst 38h			;9675
	rst 38h			;9676
	inc bc			;9677
	nop			;9678
	add a,c			;9679
	ret po			;967a
	inc bc			;967b
l967ch:
	rst 38h			;967c
	and d			;967d
l967eh:
	inc bc			;967e
	ld a,b			;967f
	inc e			;9680
	ld e,03ch		;9681
	ld a,b			;9683
	ret po			;9684
	ld bc,00201h		;9685
	inc b			;9688
	inc b			;9689
	nop			;968a
	cp 07eh			;968b
	ret nz			;968d
	ret p			;968e
	ret nz			;968f
	add a,b			;9690
	rrca			;9691
	rrca			;9692
	ccf			;9693
	ld a,a			;9694
	ld a,(hl)		;9695
	ld a,h			;9696
	inc a			;9697
	jr c,l9719h		;9698
	ld a,a			;969a
	ld a,00eh		;969b
	rra			;969d
	ccf			;969e
	ccf			;969f
	inc bc			;96a0
	ld a,a			;96a1
	adc a,a			;96a2
	ld bc,0fe03h		;96a3
	inc c			;96a6
	ld a,07eh		;96a7
	cp 0e0h			;96a9
	add a,b			;96ab
	cp 002h			;96ac
	inc b			;96ae
	inc b			;96af
	ex af,af'		;96b0
	ex af,af'		;96b1
	inc bc			;96b2
	ld a,(hl)		;96b3
	adc a,a			;96b4
	ret p			;96b5
	ret nz			;96b6
	add a,b			;96b7
	ex (sp),hl		;96b8
	add a,b			;96b9
	rrca			;96ba
	ccf			;96bb
	ld a,a			;96bc
	inc a			;96bd
	jr c,l973fh		;96be
	ld a,a			;96c0
	ccf			;96c1
	ccf			;96c2
l96c3h:
	ld e,005h		;96c3
	nop			;96c5
	adc a,h			;96c6
	rlca			;96c7
	rra			;96c8
	ld a,h			;96c9
l96cah:
	ret nz			;96ca
	cp 03ch			;96cb
	ld e,0feh		;96cd
	cp 0f0h			;96cf
	nop			;96d1
	call m,sub_9000h	;96d2
	ret p			;96d5
	ld d,b			;96d6
	call p,0fdfdh		;96d7
	ret c			;96da
	ret c			;96db
	sbc a,090h		;96dc
	ld d,b			;96de
	call p,0fdfdh		;96df
	ret c			;96e2
	ret c			;96e3
	sbc a,004h		;96e4
	ld d,h			;96e6
	inc bc			;96e7
	sub l			;96e8
	dec b			;96e9
	ld d,h			;96ea
	dec b			;96eb
	sub l			;96ec
	ld (bc),a		;96ed
	ld d,h			;96ee
	ld (bc),a		;96ef
	call p,0f88ch		;96f0
	cp 0feh			;96f3
	sub l			;96f5
	ld d,h			;96f6
	ld d,h			;96f7
	call p,0f8f4h		;96f8
	cp 0feh			;96fb
	ld d,h			;96fd
	dec b			;96fe
	sub l			;96ff
	inc bc			;9700
	ld d,h			;9701
	inc bc			;9702
	sub l			;9703
	add a,l			;9704
	ld d,h			;9705
	ld c,a			;9706
	push af			;9707
	sub l			;9708
	sub l			;9709
	inc bc			;970a
	sub h			;970b
	ld (bc),a		;970c
	sub l			;970d
	adc a,d			;970e
	sub h			;970f
	sub l			;9710
	sub l			;9711
	ld d,h			;9712
	ld d,h			;9713
	ld c,a			;9714
	push af			;9715
	sub l			;9716
	ld d,h			;9717
	ld d,h			;9718
l9719h:
	inc b			;9719
	sub l			;971a
	ld (bc),a		;971b
	ld d,h			;971c
	ld (bc),a		;971d
	call p,sub_9503h	;971e
	add a,e			;9721
	ld d,h			;9722
	call p,003f4h		;9723
	ld d,h			;9726
	adc a,c			;9727
	call p,0ecfch		;9728
	call 0fdfdh		;972b
	ld c,l			;972e
	call m,006c8h		;972f
	ret pe			;9732
	add a,e			;9733
	defb 0fdh,0dch,0d8h ;illegal sequence	;9734
	dec b			;9737
	call c,05403h		;9738
	add a,(hl)		;973b
	call p,0d484h		;973c
l973fh:
	ld d,h			;973f
	ld d,h			;9740
	sub h			;9741
	inc b			;9742
	ld d,h			;9743
	inc bc			;9744
	sub l			;9745
	sub h			;9746
	sub b			;9747
	sub l			;9748
	push af			;9749
	ret m			;974a
	ret c			;974b
	defb 0edh ;next byte illegal after ed	;974c
	adc a,l			;974d
	push af			;974e
	push af			;974f
	rst 18h			;9750
	defb 0edh ;next byte illegal after ed	;9751
	cp 0f9h			;9752
	push af			;9754
	ld d,h			;9755
	ld d,h			;9756
	defb 0edh ;next byte illegal after ed	;9757
	defb 0edh ;next byte illegal after ed	;9758
	rst 38h			;9759
	ld d,h			;975a
	inc bc			;975b
	sub l			;975c
	add a,l			;975d
	ld d,h			;975e
	ret c			;975f
	call p,054f4h		;9760
	inc bc			;9763
	sub l			;9764
	add a,c			;9765
	ld d,h			;9766
	inc bc			;9767
	defb 0fdh,083h,0deh ;illegal sequence	;9768
	ret c			;976b
	ret c			;976c
	dec b			;976d
	add a,(iy-022h)		;976e
	ret c			;9771
	ret c			;9772
	defb 0fdh,0fdh,054h ;illegal sequence	;9773
	inc bc			;9776
	sub l			;9777
	add hl,bc		;9778
	ld d,h			;9779
	add a,e			;977a
	push af			;977b
	defb 0fdh,0feh,003h ;illegal sequence	;977c
	ld d,h			;977f
	add a,a			;9780
	call p,0eddfh		;9781
	defb 0edh ;next byte illegal after ed	;9784
	rst 18h			;9785
	cp 0feh			;9786
	inc bc			;9788
	ret c			;9789
	ld (bc),a		;978a
	defb 0fdh,083h,0f4h ;illegal sequence	;978b
	defb 0edh ;next byte illegal after ed	;978e
	defb 0edh ;next byte illegal after ed	;978f
	inc bc			;9790
	adc a,a			;9791
	ld (bc),a		;9792
	rst 18h			;9793
	add a,e			;9794
	call p,sub_9595h	;9795
	ld b,054h		;9798
	add a,c			;979a
	sub l			;979b
	inc bc			;979c
	ld d,h			;979d
	inc bc			;979e
	call p,0f581h		;979f
	ex af,af'		;97a2
	call p,05406h		;97a3
	sub (hl)		;97a6
	sub l			;97a7
	ld d,h			;97a8
	call pe,0fdcdh		;97a9
	defb 0fdh,0f4h,0f4h ;illegal sequence	;97ac
	ld d,h			;97af
	ld d,h			;97b0
	ret pe			;97b1
	ret pe			;97b2
	ret c			;97b3
	call c,0fddch		;97b4
	defb 0fdh,0f4h,0dch ;illegal sequence	;97b7
	call c,0dcd8h		;97ba
	inc bc			;97bd
	defb 0fdh,081h,0f4h ;illegal sequence	;97be
	ex af,af'		;97c1
	sub l			;97c2
	ld a,(bc)		;97c3
	ld d,h			;97c4
	ld (bc),a		;97c5
	sub l			;97c6
	inc bc			;97c7
	ld d,h			;97c8
	adc a,e			;97c9
	dec b			;97ca
	ret pe			;97cb
	adc a,l			;97cc
	adc a,l			;97cd
	rst 18h			;97ce
	call p,050f5h		;97cf
	sub b			;97d2
	sub l			;97d3
	ld d,h			;97d4
	inc bc			;97d5
	call p,0fc8dh		;97d6
	adc a,(hl)		;97d9
	call m,05454h		;97da
	sub l			;97dd
	ld d,h			;97de
	call p,0fecfh		;97df
	call m,05454h		;97e2
	inc bc			;97e5
	sub l			;97e6
	add a,h			;97e7
	ld d,h			;97e8
	ld c,a			;97e9
	ld c,a			;97ea
	ld d,h			;97eb
	inc bc			;97ec
	sub l			;97ed
	add a,c			;97ee
	ld d,h			;97ef
	inc bc			;97f0
	call p,sub_9505h	;97f1
	adc a,a			;97f4
	ld d,h			;97f5
	ld c,a			;97f6
	ld c,a			;97f7
	ld d,h			;97f8
	ld d,h			;97f9
l97fah:
	sub l			;97fa
	ld d,h			;97fb
	call p,0f0f0h		;97fc
	ld b,b			;97ff
	ld b,b			;9800
	ret nc			;9801
	ret nc			;9802
	add a,b			;9803
	inc bc			;9804
	ret nz			;9805
	add a,c			;9806
	ret po			;9807
	inc bc			;9808
	ret p			;9809
	sub c			;980a
	defb 0fdh,0dch,08eh ;illegal sequence	;980b
	call c,0fdfdh		;980e
	rrca			;9811
	rrca			;9812
	call 0eccdh		;9813
	call pe,0f4ddh		;9816
	call p,084d4h		;9819
	inc bc			;981c
	call nz,0fe89h		;981d
	call p,sub_9595h	;9820
	ld d,h			;9823
	ld c,a			;9824
	ld c,a			;9825
	ret m			;9826
	cp 008h			;9827
	ld d,h			;9829
	ld (bc),a		;982a
	ld b,b			;982b
	adc a,e			;982c
	call nc,084c4h		;982d
	push hl			;9830
	add a,h			;9831
	call nz,0c0d0h		;9832
	add a,b			;9835
	ret po			;9836
	add a,b			;9837
	inc bc			;9838
	ret nz			;9839
	ex af,af'		;983a
	add a,b			;983b
	adc a,b			;983c
	call m,0d8fdh		;983d
	adc a,(hl)		;9840
	ret c			;9841
	call m,000fch		;9842
	ex af,af'		;9845
	ld d,h			;9846
	ld (bc),a		;9847
	cp 086h			;9848
	ret m			;984a
	defb 0fdh,0f5h,0f4h ;illegal sequence	;984b
	ld b,l			;984e
	ld e,c			;984f
	rlca			;9850
	ld d,h			;9851
	add a,c			;9852
	sub l			;9853
	inc b			;9854
	call nz,0d402h		;9855
	ld (bc),a		;9858
	ld b,b			;9859
	inc b			;985a
	ret nz			;985b
	add a,h			;985c
	add a,b			;985d
	ret po			;985e
	add a,b			;985f
	ret nz			;9860
	ex af,af'		;9861
	ld d,h			;9862
	djnz l97fah		;9863
	adc a,c			;9865
	ret nc			;9866
	ret p			;9867
	ld c,(hl)		;9868
	ld c,b			;9869
	ld c,b			;986a
	call nz,0d4c4h		;986b
	ret po			;986e
	inc bc			;986f
	ret nz			;9870
	add a,h			;9871
	add a,b			;9872
	ret nc			;9873
	rst 18h			;9874
	rst 18h			;9875
	ex af,af'		;9876
	ld d,h			;9877
	ld (bc),a		;9878
	sub l			;9879
	ld (bc),a		;987a
	ld d,h			;987b
	ld (bc),a		;987c
	call p,0fd84h		;987d
	ret m			;9880
	sub l			;9881
	sub l			;9882
	inc bc			;9883
	call p,0fd83h		;9884
	ret m			;9887
	ret c			;9888
	dec b			;9889
	ld d,h			;988a
	add a,l			;988b
	call p,sub_8484h	;988c
	ld b,b			;988f
	ld b,b			;9890
	inc bc			;9891
	call p,05403h		;9892
	ld (bc),a		;9895
	call m,0dc83h		;9896
	ret z			;9899
	ret z			;989a
	inc bc			;989b
	ret pe			;989c
	add a,l			;989d
	defb 0fdh,0dch,0dch ;illegal sequence	;989e
	ret z			;98a1
	ret z			;98a2
	inc bc			;98a3
	adc a,(hl)		;98a4
	ex af,af'		;98a5
	ld d,h			;98a6
	inc b			;98a7
	ret m			;98a8
	sub e			;98a9
	cp 0f8h			;98aa
	ret m			;98ac
	defb 0fdh,0d8h,0e8h ;illegal sequence	;98ad
	ret m			;98b0
	ret m			;98b1
	defb 0fdh,0f8h,0deh ;illegal sequence	;98b2
	rst 38h			;98b5
	call po,0d4f4h		;98b6
	add a,h			;98b9
	call p,0f484h		;98ba
	rlca			;98bd
	ld d,h			;98be
	ld (bc),a		;98bf
	sub l			;98c0
	add a,d			;98c1
	ret z			;98c2
	call nc,0f405h		;98c3
	add a,l			;98c6
	ld d,h			;98c7
	ret z			;98c8
	ret z			;98c9
	call c,003dch		;98ca
	defb 0fdh,081h,0f4h ;illegal sequence	;98cd
	ex af,af'		;98d0
	ld d,h			;98d1
	add a,e			;98d2
	ret m			;98d3
	call p,00445h		;98d4
	sub l			;98d7
	add a,h			;98d8
	ld d,h			;98d9
	call p,054f4h		;98da
	inc b			;98dd
	sub l			;98de
	ld (bc),a		;98df
	ld d,h			;98e0
	adc a,l			;98e1
	call p,0f8fdh		;98e2
	ret m			;98e5
	cp 0fdh			;98e6
	call p,05494h		;98e8
	ld d,h			;98eb
	call nc,0e484h		;98ec
	dec bc			;98ef
	ld d,h			;98f0
	inc bc			;98f1
	sub l			;98f2
	add a,l			;98f3
	ld d,h			;98f4
	ld c,a			;98f5
	ld c,a			;98f6
	ld d,h			;98f7
	sub l			;98f8
	inc b			;98f9
	ld d,h			;98fa
	inc bc			;98fb
	sub l			;98fc
	add a,c			;98fd
	ld hl,03206h		;98fe
	add a,e			;9901
	ld hl,03232h		;9902
l9905h:
	inc b			;9905
	ld hl,01002h		;9906
	inc bc			;9909
	ld hl,01002h		;990a
	inc b			;990d
	or b			;990e
	ld (bc),a		;990f
	jr nz,l9915h		;9910
	ld (02002h),a		;9912
l9915h:
	dec b			;9915
	ld (02102h),a		;9916
	add a,c			;9919
	djnz l9924h		;991a
	inc hl			;991c
	ld (bc),a		;991d
	ld (de),a		;991e
	inc c			;991f
	ld (02102h),a		;9920
	add a,c			;9923
l9924h:
	ld (02103h),a		;9924
	add a,c			;9927
l9928h:
	pop af			;9928
	inc bc			;9929
	or c			;992a
	inc b			;992b
	ld hl,01004h		;992c
	ld b,020h		;992f
	ld (bc),a		;9931
	ld (02181h),a		;9932
	ld b,032h		;9935
	add a,c			;9937
	ld hl,03205h		;9938
	ld b,021h		;993b
	ld (bc),a		;993d
	djnz $+5		;993e
	or b			;9940
	ld (bc),a		;9941
	ld hl,01006h		;9942
	ex af,af'		;9945
	ld (02181h),a		;9946
	ld b,032h		;9949
	add a,c			;994b
	ld hl,08300h		;994c
	ld (hl),b		;994f
	jr nz,l9972h		;9950
	inc bc			;9952
	djnz $-108		;9953
	jr nz,$+18		;9955
	inc c			;9957
	inc b			;9958
	inc b			;9959
	ex af,af'		;995a
	inc b			;995b
	ex af,af'		;995c
	djnz l997fh		;995d
	ld b,b			;995f
	jr nz,l997ah		;9960
	inc c			;9962
	ex af,af'		;9963
	djnz l9976h		;9964
	jr nz,$+5		;9966
	djnz l996ch		;9968
	jr nz,$+6		;996a
l996ch:
	djnz l9905h		;996c
	ex af,af'		;996e
	jr l99a1h		;996f
	ld b,b			;9971
l9972h:
	ld b,b			;9972
	ret nz			;9973
	add a,b			;9974
	ret nz			;9975
l9976h:
	ld h,b			;9976
	djnz l9985h		;9977
	ld (bc),a		;9979
l997ah:
	inc b			;997a
	inc c			;997b
	ex af,af'		;997c
	djnz l999fh		;997d
l997fh:
	jr nc,l9989h		;997f
	ex af,af'		;9981
	inc c			;9982
	jr l9995h		;9983
l9985h:
	nop			;9985
	jr c,l9928h		;9986
	nop			;9988
l9989h:
	sbc a,b			;9989
	ld a,a			;998a
	jp l8181h		;998b
	jr nz,l9990h		;998e
l9990h:
	jr nz,$+34		;9990
	add a,b			;9992
	nop			;9993
	rra			;9994
l9995h:
	inc bc			;9995
	nop			;9996
	rrca			;9997
	ccf			;9998
	ld a,a			;9999
	rlca			;999a
	nop			;999b
	rra			;999c
	nop			;999d
	nop			;999e
l999fh:
	rrca			;999f
	ccf			;99a0
l99a1h:
	ld a,a			;99a1
	nop			;99a2
	add a,c			;99a3
	or b			;99a4
	inc bc			;99a5
	or (hl)			;99a6
	inc b			;99a7
	and 002h		;99a8
	ld hl,01003h		;99aa
	inc bc			;99ad
	or b			;99ae
	ld (bc),a		;99af
	ld hl,01003h		;99b0
	inc bc			;99b3
	or b			;99b4
	nop			;99b5
	sbc a,c			;99b6
	ret po			;99b7
	rst 38h			;99b8
	ccf			;99b9
	dec (hl)		;99ba
	ld bc,00707h		;99bb
	nop			;99be
	inc a			;99bf
	ld h,e			;99c0
	rra			;99c1
	ccf			;99c2
	ret nz			;99c3
	add a,b			;99c4
	add a,b			;99c5
	ret po			;99c6
	inc a			;99c7
	call m,0f0f0h		;99c8
	jr c,l99ech		;99cb
	jp m,0cacah		;99cd
	inc bc			;99d0
	ld (hl),l		;99d1
	sub h			;99d2
	nop			;99d3
	ex af,af'		;99d4
	ld a,(bc)		;99d5
	push bc			;99d6
	ld e,b			;99d7
	rrca			;99d8
	rlca			;99d9
	rlca			;99da
	ld l,a			;99db
	sbc a,a			;99dc
	rra			;99dd
	ld a,a			;99de
	dec b			;99df
	ret po			;99e0
	ret m			;99e1
	call m,0f8fch		;99e2
	ret nz			;99e5
	di			;99e6
	nop			;99e7
	ld (bc),a		;99e8
	defb 0fdh,084h ;add a,iyh	;99e9
	add a,h			;99eb
l99ech:
	call po,sub_8484h	;99ec
	inc bc			;99ef
	ld b,l			;99f0
	inc b			;99f1
	sub l			;99f2
	add a,l			;99f3
	ld d,h			;99f4
	ld c,a			;99f5
	ret m			;99f6
	sub l			;99f7
	ld d,h			;99f8
	inc bc			;99f9
	sub h			;99fa
	adc a,e			;99fb
	call p,0d8feh		;99fc
	ret m			;99ff
	defb 0edh ;next byte illegal after ed	;9a00
	adc a,a			;9a01
	rst 18h			;9a02
	rst 18h			;9a03
	add a,h			;9a04
	call po,00854h		;9a05
	sub l			;9a08
	add a,c			;9a09
	add a,l			;9a0a
	inc bc			;9a0b
	sub l			;9a0c
	add a,c			;9a0d
	sub h			;9a0e
	inc bc			;9a0f
	sub l			;9a10
	nop			;9a11
	add a,e			;9a12
	ld a,a			;9a13
	nop			;9a14
	ccf			;9a15
	inc b			;9a16
	nop			;9a17
	add a,a			;9a18
	rra			;9a19
	ld a,a			;9a1a
	ld a,a			;9a1b
	ccf			;9a1c
	ccf			;9a1d
	ld a,a			;9a1e
	ld a,a			;9a1f
	dec b			;9a20
	ld (hl),b		;9a21
	add a,d			;9a22
	ld a,a			;9a23
	ccf			;9a24
	inc bc			;9a25
	nop			;9a26
	nop			;9a27
	ex af,af'		;9a28
	or b			;9a29
	add a,h			;9a2a
	ret nz			;9a2b
	or b			;9a2c
	ret nz			;9a2d
	ret nz			;9a2e
	inc c			;9a2f
	or b			;9a30
	nop			;9a31
	inc b			;9a32
	nop			;9a33
	add a,c			;9a34
	ex (sp),hl		;9a35
	rlca			;9a36
	nop			;9a37
	add a,c			;9a38
	ex (sp),hl		;9a39
	dec d			;9a3a
	nop			;9a3b
	ld (bc),a		;9a3c
	add a,b			;9a3d
	add a,c			;9a3e
	rst 38h			;9a3f
	inc bc			;9a40
	add a,b			;9a41
	inc bc			;9a42
	nop			;9a43
	dec b			;9a44
	call m,02300h		;9a45
	or b			;9a48
	dec b			;9a49
	rlc h			;9a4a
	or b			;9a4c
	add a,c			;9a4d
	rlc e			;9a4e
	or b			;9a50
	nop			;9a51
	ex af,af'		;9a52
	nop			;9a53
	nop			;9a54
	ex af,af'		;9a55
	or b			;9a56
	nop			;9a57
	add a,(hl)		;9a58
	xor a			;9a59
	ld a,a			;9a5a
	add a,b			;9a5b
	add a,b			;9a5c
	rst 30h			;9a5d
	call pe,0e804h		;9a5e
	add a,(hl)		;9a61
	call pe,0f7f7h		;9a62
	add a,b			;9a65
	add a,b			;9a66
	cpl			;9a67
	inc bc			;9a68
	cp a			;9a69
	sub d			;9a6a
	rst 38h			;9a6b
	ret nz			;9a6c
	ret nz			;9a6d
	rst 38h			;9a6e
	rst 38h			;9a6f
	xor a			;9a70
	ld a,a			;9a71
	ld a,a			;9a72
	rst 38h			;9a73
	rst 38h			;9a74
	nop			;9a75
	nop			;9a76
	rla			;9a77
	nop			;9a78
	nop			;9a79
	ret nz			;9a7a
	ret nz			;9a7b
	rst 38h			;9a7c
	inc bc			;9a7d
	cp a			;9a7e
	ld (bc),a		;9a7f
	ret pe			;9a80
	add a,(hl)		;9a81
	rst 38h			;9a82
	nop			;9a83
	nop			;9a84
	add a,b			;9a85
	add a,b			;9a86
	cpl			;9a87
	inc bc			;9a88
	cp a			;9a89
	add a,c			;9a8a
	rst 38h			;9a8b
	inc b			;9a8c
	ret nz			;9a8d
	add a,e			;9a8e
	xor a			;9a8f
	ld a,a			;9a90
	ld a,a			;9a91
	inc bc			;9a92
	rst 38h			;9a93
	ld (bc),a		;9a94
	nop			;9a95
	inc b			;9a96
	ret nz			;9a97
	add a,c			;9a98
	rst 38h			;9a99
	inc bc			;9a9a
	cp a			;9a9b
	add a,c			;9a9c
	rst 38h			;9a9d
	inc b			;9a9e
	nop			;9a9f
	ld (bc),a		;9aa0
	add a,b			;9aa1
	add a,c			;9aa2
	cpl			;9aa3
	nop			;9aa4
	adc a,c			;9aa5
	ld b,e			;9aa6
	push af			;9aa7
	push af			;9aa8
	inc sp			;9aa9
	ld sp,hl		;9aaa
	ld sp,hl		;9aab
	or 0feh			;9aac
	or 003h			;9aae
	ld sp,hl		;9ab0
	adc a,c			;9ab1
	ld d,l			;9ab2
	di			;9ab3
	ld e,a			;9ab4
	push hl			;9ab5
	ld d,h			;9ab6
	ld d,h			;9ab7
	ld b,e			;9ab8
	push af			;9ab9
	push af			;9aba
	inc bc			;9abb
	di			;9abc
	add a,e			;9abd
	ld b,e			;9abe
	push af			;9abf
	ld c,a			;9ac0
	inc bc			;9ac1
	ld d,e			;9ac2
	inc b			;9ac3
	rst 28h			;9ac4
	adc a,b			;9ac5
	push af			;9ac6
	call p,0e5f4h		;9ac7
	ld d,h			;9aca
	ld d,h			;9acb
	or 0f9h			;9acc
	inc bc			;9ace
	ld d,h			;9acf
	add a,(hl)		;9ad0
	di			;9ad1
	ld e,a			;9ad2
	push hl			;9ad3
	ld d,h			;9ad4
	ld d,h			;9ad5
	ld b,e			;9ad6
	inc bc			;9ad7
	push af			;9ad8
	add a,l			;9ad9
	call p,043f2h		;9ada
	push af			;9add
	ld c,a			;9ade
	inc b			;9adf
	ld d,h			;9ae0
	adc a,c			;9ae1
	ld (0f5f1h),hl		;9ae2
	push af			;9ae5
l9ae6h:
	call p,0e5f4h		;9ae6
	ld d,h			;9ae9
	ld d,h			;9aea
	inc bc			;9aeb
	dec d			;9aec
	ld (bc),a		;9aed
	ld b,h			;9aee
	add a,e			;9aef
	di			;9af0
	ld e,a			;9af1
	push hl			;9af2
	nop			;9af3
	ld b,03ch		;9af4
	add a,d			;9af6
	add a,c			;9af7
	rst 38h			;9af8
	jr z,l9b6fh		;9af9
	ex af,af'		;9afb
	jr c,l9b06h		;9afc
	rla			;9afe
	ex af,af'		;9aff
	jr c,l9b0ah		;9b00
	ret pe			;9b02
	ex af,af'		;9b03
	jr c,l9b09h		;9b04
l9b06h:
	ret pe			;9b06
	ld (bc),a		;9b07
	rst 38h			;9b08
l9b09h:
	inc bc			;9b09
l9b0ah:
	rla			;9b0a
	ex af,af'		;9b0b
	jr c,l9b16h		;9b0c
	rla			;9b0e
	add a,c			;9b0f
	rst 38h			;9b10
	ex af,af'		;9b11
	jr c,l9b17h		;9b12
	ret pe			;9b14
	add a,c			;9b15
l9b16h:
	nop			;9b16
l9b17h:
	inc bc			;9b17
	ret pe			;9b18
	nop			;9b19
	adc a,c			;9b1a
	jr nc,l9b60h		;9b1b
	ld d,h			;9b1d
	ld d,h			;9b1e
	ld b,e			;9b1f
	ld (0f2f2h),a		;9b20
	ld b,e			;9b23
	ld c,032h		;9b24
	add a,d			;9b26
	cpl			;9b27
	ld d,h			;9b28
	ld d,043h		;9b29
	add a,c			;9b2b
	ld (04303h),a		;9b2c
	ld (bc),a		;9b2f
	push hl			;9b30
	inc bc			;9b31
	ld d,h			;9b32
	inc bc			;9b33
	jp p,03402h		;9b34
	inc bc			;9b37
	inc hl			;9b38
	ex af,af'		;9b39
	ld d,h			;9b3a
	ex af,af'		;9b3b
	ld (05403h),a		;9b3c
	add a,d			;9b3f
	ld (003ffh),a		;9b40
	ld b,e			;9b43
	inc bc			;9b44
	ld (0f205h),a		;9b45
	ex af,af'		;9b48
	ld b,e			;9b49
	add hl,bc		;9b4a
	jp p,05489h		;9b4b
	ld b,e			;9b4e
	ld b,e			;9b4f
	rst 38h			;9b50
	ld d,h			;9b51
	ld b,e			;9b52
	ld b,e			;9b53
	rst 38h			;9b54
	ld (02f03h),a		;9b55
	add a,e			;9b58
	ld (02f2fh),a		;9b59
	nop			;9b5c
	ex af,af'		;9b5d
	jr c,l9b68h		;9b5e
l9b60h:
	ret pe			;9b60
	ld (bc),a		;9b61
	jr c,l9ae6h		;9b62
	rst 38h			;9b64
	add a,b			;9b65
	inc b			;9b66
	ld a,(hl)		;9b67
l9b68h:
	nop			;9b68
	sbc a,b			;9b69
	push hl			;9b6a
	ld d,h			;9b6b
	ld d,h			;9b6c
	ld b,e			;9b6d
	ld d,h			;9b6e
l9b6fh:
	ld b,e			;9b6f
	push hl			;9b70
	ld b,e			;9b71
	ld b,e			;9b72
	ld (02f32h),a		;9b73
	ld (0432fh),a		;9b76
	ld (05443h),a		;9b79
	jp p,032f2h		;9b7c
	ld b,e			;9b7f
	ld d,h			;9b80
	ld d,h			;9b81
	nop			;9b82
	add a,a			;9b83
	nop			;9b84
	inc bc			;9b85
	rra			;9b86
	ld a,a			;9b87
	rlca			;9b88
	ccf			;9b89
	ccf			;9b8a
	dec b			;9b8b
	nop			;9b8c
	add a,h			;9b8d
	ld bc,00502h		;9b8e
	dec bc			;9b91
	inc bc			;9b92
	nop			;9b93
	sbc a,a			;9b94
	cp l			;9b95
	ld a,d			;9b96
	or 0eeh			;9b97
	ret nz			;9b99
	rlca			;9b9a
	rrca			;9b9b
	ld c,001h		;9b9c
	inc bc			;9b9e
	rlca			;9b9f
	rlca			;9ba0
	rrca			;9ba1
	ret p			;9ba2
	ret po			;9ba3
	ret po			;9ba4
	ret nz			;9ba5
	add a,b			;9ba6
	ld (hl),b		;9ba7
	or 0e7h			;9ba8
	nop			;9baa
	nop			;9bab
	call m,0f9fch		;9bac
	jp m,0ebf5h		;9baf
	nop			;9bb2
	nop			;9bb3
	ld b,0f0h		;9bb4
	nop			;9bb6
	inc b			;9bb7
	jr nc,l9bbch		;9bb8
	ld b,e			;9bba
	ld (bc),a		;9bbb
l9bbch:
	ld (03005h),a		;9bbc
	add a,d			;9bbf
	ld b,b			;9bc0
	ld d,b			;9bc1
	inc b			;9bc2
	ld b,b			;9bc3
	adc a,b			;9bc4
	jr nz,l9bf7h		;9bc5
	ld b,b			;9bc7
	ld d,b			;9bc8
	ld b,b			;9bc9
	ld b,b			;9bca
	jr nc,l9bedh		;9bcb
	inc b			;9bcd
	jr nc,l9bd2h		;9bce
	jr nz,l9bd6h		;9bd0
l9bd2h:
	jr nc,$-124		;9bd2
	jr nz,l9c06h		;9bd4
l9bd6h:
	inc bc			;9bd6
	ld b,b			;9bd7
	add a,l			;9bd8
	ret p			;9bd9
	jr nz,l9c0ch		;9bda
	ld b,b			;9bdc
	ld d,b			;9bdd
	inc bc			;9bde
	ld b,b			;9bdf
	add a,(hl)		;9be0
	ret p			;9be1
	cpl			;9be2
	ccf			;9be3
	ld b,d			;9be4
	ld d,e			;9be5
	call po,00400h		;9be6
	ret p			;9be9
	inc b			;9bea
	jr c,l9bf0h		;9beb
l9bedh:
	nop			;9bed
	add a,c			;9bee
	rlca			;9bef
l9bf0h:
	inc b			;9bf0
	ret pe			;9bf1
	nop			;9bf2
	inc b			;9bf3
	nop			;9bf4
	add a,h			;9bf5
	ld d,h			;9bf6
l9bf7h:
	ld b,e			;9bf7
	push hl			;9bf8
	ld b,e			;9bf9
	inc b			;9bfa
	ret p			;9bfb
	add a,h			;9bfc
	ld (0432fh),a		;9bfd
	ld (sub_8100h),a	;9c00
	jr c,l9c08h		;9c03
	rlca			;9c05
l9c06h:
	sub l			;9c06
	ccf			;9c07
l9c08h:
	rrca			;9c08
	rlca			;9c09
	rlca			;9c0a
	cp a			;9c0b
l9c0ch:
	ld a,a			;9c0c
	inc bc			;9c0d
	rlca			;9c0e
	rrca			;9c0f
	rra			;9c10
	rra			;9c11
	ccf			;9c12
	rra			;9c13
	rra			;9c14
	ccf			;9c15
	ccf			;9c16
	ld a,a			;9c17
	ld d,l			;9c18
	ld d,l			;9c19
	rst 38h			;9c1a
	ret m			;9c1b
	inc bc			;9c1c
	rla			;9c1d
	add a,e			;9c1e
	rst 38h			;9c1f
	ld d,l			;9c20
	ld d,l			;9c21
	inc bc			;9c22
	rst 38h			;9c23
	ld (bc),a		;9c24
	cp a			;9c25
	add a,(hl)		;9c26
	rst 38h			;9c27
	ld d,l			;9c28
	ld d,l			;9c29
	rst 38h			;9c2a
	rst 38h			;9c2b
	ret p			;9c2c
	ld b,074h		;9c2d
	ld (bc),a		;9c2f
	dec bc			;9c30
	ld (bc),a		;9c31
	rst 38h			;9c32
	inc b			;9c33
	adc a,e			;9c34
	ld (bc),a		;9c35
	rla			;9c36
	ld b,016h		;9c37
	nop			;9c39
	adc a,d			;9c3a
	ld b,e			;9c3b
	ld d,h			;9c3c
	ld b,e			;9c3d
	ld d,h			;9c3e
	ld d,h			;9c3f
	push hl			;9c40
	ld d,h			;9c41
	ld b,e			;9c42
	ld b,b			;9c43
	jr nc,l9c4bh		;9c44
	ld b,e			;9c46
	add a,a			;9c47
	ld (040f0h),a		;9c48
l9c4bh:
	jr nc,l9c6dh		;9c4b
	ret p			;9c4d
	di			;9c4e
	inc bc			;9c4f
	jp p,05485h		;9c50
	ld b,e			;9c53
	ld (0f4f4h),a		;9c54
	inc bc			;9c57
	di			;9c58
	sub c			;9c59
	xor 054h		;9c5a
	ld b,e			;9c5c
	push af			;9c5d
	push af			;9c5e
	call p,00ff4h		;9c5f
	rrca			;9c62
	jp p,024f3h		;9c63
	dec (hl)		;9c66
	ld b,c			;9c67
	ld e,043h		;9c68
	ld (0f303h),a		;9c6a
l9c6dh:
	add a,e			;9c6d
	call p,0fef5h		;9c6e
	inc b			;9c71
	ld b,e			;9c72
	add a,h			;9c73
	ld d,h			;9c74
	rst 38h			;9c75
	ld (00043h),a		;9c76
	ld (bc),a		;9c79
	pop bc			;9c7a
	adc a,c			;9c7b
	rst 38h			;9c7c
	ccf			;9c7d
	rlca			;9c7e
	nop			;9c7f
	rra			;9c80
	nop			;9c81
	cpl			;9c82
	cpl			;9c83
	rst 38h			;9c84
	inc bc			;9c85
	add a,b			;9c86
	adc a,c			;9c87
	adc a,d			;9c88
	adc a,(hl)		;9c89
	ret po			;9c8a
	rst 38h			;9c8b
	add a,b			;9c8c
	add a,b			;9c8d
	rst 38h			;9c8e
	djnz l9ca1h		;9c8f
	ld b,07fh		;9c91
	inc bc			;9c93
	cp a			;9c94
	add a,d			;9c95
	jp z,0038eh		;9c96
	add a,b			;9c99
	add a,a			;9c9a
	rst 38h			;9c9b
	cpl			;9c9c
	cpl			;9c9d
	rlca			;9c9e
	nop			;9c9f
	nop			;9ca0
l9ca1h:
	rrca			;9ca1
	inc b			;9ca2
	ret nz			;9ca3
	add a,e			;9ca4
	ld a,a			;9ca5
	nop			;9ca6
	rrca			;9ca7
	dec b			;9ca8
	ccf			;9ca9
	inc bc			;9caa
	cp a			;9cab
	dec b			;9cac
	rst 38h			;9cad
	nop			;9cae
	add a,e			;9caf
	di			;9cb0
	push af			;9cb1
	push af			;9cb2
	inc bc			;9cb3
	ld d,h			;9cb4
	add a,a			;9cb5
	ld b,e			;9cb6
	push hl			;9cb7
	push hl			;9cb8
	ld b,e			;9cb9
	di			;9cba
	di			;9cbb
	push af			;9cbc
	inc bc			;9cbd
	pop af			;9cbe
	ld (bc),a		;9cbf
	ld d,c			;9cc0
	add a,(hl)		;9cc1
	push af			;9cc2
	call p,0f5f4h		;9cc3
	call p,005e5h		;9cc6
	rst 38h			;9cc9
	add a,e			;9cca
	push hl			;9ccb
	ld d,h			;9ccc
	ld d,h			;9ccd
	inc bc			;9cce
	cp 086h			;9ccf
	pop af			;9cd1
	di			;9cd2
	di			;9cd3
	push hl			;9cd4
	push hl			;9cd5
	pop hl			;9cd6
	inc bc			;9cd7
	push hl			;9cd8
	add a,h			;9cd9
	cp 03eh			;9cda
	ld c,(hl)		;9cdc
	ld l,004h		;9cdd
	ld d,h			;9cdf
	add a,a			;9ce0
	rst 38h			;9ce1
	ld b,e			;9ce2
	ld d,h			;9ce3
	ccf			;9ce4
	ld d,h			;9ce5
	ld d,h			;9ce6
	ld b,e			;9ce7
	dec b			;9ce8
	cp 000h			;9ce9
	ld (bc),a		;9ceb
	ret pe			;9cec
	adc a,(hl)		;9ced
	call pe,0f8f7h		;9cee
	ld a,a			;9cf1
	ld a,a			;9cf2
	cpl			;9cf3
	xor a			;9cf4
	ld a,a			;9cf5
	rst 38h			;9cf6
	ret m			;9cf7
	rst 30h			;9cf8
	call pe,0e8e8h		;9cf9
	inc bc			;9cfc
	cp a			;9cfd
	adc a,e			;9cfe
	rst 38h			;9cff
	rst 30h			;9d00
	call pe,0e8e8h		;9d01
	xor a			;9d04
	ld a,a			;9d05
	rst 38h			;9d06
	rra			;9d07
	rst 28h			;9d08
	scf			;9d09
	inc b			;9d0a
	rla			;9d0b
	add a,e			;9d0c
	inc de			;9d0d
	ex af,af'		;9d0e
	nop			;9d0f
	inc bc			;9d10
	cp a			;9d11
	ld (bc),a		;9d12
	rla			;9d13
	add a,(hl)		;9d14
	scf			;9d15
	rst 28h			;9d16
	rra			;9d17
	ld a,a			;9d18
	ld a,a			;9d19
	cpl			;9d1a
	nop			;9d1b
	add a,c			;9d1c
	or 004h			;9d1d
	ld sp,hl		;9d1f
	add a,(hl)		;9d20
	jp p,0e5f5h		;9d21
	ld b,e			;9d24
	push af			;9d25
	push af			;9d26
	inc bc			;9d27
	ld sp,hl		;9d28
	add a,l			;9d29
	or 0feh			;9d2a
	ld d,h			;9d2c
	ld d,h			;9d2d
	ld b,e			;9d2e
	inc bc			;9d2f
	ld sp,hl		;9d30
	add a,l			;9d31
	or 0feh			;9d32
	ld b,e			;9d34
	push af			;9d35
	push af			;9d36
	inc bc			;9d37
	ld sp,hl		;9d38
	add a,e			;9d39
	or 0feh			;9d3a
	ld l,a			;9d3c
	inc b			;9d3d
	sbc a,a			;9d3e
	add a,h			;9d3f
	push hl			;9d40
	ld d,h			;9d41
	ld d,h			;9d42
	or 004h			;9d43
	ld sp,hl		;9d45
	add a,e			;9d46
	jp p,0e5f5h		;9d47
	nop			;9d4a
	add a,d			;9d4b
	xor a			;9d4c
	ld a,a			;9d4d
	dec bc			;9d4e
	rst 38h			;9d4f
	ld (bc),a		;9d50
	ld a,a			;9d51
	add a,c			;9d52
	cpl			;9d53
	nop			;9d54
	add a,c			;9d55
	ld b,e			;9d56
	inc c			;9d57
	push af			;9d58
	add a,e			;9d59
	jp p,0e5f5h		;9d5a
	nop			;9d5d
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
l9f00h:
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
