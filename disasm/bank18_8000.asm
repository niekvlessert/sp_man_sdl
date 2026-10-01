; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank18_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank18.bin

	org 08000h

	adc a,b			;8000
	rst 38h			;8001
	ccf			;8002
	ret po			;8003
l8004h:
	ld (hl),e		;8004
l8005h:
	dec sp			;8005
	ld d,00dh		;8006
	dec a			;8008
	inc bc			;8009
	nop			;800a
	adc a,l			;800b
	ret po			;800c
	ret p			;800d
	jr c,$-38		;800e
	call c,01800h		;8010
	inc l			;8013
	ld l,01ah		;8014
	dec c			;8016
	inc de			;8017
	ccf			;8018
	inc bc			;8019
	nop			;801a
	add a,l			;801b
	ret po			;801c
	ret p			;801d
	ret pe			;801e
l801fh:
	call c,003dch		;801f
	nop			;8022
	adc a,l			;8023
	rlca			;8024
	rrca			;8025
	rla			;8026
	dec sp			;8027
	dec sp			;8028
	nop			;8029
	jr l8060h		;802a
	ld (hl),h		;802c
	ld e,b			;802d
	or b			;802e
	ret z			;802f
	call m,00003h		;8030
	sbc a,d			;8033
	rlca			;8034
	rrca			;8035
	inc e			;8036
	dec de			;8037
	dec sp			;8038
	nop			;8039
	inc bc			;803a
	rlca			;803b
	adc a,0dch		;803c
	ld l,b			;803e
	or b			;803f
	cp h			;8040
	dec a			;8041
	dec c			;8042
	ld d,03bh		;8043
	ld (hl),e		;8045
	ret po			;8046
	ret nz			;8047
	nop			;8048
	call c,038d8h		;8049
	ret p			;804c
	ret po			;804d
	inc bc			;804e
	nop			;804f
	adc a,l			;8050
	ccf			;8051
	inc de			;8052
	dec c			;8053
	ld a,(de)		;8054
	ld l,02ch		;8055
	jr l8059h		;8057
l8059h:
	call c,0e8dch		;8059
	ret p			;805c
	ret po			;805d
	inc bc			;805e
	nop			;805f
l8060h:
	ld (bc),a		;8060
	dec sp			;8061
	add a,e			;8062
	rla			;8063
	rrca			;8064
	rlca			;8065
	inc bc			;8066
	nop			;8067
	adc a,l			;8068
	call m,0b0c8h		;8069
	ld e,b			;806c
	ld (hl),h		;806d
	inc (hl)		;806e
	jr l8071h		;806f
l8071h:
	dec sp			;8071
	dec de			;8072
	inc e			;8073
	rrca			;8074
	rlca			;8075
	inc bc			;8076
	nop			;8077
sub_8078h:
	adc a,b			;8078
	cp h			;8079
	or b			;807a
	ld l,b			;807b
	call c,007ceh		;807c
	inc bc			;807f
	nop			;8080
	nop			;8081
	ld (bc),a		;8082
	ld c,003h		;8083
sub_8085h:
	add a,b			;8085
	add a,d			;8086
	ret nc			;8087
	add a,b			;8088
	inc b			;8089
	ret nc			;808a
	ld (bc),a		;808b
	ret po			;808c
	ld (bc),a		;808d
	add a,b			;808e
	ld (bc),a		;808f
	ret nc			;8090
	add a,d			;8091
	ret po			;8092
	add a,b			;8093
	inc bc			;8094
	ret nc			;8095
	add a,c			;8096
	add a,b			;8097
	ld b,0e0h		;8098
	add a,d			;809a
	add a,b			;809b
	ret po			;809c
	inc b			;809d
	ret nc			;809e
	ld (bc),a		;809f
	ret po			;80a0
	add a,(hl)		;80a1
	add a,b			;80a2
	ret po			;80a3
	ret nc			;80a4
	ret nc			;80a5
	ret po			;80a6
	add a,b			;80a7
	inc bc			;80a8
	ret nc			;80a9
	dec b			;80aa
	add a,b			;80ab
	ld (bc),a		;80ac
	ret po			;80ad
	ld (bc),a		;80ae
	add a,b			;80af
	ld (bc),a		;80b0
	ret nc			;80b1
	add a,c			;80b2
	ret po			;80b3
	inc bc			;80b4
	add a,b			;80b5
	add a,(hl)		;80b6
	ret nc			;80b7
	add a,b			;80b8
	ret nc			;80b9
	ret nc			;80ba
	add a,b			;80bb
	ret nc			;80bc
	inc bc			;80bd
	add a,b			;80be
	ld (bc),a		;80bf
	ret po			;80c0
	add a,e			;80c1
	ret nc			;80c2
	add a,b			;80c3
	add a,b			;80c4
	ld b,0e0h		;80c5
	add a,c			;80c7
	add a,b			;80c8
	inc bc			;80c9
	ret nc			;80ca
	add a,(hl)		;80cb
	add a,b			;80cc
	ret po			;80cd
	ret po			;80ce
	ret nc			;80cf
	ret po			;80d0
	add a,b			;80d1
	dec b			;80d2
	ret po			;80d3
	add a,e			;80d4
	ret nc			;80d5
	ret po			;80d6
	add a,b			;80d7
	dec b			;80d8
	ret po			;80d9
	ld (bc),a		;80da
	add a,b			;80db
	inc bc			;80dc
	ret nc			;80dd
	add a,(hl)		;80de
	add a,b			;80df
	ret po			;80e0
	ret po			;80e1
	ret nc			;80e2
	add a,b			;80e3
	add a,b			;80e4
	dec b			;80e5
	ret po			;80e6
	add a,e			;80e7
	ret nc			;80e8
	add a,b			;80e9
	ret nc			;80ea
	inc bc			;80eb
	add a,b			;80ec
	ld (bc),a		;80ed
	ret po			;80ee
	nop			;80ef
	ld (bc),a		;80f0
	ld bc,03982h		;80f1
	rst 0			;80f4
	inc bc			;80f5
	ld b,l			;80f6
	add a,c			;80f7
	add hl,sp		;80f8
	dec b			;80f9
	ld (de),a		;80fa
	ld (bc),a		;80fb
	ld e,002h		;80fc
	nop			;80fe
l80ffh:
	ld (bc),a		;80ff
	rst 38h			;8100
l8101h:
	add a,l			;8101
	nop			;8102
	ld a,l			;8103
	ld bc,00001h		;8104
	inc bc			;8107
	ld d,c			;8108
	ld (bc),a		;8109
	ld (hl),c		;810a
	inc bc			;810b
	nop			;810c
	dec bc			;810d
	ld l,b			;810e
	add a,l			;810f
	rst 38h			;8110
	ld sp,031cfh		;8111
	rst 38h			;8114
	rlca			;8115
	ld bc,0ff81h		;8116
	dec bc			;8119
	ld bc,0ff81h		;811a
	inc b			;811d
	ld bc,l8005h		;811e
	ld (bc),a		;8121
	nop			;8122
	add a,c			;8123
	rst 38h			;8124
	ex af,af'		;8125
	add a,b			;8126
	dec b			;8127
	ld bc,00002h		;8128
	add a,c			;812b
	rst 38h			;812c
	ex af,af'		;812d
	ld bc,01182h		;812e
	add hl,sp		;8131
	ld c,029h		;8132
	add a,c			;8134
	rst 38h			;8135
	ld b,081h		;8136
	ld (bc),a		;8138
	rst 38h			;8139
	ld b,011h		;813a
	ld (bc),a		;813c
	rst 38h			;813d
	inc b			;813e
	nop			;813f
	ld (bc),a		;8140
	rst 38h			;8141
	add a,c			;8142
	nop			;8143
	rlca			;8144
	ld d,l			;8145
	ld (bc),a		;8146
	rst 38h			;8147
	adc a,b			;8148
	add a,l			;8149
	rst 38h			;814a
	sub c			;814b
	sub c			;814c
	sbc a,a			;814d
	sub l			;814e
	rst 38h			;814f
	rst 38h			;8150
	inc bc			;8151
	add a,c			;8152
	adc a,h			;8153
	rst 38h			;8154
	adc a,l			;8155
	di			;8156
	adc a,l			;8157
	and a			;8158
	and l			;8159
	and l			;815a
	ei			;815b
	sub a			;815c
	rst 38h			;815d
	sub l			;815e
	rst 38h			;815f
	inc b			;8160
	sub l			;8161
	add a,l			;8162
	ld b,b			;8163
	ld h,b			;8164
	rra			;8165
	rra			;8166
	rst 38h			;8167
	rlca			;8168
	ld bc,0f403h		;8169
	adc a,l			;816c
	rst 38h			;816d
	add hl,hl		;816e
	cpl			;816f
	add hl,hl		;8170
	rst 38h			;8171
	add hl,sp		;8172
	add a,e			;8173
	cp 02ah			;8174
	ld hl,(0ff3fh)		;8176
	nop			;8179
	ex af,af'		;817a
	push de			;817b
	adc a,b			;817c
	rst 18h			;817d
	ld d,c			;817e
	pop de			;817f
	ld d,c			;8180
	pop de			;8181
	ld d,c			;8182
	pop de			;8183
	ld d,c			;8184
	ex af,af'		;8185
	di			;8186
	ex af,af'		;8187
	sbc a,(hl)		;8188
	ld (bc),a		;8189
	inc b			;818a
	ld (bc),a		;818b
	add a,h			;818c
	add a,c			;818d
	rst 38h			;818e
	inc bc			;818f
	add a,b			;8190
	add a,c			;8191
	jr nz,l8197h		;8192
	ld hl,0ff84h		;8194
l8197h:
	cp 0feh			;8197
	nop			;8199
	rlca			;819a
	ld bc,0ff81h		;819b
	ex af,af'		;819e
	ld bc,0aa03h		;819f
	ld (bc),a		;81a2
	rst 38h			;81a3
	ld (bc),a		;81a4
	add a,b			;81a5
	adc a,c			;81a6
	rst 38h			;81a7
	nop			;81a8
	nop			;81a9
	inc a			;81aa
	rst 0			;81ab
	add hl,sp		;81ac
	rst 0			;81ad
	add a,e			;81ae
	rst 0			;81af
	inc bc			;81b0
	rlca			;81b1
	inc bc			;81b2
	call p,00002h		;81b3
	inc bc			;81b6
	ex de,hl		;81b7
	add a,c			;81b8
	dec bc			;81b9
	inc b			;81ba
	ei			;81bb
	ld (bc),a		;81bc
	rst 38h			;81bd
	add a,h			;81be
	nop			;81bf
	add a,c			;81c0
	add a,c			;81c1
	rst 38h			;81c2
	rlca			;81c3
	nop			;81c4
	ld (bc),a		;81c5
	rst 38h			;81c6
	add a,c			;81c7
	nop			;81c8
	rlca			;81c9
	ld bc,0ff81h		;81ca
	ex af,af'		;81cd
	push de			;81ce
	inc bc			;81cf
	ld d,l			;81d0
	add a,l			;81d1
	rst 38h			;81d2
	cp 0feh			;81d3
	nop			;81d5
	nop			;81d6
	inc b			;81d7
	jp pe,0e88dh		;81d8
	ex (sp),hl		;81db
	rst 30h			;81dc
	inc b			;81dd
	ld a,a			;81de
	ld h,b			;81df
	rra			;81e0
	rra			;81e1
	ld a,a			;81e2
	ld h,b			;81e3
	ld h,b			;81e4
	nop			;81e5
	nop			;81e6
	rlca			;81e7
	xor 007h		;81e8
	defb 0edh ;next byte illegal after ed	;81ea
	adc a,e			;81eb
	nop			;81ec
	ld a,h			;81ed
	cp a			;81ee
	cp c			;81ef
	xor c			;81f0
	xor c			;81f1
	ld sp,hl		;81f2
	ld bc,0f401h		;81f3
	call p,00703h		;81f6
	ld a,(bc)		;81f9
	call p,0ff81h		;81fa
	rlca			;81fd
	add a,b			;81fe
	add a,c			;81ff
sub_8200h:
	rst 38h			;8200
	inc b			;8201
	ld d,c			;8202
	add a,h			;8203
	pop de			;8204
	adc a,(hl)		;8205
	sbc a,040h		;8206
	inc bc			;8208
	rst 10h			;8209
	add a,c			;820a
	ret nc			;820b
	inc b			;820c
	rst 18h			;820d
	rlca			;820e
	xor (hl)		;820f
	adc a,c			;8210
	nop			;8211
	inc c			;8212
	ld (de),a		;8213
	inc de			;8214
	ld (de),a		;8215
	inc de			;8216
	ld (de),a		;8217
	inc de			;8218
	ld (de),a		;8219
	djnz $+87		;821a
	adc a,b			;821c
	ld b,l			;821d
	ld a,l			;821e
	ld b,l			;821f
	ld a,l			;8220
	ld b,l			;8221
	ld a,l			;8222
	ld b,l			;8223
	rst 38h			;8224
	nop			;8225
	add a,a			;8226
	call p,0f3f3h		;8227
	push af			;822a
	call p,0f3f4h		;822b
	rlca			;822e
	call p,05404h		;822f
	ld (bc),a		;8232
	ex (sp),hl		;8233
	add a,e			;8234
	ld d,h			;8235
	call po,0055fh		;8236
	call p,05405h		;8239
	ld (bc),a		;823c
	ld b,e			;823d
	sub c			;823e
	rst 38h			;823f
	adc a,l			;8240
	rst 38h			;8241
	adc a,l			;8242
	rst 38h			;8243
	ret pe			;8244
	rst 38h			;8245
	ret pe			;8246
	ret m			;8247
	ret m			;8248
	ld sp,hl		;8249
	ret m			;824a
	ret m			;824b
	push af			;824c
	cp 0f5h			;824d
	call p,0f305h		;824f
	add a,h			;8252
	call p,0fef5h		;8253
	push af			;8256
	rlca			;8257
	call p,0f581h		;8258
	inc b			;825b
	call p,0fe85h		;825c
	push af			;825f
	call p,05454h		;8260
	inc bc			;8263
	di			;8264
	ex af,af'		;8265
	call p,0fe85h		;8266
	push af			;8269
	call p,05454h		;826a
	inc bc			;826d
	di			;826e
	dec d			;826f
	call p,0f581h		;8270
	dec bc			;8273
	di			;8274
	add a,h			;8275
	push af			;8276
	cp 0f5h			;8277
	call p,0f306h		;8279
	ld (bc),a		;827c
	ld d,h			;827d
	ld (bc),a		;827e
	push hl			;827f
	add a,(hl)		;8280
	defb 0fdh,0d8h,08eh ;illegal sequence	;8281
	adc a,(hl)		;8284
	ret c			;8285
l8286h:
	ret c			;8286
	dec b			;8287
	defb 0fdh,081h,0f8h ;illegal sequence	;8288
	dec b			;828b
	defb 0fdh,081h,0f8h ;illegal sequence	;828c
	inc b			;828f
	defb 0fdh,087h,0f9h ;illegal sequence	;8290
	defb 0fdh,0f8h,0fdh ;illegal sequence	;8293
	ld sp,iy		;8296
	ret c			;8298
	inc bc			;8299
	add a,(iy-002h)		;829a
	ret m			;829d
	ret m			;829e
	defb 0fdh,054h ;ld d,iyh	;829f
	ld b,e			;82a1
	ld b,0f3h		;82a2
	add a,a			;82a4
	call p,0fef5h		;82a5
	push af			;82a8
	push hl			;82a9
	ld d,h			;82aa
	ld b,e			;82ab
	dec b			;82ac
	ret m			;82ad
	sbc a,e			;82ae
	call p,0f4f3h		;82af
	call p,0f5f5h		;82b2
	push hl			;82b5
	push hl			;82b6
	call p,0f5f4h		;82b7
	cp 0feh			;82ba
	push af			;82bc
	call p,0f3f3h		;82bd
	call p,0fef5h		;82c0
	push af			;82c3
	call p,0f3f3h		;82c4
	ld b,e			;82c7
	ld d,e			;82c8
	ex (sp),hl		;82c9
	inc bc			;82ca
	ld d,e			;82cb
	add a,l			;82cc
	ld b,e			;82cd
	ccf			;82ce
	ld b,e			;82cf
	ld d,e			;82d0
	ex (sp),hl		;82d1
	inc bc			;82d2
	ld d,e			;82d3
	add a,e			;82d4
	ld b,e			;82d5
	ccf			;82d6
	call p,0f304h		;82d7
	add a,h			;82da
	cp 0f4h			;82db
	inc sp			;82dd
	call p,0f304h		;82de
	add a,c			;82e1
	ex (sp),hl		;82e2
	inc bc			;82e3
	ld b,e			;82e4
	add a,d			;82e5
	push af			;82e6
	cp 003h			;82e7
	call p,0f302h		;82e9
	inc bc			;82ec
	call p,0f58eh		;82ed
	cp 0f5h			;82f0
	call p,0f4f3h		;82f2
	cp 0f3h			;82f5
	di			;82f7
	ld d,h			;82f8
	ld d,h			;82f9
	ld b,e			;82fa
	call p,003f4h		;82fb
	di			;82fe
	add a,c			;82ff
	call p,0f903h		;8300
	adc a,a			;8303
	ld b,e			;8304
	ld c,a			;8305
	ld c,(hl)		;8306
	ld d,h			;8307
	ld d,h			;8308
	ld b,e			;8309
	ld b,e			;830a
	rst 38h			;830b
	ld b,e			;830c
	ld d,e			;830d
	push hl			;830e
	ld d,e			;830f
	ld d,e			;8310
	push hl			;8311
	ld d,h			;8312
	inc b			;8313
	ld c,a			;8314
	add a,c			;8315
	push af			;8316
	ex af,af'		;8317
	call p,04502h		;8318
	ld (bc),a		;831b
	ccf			;831c
	inc b			;831d
	call p,0f582h		;831e
	call p,0f303h		;8321
	add a,l			;8324
	call p,0fef5h		;8325
	cp 0f5h			;8328
	inc bc			;832a
	call p,0fe8dh		;832b
	call p,054f4h		;832e
	ld b,e			;8331
	ld b,e			;8332
	ccf			;8333
	ccf			;8334
	ld c,a			;8335
	ld d,e			;8336
	ex (sp),hl		;8337
	ex (sp),hl		;8338
	ld d,e			;8339
	inc b			;833a
	ld b,e			;833b
	ld (bc),a		;833c
	di			;833d
	ld (bc),a		;833e
	ld b,e			;833f
	dec b			;8340
	ccf			;8341
	add a,h			;8342
	ld c,a			;8343
	ld e,a			;8344
	rst 28h			;8345
	ld e,a			;8346
	rlca			;8347
	ld c,a			;8348
	inc bc			;8349
	ccf			;834a
	inc bc			;834b
	call p,0f502h		;834c
	add a,a			;834f
	cp 0f5h			;8350
	push hl			;8352
	ld d,h			;8353
	ld b,e			;8354
	ld c,a			;8355
	ld c,(hl)		;8356
	inc bc			;8357
	ld d,h			;8358
	add a,c			;8359
	push hl			;835a
	dec b			;835b
	ld d,h			;835c
	add a,(hl)		;835d
	ld b,e			;835e
	push af			;835f
	push af			;8360
	cp 0f5h			;8361
	call p,0f305h		;8363
	add a,l			;8366
	call p,03e35h		;8367
	ld a,053h		;836a
	inc bc			;836c
	ld b,e			;836d
	add a,(hl)		;836e
	ld d,e			;836f
	push hl			;8370
	ld d,e			;8371
	ld d,e			;8372
	push hl			;8373
	ld d,h			;8374
	rlca			;8375
	ld c,a			;8376
	inc bc			;8377
	ccf			;8378
	add a,l			;8379
	call p,0fef5h		;837a
	push af			;837d
	call p,0f303h		;837e
	add a,l			;8381
	call p,0fef5h		;8382
	cp 0f5h			;8385
	inc b			;8387
	call p,0f585h		;8388
	cp 0feh			;838b
	push af			;838d
	call p,0f303h		;838e
	inc b			;8391
	call p,0f302h		;8392
	nop			;8395
	add a,c			;8396
	rst 38h			;8397
	rlca			;8398
	ld bc,0ff81h		;8399
	ld b,080h		;839c
	ld (bc),a		;839e
	rst 38h			;839f
	ld b,001h		;83a0
	add a,c			;83a2
	rst 38h			;83a3
	rlca			;83a4
	ld bc,0ff81h		;83a5
	inc bc			;83a8
	add a,c			;83a9
	add a,c			;83aa
	rst 38h			;83ab
	inc bc			;83ac
	add a,c			;83ad
	ld (bc),a		;83ae
	rst 38h			;83af
	ld c,080h		;83b0
	add a,c			;83b2
	rst 38h			;83b3
	rlca			;83b4
	ld bc,0ff81h		;83b5
	rrca			;83b8
	ld bc,0ff02h		;83b9
	add a,d			;83bc
	add a,b			;83bd
	rst 38h			;83be
	ld (de),a		;83bf
	add a,b			;83c0
	add a,h			;83c1
	rst 38h			;83c2
	add a,b			;83c3
	add a,b			;83c4
	nop			;83c5
	ld b,07fh		;83c6
	ld (bc),a		;83c8
	nop			;83c9
	ld (bc),a		;83ca
	rst 38h			;83cb
	dec b			;83cc
	nop			;83cd
	add a,c			;83ce
	rst 38h			;83cf
	inc b			;83d0
	nop			;83d1
	add a,c			;83d2
	rst 38h			;83d3
	inc bc			;83d4
	nop			;83d5
	rlca			;83d6
	cp 081h			;83d7
	nop			;83d9
	rlca			;83da
	ld a,a			;83db
	add a,c			;83dc
	nop			;83dd
	rlca			;83de
	add a,c			;83df
	add a,c			;83e0
	rst 38h			;83e1
	ld b,009h		;83e2
	inc bc			;83e4
	rst 38h			;83e5
	ld b,080h		;83e6
	ld (bc),a		;83e8
	rst 38h			;83e9
	inc b			;83ea
	nop			;83eb
	inc b			;83ec
	rst 38h			;83ed
	inc b			;83ee
	nop			;83ef
	ld (bc),a		;83f0
	jp m,0ff89h		;83f1
	nop			;83f4
	nop			;83f5
	rst 10h			;83f6
	nop			;83f7
	rst 38h			;83f8
	nop			;83f9
	nop			;83fa
	rst 38h			;83fb
	inc bc			;83fc
	nop			;83fd
	add a,c			;83fe
	rst 38h			;83ff
	inc bc			;8400
	nop			;8401
	add a,c			;8402
	rst 38h			;8403
	inc bc			;8404
	nop			;8405
	add a,c			;8406
	jp m,00006h		;8407
	ld (bc),a		;840a
	rst 38h			;840b
	ld b,000h		;840c
	ld (bc),a		;840e
	jp m,00003h		;840f
	ld b,0ebh		;8412
	add a,h			;8414
	ex (sp),hl		;8415
	ei			;8416
	ei			;8417
	ex (sp),hl		;8418
	ld b,0ebh		;8419
	ld b,07eh		;841b
	add a,d			;841d
	nop			;841e
	sub b			;841f
	inc b			;8420
	dec b			;8421
	ld (bc),a		;8422
	rst 38h			;8423
	ld (bc),a		;8424
	nop			;8425
	dec b			;8426
	ld a,a			;8427
	add a,h			;8428
	rst 38h			;8429
	add a,b			;842a
	add a,b			;842b
	rst 38h			;842c
	dec b			;842d
	nop			;842e
	add a,d			;842f
	rst 38h			;8430
	nop			;8431
	rlca			;8432
	add a,c			;8433
	add a,c			;8434
	rst 38h			;8435
	inc b			;8436
	xor d			;8437
	add a,h			;8438
	rst 38h			;8439
	add a,h			;843a
	add a,h			;843b
	rst 38h			;843c
	ex af,af'		;843d
	sub e			;843e
	add a,c			;843f
	rst 38h			;8440
	ld b,001h		;8441
	add a,c			;8443
	rst 38h			;8444
	rlca			;8445
	add a,b			;8446
	add a,e			;8447
	rst 38h			;8448
	sub b			;8449
	rst 38h			;844a
	ld b,081h		;844b
	add a,d			;844d
	nop			;844e
	rst 38h			;844f
	ld b,080h		;8450
	ld (bc),a		;8452
	rst 38h			;8453
	inc b			;8454
	nop			;8455
	add a,c			;8456
	rst 38h			;8457
	inc bc			;8458
	nop			;8459
	add a,c			;845a
	rst 38h			;845b
	inc bc			;845c
	dec b			;845d
	ld (bc),a		;845e
	rst 38h			;845f
	ld c,005h		;8460
	add a,c			;8462
	rst 38h			;8463
	inc bc			;8464
	dec b			;8465
	add a,e			;8466
	rst 38h			;8467
	nop			;8468
	nop			;8469
	inc bc			;846a
	rst 38h			;846b
	ex af,af'		;846c
	ld bc,l8286h		;846d
	jp nz,0c0ffh		;8470
	rst 38h			;8473
	ret nz			;8474
	inc bc			;8475
	rst 38h			;8476
l8477h:
	sbc a,a			;8477
sub_8478h:
	add a,b			;8478
	rst 38h			;8479
	nop			;847a
	rst 38h			;847b
	nop			;847c
	nop			;847d
	push af			;847e
	nop			;847f
	add a,b			;8480
	rst 38h			;8481
	nop			;8482
	add a,b			;8483
	add a,b			;8484
	rst 38h			;8485
	nop			;8486
	rst 38h			;8487
	dec b			;8488
	dec b			;8489
	rst 38h			;848a
	adc a,c			;848b
	adc a,c			;848c
	rst 38h			;848d
	nop			;848e
	rst 38h			;848f
	ret nz			;8490
	add a,b			;8491
	ret nz			;8492
	rst 38h			;8493
	jp nz,08282h		;8494
	ex af,af'		;8497
	add a,c			;8498
	add a,l			;8499
	nop			;849a
	rst 38h			;849b
	nop			;849c
	nop			;849d
	rst 38h			;849e
	inc bc			;849f
	ld d,l			;84a0
	add a,c			;84a1
	rst 38h			;84a2
	rlca			;84a3
	sub b			;84a4
	add a,c			;84a5
	rst 38h			;84a6
	rlca			;84a7
	inc b			;84a8
	rlca			;84a9
	sub b			;84aa
	add a,c			;84ab
	rst 38h			;84ac
	rlca			;84ad
	inc b			;84ae
	add a,h			;84af
	rst 38h			;84b0
	xor d			;84b1
	rst 38h			;84b2
	rst 38h			;84b3
	inc b			;84b4
	push de			;84b5
	add a,h			;84b6
	nop			;84b7
	ld (hl),b		;84b8
	halt			;84b9
	ld (hl),b		;84ba
	inc bc			;84bb
	ld a,(hl)		;84bc
	inc bc			;84bd
	nop			;84be
	add a,c			;84bf
	rst 38h			;84c0
	ld b,001h		;84c1
	adc a,c			;84c3
	ld sp,030ffh		;84c4
	ld hl,0ff21h		;84c7
	and b			;84ca
	rst 38h			;84cb
	rst 38h			;84cc
	inc bc			;84cd
	ld de,0ff81h		;84ce
	inc bc			;84d1
	ld (bc),a		;84d2
	ld (bc),a		;84d3
	djnz l8477h		;84d4
	rst 38h			;84d6
	nop			;84d7
	rst 38h			;84d8
	ld b,c			;84d9
	ld b,c			;84da
	rst 38h			;84db
	ld bc,0f901h		;84dc
	ld bc,001f9h		;84df
	ld sp,hl		;84e2
	ld bc,0ff00h		;84e3
	ld bc,l8101h		;84e6
	adc a,a			;84e9
	adc a,c			;84ea
	ld sp,hl		;84eb
	nop			;84ec
	rst 38h			;84ed
	add a,c			;84ee
	add a,c			;84ef
	rst 38h			;84f0
	inc a			;84f1
	ld a,c			;84f2
	rst 38h			;84f3
	nop			;84f4
	rst 38h			;84f5
	rst 38h			;84f6
	inc bc			;84f7
	dec b			;84f8
	sub a			;84f9
	rst 38h			;84fa
	nop			;84fb
	nop			;84fc
	rst 38h			;84fd
	rst 38h			;84fe
	nop			;84ff
	nop			;8500
	rst 38h			;8501
	rst 38h			;8502
	add hl,bc		;8503
	nop			;8504
	rst 38h			;8505
	rst 38h			;8506
	nop			;8507
	nop			;8508
	rst 38h			;8509
	rst 38h			;850a
	nop			;850b
	rst 38h			;850c
	nop			;850d
	nop			;850e
	rst 38h			;850f
	rst 38h			;8510
	inc bc			;8511
	sub b			;8512
	add a,h			;8513
	rst 38h			;8514
	nop			;8515
	rst 38h			;8516
	rst 38h			;8517
	dec b			;8518
	dec b			;8519
	add a,a			;851a
	rst 38h			;851b
	add a,c			;851c
	add a,c			;851d
	dec b			;851e
	dec b			;851f
	rst 38h			;8520
	dec b			;8521
	rlca			;8522
	ld a,a			;8523
	inc bc			;8524
	rst 38h			;8525
	add a,a			;8526
	nop			;8527
	rst 38h			;8528
	rst 38h			;8529
	djnz l853ch		;852a
	rra			;852c
	rst 38h			;852d
	ld b,001h		;852e
	ld (bc),a		;8530
	rst 38h			;8531
	adc a,h			;8532
	ret nc			;8533
	ld d,b			;8534
	ret nc			;8535
	rst 38h			;8536
	nop			;8537
	nop			;8538
	rst 38h			;8539
	rst 38h			;853a
	nop			;853b
l853ch:
	nop			;853c
	rst 38h			;853d
	rst 38h			;853e
	inc bc			;853f
	nop			;8540
	ld b,0ffh		;8541
	inc bc			;8543
	nop			;8544
	ld (bc),a		;8545
	add a,b			;8546
	add a,c			;8547
	rst 38h			;8548
	inc b			;8549
	add a,b			;854a
	add a,c			;854b
	nop			;854c
	inc bc			;854d
	rst 38h			;854e
	dec b			;854f
	nop			;8550
	rlca			;8551
	ld bc,0ff84h		;8552
	nop			;8555
	rst 38h			;8556
	rst 38h			;8557
	inc bc			;8558
	nop			;8559
	add a,c			;855a
	rst 38h			;855b
	inc bc			;855c
	or 081h			;855d
	rst 38h			;855f
	inc bc			;8560
	nop			;8561
	adc a,c			;8562
	rst 38h			;8563
	nop			;8564
	rst 38h			;8565
	nop			;8566
	nop			;8567
	rst 38h			;8568
	rst 38h			;8569
	and b			;856a
	and b			;856b
	inc bc			;856c
	add a,b			;856d
	adc a,l			;856e
	ret nz			;856f
	rst 38h			;8570
	rst 38h			;8571
	push bc			;8572
	push bc			;8573
	rst 38h			;8574
	nop			;8575
	rst 38h			;8576
	rst 38h			;8577
	nop			;8578
	nop			;8579
	cp a			;857a
	add a,b			;857b
	inc b			;857c
	ld a,(bc)		;857d
	ld (bc),a		;857e
	rst 38h			;857f
	ld (bc),a		;8580
	add a,b			;8581
	add a,h			;8582
	rst 38h			;8583
	nop			;8584
	rst 38h			;8585
	rst 38h			;8586
	inc bc			;8587
	nop			;8588
	and c			;8589
	rst 38h			;858a
	djnz l859dh		;858b
	rst 38h			;858d
	nop			;858e
	rst 38h			;858f
	ei			;8590
	ei			;8591
	nop			;8592
	nop			;8593
	ret nz			;8594
	ret nz			;8595
	rst 38h			;8596
	add a,b			;8597
	ret nz			;8598
	rst 38h			;8599
	ret nz			;859a
	ld (bc),a		;859b
	ld (bc),a		;859c
l859dh:
	rst 38h			;859d
	ld d,b			;859e
	rst 38h			;859f
	add a,b			;85a0
	add a,b			;85a1
	rst 38h			;85a2
	sub b			;85a3
	sub b			;85a4
	rst 38h			;85a5
	nop			;85a6
	rst 38h			;85a7
	add a,h			;85a8
	add a,h			;85a9
	rst 38h			;85aa
	nop			;85ab
	add a,d			;85ac
	di			;85ad
	pop af			;85ae
	rlca			;85af
	ret p			;85b0
	add a,c			;85b1
	pop af			;85b2
	inc bc			;85b3
l85b4h:
	ret p			;85b4
	add a,c			;85b5
	pop af			;85b6
	inc bc			;85b7
	ret p			;85b8
	add a,c			;85b9
	pop af			;85ba
	inc bc			;85bb
	ret p			;85bc
	add a,c			;85bd
	pop af			;85be
	rlca			;85bf
	ret p			;85c0
	add a,c			;85c1
	pop af			;85c2
	ld b,0f0h		;85c3
	add a,c			;85c5
	pop af			;85c6
	inc b			;85c7
	ret p			;85c8
	add a,c			;85c9
	pop af			;85ca
	ld b,0f0h		;85cb
	add a,c			;85cd
	pop af			;85ce
	rlca			;85cf
	ret p			;85d0
	add a,c			;85d1
	pop af			;85d2
	inc b			;85d3
	ret p			;85d4
	add a,c			;85d5
	pop af			;85d6
	ld a,(bc)		;85d7
	ret p			;85d8
	add a,c			;85d9
	pop af			;85da
	ex af,af'		;85db
	ret p			;85dc
	ld d,010h		;85dd
	inc bc			;85df
	rrca			;85e0
	add a,c			;85e1
	rra			;85e2
	rlca			;85e3
	rrca			;85e4
	dec c			;85e5
	djnz l85ebh		;85e6
	rrca			;85e8
	add a,c			;85e9
	rra			;85ea
l85ebh:
	rlca			;85eb
	rrca			;85ec
	add a,c			;85ed
	rra			;85ee
	ld b,00fh		;85ef
	add a,c			;85f1
	pop af			;85f2
	rlca			;85f3
	ret p			;85f4
	add a,c			;85f5
	pop af			;85f6
	rlca			;85f7
	ret p			;85f8
	dec bc			;85f9
	djnz $+5		;85fa
	rrca			;85fc
	dec b			;85fd
	djnz $+5		;85fe
	rrca			;8600
	inc bc			;8601
	djnz l8641h		;8602
	rrca			;8604
	inc bc			;8605
	pop af			;8606
	dec b			;8607
	ret p			;8608
	ld b,001h		;8609
	rlca			;860b
	ld hl,0f008h		;860c
	add a,d			;860f
	pop af			;8610
	jp p,0f103h		;8611
	add a,d			;8614
	jp p,003f0h		;8615
	pop af			;8618
	dec b			;8619
	ret p			;861a
	add a,d			;861b
	pop af			;861c
	jp p,0f005h		;861d
	add a,c			;8620
	pop af			;8621
	dec b			;8622
	ret p			;8623
	add a,c			;8624
	pop af			;8625
	inc b			;8626
	ret p			;8627
	add a,c			;8628
	pop af			;8629
	inc b			;862a
	ret p			;862b
	add a,c			;862c
	pop af			;862d
	rlca			;862e
	ret p			;862f
	inc b			;8630
	djnz l85b4h		;8631
	ld (de),a		;8633
	dec b			;8634
	ld bc,01205h		;8635
	inc bc			;8638
	ret p			;8639
	add a,c			;863a
	ld bc,0f005h		;863b
	ld (bc),a		;863e
	pop af			;863f
	ld (bc),a		;8640
l8641h:
	jp p,0f183h		;8641
	jp p,00312h		;8644
	ld bc,0f004h		;8647
	add a,c			;864a
	ld (de),a		;864b
	inc bc			;864c
	ret p			;864d
	ld (bc),a		;864e
	ld bc,0f007h		;864f
	add a,c			;8652
	jp p,0f103h		;8653
	ex af,af'		;8656
	ret p			;8657
	add a,c			;8658
	ld hl,00f07h		;8659
	add a,h			;865c
	ld hl,00f0fh		;865d
	pop af			;8660
	inc b			;8661
	ret p			;8662
	add a,h			;8663
	pop af			;8664
	ret p			;8665
	ret p			;8666
	pop af			;8667
	dec b			;8668
	ret p			;8669
	add a,c			;866a
	pop af			;866b
	inc bc			;866c
	ret p			;866d
	add a,l			;866e
	pop af			;866f
	jp p,0f2f1h		;8670
	pop af			;8673
	ex af,af'		;8674
	ret p			;8675
	ld (bc),a		;8676
	pop af			;8677
	add a,e			;8678
	djnz l869ch		;8679
	djnz l8680h		;867b
	ret p			;867d
	add a,d			;867e
	pop af			;867f
l8680h:
	jp p,0f006h		;8680
	add a,d			;8683
	pop af			;8684
	jp p,0f006h		;8685
	add a,d			;8688
	jp p,006f1h		;8689
	ret p			;868c
	add a,d			;868d
	jp p,006f1h		;868e
	ret p			;8691
	add a,e			;8692
	djnz l86b6h		;8693
	djnz $+9		;8695
	rrca			;8697
	inc bc			;8698
	rra			;8699
	ld b,0f0h		;869a
l869ch:
	add a,c			;869c
	jp p,0f103h		;869d
	add a,d			;86a0
	ret p			;86a1
	pop af			;86a2
	ld b,0f0h		;86a3
	add a,c			;86a5
	pop af			;86a6
	inc bc			;86a7
	ret p			;86a8
	add a,e			;86a9
	pop af			;86aa
	jp p,004f1h		;86ab
	ret p			;86ae
	add a,c			;86af
	pop af			;86b0
	dec c			;86b1
	ret p			;86b2
	add a,c			;86b3
	pop af			;86b4
	rlca			;86b5
l86b6h:
	ret p			;86b6
	ld (bc),a		;86b7
	pop af			;86b8
	add a,c			;86b9
	jr nz,l86c2h		;86ba
	ret p			;86bc
	add a,c			;86bd
	ld bc,0f007h		;86be
	ld (bc),a		;86c1
l86c2h:
	ld bc,0f006h		;86c2
	ld (bc),a		;86c5
	ld bc,0f004h		;86c6
	ld (bc),a		;86c9
	ld bc,0f002h		;86ca
	add a,d			;86cd
	pop af			;86ce
	jp p,01203h		;86cf
	ld (bc),a		;86d2
	ret p			;86d3
	ld (bc),a		;86d4
	ld bc,01202h		;86d5
	ld (bc),a		;86d8
	pop af			;86d9
	add a,c			;86da
	jp p,0f005h		;86db
	add a,d			;86de
	djnz $+35		;86df
	inc b			;86e1
	ld bc,0f007h		;86e2
	add a,l			;86e5
	pop af			;86e6
	jp p,0f1f2h		;86e7
	jp p,0f007h		;86ea
	add a,c			;86ed
	pop af			;86ee
	inc bc			;86ef
	ret p			;86f0
	ld (bc),a		;86f1
	pop af			;86f2
	ld (bc),a		;86f3
	jr nz,l86f8h		;86f4
	rrca			;86f6
	ld (bc),a		;86f7
l86f8h:
	djnz $+9		;86f8
	rrca			;86fa
	inc bc			;86fb
	ld hl,00081h		;86fc
	inc bc			;86ff
	ld hl,01007h		;8700
	ld b,020h		;8703
	ld (bc),a		;8705
	pop af			;8706
	add a,c			;8707
	jp p,0f004h		;8708
	inc bc			;870b
	ld (de),a		;870c
	ld (bc),a		;870d
	ret p			;870e
	inc bc			;870f
	ld hl,01085h		;8710
	ld hl,0f010h		;8713
	ret p			;8716
	ld b,021h		;8717
	inc bc			;8719
	ret p			;871a
	add a,l			;871b
	pop af			;871c
	ret p			;871d
	pop af			;871e
	jp p,003f1h		;871f
	ret p			;8722
	add a,d			;8723
	pop af			;8724
	ret p			;8725
	inc bc			;8726
	ld (de),a		;8727
	dec b			;8728
	rrca			;8729
	add a,e			;872a
	pop af			;872b
	jp p,003f1h		;872c
	ret p			;872f
	add a,d			;8730
	pop af			;8731
	ret p			;8732
	inc bc			;8733
	ld (de),a		;8734
	inc bc			;8735
	rrca			;8736
	ld (bc),a		;8737
	ld bc,0f181h		;8738
	inc b			;873b
	ret p			;873c
	add a,c			;873d
	djnz l8743h		;873e
	rrca			;8740
	add a,h			;8741
	pop af			;8742
l8743h:
	ret p			;8743
	ret p			;8744
	pop af			;8745
	inc bc			;8746
	ret p			;8747
	add a,c			;8748
	pop af			;8749
	inc b			;874a
	ret p			;874b
	add a,h			;874c
	pop af			;874d
	ret p			;874e
	ret p			;874f
	pop af			;8750
	inc b			;8751
	ret p			;8752
	add a,e			;8753
	pop af			;8754
	ret p			;8755
	ret p			;8756
	nop			;8757
	and c			;8758
	rra			;8759
	rlca			;875a
	ld bc,00f02h		;875b
	ccf			;875e
	ccf			;875f
	rra			;8760
	ret m			;8761
	ret p			;8762
	add a,b			;8763
	ld b,b			;8764
	ret p			;8765
	ret m			;8766
	ret m			;8767
	ret p			;8768
	rra			;8769
	ccf			;876a
	ccf			;876b
	rrca			;876c
	ld (bc),a		;876d
	ld bc,01f07h		;876e
	ret p			;8771
	ret m			;8772
	ret m			;8773
	ret p			;8774
	ld b,b			;8775
	add a,b			;8776
	ret p			;8777
	ret m			;8778
	ld a,a			;8779
	inc bc			;877a
	dec bc			;877b
	add a,l			;877c
	ld h,l			;877d
	and l			;877e
	ret p			;877f
	rra			;8780
	cp 003h			;8781
	ret nc			;8783
	adc a,b			;8784
	and (hl)		;8785
	and l			;8786
	rrca			;8787
	ret m			;8788
	rra			;8789
	ret p			;878a
	and l			;878b
	ld h,l			;878c
	inc bc			;878d
	call p,sub_8085h	;878e
	rlca			;8791
	rrca			;8792
	and l			;8793
	and (hl)		;8794
	inc bc			;8795
	cpl			;8796
	adc a,h			;8797
	ld bc,l80ffh		;8798
	add a,b			;879b
	sub 0a9h		;879c
	ld a,a			;879e
	ld a,a			;879f
	ccf			;87a0
	ccf			;87a1
	ld b,b			;87a2
	rst 38h			;87a3
	inc bc			;87a4
	ld (hl),e		;87a5
	add a,l			;87a6
	ld b,b			;87a7
	ccf			;87a8
	ccf			;87a9
	ld (bc),a		;87aa
	rst 38h			;87ab
	inc bc			;87ac
	adc a,094h		;87ad
	ld (bc),a		;87af
	call m,001ffh		;87b0
	ld bc,l956bh		;87b3
	cp 0feh			;87b6
	call m,07f3fh		;87b8
	ld a,a			;87bb
	xor c			;87bc
	sub 080h		;87bd
	add a,b			;87bf
	rst 38h			;87c0
	ccf			;87c1
	ld b,b			;87c2
	inc bc			;87c3
	ld (hl),e		;87c4
	add a,l			;87c5
	rst 38h			;87c6
	ld b,b			;87c7
	ld b,b			;87c8
	call m,00302h		;87c9
	adc a,090h		;87cc
	rst 38h			;87ce
	ld (bc),a		;87cf
	ld (bc),a		;87d0
	call m,0fefeh		;87d1
	sub l			;87d4
	ld l,e			;87d5
	ld bc,0ff01h		;87d6
	dec a			;87d9
	dec l			;87da
	rla			;87db
	rst 38h			;87dc
	and (hl)		;87dd
	inc bc			;87de
	cpl			;87df
	adc a,l			;87e0
	call c,017b4h		;87e1
	rst 38h			;87e4
	ld (00b0bh),a		;87e5
	cpl			;87e8
	ccf			;87e9
	ld (hl),017h		;87ea
	rst 38h			;87ec
	ld e,b			;87ed
	inc bc			;87ee
	cpl			;87ef
	adc a,b			;87f0
	call pe,017d8h		;87f1
	rst 38h			;87f4
	ret			;87f5
	dec bc			;87f6
	dec bc			;87f7
	cpl			;87f8
	inc bc			;87f9
	ret nc			;87fa
	adc a,l			;87fb
	and (hl)		;87fc
	rst 38h			;87fd
	rla			;87fe
	dec l			;87ff
	dec a			;8800
	cpl			;8801
	cpl			;8802
	dec bc			;8803
	ld (017ffh),a		;8804
	or h			;8807
	call c,0d003h		;8808
	rst 8			;880b
	ld e,b			;880c
	rst 38h			;880d
	rla			;880e
	ld (hl),03fh		;880f
	cpl			;8811
	cpl			;8812
	dec bc			;8813
	ret			;8814
	rst 38h			;8815
	rla			;8816
	ret c			;8817
	call pe,07c30h		;8818
	ld a,a			;881b
	xor e			;881c
	sub 080h		;881d
	add a,b			;881f
	rst 38h			;8820
	inc hl			;8821
	inc b			;8822
	ld (hl),e		;8823
	call 0ff73h		;8824
	ld b,b			;8827
	ld b,b			;8828
	ld bc,07a87h		;8829
	or a			;882c
	adc a,0ffh		;882d
	ld (bc),a		;882f
	ld (bc),a		;8830
	call nz,0feeeh		;8831
	defb 0ddh,06bh ;ld ixl,e	;8834
	ld bc,0ff01h		;8836
	rst 38h			;8839
	add a,b			;883a
	add a,b			;883b
	sub 0abh		;883c
	ld a,a			;883e
	ld a,h			;883f
	jr nc,l8872h		;8840
	ld b,b			;8842
	rst 38h			;8843
	ld (hl),e		;8844
	call 00473h		;8845
	inc hl			;8848
	inc hl			;8849
	ld (bc),a		;884a
	rst 38h			;884b
	adc a,0b7h		;884c
	ld a,d			;884e
	add a,a			;884f
	ld bc,001ffh		;8850
	ld bc,0dd6bh		;8853
	cp 0eeh			;8856
	call nz,000ffh		;8858
	inc bc			;885b
	rla			;885c
	add a,c			;885d
	ccf			;885e
	rlca			;885f
	rla			;8860
	add a,c			;8861
	call m,01704h		;8862
	add a,d			;8865
	ccf			;8866
	rst 38h			;8867
	ld b,017h		;8868
	add a,c			;886a
	call m,0e804h		;886b
	add a,c			;886e
	nop			;886f
	ex af,af'		;8870
	cpl			;8871
l8872h:
	ex af,af'		;8872
	call p,0a000h		;8873
	add a,b			;8876
	ret nc			;8877
	jr nc,l88aah		;8878
	ret p			;887a
	ret nc			;887b
	ret nc			;887c
	add a,b			;887d
	add a,b			;887e
	ret nc			;887f
	jr nc,l88b2h		;8880
	ret p			;8882
	ret nc			;8883
	ret nc			;8884
	add a,b			;8885
	add a,b			;8886
	ret nc			;8887
	ret nc			;8888
	ret p			;8889
	jr nc,l88bch		;888a
	ret nc			;888c
	add a,b			;888d
	add a,b			;888e
	ret nc			;888f
	ret nc			;8890
	ret p			;8891
	jr nc,l88c4h		;8892
	ret nc			;8894
	add a,b			;8895
	inc bc			;8896
	ret pe			;8897
	add a,h			;8898
	adc a,l			;8899
	di			;889a
	call p,004d8h		;889b
	ret pe			;889e
	adc a,d			;889f
	adc a,l			;88a0
	di			;88a1
	call p,0e8d8h		;88a2
	ret pe			;88a5
	ret c			;88a6
	call p,0d8f3h		;88a7
l88aah:
	inc b			;88aa
	adc a,(hl)		;88ab
	add a,h			;88ac
	ret c			;88ad
	call p,0d8f3h		;88ae
	inc bc			;88b1
l88b2h:
	adc a,(hl)		;88b2
	ld (bc),a		;88b3
	defb 0fdh,0ffh,0d8h ;illegal sequence	;88b4
	ld sp,iy		;88b7
	ret p			;88b9
	ret nc			;88ba
	add a,b			;88bb
l88bch:
	rst 38h			;88bc
	ret pe			;88bd
	ret pe			;88be
	defb 0fdh,09fh,0fdh ;illegal sequence	;88bf
	ret pe			;88c2
	ret pe			;88c3
l88c4h:
	rst 38h			;88c4
	ret pe			;88c5
	ret pe			;88c6
	defb 0fdh,09fh,0fdh ;illegal sequence	;88c7
	ret pe			;88ca
	ret pe			;88cb
	defb 0fdh,0fdh,0d8h ;illegal sequence	;88cc
	ld sp,iy		;88cf
	ret p			;88d1
	ret nc			;88d2
	add a,b			;88d3
	add a,b			;88d4
	ret nc			;88d5
	ret p			;88d6
	ld sp,hl		;88d7
	defb 0fdh,0d8h,0fdh ;illegal sequence	;88d8
	defb 0fdh,0e8h,0e8h ;illegal sequence	;88db
	defb 0fdh,09fh,0fdh ;illegal sequence	;88de
	ret pe			;88e1
	ret pe			;88e2
	rst 38h			;88e3
	ret pe			;88e4
	ret pe			;88e5
	defb 0fdh,09fh,0fdh ;illegal sequence	;88e6
	ret pe			;88e9
	ret pe			;88ea
	rst 38h			;88eb
	add a,b			;88ec
	ret nc			;88ed
	ret p			;88ee
	ld sp,hl		;88ef
	defb 0fdh,0d8h,0fdh ;illegal sequence	;88f0
	defb 0fdh,0d0h,080h ;illegal sequence	;88f3
	ret pe			;88f6
	or 0f6h			;88f7
	defb 0edh ;next byte illegal after ed	;88f9
	rst 38h			;88fa
	adc a,l			;88fb
	ret nc			;88fc
	add a,b			;88fd
	ret c			;88fe
	or 0f6h			;88ff
	ret c			;8901
	rst 38h			;8902
	ret c			;8903
	ret nc			;8904
	add a,b			;8905
	ret pe			;8906
	or 0f6h			;8907
	defb 0edh ;next byte illegal after ed	;8909
	rst 38h			;890a
	adc a,l			;890b
	ret nc			;890c
	add a,b			;890d
	ret c			;890e
	or 0f6h			;890f
	ret c			;8911
	rst 38h			;8912
	ret c			;8913
	ret c			;8914
	rst 38h			;8915
	sbc a,0f6h		;8916
	or 0e8h			;8918
	add a,b			;891a
	ret nc			;891b
	ret c			;891c
	rst 38h			;891d
	ret c			;891e
	or 0f6h			;891f
	ret c			;8921
	add a,b			;8922
	ret nc			;8923
	ret c			;8924
	rst 38h			;8925
	sbc a,0f6h		;8926
	or 0e8h			;8928
	add a,b			;892a
	ret nc			;892b
l892ch:
	ret c			;892c
	rst 38h			;892d
	ret c			;892e
	or 0f6h			;892f
	ret c			;8931
	add a,b			;8932
	ret nc			;8933
	add a,b			;8934
	sub c			;8935
	ret nc			;8936
	ret p			;8937
	di			;8938
	defb 0fdh,0d8h,0fdh ;illegal sequence	;8939
	defb 0fdh,0e0h,0f8h ;illegal sequence	;893c
	ld sp,iy		;893f
	defb 0fdh,0e8h,0e8h ;illegal sequence	;8941
	rst 38h			;8944
	add a,b			;8945
	add a,b			;8946
	inc bc			;8947
	defb 0fdh,002h,0e8h ;illegal sequence	;8948
	add a,a			;894b
	rst 38h			;894c
	add a,b			;894d
	ret nc			;894e
	ret p			;894f
	ld sp,hl		;8950
	defb 0fdh,0d8h,004h ;illegal sequence	;8951
	defb 0fdh,091h,0d8h ;illegal sequence	;8954
	defb 0fdh,0f3h,0f0h ;illegal sequence	;8957
	ret nc			;895a
	add a,b			;895b
	rst 38h			;895c
	ret pe			;895d
	ret pe			;895e
	ld sp,iy		;895f
	defb 0fdh,0f8h,0e0h ;illegal sequence	;8961
	rst 38h			;8964
	ret pe			;8965
	ret pe			;8966
	inc bc			;8967
	defb 0fdh,002h,080h ;illegal sequence	;8968
	ld (bc),a		;896b
	defb 0fdh,099h,0d8h ;illegal sequence	;896c
	ld sp,iy		;896f
	ret p			;8971
	ret nc			;8972
	add a,b			;8973
	cp 0feh			;8974
	ret pe			;8976
	ret pe			;8977
	adc a,l			;8978
	ret p			;8979
	ret pe			;897a
	rst 38h			;897b
	rst 38h			;897c
	adc a,(hl)		;897d
	ret c			;897e
	ret c			;897f
	defb 0fdh,0f0h,0d8h ;illegal sequence	;8980
	rst 38h			;8983
	rst 38h			;8984
	ret pe			;8985
	ret p			;8986
	inc bc			;8987
	ret pe			;8988
	adc a,d			;8989
	adc a,l			;898a
	rst 38h			;898b
	rst 38h			;898c
	ret c			;898d
	ret p			;898e
	ret pe			;898f
	adc a,l			;8990
	adc a,l			;8991
	rst 18h			;8992
	rst 18h			;8993
	djnz l892ch		;8994
	nop			;8996
	ex af,af'		;8997
	ld h,b			;8998
	ld (bc),a		;8999
	and (hl)		;899a
	ld de,00560h		;899b
	and (hl)		;899e
	inc b			;899f
	ld h,b			;89a0
	ld (bc),a		;89a1
	and (hl)		;89a2
	ld (bc),a		;89a3
	jp pe,06003h		;89a4
	inc bc			;89a7
	and (hl)		;89a8
	add a,c			;89a9
	ld h,b			;89aa
	inc bc			;89ab
	and (hl)		;89ac
	inc b			;89ad
	ld h,b			;89ae
	dec d			;89af
	and (hl)		;89b0
	dec b			;89b1
	ld h,b			;89b2
	inc b			;89b3
	and (hl)		;89b4
	inc b			;89b5
	ld h,b			;89b6
	adc a,e			;89b7
	and (hl)		;89b8
	and 0aeh		;89b9
	xor (hl)		;89bb
	and (hl)		;89bc
l89bdh:
	and (hl)		;89bd
	ld h,b			;89be
	ld h,b			;89bf
	and 0a6h		;89c0
	and (hl)		;89c2
	dec b			;89c3
	jp pe,0e683h		;89c4
	and (hl)		;89c7
	and (hl)		;89c8
	dec b			;89c9
	jp pe,0a602h		;89ca
	inc b			;89cd
	jp pe,0a602h		;89ce
	jr l89bdh		;89d1
	ex af,af'		;89d3
	and (hl)		;89d4
	nop			;89d5
	ex af,af'		;89d6
	ld l,a			;89d7
	ld (bc),a		;89d8
	and (hl)		;89d9
	ld de,0056fh		;89da
	and (hl)		;89dd
	inc b			;89de
	ld l,a			;89df
	ld (bc),a		;89e0
	and (hl)		;89e1
	ld (bc),a		;89e2
	jp pe,06f03h		;89e3
	inc bc			;89e6
	and (hl)		;89e7
	add a,c			;89e8
	ld l,a			;89e9
	inc bc			;89ea
	and (hl)		;89eb
	inc b			;89ec
	ld l,a			;89ed
	dec d			;89ee
	and (hl)		;89ef
	dec b			;89f0
	ld l,a			;89f1
	inc b			;89f2
	and (hl)		;89f3
	inc b			;89f4
	ld l,a			;89f5
	adc a,e			;89f6
	and (hl)		;89f7
	and 0aeh		;89f8
	xor (hl)		;89fa
	and (hl)		;89fb
l89fch:
	and (hl)		;89fc
	ld l,a			;89fd
	ld l,a			;89fe
	and 0a6h		;89ff
	and (hl)		;8a01
	dec b			;8a02
	jp pe,0e683h		;8a03
	and (hl)		;8a06
	and (hl)		;8a07
	dec b			;8a08
	jp pe,0a602h		;8a09
	inc b			;8a0c
	jp pe,0a602h		;8a0d
	jr l89fch		;8a10
	ex af,af'		;8a12
	and (hl)		;8a13
	nop			;8a14
	add a,c			;8a15
	ld bc,00305h		;8a16
	ld (bc),a		;8a19
	ld bc,04084h		;8a1a
	add a,b			;8a1d
	cp 0f8h			;8a1e
	inc b			;8a20
	nop			;8a21
	ld (bc),a		;8a22
	add a,b			;8a23
	inc b			;8a24
	ret nz			;8a25
	ei			;8a26
	add a,b			;8a27
	nop			;8a28
	nop			;8a29
	inc a			;8a2a
	ld a,a			;8a2b
	ld c,019h		;8a2c
	djnz $+35		;8a2e
	inc hl			;8a30
	nop			;8a31
	nop			;8a32
	inc a			;8a33
	rst 38h			;8a34
l8a35h:
	jr c,l8a35h		;8a35
	jr l8ab7h		;8a37
	nop			;8a39
l8a3ah:
	jr c,l8a3ah		;8a3a
	jr c,l8a4ah		;8a3c
	inc b			;8a3e
	cp 040h			;8a3f
	inc bc			;8a41
	inc b			;8a42
	ld a,a			;8a43
	ccf			;8a44
	ld a,a			;8a45
	ld a,a			;8a46
	inc bc			;8a47
	daa			;8a48
	ld c,a			;8a49
l8a4ah:
	ld c,a			;8a4a
	cpl			;8a4b
	rrca			;8a4c
	daa			;8a4d
	daa			;8a4e
	inc hl			;8a4f
	ld sp,0f2e4h		;8a50
	ld (hl),d		;8a53
	ld (hl),d		;8a54
	ld h,h			;8a55
	ret po			;8a56
	call m,018feh		;8a57
	rrca			;8a5a
	inc bc			;8a5b
	ld a,a			;8a5c
	ld a,a			;8a5d
	ccf			;8a5e
	rlca			;8a5f
	nop			;8a60
	ld a,a			;8a61
	rst 30h			;8a62
	jp 0f301h		;8a63
	ex (sp),hl		;8a66
	ld bc,03c00h		;8a67
	add a,c			;8a6a
	add a,c			;8a6b
	rst 0			;8a6c
	cp 038h			;8a6d
	cp 07ch			;8a6f
	ld bc,07f1eh		;8a71
	inc e			;8a74
	inc sp			;8a75
	daa			;8a76
l8a77h:
	ld l,a			;8a77
	ld c,a			;8a78
	add a,e			;8a79
	jr c,l8afah		;8a7a
	inc a			;8a7c
	rrca			;8a7d
	jp 0f9f1h		;8a7e
	cp 0feh			;8a81
	inc b			;8a83
	inc c			;8a84
	jr l8a77h		;8a85
	cp 0f8h			;8a87
	cp c			;8a89
	ld a,(hl)		;8a8a
	ld a,a			;8a8b
	rst 38h			;8a8c
	rst 38h			;8a8d
	cp 07eh			;8a8e
	sbc a,l			;8a90
	ld c,a			;8a91
	cpl			;8a92
	daa			;8a93
	inc hl			;8a94
	ld sp,0001ch		;8a95
	nop			;8a98
	or 0ech			;8a99
	exx			;8a9b
	rst 38h			;8a9c
	cp 078h			;8a9d
	nop			;8a9f
	nop			;8aa0
	ret z			;8aa1
	inc bc			;8aa2
	call po,0ec84h		;8aa3
	call z,0f098h		;8aa6
	nop			;8aa9
	sub b			;8aaa
	nop			;8aab
	ret nz			;8aac
	ld h,b			;8aad
	ld (hl),b		;8aae
	jr c,l8abdh		;8aaf
	ld d,000h		;8ab1
	inc h			;8ab3
	ld d,e			;8ab4
	jr c,$-23		;8ab5
l8ab7h:
	rrca			;8ab7
	dec a			;8ab8
	ld b,070h		;8ab9
	ex af,af'		;8abb
	nop			;8abc
l8abdh:
	add a,(hl)		;8abd
	ld (hl),b		;8abe
	inc e			;8abf
	rst 0			;8ac0
	rst 8			;8ac1
	rst 30h			;8ac2
	call p,00006h		;8ac3
	adc a,h			;8ac6
	jr nc,l8ae9h		;8ac7
	djnz l8adbh		;8ac9
	ex af,af'		;8acb
	ld c,005h		;8acc
	rlca			;8ace
	inc bc			;8acf
	dec b			;8ad0
	nop			;8ad1
	call m,0000bh		;8ad2
	adc a,e			;8ad5
	ret nz			;8ad6
	ld (hl),b		;8ad7
	sbc a,h			;8ad8
	rst 20h			;8ad9
	ld sp,hl		;8ada
l8adbh:
	ld (bc),a		;8adb
	nop			;8adc
	rlca			;8add
	ld c,00ch		;8ade
	jr l8aech		;8ae0
	nop			;8ae2
	add a,d			;8ae3
	ld bc,00e41h		;8ae4
	nop			;8ae7
	sub b			;8ae8
l8ae9h:
	ret nz			;8ae9
	ld h,b			;8aea
	ld (hl),b		;8aeb
l8aech:
	jr c,l8afah		;8aec
	ld d,018h		;8aee
	nop			;8af0
	inc h			;8af1
	ld b,d			;8af2
	ld sp,00718h		;8af3
	rra			;8af6
	inc a			;8af7
	ld b,008h		;8af8
l8afah:
	nop			;8afa
	add a,(hl)		;8afb
	ld d,b			;8afc
	inc (hl)		;8afd
	ld e,0c7h		;8afe
	rst 8			;8b00
	ret m			;8b01
	dec b			;8b02
	nop			;8b03
	adc a,l			;8b04
	jr nc,l8b27h		;8b05
	djnz l8b19h		;8b07
	ex af,af'		;8b09
	ld c,005h		;8b0a
	inc b			;8b0c
	inc bc			;8b0d
	inc bc			;8b0e
	rlca			;8b0f
	ld bc,00afch		;8b10
	nop			;8b13
	adc a,l			;8b14
	ret nz			;8b15
	add a,b			;8b16
	ld (hl),h		;8b17
	cp c			;8b18
l8b19h:
	call c,001e7h		;8b19
	ld (bc),a		;8b1c
	nop			;8b1d
	rlca			;8b1e
	ld c,00ch		;8b1f
	jr l8b2ch		;8b21
	nop			;8b23
	add a,e			;8b24
	ld b,000h		;8b25
l8b27h:
	ld h,b			;8b27
	ld c,000h		;8b28
	adc a,a			;8b2a
	ret nz			;8b2b
l8b2ch:
	ld h,b			;8b2c
	ld (hl),b		;8b2d
	jr c,l8b3ch		;8b2e
	ld d,018h		;8b30
	inc a			;8b32
	ld b,h			;8b33
	ld b,d			;8b34
	ld hl,00f10h		;8b35
	daa			;8b38
	ld (hl),b		;8b39
	ex af,af'		;8b3a
	nop			;8b3b
l8b3ch:
	add a,(hl)		;8b3c
	ld b,b			;8b3d
	ld (hl),h		;8b3e
	ld a,01fh		;8b3f
	rst 0			;8b41
	rst 8			;8b42
	ld b,000h		;8b43
	adc a,h			;8b45
	jr nc,l8b68h		;8b46
	djnz $+18		;8b48
	ex af,af'		;8b4a
	ld c,005h		;8b4b
	inc b			;8b4d
	nop			;8b4e
	rlca			;8b4f
	rlca			;8b50
	ei			;8b51
	dec bc			;8b52
	nop			;8b53
	adc a,e			;8b54
	ret nz			;8b55
	halt			;8b56
	ld (hl),c		;8b57
	cp b			;8b58
	call c,00201h		;8b59
	inc bc			;8b5c
	ld c,00ch		;8b5d
	jr l8b6bh		;8b5f
	nop			;8b61
	add a,d			;8b62
	rst 20h			;8b63
	ld b,010h		;8b64
	nop			;8b66
	adc a,l			;8b67
l8b68h:
	ld a,(bc)		;8b68
	rla			;8b69
	cpl			;8b6a
l8b6bh:
	ld l,a			;8b6b
	rra			;8b6c
	ex af,af'		;8b6d
	rla			;8b6e
	ex af,af'		;8b6f
	rra			;8b70
	ld l,a			;8b71
	cpl			;8b72
	rla			;8b73
	ld a,(bc)		;8b74
	inc bc			;8b75
	nop			;8b76
	adc a,l			;8b77
	add a,b			;8b78
	ld h,b			;8b79
	cp b			;8b7a
	cp (hl)			;8b7b
	ret nz			;8b7c
	sub b			;8b7d
	inc a			;8b7e
	sub b			;8b7f
	ret nz			;8b80
	cp (hl)			;8b81
	cp b			;8b82
	ld h,b			;8b83
	add a,b			;8b84
	dec b			;8b85
	nop			;8b86
	adc a,c			;8b87
	ld a,(bc)		;8b88
	rla			;8b89
	cpl			;8b8a
	ld l,a			;8b8b
	jr l8ba5h		;8b8c
	ld l,b			;8b8e
	rla			;8b8f
	ld a,(bc)		;8b90
	rlca			;8b91
	nop			;8b92
	adc a,c			;8b93
	add a,b			;8b94
	ld h,b			;8b95
	cp b			;8b96
	cp (hl)			;8b97
	ret nz			;8b98
	inc a			;8b99
	cp 070h			;8b9a
	ret nz			;8b9c
	ex af,af'		;8b9d
	nop			;8b9e
	add a,a			;8b9f
	rlca			;8ba0
	rla			;8ba1
	cpl			;8ba2
	ld l,a			;8ba3
	cpl			;8ba4
l8ba5h:
	rla			;8ba5
	rlca			;8ba6
	ld a,(bc)		;8ba7
	nop			;8ba8
	add a,l			;8ba9
	ret nz			;8baa
	call m,0fcfeh		;8bab
	ret nz			;8bae
	add hl,bc		;8baf
	nop			;8bb0
	adc a,c			;8bb1
	ld a,(bc)		;8bb2
	rla			;8bb3
	ld l,b			;8bb4
	rla			;8bb5
	jr l8c27h		;8bb6
	cpl			;8bb8
	rla			;8bb9
	ld a,(bc)		;8bba
	rlca			;8bbb
	nop			;8bbc
	adc a,c			;8bbd
	ret nz			;8bbe
	ld (hl),b		;8bbf
	cp 03ch			;8bc0
	ret nz			;8bc2
	cp (hl)			;8bc3
	cp b			;8bc4
	ld h,b			;8bc5
	add a,b			;8bc6
	inc bc			;8bc7
	nop			;8bc8
	nop			;8bc9
	inc b			;8bca
	nop			;8bcb
	adc a,c			;8bcc
	jr $+16			;8bcd
	ld bc,00f07h		;8bcf
	rlca			;8bd2
	ld bc,0180eh		;8bd3
	add hl,bc		;8bd6
	nop			;8bd7
	add a,l			;8bd8
	ret nz			;8bd9
	ret p			;8bda
	call m,0c0f0h		;8bdb
	dec b			;8bde
	nop			;8bdf
	nop			;8be0
	ret nz			;8be1
	nop			;8be2
	ld bc,00703h		;8be3
	rra			;8be6
	ld d,b			;8be7
	ei			;8be8
	pop de			;8be9
	rst 38h			;8bea
	ld c,e			;8beb
	ccf			;8bec
	rlca			;8bed
	xor a			;8bee
	xor h			;8bef
	inc bc			;8bf0
	nop			;8bf1
	nop			;8bf2
	add a,b			;8bf3
	ret z			;8bf4
	add a,h			;8bf5
	call m,0ff16h		;8bf6
	inc l			;8bf9
	call m,0f048h		;8bfa
	call z,012efh		;8bfd
	call m,00010h		;8c00
	inc bc			;8c03
	rrca			;8c04
	rra			;8c05
	djnz l8c37h		;8c06
	inc b			;8c08
	rst 38h			;8c09
	rst 38h			;8c0a
	ld (hl),h		;8c0b
	ccf			;8c0c
	rlca			;8c0d
	ld d,d			;8c0e
	rst 38h			;8c0f
	rrca			;8c10
	inc bc			;8c11
	nop			;8c12
	ret po			;8c13
	ret p			;8c14
	ret m			;8c15
	call m,000e8h		;8c16
	call m,0b8fch		;8c19
	call m,012f2h		;8c1c
	rst 38h			;8c1f
	cp 0fch			;8c20
	nop			;8c22
	or b			;8c23
	nop			;8c24
	inc bc			;8c25
	rrca			;8c26
l8c27h:
	rra			;8c27
	rra			;8c28
	cpl			;8c29
	inc b			;8c2a
	rst 38h			;8c2b
	ld a,a			;8c2c
	ld de,00f1fh		;8c2d
	rst 38h			;8c30
	rst 38h			;8c31
	rra			;8c32
	rrca			;8c33
	nop			;8c34
	ret po			;8c35
	ret m			;8c36
l8c37h:
	call m,016fch		;8c37
	dec bc			;8c3a
	call m,070fch		;8c3b
	rst 38h			;8c3e
	ld a,(bc)		;8c3f
	rst 38h			;8c40
	rst 38h			;8c41
	cp 0fch			;8c42
	nop			;8c44
	nop			;8c45
	inc bc			;8c46
	ld b,011h		;8c47
	ld a,a			;8c49
	rst 38h			;8c4a
	xor d			;8c4b
	ld (hl),l		;8c4c
	ld c,01fh		;8c4d
	rrca			;8c4f
	ld d,d			;8c50
	xor (hl)		;8c51
	ld de,0040fh		;8c52
	nop			;8c55
	adc a,h			;8c56
	call m,0f4e8h		;8c57
	or h			;8c5a
	ld a,h			;8c5b
	add a,b			;8c5c
	jp m,01affh		;8c5d
	xor d			;8c60
	cp 014h			;8c61
	nop			;8c63
	call 03707h		;8c64
	rst 38h			;8c67
	call po,03342h		;8c68
	ld a,a			;8c6b
	ld a,l			;8c6c
	ld a,(hl)		;8c6d
	ld a,a			;8c6e
	dec sp			;8c6f
	ld a,a			;8c70
	adc a,a			;8c71
l8c72h:
	call nz,00738h		;8c72
	ret po			;8c75
	call pe,027ffh		;8c76
	ld b,d			;8c79
	call nz,0befeh		;8c7a
	ld a,(hl)		;8c7d
	cp 0dch			;8c7e
	cp 0f0h			;8c80
	inc hl			;8c82
	inc e			;8c83
	ret po			;8c84
	nop			;8c85
	ex af,af'		;8c86
	inc b			;8c87
	sbc a,a			;8c88
	ld a,a			;8c89
	ccf			;8c8a
	ld a,(hl)		;8c8b
	ld h,06fh		;8c8c
	ld a,a			;8c8e
	rlca			;8c8f
	ld (bc),a		;8c90
	ld (hl),h		;8c91
	rst 38h			;8c92
	ccf			;8c93
	rlca			;8c94
	nop			;8c95
	djnz l8cb8h		;8c96
	ld sp,hl		;8c98
	cp 0fch			;8c99
	ld a,(hl)		;8c9b
	ld h,h			;8c9c
	xor 0feh		;8c9d
	ret po			;8c9f
	ld b,b			;8ca0
	cpl			;8ca1
	rst 38h			;8ca2
	call m,000e0h		;8ca3
	nop			;8ca6
	rlca			;8ca7
	djnz l8c72h		;8ca8
	adc a,d			;8caa
	ld a,a			;8cab
	ld a,a			;8cac
	cp 07fh			;8cad
	rst 10h			;8caf
	ld a,(00507h)		;8cb0
	nop			;8cb3
	adc a,e			;8cb4
	ret po			;8cb5
	ex af,af'		;8cb6
	inc de			;8cb7
l8cb8h:
	ld d,c			;8cb8
	cp 0feh			;8cb9
	ld a,a			;8cbb
	cp 0ebh			;8cbc
	ld e,h			;8cbe
	ret po			;8cbf
l8cc0h:
	ld b,000h		;8cc0
	adc a,d			;8cc2
	daa			;8cc3
l8cc4h:
	ccf			;8cc4
	rst 38h			;8cc5
	ld a,a			;8cc6
	ld a,(hl)		;8cc7
	rst 30h			;8cc8
	rst 38h			;8cc9
	rst 38h			;8cca
	ccf			;8ccb
sub_8ccch:
	rlca			;8ccc
	ld b,000h		;8ccd
	adc a,d			;8ccf
	call po,0fffch		;8cd0
	cp 07eh			;8cd3
	rst 28h			;8cd5
	rst 38h			;8cd6
	rst 38h			;8cd7
	call m,006e0h		;8cd8
	nop			;8cdb
	adc a,e			;8cdc
	rlca			;8cdd
	jr l8d4bh		;8cde
	rst 38h			;8ce0
	ld a,l			;8ce1
	ld a,(hl)		;8ce2
	rst 38h			;8ce3
	dec sp			;8ce4
	ret z			;8ce5
	dec (hl)		;8ce6
	rlca			;8ce7
	dec b			;8ce8
	nop			;8ce9
	adc a,e			;8cea
	ret po			;8ceb
	jr l8cc4h		;8cec
	rst 38h			;8cee
	cp (hl)			;8cef
	ld a,(hl)		;8cf0
	rst 38h			;8cf1
	call c,0ac13h		;8cf2
	ret po			;8cf5
	ld b,000h		;8cf6
	adc a,d			;8cf8
	daa			;8cf9
	cp a			;8cfa
	cp 026h			;8cfb
	ld a,a			;8cfd
	add a,h			;8cfe
l8cffh:
	call z,037ffh		;8cff
	rlca			;8d02
	ld b,000h		;8d03
	adc a,h			;8d05
	call po,07ffdh		;8d06
	ld h,h			;8d09
	cp 021h			;8d0a
	inc sp			;8d0c
	rst 38h			;8d0d
	call pe,000e0h		;8d0e
	nop			;8d11
	nop			;8d12
	add a,(hl)		;8d13
	nop			;8d14
	rlca			;8d15
	ccf			;8d16
	ld a,a			;8d17
	rst 38h			;8d18
	jp m,0ff06h		;8d19
	adc a,d			;8d1c
	ld a,a			;8d1d
	ld a,005h		;8d1e
	rlca			;8d20
	jr nz,$-46		;8d21
	jp po,0a2fdh		;8d23
	rst 38h			;8d26
	inc b			;8d27
	cp 003h			;8d28
	and d			;8d2a
	sbc a,c			;8d2b
	rst 38h			;8d2c
	jr nc,$-30		;8d2d
	rlca			;8d2f
	jr l8d52h		;8d30
	ld a,a			;8d32
	ld b,b			;8d33
	push af			;8d34
	or b			;8d35
	jr nc,l8d68h		;8d36
	or b			;8d38
	rst 38h			;8d39
	ld c,d			;8d3a
	ld a,a			;8d3b
	ld hl,0071ah		;8d3c
	ret po			;8d3f
	jr nc,$+1		;8d40
	and d			;8d42
	rst 38h			;8d43
	rst 38h			;8d44
	inc bc			;8d45
	jp z,0fe81h		;8d46
	inc b			;8d49
	rst 38h			;8d4a
l8d4bh:
	add a,d			;8d4b
	ret p			;8d4c
	ret po			;8d4d
	nop			;8d4e
	xor c			;8d4f
	rlca			;8d50
	rra			;8d51
l8d52h:
	ld a,h			;8d52
	di			;8d53
	inc c			;8d54
	dec bc			;8d55
	nop			;8d56
	ld c,01eh		;8d57
	nop			;8d59
	rrca			;8d5a
	call m,0030fh		;8d5b
	nop			;8d5e
	nop			;8d5f
	ret nz			;8d60
	ld (hl),0cdh		;8d61
	ld a,(l8ef4h)		;8d63
	ld (hl),b		;8d66
	ei			;8d67
l8d68h:
	inc bc			;8d68
	ld (hl),b		;8d69
	adc a,l			;8d6a
	call pe,0cb36h		;8d6b
	call p,00030h		;8d6e
	nop			;8d71
	inc bc			;8d72
	rrca			;8d73
	rst 38h			;8d74
	inc c			;8d75
l8d76h:
	rrca			;8d76
	ld e,010h		;8d77
	inc bc			;8d79
	rrca			;8d7a
	sub h			;8d7b
	di			;8d7c
	ld a,h			;8d7d
	rra			;8d7e
	rlca			;8d7f
	jr nc,l8d76h		;8d80
	ei			;8d82
	sub 02eh		;8d83
	add hl,bc		;8d85
	rlca			;8d86
	ld h,e			;8d87
	ret m			;8d88
	rlca			;8d89
	adc a,a			;8d8a
	ld (hl),0dah		;8d8b
	ld (iy-040h),000h	;8d8d
	ld (bc),a		;8d91
	nop			;8d92
	adc a,h			;8d93
	xor d			;8d94
	add hl,hl		;8d95
	rra			;8d96
	ld bc,0001dh		;8d97
	dec sp			;8d9a
	nop			;8d9b
	ld bc,0291fh		;8d9c
	xor d			;8d9f
	inc bc			;8da0
	nop			;8da1
	xor a			;8da2
	ld a,031h		;8da3
	ld de,0b4f8h		;8da5
	add a,b			;8da8
	nop			;8da9
	add a,b			;8daa
	dec b			;8dab
	or h			;8dac
	ret m			;8dad
	ld de,03e31h		;8dae
	nop			;8db1
	nop			;8db2
	jp 0ff7fh		;8db3
	rra			;8db6
	ld bc,03b00h		;8db7
	nop			;8dba
	dec e			;8dbb
	ld bc,0ff1fh		;8dbc
	ld a,a			;8dbf
	jp 03e00h		;8dc0
	pop hl			;8dc3
	sbc a,0ffh		;8dc4
	ret m			;8dc6
	call z,0b505h		;8dc7
	dec (hl)		;8dca
	add a,b			;8dcb
	call z,0fff8h		;8dcc
	sbc a,0e1h		;8dcf
	ld a,000h		;8dd1
	add a,a			;8dd3
	ld bc,01706h		;8dd4
	add hl,bc		;8dd7
	add hl,bc		;8dd8
	pop af			;8dd9
	rlca			;8dda
	inc bc			;8ddb
	inc bc			;8ddc
	sbc a,l			;8ddd
	ld bc,009ffh		;8dde
	jp (hl)			;8de1
	rla			;8de2
	ld bc,0fe00h		;8de3
	ld e,0ffh		;8de6
	ld hl,l8cffh		;8de8
	cp 0feh			;8deb
	rst 38h			;8ded
	pop af			;8dee
	sbc a,a			;8def
	pop af			;8df0
	ld e,01eh		;8df1
	ret po			;8df3
	nop			;8df4
	ld bc,0ff09h		;8df5
	rst 38h			;8df8
	rst 30h			;8df9
	rlca			;8dfa
	inc bc			;8dfb
	inc bc			;8dfc
	sub (hl)		;8dfd
	rlca			;8dfe
	add hl,bc		;8dff
	rst 38h			;8e00
	rst 38h			;8e01
	rla			;8e02
	ld bc,014eah		;8e03
	cp 0f1h			;8e06
	rst 38h			;8e08
	rst 38h			;8e09
	call m,00606h		;8e0a
	adc a,a			;8e0d
	rst 38h			;8e0e
	ld a,a			;8e0f
	rra			;8e10
	cp 0f4h			;8e11
	jp pe,0b800h		;8e13
	inc bc			;8e16
	rlca			;8e17
	jp z,0ec5ch		;8e18
	out (0d1h),a		;8e1b
	cp 0bbh			;8e1d
	xor d			;8e1f
	cp (hl)			;8e20
	or d			;8e21
	ld (hl),b		;8e22
	ex af,af'		;8e23
	inc b			;8e24
	inc b			;8e25
	ret nz			;8e26
	ret po			;8e27
	ld d,e			;8e28
	add hl,sp		;8e29
	scf			;8e2a
	jp z,07f8bh		;8e2b
	cp 026h			;8e2e
	ld a,06eh		;8e30
	dec c			;8e32
	djnz l8e55h		;8e33
	jr nz,l8e3bh		;8e35
	ex af,af'		;8e37
	dec b			;8e38
	add a,e			;8e39
	di			;8e3a
l8e3bh:
	ld l,a			;8e3b
	out (037h),a		;8e3c
	ld a,a			;8e3e
	ld (hl),l		;8e3f
	ld a,l			;8e40
	ld l,e			;8e41
	call pe,00206h		;8e42
	ld (bc),a		;8e45
	jr nz,l8e58h		;8e46
	and b			;8e48
	jp nz,0f7cfh		;8e49
	ld c,e			;8e4c
	call pe,0fd04h		;8e4d
	add a,h			;8e50
	ccf			;8e51
	ld (hl),b		;8e52
	ld h,b			;8e53
	ld h,b			;8e54
l8e55h:
	nop			;8e55
	sub d			;8e56
	inc b			;8e57
l8e58h:
	ld b,b			;8e58
	rst 38h			;8e59
	rst 38h			;8e5a
	ei			;8e5b
	ld h,a			;8e5c
	inc e			;8e5d
	rra			;8e5e
	dec bc			;8e5f
	dec c			;8e60
	dec c			;8e61
	ld l,e			;8e62
	sub b			;8e63
	rst 28h			;8e64
	sub b			;8e65
	ld l,a			;8e66
	nop			;8e67
	nop			;8e68
	inc bc			;8e69
	rst 38h			;8e6a
	and c			;8e6b
	ld bc,0ff00h		;8e6c
	ld d,l			;8e6f
	cp 054h			;8e70
	ret m			;8e72
	ld d,b			;8e73
	and b			;8e74
	ld b,b			;8e75
	add a,b			;8e76
	inc e			;8e77
	ld e,021h		;8e78
	ccf			;8e7a
	rst 20h			;8e7b
	ld a,h			;8e7c
	dec de			;8e7d
	rra			;8e7e
	rrca			;8e7f
	dec bc			;8e80
	dec bc			;8e81
	ld l,a			;8e82
	rst 38h			;8e83
	sub b			;8e84
	rst 38h			;8e85
	ld l,a			;8e86
	nop			;8e87
	dec bc			;8e88
	ld d,h			;8e89
	rst 38h			;8e8a
	ld bc,003feh		;8e8b
	rst 38h			;8e8e
	add a,a			;8e8f
	ld d,(hl)		;8e90
	call m,0f0f8h		;8e91
	ld h,b			;8e94
	ret nz			;8e95
	add a,b			;8e96
	nop			;8e97
	ret nz			;8e98
	nop			;8e99
	ld (bc),a		;8e9a
	rlca			;8e9b
	ld a,(hl)		;8e9c
	ld a,h			;8e9d
	cp 041h			;8e9e
	ld hl,(0011eh)		;8ea0
	rlca			;8ea3
	rst 38h			;8ea4
	jp z,0063dh		;8ea5
	nop			;8ea8
	cp b			;8ea9
	cp d			;8eaa
	rst 38h			;8eab
	call m,0cca7h		;8eac
	call m,06d6ah		;8eaf
	rst 30h			;8eb2
	pop de			;8eb3
	sub l			;8eb4
	ld l,d			;8eb5
	ld b,01eh		;8eb6
	ld d,007h		;8eb8
	rra			;8eba
	inc a			;8ebb
	ld a,c			;8ebc
	add a,e			;8ebd
	rst 38h			;8ebe
	ld a,a			;8ebf
	ld a,01eh		;8ec0
	ld bc,00806h		;8ec2
	defb 0fdh,037h,00ah ;illegal sequence	;8ec5
	inc b			;8ec8
	cp b			;8ec9
	rst 38h			;8eca
	call m,0dfcfh		;8ecb
	call m,05efch		;8ece
	ld e,a			;8ed1
	rst 30h			;8ed2
	or a			;8ed3
	di			;8ed4
	and 00eh		;8ed5
	dec e			;8ed7
	xor 003h		;8ed8
	nop			;8eda
	adc a,b			;8edb
	ld (bc),a		;8edc
	rlca			;8edd
	ld a,(hl)		;8ede
	ld a,h			;8edf
	cp 041h			;8ee0
	ld hl,(0031eh)		;8ee2
	nop			;8ee5
	rst 38h			;8ee6
	inc bc			;8ee7
	dec b			;8ee8
	nop			;8ee9
	nop			;8eea
	cp b			;8eeb
	cp d			;8eec
	rst 38h			;8eed
	call m,0caa7h		;8eee
	or 03bh			;8ef1
	dec sp			;8ef3
l8ef4h:
	ld a,07ch		;8ef4
	di			;8ef6
	xor h			;8ef7
	call nc,00000h		;8ef8
	rlca			;8efb
	rra			;8efc
	inc a			;8efd
	ld a,c			;8efe
	add a,e			;8eff
	rst 38h			;8f00
	ld a,a			;8f01
	ld a,01eh		;8f02
	nop			;8f04
	nop			;8f05
	ld bc,01e07h		;8f06
	nop			;8f09
	nop			;8f0a
	cp b			;8f0b
	rst 38h			;8f0c
	call m,0dfcfh		;8f0d
	cp 0fah			;8f10
	dec a			;8f12
	ccf			;8f13
	ld (hl),l		;8f14
	rst 20h			;8f15
	rst 8			;8f16
	call m,00038h		;8f17
	nop			;8f1a
	ld (bc),a		;8f1b
	ld (hl),l		;8f1c
	dec (hl)		;8f1d
	ld a,h			;8f1e
	ld a,h			;8f1f
	ld a,(hl)		;8f20
	ld l,037h		;8f21
	rla			;8f23
	ld a,(bc)		;8f24
	inc d			;8f25
	inc h			;8f26
	ld a,b			;8f27
	xor b			;8f28
	nop			;8f29
	nop			;8f2a
	ld b,b			;8f2b
	xor (hl)		;8f2c
	xor h			;8f2d
	ld a,03eh		;8f2e
	ld a,(hl)		;8f30
	inc (hl)		;8f31
	call pe,058e8h		;8f32
	inc (hl)		;8f35
	ld hl,(0151eh)		;8f36
	nop			;8f39
	nop			;8f3a
	ld bc,03777h		;8f3b
	dec hl			;8f3e
	rra			;8f3f
	ld a,e			;8f40
	add hl,sp		;8f41
	inc l			;8f42
	rra			;8f43
	ld c,00ch		;8f44
	inc e			;8f46
	ld a,b			;8f47
	ld e,b			;8f48
	nop			;8f49
	nop			;8f4a
	add a,b			;8f4b
	xor 0ech		;8f4c
	call nc,0def8h		;8f4e
	call c,0f834h		;8f51
	ld a,b			;8f54
	inc l			;8f55
	ld (hl),01eh		;8f56
	ld a,(de)		;8f58
	nop			;8f59
	nop			;8f5a
	dec e			;8f5b
	ld e,l			;8f5c
	rst 38h			;8f5d
	ccf			;8f5e
	push hl			;8f5f
	ld d,e			;8f60
	ld l,a			;8f61
	call c,07cdch		;8f62
	ld a,083h		;8f65
	rst 8			;8f67
	dec (hl)		;8f68
	dec hl			;8f69
	inc bc			;8f6a
	nop			;8f6b
	adc a,b			;8f6c
	ld b,b			;8f6d
	ret po			;8f6e
	ld a,(hl)		;8f6f
	ld a,07fh		;8f70
	add a,d			;8f72
	ld d,h			;8f73
	ld a,b			;8f74
	inc bc			;8f75
	nop			;8f76
	jp po,0a0c0h		;8f77
	nop			;8f7a
	nop			;8f7b
	dec e			;8f7c
	rst 38h			;8f7d
	ccf			;8f7e
	di			;8f7f
	ei			;8f80
	ld a,a			;8f81
	ld e,a			;8f82
	cp h			;8f83
	call m,0e7aeh		;8f84
	di			;8f87
	ccf			;8f88
	inc e			;8f89
	nop			;8f8a
	nop			;8f8b
	ret po			;8f8c
	ret m			;8f8d
	inc a			;8f8e
	sbc a,(hl)		;8f8f
	pop bc			;8f90
	rst 38h			;8f91
	cp 07ch			;8f92
	ld a,b			;8f94
	nop			;8f95
l8f96h:
	nop			;8f96
	add a,b			;8f97
	ret po			;8f98
	ld a,b			;8f99
	dec e			;8f9a
	ld e,l			;8f9b
	rst 38h			;8f9c
	ccf			;8f9d
	push hl			;8f9e
	inc sp			;8f9f
	ccf			;8fa0
	ld d,(hl)		;8fa1
	or (hl)			;8fa2
	rst 28h			;8fa3
	adc a,e			;8fa4
	xor c			;8fa5
	ld d,(hl)		;8fa6
	ld h,b			;8fa7
	ld a,b			;8fa8
	ld l,b			;8fa9
	nop			;8faa
	ld b,b			;8fab
	ret po			;8fac
	ld a,(hl)		;8fad
	ld a,07fh		;8fae
	add a,d			;8fb0
	ld d,h			;8fb1
	ld a,b			;8fb2
	add a,b			;8fb3
	ret po			;8fb4
	rst 38h			;8fb5
	ld d,e			;8fb6
	cp h			;8fb7
	ld h,b			;8fb8
	nop			;8fb9
	dec e			;8fba
	rst 38h			;8fbb
	ccf			;8fbc
	di			;8fbd
	ei			;8fbe
	ccf			;8fbf
	ccf			;8fc0
	ld a,d			;8fc1
	jp m,0edefh		;8fc2
	rst 8			;8fc5
	ld h,a			;8fc6
	ld (hl),b		;8fc7
l8fc8h:
	cp b			;8fc8
	ld (hl),a		;8fc9
	ret po			;8fca
	ret m			;8fcb
	inc a			;8fcc
	sbc a,(hl)		;8fcd
	pop bc			;8fce
	rst 38h			;8fcf
	cp 07ch			;8fd0
	ld a,b			;8fd2
	add a,b			;8fd3
	ld h,b			;8fd4
	djnz l8f96h		;8fd5
	call pe,02050h		;8fd7
	nop			;8fda
	rlca			;8fdb
	nop			;8fdc
	ld (bc),a		;8fdd
	rst 38h			;8fde
	ld c,000h		;8fdf
	ld (bc),a		;8fe1
	rst 38h			;8fe2
	rlca			;8fe3
	nop			;8fe4
	nop			;8fe5
	rlca			;8fe6
	nop			;8fe7
	ld (bc),a		;8fe8
	rst 38h			;8fe9
	ld c,000h		;8fea
	ld (bc),a		;8fec
	rst 38h			;8fed
	ld c,000h		;8fee
	add a,a			;8ff0
	ld bc,00703h		;8ff1
	ld c,01ch		;8ff4
	jr c,l9028h		;8ff6
	inc b			;8ff8
	nop			;8ff9
	add a,a			;8ffa
	inc c			;8ffb
	inc e			;8ffc
	jr c,l906fh		;8ffd
	ret po			;8fff
	ret nz			;9000
	add a,b			;9001
	rlca			;9002
	nop			;9003
	djnz l9006h		;9004
l9006h:
	djnz l8fc8h		;9006
	ld (bc),a		;9008
	nop			;9009
	add a,a			;900a
	jr nc,$+58		;900b
	inc e			;900d
	ld c,007h		;900e
	inc bc			;9010
	ld bc,0000eh		;9011
	adc a,c			;9014
	add a,b			;9015
	ret nz			;9016
	ret po			;9017
	ld (hl),b		;9018
	jr c,l9037h		;9019
	inc c			;901b
	nop			;901c
	nop			;901d
	nop			;901e
	ld b,000h		;901f
	add a,h			;9021
	ld bc,00303h		;9022
	ld bc,0000ch		;9025
l9028h:
	add a,h			;9028
	add a,b			;9029
	ret nz			;902a
	ret nz			;902b
	add a,b			;902c
	ld b,000h		;902d
	nop			;902f
	add a,c			;9030
	nop			;9031
	inc bc			;9032
	ld bc,00687h		;9033
	rrca			;9036
l9037h:
	rrca			;9037
	ld (hl),a		;9038
	rrca			;9039
	rrca			;903a
	ld b,003h		;903b
	ld bc,00006h		;903d
	add a,a			;9040
	ret nz			;9041
	ret po			;9042
	ret po			;9043
	call c,0e0e0h		;9044
	ret nz			;9047
	dec b			;9048
	nop			;9049
	nop			;904a
	inc bc			;904b
	nop			;904c
	adc a,d			;904d
	ld bc,00906h		;904e
l9051h:
	dec bc			;9051
	rla			;9052
	rla			;9053
	dec bc			;9054
	add hl,bc		;9055
	ld b,001h		;9056
l9058h:
	ld b,000h		;9058
	adc a,d			;905a
	add a,b			;905b
	ld h,b			;905c
	sub b			;905d
	ret nc			;905e
	ret pe			;905f
	ret pe			;9060
	ret nc			;9061
	sub b			;9062
	ld h,b			;9063
	add a,b			;9064
	rlca			;9065
	nop			;9066
	adc a,b			;9067
	ld bc,00707h		;9068
	rrca			;906b
	rrca			;906c
	rlca			;906d
	rlca			;906e
l906fh:
	ld bc,00008h		;906f
	adc a,b			;9072
	add a,b			;9073
	ret po			;9074
	ret po			;9075
	ret p			;9076
	ret p			;9077
	ret po			;9078
	ret po			;9079
	add a,b			;907a
	ld b,000h		;907b
	adc a,h			;907d
	inc bc			;907e
	inc c			;907f
	inc de			;9080
	rla			;9081
	ld l,02ch		;9082
	inc l			;9084
	ld l,017h		;9085
	inc de			;9087
	inc c			;9088
	inc bc			;9089
	inc b			;908a
	nop			;908b
	adc a,h			;908c
	ret nz			;908d
	jr nc,l9058h		;908e
	ret pe			;9090
	ld (hl),h		;9091
	inc (hl)		;9092
	inc (hl)		;9093
l9094h:
	ld (hl),h		;9094
	ret pe			;9095
	ret z			;9096
	jr nc,$-62		;9097
	dec b			;9099
	nop			;909a
	adc a,d			;909b
	inc bc			;909c
	rrca			;909d
	rrca			;909e
	ld e,01ch		;909f
	inc e			;90a1
	ld e,00fh		;90a2
	rrca			;90a4
	inc bc			;90a5
	ld b,000h		;90a6
	adc a,d			;90a8
	ret nz			;90a9
	ret p			;90aa
	ret p			;90ab
	ld a,b			;90ac
	jr c,l90e7h		;90ad
	ld a,b			;90af
	ret p			;90b0
	ret p			;90b1
	ret nz			;90b2
	inc b			;90b3
	nop			;90b4
	sbc a,(hl)		;90b5
	inc bc			;90b6
	inc c			;90b7
	ld de,02826h		;90b8
	ld c,b			;90bb
	ld d,b			;90bc
	ld d,b			;90bd
	ld c,b			;90be
	jr z,l90e7h		;90bf
	ld de,0030ch		;90c1
	nop			;90c4
	nop			;90c5
	ret nz			;90c6
	jr nc,l9051h		;90c7
	ld h,h			;90c9
	inc d			;90ca
	ld (de),a		;90cb
	ld a,(bc)		;90cc
	ld a,(bc)		;90cd
	ld (de),a		;90ce
	inc d			;90cf
	ld h,h			;90d0
	adc a,b			;90d1
l90d2h:
	jr nc,l9094h		;90d2
	inc bc			;90d4
	nop			;90d5
	adc a,h			;90d6
	inc bc			;90d7
l90d8h:
	rrca			;90d8
	ld e,018h		;90d9
	jr c,l910dh		;90db
	jr nc,$+58		;90dd
	jr l90ffh		;90df
	rrca			;90e1
	inc bc			;90e2
	inc b			;90e3
	nop			;90e4
	sub b			;90e5
	ret nz			;90e6
l90e7h:
	ret p			;90e7
	ld a,b			;90e8
	jr l9107h		;90e9
	inc c			;90eb
	inc c			;90ec
	inc e			;90ed
	jr l9168h		;90ee
	ret p			;90f0
	ret nz			;90f1
	nop			;90f2
	nop			;90f3
	inc bc			;90f4
	inc b			;90f5
	inc bc			;90f6
	nop			;90f7
	add a,c			;90f8
	ld b,b			;90f9
	inc b			;90fa
	add a,b			;90fb
	add a,c			;90fc
	ld b,b			;90fd
	inc bc			;90fe
l90ffh:
	nop			;90ff
	add a,h			;9100
	inc b			;9101
	inc bc			;9102
	ret nz			;9103
	jr nz,l9109h		;9104
	nop			;9106
l9107h:
	add a,c			;9107
	ld (bc),a		;9108
l9109h:
	inc b			;9109
	ld bc,00281h		;910a
l910dh:
	inc bc			;910d
	nop			;910e
	adc a,b			;910f
	jr nz,l90d2h		;9110
	nop			;9112
	inc bc			;9113
	inc c			;9114
	nop			;9115
	jr nz,l9138h		;9116
	inc b			;9118
	ld b,b			;9119
	ld (bc),a		;911a
	jr nz,$-116		;911b
	nop			;911d
	inc c			;911e
	inc bc			;911f
	nop			;9120
	nop			;9121
	ret nz			;9122
	jr nc,l9125h		;9123
l9125h:
	inc b			;9125
	inc b			;9126
	inc b			;9127
	ld (bc),a		;9128
	ld (bc),a		;9129
	inc b			;912a
	add a,h			;912b
	nop			;912c
	jr nc,$-62		;912d
	nop			;912f
	nop			;9130
	ld c,027h		;9131
	add a,d			;9133
	rlca			;9134
	daa			;9135
	ld c,0a4h		;9136
l9138h:
	add a,d			;9138
	and b			;9139
	and h			;913a
	djnz l915ch		;913b
	djnz $-6		;913d
	ld (bc),a		;913f
	rlca			;9140
	adc a,b			;9141
	ld (00010h),hl		;9142
	djnz l9147h		;9145
l9147h:
	djnz l9149h		;9147
l9149h:
	ex af,af'		;9149
	ld b,000h		;914a
	ld (bc),a		;914c
	and b			;914d
	adc a,c			;914e
	add a,h			;914f
	add a,b			;9150
	jr z,$-126		;9151
	add a,b			;9153
	ex af,af'		;9154
	nop			;9155
	jr z,l90d8h		;9156
	dec b			;9158
	nop			;9159
	adc a,c			;915a
	rla			;915b
l915ch:
	rra			;915c
	rla			;915d
	rlca			;915e
	ld a,(bc)		;915f
	rlca			;9160
	ld a,(bc)		;9161
	nop			;9162
	ld (bc),a		;9163
	rlca			;9164
	nop			;9165
	adc a,c			;9166
	ret m			;9167
l9168h:
	ret pe			;9168
	ret c			;9169
	ret p			;916a
	and b			;916b
	ret nc			;916c
	sub b			;916d
	and b			;916e
	add a,b			;916f
	rlca			;9170
	nop			;9171
	nop			;9172
	ld b,000h		;9173
	add a,h			;9175
	ld b,036h		;9176
	ld (hl),006h		;9178
	dec bc			;917a
	nop			;917b
	add a,(hl)		;917c
	inc c			;917d
	inc e			;917e
	call m,01cfch		;917f
	inc c			;9182
	dec b			;9183
	nop			;9184
	nop			;9185
	and b			;9186
	nop			;9187
	ld b,016h		;9188
	add hl,hl		;918a
	ld a,a			;918b
	rlca			;918c
	rlca			;918d
	djnz l91afh		;918e
	rlca			;9190
	rlca			;9191
	ld a,a			;9192
	add hl,hl		;9193
	ld d,006h		;9194
	nop			;9196
	ccf			;9197
	nop			;9198
	nop			;9199
	cp 0fch			;919a
	call m,sub_9afah	;919c
	jp m,0fcfah		;919f
	call m,000feh		;91a2
	nop			;91a5
	ccf			;91a6
	inc bc			;91a7
	nop			;91a8
	adc a,d			;91a9
	ld a,a			;91aa
	add hl,hl		;91ab
	rlca			;91ac
	nop			;91ad
	rrca			;91ae
l91afh:
	nop			;91af
	nop			;91b0
	rlca			;91b1
	add hl,hl		;91b2
	ld a,a			;91b3
	inc b			;91b4
	nop			;91b5
	rst 8			;91b6
	ld a,a			;91b7
	cp 0feh			;91b8
	and h			;91ba
	call m,06f1fh		;91bb
	rrca			;91be
	rra			;91bf
	call m,0fea4h		;91c0
	cp 07fh			;91c3
	nop			;91c5
	nop			;91c6
	ld (bc),a		;91c7
	rlca			;91c8
	xor (hl)		;91c9
	ld d,c			;91ca
	xor a			;91cb
	ld (bc),a		;91cc
	ld (0122fh),a		;91cd
	xor a			;91d0
	ld d,c			;91d1
	xor (hl)		;91d2
	nop			;91d3
	ld bc,07c00h		;91d4
	ld bc,03cfdh		;91d7
	pop hl			;91da
	ld a,h			;91db
	and h			;91dc
	inc h			;91dd
	cp 0a5h			;91de
	ld a,(hl)		;91e0
	ret po			;91e1
	dec a			;91e2
	ld bc,000fdh		;91e3
	nop			;91e6
	ld bc,0ff00h		;91e7
	xor a			;91ea
	rst 38h			;91eb
	rrca			;91ec
	cpl			;91ed
	ld (0ff1fh),a		;91ee
	xor a			;91f1
	rst 38h			;91f2
	rlca			;91f3
	ld (bc),a		;91f4
	nop			;91f5
	nop			;91f6
	call m,0e100h		;91f7
	defb 0fdh,0fch,07eh ;illegal sequence	;91fa
	rst 38h			;91fd
	dec h			;91fe
	ld a,a			;91ff
	cp 0fdh			;9200
	ret po			;9202
	call m,07c01h		;9203
	nop			;9206
	rlca			;9207
	nop			;9208
	add a,e			;9209
	ld h,c			;920a
	or (hl)			;920b
	or (hl)			;920c
	ld a,(bc)		;920d
	nop			;920e
	adc a,b			;920f
	rrca			;9210
	ld a,(0f078h)		;9211
l9214h:
	ret m			;9214
l9215h:
	ret m			;9215
	rrca			;9216
	ret p			;9217
	ld c,000h		;9218
	add a,c			;921a
	ld h,c			;921b
	add hl,bc		;921c
	nop			;921d
	adc a,b			;921e
	rrca			;921f
	ld h,064h		;9220
	inc c			;9222
	inc b			;9223
	inc b			;9224
	rst 38h			;9225
	ret p			;9226
	inc b			;9227
	nop			;9228
	adc a,c			;9229
	jr nz,l926ch		;922a
	ld (hl),b		;922c
	inc b			;922d
	inc b			;922e
	rlca			;922f
	rlca			;9230
	inc b			;9231
	inc bc			;9232
	inc b			;9233
	ld bc,0000ah		;9234
	add a,d			;9237
	call c,004e8h		;9238
	ret m			;923b
	adc a,l			;923c
	call m,00000h		;923d
	djnz l925ah		;9240
	ex af,af'		;9242
	jr c,$+4		;9243
	ld bc,00707h		;9245
	ld (bc),a		;9248
	ld bc,0000bh		;9249
	adc a,c			;924c
	add a,b			;924d
	ret nz			;924e
	inc a			;924f
	jr l925ah		;9250
	sbc a,b			;9252
	ret pe			;9253
	xor b			;9254
	ld a,h			;9255
	dec b			;9256
	nop			;9257
	add a,c			;9258
	inc bc			;9259
l925ah:
	inc bc			;925a
	ld bc,00092h		;925b
	dec c			;925e
	dec e			;925f
	dec e			;9260
	rra			;9261
	rra			;9262
	inc d			;9263
	dec d			;9264
	ex af,af'		;9265
	nop			;9266
	ld b,b			;9267
	ld b,b			;9268
l9269h:
	add a,b			;9269
	ret nz			;926a
	add a,b			;926b
l926ch:
	nop			;926c
	add a,b			;926d
	ret po			;926e
	inc b			;926f
	ret p			;9270
	sbc a,h			;9271
	jr nz,l9214h		;9272
	nop			;9274
	ld bc,00202h		;9275
	nop			;9278
	ld (bc),a		;9279
	nop			;927a
	nop			;927b
	ld bc,00e07h		;927c
	ld c,00ch		;927f
	ld a,(bc)		;9281
	dec bc			;9282
	ld a,(bc)		;9283
	rlca			;9284
	add a,b			;9285
l9286h:
	nop			;9286
	nop			;9287
	ld b,b			;9288
	nop			;9289
	nop			;928a
	add a,b			;928b
	nop			;928c
	and b			;928d
	inc bc			;928e
	jr nc,l9215h		;928f
	ld d,b			;9291
	ret nc			;9292
	ld d,b			;9293
	ret po			;9294
	rlca			;9295
	nop			;9296
	add a,d			;9297
	dec sp			;9298
	rla			;9299
	inc b			;929a
	rra			;929b
	adc a,h			;929c
	ccf			;929d
	nop			;929e
	nop			;929f
	inc b			;92a0
	ld (bc),a		;92a1
	ld c,020h		;92a2
	jr nz,l9286h		;92a4
	ret po			;92a6
	jr nz,l9269h		;92a7
	inc b			;92a9
	add a,b			;92aa
	ex af,af'		;92ab
	nop			;92ac
	sub l			;92ad
	ld bc,03c03h		;92ae
	jr l92c3h		;92b1
	add hl,de		;92b3
	rla			;92b4
	dec d			;92b5
	ld a,000h		;92b6
	nop			;92b8
	ex af,af'		;92b9
	jr l92cch		;92ba
	inc e			;92bc
	ld b,b			;92bd
	add a,b			;92be
	ret po			;92bf
	ret po			;92c0
	ld b,b			;92c1
	add a,b			;92c2
l92c3h:
	ld a,(bc)		;92c3
	nop			;92c4
	adc a,b			;92c5
	ret p			;92c6
	ld e,h			;92c7
	ld e,00fh		;92c8
	rra			;92ca
	rra			;92cb
l92cch:
	ret p			;92cc
	rrca			;92cd
	dec bc			;92ce
	nop			;92cf
	add a,e			;92d0
	add a,(hl)		;92d1
	ld l,l			;92d2
	ld l,l			;92d3
	ld a,(bc)		;92d4
	nop			;92d5
	adc a,b			;92d6
	ret p			;92d7
	ld h,h			;92d8
	ld h,030h		;92d9
	jr nz,l92fdh		;92db
	rst 38h			;92dd
	rrca			;92de
	ld c,000h		;92df
	add a,c			;92e1
	add a,(hl)		;92e2
	dec b			;92e3
	nop			;92e4
	nop			;92e5
	add a,l			;92e6
	nop			;92e7
	ld bc,00203h		;92e8
	nop			;92eb
	inc b			;92ec
	ld bc,00302h		;92ed
	ld (bc),a		;92f0
	rlca			;92f1
	ld (bc),a		;92f2
	rrca			;92f3
	add a,l			;92f4
	rra			;92f5
	nop			;92f6
	add a,b			;92f7
	add a,b			;92f8
	nop			;92f9
	rlca			;92fa
	add a,b			;92fb
	ld (bc),a		;92fc
l92fdh:
	ret nz			;92fd
	ld (bc),a		;92fe
	ret po			;92ff
	sub c			;9300
	ret p			;9301
	ld bc,00002h		;9302
	ld bc,00303h		;9305
	ld (bc),a		;9308
	inc bc			;9309
	inc bc			;930a
	ld b,006h		;930b
	ld a,(bc)		;930d
	ld a,(bc)		;930e
	ld (de),a		;930f
	ld (de),a		;9310
	rrca			;9311
	inc bc			;9312
	nop			;9313
	sbc a,b			;9314
	add a,b			;9315
	nop			;9316
	nop			;9317
	add a,b			;9318
	nop			;9319
	nop			;931a
	ret nz			;931b
	ret nz			;931c
	and b			;931d
	and b			;931e
	sub b			;931f
	sub b			;9320
	ret po			;9321
	nop			;9322
	jr nc,$+122		;9323
	inc e			;9325
	ld (00805h),hl		;9326
	rlca			;9329
	inc bc			;932a
	ld bc,00b01h		;932b
	nop			;932e
	sub l			;932f
	ld h,b			;9330
	ret po			;9331
	call m,0fcfeh		;9332
	ret m			;9335
	ret p			;9336
	ret po			;9337
	ld b,b			;9338
	nop			;9339
	nop			;933a
	ld b,b			;933b
	nop			;933c
	ld l,h			;933d
	inc a			;933e
	dec de			;933f
	rlca			;9340
	ld b,003h		;9341
	inc bc			;9343
	ld (bc),a		;9344
	inc bc			;9345
	ld bc,00008h		;9346
	adc a,c			;9349
	ret po			;934a
	ld e,h			;934b
	ld (0cc92h),hl		;934c
	ld l,b			;934f
	jr nc,l9372h		;9350
	add a,b			;9352
	rlca			;9353
	nop			;9354
	add a,e			;9355
	ld (hl),d		;9356
	jp m,00a0dh		;9357
	nop			;935a
	adc a,c			;935b
	ld bc,01f07h		;935c
	ld a,a			;935f
	nop			;9360
	rst 38h			;9361
	rra			;9362
	rlca			;9363
	ld bc,0000ah		;9364
	ld (bc),a		;9367
	dec c			;9368
	add a,c			;9369
	ld a,d			;936a
	ld a,(bc)		;936b
	nop			;936c
	adc a,c			;936d
	ld b,019h		;936e
	ld h,c			;9370
	rst 38h			;9371
l9372h:
	rst 38h			;9372
	nop			;9373
	ld h,c			;9374
	add hl,de		;9375
	ld b,009h		;9376
	nop			;9378
	ld (bc),a		;9379
	ld bc,00387h		;937a
	ld bc,00507h		;937d
	ld l,074h		;9380
	ld h,b			;9382
	inc bc			;9383
	nop			;9384
	adc a,c			;9385
	ld b,b			;9386
	ret po			;9387
	ret p			;9388
	ret m			;9389
	call m,0fcfeh		;938a
	ret po			;938d
	ret po			;938e
	ex af,af'		;938f
	nop			;9390
	inc bc			;9391
	ld bc,00295h		;9392
	inc bc			;9395
	ld (bc),a		;9396
	rlca			;9397
	ex af,af'		;9398
	dec de			;9399
	ld e,00ch		;939a
	jr l940eh		;939c
	nop			;939e
	nop			;939f
	ret nz			;93a0
	jr nz,l93d3h		;93a1
	ld c,b			;93a3
	sbc a,h			;93a4
	ld (03c62h),a		;93a5
	ld h,b			;93a8
	ld b,000h		;93a9
	nop			;93ab
	ret nz			;93ac
	add a,a			;93ad
	rrca			;93ae
	rrca			;93af
	adc a,(hl)		;93b0
	rlca			;93b1
	ld c,a			;93b2
	ccf			;93b3
	ld l,027h		;93b4
	daa			;93b6
	ld d,a			;93b7
	and l			;93b8
	ld c,h			;93b9
	add a,a			;93ba
	ld (bc),a		;93bb
	ld bc,0f0e1h		;93bc
	ret p			;93bf
	ld (hl),c		;93c0
	ret po			;93c1
	jp p,074fch		;93c2
	call po,0eae4h		;93c5
	and l			;93c8
	ld (040e1h),a		;93c9
	add a,b			;93cc
	rrca			;93cd
	sbc a,h			;93ce
	cp b			;93cf
	cp c			;93d0
	cp h			;93d1
	rst 38h			;93d2
l93d3h:
	call m,0fcf9h		;93d3
	cp 03bh			;93d6
	ld l,d			;93d8
	rst 10h			;93d9
	adc a,e			;93da
	dec b			;93db
	ld (bc),a		;93dc
	ret p			;93dd
	add hl,sp		;93de
	dec e			;93df
	sbc a,l			;93e0
	dec a			;93e1
	rst 38h			;93e2
l93e3h:
	ccf			;93e3
	sbc a,a			;93e4
	ccf			;93e5
	ld a,a			;93e6
	call c,0eb56h		;93e7
	pop de			;93ea
	and b			;93eb
	ld b,b			;93ec
	nop			;93ed
	cp e			;93ee
	nop			;93ef
	rlca			;93f0
	inc c			;93f1
	rra			;93f2
	ld e,00ch		;93f3
	ld b,005h		;93f5
	ld (hl),025h		;93f7
	ld d,(hl)		;93f9
	ld d,l			;93fa
	ld d,(hl)		;93fb
	ld d,l			;93fc
	ld a,05eh		;93fd
	nop			;93ff
	ld b,b			;9400
	nop			;9401
	ret m			;9402
	sbc a,b			;9403
	jr c,$-14		;9404
	ret po			;9406
	call m,0f3feh		;9407
	ei			;940a
	ld e,e			;940b
	ei			;940c
	ld l,(hl)		;940d
l940eh:
	ei			;940e
	rlca			;940f
	rrca			;9410
	rra			;9411
	rra			;9412
	ld bc,00913h		;9413
	rlca			;9416
	ccf			;9417
	ld a,(hl)		;9418
	xor l			;9419
	xor a			;941a
	xor l			;941b
	xor a			;941c
	ld a,l			;941d
	cp a			;941e
	ret po			;941f
	ret p			;9420
	ret m			;9421
	ret m			;9422
	ld a,b			;9423
	ret m			;9424
	ret p			;9425
	ret po			;9426
	call m,0df9ah		;9427
	inc bc			;942a
	rst 38h			;942b
	or h			;942c
	cp 0ffh			;942d
	ld e,(hl)		;942f
	ld a,055h		;9430
	ld d,(hl)		;9432
	ld d,l			;9433
	ld d,(hl)		;9434
	dec h			;9435
	ld (hl),005h		;9436
	ld b,00ch		;9438
	ld e,01fh		;943a
	inc c			;943c
	rlca			;943d
	nop			;943e
	ei			;943f
	ld l,(hl)		;9440
	ei			;9441
	ld e,e			;9442
	ei			;9443
	di			;9444
	cp 0fch			;9445
	ret po			;9447
	ret p			;9448
	jr c,l93e3h		;9449
	ret m			;944b
	nop			;944c
	ld b,b			;944d
	nop			;944e
	cp a			;944f
	ld a,l			;9450
	xor a			;9451
	xor l			;9452
	xor a			;9453
	xor l			;9454
	ld a,(hl)		;9455
	ccf			;9456
	rlca			;9457
	add hl,bc		;9458
	inc de			;9459
	ld bc,01f1fh		;945a
	rrca			;945d
	rlca			;945e
	rst 38h			;945f
	cp 003h			;9460
	rst 38h			;9462
	adc a,e			;9463
	rst 18h			;9464
	sbc a,d			;9465
	call m,0f0e0h		;9466
	ret m			;9469
	ld a,b			;946a
	ret m			;946b
	ret m			;946c
	ret p			;946d
	ret po			;946e
	nop			;946f
	ld (bc),a		;9470
	nop			;9471
	sbc a,c			;9472
	inc c			;9473
	inc b			;9474
	daa			;9475
	add hl,de		;9476
	rrca			;9477
	inc b			;9478
	rlca			;9479
	ccf			;947a
	ld l,b			;947b
	ld a,a			;947c
	ccf			;947d
	ld a,a			;947e
	ld l,b			;947f
	ccf			;9480
	inc bc			;9481
	inc b			;9482
	inc bc			;9483
	inc b			;9484
	dec bc			;9485
	rla			;9486
	ret nc			;9487
	rst 38h			;9488
	xor c			;9489
	and b			;948a
	ld e,a			;948b
	inc bc			;948c
	rst 38h			;948d
	add a,d			;948e
	ld e,a			;948f
	and b			;9490
	inc bc			;9491
	nop			;9492
	xor b			;9493
	ld a,(de)		;9494
	inc a			;9495
	ld e,00fh		;9496
	rlca			;9498
	rlca			;9499
	jr z,l951bh		;949a
	ld a,a			;949c
	add hl,hl		;949d
	ld a,a			;949e
	ld a,a			;949f
	ccf			;94a0
	inc c			;94a1
	rlca			;94a2
	inc c			;94a3
	rlca			;94a4
	inc (hl)		;94a5
	ret pe			;94a6
	cpl			;94a7
	rst 38h			;94a8
	cp 05fh			;94a9
	and b			;94ab
	rst 38h			;94ac
	djnz $+1		;94ad
	and b			;94af
	rst 38h			;94b0
	ret nc			;94b1
	ld h,b			;94b2
	ret nc			;94b3
	ld h,b			;94b4
l94b5h:
	ret nc			;94b5
	ret pe			;94b6
	dec bc			;94b7
	rst 38h			;94b8
	dec d			;94b9
	dec b			;94ba
	jp m,0ff03h		;94bb
	and d			;94be
	jp m,00005h		;94bf
	nop			;94c2
	jr nc,l94e5h		;94c3
	call po,0f098h		;94c5
	jr nz,$-30		;94c8
	call m,0fe16h		;94ca
	call m,016feh		;94cd
	call m,0e030h		;94d0
	jr nc,l94b5h		;94d3
	inc l			;94d5
	rla			;94d6
	call p,0ffffh		;94d7
	jp m,0ff05h		;94da
	ex af,af'		;94dd
	rst 38h			;94de
	dec b			;94df
	rst 38h			;94e0
	inc bc			;94e1
	nop			;94e2
	sbc a,a			;94e3
	ld e,b			;94e4
l94e5h:
	inc a			;94e5
	ld a,b			;94e6
	ret p			;94e7
sub_94e8h:
	ret po			;94e8
	ret po			;94e9
	inc d			;94ea
	cp 0feh			;94eb
	sub h			;94ed
	cp 0feh			;94ee
	call m,0683fh		;94f0
	ld a,a			;94f3
	ccf			;94f4
	ld a,a			;94f5
	ld l,b			;94f6
	ccf			;94f7
	rlca			;94f8
	inc b			;94f9
	rrca			;94fa
	add hl,de		;94fb
	daa			;94fc
	inc b			;94fd
	inc c			;94fe
	nop			;94ff
	nop			;9500
	and b			;9501
	ld e,a			;9502
	inc bc			;9503
	rst 38h			;9504
	sbc a,b			;9505
	ld e,a			;9506
	and b			;9507
	xor c			;9508
	rst 38h			;9509
	ret nc			;950a
	rla			;950b
	dec bc			;950c
	inc b			;950d
	inc bc			;950e
	inc b			;950f
	inc bc			;9510
	ccf			;9511
	ld a,a			;9512
	ld a,a			;9513
	add hl,hl		;9514
	ld a,a			;9515
	ld a,a			;9516
	jr z,l9520h		;9517
	rlca			;9519
	rrca			;951a
l951bh:
	ld e,03ch		;951b
	ld a,(de)		;951d
	inc bc			;951e
	nop			;951f
l9520h:
	sub d			;9520
	rst 38h			;9521
	and b			;9522
	rst 38h			;9523
	djnz $+1		;9524
	and b			;9526
	ld e,a			;9527
	cp 0ffh			;9528
	cpl			;952a
	ret pe			;952b
	inc (hl)		;952c
	rlca			;952d
	inc c			;952e
	rlca			;952f
	inc c			;9530
	dec b			;9531
	jp m,0ff03h		;9532
	cp b			;9535
	jp m,01505h		;9536
	rst 38h			;9539
	dec bc			;953a
	ret pe			;953b
	ret nc			;953c
	ld h,b			;953d
	ret nc			;953e
	ld h,b			;953f
l9540h:
	ret nc			;9540
	call m,0fe16h		;9541
	call m,016feh		;9544
	call m,020e0h		;9547
	ret p			;954a
	sbc a,b			;954b
	call po,03020h		;954c
	nop			;954f
	nop			;9550
	rst 38h			;9551
	dec b			;9552
	rst 38h			;9553
	ex af,af'		;9554
	rst 38h			;9555
	dec b			;9556
	jp m,0ffffh		;9557
	call p,02c17h		;955a
	ret po			;955d
l955eh:
	jr nc,l9540h		;955e
	jr nc,l955eh		;9560
	cp 0feh			;9562
	sub h			;9564
	cp 0feh			;9565
	inc d			;9567
	ret po			;9568
	ret po			;9569
	ret p			;956a
l956bh:
	ld a,b			;956b
	inc a			;956c
	ld e,b			;956d
	inc bc			;956e
	nop			;956f
	nop			;9570
	inc b			;9571
	nop			;9572
	ld (bc),a		;9573
	xor b			;9574
	adc a,d			;9575
	rst 38h			;9576
	xor b			;9577
	rra			;9578
	ccf			;9579
	ld hl,0003fh		;957a
	add a,b			;957d
	ld a,a			;957e
	ld e,a			;957f
	inc b			;9580
	nop			;9581
	ld (bc),a		;9582
	add a,h			;9583
	adc a,d			;9584
	call m,0ff87h		;9585
	rst 38h			;9588
	xor l			;9589
	rst 38h			;958a
	rlca			;958b
	add hl,bc		;958c
	jp p,004f2h		;958d
	nop			;9590
	adc a,h			;9591
	rst 38h			;9592
	ld d,a			;9593
	xor b			;9594
	rst 38h			;9595
	rra			;9596
	ld hl,03f3fh		;9597
	rst 38h			;959a
	ld a,a			;959b
	cp a			;959c
	and d			;959d
	inc b			;959e
	nop			;959f
	add a,(hl)		;95a0
	call m,sub_8478h	;95a1
	rst 38h			;95a4
	rst 38h			;95a5
	xor l			;95a6
	inc bc			;95a7
	rst 38h			;95a8
	adc a,a			;95a9
	ret p			;95aa
	jp (hl)			;95ab
	add hl,hl		;95ac
	ld d,e			;95ad
	ld e,l			;95ae
	ld a,a			;95af
	nop			;95b0
	ccf			;95b1
	ld hl,01f3fh		;95b2
	xor b			;95b5
	xor b			;95b6
	rst 38h			;95b7
	xor b			;95b8
	inc b			;95b9
	nop			;95ba
	adc a,h			;95bb
	ld (0f2f2h),a		;95bc
	rlca			;95bf
	rst 38h			;95c0
	xor l			;95c1
	rst 38h			;95c2
	rst 38h			;95c3
	add a,a			;95c4
	add a,h			;95c5
	call m,00484h		;95c6
	nop			;95c9
	adc a,h			;95ca
	xor (hl)		;95cb
	cp a			;95cc
	add a,b			;95cd
	rst 38h			;95ce
	ccf			;95cf
	ccf			;95d0
	ld hl,0ff1fh		;95d1
	ld d,a			;95d4
	xor b			;95d5
	rst 38h			;95d6
	inc b			;95d7
	nop			;95d8
	ld (bc),a		;95d9
	jp (hl)			;95da
	add a,c			;95db
	add hl,bc		;95dc
	inc bc			;95dd
	rst 38h			;95de
	add a,(hl)		;95df
	xor l			;95e0
	rst 38h			;95e1
	rst 38h			;95e2
	ld a,b			;95e3
	add a,h			;95e4
	call m,00004h		;95e5
	nop			;95e8
	ld b,0bfh		;95e9
	add a,c			;95eb
	ld h,(hl)		;95ec
	ld b,0ffh		;95ed
	add a,e			;95ef
	jp 0c3ffh		;95f0
	ld b,0fdh		;95f3
	add a,c			;95f5
	ld h,(hl)		;95f6
	add hl,bc		;95f7
	rst 38h			;95f8
	ld b,0bfh		;95f9
	add a,c			;95fb
	ld h,(hl)		;95fc
	add hl,bc		;95fd
	rst 38h			;95fe
	ld b,0fdh		;95ff
	add a,c			;9601
	ld h,(hl)		;9602
	ld b,0ffh		;9603
	add a,e			;9605
	jp 0c3ffh		;9606
	ld b,0ffh		;9609
	add a,a			;960b
	ld h,(hl)		;960c
	rst 38h			;960d
	rst 38h			;960e
	ret p			;960f
	rst 30h			;9610
	rst 30h			;9611
	rst 38h			;9612
	inc bc			;9613
	ld d,a			;9614
	ld b,0ffh		;9615
	add a,a			;9617
	ld h,(hl)		;9618
	rst 38h			;9619
	rst 38h			;961a
	rrca			;961b
	rst 28h			;961c
	rst 28h			;961d
	rst 38h			;961e
	inc bc			;961f
	jp pe,0af04h		;9620
	rlca			;9623
	rst 38h			;9624
	add a,c			;9625
	ret p			;9626
	inc b			;9627
	rst 30h			;9628
	inc b			;9629
	push af			;962a
	rlca			;962b
	rst 38h			;962c
	add a,c			;962d
	rrca			;962e
	inc b			;962f
	rst 28h			;9630
	nop			;9631
	add a,a			;9632
	nop			;9633
	rrca			;9634
	ld a,083h		;9635
	ld (hl),e		;9637
	rrca			;9638
	inc e			;9639
	inc bc			;963a
	rra			;963b
	or (hl)			;963c
	rrca			;963d
	ld (hl),e		;963e
	defb 0fdh,01eh,00fh ;illegal sequence	;963f
	nop			;9642
	jp c,0a874h		;9643
	ld sp,hl		;9646
	call pe,0e4f3h		;9647
	ret nz			;964a
	ret nz			;964b
	call po,0ecffh		;964c
	sub (hl)		;964f
	xor c			;9650
	halt			;9651
	jp c,0100fh		;9652
	ld b,c			;9655
	ld a,l			;9656
	adc a,a			;9657
	ld a,h			;9658
	inc de			;9659
	nop			;965a
	nop			;965b
	djnz l96dah		;965c
	adc a,a			;965e
	inc bc			;965f
	ld h,c			;9660
	djnz $+17		;9661
	and 0cch		;9663
	sbc a,096h		;9665
	di			;9667
	ccf			;9668
	ld a,h			;9669
	ld a,b			;966a
	ld a,b			;966b
	ld a,h			;966c
	ccf			;966d
	di			;966e
	ld sp,hl		;966f
	rst 18h			;9670
	adc a,0e6h		;9671
	nop			;9673
	or b			;9674
	inc bc			;9675
	inc c			;9676
	dec de			;9677
	rra			;9678
	ld a,039h		;9679
	ld h,a			;967b
	ld c,(hl)		;967c
	ld (hl),l		;967d
	dec b			;967e
	dec c			;967f
	jr l9698h		;9680
	cpl			;9682
	dec e			;9683
	ld c,080h		;9684
	ret nz			;9686
	ret po			;9687
	ld d,b			;9688
	nop			;9689
	ret p			;968a
	ld (hl),b		;968b
	ret m			;968c
	sbc a,b			;968d
	jp p,0faeeh		;968e
	call z,sub_94e8h	;9691
	jr c,l9696h		;9694
l9696h:
	inc bc			;9696
	inc b			;9697
l9698h:
	ld bc,01f07h		;9698
	ld a,a			;969b
	ccf			;969c
	halt			;969d
	ld a,(bc)		;969e
	inc de			;969f
	daa			;96a0
	cpl			;96a1
	ccf			;96a2
	rra			;96a3
	scf			;96a4
	inc bc			;96a5
	nop			;96a6
l96a7h:
	inc bc			;96a7
	ret p			;96a8
	cp h			;96a9
	adc a,b			;96aa
	ld (hl),b		;96ab
	call p,0de9eh		;96ac
	adc a,0fch		;96af
l96b1h:
	sbc a,b			;96b1
	call m,0bfd8h		;96b2
	ld a,d			;96b5
	ld c,(hl)		;96b6
	ld sp,00804h		;96b7
	jr l96cch		;96ba
	jr nc,$+50		;96bc
	ld hl,06763h		;96be
	ld c,d			;96c1
	rra			;96c2
	jr nc,l96b1h		;96c3
	sub d			;96c5
	ld h,c			;96c6
	add a,b			;96c7
	inc bc			;96c8
	inc b			;96c9
	ld e,03ch		;96ca
l96cch:
	ld a,(hl)		;96cc
	call nc,sub_8078h	;96cd
	nop			;96d0
	add a,b			;96d1
	nop			;96d2
	nop			;96d3
	ld a,h			;96d4
	ld b,a			;96d5
	ccf			;96d6
	ld a,a			;96d7
	dec de			;96d8
	rla			;96d9
l96dah:
	daa			;96da
	cpl			;96db
	ld c,a			;96dc
	ld c,a			;96dd
	ld e,a			;96de
l96dfh:
	ld e,09dh		;96df
	cp a			;96e1
	rst 38h			;96e2
	ld (hl),b		;96e3
	inc e			;96e4
	ld a,(hl)		;96e5
	inc bc			;96e6
	rst 38h			;96e7
	add a,(hl)		;96e8
	cp 0fah			;96e9
	or 0eah			;96eb
	call m,003f8h		;96ed
	add a,b			;96f0
	ld (bc),a		;96f1
	nop			;96f2
	and b			;96f3
	ld bc,00703h		;96f4
	ld a,(bc)		;96f7
	nop			;96f8
	rrca			;96f9
	ld c,01fh		;96fa
	add hl,de		;96fc
	ld c,a			;96fd
	ld (hl),a		;96fe
	ld e,a			;96ff
	inc sp			;9700
	rla			;9701
	add hl,hl		;9702
	inc e			;9703
	ret nz			;9704
	jr nc,l96dfh		;9705
	ret m			;9707
	ld a,h			;9708
	sbc a,h			;9709
	and 072h		;970a
	xor (hl)		;970c
	and b			;970d
	or b			;970e
	jr l9779h		;970f
	call p,070b8h		;9711
	inc bc			;9714
	nop			;9715
	inc bc			;9716
	rrca			;9717
	cp h			;9718
	ld de,02f0eh		;9719
	ld a,c			;971c
	ld a,e			;971d
	ld (hl),e		;971e
	ccf			;971f
	add hl,de		;9720
	ccf			;9721
	dec de			;9722
	nop			;9723
	ret nz			;9724
	jr nz,l96a7h		;9725
	ret po			;9727
	ret m			;9728
	cp 0fch			;9729
	ld l,(hl)		;972b
	ld d,b			;972c
	ret z			;972d
	call po,0fcf4h		;972e
	ret m			;9731
	call pe,04937h		;9732
	add a,(hl)		;9735
	ld bc,020c0h		;9736
	ld a,b			;9739
	inc a			;973a
	ld a,(hl)		;973b
	dec hl			;973c
	ld e,001h		;973d
	nop			;973f
	ld bc,00000h		;9740
	ld e,(iy+072h)		;9743
	adc a,h			;9746
	jr nz,l9759h		;9747
	jr l9753h		;9749
	inc c			;974b
	inc c			;974c
	add a,h			;974d
	add a,0e6h		;974e
	ld d,d			;9750
	ret m			;9751
	inc c			;9752
l9753h:
	jr c,l97d3h		;9753
	inc bc			;9755
	rst 38h			;9756
	add a,(hl)		;9757
	ld a,a			;9758
l9759h:
	ld e,a			;9759
	ld l,a			;975a
	ld d,a			;975b
	ccf			;975c
	rra			;975d
	inc bc			;975e
	ld bc,00002h		;975f
	sub b			;9762
	ld a,0e2h		;9763
	call m,0d8feh		;9765
	ret pe			;9768
	call po,0f2f4h		;9769
	jp p,078fah		;976c
	cp c			;976f
	defb 0fdh,0ffh,00eh ;illegal sequence	;9770
	nop			;9773
	rst 38h			;9774
	nop			;9775
	dec b			;9776
	dec bc			;9777
	rrca			;9778
l9779h:
	add hl,bc		;9779
	ld l,e			;977a
	add a,c			;977b
	rst 38h			;977c
	ld h,a			;977d
	adc a,l			;977e
	rst 38h			;977f
	rst 20h			;9780
	ld b,c			;9781
	nop			;9782
	cpl			;9783
	call p,0a000h		;9784
	ret nc			;9787
	ret p			;9788
	sub b			;9789
	sub 081h		;978a
	rst 38h			;978c
	and 0b1h		;978d
	rst 38h			;978f
	rst 20h			;9790
	add a,d			;9791
	nop			;9792
	call p,0002fh		;9793
	ld b,00ch		;9796
	ld c,00eh		;9798
	ld (hl),h		;979a
	cp 0ffh			;979b
	ld a,b			;979d
	di			;979e
	ld a,(hl)		;979f
	inc a			;97a0
	inc e			;97a1
	ld a,a			;97a2
	ret nc			;97a3
	rst 38h			;97a4
	nop			;97a5
	ld h,b			;97a6
	jr nc,l9819h		;97a7
	ld (hl),b		;97a9
	ld l,07fh		;97aa
	rst 38h			;97ac
	ld e,0cfh		;97ad
	ld a,(hl)		;97af
	inc a			;97b0
l97b1h:
	jr c,l97b1h		;97b1
	dec bc			;97b3
	rst 38h			;97b4
	call p,0002fh		;97b5
	ld b,c			;97b8
	rst 20h			;97b9
	rst 38h			;97ba
	adc a,l			;97bb
	ld h,a			;97bc
	rst 38h			;97bd
	add a,c			;97be
	ld l,e			;97bf
	add hl,bc		;97c0
	rrca			;97c1
	dec bc			;97c2
	dec b			;97c3
	nop			;97c4
	cpl			;97c5
	call p,sub_8200h	;97c6
	rst 20h			;97c9
	rst 38h			;97ca
	or c			;97cb
	and 0ffh		;97cc
	add a,c			;97ce
	sub 090h		;97cf
	ret p			;97d1
	ret nc			;97d2
l97d3h:
	and b			;97d3
	nop			;97d4
	rst 38h			;97d5
	ret nc			;97d6
	ld a,a			;97d7
	inc e			;97d8
	inc a			;97d9
	ld a,(hl)		;97da
	di			;97db
	ld a,b			;97dc
	rst 38h			;97dd
	cp 074h			;97de
	ld c,00eh		;97e0
	inc c			;97e2
	ld b,000h		;97e3
	rst 38h			;97e5
	dec bc			;97e6
	cp 038h			;97e7
	inc a			;97e9
	ld a,(hl)		;97ea
	rst 8			;97eb
	ld e,0ffh		;97ec
	ld a,a			;97ee
	ld l,070h		;97ef
	ld (hl),b		;97f1
	jr nc,l9854h		;97f2
	add a,c			;97f4
	nop			;97f5
	nop			;97f6
	ld (bc),a		;97f7
	rrca			;97f8
	xor (hl)		;97f9
l97fah:
	inc e			;97fa
	rra			;97fb
	ld a,a			;97fc
	ccf			;97fd
	ld b,b			;97fe
	add a,b			;97ff
	ld a,a			;9800
	ld (hl),l		;9801
	cpl			;9802
	ld a,d			;9803
	rra			;9804
	cpl			;9805
	rla			;9806
	inc bc			;9807
	djnz l97fah		;9808
	djnz $+1		;980a
	push bc			;980c
	ld b,l			;980d
	cp a			;980e
	call z,0ed44h		;980f
	cp d			;9812
	push de			;9813
	rst 38h			;9814
	ret p			;9815
	ret p			;9816
	djnz l981ch		;9817
l9819h:
	rla			;9819
	cpl			;981a
	ld a,a			;981b
l981ch:
	ld (hl),b		;981c
	jr nz,l989eh		;981d
	ld a,a			;981f
	add a,b			;9820
	ld a,a			;9821
	jr nc,l98a3h		;9822
	ld a,a			;9824
	inc e			;9825
	rrca			;9826
l9827h:
	rrca			;9827
	inc bc			;9828
	ret p			;9829
	adc a,(hl)		;982a
	push hl			;982b
	ld a,(0ffffh)		;982c
	ld (hl),h		;982f
	call m,0c5ffh		;9830
	rst 38h			;9833
	rst 38h			;9834
	djnz l9827h		;9835
	ret p			;9837
	ld b,b			;9838
	inc b			;9839
	nop			;983a
	add a,(hl)		;983b
	ld a,b			;983c
	ld b,035h		;983d
	inc (hl)		;983f
	ld b,078h		;9840
	inc b			;9842
	nop			;9843
	add a,c			;9844
	ld b,b			;9845
	inc b			;9846
	nop			;9847
	adc a,b			;9848
	ld bc,06c1ch		;9849
	xor h			;984c
	inc l			;984d
	ld l,h			;984e
	inc e			;984f
	ld bc,00004h		;9850
	and b			;9853
l9854h:
	or b			;9854
	ld b,a			;9855
	rrca			;9856
	rrca			;9857
	inc (hl)		;9858
	inc bc			;9859
	ld bc,03333h		;985a
	ld bc,03403h		;985d
	rrca			;9860
	rrca			;9861
	ld b,a			;9862
	or b			;9863
	nop			;9864
	defb 0edh ;next byte illegal after ed	;9865
	rst 28h			;9866
	defb 0edh ;next byte illegal after ed	;9867
	ld (l8cc0h),a		;9868
	call z,sub_8ccch	;986b
	ret nz			;986e
	ld (0efedh),a		;986f
	defb 0edh ;next byte illegal after ed	;9872
	nop			;9873
	nop			;9874
	adc a,h			;9875
	inc bc			;9876
	ld b,00ch		;9877
	rrca			;9879
	ld a,(bc)		;987a
	ld d,b			;987b
	scf			;987c
	dec hl			;987d
	ld a,l			;987e
	ld a,05bh		;987f
	xor l			;9881
	inc bc			;9882
	ld a,d			;9883
	adc a,l			;9884
	xor l			;9885
	ret nz			;9886
	ret po			;9887
	ld (hl),b		;9888
	ret p			;9889
	ld d,b			;988a
	ld a,(bc)		;988b
	call pe,07ed4h		;988c
	or 06bh			;988f
	or l			;9891
	inc bc			;9892
	rst 28h			;9893
	add a,h			;9894
	or l			;9895
	nop			;9896
	ld bc,00303h		;9897
	rrca			;989a
	add a,(hl)		;989b
	ld a,a			;989c
	ld (hl),a		;989d
l989eh:
	ld a,(hl)		;989e
	ld e,a			;989f
	xor h			;98a0
	rst 38h			;98a1
	inc bc			;98a2
l98a3h:
	xor l			;98a3
	add a,h			;98a4
	rst 38h			;98a5
	nop			;98a6
	nop			;98a7
	add a,b			;98a8
	inc bc			;98a9
	ret p			;98aa
	add a,(hl)		;98ab
	cp 0eeh			;98ac
	cp 0fah			;98ae
l98b0h:
	or l			;98b0
	rst 38h			;98b1
	inc bc			;98b2
	or l			;98b3
	add a,c			;98b4
	rst 38h			;98b5
	nop			;98b6
	ld (bc),a		;98b7
	nop			;98b8
	adc a,l			;98b9
	add hl,de		;98ba
	dec bc			;98bb
	rlca			;98bc
	rrca			;98bd
	jr l98c7h		;98be
	rlca			;98c0
	jr $+17			;98c1
l98c3h:
	rlca			;98c3
	dec bc			;98c4
	add hl,de		;98c5
	add hl,de		;98c6
l98c7h:
	inc bc			;98c7
	nop			;98c8
	adc a,(hl)		;98c9
	sbc a,b			;98ca
	ret nc			;98cb
	ret po			;98cc
	ret p			;98cd
	jr l98b0h		;98ce
l98d0h:
	ret po			;98d0
	jr l98c3h		;98d1
	ret po			;98d3
	ret nc			;98d4
	sbc a,b			;98d5
	sbc a,b			;98d6
	nop			;98d7
	nop			;98d8
	adc a,d			;98d9
	ld b,018h		;98da
	inc hl			;98dc
	ld b,h			;98dd
	ld b,b			;98de
	inc bc			;98df
	add a,(hl)		;98e0
	add a,a			;98e1
	rlca			;98e2
	inc bc			;98e3
	inc bc			;98e4
	nop			;98e5
	sub h			;98e6
	ex af,af'		;98e7
	dec c			;98e8
	ld bc,0a0a0h		;98e9
	jr nz,l992eh		;98ec
	inc b			;98ee
	sbc a,l			;98ef
	call 0c04dh		;98f0
	add a,b			;98f3
	ld bc,00012h		;98f4
	inc b			;98f7
	ld d,b			;98f8
	ld b,b			;98f9
	ld bc,00004h		;98fa
	add a,d			;98fd
	add a,b			;98fe
	add a,c			;98ff
	inc bc			;9900
	add a,b			;9901
	sub (hl)		;9902
	ret nz			;9903
	ld b,b			;9904
	ld h,c			;9905
	jr c,$+25		;9906
	ld b,040h		;9908
	jr l98d0h		;990a
	ld (01f1ah),a		;990c
	adc a,l			;990f
	adc a,l			;9910
	add hl,bc		;9911
	ld bc,00002h		;9912
	and 018h		;9915
	ret pe			;9917
	and b			;9918
	nop			;9919
	rst 38h			;991a
	nop			;991b
	ld c,021h		;991c
	ld a,03eh		;991e
	dec a			;9920
	dec de			;9921
	ld (bc),a		;9922
	dec b			;9923
	ld de,02322h		;9924
	inc h			;9927
	inc d			;9928
	ld (de),a		;9929
	ld bc,0f080h		;992a
	add a,h			;992d
l992eh:
	call m,0bcfch		;992e
	ret c			;9931
	ld b,b			;9932
	and b			;9933
	adc a,b			;9934
	ld b,h			;9935
	call nz,02824h		;9936
	ld c,b			;9939
	add a,b			;993a
	ld (bc),a		;993b
	ld de,0411eh		;993c
	ld b,c			;993f
	ld b,e			;9940
	ld h,a			;9941
	ccf			;9942
	ld b,00ah		;9943
	inc de			;9945
	djnz l995ah		;9946
	ld a,(bc)		;9948
	add hl,bc		;9949
	nop			;994a
	ret nz			;994b
	adc a,b			;994c
	ld a,b			;994d
	add a,d			;994e
	add a,d			;994f
	jp nz,0fce6h		;9950
	ld h,b			;9953
	ld d,b			;9954
	ret z			;9955
	ex af,af'		;9956
	ld c,b			;9957
	ld d,b			;9958
	sub b			;9959
l995ah:
	nop			;995a
	nop			;995b
	ld c,021h		;995c
	ld a,03eh		;995e
	dec a			;9960
	dec de			;9961
	ld (bc),a		;9962
	dec b			;9963
	ld de,0090ah		;9964
	ld a,(bc)		;9967
	ld (de),a		;9968
	ld (l8004h),hl		;9969
	ret p			;996c
	add a,h			;996d
	call m,0bcfch		;996e
	ret c			;9971
	ld b,b			;9972
	and b			;9973
	adc a,b			;9974
	ld d,b			;9975
	sub b			;9976
	ld d,b			;9977
	ld c,b			;9978
	ld b,h			;9979
	jr nz,$+4		;997a
	ld de,0411eh		;997c
	ld b,c			;997f
	ld b,e			;9980
	ld h,a			;9981
	ccf			;9982
	ld b,00ah		;9983
	rlca			;9985
	inc b			;9986
	dec b			;9987
	add hl,bc		;9988
	ld de,0c002h		;9989
	adc a,b			;998c
	ld a,b			;998d
	add a,d			;998e
	add a,d			;998f
	jp nz,0fce6h		;9990
	ld h,b			;9993
	ld d,b			;9994
	ret po			;9995
	jr nz,$-94		;9996
	sub b			;9998
	adc a,b			;9999
	add a,c			;999a
	ld b,b			;999b
	nop			;999c
	inc b			;999d
	nop			;999e
	adc a,b			;999f
	inc bc			;99a0
	ld b,00dh		;99a1
l99a3h:
	dec bc			;99a3
	dec bc			;99a4
	dec c			;99a5
	ld b,003h		;99a6
	ex af,af'		;99a8
	nop			;99a9
	adc a,b			;99aa
	ret nz			;99ab
	ld h,b			;99ac
	or b			;99ad
	ret nc			;99ae
	ret nc			;99af
	or b			;99b0
	ld h,b			;99b1
	ret nz			;99b2
	add hl,bc		;99b3
	nop			;99b4
	add a,(hl)		;99b5
	ld bc,00703h		;99b6
	rlca			;99b9
	inc bc			;99ba
	ld bc,0000ah		;99bb
	add a,(hl)		;99be
	add a,b			;99bf
	ret nz			;99c0
	ret po			;99c1
	ret po			;99c2
	ret nz			;99c3
	add a,b			;99c4
	rlca			;99c5
	nop			;99c6
	adc a,h			;99c7
	inc bc			;99c8
	ld c,018h		;99c9
	inc de			;99cb
	scf			;99cc
	daa			;99cd
	daa			;99ce
	scf			;99cf
	inc de			;99d0
	jr l99e1h		;99d1
	inc bc			;99d3
	inc b			;99d4
	nop			;99d5
	adc a,h			;99d6
	ret nz			;99d7
	ld (hl),b		;99d8
	jr l99a3h		;99d9
	call pe,0e4e4h		;99db
	call pe,018c8h		;99de
l99e1h:
	ld (hl),b		;99e1
	ret nz			;99e2
	dec b			;99e3
	nop			;99e4
	adc a,d			;99e5
	ld bc,00f07h		;99e6
	rrca			;99e9
	rra			;99ea
	rra			;99eb
	rrca			;99ec
	rrca			;99ed
	rlca			;99ee
	ld bc,00006h		;99ef
	adc a,d			;99f2
	add a,b			;99f3
	ret po			;99f4
	ret p			;99f5
	ret p			;99f6
	ret m			;99f7
	ret m			;99f8
	ret p			;99f9
	ret p			;99fa
	ret po			;99fb
	add a,b			;99fc
	inc bc			;99fd
l99feh:
	nop			;99fe
	add a,(hl)		;99ff
	rlca			;9a00
	inc e			;9a01
	jr nc,l9a67h		;9a02
	ld c,a			;9a04
	rst 8			;9a05
	inc b			;9a06
	sbc a,a			;9a07
	adc a,h			;9a08
	rst 8			;9a09
	ld c,a			;9a0a
	ld h,e			;9a0b
	jr nc,l9a2ah		;9a0c
	rlca			;9a0e
	ret po			;9a0f
	jr c,l9a1eh		;9a10
	add a,0f2h		;9a12
	di			;9a14
	inc b			;9a15
	ld sp,hl		;9a16
	adc a,h			;9a17
	di			;9a18
	jp p,00cc6h		;9a19
	jr c,l99feh		;9a1c
l9a1eh:
	nop			;9a1e
	inc bc			;9a1f
	rrca			;9a20
	rra			;9a21
	ccf			;9a22
	ccf			;9a23
	inc b			;9a24
	ld a,a			;9a25
	ld (bc),a		;9a26
	ccf			;9a27
	adc a,d			;9a28
	rra			;9a29
l9a2ah:
	rrca			;9a2a
	inc bc			;9a2b
	nop			;9a2c
	nop			;9a2d
	ret nz			;9a2e
	ret p			;9a2f
	ret m			;9a30
	call m,004fch		;9a31
	cp 002h			;9a34
	call m,0f884h		;9a36
	ret p			;9a39
	ret nz			;9a3a
	nop			;9a3b
	nop			;9a3c
	rst 38h			;9a3d
	rlca			;9a3e
	rra			;9a3f
	rrca			;9a40
	ld h,a			;9a41
	ld (hl),b		;9a42
	ei			;9a43
	or 0f5h			;9a44
	push af			;9a46
	or 0f3h			;9a47
	ld h,h			;9a49
	ld c,a			;9a4a
	rra			;9a4b
	rra			;9a4c
	rlca			;9a4d
	ret po			;9a4e
	ret m			;9a4f
	ret m			;9a50
	jp p,0cf26h		;9a51
	ld l,a			;9a54
	xor a			;9a55
	xor a			;9a56
	ld l,a			;9a57
	rst 18h			;9a58
	ld c,0e6h		;9a59
	ret p			;9a5b
	ret m			;9a5c
	ret po			;9a5d
	inc bc			;9a5e
	dec de			;9a5f
	dec a			;9a60
	ld a,l			;9a61
	ld a,h			;9a62
	ei			;9a63
	or 0f5h			;9a64
	push af			;9a66
l9a67h:
	add a,03bh		;9a67
	ld a,h			;9a69
	ld a,a			;9a6a
	ccf			;9a6b
	rra			;9a6c
	rlca			;9a6d
	ret po			;9a6e
	ret m			;9a6f
	call m,03efeh		;9a70
	call c,0af63h		;9a73
	xor a			;9a76
	ld l,a			;9a77
	rst 18h			;9a78
	ld a,0beh		;9a79
	cp h			;9a7b
	ret c			;9a7c
	ret nz			;9a7d
	rlca			;9a7e
	rra			;9a7f
	ccf			;9a80
	ld a,a			;9a81
	ld a,h			;9a82
	ei			;9a83
	or 005h			;9a84
	push af			;9a86
	or 0fbh			;9a87
	ld a,h			;9a89
	ld a,(hl)		;9a8a
	ld a,01eh		;9a8b
	ld b,060h		;9a8d
	ld a,b			;9a8f
	ld a,h			;9a90
	ld a,(hl)		;9a91
	ld a,0dfh		;9a92
	ld l,a			;9a94
	xor a			;9a95
	and b			;9a96
	ld l,a			;9a97
	rst 18h			;9a98
	ld a,0feh		;9a99
	call m,0e0f8h		;9a9b
	rlca			;9a9e
	rra			;9a9f
	ccf			;9aa0
	ld a,a			;9aa1
	ld a,h			;9aa2
	dec sp			;9aa3
	add a,0f5h		;9aa4
	push af			;9aa6
	or 0fbh			;9aa7
	ld a,h			;9aa9
	ld a,l			;9aaa
	dec a			;9aab
	dec de			;9aac
	inc bc			;9aad
	ret nz			;9aae
	ret c			;9aaf
l9ab0h:
	cp h			;9ab0
	cp (hl)			;9ab1
	ld a,0dfh		;9ab2
	ld l,a			;9ab4
	xor a			;9ab5
	xor a			;9ab6
	ld h,e			;9ab7
	call c,0fe3eh		;9ab8
	call m,081f8h		;9abb
	ret po			;9abe
	nop			;9abf
	add a,h			;9ac0
	rlca			;9ac1
	rra			;9ac2
	inc bc			;9ac3
	inc a			;9ac4
	inc bc			;9ac5
	ld a,a			;9ac6
	sub d			;9ac7
	ret p			;9ac8
	xor 0eeh		;9ac9
	sbc a,05eh		;9acb
	ld e,a			;9acd
	rra			;9ace
	rrca			;9acf
	ld bc,0f080h		;9ad0
	ret m			;9ad3
	jp m,07b7ah		;9ad4
	ld (hl),a		;9ad7
	ld (hl),a		;9ad8
	rrca			;9ad9
l9adah:
	inc bc			;9ada
	cp 0adh			;9adb
	inc a			;9add
	ret nz			;9ade
	ret m			;9adf
	ret po			;9ae0
	rlca			;9ae1
	rra			;9ae2
	ccf			;9ae3
	ld h,e			;9ae4
	dec c			;9ae5
	ld a,07eh		;9ae6
	ld a,(hl)		;9ae8
	ret m			;9ae9
	rst 30h			;9aea
	rst 28h			;9aeb
	ld l,a			;9aec
	ld h,a			;9aed
	scf			;9aee
	inc de			;9aef
	nop			;9af0
	nop			;9af1
	ret z			;9af2
	call pe,0f6e6h		;9af3
	rst 30h			;9af6
	rst 28h			;9af7
	rra			;9af8
	ld a,(hl)		;9af9
sub_9afah:
	ld a,(hl)		;9afa
	ld a,h			;9afb
	or b			;9afc
	add a,0fch		;9afd
	ret m			;9aff
	ret po			;9b00
	nop			;9b01
	rrca			;9b02
	ccf			;9b03
	ld a,a			;9b04
	ld a,a			;9b05
	pop bc			;9b06
	sbc a,(hl)		;9b07
	ld a,07ch		;9b08
	inc bc			;9b0a
	ld a,e			;9b0b
	adc a,b			;9b0c
	dec sp			;9b0d
	add hl,sp		;9b0e
	inc e			;9b0f
	ld b,060h		;9b10
	jr c,l9ab0h		;9b12
	call c,0de03h		;9b14
	xor c			;9b17
	ld a,07ch		;9b18
l9b1ah:
	ld a,c			;9b1a
	add a,e			;9b1b
	cp 0feh			;9b1c
	call m,000f0h		;9b1e
	rlca			;9b21
	ld bc,03f1eh		;9b22
	ld a,a			;9b25
	ld a,a			;9b26
	pop hl			;9b27
	sbc a,0deh		;9b28
	cp l			;9b2a
	cp l			;9b2b
	dec a			;9b2c
	dec a			;9b2d
	ld e,00fh		;9b2e
	inc bc			;9b30
	ret nz			;9b31
	ret p			;9b32
	ld a,b			;9b33
	cp h			;9b34
	cp h			;9b35
	cp l			;9b36
	cp l			;9b37
	ld a,e			;9b38
	ld a,e			;9b39
	add a,a			;9b3a
	cp 0feh			;9b3b
	call m,sub_8078h	;9b3d
	ret po			;9b40
	nop			;9b41
	inc b			;9b42
	nop			;9b43
	add a,h			;9b44
	inc bc			;9b45
	rlca			;9b46
	ld c,00ch		;9b47
	inc bc			;9b49
	ex af,af'		;9b4a
	add a,d			;9b4b
	inc b			;9b4c
	inc bc			;9b4d
	rlca			;9b4e
	nop			;9b4f
	add a,h			;9b50
	ret nz			;9b51
	ret po			;9b52
	ld (hl),b		;9b53
	jr nc,$+5		;9b54
	djnz l9adah		;9b56
	jr nz,l9b1ah		;9b58
	add hl,bc		;9b5a
	nop			;9b5b
	add a,(hl)		;9b5c
	ld bc,00602h		;9b5d
	rlca			;9b60
	rlca			;9b61
	inc bc			;9b62
	ld a,(bc)		;9b63
	nop			;9b64
	add a,(hl)		;9b65
	add a,b			;9b66
	ld b,b			;9b67
	ld h,b			;9b68
	ret po			;9b69
	ret po			;9b6a
l9b6bh:
	ret nz			;9b6b
	inc b			;9b6c
	nop			;9b6d
	nop			;9b6e
	and b			;9b6f
	nop			;9b70
	ld bc,00203h		;9b71
	ld bc,00001h		;9b74
	nop			;9b77
	inc b			;9b78
	daa			;9b79
	ld c,c			;9b7a
	ld d,h			;9b7b
	dec l			;9b7c
	dec de			;9b7d
	add hl,bc		;9b7e
	inc c			;9b7f
	or h			;9b80
	sbc a,b			;9b81
	ld e,h			;9b82
	ld d,h			;9b83
	djnz $-14		;9b84
	and b			;9b86
	ret nz			;9b87
	ld h,b			;9b88
	jr z,l9b6bh		;9b89
	ld d,b			;9b8b
	ld a,b			;9b8c
	ld (0e070h),hl		;9b8d
	inc bc			;9b90
	nop			;9b91
	add a,c			;9b92
	ld bc,00006h		;9b93
	adc a,b			;9b96
	ld h,00bh		;9b97
	inc bc			;9b99
	rlca			;9b9a
	rlca			;9b9b
	inc bc			;9b9c
	ld b,b			;9b9d
	ld h,b			;9b9e
	inc bc			;9b9f
	ret po			;9ba0
	ld b,000h		;9ba1
	ld (bc),a		;9ba3
	add a,b			;9ba4
	xor d			;9ba5
	ret nz			;9ba6
	add a,b			;9ba7
	nop			;9ba8
	daa			;9ba9
	dec l			;9baa
	ld b,l			;9bab
	inc l			;9bac
	dec bc			;9bad
	add hl,bc		;9bae
	ld b,001h		;9baf
	nop			;9bb1
	ld bc,00203h		;9bb2
	ld bc,00001h		;9bb5
	nop			;9bb8
	and d			;9bb9
	ld h,h			;9bba
	ld b,h			;9bbb
	ret po			;9bbc
	ld h,b			;9bbd
	ld b,b			;9bbe
	xor b			;9bbf
	and h			;9bc0
	or h			;9bc1
	sbc a,b			;9bc2
	ld e,h			;9bc3
	ld d,h			;9bc4
	djnz $-14		;9bc5
	and b			;9bc7
	ret nz			;9bc8
	nop			;9bc9
	ld (bc),a		;9bca
	inc bc			;9bcb
	inc bc			;9bcc
	rlca			;9bcd
	rlca			;9bce
	ld bc,00004h		;9bcf
	add a,c			;9bd2
	ld bc,00005h		;9bd3
	ld (bc),a		;9bd6
	add a,b			;9bd7
	add a,a			;9bd8
	nop			;9bd9
	add a,b			;9bda
	add a,b			;9bdb
	ret nz			;9bdc
	ld b,b			;9bdd
	ld b,b			;9bde
	ld h,b			;9bdf
	inc bc			;9be0
	ret po			;9be1
	inc bc			;9be2
	nop			;9be3
	sub c			;9be4
	ld a,(de)		;9be5
	ld a,(bc)		;9be6
	inc sp			;9be7
	inc de			;9be8
	ld c,d			;9be9
	ld a,(bc)		;9bea
	dec h			;9beb
	inc de			;9bec
	daa			;9bed
	dec l			;9bee
	ld b,l			;9bef
	inc l			;9bf0
	dec bc			;9bf1
	add hl,bc		;9bf2
	ld b,001h		;9bf3
	and b			;9bf5
	inc bc			;9bf6
	ld b,b			;9bf7
	sbc a,l			;9bf8
	ret nz			;9bf9
	and b			;9bfa
	and b			;9bfb
	nop			;9bfc
	and d			;9bfd
	ld h,h			;9bfe
	ld b,h			;9bff
	ret po			;9c00
	ld h,b			;9c01
	ld b,b			;9c02
	xor b			;9c03
	and h			;9c04
	dec b			;9c05
	rlca			;9c06
	rrca			;9c07
	rrca			;9c08
	rlca			;9c09
	rlca			;9c0a
	ld (bc),a		;9c0b
	nop			;9c0c
	nop			;9c0d
	ld (bc),a		;9c0e
	inc bc			;9c0f
	inc bc			;9c10
	rlca			;9c11
	rlca			;9c12
	ld bc,00000h		;9c13
	inc bc			;9c16
	add a,b			;9c17
	dec b			;9c18
	nop			;9c19
	ld (bc),a		;9c1a
	add a,b			;9c1b
	add a,l			;9c1c
	nop			;9c1d
	add a,b			;9c1e
	add a,b			;9c1f
	ret nz			;9c20
	ld b,b			;9c21
	inc bc			;9c22
	nop			;9c23
	sbc a,l			;9c24
	jr l9c4bh		;9c25
	dec hl			;9c27
	inc b			;9c28
	ex af,af'		;9c29
	add hl,hl		;9c2a
	rra			;9c2b
	inc c			;9c2c
	ld (0ede4h),a		;9c2d
	ld b,e			;9c30
	ld (hl),04dh		;9c31
	or c			;9c33
	ld l,h			;9c34
	dec hl			;9c35
	call nz,069beh		;9c36
	add a,d			;9c39
	dec b			;9c3a
	ld hl,078cch		;9c3b
	ld h,b			;9c3e
	add a,b			;9c3f
	ret nc			;9c40
	ld b,b			;9c41
	inc b			;9c42
	nop			;9c43
	add a,d			;9c44
	jr l9c4bh		;9c45
	inc b			;9c47
	nop			;9c48
	sub e			;9c49
	inc bc			;9c4a
l9c4bh:
	rrca			;9c4b
	rra			;9c4c
	ld e,03ch		;9c4d
	ex af,af'		;9c4f
	ld (bc),a		;9c50
	ld c,01fh		;9c51
	inc e			;9c53
	jr c,l9c96h		;9c54
	nop			;9c56
	nop			;9c57
	ld (bc),a		;9c58
	nop			;9c59
	nop			;9c5a
	add a,b			;9c5b
	add a,b			;9c5c
	dec b			;9c5d
	nop			;9c5e
	sbc a,l			;9c5f
	dec c			;9c60
	dec bc			;9c61
	rlca			;9c62
	add hl,de		;9c63
	ld b,06ch		;9c64
	ld c,l			;9c66
	or c			;9c67
	ld l,h			;9c68
	dec hl			;9c69
	call nz,069beh		;9c6a
	add a,d			;9c6d
	ld c,h			;9c6e
	ccf			;9c6f
	ld h,(hl)		;9c70
	out (054h),a		;9c71
	call z,0ce36h		;9c73
	call c,0e0a0h		;9c76
	ld b,b			;9c79
	nop			;9c7a
	and b			;9c7b
	add a,b			;9c7c
	rlca			;9c7d
	nop			;9c7e
	adc a,b			;9c7f
	ld bc,00213h		;9c80
	ld c,01fh		;9c83
	inc e			;9c85
	jr c,l9cc8h		;9c86
	inc b			;9c88
	nop			;9c89
	add a,l			;9c8a
	add hl,de		;9c8b
	inc a			;9c8c
	jr c,l9cbfh		;9c8d
	ret nz			;9c8f
	ld a,(bc)		;9c90
	nop			;9c91
	sbc a,c			;9c92
	ld bc,0071dh		;9c93
l9c96h:
	add hl,bc		;9c96
	or (hl)			;9c97
	jr l9cf1h		;9c98
	call c,0663fh		;9c9a
	out (054h),a		;9c9d
	call z,0ce36h		;9c9f
	ld a,0e7h		;9ca2
	sub e			;9ca4
	ld (hl),067h		;9ca5
	ld c,b			;9ca7
	jr z,l9d20h		;9ca8
	jp nc,00a48h		;9caa
	nop			;9cad
	sub h			;9cae
	ld b,009h		;9caf
	rlca			;9cb1
	ex af,af'		;9cb2
	nop			;9cb3
	nop			;9cb4
	add hl,de		;9cb5
	inc a			;9cb6
	jr c,l9ce9h		;9cb7
	ret nz			;9cb9
	nop			;9cba
	nop			;9cbb
	jr $+126		;9cbc
	ret m			;9cbe
l9cbfh:
	ret m			;9cbf
	ret p			;9cc0
	ret nc			;9cc1
	add a,b			;9cc2
	ex af,af'		;9cc3
	nop			;9cc4
	sub b			;9cc5
	or d			;9cc6
	adc a,l			;9cc7
l9cc8h:
	ld (hl),0d4h		;9cc8
	inc hl			;9cca
	ld a,l			;9ccb
	sub (hl)		;9ccc
	ld b,c			;9ccd
	and b			;9cce
	add a,h			;9ccf
	inc sp			;9cd0
	ld e,006h		;9cd1
	ld bc,0020bh		;9cd3
	inc bc			;9cd6
	nop			;9cd7
	sbc a,d			;9cd8
	jr l9cffh		;9cd9
	call nc,01020h		;9cdb
	sub h			;9cde
	ret m			;9cdf
	jr nc,l9d2eh		;9ce0
	daa			;9ce2
	or a			;9ce3
	jp nz,0406ch		;9ce4
	ld (hl),b		;9ce7
	ret m			;9ce8
l9ce9h:
	jr c,$+30		;9ce9
	ld (bc),a		;9ceb
	nop			;9cec
	nop			;9ced
	ld b,b			;9cee
	nop			;9cef
	nop			;9cf0
l9cf1h:
	ld bc,00701h		;9cf1
	nop			;9cf4
	add a,d			;9cf5
	jr l9d18h		;9cf6
	inc b			;9cf8
	nop			;9cf9
	sub l			;9cfa
	ret nz			;9cfb
	ret p			;9cfc
	ret m			;9cfd
	ld a,b			;9cfe
l9cffh:
	inc a			;9cff
	djnz l9d34h		;9d00
	call m,0cb66h		;9d02
	ld hl,(06c33h)		;9d05
	ld (hl),e		;9d08
	dec sp			;9d09
	dec b			;9d0a
	rlca			;9d0b
	ld (bc),a		;9d0c
	nop			;9d0d
	dec b			;9d0e
	ld bc,00003h		;9d0f
	sub l			;9d12
	or b			;9d13
	ret nc			;9d14
	ret po			;9d15
	sbc a,b			;9d16
	ld h,b			;9d17
l9d18h:
	ld (hl),0b2h		;9d18
	adc a,l			;9d1a
	ld (hl),0d4h		;9d1b
	inc hl			;9d1d
	ld a,l			;9d1e
	sub (hl)		;9d1f
l9d20h:
	ld b,c			;9d20
	nop			;9d21
	nop			;9d22
	sbc a,b			;9d23
	inc a			;9d24
	inc e			;9d25
	inc c			;9d26
	inc bc			;9d27
	rrca			;9d28
	nop			;9d29
	sub h			;9d2a
	add a,b			;9d2b
	ret z			;9d2c
	ld b,b			;9d2d
l9d2eh:
	ld (hl),b		;9d2e
	ret m			;9d2f
	jr c,$+30		;9d30
	ld (bc),a		;9d32
l9d33h:
	nop			;9d33
l9d34h:
	nop			;9d34
	ld a,h			;9d35
	rst 20h			;9d36
	ret			;9d37
	ld l,h			;9d38
	and 012h		;9d39
	inc d			;9d3b
	ld l,(hl)		;9d3c
	ld c,e			;9d3d
	ld (de),a		;9d3e
	rlca			;9d3f
	nop			;9d40
	sub a			;9d41
	add a,b			;9d42
	cp b			;9d43
	ret po			;9d44
	sub b			;9d45
	ld l,l			;9d46
	jr l9d33h		;9d47
	dec sp			;9d49
	call m,0cb66h		;9d4a
	ld hl,(06c33h)		;9d4d
	ld (hl),e		;9d50
	nop			;9d51
	jr $+64			;9d52
	rra			;9d54
	rra			;9d55
	rrca			;9d56
	dec bc			;9d57
	ld bc,0000ch		;9d58
	adc a,e			;9d5b
	ld h,b			;9d5c
	sub b			;9d5d
	ret po			;9d5e
	djnz l9d61h		;9d5f
l9d61h:
	nop			;9d61
	sbc a,b			;9d62
	inc a			;9d63
	inc e			;9d64
	inc c			;9d65
	inc bc			;9d66
	ld b,000h		;9d67
	sbc a,d			;9d69
	add a,(hl)		;9d6a
	ld a,b			;9d6b
	adc a,(hl)		;9d6c
	inc sp			;9d6d
	defb 0fdh,002h,0cch ;illegal sequence	;9d6e
	or c			;9d71
	ld (00008h),hl		;9d72
	nop			;9d75
	add a,b			;9d76
	ld h,c			;9d77
	ld (bc),a		;9d78
	nop			;9d79
	in a,(07ch)		;9d7a
	sub e			;9d7c
	defb 0edh ;next byte illegal after ed	;9d7d
	adc a,d			;9d7e
	jp p,0005ch		;9d7f
	ret nc			;9d82
	jr nz,l9d8dh		;9d83
	nop			;9d85
	add a,l			;9d86
	ld (hl),b		;9d87
	call m,0fc7eh		;9d88
	jr nc,l9d97h		;9d8b
l9d8dh:
	nop			;9d8d
	add a,l			;9d8e
	inc bc			;9d8f
	ld l,(hl)		;9d90
	ld a,07ch		;9d91
	inc c			;9d93
	ld b,000h		;9d94
	adc a,(hl)		;9d96
l9d97h:
	add a,b			;9d97
	ld h,c			;9d98
	ld (bc),a		;9d99
	nop			;9d9a
	in a,(07ch)		;9d9b
	sub e			;9d9d
	defb 0edh ;next byte illegal after ed	;9d9e
	adc a,d			;9d9f
	jp p,0005ch		;9da0
	ret nc			;9da3
	jr nz,l9da9h		;9da4
	nop			;9da6
	adc a,b			;9da7
	or b			;9da8
l9da9h:
	ld h,b			;9da9
	call m,03586h		;9daa
	rst 0			;9dad
	ld l,h			;9dae
	jr nc,l9dbdh		;9daf
	nop			;9db1
	add a,l			;9db2
	inc bc			;9db3
	ld l,(hl)		;9db4
	ld a,07ch		;9db5
	inc c			;9db7
	ld a,(bc)		;9db8
	nop			;9db9
l9dbah:
	add a,h			;9dba
	ld a,b			;9dbb
	ret m			;9dbc
l9dbdh:
	jr c,l9dcfh		;9dbd
	add hl,bc		;9dbf
	nop			;9dc0
	adc a,b			;9dc1
	or b			;9dc2
	ld h,b			;9dc3
	call m,03586h		;9dc4
	rst 0			;9dc7
	ld l,h			;9dc8
	jr nc,l9dd2h		;9dc9
	nop			;9dcb
	adc a,(hl)		;9dcc
	inc b			;9dcd
	nop			;9dce
l9dcfh:
	ld c,b			;9dcf
	ld a,(de)		;9dd0
	rst 28h			;9dd1
l9dd2h:
	cp e			;9dd2
	ld hl,0446eh		;9dd3
	exx			;9dd6
	cpl			;9dd7
	inc d			;9dd8
	ld c,b			;9dd9
	jr nc,l9de2h		;9dda
	nop			;9ddc
	add a,h			;9ddd
	ld a,b			;9dde
	ret m			;9ddf
	jr c,l9df2h		;9de0
l9de2h:
	dec c			;9de2
	nop			;9de3
	adc a,d			;9de4
	inc b			;9de5
	ld e,01fh		;9de6
	ccf			;9de8
	ld h,010h		;9de9
	nop			;9deb
	jr nz,l9deeh		;9dec
l9deeh:
	nop			;9dee
	nop			;9def
	rst 38h			;9df0
	nop			;9df1
l9df2h:
	ld bc,0bbbah		;9df2
	ld (bc),a		;9df5
	inc b			;9df6
	jr nc,l9e6ah		;9df7
	ld h,c			;9df9
	jr nc,$+6		;9dfa
	ld (bc),a		;9dfc
	cp d			;9dfd
	cp e			;9dfe
	ld bc,00000h		;9dff
	adc a,b			;9e02
	rst 38h			;9e03
	rst 38h			;9e04
	ld a,(hl)		;9e05
	ld e,l			;9e06
	rst 8			;9e07
	rst 0			;9e08
	add a,a			;9e09
	rst 8			;9e0a
	ld a,d			;9e0b
	dec b			;9e0c
	ei			;9e0d
	rst 38h			;9e0e
	adc a,b			;9e0f
	ld a,a			;9e10
	nop			;9e11
	nop			;9e12
	ld b,l			;9e13
	rst 38h			;9e14
	ld b,002h		;9e15
	nop			;9e17
	ld l,c			;9e18
	jr l9e1bh		;9e19
l9e1bh:
	ld (bc),a		;9e1b
	ld b,045h		;9e1c
	rst 38h			;9e1e
	ld bc,03f00h		;9e1f
	ld (hl),a		;9e22
	sbc a,b			;9e23
	ei			;9e24
	dec b			;9e25
	ld a,a			;9e26
	rrca			;9e27
	and a			;9e28
	ld h,a			;9e29
	rrca			;9e2a
	ld (hl),l		;9e2b
	ld a,a			;9e2c
	rst 38h			;9e2d
	sbc a,b			;9e2e
	rst 38h			;9e2f
	ld a,a			;9e30
	nop			;9e31
	ld bc,0bbbah		;9e32
	ld (bc),a		;9e35
	inc b			;9e36
	ld b,00eh		;9e37
	inc c			;9e39
	ld b,004h		;9e3a
	ld (bc),a		;9e3c
	cp d			;9e3d
	cp e			;9e3e
	ld bc,00000h		;9e3f
	adc a,b			;9e42
	rst 38h			;9e43
	rst 38h			;9e44
	ld a,(hl)		;9e45
	ld e,l			;9e46
	rrca			;9e47
	rlca			;9e48
	rlca			;9e49
	rrca			;9e4a
	ld a,d			;9e4b
	dec b			;9e4c
	ei			;9e4d
	rst 38h			;9e4e
	adc a,b			;9e4f
	ld a,a			;9e50
	nop			;9e51
	nop			;9e52
	ld b,l			;9e53
	rst 38h			;9e54
	ld b,002h		;9e55
	nop			;9e57
	dec c			;9e58
	inc bc			;9e59
	nop			;9e5a
	ld (bc),a		;9e5b
	ld b,045h		;9e5c
	rst 38h			;9e5e
	ld bc,03f00h		;9e5f
	ld (hl),a		;9e62
	sbc a,b			;9e63
	ei			;9e64
	dec b			;9e65
	ld a,a			;9e66
	rrca			;9e67
	rlca			;9e68
	rlca			;9e69
l9e6ah:
	rrca			;9e6a
	ld (hl),l		;9e6b
	ld a,a			;9e6c
	rst 38h			;9e6d
	sbc a,b			;9e6e
	rst 38h			;9e6f
	rst 38h			;9e70
	ld a,a			;9e71
	nop			;9e72
	ld de,0ffffh		;9e73
	ld a,(hl)		;9e76
	cp d			;9e77
	di			;9e78
	ex (sp),hl		;9e79
	pop hl			;9e7a
	di			;9e7b
	ld e,(hl)		;9e7c
	and b			;9e7d
	rst 18h			;9e7e
	rst 38h			;9e7f
	ld de,000feh		;9e80
	add a,b			;9e83
	ld e,l			;9e84
	defb 0ddh,040h,020h ;illegal sequence	;9e85
	inc c			;9e88
	adc a,(hl)		;9e89
	add a,(hl)		;9e8a
	inc c			;9e8b
	jr nz,l9eceh		;9e8c
	ld e,l			;9e8e
	defb 0ddh,080h,000h ;illegal sequence	;9e8f
	call m,019eeh		;9e92
	rst 18h			;9e95
	and b			;9e96
	cp 0f0h			;9e97
	push hl			;9e99
	and 0f0h		;9e9a
	xor (hl)		;9e9c
	cp 0ffh			;9e9d
	add hl,de		;9e9f
	rst 38h			;9ea0
	cp 000h			;9ea1
	nop			;9ea3
	and d			;9ea4
	rst 38h			;9ea5
	ld h,b			;9ea6
	ld b,b			;9ea7
	nop			;9ea8
	sub (hl)		;9ea9
	jr l9each		;9eaa
l9each:
	ld b,b			;9eac
	ld h,b			;9ead
	and d			;9eae
	rst 38h			;9eaf
	add a,b			;9eb0
	nop			;9eb1
	nop			;9eb2
	ld de,0ffffh		;9eb3
	ld a,(hl)		;9eb6
	cp d			;9eb7
	ret p			;9eb8
	ret po			;9eb9
	ret po			;9eba
	ret p			;9ebb
	ld e,(hl)		;9ebc
	and b			;9ebd
	rst 18h			;9ebe
	rst 38h			;9ebf
	ld de,000feh		;9ec0
	add a,b			;9ec3
	ld e,l			;9ec4
	defb 0ddh,040h,020h ;illegal sequence	;9ec5
	ld h,b			;9ec8
	ld (hl),b		;9ec9
	jr nc,l9f2ch		;9eca
	jr nz,l9f0eh		;9ecc
l9eceh:
	ld e,l			;9ece
	defb 0ddh,080h,000h ;illegal sequence	;9ecf
	call m,019eeh		;9ed2
	rst 18h			;9ed5
	and b			;9ed6
	cp 0f0h			;9ed7
	ret po			;9ed9
	ret po			;9eda
	ret p			;9edb
	xor (hl)		;9edc
	cp 0ffh			;9edd
	add hl,de		;9edf
	rst 38h			;9ee0
	cp 000h			;9ee1
	nop			;9ee3
	and d			;9ee4
	rst 38h			;9ee5
	ld h,b			;9ee6
	ld b,b			;9ee7
	nop			;9ee8
	or b			;9ee9
	ret nz			;9eea
	nop			;9eeb
	ld b,b			;9eec
	ld h,b			;9eed
	and d			;9eee
	rst 38h			;9eef
	add a,d			;9ef0
	add a,b			;9ef1
	nop			;9ef2
	nop			;9ef3
	sbc a,e			;9ef4
	nop			;9ef5
	ld (bc),a		;9ef6
	inc c			;9ef7
	rrca			;9ef8
	rst 38h			;9ef9
	inc h			;9efa
	ccf			;9efb
	ld bc,0bf83h		;9efc
	ld c,a			;9eff
	scf			;9f00
	dec de			;9f01
	inc b			;9f02
	inc bc			;9f03
	nop			;9f04
	rst 38h			;9f05
	dec d			;9f06
	or l			;9f07
	rst 38h			;9f08
	rst 38h			;9f09
	ld c,c			;9f0a
	rst 38h			;9f0b
	rst 38h			;9f0c
	dec d			;9f0d
l9f0eh:
	jp pe,003eah		;9f0e
	cp 09bh			;9f11
	inc d			;9f13
	jp pe,00100h		;9f14
	inc bc			;9f17
	rst 38h			;9f18
	call m,02c3fh		;9f19
	rst 38h			;9f1c
	ld a,(hl)		;9f1d
	call nz,03878h		;9f1e
	inc e			;9f21
	rlca			;9f22
	inc bc			;9f23
	nop			;9f24
	ld d,l			;9f25
	jp pe,0ffffh		;9f26
	ld c,c			;9f29
	rst 38h			;9f2a
	ld c,c			;9f2b
l9f2ch:
	rst 38h			;9f2c
	ex de,hl		;9f2d
	dec b			;9f2e
	dec d			;9f2f
	add a,d			;9f30
	rst 38h			;9f31
	jp pe,0c000h		;9f32
	dec b			;9f35
	dec l			;9f36
	ld (de),a		;9f37
	ld l,l			;9f38
	ld (de),a		;9f39
	cp a			;9f3a
	ret			;9f3b
l9f3ch:
	or (hl)			;9f3c
	ld b,0cfh		;9f3d
	rrca			;9f3f
	jp p,0529dh		;9f40
	ld (l801fh),a		;9f43
	ret po			;9f46
	nop			;9f47
	call m,0c03ch		;9f48
	ccf			;9f4b
	in a,(0dbh)		;9f4c
	rst 38h			;9f4e
	ret nz			;9f4f
	inc a			;9f50
	ret p			;9f51
	inc c			;9f52
	ld (hl),b		;9f53
	add a,b			;9f54
	ld a,(de)		;9f55
	ld (de),a		;9f56
	dec l			;9f57
	ld (de),a		;9f58
	ld a,a			;9f59
	ld c,a			;9f5a
	rst 38h			;9f5b
	or b			;9f5c
	or b			;9f5d
	ld sp,hl		;9f5e
	rst 38h			;9f5f
	rst 38h			;9f60
	jp p,03f7fh		;9f61
	rra			;9f64
	nop			;9f65
	nop			;9f66
	ret p			;9f67
	nop			;9f68
	call m,0ffc0h		;9f69
	dec de			;9f6c
	nop			;9f6d
	ccf			;9f6e
	ret nz			;9f6f
	call m,0fc0ch		;9f70
	ret p			;9f73
	add a,b			;9f74
	nop			;9f75
	inc bc			;9f76
	nop			;9f77
	adc a,e			;9f78
	inc sp			;9f79
	jr nc,l9f3ch		;9f7a
	ld bc,0031bh		;9f7c
	ld bc,l8004h		;9f7f
	jr nc,l9f8bh		;9f82
	dec b			;9f84
	nop			;9f85
	adc a,e			;9f86
	call z,0030ch		;9f87
	add a,b			;9f8a
l9f8bh:
	ret c			;9f8b
	ret nz			;9f8c
	add a,b			;9f8d
	jr nz,l9f91h		;9f8e
	inc c			;9f90
l9f91h:
	ret po			;9f91
	inc bc			;9f92
	nop			;9f93
	ld (bc),a		;9f94
	rlca			;9f95
	sbc a,l			;9f96
	nop			;9f97
	add a,e			;9f98
	ld b,00ch		;9f99
	add hl,de		;9f9b
	jr l9faah		;9f9c
	jp nz,00333h		;9f9e
	nop			;9fa1
	rlca			;9fa2
	nop			;9fa3
	nop			;9fa4
	ret po			;9fa5
	ret po			;9fa6
	nop			;9fa7
	pop bc			;9fa8
	ld h,b			;9fa9
l9faah:
	jr nc,$-102		;9faa
	jr l9fdeh		;9fac
	ld b,e			;9fae
	call z,000c0h		;9faf
	ret po			;9fb2
	nop			;9fb3
	nop			;9fb4
	ret nz			;9fb5
	jr nc,$+81		;9fb6
	or d			;9fb8
	ld c,l			;9fb9
	ld (0091eh),a		;9fba
	ld a,(bc)		;9fbd
	inc b			;9fbe
	dec bc			;9fbf
	ld de,0c62dh		;9fc0
	ld (hl),h		;9fc3
	ld a,b			;9fc4
	djnz $+54		;9fc5
	ld l,b			;9fc7
	push af			;9fc8
	ld e,d			;9fc9
	or a			;9fca
	push de			;9fcb
	ld c,(hl)		;9fcc
	sbc a,h			;9fcd
	ld (hl),h		;9fce
	ld l,h			;9fcf
	sub h			;9fd0
	ld d,h			;9fd1
	ld l,d			;9fd2
	ld hl,(00a15h)		;9fd3
	nop			;9fd6
	jr nc,$+127		;9fd7
	ld a,a			;9fd9
	ld c,a			;9fda
	daa			;9fdb
	rra			;9fdc
	dec c			;9fdd
l9fdeh:
	rrca			;9fde
	rla			;9fdf
	ccf			;9fe0
	ld e,a			;9fe1
	ld a,(hl)		;9fe2
	call m,03058h		;9fe3
	jr c,$+94		;9fe6
	jp m,06de7h		;9fe8
	ccf			;9feb
	cp (hl)			;9fec
	call m,0f2fah		;9fed
	jp m,l9dbah		;9ff0
	ld e,l			;9ff3
	dec sp			;9ff4
	ld d,000h		;9ff5
	cp d			;9ff7
	nop			;9ff8
	ld bc,03f09h		;9ff9
	ret			;9ffc
	cpl			;9ffd
	nop			;9ffe
	dec sp			;9fff
