; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank03_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank03.bin

	org 08000h

	inc bc			;8000
	jr nc,l8018h		;8001
	ld c,l			;8003
	dec b			;8004
	inc b			;8005
	jr nc,l801dh		;8006
	ld c,l			;8008
	dec b			;8009
	ld a,(bc)		;800a
	jr nc,l8026h		;800b
	ld c,d			;800d
	dec b			;800e
	ld b,030h		;800f
	dec de			;8011
	ld c,d			;8012
	dec b			;8013
	djnz l8046h		;8014
l8016h:
	dec e			;8016
	ld c,d			;8017
l8018h:
	dec b			;8018
	ld c,030h		;8019
	jr nz,l8067h		;801b
l801dh:
	dec b			;801d
	inc bc			;801e
	jr nc,$+35		;801f
	ld c,d			;8021
	dec b			;8022
	ex af,af'		;8023
	jr nc,$+36		;8024
l8026h:
	ld c,d			;8026
	dec b			;8027
	inc bc			;8028
	jr nc,l804fh		;8029
	ld c,d			;802b
	dec b			;802c
	ld (de),a		;802d
	jr nc,l8056h		;802e
	ld c,d			;8030
	dec b			;8031
	ld (de),a		;8032
	jr nc,l805bh		;8033
	ld c,d			;8035
	dec b			;8036
	inc bc			;8037
	jr nc,l8062h		;8038
	ld c,d			;803a
	dec b			;803b
	inc bc			;803c
	jr nc,l8067h		;803d
	ld c,l			;803f
	dec b			;8040
	ld c,030h		;8041
	jr z,$+79		;8043
	dec b			;8045
l8046h:
	add hl,bc		;8046
	jr nc,$+42		;8047
	ld c,l			;8049
	dec b			;804a
	inc b			;804b
	jr nc,l807eh		;804c
	ld c,d			;804e
l804fh:
	dec b			;804f
	inc bc			;8050
	or b			;8051
	jr nc,l809eh		;8052
	dec b			;8054
	ld (de),a		;8055
l8056h:
	jr nc,l808ah		;8056
	xor d			;8058
	dec b			;8059
	ex af,af'		;805a
l805bh:
	or b			;805b
	ld (0054ah),a		;805c
	inc c			;805f
	jr nc,$+54		;8060
l8062h:
	ld c,d			;8062
	dec b			;8063
	inc bc			;8064
	jr nc,l809dh		;8065
l8067h:
	ld c,d			;8067
	dec b			;8068
	inc bc			;8069
	jr nc,l80a4h		;806a
	ld c,d			;806c
	dec b			;806d
	inc bc			;806e
	or b			;806f
	jr c,l80bch		;8070
	dec b			;8072
	ld (de),a		;8073
l8074h:
	jr nc,l80b1h		;8074
	ld c,l			;8076
	dec b			;8077
	ex af,af'		;8078
	jr nc,l80b6h		;8079
	ld c,l			;807b
	dec b			;807c
	dec c			;807d
l807eh:
	jr nc,l80c0h		;807e
	ld d,c			;8080
	adc a,(hl)		;8081
	ld b,009h		;8082
	rra			;8084
	inc bc			;8085
	ld (bc),a		;8086
	ex af,af'		;8087
	inc b			;8088
	ld b,h			;8089
l808ah:
	ld (de),a		;808a
	djnz l80bdh		;808b
	ld b,b			;808d
	ld c,d			;808e
l808fh:
	dec b			;808f
	inc bc			;8090
	jr nc,$+74		;8091
	ld c,d			;8093
	dec b			;8094
	djnz l80c7h		;8095
	ld c,b			;8097
	ld c,d			;8098
	dec b			;8099
	inc bc			;809a
	jr nc,l80e5h		;809b
l809dh:
	ld c,d			;809d
l809eh:
	dec b			;809e
	ld (de),a		;809f
	jr nc,l80f0h		;80a0
	ld c,d			;80a2
	dec b			;80a3
l80a4h:
	ld (de),a		;80a4
	jr nc,l80f7h		;80a5
l80a7h:
	ld c,l			;80a7
	dec b			;80a8
	inc b			;80a9
	jr nc,l80fch		;80aa
	ld c,l			;80ac
	dec b			;80ad
	ld a,(bc)		;80ae
	jr nc,$+87		;80af
l80b1h:
	ld c,d			;80b1
l80b2h:
	dec b			;80b2
	ld b,030h		;80b3
	ld d,(hl)		;80b5
l80b6h:
	ld c,d			;80b6
	dec b			;80b7
l80b8h:
	add hl,bc		;80b8
	jr nc,$+96		;80b9
	ld c,d			;80bb
l80bch:
	dec b			;80bc
l80bdh:
	inc bc			;80bd
	jr nc,l811eh		;80be
l80c0h:
	jp z,00905h		;80c0
l80c3h:
	jr nc,$+98		;80c3
	ld c,l			;80c5
	dec b			;80c6
l80c7h:
	ex af,af'		;80c7
	jr nc,l812ah		;80c8
l80cah:
	ld d,c			;80ca
	adc a,(hl)		;80cb
	ld b,010h		;80cc
	nop			;80ce
	inc bc			;80cf
	ld (bc),a		;80d0
	ex af,af'		;80d1
	inc b			;80d2
	ld b,h			;80d3
	ld b,010h		;80d4
	jr nc,l8148h		;80d6
	ld d,c			;80d8
	adc a,(hl)		;80d9
	ld b,00dh		;80da
	rra			;80dc
	inc bc			;80dd
	ld (bc),a		;80de
	ex af,af'		;80df
l80e0h:
	inc b			;80e0
	ld b,h			;80e1
	ld (de),a		;80e2
	djnz l8115h		;80e3
l80e5h:
	ld (hl),b		;80e5
	ld d,c			;80e6
	adc a,(hl)		;80e7
	ld b,00dh		;80e8
	rra			;80ea
	inc bc			;80eb
	ld (bc),a		;80ec
	ex af,af'		;80ed
	inc b			;80ee
	ld b,h			;80ef
l80f0h:
	ld b,00ah		;80f0
	jr nc,l8074h		;80f2
	ld e,a			;80f4
l80f5h:
	ld b,001h		;80f5
l80f7h:
	inc b			;80f7
	jr nc,$-126		;80f8
	ld c,005h		;80fa
l80fch:
	inc bc			;80fc
	jr nc,l808fh		;80fd
	ld c,005h		;80ff
	dec c			;8101
	jr nc,l80a7h		;8102
	ld (hl),e		;8104
	ld b,00ah		;8105
l8107h:
	rra			;8107
	jr nc,l80b2h		;8108
	ld (hl),e		;810a
	ld b,090h		;810b
	rra			;810d
	jr nc,l80b8h		;810e
	ld c,005h		;8110
	inc bc			;8112
	jr nc,l80c3h		;8113
l8115h:
	rla			;8115
	dec b			;8116
	inc c			;8117
	jr nc,l80cah		;8118
	ld d,c			;811a
	adc a,(hl)		;811b
	ld b,009h		;811c
l811eh:
	rra			;811e
	inc bc			;811f
	ld (bc),a		;8120
	ex af,af'		;8121
	inc b			;8122
	ld b,h			;8123
l8124h:
	ld b,009h		;8124
	jr nc,l80e0h		;8126
	ld c,005h		;8128
l812ah:
	dec c			;812a
	jr nc,l80f5h		;812b
	ld d,c			;812d
	adc a,(hl)		;812e
	ld b,006h		;812f
	rra			;8131
	inc bc			;8132
	ld (bc),a		;8133
	ex af,af'		;8134
	inc b			;8135
	ld b,h			;8136
l8137h:
	ld b,008h		;8137
	jr nc,l8107h		;8139
	ld c,l			;813b
	dec b			;813c
l813dh:
	ld b,030h		;813d
	rst 8			;813f
	ld c,l			;8140
	dec b			;8141
	ld (bc),a		;8142
	jr nc,$-47		;8143
	ld c,l			;8145
	dec b			;8146
	ld a,(bc)		;8147
l8148h:
	jr nc,l811eh		;8148
	ld (hl),e		;814a
	ld b,083h		;814b
	rra			;814d
	jr nc,l8124h		;814e
	ld (hl),e		;8150
	ld b,00ch		;8151
	rra			;8153
	jr nc,l8137h		;8154
	ld (hl),e		;8156
	ld b,08bh		;8157
	rra			;8159
	jr nc,l813dh		;815a
	ld (hl),e		;815c
	ld b,005h		;815d
	rra			;815f
	jr nc,$-28		;8160
	ld d,c			;8162
	adc a,(hl)		;8163
	ld b,006h		;8164
	rra			;8166
	inc bc			;8167
	ld (bc),a		;8168
	ex af,af'		;8169
	inc b			;816a
	ld b,h			;816b
	djnz l8182h		;816c
l816eh:
	jr nc,$-28		;816e
	ld d,c			;8170
	adc a,(hl)		;8171
	ld b,012h		;8172
	rra			;8174
	inc bc			;8175
l8176h:
	ld (bc),a		;8176
	ex af,af'		;8177
	inc b			;8178
	ld b,h			;8179
	ld b,014h		;817a
	jr nc,$-27		;817c
l817eh:
	ld (hl),e		;817e
	ld b,005h		;817f
	rra			;8181
l8182h:
	jr nc,l816eh		;8182
	rla			;8184
	dec b			;8185
	ex af,af'		;8186
	jr nc,l8176h		;8187
	ld c,005h		;8189
	inc bc			;818b
	jr nc,l817eh		;818c
	ld d,c			;818e
	adc a,(hl)		;818f
	ld b,000h		;8190
	ld a,(de)		;8192
	inc bc			;8193
	ld (bc),a		;8194
	ex af,af'		;8195
	inc b			;8196
	ld b,h			;8197
	ld de,03008h		;8198
	ret m			;819b
	ld d,c			;819c
	adc a,(hl)		;819d
	ld b,013h		;819e
	rra			;81a0
	inc bc			;81a1
	ld (bc),a		;81a2
	ex af,af'		;81a3
	inc b			;81a4
	ld b,h			;81a5
	ld de,03008h		;81a6
	ret m			;81a9
	ld d,c			;81aa
	adc a,(hl)		;81ab
	ld b,010h		;81ac
	nop			;81ae
	inc bc			;81af
	ld (bc),a		;81b0
	ex af,af'		;81b1
	inc b			;81b2
	ld b,h			;81b3
l81b4h:
	ld b,00eh		;81b4
	jr nc,l81b4h		;81b6
	ld (hl),e		;81b8
	ld b,00ah		;81b9
	rra			;81bb
	jr nc,$-2		;81bc
	ld (hl),e		;81be
	ld b,090h		;81bf
	rra			;81c1
l81c2h:
	jr nc,l81c2h		;81c2
	ld c,005h		;81c4
	inc bc			;81c6
	ld sp,01702h		;81c7
	dec b			;81ca
	dec c			;81cb
	ld sp,00e05h		;81cc
	dec b			;81cf
	dec c			;81d0
	ld sp,05110h		;81d1
	adc a,(hl)		;81d4
	ld b,000h		;81d5
	ld (de),a		;81d7
	inc bc			;81d8
	ld (bc),a		;81d9
	ex af,af'		;81da
	inc b			;81db
	ld b,h			;81dc
	inc c			;81dd
	ld a,(bc)		;81de
	ld sp,07312h		;81df
	ld b,083h		;81e2
	rra			;81e4
	ld sp,07314h		;81e5
	ld b,083h		;81e8
	rra			;81ea
	ld sp,00e16h		;81eb
	dec b			;81ee
	inc bc			;81ef
	ld sp,07318h		;81f0
	ld b,00eh		;81f3
	rra			;81f5
	ld sp,0731ah		;81f6
	ld b,00eh		;81f9
	rra			;81fb
	ld sp,04a24h		;81fc
	dec b			;81ff
	inc bc			;8200
	ld sp,04a2ch		;8201
	dec b			;8204
	ex af,af'		;8205
	ld sp,05f30h		;8206
	ld b,001h		;8209
	nop			;820b
	ld sp,04a31h		;820c
	dec b			;820f
	inc bc			;8210
	ld sp,04a35h		;8211
	dec b			;8214
	inc bc			;8215
	ld sp,05140h		;8216
	adc a,(hl)		;8219
	ld b,01ah		;821a
	rra			;821c
	inc bc			;821d
	ld (bc),a		;821e
	ex af,af'		;821f
	inc b			;8220
	ld b,h			;8221
	ld (de),a		;8222
	djnz $+51		;8223
	ld c,b			;8225
	ld d,c			;8226
	adc a,(hl)		;8227
	ld b,012h		;8228
	rra			;822a
	inc bc			;822b
	ld (bc),a		;822c
	ex af,af'		;822d
	inc b			;822e
	ld b,h			;822f
	ld (de),a		;8230
	djnz l8273h		;8231
	add hl,bc		;8233
	ld c,b			;8234
	adc a,c			;8235
	inc bc			;8236
	jr $-125		;8237
	ld (bc),a		;8239
	ld c,b			;823a
	ld b,b			;823b
	ld a,(bc)		;823c
	ld c,b			;823d
	adc a,c			;823e
	inc bc			;823f
	dec bc			;8240
	ld (bc),a		;8241
	ld (bc),a		;8242
	ld c,b			;8243
	ld d,b			;8244
	jr nz,l82a6h		;8245
	dec b			;8247
	inc bc			;8248
	ld d,b			;8249
	jr z,l82abh		;824a
	ld b,001h		;824c
	inc bc			;824e
	ld d,b			;824f
	add hl,hl		;8250
	ld a,e			;8251
	dec b			;8252
	rst 38h			;8253
	ld d,b			;8254
	ld hl,(l887ch)		;8255
	ld (bc),a		;8258
	nop			;8259
	ld (bc),a		;825a
	ld a,h			;825b
	ld d,b			;825c
	ld hl,(l887ch)		;825d
	ld (bc),a		;8260
	ld bc,07c02h		;8261
	nop			;8264
	nop			;8265
	nop			;8266
	djnz l828bh		;8267
	ld c,l			;8269
	dec b			;826a
	ex af,af'		;826b
	djnz l829ch		;826c
	ld c,a			;826e
	adc a,c			;826f
	inc bc			;8270
	add a,d			;8271
	rra			;8272
l8273h:
	ld (bc),a		;8273
	ld d,010h		;8274
	ld l,04fh		;8276
	adc a,c			;8278
	inc bc			;8279
	djnz $+33		;827a
l827ch:
	ld (bc),a		;827c
	ld d,010h		;827d
	jr c,l82d5h		;827f
	adc a,d			;8281
	inc b			;8282
	add a,b			;8283
	inc de			;8284
	nop			;8285
l8286h:
	ld (bc),a		;8286
	ld a,(de)		;8287
	djnz l82c2h		;8288
	ld d,h			;828a
l828bh:
	adc a,d			;828b
	inc b			;828c
	add a,b			;828d
	ld b,011h		;828e
l8290h:
	ld (bc),a		;8290
	ld a,(de)		;8291
	djnz l82cch		;8292
	ld d,h			;8294
	adc a,d			;8295
	inc b			;8296
	dec d			;8297
	inc hl			;8298
	ld bc,01a02h		;8299
l829ch:
	djnz l82e6h		;829c
	ld d,h			;829e
	adc a,d			;829f
	inc b			;82a0
	add a,b			;82a1
	inc de			;82a2
	inc bc			;82a3
	ld (bc),a		;82a4
	ld a,(de)		;82a5
l82a6h:
	djnz l82fch		;82a6
	ld d,h			;82a8
	adc a,d			;82a9
	inc b			;82aa
l82abh:
	dec d			;82ab
	inc de			;82ac
	inc de			;82ad
l82aeh:
	ld (bc),a		;82ae
	ld a,(de)		;82af
	djnz l830eh		;82b0
	ld d,h			;82b2
	adc a,d			;82b3
	inc b			;82b4
	add a,b			;82b5
	inc de			;82b6
	inc b			;82b7
l82b8h:
	ld (bc),a		;82b8
	ld a,(de)		;82b9
	djnz l8318h		;82ba
	ld d,h			;82bc
	adc a,d			;82bd
	inc b			;82be
	add a,b			;82bf
	inc hl			;82c0
	inc de			;82c1
l82c2h:
	ld (bc),a		;82c2
	ld a,(de)		;82c3
	djnz l8322h		;82c4
	ld d,h			;82c6
	adc a,d			;82c7
	inc b			;82c8
	add a,b			;82c9
	inc hl			;82ca
	dec d			;82cb
l82cch:
	ld (bc),a		;82cc
	ld a,(de)		;82cd
	djnz l8340h		;82ce
	ld d,h			;82d0
	adc a,d			;82d1
	inc b			;82d2
	dec d			;82d3
	inc b			;82d4
l82d5h:
	djnz $+4		;82d5
	ld a,(de)		;82d7
	djnz l834ah		;82d8
	ld d,h			;82da
	adc a,d			;82db
l82dch:
	inc b			;82dc
	dec d			;82dd
	inc h			;82de
	inc d			;82df
	ld (bc),a		;82e0
	ld a,(de)		;82e1
	djnz l835ch		;82e2
	ld d,h			;82e4
	adc a,d			;82e5
l82e6h:
	inc b			;82e6
	dec d			;82e7
	inc b			;82e8
	rlca			;82e9
	ld (bc),a		;82ea
	ld a,(de)		;82eb
	djnz l8366h		;82ec
	ld d,h			;82ee
	adc a,d			;82ef
	inc b			;82f0
	dec d			;82f1
	inc (hl)		;82f2
	ld d,002h		;82f3
	ld a,(de)		;82f5
	djnz l827ch		;82f6
l82f8h:
	ld d,h			;82f8
	adc a,d			;82f9
	inc b			;82fa
	dec d			;82fb
l82fch:
	inc bc			;82fc
	ex af,af'		;82fd
	ld (bc),a		;82fe
	ld a,(de)		;82ff
	djnz l8286h		;8300
l8302h:
	ld d,h			;8302
	adc a,d			;8303
	inc b			;8304
	dec d			;8305
	inc de			;8306
	add hl,bc		;8307
	ld (bc),a		;8308
	ld a,(de)		;8309
	djnz l8290h		;830a
l830ch:
	ld d,h			;830c
	adc a,d			;830d
l830eh:
	inc b			;830e
	dec d			;830f
	inc sp			;8310
	rla			;8311
	ld (bc),a		;8312
	ld a,(de)		;8313
	djnz l82aeh		;8314
	ld d,h			;8316
	adc a,d			;8317
l8318h:
	inc b			;8318
	add a,b			;8319
	inc bc			;831a
	dec bc			;831b
	ld (bc),a		;831c
	ld a,(de)		;831d
	djnz l82b8h		;831e
	ld d,h			;8320
	adc a,d			;8321
l8322h:
	inc b			;8322
	add a,b			;8323
	inc h			;8324
	ld de,01a02h		;8325
	djnz l82c2h		;8328
	ld d,h			;832a
	adc a,d			;832b
	inc b			;832c
	dec d			;832d
	inc de			;832e
	inc c			;832f
	ld (bc),a		;8330
	ld a,(de)		;8331
	djnz l82dch		;8332
	ld d,h			;8334
	adc a,d			;8335
	inc b			;8336
	add a,b			;8337
	inc de			;8338
	dec c			;8339
	ld (bc),a		;833a
	ld a,(de)		;833b
	djnz l82e6h		;833c
l833eh:
	ld d,h			;833e
	adc a,d			;833f
l8340h:
	inc b			;8340
	dec d			;8341
	inc de			;8342
	ld c,002h		;8343
	ld a,(de)		;8345
	djnz l82f8h		;8346
	ld d,h			;8348
	adc a,d			;8349
l834ah:
	inc b			;834a
	add a,b			;834b
	inc de			;834c
	rrca			;834d
	ld (bc),a		;834e
	ld a,(de)		;834f
	djnz l8302h		;8350
	ld d,h			;8352
	adc a,d			;8353
	inc b			;8354
	dec d			;8355
	ld h,012h		;8356
	ld (bc),a		;8358
	ld a,(de)		;8359
	djnz l830ch		;835a
l835ch:
	ld d,h			;835c
	adc a,d			;835d
	inc b			;835e
	dec d			;835f
	inc (hl)		;8360
	ld (de),a		;8361
	ld (bc),a		;8362
l8363h:
	ld a,(de)		;8363
	djnz l833eh		;8364
l8366h:
	ld e,a			;8366
	dec b			;8367
	inc bc			;8368
	djnz l8363h		;8369
	ld b,e			;836b
	dec b			;836c
	ex af,af'		;836d
	nop			;836e
	djnz $+28		;836f
l8371h:
	ld d,b			;8371
	ld b,006h		;8372
	rra			;8374
	djnz $+34		;8375
	dec de			;8377
	dec b			;8378
	rst 38h			;8379
	djnz l83a0h		;837a
	ld b,d			;837c
	dec b			;837d
	sub d			;837e
	djnz l83abh		;837f
	ld d,b			;8381
l8382h:
	ld b,096h		;8382
	rra			;8384
	djnz $+51		;8385
	ld b,d			;8387
	dec b			;8388
	ld (bc),a		;8389
	djnz $+54		;838a
	ld d,b			;838c
	ld b,000h		;838d
	rra			;838f
	djnz $+66		;8390
	ld e,a			;8392
	ld b,001h		;8393
	dec b			;8395
	djnz l83dch		;8396
l8398h:
	ld b,d			;8398
	dec b			;8399
	adc a,b			;839a
	djnz $+72		;839b
l839dh:
	ld d,b			;839d
	ld b,096h		;839e
l83a0h:
	ld e,010h		;83a0
	ld c,h			;83a2
	ld b,(hl)		;83a3
	dec b			;83a4
	ld (bc),a		;83a5
	djnz l83fah		;83a6
	ld d,b			;83a8
	ld b,096h		;83a9
l83abh:
	jr $+18			;83ab
	ld d,h			;83ad
	ld d,b			;83ae
	ld b,000h		;83af
	sbc a,(hl)		;83b1
	djnz l840ah		;83b2
	ld b,(hl)		;83b4
	dec b			;83b5
	inc c			;83b6
	djnz l8419h		;83b7
	ld b,(hl)		;83b9
	dec b			;83ba
	ld (bc),a		;83bb
	djnz l8420h		;83bc
	ld d,b			;83be
	ld b,000h		;83bf
	jr l83d3h		;83c1
	ld h,a			;83c3
	ld b,d			;83c4
	dec b			;83c5
	ld (de),a		;83c6
	djnz l8434h		;83c7
	ld b,(hl)		;83c9
	dec b			;83ca
	inc b			;83cb
	djnz l843ah		;83cc
	ld d,b			;83ce
	ld b,096h		;83cf
	jr $+18			;83d1
l83d3h:
	ld l,(hl)		;83d3
	ld d,b			;83d4
	ld b,000h		;83d5
	ld e,010h		;83d7
	ld (hl),d		;83d9
l83dah:
	ld b,(hl)		;83da
	dec b			;83db
l83dch:
	ld c,010h		;83dc
	halt			;83de
	ld d,b			;83df
	ld b,096h		;83e0
	ld e,010h		;83e2
	ld a,b			;83e4
	ld b,(hl)		;83e5
	dec b			;83e6
	ld (bc),a		;83e7
	djnz l8468h		;83e8
	ld b,(hl)		;83ea
	dec b			;83eb
	add hl,bc		;83ec
l83edh:
	djnz l8371h		;83ed
	ld d,b			;83ef
	ld b,000h		;83f0
	ld e,010h		;83f2
	add a,h			;83f4
	ld b,(hl)		;83f5
	dec b			;83f6
	inc b			;83f7
	djnz l8382h		;83f8
l83fah:
	ld d,b			;83fa
	ld b,096h		;83fb
	djnz l840fh		;83fd
	adc a,b			;83ff
	ld b,(hl)		;8400
	dec b			;8401
	ld (bc),a		;8402
	djnz $-114		;8403
	ld b,(hl)		;8405
	dec b			;8406
	dec bc			;8407
	djnz l8398h		;8408
l840ah:
	ld b,(hl)		;840a
	dec b			;840b
	ld (bc),a		;840c
	djnz l839dh		;840d
l840fh:
	ld d,b			;840f
	ld b,096h		;8410
	jr $+18			;8412
	sub b			;8414
	ld d,b			;8415
	ld b,096h		;8416
	sbc a,(hl)		;8418
l8419h:
	djnz l83abh		;8419
	ld b,(hl)		;841b
	dec b			;841c
	djnz l842fh		;841d
	sub h			;841f
l8420h:
	ld b,(hl)		;8420
	dec b			;8421
	ex af,af'		;8422
	djnz $-102		;8423
	ld b,(hl)		;8425
	dec b			;8426
	djnz $+18		;8427
	sbc a,d			;8429
	ld b,(hl)		;842a
	dec b			;842b
	ld (bc),a		;842c
	djnz $-96		;842d
l842fh:
	ld d,b			;842f
	ld b,000h		;8430
	jr $+18			;8432
l8434h:
	sbc a,l			;8434
	ld b,(hl)		;8435
	dec b			;8436
	inc b			;8437
	djnz l83dah		;8438
l843ah:
	ld e,a			;843a
	ld b,001h		;843b
	nop			;843d
	djnz l83edh		;843e
	ld e,a			;8440
	dec b			;8441
	inc bc			;8442
	jr nz,l8445h		;8443
l8445h:
	ld a,b			;8445
	dec b			;8446
	djnz l8449h		;8447
l8449h:
	nop			;8449
	nop			;844a
	djnz l8466h		;844b
	ld e,d			;844d
	dec b			;844e
	add a,d			;844f
	djnz l846bh		;8450
	ld e,d			;8452
	dec b			;8453
	dec d			;8454
	djnz l8477h		;8455
	ld c,(hl)		;8457
	dec b			;8458
	djnz l846bh		;8459
	inc h			;845b
	ld c,(hl)		;845c
	dec b			;845d
	ex af,af'		;845e
	djnz $+39		;845f
	ld c,(hl)		;8461
	dec b			;8462
	inc b			;8463
	djnz l848eh		;8464
l8466h:
	ld c,(hl)		;8466
	dec b			;8467
l8468h:
	ld a,(bc)		;8468
	djnz l8495h		;8469
l846bh:
	ld c,(hl)		;846b
	dec b			;846c
	ld d,010h		;846d
	ld l,04eh		;846f
	dec b			;8471
	ld a,(bc)		;8472
	djnz l84a4h		;8473
	ld c,(hl)		;8475
	dec b			;8476
l8477h:
	ex af,af'		;8477
	djnz l84b0h		;8478
	ld a,c			;847a
	dec b			;847b
	ex af,af'		;847c
	djnz l84beh		;847d
	ld d,c			;847f
	adc a,(hl)		;8480
	ex af,af'		;8481
	ld bc,0031fh		;8482
	ld bc,00320h		;8485
	ld b,b			;8488
	ld (bc),a		;8489
	ld c,h			;848a
	nop			;848b
	nop			;848c
	nop			;848d
l848eh:
	rst 38h			;848e
	rst 38h			;848f
	rst 38h			;8490
	rst 38h			;8491
	rst 38h			;8492
	rst 38h			;8493
	rst 38h			;8494
l8495h:
	rst 38h			;8495
	rst 38h			;8496
	rst 38h			;8497
	rst 38h			;8498
	rst 38h			;8499
	rst 38h			;849a
	rst 38h			;849b
	rst 38h			;849c
	rst 38h			;849d
	rst 38h			;849e
	rst 38h			;849f
	rst 38h			;84a0
	rst 38h			;84a1
	rst 38h			;84a2
	rst 38h			;84a3
l84a4h:
	rst 38h			;84a4
	rst 38h			;84a5
	rst 38h			;84a6
	rst 38h			;84a7
	rst 38h			;84a8
	rst 38h			;84a9
	rst 38h			;84aa
	rst 38h			;84ab
	rst 38h			;84ac
	rst 38h			;84ad
	rst 38h			;84ae
	rst 38h			;84af
l84b0h:
	rst 38h			;84b0
	rst 38h			;84b1
	rst 38h			;84b2
	rst 38h			;84b3
	rst 38h			;84b4
	rst 38h			;84b5
	rst 38h			;84b6
	rst 38h			;84b7
	rst 38h			;84b8
	rst 38h			;84b9
	rst 38h			;84ba
	rst 38h			;84bb
	rst 38h			;84bc
	rst 38h			;84bd
l84beh:
	rst 38h			;84be
	rst 38h			;84bf
	rst 38h			;84c0
	rst 38h			;84c1
	rst 38h			;84c2
	rst 38h			;84c3
	rst 38h			;84c4
	rst 38h			;84c5
	rst 38h			;84c6
	rst 38h			;84c7
	rst 38h			;84c8
	rst 38h			;84c9
	rst 38h			;84ca
	rst 38h			;84cb
	rst 38h			;84cc
	rst 38h			;84cd
	rst 38h			;84ce
	rst 38h			;84cf
	rst 38h			;84d0
	rst 38h			;84d1
	rst 38h			;84d2
	rst 38h			;84d3
	rst 38h			;84d4
	rst 38h			;84d5
	rst 38h			;84d6
	rst 38h			;84d7
	rst 38h			;84d8
	rst 38h			;84d9
	rst 38h			;84da
	rst 38h			;84db
	rst 38h			;84dc
	rst 38h			;84dd
	rst 38h			;84de
	rst 38h			;84df
	rst 38h			;84e0
	rst 38h			;84e1
	rst 38h			;84e2
	rst 38h			;84e3
	rst 38h			;84e4
	rst 38h			;84e5
	rst 38h			;84e6
	rst 38h			;84e7
	rst 38h			;84e8
	rst 38h			;84e9
	rst 38h			;84ea
	rst 38h			;84eb
	rst 38h			;84ec
	rst 38h			;84ed
	rst 38h			;84ee
	rst 38h			;84ef
	rst 38h			;84f0
	rst 38h			;84f1
	rst 38h			;84f2
	rst 38h			;84f3
	rst 38h			;84f4
	rst 38h			;84f5
	rst 38h			;84f6
	rst 38h			;84f7
	rst 38h			;84f8
	rst 38h			;84f9
	rst 38h			;84fa
	rst 38h			;84fb
	rst 38h			;84fc
	rst 38h			;84fd
	rst 38h			;84fe
	rst 38h			;84ff
	rst 38h			;8500
	rst 38h			;8501
	rst 38h			;8502
	rst 38h			;8503
	rst 38h			;8504
	rst 38h			;8505
	rst 38h			;8506
	rst 38h			;8507
	rst 38h			;8508
	rst 38h			;8509
	rst 38h			;850a
	rst 38h			;850b
	rst 38h			;850c
	rst 38h			;850d
	rst 38h			;850e
	rst 38h			;850f
	rst 38h			;8510
	rst 38h			;8511
	rst 38h			;8512
	rst 38h			;8513
	rst 38h			;8514
	rst 38h			;8515
	rst 38h			;8516
	rst 38h			;8517
	rst 38h			;8518
	rst 38h			;8519
	rst 38h			;851a
	rst 38h			;851b
	rst 38h			;851c
	rst 38h			;851d
	rst 38h			;851e
	rst 38h			;851f
	rst 38h			;8520
	rst 38h			;8521
	rst 38h			;8522
	rst 38h			;8523
	rst 38h			;8524
	rst 38h			;8525
	rst 38h			;8526
	rst 38h			;8527
	rst 38h			;8528
	rst 38h			;8529
	rst 38h			;852a
	rst 38h			;852b
	rst 38h			;852c
	rst 38h			;852d
	rst 38h			;852e
	rst 38h			;852f
	rst 38h			;8530
	rst 38h			;8531
	rst 38h			;8532
	rst 38h			;8533
	rst 38h			;8534
	rst 38h			;8535
	rst 38h			;8536
	rst 38h			;8537
	rst 38h			;8538
	rst 38h			;8539
	rst 38h			;853a
	rst 38h			;853b
	rst 38h			;853c
	rst 38h			;853d
	rst 38h			;853e
	rst 38h			;853f
	rst 38h			;8540
	rst 38h			;8541
	rst 38h			;8542
	rst 38h			;8543
	rst 38h			;8544
	rst 38h			;8545
	rst 38h			;8546
	rst 38h			;8547
	rst 38h			;8548
	rst 38h			;8549
	rst 38h			;854a
	rst 38h			;854b
	rst 38h			;854c
	rst 38h			;854d
	rst 38h			;854e
	rst 38h			;854f
	rst 38h			;8550
	rst 38h			;8551
	rst 38h			;8552
	rst 38h			;8553
	rst 38h			;8554
	rst 38h			;8555
	rst 38h			;8556
	rst 38h			;8557
	rst 38h			;8558
	rst 38h			;8559
	rst 38h			;855a
	rst 38h			;855b
	rst 38h			;855c
	rst 38h			;855d
	rst 38h			;855e
	rst 38h			;855f
	rst 38h			;8560
	rst 38h			;8561
	rst 38h			;8562
	rst 38h			;8563
	rst 38h			;8564
	rst 38h			;8565
	rst 38h			;8566
	rst 38h			;8567
	rst 38h			;8568
	rst 38h			;8569
	rst 38h			;856a
	rst 38h			;856b
	rst 38h			;856c
	rst 38h			;856d
	rst 38h			;856e
	rst 38h			;856f
	rst 38h			;8570
	rst 38h			;8571
	rst 38h			;8572
	rst 38h			;8573
	rst 38h			;8574
	rst 38h			;8575
	rst 38h			;8576
	rst 38h			;8577
	rst 38h			;8578
	rst 38h			;8579
	rst 38h			;857a
	rst 38h			;857b
	rst 38h			;857c
	rst 38h			;857d
	rst 38h			;857e
	rst 38h			;857f
	rst 38h			;8580
	rst 38h			;8581
	rst 38h			;8582
	rst 38h			;8583
	rst 38h			;8584
	rst 38h			;8585
	rst 38h			;8586
	rst 38h			;8587
	rst 38h			;8588
	rst 38h			;8589
	rst 38h			;858a
	rst 38h			;858b
	rst 38h			;858c
	rst 38h			;858d
	rst 38h			;858e
	rst 38h			;858f
	rst 38h			;8590
	rst 38h			;8591
	rst 38h			;8592
	rst 38h			;8593
	rst 38h			;8594
	rst 38h			;8595
	rst 38h			;8596
	rst 38h			;8597
	rst 38h			;8598
	rst 38h			;8599
	rst 38h			;859a
	rst 38h			;859b
	rst 38h			;859c
	rst 38h			;859d
	rst 38h			;859e
	rst 38h			;859f
	rst 38h			;85a0
	rst 38h			;85a1
	rst 38h			;85a2
	rst 38h			;85a3
	rst 38h			;85a4
	rst 38h			;85a5
	rst 38h			;85a6
	rst 38h			;85a7
	rst 38h			;85a8
	rst 38h			;85a9
	rst 38h			;85aa
	rst 38h			;85ab
	rst 38h			;85ac
	rst 38h			;85ad
	rst 38h			;85ae
	rst 38h			;85af
	rst 38h			;85b0
	rst 38h			;85b1
	rst 38h			;85b2
	rst 38h			;85b3
	rst 38h			;85b4
	rst 38h			;85b5
	rst 38h			;85b6
	rst 38h			;85b7
	rst 38h			;85b8
	rst 38h			;85b9
	rst 38h			;85ba
	rst 38h			;85bb
	rst 38h			;85bc
	rst 38h			;85bd
	rst 38h			;85be
	rst 38h			;85bf
	rst 38h			;85c0
	rst 38h			;85c1
	rst 38h			;85c2
	rst 38h			;85c3
	rst 38h			;85c4
	rst 38h			;85c5
	rst 38h			;85c6
	rst 38h			;85c7
	rst 38h			;85c8
	rst 38h			;85c9
	rst 38h			;85ca
	rst 38h			;85cb
	rst 38h			;85cc
	rst 38h			;85cd
	rst 38h			;85ce
	rst 38h			;85cf
	rst 38h			;85d0
	rst 38h			;85d1
	rst 38h			;85d2
	rst 38h			;85d3
	rst 38h			;85d4
	rst 38h			;85d5
	rst 38h			;85d6
	rst 38h			;85d7
	rst 38h			;85d8
	rst 38h			;85d9
	rst 38h			;85da
	rst 38h			;85db
	rst 38h			;85dc
	rst 38h			;85dd
	rst 38h			;85de
	rst 38h			;85df
	rst 38h			;85e0
	rst 38h			;85e1
	rst 38h			;85e2
	rst 38h			;85e3
	rst 38h			;85e4
	rst 38h			;85e5
	rst 38h			;85e6
	rst 38h			;85e7
	rst 38h			;85e8
	rst 38h			;85e9
	rst 38h			;85ea
	rst 38h			;85eb
	rst 38h			;85ec
	rst 38h			;85ed
	rst 38h			;85ee
	rst 38h			;85ef
	rst 38h			;85f0
	rst 38h			;85f1
	rst 38h			;85f2
	rst 38h			;85f3
	rst 38h			;85f4
	rst 38h			;85f5
	rst 38h			;85f6
	rst 38h			;85f7
	rst 38h			;85f8
	rst 38h			;85f9
	rst 38h			;85fa
	rst 38h			;85fb
	rst 38h			;85fc
	rst 38h			;85fd
	rst 38h			;85fe
	rst 38h			;85ff
	call 0474bh		;8600
	ld a,000h		;8603
	ld h,000h		;8605
	ld l,h			;8607
	ld b,h			;8608
	ld c,080h		;8609
	ld d,002h		;860b
	call 047fch		;860d
	call 047d2h		;8610
	ld ix,0b40ah		;8613
	call 0ae15h		;8617
	call 04b95h		;861a
	ld a,015h		;861d
	ld hl,05a02h		;861f
	ld de,0b9a3h		;8622
	call 0a68fh		;8625
	jr l867fh		;8628
	ld ix,0b37eh		;862a
	call 0ae15h		;862e
	call 04b95h		;8631
	ld a,015h		;8634
	ld hl,05000h		;8636
	ld de,0ba7bh		;8639
	call 0a68fh		;863c
	call 0a67fh		;863f
	call 047d2h		;8642
	call 0bdc8h		;8645
	ld bc,00017h		;8648
	call 00047h		;864b
	jp 0473eh		;864e
	ld ix,0b260h		;8651
	call 0ae15h		;8655
	jp 04b95h		;8658
	ld a,00ah		;865b
	ld hl,05500h		;865d
	ld de,0b520h		;8660
	call 0a68fh		;8663
	call 047d2h		;8666
	call 0a67fh		;8669
	call 0bdc3h		;866c
	call 047d2h		;866f
	call 0473eh		;8672
	xor a			;8675
	ld h,a			;8676
	ld l,a			;8677
	ld b,a			;8678
	ld c,a			;8679
	ld d,001h		;867a
	jp 047fch		;867c
l867fh:
	call 04b95h		;867f
	call 047d2h		;8682
	xor a			;8685
	ld h,a			;8686
	ld l,a			;8687
	ld b,a			;8688
	ld c,0c0h		;8689
	ld d,a			;868b
	jp 047fch		;868c
	push de			;868f
	push af			;8690
	push hl			;8691
	call 0a6aeh		;8692
	pop hl			;8695
	pop af			;8696
	call 0aea6h		;8697
	pop hl			;869a
	call 0a713h		;869b
	ret			;869e
	call 04a7ah		;869f
	call 04a58h		;86a2
	call 0a749h		;86a5
	push af			;86a8
	call 04b95h		;86a9
	pop af			;86ac
	ret			;86ad
	call 047d2h		;86ae
	ld hl,0a6bdh		;86b1
	ld b,008h		;86b4
	call 04a1fh		;86b6
	call 04760h		;86b9
	ret			;86bc
	nop			;86bd
	ld b,001h		;86be
	ld (01f02h),hl		;86c0
	dec b			;86c3
	rst 28h			;86c4
	ld b,01fh		;86c5
	ex af,af'		;86c7
	ld a,(bc)		;86c8
	add hl,bc		;86c9
	nop			;86ca
	dec bc			;86cb
	ld bc,l8016h		;86cc
	ld a,(bc)		;86cf
	adc a,b			;86d0
	nop			;86d1
	sub a			;86d2
	nop			;86d3
	sub d			;86d4
	jr nz,$-124		;86d5
	ld a,(0c908h)		;86d7
	ld c,a			;86da
	bit 0,c			;86db
	ld a,0ffh		;86dd
	jr nz,l8706h		;86df
	bit 1,c			;86e1
	ld a,001h		;86e3
	jr nz,l8706h		;86e5
	ld a,(0c907h)		;86e7
	ld c,a			;86ea
	bit 2,c			;86eb
	ld a,020h		;86ed
	jr nz,l86f6h		;86ef
	bit 3,c			;86f1
	ld a,0e0h		;86f3
	ret z			;86f5
l86f6h:
	ld hl,0e008h		;86f6
	add a,(hl)		;86f9
	ld (hl),a		;86fa
	and 060h		;86fb
	or 01fh			;86fd
	ld b,a			;86ff
	ld c,002h		;8700
	call 00047h		;8702
	ret			;8705
l8706h:
	ld hl,0e009h		;8706
	add a,(hl)		;8709
	ld (hl),a		;870a
	ld b,a			;870b
	ld c,017h		;870c
	call 00047h		;870e
	ei			;8711
	ret			;8712
	push hl			;8713
	ld hl,0e000h		;8714
	ld bc,006ffh		;8717
	call 04648h		;871a
	ld ix,0e100h		;871d
	pop hl			;8721
	ld (ix+002h),l		;8722
	ld (ix+003h),h		;8725
	ld (ix+00eh),00ah	;8728
	ld (ix+00fh),028h	;872c
	ld (ix+012h),014h	;8730
	ld (ix+013h),00ch	;8734
	ld (ix+014h),006h	;8738
	ld (ix+015h),006h	;873c
	set 0,(ix+00dh)		;8740
	set 5,(ix+00dh)		;8744
	ret			;8748
	call 0a754h		;8749
	call 0a767h		;874c
	ld a,(0e0ffh)		;874f
	or a			;8752
	ret			;8753
	ld ix,0e100h		;8754
	ld b,030h		;8758
l875ah:
	push bc			;875a
	call 0a78eh		;875b
	ld bc,00020h		;875e
	add ix,bc		;8761
	pop bc			;8763
	djnz l875ah		;8764
	ret			;8766
	ld b,010h		;8767
l8769h:
	push bc			;8769
	call 0a771h		;876a
	pop bc			;876d
	djnz l8769h		;876e
	ret			;8770
	ld c,b			;8771
	dec c			;8772
	ld ix,0e100h		;8773
	ld b,030h		;8777
l8779h:
	push bc			;8779
	ld a,(ix+00ch)		;877a
	cp c			;877d
	push ix			;877e
	call z,0abb8h		;8780
	pop ix			;8783
	ld bc,00020h		;8785
	add ix,bc		;8788
	pop bc			;878a
	djnz l8779h		;878b
	ret			;878d
	call 0a818h		;878e
	call 0a795h		;8791
	ret			;8794
	ld h,(ix+005h)		;8795
	ld l,(ix+004h)		;8798
	ld d,(ix+009h)		;879b
	ld e,(ix+008h)		;879e
	add hl,de		;87a1
	ld (ix+005h),h		;87a2
	ld (ix+004h),l		;87a5
	ld a,(ix+00dh)		;87a8
	and 00ah		;87ab
	jr z,l87d6h		;87ad
	bit 6,(ix+005h)		;87af
	jr z,l87c9h		;87b3
	ld h,(ix+005h)		;87b5
	ld l,(ix+004h)		;87b8
	ld d,(ix+016h)		;87bb
	ld e,000h		;87be
	add hl,de		;87c0
	ld (ix+005h),h		;87c1
	ld (ix+004h),l		;87c4
	jr l87d6h		;87c7
l87c9h:
	ld a,(ix+005h)		;87c9
	sub (ix+016h)		;87cc
	jr c,l87d6h		;87cf
	ld (ix+005h),a		;87d1
	jr l87c9h		;87d4
l87d6h:
	ld h,(ix+007h)		;87d6
	ld l,(ix+006h)		;87d9
	ld d,(ix+00bh)		;87dc
	ld e,(ix+00ah)		;87df
	add hl,de		;87e2
	ld (ix+007h),h		;87e3
	ld (ix+006h),l		;87e6
	ld a,(ix+00dh)		;87e9
	and 012h		;87ec
	jr z,l8817h		;87ee
	bit 6,(ix+007h)		;87f0
	jr z,l880ah		;87f4
	ld h,(ix+007h)		;87f6
	ld l,(ix+006h)		;87f9
	ld d,(ix+017h)		;87fc
	ld e,000h		;87ff
	add hl,de		;8801
	ld (ix+007h),h		;8802
	ld (ix+006h),l		;8805
	jr l8817h		;8808
l880ah:
	ld a,(ix+007h)		;880a
	sub (ix+017h)		;880d
	jr c,l8817h		;8810
	ld (ix+007h),a		;8812
	jr l880ah		;8815
l8817h:
	ret			;8817
	ld a,(ix+001h)		;8818
	or a			;881b
	jr z,l8823h		;881c
	dec a			;881e
	ld (ix+001h),a		;881f
	ret nz			;8822
l8823h:
	ld l,(ix+002h)		;8823
	ld h,(ix+003h)		;8826
	ld a,h			;8829
	or l			;882a
	ret z			;882b
	ld a,(hl)		;882c
	cp 011h			;882d
	jp nc,04ae0h		;882f
	call 0461ah		;8832
	ld l,d			;8835
	xor b			;8836
	jp nc,025a8h		;8837
	xor c			;883a
	ld c,d			;883b
	xor c			;883c
	ld l,d			;883d
	xor c			;883e
	sub e			;883f
	xor c			;8840
	cp e			;8841
	xor c			;8842
	rst 28h			;8843
	xor c			;8844
	ld c,0aah		;8845
	inc sp			;8847
	xor d			;8848
	ld e,e			;8849
	xor d			;884a
	ld a,l			;884b
	xor d			;884c
	xor (hl)		;884d
	xor d			;884e
	push de			;884f
	xor d			;8850
	di			;8851
	xor d			;8852
	add hl,de		;8853
	xor e			;8854
	dec sp			;8855
	xor e			;8856
	ld l,(ix+002h)		;8857
	ld h,(ix+003h)		;885a
	ret			;885d
	ld (ix+002h),l		;885e
	ld (ix+003h),h		;8861
	ret			;8864
	pop hl			;8865
	call 0a877h		;8866
	jp (hl)			;8869
	call 0a857h		;886a
	inc hl			;886d
	call 0a877h		;886e
	call 0a85eh		;8871
	jp 0a823h		;8874
	ld a,(hl)		;8877
	inc hl			;8878
	ld c,(hl)		;8879
	inc hl			;887a
	ld b,(hl)		;887b
l887ch:
	inc hl			;887c
	ld d,(hl)		;887d
	inc hl			;887e
	ld e,(hl)		;887f
	inc hl			;8880
	ex af,af'		;8881
	ld a,(hl)		;8882
	inc hl			;8883
	push hl			;8884
	push ix			;8885
	call 0a88eh		;8887
	pop ix			;888a
	pop hl			;888c
	ret			;888d
	ld l,a			;888e
	ex af,af'		;888f
	push hl			;8890
	push de			;8891
	push bc			;8892
	push ix			;8893
	call 0ab61h		;8895
	jp c,04699h		;8898
	pop iy			;889b
	pop bc			;889d
	pop de			;889e
	pop hl			;889f
	ld (ix+002h),c		;88a0
	ld (ix+003h),b		;88a3
	ld (ix+00ch),l		;88a6
	ld a,e			;88a9
	push de			;88aa
	call 0aba6h		;88ab
	ld d,(iy+007h)		;88ae
	ld e,(iy+006h)		;88b1
	add hl,de		;88b4
	ld (ix+007h),h		;88b5
	ld (ix+006h),l		;88b8
	pop af			;88bb
	call 0aba6h		;88bc
	ld d,(iy+005h)		;88bf
	ld e,(iy+004h)		;88c2
	add hl,de		;88c5
	ld (ix+005h),h		;88c6
	ld (ix+004h),l		;88c9
	ret			;88cc
	pop hl			;88cd
	call 0a8ddh		;88ce
	jp (hl)			;88d1
	call 0a857h		;88d2
	inc hl			;88d5
	call 0a8ddh		;88d6
	call 0a85eh		;88d9
	ret			;88dc
	ld c,(hl)		;88dd
	inc hl			;88de
	ld b,(hl)		;88df
	inc hl			;88e0
	ld d,(hl)		;88e1
	inc hl			;88e2
	ld e,(hl)		;88e3
	inc hl			;88e4
	push hl			;88e5
	push ix			;88e6
	call 0a8efh		;88e8
	pop ix			;88eb
	pop hl			;88ed
	ret			;88ee
	ld h,b			;88ef
	ld l,c			;88f0
	push de			;88f1
	call 0a917h		;88f2
	ex de,hl		;88f5
	pop de			;88f6
	ld (ix+00eh),h		;88f7
	ld a,b			;88fa
	sub h			;88fb
	inc a			;88fc
	ld (ix+012h),a		;88fd
	ld a,c			;8900
	sub l			;8901
	inc a			;8902
	ld (ix+013h),a		;8903
	ld a,l			;8906
	add a,040h		;8907
	ld (ix+00fh),a		;8909
	ld (ix+010h),d		;890c
	ld (ix+011h),e		;890f
	set 0,(ix+00dh)		;8912
	ret			;8916
	ld d,(hl)		;8917
	inc hl			;8918
	ld e,(hl)		;8919
	inc hl			;891a
	ld b,(hl)		;891b
	inc hl			;891c
	ld c,(hl)		;891d
	inc hl			;891e
	ret			;891f
	pop hl			;8920
	call 0a932h		;8921
	jp (hl)			;8924
	call 0a857h		;8925
	inc hl			;8928
	call 0a932h		;8929
	call 0a85eh		;892c
	jp 0a823h		;892f
	ld a,(hl)		;8932
	inc hl			;8933
	push hl			;8934
	push ix			;8935
	call 0a93eh		;8937
	pop ix			;893a
	pop hl			;893c
	ret			;893d
	or (ix+00dh)		;893e
	ld (ix+00dh),a		;8941
	ret			;8944
	pop hl			;8945
	call 0a955h		;8946
	jp (hl)			;8949
	call 0a857h		;894a
	inc hl			;894d
	call 0a955h		;894e
	call 0a85eh		;8951
	ret			;8954
	ld a,(hl)		;8955
	inc hl			;8956
	push hl			;8957
	push ix			;8958
	call 0a961h		;895a
	pop ix			;895d
	pop hl			;895f
	ret			;8960
	ld (ix+001h),a		;8961
	ret			;8964
	pop hl			;8965
	call 0a976h		;8966
	jp (hl)			;8969
	call 0a857h		;896a
	inc hl			;896d
	call 0a976h		;896e
	ret c			;8971
	call 0a85eh		;8972
	ret			;8975
	ld a,(hl)		;8976
	inc hl			;8977
	push hl			;8978
	push ix			;8979
	call 0a982h		;897b
	pop ix			;897e
	pop hl			;8980
	ret			;8981
	ld hl,0e0f0h		;8982
	ld e,a			;8985
	ld d,000h		;8986
	add hl,de		;8988
	ld a,(hl)		;8989
	or a			;898a
	ret nz			;898b
	scf			;898c
	ret			;898d
	pop hl			;898e
	call 0a9a0h		;898f
	jp (hl)			;8992
	call 0a857h		;8993
	inc hl			;8996
	call 0a9a0h		;8997
	call 0a85eh		;899a
	jp 0a823h		;899d
	ld a,(hl)		;89a0
	inc hl			;89a1
	push hl			;89a2
	push ix			;89a3
	call 0a9ach		;89a5
	pop ix			;89a8
	pop hl			;89aa
	ret			;89ab
	ld hl,0e0f0h		;89ac
	ld e,a			;89af
	ld d,000h		;89b0
	add hl,de		;89b2
	ld (hl),001h		;89b3
	ret			;89b5
	pop hl			;89b6
	call 0a9c8h		;89b7
	jp (hl)			;89ba
	call 0a857h		;89bb
	inc hl			;89be
	call 0a9c8h		;89bf
	call 0a85eh		;89c2
	jp 0a823h		;89c5
	push hl			;89c8
	push ix			;89c9
	call 0a9d2h		;89cb
	pop ix			;89ce
	pop hl			;89d0
	ret			;89d1
	xor a			;89d2
	ld hl,02820h		;89d3
	ld bc,0d090h		;89d6
	ld d,a			;89d9
	call 047fch		;89da
	call 0ab9dh		;89dd
	ld hl,0e0f0h		;89e0
	ld bc,0000fh		;89e3
	call 04648h		;89e6
	ret			;89e9
	pop hl			;89ea
	call 0a9fdh		;89eb
	jp (hl)			;89ee
	call 0a857h		;89ef
	inc hl			;89f2
	call 0a9fdh		;89f3
	ret c			;89f6
	call 0a85eh		;89f7
	jp 0a823h		;89fa
	push hl			;89fd
	push ix			;89fe
	call 0aa07h		;8a00
	pop ix			;8a03
	pop hl			;8a05
	ret			;8a06
	scf			;8a07
	ret			;8a08
	pop hl			;8a09
	call 0aa1bh		;8a0a
	jp (hl)			;8a0d
	call 0a857h		;8a0e
	inc hl			;8a11
	call 0aa1bh		;8a12
	call 0a85eh		;8a15
	jp 0a823h		;8a18
	ld e,(hl)		;8a1b
	inc hl			;8a1c
	ld d,(hl)		;8a1d
	inc hl			;8a1e
	push hl			;8a1f
	push ix			;8a20
	call 0aa29h		;8a22
	pop ix			;8a25
	pop hl			;8a27
	ret			;8a28
	ex de,hl		;8a29
	call 04c94h		;8a2a
	ret			;8a2d
	pop hl			;8a2e
	call 0aa40h		;8a2f
	jp (hl)			;8a32
	call 0a857h		;8a33
	inc hl			;8a36
	call 0aa40h		;8a37
	call 0a85eh		;8a3a
	jp 0a823h		;8a3d
	ld e,(hl)		;8a40
	inc hl			;8a41
	ld d,(hl)		;8a42
	inc hl			;8a43
	push hl			;8a44
	push ix			;8a45
	call 0aa4eh		;8a47
	pop ix			;8a4a
	pop hl			;8a4c
	ret			;8a4d
	ex de,hl		;8a4e
	call 04ce0h		;8a4f
	call 04cf5h		;8a52
	ret			;8a55
	pop hl			;8a56
	call 0aa68h		;8a57
	jp (hl)			;8a5a
	call 0a857h		;8a5b
	inc hl			;8a5e
	call 0aa68h		;8a5f
	call 0a85eh		;8a62
	jp 0a823h		;8a65
	ld e,(hl)		;8a68
	inc hl			;8a69
	ld d,(hl)		;8a6a
	inc hl			;8a6b
	push hl			;8a6c
	push ix			;8a6d
	call 0aa76h		;8a6f
	pop ix			;8a72
	pop hl			;8a74
	ret			;8a75
	ex de,hl		;8a76
	jp (hl)			;8a77
	pop hl			;8a78
	call 0aa88h		;8a79
	jp (hl)			;8a7c
	call 0a857h		;8a7d
	inc hl			;8a80
	call 0aa88h		;8a81
	call 0a85eh		;8a84
	ret			;8a87
	ld d,(hl)		;8a88
	inc hl			;8a89
	ld e,(hl)		;8a8a
	inc hl			;8a8b
	push hl			;8a8c
	push ix			;8a8d
	call 0aa96h		;8a8f
	pop ix			;8a92
	pop hl			;8a94
	ret			;8a95
	ld a,d			;8a96
	rlca			;8a97
	sbc a,a			;8a98
	ld (ix+008h),d		;8a99
	ld (ix+009h),a		;8a9c
	ld a,e			;8a9f
	rlca			;8aa0
	sbc a,a			;8aa1
	ld (ix+00ah),e		;8aa2
	ld (ix+00bh),a		;8aa5
	ret			;8aa8
	pop hl			;8aa9
	call 0aabbh		;8aaa
	jp (hl)			;8aad
	call 0a857h		;8aae
	inc hl			;8ab1
	call 0aabbh		;8ab2
	call 0a85eh		;8ab5
	jp 0a823h		;8ab8
	ld d,(hl)		;8abb
	inc hl			;8abc
	ld e,(hl)		;8abd
	inc hl			;8abe
	push hl			;8abf
	push ix			;8ac0
	call 0aac9h		;8ac2
	pop ix			;8ac5
	pop hl			;8ac7
	ret			;8ac8
	ld (ix+014h),d		;8ac9
	ld (ix+015h),e		;8acc
	ret			;8acf
	pop hl			;8ad0
	call 0aae2h		;8ad1
	jp (hl)			;8ad4
	call 0a857h		;8ad5
	inc hl			;8ad8
	call 0aae2h		;8ad9
	call 0a85eh		;8adc
	jp 0a823h		;8adf
	ld e,(hl)		;8ae2
	inc hl			;8ae3
	ld d,(hl)		;8ae4
	inc hl			;8ae5
	ex de,hl		;8ae6
	ld (ix+002h),l		;8ae7
	ld (ix+003h),h		;8aea
	ret			;8aed
	pop hl			;8aee
	call 0aaffh		;8aef
	jp (hl)			;8af2
	call 0a857h		;8af3
	inc hl			;8af6
	call 0aaffh		;8af7
	ret c			;8afa
	call 0a85eh		;8afb
	ret			;8afe
	push hl			;8aff
	push ix			;8b00
	call 0ab09h		;8b02
	pop ix			;8b05
	pop hl			;8b07
	ret			;8b08
	push ix			;8b09
	pop hl			;8b0b
	ld bc,0001fh		;8b0c
	call 04648h		;8b0f
	scf			;8b12
	ret			;8b13
	pop hl			;8b14
	call 0ab26h		;8b15
	jp (hl)			;8b18
	call 0a857h		;8b19
	inc hl			;8b1c
	call 0ab26h		;8b1d
	call 0a85eh		;8b20
	jp 0a823h		;8b23
	ld a,(hl)		;8b26
	inc hl			;8b27
	push hl			;8b28
	push ix			;8b29
	call 0ab32h		;8b2b
	pop ix			;8b2e
	pop hl			;8b30
	ret			;8b31
	call 04af5h		;8b32
	ret			;8b35
	pop hl			;8b36
	call 0ab48h		;8b37
	jp (hl)			;8b3a
	call 0a857h		;8b3b
	inc hl			;8b3e
	call 0ab48h		;8b3f
	call 0a85eh		;8b42
	jp 0a823h		;8b45
	ld e,(hl)		;8b48
	inc hl			;8b49
	ld d,(hl)		;8b4a
	inc hl			;8b4b
	push hl			;8b4c
	push ix			;8b4d
	call 0ab56h		;8b4f
	pop ix			;8b52
	pop hl			;8b54
	ret			;8b55
	ld a,e			;8b56
	and 0f0h		;8b57
	rrca			;8b59
	rrca			;8b5a
	rrca			;8b5b
	rrca			;8b5c
	call 04776h		;8b5d
	ret			;8b60
	call 0ab83h		;8b61
	ret c			;8b64
	push hl			;8b65
	pop ix			;8b66
	ld bc,0001fh		;8b68
	call 04648h		;8b6b
	ld (ix+000h),001h	;8b6e
	ld (ix+015h),028h	;8b72
	ld (ix+014h),00ah	;8b76
	ld (ix+016h),014h	;8b7a
	ld (ix+017h),00ch	;8b7e
	ret			;8b82
	cp 030h			;8b83
	ccf			;8b85
	ret c			;8b86
	ld l,a			;8b87
	ld h,000h		;8b88
	ld de,0e100h		;8b8a
	add hl,hl		;8b8d
	add hl,hl		;8b8e
	add hl,hl		;8b8f
	add hl,hl		;8b90
	add hl,hl		;8b91
	add hl,de		;8b92
	ret			;8b93
	ld hl,0e100h		;8b94
	ld bc,005ffh		;8b97
	jp 04648h		;8b9a
	ld hl,0e120h		;8b9d
	ld bc,005dfh		;8ba0
	jp 04648h		;8ba3
	ld l,a			;8ba6
	rlca			;8ba7
	sbc a,a			;8ba8
	ld h,a			;8ba9
	add hl,hl		;8baa
	add hl,hl		;8bab
	add hl,hl		;8bac
	add hl,hl		;8bad
	add hl,hl		;8bae
	ret			;8baf
	xor a			;8bb0
	add hl,hl		;8bb1
	adc a,a			;8bb2
	add hl,hl		;8bb3
	adc a,a			;8bb4
	add hl,hl		;8bb5
	adc a,a			;8bb6
	ret			;8bb7
	bit 0,(ix+00dh)		;8bb8
	ret z			;8bbc
	ld a,(ix+012h)		;8bbd
	and (ix+013h)		;8bc0
	inc a			;8bc3
	ret z			;8bc4
	ld a,(ix+00dh)		;8bc5
	bit 1,(ix+00dh)		;8bc8
	jp nz,0acadh		;8bcc
	bit 3,(ix+00dh)		;8bcf
	jp nz,0ac6eh		;8bd3
	bit 4,(ix+00dh)		;8bd6
	jp nz,0ac2fh		;8bda
	ld a,(ix+005h)		;8bdd
	add a,(ix+014h)		;8be0
	ld d,a			;8be3
	ld e,(ix+004h)		;8be4
	ld a,(ix+010h)		;8be7
	call 0aba6h		;8bea
	add hl,de		;8bed
	call 0abb0h		;8bee
	push hl			;8bf1
	ld a,(ix+007h)		;8bf2
	add a,(ix+015h)		;8bf5
	ld d,a			;8bf8
	ld e,(ix+006h)		;8bf9
	ld a,(ix+011h)		;8bfc
	call 0aba6h		;8bff
	add hl,de		;8c02
	call 0abb0h		;8c03
	pop de			;8c06
	ld e,h			;8c07
	push de			;8c08
	push af			;8c09
	ld h,(ix+00eh)		;8c0a
	ld l,(ix+00fh)		;8c0d
	pop af			;8c10
	pop de			;8c11
	ld b,(ix+012h)		;8c12
	ld c,(ix+013h)		;8c15
	bit 5,(ix+00dh)		;8c18
	jr z,l8c23h		;8c1c
	set 6,a			;8c1e
	jp 0ad86h		;8c20
l8c23h:
	bit 2,(ix+00dh)		;8c23
	jp nz,0ad86h		;8c27
	set 7,a			;8c2a
	jp 0ad86h		;8c2c
	push ix			;8c2f
	pop iy			;8c31
	call 0ad76h		;8c33
	ld a,(iy+017h)		;8c36
	sub (iy+007h)		;8c39
	inc a			;8c3c
	inc a			;8c3d
	ld (ix+013h),a		;8c3e
	call 0abddh		;8c41
	call 0ad76h		;8c44
	ld a,(iy+007h)		;8c47
	inc a			;8c4a
	ld (ix+013h),a		;8c4b
	ld a,(iy+00fh)		;8c4e
	add a,(iy+013h)		;8c51
	sub (iy+007h)		;8c54
	dec a			;8c57
	ld (ix+00fh),a		;8c58
	ld l,(iy+006h)		;8c5b
	ld h,0ffh		;8c5e
	ld (ix+007h),h		;8c60
	ld (ix+006h),l		;8c63
	call 0abddh		;8c66
	push iy			;8c69
	pop ix			;8c6b
	ret			;8c6d
	push ix			;8c6e
	pop iy			;8c70
	call 0ad76h		;8c72
	ld a,(iy+016h)		;8c75
	sub (iy+005h)		;8c78
	inc a			;8c7b
	inc a			;8c7c
	ld (ix+012h),a		;8c7d
	call 0abddh		;8c80
	call 0ad76h		;8c83
	ld a,(iy+005h)		;8c86
	inc a			;8c89
	ld (ix+012h),a		;8c8a
	ld a,(iy+00eh)		;8c8d
	add a,(iy+012h)		;8c90
	sub (iy+005h)		;8c93
	dec a			;8c96
	ld (ix+00eh),a		;8c97
	ld l,(iy+004h)		;8c9a
	ld h,0ffh		;8c9d
	ld (ix+005h),h		;8c9f
	ld (ix+004h),l		;8ca2
	call 0abddh		;8ca5
	push iy			;8ca8
	pop ix			;8caa
	ret			;8cac
	push ix			;8cad
	pop iy			;8caf
	call 0ad76h		;8cb1
	ld a,(iy+016h)		;8cb4
	sub (iy+005h)		;8cb7
	inc a			;8cba
	inc a			;8cbb
	ld (ix+012h),a		;8cbc
	ld a,(iy+017h)		;8cbf
	sub (iy+007h)		;8cc2
	inc a			;8cc5
	inc a			;8cc6
	ld (ix+013h),a		;8cc7
	call 0abddh		;8cca
	call 0ad76h		;8ccd
	ld a,(iy+016h)		;8cd0
	sub (iy+005h)		;8cd3
	inc a			;8cd6
	inc a			;8cd7
	ld (ix+012h),a		;8cd8
	ld a,(iy+007h)		;8cdb
	inc a			;8cde
	ld (ix+013h),a		;8cdf
	ld a,(iy+00fh)		;8ce2
	add a,(iy+013h)		;8ce5
	sub (iy+007h)		;8ce8
	dec a			;8ceb
	ld (ix+00fh),a		;8cec
	ld l,(iy+006h)		;8cef
	ld h,0ffh		;8cf2
	ld (ix+007h),h		;8cf4
	ld (ix+006h),l		;8cf7
	call 0abddh		;8cfa
	call 0ad76h		;8cfd
	ld a,(iy+005h)		;8d00
	inc a			;8d03
	ld (ix+012h),a		;8d04
	ld a,(iy+00eh)		;8d07
	add a,(iy+012h)		;8d0a
	sub (iy+005h)		;8d0d
	dec a			;8d10
	ld (ix+00eh),a		;8d11
	ld l,(iy+004h)		;8d14
	ld h,0ffh		;8d17
	ld (ix+005h),h		;8d19
	ld (ix+004h),l		;8d1c
	ld a,(iy+017h)		;8d1f
	sub (iy+007h)		;8d22
	inc a			;8d25
	inc a			;8d26
	ld (ix+013h),a		;8d27
	call 0abddh		;8d2a
	call 0ad76h		;8d2d
	ld a,(iy+005h)		;8d30
	inc a			;8d33
	ld (ix+012h),a		;8d34
	ld a,(iy+00eh)		;8d37
	add a,(iy+012h)		;8d3a
	sub (iy+005h)		;8d3d
	dec a			;8d40
	ld (ix+00eh),a		;8d41
	ld l,(iy+004h)		;8d44
	ld h,0ffh		;8d47
	ld (ix+005h),h		;8d49
	ld (ix+004h),l		;8d4c
	ld a,(iy+007h)		;8d4f
	inc a			;8d52
	ld (ix+013h),a		;8d53
	ld a,(iy+00fh)		;8d56
	add a,(iy+013h)		;8d59
	sub (iy+007h)		;8d5c
	dec a			;8d5f
	ld (ix+00fh),a		;8d60
	ld l,(iy+006h)		;8d63
	ld h,0ffh		;8d66
	ld (ix+007h),h		;8d68
	ld (ix+006h),l		;8d6b
	call 0abddh		;8d6e
	push iy			;8d71
	pop ix			;8d73
	ret			;8d75
	push iy			;8d76
	pop hl			;8d78
	ld ix,0e0c0h		;8d79
	ld de,0e0c0h		;8d7d
	ld bc,00020h		;8d80
	ldir			;8d83
	ret			;8d85
	push de			;8d86
	push af			;8d87
	ld a,b			;8d88
	add a,a			;8d89
	add a,a			;8d8a
	add a,a			;8d8b
	ld b,a			;8d8c
	ld a,c			;8d8d
	add a,a			;8d8e
	add a,a			;8d8f
	add a,a			;8d90
	ld c,a			;8d91
	ld a,l			;8d92
	ld d,a			;8d93
	add a,a			;8d94
	add a,a			;8d95
	add a,a			;8d96
	ld l,a			;8d97
	ld a,d			;8d98
	and 060h		;8d99
	add a,a			;8d9b
	push af			;8d9c
	ld a,h			;8d9d
	add a,a			;8d9e
	add a,a			;8d9f
	add a,a			;8da0
	ld h,a			;8da1
	pop af			;8da2
	pop de			;8da3
	bit 6,d			;8da4
	jr nz,l8dbeh		;8da6
	rlc d			;8da8
	rlc d			;8daa
	rlc d			;8dac
	rlc d			;8dae
	or d			;8db0
	pop de			;8db1
	push ix			;8db2
	push iy			;8db4
	call 0487ch		;8db6
	pop iy			;8db9
	pop ix			;8dbb
	ret			;8dbd
l8dbeh:
	or d			;8dbe
	rlca			;8dbf
	rlca			;8dc0
	and 00fh		;8dc1
	pop de			;8dc3
	push ix			;8dc4
	push iy			;8dc6
	call 04838h		;8dc8
	pop iy			;8dcb
	pop ix			;8dcd
	ret			;8dcf
	ld a,(ix+003h)		;8dd0
	and 007h		;8dd3
	ld h,a			;8dd5
	ld a,(ix+004h)		;8dd6
	ld d,a			;8dd9
	and 01fh		;8dda
	ld e,a			;8ddc
	xor d			;8ddd
	ld d,000h		;8dde
	ld l,a			;8de0
	add hl,hl		;8de1
	add hl,hl		;8de2
	add hl,hl		;8de3
	add hl,de		;8de4
	add hl,hl		;8de5
	add hl,hl		;8de6
	ld de,06000h		;8de7
	add hl,de		;8dea
	ex de,hl		;8deb
	ld h,(ix+002h)		;8dec
	ld l,(ix+001h)		;8def
	ld a,(ix+000h)		;8df2
	and 01fh		;8df5
	call 0ae07h		;8df7
	ld a,c			;8dfa
	call 04c0eh		;8dfb
	ld a,(ix+005h)		;8dfe
	sub (ix+004h)		;8e01
	inc a			;8e04
	ld b,a			;8e05
	ret			;8e06
	ld c,a			;8e07
	ld a,h			;8e08
	add a,020h		;8e09
	ld h,a			;8e0b
l8e0ch:
	cp 080h			;8e0c
	ret c			;8e0e
	sub 020h		;8e0f
	ld h,a			;8e11
	inc c			;8e12
	jr l8e0ch		;8e13
	call 047d2h		;8e15
l8e18h:
	ld a,(ix+000h)		;8e18
	or a			;8e1b
	ret z			;8e1c
	call 0ae27h		;8e1d
	ld de,00006h		;8e20
	add ix,de		;8e23
	jr l8e18h		;8e25
	ld a,(ix+000h)		;8e27
	and 007h		;8e2a
	ret z			;8e2c
	dec a			;8e2d
	dec a			;8e2e
	jr z,l8e4fh		;8e2f
	dec a			;8e31
	jp z,0ae66h		;8e32
	jp p,0ae7dh		;8e35
	ld b,001h		;8e38
	call 0ae8ch		;8e3a
	ld de,00002h		;8e3d
	add ix,de		;8e40
	call 0add0h		;8e42
	bit 7,(ix+000h)		;8e45
	jp nz,0af24h		;8e49
	jp 0af0eh		;8e4c
l8e4fh:
	ld b,002h		;8e4f
	call 0ae8ch		;8e51
	ld de,00003h		;8e54
	add ix,de		;8e57
	call 0add0h		;8e59
	bit 7,(ix+000h)		;8e5c
	jp nz,0af7dh		;8e60
	jp 0af67h		;8e63
	ld b,004h		;8e66
	call 0ae8ch		;8e68
	ld de,00005h		;8e6b
	add ix,de		;8e6e
	call 0add0h		;8e70
	bit 7,(ix+000h)		;8e73
	jp nz,0afdeh		;8e77
	jp 0afc8h		;8e7a
	inc ix			;8e7d
	call 0add0h		;8e7f
	bit 7,(ix+000h)		;8e82
	jp nz,0b058h		;8e86
	jp 0493dh		;8e89
	push ix			;8e8c
	pop hl			;8e8e
	inc hl			;8e8f
	ld de,0ca00h		;8e90
l8e93h:
	ld a,(hl)		;8e93
	ld c,a			;8e94
	rrca			;8e95
	rrca			;8e96
	rrca			;8e97
	rrca			;8e98
	and 00fh		;8e99
	ld (de),a		;8e9b
	inc hl			;8e9c
	inc de			;8e9d
	ld a,c			;8e9e
	and 00fh		;8e9f
	ld (de),a		;8ea1
	inc de			;8ea2
	djnz l8e93h		;8ea3
	ret			;8ea5
	call 04c0eh		;8ea6
	ld de,02000h		;8ea9
	add hl,de		;8eac
	ld de,00040h		;8ead
l8eb0h:
	ld c,(hl)		;8eb0
	inc hl			;8eb1
	ld b,(hl)		;8eb2
	inc hl			;8eb3
	ld a,b			;8eb4
	and c			;8eb5
	inc a			;8eb6
	ret z			;8eb7
	inc a			;8eb8
	jr z,l8ec2h		;8eb9
	push hl			;8ebb
	push de			;8ebc
	call 0aeceh		;8ebd
	pop de			;8ec0
	pop hl			;8ec1
l8ec2h:
	ld a,d			;8ec2
	inc a			;8ec3
	ld d,a			;8ec4
	cp 020h			;8ec5
	jr nz,l8eb0h		;8ec7
	ld d,000h		;8ec9
	inc e			;8ecb
	jr l8eb0h		;8ecc
	push de			;8ece
	call 0aed7h		;8ecf
	pop de			;8ed2
	call 0aef0h		;8ed3
	ret			;8ed6
	ld a,c			;8ed7
	ld h,a			;8ed8
	and 0e0h		;8ed9
	rr b			;8edb
	rra			;8edd
	rr b			;8ede
	rra			;8ee0
	rr b			;8ee1
	rra			;8ee3
	rrca			;8ee4
	rrca			;8ee5
	and 03fh		;8ee6
	add a,018h		;8ee8
	ld l,a			;8eea
	ld a,h			;8eeb
	and 01fh		;8eec
	ld h,a			;8eee
	ret			;8eef
	push hl			;8ef0
	ld a,e			;8ef1
	ld h,a			;8ef2
	add a,a			;8ef3
	add a,a			;8ef4
	add a,a			;8ef5
	ld e,a			;8ef6
	ld a,h			;8ef7
	and 060h		;8ef8
	rlca			;8efa
	rlca			;8efb
	rlca			;8efc
	res 7,a			;8efd
	push af			;8eff
	ld a,d			;8f00
	add a,a			;8f01
	add a,a			;8f02
	add a,a			;8f03
	ld d,a			;8f04
	pop af			;8f05
	pop hl			;8f06
	ld bc,00101h		;8f07
	call 0ad86h		;8f0a
	ret			;8f0d
	push bc			;8f0e
	push de			;8f0f
	exx			;8f10
	ld hl,0cb00h		;8f11
	exx			;8f14
l8f15h:
	push bc			;8f15
	call 0af3ah		;8f16
	pop bc			;8f19
	djnz l8f15h		;8f1a
	pop de			;8f1c
	pop bc			;8f1d
	ld hl,0cb00h		;8f1e
	jp 0493dh		;8f21
	push bc			;8f24
	push de			;8f25
	exx			;8f26
	ld hl,0cb00h		;8f27
	exx			;8f2a
l8f2bh:
	push bc			;8f2b
	call 0af3ah		;8f2c
	pop bc			;8f2f
	djnz l8f2bh		;8f30
	pop de			;8f32
	pop bc			;8f33
	ld hl,0cb00h		;8f34
	jp 0b058h		;8f37
	ld b,008h		;8f3a
l8f3ch:
	ld e,(hl)		;8f3c
	inc hl			;8f3d
	push bc			;8f3e
	call 0af46h		;8f3f
	pop bc			;8f42
	djnz l8f3ch		;8f43
	ret			;8f45
	ld b,004h		;8f46
l8f48h:
	xor a			;8f48
	rl e			;8f49
	rla			;8f4b
	exx			;8f4c
	ld e,a			;8f4d
	ld d,0cah		;8f4e
	ld a,(de)		;8f50
	add a,a			;8f51
	add a,a			;8f52
	add a,a			;8f53
	add a,a			;8f54
	ld c,a			;8f55
	exx			;8f56
	xor a			;8f57
	rl e			;8f58
	rla			;8f5a
	exx			;8f5b
	ld e,a			;8f5c
	ld d,0cah		;8f5d
	ld a,(de)		;8f5f
	or c			;8f60
	ld (hl),a		;8f61
	inc hl			;8f62
	exx			;8f63
	djnz l8f48h		;8f64
	ret			;8f66
	push bc			;8f67
	push de			;8f68
	exx			;8f69
	ld hl,0cb00h		;8f6a
	exx			;8f6d
l8f6eh:
	push bc			;8f6e
	call 0af93h		;8f6f
	pop bc			;8f72
	djnz l8f6eh		;8f73
	pop de			;8f75
	pop bc			;8f76
	ld hl,0cb00h		;8f77
	jp 0493dh		;8f7a
	push bc			;8f7d
	push de			;8f7e
	exx			;8f7f
	ld hl,0cb00h		;8f80
	exx			;8f83
l8f84h:
	push bc			;8f84
	call 0af93h		;8f85
	pop bc			;8f88
	djnz l8f84h		;8f89
	pop de			;8f8b
	pop bc			;8f8c
	ld hl,0cb00h		;8f8d
	jp 0b058h		;8f90
	ld b,008h		;8f93
l8f95h:
	push bc			;8f95
	call 0af9dh		;8f96
	pop bc			;8f99
	djnz l8f95h		;8f9a
	ret			;8f9c
	ld b,004h		;8f9d
	ld e,(hl)		;8f9f
	inc hl			;8fa0
	ld d,(hl)		;8fa1
	inc hl			;8fa2
l8fa3h:
	xor a			;8fa3
	rl d			;8fa4
	rla			;8fa6
	rl e			;8fa7
	rla			;8fa9
	exx			;8faa
	ld e,a			;8fab
	ld d,0cah		;8fac
	ld a,(de)		;8fae
	add a,a			;8faf
	add a,a			;8fb0
	add a,a			;8fb1
	add a,a			;8fb2
	ld c,a			;8fb3
	exx			;8fb4
	xor a			;8fb5
	rl d			;8fb6
	rla			;8fb8
	rl e			;8fb9
	rla			;8fbb
	exx			;8fbc
	ld e,a			;8fbd
	ld d,0cah		;8fbe
	ld a,(de)		;8fc0
	or c			;8fc1
	ld (hl),a		;8fc2
	inc hl			;8fc3
	exx			;8fc4
	djnz l8fa3h		;8fc5
	ret			;8fc7
	push bc			;8fc8
	push de			;8fc9
	exx			;8fca
	ld hl,0cb00h		;8fcb
	exx			;8fce
l8fcfh:
	push bc			;8fcf
	call 0aff4h		;8fd0
	pop bc			;8fd3
	djnz l8fcfh		;8fd4
	pop de			;8fd6
	pop bc			;8fd7
	ld hl,0cb00h		;8fd8
	jp 0493dh		;8fdb
	push bc			;8fde
	push de			;8fdf
	exx			;8fe0
	ld hl,0cb00h		;8fe1
	exx			;8fe4
l8fe5h:
	push bc			;8fe5
	call 0aff4h		;8fe6
	pop bc			;8fe9
	djnz l8fe5h		;8fea
	pop de			;8fec
	pop bc			;8fed
	ld hl,0cb00h		;8fee
	jp 0b058h		;8ff1
	ld b,008h		;8ff4
l8ff6h:
	push bc			;8ff6
	call 0affeh		;8ff7
	pop bc			;8ffa
	djnz l8ff6h		;8ffb
	ret			;8ffd
	ld b,004h		;8ffe
	ld e,(hl)		;9000
	inc hl			;9001
	ld d,(hl)		;9002
	inc hl			;9003
	ld c,(hl)		;9004
	inc hl			;9005
l9006h:
	xor a			;9006
	rl c			;9007
	rla			;9009
	rl d			;900a
	rla			;900c
l900dh:
	rl e			;900d
	rla			;900f
l9010h:
	exx			;9010
	ld e,a			;9011
	ld d,0cah		;9012
	ld a,(de)		;9014
	add a,a			;9015
	add a,a			;9016
	add a,a			;9017
	add a,a			;9018
	ld c,a			;9019
	exx			;901a
	xor a			;901b
	rl c			;901c
	rla			;901e
	rl d			;901f
	rla			;9021
	rl e			;9022
	rla			;9024
	exx			;9025
	ld e,a			;9026
	ld d,0cah		;9027
	ld a,(de)		;9029
	or c			;902a
	ld (hl),a		;902b
	inc hl			;902c
	exx			;902d
	djnz l9006h		;902e
	ret			;9030
	push de			;9031
	ld a,(00007h)		;9032
	ld c,a			;9035
	ld b,008h		;9036
l9038h:
	push bc			;9038
	ex de,hl		;9039
	xor a			;903a
	call 046f0h		;903b
	ex de,hl		;903e
	ld b,004h		;903f
l9041h:
	ld a,(hl)		;9041
	dec hl			;9042
	rrca			;9043
	rrca			;9044
	rrca			;9045
	rrca			;9046
	out (c),a		;9047
	djnz l9041h		;9049
	ld c,008h		;904b
	add hl,bc		;904d
	ex de,hl		;904e
	ld c,080h		;904f
	add hl,bc		;9051
	ex de,hl		;9052
	pop bc			;9053
	djnz l9038h		;9054
	pop de			;9056
	ret			;9057
	inc hl			;9058
	inc hl			;9059
	inc hl			;905a
l905bh:
	push bc			;905b
	call 0b031h		;905c
	ld a,004h		;905f
	add a,e			;9061
	cp 080h			;9062
	jr nz,l906bh		;9064
	ld a,004h		;9066
	add a,d			;9068
	ld d,a			;9069
	xor a			;906a
l906bh:
	ld e,a			;906b
	pop bc			;906c
	djnz l905bh		;906d
	ret			;906f
	rst 38h			;9070
	rst 38h			;9071
	rst 38h			;9072
	rst 38h			;9073
	nop			;9074
	nop			;9075
	nop			;9076
	nop			;9077
	ld bc,00100h		;9078
	nop			;907b
	ld (bc),a		;907c
	nop			;907d
	ld (bc),a		;907e
	nop			;907f
	inc bc			;9080
	nop			;9081
	inc bc			;9082
	nop			;9083
	inc b			;9084
	nop			;9085
	inc b			;9086
	nop			;9087
	dec b			;9088
	nop			;9089
	dec b			;908a
	nop			;908b
	ld b,000h		;908c
	ld b,000h		;908e
	rlca			;9090
	nop			;9091
	rlca			;9092
	nop			;9093
	ex af,af'		;9094
	nop			;9095
	ex af,af'		;9096
	nop			;9097
	add hl,bc		;9098
	nop			;9099
	add hl,bc		;909a
	nop			;909b
	ld a,(bc)		;909c
	nop			;909d
	ld a,(bc)		;909e
	nop			;909f
	nop			;90a0
	ld bc,00201h		;90a1
	nop			;90a4
	inc bc			;90a5
	ld bc,00004h		;90a6
	dec b			;90a9
	ld bc,00006h		;90aa
	rlca			;90ad
	ld bc,00008h		;90ae
	add hl,bc		;90b1
	ld bc,0000ah		;90b2
	dec bc			;90b5
	nop			;90b6
	inc c			;90b7
	ld bc,0010bh		;90b8
	inc c			;90bb
	nop			;90bc
	dec c			;90bd
	ld bc,0000eh		;90be
	rrca			;90c1
	nop			;90c2
	djnz l90dah		;90c3
	dec h			;90c5
	rra			;90c6
	ccf			;90c7
	dec d			;90c8
	jr nz,l90eah		;90c9
	add hl,hl		;90cb
	ld d,004h		;90cc
	rra			;90ce
	inc c			;90cf
	ld d,001h		;90d0
	ld a,(de)		;90d2
	inc bc			;90d3
	inc e			;90d4
	nop			;90d5
	ld e,003h		;90d6
	dec d			;90d8
	add hl,de		;90d9
l90dah:
	add hl,de		;90da
	dec de			;90db
	dec d			;90dc
	inc e			;90dd
	inc e			;90de
	ld e,01ah		;90df
	ld a,(de)		;90e1
	inc e			;90e2
	dec de			;90e3
	dec e			;90e4
	inc e			;90e5
	rra			;90e6
	ld e,01dh		;90e7
	ld a,(de)		;90e9
l90eah:
	ld e,01bh		;90ea
	rra			;90ec
	dec de			;90ed
	rra			;90ee
	dec de			;90ef
	ld (bc),a		;90f0
	ld bc,00c15h		;90f1
	ld (bc),a		;90f4
	dec c			;90f5
	dec d			;90f6
	jr l910fh		;90f7
	dec c			;90f9
	rra			;90fa
	jr l90feh		;90fb
	add hl,de		;90fd
l90feh:
	ld a,(bc)		;90fe
	rra			;90ff
	ld bc,01421h		;9100
	inc l			;9103
	ld c,021h		;9104
	inc d			;9106
	inc l			;9107
	rlca			;9108
	ld hl,02c14h		;9109
	nop			;910c
	dec l			;910d
	inc de			;910e
l910fh:
	scf			;910f
	dec bc			;9110
	add hl,de		;9111
	inc d			;9112
	rra			;9113
	nop			;9114
	jr c,l911bh		;9115
	dec sp			;9117
	dec b			;9118
	jr c,l9120h		;9119
l911bh:
	jr c,l9122h		;911b
	add hl,sp		;911d
	dec b			;911e
	add hl,sp		;911f
l9120h:
	ld b,038h		;9120
l9122h:
	ld b,038h		;9122
	ld b,039h		;9124
	ld b,039h		;9126
	nop			;9128
	inc a			;9129
	nop			;912a
	inc a			;912b
	rlca			;912c
	jr c,$+9		;912d
	add hl,sp		;912f
	nop			;9130
	dec a			;9131
	nop			;9132
	ccf			;9133
	ld bc,0013ch		;9134
	ccf			;9137
	ld (bc),a		;9138
	inc a			;9139
	inc b			;913a
	ccf			;913b
	ex af,af'		;913c
	add hl,sp		;913d
	ld a,(bc)		;913e
	dec sp			;913f
	dec b			;9140
	ld a,(03b07h)		;9141
	dec b			;9144
	inc a			;9145
	rlca			;9146
	ld a,018h		;9147
	ld (02218h),hl		;9149
	rla			;914c
	ld (02217h),hl		;914d
	add hl,de		;9150
	ld hl,02119h		;9151
	add hl,de		;9154
	jr nz,l9170h		;9155
	jr nz,l9171h		;9157
	jr nz,$+26		;9159
	ld hl,0201ah		;915b
	ld a,(de)		;915e
	ld hl,02017h		;915f
	rla			;9162
	ld hl,02016h		;9163
	ld d,021h		;9166
	dec d			;9168
	jr nz,$+23		;9169
	ld hl,02216h		;916b
	ld d,023h		;916e
l9170h:
	dec d			;9170
l9171h:
	ld (02315h),hl		;9171
	dec e			;9174
	jr nz,l9194h		;9175
	jr nz,$+30		;9177
	ld (0231ch),hl		;9179
	inc e			;917c
	jr nz,l919bh		;917d
	ld hl,0221dh		;917f
	dec e			;9182
	inc hl			;9183
	ld e,021h		;9184
	ld e,022h		;9186
	rra			;9188
	jr nz,l91aah		;9189
	ld hl,0231eh		;918b
	rra			;918e
	inc h			;918f
	rra			;9190
	inc hl			;9191
	rra			;9192
	inc h			;9193
l9194h:
	ld bc,01401h		;9194
	inc c			;9197
	ld bc,0140dh		;9198
l919bh:
	jr $+24			;919b
	djnz $+33		;919d
	dec de			;919f
	dec d			;91a0
	nop			;91a1
	inc e			;91a2
	rlca			;91a3
	inc e			;91a4
	ex af,af'		;91a5
	rra			;91a6
	dec bc			;91a7
	dec e			;91a8
	dec b			;91a9
l91aah:
	rra			;91aa
	rlca			;91ab
	dec e			;91ac
	inc bc			;91ad
	ld e,004h		;91ae
	dec e			;91b0
	ld bc,0021eh		;91b1
	dec e			;91b4
	ld bc,0011dh		;91b5
	rra			;91b8
	ld bc,0011eh		;91b9
	rra			;91bc
	ld bc,0011fh		;91bd
	dec d			;91c0
	ex af,af'		;91c1
	add hl,de		;91c2
	rrca			;91c3
	nop			;91c4
	add hl,de		;91c5
	ld b,01fh		;91c6
	rlca			;91c8
	add hl,de		;91c9
	dec c			;91ca
	rra			;91cb
	ld c,019h		;91cc
	ld de,0121ch		;91ce
	add hl,de		;91d1
	dec d			;91d2
	inc e			;91d3
	ld c,01dh		;91d4
	rrca			;91d6
	ld e,010h		;91d7
	dec e			;91d9
	djnz $+32		;91da
	ld de,0131dh		;91dc
	ld e,018h		;91df
	inc e			;91e1
	dec de			;91e2
	inc hl			;91e3
	inc e			;91e4
	inc e			;91e5
	rra			;91e6
	inc hl			;91e7
	inc d			;91e8
	rra			;91e9
	rla			;91ea
	ld h,010h		;91eb
	rra			;91ed
	inc de			;91ee
	ld h,00ch		;91ef
	jr nz,$+17		;91f1
	daa			;91f3
	inc b			;91f4
	jr nz,$+13		;91f5
	daa			;91f7
	nop			;91f8
	jr z,l91ffh		;91f9
	jr z,l91fdh		;91fb
l91fdh:
	add hl,hl		;91fd
	ex af,af'		;91fe
l91ffh:
	add hl,hl		;91ff
	nop			;9200
	ld hl,(02a07h)		;9201
	nop			;9204
	dec hl			;9205
	add hl,bc		;9206
	dec hl			;9207
	nop			;9208
	inc l			;9209
	ld a,(bc)		;920a
	inc l			;920b
	nop			;920c
	dec l			;920d
	add hl,bc		;920e
	dec l			;920f
	nop			;9210
	ld l,00ah		;9211
	ld l,000h		;9213
	cpl			;9215
	rlca			;9216
	cpl			;9217
	nop			;9218
	jr nc,l9221h		;9219
	jr nc,l921dh		;921b
l921dh:
	ld sp,03107h		;921d
	nop			;9220
l9221h:
	ld (03207h),a		;9221
	nop			;9224
	inc sp			;9225
	ld b,033h		;9226
	nop			;9228
	inc (hl)		;9229
	add hl,bc		;922a
	inc (hl)		;922b
	nop			;922c
	dec (hl)		;922d
	ld b,035h		;922e
	nop			;9230
	ld (hl),007h		;9231
	ld (hl),000h		;9233
	scf			;9235
	rrca			;9236
	scf			;9237
	nop			;9238
	jr c,$+10		;9239
	jr c,l923dh		;923b
l923dh:
	add hl,sp		;923d
	rlca			;923e
	add hl,sp		;923f
	nop			;9240
	ld a,(03a08h)		;9241
	nop			;9244
	dec sp			;9245
	ld bc,0003bh		;9246
	inc a			;9249
	dec b			;924a
	inc a			;924b
	nop			;924c
	dec a			;924d
	inc c			;924e
	dec a			;924f
	ex af,af'		;9250
	jr c,l9267h		;9251
	jr c,l9255h		;9253
l9255h:
	jr nz,l9266h		;9255
	jr nz,$+10		;9257
	inc a			;9259
	ld de,0053ch		;925a
	ccf			;925d
	inc d			;925e
	ccf			;925f
	ld bc,00a0eh		;9260
	ld hl,(0048ch)		;9263
l9266h:
	xor l			;9266
l9267h:
	xor l			;9267
	ld bc,00a0eh		;9268
	jp nz,001bch		;926b
	ret pe			;926e
	jp p,02302h		;926f
	ld b,l			;9272
	ld a,(bc)		;9273
	ld (de),a		;9274
	ld (hl),a		;9275
	nop			;9276
	nop			;9277
	ld a,a			;9278
	ld (bc),a		;9279
	inc hl			;927a
	ld b,l			;927b
	ld a,(bc)		;927c
	ld (bc),a		;927d
	ld h,l			;927e
	ld bc,0c300h		;927f
	ld (bc),a		;9282
	inc hl			;9283
	ld b,l			;9284
	ld a,(bc)		;9285
	ld (de),a		;9286
	ld a,a			;9287
	nop			;9288
	add a,b			;9289
	rst 38h			;928a
	ld (bc),a		;928b
	ld l,b			;928c
	rst 28h			;928d
	ld a,(bc)		;928e
	ld (de),a		;928f
	add a,a			;9290
	ld bc,0cbc4h		;9291
	ld (bc),a		;9294
	ld h,a			;9295
	ret p			;9296
	ld a,(bc)		;9297
	sub d			;9298
	add a,a			;9299
	ld bc,0d7cch		;929a
	ld (bc),a		;929d
	ld a,(bc)		;929e
	ret po			;929f
	ld a,(bc)		;92a0
	ld b,d			;92a1
	cp h			;92a2
	inc b			;92a3
	ret c			;92a4
	rst 18h			;92a5
	ld (bc),a		;92a6
	dec bc			;92a7
	call 0520ah		;92a8
	adc a,b			;92ab
	ld bc,0fff3h		;92ac
	ld (bc),a		;92af
	dec bc			;92b0
	call 0420ah		;92b1
	ld (hl),c		;92b4
	ld (bc),a		;92b5
	nop			;92b6
	ld de,00902h		;92b7
	xor a			;92ba
	ld a,(bc)		;92bb
	and d			;92bc
	adc a,d			;92bd
	inc bc			;92be
	push de			;92bf
	ret pe			;92c0
	ld (bc),a		;92c1
	add hl,bc		;92c2
	xor a			;92c3
	adc a,d			;92c4
	and d			;92c5
	adc a,d			;92c6
	inc bc			;92c7
	jp (hl)			;92c8
	call m,00103h		;92c9
	inc hl			;92cc
	ld b,l			;92cd
	nop			;92ce
	ld a,(bc)		;92cf
	ld h,d			;92d0
	ld (hl),d		;92d1
	ld (bc),a		;92d2
	ld (de),a		;92d3
	ld (hl),003h		;92d4
	ld b,078h		;92d6
	rst 28h			;92d8
	nop			;92d9
	ld a,(bc)		;92da
	jp c,00275h		;92db
	scf			;92de
	ld b,e			;92df
	inc bc			;92e0
	ld bc,0deach		;92e1
	ret p			;92e4
	ld a,(bc)		;92e5
	jp pe,004b9h		;92e6
	ret nz			;92e9
	ret c			;92ea
	inc bc			;92eb
	ld b,078h		;92ec
	sbc a,(hl)		;92ee
	ret p			;92ef
	ld a,(bc)		;92f0
	ld (00389h),hl		;92f1
	nop			;92f4
	inc bc			;92f5
	inc bc			;92f6
	dec bc			;92f7
	call 000efh		;92f8
	ld a,(bc)		;92fb
	add a,d			;92fc
	adc a,c			;92fd
	inc bc			;92fe
	inc b			;92ff
	inc d			;9300
	inc bc			;9301
	ld b,078h		;9302
	rst 28h			;9304
	nop			;9305
	ld a,(bc)		;9306
	jp po,0038bh		;9307
	defb 0fdh,0ffh,003h ;illegal sequence	;930a
	ld b,078h		;930d
	rst 28h			;930f
	nop			;9310
	adc a,d			;9311
	jp po,0048bh		;9312
	ld d,l			;9315
	ld d,a			;9316
	inc bc			;9317
	dec bc			;9318
	call 000e0h		;9319
	ld a,(bc)		;931c
	ld (0048ch),a		;931d
	or b			;9320
	or l			;9321
	inc bc			;9322
	dec bc			;9323
	call 000f0h		;9324
	ld a,(bc)		;9327
	jp nz,0048ch		;9328
	cp h			;932b
	cp a			;932c
	inc bc			;932d
	dec bc			;932e
	call 000e0h		;932f
	ld a,(bc)		;9332
	and d			;9333
	or b			;9334
	inc b			;9335
	or (hl)			;9336
	cp e			;9337
	inc bc			;9338
	ld (hl),078h		;9339
	sbc a,(hl)		;933b
	ret p			;933c
	ld a,(bc)		;933d
	ld (003b1h),a		;933e
	cp e			;9341
	call nc,00203h		;9342
	ld h,a			;9345
	adc a,c			;9346
	rst 28h			;9347
	ld a,(bc)		;9348
	and d			;9349
	or e			;934a
	inc b			;934b
	nop			;934c
	ld hl,(00203h)		;934d
	ld h,a			;9350
	adc a,c			;9351
	rst 28h			;9352
	adc a,d			;9353
	and d			;9354
	or e			;9355
	inc b			;9356
	ld e,b			;9357
	add a,d			;9358
	inc bc			;9359
	ld b,078h		;935a
	rst 28h			;935c
	nop			;935d
	ld a,(bc)		;935e
	xor d			;935f
	or a			;9360
	inc b			;9361
	dec a			;9362
	ld d,h			;9363
	inc bc			;9364
	ld b,078h		;9365
	rst 28h			;9367
	nop			;9368
	adc a,d			;9369
	xor d			;936a
	or a			;936b
	inc b			;936c
	sub l			;936d
	xor h			;936e
	inc b			;936f
	ld a,(bc)		;9370
	ld (0028dh),hl		;9371
	add a,e			;9374
	rst 38h			;9375
	inc b			;9376
	ld a,(bc)		;9377
	jp nz,0039ch		;9378
	dec d			;937b
	or e			;937c
	nop			;937d
	ld bc,0150fh		;937e
	ld l,h			;9381
	ld l,d			;9382
	nop			;9383
	adc a,c			;9384
	adc a,l			;9385
	ld (bc),a		;9386
	ld (bc),a		;9387
	ccf			;9388
	dec d			;9389
	call po,00068h		;938a
	ld (hl),h		;938d
	add a,c			;938e
	ld (bc),a		;938f
	dec c			;9390
	rst 28h			;9391
	dec d			;9392
	sub h			;9393
	ld l,d			;9394
	nop			;9395
	adc a,(hl)		;9396
	sub l			;9397
	ld (bc),a		;9398
	inc b			;9399
	cp a			;939a
	dec d			;939b
	inc d			;939c
	ld l,e			;939d
	nop			;939e
	sub (hl)		;939f
	and c			;93a0
	ld (bc),a		;93a1
	ld l,b			;93a2
	rst 28h			;93a3
	ld a,(bc)		;93a4
	ld (de),a		;93a5
	add a,a			;93a6
	nop			;93a7
	di			;93a8
	jp m,02302h		;93a9
	ld b,l			;93ac
	ld a,(bc)		;93ad
	ld (de),a		;93ae
	ld a,a			;93af
	ld bc,07f00h		;93b0
	ld (bc),a		;93b3
	inc hl			;93b4
	ld b,l			;93b5
	ld a,(bc)		;93b6
	ld (bc),a		;93b7
	ld h,l			;93b8
	ld (bc),a		;93b9
	nop			;93ba
	jp 00103h		;93bb
	inc hl			;93be
	ld b,l			;93bf
	nop			;93c0
	ld a,(bc)		;93c1
	ld h,d			;93c2
	ld (hl),d		;93c3
	nop			;93c4
	adc a,0f2h		;93c5
	inc bc			;93c7
	ld bc,0cd7ah		;93c8
	rst 28h			;93cb
	dec d			;93cc
	inc b			;93cd
	ld e,(hl)		;93ce
	nop			;93cf
	nop			;93d0
	add hl,sp		;93d1
	inc bc			;93d2
	ld b,078h		;93d3
	cp l			;93d5
	rst 28h			;93d6
	dec d			;93d7
	ld (hl),h		;93d8
	ld h,e			;93d9
	nop			;93da
	ld a,(00352h)		;93db
	ld bc,0cd9ah		;93de
	rst 28h			;93e1
	dec d			;93e2
	call z,00065h		;93e3
	ld d,e			;93e6
	ld h,e			;93e7
	inc bc			;93e8
	ld b,078h		;93e9
	cp l			;93eb
	rst 28h			;93ec
	dec d			;93ed
	ld h,h			;93ee
	ld h,a			;93ef
	nop			;93f0
	ld h,h			;93f1
	ld (hl),e		;93f2
	inc bc			;93f3
	ld (bc),a		;93f4
	ld (hl),08eh		;93f5
	ret p			;93f7
	dec d			;93f8
	call nz,00069h		;93f9
	add a,d			;93fc
	adc a,b			;93fd
	inc bc			;93fe
	ld (bc),a		;93ff
	inc (hl)		;9400
	cp h			;9401
	rst 28h			;9402
	dec d			;9403
	call nc,0006bh		;9404
	and d			;9407
	call 00100h		;9408
	add hl,bc		;940b
	dec d			;940c
	call p,0006fh		;940d
	ld bc,00209h		;9410
	ld a,(bc)		;9413
	cp h			;9414
	dec d			;9415
	inc a			;9416
	ld (hl),b		;9417
	nop			;9418
	ld a,(bc)		;9419
	inc c			;941a
	ld (bc),a		;941b
	dec b			;941c
	ld a,c			;941d
	dec d			;941e
	ld l,h			;941f
	ld (hl),b		;9420
	nop			;9421
	dec c			;9422
	ld c,002h		;9423
	inc bc			;9425
	ld c,c			;9426
	dec d			;9427
	adc a,h			;9428
	ld (hl),b		;9429
	nop			;942a
	rrca			;942b
	ld (de),a		;942c
	ld (bc),a		;942d
	dec bc			;942e
	call 0cc15h		;942f
	ld (hl),b		;9432
	nop			;9433
	inc de			;9434
	dec hl			;9435
	inc bc			;9436
	ld a,(bc)		;9437
	cp h			;9438
	sbc a,0ffh		;9439
	dec d			;943b
	ld e,h			;943c
	ld (hl),d		;943d
	nop			;943e
	inc l			;943f
	ld (00303h),a		;9440
	ld b,l			;9443
	ld h,a			;9444
	adc a,c			;9445
	dec d			;9446
	inc b			;9447
	ld (hl),e		;9448
	nop			;9449
	inc sp			;944a
	ld d,l			;944b
	inc bc			;944c
	inc b			;944d
	ld d,(hl)		;944e
	ld a,b			;944f
	sbc a,a			;9450
	dec d			;9451
	ld c,h			;9452
	halt			;9453
	nop			;9454
	ld d,(hl)		;9455
	ld h,l			;9456
	inc bc			;9457
	inc bc			;9458
	ld d,(hl)		;9459
	ld a,b			;945a
	sbc a,a			;945b
	dec d			;945c
	call z,00077h		;945d
	ld h,(hl)		;9460
	ld l,l			;9461
	inc bc			;9462
	inc bc			;9463
	ld b,l			;9464
	ld a,b			;9465
	sbc a,a			;9466
	dec d			;9467
	adc a,h			;9468
	ld a,b			;9469
	nop			;946a
	ld l,(hl)		;946b
	sub c			;946c
	inc bc			;946d
	inc (hl)		;946e
	ld d,(hl)		;946f
	ld a,b			;9470
	sbc a,a			;9471
	dec d			;9472
	call pe,0007bh		;9473
	sub d			;9476
	sbc a,a			;9477
	inc b			;9478
	dec d			;9479
	inc a			;947a
	ld a,l			;947b
	nop			;947c
	and b			;947d
	or c			;947e
	nop			;947f
	nop			;9480
	ret nc			;9481
	ld (hl),a		;9482
	rst 10h			;9483
	ld b,h			;9484
	inc d			;9485
	jr nc,$+35		;9486
	ld b,c			;9488
	ld (04452h),a		;9489
	ld h,e			;948c
	ld d,l			;948d
	ld bc,00262h		;948e
	ld (hl),e		;9491
	inc b			;9492
	add a,l			;9493
	inc bc			;9494
	sub b			;9495
	rlca			;9496
	and b			;9497
	ld d,b			;9498
	or b			;9499
	ld (hl),b		;949a
	call nz,0d770h		;949b
	ld (hl),a		;949e
	rst 20h			;949f
	nop			;94a0
	ret p			;94a1
	rst 38h			;94a2
	djnz l94b5h		;94a3
	jr nc,$+35		;94a5
	ld b,c			;94a7
	ld (04452h),a		;94a8
	ld h,e			;94ab
	ld d,l			;94ac
	rst 38h			;94ad
	ld (de),a		;94ae
	ld h,c			;94af
	inc hl			;94b0
	ld (hl),d		;94b1
	inc (hl)		;94b2
	add a,e			;94b3
	ld (hl),b		;94b4
l94b5h:
	sub b			;94b5
	rlca			;94b6
	and b			;94b7
	rst 38h			;94b8
	ld h,l			;94b9
	dec d			;94ba
	jr nc,l94deh		;94bb
	ld b,c			;94bd
	ld (04452h),a		;94be
	ld h,e			;94c1
	ld d,l			;94c2
	ld (bc),a		;94c3
	ld h,c			;94c4
	dec d			;94c5
	ld (hl),h		;94c6
	ld (00282h),a		;94c7
	sub b			;94ca
	ld b,0a0h		;94cb
	ld (hl),a		;94cd
	rst 20h			;94ce
	rst 38h			;94cf
	ld (00212h),hl		;94d0
	ld h,c			;94d3
	inc de			;94d4
	ld (hl),d		;94d5
	inc h			;94d6
	add a,e			;94d7
	ld (hl),b		;94d8
	sub b			;94d9
	rlca			;94da
	and b			;94db
	rst 38h			;94dc
	inc bc			;94dd
l94deh:
	ld de,02000h		;94de
	ld bc,00230h		;94e1
	ld b,b			;94e4
	inc bc			;94e5
	ld d,c			;94e6
	nop			;94e7
	ld h,b			;94e8
	ld (bc),a		;94e9
	ld (hl),b		;94ea
	ld bc,00180h		;94eb
	sub b			;94ee
	ld (bc),a		;94ef
	and b			;94f0
	inc d			;94f1
	jp po,033ffh		;94f2
	inc de			;94f5
	ld bc,00322h		;94f6
	inc (hl)		;94f9
	jr nc,l953ch		;94fa
	ld d,l			;94fc
	ld (hl),l		;94fd
	ld (hl),b		;94fe
	or b			;94ff
	rst 38h			;9500
	nop			;9501
	djnz l9504h		;9502
l9504h:
	jr nz,l9506h		;9504
l9506h:
	jr nc,l9508h		;9506
l9508h:
	ld b,b			;9508
	nop			;9509
	ld d,b			;950a
	nop			;950b
	ld h,b			;950c
	nop			;950d
	ld (hl),b		;950e
	nop			;950f
	add a,b			;9510
	nop			;9511
	sub b			;9512
	nop			;9513
	and b			;9514
	nop			;9515
	or b			;9516
	nop			;9517
	ret nz			;9518
	nop			;9519
	ret nc			;951a
	nop			;951b
	ret po			;951c
	nop			;951d
	ret p			;951e
	rst 38h			;951f
	ex af,af'		;9520
	add a,b			;9521
	or h			;9522
	ex af,af'		;9523
	sbc a,b			;9524
	or h			;9525
	ex af,af'		;9526
	and e			;9527
	or h			;9528
	ex af,af'		;9529
	xor (hl)		;952a
	or h			;952b
	rrca			;952c
	ld c,d			;952d
	nop			;952e
l952fh:
	dec h			;952f
	ld d,0b7h		;9530
	nop			;9532
	nop			;9533
	nop			;9534
	nop			;9535
	ld bc,0b586h		;9536
	nop			;9539
	nop			;953a
	rlca			;953b
l953ch:
	nop			;953c
	inc b			;953d
	ld c,c			;953e
	or (hl)			;953f
	ret z			;9540
	ex af,af'		;9541
	inc bc			;9542
	nop			;9543
	inc bc			;9544
	ex af,af'		;9545
	or (hl)			;9546
	or b			;9547
	jr nz,l954fh		;9548
	nop			;954a
	inc d			;954b
	sbc a,d			;954c
	or (hl)			;954d
	ld b,b			;954e
l954fh:
	ld a,(bc)		;954f
	ld bc,01500h		;9550
	and e			;9553
	or (hl)			;9554
	ex af,af'		;9555
	ld b,d			;9556
	ld bc,01403h		;9557
	nop			;955a
	ld e,08eh		;955b
	or l			;955d
	or b			;955e
	nop			;955f
l9560h:
	ld b,000h		;9560
	ld (bc),a		;9562
	defb 0fdh,0b5h ;or iyl	;9563
	ret nz			;9565
	ld a,002h		;9566
	nop			;9568
	ld d,0aeh		;9569
	or (hl)			;956b
	ret pe			;956c
	dec l			;956d
	ld bc,l9603h		;956e
	inc bc			;9571
	ld c,b			;9572
	nop			;9573
	jr z,l952fh		;9574
	or (hl)			;9576
	nop			;9577
	nop			;9578
	dec b			;9579
	dec b			;957a
	nop			;957b
	inc bc			;957c
	rlca			;957d
	dec b			;957e
	ld bc,02003h		;957f
	ld b,00dh		;9582
	scf			;9584
	or a			;9585
	ld bc,0b0f4h		;9586
	nop			;9589
	nop			;958a
	ld (bc),a		;958b
	inc b			;958c
	rlca			;958d
	ld bc,0b0f8h		;958e
	ld bc,00b00h		;9591
	jr nz,l9596h		;9594
l9596h:
	inc bc			;9596
	ld c,(hl)		;9597
	nop			;9598
	rra			;9599
	and b			;959a
	or l			;959b
	ret			;959c
	nop			;959d
	ld b,007h		;959e
	ld bc,0b104h		;95a0
	ld (bc),a		;95a3
	nop			;95a4
	dec bc			;95a5
	jr nz,l95a8h		;95a6
l95a8h:
	inc bc			;95a8
	ld (hl),000h		;95a9
	jr nz,l9560h		;95ab
	or l			;95ad
	call z,00600h		;95ae
	ld c,007h		;95b1
	ld bc,0b108h		;95b3
	nop			;95b6
	nop			;95b7
	nop			;95b8
	rra			;95b9
	xor 0b5h		;95ba
	nop			;95bc
	nop			;95bd
	nop			;95be
	dec bc			;95bf
	jr nz,l95c2h		;95c0
l95c2h:
	inc bc			;95c2
	inc d			;95c3
	nop			;95c4
	ld bc,0b5eeh		;95c5
	nop			;95c8
	nop			;95c9
	nop			;95ca
	inc bc			;95cb
	ld (02100h),hl		;95cc
	sub 0b5h		;95cf
	jp nc,00600h		;95d1
	ld c,007h		;95d4
	ld bc,0b100h		;95d6
	nop			;95d9
	nop			;95da
	dec bc			;95db
	jr nz,l95deh		;95dc
l95deh:
	inc bc			;95de
	ld l,000h		;95df
	ld e,0eeh		;95e1
	or l			;95e3
	nop			;95e4
	nop			;95e5
	nop			;95e6
	nop			;95e7
	ld (0b5f0h),hl		;95e8
	nop			;95eb
	nop			;95ec
	ld b,00eh		;95ed
	rlca			;95ef
	ld bc,0b100h		;95f0
	nop			;95f3
	nop			;95f4
	ld (bc),a		;95f5
	inc b			;95f6
	ld (bc),a		;95f7
	ex af,af'		;95f8
	dec bc			;95f9
	jr nz,l95fch		;95fa
l95fch:
	rlca			;95fc
	dec bc			;95fd
	ret p			;95fe
	nop			;95ff
	inc bc			;9600
	ld e,001h		;9601
l9603h:
	call c,000b0h		;9603
	nop			;9606
	rlca			;9607
	ld bc,0b0e0h		;9608
	nop			;960b
	nop			;960c
	dec bc			;960d
	ret p			;960e
	nop			;960f
	inc b			;9610
	ld bc,00b03h		;9611
	nop			;9614
	dec bc			;9615
	or 0b6h			;9616
	ex af,af'		;9618
	nop			;9619
	inc b			;961a
	inc bc			;961b
	dec b			;961c
	nop			;961d
	inc c			;961e
	ld b,0b7h		;961f
	ld (de),a		;9621
	ld a,(bc)		;9622
	inc b			;9623
	inc bc			;9624
	ld bc,00d00h		;9625
	pop hl			;9628
	or (hl)			;9629
	ld a,(bc)		;962a
	dec b			;962b
	inc b			;962c
	inc bc			;962d
	ld (bc),a		;962e
	nop			;962f
	ld c,0f6h		;9630
	or (hl)			;9632
	inc b			;9633
	rlca			;9634
	inc b			;9635
	inc bc			;9636
	inc b			;9637
	nop			;9638
	rla			;9639
l963ah:
	pop hl			;963a
	or (hl)			;963b
	ld (de),a		;963c
	ex af,af'		;963d
	inc b			;963e
	inc bc			;963f
	ld (bc),a		;9640
	nop			;9641
	jr l963ah		;9642
	or (hl)			;9644
	inc d			;9645
	dec b			;9646
	inc b			;9647
	rlca			;9648
	ld bc,0b0d8h		;9649
	nop			;964c
	nop			;964d
	dec bc			;964e
	ret p			;964f
	nop			;9650
	inc b			;9651
	ld bc,00500h		;9652
	pop hl			;9655
	or (hl)			;9656
	ex af,af'		;9657
	nop			;9658
	ld (bc),a		;9659
	inc bc			;965a
	inc b			;965b
	nop			;965c
	ld b,0f6h		;965d
	or (hl)			;965f
	jr l9672h		;9660
	inc b			;9662
	inc bc			;9663
	ld bc,00700h		;9664
	ld b,0b7h		;9667
	jr l966fh		;9669
	ld (bc),a		;966b
	inc bc			;966c
	inc b			;966d
	nop			;966e
l966fh:
	ex af,af'		;966f
	or 0b6h			;9670
l9672h:
	ex af,af'		;9672
	inc b			;9673
	ld (bc),a		;9674
	inc bc			;9675
	inc bc			;9676
	nop			;9677
	add hl,bc		;9678
	pop hl			;9679
	or (hl)			;967a
	nop			;967b
	nop			;967c
	ld (bc),a		;967d
	inc bc			;967e
	ld bc,00a00h		;967f
	or 0b6h			;9682
	jr nz,l968eh		;9684
	inc b			;9686
	inc bc			;9687
	rlca			;9688
	nop			;9689
	add hl,de		;968a
	pop hl			;968b
	or (hl)			;968c
	ld (de),a		;968d
l968eh:
	ld (de),a		;968e
	inc b			;968f
	inc bc			;9690
	ld (bc),a		;9691
	nop			;9692
	ld a,(de)		;9693
	or 0b6h			;9694
	nop			;9696
	nop			;9697
	inc b			;9698
	rlca			;9699
	ld bc,0b0ech		;969a
	nop			;969d
	nop			;969e
	dec bc			;969f
	djnz l96a2h		;96a0
l96a2h:
	rlca			;96a2
	ld bc,0b0e8h		;96a3
	nop			;96a6
	nop			;96a7
	dec bc			;96a8
	ld b,b			;96a9
	nop			;96aa
	inc bc			;96ab
	ld d,b			;96ac
l96adh:
	ld c,001h		;96ad
	call po,000b0h		;96af
	nop			;96b2
	dec bc			;96b3
	jr c,l96b6h		;96b4
l96b6h:
	inc bc			;96b6
	ld a,b			;96b7
	ld c,004h		;96b8
	nop			;96ba
	nop			;96bb
l96bch:
	dec de			;96bc
	call z,06cb6h		;96bd
	ld a,(de)		;96c0
	dec b			;96c1
	inc bc			;96c2
	inc bc			;96c3
	nop			;96c4
	inc e			;96c5
	call z,030b6h		;96c6
	djnz l96d0h		;96c9
	ld c,001h		;96cb
	or h			;96cd
	or b			;96ce
	nop			;96cf
l96d0h:
	nop			;96d0
	ld bc,0b0b8h		;96d1
	nop			;96d4
	nop			;96d5
	ld bc,0b0bch		;96d6
	nop			;96d9
	nop			;96da
	ld bc,0b0c0h		;96db
	nop			;96de
	nop			;96df
	ld c,001h		;96e0
	and b			;96e2
	or b			;96e3
	nop			;96e4
	nop			;96e5
	ld bc,0b0a4h		;96e6
	nop			;96e9
	nop			;96ea
	ld bc,0b0a8h		;96eb
	nop			;96ee
	nop			;96ef
	ld bc,0b0ach		;96f0
	nop			;96f3
	nop			;96f4
	ld c,001h		;96f5
	ld (hl),h		;96f7
	or b			;96f8
	nop			;96f9
	nop			;96fa
	ld bc,0b078h		;96fb
	nop			;96fe
	nop			;96ff
	ld bc,0b07ch		;9700
	nop			;9703
	nop			;9704
	ld c,001h		;9705
	add a,h			;9707
	or b			;9708
	nop			;9709
	nop			;970a
	ld bc,0b088h		;970b
	nop			;970e
	nop			;970f
	ld bc,0b08ch		;9710
	nop			;9713
	nop			;9714
	ld c,010h		;9715
	sub b			;9717
	ld (hl),b		;9718
	inc bc			;9719
	ld (bc),a		;971a
	djnz l96adh		;971b
	ld d,b			;971d
	inc bc			;971e
	ld bc,l9010h		;971f
	jr nc,l9727h		;9722
	ld bc,l9010h		;9724
l9727h:
	djnz l972ch		;9727
	ld (bc),a		;9729
	djnz l96bch		;972a
l972ch:
	jr nc,l9731h		;972c
	ld bc,l9010h		;972e
l9731h:
	ld d,b			;9731
	inc bc			;9732
	ld bc,0160dh		;9733
	or a			;9736
	ex af,af'		;9737
	sbc a,b			;9738
	or h			;9739
	ex af,af'		;973a
	and e			;973b
	or h			;973c
	ex af,af'		;973d
	xor (hl)		;973e
	or h			;973f
	nop			;9740
	dec h			;9741
	ld d,0b7h		;9742
	nop			;9744
	nop			;9745
	nop			;9746
	nop			;9747
	ld bc,0b779h		;9748
	nop			;974b
	nop			;974c
	rrca			;974d
	nop			;974e
	ld (bc),a		;974f
	add a,(hl)		;9750
	or a			;9751
	jr nc,l9764h		;9752
	add hl,bc		;9754
	nop			;9755
	inc bc			;9756
	sbc a,a			;9757
	or a			;9758
	ex af,af'		;9759
	jr l9766h		;975a
	nop			;975c
	inc b			;975d
	or (hl)			;975e
	or a			;975f
	add a,b			;9760
	jr l976eh		;9761
	inc bc			;9763
l9764h:
	jr nc,$+7		;9764
l9766h:
	nop			;9766
	inc bc			;9767
	ex af,af'		;9768
	dec b			;9769
	ld bc,00903h		;976a
	dec b			;976d
l976eh:
	ld (bc),a		;976e
	inc bc			;976f
	dec de			;9770
	dec b			;9771
	inc bc			;9772
	inc bc			;9773
	ld hl,00d06h		;9774
	ld a,b			;9777
	cp b			;9778
	ld bc,0b0f0h		;9779
	nop			;977c
	nop			;977d
	ld (bc),a		;977e
	inc b			;977f
	ld (bc),a		;9780
	ex af,af'		;9781
	dec bc			;9782
	jr nz,l9785h		;9783
l9785h:
	rlca			;9785
	ld bc,0b0cch		;9786
	nop			;9789
	nop			;978a
	dec bc			;978b
	ret m			;978c
	nop			;978d
l978eh:
	inc b			;978e
	ld (bc),a		;978f
	inc bc			;9790
	rlca			;9791
	nop			;9792
	ld b,0cdh		;9793
	or a			;9795
	nop			;9796
	nop			;9797
	add hl,bc		;9798
	inc b			;9799
	inc bc			;979a
	dec bc			;979b
	ret po			;979c
	jr nz,l97a6h		;979d
	ld bc,0b0d0h		;979f
	nop			;97a2
	nop			;97a3
	dec bc			;97a4
	nop			;97a5
l97a6h:
	nop			;97a6
	nop			;97a7
	rrca			;97a8
	ld b,0b8h		;97a9
	nop			;97ab
	nop			;97ac
	add hl,bc		;97ad
	inc b			;97ae
	nop			;97af
	dec bc			;97b0
	ret po			;97b1
	ld b,b			;97b2
	inc bc			;97b3
	inc hl			;97b4
	ld c,001h		;97b5
	call nc,000b0h		;97b7
	nop			;97ba
	dec bc			;97bb
	nop			;97bc
	nop			;97bd
	nop			;97be
	djnz l978eh		;97bf
	or a			;97c1
	nop			;97c2
	nop			;97c3
	add hl,bc		;97c4
	inc b			;97c5
	ld bc,0400bh		;97c6
	jr nz,l97ceh		;97c9
	ld e,00eh		;97cb
	nop			;97cd
l97ceh:
	inc de			;97ce
	pop hl			;97cf
	or (hl)			;97d0
	ex af,af'		;97d1
	nop			;97d2
	add hl,bc		;97d3
	inc bc			;97d4
	inc b			;97d5
	nop			;97d6
	inc d			;97d7
	pop hl			;97d8
	or (hl)			;97d9
	jr l97ech		;97da
	dec bc			;97dc
	inc bc			;97dd
	ld bc,01500h		;97de
	pop hl			;97e1
	or (hl)			;97e2
	jr l97e9h		;97e3
	add hl,bc		;97e5
	inc bc			;97e6
	ld (bc),a		;97e7
	nop			;97e8
l97e9h:
	ld d,0e1h		;97e9
	or (hl)			;97eb
l97ech:
	ex af,af'		;97ec
	inc b			;97ed
	add hl,bc		;97ee
	inc bc			;97ef
	ld bc,01700h		;97f0
	pop hl			;97f3
	or (hl)			;97f4
	nop			;97f5
	nop			;97f6
	dec b			;97f7
	inc bc			;97f8
	ld bc,01800h		;97f9
	pop hl			;97fc
	or (hl)			;97fd
	jr nz,l9808h		;97fe
	dec b			;9800
	inc bc			;9801
	ld bc,0cd0dh		;9802
	or a			;9805
	nop			;9806
	add hl,de		;9807
l9808h:
	pop hl			;9808
	or (hl)			;9809
	ex af,af'		;980a
	nop			;980b
	add hl,bc		;980c
	inc bc			;980d
	inc b			;980e
	nop			;980f
	ld a,(de)		;9810
	pop hl			;9811
	or (hl)			;9812
	jr l9825h		;9813
	dec bc			;9815
	inc bc			;9816
	ld bc,01b00h		;9817
	pop hl			;981a
	or (hl)			;981b
	jr l9822h		;981c
	add hl,bc		;981e
	inc bc			;981f
	ld (bc),a		;9820
	nop			;9821
l9822h:
	inc e			;9822
	pop hl			;9823
	or (hl)			;9824
l9825h:
	ex af,af'		;9825
	inc b			;9826
	add hl,bc		;9827
	inc bc			;9828
	ld bc,01d00h		;9829
	pop hl			;982c
	or (hl)			;982d
	nop			;982e
	nop			;982f
	dec b			;9830
	inc bc			;9831
	ld bc,01e00h		;9832
	pop hl			;9835
	or (hl)			;9836
	jr nz,l9841h		;9837
	dec b			;9839
	inc bc			;983a
	ld bc,0060dh		;983b
	cp b			;983e
	nop			;983f
	inc de			;9840
l9841h:
	pop hl			;9841
	or (hl)			;9842
	ex af,af'		;9843
	nop			;9844
	add hl,bc		;9845
	inc bc			;9846
	inc b			;9847
	nop			;9848
	inc d			;9849
	pop hl			;984a
	or (hl)			;984b
	jr l985eh		;984c
	dec bc			;984e
	inc bc			;984f
	ld bc,01500h		;9850
	pop hl			;9853
	or (hl)			;9854
	jr l985bh		;9855
	add hl,bc		;9857
	inc bc			;9858
	ld (bc),a		;9859
	nop			;985a
l985bh:
	ld d,0e1h		;985b
	or (hl)			;985d
l985eh:
	ex af,af'		;985e
	inc b			;985f
	add hl,bc		;9860
	inc bc			;9861
	ld bc,01700h		;9862
	pop hl			;9865
	or (hl)			;9866
	nop			;9867
	nop			;9868
	dec b			;9869
	inc bc			;986a
	ld bc,01800h		;986b
	pop hl			;986e
	or (hl)			;986f
	jr nz,l987ah		;9870
	dec b			;9872
	inc bc			;9873
	ld bc,03f0dh		;9874
	cp b			;9877
	ex af,af'		;9878
	sbc a,b			;9879
l987ah:
	or h			;987a
	ex af,af'		;987b
	and e			;987c
	or h			;987d
	ex af,af'		;987e
	defb 0ddh,0b4h ;or ixh	;987f
	rrca			;9881
	ld c,(hl)		;9882
	nop			;9883
	rrca			;9884
	call p,000b8h		;9885
	nop			;9888
	rrca			;9889
	nop			;988a
	ld de,0b8fah		;988b
	nop			;988e
	nop			;988f
	rrca			;9890
	nop			;9891
	inc b			;9892
	ld d,0b9h		;9893
	nop			;9895
	ex af,af'		;9896
	ex af,af'		;9897
	nop			;9898
	ld b,01ch		;9899
	cp c			;989b
	ld a,b			;989c
	ld b,b			;989d
	rlca			;989e
	inc bc			;989f
	ld (de),a		;98a0
	rrca			;98a1
	ld c,a			;98a2
	dec b			;98a3
	ld bc,00303h		;98a4
	nop			;98a7
	dec b			;98a8
	jr c,$-69		;98a9
	nop			;98ab
	ret m			;98ac
	rrca			;98ad
l98aeh:
	nop			;98ae
	ld (de),a		;98af
	ld (hl),e		;98b0
	cp c			;98b1
	nop			;98b2
	ret m			;98b3
	rrca			;98b4
	inc bc			;98b5
	inc c			;98b6
	nop			;98b7
	ld bc,0b8e7h		;98b8
	nop			;98bb
	nop			;98bc
	rrca			;98bd
	nop			;98be
	ld (bc),a		;98bf
	nop			;98c0
	cp c			;98c1
	nop			;98c2
	nop			;98c3
	ld c,000h		;98c4
	inc bc			;98c6
	dec bc			;98c7
	cp c			;98c8
	ld d,b			;98c9
	nop			;98ca
	ld c,003h		;98cb
	ld bc,00005h		;98cd
	inc bc			;98d0
	ld bc,0500fh		;98d1
	add hl,bc		;98d4
	cp c			;98d5
	or h			;98d6
	inc bc			;98d7
	dec l			;98d8
	ld b,00dh		;98d9
	and e			;98db
	cp c			;98dc
	inc c			;98dd
	ld bc,00161h		;98de
	inc c			;98e1
	or c			;98e2
	nop			;98e3
	nop			;98e4
	ld c,007h		;98e5
	ld bc,0b0f4h		;98e7
	nop			;98ea
	nop			;98eb
	ld (bc),a		;98ec
	inc b			;98ed
	ld (bc),a		;98ee
	djnz $+13		;98ef
	nop			;98f1
	ret po			;98f2
	rlca			;98f3
	ld bc,0b0fch		;98f4
	nop			;98f7
	nop			;98f8
	ld c,001h		;98f9
	djnz l98aeh		;98fb
	ld d,b			;98fd
	nop			;98fe
	ld c,001h		;98ff
	call m,000b0h		;9901
	nop			;9904
	inc b			;9905
	nop			;9906
	dec bc			;9907
	ret po			;9908
	nop			;9909
	rlca			;990a
	ld bc,0b110h		;990b
	nop			;990e
	nop			;990f
	inc b			;9910
	nop			;9911
	dec bc			;9912
	jr nc,l9915h		;9913
l9915h:
	rlca			;9915
	ld bc,0b10ch		;9916
	nop			;9919
	nop			;991a
	rlca			;991b
	ld bc,0b114h		;991c
	nop			;991f
	nop			;9920
	inc b			;9921
	ld bc,01401h		;9922
	or c			;9925
	nop			;9926
	ld bc,01401h		;9927
	or c			;992a
	nop			;992b
	rst 38h			;992c
	ld bc,0b114h		;992d
	nop			;9930
	defb 0fdh,001h,014h ;illegal sequence	;9931
	or c			;9934
	nop			;9935
	nop			;9936
	rlca			;9937
	inc c			;9938
	nop			;9939
	ld l,l			;993a
	ld bc,0b150h		;993b
	jr nz,$+58		;993e
	ld bc,0b154h		;9940
	jr $+58			;9943
	ld bc,0b158h		;9945
	jr l997ah		;9948
	ld bc,0b15ch		;994a
	djnz l997fh		;994d
	ld bc,0b160h		;994f
	djnz l9984h		;9952
	ld bc,0b164h		;9954
	ex af,af'		;9957
	jr z,l995bh		;9958
	ld l,b			;995a
l995bh:
	or c			;995b
	nop			;995c
	jr nz,l9960h		;995d
	ld c,b			;995f
l9960h:
	or c			;9960
	jr l99a3h		;9961
	ld bc,0b14ch		;9963
	djnz l99a8h		;9966
	ld bc,0b16ch		;9968
	ex af,af'		;996b
	jr c,l996fh		;996c
	ld (hl),b		;996e
l996fh:
	or c			;996f
	nop			;9970
	jr c,l9981h		;9971
	inc c			;9973
	nop			;9974
	ld l,l			;9975
	inc bc			;9976
	ld bc,07401h		;9977
l997ah:
	or c			;997a
	add a,b			;997b
	jr c,l997fh		;997c
	ld a,b			;997e
l997fh:
	or c			;997f
	add a,b			;9980
l9981h:
	jr nc,l9984h		;9981
	ld a,h			;9983
l9984h:
	or c			;9984
	adc a,b			;9985
	jr nc,l9989h		;9986
	add a,b			;9988
l9989h:
	or c			;9989
	adc a,b			;998a
	jr nc,l998eh		;998b
	add a,h			;998d
l998eh:
	or c			;998e
	sub b			;998f
	jr z,l9993h		;9990
	adc a,b			;9992
l9993h:
	or c			;9993
	sbc a,b			;9994
	jr nz,$+5		;9995
	inc bc			;9997
	ld bc,0b18ch		;9998
	sub b			;999b
	jr c,l999fh		;999c
	sub b			;999e
l999fh:
	or c			;999f
	sbc a,b			;99a0
	jr c,l99b1h		;99a1
l99a3h:
	ex af,af'		;99a3
	sbc a,b			;99a4
	or h			;99a5
	ex af,af'		;99a6
	and e			;99a7
l99a8h:
	or h			;99a8
	ex af,af'		;99a9
	ret nc			;99aa
	or h			;99ab
	nop			;99ac
	dec h			;99ad
	ld d,0b7h		;99ae
	nop			;99b0
l99b1h:
	nop			;99b1
	nop			;99b2
	nop			;99b3
	ld bc,0b9d7h		;99b4
	nop			;99b7
	nop			;99b8
	rlca			;99b9
	nop			;99ba
	ld (bc),a		;99bb
	call po,020b9h		;99bc
	adc a,b			;99bf
	inc b			;99c0
	inc bc			;99c1
	inc bc			;99c2
	dec b			;99c3
	nop			;99c4
	nop			;99c5
	inc bc			;99c6
	rst 28h			;99c7
	cp c			;99c8
	nop			;99c9
	nop			;99ca
	ld (bc),a		;99cb
	dec b			;99cc
	ld bc,06003h		;99cd
	dec b			;99d0
	rrca			;99d1
	inc bc			;99d2
	ld a,(bc)		;99d3
	dec c			;99d4
	jr nz,$-73		;99d5
	ld bc,0b0f0h		;99d7
	nop			;99da
	nop			;99db
	ld (bc),a		;99dc
	inc b			;99dd
	ld (bc),a		;99de
	djnz l99ech		;99df
	nop			;99e1
	jr nz,l99ebh		;99e2
	ld bc,0b0c4h		;99e4
	nop			;99e7
	nop			;99e8
	dec bc			;99e9
	and b			;99ea
l99ebh:
	ld b,b			;99eb
l99ech:
	inc bc			;99ec
	ld e,00eh		;99ed
	ld bc,0b094h		;99ef
	ld b,l			;99f2
	dec hl			;99f3
	ld bc,0b09ch		;99f4
	ld b,l			;99f7
	dec hl			;99f8
	ld bc,0b070h		;99f9
	ld b,l			;99fc
	dec hl			;99fd
	inc bc			;99fe
	dec b			;99ff
	ld bc,0b128h		;9a00
	ld b,l			;9a03
l9a04h:
	dec hl			;9a04
	ld bc,0b12ch		;9a05
	ld b,a			;9a08
	daa			;9a09
	ld bc,0b130h		;9a0a
	ld c,b			;9a0d
	inc h			;9a0e
	ld bc,0b134h		;9a0f
	ld c,c			;9a12
	inc hl			;9a13
	ld bc,0b138h		;9a14
	ccf			;9a17
	dec h			;9a18
	dec bc			;9a19
	ret po			;9a1a
	jr nz,l9a20h		;9a1b
	ld d,00bh		;9a1d
	ld d,b			;9a1f
l9a20h:
	ret po			;9a20
	inc bc			;9a21
	inc de			;9a22
	ld bc,0b13ch		;9a23
	ld b,e			;9a26
	ld (04001h),hl		;9a27
	or c			;9a2a
	ld b,d			;9a2b
	inc h			;9a2c
	ld bc,0b144h		;9a2d
	ld b,d			;9a30
	ld (04401h),hl		;9a31
	or c			;9a34
	ld a,01eh		;9a35
	ld bc,0b118h		;9a37
	ld a,(0011dh)		;9a3a
	jr $-77			;9a3d
	jr nc,l9a5fh		;9a3f
	ld bc,0b11ch		;9a41
	ld hl,(00120h)		;9a44
	inc e			;9a47
	or c			;9a48
	inc h			;9a49
	inc h			;9a4a
	ld bc,0b120h		;9a4b
	ld hl,0012ah		;9a4e
	jr nz,l9a04h		;9a51
	jr nz,l9a87h		;9a53
	ld bc,0b120h		;9a55
	inc h			;9a58
	dec (hl)		;9a59
	ld bc,0b124h		;9a5a
	ld h,037h		;9a5d
l9a5fh:
	ld bc,0b124h		;9a5f
	add hl,hl		;9a62
	jr c,l9a66h		;9a63
	ld (hl),b		;9a65
l9a66h:
	or b			;9a66
	add hl,hl		;9a67
	jr c,$+5		;9a68
	inc bc			;9a6a
	ld bc,0b094h		;9a6b
	daa			;9a6e
	inc (hl)		;9a6f
	ld bc,0b098h		;9a70
	dec h			;9a73
	dec (hl)		;9a74
	ld bc,0b09ch		;9a75
	inc hl			;9a78
	ld (hl),00eh		;9a79
	ex af,af'		;9a7b
	ld bc,000b5h		;9a7c
	ld bc,0bab3h		;9a7f
	nop			;9a82
	nop			;9a83
	rlca			;9a84
	nop			;9a85
	ld (bc),a		;9a86
l9a87h:
	cp (hl)			;9a87
	cp d			;9a88
	ld c,b			;9a89
	ld c,002h		;9a8a
	nop			;9a8c
	inc bc			;9a8d
	jp c,030bah		;9a8e
	dec d			;9a91
	dec b			;9a92
	inc bc			;9a93
	dec b			;9a94
	add hl,bc		;9a95
	add a,h			;9a96
	or h			;9a97
	rrca			;9a98
	ld d,e			;9a99
	inc bc			;9a9a
	ld (bc),a		;9a9b
	dec b			;9a9c
	ld bc,00803h		;9a9d
	rrca			;9aa0
	ld c,c			;9aa1
	inc bc			;9aa2
	ld d,b			;9aa3
	nop			;9aa4
	inc bc			;9aa5
	cp b			;9aa6
	or (hl)			;9aa7
	nop			;9aa8
	nop			;9aa9
	nop			;9aaa
	inc bc			;9aab
	ld h,h			;9aac
	inc bc			;9aad
	ld (de),a		;9aae
	ld b,00dh		;9aaf
	ld a,(bc)		;9ab1
	cp e			;9ab2
	ld bc,0b194h		;9ab3
	nop			;9ab6
	nop			;9ab7
	ld (bc),a		;9ab8
	ex af,af'		;9ab9
	dec bc			;9aba
	ret nc			;9abb
	nop			;9abc
	rlca			;9abd
	ld bc,0b1c0h		;9abe
	nop			;9ac1
	nop			;9ac2
	dec bc			;9ac3
	nop			;9ac4
	ret p			;9ac5
	inc bc			;9ac6
	ex af,af'		;9ac7
	dec bc			;9ac8
	nop			;9ac9
	nop			;9aca
	inc bc			;9acb
	ld (bc),a		;9acc
	dec bc			;9acd
	nop			;9ace
	djnz l9ad4h		;9acf
	ex af,af'		;9ad1
	dec bc			;9ad2
	nop			;9ad3
l9ad4h:
	nop			;9ad4
	inc bc			;9ad5
	inc bc			;9ad6
	dec c			;9ad7
	cp (hl)			;9ad8
	cp d			;9ad9
	ld bc,0b1e0h		;9ada
	nop			;9add
	nop			;9ade
	inc b			;9adf
	ld bc,0f00bh		;9ae0
	nop			;9ae3
	inc bc			;9ae4
	inc bc			;9ae5
	ld bc,0b1e4h		;9ae6
	nop			;9ae9
	nop			;9aea
	ld bc,0b1f4h		;9aeb
	ret m			;9aee
	nop			;9aef
	ld bc,0b1e4h		;9af0
	nop			;9af3
	nop			;9af4
	dec bc			;9af5
	ret po			;9af6
	nop			;9af7
	ld bc,0b1e8h		;9af8
	nop			;9afb
	nop			;9afc
	ld bc,0b1ech		;9afd
	nop			;9b00
	nop			;9b01
	ld bc,0b1f0h		;9b02
	nop			;9b05
	nop			;9b06
	dec c			;9b07
	ret m			;9b08
	cp d			;9b09
	ex af,af'		;9b0a
	sbc a,b			;9b0b
	or h			;9b0c
	ex af,af'		;9b0d
	xor (hl)		;9b0e
	or h			;9b0f
	ex af,af'		;9b10
	call p,000b4h		;9b11
	ld bc,0bb94h		;9b14
	nop			;9b17
	nop			;9b18
	rlca			;9b19
	inc bc			;9b1a
	dec b			;9b1b
	nop			;9b1c
	rrca			;9b1d
	ld d,0bch		;9b1e
	nop			;9b20
	nop			;9b21
	nop			;9b22
	inc bc			;9b23
	call c,0dc03h		;9b24
	inc bc			;9b27
	ld d,a			;9b28
	nop			;9b29
	ld (bc),a		;9b2a
	and c			;9b2b
	cp e			;9b2c
	inc h			;9b2d
	ld l,b			;9b2e
	ld bc,02203h		;9b2f
	dec b			;9b32
	ld bc,01303h		;9b33
	nop			;9b36
	ld a,(bc)		;9b37
	cp h			;9b38
	cp e			;9b39
	and b			;9b3a
	jr z,l9b43h		;9b3b
	inc bc			;9b3d
	add a,d			;9b3e
	nop			;9b3f
	inc bc			;9b40
	ret			;9b41
	cp e			;9b42
l9b43h:
	ret po			;9b43
	jr l9b4bh		;9b44
	nop			;9b46
	inc b			;9b47
	jp nc,0d8bbh		;9b48
l9b4bh:
	ld b,b			;9b4b
	dec b			;9b4c
	inc bc			;9b4d
	dec l			;9b4e
	nop			;9b4f
	dec b			;9b50
	in a,(0bbh)		;9b51
	ret m			;9b53
	ld b,001h		;9b54
	nop			;9b56
	ld b,004h		;9b57
	cp h			;9b59
	ret nc			;9b5a
	add hl,sp		;9b5b
	ld (bc),a		;9b5c
	inc bc			;9b5d
	ld e,000h		;9b5e
	rlca			;9b60
	dec c			;9b61
	cp h			;9b62
	ret nc			;9b63
	dec c			;9b64
	inc bc			;9b65
	inc bc			;9b66
	ld l,(hl)		;9b67
	nop			;9b68
	ex af,af'		;9b69
	call po,0a8bbh		;9b6a
	dec e			;9b6d
	inc b			;9b6e
	inc bc			;9b6f
	call z,01d00h		;9b70
	call nc,000bch		;9b73
	nop			;9b76
	ld bc,01903h		;9b77
	nop			;9b7a
	ex af,af'		;9b7b
	cp b			;9b7c
	or (hl)			;9b7d
	nop			;9b7e
	nop			;9b7f
	nop			;9b80
	inc bc			;9b81
	jr z,l9b93h		;9b82
	add a,h			;9b84
	inc bc			;9b85
	dec l			;9b86
	ex af,af'		;9b87
	ld bc,003b5h		;9b88
	ld (de),a		;9b8b
	dec b			;9b8c
	rrca			;9b8d
	inc bc			;9b8e
	jr z,l9b97h		;9b8f
	dec c			;9b91
	ld a,e			;9b92
l9b93h:
	cp d			;9b93
	ld bc,0b198h		;9b94
l9b97h:
	nop			;9b97
l9b98h:
	nop			;9b98
	ld (bc),a		;9b99
	inc b			;9b9a
	ld (bc),a		;9b9b
	ex af,af'		;9b9c
	dec bc			;9b9d
	jr nz,l9ba0h		;9b9e
l9ba0h:
	rlca			;9ba0
	ld bc,0b1a0h		;9ba1
	nop			;9ba4
	nop			;9ba5
	dec bc			;9ba6
	nop			;9ba7
	ret nz			;9ba8
	inc b			;9ba9
	ld bc,0100bh		;9baa
	ret nz			;9bad
	inc bc			;9bae
	ld a,(bc)		;9baf
	dec bc			;9bb0
	jr nz,$-46		;9bb1
	inc bc			;9bb3
	ld a,(bc)		;9bb4
	dec bc			;9bb5
	jr nz,l9b98h		;9bb6
	inc bc			;9bb8
	scf			;9bb9
	ld c,007h		;9bba
	ld bc,0b1a4h		;9bbc
	nop			;9bbf
	nop			;9bc0
	dec bc			;9bc1
	ret pe			;9bc2
	nop			;9bc3
	inc bc			;9bc4
	ret z			;9bc5
	inc bc			;9bc6
	ld h,h			;9bc7
	ld c,001h		;9bc8
	call c,000b1h		;9bca
	nop			;9bcd
	dec bc			;9bce
	ld c,b			;9bcf
	nop			;9bd0
	rlca			;9bd1
	ld bc,0b1d8h		;9bd2
	nop			;9bd5
	nop			;9bd6
	dec bc			;9bd7
	ld d,b			;9bd8
	nop			;9bd9
	rlca			;9bda
	ld bc,0b1d4h		;9bdb
	nop			;9bde
	nop			;9bdf
	dec bc			;9be0
	jr c,l9be3h		;9be1
l9be3h:
	rlca			;9be3
	ld bc,0b1c8h		;9be4
	nop			;9be7
	nop			;9be8
	dec bc			;9be9
	jr z,l9bech		;9bea
l9bech:
	inc bc			;9bec
	ld h,b			;9bed
	nop			;9bee
	ld e,090h		;9bef
	cp l			;9bf1
	nop			;9bf2
	nop			;9bf3
	nop			;9bf4
	ld bc,0b1c4h		;9bf5
	nop			;9bf8
	nop			;9bf9
	ld bc,0b1c8h		;9bfa
	nop			;9bfd
	nop			;9bfe
	inc bc			;9bff
	inc b			;9c00
	dec c			;9c01
	push af			;9c02
	cp e			;9c03
	ld bc,0b1cch		;9c04
	nop			;9c07
	nop			;9c08
	dec bc			;9c09
	jr c,l9c0ch		;9c0a
l9c0ch:
	rlca			;9c0c
	ld bc,0b1d0h		;9c0d
	nop			;9c10
	nop			;9c11
	dec bc			;9c12
	ld d,b			;9c13
	nop			;9c14
	rlca			;9c15
	nop			;9c16
	djnz $-28		;9c17
	cp h			;9c19
	dec sp			;9c1a
	ld h,b			;9c1b
	ld bc,02803h		;9c1c
	nop			;9c1f
	ld de,0bceah		;9c20
	dec hl			;9c23
	ld h,b			;9c24
	ld bc,01903h		;9c25
	nop			;9c28
	ld (de),a		;9c29
	jp p,030bch		;9c2a
	ld h,b			;9c2d
	ld bc,00f03h		;9c2e
	nop			;9c31
	inc de			;9c32
	jp m,028bch		;9c33
	ld h,b			;9c36
	ld bc,02503h		;9c37
	nop			;9c3a
	inc d			;9c3b
	ld (bc),a		;9c3c
	cp l			;9c3d
	inc h			;9c3e
	ld h,b			;9c3f
	ld bc,01903h		;9c40
	nop			;9c43
	dec d			;9c44
	ld a,(bc)		;9c45
	cp l			;9c46
	jr z,l9ca9h		;9c47
	ld bc,00f03h		;9c49
	nop			;9c4c
	ld d,012h		;9c4d
	cp l			;9c4f
	inc h			;9c50
	ld h,b			;9c51
	ld bc,00f03h		;9c52
	nop			;9c55
	rla			;9c56
	ld a,(de)		;9c57
	cp l			;9c58
	jr nc,l9cbbh		;9c59
	ld bc,02303h		;9c5b
	nop			;9c5e
	jr l9c83h		;9c5f
	cp l			;9c61
	inc (hl)		;9c62
	ld h,b			;9c63
	ld bc,01903h		;9c64
	nop			;9c67
	add hl,de		;9c68
	ld hl,(030bdh)		;9c69
	ld h,b			;9c6c
	ld bc,01703h		;9c6d
	nop			;9c70
	ld a,(de)		;9c71
	ld (030bdh),a		;9c72
	ld h,b			;9c75
	ld bc,00d03h		;9c76
	nop			;9c79
	dec de			;9c7a
	ld a,(034bdh)		;9c7b
	ld h,b			;9c7e
	ld bc,02503h		;9c7f
	nop			;9c82
l9c83h:
	ld de,0bd42h		;9c83
	jr z,l9ce8h		;9c86
	ld bc,01903h		;9c88
	nop			;9c8b
	ld (de),a		;9c8c
	ld c,d			;9c8d
	cp l			;9c8e
	inc (hl)		;9c8f
	ld h,b			;9c90
	ld bc,00f03h		;9c91
	nop			;9c94
	inc de			;9c95
	ld d,d			;9c96
	cp l			;9c97
	jr nc,l9cfah		;9c98
	ld bc,03003h		;9c9a
	nop			;9c9d
	inc d			;9c9e
	ld e,d			;9c9f
	cp l			;9ca0
	djnz $+98		;9ca1
	ld bc,01903h		;9ca3
	nop			;9ca6
	dec d			;9ca7
	ld h,d			;9ca8
l9ca9h:
	cp l			;9ca9
	dec hl			;9caa
	ld h,b			;9cab
	ld bc,01403h		;9cac
	nop			;9caf
	ld d,06ah		;9cb0
	cp l			;9cb2
	jr nc,l9d15h		;9cb3
	ld bc,03203h		;9cb5
	nop			;9cb8
	rla			;9cb9
	ld (hl),d		;9cba
l9cbbh:
	cp l			;9cbb
	dec hl			;9cbc
	ld h,b			;9cbd
	ld bc,00e03h		;9cbe
	nop			;9cc1
	jr l9d3eh		;9cc2
	cp l			;9cc4
	ld c,b			;9cc5
	ld h,b			;9cc6
	ld bc,00e03h		;9cc7
	nop			;9cca
	add hl,de		;9ccb
	add a,d			;9ccc
	cp l			;9ccd
	jr c,l9d30h		;9cce
	ld bc,06203h		;9cd0
	ld c,001h		;9cd3
	ld c,h			;9cd5
	or d			;9cd6
	dec de			;9cd7
	ld h,b			;9cd8
	dec bc			;9cd9
	nop			;9cda
	ret po			;9cdb
	inc bc			;9cdc
	ld (0000bh),a		;9cdd
	nop			;9ce0
	rlca			;9ce1
	ld bc,0b1f8h		;9ce2
	nop			;9ce5
	nop			;9ce6
	dec c			;9ce7
l9ce8h:
	adc a,d			;9ce8
	cp l			;9ce9
	ld bc,0b1fch		;9cea
	nop			;9ced
	nop			;9cee
	dec c			;9cef
	adc a,d			;9cf0
	cp l			;9cf1
	ld bc,0b200h		;9cf2
	nop			;9cf5
	nop			;9cf6
	dec c			;9cf7
	adc a,d			;9cf8
	cp l			;9cf9
l9cfah:
	ld bc,0b204h		;9cfa
	nop			;9cfd
	nop			;9cfe
	dec c			;9cff
	adc a,d			;9d00
	cp l			;9d01
	ld bc,0b208h		;9d02
	nop			;9d05
	nop			;9d06
	dec c			;9d07
	adc a,d			;9d08
	cp l			;9d09
	ld bc,0b20ch		;9d0a
	nop			;9d0d
	nop			;9d0e
	dec c			;9d0f
	adc a,d			;9d10
	cp l			;9d11
	ld bc,0b210h		;9d12
l9d15h:
	nop			;9d15
	nop			;9d16
	dec c			;9d17
	adc a,d			;9d18
	cp l			;9d19
	ld bc,0b214h		;9d1a
	nop			;9d1d
	nop			;9d1e
	dec c			;9d1f
	adc a,d			;9d20
	cp l			;9d21
	ld bc,0b218h		;9d22
	nop			;9d25
	nop			;9d26
	dec c			;9d27
	adc a,d			;9d28
	cp l			;9d29
	ld bc,0b21ch		;9d2a
	nop			;9d2d
	nop			;9d2e
	dec c			;9d2f
l9d30h:
	adc a,d			;9d30
	cp l			;9d31
	ld bc,0b220h		;9d32
	nop			;9d35
	nop			;9d36
	dec c			;9d37
	adc a,d			;9d38
	cp l			;9d39
	ld bc,0b224h		;9d3a
	nop			;9d3d
l9d3eh:
	nop			;9d3e
	dec c			;9d3f
	adc a,d			;9d40
	cp l			;9d41
	ld bc,0b228h		;9d42
	nop			;9d45
	nop			;9d46
	dec c			;9d47
	adc a,d			;9d48
	cp l			;9d49
	ld bc,0b22ch		;9d4a
l9d4dh:
	nop			;9d4d
	nop			;9d4e
	dec c			;9d4f
	adc a,d			;9d50
	cp l			;9d51
	ld bc,0b230h		;9d52
l9d55h:
	nop			;9d55
	nop			;9d56
	dec c			;9d57
	adc a,d			;9d58
	cp l			;9d59
	ld bc,0b234h		;9d5a
l9d5dh:
	nop			;9d5d
	nop			;9d5e
	dec c			;9d5f
	adc a,d			;9d60
	cp l			;9d61
	ld bc,0b238h		;9d62
l9d65h:
	nop			;9d65
	nop			;9d66
	dec c			;9d67
	adc a,d			;9d68
	cp l			;9d69
	ld bc,0b23ch		;9d6a
l9d6dh:
	nop			;9d6d
	nop			;9d6e
	dec c			;9d6f
	adc a,d			;9d70
	cp l			;9d71
	ld bc,0b240h		;9d72
	nop			;9d75
	nop			;9d76
	dec c			;9d77
	adc a,d			;9d78
	cp l			;9d79
	ld bc,0b244h		;9d7a
	nop			;9d7d
	nop			;9d7e
	dec c			;9d7f
	adc a,d			;9d80
	cp l			;9d81
	ld bc,0b248h		;9d82
	nop			;9d85
	nop			;9d86
	dec c			;9d87
	adc a,d			;9d88
	cp l			;9d89
	dec bc			;9d8a
	nop			;9d8b
	ret po			;9d8c
	inc bc			;9d8d
	ld l,b			;9d8e
	ld c,010h		;9d8f
	call nz,01070h		;9d91
	or b			;9d94
	ld (hl),b		;9d95
	inc bc			;9d96
	inc bc			;9d97
	djnz l9d5dh		;9d98
	ld h,b			;9d9a
	djnz l9d4dh		;9d9b
	ld d,b			;9d9d
	inc bc			;9d9e
	ld bc,0c210h		;9d9f
	ld d,b			;9da2
	djnz l9d55h		;9da3
	jr nc,l9daah		;9da5
	ld bc,0c110h		;9da7
l9daah:
	ld b,b			;9daa
	djnz l9d5dh		;9dab
	djnz l9db2h		;9dad
	ld bc,0c210h		;9daf
l9db2h:
	ld d,b			;9db2
	djnz l9d65h		;9db3
	jr nc,l9dbah		;9db5
	ld bc,0c310h		;9db7
l9dbah:
	ld h,b			;9dba
	djnz l9d6dh		;9dbb
	ld d,b			;9dbd
	inc bc			;9dbe
	ld bc,l900dh		;9dbf
	cp l			;9dc2
	ld hl,0bee9h		;9dc3
	jr l9dcbh		;9dc6
	ld hl,0bde7h		;9dc8
l9dcbh:
	ld a,001h		;9dcb
	ld (0c91bh),a		;9dcd
	call 0bdd8h		;9dd0
	xor a			;9dd3
	ld (0c91bh),a		;9dd4
	ret			;9dd7
l9dd8h:
	ld e,(hl)		;9dd8
	inc hl			;9dd9
	ld d,(hl)		;9dda
	inc hl			;9ddb
	ld a,d			;9ddc
	or e			;9ddd
	ret z			;9dde
	ld a,0feh		;9ddf
	call 06009h		;9de1
	inc hl			;9de4
	jr l9dd8h		;9de5
	nop			;9de7
	and b			;9de8
	ld d,e			;9de9
	ld d,h			;9dea
	ld b,c			;9deb
	ld b,(hl)		;9dec
	ld b,(hl)		;9ded
	nop			;9dee
	nop			;9def
	and h			;9df0
	dec l			;9df1
	ld d,b			;9df2
	ld d,d			;9df3
	ld c,a			;9df4
	ld b,a			;9df5
	ld d,d			;9df6
	ld b,c			;9df7
	ld c,l			;9df8
	dec l			;9df9
	nop			;9dfa
	nop			;9dfb
	xor b			;9dfc
	ld d,h			;9dfd
	ld l,041h		;9dfe
	ld b,h			;9e00
	ld b,c			;9e01
	ld b,e			;9e02
	ld c,b			;9e03
	ld c,c			;9e04
	nop			;9e05
	nop			;9e06
	xor h			;9e07
	ld d,d			;9e08
	ld l,053h		;9e09
	ld b,c			;9e0b
	ld b,a			;9e0c
	ld c,c			;9e0d
	ld d,e			;9e0e
	ld b,c			;9e0f
	ld c,e			;9e10
	ld b,c			;9e11
	nop			;9e12
	nop			;9e13
	or b			;9e14
	dec l			;9e15
	ld b,e			;9e16
	ld c,b			;9e17
	ld b,c			;9e18
	ld d,d			;9e19
	ld b,c			;9e1a
	ld b,e			;9e1b
	ld d,h			;9e1c
	ld b,l			;9e1d
	ld d,d			;9e1e
	dec l			;9e1f
	nop			;9e20
	nop			;9e21
	or h			;9e22
	ld c,b			;9e23
	ld l,04dh		;9e24
	ld b,c			;9e26
	ld c,e			;9e27
	ld c,c			;9e28
	ld d,h			;9e29
	ld b,c			;9e2a
	ld c,(hl)		;9e2b
	ld c,c			;9e2c
	nop			;9e2d
	nop			;9e2e
	cp b			;9e2f
	ld d,h			;9e30
	ld l,04bh		;9e31
	ld c,c			;9e33
	ld c,(hl)		;9e34
	ld c,a			;9e35
	ld d,e			;9e36
	ld c,b			;9e37
	ld c,c			;9e38
	ld d,h			;9e39
	ld b,c			;9e3a
	nop			;9e3b
	nop			;9e3c
	cp h			;9e3d
	ld d,h			;9e3e
	ld l,045h		;9e3f
	ld b,a			;9e41
	ld d,l			;9e42
	ld b,e			;9e43
	ld c,b			;9e44
	ld c,c			;9e45
	nop			;9e46
	nop			;9e47
	ret nz			;9e48
	dec l			;9e49
	ld d,e			;9e4a
	ld c,a			;9e4b
	ld d,l			;9e4c
	ld c,(hl)		;9e4d
	ld b,h			;9e4e
	dec l			;9e4f
	nop			;9e50
	nop			;9e51
	call nz,02e54h		;9e52
	ld d,e			;9e55
	ld b,l			;9e56
	ld c,e			;9e57
	ld c,c			;9e58
	ld d,h			;9e59
	ld c,a			;9e5a
	nop			;9e5b
	nop			;9e5c
	ret z			;9e5d
	ld c,e			;9e5e
	ld l,055h		;9e5f
	ld b,l			;9e61
	ld c,b			;9e62
	ld b,c			;9e63
	ld d,d			;9e64
	ld b,c			;9e65
	nop			;9e66
	nop			;9e67
	call z,02e59h		;9e68
	ld c,l			;9e6b
	ld b,c			;9e6c
	ld c,(hl)		;9e6d
	ld c,(hl)		;9e6e
	ld c,a			;9e6f
	nop			;9e70
	nop			;9e71
	ret nc			;9e72
	dec l			;9e73
	ld d,b			;9e74
	ld b,h			;9e75
	jr nz,$+85		;9e76
	ld d,h			;9e78
	ld b,c			;9e79
	ld b,(hl)		;9e7a
	ld b,(hl)		;9e7b
	dec l			;9e7c
	nop			;9e7d
	nop			;9e7e
	call nc,02e4eh		;9e7f
	ld d,e			;9e82
	ld b,c			;9e83
	ld d,h			;9e84
	ld c,a			;9e85
	ld c,b			;9e86
	nop			;9e87
	nop			;9e88
	ret c			;9e89
	ld c,b			;9e8a
	ld l,053h		;9e8b
	ld d,l			;9e8d
	ld c,l			;9e8e
	ld c,c			;9e8f
	ld b,h			;9e90
	ld b,c			;9e91
	nop			;9e92
	nop			;9e93
	call c,0532dh		;9e94
	ld d,b			;9e97
	ld b,l			;9e98
	ld b,e			;9e99
	ld c,c			;9e9a
	ld b,c			;9e9b
	ld c,h			;9e9c
	jr nz,l9ef3h		;9e9d
	ld c,b			;9e9f
	ld b,c			;9ea0
	ld c,(hl)		;9ea1
	ld c,e			;9ea2
	ld d,e			;9ea3
	dec l			;9ea4
	nop			;9ea5
	nop			;9ea6
	ret po			;9ea7
	ld d,d			;9ea8
	ld l,053h		;9ea9
	ld c,b			;9eab
	ld c,a			;9eac
	ld b,a			;9ead
	ld b,c			;9eae
	ld c,e			;9eaf
	ld c,c			;9eb0
	nop			;9eb1
	nop			;9eb2
	call po,02e4eh		;9eb3
	ld c,l			;9eb6
	ld b,c			;9eb7
	ld d,h			;9eb8
	ld d,e			;9eb9
	ld d,l			;9eba
	ld c,c			;9ebb
	nop			;9ebc
	nop			;9ebd
	ret pe			;9ebe
	ld d,b			;9ebf
	ld d,d			;9ec0
	ld b,l			;9ec1
	ld d,e			;9ec2
	ld b,l			;9ec3
	ld c,(hl)		;9ec4
	ld d,h			;9ec5
	ld b,l			;9ec6
	ld b,h			;9ec7
	nop			;9ec8
	nop			;9ec9
	call pe,05942h		;9eca
	nop			;9ecd
	nop			;9ece
	ret p			;9ecf
	ld c,e			;9ed0
	ld c,a			;9ed1
	ld c,(hl)		;9ed2
	ld b,c			;9ed3
	ld c,l			;9ed4
	ld c,c			;9ed5
	nop			;9ed6
	nop			;9ed7
	call p,02040h		;9ed8
	ld c,e			;9edb
	ld c,a			;9edc
	ld c,(hl)		;9edd
	ld b,c			;9ede
	ld c,l			;9edf
	ld c,c			;9ee0
	jr nz,l9f14h		;9ee1
	add hl,sp		;9ee3
	jr c,l9f1fh		;9ee4
	nop			;9ee6
	nop			;9ee7
	nop			;9ee8
	jr nz,$-30		;9ee9
	ld c,c			;9eeb
	ld c,(hl)		;9eec
	jr nz,l9f43h		;9eed
	ld c,b			;9eef
	ld b,l			;9ef0
	jr nz,l9f46h		;9ef1
l9ef3h:
	ld b,h			;9ef3
	ld l,031h		;9ef4
	jr c,l9f31h		;9ef6
	nop			;9ef8
	nop			;9ef9
	add a,b			;9efa
	ld b,h			;9efb
	ld b,c			;9efc
	ld c,(hl)		;9efd
l9efeh:
	ld b,a			;9efe
	ld b,l			;9eff
	ld d,d			;9f00
	jr nz,l9f57h		;9f01
	ld c,b			;9f03
	ld d,d			;9f04
	ld b,l			;9f05
	ld b,c			;9f06
	ld d,h			;9f07
	ld b,l			;9f08
	ld c,(hl)		;9f09
	ld b,h			;9f0a
	nop			;9f0b
	jr nz,l9efeh		;9f0c
	ld c,a			;9f0e
	ld d,l			;9f0f
	ld d,d			;9f10
	jr nz,l9f5ah		;9f11
	ld b,c			;9f13
l9f14h:
	ld c,h			;9f14
	ld b,c			;9f15
	ld e,b			;9f16
	ld e,c			;9f17
	nop			;9f18
	inc d			;9f19
	call m,02020h		;9f1a
	jr nz,l9f3fh		;9f1d
l9f1fh:
	jr nz,l9f41h		;9f1f
	jr nz,l9f43h		;9f21
	jr nz,l9f45h		;9f23
	jr nz,l9f47h		;9f25
	jr nz,l9f49h		;9f27
	jr nz,l9f4bh		;9f29
	nop			;9f2b
	nop			;9f2c
	nop			;9f2d
	rst 38h			;9f2e
	rst 38h			;9f2f
	rst 38h			;9f30
l9f31h:
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
l9f3fh:
	rst 38h			;9f3f
	rst 38h			;9f40
l9f41h:
	rst 38h			;9f41
	rst 38h			;9f42
l9f43h:
	rst 38h			;9f43
	rst 38h			;9f44
l9f45h:
	rst 38h			;9f45
l9f46h:
	rst 38h			;9f46
l9f47h:
	rst 38h			;9f47
	rst 38h			;9f48
l9f49h:
	rst 38h			;9f49
	rst 38h			;9f4a
l9f4bh:
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
l9f57h:
	rst 38h			;9f57
	rst 38h			;9f58
	rst 38h			;9f59
l9f5ah:
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
