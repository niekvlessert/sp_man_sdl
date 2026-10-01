; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank12_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank12.bin

	org 08000h

l8000h:
	ld (00000h),hl		;8000
	nop			;8003
	nop			;8004
	nop			;8005
	nop			;8006
	nop			;8007
	nop			;8008
	nop			;8009
	nop			;800a
	nop			;800b
	nop			;800c
	nop			;800d
	nop			;800e
	nop			;800f
	nop			;8010
	nop			;8011
	nop			;8012
	nop			;8013
	nop			;8014
	nop			;8015
	nop			;8016
	nop			;8017
	nop			;8018
	nop			;8019
	nop			;801a
	nop			;801b
	nop			;801c
	nop			;801d
	nop			;801e
	nop			;801f
	ld bc,00b00h		;8020
	inc b			;8023
	inc c			;8024
	nop			;8025
	add hl,de		;8026
	nop			;8027
	add hl,de		;8028
	nop			;8029
	ld (06501h),a		;802a
	ld (bc),a		;802d
	adc a,(hl)		;802e
	nop			;802f
	jr l8032h		;8030
l8032h:
	and (hl)		;8032
	ld b,b			;8033
	and (hl)		;8034
	ld b,b			;8035
	ld b,h			;8036
	add a,b			;8037
	adc a,l			;8038
	nop			;8039
	adc a,c			;803a
	nop			;803b
	dec bc			;803c
	nop			;803d
	ld a,(de)		;803e
	nop			;803f
	ld (hl),000h		;8040
	ld b,h			;8042
	nop			;8043
	add a,h			;8044
	nop			;8045
	adc a,b			;8046
	nop			;8047
	adc a,b			;8048
	nop			;8049
	ld de,01100h		;804a
	nop			;804d
	ld hl,02300h		;804e
	nop			;8051
	add a,l			;8052
	ld (bc),a		;8053
	add a,d			;8054
	nop			;8055
	add a,d			;8056
	nop			;8057
	add a,b			;8058
	nop			;8059
	add a,b			;805a
	nop			;805b
	nop			;805c
	nop			;805d
	nop			;805e
	nop			;805f
	nop			;8060
	nop			;8061
	dec hl			;8062
	rra			;8063
	dec hl			;8064
	rra			;8065
	dec hl			;8066
	rra			;8067
	ld l,a			;8068
	rra			;8069
	ld c,a			;806a
	ccf			;806b
	ld c,a			;806c
	ccf			;806d
	ld e,a			;806e
	ccf			;806f
	rst 18h			;8070
	ccf			;8071
	cp 0ffh			;8072
	defb 0fdh,0feh,0fch ;illegal sequence	;8074
	rst 38h			;8077
	cp 0ffh			;8078
	cp 0ffh			;807a
	rst 38h			;807c
	rst 38h			;807d
	rst 38h			;807e
	rst 38h			;807f
	rst 38h			;8080
	rst 38h			;8081
	or (hl)			;8082
	ld h,b			;8083
	ld e,h			;8084
	ret po			;8085
	xor l			;8086
	ld b,b			;8087
	cp b			;8088
	ld b,b			;8089
	inc (hl)		;808a
	ret z			;808b
	ld e,b			;808c
	ret po			;808d
	pop de			;808e
	ret po			;808f
	and b			;8090
	ret p			;8091
	ld c,d			;8092
	dec a			;8093
	sbc a,d			;8094
	ld a,l			;8095
	sbc a,l			;8096
	ld a,a			;8097
	cp d			;8098
	ld a,l			;8099
	ld l,b			;809a
	ccf			;809b
	cp (hl)			;809c
	ld a,c			;809d
	ld (hl),0f9h		;809e
	add a,l			;80a0
	ld a,b			;80a1
	jp m,0f9fch		;80a2
	cp 0f8h			;80a5
	rst 38h			;80a7
	defb 0fdh,0feh,0feh ;illegal sequence	;80a8
	rst 38h			;80ab
	defb 0fdh,0ffh,0fbh ;illegal sequence	;80ac
	rst 38h			;80af
	ld sp,hl		;80b0
	rst 38h			;80b1
	and b			;80b2
	ret nz			;80b3
l80b4h:
	ld (0cec0h),a		;80b4
	ret p			;80b7
	ld (hl),h		;80b8
	ret m			;80b9
	ld a,d			;80ba
	call m,0feddh		;80bb
	jp po,0e4ffh		;80be
	ei			;80c1
	rla			;80c2
	rrca			;80c3
	rla			;80c4
	rrca			;80c5
l80c6h:
	jr nc,l80d7h		;80c6
	rrca			;80c8
	nop			;80c9
	inc b			;80ca
	inc bc			;80cb
	add a,a			;80cc
	inc bc			;80cd
	adc a,e			;80ce
	rlca			;80cf
	ld b,l			;80d0
	add a,e			;80d1
	djnz l80b4h		;80d2
	jr z,l80c6h		;80d4
	ex af,af'		;80d6
l80d7h:
	ret p			;80d7
	inc d			;80d8
	ret m			;80d9
	call pe,05810h		;80da
	add a,b			;80dd
	ld c,c			;80de
	add a,b			;80df
	dec hl			;80e0
	ret nz			;80e1
	and e			;80e2
	ld a,h			;80e3
	sub 028h		;80e4
	jp z,0a134h		;80e6
	ld e,(hl)		;80e9
	call p,0ca0fh		;80ea
	scf			;80ed
	or l			;80ee
	ld a,e			;80ef
	ld d,h			;80f0
	dec sp			;80f1
	adc a,d			;80f2
	rlca			;80f3
	add a,h			;80f4
	inc bc			;80f5
	call nz,04503h		;80f6
	inc bc			;80f9
	jp po,0a201h		;80fa
	ld bc,00091h		;80fd
	cp b			;8100
	nop			;8101
	add a,c			;8102
	nop			;8103
	adc a,c			;8104
	nop			;8105
	adc a,c			;8106
	nop			;8107
	ld b,b			;8108
	add a,b			;8109
	ld b,d			;810a
	add a,b			;810b
	and c			;810c
	ret nz			;810d
	ld d,b			;810e
	ret po			;810f
	xor b			;8110
	ld (hl),b		;8111
	ld hl,03000h		;8112
	nop			;8115
	sbc a,b			;8116
	nop			;8117
	adc a,(hl)		;8118
	nop			;8119
	ld b,e			;811a
	nop			;811b
	djnz l811eh		;811c
l811eh:
	ld b,000h		;811e
	ld h,b			;8120
	nop			;8121
	add a,b			;8122
	nop			;8123
	ld h,b			;8124
	nop			;8125
	dec c			;8126
	nop			;8127
l8128h:
	nop			;8128
	nop			;8129
	nop			;812a
	nop			;812b
	ret nz			;812c
	nop			;812d
	jr c,l8130h		;812e
l8130h:
	rst 0			;8130
	nop			;8131
	inc c			;8132
	nop			;8133
	ld h,b			;8134
	nop			;8135
	nop			;8136
	nop			;8137
	nop			;8138
	nop			;8139
	nop			;813a
	nop			;813b
	nop			;813c
	nop			;813d
	ld b,b			;813e
	nop			;813f
	nop			;8140
	nop			;8141
	jr nz,l8144h		;8142
l8144h:
	add a,b			;8144
	nop			;8145
	nop			;8146
	nop			;8147
	ld bc,00200h		;8148
	ld bc,00304h		;814b
	dec de			;814e
	inc b			;814f
	ld h,h			;8150
	jr l8188h		;8151
	nop			;8153
	ld l,b			;8154
	nop			;8155
	ret nc			;8156
	nop			;8157
	ld (hl),b		;8158
	add a,b			;8159
	jp nz,l8000h		;815a
	nop			;815d
	inc b			;815e
	nop			;815f
	inc b			;8160
	nop			;8161
	ld b,e			;8162
	nop			;8163
	ld b,(hl)		;8164
	nop			;8165
	add a,(hl)		;8166
	nop			;8167
	ld a,(bc)		;8168
	inc b			;8169
	ld (0640ch),a		;816a
	jr $-90			;816d
	jr l8199h		;816f
	djnz l8173h		;8171
l8173h:
	nop			;8173
	jr nz,l8186h		;8174
	jr nz,l8188h		;8176
	ld c,b			;8178
	jr nc,l81c3h		;8179
	jr nc,l8128h		;817b
	djnz l81b2h		;817d
	nop			;817f
	ld (hl),d		;8180
	nop			;8181
	rst 18h			;8182
	ccf			;8183
	adc a,a			;8184
	ld a,a			;8185
l8186h:
	cp a			;8186
	ld a,a			;8187
l8188h:
	adc a,a			;8188
	ld a,a			;8189
	ld e,a			;818a
	cpl			;818b
	ld d,a			;818c
	cpl			;818d
	ld c,e			;818e
l818fh:
	scf			;818f
	ld h,l			;8190
	rra			;8191
	ret c			;8192
	ret po			;8193
	adc a,(hl)		;8194
	ret po			;8195
	rst 10h			;8196
	ret pe			;8197
l8198h:
	add a,e			;8198
l8199h:
	call m,0fea9h		;8199
	dec c			;819c
	cp 06dh			;819d
	sbc a,(hl)		;819f
	sub b			;81a0
	rrca			;81a1
	call z,05a31h		;81a2
	ld hl,00730h		;81a5
	djnz $+9		;81a8
	add a,d			;81aa
	ld bc,0019ah		;81ab
	add a,d			;81ae
	ld bc,000c1h		;81af
l81b2h:
	ld a,a			;81b2
l81b3h:
	rst 38h			;81b3
	ld a,a			;81b4
	rst 38h			;81b5
	rst 38h			;81b6
	rst 38h			;81b7
	cp a			;81b8
	rst 38h			;81b9
	ld e,a			;81ba
	cp a			;81bb
	ld e,a			;81bc
	cp a			;81bd
	xor a			;81be
	rst 18h			;81bf
	cpl			;81c0
	rst 18h			;81c1
	di			;81c2
l81c3h:
	call m,0fffah		;81c3
	jp pe,0f7ffh		;81c6
	rst 38h			;81c9
	rst 38h			;81ca
	rst 38h			;81cb
	rst 38h			;81cc
	rst 38h			;81cd
	rst 38h			;81ce
	rst 38h			;81cf
	rst 38h			;81d0
	rst 38h			;81d1
	ld c,l			;81d2
	add a,e			;81d3
	or l			;81d4
	jp l916ah		;81d5
	ld e,c			;81d8
	and b			;81d9
	inc e			;81da
	ret po			;81db
	call po,0aaf8h		;81dc
	call p,0ba45h		;81df
	and e			;81e2
	ret nz			;81e3
	ld b,c			;81e4
	add a,b			;81e5
	ld b,b			;81e6
	add a,b			;81e7
	ld (0d1c0h),hl		;81e8
	jr nz,$+46		;81eb
	djnz l8201h		;81ed
	inc c			;81ef
	ld a,(bc)		;81f0
	inc b			;81f1
	sub (hl)		;81f2
	ld a,c			;81f3
	ld h,e			;81f4
	inc e			;81f5
	dec e			;81f6
	ld (bc),a		;81f7
	ld (bc),a		;81f8
	ld bc,00081h		;81f9
	ld b,h			;81fc
	add a,b			;81fd
	cp d			;81fe
	ld b,b			;81ff
	adc a,b			;8200
l8201h:
	ld (hl),b		;8201
	call z,0e600h		;8202
	nop			;8205
	ld h,e			;8206
l8207h:
	nop			;8207
	pop de			;8208
	jr nz,l81b3h		;8209
	djnz $-7		;820b
	jr c,l8198h		;820d
	halt			;820f
	sub a			;8210
	ld h,b			;8211
	ld b,(hl)		;8212
	jr c,l8246h		;8213
	ld c,08eh		;8215
	ld bc,000c3h		;8217
	ld (hl),b		;821a
	nop			;821b
	inc c			;821c
	nop			;821d
	rlca			;821e
	nop			;821f
	add a,c			;8220
	nop			;8221
	inc e			;8222
	nop			;8223
	nop			;8224
	nop			;8225
	ret nz			;8226
	nop			;8227
	cp b			;8228
	ld b,b			;8229
	ld a,a			;822a
	nop			;822b
	nop			;822c
	nop			;822d
	nop			;822e
	nop			;822f
	ret po			;8230
	nop			;8231
	nop			;8232
	nop			;8233
	nop			;8234
	nop			;8235
	nop			;8236
	nop			;8237
	nop			;8238
	nop			;8239
	rlca			;823a
	nop			;823b
	ret m			;823c
	nop			;823d
	nop			;823e
l823fh:
	nop			;823f
	ld bc,00100h		;8240
	nop			;8243
	ld b,001h		;8244
l8246h:
	add hl,de		;8246
	ld b,0fch		;8247
	nop			;8249
	add a,b			;824a
	nop			;824b
	nop			;824c
	nop			;824d
	djnz l8250h		;824e
l8250h:
	ret nz			;8250
	nop			;8251
	sbc a,b			;8252
	ld h,b			;8253
	ld h,b			;8254
	add a,b			;8255
	add a,b			;8256
	nop			;8257
	nop			;8258
	nop			;8259
	nop			;825a
	nop			;825b
	jr l825eh		;825c
l825eh:
	jr nc,l8260h		;825e
l8260h:
	ld h,c			;8260
	nop			;8261
	inc c			;8262
	nop			;8263
	jr l8266h		;8264
l8266h:
	jr z,l8278h		;8266
	jr z,l827ah		;8268
	ld d,c			;826a
	jr nz,$-28		;826b
	ld bc,003c5h		;826d
	adc a,d			;8270
	rlca			;8271
	ld c,b			;8272
	jr nc,l823fh		;8273
	jr nc,l8207h		;8275
	ld h,b			;8277
l8278h:
	sub c			;8278
	ld h,b			;8279
l827ah:
	dec h			;827a
	ret nz			;827b
	xor d			;827c
	pop bc			;827d
	ld l,d			;827e
	add a,a			;827f
	call nc,0160fh		;8280
	jr nz,l82ebh		;8283
	nop			;8285
	xor 000h		;8286
	ld e,d			;8288
	add a,h			;8289
	ld d,h			;828a
	adc a,b			;828b
	inc h			;828c
	sbc a,b			;828d
	call po,0db18h		;828e
	inc a			;8291
	sub d			;8292
	ld l,l			;8293
	cp b			;8294
	ld b,a			;8295
	ld d,(hl)		;8296
	dec sp			;8297
	ld d,h			;8298
	dec sp			;8299
	ld c,l			;829a
	inc sp			;829b
	ld c,e			;829c
	scf			;829d
	xor e			;829e
	ld (hl),a		;829f
	ld (hl),a		;82a0
	rst 38h			;82a1
	cp 0ffh			;82a2
	defb 0fdh,0feh,0fch ;illegal sequence	;82a4
	rst 38h			;82a7
	jp m,0fafdh		;82a8
	defb 0fdh,0fbh,0fch ;illegal sequence	;82ab
	defb 0fdh,0feh,0fch ;illegal sequence	;82ae
	rst 38h			;82b1
	call p,0ac0fh		;82b2
	ld b,a			;82b5
	rst 10h			;82b6
	call pe,0ecd2h		;82b7
	ld a,(02ec4h)		;82ba
	ret nc			;82bd
	ex (sp),hl		;82be
	inc e			;82bf
l82c0h:
	ld l,e			;82c0
	sbc a,h			;82c1
	ld h,c			;82c2
	add a,b			;82c3
	or d			;82c4
	pop bc			;82c5
	ld d,c			;82c6
	ret po			;82c7
	xor c			;82c8
	ld (hl),b		;82c9
	and (hl)		;82ca
	ld a,b			;82cb
	and a			;82cc
	ld a,b			;82cd
	xor e			;82ce
	ld (hl),b		;82cf
	ld c,e			;82d0
	jr nc,l82eah		;82d1
	rst 28h			;82d3
	rst 8			;82d4
	rst 38h			;82d5
	dec hl			;82d6
	rst 38h			;82d7
	ld b,a			;82d8
	cp a			;82d9
	or l			;82da
	ld e,a			;82db
	ld b,a			;82dc
	ccf			;82dd
	inc sp			;82de
	rrca			;82df
	cp l			;82e0
	rlca			;82e1
l82e2h:
	sub h			;82e2
	ex de,hl		;82e3
	add a,0fdh		;82e4
	xor c			;82e6
	or 0b5h			;82e7
	ei			;82e9
l82eah:
	push bc			;82ea
l82ebh:
	ei			;82eb
	jp pe,0f5fdh		;82ec
	ret m			;82ef
	or a			;82f0
	ret m			;82f1
	add a,l			;82f2
	ld (bc),a		;82f3
	add a,d			;82f4
	ld bc,08041h		;82f5
	ld b,c			;82f8
	add a,b			;82f9
	ld b,b			;82fa
	add a,b			;82fb
	and b			;82fc
	ret nz			;82fd
	jr nz,l82c0h		;82fe
sub_8300h:
	djnz l82e2h		;8300
	ld (hl),078h		;8302
	jp c,02d3ch		;8304
	cp 01ch			;8307
	rst 38h			;8309
	cp 07fh			;830a
	sbc a,(hl)		;830c
	ld a,a			;830d
	or a			;830e
	ld a,a			;830f
	ld c,a			;8310
	ccf			;8311
	ld c,b			;8312
	jr nc,l837bh		;8313
	jr l8329h		;8315
	inc c			;8317
	ret			;8318
	ld b,02ah		;8319
	rst 0			;831b
	call nc,0a8efh		;831c
	rst 0			;831f
	xor c			;8320
	add a,0e0h		;8321
	nop			;8323
	jr nc,l8326h		;8324
l8326h:
	jr l8328h		;8326
l8328h:
	ld (bc),a		;8328
l8329h:
	nop			;8329
	sbc a,h			;832a
	nop			;832b
	add a,(hl)		;832c
	ex af,af'		;832d
	adc a,(hl)		;832e
	nop			;832f
	inc bc			;8330
	nop			;8331
	jr c,l8334h		;8332
l8334h:
	ld bc,00000h		;8334
	nop			;8337
	nop			;8338
	nop			;8339
	nop			;833a
	nop			;833b
	ld h,c			;833c
	nop			;833d
	nop			;833e
	nop			;833f
	ret nz			;8340
	nop			;8341
	ld b,000h		;8342
	djnz l8346h		;8344
l8346h:
	nop			;8346
	nop			;8347
	nop			;8348
	nop			;8349
	nop			;834a
	nop			;834b
	nop			;834c
	nop			;834d
	ld bc,00700h		;834e
	nop			;8351
	ld (bc),a		;8352
	nop			;8353
	inc c			;8354
	nop			;8355
	inc sp			;8356
	nop			;8357
	ld c,(hl)		;8358
	inc bc			;8359
	sub l			;835a
	ld c,06ah		;835b
	inc e			;835d
	sub h			;835e
	ld a,b			;835f
	ld c,h			;8360
	jr nc,$+99		;8361
	nop			;8363
	jp nz,04400h		;8364
	add a,b			;8367
	add a,c			;8368
	nop			;8369
	inc bc			;836a
	nop			;836b
	ld b,001h		;836c
	add hl,bc		;836e
	rlca			;836f
	ld (hl),00fh		;8370
	dec d			;8372
	ld c,065h		;8373
	ld e,09ah		;8375
	ld a,h			;8377
	or (hl)			;8378
	ld a,b			;8379
	ld l,h			;837a
l837bh:
	ret p			;837b
	ret z			;837c
	ret p			;837d
	add hl,de		;837e
	ret po			;837f
	or c			;8380
	ld b,b			;8381
	sub l			;8382
	ld c,02dh		;8383
	ld e,051h		;8385
	ld a,06dh		;8387
	ld (074abh),a		;8389
	and (hl)		;838c
	ld a,c			;838d
	ld h,c			;838e
	rst 38h			;838f
	ld l,b			;8390
	rst 30h			;8391
	sbc a,03fh		;8392
	xor a			;8394
	ld e,a			;8395
	ld e,a			;8396
	rst 38h			;8397
	ld a,(hl)		;8398
	rst 38h			;8399
	ld e,(hl)		;839a
	rst 38h			;839b
	sbc a,(hl)		;839c
	rst 38h			;839d
	sbc a,l			;839e
	rst 38h			;839f
	ld a,a			;83a0
	rst 38h			;83a1
	call m,0faffh		;83a2
	ld sp,iy		;83a5
	rst 38h			;83a7
	ret m			;83a8
	rst 38h			;83a9
	call m,0d9ffh		;83aa
	rst 38h			;83ad
	push af			;83ae
l83afh:
	ei			;83af
	push de			;83b0
	ei			;83b1
	cp e			;83b2
	call z,0dcabh		;83b3
	push de			;83b6
	xor 0d4h		;83b7
	rst 28h			;83b9
	pop de			;83ba
	xor 05bh		;83bb
	call po,0c07eh		;83bd
	inc sp			;83c0
	ret nz			;83c1
	ld b,l			;83c2
	jr c,l83afh		;83c3
	inc e			;83c5
	xor d			;83c6
	inc e			;83c7
	sub h			;83c8
	ex af,af'		;83c9
	ld d,h			;83ca
	ex af,af'		;83cb
	dec c			;83cc
	nop			;83cd
	inc c			;83ce
	nop			;83cf
	ex af,af'		;83d0
	nop			;83d1
	ld e,e			;83d2
	add a,a			;83d3
	ret z			;83d4
	rlca			;83d5
l83d6h:
	call nz,sub_910fh	;83d6
	rrca			;83d9
	cp d			;83da
	dec b			;83db
	jr l83e5h		;83dc
	add hl,bc		;83de
	ld b,009h		;83df
	ld b,0ffh		;83e1
	rst 38h			;83e3
	rst 38h			;83e4
l83e5h:
	rst 38h			;83e5
	rst 38h			;83e6
	rst 38h			;83e7
	rst 38h			;83e8
	rst 38h			;83e9
	rst 38h			;83ea
	rst 38h			;83eb
	rst 38h			;83ec
	rst 38h			;83ed
	ld a,a			;83ee
	rst 38h			;83ef
	ld a,a			;83f0
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
	pop af			;83fc
	rst 38h			;83fd
	ld (hl),a		;83fe
	rst 38h			;83ff
	cp a			;8400
	ld a,a			;8401
	sub (hl)		;8402
	ld sp,hl		;8403
	adc a,e			;8404
	ret p			;8405
	halt			;8406
	ret m			;8407
	exx			;8408
	cp 0a1h			;8409
	cp 0c2h			;840b
	call m,0f8c4h		;840d
	or h			;8410
	ret m			;8411
	and b			;8412
	ret nz			;8413
	jr nz,l83d6h		;8414
	and b			;8416
	ld b,b			;8417
	ld h,b			;8418
	nop			;8419
	ld h,b			;841a
	nop			;841b
	ld b,b			;841c
	nop			;841d
	ret nz			;841e
	nop			;841f
	ret nz			;8420
	nop			;8421
	dec hl			;8422
	rra			;8423
	rla			;8424
	rrca			;8425
	ld e,00fh		;8426
	inc de			;8428
	rrca			;8429
	add hl,bc		;842a
	rlca			;842b
	ld a,(bc)		;842c
	rlca			;842d
	dec b			;842e
	inc bc			;842f
	ld (bc),a		;8430
	ld bc,08245h		;8431
	ld b,l			;8434
	add a,d			;8435
	ld b,d			;8436
	add a,c			;8437
	and d			;8438
	pop bc			;8439
	xor c			;843a
	ret nz			;843b
	ld a,c			;843c
	ret po			;843d
	ld (hl),l		;843e
	ret m			;843f
	dec a			;8440
	cp 000h			;8441
	ld bc,00081h		;8443
	ex (sp),hl		;8446
	nop			;8447
	ld c,h			;8448
	add a,b			;8449
	adc a,b			;844a
	nop			;844b
	djnz l844eh		;844c
l844eh:
	nop			;844e
	nop			;844f
	ld (bc),a		;8450
	nop			;8451
	ret nz			;8452
	nop			;8453
	add a,b			;8454
	nop			;8455
	ld bc,00700h		;8456
	nop			;8459
	add hl,bc		;845a
	rlca			;845b
	inc c			;845c
l845dh:
	inc bc			;845d
	rlca			;845e
	nop			;845f
	nop			;8460
	nop			;8461
	dec c			;8462
	nop			;8463
	ld (bc),a		;8464
	ld bc,0038ch		;8465
	ld sp,0ce0eh		;8468
	jr nc,l84a1h		;846b
	ret nz			;846d
	ret nz			;846e
	nop			;846f
	ld h,b			;8470
	nop			;8471
l8472h:
	or b			;8472
	ld b,b			;8473
	ld b,b			;8474
	add a,b			;8475
	ret po			;8476
	nop			;8477
	inc bc			;8478
	nop			;8479
	inc b			;847a
	inc bc			;847b
	dec b			;847c
	inc bc			;847d
	dec de			;847e
	rlca			;847f
	ld (hl),00fh		;8480
	dec l			;8482
	ld e,05bh		;8483
	inc a			;8485
	cp e			;8486
	ld a,h			;8487
	ld h,e			;8488
	call m,0fcd2h		;8489
	and h			;848c
	ret m			;848d
	ld c,h			;848e
	ret p			;848f
	jr l8472h		;8490
	jp po,04501h		;8492
	add a,e			;8495
	adc a,c			;8496
	rlca			;8497
	ld (de),a		;8498
	rrca			;8499
	dec d			;849a
	ld c,026h		;849b
	dec e			;849d
	ld l,b			;849e
	rra			;849f
	pop de			;84a0
l84a1h:
	ld a,0f5h		;84a1
	cp 031h			;84a3
	cp 064h			;84a5
	ei			;84a7
	ld e,a			;84a8
	pop hl			;84a9
	sbc a,l			;84aa
	ex (sp),hl		;84ab
	ld b,e			;84ac
	rst 38h			;84ad
	cpl			;84ae
	rst 18h			;84af
	sbc a,a			;84b0
	ld a,a			;84b1
	jp m,0b6ffh		;84b2
	rst 38h			;84b5
	jp nz,051ffh		;84b6
	cp 0a1h			;84b9
	cp 082h			;84bb
	call m,sub_9864h	;84bd
	ld c,c			;84c0
	or b			;84c1
	ld l,a			;84c2
	sub b			;84c3
	or a			;84c4
	nop			;84c5
	xor h			;84c6
	djnz l850fh		;84c7
	jr c,l8513h		;84c9
	jr nc,l845dh		;84cb
	ld h,b			;84cd
	ret po			;84ce
	nop			;84cf
	add a,b			;84d0
	nop			;84d1
	ex af,af'		;84d2
	nop			;84d3
	jr l84d6h		;84d4
l84d6h:
	djnz l84d8h		;84d6
l84d8h:
	jr nz,l84dah		;84d8
l84dah:
	nop			;84da
	nop			;84db
	nop			;84dc
	nop			;84dd
	nop			;84de
	nop			;84df
	nop			;84e0
	nop			;84e1
	inc d			;84e2
	rrca			;84e3
	ex af,af'		;84e4
	rlca			;84e5
	ld b,001h		;84e6
	dec b			;84e8
	ld (bc),a		;84e9
	ld a,(bc)		;84ea
	dec b			;84eb
	inc c			;84ec
	inc bc			;84ed
	ld c,001h		;84ee
	dec b			;84f0
	ld (bc),a		;84f1
	ccf			;84f2
	rst 38h			;84f3
	cp a			;84f4
	ld a,a			;84f5
	ccf			;84f6
	rst 38h			;84f7
	ld a,a			;84f8
	rst 38h			;84f9
	ld a,a			;84fa
	rst 38h			;84fb
	rst 18h			;84fc
	rst 38h			;84fd
	call m,0bbffh		;84fe
	ld a,h			;8501
	ld (hl),a		;8502
	ret m			;8503
	adc a,b			;8504
	ld a,a			;8505
	dec sp			;8506
	rst 0			;8507
	rst 0			;8508
	rst 38h			;8509
	rst 38h			;850a
	rst 38h			;850b
	ld e,0ffh		;850c
	pop hl			;850e
l850fh:
	ld e,01eh		;850f
	nop			;8511
	add a,a			;8512
l8513h:
	ld a,a			;8513
	ret m			;8514
	rlca			;8515
	rlca			;8516
	rst 38h			;8517
	rst 38h			;8518
	rst 38h			;8519
	jp nz,03dffh		;851a
	jp nz,000c2h		;851d
	nop			;8520
	nop			;8521
	rst 38h			;8522
	rst 38h			;8523
	rst 8			;8524
	ccf			;8525
	dec sp			;8526
	rst 38h			;8527
	call po,00bfbh		;8528
	ret p			;852b
	ret p			;852c
	nop			;852d
	djnz l8530h		;852e
l8530h:
	nop			;8530
	nop			;8531
	rst 38h			;8532
	rst 38h			;8533
	cp 0ffh			;8534
	pop bc			;8536
	cp 03eh			;8537
	ret nz			;8539
	ret nz			;853a
	nop			;853b
	nop			;853c
	nop			;853d
	nop			;853e
	nop			;853f
	ld b,b			;8540
	nop			;8541
	cp 0ffh			;8542
	rrca			;8544
	rst 38h			;8545
	ret p			;8546
	rrca			;8547
l8548h:
	rrca			;8548
	nop			;8549
	nop			;854a
	nop			;854b
	nop			;854c
	nop			;854d
	ld d,b			;854e
	nop			;854f
	ret pe			;8550
	djnz l858fh		;8551
	jp 0ffc3h		;8553
	ld a,0ffh		;8556
	ret nz			;8558
	ccf			;8559
	scf			;855a
	ex af,af'		;855b
	ex af,af'		;855c
	nop			;855d
	ret p			;855e
	nop			;855f
	add a,b			;8560
	nop			;8561
	rst 38h			;8562
	rst 38h			;8563
	ld c,0ffh		;8564
	ld (hl),c		;8566
	adc a,(hl)		;8567
	cp l			;8568
	ld (bc),a		;8569
	rst 0			;856a
	nop			;856b
	ret p			;856c
	nop			;856d
	inc e			;856e
	nop			;856f
	ld (bc),a		;8570
	nop			;8571
	exx			;8572
	rst 20h			;8573
	and (hl)		;8574
	pop bc			;8575
	ld c,l			;8576
	add a,b			;8577
	call nz,sub_8300h	;8578
	nop			;857b
	ld (bc),a		;857c
	nop			;857d
	ld (bc),a		;857e
	nop			;857f
	nop			;8580
	nop			;8581
	ret p			;8582
	rst 38h			;8583
	ret z			;8584
	ret p			;8585
	jr nc,l8548h		;8586
	ret nz			;8588
	nop			;8589
	ret nz			;858a
	nop			;858b
	add a,b			;858c
	nop			;858d
	nop			;858e
l858fh:
	nop			;858f
	nop			;8590
	nop			;8591
	rra			;8592
	rst 38h			;8593
	pop bc			;8594
	ccf			;8595
	inc a			;8596
	inc bc			;8597
	ld (bc),a		;8598
	ld bc,00009h		;8599
	ld l,000h		;859c
	nop			;859e
	nop			;859f
	nop			;85a0
	nop			;85a1
	ld sp,hl		;85a2
	cp 0fch			;85a3
	rst 38h			;85a5
	ccf			;85a6
	rst 38h			;85a7
	exx			;85a8
	ccf			;85a9
	ld h,019h		;85aa
	sbc a,c			;85ac
	nop			;85ad
	nop			;85ae
	nop			;85af
	ld bc,01f00h		;85b0
	rst 38h			;85b3
	pop bc			;85b4
	ccf			;85b5
	inc a			;85b6
	inc bc			;85b7
	ld (bc),a		;85b8
	ld bc,00001h		;85b9
	nop			;85bc
	nop			;85bd
	nop			;85be
	nop			;85bf
	nop			;85c0
	nop			;85c1
	rst 38h			;85c2
	rst 38h			;85c3
	rst 38h			;85c4
	rst 38h			;85c5
	rst 30h			;85c6
	rst 38h			;85c7
	ld l,b			;85c8
	rst 30h			;85c9
	sub a			;85ca
	ld h,b			;85cb
	ld h,b			;85cc
	nop			;85cd
	ld bc,00100h		;85ce
	nop			;85d1
	ld e,l			;85d2
	ld a,0beh		;85d3
	ld a,a			;85d5
	ld a,a			;85d6
	rst 38h			;85d7
	add a,c			;85d8
	rst 38h			;85d9
	ld a,(hl)		;85da
	add a,c			;85db
	add a,c			;85dc
	nop			;85dd
	nop			;85de
	nop			;85df
	dec b			;85e0
	nop			;85e1
	ld (bc),a		;85e2
	ld bc,003fdh		;85e3
	inc bc			;85e6
	rst 38h			;85e7
	rst 38h			;85e8
	rst 38h			;85e9
	add a,h			;85ea
	rst 38h			;85eb
	ld a,e			;85ec
	add a,h			;85ed
	add a,h			;85ee
	nop			;85ef
	ld de,0b300h		;85f0
	call z,0fec5h		;85f3
	cp 0ffh			;85f6
l85f8h:
	ret p			;85f8
	rst 38h			;85f9
	rrca			;85fa
	ret p			;85fb
	ret p			;85fc
	nop			;85fd
	nop			;85fe
	nop			;85ff
	nop			;8600
	nop			;8601
	call p,0e30fh		;8602
	inc e			;8605
	inc e			;8606
	rst 38h			;8607
	ccf			;8608
	rst 38h			;8609
	ret nz			;860a
	ccf			;860b
	ccf			;860c
	nop			;860d
	nop			;860e
	nop			;860f
	nop			;8610
	nop			;8611
	ld bc,0ff00h		;8612
	nop			;8615
	jr l85f8h		;8616
	and b			;8618
	ld b,b			;8619
	rrca			;861a
	nop			;861b
	ret p			;861c
	rrca			;861d
	ld c,0ffh		;861e
	ld sp,hl		;8620
	cp 0c1h			;8621
	nop			;8623
	rst 38h			;8624
	nop			;8625
	nop			;8626
	nop			;8627
	rst 38h			;8628
	nop			;8629
	rlca			;862a
	ret m			;862b
	adc a,b			;862c
	ret p			;862d
	ld (hl),e		;862e
	add a,b			;862f
	inc e			;8630
	and e			;8631
	adc a,c			;8632
	nop			;8633
	and a			;8634
	nop			;8635
	cp 000h			;8636
	ret p			;8638
	nop			;8639
	nop			;863a
	nop			;863b
	rra			;863c
	nop			;863d
	ret po			;863e
	rra			;863f
	rra			;8640
	rst 38h			;8641
	cp a			;8642
	ld b,b			;8643
	ei			;8644
	inc b			;8645
	inc b			;8646
	nop			;8647
	nop			;8648
	nop			;8649
	nop			;864a
	nop			;864b
	call m,00300h		;864c
	call m,0fffch		;864f
	rlca			;8652
	ret m			;8653
	ret nz			;8654
	ccf			;8655
	ccf			;8656
	nop			;8657
	nop			;8658
	nop			;8659
	nop			;865a
	nop			;865b
	nop			;865c
	nop			;865d
	rst 38h			;865e
	nop			;865f
	nop			;8660
	rst 38h			;8661
	ex af,af'		;8662
	add a,b			;8663
	ld (hl),b		;8664
	add a,b			;8665
	add a,b			;8666
	nop			;8667
	nop			;8668
	nop			;8669
	nop			;866a
	nop			;866b
	ccf			;866c
	nop			;866d
	ret nz			;866e
	ccf			;866f
	ccf			;8670
	rst 38h			;8671
	ld bc,00100h		;8672
	nop			;8675
	nop			;8676
	nop			;8677
	inc bc			;8678
	nop			;8679
	call m,00300h		;867a
	call m,0fffch		;867d
	rst 38h			;8680
	rst 38h			;8681
	ex af,af'		;8682
	nop			;8683
	add a,b			;8684
	nop			;8685
	ld h,b			;8686
	nop			;8687
	add a,e			;8688
	nop			;8689
	adc a,b			;868a
	nop			;868b
	add a,c			;868c
	nop			;868d
	ld e,(hl)		;868e
	add a,c			;868f
	ld hl,025dfh		;8690
	nop			;8693
	nop			;8694
	nop			;8695
	ld (hl),000h		;8696
	ret			;8698
	ld (hl),0b6h		;8699
	ld a,a			;869b
	ld l,(hl)		;869c
	rst 38h			;869d
	sub l			;869e
	xor 0aah		;869f
	call nz,00080h		;86a1
	ld a,h			;86a4
	nop			;86a5
	inc hl			;86a6
	inc e			;86a7
	jp 01c3ch		;86a8
	ex (sp),hl		;86ab
	and e			;86ac
	ld c,a			;86ad
l86aeh:
	ld d,a			;86ae
	cpl			;86af
	xor a			;86b0
	ld a,a			;86b1
	nop			;86b2
	nop			;86b3
	ld b,b			;86b4
	nop			;86b5
	ld bc,0e400h		;86b6
	nop			;86b9
	dec de			;86ba
	ret po			;86bb
	and 0f9h		;86bc
	ld sp,hl		;86be
	rst 38h			;86bf
	rst 38h			;86c0
	rst 38h			;86c1
	nop			;86c2
	nop			;86c3
	nop			;86c4
	nop			;86c5
	nop			;86c6
	nop			;86c7
	inc bc			;86c8
	nop			;86c9
	ex af,af'		;86ca
	nop			;86cb
	add a,c			;86cc
	nop			;86cd
	ld e,(hl)		;86ce
	add a,c			;86cf
	ld h,b			;86d0
	sbc a,a			;86d1
	dec h			;86d2
	nop			;86d3
	nop			;86d4
	nop			;86d5
	ld (hl),000h		;86d6
	ret			;86d8
	ld (hl),0b6h		;86d9
	ld a,a			;86db
	ld l,(hl)		;86dc
	rst 38h			;86dd
	dec d			;86de
	xor 06ah		;86df
	add a,h			;86e1
	add a,b			;86e2
	nop			;86e3
	ld a,h			;86e4
	nop			;86e5
	inc hl			;86e6
	inc e			;86e7
	jp 01c3ch		;86e8
	ret po			;86eb
	jr nz,l86aeh		;86ec
	ret nz			;86ee
	nop			;86ef
	nop			;86f0
	nop			;86f1
	ld bc,l8000h		;86f2
	nop			;86f5
	ld h,b			;86f6
	add a,b			;86f7
	and (hl)		;86f8
	ld b,b			;86f9
	ld (hl),c		;86fa
	nop			;86fb
	jr l86feh		;86fc
l86feh:
	nop			;86fe
	nop			;86ff
	nop			;8700
	nop			;8701
	nop			;8702
	nop			;8703
	ld b,b			;8704
	nop			;8705
	ld bc,0e400h		;8706
	nop			;8709
	ld b,e			;870a
	nop			;870b
	ld (de),a		;870c
	ld bc,0030dh		;870d
	di			;8710
	rrca			;8711
	rst 38h			;8712
	rst 38h			;8713
	rst 38h			;8714
	rst 38h			;8715
	rst 38h			;8716
	rst 38h			;8717
	rst 28h			;8718
	rst 38h			;8719
	rst 38h			;871a
	rst 38h			;871b
	rst 38h			;871c
	rst 38h			;871d
	rst 38h			;871e
	rst 38h			;871f
	rst 38h			;8720
	rst 38h			;8721
	rst 38h			;8722
	rst 38h			;8723
	rst 38h			;8724
	rst 38h			;8725
	rst 38h			;8726
	rst 38h			;8727
	rst 38h			;8728
	rst 38h			;8729
	rst 28h			;872a
	rst 18h			;872b
	rst 38h			;872c
	rst 38h			;872d
	rst 38h			;872e
	rst 38h			;872f
	rst 38h			;8730
	rst 38h			;8731
	rst 38h			;8732
	rst 38h			;8733
	rst 38h			;8734
	rst 38h			;8735
	rst 38h			;8736
	rst 38h			;8737
	rst 38h			;8738
	rst 38h			;8739
	rst 38h			;873a
	ei			;873b
	rst 38h			;873c
	rst 38h			;873d
	rst 38h			;873e
	rst 38h			;873f
	rst 38h			;8740
	rst 38h			;8741
	rst 38h			;8742
	rst 38h			;8743
	rst 38h			;8744
	rst 38h			;8745
	rst 18h			;8746
	rst 18h			;8747
	rst 38h			;8748
	rst 38h			;8749
	rst 38h			;874a
	rst 38h			;874b
	rst 38h			;874c
	rst 38h			;874d
	rst 38h			;874e
	rst 38h			;874f
	rst 38h			;8750
	rst 38h			;8751
	rst 38h			;8752
	rst 38h			;8753
	rst 38h			;8754
	rst 38h			;8755
	rst 38h			;8756
	rst 38h			;8757
	rst 38h			;8758
	rst 38h			;8759
	rst 38h			;875a
	rst 38h			;875b
	cp a			;875c
	cp a			;875d
	defb 0fdh,0fdh,0ffh ;illegal sequence	;875e
	rst 38h			;8761
	rst 38h			;8762
	rst 38h			;8763
	defb 0fdh,0bdh ;cp iyl	;8764
	rst 38h			;8766
	rst 38h			;8767
	rst 38h			;8768
	rst 38h			;8769
	rst 38h			;876a
	rst 38h			;876b
	rst 18h			;876c
	rst 18h			;876d
	rst 38h			;876e
	rst 38h			;876f
	defb 0fdh,0fdh,0ffh ;illegal sequence	;8770
	rst 38h			;8773
	rst 18h			;8774
	rst 18h			;8775
	rst 38h			;8776
	defb 0fdh,0ffh,0ffh ;illegal sequence	;8777
	rst 38h			;877a
	rst 38h			;877b
	rst 18h			;877c
	rst 18h			;877d
	rst 38h			;877e
	rst 30h			;877f
	rst 38h			;8780
	rst 38h			;8781
	rst 38h			;8782
	rst 38h			;8783
	rst 38h			;8784
	rst 38h			;8785
	rst 38h			;8786
	rst 38h			;8787
	rst 38h			;8788
	rst 38h			;8789
	rst 38h			;878a
	rst 38h			;878b
	rst 38h			;878c
	rst 38h			;878d
	rst 38h			;878e
	rst 38h			;878f
	rst 38h			;8790
	rst 38h			;8791
	nop			;8792
	ld l,h			;8793
	nop			;8794
	ld a,h			;8795
	ld bc,00278h		;8796
	ld (hl),b		;8799
	inc b			;879a
	ld h,b			;879b
	ex af,af'		;879c
	ld b,a			;879d
	djnz l87afh		;879e
	nop			;87a0
	nop			;87a1
	nop			;87a2
	add hl,de		;87a3
	nop			;87a4
	dec e			;87a5
	ret nz			;87a6
	rrca			;87a7
	jr nz,l87b1h		;87a8
	djnz l87afh		;87aa
	ex af,af'		;87ac
	pop af			;87ad
	inc b			;87ae
l87afh:
	ret m			;87af
	nop			;87b0
l87b1h:
	nop			;87b1
	rst 38h			;87b2
	nop			;87b3
	nop			;87b4
	rst 38h			;87b5
	nop			;87b6
	nop			;87b7
	ret po			;87b8
	nop			;87b9
	nop			;87ba
	pop af			;87bb
	nop			;87bc
	ld d,c			;87bd
	nop			;87be
	ld d,c			;87bf
	nop			;87c0
	pop af			;87c1
	rst 38h			;87c2
	nop			;87c3
	nop			;87c4
	rst 38h			;87c5
	nop			;87c6
	nop			;87c7
	rst 38h			;87c8
	nop			;87c9
	nop			;87ca
	rst 38h			;87cb
	nop			;87cc
	ld d,l			;87cd
	nop			;87ce
	ld d,l			;87cf
	nop			;87d0
	rst 38h			;87d1
	nop			;87d2
	rst 38h			;87d3
	nop			;87d4
	nop			;87d5
	nop			;87d6
	nop			;87d7
	nop			;87d8
	nop			;87d9
	rst 38h			;87da
	nop			;87db
	nop			;87dc
	nop			;87dd
	nop			;87de
	rst 38h			;87df
	nop			;87e0
	rst 38h			;87e1
	nop			;87e2
	nop			;87e3
	rrca			;87e4
	nop			;87e5
	ld b,b			;87e6
	ld c,020h		;87e7
	ld b,a			;87e9
	djnz l884fh		;87ea
	ex af,af'		;87ec
	ld h,c			;87ed
	inc b			;87ee
	ld h,b			;87ef
	nop			;87f0
	ld h,h			;87f1
	nop			;87f2
	nop			;87f3
	ret m			;87f4
	nop			;87f5
	ld bc,00238h		;87f6
	ld (hl),c		;87f9
	inc b			;87fa
	pop hl			;87fb
	ex af,af'		;87fc
	pop bc			;87fd
	djnz l8801h		;87fe
	nop			;8800
l8801h:
	ld de,0ff00h		;8801
	nop			;8804
	nop			;8805
	rst 38h			;8806
	nop			;8807
	nop			;8808
	rst 38h			;8809
	nop			;880a
	nop			;880b
	rst 38h			;880c
	nop			;880d
	nop			;880e
	rst 38h			;880f
	nop			;8810
	rst 38h			;8811
	ld hl,021c6h		;8812
	add a,021h		;8815
	add a,021h		;8817
	add a,021h		;8819
	add a,021h		;881b
	add a,021h		;881d
l881fh:
	add a,021h		;881f
	add a,000h		;8821
	ld bc,00100h		;8823
	nop			;8826
	ld bc,00100h		;8827
	nop			;882a
	ld bc,00100h		;882b
	nop			;882e
l882fh:
	ld bc,00100h		;882f
	add a,b			;8832
	nop			;8833
	add a,b			;8834
	nop			;8835
	add a,b			;8836
	nop			;8837
	add a,b			;8838
	nop			;8839
	add a,b			;883a
	nop			;883b
	add a,b			;883c
	nop			;883d
	add a,b			;883e
	nop			;883f
	add a,b			;8840
	nop			;8841
	add a,h			;8842
	ld h,e			;8843
	add a,h			;8844
	ld h,e			;8845
	add a,h			;8846
	ld h,e			;8847
	add a,h			;8848
	ld h,e			;8849
	add a,h			;884a
	ld h,e			;884b
	add a,h			;884c
	ld h,e			;884d
	add a,h			;884e
l884fh:
	ld h,e			;884f
	add a,h			;8850
	ld h,e			;8851
	nop			;8852
	nop			;8853
	nop			;8854
	nop			;8855
	nop			;8856
	nop			;8857
	nop			;8858
	nop			;8859
	nop			;885a
	nop			;885b
	jr l8866h		;885c
	inc e			;885e
	inc c			;885f
	inc e			;8860
	inc c			;8861
	nop			;8862
	nop			;8863
	nop			;8864
	nop			;8865
l8866h:
	nop			;8866
	nop			;8867
	jr nc,l887ah		;8868
	jr c,l8884h		;886a
	jr c,l8886h		;886c
	jr c,l8888h		;886e
	jr c,l888ah		;8870
	ld b,b			;8872
	ret nz			;8873
	ld b,b			;8874
	ret nz			;8875
	ld b,b			;8876
	ret nz			;8877
	ld b,b			;8878
	ret nz			;8879
l887ah:
	ld b,d			;887a
	add a,042h		;887b
	add a,002h		;887d
	ld b,002h		;887f
	ld b,000h		;8881
	nop			;8883
l8884h:
	nop			;8884
	nop			;8885
l8886h:
	nop			;8886
	nop			;8887
l8888h:
	nop			;8888
	nop			;8889
l888ah:
	nop			;888a
	nop			;888b
	nop			;888c
	nop			;888d
	nop			;888e
	nop			;888f
	djnz l88c2h		;8890
	nop			;8892
	nop			;8893
	ld (bc),a		;8894
	ld bc,00102h		;8895
	ld (bc),a		;8898
	ld bc,00000h		;8899
	nop			;889c
	nop			;889d
	nop			;889e
	nop			;889f
	nop			;88a0
	nop			;88a1
	nop			;88a2
	nop			;88a3
	nop			;88a4
	nop			;88a5
	nop			;88a6
	nop			;88a7
	nop			;88a8
	nop			;88a9
	ld (bc),a		;88aa
	ld b,002h		;88ab
	ld b,002h		;88ad
	ld b,002h		;88af
	ld b,01ch		;88b1
	inc c			;88b3
	inc e			;88b4
	inc c			;88b5
	inc e			;88b6
	inc c			;88b7
	inc e			;88b8
	inc c			;88b9
	inc e			;88ba
	inc c			;88bb
	inc e			;88bc
	inc b			;88bd
	inc b			;88be
	nop			;88bf
	nop			;88c0
	nop			;88c1
l88c2h:
	jr c,l88dch		;88c2
	jr c,l88deh		;88c4
	jr c,l88d0h		;88c6
	ex af,af'		;88c8
	nop			;88c9
	nop			;88ca
	nop			;88cb
	nop			;88cc
	nop			;88cd
	nop			;88ce
	nop			;88cf
l88d0h:
	nop			;88d0
	nop			;88d1
	djnz l8904h		;88d2
	ld (de),a		;88d4
	ld sp,03112h		;88d5
	ld (bc),a		;88d8
	ld bc,00000h		;88d9
l88dch:
	nop			;88dc
	nop			;88dd
l88deh:
	nop			;88de
	nop			;88df
	nop			;88e0
	nop			;88e1
	nop			;88e2
	nop			;88e3
	nop			;88e4
	nop			;88e5
	nop			;88e6
	nop			;88e7
	jr nz,l88fah		;88e8
	nop			;88ea
	nop			;88eb
	nop			;88ec
	nop			;88ed
	nop			;88ee
	nop			;88ef
	nop			;88f0
	nop			;88f1
	nop			;88f2
	nop			;88f3
	ld b,000h		;88f4
	ld b,000h		;88f6
	ld b,000h		;88f8
l88fah:
	ld b,000h		;88fa
	ld b,000h		;88fc
	ld b,000h		;88fe
	ld b,000h		;8900
	nop			;8902
	nop			;8903
l8904h:
	nop			;8904
	nop			;8905
	nop			;8906
	nop			;8907
	nop			;8908
	nop			;8909
	nop			;890a
	nop			;890b
	jr nc,l890eh		;890c
l890eh:
	jr nc,l8910h		;890e
l8910h:
	jr nc,l8912h		;8910
l8912h:
	ex af,af'		;8912
	ex af,af'		;8913
	add hl,bc		;8914
	add hl,bc		;8915
	ld bc,00001h		;8916
	nop			;8919
	nop			;891a
	nop			;891b
	nop			;891c
	nop			;891d
	nop			;891e
	nop			;891f
	nop			;8920
	nop			;8921
	nop			;8922
	nop			;8923
	nop			;8924
	nop			;8925
	nop			;8926
	jr nz,l8929h		;8927
l8929h:
	nop			;8929
	nop			;892a
	nop			;892b
	ret po			;892c
	ret po			;892d
	ret po			;892e
	ld a,b			;892f
	sbc a,b			;8930
	nop			;8931
	rst 38h			;8932
	rst 38h			;8933
	halt			;8934
	sbc a,l			;8935
	dec hl			;8936
	add a,h			;8937
	ei			;8938
	ld a,c			;8939
	inc l			;893a
	ld d,e			;893b
	ld d,e			;893c
	nop			;893d
	ccf			;893e
	ccf			;893f
	nop			;8940
	nop			;8941
	sub b			;8942
	nop			;8943
	nop			;8944
	nop			;8945
	nop			;8946
	nop			;8947
	nop			;8948
	nop			;8949
	nop			;894a
	nop			;894b
	nop			;894c
	nop			;894d
	nop			;894e
	nop			;894f
	nop			;8950
	nop			;8951
	ld b,c			;8952
	cp a			;8953
	cp h			;8954
	nop			;8955
	rst 38h			;8956
	ei			;8957
	nop			;8958
	ld b,006h		;8959
	nop			;895b
	nop			;895c
	nop			;895d
	nop			;895e
	nop			;895f
	nop			;8960
	nop			;8961
	nop			;8962
	nop			;8963
	nop			;8964
	nop			;8965
	nop			;8966
	nop			;8967
	nop			;8968
	nop			;8969
	jr nz,$+1		;896a
	ld c,a			;896c
	nop			;896d
	ret m			;896e
	cp b			;896f
	jr nz,l89e2h		;8970
	ld d,b			;8972
	nop			;8973
	jr nc,$+50		;8974
	nop			;8976
	nop			;8977
	nop			;8978
	nop			;8979
	nop			;897a
	nop			;897b
	nop			;897c
	nop			;897d
	nop			;897e
	nop			;897f
	nop			;8980
	nop			;8981
	nop			;8982
	nop			;8983
	nop			;8984
	nop			;8985
	nop			;8986
	nop			;8987
	djnz l898ah		;8988
l898ah:
	nop			;898a
	jr c,l899dh		;898b
	nop			;898d
	djnz l8990h		;898e
l8990h:
	nop			;8990
	nop			;8991
	nop			;8992
	nop			;8993
	nop			;8994
	nop			;8995
	nop			;8996
	nop			;8997
	nop			;8998
	nop			;8999
	nop			;899a
	nop			;899b
	nop			;899c
l899dh:
	inc h			;899d
	jr l89a0h		;899e
l89a0h:
	ld e,d			;89a0
	inc a			;89a1
	nop			;89a2
	inc h			;89a3
	ld h,(hl)		;89a4
	jr l89cbh		;89a5
	ld h,(hl)		;89a7
	jr l8a04h		;89a8
	inc a			;89aa
	nop			;89ab
	inc h			;89ac
	jr l89afh		;89ad
l89afh:
	nop			;89af
	nop			;89b0
	nop			;89b1
	inc a			;89b2
	inc a			;89b3
	nop			;89b4
	ld b,d			;89b5
	ld b,d			;89b6
	inc a			;89b7
	add a,c			;89b8
	add a,c			;89b9
	ld a,(hl)		;89ba
	add a,c			;89bb
	add a,c			;89bc
	ld a,(hl)		;89bd
	add a,c			;89be
	add a,c			;89bf
	ld a,(hl)		;89c0
	add a,c			;89c1
	add a,c			;89c2
	ld a,(hl)		;89c3
	ld b,d			;89c4
	ld b,d			;89c5
	inc a			;89c6
	inc a			;89c7
	inc a			;89c8
	nop			;89c9
	inc a			;89ca
l89cbh:
	nop			;89cb
	inc a			;89cc
	ld a,(hl)		;89cd
	nop			;89ce
	ld h,(hl)		;89cf
	rst 38h			;89d0
	nop			;89d1
	jp 018e7h		;89d2
	add a,c			;89d5
	rst 20h			;89d6
	jr $-125		;89d7
	rst 38h			;89d9
	nop			;89da
	jp 0007eh		;89db
	ld h,(hl)		;89de
	inc a			;89df
	nop			;89e0
	inc a			;89e1
l89e2h:
	nop			;89e2
	nop			;89e3
	nop			;89e4
	jr l89e7h		;89e5
l89e7h:
	nop			;89e7
	inc a			;89e8
	jr l89ebh		;89e9
l89ebh:
	ld h,(hl)		;89eb
	inc h			;89ec
	jr l8a55h		;89ed
	inc h			;89ef
	jr l8a2eh		;89f0
	jr l89f4h		;89f2
l89f4h:
	jr l89f6h		;89f4
l89f6h:
	nop			;89f6
	nop			;89f7
	nop			;89f8
	nop			;89f9
	nop			;89fa
	nop			;89fb
	nop			;89fc
	jr l8a17h		;89fd
	nop			;89ff
	inc h			;8a00
	inc h			;8a01
	jr l8a46h		;8a02
l8a04h:
	ld b,d			;8a04
	inc a			;8a05
	ld b,d			;8a06
	ld b,d			;8a07
	inc a			;8a08
	inc h			;8a09
	inc h			;8a0a
	jr $+26			;8a0b
	jr l8a0fh		;8a0d
l8a0fh:
	nop			;8a0f
	nop			;8a10
	nop			;8a11
	nop			;8a12
	nop			;8a13
	nop			;8a14
	jr l8a17h		;8a15
l8a17h:
	jr l8a55h		;8a17
	nop			;8a19
	inc h			;8a1a
	ld h,(hl)		;8a1b
	jr l8a60h		;8a1c
	ld h,(hl)		;8a1e
	jr l8a63h		;8a1f
	inc a			;8a21
	nop			;8a22
	inc h			;8a23
	jr l8a26h		;8a24
l8a26h:
	jr l8a28h		;8a26
l8a28h:
	nop			;8a28
	nop			;8a29
	nop			;8a2a
	nop			;8a2b
	nop			;8a2c
	nop			;8a2d
l8a2eh:
	nop			;8a2e
	nop			;8a2f
	nop			;8a30
	nop			;8a31
	nop			;8a32
	nop			;8a33
	nop			;8a34
	nop			;8a35
	nop			;8a36
	nop			;8a37
	nop			;8a38
	ld bc,00000h		;8a39
	inc bc			;8a3c
	ld bc,00200h		;8a3d
	ld bc,00000h		;8a40
	nop			;8a43
	nop			;8a44
	nop			;8a45
l8a46h:
	nop			;8a46
	nop			;8a47
	nop			;8a48
	nop			;8a49
	nop			;8a4a
	nop			;8a4b
	nop			;8a4c
	nop			;8a4d
	nop			;8a4e
	nop			;8a4f
	nop			;8a50
	add a,b			;8a51
	nop			;8a52
	nop			;8a53
	ret nz			;8a54
l8a55h:
	add a,b			;8a55
	nop			;8a56
	ld b,b			;8a57
	add a,b			;8a58
	nop			;8a59
	ld bc,00000h		;8a5a
	nop			;8a5d
	nop			;8a5e
	nop			;8a5f
l8a60h:
	nop			;8a60
	nop			;8a61
	nop			;8a62
l8a63h:
	nop			;8a63
	nop			;8a64
	nop			;8a65
	nop			;8a66
	nop			;8a67
	nop			;8a68
	nop			;8a69
	nop			;8a6a
	nop			;8a6b
	nop			;8a6c
	nop			;8a6d
	nop			;8a6e
	nop			;8a6f
	nop			;8a70
	nop			;8a71
	add a,b			;8a72
	nop			;8a73
	nop			;8a74
	nop			;8a75
	nop			;8a76
	nop			;8a77
	nop			;8a78
	nop			;8a79
	nop			;8a7a
	nop			;8a7b
	nop			;8a7c
	nop			;8a7d
	nop			;8a7e
l8a7fh:
	nop			;8a7f
	nop			;8a80
	nop			;8a81
	nop			;8a82
	nop			;8a83
	nop			;8a84
	nop			;8a85
	nop			;8a86
	nop			;8a87
	nop			;8a88
	nop			;8a89
	nop			;8a8a
	nop			;8a8b
	nop			;8a8c
	nop			;8a8d
	nop			;8a8e
	nop			;8a8f
l8a90h:
	nop			;8a90
	nop			;8a91
l8a92h:
	nop			;8a92
	nop			;8a93
	nop			;8a94
	nop			;8a95
	nop			;8a96
	nop			;8a97
	nop			;8a98
	nop			;8a99
	nop			;8a9a
	nop			;8a9b
	nop			;8a9c
	nop			;8a9d
	nop			;8a9e
	nop			;8a9f
	nop			;8aa0
	nop			;8aa1
	add a,b			;8aa2
	add a,b			;8aa3
l8aa4h:
	add a,b			;8aa4
	add a,b			;8aa5
	add a,b			;8aa6
	add a,b			;8aa7
	ld b,b			;8aa8
	ret nz			;8aa9
	ld b,b			;8aaa
	ret nz			;8aab
	ld b,b			;8aac
	ret nz			;8aad
	jr nz,l8a90h		;8aae
	jr nz,l8a92h		;8ab0
	djnz l8aa4h		;8ab2
	sub b			;8ab4
	ld (hl),b		;8ab5
	adc a,b			;8ab6
	ld a,b			;8ab7
	ret z			;8ab8
	jr c,l8a7fh		;8ab9
	inc a			;8abb
l8abch:
	call po,0f21ch		;8abc
	ld c,0f2h		;8abf
	adc a,(hl)		;8ac1
	ld sp,hl		;8ac2
	add a,a			;8ac3
	call m,0fcc3h		;8ac4
	ex (sp),hl		;8ac7
	cp 0f1h			;8ac8
	rst 38h			;8aca
	ret m			;8acb
	rst 38h			;8acc
	ret m			;8acd
	rst 38h			;8ace
	ld a,h			;8acf
	rst 38h			;8ad0
	ld a,000h		;8ad1
	nop			;8ad3
	add a,b			;8ad4
	add a,b			;8ad5
	add a,b			;8ad6
	add a,b			;8ad7
	ld b,b			;8ad8
	ret nz			;8ad9
	jr nz,l8abch		;8ada
	sub b			;8adc
	ld (hl),b		;8add
	ret z			;8ade
	jr c,$-26		;8adf
	inc e			;8ae1
	rst 38h			;8ae2
	rra			;8ae3
	rst 38h			;8ae4
	rrca			;8ae5
	rst 38h			;8ae6
	rlca			;8ae7
	rst 38h			;8ae8
	inc bc			;8ae9
	rst 38h			;8aea
	ld bc,028f7h		;8aeb
	di			;8aee
	inc l			;8aef
	di			;8af0
	inc l			;8af1
	jp p,0f90eh		;8af2
l8af5h:
	add a,a			;8af5
	call m,0fec3h		;8af6
	pop hl			;8af9
	rst 38h			;8afa
	ret p			;8afb
	rst 38h			;8afc
	ret m			;8afd
	rst 38h			;8afe
	inc a			;8aff
	rst 38h			;8b00
	ld e,000h		;8b01
	nop			;8b03
	nop			;8b04
	nop			;8b05
	add a,b			;8b06
	add a,b			;8b07
	ld b,b			;8b08
	ret nz			;8b09
	jr nz,$-30		;8b0a
	sub b			;8b0c
	ld (hl),b		;8b0d
	ret z			;8b0e
	jr c,l8af5h		;8b0f
	inc e			;8b11
	di			;8b12
	inc l			;8b13
	di			;8b14
	inc l			;8b15
	di			;8b16
	inc l			;8b17
	di			;8b18
	inc l			;8b19
	di			;8b1a
	inc l			;8b1b
	ei			;8b1c
	inc h			;8b1d
	rst 38h			;8b1e
	jr $+1			;8b1f
	add a,h			;8b21
	rst 38h			;8b22
	rrca			;8b23
	rst 38h			;8b24
	rlca			;8b25
	rst 38h			;8b26
	ld bc,050efh		;8b27
l8b2ah:
	rst 20h			;8b2a
	ld e,b			;8b2b
	rst 20h			;8b2c
	ld e,b			;8b2d
	rst 20h			;8b2e
	ld e,b			;8b2f
	rst 20h			;8b30
	ld e,b			;8b31
	jp p,0f90eh		;8b32
	add a,a			;8b35
	call m,0fee3h		;8b36
	pop af			;8b39
	rst 38h			;8b3a
	inc a			;8b3b
	rst 38h			;8b3c
	ld c,0ffh		;8b3d
	rlca			;8b3f
	rst 38h			;8b40
	inc bc			;8b41
	nop			;8b42
	nop			;8b43
	nop			;8b44
	nop			;8b45
	ret nz			;8b46
	ret nz			;8b47
	jr nz,l8b2ah		;8b48
	sbc a,b			;8b4a
	ld a,b			;8b4b
	call nz,0f33ch		;8b4c
	rrca			;8b4f
	ret m			;8b50
	rst 0			;8b51
	rst 38h			;8b52
	ret nz			;8b53
	rst 38h			;8b54
	ret po			;8b55
	ld a,a			;8b56
	ret m			;8b57
	cp a			;8b58
	ld a,h			;8b59
	rst 8			;8b5a
	ccf			;8b5b
	rst 30h			;8b5c
	rrca			;8b5d
	ld sp,hl		;8b5e
	add a,a			;8b5f
	cp 0e1h			;8b60
	rst 20h			;8b62
	ld e,c			;8b63
	rst 20h			;8b64
	ld e,c			;8b65
	rst 30h			;8b66
	ld c,c			;8b67
	rst 38h			;8b68
	ld sp,009ffh		;8b69
	rst 38h			;8b6c
	add a,c			;8b6d
	rst 38h			;8b6e
	ret po			;8b6f
	ld a,a			;8b70
	ret m			;8b71
	cp a			;8b72
	ld b,b			;8b73
	cp a			;8b74
	ld b,b			;8b75
	cp a			;8b76
	ld b,b			;8b77
	cp a			;8b78
	ld b,b			;8b79
	cp l			;8b7a
	ld c,d			;8b7b
	cp l			;8b7c
	ld c,d			;8b7d
	defb 0fdh,0cah,0fdh ;illegal sequence	;8b7e
	ld a,(bc)		;8b81
	cp 0f1h			;8b82
l8b84h:
	rst 38h			;8b84
	ld a,h			;8b85
	rst 38h			;8b86
	ld a,a			;8b87
	di			;8b88
	ld a,a			;8b89
	call m,0ff73h		;8b8a
	inc a			;8b8d
	rst 38h			;8b8e
	rlca			;8b8f
	rst 28h			;8b90
	ld d,c			;8b91
	jr nc,l8b84h		;8b92
	adc a,(hl)		;8b94
	ld a,(hl)		;8b95
	pop hl			;8b96
	rra			;8b97
	call m,0ffc3h		;8b98
	ret m			;8b9b
	ccf			;8b9c
	rst 38h			;8b9d
	rst 8			;8b9e
	ccf			;8b9f
	rst 38h			;8ba0
	call pe,0e0ffh		;8ba1
	defb 0fdh,06ah ;ld iyl,d	;8ba4
	defb 0fdh,06ah ;ld iyl,d	;8ba6
	defb 0fdh,06ah ;ld iyl,d	;8ba8
	defb 0fdh,06ah ;ld iyl,d	;8baa
	defb 0fdh,06ah ;ld iyl,d	;8bac
	defb 0fdh,06ah ;ld iyl,d	;8bae
	defb 0fdh,06ah ;ld iyl,d	;8bb0
	sbc a,a			;8bb2
	ld a,(hl)		;8bb3
	rst 20h			;8bb4
	rra			;8bb5
	ei			;8bb6
	rlca			;8bb7
	cp 007h			;8bb8
	cp 007h			;8bba
	xor 057h		;8bbc
	xor 057h		;8bbe
	xor 057h		;8bc0
l8bc2h:
	defb 0fdh,00ah,0ffh ;illegal sequence	;8bc2
	add a,(hl)		;8bc5
	rst 38h			;8bc6
	ret po			;8bc7
	ld a,a			;8bc8
	call m,07f8fh		;8bc9
	di			;8bcc
	rrca			;8bcd
	call m,0ff03h		;8bce
	djnz l8bc2h		;8bd1
	ld d,b			;8bd3
	xor 055h		;8bd4
	xor 055h		;8bd6
	cp 035h			;8bd8
	rst 38h			;8bda
	add a,e			;8bdb
	rst 38h			;8bdc
	ret p			;8bdd
	ld a,a			;8bde
	rst 38h			;8bdf
	adc a,(hl)		;8be0
	ld a,(hl)		;8be1
	scf			;8be2
	ex af,af'		;8be3
	inc h			;8be4
	scf			;8be5
	ex af,af'		;8be6
	inc h			;8be7
	scf			;8be8
	ex af,af'		;8be9
	inc h			;8bea
	scf			;8beb
	ex af,af'		;8bec
	inc h			;8bed
	scf			;8bee
	ex af,af'		;8bef
	inc h			;8bf0
	scf			;8bf1
	ex af,af'		;8bf2
	inc h			;8bf3
	scf			;8bf4
	ex af,af'		;8bf5
	inc h			;8bf6
	scf			;8bf7
	ex af,af'		;8bf8
	inc h			;8bf9
	ld a,a			;8bfa
	ret nz			;8bfb
	jr nz,l8c71h		;8bfc
	rst 8			;8bfe
	jr nz,l8c74h		;8bff
	rst 8			;8c01
	jr nz,l8c77h		;8c02
	rst 8			;8c04
	jr nz,l8c7ah		;8c05
	rst 8			;8c07
	jr nz,l8c7dh		;8c08
	rst 8			;8c0a
	jr nz,l8c80h		;8c0b
	rst 8			;8c0d
	jr nz,l8c88h		;8c0e
	rst 0			;8c10
	jr nz,$+1		;8c11
	nop			;8c13
	inc b			;8c14
	ld a,h			;8c15
	ld a,e			;8c16
	add a,b			;8c17
	ld a,b			;8c18
	ld a,b			;8c19
	add a,a			;8c1a
	ld a,a			;8c1b
	ld a,a			;8c1c
	add a,b			;8c1d
	ld a,a			;8c1e
	ld a,a			;8c1f
	add a,b			;8c20
	ld a,a			;8c21
	ld a,a			;8c22
	add a,b			;8c23
	ccf			;8c24
	ccf			;8c25
	ret nz			;8c26
	ret nz			;8c27
	rst 38h			;8c28
	nop			;8c29
	ret p			;8c2a
	nop			;8c2b
	nop			;8c2c
	nop			;8c2d
	add a,b			;8c2e
	nop			;8c2f
	nop			;8c30
	nop			;8c31
	nop			;8c32
	nop			;8c33
	nop			;8c34
	nop			;8c35
	nop			;8c36
	nop			;8c37
	nop			;8c38
	nop			;8c39
	nop			;8c3a
	rlca			;8c3b
	nop			;8c3c
	nop			;8c3d
	inc c			;8c3e
	inc bc			;8c3f
	nop			;8c40
	inc de			;8c41
l8c42h:
	rrca			;8c42
	nop			;8c43
	inc (hl)		;8c44
	inc c			;8c45
	inc bc			;8c46
	jr z,l8c61h		;8c47
	rlca			;8c49
	nop			;8c4a
	nop			;8c4b
	nop			;8c4c
	nop			;8c4d
	nop			;8c4e
	nop			;8c4f
	nop			;8c50
	nop			;8c51
	nop			;8c52
	ret nz			;8c53
	nop			;8c54
	nop			;8c55
	ld h,b			;8c56
	add a,b			;8c57
	nop			;8c58
	sub b			;8c59
	ret po			;8c5a
	nop			;8c5b
	ld e,b			;8c5c
	ld h,b			;8c5d
	add a,b			;8c5e
	jr z,l8c91h		;8c5f
l8c61h:
	ret nz			;8c61
	nop			;8c62
	nop			;8c63
	nop			;8c64
	rrca			;8c65
	nop			;8c66
	nop			;8c67
	jr c,l8c71h		;8c68
	nop			;8c6a
	ld h,a			;8c6b
	rra			;8c6c
	nop			;8c6d
	ld e,h			;8c6e
	inc a			;8c6f
	inc bc			;8c70
l8c71h:
	ret nc			;8c71
	jr nc,l8c83h		;8c72
l8c74h:
	or b			;8c74
	ld (hl),b		;8c75
	rrca			;8c76
l8c77h:
	and b			;8c77
	ld h,b			;8c78
	rra			;8c79
l8c7ah:
	nop			;8c7a
	nop			;8c7b
	nop			;8c7c
l8c7dh:
	ret po			;8c7d
	nop			;8c7e
	nop			;8c7f
l8c80h:
	jr c,l8c42h		;8c80
	nop			;8c82
l8c83h:
	call z,000f0h		;8c83
	ld (hl),h		;8c86
	ld a,b			;8c87
l8c88h:
	add a,b			;8c88
	ld d,018h		;8c89
	ret po			;8c8b
	ld a,(de)		;8c8c
	inc e			;8c8d
	ret po			;8c8e
	ld a,(bc)		;8c8f
	inc c			;8c90
l8c91h:
	ret p			;8c91
	nop			;8c92
	nop			;8c93
l8c94h:
	nop			;8c94
	rrca			;8c95
	rrca			;8c96
	nop			;8c97
	jr nc,l8ccah		;8c98
	rrca			;8c9a
	ld h,b			;8c9b
	ld h,b			;8c9c
	rra			;8c9d
	ld b,b			;8c9e
	ld b,b			;8c9f
	ccf			;8ca0
	add a,b			;8ca1
	add a,b			;8ca2
	ld a,a			;8ca3
	add a,b			;8ca4
	add a,b			;8ca5
	ld a,a			;8ca6
	add a,b			;8ca7
	add a,b			;8ca8
	ld a,a			;8ca9
	nop			;8caa
	nop			;8cab
	nop			;8cac
	ret po			;8cad
	ret po			;8cae
	nop			;8caf
	jr l8ccah		;8cb0
	ret po			;8cb2
	inc c			;8cb3
	inc c			;8cb4
	ret p			;8cb5
	inc b			;8cb6
	inc b			;8cb7
	ret m			;8cb8
	ld (bc),a		;8cb9
	ld (bc),a		;8cba
	call m,00202h		;8cbb
	call m,00202h		;8cbe
	call m,00000h		;8cc1
	nop			;8cc4
	nop			;8cc5
	nop			;8cc6
	nop			;8cc7
	nop			;8cc8
	nop			;8cc9
l8ccah:
	nop			;8cca
	nop			;8ccb
l8ccch:
	nop			;8ccc
	rlca			;8ccd
	inc bc			;8cce
	nop			;8ccf
	inc c			;8cd0
	rrca			;8cd1
	nop			;8cd2
	djnz l8ce1h		;8cd3
	inc bc			;8cd5
	jr nc,l8cf1h		;8cd6
	rlca			;8cd8
	jr nz,l8cdbh		;8cd9
l8cdbh:
	nop			;8cdb
	nop			;8cdc
	nop			;8cdd
	nop			;8cde
	nop			;8cdf
	nop			;8ce0
l8ce1h:
	nop			;8ce1
	nop			;8ce2
	nop			;8ce3
	nop			;8ce4
	ret nz			;8ce5
	add a,b			;8ce6
	nop			;8ce7
	ld h,b			;8ce8
	ret po			;8ce9
	nop			;8cea
	djnz l8d4dh		;8ceb
	add a,b			;8ced
	jr l8d20h		;8cee
	ret nz			;8cf0
l8cf1h:
	ex af,af'		;8cf1
	add hl,de		;8cf2
	rlca			;8cf3
	jr nz,l8d02h		;8cf4
	inc bc			;8cf6
	jr nc,l8d08h		;8cf7
	nop			;8cf9
	djnz l8cffh		;8cfa
	nop			;8cfc
	inc c			;8cfd
	nop			;8cfe
l8cffh:
	nop			;8cff
	rlca			;8d00
	nop			;8d01
l8d02h:
	nop			;8d02
	nop			;8d03
	nop			;8d04
	nop			;8d05
	nop			;8d06
	nop			;8d07
l8d08h:
	nop			;8d08
	nop			;8d09
	jr nc,l8ccch		;8d0a
	ex af,af'		;8d0c
	ld h,b			;8d0d
	add a,b			;8d0e
	jr l8cf1h		;8d0f
	nop			;8d11
	djnz l8c94h		;8d12
	nop			;8d14
	ld h,b			;8d15
	nop			;8d16
	nop			;8d17
	ret nz			;8d18
	nop			;8d19
	nop			;8d1a
	nop			;8d1b
	nop			;8d1c
	nop			;8d1d
	nop			;8d1e
	nop			;8d1f
l8d20h:
	nop			;8d20
	nop			;8d21
	nop			;8d22
	nop			;8d23
	nop			;8d24
	nop			;8d25
	nop			;8d26
	nop			;8d27
	nop			;8d28
	nop			;8d29
	nop			;8d2a
	nop			;8d2b
	nop			;8d2c
	nop			;8d2d
	nop			;8d2e
	nop			;8d2f
	nop			;8d30
	nop			;8d31
	nop			;8d32
	nop			;8d33
	nop			;8d34
	nop			;8d35
	nop			;8d36
	nop			;8d37
	nop			;8d38
	rst 38h			;8d39
	nop			;8d3a
	nop			;8d3b
	rrca			;8d3c
	adc a,(hl)		;8d3d
	nop			;8d3e
	nop			;8d3f
	rrca			;8d40
	ld a,b			;8d41
	nop			;8d42
	nop			;8d43
	nop			;8d44
	nop			;8d45
	nop			;8d46
	nop			;8d47
	nop			;8d48
	nop			;8d49
	nop			;8d4a
	nop			;8d4b
	nop			;8d4c
l8d4dh:
	nop			;8d4d
	nop			;8d4e
	nop			;8d4f
	nop			;8d50
	nop			;8d51
	nop			;8d52
	nop			;8d53
	nop			;8d54
	nop			;8d55
	rst 38h			;8d56
	rst 38h			;8d57
	rst 38h			;8d58
	rst 38h			;8d59
	rst 30h			;8d5a
	adc a,b			;8d5b
	adc a,b			;8d5c
	adc a,b			;8d5d
	or 066h			;8d5e
	ld h,(hl)		;8d60
	ld h,(hl)		;8d61
	nop			;8d62
	nop			;8d63
	nop			;8d64
	nop			;8d65
	nop			;8d66
	nop			;8d67
	nop			;8d68
	nop			;8d69
	nop			;8d6a
	nop			;8d6b
	nop			;8d6c
	nop			;8d6d
	nop			;8d6e
	nop			;8d6f
	nop			;8d70
	nop			;8d71
	nop			;8d72
	nop			;8d73
	nop			;8d74
	nop			;8d75
	rst 38h			;8d76
	rst 38h			;8d77
	nop			;8d78
	nop			;8d79
	adc a,b			;8d7a
	adc a,b			;8d7b
	rst 38h			;8d7c
	rst 38h			;8d7d
	ld h,(hl)		;8d7e
	ld h,(hl)		;8d7f
	ld (hl),a		;8d80
	ret p			;8d81
	nop			;8d82
	nop			;8d83
	nop			;8d84
	nop			;8d85
	nop			;8d86
	nop			;8d87
	nop			;8d88
	nop			;8d89
	nop			;8d8a
	nop			;8d8b
	nop			;8d8c
	add hl,bc		;8d8d
	nop			;8d8e
	nop			;8d8f
	nop			;8d90
	nop			;8d91
	nop			;8d92
	rrca			;8d93
	rst 38h			;8d94
	rst 38h			;8d95
	nop			;8d96
	rst 38h			;8d97
	adc a,b			;8d98
	adc a,b			;8d99
	rst 38h			;8d9a
	rst 28h			;8d9b
	rst 30h			;8d9c
	ld (hl),a		;8d9d
	ld (hl),a		;8d9e
	nop			;8d9f
	rst 38h			;8da0
	rst 38h			;8da1
	nop			;8da2
	nop			;8da3
	nop			;8da4
	nop			;8da5
	nop			;8da6
	nop			;8da7
	nop			;8da8
	nop			;8da9
	nop			;8daa
	nop			;8dab
	nop			;8dac
	nop			;8dad
	add hl,bc		;8dae
	nop			;8daf
	nop			;8db0
	nop			;8db1
	nop			;8db2
	nop			;8db3
	nop			;8db4
	nop			;8db5
	rst 38h			;8db6
	ret p			;8db7
	nop			;8db8
	nop			;8db9
	ld a,a			;8dba
	rst 38h			;8dbb
	ret p			;8dbc
	nop			;8dbd
	rst 30h			;8dbe
	adc a,b			;8dbf
	adc a,a			;8dc0
	nop			;8dc1
	nop			;8dc2
	nop			;8dc3
	rrca			;8dc4
	rst 38h			;8dc5
	nop			;8dc6
	nop			;8dc7
	rrca			;8dc8
	ld a,(hl)		;8dc9
	nop			;8dca
	nop			;8dcb
	rrca			;8dcc
	ld a,b			;8dcd
	nop			;8dce
	nop			;8dcf
	rrca			;8dd0
	ld a,b			;8dd1
	nop			;8dd2
	nop			;8dd3
	rrca			;8dd4
	ld a,b			;8dd5
	nop			;8dd6
	nop			;8dd7
	rrca			;8dd8
	ld a,b			;8dd9
	nop			;8dda
	nop			;8ddb
	rrca			;8ddc
	ld a,b			;8ddd
	nop			;8dde
	nop			;8ddf
	adc a,a			;8de0
	rst 38h			;8de1
	ld l,a			;8de2
	rst 38h			;8de3
	rst 38h			;8de4
	rst 38h			;8de5
	ret m			;8de6
	cp 0eeh			;8de7
	xor 0f7h		;8de9
	ret m			;8deb
	adc a,b			;8dec
	adc a,b			;8ded
	rst 30h			;8dee
	ret m			;8def
	adc a,b			;8df0
	rst 30h			;8df1
	rst 30h			;8df2
	ret m			;8df3
	ld a,b			;8df4
	rst 38h			;8df5
	rst 30h			;8df6
	ret m			;8df7
	adc a,b			;8df8
	adc a,b			;8df9
	rst 30h			;8dfa
	rst 38h			;8dfb
	rst 38h			;8dfc
	rst 38h			;8dfd
	rst 38h			;8dfe
	rst 30h			;8dff
	adc a,b			;8e00
	add a,a			;8e01
	rst 38h			;8e02
	rst 38h			;8e03
	rst 38h			;8e04
	ret m			;8e05
	xor 0e6h		;8e06
	xor 0efh		;8e08
	adc a,b			;8e0a
	adc a,b			;8e0b
	ld l,b			;8e0c
	adc a,b			;8e0d
	adc a,b			;8e0e
	ld l,b			;8e0f
	ld l,b			;8e10
	adc a,a			;8e11
	rst 38h			;8e12
	ret m			;8e13
	ld l,b			;8e14
	rst 38h			;8e15
	adc a,b			;8e16
	adc a,b			;8e17
	ld l,a			;8e18
	rst 30h			;8e19
	rst 38h			;8e1a
	rst 38h			;8e1b
	rst 38h			;8e1c
	rst 30h			;8e1d
	ret m			;8e1e
	adc a,b			;8e1f
	rst 38h			;8e20
	or 088h			;8e21
	adc a,b			;8e23
	ld (hl),a		;8e24
	ld (hl),a		;8e25
	ld (hl),a		;8e26
	ld (hl),a		;8e27
	adc a,(hl)		;8e28
	xor 0f6h		;8e29
	ld (hl),a		;8e2b
	adc a,b			;8e2c
	adc a,b			;8e2d
	rst 38h			;8e2e
	rst 38h			;8e2f
	rst 38h			;8e30
	ld h,a			;8e31
	ld (hl),a		;8e32
	ld a,a			;8e33
	rst 38h			;8e34
	rst 38h			;8e35
	adc a,(hl)		;8e36
	add a,a			;8e37
	rst 30h			;8e38
	adc a,b			;8e39
	adc a,b			;8e3a
	add a,a			;8e3b
	rst 38h			;8e3c
	rst 38h			;8e3d
	ld (hl),a		;8e3e
	halt			;8e3f
	cp 088h			;8e40
	ld a,a			;8e42
	ld (hl),a		;8e43
	ld a,a			;8e44
	ret p			;8e45
	xor 0ffh		;8e46
	rst 30h			;8e48
	ld a,a			;8e49
	adc a,b			;8e4a
	adc a,b			;8e4b
	cp 08fh			;8e4c
	ld (hl),a		;8e4e
	ld (hl),a		;8e4f
	rst 30h			;8e50
	ld a,a			;8e51
	rst 38h			;8e52
	rst 38h			;8e53
	ld b,06fh		;8e54
	add a,a			;8e56
	ld a,a			;8e57
	rst 38h			;8e58
	ret p			;8e59
	rst 38h			;8e5a
	rst 38h			;8e5b
	ret p			;8e5c
	nop			;8e5d
	adc a,b			;8e5e
	add a,a			;8e5f
	ret p			;8e60
	nop			;8e61
	nop			;8e62
	sbc a,b			;8e63
	ld (hl),b		;8e64
	rst 30h			;8e65
	nop			;8e66
	nop			;8e67
	nop			;8e68
	rrca			;8e69
	nop			;8e6a
	nop			;8e6b
	nop			;8e6c
	nop			;8e6d
	nop			;8e6e
	nop			;8e6f
	nop			;8e70
	sbc a,b			;8e71
	nop			;8e72
	nop			;8e73
	nop			;8e74
	nop			;8e75
	nop			;8e76
	nop			;8e77
	nop			;8e78
	nop			;8e79
	nop			;8e7a
	nop			;8e7b
	nop			;8e7c
	nop			;8e7d
	nop			;8e7e
	nop			;8e7f
	nop			;8e80
	nop			;8e81
	add a,b			;8e82
	ld b,066h		;8e83
	ld h,(hl)		;8e85
	or 08fh			;8e86
	rst 38h			;8e88
	rst 38h			;8e89
	sub b			;8e8a
	nop			;8e8b
	nop			;8e8c
	nop			;8e8d
	nop			;8e8e
	nop			;8e8f
	nop			;8e90
	nop			;8e91
	nop			;8e92
	nop			;8e93
	nop			;8e94
	nop			;8e95
	nop			;8e96
	nop			;8e97
	nop			;8e98
	nop			;8e99
	nop			;8e9a
	nop			;8e9b
	nop			;8e9c
	nop			;8e9d
	nop			;8e9e
	nop			;8e9f
	nop			;8ea0
	nop			;8ea1
	or 06fh			;8ea2
	rrca			;8ea4
	rst 38h			;8ea5
	rst 38h			;8ea6
	rst 30h			;8ea7
	rst 38h			;8ea8
	rst 38h			;8ea9
	nop			;8eaa
	rst 38h			;8eab
	rst 38h			;8eac
	ld l,b			;8ead
	nop			;8eae
	nop			;8eaf
	nop			;8eb0
	rst 38h			;8eb1
	nop			;8eb2
	nop			;8eb3
	nop			;8eb4
	nop			;8eb5
	nop			;8eb6
	nop			;8eb7
	nop			;8eb8
	nop			;8eb9
	nop			;8eba
	nop			;8ebb
	nop			;8ebc
	nop			;8ebd
	nop			;8ebe
	nop			;8ebf
	nop			;8ec0
	nop			;8ec1
	ld h,(hl)		;8ec2
	ld l,a			;8ec3
	ret m			;8ec4
	ld (hl),a		;8ec5
	rst 38h			;8ec6
	rst 38h			;8ec7
	adc a,a			;8ec8
	rst 38h			;8ec9
	rst 38h			;8eca
	nop			;8ecb
	ret m			;8ecc
	ld h,(hl)		;8ecd
	ret p			;8ece
	nop			;8ecf
	rrca			;8ed0
	adc a,b			;8ed1
	nop			;8ed2
	nop			;8ed3
	nop			;8ed4
	rst 38h			;8ed5
	nop			;8ed6
	nop			;8ed7
	sub (hl)		;8ed8
	nop			;8ed9
	nop			;8eda
	nop			;8edb
	nop			;8edc
	nop			;8edd
	nop			;8ede
	nop			;8edf
	nop			;8ee0
	nop			;8ee1
	ld (hl),a		;8ee2
	halt			;8ee3
	ret p			;8ee4
	nop			;8ee5
	rst 38h			;8ee6
	rst 38h			;8ee7
	nop			;8ee8
	nop			;8ee9
	ld l,a			;8eea
	nop			;8eeb
	nop			;8eec
	nop			;8eed
	ld a,a			;8eee
	nop			;8eef
	nop			;8ef0
	nop			;8ef1
	rst 38h			;8ef2
	nop			;8ef3
	nop			;8ef4
	nop			;8ef5
	nop			;8ef6
	nop			;8ef7
	nop			;8ef8
	nop			;8ef9
	nop			;8efa
	nop			;8efb
	nop			;8efc
	nop			;8efd
	nop			;8efe
	nop			;8eff
	nop			;8f00
	nop			;8f01
	nop			;8f02
	nop			;8f03
	nop			;8f04
	nop			;8f05
	nop			;8f06
	nop			;8f07
	nop			;8f08
	nop			;8f09
	nop			;8f0a
	nop			;8f0b
	nop			;8f0c
	add hl,bc		;8f0d
	nop			;8f0e
	nop			;8f0f
	nop			;8f10
l8f11h:
	nop			;8f11
	nop			;8f12
	nop			;8f13
	nop			;8f14
	nop			;8f15
	nop			;8f16
	nop			;8f17
	nop			;8f18
	nop			;8f19
	nop			;8f1a
	nop			;8f1b
	nop			;8f1c
	rrca			;8f1d
	nop			;8f1e
	nop			;8f1f
	nop			;8f20
	rrca			;8f21
	nop			;8f22
	nop			;8f23
	nop			;8f24
	nop			;8f25
	nop			;8f26
	nop			;8f27
	nop			;8f28
	nop			;8f29
	ld (hl),b		;8f2a
	nop			;8f2b
	sub b			;8f2c
	nop			;8f2d
	nop			;8f2e
	nop			;8f2f
	nop			;8f30
	nop			;8f31
	rrca			;8f32
	rst 38h			;8f33
	nop			;8f34
	nop			;8f35
	rst 30h			;8f36
	adc a,(hl)		;8f37
	rst 38h			;8f38
	rst 38h			;8f39
	ld a,a			;8f3a
	rst 38h			;8f3b
	ret m			;8f3c
	adc a,a			;8f3d
	ld a,a			;8f3e
	or 077h			;8f3f
	rst 30h			;8f41
	nop			;8f42
	nop			;8f43
	nop			;8f44
	nop			;8f45
	nop			;8f46
	nop			;8f47
	nop			;8f48
	nop			;8f49
	nop			;8f4a
	nop			;8f4b
	nop			;8f4c
	nop			;8f4d
	nop			;8f4e
	nop			;8f4f
	nop			;8f50
	nop			;8f51
	nop			;8f52
	nop			;8f53
	nop			;8f54
	nop			;8f55
	rst 38h			;8f56
	ret p			;8f57
	nop			;8f58
	nop			;8f59
	ld (hl),a		;8f5a
	ld a,a			;8f5b
	nop			;8f5c
	nop			;8f5d
	adc a,(hl)		;8f5e
	rst 28h			;8f5f
	nop			;8f60
	nop			;8f61
	nop			;8f62
	nop			;8f63
	nop			;8f64
	rst 38h			;8f65
	nop			;8f66
	nop			;8f67
	nop			;8f68
	ret m			;8f69
	nop			;8f6a
	nop			;8f6b
	nop			;8f6c
	or 000h			;8f6d
	nop			;8f6f
	rrca			;8f70
	adc a,a			;8f71
	nop			;8f72
	nop			;8f73
	rrca			;8f74
	ld a,b			;8f75
	rrca			;8f76
	rst 38h			;8f77
	rst 38h			;8f78
	rst 30h			;8f79
	rst 30h			;8f7a
	ld (hl),a		;8f7b
	ld h,(hl)		;8f7c
	rst 38h			;8f7d
	ret m			;8f7e
	adc a,b			;8f7f
	adc a,b			;8f80
	ld a,a			;8f81
	rst 30h			;8f82
	adc a,a			;8f83
	ld h,(hl)		;8f84
	rst 30h			;8f85
	adc a,a			;8f86
	rst 30h			;8f87
	rst 38h			;8f88
	rst 30h			;8f89
	adc a,b			;8f8a
	rst 38h			;8f8b
	ld (hl),a		;8f8c
	rst 38h			;8f8d
	ld l,a			;8f8e
	adc a,b			;8f8f
	rst 38h			;8f90
	ld h,a			;8f91
	rst 38h			;8f92
	ld a,a			;8f93
	adc a,a			;8f94
	ld h,(hl)		;8f95
	rst 38h			;8f96
	ld a,a			;8f97
	ld a,a			;8f98
	ld l,a			;8f99
	rst 38h			;8f9a
	rst 38h			;8f9b
	ld a,a			;8f9c
	ld h,(hl)		;8f9d
	ret m			;8f9e
	rst 38h			;8f9f
	ld a,a			;8fa0
	ld h,(hl)		;8fa1
	ld a,b			;8fa2
	adc a,b			;8fa3
	ret p			;8fa4
	nop			;8fa5
	ld (hl),a		;8fa6
	ld (hl),a		;8fa7
	ret p			;8fa8
	nop			;8fa9
	rst 38h			;8faa
	rst 38h			;8fab
	ret p			;8fac
	nop			;8fad
	adc a,b			;8fae
	xor 0f0h		;8faf
	nop			;8fb1
	ld a,b			;8fb2
	ret pe			;8fb3
	ret p			;8fb4
	nop			;8fb5
	ld a,b			;8fb6
	ret pe			;8fb7
	rst 38h			;8fb8
	ret p			;8fb9
	ld h,a			;8fba
	halt			;8fbb
	or 06fh			;8fbc
	ld a,b			;8fbe
	xor 0f8h		;8fbf
	adc a,a			;8fc1
	or 086h			;8fc2
	ld h,(hl)		;8fc4
	ld a,a			;8fc5
	rrca			;8fc6
	rst 38h			;8fc7
	rst 38h			;8fc8
	rst 38h			;8fc9
	nop			;8fca
	nop			;8fcb
	nop			;8fcc
	rrca			;8fcd
	nop			;8fce
	nop			;8fcf
	nop			;8fd0
	nop			;8fd1
	nop			;8fd2
	nop			;8fd3
	nop			;8fd4
	nop			;8fd5
	nop			;8fd6
	nop			;8fd7
	nop			;8fd8
	nop			;8fd9
	nop			;8fda
	nop			;8fdb
	nop			;8fdc
	nop			;8fdd
	nop			;8fde
	nop			;8fdf
	nop			;8fe0
	nop			;8fe1
	adc a,(hl)		;8fe2
	ld a,a			;8fe3
	ld a,a			;8fe4
	ld h,(hl)		;8fe5
	adc a,b			;8fe6
	ld a,a			;8fe7
	ld a,a			;8fe8
	ld h,(hl)		;8fe9
	ld (hl),a		;8fea
	ld a,a			;8feb
	rst 38h			;8fec
	ld h,(hl)		;8fed
	or 0ffh			;8fee
	adc a,a			;8ff0
	ld l,a			;8ff1
	rrca			;8ff2
	or 07fh			;8ff3
	ld h,(hl)		;8ff5
	rrca			;8ff6
	or 06fh			;8ff7
	ld h,(hl)		;8ff9
	nop			;8ffa
	rst 38h			;8ffb
	ld l,a			;8ffc
	ld h,(hl)		;8ffd
	nop			;8ffe
	rst 30h			;8fff
	rst 38h			;9000
	ld h,(hl)		;9001
	ld a,b			;9002
	ret pe			;9003
	rst 38h			;9004
	ret p			;9005
	ld a,b			;9006
	ret pe			;9007
	ret p			;9008
	nop			;9009
	ld a,b			;900a
	ret pe			;900b
	ret p			;900c
	nop			;900d
	ld a,b			;900e
	ret pe			;900f
	ret p			;9010
	nop			;9011
	ld h,a			;9012
	halt			;9013
	ret p			;9014
	nop			;9015
	ld a,b			;9016
	xor 0f0h		;9017
	nop			;9019
	ld a,b			;901a
	ret pe			;901b
	ret p			;901c
	nop			;901d
	ld a,b			;901e
	ret pe			;901f
	ret p			;9020
	nop			;9021
	nop			;9022
	rrca			;9023
	ld a,a			;9024
	ld h,(hl)		;9025
	nop			;9026
	rrca			;9027
	ld l,a			;9028
	rst 38h			;9029
	nop			;902a
	nop			;902b
	rst 38h			;902c
	ld l,a			;902d
	nop			;902e
	nop			;902f
	rst 38h			;9030
	ld l,b			;9031
	nop			;9032
	nop			;9033
	rrca			;9034
	ld l,b			;9035
	nop			;9036
	nop			;9037
	rrca			;9038
	ld l,b			;9039
	nop			;903a
	nop			;903b
	nop			;903c
	push af			;903d
	nop			;903e
	nop			;903f
	add hl,bc		;9040
	nop			;9041
	ld (hl),a		;9042
	halt			;9043
	ret p			;9044
	nop			;9045
	ld h,(hl)		;9046
	ld l,a			;9047
	ret p			;9048
	nop			;9049
	rst 38h			;904a
	rst 38h			;904b
	add a,b			;904c
	nop			;904d
	ld l,b			;904e
	ld a,a			;904f
	ld l,b			;9050
	add hl,bc		;9051
	ld h,a			;9052
	ret p			;9053
	ld b,080h		;9054
	rst 38h			;9056
	nop			;9057
	nop			;9058
	ld h,b			;9059
	nop			;905a
	nop			;905b
	add hl,bc		;905c
	nop			;905d
	sub b			;905e
	nop			;905f
	nop			;9060
	nop			;9061
	nop			;9062
	nop			;9063
	nop			;9064
	nop			;9065
	nop			;9066
	nop			;9067
	nop			;9068
	nop			;9069
	nop			;906a
	nop			;906b
	nop			;906c
	nop			;906d
	nop			;906e
	nop			;906f
	nop			;9070
	nop			;9071
	nop			;9072
	nop			;9073
	nop			;9074
	nop			;9075
	nop			;9076
	nop			;9077
	nop			;9078
	rrca			;9079
	nop			;907a
	nop			;907b
	nop			;907c
	or 000h			;907d
	nop			;907f
	rrca			;9080
	ld h,a			;9081
	nop			;9082
	nop			;9083
	nop			;9084
	nop			;9085
	nop			;9086
	nop			;9087
	nop			;9088
	nop			;9089
	nop			;908a
	nop			;908b
	nop			;908c
	nop			;908d
	nop			;908e
	rst 38h			;908f
	rst 38h			;9090
	rst 38h			;9091
	rst 38h			;9092
	rst 38h			;9093
	rst 30h			;9094
	ld (hl),a		;9095
	ld h,a			;9096
	ld (hl),a		;9097
	rst 38h			;9098
	ld a,b			;9099
	ld a,b			;909a
	adc a,b			;909b
	ld a,a			;909c
	adc a,(hl)		;909d
	adc a,b			;909e
	ret pe			;909f
	add a,a			;90a0
	ret m			;90a1
	nop			;90a2
	nop			;90a3
	nop			;90a4
	nop			;90a5
	nop			;90a6
	nop			;90a7
	nop			;90a8
	nop			;90a9
	nop			;90aa
	nop			;90ab
	nop			;90ac
	nop			;90ad
	rst 38h			;90ae
	rst 38h			;90af
	rst 38h			;90b0
	ret p			;90b1
	halt			;90b2
	ld h,a			;90b3
	halt			;90b4
	ld l,a			;90b5
	adc a,b			;90b6
	ld l,b			;90b7
	add a,a			;90b8
	ld (hl),a		;90b9
	xor 0e6h		;90ba
	adc a,b			;90bc
	adc a,b			;90bd
	xor 0e6h		;90be
	xor 0eeh		;90c0
	nop			;90c2
	nop			;90c3
	nop			;90c4
	nop			;90c5
	nop			;90c6
	nop			;90c7
	nop			;90c8
	nop			;90c9
	nop			;90ca
	nop			;90cb
	nop			;90cc
	nop			;90cd
	nop			;90ce
	nop			;90cf
	nop			;90d0
	nop			;90d1
	rst 38h			;90d2
	ret p			;90d3
	nop			;90d4
	nop			;90d5
	ld (hl),a		;90d6
	ld a,a			;90d7
	rst 38h			;90d8
	nop			;90d9
	ld a,b			;90da
	add a,a			;90db
	ld (hl),a		;90dc
	rst 38h			;90dd
	ld a,(hl)		;90de
	adc a,b			;90df
	adc a,b			;90e0
	ld a,a			;90e1
	nop			;90e2
	nop			;90e3
	nop			;90e4
	nop			;90e5
	nop			;90e6
	nop			;90e7
	nop			;90e8
	rrca			;90e9
	nop			;90ea
	nop			;90eb
	nop			;90ec
	rst 30h			;90ed
	nop			;90ee
	nop			;90ef
	rrca			;90f0
	ld a,a			;90f1
	nop			;90f2
	nop			;90f3
	rrca			;90f4
	rst 38h			;90f5
	nop			;90f6
	rrca			;90f7
	rst 38h			;90f8
	rst 38h			;90f9
	rrca			;90fa
	rst 38h			;90fb
	or 066h			;90fc
	rst 38h			;90fe
	ld a,a			;90ff
	rst 38h			;9100
	rst 38h			;9101
	nop			;9102
	nop			;9103
	sub b			;9104
	nop			;9105
	rst 38h			;9106
	rst 38h			;9107
	rst 38h			;9108
	rst 38h			;9109
	ld a,b			;910a
	adc a,b			;910b
	xor 0e8h		;910c
	rst 38h			;910e
sub_910fh:
	rst 38h			;910f
	rst 38h			;9110
	rst 38h			;9111
	defb 0fdh,0fdh,0ffh ;illegal sequence	;9112
	rst 18h			;9115
	rst 38h			;9116
	rst 38h			;9117
	rst 38h			;9118
	rst 38h			;9119
	ld h,(hl)		;911a
	ld (hl),a		;911b
	ld a,b			;911c
	rst 28h			;911d
	rst 30h			;911e
	ld (hl),a		;911f
	adc a,(hl)		;9120
	ret pe			;9121
	add hl,bc		;9122
	nop			;9123
	nop			;9124
	sub b			;9125
	ret p			;9126
	nop			;9127
	nop			;9128
	ex af,af'		;9129
	adc a,a			;912a
	ret p			;912b
	ex af,af'		;912c
	ld a,a			;912d
	adc a,b			;912e
	adc a,a			;912f
	add a,a			;9130
	ret p			;9131
	rst 38h			;9132
	add a,a			;9133
	rst 38h			;9134
	nop			;9135
	rst 38h			;9136
	ld (hl),a		;9137
	rst 28h			;9138
	nop			;9139
	ld sp,hl		;913a
	cp 0e8h			;913b
	ret p			;913d
	ld a,a			;913e
	cp 087h			;913f
	ld a,a			;9141
	nop			;9142
	nop			;9143
	nop			;9144
	nop			;9145
	ret p			;9146
	sub b			;9147
	nop			;9148
	nop			;9149
	nop			;914a
	nop			;914b
	nop			;914c
	nop			;914d
	nop			;914e
	nop			;914f
	nop			;9150
	nop			;9151
	nop			;9152
	nop			;9153
	nop			;9154
	nop			;9155
	nop			;9156
	nop			;9157
	nop			;9158
	nop			;9159
	nop			;915a
	nop			;915b
	nop			;915c
	nop			;915d
	nop			;915e
	nop			;915f
	nop			;9160
	nop			;9161
	nop			;9162
	nop			;9163
	rrca			;9164
	ld (hl),a		;9165
	nop			;9166
	nop			;9167
	or 078h			;9168
l916ah:
	nop			;916a
	nop			;916b
	rst 30h			;916c
	ld a,b			;916d
	nop			;916e
	nop			;916f
	rst 30h			;9170
	adc a,b			;9171
	nop			;9172
	rrca			;9173
	ld h,a			;9174
	adc a,b			;9175
	nop			;9176
	rrca			;9177
	ld h,a			;9178
	adc a,b			;9179
	nop			;917a
	rrca			;917b
	ld h,a			;917c
	ld a,b			;917d
	nop			;917e
	rrca			;917f
	or 077h			;9180
	adc a,b			;9182
	xor 087h		;9183
	ret m			;9185
	adc a,b			;9186
	xor 087h		;9187
	rst 30h			;9189
	adc a,b			;918a
	xor 087h		;918b
	ld l,a			;918d
	adc a,(hl)		;918e
	xor 087h		;918f
	ld l,a			;9191
	adc a,(hl)		;9192
	ret pe			;9193
	add a,a			;9194
	ld l,a			;9195
	xor 088h		;9196
	ld (hl),a		;9198
	ld l,a			;9199
	adc a,b			;919a
	ld (hl),a		;919b
	halt			;919c
	rst 38h			;919d
	ld (hl),a		;919e
	halt			;919f
	ld l,a			;91a0
	rst 38h			;91a1
	xor 0eeh		;91a2
	ld l,(hl)		;91a4
	xor 088h		;91a5
	adc a,b			;91a7
	ld l,b			;91a8
	adc a,b			;91a9
	adc a,(hl)		;91aa
	xor 0e6h		;91ab
	adc a,b			;91ad
	adc a,(hl)		;91ae
	xor 0e6h		;91af
	xor 078h		;91b1
	adc a,b			;91b3
	adc a,b			;91b4
	ld l,b			;91b5
	ld a,b			;91b6
	adc a,b			;91b7
	adc a,b			;91b8
	ld h,a			;91b9
	ld h,a			;91ba
	ld (hl),a		;91bb
	ld (hl),a		;91bc
	ld l,a			;91bd
	ld h,a			;91be
	ld (hl),a		;91bf
	ld h,(hl)		;91c0
	rst 38h			;91c1
	rst 20h			;91c2
	xor 0e8h		;91c3
	add a,a			;91c5
	add a,a			;91c6
	adc a,(hl)		;91c7
	xor 0e8h		;91c8
	adc a,b			;91ca
	ld a,b			;91cb
	adc a,b			;91cc
	adc a,b			;91cd
	xor 07eh		;91ce
	xor 08eh		;91d0
	adc a,b			;91d2
	add a,a			;91d3
	adc a,b			;91d4
	adc a,b			;91d5
	ld (hl),a		;91d6
	ld (hl),a		;91d7
	ld (hl),a		;91d8
	ld (hl),a		;91d9
	ld h,(hl)		;91da
	ld h,(hl)		;91db
	ld h,(hl)		;91dc
	rst 38h			;91dd
	rst 38h			;91de
	rst 38h			;91df
	rst 38h			;91e0
	ld (hl),a		;91e1
	ld a,a			;91e2
	rst 30h			;91e3
	ld a,b			;91e4
	adc a,b			;91e5
	add a,a			;91e6
	ld a,a			;91e7
	rst 38h			;91e8
	ld h,(hl)		;91e9
	adc a,b			;91ea
	add a,a			;91eb
	rst 38h			;91ec
	rst 38h			;91ed
	adc a,b			;91ee
	adc a,b			;91ef
	ld a,a			;91f0
	ld a,b			;91f1
	adc a,b			;91f2
	adc a,b			;91f3
	add a,a			;91f4
	rst 30h			;91f5
	ld (hl),a		;91f6
	ld (hl),a		;91f7
	ld a,a			;91f8
	rst 38h			;91f9
	rst 38h			;91fa
	rst 38h			;91fb
	rst 30h			;91fc
	ld a,a			;91fd
	ld (hl),a		;91fe
	ld (hl),a		;91ff
	ld a,(hl)		;9200
	xor 08fh		;9201
	rst 38h			;9203
	rst 38h			;9204
	add a,a			;9205
	ld h,(hl)		;9206
	ld (hl),a		;9207
	ld l,a			;9208
	rst 38h			;9209
	rst 38h			;920a
	rst 38h			;920b
	rst 38h			;920c
	adc a,b			;920d
	adc a,(hl)		;920e
	ret pe			;920f
	ld (hl),a		;9210
	ld h,(hl)		;9211
	ld (hl),a		;9212
	ld a,a			;9213
	rst 38h			;9214
	rst 38h			;9215
	rst 38h			;9216
	rst 38h			;9217
	ld l,b			;9218
	rst 30h			;9219
	or 08eh			;921a
	ld l,b			;921c
	or 0f6h			;921d
	adc a,(hl)		;921f
	rst 38h			;9220
	rst 38h			;9221
	halt			;9222
	ret m			;9223
	ld (hl),a		;9224
	ld a,a			;9225
	rst 38h			;9226
	ld (hl),a		;9227
	ld a,a			;9228
	rst 38h			;9229
	adc a,b			;922a
	ld l,a			;922b
	rst 38h			;922c
	ld a,b			;922d
	ld l,a			;922e
	rst 38h			;922f
	ret m			;9230
	adc a,(hl)		;9231
	or 07fh			;9232
	adc a,(hl)		;9234
	xor 077h		;9235
	adc a,a			;9237
	ld a,b			;9238
	adc a,b			;9239
	adc a,b			;923a
	adc a,b			;923b
	rst 38h			;923c
	rst 38h			;923d
	ld a,b			;923e
	rst 38h			;923f
	rst 30h			;9240
	adc a,b			;9241
	nop			;9242
	nop			;9243
	nop			;9244
	nop			;9245
	ret p			;9246
	nop			;9247
	nop			;9248
	nop			;9249
	adc a,a			;924a
	nop			;924b
	nop			;924c
	nop			;924d
	xor 0f0h		;924e
	nop			;9250
	nop			;9251
	ret pe			;9252
	ld a,a			;9253
	nop			;9254
	nop			;9255
	add a,a			;9256
	ld l,a			;9257
	nop			;9258
	nop			;9259
	ld h,(hl)		;925a
	ld l,a			;925b
	nop			;925c
	nop			;925d
	rst 38h			;925e
	ret p			;925f
	nop			;9260
	nop			;9261
	nop			;9262
	rrca			;9263
	rst 38h			;9264
	ld h,(hl)		;9265
	nop			;9266
	or 0ffh			;9267
	rst 38h			;9269
	nop			;926a
	ret m			;926b
	ld (hl),a		;926c
	ld (hl),a		;926d
	nop			;926e
	rst 30h			;926f
	ld h,(hl)		;9270
	ld h,(hl)		;9271
	nop			;9272
	rst 30h			;9273
	ld h,(hl)		;9274
	ld h,(hl)		;9275
	nop			;9276
	rst 30h			;9277
	ld h,(hl)		;9278
	ld h,(hl)		;9279
	nop			;927a
	rst 30h			;927b
	ld h,(hl)		;927c
	ld h,(hl)		;927d
	nop			;927e
	rst 30h			;927f
	ld h,(hl)		;9280
	ld h,(hl)		;9281
	ld h,(hl)		;9282
	ld h,(hl)		;9283
	rst 38h			;9284
	or 0ffh			;9285
	rst 38h			;9287
	rst 38h			;9288
	or 08eh			;9289
	xor 087h		;928b
	rst 38h			;928d
	ld (hl),a		;928e
	adc a,b			;928f
	halt			;9290
	rst 30h			;9291
	ld (hl),a		;9292
	adc a,b			;9293
	halt			;9294
	or 077h			;9295
	adc a,b			;9297
	halt			;9298
	or 077h			;9299
	adc a,b			;929b
	halt			;929c
	or 077h			;929d
	adc a,b			;929f
	halt			;92a0
	or 066h			;92a1
	ld h,(hl)		;92a3
	rst 38h			;92a4
	or 0ffh			;92a5
	rst 38h			;92a7
	adc a,b			;92a8
	rst 30h			;92a9
	adc a,(hl)		;92aa
	xor 0e7h		;92ab
	or 078h			;92ad
	adc a,b			;92af
	ret pe			;92b0
	or 078h			;92b1
	adc a,b			;92b3
	rst 20h			;92b4
	or 078h			;92b5
	adc a,b			;92b7
	rst 20h			;92b8
	or 078h			;92b9
	adc a,b			;92bb
	rst 20h			;92bc
	or 076h			;92bd
	ret pe			;92bf
	rst 20h			;92c0
	or 077h			;92c1
	ld (hl),a		;92c3
	ld (hl),a		;92c4
	xor 08eh		;92c5
	xor 0eeh		;92c7
	adc a,b			;92c9
	ld a,(hl)		;92ca
	ret pe			;92cb
	adc a,b			;92cc
	adc a,b			;92cd
	ld a,(hl)		;92ce
	add a,(hl)		;92cf
	add a,(hl)		;92d0
	adc a,b			;92d1
	ld a,(hl)		;92d2
	add a,(hl)		;92d3
	add a,(hl)		;92d4
	adc a,b			;92d5
	ld a,(hl)		;92d6
	adc a,b			;92d7
	adc a,b			;92d8
	ld a,a			;92d9
	ld a,(hl)		;92da
	adc a,b			;92db
	add a,a			;92dc
	rst 30h			;92dd
	ld a,(hl)		;92de
	adc a,b			;92df
	add a,a			;92e0
	or 0eeh			;92e1
	xor 0e8h		;92e3
	adc a,b			;92e5
	adc a,b			;92e6
	adc a,b			;92e7
	adc a,b			;92e8
	adc a,b			;92e9
	adc a,b			;92ea
	adc a,b			;92eb
	adc a,b			;92ec
	adc a,b			;92ed
	adc a,b			;92ee
	adc a,b			;92ef
	adc a,b			;92f0
	adc a,b			;92f1
	adc a,b			;92f2
	ld a,a			;92f3
	rst 38h			;92f4
	adc a,b			;92f5
	rst 38h			;92f6
	ret m			;92f7
	adc a,a			;92f8
	adc a,b			;92f9
	adc a,(hl)		;92fa
	ret pe			;92fb
	ld a,a			;92fc
	adc a,a			;92fd
	ld a,(hl)		;92fe
	add a,a			;92ff
	ld a,a			;9300
	rst 38h			;9301
	rst 38h			;9302
	rst 30h			;9303
	or 06fh			;9304
	rst 38h			;9306
	or 06eh			;9307
	rst 28h			;9309
	rst 38h			;930a
	ld a,(hl)		;930b
	xor 08fh		;930c
	rst 38h			;930e
	ld h,a			;930f
	adc a,b			;9310
	adc a,a			;9311
	rst 38h			;9312
	ld h,a			;9313
	adc a,b			;9314
	adc a,a			;9315
	rst 38h			;9316
	ld h,a			;9317
	adc a,b			;9318
	adc a,a			;9319
	rst 38h			;931a
	ld h,a			;931b
	adc a,b			;931c
	adc a,a			;931d
	rst 38h			;931e
	ld h,a			;931f
	adc a,b			;9320
	rst 38h			;9321
	rst 38h			;9322
	ret m			;9323
	adc a,(hl)		;9324
	xor 0f8h		;9325
	xor 0eeh		;9327
	ret pe			;9329
	rst 38h			;932a
	cp 0e8h			;932b
	adc a,b			;932d
	ld l,a			;932e
	rst 38h			;932f
	ret pe			;9330
	adc a,b			;9331
	ld a,a			;9332
	ld l,a			;9333
	ret pe			;9334
	adc a,b			;9335
	ld a,a			;9336
	ld a,a			;9337
	ret pe			;9338
	adc a,b			;9339
	ld a,a			;933a
	ld a,a			;933b
	ret pe			;933c
	ld (hl),a		;933d
	ld a,a			;933e
	ld l,a			;933f
	ld (hl),a		;9340
	rst 38h			;9341
	ret pe			;9342
	rst 38h			;9343
	nop			;9344
	nop			;9345
	adc a,b			;9346
	ld a,a			;9347
	nop			;9348
	nop			;9349
	adc a,b			;934a
	ld a,a			;934b
	nop			;934c
	nop			;934d
	adc a,b			;934e
	ld a,a			;934f
	nop			;9350
	nop			;9351
	add a,a			;9352
	rst 38h			;9353
	nop			;9354
	nop			;9355
	ld a,a			;9356
	ret p			;9357
	nop			;9358
	nop			;9359
	rst 38h			;935a
	rst 38h			;935b
	nop			;935c
	nop			;935d
	rst 30h			;935e
	rst 38h			;935f
	nop			;9360
	nop			;9361
	nop			;9362
	or 0ffh			;9363
	rst 38h			;9365
	nop			;9366
	rst 30h			;9367
	ld h,(hl)		;9368
	ld h,(hl)		;9369
	nop			;936a
	rst 30h			;936b
	ld h,(hl)		;936c
	ld h,(hl)		;936d
	nop			;936e
	rst 30h			;936f
	ld h,(hl)		;9370
	ld h,(hl)		;9371
	nop			;9372
	rst 30h			;9373
	ld h,(hl)		;9374
	ld h,(hl)		;9375
	nop			;9376
	rst 30h			;9377
	ld h,(hl)		;9378
	ld h,(hl)		;9379
	nop			;937a
	rst 30h			;937b
	ld h,(hl)		;937c
	ld h,(hl)		;937d
	nop			;937e
	rst 30h			;937f
	ld h,(hl)		;9380
	ld h,(hl)		;9381
	ld h,(hl)		;9382
	ld (hl),a		;9383
	ld h,(hl)		;9384
	rst 38h			;9385
	ld (hl),a		;9386
	adc a,b			;9387
	halt			;9388
	rst 30h			;9389
	ld (hl),a		;938a
	adc a,b			;938b
	halt			;938c
	or 077h			;938d
	adc a,b			;938f
	halt			;9390
	or 077h			;9391
	adc a,b			;9393
	halt			;9394
	or 077h			;9395
	adc a,b			;9397
	halt			;9398
	or 077h			;9399
	adc a,b			;939b
	halt			;939c
	or 077h			;939d
	adc a,b			;939f
	halt			;93a0
	or 067h			;93a1
	add a,a			;93a3
	add a,a			;93a4
	or 086h			;93a5
	adc a,(hl)		;93a7
	ret pe			;93a8
	or 076h			;93a9
	adc a,b			;93ab
	rst 20h			;93ac
	or 07fh			;93ad
	ret m			;93af
	rst 20h			;93b0
	or 076h			;93b1
	ld l,b			;93b3
	rst 20h			;93b4
	or 078h			;93b5
	adc a,b			;93b7
	rst 20h			;93b8
	or 078h			;93b9
	adc a,b			;93bb
	rst 20h			;93bc
	or 078h			;93bd
	adc a,b			;93bf
	ret pe			;93c0
	or 07eh			;93c1
	ld a,(hl)		;93c3
	add a,(hl)		;93c4
	or 07eh			;93c5
	rst 38h			;93c7
	add a,(hl)		;93c8
	or 078h			;93c9
	adc a,b			;93cb
	add a,(hl)		;93cc
	or 07eh			;93cd
	adc a,b			;93cf
	add a,(hl)		;93d0
	rst 38h			;93d1
	ld a,(hl)		;93d2
	adc a,b			;93d3
	add a,(hl)		;93d4
	or 078h			;93d5
	adc a,b			;93d7
	add a,(hl)		;93d8
	or 078h			;93d9
	adc a,b			;93db
	add a,(hl)		;93dc
	rst 38h			;93dd
	ld a,b			;93de
	adc a,b			;93df
	add a,(hl)		;93e0
	ld h,(hl)		;93e1
	ld a,(hl)		;93e2
	add a,a			;93e3
	ld a,a			;93e4
	ret m			;93e5
	ld a,(hl)		;93e6
	add a,a			;93e7
	rst 38h			;93e8
	ld h,(hl)		;93e9
	ld a,(hl)		;93ea
	rst 38h			;93eb
	ld a,a			;93ec
	adc a,(hl)		;93ed
	rst 38h			;93ee
	add a,a			;93ef
	ld a,a			;93f0
	halt			;93f1
	ld a,(hl)		;93f2
	adc a,a			;93f3
	rst 38h			;93f4
	rst 38h			;93f5
	ld a,a			;93f6
	rst 38h			;93f7
	ld l,a			;93f8
	rst 38h			;93f9
	rst 38h			;93fa
	ld h,(hl)		;93fb
	adc a,a			;93fc
	rst 30h			;93fd
	ld h,(hl)		;93fe
	adc a,b			;93ff
	adc a,a			;9400
	rst 30h			;9401
	rst 28h			;9402
	ld h,a			;9403
	adc a,a			;9404
	rst 38h			;9405
	ld l,a			;9406
	rst 38h			;9407
	rst 38h			;9408
	rst 38h			;9409
	xor 0ffh		;940a
	adc a,b			;940c
	adc a,a			;940d
	ld h,(hl)		;940e
	cp 0eeh			;940f
	or 0ffh			;9411
	cp 0efh			;9413
	ld h,a			;9415
	rst 38h			;9416
	adc a,b			;9417
	adc a,a			;9418
	ld a,b			;9419
	ld a,a			;941a
	adc a,b			;941b
	rst 30h			;941c
	adc a,b			;941d
	rst 38h			;941e
	adc a,b			;941f
	rst 30h			;9420
	adc a,b			;9421
	ld l,a			;9422
	rst 30h			;9423
	rst 38h			;9424
	rst 38h			;9425
	rst 38h			;9426
	rst 38h			;9427
	rst 38h			;9428
	ld (hl),a		;9429
	rst 38h			;942a
	rst 38h			;942b
	rst 30h			;942c
	ld h,(hl)		;942d
	ld a,a			;942e
	rst 30h			;942f
	halt			;9430
	rst 38h			;9431
	add a,a			;9432
	or 06fh			;9433
	rst 30h			;9435
	adc a,b			;9436
	rst 38h			;9437
	rst 38h			;9438
	ld a,b			;9439
	adc a,b			;943a
	adc a,a			;943b
	rst 30h			;943c
	adc a,b			;943d
	xor 08fh		;943e
	ld a,(hl)		;9440
	xor 076h		;9441
	rst 38h			;9443
	rst 38h			;9444
	rst 38h			;9445
	ld l,a			;9446
	or 088h			;9447
	adc a,(hl)		;9449
	rst 38h			;944a
	ld a,b			;944b
	adc a,b			;944c
	xor 0f7h		;944d
	ld (hl),a		;944f
	ld (hl),a		;9450
	ld (hl),a		;9451
	ld a,a			;9452
	rst 38h			;9453
	rst 38h			;9454
	rst 38h			;9455
	ld (hl),a		;9456
	ld (hl),a		;9457
	ld (hl),a		;9458
	ld (hl),a		;9459
	adc a,b			;945a
	adc a,b			;945b
	adc a,b			;945c
	adc a,(hl)		;945d
	xor 0eeh		;945e
	xor 0eeh		;9460
	rst 38h			;9462
	nop			;9463
	nop			;9464
	nop			;9465
	rst 20h			;9466
	rst 38h			;9467
	nop			;9468
	nop			;9469
	halt			;946a
	ret m			;946b
	ret p			;946c
	nop			;946d
	ld l,a			;946e
	adc a,(hl)		;946f
	rst 28h			;9470
	nop			;9471
	rst 30h			;9472
	xor 088h		;9473
	ret p			;9475
	adc a,(hl)		;9476
	ld a,b			;9477
	add a,a			;9478
	ret p			;9479
	xor 0e7h		;947a
	add a,a			;947c
	ret p			;947d
	xor 088h		;947e
	ld a,a			;9480
	nop			;9481
	nop			;9482
	rst 30h			;9483
	ld h,(hl)		;9484
	ld h,(hl)		;9485
	nop			;9486
	rst 30h			;9487
	ld h,(hl)		;9488
	ld h,(hl)		;9489
	nop			;948a
	rst 30h			;948b
	ld h,(hl)		;948c
	ld h,(hl)		;948d
	nop			;948e
	rst 30h			;948f
	ld h,(hl)		;9490
	ld h,(hl)		;9491
	nop			;9492
	rst 30h			;9493
	ld h,(hl)		;9494
	ld h,(hl)		;9495
	nop			;9496
	rst 30h			;9497
	ld h,(hl)		;9498
	ld h,(hl)		;9499
	nop			;949a
	rst 30h			;949b
	ld h,(hl)		;949c
	ld h,(hl)		;949d
	nop			;949e
	rst 30h			;949f
	ld h,(hl)		;94a0
	ld h,(hl)		;94a1
	ld (hl),a		;94a2
	adc a,b			;94a3
	halt			;94a4
	rst 38h			;94a5
	ld (hl),a		;94a6
	adc a,b			;94a7
	halt			;94a8
	or 077h			;94a9
	adc a,b			;94ab
	halt			;94ac
	or 077h			;94ad
	adc a,b			;94af
	halt			;94b0
	or 077h			;94b1
	adc a,b			;94b3
	halt			;94b4
	or 077h			;94b5
	adc a,b			;94b7
	halt			;94b8
	or 077h			;94b9
	adc a,b			;94bb
	halt			;94bc
	or 077h			;94bd
	adc a,b			;94bf
	halt			;94c0
	or 067h			;94c1
	halt			;94c3
	ld (hl),a		;94c4
	or 078h			;94c5
	ld a,(hl)		;94c7
	rst 20h			;94c8
	or 078h			;94c9
	ld a,b			;94cb
	rst 20h			;94cc
	or 078h			;94cd
	ld a,b			;94cf
	rst 20h			;94d0
	or 078h			;94d1
	ld a,b			;94d3
	rst 20h			;94d4
	or 078h			;94d5
	ld a,b			;94d7
	rst 20h			;94d8
	or 078h			;94d9
	ld a,b			;94db
	rst 20h			;94dc
	or 078h			;94dd
	ld a,b			;94df
	rst 20h			;94e0
	or 078h			;94e1
	ld a,(hl)		;94e3
	add a,(hl)		;94e4
	ld h,(hl)		;94e5
	ld a,b			;94e6
	rst 38h			;94e7
	adc a,b			;94e8
	adc a,b			;94e9
	ld a,b			;94ea
	adc a,b			;94eb
	add a,(hl)		;94ec
	adc a,b			;94ed
	ld a,b			;94ee
	add a,(hl)		;94ef
	add a,(hl)		;94f0
	adc a,b			;94f1
	ld a,b			;94f2
	add a,(hl)		;94f3
	adc a,b			;94f4
	adc a,b			;94f5
	ld a,b			;94f6
	adc a,b			;94f7
	adc a,b			;94f8
	ld (hl),a		;94f9
	ld a,b			;94fa
	adc a,b			;94fb
	ld (hl),a		;94fc
	rst 38h			;94fd
	ld a,b			;94fe
	ld (hl),a		;94ff
	rst 38h			;9500
	xor 088h		;9501
	adc a,b			;9503
	adc a,a			;9504
	rst 38h			;9505
	adc a,b			;9506
	adc a,b			;9507
	adc a,a			;9508
	ret m			;9509
	adc a,b			;950a
	add a,a			;950b
	ld a,a			;950c
	rst 20h			;950d
	add a,a			;950e
	ld a,a			;950f
	cp 087h			;9510
	ld a,a			;9512
	rst 30h			;9513
	ret pe			;9514
	add a,a			;9515
	cp 0f6h			;9516
	adc a,b			;9518
	adc a,a			;9519
	ret pe			;951a
	or 088h			;951b
	adc a,a			;951d
	adc a,b			;951e
	or 088h			;951f
	rst 38h			;9521
	rst 38h			;9522
	adc a,b			;9523
	rst 30h			;9524
	adc a,b			;9525
	rst 38h			;9526
	adc a,b			;9527
	rst 30h			;9528
	adc a,b			;9529
	rst 38h			;952a
	adc a,b			;952b
	rst 30h			;952c
	ld a,b			;952d
	rst 38h			;952e
	ld a,b			;952f
	or 077h			;9530
	rst 38h			;9532
	ld (hl),a		;9533
	or 067h			;9534
	rst 38h			;9536
	ld h,a			;9537
	ld l,a			;9538
	ld h,a			;9539
	rst 38h			;953a
	rst 30h			;953b
	ld a,a			;953c
	ld h,(hl)		;953d
	rst 38h			;953e
	or 077h			;953f
	or 0e8h			;9541
	adc a,a			;9543
	ld (hl),a		;9544
	ld (hl),a		;9545
	adc a,b			;9546
	adc a,a			;9547
	rst 38h			;9548
	rst 38h			;9549
	adc a,b			;954a
	ld a,a			;954b
	rst 38h			;954c
	rst 38h			;954d
	add a,a			;954e
	ld a,a			;954f
	rst 30h			;9550
	ld (hl),a		;9551
	ld (hl),a		;9552
	ld l,a			;9553
	ld h,a			;9554
	adc a,b			;9555
	halt			;9556
	rst 38h			;9557
	rst 38h			;9558
	rst 38h			;9559
	ld h,(hl)		;955a
	rst 38h			;955b
	or 066h			;955c
	ld l,a			;955e
	cp 087h			;955f
	ld (hl),a		;9561
	ld (hl),a		;9562
	ld (hl),a		;9563
	ld (hl),a		;9564
	ld (hl),a		;9565
	rst 38h			;9566
	rst 38h			;9567
	rst 38h			;9568
	rst 38h			;9569
	rst 38h			;956a
	rst 38h			;956b
	rst 38h			;956c
	rst 38h			;956d
	ld (hl),a		;956e
	ld (hl),a		;956f
	ld (hl),a		;9570
	rst 38h			;9571
	adc a,b			;9572
	adc a,b			;9573
	adc a,b			;9574
	halt			;9575
	rst 38h			;9576
	rst 38h			;9577
	rst 38h			;9578
	rst 38h			;9579
	ret p			;957a
	nop			;957b
	nop			;957c
	nop			;957d
	cp a			;957e
	nop			;957f
	nop			;9580
	nop			;9581
	ret pe			;9582
	add a,a			;9583
	ret p			;9584
	nop			;9585
	ld a,b			;9586
	halt			;9587
	ret p			;9588
	nop			;9589
	rst 30h			;958a
	ld l,a			;958b
	nop			;958c
	nop			;958d
	halt			;958e
	ret p			;958f
	nop			;9590
	nop			;9591
	rst 38h			;9592
	nop			;9593
	nop			;9594
	nop			;9595
	nop			;9596
	nop			;9597
	nop			;9598
	nop			;9599
	nop			;959a
	nop			;959b
	nop			;959c
	nop			;959d
	nop			;959e
	nop			;959f
	nop			;95a0
	nop			;95a1
	nop			;95a2
	or 0ffh			;95a3
	rst 38h			;95a5
	nop			;95a6
	rst 30h			;95a7
	ld h,(hl)		;95a8
	ld h,(hl)		;95a9
	nop			;95aa
	rst 30h			;95ab
	ld h,(hl)		;95ac
	ld h,(hl)		;95ad
	nop			;95ae
	or 0ffh			;95af
	rst 38h			;95b1
	nop			;95b2
	or 076h			;95b3
	ld h,(hl)		;95b5
	nop			;95b6
	or 076h			;95b7
	ld h,(hl)		;95b9
	nop			;95ba
	or 076h			;95bb
	ld h,(hl)		;95bd
	nop			;95be
	or 076h			;95bf
	ld h,(hl)		;95c1
	ld h,(hl)		;95c2
	ld (hl),a		;95c3
	ld h,(hl)		;95c4
	or 077h			;95c5
	adc a,b			;95c7
	halt			;95c8
	or 077h			;95c9
	adc a,b			;95cb
	halt			;95cc
	or 066h			;95cd
	ld l,b			;95cf
	halt			;95d0
	rst 38h			;95d1
	ld (hl),a		;95d2
	ld l,b			;95d3
	halt			;95d4
	or 077h			;95d5
	ld l,b			;95d7
	halt			;95d8
	or 077h			;95d9
	ld l,b			;95db
	halt			;95dc
	rst 38h			;95dd
	ld (hl),a		;95de
	ld l,b			;95df
	halt			;95e0
	rst 30h			;95e1
	ld a,b			;95e2
	ld a,b			;95e3
	rst 20h			;95e4
	or 078h			;95e5
	ld a,b			;95e7
	rst 20h			;95e8
	rst 38h			;95e9
	ld a,b			;95ea
	ld a,b			;95eb
	add a,(hl)		;95ec
	rst 30h			;95ed
	ld h,a			;95ee
	ld h,(hl)		;95ef
	ld (hl),a		;95f0
	or 078h			;95f1
	adc a,b			;95f3
	rst 20h			;95f4
	or 076h			;95f5
	ret pe			;95f7
	rst 20h			;95f8
	or 067h			;95f9
	add a,a			;95fb
	add a,(hl)		;95fc
	or 087h			;95fd
	adc a,(hl)		;95ff
	ret pe			;9600
	or 067h			;9601
	rst 38h			;9603
	adc a,(hl)		;9604
	adc a,b			;9605
	rst 38h			;9606
	adc a,b			;9607
	ret pe			;9608
	adc a,b			;9609
	adc a,b			;960a
	ld (hl),a		;960b
	ret pe			;960c
	adc a,b			;960d
	ld (hl),a		;960e
	ld (hl),a		;960f
	ret pe			;9610
	adc a,b			;9611
	ld (hl),a		;9612
	ld (hl),a		;9613
	adc a,b			;9614
	adc a,b			;9615
	ld (hl),a		;9616
	ld (hl),a		;9617
	ret pe			;9618
	adc a,b			;9619
	ld (hl),a		;961a
	ld (hl),a		;961b
	adc a,b			;961c
	ld (hl),a		;961d
	ld (hl),a		;961e
	ld (hl),a		;961f
	add a,a			;9620
	rst 38h			;9621
	adc a,b			;9622
	or 087h			;9623
	rst 38h			;9625
	adc a,b			;9626
	or 07fh			;9627
	rst 38h			;9629
	adc a,b			;962a
	rst 38h			;962b
	or 0f6h			;962c
	adc a,b			;962e
	rst 38h			;962f
	ld h,a			;9630
	rst 38h			;9631
	add a,a			;9632
	or 077h			;9633
	rst 30h			;9635
	ld a,a			;9636
	ld h,a			;9637
	ld a,a			;9638
	ld h,(hl)		;9639
	or 078h			;963a
	ld a,a			;963c
	ld h,(hl)		;963d
	ld h,a			;963e
	add a,a			;963f
	rst 38h			;9640
	or (hl)			;9641
	rst 38h			;9642
	rst 38h			;9643
	ld h,(hl)		;9644
	ld l,a			;9645
	ld l,a			;9646
	rst 38h			;9647
	rst 38h			;9648
	rst 38h			;9649
	rst 30h			;964a
	ld a,a			;964b
	rst 38h			;964c
	rst 38h			;964d
	ret pe			;964e
	ld (hl),a		;964f
	or (hl)			;9650
	ret p			;9651
	adc a,(hl)		;9652
	add a,a			;9653
	or a			;9654
	ret p			;9655
	ld a,b			;9656
	ret pe			;9657
	rst 0			;9658
	ret p			;9659
	ld h,a			;965a
	adc a,h			;965b
	adc a,b			;965c
	ret p			;965d
	ld h,(hl)		;965e
	ret z			;965f
	rst 28h			;9660
	nop			;9661
	rst 38h			;9662
	rst 30h			;9663
	ret pe			;9664
	ld a,e			;9665
	nop			;9666
	or 07eh			;9667
	rst 0			;9669
	nop			;966a
	rrca			;966b
	cp h			;966c
	call pe,00000h		;966d
	ei			;9670
	adc a,000h		;9671
	nop			;9673
	rrca			;9674
	ld h,a			;9675
	nop			;9676
	nop			;9677
	nop			;9678
	rst 38h			;9679
	nop			;967a
	nop			;967b
	ex af,af'		;967c
	ld h,b			;967d
	nop			;967e
	nop			;967f
	add a,(hl)		;9680
	nop			;9681
	ld a,a			;9682
	nop			;9683
	nop			;9684
	nop			;9685
	or a			;9686
	ret p			;9687
	nop			;9688
	nop			;9689
	ld (hl),a		;968a
	ret p			;968b
	nop			;968c
	nop			;968d
	adc a,a			;968e
	nop			;968f
	nop			;9690
	nop			;9691
	ret p			;9692
	nop			;9693
	nop			;9694
	nop			;9695
	nop			;9696
	nop			;9697
	nop			;9698
	nop			;9699
	nop			;969a
	nop			;969b
	nop			;969c
	nop			;969d
	nop			;969e
	nop			;969f
	nop			;96a0
	nop			;96a1
	nop			;96a2
	or 076h			;96a3
	ld h,(hl)		;96a5
	nop			;96a6
	or 076h			;96a7
	ld h,(hl)		;96a9
	nop			;96aa
	or 076h			;96ab
	ld h,(hl)		;96ad
	nop			;96ae
	or 076h			;96af
	ld h,(hl)		;96b1
	nop			;96b2
	rst 38h			;96b3
	ld l,a			;96b4
	rst 38h			;96b5
	nop			;96b6
	adc a,a			;96b7
	rst 38h			;96b8
	rst 38h			;96b9
	ex af,af'		;96ba
	ld a,a			;96bb
	rst 38h			;96bc
	rst 38h			;96bd
	add a,a			;96be
	ld l,a			;96bf
	rst 30h			;96c0
	adc a,b			;96c1
	ld (hl),a		;96c2
	ld l,b			;96c3
	halt			;96c4
	or 077h			;96c5
	ld l,b			;96c7
	halt			;96c8
	or 077h			;96c9
	ld l,b			;96cb
	halt			;96cc
	or 077h			;96cd
	ld h,a			;96cf
	halt			;96d0
	or 066h			;96d1
	or 06fh			;96d3
	or 0ffh			;96d5
	rst 38h			;96d7
	rst 30h			;96d8
	add a,(hl)		;96d9
	rst 38h			;96da
	or 0f7h			;96db
	rst 28h			;96dd
	xor 0e8h		;96de
	rst 30h			;96e0
	rst 28h			;96e1
	halt			;96e2
	adc a,b			;96e3
	rst 20h			;96e4
	or 07fh			;96e5
	ret m			;96e7
	rst 20h			;96e8
	rst 38h			;96e9
	halt			;96ea
	ld l,b			;96eb
	rst 20h			;96ec
	rst 38h			;96ed
	ld a,b			;96ee
	adc a,b			;96ef
	ld (hl),a		;96f0
	rst 38h			;96f1
	ld (hl),a		;96f2
	ld (hl),a		;96f3
	rst 38h			;96f4
	rst 38h			;96f5
	ld l,a			;96f6
	rst 38h			;96f7
	rst 38h			;96f8
	or 0ffh			;96f9
	rst 38h			;96fb
	ld l,a			;96fc
	rst 30h			;96fd
	rst 38h			;96fe
	ld h,a			;96ff
	ld a,a			;9700
	ret m			;9701
	ld (hl),a		;9702
	ld h,(hl)		;9703
	rst 38h			;9704
	or 066h			;9705
	rst 38h			;9707
	rst 38h			;9708
	rst 30h			;9709
	rst 38h			;970a
	or 0ffh			;970b
	ld a,b			;970d
	rst 38h			;970e
	ld h,(hl)		;970f
	ld a,a			;9710
	adc a,b			;9711
	ld h,(hl)		;9712
	ld (hl),a		;9713
	adc a,a			;9714
	ld (hl),a		;9715
	ld (hl),a		;9716
	adc a,b			;9717
	adc a,a			;9718
	ld (hl),a		;9719
	adc a,b			;971a
	adc a,b			;971b
	ld h,(hl)		;971c
	ld a,a			;971d
	adc a,b			;971e
	add a,a			;971f
	or 0ffh			;9720
	ld a,b			;9722
	add a,a			;9723
	or 07bh			;9724
	adc a,b			;9726
	ld a,a			;9727
	rst 38h			;9728
	or 087h			;9729
	ld a,a			;972b
	ret p			;972c
	rst 38h			;972d
	ld (hl),a		;972e
	or 0f0h			;972f
	nop			;9731
	ld a,a			;9732
	add a,(hl)		;9733
	ret p			;9734
	nop			;9735
	rst 38h			;9736
	add a,(hl)		;9737
	ret p			;9738
	nop			;9739
	cp 086h			;973a
	ret p			;973c
	nop			;973d
	cp 086h			;973e
	ret p			;9740
	nop			;9741
	cp h			;9742
	ld a,b			;9743
	ld a,a			;9744
	nop			;9745
	ld h,(hl)		;9746
	ld a,a			;9747
	ret p			;9748
	nop			;9749
	rst 38h			;974a
	ret p			;974b
	nop			;974c
	nop			;974d
	nop			;974e
	nop			;974f
	nop			;9750
	nop			;9751
	nop			;9752
	nop			;9753
	nop			;9754
	nop			;9755
	nop			;9756
	nop			;9757
	nop			;9758
	nop			;9759
	nop			;975a
	nop			;975b
	nop			;975c
	nop			;975d
	nop			;975e
	nop			;975f
	nop			;9760
	nop			;9761
	nop			;9762
	sub b			;9763
	ld h,b			;9764
	nop			;9765
	nop			;9766
	nop			;9767
	add hl,bc		;9768
	nop			;9769
	nop			;976a
	nop			;976b
	nop			;976c
	nop			;976d
	nop			;976e
	nop			;976f
	nop			;9770
	nop			;9771
	nop			;9772
	nop			;9773
	nop			;9774
	nop			;9775
	nop			;9776
	nop			;9777
	nop			;9778
	nop			;9779
	nop			;977a
	nop			;977b
	nop			;977c
	nop			;977d
	nop			;977e
	nop			;977f
	nop			;9780
	nop			;9781
	nop			;9782
	nop			;9783
	nop			;9784
	ex af,af'		;9785
	nop			;9786
	nop			;9787
	nop			;9788
	add a,a			;9789
	nop			;978a
	nop			;978b
	sbc a,c			;978c
	ld l,a			;978d
	nop			;978e
	nop			;978f
	sbc a,c			;9790
	rst 38h			;9791
	nop			;9792
	nop			;9793
	nop			;9794
	add hl,bc		;9795
	nop			;9796
	nop			;9797
	nop			;9798
	nop			;9799
	nop			;979a
	nop			;979b
	nop			;979c
	nop			;979d
	nop			;979e
	nop			;979f
	nop			;97a0
	nop			;97a1
	halt			;97a2
	ret p			;97a3
	inc c			;97a4
	rst 18h			;97a5
	rst 38h			;97a6
	nop			;97a7
	rrca			;97a8
	or 0f0h			;97a9
	nop			;97ab
	nop			;97ac
	rst 38h			;97ad
	nop			;97ae
	nop			;97af
	nop			;97b0
	rst 38h			;97b1
	nop			;97b2
	nop			;97b3
	nop			;97b4
	rrca			;97b5
	nop			;97b6
	nop			;97b7
	nop			;97b8
	rrca			;97b9
	nop			;97ba
	nop			;97bb
	nop			;97bc
	nop			;97bd
	nop			;97be
	nop			;97bf
	nop			;97c0
	nop			;97c1
	call m,0f7d6h		;97c2
	rst 28h			;97c5
	ld h,(hl)		;97c6
	ld h,(hl)		;97c7
	rst 30h			;97c8
	rst 28h			;97c9
	rst 38h			;97ca
	rst 38h			;97cb
	rst 30h			;97cc
	rst 28h			;97cd
	adc a,(hl)		;97ce
	ret pe			;97cf
	or 079h			;97d0
	ld h,(hl)		;97d2
	ld h,(hl)		;97d3
	sbc a,a			;97d4
	ld sp,hl		;97d5
	ld l,a			;97d6
	rst 38h			;97d7
	or 06fh			;97d8
	rst 30h			;97da
	add a,a			;97db
	halt			;97dc
	sbc a,c			;97dd
	rrca			;97de
	ld h,(hl)		;97df
	rst 38h			;97e0
	ld h,(hl)		;97e1
	ld a,a			;97e2
	ld a,b			;97e3
	ld a,a			;97e4
	ld a,b			;97e5
	ld l,a			;97e6
	adc a,b			;97e7
	rst 38h			;97e8
	ld (hl),a		;97e9
	rst 30h			;97ea
	add a,a			;97eb
	rst 38h			;97ec
	halt			;97ed
	sbc a,b			;97ee
	ld a,a			;97ef
	or 066h			;97f0
	sub a			;97f2
	ld a,a			;97f3
	or 06fh			;97f4
	ld (hl),a		;97f6
	rst 38h			;97f7
	ld l,a			;97f8
	rst 38h			;97f9
	ld l,a			;97fa
	rst 38h			;97fb
	rst 38h			;97fc
	or 0ffh			;97fd
	rst 38h			;97ff
	or 077h			;9800
	add a,a			;9802
	halt			;9803
	rst 38h			;9804
	rst 38h			;9805
	halt			;9806
	ld l,a			;9807
	rst 38h			;9808
	ret p			;9809
	ld h,(hl)		;980a
	rst 38h			;980b
	rst 38h			;980c
	nop			;980d
	ld l,a			;980e
	or 0f0h			;980f
	nop			;9811
	rst 38h			;9812
	ld l,a			;9813
	nop			;9814
	nop			;9815
	or 0f0h			;9816
	nop			;9818
	nop			;9819
	ld a,a			;981a
	nop			;981b
	nop			;981c
	nop			;981d
	ret p			;981e
	nop			;981f
	nop			;9820
	nop			;9821
	ret m			;9822
	ld a,a			;9823
	ret p			;9824
	nop			;9825
	rrca			;9826
	rst 38h			;9827
	nop			;9828
	nop			;9829
	nop			;982a
	nop			;982b
	nop			;982c
	nop			;982d
	nop			;982e
	nop			;982f
	nop			;9830
	nop			;9831
	nop			;9832
	nop			;9833
	nop			;9834
	nop			;9835
	nop			;9836
	nop			;9837
	nop			;9838
	nop			;9839
	nop			;983a
	nop			;983b
	nop			;983c
	nop			;983d
	nop			;983e
	nop			;983f
	nop			;9840
	nop			;9841
	nop			;9842
	nop			;9843
	nop			;9844
	nop			;9845
	nop			;9846
	nop			;9847
	nop			;9848
	nop			;9849
	nop			;984a
	nop			;984b
	nop			;984c
	nop			;984d
	nop			;984e
	nop			;984f
	nop			;9850
	ex af,af'		;9851
	nop			;9852
	nop			;9853
	nop			;9854
	ld b,000h		;9855
	nop			;9857
	sbc a,a			;9858
	nop			;9859
	nop			;985a
	nop			;985b
	nop			;985c
	nop			;985d
	nop			;985e
	nop			;985f
	nop			;9860
	nop			;9861
	nop			;9862
	rst 38h			;9863
sub_9864h:
	rst 38h			;9864
	rst 38h			;9865
	ex af,af'		;9866
	ld l,a			;9867
	rst 38h			;9868
	ld h,(hl)		;9869
	add a,(hl)		;986a
	nop			;986b
	nop			;986c
	rst 30h			;986d
	ld h,b			;986e
	nop			;986f
	nop			;9870
	rrca			;9871
	nop			;9872
	nop			;9873
	nop			;9874
	rrca			;9875
	nop			;9876
	nop			;9877
	nop			;9878
	ret m			;9879
	nop			;987a
	nop			;987b
	sub b			;987c
	add a,b			;987d
	nop			;987e
	nop			;987f
	nop			;9880
	add hl,bc		;9881
	rst 38h			;9882
	ld h,(hl)		;9883
	rst 30h			;9884
	rst 38h			;9885
	ld (hl),a		;9886
	adc a,b			;9887
	rst 38h			;9888
	nop			;9889
	adc a,(hl)		;988a
	adc a,a			;988b
	ret p			;988c
	nop			;988d
	rst 38h			;988e
	ret p			;988f
	nop			;9890
	nop			;9891
	add a,(hl)		;9892
	ret p			;9893
	nop			;9894
	nop			;9895
	ld l,a			;9896
	nop			;9897
	nop			;9898
	nop			;9899
	sub b			;989a
	nop			;989b
	nop			;989c
	nop			;989d
	nop			;989e
	nop			;989f
	nop			;98a0
	nop			;98a1
	nop			;98a2
	nop			;98a3
	nop			;98a4
	nop			;98a5
	nop			;98a6
	nop			;98a7
	nop			;98a8
	nop			;98a9
	nop			;98aa
	nop			;98ab
	nop			;98ac
	nop			;98ad
	nop			;98ae
	nop			;98af
	nop			;98b0
	nop			;98b1
	nop			;98b2
	nop			;98b3
	nop			;98b4
	nop			;98b5
	nop			;98b6
	nop			;98b7
	nop			;98b8
	nop			;98b9
	nop			;98ba
	nop			;98bb
	rst 38h			;98bc
	rst 38h			;98bd
	nop			;98be
	rrca			;98bf
	ret pe			;98c0
	cp 000h			;98c1
	nop			;98c3
	nop			;98c4
	nop			;98c5
	nop			;98c6
	nop			;98c7
	nop			;98c8
	nop			;98c9
	nop			;98ca
	nop			;98cb
	nop			;98cc
	nop			;98cd
	nop			;98ce
	nop			;98cf
	nop			;98d0
	nop			;98d1
	nop			;98d2
	nop			;98d3
	nop			;98d4
	nop			;98d5
	nop			;98d6
	nop			;98d7
	nop			;98d8
	nop			;98d9
	rst 38h			;98da
	rst 38h			;98db
	rst 38h			;98dc
	rst 38h			;98dd
	xor 0eeh		;98de
	xor 08eh		;98e0
	nop			;98e2
	nop			;98e3
	nop			;98e4
	nop			;98e5
	nop			;98e6
	nop			;98e7
	nop			;98e8
	nop			;98e9
	nop			;98ea
	nop			;98eb
	nop			;98ec
	nop			;98ed
	nop			;98ee
	nop			;98ef
	nop			;98f0
	nop			;98f1
	nop			;98f2
	nop			;98f3
	nop			;98f4
	nop			;98f5
	nop			;98f6
	nop			;98f7
	nop			;98f8
	nop			;98f9
	rst 38h			;98fa
	nop			;98fb
	nop			;98fc
	nop			;98fd
	ret pe			;98fe
	rst 38h			;98ff
	rst 38h			;9900
	nop			;9901
	nop			;9902
	nop			;9903
	nop			;9904
	nop			;9905
	nop			;9906
	nop			;9907
	nop			;9908
	nop			;9909
	nop			;990a
	nop			;990b
	nop			;990c
	nop			;990d
	nop			;990e
	nop			;990f
	nop			;9910
	nop			;9911
	nop			;9912
	nop			;9913
	nop			;9914
	nop			;9915
	nop			;9916
	rst 38h			;9917
	rst 38h			;9918
	rst 38h			;9919
	nop			;991a
	rrca			;991b
	adc a,(hl)		;991c
	add a,a			;991d
	rrca			;991e
	rst 38h			;991f
	ld h,a			;9920
	or 000h			;9921
	nop			;9923
	nop			;9924
	nop			;9925
	nop			;9926
	nop			;9927
	nop			;9928
	nop			;9929
	nop			;992a
	nop			;992b
	nop			;992c
	nop			;992d
	sub b			;992e
	nop			;992f
	nop			;9930
	nop			;9931
	nop			;9932
	nop			;9933
	nop			;9934
	nop			;9935
	ret p			;9936
	nop			;9937
	nop			;9938
	nop			;9939
	ld l,a			;993a
	ret p			;993b
	nop			;993c
	nop			;993d
	ld l,a			;993e
	ret p			;993f
	rst 38h			;9940
	ret p			;9941
	nop			;9942
	rrca			;9943
	rst 38h			;9944
	ret m			;9945
	nop			;9946
	rrca			;9947
	ld a,b			;9948
	ret m			;9949
	nop			;994a
	rrca			;994b
	ld a,b			;994c
	ret m			;994d
	nop			;994e
	rrca			;994f
	ld a,b			;9950
	rst 30h			;9951
	nop			;9952
	rrca			;9953
	ld h,a			;9954
	rst 38h			;9955
	nop			;9956
	rrca			;9957
	rst 38h			;9958
	rst 38h			;9959
	add hl,bc		;995a
	ex af,af'		;995b
	rst 38h			;995c
	halt			;995d
	nop			;995e
	ld sp,hl		;995f
	nop			;9960
	ld l,a			;9961
	add a,(hl)		;9962
	adc a,b			;9963
	adc a,b			;9964
	ld a,b			;9965
	rst 38h			;9966
	adc a,b			;9967
	adc a,b			;9968
	ld l,b			;9969
	add a,(hl)		;996a
	add a,a			;996b
	ld (hl),a		;996c
	ret m			;996d
	rst 38h			;996e
	ld a,a			;996f
	rst 38h			;9970
	or 0ffh			;9971
	rst 38h			;9973
	rst 38h			;9974
	rst 38h			;9975
	or 067h			;9976
	ld (hl),a		;9978
	ld h,(hl)		;9979
	rst 38h			;997a
	rst 38h			;997b
	rst 38h			;997c
	rst 38h			;997d
	nop			;997e
	nop			;997f
	add hl,bc		;9980
	nop			;9981
	adc a,b			;9982
	halt			;9983
	ret pe			;9984
	rst 38h			;9985
	ld l,a			;9986
	rst 38h			;9987
	add a,a			;9988
	rst 38h			;9989
	ret m			;998a
	ld l,a			;998b
	rst 38h			;998c
	rst 30h			;998d
	rst 38h			;998e
	rst 38h			;998f
	adc a,a			;9990
	ld a,b			;9991
	rst 38h			;9992
	rst 38h			;9993
	ld a,a			;9994
	ld a,b			;9995
	ld h,(hl)		;9996
	rst 38h			;9997
	ld l,a			;9998
	ld h,a			;9999
	rst 38h			;999a
	rst 38h			;999b
	rst 30h			;999c
	or 009h			;999d
	nop			;999f
	rst 38h			;99a0
	rst 38h			;99a1
	rst 30h			;99a2
	adc a,a			;99a3
	rst 38h			;99a4
	ret pe			;99a5
	rst 38h			;99a6
	halt			;99a7
	ld l,a			;99a8
	ld (hl),a		;99a9
	ld (hl),a		;99aa
	rst 38h			;99ab
	rst 38h			;99ac
	rst 38h			;99ad
	ret pe			;99ae
	ld a,a			;99af
	rst 38h			;99b0
	adc a,b			;99b1
	adc a,b			;99b2
	ld a,a			;99b3
	add a,a			;99b4
	rst 38h			;99b5
	ld (hl),a		;99b6
	rst 38h			;99b7
	rst 38h			;99b8
	ret pe			;99b9
	ld h,(hl)		;99ba
	rst 38h			;99bb
	add a,a			;99bc
	ld (hl),a		;99bd
	rst 38h			;99be
	rst 38h			;99bf
	rst 38h			;99c0
	rst 38h			;99c1
	adc a,b			;99c2
	adc a,a			;99c3
	adc a,b			;99c4
	adc a,a			;99c5
	ld (hl),a		;99c6
	ld a,a			;99c7
	xor 0efh		;99c8
	rst 38h			;99ca
	rst 38h			;99cb
	adc a,b			;99cc
	adc a,a			;99cd
	ld (hl),a		;99ce
	rst 38h			;99cf
	ld (hl),a		;99d0
	ld a,a			;99d1
	rst 38h			;99d2
	rst 38h			;99d3
	ld h,(hl)		;99d4
	ld l,a			;99d5
	adc a,b			;99d6
	ld a,a			;99d7
	rst 38h			;99d8
	ret p			;99d9
	ld (hl),a		;99da
	ld h,b			;99db
	nop			;99dc
	nop			;99dd
	rst 38h			;99de
	nop			;99df
	nop			;99e0
	nop			;99e1
	nop			;99e2
	nop			;99e3
	ld b,08fh		;99e4
	nop			;99e6
	nop			;99e7
	nop			;99e8
	rst 38h			;99e9
	nop			;99ea
	nop			;99eb
	nop			;99ec
	nop			;99ed
	nop			;99ee
	nop			;99ef
	nop			;99f0
	nop			;99f1
	nop			;99f2
	nop			;99f3
	nop			;99f4
	nop			;99f5
	nop			;99f6
	nop			;99f7
	nop			;99f8
	nop			;99f9
	nop			;99fa
	nop			;99fb
	nop			;99fc
	nop			;99fd
	nop			;99fe
	nop			;99ff
	nop			;9a00
	nop			;9a01
	ret p			;9a02
	nop			;9a03
	ret m			;9a04
	ld (hl),a		;9a05
	nop			;9a06
	nop			;9a07
	rrca			;9a08
	add a,a			;9a09
	nop			;9a0a
	nop			;9a0b
	nop			;9a0c
	rst 38h			;9a0d
	nop			;9a0e
	nop			;9a0f
	sub b			;9a10
	nop			;9a11
	nop			;9a12
	nop			;9a13
	nop			;9a14
	nop			;9a15
	nop			;9a16
	nop			;9a17
	nop			;9a18
	nop			;9a19
	nop			;9a1a
	nop			;9a1b
	nop			;9a1c
	nop			;9a1d
	nop			;9a1e
	nop			;9a1f
	nop			;9a20
	nop			;9a21
	nop			;9a22
	nop			;9a23
	nop			;9a24
	nop			;9a25
	nop			;9a26
	nop			;9a27
	nop			;9a28
	nop			;9a29
	nop			;9a2a
	nop			;9a2b
	rrca			;9a2c
	rst 38h			;9a2d
	nop			;9a2e
	nop			;9a2f
	rst 30h			;9a30
	ret pe			;9a31
	nop			;9a32
	nop			;9a33
	ret m			;9a34
	halt			;9a35
	nop			;9a36
	nop			;9a37
	rst 38h			;9a38
	rst 38h			;9a39
	nop			;9a3a
	nop			;9a3b
	ret m			;9a3c
	rst 20h			;9a3d
	nop			;9a3e
	nop			;9a3f
	rst 30h			;9a40
	add a,(hl)		;9a41
	nop			;9a42
	nop			;9a43
	nop			;9a44
	nop			;9a45
	nop			;9a46
	nop			;9a47
	nop			;9a48
	nop			;9a49
	rst 38h			;9a4a
	rst 38h			;9a4b
	rst 38h			;9a4c
	rst 38h			;9a4d
	ret m			;9a4e
	xor 0eeh		;9a4f
	xor 0ffh		;9a51
	rst 38h			;9a53
	rst 38h			;9a54
	rst 38h			;9a55
	rst 30h			;9a56
	ld (hl),a		;9a57
	ld (hl),a		;9a58
	ld (hl),a		;9a59
	cp 0eeh			;9a5a
	xor 0eeh		;9a5c
	ret m			;9a5e
	add a,a			;9a5f
	adc a,b			;9a60
	adc a,b			;9a61
	nop			;9a62
	nop			;9a63
	nop			;9a64
	nop			;9a65
	nop			;9a66
	nop			;9a67
	nop			;9a68
	nop			;9a69
	rst 38h			;9a6a
	rst 38h			;9a6b
	rst 38h			;9a6c
	rst 38h			;9a6d
	xor 0eeh		;9a6e
	xor 0e8h		;9a70
	rst 38h			;9a72
	rst 38h			;9a73
	rst 38h			;9a74
	rst 38h			;9a75
	ld (hl),a		;9a76
	ld (hl),a		;9a77
	ld (hl),a		;9a78
	ld (hl),a		;9a79
	xor 0eeh		;9a7a
	xor 0eeh		;9a7c
	adc a,b			;9a7e
	adc a,b			;9a7f
	adc a,b			;9a80
	adc a,a			;9a81
	nop			;9a82
	nop			;9a83
	nop			;9a84
	nop			;9a85
	nop			;9a86
	nop			;9a87
	nop			;9a88
	nop			;9a89
	ret p			;9a8a
	nop			;9a8b
	nop			;9a8c
	nop			;9a8d
	adc a,a			;9a8e
	rst 38h			;9a8f
	rst 38h			;9a90
	ret p			;9a91
	rst 38h			;9a92
	ret m			;9a93
	adc a,b			;9a94
	ld a,a			;9a95
	ld (hl),a		;9a96
	ld l,a			;9a97
	rst 30h			;9a98
	adc a,a			;9a99
	xor 07fh		;9a9a
	rst 38h			;9a9c
	rst 38h			;9a9d
	rst 38h			;9a9e
	rst 38h			;9a9f
	cp 0efh			;9aa0
	nop			;9aa2
	nop			;9aa3
	nop			;9aa4
	nop			;9aa5
	nop			;9aa6
	nop			;9aa7
	nop			;9aa8
	nop			;9aa9
	nop			;9aaa
	nop			;9aab
	nop			;9aac
	nop			;9aad
	nop			;9aae
	nop			;9aaf
	nop			;9ab0
	nop			;9ab1
	rst 38h			;9ab2
	rst 38h			;9ab3
	nop			;9ab4
	nop			;9ab5
	adc a,(hl)		;9ab6
	add a,a			;9ab7
	rst 38h			;9ab8
	rst 38h			;9ab9
	rst 38h			;9aba
	rst 38h			;9abb
	rst 38h			;9abc
	ret pe			;9abd
	rst 38h			;9abe
	xor 07fh		;9abf
	ld (hl),a		;9ac1
	nop			;9ac2
	nop			;9ac3
	nop			;9ac4
	rst 38h			;9ac5
	nop			;9ac6
	nop			;9ac7
	rrca			;9ac8
	ld a,b			;9ac9
	nop			;9aca
	nop			;9acb
	nop			;9acc
	rst 38h			;9acd
	nop			;9ace
	rrca			;9acf
	rst 38h			;9ad0
	rst 38h			;9ad1
	rrca			;9ad2
	ret m			;9ad3
	ret pe			;9ad4
	ld a,a			;9ad5
	rst 38h			;9ad6
	rst 38h			;9ad7
	add a,a			;9ad8
	rst 38h			;9ad9
	adc a,a			;9ada
	ret pe			;9adb
	rst 38h			;9adc
	rst 38h			;9add
	ld a,a			;9ade
	add a,a			;9adf
	ret m			;9ae0
	xor 0ffh		;9ae1
	rst 38h			;9ae3
	nop			;9ae4
	nop			;9ae5
	ret pe			;9ae6
	halt			;9ae7
	rst 38h			;9ae8
	nop			;9ae9
	ret m			;9aea
	ret pe			;9aeb
	ld l,a			;9aec
	ret p			;9aed
	ld l,a			;9aee
	rst 38h			;9aef
	rst 38h			;9af0
	rst 38h			;9af1
	rst 38h			;9af2
	adc a,(hl)		;9af3
	xor 0efh		;9af4
	ld h,a			;9af6
	adc a,b			;9af7
	adc a,b			;9af8
	adc a,a			;9af9
	rst 38h			;9afa
	rst 30h			;9afb
	ld (hl),a		;9afc
	ld a,a			;9afd
	xor 08fh		;9afe
	ld h,(hl)		;9b00
	ld l,a			;9b01
	nop			;9b02
	nop			;9b03
	nop			;9b04
	nop			;9b05
	nop			;9b06
	nop			;9b07
	nop			;9b08
	nop			;9b09
	nop			;9b0a
	nop			;9b0b
	nop			;9b0c
	nop			;9b0d
	nop			;9b0e
	nop			;9b0f
	nop			;9b10
	nop			;9b11
	rrca			;9b12
	rst 38h			;9b13
	rst 38h			;9b14
	ret p			;9b15
	ret m			;9b16
	xor 0eeh		;9b17
	adc a,a			;9b19
	or 077h			;9b1a
	ld (hl),a		;9b1c
	ld l,a			;9b1d
	rst 38h			;9b1e
	rst 38h			;9b1f
	rst 38h			;9b20
	rst 38h			;9b21
	nop			;9b22
	nop			;9b23
	rst 30h			;9b24
	add a,(hl)		;9b25
	nop			;9b26
	nop			;9b27
	rst 30h			;9b28
	add a,(hl)		;9b29
	nop			;9b2a
	nop			;9b2b
	rst 30h			;9b2c
	add a,(hl)		;9b2d
	nop			;9b2e
	nop			;9b2f
	rst 38h			;9b30
	rst 38h			;9b31
	nop			;9b32
	nop			;9b33
	sub 087h		;9b34
	nop			;9b36
	nop			;9b37
	ld a,a			;9b38
	ld l,a			;9b39
	add hl,bc		;9b3a
	ex af,af'		;9b3b
	ret p			;9b3c
	rst 38h			;9b3d
	nop			;9b3e
	sbc a,a			;9b3f
	nop			;9b40
	ld a,c			;9b41
	ret m			;9b42
	rst 38h			;9b43
	adc a,b			;9b44
	ld (hl),a		;9b45
	ret m			;9b46
	add a,a			;9b47
	adc a,a			;9b48
	rst 38h			;9b49
	ret m			;9b4a
	rst 38h			;9b4b
	adc a,b			;9b4c
	adc a,b			;9b4d
	or 066h			;9b4e
	ld h,(hl)		;9b50
	ld h,(hl)		;9b51
	ld l,a			;9b52
	rst 38h			;9b53
	rst 38h			;9b54
	rst 38h			;9b55
	or 066h			;9b56
	ld (hl),a		;9b58
	ld (hl),a		;9b59
	rst 38h			;9b5a
	rst 38h			;9b5b
	rst 38h			;9b5c
	rst 38h			;9b5d
	nop			;9b5e
	nop			;9b5f
	nop			;9b60
	nop			;9b61
	ld a,a			;9b62
	adc a,b			;9b63
	ld (hl),a		;9b64
	ld a,a			;9b65
	rst 38h			;9b66
	adc a,b			;9b67
	rst 38h			;9b68
	rst 38h			;9b69
	adc a,b			;9b6a
	adc a,b			;9b6b
	rst 38h			;9b6c
	ld h,a			;9b6d
	ld h,(hl)		;9b6e
	ld h,(hl)		;9b6f
	rst 38h			;9b70
	rst 38h			;9b71
	rst 38h			;9b72
	rst 38h			;9b73
	rst 38h			;9b74
	adc a,b			;9b75
	halt			;9b76
	ld h,(hl)		;9b77
	rst 38h			;9b78
	ld h,(hl)		;9b79
	rst 38h			;9b7a
	rst 38h			;9b7b
	rst 38h			;9b7c
	rst 38h			;9b7d
	nop			;9b7e
	nop			;9b7f
	add hl,bc		;9b80
	sub b			;9b81
	adc a,(hl)		;9b82
	add a,a			;9b83
	ret m			;9b84
	adc a,a			;9b85
	rst 38h			;9b86
	rst 38h			;9b87
	rst 38h			;9b88
	rst 38h			;9b89
	ld a,b			;9b8a
	adc a,b			;9b8b
	ld (hl),a		;9b8c
	ld l,a			;9b8d
	rst 38h			;9b8e
	rst 38h			;9b8f
	rst 38h			;9b90
	rst 38h			;9b91
	ret pe			;9b92
	halt			;9b93
	ld l,a			;9b94
	rst 38h			;9b95
	ld h,a			;9b96
	ld h,(hl)		;9b97
	rst 38h			;9b98
	rst 38h			;9b99
	rst 38h			;9b9a
	rst 38h			;9b9b
	rst 38h			;9b9c
	rst 38h			;9b9d
	rrca			;9b9e
	add a,a			;9b9f
	ret p			;9ba0
	rrca			;9ba1
	rst 38h			;9ba2
	ld (hl),a		;9ba3
	rst 38h			;9ba4
	rst 38h			;9ba5
	adc a,b			;9ba6
	rst 38h			;9ba7
	ld a,b			;9ba8
	add a,a			;9ba9
	ld h,(hl)		;9baa
	rst 30h			;9bab
	adc a,(hl)		;9bac
	ret pe			;9bad
	rst 38h			;9bae
	rst 30h			;9baf
	adc a,(hl)		;9bb0
	ret pe			;9bb1
	rst 38h			;9bb2
	rst 30h			;9bb3
	adc a,b			;9bb4
	adc a,b			;9bb5
	rst 38h			;9bb6
	or 077h			;9bb7
	ld (hl),a		;9bb9
	add a,a			;9bba
	rst 38h			;9bbb
	ld h,(hl)		;9bbc
	ld h,(hl)		;9bbd
	ld a,(hl)		;9bbe
	adc a,e			;9bbf
	rst 38h			;9bc0
	rst 38h			;9bc1
	rst 38h			;9bc2
	ld a,a			;9bc3
	ret m			;9bc4
	adc a,b			;9bc5
	rst 38h			;9bc6
	ret m			;9bc7
	or 066h			;9bc8
	ld a,a			;9bca
	ld l,b			;9bcb
	rst 38h			;9bcc
	rst 38h			;9bcd
	ld a,a			;9bce
	rst 38h			;9bcf
	rst 38h			;9bd0
	ld a,b			;9bd1
	ld a,a			;9bd2
	ld l,b			;9bd3
	adc a,a			;9bd4
	ld (hl),a		;9bd5
	ld l,a			;9bd6
	rst 38h			;9bd7
	rst 38h			;9bd8
	or 0ffh			;9bd9
	rst 38h			;9bdb
	rst 38h			;9bdc
	rst 38h			;9bdd
	ret p			;9bde
	nop			;9bdf
	rst 38h			;9be0
	rst 38h			;9be1
	adc a,b			;9be2
	ld a,a			;9be3
	rst 38h			;9be4
	rst 38h			;9be5
	ld h,(hl)		;9be6
	rst 38h			;9be7
	ld h,(hl)		;9be8
	ld l,a			;9be9
	rst 38h			;9bea
	rst 38h			;9beb
	rst 38h			;9bec
	adc a,a			;9bed
	xor 0eeh		;9bee
	add a,a			;9bf0
	rst 38h			;9bf1
	ld (hl),a		;9bf2
	ld (hl),a		;9bf3
	ld (hl),a		;9bf4
	ret p			;9bf5
	ld h,(hl)		;9bf6
	ld h,(hl)		;9bf7
	ld l,a			;9bf8
	ret p			;9bf9
	rst 38h			;9bfa
	rst 38h			;9bfb
	rst 38h			;9bfc
	nop			;9bfd
	rst 38h			;9bfe
	rst 38h			;9bff
	ret p			;9c00
	nop			;9c01
	rst 30h			;9c02
	adc a,b			;9c03
	adc a,b			;9c04
	ld a,a			;9c05
	or 077h			;9c06
	ld (hl),a		;9c08
	ld l,a			;9c09
	rst 38h			;9c0a
	rst 38h			;9c0b
	rst 38h			;9c0c
	rst 38h			;9c0d
	rst 38h			;9c0e
	ld h,(hl)		;9c0f
	ld h,(hl)		;9c10
	rst 38h			;9c11
	rrca			;9c12
	rst 38h			;9c13
	rst 38h			;9c14
	ret p			;9c15
	nop			;9c16
	nop			;9c17
	nop			;9c18
	nop			;9c19
	nop			;9c1a
	nop			;9c1b
	nop			;9c1c
	nop			;9c1d
	nop			;9c1e
	nop			;9c1f
	nop			;9c20
	nop			;9c21
	nop			;9c22
	nop			;9c23
	rst 38h			;9c24
	ld h,(hl)		;9c25
	nop			;9c26
	nop			;9c27
	nop			;9c28
	cp 000h			;9c29
	nop			;9c2b
	nop			;9c2c
	rrca			;9c2d
	nop			;9c2e
	nop			;9c2f
	nop			;9c30
	nop			;9c31
	nop			;9c32
	nop			;9c33
	add hl,bc		;9c34
	nop			;9c35
	nop			;9c36
	nop			;9c37
	nop			;9c38
	add hl,bc		;9c39
	nop			;9c3a
	nop			;9c3b
	nop			;9c3c
	nop			;9c3d
	nop			;9c3e
	nop			;9c3f
	nop			;9c40
	nop			;9c41
	ret m			;9c42
	cp b			;9c43
	halt			;9c44
	ret p			;9c45
	rrca			;9c46
	adc a,(hl)		;9c47
	adc a,a			;9c48
	nop			;9c49
	nop			;9c4a
	rst 38h			;9c4b
	ret p			;9c4c
	nop			;9c4d
	nop			;9c4e
	nop			;9c4f
	nop			;9c50
	nop			;9c51
	nop			;9c52
	nop			;9c53
	nop			;9c54
	nop			;9c55
	nop			;9c56
l9c57h:
	nop			;9c57
	nop			;9c58
	nop			;9c59
	nop			;9c5a
	nop			;9c5b
	nop			;9c5c
	nop			;9c5d
	nop			;9c5e
	nop			;9c5f
	nop			;9c60
	nop			;9c61
	ld h,(hl)		;9c62
	ld l,a			;9c63
	ret p			;9c64
	nop			;9c65
	add a,a			;9c66
	halt			;9c67
	ret p			;9c68
	nop			;9c69
	ret pe			;9c6a
	halt			;9c6b
	ret p			;9c6c
	nop			;9c6d
	ei			;9c6e
	cp e			;9c6f
	ret p			;9c70
	nop			;9c71
	rrca			;9c72
	add a,a			;9c73
	ret p			;9c74
	nop			;9c75
	nop			;9c76
	rst 38h			;9c77
	ret p			;9c78
	nop			;9c79
	nop			;9c7a
	nop			;9c7b
	nop			;9c7c
	nop			;9c7d
	nop			;9c7e
	nop			;9c7f
	nop			;9c80
	nop			;9c81
	nop			;9c82
	nop			;9c83
	nop			;9c84
	nop			;9c85
	nop			;9c86
	nop			;9c87
	nop			;9c88
	nop			;9c89
	nop			;9c8a
	nop			;9c8b
	nop			;9c8c
	nop			;9c8d
	nop			;9c8e
	nop			;9c8f
	nop			;9c90
	nop			;9c91
	nop			;9c92
	rst 38h			;9c93
	rst 38h			;9c94
	rst 38h			;9c95
	rrca			;9c96
	rst 20h			;9c97
	xor 0eeh		;9c98
	rrca			;9c9a
	ld a,a			;9c9b
	adc a,b			;9c9c
	adc a,b			;9c9d
	rrca			;9c9e
	ld a,a			;9c9f
	adc a,b			;9ca0
	rst 38h			;9ca1
	nop			;9ca2
	nop			;9ca3
	nop			;9ca4
	nop			;9ca5
	nop			;9ca6
	nop			;9ca7
	nop			;9ca8
	nop			;9ca9
	nop			;9caa
	nop			;9cab
	nop			;9cac
	nop			;9cad
	nop			;9cae
	nop			;9caf
	nop			;9cb0
	nop			;9cb1
	rst 38h			;9cb2
	rrca			;9cb3
	rst 38h			;9cb4
	rrca			;9cb5
	xor 0f8h		;9cb6
	rst 28h			;9cb8
	rst 38h			;9cb9
	ld l,b			;9cba
	ld l,a			;9cbb
	rst 38h			;9cbc
	ld a,b			;9cbd
	ret m			;9cbe
	ret m			;9cbf
	rst 38h			;9cc0
	adc a,(hl)		;9cc1
	nop			;9cc2
	nop			;9cc3
	nop			;9cc4
	nop			;9cc5
	nop			;9cc6
	nop			;9cc7
	nop			;9cc8
	rst 38h			;9cc9
	nop			;9cca
	nop			;9ccb
	rrca			;9ccc
	ld e,000h		;9ccd
	nop			;9ccf
	pop af			;9cd0
	xor 000h		;9cd1
	rrca			;9cd3
	jr l9c57h		;9cd4
	nop			;9cd6
	rrca			;9cd7
	rra			;9cd8
	ret m			;9cd9
	nop			;9cda
	pop af			;9cdb
	adc a,a			;9cdc
	adc a,a			;9cdd
	nop			;9cde
	pop af			;9cdf
	adc a,a			;9ce0
	adc a,a			;9ce1
	nop			;9ce2
	nop			;9ce3
	rst 38h			;9ce4
	rst 38h			;9ce5
	rst 38h			;9ce6
	rst 38h			;9ce7
	cp 0eeh			;9ce8
	xor 0efh		;9cea
	pop hl			;9cec
	ld de,0eeeeh		;9ced
	pop af			;9cf0
	ld de,01e11h		;9cf1
	rra			;9cf4
	ld de,01111h		;9cf5
	rst 28h			;9cf8
	ld de,01e81h		;9cf9
	xor 0f1h		;9cfc
	adc a,b			;9cfe
	adc a,b			;9cff
	add a,c			;9d00
	ret m			;9d01
	rst 38h			;9d02
	nop			;9d03
	nop			;9d04
	nop			;9d05
	pop hl			;9d06
	rst 38h			;9d07
	nop			;9d08
	nop			;9d09
	ld e,011h		;9d0a
	rst 38h			;9d0c
	ret p			;9d0d
	ld de,01eefh		;9d0e
	rst 28h			;9d11
	ld de,0f111h		;9d12
	xor 011h		;9d15
	ld de,011f8h		;9d17
	ld de,l8f11h		;9d1a
	ld de,01111h		;9d1d
	rra			;9d20
	add a,c			;9d21
	nop			;9d22
	nop			;9d23
	nop			;9d24
	nop			;9d25
	nop			;9d26
	nop			;9d27
	nop			;9d28
	nop			;9d29
	nop			;9d2a
	nop			;9d2b
	nop			;9d2c
	nop			;9d2d
	ret p			;9d2e
	nop			;9d2f
	nop			;9d30
	nop			;9d31
	rra			;9d32
	rst 38h			;9d33
	nop			;9d34
	nop			;9d35
	pop hl			;9d36
	xor 0f0h		;9d37
	nop			;9d39
	rra			;9d3a
	ld de,000efh		;9d3b
	rra			;9d3e
	add a,c			;9d3f
	ld e,0f0h		;9d40
	nop			;9d42
	nop			;9d43
	nop			;9d44
	nop			;9d45
	nop			;9d46
	nop			;9d47
	nop			;9d48
	nop			;9d49
	nop			;9d4a
	nop			;9d4b
	nop			;9d4c
	nop			;9d4d
	nop			;9d4e
	nop			;9d4f
	nop			;9d50
	nop			;9d51
	nop			;9d52
	nop			;9d53
	nop			;9d54
	nop			;9d55
	nop			;9d56
	nop			;9d57
	nop			;9d58
	rrca			;9d59
	nop			;9d5a
	nop			;9d5b
	rrca			;9d5c
	rst 38h			;9d5d
	nop			;9d5e
	nop			;9d5f
	pop af			;9d60
	ld de,0ff0fh		;9d61
	rst 38h			;9d64
	ret m			;9d65
	rrca			;9d66
	push af			;9d67
	ld d,l			;9d68
	ret m			;9d69
	rrca			;9d6a
	push af			;9d6b
l9d6ch:
	ld d,l			;9d6c
	ret m			;9d6d
	pop af			;9d6e
	push af			;9d6f
	ld d,l			;9d70
	ret m			;9d71
	pop af			;9d72
	call p,0f844h		;9d73
	jr l9d6ch		;9d76
	ld b,h			;9d78
	ret m			;9d79
	rst 38h			;9d7a
	call p,0ff44h		;9d7b
	rra			;9d7e
	di			;9d7f
	inc sp			;9d80
	ret m			;9d81
	adc a,b			;9d82
	ld de,0f818h		;9d83
	add a,c			;9d86
	ld de,0f811h		;9d87
	ld de,01111h		;9d8a
	ret m			;9d8d
	ld de,01111h		;9d8e
	ret m			;9d91
	ld de,01811h		;9d92
	ret m			;9d95
	add a,c			;9d96
	ld de,0f81fh		;9d97
	add a,c			;9d9a
	ld de,0f88fh		;9d9b
	rst 38h			;9d9e
	ret m			;9d9f
	rst 38h			;9da0
	adc a,b			;9da1
	ld de,01f11h		;9da2
	adc a,b			;9da5
l9da6h:
	add a,c			;9da6
l9da7h:
	ld de,0f811h		;9da7
	adc a,b			;9daa
	adc a,b			;9dab
	jr l9da6h		;9dac
	add a,c			;9dae
	ld de,0f81eh		;9daf
	ld de,01111h		;9db2
	ret m			;9db5
	ld de,01111h		;9db6
	ret m			;9db9
	ld de,01f11h		;9dba
	add a,c			;9dbd
	ld de,01f11h		;9dbe
	add a,c			;9dc1
	ld de,011f8h		;9dc2
	ret p			;9dc5
	add a,c			;9dc6
	ret m			;9dc7
	ld de,0111fh		;9dc8
	rra			;9dcb
	ld de,0111fh		;9dcc
	rra			;9dcf
	adc a,b			;9dd0
	rra			;9dd1
	ld de,l881fh		;9dd2
	adc a,a			;9dd5
	ld de,l811eh+1		;9dd6
	rra			;9dd9
	ld de,011f8h		;9dda
	rst 38h			;9ddd
	ld de,011f8h		;9dde
	rst 38h			;9de1
	nop			;9de2
	rrca			;9de3
	ld de,00011h		;9de4
	rrca			;9de7
	add a,c			;9de8
	adc a,b			;9de9
	nop			;9dea
	rrca			;9deb
	add a,c			;9dec
	adc a,b			;9ded
	nop			;9dee
	rrca			;9def
	add a,c			;9df0
	adc a,b			;9df1
	nop			;9df2
	nop			;9df3
	ret m			;9df4
	jr l9df7h		;9df5
l9df7h:
	nop			;9df7
	rrca			;9df8
	ret m			;9df9
	nop			;9dfa
	nop			;9dfb
	nop			;9dfc
	rrca			;9dfd
	nop			;9dfe
	nop			;9dff
	nop			;9e00
	nop			;9e01
	ld de,0331fh		;9e02
	rst 38h			;9e05
	add a,c			;9e06
	rra			;9e07
	inc sp			;9e08
	ccf			;9e09
	adc a,b			;9e0a
	ld de,02ff2h		;9e0b
	adc a,b			;9e0e
	add a,c			;9e0f
	jp p,l882fh		;9e10
	add a,c			;9e13
	rst 38h			;9e14
	rst 38h			;9e15
	jr l9da7h		;9e16
	rst 38h			;9e18
	rst 38h			;9e19
	rst 38h			;9e1a
	ret p			;9e1b
	rrca			;9e1c
	ccf			;9e1d
	nop			;9e1e
	nop			;9e1f
	rrca			;9e20
	ccf			;9e21
	adc a,b			;9e22
	adc a,b			;9e23
	rst 38h			;9e24
	add a,c			;9e25
	rst 38h			;9e26
	rst 38h			;9e27
	rst 38h			;9e28
	jr l9e5eh		;9e29
	inc sp			;9e2b
	pop af			;9e2c
	adc a,b			;9e2d
	rst 38h			;9e2e
	rst 38h			;9e2f
	ret m			;9e30
	adc a,b			;9e31
	rst 38h			;9e32
	rst 38h			;9e33
	ret m			;9e34
	adc a,b			;9e35
	ld de,0ff88h		;9e36
	adc a,b			;9e39
	add a,c			;9e3a
	ld de,0ff88h		;9e3b
	ret m			;9e3e
	adc a,b			;9e3f
	adc a,b			;9e40
	rst 38h			;9e41
	add a,c			;9e42
	ld de,l818fh		;9e43
	adc a,b			;9e46
	adc a,b			;9e47
	ret m			;9e48
	adc a,b			;9e49
	adc a,b			;9e4a
	adc a,a			;9e4b
	ret m			;9e4c
	adc a,b			;9e4d
	adc a,b			;9e4e
	adc a,a			;9e4f
	adc a,b			;9e50
	adc a,a			;9e51
	adc a,b			;9e52
	ret m			;9e53
	adc a,b			;9e54
	ret m			;9e55
	adc a,a			;9e56
	adc a,b			;9e57
	adc a,a			;9e58
	rst 38h			;9e59
	ret m			;9e5a
	rst 38h			;9e5b
	rst 38h			;9e5c
	ret m			;9e5d
l9e5eh:
	rst 38h			;9e5e
	rst 38h			;9e5f
	adc a,b			;9e60
	adc a,b			;9e61
	rra			;9e62
	add a,c			;9e63
	rra			;9e64
	rst 28h			;9e65
	adc a,a			;9e66
	ld de,0ff1fh		;9e67
	ret m			;9e6a
	add a,c			;9e6b
	pop af			;9e6c
	rra			;9e6d
	adc a,b			;9e6e
	adc a,a			;9e6f
	ld de,l881fh		;9e70
	pop af			;9e73
	ld de,0ffffh		;9e74
	ld de,0ff81h		;9e77
	ld de,01188h		;9e7a
	rst 38h			;9e7d
	adc a,b			;9e7e
	add a,c			;9e7f
	rra			;9e80
	rst 38h			;9e81
	nop			;9e82
	nop			;9e83
	ld b,053h		;9e84
	nop			;9e86
	nop			;9e87
	rrca			;9e88
	ld d,e			;9e89
	nop			;9e8a
	nop			;9e8b
	rrca			;9e8c
	ld d,e			;9e8d
	nop			;9e8e
	nop			;9e8f
	rrca			;9e90
	ld d,e			;9e91
	nop			;9e92
	nop			;9e93
	rrca			;9e94
	ld d,e			;9e95
	nop			;9e96
	nop			;9e97
	rrca			;9e98
	ld d,e			;9e99
	nop			;9e9a
	nop			;9e9b
	rrca			;9e9c
	ld d,e			;9e9d
	nop			;9e9e
	nop			;9e9f
	rrca			;9ea0
	ld d,e			;9ea1
	rst 38h			;9ea2
	rst 38h			;9ea3
	rst 38h			;9ea4
	adc a,b			;9ea5
	pop af			;9ea6
	adc a,b			;9ea7
	adc a,b			;9ea8
	adc a,b			;9ea9
	pop af			;9eaa
	ld de,08818h		;9eab
	pop af			;9eae
	jr l9ec2h		;9eaf
	ld de,011ffh		;9eb1
	adc a,b			;9eb4
	adc a,b			;9eb5
	rst 38h			;9eb6
	rst 38h			;9eb7
	adc a,b			;9eb8
	adc a,b			;9eb9
	rst 38h			;9eba
	rst 38h			;9ebb
	rst 38h			;9ebc
	rst 38h			;9ebd
	or 0ffh			;9ebe
	rst 38h			;9ec0
	rst 38h			;9ec1
l9ec2h:
	adc a,b			;9ec2
	adc a,b			;9ec3
	adc a,b			;9ec4
	adc a,b			;9ec5
	adc a,b			;9ec6
	adc a,b			;9ec7
	adc a,b			;9ec8
	adc a,b			;9ec9
	adc a,b			;9eca
	adc a,b			;9ecb
	adc a,b			;9ecc
	adc a,b			;9ecd
	adc a,b			;9ece
	adc a,b			;9ecf
	adc a,b			;9ed0
	adc a,b			;9ed1
	adc a,b			;9ed2
	adc a,b			;9ed3
	adc a,b			;9ed4
	adc a,a			;9ed5
	adc a,b			;9ed6
	adc a,b			;9ed7
	rst 38h			;9ed8
	rst 38h			;9ed9
	rst 38h			;9eda
	rst 38h			;9edb
	rst 38h			;9edc
	rst 38h			;9edd
	rst 38h			;9ede
	rst 38h			;9edf
	or 066h			;9ee0
	adc a,b			;9ee2
	add a,c			;9ee3
	rra			;9ee4
	rst 38h			;9ee5
	adc a,b			;9ee6
	ld de,0f7ffh		;9ee7
	add a,c			;9eea
	rra			;9eeb
	rst 38h			;9eec
	halt			;9eed
	adc a,a			;9eee
	rst 38h			;9eef
	or 076h			;9ef0
	rst 38h			;9ef2
	rst 38h			;9ef3
	ld h,a			;9ef4
	ld h,(hl)		;9ef5
	rst 38h			;9ef6
	ld h,(hl)		;9ef7
	ld h,a			;9ef8
	ld h,(hl)		;9ef9
	ld h,(hl)		;9efa
	ld h,(hl)		;9efb
	halt			;9efc
	ld h,(hl)		;9efd
	ld h,(hl)		;9efe
	ld h,(hl)		;9eff
	ld h,(hl)		;9f00
	ld l,a			;9f01
	nop			;9f02
	nop			;9f03
	nop			;9f04
	nop			;9f05
	nop			;9f06
	nop			;9f07
	nop			;9f08
	nop			;9f09
	nop			;9f0a
	nop			;9f0b
	nop			;9f0c
	nop			;9f0d
	ld c,0e0h		;9f0e
	nop			;9f10
	nop			;9f11
	ld c,0e0h		;9f12
	nop			;9f14
	nop			;9f15
	nop			;9f16
	nop			;9f17
	nop			;9f18
	nop			;9f19
	nop			;9f1a
	nop			;9f1b
	nop			;9f1c
	nop			;9f1d
	nop			;9f1e
	nop			;9f1f
	nop			;9f20
	nop			;9f21
	nop			;9f22
	nop			;9f23
	nop			;9f24
	nop			;9f25
	nop			;9f26
	nop			;9f27
	nop			;9f28
	nop			;9f29
	nop			;9f2a
	nop			;9f2b
	nop			;9f2c
	nop			;9f2d
	nop			;9f2e
	nop			;9f2f
	nop			;9f30
	nop			;9f31
	nop			;9f32
	nop			;9f33
	nop			;9f34
	nop			;9f35
	nop			;9f36
	nop			;9f37
	nop			;9f38
	nop			;9f39
	nop			;9f3a
	nop			;9f3b
	nop			;9f3c
	nop			;9f3d
	nop			;9f3e
	nop			;9f3f
	nop			;9f40
	ret po			;9f41
	nop			;9f42
	nop			;9f43
	nop			;9f44
	nop			;9f45
	nop			;9f46
	nop			;9f47
	nop			;9f48
	nop			;9f49
	nop			;9f4a
	nop			;9f4b
	nop			;9f4c
	nop			;9f4d
	nop			;9f4e
	nop			;9f4f
	nop			;9f50
	nop			;9f51
	nop			;9f52
	nop			;9f53
	nop			;9f54
	nop			;9f55
	nop			;9f56
	ld c,000h		;9f57
	nop			;9f59
	nop			;9f5a
	ret po			;9f5b
	nop			;9f5c
	nop			;9f5d
	ld c,000h		;9f5e
	nop			;9f60
	nop			;9f61
	nop			;9f62
	nop			;9f63
	nop			;9f64
	nop			;9f65
	nop			;9f66
	nop			;9f67
	nop			;9f68
	ld c,000h		;9f69
	nop			;9f6b
	nop			;9f6c
	ret po			;9f6d
	nop			;9f6e
	nop			;9f6f
	ld c,000h		;9f70
	nop			;9f72
	nop			;9f73
	xor 000h		;9f74
	nop			;9f76
	ld c,0e0h		;9f77
	nop			;9f79
	nop			;9f7a
	nop			;9f7b
	nop			;9f7c
	nop			;9f7d
	ret po			;9f7e
	nop			;9f7f
	nop			;9f80
	nop			;9f81
	nop			;9f82
	nop			;9f83
	nop			;9f84
	nop			;9f85
	nop			;9f86
	nop			;9f87
	nop			;9f88
	nop			;9f89
	nop			;9f8a
	xor 000h		;9f8b
	nop			;9f8d
	nop			;9f8e
	xor 000h		;9f8f
	nop			;9f91
	nop			;9f92
	nop			;9f93
	nop			;9f94
	nop			;9f95
	nop			;9f96
	nop			;9f97
	nop			;9f98
	nop			;9f99
	nop			;9f9a
	nop			;9f9b
	nop			;9f9c
	nop			;9f9d
	nop			;9f9e
	nop			;9f9f
	nop			;9fa0
	nop			;9fa1
	nop			;9fa2
	nop			;9fa3
	nop			;9fa4
	nop			;9fa5
	nop			;9fa6
	ret po			;9fa7
	nop			;9fa8
	nop			;9fa9
	nop			;9faa
	nop			;9fab
	nop			;9fac
	nop			;9fad
	nop			;9fae
	nop			;9faf
	nop			;9fb0
	nop			;9fb1
	nop			;9fb2
	nop			;9fb3
	nop			;9fb4
	nop			;9fb5
	nop			;9fb6
	nop			;9fb7
	nop			;9fb8
	nop			;9fb9
	nop			;9fba
	nop			;9fbb
	nop			;9fbc
	nop			;9fbd
	nop			;9fbe
	nop			;9fbf
	nop			;9fc0
	nop			;9fc1
	nop			;9fc2
	nop			;9fc3
	nop			;9fc4
	nop			;9fc5
	nop			;9fc6
	nop			;9fc7
	nop			;9fc8
	nop			;9fc9
	nop			;9fca
	nop			;9fcb
	nop			;9fcc
	nop			;9fcd
	nop			;9fce
	nop			;9fcf
	nop			;9fd0
	nop			;9fd1
	nop			;9fd2
	nop			;9fd3
	nop			;9fd4
	nop			;9fd5
	nop			;9fd6
	nop			;9fd7
	nop			;9fd8
	nop			;9fd9
	xor 000h		;9fda
	nop			;9fdc
	nop			;9fdd
	xor 000h		;9fde
	nop			;9fe0
	nop			;9fe1
	ld c,000h		;9fe2
	nop			;9fe4
	nop			;9fe5
	nop			;9fe6
	nop			;9fe7
	nop			;9fe8
	nop			;9fe9
	nop			;9fea
	xor 0e0h		;9feb
	nop			;9fed
	nop			;9fee
	xor 0eeh		;9fef
	nop			;9ff1
	nop			;9ff2
	xor 0eeh		;9ff3
	nop			;9ff5
	nop			;9ff6
	ld c,0eeh		;9ff7
	ret po			;9ff9
	nop			;9ffa
	nop			;9ffb
	xor 0e0h		;9ffc
	nop			;9ffe
	nop			;9fff
