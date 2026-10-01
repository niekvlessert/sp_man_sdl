; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank21_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank21.bin

	org 08000h

	inc b			;8000
	ld d,d			;8001
	rlca			;8002
	ld d,h			;8003
	ld (bc),a		;8004
	ld d,c			;8005
	add a,d			;8006
	ld d,d			;8007
	ld d,e			;8008
	ex af,af'		;8009
	ld d,h			;800a
	ld (bc),a		;800b
	ld d,c			;800c
	add a,d			;800d
	ld b,e			;800e
	ld (02103h),a		;800f
	add a,c			;8012
	ld (04303h),a		;8013
	add a,c			;8016
	ld (02107h),a		;8017
	add a,c			;801a
	ld (04303h),a		;801b
	add a,e			;801e
	ld (02121h),a		;801f
	inc bc			;8022
	ld d,b			;8023
	inc b			;8024
	ld d,d			;8025
	inc b			;8026
	ld d,h			;8027
	add a,e			;8028
	ld d,c			;8029
	ld d,h			;802a
	ld d,h			;802b
	inc bc			;802c
	ld b,e			;802d
	inc bc			;802e
	ld (04305h),a		;802f
	ld (bc),a		;8032
	ld (02183h),a		;8033
	ld (00332h),a		;8036
	inc bc			;8039
	dec b			;803a
	ld (02184h),a		;803b
	ld sp,05141h		;803e
	inc bc			;8041
	ld b,c			;8042
	inc b			;8043
	ld d,c			;8044
	ld (bc),a		;8045
	ld d,h			;8046
	inc bc			;8047
	ld b,e			;8048
	inc b			;8049
	ld d,e			;804a
	inc bc			;804b
	ld b,e			;804c
	dec b			;804d
	ld (02102h),a		;804e
	ex af,af'		;8051
	ld (04384h),a		;8052
	ld (02132h),a		;8055
	nop			;8058
	inc bc			;8059
	nop			;805a
	add a,c			;805b
	djnz l8063h		;805c
	nop			;805e
	add a,c			;805f
	jr nz,l8067h		;8060
	nop			;8062
l8063h:
	add a,c			;8063
	inc b			;8064
	ld b,000h		;8065
l8067h:
	add a,h			;8067
	ex af,af'		;8068
	nop			;8069
	nop			;806a
	inc b			;806b
	rlca			;806c
	nop			;806d
	add a,c			;806e
	djnz l8075h		;806f
	nop			;8071
	add a,c			;8072
	ex af,af'		;8073
	rlca			;8074
l8075h:
	nop			;8075
	add a,c			;8076
	inc b			;8077
	inc b			;8078
l8079h:
	nop			;8079
	add a,c			;807a
	djnz l8083h		;807b
	nop			;807d
	add a,c			;807e
	jr nz,l808bh		;807f
	nop			;8081
	add a,c			;8082
l8083h:
	inc b			;8083
	inc bc			;8084
	nop			;8085
	add a,c			;8086
	inc b			;8087
	dec b			;8088
	nop			;8089
	add a,e			;808a
l808bh:
	add a,b			;808b
	nop			;808c
	ld (bc),a		;808d
	dec b			;808e
	nop			;808f
	add a,c			;8090
	add a,b			;8091
	inc b			;8092
	nop			;8093
	add a,c			;8094
	ex af,af'		;8095
	rlca			;8096
	nop			;8097
	add a,c			;8098
	ex af,af'		;8099
	inc b			;809a
	nop			;809b
	add a,c			;809c
	inc b			;809d
	inc bc			;809e
	nop			;809f
	add a,e			;80a0
	ld b,b			;80a1
	nop			;80a2
	nop			;80a3
	nop			;80a4
	add hl,bc		;80a5
	add a,b			;80a6
	djnz l8079h		;80a7
	ex af,af'		;80a9
	ret po			;80aa
	dec b			;80ab
	add a,b			;80ac
	ex af,af'		;80ad
	ret nc			;80ae
	dec b			;80af
	add a,b			;80b0
	rlca			;80b1
	ret nc			;80b2
	dec bc			;80b3
	add a,b			;80b4
	inc b			;80b5
	ret po			;80b6
	ld b,080h		;80b7
	ex af,af'		;80b9
	ret nc			;80ba
	dec b			;80bb
	add a,b			;80bc
	ex af,af'		;80bd
	ret nc			;80be
	add hl,bc		;80bf
	add a,b			;80c0
	inc bc			;80c1
	ret nc			;80c2
	nop			;80c3
	adc a,h			;80c4
	ld a,(hl)		;80c5
	jr $+62			;80c6
	jr $+62			;80c8
	add a,c			;80ca
	jp 03cfeh		;80cb
	jp 03281h		;80ce
	inc bc			;80d1
	inc a			;80d2
	adc a,c			;80d3
	cp c			;80d4
	sbc a,(hl)		;80d5
	rst 0			;80d6
	inc a			;80d7
	and l			;80d8
	rst 20h			;80d9
	ld h,l			;80da
	ld a,(hl)		;80db
	rst 0			;80dc
	nop			;80dd
	add a,c			;80de
	djnz l80e4h		;80df
	ld hl,01081h		;80e1
l80e4h:
	dec b			;80e4
	ret p			;80e5
	add a,a			;80e6
	pop af			;80e7
	ld hl,01021h		;80e8
	rrca			;80eb
	pop af			;80ec
	jp p,0f003h		;80ed
	add a,c			;80f0
	jp p,0f003h		;80f1
	nop			;80f4
	sub b			;80f5
	ld b,a			;80f6
	cp l			;80f7
	inc de			;80f8
	inc sp			;80f9
	ld h,03fh		;80fa
	jp 03b18h		;80fc
	inc a			;80ff
	ld b,h			;8100
	ld b,h			;8101
	call nz,03cc8h		;8102
	jp nz,l8800h		;8105
	pop af			;8108
	ret p			;8109
	pop af			;810a
	jp p,0f0f1h		;810b
	ret p			;810e
	djnz l8114h		;810f
	ret p			;8111
	add a,l			;8112
	pop af			;8113
l8114h:
	jp p,0f0f1h		;8114
	ret p			;8117
	nop			;8118
	sbc a,b			;8119
	ld b,d			;811a
	jp 0f725h		;811b
	adc a,c			;811e
	ret			;811f
	ex de,hl		;8120
	sbc a,03ch		;8121
	ld a,(hl)		;8123
	jr c,l81a2h		;8124
l8126h:
	jr c,l8126h		;8126
	inc a			;8128
	inc a			;8129
	inc hl			;812a
	jp 0ddddh		;812b
	inc hl			;812e
	inc de			;812f
	inc a			;8130
	ld b,e			;8131
	nop			;8132
	adc a,d			;8133
	ret p			;8134
	pop af			;8135
	jp p,0f0f1h		;8136
	jp p,0f0f1h		;8139
	djnz l814eh		;813c
	inc bc			;813e
	ld hl,01002h		;813f
	inc b			;8142
	rrca			;8143
	add a,l			;8144
	rra			;8145
	jp p,0f0f1h		;8146
	ret p			;8149
	nop			;814a
	adc a,h			;814b
	dec sp			;814c
	inc a			;814d
l814eh:
	ld b,h			;814e
	ld b,h			;814f
	call nz,03cc8h		;8150
	rrca			;8153
	sbc a,(hl)		;8154
	add hl,bc		;8155
	ex af,af'		;8156
	adc a,c			;8157
	inc b			;8158
	ret p			;8159
	adc a,h			;815a
	ld b,e			;815b
	inc a			;815c
	inc de			;815d
	inc hl			;815e
	ld (03c22h),hl		;815f
	ret p			;8162
	inc bc			;8163
	inc bc			;8164
	add a,b			;8165
	ld (03c03h),a		;8166
	add a,l			;8169
	cp c			;816a
	dec sp			;816b
	inc e			;816c
	jp 00418h		;816d
	rrca			;8170
	sub b			;8171
	ld a,a			;8172
	inc a			;8173
	inc hl			;8174
	inc hl			;8175
	jr nz,l81b7h		;8176
	ret p			;8178
	ret m			;8179
	add a,c			;817a
	rst 38h			;817b
	ld a,0c3h		;817c
	ld a,01ch		;817e
	ld a,01ch		;8180
	inc b			;8182
	ret p			;8183
	inc bc			;8184
	inc c			;8185
	add a,c			;8186
	ret p			;8187
	nop			;8188
	inc bc			;8189
	ret p			;818a
	or d			;818b
	pop af			;818c
	jp p,0f0f1h		;818d
	ld d,h			;8190
	jp p,0f0f1h		;8191
	ret p			;8194
	ld sp,05040h		;8195
	ld b,e			;8198
	ret p			;8199
	ret p			;819a
	pop af			;819b
	jp p,0f0f1h		;819c
	ret p			;819f
	jr nc,l81f2h		;81a0
l81a2h:
	ld b,b			;81a2
	ret p			;81a3
	jr nz,l81c7h		;81a4
	djnz l81b7h		;81a6
	pop af			;81a8
	djnz l81cbh		;81a9
	djnz l81bdh		;81ab
	ld sp,05340h		;81ad
	ld b,h			;81b0
	ret p			;81b1
	ret p			;81b2
	jp p,0f0f1h		;81b3
	di			;81b6
l81b7h:
	ld b,e			;81b7
	ld d,h			;81b8
	di			;81b9
	di			;81ba
	ret p			;81bb
	ret p			;81bc
l81bdh:
	djnz l81c2h		;81bd
	ld hl,04388h		;81bf
l81c2h:
	ld e,a			;81c2
	ld b,b			;81c3
	ld sp,02110h		;81c4
l81c7h:
	djnz l81f9h		;81c7
	nop			;81c9
	add a,l			;81ca
l81cbh:
	ld b,e			;81cb
	inc a			;81cc
	inc de			;81cd
	inc hl			;81ce
	ld (00305h),hl		;81cf
	ld (bc),a		;81d2
	jr c,l81d8h		;81d3
	inc a			;81d5
	add a,c			;81d6
	cp c			;81d7
l81d8h:
	nop			;81d8
	ld (bc),a		;81d9
	ret p			;81da
	adc a,(hl)		;81db
	pop af			;81dc
	jp p,040f1h		;81dd
	ld e,a			;81e0
	sbc a,a			;81e1
	ld d,b			;81e2
	ld b,c			;81e3
	ld hl,01021h		;81e4
	rrca			;81e7
	rrca			;81e8
	pop af			;81e9
	nop			;81ea
	add a,d			;81eb
	inc a			;81ec
	jp 0f004h		;81ed
	ld (bc),a		;81f0
	rrca			;81f1
l81f2h:
	add a,d			;81f2
	sbc a,l			;81f3
	jp 01f03h		;81f4
	inc bc			;81f7
	ret po			;81f8
l81f9h:
	dec bc			;81f9
	rrca			;81fa
	inc b			;81fb
	ret p			;81fc
	add a,c			;81fd
	rst 38h			;81fe
	ex af,af'		;81ff
	ret p			;8200
	add a,c			;8201
	inc a			;8202
	inc bc			;8203
	ld bc,07d98h		;8204
	jr c,l8241h		;8207
	jr l820eh		;8209
	inc bc			;820b
	ld a,h			;820c
	ld a,l			;820d
l820eh:
	sub d			;820e
	ld (l8c8dh),a		;820f
	rlca			;8212
	rlca			;8213
	call m,0d00fh		;8214
	add a,038h		;8217
	jr c,l829ah		;8219
	rst 38h			;821b
	ld a,a			;821c
	rra			;821d
	inc bc			;821e
	ccf			;821f
	adc a,e			;8220
	ret nz			;8221
	inc c			;8222
	cp 0f0h			;8223
	call m,0f8f0h		;8225
	rlca			;8228
	ld e,03ch		;8229
	jp 0f004h		;822b
	ld (bc),a		;822e
	rrca			;822f
	sub d			;8230
	pop bc			;8231
	ccf			;8232
	ccf			;8233
	rra			;8234
	ccf			;8235
	ccf			;8236
	rra			;8237
	ld a,a			;8238
	inc a			;8239
	jr c,l82b8h		;823a
	cp 08ch			;823c
	adc a,h			;823e
	cp 09dh			;823f
l8241h:
	rra			;8241
	rra			;8242
	inc b			;8243
	ret po			;8244
	and h			;8245
	add a,b			;8246
	ld a,(hl)		;8247
	ld a,01ch		;8248
	ld a,03eh		;824a
	add a,b			;824c
	inc a			;824d
	ret nz			;824e
	inc d			;824f
	ld e,07eh		;8250
	ld e,080h		;8252
	ld h,b			;8254
	ccf			;8255
	ld b,b			;8256
	inc c			;8257
	ld a,(hl)		;8258
	inc e			;8259
	jr c,l82dbh		;825a
	jr c,l829ah		;825c
	inc a			;825e
	nop			;825f
	inc a			;8260
	add a,c			;8261
	inc a			;8262
	ld a,(hl)		;8263
	ld a,(hl)		;8264
	inc a			;8265
	ld a,(hl)		;8266
	ld a,(hl)		;8267
	ld l,b			;8268
	ld l,b			;8269
	ld b,00fh		;826a
	add a,d			;826c
	nop			;826d
	rra			;826e
	inc b			;826f
	ret po			;8270
	dec b			;8271
	ret p			;8272
	inc b			;8273
	rrca			;8274
	add a,e			;8275
	ret m			;8276
	ret nz			;8277
	ccf			;8278
	inc bc			;8279
	rra			;827a
	ld (bc),a		;827b
	ret nz			;827c
	add a,l			;827d
	inc bc			;827e
	rrca			;827f
	ret m			;8280
	call m,003f8h		;8281
	rrca			;8284
	adc a,e			;8285
	inc c			;8286
	ret p			;8287
	ld a,h			;8288
	jr c,l82c7h		;8289
	ld a,(hl)		;828b
	rra			;828c
	add a,e			;828d
	ex (sp),hl		;828e
	dec sp			;828f
	inc a			;8290
	inc b			;8291
	rrca			;8292
	add a,d			;8293
	ret p			;8294
	ret po			;8295
	ex af,af'		;8296
	ret p			;8297
	dec b			;8298
	rra			;8299
l829ah:
	ld (bc),a		;829a
	ret nz			;829b
	add a,c			;829c
	inc bc			;829d
	inc bc			;829e
	rrca			;829f
	add a,c			;82a0
	ret po			;82a1
	inc bc			;82a2
	rra			;82a3
	add a,e			;82a4
	ret po			;82a5
	cpl			;82a6
	cpl			;82a7
	inc b			;82a8
	rrca			;82a9
	ld (bc),a		;82aa
	ret p			;82ab
	ld (bc),a		;82ac
	cpl			;82ad
	adc a,b			;82ae
	inc c			;82af
	add a,b			;82b0
	rrca			;82b1
	rrca			;82b2
	nop			;82b3
	rrca			;82b4
	rrca			;82b5
	rra			;82b6
	inc b			;82b7
l82b8h:
	ret po			;82b8
	sub (hl)		;82b9
	rrca			;82ba
	out (06eh),a		;82bb
	rra			;82bd
	add a,(hl)		;82be
	jr c,l833dh		;82bf
	ld a,h			;82c1
	nop			;82c2
	inc sp			;82c3
	rra			;82c4
	rra			;82c5
	ccf			;82c6
l82c7h:
	ccf			;82c7
	ret c			;82c8
	ccf			;82c9
	ccf			;82ca
	add a,b			;82cb
	rrca			;82cc
	ret m			;82cd
	call m,003f8h		;82ce
	rrca			;82d1
	add a,c			;82d2
	dec h			;82d3
	inc bc			;82d4
	ret p			;82d5
	add a,l			;82d6
	ld c,038h		;82d7
	ld a,h			;82d9
	ld a,h			;82da
l82dbh:
	ret nz			;82db
	rlca			;82dc
	ret p			;82dd
	sbc a,h			;82de
	ld c,06eh		;82df
	rra			;82e1
	add a,(hl)		;82e2
	jr c,l8361h		;82e3
	ld a,h			;82e5
	nop			;82e6
	inc sp			;82e7
	ld h,06ch		;82e8
	inc e			;82ea
	add a,h			;82eb
	jr c,l836ah		;82ec
	ld e,067h		;82ee
	ld h,h			;82f0
	ret m			;82f1
	add hl,bc		;82f2
	and h			;82f3
	ld (hl),b		;82f4
	add a,060h		;82f5
	ld (02098h),hl		;82f7
	rra			;82fa
	inc bc			;82fb
	ret p			;82fc
	ld (bc),a		;82fd
	rrca			;82fe
	sub b			;82ff
	ld bc,05e9ch		;8300
	jr c,l8381h		;8303
	ld b,h			;8305
	add a,b			;8306
	call z,040d0h		;8307
	and d			;830a
	djnz $+66		;830b
	ld a,03fh		;830d
	rst 28h			;830f
	ld c,000h		;8310
l8312h:
	call c,0393dh		;8312
	nop			;8315
	nop			;8316
	add a,b			;8317
	inc bc			;8318
	cp 03ch			;8319
	ld a,(hl)		;831b
	ld h,(hl)		;831c
	inc a			;831d
	jr c,l8338h		;831e
	inc a			;8320
	jr l839bh		;8321
	ld a,h			;8323
	ld a,h			;8324
	add a,c			;8325
	cp h			;8326
	jr c,$+128		;8327
	ld a,a			;8329
	jr c,l83a8h		;832a
	ld a,h			;832c
	cp d			;832d
	add hl,sp		;832e
	jr c,$-54		;832f
	rra			;8331
	rrca			;8332
	ret p			;8333
	ret nz			;8334
	ld b,d			;8335
	rst 8			;8336
	inc a			;8337
l8338h:
	ld a,h			;8338
	jr c,$+126		;8339
	ld a,h			;833b
	ret nz			;833c
l833dh:
	inc a			;833d
	ld a,(hl)		;833e
	ld a,h			;833f
l8340h:
	ret p			;8340
	ret m			;8341
	ld a,b			;8342
	jr nz,l8312h		;8343
	jr c,l83c5h		;8345
	ld a,h			;8347
	inc a			;8348
	add hl,de		;8349
	add hl,de		;834a
	inc a			;834b
	jr c,l836dh		;834c
	rst 28h			;834e
	inc a			;834f
	ld a,h			;8350
	rst 38h			;8351
	inc a			;8352
	ld a,h			;8353
	ld a,(hl)		;8354
	nop			;8355
	nop			;8356
	ld e,07fh		;8357
	ld a,07fh		;8359
	dec a			;835b
	ld a,a			;835c
	rst 38h			;835d
	rst 8			;835e
	inc a			;835f
	ld a,h			;8360
l8361h:
	jr nc,$+126		;8361
	call m,07cfeh		;8363
	nop			;8366
	ld a,a			;8367
	jr l83e6h		;8368
l836ah:
	jr c,l83d3h		;836a
	ld h,a			;836c
l836dh:
	rst 0			;836d
	add a,e			;836e
	inc bc			;836f
	jr c,l8374h		;8370
	inc a			;8372
	ld (bc),a		;8373
l8374h:
	add a,c			;8374
	ld (bc),a		;8375
	jp 0fc8ah		;8376
	ld sp,hl		;8379
	ret p			;837a
	rrca			;837b
	rrca			;837c
	jp nz,062f6h		;837d
	ld (hl),a		;8380
l8381h:
	add a,003h		;8381
	jr c,l8340h		;8383
	add a,e			;8385
	jp 0fcf8h		;8386
	cp b			;8389
	sbc a,b			;838a
	sbc a,d			;838b
	jr l83d0h		;838c
	adc a,h			;838e
	jr l83cdh		;838f
	ccf			;8391
	rra			;8392
	ld a,a			;8393
	ld e,03ch		;8394
	ld a,a			;8396
	inc a			;8397
	ld a,a			;8398
	ccf			;8399
	ccf			;839a
l839bh:
	ret po			;839b
	rrca			;839c
	call m,060f0h		;839d
	jp m,l83fch		;83a0
	ld a,(hl)		;83a3
	ret p			;83a4
	or c			;83a5
	jr c,l8426h		;83a6
l83a8h:
	rra			;83a8
	cpl			;83a9
	ld a,b			;83aa
	rst 38h			;83ab
	rst 8			;83ac
	pop af			;83ad
	pop af			;83ae
	inc bc			;83af
	rrca			;83b0
	rra			;83b1
	ld a,a			;83b2
	ld (hl),b		;83b3
	nop			;83b4
	rst 20h			;83b5
	jp p,0dcfeh		;83b6
	and 0e8h		;83b9
	ld e,h			;83bb
	cp 002h			;83bc
	rra			;83be
	ld a,a			;83bf
	inc b			;83c0
	rst 38h			;83c1
	add a,e			;83c2
	dec de			;83c3
	ld b,b			;83c4
l83c5h:
	cp 006h			;83c5
	rst 38h			;83c7
	ld (bc),a		;83c8
	call m,0fe04h		;83c9
	sbc a,e			;83cc
l83cdh:
	ret pe			;83cd
	ret nz			;83ce
	ret p			;83cf
l83d0h:
	call m,00658h		;83d0
l83d3h:
	inc b			;83d3
	ld h,b			;83d4
	call m,07ce0h		;83d5
	inc e			;83d8
	sbc a,b			;83d9
	rst 20h			;83da
	ret po			;83db
	rst 28h			;83dc
	add a,b			;83dd
	adc a,0f0h		;83de
	ex (sp),hl		;83e0
	add hl,sp		;83e1
	inc e			;83e2
	add a,h			;83e3
	cp b			;83e4
	ld a,a			;83e5
l83e6h:
	rst 38h			;83e6
	ld b,003h		;83e7
	ret pe			;83e9
	add a,c			;83ea
	inc b			;83eb
	inc bc			;83ec
	call m,05e8dh		;83ed
	xor a			;83f0
	push hl			;83f1
	di			;83f2
	pop af			;83f3
	ret po			;83f4
	ret nz			;83f5
	nop			;83f6
	inc e			;83f7
	and 0f1h		;83f8
	ret m			;83fa
	ret nz			;83fb
l83fch:
	inc bc			;83fc
	nop			;83fd
	inc bc			;83fe
	rrca			;83ff
	adc a,c			;8400
	ret p			;8401
	ret nc			;8402
	add a,038h		;8403
	jr c,l844ah		;8405
	inc a			;8407
	inc de			;8408
	jr nz,l840fh		;8409
	rrca			;840b
	add a,c			;840c
	inc bc			;840d
	inc bc			;840e
l840fh:
	rrca			;840f
	inc bc			;8410
	ret p			;8411
	add a,d			;8412
	ld (0039eh),a		;8413
	ret p			;8416
	inc bc			;8417
	rrca			;8418
	sub d			;8419
	ld b,d			;841a
	ld a,a			;841b
	cpl			;841c
	rla			;841d
	ld l,a			;841e
	ld sp,0f083h		;841f
	ret po			;8422
	call m,07e3eh		;8423
l8426h:
	jr nc,l84a0h		;8426
	call m,00f00h		;8428
	rrca			;842b
	inc b			;842c
	ret p			;842d
	add a,(hl)		;842e
	push hl			;842f
	ex (sp),hl		;8430
	ld h,d			;8431
	ld b,d			;8432
	ld b,e			;8433
	ld b,c			;8434
	inc b			;8435
	ld b,d			;8436
	sbc a,b			;8437
	ld b,b			;8438
	ld l,b			;8439
	ld l,b			;843a
	nop			;843b
	inc c			;843c
	ld c,00fh		;843d
	jr l84afh		;843f
	ld h,06ch		;8441
	rra			;8443
	add a,(hl)		;8444
	jr c,$+126		;8445
	ld a,h			;8447
l8448h:
	nop			;8448
	ld l,(hl)		;8449
l844ah:
	rra			;844a
	add a,(hl)		;844b
	jr c,l84cah		;844c
	ld a,h			;844e
	ld bc,01809h		;844f
	inc bc			;8452
	adc a,a			;8453
	adc a,c			;8454
	ld a,a			;8455
	rra			;8456
	rra			;8457
	ret po			;8458
	xor 018h		;8459
	jr c,l8469h		;845b
	ld b,004h		;845d
	ret p			;845f
	sub h			;8460
	ld a,01ch		;8461
	ld a,03eh		;8463
	ld b,c			;8465
	dec a			;8466
	dec de			;8467
	rst 0			;8468
l8469h:
	rrca			;8469
	rrca			;846a
	ld (hl),d		;846b
	ld a,b			;846c
	inc a			;846d
	ld a,h			;846e
	inc a			;846f
	ld l,(hl)		;8470
	ld c,a			;8471
	rst 8			;8472
	ld h,b			;8473
	ld h,h			;8474
	inc b			;8475
	nop			;8476
	adc a,a			;8477
	ld a,(hl)		;8478
	inc a			;8479
	ld a,a			;847a
	inc a			;847b
	ld a,(hl)		;847c
	inc a			;847d
	inc a			;847e
	jr l8448h		;847f
	add a,e			;8481
	nop			;8482
	jr c,l84bdh		;8483
	inc a			;8485
	inc a			;8486
	inc bc			;8487
	add a,c			;8488
	add a,l			;8489
	inc a			;848a
	ld a,h			;848b
	jr c,l850ch		;848c
	inc a			;848e
	ex af,af'		;848f
	jr $-111		;8490
	jp 01fe0h		;8492
	ccf			;8495
	ccf			;8496
	ret c			;8497
	ccf			;8498
	ld c,030h		;8499
	rrca			;849b
	ret m			;849c
	call m,00ff8h		;849d
l84a0h:
	rst 38h			;84a0
	add hl,bc		;84a1
	rrca			;84a2
	add a,e			;84a3
	nop			;84a4
	cpl			;84a5
	cpl			;84a6
	ld b,00fh		;84a7
	ret nz			;84a9
	inc e			;84aa
	inc a			;84ab
	ld a,h			;84ac
	jr c,l852dh		;84ad
l84afh:
	inc e			;84af
	sbc a,b			;84b0
	ld e,b			;84b1
	ld c,038h		;84b2
	add a,(hl)		;84b4
	add a,b			;84b5
	ccf			;84b6
	ld a,a			;84b7
	dec a			;84b8
	ld a,a			;84b9
	jr c,$+128		;84ba
	ld a,h			;84bc
l84bdh:
	cp h			;84bd
	sbc a,b			;84be
	cp l			;84bf
l84c0h:
	inc a			;84c0
	add a,c			;84c1
	ld sp,07d7dh		;84c2
	jr c,l853fh		;84c5
	inc bc			;84c7
	adc a,a			;84c8
	ret m			;84c9
l84cah:
	jr l850ah		;84ca
	inc e			;84cc
	ld a,01ch		;84cd
	ld a,(hl)		;84cf
	sbc a,h			;84d0
	jp nz,0007ch		;84d1
	ld a,a			;84d4
	jr l8553h		;84d5
	jr c,l84c0h		;84d7
	rst 20h			;84d9
	add a,083h		;84da
	nop			;84dc
	jr c,l8517h		;84dd
	inc a			;84df
	inc a			;84e0
	add a,c			;84e1
	ld b,c			;84e2
	sbc a,a			;84e3
	ret nz			;84e4
	pop bc			;84e5
	ld h,e			;84e6
	ld e,03ch		;84e7
	ld a,003h		;84e9
	inc a			;84eb
	sub b			;84ec
	jp l9e03h		;84ed
	adc a,b			;84f0
	ld c,a			;84f1
	ld a,l			;84f2
	jr c,l8532h		;84f3
	ret nz			;84f5
	cp 087h			;84f6
	ret p			;84f8
	ret p			;84f9
	inc a			;84fa
	rra			;84fb
	ld a,a			;84fc
	inc bc			;84fd
	rra			;84fe
	add a,c			;84ff
	nop			;8500
	inc bc			;8501
	rrca			;8502
	adc a,(hl)		;8503
	sbc a,a			;8504
	jp m,l83fch		;8505
	ld a,(hl)		;8508
	ret p			;8509
l850ah:
	add a,c			;850a
	cp h			;850b
l850ch:
	jr c,l858ch		;850c
	ld a,a			;850e
	jr c,l858dh		;850f
	ld a,h			;8511
	inc bc			;8512
	ret p			;8513
	add a,c			;8514
	rst 0			;8515
	inc bc			;8516
l8517h:
	inc a			;8517
	add a,e			;8518
	nop			;8519
	ret po			;851a
	ret po			;851b
	dec b			;851c
	ccf			;851d
	add a,l			;851e
	add a,b			;851f
	rlca			;8520
	ret p			;8521
	inc bc			;8522
	ret m			;8523
	inc bc			;8524
	rrca			;8525
	sbc a,e			;8526
	dec h			;8527
	rrca			;8528
	inc bc			;8529
	ccf			;852a
	rst 38h			;852b
	ld sp,hl		;852c
l852dh:
	nop			;852d
	pop bc			;852e
	ex (sp),hl		;852f
	ld a,(hl)		;8530
	inc a			;8531
l8532h:
	inc a			;8532
	add a,e			;8533
	cp 01ch			;8534
	jp po,0fcfbh		;8536
	cp 0f0h			;8539
	call m,0f8f0h		;853b
	rlca			;853e
l853fh:
	ld e,02fh		;853f
	cpl			;8541
	ld b,00fh		;8542
	nop			;8544
	ld (bc),a		;8545
	ret p			;8546
	cp l			;8547
	jr nc,l858ah		;8548
	ld d,b			;854a
	ld b,e			;854b
	ld b,e			;854c
	ld d,b			;854d
	pop af			;854e
	ret p			;854f
	jr nc,l8595h		;8550
	ld d,h			;8552
l8553h:
	ld d,h			;8553
	ld b,e			;8554
	jr nc,l859ah		;8555
	ld d,b			;8557
	ld b,b			;8558
	inc sp			;8559
	inc b			;855a
	dec (hl)		;855b
	ld b,h			;855c
	ld d,e			;855d
	inc (hl)		;855e
	ld b,l			;855f
	ld e,c			;8560
	ld e,c			;8561
	ld b,l			;8562
	inc (hl)		;8563
	di			;8564
	di			;8565
	ld d,e			;8566
	ld b,b			;8567
	ccf			;8568
	ld c,a			;8569
	ld d,e			;856a
	sub h			;856b
	ld d,l			;856c
	ld c,c			;856d
	djnz l85b1h		;856e
	ld b,b			;8570
	ccf			;8571
	ccf			;8572
	ld b,e			;8573
	ld d,h			;8574
	sub l			;8575
	ld d,h			;8576
	sub l			;8577
	sub l			;8578
	ld d,h			;8579
	call p,043f4h		;857a
	ld d,h			;857d
	ld d,e			;857e
	ld c,a			;857f
	di			;8580
	di			;8581
	ld b,e			;8582
	ld d,h			;8583
	ld d,h			;8584
	dec b			;8585
	sub l			;8586
	add a,h			;8587
	ld d,h			;8588
	ld b,e			;8589
l858ah:
	ccf			;858a
	ccf			;858b
l858ch:
	inc bc			;858c
l858dh:
	sub l			;858d
	ld (bc),a		;858e
	ld d,h			;858f
	ld (bc),a		;8590
	ld b,e			;8591
	adc a,h			;8592
	ld d,h			;8593
	ret p			;8594
l8595h:
	ret p			;8595
	jr nc,l85d8h		;8596
	ld d,b			;8598
	ld b,e			;8599
l859ah:
	ld b,e			;859a
	ld d,b			;859b
	di			;859c
	ld b,e			;859d
	ld d,h			;859e
	inc b			;859f
	sub l			;85a0
	add a,d			;85a1
	ld d,h			;85a2
	ld b,e			;85a3
	inc bc			;85a4
	ld d,h			;85a5
	ld (bc),a		;85a6
	sub l			;85a7
	inc bc			;85a8
	ld d,h			;85a9
	ld (bc),a		;85aa
	sub l			;85ab
	add a,d			;85ac
	ld d,h			;85ad
	ld b,e			;85ae
	inc bc			;85af
	ccf			;85b0
l85b1h:
	add a,e			;85b1
	ld b,e			;85b2
	sub h			;85b3
	ld d,h			;85b4
	dec b			;85b5
	ld b,e			;85b6
	sub d			;85b7
	ld d,h			;85b8
	ld b,e			;85b9
	ld b,e			;85ba
	di			;85bb
	di			;85bc
	call p,05443h		;85bd
	ld d,h			;85c0
	sub l			;85c1
	sub l			;85c2
	ld d,h			;85c3
	ld d,h			;85c4
	ld b,e			;85c5
	ccf			;85c6
	ccf			;85c7
	ld b,e			;85c8
	push af			;85c9
	inc b			;85ca
	sub l			;85cb
	xor (hl)		;85cc
	ld d,h			;85cd
	ld b,e			;85ce
	djnz l85f2h		;85cf
	di			;85d1
	call p,04935h		;85d2
	ld d,l			;85d5
	sub h			;85d6
	sub h			;85d7
l85d8h:
	sub l			;85d8
	sub l			;85d9
	ld d,h			;85da
	ld b,e			;85db
	ccf			;85dc
	ccf			;85dd
	ld b,e			;85de
	ld b,e			;85df
	ld d,h			;85e0
	sub l			;85e1
	sub l			;85e2
	ld d,h			;85e3
	ld b,e			;85e4
	ccf			;85e5
	call p,09595h		;85e6
	ld d,h			;85e9
	ld b,e			;85ea
	ccf			;85eb
	ccf			;85ec
	ld b,e			;85ed
	ld d,h			;85ee
	sub h			;85ef
	sub l			;85f0
	ld d,h			;85f1
l85f2h:
	ld b,e			;85f2
	di			;85f3
	ld c,a			;85f4
	ld d,h			;85f5
	sub l			;85f6
	ld b,e			;85f7
	ld d,h			;85f8
	sub l			;85f9
	sub l			;85fa
	inc bc			;85fb
	ld d,h			;85fc
	xor 043h		;85fd
	ret p			;85ff
	ret p			;8600
	jr nc,l8643h		;8601
	ld d,b			;8603
	ld b,e			;8604
	ld b,e			;8605
	ld d,h			;8606
	ld b,e			;8607
	ld d,h			;8608
	dec (hl)		;8609
	ld c,c			;860a
	ld d,e			;860b
	sub h			;860c
	ld d,l			;860d
	ld c,c			;860e
	ld c,c			;860f
	sub l			;8610
	ld d,h			;8611
	ld b,e			;8612
	ccf			;8613
	ccf			;8614
	ld b,e			;8615
	ld d,h			;8616
	di			;8617
	inc (hl)		;8618
	ld b,l			;8619
	sub l			;861a
	sub l			;861b
	ld d,h			;861c
	ld b,e			;861d
	ld b,e			;861e
	djnz l8630h		;861f
	di			;8621
	inc (hl)		;8622
	ld b,l			;8623
	ld e,c			;8624
	ld e,c			;8625
	ld b,l			;8626
	ret p			;8627
	ld bc,01020h		;8628
	di			;862b
	inc (hl)		;862c
	sub l			;862d
	sub l			;862e
	ld b,h			;862f
l8630h:
	sub l			;8630
	sub l			;8631
	ld d,h			;8632
	ld b,e			;8633
	ccf			;8634
	ccf			;8635
	ld b,e			;8636
	sub h			;8637
	ld d,h			;8638
	ld d,h			;8639
	sub h			;863a
	ld d,h			;863b
	ld b,e			;863c
	ld b,e			;863d
	di			;863e
	ld d,h			;863f
	sub l			;8640
	ld d,h			;8641
	ld b,e			;8642
l8643h:
	di			;8643
	di			;8644
	inc (hl)		;8645
	ld d,h			;8646
	sub l			;8647
	sub l			;8648
	ld d,h			;8649
	ld b,e			;864a
	di			;864b
	ld c,a			;864c
	ld d,h			;864d
	sub l			;864e
	sub l			;864f
	ld d,h			;8650
	ld b,e			;8651
	ld b,e			;8652
	sub l			;8653
	ld d,h			;8654
	ld b,e			;8655
	ld d,e			;8656
	ld d,e			;8657
	sub h			;8658
	ld d,l			;8659
	ld c,c			;865a
	dec (hl)		;865b
	inc b			;865c
	inc bc			;865d
	ld b,b			;865e
	sub h			;865f
	ld d,h			;8660
	ld d,h			;8661
	sub h			;8662
	ld d,h			;8663
	ld b,e			;8664
	ld b,e			;8665
	ld d,e			;8666
	ld b,e			;8667
	sub h			;8668
	ld d,h			;8669
	ld d,h			;866a
	sub e			;866b
	inc bc			;866c
	ld b,e			;866d
	add a,c			;866e
	ld d,h			;866f
	rlca			;8670
	ld b,e			;8671
	sub b			;8672
	sub h			;8673
	ld d,e			;8674
	di			;8675
	ld b,e			;8676
	ld d,h			;8677
	sub l			;8678
	sub l			;8679
	ld d,h			;867a
	ld b,e			;867b
	ld b,e			;867c
	ld d,e			;867d
	ld d,h			;867e
	ld b,e			;867f
	ld b,e			;8680
	ld d,e			;8681
	ld d,h			;8682
	ld b,043h		;8683
	ld (bc),a		;8685
	ld d,h			;8686
	rrca			;8687
	ld b,e			;8688
	add a,c			;8689
	ld d,h			;868a
	dec b			;868b
	ld b,e			;868c
	add a,l			;868d
	sub l			;868e
	ld d,h			;868f
	ld d,h			;8690
	ld b,e			;8691
	ld d,h			;8692
	inc bc			;8693
	sub l			;8694
	add a,l			;8695
	ld d,h			;8696
	ld b,e			;8697
	ccf			;8698
	ld b,e			;8699
	ld b,e			;869a
	inc bc			;869b
	ld d,h			;869c
	inc b			;869d
	sub l			;869e
	sub h			;869f
	ld d,h			;86a0
	ld b,e			;86a1
	di			;86a2
	ld b,e			;86a3
	ld d,h			;86a4
	ld d,h			;86a5
	ld b,e			;86a6
	ld d,h			;86a7
	ld d,e			;86a8
	ld b,e			;86a9
	ld d,h			;86aa
	sub l			;86ab
	ld d,h			;86ac
	ld b,e			;86ad
l86aeh:
	ld d,e			;86ae
	ld b,e			;86af
	ld d,e			;86b0
	sub l			;86b1
	sub l			;86b2
	ld d,h			;86b3
	inc bc			;86b4
	ld b,e			;86b5
	add a,c			;86b6
	sub l			;86b7
	rlca			;86b8
	ld d,h			;86b9
	ld (bc),a		;86ba
	di			;86bb
	add a,e			;86bc
	ld b,e			;86bd
	ld d,h			;86be
	ld d,h			;86bf
	inc bc			;86c0
	sub l			;86c1
	inc b			;86c2
	ld b,e			;86c3
	ld (bc),a		;86c4
	ld d,h			;86c5
	ld (bc),a		;86c6
	sub l			;86c7
	ld (bc),a		;86c8
	di			;86c9
	add a,d			;86ca
	ld b,e			;86cb
	ld d,h			;86cc
	ld b,095h		;86cd
	ld (bc),a		;86cf
	ld d,h			;86d0
	ld (bc),a		;86d1
	ld b,e			;86d2
	ld (bc),a		;86d3
	call p,05403h		;86d4
	adc a,(hl)		;86d7
	sub h			;86d8
	ld d,h			;86d9
	ld b,e			;86da
	ccf			;86db
	ccf			;86dc
	ld b,e			;86dd
	ld d,h			;86de
	sub l			;86df
	sub l			;86e0
	ld d,h			;86e1
	ld b,e			;86e2
	ld b,e			;86e3
	ld d,h			;86e4
	di			;86e5
	inc bc			;86e6
	call p,0f38bh		;86e7
	ld b,e			;86ea
	ld d,h			;86eb
	sub l			;86ec
	ld b,e			;86ed
	ld d,h			;86ee
	sub l			;86ef
	ld d,h			;86f0
	ld d,h			;86f1
	ld d,e			;86f2
	ld d,h			;86f3
	rlca			;86f4
	sub l			;86f5
	ld (bc),a		;86f6
	ld d,h			;86f7
	inc bc			;86f8
	sub l			;86f9
	ld (bc),a		;86fa
	ld d,h			;86fb
	add a,e			;86fc
	ld c,a			;86fd
	di			;86fe
	ld b,e			;86ff
	inc bc			;8700
	sub l			;8701
	add a,(hl)		;8702
	ld d,h			;8703
	ld b,e			;8704
	ld b,e			;8705
	di			;8706
	call p,00843h		;8707
	ld d,h			;870a
	add a,a			;870b
	ld b,e			;870c
	ld d,e			;870d
	ld d,e			;870e
	ld d,h			;870f
	ld d,h			;8710
	sub l			;8711
	sub l			;8712
	rlca			;8713
	ld d,h			;8714
	add a,c			;8715
	ld d,e			;8716
	jr l86aeh		;8717
	ld (bc),a		;8719
	ld d,h			;871a
	inc b			;871b
	sub l			;871c
	inc b			;871d
	ld d,h			;871e
	ld (bc),a		;871f
	ld b,e			;8720
	inc bc			;8721
	ld d,h			;8722
	add a,c			;8723
	ld d,e			;8724
	dec b			;8725
	ld d,h			;8726
	adc a,b			;8727
	ld d,e			;8728
	ld b,e			;8729
	ld b,e			;872a
	ld d,h			;872b
	ld d,h			;872c
	ld b,e			;872d
	ccf			;872e
	ccf			;872f
	inc bc			;8730
	jr nc,$+18		;8731
	ld b,e			;8733
	and e			;8734
	ld d,e			;8735
	ld c,a			;8736
	ccf			;8737
	ccf			;8738
	ld b,e			;8739
	ld d,h			;873a
	ld d,h			;873b
	sub l			;873c
	ret p			;873d
	ret p			;873e
	pop af			;873f
	ret p			;8740
	ld sp,05040h		;8741
	ld b,e			;8744
	ret p			;8745
l8746h:
	jr nc,l878bh		;8746
	ld d,h			;8748
	ld d,h			;8749
	ld b,e			;874a
	ccf			;874b
	ret p			;874c
	jp p,04330h		;874d
	ld d,h			;8750
	ld d,h			;8751
	ld b,e			;8752
	jr nc,l8746h		;8753
	ld b,e			;8755
	ld d,h			;8756
	ld d,h			;8757
	inc b			;8758
	ld b,e			;8759
	ld (bc),a		;875a
	ld d,h			;875b
	inc bc			;875c
	sub l			;875d
	add a,c			;875e
	ld d,h			;875f
	inc bc			;8760
	ld b,e			;8761
	ld (bc),a		;8762
	sub l			;8763
	add a,(hl)		;8764
	ld d,h			;8765
	ld b,e			;8766
	jr nc,l87a9h		;8767
	ld d,d			;8769
	sub c			;876a
	ld b,090h		;876b
	sub a			;876d
	ld d,b			;876e
	ld b,e			;876f
	djnz l8781h		;8770
	rrca			;8772
	sub b			;8773
	ld b,c			;8774
	ld (04350h),a		;8775
	ld b,e			;8778
	sub h			;8779
	ld d,h			;877a
	ld d,h			;877b
	sub h			;877c
	ld d,h			;877d
	ld b,e			;877e
	ld b,e			;877f
	sub h			;8780
l8781h:
	ld d,h			;8781
	ld d,h			;8782
	sub h			;8783
	ld d,h			;8784
	inc bc			;8785
	ld b,e			;8786
	add a,l			;8787
	ld d,b			;8788
	ld d,c			;8789
	ld d,d			;878a
l878bh:
	ld d,c			;878b
	ld d,b			;878c
	inc bc			;878d
	ld e,a			;878e
	sub h			;878f
	call p,04935h		;8790
	ld d,e			;8793
	sub e			;8794
	ld d,h			;8795
	ld d,h			;8796
	ld b,e			;8797
	ld d,b			;8798
	sub b			;8799
	ld d,e			;879a
	ld d,h			;879b
	ld d,e			;879c
	sub h			;879d
	ld d,l			;879e
	ld c,c			;879f
	ld b,e			;87a0
	sub h			;87a1
	ld d,h			;87a2
	ld b,e			;87a3
	inc bc			;87a4
	di			;87a5
	adc a,h			;87a6
	sub e			;87a7
	ld d,e			;87a8
l87a9h:
	ld b,h			;87a9
	sub l			;87aa
	ld d,h			;87ab
	sub b			;87ac
	ld d,h			;87ad
	ld b,e			;87ae
	ld d,e			;87af
	ld d,h			;87b0
	ld b,e			;87b1
	ld d,e			;87b2
	dec b			;87b3
	ld b,e			;87b4
	ld (bc),a		;87b5
	sub l			;87b6
	ld (bc),a		;87b7
	ld d,h			;87b8
	add a,h			;87b9
	ld b,e			;87ba
	ld b,b			;87bb
	ld e,a			;87bc
	sub c			;87bd
	inc bc			;87be
	ld d,h			;87bf
	add a,a			;87c0
	sub h			;87c1
	ld d,h			;87c2
	ld b,e			;87c3
	ccf			;87c4
	ccf			;87c5
	inc (hl)		;87c6
	ld b,l			;87c7
	inc bc			;87c8
	sub l			;87c9
	ld (bc),a		;87ca
	ld d,h			;87cb
	adc a,l			;87cc
	ld d,e			;87cd
	sub c			;87ce
	sub b			;87cf
	sub b			;87d0
	sbc a,a			;87d1
	sub c			;87d2
	sub c			;87d3
	ret po			;87d4
	ld sp,hl		;87d5
	sub l			;87d6
	sub l			;87d7
	ld d,h			;87d8
	ld b,e			;87d9
	inc bc			;87da
	di			;87db
	add a,l			;87dc
	ld b,e			;87dd
	sub l			;87de
	sub l			;87df
	ld d,h			;87e0
	ld b,e			;87e1
	inc bc			;87e2
	di			;87e3
	sub d			;87e4
	inc (hl)		;87e5
	dec (hl)		;87e6
	ld c,c			;87e7
	ld d,l			;87e8
	sub h			;87e9
	ld d,e			;87ea
	ld c,a			;87eb
	ccf			;87ec
	ccf			;87ed
	djnz l87ffh		;87ee
	rrca			;87f0
	call p,04935h		;87f1
	ld d,l			;87f4
	sub h			;87f5
	ld d,h			;87f6
	inc bc			;87f7
	sub l			;87f8
	ld (bc),a		;87f9
	ld d,h			;87fa
	ld (bc),a		;87fb
	ld b,e			;87fc
	add a,e			;87fd
	ld d,e			;87fe
l87ffh:
	di			;87ff
l8800h:
	ld b,e			;8800
	inc bc			;8801
	ld d,h			;8802
	inc bc			;8803
	sub l			;8804
	inc b			;8805
	ld d,h			;8806
	ld (bc),a		;8807
	ld b,e			;8808
	add a,c			;8809
	di			;880a
	inc b			;880b
	ld d,h			;880c
	add a,c			;880d
	ld b,e			;880e
	inc bc			;880f
	di			;8810
	add a,d			;8811
	sub e			;8812
	ld d,h			;8813
	inc bc			;8814
	sub l			;8815
	inc bc			;8816
	ld d,h			;8817
	ld (bc),a		;8818
	sub l			;8819
	ld (bc),a		;881a
	ld d,h			;881b
	ld (bc),a		;881c
	ld b,e			;881d
	ld (bc),a		;881e
	call p,05403h		;881f
	add a,l			;8822
	sub h			;8823
	ld d,h			;8824
	ld b,e			;8825
	ccf			;8826
	ccf			;8827
	inc b			;8828
	ld b,e			;8829
	adc a,b			;882a
	di			;882b
	ld b,e			;882c
	ld d,h			;882d
	sub l			;882e
	ld d,h			;882f
	ld b,e			;8830
	ccf			;8831
	ccf			;8832
	ld b,054h		;8833
	sbc a,b			;8835
	ld b,e			;8836
	di			;8837
	di			;8838
	ei			;8839
	bit 5,h			;883a
	sub l			;883c
	sub l			;883d
	ld d,h			;883e
	ld d,h			;883f
	ld b,e			;8840
	ccf			;8841
	ccf			;8842
	ei			;8843
	ld b,l			;8844
	ld e,c			;8845
	ld e,c			;8846
	ld d,h			;8847
	ld b,e			;8848
	ld b,e			;8849
	di			;884a
	ei			;884b
	di			;884c
	ld b,e			;884d
	inc bc			;884e
	ld d,h			;884f
	inc bc			;8850
	sub l			;8851
	sub a			;8852
	add a,0bch		;8853
	ei			;8855
	cp c			;8856
	ld d,h			;8857
	ld b,e			;8858
	ccf			;8859
	ccf			;885a
	bit 5,h			;885b
	ld l,h			;885d
	res 7,a			;885e
	di			;8860
	inc (hl)		;8861
	ld d,h			;8862
	set 0,(hl)		;8863
	add a,0cbh		;8865
	ei			;8867
	ld c,a			;8868
	ld d,h			;8869
	rlca			;886a
	sub l			;886b
	add a,l			;886c
	ld d,h			;886d
	ld b,e			;886e
	di			;886f
	di			;8870
	inc (hl)		;8871
	dec b			;8872
	ld d,h			;8873
	inc bc			;8874
	sub l			;8875
	ld (bc),a		;8876
	ld d,h			;8877
	ld (bc),a		;8878
	ld b,e			;8879
	adc a,c			;887a
	ld d,h			;887b
	djnz l888dh		;887c
	rrca			;887e
	call p,04935h		;887f
	ld d,l			;8882
	sub h			;8883
	nop			;8884
	sub b			;8885
	ld a,a			;8886
	rrca			;8887
	dec b			;8888
	ld (hl),l		;8889
	dec sp			;888a
	add a,e			;888b
	ret po			;888c
l888dh:
	ret po			;888d
	cp 03ch			;888e
	ld a,(hl)		;8890
	jr nc,l890bh		;8891
	call m,00f00h		;8893
	nop			;8896
	add a,e			;8897
	ld b,e			;8898
	ld d,h			;8899
	ld d,h			;889a
	inc b			;889b
	ld b,e			;889c
	ld (bc),a		;889d
	ld d,h			;889e
	inc bc			;889f
	sub l			;88a0
	add a,c			;88a1
	ld d,h			;88a2
	inc bc			;88a3
	ld b,e			;88a4
	nop			;88a5
	sub b			;88a6
	rst 38h			;88a7
	nop			;88a8
	cp 078h			;88a9
	jr nc,l892bh		;88ab
	inc a			;88ad
	ld a,(hl)		;88ae
	call m,0011fh		;88af
	call po,0d0f8h		;88b2
	call nz,000e8h		;88b5
	ld (bc),a		;88b8
	di			;88b9
	add a,d			;88ba
	ld b,e			;88bb
	ld d,h			;88bc
	inc bc			;88bd
	sub l			;88be
	add a,h			;88bf
	ld d,h			;88c0
	ret p			;88c1
	di			;88c2
	di			;88c3
	dec b			;88c4
	ld b,e			;88c5
	nop			;88c6
	add a,c			;88c7
	ret po			;88c8
	inc b			;88c9
	rra			;88ca
	adc a,e			;88cb
	ret nz			;88cc
	rrca			;88cd
	rra			;88ce
	rlca			;88cf
	ret m			;88d0
	call m,03ff8h		;88d1
	ret nz			;88d4
	rrca			;88d5
	rst 38h			;88d6
	nop			;88d7
	ld (bc),a		;88d8
	sub l			;88d9
	add a,d			;88da
	ld d,h			;88db
	ld b,e			;88dc
	inc bc			;88dd
	ccf			;88de
	adc a,c			;88df
	ld b,e			;88e0
	sub l			;88e1
	sub l			;88e2
	ld d,h			;88e3
	ld b,e			;88e4
	di			;88e5
	di			;88e6
	ld b,e			;88e7
	ld b,e			;88e8
	nop			;88e9
	ld (bc),a		;88ea
	rst 20h			;88eb
	ld (bc),a		;88ec
	jp 07885h		;88ed
	ld a,03fh		;88f0
	ccf			;88f2
	pop af			;88f3
	rlca			;88f4
	ret p			;88f5
	ld (bc),a		;88f6
	sbc a,c			;88f7
	adc a,a			;88f8
	inc a			;88f9
	ld a,(hl)		;88fa
	jr c,$+126		;88fb
	ld a,(hl)		;88fd
	ld a,(hl)		;88fe
	ld a,03eh		;88ff
	inc e			;8901
	ld a,(hl)		;8902
	ld a,(hl)		;8903
	inc e			;8904
	inc a			;8905
	inc a			;8906
	add a,b			;8907
	inc bc			;8908
	inc a			;8909
l890ah:
	sbc a,c			;890a
l890bh:
	jr l8949h		;890b
	inc a			;890d
	ccf			;890e
	rst 20h			;890f
	rst 20h			;8910
	inc a			;8911
	ld a,(hl)		;8912
	jr c,$+126		;8913
	ld a,h			;8915
	inc a			;8916
	rst 38h			;8917
	ret p			;8918
	ld c,01ch		;8919
	ld a,(hl)		;891b
	inc a			;891c
	jr c,l8997h		;891d
	jr c,l895dh		;891f
	jr c,l89a1h		;8921
	ld (hl),b		;8923
	inc bc			;8924
	rrca			;8925
	add a,h			;8926
	cp 0e0h			;8927
	rlca			;8929
	ccf			;892a
l892bh:
	inc bc			;892b
	ret po			;892c
	add a,c			;892d
	inc bc			;892e
	inc b			;892f
	rrca			;8930
	inc bc			;8931
	ret p			;8932
	add a,c			;8933
	ret nz			;8934
	nop			;8935
	inc bc			;8936
	push af			;8937
	adc a,h			;8938
	ld c,c			;8939
	sub l			;893a
	sub l			;893b
	ld d,h			;893c
	ld b,e			;893d
	call p,0f4f3h		;893e
	dec (hl)		;8941
	ld c,c			;8942
	ld d,l			;8943
	sub h			;8944
	inc b			;8945
	ld d,e			;8946
	add a,c			;8947
	ld d,h			;8948
l8949h:
	rlca			;8949
	sub l			;894a
	inc bc			;894b
	ld d,h			;894c
	add a,c			;894d
	ld b,e			;894e
	inc bc			;894f
	ccf			;8950
	add a,d			;8951
	ld b,e			;8952
	ld d,h			;8953
	inc bc			;8954
	sub l			;8955
	add a,l			;8956
	ld d,h			;8957
	ld sp,hl		;8958
	ld sp,hl		;8959
	ld d,e			;895a
	ld d,h			;895b
	inc b			;895c
l895dh:
	sub l			;895d
	ld (bc),a		;895e
	di			;895f
	add a,(hl)		;8960
	ld b,e			;8961
	ld d,h			;8962
	ld d,h			;8963
	sub l			;8964
	sub l			;8965
	ld d,h			;8966
	inc bc			;8967
	sub l			;8968
	ld (bc),a		;8969
	ld d,h			;896a
	sub e			;896b
	call p,0cfb3h		;896c
	ld d,h			;896f
	ld d,h			;8970
	call p,0fbf4h		;8971
	cp h			;8974
	add a,0c6h		;8975
	call p,0cbbfh		;8977
	ld l,h			;897a
	ld l,h			;897b
	res 6,l			;897c
	ld sp,hl		;897e
	nop			;897f
	sub d			;8980
	ld a,(hl)		;8981
	jr c,l890ah		;8982
	add a,b			;8984
	ccf			;8985
	ld a,a			;8986
	dec a			;8987
	ld a,a			;8988
	jr l89c9h		;8989
	inc e			;898b
	ld a,01ch		;898c
	nop			;898e
	nop			;898f
	in a,(0e1h)		;8990
	pop hl			;8992
	dec b			;8993
	rra			;8994
	add a,c			;8995
	rrca			;8996
l8997h:
	nop			;8997
	ld (bc),a		;8998
	di			;8999
	add a,c			;899a
	ld b,e			;899b
	inc bc			;899c
	ld d,h			;899d
	ld (bc),a		;899e
	sub l			;899f
	add a,d			;89a0
l89a1h:
	ld d,e			;89a1
	ld d,h			;89a2
	dec b			;89a3
	sub l			;89a4
	adc a,c			;89a5
	ld d,h			;89a6
	ei			;89a7
	cp h			;89a8
	call m,0ccb6h		;89a9
	ld l,e			;89ac
	rst 8			;89ad
	or e			;89ae
	nop			;89af
	sub c			;89b0
	ld a,a			;89b1
	dec a			;89b2
	ld a,a			;89b3
	ccf			;89b4
	add a,b			;89b5
	add a,(hl)		;89b6
	jr c,l8a37h		;89b7
	in a,(0ffh)		;89b9
	rst 38h			;89bb
	inc e			;89bc
	ld a,01ch		;89bd
	ld a,018h		;89bf
	rrca			;89c1
	dec b			;89c2
	ret po			;89c3
	ld (bc),a		;89c4
	ld e,000h		;89c5
	ld (bc),a		;89c7
	sub l			;89c8
l89c9h:
	inc bc			;89c9
	ld d,h			;89ca
	add a,e			;89cb
	ld b,e			;89cc
	di			;89cd
	di			;89ce
	inc bc			;89cf
	ld d,h			;89d0
	inc bc			;89d1
	sub l			;89d2
	adc a,d			;89d3
	ld d,h			;89d4
	ld d,e			;89d5
	or e			;89d6
	call m,0ccb6h		;89d7
	ld l,e			;89da
	rst 8			;89db
	res 7,a			;89dc
	nop			;89de
	sub d			;89df
	ld a,01fh		;89e0
	ret nz			;89e2
	ret m			;89e3
	cp 007h			;89e4
	ret nz			;89e6
	ret po			;89e7
	jr l8a68h		;89e8
	inc a			;89ea
	ld a,(hl)		;89eb
	jp 00ffch		;89ec
	ret m			;89ef
	ld (hl),b		;89f0
	ld (hl),b		;89f1
	inc bc			;89f2
	ret p			;89f3
	ld (bc),a		;89f4
	rrca			;89f5
	add a,c			;89f6
	rlca			;89f7
	dec b			;89f8
	ret p			;89f9
	add a,e			;89fa
	ld sp,hl		;89fb
	rst 38h			;89fc
	ret po			;89fd
	inc bc			;89fe
	ret p			;89ff
	add a,l			;8a00
	ld b,b			;8a01
	ccf			;8a02
	ret p			;8a03
	ret po			;8a04
	ret po			;8a05
	inc bc			;8a06
	ret p			;8a07
	dec b			;8a08
	rrca			;8a09
	adc a,e			;8a0a
l8a0bh:
	ret po			;8a0b
	ld bc,0ffffh		;8a0c
	rra			;8a0f
	rra			;8a10
	call m,0e13fh		;8a11
	add a,b			;8a14
	ld bc,00f03h		;8a15
	and (hl)		;8a18
	call m,0fef0h		;8a19
	rra			;8a1c
	ret p			;8a1d
	ret p			;8a1e
	rrca			;8a1f
	ccf			;8a20
	pop hl			;8a21
	ret nz			;8a22
	ret nz			;8a23
	ret p			;8a24
	rst 38h			;8a25
	inc bc			;8a26
	nop			;8a27
	ret nz			;8a28
	ret p			;8a29
	ret m			;8a2a
	ret po			;8a2b
	ret p			;8a2c
	ret p			;8a2d
	ret nz			;8a2e
	ret po			;8a2f
	ld a,a			;8a30
	jr nz,$-30		;8a31
	ret p			;8a33
	rrca			;8a34
	rrca			;8a35
	ret po			;8a36
l8a37h:
	ret po			;8a37
	rrca			;8a38
	rrca			;8a39
	ret p			;8a3a
	rlca			;8a3b
	ret po			;8a3c
	call m,0040fh		;8a3d
	rlca			;8a40
	sbc a,d			;8a41
	ret p			;8a42
	call m,00f3fh		;8a43
	jp 0c3ffh		;8a46
	jr l8a0bh		;8a49
	pop hl			;8a4b
	ccf			;8a4c
	ccf			;8a4d
	ld a,l			;8a4e
	add a,b			;8a4f
	ret p			;8a50
	ld a,a			;8a51
	call m,0cffch		;8a52
	rrca			;8a55
	inc bc			;8a56
	cp 0f0h			;8a57
	nop			;8a59
	ret p			;8a5a
	ret p			;8a5b
	inc bc			;8a5c
	ret m			;8a5d
	adc a,b			;8a5e
	ret p			;8a5f
	ccf			;8a60
	ret p			;8a61
	ret p			;8a62
	rrca			;8a63
	inc b			;8a64
	inc e			;8a65
	ret m			;8a66
	inc bc			;8a67
l8a68h:
	rrca			;8a68
	nop			;8a69
	add a,d			;8a6a
	ld d,h			;8a6b
	ld b,e			;8a6c
	inc bc			;8a6d
	di			;8a6e
	sbc a,b			;8a6f
	ei			;8a70
	set 1,e			;8a71
	sub l			;8a73
	ld d,h			;8a74
	ld d,h			;8a75
	ld b,e			;8a76
	di			;8a77
	call m,0c6cbh		;8a78
	ld d,h			;8a7b
	ld c,a			;8a7c
	ei			;8a7d
	cp h			;8a7e
	add a,0c6h		;8a7f
	call m,0b6fbh		;8a81
	call z,0cf6bh		;8a84
	cp a			;8a87
	inc bc			;8a88
	di			;8a89
	sub b			;8a8a
	add a,0bch		;8a8b
	ld e,e			;8a8d
	ld d,h			;8a8e
	call p,0f4f3h		;8a8f
	ld b,l			;8a92
	push af			;8a93
	cp a			;8a94
	set 1,e			;8a95
	or h			;8a97
	ld c,a			;8a98
	di			;8a99
	inc (hl)		;8a9a
	inc bc			;8a9b
	rlc d			;8a9c
	ld l,h			;8a9e
	add a,e			;8a9f
	rst 8			;8aa0
	ei			;8aa1
	ei			;8aa2
	inc b			;8aa3
	add a,081h		;8aa4
	cp h			;8aa6
	inc bc			;8aa7
	ei			;8aa8
	adc a,d			;8aa9
	set 0,(hl)		;8aaa
	res 7,a			;8aac
	cp a			;8aae
	set 0,(hl)		;8aaf
	add a,0b4h		;8ab1
l8ab3h:
	or l			;8ab3
	inc bc			;8ab4
	ei			;8ab5
	inc bc			;8ab6
	res 2,b			;8ab7
	ld d,h			;8ab9
	ld b,e			;8aba
	or l			;8abb
	ld sp,hl		;8abc
	push af			;8abd
	ei			;8abe
	ei			;8abf
	or h			;8ac0
	ld d,h			;8ac1
	ld d,h			;8ac2
	ld b,e			;8ac3
	ld d,e			;8ac4
	ld b,e			;8ac5
	ld b,e			;8ac6
	ld d,h			;8ac7
	ld d,h			;8ac8
	inc bc			;8ac9
	call m,0f388h		;8aca
	call p,04435h		;8acd
	ld d,e			;8ad0
	ei			;8ad1
	ei			;8ad2
l8ad3h:
	call m,0fb04h		;8ad3
	adc a,(hl)		;8ad6
	set 0,(hl)		;8ad7
	add a,0cbh		;8ad9
	rst 38h			;8adb
	and (hl)		;8adc
	or 0fch			;8add
	call m,0cbcbh		;8adf
	or e			;8ae2
	ei			;8ae3
	add a,003h		;8ae4
	res 2,b			;8ae6
	or l			;8ae8
	or h			;8ae9
	or e			;8aea
	call p,0b4b5h		;8aeb
	ei			;8aee
	di			;8aef
	ld b,e			;8af0
l8af1h:
	ld b,e			;8af1
	sub l			;8af2
	sub l			;8af3
	sub h			;8af4
	push af			;8af5
	ccf			;8af6
	ld b,e			;8af7
	nop			;8af8
	add a,e			;8af9
	rst 38h			;8afa
	ret nz			;8afb
	cp a			;8afc
	inc bc			;8afd
	ret po			;8afe
	adc a,a			;8aff
	sbc a,a			;8b00
	ret po			;8b01
	jp 0f03fh		;8b02
	ret p			;8b05
	ret m			;8b06
	ret m			;8b07
	rlca			;8b08
	rlca			;8b09
	rra			;8b0a
	rra			;8b0b
	ld h,b			;8b0c
	ret po			;8b0d
	rst 38h			;8b0e
	inc bc			;8b0f
	ret po			;8b10
	ld (bc),a		;8b11
	ret m			;8b12
	inc bc			;8b13
	rlca			;8b14
	inc bc			;8b15
	ret p			;8b16
	add a,c			;8b17
	ld a,a			;8b18
	inc b			;8b19
	ret po			;8b1a
	sub e			;8b1b
	ccf			;8b1c
	add a,b			;8b1d
	rst 38h			;8b1e
	rst 38h			;8b1f
	nop			;8b20
	nop			;8b21
	rst 38h			;8b22
	rst 38h			;8b23
	nop			;8b24
	nop			;8b25
	rst 38h			;8b26
	jp 0007eh		;8b27
	inc c			;8b2a
	inc bc			;8b2b
	inc a			;8b2c
	inc a			;8b2d
	add a,e			;8b2e
	inc b			;8b2f
	jr c,l8ab3h		;8b30
	ccf			;8b32
	inc bc			;8b33
	rrca			;8b34
	ld (bc),a		;8b35
	ret po			;8b36
	inc b			;8b37
	inc a			;8b38
	add a,e			;8b39
	adc a,a			;8b3a
	ret p			;8b3b
	ccf			;8b3c
	ld b,00fh		;8b3d
	adc a,c			;8b3f
	rlca			;8b40
	call m,01ffch		;8b41
	ret p			;8b44
	ld bc,0c3fdh		;8b45
	inc bc			;8b48
	dec b			;8b49
	jp 0f083h		;8b4a
	ld b,e			;8b4d
	inc e			;8b4e
	inc b			;8b4f
	jr c,l8ad3h		;8b50
	ld a,a			;8b52
	inc bc			;8b53
	rrca			;8b54
	adc a,b			;8b55
	ld h,e			;8b56
	ld a,03ch		;8b57
	ld h,b			;8b59
	rst 20h			;8b5a
	rlca			;8b5b
	inc a			;8b5c
	inc a			;8b5d
	inc b			;8b5e
	rrca			;8b5f
	add a,(hl)		;8b60
	nop			;8b61
l8b62h:
	rrca			;8b62
	rrca			;8b63
	rlca			;8b64
	jp 0037eh		;8b65
	jp 03083h		;8b68
	ld c,0feh		;8b6b
	inc b			;8b6d
	jr c,l8af1h		;8b6e
	ccf			;8b70
	inc b			;8b71
	rrca			;8b72
	adc a,b			;8b73
	ret po			;8b74
	ld e,001h		;8b75
	jr c,$-31		;8b77
	rst 0			;8b79
	rst 0			;8b7a
	ccf			;8b7b
	rlca			;8b7c
	rrca			;8b7d
	add a,l			;8b7e
	inc bc			;8b7f
	inc c			;8b80
	djnz l8b62h		;8b81
	nop			;8b83
	inc bc			;8b84
	inc a			;8b85
	sub b			;8b86
	ld bc,018f8h		;8b87
	ld h,b			;8b8a
	add a,b			;8b8b
	jp 0c3ffh		;8b8c
	adc a,a			;8b8f
	add a,b			;8b90
	inc a			;8b91
	inc a			;8b92
	ld bc,0c3bdh		;8b93
	add a,e			;8b96
	nop			;8b97
	inc bc			;8b98
	call m,0fba3h		;8b99
	cp h			;8b9c
	add a,0c6h		;8b9d
	set 6,e			;8b9f
	call m,0bffch		;8ba1
	bit 5,h			;8ba4
	ld l,h			;8ba6
	set 1,e			;8ba7
	ld l,h			;8ba9
	ld l,h			;8baa
	set 7,e			;8bab
	ei			;8bad
	cp h			;8bae
	add a,0cbh		;8baf
	ld l,h			;8bb1
	ld l,h			;8bb2
	res 7,a			;8bb3
	cp a			;8bb5
	bit 5,h			;8bb6
	call m,034f3h		;8bb8
	ld b,l			;8bbb
	ld e,c			;8bbc
	ld b,e			;8bbd
	inc b			;8bbe
	di			;8bbf
	ld (bc),a		;8bc0
	ld d,h			;8bc1
	ld (bc),a		;8bc2
	sub h			;8bc3
	inc bc			;8bc4
	di			;8bc5
	ld (bc),a		;8bc6
	ret p			;8bc7
	and c			;8bc8
	ld h,c			;8bc9
	ld h,d			;8bca
	djnz l8bdch		;8bcb
	rrca			;8bcd
	sub l			;8bce
	ld d,h			;8bcf
	ld b,e			;8bd0
	ccf			;8bd1
	ret p			;8bd2
	or (hl)			;8bd3
	ld h,b			;8bd4
	or c			;8bd5
	or 060h			;8bd6
	djnz l8bfbh		;8bd8
	djnz l8bebh		;8bda
l8bdch:
	or 0f6h			;8bdc
	ret p			;8bde
	or (hl)			;8bdf
	ld h,b			;8be0
	or b			;8be1
	inc c			;8be2
	or b			;8be3
	add a,0b0h		;8be4
	call m,0c206h		;8be6
	ld h,b			;8be9
	inc bc			;8bea
l8bebh:
	ret p			;8beb
	adc a,0f1h		;8bec
	di			;8bee
	ret p			;8bef
	ld bc,00112h		;8bf0
	or 0f0h			;8bf3
	ld h,b			;8bf5
	sub l			;8bf6
	ld d,h			;8bf7
	ld b,e			;8bf8
	ccf			;8bf9
	ret p			;8bfa
l8bfbh:
	or b			;8bfb
	ld h,(hl)		;8bfc
	or b			;8bfd
	ld h,b			;8bfe
	djnz l8c22h		;8bff
	ld h,c			;8c01
	or 060h			;8c02
	djnz $+35		;8c04
	ret p			;8c06
	or (hl)			;8c07
	ld h,b			;8c08
	cp h			;8c09
	or b			;8c0a
	or b			;8c0b
	add a,0b0h		;8c0c
	di			;8c0e
	ret p			;8c0f
	ret p			;8c10
	ld bc,06102h		;8c11
l8c14h:
	ld h,b			;8c14
	or 095h			;8c15
	ld d,h			;8c17
	ld b,e			;8c18
	ccf			;8c19
	ret p			;8c1a
	or c			;8c1b
	ld h,b			;8c1c
	or (hl)			;8c1d
	nop			;8c1e
	ld h,c			;8c1f
	ld h,d			;8c20
l8c21h:
	ld h,c			;8c21
l8c22h:
	djnz l8c14h		;8c22
	ret p			;8c24
	ld bc,0b0f0h		;8c25
	ld h,b			;8c28
	or (hl)			;8c29
	nop			;8c2a
	or c			;8c2b
	ret nz			;8c2c
	or (hl)			;8c2d
	ld h,d			;8c2e
	ld h,c			;8c2f
	ld h,b			;8c30
	or 020h			;8c31
	jr nz,l8c45h		;8c33
	rrca			;8c35
	rrca			;8c36
	or 061h			;8c37
	ld h,d			;8c39
	ld h,c			;8c3a
	inc bc			;8c3b
	ret p			;8c3c
	add a,h			;8c3d
	add a,061h		;8c3e
	jr nz,l8c52h		;8c40
	inc b			;8c42
	ret p			;8c43
	nop			;8c44
l8c45h:
	xor b			;8c45
	rla			;8c46
	inc hl			;8c47
	dec bc			;8c48
	rra			;8c49
	daa			;8c4a
	add a,b			;8c4b
	ret m			;8c4c
	ccf			;8c4d
	inc a			;8c4e
	inc a			;8c4f
	ld a,(hl)		;8c50
	inc c			;8c51
l8c52h:
	ld e,07fh		;8c52
	add a,e			;8c54
	add a,e			;8c55
	inc a			;8c56
	inc a			;8c57
	ld a,(hl)		;8c58
	jr nc,l8cd3h		;8c59
	cp 0c1h			;8c5b
	rst 38h			;8c5d
	ccf			;8c5e
	ret m			;8c5f
	add a,b			;8c60
	daa			;8c61
	rra			;8c62
	dec bc			;8c63
	inc hl			;8c64
	rla			;8c65
	rst 38h			;8c66
	nop			;8c67
	ld a,a			;8c68
	ld e,00ch		;8c69
	ld a,(hl)		;8c6b
	inc a			;8c6c
	ld a,(hl)		;8c6d
	nop			;8c6e
	dec b			;8c6f
	ld b,e			;8c70
	ld (bc),a		;8c71
	di			;8c72
	add a,d			;8c73
	ret p			;8c74
	ld d,h			;8c75
	inc bc			;8c76
	sub l			;8c77
	add a,l			;8c78
	ld d,h			;8c79
	ld b,e			;8c7a
	ld b,e			;8c7b
	rst 38h			;8c7c
	ld d,h			;8c7d
	inc bc			;8c7e
	sub l			;8c7f
	add a,a			;8c80
	ld d,h			;8c81
	ld b,e			;8c82
	ld b,e			;8c83
	ret p			;8c84
	ret p			;8c85
	di			;8c86
	di			;8c87
	dec b			;8c88
	ld b,e			;8c89
	ld (bc),a		;8c8a
	di			;8c8b
	add a,d			;8c8c
l8c8dh:
	ld b,e			;8c8d
	ld d,h			;8c8e
	inc bc			;8c8f
	sub l			;8c90
	add a,c			;8c91
	ld d,h			;8c92
	nop			;8c93
	add a,c			;8c94
	rst 38h			;8c95
	ld b,00fh		;8c96
	sub e			;8c98
	ret m			;8c99
	ld a,(hl)		;8c9a
	jp 01881h		;8c9b
	jr l8c21h		;8c9e
	jp 0e07eh		;8ca0
	call m,0f0e7h		;8ca3
	ret p			;8ca6
	rst 20h			;8ca7
	call m,0ffe0h		;8ca8
	nop			;8cab
	inc b			;8cac
	jp po,00002h		;8cad
	rlca			;8cb0
	rrca			;8cb1
	add a,d			;8cb2
	ret p			;8cb3
	rrca			;8cb4
	ld b,0f0h		;8cb5
	add a,e			;8cb7
	rrca			;8cb8
	ret nz			;8cb9
	rra			;8cba
	inc b			;8cbb
	rrca			;8cbc
	add a,h			;8cbd
	rra			;8cbe
	ret nz			;8cbf
	nop			;8cc0
	nop			;8cc1
	inc bc			;8cc2
	rst 38h			;8cc3
	ld (bc),a		;8cc4
	nop			;8cc5
	ld (bc),a		;8cc6
	rst 38h			;8cc7
	ld b,0f0h		;8cc8
	add a,d			;8cca
	rst 28h			;8ccb
	rst 20h			;8ccc
	inc bc			;8ccd
	defb 0fdh,087h,0ffh ;illegal sequence	;8cce
	cp a			;8cd1
	cp a			;8cd2
l8cd3h:
	adc a,a			;8cd3
	inc bc			;8cd4
	add a,a			;8cd5
	rst 20h			;8cd6
	inc b			;8cd7
	rst 0			;8cd8
	add a,(hl)		;8cd9
	ex (sp),hl		;8cda
	rra			;8cdb
	rra			;8cdc
	ld a,a			;8cdd
	rst 38h			;8cde
	rst 38h			;8cdf
	inc bc			;8ce0
	rst 20h			;8ce1
	add a,d			;8ce2
	rst 38h			;8ce3
	nop			;8ce4
	inc b			;8ce5
	ret m			;8ce6
	adc a,h			;8ce7
	cp 0ffh			;8ce8
	ret nz			;8cea
	ret nz			;8ceb
	ret po			;8cec
	ret m			;8ced
	rst 38h			;8cee
	ccf			;8cef
	ret po			;8cf0
	ret po			;8cf1
	rlca			;8cf2
	call m,0f804h		;8cf3
	ld (bc),a		;8cf6
	rra			;8cf7
	nop			;8cf8
	ld (bc),a		;8cf9
	di			;8cfa
	adc a,l			;8cfb
	inc (hl)		;8cfc
	ld b,l			;8cfd
	ld b,l			;8cfe
	inc (hl)		;8cff
	di			;8d00
	di			;8d01
	set 0,(hl)		;8d02
	add a,0a6h		;8d04
	and (hl)		;8d06
	add a,0c6h		;8d07
	inc bc			;8d09
	rlc h			;8d0a
	add a,002h		;8d0c
	rlc d			;8d0e
	ei			;8d10
	adc a,h			;8d11
	bit 5,h			;8d12
	ld l,h			;8d14
	set 1,e			;8d15
	rst 38h			;8d17
	ld b,e			;8d18
	ld d,h			;8d19
	ld b,e			;8d1a
	cp a			;8d1b
	ccf			;8d1c
	ld c,e			;8d1d
	inc b			;8d1e
	ld d,h			;8d1f
	sub c			;8d20
	ld b,e			;8d21
	add hl,sp		;8d22
	dec (hl)		;8d23
	ld b,e			;8d24
	ld d,h			;8d25
	ld d,h			;8d26
	di			;8d27
	ld b,e			;8d28
	ld d,h			;8d29
	sub l			;8d2a
	sub l			;8d2b
	ld d,h			;8d2c
	ld b,e			;8d2d
	di			;8d2e
	di			;8d2f
	ld d,h			;8d30
	ld d,h			;8d31
	inc bc			;8d32
	sub l			;8d33
	ld (bc),a		;8d34
	inc (hl)		;8d35
	ld (bc),a		;8d36
	di			;8d37
	add a,l			;8d38
	call p,0f5f5h		;8d39
	call p,003f3h		;8d3c
	rst 30h			;8d3f
	add a,c			;8d40
	cp 005h			;8d41
	rst 30h			;8d43
	adc a,c			;8d44
	jp p,0f0f1h		;8d45
	ret p			;8d48
	jp p,0f1f2h		;8d49
	ret p			;8d4c
	add a,004h		;8d4d
	di			;8d4f
	adc a,b			;8d50
	rst 30h			;8d51
	cp 0feh			;8d52
	cp a			;8d54
	cp a			;8d55
	di			;8d56
	call p,003f5h		;8d57
	di			;8d5a
	dec b			;8d5b
	rst 30h			;8d5c
	adc a,e			;8d5d
	ei			;8d5e
	bit 5,h			;8d5f
	rst 30h			;8d61
	ld (hl),e		;8d62
	ld (hl),e		;8d63
	ld (hl),l		;8d64
	call p,0fbf3h		;8d65
	rlc b			;8d68
	sub h			;8d6a
	ld a,01fh		;8d6b
	ret nz			;8d6d
	ret m			;8d6e
	cp 007h			;8d6f
	ret nz			;8d71
	ret po			;8d72
	jr l8df3h		;8d73
	inc a			;8d75
	ld a,(hl)		;8d76
	jp 00ffch		;8d77
	rlca			;8d7a
	ld e,007h		;8d7b
	rlca			;8d7d
	ccf			;8d7e
	inc bc			;8d7f
	ret po			;8d80
	add a,l			;8d81
	inc bc			;8d82
	inc e			;8d83
	ccf			;8d84
	ld a,07fh		;8d85
	inc b			;8d87
	ret p			;8d88
	add a,c			;8d89
	dec h			;8d8a
	inc bc			;8d8b
	rrca			;8d8c
	add a,a			;8d8d
	ret m			;8d8e
	call m,0070fh		;8d8f
	add a,b			;8d92
	ret nz			;8d93
	ret nz			;8d94
	inc bc			;8d95
	ccf			;8d96
	ld (bc),a		;8d97
	ret po			;8d98
	add a,c			;8d99
	nop			;8d9a
	dec b			;8d9b
	ret po			;8d9c
	add a,d			;8d9d
	rra			;8d9e
	ret p			;8d9f
	nop			;8da0
	add a,d			;8da1
	ld d,h			;8da2
	ld b,e			;8da3
	inc b			;8da4
	di			;8da5
	ld (bc),a		;8da6
	ld b,e			;8da7
	sub d			;8da8
	sub l			;8da9
	ld d,h			;8daa
	ld d,h			;8dab
	ld b,e			;8dac
	di			;8dad
	call p,05443h		;8dae
	ld d,h			;8db1
	ld b,e			;8db2
	call p,0f3f4h		;8db3
	inc (hl)		;8db6
	ld b,l			;8db7
	ld b,l			;8db8
	ld b,e			;8db9
	ld b,e			;8dba
	inc bc			;8dbb
	ld d,h			;8dbc
	sbc a,b			;8dbd
	ld e,a			;8dbe
	ld b,e			;8dbf
	call p,05495h		;8dc0
	ld c,a			;8dc3
	di			;8dc4
	ld b,e			;8dc5
	ld d,h			;8dc6
	ld d,h			;8dc7
	ld b,e			;8dc8
	ld d,h			;8dc9
	ld b,e			;8dca
	ccf			;8dcb
	ccf			;8dcc
	ld b,e			;8dcd
	ld d,h			;8dce
	ld d,h			;8dcf
	ld b,e			;8dd0
	ld b,e			;8dd1
	call p,04435h		;8dd2
	ld d,e			;8dd5
	inc bc			;8dd6
	ld b,e			;8dd7
	nop			;8dd8
	inc bc			;8dd9
	inc a			;8dda
	sub l			;8ddb
	nop			;8ddc
	jp l87ffh		;8ddd
	ld (hl),b		;8de0
	ld a,01fh		;8de1
	ret nz			;8de3
	ret m			;8de4
	cp 007h			;8de5
	ld (hl),b		;8de7
	inc e			;8de8
	jr l8e69h		;8de9
	inc a			;8deb
	ld a,(hl)		;8dec
	jp 03dfch		;8ded
	nop			;8df0
	dec b			;8df1
	rrca			;8df2
l8df3h:
	add a,e			;8df3
	ld sp,hl		;8df4
	rst 38h			;8df5
	ret po			;8df6
	nop			;8df7
	adc a,d			;8df8
	djnz $+35		;8df9
	djnz l8e0dh		;8dfb
	ret p			;8dfd
	ret p			;8dfe
	call p,05454h		;8dff
	ld b,e			;8e02
	inc bc			;8e03
	di			;8e04
	adc a,b			;8e05
	ret p			;8e06
	djnz l8e19h		;8e07
	sub l			;8e09
	ld d,h			;8e0a
	ld d,h			;8e0b
	ld b,e			;8e0c
l8e0dh:
	di			;8e0d
	inc bc			;8e0e
	ret p			;8e0f
	add a,l			;8e10
	ld d,b			;8e11
	ld b,h			;8e12
	dec (hl)		;8e13
	call p,003f3h		;8e14
	ret p			;8e17
	nop			;8e18
l8e19h:
	ld (bc),a		;8e19
	pop hl			;8e1a
	ld b,01fh		;8e1b
	inc bc			;8e1d
	rrca			;8e1e
	add a,c			;8e1f
	jr c,l8e25h		;8e20
	inc a			;8e22
	adc a,e			;8e23
	nop			;8e24
l8e25h:
	ld a,l			;8e25
	jr c,l8e65h		;8e26
	ret nz			;8e28
	cp 087h			;8e29
	ret p			;8e2b
	ret p			;8e2c
	ret po			;8e2d
	ret po			;8e2e
	inc bc			;8e2f
	ccf			;8e30
	ld (bc),a		;8e31
	ret nz			;8e32
	add a,l			;8e33
	add a,b			;8e34
	ret m			;8e35
	rrca			;8e36
	call m,003f8h		;8e37
	rrca			;8e3a
	add a,c			;8e3b
	dec h			;8e3c
	nop			;8e3d
	sub e			;8e3e
	di			;8e3f
	inc (hl)		;8e40
	call p,04435h		;8e41
	ld d,e			;8e44
	ld c,a			;8e45
	inc sp			;8e46
	ld d,h			;8e47
	ld b,e			;8e48
	ccf			;8e49
	sub e			;8e4a
	ld d,h			;8e4b
	ld b,e			;8e4c
	ccf			;8e4d
	ccf			;8e4e
	ld d,h			;8e4f
	ld d,h			;8e50
	ld b,e			;8e51
	inc bc			;8e52
	di			;8e53
	sub d			;8e54
	ld b,e			;8e55
	ld d,h			;8e56
	ld b,e			;8e57
	ld d,h			;8e58
	ld d,h			;8e59
	ld b,e			;8e5a
	ccf			;8e5b
	ccf			;8e5c
	ld b,e			;8e5d
	ld d,h			;8e5e
	or h			;8e5f
	ld d,h			;8e60
	ld d,h			;8e61
	ld b,e			;8e62
	di			;8e63
	ld c,a			;8e64
l8e65h:
	ld d,h			;8e65
	sub l			;8e66
	nop			;8e67
	rst 38h			;8e68
l8e69h:
	rst 38h			;8e69
	rst 38h			;8e6a
	rst 38h			;8e6b
	rst 38h			;8e6c
	rst 38h			;8e6d
	rst 38h			;8e6e
	rst 38h			;8e6f
	rst 38h			;8e70
	rst 38h			;8e71
	rst 38h			;8e72
	rst 38h			;8e73
	rst 38h			;8e74
	rst 38h			;8e75
	rst 38h			;8e76
	rst 38h			;8e77
	rst 38h			;8e78
	rst 38h			;8e79
	rst 38h			;8e7a
	rst 38h			;8e7b
	rst 38h			;8e7c
	rst 38h			;8e7d
	rst 38h			;8e7e
	rst 38h			;8e7f
	rst 38h			;8e80
	rst 38h			;8e81
	rst 38h			;8e82
	rst 38h			;8e83
	rst 38h			;8e84
	rst 38h			;8e85
	rst 38h			;8e86
	rst 38h			;8e87
	rst 38h			;8e88
	rst 38h			;8e89
	rst 38h			;8e8a
	rst 38h			;8e8b
	rst 38h			;8e8c
	rst 38h			;8e8d
	rst 38h			;8e8e
	rst 38h			;8e8f
	rst 38h			;8e90
	rst 38h			;8e91
	rst 38h			;8e92
	rst 38h			;8e93
	rst 38h			;8e94
	rst 38h			;8e95
	rst 38h			;8e96
	rst 38h			;8e97
	rst 38h			;8e98
	rst 38h			;8e99
	rst 38h			;8e9a
	rst 38h			;8e9b
	rst 38h			;8e9c
	rst 38h			;8e9d
	rst 38h			;8e9e
	rst 38h			;8e9f
	rst 38h			;8ea0
	rst 38h			;8ea1
	rst 38h			;8ea2
	rst 38h			;8ea3
	rst 38h			;8ea4
	rst 38h			;8ea5
	rst 38h			;8ea6
	rst 38h			;8ea7
	rst 38h			;8ea8
	rst 38h			;8ea9
	rst 38h			;8eaa
	rst 38h			;8eab
	rst 38h			;8eac
	rst 38h			;8ead
	rst 38h			;8eae
	rst 38h			;8eaf
	rst 38h			;8eb0
	rst 38h			;8eb1
	rst 38h			;8eb2
	rst 38h			;8eb3
	rst 38h			;8eb4
	rst 38h			;8eb5
	rst 38h			;8eb6
	rst 38h			;8eb7
	rst 38h			;8eb8
	rst 38h			;8eb9
	rst 38h			;8eba
	rst 38h			;8ebb
	rst 38h			;8ebc
	rst 38h			;8ebd
	rst 38h			;8ebe
	rst 38h			;8ebf
	rst 38h			;8ec0
	rst 38h			;8ec1
	rst 38h			;8ec2
	rst 38h			;8ec3
	rst 38h			;8ec4
	rst 38h			;8ec5
	rst 38h			;8ec6
	rst 38h			;8ec7
	rst 38h			;8ec8
	rst 38h			;8ec9
	rst 38h			;8eca
	rst 38h			;8ecb
	rst 38h			;8ecc
	rst 38h			;8ecd
	rst 38h			;8ece
	rst 38h			;8ecf
	rst 38h			;8ed0
	rst 38h			;8ed1
	rst 38h			;8ed2
	rst 38h			;8ed3
	rst 38h			;8ed4
	rst 38h			;8ed5
	rst 38h			;8ed6
	rst 38h			;8ed7
	rst 38h			;8ed8
	rst 38h			;8ed9
	rst 38h			;8eda
	rst 38h			;8edb
	rst 38h			;8edc
	rst 38h			;8edd
	rst 38h			;8ede
	rst 38h			;8edf
	rst 38h			;8ee0
	rst 38h			;8ee1
	rst 38h			;8ee2
	rst 38h			;8ee3
	rst 38h			;8ee4
	rst 38h			;8ee5
	rst 38h			;8ee6
	rst 38h			;8ee7
	rst 38h			;8ee8
	rst 38h			;8ee9
	rst 38h			;8eea
	rst 38h			;8eeb
	rst 38h			;8eec
	rst 38h			;8eed
	rst 38h			;8eee
	rst 38h			;8eef
	rst 38h			;8ef0
	rst 38h			;8ef1
	rst 38h			;8ef2
	rst 38h			;8ef3
	rst 38h			;8ef4
	rst 38h			;8ef5
	rst 38h			;8ef6
	rst 38h			;8ef7
	rst 38h			;8ef8
	rst 38h			;8ef9
	rst 38h			;8efa
	rst 38h			;8efb
	rst 38h			;8efc
	rst 38h			;8efd
	rst 38h			;8efe
	rst 38h			;8eff
	rst 38h			;8f00
	rst 38h			;8f01
	rst 38h			;8f02
	rst 38h			;8f03
	rst 38h			;8f04
	rst 38h			;8f05
	rst 38h			;8f06
	rst 38h			;8f07
	rst 38h			;8f08
	rst 38h			;8f09
	rst 38h			;8f0a
	rst 38h			;8f0b
	rst 38h			;8f0c
	rst 38h			;8f0d
	rst 38h			;8f0e
	rst 38h			;8f0f
	rst 38h			;8f10
	rst 38h			;8f11
	rst 38h			;8f12
	rst 38h			;8f13
	rst 38h			;8f14
	rst 38h			;8f15
	rst 38h			;8f16
	rst 38h			;8f17
	rst 38h			;8f18
	rst 38h			;8f19
	rst 38h			;8f1a
	rst 38h			;8f1b
	rst 38h			;8f1c
	rst 38h			;8f1d
	rst 38h			;8f1e
	rst 38h			;8f1f
	rst 38h			;8f20
	rst 38h			;8f21
	rst 38h			;8f22
	rst 38h			;8f23
	rst 38h			;8f24
	rst 38h			;8f25
	rst 38h			;8f26
	rst 38h			;8f27
	rst 38h			;8f28
	rst 38h			;8f29
	rst 38h			;8f2a
	rst 38h			;8f2b
	rst 38h			;8f2c
	rst 38h			;8f2d
	rst 38h			;8f2e
	rst 38h			;8f2f
	rst 38h			;8f30
	rst 38h			;8f31
	rst 38h			;8f32
	rst 38h			;8f33
	rst 38h			;8f34
	rst 38h			;8f35
	rst 38h			;8f36
	rst 38h			;8f37
	rst 38h			;8f38
	rst 38h			;8f39
	rst 38h			;8f3a
	rst 38h			;8f3b
	rst 38h			;8f3c
	rst 38h			;8f3d
	rst 38h			;8f3e
	rst 38h			;8f3f
	rst 38h			;8f40
	rst 38h			;8f41
	rst 38h			;8f42
	rst 38h			;8f43
	rst 38h			;8f44
	rst 38h			;8f45
	rst 38h			;8f46
	rst 38h			;8f47
	rst 38h			;8f48
	rst 38h			;8f49
	rst 38h			;8f4a
	rst 38h			;8f4b
	rst 38h			;8f4c
	rst 38h			;8f4d
	rst 38h			;8f4e
	rst 38h			;8f4f
	rst 38h			;8f50
	rst 38h			;8f51
	rst 38h			;8f52
	rst 38h			;8f53
	rst 38h			;8f54
	rst 38h			;8f55
	rst 38h			;8f56
	rst 38h			;8f57
	rst 38h			;8f58
	rst 38h			;8f59
	rst 38h			;8f5a
	rst 38h			;8f5b
	rst 38h			;8f5c
	rst 38h			;8f5d
	rst 38h			;8f5e
	rst 38h			;8f5f
	rst 38h			;8f60
	rst 38h			;8f61
	rst 38h			;8f62
	rst 38h			;8f63
	rst 38h			;8f64
	rst 38h			;8f65
	rst 38h			;8f66
	rst 38h			;8f67
	rst 38h			;8f68
	rst 38h			;8f69
	rst 38h			;8f6a
	rst 38h			;8f6b
	rst 38h			;8f6c
	rst 38h			;8f6d
	rst 38h			;8f6e
	rst 38h			;8f6f
	rst 38h			;8f70
	rst 38h			;8f71
	rst 38h			;8f72
	rst 38h			;8f73
	rst 38h			;8f74
	rst 38h			;8f75
	rst 38h			;8f76
	rst 38h			;8f77
	rst 38h			;8f78
	rst 38h			;8f79
	rst 38h			;8f7a
	rst 38h			;8f7b
	rst 38h			;8f7c
	rst 38h			;8f7d
	rst 38h			;8f7e
	rst 38h			;8f7f
	rst 38h			;8f80
	rst 38h			;8f81
	rst 38h			;8f82
	rst 38h			;8f83
	rst 38h			;8f84
	rst 38h			;8f85
	rst 38h			;8f86
	rst 38h			;8f87
	rst 38h			;8f88
	rst 38h			;8f89
	rst 38h			;8f8a
	rst 38h			;8f8b
	rst 38h			;8f8c
	rst 38h			;8f8d
	rst 38h			;8f8e
	rst 38h			;8f8f
	rst 38h			;8f90
	rst 38h			;8f91
	rst 38h			;8f92
	rst 38h			;8f93
	rst 38h			;8f94
	rst 38h			;8f95
	rst 38h			;8f96
	rst 38h			;8f97
	rst 38h			;8f98
	rst 38h			;8f99
	rst 38h			;8f9a
	rst 38h			;8f9b
	rst 38h			;8f9c
	rst 38h			;8f9d
	rst 38h			;8f9e
	rst 38h			;8f9f
	rst 38h			;8fa0
	rst 38h			;8fa1
	rst 38h			;8fa2
	rst 38h			;8fa3
	rst 38h			;8fa4
	rst 38h			;8fa5
	rst 38h			;8fa6
	rst 38h			;8fa7
	rst 38h			;8fa8
	rst 38h			;8fa9
	rst 38h			;8faa
	rst 38h			;8fab
	rst 38h			;8fac
	rst 38h			;8fad
	rst 38h			;8fae
	rst 38h			;8faf
	rst 38h			;8fb0
	rst 38h			;8fb1
	rst 38h			;8fb2
	rst 38h			;8fb3
	rst 38h			;8fb4
	rst 38h			;8fb5
	rst 38h			;8fb6
	rst 38h			;8fb7
	rst 38h			;8fb8
	rst 38h			;8fb9
	rst 38h			;8fba
	rst 38h			;8fbb
	rst 38h			;8fbc
	rst 38h			;8fbd
	rst 38h			;8fbe
	rst 38h			;8fbf
	rst 38h			;8fc0
	rst 38h			;8fc1
	rst 38h			;8fc2
	rst 38h			;8fc3
	rst 38h			;8fc4
	rst 38h			;8fc5
	rst 38h			;8fc6
	rst 38h			;8fc7
	rst 38h			;8fc8
	rst 38h			;8fc9
	rst 38h			;8fca
	rst 38h			;8fcb
	rst 38h			;8fcc
	rst 38h			;8fcd
	rst 38h			;8fce
	rst 38h			;8fcf
	rst 38h			;8fd0
	rst 38h			;8fd1
	rst 38h			;8fd2
	rst 38h			;8fd3
	rst 38h			;8fd4
	rst 38h			;8fd5
	rst 38h			;8fd6
	rst 38h			;8fd7
	rst 38h			;8fd8
	rst 38h			;8fd9
	rst 38h			;8fda
	rst 38h			;8fdb
	rst 38h			;8fdc
	rst 38h			;8fdd
	rst 38h			;8fde
	rst 38h			;8fdf
	rst 38h			;8fe0
	rst 38h			;8fe1
	rst 38h			;8fe2
	rst 38h			;8fe3
	rst 38h			;8fe4
	rst 38h			;8fe5
	rst 38h			;8fe6
	rst 38h			;8fe7
	rst 38h			;8fe8
	rst 38h			;8fe9
	rst 38h			;8fea
	rst 38h			;8feb
	rst 38h			;8fec
	rst 38h			;8fed
	rst 38h			;8fee
	rst 38h			;8fef
	rst 38h			;8ff0
	rst 38h			;8ff1
	rst 38h			;8ff2
	rst 38h			;8ff3
	rst 38h			;8ff4
	rst 38h			;8ff5
	rst 38h			;8ff6
	rst 38h			;8ff7
	rst 38h			;8ff8
	rst 38h			;8ff9
	rst 38h			;8ffa
	rst 38h			;8ffb
	rst 38h			;8ffc
	rst 38h			;8ffd
	rst 38h			;8ffe
	rst 38h			;8fff
	nop			;9000
	nop			;9001
	nop			;9002
	nop			;9003
	nop			;9004
	nop			;9005
	nop			;9006
	nop			;9007
	nop			;9008
	nop			;9009
	nop			;900a
	nop			;900b
	nop			;900c
	nop			;900d
	nop			;900e
	nop			;900f
	nop			;9010
	nop			;9011
	nop			;9012
	nop			;9013
	nop			;9014
	nop			;9015
	nop			;9016
	nop			;9017
	nop			;9018
	nop			;9019
	nop			;901a
	nop			;901b
	nop			;901c
	nop			;901d
	nop			;901e
	nop			;901f
	nop			;9020
	nop			;9021
	nop			;9022
	nop			;9023
	nop			;9024
	nop			;9025
	nop			;9026
	nop			;9027
	nop			;9028
	nop			;9029
	nop			;902a
	nop			;902b
	nop			;902c
	nop			;902d
	nop			;902e
	nop			;902f
	nop			;9030
	nop			;9031
	nop			;9032
	nop			;9033
	ld bc,00200h		;9034
	nop			;9037
	nop			;9038
	nop			;9039
	scf			;903a
	nop			;903b
	jr c,l903eh		;903c
l903eh:
	add hl,sp		;903e
	nop			;903f
	nop			;9040
	nop			;9041
	ld e,a			;9042
	ld bc,00160h		;9043
	ld h,c			;9046
	ld bc,00162h		;9047
	ld h,e			;904a
	ld bc,00164h		;904b
	ld h,l			;904e
	ld bc,00166h		;904f
	ld h,a			;9052
	ld bc,00168h		;9053
	ld l,c			;9056
	ld bc,00166h		;9057
	ld h,a			;905a
	ld bc,0016ah		;905b
	ld l,e			;905e
	ld bc,00169h		;905f
	ld l,h			;9062
	ld bc,0016dh		;9063
	ld l,(hl)		;9066
	ld bc,0016fh		;9067
	nop			;906a
	nop			;906b
	nop			;906c
	nop			;906d
	nop			;906e
	nop			;906f
	nop			;9070
	nop			;9071
	inc bc			;9072
	nop			;9073
	inc b			;9074
	nop			;9075
	dec b			;9076
	nop			;9077
	nop			;9078
	nop			;9079
	adc a,e			;907a
	nop			;907b
	inc (hl)		;907c
	nop			;907d
	nop			;907e
	nop			;907f
	nop			;9080
	nop			;9081
	ld (hl),b		;9082
	ld bc,00171h		;9083
	ld (hl),d		;9086
	ld bc,00173h		;9087
	ld (hl),h		;908a
	ld bc,00175h		;908b
	halt			;908e
	ld bc,00177h		;908f
	ld a,b			;9092
	ld bc,00179h		;9093
	ld a,d			;9096
	ld bc,0017bh		;9097
	ld a,h			;909a
	ld bc,0017dh		;909b
	ld a,(hl)		;909e
	ld bc,0017fh		;909f
	nop			;90a2
	ld (bc),a		;90a3
	ld bc,00202h		;90a4
	ld (bc),a		;90a7
	inc bc			;90a8
	ld (bc),a		;90a9
	nop			;90aa
	nop			;90ab
	nop			;90ac
	nop			;90ad
	nop			;90ae
	nop			;90af
	ld b,000h		;90b0
	rlca			;90b2
	nop			;90b3
	ex af,af'		;90b4
	nop			;90b5
	nop			;90b6
	nop			;90b7
	nop			;90b8
	nop			;90b9
	dec (hl)		;90ba
	nop			;90bb
	ld (hl),000h		;90bc
	nop			;90be
	nop			;90bf
	nop			;90c0
	nop			;90c1
	inc b			;90c2
	ld (bc),a		;90c3
	dec b			;90c4
	ld (bc),a		;90c5
	ld b,002h		;90c6
	rlca			;90c8
	ld (bc),a		;90c9
	ex af,af'		;90ca
	ld (bc),a		;90cb
	add hl,bc		;90cc
	ld (bc),a		;90cd
	ld a,(bc)		;90ce
	ld (bc),a		;90cf
	dec bc			;90d0
	ld (bc),a		;90d1
	inc c			;90d2
	ld (bc),a		;90d3
	dec c			;90d4
	ld (bc),a		;90d5
	ld c,002h		;90d6
	rrca			;90d8
	ld (bc),a		;90d9
	djnz $+4		;90da
	ld de,01202h		;90dc
	ld (bc),a		;90df
	inc de			;90e0
	ld (bc),a		;90e1
	inc d			;90e2
	ld (bc),a		;90e3
	dec d			;90e4
	ld (bc),a		;90e5
	ld d,002h		;90e6
	rla			;90e8
	ld (bc),a		;90e9
	nop			;90ea
	nop			;90eb
	add hl,bc		;90ec
	nop			;90ed
	ld a,(bc)		;90ee
	nop			;90ef
	dec bc			;90f0
	nop			;90f1
	inc c			;90f2
	nop			;90f3
	dec c			;90f4
	nop			;90f5
	nop			;90f6
	nop			;90f7
	nop			;90f8
	nop			;90f9
	jr nc,l90fch		;90fa
l90fch:
	ld sp,00000h		;90fc
	nop			;90ff
	nop			;9100
	nop			;9101
	jr l9106h		;9102
	add hl,de		;9104
	ld (bc),a		;9105
l9106h:
	ld a,(de)		;9106
	ld (bc),a		;9107
	dec de			;9108
	ld (bc),a		;9109
	inc e			;910a
	ld (bc),a		;910b
	dec e			;910c
	ld (bc),a		;910d
	ld e,002h		;910e
	rra			;9110
	ld (bc),a		;9111
	add hl,de		;9112
	ld (bc),a		;9113
	jr nz,$+4		;9114
	ld hl,02202h		;9116
	ld (bc),a		;9119
	inc hl			;911a
	ld (bc),a		;911b
	inc h			;911c
	ld (bc),a		;911d
	dec h			;911e
	ld (bc),a		;911f
	ld h,002h		;9120
	daa			;9122
	ld (bc),a		;9123
	jr z,l9128h		;9124
	add hl,hl		;9126
	ld (bc),a		;9127
l9128h:
	ld hl,(00e02h)		;9128
	nop			;912b
	rrca			;912c
	nop			;912d
	djnz l9130h		;912e
l9130h:
	ld de,01200h		;9130
	nop			;9133
	inc de			;9134
	nop			;9135
	inc d			;9136
	nop			;9137
	dec d			;9138
	nop			;9139
	ld (03300h),a		;913a
	nop			;913d
	nop			;913e
	nop			;913f
	nop			;9140
	nop			;9141
	dec hl			;9142
	ld (bc),a		;9143
	inc l			;9144
	ld (bc),a		;9145
	dec l			;9146
	ld (bc),a		;9147
	ld l,002h		;9148
	cpl			;914a
	ld (bc),a		;914b
	jr nc,$+4		;914c
	ld sp,03202h		;914e
	ld (bc),a		;9151
	inc sp			;9152
	ld (bc),a		;9153
	inc (hl)		;9154
	ld (bc),a		;9155
	dec (hl)		;9156
	ld (bc),a		;9157
	ld (hl),002h		;9158
	scf			;915a
	ld (bc),a		;915b
	jr c,l9160h		;915c
	add hl,sp		;915e
	ld (bc),a		;915f
l9160h:
	ld a,(03b02h)		;9160
	ld (bc),a		;9163
	inc a			;9164
	ld (bc),a		;9165
	dec a			;9166
	ld (bc),a		;9167
	ld a,002h		;9168
	ld d,000h		;916a
	rla			;916c
	nop			;916d
	jr l9170h		;916e
l9170h:
	add hl,de		;9170
	nop			;9171
	ld a,(de)		;9172
	nop			;9173
	dec de			;9174
	nop			;9175
	nop			;9176
	nop			;9177
	nop			;9178
	nop			;9179
	nop			;917a
	nop			;917b
	ld hl,(08c00h)		;917c
	nop			;917f
	nop			;9180
	nop			;9181
	ccf			;9182
	ld (bc),a		;9183
	ld b,b			;9184
	ld (bc),a		;9185
	ld b,c			;9186
	ld (bc),a		;9187
	ld b,d			;9188
	ld (bc),a		;9189
	ld b,e			;918a
	ld (bc),a		;918b
	ld b,h			;918c
	ld (bc),a		;918d
	ld b,l			;918e
	ld (bc),a		;918f
	ld b,(hl)		;9190
	ld (bc),a		;9191
	ld b,a			;9192
	ld (bc),a		;9193
	ld c,b			;9194
	ld (bc),a		;9195
	ld c,c			;9196
	ld (bc),a		;9197
	ld c,d			;9198
	ld (bc),a		;9199
	ld c,e			;919a
	ld (bc),a		;919b
	ld c,h			;919c
	ld (bc),a		;919d
	ld c,l			;919e
	ld (bc),a		;919f
	ld c,(hl)		;91a0
	ld (bc),a		;91a1
	ld c,a			;91a2
	ld (bc),a		;91a3
	ld d,b			;91a4
	ld (bc),a		;91a5
	ld c,c			;91a6
	ld (bc),a		;91a7
	ld d,c			;91a8
	ld (bc),a		;91a9
	nop			;91aa
	nop			;91ab
	nop			;91ac
	nop			;91ad
	nop			;91ae
	nop			;91af
	inc e			;91b0
	nop			;91b1
	dec e			;91b2
	nop			;91b3
	ld e,000h		;91b4
	nop			;91b6
	nop			;91b7
	nop			;91b8
	nop			;91b9
	dec hl			;91ba
	nop			;91bb
	inc l			;91bc
	nop			;91bd
	dec l			;91be
	nop			;91bf
	nop			;91c0
	nop			;91c1
	ld d,d			;91c2
	ld (bc),a		;91c3
	ld d,e			;91c4
	ld (bc),a		;91c5
	ld d,h			;91c6
	ld (bc),a		;91c7
	ld d,l			;91c8
	ld (bc),a		;91c9
	ld d,(hl)		;91ca
	ld (bc),a		;91cb
	ld d,a			;91cc
	ld (bc),a		;91cd
	ld e,b			;91ce
	ld (bc),a		;91cf
	ld e,c			;91d0
	ld (bc),a		;91d1
	ld e,d			;91d2
	ld (bc),a		;91d3
	ld e,e			;91d4
	ld (bc),a		;91d5
	ld e,e			;91d6
	ld (bc),a		;91d7
	ld e,e			;91d8
	ld (bc),a		;91d9
	ld e,h			;91da
	ld (bc),a		;91db
	ld e,l			;91dc
	ld (bc),a		;91dd
	ld e,(hl)		;91de
	ld (bc),a		;91df
	ld e,a			;91e0
	ld (bc),a		;91e1
	ld h,b			;91e2
	ld (bc),a		;91e3
	ld h,c			;91e4
	ld (bc),a		;91e5
	ld e,e			;91e6
	ld (bc),a		;91e7
	ld e,e			;91e8
	ld (bc),a		;91e9
	nop			;91ea
	nop			;91eb
	nop			;91ec
	nop			;91ed
	nop			;91ee
	nop			;91ef
	nop			;91f0
	nop			;91f1
	rra			;91f2
	nop			;91f3
	jr nz,l91f6h		;91f4
l91f6h:
	nop			;91f6
	nop			;91f7
	nop			;91f8
	nop			;91f9
	ld l,000h		;91fa
	cpl			;91fc
	nop			;91fd
	nop			;91fe
	nop			;91ff
	nop			;9200
	nop			;9201
	ld h,d			;9202
	ld (bc),a		;9203
	ld h,c			;9204
	ld (bc),a		;9205
	ld h,e			;9206
	ld (bc),a		;9207
	ld h,h			;9208
	ld (bc),a		;9209
	ld h,l			;920a
	ld (bc),a		;920b
	ld h,(hl)		;920c
	ld (bc),a		;920d
	ld h,a			;920e
	ld (bc),a		;920f
	ld l,b			;9210
	ld (bc),a		;9211
	ld l,c			;9212
	ld (bc),a		;9213
	ld l,d			;9214
	ld (bc),a		;9215
	ld l,e			;9216
	ld (bc),a		;9217
	ld l,h			;9218
	ld (bc),a		;9219
	ld l,l			;921a
	ld (bc),a		;921b
	ld l,(hl)		;921c
	ld (bc),a		;921d
	ld l,a			;921e
	ld (bc),a		;921f
	ld (hl),b		;9220
	ld (bc),a		;9221
	ld (hl),c		;9222
	ld (bc),a		;9223
	ld (hl),d		;9224
	ld (bc),a		;9225
	ld (hl),e		;9226
	ld (bc),a		;9227
	ld (hl),h		;9228
	ld (bc),a		;9229
	nop			;922a
	nop			;922b
	nop			;922c
	nop			;922d
	ld d,e			;922e
	nop			;922f
	nop			;9230
	nop			;9231
	nop			;9232
	nop			;9233
	nop			;9234
	nop			;9235
	nop			;9236
	nop			;9237
	nop			;9238
	nop			;9239
	nop			;923a
	nop			;923b
	ld hl,02200h		;923c
	nop			;923f
	nop			;9240
	nop			;9241
	ld (hl),l		;9242
	ld (bc),a		;9243
	halt			;9244
	ld (bc),a		;9245
	ld (hl),a		;9246
	ld (bc),a		;9247
	ld a,b			;9248
	ld (bc),a		;9249
	ld a,c			;924a
	ld (bc),a		;924b
	ld a,d			;924c
	ld (bc),a		;924d
	ld a,e			;924e
	ld (bc),a		;924f
	ld a,h			;9250
	ld (bc),a		;9251
	ld a,l			;9252
	ld (bc),a		;9253
	ld a,(hl)		;9254
	ld (bc),a		;9255
	ld a,a			;9256
	ld (bc),a		;9257
	add a,b			;9258
	ld (bc),a		;9259
	add a,c			;925a
	ld (bc),a		;925b
	add a,d			;925c
	ld (bc),a		;925d
	add a,e			;925e
	ld (bc),a		;925f
	ld a,c			;9260
	ld (bc),a		;9261
	add a,h			;9262
	ld (bc),a		;9263
	add a,l			;9264
	ld (bc),a		;9265
	add a,(hl)		;9266
	ld (bc),a		;9267
	add a,a			;9268
	ld (bc),a		;9269
	nop			;926a
	nop			;926b
	nop			;926c
	nop			;926d
	ld d,h			;926e
	nop			;926f
	nop			;9270
	nop			;9271
	nop			;9272
	nop			;9273
	nop			;9274
	nop			;9275
	nop			;9276
	nop			;9277
	adc a,c			;9278
	nop			;9279
	inc hl			;927a
	nop			;927b
	inc h			;927c
	nop			;927d
	adc a,d			;927e
	nop			;927f
	nop			;9280
	nop			;9281
	adc a,b			;9282
	ld (bc),a		;9283
	adc a,c			;9284
	ld (bc),a		;9285
	adc a,e			;9286
	ld (bc),a		;9287
	adc a,d			;9288
	ld (bc),a		;9289
	adc a,h			;928a
	ld (bc),a		;928b
	adc a,l			;928c
	ld (bc),a		;928d
	adc a,(hl)		;928e
	ld (bc),a		;928f
	adc a,a			;9290
	ld (bc),a		;9291
	sub b			;9292
	ld (bc),a		;9293
	sub c			;9294
	ld (bc),a		;9295
	sub d			;9296
	ld (bc),a		;9297
	sub e			;9298
	ld (bc),a		;9299
	sub h			;929a
	ld (bc),a		;929b
	sub l			;929c
	ld (bc),a		;929d
	sub (hl)		;929e
	ld (bc),a		;929f
	sub a			;92a0
	ld (bc),a		;92a1
	sbc a,b			;92a2
	ld (bc),a		;92a3
	sbc a,c			;92a4
	ld (bc),a		;92a5
	adc a,a			;92a6
	ld (bc),a		;92a7
	sbc a,d			;92a8
	ld (bc),a		;92a9
	nop			;92aa
	nop			;92ab
	nop			;92ac
	nop			;92ad
	ld d,l			;92ae
	nop			;92af
	adc a,l			;92b0
	nop			;92b1
	nop			;92b2
	nop			;92b3
	nop			;92b4
	nop			;92b5
	nop			;92b6
	nop			;92b7
	dec h			;92b8
	nop			;92b9
	ld h,000h		;92ba
	daa			;92bc
	nop			;92bd
	jr z,l92c0h		;92be
l92c0h:
	nop			;92c0
	nop			;92c1
	sbc a,e			;92c2
	ld (bc),a		;92c3
	sbc a,h			;92c4
	ld (bc),a		;92c5
	sbc a,l			;92c6
	ld (bc),a		;92c7
	sbc a,(hl)		;92c8
	ld (bc),a		;92c9
	sbc a,a			;92ca
	ld (bc),a		;92cb
	and b			;92cc
	ld (bc),a		;92cd
	and c			;92ce
	ld (bc),a		;92cf
	and d			;92d0
	ld (bc),a		;92d1
	and e			;92d2
	ld (bc),a		;92d3
	and h			;92d4
	ld (bc),a		;92d5
	and l			;92d6
	ld (bc),a		;92d7
	and (hl)		;92d8
	ld (bc),a		;92d9
	and a			;92da
	ld (bc),a		;92db
	xor b			;92dc
	ld (bc),a		;92dd
	xor c			;92de
	ld (bc),a		;92df
	xor d			;92e0
	ld (bc),a		;92e1
	xor e			;92e2
	ld (bc),a		;92e3
	xor h			;92e4
	ld (bc),a		;92e5
	xor l			;92e6
	ld (bc),a		;92e7
	xor (hl)		;92e8
	ld (bc),a		;92e9
	nop			;92ea
	nop			;92eb
	ld d,(hl)		;92ec
	nop			;92ed
	ld d,a			;92ee
	nop			;92ef
	ld e,b			;92f0
	nop			;92f1
	nop			;92f2
	nop			;92f3
	nop			;92f4
	nop			;92f5
	nop			;92f6
	nop			;92f7
	nop			;92f8
	nop			;92f9
	nop			;92fa
	nop			;92fb
	add hl,hl		;92fc
	nop			;92fd
	nop			;92fe
	nop			;92ff
	nop			;9300
	nop			;9301
	xor a			;9302
	ld (bc),a		;9303
	or b			;9304
	ld (bc),a		;9305
	or c			;9306
	ld (bc),a		;9307
	xor a			;9308
	ld (bc),a		;9309
	or d			;930a
	ld (bc),a		;930b
	or e			;930c
	ld (bc),a		;930d
	or h			;930e
	ld (bc),a		;930f
	or l			;9310
	ld (bc),a		;9311
	or (hl)			;9312
	ld (bc),a		;9313
	or a			;9314
	ld (bc),a		;9315
	cp b			;9316
	ld (bc),a		;9317
	cp c			;9318
	ld (bc),a		;9319
	cp d			;931a
	ld (bc),a		;931b
	xor a			;931c
	ld (bc),a		;931d
	xor a			;931e
	ld (bc),a		;931f
	cp e			;9320
	ld (bc),a		;9321
	cp h			;9322
	ld (bc),a		;9323
	cp l			;9324
	ld (bc),a		;9325
	cp (hl)			;9326
	ld (bc),a		;9327
	xor a			;9328
	ld (bc),a		;9329
	ld e,c			;932a
	nop			;932b
	ld e,d			;932c
	nop			;932d
	ld e,e			;932e
	nop			;932f
	ld e,h			;9330
	nop			;9331
	ld e,l			;9332
	nop			;9333
	nop			;9334
	nop			;9335
	nop			;9336
	nop			;9337
	nop			;9338
	nop			;9339
	nop			;933a
	nop			;933b
	nop			;933c
	nop			;933d
	nop			;933e
	nop			;933f
	nop			;9340
	nop			;9341
	jp m,0fa00h		;9342
	nop			;9345
	push af			;9346
	nop			;9347
	jp m,0f500h		;9348
	nop			;934b
	jp m,0f800h		;934c
	nop			;934f
	push af			;9350
	nop			;9351
	rst 30h			;9352
	nop			;9353
	jp m,0f500h		;9354
	nop			;9357
	or 000h			;9358
	jp m,0fa00h		;935a
	nop			;935d
	push af			;935e
	nop			;935f
	jp m,0f500h		;9360
	nop			;9363
	rst 30h			;9364
	nop			;9365
	ret m			;9366
	nop			;9367
	jp m,00000h		;9368
	nop			;936b
	ld e,(hl)		;936c
	nop			;936d
	ld e,a			;936e
	nop			;936f
	ld h,b			;9370
	nop			;9371
	nop			;9372
	nop			;9373
	nop			;9374
	nop			;9375
	nop			;9376
	nop			;9377
	nop			;9378
	nop			;9379
	nop			;937a
	nop			;937b
	nop			;937c
	nop			;937d
	nop			;937e
	nop			;937f
	nop			;9380
	nop			;9381
	jp m,0f800h		;9382
	nop			;9385
	jp m,0fa00h		;9386
	nop			;9389
	jp m,0fa00h		;938a
	nop			;938d
	rst 30h			;938e
	nop			;938f
	jp m,0fa00h		;9390
	nop			;9393
	jp m,0fa00h		;9394
	nop			;9397
	rst 30h			;9398
	nop			;9399
	di			;939a
	nop			;939b
	jp m,0f600h		;939c
	nop			;939f
	jp m,0f600h		;93a0
	nop			;93a3
	jp m,0f500h		;93a4
	nop			;93a7
	or 000h			;93a8
	nop			;93aa
	nop			;93ab
	nop			;93ac
	nop			;93ad
	ld h,c			;93ae
	nop			;93af
	ld h,d			;93b0
	nop			;93b1
	nop			;93b2
	nop			;93b3
	nop			;93b4
	nop			;93b5
	nop			;93b6
	nop			;93b7
	nop			;93b8
	nop			;93b9
	nop			;93ba
	nop			;93bb
	nop			;93bc
	nop			;93bd
	nop			;93be
	nop			;93bf
	nop			;93c0
	nop			;93c1
	jp m,0fa00h		;93c2
	nop			;93c5
	or 000h			;93c6
	ret m			;93c8
	nop			;93c9
	jp m,0f500h		;93ca
	nop			;93cd
	jp m,0f700h		;93ce
	nop			;93d1
	ret m			;93d2
	nop			;93d3
	jp m,0f600h		;93d4
	nop			;93d7
	or 000h			;93d8
	ret m			;93da
	nop			;93db
	jp m,0f700h		;93dc
	nop			;93df
	push af			;93e0
	nop			;93e1
	rst 30h			;93e2
	nop			;93e3
	jp m,0fa00h		;93e4
	nop			;93e7
	jp m,00000h		;93e8
	nop			;93eb
	nop			;93ec
	nop			;93ed
	ld h,e			;93ee
	nop			;93ef
	nop			;93f0
	nop			;93f1
	nop			;93f2
	nop			;93f3
	nop			;93f4
	nop			;93f5
	nop			;93f6
	nop			;93f7
	nop			;93f8
	nop			;93f9
	nop			;93fa
	nop			;93fb
	nop			;93fc
	nop			;93fd
	nop			;93fe
	nop			;93ff
	nop			;9400
	nop			;9401
	jp m,0f700h		;9402
	nop			;9405
	jp m,0fa00h		;9406
	nop			;9409
	jp m,0fa00h		;940a
	nop			;940d
	jp m,0fa00h		;940e
	nop			;9411
	jp m,0fa00h		;9412
	nop			;9415
	jp m,0fa00h		;9416
	nop			;9419
	push af			;941a
	nop			;941b
	jp m,0f800h		;941c
	nop			;941f
	jp m,0fa00h		;9420
	nop			;9423
	jp m,0fa00h		;9424
	nop			;9427
	jp m,00000h		;9428
	nop			;942b
	ld e,a			;942c
	ld bc,00160h		;942d
	ld h,c			;9430
	ld bc,00162h		;9431
	ld h,e			;9434
	ld bc,00164h		;9435
	ld h,l			;9438
	ld bc,002bfh		;9439
	ret nz			;943c
	ld (bc),a		;943d
	adc a,000h		;943e
	nop			;9440
	nop			;9441
	jp m,0f500h		;9442
	nop			;9445
	jp m,0f700h		;9446
	nop			;9449
	push af			;944a
	nop			;944b
	jp m,0fa00h		;944c
	nop			;944f
	ld sp,hl		;9450
	nop			;9451
	push af			;9452
	nop			;9453
	jp m,0fa00h		;9454
	nop			;9457
	jp m,0fa00h		;9458
	nop			;945b
	jp m,0f800h		;945c
	nop			;945f
	push af			;9460
	nop			;9461
	jp m,0f800h		;9462
	nop			;9465
	jp m,0fa00h		;9466
	nop			;9469
	nop			;946a
	nop			;946b
	ld (hl),b		;946c
	ld bc,00171h		;946d
	ld (hl),d		;9470
	ld bc,00173h		;9471
	ld (hl),h		;9474
	ld bc,00175h		;9475
	halt			;9478
	ld bc,002c1h		;9479
	rst 8			;947c
	nop			;947d
	ret nc			;947e
	nop			;947f
	nop			;9480
	nop			;9481
	jp m,0f300h		;9482
	nop			;9485
	jp m,0f700h		;9486
	nop			;9489
	ret m			;948a
	nop			;948b
	rst 30h			;948c
	nop			;948d
	jp m,0fa00h		;948e
	nop			;9491
	jp m,0fa00h		;9492
	nop			;9495
	rst 30h			;9496
	nop			;9497
	jp m,0fa00h		;9498
	nop			;949b
	jp m,0f500h		;949c
	nop			;949f
	jp m,0fa00h		;94a0
	nop			;94a3
	jp m,0fa00h		;94a4
	nop			;94a7
	push af			;94a8
	nop			;94a9
	nop			;94aa
	nop			;94ab
	inc b			;94ac
	ld (bc),a		;94ad
	dec b			;94ae
	ld (bc),a		;94af
	ld b,002h		;94b0
	rlca			;94b2
	ld (bc),a		;94b3
	ex af,af'		;94b4
	ld (bc),a		;94b5
	add hl,bc		;94b6
	ld (bc),a		;94b7
	ld a,(bc)		;94b8
	ld (bc),a		;94b9
	jp nc,0d300h		;94ba
	nop			;94bd
	call nc,00000h		;94be
	nop			;94c1
	rst 30h			;94c2
	nop			;94c3
	jp m,0fa00h		;94c4
	nop			;94c7
	or 000h			;94c8
	jp m,0fa00h		;94ca
	nop			;94cd
	ld sp,hl		;94ce
	nop			;94cf
	rst 30h			;94d0
	nop			;94d1
	or 000h			;94d2
	rst 30h			;94d4
	nop			;94d5
	jp m,0f600h		;94d6
	nop			;94d9
	jp m,0f700h		;94da
	nop			;94dd
	jp m,0fa00h		;94de
	nop			;94e1
	jp m,0f600h		;94e2
	nop			;94e5
	jp m,0f400h		;94e6
	nop			;94e9
	nop			;94ea
	nop			;94eb
	jr l94f0h		;94ec
	add hl,de		;94ee
	ld (bc),a		;94ef
l94f0h:
	ld a,(de)		;94f0
	ld (bc),a		;94f1
	dec de			;94f2
	ld (bc),a		;94f3
	inc e			;94f4
	ld (bc),a		;94f5
	dec e			;94f6
	ld (bc),a		;94f7
	push de			;94f8
	nop			;94f9
	sub 000h		;94fa
	rst 10h			;94fc
	nop			;94fd
	ret c			;94fe
	nop			;94ff
	nop			;9500
	nop			;9501
	jp m,0f500h		;9502
	nop			;9505
	jp m,0fa00h		;9506
	nop			;9509
	jp m,0fa00h		;950a
	nop			;950d
	jp m,0fa00h		;950e
	nop			;9511
	jp m,0fa00h		;9512
	nop			;9515
	push af			;9516
	nop			;9517
	jp m,0fa00h		;9518
	nop			;951b
	jp m,0fa00h		;951c
	nop			;951f
	jp m,0fa00h		;9520
	nop			;9523
	jp m,0fa00h		;9524
	nop			;9527
	jp m,00000h		;9528
	nop			;952b
	dec hl			;952c
	ld (bc),a		;952d
	inc l			;952e
	ld (bc),a		;952f
	dec l			;9530
	ld (bc),a		;9531
	ld l,002h		;9532
	cpl			;9534
	ld (bc),a		;9535
	jr nc,l953ah		;9536
	exx			;9538
	nop			;9539
l953ah:
	jp c,0db00h		;953a
	nop			;953d
	nop			;953e
	nop			;953f
	nop			;9540
	nop			;9541
	rst 30h			;9542
	nop			;9543
	ret m			;9544
	nop			;9545
	or 000h			;9546
	jp m,0fa00h		;9548
	nop			;954b
	jp m,0fa00h		;954c
	nop			;954f
	push af			;9550
	nop			;9551
	jp m,0f700h		;9552
	nop			;9555
	jp m,0fa00h		;9556
	nop			;9559
	jp m,0fa00h		;955a
	nop			;955d
	jp m,0fa00h		;955e
	nop			;9561
	jp m,0fa00h		;9562
	nop			;9565
	ret m			;9566
	nop			;9567
	jp m,00000h		;9568
	nop			;956b
	ccf			;956c
	ld (bc),a		;956d
	ld b,b			;956e
	ld (bc),a		;956f
	ld b,c			;9570
	ld (bc),a		;9571
	ld b,d			;9572
	ld (bc),a		;9573
	ld b,e			;9574
	ld (bc),a		;9575
	ld b,h			;9576
	ld (bc),a		;9577
	call c,0dd00h		;9578
	nop			;957b
	ret c			;957c
	nop			;957d
	nop			;957e
	nop			;957f
	nop			;9580
	nop			;9581
	jp m,0fa00h		;9582
	nop			;9585
	rst 30h			;9586
	nop			;9587
	or 000h			;9588
	ret m			;958a
	nop			;958b
	push af			;958c
	nop			;958d
	or 000h			;958e
	jp m,0fa00h		;9590
	nop			;9593
	jp m,0fa00h		;9594
	nop			;9597
	rst 30h			;9598
	nop			;9599
	push af			;959a
	nop			;959b
	jp m,0fa00h		;959c
	nop			;959f
	jp m,0f500h		;95a0
	nop			;95a3
	jp m,0f500h		;95a4
	nop			;95a7
	jp m,00000h		;95a8
	nop			;95ab
	ld d,d			;95ac
	ld (bc),a		;95ad
	ld d,e			;95ae
	ld (bc),a		;95af
	ld d,h			;95b0
	ld (bc),a		;95b1
	ld d,l			;95b2
	ld (bc),a		;95b3
	ld d,(hl)		;95b4
	ld (bc),a		;95b5
	ld d,a			;95b6
	ld (bc),a		;95b7
	sbc a,000h		;95b8
	rst 18h			;95ba
	nop			;95bb
	nop			;95bc
	nop			;95bd
	nop			;95be
	nop			;95bf
	nop			;95c0
	nop			;95c1
	ld sp,hl		;95c2
	nop			;95c3
	call p,0fa00h		;95c4
	nop			;95c7
	push af			;95c8
	nop			;95c9
	jp m,0f800h		;95ca
	nop			;95cd
	or 000h			;95ce
	push af			;95d0
	nop			;95d1
	jp m,0fa00h		;95d2
	nop			;95d5
	ret m			;95d6
	nop			;95d7
	call p,0f700h		;95d8
	nop			;95db
	jp m,0fa00h		;95dc
	nop			;95df
	rst 30h			;95e0
	nop			;95e1
	ret m			;95e2
	nop			;95e3
	jp m,0f600h		;95e4
	nop			;95e7
	or 000h			;95e8
	nop			;95ea
	nop			;95eb
	ld h,d			;95ec
	ld (bc),a		;95ed
	ld e,e			;95ee
	ld (bc),a		;95ef
	ld h,e			;95f0
	ld (bc),a		;95f1
	ld h,h			;95f2
	ld (bc),a		;95f3
	ld h,l			;95f4
	ld (bc),a		;95f5
	ret po			;95f6
	nop			;95f7
	pop hl			;95f8
	nop			;95f9
	nop			;95fa
	nop			;95fb
	nop			;95fc
	nop			;95fd
	nop			;95fe
	nop			;95ff
	nop			;9600
	nop			;9601
	jp m,0fa00h		;9602
	nop			;9605
	di			;9606
	nop			;9607
	jp m,0f500h		;9608
	nop			;960b
	ret m			;960c
	nop			;960d
	or 000h			;960e
	jp m,0fa00h		;9610
	nop			;9613
	rst 30h			;9614
	nop			;9615
	push af			;9616
	nop			;9617
	or 000h			;9618
	ret m			;961a
	nop			;961b
	rst 30h			;961c
	nop			;961d
	jp m,0fa00h		;961e
	nop			;9621
	push af			;9622
	nop			;9623
	jp m,0f800h		;9624
	nop			;9627
	jp m,00000h		;9628
	nop			;962b
	ld a,(hl)		;962c
	ld (bc),a		;962d
	jp po,0e300h		;962e
	nop			;9631
	call po,0e500h		;9632
	nop			;9635
	and 000h		;9636
	nop			;9638
	nop			;9639
	nop			;963a
	nop			;963b
	nop			;963c
	nop			;963d
	nop			;963e
	nop			;963f
	nop			;9640
	nop			;9641
	sub (hl)		;9642
	nop			;9643
	sub a			;9644
	nop			;9645
	nop			;9646
	nop			;9647
	and d			;9648
	nop			;9649
	nop			;964a
	nop			;964b
	nop			;964c
	nop			;964d
	nop			;964e
	nop			;964f
	sub (hl)		;9650
	nop			;9651
	sub a			;9652
	nop			;9653
	nop			;9654
	nop			;9655
	and d			;9656
	nop			;9657
	nop			;9658
	nop			;9659
	nop			;965a
	nop			;965b
	nop			;965c
	nop			;965d
	add a,d			;965e
	nop			;965f
	add a,e			;9660
	nop			;9661
	nop			;9662
	nop			;9663
	ld (hl),h		;9664
	nop			;9665
	nop			;9666
	nop			;9667
	add a,a			;9668
	nop			;9669
	nop			;966a
	nop			;966b
	rst 20h			;966c
	nop			;966d
	ret pe			;966e
	nop			;966f
	jp (hl)			;9670
	nop			;9671
	jp pe,0eb00h		;9672
	nop			;9675
	nop			;9676
	nop			;9677
	nop			;9678
	nop			;9679
	nop			;967a
	nop			;967b
	nop			;967c
	nop			;967d
	nop			;967e
	nop			;967f
	sbc a,b			;9680
	nop			;9681
	sbc a,c			;9682
	nop			;9683
	and e			;9684
	nop			;9685
	and h			;9686
	nop			;9687
	and l			;9688
	nop			;9689
	and (hl)		;968a
	nop			;968b
	and a			;968c
	nop			;968d
	sbc a,b			;968e
	nop			;968f
	sbc a,c			;9690
	nop			;9691
	and e			;9692
	nop			;9693
	and h			;9694
	nop			;9695
	and l			;9696
	nop			;9697
	and (hl)		;9698
	nop			;9699
	and a			;969a
	nop			;969b
	halt			;969c
	nop			;969d
	add a,h			;969e
	nop			;969f
	ld (hl),a		;96a0
	nop			;96a1
	ld a,b			;96a2
	nop			;96a3
	nop			;96a4
	nop			;96a5
	nop			;96a6
	nop			;96a7
	nop			;96a8
	nop			;96a9
	nop			;96aa
	nop			;96ab
	call pe,0ed00h		;96ac
	nop			;96af
	xor 000h		;96b0
	rst 28h			;96b2
	nop			;96b3
	nop			;96b4
	nop			;96b5
	nop			;96b6
	nop			;96b7
	nop			;96b8
	nop			;96b9
	nop			;96ba
	nop			;96bb
	nop			;96bc
	nop			;96bd
	nop			;96be
	nop			;96bf
	sbc a,d			;96c0
	nop			;96c1
	xor b			;96c2
	nop			;96c3
	xor c			;96c4
	nop			;96c5
	xor d			;96c6
	nop			;96c7
	xor e			;96c8
	nop			;96c9
	xor h			;96ca
	nop			;96cb
	xor l			;96cc
	nop			;96cd
	sbc a,d			;96ce
	nop			;96cf
	xor b			;96d0
	nop			;96d1
	xor c			;96d2
	nop			;96d3
	pop bc			;96d4
	nop			;96d5
	jp nz,0cd00h		;96d6
	nop			;96d9
	xor l			;96da
	nop			;96db
	ld a,c			;96dc
	nop			;96dd
	add a,l			;96de
	nop			;96df
	add a,(hl)		;96e0
	nop			;96e1
	nop			;96e2
	nop			;96e3
	nop			;96e4
	nop			;96e5
	ld a,h			;96e6
	nop			;96e7
	add a,b			;96e8
	nop			;96e9
	ld a,e			;96ea
	nop			;96eb
	ret p			;96ec
	nop			;96ed
	pop af			;96ee
	nop			;96ef
	nop			;96f0
	nop			;96f1
	nop			;96f2
	nop			;96f3
	nop			;96f4
	nop			;96f5
	nop			;96f6
	nop			;96f7
	nop			;96f8
	nop			;96f9
	nop			;96fa
	nop			;96fb
	nop			;96fc
	nop			;96fd
	nop			;96fe
	nop			;96ff
	sbc a,e			;9700
	nop			;9701
	xor (hl)		;9702
	nop			;9703
	xor a			;9704
	nop			;9705
	or b			;9706
	nop			;9707
	or c			;9708
	nop			;9709
	or d			;970a
	nop			;970b
	or e			;970c
	nop			;970d
	sbc a,e			;970e
	nop			;970f
	add a,000h		;9710
	rst 0			;9712
	nop			;9713
	jp 0c400h		;9714
	nop			;9717
	or d			;9718
	nop			;9719
	or e			;971a
	nop			;971b
	nop			;971c
	nop			;971d
	ld a,d			;971e
	nop			;971f
	nop			;9720
	nop			;9721
	nop			;9722
	nop			;9723
	adc a,b			;9724
	nop			;9725
	nop			;9726
	nop			;9727
	add a,c			;9728
	nop			;9729
	nop			;972a
	nop			;972b
	nop			;972c
	nop			;972d
	nop			;972e
	nop			;972f
	nop			;9730
	nop			;9731
	nop			;9732
	nop			;9733
	nop			;9734
	nop			;9735
	ld a,(00000h)		;9736
	nop			;9739
	nop			;973a
	nop			;973b
	nop			;973c
	nop			;973d
	ld a,(0b400h)		;973e
	nop			;9741
	or l			;9742
	nop			;9743
	or (hl)			;9744
	nop			;9745
	or a			;9746
	nop			;9747
	cp b			;9748
	nop			;9749
	cp c			;974a
	nop			;974b
	cp d			;974c
	nop			;974d
	or h			;974e
	nop			;974f
	ret			;9750
	nop			;9751
	ret z			;9752
	nop			;9753
	or a			;9754
	nop			;9755
	push bc			;9756
	nop			;9757
	call z,0ba00h		;9758
	nop			;975b
	nop			;975c
	nop			;975d
	ld a,l			;975e
	nop			;975f
	add a,b			;9760
	nop			;9761
	ld (hl),h		;9762
	nop			;9763
	nop			;9764
	nop			;9765
	nop			;9766
	nop			;9767
	nop			;9768
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
	dec sp			;9774
	nop			;9775
	inc a			;9776
	nop			;9777
	nop			;9778
	nop			;9779
	nop			;977a
	nop			;977b
	dec sp			;977c
	nop			;977d
	inc a			;977e
	nop			;977f
	sbc a,h			;9780
	nop			;9781
	cp e			;9782
	nop			;9783
	cp h			;9784
	nop			;9785
	cp l			;9786
	nop			;9787
	cp (hl)			;9788
	nop			;9789
	cp a			;978a
	nop			;978b
	nop			;978c
	nop			;978d
	sbc a,h			;978e
	nop			;978f
	jp z,0cb00h		;9790
	nop			;9793
	cp l			;9794
	nop			;9795
	cp (hl)			;9796
	nop			;9797
	cp a			;9798
	nop			;9799
	nop			;979a
	nop			;979b
	ld a,(hl)		;979c
	nop			;979d
	ld a,a			;979e
	nop			;979f
	add a,c			;97a0
	nop			;97a1
	nop			;97a2
	nop			;97a3
	nop			;97a4
	nop			;97a5
	ld (hl),l		;97a6
	nop			;97a7
	nop			;97a8
	nop			;97a9
	nop			;97aa
	nop			;97ab
	nop			;97ac
	nop			;97ad
	nop			;97ae
	nop			;97af
	nop			;97b0
	nop			;97b1
	dec a			;97b2
	nop			;97b3
	ld a,000h		;97b4
	ccf			;97b6
	nop			;97b7
	nop			;97b8
	nop			;97b9
	dec a			;97ba
	nop			;97bb
	ld a,000h		;97bc
	ccf			;97be
	nop			;97bf
	nop			;97c0
	nop			;97c1
	sbc a,l			;97c2
	nop			;97c3
	sbc a,(hl)		;97c4
	nop			;97c5
	ret nz			;97c6
	nop			;97c7
	and c			;97c8
	nop			;97c9
	sbc a,a			;97ca
	nop			;97cb
	and b			;97cc
	nop			;97cd
	nop			;97ce
	nop			;97cf
	sbc a,l			;97d0
	nop			;97d1
	sbc a,(hl)		;97d2
	nop			;97d3
	ret nz			;97d4
	nop			;97d5
	and c			;97d6
	nop			;97d7
	sbc a,a			;97d8
	nop			;97d9
	and b			;97da
	nop			;97db
	nop			;97dc
	nop			;97dd
	nop			;97de
	nop			;97df
	nop			;97e0
	nop			;97e1
	nop			;97e2
	nop			;97e3
	nop			;97e4
	nop			;97e5
	ld a,(00000h)		;97e6
	nop			;97e9
	nop			;97ea
	nop			;97eb
	nop			;97ec
	nop			;97ed
	ld a,(04000h)		;97ee
	nop			;97f1
	ld b,c			;97f2
	nop			;97f3
	ld b,d			;97f4
	nop			;97f5
	ld b,e			;97f6
	nop			;97f7
	ld b,b			;97f8
	nop			;97f9
	ld b,c			;97fa
	nop			;97fb
	ld b,d			;97fc
	nop			;97fd
	ld b,e			;97fe
	nop			;97ff
	nop			;9800
	nop			;9801
	nop			;9802
	nop			;9803
	nop			;9804
	nop			;9805
	nop			;9806
	nop			;9807
	nop			;9808
	nop			;9809
	nop			;980a
	nop			;980b
	nop			;980c
	nop			;980d
	nop			;980e
	nop			;980f
	ld a,(00000h)		;9810
	nop			;9813
	nop			;9814
	nop			;9815
	nop			;9816
	nop			;9817
	nop			;9818
	nop			;9819
	nop			;981a
	nop			;981b
	nop			;981c
	nop			;981d
	ld a,(00000h)		;981e
	nop			;9821
	nop			;9822
	nop			;9823
	dec sp			;9824
	nop			;9825
	inc a			;9826
	nop			;9827
	nop			;9828
	nop			;9829
	nop			;982a
	nop			;982b
	dec sp			;982c
	nop			;982d
	inc a			;982e
	nop			;982f
	ld b,h			;9830
	nop			;9831
	ld b,l			;9832
	nop			;9833
	ld b,(hl)		;9834
	nop			;9835
	ld b,a			;9836
	nop			;9837
	ld b,h			;9838
	nop			;9839
	ld b,l			;983a
	nop			;983b
	ld l,(hl)		;983c
	nop			;983d
	ld h,l			;983e
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
	dec sp			;984e
	nop			;984f
	inc a			;9850
	nop			;9851
	nop			;9852
	nop			;9853
	nop			;9854
	nop			;9855
	nop			;9856
	nop			;9857
	nop			;9858
	nop			;9859
	nop			;985a
	nop			;985b
	dec sp			;985c
	nop			;985d
	inc a			;985e
	nop			;985f
	nop			;9860
	nop			;9861
	dec a			;9862
	nop			;9863
	ld a,000h		;9864
	ccf			;9866
	nop			;9867
	nop			;9868
	nop			;9869
	dec a			;986a
	nop			;986b
	ld a,000h		;986c
	ccf			;986e
	nop			;986f
	ld c,b			;9870
	nop			;9871
	ld c,c			;9872
	nop			;9873
	ld c,d			;9874
	nop			;9875
	ld c,e			;9876
	nop			;9877
	ld c,b			;9878
	nop			;9879
	ld c,c			;987a
	nop			;987b
	ld h,(hl)		;987c
	nop			;987d
	ld h,a			;987e
	nop			;987f
	nop			;9880
	nop			;9881
	nop			;9882
	nop			;9883
	nop			;9884
	nop			;9885
	nop			;9886
	nop			;9887
	nop			;9888
	nop			;9889
	nop			;988a
	nop			;988b
	dec a			;988c
	nop			;988d
	ld a,000h		;988e
	ccf			;9890
	nop			;9891
	nop			;9892
	nop			;9893
	nop			;9894
	nop			;9895
	nop			;9896
	nop			;9897
	nop			;9898
	nop			;9899
	dec a			;989a
	nop			;989b
	ld a,000h		;989c
	ccf			;989e
	nop			;989f
	ld b,b			;98a0
	nop			;98a1
	ld b,c			;98a2
	nop			;98a3
	ld b,d			;98a4
	nop			;98a5
	ld b,e			;98a6
	nop			;98a7
	ld b,b			;98a8
	nop			;98a9
	ld b,c			;98aa
	nop			;98ab
	ld b,d			;98ac
	nop			;98ad
	ld b,e			;98ae
	nop			;98af
	ld c,h			;98b0
	nop			;98b1
	ld c,l			;98b2
	nop			;98b3
	ld c,(hl)		;98b4
	nop			;98b5
	ld c,a			;98b6
	nop			;98b7
	ld c,h			;98b8
	nop			;98b9
	ld c,l			;98ba
	nop			;98bb
	ld c,(hl)		;98bc
	nop			;98bd
	ld c,a			;98be
	nop			;98bf
	nop			;98c0
	nop			;98c1
	nop			;98c2
	nop			;98c3
	nop			;98c4
	nop			;98c5
	nop			;98c6
	nop			;98c7
	nop			;98c8
	nop			;98c9
	ld b,b			;98ca
	nop			;98cb
	ld b,c			;98cc
	nop			;98cd
	ld b,d			;98ce
	nop			;98cf
	ld b,e			;98d0
	nop			;98d1
	nop			;98d2
	nop			;98d3
	nop			;98d4
	nop			;98d5
	nop			;98d6
	nop			;98d7
	ld b,b			;98d8
	nop			;98d9
	ld b,c			;98da
	nop			;98db
	ld b,d			;98dc
	nop			;98dd
	ld b,e			;98de
	nop			;98df
	ld b,h			;98e0
	nop			;98e1
	ld b,l			;98e2
	nop			;98e3
	ld l,h			;98e4
	nop			;98e5
	ld l,l			;98e6
	nop			;98e7
	ld b,h			;98e8
	nop			;98e9
	ld b,l			;98ea
	nop			;98eb
	ld h,h			;98ec
	nop			;98ed
	ld h,l			;98ee
	nop			;98ef
	ld d,b			;98f0
	nop			;98f1
	ld d,c			;98f2
	nop			;98f3
	ld d,d			;98f4
	nop			;98f5
	nop			;98f6
	nop			;98f7
	ld d,b			;98f8
	nop			;98f9
	ld d,c			;98fa
	nop			;98fb
	ld d,d			;98fc
	nop			;98fd
	nop			;98fe
	nop			;98ff
	nop			;9900
	nop			;9901
	nop			;9902
	nop			;9903
	nop			;9904
	nop			;9905
	nop			;9906
	nop			;9907
	nop			;9908
	nop			;9909
	ld b,h			;990a
	nop			;990b
	ld b,l			;990c
	nop			;990d
	ld l,b			;990e
	nop			;990f
	ld l,c			;9910
	nop			;9911
	adc a,(hl)		;9912
	nop			;9913
	adc a,a			;9914
	nop			;9915
	nop			;9916
	nop			;9917
	ld b,h			;9918
	nop			;9919
	ld b,l			;991a
	nop			;991b
	ld (hl),b		;991c
	nop			;991d
	ld (hl),c		;991e
	nop			;991f
	ld c,b			;9920
	nop			;9921
	ld c,c			;9922
	nop			;9923
	ld l,(hl)		;9924
	nop			;9925
	ld l,a			;9926
	nop			;9927
	ld c,b			;9928
	nop			;9929
	ld c,c			;992a
	nop			;992b
	ld h,(hl)		;992c
	nop			;992d
	ld h,a			;992e
	nop			;992f
	nop			;9930
	nop			;9931
	nop			;9932
	nop			;9933
	nop			;9934
	nop			;9935
	nop			;9936
	nop			;9937
	nop			;9938
	nop			;9939
	nop			;993a
	nop			;993b
	nop			;993c
	nop			;993d
	nop			;993e
	nop			;993f
	nop			;9940
	nop			;9941
	nop			;9942
	nop			;9943
	nop			;9944
	nop			;9945
	nop			;9946
	nop			;9947
	nop			;9948
	nop			;9949
	ld c,b			;994a
	nop			;994b
	ld c,c			;994c
	nop			;994d
	ld l,d			;994e
	nop			;994f
	sub b			;9950
	nop			;9951
	sub b			;9952
	nop			;9953
	sub c			;9954
	nop			;9955
	sub d			;9956
	nop			;9957
	ld c,b			;9958
	nop			;9959
	ld c,c			;995a
	nop			;995b
	ld (hl),d		;995c
	nop			;995d
	ld (hl),e		;995e
	nop			;995f
	ld c,h			;9960
	nop			;9961
	ld c,l			;9962
	nop			;9963
	ld c,(hl)		;9964
	nop			;9965
	ld c,a			;9966
	nop			;9967
	ld c,h			;9968
	nop			;9969
	ld c,l			;996a
	nop			;996b
	ld c,(hl)		;996c
	nop			;996d
	ld c,a			;996e
	nop			;996f
	nop			;9970
	nop			;9971
	nop			;9972
	nop			;9973
	nop			;9974
	nop			;9975
	nop			;9976
	nop			;9977
	nop			;9978
	nop			;9979
	nop			;997a
	nop			;997b
	nop			;997c
	nop			;997d
	nop			;997e
	nop			;997f
	nop			;9980
	nop			;9981
	nop			;9982
	nop			;9983
	nop			;9984
	nop			;9985
	nop			;9986
	nop			;9987
	nop			;9988
	nop			;9989
	ld c,h			;998a
	nop			;998b
	ld c,l			;998c
	nop			;998d
	ld l,e			;998e
	nop			;998f
	sub l			;9990
	nop			;9991
	sub e			;9992
	nop			;9993
	sub h			;9994
	nop			;9995
	nop			;9996
	nop			;9997
	ld c,h			;9998
	nop			;9999
	ld c,l			;999a
	nop			;999b
	ld c,(hl)		;999c
	nop			;999d
	ld c,a			;999e
	nop			;999f
	ld d,b			;99a0
	nop			;99a1
	ld d,c			;99a2
	nop			;99a3
	ld d,d			;99a4
	nop			;99a5
	nop			;99a6
	nop			;99a7
	ld d,b			;99a8
	nop			;99a9
	ld d,c			;99aa
	nop			;99ab
	ld d,d			;99ac
	nop			;99ad
	nop			;99ae
	nop			;99af
	nop			;99b0
	nop			;99b1
	nop			;99b2
	nop			;99b3
	nop			;99b4
	nop			;99b5
	nop			;99b6
	nop			;99b7
	nop			;99b8
	nop			;99b9
	nop			;99ba
	nop			;99bb
	nop			;99bc
	nop			;99bd
	nop			;99be
	nop			;99bf
	nop			;99c0
	nop			;99c1
	nop			;99c2
	nop			;99c3
	nop			;99c4
	nop			;99c5
	nop			;99c6
	nop			;99c7
	nop			;99c8
	nop			;99c9
	ld d,b			;99ca
	nop			;99cb
	ld d,c			;99cc
	nop			;99cd
	ld d,d			;99ce
	nop			;99cf
	nop			;99d0
	nop			;99d1
	nop			;99d2
	nop			;99d3
	nop			;99d4
	nop			;99d5
	nop			;99d6
	nop			;99d7
	ld d,b			;99d8
	nop			;99d9
	ld d,c			;99da
	nop			;99db
	ld d,d			;99dc
	nop			;99dd
	nop			;99de
	nop			;99df
	nop			;99e0
	nop			;99e1
	nop			;99e2
	nop			;99e3
	nop			;99e4
	nop			;99e5
	nop			;99e6
	nop			;99e7
	nop			;99e8
	nop			;99e9
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
	rst 38h			;9a00
	rst 38h			;9a01
	cp 0feh			;9a02
	cp 0feh			;9a04
	cp 0feh			;9a06
	cp 0feh			;9a08
	cp 0feh			;9a0a
	cp 0feh			;9a0c
	cp 0feh			;9a0e
	cp 0feh			;9a10
	cp 0feh			;9a12
	cp 0feh			;9a14
	cp 0feh			;9a16
	cp 0feh			;9a18
	cp 0feh			;9a1a
	cp 0feh			;9a1c
	cp 0feh			;9a1e
	cp 0feh			;9a20
	cp 0feh			;9a22
	cp 0feh			;9a24
	cp 0feh			;9a26
	cp 0feh			;9a28
	cp 0feh			;9a2a
	cp 0feh			;9a2c
	cp 0feh			;9a2e
	cp 0feh			;9a30
	cp 0feh			;9a32
	cp 0feh			;9a34
	cp 0feh			;9a36
	cp 0feh			;9a38
	dec b			;9a3a
	nop			;9a3b
	cp 0feh			;9a3c
	cp 0feh			;9a3e
	cp 0feh			;9a40
	cp 0feh			;9a42
	cp 0feh			;9a44
	cp 0feh			;9a46
	cp 0feh			;9a48
	cp 0feh			;9a4a
	cp 0feh			;9a4c
	ld bc,00200h		;9a4e
	nop			;9a51
	cp 0feh			;9a52
	cp 0feh			;9a54
	cp 0feh			;9a56
	cp 0feh			;9a58
	cp 0feh			;9a5a
	cp 0feh			;9a5c
	cp 0feh			;9a5e
	cp 0feh			;9a60
	cp 0feh			;9a62
	cp 0feh			;9a64
	cp 0feh			;9a66
	cp 0feh			;9a68
	cp 0feh			;9a6a
	cp 0feh			;9a6c
	cp 0feh			;9a6e
	cp 0feh			;9a70
	dec b			;9a72
	nop			;9a73
	ld b,000h		;9a74
	dec c			;9a76
	nop			;9a77
	ld e,e			;9a78
	nop			;9a79
	ld b,c			;9a7a
	nop			;9a7b
	cp 0feh			;9a7c
	cp 0feh			;9a7e
	cp 0feh			;9a80
	cp 0feh			;9a82
	cp 0feh			;9a84
	cp 0feh			;9a86
	cp 0feh			;9a88
	cp 0feh			;9a8a
	ld c,000h		;9a8c
	sub d			;9a8e
	nop			;9a8f
	inc sp			;9a90
	nop			;9a91
	ld d,(hl)		;9a92
	nop			;9a93
	inc (hl)		;9a94
	nop			;9a95
	ld d,a			;9a96
	nop			;9a97
	xor h			;9a98
	nop			;9a99
	and b			;9a9a
	nop			;9a9b
	and c			;9a9c
	nop			;9a9d
	and d			;9a9e
	nop			;9a9f
	and e			;9aa0
	nop			;9aa1
	ld h,e			;9aa2
	nop			;9aa3
	ld h,h			;9aa4
	nop			;9aa5
	ld h,l			;9aa6
	nop			;9aa7
	rrca			;9aa8
	nop			;9aa9
	ld b,e			;9aaa
	nop			;9aab
	ld d,d			;9aac
	nop			;9aad
	ld b,h			;9aae
	nop			;9aaf
	ld e,h			;9ab0
	nop			;9ab1
	xor e			;9ab2
	nop			;9ab3
	ld e,l			;9ab4
	nop			;9ab5
	ld b,a			;9ab6
	nop			;9ab7
	add a,l			;9ab8
	nop			;9ab9
	djnz l9abch		;9aba
l9abch:
	cp 0feh			;9abc
	cp 0feh			;9abe
	cp 0feh			;9ac0
	cp 0feh			;9ac2
	cp 0feh			;9ac4
	cp 0feh			;9ac6
	cp 0feh			;9ac8
	cp 0feh			;9aca
	dec (hl)		;9acc
	nop			;9acd
	ld l,(hl)		;9ace
	nop			;9acf
	sub e			;9ad0
	nop			;9ad1
	ld l,a			;9ad2
	nop			;9ad3
	scf			;9ad4
	nop			;9ad5
	sub h			;9ad6
	nop			;9ad7
	xor l			;9ad8
	nop			;9ad9
	sub b			;9ada
	nop			;9adb
	ld a,b			;9adc
	nop			;9add
	sub c			;9ade
	nop			;9adf
	ld (hl),h		;9ae0
	nop			;9ae1
	ld l,b			;9ae2
	nop			;9ae3
	ld d,e			;9ae4
	nop			;9ae5
	sbc a,d			;9ae6
	nop			;9ae7
	ld b,d			;9ae8
	nop			;9ae9
	add a,(hl)		;9aea
	nop			;9aeb
	add a,a			;9aec
	nop			;9aed
	adc a,c			;9aee
	nop			;9aef
	ld b,l			;9af0
	nop			;9af1
	adc a,d			;9af2
	nop			;9af3
	adc a,e			;9af4
	nop			;9af5
	ld c,b			;9af6
	nop			;9af7
	ld b,(hl)		;9af8
	nop			;9af9
	rlca			;9afa
	nop			;9afb
	cp 0feh			;9afc
	cp 0feh			;9afe
	cp 0feh			;9b00
	cp 0feh			;9b02
	cp 0feh			;9b04
	cp 0feh			;9b06
	cp 0feh			;9b08
	inc bc			;9b0a
	nop			;9b0b
	ld e,c			;9b0c
	nop			;9b0d
	ld a,d			;9b0e
	nop			;9b0f
	sbc a,c			;9b10
	nop			;9b11
	ld a,e			;9b12
	nop			;9b13
	sub l			;9b14
	nop			;9b15
	ld a,l			;9b16
	nop			;9b17
	ld a,a			;9b18
	nop			;9b19
	ld e,d			;9b1a
	nop			;9b1b
	ld a,h			;9b1c
	nop			;9b1d
	xor (hl)		;9b1e
	nop			;9b1f
	ld (hl),l		;9b20
	nop			;9b21
	ld h,d			;9b22
	nop			;9b23
	ld d,h			;9b24
	nop			;9b25
	ld c,d			;9b26
	nop			;9b27
	sbc a,e			;9b28
	nop			;9b29
	adc a,l			;9b2a
	nop			;9b2b
	ex af,af'		;9b2c
	nop			;9b2d
	adc a,h			;9b2e
	nop			;9b2f
	ld c,c			;9b30
	nop			;9b31
	ld e,(hl)		;9b32
	nop			;9b33
	sbc a,a			;9b34
	nop			;9b35
	ld e,a			;9b36
	nop			;9b37
	ld c,e			;9b38
	nop			;9b39
	cp 0feh			;9b3a
	cp 0feh			;9b3c
	cp 0feh			;9b3e
	cp 0feh			;9b40
	cp 0feh			;9b42
	cp 0feh			;9b44
	cp 0feh			;9b46
	cp 0feh			;9b48
	ld (hl),000h		;9b4a
	sub (hl)		;9b4c
	nop			;9b4d
	ld a,(hl)		;9b4e
	nop			;9b4f
	jr c,l9b52h		;9b50
l9b52h:
	sub a			;9b52
	nop			;9b53
	sbc a,b			;9b54
	nop			;9b55
	add hl,sp		;9b56
	nop			;9b57
	halt			;9b58
	nop			;9b59
	ld (hl),c		;9b5a
	nop			;9b5b
	add a,b			;9b5c
	nop			;9b5d
	ld (hl),d		;9b5e
	nop			;9b5f
	ld (hl),a		;9b60
	nop			;9b61
	ld l,h			;9b62
	nop			;9b63
	ld l,c			;9b64
	nop			;9b65
	sbc a,h			;9b66
	nop			;9b67
	ld c,h			;9b68
	nop			;9b69
	ld c,l			;9b6a
	nop			;9b6b
	ld l,d			;9b6c
	nop			;9b6d
	ld l,e			;9b6e
	nop			;9b6f
	ld c,(hl)		;9b70
	nop			;9b71
	sbc a,l			;9b72
	nop			;9b73
	sbc a,(hl)		;9b74
	nop			;9b75
	adc a,b			;9b76
	nop			;9b77
	ld de,0fe00h		;9b78
	cp 0feh			;9b7b
	cp 0feh			;9b7d
	cp 0feh			;9b7f
	cp 0feh			;9b81
	cp 0feh			;9b83
	cp 0feh			;9b85
	cp 0feh			;9b87
	cp 058h			;9b89
	nop			;9b8b
	add a,c			;9b8c
	nop			;9b8d
	ld a,(03b00h)		;9b8e
	nop			;9b91
	inc a			;9b92
	nop			;9b93
	add a,d			;9b94
	nop			;9b95
	dec a			;9b96
	nop			;9b97
	ld a,c			;9b98
	nop			;9b99
	add a,e			;9b9a
	nop			;9b9b
	ld a,000h		;9b9c
	ld h,(hl)		;9b9e
	nop			;9b9f
	add a,h			;9ba0
	nop			;9ba1
	ld h,b			;9ba2
	nop			;9ba3
	ld d,l			;9ba4
	nop			;9ba5
	ld h,c			;9ba6
	nop			;9ba7
	ld d,b			;9ba8
	nop			;9ba9
	ld b,b			;9baa
	nop			;9bab
	ld (de),a		;9bac
	nop			;9bad
	ld d,c			;9bae
	nop			;9baf
	ld c,a			;9bb0
	nop			;9bb1
	adc a,a			;9bb2
	nop			;9bb3
	ld l,l			;9bb4
	nop			;9bb5
	adc a,(hl)		;9bb6
	nop			;9bb7
	add hl,bc		;9bb8
	nop			;9bb9
	or b			;9bba
	nop			;9bbb
	or c			;9bbc
	nop			;9bbd
	cp 0feh			;9bbe
	cp 0feh			;9bc0
	cp 0feh			;9bc2
	cp 0feh			;9bc4
	cp 0feh			;9bc6
	inc b			;9bc8
	nop			;9bc9
	ld h,a			;9bca
	nop			;9bcb
	ccf			;9bcc
	nop			;9bcd
	cp 0feh			;9bce
	cp 0feh			;9bd0
	cp 0feh			;9bd2
	cp 0feh			;9bd4
	cp 0feh			;9bd6
	cp 0feh			;9bd8
	cp 0feh			;9bda
	cp 0feh			;9bdc
	cp 0feh			;9bde
	cp 0feh			;9be0
	cp 0feh			;9be2
	cp 0feh			;9be4
	cp 0feh			;9be6
	cp 0feh			;9be8
	cp 0feh			;9bea
	cp 0feh			;9bec
	cp 0feh			;9bee
	cp 0feh			;9bf0
	cp 0feh			;9bf2
	cp 0feh			;9bf4
	cp 0feh			;9bf6
	cp 0feh			;9bf8
	cp 0feh			;9bfa
	cp 0feh			;9bfc
	cp 0feh			;9bfe
	cp 0feh			;9c00
	cp 0feh			;9c02
	cp 0feh			;9c04
	cp 0feh			;9c06
	cp 0feh			;9c08
	cp 0feh			;9c0a
	cp 0feh			;9c0c
	cp 0feh			;9c0e
	cp 0feh			;9c10
	cp 0feh			;9c12
	cp 0feh			;9c14
	cp 0feh			;9c16
	cp 0feh			;9c18
	dec bc			;9c1a
	nop			;9c1b
	inc l			;9c1c
	nop			;9c1d
	cp 0feh			;9c1e
	cp 0feh			;9c20
	cp 0feh			;9c22
	cp 0feh			;9c24
	cp 0feh			;9c26
	cp 0feh			;9c28
	cp 0feh			;9c2a
	cp 0feh			;9c2c
	cp 0feh			;9c2e
	cp 0feh			;9c30
	cp 0feh			;9c32
	cp 0feh			;9c34
	cp 0feh			;9c36
	cp 0feh			;9c38
	cp 0feh			;9c3a
	cp 0feh			;9c3c
	cp 0feh			;9c3e
	cp 0feh			;9c40
	cp 0feh			;9c42
	cp 0feh			;9c44
	cp 0feh			;9c46
	cp 0feh			;9c48
	cp 0feh			;9c4a
	cp 0feh			;9c4c
	cp 0feh			;9c4e
	cp 0feh			;9c50
	cp 0feh			;9c52
	cp 0feh			;9c54
	cp 0feh			;9c56
	cp 0feh			;9c58
	dec l			;9c5a
	nop			;9c5b
	ld l,000h		;9c5c
	cp 0feh			;9c5e
	cp 0feh			;9c60
	cp 0feh			;9c62
	cp 0feh			;9c64
	cp 0feh			;9c66
	dec d			;9c68
	nop			;9c69
	cp 0feh			;9c6a
	cp 0feh			;9c6c
	ld (0fe00h),a		;9c6e
	cp 0feh			;9c71
	cp 0feh			;9c73
	cp 0feh			;9c75
	cp 0feh			;9c77
	cp 0feh			;9c79
	cp 0feh			;9c7b
	cp 0feh			;9c7d
	cp 0feh			;9c7f
	cp 0feh			;9c81
	cp 0feh			;9c83
	cp 0feh			;9c85
	cp 0feh			;9c87
	cp 0feh			;9c89
	cp 0feh			;9c8b
	cp 0feh			;9c8d
	cp 0feh			;9c8f
	cp 0feh			;9c91
	cp 0feh			;9c93
	cp 0feh			;9c95
	cp 00ch			;9c97
	nop			;9c99
	cpl			;9c9a
	nop			;9c9b
	inc de			;9c9c
	nop			;9c9d
	inc d			;9c9e
	nop			;9c9f
	ld a,(bc)		;9ca0
	nop			;9ca1
	dec e			;9ca2
	nop			;9ca3
	ld e,000h		;9ca4
	rra			;9ca6
	nop			;9ca7
	jr nz,l9caah		;9ca8
l9caah:
	ld hl,02200h		;9caa
	nop			;9cad
	inc hl			;9cae
	nop			;9caf
	cp 0feh			;9cb0
	cp 0feh			;9cb2
	cp 0feh			;9cb4
	cp 0feh			;9cb6
	cp 0feh			;9cb8
	cp 0feh			;9cba
	cp 0feh			;9cbc
	cp 0feh			;9cbe
	cp 0feh			;9cc0
	cp 0feh			;9cc2
	cp 0feh			;9cc4
	cp 0feh			;9cc6
	cp 0feh			;9cc8
	cp 0feh			;9cca
	cp 0feh			;9ccc
	cp 0feh			;9cce
	cp 0feh			;9cd0
	cp 0feh			;9cd2
	cp 0feh			;9cd4
	cp 0feh			;9cd6
	cp 0feh			;9cd8
	ld d,000h		;9cda
	rla			;9cdc
	nop			;9cdd
	jr l9ce0h		;9cde
l9ce0h:
	add hl,de		;9ce0
	nop			;9ce1
	inc h			;9ce2
	nop			;9ce3
	dec h			;9ce4
	nop			;9ce5
	ld h,000h		;9ce6
	daa			;9ce8
	nop			;9ce9
	jr z,l9cech		;9cea
l9cech:
	cp 0feh			;9cec
	cp 0feh			;9cee
	cp 0feh			;9cf0
	cp 0feh			;9cf2
	cp 0feh			;9cf4
	cp 0feh			;9cf6
	cp 0feh			;9cf8
	cp 0feh			;9cfa
	cp 0feh			;9cfc
	cp 0feh			;9cfe
	cp 0feh			;9d00
	cp 0feh			;9d02
	cp 0feh			;9d04
	cp 0feh			;9d06
	cp 0feh			;9d08
	cp 0feh			;9d0a
	cp 0feh			;9d0c
	cp 0feh			;9d0e
	cp 0feh			;9d10
	cp 0feh			;9d12
	cp 0feh			;9d14
	cp 0feh			;9d16
	jr nc,l9d1ah		;9d18
l9d1ah:
	ld a,(de)		;9d1a
	nop			;9d1b
	ld sp,01b00h		;9d1c
	nop			;9d1f
	inc e			;9d20
	nop			;9d21
	add hl,hl		;9d22
	nop			;9d23
	ld hl,(02b00h)		;9d24
	nop			;9d27
	xor a			;9d28
	nop			;9d29
	cp 0feh			;9d2a
	cp 0feh			;9d2c
	cp 0feh			;9d2e
	cp 0feh			;9d30
	cp 0feh			;9d32
	cp 0feh			;9d34
	cp 0feh			;9d36
	cp 0feh			;9d38
	cp 0feh			;9d3a
	cp 0feh			;9d3c
	cp 0feh			;9d3e
	cp 0feh			;9d40
	cp 0feh			;9d42
	cp 0feh			;9d44
	cp 0feh			;9d46
	cp 0feh			;9d48
	cp 0feh			;9d4a
	cp 0feh			;9d4c
	cp 0feh			;9d4e
	cp 0feh			;9d50
	cp 0feh			;9d52
	cp 0feh			;9d54
	cp 0feh			;9d56
	xor c			;9d58
	nop			;9d59
	xor d			;9d5a
	nop			;9d5b
	and h			;9d5c
	nop			;9d5d
	and l			;9d5e
	nop			;9d5f
	and (hl)		;9d60
	nop			;9d61
	ld h,e			;9d62
	nop			;9d63
	ld h,h			;9d64
	nop			;9d65
	ld h,l			;9d66
	nop			;9d67
	rrca			;9d68
	nop			;9d69
	ld b,e			;9d6a
	nop			;9d6b
	ld d,d			;9d6c
	nop			;9d6d
	ld b,h			;9d6e
	nop			;9d6f
	cp 0feh			;9d70
	cp 0feh			;9d72
	cp 0feh			;9d74
	cp 0feh			;9d76
	cp 0feh			;9d78
	cp 0feh			;9d7a
	cp 0feh			;9d7c
	cp 0feh			;9d7e
	cp 0feh			;9d80
	cp 0feh			;9d82
	cp 0feh			;9d84
	cp 0feh			;9d86
	cp 0feh			;9d88
	cp 0feh			;9d8a
	cp 0feh			;9d8c
	cp 0feh			;9d8e
	cp 0feh			;9d90
	cp 0feh			;9d92
	cp 0feh			;9d94
	cp 0feh			;9d96
	ld (hl),e		;9d98
	nop			;9d99
	ld (hl),b		;9d9a
	nop			;9d9b
	ld a,b			;9d9c
	nop			;9d9d
	and a			;9d9e
	nop			;9d9f
	ld (hl),h		;9da0
	nop			;9da1
	ld l,b			;9da2
	nop			;9da3
	ld d,e			;9da4
	nop			;9da5
	sbc a,d			;9da6
	nop			;9da7
	ld b,d			;9da8
	nop			;9da9
	add a,(hl)		;9daa
	nop			;9dab
	add a,a			;9dac
	nop			;9dad
	adc a,c			;9dae
	nop			;9daf
	cp 0feh			;9db0
	cp 0feh			;9db2
	cp 0feh			;9db4
	cp 0feh			;9db6
	cp 0feh			;9db8
	cp 0feh			;9dba
	cp 0feh			;9dbc
	cp 0feh			;9dbe
	cp 0feh			;9dc0
	cp 0feh			;9dc2
	cp 0feh			;9dc4
	cp 0feh			;9dc6
	cp 0feh			;9dc8
	cp 0feh			;9dca
	cp 0feh			;9dcc
	cp 0feh			;9dce
	cp 0feh			;9dd0
	cp 0feh			;9dd2
	cp 0feh			;9dd4
	cp 0feh			;9dd6
	ld a,a			;9dd8
	nop			;9dd9
	ld e,d			;9dda
	nop			;9ddb
	ld a,h			;9ddc
	nop			;9ddd
	xor b			;9dde
	nop			;9ddf
	ld (hl),l		;9de0
	nop			;9de1
	ld h,d			;9de2
	nop			;9de3
	ld d,h			;9de4
	nop			;9de5
	ld c,d			;9de6
	nop			;9de7
	sbc a,e			;9de8
	nop			;9de9
	adc a,l			;9dea
	nop			;9deb
	ex af,af'		;9dec
	nop			;9ded
	adc a,h			;9dee
	nop			;9def
	cp 0feh			;9df0
	cp 0feh			;9df2
	cp 0feh			;9df4
	cp 0feh			;9df6
	cp 0feh			;9df8
	cp 0feh			;9dfa
	cp 0feh			;9dfc
	cp 0feh			;9dfe
	cp 0feh			;9e00
	rst 38h			;9e02
l9e03h:
	rst 38h			;9e03
	nop			;9e04
	nop			;9e05
	nop			;9e06
	nop			;9e07
	nop			;9e08
	nop			;9e09
	nop			;9e0a
	nop			;9e0b
	nop			;9e0c
	nop			;9e0d
	nop			;9e0e
	nop			;9e0f
	nop			;9e10
	nop			;9e11
	nop			;9e12
	nop			;9e13
	nop			;9e14
	nop			;9e15
	nop			;9e16
	nop			;9e17
	nop			;9e18
	nop			;9e19
	nop			;9e1a
	nop			;9e1b
	nop			;9e1c
	nop			;9e1d
	nop			;9e1e
	nop			;9e1f
	nop			;9e20
	nop			;9e21
	nop			;9e22
	nop			;9e23
	nop			;9e24
	nop			;9e25
	nop			;9e26
	nop			;9e27
	nop			;9e28
	nop			;9e29
	nop			;9e2a
	ld bc,00101h		;9e2b
	ld (bc),a		;9e2e
	inc bc			;9e2f
	ld (bc),a		;9e30
	inc b			;9e31
	rlca			;9e32
	dec b			;9e33
	nop			;9e34
	nop			;9e35
	nop			;9e36
	rra			;9e37
	rra			;9e38
	rra			;9e39
	dec l			;9e3a
	ld hl,07e3fh		;9e3b
	ld a,(hl)		;9e3e
	ld a,(hl)		;9e3f
	add a,(hl)		;9e40
	jp m,00c82h		;9e41
	call p,00c64h		;9e44
	call p,018c4h		;9e47
	ret pe			;9e4a
	ret z			;9e4b
l9e4ch:
	nop			;9e4c
	nop			;9e4d
	nop			;9e4e
	nop			;9e4f
	nop			;9e50
l9e51h:
	nop			;9e51
	nop			;9e52
	nop			;9e53
	nop			;9e54
	nop			;9e55
	nop			;9e56
	nop			;9e57
	nop			;9e58
	nop			;9e59
	nop			;9e5a
	ld bc,00101h		;9e5b
	ld (bc),a		;9e5e
	inc bc			;9e5f
	ld (bc),a		;9e60
	inc b			;9e61
	rlca			;9e62
	dec b			;9e63
	ex af,af'		;9e64
	rrca			;9e65
l9e66h:
	dec bc			;9e66
	djnz $+33		;9e67
	rla			;9e69
	jr nz,l9eabh		;9e6a
	ld l,040h		;9e6c
	ld a,a			;9e6e
	ld e,(hl)		;9e6f
	add a,b			;9e70
	rst 38h			;9e71
	cp h			;9e72
	nop			;9e73
	rst 38h			;9e74
	ld a,b			;9e75
	nop			;9e76
	rst 38h			;9e77
	ret m			;9e78
	ld bc,0f0feh		;9e79
	jr l9e66h		;9e7c
	adc a,b			;9e7e
	jr nc,l9e51h		;9e7f
	djnz $+50		;9e81
	ret nc			;9e83
	djnz l9ee6h		;9e84
	and b			;9e86
	jr nz,l9ee9h		;9e87
	and b			;9e89
	jr nz,l9e4ch		;9e8a
	ld b,b			;9e8c
	ld b,b			;9e8d
	ret nz			;9e8e
	ld b,b			;9e8f
	ld b,b			;9e90
	add a,b			;9e91
	add a,b			;9e92
	add a,b			;9e93
	nop			;9e94
	nop			;9e95
	nop			;9e96
	nop			;9e97
	nop			;9e98
	nop			;9e99
	nop			;9e9a
	nop			;9e9b
	nop			;9e9c
	nop			;9e9d
	nop			;9e9e
	nop			;9e9f
	nop			;9ea0
	nop			;9ea1
	nop			;9ea2
	ld bc,00101h		;9ea3
	ld (bc),a		;9ea6
	inc bc			;9ea7
	ld (bc),a		;9ea8
	ld b,005h		;9ea9
l9eabh:
	inc b			;9eab
	ex af,af'		;9eac
	rrca			;9ead
	dec bc			;9eae
	djnz $+33		;9eaf
	rla			;9eb1
	jr nz,l9ef3h		;9eb2
	cpl			;9eb4
	ld b,b			;9eb5
	ld a,a			;9eb6
	ld e,a			;9eb7
	add a,b			;9eb8
	rst 38h			;9eb9
	cp a			;9eba
	nop			;9ebb
	rst 38h			;9ebc
	ld a,(hl)		;9ebd
	nop			;9ebe
	rst 38h			;9ebf
	ret p			;9ec0
	rrca			;9ec1
	ret p			;9ec2
	nop			;9ec3
	ld bc,0f0feh		;9ec4
	inc bc			;9ec7
	pop iy			;9ec8
	inc bc			;9eca
	defb 0fdh,0c1h,006h ;illegal sequence	;9ecb
	jp m,006c2h		;9ece
	jp m,00c82h		;9ed1
	call p,00c04h		;9ed4
	call p,0f804h		;9ed7
	ex af,af'		;9eda
	ex af,af'		;9edb
	nop			;9edc
	nop			;9edd
	nop			;9ede
	nop			;9edf
	nop			;9ee0
	nop			;9ee1
	nop			;9ee2
	nop			;9ee3
	nop			;9ee4
	nop			;9ee5
l9ee6h:
	nop			;9ee6
	nop			;9ee7
	nop			;9ee8
l9ee9h:
	nop			;9ee9
	nop			;9eea
	rlca			;9eeb
	rlca			;9eec
	rlca			;9eed
	ccf			;9eee
	ccf			;9eef
l9ef0h:
	jr c,l9ef0h		;9ef0
	rst 38h			;9ef2
l9ef3h:
	pop bc			;9ef3
	nop			;9ef4
	nop			;9ef5
	nop			;9ef6
	nop			;9ef7
	nop			;9ef8
	nop			;9ef9
	nop			;9efa
	nop			;9efb
	nop			;9efc
	nop			;9efd
	nop			;9efe
	nop			;9eff
	rst 38h			;9f00
	rst 38h			;9f01
	rst 38h			;9f02
	ret m			;9f03
	rst 38h			;9f04
	rrca			;9f05
	jr c,$+1		;9f06
	rst 8			;9f08
	ld (hl),b		;9f09
	rst 38h			;9f0a
	sbc a,a			;9f0b
	rlca			;9f0c
	inc b			;9f0d
	inc b			;9f0e
	rlca			;9f0f
	rlca			;9f10
	rlca			;9f11
	ld bc,00101h		;9f12
	rst 38h			;9f15
	rst 38h			;9f16
	rst 38h			;9f17
	ret nz			;9f18
	rst 38h			;9f19
	rst 18h			;9f1a
	ld (hl),b		;9f1b
	rst 38h			;9f1c
	rst 30h			;9f1d
	jr nc,$+1		;9f1e
	or a			;9f20
	ld (hl),b		;9f21
	rst 38h			;9f22
	ld (hl),a		;9f23
	rst 38h			;9f24
	rrca			;9f25
	rrca			;9f26
	rst 38h			;9f27
	ret p			;9f28
	ret p			;9f29
	call m,00003h		;9f2a
	ret p			;9f2d
	rst 8			;9f2e
	ret nz			;9f2f
	ld a,a			;9f30
	cp 07eh			;9f31
	inc bc			;9f33
	rst 38h			;9f34
	add a,e			;9f35
	nop			;9f36
	rst 38h			;9f37
	call m,0ff00h		;9f38
	rst 38h			;9f3b
	ret p			;9f3c
	ret p			;9f3d
	ret p			;9f3e
	ret po			;9f3f
	jr nz,l9f62h		;9f40
	ld b,b			;9f42
	ret nz			;9f43
	ld b,b			;9f44
	ld b,b			;9f45
	ret nz			;9f46
	ld b,b			;9f47
	ret nz			;9f48
	ld b,b			;9f49
	ld b,b			;9f4a
	ret nz			;9f4b
	ret nz			;9f4c
	ret nz			;9f4d
	ld (hl),b		;9f4e
	ret p			;9f4f
	ld (hl),b		;9f50
	inc e			;9f51
	call pe,0018ch		;9f52
	ld bc,00701h		;9f55
	rlca			;9f58
	ld b,00fh		;9f59
	rrca			;9f5b
	ex af,af'		;9f5c
	rra			;9f5d
	rra			;9f5e
l9f5fh:
	djnz $+65		;9f5f
	ccf			;9f61
l9f62h:
	jr nz,l9fe3h		;9f62
	ld a,a			;9f64
l9f65h:
	ld b,c			;9f65
	ld a,a			;9f66
	ld a,(hl)		;9f67
	ld c,(hl)		;9f68
	cp a			;9f69
	ret p			;9f6a
	or b			;9f6b
	defb 0fdh,0ffh,002h ;illegal sequence	;9f6c
	rst 30h			;9f6f
	rst 38h			;9f70
	ex af,af'		;9f71
	rst 38h			;9f72
	rst 38h			;9f73
	inc bc			;9f74
	ld a,h			;9f75
	rst 38h			;9f76
	adc a,h			;9f77
	ret p			;9f78
	rst 38h			;9f79
	inc sp			;9f7a
	ret nz			;9f7b
	rst 38h			;9f7c
	rst 0			;9f7d
	add a,b			;9f7e
	ld a,a			;9f7f
	rra			;9f80
	nop			;9f81
	rst 38h			;9f82
	jr nc,l9f65h		;9f83
	rst 38h			;9f85
	ld a,(hl)		;9f86
	add a,b			;9f87
	rst 38h			;9f88
	cp a			;9f89
	inc bc			;9f8a
	call m,00778h		;9f8b
	rst 38h			;9f8e
	rst 30h			;9f8f
	ld c,0ffh		;9f90
	xor 000h		;9f92
	rst 38h			;9f94
	rst 38h			;9f95
	jr c,l9f5fh		;9f96
	rlca			;9f98
l9f99h:
	ret p			;9f99
	rst 38h			;9f9a
	ret p			;9f9b
	ret po			;9f9c
	rst 38h			;9f9d
	rst 28h			;9f9e
	ld bc,0fcfeh		;9f9f
	add a,a			;9fa2
	ld a,c			;9fa3
	add hl,sp		;9fa4
	ld c,0f7h		;9fa5
	halt			;9fa7
	jr l9f99h		;9fa8
	ex de,hl		;9faa
	add hl,de		;9fab
	rst 30h			;9fac
	di			;9fad
	dec e			;9fae
	ei			;9faf
	add hl,de		;9fb0
	rrca			;9fb1
	rst 38h			;9fb2
	rrca			;9fb3
	nop			;9fb4
	rst 38h			;9fb5
	nop			;9fb6
	rst 38h			;9fb7
	rlca			;9fb8
	rlca			;9fb9
	rst 38h			;9fba
	rst 38h			;9fbb
	rst 38h			;9fbc
	nop			;9fbd
	rst 38h			;9fbe
	rst 38h			;9fbf
	rst 38h			;9fc0
	nop			;9fc1
	nop			;9fc2
	nop			;9fc3
	rst 38h			;9fc4
	rst 38h			;9fc5
	rst 38h			;9fc6
	nop			;9fc7
	nop			;9fc8
	rst 38h			;9fc9
	rst 38h			;9fca
	rst 38h			;9fcb
	ld c,0f2h		;9fcc
	ld (bc),a		;9fce
	cp 0feh			;9fcf
	cp 0ffh			;9fd1
	rst 38h			;9fd3
	rst 38h			;9fd4
	ccf			;9fd5
	rst 0			;9fd6
	rlca			;9fd7
	rst 38h			;9fd8
	rst 38h			;9fd9
	rst 38h			;9fda
	nop			;9fdb
	rst 38h			;9fdc
	ret m			;9fdd
	rst 38h			;9fde
	nop			;9fdf
	nop			;9fe0
	rst 38h			;9fe1
	rst 38h			;9fe2
l9fe3h:
	rst 38h			;9fe3
	nop			;9fe4
	nop			;9fe5
	nop			;9fe6
	nop			;9fe7
	nop			;9fe8
	nop			;9fe9
	nop			;9fea
	nop			;9feb
	nop			;9fec
	rst 38h			;9fed
	rst 38h			;9fee
	rst 38h			;9fef
	nop			;9ff0
	rst 38h			;9ff1
	rst 38h			;9ff2
	rst 38h			;9ff3
	add a,b			;9ff4
	add a,b			;9ff5
	rst 38h			;9ff6
	rst 38h			;9ff7
	rst 38h			;9ff8
	nop			;9ff9
	nop			;9ffa
	nop			;9ffb
	nop			;9ffc
	nop			;9ffd
	nop			;9ffe
	nop			;9fff
