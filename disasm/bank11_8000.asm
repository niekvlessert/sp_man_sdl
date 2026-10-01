; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank11_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank11.bin

	org 08000h

	rst 38h			;8000
	inc b			;8001
	xor a			;8002
	ld bc,001b0h		;8003
	or c			;8006
	ld bc,001afh		;8007
	or d			;800a
	ld bc,001b3h		;800b
	or h			;800e
	ld bc,001b5h		;800f
	or (hl)			;8012
	ld bc,001b7h		;8013
	cp b			;8016
	ld bc,001b9h		;8017
	cp d			;801a
	ld bc,001b2h		;801b
	xor a			;801e
	ld bc,001bbh		;801f
	cp h			;8022
	ld bc,001bdh		;8023
	cp (hl)			;8026
	ld bc,001afh		;8027
	rrca			;802a
	inc bc			;802b
	rrca			;802c
	inc bc			;802d
	dec a			;802e
	inc b			;802f
	ld a,004h		;8030
	ccf			;8032
	inc b			;8033
	cp e			;8034
	inc bc			;8035
	sub a			;8036
	inc b			;8037
	sub (hl)		;8038
	inc b			;8039
	sub l			;803a
	inc b			;803b
	rrca			;803c
	inc bc			;803d
	rrca			;803e
	inc bc			;803f
	push de			;8040
	inc bc			;8041
	dec hl			;8042
	inc bc			;8043
	rrca			;8044
	inc bc			;8045
	rrca			;8046
	inc bc			;8047
	rrca			;8048
	inc bc			;8049
	rrca			;804a
	inc bc			;804b
	rrca			;804c
	inc bc			;804d
	rrca			;804e
	inc bc			;804f
	rrca			;8050
	inc bc			;8051
	rrca			;8052
	inc bc			;8053
	rrca			;8054
	inc bc			;8055
	rrca			;8056
	inc bc			;8057
	rrca			;8058
	inc bc			;8059
	rrca			;805a
	inc bc			;805b
	rrca			;805c
	inc bc			;805d
	rrca			;805e
	inc bc			;805f
	rrca			;8060
	inc bc			;8061
	rrca			;8062
	inc bc			;8063
	rrca			;8064
	inc bc			;8065
	jp (hl)			;8066
	inc bc			;8067
	rst 38h			;8068
	inc b			;8069
	rrca			;806a
	inc bc			;806b
	rrca			;806c
	inc bc			;806d
	ld b,b			;806e
	inc b			;806f
	ld b,c			;8070
	inc b			;8071
l8072h:
	ld b,d			;8072
	inc b			;8073
	cp h			;8074
	inc bc			;8075
	sbc a,d			;8076
	inc b			;8077
	sbc a,c			;8078
	inc b			;8079
	sbc a,b			;807a
	inc b			;807b
	rrca			;807c
	inc bc			;807d
	rrca			;807e
	inc bc			;807f
	sub 003h		;8080
	inc l			;8082
	inc bc			;8083
	dec l			;8084
	inc bc			;8085
	rrca			;8086
	inc bc			;8087
	rrca			;8088
	inc bc			;8089
	rrca			;808a
	inc bc			;808b
	rrca			;808c
	inc bc			;808d
	rrca			;808e
	inc bc			;808f
	ld sp,03203h		;8090
	inc bc			;8093
	inc sp			;8094
	inc bc			;8095
	inc (hl)		;8096
	inc bc			;8097
	rrca			;8098
	inc bc			;8099
	rrca			;809a
	inc bc			;809b
	rrca			;809c
	inc bc			;809d
	rrca			;809e
	inc bc			;809f
	rrca			;80a0
	inc bc			;80a1
	jr z,$+5		;80a2
	daa			;80a4
	inc bc			;80a5
	jp pe,0ff03h		;80a6
	inc b			;80a9
	rrca			;80aa
	inc bc			;80ab
	rrca			;80ac
	inc bc			;80ad
	ld b,e			;80ae
	inc b			;80af
	ld b,h			;80b0
	inc b			;80b1
	ld b,l			;80b2
	inc b			;80b3
	cp l			;80b4
	inc bc			;80b5
	sbc a,l			;80b6
	inc b			;80b7
	sbc a,h			;80b8
	inc b			;80b9
	sbc a,e			;80ba
	inc b			;80bb
	rrca			;80bc
	inc bc			;80bd
	rrca			;80be
	inc bc			;80bf
	rst 10h			;80c0
	inc bc			;80c1
	ret c			;80c2
	inc bc			;80c3
	ld l,003h		;80c4
	rrca			;80c6
	inc bc			;80c7
	rrca			;80c8
	inc bc			;80c9
	rrca			;80ca
	inc bc			;80cb
	rrca			;80cc
	inc bc			;80cd
	dec (hl)		;80ce
	inc bc			;80cf
	ld (hl),003h		;80d0
	scf			;80d2
	inc bc			;80d3
	jr c,$+5		;80d4
	add hl,sp		;80d6
	inc bc			;80d7
	ld a,(00f03h)		;80d8
	inc bc			;80db
	rrca			;80dc
	inc bc			;80dd
	rrca			;80de
	inc bc			;80df
	rrca			;80e0
	inc bc			;80e1
	add hl,hl		;80e2
	inc bc			;80e3
	call pe,0eb03h		;80e4
	inc bc			;80e7
	rst 38h			;80e8
	inc b			;80e9
	rrca			;80ea
	inc bc			;80eb
	rrca			;80ec
	inc bc			;80ed
	ld b,(hl)		;80ee
	inc b			;80ef
	ld b,a			;80f0
	inc b			;80f1
	ld c,b			;80f2
	inc b			;80f3
	cp (hl)			;80f4
	inc bc			;80f5
	and b			;80f6
	inc b			;80f7
	sbc a,a			;80f8
	inc b			;80f9
	sbc a,(hl)		;80fa
	inc b			;80fb
	rrca			;80fc
	inc bc			;80fd
	rrca			;80fe
l80ffh:
	inc bc			;80ff
	exx			;8100
	inc bc			;8101
	jp c,0db03h		;8102
	inc bc			;8105
	cpl			;8106
	inc bc			;8107
	rrca			;8108
	inc bc			;8109
	dec sp			;810a
	inc bc			;810b
	inc a			;810c
	inc bc			;810d
	dec a			;810e
	inc bc			;810f
	ld a,003h		;8110
	ccf			;8112
	inc bc			;8113
	ld b,b			;8114
	inc bc			;8115
	ld b,c			;8116
	inc bc			;8117
	ld b,d			;8118
	inc bc			;8119
	ld b,e			;811a
	inc bc			;811b
	ld b,h			;811c
	inc bc			;811d
	rrca			;811e
	inc bc			;811f
	ld hl,(0ef03h)		;8120
	inc bc			;8123
	xor 003h		;8124
	defb 0edh ;next byte illegal after ed	;8126
	inc bc			;8127
	rst 38h			;8128
	inc b			;8129
	rrca			;812a
	inc bc			;812b
	rrca			;812c
	inc bc			;812d
	ld c,c			;812e
	inc b			;812f
	ld c,d			;8130
	inc b			;8131
	ld c,e			;8132
	inc b			;8133
	cp a			;8134
	inc bc			;8135
	and e			;8136
	inc b			;8137
	and d			;8138
	inc b			;8139
	and c			;813a
	inc b			;813b
l813ch:
	rrca			;813c
	inc bc			;813d
	rrca			;813e
	inc bc			;813f
	call c,0dd03h		;8140
	inc bc			;8143
	sbc a,003h		;8144
	rst 18h			;8146
	inc bc			;8147
	jr nc,l814dh		;8148
	ld b,l			;814a
	inc bc			;814b
	ld b,(hl)		;814c
l814dh:
	inc bc			;814d
	ld b,a			;814e
	inc bc			;814f
	ld c,b			;8150
	inc bc			;8151
	ld c,c			;8152
	inc bc			;8153
	ld c,d			;8154
	inc bc			;8155
	ld c,e			;8156
	inc bc			;8157
	ld c,h			;8158
	inc bc			;8159
	ld c,l			;815a
	inc bc			;815b
	ld c,(hl)		;815c
	inc bc			;815d
	ld c,a			;815e
	inc bc			;815f
	di			;8160
	inc bc			;8161
	jp p,0f103h		;8162
	inc bc			;8165
	ret p			;8166
	inc bc			;8167
	rst 38h			;8168
	inc b			;8169
	rrca			;816a
	inc bc			;816b
	rrca			;816c
	inc bc			;816d
	ld c,h			;816e
	inc b			;816f
	ld c,l			;8170
	inc b			;8171
	ld c,(hl)		;8172
	inc b			;8173
	ret nz			;8174
	inc bc			;8175
	and (hl)		;8176
	inc b			;8177
	and l			;8178
	inc b			;8179
	and h			;817a
	inc b			;817b
	rrca			;817c
	inc bc			;817d
	rrca			;817e
	inc bc			;817f
	ret po			;8180
	inc bc			;8181
	pop hl			;8182
	inc bc			;8183
	jp po,0e303h		;8184
	inc bc			;8187
	call po,05003h		;8188
	inc bc			;818b
	ld d,c			;818c
	inc bc			;818d
	ld d,d			;818e
	inc bc			;818f
	ld d,e			;8190
	inc bc			;8191
	ld d,h			;8192
	inc bc			;8193
	ld d,l			;8194
	inc bc			;8195
	ld d,(hl)		;8196
	inc bc			;8197
	ld d,a			;8198
	inc bc			;8199
	ld e,b			;819a
	inc bc			;819b
	ld e,c			;819c
	inc bc			;819d
	ret m			;819e
	inc bc			;819f
	rst 30h			;81a0
	inc bc			;81a1
	or 003h			;81a2
	push af			;81a4
	inc bc			;81a5
	call p,0ff03h		;81a6
	inc b			;81a9
	rrca			;81aa
	inc bc			;81ab
	rrca			;81ac
	inc bc			;81ad
	ld c,a			;81ae
	inc b			;81af
	ld d,b			;81b0
	inc b			;81b1
	ld d,c			;81b2
	inc b			;81b3
	pop bc			;81b4
	inc bc			;81b5
	xor c			;81b6
	inc b			;81b7
	xor b			;81b8
	inc b			;81b9
	and a			;81ba
	inc b			;81bb
	rrca			;81bc
	inc bc			;81bd
	rrca			;81be
	inc bc			;81bf
	push hl			;81c0
	inc bc			;81c1
	and 003h		;81c2
	rst 20h			;81c4
	inc bc			;81c5
	ret pe			;81c6
	inc bc			;81c7
	ld e,d			;81c8
	inc bc			;81c9
	ld e,e			;81ca
	inc bc			;81cb
	ld e,h			;81cc
	inc bc			;81cd
	ld e,l			;81ce
	inc bc			;81cf
	ld e,(hl)		;81d0
	inc bc			;81d1
	ld e,a			;81d2
	inc bc			;81d3
	ld h,b			;81d4
	inc bc			;81d5
	ld h,c			;81d6
	inc bc			;81d7
	ld h,d			;81d8
	inc bc			;81d9
	ld h,e			;81da
	inc bc			;81db
	ld h,h			;81dc
	inc bc			;81dd
	ld h,l			;81de
	inc bc			;81df
	call m,0fb03h		;81e0
	inc bc			;81e3
	jp m,0f903h		;81e4
	inc bc			;81e7
	rst 38h			;81e8
	inc b			;81e9
	rrca			;81ea
	inc bc			;81eb
	rrca			;81ec
	inc bc			;81ed
	ld d,d			;81ee
	inc b			;81ef
	ld d,e			;81f0
	inc b			;81f1
	ld d,h			;81f2
	inc b			;81f3
	jp nz,0ac03h		;81f4
	inc b			;81f7
	xor e			;81f8
	inc b			;81f9
	xor d			;81fa
	inc b			;81fb
	rrca			;81fc
	inc bc			;81fd
	rrca			;81fe
	inc bc			;81ff
	ld h,(hl)		;8200
	inc bc			;8201
	ld h,a			;8202
	inc bc			;8203
	ld l,b			;8204
	inc bc			;8205
	ld l,c			;8206
	inc bc			;8207
	ld l,d			;8208
	inc bc			;8209
	ld l,e			;820a
	inc bc			;820b
	ld l,h			;820c
	inc bc			;820d
	ld l,l			;820e
	inc bc			;820f
	ld l,(hl)		;8210
	inc bc			;8211
	ld l,a			;8212
	inc bc			;8213
	ld (hl),b		;8214
	inc bc			;8215
	ld (hl),c		;8216
	inc bc			;8217
	ld (hl),d		;8218
	inc bc			;8219
	ld (hl),e		;821a
	inc bc			;821b
	ld (hl),h		;821c
	inc bc			;821d
	ld (hl),l		;821e
	inc bc			;821f
	and (hl)		;8220
	inc bc			;8221
	and a			;8222
	inc bc			;8223
	xor b			;8224
	inc bc			;8225
	xor c			;8226
	inc bc			;8227
	rst 38h			;8228
	inc b			;8229
	rrca			;822a
	inc bc			;822b
	rrca			;822c
	inc bc			;822d
	defb 0fdh,003h,0feh ;illegal sequence	;822e
	inc bc			;8231
	rst 38h			;8232
	inc bc			;8233
	jp 05703h		;8234
	inc b			;8237
	ld d,(hl)		;8238
	inc b			;8239
	ld d,l			;823a
	inc b			;823b
	rrca			;823c
	inc bc			;823d
	rrca			;823e
	inc bc			;823f
	halt			;8240
	inc bc			;8241
	ld (hl),a		;8242
	inc bc			;8243
	ld a,b			;8244
	inc bc			;8245
	ld a,c			;8246
	inc bc			;8247
	ld a,d			;8248
	inc bc			;8249
	ld a,e			;824a
	inc bc			;824b
	ld a,h			;824c
	inc bc			;824d
	ld a,l			;824e
	inc bc			;824f
	ld a,(hl)		;8250
	inc bc			;8251
	ld a,a			;8252
	inc bc			;8253
	add a,b			;8254
	inc bc			;8255
	add a,c			;8256
	inc bc			;8257
	add a,d			;8258
	inc bc			;8259
	add a,e			;825a
	inc bc			;825b
	add a,h			;825c
	inc bc			;825d
	add a,l			;825e
	inc bc			;825f
	xor d			;8260
	inc bc			;8261
	xor e			;8262
	inc bc			;8263
	or d			;8264
	inc bc			;8265
	xor (hl)		;8266
	inc bc			;8267
	rst 38h			;8268
	inc b			;8269
	rrca			;826a
	inc bc			;826b
	rrca			;826c
	inc bc			;826d
	nop			;826e
	inc b			;826f
	ld bc,00204h		;8270
	inc b			;8273
	call nz,05a03h		;8274
	inc b			;8277
	ld e,c			;8278
	inc b			;8279
	ld e,b			;827a
	inc b			;827b
	rrca			;827c
	inc bc			;827d
	rrca			;827e
	inc bc			;827f
	add a,(hl)		;8280
	inc bc			;8281
	add a,a			;8282
	inc bc			;8283
	adc a,b			;8284
	inc bc			;8285
	adc a,c			;8286
	inc bc			;8287
	adc a,d			;8288
	inc bc			;8289
	adc a,e			;828a
	inc bc			;828b
	adc a,h			;828c
	inc bc			;828d
	adc a,l			;828e
	inc bc			;828f
	adc a,(hl)		;8290
	inc bc			;8291
	adc a,a			;8292
	inc bc			;8293
	sub b			;8294
	inc bc			;8295
	sub c			;8296
	inc bc			;8297
	sub d			;8298
	inc bc			;8299
	sub e			;829a
	inc bc			;829b
	sub h			;829c
	inc bc			;829d
	sub l			;829e
	inc bc			;829f
	xor h			;82a0
	inc bc			;82a1
	xor l			;82a2
	inc bc			;82a3
	xor (hl)		;82a4
	inc bc			;82a5
	xor (hl)		;82a6
	inc bc			;82a7
	rst 38h			;82a8
	inc b			;82a9
	rrca			;82aa
	inc bc			;82ab
	rrca			;82ac
	inc bc			;82ad
	inc bc			;82ae
	inc b			;82af
	inc b			;82b0
	inc b			;82b1
	dec b			;82b2
	inc b			;82b3
	push bc			;82b4
	inc bc			;82b5
	ld e,l			;82b6
	inc b			;82b7
	ld e,h			;82b8
	inc b			;82b9
	ld e,e			;82ba
	inc b			;82bb
	rrca			;82bc
	inc bc			;82bd
	rrca			;82be
	inc bc			;82bf
	sub (hl)		;82c0
	inc bc			;82c1
	sub a			;82c2
	inc bc			;82c3
	sbc a,b			;82c4
	inc bc			;82c5
	sbc a,c			;82c6
	inc bc			;82c7
	sbc a,d			;82c8
	inc bc			;82c9
	sbc a,e			;82ca
	inc bc			;82cb
	sbc a,h			;82cc
	inc bc			;82cd
	sbc a,l			;82ce
	inc bc			;82cf
	sbc a,(hl)		;82d0
	inc bc			;82d1
	sbc a,a			;82d2
	inc bc			;82d3
	and b			;82d4
	inc bc			;82d5
	and c			;82d6
	inc bc			;82d7
	and d			;82d8
	inc bc			;82d9
	and e			;82da
	inc bc			;82db
	and h			;82dc
	inc bc			;82dd
	and l			;82de
	inc bc			;82df
	or b			;82e0
	inc bc			;82e1
	or c			;82e2
	inc bc			;82e3
	or d			;82e4
	inc bc			;82e5
	or e			;82e6
	inc bc			;82e7
	rst 38h			;82e8
	inc b			;82e9
	rrca			;82ea
	inc bc			;82eb
	ld b,004h		;82ec
	rlca			;82ee
	inc b			;82ef
	ex af,af'		;82f0
	inc b			;82f1
	add a,003h		;82f2
	rst 0			;82f4
	inc bc			;82f5
	ret			;82f6
	inc bc			;82f7
	ld h,b			;82f8
	inc b			;82f9
	ld e,a			;82fa
	inc b			;82fb
	ld e,(hl)		;82fc
	inc b			;82fd
	rrca			;82fe
	inc bc			;82ff
	rrca			;8300
	inc bc			;8301
	dec d			;8302
	inc bc			;8303
	ld d,003h		;8304
	rla			;8306
	inc bc			;8307
	jr l830dh		;8308
	call c,0de04h		;830a
l830dh:
	inc b			;830d
	pop bc			;830e
	inc b			;830f
	rst 38h			;8310
	inc b			;8311
	rst 38h			;8312
	inc b			;8313
	rst 38h			;8314
	inc b			;8315
	rst 38h			;8316
	inc b			;8317
	rst 38h			;8318
	inc b			;8319
	rst 38h			;831a
	inc b			;831b
	rst 38h			;831c
	inc b			;831d
	rst 38h			;831e
	inc b			;831f
	rst 38h			;8320
	inc b			;8321
	rst 38h			;8322
	inc b			;8323
	rst 38h			;8324
	inc b			;8325
	rst 38h			;8326
	inc b			;8327
	rst 38h			;8328
	inc b			;8329
	rrca			;832a
	inc bc			;832b
	rrca			;832c
	inc bc			;832d
	add hl,bc		;832e
	inc b			;832f
	ld a,(bc)		;8330
	inc b			;8331
	dec bc			;8332
	inc b			;8333
	ret z			;8334
	inc bc			;8335
	ld h,e			;8336
	inc b			;8337
	ld h,d			;8338
	inc b			;8339
	ld h,c			;833a
	inc b			;833b
	rrca			;833c
	inc bc			;833d
	rrca			;833e
	inc bc			;833f
	add hl,de		;8340
	inc bc			;8341
	ld a,(de)		;8342
	inc bc			;8343
l8344h:
	dec de			;8344
	inc bc			;8345
	inc e			;8346
	inc bc			;8347
	dec e			;8348
	inc bc			;8349
	defb 0ddh,004h,0dfh ;illegal sequence	;834a
	inc b			;834d
	jp nz,00f04h		;834e
	inc bc			;8351
	call 00f04h		;8352
	inc bc			;8355
	rst 38h			;8356
	inc b			;8357
	rst 38h			;8358
	inc b			;8359
	rst 38h			;835a
	inc b			;835b
	rst 38h			;835c
	inc b			;835d
	rst 38h			;835e
	inc b			;835f
	rst 38h			;8360
	inc b			;8361
	rst 38h			;8362
	inc b			;8363
	rst 38h			;8364
	inc b			;8365
	rst 38h			;8366
	inc b			;8367
	rst 38h			;8368
	inc b			;8369
	inc c			;836a
	inc b			;836b
	dec c			;836c
	inc b			;836d
	ld c,004h		;836e
	rrca			;8370
	inc b			;8371
	jp z,0cb03h		;8372
	inc bc			;8375
	call z,06703h		;8376
	inc b			;8379
	ld h,(hl)		;837a
	inc b			;837b
	ld h,l			;837c
	inc b			;837d
	ld h,h			;837e
	inc b			;837f
	ld e,003h		;8380
	rra			;8382
	inc bc			;8383
	jr nz,l8389h		;8384
	ld hl,02203h		;8386
l8389h:
	inc bc			;8389
	rrca			;838a
	inc bc			;838b
	out (004h),a		;838c
	rrca			;838e
	inc bc			;838f
	rrca			;8390
	inc bc			;8391
	adc a,004h		;8392
	rrca			;8394
	inc bc			;8395
	rst 38h			;8396
	inc b			;8397
	rst 38h			;8398
	inc b			;8399
	rst 38h			;839a
	inc b			;839b
	rst 38h			;839c
	inc b			;839d
	rst 38h			;839e
	inc b			;839f
	rst 38h			;83a0
	inc b			;83a1
	rst 38h			;83a2
	inc b			;83a3
	rst 38h			;83a4
	inc b			;83a5
	rst 38h			;83a6
	inc b			;83a7
	rst 38h			;83a8
	inc b			;83a9
	rrca			;83aa
	inc bc			;83ab
	rrca			;83ac
	inc bc			;83ad
	djnz l83b4h		;83ae
	ld de,0cd04h		;83b0
	inc bc			;83b3
l83b4h:
	adc a,003h		;83b4
	rst 8			;83b6
	inc bc			;83b7
	ld l,c			;83b8
	inc b			;83b9
	ld l,b			;83ba
	inc b			;83bb
	rrca			;83bc
	inc bc			;83bd
	rrca			;83be
	inc bc			;83bf
	rrca			;83c0
	inc bc			;83c1
	inc hl			;83c2
	inc bc			;83c3
	inc h			;83c4
	inc bc			;83c5
	dec h			;83c6
	inc bc			;83c7
	ld h,003h		;83c8
	call nc,0d504h		;83ca
	inc b			;83cd
	sub 004h		;83ce
	rst 8			;83d0
	inc b			;83d1
	ret nc			;83d2
	inc b			;83d3
	pop de			;83d4
	inc b			;83d5
	rst 38h			;83d6
	inc b			;83d7
	rst 38h			;83d8
	inc b			;83d9
	rst 38h			;83da
	inc b			;83db
	rst 38h			;83dc
	inc b			;83dd
	rst 38h			;83de
	inc b			;83df
	rst 38h			;83e0
	inc b			;83e1
	rst 38h			;83e2
	inc b			;83e3
	rst 38h			;83e4
	inc b			;83e5
	rst 38h			;83e6
	inc b			;83e7
	rst 38h			;83e8
	inc b			;83e9
	ld (de),a		;83ea
	inc b			;83eb
	inc de			;83ec
	inc b			;83ed
	inc d			;83ee
	inc b			;83ef
	dec d			;83f0
	inc b			;83f1
	ld d,004h		;83f2
	ret nc			;83f4
	inc bc			;83f5
	ld l,(hl)		;83f6
	inc b			;83f7
	ld l,l			;83f8
	inc b			;83f9
	ld l,h			;83fa
	inc b			;83fb
	ld l,e			;83fc
	inc b			;83fd
	ld l,d			;83fe
	inc b			;83ff
sub_8400h:
	ret nz			;8400
	inc b			;8401
	add a,004h		;8402
	rrca			;8404
	inc bc			;8405
	add a,004h		;8406
	rrca			;8408
	inc bc			;8409
	rrca			;840a
	inc bc			;840b
	out (004h),a		;840c
	rrca			;840e
	inc bc			;840f
	rst 38h			;8410
	inc b			;8411
	rst 38h			;8412
	inc b			;8413
	rst 38h			;8414
	inc b			;8415
	rst 38h			;8416
	inc b			;8417
	rst 38h			;8418
	inc b			;8419
	rst 38h			;841a
	inc b			;841b
	rst 38h			;841c
	inc b			;841d
	rst 38h			;841e
	inc b			;841f
	rst 38h			;8420
	inc b			;8421
	rst 38h			;8422
	inc b			;8423
	rst 38h			;8424
	inc b			;8425
	rst 38h			;8426
	inc b			;8427
	rst 38h			;8428
	inc b			;8429
	rla			;842a
	inc b			;842b
	jr l8432h		;842c
	add hl,de		;842e
	inc b			;842f
	ld a,(de)		;8430
	inc b			;8431
l8432h:
	dec de			;8432
	inc b			;8433
	pop de			;8434
	inc bc			;8435
	ld (hl),e		;8436
	inc b			;8437
	ld (hl),d		;8438
	inc b			;8439
	ld (hl),c		;843a
	inc b			;843b
	ld (hl),b		;843c
	inc b			;843d
	ld l,a			;843e
	inc b			;843f
	jp 0c704h		;8440
	inc b			;8443
	rrca			;8444
	inc bc			;8445
	rst 0			;8446
	inc b			;8447
	rrca			;8448
	inc bc			;8449
	call nc,0d704h		;844a
	inc b			;844d
	ret c			;844e
	inc b			;844f
	rst 38h			;8450
	inc b			;8451
	rst 38h			;8452
	inc b			;8453
	rst 38h			;8454
	inc b			;8455
	rst 38h			;8456
	inc b			;8457
	rst 38h			;8458
	inc b			;8459
	rst 38h			;845a
	inc b			;845b
	rst 38h			;845c
	inc b			;845d
	rst 38h			;845e
	inc b			;845f
	rst 38h			;8460
	inc b			;8461
	rst 38h			;8462
	inc b			;8463
	rst 38h			;8464
	inc b			;8465
	rst 38h			;8466
	inc b			;8467
	rst 38h			;8468
	inc b			;8469
	inc e			;846a
	inc b			;846b
	dec e			;846c
	inc b			;846d
	ld e,004h		;846e
	rra			;8470
	inc b			;8471
	jr nz,l8478h		;8472
	jp nc,07803h		;8474
	inc b			;8477
l8478h:
	ld (hl),a		;8478
	inc b			;8479
	halt			;847a
	inc b			;847b
	ld (hl),l		;847c
	inc b			;847d
	ld (hl),h		;847e
	inc b			;847f
	call nz,0c804h		;8480
	inc b			;8483
	call z,0cb04h		;8484
	inc b			;8487
	jp z,0d904h		;8488
	inc b			;848b
	jp c,0db04h		;848c
	inc b			;848f
	rst 38h			;8490
	inc b			;8491
	rst 38h			;8492
	inc b			;8493
	rst 38h			;8494
	inc b			;8495
	rst 38h			;8496
	inc b			;8497
	rst 38h			;8498
	inc b			;8499
	rst 38h			;849a
	inc b			;849b
	rst 38h			;849c
	inc b			;849d
	rst 38h			;849e
	inc b			;849f
	rst 38h			;84a0
	inc b			;84a1
	rst 38h			;84a2
	inc b			;84a3
	rst 38h			;84a4
	inc b			;84a5
	rst 38h			;84a6
	inc b			;84a7
	rst 38h			;84a8
	inc b			;84a9
	ld hl,02204h		;84aa
	inc b			;84ad
	inc hl			;84ae
	inc b			;84af
	inc h			;84b0
	inc b			;84b1
	dec h			;84b2
	inc b			;84b3
	out (003h),a		;84b4
	ld a,l			;84b6
	inc b			;84b7
	ld a,h			;84b8
	inc b			;84b9
	ld a,e			;84ba
	inc b			;84bb
	ld a,d			;84bc
	inc b			;84bd
	ld a,c			;84be
	inc b			;84bf
	push bc			;84c0
	inc b			;84c1
	ret			;84c2
	inc b			;84c3
	rrca			;84c4
	inc bc			;84c5
	ret			;84c6
	inc b			;84c7
	rrca			;84c8
	inc bc			;84c9
	rst 38h			;84ca
	inc b			;84cb
	rst 38h			;84cc
	inc b			;84cd
	rst 38h			;84ce
	inc b			;84cf
	rst 38h			;84d0
	inc b			;84d1
	rst 38h			;84d2
	inc b			;84d3
	rst 38h			;84d4
	inc b			;84d5
	rst 38h			;84d6
	inc b			;84d7
	rst 38h			;84d8
	inc b			;84d9
	rst 38h			;84da
	inc b			;84db
	rst 38h			;84dc
	inc b			;84dd
	rst 38h			;84de
	inc b			;84df
	rst 38h			;84e0
	inc b			;84e1
	rst 38h			;84e2
	inc b			;84e3
	rst 38h			;84e4
	inc b			;84e5
	rst 38h			;84e6
	inc b			;84e7
	rst 38h			;84e8
	inc b			;84e9
	ld h,004h		;84ea
	daa			;84ec
	inc b			;84ed
	jr z,$+6		;84ee
	add hl,hl		;84f0
	inc b			;84f1
	ld hl,(0d404h)		;84f2
	inc bc			;84f5
	add a,d			;84f6
	inc b			;84f7
	add a,c			;84f8
	inc b			;84f9
	add a,b			;84fa
	inc b			;84fb
	ld a,a			;84fc
	inc b			;84fd
	ld a,(hl)		;84fe
	inc b			;84ff
	rst 38h			;8500
l8501h:
	rst 38h			;8501
	nop			;8502
	nop			;8503
	ld b,000h		;8504
	add hl,bc		;8506
	ld b,03eh		;8507
	ld bc,000e1h		;8509
	ld e,0e1h		;850c
	pop hl			;850e
	rst 38h			;850f
	rst 38h			;8510
	rst 38h			;8511
	inc b			;8512
	nop			;8513
	dec sp			;8514
	inc b			;8515
	call nz,0003fh		;8516
	rst 38h			;8519
	ld (hl),c		;851a
	rst 38h			;851b
	rst 8			;851c
	rst 38h			;851d
	cp a			;851e
	rst 38h			;851f
	rst 38h			;8520
	rst 38h			;8521
	nop			;8522
	nop			;8523
	jp 03c00h		;8524
	jp 0ff42h		;8527
	rst 38h			;852a
	rst 38h			;852b
	rst 38h			;852c
	rst 38h			;852d
	rst 38h			;852e
	rst 38h			;852f
	rst 38h			;8530
	rst 38h			;8531
	cp 000h			;8532
	ld bc,004feh		;8534
	rst 38h			;8537
	ret p			;8538
	rrca			;8539
	ld b,0f9h		;853a
	ret m			;853c
	rst 38h			;853d
	rst 38h			;853e
	rst 38h			;853f
	rst 38h			;8540
	rst 38h			;8541
	add a,0f8h		;8542
	or c			;8544
	adc a,08eh		;8545
	rst 38h			;8547
	rst 38h			;8548
	rst 38h			;8549
	rst 38h			;854a
	rst 38h			;854b
	add a,b			;854c
	rst 38h			;854d
	ccf			;854e
	ret nz			;854f
	ld b,b			;8550
	rst 38h			;8551
	jp 03f3fh		;8552
	rst 38h			;8555
	rst 38h			;8556
	rst 38h			;8557
	rst 38h			;8558
	rst 38h			;8559
	rst 38h			;855a
	rst 38h			;855b
	rst 38h			;855c
	rst 38h			;855d
	ld h,b			;855e
	rst 38h			;855f
	sbc a,(hl)		;8560
	pop hl			;8561
	rst 38h			;8562
	rst 38h			;8563
	rst 38h			;8564
	rst 38h			;8565
	rst 38h			;8566
	rst 38h			;8567
	rst 38h			;8568
	rst 38h			;8569
	or 0ffh			;856a
	inc bc			;856c
	rst 38h			;856d
	cp h			;856e
	ld b,e			;856f
	add a,c			;8570
	rst 38h			;8571
	rst 38h			;8572
	rst 38h			;8573
	rst 38h			;8574
	rst 38h			;8575
	rst 38h			;8576
	rst 38h			;8577
	inc e			;8578
	rst 38h			;8579
	ld a,e			;857a
	call m,0f8d4h		;857b
	dec hl			;857e
	call c,0ffdch		;857f
	rst 38h			;8582
	rst 38h			;8583
	rst 38h			;8584
	rst 38h			;8585
	rst 38h			;8586
	rst 38h			;8587
	ccf			;8588
	rst 38h			;8589
	ret nz			;858a
	ccf			;858b
	ld a,a			;858c
	nop			;858d
	ret nc			;858e
	jr nz,l85a0h		;858f
	ret p			;8591
	rst 38h			;8592
l8593h:
	rst 38h			;8593
	rst 38h			;8594
	rst 38h			;8595
	rst 38h			;8596
	rst 38h			;8597
	sub 0ffh		;8598
	add hl,hl		;859a
	sub 0d6h		;859b
	nop			;859d
	add hl,hl		;859e
	ld d,(hl)		;859f
l85a0h:
	cp (hl)			;85a0
	ld a,a			;85a1
	ei			;85a2
	rst 38h			;85a3
	call po,sub_9bfbh	;85a4
	ret po			;85a7
	jp po,00000h		;85a8
	nop			;85ab
	jr c,l85aeh		;85ac
l85aeh:
	add a,038h		;85ae
	ld hl,0d8feh		;85b0
	rst 38h			;85b3
	ld a,a			;85b4
	rst 38h			;85b5
	sub a			;85b6
	ld a,a			;85b7
	ld l,b			;85b8
	rla			;85b9
	dec d			;85ba
	ld (bc),a		;85bb
	ld a,(bc)		;85bc
	nop			;85bd
	dec h			;85be
	ld a,(bc)		;85bf
	jp c,0552fh		;85c0
	xor 0eeh		;85c3
	rst 38h			;85c5
	rst 38h			;85c6
	rst 38h			;85c7
	rra			;85c8
	rst 38h			;85c9
	ret pe			;85ca
	rra			;85cb
	rla			;85cc
	ex af,af'		;85cd
	ret pe			;85ce
	djnz l85e8h		;85cf
	ret m			;85d1
	ld a,a			;85d2
	rst 38h			;85d3
	call m,0ffffh		;85d4
	rst 38h			;85d7
	add a,0ffh		;85d8
	ld a,c			;85da
	add a,086h		;85db
	ld b,b			;85dd
	ld a,c			;85de
	ld b,086h		;85df
	ld a,a			;85e1
	rst 38h			;85e2
	rst 38h			;85e3
	call m,08affh		;85e4
	rst 38h			;85e7
l85e8h:
	ld (hl),b		;85e8
	adc a,a			;85e9
	adc a,(hl)		;85ea
	nop			;85eb
	ld h,c			;85ec
	nop			;85ed
	sbc a,(hl)		;85ee
	ld h,c			;85ef
	ld h,c			;85f0
	cp 00ah			;85f1
	push af			;85f3
	dec (hl)		;85f4
	ret nz			;85f5
	ld d,d			;85f6
	add a,c			;85f7
	xor d			;85f8
	ld bc,02a55h		;85f9
	ld (09cfdh),hl		;85fc
	ld l,a			;85ff
	ld l,a			;8600
	rst 38h			;8601
	sub l			;8602
	ex af,af'		;8603
	ld h,h			;8604
	jr l8593h		;8605
	ld (hl),b		;8607
	pop de			;8608
	jr nz,l8621h		;8609
	pop hl			;860b
	ld l,c			;860c
	add a,a			;860d
	rlc a			;860e
	ld d,a			;8610
	adc a,a			;8611
	ld bc,01200h		;8612
	ld bc,003bdh		;8615
	ld b,e			;8618
	ccf			;8619
	cp a			;861a
	ld a,a			;861b
	ld a,a			;861c
	rst 38h			;861d
	rst 38h			;861e
	rst 38h			;861f
	rst 8			;8620
l8621h:
	rst 38h			;8621
	sbc a,a			;8622
	nop			;8623
	ld h,b			;8624
	sbc a,a			;8625
	sbc a,a			;8626
	rst 38h			;8627
	rst 38h			;8628
	rst 38h			;8629
	rst 38h			;862a
	rst 38h			;862b
	ret m			;862c
	rst 38h			;862d
	rst 8			;862e
	ret p			;862f
	jr nc,$-62		;8630
	rlca			;8632
	rst 38h			;8633
	rst 38h			;8634
	rst 38h			;8635
	rst 38h			;8636
	rst 38h			;8637
	call m,0fbffh		;8638
	call m,0ff38h		;863b
	rst 0			;863e
	ccf			;863f
	jr c,l8643h		;8640
	rst 38h			;8642
l8643h:
	rst 38h			;8643
	rst 38h			;8644
	rst 38h			;8645
	rst 38h			;8646
	rst 38h			;8647
	ccf			;8648
	rst 38h			;8649
	pop bc			;864a
	ccf			;864b
	ld a,0c1h		;864c
	jp 0fcfch		;864e
	rst 38h			;8651
	rst 38h			;8652
	rst 38h			;8653
	rst 38h			;8654
	rst 38h			;8655
	rst 38h			;8656
	rst 38h			;8657
	rst 38h			;8658
	rst 38h			;8659
	and b			;865a
	rst 38h			;865b
	ld e,(hl)		;865c
	and c			;865d
	and c			;865e
	ld a,a			;865f
	ld a,a			;8660
	rst 38h			;8661
	rst 38h			;8662
	rst 38h			;8663
	rst 38h			;8664
	rst 38h			;8665
	rst 38h			;8666
	rst 38h			;8667
	rst 38h			;8668
	rst 38h			;8669
	rst 38h			;866a
	rst 38h			;866b
l866ch:
	ld hl,0deffh		;866c
	pop hl			;866f
	pop hl			;8670
	cp 0ffh			;8671
	rst 38h			;8673
	rst 38h			;8674
	rst 38h			;8675
	rst 38h			;8676
	rst 38h			;8677
	rst 38h			;8678
	rst 38h			;8679
	rst 38h			;867a
	rst 38h			;867b
	ld e,c			;867c
	rst 38h			;867d
	adc a,031h		;867e
	ld sp,0e300h		;8680
	rst 38h			;8683
	inc c			;8684
	di			;8685
	ret po			;8686
	ccf			;8687
	nop			;8688
	rst 38h			;8689
	ccf			;868a
	ret nz			;868b
	ret nz			;868c
	nop			;868d
	rrca			;868e
	nop			;868f
	nop			;8690
	nop			;8691
	ld hl,0d7ffh		;8692
	ccf			;8695
	dec hl			;8696
	rst 30h			;8697
	rla			;8698
	rst 38h			;8699
	ret nz			;869a
	ccf			;869b
	jr c,$+9		;869c
	adc a,a			;869e
	nop			;869f
	jp po,0bf00h		;86a0
l86a3h:
	rst 38h			;86a3
	jp po,l80ffh		;86a4
	rst 38h			;86a7
	rrca			;86a8
	ret p			;86a9
	jr c,l866ch		;86aa
	jp l9e00h		;86ac
	nop			;86af
	jr nc,l86b2h		;86b0
l86b2h:
	rst 20h			;86b2
	rst 38h			;86b3
	add a,c			;86b4
	rst 38h			;86b5
	add a,l			;86b6
	ld a,d			;86b7
	adc a,030h		;86b8
	cp 000h			;86ba
	ld h,b			;86bc
	nop			;86bd
	ld (bc),a		;86be
	nop			;86bf
	nop			;86c0
	nop			;86c1
	ret p			;86c2
	rst 38h			;86c3
	ld h,a			;86c4
	rst 38h			;86c5
	add hl,sp		;86c6
	rst 38h			;86c7
	adc a,(hl)		;86c8
	ld a,a			;86c9
	ld h,b			;86ca
	rra			;86cb
l86cch:
	ccf			;86cc
	nop			;86cd
	inc bc			;86ce
	nop			;86cf
	nop			;86d0
	nop			;86d1
	ld h,a			;86d2
	cp 0fch			;86d3
	rst 38h			;86d5
	rst 20h			;86d6
	rst 38h			;86d7
	add a,e			;86d8
	rst 38h			;86d9
	jr c,l86a3h		;86da
	rst 20h			;86dc
	nop			;86dd
	ld bc,00800h		;86de
	nop			;86e1
	di			;86e2
	rst 38h			;86e3
	inc c			;86e4
	di			;86e5
	di			;86e6
	ccf			;86e7
	nop			;86e8
	rst 38h			;86e9
	ccf			;86ea
	ret nz			;86eb
	ret nz			;86ec
	nop			;86ed
	rrca			;86ee
	nop			;86ef
	nop			;86f0
	nop			;86f1
l86f2h:
	jr z,$+1		;86f2
	rst 10h			;86f4
	ccf			;86f5
	dec hl			;86f6
	rst 30h			;86f7
	rla			;86f8
	rst 38h			;86f9
	ret nz			;86fa
	ccf			;86fb
	jr c,$+9		;86fc
	adc a,a			;86fe
	nop			;86ff
sub_8700h:
	jp po,03f00h		;8700
	rst 38h			;8703
	cp 0ffh			;8704
	ret po			;8706
	rst 38h			;8707
	adc a,a			;8708
	ret p			;8709
	jr c,l86cch		;870a
	jp l9e00h		;870c
	nop			;870f
	jr nc,l8712h		;8710
l8712h:
	or 0ffh			;8712
	rst 38h			;8714
	rst 38h			;8715
	sbc a,a			;8716
	ld a,a			;8717
	call 0f33fh		;8718
	inc c			;871b
	ld l,h			;871c
	nop			;871d
	inc bc			;871e
	nop			;871f
	ld (bc),a		;8720
	ld bc,0ffffh		;8721
	rst 38h			;8724
	rst 38h			;8725
	rst 38h			;8726
	rst 38h			;8727
	ei			;8728
	rst 38h			;8729
l872ah:
	sub l			;872a
	ld a,e			;872b
	sbc a,l			;872c
	ld h,e			;872d
	ld hl,(0d4c1h)		;872e
	ex de,hl		;8731
	ld d,a			;8732
	adc a,a			;8733
	ld d,h			;8734
	adc a,a			;8735
	ld l,0dfh		;8736
	defb 0ddh,0feh,0ebh ;illegal sequence	;8738
	call m,0fd92h		;873b
	ld h,(hl)		;873e
	sbc a,c			;873f
	sbc a,l			;8740
	ld b,03dh		;8741
	cp 0f6h			;8743
	ret m			;8745
	ex af,af'		;8746
	ret p			;8747
	sub b			;8748
	ld h,b			;8749
	ld hl,042c0h		;874a
	add a,c			;874d
	add a,h			;874e
	inc bc			;874f
	add hl,bc		;8750
l8751h:
	ld b,080h		;8751
	nop			;8753
	nop			;8754
	nop			;8755
	rrca			;8756
	nop			;8757
	ld (hl),b		;8758
	rrca			;8759
	sbc a,d			;875a
	ld h,l			;875b
	ld h,h			;875c
	add a,b			;875d
	adc a,e			;875e
	inc b			;875f
	jr nc,l8771h		;8760
	ld b,001h		;8762
	inc bc			;8764
	nop			;8765
	ret nz			;8766
	nop			;8767
	jr nc,l872ah		;8768
	jr $-30			;876a
	inc b			;876c
	jr c,l86f2h		;876d
	inc c			;876f
	ld h,l			;8770
l8771h:
	add a,d			;8771
	rra			;8772
	rst 38h			;8773
	pop bc			;8774
	ccf			;8775
	ld l,011h		;8776
	ld de,01e00h		;8778
	ld bc,0030ch		;877b
	inc bc			;877e
	nop			;877f
	add a,b			;8780
	nop			;8781
	rst 38h			;8782
	rst 38h			;8783
	call m,sub_93ffh	;8784
	call m,sub_906ch	;8787
	sub e			;878a
	nop			;878b
	ld a,h			;878c
	add a,e			;878d
	add a,039h		;878e
	add hl,sp		;8790
	nop			;8791
	cp 0ffh			;8792
	ld bc,0aeffh		;8794
	ld d,c			;8797
	ld c,c			;8798
	djnz l8751h		;8799
	nop			;879b
	ld c,c			;879c
	or (hl)			;879d
	and (hl)		;879e
	rst 38h			;879f
	ld d,c			;87a0
	xor 0ceh		;87a1
	ld sp,0ff49h		;87a3
	sub 06fh		;87a6
	scf			;87a8
	ld c,a			;87a9
	and b			;87aa
	ld e,a			;87ab
	ld a,(de)		;87ac
	ret po			;87ad
	ld a,h			;87ae
	add a,b			;87af
	and b			;87b0
	nop			;87b1
	nop			;87b2
	nop			;87b3
	ld (bc),a		;87b4
	nop			;87b5
	jr nz,l87b8h		;87b6
l87b8h:
	djnz l87bah		;87b8
l87bah:
	nop			;87ba
	nop			;87bb
	djnz l87beh		;87bc
l87beh:
	add a,h			;87be
	nop			;87bf
	pop af			;87c0
	nop			;87c1
	adc a,h			;87c2
	nop			;87c3
	nop			;87c4
	nop			;87c5
	nop			;87c6
	nop			;87c7
	nop			;87c8
	nop			;87c9
	nop			;87ca
	nop			;87cb
	nop			;87cc
	nop			;87cd
	inc c			;87ce
	nop			;87cf
	jp 00000h		;87d0
	nop			;87d3
	nop			;87d4
	nop			;87d5
	nop			;87d6
	nop			;87d7
	nop			;87d8
	nop			;87d9
	inc b			;87da
	nop			;87db
	dec c			;87dc
	nop			;87dd
	ld a,(bc)		;87de
	ld bc,00304h		;87df
	nop			;87e2
	nop			;87e3
	nop			;87e4
	nop			;87e5
	nop			;87e6
	nop			;87e7
	ld bc,l9400h		;87e8
	nop			;87eb
	ld h,(hl)		;87ec
	nop			;87ed
	or b			;87ee
	ld b,b			;87ef
	ld (hl),b		;87f0
	add a,b			;87f1
	djnz l87f4h		;87f2
l87f4h:
	rrca			;87f4
	nop			;87f5
	ret nz			;87f6
	nop			;87f7
	nop			;87f8
	nop			;87f9
	ld e,000h		;87fa
	ld a,a			;87fc
	nop			;87fd
	ld b,c			;87fe
	ld a,0dch		;87ff
	ccf			;8801
	nop			;8802
	nop			;8803
	add a,b			;8804
	nop			;8805
	ret p			;8806
	nop			;8807
	ld b,h			;8808
	nop			;8809
	ld (01900h),hl		;880a
	nop			;880d
	adc a,b			;880e
	nop			;880f
	call z,00000h		;8810
	ld b,b			;8813
	ld (bc),a		;8814
	nop			;8815
	nop			;8816
	nop			;8817
	nop			;8818
	nop			;8819
	nop			;881a
	nop			;881b
	djnz l881eh		;881c
l881eh:
	add a,h			;881e
	nop			;881f
	ret po			;8820
	nop			;8821
	adc a,h			;8822
	nop			;8823
	nop			;8824
	nop			;8825
	nop			;8826
	nop			;8827
	nop			;8828
	nop			;8829
	nop			;882a
	nop			;882b
	nop			;882c
	nop			;882d
	inc c			;882e
	nop			;882f
	ret nz			;8830
	nop			;8831
	nop			;8832
	nop			;8833
	nop			;8834
	nop			;8835
	nop			;8836
	nop			;8837
	nop			;8838
	nop			;8839
	inc b			;883a
	nop			;883b
	dec c			;883c
	nop			;883d
	add hl,bc		;883e
	nop			;883f
	nop			;8840
	nop			;8841
	ld (bc),a		;8842
	nop			;8843
	ld de,00000h		;8844
	nop			;8847
	nop			;8848
	nop			;8849
	nop			;884a
	nop			;884b
	ld h,b			;884c
	nop			;884d
	sbc a,h			;884e
	nop			;884f
	rst 20h			;8850
	nop			;8851
	call nz,0ac03h		;8852
	ld b,e			;8855
	ld (hl),e		;8856
	inc c			;8857
l8858h:
	inc e			;8858
	nop			;8859
	nop			;885a
	nop			;885b
	nop			;885c
	nop			;885d
	ld bc,0e300h		;885e
	nop			;8861
	xor c			;8862
	ret nc			;8863
	ld (hl),0f9h		;8864
	add a,c			;8866
	ld a,a			;8867
	ld e,h			;8868
	inc hl			;8869
	inc hl			;886a
	nop			;886b
	nop			;886c
	nop			;886d
	add a,a			;886e
	nop			;886f
	ld a,b			;8870
	add a,a			;8871
	ld h,e			;8872
	inc e			;8873
	adc a,h			;8874
	ld (hl),b		;8875
	jr l8858h		;8876
	ld h,b			;8878
	add a,b			;8879
	add a,b			;887a
	nop			;887b
	nop			;887c
	nop			;887d
	rrca			;887e
	nop			;887f
	defb 0fdh,002h,00ah ;illegal sequence	;8880
	inc b			;8883
	inc d			;8884
	ex af,af'		;8885
	jr l8888h		;8886
l8888h:
	jr l888ah		;8888
l888ah:
	jr l888ch		;888a
l888ch:
	ex af,af'		;888c
	nop			;888d
	inc c			;888e
	nop			;888f
	add a,(hl)		;8890
	nop			;8891
	ld e,(hl)		;8892
	ld hl,040a1h		;8893
	adc a,a			;8896
	nop			;8897
	nop			;8898
	nop			;8899
	nop			;889a
	nop			;889b
	nop			;889c
	nop			;889d
	nop			;889e
	nop			;889f
	nop			;88a0
	nop			;88a1
	ld c,d			;88a2
	or c			;88a3
	or l			;88a4
	ex af,af'		;88a5
	adc a,d			;88a6
	inc b			;88a7
	push bc			;88a8
	ld (bc),a		;88a9
	dec sp			;88aa
	ld bc,0010eh		;88ab
	dec b			;88ae
	nop			;88af
	ld bc,0c000h		;88b0
	nop			;88b3
	ld h,b			;88b4
	add a,b			;88b5
	or h			;88b6
	ld b,b			;88b7
	cp b			;88b8
	nop			;88b9
	ld e,h			;88ba
	add a,b			;88bb
	and a			;88bc
	ret nz			;88bd
	ld b,e			;88be
	ret po			;88bf
	jr nc,$-62		;88c0
	ld (bc),a		;88c2
	nop			;88c3
	ld de,00000h		;88c4
	nop			;88c7
	nop			;88c8
	nop			;88c9
	nop			;88ca
	nop			;88cb
	ld h,b			;88cc
	nop			;88cd
	sbc a,a			;88ce
	nop			;88cf
	rst 20h			;88d0
	nop			;88d1
	cp a			;88d2
	ld b,b			;88d3
	ret po			;88d4
	nop			;88d5
	ex af,af'		;88d6
	nop			;88d7
	nop			;88d8
	nop			;88d9
	nop			;88da
	nop			;88db
	nop			;88dc
	nop			;88dd
	nop			;88de
	nop			;88df
	ex (sp),hl		;88e0
	nop			;88e1
	add a,b			;88e2
	nop			;88e3
	nop			;88e4
	nop			;88e5
	nop			;88e6
	nop			;88e7
	nop			;88e8
	nop			;88e9
	nop			;88ea
	nop			;88eb
	ex af,af'		;88ec
	nop			;88ed
	dec b			;88ee
	nop			;88ef
	inc e			;88f0
	nop			;88f1
	cp b			;88f2
	nop			;88f3
	adc a,(hl)		;88f4
	ld (hl),b		;88f5
	and c			;88f6
	ld a,(hl)		;88f7
	sub (hl)		;88f8
	ld a,a			;88f9
	ld a,(bc)		;88fa
	push af			;88fb
	dec a			;88fc
	jp nz,0ffc0h		;88fd
	ld sp,hl		;8900
	rst 38h			;8901
	defb 0fdh,000h,022h ;illegal sequence	;8902
	dec e			;8905
l8906h:
	ret nz			;8906
	ccf			;8907
	add hl,de		;8908
	rst 38h			;8909
	call c,00723h		;890a
	ret m			;890d
	ret m			;890e
	rst 38h			;890f
	ccf			;8910
	rst 38h			;8911
	ret			;8912
	ld b,033h		;8913
	call z,0f847h		;8915
	rst 38h			;8918
	cp 020h			;8919
	rst 38h			;891b
	ld b,a			;891c
	cp a			;891d
	inc l			;891e
	di			;891f
	jp p,058fdh		;8920
	and b			;8923
	jr l8906h		;8924
	sbc a,b			;8926
	ld h,b			;8927
	adc a,b			;8928
	ld (hl),b		;8929
	call nz,0f438h		;892a
	ret z			;892d
	ld e,0e0h		;892e
	jp 09e3ch		;8930
	ld a,a			;8933
	cp a			;8934
	ld a,a			;8935
	cp (hl)			;8936
	ld a,a			;8937
	sbc a,(hl)		;8938
	ld a,a			;8939
	call nz,0713fh		;893a
	ld c,01fh		;893d
	nop			;893f
	nop			;8940
	nop			;8941
l8942h:
	ld c,h			;8942
	add a,b			;8943
	ld b,(hl)		;8944
	add a,b			;8945
	ld c,d			;8946
	add a,b			;8947
	rst 0			;8948
	nop			;8949
	adc a,h			;894a
	nop			;894b
	sub b			;894c
	nop			;894d
	inc de			;894e
	nop			;894f
	inc h			;8950
	inc bc			;8951
	ld b,c			;8952
	nop			;8953
	ld b,a			;8954
	nop			;8955
	dec b			;8956
	nop			;8957
	and d			;8958
	nop			;8959
	ld de,00c00h		;895a
	nop			;895d
	pop af			;895e
	nop			;895f
	djnz l8942h		;8960
l8962h:
	add a,b			;8962
	nop			;8963
	ld h,b			;8964
	nop			;8965
	ld h,b			;8966
	nop			;8967
	add a,b			;8968
	nop			;8969
	add a,a			;896a
	nop			;896b
	inc e			;896c
	inc bc			;896d
	inc hl			;896e
	rra			;896f
	daa			;8970
	rra			;8971
	ld bc,00000h		;8972
	rlca			;8975
	rlca			;8976
	jr l8962h		;8977
	ld e,00eh		;8979
	rst 38h			;897b
	ld b,a			;897c
	cp a			;897d
	xor h			;897e
	di			;897f
	jp p,030fdh		;8980
	nop			;8983
	adc a,l			;8984
	nop			;8985
l8986h:
	ld (hl),d		;8986
	adc a,l			;8987
	dec c			;8988
	rst 38h			;8989
	rst 38h			;898a
	rst 38h			;898b
	rst 0			;898c
	rst 38h			;898d
	inc a			;898e
	rst 38h			;898f
	ld a,a			;8990
	rst 38h			;8991
	ld a,l			;8992
	nop			;8993
	adc a,d			;8994
	dec b			;8995
	ret p			;8996
	rrca			;8997
	dec c			;8998
	rst 38h			;8999
	rst 38h			;899a
	rst 38h			;899b
	rst 38h			;899c
	rst 38h			;899d
	rst 38h			;899e
	rst 38h			;899f
	rst 38h			;89a0
	rst 38h			;89a1
	add a,(hl)		;89a2
	ld a,a			;89a3
	ccf			;89a4
	rst 38h			;89a5
	ld a,a			;89a6
	rst 38h			;89a7
	rst 38h			;89a8
	rst 38h			;89a9
	jr nz,$+1		;89aa
	rlca			;89ac
	rst 38h			;89ad
	defb 0fdh,0ffh,0ffh ;illegal sequence	;89ae
	rst 38h			;89b1
	ld b,0f9h		;89b2
	cp c			;89b4
	cp 0ech			;89b5
	rst 38h			;89b7
	rst 38h			;89b8
	rst 38h			;89b9
	cpl			;89ba
	rst 38h			;89bb
	rlca			;89bc
	rst 38h			;89bd
	ret p			;89be
l89bfh:
	rst 38h			;89bf
	cp 0ffh			;89c0
	ld b,c			;89c2
	add a,b			;89c3
	jr nz,l8986h		;89c4
	ret c			;89c6
	jr nz,l89f0h		;89c7
	ret c			;89c9
	jp nz,03dfdh		;89ca
	rst 38h			;89cd
	rst 28h			;89ce
	rst 38h			;89cf
	ccf			;89d0
	rst 38h			;89d1
	add a,b			;89d2
	nop			;89d3
	inc b			;89d4
	nop			;89d5
	inc bc			;89d6
	nop			;89d7
	nop			;89d8
	nop			;89d9
	ret po			;89da
	nop			;89db
	dec de			;89dc
	ret po			;89dd
	sub h			;89de
	ex de,hl		;89df
	and 0f9h		;89e0
	ld b,001h		;89e2
	rra			;89e4
	nop			;89e5
	ld sp,hl		;89e6
	nop			;89e7
	ld a,(bc)		;89e8
	ld bc,00f31h		;89e9
	rst 30h			;89ec
	rrca			;89ed
	rlca			;89ee
	rst 38h			;89ef
l89f0h:
	xor b			;89f0
	rst 10h			;89f1
	and b			;89f2
	ret nz			;89f3
	ld b,a			;89f4
	add a,b			;89f5
	jr c,l89bfh		;89f6
	add a,e			;89f8
	rst 38h			;89f9
	rst 38h			;89fa
	rst 38h			;89fb
	ret pe			;89fc
	rst 38h			;89fd
	rla			;89fe
	ret pe			;89ff
	ret z			;8a00
	ccf			;8a01
	jr nc,l8a04h		;8a02
l8a04h:
	adc a,l			;8a04
	nop			;8a05
	ld (hl),d		;8a06
	adc a,l			;8a07
	dec c			;8a08
	rst 38h			;8a09
	rst 38h			;8a0a
	rst 38h			;8a0b
	ld b,a			;8a0c
	rst 38h			;8a0d
	inc a			;8a0e
	rst 38h			;8a0f
	ld a,a			;8a10
	rst 38h			;8a11
	add a,c			;8a12
	nop			;8a13
	ld a,b			;8a14
	add a,b			;8a15
	ld l,a			;8a16
	sub b			;8a17
	ld b,b			;8a18
	rst 38h			;8a19
	jr $-23			;8a1a
	rst 38h			;8a1c
	ei			;8a1d
	rst 38h			;8a1e
	rst 38h			;8a1f
	rst 38h			;8a20
	rst 38h			;8a21
	ld sp,hl		;8a22
	rst 38h			;8a23
	rst 38h			;8a24
	rst 38h			;8a25
	rst 38h			;8a26
	rst 38h			;8a27
	rst 38h			;8a28
	rst 38h			;8a29
	rst 38h			;8a2a
	rst 38h			;8a2b
	rst 38h			;8a2c
	rst 38h			;8a2d
	rst 38h			;8a2e
	rst 38h			;8a2f
	rst 38h			;8a30
	rst 38h			;8a31
	rrca			;8a32
	rst 38h			;8a33
	ret nz			;8a34
	rst 38h			;8a35
	rst 38h			;8a36
	rst 38h			;8a37
	rst 38h			;8a38
	rst 38h			;8a39
	rst 38h			;8a3a
	rst 38h			;8a3b
	rst 38h			;8a3c
	rst 38h			;8a3d
	rst 38h			;8a3e
	rst 38h			;8a3f
	rst 38h			;8a40
	rst 38h			;8a41
	call p,0ffffh		;8a42
	rst 38h			;8a45
	sub a			;8a46
	rst 38h			;8a47
	rst 38h			;8a48
	rst 38h			;8a49
	rst 38h			;8a4a
	rst 38h			;8a4b
	rst 38h			;8a4c
	rst 38h			;8a4d
	rst 38h			;8a4e
	rst 38h			;8a4f
	rst 38h			;8a50
	rst 38h			;8a51
	adc a,d			;8a52
	ld (hl),l		;8a53
	ret nz			;8a54
	rst 38h			;8a55
	call m,0fdffh		;8a56
	cp 0feh			;8a59
	rst 38h			;8a5b
	defb 0fdh,0ffh,0fah ;illegal sequence	;8a5c
	defb 0fdh,0fdh,0ffh ;illegal sequence	;8a5f
	ret nz			;8a62
	nop			;8a63
	ccf			;8a64
	ret nz			;8a65
	adc a,h			;8a66
	di			;8a67
	cpl			;8a68
	ret nc			;8a69
	ld (hl),c		;8a6a
	adc a,(hl)		;8a6b
	ld b,b			;8a6c
	cp a			;8a6d
	sbc a,e			;8a6e
	ld a,h			;8a6f
	ex af,af'		;8a70
	rst 38h			;8a71
	jp z,04b07h		;8a72
sub_8a75h:
	add a,a			;8a75
	rlc a			;8a76
	ld c,e			;8a78
	add a,a			;8a79
	call nz,0e303h		;8a7a
	nop			;8a7d
	ld (hl),b		;8a7e
	add a,b			;8a7f
	ret c			;8a80
	nop			;8a81
	ret z			;8a82
	ret p			;8a83
	jp pe,0eaf0h		;8a84
	ret p			;8a87
	xor e			;8a88
	ret p			;8a89
	jp nc,034e1h		;8a8a
	jp 00384h		;8a8d
	dec bc			;8a90
	inc b			;8a91
	sbc a,e			;8a92
	rlca			;8a93
	call p,08903h		;8a94
	halt			;8a97
	or (hl)			;8a98
	ld a,a			;8a99
	ld l,a			;8a9a
	rst 38h			;8a9b
	rst 10h			;8a9c
	rst 28h			;8a9d
	xor e			;8a9e
	rst 30h			;8a9f
	ld d,a			;8aa0
	cp a			;8aa1
	ret			;8aa2
	rst 30h			;8aa3
	scf			;8aa4
	rst 8			;8aa5
	adc a,a			;8aa6
	ld a,a			;8aa7
	ld a,a			;8aa8
	rst 38h			;8aa9
	rst 38h			;8aaa
	rst 38h			;8aab
	rst 38h			;8aac
	rst 38h			;8aad
	rst 38h			;8aae
	rst 38h			;8aaf
	rst 38h			;8ab0
	rst 38h			;8ab1
	rst 38h			;8ab2
	rst 38h			;8ab3
	rst 38h			;8ab4
	rst 38h			;8ab5
	rst 38h			;8ab6
	rst 38h			;8ab7
	rst 38h			;8ab8
	rst 38h			;8ab9
	rst 38h			;8aba
	rst 38h			;8abb
	rst 38h			;8abc
	rst 38h			;8abd
	rst 38h			;8abe
	rst 38h			;8abf
	rst 38h			;8ac0
	rst 38h			;8ac1
	rst 38h			;8ac2
	rst 38h			;8ac3
	rst 38h			;8ac4
	rst 38h			;8ac5
	ret m			;8ac6
	rst 38h			;8ac7
	ret m			;8ac8
	rst 38h			;8ac9
	di			;8aca
	rst 38h			;8acb
	rst 38h			;8acc
	rst 38h			;8acd
	rst 38h			;8ace
	rst 38h			;8acf
	rst 38h			;8ad0
	rst 38h			;8ad1
	rst 38h			;8ad2
	rst 38h			;8ad3
	rst 38h			;8ad4
	rst 38h			;8ad5
	ld bc,033ffh		;8ad6
	rst 38h			;8ad9
	rst 38h			;8ada
	rst 38h			;8adb
	ret p			;8adc
	rst 38h			;8add
	rst 28h			;8ade
	ret p			;8adf
	ret c			;8ae0
	rst 20h			;8ae1
	ld sp,hl		;8ae2
	rst 38h			;8ae3
	rst 38h			;8ae4
	rst 38h			;8ae5
	rst 38h			;8ae6
	rst 38h			;8ae7
	rst 38h			;8ae8
	rst 38h			;8ae9
	call m,0f3ffh		;8aea
	rst 38h			;8aed
	ld l,a			;8aee
	rst 38h			;8aef
	ld a,b			;8af0
	rst 38h			;8af1
	sub 0f9h		;8af2
	ld sp,hl		;8af4
	rst 38h			;8af5
	rst 38h			;8af6
	rst 38h			;8af7
	xor a			;8af8
	rst 38h			;8af9
	rst 38h			;8afa
	rst 38h			;8afb
	pop bc			;8afc
	rst 38h			;8afd
	ld a,0c1h		;8afe
	ld a,a			;8b00
	add a,b			;8b01
	ccf			;8b02
	rst 38h			;8b03
	rst 38h			;8b04
	rst 38h			;8b05
	rst 38h			;8b06
	rst 38h			;8b07
	rst 38h			;8b08
	rst 38h			;8b09
	rst 38h			;8b0a
	rst 38h			;8b0b
	rst 30h			;8b0c
	rst 38h			;8b0d
	xor e			;8b0e
	rst 30h			;8b0f
	ld d,a			;8b10
	cp a			;8b11
	rst 38h			;8b12
	rst 38h			;8b13
	rst 38h			;8b14
	rst 38h			;8b15
	rst 38h			;8b16
	rst 38h			;8b17
	rst 38h			;8b18
	rst 38h			;8b19
	rst 38h			;8b1a
	rst 38h			;8b1b
	rst 38h			;8b1c
	rst 38h			;8b1d
	rst 38h			;8b1e
	rst 38h			;8b1f
	rra			;8b20
	rst 38h			;8b21
	rst 38h			;8b22
	rst 38h			;8b23
	rst 38h			;8b24
	rst 38h			;8b25
	rst 38h			;8b26
	rst 38h			;8b27
	rst 38h			;8b28
	rst 38h			;8b29
	rst 38h			;8b2a
	rst 38h			;8b2b
	rst 38h			;8b2c
	rst 38h			;8b2d
	rst 38h			;8b2e
	rst 38h			;8b2f
	inc hl			;8b30
	rst 38h			;8b31
	rst 38h			;8b32
	rst 38h			;8b33
	rst 38h			;8b34
	rst 38h			;8b35
	rst 38h			;8b36
	rst 38h			;8b37
	rst 38h			;8b38
	rst 38h			;8b39
	push hl			;8b3a
	rst 38h			;8b3b
	sbc a,a			;8b3c
	rst 38h			;8b3d
	cp 0ffh			;8b3e
	ld bc,0fffeh		;8b40
	rst 38h			;8b43
	rst 38h			;8b44
	rst 38h			;8b45
	rst 38h			;8b46
	rst 38h			;8b47
	ld e,(hl)		;8b48
	rst 38h			;8b49
	rst 8			;8b4a
	rst 38h			;8b4b
	sbc a,h			;8b4c
	rst 38h			;8b4d
	ld (hl),b		;8b4e
	rst 38h			;8b4f
	adc a,a			;8b50
	ld (hl),b		;8b51
	defb 0fdh,0feh,0c9h ;illegal sequence	;8b52
	cp 0e0h			;8b55
	rst 38h			;8b57
	rst 0			;8b58
	ret m			;8b59
	ld a,0c0h		;8b5a
	pop de			;8b5c
	nop			;8b5d
	sub b			;8b5e
	inc bc			;8b5f
	ld a,l			;8b60
	add a,d			;8b61
	xor 000h		;8b62
	ld a,a			;8b64
	add a,b			;8b65
	ret z			;8b66
	nop			;8b67
	nop			;8b68
	nop			;8b69
	nop			;8b6a
	nop			;8b6b
	ld h,b			;8b6c
	nop			;8b6d
	ret nz			;8b6e
	nop			;8b6f
	add a,h			;8b70
	nop			;8b71
	call p,0db03h		;8b72
	inc h			;8b75
	and h			;8b76
	nop			;8b77
	nop			;8b78
	nop			;8b79
l8b7ah:
	nop			;8b7a
	nop			;8b7b
	nop			;8b7c
	nop			;8b7d
	add hl,de		;8b7e
	nop			;8b7f
	ld h,(hl)		;8b80
	jr $-66			;8b81
	rst 38h			;8b83
	and l			;8b84
	ld a,(hl)		;8b85
	ld e,d			;8b86
	daa			;8b87
	inc h			;8b88
	inc bc			;8b89
	inc bc			;8b8a
	nop			;8b8b
	ld h,d			;8b8c
	inc b			;8b8d
	sub c			;8b8e
	ld c,06ch		;8b8f
	inc bc			;8b91
	add hl,hl		;8b92
	rst 18h			;8b93
	sbc a,a			;8b94
	ld a,a			;8b95
	ld a,l			;8b96
	rst 8			;8b97
	ld c,(hl)		;8b98
	add a,l			;8b99
	add a,l			;8b9a
	nop			;8b9b
	adc a,005h		;8b9c
	add hl,sp		;8b9e
	rst 8			;8b9f
	ld h,a			;8ba0
	sbc a,b			;8ba1
	rst 38h			;8ba2
	rst 38h			;8ba3
	rst 38h			;8ba4
	rst 38h			;8ba5
	ld a,a			;8ba6
	rst 38h			;8ba7
	sbc a,07fh		;8ba8
	ld c,b			;8baa
	ld a,a			;8bab
	sub a			;8bac
	ld a,b			;8bad
	ret m			;8bae
	djnz l8bc8h		;8baf
l8bb1h:
	ex af,af'		;8bb1
	defb 0fdh,0feh,0c9h ;illegal sequence	;8bb2
	cp 0e0h			;8bb5
	rst 38h			;8bb7
	rst 0			;8bb8
	ret m			;8bb9
	ld a,0c0h		;8bba
	ld d,c			;8bbc
	add a,b			;8bbd
	sub b			;8bbe
	inc bc			;8bbf
	ld l,l			;8bc0
	sub d			;8bc1
	rst 8			;8bc2
	rst 38h			;8bc3
	or a			;8bc4
	rst 8			;8bc5
	ld c,d			;8bc6
	add a,a			;8bc7
l8bc8h:
	xor l			;8bc8
	ld b,d			;8bc9
	ld d,d			;8bca
	jr nz,l8b7ah		;8bcb
	ld (hl),d		;8bcd
	ld h,b			;8bce
	rst 38h			;8bcf
	out (0fch),a		;8bd0
	rst 38h			;8bd2
	rst 38h			;8bd3
	cp 0ffh			;8bd4
	defb 0fdh,0feh,01eh ;illegal sequence	;8bd6
	rst 38h			;8bd9
	rst 18h			;8bda
	ccf			;8bdb
	and a			;8bdc
	rra			;8bdd
	ld a,d			;8bde
	add a,a			;8bdf
	push hl			;8be0
	ld e,0d7h		;8be1
	rst 28h			;8be3
	cpl			;8be4
	rst 18h			;8be5
	rst 30h			;8be6
	rrca			;8be7
	jr c,l8bb1h		;8be8
	rst 8			;8bea
	ret p			;8beb
	ccf			;8bec
	ret nz			;8bed
	ld a,(hl)		;8bee
	add a,c			;8bef
	push hl			;8bf0
	dec de			;8bf1
	di			;8bf2
	call m,0f0efh		;8bf3
	exx			;8bf6
	and 03ah		;8bf7
	push bc			;8bf9
	push af			;8bfa
	dec bc			;8bfb
	dec l			;8bfc
	in a,(081h)		;8bfd
	rst 38h			;8bff
	rrca			;8c00
	rst 38h			;8c01
	call p,0cb0bh		;8c02
	ccf			;8c05
	ccf			;8c06
	rst 38h			;8c07
	rst 38h			;8c08
	rst 38h			;8c09
	rst 38h			;8c0a
	rst 38h			;8c0b
	call m,0f1ffh		;8c0c
	cp 0ceh			;8c0f
	ret p			;8c11
	cp h			;8c12
	rst 38h			;8c13
	ei			;8c14
	rst 38h			;8c15
	rst 38h			;8c16
	rst 38h			;8c17
	cp 0ffh			;8c18
	sbc a,c			;8c1a
	cp 06ah			;8c1b
	sbc a,h			;8c1d
	sub c			;8c1e
	ld c,008h		;8c1f
	rlca			;8c21
	ld a,e			;8c22
	rst 38h			;8c23
	rst 38h			;8c24
	rst 38h			;8c25
	ret p			;8c26
	rst 38h			;8c27
	ld b,l			;8c28
	jp m,04fb1h		;8c29
	ld c,a			;8c2c
	ccf			;8c2d
	cp (hl)			;8c2e
	ld a,a			;8c2f
	ld (hl),a		;8c30
	rst 38h			;8c31
	cp a			;8c32
	rst 38h			;8c33
	rst 38h			;8c34
	rst 38h			;8c35
	sbc a,a			;8c36
	rst 38h			;8c37
	ld l,c			;8c38
	sbc a,a			;8c39
	add a,(hl)		;8c3a
l8c3bh:
	ld sp,hl		;8c3b
	exx			;8c3c
	rst 38h			;8c3d
	cp 0ffh			;8c3e
	rst 38h			;8c40
	rst 38h			;8c41
	rst 38h			;8c42
	rst 38h			;8c43
	rst 38h			;8c44
	rst 38h			;8c45
	rst 38h			;8c46
	rst 38h			;8c47
	rst 38h			;8c48
	rst 38h			;8c49
	ld a,a			;8c4a
	rst 38h			;8c4b
	and a			;8c4c
	rst 38h			;8c4d
	inc sp			;8c4e
	rst 8			;8c4f
	jp 0dcffh		;8c50
	inc hl			;8c53
	ld (l80ffh),hl		;8c54
	rst 38h			;8c57
	ld a,(hl)		;8c58
	add a,c			;8c59
	add a,c			;8c5a
	nop			;8c5b
	nop			;8c5c
	nop			;8c5d
	nop			;8c5e
	nop			;8c5f
	ret nz			;8c60
	nop			;8c61
	jr nz,$+1		;8c62
l8c64h:
	adc a,03fh		;8c64
	ccf			;8c66
	rst 38h			;8c67
	ld (bc),a		;8c68
	rst 38h			;8c69
	defb 0fdh,002h,006h ;illegal sequence	;8c6a
	nop			;8c6d
	nop			;8c6e
	nop			;8c6f
	nop			;8c70
	nop			;8c71
	jr c,l8c3bh		;8c72
	ld b,e			;8c74
	call m,0f6f9h		;8c75
	ld (bc),a		;8c78
	call m,01ee1h		;8c79
	rra			;8c7c
	nop			;8c7d
	nop			;8c7e
	nop			;8c7f
	nop			;8c80
	nop			;8c81
	jr l8c64h		;8c82
	ld (hl),c		;8c84
	add a,b			;8c85
	adc a,(hl)		;8c86
	ld bc,00877h		;8c87
	cp b			;8c8a
	ld b,b			;8c8b
	ret po			;8c8c
	nop			;8c8d
	nop			;8c8e
	nop			;8c8f
	nop			;8c90
	nop			;8c91
	ld de,0e7e0h		;8c92
	nop			;8c95
	ex af,af'		;8c96
	rlca			;8c97
	ld d,00fh		;8c98
	ld hl,0161eh		;8c9a
	ex af,af'		;8c9d
	ld e,b			;8c9e
	nop			;8c9f
l8ca0h:
	rlca			;8ca0
	nop			;8ca1
	sub d			;8ca2
	inc c			;8ca3
	ld h,l			;8ca4
	sbc a,(hl)		;8ca5
	adc a,b			;8ca6
	rst 38h			;8ca7
	ld b,a			;8ca8
	ret m			;8ca9
	cp b			;8caa
	ld b,b			;8cab
	ld b,b			;8cac
	nop			;8cad
	nop			;8cae
	nop			;8caf
	add a,b			;8cb0
	nop			;8cb1
	add a,c			;8cb2
	ld a,(hl)		;8cb3
	ld e,0e1h		;8cb4
	ld a,c			;8cb6
	add a,b			;8cb7
	add a,b			;8cb8
	nop			;8cb9
	nop			;8cba
	nop			;8cbb
	inc bc			;8cbc
	nop			;8cbd
	ld a,001h		;8cbe
	ret nz			;8cc0
	ccf			;8cc1
	jp m,0fc05h		;8cc2
	inc bc			;8cc5
	rlca			;8cc6
	nop			;8cc7
	nop			;8cc8
	nop			;8cc9
	rrca			;8cca
	nop			;8ccb
	ret p			;8ccc
	rrca			;8ccd
	nop			;8cce
	rst 38h			;8ccf
	rst 38h			;8cd0
	rst 38h			;8cd1
	sbc a,c			;8cd2
	nop			;8cd3
	ld h,(hl)		;8cd4
	sbc a,c			;8cd5
	ret po			;8cd6
	rra			;8cd7
	or (hl)			;8cd8
	add hl,bc		;8cd9
	jp (hl)			;8cda
	nop			;8cdb
	ret nz			;8cdc
	nop			;8cdd
	jr nc,l8ca0h		;8cde
	adc a,a			;8ce0
	ret p			;8ce1
	call pe,02213h		;8ce2
	rst 38h			;8ce5
	add a,b			;8ce6
	rst 38h			;8ce7
	ld a,(hl)		;8ce8
	add a,c			;8ce9
	add a,c			;8cea
	nop			;8ceb
	nop			;8cec
	nop			;8ced
	nop			;8cee
	nop			;8cef
	ret nz			;8cf0
	nop			;8cf1
	ld (de),a		;8cf2
	rst 38h			;8cf3
	defb 0fdh,0feh,0c2h ;illegal sequence	;8cf4
	call m,0c03dh		;8cf7
	pop bc			;8cfa
	nop			;8cfb
	ld (bc),a		;8cfc
	ld bc,00305h		;8cfd
l8d00h:
	inc b			;8d00
	inc bc			;8d01
	inc l			;8d02
	ret nc			;8d03
	ret nc			;8d04
	nop			;8d05
	inc bc			;8d06
	nop			;8d07
	call nz,03903h		;8d08
	add a,0b1h		;8d0b
	adc a,048h		;8d0d
	add a,a			;8d0f
	daa			;8d10
	ret nz			;8d11
	jr nc,l8d14h		;8d12
l8d14h:
	dec bc			;8d14
	nop			;8d15
	ld (bc),a		;8d16
	ld bc,000ffh		;8d17
	ld a,b			;8d1a
	nop			;8d1b
	nop			;8d1c
	nop			;8d1d
	add a,c			;8d1e
	nop			;8d1f
	add a,d			;8d20
	ld bc,0a34dh		;8d21
	exx			;8d24
	daa			;8d25
	and (hl)		;8d26
	ld b,c			;8d27
	ld b,c			;8d28
	nop			;8d29
	ld a,001h		;8d2a
	ld b,b			;8d2c
	ccf			;8d2d
	sbc a,(hl)		;8d2e
	ld a,a			;8d2f
	ld l,a			;8d30
	rst 38h			;8d31
	jr nz,$+1		;8d32
	call 012f2h		;8d34
	ret po			;8d37
	ld l,b			;8d38
	add a,b			;8d39
	add a,b			;8d3a
	nop			;8d3b
	ld b,b			;8d3c
	add a,b			;8d3d
	jr c,l8d00h		;8d3e
l8d40h:
	adc a,h			;8d40
	ret p			;8d41
	sub e			;8d42
	rrca			;8d43
	ld h,a			;8d44
	sbc a,a			;8d45
	adc a,b			;8d46
	rst 38h			;8d47
	ld b,a			;8d48
	ret m			;8d49
	cp b			;8d4a
	ld b,b			;8d4b
	ld b,b			;8d4c
	nop			;8d4d
	nop			;8d4e
	nop			;8d4f
	add a,b			;8d50
	nop			;8d51
	pop bc			;8d52
	rst 38h			;8d53
	sbc a,(hl)		;8d54
	pop hl			;8d55
	ld a,c			;8d56
	add a,b			;8d57
	add a,b			;8d58
	nop			;8d59
	nop			;8d5a
	nop			;8d5b
	inc bc			;8d5c
	nop			;8d5d
	ld a,001h		;8d5e
	pop bc			;8d60
	ccf			;8d61
	inc bc			;8d62
	ei			;8d63
	ret m			;8d64
	rlca			;8d65
	rlca			;8d66
	nop			;8d67
	nop			;8d68
	nop			;8d69
	rrca			;8d6a
	nop			;8d6b
	ret p			;8d6c
	rrca			;8d6d
	inc b			;8d6e
	rst 38h			;8d6f
	rst 38h			;8d70
	rst 38h			;8d71
	sbc a,0ffh		;8d72
	rlca			;8d74
	rst 38h			;8d75
	ret po			;8d76
	rra			;8d77
l8d78h:
	or (hl)			;8d78
	add hl,bc		;8d79
	jp (hl)			;8d7a
	nop			;8d7b
	ret nz			;8d7c
	nop			;8d7d
	jr nc,l8d40h		;8d7e
	rst 8			;8d80
	ret p			;8d81
	ld a,0c0h		;8d82
	jp 07cfch		;8d84
	rst 38h			;8d87
	call m,00303h		;8d88
	nop			;8d8b
	nop			;8d8c
	nop			;8d8d
	nop			;8d8e
	nop			;8d8f
	ret p			;8d90
	nop			;8d91
	nop			;8d92
	nop			;8d93
	ret po			;8d94
	nop			;8d95
	jr l8d78h		;8d96
	call po,074f8h		;8d98
	ret m			;8d9b
	xor b			;8d9c
	ld (hl),b		;8d9d
	ld d,b			;8d9e
	jr nz,l8dc1h		;8d9f
	nop			;8da1
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
	ld b,b			;8dac
	nop			;8dad
	jr nz,l8db0h		;8dae
l8db0h:
	jr nc,l8db2h		;8db0
l8db2h:
	nop			;8db2
	nop			;8db3
	nop			;8db4
	nop			;8db5
	nop			;8db6
	nop			;8db7
	ld a,h			;8db8
	nop			;8db9
	jp nz,l813ch		;8dba
	ld a,(hl)		;8dbd
	jp 06e3ch		;8dbe
l8dc1h:
	djnz l8dd0h		;8dc1
	ld (bc),a		;8dc3
	ld (hl),c		;8dc4
	ld c,0aah		;8dc5
	inc e			;8dc7
	inc h			;8dc8
	jr l8de3h		;8dc9
	nop			;8dcb
	inc c			;8dcc
	nop			;8dcd
	nop			;8dce
	nop			;8dcf
l8dd0h:
	jr nz,l8dd2h		;8dd0
l8dd2h:
	add a,e			;8dd2
	nop			;8dd3
	inc c			;8dd4
	inc bc			;8dd5
	ld sp,0470fh		;8dd6
	ccf			;8dd9
	sbc a,l			;8dda
	ld a,a			;8ddb
	adc a,d			;8ddc
	ld a,a			;8ddd
	ld b,c			;8dde
	ld a,03ch		;8ddf
	nop			;8de1
	rra			;8de2
l8de3h:
	rst 38h			;8de3
	ld (hl),b		;8de4
	rst 38h			;8de5
	rst 0			;8de6
	ret m			;8de7
	ret c			;8de8
	rst 20h			;8de9
	or l			;8dea
	adc a,057h		;8deb
	adc a,h			;8ded
	sub d			;8dee
	inc c			;8def
	inc a			;8df0
	nop			;8df1
	sbc a,a			;8df2
	rst 38h			;8df3
	ld l,a			;8df4
	sub c			;8df5
	ld (de),a		;8df6
	pop hl			;8df7
	ld h,l			;8df8
	add a,e			;8df9
	add a,l			;8dfa
	inc bc			;8dfb
	ld (bc),a		;8dfc
	ld bc,00001h		;8dfd
	nop			;8e00
	nop			;8e01
l8e02h:
	jr nz,$+1		;8e02
	rst 18h			;8e04
	ccf			;8e05
	jr c,$+1		;8e06
	di			;8e08
	call m,0f0cch		;8e09
	or b			;8e0c
	ret nz			;8e0d
	ld b,e			;8e0e
	add a,b			;8e0f
l8e10h:
	call nz,03e03h		;8e10
	ret nz			;8e13
	call 002f2h		;8e14
	or c			;8e17
	defb 0fdh,002h,003h ;illegal sequence	;8e18
	nop			;8e1b
	nop			;8e1c
	nop			;8e1d
	ret m			;8e1e
	nop			;8e1f
	ld b,0f8h		;8e20
	add a,e			;8e22
	nop			;8e23
	ret p			;8e24
	nop			;8e25
	adc a,(hl)		;8e26
	ld (hl),b		;8e27
	ld h,c			;8e28
	ld e,0d2h		;8e29
	rrca			;8e2b
	xor l			;8e2c
	ld b,e			;8e2d
	ld e,d			;8e2e
	ld hl,01825h		;8e2f
	ret nz			;8e32
	nop			;8e33
	djnz l8e36h		;8e34
l8e36h:
	ld e,b			;8e36
	nop			;8e37
	ld sp,hl		;8e38
	nop			;8e39
	inc hl			;8e3a
	ret nz			;8e3b
	ld b,c			;8e3c
	add a,b			;8e3d
	ld b,c			;8e3e
	add a,b			;8e3f
	jr c,l8e02h		;8e40
	inc b			;8e42
	inc bc			;8e43
	inc b			;8e44
	inc bc			;8e45
	jp po,03101h		;8e46
	ret nz			;8e49
	ld c,c			;8e4a
	ret p			;8e4b
	ld c,b			;8e4c
	ret p			;8e4d
	jr nc,l8e10h		;8e4e
	ret nz			;8e50
	nop			;8e51
	cp a			;8e52
	rst 38h			;8e53
	cp a			;8e54
	rst 38h			;8e55
	rst 18h			;8e56
	rst 38h			;8e57
	ld l,a			;8e58
	rst 38h			;8e59
	add a,l			;8e5a
	ld a,a			;8e5b
	ld c,b			;8e5c
	scf			;8e5d
	daa			;8e5e
	nop			;8e5f
	ld b,b			;8e60
	nop			;8e61
	add a,0f8h		;8e62
	ex (sp),hl		;8e64
	call m,0fcf3h		;8e65
	di			;8e68
	call m,0fcc2h		;8e69
	inc e			;8e6c
	ret po			;8e6d
	ret po			;8e6e
	nop			;8e6f
	inc bc			;8e70
	nop			;8e71
	dec c			;8e72
	ld (bc),a		;8e73
l8e74h:
	ld (hl),c		;8e74
	ld c,02ah		;8e75
	inc e			;8e77
	inc h			;8e78
	jr l8e93h		;8e79
	nop			;8e7b
	inc c			;8e7c
	nop			;8e7d
	nop			;8e7e
	nop			;8e7f
	nop			;8e80
	nop			;8e81
	add a,e			;8e82
	nop			;8e83
	inc c			;8e84
	inc bc			;8e85
	inc sp			;8e86
	rrca			;8e87
	ld c,a			;8e88
	ccf			;8e89
	sbc a,l			;8e8a
	ld a,a			;8e8b
	sbc a,d			;8e8c
	ld a,a			;8e8d
	ld b,c			;8e8e
	ld a,03ch		;8e8f
	nop			;8e91
	ccf			;8e92
l8e93h:
	rst 38h			;8e93
	ret p			;8e94
	rst 38h			;8e95
	rst 0			;8e96
	ret m			;8e97
	ret c			;8e98
	rst 20h			;8e99
	or l			;8e9a
	adc a,057h		;8e9b
	adc a,h			;8e9d
	sub d			;8e9e
	inc c			;8e9f
	inc a			;8ea0
	nop			;8ea1
	ret m			;8ea2
	rst 38h			;8ea3
	rst 38h			;8ea4
	ccf			;8ea5
	ret nz			;8ea6
	rst 38h			;8ea7
	cp a			;8ea8
	ret nz			;8ea9
	ld b,h			;8eaa
	add a,b			;8eab
	add a,b			;8eac
	nop			;8ead
	add a,b			;8eae
	nop			;8eaf
	add a,a			;8eb0
	nop			;8eb1
	jr nc,l8e74h		;8eb2
	ret nz			;8eb4
	nop			;8eb5
	nop			;8eb6
	nop			;8eb7
	nop			;8eb8
	nop			;8eb9
	nop			;8eba
	nop			;8ebb
	inc b			;8ebc
	nop			;8ebd
	jr l8ec0h		;8ebe
l8ec0h:
	nop			;8ec0
	nop			;8ec1
	jr nz,l8ec4h		;8ec2
l8ec4h:
	ld d,b			;8ec4
	jr nz,$+122		;8ec5
	nop			;8ec7
	nop			;8ec8
	nop			;8ec9
	nop			;8eca
	nop			;8ecb
	nop			;8ecc
	nop			;8ecd
l8eceh:
	nop			;8ece
	nop			;8ecf
	inc bc			;8ed0
	nop			;8ed1
	sub c			;8ed2
	nop			;8ed3
	ld l,(hl)		;8ed4
	ld de,02e51h		;8ed5
	ld l,000h		;8ed8
	ld (bc),a		;8eda
	nop			;8edb
	ld bc,00000h		;8edc
	nop			;8edf
	ret po			;8ee0
	nop			;8ee1
	ld l,b			;8ee2
	nop			;8ee3
	ret z			;8ee4
	nop			;8ee5
	sub h			;8ee6
	ex af,af'		;8ee7
	inc d			;8ee8
	ex af,af'		;8ee9
	inc h			;8eea
	jr l8f11h		;8eeb
	jr l8f11h		;8eed
	inc e			;8eef
	dec e			;8ef0
	nop			;8ef1
	inc de			;8ef2
	nop			;8ef3
	inc e			;8ef4
	inc bc			;8ef5
	inc bc			;8ef6
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
	rst 38h			;8f04
	nop			;8f05
	add a,a			;8f06
	ld a,b			;8f07
	ld a,b			;8f08
	nop			;8f09
	nop			;8f0a
	nop			;8f0b
	nop			;8f0c
	nop			;8f0d
	inc bc			;8f0e
	nop			;8f0f
	sbc a,a			;8f10
l8f11h:
	nop			;8f11
	call p,0d400h		;8f12
	ex af,af'		;8f15
	jr z,l8f28h		;8f16
	jr z,l8f2ah		;8f18
	ld c,b			;8f1a
	jr nc,l8eceh		;8f1b
	ld b,b			;8f1d
	pop de			;8f1e
	nop			;8f1f
	or e			;8f20
	nop			;8f21
	ld bc,00e00h		;8f22
	ld bc,00815h		;8f25
l8f28h:
	dec de			;8f28
	nop			;8f29
l8f2ah:
	ld (hl),c		;8f2a
	nop			;8f2b
	ret c			;8f2c
	nop			;8f2d
	adc a,b			;8f2e
	nop			;8f2f
	jr nc,l8f32h		;8f30
l8f32h:
	adc a,b			;8f32
	rlca			;8f33
	adc a,c			;8f34
	rlca			;8f35
	adc a,c			;8f36
	rlca			;8f37
	adc a,h			;8f38
	inc bc			;8f39
	ld b,(hl)		;8f3a
	add a,c			;8f3b
	ld d,c			;8f3c
	nop			;8f3d
	jr nz,l8f40h		;8f3e
l8f40h:
	nop			;8f40
	nop			;8f41
	ld sp,hl		;8f42
	cp 0feh			;8f43
	rst 38h			;8f45
	rst 38h			;8f46
	rst 38h			;8f47
	rst 38h			;8f48
	rst 38h			;8f49
	inc a			;8f4a
	rst 38h			;8f4b
	add a,b			;8f4c
	ld a,a			;8f4d
	rst 20h			;8f4e
	jr l8f8dh		;8f4f
	nop			;8f51
	inc d			;8f52
	ex af,af'		;8f53
	sub d			;8f54
	inc c			;8f55
	ld c,d			;8f56
	add a,h			;8f57
	ld c,d			;8f58
	add a,h			;8f59
	ld c,d			;8f5a
	add a,h			;8f5b
	call z,sub_8400h	;8f5c
	ex af,af'		;8f5f
	jr l8f62h		;8f60
l8f62h:
	add a,h			;8f62
	ld a,b			;8f63
	ld d,h			;8f64
	jr c,l8f9fh		;8f65
	nop			;8f67
	jr l8f6ah		;8f68
l8f6ah:
	nop			;8f6a
	nop			;8f6b
	ld bc,04200h		;8f6c
	nop			;8f6f
	jr nz,l8f72h		;8f70
l8f72h:
	ld bc,00f00h		;8f72
	nop			;8f75
	dec d			;8f76
	ex af,af'		;8f77
	dec de			;8f78
	nop			;8f79
	ld sp,01800h		;8f7a
	nop			;8f7d
	inc sp			;8f7e
	nop			;8f7f
	ld c,h			;8f80
	jr nc,l8f8bh		;8f81
	nop			;8f83
	jp z,l9500h		;8f84
	ld a,(bc)		;8f87
	ld a,(bc)		;8f88
	rlca			;8f89
	dec bc			;8f8a
l8f8bh:
	rlca			;8f8b
	inc d			;8f8c
l8f8dh:
	rrca			;8f8d
	ld (01d1dh),hl		;8f8e
	nop			;8f91
	dec l			;8f92
	ld (bc),a		;8f93
	jp nc,0072fh		;8f94
	rst 38h			;8f97
	call m,0e3ffh		;8f98
	call m,0e09ch		;8f9b
	ld h,b			;8f9e
l8f9fh:
	add a,b			;8f9f
	nop			;8fa0
	nop			;8fa1
	add a,b			;8fa2
	nop			;8fa3
	ret nz			;8fa4
	nop			;8fa5
	ld b,b			;8fa6
	add a,b			;8fa7
	ret nz			;8fa8
	nop			;8fa9
	add a,b			;8faa
	nop			;8fab
	inc bc			;8fac
	nop			;8fad
	inc c			;8fae
	inc bc			;8faf
	ld (de),a		;8fb0
	rrca			;8fb1
	nop			;8fb2
	nop			;8fb3
	nop			;8fb4
	nop			;8fb5
	ld bc,00e00h		;8fb6
	ld bc,00e11h		;8fb9
	ld e,000h		;8fbc
	sub b			;8fbe
	nop			;8fbf
	and b			;8fc0
	nop			;8fc1
	ld (hl),b		;8fc2
	nop			;8fc3
	ld e,000h		;8fc4
	pop hl			;8fc6
	nop			;8fc7
	nop			;8fc8
	ret nz			;8fc9
	ret po			;8fca
	nop			;8fcb
	ld e,h			;8fcc
	jr nz,l9007h		;8fcd
	nop			;8fcf
	ld b,b			;8fd0
	nop			;8fd1
	nop			;8fd2
	nop			;8fd3
	nop			;8fd4
	nop			;8fd5
	ret nz			;8fd6
	nop			;8fd7
	ld (hl),h		;8fd8
	nop			;8fd9
l8fdah:
	jr nc,l8fdch		;8fda
l8fdch:
	jr l8fdeh		;8fdc
l8fdeh:
	ex af,af'		;8fde
	nop			;8fdf
	ex af,af'		;8fe0
	nop			;8fe1
	inc b			;8fe2
	inc bc			;8fe3
	inc bc			;8fe4
	nop			;8fe5
	nop			;8fe6
	nop			;8fe7
	jr nz,l8feah		;8fe8
l8feah:
	djnz l8fech		;8fea
l8fech:
	nop			;8fec
	nop			;8fed
	nop			;8fee
	nop			;8fef
	nop			;8ff0
	nop			;8ff1
	nop			;8ff2
	nop			;8ff3
	nop			;8ff4
	nop			;8ff5
	nop			;8ff6
	nop			;8ff7
	nop			;8ff8
	nop			;8ff9
	nop			;8ffa
	nop			;8ffb
	nop			;8ffc
	nop			;8ffd
	nop			;8ffe
	nop			;8fff
l9000h:
	nop			;9000
	nop			;9001
	inc c			;9002
	inc bc			;9003
	ld de,0130fh		;9004
l9007h:
	rrca			;9007
	jr l9011h		;9008
	rlca			;900a
	nop			;900b
	nop			;900c
	nop			;900d
	nop			;900e
	nop			;900f
	nop			;9010
l9011h:
	nop			;9011
	inc e			;9012
	ret po			;9013
	add a,h			;9014
	ret p			;9015
	ret z			;9016
	ret p			;9017
	jr nc,l8fdah		;9018
	ret nz			;901a
	nop			;901b
	nop			;901c
	nop			;901d
	nop			;901e
	nop			;901f
	nop			;9020
	nop			;9021
	nop			;9022
	nop			;9023
	jp z,l9000h		;9024
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
	ld l,000h		;9032
	djnz l9036h		;9034
l9036h:
	nop			;9036
	nop			;9037
	nop			;9038
	nop			;9039
	nop			;903a
	nop			;903b
	nop			;903c
	nop			;903d
	nop			;903e
	nop			;903f
	nop			;9040
	nop			;9041
	ld a,(bc)		;9042
	nop			;9043
	ld b,000h		;9044
	ex af,af'		;9046
	nop			;9047
	ld bc,00000h		;9048
	nop			;904b
	nop			;904c
	nop			;904d
	nop			;904e
	nop			;904f
	nop			;9050
	nop			;9051
	inc (hl)		;9052
	nop			;9053
	dec hl			;9054
	inc d			;9055
	inc e			;9056
	rlca			;9057
	rra			;9058
	nop			;9059
	rlca			;905a
	nop			;905b
	nop			;905c
	nop			;905d
	nop			;905e
	nop			;905f
	nop			;9060
	nop			;9061
	ld h,b			;9062
	nop			;9063
	cp b			;9064
	ld b,b			;9065
	ld a,h			;9066
	add a,b			;9067
	ld h,000h		;9068
	add a,e			;906a
	nop			;906b
sub_906ch:
	ld h,b			;906c
	nop			;906d
	jr l9070h		;906e
l9070h:
	nop			;9070
l9071h:
	nop			;9071
	nop			;9072
	nop			;9073
	nop			;9074
	nop			;9075
	add a,e			;9076
	nop			;9077
	djnz l907ah		;9078
l907ah:
	nop			;907a
	nop			;907b
	nop			;907c
	nop			;907d
	add a,b			;907e
	nop			;907f
	nop			;9080
	nop			;9081
	jr c,l9084h		;9082
l9084h:
	ld h,b			;9084
	nop			;9085
	inc b			;9086
	nop			;9087
	nop			;9088
	nop			;9089
	nop			;908a
	nop			;908b
	nop			;908c
	nop			;908d
	nop			;908e
	nop			;908f
	nop			;9090
	nop			;9091
	and b			;9092
	nop			;9093
	pop bc			;9094
	nop			;9095
	ld (bc),a		;9096
	ld bc,0000fh		;9097
	jr c,l909ch		;909a
l909ch:
	nop			;909c
	nop			;909d
	nop			;909e
	nop			;909f
	nop			;90a0
	nop			;90a1
	inc h			;90a2
	jr l9071h		;90a3
	jr nc,l911fh		;90a5
	add a,b			;90a7
	add a,b			;90a8
	nop			;90a9
	nop			;90aa
	nop			;90ab
	nop			;90ac
	nop			;90ad
	nop			;90ae
	nop			;90af
	nop			;90b0
	nop			;90b1
	dec l			;90b2
	ld e,02ah		;90b3
	inc e			;90b5
	daa			;90b6
	jr l90d1h		;90b7
	nop			;90b9
	nop			;90ba
	nop			;90bb
	nop			;90bc
	nop			;90bd
	nop			;90be
	nop			;90bf
	nop			;90c0
	nop			;90c1
	jr nc,l90c4h		;90c2
l90c4h:
	ret nz			;90c4
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
l90d1h:
	nop			;90d1
	nop			;90d2
	nop			;90d3
	inc bc			;90d4
	nop			;90d5
	inc b			;90d6
	nop			;90d7
	nop			;90d8
	nop			;90d9
	nop			;90da
	nop			;90db
	nop			;90dc
	nop			;90dd
	nop			;90de
	nop			;90df
	nop			;90e0
	nop			;90e1
	jr nc,l90e4h		;90e2
l90e4h:
	ret po			;90e4
	nop			;90e5
	nop			;90e6
	nop			;90e7
	nop			;90e8
	nop			;90e9
	nop			;90ea
	nop			;90eb
	nop			;90ec
	nop			;90ed
	nop			;90ee
	nop			;90ef
	nop			;90f0
	nop			;90f1
	add hl,sp		;90f2
	cp 0d2h			;90f3
	inc a			;90f5
	dec l			;90f6
	djnz $+52		;90f7
	ld bc,013edh		;90f9
	add a,c			;90fc
	ld a,a			;90fd
	ld d,(hl)		;90fe
	add hl,hl		;90ff
	add hl,sp		;9100
	nop			;9101
	dec hl			;9102
	inc b			;9103
	jp nc,0210dh		;9104
	ld e,0c2h		;9107
	inc a			;9109
	inc l			;910a
	ret nc			;910b
	ld d,b			;910c
	add a,b			;910d
	ld b,b			;910e
	add a,b			;910f
	push bc			;9110
	nop			;9111
	inc c			;9112
	nop			;9113
	adc a,b			;9114
	nop			;9115
	nop			;9116
	nop			;9117
	jr l911ah		;9118
l911ah:
	call pe,00d10h		;911a
	ret p			;911d
	rlca			;911e
l911fh:
	ret m			;911f
	adc a,0f0h		;9120
	nop			;9122
	nop			;9123
	nop			;9124
	add a,b			;9125
	ret p			;9126
	nop			;9127
	ld b,d			;9128
	dec a			;9129
	ld l,010h		;912a
	ld a,(de)		;912c
	nop			;912d
	adc a,l			;912e
	nop			;912f
	adc a,000h		;9130
	ld c,a			;9132
	add a,b			;9133
	ld b,a			;9134
	add a,b			;9135
	ld c,e			;9136
	add a,b			;9137
	rst 0			;9138
	nop			;9139
	adc a,b			;913a
	nop			;913b
	sub b			;913c
	nop			;913d
	inc de			;913e
	nop			;913f
	inc h			;9140
	inc bc			;9141
	nop			;9142
	nop			;9143
	nop			;9144
	nop			;9145
	jr nz,l9168h		;9146
	jr nz,l916ah		;9148
	nop			;914a
	nop			;914b
	nop			;914c
	nop			;914d
	nop			;914e
	nop			;914f
	nop			;9150
	nop			;9151
	ld b,000h		;9152
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
	jr nc,l9164h		;9162
l9164h:
	jr nc,l9166h		;9164
l9166h:
	jr nc,l9168h		;9166
l9168h:
	nop			;9168
	nop			;9169
l916ah:
	nop			;916a
	nop			;916b
	nop			;916c
	nop			;916d
	nop			;916e
	nop			;916f
	nop			;9170
	nop			;9171
	nop			;9172
	nop			;9173
	nop			;9174
	nop			;9175
	nop			;9176
	nop			;9177
	nop			;9178
	nop			;9179
	ld b,b			;917a
	ld h,b			;917b
	ld b,b			;917c
	ld h,b			;917d
	ld b,b			;917e
	ld h,b			;917f
	ld b,b			;9180
	ld h,b			;9181
	nop			;9182
	nop			;9183
	ld b,b			;9184
	add a,b			;9185
	ld b,b			;9186
	add a,b			;9187
	ld b,b			;9188
	add a,b			;9189
	nop			;918a
	nop			;918b
	nop			;918c
	nop			;918d
	nop			;918e
	nop			;918f
	nop			;9190
	nop			;9191
	nop			;9192
	nop			;9193
	nop			;9194
	nop			;9195
	nop			;9196
	nop			;9197
	nop			;9198
	nop			;9199
	nop			;919a
	nop			;919b
	jr l91aeh		;919c
	jr c,l91d0h		;919e
	jr c,l91d2h		;91a0
	ld b,b			;91a2
	ld h,b			;91a3
	nop			;91a4
	nop			;91a5
	nop			;91a6
	nop			;91a7
	nop			;91a8
	nop			;91a9
	nop			;91aa
	nop			;91ab
	nop			;91ac
	nop			;91ad
l91aeh:
	nop			;91ae
	nop			;91af
	djnz $+18		;91b0
	nop			;91b2
	nop			;91b3
	nop			;91b4
	nop			;91b5
	nop			;91b6
	nop			;91b7
	inc c			;91b8
	ex af,af'		;91b9
	inc e			;91ba
	jr l91d9h		;91bb
	jr l91dbh		;91bd
	jr l91ddh		;91bf
	jr l91fbh		;91c1
	jr nc,l91fdh		;91c3
	jr nc,l91ffh		;91c5
	jr nc,l9201h		;91c7
	jr nc,l9203h		;91c9
	jr nc,l9205h		;91cb
	jr nz,l91efh		;91cd
	nop			;91cf
l91d0h:
	nop			;91d0
	nop			;91d1
l91d2h:
	nop			;91d2
	nop			;91d3
	nop			;91d4
	nop			;91d5
	nop			;91d6
	nop			;91d7
	nop			;91d8
l91d9h:
	nop			;91d9
	nop			;91da
l91dbh:
	nop			;91db
	nop			;91dc
l91ddh:
	nop			;91dd
	nop			;91de
	nop			;91df
	ex af,af'		;91e0
	inc c			;91e1
	ld (bc),a		;91e2
	inc bc			;91e3
	ld (bc),a		;91e4
	inc bc			;91e5
	ld (bc),a		;91e6
	inc bc			;91e7
	ld (bc),a		;91e8
	inc bc			;91e9
	ld b,d			;91ea
	ld h,e			;91eb
	ld b,d			;91ec
	ld h,e			;91ed
	ld b,b			;91ee
l91efh:
	ld h,b			;91ef
	ld b,b			;91f0
	ld h,b			;91f1
	inc e			;91f2
	jr l9211h		;91f3
	jr l9213h		;91f5
	djnz l9209h		;91f7
	nop			;91f9
	nop			;91fa
l91fbh:
	nop			;91fb
	nop			;91fc
l91fdh:
	nop			;91fd
	nop			;91fe
l91ffh:
	nop			;91ff
	nop			;9200
l9201h:
	nop			;9201
	ld (bc),a		;9202
l9203h:
	ld b,000h		;9203
l9205h:
	nop			;9205
	nop			;9206
	nop			;9207
	nop			;9208
l9209h:
	nop			;9209
	nop			;920a
	nop			;920b
	nop			;920c
	nop			;920d
	nop			;920e
	nop			;920f
	nop			;9210
l9211h:
	nop			;9211
	ex af,af'		;9212
l9213h:
	inc c			;9213
	ld c,b			;9214
	adc a,h			;9215
	ld c,b			;9216
	adc a,h			;9217
	ld b,b			;9218
	add a,b			;9219
	nop			;921a
	nop			;921b
	nop			;921c
	nop			;921d
	nop			;921e
	nop			;921f
	nop			;9220
	nop			;9221
	nop			;9222
	nop			;9223
	nop			;9224
	nop			;9225
	nop			;9226
	nop			;9227
	nop			;9228
	nop			;9229
	nop			;922a
	nop			;922b
	inc c			;922c
	nop			;922d
	inc c			;922e
	nop			;922f
	inc c			;9230
	nop			;9231
	nop			;9232
	nop			;9233
	ld h,b			;9234
	nop			;9235
	ld h,b			;9236
	nop			;9237
	ld h,b			;9238
	nop			;9239
	ld h,b			;923a
	nop			;923b
	ld h,b			;923c
	nop			;923d
	ld h,b			;923e
	nop			;923f
	ld h,b			;9240
	nop			;9241
	inc c			;9242
	nop			;9243
	nop			;9244
	nop			;9245
	nop			;9246
	nop			;9247
	nop			;9248
	nop			;9249
	nop			;924a
	nop			;924b
	nop			;924c
	nop			;924d
	nop			;924e
	nop			;924f
	nop			;9250
	nop			;9251
	ld h,b			;9252
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
l925dh:
	nop			;925d
	nop			;925e
	nop			;925f
l9260h:
	nop			;9260
	nop			;9261
	rst 0			;9262
	ret m			;9263
	nop			;9264
	rst 0			;9265
	ret m			;9266
	nop			;9267
	add a,(hl)		;9268
	ret m			;9269
	nop			;926a
	ld a,(bc)		;926b
	call p,04e00h		;926c
	ret p			;926f
	nop			;9270
	sbc a,(hl)		;9271
	ret po			;9272
	nop			;9273
	inc a			;9274
	ret nz			;9275
	nop			;9276
	cp h			;9277
	ret nz			;9278
	nop			;9279
	add a,d			;927a
	rst 38h			;927b
	nop			;927c
	ld b,0ffh		;927d
	nop			;927f
	nop			;9280
	rst 38h			;9281
	nop			;9282
	nop			;9283
	rst 38h			;9284
	nop			;9285
	and b			;9286
	rst 38h			;9287
	nop			;9288
	ld b,b			;9289
	rst 38h			;928a
	nop			;928b
	sub h			;928c
	rst 28h			;928d
	nop			;928e
	inc bc			;928f
	call m,06c00h		;9290
	sub b			;9293
	nop			;9294
	inc e			;9295
	ret po			;9296
	nop			;9297
	sbc a,h			;9298
	ret po			;9299
	nop			;929a
	jr c,l925dh		;929b
	nop			;929d
	jr c,l9260h		;929e
	nop			;92a0
	ld a,b			;92a1
	add a,b			;92a2
	nop			;92a3
	ret c			;92a4
	jr nz,l92a7h		;92a5
l92a7h:
	or b			;92a7
	ld b,b			;92a8
	nop			;92a9
	ei			;92aa
	nop			;92ab
	rst 38h			;92ac
	call po,0fb04h		;92ad
	sbc a,e			;92b0
	rra			;92b1
	ret po			;92b2
	jp po,000ffh		;92b3
	rlca			;92b6
	ret m			;92b7
	nop			;92b8
	jr c,$+1		;92b9
	nop			;92bb
	add a,0c7h		;92bc
	jr c,l92e1h		;92be
	ld bc,00cfeh		;92c0
	rrca			;92c3
	ret p			;92c4
	ld sp,0c03eh		;92c5
	call c,000e3h		;92c8
	ex (sp),hl		;92cb
	rra			;92cc
	nop			;92cd
	inc e			;92ce
	rst 38h			;92cf
	nop			;92d0
	jp p,000fdh		;92d1
	add a,c			;92d4
	cp 000h			;92d5
	daa			;92d7
	ret c			;92d8
	nop			;92d9
	ld b,(hl)		;92da
	cp c			;92db
	nop			;92dc
	jr $-23			;92dd
	nop			;92df
	sub b			;92e0
l92e1h:
	rst 28h			;92e1
	nop			;92e2
	ld bc,000feh		;92e3
	rlca			;92e6
	ret m			;92e7
	nop			;92e8
	rra			;92e9
	ret po			;92ea
	nop			;92eb
	rst 38h			;92ec
	nop			;92ed
	nop			;92ee
	rra			;92ef
	ret po			;92f0
	nop			;92f1
	ld (hl),b		;92f2
	add a,b			;92f3
	nop			;92f4
	ld (hl),b		;92f5
	add a,b			;92f6
	nop			;92f7
	ret po			;92f8
	nop			;92f9
	nop			;92fa
	ret po			;92fb
	nop			;92fc
	nop			;92fd
	ret po			;92fe
	nop			;92ff
	nop			;9300
	ret nz			;9301
	nop			;9302
	nop			;9303
	ret nz			;9304
	nop			;9305
	nop			;9306
	ret nz			;9307
	nop			;9308
	nop			;9309
	and c			;930a
	add a,c			;930b
	ld a,(hl)		;930c
	ld b,e			;930d
	ld b,e			;930e
	cp h			;930f
	add a,a			;9310
	rlca			;9311
	ret m			;9312
	sbc a,(hl)		;9313
	rra			;9314
	ret po			;9315
	ld sp,0c03eh		;9316
	call m,000ffh		;9319
	ld a,a			;931c
	rst 38h			;931d
	nop			;931e
	ex af,af'		;931f
	rst 38h			;9320
	nop			;9321
	nop			;9322
	rst 38h			;9323
	nop			;9324
	pop bc			;9325
	cp 000h			;9326
	add a,a			;9328
	ret m			;9329
	nop			;932a
	ccf			;932b
	ret nz			;932c
	nop			;932d
	cp b			;932e
	ld b,a			;932f
	nop			;9330
	ld b,e			;9331
	rst 38h			;9332
	nop			;9333
	call p,000ffh		;9334
	ld hl,000feh		;9337
	ld a,a			;933a
	add a,b			;933b
	nop			;933c
	rst 38h			;933d
	nop			;933e
	nop			;933f
	rst 38h			;9340
	nop			;9341
	nop			;9342
	rst 38h			;9343
	nop			;9344
	nop			;9345
	ccf			;9346
l9347h:
	ret nz			;9347
	nop			;9348
	ld e,0e0h		;9349
	nop			;934b
	ld a,(hl)		;934c
	add a,b			;934d
	nop			;934e
	call c,00020h		;934f
	add a,b			;9352
	nop			;9353
	nop			;9354
	add a,b			;9355
	nop			;9356
	nop			;9357
	nop			;9358
	nop			;9359
	nop			;935a
	nop			;935b
	nop			;935c
	nop			;935d
	nop			;935e
	nop			;935f
	nop			;9360
	nop			;9361
	nop			;9362
	nop			;9363
	nop			;9364
	nop			;9365
	nop			;9366
	nop			;9367
	nop			;9368
	nop			;9369
	ld h,b			;936a
	sbc a,a			;936b
	nop			;936c
	rra			;936d
	ret po			;936e
	nop			;936f
	sub e			;9370
	call m,0c800h		;9371
	rst 38h			;9374
	nop			;9375
	jr nc,l9347h		;9376
	nop			;9378
	sbc a,a			;9379
	ret po			;937a
	nop			;937b
	ld b,a			;937c
	ret m			;937d
	nop			;937e
	ld b,b			;937f
	rst 38h			;9380
	nop			;9381
	rlca			;9382
	ret m			;9383
	nop			;9384
	ccf			;9385
	ret nz			;9386
	nop			;9387
	ld sp,hl		;9388
	ld b,000h		;9389
	rst 38h			;938b
	nop			;938c
	nop			;938d
	rst 38h			;938e
	nop			;938f
	nop			;9390
	rst 38h			;9391
	nop			;9392
	nop			;9393
	rst 38h			;9394
	nop			;9395
	nop			;9396
	ld a,a			;9397
	add a,b			;9398
	nop			;9399
	cp h			;939a
	ld b,b			;939b
	nop			;939c
	ret m			;939d
	nop			;939e
	nop			;939f
	ret m			;93a0
	nop			;93a1
	nop			;93a2
	ret p			;93a3
	nop			;93a4
	nop			;93a5
	ret p			;93a6
	nop			;93a7
	nop			;93a8
	ret po			;93a9
	nop			;93aa
	nop			;93ab
	ret po			;93ac
	nop			;93ad
l93aeh:
	nop			;93ae
	ret nz			;93af
	nop			;93b0
	nop			;93b1
	nop			;93b2
	rst 38h			;93b3
	nop			;93b4
	and c			;93b5
	cp 000h			;93b6
	rst 8			;93b8
	ret p			;93b9
	nop			;93ba
	sub e			;93bb
	call pe,04100h		;93bc
	cp 000h			;93bf
	ld l,0ffh		;93c1
	nop			;93c3
	sub c			;93c4
	pop af			;93c5
	ld c,055h		;93c6
	ld (hl),c		;93c8
	adc a,(hl)		;93c9
	inc bc			;93ca
	call m,0ff00h		;93cb
	nop			;93ce
	nop			;93cf
	rst 38h			;93d0
	nop			;93d1
	nop			;93d2
	cp 000h			;93d3
	nop			;93d5
	cp 000h			;93d6
	nop			;93d8
	call m,00000h		;93d9
	ld a,b			;93dc
	add a,b			;93dd
	nop			;93de
	ld a,b			;93df
	add a,b			;93e0
	nop			;93e1
	add hl,hl		;93e2
	add hl,sp		;93e3
	add a,0aeh		;93e4
	ccf			;93e6
	ret nz			;93e7
	and c			;93e8
	ld a,0c0h		;93e9
	daa			;93eb
	jr c,l93aeh		;93ec
	ld c,e			;93ee
	ld a,h			;93ef
	add a,b			;93f0
	sub e			;93f1
	call pe,03f00h		;93f2
	ret nz			;93f5
	nop			;93f6
	cp 000h			;93f7
	nop			;93f9
	ld (hl),b		;93fa
	add a,b			;93fb
	nop			;93fc
	ret po			;93fd
	nop			;93fe
sub_93ffh:
	nop			;93ff
l9400h:
	ret po			;9400
	nop			;9401
	nop			;9402
	ret nz			;9403
	nop			;9404
	nop			;9405
	add a,b			;9406
	nop			;9407
	nop			;9408
	add a,b			;9409
	nop			;940a
	nop			;940b
	nop			;940c
	nop			;940d
	nop			;940e
	nop			;940f
	nop			;9410
	nop			;9411
	xor 0ffh		;9412
	nop			;9414
	ld e,a			;9415
	ld a,a			;9416
	add a,b			;9417
	xor b			;9418
	rst 18h			;9419
	nop			;941a
	ld (hl),0c9h		;941b
	nop			;941d
	adc a,a			;941e
	ld (hl),b		;941f
	nop			;9420
	ld a,l			;9421
	jp p,0fd00h		;9422
	and 000h		;9425
	or l			;9427
	adc a,000h		;9428
	inc a			;942a
	ret nz			;942b
	nop			;942c
	inc a			;942d
	ret nz			;942e
	nop			;942f
	ld a,b			;9430
	add a,b			;9431
	nop			;9432
	ret p			;9433
	nop			;9434
	nop			;9435
	ret po			;9436
	nop			;9437
	nop			;9438
	ret nz			;9439
	nop			;943a
	nop			;943b
	ret nz			;943c
	nop			;943d
	nop			;943e
	add a,b			;943f
	nop			;9440
	nop			;9441
	jr nz,l9444h		;9442
l9444h:
	rst 38h			;9444
	adc a,0c0h		;9445
	ccf			;9447
	ccf			;9448
	nop			;9449
	rst 38h			;944a
	ld (bc),a		;944b
	nop			;944c
	rst 38h			;944d
	defb 0fdh,0fdh,002h ;illegal sequence	;944e
	ld b,0ffh		;9451
	nop			;9453
	pop af			;9454
	ld c,000h		;9455
	rst 38h			;9457
	nop			;9458
	nop			;9459
	jr c,$+58		;945a
	rst 0			;945c
	ld b,e			;945d
	inc bc			;945e
	call m,009f9h		;945f
	or 002h			;9462
	inc bc			;9464
	call m,0e1e1h		;9465
	ld e,01fh		;9468
	rst 38h			;946a
	nop			;946b
	ret po			;946c
	rra			;946d
	nop			;946e
	rst 38h			;946f
l9470h:
	nop			;9470
	nop			;9471
	ld a,(de)		;9472
	dec e			;9473
	ret po			;9474
	ld (hl),e		;9475
	ld a,l			;9476
	add a,b			;9477
	adc a,(hl)		;9478
	cp 001h			;9479
	ld (hl),a		;947b
	rst 30h			;947c
	ex af,af'		;947d
	cp b			;947e
	cp a			;947f
	ld b,b			;9480
	rst 20h			;9481
	ret m			;9482
	nop			;9483
	rra			;9484
	ret po			;9485
	nop			;9486
	rst 38h			;9487
	nop			;9488
	nop			;9489
	rrca			;948a
	rrca			;948b
	ret p			;948c
	ld a,b			;948d
	ld a,a			;948e
	add a,b			;948f
	rst 0			;9490
	ret m			;9491
	nop			;9492
	ld a,0c1h		;9493
	nop			;9495
	defb 0fdh,003h,000h ;illegal sequence	;9496
	cp 001h			;9499
	nop			;949b
	ld a,a			;949c
	add a,b			;949d
	nop			;949e
	cp a			;949f
	ld b,b			;94a0
	nop			;94a1
	ld (hl),e		;94a2
	sbc a,h			;94a3
	nop			;94a4
	xor 070h		;94a5
	nop			;94a7
	inc a			;94a8
	ret po			;94a9
	nop			;94aa
	ret c			;94ab
	ret po			;94ac
	nop			;94ad
	jr nc,l9470h		;94ae
	nop			;94b0
	ret po			;94b1
	nop			;94b2
	nop			;94b3
	ret nz			;94b4
	nop			;94b5
	nop			;94b6
	add a,b			;94b7
sub_94b8h:
	nop			;94b8
	nop			;94b9
	ld a,03fh		;94ba
	ret nz			;94bc
	jp 0fc03h		;94bd
	ld a,h			;94c0
	nop			;94c1
	rst 38h			;94c2
	call m,003fch		;94c3
	inc bc			;94c6
	rst 38h			;94c7
	nop			;94c8
	or b			;94c9
	ld c,a			;94ca
	nop			;94cb
	inc c			;94cc
	di			;94cd
	nop			;94ce
	rst 30h			;94cf
	ret m			;94d0
	nop			;94d1
	rrca			;94d2
	ret p			;94d3
	nop			;94d4
	ex (sp),hl		;94d5
	call m,01900h		;94d6
	ld e,0e0h		;94d9
	push hl			;94db
	ld b,0f8h		;94dc
	ld (hl),h		;94de
	rlca			;94df
	ret m			;94e0
	xor b			;94e1
	adc a,a			;94e2
	ld (hl),b		;94e3
	ld d,d			;94e4
	defb 0ddh,020h,02eh ;illegal sequence	;94e5
	pop af			;94e8
	nop			;94e9
	rst 38h			;94ea
	nop			;94eb
	nop			;94ec
	rst 38h			;94ed
	nop			;94ee
	nop			;94ef
	add a,c			;94f0
	ld a,(hl)		;94f1
	nop			;94f2
	ld a,h			;94f3
	rst 38h			;94f4
	nop			;94f5
	jp nz,03cc3h		;94f6
	add a,c			;94f9
	add a,c			;94fa
	ld a,(hl)		;94fb
	jp 03cc3h		;94fc
	ld l,(hl)		;94ff
l9500h:
	rst 28h			;9500
	djnz $+1		;9501
	nop			;9503
	nop			;9504
	rst 38h			;9505
	nop			;9506
	nop			;9507
	rst 38h			;9508
	nop			;9509
	nop			;950a
	cp 001h			;950b
	nop			;950d
	ld a,a			;950e
	add a,b			;950f
	nop			;9510
	ccf			;9511
	ret nz			;9512
	nop			;9513
	ccf			;9514
	ret nz			;9515
	nop			;9516
	ld a,0c0h		;9517
	nop			;9519
	ccf			;951a
	ret nz			;951b
	nop			;951c
	ld a,h			;951d
	add a,b			;951e
l951fh:
	nop			;951f
	ret m			;9520
	nop			;9521
	nop			;9522
	ret p			;9523
	nop			;9524
	nop			;9525
	ret po			;9526
	nop			;9527
	nop			;9528
	add a,b			;9529
	nop			;952a
	nop			;952b
	nop			;952c
	nop			;952d
	nop			;952e
	nop			;952f
	nop			;9530
	nop			;9531
	inc sp			;9532
	inc a			;9533
	ret nz			;9534
	jp 000fch		;9535
	ld c,0f1h		;9538
	nop			;953a
	ccf			;953b
	ret nz			;953c
	nop			;953d
	jr nz,l951fh		;953e
	nop			;9540
	add a,h			;9541
	ld a,a			;9542
	nop			;9543
	jr $+1			;9544
	nop			;9546
	add a,e			;9547
	ld a,h			;9548
	nop			;9549
	daa			;954a
	ret m			;954b
	nop			;954c
	ld d,a			;954d
	ret c			;954e
	jr nz,l95cch		;954f
	call m,sub_8700h	;9551
	ld a,b			;9554
	nop			;9555
	rst 38h			;9556
	nop			;9557
	nop			;9558
	ld a,a			;9559
	add a,b			;955a
	nop			;955b
	rst 38h			;955c
	nop			;955d
	nop			;955e
	ld a,a			;955f
	add a,b			;9560
	nop			;9561
	jr c,$+1		;9562
	nop			;9564
	add a,c			;9565
l9566h:
	ld a,(hl)		;9566
	nop			;9567
	rst 38h			;9568
	nop			;9569
	nop			;956a
	rst 38h			;956b
	nop			;956c
	nop			;956d
	cp 000h			;956e
	nop			;9570
	call m,00000h		;9571
	ret p			;9574
	nop			;9575
	nop			;9576
	ret nz			;9577
	nop			;9578
	nop			;9579
	ld a,b			;957a
	add a,b			;957b
	nop			;957c
	ret p			;957d
	nop			;957e
	nop			;957f
	ret nz			;9580
	nop			;9581
	nop			;9582
	add a,b			;9583
	nop			;9584
	nop			;9585
	nop			;9586
	nop			;9587
	nop			;9588
	nop			;9589
	nop			;958a
	nop			;958b
	nop			;958c
	nop			;958d
	nop			;958e
	nop			;958f
	nop			;9590
	nop			;9591
	dec e			;9592
	jp po,00000h		;9593
	rst 38h			;9596
	nop			;9597
	nop			;9598
	rst 38h			;9599
	nop			;959a
	ld bc,000feh		;959b
	inc bc			;959e
	call m,00e00h		;959f
	ret p			;95a2
	nop			;95a3
	jr c,l9566h		;95a4
	nop			;95a6
	ret nz			;95a7
	nop			;95a8
	nop			;95a9
	rra			;95aa
	ret po			;95ab
	nop			;95ac
	ld a,0c0h		;95ad
	nop			;95af
	ld a,b			;95b0
	add a,b			;95b1
	nop			;95b2
	ret po			;95b3
	nop			;95b4
	nop			;95b5
l95b6h:
	add a,b			;95b6
	nop			;95b7
	nop			;95b8
	nop			;95b9
	nop			;95ba
	nop			;95bb
	nop			;95bc
	nop			;95bd
	nop			;95be
	nop			;95bf
	nop			;95c0
	nop			;95c1
	add a,b			;95c2
	nop			;95c3
	nop			;95c4
	nop			;95c5
	nop			;95c6
	nop			;95c7
	nop			;95c8
	nop			;95c9
	nop			;95ca
	nop			;95cb
l95cch:
	nop			;95cc
	nop			;95cd
	nop			;95ce
	nop			;95cf
	nop			;95d0
	nop			;95d1
	nop			;95d2
	nop			;95d3
	nop			;95d4
	nop			;95d5
	nop			;95d6
	nop			;95d7
	nop			;95d8
	nop			;95d9
	nop			;95da
	nop			;95db
	nop			;95dc
	nop			;95dd
	nop			;95de
	nop			;95df
	nop			;95e0
	nop			;95e1
	nop			;95e2
	ld (bc),a		;95e3
	ld (bc),a		;95e4
	ld bc,01b0bh		;95e5
	inc b			;95e8
l95e9h:
	ld (0023dh),a		;95e9
	ld c,a			;95ec
	ld (hl),b		;95ed
	ld b,03eh		;95ee
	pop bc			;95f0
	ld l,000h		;95f1
	nop			;95f3
	nop			;95f4
	nop			;95f5
	nop			;95f6
	nop			;95f7
	inc h			;95f8
	inc (hl)		;95f9
	ex af,af'		;95fa
	jr c,l963dh		;95fb
	adc a,h			;95fd
	inc a			;95fe
	and h			;95ff
	ld e,b			;9600
	ld d,b			;9601
	ld a,b			;9602
	add a,h			;9603
	add a,b			;9604
	inc e			;9605
	ret po			;9606
	ret nc			;9607
	sub b			;9608
	ld l,b			;9609
	cp a			;960a
	ret nz			;960b
	rrca			;960c
	xor l			;960d
	jp p,04f05h		;960e
	ld (hl),b		;9611
	add hl,bc		;9612
	scf			;9613
	inc a			;9614
	nop			;9615
	inc c			;9616
	rrca			;9617
	nop			;9618
	nop			;9619
	nop			;961a
	nop			;961b
	nop			;961c
	nop			;961d
	nop			;961e
	nop			;961f
	nop			;9620
	nop			;9621
	and b			;9622
	ret po			;9623
	djnz l95b6h		;9624
	ld d,b			;9626
	jr nz,l95e9h		;9627
	ld h,b			;9629
	nop			;962a
	add a,b			;962b
	ret nz			;962c
	nop			;962d
	nop			;962e
	nop			;962f
	nop			;9630
	nop			;9631
	nop			;9632
	nop			;9633
	nop			;9634
	nop			;9635
	nop			;9636
	nop			;9637
	nop			;9638
	nop			;9639
	nop			;963a
	nop			;963b
	nop			;963c
l963dh:
	nop			;963d
	nop			;963e
	nop			;963f
	inc b			;9640
	inc c			;9641
	ld (bc),a		;9642
	ld e,012h		;9643
	add hl,bc		;9645
	ex af,af'		;9646
	ld (hl),001h		;9647
	jr z,l9665h		;9649
	dec b			;964b
	inc h			;964c
	inc e			;964d
	ld (bc),a		;964e
	jr l965dh		;964f
	nop			;9651
	nop			;9652
	nop			;9653
	nop			;9654
	nop			;9655
	nop			;9656
	nop			;9657
	nop			;9658
	nop			;9659
	nop			;965a
	nop			;965b
l965ch:
	nop			;965c
l965dh:
	nop			;965d
	dec bc			;965e
	ld e,001h		;965f
	dec h			;9661
	ld a,001h		;9662
	ld c,h			;9664
l9665h:
	ld a,l			;9665
	ld (bc),a		;9666
	sbc a,l			;9667
	rst 20h			;9668
	jr l966bh		;9669
l966bh:
	nop			;966b
	nop			;966c
	nop			;966d
	nop			;966e
	nop			;966f
	nop			;9670
	nop			;9671
	nop			;9672
	nop			;9673
	nop			;9674
	nop			;9675
	ret nz			;9676
	ret nz			;9677
	nop			;9678
	ret nc			;9679
	djnz l965ch		;967a
	ret po			;967c
	ret po			;967d
	jr l9690h		;967e
	ret pe			;9680
	inc d			;9681
	nop			;9682
	ld bc,00100h		;9683
	ld (bc),a		;9686
	nop			;9687
	inc bc			;9688
	ld (bc),a		;9689
	nop			;968a
	rlca			;968b
	inc b			;968c
	ld bc,00605h		;968d
l9690h:
	ld bc,00a0dh		;9690
	dec b			;9693
	inc bc			;9694
	inc e			;9695
	inc bc			;9696
	inc de			;9697
	inc e			;9698
	inc bc			;9699
	ld a,e			;969a
	add a,(hl)		;969b
	ld (hl),c		;969c
	ei			;969d
	inc b			;969e
	di			;969f
	rst 38h			;96a0
	ld (bc),a		;96a1
	ld sp,hl		;96a2
	call pe,0e41bh		;96a3
	rst 30h			;96a6
	ex af,af'		;96a7
	call p,000ffh		;96a8
	rst 38h			;96ab
	rst 38h			;96ac
	nop			;96ad
	rst 38h			;96ae
	rst 38h			;96af
	nop			;96b0
	rst 38h			;96b1
	ret po			;96b2
	ld d,(hl)		;96b3
	xor b			;96b4
	call m,0d628h		;96b5
	ret nc			;96b8
	inc d			;96b9
	jp pe,0b27eh		;96ba
	ld c,h			;96bd
	cp h			;96be
	or b			;96bf
	ld c,(hl)		;96c0
	ld hl,(004fah)		;96c1
	cp (hl)			;96c4
	ld h,(hl)		;96c5
	sbc a,b			;96c6
	sbc a,b			;96c7
	ld (hl),b		;96c8
	adc a,h			;96c9
	ld d,039h		;96ca
	nop			;96cc
	dec bc			;96cd
	inc a			;96ce
	nop			;96cf
	rla			;96d0
	jr c,l96d3h		;96d1
l96d3h:
	dec de			;96d3
	inc e			;96d4
	nop			;96d5
	inc c			;96d6
	rrca			;96d7
	nop			;96d8
	ld b,00fh		;96d9
	nop			;96db
	inc bc			;96dc
	rlca			;96dd
	nop			;96de
	nop			;96df
	ld bc,0ff00h		;96e0
	nop			;96e3
	rst 38h			;96e4
	rst 38h			;96e5
	nop			;96e6
	rst 38h			;96e7
	cp a			;96e8
	ld b,b			;96e9
	or a			;96ea
	ld e,(hl)		;96eb
	and c			;96ec
	ld e,0bch		;96ed
	jp 0b000h		;96ef
	ld c,a			;96f2
	nop			;96f3
	ld bc,000ffh		;96f4
	ld a,b			;96f7
	call m,0fc00h		;96f8
	ld c,h			;96fb
	or b			;96fc
	cp b			;96fd
	ld c,b			;96fe
	sub b			;96ff
	ret p			;9700
	jr nc,l9703h		;9701
l9703h:
	ret po			;9703
	and b			;9704
	nop			;9705
	add a,b			;9706
	ld b,b			;9707
	nop			;9708
	add a,b			;9709
	add a,b			;970a
	nop			;970b
	nop			;970c
	nop			;970d
	nop			;970e
	nop			;970f
	nop			;9710
	nop			;9711
	ld b,e			;9712
	rst 38h			;9713
	cp e			;9714
	rst 0			;9715
	ld b,l			;9716
	add a,e			;9717
	add a,d			;9718
	ld bc,00142h		;9719
	and l			;971c
	ld b,e			;971d
	ld b,h			;971e
	add a,e			;971f
	adc a,e			;9720
	inc b			;9721
l9722h:
	adc a,b			;9722
	ret p			;9723
	cp e			;9724
	ret nz			;9725
	ld c,h			;9726
	add a,e			;9727
	or e			;9728
	rrca			;9729
	call nz,03b3fh		;972a
	call nz,000c4h		;972d
	ld (bc),a		;9730
	nop			;9731
	nop			;9732
	nop			;9733
	add a,b			;9734
	nop			;9735
	pop bc			;9736
	nop			;9737
	add hl,hl		;9738
	ret nz			;9739
	ld d,d			;973a
	add a,c			;973b
	add a,d			;973c
	ld bc,00003h		;973d
	ld b,001h		;9740
	dec d			;9742
	inc bc			;9743
	ld l,b			;9744
	rla			;9745
	sub e			;9746
	ld a,h			;9747
	inc d			;9748
	ret m			;9749
	ld l,a			;974a
	sub b			;974b
	sbc a,h			;974c
	inc bc			;974d
	ld h,e			;974e
	sbc a,a			;974f
	cp h			;9750
	rst 38h			;9751
	ld d,h			;9752
	rst 38h			;9753
	xor e			;9754
	ld d,h			;9755
	ld d,h			;9756
	nop			;9757
	ld hl,(0d214h)		;9758
	inc a			;975b
	dec a			;975c
	cp 006h			;975d
	ei			;975f
	dec sp			;9760
	ret nz			;9761
	add a,l			;9762
	ld (bc),a		;9763
	ld h,d			;9764
	add a,c			;9765
	sbc a,l			;9766
	ld h,b			;9767
	ld c,c			;9768
	jr nc,l9722h		;9769
	ex af,af'		;976b
	adc a,c			;976c
	ld b,074h		;976d
	adc a,a			;976f
	adc a,(hl)		;9770
	ld a,a			;9771
	rlca			;9772
	nop			;9773
	adc a,e			;9774
	inc b			;9775
	ld a,h			;9776
	add a,b			;9777
	add a,c			;9778
	nop			;9779
	ld e,001h		;977a
	ret po			;977c
	rra			;977d
	ld bc,01fffh		;977e
	rst 38h			;9781
	nop			;9782
	nop			;9783
	rlca			;9784
	nop			;9785
	ld a,b			;9786
	rlca			;9787
	add a,e			;9788
	ld a,a			;9789
	rlca			;978a
	rst 38h			;978b
	ld a,0ffh		;978c
	ld a,h			;978e
	rst 38h			;978f
	ret m			;9790
	rst 38h			;9791
	adc a,03fh		;9792
	inc (hl)		;9794
	rst 38h			;9795
	ret			;9796
	cp 0e3h			;9797
	call m,0fbc4h		;9799
	adc a,l			;979c
	jp p,0d028h		;979d
	ld e,h			;97a0
	add a,b			;97a1
	sub b			;97a2
	ld h,b			;97a3
	ld h,c			;97a4
	add a,b			;97a5
	jp nz,0cc01h		;97a6
	inc bc			;97a9
	sbc a,d			;97aa
	dec b			;97ab
	dec (hl)		;97ac
	ld c,06ah		;97ad
	inc e			;97af
	jp c,0aa3ch		;97b0
	ld (hl),h		;97b3
	ld h,l			;97b4
	ret m			;97b5
	ld a,(bc)		;97b6
	pop af			;97b7
	defb 0edh ;next byte illegal after ed	;97b8
	inc de			;97b9
	sub l			;97ba
	inc bc			;97bb
	ld b,l			;97bc
	inc bc			;97bd
	ld a,d			;97be
	rlca			;97bf
	add a,03fh		;97c0
	cp d			;97c2
	ld c,l			;97c3
	dec h			;97c4
	ret c			;97c5
	sub d			;97c6
	defb 0edh ;next byte illegal after ed	;97c7
	add hl,hl		;97c8
	add a,0aah		;97c9
	call nz,sub_8a75h	;97cb
	cp d			;97ce
	ld bc,001a2h		;97cf
	rst 18h			;97d2
	rst 38h			;97d3
	ld a,a			;97d4
	rst 38h			;97d5
	ld e,a			;97d6
	rst 38h			;97d7
	adc a,(hl)		;97d8
	ld a,a			;97d9
	sbc a,l			;97da
	ld a,(hl)		;97db
	dec sp			;97dc
	call m,0f8e4h		;97dd
	exx			;97e0
	ret po			;97e1
	rst 38h			;97e2
	rst 38h			;97e3
	cp e			;97e4
	rst 38h			;97e5
	ret pe			;97e6
	rst 38h			;97e7
	ld d,0e9h		;97e8
	call pe,0b103h		;97ea
	ld c,0eeh		;97ed
	rra			;97ef
	rra			;97f0
	rst 38h			;97f1
	cp 0ffh			;97f2
	ld a,b			;97f4
	rst 38h			;97f5
	or a			;97f6
	ld a,b			;97f7
	adc a,h			;97f8
	ld (hl),b		;97f9
	ld d,e			;97fa
	xor h			;97fb
	add hl,hl		;97fc
	cp 0f6h			;97fd
	ret m			;97ff
	jp (hl)			;9800
	ret p			;9801
	ld b,b			;9802
	add a,b			;9803
	add a,(hl)		;9804
	nop			;9805
	dec c			;9806
	nop			;9807
	inc e			;9808
	jr nz,l986bh		;9809
	add a,b			;980b
	add a,c			;980c
	nop			;980d
	ret po			;980e
	nop			;980f
	ld d,b			;9810
	nop			;9811
	ld b,b			;9812
	nop			;9813
	ret po			;9814
	nop			;9815
	ld (bc),a		;9816
	nop			;9817
	jr l981ah		;9818
l981ah:
	ld h,c			;981a
	nop			;981b
	add a,d			;981c
	ld bc,00384h		;981d
	dec d			;9820
	inc hl			;9821
	nop			;9822
	nop			;9823
	add a,b			;9824
	nop			;9825
	rrca			;9826
	nop			;9827
	ld (hl),b		;9828
	rrca			;9829
	adc a,e			;982a
	ld a,a			;982b
	jr nz,$+1		;982c
	rst 8			;982e
	rst 38h			;982f
	sbc a,a			;9830
	rst 38h			;9831
	dec b			;9832
	inc bc			;9833
	ld (bc),a		;9834
	ld bc,000e1h		;9835
	jr l981ah		;9838
	adc a,(hl)		;983a
	ret p			;983b
	inc bc			;983c
	call m,0fec1h		;983d
	jp (hl)			;9840
	cp 0d5h			;9841
	jp pe,0ff00h		;9843
	call 03233h		;9846
	ld bc,00186h		;9849
	ld d,c			;984c
	add a,b			;984d
	ld e,a			;984e
	add a,b			;984f
	daa			;9850
	ret c			;9851
	inc e			;9852
	nop			;9853
	nop			;9854
	nop			;9855
	nop			;9856
	nop			;9857
	ld h,b			;9858
	nop			;9859
	ld sp,hl		;985a
	nop			;985b
	ld d,d			;985c
	add a,c			;985d
	add a,l			;985e
	ld (bc),a		;985f
	ex af,af'		;9860
	inc b			;9861
	ld (bc),a		;9862
	nop			;9863
	dec c			;9864
	ld (bc),a		;9865
	ld a,(0ec04h)		;9866
	djnz $+52		;9869
l986bh:
	pop bc			;986b
	push bc			;986c
	ld (bc),a		;986d
	ld e,000h		;986e
	ld a,b			;9870
	nop			;9871
	dec e			;9872
	inc bc			;9873
	ld d,b			;9874
	rrca			;9875
	ld h,a			;9876
	jr l98d1h		;9877
	jr nz,l98deh		;9879
	add a,b			;987b
	adc a,h			;987c
	nop			;987d
	jr nc,l9880h		;987e
l9880h:
	ld h,c			;9880
	nop			;9881
	nop			;9882
	rst 38h			;9883
	jp 03c3ch		;9884
	nop			;9887
	ld b,b			;9888
	nop			;9889
	nop			;988a
	nop			;988b
	rlca			;988c
	nop			;988d
	ccf			;988e
	nop			;988f
	ret m			;9890
	rlca			;9891
	ld b,(hl)		;9892
	ret m			;9893
	xor a			;9894
	ld d,b			;9895
	ld b,b			;9896
	nop			;9897
	nop			;9898
	nop			;9899
	ld a,h			;989a
	nop			;989b
	out (02ch),a		;989c
	call m,00f03h		;989e
	ret p			;98a1
	ld (hl),e		;98a2
	inc c			;98a3
	rst 8			;98a4
	nop			;98a5
	cp e			;98a6
	ld b,b			;98a7
	ld d,l			;98a8
	nop			;98a9
	ld a,(bc)		;98aa
	inc b			;98ab
	add a,l			;98ac
	ld (bc),a		;98ad
	push hl			;98ae
	ld (bc),a		;98af
	ld d,d			;98b0
	and c			;98b1
	cpl			;98b2
	rst 18h			;98b3
	pop de			;98b4
	cpl			;98b5
	ld h,0f9h		;98b6
	and e			;98b8
	ld a,h			;98b9
	ld e,b			;98ba
	daa			;98bb
	jr nz,l98c5h		;98bc
	inc de			;98be
	nop			;98bf
	sub h			;98c0
	nop			;98c1
	push bc			;98c2
	ei			;98c3
	ld (de),a		;98c4
l98c5h:
	rst 28h			;98c5
	ld h,c			;98c6
	sbc a,(hl)		;98c7
	jp 02e3ch		;98c8
	ret nc			;98cb
	ld sp,hl		;98cc
	add a,b			;98cd
	di			;98ce
	nop			;98cf
	add a,(hl)		;98d0
l98d1h:
	ld bc,0c031h		;98d1
	and 001h		;98d4
	ld e,c			;98d6
	rlca			;98d7
	ld h,(hl)		;98d8
	rra			;98d9
	sub c			;98da
	ld a,(hl)		;98db
	ld h,0f9h		;98dc
l98deh:
	ld e,b			;98de
	rst 20h			;98df
	or c			;98e0
	adc a,0a6h		;98e1
	ld a,b			;98e3
	ld e,b			;98e4
	ret po			;98e5
	and c			;98e6
	ret nz			;98e7
	and d			;98e8
	pop bc			;98e9
	ld b,h			;98ea
	add a,e			;98eb
	ld c,c			;98ec
	add a,(hl)		;98ed
	or (hl)			;98ee
	inc c			;98ef
	dec h			;98f0
	jr l9950h		;98f1
	ld (hl),092h		;98f3
	ld l,h			;98f5
	dec h			;98f6
	ret c			;98f7
	adc a,031h		;98f8
	sub l			;98fa
	ld h,e			;98fb
	and l			;98fc
	ld b,e			;98fd
	jp z,01007h		;98fe
	rrca			;9901
	push de			;9902
	inc bc			;9903
	cp e			;9904
	ld b,a			;9905
	ld b,a			;9906
	cp a			;9907
	cp a			;9908
	rst 38h			;9909
	ld a,a			;990a
	rst 38h			;990b
	rst 38h			;990c
	rst 38h			;990d
	rst 38h			;990e
	rst 38h			;990f
	call m,0a2ffh		;9910
	pop hl			;9913
	and d			;9914
	pop bc			;9915
	and l			;9916
	jp 0c3a5h		;9917
	and d			;991a
	pop bc			;991b
	jp po,051c1h		;991c
	ret po			;991f
	adc a,c			;9920
	ld (hl),b		;9921
	cp a			;9922
	rst 38h			;9923
	cp 0ffh			;9924
	defb 0fdh,0feh,0fah ;illegal sequence	;9926
	defb 0fdh,0fdh,0feh ;illegal sequence	;9929
	sbc a,(hl)		;992c
	rst 38h			;992d
	ld l,a			;992e
	sbc a,a			;992f
	sub a			;9930
	rrca			;9931
	call nz,03ef8h		;9932
	ret nz			;9935
	ld b,b			;9936
	add a,b			;9937
	ccf			;9938
	ret nz			;9939
	adc a,h			;993a
	ld (hl),e		;993b
	push af			;993c
	ld a,(bc)		;993d
	ld hl,0e2feh		;993e
	rst 38h			;9941
	ret po			;9942
	nop			;9943
	nop			;9944
	nop			;9945
	call nz,03b00h		;9946
	call nz,0fec1h		;9949
	jr nc,$-47		;994c
	adc a,h			;994e
	ld (hl),e		;994f
l9950h:
	scf			;9950
	ret m			;9951
	dec hl			;9952
	rla			;9953
	ld de,0080fh		;9954
	rlca			;9957
	ld b,003h		;9958
	push hl			;995a
	inc bc			;995b
	ld b,l			;995c
	add a,e			;995d
	ld c,d			;995e
	add a,l			;995f
	and a			;9960
	ld b,b			;9961
	cp a			;9962
	rst 38h			;9963
	rst 18h			;9964
	rst 38h			;9965
	rst 28h			;9966
	rst 38h			;9967
	ld a,a			;9968
	rst 38h			;9969
	cp a			;996a
	rst 38h			;996b
	rst 30h			;996c
	rst 38h			;996d
	ld a,(hl)		;996e
	rst 38h			;996f
	add a,c			;9970
	ld a,(hl)		;9971
	ret pe			;9972
	rst 38h			;9973
	pop de			;9974
	rst 38h			;9975
	call po,0dbffh		;9976
	call m,0f875h		;9979
	jp z,034f1h		;997c
	jp 002e5h		;997f
	cp b			;9982
	ret nz			;9983
	ld b,b			;9984
	add a,b			;9985
	ret po			;9986
	nop			;9987
	jr c,l998ah		;9988
l998ah:
	rst 0			;998a
	jr c,l99e5h		;998b
	cp a			;998d
	and h			;998e
	rra			;998f
	ld (hl),e		;9990
	inc c			;9991
	ex af,af'		;9992
	nop			;9993
	nop			;9994
	nop			;9995
	nop			;9996
	nop			;9997
	nop			;9998
	nop			;9999
	nop			;999a
	nop			;999b
	add a,b			;999c
	nop			;999d
	ret nz			;999e
	nop			;999f
	ld b,d			;99a0
	add a,b			;99a1
	pop bc			;99a2
	nop			;99a3
	add a,l			;99a4
	ld (bc),a		;99a5
	ld a,(bc)		;99a6
	inc b			;99a7
	inc d			;99a8
	ex af,af'		;99a9
	add hl,sp		;99aa
	nop			;99ab
	and a			;99ac
	nop			;99ad
	ld c,h			;99ae
	inc bc			;99af
	jr l99b9h		;99b0
	add a,a			;99b2
	nop			;99b3
	ld e,001h		;99b4
	jr c,l99bfh		;99b6
	ret po			;99b8
l99b9h:
	rra			;99b9
	add a,e			;99ba
	ld a,a			;99bb
	ld c,0ffh		;99bc
	ccf			;99be
l99bfh:
	rst 38h			;99bf
	ld a,a			;99c0
	rst 38h			;99c1
	add a,c			;99c2
	ld a,a			;99c3
	nop			;99c4
	rst 38h			;99c5
	rra			;99c6
	rst 38h			;99c7
	pop hl			;99c8
	rst 38h			;99c9
	sbc a,a			;99ca
l99cbh:
	rst 38h			;99cb
	rst 38h			;99cc
	rst 38h			;99cd
	rst 38h			;99ce
	rst 38h			;99cf
	rst 38h			;99d0
	rst 38h			;99d1
	or c			;99d2
	cp 00ch			;99d3
	rst 38h			;99d5
	jp nz,072ffh		;99d6
	rst 38h			;99d9
	ld sp,hl		;99da
	cp 0fah			;99db
	rst 38h			;99dd
	rst 38h			;99de
	rst 38h			;99df
	or 0ffh			;99e0
	cp d			;99e2
	ld b,c			;99e3
	sub c			;99e4
l99e5h:
	ld h,b			;99e5
	sub c			;99e6
	ld h,b			;99e7
	ld sp,023c0h		;99e8
	ret nz			;99eb
	inc hl			;99ec
	ret nz			;99ed
	ld b,d			;99ee
	add a,b			;99ef
	add a,d			;99f0
	nop			;99f1
	sub h			;99f2
	nop			;99f3
	add a,b			;99f4
	nop			;99f5
	ret nz			;99f6
	nop			;99f7
	ld b,(hl)		;99f8
	nop			;99f9
	ld b,l			;99fa
	nop			;99fb
	adc a,000h		;99fc
	add a,(hl)		;99fe
	nop			;99ff
	rla			;9a00
	nop			;9a01
	inc e			;9a02
	inc bc			;9a03
	ld l,h			;9a04
	inc bc			;9a05
	in a,(004h)		;9a06
	sub (hl)		;9a08
	add hl,bc		;9a09
	dec de			;9a0a
	inc b			;9a0b
	inc b			;9a0c
	nop			;9a0d
	rlca			;9a0e
	nop			;9a0f
	ld c,000h		;9a10
	ld d,d			;9a12
	adc a,h			;9a13
	call nc,0e000h		;9a14
	nop			;9a17
	add a,c			;9a18
	nop			;9a19
	ld (bc),a		;9a1a
	ld bc,00324h		;9a1b
	sbc a,b			;9a1e
	rlca			;9a1f
	ld h,e			;9a20
	inc e			;9a21
	ld b,h			;9a22
	jr c,l9a4dh		;9a23
	djnz l9a78h		;9a25
	jr nz,l99cbh		;9a27
	ld b,c			;9a29
	dec h			;9a2a
	jp l8344h		;9a2b
	add a,d			;9a2e
	ld bc,00001h		;9a2f
	dec h			;9a32
	rra			;9a33
	ld c,a			;9a34
	ccf			;9a35
	sbc a,a			;9a36
	ld a,a			;9a37
	ld a,a			;9a38
	rst 38h			;9a39
	jr c,$+1		;9a3a
	ccf			;9a3c
	rst 38h			;9a3d
	rra			;9a3e
	rst 38h			;9a3f
	add a,e			;9a40
	ld a,a			;9a41
	ex (sp),hl		;9a42
	rst 38h			;9a43
	ex (sp),hl		;9a44
	rst 38h			;9a45
	defb 0edh ;next byte illegal after ed	;9a46
	rst 38h			;9a47
	rst 38h			;9a48
	rst 38h			;9a49
	rst 38h			;9a4a
	rst 38h			;9a4b
	ld a,a			;9a4c
l9a4dh:
	rst 38h			;9a4d
	rst 38h			;9a4e
	rst 38h			;9a4f
	ccf			;9a50
	rst 38h			;9a51
	ld h,(hl)		;9a52
	ld sp,hl		;9a53
	and b			;9a54
	rst 38h			;9a55
	ret			;9a56
	rst 30h			;9a57
	scf			;9a58
	ld sp,hl		;9a59
	ret m			;9a5a
	rst 38h			;9a5b
	rst 0			;9a5c
	rst 38h			;9a5d
	call m,0ffffh		;9a5e
	rst 38h			;9a61
	rlc a			;9a62
	defb 0fdh,003h,01ah ;illegal sequence	;9a64
	pop hl			;9a67
	ld hl,(0d5d1h)		;9a68
	ld l,b			;9a6b
	ld d,0e9h		;9a6c
	dec l			;9a6e
	ret p			;9a6f
	add a,l			;9a70
	ret m			;9a71
	defb 0edh ;next byte illegal after ed	;9a72
	jp p,0fef1h		;9a73
	ret po			;9a76
	rst 38h			;9a77
l9a78h:
	rst 30h			;9a78
	rst 38h			;9a79
	ld a,c			;9a7a
	rst 38h			;9a7b
	cp 0ffh			;9a7c
	ccf			;9a7e
	rst 38h			;9a7f
	ccf			;9a80
	rst 38h			;9a81
	jp c,0213ch		;9a82
	ld e,096h		;9a85
	add hl,bc		;9a87
	ld l,c			;9a88
	sub b			;9a89
	sub (hl)		;9a8a
	ld sp,hl		;9a8b
	cp b			;9a8c
	rst 38h			;9a8d
	adc a,0ffh		;9a8e
	call pe,070ffh		;9a90
	nop			;9a93
	sbc a,b			;9a94
	nop			;9a95
	ld h,0c0h		;9a96
	ld e,c			;9a98
	and 096h		;9a99
	ld a,c			;9a9b
	cp h			;9a9c
	ld b,e			;9a9d
	and 001h		;9a9e
	ld e,l			;9aa0
	and b			;9aa1
	rst 38h			;9aa2
	nop			;9aa3
	nop			;9aa4
	nop			;9aa5
	nop			;9aa6
	nop			;9aa7
	add a,b			;9aa8
	nop			;9aa9
	ld a,a			;9aaa
	add a,b			;9aab
	nop			;9aac
	rst 38h			;9aad
	add a,a			;9aae
	ld a,a			;9aaf
	ld a,c			;9ab0
	ld b,00ah		;9ab1
	inc b			;9ab3
	dec d			;9ab4
	ex af,af'		;9ab5
	ld d,009h		;9ab6
	ld l,d			;9ab8
	rra			;9ab9
	ret nc			;9aba
	ccf			;9abb
	dec c			;9abc
	jp p,l8072h		;9abd
	adc a,l			;9ac0
	ld (bc),a		;9ac1
	inc e			;9ac2
	nop			;9ac3
	nop			;9ac4
	add a,b			;9ac5
	ld h,b			;9ac6
	add a,b			;9ac7
	sbc a,h			;9ac8
	nop			;9ac9
	ld a,b			;9aca
	add a,b			;9acb
	jp 00400h		;9acc
	inc bc			;9acf
	adc a,e			;9ad0
	rlca			;9ad1
	ld b,h			;9ad2
	add a,b			;9ad3
	adc a,c			;9ad4
	nop			;9ad5
	add a,b			;9ad6
	nop			;9ad7
	add a,b			;9ad8
	nop			;9ad9
	ld bc,00900h		;9ada
	nop			;9add
	ld (de),a		;9ade
	ld bc,00112h		;9adf
	or d			;9ae2
	rrca			;9ae3
	ld h,l			;9ae4
	rra			;9ae5
	ld c,e			;9ae6
	ccf			;9ae7
	sub a			;9ae8
	ld a,a			;9ae9
	cpl			;9aea
	rst 38h			;9aeb
	cpl			;9aec
	rst 38h			;9aed
	ld c,a			;9aee
	rst 38h			;9aef
	ld c,a			;9af0
	rst 38h			;9af1
	rst 38h			;9af2
	rst 38h			;9af3
	rst 38h			;9af4
	rst 38h			;9af5
	rst 38h			;9af6
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
	sbc a,0ffh		;9b0c
	ld a,c			;9b0e
	cp 0f6h			;9b0f
	ret m			;9b11
	defb 0edh ;next byte illegal after ed	;9b12
	cp 0bah			;9b13
	call m,0f8f5h		;9b15
	jp z,0b8f0h		;9b18
	ret nz			;9b1b
	ld b,c			;9b1c
	add a,b			;9b1d
	add a,(hl)		;9b1e
	ld bc,00718h		;9b1f
	inc b			;9b22
	nop			;9b23
	adc a,h			;9b24
	nop			;9b25
	inc b			;9b26
	ex af,af'		;9b27
	jr z,l9b3ah		;9b28
	ret			;9b2a
	jr nc,$+20		;9b2b
	pop hl			;9b2d
	and h			;9b2e
	ld b,b			;9b2f
	ld c,e			;9b30
	add a,h			;9b31
	dec h			;9b32
	ld (bc),a		;9b33
	jr z,$+9		;9b34
	ld c,(hl)		;9b36
	ld bc,04091h		;9b37
l9b3ah:
	inc bc			;9b3a
	nop			;9b3b
	ld d,000h		;9b3c
	jr nz,l9b40h		;9b3e
l9b40h:
	sub c			;9b40
	nop			;9b41
	out (000h),a		;9b42
	xor h			;9b44
	inc de			;9b45
	ld b,c			;9b46
	cp (hl)			;9b47
	ld e,(hl)		;9b48
	and b			;9b49
	and c			;9b4a
	nop			;9b4b
	ld e,001h		;9b4c
	ld h,b			;9b4e
	rra			;9b4f
	add a,e			;9b50
	ld a,h			;9b51
	call nz,03838h		;9b52
	ret nz			;9b55
	ret			;9b56
	nop			;9b57
	ld d,009h		;9b58
	jp (hl)			;9b5a
	djnz $+33		;9b5b
	ret po			;9b5d
	ret po			;9b5e
	nop			;9b5f
	nop			;9b60
	nop			;9b61
	nop			;9b62
	nop			;9b63
	dec bc			;9b64
	nop			;9b65
	jp nc,0ff01h		;9b66
	nop			;9b69
	nop			;9b6a
	nop			;9b6b
	add a,a			;9b6c
	nop			;9b6d
	nop			;9b6e
	nop			;9b6f
	nop			;9b70
	nop			;9b71
	ld h,h			;9b72
	dec de			;9b73
	sbc a,e			;9b74
	nop			;9b75
	ld h,h			;9b76
	sbc a,d			;9b77
	add a,c			;9b78
	ld a,(hl)		;9b79
	defb 0fdh,003h,004h ;illegal sequence	;9b7a
	ld bc,00156h		;9b7d
	ld bc,0ef00h		;9b80
	rst 38h			;9b83
	scf			;9b84
	rst 38h			;9b85
	in a,(03fh)		;9b86
	ld h,a			;9b88
	sbc a,a			;9b89
	sbc a,d			;9b8a
	rst 20h			;9b8b
	ld h,l			;9b8c
	ei			;9b8d
	ld a,(de)		;9b8e
	defb 0fdh,08dh ;adc a,iyl	;9b8f
	ld a,a			;9b91
	sub d			;9b92
	call pe,0f8c4h		;9b93
	call nz,0ccf8h		;9b96
	ret m			;9b99
	jp nz,0e9fch		;9b9a
	cp 0e5h			;9b9d
	cp 0f2h			;9b9f
	defb 0fdh,0afh,07fh ;illegal sequence	;9ba1
	or a			;9ba4
	ld a,a			;9ba5
	ld d,e			;9ba6
	ccf			;9ba7
	ld b,e			;9ba8
	ccf			;9ba9
	inc hl			;9baa
	rra			;9bab
	add hl,de		;9bac
	rlca			;9bad
	ld b,001h		;9bae
	add a,c			;9bb0
	nop			;9bb1
	jp m,0fdffh		;9bb2
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
	ld c,a			;9bc0
	rst 38h			;9bc1
	ld (l9ccdh),a		;9bc2
	ex (sp),hl		;9bc5
	pop hl			;9bc6
	cp 0eeh			;9bc7
	rst 38h			;9bc9
	rst 38h			;9bca
	rst 38h			;9bcb
	rst 38h			;9bcc
	rst 38h			;9bcd
	rst 38h			;9bce
	rst 38h			;9bcf
	rst 38h			;9bd0
	rst 38h			;9bd1
	add a,(hl)		;9bd2
	nop			;9bd3
	ld (hl),c		;9bd4
	add a,b			;9bd5
	sub d			;9bd6
	ld h,b			;9bd7
	ld l,l			;9bd8
	jp p,0fff2h		;9bd9
	push hl			;9bdc
	rst 38h			;9bdd
	ret m			;9bde
	rst 38h			;9bdf
	cp 0ffh			;9be0
	ld (0ee0fh),a		;9be2
l9be5h:
	ld de,0003fh		;9be5
	add a,c			;9be8
	nop			;9be9
	ld a,b			;9bea
	add a,b			;9beb
	add a,h			;9bec
	ret m			;9bed
	ld c,d			;9bee
	cp h			;9bef
	sub l			;9bf0
	xor 0b5h		;9bf1
	dec bc			;9bf3
	ld l,h			;9bf4
	add a,e			;9bf5
	ld (de),a		;9bf6
	defb 0edh ;next byte illegal after ed	;9bf7
	and h			;9bf8
	ld e,a			;9bf9
	ld e,c			;9bfa
sub_9bfbh:
	ld b,007h		;9bfb
	nop			;9bfd
	nop			;9bfe
	nop			;9bff
	add a,b			;9c00
	nop			;9c01
	ld (bc),a		;9c02
	ld bc,00003h		;9c03
	inc bc			;9c06
	nop			;9c07
	ld de,01000h		;9c08
	nop			;9c0b
	ex af,af'		;9c0c
	nop			;9c0d
	adc a,b			;9c0e
	nop			;9c0f
	call z,04700h		;9c10
	rst 38h			;9c13
	ld b,b			;9c14
	rst 38h			;9c15
	jr nc,$+1		;9c16
	rst 8			;9c18
	ccf			;9c19
	ret po			;9c1a
	rra			;9c1b
	ccf			;9c1c
	nop			;9c1d
	ld (bc),a		;9c1e
	nop			;9c1f
	nop			;9c20
	nop			;9c21
	ex (sp),hl		;9c22
	rst 38h			;9c23
	ld c,0ffh		;9c24
	pop af			;9c26
	cp 00eh			;9c27
	ret p			;9c29
	ret p			;9c2a
	nop			;9c2b
	ld bc,00000h		;9c2c
	nop			;9c2f
	jr c,l9c32h		;9c30
l9c32h:
	adc a,b			;9c32
	ret p			;9c33
	ld (hl),b		;9c34
	add a,b			;9c35
	add a,e			;9c36
	nop			;9c37
	inc c			;9c38
l9c39h:
	nop			;9c39
	ld (hl),e		;9c3a
	nop			;9c3b
	add a,l			;9c3c
	nop			;9c3d
	ld a,(de)		;9c3e
	nop			;9c3f
	sub b			;9c40
	nop			;9c41
	ld h,l			;9c42
	ld a,(de)		;9c43
	jp nc,0ac2ch		;9c44
	djnz l9c39h		;9c47
	nop			;9c49
	pop bc			;9c4a
	nop			;9c4b
	ld (bc),a		;9c4c
	ld bc,00205h		;9c4d
	ex af,af'		;9c50
	rlca			;9c51
	sub b			;9c52
	dec bc			;9c53
	ld l,b			;9c54
	djnz l9be5h		;9c55
	ld (hl),b		;9c57
	pop de			;9c58
	jr nz,$-120		;9c59
	ld h,c			;9c5b
	xor c			;9c5c
	ld b,(hl)		;9c5d
	ld d,l			;9c5e
	adc a,d			;9c5f
	xor d			;9c60
	inc d			;9c61
	ld b,(hl)		;9c62
	add a,c			;9c63
	add hl,sp		;9c64
	add a,006h		;9c65
	ret m			;9c67
	ld a,b			;9c68
	add a,b			;9c69
	and b			;9c6a
	ld b,b			;9c6b
	ld b,b			;9c6c
	add a,b			;9c6d
	add a,a			;9c6e
	nop			;9c6f
	ex af,af'		;9c70
	rlca			;9c71
	inc e			;9c72
	ret po			;9c73
	ret po			;9c74
	nop			;9c75
	ld bc,01e00h		;9c76
	ld bc,01f21h		;9c79
	rst 18h			;9c7c
	ccf			;9c7d
	ld (hl),h		;9c7e
	rst 38h			;9c7f
	set 6,h			;9c80
	nop			;9c82
	nop			;9c83
	jr c,l9c86h		;9c84
l9c86h:
	rst 38h			;9c86
	nop			;9c87
	ex af,af'		;9c88
	rst 38h			;9c89
	rst 38h			;9c8a
	rst 38h			;9c8b
	adc a,b			;9c8c
	rst 38h			;9c8d
	ld (hl),a		;9c8e
	adc a,b			;9c8f
l9c90h:
	adc a,b			;9c90
	ld (hl),a		;9c91
	nop			;9c92
	nop			;9c93
	nop			;9c94
	nop			;9c95
	ret po			;9c96
	nop			;9c97
	ld e,0e0h		;9c98
	pop hl			;9c9a
	cp 03eh			;9c9b
	rst 38h			;9c9d
	call nc,0eb2bh		;9c9e
	djnz l9ca3h		;9ca1
l9ca3h:
	nop			;9ca3
	nop			;9ca4
	nop			;9ca5
	nop			;9ca6
	nop			;9ca7
	nop			;9ca8
	nop			;9ca9
	add a,b			;9caa
	nop			;9cab
	ld h,b			;9cac
	add a,b			;9cad
	jr l9c90h		;9cae
	and h			;9cb0
	ld a,b			;9cb1
	ld b,a			;9cb2
	ccf			;9cb3
	ld sp,0080fh		;9cb4
	rlca			;9cb7
	ld b,h			;9cb8
	inc bc			;9cb9
	inc hl			;9cba
	nop			;9cbb
	add hl,sp		;9cbc
	nop			;9cbd
l9cbeh:
	inc d			;9cbe
	ex af,af'		;9cbf
	inc c			;9cc0
	nop			;9cc1
	cp a			;9cc2
	rst 38h			;9cc3
	rst 28h			;9cc4
	rst 38h			;9cc5
	ld d,a			;9cc6
	rst 28h			;9cc7
	ex (sp),hl		;9cc8
	rst 38h			;9cc9
	dec c			;9cca
	di			;9ccb
	and d			;9ccc
l9ccdh:
	ld e,l			;9ccd
	call nc,0c92fh		;9cce
	ld (hl),0f9h		;9cd1
	cp 0fch			;9cd3
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
	ld a,a			;9ce0
	rst 38h			;9ce1
	ld (hl),b		;9ce2
	add a,b			;9ce3
	adc a,b			;9ce4
	ld (hl),b		;9ce5
	scf			;9ce6
	ret z			;9ce7
	ld c,b			;9ce8
	or a			;9ce9
	sub c			;9cea
	rst 28h			;9ceb
	jp c,0fcfdh		;9cec
	rst 38h			;9cef
	rst 38h			;9cf0
	rst 38h			;9cf1
	or c			;9cf2
	ld c,a			;9cf3
	ld b,(hl)		;9cf4
	add hl,sp		;9cf5
	ret z			;9cf6
	ccf			;9cf7
	or c			;9cf8
	ld c,046h		;9cf9
	add a,b			;9cfb
	jr c,l9cbeh		;9cfc
	add a,a			;9cfe
	ld a,b			;9cff
	ld (hl),b		;9d00
	adc a,a			;9d01
	rst 38h			;9d02
	rst 38h			;9d03
	cp a			;9d04
	rst 38h			;9d05
	ld c,l			;9d06
	cp a			;9d07
	or a			;9d08
	rrca			;9d09
	ld l,c			;9d0a
	rlca			;9d0b
	inc d			;9d0c
	inc bc			;9d0d
	ld (bc),a		;9d0e
	ld bc,000c1h		;9d0f
	rst 38h			;9d12
	rst 38h			;9d13
	rst 38h			;9d14
	rst 38h			;9d15
	rst 38h			;9d16
	rst 38h			;9d17
	ld c,a			;9d18
	rst 38h			;9d19
	rst 28h			;9d1a
	rst 38h			;9d1b
	exx			;9d1c
	rst 38h			;9d1d
	rrca			;9d1e
	rst 38h			;9d1f
	ld a,(de)		;9d20
	rst 38h			;9d21
	adc a,(hl)		;9d22
	pop af			;9d23
	ex (sp),hl		;9d24
	call m,0fefdh		;9d25
	cp 0ffh			;9d28
	rst 38h			;9d2a
	rst 38h			;9d2b
	rst 38h			;9d2c
	rst 38h			;9d2d
	rst 38h			;9d2e
	rst 38h			;9d2f
	rra			;9d30
	rst 38h			;9d31
	ret po			;9d32
	nop			;9d33
	sub b			;9d34
	ld h,b			;9d35
	ret z			;9d36
	jr nc,l9d82h		;9d37
	or b			;9d39
	or l			;9d3a
	ret m			;9d3b
	call p,0f4f8h		;9d3c
	ret m			;9d3f
	call po,063f8h		;9d40
	nop			;9d43
	ld b,b			;9d44
	nop			;9d45
	and c			;9d46
	nop			;9d47
	cp h			;9d48
	nop			;9d49
	call po,sub_94b8h	;9d4a
	jr c,l9db9h		;9d4d
	sbc a,h			;9d4f
	sub l			;9d50
	ld c,017h		;9d51
	nop			;9d53
	add a,b			;9d54
	nop			;9d55
	or b			;9d56
	nop			;9d57
	ld l,b			;9d58
	sub b			;9d59
	ret nc			;9d5a
	nop			;9d5b
	nop			;9d5c
	nop			;9d5d
	nop			;9d5e
	nop			;9d5f
	add a,b			;9d60
	nop			;9d61
	jp nc,00000h		;9d62
	nop			;9d65
	ld b,000h		;9d66
	ld e,000h		;9d68
	jr l9d6ch		;9d6a
l9d6ch:
	jr nz,l9d6eh		;9d6c
l9d6eh:
	inc de			;9d6e
	nop			;9d6f
	ld c,a			;9d70
	nop			;9d71
	ld h,b			;9d72
	nop			;9d73
	ret nz			;9d74
	nop			;9d75
	ret po			;9d76
	nop			;9d77
	ld b,d			;9d78
	nop			;9d79
	ld a,(bc)		;9d7a
	nop			;9d7b
	inc hl			;9d7c
	nop			;9d7d
	ld sp,hl		;9d7e
	nop			;9d7f
	sbc a,c			;9d80
	nop			;9d81
l9d82h:
	dec bc			;9d82
	inc b			;9d83
	inc d			;9d84
	ex af,af'		;9d85
	jr l9d88h		;9d86
l9d88h:
	ld sp,06100h		;9d88
	nop			;9d8b
	ld bc,00300h		;9d8c
	nop			;9d8f
	and d			;9d90
	nop			;9d91
	inc h			;9d92
	jr $+90			;9d93
	jr nz,$-93		;9d95
	nop			;9d97
	ld b,d			;9d98
	ld bc,00385h		;9d99
	ld a,(bc)		;9d9c
	rlca			;9d9d
	inc d			;9d9e
	rrca			;9d9f
	add hl,hl		;9da0
	ld e,037h		;9da1
	rrca			;9da3
	ld c,h			;9da4
	ccf			;9da5
	or d			;9da6
	ld a,h			;9da7
	ld l,a			;9da8
	ret p			;9da9
	sub e			;9daa
	ret po			;9dab
	ld l,(hl)		;9dac
	add a,c			;9dad
	sub l			;9dae
	ex af,af'		;9daf
	ld l,(hl)		;9db0
	ld de,0c33ch		;9db1
	out (00fh),a		;9db4
	ld l,(hl)		;9db6
	dec e			;9db7
	cp (hl)			;9db8
l9db9h:
	ld b,c			;9db9
	ld c,c			;9dba
	add a,a			;9dbb
	or b			;9dbc
	rrca			;9dbd
	ld c,a			;9dbe
	or b			;9dbf
	ld (hl),b		;9dc0
	add a,b			;9dc1
	ld (hl),a		;9dc2
	rst 38h			;9dc3
	ld e,0ffh		;9dc4
	push hl			;9dc6
	ld a,(de)		;9dc7
	djnz $+1		;9dc8
	call m,00affh		;9dca
	defb 0fdh,0d0h,02fh ;illegal sequence	;9dcd
	ld l,001h		;9dd0
	ld d,0f8h		;9dd2
	ld sp,hl		;9dd4
	cp 01eh			;9dd5
	rst 38h			;9dd7
	ex (sp),hl		;9dd8
	rra			;9dd9
	dec d			;9dda
	ex de,hl		;9ddb
	ld hl,(0c5f1h)		;9ddc
	jr c,$+40		;9ddf
	ret m			;9de1
	ld e,d			;9de2
	inc a			;9de3
	xor l			;9de4
	ld e,056h		;9de5
	adc a,a			;9de7
	ld c,d			;9de8
	add a,a			;9de9
	or l			;9dea
	jp 0e152h		;9deb
	xor c			;9dee
	ld (hl),b		;9def
	ld c,c			;9df0
	jr nc,l9dfdh		;9df1
	inc b			;9df3
l9df4h:
	ld a,(bc)		;9df4
	inc b			;9df5
	add a,l			;9df6
	ld (bc),a		;9df7
	add a,l			;9df8
	ld (bc),a		;9df9
	ld b,l			;9dfa
	add a,d			;9dfb
	ld b,d			;9dfc
l9dfdh:
	add a,c			;9dfd
	ld b,d			;9dfe
	add a,c			;9dff
l9e00h:
	and d			;9e00
	ld b,c			;9e01
	ld l,d			;9e02
	rla			;9e03
	ld h,l			;9e04
	dec de			;9e05
	ld a,(03d01h)		;9e06
	nop			;9e09
	dec (hl)		;9e0a
	nop			;9e0b
	sub (hl)		;9e0c
	nop			;9e0d
	sub d			;9e0e
	nop			;9e0f
	adc a,c			;9e10
	ld (bc),a		;9e11
	rst 38h			;9e12
	ld a,a			;9e13
	ccf			;9e14
	rst 38h			;9e15
	rra			;9e16
	rst 38h			;9e17
	rra			;9e18
	rst 38h			;9e19
	ld a,a			;9e1a
	rst 38h			;9e1b
	adc a,a			;9e1c
	ld a,a			;9e1d
	xor a			;9e1e
	ld a,a			;9e1f
	ld l,a			;9e20
	rst 38h			;9e21
	add a,l			;9e22
	jp m,0ffe8h		;9e23
	defb 0fdh,0feh,0feh ;illegal sequence	;9e26
	rst 38h			;9e29
	ei			;9e2a
	rst 38h			;9e2b
	cp 0ffh			;9e2c
	rst 38h			;9e2e
	rst 38h			;9e2f
	rst 38h			;9e30
	rst 38h			;9e31
	jr nc,l9df4h		;9e32
	ld c,h			;9e34
	ret p			;9e35
	sub h			;9e36
	ld a,b			;9e37
	ld h,e			;9e38
	sbc a,h			;9e39
	cp c			;9e3a
	add a,00ch		;9e3b
	di			;9e3d
	inc l			;9e3e
l9e3fh:
	di			;9e3f
	sub (hl)		;9e40
	ld sp,hl		;9e41
	ret			;9e42
	scf			;9e43
	dec h			;9e44
	dec de			;9e45
	inc de			;9e46
	rrca			;9e47
	ld a,(bc)		;9e48
	rlca			;9e49
	add hl,bc		;9e4a
	ld b,084h		;9e4b
	inc bc			;9e4d
	add a,d			;9e4e
	ld bc,08142h		;9e4f
	adc a,a			;9e52
	rst 38h			;9e53
	rst 28h			;9e54
	rst 38h			;9e55
	rst 30h			;9e56
	rst 38h			;9e57
	ld d,a			;9e58
	rst 38h			;9e59
	ld d,a			;9e5a
	rst 38h			;9e5b
	ld c,a			;9e5c
	rst 38h			;9e5d
	rst 18h			;9e5e
	rst 38h			;9e5f
	sbc a,a			;9e60
	rst 38h			;9e61
	jp nc,0eaech		;9e62
	call p,0fef1h		;9e65
	jp m,0ffffh		;9e68
	rst 38h			;9e6b
	rst 38h			;9e6c
	rst 38h			;9e6d
	rst 38h			;9e6e
	rst 38h			;9e6f
l9e70h:
	cp 0ffh			;9e70
	ld l,(hl)		;9e72
	add a,a			;9e73
	sub c			;9e74
	ld l,a			;9e75
	ld e,h			;9e76
	daa			;9e77
	ld h,l			;9e78
	inc bc			;9e79
	and (hl)		;9e7a
	ld bc,00061h		;9e7b
	sub c			;9e7e
	ld h,b			;9e7f
	ld de,078e0h		;9e80
	add a,b			;9e83
	add a,a			;9e84
	ret m			;9e85
	ret m			;9e86
	rst 38h			;9e87
	push af			;9e88
	ei			;9e89
	rst 30h			;9e8a
	ret m			;9e8b
	ret pe			;9e8c
	rst 38h			;9e8d
	ld h,a			;9e8e
	rst 38h			;9e8f
	add hl,hl		;9e90
	rst 30h			;9e91
	ld d,b			;9e92
	jr nz,l9ecdh		;9e93
	nop			;9e95
	ret nz			;9e96
	nop			;9e97
	ld h,b			;9e98
	add a,b			;9e99
	ld e,0e0h		;9e9a
	ex (sp),hl		;9e9c
	inc e			;9e9d
	inc h			;9e9e
	rst 18h			;9e9f
	in a,(0e7h)		;9ea0
	ld (hl),008h		;9ea2
	dec bc			;9ea4
	inc b			;9ea5
	dec b			;9ea6
	ld (bc),a		;9ea7
	ld b,000h		;9ea8
	nop			;9eaa
	nop			;9eab
	nop			;9eac
	nop			;9ead
	add a,b			;9eae
	nop			;9eaf
	ld h,b			;9eb0
	add a,b			;9eb1
	ld b,h			;9eb2
	jr nz,l9ef9h		;9eb3
	jr nz,l9e3fh		;9eb5
	ld b,b			;9eb7
	sub c			;9eb8
	ld b,b			;9eb9
	ld h,c			;9eba
	nop			;9ebb
	ld (bc),a		;9ebc
	ld bc,00103h		;9ebd
	dec b			;9ec0
	inc bc			;9ec1
	ld e,d			;9ec2
	inc a			;9ec3
	ld d,l			;9ec4
	jr c,l9e70h		;9ec5
	ld (hl),b		;9ec7
	ld d,d			;9ec8
l9ec9h:
	pop hl			;9ec9
	ld (0e5c1h),a		;9eca
l9ecdh:
	add a,d			;9ecd
	ld b,(hl)		;9ece
	add a,b			;9ecf
	ld c,e			;9ed0
	add a,h			;9ed1
	sub l			;9ed2
	ld h,d			;9ed3
	ld l,0c0h		;9ed4
	ld e,b			;9ed6
	and b			;9ed7
	or b			;9ed8
	nop			;9ed9
	ld h,c			;9eda
	add a,b			;9edb
	jp nz,l8501h		;9edc
	ld (bc),a		;9edf
	adc a,l			;9ee0
	ld (bc),a		;9ee1
	add a,b			;9ee2
	nop			;9ee3
	rlca			;9ee4
	nop			;9ee5
	dec de			;9ee6
	inc b			;9ee7
	ld a,h			;9ee8
	nop			;9ee9
	ret po			;9eea
	nop			;9eeb
	add a,b			;9eec
	nop			;9eed
	nop			;9eee
	nop			;9eef
	nop			;9ef0
	nop			;9ef1
	exx			;9ef2
	nop			;9ef3
	daa			;9ef4
	ret c			;9ef5
	call m,00303h		;9ef6
l9ef9h:
	nop			;9ef9
	ld bc,00000h		;9efa
	nop			;9efd
	nop			;9efe
	nop			;9eff
	nop			;9f00
	nop			;9f01
	pop de			;9f02
	ld l,(hl)		;9f03
	ld l,b			;9f04
	scf			;9f05
	or (hl)			;9f06
	add hl,de		;9f07
	defb 0ddh,088h,0cdh ;illegal sequence	;9f08
	nop			;9f0b
	ld c,d			;9f0c
	inc b			;9f0d
	ld b,000h		;9f0e
	ld b,000h		;9f10
	ld h,h			;9f12
	jr l9ec9h		;9f13
	ex af,af'		;9f15
	ld d,b			;9f16
	adc a,h			;9f17
	ld c,d			;9f18
	add a,h			;9f19
	jp z,0a604h		;9f1a
	ld b,b			;9f1d
	and (hl)		;9f1e
	ld b,b			;9f1f
	and (hl)		;9f20
	ld b,b			;9f21
	and d			;9f22
	ld b,c			;9f23
	and e			;9f24
	ld b,b			;9f25
	ld h,d			;9f26
	nop			;9f27
	ld b,d			;9f28
	nop			;9f29
	ld (bc),a		;9f2a
	nop			;9f2b
	ld (bc),a		;9f2c
	nop			;9f2d
	ld (bc),a		;9f2e
	nop			;9f2f
	dec b			;9f30
	nop			;9f31
	add a,(hl)		;9f32
	nop			;9f33
	add a,l			;9f34
	ld (bc),a		;9f35
	ret nz			;9f36
	ld b,0c9h		;9f37
	ld b,0c9h		;9f39
	ld b,0c5h		;9f3b
	ld (bc),a		;9f3d
	add a,l			;9f3e
	ld (bc),a		;9f3f
	adc a,l			;9f40
	ld (bc),a		;9f41
	or a			;9f42
	ld a,a			;9f43
	or a			;9f44
	ld a,a			;9f45
	rst 18h			;9f46
	ccf			;9f47
	ld d,a			;9f48
	ccf			;9f49
	ld e,a			;9f4a
	ccf			;9f4b
	ld e,a			;9f4c
	ccf			;9f4d
	cpl			;9f4e
	rra			;9f4f
	dec hl			;9f50
	rra			;9f51
	or a			;9f52
	ret m			;9f53
	jp pe,02ff5h		;9f54
	ret p			;9f57
	sbc a,h			;9f58
	ex (sp),hl		;9f59
	jp c,042e7h		;9f5a
	cp a			;9f5d
	ld e,l			;9f5e
	or d			;9f5f
	ld l,e			;9f60
	sub b			;9f61
	jp nz,0c201h		;9f62
	ld bc,041a2h		;9f65
	push bc			;9f68
	inc bc			;9f69
	ld b,h			;9f6a
	add a,e			;9f6b
	adc a,e			;9f6c
	rlca			;9f6d
	ld d,00fh		;9f6e
	dec h			;9f70
	ld e,0afh		;9f71
	rst 18h			;9f73
	rst 18h			;9f74
	rst 38h			;9f75
	xor a			;9f76
	rst 18h			;9f77
	ld e,a			;9f78
	rst 38h			;9f79
	cp a			;9f7a
	ld a,a			;9f7b
	ld a,a			;9f7c
	rst 38h			;9f7d
	rst 18h			;9f7e
	rst 38h			;9f7f
	ld a,a			;9f80
	rst 38h			;9f81
	rst 38h			;9f82
	rst 38h			;9f83
	cp 0ffh			;9f84
	defb 0fdh,0feh,0fdh ;illegal sequence	;9f86
	cp 0feh			;9f89
	call m,0fefdh		;9f8b
	cp 0ffh			;9f8e
	defb 0fdh,0feh,0e1h ;illegal sequence	;9f90
	nop			;9f93
	ld hl,0a2c0h		;9f94
	ld b,c			;9f97
	ld b,d			;9f98
	add a,c			;9f99
	ld b,d			;9f9a
	add a,c			;9f9b
	ld b,c			;9f9c
	add a,b			;9f9d
	ld b,b			;9f9e
	add a,b			;9f9f
	ld b,b			;9fa0
	add a,b			;9fa1
	ld c,d			;9fa2
	push af			;9fa3
	ld l,a			;9fa4
	ret p			;9fa5
	push af			;9fa6
	ret m			;9fa7
	ei			;9fa8
	call m,0fffch		;9fa9
	ld a,0ffh		;9fac
	rst 18h			;9fae
	ccf			;9faf
	cpl			;9fb0
	rra			;9fb1
	inc h			;9fb2
	di			;9fb3
	adc a,c			;9fb4
	ld (hl),b		;9fb5
	ld h,h			;9fb6
	jr l9fcah		;9fb7
	ld c,08ch		;9fb9
	inc bc			;9fbb
	ld b,d			;9fbc
	add a,c			;9fbd
	inc hl			;9fbe
	ret nz			;9fbf
	sub c			;9fc0
	ret po			;9fc1
	sub b			;9fc2
	ret po			;9fc3
	ld e,h			;9fc4
	and b			;9fc5
	xor b			;9fc6
	djnz $+86		;9fc7
	cp b			;9fc9
l9fcah:
	ld a,(074fch)		;9fca
	ret m			;9fcd
	dec (hl)		;9fce
	ret m			;9fcf
	sbc a,d			;9fd0
	ld a,h			;9fd1
	ld b,h			;9fd2
	inc bc			;9fd3
	ld b,h			;9fd4
	inc bc			;9fd5
	adc a,c			;9fd6
	ld b,089h		;9fd7
	ld b,089h		;9fd9
	ld b,089h		;9fdb
	ld b,089h		;9fdd
	ld b,089h		;9fdf
	ld b,08dh		;9fe1
	nop			;9fe3
	adc a,e			;9fe4
	nop			;9fe5
	dec bc			;9fe6
	nop			;9fe7
	ld (bc),a		;9fe8
	nop			;9fe9
	ld (de),a		;9fea
	nop			;9feb
	ld (de),a		;9fec
	nop			;9fed
	ld (de),a		;9fee
	nop			;9fef
	ld (bc),a		;9ff0
	nop			;9ff1
	ld a,(de)		;9ff2
	nop			;9ff3
	ld d,000h		;9ff4
	inc d			;9ff6
	nop			;9ff7
	inc (hl)		;9ff8
	nop			;9ff9
	inc l			;9ffa
	nop			;9ffb
	ld l,h			;9ffc
	nop			;9ffd
	ld h,(hl)		;9ffe
	nop			;9fff
