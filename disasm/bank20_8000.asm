; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank20_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank20.bin

	org 08000h

sub_8000h:
	nop			;8000
	rrca			;8001
	ld bc,00004h		;8002
	add a,a			;8005
	ret nz			;8006
	ret m			;8007
	nop			;8008
	nop			;8009
	ccf			;800a
	call m,003f0h		;800b
	nop			;800e
	adc a,e			;800f
	add a,b			;8010
	ret nz			;8011
	ret po			;8012
	ret nc			;8013
	adc a,b			;8014
	call m,0f0fch		;8015
	add a,b			;8018
	call m,00400h		;8019
	add a,b			;801c
	add a,(hl)		;801d
	rrca			;801e
	rst 38h			;801f
	call m,0e0fch		;8020
	ld a,a			;8023
	inc bc			;8024
	ccf			;8025
	adc a,b			;8026
	add a,b			;8027
	call m,sub_8000h	;8028
	add a,b			;802b
	ld bc,0f8fch		;802c
	inc b			;802f
	ret p			;8030
	adc a,h			;8031
	ret nz			;8032
	djnz l8065h		;8033
	ld h,b			;8035
	nop			;8036
	inc bc			;8037
	rst 38h			;8038
	ret m			;8039
	inc bc			;803a
	ld bc,00000h		;803b
	inc bc			;803e
	ret p			;803f
	inc bc			;8040
	ret m			;8041
	ld (bc),a		;8042
	call m,01f89h		;8043
	ccf			;8046
	ld a,a			;8047
	call m,0c0f0h		;8048
	ret m			;804b
	ret nz			;804c
	ld bc,00006h		;804d
	add a,(hl)		;8050
	ld a,a			;8051
	nop			;8052
	ret nz			;8053
	ld a,a			;8054
	ccf			;8055
	ccf			;8056
	inc bc			;8057
	rra			;8058
	adc a,c			;8059
	ld a,a			;805a
	ccf			;805b
	rra			;805c
	ret p			;805d
	ret m			;805e
	call m,0f0feh		;805f
	ld bc,00005h		;8062
l8065h:
	add a,h			;8065
	cp 07dh			;8066
	ret po			;8068
	rst 38h			;8069
	ld b,0f0h		;806a
	inc bc			;806c
	ret m			;806d
l806eh:
	ld (bc),a		;806e
	ret p			;806f
	adc a,b			;8070
	rra			;8071
	ccf			;8072
	ccf			;8073
	rst 38h			;8074
	nop			;8075
	ret p			;8076
	call m,005c3h		;8077
	rst 38h			;807a
	add a,a			;807b
	rra			;807c
	inc bc			;807d
	nop			;807e
	call m,0320eh		;807f
	cp 003h			;8082
	ld a,a			;8084
	inc bc			;8085
	ccf			;8086
sub_8087h:
	xor d			;8087
sub_8088h:
	rra			;8088
	jp 03f0fh		;8089
	jr nc,$-62		;808c
	add a,b			;808e
	nop			;808f
	nop			;8090
	rlca			;8091
	ei			;8092
	ret m			;8093
	call m,0fce0h		;8094
	ret m			;8097
	ret po			;8098
	rst 38h			;8099
	nop			;809a
	ret nz			;809b
	ret po			;809c
	ret po			;809d
	call m,0e0f8h		;809e
	nop			;80a1
	ret nz			;80a2
	ret nz			;80a3
	rlca			;80a4
	ld bc,00301h		;80a5
	rlca			;80a8
	nop			;80a9
	ret po			;80aa
	ret po			;80ab
	jr c,l806eh		;80ac
	nop			;80ae
	nop			;80af
	cp 007h			;80b0
	dec b			;80b2
	nop			;80b3
	add a,d			;80b4
	ld a,a			;80b5
	rra			;80b6
	inc bc			;80b7
	ret p			;80b8
	inc bc			;80b9
	ret m			;80ba
	inc bc			;80bb
	call m,0f28eh		;80bc
	jp po,l80c2h		;80bf
l80c2h:
	cp 0fch			;80c2
	ret p			;80c4
	nop			;80c5
	nop			;80c6
	ret p			;80c7
	ld a,a			;80c8
	inc bc			;80c9
	ccf			;80ca
	rrca			;80cb
	inc b			;80cc
	inc bc			;80cd
	adc a,b			;80ce
	ld bc,03f07h		;80cf
	rra			;80d2
	rlca			;80d3
	nop			;80d4
	ret po			;80d5
	jp 0f805h		;80d6
	adc a,b			;80d9
	rst 28h			;80da
	rrca			;80db
	rlca			;80dc
	inc bc			;80dd
	ld de,l8cf8h		;80de
	ld b,000h		;80e1
	ld (bc),a		;80e3
	djnz l80e8h		;80e4
	ret po			;80e6
	ld (bc),a		;80e7
l80e8h:
	call po,04307h		;80e8
	ld h,a			;80eb
	ld (0310ch),a		;80ec
	rrca			;80ef
	ld b,b			;80f0
	inc b			;80f1
	ld b,e			;80f2
	dec b			;80f3
	ld (04318h),a		;80f4
	ld b,0e4h		;80f7
	ld c,d			;80f9
	ld b,e			;80fa
	ld (bc),a		;80fb
	ld c,081h		;80fc
sub_80feh:
	call po,04308h		;80fe
	inc bc			;8101
l8102h:
	call po,04303h		;8102
	add a,(hl)		;8105
	ld (03221h),a		;8106
	ld b,e			;8109
	ld (00421h),a		;810a
	pop af			;810d
	add a,e			;810e
l810fh:
	jp p,042e2h		;810f
	rlca			;8112
	ld b,e			;8113
	rlca			;8114
	ld (0310bh),a		;8115
	ex af,af'		;8118
	ld (02117h),a		;8119
	ld b,0f1h		;811c
	add hl,bc		;811e
	ld hl,0f106h		;811f
	ld a,(bc)		;8122
	ld (de),a		;8123
	inc b			;8124
	pop af			;8125
	add a,c			;8126
	ld (de),a		;8127
	dec c			;8128
	inc hl			;8129
	ld a,(bc)		;812a
	jr nz,l812fh		;812b
	ld l,002h		;812d
l812fh:
	ld b,d			;812f
	add a,h			;8130
	ld (04242h),a		;8131
	ld hl,01409h		;8134
	ld (bc),a		;8137
	ld b,e			;8138
	ld (bc),a		;8139
	ex (sp),hl		;813a
	inc b			;813b
	call po,02302h		;813c
	ld (bc),a		;813f
	pop hl			;8140
	inc b			;8141
	call po,04303h		;8142
	ld (bc),a		;8145
	ex (sp),hl		;8146
	ld (bc),a		;8147
	call po,04303h		;8148
	add a,e			;814b
	call po,04343h		;814c
	ex af,af'		;814f
	ld (0e281h),a		;8150
	inc bc			;8153
	ret po			;8154
	dec b			;8155
	call po,04205h		;8156
	inc b			;8159
	ld (02103h),a		;815a
	add a,d			;815d
	ld (00421h),a		;815e
	rra			;8161
	ld (bc),a		;8162
	di			;8163
	dec b			;8164
	ld (02103h),a		;8165
	adc a,c			;8168
	ld (0f441h),a		;8169
	call p,02121h		;816c
	cpl			;816f
	cpl			;8170
	ld hl,0f106h		;8171
	add a,c			;8174
	di			;8175
	ld b,032h		;8176
	ld b,031h		;8178
	inc bc			;817a
	ret po			;817b
	inc bc			;817c
	call po,04309h		;817d
	add a,l			;8180
	ld (0f1f1h),a		;8181
	ret p			;8184
	djnz l818eh		;8185
	jr nz,l818ch		;8187
	jp po,04281h		;8189
l818ch:
	rlca			;818c
	ld b,e			;818d
l818eh:
	ld (bc),a		;818e
	ld (04002h),a		;818f
	add a,l			;8192
	ld b,e			;8193
	ld (01f21h),a		;8194
	jp p,02305h		;8197
l819ah:
	add a,a			;819a
	inc de			;819b
	ld hl,02f21h		;819c
	ld c,00eh		;819f
	call po,0430ah		;81a1
	add a,h			;81a4
	jr nc,l819ah		;81a5
	di			;81a7
	ld b,b			;81a8
	ld a,(bc)		;81a9
	ld b,e			;81aa
	ld b,0e4h		;81ab
	ld (bc),a		;81ad
	ld b,e			;81ae
	add a,e			;81af
	ld b,d			;81b0
	pop hl			;81b1
	pop hl			;81b2
	inc b			;81b3
	call po,0438ah		;81b4
	ld b,d			;81b7
	pop hl			;81b8
	pop hl			;81b9
	call po,0f1e4h		;81ba
	pop af			;81bd
	ld bc,003f0h		;81be
	ret po			;81c1
	inc bc			;81c2
	ld b,b			;81c3
	add a,c			;81c4
	ld a,004h		;81c5
	call po,04307h		;81c7
	dec b			;81ca
	ld (03102h),a		;81cb
	ld (bc),a		;81ce
	ld hl,02f81h		;81cf
	inc b			;81d2
	ld b,d			;81d3
	add a,c			;81d4
	ld b,e			;81d5
	inc bc			;81d6
	ld (04003h),a		;81d7
	ld (bc),a		;81da
	ld b,e			;81db
	inc bc			;81dc
	ld (04304h),a		;81dd
	ld (bc),a		;81e0
	ex (sp),hl		;81e1
	ld (bc),a		;81e2
	call po,03202h		;81e3
	add a,(hl)		;81e6
	ld hl,04331h		;81e7
	ld (0ff21h),a		;81ea
	dec b			;81ed
	ld hl,0f103h		;81ee
	nop			;81f1
	ld b,000h		;81f2
	add a,d			;81f4
	inc bc			;81f5
	rrca			;81f6
	inc bc			;81f7
	nop			;81f8
	add a,l			;81f9
	inc bc			;81fa
	ccf			;81fb
	rst 38h			;81fc
	rst 38h			;81fd
	call m,00004h		;81fe
	ld (bc),a		;8201
	ld bc,00382h		;8202
	rlca			;8205
	inc b			;8206
	nop			;8207
	add a,h			;8208
	ret po			;8209
	call m,0e0f8h		;820a
	inc bc			;820d
	nop			;820e
	add a,d			;820f
	inc bc			;8210
	ccf			;8211
	inc bc			;8212
	rst 38h			;8213
	dec b			;8214
	nop			;8215
	inc bc			;8216
	rst 38h			;8217
	ld b,000h		;8218
	add a,d			;821a
	ret po			;821b
	call m,00003h		;821c
	add a,d			;821f
	ret nz			;8220
	ret m			;8221
	inc bc			;8222
	rst 38h			;8223
	adc a,b			;8224
	nop			;8225
	add a,b			;8226
	ret nz			;8227
	ret po			;8228
	ret p			;8229
	ret m			;822a
	call m,004feh		;822b
	nop			;822e
	inc bc			;822f
	add a,b			;8230
	inc bc			;8231
l8232h:
	ret nz			;8232
	inc bc			;8233
	ret po			;8234
	inc bc			;8235
	ret p			;8236
	adc a,b			;8237
	ret nz			;8238
	call m,0c0f0h		;8239
	nop			;823c
	nop			;823d
	add a,b			;823e
	add a,b			;823f
	inc b			;8240
	nop			;8241
	add a,(hl)		;8242
	ret p			;8243
	rst 38h			;8244
	rra			;8245
	inc bc			;8246
	add a,b			;8247
	ret nz			;8248
	inc bc			;8249
	ret po			;824a
	sub b			;824b
	ret p			;824c
	call p,007f6h		;824d
	ld a,a			;8250
	ret p			;8251
	nop			;8252
	ret po			;8253
	call m,0e0feh		;8254
	rlca			;8257
	ld a,a			;8258
	ret p			;8259
	nop			;825a
	rst 38h			;825b
	inc bc			;825c
	ret p			;825d
	inc b			;825e
	rst 38h			;825f
	sbc a,(hl)		;8260
l8261h:
	ld a,a			;8261
	rrca			;8262
	call m,0f6fdh		;8263
	rrca			;8266
	rrca			;8267
	rra			;8268
	rra			;8269
	ccf			;826a
	ccf			;826b
	ld a,a			;826c
	nop			;826d
	ret po			;826e
	ret po			;826f
	jr c,l8232h		;8270
	ret p			;8272
	call m,0c0f9h		;8273
	cp 00fh			;8276
	ld a,a			;8278
	inc bc			;8279
	rra			;827a
	inc bc			;827b
	add a,b			;827c
	add a,b			;827d
	ret p			;827e
	inc b			;827f
	rst 38h			;8280
	ld (bc),a		;8281
	nop			;8282
	or c			;8283
	add a,e			;8284
	inc c			;8285
	nop			;8286
	ret m			;8287
	rst 0			;8288
	ccf			;8289
	rra			;828a
	rlca			;828b
	inc bc			;828c
	inc bc			;828d
	rst 38h			;828e
	ret p			;828f
	rlca			;8290
	ccf			;8291
	rra			;8292
	rlca			;8293
	inc bc			;8294
	inc bc			;8295
	rst 38h			;8296
	ret p			;8297
	rlca			;8298
	ccf			;8299
	rra			;829a
	rlca			;829b
	rlca			;829c
	rrca			;829d
	rra			;829e
	ccf			;829f
	ld a,a			;82a0
	ld a,a			;82a1
	rst 38h			;82a2
	rlca			;82a3
	rlca			;82a4
	rrca			;82a5
	rra			;82a6
	ccf			;82a7
	ld a,a			;82a8
	ld a,a			;82a9
	ret m			;82aa
	ret m			;82ab
	nop			;82ac
	ret nz			;82ad
	ret nz			;82ae
	ret m			;82af
	ret m			;82b0
	call m,0fffeh		;82b1
	call m,0fe03h		;82b4
	inc b			;82b7
	rst 38h			;82b8
	inc bc			;82b9
	ret p			;82ba
	inc bc			;82bb
	ret m			;82bc
	ld (bc),a		;82bd
	call m,sub_8088h	;82be
	ret nz			;82c1
	ret po			;82c2
	ret p			;82c3
	ret m			;82c4
	call m,0fffeh		;82c5
	nop			;82c8
	rrca			;82c9
	ret po			;82ca
	add a,c			;82cb
	call po,0e007h		;82cc
	dec b			;82cf
	ld b,b			;82d0
	ld (bc),a		;82d1
	ret po			;82d2
	ld (bc),a		;82d3
	call po,0e005h		;82d4
	add hl,sp		;82d7
	ld b,b			;82d8
	add a,c			;82d9
	ret nc			;82da
	dec b			;82db
	add a,b			;82dc
	ld (bc),a		;82dd
	ld b,b			;82de
	ld (bc),a		;82df
	ld b,e			;82e0
	ex af,af'		;82e1
	jr nc,$+4		;82e2
	ex (sp),hl		;82e4
	ld b,0e4h		;82e5
	ld (bc),a		;82e7
	ex (sp),hl		;82e8
	inc b			;82e9
	call po,04382h		;82ea
	ld (04306h),a		;82ed
	ld (bc),a		;82f0
	ld (03081h),a		;82f1
	inc b			;82f4
	ld (03103h),a		;82f5
	ld (bc),a		;82f8
	ld b,b			;82f9
	adc a,(hl)		;82fa
	ld a,0e4h		;82fb
	call po,03243h		;82fd
	ld (04040h),a		;8300
	ld b,e			;8303
	ld (02132h),a		;8304
	ld hl,00531h		;8307
	inc (hl)		;830a
	ld (bc),a		;830b
	ld hl,0ff8eh		;830c
	ld b,b			;830f
	call po,043e4h		;8310
	ld b,e			;8313
	jp po,0e4e4h		;8314
	ret po			;8317
	ld c,(hl)		;8318
	ld c,(hl)		;8319
	ld b,e			;831a
	ex (sp),hl		;831b
	inc bc			;831c
	call po,0e08ah		;831d
	ld c,(hl)		;8320
	ld c,(hl)		;8321
	ld b,e			;8322
	ex (sp),hl		;8323
	jp po,0e4e4h		;8324
	ld b,b			;8327
	jr nc,l832fh		;8328
	ret po			;832a
	add a,e			;832b
	call po,03040h		;832c
l832fh:
	inc b			;832f
	ret po			;8330
	add a,(hl)		;8331
	call po,0f143h		;8332
	pop af			;8335
	rrca			;8336
	rrca			;8337
	inc e			;8338
	ld (bc),a		;8339
	nop			;833a
	adc a,l			;833b
	ret p			;833c
	ret po			;833d
	ret nz			;833e
	add a,b			;833f
	nop			;8340
	nop			;8341
	cp 0fch			;8342
	ret m			;8344
	ret p			;8345
	ret po			;8346
	ret nz			;8347
	add a,b			;8348
	ld b,000h		;8349
	and d			;834b
	cp 0fch			;834c
	ret m			;834e
	ret p			;834f
	ret po			;8350
	ret nz			;8351
	add a,b			;8352
	nop			;8353
	nop			;8354
	ld bc,00003h		;8355
	ret p			;8358
	nop			;8359
	rrca			;835a
	rrca			;835b
	ld a,a			;835c
	inc bc			;835d
	cp 0fch			;835e
	ret m			;8360
	ret p			;8361
	ret po			;8362
	ret nz			;8363
	add a,b			;8364
	ret po			;8365
	call m,0e0feh		;8366
	cp a			;8369
	rst 18h			;836a
	rst 28h			;836b
	xor 0ech		;836c
	inc bc			;836e
	ret p			;836f
	adc a,h			;8370
	ret nz			;8371
	add a,b			;8372
	nop			;8373
	nop			;8374
	cp 003h			;8375
	ret m			;8377
	rrca			;8378
	rra			;8379
	ccf			;837a
	nop			;837b
	nop			;837c
	inc bc			;837d
	rst 38h			;837e
	add a,d			;837f
	rlca			;8380
l8381h:
	rrca			;8381
sub_8382h:
	dec c			;8382
	rst 38h			;8383
	and d			;8384
	ret p			;8385
	rrca			;8386
	ret m			;8387
	ret p			;8388
	ret p			;8389
	ret po			;838a
	ret po			;838b
	pop bc			;838c
	pop bc			;838d
	add a,e			;838e
	daa			;838f
	ld h,d			;8390
	ld b,(hl)		;8391
	call nz,sub_888ch	;8392
	add hl,de		;8395
	ld de,03efeh		;8396
	ld h,d			;8399
	ld b,(hl)		;839a
	add a,08eh		;839b
	adc a,(hl)		;839d
	ld e,080h		;839e
	jp 0fcffh		;83a0
	ret p			;83a3
	ret nz			;83a4
	add a,b			;83a5
	cp 003h			;83a6
	rst 38h			;83a8
	adc a,c			;83a9
	cp 0f1h			;83aa
	rrca			;83ac
	rst 38h			;83ad
	rst 38h			;83ae
	rlca			;83af
	rst 20h			;83b0
	sbc a,a			;83b1
	ld a,a			;83b2
	inc b			;83b3
	rst 38h			;83b4
	adc a,b			;83b5
	nop			;83b6
	ret p			;83b7
	ccf			;83b8
	rlca			;83b9
	call m,0f0f8h		;83ba
	ret po			;83bd
	inc bc			;83be
	nop			;83bf
	add a,e			;83c0
	ld a,a			;83c1
	inc bc			;83c2
	ret p			;83c3
	inc bc			;83c4
	rst 38h			;83c5
	add a,a			;83c6
	nop			;83c7
	rlca			;83c8
	ret po			;83c9
	cp 09fh			;83ca
	bit 1,c			;83cc
	inc b			;83ce
	rrca			;83cf
	inc bc			;83d0
	nop			;83d1
	adc a,h			;83d2
	rlca			;83d3
	rst 38h			;83d4
	ret p			;83d5
	inc bc			;83d6
	ret po			;83d7
	cp 003h			;83d8
	rlca			;83da
	rrca			;83db
	rra			;83dc
	ccf			;83dd
	ld a,a			;83de
	inc bc			;83df
	rst 38h			;83e0
	add a,e			;83e1
	inc c			;83e2
	ld c,a			;83e3
	ret nz			;83e4
	inc b			;83e5
	nop			;83e6
	add a,l			;83e7
	call m,0f0f0h		;83e8
	rst 18h			;83eb
	rst 18h			;83ec
	inc bc			;83ed
	rst 28h			;83ee
	inc bc			;83ef
	rst 30h			;83f0
	rlca			;83f1
	rst 38h			;83f2
	add a,c			;83f3
	ret m			;83f4
	inc b			;83f5
	rst 38h			;83f6
	add a,(hl)		;83f7
	call m,000e0h		;83f8
	nop			;83fb
	ret po			;83fc
	call m,0ff04h		;83fd
	cp h			;8400
	ret p			;8401
	nop			;8402
	rlca			;8403
	ld b,0f7h		;8404
	rst 30h			;8406
	rst 8			;8407
	rra			;8408
	ccf			;8409
	ccf			;840a
	rra			;840b
	ccf			;840c
	ld a,a			;840d
	and 0c6h		;840e
	adc a,(hl)		;8410
	adc a,(hl)		;8411
	ld e,000h		;8412
	ret nz			;8414
	ld a,b			;8415
	ccf			;8416
	jr c,l8435h		;8417
	ld c,0ffh		;8419
	nop			;841b
	inc bc			;841c
	ld e,0f0h		;841d
	inc bc			;841f
	ld a,(hl)		;8420
	ccf			;8421
	rst 38h			;8422
	nop			;8423
	ret nz			;8424
	jr c,l842eh		;8425
	nop			;8427
	nop			;8428
	rlca			;8429
	ccf			;842a
	rst 38h			;842b
	ret nz			;842c
	nop			;842d
l842eh:
	ret p			;842e
	nop			;842f
	nop			;8430
	rst 38h			;8431
	rst 38h			;8432
	nop			;8433
	ret nz			;8434
l8435h:
	jr c,l843eh		;8435
	nop			;8437
	nop			;8438
	rst 38h			;8439
	rst 38h			;843a
	add a,b			;843b
	rst 38h			;843c
	inc bc			;843d
l843eh:
	add a,b			;843e
	add a,e			;843f
	rst 38h			;8440
	add a,b			;8441
	add a,b			;8442
l8443h:
	inc bc			;8443
	rst 30h			;8444
	sbc a,(hl)		;8445
	or 0c5h			;8446
	djnz $+65		;8448
	ld h,b			;844a
	rra			;844b
	ccf			;844c
	ld a,a			;844d
	cp 0feh			;844e
	nop			;8450
	nop			;8451
	rst 38h			;8452
	add a,c			;8453
	rrca			;8454
	ld a,a			;8455
	ld sp,0c763h		;8456
	ccf			;8459
	rst 0			;845a
	call z,01989h		;845b
	ld sp,0c763h		;845e
	ccf			;8461
	rst 0			;8462
	ld b,h			;8463
	rlca			;8464
	call nz,04481h		;8465
	inc b			;8468
	call nz,0fe84h		;8469
	call m,080f8h		;846c
	ld b,0f0h		;846f
	add a,(hl)		;8471
	nop			;8472
	ret m			;8473
	rlca			;8474
l8475h:
	xor a			;8475
	xor d			;8476
	xor d			;8477
	inc bc			;8478
	rst 38h			;8479
	add a,h			;847a
	ld c,e			;847b
	xor a			;847c
	cp a			;847d
	cp a			;847e
	inc b			;847f
	rst 38h			;8480
	xor b			;8481
	rrca			;8482
	rra			;8483
	ccf			;8484
	ld a,a			;8485
	rst 38h			;8486
	rst 38h			;8487
	cp 0fch			;8488
	call m,0c0f0h		;848a
	inc bc			;848d
	rrca			;848e
	ccf			;848f
	rst 38h			;8490
	rst 38h			;8491
	rlca			;8492
	jr c,l8475h		;8493
	ret nz			;8495
	ret po			;8496
	rst 20h			;8497
	ret p			;8498
	ret p			;8499
	ccf			;849a
	rrca			;849b
	inc bc			;849c
	ret nz			;849d
	ret p			;849e
	call m,0ffffh		;849f
	ret p			;84a2
	rrca			;84a3
	rst 38h			;84a4
	xor e			;84a5
	rst 38h			;84a6
	defb 0fdh,0f4h,0d2h ;illegal sequence	;84a7
	dec b			;84aa
	ret p			;84ab
	adc a,e			;84ac
	nop			;84ad
	ld d,l			;84ae
	ld d,l			;84af
	add a,e			;84b0
	add a,c			;84b1
	add a,c			;84b2
	jp 07f47h		;84b3
	add a,a			;84b6
	add a,a			;84b7
	inc bc			;84b8
	xor d			;84b9
	add a,(hl)		;84ba
	ld hl,(05fffh)		;84bb
	ld a,a			;84be
	rst 38h			;84bf
	rst 38h			;84c0
	inc b			;84c1
	xor d			;84c2
	inc bc			;84c3
	rst 38h			;84c4
	add a,d			;84c5
	ret m			;84c6
	rst 38h			;84c7
	inc bc			;84c8
	xor d			;84c9
	add a,e			;84ca
	ld hl,(0ffffh)		;84cb
	ex af,af'		;84ce
	call m,07f87h		;84cf
	ccf			;84d2
	rra			;84d3
	rrca			;84d4
	rlca			;84d5
	inc bc			;84d6
	ld bc,00007h		;84d7
	adc a,(hl)		;84da
	ret nz			;84db
	ret m			;84dc
	rst 38h			;84dd
	rst 38h			;84de
	nop			;84df
	ret po			;84e0
	cp 09fh			;84e1
	bit 1,c			;84e3
	ld bc,00f01h		;84e5
	ld a,a			;84e8
	inc b			;84e9
	rst 38h			;84ea
	adc a,b			;84eb
	ccf			;84ec
	ld a,a			;84ed
	rst 38h			;84ee
	rst 38h			;84ef
	ld bc,00703h		;84f0
	rrca			;84f3
	dec b			;84f4
	nop			;84f5
	add a,h			;84f6
	inc bc			;84f7
	ld e,0f0h		;84f8
	ret nz			;84fa
	dec b			;84fb
	nop			;84fc
	add a,d			;84fd
	rlca			;84fe
	ccf			;84ff
	inc bc			;8500
	nop			;8501
	sub d			;8502
	call m,0ff1fh		;8503
	rst 38h			;8506
	ret m			;8507
	nop			;8508
	inc bc			;8509
	rra			;850a
	rst 38h			;850b
	ret m			;850c
	pop bc			;850d
	rrca			;850e
	ret m			;850f
	rrca			;8510
	inc bc			;8511
	dec c			;8512
	dec (hl)		;8513
	jp pe,l8a03h		;8514
	add a,h			;8517
	ex (sp),hl		;8518
	pop af			;8519
	ret m			;851a
	rrca			;851b
	inc bc			;851c
	rst 38h			;851d
	adc a,a			;851e
	nop			;851f
	ld h,e			;8520
	or c			;8521
	in a,(0ffh)		;8522
	rst 38h			;8524
	rrca			;8525
	nop			;8526
	rst 38h			;8527
	inc bc			;8528
	ret nz			;8529
	ret p			;852a
	call m,0f0c0h		;852b
	add hl,bc		;852e
	rrca			;852f
	sbc a,h			;8530
	rst 38h			;8531
	nop			;8532
	rrca			;8533
	rrca			;8534
	ld a,a			;8535
	inc bc			;8536
	ret p			;8537
	rst 38h			;8538
	rst 38h			;8539
	add a,d			;853a
	rlca			;853b
	rst 38h			;853c
	rst 38h			;853d
	nop			;853e
	nop			;853f
	rst 38h			;8540
	nop			;8541
	rst 38h			;8542
	call m,01fe3h		;8543
	rst 38h			;8546
	nop			;8547
	nop			;8548
	rst 38h			;8549
	inc sp			;854a
	rst 38h			;854b
	rst 38h			;854c
	inc b			;854d
	nop			;854e
	adc a,c			;854f
	ret m			;8550
	ret nz			;8551
	ret po			;8552
	ret p			;8553
	ret m			;8554
	inc a			;8555
	inc bc			;8556
	inc bc			;8557
	rst 38h			;8558
	inc bc			;8559
	ret m			;855a
	inc bc			;855b
	inc b			;855c
	ld (bc),a		;855d
	rlca			;855e
	add a,c			;855f
	ld bc,00f05h		;8560
	inc bc			;8563
	nop			;8564
	adc a,a			;8565
	rrca			;8566
	rst 38h			;8567
	ret p			;8568
	nop			;8569
	ret p			;856a
	nop			;856b
	nop			;856c
	rst 30h			;856d
	ret p			;856e
	ret p			;856f
	nop			;8570
	nop			;8571
	cp 08eh			;8572
	add a,(hl)		;8574
	inc b			;8575
	ret po			;8576
	xor h			;8577
	ret m			;8578
	pop bc			;8579
	rrca			;857a
	ret m			;857b
	cp 0c2h			;857c
	ld bc,0f0fch		;857e
	jp 0f01fh		;8581
	pop bc			;8584
	pop bc			;8585
	nop			;8586
	cp 0f8h			;8587
	add a,e			;8589
	ld a,a			;858a
	nop			;858b
	ret nz			;858c
	inc bc			;858d
	rrca			;858e
	inc a			;858f
	ret p			;8590
	ret nz			;8591
	add a,b			;8592
	cp 0f1h			;8593
	rst 0			;8595
	ld a,h			;8596
	nop			;8597
	add a,b			;8598
	pop bc			;8599
	rst 38h			;859a
	rst 38h			;859b
	ret p			;859c
	call m,0c1c7h		;859d
	ld b,b			;85a0
	ld b,b			;85a1
	ld h,b			;85a2
	pop af			;85a3
	nop			;85a4
	ld b,0f4h		;85a5
	dec c			;85a7
	ld b,e			;85a8
	add hl,bc		;85a9
	ld (04283h),a		;85aa
	ld (00332h),a		;85ad
	ld hl,03283h		;85b0
	ld hl,00521h		;85b3
	call p,05482h		;85b6
	add a,h			;85b9
	inc b			;85ba
	call po,0320ch		;85bb
	add a,e			;85be
	ld hl,021f2h		;85bf
	inc b			;85c2
	jp p,0f12dh		;85c3
	inc bc			;85c6
	push af			;85c7
	inc b			;85c8
	defb 0fdh,081h,0d8h ;illegal sequence	;85c9
	ld (de),a		;85cc
	pop af			;85cd
	ld (bc),a		;85ce
	di			;85cf
sub_85d0h:
	ld b,032h		;85d0
	inc bc			;85d2
	ld hl,0f105h		;85d3
	add a,e			;85d6
	ld hl,0f1f1h		;85d7
	inc bc			;85da
	push af			;85db
	add a,e			;85dc
	ld hl,02132h		;85dd
	ex af,af'		;85e0
	rra			;85e1
	add a,e			;85e2
	jp p,03221h		;85e3
	ex af,af'		;85e6
	ld b,d			;85e7
	add a,d			;85e8
	ld b,e			;85e9
	ld (0f105h),a		;85ea
	add a,e			;85ed
	ld hl,04332h		;85ee
	ld (00632h),hl		;85f1
	ld hl,0f203h		;85f4
	ex af,af'		;85f7
	pop af			;85f8
	ld (bc),a		;85f9
	di			;85fa
	add a,c			;85fb
	jp p,0f105h		;85fc
	add a,e			;85ff
	jp p,0f231h		;8600
	dec b			;8603
	pop af			;8604
	inc bc			;8605
	jp p,03282h		;8606
	ld b,d			;8609
	inc bc			;860a
	call po,04302h		;860b
	ld (bc),a		;860e
	ld (de),a		;860f
	ld b,0f1h		;8610
	ld (bc),a		;8612
	ld (04302h),a		;8613
	ld (bc),a		;8616
	call po,04381h		;8617
	inc b			;861a
	ld (02105h),a		;861b
	inc bc			;861e
	pop af			;861f
	inc bc			;8620
	ret po			;8621
	add a,e			;8622
	call po,04343h		;8623
	dec b			;8626
	jp p,0f89ah		;8627
	defb 0fdh,0fdh,0f5h ;illegal sequence	;862a
	call m,0f8f8h		;862d
	defb 0fdh,0f8h,0fdh ;illegal sequence	;8630
	defb 0fdh,0f5h,0fch ;illegal sequence	;8633
	defb 0fdh,0fdh,0f8h ;illegal sequence	;8636
	ret m			;8639
	cp 0feh			;863a
	ret m			;863c
	cp 0fdh			;863d
	defb 0fdh,0f8h,0f8h ;illegal sequence	;863f
	defb 0fdh,004h,0f4h ;illegal sequence	;8642
	ld (bc),a		;8645
	ld b,e			;8646
	ld (bc),a		;8647
	ld (02181h),a		;8648
	inc b			;864b
	rra			;864c
	add a,d			;864d
	push af			;864e
	defb 0fdh,005h,0f5h ;illegal sequence	;864f
	ld (bc),a		;8652
	defb 0fdh,005h,0f5h ;illegal sequence	;8653
	add a,d			;8656
	ld b,c			;8657
	ld b,d			;8658
	ld b,043h		;8659
	inc bc			;865b
	ld hl,0f106h		;865c
	add a,h			;865f
	jp p,03221h		;8660
	ld sp,02106h		;8663
	ex af,af'		;8666
	pop af			;8667
	dec b			;8668
	push af			;8669
	add a,e			;866a
	ld (02121h),a		;866b
	inc bc			;866e
	rra			;866f
	add a,c			;8670
l8671h:
	defb 0fdh,003h,0f5h ;illegal sequence	;8671
	ld (bc),a		;8674
	defb 0fdh,003h,0f5h ;illegal sequence	;8675
	add a,a			;8678
	ld e,l			;8679
	defb 0fdh,0f8h,0fdh ;illegal sequence	;867a
	push af			;867d
	push af			;867e
	defb 0fdh,003h,0f5h ;illegal sequence	;867f
	add a,e			;8682
	defb 0fdh,0f8h,0fdh ;illegal sequence	;8683
	inc b			;8686
	push af			;8687
	ld (bc),a		;8688
	pop af			;8689
	add a,e			;868a
	defb 0fdh,0f8h,0fdh ;illegal sequence	;868b
	inc bc			;868e
	push af			;868f
	add a,(hl)		;8690
	ld sp,041e1h		;8691
	ld sp,03121h		;8694
	dec d			;8697
	ld hl,0f102h		;8698
	inc bc			;869b
	push af			;869c
	add a,c			;869d
	di			;869e
	dec bc			;869f
	inc hl			;86a0
	dec bc			;86a1
	jp p,0f581h		;86a2
	ld b,032h		;86a5
	dec b			;86a7
	jp p,02181h		;86a8
	inc bc			;86ab
	jp p,0f105h		;86ac
	ld (bc),a		;86af
	defb 0fdh,002h,0f5h ;illegal sequence	;86b0
	add a,c			;86b3
	ld (0f203h),a		;86b4
	adc a,b			;86b7
	defb 0fdh,0f8h,0fdh ;illegal sequence	;86b8
	push af			;86bb
	ld sp,hl		;86bc
	ei			;86bd
	ld sp,hl		;86be
	jp p,01f04h		;86bf
	add a,d			;86c2
	ld sp,hl		;86c3
	or 003h			;86c4
	call m,0f104h		;86c6
	inc bc			;86c9
	ld hl,0328ah		;86ca
	ld hl,03221h		;86cd
	ld c,(hl)		;86d0
	inc (hl)		;86d1
	inc (hl)		;86d2
	inc hl			;86d3
	inc hl			;86d4
	ld (de),a		;86d5
	inc bc			;86d6
	pop af			;86d7
	add a,h			;86d8
	ld hl,02132h		;86d9
	ld hl,0f106h		;86dc
	ld (bc),a		;86df
	ld hl,01f07h		;86e0
	ld (bc),a		;86e3
	inc hl			;86e4
	ld (bc),a		;86e5
	call po,0f102h		;86e6
	ld (bc),a		;86e9
	ld hl,01f04h		;86ea
	dec b			;86ed
	ld hl,0f103h		;86ee
	inc bc			;86f1
	ld hl,0f105h		;86f2
	add a,l			;86f5
	ld b,d			;86f6
	jp po,03243h		;86f7
	ld hl,01f04h		;86fa
	add a,c			;86fd
	call p,03203h		;86fe
	ld (bc),a		;8701
	ld hl,03f02h		;8702
	add a,c			;8705
	ld sp,01f03h		;8706
	inc bc			;8709
	push af			;870a
	ld (bc),a		;870b
	push bc			;870c
	ld (bc),a		;870d
	rst 8			;870e
	ld (bc),a		;870f
	defb 0fdh,003h,0f5h ;illegal sequence	;8710
	ld (bc),a		;8713
	defb 0fdh,004h,0d8h ;illegal sequence	;8714
	add a,h			;8717
	push de			;8718
	push af			;8719
	ld e,l			;871a
	ld e,l			;871b
	inc bc			;871c
	ret c			;871d
	inc bc			;871e
	push de			;871f
	inc bc			;8720
	push af			;8721
	add a,e			;8722
	ret m			;8723
	defb 0fdh,0fdh,003h ;illegal sequence	;8724
	ret c			;8727
	ld (bc),a		;8728
	push de			;8729
	ld b,0f5h		;872a
	add a,e			;872c
	ret m			;872d
	defb 0fdh,0fdh,003h ;illegal sequence	;872e
	ld e,l			;8731
	nop			;8732
	rst 38h			;8733
	cp 0f8h			;8734
	cp 0fch			;8736
	pop af			;8738
	jp 0f80fh		;8739
	di			;873c
	defb 0edh ;next byte illegal after ed	;873d
	jp nc,0edd2h		;873e
	di			;8741
	rst 38h			;8742
	rst 38h			;8743
	ld bc,0fef8h		;8744
	call m,0c3f1h		;8747
	rrca			;874a
	ret m			;874b
	rrca			;874c
	rst 38h			;874d
	cp 086h			;874e
	inc bc			;8750
	inc bc			;8751
	ld bc,00ffch		;8752
	call m,0c0f0h		;8755
	ld a,a			;8758
	rst 38h			;8759
	rst 38h			;875a
	call m,00707h		;875b
	ld b,e			;875e
	ld b,e			;875f
	ld h,c			;8760
	ld b,b			;8761
	ld b,b			;8762
	ld h,b			;8763
	add a,b			;8764
	ld a,b			;8765
	rlca			;8766
	rst 38h			;8767
	rst 38h			;8768
	cp 08eh			;8769
	add a,(hl)		;876b
	ret c			;876c
	call pe,0f3efh		;876d
	call m,0ffffh		;8770
	ret m			;8773
	dec de			;8774
	scf			;8775
	rst 30h			;8776
	rst 8			;8777
	ccf			;8778
	ret m			;8779
	ex af,af'		;877a
	ret p			;877b
	call pe,0f3efh		;877c
	call m,0080fh		;877f
	rlca			;8782
	rlca			;8783
	ret z			;8784
	ex af,af'		;8785
	jr nc,$-62		;8786
	nop			;8788
	nop			;8789
	rrca			;878a
	ex af,af'		;878b
	xor d			;878c
	or (hl)			;878d
	ex (sp),ix		;878e
	rst 38h			;8790
	rra			;8791
	djnz l87a3h		;8792
	call pe,0f3efh		;8794
	call m,0f0ffh		;8797
	add a,b			;879a
	ld (hl),b		;879b
	scf			;879c
	rst 30h			;879d
	rst 8			;879e
	ccf			;879f
	rst 0			;87a0
	add a,b			;87a1
	rlca			;87a2
l87a3h:
	rlca			;87a3
	ret c			;87a4
	ret c			;87a5
	call pe,0f3efh		;87a6
	call m,sub_8087h	;87a9
	nop			;87ac
	nop			;87ad
	ld bc,00379h		;87ae
	inc bc			;87b1
	ld bc,0fc99h		;87b2
	ld a,03eh		;87b5
	rst 38h			;87b7
	cp 0f8h			;87b8
	add a,e			;87ba
	ld a,a			;87bb
	nop			;87bc
	nop			;87bd
	inc bc			;87be
	rrca			;87bf
	ccf			;87c0
	ld a,a			;87c1
	rst 38h			;87c2
	rst 38h			;87c3
	call m,00000h		;87c4
	cp h			;87c7
	cp h			;87c8
	sbc a,(hl)		;87c9
	ld b,b			;87ca
	ld b,b			;87cb
	ld h,b			;87cc
	dec b			;87cd
	nop			;87ce
	add a,l			;87cf
	ld bc,l8671h		;87d0
	ld h,b			;87d3
	ld b,b			;87d4
	inc bc			;87d5
	nop			;87d6
	adc a,e			;87d7
	ld bc,l8671h		;87d8
	ret po			;87db
	ret po			;87dc
	ret nz			;87dd
	add a,b			;87de
	add a,b			;87df
	ld bc,l8671h		;87e0
	rlca			;87e3
	nop			;87e4
	inc bc			;87e5
	ld bc,00304h		;87e6
sub_87e9h:
	ld (bc),a		;87e9
	ld bc,00007h		;87ea
	add a,d			;87ed
	rlca			;87ee
	ld bc,00006h		;87ef
	add a,l			;87f2
	rlca			;87f3
	nop			;87f4
	ret nz			;87f5
	ret nz			;87f6
	ret m			;87f7
	inc bc			;87f8
	rst 38h			;87f9
	sbc a,l			;87fa
	ld bc,0ffffh		;87fb
	ld a,a			;87fe
	ccf			;87ff
	rrca			;8800
	rlca			;8801
	rlca			;8802
	ld e,0ffh		;8803
	rst 38h			;8805
	ld a,a			;8806
	ccf			;8807
	rrca			;8808
	rlca			;8809
	rlca			;880a
	rra			;880b
	jp nc,04242h		;880c
	add a,d			;880f
	ret p			;8810
	ret po			;8811
	ret nz			;8812
	add a,b			;8813
	ret nz			;8814
	ret nz			;8815
	ret po			;8816
	ret po			;8817
	dec b			;8818
	nop			;8819
	xor e			;881a
	ret nz			;881b
	ld a,b			;881c
	ccf			;881d
	rrca			;881e
	rlca			;881f
	rlca			;8820
	rra			;8821
	rst 38h			;8822
	call m,0f1f8h		;8823
	inc e			;8826
	ret c			;8827
	ret nz			;8828
	ret nz			;8829
	call m,0f8fch		;882a
	pop af			;882d
	call m,0381ch		;882e
	ld (hl),b		;8831
	add a,b			;8832
	ret nz			;8833
	ret po			;8834
	ret p			;8835
	ret m			;8836
	call m,sub_80feh	;8837
	call m,0fcf8h		;883a
	ex (sp),hl		;883d
	ld a,h			;883e
	ld (hl),b		;883f
	nop			;8840
	nop			;8841
	add a,b			;8842
	ret nz			;8843
	ret po			;8844
	ret p			;8845
	inc b			;8846
	ret m			;8847
	adc a,e			;8848
	rrca			;8849
	rst 38h			;884a
	rst 38h			;884b
	nop			;884c
l884dh:
	inc bc			;884d
	ld a,(hl)		;884e
	ccf			;884f
	rst 38h			;8850
	rra			;8851
	jr nc,l88c4h		;8852
	inc bc			;8854
	ret p			;8855
	sbc a,e			;8856
	nop			;8857
	ret p			;8858
	rst 38h			;8859
	rst 38h			;885a
	nop			;885b
	nop			;885c
	ret p			;885d
	ccf			;885e
	nop			;885f
	ret p			;8860
	ld bc,00000h		;8861
	call m,0f0c0h		;8864
	rrca			;8867
	rrca			;8868
	ret m			;8869
	ex (sp),hl		;886a
	rst 0			;886b
	adc a,a			;886c
	ret po			;886d
	ret po			;886e
	cp 084h			;886f
	rst 38h			;8871
	inc bc			;8872
	nop			;8873
	add a,l			;8874
	ld (hl),b		;8875
	ret po			;8876
	ccf			;8877
	ld h,b			;8878
	rst 38h			;8879
	inc bc			;887a
	nop			;887b
	add a,h			;887c
	ld (hl),b		;887d
	ret po			;887e
	ccf			;887f
	ld h,e			;8880
	inc b			;8881
	ret po			;8882
	and l			;8883
	ret m			;8884
	ret nz			;8885
	add a,b			;8886
	rlca			;8887
	rlca			;8888
	pop af			;8889
	ex (sp),hl		;888a
	rst 0			;888b
sub_888ch:
	rst 0			;888c
	inc e			;888d
	ld c,0ffh		;888e
	rrca			;8890
	rst 38h			;8891
	call m,00fffh		;8892
	ccf			;8895
	nop			;8896
	ret p			;8897
	cp a			;8898
	rrca			;8899
	jp 03cf0h		;889a
	rra			;889d
	adc a,a			;889e
	rst 0			;889f
	rst 38h			;88a0
	rst 38h			;88a1
	add a,a			;88a2
	add a,l			;88a3
	add a,l			;88a4
	rst 38h			;88a5
	jp nz,0e0c2h		;88a6
	inc c			;88a9
	ret nz			;88aa
	inc bc			;88ab
	add a,b			;88ac
	add a,c			;88ad
l88aeh:
	ret po			;88ae
	inc c			;88af
	ret nz			;88b0
	inc bc			;88b1
	add a,b			;88b2
	ld (bc),a		;88b3
	rra			;88b4
	and (hl)		;88b5
	rrca			;88b6
	ccf			;88b7
	ld a,a			;88b8
	jr c,l8937h		;88b9
	jr c,$+1		;88bb
	rst 38h			;88bd
	rra			;88be
	inc bc			;88bf
	ret po			;88c0
	add a,b			;88c1
	add a,b			;88c2
	nop			;88c3
l88c4h:
	nop			;88c4
	inc bc			;88c5
	call m,07fe0h		;88c6
	jr c,$+126		;88c9
	jr c,l884dh		;88cb
	nop			;88cd
	nop			;88ce
	inc bc			;88cf
	ret po			;88d0
	add a,b			;88d1
	add a,b			;88d2
	nop			;88d3
	rst 38h			;88d4
	cp 07ch			;88d5
	nop			;88d7
	nop			;88d8
	ld a,b			;88d9
	nop			;88da
	add a,e			;88db
	ex af,af'		;88dc
	ret po			;88dd
	ld (bc),a		;88de
	dec de			;88df
	sbc a,(hl)		;88e0
	scf			;88e1
	rst 30h			;88e2
	rst 8			;88e3
	ccf			;88e4
	rst 38h			;88e5
	ret m			;88e6
	or (hl)			;88e7
	xor d			;88e8
	or (hl)			;88e9
	ex (sp),ix		;88ea
	rst 38h			;88ec
	add a,a			;88ed
	add a,b			;88ee
	xor d			;88ef
	or (hl)			;88f0
	ex (sp),ix		;88f1
	rst 38h			;88f3
	rst 38h			;88f4
	ret p			;88f5
	djnz l88aeh		;88f6
	ex (sp),ix		;88f8
	rst 38h			;88fa
	rst 38h			;88fb
	ret p			;88fc
	add a,b			;88fd
	ld (hl),b		;88fe
	inc bc			;88ff
	ret p			;8900
	dec b			;8901
	nop			;8902
	add a,l			;8903
	ret z			;8904
	ex af,af'		;8905
	jr nc,$-62		;8906
	nop			;8908
	inc bc			;8909
	cp 085h			;890a
	scf			;890c
	rst 30h			;890d
	rst 8			;890e
	ccf			;890f
	rst 38h			;8910
	inc bc			;8911
	cp 006h			;8912
	rrca			;8914
	sub (hl)		;8915
	rst 38h			;8916
	ret p			;8917
	call pe,0f3efh		;8918
	call m,0dde3h		;891b
	or (hl)			;891e
	xor d			;891f
	call pe,0f3efh		;8920
	call m,0e3ffh		;8923
	or (ix-004h)		;8926
	di			;8929
	rst 28h			;892a
	call pe,0d804h		;892b
	add a,h			;892e
	ccf			;892f
	rst 8			;8930
	rst 30h			;8931
	scf			;8932
	inc b			;8933
	dec de			;8934
	add a,l			;8935
	rst 38h			;8936
l8937h:
	call m,0eff3h		;8937
	call pe,0d803h		;893a
	add a,l			;893d
	rst 38h			;893e
	ccf			;893f
	rst 8			;8940
	rst 30h			;8941
	scf			;8942
	inc bc			;8943
	dec de			;8944
	adc a,h			;8945
	call pe,0f3efh		;8946
	call m,0ffffh		;8949
	ex (sp),hl		;894c
	defb 0ddh,03fh,0cfh ;illegal sequence	;894d
	rst 30h			;8950
	scf			;8951
	inc b			;8952
	dec de			;8953
	ld (bc),a		;8954
	rst 38h			;8955
	adc a,(hl)		;8956
	call m,0eff3h		;8957
	call pe,0d8d8h		;895a
	rst 38h			;895d
	rst 38h			;895e
	ccf			;895f
	rst 8			;8960
	rst 30h			;8961
	scf			;8962
	dec de			;8963
	dec de			;8964
	nop			;8965
	add a,c			;8966
	add a,b			;8967
	ld b,0d8h		;8968
	add a,(hl)		;896a
	push de			;896b
	jp p,0f3f3h		;896c
	jp p,003f2h		;896f
	pop af			;8972
	add a,c			;8973
	ret m			;8974
	ld b,0d8h		;8975
	add a,l			;8977
	push de			;8978
	pop af			;8979
	pop af			;897a
	push af			;897b
	push af			;897c
	inc bc			;897d
	defb 0fdh,082h,0d8h ;illegal sequence	;897e
	pop af			;8981
	inc bc			;8982
	defb 0fdh,003h,0d5h ;illegal sequence	;8983
	add a,(hl)		;8986
	ret c			;8987
	ld sp,0f51fh		;8988
	ld e,l			;898b
	ld e,l			;898c
	inc bc			;898d
	push af			;898e
	add a,d			;898f
	di			;8990
	ld sp,0f103h		;8991
	inc bc			;8994
	push af			;8995
	rlca			;8996
	pop af			;8997
	add a,c			;8998
	di			;8999
	dec b			;899a
	pop af			;899b
	ld (bc),a		;899c
	di			;899d
	add a,c			;899e
	ld sp,0f104h		;899f
	ld (bc),a		;89a2
	di			;89a3
	add a,c			;89a4
	ld sp,01f07h		;89a5
	ld (bc),a		;89a8
	di			;89a9
	add a,c			;89aa
	jp p,0f104h		;89ab
	ld (bc),a		;89ae
	di			;89af
	add a,c			;89b0
	ld sp,0f105h		;89b1
	ld (bc),a		;89b4
	di			;89b5
	add a,c			;89b6
	ld sp,0f104h		;89b7
	ld (bc),a		;89ba
	di			;89bb
	add a,e			;89bc
	ld sp,0f21fh		;89bd
	dec b			;89c0
	pop af			;89c1
	ld (bc),a		;89c2
	di			;89c3
	inc b			;89c4
	ld d,b			;89c5
	inc bc			;89c6
	defb 0fdh,084h ;add a,iyh	;89c7
	ret c			;89c9
	ld d,b			;89ca
	push de			;89cb
	push de			;89cc
	inc bc			;89cd
	ret c			;89ce
	ld (bc),a		;89cf
	push de			;89d0
	inc b			;89d1
	ret nc			;89d2
	inc bc			;89d3
	push de			;89d4
	add a,c			;89d5
	ret c			;89d6
	inc bc			;89d7
	ld d,b			;89d8
	ld (bc),a		;89d9
	push de			;89da
	inc bc			;89db
	push af			;89dc
	rlca			;89dd
	ld d,b			;89de
	add a,d			;89df
	push af			;89e0
	jr nc,l89e7h		;89e1
	jr nz,l89e7h		;89e3
	ld d,b			;89e5
	add a,e			;89e6
l89e7h:
	push af			;89e7
	ld sp,00310h		;89e8
	ret p			;89eb
	ld (bc),a		;89ec
	ld d,b			;89ed
	add a,c			;89ee
	push af			;89ef
	add hl,bc		;89f0
	or b			;89f1
	inc bc			;89f2
	sub b			;89f3
	ld (bc),a		;89f4
	ld h,b			;89f5
	add hl,bc		;89f6
	ret nz			;89f7
	add a,c			;89f8
	ret po			;89f9
	rlca			;89fa
	ret p			;89fb
	add a,e			;89fc
	ret po			;89fd
	pop af			;89fe
	pop af			;89ff
	dec b			;8a00
	rrca			;8a01
	add a,c			;8a02
l8a03h:
	or b			;8a03
	dec b			;8a04
	ret nz			;8a05
	add a,e			;8a06
	ret p			;8a07
	ld d,b			;8a08
	di			;8a09
	dec b			;8a0a
	ret nz			;8a0b
	adc a,(hl)		;8a0c
	ret p			;8a0d
	ld d,b			;8a0e
	cp 0f8h			;8a0f
	defb 0fdh,0f5h,0f5h ;illegal sequence	;8a11
	ret p			;8a14
	ret po			;8a15
	ret nc			;8a16
	ld d,b			;8a17
	ret po			;8a18
	add a,b			;8a19
	ret nc			;8a1a
	dec b			;8a1b
	ld d,b			;8a1c
	inc bc			;8a1d
	pop af			;8a1e
	and c			;8a1f
	ret p			;8a20
	ld d,b			;8a21
l8a22h:
	ret p			;8a22
	ld d,b			;8a23
	cp 0feh			;8a24
	jp p,0f4f3h		;8a26
	ld b,b			;8a29
	jr nc,l8a5ch		;8a2a
	djnz l8a22h		;8a2c
	call p,0f2f3h		;8a2e
	ret p			;8a31
	jr nz,$+50		;8a32
	ld b,b			;8a34
	jr nz,$+66		;8a35
	jr nc,$+34		;8a37
	djnz l8a5bh		;8a39
	djnz $+35		;8a3b
	call p,0f3f4h		;8a3d
	di			;8a40
	inc b			;8a41
	jr nc,$+7		;8a42
	djnz $+5		;8a44
	ret p			;8a46
	add a,c			;8a47
	cp 003h			;8a48
	ld b,e			;8a4a
	adc a,e			;8a4b
	ld sp,0f1f2h		;8a4c
	pop af			;8a4f
	jp p,03232h		;8a50
	ld hl,01f21h		;8a53
	rra			;8a56
	inc b			;8a57
	ld hl,02302h		;8a58
l8a5bh:
	ld (bc),a		;8a5b
l8a5ch:
	ld hl,0f191h		;8a5c
	jp p,021f2h		;8a5f
	ld hl,02132h		;8a62
	ld hl,0e332h		;8a65
	ld b,d			;8a68
	ld b,c			;8a69
	ld sp,0f2f3h		;8a6a
	call p,003f3h		;8a6d
	call po,0e302h		;8a70
	add a,e			;8a73
	ld b,d			;8a74
	call p,003f3h		;8a75
	call po,0e302h		;8a78
	add a,a			;8a7b
	ld b,d			;8a7c
	call p,0c5f3h		;8a7d
	push bc			;8a80
	rst 8			;8a81
	rst 8			;8a82
l8a83h:
	inc bc			;8a83
	cp 08bh			;8a84
	call po,0423eh		;8a86
	ld b,c			;8a89
	ld sp,0f23fh		;8a8a
	pop af			;8a8d
	pop af			;8a8e
	ld hl,00321h		;8a8f
	ld (02102h),a		;8a92
	add a,a			;8a95
	pop af			;8a96
	or 0f9h			;8a97
	ei			;8a99
	ld sp,hl		;8a9a
	or 0f9h			;8a9b
	dec b			;8a9d
	ei			;8a9e
	adc a,b			;8a9f
	ld sp,hl		;8aa0
	call m,0f9fch		;8aa1
	call m,010f0h		;8aa4
	jr nc,$+5		;8aa7
	ld b,b			;8aa9
l8aaah:
	add a,l			;8aaa
	jr nc,l8acdh		;8aab
	ret p			;8aad
	jr nz,l8ae0h		;8aae
	inc bc			;8ab0
	ld b,b			;8ab1
	adc a,c			;8ab2
	jr nc,l8ad5h		;8ab3
	ret p			;8ab5
	djnz l8ad8h		;8ab6
	jr nz,l8aaah		;8ab8
	jr nz,l8aech		;8aba
	inc bc			;8abc
	ld b,b			;8abd
	adc a,e			;8abe
	jr nc,l8ae1h		;8abf
	ret p			;8ac1
	jr nz,$+50		;8ac2
	ld b,b			;8ac4
	ret p			;8ac5
	ret p			;8ac6
	ld h,b			;8ac7
	sub b			;8ac8
	or b			;8ac9
	inc bc			;8aca
	ex de,hl		;8acb
	inc bc			;8acc
l8acdh:
	call m,0f682h		;8acd
	sub (hl)		;8ad0
	inc bc			;8ad1
	cp c			;8ad2
	inc bc			;8ad3
	pop af			;8ad4
l8ad5h:
	add a,d			;8ad5
	ld sp,hl		;8ad6
	or b			;8ad7
l8ad8h:
	inc bc			;8ad8
	ex de,hl		;8ad9
	ld (bc),a		;8ada
	jp p,01183h		;8adb
	or 096h			;8ade
l8ae0h:
	ex af,af'		;8ae0
l8ae1h:
	cp c			;8ae1
	ld (bc),a		;8ae2
	sub (hl)		;8ae3
	adc a,c			;8ae4
	add a,096h		;8ae5
	sub l			;8ae7
	sbc a,l			;8ae8
	sbc a,b			;8ae9
	ld l,l			;8aea
	ld h,l			;8aeb
l8aech:
	ld h,l			;8aec
	call 0f107h		;8aed
	add a,e			;8af0
	di			;8af1
	jp p,004f2h		;8af2
	pop af			;8af5
	ld (bc),a		;8af6
	di			;8af7
	add a,c			;8af8
	jp p,0f105h		;8af9
	ld (bc),a		;8afc
	di			;8afd
	dec b			;8afe
	pop af			;8aff
	ld (bc),a		;8b00
	di			;8b01
	add a,e			;8b02
	ld sp,021f2h		;8b03
	dec bc			;8b06
	rra			;8b07
	add a,e			;8b08
	jp p,0f4f3h		;8b09
	dec b			;8b0c
	pop af			;8b0d
	adc a,e			;8b0e
	call p,0f2f3h		;8b0f
	call p,02323h		;8b12
	ld (de),a		;8b15
	ld (de),a		;8b16
	pop af			;8b17
	pop af			;8b18
	ld hl,0f104h		;8b19
	inc b			;8b1c
	jp p,0f105h		;8b1d
	rlca			;8b20
	jp p,0f302h		;8b21
	add a,c			;8b24
	jp p,0f103h		;8b25
	inc b			;8b28
	jp p,0f103h		;8b29
	inc b			;8b2c
	jp p,0f302h		;8b2d
	ex af,af'		;8b30
	jp p,0f107h		;8b31
	ex af,af'		;8b34
	jp p,0f104h		;8b35
	inc b			;8b38
	jp p,0f304h		;8b39
	ld b,0f2h		;8b3c
	nop			;8b3e
	ex af,af'		;8b3f
	add a,c			;8b40
	ex af,af'		;8b41
	add a,b			;8b42
	ld (bc),a		;8b43
	add a,c			;8b44
	adc a,(hl)		;8b45
	add a,b			;8b46
	add a,a			;8b47
	add a,h			;8b48
	add a,h			;8b49
	call m,07e00h		;8b4a
	ld e,(hl)		;8b4d
	ld a,02ah		;8b4e
	ld d,042h		;8b50
	ld h,b			;8b52
	djnz l8b5dh		;8b53
	ld a,(hl)		;8b55
	sbc a,c			;8b56
	nop			;8b57
	inc l			;8b58
	nop			;8b59
	inc a			;8b5a
	inc a			;8b5b
	nop			;8b5c
l8b5dh:
	inc a			;8b5d
	nop			;8b5e
	nop			;8b5f
	ld (hl),h		;8b60
	nop			;8b61
	ld b,000h		;8b62
	ld b,07ah		;8b64
	nop			;8b66
	inc h			;8b67
	nop			;8b68
	inc a			;8b69
	add a,b			;8b6a
	cp h			;8b6b
	add a,b			;8b6c
	nop			;8b6d
	inc l			;8b6e
	nop			;8b6f
	inc bc			;8b70
	ld l,c			;8b71
	add a,c			;8b72
	defb 0fdh,006h,081h ;illegal sequence	;8b73
	adc a,l			;8b76
	ld e,(hl)		;8b77
	dec a			;8b78
	dec (hl)		;8b79
	ld d,c			;8b7a
	add hl,hl		;8b7b
	nop			;8b7c
	nop			;8b7d
	ld e,c			;8b7e
	jr nz,l8bdah		;8b7f
	ld a,c			;8b81
	nop			;8b82
	nop			;8b83
	inc bc			;8b84
	cp 0aeh			;8b85
	add a,c			;8b87
	add a,b			;8b88
	add a,b			;8b89
	nop			;8b8a
	nop			;8b8b
	ld bc,00175h		;8b8c
	ld b,000h		;8b8f
	ld a,h			;8b91
	ld bc,06101h		;8b92
	jp 0c301h		;8b95
	ld bc,001c3h		;8b98
	jp 06a00h		;8b9b
	ld l,d			;8b9e
	nop			;8b9f
	nop			;8ba0
	ld a,a			;8ba1
	rst 38h			;8ba2
	nop			;8ba3
	cp 0a2h			;8ba4
	cp 03eh			;8ba6
	rst 38h			;8ba8
	rst 18h			;8ba9
	add a,c			;8baa
	nop			;8bab
	add a,b			;8bac
	or h			;8bad
	add a,b			;8bae
	ld h,d			;8baf
	ld l,d			;8bb0
	ld h,d			;8bb1
	ex af,af'		;8bb2
	nop			;8bb3
	ld b,007h		;8bb4
	inc a			;8bb6
	add a,h			;8bb7
	nop			;8bb8
	inc l			;8bb9
	inc l			;8bba
	nop			;8bbb
	inc b			;8bbc
	ld a,(hl)		;8bbd
	adc a,l			;8bbe
	nop			;8bbf
	inc (hl)		;8bc0
	inc (hl)		;8bc1
	add a,b			;8bc2
	add a,b			;8bc3
	cp h			;8bc4
	add a,b			;8bc5
	inc h			;8bc6
	nop			;8bc7
	ld l,c			;8bc8
	ld l,c			;8bc9
	nop			;8bca
	nop			;8bcb
	inc bc			;8bcc
	ld a,a			;8bcd
	nop			;8bce
	ld d,054h		;8bcf
	dec d			;8bd1
	ld b,b			;8bd2
	add a,c			;8bd3
	ld d,b			;8bd4
	rlca			;8bd5
	ld b,b			;8bd6
	add a,e			;8bd7
	ld d,b			;8bd8
	nop			;8bd9
l8bdah:
	ld d,h			;8bda
	dec b			;8bdb
	ld b,b			;8bdc
	add a,c			;8bdd
	ld d,b			;8bde
	inc bc			;8bdf
	ld b,b			;8be0
	inc bc			;8be1
	ld d,b			;8be2
	add a,d			;8be3
	ld b,b			;8be4
	nop			;8be5
	rlca			;8be6
	ld d,h			;8be7
	ex af,af'		;8be8
	ld b,b			;8be9
	ld (bc),a		;8bea
	ld d,b			;8beb
	ld b,040h		;8bec
	dec b			;8bee
	ld d,h			;8bef
	dec b			;8bf0
	ld d,b			;8bf1
	add a,c			;8bf2
	ld b,b			;8bf3
	inc bc			;8bf4
	ld d,b			;8bf5
	adc a,l			;8bf6
	ld d,h			;8bf7
	ld b,b			;8bf8
	ld d,h			;8bf9
	ld b,b			;8bfa
	ld d,h			;8bfb
	ld b,b			;8bfc
	ld d,h			;8bfd
	ld d,b			;8bfe
	ld d,b			;8bff
	ld b,b			;8c00
	ld b,b			;8c01
	ld b,l			;8c02
	ld b,l			;8c03
	rlca			;8c04
	dec b			;8c05
	ld (bc),a		;8c06
	ld d,h			;8c07
	ld (bc),a		;8c08
	ld d,b			;8c09
	ld (bc),a		;8c0a
	ld b,b			;8c0b
	add a,c			;8c0c
	ld d,b			;8c0d
	inc b			;8c0e
	ld b,b			;8c0f
	adc a,l			;8c10
	ld d,b			;8c11
	ld d,h			;8c12
	nop			;8c13
	ld d,h			;8c14
	nop			;8c15
	ld d,h			;8c16
	nop			;8c17
	ld d,h			;8c18
	ld d,b			;8c19
	ld d,b			;8c1a
	ld b,b			;8c1b
	ld b,b			;8c1c
	ld d,b			;8c1d
	inc b			;8c1e
	ld b,b			;8c1f
	add a,e			;8c20
	ld d,b			;8c21
	ld b,b			;8c22
	ld d,b			;8c23
	inc bc			;8c24
	ld b,b			;8c25
	inc bc			;8c26
	ld d,b			;8c27
	ld (bc),a		;8c28
	ld b,b			;8c29
	inc b			;8c2a
	ld b,l			;8c2b
	nop			;8c2c
	xor e			;8c2d
	ld (hl),b		;8c2e
	ret po			;8c2f
	ret po			;8c30
	ret nz			;8c31
	ret nz			;8c32
	rst 38h			;8c33
	ccf			;8c34
	jr nz,l8c45h		;8c35
	rlca			;8c37
	rlca			;8c38
	inc bc			;8c39
	inc bc			;8c3a
	call m,0380ch		;8c3b
	cp l			;8c3e
	rst 0			;8c3f
	add a,c			;8c40
	cp l			;8c41
	rst 0			;8c42
	add a,c			;8c43
	cp l			;8c44
l8c45h:
	rst 0			;8c45
	add a,c			;8c46
	rst 38h			;8c47
	rst 0			;8c48
	add a,l			;8c49
	rst 38h			;8c4a
	rst 0			;8c4b
	add a,l			;8c4c
	rst 38h			;8c4d
	rst 0			;8c4e
	add a,l			;8c4f
	rst 38h			;8c50
	rst 0			;8c51
	cp l			;8c52
	rst 38h			;8c53
	rst 0			;8c54
	cp l			;8c55
	inc a			;8c56
	ld a,(hl)		;8c57
	nop			;8c58
	dec e			;8c59
	ld (hl),h		;8c5a
	nop			;8c5b
	sub e			;8c5c
	jp p,0fef3h		;8c5d
	cp 013h			;8c60
	ld hl,l9121h		;8c62
	pop af			;8c65
	jp p,0f3f3h		;8c66
	ld (de),a		;8c69
	ld (de),a		;8c6a
	sub c			;8c6b
	sub c			;8c6c
	jp p,0f3f3h		;8c6d
	inc bc			;8c70
	jp p,0f185h		;8c71
	jp p,0f1f1h		;8c74
	jp p,0f103h		;8c77
	ld (bc),a		;8c7a
	ld sp,hl		;8c7b
	add a,c			;8c7c
	pop af			;8c7d
	rlca			;8c7e
	ld sp,hl		;8c7f
	add a,d			;8c80
	ret p			;8c81
	sub b			;8c82
	inc bc			;8c83
	ld hl,03202h		;8c84
	add a,d			;8c87
	ex (sp),hl		;8c88
	ld (0e303h),a		;8c89
	adc a,l			;8c8c
	ld (032e3h),a		;8c8d
	ld (03221h),a		;8c90
	ld (02121h),a		;8c93
	ld (02121h),a		;8c96
	add hl,de		;8c99
	inc bc			;8c9a
	ld hl,01984h		;8c9b
	ld hl,01921h		;8c9e
	nop			;8ca1
	adc a,(hl)		;8ca2
	rlca			;8ca3
	ccf			;8ca4
	rst 38h			;8ca5
	rrca			;8ca6
	ret m			;8ca7
	ret nz			;8ca8
	ret m			;8ca9
	ret nz			;8caa
	ret nz			;8cab
	ret m			;8cac
	ccf			;8cad
	rlca			;8cae
	rlca			;8caf
	ret po			;8cb0
	ld b,01fh		;8cb1
	inc b			;8cb3
	ret po			;8cb4
	add a,l			;8cb5
	ld a,a			;8cb6
	rra			;8cb7
	inc bc			;8cb8
	rra			;8cb9
	inc bc			;8cba
	dec b			;8cbb
	rlca			;8cbc
	dec b			;8cbd
	ret m			;8cbe
	add a,d			;8cbf
	rst 38h			;8cc0
	ld h,c			;8cc1
	dec b			;8cc2
	rrca			;8cc3
	add a,h			;8cc4
	call m,0f0f0h		;8cc5
	jr nc,l8ccdh		;8cc8
	or 083h			;8cca
	adc a,c			;8ccc
l8ccdh:
	adc a,a			;8ccd
	rst 8			;8cce
	dec b			;8ccf
	pop hl			;8cd0
	inc bc			;8cd1
	add a,c			;8cd2
	add a,c			;8cd3
	rst 8			;8cd4
	inc b			;8cd5
	adc a,c			;8cd6
	add a,h			;8cd7
	adc a,a			;8cd8
	ld c,a			;8cd9
	ld c,a			;8cda
	pop af			;8cdb
	inc bc			;8cdc
	ret p			;8cdd
	add a,l			;8cde
	ld (hl),b		;8cdf
	ret nz			;8ce0
	call m,0fffch		;8ce1
	ld b,080h		;8ce4
	add a,c			;8ce6
	add a,c			;8ce7
	inc bc			;8ce8
	add a,b			;8ce9
	add a,c			;8cea
	rst 38h			;8ceb
	dec b			;8cec
	add a,b			;8ced
	add a,c			;8cee
	rst 38h			;8cef
	dec b			;8cf0
	add a,b			;8cf1
	add a,e			;8cf2
	add a,c			;8cf3
	nop			;8cf4
	inc a			;8cf5
	ex af,af'		;8cf6
	ld a,(hl)		;8cf7
l8cf8h:
	inc b			;8cf8
	pop bc			;8cf9
	ld (bc),a		;8cfa
	add a,c			;8cfb
	adc a,h			;8cfc
	ret nz			;8cfd
	ret p			;8cfe
	nop			;8cff
	nop			;8d00
	ret p			;8d01
	ret nz			;8d02
	nop			;8d03
	nop			;8d04
	add hl,bc		;8d05
	add hl,bc		;8d06
	rst 38h			;8d07
	rst 8			;8d08
	inc b			;8d09
	add hl,bc		;8d0a
	add a,(hl)		;8d0b
	add a,b			;8d0c
	nop			;8d0d
	nop			;8d0e
	ret po			;8d0f
	call m,004c0h		;8d10
	nop			;8d13
	add a,h			;8d14
	ret p			;8d15
	cp 0f0h			;8d16
	ret nz			;8d18
	inc b			;8d19
	nop			;8d1a
	adc a,c			;8d1b
	ld h,d			;8d1c
	add hl,bc		;8d1d
	ret			;8d1e
	add hl,bc		;8d1f
	add hl,bc		;8d20
	ret			;8d21
	ld a,0f8h		;8d22
	ret nz			;8d24
	inc bc			;8d25
	nop			;8d26
	inc b			;8d27
	ld a,a			;8d28
	ld (bc),a		;8d29
	ret p			;8d2a
	sub a			;8d2b
	rrca			;8d2c
	ld a,a			;8d2d
	rst 38h			;8d2e
	rst 38h			;8d2f
	rrca			;8d30
	inc bc			;8d31
	rst 38h			;8d32
	rrca			;8d33
	rrca			;8d34
	pop de			;8d35
	ret z			;8d36
	ld l,b			;8d37
	nop			;8d38
	rrca			;8d39
	rrca			;8d3a
	ld (hl),b		;8d3b
	rrca			;8d3c
	ld a,a			;8d3d
	adc a,a			;8d3e
	ret p			;8d3f
	ld c,h			;8d40
	ld h,h			;8d41
	cpl			;8d42
	ld b,0f0h		;8d43
	add a,c			;8d45
	ret nz			;8d46
	inc bc			;8d47
	nop			;8d48
l8d49h:
	add a,e			;8d49
	ret po			;8d4a
	ret m			;8d4b
	ret po			;8d4c
	nop			;8d4d
	inc bc			;8d4e
	jr nz,l8d54h		;8d4f
	ld (02102h),a		;8d51
l8d54h:
	ld (bc),a		;8d54
	inc hl			;8d55
	ld (bc),a		;8d56
	ld hl,0198ch		;8d57
	ld sp,hl		;8d5a
	ld sp,hl		;8d5b
l8d5ch:
	ld hl,02132h		;8d5c
	add hl,de		;8d5f
	sbc a,a			;8d60
	sbc a,a			;8d61
	sub c			;8d62
	ld (de),a		;8d63
	ld (de),a		;8d64
	inc bc			;8d65
	di			;8d66
	ld (bc),a		;8d67
	ld (02189h),a		;8d68
	add hl,de		;8d6b
	sbc a,a			;8d6c
	jp p,02323h		;8d6d
	ld (de),a		;8d70
	sub c			;8d71
	ld sp,hl		;8d72
	inc b			;8d73
	rra			;8d74
	add a,e			;8d75
	ld sp,01223h		;8d76
	inc bc			;8d79
	sub c			;8d7a
	inc bc			;8d7b
	sbc a,a			;8d7c
	add a,d			;8d7d
	add hl,hl		;8d7e
	add hl,de		;8d7f
	inc b			;8d80
l8d81h:
	ld sp,hl		;8d81
	ld (bc),a		;8d82
	pop af			;8d83
	inc bc			;8d84
	ld sp,hl		;8d85
	add a,c			;8d86
	pop af			;8d87
	inc bc			;8d88
	ld sp,hl		;8d89
	add a,d			;8d8a
	jp p,009f1h		;8d8b
	ld sp,hl		;8d8e
	ld (bc),a		;8d8f
	sub c			;8d90
	add a,e			;8d91
	sub d			;8d92
	jp p,003f2h		;8d93
	di			;8d96
	sbc a,a			;8d97
	jp p,0f9f1h		;8d98
	di			;8d9b
	jp p,0f1f1h		;8d9c
	jp p,0f2f3h		;8d9f
	pop af			;8da2
	ld sp,hl		;8da3
	ld sp,hl		;8da4
	jp p,0f3f3h		;8da5
	jp p,0f9f1h		;8da8
	sub b			;8dab
	sub b			;8dac
	djnz l8dceh		;8dad
	cpl			;8daf
	cpl			;8db0
	ccf			;8db1
	ccf			;8db2
	cpl			;8db3
	rra			;8db4
	jp p,003f2h		;8db5
	pop af			;8db8
	add a,d			;8db9
	ld sp,hl		;8dba
	jr nz,l8dc1h		;8dbb
	jr nc,$+5		;8dbd
	jr nz,l8d49h		;8dbf
l8dc1h:
	jp p,l9191h		;8dc1
	ld sp,hl		;8dc4
	ld sp,hl		;8dc5
	sub d			;8dc6
	sub c			;8dc7
	ld sp,hl		;8dc8
	inc bc			;8dc9
	sub b			;8dca
	add a,d			;8dcb
	jr nz,$+50		;8dcc
l8dceh:
	ld b,020h		;8dce
	add a,d			;8dd0
	jr nc,$+34		;8dd1
	dec b			;8dd3
	djnz l8d5ch		;8dd4
	jr nz,$-109		;8dd6
	ld sp,hl		;8dd8
	jp p,0f991h		;8dd9
	ld b,032h		;8ddc
	inc bc			;8dde
	ld hl,02382h		;8ddf
	ld hl,01905h		;8de2
	add a,h			;8de5
	jr nz,l8e1ah		;8de6
	ld (00421h),a		;8de8
	rra			;8deb
	ld (bc),a		;8dec
	jr nz,$+6		;8ded
	ccf			;8def
	adc a,e			;8df0
	jp p,0f1f3h		;8df1
	ld sp,hl		;8df4
	ld sp,hl		;8df5
	pop af			;8df6
	inc de			;8df7
	ld (01921h),a		;8df8
	jr nc,l8e02h		;8dfb
	jr nz,l8d81h		;8dfd
	jr nc,$+18		;8dff
	nop			;8e01
l8e02h:
	ld (bc),a		;8e02
	add a,e			;8e03
	inc b			;8e04
	ld a,(hl)		;8e05
	add a,a			;8e06
	add a,c			;8e07
	ld a,(bc)		;8e08
	adc a,e			;8e09
	add a,b			;8e0a
	add a,b			;8e0b
	ccf			;8e0c
	ccf			;8e0d
	inc bc			;8e0e
	call p,0f791h		;8e0f
	call p,003f4h		;8e12
	inc bc			;8e15
	call m,00b0bh		;8e16
	sbc a,a			;8e19
l8e1ah:
	rra			;8e1a
	rra			;8e1b
	ret po			;8e1c
	ret po			;8e1d
	djnz l8e90h		;8e1e
	ld b,b			;8e20
	rst 38h			;8e21
	inc bc			;8e22
	adc a,d			;8e23
	inc bc			;8e24
	ld (hl),h		;8e25
	add a,h			;8e26
	ld a,(hl)		;8e27
	ex af,af'		;8e28
	ex af,af'		;8e29
	adc a,e			;8e2a
	dec b			;8e2b
	add a,b			;8e2c
	add a,l			;8e2d
	ld h,(hl)		;8e2e
	jr l8e49h		;8e2f
	or 076h			;8e31
	inc bc			;8e33
	add a,c			;8e34
	add a,h			;8e35
	ld l,b			;8e36
	ld h,b			;8e37
	ld e,061h		;8e38
	inc bc			;8e3a
	add a,b			;8e3b
	add a,h			;8e3c
	ld l,b			;8e3d
	add a,c			;8e3e
	add a,c			;8e3f
	rst 38h			;8e40
	inc bc			;8e41
	adc a,e			;8e42
	and l			;8e43
	adc a,d			;8e44
	ld (hl),h		;8e45
	adc a,h			;8e46
	inc bc			;8e47
	inc bc			;8e48
l8e49h:
	ld a,(bc)		;8e49
	adc a,e			;8e4a
	res 1,e			;8e4b
	rrca			;8e4d
	adc a,c			;8e4e
	add a,c			;8e4f
	ld a,(hl)		;8e50
	nop			;8e51
	add a,e			;8e52
	or 0feh			;8e53
	cp 040h			;8e55
	add a,b			;8e57
	ld l,b			;8e58
	ld l,b			;8e59
	inc bc			;8e5a
	ccf			;8e5b
	ld b,b			;8e5c
	add a,b			;8e5d
	rst 38h			;8e5e
	ld a,h			;8e5f
	add a,c			;8e60
	add a,c			;8e61
	ld a,a			;8e62
	ld a,a			;8e63
	ld a,(hl)		;8e64
	ld a,(hl)		;8e65
	inc a			;8e66
	inc a			;8e67
	jp 00003h		;8e68
	ld (bc),a		;8e6b
	dec bc			;8e6c
	inc bc			;8e6d
	ld (hl),h		;8e6e
	add a,(hl)		;8e6f
	add a,e			;8e70
	ld a,h			;8e71
	ld a,h			;8e72
	inc bc			;8e73
	rst 38h			;8e74
	ld (hl),b		;8e75
	inc bc			;8e76
	add a,b			;8e77
	ld (bc),a		;8e78
	ld l,b			;8e79
	add a,h			;8e7a
	inc bc			;8e7b
	ccf			;8e7c
	call p,00474h		;8e7d
	ld a,h			;8e80
	ld (bc),a		;8e81
	add a,e			;8e82
	add a,c			;8e83
	add a,b			;8e84
	inc bc			;8e85
	jp 03c81h		;8e86
	inc bc			;8e89
	rst 30h			;8e8a
	inc bc			;8e8b
	dec bc			;8e8c
	ld (bc),a		;8e8d
	inc bc			;8e8e
	inc bc			;8e8f
l8e90h:
	call m,03c85h		;8e90
	inc e			;8e93
	ld h,e			;8e94
	add a,b			;8e95
	add a,b			;8e96
	inc bc			;8e97
	ld l,b			;8e98
	add a,h			;8e99
	add a,c			;8e9a
	ld b,d			;8e9b
	inc a			;8e9c
	ld (hl),h		;8e9d
	inc bc			;8e9e
	ld a,h			;8e9f
	add a,e			;8ea0
	add a,e			;8ea1
	ex af,af'		;8ea2
	inc bc			;8ea3
	inc bc			;8ea4
	jp 03d86h		;8ea5
	cp 0f7h			;8ea8
	add a,c			;8eaa
	rst 30h			;8eab
	call p,07403h		;8eac
	adc a,d			;8eaf
	halt			;8eb0
	add a,c			;8eb1
	ld l,b			;8eb2
	ld h,b			;8eb3
	rlca			;8eb4
	rlca			;8eb5
	jr c,$+66		;8eb6
	add a,b			;8eb8
	ld l,b			;8eb9
	inc bc			;8eba
	ld (hl),h		;8ebb
	add a,l			;8ebc
	ld bc,l8381h		;8ebd
	add a,e			;8ec0
	ld a,(hl)		;8ec1
	inc bc			;8ec2
	ld a,a			;8ec3
	inc bc			;8ec4
	dec bc			;8ec5
	ld (bc),a		;8ec6
	adc a,a			;8ec7
	adc a,d			;8ec8
	jp 03c3ch		;8ec9
	rst 30h			;8ecc
	or 076h			;8ecd
	rst 30h			;8ecf
	halt			;8ed0
	ret nz			;8ed1
	jr z,l8ed7h		;8ed2
	ld l,b			;8ed4
	add a,e			;8ed5
	add a,b			;8ed6
l8ed7h:
	rlca			;8ed7
	ccf			;8ed8
	inc bc			;8ed9
	add a,c			;8eda
	add a,c			;8edb
	push af			;8edc
	inc b			;8edd
	ld (hl),h		;8ede
	add a,e			;8edf
	ret nz			;8ee0
	rra			;8ee1
	ld h,b			;8ee2
	inc bc			;8ee3
	add a,b			;8ee4
	sub d			;8ee5
	dec bc			;8ee6
	jp 0fcfch		;8ee7
	jp 03c3ch		;8eea
	rst 30h			;8eed
	call p,04074h		;8eee
	add a,b			;8ef1
	ret nz			;8ef2
	jr z,l8f5dh		;8ef3
	ld l,b			;8ef5
	ld bc,0000fh		;8ef6
	sbc a,l			;8ef9
	ld hl,03232h		;8efa
	ld hl,09f19h		;8efd
	sbc a,a			;8f00
	sub c			;8f01
	ld (02132h),a		;8f02
	sub c			;8f05
	ld sp,hl		;8f06
	ld sp,hl		;8f07
	sub c			;8f08
	inc hl			;8f09
	ld hl,02132h		;8f0a
	sub c			;8f0d
	ld sp,hl		;8f0e
	ld sp,hl		;8f0f
	sub c			;8f10
	ld (de),a		;8f11
	ld (de),a		;8f12
	sub c			;8f13
	ld sp,hl		;8f14
	ld sp,hl		;8f15
	sub c			;8f16
	inc bc			;8f17
	ld hl,l9102h		;8f18
	sbc a,c			;8f1b
	ld (de),a		;8f1c
	inc hl			;8f1d
	ex (sp),hl		;8f1e
	ex (sp),hl		;8f1f
	ld (02121h),a		;8f20
	ld (03132h),a		;8f23
	add hl,hl		;8f26
	rra			;8f27
	ld sp,hl		;8f28
	pop af			;8f29
	ld sp,hl		;8f2a
	pop af			;8f2b
	ld (de),a		;8f2c
	ld (l9121h),a		;8f2d
	ld sp,hl		;8f30
	rra			;8f31
	ld hl,0f121h		;8f32
	inc bc			;8f35
	ld sp,hl		;8f36
	adc a,l			;8f37
	sub c			;8f38
	ld hl,l9ff1h		;8f39
	sbc a,a			;8f3c
	sub c			;8f3d
	sub c			;8f3e
	ld (de),a		;8f3f
	ld (de),a		;8f40
	ld (0f9f9h),a		;8f41
	ld de,03203h		;8f44
	add a,e			;8f47
	ld hl,091f9h		;8f48
	inc bc			;8f4b
	ld sp,hl		;8f4c
	sub l			;8f4d
	ld hl,02132h		;8f4e
	add hl,de		;8f51
	ld sp,hl		;8f52
	pop af			;8f53
	ld hl,0f121h		;8f54
	pop af			;8f57
	ld sp,hl		;8f58
	ld sp,hl		;8f59
	ld hl,0f121h		;8f5a
l8f5dh:
	sbc a,a			;8f5d
	sub c			;8f5e
	ld (de),a		;8f5f
	ld (l9121h),a		;8f60
	inc bc			;8f63
	ld sp,hl		;8f64
	inc bc			;8f65
	ld hl,03202h		;8f66
	add a,a			;8f69
	ld hl,0f919h		;8f6a
	ld sp,hl		;8f6d
	sub c			;8f6e
	ld hl,00321h		;8f6f
	ld sp,hl		;8f72
	sub h			;8f73
	sub c			;8f74
	ld hl,0f121h		;8f75
	pop af			;8f78
	ld (032e3h),a		;8f79
	ld hl,09f19h		;8f7c
	sbc a,a			;8f7f
	add hl,de		;8f80
	ld (01921h),a		;8f81
	sbc a,a			;8f84
	sbc a,a			;8f85
	sub c			;8f86
	ld (de),a		;8f87
	inc bc			;8f88
	inc hl			;8f89
	add a,a			;8f8a
	ld (de),a		;8f8b
	sub c			;8f8c
	ld sp,hl		;8f8d
	ld sp,hl		;8f8e
	sub c			;8f8f
	ld (de),a		;8f90
	sub c			;8f91
	inc bc			;8f92
	ld sp,hl		;8f93
	add a,c			;8f94
	sub c			;8f95
	inc bc			;8f96
	ld hl,0f18ch		;8f97
	ld sp,hl		;8f9a
	jp p,02132h		;8f9b
	add hl,de		;8f9e
	sbc a,a			;8f9f
	sbc a,a			;8fa0
	ld (02132h),a		;8fa1
	add hl,de		;8fa4
	inc bc			;8fa5
	sbc a,a			;8fa6
	adc a,h			;8fa7
	sub c			;8fa8
l8fa9h:
	ld hl,03221h		;8fa9
	ex (sp),hl		;8fac
	ex (sp),hl		;8fad
	ld (0f121h),a		;8fae
	ld hl,l9121h		;8fb1
	inc bc			;8fb4
	ld sp,hl		;8fb5
	sbc a,e			;8fb6
	pop af			;8fb7
	ld hl,0e3e3h		;8fb8
	ld (0f1f2h),a		;8fbb
	ld sp,hl		;8fbe
	cpl			;8fbf
	ld hl,01ff9h		;8fc0
	rra			;8fc3
	ld hl,03232h		;8fc4
	ld hl,0f91fh		;8fc7
	ld sp,hl		;8fca
	sub c			;8fcb
	ld hl,0e332h		;8fcc
	ld (l9121h),a		;8fcf
	inc b			;8fd2
	ld hl,0319eh		;8fd3
	pop af			;8fd6
	pop af			;8fd7
	sub c			;8fd8
	add hl,hl		;8fd9
	ld hl,03221h		;8fda
	ex (sp),hl		;8fdd
	ex (sp),hl		;8fde
	ld (0f121h),a		;8fdf
	ld sp,hl		;8fe2
	ld sp,hl		;8fe3
	sub c			;8fe4
	ld (de),a		;8fe5
	ld (02121h),a		;8fe6
	add hl,de		;8fe9
	ld sp,hl		;8fea
	ld sp,hl		;8feb
	sub c			;8fec
	ld hl,0e332h		;8fed
	ld sp,hl		;8ff0
	ld sp,hl		;8ff1
	sub c			;8ff2
	inc bc			;8ff3
	ld hl,0f102h		;8ff4
	nop			;8ff7
	dec b			;8ff8
	nop			;8ff9
	adc a,e			;8ffa
	inc bc			;8ffb
	rra			;8ffc
	inc bc			;8ffd
	nop			;8ffe
	nop			;8fff
l9000h:
	ld bc,07f0fh		;9000
	rrca			;9003
	ld a,(hl)		;9004
	ret p			;9005
	ld b,000h		;9006
	add a,d			;9008
	jr c,$-27		;9009
	inc b			;900b
	nop			;900c
	add a,c			;900d
	dec bc			;900e
	inc bc			;900f
	in a,(002h)		;9010
	nop			;9012
	add a,c			;9013
	inc b			;9014
	inc bc			;9015
	ld l,h			;9016
l9017h:
	add a,d			;9017
	sbc a,c			;9018
	ret			;9019
	dec b			;901a
	nop			;901b
	add a,c			;901c
	ld bc,00307h		;901d
	add a,e			;9020
	ld bc,00000h		;9021
	nop			;9024
	rlca			;9025
	jr nz,l8fa9h		;9026
	ld (02005h),a		;9028
	inc bc			;902b
	ld (0100ch),a		;902c
	add a,e			;902f
	sub b			;9030
	djnz l9063h		;9031
	inc bc			;9033
	djnz l9038h		;9034
	sub b			;9036
	add a,h			;9037
l9038h:
	djnz l905ah		;9038
	di			;903a
	jp p,02008h		;903b
	inc bc			;903e
	djnz l9046h		;903f
	sub b			;9041
	nop			;9042
	inc bc			;9043
	nop			;9044
	sub d			;9045
l9046h:
	inc a			;9046
	ld a,(hl)		;9047
	cp l			;9048
	rst 0			;9049
	add a,c			;904a
	ld bc,00e07h		;904b
	dec e			;904e
	dec sp			;904f
	dec sp			;9050
	halt			;9051
	halt			;9052
	ret nz			;9053
	nop			;9054
	ld (hl),b		;9055
	ret nz			;9056
	add a,b			;9057
	inc bc			;9058
	nop			;9059
l905ah:
	adc a,l			;905a
	add a,b			;905b
	ret po			;905c
	ld (hl),b		;905d
	cp b			;905e
	call c,06edch		;905f
	ld l,(hl)		;9062
l9063h:
	inc bc			;9063
	nop			;9064
	ld c,003h		;9065
	ld bc,00003h		;9067
	inc b			;906a
	call pe,0fc84h		;906b
	rra			;906e
	rlca			;906f
	ld bc,03704h		;9070
	sub h			;9073
	ccf			;9074
	ret m			;9075
	ret po			;9076
	add a,b			;9077
	rlca			;9078
	rra			;9079
	ccf			;907a
	ld a,a			;907b
	ld a,a			;907c
	ret p			;907d
	ret po			;907e
	call m,0f8e0h		;907f
	call m,0fefeh		;9082
	rrca			;9085
	rlca			;9086
	ccf			;9087
	nop			;9088
	inc bc			;9089
	sub b			;908a
	add a,l			;908b
	djnz $+34		;908c
	pop af			;908e
	jp p,022f3h		;908f
	jr nc,l9017h		;9092
	jr nz,l90a6h		;9094
	sub b			;9096
	inc bc			;9097
	di			;9098
	ld (bc),a		;9099
	jr nc,$-123		;909a
	jr nz,$+18		;909c
	sub b			;909e
	inc bc			;909f
	di			;90a0
	dec b			;90a1
	or b			;90a2
	add a,e			;90a3
	set 7,h			;90a4
l90a6h:
	call m,0b005h		;90a6
	add a,e			;90a9
	set 7,h			;90aa
	call m,sub_9900h	;90ac
	cp 0f0h			;90af
	add a,b			;90b1
	rrca			;90b2
	ld a,a			;90b3
	ret p			;90b4
	add a,e			;90b5
	rlca			;90b6
	nop			;90b7
	rrca			;90b8
	rst 38h			;90b9
	ret p			;90ba
	ret p			;90bb
	pop af			;90bc
	ld bc,04f01h		;90bd
	ld l,c			;90c0
	ld a,c			;90c1
	add hl,sp		;90c2
	add hl,sp		;90c3
	rra			;90c4
	sbc a,a			;90c5
	adc a,a			;90c6
	call m,0f003h		;90c7
	adc a,h			;90ca
	rrca			;90cb
	rlca			;90cc
	ld a,a			;90cd
	ld bc,0070bh		;90ce
	ld l,a			;90d1
	cp e			;90d2
	ld a,a			;90d3
	call m,00fe0h		;90d4
	ex af,af'		;90d7
	ret po			;90d8
	inc b			;90d9
l90dah:
	ld (hl),b		;90da
	ld (bc),a		;90db
	jr c,$-116		;90dc
	inc e			;90de
	rra			;90df
	rrca			;90e0
	rlca			;90e1
	add a,b			;90e2
	add a,b			;90e3
	ret nz			;90e4
	ret po			;90e5
	ld (hl),b		;90e6
	inc a			;90e7
	ld b,011h		;90e8
	ld (bc),a		;90ea
	add hl,bc		;90eb
	adc a,b			;90ec
	rra			;90ed
	ret m			;90ee
	ld h,b			;90ef
	ld h,b			;90f0
	rst 38h			;90f1
	ld a,a			;90f2
	ret po			;90f3
	rst 38h			;90f4
	add hl,bc		;90f5
	ret po			;90f6
	ld (bc),a		;90f7
	rst 38h			;90f8
	add a,c			;90f9
	rra			;90fa
	inc bc			;90fb
	nop			;90fc
	add a,(hl)		;90fd
	ret p			;90fe
	rst 38h			;90ff
	ret p			;9100
	add a,b			;9101
l9102h:
	add a,b			;9102
	ret p			;9103
l9104h:
	inc bc			;9104
	add a,b			;9105
	adc a,e			;9106
	ex af,af'		;9107
	inc b			;9108
l9109h:
	ld b,003h		;9109
	ld a,a			;910b
	ld a,a			;910c
	ccf			;910d
	rrca			;910e
	ld bc,07f0fh		;910f
	dec b			;9112
	rst 38h			;9113
	add a,c			;9114
	rst 8			;9115
	rlca			;9116
	ret nz			;9117
	and h			;9118
	rlca			;9119
	ccf			;911a
l911bh:
	rrca			;911b
	rrca			;911c
	ld c,0feh		;911d
	ld c,07eh		;911f
l9121h:
	rra			;9121
	ret m			;9122
	ret nz			;9123
	call m,003e0h		;9124
	rra			;9127
	call m,00000h		;9128
	rrca			;912b
	ld a,a			;912c
	rlca			;912d
	ccf			;912e
	ld b,l			;912f
	rst 38h			;9130
	ex af,af'		;9131
	rst 28h			;9132
	call po,0f204h		;9133
	jp m,0ff01h		;9136
	rra			;9139
	rrca			;913a
	ld bc,00401h		;913b
	nop			;913e
	add a,c			;913f
	rst 38h			;9140
	ld b,0f0h		;9141
	add a,l			;9143
	nop			;9144
	rrca			;9145
	adc a,a			;9146
	ld d,b			;9147
	jr nc,l914eh		;9148
	djnz l90dah		;914a
	rst 0			;914c
	add a,e			;914d
l914eh:
	add a,b			;914e
	inc c			;914f
	rra			;9150
	ccf			;9151
	rrca			;9152
	rrca			;9153
	nop			;9154
	ret po			;9155
	rst 38h			;9156
	rra			;9157
	rra			;9158
	inc bc			;9159
	rlca			;915a
	nop			;915b
	add a,h			;915c
	ret po			;915d
	cp 0c0h			;915e
	ret m			;9160
	rlca			;9161
	rst 38h			;9162
	sub b			;9163
	add a,c			;9164
	rst 38h			;9165
	rst 38h			;9166
	add a,b			;9167
	push de			;9168
	push bc			;9169
	ret m			;916a
	rrca			;916b
	rst 38h			;916c
	rst 38h			;916d
	rrca			;916e
	ld bc,03f0fh		;916f
	rst 38h			;9172
	rst 38h			;9173
	dec b			;9174
	rrca			;9175
	add a,l			;9176
	rst 38h			;9177
	ret p			;9178
	ld c,a			;9179
	ret p			;917a
	ret p			;917b
	inc bc			;917c
	nop			;917d
	inc b			;917e
	rrca			;917f
	ld (bc),a		;9180
	ret p			;9181
	dec b			;9182
	rst 38h			;9183
	inc bc			;9184
	ret p			;9185
	add a,(hl)		;9186
	rrca			;9187
	ret po			;9188
	jr nz,l911bh		;9189
	ret nc			;918b
	rst 38h			;918c
	ld b,080h		;918d
	adc a,l			;918f
	add a,c			;9190
l9191h:
	rst 38h			;9191
	ret po			;9192
	rst 38h			;9193
	rra			;9194
	nop			;9195
	nop			;9196
	rst 38h			;9197
	rst 38h			;9198
	rrca			;9199
	rrca			;919a
	ret p			;919b
	ret p			;919c
	inc bc			;919d
	nop			;919e
	dec b			;919f
	rrca			;91a0
	ld (bc),a		;91a1
	ret p			;91a2
	ld (bc),a		;91a3
	nop			;91a4
	ld (bc),a		;91a5
	ld a,a			;91a6
	ld (bc),a		;91a7
	nop			;91a8
	add a,c			;91a9
	add a,b			;91aa
	inc bc			;91ab
	rst 38h			;91ac
	add a,e			;91ad
	rrca			;91ae
	ret p			;91af
	ret p			;91b0
	dec b			;91b1
	rst 38h			;91b2
	adc a,d			;91b3
	cp 0f0h			;91b4
	add a,b			;91b6
	cp 0feh			;91b7
	ret p			;91b9
	add a,b			;91ba
	ld bc,01010h		;91bb
	ld b,011h		;91be
	nop			;91c0
	inc bc			;91c1
	ld hl,l9109h		;91c2
	add a,c			;91c5
	rra			;91c6
	dec b			;91c7
	ld sp,hl		;91c8
	add a,h			;91c9
	jp p,0f9f1h		;91ca
	ld sp,hl		;91cd
	inc bc			;91ce
	pop af			;91cf
	add a,(hl)		;91d0
	ld sp,hl		;91d1
	sub c			;91d2
	ld (de),a		;91d3
	ld (de),a		;91d4
	sub c			;91d5
	sub c			;91d6
	ld b,0f9h		;91d7
	ld (bc),a		;91d9
	pop af			;91da
	inc de			;91db
	ld hl,0f104h		;91dc
	dec bc			;91df
	ld sp,hl		;91e0
	add a,h			;91e1
	pop af			;91e2
	ld hl,03232h		;91e3
	inc b			;91e6
	ex (sp),hl		;91e7
	add a,l			;91e8
	ld (0e2e3h),a		;91e9
	ld (00932h),a		;91ec
	ld hl,l9104h		;91ef
	ld (bc),a		;91f2
	ld (de),a		;91f3
	ld (bc),a		;91f4
	pop af			;91f5
	dec b			;91f6
	ld sp,hl		;91f7
	ld d,091h		;91f8
	add a,h			;91fa
	ld sp,hl		;91fb
	rra			;91fc
	ld hl,00521h		;91fd
	ld (02102h),a		;9200
	rlca			;9203
	sub c			;9204
	rrca			;9205
	ld sp,hl		;9206
	rlca			;9207
	add hl,de		;9208
	adc a,d			;9209
	sbc a,a			;920a
	jp p,01921h		;920b
	sbc a,a			;920e
	sbc a,a			;920f
	sub c			;9210
	sub c			;9211
	pop af			;9212
	pop af			;9213
	inc bc			;9214
	jp p,0f104h		;9215
	inc bc			;9218
	ld hl,09281h		;9219
	inc b			;921c
	ld sp,hl		;921d
	add a,c			;921e
	pop af			;921f
	rlca			;9220
	add hl,de		;9221
	inc b			;9222
	rra			;9223
	add hl,bc		;9224
	sub c			;9225
	inc b			;9226
	ld sp,hl		;9227
	add a,e			;9228
	pop af			;9229
	ld sp,hl		;922a
	ld sp,hl		;922b
	inc bc			;922c
	pop af			;922d
	add a,e			;922e
	jp p,0f2f3h		;922f
	inc bc			;9232
	pop af			;9233
	add a,h			;9234
	ld sp,hl		;9235
	cpl			;9236
	ld (de),a		;9237
	sub c			;9238
	dec b			;9239
	ld sp,hl		;923a
	dec b			;923b
	sub c			;923c
	add a,h			;923d
	ld sp,hl		;923e
	cpl			;923f
	sbc a,a			;9240
	sbc a,a			;9241
	ld b,019h		;9242
	add a,l			;9244
	ld hl,09f19h		;9245
	sbc a,a			;9248
	pop af			;9249
	inc b			;924a
	ld sp,hl		;924b
	add a,c			;924c
	jp p,0f303h		;924d
	add a,d			;9250
	jp p,004f1h		;9251
	ld sp,hl		;9254
	ld (bc),a		;9255
	pop af			;9256
	ld (bc),a		;9257
	sub d			;9258
	add a,h			;9259
	rst 38h			;925a
	sub d			;925b
	ld sp,hl		;925c
	ld sp,hl		;925d
	dec b			;925e
	sub c			;925f
	add a,l			;9260
	rra			;9261
	ld hl,0f992h		;9262
	ld sp,hl		;9265
	inc b			;9266
	sub c			;9267
	add hl,bc		;9268
	ld (de),a		;9269
	ld b,091h		;926a
	inc bc			;926c
	ld (02104h),a		;926d
	adc a,c			;9270
	sub c			;9271
	jp p,0f9f1h		;9272
	pop af			;9275
	pop af			;9276
	ld sp,hl		;9277
	pop af			;9278
	ld sp,hl		;9279
	nop			;927a
	ex af,af'		;927b
	adc a,e			;927c
	adc a,b			;927d
	sbc a,a			;927e
	add a,a			;927f
	jr c,$+65		;9280
	rrca			;9282
	ld a,a			;9283
	nop			;9284
	add a,b			;9285
	ex af,af'		;9286
	add a,c			;9287
	ex af,af'		;9288
	ld a,a			;9289
	inc b			;928a
	ld bc,0ff04h		;928b
	ex af,af'		;928e
	add a,c			;928f
	sub b			;9290
	rst 38h			;9291
	rst 0			;9292
	cp l			;9293
	rst 38h			;9294
	rst 0			;9295
	cp l			;9296
	rst 38h			;9297
	rst 0			;9298
	cp l			;9299
	rst 38h			;929a
	rst 0			;929b
	cp l			;929c
	rst 38h			;929d
	rst 0			;929e
	cp l			;929f
	rst 38h			;92a0
	ex af,af'		;92a1
	nop			;92a2
	rlca			;92a3
	adc a,e			;92a4
	inc bc			;92a5
	rst 38h			;92a6
	ld b,081h		;92a7
	add a,c			;92a9
	rst 38h			;92aa
	rlca			;92ab
	xor d			;92ac
	dec b			;92ad
	ld a,a			;92ae
	add a,(hl)		;92af
	nop			;92b0
	ld a,a			;92b1
	ld a,a			;92b2
	rst 38h			;92b3
	nop			;92b4
	nop			;92b5
	dec b			;92b6
	rst 38h			;92b7
	sub b			;92b8
	ld sp,hl		;92b9
	pop hl			;92ba
	nop			;92bb
	ret nz			;92bc
	call m,00701h		;92bd
	ld bc,01d03h		;92c0
	pop hl			;92c3
	rra			;92c4
	rlca			;92c5
	rlca			;92c6
	rrca			;92c7
	rra			;92c8
	ex af,af'		;92c9
	adc a,e			;92ca
	inc b			;92cb
	ld a,a			;92cc
	inc bc			;92cd
	ld bc,00382h		;92ce
	rst 38h			;92d1
	rlca			;92d2
	ld a,a			;92d3
	add a,h			;92d4
	rst 38h			;92d5
	jp 03c00h		;92d6
	inc c			;92d9
	ld a,(hl)		;92da
	ex af,af'		;92db
	add a,b			;92dc
	ex af,af'		;92dd
	ld a,(hl)		;92de
	add a,h			;92df
	ld a,a			;92e0
	ccf			;92e1
	rrca			;92e2
	nop			;92e3
	inc bc			;92e4
	add a,b			;92e5
	add a,d			;92e6
	ret nz			;92e7
	rst 38h			;92e8
	rlca			;92e9
	ld bc,0ff81h		;92ea
	rrca			;92ed
	ld bc,0bd81h		;92ee
	dec b			;92f1
	and l			;92f2
	adc a,(hl)		;92f3
	cp l			;92f4
	rst 38h			;92f5
	nop			;92f6
	rlca			;92f7
	rrca			;92f8
	dec e			;92f9
	add hl,sp		;92fa
	ld (hl),c		;92fb
	ld h,c			;92fc
	ret nz			;92fd
	ret nz			;92fe
	add a,b			;92ff
	add a,b			;9300
	rrca			;9301
	inc bc			;9302
	rra			;9303
	add a,l			;9304
	rrca			;9305
	nop			;9306
	nop			;9307
	rst 38h			;9308
	rst 38h			;9309
	dec b			;930a
	nop			;930b
	ld (bc),a		;930c
	rst 38h			;930d
	ex af,af'		;930e
	nop			;930f
	adc a,l			;9310
	rrca			;9311
	rst 38h			;9312
	rst 38h			;9313
	add a,b			;9314
	ret p			;9315
	ld bc,01c02h		;9316
	ret po			;9319
	rlca			;931a
	ret po			;931b
	ret p			;931c
	ret p			;931d
	dec b			;931e
	add a,b			;931f
	add a,e			;9320
	rst 38h			;9321
	nop			;9322
	nop			;9323
	dec b			;9324
	ld bc,0ff9ch		;9325
	nop			;9328
	nop			;9329
	ret nz			;932a
	ret po			;932b
	ld (hl),b		;932c
	sbc a,b			;932d
	call po,0011eh		;932e
	nop			;9331
	inc bc			;9332
	rlca			;9333
	ld c,019h		;9334
	daa			;9336
	ld a,b			;9337
	add a,b			;9338
	nop			;9339
	add a,b			;933a
	ret po			;933b
	ret p			;933c
	cp b			;933d
	sbc a,h			;933e
	adc a,(hl)		;933f
	add a,(hl)		;9340
	add a,e			;9341
	inc bc			;9342
	inc bc			;9343
	ld bc,00003h		;9344
	add a,e			;9347
	ld a,a			;9348
	rlca			;9349
	rra			;934a
	inc b			;934b
	rst 38h			;934c
	add a,(hl)		;934d
	ld bc,l810fh		;934e
	rst 38h			;9351
	rst 38h			;9352
	nop			;9353
	inc bc			;9354
	ld d,l			;9355
	adc a,c			;9356
	nop			;9357
	add a,b			;9358
	ret p			;9359
	adc a,a			;935a
	ret p			;935b
	ret p			;935c
	inc a			;935d
	ld a,(hl)		;935e
	nop			;935f
	inc bc			;9360
	rst 38h			;9361
	add a,c			;9362
	call m,00004h		;9363
	add a,e			;9366
	ret p			;9367
	ret po			;9368
	add a,b			;9369
	inc bc			;936a
	nop			;936b
	add a,(hl)		;936c
	ld bc,07f03h		;936d
	ld a,a			;9370
	rst 38h			;9371
	nop			;9372
	inc bc			;9373
	ld d,l			;9374
	dec b			;9375
	nop			;9376
	ld (bc),a		;9377
	rst 38h			;9378
	ld (bc),a		;9379
	nop			;937a
	ld (bc),a		;937b
	rst 38h			;937c
	add a,l			;937d
	nop			;937e
	rst 38h			;937f
	rst 38h			;9380
	nop			;9381
	nop			;9382
	inc c			;9383
	rst 38h			;9384
	ld (bc),a		;9385
	nop			;9386
	ld (bc),a		;9387
	rst 38h			;9388
	inc bc			;9389
	nop			;938a
	ld (bc),a		;938b
	rst 38h			;938c
	ld (bc),a		;938d
	nop			;938e
	ld (bc),a		;938f
	rst 38h			;9390
	ld (bc),a		;9391
	nop			;9392
	ld (bc),a		;9393
	rst 38h			;9394
	ld (bc),a		;9395
	nop			;9396
	ld (bc),a		;9397
	rst 38h			;9398
	ld (bc),a		;9399
	nop			;939a
	ld (bc),a		;939b
	rst 38h			;939c
	inc bc			;939d
	nop			;939e
	ld (bc),a		;939f
	rst 38h			;93a0
	ld (bc),a		;93a1
	nop			;93a2
	inc bc			;93a3
	rst 38h			;93a4
	ld (bc),a		;93a5
	nop			;93a6
	ld (bc),a		;93a7
	ld a,a			;93a8
	ld (bc),a		;93a9
	rst 38h			;93aa
	inc b			;93ab
	add a,c			;93ac
	sub a			;93ad
	rst 38h			;93ae
	add a,c			;93af
	add a,c			;93b0
	rst 38h			;93b1
	rst 38h			;93b2
	ld h,(hl)		;93b3
	cp e			;93b4
	cp e			;93b5
	ld b,b			;93b6
	and a			;93b7
	and a			;93b8
	ret nc			;93b9
	out (069h),a		;93ba
	cp 0bbh			;93bc
	ld (bc),a		;93be
	push hl			;93bf
	push hl			;93c0
	dec bc			;93c1
	res 2,(hl)		;93c2
	ld a,a			;93c4
	add hl,de		;93c5
	cp e			;93c6
	add a,c			;93c7
	ei			;93c8
	inc bc			;93c9
	rrca			;93ca
	inc bc			;93cb
	ret p			;93cc
	add a,h			;93cd
	rrca			;93ce
	cp e			;93cf
	cp e			;93d0
	ei			;93d1
	inc bc			;93d2
	rrca			;93d3
	ld (bc),a		;93d4
	ret p			;93d5
	inc b			;93d6
	cp e			;93d7
	add a,a			;93d8
	rst 38h			;93d9
	nop			;93da
	nop			;93db
	rst 38h			;93dc
	cp e			;93dd
	cp e			;93de
	cp a			;93df
	inc bc			;93e0
	ret p			;93e1
	ld (bc),a		;93e2
	rrca			;93e3
	add a,c			;93e4
	cp a			;93e5
	inc bc			;93e6
	ret p			;93e7
	inc bc			;93e8
	rrca			;93e9
	add a,e			;93ea
	ret p			;93eb
	rst 38h			;93ec
	rst 38h			;93ed
	inc bc			;93ee
	nop			;93ef
	ld (bc),a		;93f0
	rst 38h			;93f1
	add a,l			;93f2
	nop			;93f3
	add a,b			;93f4
	add a,b			;93f5
	ret nz			;93f6
	rlca			;93f7
	inc bc			;93f8
	add a,b			;93f9
	add a,c			;93fa
	nop			;93fb
	nop			;93fc
	add a,d			;93fd
	sub c			;93fe
	ld (de),a		;93ff
	rlca			;9400
	sub c			;9401
	add a,c			;9402
	sub d			;9403
	inc bc			;9404
	ld (02102h),a		;9405
	inc bc			;9408
	sub c			;9409
	add a,c			;940a
	ld (de),a		;940b
	inc bc			;940c
	sub c			;940d
	add a,c			;940e
	ld sp,hl		;940f
	dec b			;9410
	sub c			;9411
	dec l			;9412
	ld sp,hl		;9413
	add a,c			;9414
	sub c			;9415
	add hl,bc		;9416
	ld sp,hl		;9417
	add a,e			;9418
	pop af			;9419
	jp p,004f1h		;941a
	ld sp,hl		;941d
	add a,e			;941e
	pop af			;941f
	jp p,004f1h		;9420
	ld sp,hl		;9423
	add a,e			;9424
	sub c			;9425
	ld (de),a		;9426
	inc hl			;9427
	inc b			;9428
	ld a,002h		;9429
	pop af			;942b
	ld (bc),a		;942c
	ld (de),a		;942d
	dec b			;942e
	sub c			;942f
	ld (bc),a		;9430
	sub d			;9431
	add a,h			;9432
	ld (l9121h),a		;9433
	sub c			;9436
	inc b			;9437
	ld sp,hl		;9438
	ld b,091h		;9439
	inc bc			;943b
	ld (de),a		;943c
	add a,e			;943d
	sub c			;943e
	ld (de),a		;943f
	ld (de),a		;9440
	dec b			;9441
	sub c			;9442
	dec b			;9443
	ld sp,hl		;9444
	add a,(hl)		;9445
	sub c			;9446
	ld (de),a		;9447
	inc hl			;9448
	ld a,023h		;9449
	inc hl			;944b
	inc b			;944c
	ld (de),a		;944d
	ld a,(bc)		;944e
	ld (02181h),a		;944f
	ld b,032h		;9452
	ld b,021h		;9454
	add a,h			;9456
	ld (02121h),a		;9457
	add hl,de		;945a
	ld b,021h		;945b
	dec b			;945d
	pop af			;945e
	add a,l			;945f
	ld sp,hl		;9460
	pop af			;9461
	jp p,0fef3h		;9462
	inc bc			;9465
	di			;9466
	add a,a			;9467
	ld sp,hl		;9468
	pop af			;9469
	jp p,0f2f3h		;946a
	jp p,004f1h		;946d
	jp p,0f105h		;9470
	add a,h			;9473
	jp p,0f2f3h		;9474
	pop af			;9477
	dec b			;9478
	ld sp,hl		;9479
	ld (bc),a		;947a
	pop af			;947b
	rlca			;947c
	jp p,03206h		;947d
	ld (bc),a		;9480
	sub c			;9481
	ld (bc),a		;9482
	ld sp,hl		;9483
	dec b			;9484
	sub c			;9485
	ld (bc),a		;9486
	ld sp,hl		;9487
	ld a,(bc)		;9488
	sub c			;9489
	ld b,0f9h		;948a
	add a,c			;948c
	sub c			;948d
	dec b			;948e
	ld hl,01903h		;948f
	ld (bc),a		;9492
	ld sp,hl		;9493
	inc bc			;9494
	pop af			;9495
	dec b			;9496
	ld sp,hl		;9497
	inc b			;9498
	pop af			;9499
	ld c,0f9h		;949a
	ld (bc),a		;949c
	pop af			;949d
	inc c			;949e
	ld sp,hl		;949f
	rlca			;94a0
	sub c			;94a1
	ld b,0f9h		;94a2
	add a,d			;94a4
	jp p,004f1h		;94a5
	ld sp,hl		;94a8
	add a,h			;94a9
	pop af			;94aa
	ld hl,03232h		;94ab
	djnz l94d1h		;94ae
	inc b			;94b0
	sub c			;94b1
	ld (bc),a		;94b2
	ld sp,hl		;94b3
	add a,d			;94b4
	jp p,003f1h		;94b5
	ld sp,hl		;94b8
	inc b			;94b9
	sub c			;94ba
	ld (bc),a		;94bb
	jp p,0f102h		;94bc
	inc bc			;94bf
	sub c			;94c0
	ld (bc),a		;94c1
	pop af			;94c2
	ld (bc),a		;94c3
	sub d			;94c4
	inc c			;94c5
	jp p,02302h		;94c6
	dec b			;94c9
	rra			;94ca
	ld (bc),a		;94cb
	inc hl			;94cc
	ld (bc),a		;94cd
	ld a,002h		;94ce
	add hl,hl		;94d0
l94d1h:
	inc b			;94d1
	sbc a,a			;94d2
	ld (bc),a		;94d3
	ld hl,l9f02h		;94d4
	ld (bc),a		;94d7
	ld (de),a		;94d8
	inc bc			;94d9
	sbc a,a			;94da
	inc b			;94db
	ld hl,0f905h		;94dc
	inc bc			;94df
	sub c			;94e0
	rlca			;94e1
	ld sp,hl		;94e2
	add a,a			;94e3
	pop af			;94e4
	ld sp,hl		;94e5
	ld sp,hl		;94e6
	ld de,0f1f9h		;94e7
	jp p,0f907h		;94ea
	add a,c			;94ed
	pop af			;94ee
	rlca			;94ef
	ld sp,hl		;94f0
	and d			;94f1
	pop af			;94f2
	sub e			;94f3
	inc de			;94f4
	inc hl			;94f5
	inc de			;94f6
	sub d			;94f7
	sub d			;94f8
	sub c			;94f9
	pop af			;94fa
	jp p,01393h		;94fb
	inc hl			;94fe
	inc de			;94ff
	sub d			;9500
	sub d			;9501
	sub c			;9502
	pop af			;9503
	jp p,01393h		;9504
	inc hl			;9507
	inc de			;9508
	sub d			;9509
	sub d			;950a
	ld sp,hl		;950b
	ld sp,hl		;950c
	sub c			;950d
	ld (de),a		;950e
	ld (de),a		;950f
	sub c			;9510
	ld sp,hl		;9511
	ld sp,hl		;9512
	pop af			;9513
	inc bc			;9514
	ld sp,hl		;9515
	add a,(hl)		;9516
	sub c			;9517
	ld (de),a		;9518
	ld (de),a		;9519
	sub c			;951a
	sub c			;951b
	pop af			;951c
	inc b			;951d
	ld sp,hl		;951e
	ld (bc),a		;951f
	ld hl,0f181h		;9520
	inc bc			;9523
	ld sp,hl		;9524
	adc a,d			;9525
	sub c			;9526
	ld (de),a		;9527
	ld (de),a		;9528
	sub c			;9529
	ld sp,hl		;952a
	ld sp,hl		;952b
	sub c			;952c
	ld (de),a		;952d
	ld (de),a		;952e
	sub c			;952f
	inc bc			;9530
	ld sp,hl		;9531
	ld (bc),a		;9532
	add hl,de		;9533
	inc bc			;9534
	rra			;9535
	ld (bc),a		;9536
	add hl,hl		;9537
	add a,h			;9538
	sub c			;9539
	add hl,hl		;953a
	add hl,hl		;953b
	jp p,03204h		;953c
	nop			;953f
	sub b			;9540
	rlca			;9541
	ccf			;9542
	rlca			;9543
	ld a,0f0h		;9544
	add a,b			;9546
	ret m			;9547
	ret nz			;9548
	ret po			;9549
	call m,07ce0h		;954a
	rrca			;954d
	ld bc,0031fh		;954e
	nop			;9551
	ld (bc),a		;9552
	jr nz,l9559h		;9553
	ld (02102h),a		;9555
	ld (bc),a		;9558
l9559h:
	jr nz,l955fh		;9559
	ld (02102h),a		;955b
	nop			;955e
l955fh:
	dec b			;955f
	rst 38h			;9560
	adc a,e			;9561
	defb 0fdh,003h,00fh ;illegal sequence	;9562
	nop			;9565
	nop			;9566
	inc b			;9567
	ld b,00fh		;9568
	ld a,a			;956a
	rrca			;956b
	rrca			;956c
	dec b			;956d
	nop			;956e
	sub e			;956f
	add a,b			;9570
	ret nz			;9571
	pop af			;9572
	nop			;9573
	ld bc,00301h		;9574
	rlca			;9577
	rlca			;9578
	rrca			;9579
	rrca			;957a
	nop			;957b
	nop			;957c
	add a,b			;957d
	ret po			;957e
	or 082h			;957f
	push bc			;9581
	jp nz,00006h		;9582
	add a,(hl)		;9585
	add a,b			;9586
	ret po			;9587
	rra			;9588
	rrca			;9589
	rlca			;958a
	inc bc			;958b
	inc b			;958c
	nop			;958d
	ld (bc),a		;958e
	ret po			;958f
	add a,c			;9590
	ret nz			;9591
	inc bc			;9592
	nop			;9593
	adc a,(hl)		;9594
	add a,b			;9595
	ret nz			;9596
	ld bc,00f0fh		;9597
	rlca			;959a
	inc bc			;959b
	rlca			;959c
	inc bc			;959d
	inc bc			;959e
	ret nz			;959f
	ret nz			;95a0
	ret po			;95a1
	ret po			;95a2
	inc bc			;95a3
	ret p			;95a4
	add a,d			;95a5
	ret m			;95a6
	jr nz,l95ach		;95a7
	ccf			;95a9
	adc a,c			;95aa
l95abh:
	rra			;95ab
l95ach:
	rrca			;95ac
	rlca			;95ad
	inc bc			;95ae
	rra			;95af
	rra			;95b0
	ccf			;95b1
	rlca			;95b2
	ld bc,00007h		;95b3
	sbc a,h			;95b6
	ld bc,00f07h		;95b7
	rra			;95ba
	ld bc,00703h		;95bb
	rlca			;95be
	rrca			;95bf
	rrca			;95c0
	rra			;95c1
	rra			;95c2
	nop			;95c3
	ld bc,00f07h		;95c4
	rra			;95c7
	ccf			;95c8
	ld a,a			;95c9
	ld a,a			;95ca
	inc bc			;95cb
	inc bc			;95cc
	rlca			;95cd
	rlca			;95ce
	rrca			;95cf
	rrca			;95d0
	rra			;95d1
	rra			;95d2
	ld b,000h		;95d3
	ld (bc),a		;95d5
	ld bc,00002h		;95d6
	adc a,(hl)		;95d9
	ld bc,00703h		;95da
	rrca			;95dd
	rrca			;95de
	rra			;95df
	nop			;95e0
	ret nz			;95e1
	ret p			;95e2
	ret m			;95e3
	call m,0fefch		;95e4
	cp 000h			;95e7
	ld b,005h		;95e9
	inc b			;95eb
	sub b			;95ec
	add a,(hl)		;95ed
	or b			;95ee
	ld d,b			;95ef
	sub b			;95f0
	sub b			;95f1
	cp c			;95f2
	ld e,e			;95f3
	add hl,bc		;95f4
	sub b			;95f5
	add a,c			;95f6
	ld d,b			;95f7
	dec b			;95f8
	sub b			;95f9
	inc bc			;95fa
	or b			;95fb
	inc bc			;95fc
	sub b			;95fd
	inc bc			;95fe
	cp c			;95ff
	rlca			;9600
	sub b			;9601
	ld (bc),a		;9602
	or b			;9603
	add a,d			;9604
	ld d,b			;9605
	or b			;9606
	dec b			;9607
	sub b			;9608
	add a,d			;9609
	ld d,b			;960a
	or b			;960b
	inc b			;960c
	sub b			;960d
	ld (bc),a		;960e
	or b			;960f
	add a,c			;9610
	ld d,b			;9611
	rlca			;9612
	sub b			;9613
	add a,c			;9614
	or b			;9615
	rlca			;9616
	sub b			;9617
	add a,e			;9618
	cp c			;9619
	sub b			;961a
	ld d,b			;961b
	inc b			;961c
	or b			;961d
	add a,l			;961e
	ld d,b			;961f
	or l			;9620
	sbc a,e			;9621
	sub b			;9622
	or b			;9623
	ex af,af'		;9624
	sub b			;9625
	inc bc			;9626
	jr nc,l95abh		;9627
	jr nz,l963bh		;9629
	dec c			;962b
	ld b,b			;962c
	add a,d			;962d
	jr nc,l9652h		;962e
	ld a,(de)		;9630
	ld b,b			;9631
	ld b,030h		;9632
	nop			;9634
	dec b			;9635
	nop			;9636
	add a,e			;9637
	add a,b			;9638
	ld a,b			;9639
	rlca			;963a
l963bh:
	rlca			;963b
	nop			;963c
	add a,d			;963d
	ret nz			;963e
	ccf			;963f
	inc b			;9640
	nop			;9641
	add a,d			;9642
	rlca			;9643
	jr l964ch		;9644
	nop			;9646
	add a,(hl)		;9647
	add a,b			;9648
	ld b,b			;9649
	jr nz,l9664h		;964a
l964ch:
	inc b			;964c
	inc bc			;964d
	dec bc			;964e
	nop			;964f
	add a,e			;9650
	ret nz			;9651
l9652h:
	ld a,001h		;9652
	inc b			;9654
	nop			;9655
	add a,d			;9656
	ld bc,0051eh		;9657
	nop			;965a
	add a,h			;965b
	ret p			;965c
	ld c,001h		;965d
	ld bc,00004h		;965f
	adc a,b			;9662
	ret p			;9663
l9664h:
	inc c			;9664
	inc bc			;9665
	ld bc,01820h		;9666
	inc b			;9669
	inc bc			;966a
	ex af,af'		;966b
	nop			;966c
	add a,h			;966d
	ret nz			;966e
	jr nc,l967dh		;966f
	inc bc			;9671
	rlca			;9672
	nop			;9673
	add a,d			;9674
	add a,b			;9675
	inc e			;9676
	ld c,000h		;9677
	add a,c			;9679
	inc bc			;967a
	inc bc			;967b
	nop			;967c
l967dh:
	add a,l			;967d
	ret nz			;967e
	jr nc,l968dh		;967f
	inc bc			;9681
	ld bc,00005h		;9682
	inc bc			;9685
	ccf			;9686
	dec b			;9687
l9688h:
	nop			;9688
	add a,e			;9689
	rlca			;968a
	ccf			;968b
	rlca			;968c
l968dh:
	inc bc			;968d
	nop			;968e
	add a,e			;968f
	add a,b			;9690
	ret nz			;9691
	ret nz			;9692
	inc b			;9693
	ret po			;9694
	ld (bc),a		;9695
	ret nz			;9696
	add a,c			;9697
	add a,b			;9698
	dec b			;9699
	nop			;969a
	sub d			;969b
	inc bc			;969c
	rlca			;969d
	rrca			;969e
	rra			;969f
	ld a,07ch		;96a0
	nop			;96a2
	nop			;96a3
	ld bc,00f07h		;96a4
	ld e,03ch		;96a7
	ld a,b			;96a9
	inc e			;96aa
	ld (hl),b		;96ab
	ret nz			;96ac
	add a,b			;96ad
	dec b			;96ae
	nop			;96af
	ld (bc),a		;96b0
l96b1h:
	ld bc,00302h		;96b1
	ld (bc),a		;96b4
	rlca			;96b5
	adc a,a			;96b6
	rrca			;96b7
	ret m			;96b8
	ret p			;96b9
	ret po			;96ba
	ret nz			;96bb
	ret nz			;96bc
	add a,b			;96bd
	add a,b			;96be
	nop			;96bf
	ret p			;96c0
	ret po			;96c1
	ret nz			;96c2
	ret nz			;96c3
	add a,b			;96c4
	add a,b			;96c5
	rlca			;96c6
	nop			;96c7
	add a,e			;96c8
	ld bc,00707h		;96c9
	inc bc			;96cc
	nop			;96cd
	add a,h			;96ce
	jr nc,l96b1h		;96cf
	ret nz			;96d1
	add a,b			;96d2
	inc bc			;96d3
	nop			;96d4
	add a,c			;96d5
	ld bc,00305h		;96d6
	ld b,000h		;96d9
	add a,d			;96db
	ld bc,00407h		;96dc
	nop			;96df
	add a,h			;96e0
	rra			;96e1
	pop hl			;96e2
	ld c,0f8h		;96e3
	nop			;96e5
	dec b			;96e6
	jr nc,l96f9h		;96e7
l96e9h:
	ld d,b			;96e9
	ex af,af'		;96ea
	or b			;96eb
	jr l973eh		;96ec
	rlca			;96ee
	or b			;96ef
	inc bc			;96f0
	ld d,b			;96f1
	dec b			;96f2
	jr nz,$+5		;96f3
	ld d,b			;96f5
	add a,c			;96f6
	jr nz,l9711h		;96f7
l96f9h:
	ld d,b			;96f9
	inc de			;96fa
l96fbh:
	or b			;96fb
	inc b			;96fc
	ld d,b			;96fd
	ld b,020h		;96fe
	add a,e			;9700
	call c,0dc87h		;9701
	rlca			;9704
	djnz l9688h		;9705
	ld hl,0c012h		;9707
	ex af,af'		;970a
	sub b			;970b
	add a,(hl)		;970c
	ld d,b			;970d
	or b			;970e
	or b			;970f
	ld d,b			;9710
l9711h:
	or b			;9711
	sub b			;9712
	inc bc			;9713
	ld d,b			;9714
	ld b,0b0h		;9715
	add a,d			;9717
	ld d,b			;9718
	or b			;9719
	dec b			;971a
	sub b			;971b
	add a,e			;971c
	or b			;971d
	ld d,b			;971e
	or b			;971f
	ld (de),a		;9720
	sub b			;9721
	ld (bc),a		;9722
	ld d,b			;9723
	inc b			;9724
	or b			;9725
	rlca			;9726
	ld d,b			;9727
	ld (bc),a		;9728
	sub b			;9729
	add a,e			;972a
	or b			;972b
	ld d,b			;972c
	or b			;972d
	dec c			;972e
	sub b			;972f
	add a,h			;9730
	or b			;9731
	sub l			;9732
l9733h:
	cp c			;9733
	sub b			;9734
	nop			;9735
	in a,(000h)		;9736
	ex af,af'		;9738
	inc c			;9739
	ld a,a			;973a
	ld e,0c1h		;973b
	inc e			;973d
l973eh:
	inc a			;973e
	nop			;973f
	ld (bc),a		;9740
	inc bc			;9741
	jr nc,l9765h		;9742
	sub c			;9744
	out (0c3h),a		;9745
	jr l97c8h		;9747
	inc a			;9749
	rst 38h			;974a
	jp 01881h		;974b
	inc a			;974e
	ld b,b			;974f
	ld h,b			;9750
	ret p			;9751
	ld sp,hl		;9752
	add a,c			;9753
	ret z			;9754
	call z,03fc7h		;9755
	rra			;9758
	pop af			;9759
	adc a,a			;975a
	pop af			;975b
	ret m			;975c
	ret nz			;975d
	nop			;975e
	rrca			;975f
	rrca			;9760
	ld a,a			;9761
	ret z			;9762
	add a,b			;9763
	nop			;9764
l9765h:
	nop			;9765
	jr l96e9h		;9766
	ccf			;9768
	ld b,b			;9769
	add hl,sp		;976a
	nop			;976b
	nop			;976c
	add hl,bc		;976d
	ccf			;976e
	jp 02193h		;976f
	ld h,c			;9772
	rrca			;9773
	ld b,a			;9774
	inc b			;9775
	ld a,d			;9776
	inc a			;9777
	jr l96fbh		;9778
	jp 03cffh		;977a
	nop			;977d
	add hl,bc		;977e
	rst 0			;977f
	jp l8a83h		;9780
	ld a,(de)		;9783
	dec a			;9784
	rst 8			;9785
l9786h:
	add a,a			;9786
	jp 03c80h		;9787
	ld a,(hl)		;978a
	jp 01881h		;978b
	inc a			;978e
	ld e,0f1h		;978f
	ld b,003h		;9791
	ret po			;9793
	adc a,a			;9794
	jr nz,l9797h		;9795
l9797h:
	add a,e			;9797
	inc a			;9798
	add a,c			;9799
	rst 38h			;979a
	ld b,b			;979b
	sbc a,h			;979c
	ex af,af'		;979d
	nop			;979e
	ld de,0c189h		;979f
	ret po			;97a2
	jr c,l97a8h		;97a3
	ret nz			;97a5
	and c			;97a6
	rlca			;97a7
l97a8h:
	add a,e			;97a8
	add a,e			;97a9
	rst 0			;97aa
	ld a,l			;97ab
	ld (bc),a		;97ac
	ccf			;97ad
	nop			;97ae
	inc a			;97af
	jr l9733h		;97b0
	jp 03cffh		;97b2
	nop			;97b5
	add hl,bc		;97b6
	set 0,(hl)		;97b7
	adc a,h			;97b9
	sub b			;97ba
	ret m			;97bb
	pop hl			;97bc
	rst 18h			;97bd
	jp nz,03c00h		;97be
	jr l9786h		;97c1
	pop bc			;97c3
	pop hl			;97c4
	ex (sp),hl		;97c5
	ld a,0c0h		;97c6
l97c8h:
	inc bc			;97c8
	call m,0fe02h		;97c9
	add a,l			;97cc
	ret nz			;97cd
	ld a,a			;97ce
	rra			;97cf
	rra			;97d0
	ccf			;97d1
	dec b			;97d2
	add a,c			;97d3
	or c			;97d4
	add a,b			;97d5
	ld a,h			;97d6
	jr nc,l9855h		;97d7
	call m,07c78h		;97d9
	ld (hl),b		;97dc
	add a,c			;97dd
	add a,c			;97de
	inc bc			;97df
	rra			;97e0
	inc bc			;97e1
	rra			;97e2
	inc bc			;97e3
	rra			;97e4
	ret m			;97e5
	add a,b			;97e6
	inc bc			;97e7
	ld a,a			;97e8
	rlca			;97e9
	ld a,a			;97ea
	inc bc			;97eb
	rra			;97ec
	nop			;97ed
	rlca			;97ee
	inc bc			;97ef
	ld a,a			;97f0
	rrca			;97f1
	ld a,a			;97f2
	pop af			;97f3
	defb 0fdh,000h,0feh ;illegal sequence	;97f4
	call m,sub_9cf8h	;97f7
	call c,0f8fch		;97fa
	add a,b			;97fd
	ret p			;97fe
	call m,0e080h		;97ff
	ret m			;9802
	cp 0ffh			;9803
	ld bc,00303h		;9805
	and b			;9808
	nop			;9809
	ccf			;980a
	ld a,03ch		;980b
	rra			;980d
	rst 38h			;980e
	nop			;980f
	nop			;9810
	rst 38h			;9811
	ld (bc),a		;9812
	ld a,078h		;9813
	ld a,a			;9815
	dec bc			;9816
	rst 38h			;9817
	nop			;9818
	inc bc			;9819
	rrca			;981a
	rrca			;981b
	rra			;981c
	rst 38h			;981d
	rst 38h			;981e
	nop			;981f
	nop			;9820
	rst 38h			;9821
	rst 38h			;9822
	nop			;9823
	ld l,0e0h		;9824
	and b			;9826
	rst 38h			;9827
	nop			;9828
	inc b			;9829
	jp z,0ff84h		;982a
	nop			;982d
	rst 38h			;982e
	rst 38h			;982f
	inc b			;9830
	sub l			;9831
	ld (bc),a		;9832
	cp 08bh			;9833
	nop			;9835
	cp 081h			;9836
	ld a,h			;9838
	inc a			;9839
	ld a,h			;983a
	inc a			;983b
	nop			;983c
	inc bc			;983d
	rrca			;983e
	ld a,a			;983f
	inc bc			;9840
	inc a			;9841
	ld (bc),a		;9842
	ccf			;9843
	rst 0			;9844
	rst 8			;9845
	pop af			;9846
	cp 07ch			;9847
	ld a,b			;9849
	ld a,b			;984a
	rra			;984b
	rlca			;984c
	ld a,a			;984d
	rlca			;984e
	ld a,a			;984f
	inc bc			;9850
	ret po			;9851
	rra			;9852
	ld c,000h		;9853
l9855h:
	nop			;9855
	rrca			;9856
	ld a,a			;9857
	inc bc			;9858
	rlca			;9859
	nop			;985a
	jp z,0ffffh		;985b
	ret m			;985e
	nop			;985f
	cp 0feh			;9860
	nop			;9862
	sub l			;9863
	rst 38h			;9864
	ret po			;9865
	ret po			;9866
	add a,b			;9867
	inc bc			;9868
	ld b,02dh		;9869
	cp 0f0h			;986b
	ret nz			;986d
	call m,03c7ch		;986e
	inc a			;9871
	jr l9877h		;9872
	rlca			;9874
	rrca			;9875
	rra			;9876
l9877h:
	ccf			;9877
	ld a,01eh		;9878
	inc e			;987a
	adc a,(hl)		;987b
	cp (hl)			;987c
	adc a,(hl)		;987d
	cp (hl)			;987e
	cp (hl)			;987f
	sbc a,(hl)		;9880
	cp 098h			;9881
	ld sp,hl		;9883
	ld bc,07d61h		;9884
	ld (hl),c		;9887
	ld a,l			;9888
	ld a,a			;9889
	sbc a,c			;988a
	rra			;988b
	inc bc			;988c
	ccf			;988d
	adc a,e			;988e
	nop			;988f
	rst 28h			;9890
	ret po			;9891
	ret nz			;9892
	rra			;9893
	ccf			;9894
	ccf			;9895
	rra			;9896
	nop			;9897
	rst 28h			;9898
	ret po			;9899
	inc b			;989a
	ret nz			;989b
	adc a,e			;989c
	cp 043h			;989d
	ld h,b			;989f
	ret po			;98a0
	ret nz			;98a1
	nop			;98a2
	ld bc,07f0fh		;98a3
	ret p			;98a6
	add a,b			;98a7
	inc bc			;98a8
	nop			;98a9
	ld (bc),a		;98aa
	rst 38h			;98ab
	adc a,b			;98ac
	add a,b			;98ad
	rst 38h			;98ae
	nop			;98af
	add a,b			;98b0
	add a,b			;98b1
	nop			;98b2
	ret m			;98b3
	call m,0fe05h		;98b4
	ld (bc),a		;98b7
	rst 38h			;98b8
	adc a,(hl)		;98b9
	rrca			;98ba
	ret po			;98bb
	ret m			;98bc
	rra			;98bd
	inc bc			;98be
	ld bc,00000h		;98bf
	ld a,a			;98c2
	ld a,a			;98c3
	nop			;98c4
	rrca			;98c5
	ret po			;98c6
	ld a,(hl)		;98c7
	ld b,001h		;98c8
	add a,(hl)		;98ca
	call m,03ff8h		;98cb
	ret m			;98ce
	ret nz			;98cf
	add a,b			;98d0
	inc bc			;98d1
	nop			;98d2
	add a,l			;98d3
	rst 38h			;98d4
	ret p			;98d5
	ret m			;98d6
	call m,004fch		;98d7
	cp 081h			;98da
	rst 38h			;98dc
	rlca			;98dd
	and b			;98de
	add a,c			;98df
	rst 38h			;98e0
	dec b			;98e1
	ret nz			;98e2
	add a,d			;98e3
	rst 38h			;98e4
	add a,b			;98e5
	ex af,af'		;98e6
	cp 003h			;98e7
	and b			;98e9
	add a,l			;98ea
	rst 38h			;98eb
	rlca			;98ec
	rra			;98ed
	inc bc			;98ee
	ld bc,08004h		;98ef
	add a,h			;98f2
l98f3h:
	ccf			;98f3
	inc bc			;98f4
	ret po			;98f5
	ld a,(hl)		;98f6
	ld b,0feh		;98f7
	adc a,a			;98f9
	call m,000f8h		;98fa
	ld a,a			;98fd
	ret m			;98fe
	ret po			;98ff
sub_9900h:
	ret nz			;9900
	add a,b			;9901
	add a,b			;9902
	nop			;9903
	ccf			;9904
	ccf			;9905
	ld a,a			;9906
	ld a,a			;9907
	rst 38h			;9908
	inc bc			;9909
	and b			;990a
	ld (bc),a		;990b
	ret nz			;990c
	add a,c			;990d
	rst 38h			;990e
	dec b			;990f
	ret nz			;9910
	ex af,af'		;9911
	cp 008h			;9912
	and b			;9914
	add a,d			;9915
	add a,b			;9916
	rst 38h			;9917
	ld b,0c0h		;9918
	ex af,af'		;991a
	ld bc,0a002h		;991b
	add a,a			;991e
	nop			;991f
	rra			;9920
	rra			;9921
	inc e			;9922
	inc bc			;9923
	nop			;9924
	nop			;9925
	inc b			;9926
	ccf			;9927
	add a,e			;9928
	rra			;9929
	ret nz			;992a
	inc a			;992b
	ld b,0feh		;992c
	add a,d			;992e
	call m,003f8h		;992f
	nop			;9932
	add a,e			;9933
	ret nz			;9934
	jr c,l993eh		;9935
	inc bc			;9937
	nop			;9938
	add a,(hl)		;9939
	rst 38h			;993a
	nop			;993b
	nop			;993c
	ret m			;993d
l993eh:
	ld b,001h		;993e
	ld b,000h		;9940
	add a,e			;9942
	ret p			;9943
	rrca			;9944
	ld bc,00003h		;9945
	add a,a			;9948
	ret nz			;9949
	jr nc,l995ah		;994a
	ld bc,0f000h		;994c
	rrca			;994f
	inc bc			;9950
	nop			;9951
	adc a,l			;9952
	ret m			;9953
	rlca			;9954
	nop			;9955
	nop			;9956
	ld b,b			;9957
	jr nz,l996ah		;9958
l995ah:
	ex af,af'		;995a
	ld b,001h		;995b
	nop			;995d
	ld (hl),b		;995e
	rrca			;995f
	inc b			;9960
	nop			;9961
	add a,d			;9962
	rlca			;9963
	ret m			;9964
	ex af,af'		;9965
	jr c,l98f3h		;9966
	nop			;9968
	inc bc			;9969
l996ah:
	rlca			;996a
	rrca			;996b
	ld e,03ch		;996c
	jr c,l99a8h		;996e
	nop			;9970
	ret p			;9971
	jr c,l9979h		;9972
	nop			;9974
	adc a,l			;9975
	jr c,l99b4h		;9976
	inc e			;9978
l9979h:
	inc e			;9979
	ret nz			;997a
	ret p			;997b
	ret m			;997c
	call m,00f00h		;997d
	inc e			;9980
	jr c,l99f3h		;9981
	inc bc			;9983
	ret po			;9984
	add a,e			;9985
	rrca			;9986
	ld c,01eh		;9987
	inc bc			;9989
	inc e			;998a
	inc b			;998b
	jr c,$+6		;998c
	ld (hl),b		;998e
	add a,c			;998f
	ret p			;9990
	ld b,0e0h		;9991
	adc a,e			;9993
	ret p			;9994
	ret m			;9995
	ld a,(hl)		;9996
	inc bc			;9997
	add a,c			;9998
	ret nz			;9999
	ret po			;999a
	ld a,b			;999b
	inc a			;999c
	inc e			;999d
	call m,00004h		;999e
	adc a,c			;99a1
	add a,b			;99a2
	ret p			;99a3
	call m,01ffch		;99a4
	ld a,a			;99a7
l99a8h:
	cp 0f8h			;99a8
	ret po			;99aa
	inc bc			;99ab
	ret nz			;99ac
	ld (bc),a		;99ad
	ret po			;99ae
	ld (bc),a		;99af
	ret p			;99b0
	and c			;99b1
	ld (hl),b		;99b2
	ld a,b			;99b3
l99b4h:
	jr c,$+58		;99b4
	rlca			;99b6
	inc bc			;99b7
	ld bc,0e080h		;99b8
	ret m			;99bb
	ccf			;99bc
	ccf			;99bd
	add a,b			;99be
	ret nz			;99bf
	ret po			;99c0
	ret p			;99c1
	ld a,b			;99c2
	inc a			;99c3
	inc e			;99c4
	call m,0ff7fh		;99c5
	nop			;99c8
	nop			;99c9
	rst 38h			;99ca
	ld (bc),a		;99cb
	ld a,03ch		;99cc
	nop			;99ce
	nop			;99cf
	ret p			;99d0
	call m,004fch		;99d1
	nop			;99d4
	ld (bc),a		;99d5
	ld bc,00302h		;99d6
	ld (bc),a		;99d9
	rlca			;99da
	ld (bc),a		;99db
	rrca			;99dc
	ld (bc),a		;99dd
	ld e,003h		;99de
	inc a			;99e0
	add a,(hl)		;99e1
	ld e,00fh		;99e2
	ld c,01eh		;99e4
	inc e			;99e6
	inc a			;99e7
	inc b			;99e8
	jr c,$-124		;99e9
	ret po			;99eb
	add a,b			;99ec
	ld b,000h		;99ed
	add a,d			;99ef
	ret po			;99f0
	ld b,b			;99f1
	inc bc			;99f2
l99f3h:
	nop			;99f3
	inc bc			;99f4
	ret m			;99f5
	nop			;99f6
	adc a,e			;99f7
	sub b			;99f8
	ld d,b			;99f9
	or b			;99fa
	sub b			;99fb
	cp c			;99fc
	or l			;99fd
	push hl			;99fe
	and l			;99ff
	ld d,b			;9a00
	ld d,b			;9a01
	sub b			;9a02
	dec b			;9a03
	cp c			;9a04
	adc a,h			;9a05
	ld d,b			;9a06
	sub b			;9a07
	cp c			;9a08
	cp c			;9a09
	or l			;9a0a
	or l			;9a0b
	and l			;9a0c
	push hl			;9a0d
	ld d,b			;9a0e
	or b			;9a0f
	sub b			;9a10
	sub b			;9a11
	inc b			;9a12
	cp c			;9a13
	adc a,c			;9a14
	sub b			;9a15
	cp c			;9a16
	or l			;9a17
	or l			;9a18
	cp c			;9a19
	sub b			;9a1a
	or b			;9a1b
	or b			;9a1c
	or l			;9a1d
	inc bc			;9a1e
	sbc a,e			;9a1f
	inc bc			;9a20
	or b			;9a21
	add a,h			;9a22
	ld d,b			;9a23
	or l			;9a24
	cp c			;9a25
	cp c			;9a26
	inc b			;9a27
	or b			;9a28
	add a,c			;9a29
	sub b			;9a2a
	inc b			;9a2b
	cp c			;9a2c
	ld (bc),a		;9a2d
	sub b			;9a2e
	ld (bc),a		;9a2f
	cp c			;9a30
	add a,d			;9a31
	push hl			;9a32
	and l			;9a33
	inc bc			;9a34
	or l			;9a35
	add hl,bc		;9a36
	cp c			;9a37
l9a38h:
	ld (bc),a		;9a38
	or l			;9a39
	inc b			;9a3a
	cp c			;9a3b
	ld (bc),a		;9a3c
	or l			;9a3d
	sub d			;9a3e
	and l			;9a3f
	push hl			;9a40
	cp c			;9a41
	or l			;9a42
	and l			;9a43
	or l			;9a44
	sbc a,e			;9a45
	add hl,bc		;9a46
	ld d,b			;9a47
	ld d,b			;9a48
	or l			;9a49
	and l			;9a4a
	or l			;9a4b
	or l			;9a4c
	cp c			;9a4d
	sub b			;9a4e
	ld d,b			;9a4f
	ld d,b			;9a50
	ld b,0b9h		;9a51
	ld (bc),a		;9a53
	nop			;9a54
	inc b			;9a55
	or l			;9a56
	ld (bc),a		;9a57
	cp c			;9a58
	ld (bc),a		;9a59
	sub b			;9a5a
	add a,d			;9a5b
	push hl			;9a5c
	and l			;9a5d
	inc bc			;9a5e
	or l			;9a5f
	rlca			;9a60
	cp c			;9a61
	inc bc			;9a62
	sub b			;9a63
	inc bc			;9a64
	cp c			;9a65
	add a,c			;9a66
	ex de,hl		;9a67
	inc b			;9a68
	or l			;9a69
	sub (hl)		;9a6a
	cp c			;9a6b
	sub b			;9a6c
	or b			;9a6d
	ld d,b			;9a6e
	or b			;9a6f
	sub b			;9a70
	sub b			;9a71
	cp c			;9a72
	or l			;9a73
	or l			;9a74
	sbc a,e			;9a75
	sub b			;9a76
	ld hl,04332h		;9a77
	call po,0b043h		;9a7a
	djnz l9aa0h		;9a7d
	ld hl,00332h		;9a7f
	ld b,e			;9a82
	sub (hl)		;9a83
	ld (01021h),a		;9a84
	djnz l9aaah		;9a87
	ld hl,03232h		;9a89
	ld sp,02131h		;9a8c
l9a8fh:
	ld hl,03232h		;9a8f
	ld b,e			;9a92
	ld b,e			;9a93
	ld hl,03221h		;9a94
	ld (04343h),a		;9a97
	inc bc			;9a9a
	ld b,c			;9a9b
	add a,d			;9a9c
	ld hl,00532h		;9a9d
l9aa0h:
	ld b,e			;9aa0
	inc bc			;9aa1
	djnz l9aa9h		;9aa2
	ld hl,01083h		;9aa4
	jr nz,l9abeh		;9aa7
l9aa9h:
	inc bc			;9aa9
l9aaah:
	djnz l9a38h		;9aaa
	ld hl,02143h		;9aac
	ld (0f132h),a		;9aaf
	pop af			;9ab2
	ld hl,04321h		;9ab3
	ld b,e			;9ab6
	call po,02103h		;9ab7
	add a,c			;9aba
l9abbh:
	ld (04303h),a		;9abb
l9abeh:
	ld (bc),a		;9abe
	jp po,02102h		;9abf
	ld (bc),a		;9ac2
	inc (hl)		;9ac3
	adc a,c			;9ac4
	call po,0e443h		;9ac5
	cpl			;9ac8
	cpl			;9ac9
	pop af			;9aca
	ret m			;9acb
	defb 0fdh,0fdh,003h ;illegal sequence	;9acc
	inc hl			;9acf
	ld (bc),a		;9ad0
	pop af			;9ad1
	adc a,h			;9ad2
	ret m			;9ad3
	defb 0fdh,0fdh,010h ;illegal sequence	;9ad4
	ld hl,0f021h		;9ad7
	pop af			;9ada
	ld hl,02143h		;9adb
	ld hl,01004h		;9ade
	add a,h			;9ae1
	ld hl,04332h		;9ae2
	ld hl,01304h		;9ae5
	add a,d			;9ae8
	ld hl,00332h		;9ae9
	ld b,e			;9aec
	ld (bc),a		;9aed
	ld (02104h),a		;9aee
	inc bc			;9af1
	call po,04387h		;9af2
	ld (02132h),a		;9af5
	ld hl,0fefeh		;9af8
	inc bc			;9afb
	ld b,e			;9afc
	add a,(hl)		;9afd
	ld (02121h),a		;9afe
	cp 0feh			;9b01
	ld b,e			;9b03
	inc b			;9b04
	ld hl,03181h		;9b05
	inc b			;9b08
	djnz l9a8fh		;9b09
	ld hl,04332h		;9b0b
	call po,01005h		;9b0e
	add a,l			;9b11
	ld hl,04332h		;9b12
	ld hl,00321h		;9b15
	ld (04302h),a		;9b18
	add a,d			;9b1b
	call po,00321h		;9b1c
	ld (04303h),a		;9b1f
	add a,e			;9b22
	call po,02020h		;9b23
	inc b			;9b26
	djnz $-121		;9b27
	ld b,c			;9b29
	ld hl,03040h		;9b2a
	jr nz,l9b32h		;9b2d
	djnz l9abbh		;9b2f
	ld b,c			;9b31
l9b32h:
	ld hl,00304h		;9b32
	ld (bc),a		;9b35
	ld (bc),a		;9b36
	pop af			;9b37
	ld hl,02141h		;9b38
	inc bc			;9b3b
	ld b,b			;9b3c
	add a,c			;9b3d
	jr nc,l9b44h		;9b3e
	ld (04002h),a		;9b40
	ld (bc),a		;9b43
l9b44h:
	ld (01302h),a		;9b44
	ld (bc),a		;9b47
	ld (04002h),a		;9b48
	add a,h			;9b4b
	jr nc,l9b6eh		;9b4c
	ld (de),a		;9b4e
	inc (hl)		;9b4f
	inc b			;9b50
	inc hl			;9b51
	add a,c			;9b52
	ld hl,0f104h		;9b53
	ld (bc),a		;9b56
	ld hl,02303h		;9b57
	ld (bc),a		;9b5a
	ld sp,0f102h		;9b5b
	adc a,c			;9b5e
	ld sp,03243h		;9b5f
	ld (00321h),a		;9b62
	jr nz,l9b77h		;9b65
	ld b,b			;9b67
	dec b			;9b68
	ld b,e			;9b69
	ld (bc),a		;9b6a
	ld (de),a		;9b6b
	add a,c			;9b6c
	ld b,b			;9b6d
l9b6eh:
	dec b			;9b6e
	jr nc,$-123		;9b6f
	ld hl,01f1fh		;9b71
	dec bc			;9b74
	ld b,e			;9b75
	add a,d			;9b76
l9b77h:
	ld (00321h),a		;9b77
	ld b,e			;9b7a
	inc bc			;9b7b
	ld (0219eh),a		;9b7c
	rra			;9b7f
	ld b,e			;9b80
	ld (04343h),a		;9b81
	ld (01010h),a		;9b84
	pop af			;9b87
	pop af			;9b88
	ld hl,03243h		;9b89
	ld hl,03244h		;9b8c
	ld (0f1f2h),a		;9b8f
	ld (01f21h),a		;9b92
	ld b,e			;9b95
	ld sp,02030h		;9b96
	djnz l9babh		;9b99
	ld b,b			;9b9b
	ld b,043h		;9b9c
	add a,h			;9b9e
l9b9fh:
	ld b,b			;9b9f
	jr nc,l9bc2h		;9ba0
	djnz $+6		;9ba2
	ld b,e			;9ba4
	add a,d			;9ba5
	ld (00521h),a		;9ba6
	ld b,e			;9ba9
	add a,h			;9baa
l9babh:
	ld (01f21h),a		;9bab
	ld b,e			;9bae
	inc b			;9baf
	ld (02181h),a		;9bb0
	ex af,af'		;9bb3
	ld b,e			;9bb4
	add a,c			;9bb5
	ld hl,04305h		;9bb6
	add a,h			;9bb9
	ld (0f121h),a		;9bba
	inc (hl)		;9bbd
	inc b			;9bbe
	inc hl			;9bbf
	add a,d			;9bc0
	ld (de),a		;9bc1
l9bc2h:
	pop af			;9bc2
	inc bc			;9bc3
	ld b,e			;9bc4
	add a,d			;9bc5
	ld (0032fh),a		;9bc6
	pop af			;9bc9
	dec b			;9bca
	inc (hl)		;9bcb
	add a,h			;9bcc
	ld (0f1f2h),a		;9bcd
	ld b,e			;9bd0
	inc b			;9bd1
	ld (03002h),a		;9bd2
	inc b			;9bd5
	jr nz,l9be1h		;9bd6
	ld d,b			;9bd8
	add hl,bc		;9bd9
	or b			;9bda
	ld (bc),a		;9bdb
	ld d,b			;9bdc
	inc b			;9bdd
	jr nz,l9beah		;9bde
	ld d,b			;9be0
l9be1h:
	inc b			;9be1
	or b			;9be2
	dec c			;9be3
	ld d,b			;9be4
l9be5h:
	ld (bc),a		;9be5
	or b			;9be6
	ld b,090h		;9be7
	add a,c			;9be9
l9beah:
	ld d,b			;9bea
	inc bc			;9beb
	or b			;9bec
	adc a,c			;9bed
	ld d,b			;9bee
	or b			;9bef
	sub b			;9bf0
	sub b			;9bf1
	or b			;9bf2
	ld d,b			;9bf3
	ld d,b			;9bf4
	sub b			;9bf5
	or l			;9bf6
	ld b,0b0h		;9bf7
	inc bc			;9bf9
	sub b			;9bfa
	dec b			;9bfb
	djnz $-118		;9bfc
	ld d,b			;9bfe
	sub b			;9bff
	or b			;9c00
	ld d,b			;9c01
	or b			;9c02
	sub b			;9c03
	sub b			;9c04
	or b			;9c05
	ld b,090h		;9c06
	add a,e			;9c08
	or b			;9c09
	ld d,b			;9c0a
	or b			;9c0b
	dec bc			;9c0c
	sub b			;9c0d
	add a,e			;9c0e
	or b			;9c0f
	ld d,b			;9c10
	or b			;9c11
	inc b			;9c12
	sub b			;9c13
	add a,e			;9c14
	or b			;9c15
	ld d,b			;9c16
	or b			;9c17
	dec b			;9c18
	djnz l9b9fh		;9c19
	sub b			;9c1b
	or b			;9c1c
	ld d,b			;9c1d
	sub l			;9c1e
	inc b			;9c1f
	sub b			;9c20
	add a,e			;9c21
	or b			;9c22
	ld d,b			;9c23
	or b			;9c24
	ld b,090h		;9c25
	add a,e			;9c27
	or b			;9c28
	ld d,b			;9c29
	or b			;9c2a
	inc bc			;9c2b
	sub b			;9c2c
	inc bc			;9c2d
	djnz $-124		;9c2e
	ld (00413h),a		;9c30
	sub b			;9c33
	adc a,h			;9c34
	or b			;9c35
	ld d,b			;9c36
	or b			;9c37
	djnz l9c6ch		;9c38
	ld b,d			;9c3a
	ld b,d			;9c3b
	pop af			;9c3c
	pop af			;9c3d
	ld hl,06321h		;9c3e
	inc bc			;9c41
	or b			;9c42
	add a,d			;9c43
	ld d,b			;9c44
	sub l			;9c45
	ld c,090h		;9c46
	add a,h			;9c48
	or b			;9c49
	ld d,b			;9c4a
	ld d,b			;9c4b
	or b			;9c4c
	inc bc			;9c4d
	sub b			;9c4e
	add a,e			;9c4f
	or b			;9c50
	ld d,b			;9c51
	or b			;9c52
	djnz l9be5h		;9c53
l9c55h:
	add a,e			;9c55
	pop de			;9c56
	add a,e			;9c57
	pop de			;9c58
	nop			;9c59
	sub b			;9c5a
	add a,e			;9c5b
	adc a,(hl)		;9c5c
	defb 0fdh,0f7h,09fh ;illegal sequence	;9c5d
	rst 38h			;9c60
	cp 0f8h			;9c61
	ret m			;9c63
	cp 0ffh			;9c64
	add a,a			;9c66
	add a,c			;9c67
	inc c			;9c68
	ld c,h			;9c69
	add a,c			;9c6a
	nop			;9c6b
l9c6ch:
	ld b,0c7h		;9c6c
	dec b			;9c6e
	ret nz			;9c6f
	ld (bc),a		;9c70
	rst 0			;9c71
	ld (bc),a		;9c72
	rst 20h			;9c73
	add a,c			;9c74
	rst 0			;9c75
	nop			;9c76
	xor b			;9c77
	ld a,a			;9c78
	rst 38h			;9c79
	nop			;9c7a
	nop			;9c7b
	jp 01881h		;9c7c
	jp 0e7c3h		;9c7f
	ld a,(hl)		;9c82
	inc a			;9c83
	ret nz			;9c84
	inc a			;9c85
	inc bc			;9c86
	ret po			;9c87
	ld a,a			;9c88
	rst 38h			;9c89
	nop			;9c8a
	nop			;9c8b
	rst 38h			;9c8c
	nop			;9c8d
	inc a			;9c8e
	ld a,(hl)		;9c8f
	jr l9c55h		;9c90
	jp 07ee7h		;9c92
	inc a			;9c95
	inc bc			;9c96
	ret po			;9c97
	ld a,(hl)		;9c98
	jr $-59			;9c99
	jp 07ee7h		;9c9b
	inc a			;9c9e
	ret po			;9c9f
	nop			;9ca0
	add a,a			;9ca1
	ld (04242h),a		;9ca2
	ld de,0f6f6h		;9ca5
	and 003h		;9ca8
	ld h,l			;9caa
	add a,d			;9cab
	ld h,d			;9cac
	ld h,c			;9cad
	inc bc			;9cae
	ld sp,02184h		;9caf
	ld (04242h),a		;9cb2
	inc bc			;9cb5
sub_9cb6h:
	pop af			;9cb6
	ld (bc),a		;9cb7
	ld h,d			;9cb8
	add a,c			;9cb9
	and 003h		;9cba
	ld h,l			;9cbc
	add a,(hl)		;9cbd
	ld h,e			;9cbe
	ld h,c			;9cbf
	ld sp,06321h		;9cc0
	and 003h		;9cc3
	ld h,l			;9cc5
	ld (bc),a		;9cc6
	ld h,d			;9cc7
	add a,c			;9cc8
	ld hl,l9000h		;9cc9
	add a,028h		;9ccc
	ld sp,0ffffh		;9cce
	dec c			;9cd1
	sub d			;9cd2
	ld h,c			;9cd3
	ld h,(hl)		;9cd4
	adc a,b			;9cd5
	ld d,0ffh		;9cd6
	rst 38h			;9cd8
	ld b,a			;9cd9
	adc a,b			;9cda
	jr nc,l9cddh		;9cdb
l9cddh:
	add a,d			;9cdd
	ret nz			;9cde
	rst 20h			;9cdf
	inc b			;9ce0
	call pe,0e784h		;9ce1
	ret nz			;9ce4
	ret nz			;9ce5
	rst 20h			;9ce6
	inc b			;9ce7
	call pe,0e782h		;9ce8
	ret nz			;9ceb
	nop			;9cec
	add a,l			;9ced
	ld b,08fh		;9cee
	ret po			;9cf0
	call m,00a0fh		;9cf1
	nop			;9cf4
	ld (bc),a		;9cf5
	rrca			;9cf6
	rlca			;9cf7
sub_9cf8h:
	nop			;9cf8
	add a,e			;9cf9
	ccf			;9cfa
	rrca			;9cfb
	inc bc			;9cfc
	ex af,af'		;9cfd
	nop			;9cfe
	ld (bc),a		;9cff
	rrca			;9d00
	add a,e			;9d01
	ret p			;9d02
	otir			;9d03
	rlca			;9d05
	nop			;9d06
	ld (bc),a		;9d07
	ld bc,00383h		;9d08
	rlca			;9d0b
	rlca			;9d0c
	ex af,af'		;9d0d
	rrca			;9d0e
	inc b			;9d0f
	rlca			;9d10
	ld (bc),a		;9d11
	inc bc			;9d12
	add a,c			;9d13
	ld bc,00008h		;9d14
	add a,l			;9d17
l9d18h:
	ld bc,00303h		;9d18
	rlca			;9d1b
	rlca			;9d1c
	rlca			;9d1d
	nop			;9d1e
	add a,c			;9d1f
	rlca			;9d20
	dec b			;9d21
	nop			;9d22
	add a,e			;9d23
	rrca			;9d24
	rst 38h			;9d25
	rst 38h			;9d26
	inc b			;9d27
	nop			;9d28
	add a,h			;9d29
	ld bc,00703h		;9d2a
	rlca			;9d2d
	ex af,af'		;9d2e
	rrca			;9d2f
	inc b			;9d30
	rlca			;9d31
	ld (bc),a		;9d32
	inc bc			;9d33
	add a,c			;9d34
	ld bc,00004h		;9d35
	adc a,l			;9d38
	rlca			;9d39
	ccf			;9d3a
	ld a,a			;9d3b
	rst 38h			;9d3c
	ei			;9d3d
	inc bc			;9d3e
	inc bc			;9d3f
	rlca			;9d40
	rlca			;9d41
	rrca			;9d42
	rra			;9d43
	ld a,a			;9d44
	ld sp,hl		;9d45
	dec b			;9d46
	nop			;9d47
	add a,(hl)		;9d48
l9d49h:
	rra			;9d49
	ret m			;9d4a
	cp 0fch			;9d4b
	ret p			;9d4d
	ret nz			;9d4e
	dec b			;9d4f
	nop			;9d50
	adc a,d			;9d51
	ld bc,0fff3h		;9d52
	rra			;9d55
	rlca			;9d56
	ld bc,00000h		;9d57
	rlca			;9d5a
	ld bc,0000ah		;9d5b
	add a,l			;9d5e
	rst 38h			;9d5f
	add a,a			;9d60
	ld (hl),b		;9d61
	ret po			;9d62
	ret p			;9d63
	inc c			;9d64
	rst 38h			;9d65
	add a,a			;9d66
	ccf			;9d67
	rrca			;9d68
	call m,0c0ffh		;9d69
	ld a,a			;9d6c
	rrca			;9d6d
	inc b			;9d6e
	nop			;9d6f
	nop			;9d70
	add a,c			;9d71
	ld d,h			;9d72
	inc bc			;9d73
	ld b,e			;9d74
	jr nz,l9db7h		;9d75
	inc bc			;9d77
	ld d,h			;9d78
	add a,c			;9d79
	ld d,c			;9d7a
	ld d,a			;9d7b
	ld d,b			;9d7c
	add a,c			;9d7d
	ld d,h			;9d7e
	rlca			;9d7f
	ld d,b			;9d80
	add a,c			;9d81
	ld d,d			;9d82
	ld b,030h		;9d83
	ld (bc),a		;9d85
	ld b,e			;9d86
	ex af,af'		;9d87
	jr nz,l9d8dh		;9d88
	ld hl,02081h		;9d8a
l9d8dh:
	ld de,00530h		;9d8d
	ld (0030dh),a		;9d90
	ld (bc),a		;9d93
	jr nz,l9d18h		;9d94
	ld (00520h),a		;9d96
	jr nc,l9d9bh		;9d99
l9d9bh:
	and l			;9d9b
	inc bc			;9d9c
	rlca			;9d9d
	ld e,0fch		;9d9e
	ld h,c			;9da0
	add a,d			;9da1
	rst 0			;9da2
	jr nc,l9d49h		;9da3
	and h			;9da5
	call m,sub_9cb6h	;9da6
	sbc a,h			;9da9
	cp h			;9daa
	ld a,(hl)		;9dab
	rst 28h			;9dac
	rst 0			;9dad
	add a,0c3h		;9dae
	add a,a			;9db0
	add a,a			;9db1
	adc a,b			;9db2
	sub b			;9db3
	sbc a,h			;9db4
	sbc a,h			;9db5
	cp h			;9db6
l9db7h:
	ld a,(hl)		;9db7
	rst 28h			;9db8
	rst 0			;9db9
	add a,0c3h		;9dba
	add a,a			;9dbc
	add a,a			;9dbd
	adc a,b			;9dbe
	sub b			;9dbf
	or c			;9dc0
	inc bc			;9dc1
	ret po			;9dc2
	add a,c			;9dc3
	or c			;9dc4
	inc bc			;9dc5
	ret po			;9dc6
	xor h			;9dc7
	ret p			;9dc8
	ret m			;9dc9
	call m,0f6d8h		;9dca
	call pe,0dac8h		;9dcd
	and h			;9dd0
	and h			;9dd1
	call m,0f0b6h		;9dd2
	ret m			;9dd5
	call m,006d8h		;9dd6
	adc a,a			;9dd9
	ret po			;9dda
	call m,sub_85d0h	;9ddb
	inc bc			;9dde
	rlca			;9ddf
	ld d,00eh		;9de0
	ld b,00eh		;9de2
	ld d,00eh		;9de4
	ld b,00eh		;9de6
	rlca			;9de8
	inc bc			;9de9
	adc a,e			;9dea
	ld sp,0f8c0h		;9deb
	ld a,a			;9dee
	add a,a			;9def
	nop			;9df0
	add a,a			;9df1
	rst 0			;9df2
	adc a,a			;9df3
	inc b			;9df4
	ld bc,l8102h		;9df5
	adc a,d			;9df8
	pop bc			;9df9
	ld h,e			;9dfa
	nop			;9dfb
	nop			;9dfc
	ld b,b			;9dfd
	ld h,b			;9dfe
	ld h,b			;9dff
	ret nz			;9e00
	add a,b			;9e01
	ex af,af'		;9e02
	ld b,000h		;9e03
	add a,(hl)		;9e05
	ld b,b			;9e06
	ld h,b			;9e07
	ld h,b			;9e08
	ret nz			;9e09
	add a,b			;9e0a
	ex af,af'		;9e0b
	inc b			;9e0c
	nop			;9e0d
	add a,e			;9e0e
	pop hl			;9e0f
	ld (hl),e		;9e10
	ld e,005h		;9e11
	nop			;9e13
	add a,h			;9e14
	di			;9e15
	pop bc			;9e16
	add a,c			;9e17
	add a,c			;9e18
	inc b			;9e19
	ld bc,l8102h		;9e1a
	adc a,d			;9e1d
l9e1eh:
	pop bc			;9e1e
	ld h,e			;9e1f
	ret nz			;9e20
	cp b			;9e21
	cp 01ch			;9e22
	nop			;9e24
	sbc a,c			;9e25
	adc a,a			;9e26
	add a,a			;9e27
	inc b			;9e28
	nop			;9e29
	add a,h			;9e2a
	add a,h			;9e2b
	ex af,af'		;9e2c
	ld bc,0040fh		;9e2d
	rst 38h			;9e30
	sbc a,b			;9e31
	ld bc,07813h		;9e32
	call nz,sub_8382h	;9e35
	add a,e			;9e38
	rst 20h			;9e39
	inc c			;9e3a
	jr nc,l9e1eh		;9e3b
	jp 0eec7h		;9e3d
	sbc a,b			;9e40
	nop			;9e41
	jr $+18			;9e42
	jr nz,l9e66h		;9e44
	nop			;9e46
	sbc a,c			;9e47
	adc a,a			;9e48
	add a,a			;9e49
	inc b			;9e4a
	nop			;9e4b
	adc a,h			;9e4c
	ld bc,07813h		;9e4d
	call nz,00000h		;9e50
	ld hl,l8443h		;9e53
	ex af,af'		;9e56
	ld bc,0080fh		;9e57
	nop			;9e5a
	sub a			;9e5b
	add a,d			;9e5c
	add a,e			;9e5d
	add a,e			;9e5e
	rst 20h			;9e5f
	rst 38h			;9e60
	ret nz			;9e61
	ld a,a			;9e62
	rrca			;9e63
	nop			;9e64
	rra			;9e65
l9e66h:
	ret m			;9e66
	cp 01eh			;9e67
	ld e,0feh		;9e69
	call m,070c7h		;9e6b
	ret po			;9e6e
	ret po			;9e6f
	pop hl			;9e70
	ld (hl),e		;9e71
	ld e,005h		;9e72
	nop			;9e74
	xor 0c0h		;9e75
	ret po			;9e77
	jr nc,l9e92h		;9e78
	inc bc			;9e7a
	rrca			;9e7b
	ld e,038h		;9e7c
	jr c,$+114		;9e7e
	ret po			;9e80
	ret po			;9e81
	jr l9efch		;9e82
	ret p			;9e84
	ret po			;9e85
	ret po			;9e86
	add a,b			;9e87
	nop			;9e88
	nop			;9e89
	inc e			;9e8a
	ld bc,00e00h		;9e8b
	jr $+18			;9e8e
	jr nz,l9eb2h		;9e90
l9e92h:
	rst 0			;9e92
	xor 098h		;9e93
	nop			;9e95
	ld bc,0fff3h		;9e96
	rra			;9e99
	nop			;9e9a
	rrca			;9e9b
	rst 38h			;9e9c
	rst 38h			;9e9d
	call m,sub_87e9h	;9e9e
	rst 20h			;9ea1
	ld e,01eh		;9ea2
	cp 0fch			;9ea4
	rlca			;9ea6
	sbc a,(hl)		;9ea7
	call z,098c0h		;9ea8
	call z,068c4h		;9eab
	ld (hl),b		;9eae
	ld a,(hl)		;9eaf
	ld e,c			;9eb0
	ld e,c			;9eb1
l9eb2h:
	ld a,h			;9eb2
	ld (0a6a3h),hl		;9eb3
	inc e			;9eb6
	ld bc,00e00h		;9eb7
	ld l,(hl)		;9eba
	and (hl)		;9ebb
	and 09ch		;9ebc
	inc bc			;9ebe
	rrca			;9ebf
	ld e,038h		;9ec0
	or a			;9ec2
	call 0609eh		;9ec3
	di			;9ec6
	pop bc			;9ec7
	add a,c			;9ec8
	add a,c			;9ec9
	ld (hl),b		;9eca
	ld a,(hl)		;9ecb
	ld e,c			;9ecc
	ld e,c			;9ecd
	ld l,(hl)		;9ece
	and (hl)		;9ecf
	and 09ch		;9ed0
	ccf			;9ed2
	ld a,a			;9ed3
	rst 38h			;9ed4
	ei			;9ed5
	or 0ech			;9ed6
	ret z			;9ed8
	jp c,l8261h		;9ed9
	rst 0			;9edc
	jr nc,l9f1eh		;9edd
	rrca			;9edf
	inc bc			;9ee0
	nop			;9ee1
	ret po			;9ee2
	add a,b			;9ee3
	inc b			;9ee4
	nop			;9ee5
	rst 10h			;9ee6
	ld hl,00743h		;9ee7
	sbc a,(hl)		;9eea
	call z,098c0h		;9eeb
	call z,068c4h		;9eee
	ret p			;9ef1
	pop hl			;9ef2
	ex (sp),hl		;9ef3
	add a,0b8h		;9ef4
	ret nz			;9ef6
	ld a,l			;9ef7
	add a,098h		;9ef8
	ld a,(hl)		;9efa
	pop hl			;9efb
l9efch:
	add a,c			;9efc
	inc bc			;9efd
	rlca			;9efe
	ld e,0fch		;9eff
	cp b			;9f01
l9f02h:
	ret nz			;9f02
	ld a,l			;9f03
	add a,098h		;9f04
	ld a,(hl)		;9f06
	pop hl			;9f07
	add a,c			;9f08
	ret nz			;9f09
	cp b			;9f0a
	cp 01ch			;9f0b
	jp nz,080c0h		;9f0d
	rst 38h			;9f10
	ld a,b			;9f11
	ret m			;9f12
	ret m			;9f13
	add a,b			;9f14
	inc c			;9f15
	jr nc,$-29		;9f16
	jp 0c0c2h		;9f18
	add a,b			;9f1b
	rst 38h			;9f1c
	ld a,b			;9f1d
l9f1eh:
	ret m			;9f1e
	ret m			;9f1f
	add a,b			;9f20
	rrca			;9f21
	rra			;9f22
	ld a,a			;9f23
	ld sp,hl		;9f24
	ret p			;9f25
	pop hl			;9f26
	ex (sp),hl		;9f27
	add a,00fh		;9f28
	ret p			;9f2a
	otir			;9f2b
	or a			;9f2d
	call 0609eh		;9f2e
	add a,b			;9f31
	pop af			;9f32
	ret nz			;9f33
	ret m			;9f34
	ret nz			;9f35
	ret m			;9f36
	ld a,a			;9f37
	add a,a			;9f38
	ret po			;9f39
	ret m			;9f3a
	ret po			;9f3b
	ret m			;9f3c
	ret p			;9f3d
	inc bc			;9f3e
	rst 38h			;9f3f
	or b			;9f40
	nop			;9f41
	add a,a			;9f42
	ld (hl),b		;9f43
	ret po			;9f44
	ld a,h			;9f45
	ld (0a6a3h),hl		;9f46
	ret nz			;9f49
	ret po			;9f4a
	jr nc,l9f65h		;9f4b
	jr $+122		;9f4d
	ret p			;9f4f
	ret po			;9f50
	call m,sub_87e9h	;9f51
	rst 20h			;9f54
	ret nc			;9f55
	add a,l			;9f56
	inc bc			;9f57
	rlca			;9f58
	rlca			;9f59
	inc bc			;9f5a
	adc a,e			;9f5b
	ld sp,0f180h		;9f5c
	ret nz			;9f5f
	ret m			;9f60
	rst 38h			;9f61
	add a,a			;9f62
	rst 0			;9f63
	adc a,a			;9f64
l9f65h:
	adc a,h			;9f65
	ret m			;9f66
	ret po			;9f67
	ret m			;9f68
	adc a,h			;9f69
	ret m			;9f6a
	ret po			;9f6b
	ret m			;9f6c
	ret po			;9f6d
	ret m			;9f6e
	ret po			;9f6f
	ret m			;9f70
	nop			;9f71
	add a,d			;9f72
	ld d,d			;9f73
	ld d,e			;9f74
	ex af,af'		;9f75
	ld d,h			;9f76
	dec h			;9f77
	ld b,e			;9f78
	rlca			;9f79
	ld d,h			;9f7a
	dec b			;9f7b
	ld b,e			;9f7c
	ld (bc),a		;9f7d
	ld d,h			;9f7e
	dec b			;9f7f
	ld b,e			;9f80
	inc c			;9f81
	ld d,e			;9f82
	rlca			;9f83
	ld b,e			;9f84
	add a,c			;9f85
	ld (02109h),a		;9f86
	dec de			;9f89
	ld sp,04108h		;9f8a
	add a,c			;9f8d
	ld sp,02108h		;9f8e
	add a,e			;9f91
	ld sp,03243h		;9f92
	ld b,a			;9f95
	ld hl,03282h		;9f96
	jr nz,l9f9eh		;9f99
	jr nc,l9f9fh		;9f9b
	ld b,e			;9f9d
l9f9eh:
	add a,c			;9f9e
l9f9fh:
	ld d,h			;9f9f
	inc b			;9fa0
	dec d			;9fa1
	inc bc			;9fa2
	ld b,c			;9fa3
	ld (bc),a		;9fa4
	ld sp,04107h		;9fa5
	add a,c			;9fa8
	ld d,c			;9fa9
	inc b			;9faa
	ld b,c			;9fab
	inc bc			;9fac
	ld d,c			;9fad
	inc b			;9fae
	ld b,c			;9faf
	inc bc			;9fb0
	ld d,c			;9fb1
	dec b			;9fb2
	ld b,c			;9fb3
	ld c,021h		;9fb4
	ld (bc),a		;9fb6
	jr nz,l9fbch		;9fb7
	ld d,b			;9fb9
	add a,l			;9fba
	ld d,c			;9fbb
l9fbch:
	ld d,h			;9fbc
	ld d,h			;9fbd
	ld b,e			;9fbe
	ld d,h			;9fbf
	inc bc			;9fc0
	dec d			;9fc1
	add a,a			;9fc2
	ld b,d			;9fc3
	ld d,e			;9fc4
	ld b,c			;9fc5
	ld sp,04131h		;9fc6
	ld d,c			;9fc9
	inc b			;9fca
	ld d,d			;9fcb
	add a,(hl)		;9fcc
	ld b,d			;9fcd
	ld (02132h),a		;9fce
	ld sp,00341h		;9fd1
	ld hl,04290h		;9fd4
	ld b,c			;9fd7
	ld b,c			;9fd8
	ld sp,04141h		;9fd9
	ld d,c			;9fdc
	ld d,c			;9fdd
	ld d,h			;9fde
	ld d,h			;9fdf
	ld b,e			;9fe0
	ld b,e			;9fe1
	ld b,c			;9fe2
	ld b,c			;9fe3
	ld sp,00321h		;9fe4
	ld d,d			;9fe7
	ld (bc),a		;9fe8
	ld b,d			;9fe9
	ld (bc),a		;9fea
	ld b,c			;9feb
	add a,c			;9fec
	ld sp,05003h		;9fed
	add hl,bc		;9ff0
l9ff1h:
	ld d,h			;9ff1
	inc b			;9ff2
	ld b,b			;9ff3
	ld b,041h		;9ff4
	ld (bc),a		;9ff6
	ld hl,04287h		;9ff7
	ld d,e			;9ffa
	ld b,c			;9ffb
	ld sp,04131h		;9ffc
	ld d,c			;9fff
