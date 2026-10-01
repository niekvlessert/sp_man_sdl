; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank22_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank22.bin

	org 08000h

	nop			;8000
	nop			;8001
	nop			;8002
	nop			;8003
	nop			;8004
	cp 0feh			;8005
	cp 00eh			;8007
	jp p,0f2feh		;8009
	ld (bc),a		;800c
	ld c,0feh		;800d
	cp 0feh			;800f
	nop			;8011
	nop			;8012
	nop			;8013
	call m,sub_8083h	;8014
	rst 8			;8017
	or b			;8018
	add a,b			;8019
	ld (hl),b		;801a
	ld a,a			;801b
	ld (hl),b		;801c
	rrca			;801d
	rrca			;801e
	rrca			;801f
	nop			;8020
	nop			;8021
	nop			;8022
	nop			;8023
	nop			;8024
	nop			;8025
	nop			;8026
	nop			;8027
	nop			;8028
	nop			;8029
	nop			;802a
	nop			;802b
	inc bc			;802c
	rst 38h			;802d
	inc bc			;802e
	rst 28h			;802f
	rra			;8030
	rrca			;8031
	ld a,0ffh		;8032
	ld a,0fch		;8034
	ei			;8036
	ret m			;8037
	ld a,a			;8038
	ld a,a			;8039
	ld a,a			;803a
	nop			;803b
	nop			;803c
	nop			;803d
sub_803eh:
	nop			;803e
	nop			;803f
	nop			;8040
	nop			;8041
	nop			;8042
	nop			;8043
	ret nz			;8044
	rst 38h			;8045
	ret nz			;8046
	cp a			;8047
	ret nz			;8048
	add a,b			;8049
	rst 38h			;804a
	nop			;804b
	nop			;804c
	nop			;804d
	rst 38h			;804e
	nop			;804f
	rst 38h			;8050
	rst 38h			;8051
	rst 38h			;8052
	ld bc,00101h		;8053
	nop			;8056
	nop			;8057
	nop			;8058
	nop			;8059
	nop			;805a
	nop			;805b
	rst 38h			;805c
	inc bc			;805d
	inc bc			;805e
	rst 38h			;805f
	nop			;8060
	nop			;8061
	rst 38h			;8062
	ccf			;8063
	ccf			;8064
	ld a,(hl)		;8065
	pop af			;8066
	ld (hl),b		;8067
	rst 38h			;8068
	rst 38h			;8069
	rst 38h			;806a
	ret m			;806b
	add a,a			;806c
	add a,b			;806d
	ld a,a			;806e
	ld (hl),b		;806f
	ld (hl),b		;8070
	rrca			;8071
	inc c			;8072
	inc c			;8073
	rst 38h			;8074
	nop			;8075
	nop			;8076
	rst 38h			;8077
	rst 38h			;8078
	rst 38h			;8079
	call m,0fcfch		;807a
	ld (hl),b		;807d
	sub b			;807e
sub_807fh:
	djnz $+1		;807f
	rst 38h			;8081
	rst 38h			;8082
sub_8083h:
	inc bc			;8083
	call m,0ff00h		;8084
	nop			;8087
	nop			;8088
	rst 38h			;8089
	nop			;808a
	nop			;808b
	cp 03eh			;808c
	ld a,0e0h		;808e
	ret po			;8090
	ret po			;8091
	nop			;8092
	nop			;8093
	nop			;8094
	nop			;8095
	nop			;8096
	nop			;8097
	add a,b			;8098
	add a,b			;8099
	add a,b			;809a
	add a,b			;809b
	add a,b			;809c
	add a,b			;809d
	ret nz			;809e
	ld b,b			;809f
	ld b,b			;80a0
	ret nz			;80a1
	ld b,b			;80a2
	ld b,b			;80a3
	inc bc			;80a4
	ld (bc),a		;80a5
	ld (bc),a		;80a6
	ld bc,00101h		;80a7
	nop			;80aa
	nop			;80ab
	nop			;80ac
	nop			;80ad
	nop			;80ae
	nop			;80af
	nop			;80b0
	nop			;80b1
	nop			;80b2
	nop			;80b3
	nop			;80b4
l80b5h:
	nop			;80b5
	nop			;80b6
	nop			;80b7
l80b8h:
	nop			;80b8
	nop			;80b9
	nop			;80ba
	nop			;80bb
	call m,00203h		;80bc
	ret m			;80bf
	rlca			;80c0
	rlca			;80c1
	ret m			;80c2
	add a,a			;80c3
	add a,a			;80c4
	ld (hl),b		;80c5
	ld c,a			;80c6
	ld c,a			;80c7
	jr nc,l80f9h		;80c8
	cpl			;80ca
	djnz l80ech		;80cb
	rla			;80cd
	ex af,af'		;80ce
	rrca			;80cf
	dec bc			;80d0
	inc b			;80d1
	rlca			;80d2
l80d3h:
	dec b			;80d3
	ret nz			;80d4
	ld b,b			;80d5
	ld b,b			;80d6
	ld h,b			;80d7
	and b			;80d8
	jr nz,l813bh		;80d9
	and b			;80db
	jr nz,$+98		;80dc
	and b			;80de
	jr nz,l8111h		;80df
	ret nc			;80e1
	sub b			;80e2
	jr nc,l80b5h		;80e3
	sub b			;80e5
	jr nc,l80b8h		;80e6
	sub b			;80e8
	jr l80d3h		;80e9
	ret z			;80eb
l80ech:
	ld (bc),a		;80ec
	inc bc			;80ed
l80eeh:
	ld (bc),a		;80ee
	ld bc,00101h		;80ef
	nop			;80f2
	nop			;80f3
	nop			;80f4
	nop			;80f5
	nop			;80f6
	nop			;80f7
	nop			;80f8
l80f9h:
	nop			;80f9
	nop			;80fa
	nop			;80fb
	nop			;80fc
	nop			;80fd
	nop			;80fe
	nop			;80ff
	nop			;8100
	nop			;8101
	nop			;8102
	nop			;8103
	jr l80eeh		;8104
	ret z			;8106
	jr $-22			;8107
	ex af,af'		;8109
	call m,0fcfch		;810a
	ld h,h			;810d
	ld b,h			;810e
	ld a,h			;810f
	inc a			;8110
l8111h:
	inc a			;8111
	inc a			;8112
	nop			;8113
	nop			;8114
	nop			;8115
	nop			;8116
	nop			;8117
	nop			;8118
	nop			;8119
	nop			;811a
	nop			;811b
	nop			;811c
	nop			;811d
	nop			;811e
	nop			;811f
	nop			;8120
	nop			;8121
l8122h:
	nop			;8122
	nop			;8123
	nop			;8124
l8125h:
	ld bc,00101h		;8125
	ld (bc),a		;8128
	inc bc			;8129
	inc bc			;812a
	inc b			;812b
	rlca			;812c
	rlca			;812d
	ex af,af'		;812e
l812fh:
	rrca			;812f
	ld c,010h		;8130
	rra			;8132
	inc e			;8133
	jr nc,l8166h		;8134
	jr nc,$+106		;8136
	ld c,b			;8138
	ld a,b			;8139
	sub b			;813a
l813bh:
	ret p			;813b
	ret p			;813c
	djnz l812fh		;813d
	ret nc			;813f
	jr nz,l8122h		;8140
	and b			;8142
	jr nz,l8125h		;8143
	jr nz,l8187h		;8145
	ret nz			;8147
	ld b,b			;8148
	ld b,b			;8149
	ret nz			;814a
	ld b,b			;814b
	nop			;814c
	nop			;814d
	nop			;814e
	nop			;814f
	nop			;8150
	nop			;8151
	nop			;8152
	nop			;8153
	nop			;8154
	ld bc,00101h		;8155
	ld bc,00101h		;8158
	ccf			;815b
	ccf			;815c
	ccf			;815d
	jp m,0cfffh		;815e
	or d			;8161
	rst 38h			;8162
l8163h:
	ld e,a			;8163
	jr nz,l81a5h		;8164
l8166h:
	jr c,l81a8h		;8166
	ld a,a			;8168
	ld a,b			;8169
	sbc a,a			;816a
	pop hl			;816b
	pop hl			;816c
	rst 38h			;816d
	rra			;816e
	rra			;816f
	jp m,0e2e6h		;8170
	or 0feh			;8173
	or 01eh			;8175
	cp 0feh			;8177
	rlca			;8179
	ei			;817a
	add a,e			;817b
	ld b,007h		;817c
	dec b			;817e
	rrca			;817f
	rrca			;8180
	ex af,af'		;8181
	rra			;8182
	rra			;8183
	rra			;8184
	djnz l81a6h		;8185
l8187h:
	djnz l8198h		;8187
	inc c			;8189
	inc c			;818a
	inc bc			;818b
	inc bc			;818c
	inc bc			;818d
l818eh:
	nop			;818e
	nop			;818f
	nop			;8190
	nop			;8191
	nop			;8192
	nop			;8193
	call po,03fffh		;8194
	ret			;8197
l8198h:
	rst 38h			;8198
	rst 38h			;8199
	ld de,0ddffh		;819a
	jr nc,l818eh		;819d
	jr nz,$+1		;819f
	ld b,c			;81a1
	ld b,c			;81a2
	rst 38h			;81a3
	rst 38h			;81a4
l81a5h:
	rst 38h			;81a5
l81a6h:
	rlca			;81a6
	inc b			;81a7
l81a8h:
	inc b			;81a8
	inc bc			;81a9
	inc bc			;81aa
	inc bc			;81ab
	rst 38h			;81ac
	rst 38h			;81ad
	rst 38h			;81ae
	nop			;81af
	rst 38h			;81b0
	ld a,h			;81b1
	rst 38h			;81b2
	rst 38h			;81b3
	rst 38h			;81b4
	cp 086h			;81b5
	add a,(hl)		;81b7
	call m,0fcfch		;81b8
	ret p			;81bb
	ret p			;81bc
l81bdh:
	ret p			;81bd
	ret p			;81be
	djnz l81d1h		;81bf
	ret pe			;81c1
	jr l81cch		;81c2
	add a,c			;81c4
	cp 0ffh			;81c5
	cp 080h			;81c7
	add a,c			;81c9
	rst 38h			;81ca
	rst 38h			;81cb
l81cch:
	rst 38h			;81cc
	nop			;81cd
	nop			;81ce
	nop			;81cf
	nop			;81d0
l81d1h:
	nop			;81d1
	nop			;81d2
	nop			;81d3
	nop			;81d4
	nop			;81d5
	nop			;81d6
	nop			;81d7
	nop			;81d8
	nop			;81d9
	nop			;81da
	nop			;81db
	ret z			;81dc
	cp b			;81dd
	xor b			;81de
	ld b,h			;81df
	ld a,h			;81e0
	ld (hl),h		;81e1
	inc h			;81e2
	inc a			;81e3
	inc (hl)		;81e4
	ld (de),a		;81e5
	ld e,01ah		;81e6
	ld c,00ah		;81e8
	ld c,006h		;81ea
	ld b,006h		;81ec
	nop			;81ee
	nop			;81ef
	nop			;81f0
	nop			;81f1
	nop			;81f2
	nop			;81f3
	nop			;81f4
	nop			;81f5
	nop			;81f6
	nop			;81f7
	nop			;81f8
	nop			;81f9
	ld bc,00101h		;81fa
	inc bc			;81fd
	ld (bc),a		;81fe
	inc bc			;81ff
	inc b			;8200
	rlca			;8201
	ld b,009h		;8202
	rrca			;8204
	rrca			;8205
	ld de,01d1fh		;8206
	ld (03a3eh),hl		;8209
	nop			;820c
	nop			;820d
	nop			;820e
	nop			;820f
	nop			;8210
	nop			;8211
	nop			;8212
	nop			;8213
	nop			;8214
	rrca			;8215
	rrca			;8216
	rrca			;8217
	ld a,03fh		;8218
	inc sp			;821a
	ld (hl),h		;821b
	ld a,a			;821c
	ld c,a			;821d
	ld sp,hl		;821e
	rst 38h			;821f
	sbc a,a			;8220
	jp po,062ffh		;8221
	ld b,d			;8224
	ld a,(hl)		;8225
	ld (hl),d		;8226
	sbc a,h			;8227
	call pe,07cech		;8228
	ld d,h			;822b
	ld d,h			;822c
	cp 0feh			;822d
	cp 087h			;822f
	ei			;8231
	ex (sp),hl		;8232
	cp a			;8233
	rst 38h			;8234
	rst 38h			;8235
	ld b,b			;8236
	rst 38h			;8237
	call m,0ff7fh		;8238
	ld a,a			;823b
	nop			;823c
	nop			;823d
	nop			;823e
	nop			;823f
	nop			;8240
	nop			;8241
	nop			;8242
	nop			;8243
	nop			;8244
	nop			;8245
	nop			;8246
	nop			;8247
	call m,0fcfch		;8248
	adc a,h			;824b
	call p,0f48ch		;824c
	add a,h			;824f
	adc a,h			;8250
	call m,0fcfch		;8251
	rst 38h			;8254
	call nz,07fc4h		;8255
	ld a,a			;8258
	ld a,a			;8259
	nop			;825a
	nop			;825b
	nop			;825c
	nop			;825d
	nop			;825e
	nop			;825f
	nop			;8260
	nop			;8261
	nop			;8262
	nop			;8263
	nop			;8264
	nop			;8265
	nop			;8266
	nop			;8267
	nop			;8268
	nop			;8269
	nop			;826a
	nop			;826b
	rst 38h			;826c
	rrca			;826d
	rrca			;826e
	ret m			;826f
	ret m			;8270
	ret m			;8271
	ret m			;8272
	ret m			;8273
	ret m			;8274
	ret pe			;8275
	sbc a,b			;8276
	adc a,b			;8277
	ld c,b			;8278
	ld a,b			;8279
	ld c,b			;827a
	inc h			;827b
	inc a			;827c
	inc (hl)		;827d
	inc e			;827e
	inc d			;827f
	inc e			;8280
	inc c			;8281
	inc c			;8282
	inc c			;8283
	nop			;8284
	nop			;8285
	nop			;8286
	nop			;8287
	nop			;8288
	nop			;8289
	nop			;828a
	nop			;828b
	nop			;828c
	nop			;828d
	nop			;828e
	nop			;828f
	nop			;8290
	nop			;8291
	nop			;8292
	ld bc,00101h		;8293
	rrca			;8296
	rrca			;8297
	rrca			;8298
	dec a			;8299
	ccf			;829a
	inc sp			;829b
	inc c			;829c
	inc c			;829d
	inc c			;829e
	inc e			;829f
	inc d			;82a0
	inc e			;82a1
	inc h			;82a2
	inc a			;82a3
	inc (hl)		;82a4
l82a5h:
	ld c,b			;82a5
	ld a,b			;82a6
	ld l,b			;82a7
	adc a,b			;82a8
	ret m			;82a9
	ret pe			;82aa
	jr l82a5h		;82ab
	ret c			;82ad
	call m,0ecech		;82ae
	ld a,a			;82b1
	rst 38h			;82b2
	rst 38h			;82b3
	ld a,d			;82b4
	ld a,a			;82b5
	ld b,a			;82b6
	call po,sub_9fffh	;82b7
	rst 38h			;82ba
	ret z			;82bb
	ret z			;82bc
	ccf			;82bd
	ccf			;82be
	ccf			;82bf
	inc bc			;82c0
	ld (bc),a		;82c1
	ld (bc),a		;82c2
	ld bc,00101h		;82c3
	nop			;82c6
	nop			;82c7
	nop			;82c8
	nop			;82c9
	nop			;82ca
	nop			;82cb
	adc a,c			;82cc
	cp 0f9h			;82cd
	rst 38h			;82cf
	rst 38h			;82d0
	rst 38h			;82d1
	ret p			;82d2
	jr nc,$+50		;82d3
	ret p			;82d5
	ret p			;82d6
	ret p			;82d7
l82d8h:
	ret p			;82d8
	jr nc,$+50		;82d9
	sub b			;82db
	ret p			;82dc
	ret nc			;82dd
	ld (hl),b		;82de
	ld d,b			;82df
	ld (hl),b		;82e0
	jr nc,l8313h		;82e1
	jr nc,l82e5h		;82e3
l82e5h:
	nop			;82e5
	nop			;82e6
	nop			;82e7
	nop			;82e8
	nop			;82e9
	nop			;82ea
	nop			;82eb
	nop			;82ec
	jr nz,l830fh		;82ed
	jr nz,l8361h		;82ef
	ld d,b			;82f1
	ld (hl),b		;82f2
	or b			;82f3
	ret nc			;82f4
	ret nc			;82f5
	jr nz,l82d8h		;82f6
	and b			;82f8
	call m,03c3ch		;82f9
	ld e,01fh		;82fc
	inc de			;82fe
	inc a			;82ff
	ccf			;8300
	daa			;8301
	inc hl			;8302
	dec a			;8303
	ld hl,01e1fh		;8304
	ld e,001h		;8307
	ld bc,00001h		;8309
	nop			;830c
	nop			;830d
	nop			;830e
l830fh:
	nop			;830f
	nop			;8310
	nop			;8311
	nop			;8312
l8313h:
	nop			;8313
	sub (hl)		;8314
	ld a,d			;8315
	halt			;8316
	call m,0fcfch		;8317
	ret po			;831a
	and b			;831b
	and b			;831c
	ret nz			;831d
	ld b,b			;831e
	ld b,b			;831f
	ld b,b			;8320
	ret nz			;8321
	ld b,b			;8322
	ret nz			;8323
	add a,b			;8324
	ret nz			;8325
	nop			;8326
	nop			;8327
	nop			;8328
	nop			;8329
	nop			;832a
	nop			;832b
	ld (bc),a		;832c
	nop			;832d
	ld (bc),a		;832e
	nop			;832f
	ld b,004h		;8330
	djnz $+30		;8332
	jr l833ah		;8334
	nop			;8336
	nop			;8337
	ld h,l			;8338
	ld a,(hl)		;8339
l833ah:
	rra			;833a
	ld c,07ah		;833b
	ld a,(bc)		;833d
	jr nz,l836ch		;833e
	jr z,l8346h		;8340
	nop			;8342
	inc b			;8343
	nop			;8344
	nop			;8345
l8346h:
	nop			;8346
	ld (bc),a		;8347
	nop			;8348
	ld (bc),a		;8349
	nop			;834a
	inc b			;834b
	inc b			;834c
	inc h			;834d
	ccf			;834e
	ld e,028h		;834f
	inc e			;8351
	ex af,af'		;8352
	inc b			;8353
	nop			;8354
	inc b			;8355
	nop			;8356
	nop			;8357
	nop			;8358
	nop			;8359
	nop			;835a
	nop			;835b
	nop			;835c
	nop			;835d
	nop			;835e
	nop			;835f
	nop			;8360
l8361h:
	nop			;8361
	inc b			;8362
	nop			;8363
	inc b			;8364
	djnz l8385h		;8365
	ld a,(bc)		;8367
	ex af,af'		;8368
	inc c			;8369
	ex af,af'		;836a
	nop			;836b
l836ch:
	nop			;836c
	nop			;836d
	nop			;836e
	nop			;836f
	nop			;8370
	nop			;8371
	nop			;8372
	nop			;8373
	inc c			;8374
	inc c			;8375
	inc c			;8376
	ld e,01ah		;8377
	ld (de),a		;8379
	ld d,01eh		;837a
	ld a,(de)		;837c
	ld d,01eh		;837d
	ld a,(de)		;837f
	rla			;8380
	rra			;8381
	rra			;8382
	cpl			;8383
	ccf			;8384
l8385h:
	add hl,sp		;8385
	dec hl			;8386
	dec a			;8387
	add hl,sp		;8388
	cpl			;8389
	ccf			;838a
	scf			;838b
	nop			;838c
	nop			;838d
	nop			;838e
	nop			;838f
	nop			;8390
l8391h:
	nop			;8391
	nop			;8392
	nop			;8393
	nop			;8394
	nop			;8395
	nop			;8396
	nop			;8397
	nop			;8398
	nop			;8399
	nop			;839a
	nop			;839b
	nop			;839c
	nop			;839d
	rrca			;839e
	rrca			;839f
	rrca			;83a0
	ld (hl),b		;83a1
	ld a,a			;83a2
	ld a,a			;83a3
	ld hl,(0323eh)		;83a4
	ld hl,(0323eh)		;83a7
	ld d,a			;83aa
	ld a,a			;83ab
	ld h,a			;83ac
	ld e,a			;83ad
	ld a,a			;83ae
	ld l,c			;83af
	ld e,e			;83b0
	ld a,l			;83b1
	ld l,c			;83b2
	and a			;83b3
	rst 38h			;83b4
	rst 0			;83b5
	ld e,d			;83b6
	cp 09ah			;83b7
	xor 0feh		;83b9
	or 003h			;83bb
	inc bc			;83bd
	inc bc			;83be
	inc c			;83bf
	rrca			;83c0
	rrca			;83c1
	inc de			;83c2
	rra			;83c3
	ld e,02fh		;83c4
	ccf			;83c6
	ld sp,07f51h		;83c7
	ld b,c			;83ca
	rst 0			;83cb
	cp b			;83cc
	add a,b			;83cd
	rst 38h			;83ce
	add a,a			;83cf
	add a,a			;83d0
	ret m			;83d1
	rst 38h			;83d2
	ret m			;83d3
	adc a,a			;83d4
	rst 38h			;83d5
	ret m			;83d6
	ld (hl),h		;83d7
	rst 38h			;83d8
	add a,h			;83d9
	rst 0			;83da
	call m,01f04h		;83db
	ex (sp),hl		;83de
	inc bc			;83df
	call m,01c1fh		;83e0
	rst 20h			;83e3
	rst 38h			;83e4
	and 01ah		;83e5
	rst 38h			;83e7
	inc c			;83e8
	rst 28h			;83e9
	ret m			;83ea
	jr l8391h		;83eb
	call m,07c44h		;83ed
	cp h			;83f0
	inc a			;83f1
	call po,0647ch		;83f2
	or 0feh			;83f5
	jp m,0fefeh		;83f7
	jp z,0febah		;83fa
	ld hl,(03fffh)		;83fd
	daa			;8400
	defb 0fdh,0ffh,0cdh ;illegal sequence	;8401
	ld bc,00101h		;8404
	ld c,00fh		;8407
	ld c,01dh		;8409
	rla			;840b
	inc d			;840c
	add hl,hl		;840d
	ccf			;840e
	jr z,l846bh		;840f
	ld a,a			;8411
	ld l,c			;8412
	ld (hl),d		;8413
	ld a,a			;8414
	ld d,c			;8415
	sub 0ffh		;8416
	sub c			;8418
	and a			;8419
	rst 38h			;841a
	and b			;841b
	rlca			;841c
	rst 38h			;841d
	nop			;841e
	ret m			;841f
	rst 38h			;8420
	rlca			;8421
	ccf			;8422
	rst 38h			;8423
	ret nz			;8424
	ccf			;8425
	rst 38h			;8426
	adc a,07fh		;8427
	ld sp,hl		;8429
	sbc a,c			;842a
	ld e,l			;842b
	jp p,0d592h		;842c
	jp m,0d712h		;842f
	ret m			;8432
	djnz l8454h		;8433
	rst 38h			;8435
	rst 20h			;8436
	ccf			;8437
	ccf			;8438
	ret nz			;8439
	rst 38h			;843a
	rst 38h			;843b
	jp l9f9fh		;843c
	ld h,h			;843f
	ret m			;8440
	rst 38h			;8441
	ld l,b			;8442
	rst 38h			;8443
	rst 38h			;8444
	adc a,a			;8445
	rst 38h			;8446
	rst 38h			;8447
	adc a,b			;8448
	push af			;8449
	rst 38h			;844a
	sub d			;844b
	rst 30h			;844c
	defb 0fdh,03dh,0cfh ;illegal sequence	;844d
	rst 38h			;8450
	di			;8451
	dec sp			;8452
	rst 38h			;8453
l8454h:
	rst 0			;8454
	pop af			;8455
	rst 38h			;8456
	adc a,a			;8457
	rst 0			;8458
	rst 38h			;8459
	ld a,c			;845a
	dec l			;845b
	rst 38h			;845c
	ld sp,0bfedh		;845d
	or c			;8460
	exx			;8461
	rst 38h			;8462
	ld d,c			;8463
	defb 0edh ;next byte illegal after ed	;8464
	cp a			;8465
	and d			;8466
	defb 0edh ;next byte illegal after ed	;8467
	cp a			;8468
	and d			;8469
	ld l,a			;846a
l846bh:
	ld e,a			;846b
	ld b,b			;846c
	ld e,e			;846d
	ld l,a			;846e
	ld b,h			;846f
	ld e,e			;8470
	ld (hl),h		;8471
	ld b,b			;8472
	ld e,(hl)		;8473
	ld a,a			;8474
	ld b,b			;8475
	or (hl)			;8476
	rst 38h			;8477
	xor b			;8478
	cp a			;8479
	ret pe			;847a
	add a,b			;847b
	sbc a,d			;847c
	defb 0fdh,010h,09dh ;illegal sequence	;847d
	rst 28h			;8480
	ex af,af'		;8481
	ccf			;8482
	rst 8			;8483
sub_8484h:
	add hl,bc		;8484
	ld a,a			;8485
	add a,(hl)		;8486
	ld b,0bch		;8487
	ld b,e			;8489
	nop			;848a
	ld a,d			;848b
	add a,a			;848c
	ld bc,l8f72h		;848d
	nop			;8490
	pop af			;8491
	ld c,000h		;8492
	xor 0ffh		;8494
	and c			;8496
	xor 0ffh		;8497
	and c			;8499
	xor 0bfh		;849a
	ld hl,0ff46h		;849c
	ld b,c			;849f
	ld h,a			;84a0
	rst 18h			;84a1
	ld b,b			;84a2
	ld h,c			;84a3
	rst 18h			;84a4
	ld b,b			;84a5
	ld (hl),b		;84a6
	rst 8			;84a7
	ld b,b			;84a8
	ld a,a			;84a9
	jp 0f143h		;84aa
	rst 18h			;84ad
	ld d,c			;84ae
	di			;84af
	defb 0fdh,031h,076h ;illegal sequence	;84b0
	jp m,07eb2h		;84b3
	jp p,0aeb2h		;84b6
	jp p,07c22h		;84b9
	call po,0fc64h		;84bc
	call pe,0dcech		;84bf
	call pe,0bccch		;84c2
	rst 38h			;84c5
	add a,b			;84c6
	xor h			;84c7
	rst 38h			;84c8
	sub b			;84c9
	adc a,h			;84ca
	rst 38h			;84cb
	or b			;84cc
	add a,h			;84cd
	rst 38h			;84ce
	cp b			;84cf
	ld d,e			;84d0
	ld a,a			;84d1
	ld c,h			;84d2
	ccf			;84d3
	ccf			;84d4
	ccf			;84d5
	ld a,d			;84d6
	ld a,d			;84d7
	ld a,a			;84d8
	ld (hl),a		;84d9
	ld (hl),a		;84da
	ld e,a			;84db
	or 009h			;84dc
	nop			;84de
	call m,00003h		;84df
	pop af			;84e2
	rrca			;84e3
	ld bc,0ff0fh		;84e4
	rrca			;84e7
	defb 0fdh,0fdh,03fh ;illegal sequence	;84e8
	rst 20h			;84eb
	rst 38h			;84ec
	rst 0			;84ed
	rst 38h			;84ee
	rst 38h			;84ef
	rst 38h			;84f0
	sbc a,a			;84f1
	defb 0fdh,01fh,0feh ;illegal sequence	;84f2
	cp 0ffh			;84f5
	defb 0fdh,0f8h,0fah ;illegal sequence	;84f7
	push af			;84fa
	ret m			;84fb
	ld d,d			;84fc
	ld (hl),a		;84fd
	ei			;84fe
	ld d,e			;84ff
	rst 38h			;8500
	rst 38h			;8501
	cp 0ffh			;8502
	rst 38h			;8504
	ld a,b			;8505
	ld a,h			;8506
	rst 38h			;8507
	ld b,b			;8508
	ld h,a			;8509
	ret m			;850a
	ld h,b			;850b
	call p,0547ch		;850c
	ld (hl),h		;850f
	ld a,h			;8510
	call nc,0fcf4h		;8511
	call p,0fcech		;8514
	xor h			;8517
	xor b			;8518
	ret m			;8519
	jr z,l8588h		;851a
	cp h			;851c
	inc l			;851d
	call m,0445ch		;851e
	call pe,0c4d4h		;8521
	cp a			;8524
	rst 38h			;8525
	rst 38h			;8526
	or 0f7h			;8527
	cp h			;8529
	rst 38h			;852a
	rst 38h			;852b
	cp a			;852c
	exx			;852d
	rst 38h			;852e
	or c			;852f
	rst 8			;8530
	rst 38h			;8531
	sbc a,a			;8532
	exx			;8533
	rst 38h			;8534
	add a,(hl)		;8535
	ld h,a			;8536
	ld a,b			;8537
	ld b,b			;8538
	ld h,a			;8539
	ld a,b			;853a
	ld b,b			;853b
	rst 38h			;853c
	ei			;853d
	rst 38h			;853e
	ld e,a			;853f
	rst 18h			;8540
	ld a,a			;8541
	rst 38h			;8542
	rst 38h			;8543
	cp 0feh			;8544
	rst 38h			;8546
	ret m			;8547
	ret c			;8548
	rst 38h			;8549
	ret po			;854a
	or c			;854b
	rst 8			;854c
	ld b,c			;854d
	pop bc			;854e
	ccf			;854f
	ld bc,07f89h		;8550
	dec b			;8553
	rst 38h			;8554
	rst 38h			;8555
	sbc a,a			;8556
	adc a,0ffh		;8557
	ex af,af'		;8559
	adc a,c			;855a
	cp 008h			;855b
	rst 8			;855d
	ld sp,hl		;855e
	ret			;855f
	rst 20h			;8560
	cp a			;8561
	and a			;8562
	or (hl)			;8563
	ld e,(hl)		;8564
	ld d,d			;8565
	or 01eh			;8566
	ld (de),a		;8568
	ld e,h			;8569
	cp h			;856a
	inc d			;856b
	ld a,b			;856c
	ret z			;856d
	ld c,b			;856e
	call pe,0ecfch		;856f
	cp h			;8572
	cp h			;8573
	and h			;8574
	inc l			;8575
	inc (hl)		;8576
	inc h			;8577
	inc a			;8578
	inc l			;8579
	inc l			;857a
	jr c,l85b5h		;857b
	jr z,$+58		;857d
	jr c,l85b9h		;857f
l8581h:
	nop			;8581
	nop			;8582
	nop			;8583
	ld h,a			;8584
	ld a,b			;8585
	ld b,b			;8586
	scf			;8587
l8588h:
	jr c,l85aah		;8588
	inc sp			;858a
	inc a			;858b
	jr nz,l85a7h		;858c
	ld e,010h		;858e
	inc c			;8590
	rrca			;8591
	ex af,af'		;8592
	rlca			;8593
	rlca			;8594
	inc b			;8595
	inc bc			;8596
	inc bc			;8597
	inc bc			;8598
	nop			;8599
	nop			;859a
	nop			;859b
	sub l			;859c
	ld a,a			;859d
	add hl,bc		;859e
	ret			;859f
	ccf			;85a0
	ld bc,01ee1h		;85a1
	nop			;85a4
	cp 001h			;85a5
l85a7h:
	nop			;85a7
	ld a,c			;85a8
	add a,a			;85a9
l85aah:
	nop			;85aa
	rlca			;85ab
	rst 38h			;85ac
	ld bc,0fefeh		;85ad
	ld b,0f8h		;85b0
	ret m			;85b2
	ret m			;85b3
	cp h			;85b4
l85b5h:
	call m,0f814h		;85b5
	ret m			;85b8
l85b9h:
	xor b			;85b9
	ret p			;85ba
	ret p			;85bb
	ret nc			;85bc
	ld h,b			;85bd
	ret po			;85be
	jr nz,l8581h		;85bf
	ret nz			;85c1
	ld b,b			;85c2
	add a,b			;85c3
	add a,b			;85c4
	add a,b			;85c5
	nop			;85c6
	nop			;85c7
	nop			;85c8
	nop			;85c9
	nop			;85ca
	nop			;85cb
	inc a			;85cc
	inc a			;85cd
	inc a			;85ce
	inc l			;85cf
	inc h			;85d0
	inc a			;85d1
	inc a			;85d2
	inc a			;85d3
	inc a			;85d4
	inc l			;85d5
	inc (hl)		;85d6
	inc (hl)		;85d7
	inc l			;85d8
	inc (hl)		;85d9
	inc (hl)		;85da
	inc l			;85db
	inc (hl)		;85dc
	inc (hl)		;85dd
	inc l			;85de
	inc (hl)		;85df
	inc (hl)		;85e0
	ld l,032h		;85e1
	ld (0322eh),a		;85e3
	ld (0322eh),a		;85e6
	ld (03a26h),a		;85e9
	ld a,(03a26h)		;85ec
	ld a,(03927h)		;85ef
	add hl,sp		;85f2
	daa			;85f3
	add hl,sp		;85f4
	add hl,sp		;85f5
	daa			;85f6
	add hl,sp		;85f7
	add hl,sp		;85f8
	daa			;85f9
	add hl,sp		;85fa
	add hl,sp		;85fb
	inc hl			;85fc
	dec a			;85fd
	dec a			;85fe
	inc hl			;85ff
	inc a			;8600
	inc a			;8601
	inc hl			;8602
	inc a			;8603
	inc a			;8604
	inc hl			;8605
	inc a			;8606
	inc a			;8607
	inc sp			;8608
	inc l			;8609
	inc l			;860a
	inc sp			;860b
	inc l			;860c
	inc l			;860d
	rra			;860e
	ld de,01f11h		;860f
	rra			;8612
	rra			;8613
	nop			;8614
	nop			;8615
	nop			;8616
	nop			;8617
	nop			;8618
	nop			;8619
	nop			;861a
	nop			;861b
l861ch:
	nop			;861c
	nop			;861d
	nop			;861e
	nop			;861f
	ld bc,00101h		;8620
	ld bc,00101h		;8623
	ld bc,00101h		;8626
	ld (bc),a		;8629
	inc bc			;862a
	inc bc			;862b
	dec sp			;862c
	inc a			;862d
	inc a			;862e
	ld e,a			;862f
	ld h,a			;8630
	ld h,a			;8631
	add a,b			;8632
	rst 38h			;8633
	rst 38h			;8634
	adc a,a			;8635
	rst 38h			;8636
	rst 38h			;8637
	ccf			;8638
	rst 38h			;8639
	rst 38h			;863a
	jr c,$+1		;863b
	rst 38h			;863d
	ld (hl),e		;863e
	rst 38h			;863f
	rst 38h			;8640
	ld h,(hl)		;8641
	rst 38h			;8642
	cp 0c0h			;8643
	ret nz			;8645
	ret nz			;8646
	ret po			;8647
	jr nz,l866ah		;8648
	jr nc,l861ch		;864a
	ret nc			;864c
	ret m			;864d
	ret pe			;864e
	ret pe			;864f
	ret m			;8650
	ret m			;8651
	ret m			;8652
	inc e			;8653
	call p,0ecf4h		;8654
	call m,014fch		;8657
	call m,0001ch		;865a
	nop			;865d
	nop			;865e
	nop			;865f
	nop			;8660
	nop			;8661
	nop			;8662
	nop			;8663
	nop			;8664
	nop			;8665
	nop			;8666
	nop			;8667
	ld a,a			;8668
	ld a,a			;8669
l866ah:
	ld a,a			;866a
	ld (hl),b		;866b
	ld e,a			;866c
	ld a,a			;866d
	ld e,a			;866e
	ld d,b			;866f
	ld (hl),b		;8670
	ld a,a			;8671
	ld a,a			;8672
	ld a,a			;8673
	ld (bc),a		;8674
	inc bc			;8675
	inc bc			;8676
	ld (bc),a		;8677
	inc bc			;8678
	inc bc			;8679
	ld b,007h		;867a
	rlca			;867c
	ld a,(de)		;867d
	rra			;867e
	rra			;867f
	jp po,0ffffh		;8680
	ld bc,0ffffh		;8683
	rst 38h			;8686
	ld bc,0ff01h		;8687
	pop af			;868a
	pop af			;868b
	inc h			;868c
	rst 38h			;868d
	call m,0bfc8h		;868e
	cp b			;8691
	ret z			;8692
	rst 38h			;8693
	ei			;8694
	ret z			;8695
	rst 38h			;8696
	ei			;8697
	ret nc			;8698
	rst 38h			;8699
	ret p			;869a
	ld d,b			;869b
	rst 38h			;869c
	call p,0ff51h		;869d
	call p,0ff13h		;86a0
	call p,0fa0eh		;86a3
	ld a,(bc)		;86a6
	ld a,(bc)		;86a7
	cp 00eh			;86a8
	ld b,0feh		;86aa
	ld b,007h		;86ac
	rst 38h			;86ae
	rlca			;86af
	ld b,0ffh		;86b0
	rlca			;86b2
	jp nz,003ffh		;86b3
	ex (sp),hl		;86b6
	cp 002h			;86b7
	di			;86b9
	rst 38h			;86ba
	inc bc			;86bb
	nop			;86bc
	nop			;86bd
	nop			;86be
	nop			;86bf
	nop			;86c0
	nop			;86c1
	nop			;86c2
	nop			;86c3
	nop			;86c4
	nop			;86c5
	nop			;86c6
	nop			;86c7
	cp 0feh			;86c8
	cp 00eh			;86ca
	jp m,0fafeh		;86cc
	ld a,(bc)		;86cf
	ld c,0feh		;86d0
	cp 0feh			;86d2
	rrca			;86d4
	dec c			;86d5
	dec c			;86d6
	inc bc			;86d7
	ld (bc),a		;86d8
	ld (bc),a		;86d9
	inc bc			;86da
	ld (bc),a		;86db
	ld (bc),a		;86dc
	ld bc,00101h		;86dd
	ld bc,00101h		;86e0
	nop			;86e3
	nop			;86e4
	nop			;86e5
	nop			;86e6
	nop			;86e7
	nop			;86e8
	nop			;86e9
	nop			;86ea
	nop			;86eb
	inc de			;86ec
	rst 38h			;86ed
	call p,0bf57h		;86ee
	or b			;86f1
	rst 10h			;86f2
	ld a,a			;86f3
	ld (hl),b		;86f4
	push de			;86f5
	ld a,a			;86f6
	ld (hl),d		;86f7
	rst 10h			;86f8
	ld a,a			;86f9
	ld (hl),b		;86fa
	ex de,hl		;86fb
	rst 38h			;86fc
	ret m			;86fd
	ld l,d			;86fe
	ld a,a			;86ff
	ld a,c			;8700
	ld l,e			;8701
	ld a,a			;8702
	ld a,b			;8703
	jp p,002feh		;8704
	jp m,002feh		;8707
	jp m,002feh		;870a
	jp m,002feh		;870d
	jp m,002feh		;8710
	jp m,002feh		;8713
	call p,004fch		;8716
	call p,004fch		;8719
	dec (hl)		;871c
	ccf			;871d
	inc a			;871e
	dec (hl)		;871f
	ccf			;8720
l8721h:
	inc a			;8721
	ld a,(02e2fh)		;8722
	dec a			;8725
	daa			;8726
	daa			;8727
	cpl			;8728
	inc sp			;8729
	inc sp			;872a
	ld l,032h		;872b
	ld (03a26h),a		;872d
	ld a,(0342ch)		;8730
	inc (hl)		;8733
	call p,004fch		;8734
	ret pe			;8737
	ret m			;8738
	ex af,af'		;8739
	ret pe			;873a
	ret m			;873b
	ex af,af'		;873c
	djnz $-14		;873d
	djnz l8721h		;873f
	ret po			;8741
	ret po			;8742
	nop			;8743
	nop			;8744
	nop			;8745
	nop			;8746
	nop			;8747
	nop			;8748
	nop			;8749
	nop			;874a
	nop			;874b
	inc l			;874c
	inc (hl)		;874d
	inc (hl)		;874e
	inc l			;874f
	inc (hl)		;8750
	inc (hl)		;8751
	inc l			;8752
l8753h:
	inc (hl)		;8753
	inc (hl)		;8754
	jr z,l878fh		;8755
	jr c,$+58		;8757
	jr z,l8783h		;8759
	jr c,$+58		;875b
	jr c,l8797h		;875d
	jr z,$+58		;875f
	jr c,l879bh		;8761
	jr c,l8753h		;8763
	rst 38h			;8765
	and c			;8766
	xor 0ffh		;8767
	and c			;8769
	xor 0bfh		;876a
	ld hl,0ff46h		;876c
	ld b,c			;876f
	ld h,a			;8770
	rst 18h			;8771
	ld b,b			;8772
	ld h,c			;8773
	rst 18h			;8774
	ld b,b			;8775
	ld (hl),b		;8776
	rst 8			;8777
	ld b,b			;8778
	ld a,a			;8779
	jp nz,0f143h		;877a
	rst 18h			;877d
	ld d,c			;877e
	di			;877f
	defb 0fdh,031h,076h ;illegal sequence	;8780
l8783h:
	jp m,07eb2h		;8783
	jp p,0aeb2h		;8786
	jp p,07c22h		;8789
	call nz,0ec74h		;878c
l878fh:
	inc d			;878f
	call m,038c4h		;8790
	call m,0fcffh		;8793
	rst 38h			;8796
l8797h:
	defb 0fdh,0f8h,0fbh ;illegal sequence	;8797
	push af			;879a
l879bh:
	ret m			;879b
	ld d,e			;879c
	ld (hl),a		;879d
	ei			;879e
	ld d,e			;879f
	rst 38h			;87a0
	rst 38h			;87a1
	cp 0ffh			;87a2
	rst 38h			;87a4
	ld a,b			;87a5
	ld a,h			;87a6
	rst 38h			;87a7
	ld b,b			;87a8
	ld h,a			;87a9
	ret m			;87aa
	ld h,b			;87ab
	ld l,0d0h		;87ac
	cp 07ch			;87ae
	add a,h			;87b0
	call m,06c94h		;87b1
	call p,06c9ch		;87b4
	call m,098e8h		;87b7
	ld l,b			;87ba
	ld l,h			;87bb
	cp h			;87bc
	inc l			;87bd
	call m,0445ch		;87be
	call pe,0c4d4h		;87c1
	xor 0ffh		;87c4
	and c			;87c6
	xor 0ffh		;87c7
	and c			;87c9
	xor 0bfh		;87ca
	ld hl,0ff46h		;87cc
	ld b,c			;87cf
	ld l,a			;87d0
	out (04ch),a		;87d1
	ld l,a			;87d3
	pop de			;87d4
	ld c,(hl)		;87d5
	ld a,a			;87d6
	ret nz			;87d7
	ld e,a			;87d8
	ld a,a			;87d9
	ret nz			;87da
	ld e,a			;87db
	pop af			;87dc
	rst 18h			;87dd
	ld d,c			;87de
	rst 30h			;87df
	ret m			;87e0
	scf			;87e1
	ld a,a			;87e2
	ret po			;87e3
	cp a			;87e4
	ld a,(hl)		;87e5
	pop bc			;87e6
	cp a			;87e7
	ret p			;87e8
	rrca			;87e9
	rst 38h			;87ea
	ex (sp),hl		;87eb
	inc e			;87ec
	rst 38h			;87ed
	ret nz			;87ee
	ccf			;87ef
	rst 38h			;87f0
	nop			;87f1
	rst 38h			;87f2
	rst 38h			;87f3
	call m,0ffe3h		;87f4
	call m,0ffe3h		;87f7
	ret m			;87fa
	rst 0			;87fb
	ld e,a			;87fc
	ld (hl),d		;87fd
	call 0f87fh		;87fe
	rst 0			;8801
	rst 38h			;8802
	ret m			;8803
	rst 0			;8804
	ld a,a			;8805
	ld a,b			;8806
	rst 0			;8807
	ld a,a			;8808
	ld a,h			;8809
	jp 0fc7fh		;880a
	jp 0fcbfh		;880d
	jp l8e3fh		;8810
	pop af			;8813
	rrca			;8814
	adc a,0f9h		;8815
	rst 8			;8817
	rst 20h			;8818
	cp b			;8819
	and a			;881a
	or a			;881b
	ld e,h			;881c
	ld d,e			;881d
	rst 30h			;881e
	ld e,013h		;881f
	ld e,l			;8821
	cp h			;8822
	dec d			;8823
	xor 0ffh		;8824
	and c			;8826
	cp 0cfh			;8827
	or c			;8829
	xor 097h		;882a
	ld a,c			;882c
	add a,a			;882d
	ld a,d			;882e
	defb 0fdh,087h,07bh ;illegal sequence	;882f
	call m,09b65h		;8832
	ld a,h			;8835
	ld a,b			;8836
	rst 0			;8837
	ld a,b			;8838
	ld a,a			;8839
	jp 0f943h		;883a
	rst 0			;883d
	ld e,c			;883e
	rst 30h			;883f
	adc a,c			;8840
	ld a,l			;8841
	jp po,0fe1ch		;8842
	sub a			;8845
	ld l,b			;8846
	rst 38h			;8847
	cp (hl)			;8848
	ld b,d			;8849
	cp 0cch			;884a
	inc (hl)		;884c
	call m,0b4cch		;884d
	call m,0ccfch		;8850
	call m,0f1ffh		;8853
	rst 38h			;8856
	rst 38h			;8857
	ret po			;8858
	rst 38h			;8859
	ret p			;885a
	rst 8			;885b
	ld a,a			;885c
	ld h,b			;885d
	rst 18h			;885e
	ld a,a			;885f
	ret po			;8860
	rst 18h			;8861
	rst 38h			;8862
l8863h:
	ret p			;8863
	rst 8			;8864
	ld a,a			;8865
	ld (hl),e		;8866
	call z,06f7fh		;8867
	ret p			;886a
	ld l,(hl)		;886b
	call p,0d4fch		;886c
	call p,0d47ch		;886f
	call p,0f47ch		;8872
	call pe,0ec3ch		;8875
	ret pe			;8878
	jr c,l8863h		;8879
	call pe,0ac3ch		;887b
	call m,0c45ch		;887e
	call pe,0c4d4h		;8881
	xor 0ffh		;8884
	and c			;8886
	xor 0ffh		;8887
	and c			;8889
	xor 0bfh		;888a
	ld hl,0ff46h		;888c
	ld b,c			;888f
	ld h,a			;8890
	sbc a,041h		;8891
	ld h,e			;8893
	call c,07643h		;8894
	ret			;8897
	ld b,a			;8898
	ld a,a			;8899
	ret nz			;889a
	ld b,e			;889b
	pop af			;889c
	rst 18h			;889d
	ld d,c			;889e
	di			;889f
	defb 0fdh,031h,076h ;illegal sequence	;88a0
	jp m,07eb2h		;88a3
	jp p,0eeb2h		;88a6
	ld (07ce2h),a		;88a9
	add a,h			;88ac
	call po,0cc3ch		;88ad
	call m,sub_8c7ch	;88b0
	call pe,0f8ffh		;88b3
	rst 38h			;88b6
	rst 38h			;88b7
	ret p			;88b8
	rst 38h			;88b9
	rst 38h			;88ba
	ret nz			;88bb
	ld a,a			;88bc
	ld (hl),c		;88bd
l88beh:
	adc a,(hl)		;88be
	ld a,a			;88bf
	ret po			;88c0
	rst 18h			;88c1
	rst 38h			;88c2
	ret po			;88c3
	rst 18h			;88c4
	ld a,a			;88c5
	ld (hl),c		;88c6
	adc a,07fh		;88c7
	ld a,a			;88c9
	ret po			;88ca
	ld a,a			;88cb
	call p,0f41ch		;88cc
	call m,0dc30h		;88cf
	call p,0fc68h		;88d2
	jp p,0be6ch		;88d5
	jp p,0fe2ch		;88d8
	call pe,0ec30h		;88db
	call m,0c45ch		;88de
	call pe,0c454h		;88e1
	ld b,006h		;88e4
	add hl,sp		;88e6
	ccf			;88e7
	ld h,a			;88e8
	ld a,c			;88e9
	sbc a,(hl)		;88ea
	and 0fch		;88eb
	add a,h			;88ed
	ld a,h			;88ee
	ld h,h			;88ef
	ld e,012h		;88f0
	inc c			;88f2
	inc c			;88f3
	ret nz			;88f4
	ret nz			;88f5
	cp h			;88f6
	call m,0fe82h		;88f7
	ld b,d			;88fa
	ld a,(hl)		;88fb
	ld b,a			;88fc
	ld a,c			;88fd
	ld a,a			;88fe
	ld b,c			;88ff
	ccf			;8900
	add hl,sp		;8901
	rlca			;8902
	rlca			;8903
	ld h,b			;8904
	ld h,b			;8905
	ld d,b			;8906
	ld (hl),b		;8907
	ld c,h			;8908
	ld a,h			;8909
	ld h,a			;890a
	ld e,a			;890b
	inc hl			;890c
	ld a,033h		;890d
	ld l,03bh		;890f
	ld h,039h		;8911
l8913h:
	daa			;8913
	ret p			;8914
	djnz l8913h		;8915
	inc c			;8917
	rst 38h			;8918
	inc bc			;8919
	rra			;891a
	ret po			;891b
	rlca			;891c
	ret m			;891d
	ret nz			;891e
	ccf			;891f
	cp 001h			;8920
	call 00033h		;8922
	nop			;8925
	nop			;8926
	nop			;8927
	nop			;8928
	nop			;8929
	ret nz			;892a
	ret nz			;892b
	ret po			;892c
	jr nz,l893fh		;892d
	ret p			;892f
	ld (hl),b		;8930
	sub b			;8931
	ret p			;8932
	ret p			;8933
	inc l			;8934
	inc sp			;8935
	ld l,031h		;8936
	rra			;8938
	djnz l8952h		;8939
	jr l8954h		;893b
	jr l894ah		;893d
l893fh:
	inc c			;893f
	inc b			;8940
	rlca			;8941
	inc bc			;8942
	inc bc			;8943
	cp l			;8944
	jp 0e79bh		;8945
	ld d,h			;8948
	ld l,h			;8949
l894ah:
	ld c,b			;894a
	ld a,b			;894b
	jr z,l8986h		;894c
	jr z,l8988h		;894e
	jr z,l898ah		;8950
l8952h:
	jr c,l898ch		;8952
l8954h:
	ret nz			;8954
	ret nz			;8955
	cp h			;8956
	call m,0f28eh		;8957
	ld b,d			;895a
	ld a,(hl)		;895b
	ld b,a			;895c
l895dh:
	ld a,c			;895d
	ld a,a			;895e
	ld b,c			;895f
	ccf			;8960
	add hl,sp		;8961
	rlca			;8962
	rlca			;8963
	inc c			;8964
	inc c			;8965
	ld (de),a		;8966
	ld e,01eh		;8967
	ld (de),a		;8969
	inc c			;896a
	inc c			;896b
	nop			;896c
	nop			;896d
	nop			;896e
	nop			;896f
	nop			;8970
	nop			;8971
	nop			;8972
	nop			;8973
	inc bc			;8974
	inc bc			;8975
	dec b			;8976
	rlca			;8977
	dec bc			;8978
	dec c			;8979
	rla			;897a
	add hl,de		;897b
	ld h,03ah		;897c
	ld b,(hl)		;897e
	ld a,d			;897f
	adc a,(hl)		;8980
	jp p,0f40ch		;8981
	ld (bc),a		;8984
	inc bc			;8985
l8986h:
	inc b			;8986
	rlca			;8987
l8988h:
	jr c,l89c9h		;8988
l898ah:
	ld b,c			;898a
	ld a,(hl)		;898b
l898ch:
	ld b,a			;898c
	ld a,b			;898d
	ccf			;898e
	daa			;898f
	jr l89aah		;8990
	nop			;8992
	nop			;8993
	inc e			;8994
	call po,0c838h		;8995
	ld (hl),b		;8998
	sub b			;8999
	ret po			;899a
	jr nz,l895dh		;899b
	ret nz			;899d
	nop			;899e
	nop			;899f
	nop			;89a0
	nop			;89a1
	nop			;89a2
	nop			;89a3
	add a,0c6h		;89a4
	xor c			;89a6
	rst 28h			;89a7
	jp (hl)			;89a8
	xor a			;89a9
l89aah:
	ld d,e			;89aa
	ld e,l			;89ab
	inc de			;89ac
	dec e			;89ad
	daa			;89ae
	add hl,sp		;89af
	ld b,a			;89b0
	ld a,c			;89b1
	add a,a			;89b2
	ld sp,hl		;89b3
	ld l,a			;89b4
	ld d,c			;89b5
	ld a,a			;89b6
	ld b,c			;89b7
	ld a,022h		;89b8
	ld a,022h		;89ba
	ld a,026h		;89bc
	inc e			;89be
	inc d			;89bf
	inc e			;89c0
	inc d			;89c1
	inc c			;89c2
	inc c			;89c3
	nop			;89c4
	ld (hl),b		;89c5
	ld (hl),b		;89c6
	ld d,b			;89c7
	ld e,b			;89c8
l89c9h:
	jr z,l8a1bh		;89c9
	sbc a,0aeh		;89cb
	and (hl)		;89cd
	cp c			;89ce
	ld e,c			;89cf
	and (hl)		;89d0
	cp c			;89d1
	ld d,c			;89d2
	ld b,e			;89d3
	call c,023b0h		;89d4
	ld a,h			;89d7
	ld d,b			;89d8
	ex af,af'		;89d9
	scf			;89da
	jr nc,l89ddh		;89db
l89ddh:
	inc bc			;89dd
	inc bc			;89de
	ld bc,00605h		;89df
	ld bc,00605h		;89e2
	ld bc,00605h		;89e5
l89e8h:
	ld (bc),a		;89e8
l89e9h:
	dec de			;89e9
	dec e			;89ea
	inc b			;89eb
	and 0fah		;89ec
	jr l898ch		;89ee
	call po,0f800h		;89f0
	ld a,b			;89f3
	nop			;89f4
	ld a,a			;89f5
	ld a,b			;89f6
	djnz l89e8h		;89f7
	adc a,b			;89f9
	ld h,h			;89fa
	sbc a,e			;89fb
	sbc a,b			;89fc
	ld d,d			;89fd
	xor l			;89fe
	cp h			;89ff
	xor b			;8a00
	ld h,e			;8a01
	ld e,(hl)		;8a02
	sub h			;8a03
	ld (hl),e		;8a04
	ld l,(hl)		;8a05
	ex af,af'		;8a06
	cp e			;8a07
	or 044h			;8a08
	sbc a,a			;8a0a
	jp m,l8e21h		;8a0b
	call m,0c710h		;8a0e
	ld a,h			;8a11
	ex af,af'		;8a12
	rst 20h			;8a13
	ccf			;8a14
	add a,l			;8a15
	ld a,h			;8a16
	dec de			;8a17
	ret po			;8a18
	rra			;8a19
	rrca			;8a1a
l8a1bh:
	ret po			;8a1b
	rra			;8a1c
	nop			;8a1d
	ret m			;8a1e
	rlca			;8a1f
	nop			;8a20
	ld a,(hl)		;8a21
	add a,c			;8a22
	nop			;8a23
	add a,b			;8a24
	ld a,(hl)		;8a25
	ld (0de00h),hl		;8a26
	ld a,(hl)		;8a29
	inc h			;8a2a
	adc a,e			;8a2b
	ld sp,hl		;8a2c
	ld b,h			;8a2d
	ld a,e			;8a2e
	cp c			;8a2f
	inc c			;8a30
	di			;8a31
	pop af			;8a32
	ex af,af'		;8a33
	rst 30h			;8a34
	ld sp,0be00h		;8a35
	ld (0fc00h),hl		;8a38
	call m,07800h		;8a3b
	ld a,b			;8a3e
	jr c,l8a85h		;8a3f
	ld a,h			;8a41
	inc b			;8a42
	ld b,d			;8a43
	ld a,(hl)		;8a44
	nop			;8a45
	ld a,c			;8a46
	ld a,a			;8a47
	nop			;8a48
	ld a,c			;8a49
	ld a,a			;8a4a
	ld a,b			;8a4b
	add a,c			;8a4c
	rst 38h			;8a4d
	nop			;8a4e
	add a,e			;8a4f
	rst 38h			;8a50
	nop			;8a51
	ld a,h			;8a52
	ld a,h			;8a53
	nop			;8a54
	ld h,b			;8a55
	ld h,b			;8a56
	jr nz,l89e9h		;8a57
	ret p			;8a59
	ld d,b			;8a5a
	ret z			;8a5b
	cp b			;8a5c
	jr z,l8ac3h		;8a5d
	ld e,h			;8a5f
	inc d			;8a60
	ld (00a2eh),a		;8a61
	add hl,de		;8a64
	rla			;8a65
	inc b			;8a66
	dec c			;8a67
	dec bc			;8a68
	nop			;8a69
	rlca			;8a6a
	rlca			;8a6b
	nop			;8a6c
	nop			;8a6d
	nop			;8a6e
	nop			;8a6f
	nop			;8a70
	nop			;8a71
	nop			;8a72
	inc bc			;8a73
	add a,b			;8a74
	add a,b			;8a75
	nop			;8a76
	nop			;8a77
	nop			;8a78
	nop			;8a79
	nop			;8a7a
	rst 38h			;8a7b
	nop			;8a7c
	nop			;8a7d
	nop			;8a7e
	nop			;8a7f
	nop			;8a80
	nop			;8a81
	ld bc,00007h		;8a82
l8a85h:
	nop			;8a85
	add a,b			;8a86
	add a,b			;8a87
	add a,b			;8a88
	nop			;8a89
	nop			;8a8a
	nop			;8a8b
	nop			;8a8c
	add a,b			;8a8d
	add a,b			;8a8e
	add a,b			;8a8f
	add a,b			;8a90
	add a,b			;8a91
	add a,b			;8a92
	add a,b			;8a93
	nop			;8a94
	nop			;8a95
	ld bc,0df00h		;8a96
	nop			;8a99
	ld a,a			;8a9a
	add a,b			;8a9b
	rst 38h			;8a9c
	nop			;8a9d
	or b			;8a9e
	ld c,a			;8a9f
	nop			;8aa0
	rst 38h			;8aa1
	ld bc,000feh		;8aa2
	nop			;8aa5
	call m,0fe00h		;8aa6
	nop			;8aa9
	call m,0cc00h		;8aaa
	jr nc,l8ac7h		;8aad
	ret po			;8aaf
	call m,0fe00h		;8ab0
	nop			;8ab3
	nop			;8ab4
	rst 38h			;8ab5
	nop			;8ab6
	rst 38h			;8ab7
	nop			;8ab8
	rst 38h			;8ab9
	nop			;8aba
	rst 38h			;8abb
	nop			;8abc
	rst 38h			;8abd
	nop			;8abe
	rst 38h			;8abf
	nop			;8ac0
	rst 38h			;8ac1
	nop			;8ac2
l8ac3h:
	rst 38h			;8ac3
	rst 38h			;8ac4
	nop			;8ac5
	ccf			;8ac6
l8ac7h:
	ret nz			;8ac7
	nop			;8ac8
	rst 38h			;8ac9
	nop			;8aca
	rst 38h			;8acb
	nop			;8acc
	rst 38h			;8acd
	nop			;8ace
	rst 38h			;8acf
	nop			;8ad0
	rst 38h			;8ad1
	nop			;8ad2
l8ad3h:
	rst 38h			;8ad3
	add a,b			;8ad4
	nop			;8ad5
	ret p			;8ad6
	nop			;8ad7
	inc a			;8ad8
	ret nz			;8ad9
	ld c,0f0h		;8ada
l8adch:
	nop			;8adc
	cp 006h			;8add
	ret m			;8adf
	ld a,a			;8ae0
	add a,b			;8ae1
	ret p			;8ae2
	nop			;8ae3
	nop			;8ae4
	rst 38h			;8ae5
	rra			;8ae6
	ret po			;8ae7
	ret m			;8ae8
	rlca			;8ae9
	ret p			;8aea
	rrca			;8aeb
	rst 38h			;8aec
	nop			;8aed
	rst 38h			;8aee
	nop			;8aef
	ret nz			;8af0
	nop			;8af1
	nop			;8af2
	nop			;8af3
	ccf			;8af4
	ret nz			;8af5
	cp 000h			;8af6
	inc a			;8af8
	ret nz			;8af9
	jr l8adch		;8afa
	ret m			;8afc
	nop			;8afd
	ret p			;8afe
	nop			;8aff
	nop			;8b00
	nop			;8b01
	nop			;8b02
	nop			;8b03
	nop			;8b04
	rst 38h			;8b05
	nop			;8b06
	rst 38h			;8b07
	ld h,e			;8b08
	sbc a,h			;8b09
	ld (hl),c		;8b0a
	adc a,(hl)		;8b0b
	ld a,h			;8b0c
	add a,e			;8b0d
	rst 38h			;8b0e
	nop			;8b0f
	ld sp,hl		;8b10
	jr l8ad3h		;8b11
	nop			;8b13
	ld bc,00f01h		;8b14
	ld c,036h		;8b17
	dec a			;8b19
	ld c,l			;8b1a
	halt			;8b1b
	cp e			;8b1c
	call sub_9dfbh		;8b1d
	halt			;8b20
	ld a,d			;8b21
	ld d,01ah		;8b22
	ret nz			;8b24
	ret nz			;8b25
	ld (hl),b		;8b26
	ret p			;8b27
	ret z			;8b28
	ld a,b			;8b29
	call p,0fa8ch		;8b2a
	and 01dh		;8b2d
	inc de			;8b2f
	dec c			;8b30
	dec bc			;8b31
	dec c			;8b32
	dec bc			;8b33
	nop			;8b34
	nop			;8b35
	ld c,00eh		;8b36
	ld de,02e1fh		;8b38
	ld sp,06e5fh		;8b3b
	ld (hl),c		;8b3e
	ld d,c			;8b3f
	ld (hl),c		;8b40
	ld (hl),c		;8b41
	ld (bc),a		;8b42
	inc bc			;8b43
	rla			;8b44
	dec de			;8b45
	ld d,01bh		;8b46
	scf			;8b48
	ld a,(0fbd7h)		;8b49
	or (hl)			;8b4c
	jp c,0bd7bh		;8b4d
	ld c,e			;8b50
	call 066e5h		;8b51
	ld (bc),a		;8b54
	inc bc			;8b55
	ld h,l			;8b56
	ld h,(hl)		;8b57
	and l			;8b58
	rst 20h			;8b59
	xor e			;8b5a
	defb 0edh ;next byte illegal after ed	;8b5b
	jp c,06abeh		;8b5c
	ld e,(hl)		;8b5f
	dec sp			;8b60
	cpl			;8b61
	ld a,(de)		;8b62
	rra			;8b63
	dec c			;8b64
	dec bc			;8b65
	ld d,01dh		;8b66
	cpl			;8b68
	ld (hl),02fh		;8b69
	scf			;8b6b
	ld e,l			;8b6c
	ld l,(hl)		;8b6d
	ld e,l			;8b6e
	ld l,(hl)		;8b6f
	ld e,e			;8b70
	ld l,l			;8b71
	ld e,e			;8b72
	ld l,l			;8b73
	ld b,a			;8b74
	ld b,a			;8b75
	and c			;8b76
	pop hl			;8b77
	rst 18h			;8b78
	cp (hl)			;8b79
	ld h,b			;8b7a
	ld e,a			;8b7b
	ccf			;8b7c
	jr nz,$+33		;8b7d
	rra			;8b7f
	nop			;8b80
	nop			;8b81
	nop			;8b82
	nop			;8b83
	sub 0b5h		;8b84
	sub 0b5h		;8b86
	out (0b2h),a		;8b88
	ld e,e			;8b8a
	ld l,e			;8b8b
	ld l,a			;8b8c
	ld d,(hl)		;8b8d
	jr nc,$+49		;8b8e
	rra			;8b90
	djnz $+17		;8b91
	rrca			;8b93
	call c,03bdbh		;8b94
	inc (hl)		;8b97
	ld (hl),a		;8b98
	jp (hl)			;8b99
	adc a,0b2h		;8b9a
	dec a			;8b9c
	call 033fch		;8b9d
	rst 8			;8ba0
	call z,00303h		;8ba1
	adc a,l			;8ba4
	adc a,e			;8ba5
	call 0764bh		;8ba6
	or (hl)			;8ba9
	sbc a,a			;8baa
	ld l,a			;8bab
	ret po			;8bac
	sbc a,a			;8bad
	ld a,a			;8bae
	ld h,b			;8baf
	rra			;8bb0
	rra			;8bb1
	nop			;8bb2
	nop			;8bb3
	inc bc			;8bb4
	inc bc			;8bb5
	dec c			;8bb6
	rrca			;8bb7
	inc sp			;8bb8
	dec a			;8bb9
	adc a,0f2h		;8bba
	inc a			;8bbc
	call z,030f0h		;8bbd
	ret nz			;8bc0
	ret nz			;8bc1
	nop			;8bc2
	nop			;8bc3
	call 0febah		;8bc4
	sbc a,l			;8bc7
	rst 38h			;8bc8
	or 0ddh			;8bc9
	in a,(c)		;8bcb
	sbc a,b			;8bcd
	ret po			;8bce
	ld h,b			;8bcf
	add a,b			;8bd0
	add a,b			;8bd1
	nop			;8bd2
	nop			;8bd3
	ld h,b			;8bd4
	ld h,b			;8bd5
	ld h,b			;8bd6
	sbc a,b			;8bd7
	sbc a,b			;8bd8
	ret m			;8bd9
	call pe,094ech		;8bda
	ld (hl),h		;8bdd
	ld (hl),h		;8bde
	ld l,h			;8bdf
	ld a,(de)		;8be0
	ld a,(de)		;8be1
	ld d,01ah		;8be2
	ld a,(de)		;8be4
	ld d,03eh		;8be5
	ld a,03eh		;8be7
	jp nz,0defeh		;8be9
	sbc a,e			;8bec
	sbc a,e			;8bed
	sub l			;8bee
	ld (hl),a		;8bef
	ld (hl),a		;8bf0
	ex de,hl		;8bf1
	sbc a,(hl)		;8bf2
	sbc a,a			;8bf3
	ld (hl),a		;8bf4
	call pe,sub_9eefh	;8bf5
	ld a,b			;8bf8
	ld a,a			;8bf9
	ld l,h			;8bfa
	inc sp			;8bfb
	inc a			;8bfc
	jr nc,$-23		;8bfd
	ret m			;8bff
	ret p			;8c00
	rst 8			;8c01
	pop af			;8c02
	ld b,c			;8c03
	inc bc			;8c04
	inc bc			;8c05
	inc bc			;8c06
	push bc			;8c07
	add a,0c4h		;8c08
	ld a,d			;8c0a
	defb 0fdh,0f8h,004h ;illegal sequence	;8c0b
	ei			;8c0e
	nop			;8c0f
	call m,00003h		;8c10
	call m,00003h		;8c13
	rst 38h			;8c16
	ld a,h			;8c17
	ld a,h			;8c18
	rst 38h			;8c19
	cp 0feh			;8c1a
	inc b			;8c1c
	call m,0880ch		;8c1d
	ld a,b			;8c20
	jr l8c40h		;8c21
	defb 0fdh,03dh,01fh ;illegal sequence	;8c23
	rst 30h			;8c26
	scf			;8c27
	rra			;8c28
	ret p			;8c29
	jr nc,l8c3ah		;8c2a
	ld sp,hl		;8c2c
	jr l8cabh		;8c2d
	di			;8c2f
	ld (hl),b		;8c30
	cp 0ffh			;8c31
	cp 00fh			;8c33
l8c35h:
	rrca			;8c35
	rrca			;8c36
	jr nc,l8c69h		;8c37
	ccf			;8c39
l8c3ah:
	rst 8			;8c3a
	rst 8			;8c3b
	ret p			;8c3c
	ccf			;8c3d
	ccf			;8c3e
	rst 8			;8c3f
l8c40h:
	ret p			;8c40
	ret p			;8c41
	ret nc			;8c42
	jr nc,l8c35h		;8c43
	jr nc,l8c66h		;8c45
	rst 38h			;8c47
	rra			;8c48
	nop			;8c49
	rst 38h			;8c4a
	nop			;8c4b
	add a,b			;8c4c
	add a,b			;8c4d
	add a,b			;8c4e
	ld h,b			;8c4f
	ld h,b			;8c50
	ret po			;8c51
	sub b			;8c52
	sub b			;8c53
	ld (hl),b		;8c54
	call m,sub_8cfch	;8c55
	ld (hl),h		;8c58
	ld a,h			;8c59
	ld a,h			;8c5a
	call z,0fcfch		;8c5b
	ld a,(de)		;8c5e
	jp m,03ad6h		;8c5f
	jp m,0d536h		;8c62
	push de			;8c65
l8c66h:
	or a			;8c66
	rst 28h			;8c67
	rst 28h			;8c68
l8c69h:
	rst 18h			;8c69
	ld a,(hl)		;8c6a
	ld a,a			;8c6b
sub_8c6ch:
	ld a,(hl)		;8c6c
	ld b,c			;8c6d
	ld a,(hl)		;8c6e
	ld (hl),b		;8c6f
	ld (hl),b		;8c70
	ld a,a			;8c71
	ld a,(hl)		;8c72
	call m,0fdffh		;8c73
	ccf			;8c76
	ccf			;8c77
	rst 38h			;8c78
	rst 38h			;8c79
	ex (sp),hl		;8c7a
	inc hl			;8c7b
sub_8c7ch:
	cp a			;8c7c
	jp 07f83h		;8c7d
	add a,a			;8c80
	rlca			;8c81
	rst 38h			;8c82
	rlca			;8c83
	rlca			;8c84
	rst 38h			;8c85
	rrca			;8c86
	rrca			;8c87
	ld a,a			;8c88
	adc a,a			;8c89
	ld c,03fh		;8c8a
	adc a,08dh		;8c8c
	dec c			;8c8e
	call p,08627h		;8c8f
	cp 08fh			;8c92
	rst 38h			;8c94
	rst 38h			;8c95
	ei			;8c96
	rst 38h			;8c97
	ret m			;8c98
	rst 20h			;8c99
	rst 38h			;8c9a
	ret po			;8c9b
	rst 18h			;8c9c
	rst 18h			;8c9d
	rst 0			;8c9e
	jr c,l8cf9h		;8c9f
	ld c,b			;8ca1
	or a			;8ca2
	rst 18h			;8ca3
	ld c,b			;8ca4
	or a			;8ca5
	cp (hl)			;8ca6
	add a,b			;8ca7
	ld a,a			;8ca8
	ld a,b			;8ca9
	nop			;8caa
l8cabh:
	rst 38h			;8cab
	rst 38h			;8cac
	rst 38h			;8cad
	rst 38h			;8cae
	rst 38h			;8caf
	ld (hl),a		;8cb0
	exx			;8cb1
	sbc a,002h		;8cb2
	defb 0fdh,0feh,000h ;illegal sequence	;8cb4
	rst 38h			;8cb7
	rst 38h			;8cb8
	add a,b			;8cb9
	ld a,a			;8cba
	jp 07f80h		;8cbb
	dec e			;8cbe
	inc e			;8cbf
	rst 38h			;8cc0
	cp (hl)			;8cc1
	ld a,0e3h		;8cc2
	add a,a			;8cc4
	ret m			;8cc5
	add a,b			;8cc6
	rst 38h			;8cc7
	ret nz			;8cc8
	ret nz			;8cc9
	cp 0c1h			;8cca
	ld b,c			;8ccc
	cp 0e1h			;8ccd
	ld h,b			;8ccf
	call m,0a263h		;8cd0
	ld sp,hl		;8cd3
	daa			;8cd4
	push hl			;8cd5
	pop af			;8cd6
	cpl			;8cd7
	jp (hl)			;8cd8
	ex (sp),hl		;8cd9
	ccf			;8cda
	di			;8cdb
	ld c,l			;8cdc
	call 0cd4bh		;8cdd
	call sub_8dcbh		;8ce0
	adc a,l			;8ce3
	adc a,e			;8ce4
	adc a,l			;8ce5
	adc a,l			;8ce6
	adc a,e			;8ce7
	adc a,l			;8ce8
	adc a,l			;8ce9
	adc a,e			;8cea
	call 0cbcdh		;8ceb
	ld c,l			;8cee
	call 05a4bh		;8cef
	jp c,0ff56h		;8cf2
	rst 20h			;8cf5
	rst 20h			;8cf6
	rst 38h			;8cf7
	rst 0			;8cf8
l8cf9h:
	rst 0			;8cf9
	ld a,a			;8cfa
	ld c,a			;8cfb
sub_8cfch:
	rst 8			;8cfc
	rst 38h			;8cfd
	rst 8			;8cfe
	ld c,h			;8cff
	cp a			;8d00
	sbc a,099h		;8d01
	cp a			;8d03
	call c,sub_8f9bh	;8d04
	call m,0469bh		;8d07
	ld a,(hl)		;8d0a
	ld c,l			;8d0b
	jp 0c6ffh		;8d0c
	pop hl			;8d0f
	rst 38h			;8d10
l8d11h:
	ex (sp),hl		;8d11
	ret p			;8d12
	rst 38h			;8d13
	pop af			;8d14
	ret p			;8d15
	rst 38h			;8d16
	jr nc,l8d11h		;8d17
	rra			;8d19
	ret m			;8d1a
	sbc a,b			;8d1b
	rrca			;8d1c
	ret m			;8d1d
	ld l,h			;8d1e
	ld h,a			;8d1f
	call m,0f3f6h		;8d20
	sbc a,(hl)		;8d23
	rst 38h			;8d24
	nop			;8d25
	rst 38h			;8d26
	pop hl			;8d27
	nop			;8d28
	rst 38h			;8d29
	sbc a,(hl)		;8d2a
	sbc a,(hl)		;8d2b
	rst 38h			;8d2c
	ld a,a			;8d2d
	rst 38h			;8d2e
	pop hl			;8d2f
	ld hl,07ee1h		;8d30
l8d33h:
	rra			;8d33
	pop af			;8d34
	ld a,00fh		;8d35
	rst 38h			;8d37
	rra			;8d38
	nop			;8d39
	rst 38h			;8d3a
	rrca			;8d3b
	or e			;8d3c
	inc sp			;8d3d
	defb 0edh ;next byte illegal after ed	;8d3e
	rst 18h			;8d3f
	ld de,0effeh		;8d40
	add hl,bc		;8d43
	rst 30h			;8d44
	ld (hl),d		;8d45
	inc bc			;8d46
	rst 38h			;8d47
	rst 38h			;8d48
	ex (sp),hl		;8d49
	ld a,a			;8d4a
	sbc a,a			;8d4b
	ret p			;8d4c
	rst 38h			;8d4d
	rra			;8d4e
	ret p			;8d4f
	sbc a,a			;8d50
	jr c,l8d33h		;8d51
	ccf			;8d53
	ld b,a			;8d54
	ld a,d			;8d55
	jp po,0f68fh		;8d56
	add a,01fh		;8d59
	call po,03f84h		;8d5b
	rst 0			;8d5e
	rlca			;8d5f
	cp a			;8d60
	jp 0f883h		;8d61
	rst 0			;8d64
l8d65h:
	jp 047f8h		;8d65
	ret nz			;8d68
	pop af			;8d69
	ld l,a			;8d6a
	pop hl			;8d6b
	ld e,d			;8d6c
	jp c,05a56h		;8d6d
	jp c,07656h		;8d70
	or 06eh			;8d73
	ret pe			;8d75
	ret pe			;8d76
	ret c			;8d77
	ret pe			;8d78
	ret pe			;8d79
	ret m			;8d7a
	jr z,l8d65h		;8d7b
	ret m			;8d7d
	ld l,b			;8d7e
	ret pe			;8d7f
	ld a,b			;8d80
l8d81h:
	ret c			;8d81
	ret c			;8d82
	ret m			;8d83
	ld e,e			;8d84
	ld e,e			;8d85
	ld l,l			;8d86
	ld l,a			;8d87
	ld l,a			;8d88
	ld d,l			;8d89
	cpl			;8d8a
	cpl			;8d8b
	dec (hl)		;8d8c
	cpl			;8d8d
	cpl			;8d8e
	dec (hl)		;8d8f
	ld (hl),037h		;8d90
	ld hl,(01716h)		;8d92
	ld a,(de)		;8d95
	ld a,(de)		;8d96
	dec de			;8d97
l8d98h:
	ld d,00eh		;8d98
	rrca			;8d9a
sub_8d9bh:
	ld a,(bc)		;8d9b
	ex (sp),hl		;8d9c
	cp a			;8d9d
	and a			;8d9e
	ld sp,hl		;8d9f
	cp a			;8da0
	cp e			;8da1
	call m,03d3fh		;8da2
	cp 07fh			;8da5
	ld a,(hl)		;8da7
	rst 38h			;8da8
	ld a,e			;8da9
	ld a,a			;8daa
	ld a,a			;8dab
	di			;8dac
	ld a,a			;8dad
	ld a,d			;8dae
	jp p,03a7fh		;8daf
	jp p,09e7dh		;8db2
	sbc a,e			;8db5
	ld l,(hl)		;8db6
	rst 28h			;8db7
	adc a,e			;8db8
	rst 38h			;8db9
	ld e,a			;8dba
	rst 10h			;8dbb
	ex de,hl		;8dbc
	ld a,0ffh		;8dbd
	ld h,d			;8dbf
	sbc a,(hl)		;8dc0
	ld a,a			;8dc1
	ld a,0c0h		;8dc2
	cp a			;8dc4
	sbc a,(hl)		;8dc5
	ret po			;8dc6
	rst 18h			;8dc7
	ret nz			;8dc8
	ret p			;8dc9
	ld l,a			;8dca
sub_8dcbh:
	ret po			;8dcb
	nop			;8dcc
	rst 38h			;8dcd
	nop			;8dce
	jr c,l8d98h		;8dcf
	nop			;8dd1
	ld a,h			;8dd2
	cp e			;8dd3
l8dd4h:
	jr c,l8dd4h		;8dd4
	ld a,l			;8dd6
	ld b,h			;8dd7
	adc a,0ffh		;8dd8
	or d			;8dda
	sbc a,d			;8ddb
	cp e			;8ddc
	and 092h		;8ddd
	sub e			;8ddf
	xor 0c6h		;8de0
	ld b,l			;8de2
	ld a,h			;8de3
	scf			;8de4
	rst 20h			;8de5
	ld a,07fh		;8de6
	rst 8			;8de8
	ld a,c			;8de9
	ld l,l			;8dea
	call 07b7ah		;8deb
	exx			;8dee
	ld h,(hl)		;8def
	ld (hl),l		;8df0
	pop af			;8df1
	ld c,a			;8df2
	ld a,a			;8df3
	rst 38h			;8df4
	ld b,(hl)		;8df5
	ccf			;8df6
	rst 38h			;8df7
	ld h,c			;8df8
	ld a,0ffh		;8df9
	ccf			;8dfb
	ld (hl),d		;8dfc
	ld l,0e2h		;8dfd
	ld (hl),d		;8dff
	ld l,0e2h		;8e00
	ex (sp),hl		;8e02
	cp a			;8e03
	di			;8e04
	and e			;8e05
	cp a			;8e06
	di			;8e07
	and b			;8e08
	cp a			;8e09
	ld h,b			;8e0a
	pop bc			;8e0b
	cp 060h			;8e0c
	add a,e			;8e0e
	defb 0fdh,0c1h,007h ;illegal sequence	;8e0f
	ld sp,hl		;8e12
	add a,c			;8e13
	ret p			;8e14
	ret p			;8e15
	ret p			;8e16
	sub b			;8e17
	ret p			;8e18
	ret p			;8e19
	adc a,h			;8e1a
	call m,01f9ch		;8e1b
	ex (sp),hl		;8e1e
	inc bc			;8e1f
	rst 38h			;8e20
l8e21h:
	rra			;8e21
	rra			;8e22
	ret po			;8e23
	ret po			;8e24
	ret po			;8e25
	nop			;8e26
	nop			;8e27
	nop			;8e28
	nop			;8e29
	nop			;8e2a
	nop			;8e2b
	rra			;8e2c
	ld sp,hl		;8e2d
	ld a,0cfh		;8e2e
	cp h			;8e30
	sbc a,a			;8e31
	ld h,a			;8e32
	ld e,a			;8e33
	rst 8			;8e34
	pop af			;8e35
	rst 28h			;8e36
	ld h,a			;8e37
	ret c			;8e38
	rst 10h			;8e39
	pop de			;8e3a
	ld l,02dh		;8e3b
	inc a			;8e3d
	ld l,a			;8e3e
l8e3fh:
	ld l,(hl)		;8e3f
	ld d,(hl)		;8e40
	ld e,e			;8e41
	ld e,e			;8e42
	ld l,e			;8e43
	ret m			;8e44
	or a			;8e45
	ld (hl),b		;8e46
	ret p			;8e47
	ccf			;8e48
	ret m			;8e49
	ex (sp),hl		;8e4a
	call m,0c7f0h		;8e4b
	ei			;8e4e
	ex (sp),hl		;8e4f
	rrca			;8e50
	rst 30h			;8e51
	rst 0			;8e52
	rrca			;8e53
	rst 30h			;8e54
	ld b,0deh		;8e55
	ld l,00dh		;8e57
	cp 08eh			;8e59
	adc a,c			;8e5b
	ld a,h			;8e5c
	cp e			;8e5d
	jr c,l8e98h		;8e5e
	rst 0			;8e60
	nop			;8e61
	ret nz			;8e62
	ccf			;8e63
	nop			;8e64
	ret po			;8e65
	rst 18h			;8e66
	ret nz			;8e67
	pop af			;8e68
	xor 0e0h		;8e69
	rst 38h			;8e6b
	ret p			;8e6c
	ld (hl),b		;8e6d
	rst 38h			;8e6e
	ret p			;8e6f
	jr nc,$+129		;8e70
	ld (hl),b		;8e72
	or b			;8e73
	nop			;8e74
	rst 38h			;8e75
	ld a,000h		;8e76
	rst 38h			;8e78
	nop			;8e79
	rrca			;8e7a
	ret p			;8e7b
	nop			;8e7c
	ccf			;8e7d
	rst 8			;8e7e
	rrca			;8e7f
	rst 38h			;8e80
	ccf			;8e81
	ccf			;8e82
	rst 38h			;8e83
	ld a,a			;8e84
	ld a,b			;8e85
	call m,0e3fch		;8e86
	ld sp,hl		;8e89
	ld sp,hl		;8e8a
	sub 00eh		;8e8b
	jp p,03e02h		;8e8d
	jp nz,0fc02h		;8e90
	inc b			;8e93
	inc b			;8e94
	call m,sub_8484h	;8e95
l8e98h:
	call m,0cccch		;8e98
	or 0f6h			;8e9b
	jp m,0fafah		;8e9d
	halt			;8ea0
	adc a,l			;8ea1
	adc a,l			;8ea2
	adc a,e			;8ea3
	rst 38h			;8ea4
	pop af			;8ea5
	ld sp,0e1ffh		;8ea6
	ld h,c			;8ea9
	rst 38h			;8eaa
	ret nz			;8eab
	ret nz			;8eac
	ld a,a			;8ead
	ld a,a			;8eae
	ld a,a			;8eaf
	ret m			;8eb0
	ret m			;8eb1
	rst 38h			;8eb2
	rlca			;8eb3
	rlca			;8eb4
	ret m			;8eb5
	rst 38h			;8eb6
	rst 38h			;8eb7
	rlca			;8eb8
	ret m			;8eb9
	ret m			;8eba
	ret m			;8ebb
	rst 38h			;8ebc
	rst 38h			;8ebd
	ei			;8ebe
	rst 38h			;8ebf
	ld sp,hl		;8ec0
	rst 20h			;8ec1
	defb 0fdh,0e0h,0dfh ;illegal sequence	;8ec2
	ei			;8ec5
	pop af			;8ec6
	ld l,03fh		;8ec7
	dec (hl)		;8ec9
	jp pe,031bfh		;8eca
	xor 0ffh		;8ecd
	ld h,d			;8ecf
	defb 0ddh,07fh,040h ;illegal sequence	;8ed0
	rst 38h			;8ed3
	rst 38h			;8ed4
	rst 38h			;8ed5
	rst 38h			;8ed6
	sbc a,l			;8ed7
	sub l			;8ed8
	ei			;8ed9
	cp 062h			;8eda
	ex (sp),iy		;8edc
	ld bc,0fdfeh		;8ede
	inc a			;8ee1
	rst 18h			;8ee2
	cp 07eh			;8ee3
	and e			;8ee5
	ex (sp),hl		;8ee6
	ex (sp),hl		;8ee7
	ld e,l			;8ee8
	defb 0ddh,0c1h,0beh ;illegal sequence	;8ee9
	ex (sp),hl		;8eec
	add a,b			;8eed
	rst 38h			;8eee
	defb 0ddh,01ch,0ffh ;illegal sequence	;8eef
	cp (hl)			;8ef2
	cp (hl)			;8ef3
	ex (sp),hl		;8ef4
	ld h,e			;8ef5
	ex (sp),hl		;8ef6
	defb 0ddh,03dh,0e1h ;illegal sequence	;8ef7
	ld a,a			;8efa
	dec de			;8efb
	jp p,00f3dh		;8efc
	rst 38h			;8eff
	rra			;8f00
	nop			;8f01
	rst 38h			;8f02
	rrca			;8f03
	sbc a,0c0h		;8f04
	cp a			;8f06
	rst 28h			;8f07
l8f08h:
	ld h,b			;8f08
	rst 18h			;8f09
	push af			;8f0a
	ld sp,0eeefh		;8f0b
	rrca			;8f0e
	ei			;8f0f
	rst 38h			;8f10
	ld h,e			;8f11
	rst 38h			;8f12
	sbc a,a			;8f13
	ret p			;8f14
	rst 38h			;8f15
	jr l8f08h		;8f16
	sbc a,a			;8f18
	scf			;8f19
	rst 20h			;8f1a
	ccf			;8f1b
	cpl			;8f1c
	rst 28h			;8f1d
	jr c,l8f8dh		;8f1e
	call 05b7ah		;8f20
	exx			;8f23
	halt			;8f24
	ld e,l			;8f25
	pop de			;8f26
	ld a,(hl)		;8f27
	ld (hl),l		;8f28
	pop af			;8f29
	ld c,a			;8f2a
	ld a,a			;8f2b
	rst 38h			;8f2c
	ld b,(hl)		;8f2d
	ccf			;8f2e
	rst 38h			;8f2f
	ld h,c			;8f30
	ld a,0ffh		;8f31
	ccf			;8f33
	rst 38h			;8f34
	rst 20h			;8f35
	rst 20h			;8f36
	rst 38h			;8f37
	rst 0			;8f38
	rst 0			;8f39
	ld a,a			;8f3a
	ld c,a			;8f3b
	rst 8			;8f3c
	rst 38h			;8f3d
	rst 8			;8f3e
	ld c,h			;8f3f
	cp a			;8f40
	sbc a,099h		;8f41
	cp (hl)			;8f43
	call c,sub_8d9bh	;8f44
	defb 0fdh,09bh,047h ;illegal sequence	;8f47
	ld a,a			;8f4a
	ld c,l			;8f4b
	jp 0c6ffh		;8f4c
	pop hl			;8f4f
	rst 38h			;8f50
	ex (sp),hl		;8f51
	ret p			;8f52
	rst 38h			;8f53
	pop af			;8f54
	ret p			;8f55
	rst 38h			;8f56
	jr nc,l8f71h		;8f57
	rra			;8f59
	ret m			;8f5a
	ret pe			;8f5b
	rst 28h			;8f5c
	ret m			;8f5d
	call p,01cf7h		;8f5e
	sbc a,(hl)		;8f61
	sbc a,e			;8f62
	ld l,(hl)		;8f63
	ld a,(hl)		;8f64
	dec de			;8f65
	xor 0efh		;8f66
	adc a,e			;8f68
	rst 38h			;8f69
	ld e,a			;8f6a
	rst 10h			;8f6b
	ex de,hl		;8f6c
	ld a,0ffh		;8f6d
	ld h,d			;8f6f
	sbc a,(hl)		;8f70
l8f71h:
	ld a,a			;8f71
l8f72h:
	ld a,0c0h		;8f72
	cp a			;8f74
	sbc a,(hl)		;8f75
	ret po			;8f76
	rst 18h			;8f77
	ret nz			;8f78
	ret p			;8f79
	ld l,a			;8f7a
	ret po			;8f7b
	ex (sp),hl		;8f7c
	cp a			;8f7d
	and (hl)		;8f7e
	ld sp,hl		;8f7f
	cp a			;8f80
	cp e			;8f81
	call m,03d3fh		;8f82
	cp 07fh			;8f85
	ld a,(hl)		;8f87
	rst 38h			;8f88
	ld a,e			;8f89
	ld a,a			;8f8a
	ld a,a			;8f8b
	pop af			;8f8c
l8f8dh:
	ld a,a			;8f8d
	ld a,c			;8f8e
	ret p			;8f8f
	ld a,a			;8f90
	ld a,0feh		;8f91
	ld a,a			;8f93
	rra			;8f94
	rst 38h			;8f95
l8f96h:
	add hl,sp		;8f96
	call sub_9ebdh		;8f97
	ld h,a			;8f9a
sub_8f9bh:
	ld e,a			;8f9b
	rst 8			;8f9c
	pop af			;8f9d
	rst 28h			;8f9e
	ld h,a			;8f9f
	ret c			;8fa0
	rst 10h			;8fa1
	pop de			;8fa2
	ld l,02dh		;8fa3
	inc a			;8fa5
	ld l,a			;8fa6
	ld l,(hl)		;8fa7
	ld d,(hl)		;8fa8
	ld e,e			;8fa9
	ld e,e			;8faa
	ld l,e			;8fab
	ret m			;8fac
	scf			;8fad
	ret p			;8fae
	ret p			;8faf
	rst 38h			;8fb0
	jr c,l8f96h		;8fb1
	inc a			;8fb3
	ret p			;8fb4
	rst 0			;8fb5
	ei			;8fb6
	ex (sp),hl		;8fb7
	rrca			;8fb8
	rst 30h			;8fb9
	rst 0			;8fba
	rrca			;8fbb
	rst 30h			;8fbc
	ld b,0deh		;8fbd
	ld l,00dh		;8fbf
	cp 08eh			;8fc1
	adc a,c			;8fc3
	or d			;8fc4
	xor (hl)		;8fc5
	jp po,0aeb2h		;8fc6
	jp po,0bfa3h		;8fc9
	di			;8fcc
	and e			;8fcd
	cp a			;8fce
	di			;8fcf
	and b			;8fd0
	cp a			;8fd1
	ld h,b			;8fd2
	pop bc			;8fd3
	cp 060h			;8fd4
	add a,e			;8fd6
	defb 0fdh,0c1h,007h ;illegal sequence	;8fd7
	ld sp,hl		;8fda
	add a,c			;8fdb
	add a,a			;8fdc
	ret m			;8fdd
	add a,b			;8fde
	rst 38h			;8fdf
	ret nz			;8fe0
	ret nz			;8fe1
	cp 041h			;8fe2
	pop bc			;8fe4
	cp 0e1h			;8fe5
	ld h,b			;8fe7
	call m,0e223h		;8fe8
	ld sp,hl		;8feb
	daa			;8fec
	push hl			;8fed
	ld (hl),c		;8fee
	cpl			;8fef
	jp (hl)			;8ff0
	ex (sp),hl		;8ff1
	cp a			;8ff2
	di			;8ff3
	nop			;8ff4
	nop			;8ff5
	nop			;8ff6
	nop			;8ff7
	nop			;8ff8
	nop			;8ff9
	nop			;8ffa
	rst 38h			;8ffb
	nop			;8ffc
	nop			;8ffd
	nop			;8ffe
	nop			;8fff
	nop			;9000
	nop			;9001
	nop			;9002
	ret m			;9003
	nop			;9004
	nop			;9005
	nop			;9006
	nop			;9007
	ld bc,00101h		;9008
	inc bc			;900b
	ld bc,00301h		;900c
	inc bc			;900f
	inc bc			;9010
	rlca			;9011
	rlca			;9012
	nop			;9013
	nop			;9014
	nop			;9015
	nop			;9016
	nop			;9017
	nop			;9018
	nop			;9019
	nop			;901a
	ld e,000h		;901b
	nop			;901d
	nop			;901e
	nop			;901f
	nop			;9020
	nop			;9021
	nop			;9022
	rrca			;9023
	ret nz			;9024
	add a,b			;9025
	add a,b			;9026
	add a,b			;9027
	nop			;9028
	nop			;9029
	nop			;902a
	nop			;902b
	rst 38h			;902c
	rst 38h			;902d
	rst 38h			;902e
	rst 38h			;902f
	rst 38h			;9030
	rst 38h			;9031
	rst 38h			;9032
	rst 38h			;9033
	ret nz			;9034
	ret nz			;9035
	add a,b			;9036
	add a,b			;9037
	add a,b			;9038
	nop			;9039
	nop			;903a
	nop			;903b
	nop			;903c
	nop			;903d
	nop			;903e
	nop			;903f
	nop			;9040
	nop			;9041
	nop			;9042
	nop			;9043
	nop			;9044
	ld bc,00100h		;9045
	nop			;9048
	ld bc,00100h		;9049
	nop			;904c
	nop			;904d
	nop			;904e
	nop			;904f
	nop			;9050
	nop			;9051
	nop			;9052
	nop			;9053
	nop			;9054
	nop			;9055
	ld bc,00200h		;9056
	ld bc,00305h		;9059
	nop			;905c
	nop			;905d
	ld bc,00000h		;905e
	ld bc,00100h		;9061
	nop			;9064
	ld bc,00100h		;9065
	nop			;9068
	ld bc,00000h		;9069
	nop			;906c
	nop			;906d
	nop			;906e
	nop			;906f
	ld bc,00301h		;9070
	inc bc			;9073
	inc bc			;9074
	ld (bc),a		;9075
	inc bc			;9076
	ld (bc),a		;9077
	di			;9078
	jp p,0f5f6h		;9079
	nop			;907c
	nop			;907d
	ld bc,00101h		;907e
	ld bc,00303h		;9081
	inc bc			;9084
	inc bc			;9085
	rlca			;9086
	ld b,007h		;9087
	ld b,007h		;9089
	ld b,000h		;908b
	nop			;908d
	nop			;908e
	nop			;908f
	add a,b			;9090
	add a,b			;9091
	ret nz			;9092
	ret nz			;9093
	ret po			;9094
	ld h,b			;9095
	ld (hl),b		;9096
	or b			;9097
	jr c,$-38		;9098
	inc e			;909a
	call pe,0b070h		;909b
	ld (hl),b		;909e
	or b			;909f
	ret po			;90a0
	ld h,b			;90a1
	ret po			;90a2
	ld h,b			;90a3
	ret po			;90a4
	ld h,b			;90a5
	ret po			;90a6
	ld h,b			;90a7
	ret nz			;90a8
	ret nz			;90a9
	ret nz			;90aa
	ret nz			;90ab
	ld (hl),b		;90ac
	or b			;90ad
	ld (hl),b		;90ae
	or b			;90af
	ld (hl),b		;90b0
	or b			;90b1
	ret po			;90b2
	ld h,b			;90b3
	ret po			;90b4
	ret po			;90b5
	ret po			;90b6
	ret po			;90b7
	ret po			;90b8
	ld h,b			;90b9
	ret nz			;90ba
	ret nz			;90bb
	rst 38h			;90bc
	nop			;90bd
	nop			;90be
	rst 38h			;90bf
	nop			;90c0
	rst 38h			;90c1
	nop			;90c2
	rst 38h			;90c3
	nop			;90c4
	rst 38h			;90c5
	rst 38h			;90c6
	rst 38h			;90c7
	rst 38h			;90c8
	rst 38h			;90c9
	nop			;90ca
	nop			;90cb
	nop			;90cc
	nop			;90cd
	nop			;90ce
	nop			;90cf
	nop			;90d0
	nop			;90d1
	nop			;90d2
	nop			;90d3
	ld bc,00300h		;90d4
	nop			;90d7
	ld b,001h		;90d8
	ld b,001h		;90da
	nop			;90dc
	nop			;90dd
	nop			;90de
	nop			;90df
	nop			;90e0
	nop			;90e1
	nop			;90e2
	nop			;90e3
	ld b,b			;90e4
	nop			;90e5
	ret nz			;90e6
	nop			;90e7
	ld h,b			;90e8
	add a,b			;90e9
	and b			;90ea
	ret nz			;90eb
	nop			;90ec
	nop			;90ed
	nop			;90ee
	nop			;90ef
sub_90f0h:
	nop			;90f0
	nop			;90f1
	nop			;90f2
	nop			;90f3
	nop			;90f4
	nop			;90f5
	nop			;90f6
	nop			;90f7
	ld b,000h		;90f8
	rrca			;90fa
	ld (bc),a		;90fb
	or h			;90fc
	ld a,b			;90fd
	ld c,a			;90fe
	inc a			;90ff
	daa			;9100
	rra			;9101
	add hl,de		;9102
	rlca			;9103
	dec b			;9104
	inc bc			;9105
	ld (bc),a		;9106
	ld bc,00102h		;9107
	ld (bc),a		;910a
	ld bc,00102h		;910b
	ld (bc),a		;910e
	ld bc,001c2h		;910f
	ld (093c1h),hl		;9112
	ret po			;9115
	set 6,b			;9116
	ret			;9118
	ret p			;9119
	ret			;911a
	ret p			;911b
	cp a			;911c
	ret nz			;911d
	ret nz			;911e
	rst 38h			;911f
	rst 38h			;9120
	rst 38h			;9121
	rst 38h			;9122
	ret nz			;9123
	pop hl			;9124
	add a,b			;9125
	pop bc			;9126
	add a,b			;9127
	jp 0c780h		;9128
	add a,c			;912b
	ret nz			;912c
	ld bc,l8163h		;912d
	or e			;9130
	pop bc			;9131
	jp nc,0b6e1h		;9132
	jp nz,0c2a6h		;9135
	call pe,04c86h		;9138
	add a,h			;913b
	ld b,001h		;913c
	inc b			;913e
	inc bc			;913f
	adc a,c			;9140
l9141h:
	rlca			;9141
	ld (hl),c		;9142
	adc a,a			;9143
	add a,e			;9144
	rst 38h			;9145
	rst 0			;9146
	rst 38h			;9147
	cp 0ffh			;9148
	cp 0ffh			;914a
	xor (hl)		;914c
	jp 0c679h		;914d
	ld (hl),a		;9150
	ret m			;9151
	ld (hl),h		;9152
	ret m			;9153
	ld l,b			;9154
	ret p			;9155
	ld e,b			;9156
	ret po			;9157
	ld d,c			;9158
	ret po			;9159
	ld de,0dfe0h		;915a
	inc b			;915d
	sbc a,a			;915e
	rrca			;915f
	ccf			;9160
	ex af,af'		;9161
	jr c,l9174h		;9162
	ld a,b			;9164
	djnz $-22		;9165
	jr nc,l9141h		;9167
	ld h,b			;9169
	or b			;916a
	ld b,b			;916b
	nop			;916c
	nop			;916d
	add a,b			;916e
	nop			;916f
	ret nz			;9170
	nop			;9171
	ret p			;9172
	nop			;9173
l9174h:
	sbc a,b			;9174
	ld h,b			;9175
	ld l,h			;9176
	ret p			;9177
	ld h,h			;9178
	ret m			;9179
	sub h			;917a
	ret m			;917b
	nop			;917c
	nop			;917d
	nop			;917e
	nop			;917f
	inc bc			;9180
	nop			;9181
	dec c			;9182
	inc bc			;9183
	rra			;9184
	rlca			;9185
	cpl			;9186
	rra			;9187
	ld de,04233h		;9188
	ld hl,00000h		;918b
l918eh:
	ld b,c			;918e
	nop			;918f
	ld b,e			;9190
	add a,c			;9191
	inc bc			;9192
	pop bc			;9193
	and d			;9194
	pop bc			;9195
	rst 0			;9196
	jp po,0c6abh		;9197
	ld c,a			;919a
	add a,(hl)		;919b
	scf			;919c
	ld c,0bfh		;919d
	ld a,(hl)		;919f
	call m,0e0c2h		;91a0
	add a,b			;91a3
	add a,h			;91a4
	nop			;91a5
	ld a,(bc)		;91a6
	inc b			;91a7
	ld a,(0dc0ch)		;91a8
	jr nc,l91adh		;91ab
l91adh:
	nop			;91ad
	nop			;91ae
	nop			;91af
	nop			;91b0
	nop			;91b1
	nop			;91b2
	nop			;91b3
	ld bc,00200h		;91b4
	ld bc,0030ch		;91b7
	rla			;91ba
	ld c,000h		;91bb
	nop			;91bd
	inc c			;91be
	ld bc,0071eh		;91bf
	add hl,hl		;91c2
	ld e,066h		;91c3
	jr c,l91dfh		;91c5
	ret po			;91c7
	ld h,b			;91c8
	add a,b			;91c9
	add a,b			;91ca
	nop			;91cb
	add a,b			;91cc
	nop			;91cd
	ret nz			;91ce
	add a,b			;91cf
	add a,b			;91d0
	nop			;91d1
	add a,b			;91d2
	nop			;91d3
	nop			;91d4
	nop			;91d5
	nop			;91d6
	nop			;91d7
	nop			;91d8
	nop			;91d9
	nop			;91da
	nop			;91db
	adc a,b			;91dc
	or b			;91dd
	ex af,af'		;91de
l91dfh:
	jr nc,$+10		;91df
	jr nc,l9214h		;91e1
	jr nz,$+51		;91e3
	jr nz,l9217h		;91e5
	ld hl,03f32h		;91e7
	push af			;91ea
	jr c,l918eh		;91eb
	ld h,b			;91ed
	nop			;91ee
	ret nz			;91ef
	nop			;91f0
	ret nz			;91f1
	ld b,b			;91f2
	ret nz			;91f3
	ret nz			;91f4
	pop bc			;91f5
	ret nz			;91f6
	jp 0e743h		;91f7
	ld h,(hl)		;91fa
	rst 38h			;91fb
	sub a			;91fc
	rrca			;91fd
	ld sp,0621fh		;91fe
	ld sp,0e346h		;9201
	rlca			;9204
	jp nz,0864bh		;9205
	sub a			;9208
	rrca			;9209
	and a			;920a
	rra			;920b
	or b			;920c
	ret nz			;920d
	ret nz			;920e
	nop			;920f
	inc bc			;9210
	nop			;9211
	rrca			;9212
	inc bc			;9213
l9214h:
	dec (hl)		;9214
	ld c,0d2h		;9215
l9217h:
	inc a			;9217
	call pe,sub_90f0h	;9218
	ret po			;921b
	ld a,(hl)		;921c
	inc e			;921d
	cp h			;921e
	ld (hl),b		;921f
	ret p			;9220
	ret nz			;9221
	ld b,b			;9222
	add a,b			;9223
	nop			;9224
	nop			;9225
	nop			;9226
	nop			;9227
	nop			;9228
	nop			;9229
	nop			;922a
	nop			;922b
	ld l,c			;922c
	ret p			;922d
	xor b			;922e
	ld (hl),b		;922f
	ld l,b			;9230
	jr nc,$+102		;9231
	jr c,l92a1h		;9233
	jr nc,l91dfh		;9235
	ld (hl),b		;9237
	ld c,b			;9238
	jr nc,l92abh		;9239
	nop			;923b
	add a,e			;923c
	ld a,h			;923d
	add a,038h		;923e
	ld a,b			;9240
	nop			;9241
	nop			;9242
	nop			;9243
	nop			;9244
	nop			;9245
	nop			;9246
	nop			;9247
	nop			;9248
	nop			;9249
	nop			;924a
	nop			;924b
	rla			;924c
	rrca			;924d
	djnz l925fh		;924e
	rrca			;9250
	nop			;9251
	nop			;9252
	nop			;9253
	nop			;9254
	nop			;9255
	nop			;9256
	nop			;9257
	nop			;9258
	nop			;9259
	nop			;925a
	nop			;925b
	nop			;925c
	nop			;925d
	nop			;925e
l925fh:
	nop			;925f
	nop			;9260
	nop			;9261
	nop			;9262
	nop			;9263
	nop			;9264
	jr c,l9267h		;9265
l9267h:
	nop			;9267
	ld b,(hl)		;9268
	jr c,l926bh		;9269
l926bh:
	or e			;926b
	ld a,h			;926c
	nop			;926d
	ld a,c			;926e
	cp 000h			;926f
	sbc a,l			;9271
	sbc a,(hl)		;9272
	ld h,b			;9273
	dec bc			;9274
	rlca			;9275
	nop			;9276
	ld b,00eh		;9277
	ld bc,00c14h		;9279
	inc bc			;927c
	jr z,$+26		;927d
	rlca			;927f
l9280h:
	ld de,00e31h		;9280
l9283h:
	ld b,a			;9283
	daa			;9284
	jr l92afh		;9285
	ld l,a			;9287
	djnz $-110		;9288
	ld e,a			;928a
	jr nz,$+15		;928b
	ld c,0f0h		;928d
	dec c			;928f
	ld c,0f0h		;9290
	ld a,(de)		;9292
	inc e			;9293
	ret po			;9294
	ld (0c03ch),a		;9295
	ret po			;9298
	call m,08800h		;9299
	ret p			;929c
	nop			;929d
	djnz l9280h		;929e
	nop			;92a0
l92a1h:
	ret nz			;92a1
	nop			;92a2
	nop			;92a3
	xor b			;92a4
	jr nc,l92e7h		;92a5
	and b			;92a7
	or b			;92a8
	ld b,b			;92a9
	add a,b			;92aa
l92abh:
	and b			;92ab
	ld b,b			;92ac
l92adh:
	add a,b			;92ad
	and b			;92ae
l92afh:
	ld b,b			;92af
	add a,b			;92b0
	and b			;92b1
	ld b,b			;92b2
	add a,b			;92b3
	and b			;92b4
	ld b,b			;92b5
	add a,b			;92b6
	and b			;92b7
	ld b,b			;92b8
	and b			;92b9
	or b			;92ba
	ld b,b			;92bb
	add a,b			;92bc
	add a,b			;92bd
	nop			;92be
	nop			;92bf
	ld a,b			;92c0
	nop			;92c1
	jr c,l9283h		;92c2
	nop			;92c4
	ld a,a			;92c5
	ld a,a			;92c6
	nop			;92c7
	ld h,b			;92c8
	ret po			;92c9
	rra			;92ca
	jr nz,l92adh		;92cb
	rra			;92cd
	or b			;92ce
	ld (hl),b		;92cf
	rrca			;92d0
	ld e,b			;92d1
l92d2h:
	jr c,$+9		;92d2
	djnz l92efh		;92d4
	ret po			;92d6
	jr nc,l9312h		;92d7
	ret nz			;92d9
	jr c,l930dh		;92da
	ret nz			;92dc
	ld h,b			;92dd
	ld (hl),c		;92de
	add a,b			;92df
	ld d,b			;92e0
	ld h,c			;92e1
	add a,b			;92e2
	add a,b			;92e3
	pop hl			;92e4
	nop			;92e5
	and b			;92e6
l92e7h:
	jp 04300h		;92e7
	add a,e			;92ea
	nop			;92eb
	nop			;92ec
	nop			;92ed
	nop			;92ee
l92efh:
	nop			;92ef
	nop			;92f0
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
	nop			;92fc
	nop			;92fd
	nop			;92fe
	nop			;92ff
	ex af,af'		;9300
	jr l9313h		;9301
	nop			;9303
	ret m			;9304
l9305h:
	ret m			;9305
	ret m			;9306
	ret c			;9307
	jr z,l92d2h		;9308
	add hl,sp		;930a
	jp (hl)			;930b
	add hl,bc		;930c
l930dh:
	add hl,sp		;930d
	jp (hl)			;930e
l930fh:
	add hl,bc		;930f
	dec sp			;9310
	ex de,hl		;9311
l9312h:
	dec bc			;9312
l9313h:
	dec sp			;9313
	ex de,hl		;9314
	dec bc			;9315
	dec sp			;9316
	ex de,hl		;9317
	ld a,(bc)		;9318
	ccf			;9319
	rst 28h			;931a
	ld c,0f8h		;931b
	ret m			;931d
	ret m			;931e
	ret m			;931f
	ret m			;9320
	ret m			;9321
	sbc a,b			;9322
	ld l,b			;9323
	adc a,b			;9324
	jr l930fh		;9325
	ex af,af'		;9327
	ld e,b			;9328
	ret pe			;9329
	ex af,af'		;932a
	ld e,b			;932b
	ret pe			;932c
	ex af,af'		;932d
	ld e,b			;932e
	ret pe			;932f
	ex af,af'		;9330
	ld e,b			;9331
	ret pe			;9332
	ex af,af'		;9333
	ld c,00eh		;9334
	dec c			;9336
	rrca			;9337
	ld c,00dh		;9338
	inc e			;933a
	dec e			;933b
	dec de			;933c
	rra			;933d
	jr l9358h		;933e
	rra			;9340
	rra			;9341
	rra			;9342
	inc a			;9343
	dec sp			;9344
	scf			;9345
	inc a			;9346
	dec sp			;9347
	scf			;9348
	ld (hl),b		;9349
	ld (hl),a		;934a
	ld l,a			;934b
	inc bc			;934c
	inc bc			;934d
	inc bc			;934e
	rlca			;934f
	rlca			;9350
	ld b,007h		;9351
	rlca			;9353
	ld b,00eh		;9354
	ld c,00dh		;9356
l9358h:
	rrca			;9358
	inc c			;9359
	inc c			;935a
	rrca			;935b
	rrca			;935c
	rrca			;935d
	ld e,01dh		;935e
	dec de			;9360
l9361h:
	ld e,01dh		;9361
	dec de			;9363
	ld e,b			;9364
	ret pe			;9365
	ex af,af'		;9366
	ld e,c			;9367
	jp (hl)			;9368
	add hl,bc		;9369
	ld e,c			;936a
	jp (hl)			;936b
	add hl,bc		;936c
	ei			;936d
	dec de			;936e
	dec de			;936f
	rst 38h			;9370
	rst 38h			;9371
	rst 38h			;9372
	ld e,a			;9373
	rst 28h			;9374
	ld c,05fh		;9375
	rst 28h			;9377
	ld c,05eh		;9378
	xor 00dh		;937a
	pop bc			;937c
	rst 18h			;937d
	jr nc,l9361h		;937e
	rst 18h			;9380
	jr nc,l9305h		;9381
	cp a			;9383
	ld h,b			;9384
	jp nz,060bfh		;9385
	rst 38h			;9388
	nop			;9389
	nop			;938a
	rst 38h			;938b
	rst 38h			;938c
	rst 38h			;938d
	add a,l			;938e
	ld a,(hl)		;938f
	ret nz			;9390
	dec b			;9391
	cp 080h			;9392
	ld h,b			;9394
	add a,c			;9395
	rra			;9396
	add a,b			;9397
	ld bc,0007fh		;9398
	nop			;939b
	rst 38h			;939c
	rst 38h			;939d
	nop			;939e
	rst 38h			;939f
	rst 38h			;93a0
	nop			;93a1
	nop			;93a2
	rst 38h			;93a3
	rst 38h			;93a4
	rst 38h			;93a5
	rst 38h			;93a6
	ld bc,0fe00h		;93a7
	inc bc			;93aa
	ld bc,0f6f9h		;93ab
	rst 38h			;93ae
	cp c			;93af
	or (hl)			;93b0
	cp a			;93b1
	cp e			;93b2
	or h			;93b3
	cp (hl)			;93b4
	ccf			;93b5
	jr nc,l93f4h		;93b6
	ccf			;93b8
	jr nc,l93ebh		;93b9
	ccf			;93bb
	ccf			;93bc
	ccf			;93bd
	ld a,03eh		;93be
	ld a,030h		;93c0
	jr nc,l93f4h		;93c2
	dec bc			;93c4
	defb 0fdh,081h,003h ;illegal sequence	;93c5
	defb 0fdh,001h,0ffh ;illegal sequence	;93c8
	inc bc			;93cb
	inc bc			;93cc
	rst 38h			;93cd
	rra			;93ce
	rra			;93cf
	ret m			;93d0
	ret m			;93d1
	ret m			;93d2
	ret nz			;93d3
	ret nz			;93d4
	ret nz			;93d5
	nop			;93d6
	nop			;93d7
	nop			;93d8
	nop			;93d9
	nop			;93da
	nop			;93db
	cp a			;93dc
	and (hl)		;93dd
	or l			;93de
	cp (hl)			;93df
	xor l			;93e0
	xor e			;93e1
	inc e			;93e2
	rra			;93e3
	dec de			;93e4
	add hl,sp		;93e5
	ld a,037h		;93e6
	ccf			;93e8
	jr nc,l941bh		;93e9
l93ebh:
	ld a,a			;93eb
	ld a,a			;93ec
	ld a,a			;93ed
	rst 38h			;93ee
	rst 38h			;93ef
	rst 38h			;93f0
	nop			;93f1
	nop			;93f2
	nop			;93f3
l93f4h:
	cp 005h			;93f4
	inc bc			;93f6
	cp 0fdh			;93f7
	rst 38h			;93f9
	ld b,005h		;93fa
	rlca			;93fc
	rlca			;93fd
	inc b			;93fe
	rlca			;93ff
	rlca			;9400
	inc b			;9401
	inc b			;9402
	rlca			;9403
	rlca			;9404
	rlca			;9405
l9406h:
	rlca			;9406
	rlca			;9407
	rlca			;9408
l9409h:
	nop			;9409
	nop			;940a
	nop			;940b
	ld (hl),b		;940c
	ret nc			;940d
	djnz $+114		;940e
	ret nc			;9410
	djnz $+114		;9411
	ret nc			;9413
	djnz l9406h		;9414
	ld d,b			;9416
	djnz l9409h		;9417
	jr nc,$+50		;9419
l941bh:
	ret p			;941b
l941ch:
	ret p			;941c
	ret p			;941d
	ret p			;941e
l941fh:
	ret p			;941f
	ret p			;9420
	nop			;9421
	nop			;9422
	nop			;9423
	inc l			;9424
	call p,0fc04h		;9425
	inc c			;9428
	inc c			;9429
	ret m			;942a
	ret m			;942b
	ret m			;942c
	add a,b			;942d
	add a,b			;942e
	add a,b			;942f
	nop			;9430
	nop			;9431
	nop			;9432
	nop			;9433
	nop			;9434
	nop			;9435
	nop			;9436
	nop			;9437
	nop			;9438
	nop			;9439
	nop			;943a
	nop			;943b
	ex de,hl		;943c
	and 0dch		;943d
	ld (hl),e		;943f
	ld (hl),d		;9440
	ld l,h			;9441
	ld a,(hl)		;9442
	ld a,l			;9443
	ld (hl),b		;9444
	ld a,03dh		;9445
	jr nc,l9465h		;9447
	dec de			;9449
	jr l946bh		;944a
	rra			;944c
	rra			;944d
	rrca			;944e
	rrca			;944f
	rrca			;9450
	nop			;9451
	nop			;9452
	nop			;9453
	cp 0feh			;9454
	cp 0feh			;9456
	cp 0feh			;9458
	call c,sub_8c6ch	;945a
	inc e			;945d
	call pe,0b80ch		;945e
	ret c			;9461
	jr l941ch		;9462
	ret c			;9464
l9465h:
	jr l941fh		;9465
	ret c			;9467
	jr l94dah		;9468
	or b			;946a
l946bh:
	jr nc,l9489h		;946b
	call pe,00e0ch		;946d
	or 006h			;9470
	rlca			;9472
	ei			;9473
	inc bc			;9474
	rst 38h			;9475
	rlca			;9476
	rlca			;9477
	rst 38h			;9478
	rst 38h			;9479
	rst 38h			;947a
	ld a,a			;947b
	ei			;947c
	ld (bc),a		;947d
	rst 38h			;947e
	or 005h			;947f
	rst 38h			;9481
	xor 00dh		;9482
	nop			;9484
	nop			;9485
	nop			;9486
	nop			;9487
	nop			;9488
l9489h:
	nop			;9489
	rrca			;948a
	rrca			;948b
	rrca			;948c
	rra			;948d
	rra			;948e
	rra			;948f
	rra			;9490
	jr l94b2h		;9491
	jr c,l94d0h		;9493
	scf			;9495
	inc a			;9496
	dec sp			;9497
	scf			;9498
	ld a,d			;9499
	ld (hl),l		;949a
	ld l,a			;949b
	nop			;949c
	nop			;949d
	nop			;949e
	nop			;949f
	nop			;94a0
	nop			;94a1
	ret m			;94a2
	ret m			;94a3
	ret m			;94a4
	call m,0fcfch		;94a5
	call m,0ec0ch		;94a8
	ld a,0e6h		;94ab
	add a,03eh		;94ad
	and 0c6h		;94af
	ld h,a			;94b1
l94b2h:
	in a,(083h)		;94b2
	sbc a,h			;94b4
	sbc a,e			;94b5
	sub a			;94b6
	sbc a,h			;94b7
	sbc a,e			;94b8
	sub a			;94b9
	call c,0d7dbh		;94ba
	rst 38h			;94bd
	ld (hl),b		;94be
	ld (hl),b		;94bf
	rst 38h			;94c0
	ld a,a			;94c1
	ld a,a			;94c2
	ld a,h			;94c3
	cp e			;94c4
	scf			;94c5
	inc a			;94c6
	in a,(017h)		;94c7
	inc a			;94c9
	in a,(017h)		;94ca
	ld b,l			;94cc
	cp (hl)			;94cd
	ret nz			;94ce
	dec bc			;94cf
l94d0h:
	defb 0fdh,081h,08bh ;illegal sequence	;94d0
	ld a,l			;94d3
	add a,c			;94d4
	rst 38h			;94d5
	inc bc			;94d6
	inc bc			;94d7
	rst 38h			;94d8
	rst 38h			;94d9
l94dah:
	rst 38h			;94da
	rla			;94db
	ei			;94dc
	inc bc			;94dd
	rla			;94de
	ei			;94df
	inc bc			;94e0
	ld l,0f6h		;94e1
	ld b,0f7h		;94e3
	ld d,(hl)		;94e5
	sub l			;94e6
	ccf			;94e7
	sbc a,01dh		;94e8
	ld a,(hl)		;94ea
	defb 0ddh,01bh,07eh ;illegal sequence	;94eb
	defb 0ddh,01bh,07eh ;illegal sequence	;94ee
	defb 0ddh,01bh,07eh ;illegal sequence	;94f1
	defb 0ddh,01bh,07ch ;illegal sequence	;94f4
	in a,(017h)		;94f7
	ld a,h			;94f9
	in a,(017h)		;94fa
l94fch:
	ld a,h			;94fc
	in a,(017h)		;94fd
	ld a,h			;94ff
	in a,(017h)		;9500
l9502h:
	ld a,b			;9502
	rst 10h			;9503
	rrca			;9504
	rst 38h			;9505
	jr nz,$+34		;9506
	rst 38h			;9508
	rst 38h			;9509
	rst 38h			;950a
	jr nc,l94fch		;950b
	rra			;950d
	ld sp,01feeh		;950e
	jr nc,l9502h		;9511
	ld e,01ch		;9513
	ex de,hl		;9515
	rrca			;9516
	inc c			;9517
	rst 30h			;9518
	rlca			;9519
	inc c			;951a
	rst 30h			;951b
	rlca			;951c
	cp 00fh			;951d
	rrca			;951f
	cp 0ffh			;9520
	rst 38h			;9522
	cp 0f7h			;9523
	rlca			;9525
	call m,00fefh		;9526
	call m,00fefh		;9529
	inc bc			;952c
	rst 38h			;952d
	ret m			;952e
	inc bc			;952f
	rst 38h			;9530
	nop			;9531
	ld bc,000ffh		;9532
	nop			;9535
	rst 38h			;9536
	nop			;9537
	nop			;9538
	rst 38h			;9539
	nop			;953a
	rst 38h			;953b
	nop			;953c
	rst 38h			;953d
	nop			;953e
	cp 0ffh			;953f
	nop			;9541
	defb 0fdh,0feh,02eh ;illegal sequence	;9542
	or 006h			;9545
	ld l,0f6h		;9547
	ld b,05ch		;9549
	call pe,05c0ch		;954b
	call pe,05c0ch		;954e
	call pe,0b80ch		;9551
	ret c			;9554
	jr $-70			;9555
	ret c			;9557
	jr $-70			;9558
	ret c			;955a
	jr l957ah		;955b
	call pe,00e0bh		;955d
	or 005h			;9560
	ld c,0f6h		;9562
	dec b			;9564
	rlca			;9565
	ei			;9566
	ld (bc),a		;9567
	rst 38h			;9568
	rlca			;9569
	rlca			;956a
	rst 38h			;956b
	rst 38h			;956c
	rst 38h			;956d
	ld a,a			;956e
	rst 30h			;956f
	rlca			;9570
	defb 0fdh,0edh,00dh ;illegal sequence	;9571
	rrca			;9574
	cp 0e0h			;9575
	add a,a			;9577
	ld a,(hl)		;9578
	ret p			;9579
l957ah:
	add a,a			;957a
	ld a,a			;957b
	ret p			;957c
	ld b,e			;957d
	ccf			;957e
	ret m			;957f
	and c			;9580
	sbc a,a			;9581
	ld a,h			;9582
	and c			;9583
	sbc a,a			;9584
	ld a,h			;9585
	pop de			;9586
	adc a,0beh		;9587
	jp (hl)			;9589
	and 0deh		;958a
	call m,01fdbh		;958c
	call m,037bbh		;958f
	call m,037bbh		;9592
	call m,0777bh		;9595
	rst 38h			;9598
	ret p			;9599
	ret p			;959a
	rst 18h			;959b
	rst 18h			;959c
	rst 18h			;959d
	sbc a,h			;959e
	sbc a,e			;959f
	sub a			;95a0
	inc e			;95a1
	dec de			;95a2
	rla			;95a3
	inc e			;95a4
	dec de			;95a5
l95a6h:
	rla			;95a6
	inc e			;95a7
	dec de			;95a8
	rla			;95a9
	inc e			;95aa
	dec de			;95ab
	rla			;95ac
	dec de			;95ad
	inc e			;95ae
	ld d,01fh		;95af
	djnz l95c3h		;95b1
l95b3h:
	rra			;95b3
	rra			;95b4
	rra			;95b5
	rra			;95b6
	rra			;95b7
l95b8h:
	rra			;95b8
	nop			;95b9
l95bah:
	nop			;95ba
	nop			;95bb
	ret c			;95bc
	ret m			;95bd
	jr l95b8h		;95be
	ret c			;95c0
	jr l95b3h		;95c1
l95c3h:
	or b			;95c3
	jr nc,l95a6h		;95c4
	ld h,b			;95c6
	ld h,b			;95c7
	ret nz			;95c8
	ret nz			;95c9
	ret nz			;95ca
	add a,b			;95cb
	add a,b			;95cc
	add a,b			;95cd
	nop			;95ce
	nop			;95cf
	nop			;95d0
	nop			;95d1
	nop			;95d2
	nop			;95d3
	rst 38h			;95d4
	ld a,e			;95d5
	inc bc			;95d6
	cp 076h			;95d7
	ld b,07ch		;95d9
	xor h			;95db
l95dch:
	inc c			;95dc
	ld a,h			;95dd
	xor h			;95de
	inc c			;95df
	jr c,l95bah		;95e0
	jr l95dch		;95e2
	ret m			;95e4
	ret m			;95e5
	ret p			;95e6
	ret p			;95e7
	ret p			;95e8
	nop			;95e9
	nop			;95ea
	nop			;95eb
	nop			;95ec
	nop			;95ed
	nop			;95ee
	nop			;95ef
	nop			;95f0
	nop			;95f1
	rst 38h			;95f2
	rst 38h			;95f3
	rst 38h			;95f4
	rst 38h			;95f5
	rst 38h			;95f6
	rst 38h			;95f7
	rst 38h			;95f8
	nop			;95f9
	rst 38h			;95fa
	nop			;95fb
	rst 38h			;95fc
	rst 38h			;95fd
	nop			;95fe
	rst 38h			;95ff
	rst 38h			;9600
	nop			;9601
	rst 38h			;9602
	rst 38h			;9603
	rst 38h			;9604
	rst 38h			;9605
	nop			;9606
	rst 38h			;9607
	rst 38h			;9608
	nop			;9609
	rst 38h			;960a
	nop			;960b
	nop			;960c
	rst 38h			;960d
	rst 38h			;960e
	rst 38h			;960f
	rst 38h			;9610
	rst 38h			;9611
	rst 38h			;9612
	rst 38h			;9613
	rst 38h			;9614
	rst 38h			;9615
	rst 38h			;9616
	nop			;9617
	rst 38h			;9618
	rst 38h			;9619
	nop			;961a
	rst 38h			;961b
	nop			;961c
	rst 38h			;961d
	rst 38h			;961e
	nop			;961f
	rst 38h			;9620
	nop			;9621
	nop			;9622
	rst 38h			;9623
l9624h:
	nop			;9624
	nop			;9625
	rst 38h			;9626
	nop			;9627
	nop			;9628
	rst 38h			;9629
	nop			;962a
	rst 38h			;962b
	nop			;962c
	rst 38h			;962d
	nop			;962e
	rst 38h			;962f
	rst 38h			;9630
	nop			;9631
	rst 38h			;9632
	rst 38h			;9633
	nop			;9634
	rst 38h			;9635
	rst 38h			;9636
	nop			;9637
	rst 38h			;9638
	nop			;9639
	nop			;963a
	rst 38h			;963b
	nop			;963c
	nop			;963d
	rst 38h			;963e
	nop			;963f
	nop			;9640
	rst 38h			;9641
	nop			;9642
	rst 38h			;9643
	rst 38h			;9644
	rst 38h			;9645
	rst 38h			;9646
	rst 38h			;9647
	rst 38h			;9648
	nop			;9649
	nop			;964a
	nop			;964b
	nop			;964c
	rst 38h			;964d
	rst 38h			;964e
	nop			;964f
	rst 38h			;9650
	rst 38h			;9651
	djnz l9624h		;9652
	xor a			;9654
	ld l,c			;9655
	ret pe			;9656
	ld (hl),037h		;9657
	sub h			;9659
	ld a,b			;965a
	dec sp			;965b
	adc a,b			;965c
	ld a,h			;965d
	rst 38h			;965e
	sub h			;965f
	ld (hl),h		;9660
	ld a,a			;9661
	inc d			;9662
	call p,00000h		;9663
	nop			;9666
	nop			;9667
	nop			;9668
	nop			;9669
	nop			;966a
	rra			;966b
	rra			;966c
	nop			;966d
	rra			;966e
	rra			;966f
	ld (bc),a		;9670
	ld a,(00d35h)		;9671
	ld a,l			;9674
	ld h,(hl)		;9675
	ld b,072h		;9676
	ld l,a			;9678
	rra			;9679
	pop af			;967a
	rst 8			;967b
	rlca			;967c
	inc a			;967d
	inc sp			;967e
	inc bc			;967f
	jr c,l96b9h		;9680
	inc bc			;9682
	jr c,l96bch		;9683
	rrca			;9685
	ld a,b			;9686
	ld h,a			;9687
	rlca			;9688
	ld (hl),b		;9689
	ld l,a			;968a
	rra			;968b
	pop af			;968c
	rst 8			;968d
	rrca			;968e
	pop hl			;968f
	rst 18h			;9690
	ld c,0e0h		;9691
	rst 18h			;9693
	rlca			;9694
	ld (hl),b		;9695
	ld l,a			;9696
	rlca			;9697
	ld (hl),b		;9698
	ld l,a			;9699
	rra			;969a
	pop af			;969b
	rst 8			;969c
	ld c,0e0h		;969d
	rst 18h			;969f
	ccf			;96a0
	jp po,01f9eh		;96a1
	jp nz,01dbeh		;96a4
	ret nz			;96a7
	cp (hl)			;96a8
	ld a,a			;96a9
	call nz,01f3ch		;96aa
l96adh:
	ret nz			;96ad
	cp (hl)			;96ae
	rra			;96af
	jp nz,01fbeh		;96b0
	ret nz			;96b3
	cp (hl)			;96b4
	rra			;96b5
	jp nz,01fbeh		;96b6
l96b9h:
	ret nz			;96b9
	cp (hl)			;96ba
	rra			;96bb
l96bch:
	jp nz,01fbeh		;96bc
	ret nz			;96bf
	cp (hl)			;96c0
	rra			;96c1
	jp nz,000beh		;96c2
	ld bc,00001h		;96c5
	rra			;96c8
	rra			;96c9
	nop			;96ca
	cp 0ffh			;96cb
	nop			;96cd
	ret po			;96ce
	rst 38h			;96cf
	add a,c			;96d0
	add a,b			;96d1
	ld a,(hl)		;96d2
	di			;96d3
	ld (hl),b		;96d4
	adc a,h			;96d5
	ld a,a			;96d6
	ld a,b			;96d7
	ret po			;96d8
	cp 011h			;96d9
	ret p			;96db
	nop			;96dc
	ld bc,00001h		;96dd
	rra			;96e0
	rra			;96e1
	nop			;96e2
	ld e,01fh		;96e3
	inc bc			;96e5
	dec de			;96e6
	inc d			;96e7
	inc bc			;96e8
	add hl,de		;96e9
	rla			;96ea
	inc bc			;96eb
	jr l9705h		;96ec
	inc bc			;96ee
	jr l9708h		;96ef
	inc bc			;96f1
	jr l970bh		;96f2
	nop			;96f4
	cp 0ffh			;96f5
	nop			;96f7
	ret p			;96f8
	rst 38h			;96f9
	ld hl,l9ee0h		;96fa
	add hl,sp		;96fd
	ret c			;96fe
	and (hl)		;96ff
	ccf			;9700
	adc a,0b8h		;9701
	dec sp			;9703
	sub (hl)		;9704
l9705h:
	ld (hl),d		;9705
	dec sp			;9706
	sub h			;9707
l9708h:
	ld (hl),d		;9708
	dec sp			;9709
	sub (hl)		;970a
l970bh:
	ld (hl),d		;970b
	pop af			;970c
	inc c			;970d
	add a,e			;970e
	di			;970f
	adc a,b			;9710
	add a,a			;9711
	di			;9712
	ex af,af'		;9713
	add a,a			;9714
	jp p,08788h		;9715
	di			;9718
	ex af,af'		;9719
	add a,(hl)		;971a
	push hl			;971b
	sub b			;971c
	adc a,(hl)		;971d
	rst 20h			;971e
	djnz l96adh		;971f
	rst 20h			;9721
	sub b			;9722
	adc a,h			;9723
	sbc a,a			;9724
	ld b,d			;9725
	ld a,09dh		;9726
	ld b,b			;9728
	ld a,09fh		;9729
	ld b,b			;972b
	inc a			;972c
	sbc a,a			;972d
l972eh:
	ld b,h			;972e
	inc a			;972f
	sbc a,e			;9730
	ld b,b			;9731
	inc a			;9732
	ccf			;9733
	add a,b			;9734
	ld a,b			;9735
	ccf			;9736
	adc a,b			;9737
	ld a,b			;9738
	scf			;9739
	add a,b			;973a
	ld a,b			;973b
	ld a,a			;973c
	djnz $+1		;973d
	ccf			;973f
	nop			;9740
	ret po			;9741
	ld a,a			;9742
	nop			;9743
	ret nz			;9744
	ld a,a			;9745
	nop			;9746
	add a,b			;9747
	rst 38h			;9748
	nop			;9749
	nop			;974a
	nop			;974b
	rst 38h			;974c
	rst 38h			;974d
	nop			;974e
	rst 38h			;974f
	rst 38h			;9750
	nop			;9751
	nop			;9752
	nop			;9753
	cp 005h			;9754
	call m,003fch		;9756
	nop			;9759
	cp 001h			;975a
	nop			;975c
	rst 38h			;975d
	nop			;975e
	nop			;975f
	rst 38h			;9760
	nop			;9761
	nop			;9762
	nop			;9763
	rst 38h			;9764
	rst 38h			;9765
	nop			;9766
	rst 38h			;9767
	rst 38h			;9768
	nop			;9769
	nop			;976a
	nop			;976b
	ld a,a			;976c
	djnz $+1		;976d
	ld a,a			;976f
	nop			;9770
	ret po			;9771
	ld a,a			;9772
	nop			;9773
	ret nz			;9774
	ld a,a			;9775
	nop			;9776
	add a,b			;9777
	rst 38h			;9778
	nop			;9779
	nop			;977a
	nop			;977b
	nop			;977c
	rst 38h			;977d
	ld a,a			;977e
	nop			;977f
	rst 38h			;9780
	ccf			;9781
	nop			;9782
	rst 38h			;9783
	nop			;9784
	nop			;9785
	nop			;9786
	nop			;9787
	nop			;9788
	nop			;9789
	nop			;978a
	rst 38h			;978b
	rst 38h			;978c
	nop			;978d
	rst 38h			;978e
	rst 38h			;978f
	add a,b			;9790
	add a,b			;9791
	ld a,a			;9792
	ld a,a			;9793
	nop			;9794
	rst 38h			;9795
	ccf			;9796
	nop			;9797
	rst 38h			;9798
	ld a,a			;9799
	rrca			;979a
	rst 38h			;979b
	nop			;979c
	nop			;979d
	nop			;979e
	nop			;979f
	nop			;97a0
	nop			;97a1
	nop			;97a2
	rst 38h			;97a3
	rst 38h			;97a4
	nop			;97a5
	rst 38h			;97a6
	rst 38h			;97a7
	nop			;97a8
	nop			;97a9
	rst 38h			;97aa
	rst 38h			;97ab
	nop			;97ac
	rst 38h			;97ad
	rst 38h			;97ae
	nop			;97af
	rst 38h			;97b0
	rst 38h			;97b1
	rst 38h			;97b2
	rst 38h			;97b3
	nop			;97b4
	nop			;97b5
	nop			;97b6
	nop			;97b7
	nop			;97b8
	nop			;97b9
	nop			;97ba
	rst 38h			;97bb
	rst 38h			;97bc
	nop			;97bd
	rst 38h			;97be
	rst 38h			;97bf
	ld bc,0fe01h		;97c0
	rst 38h			;97c3
	ld (bc),a		;97c4
	call m,004ffh		;97c5
	ret m			;97c8
	rst 38h			;97c9
	ret m			;97ca
	ret p			;97cb
	rrca			;97cc
	pop hl			;97cd
	rst 18h			;97ce
	rrca			;97cf
	ret po			;97d0
	rst 18h			;97d1
	rlca			;97d2
	ld (hl),b		;97d3
	ld l,a			;97d4
	dec b			;97d5
	jr c,l980eh		;97d6
	rlca			;97d8
	jr l97f3h		;97d9
	nop			;97db
	rra			;97dc
	rra			;97dd
	nop			;97de
	rrca			;97df
	rrca			;97e0
	nop			;97e1
	nop			;97e2
	nop			;97e3
	ccf			;97e4
	jp po,01f9eh		;97e5
	ret z			;97e8
	cp h			;97e9
	ccf			;97ea
	add a,b			;97eb
	ld (hl),b		;97ec
	ld a,b			;97ed
	add a,a			;97ee
	ld b,a			;97ef
	ret nz			;97f0
	inc a			;97f1
	inc a			;97f2
l97f3h:
	nop			;97f3
	ret po			;97f4
l97f5h:
	ret po			;97f5
	nop			;97f6
	nop			;97f7
	nop			;97f8
	nop			;97f9
	nop			;97fa
	nop			;97fb
	ld (hl),b		;97fc
	rra			;97fd
l97feh:
	ret p			;97fe
	ld a,h			;97ff
	inc de			;9800
	ret p			;9801
	ld a,a			;9802
	djnz l97f5h		;9803
	rst 38h			;9805
	nop			;9806
	nop			;9807
	nop			;9808
	rst 38h			;9809
	rst 38h			;980a
l980bh:
	ld a,a			;980b
	djnz l97feh		;980c
l980eh:
	ld a,h			;980e
	djnz $-11		;980f
	ld a,b			;9811
	djnz l980bh		;9812
	rst 38h			;9814
	rst 38h			;9815
	rst 38h			;9816
	nop			;9817
	rst 38h			;9818
	nop			;9819
	nop			;981a
	rst 38h			;981b
	nop			;981c
	rst 38h			;981d
	nop			;981e
	nop			;981f
	nop			;9820
	rst 38h			;9821
	rst 38h			;9822
	nop			;9823
	rst 38h			;9824
	rst 38h			;9825
	nop			;9826
	rst 38h			;9827
	rst 38h			;9828
	nop			;9829
	nop			;982a
	rst 38h			;982b
	nop			;982c
	rst 38h			;982d
	rst 38h			;982e
	nop			;982f
	rst 38h			;9830
	rst 38h			;9831
	add a,b			;9832
	ld a,(hl)		;9833
	ld a,a			;9834
	ld b,c			;9835
	cp a			;9836
	ld bc,00181h		;9837
	ld a,(hl)		;983a
	add a,c			;983b
	ld bc,0007eh		;983c
	nop			;983f
	rst 38h			;9840
	rst 38h			;9841
	nop			;9842
	rst 38h			;9843
	ld a,b			;9844
	rlca			;9845
	ret p			;9846
	ld (hl),b		;9847
	cpl			;9848
	ret po			;9849
	ret p			;984a
	rrca			;984b
	ret po			;984c
	ret po			;984d
	ld e,a			;984e
	ret nz			;984f
	pop bc			;9850
	cp (hl)			;9851
	add a,b			;9852
	pop bc			;9853
	cp (hl)			;9854
	add a,b			;9855
	add a,d			;9856
	ld a,l			;9857
l9858h:
	ld bc,07b84h		;9858
	inc bc			;985b
	ld a,a			;985c
	rrca			;985d
	rst 38h			;985e
	ld (hl),b		;985f
	rra			;9860
l9861h:
	ret p			;9861
	ld a,h			;9862
	inc de			;9863
	ret p			;9864
	ld a,a			;9865
	djnz l9858h		;9866
	rst 38h			;9868
	nop			;9869
	nop			;986a
	nop			;986b
	rst 38h			;986c
	rst 38h			;986d
	ld a,a			;986e
	djnz l9861h		;986f
	ld a,h			;9871
	djnz $-11		;9872
	rla			;9874
	jp p,017efh		;9875
	pop af			;9878
	rst 28h			;9879
	rla			;987a
	ld (hl),c		;987b
	ld l,a			;987c
	rla			;987d
	ld (hl),b		;987e
	ld l,a			;987f
	rla			;9880
	ld (hl),b		;9881
	ld l,a			;9882
	dec d			;9883
	ld (hl),b		;9884
	ld l,(hl)		;9885
	rra			;9886
	ld h,b			;9887
	ld h,b			;9888
	nop			;9889
	ld a,a			;988a
	ld a,a			;988b
	cp 011h			;988c
	jp p,003eeh		;988e
	jp p,021fah		;9891
	and 0ffh		;9894
	nop			;9896
	nop			;9897
	nop			;9898
	rst 38h			;9899
	rst 38h			;989a
	jp c,0c66bh		;989b
	sbc a,d			;989e
	add hl,hl		;989f
	add a,08eh		;98a0
	ei			;98a2
	add a,(hl)		;98a3
	ld (hl),h		;98a4
	dec bc			;98a5
	call p,03fe4h		;98a6
	call po,01be4h		;98a9
	call po,000ffh		;98ac
	nop			;98af
	nop			;98b0
	rst 38h			;98b1
	rst 38h			;98b2
	adc a,h			;98b3
	rst 38h			;98b4
	add a,h			;98b5
	sbc a,h			;98b6
	ld (hl),e		;98b7
	adc a,h			;98b8
	inc e			;98b9
	rst 30h			;98ba
	inc c			;98bb
	rrca			;98bc
	pop hl			;98bd
	rst 38h			;98be
	ld e,a			;98bf
	jp nz,05ebfh		;98c0
	pop bc			;98c3
	cp (hl)			;98c4
	ld a,a			;98c5
	add a,b			;98c6
	add a,b			;98c7
	nop			;98c8
	rst 38h			;98c9
	rst 38h			;98ca
	ld e,(hl)		;98cb
	jp 05ebeh		;98cc
	pop bc			;98cf
	cp (hl)			;98d0
	ld e,(hl)		;98d1
	jp 05ebeh		;98d2
	pop bc			;98d5
	cp (hl)			;98d6
	ld e,(hl)		;98d7
	jp 05ebeh		;98d8
	pop bc			;98db
	cp (hl)			;98dc
	ld e,(hl)		;98dd
	jp 07fbeh		;98de
	add a,b			;98e1
	add a,b			;98e2
	nop			;98e3
	rst 38h			;98e4
	rst 38h			;98e5
	ld e,(hl)		;98e6
	jp 05ebeh		;98e7
	pop bc			;98ea
	cp (hl)			;98eb
	rst 0			;98ec
	inc a			;98ed
	jp 07cc5h		;98ee
	jp 03ce5h		;98f1
	ex (sp),hl		;98f4
	push af			;98f5
	inc c			;98f6
	di			;98f7
	rst 38h			;98f8
	nop			;98f9
	nop			;98fa
	nop			;98fb
	rst 38h			;98fc
	rst 38h			;98fd
	cp l			;98fe
	add a,d			;98ff
	ld a,l			;9900
	ld e,(hl)		;9901
	jp l88beh		;9902
	rst 38h			;9905
	add a,e			;9906
	adc a,l			;9907
	cp 080h			;9908
	adc a,l			;990a
	ld a,(hl)		;990b
	add a,b			;990c
	cp 001h			;990d
	ld bc,0ff00h		;990f
	rst 38h			;9912
	adc a,l			;9913
	cp 080h			;9914
	adc a,l			;9916
	ld a,(hl)		;9917
	add a,b			;9918
	adc a,l			;9919
	cp 080h			;991a
	sub l			;991c
	ei			;991d
	add a,d			;991e
	sub l			;991f
	ei			;9920
	add a,d			;9921
	sub l			;9922
	ei			;9923
	add a,d			;9924
	ld sp,hl		;9925
	ld b,006h		;9926
	nop			;9928
	rst 38h			;9929
	rst 38h			;992a
	sub l			;992b
	ei			;992c
	add a,d			;992d
	sub l			;992e
	ld a,e			;992f
	add a,d			;9930
	sub l			;9931
	ei			;9932
	add a,d			;9933
	sub l			;9934
	ld a,e			;9935
	add a,d			;9936
	sub l			;9937
	ei			;9938
	add a,d			;9939
	sub l			;993a
	ld a,e			;993b
	add a,d			;993c
	sub l			;993d
	ei			;993e
	add a,d			;993f
	sub l			;9940
	ld a,e			;9941
	add a,d			;9942
	sub l			;9943
	ei			;9944
	add a,d			;9945
	sub l			;9946
	ld a,e			;9947
	add a,d			;9948
	sub l			;9949
	ei			;994a
	add a,d			;994b
	adc a,l			;994c
	ld a,(hl)		;994d
	add a,b			;994e
	adc a,l			;994f
	cp 080h			;9950
	adc a,l			;9952
	ld a,(hl)		;9953
	add a,b			;9954
	adc a,l			;9955
	cp 080h			;9956
	cp 001h			;9958
	ld bc,0ff00h		;995a
	rst 38h			;995d
	adc a,l			;995e
	ld a,(hl)		;995f
	add a,b			;9960
	adc a,l			;9961
	cp 080h			;9962
	sub l			;9964
	ld a,e			;9965
	add a,d			;9966
	sub l			;9967
	ei			;9968
	add a,d			;9969
	sub l			;996a
	ld a,e			;996b
	add a,d			;996c
	sub l			;996d
	ei			;996e
	add a,d			;996f
	ld sp,hl		;9970
	ld b,006h		;9971
	nop			;9973
l9974h:
	rst 38h			;9974
	rst 38h			;9975
	sub l			;9976
	ei			;9977
	add a,d			;9978
	sub l			;9979
	ei			;997a
	add a,d			;997b
	jr z,l9974h		;997c
	ld b,014h		;997e
	ei			;9980
	inc bc			;9981
	adc a,d			;9982
	defb 0fdh,081h,0fch ;illegal sequence	;9983
	inc bc			;9986
	inc bc			;9987
	nop			;9988
	rst 38h			;9989
	rst 38h			;998a
	jp po,0e01fh		;998b
	pop hl			;998e
	ccf			;998f
	ret po			;9990
	ret p			;9991
	rrca			;9992
	ret p			;9993
	adc a,l			;9994
	ld a,(hl)		;9995
	add a,b			;9996
	call 080beh		;9997
	call sub_803eh		;999a
	pop af			;999d
	ld c,000h		;999e
	cp 001h			;99a0
	ld bc,0ff00h		;99a2
	rst 38h			;99a5
	nop			;99a6
	rst 38h			;99a7
	rst 38h			;99a8
	nop			;99a9
	nop			;99aa
	nop			;99ab
	adc a,(hl)		;99ac
	ld sp,hl		;99ad
	add a,(hl)		;99ae
	ld c,07bh		;99af
	add a,(hl)		;99b1
	ld d,0f1h		;99b2
	ld c,016h		;99b4
	di			;99b6
	ld c,016h		;99b7
	pop af			;99b9
	ld c,016h		;99ba
	di			;99bc
	ld c,016h		;99bd
	pop hl			;99bf
	ld c,036h		;99c0
	jp 01c0eh		;99c2
	di			;99c5
	inc c			;99c6
	ld c,h			;99c7
	rst 20h			;99c8
	inc e			;99c9
	ld c,h			;99ca
	ex (sp),hl		;99cb
sub_99cch:
	inc e			;99cc
	ld c,h			;99cd
	rst 20h			;99ce
	inc e			;99cf
	xor h			;99d0
	jp 0ac1ch		;99d1
	rst 0			;99d4
	inc e			;99d5
	xor h			;99d6
	jp 0ac1ch		;99d7
	rst 0			;99da
	inc e			;99db
	ld (hl),b		;99dc
sub_99ddh:
	rra			;99dd
	ret p			;99de
	ld a,b			;99df
	rrca			;99e0
	ret m			;99e1
	ld a,h			;99e2
	add a,e			;99e3
	ld a,h			;99e4
	inc a			;99e5
	add a,a			;99e6
	ld a,h			;99e7
	ld a,083h		;99e8
	ld a,(hl)		;99ea
	ld e,a			;99eb
	ret nz			;99ec
	ccf			;99ed
	ld l,a			;99ee
	pop hl			;99ef
	rra			;99f0
	ld (hl),a		;99f1
	ret nc			;99f2
	rrca			;99f3
	pop bc			;99f4
	inc e			;99f5
	ex (sp),hl		;99f6
	pop bc			;99f7
	ld a,h			;99f8
	jp 03c89h		;99f9
	jp 0f895h		;99fc
	add a,e			;99ff
	dec d			;9a00
	ld a,b			;9a01
	add a,e			;9a02
	add hl,hl		;9a03
	call p,02907h		;9a04
	call p,05107h		;9a07
	call pe,0a60fh		;9a0a
	pop de			;9a0d
	ld e,0a6h		;9a0e
	out (01eh),a		;9a10
	ld b,(hl)		;9a12
	or c			;9a13
	ld a,046h		;9a14
	or e			;9a16
	ld a,0cfh		;9a17
	jr nc,l9a4bh		;9a19
	nop			;9a1b
	rst 38h			;9a1c
	rst 38h			;9a1d
	add a,a			;9a1e
	ld (hl),c		;9a1f
	ld a,(hl)		;9a20
	add a,(hl)		;9a21
	ld (hl),b		;9a22
	ld a,a			;9a23
	adc a,l			;9a24
	ld a,(hl)		;9a25
	add a,b			;9a26
	adc a,l			;9a27
	cp 080h			;9a28
	adc a,l			;9a2a
	ld a,(hl)		;9a2b
	add a,b			;9a2c
	adc a,l			;9a2d
	cp 080h			;9a2e
	adc a,l			;9a30
	ld a,(hl)		;9a31
	add a,b			;9a32
	adc a,l			;9a33
	cp 080h			;9a34
	adc a,l			;9a36
	ld a,(hl)		;9a37
	add a,b			;9a38
	adc a,l			;9a39
	cp 080h			;9a3a
	ld l,e			;9a3c
	ret c			;9a3d
	rla			;9a3e
	ld l,e			;9a3f
	ret c			;9a40
	rla			;9a41
	ld h,l			;9a42
	call c,0621bh		;9a43
	sbc a,01dh		;9a46
	jp 03c3ch		;9a48
l9a4bh:
	nop			;9a4b
	rst 30h			;9a4c
	rst 30h			;9a4d
	ld h,b			;9a4e
	out (013h),a		;9a4f
	ld h,b			;9a51
	pop de			;9a52
	ld de,07ec5h		;9a53
	ret nz			;9a56
	push bc			;9a57
	ld a,(hl)		;9a58
	ret nz			;9a59
	adc a,d			;9a5a
	dec a			;9a5b
	pop bc			;9a5c
	adc a,d			;9a5d
	defb 0fdh,081h,00ah ;illegal sequence	;9a5e
	ld a,l			;9a61
	add a,c			;9a62
	inc d			;9a63
	ei			;9a64
	inc bc			;9a65
	inc d			;9a66
	jp m,02802h		;9a67
	or 006h			;9a6a
	push bc			;9a6c
	ld e,(hl)		;9a6d
	ret po			;9a6e
	jp z,0c17dh		;9a6f
	adc a,d			;9a72
	cp l			;9a73
	pop bc			;9a74
	call p,0030bh		;9a75
	call m,00202h		;9a78
	nop			;9a7b
	cp 0feh			;9a7c
	nop			;9a7e
	call m,000fch		;9a7f
	nop			;9a82
	nop			;9a83
	ld e,(hl)		;9a84
	jp 05ebeh		;9a85
	pop bc			;9a88
	cp (hl)			;9a89
	ld e,h			;9a8a
	pop bc			;9a8b
	cp (hl)			;9a8c
	ld d,a			;9a8d
	ret nz			;9a8e
	cp b			;9a8f
	ld a,a			;9a90
	add a,b			;9a91
	add a,b			;9a92
	nop			;9a93
	rst 38h			;9a94
	rst 38h			;9a95
	nop			;9a96
	rst 38h			;9a97
	rst 38h			;9a98
	nop			;9a99
	nop			;9a9a
	nop			;9a9b
	sub l			;9a9c
	ei			;9a9d
	add a,d			;9a9e
	sub l			;9a9f
	ei			;9aa0
	add a,d			;9aa1
	dec d			;9aa2
	ld a,e			;9aa3
	add a,d			;9aa4
	push hl			;9aa5
	dec de			;9aa6
	ld (bc),a		;9aa7
	ld sp,hl		;9aa8
	rlca			;9aa9
	ld b,000h		;9aaa
	rst 38h			;9aac
	rst 38h			;9aad
	nop			;9aae
	rst 38h			;9aaf
	rst 38h			;9ab0
	nop			;9ab1
	nop			;9ab2
	nop			;9ab3
	pop af			;9ab4
	rra			;9ab5
	ret p			;9ab6
	pop hl			;9ab7
	rrca			;9ab8
	ret p			;9ab9
	jp po,0e01fh		;9aba
	jp po,0e03fh		;9abd
	jp po,0e03fh		;9ac0
	jp nz,0e01fh		;9ac3
	push bc			;9ac6
	ld a,0c0h		;9ac7
	push bc			;9ac9
	ld a,(hl)		;9aca
	ret nz			;9acb
	cpl			;9acc
	pop hl			;9acd
	rst 18h			;9ace
	ld l,0e3h		;9acf
	sbc a,05fh		;9ad1
	jp 0bfbeh		;9ad3
	add a,h			;9ad6
	ld a,h			;9ad7
	cp a			;9ad8
	add a,h			;9ad9
	ld a,h			;9ada
	ld a,h			;9adb
	dec bc			;9adc
	ret m			;9add
	ret m			;9ade
	rla			;9adf
	ret p			;9ae0
	ld sp,hl		;9ae1
	ld d,0f0h		;9ae2
	rst 38h			;9ae4
	rst 38h			;9ae5
	rst 38h			;9ae6
	nop			;9ae7
	rst 38h			;9ae8
	nop			;9ae9
	rst 38h			;9aea
	rst 38h			;9aeb
	nop			;9aec
	rst 38h			;9aed
	cp 000h			;9aee
	rst 38h			;9af0
	cp 000h			;9af1
	cp 07ch			;9af3
	ld bc,000feh		;9af5
	ld bc,0fe01h		;9af8
	cp 071h			;9afb
	rrca			;9afd
	ret p			;9afe
	ld (hl),c		;9aff
	rra			;9b00
	ret p			;9b01
	ld h,c			;9b02
	rrca			;9b03
	ret p			;9b04
	ret po			;9b05
	ccf			;9b06
	ret po			;9b07
	rst 38h			;9b08
	nop			;9b09
	nop			;9b0a
	nop			;9b0b
	rst 38h			;9b0c
	rst 38h			;9b0d
	jp nz,0c07fh		;9b0e
	pop bc			;9b11
	cp (hl)			;9b12
	ret nz			;9b13
	jp nz,l81bdh		;9b14
	ld b,d			;9b17
	cp l			;9b18
	ld bc,03ec1h		;9b19
	nop			;9b1c
	ld h,b			;9b1d
	rra			;9b1e
	ret nz			;9b1f
	ld h,b			;9b20
	rra			;9b21
	ret nz			;9b22
	jr nc,l9b34h		;9b23
	ret po			;9b25
	jr l9b2fh		;9b26
	ret p			;9b28
	jr l9b32h		;9b29
	ret p			;9b2b
	adc a,h			;9b2c
	ld a,e			;9b2d
	add a,e			;9b2e
l9b2fh:
	adc a,l			;9b2f
	ei			;9b30
	add a,d			;9b31
l9b32h:
	adc a,l			;9b32
	ld a,e			;9b33
l9b34h:
	add a,d			;9b34
	ld sp,hl		;9b35
	ld b,006h		;9b36
	nop			;9b38
	rst 38h			;9b39
	rst 38h			;9b3a
	adc a,(hl)		;9b3b
	jp m,l8d81h		;9b3c
	ld a,h			;9b3f
	add a,e			;9b40
	adc a,l			;9b41
	call m,0b683h		;9b42
	adc a,c			;9b45
	halt			;9b46
	ld l,(hl)		;9b47
	dec sp			;9b48
	and 06eh		;9b49
	add hl,de		;9b4b
	and 0ffh		;9b4c
	nop			;9b4e
	nop			;9b4f
	nop			;9b50
	rst 38h			;9b51
	rst 38h			;9b52
	adc a,(hl)		;9b53
	dec sp			;9b54
	add a,086h		;9b55
	ld (hl),c		;9b57
	adc a,(hl)		;9b58
	add a,(hl)		;9b59
	ld (hl),e		;9b5a
	adc a,(hl)		;9b5b
	inc c			;9b5c
	inc bc			;9b5d
	ret m			;9b5e
	add a,(hl)		;9b5f
	ld bc,0067ch		;9b60
	add a,c			;9b63
	call m,sub_807fh	;9b64
	add a,b			;9b67
	nop			;9b68
	rst 38h			;9b69
	rst 38h			;9b6a
	rra			;9b6b
	push bc			;9b6c
	call m,0833fh		;9b6d
	ret m			;9b70
	ccf			;9b71
	adc a,e			;9b72
	ret m			;9b73
	pop af			;9b74
	ld l,0e0h		;9b75
	jp po,0c15dh		;9b77
	jp po,0c15dh		;9b7a
	call m,00303h		;9b7d
	nop			;9b80
	rst 38h			;9b81
	rst 38h			;9b82
	add a,h			;9b83
	ld a,e			;9b84
	add a,e			;9b85
	sbc a,03dh		;9b86
	pop bc			;9b88
	sbc a,03dh		;9b89
	pop bc			;9b8b
	add a,l			;9b8c
	cp 080h			;9b8d
	add a,l			;9b8f
	ld a,(hl)		;9b90
	add a,b			;9b91
	adc a,d			;9b92
	ld a,l			;9b93
	add a,c			;9b94
	ld a,(bc)		;9b95
	defb 0fdh,001h,00ah ;illegal sequence	;9b96
	defb 0fdh,001h,0e4h ;illegal sequence	;9b99
	dec de			;9b9c
	inc bc			;9b9d
	ret m			;9b9e
	rlca			;9b9f
	rlca			;9ba0
	nop			;9ba1
	cp 0feh			;9ba2
	sub d			;9ba4
	ld a,l			;9ba5
	add a,c			;9ba6
	sub d			;9ba7
	defb 0fdh,081h,012h ;illegal sequence	;9ba8
	ld a,l			;9bab
	add a,c			;9bac
	call p,0030bh		;9bad
	ret m			;9bb0
	ld b,006h		;9bb1
	nop			;9bb3
	cp 0feh			;9bb4
	nop			;9bb6
	call m,000fch		;9bb7
	nop			;9bba
	nop			;9bbb
	ld e,a			;9bbc
	pop bc			;9bbd
	cp a			;9bbe
	ld e,a			;9bbf
	jp nz,05ebfh		;9bc0
	pop bc			;9bc3
	cp (hl)			;9bc4
	ld a,a			;9bc5
	add a,b			;9bc6
	add a,b			;9bc7
	nop			;9bc8
	rst 38h			;9bc9
	rst 38h			;9bca
	ld e,(hl)		;9bcb
	jp 05ebeh		;9bcc
	pop bc			;9bcf
	cp (hl)			;9bd0
	ld e,(hl)		;9bd1
	jp 00bbeh		;9bd2
	jr l9beeh		;9bd5
	dec bc			;9bd7
	jr l9bf1h		;9bd8
	dec bc			;9bda
	sbc a,b			;9bdb
	sub a			;9bdc
	rrca			;9bdd
	ret nc			;9bde
	ret nc			;9bdf
	nop			;9be0
	rst 38h			;9be1
	rst 38h			;9be2
	adc a,e			;9be3
	ld a,b			;9be4
	ld (hl),a		;9be5
	ld c,e			;9be6
	cp b			;9be7
	scf			;9be8
	xor e			;9be9
	ret c			;9bea
	rla			;9beb
	nop			;9bec
	rst 38h			;9bed
l9beeh:
	rst 38h			;9bee
	ex af,af'		;9bef
	ret z			;9bf0
l9bf1h:
	or a			;9bf1
	inc d			;9bf2
	call nc,07bbbh		;9bf3
	jp z,03d3ch		;9bf6
	add a,h			;9bf9
	ld a,(hl)		;9bfa
	ei			;9bfb
	adc a,d			;9bfc
	ld a,d			;9bfd
	ld a,e			;9bfe
	ld a,(bc)		;9bff
	jp m,00273h		;9c00
	jp m,02fc0h		;9c03
	ld c,0c1h		;9c06
	cpl			;9c08
	inc c			;9c09
	ret nz			;9c0a
	ld l,00dh		;9c0b
	nop			;9c0d
	inc e			;9c0e
	inc e			;9c0f
	nop			;9c10
	rst 38h			;9c11
	rst 38h			;9c12
	pop bc			;9c13
	inc l			;9c14
	dec bc			;9c15
	rst 0			;9c16
	inc l			;9c17
	inc bc			;9c18
	jp 00729h		;9c19
	dec c			;9c1c
	ret po			;9c1d
	sbc a,03eh		;9c1e
	push hl			;9c20
	sbc a,h			;9c21
	ld a,(de)		;9c22
	pop bc			;9c23
	cp h			;9c24
	nop			;9c25
	add a,b			;9c26
	add a,b			;9c27
	nop			;9c28
	rst 38h			;9c29
	rst 38h			;9c2a
	ld a,l			;9c2b
	ld (de),a		;9c2c
	pop af			;9c2d
	ld l,a			;9c2e
	ld (bc),a		;9c2f
	pop af			;9c30
	defb 0fdh,020h,0e3h ;illegal sequence	;9c31
	and b			;9c34
	ld c,(hl)		;9c35
	dec c			;9c36
	and e			;9c37
	ld c,(hl)		;9c38
l9c39h:
	add hl,bc		;9c39
	and c			;9c3a
	ld c,h			;9c3b
	dec bc			;9c3c
	add a,a			;9c3d
	ld e,h			;9c3e
	inc de			;9c3f
	add a,e			;9c40
	ld e,b			;9c41
	rla			;9c42
	adc a,a			;9c43
	add hl,sp		;9c44
	daa			;9c45
	add a,(hl)		;9c46
	jr nc,l9c78h		;9c47
	rra			;9c49
	ld (hl),d		;9c4a
	ld c,(hl)		;9c4b
	dec sp			;9c4c
	add a,b			;9c4d
	ld a,h			;9c4e
	rst 38h			;9c4f
	adc a,b			;9c50
	ld a,b			;9c51
	halt			;9c52
	ld bc,0fef8h		;9c53
	ld de,000f0h		;9c56
	nop			;9c59
	nop			;9c5a
	nop			;9c5b
	rst 38h			;9c5c
	rst 38h			;9c5d
	ld (0dde0h),iy		;9c5e
	ld (bc),a		;9c62
	ret po			;9c63
	adc a,a			;9c64
	jr nz,l9ca3h		;9c65
	adc a,(hl)		;9c67
	inc h			;9c68
	inc a			;9c69
	ld c,060h		;9c6a
	ld a,h			;9c6c
	ld c,065h		;9c6d
	ld a,l			;9c6f
	nop			;9c70
	ld h,e			;9c71
	ld h,e			;9c72
	nop			;9c73
	rst 38h			;9c74
	rst 38h			;9c75
	ex af,af'		;9c76
	ex (sp),hl		;9c77
l9c78h:
	jp m,0e701h		;9c78
	call p,0600dh		;9c7b
	ld e,(hl)		;9c7e
	ccf			;9c7f
	call po,0189ch		;9c80
l9c83h:
	ret nz			;9c83
	cp h			;9c84
	ld a,b			;9c85
	ret z			;9c86
	dec sp			;9c87
	nop			;9c88
	nop			;9c89
	nop			;9c8a
	nop			;9c8b
	rst 38h			;9c8c
	rst 38h			;9c8d
	ld l,b			;9c8e
	nop			;9c8f
	ret p			;9c90
	ret m			;9c91
	inc h			;9c92
	ret po			;9c93
	jp 00728h		;9c94
	rst 8			;9c97
	ld a,(0c706h)		;9c98
	jr nc,l9cabh		;9c9b
	rst 0			;9c9d
	inc (hl)		;9c9e
	inc c			;9c9f
	rst 0			;9ca0
	jr nc,$+14		;9ca1
l9ca3h:
	sbc a,a			;9ca3
	ld (hl),b		;9ca4
	ex af,af'		;9ca5
	adc a,a			;9ca6
	ld h,b			;9ca7
	jr l9c39h		;9ca8
	ld h,b			;9caa
l9cabh:
	jr l9cbch		;9cab
	call p,03f00h		;9cad
	adc a,000h		;9cb0
	ccf			;9cb2
	ccf			;9cb3
	nop			;9cb4
	nop			;9cb5
	ret nz			;9cb6
	ret nz			;9cb7
	nop			;9cb8
	rst 38h			;9cb9
	rst 38h			;9cba
	rra			;9cbb
l9cbch:
	pop bc			;9cbc
	rst 38h			;9cbd
	rra			;9cbe
	ld (bc),a		;9cbf
	cp 00eh			;9cc0
	dec b			;9cc2
	call m,0dc01h		;9cc3
	dec de			;9cc6
	inc bc			;9cc7
	cp b			;9cc8
	scf			;9cc9
	rlca			;9cca
	add hl,sp		;9ccb
	scf			;9ccc
	nop			;9ccd
	ld (hl),b		;9cce
	ld (hl),b		;9ccf
	nop			;9cd0
	rst 38h			;9cd1
	rst 38h			;9cd2
	adc a,e			;9cd3
	cp b			;9cd4
	daa			;9cd5
	push bc			;9cd6
	inc e			;9cd7
	inc de			;9cd8
	push bc			;9cd9
	inc e			;9cda
	inc de			;9cdb
	rst 38h			;9cdc
	call m,00ff8h		;9cdd
	call p,03f00h		;9ce0
	adc a,000h		;9ce3
	ccf			;9ce5
	ccf			;9ce6
	nop			;9ce7
	nop			;9ce8
	ret nz			;9ce9
	ret nz			;9cea
	nop			;9ceb
	rst 38h			;9cec
	rst 38h			;9ced
	rra			;9cee
	pop bc			;9cef
	rst 38h			;9cf0
	rra			;9cf1
	ld (bc),a		;9cf2
	cp 0ebh			;9cf3
	djnz l9c83h		;9cf5
	cp 091h			;9cf7
	adc a,b			;9cf9
	and 001h		;9cfa
	sbc a,b			;9cfc
	defb 0fdh,082h,090h ;illegal sequence	;9cfd
	ld b,b			;9d00
	nop			;9d01
	nop			;9d02
	nop			;9d03
	rst 38h			;9d04
	rst 38h			;9d05
	or (hl)			;9d06
	ex af,af'		;9d07
	ret nz			;9d08
	or (hl)			;9d09
	adc a,b			;9d0a
	ret nz			;9d0b
	ld d,a			;9d0c
	sub b			;9d0d
	ld c,097h		;9d0e
	ld (l972eh),a		;9d10
	jr nc,l9d43h		;9d13
	ld d,072h		;9d15
	ld l,a			;9d17
	nop			;9d18
	ret po			;9d19
	ret po			;9d1a
	nop			;9d1b
	rst 38h			;9d1c
	rst 38h			;9d1d
	ld d,0f2h		;9d1e
	rst 28h			;9d20
	rla			;9d21
	jp p,077efh		;9d22
	nop			;9d25
	adc a,(hl)		;9d26
	rst 30h			;9d27
	ld (de),a		;9d28
	ld c,0f7h		;9d29
	djnz l9d3bh		;9d2b
	rst 30h			;9d2d
	ld (de),a		;9d2e
	ld c,0f7h		;9d2f
	djnz l9d41h		;9d31
	rst 30h			;9d33
	ld (de),a		;9d34
	ld c,057h		;9d35
	sub b			;9d37
	ld c,057h		;9d38
	sub d			;9d3a
l9d3bh:
	ld c,000h		;9d3b
	nop			;9d3d
	nop			;9d3e
	nop			;9d3f
	nop			;9d40
l9d41h:
	nop			;9d41
	nop			;9d42
l9d43h:
	nop			;9d43
	sbc a,c			;9d44
	sbc a,c			;9d45
	sbc a,c			;9d46
	sbc a,c			;9d47
	sbc a,c			;9d48
	sbc a,c			;9d49
	sbc a,c			;9d4a
	sbc a,c			;9d4b
	sub l			;9d4c
	ld d,a			;9d4d
	ld (hl),a		;9d4e
	ld (hl),a		;9d4f
	sub l			;9d50
	ld a,a			;9d51
	ld h,(hl)		;9d52
	ld d,a			;9d53
	sub l			;9d54
	ld a,b			;9d55
	rst 38h			;9d56
	inc (hl)		;9d57
	sub l			;9d58
	ld a,b			;9d59
	adc a,b			;9d5a
	ret m			;9d5b
	nop			;9d5c
	nop			;9d5d
	nop			;9d5e
	nop			;9d5f
	nop			;9d60
	nop			;9d61
	nop			;9d62
	nop			;9d63
	sbc a,c			;9d64
	nop			;9d65
	nop			;9d66
	nop			;9d67
	sbc a,c			;9d68
	sub b			;9d69
	nop			;9d6a
	nop			;9d6b
	ld (hl),e		;9d6c
	sbc a,c			;9d6d
	nop			;9d6e
	nop			;9d6f
	ld b,h			;9d70
	add hl,sp		;9d71
	sub b			;9d72
	nop			;9d73
	ld b,h			;9d74
	ld b,e			;9d75
	sbc a,c			;9d76
	nop			;9d77
	ld b,h			;9d78
	ld b,h			;9d79
	add hl,sp		;9d7a
	sub b			;9d7b
	nop			;9d7c
	nop			;9d7d
	nop			;9d7e
	nop			;9d7f
	nop			;9d80
	nop			;9d81
	nop			;9d82
	nop			;9d83
	nop			;9d84
	add hl,bc		;9d85
	sbc a,c			;9d86
	sbc a,c			;9d87
	nop			;9d88
	add hl,bc		;9d89
	sbc a,c			;9d8a
	sbc a,c			;9d8b
	nop			;9d8c
	add hl,bc		;9d8d
	ld d,(hl)		;9d8e
	ld (hl),a		;9d8f
	nop			;9d90
	add hl,bc		;9d91
	ld d,a			;9d92
	ld h,(hl)		;9d93
	nop			;9d94
	add hl,bc		;9d95
	ld d,a			;9d96
	adc a,b			;9d97
	nop			;9d98
	add hl,bc		;9d99
	ld d,a			;9d9a
	adc a,b			;9d9b
	nop			;9d9c
	nop			;9d9d
	nop			;9d9e
	nop			;9d9f
	nop			;9da0
	nop			;9da1
	nop			;9da2
	nop			;9da3
	sbc a,c			;9da4
	sbc a,c			;9da5
	sbc a,c			;9da6
	sbc a,c			;9da7
	sbc a,c			;9da8
	sbc a,c			;9da9
	sbc a,c			;9daa
	sbc a,c			;9dab
	ld (hl),a		;9dac
	ld (hl),a		;9dad
	ld b,e			;9dae
	sub l			;9daf
	ld (hl),a		;9db0
	ld b,h			;9db1
	ld b,e			;9db2
	sub l			;9db3
	ld h,h			;9db4
	ld b,l			;9db5
	ld b,e			;9db6
	sub l			;9db7
	call p,04345h		;9db8
	sub l			;9dbb
	cp d			;9dbc
	nop			;9dbd
	inc c			;9dbe
	cp e			;9dbf
	and b			;9dc0
	nop			;9dc1
	dec bc			;9dc2
	nop			;9dc3
	sbc a,c			;9dc4
	nop			;9dc5
	or b			;9dc6
	nop			;9dc7
	sbc a,c			;9dc8
	sub b			;9dc9
	nop			;9dca
	nop			;9dcb
	ld (hl),e		;9dcc
	sbc a,c			;9dcd
	nop			;9dce
	nop			;9dcf
	ld b,h			;9dd0
	add hl,sp		;9dd1
	sub b			;9dd2
	nop			;9dd3
	ld b,h			;9dd4
	ld b,e			;9dd5
	sbc a,c			;9dd6
	nop			;9dd7
	ld b,h			;9dd8
	ld b,h			;9dd9
	add hl,sp		;9dda
	sub b			;9ddb
	cp h			;9ddc
	rlc b			;9ddd
	nop			;9ddf
	cp h			;9de0
	cp e			;9de1
	nop			;9de2
	nop			;9de3
	cp h			;9de4
	cp c			;9de5
	sbc a,c			;9de6
	sbc a,c			;9de7
	cp h			;9de8
	cp c			;9de9
	sbc a,c			;9dea
	sbc a,c			;9deb
	cp h			;9dec
	cp c			;9ded
	ld d,(hl)		;9dee
	ld (hl),a		;9def
	cp h			;9df0
	cp c			;9df1
	ld d,a			;9df2
	ld h,(hl)		;9df3
	cp h			;9df4
	cp c			;9df5
	ld d,a			;9df6
	adc a,b			;9df7
	cp e			;9df8
	cp c			;9df9
	ld d,a			;9dfa
sub_9dfbh:
	adc a,b			;9dfb
	cp e			;9dfc
	or b			;9dfd
	nop			;9dfe
	nop			;9dff
	nop			;9e00
	nop			;9e01
	nop			;9e02
	nop			;9e03
	sbc a,c			;9e04
	sbc a,c			;9e05
	sbc a,c			;9e06
	sbc a,c			;9e07
	sbc a,c			;9e08
	sbc a,c			;9e09
	sbc a,c			;9e0a
	sbc a,c			;9e0b
	ld (hl),a		;9e0c
	ld (hl),a		;9e0d
	ld b,e			;9e0e
	sub l			;9e0f
	ld (hl),a		;9e10
	ld b,h			;9e11
	ld b,e			;9e12
	sub l			;9e13
	ld h,h			;9e14
	ld b,l			;9e15
	ld b,e			;9e16
	sub l			;9e17
	call p,04345h		;9e18
	sub l			;9e1b
	cp e			;9e1c
	cp c			;9e1d
	ld d,a			;9e1e
	adc a,b			;9e1f
	xor e			;9e20
	cp c			;9e21
	ld d,a			;9e22
	adc a,b			;9e23
	sbc a,e			;9e24
	cp c			;9e25
	ld d,a			;9e26
	adc a,b			;9e27
	sbc a,e			;9e28
	cp c			;9e29
	inc sp			;9e2a
	inc sp			;9e2b
	sbc a,d			;9e2c
	cp c			;9e2d
	sbc a,c			;9e2e
	sbc a,c			;9e2f
	ld a,(057b9h)		;9e30
	adc a,b			;9e33
	ld b,e			;9e34
	xor c			;9e35
	ld d,a			;9e36
	adc a,b			;9e37
	ld d,h			;9e38
	xor c			;9e39
	ld d,a			;9e3a
	adc a,b			;9e3b
	ld d,h			;9e3c
	xor c			;9e3d
	ld d,a			;9e3e
	adc a,b			;9e3f
	ld b,l			;9e40
	ld b,e			;9e41
	ld d,a			;9e42
	adc a,b			;9e43
	ld b,h			;9e44
	ld d,h			;9e45
	ld d,a			;9e46
	adc a,b			;9e47
	ld b,h			;9e48
	ld b,l			;9e49
	ld d,a			;9e4a
	adc a,b			;9e4b
	ld b,h			;9e4c
	ld b,l			;9e4d
	ld d,a			;9e4e
	adc a,b			;9e4f
	ld b,h			;9e50
	ld b,h			;9e51
	ld d,a			;9e52
	adc a,b			;9e53
	ld b,h			;9e54
	ld b,h			;9e55
	ld d,a			;9e56
	adc a,b			;9e57
	call p,04544h		;9e58
	adc a,b			;9e5b
	ld a,(bc)		;9e5c
	cp h			;9e5d
	call 000ddh		;9e5e
	xor e			;9e61
	call z,sub_99ddh	;9e62
	xor e			;9e65
	call z,sub_99cch	;9e66
	sbc a,d			;9e69
	cp h			;9e6a
	call z,09a77h		;9e6b
	xor e			;9e6e
	cp e			;9e6f
	ld (hl),a		;9e70
	ld c,c			;9e71
	xor d			;9e72
	cp e			;9e73
	ld h,h			;9e74
	ld b,h			;9e75
	sbc a,d			;9e76
	xor d			;9e77
	ld (hl),h		;9e78
	ld b,h			;9e79
	ld c,c			;9e7a
	sbc a,d			;9e7b
	defb 0ddh,0ddh,0ddh ;illegal sequence	;9e7c
	call z,0ddddh		;9e7f
	call z,0cccbh		;9e82
	call z,0bacbh		;9e85
	call z,0bacbh		;9e88
	xor c			;9e8b
	cp e			;9e8c
	cp e			;9e8d
	xor c			;9e8e
	sub a			;9e8f
	cp e			;9e90
	xor d			;9e91
	sbc a,c			;9e92
	ld d,a			;9e93
	xor d			;9e94
	xor c			;9e95
	sbc a,b			;9e96
	ld b,h			;9e97
	xor d			;9e98
	sbc a,c			;9e99
	adc a,b			;9e9a
	ret m			;9e9b
	sbc a,c			;9e9c
	sbc a,c			;9e9d
	sbc a,c			;9e9e
	sub b			;9e9f
	sbc a,c			;9ea0
	ld (hl),a		;9ea1
	ld d,e			;9ea2
	sbc a,c			;9ea3
	ld (hl),a		;9ea4
	ld (hl),h		;9ea5
	ld b,e			;9ea6
	sbc a,c			;9ea7
	ld (hl),a		;9ea8
	ld b,h			;9ea9
	ld d,e			;9eaa
	sbc a,c			;9eab
	ld h,h			;9eac
	ld b,h			;9ead
	ld d,e			;9eae
	sbc a,c			;9eaf
	call p,05344h		;9eb0
	sbc a,c			;9eb3
	add a,h			;9eb4
	ld b,h			;9eb5
	ld d,e			;9eb6
	sbc a,c			;9eb7
	call p,05344h		;9eb8
	sbc a,c			;9ebb
	nop			;9ebc
sub_9ebdh:
	nop			;9ebd
	nop			;9ebe
	nop			;9ebf
	nop			;9ec0
	nop			;9ec1
	nop			;9ec2
	nop			;9ec3
	sbc a,c			;9ec4
	sbc a,c			;9ec5
	sbc a,c			;9ec6
	sbc a,c			;9ec7
	sbc a,c			;9ec8
	sbc a,c			;9ec9
	sbc a,c			;9eca
	sbc a,c			;9ecb
	ld (hl),a		;9ecc
	ld (hl),a		;9ecd
	ld (hl),a		;9ece
	inc sp			;9ecf
	ld (hl),a		;9ed0
	ld (hl),a		;9ed1
	ld b,h			;9ed2
	ld b,e			;9ed3
	ld h,h			;9ed4
	ld b,h			;9ed5
	ld d,l			;9ed6
	ld b,e			;9ed7
	ld (hl),h		;9ed8
	ld b,h			;9ed9
	ld d,l			;9eda
	ld b,e			;9edb
	call p,05544h		;9edc
	ld b,e			;9edf
l9ee0h:
	call p,05544h		;9ee0
	ld b,e			;9ee3
	add a,h			;9ee4
	ld b,h			;9ee5
	ld d,l			;9ee6
	ld b,e			;9ee7
	inc sp			;9ee8
	inc sp			;9ee9
	inc sp			;9eea
	add hl,sp		;9eeb
	sbc a,c			;9eec
	sbc a,c			;9eed
	sbc a,c			;9eee
sub_9eefh:
	sbc a,c			;9eef
	call p,05544h		;9ef0
	ld b,e			;9ef3
	add a,h			;9ef4
	ld b,h			;9ef5
	ld d,l			;9ef6
	ld b,e			;9ef7
	call p,05544h		;9ef8
	ld b,e			;9efb
	ld d,h			;9efc
	add hl,sp		;9efd
	ld d,a			;9efe
	adc a,b			;9eff
	ld b,l			;9f00
	ld b,e			;9f01
	ld d,a			;9f02
	adc a,b			;9f03
	ld b,h			;9f04
	ld d,h			;9f05
	ld d,a			;9f06
	adc a,b			;9f07
	ld b,h			;9f08
	ld b,l			;9f09
	ld d,a			;9f0a
	adc a,b			;9f0b
	ld b,h			;9f0c
	ld b,l			;9f0d
	ld d,a			;9f0e
	adc a,b			;9f0f
	ld b,h			;9f10
	ld b,h			;9f11
	ld d,a			;9f12
	adc a,b			;9f13
	ld b,h			;9f14
	ld b,h			;9f15
	ld d,a			;9f16
	adc a,b			;9f17
	call p,04544h		;9f18
	adc a,b			;9f1b
	rlc b			;9f1c
	nop			;9f1e
	nop			;9f1f
	or b			;9f20
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
	nop			;9f41
	nop			;9f42
	nop			;9f43
	rst 38h			;9f44
	rst 38h			;9f45
	ret p			;9f46
	ret p			;9f47
	nop			;9f48
	ret p			;9f49
	nop			;9f4a
	rst 38h			;9f4b
	nop			;9f4c
	ret p			;9f4d
	nop			;9f4e
	ret p			;9f4f
	nop			;9f50
	ret p			;9f51
	nop			;9f52
	ret p			;9f53
	nop			;9f54
	ret p			;9f55
	nop			;9f56
	ret p			;9f57
	nop			;9f58
	nop			;9f59
	nop			;9f5a
	nop			;9f5b
	nop			;9f5c
	nop			;9f5d
	nop			;9f5e
	nop			;9f5f
	nop			;9f60
	nop			;9f61
	nop			;9f62
	nop			;9f63
	nop			;9f64
	ret p			;9f65
	nop			;9f66
	nop			;9f67
	rrca			;9f68
	ret p			;9f69
	nop			;9f6a
	nop			;9f6b
	ret p			;9f6c
	ret p			;9f6d
	nop			;9f6e
	nop			;9f6f
	nop			;9f70
	ret p			;9f71
	nop			;9f72
	nop			;9f73
	nop			;9f74
	ret p			;9f75
	nop			;9f76
	nop			;9f77
	nop			;9f78
	nop			;9f79
	nop			;9f7a
	nop			;9f7b
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
l9f9fh:
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
sub_9fffh:
	rst 38h			;9fff
