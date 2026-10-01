; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank08_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank08.bin

	org 08000h

	sbc a,d			;8000
	dec de			;8001
	sub a			;8002
	sbc a,b			;8003
	sbc a,e			;8004
	sbc a,h			;8005
	inc e			;8006
	sbc a,l			;8007
	sbc a,(hl)		;8008
	sbc a,c			;8009
	sbc a,d			;800a
	dec de			;800b
	sub a			;800c
	ld l,a			;800d
	sbc a,e			;800e
	sbc a,h			;800f
	rst 30h			;8010
	nop			;8011
	add hl,bc		;8012
	dec b			;8013
	ld (bc),a		;8014
	xor (hl)		;8015
	xor a			;8016
	sbc a,c			;8017
	sbc a,d			;8018
	dec de			;8019
	sub a			;801a
	sbc a,b			;801b
	sbc a,e			;801c
	sbc a,h			;801d
	inc e			;801e
	sbc a,l			;801f
	sbc a,(hl)		;8020
	sbc a,c			;8021
	sbc a,d			;8022
	dec de			;8023
	sub a			;8024
	sbc a,b			;8025
	sbc a,e			;8026
	sbc a,h			;8027
	inc e			;8028
	sbc a,l			;8029
	sbc a,(hl)		;802a
	sbc a,c			;802b
	sbc a,d			;802c
	dec de			;802d
	sub a			;802e
	sbc a,b			;802f
	sbc a,e			;8030
	sbc a,h			;8031
	inc e			;8032
	sbc a,l			;8033
	sbc a,(hl)		;8034
	sbc a,c			;8035
	sbc a,d			;8036
	dec de			;8037
	sub a			;8038
	ld l,a			;8039
	sbc a,e			;803a
	sbc a,h			;803b
	inc e			;803c
	sbc a,l			;803d
	sbc a,(hl)		;803e
	scf			;803f
	jr nc,l8042h		;8040
l8042h:
	nop			;8042
	ld bc,00605h		;8043
	xor e			;8046
	xor h			;8047
	xor l			;8048
	sbc a,h			;8049
	nop			;804a
	nop			;804b
	ld (bc),a		;804c
	dec b			;804d
	dec de			;804e
	sub a			;804f
	ld l,a			;8050
	sbc a,c			;8051
	sbc a,d			;8052
	ld b,0abh		;8053
	xor h			;8055
	xor l			;8056
	sbc a,h			;8057
	nop			;8058
	nop			;8059
	inc bc			;805a
	dec b			;805b
	inc e			;805c
	sbc a,l			;805d
	sbc a,(hl)		;805e
	xor l			;805f
	sbc a,h			;8060
	dec de			;8061
	sub a			;8062
	ld l,a			;8063
	sbc a,c			;8064
	sbc a,d			;8065
	ld b,0abh		;8066
	xor h			;8068
	xor l			;8069
	sbc a,h			;806a
	nop			;806b
	nop			;806c
	inc b			;806d
	dec b			;806e
	dec de			;806f
	sub a			;8070
	ld l,a			;8071
	sbc a,c			;8072
	sbc a,d			;8073
	inc e			;8074
	sbc a,l			;8075
	sbc a,(hl)		;8076
	xor l			;8077
	sbc a,h			;8078
	dec de			;8079
	sub a			;807a
	ld l,a			;807b
	sbc a,c			;807c
	sbc a,d			;807d
	ld b,0abh		;807e
	xor h			;8080
	xor l			;8081
	sbc a,h			;8082
	nop			;8083
	nop			;8084
	dec b			;8085
	dec b			;8086
	inc e			;8087
	sbc a,l			;8088
	sbc a,(hl)		;8089
	xor l			;808a
	sbc a,h			;808b
	dec de			;808c
	sub a			;808d
	ld l,a			;808e
	sbc a,c			;808f
	sbc a,d			;8090
	inc e			;8091
	sbc a,l			;8092
	sbc a,(hl)		;8093
	xor l			;8094
	sbc a,h			;8095
	dec de			;8096
	sub a			;8097
	ld l,a			;8098
	sbc a,c			;8099
	sbc a,d			;809a
	ld b,0abh		;809b
	xor h			;809d
	xor l			;809e
	sbc a,h			;809f
	nop			;80a0
	nop			;80a1
	ld b,005h		;80a2
	dec de			;80a4
	ld l,(hl)		;80a5
	ld l,a			;80a6
	sbc a,c			;80a7
	sbc a,d			;80a8
	inc e			;80a9
	sbc a,l			;80aa
	sbc a,(hl)		;80ab
	xor l			;80ac
	sbc a,h			;80ad
	dec de			;80ae
	sub a			;80af
	ld l,a			;80b0
	sbc a,c			;80b1
	sbc a,d			;80b2
	inc e			;80b3
	sbc a,l			;80b4
	sbc a,(hl)		;80b5
	xor l			;80b6
	sbc a,h			;80b7
	dec de			;80b8
	sub a			;80b9
	ld l,a			;80ba
	sbc a,c			;80bb
	sbc a,d			;80bc
	ld b,0abh		;80bd
	xor h			;80bf
	xor l			;80c0
	sbc a,h			;80c1
	nop			;80c2
	nop			;80c3
	rlca			;80c4
	dec b			;80c5
	inc e			;80c6
	sbc a,l			;80c7
	sbc a,(hl)		;80c8
	xor l			;80c9
	sbc a,h			;80ca
	dec de			;80cb
	ld l,(hl)		;80cc
	ld l,a			;80cd
	sbc a,c			;80ce
	sbc a,d			;80cf
	inc e			;80d0
	sbc a,l			;80d1
	sbc a,(hl)		;80d2
	xor l			;80d3
	sbc a,h			;80d4
	dec de			;80d5
	sub a			;80d6
	ld l,a			;80d7
	sbc a,c			;80d8
	sbc a,d			;80d9
	inc e			;80da
	sbc a,l			;80db
	sbc a,(hl)		;80dc
	xor l			;80dd
	sbc a,h			;80de
	dec de			;80df
	sub a			;80e0
	ld l,a			;80e1
	sbc a,c			;80e2
	sbc a,d			;80e3
	ld b,0abh		;80e4
	xor h			;80e6
	xor l			;80e7
	sbc a,h			;80e8
	nop			;80e9
	nop			;80ea
	rlca			;80eb
	inc b			;80ec
	ld h,(hl)		;80ed
	ld h,a			;80ee
	ld h,b			;80ef
	ld h,c			;80f0
	ld l,b			;80f1
	ld l,c			;80f2
	ld h,d			;80f3
	ld h,e			;80f4
	ld (bc),a		;80f5
	ld l,d			;80f6
	jp z,00464h		;80f7
	ret			;80fa
	ret z			;80fb
	push bc			;80fc
	dec b			;80fd
	adc a,d			;80fe
	call z,sub_8884h	;80ff
	adc a,c			;8102
	add a,d			;8103
	add a,e			;8104
	add a,(hl)		;8105
	add a,a			;8106
	add a,b			;8107
	add a,c			;8108
	nop			;8109
	nop			;810a
	rlca			;810b
	inc b			;810c
	ld l,e			;810d
	ld l,h			;810e
	ld h,b			;810f
	ld h,c			;8110
	ld l,l			;8111
	ld l,(hl)		;8112
	ld h,d			;8113
	ld h,e			;8114
	inc bc			;8115
	jp z,065cbh		;8116
	ret			;8119
	ret z			;811a
	rst 0			;811b
	add a,003h		;811c
	call z,085cdh		;811e
	adc a,l			;8121
	adc a,(hl)		;8122
	add a,d			;8123
	add a,e			;8124
	adc a,e			;8125
	adc a,h			;8126
	add a,b			;8127
	add a,c			;8128
	nop			;8129
	nop			;812a
	rlca			;812b
	inc b			;812c
	ld l,a			;812d
	ld (hl),b		;812e
	ld h,b			;812f
	ld h,c			;8130
	ld (hl),c		;8131
	ld (hl),d		;8132
	ld h,d			;8133
	ld h,e			;8134
	ld (hl),e		;8135
	ld (hl),h		;8136
	ld (hl),l		;8137
	ld h,h			;8138
	ld (bc),a		;8139
	ex af,af'		;813a
	ret			;813b
	push bc			;813c
	sub e			;813d
	sub h			;813e
	sub l			;813f
	add a,h			;8140
	sub c			;8141
	sub d			;8142
	add a,d			;8143
	add a,e			;8144
	adc a,a			;8145
	sub b			;8146
	add a,b			;8147
	add a,c			;8148
	nop			;8149
	nop			;814a
	dec c			;814b
	ex af,af'		;814c
	dec hl			;814d
	inc l			;814e
	ld d,(hl)		;814f
	ld d,a			;8150
	add a,e			;8151
	sbc a,c			;8152
	cp (hl)			;8153
	cp l			;8154
	add a,l			;8155
	add a,(hl)		;8156
	or e			;8157
	add a,a			;8158
	cp a			;8159
	ld e,c			;815a
	ld e,h			;815b
	ld e,l			;815c
	and e			;815d
	ld d,c			;815e
	add hl,hl		;815f
	and l			;8160
	sbc a,b			;8161
	cp h			;8162
	cp (hl)			;8163
	and e			;8164
	dec b			;8165
	ld b,0bch		;8166
	cp l			;8168
	cp l			;8169
	cp (hl)			;816a
	ld (bc),a		;816b
	dec b			;816c
	rlca			;816d
	ld b,001h		;816e
	dec b			;8170
	ld bc,00302h		;8171
	ld (bc),a		;8174
	ld (bc),a		;8175
	inc b			;8176
	rlca			;8177
	ld b,003h		;8178
	inc b			;817a
	ld b,004h		;817b
	inc bc			;817d
	rlca			;817e
	dec b			;817f
	rlca			;8180
	ld (bc),a		;8181
	inc b			;8182
	ld (bc),a		;8183
	inc b			;8184
	ld b,003h		;8185
	dec b			;8187
	inc b			;8188
	rlca			;8189
	ld (bc),a		;818a
	inc bc			;818b
	dec b			;818c
	ld (bc),a		;818d
	inc b			;818e
	inc bc			;818f
	rlca			;8190
	inc b			;8191
	inc bc			;8192
	ld b,007h		;8193
	rlca			;8195
	ld b,001h		;8196
	and e			;8198
	cp e			;8199
	inc bc			;819a
	ld b,004h		;819b
	and e			;819d
	sbc a,c			;819e
	and b			;819f
	and l			;81a0
	and (hl)		;81a1
	and e			;81a2
	or b			;81a3
	xor a			;81a4
	add a,l			;81a5
	add a,(hl)		;81a6
	or b			;81a7
	add a,a			;81a8
	cp e			;81a9
	cp l			;81aa
	adc a,l			;81ab
	adc a,(hl)		;81ac
	dec hl			;81ad
	inc l			;81ae
	adc a,b			;81af
	ld d,a			;81b0
	adc a,a			;81b1
	cp h			;81b2
	cp (hl)			;81b3
	cp a			;81b4
	nop			;81b5
	nop			;81b6
	rlca			;81b7
	ex af,af'		;81b8
	nop			;81b9
	nop			;81ba
	nop			;81bb
	nop			;81bc
	ld (bc),a		;81bd
	ld (de),a		;81be
	ld d,018h		;81bf
	nop			;81c1
	ld b,010h		;81c2
	inc a			;81c4
	ld c,(hl)		;81c5
	dec a			;81c6
	ccf			;81c7
	inc sp			;81c8
	nop			;81c9
	ld de,02220h		;81ca
	ld hl,(0303eh)		;81cd
	ld h,007h		;81d0
	ld b,a			;81d2
	dec e			;81d3
	ld d,h			;81d4
	dec hl			;81d5
	ld b,b			;81d6
	scf			;81d7
	inc sp			;81d8
	ex af,af'		;81d9
	ld c,b			;81da
	ld e,024h		;81db
	ld c,h			;81dd
	ld (hl),039h		;81de
	inc sp			;81e0
	add hl,bc		;81e1
	ld b,h			;81e2
	ld hl,02f56h		;81e3
	ld sp,00032h		;81e6
	nop			;81e9
	nop			;81ea
	inc bc			;81eb
	rla			;81ec
	inc d			;81ed
	inc (hl)		;81ee
	nop			;81ef
	nop			;81f0
	nop			;81f1
	nop			;81f2
	rlca			;81f3
	ex af,af'		;81f4
	nop			;81f5
	nop			;81f6
	dec bc			;81f7
	inc c			;81f8
	dec b			;81f9
	dec (hl)		;81fa
	ld d,c			;81fb
	nop			;81fc
	nop			;81fd
	ld a,(bc)		;81fe
	ld b,e			;81ff
	ld d,e			;8200
	ld b,c			;8201
	ld b,(hl)		;8202
	ld a,(00d27h)		;8203
	ld c,l			;8206
	dec de			;8207
	inc hl			;8208
	dec h			;8209
	ld b,d			;820a
	inc l			;820b
	jr z,l821ch		;820c
	ld c,c			;820e
	inc e			;820f
	ld c,a			;8210
	ld c,d			;8211
	jr c,l8266h		;8212
	inc sp			;8214
	rrca			;8215
	ld a,(de)		;8216
	rra			;8217
	ld d,l			;8218
	ld c,e			;8219
	add hl,hl		;821a
	ld b,l			;821b
l821ch:
	inc sp			;821c
	nop			;821d
	inc b			;821e
	ld bc,03b50h		;821f
	ld l,02dh		;8222
	nop			;8224
	nop			;8225
	nop			;8226
	nop			;8227
	nop			;8228
	dec d			;8229
	add hl,de		;822a
	inc de			;822b
	nop			;822c
	nop			;822d
	nop			;822e
	inc bc			;822f
	dec b			;8230
	and h			;8231
	and (hl)		;8232
	and e			;8233
	call nz,0a1a7h		;8234
	jp 0c8c6h		;8237
	ld d,a			;823a
	and l			;823b
	push bc			;823c
	rst 0			;823d
	ret			;823e
	ld d,(hl)		;823f
	nop			;8240
	nop			;8241
	inc bc			;8242
	dec b			;8243
	and l			;8244
	push bc			;8245
	rst 0			;8246
	ret			;8247
	ld d,(hl)		;8248
	and c			;8249
	jp 0c8c6h		;824a
	ld d,a			;824d
	and h			;824e
	and (hl)		;824f
	and e			;8250
	call nz,000a7h		;8251
	nop			;8254
	djnz l8262h		;8255
	nop			;8257
	nop			;8258
	ld bc,02120h		;8259
	ld (02423h),hl		;825c
	dec h			;825f
	ld h,027h		;8260
l8262h:
	nop			;8262
	nop			;8263
	nop			;8264
	inc c			;8265
l8266h:
	add hl,hl		;8266
	ld hl,(02c2bh)		;8267
	dec l			;826a
	ld l,02fh		;826b
	ld c,00eh		;826d
	dec (hl)		;826f
	ld (hl),037h		;8270
	jr c,l82adh		;8272
	ld a,(03c3bh)		;8274
	dec a			;8277
	sbc a,d			;8278
	sbc a,d			;8279
	xor e			;827a
	xor l			;827b
	ld b,(hl)		;827c
	ld b,a			;827d
	ld c,b			;827e
	ld c,c			;827f
	ld c,d			;8280
	ld c,e			;8281
	ld c,h			;8282
	sbc a,e			;8283
	sbc a,e			;8284
	xor e			;8285
	xor l			;8286
	ld d,(hl)		;8287
	ld d,a			;8288
	ld e,b			;8289
	ld e,c			;828a
	ld e,d			;828b
	ld e,e			;828c
	ld e,h			;828d
	sbc a,h			;828e
	sbc a,h			;828f
	xor e			;8290
	xor l			;8291
	ld h,a			;8292
	ld l,b			;8293
	ld l,c			;8294
	ld l,d			;8295
	ld l,d			;8296
	ld l,e			;8297
	ld l,h			;8298
	xor b			;8299
	xor b			;829a
	xor e			;829b
	xor l			;829c
	ld (hl),a		;829d
	xor (hl)		;829e
	add a,l			;829f
	add a,(hl)		;82a0
	add a,a			;82a1
	xor d			;82a2
	or (hl)			;82a3
	and a			;82a4
	and a			;82a5
	xor e			;82a6
	xor l			;82a7
	xor h			;82a8
	xor a			;82a9
	add a,h			;82aa
	adc a,b			;82ab
	adc a,c			;82ac
l82adh:
	adc a,d			;82ad
	xor a			;82ae
	and (hl)		;82af
	and (hl)		;82b0
	xor e			;82b1
	xor l			;82b2
	xor h			;82b3
	xor (hl)		;82b4
	add a,h			;82b5
	adc a,b			;82b6
	adc a,c			;82b7
	add a,a			;82b8
	xor (hl)		;82b9
	and l			;82ba
	and l			;82bb
	xor e			;82bc
	xor l			;82bd
	ld (hl),a		;82be
	xor a			;82bf
	add a,l			;82c0
	add a,(hl)		;82c1
	add a,l			;82c2
	adc a,d			;82c3
	or (hl)			;82c4
	sbc a,h			;82c5
	sbc a,h			;82c6
	xor e			;82c7
	xor l			;82c8
	ld h,a			;82c9
	ld l,b			;82ca
	ld l,c			;82cb
	ld l,d			;82cc
	ld l,d			;82cd
	ld l,e			;82ce
	ld l,h			;82cf
	sbc a,e			;82d0
	sbc a,e			;82d1
	xor e			;82d2
	xor l			;82d3
	ld d,(hl)		;82d4
	ld d,a			;82d5
	ld e,b			;82d6
	ld e,c			;82d7
	ld e,d			;82d8
	ld e,e			;82d9
	ld e,h			;82da
	sbc a,d			;82db
	sbc a,d			;82dc
	xor e			;82dd
	xor l			;82de
	ld b,(hl)		;82df
	ld b,a			;82e0
	ld c,b			;82e1
	ld c,c			;82e2
	ld c,d			;82e3
	ld c,e			;82e4
	ld c,h			;82e5
	ld c,00eh		;82e6
	dec (hl)		;82e8
	ld (hl),037h		;82e9
	jr c,$+59		;82eb
	ld a,(03c3bh)		;82ed
	dec a			;82f0
	nop			;82f1
	nop			;82f2
	nop			;82f3
	inc c			;82f4
	add hl,hl		;82f5
	ld hl,(02c2bh)		;82f6
	dec l			;82f9
	ld l,02fh		;82fa
	nop			;82fc
	nop			;82fd
	ld bc,02120h		;82fe
	ld (02423h),hl		;8301
	dec h			;8304
	ld h,027h		;8305
	nop			;8307
	nop			;8308
	rlca			;8309
	ex af,af'		;830a
	nop			;830b
	ld bc,00302h		;830c
	nop			;830f
	nop			;8310
	nop			;8311
	nop			;8312
	inc b			;8313
	jr nz,$+35		;8314
	dec b			;8316
	nop			;8317
	nop			;8318
	nop			;8319
	nop			;831a
	ld b,022h		;831b
	inc hl			;831d
	inc h			;831e
	rlca			;831f
	nop			;8320
	nop			;8321
	nop			;8322
	ex af,af'		;8323
	dec h			;8324
	ld h,027h		;8325
	add hl,bc		;8327
	nop			;8328
	nop			;8329
	nop			;832a
	ld a,(bc)		;832b
	jr z,l8357h		;832c
	ld hl,(00b2bh)		;832e
	nop			;8331
	nop			;8332
	nop			;8333
	inc l			;8334
	dec l			;8335
	ld l,02fh		;8336
	inc c			;8338
	nop			;8339
	nop			;833a
	dec c			;833b
	jr nc,l836fh		;833c
	ld (03433h),a		;833e
	ld c,00fh		;8341
	nop			;8343
	nop			;8344
	rlca			;8345
	ex af,af'		;8346
	dec c			;8347
	jr nc,l837bh		;8348
	ld (03433h),a		;834a
	ld c,00fh		;834d
	nop			;834f
	inc l			;8350
	dec l			;8351
	ld l,02fh		;8352
	inc c			;8354
	nop			;8355
	nop			;8356
l8357h:
	ld a,(bc)		;8357
	jr z,l8383h		;8358
	ld hl,(00b2bh)		;835a
	nop			;835d
	nop			;835e
	ex af,af'		;835f
	dec h			;8360
	ld h,027h		;8361
	add hl,bc		;8363
	nop			;8364
	nop			;8365
	nop			;8366
	ld b,022h		;8367
	inc hl			;8369
	inc h			;836a
	rlca			;836b
	nop			;836c
	nop			;836d
	nop			;836e
l836fh:
	inc b			;836f
	jr nz,$+35		;8370
	dec b			;8372
	nop			;8373
	nop			;8374
	nop			;8375
	nop			;8376
	nop			;8377
	ld bc,00302h		;8378
l837bh:
	nop			;837b
	nop			;837c
	nop			;837d
	nop			;837e
	nop			;837f
	nop			;8380
	djnz l838fh		;8381
l8383h:
	jr z,l83adh		;8383
	ld (bc),a		;8385
	inc bc			;8386
	inc b			;8387
	dec b			;8388
	nop			;8389
	nop			;838a
	nop			;838b
	nop			;838c
	nop			;838d
	nop			;838e
l838fh:
	jr nc,l83c1h		;838f
	ld sp,03332h		;8391
	inc (hl)		;8394
	ld b,007h		;8395
	nop			;8397
	nop			;8398
	nop			;8399
	nop			;839a
	ld a,03fh		;839b
	ld b,b			;839d
	ld b,c			;839e
	ld b,d			;839f
	ld b,e			;83a0
	ld b,h			;83a1
	ld b,l			;83a2
	ex af,af'		;83a3
	nop			;83a4
	nop			;83a5
	nop			;83a6
	ld c,l			;83a7
	ld c,(hl)		;83a8
	ld c,a			;83a9
	ld d,b			;83aa
	ld d,c			;83ab
	ld d,d			;83ac
l83adh:
	ld d,e			;83ad
	ld d,h			;83ae
	ld d,l			;83af
	add hl,bc		;83b0
	nop			;83b1
	nop			;83b2
	ld e,l			;83b3
	ld e,(hl)		;83b4
	ld e,a			;83b5
	ld h,b			;83b6
	ld h,c			;83b7
	ld h,d			;83b8
	ld h,e			;83b9
	ld h,h			;83ba
	ld h,l			;83bb
	ld h,(hl)		;83bc
	ld a,(bc)		;83bd
	nop			;83be
	ld l,l			;83bf
	ld l,(hl)		;83c0
l83c1h:
	ld l,a			;83c1
	ld l,a			;83c2
	ld (hl),b		;83c3
	ld (hl),c		;83c4
	ld (hl),d		;83c5
	ld (hl),e		;83c6
	ld (hl),h		;83c7
	ld (hl),l		;83c8
	halt			;83c9
	dec bc			;83ca
	ld a,d			;83cb
	ld a,e			;83cc
	ld a,h			;83cd
	ld a,h			;83ce
	ld a,l			;83cf
	ld a,(hl)		;83d0
	ld a,a			;83d1
	add a,c			;83d2
	add a,d			;83d3
	add a,e			;83d4
	add a,e			;83d5
	dec c			;83d6
	adc a,e			;83d7
	adc a,h			;83d8
	adc a,l			;83d9
	adc a,(hl)		;83da
	adc a,a			;83db
	sub b			;83dc
	sub c			;83dd
	xor d			;83de
	ld (hl),a		;83df
	ld a,h			;83e0
	nop			;83e1
	nop			;83e2
	adc a,e			;83e3
	adc a,h			;83e4
	adc a,l			;83e5
	adc a,(hl)		;83e6
	adc a,a			;83e7
	sub b			;83e8
	sub c			;83e9
	xor d			;83ea
	ld (hl),a		;83eb
	ld a,h			;83ec
	nop			;83ed
	nop			;83ee
	ld a,d			;83ef
	ld a,e			;83f0
	ld a,h			;83f1
	ld a,h			;83f2
	ld a,l			;83f3
	ld a,(hl)		;83f4
	ld a,a			;83f5
	add a,c			;83f6
	add a,d			;83f7
	add a,e			;83f8
	add a,e			;83f9
	dec c			;83fa
	ld l,l			;83fb
	ld l,(hl)		;83fc
	ld l,a			;83fd
	ld l,a			;83fe
	ld (hl),b		;83ff
	ld (hl),c		;8400
	ld (hl),d		;8401
	ld (hl),e		;8402
	ld (hl),h		;8403
	ld (hl),l		;8404
	halt			;8405
	dec bc			;8406
	ld e,l			;8407
	ld e,(hl)		;8408
	ld e,a			;8409
	ld h,b			;840a
	ld h,c			;840b
	ld h,d			;840c
	ld h,e			;840d
	ld h,h			;840e
	ld h,l			;840f
	ld h,(hl)		;8410
	ld a,(bc)		;8411
	nop			;8412
	ld c,l			;8413
	ld c,(hl)		;8414
	ld c,a			;8415
	ld d,b			;8416
	ld d,c			;8417
	ld d,d			;8418
	ld d,e			;8419
	ld d,h			;841a
	ld d,l			;841b
	add hl,bc		;841c
	nop			;841d
	nop			;841e
	ld a,03fh		;841f
	ld b,b			;8421
	ld b,c			;8422
	ld b,d			;8423
	ld b,e			;8424
	ld b,h			;8425
	ld b,l			;8426
	ex af,af'		;8427
	nop			;8428
	nop			;8429
	nop			;842a
	jr nc,l845dh		;842b
	ld sp,03332h		;842d
	inc (hl)		;8430
	ld b,007h		;8431
	nop			;8433
	nop			;8434
	nop			;8435
	nop			;8436
	jr z,l8461h		;8437
	ld (bc),a		;8439
	inc bc			;843a
	inc b			;843b
	dec b			;843c
	nop			;843d
	nop			;843e
	nop			;843f
	nop			;8440
	nop			;8441
	nop			;8442
	nop			;8443
	nop			;8444
	inc c			;8445
	ld (bc),a		;8446
	rrca			;8447
	rrca			;8448
	sub d			;8449
	sub d			;844a
	sub e			;844b
	sub e			;844c
	sbc a,l			;844d
	sbc a,l			;844e
	sbc a,(hl)		;844f
	sbc a,(hl)		;8450
	sbc a,a			;8451
	sbc a,a			;8452
	xor c			;8453
	xor c			;8454
	xor b			;8455
	xor b			;8456
	and a			;8457
	and a			;8458
	and d			;8459
	and d			;845a
	and c			;845b
	and c			;845c
l845dh:
	rrca			;845d
	rrca			;845e
	nop			;845f
	nop			;8460
l8461h:
	inc c			;8461
	ld (bc),a		;8462
	djnz l8475h		;8463
	sub h			;8465
	sub h			;8466
	sub l			;8467
	sub l			;8468
	sub (hl)		;8469
	sub (hl)		;846a
	xor c			;846b
	xor c			;846c
	xor b			;846d
	xor b			;846e
	and a			;846f
	and a			;8470
	and b			;8471
	and b			;8472
	sub h			;8473
	sub h			;8474
l8475h:
	sub e			;8475
	sub e			;8476
	sub d			;8477
	sub d			;8478
	djnz l848bh		;8479
	nop			;847b
	nop			;847c
	inc c			;847d
	ld (bc),a		;847e
	ld de,l9711h		;847f
	sub a			;8482
	sbc a,b			;8483
	sbc a,b			;8484
	sbc a,c			;8485
	sbc a,c			;8486
	and b			;8487
	and b			;8488
	and (hl)		;8489
	and (hl)		;848a
l848bh:
	and l			;848b
	and l			;848c
	xor c			;848d
	xor c			;848e
	sub a			;848f
	sub a			;8490
	sub (hl)		;8491
	sub (hl)		;8492
	sub l			;8493
	sub l			;8494
	ld de,00011h		;8495
	nop			;8498
	inc c			;8499
	ld (bc),a		;849a
	ld (de),a		;849b
	ld (de),a		;849c
	and c			;849d
	and c			;849e
	and d			;849f
	and d			;84a0
	and (hl)		;84a1
	and (hl)		;84a2
	and l			;84a3
	and l			;84a4
	xor c			;84a5
	xor c			;84a6
	sbc a,a			;84a7
	sbc a,a			;84a8
	sbc a,(hl)		;84a9
	sbc a,(hl)		;84aa
	sbc a,l			;84ab
	sbc a,l			;84ac
	sbc a,c			;84ad
sub_84aeh:
	sbc a,c			;84ae
	sbc a,b			;84af
	sbc a,b			;84b0
	ld (de),a		;84b1
	ld (de),a		;84b2
	ld b,0ffh		;84b3
	inc b			;84b5
	ld bc,01b1ah		;84b6
	dec de			;84b9
	ld a,(de)		;84ba
	ld b,0ffh		;84bb
	inc b			;84bd
	ld bc,01c1dh		;84be
	inc e			;84c1
	dec e			;84c2
	nop			;84c3
	nop			;84c4
	inc b			;84c5
	ld bc,01913h		;84c6
	add hl,de		;84c9
	inc de			;84ca
	nop			;84cb
	nop			;84cc
	inc b			;84cd
	ld (bc),a		;84ce
	inc de			;84cf
	inc d			;84d0
	add hl,de		;84d1
	and e			;84d2
	add hl,de		;84d3
	and e			;84d4
	inc de			;84d5
	inc d			;84d6
	nop			;84d7
	nop			;84d8
	ld b,002h		;84d9
	nop			;84db
	rla			;84dc
	dec d			;84dd
	and h			;84de
	ld d,018h		;84df
	ld d,018h		;84e1
	dec d			;84e3
	and h			;84e4
	nop			;84e5
	rla			;84e6
	nop			;84e7
	nop			;84e8
	ld b,002h		;84e9
	inc de			;84eb
	inc d			;84ec
	add hl,de		;84ed
	and e			;84ee
	nop			;84ef
	nop			;84f0
	nop			;84f1
	nop			;84f2
	add hl,de		;84f3
	and e			;84f4
	inc de			;84f5
	inc d			;84f6
	nop			;84f7
	nop			;84f8
	ex af,af'		;84f9
	ld (bc),a		;84fa
	nop			;84fb
	rla			;84fc
	dec d			;84fd
	and h			;84fe
	ld d,018h		;84ff
	nop			;8501
	nop			;8502
	nop			;8503
	nop			;8504
	ld d,018h		;8505
	dec d			;8507
	and h			;8508
	nop			;8509
	rla			;850a
	ld b,007h		;850b
	inc b			;850d
	ld bc,0b1b0h		;850e
	or b			;8511
	or c			;8512
	ld b,007h		;8513
	inc b			;8515
	ld bc,0b3b2h		;8516
	or d			;8519
	or e			;851a
	ld b,007h		;851b
	inc b			;851d
	ld bc,0b5b4h		;851e
	or h			;8521
	or l			;8522
	ld b,00ch		;8523
	inc b			;8525
	ld bc,0b1b7h		;8526
	or b			;8529
	or a			;852a
	ld b,00ch		;852b
	inc b			;852d
	ld bc,0b3b8h		;852e
	or d			;8531
	cp b			;8532
	ld b,00ch		;8533
	inc b			;8535
	ld bc,0b5b9h		;8536
	or h			;8539
	cp c			;853a
	ld b,001h		;853b
	inc b			;853d
	ld bc,0c8c8h		;853e
	ret z			;8541
	ret z			;8542
	ld b,000h		;8543
	inc b			;8545
	ld (bc),a		;8546
	ret z			;8547
	ret			;8548
	ret z			;8549
	ret			;854a
	ret z			;854b
	ret			;854c
	ret z			;854d
	ret			;854e
	ld b,0ffh		;854f
	inc b			;8551
	inc bc			;8552
	ret z			;8553
	ret			;8554
	jp z,0c9c8h		;8555
	jp z,0c9c8h		;8558
	jp z,0c9c8h		;855b
	jp z,0fe06h		;855e
	inc b			;8561
	inc b			;8562
	ret z			;8563
	ret			;8564
	jp z,0c8c8h		;8565
	ret			;8568
	jp z,0c8c8h		;8569
	ret			;856c
	jp z,0c8c8h		;856d
	ret			;8570
	jp z,006c8h		;8571
	defb 0fdh,004h,005h ;illegal sequence	;8574
	ret z			;8577
	ret			;8578
	jp z,0c9c8h		;8579
	ret z			;857c
	ret			;857d
	jp z,0c9c8h		;857e
	ret z			;8581
	ret			;8582
	jp z,0c9c8h		;8583
	ret z			;8586
	ret			;8587
	jp z,0c9c8h		;8588
	ld b,0fch		;858b
	inc b			;858d
	ld b,0c8h		;858e
	ret			;8590
	jp z,0c9c8h		;8591
	jp z,0c9c8h		;8594
	jp z,0c9c8h		;8597
	jp z,0c9c8h		;859a
	jp z,0c9c8h		;859d
	jp z,0c9c8h		;85a0
	jp z,0c9c8h		;85a3
	jp z,0fb06h		;85a6
	inc b			;85a9
	rlca			;85aa
	ret			;85ab
	jp z,0c9c8h		;85ac
	jp z,0c9c8h		;85af
	ret			;85b2
	jp z,0c9c8h		;85b3
	jp z,0c9c8h		;85b6
	ret			;85b9
	jp z,0c9c8h		;85ba
	jp z,0c9c8h		;85bd
	ret			;85c0
	jp z,0c9c8h		;85c1
	jp z,0c9c8h		;85c4
	ld b,0fbh		;85c7
	inc b			;85c9
	rlca			;85ca
	jp z,0c9c8h		;85cb
	jp z,0c9c8h		;85ce
	jp z,0c8cah		;85d1
	ret			;85d4
	jp z,0c9c8h		;85d5
	jp z,0c8cah		;85d8
	ret			;85db
	jp z,0c9c8h		;85dc
	jp z,0c8cah		;85df
	ret			;85e2
	jp z,0c9c8h		;85e3
	jp z,0fb06h		;85e6
	inc b			;85e9
	rlca			;85ea
	ret z			;85eb
	ret			;85ec
	jp z,0c9c8h		;85ed
	jp z,0c8c8h		;85f0
	ret			;85f3
	jp z,0c9c8h		;85f4
	jp z,0c8c8h		;85f7
	ret			;85fa
	jp z,0c9c8h		;85fb
	jp z,0c8c8h		;85fe
	ret			;8601
	jp z,0c9c8h		;8602
	jp z,007c8h		;8605
	ld c,002h		;8608
	inc b			;860a
	ret nz			;860b
	call nz,0c1c7h		;860c
	ret nz			;860f
	call nz,0c1c7h		;8610
	rlca			;8613
	ld c,002h		;8614
	inc b			;8616
	ret nz			;8617
	jp 0c1c6h		;8618
	ret nz			;861b
	jp 0c1c6h		;861c
	rlca			;861f
	ld c,002h		;8620
	inc b			;8622
	ret nz			;8623
	jp nz,0c1c5h		;8624
	ret nz			;8627
	jp nz,0c1c5h		;8628
	ld a,h			;862b
	and (hl)		;862c
	adc a,a			;862d
	and (hl)		;862e
	xor a			;862f
	and (hl)		;8630
	ex (sp),hl		;8631
	and (hl)		;8632
	ld b,c			;8633
	and a			;8634
	ld (hl),a		;8635
	and (hl)		;8636
	ld a,h			;8637
	and (hl)		;8638
	adc a,a			;8639
	and (hl)		;863a
	xor a			;863b
	and (hl)		;863c
	ex (sp),hl		;863d
	and (hl)		;863e
	ld b,c			;863f
	and a			;8640
	ld a,h			;8641
	and (hl)		;8642
	adc a,a			;8643
	and (hl)		;8644
	xor a			;8645
	and (hl)		;8646
	ld c,l			;8647
	sub c			;8648
	ld e,c			;8649
	sub c			;864a
	and c			;864b
	sub b			;864c
	add hl,de		;864d
	sub (hl)		;864e
	dec h			;864f
	sub (hl)		;8650
	ld (hl),c		;8651
	sub (hl)		;8652
	ld d,c			;8653
	adc a,l			;8654
	ld d,c			;8655
	adc a,l			;8656
	add hl,sp		;8657
	adc a,l			;8658
	sub l			;8659
	adc a,l			;865a
	cp e			;865b
	sub a			;865c
	add hl,de		;865d
	sub a			;865e
	add a,l			;865f
	and a			;8660
	and a			;8661
	and a			;8662
	xor (hl)		;8663
	and a			;8664
	ret nc			;8665
	and a			;8666
	ld b,0a8h		;8667
	inc c			;8669
	xor b			;866a
	ld b,d			;866b
	xor b			;866c
	adc a,h			;866d
	xor b			;866e
	xor b			;866f
	xor b			;8670
	ld b,0a9h		;8671
	ld l,(hl)		;8673
	xor c			;8674
	or c			;8675
	xor c			;8676
	nop			;8677
	nop			;8678
	ld bc,00001h		;8679
	nop			;867c
	nop			;867d
	inc bc			;867e
	dec b			;867f
	nop			;8680
	xor 0efh		;8681
	ret p			;8683
	nop			;8684
	ex de,hl		;8685
	jp p,0fdfah		;8686
	defb 0edh ;next byte illegal after ed	;8689
	nop			;868a
	call p,0ecf6h		;868b
	nop			;868e
	nop			;868f
	nop			;8690
	inc b			;8691
	rlca			;8692
	nop			;8693
	nop			;8694
	xor 0efh		;8695
	rst 28h			;8697
	ret p			;8698
	nop			;8699
	nop			;869a
	xor 0f7h		;869b
	jp m,0f3f8h		;869d
	defb 0edh ;next byte illegal after ed	;86a0
	ex de,hl		;86a1
	jp p,0fbfbh		;86a2
	call m,0edf9h		;86a5
	nop			;86a8
	call p,0f5f6h		;86a9
	or 0ech			;86ac
	nop			;86ae
	nop			;86af
	nop			;86b0
	ld b,008h		;86b1
	nop			;86b3
	nop			;86b4
	xor 0efh		;86b5
	rst 28h			;86b7
	ret p			;86b8
	nop			;86b9
	nop			;86ba
	nop			;86bb
	xor 0f7h		;86bc
	ret m			;86be
	ret m			;86bf
	di			;86c0
	ret p			;86c1
	nop			;86c2
	nop			;86c3
	pop af			;86c4
	rst 30h			;86c5
	jp m,0fcf8h		;86c6
	defb 0fdh,0edh,0ebh ;illegal sequence	;86c9
	jp p,0fcfbh		;86cc
	call m,0ecfdh		;86cf
	nop			;86d2
	ex de,hl		;86d3
	jp p,0fcfbh		;86d4
	call m,0edf9h		;86d7
	nop			;86da
	nop			;86db
	call p,0f5f6h		;86dc
	or 0ech			;86df
	nop			;86e1
	nop			;86e2
	nop			;86e3
	nop			;86e4
	add hl,bc		;86e5
	ld a,(bc)		;86e6
	nop			;86e7
	nop			;86e8
	xor 0efh		;86e9
	ret p			;86eb
	nop			;86ec
	nop			;86ed
	nop			;86ee
	nop			;86ef
	nop			;86f0
	nop			;86f1
	xor 0f7h		;86f2
	jp m,0effdh		;86f4
	ret p			;86f7
	nop			;86f8
	nop			;86f9
	nop			;86fa
	nop			;86fb
	pop af			;86fc
	ei			;86fd
	jp m,0f8f7h		;86fe
	defb 0fdh,0f0h,000h ;illegal sequence	;8701
	nop			;8704
	nop			;8705
	call p,0fbf2h		;8706
	jp m,0fdf8h		;8709
	defb 0fdh,0edh,000h ;illegal sequence	;870c
	nop			;870f
	ex de,hl		;8710
	jp p,0fafbh		;8711
	call m,0f3f8h		;8714
	ret p			;8717
	nop			;8718
	nop			;8719
	xor 0f2h		;871a
	jp m,0fcfah		;871c
	call m,0fdfch		;871f
	defb 0edh ;next byte illegal after ed	;8722
	nop			;8723
	pop af			;8724
	jp p,0fcfbh		;8725
	call m,0f6f6h		;8728
	call pe,0eb00h		;872b
	jp p,0fafbh		;872e
	call m,0edf9h		;8731
	nop			;8734
	nop			;8735
	nop			;8736
	nop			;8737
	call p,0f5f6h		;8738
	or 0ech			;873b
	nop			;873d
	nop			;873e
	nop			;873f
	nop			;8740
	nop			;8741
	nop			;8742
	ex af,af'		;8743
	ex af,af'		;8744
	nop			;8745
	xor 0efh		;8746
	ret p			;8748
	nop			;8749
	nop			;874a
	nop			;874b
	nop			;874c
	ex de,hl		;874d
	jp p,0fdfah		;874e
	rst 28h			;8751
	ret p			;8752
	nop			;8753
	nop			;8754
	nop			;8755
	call p,0fbf5h		;8756
	rst 30h			;8759
	ret m			;875a
	ret p			;875b
	nop			;875c
	nop			;875d
	nop			;875e
	ex de,hl		;875f
	jp p,0fafah		;8760
	defb 0fdh,0edh,000h ;illegal sequence	;8763
	nop			;8766
	nop			;8767
	call p,0f6f5h		;8768
	call pe,00000h		;876b
	xor 0efh		;876e
	ret p			;8770
	nop			;8771
	nop			;8772
	nop			;8773
	nop			;8774
	ex de,hl		;8775
	jp p,0fdfah		;8776
	defb 0edh ;next byte illegal after ed	;8779
	nop			;877a
	nop			;877b
	nop			;877c
	nop			;877d
	call p,0ecf6h		;877e
	nop			;8781
	nop			;8782
	nop			;8783
	nop			;8784
	nop			;8785
	nop			;8786
	inc bc			;8787
	ld a,(bc)		;8788
	nop			;8789
	nop			;878a
	nop			;878b
	nop			;878c
	nop			;878d
	xor 0efh		;878e
	rst 28h			;8790
	ret p			;8791
	nop			;8792
	nop			;8793
	nop			;8794
	nop			;8795
	nop			;8796
	xor 0f7h		;8797
	ret m			;8799
	jp m,0edfdh		;879a
	xor 0efh		;879d
	ret p			;879f
	xor 0f7h		;87a0
	rst 30h			;87a2
	jp m,0f3f8h		;87a3
	ret p			;87a6
	nop			;87a7
	nop			;87a8
	ld bc,0ee03h		;87a9
	rst 28h			;87ac
	ret p			;87ad
	nop			;87ae
	nop			;87af
	inc bc			;87b0
	ld a,(bc)		;87b1
	nop			;87b2
	nop			;87b3
	nop			;87b4
	nop			;87b5
	nop			;87b6
	nop			;87b7
	nop			;87b8
	nop			;87b9
	xor 0efh		;87ba
	nop			;87bc
	nop			;87bd
	nop			;87be
	nop			;87bf
	xor 0efh		;87c0
	ret p			;87c2
	xor 0f1h		;87c3
	rst 30h			;87c5
	xor 0efh		;87c6
	ret p			;87c8
	xor 0f7h		;87c9
	jp m,0f2f3h		;87cb
	rst 30h			;87ce
	ret m			;87cf
	nop			;87d0
	nop			;87d1
	dec b			;87d2
	ld a,(bc)		;87d3
	xor 0efh		;87d4
	ret p			;87d6
	nop			;87d7
	nop			;87d8
	nop			;87d9
	nop			;87da
	nop			;87db
	nop			;87dc
	nop			;87dd
	pop af			;87de
	ret m			;87df
	defb 0fdh,0edh,000h ;illegal sequence	;87e0
	nop			;87e3
	nop			;87e4
	nop			;87e5
	nop			;87e6
	nop			;87e7
	jp p,0f9fah		;87e8
	defb 0edh ;next byte illegal after ed	;87eb
	xor 0efh		;87ec
	rst 28h			;87ee
	ret p			;87ef
	nop			;87f0
	nop			;87f1
	rst 30h			;87f2
	call m,0eefdh		;87f3
	rst 30h			;87f6
	ret m			;87f7
	jp m,0edfdh		;87f8
	nop			;87fb
	rst 30h			;87fc
	jp m,0f7f7h		;87fd
	ret m			;8800
	jp m,0f3f8h		;8801
	ret p			;8804
	xor 000h		;8805
	nop			;8807
	ld bc,0ef02h		;8808
	ret p			;880b
	nop			;880c
	nop			;880d
	dec b			;880e
	ld a,(bc)		;880f
	nop			;8810
	nop			;8811
	nop			;8812
	nop			;8813
	nop			;8814
	xor 0efh		;8815
	ret p			;8817
	nop			;8818
	nop			;8819
	nop			;881a
	nop			;881b
	nop			;881c
	nop			;881d
	xor 0f7h		;881e
	jp m,0edf3h		;8820
	xor 000h		;8823
	nop			;8825
	nop			;8826
	ex de,hl		;8827
	jp p,0fafbh		;8828
	ld sp,hl		;882b
	xor 0f1h		;882c
	nop			;882e
	nop			;882f
	nop			;8830
	xor 0f7h		;8831
	jp m,0f3fch		;8833
	jp p,0eef7h		;8836
	rst 28h			;8839
	xor 0f7h		;883a
	ei			;883c
	call m,0f8fah		;883d
	ret m			;8840
	ei			;8841
	nop			;8842
	nop			;8843
	rlca			;8844
	ld a,(bc)		;8845
	nop			;8846
	nop			;8847
	xor 0efh		;8848
	ret p			;884a
	nop			;884b
	nop			;884c
	nop			;884d
	nop			;884e
	nop			;884f
	nop			;8850
	xor 0f7h		;8851
	jp m,0edfdh		;8853
	nop			;8856
	nop			;8857
	nop			;8858
	nop			;8859
	nop			;885a
	pop af			;885b
	rst 30h			;885c
	ret m			;885d
	di			;885e
	defb 0edh ;next byte illegal after ed	;885f
	xor 0efh		;8860
	rst 28h			;8862
	ret p			;8863
	rst 28h			;8864
	jp p,0f8fbh		;8865
	ld sp,hl		;8868
	xor 0f8h		;8869
	ret m			;886b
	ret m			;886c
	defb 0fdh,0f7h,0f7h ;illegal sequence	;886d
	jp m,0f3fch		;8870
	jp p,0f9fah		;8873
	ei			;8876
	ld sp,hl		;8877
	ret m			;8878
	rst 30h			;8879
	jp m,0f7f8h		;887a
	ret m			;887d
	call m,0f2fdh		;887e
	defb 0fdh,0fch,0fbh ;illegal sequence	;8881
sub_8884h:
	jp m,0fafah		;8884
	call m,0f3f9h		;8887
	ret m			;888a
	rst 30h			;888b
	nop			;888c
	nop			;888d
	inc b			;888e
	ld b,0edh		;888f
	nop			;8891
	nop			;8892
	nop			;8893
	nop			;8894
	nop			;8895
	ret p			;8896
	xor 0efh		;8897
	rst 28h			;8899
	ret p			;889a
	nop			;889b
	ret m			;889c
	rst 30h			;889d
	ret m			;889e
	jp m,0edfdh		;889f
	jp m,0faf8h		;88a2
	ret m			;88a5
	di			;88a6
	ret p			;88a7
	nop			;88a8
	nop			;88a9
	add hl,bc		;88aa
	ld a,(bc)		;88ab
	nop			;88ac
	nop			;88ad
	nop			;88ae
	nop			;88af
	nop			;88b0
	xor 0efh		;88b1
	rst 28h			;88b3
	ret p			;88b4
	nop			;88b5
	nop			;88b6
	nop			;88b7
	nop			;88b8
	nop			;88b9
	xor 0f7h		;88ba
	ret m			;88bc
	ret m			;88bd
	defb 0fdh,0f0h,000h ;illegal sequence	;88be
	nop			;88c1
	nop			;88c2
	nop			;88c3
	pop af			;88c4
	rst 30h			;88c5
	jp m,0fcf8h		;88c6
	defb 0fdh,000h,000h ;illegal sequence	;88c9
	nop			;88cc
	ex de,hl		;88cd
	jp p,0fafbh		;88ce
	call m,0ecfdh		;88d1
	nop			;88d4
	nop			;88d5
	nop			;88d6
	ex de,hl		;88d7
	jp p,0fcfbh		;88d8
	call m,0edf3h		;88db
	nop			;88de
	nop			;88df
	nop			;88e0
	nop			;88e1
	call p,0faf2h		;88e2
	ret m			;88e5
	ld sp,hl		;88e6
	xor 000h		;88e7
	nop			;88e9
	nop			;88ea
	nop			;88eb
	nop			;88ec
	pop af			;88ed
	rst 30h			;88ee
	jp m,0f2f3h		;88ef
	nop			;88f2
	nop			;88f3
	xor 0efh		;88f4
	xor 0f7h		;88f6
	ei			;88f8
	ret m			;88f9
	ret m			;88fa
	ret m			;88fb
	xor 0efh		;88fc
	rst 30h			;88fe
	rst 30h			;88ff
	rst 30h			;8900
	jp m,0faf8h		;8901
	jp m,000f8h		;8904
	nop			;8907
	ld a,(bc)		;8908
	ld a,(bc)		;8909
	nop			;890a
	nop			;890b
	nop			;890c
	nop			;890d
	xor 0efh		;890e
	rst 28h			;8910
	ret p			;8911
	nop			;8912
	nop			;8913
	nop			;8914
	nop			;8915
	nop			;8916
	xor 0f7h		;8917
	ret m			;8919
	ret m			;891a
	defb 0fdh,0f0h,000h ;illegal sequence	;891b
	nop			;891e
	nop			;891f
	nop			;8920
	pop af			;8921
	rst 30h			;8922
	jp m,0fcf8h		;8923
	defb 0fdh,0edh,0edh ;illegal sequence	;8926
	nop			;8929
	ex de,hl		;892a
	jp p,0fcfbh		;892b
	call m,0ecfdh		;892e
	nop			;8931
	xor 0eeh		;8932
	rst 28h			;8934
	rst 30h			;8935
	jp m,0f8fah		;8936
	di			;8939
	ret p			;893a
	xor 0f1h		;893b
	rst 30h			;893d
	ret m			;893e
	ei			;893f
	jp m,0f8f8h		;8940
	ld sp,hl		;8943
	rst 30h			;8944
	ret m			;8945
	rst 30h			;8946
	ret m			;8947
	call m,0fafah		;8948
	ei			;894b
	call m,0f2f3h		;894c
	jp m,0faf8h		;894f
	ret m			;8952
	ld sp,hl		;8953
	rst 30h			;8954
	jp m,0f7f8h		;8955
	ret m			;8958
	jp m,0fafah		;8959
	jp m,0f2f3h		;895c
	jp m,0fafbh		;895f
	jp m,0f8fch		;8962
	jp m,0f7f8h		;8965
	ret m			;8968
	jp m,0fafah		;8969
	call m,000f9h		;896c
	nop			;896f
	add hl,bc		;8970
	rlca			;8971
	nop			;8972
	nop			;8973
	xor 0efh		;8974
	rst 28h			;8976
	ret p			;8977
	nop			;8978
	nop			;8979
	ex de,hl		;897a
	jp p,0f8fah		;897b
	di			;897e
	defb 0edh ;next byte illegal after ed	;897f
	xor 0efh		;8980
	rst 30h			;8982
	ei			;8983
	call m,0edf9h		;8984
	rst 30h			;8987
	ret m			;8988
	jp m,0f6fch		;8989
	call pe,0fa00h		;898c
	jp m,0f3f8h		;898f
	defb 0edh ;next byte illegal after ed	;8992
	nop			;8993
	nop			;8994
	ret m			;8995
	ld sp,hl		;8996
	ei			;8997
	ld sp,hl		;8998
	ret p			;8999
	xor 0efh		;899a
	call m,0f2fdh		;899c
	defb 0fdh,0f8h,0f7h ;illegal sequence	;899f
	jp m,0f3f9h		;89a2
	ret m			;89a5
	rst 30h			;89a6
	jp m,0f8f8h		;89a7
	ret m			;89aa
	ret m			;89ab
	ei			;89ac
	ei			;89ad
	jp m,0fafah		;89ae
	nop			;89b1
	nop			;89b2
	inc b			;89b3
	inc b			;89b4
	rst 28h			;89b5
	ret p			;89b6
	nop			;89b7
	nop			;89b8
	ret m			;89b9
	di			;89ba
	ret p			;89bb
	nop			;89bc
	jp m,0fdfch		;89bd
	defb 0edh ;next byte illegal after ed	;89c0
	call m,0f3f8h		;89c1
	ret p			;89c4
	call 0e0aah		;89c5
	xor d			;89c8
	di			;89c9
	xor d			;89ca
	ld b,0abh		;89cb
	inc de			;89cd
	xor e			;89ce
	jr nz,$-83		;89cf
	dec l			;89d1
	xor e			;89d2
	inc (hl)		;89d3
	xor e			;89d4
	dec sp			;89d5
	xor e			;89d6
	ld b,d			;89d7
	xor e			;89d8
	ld d,b			;89d9
	xor e			;89da
	ld d,a			;89db
	xor e			;89dc
	ld e,(hl)		;89dd
	xor e			;89de
	ld h,l			;89df
	xor e			;89e0
	ld c,c			;89e1
	xor e			;89e2
	ld c,b			;89e3
	xor d			;89e4
	ld c,a			;89e5
	xor d			;89e6
	ld d,(hl)		;89e7
	xor d			;89e8
	ld e,l			;89e9
	xor d			;89ea
	ld h,h			;89eb
	xor d			;89ec
	ld l,e			;89ed
	xor d			;89ee
	ld (hl),d		;89ef
	xor d			;89f0
	ld a,c			;89f1
	xor d			;89f2
	add a,b			;89f3
	xor d			;89f4
	add a,a			;89f5
	xor d			;89f6
	adc a,(hl)		;89f7
	xor d			;89f8
	sub l			;89f9
	xor d			;89fa
	sbc a,h			;89fb
	xor d			;89fc
	and e			;89fd
	xor d			;89fe
	xor d			;89ff
	xor d			;8a00
	or c			;8a01
	xor d			;8a02
	cp b			;8a03
	xor d			;8a04
	cp a			;8a05
	xor d			;8a06
	add a,0aah		;8a07
	ld a,d			;8a09
	xor e			;8a0a
	add a,c			;8a0b
	xor e			;8a0c
	adc a,b			;8a0d
	xor e			;8a0e
	adc a,a			;8a0f
	xor e			;8a10
	sub (hl)		;8a11
	xor e			;8a12
	sbc a,l			;8a13
	xor e			;8a14
	and h			;8a15
	xor e			;8a16
	xor e			;8a17
	xor e			;8a18
	ld (hl),e		;8a19
	xor e			;8a1a
	or d			;8a1b
	xor e			;8a1c
	cp c			;8a1d
	xor e			;8a1e
	ret nz			;8a1f
	xor e			;8a20
	rst 0			;8a21
	xor e			;8a22
	adc a,0abh		;8a23
	push de			;8a25
	xor e			;8a26
	call c,0e3abh		;8a27
	xor e			;8a2a
	jp pe,0f1abh		;8a2b
	xor e			;8a2e
	ret m			;8a2f
	xor e			;8a30
	rst 38h			;8a31
	xor e			;8a32
	ld b,0ach		;8a33
	dec c			;8a35
	xor h			;8a36
	inc d			;8a37
	xor h			;8a38
	dec de			;8a39
	xor h			;8a3a
	ld b,c			;8a3b
	xor d			;8a3c
	ld c,b			;8a3d
	xor d			;8a3e
	ld c,b			;8a3f
	xor d			;8a40
	ld bc,000d0h		;8a41
	nop			;8a44
	ld bc,003c5h		;8a45
	ld bc,00034h		;8a48
	nop			;8a4b
	djnz l8a8eh		;8a4c
	inc c			;8a4e
	ld bc,00038h		;8a4f
	nop			;8a52
	ld de,00f40h		;8a53
	ld bc,00034h		;8a56
	nop			;8a59
	ld (de),a		;8a5a
	ld b,b			;8a5b
	dec c			;8a5c
	ld bc,00038h		;8a5d
	nop			;8a60
	inc de			;8a61
	ld b,b			;8a62
	djnz l8a66h		;8a63
	inc (hl)		;8a65
l8a66h:
	nop			;8a66
	nop			;8a67
	inc d			;8a68
	ld b,b			;8a69
	ld c,001h		;8a6a
	jr c,l8a6eh		;8a6c
l8a6eh:
	nop			;8a6e
	dec d			;8a6f
	ld b,b			;8a70
	ld de,03401h		;8a71
	nop			;8a74
	nop			;8a75
	ld d,040h		;8a76
	ld a,(bc)		;8a78
	ld bc,00038h		;8a79
	nop			;8a7c
	rla			;8a7d
	ld b,b			;8a7e
	ld a,(bc)		;8a7f
	ld bc,00034h		;8a80
	nop			;8a83
	jr l8ac6h		;8a84
	ld a,(bc)		;8a86
	ld bc,00038h		;8a87
	nop			;8a8a
	add hl,de		;8a8b
	ld b,b			;8a8c
	ld a,(bc)		;8a8d
l8a8eh:
	ld bc,00034h		;8a8e
	nop			;8a91
	ld a,(de)		;8a92
	ld b,b			;8a93
	ld a,(bc)		;8a94
	ld bc,00038h		;8a95
	nop			;8a98
	dec de			;8a99
	ld b,b			;8a9a
	ld a,(bc)		;8a9b
	ld bc,00040h		;8a9c
	nop			;8a9f
	djnz l8ae2h		;8aa0
	inc c			;8aa2
	ld bc,00040h		;8aa3
	nop			;8aa6
	ld (de),a		;8aa7
	ld b,b			;8aa8
	dec c			;8aa9
	ld bc,00040h		;8aaa
	nop			;8aad
	inc d			;8aae
	ld b,b			;8aaf
	ld c,001h		;8ab0
	ld b,b			;8ab2
	nop			;8ab3
	nop			;8ab4
	ld d,040h		;8ab5
	ld (de),a		;8ab7
	ld bc,00040h		;8ab8
	nop			;8abb
	jr $+66			;8abc
	inc de			;8abe
	ld bc,00040h		;8abf
	nop			;8ac2
	ld a,(de)		;8ac3
	ld b,b			;8ac4
	inc d			;8ac5
l8ac6h:
	ld bc,0003ch		;8ac6
	nop			;8ac9
	dec (hl)		;8aca
	ld b,b			;8acb
	inc bc			;8acc
	inc bc			;8acd
	inc c			;8ace
	inc b			;8acf
	inc bc			;8ad0
	inc l			;8ad1
	ld b,b			;8ad2
	ld bc,00010h		;8ad3
	nop			;8ad6
	dec l			;8ad7
	ld b,b			;8ad8
	nop			;8ad9
	inc d			;8ada
	djnz l8addh		;8adb
l8addh:
	ld l,040h		;8add
	nop			;8adf
	inc bc			;8ae0
	nop			;8ae1
l8ae2h:
	inc b			;8ae2
	inc bc			;8ae3
	add hl,hl		;8ae4
	ld b,b			;8ae5
	ld bc,00004h		;8ae6
	nop			;8ae9
	ld hl,(00040h)		;8aea
	ex af,af'		;8aed
	djnz l8af0h		;8aee
l8af0h:
	dec hl			;8af0
	ld b,b			;8af1
	nop			;8af2
	inc bc			;8af3
	jr $+6			;8af4
	inc bc			;8af6
	cpl			;8af7
	ld b,b			;8af8
	ld bc,0001ch		;8af9
	nop			;8afc
	jr nc,l8b3fh		;8afd
	nop			;8aff
	jr nz,l8b12h		;8b00
	nop			;8b02
	ld sp,00040h		;8b03
	ld (bc),a		;8b06
	ex af,af'		;8b07
	nop			;8b08
	nop			;8b09
	ld b,040h		;8b0a
	nop			;8b0c
	inc c			;8b0d
	nop			;8b0e
	ld (bc),a		;8b0f
	ld b,040h		;8b10
l8b12h:
	ld bc,00002h		;8b12
	nop			;8b15
	nop			;8b16
	ld b,040h		;8b17
	nop			;8b19
	inc b			;8b1a
	nop			;8b1b
	ld (bc),a		;8b1c
	ld b,040h		;8b1d
	ld bc,01002h		;8b1f
	nop			;8b22
	nop			;8b23
	ld b,040h		;8b24
	nop			;8b26
	inc d			;8b27
	nop			;8b28
	ld (bc),a		;8b29
	ld b,040h		;8b2a
	ld bc,0dc01h		;8b2c
	nop			;8b2f
	nop			;8b30
	ld b,04ah		;8b31
	nop			;8b33
	ld bc,000e4h		;8b34
	nop			;8b37
	ld b,04ah		;8b38
	nop			;8b3a
	ld bc,000ech		;8b3b
	nop			;8b3e
l8b3fh:
	ld b,04ah		;8b3f
	nop			;8b41
	ld bc,000f4h		;8b42
	nop			;8b45
	ld b,04ah		;8b46
	nop			;8b48
	ld bc,00034h		;8b49
	nop			;8b4c
	ld d,040h		;8b4d
	nop			;8b4f
	ld bc,00024h		;8b50
	nop			;8b53
	add hl,sp		;8b54
	ld b,b			;8b55
	ld bc,02801h		;8b56
	nop			;8b59
	nop			;8b5a
	ld a,(00140h)		;8b5b
	ld bc,0002ch		;8b5e
	nop			;8b61
	dec sp			;8b62
	ld b,b			;8b63
	ld bc,03001h		;8b64
	nop			;8b67
	nop			;8b68
	inc a			;8b69
	ld b,b			;8b6a
	ld bc,02801h		;8b6b
	nop			;8b6e
	nop			;8b6f
	ld e,040h		;8b70
	ld (bc),a		;8b72
	ld bc,0002ch		;8b73
	nop			;8b76
	dec bc			;8b77
	ld b,b			;8b78
	ld (bc),a		;8b79
	ld bc,00044h		;8b7a
	nop			;8b7d
	ret z			;8b7e
	nop			;8b7f
	ld (bc),a		;8b80
	ld bc,00044h		;8b81
	nop			;8b84
	jp z,00200h		;8b85
	ld bc,00044h		;8b88
	nop			;8b8b
	call z,00200h		;8b8c
	ld bc,00044h		;8b8f
	nop			;8b92
	ld c,040h		;8b93
	ld (bc),a		;8b95
	ld bc,00048h		;8b96
	nop			;8b99
	ret			;8b9a
	nop			;8b9b
	ld (bc),a		;8b9c
	ld bc,00048h		;8b9d
	nop			;8ba0
	rlc b			;8ba1
	ld (bc),a		;8ba3
	ld bc,00048h		;8ba4
	nop			;8ba7
	call 00200h		;8ba8
	ld bc,00048h		;8bab
	nop			;8bae
	ld c,040h		;8baf
	ld (bc),a		;8bb1
	ld bc,00034h		;8bb2
	inc b			;8bb5
	add hl,hl		;8bb6
	ld b,b			;8bb7
	inc bc			;8bb8
	ld bc,00038h		;8bb9
	inc b			;8bbc
	ld hl,(00340h)		;8bbd
	ld bc,00434h		;8bc0
	inc b			;8bc3
	dec hl			;8bc4
	ld b,b			;8bc5
	inc bc			;8bc6
	ld bc,00438h		;8bc7
	inc b			;8bca
	inc l			;8bcb
	ld b,b			;8bcc
	inc bc			;8bcd
	ld bc,00434h		;8bce
	nop			;8bd1
	dec l			;8bd2
	ld b,b			;8bd3
	inc bc			;8bd4
	ld bc,00438h		;8bd5
	nop			;8bd8
	ld l,040h		;8bd9
	inc bc			;8bdb
	ld bc,00434h		;8bdc
	call m,0402fh		;8bdf
	inc bc			;8be2
	ld bc,00438h		;8be3
	call m,04030h		;8be6
	inc bc			;8be9
	ld bc,00034h		;8bea
	call m,04031h		;8bed
	inc bc			;8bf0
	ld bc,00038h		;8bf1
	call m,04032h		;8bf4
	inc bc			;8bf7
	ld bc,0fc34h		;8bf8
	call m,04033h		;8bfb
	inc bc			;8bfe
	ld bc,0fc38h		;8bff
	call m,04034h		;8c02
	inc bc			;8c05
	ld bc,0fc34h		;8c06
	nop			;8c09
	dec (hl)		;8c0a
	ld b,b			;8c0b
	inc bc			;8c0c
	ld bc,0fc38h		;8c0d
	nop			;8c10
	ld (hl),040h		;8c11
	inc bc			;8c13
	ld bc,0fc34h		;8c14
	inc b			;8c17
	scf			;8c18
	ld b,b			;8c19
	inc bc			;8c1a
	ld bc,0fc38h		;8c1b
	inc b			;8c1e
	jr c,l8c61h		;8c1f
	inc bc			;8c21
	ld l,d			;8c22
	xor h			;8c23
	ld (hl),c		;8c24
	xor h			;8c25
	ld a,b			;8c26
	xor h			;8c27
	ld a,a			;8c28
	xor h			;8c29
	add a,(hl)		;8c2a
	xor h			;8c2b
	adc a,l			;8c2c
	xor h			;8c2d
	sub h			;8c2e
	xor h			;8c2f
	sbc a,e			;8c30
	xor h			;8c31
	and d			;8c32
	xor h			;8c33
	xor c			;8c34
	xor h			;8c35
	or a			;8c36
	xor h			;8c37
	cp (hl)			;8c38
	xor h			;8c39
	push bc			;8c3a
	xor h			;8c3b
	call z,0d3ach		;8c3c
	xor h			;8c3f
	jp c,0e1ach		;8c40
	xor h			;8c43
	ret pe			;8c44
	xor h			;8c45
	rst 28h			;8c46
	xor h			;8c47
	or 0ach			;8c48
	defb 0fdh,0ach ;xor iyh	;8c4a
	inc b			;8c4c
	xor l			;8c4d
	dec bc			;8c4e
	xor l			;8c4f
	ld (de),a		;8c50
	xor l			;8c51
	daa			;8c52
	xor l			;8c53
	ld l,0adh		;8c54
	add hl,de		;8c56
	xor l			;8c57
	jr nz,$-81		;8c58
	dec (hl)		;8c5a
	xor l			;8c5b
	inc a			;8c5c
	xor l			;8c5d
	ld b,e			;8c5e
	xor l			;8c5f
	ld c,d			;8c60
l8c61h:
	xor l			;8c61
	ld e,a			;8c62
	xor l			;8c63
	ld h,(hl)		;8c64
	xor l			;8c65
	ld d,c			;8c66
	xor l			;8c67
	ld e,b			;8c68
	xor l			;8c69
	ld bc,00000h		;8c6a
	nop			;8c6d
	ld e,h			;8c6e
	ld e,l			;8c6f
	inc bc			;8c70
	ld bc,00000h		;8c71
	nop			;8c74
	ld l,(hl)		;8c75
	ld l,a			;8c76
	inc bc			;8c77
	ld bc,00000h		;8c78
	nop			;8c7b
	and (hl)		;8c7c
	and a			;8c7d
	inc bc			;8c7e
	ld bc,00000h		;8c7f
	nop			;8c82
	ld d,h			;8c83
	ld d,l			;8c84
	inc bc			;8c85
	ld bc,00008h		;8c86
	nop			;8c89
	ld d,h			;8c8a
	ld d,l			;8c8b
	inc bc			;8c8c
	ld bc,00010h		;8c8d
	nop			;8c90
	ld d,h			;8c91
	ld d,l			;8c92
	inc bc			;8c93
	ld bc,00000h		;8c94
	nop			;8c97
	ld d,b			;8c98
	ld d,c			;8c99
	inc bc			;8c9a
	ld bc,00000h		;8c9b
	nop			;8c9e
	ld d,d			;8c9f
	ld d,e			;8ca0
	inc bc			;8ca1
	ld bc,00000h		;8ca2
	nop			;8ca5
	add a,b			;8ca6
	add a,c			;8ca7
	inc bc			;8ca8
	ld bc,00000h		;8ca9
	nop			;8cac
	and b			;8cad
	and c			;8cae
	inc bc			;8caf
	ld bc,00000h		;8cb0
	nop			;8cb3
	dec bc			;8cb4
	inc c			;8cb5
	inc bc			;8cb6
	ld bc,00000h		;8cb7
	nop			;8cba
	ld h,h			;8cbb
	ld h,l			;8cbc
	inc bc			;8cbd
	ld bc,00000h		;8cbe
	nop			;8cc1
	ld (hl),h		;8cc2
	ld (hl),l		;8cc3
	inc bc			;8cc4
	ld bc,00000h		;8cc5
	nop			;8cc8
	sub h			;8cc9
	sub l			;8cca
	inc bc			;8ccb
	ld bc,00000h		;8ccc
	nop			;8ccf
	ld e,d			;8cd0
	ld e,e			;8cd1
	inc bc			;8cd2
	ld bc,00000h		;8cd3
	nop			;8cd6
	and d			;8cd7
	and e			;8cd8
	inc bc			;8cd9
	ld bc,00008h		;8cda
	nop			;8cdd
	ld a,b			;8cde
	ld a,c			;8cdf
	inc bc			;8ce0
	ld bc,00000h		;8ce1
	nop			;8ce4
	halt			;8ce5
	ld (hl),a		;8ce6
	inc bc			;8ce7
	ld bc,00018h		;8ce8
	nop			;8ceb
	ld a,b			;8cec
	ld a,c			;8ced
	inc bc			;8cee
	ld bc,00020h		;8cef
	nop			;8cf2
	halt			;8cf3
	ld (hl),a		;8cf4
	inc bc			;8cf5
	ld bc,00010h		;8cf6
	nop			;8cf9
	ld a,d			;8cfa
	ld a,e			;8cfb
	inc bc			;8cfc
	ld bc,00020h		;8cfd
	nop			;8d00
	xor (hl)		;8d01
	xor a			;8d02
	inc bc			;8d03
	ld bc,00028h		;8d04
	nop			;8d07
	or b			;8d08
	or c			;8d09
	inc bc			;8d0a
	ld bc,00030h		;8d0b
	nop			;8d0e
	or b			;8d0f
	or c			;8d10
	inc bc			;8d11
	ld bc,00038h		;8d12
	nop			;8d15
	xor (hl)		;8d16
	xor a			;8d17
	inc bc			;8d18
	ld bc,00000h		;8d19
	nop			;8d1c
	xor d			;8d1d
	xor e			;8d1e
	inc bc			;8d1f
	ld bc,00008h		;8d20
	nop			;8d23
	xor d			;8d24
	xor e			;8d25
	inc bc			;8d26
	ld bc,00010h		;8d27
	nop			;8d2a
	xor h			;8d2b
	xor l			;8d2c
	inc bc			;8d2d
	ld bc,00018h		;8d2e
	nop			;8d31
	xor h			;8d32
	xor l			;8d33
	inc bc			;8d34
	ld bc,00060h		;8d35
	nop			;8d38
	or (hl)			;8d39
	or a			;8d3a
	inc bc			;8d3b
	ld bc,00068h		;8d3c
	nop			;8d3f
	cp b			;8d40
	cp c			;8d41
	inc bc			;8d42
	ld bc,00070h		;8d43
	nop			;8d46
	cp b			;8d47
	cp c			;8d48
	inc bc			;8d49
	ld bc,00078h		;8d4a
	nop			;8d4d
	or (hl)			;8d4e
	or a			;8d4f
	inc bc			;8d50
	ld bc,00040h		;8d51
	nop			;8d54
	or d			;8d55
	or e			;8d56
	inc bc			;8d57
	ld bc,00048h		;8d58
	nop			;8d5b
	or d			;8d5c
	or e			;8d5d
	inc bc			;8d5e
	ld bc,00050h		;8d5f
	nop			;8d62
	or h			;8d63
	or l			;8d64
	inc bc			;8d65
	ld bc,00058h		;8d66
	nop			;8d69
	or h			;8d6a
	or l			;8d6b
	inc bc			;8d6c
	inc d			;8d6d
	xor (hl)		;8d6e
	daa			;8d6f
	xor (hl)		;8d70
	ld l,0aeh		;8d71
	dec (hl)		;8d73
	xor (hl)		;8d74
	inc a			;8d75
	xor (hl)		;8d76
	ld b,e			;8d77
	xor (hl)		;8d78
	ret m			;8d79
	xor l			;8d7a
	rst 38h			;8d7b
	xor l			;8d7c
	ld b,0aeh		;8d7d
	dec c			;8d7f
	xor (hl)		;8d80
	pop af			;8d81
	xor l			;8d82
	ex (sp),hl		;8d83
	xor l			;8d84
	jp pe,027adh		;8d85
	xor (hl)		;8d88
	sbc a,b			;8d89
	xor l			;8d8a
	or c			;8d8b
	xor l			;8d8c
	jp z,l91adh		;8d8d
	xor l			;8d90
	ld bc,00000h		;8d91
	nop			;8d94
	ld d,b			;8d95
	ld d,c			;8d96
	inc bc			;8d97
	inc b			;8d98
	nop			;8d99
	nop			;8d9a
	nop			;8d9b
	nop			;8d9c
	nop			;8d9d
	inc bc			;8d9e
	nop			;8d9f
	nop			;8da0
	nop			;8da1
	nop			;8da2
	nop			;8da3
	inc bc			;8da4
	nop			;8da5
	nop			;8da6
	nop			;8da7
	nop			;8da8
	nop			;8da9
	inc bc			;8daa
	nop			;8dab
	nop			;8dac
	nop			;8dad
	nop			;8dae
	nop			;8daf
	inc bc			;8db0
	inc b			;8db1
	nop			;8db2
	nop			;8db3
	nop			;8db4
	nop			;8db5
	nop			;8db6
	inc bc			;8db7
	ex af,af'		;8db8
	jr $+34			;8db9
	ld b,04ah		;8dbb
	inc bc			;8dbd
	nop			;8dbe
	nop			;8dbf
	nop			;8dc0
	nop			;8dc1
	nop			;8dc2
	inc bc			;8dc3
	ex af,af'		;8dc4
	jr l8dffh		;8dc5
	ld b,04ah		;8dc7
	inc bc			;8dc9
	inc b			;8dca
	nop			;8dcb
	jr l8deeh		;8dcc
	ld b,04ah		;8dce
	inc bc			;8dd0
	ex af,af'		;8dd1
	jr z,l8df4h		;8dd2
	ld b,04ah		;8dd4
	inc bc			;8dd6
	nop			;8dd7
	jr l8e12h		;8dd8
	ld b,04ah		;8dda
	inc bc			;8ddc
	ex af,af'		;8ddd
	jr z,$+58		;8dde
	ld b,04ah		;8de0
l8de2h:
	inc bc			;8de2
	ld bc,00000h		;8de3
	nop			;8de6
l8de7h:
	cp a			;8de7
	ret nz			;8de8
	inc bc			;8de9
	ld bc,00008h		;8dea
	nop			;8ded
l8deeh:
	cp a			;8dee
	ret nz			;8def
	inc bc			;8df0
	ld bc,00000h		;8df1
l8df4h:
	nop			;8df4
	scf			;8df5
	jr c,l8dfbh		;8df6
	ld bc,00000h		;8df8
l8dfbh:
	nop			;8dfb
	sub (hl)		;8dfc
	sub a			;8dfd
	inc bc			;8dfe
l8dffh:
	ld bc,00008h		;8dff
	nop			;8e02
	sub (hl)		;8e03
	sub a			;8e04
	inc bc			;8e05
	ld bc,00010h		;8e06
	nop			;8e09
	sub (hl)		;8e0a
	sub a			;8e0b
	inc bc			;8e0c
	ld bc,00018h		;8e0d
	nop			;8e10
	sub (hl)		;8e11
l8e12h:
	sub a			;8e12
	inc bc			;8e13
	inc bc			;8e14
	ex af,af'		;8e15
	nop			;8e16
	ld b,060h		;8e17
	ld h,c			;8e19
	inc bc			;8e1a
	nop			;8e1b
	djnz l8e1eh		;8e1c
l8e1eh:
	ld e,(hl)		;8e1e
	ld e,a			;8e1f
	inc bc			;8e20
	ex af,af'		;8e21
	jr nz,l8e2ah		;8e22
	ld h,b			;8e24
	ld h,c			;8e25
	inc bc			;8e26
	ld bc,01100h		;8e27
l8e2ah:
	ex af,af'		;8e2a
	sbc a,d			;8e2b
	sbc a,e			;8e2c
	inc bc			;8e2d
	ld bc,00e08h		;8e2e
	djnz $-88		;8e31
	and a			;8e33
	inc bc			;8e34
	ld bc,00c10h		;8e35
	jr $-56			;8e38
	rst 0			;8e3a
	inc bc			;8e3b
	ld bc,00e18h		;8e3c
	jr nz,l8de7h		;8e3f
	and a			;8e41
	inc bc			;8e42
	ld bc,01120h		;8e43
	jr z,l8de2h		;8e46
	sbc a,e			;8e48
	inc bc			;8e49
	ld (hl),a		;8e4a
	xor (hl)		;8e4b
	ld l,d			;8e4c
	xor (hl)		;8e4d
	adc a,e			;8e4e
	xor (hl)		;8e4f
	xor d			;8e50
	xor (hl)		;8e51
	or a			;8e52
	xor (hl)		;8e53
	call nz,sub_84aeh	;8e54
	xor (hl)		;8e57
	pop de			;8e58
	xor (hl)		;8e59
	ret c			;8e5a
	xor (hl)		;8e5b
	rst 18h			;8e5c
	xor (hl)		;8e5d
	and 0aeh		;8e5e
	di			;8e60
	xor (hl)		;8e61
	daa			;8e62
	xor a			;8e63
	ld a,(de)		;8e64
	xor a			;8e65
	dec c			;8e66
	xor a			;8e67
	nop			;8e68
	xor a			;8e69
	ld (bc),a		;8e6a
	nop			;8e6b
	nop			;8e6c
	nop			;8e6d
	ld (hl),b		;8e6e
	ld (hl),c		;8e6f
	inc bc			;8e70
	ex af,af'		;8e71
	djnz l8e74h		;8e72
l8e74h:
	ld (hl),d		;8e74
	ld (hl),e		;8e75
	inc bc			;8e76
	ld (bc),a		;8e77
	djnz l8e7ah		;8e78
l8e7ah:
	nop			;8e7a
	ld (hl),b		;8e7b
	ld (hl),c		;8e7c
	inc bc			;8e7d
	jr $+18			;8e7e
	nop			;8e80
	ld (hl),d		;8e81
	ld (hl),e		;8e82
	inc bc			;8e83
	ld bc,00000h		;8e84
	nop			;8e87
	cp d			;8e88
	cp e			;8e89
	inc bc			;8e8a
	dec b			;8e8b
	nop			;8e8c
	nop			;8e8d
	nop			;8e8e
	ld e,04ch		;8e8f
	inc bc			;8e91
	nop			;8e92
	nop			;8e93
	jr nz,$+56		;8e94
	ld c,h			;8e96
	inc bc			;8e97
	inc b			;8e98
	ex af,af'		;8e99
	djnz l8eb9h		;8e9a
	ld c,h			;8e9c
	inc bc			;8e9d
	ex af,af'		;8e9e
	djnz l8ea1h		;8e9f
l8ea1h:
	inc e			;8ea1
	ld c,h			;8ea2
	inc bc			;8ea3
	ex af,af'		;8ea4
	djnz l8ec7h		;8ea5
	inc e			;8ea7
	ld c,h			;8ea8
	inc bc			;8ea9
	ld (bc),a		;8eaa
	nop			;8eab
	nop			;8eac
	nop			;8ead
	add a,d			;8eae
	add a,e			;8eaf
	inc bc			;8eb0
	ex af,af'		;8eb1
	djnz l8eb4h		;8eb2
l8eb4h:
	add a,h			;8eb4
	add a,l			;8eb5
	inc bc			;8eb6
	ld (bc),a		;8eb7
	nop			;8eb8
l8eb9h:
	nop			;8eb9
	nop			;8eba
	ccf			;8ebb
	ld b,b			;8ebc
	inc bc			;8ebd
	ex af,af'		;8ebe
	nop			;8ebf
	djnz l8f01h		;8ec0
	ld b,b			;8ec2
	inc bc			;8ec3
	ld (bc),a		;8ec4
	djnz l8ec7h		;8ec5
l8ec7h:
	nop			;8ec7
	ld b,c			;8ec8
	ld b,d			;8ec9
	inc bc			;8eca
	jr l8ecdh		;8ecb
l8ecdh:
	djnz l8f10h		;8ecd
	ld b,d			;8ecf
	inc bc			;8ed0
	ld bc,00000h		;8ed1
	nop			;8ed4
	dec bc			;8ed5
	ld c,h			;8ed6
	inc bc			;8ed7
	ld bc,00000h		;8ed8
	nop			;8edb
	add a,(hl)		;8edc
	add a,a			;8edd
	inc bc			;8ede
	ld bc,00008h		;8edf
	nop			;8ee2
	adc a,b			;8ee3
	adc a,c			;8ee4
	inc bc			;8ee5
	ld (bc),a		;8ee6
	nop			;8ee7
	ret nz			;8ee8
	nop			;8ee9
	nop			;8eea
	ld b,b			;8eeb
	inc bc			;8eec
	nop			;8eed
	ret nz			;8eee
	nop			;8eef
	nop			;8ef0
	ld b,b			;8ef1
	inc bc			;8ef2
	ld (bc),a		;8ef3
	ld b,b			;8ef4
	rrca			;8ef5
	add hl,de		;8ef6
	dec b			;8ef7
	ld c,b			;8ef8
	inc bc			;8ef9
	jr z,l8f1bh		;8efa
	add hl,de		;8efc
	dec b			;8efd
	ld c,b			;8efe
	inc bc			;8eff
	ld (bc),a		;8f00
l8f01h:
	nop			;8f01
	ld (de),a		;8f02
	jr nz,$+7		;8f03
	ld c,b			;8f05
	inc bc			;8f06
	ex af,af'		;8f07
	ld (00516h),hl		;8f08
	ld c,b			;8f0b
	inc bc			;8f0c
	ld (bc),a		;8f0d
	djnz l8f23h		;8f0e
l8f10h:
	jr nz,$+7		;8f10
	ld c,b			;8f12
	inc bc			;8f13
	jr l8f39h		;8f14
	ld d,005h		;8f16
	ld c,b			;8f18
	inc bc			;8f19
	ld (bc),a		;8f1a
l8f1bh:
	jr nz,l8f2ch		;8f1b
	add hl,de		;8f1d
	dec b			;8f1e
	ld c,b			;8f1f
	inc bc			;8f20
	jr z,l8f42h		;8f21
l8f23h:
	add hl,de		;8f23
	dec b			;8f24
	ld c,b			;8f25
	inc bc			;8f26
	ld (bc),a		;8f27
	jr nc,l8f39h		;8f28
	jr $+7			;8f2a
l8f2ch:
	ld c,b			;8f2c
	inc bc			;8f2d
	jr c,l8f4fh		;8f2e
	jr l8f37h		;8f30
	ld c,b			;8f32
	inc bc			;8f33
	ld d,c			;8f34
	xor a			;8f35
	ld e,b			;8f36
l8f37h:
	xor a			;8f37
	ld e,a			;8f38
l8f39h:
	xor a			;8f39
	ld h,(hl)		;8f3a
	xor a			;8f3b
	ld a,0afh		;8f3c
	inc bc			;8f3e
	nop			;8f3f
	nop			;8f40
	nop			;8f41
l8f42h:
	adc a,h			;8f42
	adc a,l			;8f43
	inc bc			;8f44
	ex af,af'		;8f45
	djnz $+12		;8f46
	adc a,(hl)		;8f48
	adc a,a			;8f49
	inc bc			;8f4a
	nop			;8f4b
	jr nz,l8f4eh		;8f4c
l8f4eh:
	adc a,h			;8f4e
l8f4fh:
	adc a,l			;8f4f
	inc bc			;8f50
	ld bc,00000h		;8f51
	nop			;8f54
	cp h			;8f55
	cp l			;8f56
	inc bc			;8f57
	ld bc,00000h		;8f58
	nop			;8f5b
	adc a,d			;8f5c
	adc a,e			;8f5d
	inc bc			;8f5e
	ld bc,00000h		;8f5f
	nop			;8f62
	sub b			;8f63
	sub c			;8f64
	inc bc			;8f65
	ld bc,00008h		;8f66
	nop			;8f69
	dec a			;8f6a
	ld a,003h		;8f6b
	defb 0edh ;next byte illegal after ed	;8f6d
	xor a			;8f6e
	call p,0fbafh		;8f6f
	xor a			;8f72
	ld (bc),a		;8f73
	or b			;8f74
	add a,l			;8f75
	xor a			;8f76
	sub d			;8f77
	xor a			;8f78
	sbc a,a			;8f79
	xor a			;8f7a
	xor h			;8f7b
	xor a			;8f7c
	cp c			;8f7d
	xor a			;8f7e
	add a,0afh		;8f7f
	out (0afh),a		;8f81
	ret po			;8f83
	xor a			;8f84
	ld (bc),a		;8f85
	nop			;8f86
	ret nz			;8f87
	nop			;8f88
	nop			;8f89
	ld b,b			;8f8a
	ld bc,0c000h		;8f8b
	nop			;8f8e
	nop			;8f8f
	ld b,b			;8f90
	ld bc,00002h		;8f91
	nop			;8f94
	nop			;8f95
	rlca			;8f96
	ld c,(hl)		;8f97
	ld bc,06000h		;8f98
	nop			;8f9b
	rlca			;8f9c
	ld c,(hl)		;8f9d
	ld bc,00802h		;8f9e
	nop			;8fa1
	nop			;8fa2
	rlca			;8fa3
	ld c,(hl)		;8fa4
	ld bc,06008h		;8fa5
	nop			;8fa8
	rlca			;8fa9
	ld c,(hl)		;8faa
	ld bc,01002h		;8fab
	nop			;8fae
	nop			;8faf
	rlca			;8fb0
	ld c,(hl)		;8fb1
	ld bc,06010h		;8fb2
	nop			;8fb5
	rlca			;8fb6
	ld c,(hl)		;8fb7
	ld bc,00002h		;8fb8
	ret nz			;8fbb
	nop			;8fbc
	nop			;8fbd
	ld b,b			;8fbe
	ld bc,0c000h		;8fbf
	nop			;8fc2
	nop			;8fc3
	ld b,b			;8fc4
l8fc5h:
	ld bc,00002h		;8fc5
	nop			;8fc8
	nop			;8fc9
	rlca			;8fca
	ld c,(hl)		;8fcb
	ld bc,05000h		;8fcc
	nop			;8fcf
	rlca			;8fd0
	ld c,(hl)		;8fd1
	ld bc,00802h		;8fd2
	nop			;8fd5
	nop			;8fd6
	rlca			;8fd7
	ld c,(hl)		;8fd8
	ld bc,05008h		;8fd9
	nop			;8fdc
	rlca			;8fdd
	ld c,(hl)		;8fde
	ld bc,01002h		;8fdf
	nop			;8fe2
	nop			;8fe3
	rlca			;8fe4
	ld c,(hl)		;8fe5
	ld bc,05010h		;8fe6
	nop			;8fe9
	rlca			;8fea
	ld c,(hl)		;8feb
	ld bc,00001h		;8fec
	nop			;8fef
	nop			;8ff0
	inc h			;8ff1
	ld b,b			;8ff2
	inc bc			;8ff3
	ld bc,00004h		;8ff4
	nop			;8ff7
	inc h			;8ff8
	ld b,b			;8ff9
	inc bc			;8ffa
	ld bc,00008h		;8ffb
	nop			;8ffe
	inc h			;8fff
	ld b,b			;9000
	inc bc			;9001
	ld bc,0000ch		;9002
	nop			;9005
	inc h			;9006
	ld b,b			;9007
	inc bc			;9008
	inc e			;9009
	or b			;900a
	inc hl			;900b
	or b			;900c
	ld hl,(031b0h)		;900d
	or b			;9010
	dec d			;9011
	or b			;9012
	jr c,l8fc5h		;9013
	ld bc,00000h		;9015
	nop			;9018
	and h			;9019
	and l			;901a
	inc bc			;901b
	ld bc,00000h		;901c
	nop			;901f
	ld h,(hl)		;9020
	ld h,a			;9021
	inc bc			;9022
	ld bc,00008h		;9023
	nop			;9026
	ld l,b			;9027
	ld l,c			;9028
	inc bc			;9029
	ld bc,00010h		;902a
	nop			;902d
	ld l,d			;902e
	ld l,e			;902f
	inc bc			;9030
	ld bc,00018h		;9031
	nop			;9034
	ld l,h			;9035
	ld l,l			;9036
	inc bc			;9037
	ld bc,0fe00h		;9038
	nop			;903b
	rlca			;903c
	ld c,e			;903d
	inc bc			;903e
	ld d,a			;903f
	or b			;9040
	ld e,(hl)		;9041
	or b			;9042
	ld h,l			;9043
	or b			;9044
	ld l,h			;9045
	or b			;9046
	ld (hl),e		;9047
	or b			;9048
	ld a,d			;9049
	or b			;904a
	add a,c			;904b
	or b			;904c
	adc a,b			;904d
	or b			;904e
	adc a,a			;904f
	or b			;9050
	sub (hl)		;9051
	or b			;9052
	sbc a,l			;9053
	or b			;9054
	and h			;9055
	or b			;9056
	ld bc,00000h		;9057
	nop			;905a
	ld b,04ah		;905b
	inc bc			;905d
	ld bc,00008h		;905e
	nop			;9061
	ld b,04ah		;9062
	inc bc			;9064
	ld bc,00010h		;9065
	nop			;9068
	ld b,04ah		;9069
	inc bc			;906b
	ld bc,00018h		;906c
	nop			;906f
	ld b,04ah		;9070
	inc bc			;9072
	ld bc,00020h		;9073
	nop			;9076
	ld b,04ah		;9077
	inc bc			;9079
	ld bc,00028h		;907a
	nop			;907d
	ld b,04ah		;907e
	inc bc			;9080
	ld bc,00030h		;9081
	nop			;9084
	ld b,04ah		;9085
	inc bc			;9087
	ld bc,00038h		;9088
	nop			;908b
	ld b,04ah		;908c
	inc bc			;908e
	ld bc,00040h		;908f
	nop			;9092
	ld b,04ah		;9093
	inc bc			;9095
	ld bc,00048h		;9096
	nop			;9099
	ld b,04ah		;909a
	inc bc			;909c
	ld bc,00050h		;909d
	nop			;90a0
	ld b,04ah		;90a1
	inc bc			;90a3
	ld bc,00058h		;90a4
	nop			;90a7
	ld b,04ah		;90a8
	inc bc			;90aa
	push hl			;90ab
	or b			;90ac
	call pe,071b0h		;90ad
	or c			;90b0
	ld a,b			;90b1
	or c			;90b2
	ld a,b			;90b3
	or c			;90b4
	ld a,b			;90b5
	or c			;90b6
	ld a,b			;90b7
	or c			;90b8
	ld a,a			;90b9
	or c			;90ba
	add a,(hl)		;90bb
	or c			;90bc
	adc a,l			;90bd
	or c			;90be
	sub h			;90bf
	or c			;90c0
	di			;90c1
	or b			;90c2
	jp m,001b0h		;90c3
	or c			;90c6
	ex af,af'		;90c7
	or c			;90c8
	rrca			;90c9
	or c			;90ca
	ld d,0b1h		;90cb
	dec e			;90cd
	or c			;90ce
	inc h			;90cf
	or c			;90d0
	dec hl			;90d1
	or c			;90d2
	ld (039b1h),a		;90d3
	or c			;90d6
	ld b,b			;90d7
	or c			;90d8
	ld b,a			;90d9
	or c			;90da
	ld c,(hl)		;90db
	or c			;90dc
	ld d,l			;90dd
	or c			;90de
	ld e,h			;90df
	or c			;90e0
	ld h,e			;90e1
	or c			;90e2
	ld l,d			;90e3
	or c			;90e4
	ld bc,00000h		;90e5
	nop			;90e8
	sbc a,b			;90e9
	sbc a,c			;90ea
	inc bc			;90eb
	ld bc,00008h		;90ec
	nop			;90ef
	sbc a,d			;90f0
	sbc a,e			;90f1
	inc bc			;90f2
	ld bc,00004h		;90f3
	nop			;90f6
	ld bc,003c5h		;90f7
	ld bc,0000ch		;90fa
	nop			;90fd
	ld bc,003c5h		;90fe
	ld bc,00014h		;9101
	nop			;9104
	ld bc,003c5h		;9105
	ld bc,0001ch		;9108
	nop			;910b
	ld bc,003c5h		;910c
	ld bc,00024h		;910f
	nop			;9112
	ld bc,003c5h		;9113
	ld bc,0002ch		;9116
	nop			;9119
	ld bc,003c5h		;911a
	ld bc,00034h		;911d
	nop			;9120
	ld bc,003c5h		;9121
	ld bc,0003ch		;9124
	nop			;9127
	ld bc,003c5h		;9128
	ld bc,00044h		;912b
	nop			;912e
	ld bc,003c5h		;912f
	ld bc,0004ch		;9132
	nop			;9135
	ld bc,003c5h		;9136
	ld bc,00054h		;9139
	nop			;913c
	ld bc,003c5h		;913d
	ld bc,0005ch		;9140
	nop			;9143
	ld bc,003c5h		;9144
	ld bc,00064h		;9147
	nop			;914a
	ld bc,003c5h		;914b
	ld bc,0006ch		;914e
	nop			;9151
	ld bc,003c5h		;9152
	ld bc,00074h		;9155
	nop			;9158
	ld bc,003c5h		;9159
	ld bc,0007ch		;915c
	nop			;915f
	ld bc,003c5h		;9160
	ld bc,00084h		;9163
	nop			;9166
	ld bc,003c5h		;9167
	ld bc,00000h		;916a
	nop			;916d
	pop bc			;916e
	push bc			;916f
	inc bc			;9170
	ld bc,00000h		;9171
	nop			;9174
	sub d			;9175
	sub e			;9176
	inc bc			;9177
	ld bc,00000h		;9178
	nop			;917b
	ld e,c			;917c
	nop			;917d
	inc bc			;917e
	ld bc,00000h		;917f
	nop			;9182
	sbc a,(hl)		;9183
	sbc a,a			;9184
	inc bc			;9185
	ld bc,00008h		;9186
	nop			;9189
	sbc a,(hl)		;918a
	sbc a,a			;918b
	inc bc			;918c
	ld bc,00000h		;918d
	nop			;9190
	sbc a,h			;9191
	sbc a,l			;9192
	inc bc			;9193
	ld bc,00008h		;9194
	nop			;9197
	ld d,(hl)		;9198
	ld d,a			;9199
	inc bc			;919a
	cp l			;919b
	or c			;919c
	call nz,0d1b1h		;919d
	or c			;91a0
	sbc a,0b1h		;91a1
	ex de,hl		;91a3
	or c			;91a4
	ret m			;91a5
	or c			;91a6
	dec b			;91a7
	or d			;91a8
	ld (de),a		;91a9
	or d			;91aa
	rra			;91ab
	or d			;91ac
l91adh:
	inc l			;91ad
	or d			;91ae
	add hl,sp		;91af
	or d			;91b0
	ld b,(hl)		;91b1
	or d			;91b2
	ld e,c			;91b3
	or d			;91b4
	ld l,h			;91b5
	or d			;91b6
	ld a,c			;91b7
	or d			;91b8
	add a,(hl)		;91b9
	or d			;91ba
	sub e			;91bb
	or d			;91bc
	ld bc,00000h		;91bd
	nop			;91c0
	xor b			;91c1
	xor c			;91c2
	inc bc			;91c3
	ld (bc),a		;91c4
	nop			;91c5
	nop			;91c6
	nop			;91c7
	add hl,bc		;91c8
	ld c,005h		;91c9
	nop			;91cb
	ret nz			;91cc
	nop			;91cd
	nop			;91ce
	nop			;91cf
	dec b			;91d0
	ld (bc),a		;91d1
	ex af,af'		;91d2
	nop			;91d3
	nop			;91d4
	add hl,bc		;91d5
	ld c,005h		;91d6
	nop			;91d8
	ret nz			;91d9
	nop			;91da
	nop			;91db
	nop			;91dc
	dec b			;91dd
	ld (bc),a		;91de
	djnz l91e1h		;91df
l91e1h:
	nop			;91e1
	add hl,bc		;91e2
	ld c,005h		;91e3
	nop			;91e5
	ret nz			;91e6
	nop			;91e7
	nop			;91e8
	nop			;91e9
	dec b			;91ea
	ld (bc),a		;91eb
	jr l91eeh		;91ec
l91eeh:
	nop			;91ee
	add hl,bc		;91ef
	ld c,005h		;91f0
	nop			;91f2
	ret nz			;91f3
	nop			;91f4
	nop			;91f5
	nop			;91f6
	dec b			;91f7
	ld (bc),a		;91f8
	jr nz,l91fbh		;91f9
l91fbh:
	nop			;91fb
	add hl,bc		;91fc
	ld c,005h		;91fd
	nop			;91ff
	ret nz			;9200
	nop			;9201
	nop			;9202
	nop			;9203
	dec b			;9204
	ld (bc),a		;9205
	jr z,l9208h		;9206
l9208h:
	nop			;9208
	add hl,bc		;9209
	ld c,005h		;920a
	jr c,$+18		;920c
	nop			;920e
	add hl,bc		;920f
	ld c,005h		;9210
	ld (bc),a		;9212
	jr nc,l9215h		;9213
l9215h:
	nop			;9215
	add hl,bc		;9216
	ld c,005h		;9217
	jr c,l9223h		;9219
	nop			;921b
	add hl,bc		;921c
	ld c,005h		;921d
	ld (bc),a		;921f
	jr nc,l9222h		;9220
l9222h:
	nop			;9222
l9223h:
	add hl,bc		;9223
	ld c,005h		;9224
	jr c,l9238h		;9226
	nop			;9228
	add hl,bc		;9229
	ld c,005h		;922a
	ld (bc),a		;922c
	nop			;922d
	nop			;922e
	nop			;922f
	daa			;9230
	nop			;9231
	inc bc			;9232
	inc b			;9233
	djnz l9236h		;9234
l9236h:
	jr z,l9238h		;9236
l9238h:
	inc bc			;9238
	ld (bc),a		;9239
	nop			;923a
	nop			;923b
	nop			;923c
	ld b,e			;923d
	nop			;923e
	inc bc			;923f
	inc b			;9240
	djnz l9243h		;9241
l9243h:
	ld b,h			;9243
	nop			;9244
	inc bc			;9245
	inc bc			;9246
	nop			;9247
	rlca			;9248
	jr c,l924dh		;9249
	nop			;924b
	inc bc			;924c
l924dh:
	inc b			;924d
	rla			;924e
	jr c,l9253h		;924f
	nop			;9251
	inc bc			;9252
l9253h:
	ex af,af'		;9253
	daa			;9254
	jr nc,l9259h		;9255
	nop			;9257
	inc bc			;9258
l9259h:
	inc bc			;9259
	inc c			;925a
	nop			;925b
	jr c,l92b6h		;925c
	nop			;925e
	inc bc			;925f
	djnz l9272h		;9260
	jr c,l9266h		;9262
	nop			;9264
	inc bc			;9265
l9266h:
	inc d			;9266
	jr nz,$+58		;9267
	ld (bc),a		;9269
	nop			;926a
l926bh:
	inc bc			;926b
	ld (bc),a		;926c
	nop			;926d
	nop			;926e
	nop			;926f
	nop			;9270
	nop			;9271
l9272h:
	inc bc			;9272
	nop			;9273
	nop			;9274
	nop			;9275
	nop			;9276
	nop			;9277
	inc bc			;9278
	ld (bc),a		;9279
	nop			;927a
	jr l927dh		;927b
l927dh:
	rlca			;927d
	ld c,(hl)		;927e
	inc bc			;927f
	nop			;9280
	ld d,b			;9281
	nop			;9282
	rlca			;9283
	ld c,(hl)		;9284
	inc bc			;9285
	ld (bc),a		;9286
	ex af,af'		;9287
	jr l928ah		;9288
l928ah:
	rlca			;928a
	ld c,(hl)		;928b
	inc bc			;928c
	ex af,af'		;928d
	ld d,b			;928e
	nop			;928f
	rlca			;9290
	ld c,(hl)		;9291
	inc bc			;9292
	ld (bc),a		;9293
	djnz l92aeh		;9294
	nop			;9296
	rlca			;9297
	ld c,(hl)		;9298
	inc bc			;9299
	djnz $+82		;929a
	nop			;929c
	rlca			;929d
	ld c,(hl)		;929e
	inc bc			;929f
	jp pe,0f1b2h		;92a0
	or d			;92a3
	ret m			;92a4
	or d			;92a5
	ld b,0b3h		;92a6
	dec c			;92a8
	or e			;92a9
	inc d			;92aa
	or e			;92ab
	dec de			;92ac
	or e			;92ad
l92aeh:
	ld (029b3h),hl		;92ae
	or e			;92b1
	add hl,hl		;92b2
	or e			;92b3
	rst 38h			;92b4
	or d			;92b5
l92b6h:
	jr nc,l926bh		;92b6
	scf			;92b8
	or e			;92b9
	ld a,0b3h		;92ba
	ld b,l			;92bc
	or e			;92bd
	ld c,h			;92be
	or e			;92bf
	ld d,e			;92c0
	or e			;92c1
	ld e,d			;92c2
	or e			;92c3
	ld h,c			;92c4
	or e			;92c5
	ld l,b			;92c6
	or e			;92c7
	ld l,a			;92c8
	or e			;92c9
	halt			;92ca
	or e			;92cb
	ld a,l			;92cc
	or e			;92cd
	add a,h			;92ce
	or e			;92cf
	sub a			;92d0
	or e			;92d1
	xor d			;92d2
	or e			;92d3
	cp l			;92d4
	or e			;92d5
	ret nc			;92d6
	or e			;92d7
	rst 10h			;92d8
	or e			;92d9
	sbc a,0b3h		;92da
	push hl			;92dc
	or e			;92dd
	call pe,0f3b3h		;92de
	or e			;92e1
	jp m,001b3h		;92e2
	or h			;92e5
	ex af,af'		;92e6
	or h			;92e7
	rrca			;92e8
	or h			;92e9
	ld bc,00000h		;92ea
	nop			;92ed
	ld c,000h		;92ee
	inc b			;92f0
	ld bc,00000h		;92f1
	nop			;92f4
	rlca			;92f5
	inc c			;92f6
	inc b			;92f7
	ld bc,00000h		;92f8
	nop			;92fb
	rlca			;92fc
	inc c			;92fd
	inc b			;92fe
	ld bc,00000h		;92ff
	nop			;9302
	inc c			;9303
	ld c,003h		;9304
	ld bc,00000h		;9306
	nop			;9309
	rlca			;930a
	ld c,003h		;930b
	ld bc,00008h		;930d
	nop			;9310
	rlca			;9311
	ld c,003h		;9312
	ld bc,00010h		;9314
	nop			;9317
	ld c,00eh		;9318
	inc bc			;931a
	ld bc,00000h		;931b
	nop			;931e
	ld (00400h),hl		;931f
	ld bc,00000h		;9322
	nop			;9325
	ld (00400h),hl		;9326
	ld bc,00000h		;9329
	nop			;932c
	ld h,d			;932d
	nop			;932e
	inc b			;932f
	ld bc,00000h		;9330
	nop			;9333
	rra			;9334
	nop			;9335
	inc b			;9336
	ld bc,0000ch		;9337
	nop			;933a
	jr nz,l933dh		;933b
l933dh:
	inc b			;933d
	ld bc,00008h		;933e
	nop			;9341
	ld hl,00400h		;9342
	ld bc,00004h		;9345
	nop			;9348
	jr nz,l934bh		;9349
l934bh:
	inc b			;934b
	ld bc,00000h		;934c
	nop			;934f
	rra			;9350
	nop			;9351
	inc b			;9352
	ld bc,0000ch		;9353
	nop			;9356
	jr nz,l9359h		;9357
l9359h:
	inc b			;9359
	ld bc,00008h		;935a
	nop			;935d
	ld hl,00400h		;935e
	ld bc,00004h		;9361
	nop			;9364
	ld (00400h),hl		;9365
	ld bc,00000h		;9368
	nop			;936b
	ld b,04ah		;936c
	inc b			;936e
	ld bc,00008h		;936f
	nop			;9372
	ld b,04ah		;9373
	inc b			;9375
	ld bc,00010h		;9376
	nop			;9379
	ld b,04ah		;937a
	inc b			;937c
	ld bc,00018h		;937d
	nop			;9380
	ld b,04ah		;9381
	inc b			;9383
	inc bc			;9384
	nop			;9385
	nop			;9386
	nop			;9387
	ld b,000h		;9388
	inc b			;938a
	nop			;938b
	nop			;938c
	nop			;938d
	ld b,000h		;938e
	inc b			;9390
	nop			;9391
	nop			;9392
	nop			;9393
	ld b,000h		;9394
	inc b			;9396
	inc bc			;9397
	nop			;9398
	nop			;9399
	nop			;939a
	ld b,000h		;939b
	inc b			;939d
	nop			;939e
	nop			;939f
	nop			;93a0
	ld b,000h		;93a1
	inc b			;93a3
	nop			;93a4
	nop			;93a5
	nop			;93a6
	ld b,000h		;93a7
	inc b			;93a9
	inc bc			;93aa
	nop			;93ab
	nop			;93ac
	nop			;93ad
	ld b,000h		;93ae
	inc b			;93b0
	nop			;93b1
	nop			;93b2
	nop			;93b3
	ld b,000h		;93b4
	inc b			;93b6
	nop			;93b7
	nop			;93b8
	nop			;93b9
	ld b,000h		;93ba
	inc b			;93bc
	inc bc			;93bd
	nop			;93be
	nop			;93bf
	nop			;93c0
	ld b,000h		;93c1
	inc b			;93c3
	nop			;93c4
	nop			;93c5
	nop			;93c6
	ld b,000h		;93c7
	inc b			;93c9
	nop			;93ca
	nop			;93cb
	nop			;93cc
	ld b,000h		;93cd
	inc b			;93cf
	ld bc,00000h		;93d0
	nop			;93d3
	inc hl			;93d4
	nop			;93d5
	inc bc			;93d6
	ld bc,00000h		;93d7
	nop			;93da
	dec c			;93db
	ld c,(hl)		;93dc
	inc bc			;93dd
	ld bc,00000h		;93de
	nop			;93e1
	cp (hl)			;93e2
	nop			;93e3
	inc b			;93e4
	ld bc,00000h		;93e5
	nop			;93e8
	ld b,04ah		;93e9
	inc bc			;93eb
	ld bc,00008h		;93ec
	nop			;93ef
	ld b,04ah		;93f0
	inc bc			;93f2
	ld bc,00010h		;93f3
	nop			;93f6
	ld b,04ah		;93f7
	inc bc			;93f9
	ld bc,00000h		;93fa
	nop			;93fd
	dec h			;93fe
	nop			;93ff
	inc bc			;9400
	ld bc,00004h		;9401
	nop			;9404
	dec h			;9405
	nop			;9406
	inc bc			;9407
	ld bc,00008h		;9408
	nop			;940b
	dec h			;940c
	nop			;940d
	inc bc			;940e
	ld bc,0000ch		;940f
	nop			;9412
	dec h			;9413
	nop			;9414
	inc bc			;9415
	nop			;9416
	nop			;9417
	ld de,0000eh		;9418
	nop			;941b
	nop			;941c
	nop			;941d
	nop			;941e
	dec bc			;941f
	ld bc,04a48h		;9420
	ld c,c			;9423
	inc b			;9424
	nop			;9425
	nop			;9426
	nop			;9427
	nop			;9428
	nop			;9429
	nop			;942a
	nop			;942b
	inc bc			;942c
	ld c,e			;942d
	ld c,h			;942e
	ld c,l			;942f
	ld c,(hl)		;9430
	ld c,a			;9431
	ld d,b			;9432
	dec b			;9433
	nop			;9434
	nop			;9435
	nop			;9436
	nop			;9437
	nop			;9438
	ld (bc),a		;9439
	ld d,c			;943a
	ld d,d			;943b
	ld d,e			;943c
	ld d,h			;943d
	ld d,l			;943e
	ld d,(hl)		;943f
	ld d,a			;9440
	ld e,b			;9441
	rlca			;9442
	nop			;9443
	nop			;9444
	nop			;9445
	ld b,059h		;9446
	ld e,d			;9448
	ld e,e			;9449
	ld e,h			;944a
	ld e,l			;944b
	ld e,(hl)		;944c
	ld e,a			;944d
	ld h,b			;944e
	ld h,c			;944f
	ld h,d			;9450
	nop			;9451
	nop			;9452
	add hl,bc		;9453
	ld h,e			;9454
	ld h,h			;9455
	ld h,l			;9456
	ld h,(hl)		;9457
	ld h,a			;9458
	ld l,b			;9459
	ld l,c			;945a
	ld l,d			;945b
	ld l,e			;945c
	ld l,h			;945d
	ld l,l			;945e
	ex af,af'		;945f
	nop			;9460
	ld a,(bc)		;9461
	ld l,(hl)		;9462
	ld l,a			;9463
	ld (hl),b		;9464
	ld (hl),c		;9465
	ld (hl),d		;9466
	ld (hl),e		;9467
	ld (hl),h		;9468
	ld (hl),l		;9469
	halt			;946a
	ld (hl),a		;946b
	ld a,b			;946c
	ld a,c			;946d
	nop			;946e
	nop			;946f
	nop			;9470
	inc d			;9471
	ld (de),a		;9472
	inc de			;9473
	ld a,e			;9474
	ld a,h			;9475
	ld a,l			;9476
	sub h			;9477
	sub l			;9478
	sub (hl)		;9479
	sub a			;947a
	sbc a,b			;947b
	nop			;947c
	nop			;947d
	nop			;947e
	nop			;947f
	nop			;9480
	nop			;9481
	inc (hl)		;9482
	dec (hl)		;9483
	ld (hl),037h		;9484
	jr c,l94c1h		;9486
	ld a,(0003bh)		;9488
	nop			;948b
	nop			;948c
	rlca			;948d
	xor c			;948e
	ld l,l			;948f
	ld b,b			;9490
	ld b,c			;9491
	ld b,d			;9492
	ld b,e			;9493
	ld b,h			;9494
	ld b,l			;9495
	ld b,(hl)		;9496
	ld b,a			;9497
	nop			;9498
	ld c,b			;9499
	ld c,c			;949a
	ld c,d			;949b
	ld c,e			;949c
	ld c,h			;949d
	ld c,l			;949e
	ld c,(hl)		;949f
	ld c,a			;94a0
	sub h			;94a1
	sub l			;94a2
	sub (hl)		;94a3
	sub a			;94a4
	sbc a,b			;94a5
	nop			;94a6
	nop			;94a7
	inc d			;94a8
	ld (de),a		;94a9
	inc de			;94aa
	ld d,c			;94ab
	ld d,d			;94ac
	dec (hl)		;94ad
	ld (hl),037h		;94ae
	jr c,l94ebh		;94b0
	ld a,(0003bh)		;94b2
	nop			;94b5
	nop			;94b6
	nop			;94b7
	nop			;94b8
	inc bc			;94b9
	ld d,l			;94ba
	ld d,(hl)		;94bb
	ld d,a			;94bc
	ld b,e			;94bd
	ld b,h			;94be
	ld b,l			;94bf
	ld b,(hl)		;94c0
l94c1h:
	ld b,a			;94c1
	nop			;94c2
	nop			;94c3
	rlca			;94c4
	xor c			;94c5
	ld l,l			;94c6
	ld e,c			;94c7
	ld e,d			;94c8
	ld c,a			;94c9
	sub h			;94ca
	sub l			;94cb
	sub (hl)		;94cc
	ld e,e			;94cd
	ld e,h			;94ce
	rrca			;94cf
	ld c,b			;94d0
	ld c,c			;94d1
	ld c,d			;94d2
	ld e,l			;94d3
	ld e,(hl)		;94d4
	ld d,d			;94d5
	dec (hl)		;94d6
	ld (hl),037h		;94d7
	jr c,l9514h		;94d9
	ld e,a			;94db
	ld h,b			;94dc
	inc b			;94dd
	nop			;94de
	inc d			;94df
	ld (de),a		;94e0
	inc de			;94e1
	ld h,d			;94e2
	ld h,e			;94e3
	ld h,h			;94e4
	ld h,l			;94e5
	ld b,e			;94e6
	ld h,(hl)		;94e7
	ld h,a			;94e8
	ld l,b			;94e9
	dec b			;94ea
l94ebh:
	nop			;94eb
	nop			;94ec
	nop			;94ed
	nop			;94ee
	nop			;94ef
	jp 07978h		;94f0
	ld a,d			;94f3
	ld a,e			;94f4
	ld a,h			;94f5
	ld a,l			;94f6
	ld (bc),a		;94f7
	ld bc,00000h		;94f8
	add a,d			;94fb
	xor c			;94fc
	cp a			;94fd
	xor e			;94fe
	add a,e			;94ff
	add a,h			;9500
	sub a			;9501
	sbc a,d			;9502
	rlca			;9503
	nop			;9504
	nop			;9505
	nop			;9506
	nop			;9507
	nop			;9508
	nop			;9509
	inc b			;950a
	rrca			;950b
	add a,l			;950c
	add a,(hl)		;950d
	add a,a			;950e
	adc a,b			;950f
	adc a,c			;9510
	adc a,d			;9511
	adc a,e			;9512
	sub b			;9513
l9514h:
	adc a,h			;9514
	adc a,l			;9515
	ex af,af'		;9516
	dec b			;9517
	nop			;9518
	nop			;9519
	nop			;951a
	sbc a,e			;951b
	and e			;951c
	and h			;951d
	sbc a,b			;951e
	sub (hl)		;951f
	adc a,(hl)		;9520
	adc a,a			;9521
	sub b			;9522
	adc a,d			;9523
	adc a,c			;9524
	adc a,d			;9525
	adc a,e			;9526
	adc a,l			;9527
	ex af,af'		;9528
	inc b			;9529
	sbc a,(hl)		;952a
	sbc a,a			;952b
	and b			;952c
	and l			;952d
	sbc a,l			;952e
	and c			;952f
	sbc a,c			;9530
	push bc			;9531
	sub h			;9532
	sub e			;9533
	sub d			;9534
	sub d			;9535
	sub c			;9536
	sub l			;9537
	ld b,09bh		;9538
	sbc a,h			;953a
	sbc a,l			;953b
	sbc a,h			;953c
	and d			;953d
	nop			;953e
	nop			;953f
	nop			;9540
	nop			;9541
	nop			;9542
	nop			;9543
	nop			;9544
	nop			;9545
	nop			;9546
	nop			;9547
	nop			;9548
	nop			;9549
	inc b			;954a
	ld c,000h		;954b
	jr nz,l9570h		;954d
	ld (00010h),hl		;954f
	nop			;9552
	nop			;9553
	rla			;9554
	inc hl			;9555
	inc h			;9556
	djnz l9559h		;9557
l9559h:
	nop			;9559
	dec h			;955a
	ld h,011h		;955b
	inc d			;955d
	daa			;955e
	ld (05a55h),hl		;955f
	jr z,l9576h		;9562
	ccf			;9564
	add hl,hl		;9565
	ld h,l			;9566
	ld l,h			;9567
	ld l,l			;9568
	ld hl,(02c19h)		;9569
	ld h,(hl)		;956c
	dec c			;956d
	rra			;956e
	ccf			;956f
l9570h:
	dec hl			;9570
	dec l			;9571
	nop			;9572
	rla			;9573
	ld l,06ch		;9574
l9576h:
	nop			;9576
	ld c,b			;9577
	inc a			;9578
	ld b,a			;9579
	nop			;957a
	nop			;957b
	nop			;957c
	nop			;957d
	nop			;957e
	ld b,l			;957f
	cpl			;9580
	ld d,a			;9581
	dec de			;9582
	nop			;9583
	nop			;9584
	nop			;9585
	inc b			;9586
	ld c,013h		;9587
	ld b,e			;9589
	dec l			;958a
	nop			;958b
	nop			;958c
	nop			;958d
	nop			;958e
	inc de			;958f
	inc l			;9590
	inc hl			;9591
	inc e			;9592
	nop			;9593
	nop			;9594
	nop			;9595
	jr nc,l95b7h		;9596
	ld b,l			;9598
	ld sp,00c32h		;9599
	ld h,a			;959c
	inc sp			;959d
	ld b,a			;959e
	ld (de),a		;959f
	dec a			;95a0
	ld l,b			;95a1
	ld c,d			;95a2
	ld l,a			;95a3
	ld b,(hl)		;95a4
	inc h			;95a5
	inc l			;95a6
	ld h,(hl)		;95a7
	ld c,l			;95a8
	ld a,03fh		;95a9
	dec hl			;95ab
	dec l			;95ac
	nop			;95ad
	jr nz,$+48		;95ae
	ld l,h			;95b0
	inc (hl)		;95b1
	nop			;95b2
	ccf			;95b3
	ld b,a			;95b4
	nop			;95b5
	nop			;95b6
l95b7h:
	nop			;95b7
	nop			;95b8
	nop			;95b9
	ld b,l			;95ba
	cpl			;95bb
	ld h,01bh		;95bc
	nop			;95be
	nop			;95bf
	nop			;95c0
	nop			;95c1
	inc b			;95c2
	ld c,043h		;95c3
	dec l			;95c5
	nop			;95c6
	nop			;95c7
	nop			;95c8
	nop			;95c9
	nop			;95ca
	inc de			;95cb
	ld a,(de)		;95cc
	djnz l95cfh		;95cd
l95cfh:
	nop			;95cf
	nop			;95d0
	nop			;95d1
	rra			;95d2
	ld b,l			;95d3
	ld sp,00b32h		;95d4
	dec (hl)		;95d7
	ld c,(hl)		;95d8
	ld c,c			;95d9
	ld a,029h		;95da
	ld h,l			;95dc
	ld hl,06f2eh		;95dd
	inc h			;95e0
	inc l			;95e1
	ld h,(hl)		;95e2
	ld c,l			;95e3
	inc a			;95e4
	ld d,b			;95e5
	ld l,l			;95e6
	dec l			;95e7
	nop			;95e8
	jr nz,l9619h		;95e9
	ld e,(hl)		;95eb
	ld h,b			;95ec
	ld c,d			;95ed
	ccf			;95ee
	ld b,a			;95ef
	nop			;95f0
	nop			;95f1
	nop			;95f2
	nop			;95f3
	nop			;95f4
	ld b,l			;95f5
	cpl			;95f6
	ld h,01bh		;95f7
	nop			;95f9
	nop			;95fa
	nop			;95fb
	nop			;95fc
	nop			;95fd
	inc b			;95fe
	ld c,02ah		;95ff
	nop			;9601
	nop			;9602
	nop			;9603
	nop			;9604
	nop			;9605
	rla			;9606
	inc hl			;9607
	inc e			;9608
	nop			;9609
	nop			;960a
	nop			;960b
	nop			;960c
	nop			;960d
	ld c,b			;960e
	ld b,(hl)		;960f
	ld d,(hl)		;9610
	dec bc			;9611
	ld (hl),037h		;9612
	jr z,l9628h		;9614
	dec a			;9616
	ld b,d			;9617
	inc e			;9618
l9619h:
	add hl,de		;9619
	ld b,c			;961a
	ld l,h			;961b
	ld a,(03f52h)		;961c
	inc a			;961f
	jr z,$+111		;9620
	dec l			;9622
	nop			;9623
	jr nz,$+100		;9624
	ld h,e			;9626
	ld h,h			;9627
l9628h:
	ld e,l			;9628
	ld l,038h		;9629
	nop			;962b
	nop			;962c
	nop			;962d
	nop			;962e
	nop			;962f
	ld b,l			;9630
	cpl			;9631
	ld h,01bh		;9632
	nop			;9634
	nop			;9635
	jr l9653h		;9636
	nop			;9638
	nop			;9639
	inc b			;963a
	ld c,015h		;963b
	nop			;963d
	nop			;963e
	nop			;963f
	inc de			;9640
	ld b,e			;9641
	ld c,d			;9642
	ld (00010h),hl		;9643
	nop			;9646
	nop			;9647
	nop			;9648
	nop			;9649
	add hl,sp		;964a
	ld l,(hl)		;964b
	ld c,043h		;964c
	ld d,d			;964e
	rra			;964f
	nop			;9650
	inc d			;9651
	ld e,a			;9652
l9653h:
	ld hl,(02c09h)		;9653
	ld l,h			;9656
	ld l,a			;9657
	ld d,e			;9658
	ld l,c			;9659
	ld a,051h		;965a
	ld l,l			;965c
	inc h			;965d
	inc l			;965e
	ld c,(hl)		;965f
	ld c,c			;9660
	ld a,(bc)		;9661
	inc a			;9662
	ld (hl),d		;9663
	ld b,h			;9664
	ld l,03bh		;9665
	nop			;9667
	nop			;9668
	nop			;9669
	nop			;966a
	ccf			;966b
	ld b,a			;966c
	dec de			;966d
	nop			;966e
	nop			;966f
	nop			;9670
	nop			;9671
	jr $+29			;9672
	nop			;9674
	nop			;9675
	inc b			;9676
	ld c,000h		;9677
	nop			;9679
	nop			;967a
	inc de			;967b
	ld b,e			;967c
	ld c,d			;967d
	ld (00010h),hl		;967e
	nop			;9681
	nop			;9682
	nop			;9683
	nop			;9684
	nop			;9685
	dec hl			;9686
	ld (05243h),hl		;9687
	rra			;968a
	nop			;968b
	inc d			;968c
	ld c,h			;968d
	ld hl,(0410fh)		;968e
	ld l,h			;9691
	ld l,a			;9692
	ld c,a			;9693
	ld c,e			;9694
	dec c			;9695
	ld (hl),b		;9696
	ld l,(hl)		;9697
	inc e			;9698
	add hl,de		;9699
	ld b,c			;969a
	ld e,h			;969b
	ld d,a			;969c
	inc a			;969d
	ld l,d			;969e
	ld h,l			;969f
	ld hl,01b6ch		;96a0
	nop			;96a3
	nop			;96a4
	dec e			;96a5
	dec a			;96a6
	inc a			;96a7
	dec sp			;96a8
	nop			;96a9
	nop			;96aa
	nop			;96ab
	nop			;96ac
	nop			;96ad
	ld de,00000h		;96ae
	nop			;96b1
	inc b			;96b2
	ld c,000h		;96b3
	nop			;96b5
	inc de			;96b6
	ld b,e			;96b7
	ld c,d			;96b8
	ld (00010h),hl		;96b9
	nop			;96bc
	nop			;96bd
	nop			;96be
l96bfh:
	nop			;96bf
	nop			;96c0
	nop			;96c1
	ld (05243h),hl		;96c2
	rra			;96c5
	nop			;96c6
	inc d			;96c7
	daa			;96c8
	ld hl,(04119h)		;96c9
	ld l,h			;96cc
	ld l,a			;96cd
	ld c,a			;96ce
	inc (hl)		;96cf
	dec c			;96d0
	ld (hl),b		;96d1
	ld l,(hl)		;96d2
	inc e			;96d3
	nop			;96d4
	rla			;96d5
	ld h,a			;96d6
	ld l,e			;96d7
	inc a			;96d8
	ld (hl),d		;96d9
	ld b,h			;96da
	inc hl			;96db
	ld b,e			;96dc
	ld l,h			;96dd
	nop			;96de
	nop			;96df
	dec e			;96e0
	dec a			;96e1
	cpl			;96e2
	jr z,l96fbh		;96e3
	nop			;96e5
	nop			;96e6
	nop			;96e7
	jr l96fch		;96e8
	rra			;96ea
	nop			;96eb
	nop			;96ec
	nop			;96ed
	inc b			;96ee
	ld c,000h		;96ef
	ld e,02eh		;96f1
	ld c,d			;96f3
	ld (00010h),hl		;96f4
	nop			;96f7
	nop			;96f8
	nop			;96f9
	nop			;96fa
l96fbh:
	nop			;96fb
l96fch:
	nop			;96fc
	nop			;96fd
	ld e,b			;96fe
	ld b,b			;96ff
	dec de			;9700
	nop			;9701
	inc d			;9702
	daa			;9703
	ld hl,(0410fh)		;9704
	ld l,h			;9707
	ld l,a			;9708
	ld c,a			;9709
	ld h,l			;970a
	ld l,h			;970b
	ld e,c			;970c
	ld sp,0001ch		;970d
	inc de			;9710
l9711h:
	dec h			;9711
	ld (hl),c		;9712
	inc a			;9713
	ld l,d			;9714
	ld d,h			;9715
	djnz l9718h		;9716
l9718h:
	jr nz,l9748h		;9718
	nop			;971a
	jr l975ah		;971b
	cpl			;971d
	ld c,c			;971e
	ld d,000h		;971f
	nop			;9721
	nop			;9722
	dec e			;9723
	add hl,hl		;9724
	cpl			;9725
	ld h,01bh		;9726
	nop			;9728
	ld bc,00503h		;9729
	djnz l96bfh		;972c
	sub d			;972e
	sub e			;972f
	ld a,a			;9730
	dec c			;9731
	jr nc,l9765h		;9732
	ld (00e33h),a		;9734
	inc a			;9737
	dec a			;9738
	ld a,03fh		;9739
	nop			;973b
	ld bc,00503h		;973c
	ld de,l9c99h		;973f
	sbc a,e			;9742
	ld a,a			;9743
	nop			;9744
	nop			;9745
	add a,080h		;9746
l9748h:
	ld a,a			;9748
	ld b,072h		;9749
	ld l,d			;974b
	ld l,e			;974c
	ccf			;974d
	nop			;974e
	inc bc			;974f
	inc bc			;9750
	inc bc			;9751
	push bc			;9752
	sbc a,(hl)		;9753
	sbc a,l			;9754
	add a,07eh		;9755
	ld a,l			;9757
	rst 0			;9758
	ld a,e			;9759
l975ah:
	ld l,h			;975a
	nop			;975b
	ld bc,00503h		;975c
	ld de,l9a99h		;975f
	sbc a,e			;9762
	ld a,a			;9763
	nop			;9764
l9765h:
	nop			;9765
	nop			;9766
	nop			;9767
	add hl,bc		;9768
	ld b,072h		;9769
	halt			;976b
	ld (hl),a		;976c
	ccf			;976d
	nop			;976e
	nop			;976f
	inc bc			;9770
	ld b,010h		;9771
	sub c			;9773
	sub d			;9774
	sub e			;9775
	ld h,c			;9776
	ld d,c			;9777
	dec c			;9778
	jr nc,l97ach		;9779
	ld (05453h),a		;977b
	ld c,03ch		;977e
	dec a			;9780
	ld a,058h		;9781
	ld e,c			;9783
	nop			;9784
	nop			;9785
	inc bc			;9786
	ld b,011h		;9787
	sbc a,c			;9789
	sbc a,h			;978a
	sbc a,e			;978b
	ld h,c			;978c
	ld h,d			;978d
	nop			;978e
	nop			;978f
	add a,080h		;9790
	ld a,h			;9792
	ld a,d			;9793
	ld b,072h		;9794
	ld l,d			;9796
	ld l,e			;9797
	ld e,b			;9798
	ld l,(hl)		;9799
	nop			;979a
	ld (bc),a		;979b
	inc bc			;979c
	inc b			;979d
	push bc			;979e
	sbc a,(hl)		;979f
	sbc a,l			;97a0
	ld d,c			;97a1
	add a,07eh		;97a2
	ld a,l			;97a4
	ld a,c			;97a5
	rst 0			;97a6
	ld a,e			;97a7
	ld a,b			;97a8
	ld e,c			;97a9
	nop			;97aa
	nop			;97ab
l97ach:
	inc bc			;97ac
	ld b,010h		;97ad
	sub c			;97af
	sub d			;97b0
	sub e			;97b1
	ld h,c			;97b2
	ld h,d			;97b3
	inc bc			;97b4
	ld (hl),e		;97b5
	ld (hl),h		;97b6
	ld (hl),l		;97b7
	halt			;97b8
	ld (hl),a		;97b9
	ld a,(hl)		;97ba
	ld a,a			;97bb
	add a,b			;97bc
	add a,c			;97bd
	xor d			;97be
	xor e			;97bf
	nop			;97c0
	nop			;97c1
	inc bc			;97c2
	ld b,011h		;97c3
	sbc a,c			;97c5
	sbc a,h			;97c6
	sbc a,e			;97c7
	ld h,c			;97c8
	ld h,d			;97c9
	nop			;97ca
	nop			;97cb
	add a,0c8h		;97cc
	and a			;97ce
	call nz,0c0bch		;97cf
	cp (hl)			;97d2
	xor b			;97d3
	xor d			;97d4
	xor e			;97d5
	nop			;97d6
	ld (bc),a		;97d7
	inc bc			;97d8
	inc b			;97d9
	push bc			;97da
	sbc a,(hl)		;97db
	sbc a,l			;97dc
	ld h,d			;97dd
	add a,0c8h		;97de
	ret			;97e0
	and (hl)		;97e1
	rst 0			;97e2
	pop bc			;97e3
	jp nz,000abh		;97e4
	ld (bc),a		;97e7
	inc bc			;97e8
	inc b			;97e9
	ret z			;97ea
	pop bc			;97eb
	jp nz,0b551h		;97ec
	or e			;97ef
	cp e			;97f0
	cp b			;97f1
	jp z,0adb7h		;97f2
	ld e,c			;97f5
	nop			;97f6
	ld (bc),a		;97f7
	inc bc			;97f8
	inc b			;97f9
	ret z			;97fa
	jp 051c4h		;97fb
	call z,0b5b4h		;97fe
	cp b			;9801
	call 0aeb9h		;9802
	ld e,c			;9805
	nop			;9806
	nop			;9807
	inc bc			;9808
	ld b,011h		;9809
	sbc a,c			;980b
	ld (hl),c		;980c
	sbc a,e			;980d
	ld h,c			;980e
	ld d,c			;980f
	nop			;9810
	nop			;9811
	call z,0bab6h		;9812
	or c			;9815
	ld b,072h		;9816
	xor h			;9818
	ld (hl),e		;9819
	ld e,b			;981a
	ld e,c			;981b
	nop			;981c
	inc bc			;981d
	inc bc			;981e
	inc b			;981f
	ret z			;9820
	pop bc			;9821
	jp nz,0cc7bh		;9822
	or e			;9825
	cp e			;9826
	inc (hl)		;9827
	call 0adb7h		;9828
	ld b,b			;982b
	nop			;982c
	inc bc			;982d
	inc bc			;982e
	inc b			;982f
	ret			;9830
	jp 07bc4h		;9831
	res 6,h			;9834
	or l			;9836
	inc (hl)		;9837
	jp z,0aeb9h		;9838
	ld b,b			;983b
	nop			;983c
	ld (bc),a		;983d
	inc bc			;983e
	inc b			;983f
	ret z			;9840
	pop bc			;9841
	jp nz,0cb62h		;9842
	or e			;9845
	cp e			;9846
	or d			;9847
	jp z,0adb7h		;9848
	xor e			;984b
	nop			;984c
	ld (bc),a		;984d
	inc bc			;984e
	inc b			;984f
	ret			;9850
	jp 062c4h		;9851
	call z,0cbb4h		;9854
	cp b			;9857
	call 0aeb9h		;9858
	xor e			;985b
	nop			;985c
	ld bc,00603h		;985d
	ld de,07e99h		;9860
	sbc a,e			;9863
	ld a,a			;9864
	ld a,e			;9865
	nop			;9866
	nop			;9867
	call z,0b0b6h		;9868
	inc (hl)		;986b
	ld b,072h		;986c
	xor h			;986e
	ld (hl),h		;986f
	ccf			;9870
	ld b,b			;9871
	nop			;9872
	nop			;9873
	inc bc			;9874
	ld b,011h		;9875
	sbc a,c			;9877
	ld (hl),c		;9878
	sbc a,e			;9879
	ld d,b			;987a
	ld h,d			;987b
	nop			;987c
	nop			;987d
	call z,0bab6h		;987e
	or c			;9881
	cp h			;9882
	ret nz			;9883
	xor h			;9884
	xor b			;9885
	xor d			;9886
	xor e			;9887
	nop			;9888
	nop			;9889
	inc bc			;988a
	ld b,011h		;988b
	sbc a,c			;988d
	sbc a,d			;988e
	sbc a,e			;988f
	ld d,b			;9890
	ld d,c			;9891
	nop			;9892
	nop			;9893
	nop			;9894
	nop			;9895
	ex af,af'		;9896
	ld (hl),l		;9897
	ld b,072h		;9898
	halt			;989a
	ld (hl),e		;989b
	ld e,b			;989c
	ld l,(hl)		;989d
	nop			;989e
	nop			;989f
	inc bc			;98a0
	ld b,011h		;98a1
	sbc a,c			;98a3
	sbc a,d			;98a4
	sbc a,e			;98a5
	ld d,b			;98a6
	ld h,d			;98a7
	nop			;98a8
	nop			;98a9
	nop			;98aa
	nop			;98ab
	nop			;98ac
	jp 0c0bch		;98ad
	cp (hl)			;98b0
	xor b			;98b1
	xor d			;98b2
	xor e			;98b3
	nop			;98b4
	nop			;98b5
	nop			;98b6
	nop			;98b7
	nop			;98b8
	nop			;98b9
	nop			;98ba
	nop			;98bb
	nop			;98bc
	ld bc,05b5ah		;98bd
	ld e,h			;98c0
	ld (bc),a		;98c1
	nop			;98c2
	nop			;98c3
	nop			;98c4
	nop			;98c5
	nop			;98c6
	nop			;98c7
	nop			;98c8
	nop			;98c9
	inc bc			;98ca
	inc b			;98cb
	dec b			;98cc
	ld e,l			;98cd
	ld e,(hl)		;98ce
	ld e,a			;98cf
	ld h,b			;98d0
	ld h,c			;98d1
	ld b,007h		;98d2
	nop			;98d4
	ex af,af'		;98d5
	add hl,bc		;98d6
	ld h,d			;98d7
	ld h,e			;98d8
	ld h,h			;98d9
	ld h,l			;98da
	ld h,(hl)		;98db
	ld h,a			;98dc
	ld l,b			;98dd
	ld l,c			;98de
	ld l,c			;98df
	ld l,d			;98e0
	ld l,e			;98e1
	ld l,h			;98e2
	ld a,(bc)		;98e3
	dec bc			;98e4
	ld l,l			;98e5
	ld l,(hl)		;98e6
	ld l,a			;98e7
	ld (hl),b		;98e8
	ld (hl),c		;98e9
	ld (hl),d		;98ea
	ld (hl),c		;98eb
	ld (hl),e		;98ec
	ld (hl),e		;98ed
	ld (hl),h		;98ee
	ld (hl),h		;98ef
	ld (hl),l		;98f0
	halt			;98f1
	ld (hl),a		;98f2
	inc c			;98f3
	nop			;98f4
	jr nc,l9928h		;98f5
	nop			;98f7
	nop			;98f8
	nop			;98f9
	nop			;98fa
	xor e			;98fb
	add a,b			;98fc
	add a,b			;98fd
	or e			;98fe
	ld a,b			;98ff
	ld a,c			;9900
	ld a,d			;9901
	ld a,e			;9902
	djnz l9905h		;9903
l9905h:
	nop			;9905
	nop			;9906
	nop			;9907
	nop			;9908
	nop			;9909
	nop			;990a
	nop			;990b
	ret z			;990c
	call nz,07cb4h		;990d
	ld a,l			;9910
	ld a,(hl)		;9911
	ld a,a			;9912
	dec c			;9913
	nop			;9914
	nop			;9915
	nop			;9916
	nop			;9917
	nop			;9918
	nop			;9919
	nop			;991a
	or d			;991b
	jp 0bac2h		;991c
	and h			;991f
	and l			;9920
	and (hl)		;9921
	and a			;9922
	dec e			;9923
	nop			;9924
	ld (00033h),a		;9925
l9928h:
	nop			;9928
	nop			;9929
	nop			;992a
	or c			;992b
	xor b			;992c
	xor b			;992d
	cp c			;992e
	and b			;992f
	and c			;9930
	and d			;9931
	and e			;9932
	jr nz,l9950h		;9933
	sub l			;9935
	sub (hl)		;9936
	sub a			;9937
	sbc a,b			;9938
	sbc a,c			;9939
	sbc a,d			;993a
	sbc a,c			;993b
	sbc a,e			;993c
	sbc a,e			;993d
	sbc a,h			;993e
	sbc a,h			;993f
	sbc a,l			;9940
	sbc a,(hl)		;9941
	sbc a,a			;9942
	inc e			;9943
	nop			;9944
	jr l9960h		;9945
	adc a,d			;9947
	adc a,e			;9948
	adc a,h			;9949
	adc a,l			;994a
	adc a,(hl)		;994b
	adc a,a			;994c
	sub b			;994d
	sub c			;994e
	sub c			;994f
l9950h:
	sub d			;9950
	sub e			;9951
	sub h			;9952
	ld a,(de)		;9953
	nop			;9954
	nop			;9955
	nop			;9956
	nop			;9957
	nop			;9958
	nop			;9959
	inc de			;995a
	inc d			;995b
	dec d			;995c
	add a,l			;995d
	add a,(hl)		;995e
	add a,a			;995f
l9960h:
	adc a,b			;9960
	adc a,c			;9961
	ld d,017h		;9962
	nop			;9964
	nop			;9965
	nop			;9966
	nop			;9967
	nop			;9968
	nop			;9969
	nop			;996a
	nop			;996b
	nop			;996c
	ld de,08382h		;996d
	add a,h			;9970
	ld (de),a		;9971
	nop			;9972
	nop			;9973
	ld c,080h		;9974
l9976h:
	add a,b			;9976
	cp (hl)			;9977
	or d			;9978
	set 0,(hl)		;9979
	cp l			;997b
	xor (hl)		;997c
	call z,0bccdh		;997d
	ld e,0a8h		;9980
	xor b			;9982
	cp e			;9983
	xor l			;9984
	add a,b			;9985
	add a,b			;9986
	cp a			;9987
	xor (hl)		;9988
	ret z			;9989
	ret			;998a
	ret nz			;998b
	nop			;998c
	jp z,0c1c2h		;998d
	xor a			;9990
	xor b			;9991
	xor b			;9992
	cp b			;9993
	xor h			;9994
	add a,b			;9995
	add a,b			;9996
	or l			;9997
	rrca			;9998
	rst 0			;9999
	add a,0b6h		;999a
	rra			;999c
	call z,0b7c5h		;999d
	or b			;99a0
	xor b			;99a1
	xor b			;99a2
	cp b			;99a3
	nop			;99a4
	nop			;99a5
	ld a,(bc)		;99a6
	ld a,(bc)		;99a7
	nop			;99a8
	nop			;99a9
	nop			;99aa
	nop			;99ab
	ld b,d			;99ac
	ld b,e			;99ad
	nop			;99ae
	nop			;99af
	nop			;99b0
	nop			;99b1
	nop			;99b2
	daa			;99b3
	jr z,l99dch		;99b4
	ld a,h			;99b6
	adc a,h			;99b7
	inc (hl)		;99b8
	ld (hl),035h		;99b9
	nop			;99bb
	nop			;99bc
	add hl,hl		;99bd
	ld a,l			;99be
	and d			;99bf
	and c			;99c0
	xor c			;99c1
	xor d			;99c2
	adc a,l			;99c3
	scf			;99c4
	nop			;99c5
	nop			;99c6
	ld a,(hl)		;99c7
	ld a,a			;99c8
	add a,b			;99c9
	and b			;99ca
	xor b			;99cb
	sub b			;99cc
	adc a,a			;99cd
	adc a,(hl)		;99ce
	nop			;99cf
	add a,c			;99d0
	add a,d			;99d1
	add a,e			;99d2
	and e			;99d3
	ld h,b			;99d4
	ld h,d			;99d5
	xor e			;99d6
	sub e			;99d7
	sub d			;99d8
	sub c			;99d9
	adc a,c			;99da
	adc a,d			;99db
l99dch:
	adc a,e			;99dc
	sbc a,a			;99dd
	ld h,c			;99de
	ld h,e			;99df
	and a			;99e0
	sbc a,e			;99e1
	sbc a,d			;99e2
	sbc a,c			;99e3
	nop			;99e4
	add a,(hl)		;99e5
	add a,a			;99e6
	adc a,b			;99e7
	sbc a,l			;99e8
	and l			;99e9
	sbc a,b			;99ea
	sub a			;99eb
	sub (hl)		;99ec
	nop			;99ed
	nop			;99ee
	jr nc,l9976h		;99ef
	sbc a,h			;99f1
	sbc a,(hl)		;99f2
	and (hl)		;99f3
	and h			;99f4
	sub l			;99f5
	ld a,000h		;99f6
	nop			;99f8
	ld l,02fh		;99f9
	dec l			;99fb
	add a,h			;99fc
	sub h			;99fd
	dec sp			;99fe
	dec a			;99ff
	inc a			;9a00
	nop			;9a01
	nop			;9a02
	nop			;9a03
	nop			;9a04
	nop			;9a05
	ld b,h			;9a06
	ld b,l			;9a07
	nop			;9a08
	nop			;9a09
	nop			;9a0a
	nop			;9a0b
	nop			;9a0c
	nop			;9a0d
	ld (bc),a		;9a0e
	inc b			;9a0f
	and e			;9a10
	ld l,b			;9a11
	ld (hl),d		;9a12
	xor e			;9a13
	sbc a,a			;9a14
	ld l,c			;9a15
	ld (hl),e		;9a16
	and a			;9a17
	nop			;9a18
	nop			;9a19
	ld (bc),a		;9a1a
	inc b			;9a1b
	ld l,d			;9a1c
	ld l,e			;9a1d
	ld (hl),l		;9a1e
	ld (hl),h		;9a1f
	ld l,h			;9a20
	ld l,l			;9a21
	ld (hl),a		;9a22
	halt			;9a23
	nop			;9a24
	nop			;9a25
	ld (bc),a		;9a26
	inc b			;9a27
	ld l,(hl)		;9a28
	ld l,a			;9a29
	ld a,c			;9a2a
	ld a,b			;9a2b
	ld (hl),b		;9a2c
	ld (hl),c		;9a2d
	ld a,e			;9a2e
	ld a,d			;9a2f
	nop			;9a30
	nop			;9a31
	ld (bc),a		;9a32
	ld (bc),a		;9a33
	set 1,d			;9a34
	call 000cch		;9a36
	nop			;9a39
	ld (bc),a		;9a3a
	ld (bc),a		;9a3b
	call nz,0c6c5h		;9a3c
	rst 0			;9a3f
	nop			;9a40
	nop			;9a41
	add hl,bc		;9a42
	ld (bc),a		;9a43
	cp a			;9a44
	ret nz			;9a45
	cp d			;9a46
	cp e			;9a47
	cp b			;9a48
	cp c			;9a49
	cp b			;9a4a
	cp c			;9a4b
	or d			;9a4c
	or e			;9a4d
	or h			;9a4e
	or l			;9a4f
	or h			;9a50
	or l			;9a51
	or (hl)			;9a52
	or a			;9a53
	cp b			;9a54
	cp c			;9a55
	nop			;9a56
	nop			;9a57
	rlca			;9a58
	ld (bc),a		;9a59
	cp b			;9a5a
	cp c			;9a5b
	or d			;9a5c
	or e			;9a5d
	or h			;9a5e
	or l			;9a5f
	or h			;9a60
	or l			;9a61
	or (hl)			;9a62
	or a			;9a63
	cp d			;9a64
	cp e			;9a65
	cp h			;9a66
	cp l			;9a67
	nop			;9a68
	nop			;9a69
	inc b			;9a6a
	inc b			;9a6b
	nop			;9a6c
	nop			;9a6d
	cp d			;9a6e
	cp e			;9a6f
	ld a,(0be91h)		;9a70
	nop			;9a73
	ld b,c			;9a74
	sbc a,c			;9a75
	pop bc			;9a76
	nop			;9a77
	nop			;9a78
	nop			;9a79
	cp d			;9a7a
	cp e			;9a7b
	nop			;9a7c
	nop			;9a7d
	inc b			;9a7e
	inc b			;9a7f
	cp d			;9a80
	cp e			;9a81
	nop			;9a82
	nop			;9a83
	nop			;9a84
	cp (hl)			;9a85
	add a,c			;9a86
	inc l			;9a87
	nop			;9a88
	pop bc			;9a89
	adc a,c			;9a8a
l9a8bh:
	inc sp			;9a8b
	cp d			;9a8c
	cp e			;9a8d
	nop			;9a8e
	nop			;9a8f
	nop			;9a90
	nop			;9a91
	add hl,bc		;9a92
	ld bc,0afaeh		;9a93
	or b			;9a96
	or b			;9a97
	or b			;9a98
l9a99h:
	or b			;9a99
	or c			;9a9a
	xor l			;9a9b
	xor (hl)		;9a9c
	nop			;9a9d
	nop			;9a9e
	add hl,bc		;9a9f
	ld (bc),a		;9aa0
	xor l			;9aa1
	nop			;9aa2
	xor (hl)		;9aa3
	nop			;9aa4
	xor a			;9aa5
	nop			;9aa6
	or b			;9aa7
	nop			;9aa8
	or c			;9aa9
	nop			;9aaa
	xor l			;9aab
	nop			;9aac
	xor (hl)		;9aad
	nop			;9aae
	xor h			;9aaf
	dec hl			;9ab0
	nop			;9ab1
	ccf			;9ab2
	nop			;9ab3
	nop			;9ab4
	add hl,bc		;9ab5
	ld (bc),a		;9ab6
	nop			;9ab7
	xor l			;9ab8
	nop			;9ab9
	xor (hl)		;9aba
	nop			;9abb
	xor a			;9abc
	nop			;9abd
	or b			;9abe
	nop			;9abf
	or c			;9ac0
	nop			;9ac1
	xor l			;9ac2
	nop			;9ac3
	xor (hl)		;9ac4
	add hl,sp		;9ac5
	xor h			;9ac6
	ld sp,00000h		;9ac7
	nop			;9aca
	dec bc			;9acb
	ld bc,0aeadh		;9acc
	xor a			;9acf
	or b			;9ad0
	or b			;9ad1
	or b			;9ad2
	or b			;9ad3
	or c			;9ad4
	xor l			;9ad5
	xor (hl)		;9ad6
	xor a			;9ad7
	nop			;9ad8
	nop			;9ad9
	dec bc			;9ada
	ld (bc),a		;9adb
	nop			;9adc
	jr c,l9a8bh		;9add
	ld (000adh),a		;9adf
	xor (hl)		;9ae2
	nop			;9ae3
	xor a			;9ae4
	nop			;9ae5
	or b			;9ae6
	nop			;9ae7
	or c			;9ae8
	nop			;9ae9
	xor l			;9aea
	nop			;9aeb
	xor (hl)		;9aec
	nop			;9aed
	xor a			;9aee
	nop			;9aef
	or c			;9af0
	nop			;9af1
	nop			;9af2
	nop			;9af3
	dec bc			;9af4
	ld (bc),a		;9af5
	ld hl,(04000h)		;9af6
	xor h			;9af9
	nop			;9afa
	xor l			;9afb
	nop			;9afc
	xor (hl)		;9afd
	nop			;9afe
	xor a			;9aff
	nop			;9b00
	or b			;9b01
	nop			;9b02
	or c			;9b03
	nop			;9b04
	xor l			;9b05
	nop			;9b06
	xor (hl)		;9b07
	nop			;9b08
	xor a			;9b09
	nop			;9b0a
	or c			;9b0b
	nop			;9b0c
	nop			;9b0d
	ld (bc),a		;9b0e
	ld (bc),a		;9b0f
	jp 0c2c9h		;9b10
	ret z			;9b13
	nop			;9b14
	nop			;9b15
	inc c			;9b16
	ld c,000h		;9b17
	push bc			;9b19
	ld b,017h		;9b1a
	dec e			;9b1c
	ld hl,03319h		;9b1d
	dec sp			;9b20
	scf			;9b21
	ld sp,0c506h		;9b22
	nop			;9b25
	ld b,003h		;9b26
	rlca			;9b28
	jr l9b45h		;9b29
	dec d			;9b2b
	inc hl			;9b2c
	dec a			;9b2d
	cpl			;9b2e
	inc (hl)		;9b2f
	ld (00307h),a		;9b30
	ld b,007h		;9b33
	inc b			;9b35
	ex af,af'		;9b36
	ld de,01610h		;9b37
	dec de			;9b3a
	dec (hl)		;9b3b
	jr nc,l9b68h		;9b3c
	dec hl			;9b3e
	ex af,af'		;9b3f
	inc b			;9b40
	rlca			;9b41
	ex af,af'		;9b42
	dec b			;9b43
	add hl,bc		;9b44
l9b45h:
	inc de			;9b45
	ld (de),a		;9b46
	inc d			;9b47
	inc e			;9b48
	ld (hl),02eh		;9b49
	inc l			;9b4b
	dec l			;9b4c
	add hl,bc		;9b4d
	dec b			;9b4e
	ex af,af'		;9b4f
	ld h,e			;9b50
	ld e,c			;9b51
	ld d,e			;9b52
	inc b			;9b53
	inc bc			;9b54
	ld (0461dh),hl		;9b55
	ld c,e			;9b58
	inc l			;9b59
	dec l			;9b5a
	ld d,e			;9b5b
	ld e,c			;9b5c
	ld h,e			;9b5d
	ld d,e			;9b5e
	ld e,d			;9b5f
	ld e,h			;9b60
	dec b			;9b61
	jr l9b87h		;9b62
	sub l			;9b64
	sub l			;9b65
	ld c,h			;9b66
	ld b,c			;9b67
l9b68h:
	ld l,05ch		;9b68
	ld e,d			;9b6a
	ld d,e			;9b6b
	ld e,a			;9b6c
	ld l,e			;9b6d
	dec h			;9b6e
	inc h			;9b6f
	rra			;9b70
	add a,c			;9b71
	add a,d			;9b72
	add a,d			;9b73
	add a,c			;9b74
	ld c,b			;9b75
	ld c,l			;9b76
	ld c,(hl)		;9b77
	ld e,a			;9b78
	ld l,e			;9b79
	ld l,b			;9b7a
	ld l,l			;9b7b
	ld d,01eh		;9b7c
	ld hl,01d5dh		;9b7e
	ld b,(hl)		;9b81
	ld e,l			;9b82
	ld c,d			;9b83
	ld b,a			;9b84
	ccf			;9b85
	ld l,b			;9b86
l9b87h:
	ld l,l			;9b87
	ld d,(hl)		;9b88
	ld d,a			;9b89
	adc a,d			;9b8a
	adc a,e			;9b8b
	inc d			;9b8c
	ld e,l			;9b8d
	dec e			;9b8e
	ld b,(hl)		;9b8f
	ld e,l			;9b90
	dec a			;9b91
	adc a,h			;9b92
	adc a,d			;9b93
	ld d,(hl)		;9b94
	ld d,a			;9b95
	nop			;9b96
	ld e,b			;9b97
	adc a,l			;9b98
	adc a,(hl)		;9b99
	adc a,a			;9b9a
	ld h,l			;9b9b
	ld l,h			;9b9c
	ld h,l			;9b9d
	ld l,h			;9b9e
	adc a,a			;9b9f
	adc a,(hl)		;9ba0
	adc a,l			;9ba1
	ld e,b			;9ba2
	nop			;9ba3
	nop			;9ba4
	ld e,b			;9ba5
	sub b			;9ba6
	sub c			;9ba7
	sub d			;9ba8
	ld (hl),l		;9ba9
	halt			;9baa
	ld (hl),l		;9bab
	halt			;9bac
	sub d			;9bad
	sub e			;9bae
	sub h			;9baf
	ld e,b			;9bb0
	nop			;9bb1
	nop			;9bb2
	ld e,b			;9bb3
	djnz l9bd6h		;9bb4
	ld (hl),d		;9bb6
	ld (hl),c		;9bb7
	ld (hl),c		;9bb8
	ld (hl),c		;9bb9
	ld (hl),c		;9bba
	ld (hl),d		;9bbb
	ld c,c			;9bbc
	add hl,sp		;9bbd
	ld e,b			;9bbe
	nop			;9bbf
	nop			;9bc0
	nop			;9bc1
	inc c			;9bc2
	djnz l9bc5h		;9bc3
l9bc5h:
	push bc			;9bc5
	ld b,017h		;9bc6
	dec e			;9bc8
	ld hl,00019h		;9bc9
	nop			;9bcc
	inc sp			;9bcd
	dec sp			;9bce
	scf			;9bcf
	ld sp,0c506h		;9bd0
	nop			;9bd3
	ld b,003h		;9bd4
l9bd6h:
	rlca			;9bd6
	jr l9bf3h		;9bd7
	dec d			;9bd9
	inc hl			;9bda
	nop			;9bdb
	nop			;9bdc
	dec a			;9bdd
	cpl			;9bde
	inc (hl)		;9bdf
	ld (00307h),a		;9be0
	ld b,007h		;9be3
	inc b			;9be5
	ex af,af'		;9be6
	ld de,01610h		;9be7
	dec de			;9bea
	nop			;9beb
	nop			;9bec
	dec (hl)		;9bed
	jr nc,l9c1ah		;9bee
	dec hl			;9bf0
	ex af,af'		;9bf1
	inc b			;9bf2
l9bf3h:
	rlca			;9bf3
	ex af,af'		;9bf4
	dec b			;9bf5
	add hl,bc		;9bf6
	inc de			;9bf7
	ld (de),a		;9bf8
	inc d			;9bf9
	inc e			;9bfa
	nop			;9bfb
	nop			;9bfc
	ld (hl),02eh		;9bfd
	inc l			;9bff
	dec l			;9c00
	add hl,bc		;9c01
	dec b			;9c02
	ex af,af'		;9c03
	ld h,e			;9c04
	ld e,c			;9c05
	ld d,e			;9c06
	inc b			;9c07
	inc bc			;9c08
	ld (0001dh),hl		;9c09
	nop			;9c0c
	ld b,(hl)		;9c0d
	ld c,e			;9c0e
	inc l			;9c0f
	dec l			;9c10
	ld d,e			;9c11
	ld e,c			;9c12
	ld h,e			;9c13
	ld d,e			;9c14
	ld e,d			;9c15
	ld e,h			;9c16
	dec b			;9c17
	jr l9c3dh		;9c18
l9c1ah:
	sub l			;9c1a
	add a,a			;9c1b
	add a,a			;9c1c
	sub l			;9c1d
	ld c,h			;9c1e
	ld b,c			;9c1f
	ld l,05ch		;9c20
	ld e,d			;9c22
	ld d,e			;9c23
	ld e,a			;9c24
	ld l,e			;9c25
	dec h			;9c26
	inc h			;9c27
	rra			;9c28
	add a,c			;9c29
	add a,d			;9c2a
	add a,(hl)		;9c2b
	add a,(hl)		;9c2c
	add a,d			;9c2d
	add a,c			;9c2e
	ld c,b			;9c2f
	ld c,l			;9c30
	ld c,(hl)		;9c31
	ld e,a			;9c32
	ld l,e			;9c33
	ld l,b			;9c34
	ld l,l			;9c35
	ld d,01eh		;9c36
	ld hl,01d5dh		;9c38
	nop			;9c3b
	nop			;9c3c
l9c3dh:
	ld b,(hl)		;9c3d
	ld e,l			;9c3e
	ld c,d			;9c3f
	ld b,a			;9c40
	ccf			;9c41
	ld l,b			;9c42
	ld l,l			;9c43
	ld d,(hl)		;9c44
	ld d,a			;9c45
	adc a,d			;9c46
	adc a,e			;9c47
	inc d			;9c48
	ld e,l			;9c49
	dec e			;9c4a
	nop			;9c4b
	nop			;9c4c
	ld b,(hl)		;9c4d
	ld e,l			;9c4e
	dec a			;9c4f
	adc a,h			;9c50
	adc a,d			;9c51
	ld d,(hl)		;9c52
	ld d,a			;9c53
	nop			;9c54
	ld e,b			;9c55
	adc a,l			;9c56
	adc a,(hl)		;9c57
	adc a,a			;9c58
	ld h,l			;9c59
	ld l,h			;9c5a
	add a,l			;9c5b
	add a,l			;9c5c
	ld h,l			;9c5d
	ld l,h			;9c5e
	adc a,a			;9c5f
	adc a,(hl)		;9c60
	adc a,l			;9c61
	ld e,b			;9c62
	nop			;9c63
	nop			;9c64
	ld e,b			;9c65
	sub b			;9c66
	sub c			;9c67
	sub d			;9c68
	ld (hl),l		;9c69
	halt			;9c6a
	adc a,b			;9c6b
	adc a,b			;9c6c
	ld (hl),l		;9c6d
	halt			;9c6e
	sub d			;9c6f
	sub e			;9c70
	sub h			;9c71
	ld e,b			;9c72
	nop			;9c73
	nop			;9c74
	ld e,b			;9c75
	djnz $+34		;9c76
	ld (hl),d		;9c78
	ld (hl),c		;9c79
	ld (hl),c		;9c7a
	ld (hl),c		;9c7b
	ld (hl),c		;9c7c
	ld (hl),c		;9c7d
	ld (hl),c		;9c7e
	ld (hl),d		;9c7f
	ld c,c			;9c80
	add hl,sp		;9c81
	ld e,b			;9c82
	nop			;9c83
	nop			;9c84
	nop			;9c85
	inc c			;9c86
	ld (de),a		;9c87
	nop			;9c88
	push bc			;9c89
	ld b,017h		;9c8a
	dec e			;9c8c
	ld hl,00019h		;9c8d
	nop			;9c90
	nop			;9c91
	nop			;9c92
	inc sp			;9c93
	dec sp			;9c94
	scf			;9c95
	ld sp,0c506h		;9c96
l9c99h:
	nop			;9c99
	ld b,003h		;9c9a
	rlca			;9c9c
	jr $+28			;9c9d
	dec d			;9c9f
	inc hl			;9ca0
	nop			;9ca1
	nop			;9ca2
	nop			;9ca3
	nop			;9ca4
	dec a			;9ca5
	cpl			;9ca6
	inc (hl)		;9ca7
	ld (00307h),a		;9ca8
	ld b,007h		;9cab
	inc b			;9cad
	ex af,af'		;9cae
	ld de,01610h		;9caf
	dec de			;9cb2
	nop			;9cb3
	nop			;9cb4
	nop			;9cb5
	nop			;9cb6
	dec (hl)		;9cb7
	jr nc,l9ce4h		;9cb8
	dec hl			;9cba
	ex af,af'		;9cbb
	inc b			;9cbc
	rlca			;9cbd
	ex af,af'		;9cbe
	dec b			;9cbf
	add hl,bc		;9cc0
	inc de			;9cc1
	ld (de),a		;9cc2
	inc d			;9cc3
	inc e			;9cc4
	nop			;9cc5
	nop			;9cc6
	nop			;9cc7
	nop			;9cc8
	ld (hl),02eh		;9cc9
	inc l			;9ccb
	dec l			;9ccc
	add hl,bc		;9ccd
	dec b			;9cce
	ex af,af'		;9ccf
	ld h,e			;9cd0
	ld e,c			;9cd1
	ld d,e			;9cd2
	inc b			;9cd3
	inc bc			;9cd4
	ld (0001dh),hl		;9cd5
	nop			;9cd8
	nop			;9cd9
	nop			;9cda
	ld b,(hl)		;9cdb
	ld c,e			;9cdc
	inc l			;9cdd
	dec l			;9cde
	ld d,e			;9cdf
	ld e,c			;9ce0
	ld h,e			;9ce1
	ld d,e			;9ce2
	ld e,d			;9ce3
l9ce4h:
	ld e,h			;9ce4
	dec b			;9ce5
	jr $+37			;9ce6
	sub l			;9ce8
	add a,a			;9ce9
	add a,a			;9cea
	add a,a			;9ceb
	add a,a			;9cec
	sub l			;9ced
	ld c,h			;9cee
	ld b,c			;9cef
	ld l,05ch		;9cf0
	ld e,d			;9cf2
	ld d,e			;9cf3
	ld e,a			;9cf4
	ld l,e			;9cf5
	dec h			;9cf6
	inc h			;9cf7
	rra			;9cf8
	add a,c			;9cf9
	add a,d			;9cfa
	add a,(hl)		;9cfb
	add a,(hl)		;9cfc
	add a,(hl)		;9cfd
	add a,(hl)		;9cfe
	add a,d			;9cff
	add a,c			;9d00
	ld c,b			;9d01
	ld c,l			;9d02
	ld c,(hl)		;9d03
	ld e,a			;9d04
	ld l,e			;9d05
	ld l,b			;9d06
	ld l,l			;9d07
	ld d,01eh		;9d08
	ld hl,01d5dh		;9d0a
	nop			;9d0d
	nop			;9d0e
	nop			;9d0f
	nop			;9d10
	ld b,(hl)		;9d11
	ld e,l			;9d12
	ld c,d			;9d13
	ld b,a			;9d14
	ccf			;9d15
	ld l,b			;9d16
	ld l,l			;9d17
	ld d,(hl)		;9d18
	ld d,a			;9d19
	adc a,d			;9d1a
	adc a,e			;9d1b
	inc d			;9d1c
	ld e,l			;9d1d
	dec e			;9d1e
	nop			;9d1f
	nop			;9d20
	nop			;9d21
	nop			;9d22
	ld b,(hl)		;9d23
	ld e,l			;9d24
	dec a			;9d25
	adc a,h			;9d26
	adc a,d			;9d27
	ld d,(hl)		;9d28
	ld d,a			;9d29
	nop			;9d2a
	ld e,b			;9d2b
	adc a,l			;9d2c
	adc a,(hl)		;9d2d
	adc a,a			;9d2e
	ld h,l			;9d2f
	ld l,h			;9d30
	add a,l			;9d31
	add a,l			;9d32
	add a,l			;9d33
	add a,l			;9d34
	ld h,l			;9d35
	ld l,h			;9d36
	adc a,a			;9d37
	adc a,(hl)		;9d38
	adc a,l			;9d39
	ld e,b			;9d3a
	nop			;9d3b
	nop			;9d3c
	ld e,b			;9d3d
	sub b			;9d3e
	sub c			;9d3f
	sub d			;9d40
	ld (hl),l		;9d41
	halt			;9d42
	adc a,b			;9d43
	adc a,b			;9d44
	adc a,b			;9d45
	adc a,b			;9d46
	ld (hl),l		;9d47
	halt			;9d48
	sub d			;9d49
	sub e			;9d4a
	sub h			;9d4b
	ld e,b			;9d4c
	nop			;9d4d
	nop			;9d4e
	ld e,b			;9d4f
	djnz l9d72h		;9d50
	ld (hl),d		;9d52
	ld (hl),c		;9d53
	ld (hl),c		;9d54
	ld (hl),c		;9d55
	ld (hl),c		;9d56
	ld (hl),c		;9d57
	ld (hl),c		;9d58
	ld (hl),c		;9d59
	ld (hl),c		;9d5a
	ld (hl),d		;9d5b
	ld c,c			;9d5c
	add hl,sp		;9d5d
	ld e,b			;9d5e
	nop			;9d5f
	nop			;9d60
	nop			;9d61
	dec c			;9d62
	ld b,000h		;9d63
	add a,0c7h		;9d65
	ret			;9d67
	ret z			;9d68
	nop			;9d69
	cp h			;9d6a
	jp z,0cdcch		;9d6b
	set 0,e			;9d6e
	cp l			;9d70
	dec bc			;9d71
l9d72h:
	dec c			;9d72
	daa			;9d73
	dec h			;9d74
	call nz,00c00h		;9d75
	ld c,028h		;9d78
	ld h,000h		;9d7a
	nop			;9d7c
	sub a			;9d7d
	sbc a,b			;9d7e
	sbc a,c			;9d7f
	sbc a,d			;9d80
	nop			;9d81
	nop			;9d82
	and a			;9d83
	xor b			;9d84
	xor c			;9d85
	xor d			;9d86
	nop			;9d87
	nop			;9d88
	sub a			;9d89
	sbc a,b			;9d8a
	sbc a,c			;9d8b
	sbc a,d			;9d8c
	nop			;9d8d
	nop			;9d8e
	and a			;9d8f
	xor b			;9d90
	xor c			;9d91
	xor d			;9d92
	nop			;9d93
	nop			;9d94
	sub a			;9d95
	sbc a,b			;9d96
	sbc a,c			;9d97
	sbc a,d			;9d98
	nop			;9d99
	nop			;9d9a
	and a			;9d9b
	xor b			;9d9c
	xor c			;9d9d
	xor d			;9d9e
	nop			;9d9f
	nop			;9da0
	sub a			;9da1
	sbc a,b			;9da2
	sbc a,c			;9da3
	sbc a,d			;9da4
	nop			;9da5
	nop			;9da6
	and a			;9da7
	xor b			;9da8
	xor c			;9da9
	xor d			;9daa
	nop			;9dab
	nop			;9dac
	sub a			;9dad
	sbc a,b			;9dae
	sbc a,c			;9daf
	sbc a,d			;9db0
	nop			;9db1
	nop			;9db2
	nop			;9db3
	dec c			;9db4
	ld b,000h		;9db5
	add a,0c7h		;9db7
	ret			;9db9
	ret z			;9dba
	nop			;9dbb
	cp h			;9dbc
	jp z,0cdcch		;9dbd
	set 0,e			;9dc0
	cp l			;9dc2
	dec bc			;9dc3
	dec c			;9dc4
	daa			;9dc5
	dec h			;9dc6
	call nz,00c00h		;9dc7
	ld c,028h		;9dca
	ld h,000h		;9dcc
	nop			;9dce
	sbc a,e			;9dcf
	sbc a,h			;9dd0
	sbc a,l			;9dd1
	sbc a,(hl)		;9dd2
	nop			;9dd3
	nop			;9dd4
	xor e			;9dd5
	xor h			;9dd6
	xor l			;9dd7
	xor (hl)		;9dd8
	nop			;9dd9
	nop			;9dda
	sbc a,e			;9ddb
	sbc a,h			;9ddc
	sbc a,l			;9ddd
	sbc a,(hl)		;9dde
	nop			;9ddf
	nop			;9de0
	xor e			;9de1
	xor h			;9de2
	xor l			;9de3
	xor (hl)		;9de4
	nop			;9de5
	nop			;9de6
	sbc a,e			;9de7
	sbc a,h			;9de8
	sbc a,l			;9de9
	sbc a,(hl)		;9dea
	nop			;9deb
	nop			;9dec
	xor e			;9ded
	xor h			;9dee
	xor l			;9def
	xor (hl)		;9df0
	nop			;9df1
	nop			;9df2
	sbc a,e			;9df3
	sbc a,h			;9df4
	sbc a,l			;9df5
	sbc a,(hl)		;9df6
	nop			;9df7
	nop			;9df8
	xor e			;9df9
	xor h			;9dfa
	xor l			;9dfb
	xor (hl)		;9dfc
	nop			;9dfd
	nop			;9dfe
	sbc a,e			;9dff
	sbc a,h			;9e00
	sbc a,l			;9e01
	sbc a,(hl)		;9e02
	nop			;9e03
	nop			;9e04
	nop			;9e05
	dec c			;9e06
	ld b,000h		;9e07
	add a,0c7h		;9e09
	ret			;9e0b
	ret z			;9e0c
	nop			;9e0d
	cp h			;9e0e
	jp z,0cdcch		;9e0f
	set 0,e			;9e12
	cp l			;9e14
	dec bc			;9e15
	dec c			;9e16
	daa			;9e17
	dec h			;9e18
	call nz,00c00h		;9e19
	ld c,028h		;9e1c
	ld h,000h		;9e1e
	nop			;9e20
	sbc a,a			;9e21
	and b			;9e22
	and c			;9e23
	and d			;9e24
	nop			;9e25
	nop			;9e26
	xor a			;9e27
	or b			;9e28
	or c			;9e29
	or d			;9e2a
	nop			;9e2b
	nop			;9e2c
	sbc a,a			;9e2d
	and b			;9e2e
	and c			;9e2f
	and d			;9e30
	nop			;9e31
	nop			;9e32
	xor a			;9e33
	or b			;9e34
	or c			;9e35
	or d			;9e36
	nop			;9e37
	nop			;9e38
	sbc a,a			;9e39
	and b			;9e3a
	and c			;9e3b
	and d			;9e3c
	nop			;9e3d
	nop			;9e3e
	xor a			;9e3f
	or b			;9e40
	or c			;9e41
	or d			;9e42
	nop			;9e43
	nop			;9e44
	sbc a,a			;9e45
	and b			;9e46
	and c			;9e47
	and d			;9e48
	nop			;9e49
	nop			;9e4a
	xor a			;9e4b
	or b			;9e4c
	or c			;9e4d
	or d			;9e4e
	nop			;9e4f
	nop			;9e50
	sbc a,a			;9e51
	and b			;9e52
	and c			;9e53
	and d			;9e54
	nop			;9e55
	nop			;9e56
	nop			;9e57
	dec c			;9e58
	ld b,000h		;9e59
	add a,0c7h		;9e5b
	ret			;9e5d
	ret z			;9e5e
	nop			;9e5f
	cp h			;9e60
	jp z,0cdcch		;9e61
	set 0,e			;9e64
	cp l			;9e66
	dec bc			;9e67
	dec c			;9e68
	daa			;9e69
	dec h			;9e6a
	call nz,00c00h		;9e6b
	ld c,028h		;9e6e
	ld h,000h		;9e70
	nop			;9e72
	and e			;9e73
	and h			;9e74
	and l			;9e75
	and (hl)		;9e76
	nop			;9e77
	nop			;9e78
	or e			;9e79
	or h			;9e7a
	or l			;9e7b
	or (hl)			;9e7c
	nop			;9e7d
	nop			;9e7e
	and e			;9e7f
	and h			;9e80
	and l			;9e81
	and (hl)		;9e82
	nop			;9e83
	nop			;9e84
	or e			;9e85
	or h			;9e86
	or l			;9e87
	or (hl)			;9e88
	nop			;9e89
	nop			;9e8a
	and e			;9e8b
	and h			;9e8c
	and l			;9e8d
	and (hl)		;9e8e
	nop			;9e8f
	nop			;9e90
	or e			;9e91
	or h			;9e92
	or l			;9e93
	or (hl)			;9e94
	nop			;9e95
	nop			;9e96
	and e			;9e97
	and h			;9e98
	and l			;9e99
	and (hl)		;9e9a
	nop			;9e9b
	nop			;9e9c
	or e			;9e9d
	or h			;9e9e
	or l			;9e9f
	or (hl)			;9ea0
	nop			;9ea1
	nop			;9ea2
	and e			;9ea3
	and h			;9ea4
	and l			;9ea5
	and (hl)		;9ea6
	nop			;9ea7
	nop			;9ea8
	nop			;9ea9
	dec c			;9eaa
	ld b,000h		;9eab
	add a,0c7h		;9ead
	ret			;9eaf
	ret z			;9eb0
	nop			;9eb1
	cp h			;9eb2
	jp z,0cdcch		;9eb3
	set 0,e			;9eb6
	cp l			;9eb8
	dec bc			;9eb9
	dec c			;9eba
	daa			;9ebb
	dec h			;9ebc
	call nz,00c00h		;9ebd
	ld c,028h		;9ec0
	ld h,000h		;9ec2
	nop			;9ec4
	and a			;9ec5
	xor b			;9ec6
	xor c			;9ec7
	xor d			;9ec8
	nop			;9ec9
	nop			;9eca
	sub a			;9ecb
	sbc a,b			;9ecc
	sbc a,c			;9ecd
	sbc a,d			;9ece
	nop			;9ecf
	nop			;9ed0
	and a			;9ed1
	xor b			;9ed2
	xor c			;9ed3
	xor d			;9ed4
	nop			;9ed5
	nop			;9ed6
	sub a			;9ed7
	sbc a,b			;9ed8
	sbc a,c			;9ed9
	sbc a,d			;9eda
	nop			;9edb
	nop			;9edc
	and a			;9edd
	xor b			;9ede
	xor c			;9edf
	xor d			;9ee0
	nop			;9ee1
	nop			;9ee2
	sub a			;9ee3
	sbc a,b			;9ee4
	sbc a,c			;9ee5
	sbc a,d			;9ee6
	nop			;9ee7
	nop			;9ee8
	and a			;9ee9
	xor b			;9eea
	xor c			;9eeb
	xor d			;9eec
	nop			;9eed
	nop			;9eee
	sub a			;9eef
	sbc a,b			;9ef0
	sbc a,c			;9ef1
	sbc a,d			;9ef2
	nop			;9ef3
	nop			;9ef4
	and a			;9ef5
	xor b			;9ef6
	xor c			;9ef7
	xor d			;9ef8
	nop			;9ef9
	nop			;9efa
	nop			;9efb
	dec c			;9efc
	ld b,000h		;9efd
	add a,0c7h		;9eff
	ret			;9f01
	ret z			;9f02
	nop			;9f03
	cp h			;9f04
	jp z,0cdcch		;9f05
	set 0,e			;9f08
	cp l			;9f0a
	dec bc			;9f0b
	dec c			;9f0c
	daa			;9f0d
	dec h			;9f0e
	call nz,00c00h		;9f0f
	ld c,028h		;9f12
	ld h,000h		;9f14
	nop			;9f16
	xor e			;9f17
	xor h			;9f18
	xor l			;9f19
	xor (hl)		;9f1a
	nop			;9f1b
	nop			;9f1c
	sbc a,e			;9f1d
	sbc a,h			;9f1e
	sbc a,l			;9f1f
	sbc a,(hl)		;9f20
	nop			;9f21
	nop			;9f22
	xor e			;9f23
	xor h			;9f24
	xor l			;9f25
	xor (hl)		;9f26
	nop			;9f27
	nop			;9f28
	sbc a,e			;9f29
	sbc a,h			;9f2a
	sbc a,l			;9f2b
	sbc a,(hl)		;9f2c
	nop			;9f2d
	nop			;9f2e
	xor e			;9f2f
	xor h			;9f30
	xor l			;9f31
	xor (hl)		;9f32
	nop			;9f33
	nop			;9f34
	sbc a,e			;9f35
	sbc a,h			;9f36
	sbc a,l			;9f37
	sbc a,(hl)		;9f38
	nop			;9f39
	nop			;9f3a
	xor e			;9f3b
	xor h			;9f3c
	xor l			;9f3d
	xor (hl)		;9f3e
	nop			;9f3f
	nop			;9f40
	sbc a,e			;9f41
	sbc a,h			;9f42
	sbc a,l			;9f43
	sbc a,(hl)		;9f44
	nop			;9f45
	nop			;9f46
	xor e			;9f47
	xor h			;9f48
	xor l			;9f49
	xor (hl)		;9f4a
	nop			;9f4b
	nop			;9f4c
	nop			;9f4d
	dec c			;9f4e
	ld b,000h		;9f4f
	add a,0c7h		;9f51
	ret			;9f53
	ret z			;9f54
	nop			;9f55
	cp h			;9f56
	jp z,0cdcch		;9f57
	set 0,e			;9f5a
	cp l			;9f5c
	dec bc			;9f5d
	dec c			;9f5e
	daa			;9f5f
	dec h			;9f60
	call nz,00c00h		;9f61
	ld c,028h		;9f64
	ld h,000h		;9f66
	nop			;9f68
	xor a			;9f69
	or b			;9f6a
	or c			;9f6b
	or d			;9f6c
	nop			;9f6d
	nop			;9f6e
	sbc a,a			;9f6f
	and b			;9f70
	and c			;9f71
	and d			;9f72
	nop			;9f73
	nop			;9f74
	xor a			;9f75
	or b			;9f76
	or c			;9f77
	or d			;9f78
	nop			;9f79
	nop			;9f7a
	sbc a,a			;9f7b
	and b			;9f7c
	and c			;9f7d
	and d			;9f7e
	nop			;9f7f
	nop			;9f80
	xor a			;9f81
	or b			;9f82
	or c			;9f83
	or d			;9f84
	nop			;9f85
	nop			;9f86
	sbc a,a			;9f87
	and b			;9f88
	and c			;9f89
	and d			;9f8a
	nop			;9f8b
	nop			;9f8c
	xor a			;9f8d
	or b			;9f8e
	or c			;9f8f
	or d			;9f90
	nop			;9f91
	nop			;9f92
	sbc a,a			;9f93
	and b			;9f94
	and c			;9f95
	and d			;9f96
	nop			;9f97
	nop			;9f98
	xor a			;9f99
	or b			;9f9a
	or c			;9f9b
	or d			;9f9c
	nop			;9f9d
	nop			;9f9e
	nop			;9f9f
	dec c			;9fa0
	ld b,000h		;9fa1
	add a,0c7h		;9fa3
	ret			;9fa5
	ret z			;9fa6
	nop			;9fa7
	cp h			;9fa8
	jp z,0cdcch		;9fa9
	set 0,e			;9fac
	cp l			;9fae
	dec bc			;9faf
	dec c			;9fb0
	daa			;9fb1
	dec h			;9fb2
	call nz,00c00h		;9fb3
	ld c,028h		;9fb6
	ld h,000h		;9fb8
	nop			;9fba
	or e			;9fbb
	or h			;9fbc
	or l			;9fbd
	or (hl)			;9fbe
	nop			;9fbf
	nop			;9fc0
	and e			;9fc1
	and h			;9fc2
	and l			;9fc3
	and (hl)		;9fc4
	nop			;9fc5
	nop			;9fc6
	or e			;9fc7
	or h			;9fc8
	or l			;9fc9
	or (hl)			;9fca
	nop			;9fcb
	nop			;9fcc
	and e			;9fcd
	and h			;9fce
	and l			;9fcf
	and (hl)		;9fd0
	nop			;9fd1
	nop			;9fd2
	or e			;9fd3
	or h			;9fd4
	or l			;9fd5
	or (hl)			;9fd6
	nop			;9fd7
	nop			;9fd8
	and e			;9fd9
	and h			;9fda
	and l			;9fdb
	and (hl)		;9fdc
	nop			;9fdd
	nop			;9fde
	or e			;9fdf
	or h			;9fe0
	or l			;9fe1
	or (hl)			;9fe2
	nop			;9fe3
	nop			;9fe4
	and e			;9fe5
	and h			;9fe6
	and l			;9fe7
	and (hl)		;9fe8
	nop			;9fe9
	nop			;9fea
	or e			;9feb
	or h			;9fec
	or l			;9fed
	or (hl)			;9fee
	nop			;9fef
	nop			;9ff0
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
