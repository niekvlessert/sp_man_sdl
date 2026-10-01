; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank25_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank25.bin

	org 08000h

	rst 38h			;8000
	rst 38h			;8001
	rst 38h			;8002
	rst 38h			;8003
	rst 38h			;8004
	rst 38h			;8005
	rst 38h			;8006
	rst 38h			;8007
	rst 38h			;8008
	rst 38h			;8009
	rst 38h			;800a
	rst 38h			;800b
	rst 38h			;800c
	rst 38h			;800d
	rst 38h			;800e
	rst 38h			;800f
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
	ld (bc),a		;8020
	ld (bc),a		;8021
	ld (bc),a		;8022
	ld (bc),a		;8023
	cp h			;8024
	jp nz,0babbh		;8025
	call nz,0c1c0h		;8028
	push bc			;802b
	ld (bc),a		;802c
	ld (bc),a		;802d
	ld (bc),a		;802e
	ld (bc),a		;802f
	ld (bc),a		;8030
	ld (bc),a		;8031
	ld (bc),a		;8032
	ld (bc),a		;8033
	cp l			;8034
	cp (hl)			;8035
	cp e			;8036
	cp d			;8037
l8038h:
	call nz,0bfc3h		;8038
	push bc			;803b
	ld (bc),a		;803c
	ld (bc),a		;803d
	ld (bc),a		;803e
	ld (bc),a		;803f
	nop			;8040
	nop			;8041
	nop			;8042
	nop			;8043
	nop			;8044
	ld c,e			;8045
	ld (00000h),a		;8046
	ld h,c			;8049
	ld c,(hl)		;804a
	ld c,a			;804b
	nop			;804c
	ld l,l			;804d
	ld d,c			;804e
	ld (hl),l		;804f
	xor c			;8050
	ld h,h			;8051
	ld d,b			;8052
	halt			;8053
	or (hl)			;8054
	ld d,d			;8055
	sub (hl)		;8056
	sbc a,c			;8057
	xor d			;8058
	or a			;8059
	cp b			;805a
	xor b			;805b
	sub d			;805c
	ld (hl),h		;805d
	sub a			;805e
	sbc a,d			;805f
	xor c			;8060
	ld d,d			;8061
	add a,e			;8062
	sbc a,c			;8063
	or (hl)			;8064
	or a			;8065
	cp b			;8066
	xor b			;8067
	xor d			;8068
	cp c			;8069
	sub a			;806a
	sbc a,e			;806b
	sub d			;806c
	cp d			;806d
	ld e,04ah		;806e
	xor c			;8070
	sub h			;8071
	sub l			;8072
	xor e			;8073
	scf			;8074
	or a			;8075
	cp b			;8076
	xor b			;8077
	add hl,sp		;8078
	cp c			;8079
	sub a			;807a
	sbc a,e			;807b
	jr c,l8038h		;807c
	ld e,04ah		;807e
	inc hl			;8080
	inc l			;8081
	dec hl			;8082
	ld (02d24h),hl		;8083
	daa			;8086
	dec h			;8087
	inc d			;8088
	ld h,029h		;8089
	ld (de),a		;808b
	inc de			;808c
	jr z,l80b9h		;808d
	ld (bc),a		;808f
	ld c,a			;8090
	nop			;8091
	nop			;8092
	nop			;8093
	ld (hl),l		;8094
	nop			;8095
	nop			;8096
	nop			;8097
	halt			;8098
	nop			;8099
	nop			;809a
	nop			;809b
	sbc a,c			;809c
	nop			;809d
	nop			;809e
	nop			;809f
	xor e			;80a0
	nop			;80a1
	nop			;80a2
	nop			;80a3
	xor b			;80a4
	nop			;80a5
	nop			;80a6
	nop			;80a7
	sbc a,e			;80a8
	nop			;80a9
	nop			;80aa
	nop			;80ab
	ld c,d			;80ac
	nop			;80ad
	nop			;80ae
	nop			;80af
	ld (00000h),hl		;80b0
	nop			;80b3
l80b4h:
	dec h			;80b4
	nop			;80b5
	nop			;80b6
	nop			;80b7
	ld (de),a		;80b8
l80b9h:
	nop			;80b9
	nop			;80ba
	nop			;80bb
	ld (bc),a		;80bc
	nop			;80bd
	nop			;80be
	nop			;80bf
	nop			;80c0
	ld h,c			;80c1
	ld c,(hl)		;80c2
	ld c,a			;80c3
	nop			;80c4
	ld l,l			;80c5
	ld d,c			;80c6
	ld (hl),l		;80c7
	nop			;80c8
	ld h,h			;80c9
	ld d,b			;80ca
	halt			;80cb
l80cch:
	nop			;80cc
	ld d,d			;80cd
	sub (hl)		;80ce
	sbc a,c			;80cf
	rlca			;80d0
	dec bc			;80d1
	inc hl			;80d2
	inc l			;80d3
	dec e			;80d4
	rra			;80d5
	inc h			;80d6
	dec l			;80d7
	dec e			;80d8
	rra			;80d9
	inc d			;80da
	ld h,01ch		;80db
	rla			;80dd
	inc de			;80de
	jr z,l810ch		;80df
	ld (00d21h),hl		;80e1
	daa			;80e4
	dec h			;80e5
	inc c			;80e6
	jr nz,l8112h		;80e7
	ld (de),a		;80e9
	add hl,de		;80ea
	dec c			;80eb
	ld hl,(01802h)		;80ec
	ld (bc),a		;80ef
	dec h			;80f0
	xor l			;80f1
	ld l,03ah		;80f2
l80f4h:
	sbc a,h			;80f4
	and b			;80f5
	and d			;80f6
	sbc a,(hl)		;80f7
	sbc a,l			;80f8
	and c			;80f9
	and e			;80fa
	sbc a,a			;80fb
	ld a,(0253fh)		;80fc
	ld a,(03c7ch)		;80ff
	add a,c			;8102
	inc a			;8103
	add a,h			;8104
	ld b,b			;8105
	cpl			;8106
	ld b,b			;8107
	ld a,h			;8108
	or b			;8109
	or d			;810a
	or e			;810b
l810ch:
	ld a,c			;810c
	jr nc,l80b4h		;810d
	ld c,h			;810f
	add a,c			;8110
	inc a			;8111
l8112h:
	add a,c			;8112
	inc a			;8113
	cpl			;8114
	ld b,b			;8115
	cpl			;8116
	ld b,b			;8117
	or h			;8118
	or e			;8119
	or d			;811a
	or b			;811b
	ld h,b			;811c
	ld (hl),d		;811d
	ld a,(hl)		;811e
	ld b,a			;811f
	ld a,h			;8120
	or c			;8121
	ld sp,0796ah		;8122
	jr nc,l80cch		;8125
	ld l,c			;8127
	ld a,h			;8128
	or c			;8129
	ld sp,l84b2h		;812a
	sub c			;812d
	ld l,03ah		;812e
	add a,a			;8130
	ld l,e			;8131
	and (hl)		;8132
	ld (hl),08fh		;8133
	ld l,h			;8135
	ld a,(hl)		;8136
	ld b,a			;8137
	dec l			;8138
	or d			;8139
	and (hl)		;813a
	ld (hl),048h		;813b
	sub c			;813d
	ld l,03ah		;813e
	ld a,h			;8140
	inc a			;8141
	add a,c			;8142
	inc a			;8143
	add a,h			;8144
	ld b,b			;8145
	cpl			;8146
	ld b,b			;8147
	ld a,h			;8148
	or b			;8149
	or d			;814a
	or e			;814b
	ld a,c			;814c
	jr nc,l80f4h		;814d
	xor (hl)		;814f
	add a,c			;8150
	inc a			;8151
	add a,c			;8152
	inc a			;8153
	cpl			;8154
	ld b,b			;8155
	cpl			;8156
	ld b,b			;8157
	or h			;8158
	or e			;8159
	or d			;815a
	or b			;815b
	sub e			;815c
	xor h			;815d
	add a,d			;815e
	ld b,a			;815f
	ld a,h			;8160
	dec a			;8161
	dec sp			;8162
	ld a,084h		;8163
	ccf			;8165
	dec h			;8166
	adc a,(hl)		;8167
	ld a,c			;8168
	jr nc,l81e5h		;8169
	ex af,af'		;816b
	inc c			;816c
	ex af,af'		;816d
	add hl,bc		;816e
	dec b			;816f
	ld b,c			;8170
	or l			;8171
	dec sp			;8172
	sub c			;8173
	ld b,d			;8174
	sub b			;8175
	dec h			;8176
	ld a,(00909h)		;8177
	ld a,(hl)		;817a
	ld b,a			;817b
	ld bc,00a01h		;817c
	ld b,07ch		;817f
	or c			;8181
	ld sp,0793dh		;8182
	jr nc,$-89		;8185
	sub c			;8187
	ld a,h			;8188
	or c			;8189
	ld sp,l84b2h		;818a
	xor l			;818d
	ld l,03ah		;818e
	dec h			;8190
	ccf			;8191
	ld c,c			;8192
	ld (hl),025h		;8193
	xor h			;8195
	add a,d			;8196
	ld b,a			;8197
	ld a,(0493dh)		;8198
	ld (hl),03ah		;819b
	xor (hl)		;819d
	ld l,03ah		;819e
	ld hl,0151ah		;81a0
	djnz l81b1h		;81a3
	jr nz,l81c5h		;81a5
	ld a,(de)		;81a7
	add hl,de		;81a8
	ld a,(de)		;81a9
	dec d			;81aa
	ld de,00218h		;81ab
	ld (bc),a		;81ae
	ld (bc),a		;81af
	ld (bc),a		;81b0
l81b1h:
	ld (bc),a		;81b1
	ld a,(de)		;81b2
	ld (bc),a		;81b3
	dec d			;81b4
	dec d			;81b5
	jr nz,l81d6h		;81b6
	ld (bc),a		;81b8
	ld (bc),a		;81b9
	ld a,(de)		;81ba
	dec d			;81bb
	ld (bc),a		;81bc
	ld (bc),a		;81bd
	ld (bc),a		;81be
	ld (bc),a		;81bf
	nop			;81c0
	nop			;81c1
	nop			;81c2
	nop			;81c3
	and a			;81c4
l81c5h:
	add a,c			;81c5
	inc a			;81c6
	add a,c			;81c7
	jr z,l81f9h		;81c8
	ld b,b			;81ca
	cpl			;81cb
	ld e,e			;81cc
	adc a,c			;81cd
	ld l,b			;81ce
	or h			;81cf
	nop			;81d0
	nop			;81d1
	nop			;81d2
	nop			;81d3
	inc a			;81d4
	add a,c			;81d5
l81d6h:
	inc a			;81d6
	add a,c			;81d7
	ld b,b			;81d8
	cpl			;81d9
	ld b,b			;81da
	cpl			;81db
	ld h,d			;81dc
	or d			;81dd
	add a,(hl)		;81de
	or d			;81df
	ld a,e			;81e0
	ld a,l			;81e1
	ld h,a			;81e2
	adc a,d			;81e3
	ld e,e			;81e4
l81e5h:
	adc a,c			;81e5
	ld h,(hl)		;81e6
	ld l,(hl)		;81e7
	adc a,b			;81e8
	adc a,e			;81e9
	ld e,c			;81ea
	ld d,l			;81eb
	add a,l			;81ec
	sbc a,b			;81ed
	ld (hl),c		;81ee
	ld l,a			;81ef
	ld d,e			;81f0
	adc a,h			;81f1
	ld e,l			;81f2
	ld e,(hl)		;81f3
	ld d,a			;81f4
	ld d,(hl)		;81f5
	ld e,h			;81f6
	ld e,a			;81f7
	ld e,b			;81f8
l81f9h:
	ld d,h			;81f9
	ld e,d			;81fa
	ld (hl),b		;81fb
	ld h,l			;81fc
	ld c,l			;81fd
	ld (hl),a		;81fe
	and h			;81ff
	ld h,02eh		;8200
	xor l			;8202
	ld l,027h		;8203
	dec sp			;8205
	adc a,l			;8206
	ld a,078h		;8207
	ld a,c			;8209
	jr nc,$-112		;820a
	ld h,009h		;820c
	add hl,bc		;820e
	ex af,af'		;820f
l8210h:
	ld h,e			;8210
	xor l			;8211
	ld l,03ah		;8212
	ld b,c			;8214
	or l			;8215
	dec sp			;8216
	xor a			;8217
	ld b,d			;8218
	sub b			;8219
	ld a,(hl)		;821a
	ld b,a			;821b
	add hl,bc		;821c
	add hl,bc		;821d
	ld a,(bc)		;821e
	ld b,00ch		;821f
	ex af,af'		;8221
	add hl,bc		;8222
	dec b			;8223
	ld hl,0151ah		;8224
	djnz l8235h		;8227
	jr nz,$+32		;8229
	dec c			;822b
	dec d			;822c
	ld a,(de)		;822d
	dec d			;822e
	ld de,00101h		;822f
	ld a,(bc)		;8232
	ld b,016h		;8233
l8235h:
	ld d,00dh		;8235
	ld (bc),a		;8237
	ld a,(de)		;8238
	dec d			;8239
	jr nz,l825ah		;823a
	ld (bc),a		;823c
	ld (bc),a		;823d
	dec c			;823e
	dec d			;823f
	nop			;8240
	nop			;8241
	nop			;8242
	nop			;8243
	and a			;8244
	add a,c			;8245
	inc a			;8246
	add a,c			;8247
	jr z,l8279h		;8248
	ld b,b			;824a
	cpl			;824b
	ld a,h			;824c
	or d			;824d
	or e			;824e
	or h			;824f
	nop			;8250
	nop			;8251
	nop			;8252
	nop			;8253
l8254h:
	inc a			;8254
	add a,c			;8255
	inc a			;8256
	add a,c			;8257
	ld b,b			;8258
	cpl			;8259
l825ah:
	ld b,b			;825a
	cpl			;825b
	or e			;825c
	or h			;825d
	or e			;825e
	or d			;825f
	ld a,c			;8260
	jr nc,l82ddh		;8261
	xor (hl)		;8263
	ld a,h			;8264
	or c			;8265
	ld sp,0793dh		;8266
	jr nc,l8210h		;8269
	sub c			;826b
	ld a,h			;826c
	or c			;826d
	ld sp,l93b2h		;826e
	xor h			;8271
	add a,d			;8272
	ld b,a			;8273
	dec h			;8274
	dec a			;8275
	ld c,c			;8276
	ld (hl),025h		;8277
l8279h:
	xor h			;8279
	add a,d			;827a
	ld b,a			;827b
	ld a,(0493dh)		;827c
	ld (hl),084h		;827f
	xor l			;8281
	ld l,03ah		;8282
	ld a,h			;8284
	adc a,l			;8285
	dec sp			;8286
	ld a,084h		;8287
	dec a			;8289
	dec h			;828a
	adc a,(hl)		;828b
	ld a,c			;828c
	jr nc,$+124		;828d
	ex af,af'		;828f
	ld a,(02eaeh)		;8290
	ld a,(0b541h)		;8293
	dec sp			;8296
	sub c			;8297
	ld b,d			;8298
	sub b			;8299
	dec h			;829a
	ld a,(00909h)		;829b
	ld a,(hl)		;829e
	ld b,a			;829f
	ld a,c			;82a0
	jr nc,l831dh		;82a1
	xor l			;82a3
	or c			;82a4
	ld sp,0a09ch		;82a5
	or c			;82a8
	ld sp,0a19dh		;82a9
	ld a,c			;82ac
	jr nc,l8254h		;82ad
	ccf			;82af
	ld l,03ah		;82b0
	add a,d			;82b2
	ld b,a			;82b3
	and d			;82b4
	sbc a,(hl)		;82b5
	ld c,c			;82b6
	ld (hl),0a3h		;82b7
	sbc a,a			;82b9
	add a,d			;82ba
	ld b,a			;82bb
	dec h			;82bc
	ld a,(03649h)		;82bd
	nop			;82c0
	nop			;82c1
	nop			;82c2
	nop			;82c3
	nop			;82c4
	nop			;82c5
	ld c,e			;82c6
	ld (00000h),a		;82c7
	ld h,c			;82ca
	ld c,(hl)		;82cb
	nop			;82cc
	nop			;82cd
	ld l,l			;82ce
	ld d,c			;82cf
	nop			;82d0
	nop			;82d1
	nop			;82d2
	nop			;82d3
	nop			;82d4
	nop			;82d5
	nop			;82d6
	nop			;82d7
	ld c,a			;82d8
	nop			;82d9
	nop			;82da
	nop			;82db
	ld (hl),l		;82dc
l82ddh:
	nop			;82dd
	nop			;82de
	nop			;82df
	add a,c			;82e0
	xor c			;82e1
	ld h,h			;82e2
	ld d,b			;82e3
	cpl			;82e4
	or (hl)			;82e5
	ld d,d			;82e6
	sub (hl)		;82e7
	or d			;82e8
	xor d			;82e9
	or a			;82ea
	cp b			;82eb
	or b			;82ec
	sub d			;82ed
	ld (hl),h		;82ee
	sub a			;82ef
	halt			;82f0
	ld a,h			;82f1
	ld b,l			;82f2
	add hl,hl		;82f3
	sbc a,c			;82f4
	add a,h			;82f5
	ld (0a846h),hl		;82f6
	ld a,h			;82f9
	inc l			;82fa
	inc h			;82fb
	sbc a,e			;82fc
	ld a,c			;82fd
	ld hl,(0b22bh)		;82fe
	xor c			;8301
	ld d,d			;8302
	add a,e			;8303
	or b			;8304
	or (hl)			;8305
	or a			;8306
	cp b			;8307
	ld l,0aah		;8308
	cp c			;830a
	sub a			;830b
	dec sp			;830c
	sub d			;830d
	cp d			;830e
	ld e,099h		;830f
	jr nz,l8334h		;8311
	ld b,(hl)		;8313
	xor b			;8314
	ld a,c			;8315
	inc sp			;8316
	inc hl			;8317
	sbc a,e			;8318
	ld a,h			;8319
	inc sp			;831a
	inc hl			;831b
	ld c,d			;831c
l831dh:
	add a,h			;831d
l831eh:
	ld b,e			;831e
	inc (hl)		;831f
	add hl,bc		;8320
	xor c			;8321
	sub h			;8322
	sub l			;8323
	ld bc,0b737h		;8324
	cp b			;8327
	add hl,bc		;8328
	add hl,sp		;8329
	cp c			;832a
	sub a			;832b
	ld bc,0ba38h		;832c
	ld e,0abh		;832f
	ld a,h			;8331
	ld b,e			;8332
	inc (hl)		;8333
l8334h:
	xor b			;8334
	add a,h			;8335
	ld b,h			;8336
	dec (hl)		;8337
	sbc a,e			;8338
	ld a,c			;8339
	ld b,h			;833a
	dec (hl)		;833b
	ld c,d			;833c
	inc c			;833d
	inc b			;833e
	inc bc			;833f
	ld (bc),a		;8340
	inc hl			;8341
	inc l			;8342
	dec hl			;8343
	jr nz,l836ah		;8344
	dec l			;8346
	daa			;8347
	dec c			;8348
	inc d			;8349
	ld h,029h		;834a
	dec c			;834c
	inc de			;834d
	jr z,l837ah		;834e
	ld (00421h),hl		;8350
	inc bc			;8353
	dec h			;8354
	inc c			;8355
	ld (bc),a		;8356
	ld (bc),a		;8357
	ld (de),a		;8358
	add hl,de		;8359
	ld (bc),a		;835a
	ld (bc),a		;835b
	ld (bc),a		;835c
	jr l8361h		;835d
	ld (bc),a		;835f
	nop			;8360
l8361h:
	nop			;8361
	nop			;8362
	nop			;8363
	nop			;8364
	nop			;8365
	nop			;8366
	ld c,e			;8367
	nop			;8368
	nop			;8369
l836ah:
	nop			;836a
	ld h,c			;836b
	nop			;836c
	nop			;836d
	nop			;836e
	ld l,l			;836f
l8370h:
	nop			;8370
	nop			;8371
	nop			;8372
	nop			;8373
	ld (00000h),a		;8374
	nop			;8377
	ld c,(hl)		;8378
	ld c,a			;8379
l837ah:
	nop			;837a
	nop			;837b
	ld d,c			;837c
	ld (hl),l		;837d
	nop			;837e
	nop			;837f
	rra			;8380
	ld (hl),e		;8381
	xor c			;8382
	ld h,h			;8383
	dec d			;8384
	ld d,0b6h		;8385
	ld d,d			;8387
	rla			;8388
	inc e			;8389
l838ah:
	xor d			;838a
	or a			;838b
	jr l83a7h		;838c
	sub d			;838e
	ld (hl),h		;838f
	ld d,b			;8390
	halt			;8391
	ld a,h			;8392
	inc a			;8393
	sub (hl)		;8394
	sbc a,c			;8395
	add a,h			;8396
	ld b,b			;8397
	cp b			;8398
	xor b			;8399
	ld a,h			;839a
	or b			;839b
	sub a			;839c
	sbc a,e			;839d
	ld a,c			;839e
	jr nc,l83b5h		;839f
	ld de,052a9h		;83a1
	inc de			;83a4
	dec de			;83a5
	or (hl)			;83a6
l83a7h:
	or a			;83a7
	inc de			;83a8
	dec de			;83a9
	xor d			;83aa
	cp c			;83ab
	ld (de),a		;83ac
	dec e			;83ad
	sub d			;83ae
	cp d			;83af
	sub l			;83b0
	xor e			;83b1
	ld a,h			;83b2
	adc a,l			;83b3
	cp b			;83b4
l83b5h:
	xor b			;83b5
	add a,h			;83b6
	dec a			;83b7
	sub a			;83b8
	sbc a,e			;83b9
	ld a,c			;83ba
	jr nc,l83dbh		;83bb
	ld c,d			;83bd
	inc c			;83be
	ex af,af'		;83bf
	ld (de),a		;83c0
	dec e			;83c1
	xor c			;83c2
	sub h			;83c3
	djnz l83e0h		;83c4
	scf			;83c6
	or a			;83c7
	add a,b			;83c8
	ld a,a			;83c9
	add hl,sp		;83ca
	cp c			;83cb
	rlca			;83cc
	dec bc			;83cd
	jr c,l838ah		;83ce
	sub (hl)		;83d0
	sbc a,c			;83d1
	ld a,h			;83d2
	or c			;83d3
	cp b			;83d4
	xor b			;83d5
	ld a,c			;83d6
	jr nc,l8370h		;83d7
	sbc a,e			;83d9
	ld a,h			;83da
l83dbh:
	or c			;83db
	ld e,04ah		;83dc
	add a,h			;83de
	xor l			;83df
l83e0h:
	nop			;83e0
	nop			;83e1
	ld a,b			;83e2
	ret nz			;83e3
	nop			;83e4
	ld sp,0707eh		;83e5
	nop			;83e8
	nop			;83e9
	ld a,d			;83ea
	ld a,e			;83eb
	nop			;83ec
	nop			;83ed
	nop			;83ee
	nop			;83ef
	ld b,l			;83f0
	ld c,e			;83f1
	ld b,a			;83f2
	ld c,e			;83f3
	halt			;83f4
	ld (hl),a		;83f5
	ld h,e			;83f6
	ld h,e			;83f7
	or h			;83f8
	ld l,b			;83f9
	ld (hl),d		;83fa
	add a,e			;83fb
	or d			;83fc
	ld d,e			;83fd
	ld d,c			;83fe
	ld c,a			;83ff
	ld b,a			;8400
	ld c,e			;8401
	ld b,a			;8402
	ld c,c			;8403
	ld e,d			;8404
	ld h,c			;8405
	ld (hl),c		;8406
	ld e,d			;8407
	add a,h			;8408
	add a,(hl)		;8409
	add a,l			;840a
	add a,h			;840b
	ld d,b			;840c
	ld d,d			;840d
	ld c,l			;840e
	ld c,a			;840f
	ld c,d			;8410
	ld c,c			;8411
	ld b,a			;8412
	ld b,(hl)		;8413
	ld h,c			;8414
	ld (hl),c		;8415
	ld e,d			;8416
	ld h,d			;8417
	add a,(hl)		;8418
	add a,l			;8419
	add a,h			;841a
	add a,(hl)		;841b
	ld d,b			;841c
	ld d,d			;841d
	ld c,l			;841e
	ld c,a			;841f
	ld b,a			;8420
	ld c,e			;8421
	ld b,a			;8422
	ld b,(hl)		;8423
	halt			;8424
	ld (hl),a		;8425
	ld h,e			;8426
	ld h,e			;8427
	or h			;8428
	ld l,b			;8429
	ld (hl),d		;842a
	add a,e			;842b
	or d			;842c
	ld d,e			;842d
	ld d,c			;842e
	ld c,a			;842f
	ld c,b			;8430
	ld c,e			;8431
	ld b,a			;8432
	ld c,c			;8433
	ld e,d			;8434
	ld h,c			;8435
	ld (hl),c		;8436
	ld e,d			;8437
	add a,h			;8438
	add a,(hl)		;8439
	add a,l			;843a
	add a,h			;843b
	ld d,b			;843c
	ld d,d			;843d
	ld c,l			;843e
	ld c,a			;843f
	ld c,b			;8440
	ld c,e			;8441
	ld b,a			;8442
	ld c,e			;8443
	ld h,e			;8444
	ld h,e			;8445
	ld a,b			;8446
	ld a,c			;8447
	add a,d			;8448
	ld e,e			;8449
	ld a,l			;844a
	or l			;844b
	ld d,b			;844c
	ld l,e			;844d
	ld l,d			;844e
	or e			;844f
	nop			;8450
	sbc a,c			;8451
	sbc a,h			;8452
	adc a,(hl)		;8453
	cp l			;8454
	cp (hl)			;8455
	and l			;8456
	sub c			;8457
	call nz,0bfc3h		;8458
	push bc			;845b
	nop			;845c
	nop			;845d
	nop			;845e
	nop			;845f
	sub d			;8460
	sub h			;8461
	sub b			;8462
	adc a,(hl)		;8463
	sub a			;8464
	jp nz,l91a5h		;8465
	call nz,0c1c0h		;8468
	push bc			;846b
	nop			;846c
	nop			;846d
	nop			;846e
	nop			;846f
	sub d			;8470
	sub h			;8471
	sub b			;8472
	adc a,(hl)		;8473
	sbc a,b			;8474
	cp (hl)			;8475
	and l			;8476
	sub c			;8477
	call nz,0bfc3h		;8478
	push bc			;847b
	nop			;847c
	nop			;847d
	nop			;847e
	nop			;847f
	sub d			;8480
	sbc a,l			;8481
	sbc a,e			;8482
	nop			;8483
	sub a			;8484
	jp nz,0babbh		;8485
	call nz,0c1c0h		;8488
	push bc			;848b
	nop			;848c
	nop			;848d
	nop			;848e
	nop			;848f
	ld b,a			;8490
	ld c,e			;8491
	ld b,a			;8492
	ld c,e			;8493
	halt			;8494
	ld (hl),a		;8495
	ld h,e			;8496
	ld h,e			;8497
	or h			;8498
	ld l,b			;8499
	ld (hl),d		;849a
	add a,e			;849b
	or d			;849c
	ld d,e			;849d
	ld d,c			;849e
	ld c,a			;849f
	ld b,a			;84a0
	ld c,e			;84a1
	ld b,a			;84a2
	ld c,e			;84a3
	ld (hl),h		;84a4
	ld l,a			;84a5
	add a,c			;84a6
	add a,b			;84a7
	ld e,l			;84a8
	ld e,(hl)		;84a9
	ld d,l			;84aa
	ld d,a			;84ab
	ld e,a			;84ac
	ld h,b			;84ad
	ld d,(hl)		;84ae
	ld e,b			;84af
	ld b,a			;84b0
	ld c,e			;84b1
l84b2h:
	ld b,a			;84b2
	ld c,e			;84b3
	add a,c			;84b4
	add a,b			;84b5
	ld (hl),h		;84b6
	ld l,a			;84b7
	ld d,l			;84b8
	ld d,a			;84b9
	ld e,l			;84ba
	ld e,(hl)		;84bb
	ld d,(hl)		;84bc
	ld e,b			;84bd
	ld e,a			;84be
	ld h,b			;84bf
	nop			;84c0
	nop			;84c1
	nop			;84c2
	nop			;84c3
	add a,c			;84c4
	add a,b			;84c5
	ld (hl),h		;84c6
	ld l,a			;84c7
	ld d,l			;84c8
	ld d,a			;84c9
	ld e,l			;84ca
	ld e,(hl)		;84cb
	ld d,(hl)		;84cc
	ld e,b			;84cd
	ld e,a			;84ce
	ld h,b			;84cf
	ld b,a			;84d0
	ld c,e			;84d1
	ld b,a			;84d2
	ld c,h			;84d3
	add a,c			;84d4
	add a,b			;84d5
	add a,c			;84d6
	add a,b			;84d7
	ld d,l			;84d8
	ld d,a			;84d9
	ld d,l			;84da
	ld d,a			;84db
	ld d,(hl)		;84dc
	ld e,b			;84dd
	ld d,(hl)		;84de
	ld e,b			;84df
	nop			;84e0
	nop			;84e1
	nop			;84e2
	nop			;84e3
	ld a,h			;84e4
	ld a,h			;84e5
	adc a,c			;84e6
	ld a,h			;84e7
	ld d,h			;84e8
	ld e,c			;84e9
	ld d,h			;84ea
	ld e,c			;84eb
	ld a,a			;84ec
	ld a,a			;84ed
	add a,a			;84ee
	ld a,a			;84ef
	nop			;84f0
	nop			;84f1
	nop			;84f2
	nop			;84f3
	ld (hl),h		;84f4
	ld l,a			;84f5
	ld (hl),h		;84f6
	ld l,a			;84f7
	ld e,l			;84f8
	ld e,(hl)		;84f9
	ld e,l			;84fa
	ld e,(hl)		;84fb
	ld e,a			;84fc
	ld h,b			;84fd
	ld e,a			;84fe
	ld h,b			;84ff
	ld b,a			;8500
	ld e,a			;8501
	ld (hl),b		;8502
	ld (hl),b		;8503
	add a,c			;8504
	ld h,h			;8505
	ld (hl),l		;8506
	ld (hl),l		;8507
	ld d,l			;8508
	ld h,l			;8509
	adc a,b			;850a
	adc a,b			;850b
	ld d,(hl)		;850c
	ld e,b			;850d
	ld e,a			;850e
	ld h,b			;850f
	ld (hl),b		;8510
	ld (hl),b		;8511
	push bc			;8512
	ld c,e			;8513
	ld (hl),l		;8514
	ld (hl),l		;8515
	ld h,a			;8516
	add a,b			;8517
	adc a,b			;8518
	adc a,b			;8519
	ld h,(hl)		;851a
	ld d,a			;851b
	ld e,a			;851c
	ld h,b			;851d
	ld d,(hl)		;851e
	ld e,b			;851f
	nop			;8520
	nop			;8521
	nop			;8522
	nop			;8523
	ld (hl),h		;8524
	ld l,a			;8525
	add a,c			;8526
	add a,b			;8527
	ld e,l			;8528
	ld e,(hl)		;8529
	ld d,l			;852a
	ld d,a			;852b
	ld e,a			;852c
	ld h,b			;852d
	ld d,(hl)		;852e
	ld e,b			;852f
	ld b,l			;8530
	ld c,e			;8531
	ld b,a			;8532
	ld c,e			;8533
	ld (hl),h		;8534
	ld l,a			;8535
	add a,c			;8536
	add a,b			;8537
	ld e,l			;8538
	ld e,(hl)		;8539
	ld d,l			;853a
	ld d,a			;853b
	ld e,a			;853c
	ld h,b			;853d
	ld d,(hl)		;853e
	ld e,b			;853f
	ld b,a			;8540
	ld c,e			;8541
	ld b,a			;8542
	ld c,h			;8543
	add a,c			;8544
	add a,b			;8545
	ld (hl),h		;8546
	ld l,a			;8547
	ld d,l			;8548
	ld d,a			;8549
	ld e,l			;854a
	ld e,(hl)		;854b
	ld d,(hl)		;854c
	ld e,b			;854d
	ld e,a			;854e
	ld h,b			;854f
	nop			;8550
	ld d,e			;8551
	ld e,(hl)		;8552
	ld l,l			;8553
	ld e,l			;8554
	ld l,c			;8555
	ld e,d			;8556
	ld c,a			;8557
	ld a,c			;8558
	ld l,c			;8559
	ld e,d			;855a
	ld c,a			;855b
	ld c,(hl)		;855c
	ld d,l			;855d
	ld c,(hl)		;855e
	ld d,l			;855f
	ld h,h			;8560
	nop			;8561
	nop			;8562
	nop			;8563
	ld h,a			;8564
	ld l,a			;8565
	ld e,l			;8566
	ld l,a			;8567
	ld h,a			;8568
	ld d,a			;8569
	ld a,c			;856a
	ld d,a			;856b
	ld c,(hl)		;856c
	ld d,l			;856d
	ld c,(hl)		;856e
	add a,d			;856f
	nop			;8570
	nop			;8571
	nop			;8572
	nop			;8573
	nop			;8574
	nop			;8575
	nop			;8576
	nop			;8577
	nop			;8578
	nop			;8579
	nop			;857a
	nop			;857b
	ld d,e			;857c
	ld e,(hl)		;857d
	ld l,l			;857e
	ld h,h			;857f
	nop			;8580
	nop			;8581
	nop			;8582
	nop			;8583
	nop			;8584
	nop			;8585
	nop			;8586
	nop			;8587
	nop			;8588
	nop			;8589
	nop			;858a
	nop			;858b
	cp d			;858c
	nop			;858d
	nop			;858e
	nop			;858f
	dec (hl)		;8590
	ld e,e			;8591
	ld (hl),h		;8592
	add a,c			;8593
	ld (hl),0c1h		;8594
	ld a,h			;8596
	ld a,l			;8597
	ld (03c44h),a		;8598
	dec a			;859b
	nop			;859c
	cp e			;859d
	ld a,03bh		;859e
	jr c,l85e3h		;85a0
	ld b,b			;85a2
	add hl,sp		;85a3
	inc sp			;85a4
	scf			;85a5
	ccf			;85a6
	ld b,d			;85a7
	inc (hl)		;85a8
	dec a			;85a9
	ld a,(05443h)		;85aa
	ld d,l			;85ad
	ld c,(hl)		;85ae
	ld d,l			;85af
	ld l,c			;85b0
	ld e,d			;85b1
	ld c,a			;85b2
	ld h,a			;85b3
	ld l,c			;85b4
	ld e,d			;85b5
	ld c,a			;85b6
	ld h,a			;85b7
	ld l,c			;85b8
	ld e,d			;85b9
	ld c,a			;85ba
	ld h,a			;85bb
	ld l,e			;85bc
	ld d,l			;85bd
	ld c,(hl)		;85be
	ld d,l			;85bf
	nop			;85c0
	nop			;85c1
	nop			;85c2
	nop			;85c3
	nop			;85c4
	nop			;85c5
	nop			;85c6
	nop			;85c7
	cp h			;85c8
	jp nz,06f5dh		;85c9
	ld c,(hl)		;85cc
	ld d,l			;85cd
	ld c,(hl)		;85ce
	add a,d			;85cf
	nop			;85d0
	nop			;85d1
	nop			;85d2
	nop			;85d3
	cp h			;85d4
	jp nz,06f5dh		;85d5
	halt			;85d8
	ld e,b			;85d9
	ld a,c			;85da
	ld d,a			;85db
	ld l,e			;85dc
	ld d,l			;85dd
	ld c,(hl)		;85de
	ld d,l			;85df
	nop			;85e0
	nop			;85e1
	nop			;85e2
l85e3h:
	nop			;85e3
	ld e,l			;85e4
	ld l,a			;85e5
	ld e,l			;85e6
	ld l,a			;85e7
	ld a,c			;85e8
	ld d,a			;85e9
	ld a,c			;85ea
	ld d,a			;85eb
	ld c,(hl)		;85ec
	ld d,l			;85ed
	ld c,(hl)		;85ee
	ld d,l			;85ef
	nop			;85f0
	nop			;85f1
	nop			;85f2
	cp h			;85f3
	ld e,l			;85f4
	ld l,a			;85f5
	ld e,l			;85f6
	ld l,a			;85f7
	ld a,c			;85f8
	ld d,a			;85f9
	ld a,c			;85fa
	ld d,a			;85fb
	ld c,(hl)		;85fc
	ld d,l			;85fd
	ld c,(hl)		;85fe
	ld d,l			;85ff
	nop			;8600
	nop			;8601
	nop			;8602
	nop			;8603
	cp h			;8604
	jp nz,06f5dh		;8605
	halt			;8608
	ld e,b			;8609
	ld a,c			;860a
	ld d,a			;860b
	ld c,(hl)		;860c
	ld d,l			;860d
	ld c,(hl)		;860e
	ld d,l			;860f
	nop			;8610
	nop			;8611
	nop			;8612
	nop			;8613
	jp 000bdh		;8614
	nop			;8617
	ld l,(hl)		;8618
	ld d,(hl)		;8619
	jp 04e00h		;861a
	ld d,l			;861d
	ld c,(hl)		;861e
	ld c,l			;861f
	nop			;8620
	nop			;8621
	nop			;8622
	nop			;8623
	nop			;8624
	nop			;8625
	nop			;8626
	nop			;8627
	nop			;8628
	nop			;8629
	nop			;862a
	nop			;862b
	ld c,(hl)		;862c
	ld d,l			;862d
	ld c,(hl)		;862e
	ld c,l			;862f
	nop			;8630
	nop			;8631
	nop			;8632
	nop			;8633
	nop			;8634
	nop			;8635
	nop			;8636
	nop			;8637
	nop			;8638
	nop			;8639
	nop			;863a
	ld d,e			;863b
	nop			;863c
	nop			;863d
	nop			;863e
	ld l,c			;863f
	nop			;8640
	nop			;8641
	nop			;8642
	nop			;8643
	nop			;8644
	nop			;8645
	nop			;8646
	nop			;8647
	ld e,(hl)		;8648
	ld l,l			;8649
	ld h,h			;864a
	nop			;864b
	ld e,d			;864c
	ld c,a			;864d
	ld h,a			;864e
	nop			;864f
	ld a,(03a3ah)		;8650
	ld a,(03a3ah)		;8653
	ld a,(03a3ah)		;8656
	ld a,(03a3ah)		;8659
	ld a,(0353bh)		;865c
	add a,e			;865f
	ld h,h			;8660
	nop			;8661
	nop			;8662
	nop			;8663
	ld h,a			;8664
	jp 000bdh		;8665
	ld h,a			;8668
	ld l,(hl)		;8669
	ld d,(hl)		;866a
	jp 0554eh		;866b
	ld c,(hl)		;866e
	add a,d			;866f
	nop			;8670
	nop			;8671
	nop			;8672
	ld l,c			;8673
	ld e,l			;8674
	ld l,a			;8675
	ld e,l			;8676
	ld l,a			;8677
	ld a,c			;8678
	ld d,a			;8679
	ld a,c			;867a
	ld d,a			;867b
	ld c,(hl)		;867c
	ld d,l			;867d
	ld c,(hl)		;867e
	add a,d			;867f
	ld (03c44h),a		;8680
	dec a			;8683
	nop			;8684
	cp e			;8685
	ld a,03bh		;8686
	nop			;8688
	nop			;8689
	ld a,b			;868a
	ret nz			;868b
	nop			;868c
	ld sp,06c7ah		;868d
	inc (hl)		;8690
	dec a			;8691
	ld a,(03b43h)		;8692
	ld e,c			;8695
	ld e,c			;8696
	nop			;8697
	ret nz			;8698
	ccf			;8699
	ld b,d			;869a
	jp 03a6ch		;869b
	ld b,e			;869e
	ld l,(hl)		;869f
	nop			;86a0
	nop			;86a1
	nop			;86a2
	nop			;86a3
	nop			;86a4
	nop			;86a5
	nop			;86a6
	nop			;86a7
	cp l			;86a8
	nop			;86a9
	nop			;86aa
	nop			;86ab
	ld d,(hl)		;86ac
	jp 00000h		;86ad
	ld e,d			;86b0
	ld a,e			;86b1
	cp a			;86b2
	ld (hl),e		;86b3
	ld e,l			;86b4
	add a,h			;86b5
	cp (hl)			;86b6
	ld e,e			;86b7
	ld h,l			;86b8
	ld d,c			;86b9
	ld e,h			;86ba
	pop bc			;86bb
	ld l,e			;86bc
	ld d,l			;86bd
	ld c,(hl)		;86be
	ld d,l			;86bf
	ld l,d			;86c0
	ld l,d			;86c1
	ld l,d			;86c2
	ld a,a			;86c3
	ld (hl),b		;86c4
	ld (hl),b		;86c5
	ld (hl),b		;86c6
	push bc			;86c7
	ld (hl),c		;86c8
	ld (hl),c		;86c9
	ld (hl),c		;86ca
	ld h,e			;86cb
	ld (hl),d		;86cc
	ld (hl),d		;86cd
	ld (hl),d		;86ce
	ld h,d			;86cf
	add a,b			;86d0
	call nz,0c37eh		;86d1
	add a,e			;86d4
	add a,l			;86d5
	ld d,b			;86d6
	ld l,a			;86d7
	add a,e			;86d8
	ld (hl),l		;86d9
	ld d,d			;86da
	ld h,(hl)		;86db
	ld c,(hl)		;86dc
	ld d,l			;86dd
	ld c,(hl)		;86de
	ld d,l			;86df
	jp nz,0bf7bh		;86e0
	ld (hl),e		;86e3
	ld e,l			;86e4
	add a,h			;86e5
	cp (hl)			;86e6
	ld e,e			;86e7
	ld h,l			;86e8
	ld d,c			;86e9
	ld e,h			;86ea
	pop bc			;86eb
	ld c,(hl)		;86ec
	ld d,l			;86ed
	ld c,(hl)		;86ee
	ld d,l			;86ef
	ld (hl),a		;86f0
	ld (hl),a		;86f1
	ld l,d			;86f2
	ld l,d			;86f3
	ld (hl),h		;86f4
	add a,c			;86f5
	ld e,a			;86f6
	ld (hl),b		;86f7
	ld a,h			;86f8
	ld a,l			;86f9
	ld h,b			;86fa
	ld (hl),c		;86fb
	ld c,(hl)		;86fc
	ld d,l			;86fd
	ld h,c			;86fe
	ld (hl),d		;86ff
	nop			;8700
	nop			;8701
	nop			;8702
	nop			;8703
	nop			;8704
	nop			;8705
	nop			;8706
	nop			;8707
	nop			;8708
	nop			;8709
	nop			;870a
	nop			;870b
	ld d,h			;870c
	ld d,l			;870d
	ld c,(hl)		;870e
	ld d,l			;870f
	nop			;8710
	nop			;8711
	nop			;8712
	nop			;8713
	nop			;8714
	nop			;8715
	nop			;8716
	nop			;8717
	nop			;8718
	nop			;8719
	nop			;871a
	nop			;871b
	ld l,e			;871c
	ld d,l			;871d
	ld c,(hl)		;871e
	ld d,l			;871f
	nop			;8720
	nop			;8721
	ld (00039h),a		;8722
	nop			;8725
	inc sp			;8726
	ld a,000h		;8727
	ld (03c39h),a		;8729
	nop			;872c
	inc sp			;872d
	ld a,03dh		;872e
	inc a			;8730
	scf			;8731
	jr c,l876eh		;8732
	dec a			;8734
	inc (hl)		;8735
	ld (hl),03ah		;8736
	scf			;8738
	jr c,l8775h		;8739
	ld a,(03634h)		;873b
	dec sp			;873e
	dec (hl)		;873f
	inc a			;8740
	scf			;8741
	jr c,l877eh		;8742
	dec a			;8744
	inc (hl)		;8745
	ld (hl),03ah		;8746
	scf			;8748
	jr c,l8785h		;8749
	ld a,(03634h)		;874b
	dec sp			;874e
	dec (hl)		;874f
	ld a,(03a3ah)		;8750
	ld a,(03a3ah)		;8753
	ld a,(03a3ah)		;8756
	ld a,(03a3ah)		;8759
	add a,e			;875c
	dec sp			;875d
	dec (hl)		;875e
	add a,e			;875f
	nop			;8760
	nop			;8761
	nop			;8762
	nop			;8763
	nop			;8764
	nop			;8765
	cp e			;8766
	ld b,b			;8767
	nop			;8768
	nop			;8769
	cp h			;876a
	ld b,d			;876b
	nop			;876c
	nop			;876d
l876eh:
	nop			;876e
	nop			;876f
	nop			;8770
	nop			;8771
	nop			;8772
	nop			;8773
	ld b,c			;8774
l8775h:
	ld b,h			;8775
	ld c,c			;8776
	ld b,l			;8777
	ld b,e			;8778
	ld c,e			;8779
	ld c,d			;877a
	ccf			;877b
	nop			;877c
	cp l			;877d
l877eh:
	ret nz			;877e
	ld c,h			;877f
	halt			;8780
	ld e,b			;8781
	ld a,c			;8782
	ld d,a			;8783
	ld b,a			;8784
l8785h:
	ld b,a			;8785
	ld b,l			;8786
	ld b,a			;8787
	ld b,(hl)		;8788
	ld c,b			;8789
	ld b,(hl)		;878a
	ccf			;878b
	ld c,l			;878c
	ld c,(hl)		;878d
	add a,(hl)		;878e
	add a,a			;878f
	ld a,c			;8790
	ld d,a			;8791
	ld a,c			;8792
	ld d,a			;8793
	ld b,a			;8794
	ld b,a			;8795
	ld b,a			;8796
	ld b,a			;8797
	ccf			;8798
	ld b,(hl)		;8799
	ld c,b			;879a
	ld b,(hl)		;879b
	add a,a			;879c
	add a,a			;879d
	add a,a			;879e
	add a,a			;879f
	nop			;87a0
	ld (03c39h),a		;87a1
	nop			;87a4
	inc sp			;87a5
	ld a,03dh		;87a6
	ld (03c39h),a		;87a8
	scf			;87ab
	inc sp			;87ac
	ld a,03dh		;87ad
	inc (hl)		;87af
	scf			;87b0
	jr c,l87edh		;87b1
	ld a,(03634h)		;87b3
	ld a,(0383ah)		;87b6
	ld a,(03a3ah)		;87b9
	ld (hl),03bh		;87bc
	dec (hl)		;87be
	add a,e			;87bf
	ld a,(03a3ah)		;87c0
	ld a,(03a3ah)		;87c3
	ld a,(03a3ah)		;87c6
	ld a,(03a3ah)		;87c9
	dec sp			;87cc
	dec (hl)		;87cd
	add a,e			;87ce
	ld a,(05a69h)		;87cf
	ld c,a			;87d2
	ld h,a			;87d3
	ld b,a			;87d4
	ld b,a			;87d5
	ld b,a			;87d6
	ld b,a			;87d7
	ccf			;87d8
	ld b,(hl)		;87d9
	ld c,b			;87da
	ld b,(hl)		;87db
	add a,a			;87dc
	add a,a			;87dd
	add a,a			;87de
	add a,a			;87df
	ld a,c			;87e0
	ld e,a			;87e1
	ld (hl),b		;87e2
	ld (hl),b		;87e3
	ld b,a			;87e4
	ld h,b			;87e5
	ld (hl),c		;87e6
	ld (hl),c		;87e7
	ccf			;87e8
	ld h,c			;87e9
	ld (hl),d		;87ea
	ld (hl),d		;87eb
	add a,a			;87ec
l87edh:
	add a,a			;87ed
	add a,a			;87ee
	add a,a			;87ef
	ld (hl),b		;87f0
	ld (hl),b		;87f1
	push bc			;87f2
	ld d,a			;87f3
	ld (hl),c		;87f4
	ld (hl),c		;87f5
	ld h,e			;87f6
	ld b,a			;87f7
	ld (hl),d		;87f8
	ld (hl),d		;87f9
	ld h,d			;87fa
	ccf			;87fb
	add a,a			;87fc
	add a,a			;87fd
	add a,a			;87fe
	add a,a			;87ff
	ld h,l			;8800
	ld d,c			;8801
	ld e,h			;8802
	pop bc			;8803
	ld b,a			;8804
	ld b,a			;8805
	ld b,a			;8806
	ld b,a			;8807
	ccf			;8808
	ld b,(hl)		;8809
	ld c,b			;880a
	ld b,(hl)		;880b
	add a,a			;880c
	add a,a			;880d
	add a,a			;880e
	add a,a			;880f
	ld a,h			;8810
	ld a,l			;8811
	ld h,b			;8812
	ld (hl),c		;8813
	ld b,a			;8814
	ld b,a			;8815
	ld h,c			;8816
	ld (hl),d		;8817
	ccf			;8818
	ld b,(hl)		;8819
	ld c,b			;881a
	ld b,(hl)		;881b
	add a,a			;881c
	add a,a			;881d
	add a,a			;881e
	add a,a			;881f
	ld (hl),c		;8820
	ld (hl),c		;8821
	ld (hl),c		;8822
	ld h,e			;8823
	ld (hl),d		;8824
	ld (hl),d		;8825
	ld (hl),d		;8826
	ld h,d			;8827
	ccf			;8828
	ld b,(hl)		;8829
	ld c,b			;882a
	ld b,(hl)		;882b
	add a,a			;882c
	add a,a			;882d
	add a,a			;882e
	add a,a			;882f
	add a,e			;8830
	ld (hl),l		;8831
	ld d,d			;8832
	ld h,(hl)		;8833
	ld b,a			;8834
	ld b,a			;8835
	ld b,a			;8836
	ld b,a			;8837
	ccf			;8838
	ld b,(hl)		;8839
	ld c,b			;883a
	ld b,(hl)		;883b
	add a,a			;883c
	add a,a			;883d
	add a,a			;883e
	add a,a			;883f
	nop			;8840
	nop			;8841
	nop			;8842
	nop			;8843
	nop			;8844
	nop			;8845
	nop			;8846
	nop			;8847
	nop			;8848
	nop			;8849
	nop			;884a
	nop			;884b
	ld sp,05dc2h		;884c
	ld l,a			;884f
	nop			;8850
	nop			;8851
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
	ld e,l			;885c
	ld l,a			;885d
	ld e,l			;885e
	ld l,a			;885f
	nop			;8860
	nop			;8861
	nop			;8862
	nop			;8863
	nop			;8864
	nop			;8865
	nop			;8866
	nop			;8867
	nop			;8868
	nop			;8869
	nop			;886a
	ld sp,06f5dh		;886b
	ld e,l			;886e
	ld l,a			;886f
	nop			;8870
	nop			;8871
	nop			;8872
	nop			;8873
	nop			;8874
	nop			;8875
	nop			;8876
	nop			;8877
	cp d			;8878
	nop			;8879
	nop			;887a
	nop			;887b
	ld e,l			;887c
	ld l,a			;887d
	ld e,l			;887e
	ld l,a			;887f
	nop			;8880
	nop			;8881
	nop			;8882
	nop			;8883
	nop			;8884
	nop			;8885
	nop			;8886
	nop			;8887
	dec (hl)		;8888
	ld e,e			;8889
	ld (hl),h		;888a
	add a,c			;888b
	ld (hl),0c1h		;888c
	ld a,h			;888e
	ld a,l			;888f
	nop			;8890
	nop			;8891
	nop			;8892
	nop			;8893
	cp d			;8894
	nop			;8895
	nop			;8896
	nop			;8897
	jr c,l88dbh		;8898
	ld b,b			;889a
	add hl,sp		;889b
	inc sp			;889c
	scf			;889d
	ccf			;889e
	ld b,d			;889f
	nop			;88a0
	nop			;88a1
	nop			;88a2
	nop			;88a3
	nop			;88a4
	nop			;88a5
	nop			;88a6
	nop			;88a7
	cp (hl)			;88a8
	nop			;88a9
	nop			;88aa
	nop			;88ab
	cp a			;88ac
	nop			;88ad
	nop			;88ae
	nop			;88af
	nop			;88b0
	nop			;88b1
	nop			;88b2
	nop			;88b3
	nop			;88b4
	nop			;88b5
	nop			;88b6
	cp e			;88b7
	nop			;88b8
	nop			;88b9
	nop			;88ba
	cp h			;88bb
	nop			;88bc
	nop			;88bd
	nop			;88be
	nop			;88bf
	nop			;88c0
	nop			;88c1
	nop			;88c2
	nop			;88c3
	ld b,b			;88c4
	ld b,c			;88c5
	ld b,h			;88c6
	ld c,c			;88c7
	ld b,d			;88c8
	ld b,e			;88c9
	ld c,e			;88ca
	ld c,d			;88cb
	nop			;88cc
	nop			;88cd
	cp l			;88ce
	ret nz			;88cf
	nop			;88d0
	nop			;88d1
	nop			;88d2
	ld (04745h),a		;88d3
	ld b,a			;88d6
	ld b,l			;88d7
	ccf			;88d8
	ld b,(hl)		;88d9
	ld c,b			;88da
l88dbh:
	ld b,(hl)		;88db
	ld c,h			;88dc
	ld c,l			;88dd
	ld c,(hl)		;88de
	add a,(hl)		;88df
	add hl,sp		;88e0
	inc a			;88e1
	scf			;88e2
	jr c,l892ch		;88e3
	ld b,a			;88e5
	ld b,a			;88e6
	ld b,a			;88e7
	ccf			;88e8
	ccf			;88e9
	ld b,(hl)		;88ea
	ld c,b			;88eb
	add a,a			;88ec
	add a,a			;88ed
	add a,a			;88ee
	add a,a			;88ef
	ld a,(03a3ah)		;88f0
	ld a,(04747h)		;88f3
	ld b,a			;88f6
	ld b,a			;88f7
	ld b,(hl)		;88f8
	ccf			;88f9
	ccf			;88fa
	ccf			;88fb
	add a,a			;88fc
	add a,a			;88fd
	add a,a			;88fe
	add a,a			;88ff
	nop			;8900
	nop			;8901
	nop			;8902
	nop			;8903
	nop			;8904
	nop			;8905
	nop			;8906
	nop			;8907
	ld d,e			;8908
	ld e,(hl)		;8909
	ld l,l			;890a
	ld h,h			;890b
	ld l,c			;890c
	ld e,d			;890d
	ld c,a			;890e
	ld h,a			;890f
	nop			;8910
	nop			;8911
	nop			;8912
	nop			;8913
	ld d,e			;8914
	ld e,(hl)		;8915
	ld l,l			;8916
	ld h,h			;8917
	ld l,c			;8918
	ld e,d			;8919
	ld c,a			;891a
	ld h,a			;891b
	ld l,c			;891c
	ld e,d			;891d
	ld c,a			;891e
	ld h,a			;891f
	nop			;8920
	nop			;8921
	nop			;8922
l8923h:
	nop			;8923
	nop			;8924
	nop			;8925
	nop			;8926
	nop			;8927
	cp d			;8928
	nop			;8929
	nop			;892a
	nop			;892b
l892ch:
	ld d,(hl)		;892c
	jp 000bah		;892d
	ld d,a			;8930
	ld a,c			;8931
	ld d,(hl)		;8932
	jp 04747h		;8933
	ld b,a			;8936
	call nz,03f3fh		;8937
	ld c,b			;893a
	add a,l			;893b
	add a,a			;893c
	add a,a			;893d
	ld c,b			;893e
	ld (hl),l		;893f
	nop			;8940
	nop			;8941
	nop			;8942
	nop			;8943
	nop			;8944
	nop			;8945
	nop			;8946
	or h			;8947
	nop			;8948
	ld h,c			;8949
	ld h,d			;894a
	ld h,e			;894b
	nop			;894c
	ld (hl),l		;894d
	halt			;894e
	ld l,c			;894f
	nop			;8950
	nop			;8951
	nop			;8952
	nop			;8953
	nop			;8954
	nop			;8955
	nop			;8956
	nop			;8957
	ld (hl),a		;8958
	ld a,b			;8959
	ld a,c			;895a
	add a,e			;895b
	ld h,a			;895c
	ld d,e			;895d
	add a,c			;895e
	ld d,e			;895f
	nop			;8960
	nop			;8961
	nop			;8962
	nop			;8963
	nop			;8964
	nop			;8965
	nop			;8966
	nop			;8967
	add a,e			;8968
	ld a,c			;8969
	add a,h			;896a
	add a,l			;896b
	ld d,e			;896c
	add a,c			;896d
	ld d,e			;896e
	ld e,l			;896f
	nop			;8970
	nop			;8971
	nop			;8972
	nop			;8973
	or h			;8974
	nop			;8975
	nop			;8976
	nop			;8977
	ld e,c			;8978
	ld e,b			;8979
	ld d,a			;897a
	nop			;897b
	ld e,a			;897c
	ld (hl),c		;897d
	ld (hl),b		;897e
	nop			;897f
	or a			;8980
	ld (hl),h		;8981
	ld (hl),e		;8982
	ld (hl),d		;8983
	nop			;8984
	cp d			;8985
	cp e			;8986
	ld h,b			;8987
	nop			;8988
	nop			;8989
	ld (00039h),a		;898a
	nop			;898d
	inc sp			;898e
	ld a,068h		;898f
	ccf			;8991
	ld b,(hl)		;8992
	ld c,b			;8993
	ld c,h			;8994
	ld c,l			;8995
	ld c,(hl)		;8996
	add a,(hl)		;8997
	inc a			;8998
	scf			;8999
	jr c,l89d6h		;899a
	dec a			;899c
	inc (hl)		;899d
	ld (hl),03ah		;899e
	ld c,b			;89a0
	ld b,(hl)		;89a1
	ccf			;89a2
	ld e,(hl)		;89a3
	ld c,a			;89a4
	ld a,l			;89a5
	ld c,l			;89a6
	ld a,(hl)		;89a7
	ld a,(05152h)		;89a8
	ld a,a			;89ab
	ld a,(06c6bh)		;89ac
	ld a,d			;89af
	ld l,l			;89b0
	ld l,(hl)		;89b1
	ld l,a			;89b2
	cp b			;89b3
	ld d,(hl)		;89b4
	cp h			;89b5
	cp l			;89b6
	nop			;89b7
	ld d,b			;89b8
	ld sp,00000h		;89b9
	add a,d			;89bc
	cp c			;89bd
	nop			;89be
	nop			;89bf
	nop			;89c0
	ld (03c39h),a		;89c1
	nop			;89c4
	inc sp			;89c5
	ld a,03dh		;89c6
	jp nz,0bf7bh		;89c8
	ld (hl),e		;89cb
	ld e,l			;89cc
	add a,h			;89cd
	cp (hl)			;89ce
	ld e,e			;89cf
	scf			;89d0
	jr c,l8a0dh		;89d1
	ld a,(03634h)		;89d3
l89d6h:
	dec sp			;89d6
	dec (hl)		;89d7
	ld (hl),a		;89d8
	ld (hl),a		;89d9
	ld l,d			;89da
	ld l,d			;89db
	ld (hl),h		;89dc
	add a,c			;89dd
	ld e,a			;89de
	ld (hl),b		;89df
	ld a,(0523ah)		;89e0
	ld d,c			;89e3
	add a,e			;89e4
	ld a,(06c6bh)		;89e5
	ld l,d			;89e8
	ld l,d			;89e9
	ld l,d			;89ea
	ld a,a			;89eb
	ld (hl),b		;89ec
	ld (hl),b		;89ed
	ld (hl),b		;89ee
	push bc			;89ef
	ld a,a			;89f0
	ld d,b			;89f1
	ld sp,07a00h		;89f2
	add a,d			;89f5
	cp c			;89f6
	nop			;89f7
	add a,b			;89f8
	call nz,0c37eh		;89f9
	add a,e			;89fc
	add a,l			;89fd
	ld d,b			;89fe
	ld l,a			;89ff
	nop			;8a00
	nop			;8a01
	nop			;8a02
	nop			;8a03
	nop			;8a04
	nop			;8a05
	nop			;8a06
	nop			;8a07
	jp nz,0bf7bh		;8a08
	ld (hl),e		;8a0b
	ld e,l			;8a0c
l8a0dh:
	add a,h			;8a0d
	cp (hl)			;8a0e
	ld e,e			;8a0f
	nop			;8a10
	nop			;8a11
	nop			;8a12
	nop			;8a13
	nop			;8a14
	nop			;8a15
	nop			;8a16
	nop			;8a17
	ld (hl),a		;8a18
	ld (hl),a		;8a19
	ld l,d			;8a1a
	ld l,d			;8a1b
	ld (hl),h		;8a1c
	add a,c			;8a1d
	ld e,a			;8a1e
	ld (hl),b		;8a1f
	nop			;8a20
	nop			;8a21
	nop			;8a22
	nop			;8a23
	nop			;8a24
	nop			;8a25
	nop			;8a26
	nop			;8a27
	ld l,d			;8a28
	ld l,d			;8a29
	ld l,d			;8a2a
	ld a,a			;8a2b
	ld (hl),b		;8a2c
	ld (hl),b		;8a2d
	ld (hl),b		;8a2e
	push bc			;8a2f
	nop			;8a30
	nop			;8a31
	nop			;8a32
	nop			;8a33
	nop			;8a34
	nop			;8a35
	nop			;8a36
	nop			;8a37
	add a,b			;8a38
	call nz,0c37eh		;8a39
	add a,e			;8a3c
	add a,l			;8a3d
	ld d,b			;8a3e
	ld l,a			;8a3f
	cp d			;8a40
	nop			;8a41
	nop			;8a42
	nop			;8a43
	ld a,(hl)		;8a44
	jp 000bah		;8a45
	ld d,b			;8a48
	ld l,a			;8a49
	ld d,(hl)		;8a4a
	jp 06652h		;8a4b
	ld d,a			;8a4e
	ld a,c			;8a4f
	nop			;8a50
	nop			;8a51
	nop			;8a52
	nop			;8a53
	cp h			;8a54
	jp nz,0babbh		;8a55
	call nz,0c1c0h		;8a58
	push bc			;8a5b
	ld (bc),a		;8a5c
	ld (bc),a		;8a5d
	ld (bc),a		;8a5e
	ld (bc),a		;8a5f
	ld (bc),a		;8a60
	nop			;8a61
	nop			;8a62
	nop			;8a63
	cp l			;8a64
	cp (hl)			;8a65
	cp e			;8a66
	cp d			;8a67
	call nz,0bfc3h		;8a68
	push bc			;8a6b
	ld (bc),a		;8a6c
	ld (bc),a		;8a6d
	ld (bc),a		;8a6e
	ld (bc),a		;8a6f
	nop			;8a70
	nop			;8a71
	nop			;8a72
	nop			;8a73
	cp l			;8a74
	cp (hl)			;8a75
	cp e			;8a76
	cp d			;8a77
	call nz,0bfc3h		;8a78
	push bc			;8a7b
	ld (bc),a		;8a7c
	ld (bc),a		;8a7d
	ld (bc),a		;8a7e
	ld (bc),a		;8a7f
	inc (hl)		;8a80
	dec a			;8a81
	ld a,(03b43h)		;8a82
	ld e,c			;8a85
	ld e,c			;8a86
	nop			;8a87
	ret nz			;8a88
	ccf			;8a89
	ld b,d			;8a8a
	jp 03a6ch		;8a8b
	ld b,e			;8a8e
l8a8fh:
	ld l,(hl)		;8a8f
	nop			;8a90
	nop			;8a91
	nop			;8a92
	nop			;8a93
	nop			;8a94
	nop			;8a95
	nop			;8a96
	nop			;8a97
	cp l			;8a98
	nop			;8a99
	nop			;8a9a
	nop			;8a9b
	ld d,(hl)		;8a9c
	nop			;8a9d
	nop			;8a9e
	nop			;8a9f
	nop			;8aa0
	nop			;8aa1
	nop			;8aa2
	nop			;8aa3
	nop			;8aa4
	nop			;8aa5
	nop			;8aa6
	nop			;8aa7
	nop			;8aa8
	nop			;8aa9
	nop			;8aaa
	nop			;8aab
	nop			;8aac
	nop			;8aad
	ld d,h			;8aae
	ld d,l			;8aaf
	nop			;8ab0
	nop			;8ab1
	ld b,l			;8ab2
	ld c,e			;8ab3
	ld (hl),h		;8ab4
	ld l,a			;8ab5
	add a,c			;8ab6
	add a,b			;8ab7
	ld e,l			;8ab8
	ld e,(hl)		;8ab9
	ld d,l			;8aba
	ld d,a			;8abb
	ld e,a			;8abc
	ld h,b			;8abd
	ld d,(hl)		;8abe
	ld e,b			;8abf
	ld b,a			;8ac0
	ld c,h			;8ac1
	nop			;8ac2
	nop			;8ac3
	add a,c			;8ac4
	add a,b			;8ac5
	ld (hl),h		;8ac6
	ld l,a			;8ac7
	ld d,l			;8ac8
	ld d,a			;8ac9
	ld e,l			;8aca
	ld e,(hl)		;8acb
	ld d,(hl)		;8acc
	ld e,b			;8acd
	ld e,a			;8ace
	ld h,b			;8acf
	nop			;8ad0
	nop			;8ad1
	nop			;8ad2
	nop			;8ad3
	nop			;8ad4
	nop			;8ad5
	nop			;8ad6
	nop			;8ad7
	nop			;8ad8
	nop			;8ad9
	nop			;8ada
	nop			;8adb
	ld c,(hl)		;8adc
	ld c,l			;8add
	nop			;8ade
	nop			;8adf
	ld d,l			;8ae0
	ld e,b			;8ae1
	ld e,e			;8ae2
	ld e,e			;8ae3
	ld d,(hl)		;8ae4
	ld d,c			;8ae5
	ld e,(hl)		;8ae6
	ld d,e			;8ae7
	ld e,a			;8ae8
	ld d,c			;8ae9
	ld d,c			;8aea
	ld e,l			;8aeb
	ld d,a			;8aec
	ld e,d			;8aed
	ld d,d			;8aee
	ld c,(hl)		;8aef
	ld hl,02323h		;8af0
	ld hl,04818h		;8af3
	ld c,b			;8af6
	jr l8b2bh		;8af7
	ld c,c			;8af9
	ld c,c			;8afa
	ld (05a57h),a		;8afb
	ld e,d			;8afe
	ld c,(hl)		;8aff
	ld (02928h),hl		;8b00
	daa			;8b03
	scf			;8b04
	add hl,de		;8b05
	ld b,d			;8b06
	dec a			;8b07
	jr c,l8b43h		;8b08
	ld d,026h		;8b0a
	inc a			;8b0c
	ld b,h			;8b0d
	ld b,c			;8b0e
	daa			;8b0f
	ld (03528h),hl		;8b10
	dec d			;8b13
	inc (hl)		;8b14
	ld de,02716h		;8b15
	ld hl,(04240h)		;8b18
	dec a			;8b1b
	jr c,l8b57h		;8b1c
	add hl,hl		;8b1e
	ld h,055h		;8b1f
	ld e,e			;8b21
	ld e,c			;8b22
	ld e,e			;8b23
	ld d,(hl)		;8b24
	ld e,l			;8b25
	ld e,(hl)		;8b26
	ld d,e			;8b27
	ld e,a			;8b28
	ld c,a			;8b29
	ld d,h			;8b2a
l8b2bh:
	ld d,e			;8b2b
	ld d,a			;8b2c
	ld e,d			;8b2d
	ld e,d			;8b2e
	ld c,(hl)		;8b2f
	ld d,l			;8b30
	ld e,h			;8b31
	ld e,e			;8b32
	ld e,e			;8b33
	ld d,(hl)		;8b34
	ld d,b			;8b35
	ld c,e			;8b36
	ld d,e			;8b37
	ld d,(hl)		;8b38
	ld d,b			;8b39
	ld c,e			;8b3a
	ld d,e			;8b3b
	ld d,a			;8b3c
	ld c,h			;8b3d
	ld c,l			;8b3e
	ld c,(hl)		;8b3f
	ld (hl),h		;8b40
	ld (hl),h		;8b41
	dec (hl)		;8b42
l8b43h:
	dec a			;8b43
	ld h,b			;8b44
	ld h,c			;8b45
	ld l,d			;8b46
	ld h,b			;8b47
	ld (hl),l		;8b48
	ld a,b			;8b49
	ld (hl),l		;8b4a
	sbc a,b			;8b4b
	ld l,a			;8b4c
	ld l,(hl)		;8b4d
	ld l,(hl)		;8b4e
	ld l,a			;8b4f
	ld (hl),h		;8b50
	ld (hl),h		;8b51
	ld b,c			;8b52
	daa			;8b53
	ld h,b			;8b54
	ld h,c			;8b55
	dec (hl)		;8b56
l8b57h:
	dec a			;8b57
	ld (hl),l		;8b58
	ld a,b			;8b59
	ld (hl),l		;8b5a
	sbc a,b			;8b5b
	ld a,a			;8b5c
	add a,b			;8b5d
	adc a,h			;8b5e
	ld a,a			;8b5f
	ld (hl),h		;8b60
	ld (hl),h		;8b61
	ld b,d			;8b62
	dec a			;8b63
	ld h,b			;8b64
	ld h,c			;8b65
	add hl,hl		;8b66
	ld h,075h		;8b67
	ld a,b			;8b69
	ld b,c			;8b6a
	daa			;8b6b
	adc a,l			;8b6c
	adc a,l			;8b6d
	dec (hl)		;8b6e
	dec a			;8b6f
	ld b,c			;8b70
	inc a			;8b71
	ld b,h			;8b72
	daa			;8b73
	dec (hl)		;8b74
	dec l			;8b75
	ld l,03dh		;8b76
	ld l,e			;8b78
	sbc a,c			;8b79
	sbc a,c			;8b7a
	ld a,c			;8b7b
	ld h,e			;8b7c
	ld h,e			;8b7d
	ld h,h			;8b7e
	ld h,e			;8b7f
	ld b,d			;8b80
	inc (hl)		;8b81
	ld de,0163dh		;8b82
	ld hl,(02640h)		;8b85
	ld b,c			;8b88
	scf			;8b89
	add hl,de		;8b8a
	daa			;8b8b
	dec (hl)		;8b8c
	jr c,l8bc8h		;8b8d
	dec a			;8b8f
	ld d,03dh		;8b90
	ld a,022h		;8b92
	add hl,hl		;8b94
	ld h,01eh		;8b95
	scf			;8b97
	ld b,c			;8b98
	daa			;8b99
	rra			;8b9a
	jr c,l8bd2h		;8b9b
	dec a			;8b9d
	ld hl,01623h		;8b9e
	ld h,047h		;8ba1
	inc l			;8ba3
	ld b,c			;8ba4
	daa			;8ba5
	ld l,d			;8ba6
	ld h,b			;8ba7
	dec (hl)		;8ba8
	dec a			;8ba9
	ld (hl),l		;8baa
	sbc a,b			;8bab
	ld a,a			;8bac
	add a,b			;8bad
	adc a,h			;8bae
	ld a,a			;8baf
	add hl,hl		;8bb0
	ld h,048h		;8bb1
	jr l8bcbh		;8bb3
	dec d			;8bb5
	ld c,c			;8bb6
	ld (02741h),a		;8bb7
	ld (hl),l		;8bba
	sbc a,b			;8bbb
	dec (hl)		;8bbc
	dec a			;8bbd
	adc a,l			;8bbe
	adc a,l			;8bbf
	jr z,l8c00h		;8bc0
	ld b,d			;8bc2
	ld h,019h		;8bc3
	ld e,029h		;8bc5
	dec d			;8bc7
l8bc8h:
	add hl,sp		;8bc8
	rra			;8bc9
	ld b,c			;8bca
l8bcbh:
	daa			;8bcb
	inc hl			;8bcc
	ld hl,03d35h		;8bcd
	ld a,022h		;8bd0
l8bd2h:
	jr z,l8c12h		;8bd2
	ld e,037h		;8bd4
	add hl,de		;8bd6
	ld e,01fh		;8bd7
	jr c,$+59		;8bd9
	rra			;8bdb
	dec l			;8bdc
	ld l,04dh		;8bdd
	ld c,(hl)		;8bdf
	ld a,022h		;8be0
	jr z,l8c22h		;8be2
	ld e,037h		;8be4
	add hl,de		;8be6
	ld e,01fh		;8be7
	jr c,l8c24h		;8be9
	rra			;8beb
	inc a			;8bec
	ld b,h			;8bed
	ld c,l			;8bee
	ld c,(hl)		;8bef
	inc hl			;8bf0
	dec de			;8bf1
	dec e			;8bf2
	inc hl			;8bf3
	ld a,043h		;8bf4
	rla			;8bf6
	ld a,01fh		;8bf7
	jr c,l8c34h		;8bf9
	rra			;8bfb
	ld d,a			;8bfc
	ld e,d			;8bfd
	ld e,d			;8bfe
	ld c,(hl)		;8bff
l8c00h:
	ld a,022h		;8c00
	jr z,l8c42h		;8c02
	ld e,037h		;8c04
	add hl,de		;8c06
	ld e,01fh		;8c07
	jr c,$+59		;8c09
	rra			;8c0b
	ld d,a			;8c0c
	ld e,d			;8c0d
	ld d,d			;8c0e
	ld c,(hl)		;8c0f
	ld b,c			;8c10
	dec d			;8c11
l8c12h:
	ld (03528h),hl		;8c12
	daa			;8c15
	inc (hl)		;8c16
	ld de,03d42h		;8c17
	ld hl,(01640h)		;8c1a
	ld h,038h		;8c1d
	add hl,sp		;8c1f
	ld h,l			;8c20
	ld h,l			;8c21
l8c22h:
	ld h,l			;8c22
	ld h,(hl)		;8c23
l8c24h:
	sbc a,d			;8c24
	sbc a,e			;8c25
	sbc a,e			;8c26
	sbc a,h			;8c27
	ld b,c			;8c28
	inc a			;8c29
	ld b,h			;8c2a
	dec d			;8c2b
	dec (hl)		;8c2c
	dec l			;8c2d
	ld l,027h		;8c2e
	ld a,022h		;8c30
	jr z,l8c72h		;8c32
l8c34h:
	ld e,037h		;8c34
	add hl,de		;8c36
	ld e,01fh		;8c37
	jr c,l8c74h		;8c39
	rra			;8c3b
	ld hl,0525ah		;8c3c
	ld c,(hl)		;8c3f
	jr l8c8ah		;8c40
l8c42h:
	ld c,b			;8c42
	jr l8c77h		;8c43
	ld c,c			;8c45
	ld c,c			;8c46
	ld (05056h),a		;8c47
	ld c,e			;8c4a
	ld d,e			;8c4b
	ld d,a			;8c4c
	ld c,h			;8c4d
	ld c,l			;8c4e
	ld c,(hl)		;8c4f
	ld d,l			;8c50
	ld e,e			;8c51
	ld b,c			;8c52
	dec d			;8c53
	ld d,(hl)		;8c54
	ld e,l			;8c55
	dec (hl)		;8c56
	daa			;8c57
	ld e,a			;8c58
	ld c,a			;8c59
	ld d,03dh		;8c5a
	ld d,a			;8c5c
	ld e,d			;8c5d
	add hl,hl		;8c5e
	ld h,016h		;8c5f
	ld e,01eh		;8c61
	daa			;8c63
	ld b,c			;8c64
	rra			;8c65
	rra			;8c66
	dec a			;8c67
	dec (hl)		;8c68
	ld b,a			;8c69
	inc l			;8c6a
	dec d			;8c6b
	add hl,hl		;8c6c
	ccf			;8c6d
	ld b,(hl)		;8c6e
	ld h,065h		;8c6f
	ld h,l			;8c71
l8c72h:
	ld h,l			;8c72
	ld h,(hl)		;8c73
l8c74h:
	sbc a,d			;8c74
	sbc a,e			;8c75
	sbc a,e			;8c76
l8c77h:
	sbc a,h			;8c77
	ld d,(hl)		;8c78
	nop			;8c79
	nop			;8c7a
	adc a,e			;8c7b
	ld d,(hl)		;8c7c
	nop			;8c7d
	nop			;8c7e
	ld d,e			;8c7f
	ld b,c			;8c80
	inc a			;8c81
	ld b,h			;8c82
	dec d			;8c83
	dec (hl)		;8c84
	dec l			;8c85
	ld l,027h		;8c86
	ld d,047h		;8c88
l8c8ah:
	inc l			;8c8a
	dec a			;8c8b
	add hl,hl		;8c8c
	ld hl,02621h		;8c8d
	ld c,b			;8c90
	inc a			;8c91
	ld b,h			;8c92
	dec d			;8c93
	ld c,c			;8c94
	dec l			;8c95
	ld l,027h		;8c96
	dec h			;8c98
	ld b,a			;8c99
	inc l			;8c9a
	dec a			;8c9b
	inc h			;8c9c
	ld hl,02621h		;8c9d
	ld a,022h		;8ca0
	jr z,l8ce2h		;8ca2
	ld e,037h		;8ca4
	add hl,de		;8ca6
	ld e,01fh		;8ca7
	jr c,l8ce4h		;8ca9
	rra			;8cab
	jr nz,l8cf8h		;8cac
	ld c,d			;8cae
	jr nz,l8cd3h		;8caf
	jr z,l8cf4h		;8cb1
	dec d			;8cb3
	inc (hl)		;8cb4
	ld de,02735h		;8cb5
	ld hl,(01640h)		;8cb8
	dec a			;8cbb
	jr c,l8cf7h		;8cbc
	add hl,hl		;8cbe
	ld h,022h		;8cbf
	jr z,l8cech		;8cc1
	daa			;8cc3
	scf			;8cc4
	add hl,de		;8cc5
	ld b,c			;8cc6
	dec a			;8cc7
	jr c,l8d03h		;8cc8
	dec (hl)		;8cca
	ld h,03ch		;8ccb
	ld b,h			;8ccd
	ld d,015h		;8cce
	ld (hl),h		;8cd0
	ld (hl),h		;8cd1
	halt			;8cd2
l8cd3h:
	ld (hl),h		;8cd3
	ld h,b			;8cd4
	ld h,c			;8cd5
	ld l,d			;8cd6
	ld h,b			;8cd7
	inc a			;8cd8
	ld b,h			;8cd9
	ld b,c			;8cda
	dec d			;8cdb
	dec l			;8cdc
	ld l,035h		;8cdd
	daa			;8cdf
	ld b,l			;8ce0
	inc de			;8ce1
l8ce2h:
	ld (hl),03ah		;8ce2
l8ce4h:
	jr nc,l8d17h		;8ce4
	cpl			;8ce6
	dec hl			;8ce7
	ld (hl),l		;8ce8
	ld a,b			;8ce9
	ld (hl),l		;8cea
	sbc a,b			;8ceb
l8cech:
	ld a,a			;8cec
	add a,b			;8ced
	adc a,h			;8cee
	ld a,a			;8cef
	inc hl			;8cf0
	dec de			;8cf1
	dec e			;8cf2
	inc hl			;8cf3
l8cf4h:
	jr c,l8d39h		;8cf4
	rla			;8cf6
l8cf7h:
	add hl,sp		;8cf7
l8cf8h:
	sbc a,l			;8cf8
	sbc a,(hl)		;8cf9
	sbc a,l			;8cfa
	sub d			;8cfb
	ld l,h			;8cfc
	ld l,h			;8cfd
	ld l,h			;8cfe
	sub e			;8cff
	ld a,l			;8d00
	ld a,e			;8d01
	ld a,l			;8d02
l8d03h:
	ld a,h			;8d03
	and c			;8d04
	and d			;8d05
	and e			;8d06
	and e			;8d07
	adc a,c			;8d08
	sub l			;8d09
	inc a			;8d0a
	ld b,h			;8d0b
	and (hl)		;8d0c
	and h			;8d0d
	dec l			;8d0e
	ld l,055h		;8d0f
	ld e,e			;8d11
	inc a			;8d12
	ld b,h			;8d13
	ld d,(hl)		;8d14
	ld e,l			;8d15
	dec l			;8d16
l8d17h:
	ld l,05fh		;8d17
	ld c,a			;8d19
	ld b,a			;8d1a
	inc l			;8d1b
	ld d,a			;8d1c
	ld e,d			;8d1d
	ccf			;8d1e
	ld b,(hl)		;8d1f
	ld a,(01e1eh)		;8d20
	daa			;8d23
	dec hl			;8d24
	rra			;8d25
	rra			;8d26
	dec a			;8d27
	dec h			;8d28
	ld b,a			;8d29
	inc l			;8d2a
	dec d			;8d2b
	inc h			;8d2c
	ccf			;8d2d
	ld b,(hl)		;8d2e
	ld h,033h		;8d2f
	ld a,(de)		;8d31
	inc e			;8d32
	dec sp			;8d33
	inc a			;8d34
	ld b,h			;8d35
	ld b,a			;8d36
	inc l			;8d37
	ld b,l			;8d38
l8d39h:
	inc de			;8d39
	ld (hl),03ah		;8d3a
	jr nc,l8d6fh		;8d3c
	cpl			;8d3e
	dec hl			;8d3f
	ld d,l			;8d40
	ld e,e			;8d41
	ld e,c			;8d42
	ld e,e			;8d43
	ld d,(hl)		;8d44
	ld e,l			;8d45
	ld e,(hl)		;8d46
	ld d,e			;8d47
	jr l8d92h		;8d48
	ld c,b			;8d4a
	jr l8d7fh		;8d4b
	ld c,c			;8d4d
	ld c,c			;8d4e
	ld (05c55h),a		;8d4f
	ld e,e			;8d52
	ld e,e			;8d53
	ld d,(hl)		;8d54
	ld d,b			;8d55
	ld c,e			;8d56
	ld d,e			;8d57
	ld b,l			;8d58
	inc de			;8d59
	ld (hl),03ah		;8d5a
	jr nc,l8d8fh		;8d5c
	cpl			;8d5e
	dec hl			;8d5f
	inc sp			;8d60
	ld a,(de)		;8d61
	inc e			;8d62
	dec sp			;8d63
	inc a			;8d64
	ld b,h			;8d65
	ld b,a			;8d66
	inc l			;8d67
	inc hl			;8d68
	dec de			;8d69
	dec e			;8d6a
	inc hl			;8d6b
	jr c,l8db1h		;8d6c
	rla			;8d6e
l8d6fh:
	add hl,sp		;8d6f
	inc hl			;8d70
	dec de			;8d71
	dec e			;8d72
	inc hl			;8d73
	ld a,043h		;8d74
	rla			;8d76
	ld a,01fh		;8d77
	jr c,l8db4h		;8d79
	rra			;8d7b
	ld hl,02323h		;8d7c
l8d7fh:
	ld hl,0223eh		;8d7f
	jr z,l8dc2h		;8d82
	ld e,037h		;8d84
	add hl,de		;8d86
	ld e,01fh		;8d87
	jr c,l8dc4h		;8d89
	rra			;8d8b
	ld hl,02323h		;8d8c
l8d8fh:
	ld hl,01345h		;8d8f
l8d92h:
	ld (hl),03ah		;8d92
	jr nc,l8dc7h		;8d94
	cpl			;8d96
	dec hl			;8d97
	inc sp			;8d98
	ld a,(de)		;8d99
	inc e			;8d9a
	dec sp			;8d9b
	inc a			;8d9c
	ld b,h			;8d9d
	ld b,a			;8d9e
	inc l			;8d9f
	jr l8deah		;8da0
	ld c,b			;8da2
	jr l8dd7h		;8da3
	ld c,c			;8da5
	ld c,c			;8da6
	ld (01a33h),a		;8da7
	inc e			;8daa
	dec sp			;8dab
	inc a			;8dac
	ld b,h			;8dad
	ld b,a			;8dae
	inc l			;8daf
	inc hl			;8db0
l8db1h:
	dec de			;8db1
	dec e			;8db2
	inc hl			;8db3
l8db4h:
	jr c,l8df9h		;8db4
	rla			;8db6
	add hl,sp		;8db7
	ld b,l			;8db8
	inc de			;8db9
	ld (hl),03ah		;8dba
	jr nc,l8defh		;8dbc
	cpl			;8dbe
	dec hl			;8dbf
	ld l,l			;8dc0
	ld l,(hl)		;8dc1
l8dc2h:
	inc a			;8dc2
	ld b,h			;8dc3
l8dc4h:
	sub b			;8dc4
	adc a,a			;8dc5
	dec l			;8dc6
l8dc7h:
	ld l,09dh		;8dc7
	sbc a,(hl)		;8dc9
	ld b,a			;8dca
	inc l			;8dcb
	ld l,h			;8dcc
	ld l,h			;8dcd
	ccf			;8dce
	ld b,(hl)		;8dcf
	ld h,l			;8dd0
	ld h,l			;8dd1
	inc a			;8dd2
	ld b,h			;8dd3
	sbc a,d			;8dd4
	sbc a,e			;8dd5
	dec l			;8dd6
l8dd7h:
	ld l,056h		;8dd7
	nop			;8dd9
	ld b,a			;8dda
	inc l			;8ddb
	ld d,(hl)		;8ddc
	nop			;8ddd
	ccf			;8dde
	ld b,(hl)		;8ddf
	ld l,a			;8de0
	ld l,(hl)		;8de1
	ld l,(hl)		;8de2
	ld l,a			;8de3
	adc a,(hl)		;8de4
	adc a,a			;8de5
	adc a,(hl)		;8de6
	sub b			;8de7
	inc a			;8de8
	ld b,h			;8de9
l8deah:
	sbc a,l			;8dea
	sub d			;8deb
	dec l			;8dec
	ld l,06ch		;8ded
l8defh:
	sub e			;8def
	ld l,a			;8df0
	ld l,(hl)		;8df1
	inc a			;8df2
	ld b,h			;8df3
	adc a,(hl)		;8df4
	adc a,a			;8df5
	dec l			;8df6
	ld l,09dh		;8df7
l8df9h:
	sbc a,(hl)		;8df9
	ld b,a			;8dfa
	inc l			;8dfb
	ld l,h			;8dfc
	ld l,h			;8dfd
	ccf			;8dfe
	ld b,(hl)		;8dff
	ld a,l			;8e00
	ld a,e			;8e01
	ld a,l			;8e02
	ld a,h			;8e03
	and c			;8e04
	and d			;8e05
	and e			;8e06
	and e			;8e07
	ld a,022h		;8e08
	jr z,l8e4ah		;8e0a
	ld e,037h		;8e0c
	add hl,de		;8e0e
	ld e,055h		;8e0f
	ld e,b			;8e11
	ld b,d			;8e12
	daa			;8e13
	ld d,(hl)		;8e14
	ld d,c			;8e15
	ld d,03dh		;8e16
	ld b,l			;8e18
	inc de			;8e19
	ld (hl),03ah		;8e1a
	jr nc,l8e4fh		;8e1c
	cpl			;8e1e
	dec hl			;8e1f
	inc sp			;8e20
	ld a,(de)		;8e21
	inc e			;8e22
	dec sp			;8e23
	inc a			;8e24
	ld b,h			;8e25
	ld b,a			;8e26
	inc l			;8e27
	ld e,a			;8e28
	ld c,a			;8e29
	ld d,h			;8e2a
	ld d,e			;8e2b
	ld d,a			;8e2c
	ld e,d			;8e2d
	ld e,d			;8e2e
	ld c,(hl)		;8e2f
	ld d,l			;8e30
	ld e,h			;8e31
	ld e,e			;8e32
	ld e,e			;8e33
	ld d,(hl)		;8e34
	ld d,b			;8e35
	ld c,e			;8e36
	ld d,e			;8e37
	jr z,l8e78h		;8e38
	ld c,e			;8e3a
	ld d,e			;8e3b
	add hl,de		;8e3c
	ld e,04dh		;8e3d
	ld c,(hl)		;8e3f
	inc a			;8e40
	ld b,h			;8e41
	ld e,c			;8e42
	ld e,e			;8e43
	dec l			;8e44
	ld l,05eh		;8e45
	ld d,e			;8e47
	ld b,a			;8e48
	inc l			;8e49
l8e4ah:
	jr z,l8e8ah		;8e4a
	ld (de),a		;8e4c
	inc d			;8e4d
	add hl,de		;8e4e
l8e4fh:
	ld e,055h		;8e4f
	ld e,e			;8e51
	ld a,022h		;8e52
	ld d,(hl)		;8e54
	ld e,l			;8e55
	ld e,037h		;8e56
	ld e,a			;8e58
	ld c,a			;8e59
	rra			;8e5a
	jr c,l8eb4h		;8e5b
	ld e,d			;8e5d
	ld hl,02823h		;8e5e
	ld a,05bh		;8e61
	ld e,e			;8e63
l8e64h:
	add hl,de		;8e64
	ld e,04bh		;8e65
	ld d,e			;8e67
	add hl,sp		;8e68
	rra			;8e69
	ld c,e			;8e6a
	ld d,e			;8e6b
	inc hl			;8e6c
	ld hl,04e4dh		;8e6d
	ld d,l			;8e70
	ld e,e			;8e71
	ld e,c			;8e72
	ld e,e			;8e73
	ld d,(hl)		;8e74
	ld e,l			;8e75
	ld e,(hl)		;8e76
	ld d,e			;8e77
l8e78h:
	ld a,022h		;8e78
	jr z,$+64		;8e7a
	ld e,037h		;8e7c
	add hl,de		;8e7e
	ld e,055h		;8e7f
	ld e,h			;8e81
	ld e,e			;8e82
	ld e,e			;8e83
	ld d,(hl)		;8e84
	ld d,b			;8e85
	ld c,e			;8e86
	ld d,e			;8e87
	ld a,022h		;8e88
l8e8ah:
	jr z,l8ecah		;8e8a
	ld e,037h		;8e8c
	add hl,de		;8e8e
	ld e,055h		;8e8f
	ld e,b			;8e91
	ld e,e			;8e92
	ld e,e			;8e93
	ld d,(hl)		;8e94
	ld d,c			;8e95
	ld e,(hl)		;8e96
	ld d,e			;8e97
	ld a,022h		;8e98
	jr z,l8edah		;8e9a
	ld e,037h		;8e9c
	add hl,de		;8e9e
	ld e,033h		;8e9f
	ld a,(de)		;8ea1
	inc e			;8ea2
	dec sp			;8ea3
	jr l8eeeh		;8ea4
	ld c,b			;8ea6
	jr l8edbh		;8ea7
	ld c,c			;8ea9
	ld c,c			;8eaa
	ld (05a57h),a		;8eab
	ld e,d			;8eae
	ld c,(hl)		;8eaf
	ld d,l			;8eb0
	ld e,e			;8eb1
	inc a			;8eb2
	ld b,h			;8eb3
l8eb4h:
	ld d,(hl)		;8eb4
	ld e,l			;8eb5
	dec l			;8eb6
	ld l,03eh		;8eb7
	ld (02c47h),hl		;8eb9
	ld e,037h		;8ebc
	add hl,de		;8ebe
	ld e,055h		;8ebf
	ld e,h			;8ec1
	ld e,e			;8ec2
	ld e,e			;8ec3
	ld d,(hl)		;8ec4
	ld d,b			;8ec5
	ld c,e			;8ec6
	ld d,e			;8ec7
	ld d,(hl)		;8ec8
	ld d,b			;8ec9
l8ecah:
	ld b,c			;8eca
	dec d			;8ecb
	ld d,a			;8ecc
	ld c,h			;8ecd
	dec (hl)		;8ece
	daa			;8ecf
	inc hl			;8ed0
	inc hl			;8ed1
	halt			;8ed2
	ld (hl),h		;8ed3
	jr c,l8f0fh		;8ed4
	ld l,d			;8ed6
	ld h,b			;8ed7
	ld (hl),l		;8ed8
	ld a,b			;8ed9
l8edah:
	ld (hl),l		;8eda
l8edbh:
	sbc a,b			;8edb
	ld l,a			;8edc
	ld l,(hl)		;8edd
	ld l,(hl)		;8ede
	ld l,a			;8edf
	ld h,l			;8ee0
	ld h,l			;8ee1
	ld h,l			;8ee2
	ld h,(hl)		;8ee3
	sbc a,d			;8ee4
	sbc a,e			;8ee5
	sbc a,e			;8ee6
	sbc a,h			;8ee7
	ld a,022h		;8ee8
	jr z,l8f2ah		;8eea
	ld e,037h		;8eec
l8eeeh:
	add hl,de		;8eee
	ld e,018h		;8eef
	ld c,b			;8ef1
	ld c,b			;8ef2
	jr l8f27h		;8ef3
	ld c,c			;8ef5
	ld c,c			;8ef6
	ld (l996bh),a		;8ef7
	sbc a,c			;8efa
	ld a,c			;8efb
	ld h,e			;8efc
	ld h,e			;8efd
	ld h,h			;8efe
	ld h,e			;8eff
	ld l,l			;8f00
	add a,l			;8f01
	add a,(hl)		;8f02
	ld l,l			;8f03
	adc a,(hl)		;8f04
	adc a,a			;8f05
	adc a,(hl)		;8f06
	sub b			;8f07
	ld a,022h		;8f08
	jr z,l8f4ah		;8f0a
	ld e,037h		;8f0c
	add hl,de		;8f0e
l8f0fh:
	ld e,03ch		;8f0f
	ld b,h			;8f11
	ld a,l			;8f12
	ld a,h			;8f13
	dec l			;8f14
	ld l,0a3h		;8f15
	and e			;8f17
	ld b,a			;8f18
	inc l			;8f19
	sub a			;8f1a
	sub c			;8f1b
	ccf			;8f1c
	ld b,(hl)		;8f1d
	ld h,d			;8f1e
	and a			;8f1f
	ld b,l			;8f20
	inc de			;8f21
	ld (hl),03ah		;8f22
	jr nc,l8f57h		;8f24
	cpl			;8f26
l8f27h:
	dec hl			;8f27
	sub c			;8f28
	sub l			;8f29
l8f2ah:
	sub a			;8f2a
	sub c			;8f2b
	and a			;8f2c
	and h			;8f2d
	ld h,d			;8f2e
	and a			;8f2f
	ld b,l			;8f30
	inc de			;8f31
	ld (hl),03ah		;8f32
	jr nc,l8f67h		;8f34
	cpl			;8f36
	dec hl			;8f37
	ld e,a			;8f38
	ld d,c			;8f39
	ld d,c			;8f3a
	ld e,l			;8f3b
	ld d,a			;8f3c
	ld e,d			;8f3d
	ld d,d			;8f3e
	ld c,(hl)		;8f3f
	jr l8f8ah		;8f40
	ld c,b			;8f42
	jr l8f77h		;8f43
	ld c,c			;8f45
	ld c,c			;8f46
	ld (02323h),a		;8f47
l8f4ah:
	sbc a,c			;8f4a
	ld a,c			;8f4b
	jr c,l8f87h		;8f4c
	ld h,h			;8f4e
	ld h,e			;8f4f
	ld d,l			;8f50
	ld e,b			;8f51
	ld e,b			;8f52
	ld e,e			;8f53
	ld d,(hl)		;8f54
	ld d,e			;8f55
	and c			;8f56
l8f57h:
	ld e,l			;8f57
	ld d,(hl)		;8f58
	ld d,e			;8f59
	sub c			;8f5a
	ld e,l			;8f5b
	ld d,a			;8f5c
	ld c,h			;8f5d
	ld c,l			;8f5e
	ld c,(hl)		;8f5f
	jr l8faah		;8f60
	ld c,b			;8f62
	jr l8f97h		;8f63
	ld c,c			;8f65
	ld c,c			;8f66
l8f67h:
	ld (02323h),a		;8f67
	ld d,h			;8f6a
	ld d,e			;8f6b
	jr c,l8fa7h		;8f6c
	ld e,d			;8f6e
	ld c,(hl)		;8f6f
	ld a,h			;8f70
	add a,c			;8f71
	add a,d			;8f72
	and l			;8f73
	and c			;8f74
	ld (hl),d		;8f75
	ld l,b			;8f76
l8f77h:
	and b			;8f77
	sub c			;8f78
	ld l,c			;8f79
	ld h,a			;8f7a
	ld a,(hl)		;8f7b
	and a			;8f7c
	add a,e			;8f7d
	add a,h			;8f7e
	ld a,d			;8f7f
	ld a,l			;8f80
	ld a,e			;8f81
	ld a,l			;8f82
	ld a,h			;8f83
	and c			;8f84
	and d			;8f85
	and e			;8f86
l8f87h:
	and e			;8f87
	sub c			;8f88
	sub l			;8f89
l8f8ah:
	sub a			;8f8a
	sub c			;8f8b
	and a			;8f8c
	and h			;8f8d
	ld h,d			;8f8e
	and a			;8f8f
	inc a			;8f90
	ld b,h			;8f91
	ld h,l			;8f92
	ld h,(hl)		;8f93
	dec l			;8f94
	ld l,09bh		;8f95
l8f97h:
	sbc a,h			;8f97
	ld b,a			;8f98
	inc l			;8f99
	jr z,l8fdah		;8f9a
	ld (de),a		;8f9c
	inc d			;8f9d
	add hl,de		;8f9e
	ld e,056h		;8f9f
	nop			;8fa1
	nop			;8fa2
	ld d,e			;8fa3
	ld d,(hl)		;8fa4
	nop			;8fa5
	nop			;8fa6
l8fa7h:
	adc a,e			;8fa7
	ld l,e			;8fa8
	sbc a,c			;8fa9
l8faah:
	sbc a,c			;8faa
	ld a,c			;8fab
	ld h,e			;8fac
	ld h,e			;8fad
	ld h,h			;8fae
	ld h,e			;8faf
	jr l8ffah		;8fb0
	ld c,b			;8fb2
	jr l8fe7h		;8fb3
	ld c,c			;8fb5
	ld c,c			;8fb6
	ld (07875h),a		;8fb7
	ld (hl),l		;8fba
	sbc a,b			;8fbb
	ld a,a			;8fbc
	add a,b			;8fbd
	adc a,h			;8fbe
	ld a,a			;8fbf
	ld (hl),h		;8fc0
	ld (hl),h		;8fc1
	halt			;8fc2
	ld (hl),h		;8fc3
	ld h,b			;8fc4
	ld h,c			;8fc5
	ld l,d			;8fc6
	ld h,b			;8fc7
	ld (hl),l		;8fc8
	ld a,b			;8fc9
	ld (hl),l		;8fca
	sbc a,b			;8fcb
	adc a,l			;8fcc
	adc a,l			;8fcd
	adc a,l			;8fce
	adc a,l			;8fcf
	ld (hl),h		;8fd0
	ld (hl),h		;8fd1
	halt			;8fd2
	ld (hl),h		;8fd3
	ld h,b			;8fd4
	ld h,c			;8fd5
	ld l,d			;8fd6
	ld h,b			;8fd7
	ld (hl),l		;8fd8
	ld a,b			;8fd9
l8fdah:
	ld (hl),l		;8fda
	sbc a,b			;8fdb
	ld (hl),e		;8fdc
	add a,a			;8fdd
	ld (hl),e		;8fde
	add a,a			;8fdf
	inc sp			;8fe0
	ld a,(de)		;8fe1
	inc e			;8fe2
	dec sp			;8fe3
	jr l902eh		;8fe4
	ld c,b			;8fe6
l8fe7h:
	jr l901bh		;8fe7
	ld c,c			;8fe9
	ld c,c			;8fea
	ld (04c57h),a		;8feb
	ld c,l			;8fee
	ld c,(hl)		;8fef
	ld (hl),h		;8ff0
	ld (hl),h		;8ff1
	halt			;8ff2
	ld (hl),h		;8ff3
	ld h,b			;8ff4
	ld h,c			;8ff5
	ld l,d			;8ff6
	ld h,b			;8ff7
	ld (hl),l		;8ff8
	ld a,b			;8ff9
l8ffah:
	ld (hl),l		;8ffa
	sbc a,b			;8ffb
	ld l,a			;8ffc
	ld l,(hl)		;8ffd
	ld l,(hl)		;8ffe
	ld l,a			;8fff
	ld (hl),h		;9000
	ld (hl),h		;9001
	halt			;9002
	ld (hl),h		;9003
	ld h,b			;9004
	ld h,c			;9005
	ld l,d			;9006
	ld h,b			;9007
	ld (hl),l		;9008
	ld a,b			;9009
	ld (hl),l		;900a
	sbc a,b			;900b
	ld a,a			;900c
	add a,b			;900d
	adc a,h			;900e
	ld a,a			;900f
	ld l,a			;9010
	ld l,(hl)		;9011
	ld l,(hl)		;9012
	ld l,a			;9013
	adc a,(hl)		;9014
	adc a,a			;9015
	adc a,(hl)		;9016
	sub b			;9017
	sbc a,l			;9018
	sbc a,(hl)		;9019
	sbc a,l			;901a
l901bh:
	sub d			;901b
	ld l,h			;901c
	ld l,h			;901d
	ld l,h			;901e
	sub e			;901f
	adc a,b			;9020
	adc a,b			;9021
	adc a,b			;9022
	adc a,b			;9023
	adc a,(hl)		;9024
	adc a,a			;9025
	adc a,(hl)		;9026
	sub b			;9027
	sbc a,l			;9028
	sbc a,(hl)		;9029
	sbc a,l			;902a
	sub d			;902b
	ld l,h			;902c
	ld l,h			;902d
l902eh:
	ld l,h			;902e
	ld (hl),a		;902f
	sub h			;9030
	sub (hl)		;9031
	sub h			;9032
	sub (hl)		;9033
	adc a,(hl)		;9034
	adc a,a			;9035
	adc a,(hl)		;9036
	sub b			;9037
	sbc a,l			;9038
	sbc a,(hl)		;9039
	sbc a,l			;903a
	sub d			;903b
	ld l,h			;903c
	ld l,h			;903d
	ld l,h			;903e
	sub e			;903f
	ld l,l			;9040
	add a,l			;9041
	add a,(hl)		;9042
	ld l,l			;9043
	adc a,(hl)		;9044
	adc a,a			;9045
	adc a,(hl)		;9046
	sub b			;9047
	sbc a,l			;9048
	sbc a,(hl)		;9049
	sbc a,l			;904a
	sub d			;904b
	ld l,h			;904c
	ld l,h			;904d
	ld l,h			;904e
	ld (hl),a		;904f
	nop			;9050
	nop			;9051
	nop			;9052
	nop			;9053
	nop			;9054
	nop			;9055
	nop			;9056
	nop			;9057
	nop			;9058
	nop			;9059
	nop			;905a
	nop			;905b
	nop			;905c
	nop			;905d
	nop			;905e
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
	and e			;9070
	sbc a,d			;9071
	sbc a,c			;9072
	and c			;9073
	and (hl)		;9074
	and b			;9075
	sbc a,d			;9076
	sub h			;9077
	inc de			;9078
	adc a,(hl)		;9079
	and b			;907a
	sbc a,c			;907b
	nop			;907c
	ld (hl),c		;907d
	sbc a,(hl)		;907e
	sbc a,l			;907f
	nop			;9080
	ld bc,00002h		;9081
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
	nop			;908f
	sbc a,b			;9090
	adc a,b			;9091
	ld a,e			;9092
	and c			;9093
	and e			;9094
	adc a,h			;9095
	add a,h			;9096
	sub a			;9097
	ld (hl),c		;9098
	and e			;9099
	and c			;909a
	rlca			;909b
	inc bc			;909c
	ld (hl),b		;909d
	ld (hl),d		;909e
	nop			;909f
	and c			;90a0
	sub e			;90a1
	ld (hl),l		;90a2
	ld a,e			;90a3
	sub h			;90a4
	sbc a,e			;90a5
	sub e			;90a6
	and h			;90a7
	and d			;90a8
	sub h			;90a9
	and c			;90aa
	ld (hl),l		;90ab
	sbc a,d			;90ac
	sbc a,c			;90ad
	sub e			;90ae
	sub (hl)		;90af
	nop			;90b0
	nop			;90b1
	ld (hl),c		;90b2
	sbc a,a			;90b3
	nop			;90b4
	nop			;90b5
	inc bc			;90b6
	ld l,a			;90b7
	nop			;90b8
	nop			;90b9
	nop			;90ba
	nop			;90bb
	nop			;90bc
	nop			;90bd
	nop			;90be
	nop			;90bf
	sub c			;90c0
	ld (hl),e		;90c1
	ld b,000h		;90c2
	ld l,(hl)		;90c4
	dec b			;90c5
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
	inc b			;90d2
	sub l			;90d3
	nop			;90d4
	nop			;90d5
	nop			;90d6
	ld (hl),c		;90d7
	nop			;90d8
	nop			;90d9
	nop			;90da
	nop			;90db
	nop			;90dc
	nop			;90dd
	nop			;90de
	nop			;90df
	and b			;90e0
	sbc a,c			;90e1
	and c			;90e2
	and c			;90e3
	sbc a,(hl)		;90e4
	sub b			;90e5
	sub b			;90e6
	sbc a,h			;90e7
	ld (hl),c		;90e8
	sbc a,a			;90e9
	sub c			;90ea
	ld (hl),e		;90eb
	inc bc			;90ec
	ld l,a			;90ed
	ld l,(hl)		;90ee
	dec b			;90ef
	sub d			;90f0
	adc a,l			;90f1
	sbc a,b			;90f2
	ld a,e			;90f3
	sub e			;90f4
	adc a,e			;90f5
	adc a,h			;90f6
	add a,h			;90f7
	and d			;90f8
	add a,e			;90f9
	adc a,a			;90fa
	and e			;90fb
	sbc a,c			;90fc
	and c			;90fd
	ld (hl),h		;90fe
	adc a,c			;90ff
	nop			;9100
	ld (hl),c		;9101
	and (hl)		;9102
	and b			;9103
	nop			;9104
	nop			;9105
	inc de			;9106
	sub l			;9107
	nop			;9108
	nop			;9109
	nop			;910a
	ld (hl),c		;910b
	nop			;910c
	nop			;910d
	nop			;910e
	nop			;910f
	sbc a,d			;9110
	and d			;9111
	sub h			;9112
	ld (hl),l		;9113
	and e			;9114
	sbc a,d			;9115
	sbc a,c			;9116
	sub (hl)		;9117
	and (hl)		;9118
	and l			;9119
	sbc a,c			;911a
	sub e			;911b
	ld (hl),c		;911c
	adc a,(hl)		;911d
	sbc a,l			;911e
	and c			;911f
	ld a,e			;9120
	and c			;9121
	ld a,e			;9122
	and c			;9123
	ld (hl),l		;9124
	ld (hl),l		;9125
	and c			;9126
	and c			;9127
	and d			;9128
	and c			;9129
	adc a,b			;912a
	ld a,e			;912b
	sub a			;912c
	sbc a,b			;912d
	ld a,c			;912e
	add a,h			;912f
	sub e			;9130
	ex af,af'		;9131
	nop			;9132
	nop			;9133
	ld (hl),d		;9134
	nop			;9135
	nop			;9136
	nop			;9137
	ld b,000h		;9138
	nop			;913a
	nop			;913b
	nop			;913c
	nop			;913d
	nop			;913e
	nop			;913f
	and c			;9140
	sub e			;9141
	sbc a,e			;9142
	and c			;9143
	and h			;9144
	sub (hl)		;9145
	sub h			;9146
	and c			;9147
	sbc a,e			;9148
	sub e			;9149
	and h			;914a
	ex af,af'		;914b
	sub h			;914c
	and c			;914d
	rlca			;914e
	nop			;914f
	inc b			;9150
	sub l			;9151
	and b			;9152
	and d			;9153
	nop			;9154
	ld (hl),c		;9155
	sbc a,(hl)		;9156
	sbc a,l			;9157
	nop			;9158
	nop			;9159
	ld (hl),c		;915a
	sbc a,a			;915b
	nop			;915c
	nop			;915d
	inc bc			;915e
	ld l,a			;915f
	sub e			;9160
	ex af,af'		;9161
	nop			;9162
	nop			;9163
	rlca			;9164
	nop			;9165
	nop			;9166
	nop			;9167
	nop			;9168
	nop			;9169
	nop			;916a
	nop			;916b
	nop			;916c
	nop			;916d
	nop			;916e
	nop			;916f
	ld a,e			;9170
	and c			;9171
	ld a,e			;9172
	and c			;9173
	add a,h			;9174
	sub a			;9175
	sbc a,b			;9176
	halt			;9177
	and c			;9178
	rlca			;9179
	nop			;917a
	nop			;917b
	ld (hl),d		;917c
	nop			;917d
	nop			;917e
	nop			;917f
	add a,c			;9180
	adc a,l			;9181
	sbc a,b			;9182
	adc a,b			;9183
	add a,l			;9184
	add a,c			;9185
	and e			;9186
	adc a,h			;9187
	ld bc,07102h		;9188
	and e			;918b
	nop			;918c
	nop			;918d
	inc bc			;918e
	ld (hl),b		;918f
	sub e			;9190
	ld (hl),l		;9191
	ld a,e			;9192
	and c			;9193
	and c			;9194
	add a,a			;9195
	add a,d			;9196
	sub a			;9197
	nop			;9198
	nop			;9199
	ld bc,00002h		;919a
	nop			;919d
	nop			;919e
	nop			;919f
	sub e			;91a0
	and c			;91a1
	sbc a,e			;91a2
	ld (hl),l		;91a3
	and c			;91a4
l91a5h:
	sbc a,e			;91a5
	and c			;91a6
	sub e			;91a7
	sub (hl)		;91a8
	sub h			;91a9
	and c			;91aa
	and h			;91ab
	and h			;91ac
	and h			;91ad
	sbc a,c			;91ae
	ld (hl),l		;91af
	adc a,l			;91b0
	sbc a,b			;91b1
	adc a,b			;91b2
	ld a,h			;91b3
	ld a,(hl)		;91b4
	and b			;91b5
	adc a,h			;91b6
	add a,h			;91b7
	add a,c			;91b8
	sub l			;91b9
	and e			;91ba
	sub h			;91bb
	add a,l			;91bc
	add a,c			;91bd
	ld a,(hl)		;91be
	ld a,l			;91bf
	add a,c			;91c0
	adc a,(hl)		;91c1
	ld (hl),a		;91c2
	and d			;91c3
	add a,l			;91c4
	ld a,a			;91c5
	and e			;91c6
	sbc a,d			;91c7
	nop			;91c8
	inc b			;91c9
	and (hl)		;91ca
	ld (hl),a		;91cb
	nop			;91cc
	nop			;91cd
	ld (hl),c		;91ce
	and e			;91cf
	ld bc,01302h		;91d0
	sub l			;91d3
	nop			;91d4
	nop			;91d5
	nop			;91d6
	ld (hl),c		;91d7
	nop			;91d8
	nop			;91d9
	nop			;91da
	nop			;91db
	nop			;91dc
	nop			;91dd
	nop			;91de
	nop			;91df
	ld (hl),l		;91e0
	ld a,e			;91e1
	ld a,e			;91e2
	and c			;91e3
	ld (hl),l		;91e4
	ld (hl),l		;91e5
	sbc a,e			;91e6
	and c			;91e7
	ld (hl),l		;91e8
	sub (hl)		;91e9
	and c			;91ea
	sub e			;91eb
	sbc a,e			;91ec
	sub e			;91ed
	and c			;91ee
	sub (hl)		;91ef
	ld a,e			;91f0
	add a,c			;91f1
	adc a,l			;91f2
	sbc a,b			;91f3
	sub a			;91f4
	sbc a,b			;91f5
	adc a,e			;91f6
	adc a,h			;91f7
	ld a,e			;91f8
	and c			;91f9
	add a,e			;91fa
	adc a,a			;91fb
	sub a			;91fc
	sbc a,b			;91fd
	and c			;91fe
	ld (hl),h		;91ff
	adc a,b			;9200
	sub h			;9201
	and c			;9202
	ld a,e			;9203
	adc a,h			;9204
	add a,h			;9205
	and c			;9206
	add a,l			;9207
	and e			;9208
	sbc a,d			;9209
	adc a,b			;920a
	ld a,e			;920b
	adc a,c			;920c
	sbc a,b			;920d
	ld a,c			;920e
	add a,h			;920f
	ld a,e			;9210
	and c			;9211
	sub a			;9212
	sbc a,b			;9213
	ld (hl),l		;9214
	and c			;9215
	and c			;9216
	ld a,e			;9217
	and h			;9218
	sbc a,c			;9219
	sub e			;921a
	ex af,af'		;921b
	adc a,d			;921c
	sub e			;921d
	ex af,af'		;921e
	nop			;921f
	sbc a,c			;9220
	and h			;9221
	sub e			;9222
	rlca			;9223
	sbc a,l			;9224
	sbc a,h			;9225
	ld (hl),d		;9226
	nop			;9227
	sub c			;9228
	ld (hl),e		;9229
	ld b,000h		;922a
	ld l,(hl)		;922c
	dec b			;922d
	nop			;922e
	nop			;922f
	sub a			;9230
	sbc a,b			;9231
	ld a,e			;9232
	and c			;9233
	add a,h			;9234
	sbc a,e			;9235
	and c			;9236
	and c			;9237
	sbc a,l			;9238
	sbc a,d			;9239
	adc a,b			;923a
	ld a,e			;923b
	and b			;923c
	ld a,b			;923d
	ld a,c			;923e
	add a,h			;923f
	ld (hl),c		;9240
	ld a,(hl)		;9241
	and b			;9242
	and d			;9243
	nop			;9244
	inc de			;9245
	sbc a,(hl)		;9246
	sbc a,l			;9247
	nop			;9248
	nop			;9249
	ld (hl),c		;924a
	sbc a,a			;924b
	nop			;924c
	nop			;924d
	inc bc			;924e
	ld l,a			;924f
	sbc a,b			;9250
	ld a,d			;9251
	ld a,h			;9252
	sbc a,e			;9253
	add a,a			;9254
	ld a,c			;9255
	add a,h			;9256
	and c			;9257
	nop			;9258
	ld bc,00002h		;9259
	nop			;925c
	nop			;925d
	nop			;925e
	nop			;925f
	adc a,d			;9260
	and c			;9261
	sbc a,c			;9262
	and c			;9263
	halt			;9264
	ld a,b			;9265
	sbc a,d			;9266
	sub h			;9267
	inc de			;9268
	adc a,(hl)		;9269
	and b			;926a
	sbc a,c			;926b
	nop			;926c
	ld (hl),c		;926d
	sbc a,(hl)		;926e
	sbc a,l			;926f
	sub e			;9270
	ld (hl),l		;9271
	and c			;9272
	sub e			;9273
	sbc a,c			;9274
	sub e			;9275
	sbc a,e			;9276
	and c			;9277
	and c			;9278
	sub e			;9279
	and c			;927a
	ex af,af'		;927b
	sbc a,l			;927c
	sbc a,h			;927d
	ld (hl),d		;927e
	nop			;927f
	ld a,a			;9280
	and e			;9281
	sbc a,d			;9282
	sub h			;9283
	add a,e			;9284
	adc a,a			;9285
	and e			;9286
	and d			;9287
	ld b,013h		;9288
	and (hl)		;928a
	sbc a,d			;928b
	nop			;928c
	nop			;928d
	ld (hl),c		;928e
	and e			;928f
	ld a,e			;9290
	sub a			;9291
	sbc a,b			;9292
	and c			;9293
	and c			;9294
	adc a,d			;9295
	and h			;9296
	and c			;9297
	adc a,b			;9298
	ld a,h			;9299
	sub e			;929a
	add a,(hl)		;929b
	ld a,c			;929c
	add a,h			;929d
	halt			;929e
	ld a,b			;929f
	ld (hl),l		;92a0
	sub e			;92a1
	ld a,a			;92a2
	sub l			;92a3
	ld (hl),l		;92a4
	sub e			;92a5
	add a,b			;92a6
	and (hl)		;92a7
	and d			;92a8
	sub h			;92a9
	sub e			;92aa
	ld a,a			;92ab
	sbc a,d			;92ac
	and d			;92ad
	sub h			;92ae
	add a,e			;92af
	adc a,b			;92b0
	ld a,h			;92b1
	ld a,e			;92b2
	and c			;92b3
	adc a,h			;92b4
	add a,h			;92b5
	and c			;92b6
	sbc a,b			;92b7
	and b			;92b8
	sub h			;92b9
	sbc a,e			;92ba
	sub e			;92bb
	and (hl)		;92bc
	ld a,l			;92bd
	sbc a,c			;92be
	and c			;92bf
	nop			;92c0
	nop			;92c1
	inc bc			;92c2
	ld (hl),b		;92c3
	nop			;92c4
	inc bc			;92c5
	ld (hl),c		;92c6
	and b			;92c7
	nop			;92c8
	ld (hl),d		;92c9
	sbc a,(hl)		;92ca
	sub d			;92cb
	ex af,af'		;92cc
	and l			;92cd
	ld a,b			;92ce
	sbc a,h			;92cf
	nop			;92d0
	nop			;92d1
	nop			;92d2
	nop			;92d3
	nop			;92d4
	nop			;92d5
	nop			;92d6
	nop			;92d7
	adc a,d			;92d8
	ld a,h			;92d9
	ld (hl),h		;92da
	sbc a,a			;92db
	ld (hl),a		;92dc
	ld (hl),a		;92dd
	and c			;92de
	ld (hl),a		;92df
	nop			;92e0
	nop			;92e1
	nop			;92e2
	nop			;92e3
	inc bc			;92e4
	ld b,003h		;92e5
	ld b,0a4h		;92e7
	sub a			;92e9
	sbc a,b			;92ea
	and c			;92eb
	ld (hl),a		;92ec
	adc a,b			;92ed
	add a,h			;92ee
	sub e			;92ef
	nop			;92f0
	nop			;92f1
	nop			;92f2
	nop			;92f3
	nop			;92f4
	inc b			;92f5
	ld b,004h		;92f6
	ld (hl),l		;92f8
	add a,d			;92f9
	adc a,l			;92fa
	sbc a,a			;92fb
	ld a,a			;92fc
	ld (hl),a		;92fd
	and c			;92fe
	ld (hl),a		;92ff
	nop			;9300
	nop			;9301
	nop			;9302
	nop			;9303
	dec b			;9304
	ld b,005h		;9305
	ld b,081h		;9307
	ld (hl),a		;9309
	add a,l			;930a
	add a,h			;930b
	sub h			;930c
	adc a,c			;930d
	adc a,l			;930e
	and c			;930f
	nop			;9310
	nop			;9311
	nop			;9312
	nop			;9313
	nop			;9314
	nop			;9315
	nop			;9316
	nop			;9317
	nop			;9318
	nop			;9319
	inc bc			;931a
	ld l,l			;931b
	nop			;931c
	inc bc			;931d
	ld (hl),c		;931e
	ld a,d			;931f
	nop			;9320
	nop			;9321
	nop			;9322
	nop			;9323
	nop			;9324
	nop			;9325
	nop			;9326
	nop			;9327
	ld l,d			;9328
	ld (bc),a		;9329
	nop			;932a
	nop			;932b
	sub c			;932c
	ld l,e			;932d
	ld (bc),a		;932e
	nop			;932f
	ld l,a			;9330
	ld bc,00000h		;9331
	ld a,d			;9334
	ld l,c			;9335
	ld (bc),a		;9336
	nop			;9337
	sub d			;9338
	sub d			;9339
	ld l,h			;933a
	nop			;933b
	sbc a,c			;933c
	sub e			;933d
	and c			;933e
	rlca			;933f
	nop			;9340
	ld (hl),d		;9341
	sbc a,(hl)		;9342
	sbc a,l			;9343
	ex af,af'		;9344
	sub b			;9345
	and b			;9346
	sbc a,h			;9347
	add a,c			;9348
	ld a,b			;9349
	sbc a,d			;934a
	sbc a,c			;934b
	sub e			;934c
	sub (hl)		;934d
	and d			;934e
	sub h			;934f
	sbc a,h			;9350
	sub (hl)		;9351
	and c			;9352
	ld a,a			;9353
	add a,e			;9354
	sub e			;9355
	and c			;9356
	sub e			;9357
	ld a,a			;9358
	ld a,a			;9359
	sub (hl)		;935a
	sub h			;935b
	ld a,a			;935c
	ld (hl),a		;935d
	ld (hl),a		;935e
	and c			;935f
	rlca			;9360
	nop			;9361
	nop			;9362
	nop			;9363
	sub e			;9364
	rlca			;9365
	nop			;9366
	nop			;9367
	adc a,b			;9368
	adc a,d			;9369
	ld a,h			;936a
	ld (hl),h		;936b
	ld a,(hl)		;936c
	adc a,l			;936d
	ld (hl),a		;936e
	add a,e			;936f
	nop			;9370
	nop			;9371
	nop			;9372
	nop			;9373
	dec b			;9374
	inc b			;9375
	ld b,000h		;9376
	sbc a,a			;9378
	and h			;9379
	sub a			;937a
	sbc a,b			;937b
	ld (hl),a		;937c
	add a,e			;937d
	ld (hl),a		;937e
	and c			;937f
	inc bc			;9380
	ld (hl),b		;9381
	rlca			;9382
	nop			;9383
	ld (hl),e		;9384
	halt			;9385
	sub e			;9386
	rlca			;9387
	and c			;9388
	adc a,c			;9389
	add a,d			;938a
	sub a			;938b
	sbc a,c			;938c
	ld a,a			;938d
	ld (hl),a		;938e
	and c			;938f
	nop			;9390
	nop			;9391
	inc bc			;9392
	ld (hl),b		;9393
	nop			;9394
	nop			;9395
	ld (hl),e		;9396
	halt			;9397
	sub a			;9398
	sbc a,b			;9399
	and c			;939a
	ld a,h			;939b
	ld (hl),a		;939c
	add a,e			;939d
	sbc a,e			;939e
	ld a,a			;939f
	rlca			;93a0
	nop			;93a1
	nop			;93a2
	nop			;93a3
	sub e			;93a4
	rlca			;93a5
	nop			;93a6
	nop			;93a7
	add a,d			;93a8
	sub a			;93a9
	sub a			;93aa
	sbc a,b			;93ab
	ld (hl),a		;93ac
	and c			;93ad
	ld (hl),a		;93ae
	and c			;93af
	nop			;93b0
	nop			;93b1
l93b2h:
	nop			;93b2
	nop			;93b3
	nop			;93b4
	nop			;93b5
	nop			;93b6
	nop			;93b7
	ld l,d			;93b8
	ld (bc),a		;93b9
	nop			;93ba
	nop			;93bb
	sub c			;93bc
	ld l,e			;93bd
	ld (bc),a		;93be
	ld (de),a		;93bf
	nop			;93c0
	inc bc			;93c1
	ld l,(hl)		;93c2
	ld bc,07100h		;93c3
	ld a,d			;93c6
	ld l,c			;93c7
	ex af,af'		;93c8
	sbc a,(hl)		;93c9
	sub d			;93ca
	sbc a,h			;93cb
	and (hl)		;93cc
	and e			;93cd
	and c			;93ce
	and c			;93cf
	sub (hl)		;93d0
	and c			;93d1
	rlca			;93d2
	nop			;93d3
	ld a,a			;93d4
	and c			;93d5
	add a,e			;93d6
	rlca			;93d7
	ld a,a			;93d8
	sub (hl)		;93d9
	and c			;93da
	and c			;93db
	ld a,a			;93dc
	ld a,a			;93dd
	sbc a,e			;93de
	and c			;93df
	ld a,a			;93e0
	ld a,l			;93e1
	ld a,e			;93e2
	sbc a,d			;93e3
	adc a,a			;93e4
	sub l			;93e5
	and e			;93e6
	sub h			;93e7
	sub l			;93e8
	sub b			;93e9
	adc a,h			;93ea
	add a,h			;93eb
	sub l			;93ec
	ld a,c			;93ed
	add a,(hl)		;93ee
	and c			;93ef
	nop			;93f0
	nop			;93f1
	nop			;93f2
	nop			;93f3
	ld (bc),a		;93f4
	nop			;93f5
	nop			;93f6
	nop			;93f7
	ld l,h			;93f8
	nop			;93f9
	nop			;93fa
	inc bc			;93fb
	sub e			;93fc
	rlca			;93fd
	inc b			;93fe
	ld (hl),c		;93ff
	sbc a,l			;9400
	sbc a,h			;9401
	ld l,h			;9402
	ld (hl),d		;9403
	sub e			;9404
	and c			;9405
	adc a,a			;9406
	sub l			;9407
	sbc a,c			;9408
	adc a,(hl)		;9409
	sub l			;940a
	sub b			;940b
	and c			;940c
	ld a,l			;940d
	sub l			;940e
	ld a,c			;940f
	ld a,e			;9410
	sbc a,d			;9411
	sbc a,c			;9412
	ld a,a			;9413
	ld a,b			;9414
	sbc a,c			;9415
	and c			;9416
	ld a,a			;9417
	adc a,h			;9418
	add a,h			;9419
	sbc a,e			;941a
	adc a,b			;941b
	add a,(hl)		;941c
	and c			;941d
	sub e			;941e
	add a,(hl)		;941f
	sub (hl)		;9420
	and c			;9421
	add a,c			;9422
	sbc a,d			;9423
	ld a,a			;9424
	sub e			;9425
	sub (hl)		;9426
	and d			;9427
	sub (hl)		;9428
	and c			;9429
	adc a,b			;942a
	adc a,d			;942b
	ld (hl),a		;942c
	and c			;942d
	ld a,(hl)		;942e
	adc a,l			;942f
	nop			;9430
	nop			;9431
	nop			;9432
	nop			;9433
	nop			;9434
	nop			;9435
	nop			;9436
	nop			;9437
	ld l,(hl)		;9438
	ld bc,00000h		;9439
	ld a,d			;943c
	ld l,c			;943d
	ld (bc),a		;943e
	nop			;943f
	sbc a,l			;9440
	sbc a,h			;9441
	ld l,h			;9442
	nop			;9443
	sub (hl)		;9444
	and c			;9445
	and c			;9446
	rlca			;9447
	sub (hl)		;9448
	sub e			;9449
	adc a,b			;944a
	adc a,d			;944b
	ld (hl),a		;944c
	and c			;944d
	ld a,(hl)		;944e
	ld (hl),a		;944f
	sub a			;9450
	sbc a,b			;9451
	ld (hl),a		;9452
	and c			;9453
	ld (hl),a		;9454
	and c			;9455
	sub a			;9456
	sbc a,b			;9457
	ld a,a			;9458
	sub (hl)		;9459
	sbc a,c			;945a
	adc a,b			;945b
	and c			;945c
	ld a,a			;945d
	adc a,b			;945e
	add a,a			;945f
	nop			;9460
	nop			;9461
	nop			;9462
	nop			;9463
	nop			;9464
	nop			;9465
	nop			;9466
	inc bc			;9467
	nop			;9468
	nop			;9469
	nop			;946a
	ld (hl),d		;946b
	nop			;946c
	nop			;946d
	ex af,af'		;946e
	and l			;946f
	inc bc			;9470
	ld l,l			;9471
	ld l,d			;9472
	ld (bc),a		;9473
	ld (hl),c		;9474
	ld a,d			;9475
	sub c			;9476
	ld l,e			;9477
	sbc a,(hl)		;9478
	sbc a,l			;9479
	sub d			;947a
	sbc a,h			;947b
	and e			;947c
	and c			;947d
	add a,e			;947e
	and c			;947f
	nop			;9480
	ld (de),a		;9481
	ld a,e			;9482
	sbc a,d			;9483
	inc b			;9484
	ld (hl),e		;9485
	and e			;9486
	and d			;9487
	add a,e			;9488
	adc a,c			;9489
	add a,d			;948a
	sbc a,e			;948b
	ld a,a			;948c
	ld a,a			;948d
	ld (hl),a		;948e
	and c			;948f
	sbc a,c			;9490
	and c			;9491
	ld a,a			;9492
	ld a,a			;9493
	and d			;9494
	sub h			;9495
	sub e			;9496
	ld a,a			;9497
	adc a,b			;9498
	add a,h			;9499
	ld a,a			;949a
	and c			;949b
	add a,(hl)		;949c
	add a,e			;949d
	ld (hl),a		;949e
	add a,e			;949f
	sbc a,c			;94a0
	sub e			;94a1
	ld a,a			;94a2
	ld a,a			;94a3
	and d			;94a4
	sub h			;94a5
	ld a,a			;94a6
	ld a,a			;94a7
	sbc a,e			;94a8
	sbc a,e			;94a9
	ld a,a			;94aa
	adc a,(hl)		;94ab
	ld (hl),a		;94ac
	and c			;94ad
	sub e			;94ae
	ld a,l			;94af
	nop			;94b0
	nop			;94b1
	nop			;94b2
	nop			;94b3
	nop			;94b4
	nop			;94b5
	nop			;94b6
	nop			;94b7
	nop			;94b8
	nop			;94b9
	nop			;94ba
	ex af,af'		;94bb
	nop			;94bc
	inc b			;94bd
	ld (de),a		;94be
	and l			;94bf
	nop			;94c0
	nop			;94c1
	nop			;94c2
	nop			;94c3
	ld (bc),a		;94c4
	nop			;94c5
	nop			;94c6
	nop			;94c7
	ld l,h			;94c8
	nop			;94c9
	nop			;94ca
	nop			;94cb
	sub e			;94cc
	rlca			;94cd
	nop			;94ce
	nop			;94cf
	sub e			;94d0
	adc a,b			;94d1
	add a,a			;94d2
	sub b			;94d3
	adc a,b			;94d4
	ld a,l			;94d5
	sub l			;94d6
	ld a,c			;94d7
	add a,a			;94d8
	sub b			;94d9
	ld a,b			;94da
	adc a,h			;94db
	ld a,b			;94dc
	sbc a,d			;94dd
	sbc a,d			;94de
	adc a,l			;94df
	sbc a,d			;94e0
	sbc a,c			;94e1
	ld a,a			;94e2
	sub (hl)		;94e3
	and d			;94e4
	sub h			;94e5
	ld a,a			;94e6
	ld a,a			;94e7
	sbc a,c			;94e8
	sbc a,e			;94e9
	ld a,a			;94ea
	and c			;94eb
	and c			;94ec
	sub e			;94ed
	ld a,a			;94ee
	and c			;94ef
	sub a			;94f0
	sbc a,b			;94f1
	and c			;94f2
	add a,b			;94f3
	ld (hl),a		;94f4
	and c			;94f5
	adc a,(hl)		;94f6
	sub l			;94f7
	sub a			;94f8
	sbc a,b			;94f9
	adc a,e			;94fa
	adc a,h			;94fb
	ld (hl),a		;94fc
	adc a,(hl)		;94fd
	sub l			;94fe
	add a,(hl)		;94ff
	sub a			;9500
	sbc a,b			;9501
	ld l,h			;9502
	nop			;9503
	ld (hl),a		;9504
	add a,e			;9505
	sub e			;9506
	rlca			;9507
	ld a,a			;9508
	sub (hl)		;9509
	adc a,b			;950a
	adc a,d			;950b
	ld (hl),a		;950c
	and c			;950d
	ld a,(hl)		;950e
	adc a,l			;950f
	nop			;9510
	nop			;9511
	nop			;9512
	ld (de),a		;9513
	nop			;9514
	nop			;9515
	inc b			;9516
	ld (hl),e		;9517
	ld (hl),l		;9518
	ld (hl),h		;9519
	sbc a,b			;951a
	adc a,c			;951b
	ld (hl),a		;951c
	and c			;951d
	add a,e			;951e
	sub (hl)		;951f
	ld a,a			;9520
	sub (hl)		;9521
	sub a			;9522
	sbc a,b			;9523
	ld a,a			;9524
	ld a,a			;9525
	adc a,l			;9526
	and c			;9527
	adc a,b			;9528
	add a,d			;9529
	sub a			;952a
	sbc a,b			;952b
	add a,(hl)		;952c
	and c			;952d
	ld (hl),a		;952e
	adc a,(hl)		;952f
	add a,e			;9530
	add a,b			;9531
	sub l			;9532
	sbc a,b			;9533
	adc a,(hl)		;9534
	sub l			;9535
	and e			;9536
	and d			;9537
	adc a,e			;9538
	add a,l			;9539
	adc a,d			;953a
	add a,h			;953b
	and e			;953c
	adc a,l			;953d
	add a,(hl)		;953e
	sbc a,b			;953f
	and c			;9540
	sbc a,h			;9541
	ld l,h			;9542
	nop			;9543
	and c			;9544
	add a,e			;9545
	sub e			;9546
	rlca			;9547
	and c			;9548
	sub e			;9549
	sub e			;954a
	and c			;954b
	sub e			;954c
	ld a,a			;954d
	ld a,a			;954e
	sub e			;954f
	ld a,e			;9550
	add a,c			;9551
	adc a,l			;9552
	sbc a,b			;9553
	sub a			;9554
	sbc a,b			;9555
	adc a,e			;9556
	adc a,h			;9557
	sbc a,l			;9558
	sbc a,c			;9559
	add a,e			;955a
	adc a,a			;955b
	and b			;955c
	sbc a,d			;955d
	add a,l			;955e
	ld (hl),h		;955f
	sub a			;9560
	sbc a,b			;9561
	ld a,e			;9562
	ld a,a			;9563
	ld (hl),l		;9564
	ld (hl),l		;9565
	and c			;9566
	add a,b			;9567
	and d			;9568
	and c			;9569
	adc a,b			;956a
	ld a,e			;956b
	sub a			;956c
	sbc a,b			;956d
	ld a,c			;956e
	add a,h			;956f
	adc a,b			;9570
	sub h			;9571
	and c			;9572
	ld a,a			;9573
	adc a,h			;9574
	add a,h			;9575
	and c			;9576
	add a,b			;9577
	and e			;9578
	sbc a,d			;9579
	adc a,b			;957a
	ld a,e			;957b
	adc a,c			;957c
	sbc a,b			;957d
	ld a,c			;957e
	add a,h			;957f
	ld a,e			;9580
	add a,c			;9581
	adc a,l			;9582
	sbc a,b			;9583
	sub a			;9584
	sbc a,b			;9585
	adc a,e			;9586
	adc a,h			;9587
	adc a,b			;9588
	and c			;9589
	add a,e			;958a
	adc a,a			;958b
	ld a,c			;958c
	add a,h			;958d
	and c			;958e
	sub d			;958f
	adc a,b			;9590
	sub h			;9591
	and c			;9592
	ld a,e			;9593
	adc a,h			;9594
	add a,h			;9595
	sbc a,e			;9596
	sub e			;9597
	and e			;9598
	sbc a,e			;9599
	sub h			;959a
	and c			;959b
	adc a,c			;959c
	add a,h			;959d
	sbc a,c			;959e
	sub e			;959f
	sbc a,b			;95a0
	ld a,d			;95a1
	add a,c			;95a2
	adc a,l			;95a3
	add a,a			;95a4
	ld a,c			;95a5
	add a,h			;95a6
	add a,c			;95a7
	nop			;95a8
	ld bc,00002h		;95a9
	nop			;95ac
	nop			;95ad
	nop			;95ae
	nop			;95af
	ld a,e			;95b0
	and c			;95b1
	ld a,e			;95b2
	and c			;95b3
	sbc a,b			;95b4
	halt			;95b5
	add a,d			;95b6
	sub a			;95b7
	nop			;95b8
	nop			;95b9
	ld bc,00002h		;95ba
	nop			;95bd
	nop			;95be
	nop			;95bf
	inc bc			;95c0
	ld (hl),b		;95c1
	sbc a,(hl)		;95c2
	sbc a,l			;95c3
	ld (hl),d		;95c4
	sub b			;95c5
	and b			;95c6
	sbc a,h			;95c7
	add a,c			;95c8
	ld a,b			;95c9
	sbc a,d			;95ca
	sbc a,c			;95cb
	sub e			;95cc
	sub (hl)		;95cd
	and d			;95ce
	sub h			;95cf
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
	ld e,001h		;95e0
	ld e,001h		;95e2
	dec b			;95e4
	ld (bc),a		;95e5
	rlca			;95e6
	jr nz,$+35		;95e7
	ld hl,02121h		;95e9
	inc hl			;95ec
	inc hl			;95ed
	inc hl			;95ee
	inc hl			;95ef
	ld e,001h		;95f0
	ld e,001h		;95f2
	dec b			;95f4
	ld (bc),a		;95f5
	rlca			;95f6
	jr nz,$+38		;95f7
	cpl			;95f9
	ld hl,04026h		;95fa
	ld l,023h		;95fd
	ld c,d			;95ff
	ld e,001h		;9600
	ld e,001h		;9602
	dec b			;9604
	ld (bc),a		;9605
	rlca			;9606
	jr nz,l962ah		;9607
	ld hl,02126h		;9609
	inc hl			;960c
	inc hl			;960d
	ld c,d			;960e
	inc hl			;960f
	ld (02722h),hl		;9610
	ld (01d1dh),hl		;9613
	jr nc,$+31		;9616
	ld a,(0303ah)		;9618
	ld a,(02c2ch)		;961b
	ld sp,0292ch		;961e
	ld (02922h),hl		;9621
	ld hl,(01d1dh)		;9624
	ld hl,(03a2bh)		;9627
l962ah:
	ld a,(03c3bh)		;962a
	inc l			;962d
	inc l			;962e
	inc a			;962f
	inc bc			;9630
	inc bc			;9631
	add hl,hl		;9632
	ld (03232h),hl		;9633
	ld hl,(03949h)		;9636
	ld b,h			;9639
	dec sp			;963a
	ld a,(00606h)		;963b
	inc a			;963e
	inc l			;963f
	ld (02722h),hl		;9640
	ld (04349h),hl		;9643
	jr nc,l9665h		;9646
	ld a,(0303ah)		;9648
	ld a,(02c2ch)		;964b
	ld sp,00f2ch		;964e
	dec l			;9651
	djnz l9665h		;9652
	ld e,001h		;9654
	ld e,001h		;9656
	dec b			;9658
	ld (bc),a		;9659
	rlca			;965a
	jr nz,l967bh		;965b
	ld bc,0011eh		;965d
	inc (hl)		;9660
	ld b,a			;9661
	ld b,(hl)		;9662
	ld c,b			;9663
	dec h			;9664
l9665h:
	ld c,00ch		;9665
	dec c			;9667
	inc (hl)		;9668
	ld b,a			;9669
	ld b,(hl)		;966a
	ld c,b			;966b
	dec h			;966c
	ld c,00ch		;966d
	dec c			;966f
	djnz $+17		;9670
	inc b			;9672
	ex af,af'		;9673
	jr z,l9677h		;9674
	inc sp			;9676
l9677h:
	add hl,bc		;9677
	rra			;9678
	jr nz,$+12		;9679
l967bh:
	dec bc			;967b
	jr z,$+3		;967c
	ld e,001h		;967e
	ld (02222h),hl		;9680
	ld (01d1dh),hl		;9683
	dec e			;9686
	dec e			;9687
	ld a,(03a3ah)		;9688
	ld a,(02c2ch)		;968b
	inc l			;968e
	inc l			;968f
	adc a,c			;9690
	ld h,l			;9691
	ld h,a			;9692
	adc a,c			;9693
	ld e,(hl)		;9694
	ld l,d			;9695
	ld l,e			;9696
	ld e,(hl)		;9697
	ld l,b			;9698
	ld l,e			;9699
	ld l,h			;969a
	ld e,(hl)		;969b
	ld a,e			;969c
	ld l,d			;969d
	ld l,h			;969e
	ld e,(hl)		;969f
	ld l,e			;96a0
	ld l,h			;96a1
	ld e,(hl)		;96a2
	ld e,l			;96a3
	ld a,l			;96a4
	sub c			;96a5
	sbc a,d			;96a6
	ld l,b			;96a7
	cp a			;96a8
	xor l			;96a9
	ld (hl),c		;96aa
	ld a,e			;96ab
	ld l,e			;96ac
	ld l,h			;96ad
	ld e,(hl)		;96ae
	ld e,l			;96af
	adc a,c			;96b0
	adc a,(hl)		;96b1
	adc a,c			;96b2
	adc a,(hl)		;96b3
	ld e,(hl)		;96b4
	ld e,h			;96b5
	ld e,(hl)		;96b6
	ld e,h			;96b7
	ld e,a			;96b8
	adc a,e			;96b9
	xor e			;96ba
	ld e,l			;96bb
	ld e,a			;96bc
	sbc a,e			;96bd
	add a,05ch		;96be
	adc a,c			;96c0
	adc a,(hl)		;96c1
	adc a,c			;96c2
	adc a,(hl)		;96c3
	ld e,(hl)		;96c4
	ld e,h			;96c5
	ld e,(hl)		;96c6
	ld e,h			;96c7
	ld e,a			;96c8
	ld e,l			;96c9
	ld e,a			;96ca
	ld e,l			;96cb
	ld e,a			;96cc
	ld e,h			;96cd
	ld e,a			;96ce
	ld e,h			;96cf
	ld h,h			;96d0
	adc a,(hl)		;96d1
	ld h,a			;96d2
	ret			;96d3
	ld h,b			;96d4
	ld e,h			;96d5
	ld l,e			;96d6
	ld l,l			;96d7
	ld h,b			;96d8
	ld e,l			;96d9
	ld l,e			;96da
	ld l,l			;96db
	ld h,b			;96dc
	ld e,h			;96dd
	ld l,e			;96de
	ld l,l			;96df
	adc a,c			;96e0
	adc a,(hl)		;96e1
	ld h,a			;96e2
	adc a,c			;96e3
	ld l,b			;96e4
	ld e,h			;96e5
	ld l,e			;96e6
	ld e,(hl)		;96e7
	ld a,e			;96e8
	ld e,l			;96e9
	ld l,h			;96ea
	ld e,(hl)		;96eb
	ld e,a			;96ec
	ld e,h			;96ed
	ld l,h			;96ee
	ld e,(hl)		;96ef
	ld h,h			;96f0
	adc a,c			;96f1
	adc a,(hl)		;96f2
	adc a,c			;96f3
	ld h,b			;96f4
	ld a,l			;96f5
	sub c			;96f6
	sbc a,d			;96f7
	ld h,b			;96f8
	cp a			;96f9
	xor l			;96fa
	ld (hl),c		;96fb
	ld h,b			;96fc
	ld e,a			;96fd
	ld e,h			;96fe
	ld e,(hl)		;96ff
	adc a,c			;9700
	ld h,l			;9701
	ld h,a			;9702
	ret			;9703
	ld l,b			;9704
	ld l,e			;9705
	ld l,d			;9706
	ld l,l			;9707
	ld a,e			;9708
	ld l,h			;9709
	ld l,h			;970a
	ld l,l			;970b
	ld e,h			;970c
	ld l,e			;970d
	ld l,d			;970e
	ld l,l			;970f
	ld h,h			;9710
	adc a,(hl)		;9711
	ld h,a			;9712
	adc a,c			;9713
	ld h,b			;9714
	ld e,h			;9715
	ld l,e			;9716
	ld e,(hl)		;9717
	ld h,b			;9718
	ld e,l			;9719
	ld l,h			;971a
	ld e,(hl)		;971b
	ld h,b			;971c
	ld e,h			;971d
	ld l,h			;971e
	ld e,(hl)		;971f
	adc a,c			;9720
	adc a,(hl)		;9721
	ld h,a			;9722
	ret			;9723
	ld e,(hl)		;9724
	ld e,h			;9725
	ld l,e			;9726
	ld l,l			;9727
	ld e,a			;9728
	ld e,l			;9729
	ld l,h			;972a
	ld l,l			;972b
	ld e,a			;972c
	ld e,h			;972d
	ld l,h			;972e
	ld l,l			;972f
	adc a,c			;9730
	adc a,(hl)		;9731
	ld h,a			;9732
	adc a,c			;9733
	ld e,(hl)		;9734
	ld e,h			;9735
	ld l,e			;9736
	ld e,(hl)		;9737
	ld e,a			;9738
	ld e,l			;9739
	ld l,h			;973a
	ld e,(hl)		;973b
	ld e,a			;973c
	ld e,h			;973d
	ld l,h			;973e
	ld e,(hl)		;973f
	adc a,c			;9740
	ld h,a			;9741
	ret			;9742
	ld c,b			;9743
	ld e,(hl)		;9744
	ld l,d			;9745
	ld l,l			;9746
	dec c			;9747
	ld e,a			;9748
	ld l,c			;9749
	ld l,l			;974a
	ld c,b			;974b
	ld e,a			;974c
	ld l,d			;974d
	ld l,l			;974e
	dec c			;974f
	adc a,c			;9750
	adc a,(hl)		;9751
	adc a,c			;9752
	adc a,c			;9753
	ld a,l			;9754
	sub c			;9755
	sbc a,d			;9756
	ld l,b			;9757
	cp a			;9758
	xor l			;9759
	ld (hl),c		;975a
	ld a,e			;975b
	ld e,(hl)		;975c
	ld e,h			;975d
	ld e,(hl)		;975e
	ld e,a			;975f
	ld h,l			;9760
	ld h,a			;9761
	ld (hl),h		;9762
	ld h,l			;9763
	ld l,h			;9764
	ld l,d			;9765
	push bc			;9766
	ld l,c			;9767
	ld l,e			;9768
	ld l,c			;9769
	push bc			;976a
	ld l,e			;976b
	ld l,h			;976c
	ld l,d			;976d
	push bc			;976e
	ld l,c			;976f
	add hl,hl		;9770
	inc bc			;9771
	inc bc			;9772
	add hl,hl		;9773
	ld hl,(03232h)		;9774
	ld hl,(l8e64h)		;9777
	ld h,a			;977a
	ret			;977b
	ld e,a			;977c
	ld e,h			;977d
	ld l,e			;977e
	ld l,l			;977f
	ret			;9780
	cp d			;9781
	or d			;9782
	ld h,h			;9783
	ld l,l			;9784
	cp d			;9785
	or d			;9786
	ld h,b			;9787
	ld l,l			;9788
	adc a,(hl)		;9789
	ld h,a			;978a
	ld h,b			;978b
	ld e,a			;978c
	ld e,h			;978d
	ld l,e			;978e
	ld e,(hl)		;978f
	or d			;9790
	xor d			;9791
	sub l			;9792
	cp d			;9793
	ld a,a			;9794
	ld h,e			;9795
	pop bc			;9796
	ld a,(hl)		;9797
	and e			;9798
	xor c			;9799
	and e			;979a
	and e			;979b
	ld a,(hl)		;979c
	ld h,e			;979d
	ld a,(hl)		;979e
	ld a,(hl)		;979f
	or d			;97a0
	or c			;97a1
	or c			;97a2
	cp l			;97a3
	ld a,(hl)		;97a4
	ld h,e			;97a5
	ld a,(hl)		;97a6
	pop bc			;97a7
	and e			;97a8
	xor c			;97a9
	and e			;97aa
	and e			;97ab
	ld a,(hl)		;97ac
	ld h,e			;97ad
	ld a,(hl)		;97ae
	ld a,(hl)		;97af
	rrca			;97b0
	dec l			;97b1
	djnz l97c5h		;97b2
	cp d			;97b4
	or d			;97b5
	cp l			;97b6
	or c			;97b7
	pop bc			;97b8
	ld a,(hl)		;97b9
	ld h,e			;97ba
	ld a,a			;97bb
	cp d			;97bc
	or d			;97bd
	cp l			;97be
	or c			;97bf
	inc (hl)		;97c0
	ld b,a			;97c1
	ld b,(hl)		;97c2
	ld c,b			;97c3
	xor d			;97c4
l97c5h:
	sub l			;97c5
	cp d			;97c6
	or d			;97c7
	ld a,(hl)		;97c8
	ld a,a			;97c9
	ld h,e			;97ca
	pop bc			;97cb
	or d			;97cc
	or c			;97cd
	cp l			;97ce
	or d			;97cf
	ld e,(hl)		;97d0
	ld e,l			;97d1
	ld l,h			;97d2
	ld e,(hl)		;97d3
	ld e,a			;97d4
	ld a,l			;97d5
	sub c			;97d6
	sbc a,d			;97d7
	ld e,(hl)		;97d8
	cp a			;97d9
	xor l			;97da
	ld (hl),c		;97db
	ld e,a			;97dc
	ld e,h			;97dd
	ld l,h			;97de
	ld e,(hl)		;97df
	ld h,b			;97e0
	ld e,l			;97e1
	ld l,h			;97e2
	ld e,(hl)		;97e3
	ld h,b			;97e4
	ld a,l			;97e5
	sub c			;97e6
	sbc a,d			;97e7
	ld h,b			;97e8
	cp a			;97e9
	xor l			;97ea
	ld (hl),c		;97eb
	ld h,b			;97ec
	ld e,h			;97ed
	ld l,h			;97ee
	ld e,(hl)		;97ef
	ld h,h			;97f0
	ret			;97f1
	cp d			;97f2
	cp l			;97f3
	ld h,b			;97f4
	ld l,l			;97f5
	pop bc			;97f6
	ld h,e			;97f7
	ld h,b			;97f8
	ld l,l			;97f9
	adc a,(hl)		;97fa
	adc a,c			;97fb
	ld h,b			;97fc
	ld e,a			;97fd
	ld e,h			;97fe
	ld e,(hl)		;97ff
	or c			;9800
	or d			;9801
	ld h,h			;9802
	ret			;9803
	ld a,a			;9804
	pop bc			;9805
	ld h,b			;9806
	ld l,l			;9807
	adc a,(hl)		;9808
	adc a,c			;9809
	ld h,b			;980a
	ld l,l			;980b
	ld e,h			;980c
	ld e,(hl)		;980d
	ld e,(hl)		;980e
	ld l,l			;980f
	ret			;9810
	cp d			;9811
	or d			;9812
	cp l			;9813
	ld l,l			;9814
	pop bc			;9815
	ld a,(hl)		;9816
	ld h,e			;9817
	ld l,l			;9818
	adc a,c			;9819
	adc a,(hl)		;981a
	adc a,c			;981b
	ld e,a			;981c
	ld e,(hl)		;981d
	ld e,h			;981e
	ld e,(hl)		;981f
	xor d			;9820
	sub l			;9821
	cp d			;9822
	or d			;9823
	ld a,a			;9824
	ld a,(hl)		;9825
	ld h,e			;9826
	ld a,(hl)		;9827
	adc a,(hl)		;9828
	adc a,c			;9829
	adc a,(hl)		;982a
	adc a,c			;982b
	ld e,h			;982c
	ld e,(hl)		;982d
	ld e,h			;982e
	ld e,(hl)		;982f
	or c			;9830
	or d			;9831
	cp l			;9832
	ld h,h			;9833
	ld a,a			;9834
	ld h,e			;9835
	pop bc			;9836
	ld h,b			;9837
	adc a,(hl)		;9838
	adc a,c			;9839
	adc a,(hl)		;983a
	ld h,b			;983b
	ld e,h			;983c
	ld e,(hl)		;983d
	ld e,h			;983e
	ld e,(hl)		;983f
	rrca			;9840
	dec l			;9841
	djnz $+19		;9842
	ld e,001h		;9844
	ld e,001h		;9846
	ld h,h			;9848
	adc a,(hl)		;9849
	ld h,a			;984a
	ret			;984b
	ld e,(hl)		;984c
	ld e,h			;984d
	ld l,e			;984e
	ld l,l			;984f
	add hl,hl		;9850
	inc bc			;9851
	inc bc			;9852
	add hl,hl		;9853
	ld hl,(03232h)		;9854
	ld hl,(l8e64h)		;9857
	ld h,a			;985a
	adc a,c			;985b
	ld h,b			;985c
	ld e,h			;985d
	ld l,h			;985e
	ld e,(hl)		;985f
	ld (02722h),hl		;9860
	ld (04349h),hl		;9863
	jr nc,$+31		;9866
	adc a,c			;9868
	adc a,(hl)		;9869
	ld h,a			;986a
	ret			;986b
	ld e,(hl)		;986c
	ld e,h			;986d
	ld l,e			;986e
	ld l,l			;986f
	rrca			;9870
	dec l			;9871
	djnz $+19		;9872
	ld e,001h		;9874
	ld e,001h		;9876
	ld h,h			;9878
	adc a,(hl)		;9879
	ld h,a			;987a
	adc a,c			;987b
	ld h,b			;987c
	ld e,h			;987d
	ld l,h			;987e
	ld e,(hl)		;987f
	rrca			;9880
	dec l			;9881
	djnz l9895h		;9882
	ld e,001h		;9884
	ld e,001h		;9886
	adc a,c			;9888
	adc a,(hl)		;9889
	ld h,a			;988a
	ret			;988b
	ld e,(hl)		;988c
	ld e,h			;988d
	ld l,e			;988e
	ld l,l			;988f
	inc (hl)		;9890
	ld b,a			;9891
	ld b,(hl)		;9892
	ld c,b			;9893
	dec h			;9894
l9895h:
	ld c,00ch		;9895
	dec c			;9897
	adc a,c			;9898
	adc a,(hl)		;9899
	ld h,a			;989a
	adc a,c			;989b
	ld e,(hl)		;989c
	ld e,h			;989d
	ld l,e			;989e
	ld e,(hl)		;989f
	inc (hl)		;98a0
	ld b,a			;98a1
	ld b,(hl)		;98a2
	ld c,b			;98a3
	dec h			;98a4
	ld c,00ch		;98a5
	dec c			;98a7
	ld h,l			;98a8
	ld h,a			;98a9
	adc a,(hl)		;98aa
	adc a,c			;98ab
	ld l,e			;98ac
	ld l,h			;98ad
	ld e,(hl)		;98ae
	ld e,(hl)		;98af
	ld (02722h),hl		;98b0
	ld (04349h),hl		;98b3
	jr nc,l98d5h		;98b6
	ld h,l			;98b8
	ld h,a			;98b9
	adc a,(hl)		;98ba
	ret			;98bb
	ld l,e			;98bc
	ld l,h			;98bd
	ld e,(hl)		;98be
	ld l,l			;98bf
	ld e,a			;98c0
	ld e,l			;98c1
	ld l,h			;98c2
	ld l,l			;98c3
	ld e,a			;98c4
	ld e,h			;98c5
	ld l,e			;98c6
	ld l,l			;98c7
	adc a,e			;98c8
	xor e			;98c9
	ld l,h			;98ca
	ld l,l			;98cb
	sbc a,e			;98cc
	add a,0c5h		;98cd
	ld l,l			;98cf
	ld h,b			;98d0
	ld e,l			;98d1
	ld l,h			;98d2
	ld e,(hl)		;98d3
	ld h,b			;98d4
l98d5h:
	ld e,h			;98d5
	push bc			;98d6
	ld e,a			;98d7
	ld h,b			;98d8
	ld e,l			;98d9
	ld l,h			;98da
	ld e,(hl)		;98db
	ld h,b			;98dc
	ld e,h			;98dd
	push bc			;98de
	ld e,a			;98df
	ld e,a			;98e0
	ld e,h			;98e1
	ld e,(hl)		;98e2
	ld e,a			;98e3
	ld a,l			;98e4
	sub c			;98e5
	sbc a,d			;98e6
	ld l,b			;98e7
	cp a			;98e8
	xor l			;98e9
	ld (hl),c		;98ea
	ld a,e			;98eb
	ld e,(hl)		;98ec
	ld e,h			;98ed
	ld e,(hl)		;98ee
	ld e,a			;98ef
	ld e,a			;98f0
	ld e,l			;98f1
	ld l,h			;98f2
	ld l,l			;98f3
	ld e,(hl)		;98f4
	ld e,h			;98f5
	push bc			;98f6
	ld l,l			;98f7
	ld e,a			;98f8
	ld e,l			;98f9
	ld l,h			;98fa
	ld l,l			;98fb
	ld e,(hl)		;98fc
	ld e,h			;98fd
	push bc			;98fe
	ld l,l			;98ff
	ld e,a			;9900
	ld e,l			;9901
	ld l,h			;9902
	ld e,(hl)		;9903
	ld e,(hl)		;9904
	ld e,h			;9905
	push bc			;9906
	ld e,a			;9907
	ld e,a			;9908
	ld e,l			;9909
	ld l,h			;990a
	ld e,(hl)		;990b
	ld e,(hl)		;990c
	ld e,h			;990d
	push bc			;990e
	ld e,a			;990f
	ld e,a			;9910
	ld e,l			;9911
	ld l,h			;9912
	ld e,(hl)		;9913
	ld e,a			;9914
	ld e,h			;9915
	push bc			;9916
	ld e,a			;9917
	ld e,a			;9918
	adc a,e			;9919
	xor e			;991a
	ld e,(hl)		;991b
	ld e,a			;991c
	sbc a,e			;991d
	add a,05fh		;991e
	ld h,b			;9920
	ld e,l			;9921
	ld l,e			;9922
	ld e,a			;9923
	ld h,b			;9924
	ld e,h			;9925
	ld l,h			;9926
	ld e,(hl)		;9927
	ld h,b			;9928
	ld e,l			;9929
	ld l,h			;992a
	ld e,(hl)		;992b
	res 1,a			;992c
	ld h,(hl)		;992e
	adc a,d			;992f
	ld e,a			;9930
	ld e,h			;9931
	ld l,e			;9932
	ld e,a			;9933
	ld e,(hl)		;9934
	ld e,l			;9935
	ld l,h			;9936
	ld e,(hl)		;9937
	ld e,a			;9938
	ld e,h			;9939
	ld l,h			;993a
	ld l,l			;993b
	adc a,d			;993c
	adc a,a			;993d
	ld h,(hl)		;993e
	jp z,05d5fh		;993f
	ld l,h			;9942
	ld e,(hl)		;9943
	ld e,(hl)		;9944
	ld e,h			;9945
	push bc			;9946
	ld e,a			;9947
	ld e,a			;9948
	ld e,l			;9949
	ld l,h			;994a
	ld l,l			;994b
	ld e,(hl)		;994c
	ld e,h			;994d
	push bc			;994e
	ld l,l			;994f
	ld e,a			;9950
	ld e,h			;9951
	ld l,l			;9952
	ld bc,05d5fh		;9953
	ld l,l			;9956
	jr nz,l99b8h		;9957
	ld e,h			;9959
	ld l,l			;995a
	ld hl,l8a8fh		;995b
	jp z,l8923h		;995e
	adc a,(hl)		;9961
	ld h,a			;9962
	adc a,c			;9963
	ld e,(hl)		;9964
	ld e,h			;9965
	ld l,h			;9966
	ld e,(hl)		;9967
	ld e,(hl)		;9968
	ld e,h			;9969
	ld l,h			;996a
l996bh:
	ld e,(hl)		;996b
	adc a,d			;996c
	adc a,a			;996d
	ld h,(hl)		;996e
	adc a,d			;996f
	ld h,a			;9970
	ld h,l			;9971
	adc a,c			;9972
	adc a,c			;9973
	ld l,e			;9974
	ld l,h			;9975
	ld e,(hl)		;9976
	ld e,(hl)		;9977
	push bc			;9978
	ld l,h			;9979
	ld e,(hl)		;997a
	ld e,(hl)		;997b
	ld h,(hl)		;997c
	ld h,(hl)		;997d
	adc a,d			;997e
	adc a,d			;997f
	adc a,c			;9980
	adc a,(hl)		;9981
	ld h,a			;9982
	ret			;9983
	ld e,(hl)		;9984
	ld e,h			;9985
	ld l,e			;9986
	ld l,l			;9987
	ld e,(hl)		;9988
	ld e,h			;9989
	ld l,e			;998a
	ld l,l			;998b
	adc a,d			;998c
	adc a,a			;998d
	ld h,(hl)		;998e
	jp z,l8e64h		;998f
	ld h,a			;9992
	adc a,c			;9993
	ld h,b			;9994
	ld e,h			;9995
	ld l,h			;9996
	ld e,(hl)		;9997
	ld h,b			;9998
	ld e,h			;9999
	ld l,h			;999a
	ld e,(hl)		;999b
	res 1,a			;999c
	ld h,(hl)		;999e
	adc a,d			;999f
	ld h,b			;99a0
	ld e,l			;99a1
	ld l,e			;99a2
	ld l,l			;99a3
	ld h,b			;99a4
	ld e,h			;99a5
	push bc			;99a6
	ld l,l			;99a7
	ld h,b			;99a8
	ld e,l			;99a9
	ld l,e			;99aa
	ld l,l			;99ab
	ld h,b			;99ac
	ld e,h			;99ad
	push bc			;99ae
	ld l,l			;99af
	ld e,a			;99b0
	ld e,h			;99b1
	ld l,h			;99b2
	ld l,l			;99b3
	sub c			;99b4
	sbc a,d			;99b5
	ld l,b			;99b6
	ld l,l			;99b7
l99b8h:
	xor l			;99b8
	ld (hl),c		;99b9
	ld a,e			;99ba
	ld l,l			;99bb
	ld e,a			;99bc
	ld e,h			;99bd
	push bc			;99be
	ld l,l			;99bf
	ld h,b			;99c0
	ld e,h			;99c1
	ld l,e			;99c2
	ld l,l			;99c3
	res 1,a			;99c4
	ld h,(hl)		;99c6
	jp z,03a3ah		;99c7
	jr nc,l9a06h		;99ca
	inc l			;99cc
	inc l			;99cd
	ld sp,0602ch		;99ce
	ld e,h			;99d1
	ld l,e			;99d2
	ld l,l			;99d3
	res 1,a			;99d4
	ld h,(hl)		;99d6
	jp z,02f24h		;99d7
	ld hl,04026h		;99da
	ld l,023h		;99dd
	ld c,d			;99df
	ld h,b			;99e0
	ld e,h			;99e1
	ld l,h			;99e2
	ld e,(hl)		;99e3
	res 1,a			;99e4
	ld h,(hl)		;99e6
	adc a,d			;99e7
	inc (hl)		;99e8
	ld b,a			;99e9
	ld b,(hl)		;99ea
	ld c,b			;99eb
	dec h			;99ec
	ld c,00ch		;99ed
	dec c			;99ef
	ld h,b			;99f0
	ld e,h			;99f1
	ld l,h			;99f2
	ld e,(hl)		;99f3
	res 1,a			;99f4
	ld h,(hl)		;99f6
	adc a,d			;99f7
	dec b			;99f8
	ld (bc),a		;99f9
	rlca			;99fa
	jr nz,l9a1bh		;99fb
	ld bc,0011eh		;99fd
	ld e,(hl)		;9a00
	ld e,h			;9a01
	ld l,e			;9a02
	ld l,l			;9a03
	adc a,d			;9a04
	adc a,a			;9a05
l9a06h:
	ld h,(hl)		;9a06
	jp z,00205h		;9a07
	rlca			;9a0a
	jr nz,$+32		;9a0b
	ld bc,0011eh		;9a0d
	ld e,(hl)		;9a10
	ld e,h			;9a11
	ld l,h			;9a12
	ld e,(hl)		;9a13
	adc a,d			;9a14
	adc a,a			;9a15
	ld h,(hl)		;9a16
	adc a,d			;9a17
	dec b			;9a18
	ld (bc),a		;9a19
	rlca			;9a1a
l9a1bh:
	jr nz,l9a3bh		;9a1b
	ld bc,0011eh		;9a1d
	ld e,(hl)		;9a20
	ld e,h			;9a21
	ld l,e			;9a22
	ld l,l			;9a23
	adc a,d			;9a24
	adc a,a			;9a25
	ld h,(hl)		;9a26
	jp z,0011eh		;9a27
	ld e,001h		;9a2a
	dec b			;9a2c
	ld (bc),a		;9a2d
	rlca			;9a2e
	jr nz,l9a8fh		;9a2f
	ld e,h			;9a31
	ld l,h			;9a32
	ld e,(hl)		;9a33
	adc a,d			;9a34
	adc a,a			;9a35
	ld h,(hl)		;9a36
	adc a,d			;9a37
	inc (hl)		;9a38
	ld b,a			;9a39
	ld b,(hl)		;9a3a
l9a3bh:
	ld c,b			;9a3b
	dec h			;9a3c
	ld c,00ch		;9a3d
	dec c			;9a3f
	ld e,(hl)		;9a40
	ld e,h			;9a41
	ld l,h			;9a42
	ld e,(hl)		;9a43
	adc a,d			;9a44
	adc a,a			;9a45
	ld h,(hl)		;9a46
	adc a,d			;9a47
	ld a,(0303ah)		;9a48
	ld a,(02c2ch)		;9a4b
	ld sp,05e2ch		;9a4e
	ld e,h			;9a51
	ld l,h			;9a52
	ld e,(hl)		;9a53
	adc a,d			;9a54
	adc a,a			;9a55
	ld h,(hl)		;9a56
	adc a,d			;9a57
	dec hl			;9a58
	ld a,(03b3ah)		;9a59
	inc a			;9a5c
	inc l			;9a5d
	inc l			;9a5e
	inc a			;9a5f
	ld e,(hl)		;9a60
	ld e,h			;9a61
	ld l,h			;9a62
	ld e,(hl)		;9a63
	adc a,d			;9a64
	adc a,a			;9a65
	ld h,(hl)		;9a66
	adc a,d			;9a67
	add hl,sp		;9a68
	ld b,h			;9a69
	dec sp			;9a6a
	ld a,(00606h)		;9a6b
	inc a			;9a6e
	inc l			;9a6f
	ld e,(hl)		;9a70
	ld e,h			;9a71
	ld l,h			;9a72
	ld e,(hl)		;9a73
	adc a,d			;9a74
	adc a,a			;9a75
	ld h,(hl)		;9a76
	adc a,d			;9a77
	ld e,(hl)		;9a78
	ld e,l			;9a79
	ld l,e			;9a7a
	ld l,l			;9a7b
	ld e,a			;9a7c
	ld e,h			;9a7d
	push bc			;9a7e
	ld l,l			;9a7f
	ld e,(hl)		;9a80
	ld e,h			;9a81
	ld l,h			;9a82
	ld e,(hl)		;9a83
	adc a,d			;9a84
	adc a,a			;9a85
	ld h,(hl)		;9a86
	adc a,d			;9a87
	ld e,a			;9a88
	ld e,l			;9a89
	ld l,e			;9a8a
	ld e,a			;9a8b
	ld e,(hl)		;9a8c
	ld e,h			;9a8d
	ld l,h			;9a8e
l9a8fh:
	ld e,(hl)		;9a8f
	ld e,a			;9a90
	ld e,h			;9a91
	ld e,l			;9a92
	ld e,(hl)		;9a93
	ld l,l			;9a94
	adc a,d			;9a95
	adc a,a			;9a96
	adc a,d			;9a97
	ld l,l			;9a98
	pop bc			;9a99
	ld a,(hl)		;9a9a
	ld h,e			;9a9b
	jp z,0b2bah		;9a9c
	cp l			;9a9f
	ld e,(hl)		;9aa0
	ld e,h			;9aa1
	ld e,a			;9aa2
	ld e,h			;9aa3
	adc a,a			;9aa4
	adc a,d			;9aa5
	adc a,a			;9aa6
	adc a,d			;9aa7
	ld a,a			;9aa8
	ld a,(hl)		;9aa9
	ld h,e			;9aaa
	ld a,(hl)		;9aab
	jp nz,0ba96h		;9aac
	or d			;9aaf
	ld e,(hl)		;9ab0
	ld e,l			;9ab1
	ld e,a			;9ab2
	ld e,h			;9ab3
	adc a,a			;9ab4
	adc a,d			;9ab5
	adc a,a			;9ab6
	ld h,b			;9ab7
	ld a,a			;9ab8
	ld h,e			;9ab9
	pop bc			;9aba
	ld h,b			;9abb
	or c			;9abc
	or d			;9abd
	cp l			;9abe
	bit 3,(hl)		;9abf
	ld e,h			;9ac1
	ld l,h			;9ac2
	ld e,(hl)		;9ac3
	adc a,d			;9ac4
	adc a,a			;9ac5
	ld h,(hl)		;9ac6
	adc a,d			;9ac7
	ld e,001h		;9ac8
	ld e,001h		;9aca
	dec b			;9acc
	ld (bc),a		;9acd
	rlca			;9ace
	jr nz,l9b31h		;9acf
	ld e,h			;9ad1
	ld l,e			;9ad2
	ld l,l			;9ad3
	ld h,b			;9ad4
	ld e,l			;9ad5
	ld l,h			;9ad6
	ld l,l			;9ad7
	ld h,b			;9ad8
	ld e,h			;9ad9
	ld l,h			;9ada
	ld l,l			;9adb
	res 1,a			;9adc
	ld h,(hl)		;9ade
	jp z,05c60h		;9adf
	ld l,e			;9ae2
	ld e,a			;9ae3
	ld h,b			;9ae4
	ld e,l			;9ae5
	ld l,h			;9ae6
	ld e,(hl)		;9ae7
	ld h,b			;9ae8
	ld e,h			;9ae9
	ld l,h			;9aea
	ld e,(hl)		;9aeb
	res 1,a			;9aec
	ld h,(hl)		;9aee
	adc a,d			;9aef
	ld e,h			;9af0
	ld l,e			;9af1
	ld l,d			;9af2
	ld e,h			;9af3
	ld e,l			;9af4
	ld l,h			;9af5
	ld l,c			;9af6
	ld e,l			;9af7
	ld e,h			;9af8
	ld l,h			;9af9
	ld l,d			;9afa
	ld e,h			;9afb
	adc a,a			;9afc
	ld h,(hl)		;9afd
	ld h,(hl)		;9afe
	adc a,a			;9aff
	ld e,a			;9b00
	ld e,h			;9b01
	ld l,e			;9b02
	ld l,l			;9b03
	ld e,(hl)		;9b04
	ld e,l			;9b05
	ld l,h			;9b06
	ld l,l			;9b07
	ld e,a			;9b08
	ld e,h			;9b09
	ld l,h			;9b0a
	ld l,l			;9b0b
	adc a,d			;9b0c
	adc a,a			;9b0d
	ld h,(hl)		;9b0e
	jp z,05c60h		;9b0f
	ld l,e			;9b12
	ld e,a			;9b13
	ld h,b			;9b14
	ld e,l			;9b15
	ld l,h			;9b16
	ld e,(hl)		;9b17
	ld h,b			;9b18
	ld e,h			;9b19
	ld l,h			;9b1a
	ld e,(hl)		;9b1b
	res 1,a			;9b1c
	ld h,(hl)		;9b1e
	adc a,d			;9b1f
	ld e,(hl)		;9b20
	ld e,h			;9b21
	ld l,e			;9b22
	ld l,l			;9b23
	adc a,d			;9b24
	adc a,a			;9b25
	ld h,(hl)		;9b26
	jp z,04734h		;9b27
	ld b,(hl)		;9b2a
	ld c,b			;9b2b
	dec h			;9b2c
	ld c,00ch		;9b2d
	dec c			;9b2f
	ld e,(hl)		;9b30
l9b31h:
	ld e,h			;9b31
	ld e,(hl)		;9b32
	ld e,a			;9b33
	ld a,l			;9b34
	sub c			;9b35
	sbc a,d			;9b36
	ld l,b			;9b37
	cp a			;9b38
	xor l			;9b39
	ld (hl),c		;9b3a
	ld a,e			;9b3b
	adc a,a			;9b3c
	adc a,d			;9b3d
	adc a,a			;9b3e
	adc a,d			;9b3f
	ld e,a			;9b40
	ld e,h			;9b41
	ld l,e			;9b42
	ld e,h			;9b43
	ld e,(hl)		;9b44
	ld e,l			;9b45
	ld l,h			;9b46
	ld e,(hl)		;9b47
	ld e,(hl)		;9b48
	ld e,h			;9b49
	ld l,c			;9b4a
	ld e,h			;9b4b
	adc a,d			;9b4c
	adc a,a			;9b4d
	ld h,(hl)		;9b4e
	adc a,a			;9b4f
	pop bc			;9b50
	ld a,(hl)		;9b51
	ld h,e			;9b52
	pop bc			;9b53
	cp d			;9b54
	or d			;9b55
	cp l			;9b56
	or c			;9b57
	inc (hl)		;9b58
	ld b,a			;9b59
	ld b,(hl)		;9b5a
	ld c,b			;9b5b
	dec h			;9b5c
	ld c,00ch		;9b5d
	dec c			;9b5f
	pop bc			;9b60
	ld a,(hl)		;9b61
	ld h,e			;9b62
	ld a,a			;9b63
	cp d			;9b64
	or d			;9b65
	cp l			;9b66
	or c			;9b67
	ld e,001h		;9b68
	ld e,001h		;9b6a
	dec b			;9b6c
	ld (bc),a		;9b6d
	rlca			;9b6e
	jr nz,l9befh		;9b6f
	ld a,a			;9b71
	ld h,e			;9b72
	pop bc			;9b73
	or d			;9b74
	or c			;9b75
	cp l			;9b76
	or d			;9b77
	inc (hl)		;9b78
	ld b,a			;9b79
	ld b,(hl)		;9b7a
	ld c,b			;9b7b
	dec h			;9b7c
	ld c,00ch		;9b7d
	dec c			;9b7f
	ld a,(hl)		;9b80
	ld a,a			;9b81
	ld h,e			;9b82
	pop bc			;9b83
	or d			;9b84
	or c			;9b85
	cp l			;9b86
	or d			;9b87
	ld e,001h		;9b88
	ld e,001h		;9b8a
	dec b			;9b8c
	ld (bc),a		;9b8d
	rlca			;9b8e
	jr nz,$+128		;9b8f
	ld a,a			;9b91
	ld h,e			;9b92
	pop bc			;9b93
	or d			;9b94
	or c			;9b95
	cp l			;9b96
	or d			;9b97
	dec hl			;9b98
	ld a,(03b3ah)		;9b99
	inc a			;9b9c
	inc l			;9b9d
	inc l			;9b9e
	inc a			;9b9f
	ld a,(hl)		;9ba0
	ld a,(hl)		;9ba1
	ld h,e			;9ba2
	ld a,(hl)		;9ba3
	or d			;9ba4
	or c			;9ba5
	cp l			;9ba6
	or d			;9ba7
	ld e,001h		;9ba8
	ld e,001h		;9baa
	dec b			;9bac
	ld (bc),a		;9bad
	rlca			;9bae
	jr nz,l9c2fh		;9baf
	ld a,(hl)		;9bb1
	ld h,e			;9bb2
	ld a,(hl)		;9bb3
	or d			;9bb4
	jp nz,0ba96h		;9bb5
	ld e,001h		;9bb8
	ld e,001h		;9bba
	dec b			;9bbc
	ld (bc),a		;9bbd
	rlca			;9bbe
	jr nz,l9c21h		;9bbf
	ld e,l			;9bc1
	ld l,h			;9bc2
	ld e,(hl)		;9bc3
	ld h,b			;9bc4
	ld e,h			;9bc5
	ld l,c			;9bc6
	ld e,h			;9bc7
	ld h,b			;9bc8
	ld e,l			;9bc9
	adc a,e			;9bca
	xor e			;9bcb
	ld h,b			;9bcc
	ld e,h			;9bcd
	sbc a,e			;9bce
	add a,0b2h		;9bcf
	or c			;9bd1
	or c			;9bd2
	cp l			;9bd3
	ld a,a			;9bd4
	ld h,e			;9bd5
	pop bc			;9bd6
	ld a,(hl)		;9bd7
	and e			;9bd8
	xor c			;9bd9
	and e			;9bda
	and e			;9bdb
	ld a,(hl)		;9bdc
	ld h,e			;9bdd
	ld a,(hl)		;9bde
	ld a,(hl)		;9bdf
	or d			;9be0
	or d			;9be1
	ld (hl),l		;9be2
	ld a,b			;9be3
	ld h,e			;9be4
	pop bc			;9be5
	halt			;9be6
	ld a,c			;9be7
	xor c			;9be8
	and e			;9be9
	call 06361h		;9bea
	ld a,(hl)		;9bed
	ld a,(hl)		;9bee
l9befh:
	ld a,a			;9bef
	ld a,b			;9bf0
	add a,d			;9bf1
	add a,(hl)		;9bf2
	add a,h			;9bf3
	ld h,c			;9bf4
	sub b			;9bf5
	inc d			;9bf6
	dec d			;9bf7
	ld h,d			;9bf8
	dec de			;9bf9
	rlca			;9bfa
	jr nz,l9c18h		;9bfb
	ld bc,0011eh		;9bfd
	add a,(hl)		;9c00
	add a,h			;9c01
	add a,(hl)		;9c02
	add a,h			;9c03
	ld e,001h		;9c04
	ld e,001h		;9c06
	dec b			;9c08
	ld (bc),a		;9c09
	rlca			;9c0a
	jr nz,l9c2bh		;9c0b
	ld bc,0011eh		;9c0d
	add a,(hl)		;9c10
	add a,h			;9c11
	dec de			;9c12
	ld c,b			;9c13
	jr l9c2bh		;9c14
	inc c			;9c16
	dec c			;9c17
l9c18h:
	inc (hl)		;9c18
	ld b,a			;9c19
	ld b,(hl)		;9c1a
	ld c,b			;9c1b
	dec h			;9c1c
	ld c,00ch		;9c1d
	dec c			;9c1f
	rrca			;9c20
l9c21h:
	dec l			;9c21
	djnz l9c35h		;9c22
	ld e,001h		;9c24
	ld e,019h		;9c26
	dec b			;9c28
	ld (bc),a		;9c29
	add hl,de		;9c2a
l9c2bh:
	add a,a			;9c2b
	ld e,019h		;9c2c
	add a,a			;9c2e
l9c2fh:
	adc a,b			;9c2f
	ld a,h			;9c30
	ld a,h			;9c31
	cp d			;9c32
	or d			;9c33
	xor c			;9c34
l9c35h:
	pop bc			;9c35
	ld a,(hl)		;9c36
	ld h,e			;9c37
	adc a,b			;9c38
	ld l,l			;9c39
	cp d			;9c3a
	or d			;9c3b
	ld a,c			;9c3c
	ld l,l			;9c3d
	cp d			;9c3e
	or d			;9c3f
	pop bc			;9c40
	ld a,a			;9c41
	ld h,e			;9c42
	ld a,(hl)		;9c43
	ld (hl),l		;9c44
	ld a,b			;9c45
	ld a,b			;9c46
	add a,d			;9c47
	halt			;9c48
	ld a,c			;9c49
	ld h,c			;9c4a
	sub b			;9c4b
	call 06261h		;9c4c
	dec de			;9c4f
	ld a,a			;9c50
	ld h,e			;9c51
	pop bc			;9c52
	ld a,(hl)		;9c53
	add a,(hl)		;9c54
	ld a,h			;9c55
	ld a,h			;9c56
	ld a,h			;9c57
	inc d			;9c58
	dec d			;9c59
	rlca			;9c5a
	jr nz,l9c7bh		;9c5b
	ld bc,0011eh		;9c5d
	ld h,e			;9c60
	ld a,(hl)		;9c61
	pop bc			;9c62
	ld c,(hl)		;9c63
	ld a,h			;9c64
	ld a,h			;9c65
	ld a,h			;9c66
	ld c,a			;9c67
	inc (hl)		;9c68
	ld b,a			;9c69
	ld b,(hl)		;9c6a
	ld c,b			;9c6b
	dec h			;9c6c
	ld c,00ch		;9c6d
	dec c			;9c6f
	ld d,c			;9c70
	ld a,h			;9c71
	adc a,b			;9c72
	ld a,c			;9c73
	ld d,b			;9c74
	ld a,h			;9c75
	ld (hl),a		;9c76
	ld a,d			;9c77
	dec b			;9c78
	ld h,h			;9c79
	cp d			;9c7a
l9c7bh:
	or d			;9c7b
	ld e,060h		;9c7c
	pop bc			;9c7e
	ld a,(hl)		;9c7f
	ld a,c			;9c80
	ld l,l			;9c81
	pop bc			;9c82
	ld h,e			;9c83
	add a,e			;9c84
	add a,l			;9c85
	cp d			;9c86
	or c			;9c87
	cp l			;9c88
	or d			;9c89
	or c			;9c8a
	or d			;9c8b
	ld h,e			;9c8c
	ld a,(hl)		;9c8d
	ld a,a			;9c8e
	ld h,e			;9c8f
	ld a,(hl)		;9c90
	ld a,a			;9c91
	inc e			;9c92
	add hl,hl		;9c93
	ld a,h			;9c94
	ccf			;9c95
	dec e			;9c96
	ld hl,(03a2bh)		;9c97
	ld a,(03c3bh)		;9c9a
	inc l			;9c9d
	inc l			;9c9e
	inc a			;9c9f
	ld (02722h),hl		;9ca0
	ld (01d1dh),hl		;9ca3
	jr nc,l9cc5h		;9ca6
	ld b,l			;9ca8
	ld a,h			;9ca9
	ld a,h			;9caa
	ld c,l			;9cab
	ld c,h			;9cac
	ld h,e			;9cad
	ld a,(hl)		;9cae
	ld c,e			;9caf
	ld (0a360h),hl		;9cb0
	and e			;9cb3
	dec e			;9cb4
	ld h,b			;9cb5
	pop bc			;9cb6
	ld a,(hl)		;9cb7
	ld b,l			;9cb8
	ld a,h			;9cb9
	ld a,h			;9cba
	ld a,h			;9cbb
	ld c,h			;9cbc
	pop bc			;9cbd
	ld a,(hl)		;9cbe
	ld a,a			;9cbf
	xor c			;9cc0
	and e			;9cc1
	and e			;9cc2
	xor c			;9cc3
	ld h,e			;9cc4
l9cc5h:
	ld a,(hl)		;9cc5
	pop bc			;9cc6
	ld h,e			;9cc7
	xor d			;9cc8
	sub l			;9cc9
	ld a,h			;9cca
	ld a,h			;9ccb
	ld h,e			;9ccc
	ld a,(hl)		;9ccd
	ld a,a			;9cce
	ld h,e			;9ccf
	rrca			;9cd0
	dec l			;9cd1
	djnz $+19		;9cd2
	ld e,001h		;9cd4
	ld e,001h		;9cd6
	dec b			;9cd8
	ld (bc),a		;9cd9
	rlca			;9cda
	jr nz,l9cfbh		;9cdb
	ld bc,l831eh		;9cdd
	rrca			;9ce0
	dec l			;9ce1
	djnz l9cfdh		;9ce2
	ld e,001h		;9ce4
	add hl,de		;9ce6
	add a,a			;9ce7
	ld d,017h		;9ce8
	ld l,a			;9cea
	adc a,b			;9ceb
	add a,l			;9cec
	add a,e			;9ced
	add a,l			;9cee
	ld (hl),a		;9cef
	xor c			;9cf0
	pop bc			;9cf1
	pop bc			;9cf2
	xor c			;9cf3
	adc a,b			;9cf4
	and e			;9cf5
	and e			;9cf6
	ld (hl),b		;9cf7
	ld a,c			;9cf8
	adc a,e			;9cf9
	xor e			;9cfa
l9cfbh:
	ld a,c			;9cfb
	ld a,d			;9cfc
l9cfdh:
	sbc a,e			;9cfd
	add a,07ah		;9cfe
	ld a,(de)		;9d00
	dec l			;9d01
	djnz $+19		;9d02
	ld l,a			;9d04
	ld a,(de)		;9d05
	ld e,001h		;9d06
	ld (hl),b		;9d08
	add a,a			;9d09
	ld (de),a		;9d0a
	inc de			;9d0b
	ld a,d			;9d0c
	add a,c			;9d0d
	add a,l			;9d0e
	add a,e			;9d0f
	rrca			;9d10
	dec l			;9d11
	djnz l9d25h		;9d12
	ld e,001h		;9d14
	ld e,001h		;9d16
	dec b			;9d18
	ld (bc),a		;9d19
	rlca			;9d1a
	jr nz,$-121		;9d1b
	add a,e			;9d1d
	add a,l			;9d1e
	add a,e			;9d1f
	inc (hl)		;9d20
	ld b,a			;9d21
	ld b,(hl)		;9d22
	add hl,de		;9d23
	dec h			;9d24
l9d25h:
	ld c,019h		;9d25
	add a,a			;9d27
	ld d,017h		;9d28
	ld l,a			;9d2a
	adc a,b			;9d2b
	add a,l			;9d2c
	add a,e			;9d2d
	add a,l			;9d2e
	ld (hl),a		;9d2f
	xor c			;9d30
	pop bc			;9d31
	ld a,a			;9d32
	ld h,e			;9d33
	adc a,b			;9d34
	and e			;9d35
	and e			;9d36
	pop bc			;9d37
	ld a,c			;9d38
	adc a,e			;9d39
	xor e			;9d3a
	cp d			;9d3b
	ld a,d			;9d3c
	sbc a,e			;9d3d
	add a,0bah		;9d3e
	ld (02227h),hl		;9d40
	ld (0301dh),hl		;9d43
	dec e			;9d46
	dec e			;9d47
	ld a,(03a30h)		;9d48
	ld a,(0312ch)		;9d4b
	inc l			;9d4e
	inc l			;9d4f
	ld (02722h),hl		;9d50
	ld (01d1dh),hl		;9d53
	jr nc,l9d75h		;9d56
	adc a,c			;9d58
	adc a,(hl)		;9d59
	ld h,a			;9d5a
	ret			;9d5b
	ld e,(hl)		;9d5c
	ld e,h			;9d5d
	ld l,e			;9d5e
	ld l,l			;9d5f
	adc a,c			;9d60
	adc a,(hl)		;9d61
	adc a,c			;9d62
	adc a,(hl)		;9d63
	ld e,(hl)		;9d64
	ld e,h			;9d65
	ld e,(hl)		;9d66
	ld e,h			;9d67
	ld e,a			;9d68
	ld e,l			;9d69
	ld e,a			;9d6a
	ld e,l			;9d6b
	ld e,a			;9d6c
	ld e,h			;9d6d
	ld e,a			;9d6e
	ld e,h			;9d6f
	ld h,b			;9d70
	ld e,l			;9d71
	ld l,h			;9d72
	ld e,(hl)		;9d73
	ld a,l			;9d74
l9d75h:
	sub c			;9d75
	sbc a,d			;9d76
	ld l,b			;9d77
	cp a			;9d78
	xor l			;9d79
	ld (hl),c		;9d7a
	ld a,e			;9d7b
	ld h,b			;9d7c
	ld e,h			;9d7d
	push bc			;9d7e
	ld e,a			;9d7f
	cp d			;9d80
	or c			;9d81
	or c			;9d82
	cp l			;9d83
	pop bc			;9d84
	ld h,e			;9d85
	ld a,a			;9d86
	ld a,(hl)		;9d87
	and e			;9d88
	xor c			;9d89
	and e			;9d8a
	and e			;9d8b
	pop bc			;9d8c
	ld h,e			;9d8d
	ld a,(hl)		;9d8e
	ld a,(hl)		;9d8f
	add hl,hl		;9d90
	ld (l8e64h),hl		;9d91
	ld hl,(0601dh)		;9d94
	ld e,h			;9d97
	dec hl			;9d98
	ld a,(05d60h)		;9d99
	inc a			;9d9c
	inc l			;9d9d
	ld h,b			;9d9e
	ld e,h			;9d9f
	ld hl,06021h		;9da0
	ld e,h			;9da3
	ld hl,0cb21h		;9da4
	adc a,a			;9da7
	dec b			;9da8
	ld (bc),a		;9da9
	rlca			;9daa
	jr nz,l9dcbh		;9dab
	ld bc,0011eh		;9dad
	cp b			;9db0
	cp c			;9db1
	add hl,bc		;9db2
	inc c			;9db3
	cp b			;9db4
	cp c			;9db5
	ex af,af'		;9db6
	dec bc			;9db7
	cp h			;9db8
	cp l			;9db9
	cp (hl)			;9dba
	cp (hl)			;9dbb
	cp d			;9dbc
	cp e			;9dbd
	push bc			;9dbe
	push bc			;9dbf
	add hl,bc		;9dc0
	inc c			;9dc1
	add hl,bc		;9dc2
	inc c			;9dc3
	ex af,af'		;9dc4
	dec bc			;9dc5
	ex af,af'		;9dc6
	dec bc			;9dc7
	cp (hl)			;9dc8
	cp (hl)			;9dc9
	cp (hl)			;9dca
l9dcbh:
	cp (hl)			;9dcb
	push bc			;9dcc
	push bc			;9dcd
	push bc			;9dce
	push bc			;9dcf
	add hl,bc		;9dd0
	inc c			;9dd1
	cp b			;9dd2
	cp c			;9dd3
	ex af,af'		;9dd4
	dec bc			;9dd5
	cp b			;9dd6
	cp c			;9dd7
	cp (hl)			;9dd8
	cp (hl)			;9dd9
	cp h			;9dda
	cp l			;9ddb
	push bc			;9ddc
	push bc			;9ddd
	cp d			;9dde
	cp e			;9ddf
	ld (bc),a		;9de0
	dec b			;9de1
	ld (bc),a		;9de2
	dec b			;9de3
	inc bc			;9de4
	ld b,003h		;9de5
	ld b,001h		;9de7
	inc b			;9de9
	ld bc,00e04h		;9dea
	dec c			;9ded
	ld c,00dh		;9dee
	ld (bc),a		;9df0
	add hl,de		;9df1
	ld a,(de)		;9df2
	add hl,de		;9df3
	inc bc			;9df4
	dec e			;9df5
	dec de			;9df6
	dec e			;9df7
	ld bc,01a19h		;9df8
	add hl,de		;9dfb
	ld c,01dh		;9dfc
	dec de			;9dfe
	dec e			;9dff
	ld (bc),a		;9e00
	dec b			;9e01
	ld (bc),a		;9e02
	dec b			;9e03
	inc bc			;9e04
	ld b,003h		;9e05
	ld b,001h		;9e07
	add hl,de		;9e09
	ld a,(de)		;9e0a
	add hl,de		;9e0b
	ld c,01dh		;9e0c
	dec de			;9e0e
	dec e			;9e0f
	rrca			;9e10
	rrca			;9e11
	rrca			;9e12
	rrca			;9e13
	djnz $+18		;9e14
	djnz $+18		;9e16
	dec h			;9e18
	inc h			;9e19
	dec h			;9e1a
	dec h			;9e1b
	dec h			;9e1c
	inc h			;9e1d
	dec h			;9e1e
	dec h			;9e1f
	inc h			;9e20
	rrca			;9e21
	inc h			;9e22
	rrca			;9e23
	inc e			;9e24
	djnz l9e43h		;9e25
	djnz l9e47h		;9e27
	rra			;9e29
	ld e,025h		;9e2a
	inc e			;9e2c
	jr nz,l9e4bh		;9e2d
	dec h			;9e2f
	rrca			;9e30
	inc hl			;9e31
	rrca			;9e32
	inc hl			;9e33
	djnz $+35		;9e34
	djnz l9e59h		;9e36
	dec h			;9e38
	dec e			;9e39
	dec h			;9e3a
	dec e			;9e3b
	dec h			;9e3c
	ld hl,02125h		;9e3d
	cp (hl)			;9e40
	cp (hl)			;9e41
	cp (hl)			;9e42
l9e43h:
	cp (hl)			;9e43
	push bc			;9e44
	push bc			;9e45
	push bc			;9e46
l9e47h:
	push bc			;9e47
	dec h			;9e48
	dec e			;9e49
	dec h			;9e4a
l9e4bh:
	dec e			;9e4b
	dec h			;9e4c
	ld hl,02125h		;9e4d
	rrca			;9e50
	rrca			;9e51
	rrca			;9e52
	rrca			;9e53
	djnz l9e66h		;9e54
	djnz l9e68h		;9e56
	dec h			;9e58
l9e59h:
	dec h			;9e59
	dec h			;9e5a
	dec h			;9e5b
	dec h			;9e5c
	dec h			;9e5d
	dec h			;9e5e
	dec h			;9e5f
	cp h			;9e60
	cp l			;9e61
	cp (hl)			;9e62
	cp (hl)			;9e63
	cp d			;9e64
	cp e			;9e65
l9e66h:
	push bc			;9e66
	push bc			;9e67
l9e68h:
	dec h			;9e68
	dec h			;9e69
	dec h			;9e6a
	dec h			;9e6b
	dec h			;9e6c
	dec h			;9e6d
	dec h			;9e6e
	dec h			;9e6f
	cp (hl)			;9e70
	cp (hl)			;9e71
	cp (hl)			;9e72
	cp (hl)			;9e73
	push bc			;9e74
	push bc			;9e75
	push bc			;9e76
	push bc			;9e77
	dec h			;9e78
	inc h			;9e79
	dec h			;9e7a
	dec h			;9e7b
	dec h			;9e7c
	inc h			;9e7d
	dec h			;9e7e
	dec h			;9e7f
	cp (hl)			;9e80
	cp (hl)			;9e81
	cp (hl)			;9e82
	cp (hl)			;9e83
	push bc			;9e84
	push bc			;9e85
	push bc			;9e86
	push bc			;9e87
	ld e,01ah		;9e88
	ld e,025h		;9e8a
	inc e			;9e8c
	jr nz,l9eabh		;9e8d
	dec h			;9e8f
	cp (hl)			;9e90
	cp (hl)			;9e91
	cp (hl)			;9e92
	cp (hl)			;9e93
	push bc			;9e94
	push bc			;9e95
	push bc			;9e96
	push bc			;9e97
	dec h			;9e98
	dec h			;9e99
	dec h			;9e9a
	dec h			;9e9b
	dec h			;9e9c
	dec h			;9e9d
	dec h			;9e9e
	dec h			;9e9f
	cp (hl)			;9ea0
	cp (hl)			;9ea1
	cp h			;9ea2
	cp l			;9ea3
	push bc			;9ea4
	push bc			;9ea5
	cp d			;9ea6
	cp e			;9ea7
	dec h			;9ea8
	dec h			;9ea9
	dec h			;9eaa
l9eabh:
	dec h			;9eab
	dec h			;9eac
	dec h			;9ead
	dec h			;9eae
	dec h			;9eaf
	cp h			;9eb0
	cp l			;9eb1
	cp (hl)			;9eb2
	cp (hl)			;9eb3
	cp d			;9eb4
	cp e			;9eb5
	push bc			;9eb6
	push bc			;9eb7
	cp b			;9eb8
	cp c			;9eb9
	dec h			;9eba
	dec h			;9ebb
	cp b			;9ebc
	cp c			;9ebd
	dec h			;9ebe
	dec h			;9ebf
	cp h			;9ec0
	cp l			;9ec1
	rrca			;9ec2
	rrca			;9ec3
	cp d			;9ec4
	cp e			;9ec5
	djnz l9ed8h		;9ec6
	cp b			;9ec8
	cp c			;9ec9
	dec h			;9eca
	dec h			;9ecb
	cp b			;9ecc
	cp c			;9ecd
	dec h			;9ece
	dec h			;9ecf
	ld d,016h		;9ed0
	ld d,016h		;9ed2
	dec d			;9ed4
	dec d			;9ed5
	dec d			;9ed6
	dec d			;9ed7
l9ed8h:
	inc d			;9ed8
	inc de			;9ed9
	inc d			;9eda
	inc de			;9edb
	rlca			;9edc
	ld a,(bc)		;9edd
	rlca			;9ede
	ld a,(bc)		;9edf
	inc hl			;9ee0
	ld d,023h		;9ee1
	ld d,024h		;9ee3
	dec d			;9ee5
	inc h			;9ee6
	dec d			;9ee7
	inc d			;9ee8
	inc de			;9ee9
	inc d			;9eea
	inc de			;9eeb
	rlca			;9eec
	ld a,(bc)		;9eed
	rlca			;9eee
	ld a,(bc)		;9eef
	ld d,021h		;9ef0
	ld d,021h		;9ef2
	dec d			;9ef4
	dec e			;9ef5
	dec d			;9ef6
	dec e			;9ef7
	inc d			;9ef8
	add hl,de		;9ef9
	ld a,(de)		;9efa
	add hl,de		;9efb
	rlca			;9efc
	dec e			;9efd
	dec de			;9efe
	dec e			;9eff
	ld d,016h		;9f00
	ld d,016h		;9f02
	dec d			;9f04
	dec d			;9f05
	dec d			;9f06
	dec d			;9f07
	inc d			;9f08
	inc de			;9f09
	inc d			;9f0a
	inc de			;9f0b
	rlca			;9f0c
	ld a,(bc)		;9f0d
	rlca			;9f0e
	ld a,(bc)		;9f0f
	ld d,019h		;9f10
	ld d,019h		;9f12
	dec d			;9f14
	dec e			;9f15
	dec d			;9f16
	dec e			;9f17
	inc d			;9f18
	ld hl,02114h		;9f19
	rlca			;9f1c
	dec e			;9f1d
	rlca			;9f1e
	dec e			;9f1f
	ld d,016h		;9f20
	ld d,016h		;9f22
	dec d			;9f24
	dec d			;9f25
	dec d			;9f26
	dec d			;9f27
	inc d			;9f28
	inc de			;9f29
	cp h			;9f2a
	cp l			;9f2b
	rlca			;9f2c
	ld a,(bc)		;9f2d
	cp d			;9f2e
	cp e			;9f2f
	ld d,019h		;9f30
	ld a,(de)		;9f32
	add hl,de		;9f33
	dec d			;9f34
	dec e			;9f35
	dec de			;9f36
	dec e			;9f37
	inc d			;9f38
	ld hl,02114h		;9f39
	rlca			;9f3c
	dec e			;9f3d
	rlca			;9f3e
	dec e			;9f3f
	rrca			;9f40
	dec e			;9f41
	rrca			;9f42
	dec e			;9f43
	djnz l9f5fh		;9f44
	ld a,(de)		;9f46
	add hl,de		;9f47
	dec h			;9f48
	dec e			;9f49
	dec de			;9f4a
	dec e			;9f4b
	dec h			;9f4c
	ld hl,02125h		;9f4d
	ld d,01dh		;9f50
	ld d,01dh		;9f52
	dec d			;9f54
	ld (02215h),hl		;9f55
	inc d			;9f58
	inc de			;9f59
	inc d			;9f5a
	inc de			;9f5b
	rlca			;9f5c
	ld a,(bc)		;9f5d
	rlca			;9f5e
l9f5fh:
	ld a,(bc)		;9f5f
	ld d,016h		;9f60
	ld d,016h		;9f62
	dec d			;9f64
	dec d			;9f65
	dec d			;9f66
	dec d			;9f67
	cp (hl)			;9f68
	cp (hl)			;9f69
	cp (hl)			;9f6a
	cp (hl)			;9f6b
	push bc			;9f6c
	push bc			;9f6d
	push bc			;9f6e
	push bc			;9f6f
	inc hl			;9f70
	ld d,023h		;9f71
	ld d,024h		;9f73
	dec d			;9f75
	inc h			;9f76
	dec d			;9f77
	cp (hl)			;9f78
	cp (hl)			;9f79
	cp (hl)			;9f7a
	cp (hl)			;9f7b
	push bc			;9f7c
	push bc			;9f7d
	push bc			;9f7e
	push bc			;9f7f
	ld d,021h		;9f80
	ld d,021h		;9f82
	dec d			;9f84
	dec e			;9f85
	dec d			;9f86
	dec e			;9f87
	cp (hl)			;9f88
	cp (hl)			;9f89
	cp (hl)			;9f8a
	cp (hl)			;9f8b
	push bc			;9f8c
	push bc			;9f8d
	push bc			;9f8e
	push bc			;9f8f
	ld d,016h		;9f90
	ld d,016h		;9f92
	dec d			;9f94
	dec d			;9f95
	dec d			;9f96
	dec d			;9f97
	cp h			;9f98
	cp l			;9f99
	cp (hl)			;9f9a
	cp (hl)			;9f9b
	cp d			;9f9c
	cp e			;9f9d
	push bc			;9f9e
	push bc			;9f9f
	cp b			;9fa0
	cp c			;9fa1
	ld d,016h		;9fa2
	cp b			;9fa4
	cp c			;9fa5
	dec d			;9fa6
	dec d			;9fa7
	cp h			;9fa8
	cp l			;9fa9
	inc d			;9faa
	inc de			;9fab
	cp d			;9fac
	cp e			;9fad
	rlca			;9fae
	ld a,(bc)		;9faf
	cp b			;9fb0
	cp c			;9fb1
	ld d,016h		;9fb2
	cp b			;9fb4
	cp c			;9fb5
	dec d			;9fb6
	dec d			;9fb7
	cp h			;9fb8
	cp l			;9fb9
	cp (hl)			;9fba
	cp (hl)			;9fbb
	cp d			;9fbc
	cp e			;9fbd
	push bc			;9fbe
	push bc			;9fbf
	add hl,bc		;9fc0
	inc c			;9fc1
	add hl,bc		;9fc2
	inc c			;9fc3
	ex af,af'		;9fc4
	dec bc			;9fc5
	ex af,af'		;9fc6
	dec bc			;9fc7
	ld (de),a		;9fc8
	ld de,01112h		;9fc9
	jr l9fe5h		;9fcc
	jr $+25			;9fce
	add hl,bc		;9fd0
	ld hl,02109h		;9fd1
	ex af,af'		;9fd4
	dec e			;9fd5
	ex af,af'		;9fd6
	dec e			;9fd7
	ld (de),a		;9fd8
	add hl,de		;9fd9
	ld a,(de)		;9fda
	add hl,de		;9fdb
	jr $+35			;9fdc
	dec de			;9fde
	ld hl,0bdbch		;9fdf
	rrca			;9fe2
	rrca			;9fe3
	cp d			;9fe4
l9fe5h:
	cp e			;9fe5
	djnz l9ff8h		;9fe6
	dec h			;9fe8
	dec h			;9fe9
	dec h			;9fea
	dec h			;9feb
	dec h			;9fec
	dec h			;9fed
	dec h			;9fee
	dec h			;9fef
	cp h			;9ff0
	cp l			;9ff1
	cp (hl)			;9ff2
	cp (hl)			;9ff3
	cp d			;9ff4
	cp e			;9ff5
	push bc			;9ff6
	push bc			;9ff7
l9ff8h:
	cp b			;9ff8
	cp c			;9ff9
	ld bc,0b804h		;9ffa
	cp c			;9ffd
	ld c,00dh		;9ffe
