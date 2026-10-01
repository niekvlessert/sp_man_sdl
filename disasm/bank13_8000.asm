; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank13_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank13.bin

	org 08000h

	ld c,0eeh		;8000
	nop			;8002
	nop			;8003
	nop			;8004
	nop			;8005
	ret po			;8006
	nop			;8007
	nop			;8008
	nop			;8009
	ld c,000h		;800a
	nop			;800c
	nop			;800d
	nop			;800e
	ret po			;800f
	nop			;8010
	nop			;8011
	nop			;8012
	xor 000h		;8013
	nop			;8015
	nop			;8016
	ld c,0e0h		;8017
	nop			;8019
	nop			;801a
	nop			;801b
	nop			;801c
	nop			;801d
	nop			;801e
	nop			;801f
	nop			;8020
	ld c,0e0h		;8021
	nop			;8023
	nop			;8024
	nop			;8025
	nop			;8026
	nop			;8027
	nop			;8028
	nop			;8029
	nop			;802a
	nop			;802b
	ld c,000h		;802c
	nop			;802e
	nop			;802f
	nop			;8030
	ld c,000h		;8031
	nop			;8033
	nop			;8034
	ld c,000h		;8035
	nop			;8037
	nop			;8038
	nop			;8039
	nop			;803a
	nop			;803b
	nop			;803c
	nop			;803d
	rst 38h			;803e
	nop			;803f
	nop			;8040
	nop			;8041
	nop			;8042
	nop			;8043
	nop			;8044
	nop			;8045
	nop			;8046
	nop			;8047
	nop			;8048
	nop			;8049
	nop			;804a
	nop			;804b
	nop			;804c
	nop			;804d
	nop			;804e
	nop			;804f
	nop			;8050
	nop			;8051
	nop			;8052
	nop			;8053
	nop			;8054
	nop			;8055
	nop			;8056
	nop			;8057
	nop			;8058
	rrca			;8059
	nop			;805a
	nop			;805b
	rrca			;805c
	pop af			;805d
	nop			;805e
	nop			;805f
	pop af			;8060
	ld de,00000h		;8061
	nop			;8064
	nop			;8065
	nop			;8066
	nop			;8067
	nop			;8068
	nop			;8069
	nop			;806a
	nop			;806b
	nop			;806c
	nop			;806d
	nop			;806e
	nop			;806f
	rst 38h			;8070
	rst 38h			;8071
	rrca			;8072
	rst 38h			;8073
	xor 0efh		;8074
	cp 0eeh			;8076
	rra			;8078
	rst 38h			;8079
	pop hl			;807a
	rst 38h			;807b
	rst 38h			;807c
	xor 0ffh		;807d
	pop hl			;807f
	cp 0eeh			;8080
	nop			;8082
	nop			;8083
	nop			;8084
	nop			;8085
	nop			;8086
	nop			;8087
	nop			;8088
	nop			;8089
	nop			;808a
	nop			;808b
	nop			;808c
	nop			;808d
	rst 38h			;808e
	rst 38h			;808f
	ret p			;8090
	nop			;8091
	ld c,a			;8092
	xor 0efh		;8093
	rst 38h			;8095
	rst 38h			;8096
	rst 38h			;8097
	ld e,0eeh		;8098
	xor 0efh		;809a
	rst 38h			;809c
	pop af			;809d
	xor 0eeh		;809e
	pop af			;80a0
	rst 28h			;80a1
	nop			;80a2
	nop			;80a3
	nop			;80a4
	nop			;80a5
	nop			;80a6
	nop			;80a7
	nop			;80a8
	nop			;80a9
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
	nop			;80b5
	rst 38h			;80b6
	nop			;80b7
	nop			;80b8
	nop			;80b9
	pop hl			;80ba
	rst 38h			;80bb
	nop			;80bc
	nop			;80bd
	pop af			;80be
	ld de,000f0h		;80bf
	nop			;80c2
	nop			;80c3
	nop			;80c4
	nop			;80c5
	nop			;80c6
	nop			;80c7
	nop			;80c8
	nop			;80c9
	nop			;80ca
	nop			;80cb
	nop			;80cc
	nop			;80cd
	nop			;80ce
	nop			;80cf
	nop			;80d0
	nop			;80d1
	nop			;80d2
	nop			;80d3
	rrca			;80d4
	rst 38h			;80d5
	nop			;80d6
	nop			;80d7
	call p,00044h		;80d8
	rrca			;80db
	ld b,h			;80dc
	ccf			;80dd
	nop			;80de
	rst 38h			;80df
	ld b,e			;80e0
	ccf			;80e1
	nop			;80e2
	rrca			;80e3
	ld de,000ffh		;80e4
	pop af			;80e7
	rra			;80e8
	xor 00fh		;80e9
	ld de,0e1feh		;80eb
	rrca			;80ee
	rra			;80ef
	ld e,018h		;80f0
	pop af			;80f2
	pop af			;80f3
	pop hl			;80f4
	adc a,a			;80f5
	ret m			;80f6
	pop af			;80f7
	jr $+1			;80f8
	adc a,a			;80fa
	ld de,0ff8fh		;80fb
	adc a,a			;80fe
	jr $+1			;80ff
	sbc a,a			;8101
	xor 0e1h		;8102
	cp 0eeh			;8104
	pop hl			;8106
	rra			;8107
	ld de,018eeh		;8108
	adc a,a			;810b
	ld de,l8f11h		;810c
	rst 38h			;810f
	adc a,b			;8110
l8111h:
	ld de,0ffffh		;8111
	rst 38h			;8114
	adc a,b			;8115
	rst 38h			;8116
	sbc a,c			;8117
l8118h:
	sbc a,d			;8118
	rst 38h			;8119
	sbc a,c			;811a
	xor d			;811b
	xor d			;811c
	xor d			;811d
	rst 38h			;811e
	rst 38h			;811f
	rst 38h			;8120
	jp m,0eeeeh		;8121
	pop af			;8124
	xor 0eeh		;8125
	pop hl			;8127
	rra			;8128
	ld de,01111h		;8129
	rra			;812c
	adc a,b			;812d
	ld de,l8f18h		;812e
	rst 38h			;8131
	adc a,b			;8132
	adc a,a			;8133
	rst 38h			;8134
	rst 38h			;8135
	rst 38h			;8136
	jp m,l9fa9h		;8137
	xor d			;813a
	xor d			;813b
	xor d			;813c
	xor c			;813d
	xor d			;813e
	rst 38h			;813f
	rst 38h			;8140
	rst 38h			;8141
	rst 28h			;8142
	pop af			;8143
	rra			;8144
	nop			;8145
	xor 0efh		;8146
	ld de,011f0h		;8148
	xor 0f1h		;814b
	rra			;814d
	adc a,b			;814e
	ld e,01fh		;814f
	rra			;8151
	rst 38h			;8152
	add a,c			;8153
	pop hl			;8154
	pop af			;8155
	rst 38h			;8156
	ret m			;8157
	ld de,l9ff8h		;8158
	rst 38h			;815b
	add a,c			;815c
	rra			;815d
	rst 38h			;815e
	sbc a,a			;815f
	ret m			;8160
	rra			;8161
	nop			;8162
	nop			;8163
	nop			;8164
	nop			;8165
	nop			;8166
	nop			;8167
	nop			;8168
	nop			;8169
	nop			;816a
	nop			;816b
	nop			;816c
	nop			;816d
	nop			;816e
	nop			;816f
	nop			;8170
	nop			;8171
	rst 38h			;8172
	rst 38h			;8173
	nop			;8174
	nop			;8175
	call p,0f044h		;8176
	nop			;8179
	adc a,a			;817a
	inc (hl)		;817b
	ld c,a			;817c
	nop			;817d
	adc a,a			;817e
	inc sp			;817f
	ld c,a			;8180
	ret p			;8181
	nop			;8182
	nop			;8183
	nop			;8184
	nop			;8185
	nop			;8186
	nop			;8187
l8188h:
	nop			;8188
	nop			;8189
	nop			;818a
	nop			;818b
	nop			;818c
	nop			;818d
	nop			;818e
l818fh:
	nop			;818f
	nop			;8190
	nop			;8191
	nop			;8192
	nop			;8193
	nop			;8194
	nop			;8195
	nop			;8196
	nop			;8197
	nop			;8198
	nop			;8199
	nop			;819a
	nop			;819b
	nop			;819c
	rrca			;819d
	nop			;819e
	nop			;819f
	nop			;81a0
	pop af			;81a1
	nop			;81a2
	nop			;81a3
	nop			;81a4
	nop			;81a5
	nop			;81a6
	nop			;81a7
	nop			;81a8
	nop			;81a9
	nop			;81aa
	nop			;81ab
	nop			;81ac
	nop			;81ad
	nop			;81ae
	nop			;81af
	nop			;81b0
	nop			;81b1
	nop			;81b2
	nop			;81b3
	nop			;81b4
	rrca			;81b5
	rst 38h			;81b6
	rst 38h			;81b7
	rst 38h			;81b8
	rst 38h			;81b9
	ld e,0e1h		;81ba
	pop hl			;81bc
	rst 38h			;81bd
	rst 38h			;81be
	rst 38h			;81bf
	rst 38h			;81c0
	rst 38h			;81c1
	nop			;81c2
	rst 38h			;81c3
	ld b,e			;81c4
	ret m			;81c5
	nop			;81c6
	rst 38h			;81c7
	inc sp			;81c8
	rst 38h			;81c9
	nop			;81ca
	rst 38h			;81cb
	ccf			;81cc
	rst 28h			;81cd
	rst 38h			;81ce
	di			;81cf
	ccf			;81d0
	rst 28h			;81d1
	rra			;81d2
	di			;81d3
	cp 0efh			;81d4
	adc a,a			;81d6
	di			;81d7
	cp 0efh			;81d8
	adc a,a			;81da
	di			;81db
	cp 0e1h			;81dc
	adc a,a			;81de
	di			;81df
	cp 0e1h			;81e0
	pop af			;81e2
	rra			;81e3
	rst 38h			;81e4
	rst 38h			;81e5
	pop af			;81e6
	adc a,a			;81e7
	sbc a,a			;81e8
l81e9h:
	ld sp,hl		;81e9
	jr $+1			;81ea
	rst 38h			;81ec
	sbc a,c			;81ed
	jr l81e9h		;81ee
	rst 38h			;81f0
	sbc a,a			;81f1
	adc a,b			;81f2
	rst 38h			;81f3
	rst 38h			;81f4
	rst 38h			;81f5
	rst 38h			;81f6
	jp m,0faffh		;81f7
	pop af			;81fa
	rst 38h			;81fb
	rst 38h			;81fc
	xor d			;81fd
	ret m			;81fe
	jp m,0aaafh		;81ff
	ld sp,hl		;8202
	sbc a,c			;8203
	rst 38h			;8204
	rst 38h			;8205
	sbc a,c			;8206
	sbc a,c			;8207
	sbc a,c			;8208
	rst 38h			;8209
	sbc a,c			;820a
	sbc a,c			;820b
	rst 38h			;820c
	jp m,0ffffh		;820d
	jp m,0aaaah		;8210
	xor d			;8213
	xor d			;8214
	xor a			;8215
	xor d			;8216
	xor d			;8217
	xor d			;8218
	rst 38h			;8219
	xor d			;821a
	xor d			;821b
	xor d			;821c
	sbc a,c			;821d
	xor d			;821e
	xor d			;821f
	xor d			;8220
	xor d			;8221
	xor a			;8222
	rst 38h			;8223
	ld sp,hl		;8224
	sbc a,c			;8225
	xor a			;8226
	ld sp,hl		;8227
	sbc a,c			;8228
	sbc a,c			;8229
	xor d			;822a
	rst 38h			;822b
	ld sp,hl		;822c
	sbc a,c			;822d
	xor d			;822e
	xor d			;822f
	rst 38h			;8230
	rst 38h			;8231
	sbc a,a			;8232
	xor d			;8233
	xor d			;8234
	xor d			;8235
	sbc a,a			;8236
	jp m,0aaaah		;8237
	sbc a,c			;823a
	sbc a,d			;823b
	xor d			;823c
	xor d			;823d
	xor d			;823e
	xor d			;823f
	xor d			;8240
	xor d			;8241
	rst 38h			;8242
	rst 38h			;8243
	rst 38h			;8244
	ld de,0ff99h		;8245
	sbc a,a			;8248
	add a,c			;8249
	sbc a,c			;824a
	sbc a,a			;824b
	rst 38h			;824c
	ret m			;824d
	rst 38h			;824e
	sbc a,a			;824f
	ld sp,hl		;8250
	ret m			;8251
	xor a			;8252
	rst 38h			;8253
	rst 38h			;8254
	ret m			;8255
	xor d			;8256
	rst 38h			;8257
	jp m,0aaffh		;8258
	xor a			;825b
	rst 38h			;825c
	pop af			;825d
	xor d			;825e
	xor a			;825f
	xor d			;8260
	ret m			;8261
	ret m			;8262
	di			;8263
	ld c,a			;8264
	ret p			;8265
	rst 38h			;8266
	di			;8267
	ccf			;8268
	ret p			;8269
	rra			;826a
	rst 28h			;826b
	ccf			;826c
	ret p			;826d
	rra			;826e
	rst 28h			;826f
	inc sp			;8270
	rst 38h			;8271
	adc a,a			;8272
	xor 0f3h		;8273
	rst 38h			;8275
	rst 38h			;8276
	xor 0f3h		;8277
	rst 38h			;8279
	pop af			;827a
	xor 0f3h		;827b
	rst 38h			;827d
	pop af			;827e
	xor 0f3h		;827f
	rst 38h			;8281
	nop			;8282
	nop			;8283
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
	ret p			;828e
	nop			;828f
	nop			;8290
	nop			;8291
	rra			;8292
	nop			;8293
	nop			;8294
	nop			;8295
	adc a,a			;8296
	rst 38h			;8297
	rst 38h			;8298
	rst 38h			;8299
	adc a,a			;829a
	pop af			;829b
	pop hl			;829c
	xor 08fh		;829d
	rst 38h			;829f
	rst 38h			;82a0
	rst 38h			;82a1
	nop			;82a2
	nop			;82a3
	nop			;82a4
	nop			;82a5
	nop			;82a6
	nop			;82a7
	nop			;82a8
	nop			;82a9
	nop			;82aa
	nop			;82ab
	nop			;82ac
	nop			;82ad
	nop			;82ae
	nop			;82af
	nop			;82b0
	nop			;82b1
	nop			;82b2
	nop			;82b3
	nop			;82b4
	nop			;82b5
	ret p			;82b6
	nop			;82b7
	nop			;82b8
	nop			;82b9
	rra			;82ba
	nop			;82bb
	nop			;82bc
	nop			;82bd
	pop af			;82be
	ret p			;82bf
	nop			;82c0
	nop			;82c1
	nop			;82c2
	nop			;82c3
	nop			;82c4
	pop af			;82c5
	nop			;82c6
	nop			;82c7
	nop			;82c8
	pop af			;82c9
	nop			;82ca
	nop			;82cb
	nop			;82cc
	pop af			;82cd
	nop			;82ce
	nop			;82cf
	nop			;82d0
	pop af			;82d1
	xor 000h		;82d2
	rrca			;82d4
	rst 38h			;82d5
	xor 0e0h		;82d6
	rrca			;82d8
	ld e,00eh		;82d9
	ret po			;82db
	rrca			;82dc
	rst 38h			;82dd
	nop			;82de
	nop			;82df
	pop af			;82e0
	ld de,099f9h		;82e1
	sbc a,c			;82e4
	rst 38h			;82e5
	ld sp,hl		;82e6
	xor 0aah		;82e7
	xor a			;82e9
	jp m,0aaeah		;82ea
	xor a			;82ed
	jp m,0aaaah		;82ee
	xor a			;82f1
	rst 38h			;82f2
	rst 38h			;82f3
	rst 38h			;82f4
	rst 38h			;82f5
	pop hl			;82f6
	pop hl			;82f7
	ld de,0fff1h		;82f8
	rst 38h			;82fb
	rst 38h			;82fc
	ret m			;82fd
	ld de,01111h		;82fe
	ret m			;8301
	adc a,a			;8302
	di			;8303
	pop af			;8304
	pop hl			;8305
	adc a,a			;8306
	di			;8307
	pop af			;8308
	ld de,0f38fh		;8309
	pop af			;830c
	ld de,023ffh		;830d
	pop af			;8310
	ld de,023ffh		;8311
	ret m			;8314
	ld de,023ffh		;8315
	ccf			;8318
	jr $+1			;8319
	inc hl			;831b
	ccf			;831c
	adc a,b			;831d
	rst 38h			;831e
	inc hl			;831f
	ld (0f8f8h),a		;8320
	ld sp,hl		;8323
	sbc a,a			;8324
	xor d			;8325
	ret m			;8326
	rst 38h			;8327
	rst 38h			;8328
	xor d			;8329
	rst 38h			;832a
	jp m,0aaafh		;832b
l832eh:
	adc a,a			;832e
	rst 38h			;832f
	sbc a,c			;8330
	jp m,0e18fh		;8331
	rst 38h			;8334
	jp m,0188fh		;8335
	cp 0ffh			;8338
	adc a,a			;833a
	jr l832eh		;833b
	xor 08fh		;833d
	jr $-13			;833f
	ld de,0aaaah		;8341
	xor d			;8344
	sbc a,c			;8345
	xor d			;8346
	xor d			;8347
	xor a			;8348
	rst 38h			;8349
	xor d			;834a
	xor d			;834b
	rst 38h			;834c
	xor d			;834d
	xor d			;834e
	xor a			;834f
	xor d			;8350
	xor a			;8351
	xor d			;8352
	xor d			;8353
	xor d			;8354
	rst 38h			;8355
	xor d			;8356
	xor d			;8357
	rst 38h			;8358
	xor 0ffh		;8359
	rst 38h			;835b
	ld e,011h		;835c
	xor 0e1h		;835e
	add a,c			;8360
	ld de,0faffh		;8361
	xor d			;8364
	xor d			;8365
	rst 38h			;8366
	rst 38h			;8367
	xor d			;8368
	xor d			;8369
	xor d			;836a
	xor a			;836b
	jp m,0ffaah		;836c
	xor d			;836f
	xor a			;8370
	xor d			;8371
	rst 38h			;8372
	jp m,0aaaah		;8373
	xor 0efh		;8376
	jp m,011aah		;8378
	ld e,01fh		;837b
	rst 38h			;837d
	ld de,l8111h		;837e
	xor 0aah		;8381
	xor a			;8383
	sbc a,c			;8384
	ret m			;8385
	xor d			;8386
	xor a			;8387
	rst 38h			;8388
	ret m			;8389
	xor d			;838a
	xor a			;838b
	xor d			;838c
	rst 38h			;838d
	xor d			;838e
	ld sp,hl		;838f
	sbc a,a			;8390
	rst 38h			;8391
	xor d			;8392
	rst 38h			;8393
	pop af			;8394
	rst 28h			;8395
	xor a			;8396
	cp 0f8h			;8397
	rra			;8399
	cp 0e1h			;839a
	ret m			;839c
	rra			;839d
	pop hl			;839e
	ld de,01ff8h		;839f
	pop af			;83a2
	pop hl			;83a3
	di			;83a4
	rst 38h			;83a5
	pop af			;83a6
	ld de,0fff3h		;83a7
	pop af			;83aa
	ld de,02ff3h		;83ab
	add a,c			;83ae
	ld de,02ff3h		;83af
	add a,c			;83b2
	jr $-11			;83b3
	cpl			;83b5
	adc a,b			;83b6
	rra			;83b7
	inc sp			;83b8
	cpl			;83b9
	adc a,b			;83ba
	adc a,a			;83bb
	inc sp			;83bc
	cpl			;83bd
	adc a,b			;83be
	jp p,02f33h		;83bf
	adc a,a			;83c2
	sbc a,c			;83c3
	sbc a,c			;83c4
	sbc a,a			;83c5
	adc a,a			;83c6
	xor d			;83c7
	xor (hl)		;83c8
	jp (hl)			;83c9
	rst 38h			;83ca
	xor d			;83cb
	xor d			;83cc
	jp pe,0aaffh		;83cd
	xor d			;83d0
	xor d			;83d1
	rst 38h			;83d2
	rst 38h			;83d3
	rst 38h			;83d4
	rst 38h			;83d5
	pop af			;83d6
	pop af			;83d7
	ld de,0f8e1h		;83d8
	rst 38h			;83db
	rst 38h			;83dc
	rst 38h			;83dd
	ret m			;83de
	pop af			;83df
	ld de,0f111h		;83e0
	ret p			;83e3
	nop			;83e4
	nop			;83e5
	pop af			;83e6
	ret p			;83e7
	nop			;83e8
	nop			;83e9
	pop af			;83ea
	ret p			;83eb
	nop			;83ec
	nop			;83ed
	pop af			;83ee
	ret p			;83ef
	nop			;83f0
	nop			;83f1
	rst 38h			;83f2
	rst 38h			;83f3
	nop			;83f4
	ld c,0eeh		;83f5
	rra			;83f7
	nop			;83f8
	nop			;83f9
	rst 38h			;83fa
	rst 38h			;83fb
	nop			;83fc
	nop			;83fd
	ld de,0f011h		;83fe
	nop			;8401
	nop			;8402
	ld c,0eeh		;8403
	nop			;8405
	nop			;8406
	xor 0eeh		;8407
	nop			;8409
	nop			;840a
	xor 0e0h		;840b
	nop			;840d
	nop			;840e
	nop			;840f
	nop			;8410
	nop			;8411
	ret po			;8412
	nop			;8413
	nop			;8414
	nop			;8415
	nop			;8416
	nop			;8417
	nop			;8418
	nop			;8419
	nop			;841a
	nop			;841b
	nop			;841c
	nop			;841d
	nop			;841e
	nop			;841f
	nop			;8420
	rst 38h			;8421
	nop			;8422
	nop			;8423
	rst 38h			;8424
	rst 38h			;8425
	nop			;8426
	nop			;8427
	ret m			;8428
	adc a,b			;8429
	ret p			;842a
	nop			;842b
	rrca			;842c
	adc a,b			;842d
	xor a			;842e
	ret p			;842f
	nop			;8430
	ret m			;8431
	xor d			;8432
	xor a			;8433
	rst 38h			;8434
	rrca			;8435
	sbc a,c			;8436
	xor d			;8437
	xor d			;8438
	rst 38h			;8439
	rst 38h			;843a
	sbc a,c			;843b
	sbc a,d			;843c
	xor d			;843d
	rst 38h			;843e
	rst 38h			;843f
	ld sp,hl		;8440
	sbc a,c			;8441
	rst 38h			;8442
	rst 38h			;8443
	rst 38h			;8444
	ret m			;8445
	adc a,b			;8446
	adc a,b			;8447
	adc a,b			;8448
	rst 38h			;8449
	adc a,b			;844a
	adc a,b			;844b
	adc a,b			;844c
	rst 38h			;844d
	adc a,b			;844e
	adc a,b			;844f
	adc a,b			;8450
	rst 38h			;8451
	adc a,b			;8452
	adc a,b			;8453
	adc a,b			;8454
	rst 38h			;8455
	ret m			;8456
	adc a,b			;8457
	adc a,b			;8458
	rst 38h			;8459
	rst 38h			;845a
	adc a,b			;845b
	adc a,b			;845c
	rst 38h			;845d
	sbc a,a			;845e
	ret m			;845f
	adc a,b			;8460
	rst 38h			;8461
	rst 38h			;8462
	inc hl			;8463
	ld (0fff8h),a		;8464
	inc hl			;8467
	ld (0ff2fh),a		;8468
	inc hl			;846b
	inc sp			;846c
	ld (023ffh),hl		;846d
l8470h:
	inc sp			;8470
	ld (022ffh),hl		;8471
	inc sp			;8474
	ld (0f2ffh),a		;8475
	ld (0ff22h),hl		;8478
	rst 38h			;847b
	rst 38h			;847c
l847dh:
	rst 38h			;847d
	rst 38h			;847e
	rst 38h			;847f
	rst 38h			;8480
	rst 38h			;8481
	adc a,a			;8482
	jr l847dh		;8483
	ld de,0f888h		;8485
	ret m			;8488
	adc a,b			;8489
	ret m			;848a
	rst 38h			;848b
	rst 38h			;848c
	adc a,b			;848d
	cpl			;848e
	adc a,a			;848f
	rst 38h			;8490
	ret m			;8491
	ld (0ffffh),hl		;8492
	rst 38h			;8495
	ld (0f6ffh),hl		;8496
	rst 38h			;8499
	rst 38h			;849a
	rst 38h			;849b
	rst 30h			;849c
	ld l,a			;849d
	rst 38h			;849e
	rst 38h			;849f
	rst 38h			;84a0
	halt			;84a1
	ld de,l8118h		;84a2
	ld de,01f11h		;84a5
	add a,c			;84a8
	ld de,l8f88h		;84a9
	adc a,b			;84ac
	ld de,l8f88h		;84ad
	adc a,b			;84b0
	adc a,b			;84b1
	ret m			;84b2
	adc a,b			;84b3
	ret m			;84b4
	adc a,b			;84b5
	rst 38h			;84b6
	rst 38h			;84b7
	ret m			;84b8
	rst 38h			;84b9
	rst 38h			;84ba
	rst 38h			;84bb
	rst 38h			;84bc
	adc a,b			;84bd
	rst 38h			;84be
	rst 38h			;84bf
	rst 38h			;84c0
	adc a,a			;84c1
	ld de,l8811h		;84c2
	ld de,01111h		;84c5
	adc a,a			;84c8
	ld de,01811h		;84c9
	adc a,a			;84cc
	adc a,b			;84cd
	adc a,b			;84ce
	adc a,b			;84cf
	adc a,a			;84d0
	adc a,b			;84d1
	adc a,b			;84d2
	adc a,b			;84d3
	ret m			;84d4
	adc a,b			;84d5
	rst 38h			;84d6
	ret m			;84d7
	rst 38h			;84d8
	rst 38h			;84d9
	adc a,b			;84da
	adc a,a			;84db
	rst 38h			;84dc
	rst 38h			;84dd
	rst 38h			;84de
	adc a,a			;84df
	rst 38h			;84e0
	rst 38h			;84e1
	ld de,0f818h		;84e2
	rra			;84e5
	jr l8470h		;84e6
	ret m			;84e8
	ret m			;84e9
	adc a,b			;84ea
	adc a,a			;84eb
	rst 38h			;84ec
	ret m			;84ed
	adc a,b			;84ee
	rst 38h			;84ef
	rst 38h			;84f0
	adc a,a			;84f1
	rst 38h			;84f2
	rst 38h			;84f3
	rst 38h			;84f4
	rst 38h			;84f5
	rst 38h			;84f6
	ld h,(hl)		;84f7
	rst 38h			;84f8
	jp p,067ffh		;84f9
	rst 38h			;84fc
	rst 38h			;84fd
	or 07fh			;84fe
	rst 38h			;8500
	rst 38h			;8501
	adc a,b			;8502
	jp p,02f33h		;8503
	adc a,a			;8506
	inc hl			;8507
	inc sp			;8508
	cpl			;8509
	jp p,03323h		;850a
	cpl			;850d
	ld (03333h),hl		;850e
	cpl			;8511
	ld (03233h),hl		;8512
	cpl			;8515
	ld (02222h),hl		;8516
	rst 38h			;8519
	rst 38h			;851a
	rst 38h			;851b
	rst 38h			;851c
	rst 38h			;851d
	rst 38h			;851e
	rst 38h			;851f
	rst 38h			;8520
	rst 38h			;8521
	ret m			;8522
	rst 38h			;8523
	rst 38h			;8524
	rst 38h			;8525
	rst 38h			;8526
	ret m			;8527
	adc a,b			;8528
	adc a,b			;8529
	rst 38h			;852a
	ret m			;852b
	adc a,b			;852c
	adc a,b			;852d
	rst 38h			;852e
	ret m			;852f
	adc a,b			;8530
	adc a,b			;8531
	rst 38h			;8532
	ret m			;8533
	adc a,b			;8534
	adc a,b			;8535
	rst 38h			;8536
	ret m			;8537
	adc a,b			;8538
	adc a,b			;8539
	rst 38h			;853a
	ret m			;853b
	adc a,b			;853c
	adc a,a			;853d
	rst 38h			;853e
	ret m			;853f
	adc a,b			;8540
	ld sp,hl		;8541
	rst 38h			;8542
	rst 38h			;8543
	nop			;8544
	nop			;8545
	adc a,b			;8546
	adc a,a			;8547
	nop			;8548
	nop			;8549
	adc a,b			;854a
	ret p			;854b
	nop			;854c
	rrca			;854d
	adc a,a			;854e
	nop			;854f
	rrca			;8550
	jp m,0fff0h		;8551
	jp m,0ffaah		;8554
	xor d			;8557
	xor d			;8558
	sbc a,c			;8559
	xor d			;855a
	xor c			;855b
	sbc a,c			;855c
	rst 38h			;855d
	sbc a,c			;855e
	sbc a,a			;855f
	rst 38h			;8560
	rst 38h			;8561
	sbc a,c			;8562
	rst 38h			;8563
	rst 38h			;8564
	sbc a,c			;8565
	sbc a,c			;8566
	sbc a,c			;8567
	rst 38h			;8568
	sbc a,c			;8569
	sbc a,c			;856a
	sbc a,c			;856b
	rst 38h			;856c
	sbc a,c			;856d
	sbc a,a			;856e
	sbc a,d			;856f
	rst 38h			;8570
	rst 38h			;8571
	sbc a,a			;8572
	rst 38h			;8573
	cp 0eeh			;8574
	sbc a,a			;8576
	cp 0eeh			;8577
	xor 0feh		;8579
	xor 0eeh		;857b
	xor 0eeh		;857d
	ld de,0ee1eh		;857f
	sbc a,c			;8582
	sbc a,c			;8583
	rst 38h			;8584
	rst 38h			;8585
	sbc a,c			;8586
	sbc a,c			;8587
	sbc a,c			;8588
	sbc a,c			;8589
	rst 38h			;858a
	rst 38h			;858b
	rst 38h			;858c
	rst 38h			;858d
	xor 0eeh		;858e
	xor 0efh		;8590
	xor 0eeh		;8592
	xor 0eeh		;8594
	xor 0e1h		;8596
	xor 0eeh		;8598
	xor 0eeh		;859a
	xor 0eeh		;859c
	xor 0eeh		;859e
	xor 0eeh		;85a0
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
	xor 0eeh		;85b1
	rst 38h			;85b3
	cp 0eeh			;85b4
	xor 0efh		;85b6
	ld d,l			;85b8
	ld d,l			;85b9
	xor 0efh		;85ba
	ld d,l			;85bc
	ld d,l			;85bd
	pop hl			;85be
	push af			;85bf
	ld d,l			;85c0
	ld d,l			;85c1
	rst 38h			;85c2
	rst 38h			;85c3
	rst 38h			;85c4
	rst 38h			;85c5
	rst 38h			;85c6
	rst 38h			;85c7
	rst 38h			;85c8
	rst 38h			;85c9
	xor 0eeh		;85ca
	call po,0ee4fh		;85cc
	xor 04fh		;85cf
	rst 38h			;85d1
	xor 0e4h		;85d2
	rst 38h			;85d4
	ret m			;85d5
	ld d,l			;85d6
	ld d,h			;85d7
	rst 38h			;85d8
	ld de,04f55h		;85d9
	rst 38h			;85dc
	adc a,b			;85dd
	ld d,l			;85de
	ld c,a			;85df
	rst 38h			;85e0
	rst 38h			;85e1
	rst 38h			;85e2
	ld h,(hl)		;85e3
	halt			;85e4
	rst 38h			;85e5
	rst 38h			;85e6
	ld h,(hl)		;85e7
	ld h,(hl)		;85e8
	ld h,a			;85e9
	rst 38h			;85ea
	or 066h			;85eb
	ld h,(hl)		;85ed
	rst 38h			;85ee
	rst 38h			;85ef
	rst 38h			;85f0
	ld h,(hl)		;85f1
	ld de,l8f18h		;85f2
	rst 38h			;85f5
	adc a,b			;85f6
	adc a,b			;85f7
	rst 38h			;85f8
	or 0ffh			;85f9
	rst 38h			;85fb
	ld h,(hl)		;85fc
	ld h,(hl)		;85fd
	rst 38h			;85fe
	ld h,(hl)		;85ff
	ld h,(hl)		;8600
	ld h,(hl)		;8601
	rst 38h			;8602
	rst 38h			;8603
	rst 38h			;8604
	rst 38h			;8605
	ld (hl),a		;8606
	halt			;8607
	rst 38h			;8608
	rst 38h			;8609
	ld h,(hl)		;860a
	ld h,a			;860b
	ld (hl),a		;860c
	ld l,a			;860d
	ld h,(hl)		;860e
	ld h,(hl)		;860f
	ld h,(hl)		;8610
	ld a,a			;8611
	rst 38h			;8612
	ld h,(hl)		;8613
	ld h,(hl)		;8614
	ld l,a			;8615
	rst 38h			;8616
	rst 38h			;8617
	rst 38h			;8618
	ld l,a			;8619
	ld h,(hl)		;861a
	ld l,a			;861b
	rst 38h			;861c
	rst 38h			;861d
	ld l,a			;861e
	or 06fh			;861f
	inc hl			;8621
	rst 38h			;8622
	rst 38h			;8623
	rst 38h			;8624
	rst 38h			;8625
	rst 38h			;8626
	rst 38h			;8627
	or 077h			;8628
	ccf			;862a
	ld h,(hl)		;862b
	ld (hl),a		;862c
	ld h,(hl)		;862d
	cpl			;862e
	halt			;862f
	ld h,(hl)		;8630
	ld h,(hl)		;8631
	cpl			;8632
	ld h,(hl)		;8633
	ld h,(hl)		;8634
	ld l,a			;8635
	cpl			;8636
	ld h,(hl)		;8637
	rst 38h			;8638
	rst 38h			;8639
	rst 38h			;863a
	rst 38h			;863b
	rst 38h			;863c
	ld h,(hl)		;863d
	di			;863e
	ccf			;863f
	ld h,(hl)		;8640
	ld h,(hl)		;8641
	rst 38h			;8642
	rst 38h			;8643
	halt			;8644
	rst 38h			;8645
	ld (hl),a		;8646
	ld h,(hl)		;8647
	ld l,a			;8648
	rst 38h			;8649
	ld h,(hl)		;864a
	ld h,(hl)		;864b
	rst 38h			;864c
	rst 38h			;864d
	ld h,(hl)		;864e
	rst 38h			;864f
	rst 38h			;8650
	rst 38h			;8651
	rst 38h			;8652
	ret m			;8653
	ld de,0ff18h		;8654
	rst 38h			;8657
	adc a,b			;8658
	add a,c			;8659
	ld h,(hl)		;865a
	ld l,a			;865b
	rst 38h			;865c
	ret m			;865d
	ld h,(hl)		;865e
	ld h,(hl)		;865f
	rst 38h			;8660
	rst 38h			;8661
	rst 38h			;8662
	rst 38h			;8663
	rst 38h			;8664
	rst 38h			;8665
	rst 38h			;8666
	rst 38h			;8667
	rst 38h			;8668
	rst 38h			;8669
	call p,0eeeeh		;866a
	xor 0ffh		;866d
	call p,0eeeeh		;866f
	rst 38h			;8672
	rst 38h			;8673
	ld c,(hl)		;8674
	xor 01fh		;8675
	rst 38h			;8677
	ld b,l			;8678
	ld d,l			;8679
	adc a,a			;867a
	rst 38h			;867b
	call p,0ff55h		;867c
	rst 38h			;867f
	call p,0ff55h		;8680
	ret m			;8683
	adc a,a			;8684
	rst 38h			;8685
	rst 38h			;8686
	rst 38h			;8687
	rst 38h			;8688
	rst 38h			;8689
	rst 38h			;868a
	rst 38h			;868b
	rst 38h			;868c
	rst 38h			;868d
	xor 0ffh		;868e
	rst 38h			;8690
	rst 38h			;8691
	xor 0efh		;8692
	rst 38h			;8694
	cp 055h			;8695
	ld d,l			;8697
	rst 38h			;8698
	xor 055h		;8699
	ld d,l			;869b
	rst 38h			;869c
	ld e,055h		;869d
	ld d,l			;869f
	ld e,a			;86a0
	ld e,0ffh		;86a1
	rst 38h			;86a3
	ld sp,hl		;86a4
	sbc a,c			;86a5
	ld sp,hl		;86a6
	sbc a,c			;86a7
	sbc a,c			;86a8
	sbc a,c			;86a9
	rst 38h			;86aa
	rst 38h			;86ab
	rst 38h			;86ac
	rst 38h			;86ad
	cp 0eeh			;86ae
	xor 0eeh		;86b0
	xor 0eeh		;86b2
	xor 0eeh		;86b4
	xor 0eeh		;86b6
	ld e,0eeh		;86b8
	xor 0eeh		;86ba
	xor 0eeh		;86bc
	xor 0eeh		;86be
	xor 0eeh		;86c0
	sbc a,c			;86c2
	rst 38h			;86c3
	rst 38h			;86c4
	sbc a,c			;86c5
	sbc a,c			;86c6
	rst 38h			;86c7
	sbc a,c			;86c8
	sbc a,c			;86c9
	sbc a,c			;86ca
	rst 38h			;86cb
	sbc a,c			;86cc
	sbc a,c			;86cd
	rst 38h			;86ce
	rst 38h			;86cf
	sbc a,c			;86d0
	ld sp,hl		;86d1
	xor 0efh		;86d2
	rst 38h			;86d4
	ld sp,hl		;86d5
	xor 0eeh		;86d6
	rst 28h			;86d8
	ld sp,hl		;86d9
	xor 0eeh		;86da
	xor 0efh		;86dc
	xor 0e1h		;86de
	ld de,l9feeh		;86e0
	ld sp,hl		;86e3
	ld sp,hl		;86e4
	xor c			;86e5
	sbc a,a			;86e6
	ld sp,hl		;86e7
	rst 38h			;86e8
	ld sp,hl		;86e9
	sbc a,a			;86ea
	ld sp,hl		;86eb
	sbc a,c			;86ec
	sbc a,c			;86ed
l86eeh:
	rst 38h			;86ee
	rst 38h			;86ef
	sbc a,c			;86f0
	sbc a,c			;86f1
	rst 38h			;86f2
	rst 38h			;86f3
	rst 38h			;86f4
	ld sp,hl		;86f5
	rst 38h			;86f6
	rst 38h			;86f7
	rst 38h			;86f8
	rst 38h			;86f9
	rst 38h			;86fa
	rst 38h			;86fb
	rst 38h			;86fc
	rst 38h			;86fd
	rst 38h			;86fe
	rst 38h			;86ff
	rst 38h			;8700
	pop af			;8701
	sbc a,a			;8702
	sbc a,d			;8703
	sbc a,a			;8704
	jp m,l9a9fh		;8705
	sbc a,a			;8708
	jp m,l9a9fh		;8709
	sbc a,a			;870c
	jp m,0ff99h		;870d
	sbc a,a			;8710
	rst 38h			;8711
	sbc a,c			;8712
	rst 38h			;8713
	cp 0e1h			;8714
	rst 38h			;8716
	xor 0e1h		;8717
	ld de,01feeh		;8719
	pop hl			;871c
	adc a,a			;871d
	pop hl			;871e
	rra			;871f
	ld de,l998fh		;8720
	sbc a,a			;8723
	sbc a,c			;8724
	ld sp,hl		;8725
	sbc a,c			;8726
	sbc a,a			;8727
	sbc a,c			;8728
	ld sp,hl		;8729
	sbc a,c			;872a
	sbc a,a			;872b
	ld sp,hl		;872c
	ld sp,hl		;872d
	sbc a,c			;872e
	rst 38h			;872f
	rst 38h			;8730
	rst 38h			;8731
	rst 38h			;8732
	xor 0e1h		;8733
	ld sp,hl		;8735
	pop af			;8736
	ld de,01f11h		;8737
	jr l874dh		;873a
	jr l874fh		;873c
	ld de,0ff18h		;873e
	add a,c			;8741
	sbc a,c			;8742
	sbc a,c			;8743
	xor d			;8744
	cp 09fh			;8745
	sbc a,c			;8747
	sbc a,a			;8748
	pop hl			;8749
	sbc a,a			;874a
	sbc a,c			;874b
	sbc a,a			;874c
l874dh:
	jr l86eeh		;874d
l874fh:
	sbc a,c			;874f
	sbc a,a			;8750
	adc a,a			;8751
	sbc a,a			;8752
	ld sp,hl		;8753
	sbc a,a			;8754
	adc a,a			;8755
	sbc a,c			;8756
	sbc a,c			;8757
	sbc a,a			;8758
	rst 38h			;8759
	ld sp,hl		;875a
	sbc a,a			;875b
	rst 38h			;875c
	ld a,(hl)		;875d
	rra			;875e
	rst 30h			;875f
	xor 0eeh		;8760
	ld de,01111h		;8762
	ld de,l8188h		;8765
	ld de,l8811h		;8768
	adc a,b			;876b
	ld de,0f811h		;876c
	adc a,b			;876f
	pop af			;8770
	ld de,l88ffh		;8771
	adc a,a			;8774
	ld de,0f8ffh		;8775
	adc a,b			;8778
	add a,c			;8779
	rst 20h			;877a
	rst 38h			;877b
	adc a,b			;877c
	adc a,a			;877d
	rst 20h			;877e
	ld a,a			;877f
	ret m			;8780
	adc a,b			;8781
	ld e,0eeh		;8782
	xor 0e1h		;8784
	ld de,01111h		;8786
	ld de,01188h		;8789
	ld de,0ee11h		;878c
	ld de,01111h		;878f
	ld de,l8111h		;8792
	ld de,01111h		;8795
	pop hl			;8798
	ld de,01111h		;8799
	ld de,01111h		;879c
	ld de,01111h		;879f
	ld de,055f5h		;87a2
	ld d,l			;87a5
	rra			;87a6
	ld d,l			;87a7
	ld d,l			;87a8
	ld d,l			;87a9
	rra			;87aa
	ld d,l			;87ab
	ld d,l			;87ac
	ld d,l			;87ad
	rra			;87ae
	ld b,l			;87af
	ld d,l			;87b0
	ld d,l			;87b1
	rra			;87b2
	ld b,l			;87b3
	ld d,l			;87b4
	ld d,l			;87b5
	call p,05545h		;87b6
	ld d,l			;87b9
	call p,04544h		;87ba
	ld d,l			;87bd
	call p,04444h		;87be
	ld b,h			;87c1
	ld d,l			;87c2
	ld c,a			;87c3
	rst 38h			;87c4
	rst 38h			;87c5
	ld d,h			;87c6
	rst 38h			;87c7
	rst 38h			;87c8
	rst 30h			;87c9
	ld d,h			;87ca
	rst 38h			;87cb
	rst 38h			;87cc
	ld (hl),a		;87cd
	ld d,h			;87ce
	rst 38h			;87cf
	rst 30h			;87d0
	ld (hl),a		;87d1
	ld d,h			;87d2
	rst 38h			;87d3
	ld (hl),a		;87d4
	ld h,a			;87d5
	ld c,a			;87d6
	rst 38h			;87d7
	halt			;87d8
	ld (hl),a		;87d9
	ld c,a			;87da
	rst 30h			;87db
	ld h,a			;87dc
	ld (hl),a		;87dd
	ccf			;87de
	or 077h			;87df
	halt			;87e1
	rst 38h			;87e2
	or 066h			;87e3
	ld h,(hl)		;87e5
	ld (hl),a		;87e6
	ld h,(hl)		;87e7
	or 066h			;87e8
	ld (hl),a		;87ea
	or 066h			;87eb
	ld h,(hl)		;87ed
	rst 30h			;87ee
	ld (hl),a		;87ef
	ld h,(hl)		;87f0
	ld h,(hl)		;87f1
	ld (hl),a		;87f2
	ld (hl),a		;87f3
	halt			;87f4
	ld l,a			;87f5
	ld (hl),a		;87f6
	ld (hl),a		;87f7
	ld (hl),a		;87f8
	halt			;87f9
	halt			;87fa
	ld (hl),a		;87fb
	ld (hl),a		;87fc
	ld (hl),a		;87fd
	ld (hl),a		;87fe
	ld (hl),a		;87ff
	ld (hl),a		;8800
	ld (hl),a		;8801
	ld h,(hl)		;8802
	ld l,a			;8803
	rst 38h			;8804
	ld (06666h),hl		;8805
	ld l,a			;8808
	rst 38h			;8809
	ld h,(hl)		;880a
	ld h,(hl)		;880b
	ld l,a			;880c
	rst 38h			;880d
	ld h,(hl)		;880e
	ld h,(hl)		;880f
	ld l,a			;8810
l8811h:
	inc sp			;8811
	ld h,(hl)		;8812
	rst 38h			;8813
	rst 38h			;8814
	jp p,06666h		;8815
	ld h,(hl)		;8818
	jp p,06666h		;8819
	ld h,(hl)		;881c
	jp p,07677h		;881d
	ld h,(hl)		;8820
	jp p,0fff2h		;8821
	rst 38h			;8824
	or 0ffh			;8825
	cpl			;8827
	ld h,(hl)		;8828
	ld h,(hl)		;8829
	jp p,0ff2fh		;882a
	or 0ffh			;882d
	rst 38h			;882f
	or 066h			;8830
	di			;8832
	ccf			;8833
	ld h,(hl)		;8834
	ld h,(hl)		;8835
	jp p,06626h		;8836
	ld h,(hl)		;8839
	jp p,066f6h		;883a
	ld h,(hl)		;883d
	jp p,066f6h		;883e
	ld h,(hl)		;8841
	ld h,(hl)		;8842
	ld h,(hl)		;8843
	ld h,(hl)		;8844
	ld l,a			;8845
	rst 38h			;8846
	rst 38h			;8847
	or 067h			;8848
	ld h,(hl)		;884a
	ld h,(hl)		;884b
	ld h,(hl)		;884c
	ld h,a			;884d
	ld h,(hl)		;884e
	ld h,(hl)		;884f
	ld h,(hl)		;8850
	ld (hl),a		;8851
	ld h,(hl)		;8852
	ld h,(hl)		;8853
	ld h,a			;8854
	ld (hl),a		;8855
	ld h,(hl)		;8856
	ld h,(hl)		;8857
	ld (hl),a		;8858
	ld (hl),a		;8859
	ld h,(hl)		;885a
	ld (hl),a		;885b
	ld (hl),a		;885c
	halt			;885d
	ld (hl),a		;885e
	ld (hl),a		;885f
	ld (hl),a		;8860
	ld (hl),a		;8861
	rst 38h			;8862
	rst 38h			;8863
	call p,07755h		;8864
	rst 38h			;8867
	rst 38h			;8868
	ld b,l			;8869
	ld (hl),a		;886a
	ld a,a			;886b
	rst 38h			;886c
	ld b,l			;886d
	ld h,(hl)		;886e
	ld h,a			;886f
	rst 38h			;8870
	ld b,l			;8871
	ld (hl),a		;8872
	ld h,(hl)		;8873
	rst 38h			;8874
	ld b,l			;8875
	ld (hl),a		;8876
	ld (hl),a		;8877
	ld l,a			;8878
	di			;8879
	ld (hl),a		;887a
	ld (hl),a		;887b
	ld a,a			;887c
	di			;887d
	halt			;887e
	ld h,a			;887f
	ld a,a			;8880
	di			;8881
	ld d,l			;8882
	ld d,l			;8883
	ld e,a			;8884
	ld de,05555h		;8885
	ld d,l			;8888
	pop af			;8889
	ld d,l			;888a
	ld d,l			;888b
	ld d,l			;888c
	pop af			;888d
	ld d,l			;888e
	ld d,l			;888f
	ld d,l			;8890
	pop af			;8891
	ld d,l			;8892
	ld d,l			;8893
	ld d,h			;8894
	pop af			;8895
l8896h:
	ld b,l			;8896
	ld d,l			;8897
	ld d,h			;8898
	ld c,a			;8899
	ld b,h			;889a
	ld b,h			;889b
	ld b,h			;889c
	ld c,a			;889d
	ld b,h			;889e
	ld b,h			;889f
	ld b,h			;88a0
	ld c,a			;88a1
	ld e,0eeh		;88a2
	xor 0eeh		;88a4
	ld de,01111h		;88a6
	ld de,01111h		;88a9
	ld de,01188h		;88ac
	ld de,0ee11h		;88af
	ld de,01118h		;88b2
	ld de,01e11h		;88b5
	ld de,01111h		;88b8
	ld de,01111h		;88bb
	ld de,01111h		;88be
	ld de,01111h		;88c1
l88c4h:
	ld de,011e1h		;88c4
	ld de,0111eh		;88c7
	ld de,01111h		;88ca
	adc a,b			;88cd
	ld de,01811h		;88ce
	adc a,b			;88d1
	ld de,0f811h		;88d2
	adc a,a			;88d5
	ld de,0881fh		;88d6
	rst 38h			;88d9
	ld de,l8f88h		;88da
	rst 38h			;88dd
	rra			;88de
l88dfh:
	adc a,b			;88df
	rst 38h			;88e0
	rst 30h			;88e1
	sbc a,a			;88e2
l88e3h:
	rst 38h			;88e3
	cp 0efh			;88e4
	sbc a,c			;88e6
	sbc a,a			;88e7
	pop hl			;88e8
	adc a,a			;88e9
	sbc a,c			;88ea
	sbc a,a			;88eb
	jr l88dfh		;88ec
	sbc a,c			;88ee
	pop af			;88ef
	jr l88e3h		;88f0
	sbc a,c			;88f2
	pop af			;88f3
	rra			;88f4
	jr l8896h		;88f5
	ld de,0118fh		;88f7
	sbc a,a			;88fa
	ld de,0118fh		;88fb
	sbc a,a			;88fe
l88ffh:
	ld de,0118fh		;88ff
	ld de,018f1h		;8902
	pop af			;8905
	ld de,018f1h		;8906
	pop af			;8909
	rra			;890a
	ld de,0118fh		;890b
	rra			;890e
	adc a,b			;890f
	adc a,a			;8910
	ld de,0118fh		;8911
	adc a,a			;8914
	ld de,0118fh		;8915
	adc a,a			;8918
	jr $-111		;8919
	ld de,l818fh		;891b
	adc a,a			;891e
	ld de,0111fh		;891f
	ld de,l8811h		;8922
	ret m			;8925
	ld de,l8f11h		;8926
	rst 38h			;8929
	ld de,0ff18h		;892a
	di			;892d
	ld de,0ff88h		;892e
	call p,l8f11h		;8931
	rst 38h			;8934
	inc h			;8935
	adc a,b			;8936
	adc a,a			;8937
	rst 38h			;8938
	inc hl			;8939
	jr l88c4h		;893a
	rst 38h			;893c
	ld (l8f11h),hl		;893d
	adc a,a			;8940
	rst 38h			;8941
	rra			;8942
	rst 38h			;8943
	rst 38h			;8944
	rst 30h			;8945
	rst 38h			;8946
	push af			;8947
	ld d,l			;8948
	rst 30h			;8949
	ld d,l			;894a
	push af			;894b
	ld d,l			;894c
	cp 055h			;894d
	push af			;894f
	ld d,h			;8950
	cp 044h			;8951
	call p,0f744h		;8953
	inc sp			;8956
	call p,0f644h		;8957
	cpl			;895a
	di			;895b
	inc sp			;895c
	rst 30h			;895d
	rst 38h			;895e
	di			;895f
	inc sp			;8960
	rst 30h			;8961
	xor 0e7h		;8962
	ret m			;8964
	adc a,b			;8965
	ld (hl),a		;8966
	xor 07fh		;8967
	adc a,b			;8969
	ld h,(hl)		;896a
	ld (hl),a		;896b
	rst 28h			;896c
	adc a,b			;896d
	ld a,a			;896e
	ld h,a			;896f
	ld (hl),a		;8970
	ret m			;8971
	rst 20h			;8972
	or 067h			;8973
	rst 38h			;8975
	ld (hl),a		;8976
	ld a,a			;8977
	ld h,(hl)		;8978
	ld a,a			;8979
	ld h,a			;897a
	ld (hl),a		;897b
	rst 38h			;897c
	ld h,(hl)		;897d
	ld h,(hl)		;897e
	ld h,a			;897f
	ld a,a			;8980
	rst 38h			;8981
	pop af			;8982
	ld de,01111h		;8983
	adc a,a			;8986
	ld de,01111h		;8987
	adc a,b			;898a
	rst 38h			;898b
	ld de,0881fh		;898c
	adc a,b			;898f
	rst 38h			;8990
	rst 38h			;8991
	adc a,b			;8992
	adc a,b			;8993
	adc a,b			;8994
	adc a,a			;8995
	ret m			;8996
	adc a,b			;8997
	adc a,b			;8998
	adc a,a			;8999
	rst 38h			;899a
	adc a,b			;899b
	adc a,b			;899c
	adc a,a			;899d
	rst 38h			;899e
	ret m			;899f
	adc a,b			;89a0
	adc a,a			;89a1
	call p,04444h		;89a2
	ld b,h			;89a5
	call p,04444h		;89a6
	ld b,h			;89a9
	inc (hl)		;89aa
	ld b,h			;89ab
	ld b,h			;89ac
	ld b,e			;89ad
	inc (hl)		;89ae
	ld b,h			;89af
	ld b,h			;89b0
	ld b,e			;89b1
	inc (hl)		;89b2
	ld b,h			;89b3
	ld b,h			;89b4
	ld b,e			;89b5
	inc (hl)		;89b6
	ld b,h			;89b7
	ld b,h			;89b8
	ld b,e			;89b9
	inc sp			;89ba
	ld b,h			;89bb
	ld b,h			;89bc
	ld b,e			;89bd
	inc sp			;89be
	ld b,h			;89bf
	ld b,h			;89c0
	ld (0f63fh),a		;89c1
	halt			;89c4
	ld h,a			;89c5
	ccf			;89c6
	rst 30h			;89c7
	ld h,(hl)		;89c8
	ld (hl),a		;89c9
	rst 38h			;89ca
	or 067h			;89cb
	ld (hl),a		;89cd
	rst 38h			;89ce
	or 077h			;89cf
	ld (hl),a		;89d1
	rst 38h			;89d2
	or 077h			;89d3
	ld (hl),a		;89d5
	rst 38h			;89d6
	ld h,a			;89d7
	ld (hl),a		;89d8
	ld (hl),a		;89d9
	rst 38h			;89da
	ld h,a			;89db
	ld (hl),a		;89dc
	ld (hl),a		;89dd
	rst 38h			;89de
	ld h,a			;89df
	ld (hl),a		;89e0
	ld (hl),a		;89e1
	ld (hl),a		;89e2
	ld (hl),a		;89e3
	ld (hl),a		;89e4
	ld (hl),a		;89e5
	ld (hl),a		;89e6
	ld (hl),a		;89e7
	ld (hl),a		;89e8
	ld (hl),a		;89e9
	ld (hl),a		;89ea
	ld (hl),a		;89eb
	ld (hl),a		;89ec
	ld (hl),a		;89ed
	ld (hl),a		;89ee
	ld (hl),a		;89ef
	ld (hl),a		;89f0
	ld (hl),a		;89f1
	ld (hl),a		;89f2
	ld (hl),a		;89f3
	ld (hl),a		;89f4
	ld (hl),a		;89f5
	ld (hl),a		;89f6
	ld (hl),a		;89f7
	ld (hl),a		;89f8
	ld (hl),a		;89f9
	ld (hl),a		;89fa
	ld (hl),a		;89fb
	ld (hl),a		;89fc
	ld (hl),a		;89fd
	ld (hl),a		;89fe
	ld (hl),a		;89ff
	ld (hl),a		;8a00
	ld (hl),a		;8a01
	ld (hl),a		;8a02
	ld (hl),a		;8a03
	ld a,a			;8a04
	di			;8a05
	ld (hl),a		;8a06
	ld (hl),a		;8a07
	ld a,a			;8a08
	inc (hl)		;8a09
	ld (hl),a		;8a0a
	ld (hl),a		;8a0b
	ld a,a			;8a0c
	inc (hl)		;8a0d
	ld (hl),a		;8a0e
	ld (hl),a		;8a0f
	ld a,a			;8a10
	inc (hl)		;8a11
	ld (hl),a		;8a12
	ld (hl),a		;8a13
	ld a,a			;8a14
	inc (hl)		;8a15
	ld (hl),a		;8a16
	ld (hl),a		;8a17
	ld a,a			;8a18
	inc sp			;8a19
	ld (hl),a		;8a1a
	ld (hl),a		;8a1b
	ld (hl),a		;8a1c
	call p,07777h		;8a1d
	ld (hl),a		;8a20
	call p,0f6f3h		;8a21
	ld (hl),a		;8a24
	ld (hl),a		;8a25
	call p,0773fh		;8a26
	ld (hl),a		;8a29
	call p,0773fh		;8a2a
	ld (hl),a		;8a2d
	call p,0773fh		;8a2e
	ld (hl),a		;8a31
	call p,0773fh		;8a32
	ld (hl),a		;8a35
	call p,0773fh		;8a36
	ld (hl),a		;8a39
	di			;8a3a
	ld c,a			;8a3b
	ld (hl),a		;8a3c
	ld (hl),a		;8a3d
	ld c,a			;8a3e
	inc (hl)		;8a3f
	rst 30h			;8a40
	ld (hl),a		;8a41
	ld (hl),a		;8a42
	ld (hl),a		;8a43
	ld (hl),a		;8a44
	ld (hl),a		;8a45
	ld (hl),a		;8a46
	ld (hl),a		;8a47
	ld (hl),a		;8a48
	ld (hl),a		;8a49
	ld (hl),a		;8a4a
	ld (hl),a		;8a4b
	ld (hl),a		;8a4c
	ld (hl),a		;8a4d
	ld (hl),a		;8a4e
	ld (hl),a		;8a4f
	ld (hl),a		;8a50
	ld (hl),a		;8a51
	ld (hl),a		;8a52
	ld (hl),a		;8a53
	ld (hl),a		;8a54
	ld (hl),a		;8a55
	ld (hl),a		;8a56
	ld (hl),a		;8a57
	ld (hl),a		;8a58
	ld (hl),a		;8a59
	ld (hl),a		;8a5a
	ld (hl),a		;8a5b
	ld (hl),a		;8a5c
	ld (hl),a		;8a5d
	ld (hl),a		;8a5e
	ld (hl),a		;8a5f
	ld (hl),a		;8a60
	ld (hl),a		;8a61
	ld (hl),a		;8a62
	halt			;8a63
	ld l,a			;8a64
	di			;8a65
	ld (hl),a		;8a66
	ld (hl),a		;8a67
	ld l,a			;8a68
	di			;8a69
	ld (hl),a		;8a6a
	ld (hl),a		;8a6b
	ld a,a			;8a6c
	rst 38h			;8a6d
	ld (hl),a		;8a6e
	ld (hl),a		;8a6f
	halt			;8a70
	rst 38h			;8a71
	ld (hl),a		;8a72
	ld (hl),a		;8a73
	halt			;8a74
	rst 38h			;8a75
	ld (hl),a		;8a76
	ld (hl),a		;8a77
	halt			;8a78
	ld l,a			;8a79
	ld (hl),a		;8a7a
	ld (hl),a		;8a7b
	halt			;8a7c
	ld l,a			;8a7d
	ld (hl),a		;8a7e
	ld (hl),a		;8a7f
	ld h,(hl)		;8a80
	ld l,a			;8a81
	ld b,h			;8a82
	ld b,h			;8a83
	ld b,h			;8a84
	ld c,a			;8a85
	ld b,h			;8a86
	ld b,h			;8a87
	ld b,h			;8a88
	ld c,a			;8a89
	inc (hl)		;8a8a
	ld b,h			;8a8b
	ld b,h			;8a8c
	ld b,h			;8a8d
	inc (hl)		;8a8e
	ld b,h			;8a8f
	ld b,h			;8a90
	ld b,h			;8a91
	inc (hl)		;8a92
	ld b,h			;8a93
	ld b,h			;8a94
	ld b,h			;8a95
	inc h			;8a96
	ld b,h			;8a97
	ld b,h			;8a98
	ld b,h			;8a99
	inc h			;8a9a
	ld b,h			;8a9b
	ld b,h			;8a9c
	ld b,h			;8a9d
	inc hl			;8a9e
	ld b,h			;8a9f
	ld b,h			;8aa0
	inc sp			;8aa1
	ld de,01111h		;8aa2
	ld de,01111h		;8aa5
	ld de,0f11fh		;8aa8
	ld de,0f811h		;8aab
	pop af			;8aae
	ld de,l88ffh		;8aaf
	rst 38h			;8ab2
	ret m			;8ab3
	adc a,b			;8ab4
	adc a,b			;8ab5
	ret m			;8ab6
	adc a,b			;8ab7
	adc a,b			;8ab8
	adc a,b			;8ab9
	ret m			;8aba
	adc a,b			;8abb
	adc a,b			;8abc
	adc a,a			;8abd
	ret m			;8abe
	adc a,b			;8abf
	adc a,b			;8ac0
	rst 38h			;8ac1
	ret m			;8ac2
	adc a,a			;8ac3
	rst 38h			;8ac4
	ld a,(hl)		;8ac5
	adc a,b			;8ac6
	adc a,a			;8ac7
	or 07eh			;8ac8
	adc a,b			;8aca
	rst 38h			;8acb
	ld h,a			;8acc
	rst 20h			;8acd
	adc a,a			;8ace
	or 07eh			;8acf
	ld (hl),a		;8ad1
	adc a,a			;8ad2
	ld h,a			;8ad3
	ld (hl),a		;8ad4
	ld a,(hl)		;8ad5
	rst 38h			;8ad6
	ld h,a			;8ad7
	ld (hl),a		;8ad8
	rst 20h			;8ad9
	or 077h			;8ada
	ld (hl),a		;8adc
	ld (hl),a		;8add
	or 077h			;8ade
	ld (hl),a		;8ae0
	halt			;8ae1
	sbc a,a			;8ae2
	ld de,0118fh		;8ae3
	sbc a,a			;8ae6
	ld de,0118fh		;8ae7
	rst 38h			;8aea
	pop af			;8aeb
	rra			;8aec
	adc a,b			;8aed
l8aeeh:
	rst 38h			;8aee
	pop af			;8aef
	adc a,b			;8af0
	ret m			;8af1
	rst 38h			;8af2
	rst 38h			;8af3
	jr l8aeeh		;8af4
	rst 38h			;8af6
	rst 38h			;8af7
	pop af			;8af8
	adc a,a			;8af9
	rst 38h			;8afa
	rst 38h			;8afb
	rst 38h			;8afc
	adc a,b			;8afd
	rst 38h			;8afe
	rst 38h			;8aff
	rst 38h			;8b00
	rst 38h			;8b01
	adc a,a			;8b02
	ld de,0111fh		;8b03
	adc a,a			;8b06
	ld de,0f188h		;8b07
	adc a,a			;8b0a
	adc a,b			;8b0b
	adc a,b			;8b0c
	pop af			;8b0d
	ret m			;8b0e
	ret m			;8b0f
	adc a,b			;8b10
	pop af			;8b11
	adc a,b			;8b12
	ret m			;8b13
	adc a,b			;8b14
	adc a,a			;8b15
	adc a,b			;8b16
	adc a,a			;8b17
	ret m			;8b18
	adc a,a			;8b19
	ret m			;8b1a
	adc a,b			;8b1b
	rst 38h			;8b1c
	adc a,b			;8b1d
	rst 38h			;8b1e
	adc a,b			;8b1f
	rst 38h			;8b20
	rst 38h			;8b21
	ld de,l8f1fh		;8b22
	rst 38h			;8b25
	ld de,l8f1fh		;8b26
	pop af			;8b29
	ld de,l8f1fh		;8b2a
	adc a,b			;8b2d
	ld de,l8f18h		;8b2e
	adc a,b			;8b31
	ld de,0ff88h		;8b32
	adc a,b			;8b35
	adc a,b			;8b36
	adc a,a			;8b37
	rst 38h			;8b38
	adc a,b			;8b39
	rst 38h			;8b3a
	rst 38h			;8b3b
	adc a,b			;8b3c
	rst 38h			;8b3d
	ret m			;8b3e
	adc a,b			;8b3f
	rst 38h			;8b40
	rst 38h			;8b41
	rst 38h			;8b42
	jp p,0f722h		;8b43
	rst 38h			;8b46
	rst 38h			;8b47
	ld (01ff7h),hl		;8b48
	rst 38h			;8b4b
	ld (l8ff7h),hl		;8b4c
	rst 38h			;8b4f
	rst 38h			;8b50
	rst 30h			;8b51
	adc a,a			;8b52
	cpl			;8b53
	or 066h			;8b54
	adc a,a			;8b56
	ld d,e			;8b57
	or 066h			;8b58
	rst 38h			;8b5a
	ld d,e			;8b5b
	or 066h			;8b5c
	rst 38h			;8b5e
	ld d,e			;8b5f
	or 066h			;8b60
	halt			;8b62
	ld h,(hl)		;8b63
	halt			;8b64
	rst 38h			;8b65
	halt			;8b66
	ld h,(hl)		;8b67
	ld h,(hl)		;8b68
	ld l,a			;8b69
	halt			;8b6a
	ld h,(hl)		;8b6b
	ld h,(hl)		;8b6c
	ld h,(hl)		;8b6d
	ld h,(hl)		;8b6e
	ld h,(hl)		;8b6f
	ld h,(hl)		;8b70
	ld h,(hl)		;8b71
	ld h,(hl)		;8b72
	ld h,(hl)		;8b73
	ld h,(hl)		;8b74
	ld h,(hl)		;8b75
	ld h,(hl)		;8b76
	ld h,(hl)		;8b77
	ld h,(hl)		;8b78
	ld h,(hl)		;8b79
	ld h,(hl)		;8b7a
	ld h,(hl)		;8b7b
	ld h,(hl)		;8b7c
	ld h,(hl)		;8b7d
	ld h,(hl)		;8b7e
	ld h,(hl)		;8b7f
	ld h,(hl)		;8b80
	ld h,(hl)		;8b81
	rst 38h			;8b82
	rst 38h			;8b83
	ret m			;8b84
	adc a,a			;8b85
	rst 38h			;8b86
	rst 38h			;8b87
	rst 38h			;8b88
	rst 38h			;8b89
	rst 38h			;8b8a
	rst 38h			;8b8b
	rst 38h			;8b8c
	rst 38h			;8b8d
	ld l,a			;8b8e
	rst 38h			;8b8f
	rst 38h			;8b90
	rst 38h			;8b91
	ld h,(hl)		;8b92
	rst 38h			;8b93
	rst 38h			;8b94
	rst 38h			;8b95
	ld h,(hl)		;8b96
	ld l,a			;8b97
	jp p,0662fh		;8b98
	rst 38h			;8b9b
	call p,0ff4fh		;8b9c
	rst 38h			;8b9f
	di			;8ba0
	ccf			;8ba1
	inc sp			;8ba2
	inc sp			;8ba3
	inc sp			;8ba4
	ld (03333h),a		;8ba5
	inc sp			;8ba8
	ld (03333h),a		;8ba9
	inc sp			;8bac
	ld (03333h),a		;8bad
	inc sp			;8bb0
	ld (03333h),a		;8bb1
	inc sp			;8bb4
	ld (03333h),a		;8bb5
	inc sp			;8bb8
	ld (03333h),a		;8bb9
	inc sp			;8bbc
	ld (022f2h),a		;8bbd
	ld (0ff2fh),hl		;8bc0
	ld h,a			;8bc3
	ld (hl),a		;8bc4
	ld (hl),a		;8bc5
	rst 38h			;8bc6
	ld h,(hl)		;8bc7
	ld h,a			;8bc8
	ld (hl),a		;8bc9
	rst 38h			;8bca
	ld h,(hl)		;8bcb
	ld h,(hl)		;8bcc
	ld h,(hl)		;8bcd
	rst 38h			;8bce
	or 066h			;8bcf
	ld h,(hl)		;8bd1
	rst 38h			;8bd2
	or 066h			;8bd3
	ld h,(hl)		;8bd5
	rst 38h			;8bd6
	rst 38h			;8bd7
	or 066h			;8bd8
	rst 38h			;8bda
	rst 38h			;8bdb
	rst 38h			;8bdc
	rst 38h			;8bdd
	rst 38h			;8bde
	rst 38h			;8bdf
	rst 38h			;8be0
	rst 38h			;8be1
	ld (hl),a		;8be2
	ld (hl),a		;8be3
	ld (hl),a		;8be4
	ld (hl),a		;8be5
	ld (hl),a		;8be6
	ld (hl),a		;8be7
	ld (hl),a		;8be8
	ld (hl),a		;8be9
	ld h,a			;8bea
	ld (hl),a		;8beb
	ld (hl),a		;8bec
	ld (hl),a		;8bed
	ld h,(hl)		;8bee
	ld h,(hl)		;8bef
	ld h,(hl)		;8bf0
	ld h,(hl)		;8bf1
	ld h,(hl)		;8bf2
	ld h,(hl)		;8bf3
	ld h,(hl)		;8bf4
	ld h,(hl)		;8bf5
	ld h,(hl)		;8bf6
	ld h,(hl)		;8bf7
	ld h,(hl)		;8bf8
	ld h,(hl)		;8bf9
	rst 38h			;8bfa
	or 066h			;8bfb
	ld h,(hl)		;8bfd
	ld h,(hl)		;8bfe
	ld h,(hl)		;8bff
	ld h,(hl)		;8c00
	ld h,(hl)		;8c01
	ld (hl),a		;8c02
	ld (hl),a		;8c03
	ld (hl),a		;8c04
	di			;8c05
	ld (hl),a		;8c06
	ld (hl),a		;8c07
	ld (hl),a		;8c08
	di			;8c09
	halt			;8c0a
	ld h,(hl)		;8c0b
	ld h,(hl)		;8c0c
	di			;8c0d
	ld h,(hl)		;8c0e
	ld h,(hl)		;8c0f
	ld h,(hl)		;8c10
	di			;8c11
	ld h,(hl)		;8c12
	ld h,(hl)		;8c13
	ld l,a			;8c14
	jp p,06666h		;8c15
	ld h,(hl)		;8c18
	rst 38h			;8c19
	ld h,(hl)		;8c1a
	ld h,(hl)		;8c1b
	ld h,(hl)		;8c1c
	rst 38h			;8c1d
	ld (hl),a		;8c1e
	ld (hl),a		;8c1f
	ld a,a			;8c20
	jp p,0434fh		;8c21
	rst 30h			;8c24
	ld (hl),a		;8c25
	ld c,a			;8c26
	ld b,e			;8c27
	rst 30h			;8c28
	ld (hl),a		;8c29
	ccf			;8c2a
	ld b,e			;8c2b
	or 066h			;8c2c
	ccf			;8c2e
	inc sp			;8c2f
	or 066h			;8c30
	cpl			;8c32
	ld (066f6h),hl		;8c33
	cpl			;8c36
	cpl			;8c37
	or 066h			;8c38
	rst 38h			;8c3a
	rst 38h			;8c3b
	or 077h			;8c3c
	cpl			;8c3e
	ld (077f7h),hl		;8c3f
	ld (hl),a		;8c42
	ld (hl),a		;8c43
	ld (hl),a		;8c44
	ld (hl),a		;8c45
	ld (hl),a		;8c46
	ld (hl),a		;8c47
	ld (hl),a		;8c48
	halt			;8c49
	ld h,(hl)		;8c4a
	ld h,(hl)		;8c4b
	ld h,(hl)		;8c4c
	ld h,(hl)		;8c4d
	ld h,(hl)		;8c4e
	ld h,(hl)		;8c4f
	ld h,(hl)		;8c50
	ld h,(hl)		;8c51
	ld h,(hl)		;8c52
	ld h,(hl)		;8c53
	ld h,(hl)		;8c54
	ld h,(hl)		;8c55
	ld h,(hl)		;8c56
	ld h,(hl)		;8c57
	ld h,(hl)		;8c58
	ld l,a			;8c59
	halt			;8c5a
	ld h,(hl)		;8c5b
	ld h,(hl)		;8c5c
	ld h,(hl)		;8c5d
	ld (hl),a		;8c5e
	ld (hl),a		;8c5f
	halt			;8c60
	ld h,(hl)		;8c61
	ld (hl),a		;8c62
	ld h,(hl)		;8c63
	ld h,(hl)		;8c64
	ld l,a			;8c65
	ld h,(hl)		;8c66
	ld h,(hl)		;8c67
	ld h,(hl)		;8c68
	rst 38h			;8c69
	ld h,(hl)		;8c6a
	ld h,(hl)		;8c6b
	ld h,(hl)		;8c6c
	rst 38h			;8c6d
	ld h,(hl)		;8c6e
	ld h,(hl)		;8c6f
	ld l,a			;8c70
	rst 38h			;8c71
	ld h,(hl)		;8c72
	rst 38h			;8c73
	rst 38h			;8c74
	rst 38h			;8c75
	rst 38h			;8c76
	rst 38h			;8c77
	rst 38h			;8c78
	rst 38h			;8c79
	ld h,(hl)		;8c7a
	ld l,a			;8c7b
	rst 38h			;8c7c
	rst 38h			;8c7d
	ld h,(hl)		;8c7e
	ld h,(hl)		;8c7f
	rst 38h			;8c80
	rst 38h			;8c81
	inc hl			;8c82
	inc sp			;8c83
	inc sp			;8c84
	inc sp			;8c85
	inc hl			;8c86
	inc sp			;8c87
	inc sp			;8c88
	inc sp			;8c89
	inc hl			;8c8a
	inc sp			;8c8b
	inc sp			;8c8c
	inc sp			;8c8d
	inc hl			;8c8e
	inc sp			;8c8f
l8c90h:
	inc sp			;8c90
	inc sp			;8c91
	inc hl			;8c92
	inc sp			;8c93
	inc sp			;8c94
	inc sp			;8c95
	inc hl			;8c96
	inc sp			;8c97
	inc sp			;8c98
	inc sp			;8c99
	inc hl			;8c9a
	inc sp			;8c9b
	inc sp			;8c9c
	inc sp			;8c9d
	jp p,02222h		;8c9e
	ld (088f8h),hl		;8ca1
	adc a,a			;8ca4
	rst 38h			;8ca5
	ret m			;8ca6
	adc a,a			;8ca7
	rst 38h			;8ca8
	rst 38h			;8ca9
	rst 38h			;8caa
	rst 38h			;8cab
	rst 38h			;8cac
	rst 38h			;8cad
	rst 38h			;8cae
	rst 38h			;8caf
	rst 38h			;8cb0
	rst 38h			;8cb1
	rst 38h			;8cb2
	rst 38h			;8cb3
	rst 38h			;8cb4
	or 0f2h			;8cb5
	cpl			;8cb7
	rst 38h			;8cb8
	or 0f4h			;8cb9
	ld c,a			;8cbb
	rst 38h			;8cbc
	rst 38h			;8cbd
	di			;8cbe
	ccf			;8cbf
	rst 38h			;8cc0
	rst 38h			;8cc1
	or 077h			;8cc2
	halt			;8cc4
	ld h,(hl)		;8cc5
	ld h,a			;8cc6
	ld (hl),a		;8cc7
	ld h,(hl)		;8cc8
	ld h,(hl)		;8cc9
	ld h,a			;8cca
	halt			;8ccb
	ld h,(hl)		;8ccc
	ld h,a			;8ccd
	ld h,(hl)		;8cce
	ld l,a			;8ccf
	ld h,(hl)		;8cd0
	ld h,a			;8cd1
	ld h,(hl)		;8cd2
	or 066h			;8cd3
	ld h,a			;8cd5
	ld l,a			;8cd6
	ld h,(hl)		;8cd7
	ld h,(hl)		;8cd8
	ld h,(hl)		;8cd9
	or 066h			;8cda
	ld h,(hl)		;8cdc
	ld h,(hl)		;8cdd
	or 066h			;8cde
	ld h,(hl)		;8ce0
	ld h,(hl)		;8ce1
	rst 38h			;8ce2
	rst 38h			;8ce3
	rst 30h			;8ce4
	pop af			;8ce5
	rst 38h			;8ce6
	rst 38h			;8ce7
	rst 30h			;8ce8
	rst 38h			;8ce9
	rst 38h			;8cea
	rst 38h			;8ceb
	rst 38h			;8cec
	ld a,a			;8ced
	rst 38h			;8cee
	rst 38h			;8cef
	rst 38h			;8cf0
	halt			;8cf1
	rst 38h			;8cf2
	rst 38h			;8cf3
	rst 38h			;8cf4
	rst 30h			;8cf5
	rst 38h			;8cf6
	rst 38h			;8cf7
	rst 38h			;8cf8
	rst 38h			;8cf9
	rst 38h			;8cfa
	rst 38h			;8cfb
	rst 38h			;8cfc
	rst 38h			;8cfd
	rst 38h			;8cfe
	rst 38h			;8cff
	rst 38h			;8d00
	rst 38h			;8d01
	adc a,b			;8d02
	rst 38h			;8d03
	rst 38h			;8d04
	adc a,a			;8d05
	jr l8c90h		;8d06
	adc a,b			;8d08
	adc a,b			;8d09
	ret m			;8d0a
	adc a,b			;8d0b
	adc a,b			;8d0c
	adc a,b			;8d0d
	rst 38h			;8d0e
	rst 38h			;8d0f
	adc a,b			;8d10
	adc a,b			;8d11
	ld h,(hl)		;8d12
	rst 38h			;8d13
	rst 38h			;8d14
	rst 38h			;8d15
	halt			;8d16
	ld h,(hl)		;8d17
	rst 38h			;8d18
	rst 38h			;8d19
	rst 38h			;8d1a
	ld h,(hl)		;8d1b
	ld h,(hl)		;8d1c
	ld h,(hl)		;8d1d
	rst 38h			;8d1e
	rst 38h			;8d1f
	rst 38h			;8d20
	rst 38h			;8d21
	rst 38h			;8d22
	rst 38h			;8d23
	rst 38h			;8d24
	rra			;8d25
	adc a,b			;8d26
	adc a,b			;8d27
	add a,c			;8d28
	rst 38h			;8d29
	adc a,b			;8d2a
	adc a,b			;8d2b
	adc a,a			;8d2c
	or 088h			;8d2d
	adc a,a			;8d2f
	rst 38h			;8d30
	or 0ffh			;8d31
	rst 38h			;8d33
	rst 38h			;8d34
	ld h,(hl)		;8d35
	rst 38h			;8d36
	or 066h			;8d37
	ld h,(hl)		;8d39
	ld h,(hl)		;8d3a
	ld h,(hl)		;8d3b
	rst 38h			;8d3c
	rst 38h			;8d3d
	rst 38h			;8d3e
	rst 38h			;8d3f
	rst 38h			;8d40
	rst 38h			;8d41
	ld a,a			;8d42
	ld d,e			;8d43
	or 066h			;8d44
	ld l,a			;8d46
	ld d,e			;8d47
	or 066h			;8d48
	ld l,a			;8d4a
	ld d,e			;8d4b
	or 066h			;8d4c
	ld l,a			;8d4e
	ld d,e			;8d4f
	or 066h			;8d50
	ld l,a			;8d52
	ld d,e			;8d53
	or 0ffh			;8d54
	rst 38h			;8d56
	ld d,e			;8d57
	rst 38h			;8d58
	rst 38h			;8d59
	rst 38h			;8d5a
	ld d,e			;8d5b
	rst 38h			;8d5c
	rst 38h			;8d5d
	rst 38h			;8d5e
	ld d,e			;8d5f
	rst 38h			;8d60
	rst 38h			;8d61
	ld h,(hl)		;8d62
	ld h,(hl)		;8d63
	ld h,(hl)		;8d64
	rst 38h			;8d65
	ld h,(hl)		;8d66
	ld h,(hl)		;8d67
	rst 38h			;8d68
	rst 38h			;8d69
	ld h,(hl)		;8d6a
	rst 38h			;8d6b
	rst 38h			;8d6c
	jp p,0ffffh		;8d6d
	rst 38h			;8d70
	ld (0ffffh),a		;8d71
	rst 38h			;8d74
	ld (0ffffh),a		;8d75
	di			;8d78
	ld (0ffffh),hl		;8d79
	di			;8d7c
	ld (0ffffh),hl		;8d7d
	di			;8d80
	ld (022f2h),hl		;8d81
	di			;8d84
	ccf			;8d85
	ld (0f322h),hl		;8d86
	ccf			;8d89
	ld (0f322h),hl		;8d8a
	pop af			;8d8d
	ld (0f322h),hl		;8d8e
	ret m			;8d91
	ld (0f322h),hl		;8d92
	ret m			;8d95
	ld (0ff22h),hl		;8d96
	ret m			;8d99
	ld (02222h),hl		;8d9a
	ret m			;8d9d
	ld (02222h),hl		;8d9e
	rst 38h			;8da1
	rst 38h			;8da2
	rst 38h			;8da3
	rst 38h			;8da4
	rst 38h			;8da5
	cp 0eeh			;8da6
	xor 0efh		;8da8
	pop hl			;8daa
	ld de,01e11h		;8dab
	ld de,01111h		;8dae
	ld e,011h		;8db1
	ld de,01e11h		;8db3
	adc a,b			;8db6
	adc a,b			;8db7
	adc a,b			;8db8
	adc a,(hl)		;8db9
	rst 38h			;8dba
	rst 38h			;8dbb
	rst 38h			;8dbc
	rst 38h			;8dbd
	ld de,01111h		;8dbe
	rra			;8dc1
	rst 38h			;8dc2
	rst 38h			;8dc3
	rst 38h			;8dc4
	or 0f1h			;8dc5
	rst 38h			;8dc7
	rst 38h			;8dc8
	ld h,(hl)		;8dc9
	jr $+1			;8dca
	or 067h			;8dcc
	adc a,b			;8dce
	rst 38h			;8dcf
	or 067h			;8dd0
	adc a,b			;8dd2
	rst 38h			;8dd3
	ld h,(hl)		;8dd4
	ld h,(hl)		;8dd5
	adc a,b			;8dd6
	rst 38h			;8dd7
	ld h,(hl)		;8dd8
	ld h,(hl)		;8dd9
	adc a,b			;8dda
	rst 38h			;8ddb
	ld h,(hl)		;8ddc
	ld h,(hl)		;8ddd
	adc a,a			;8dde
	rst 38h			;8ddf
	or 066h			;8de0
	ld h,(hl)		;8de2
	ld h,(hl)		;8de3
	ld (hl),a		;8de4
	ld (hl),a		;8de5
	ld (hl),a		;8de6
	ld (hl),a		;8de7
	ld (hl),a		;8de8
	ld (hl),a		;8de9
	ld (hl),a		;8dea
	ld (hl),a		;8deb
	ld (hl),a		;8dec
	ld (hl),a		;8ded
	ld (hl),a		;8dee
	ld (hl),a		;8def
	ld (hl),a		;8df0
	ld (hl),a		;8df1
	ld (hl),a		;8df2
	ld (hl),a		;8df3
	ld (hl),a		;8df4
	ld (hl),a		;8df5
	ld h,(hl)		;8df6
	ld h,(hl)		;8df7
	ld h,(hl)		;8df8
	ld h,(hl)		;8df9
	ld h,(hl)		;8dfa
	ld h,(hl)		;8dfb
	ld h,(hl)		;8dfc
	ld h,a			;8dfd
	ld h,(hl)		;8dfe
	ld h,(hl)		;8dff
	ld h,(hl)		;8e00
	ld (hl),a		;8e01
	ld (hl),a		;8e02
	ld (hl),a		;8e03
	ld a,a			;8e04
	ld (07777h),hl		;8e05
	ld a,a			;8e08
	inc sp			;8e09
	ld (hl),a		;8e0a
	ld (hl),a		;8e0b
	ld a,a			;8e0c
	inc (hl)		;8e0d
	ld (hl),a		;8e0e
	ld (hl),a		;8e0f
	ld a,a			;8e10
	inc (hl)		;8e11
	ld h,(hl)		;8e12
	ld h,(hl)		;8e13
	ld l,a			;8e14
	rst 38h			;8e15
	ld h,(hl)		;8e16
	ld (hl),a		;8e17
	ld a,a			;8e18
	ld b,h			;8e19
	ld (hl),a		;8e1a
	ld (hl),a		;8e1b
	ld a,a			;8e1c
	ld b,e			;8e1d
	halt			;8e1e
	ld h,(hl)		;8e1f
l8e20h:
	ld l,a			;8e20
	inc sp			;8e21
	rst 38h			;8e22
	inc sp			;8e23
	rst 30h			;8e24
	ld (hl),a		;8e25
	rst 38h			;8e26
	ld b,e			;8e27
	rst 30h			;8e28
	ld (hl),a		;8e29
	rst 38h			;8e2a
	ld b,e			;8e2b
	rst 30h			;8e2c
	ld (hl),a		;8e2d
	rst 38h			;8e2e
	ld c,a			;8e2f
	rst 30h			;8e30
	ld (hl),a		;8e31
	rst 38h			;8e32
	ld b,e			;8e33
	rst 30h			;8e34
	ld (hl),a		;8e35
	rst 38h			;8e36
	ld b,h			;8e37
	rst 30h			;8e38
	ld (hl),a		;8e39
	rst 38h			;8e3a
	inc sp			;8e3b
	rst 30h			;8e3c
	ld (hl),a		;8e3d
	rst 38h			;8e3e
	inc sp			;8e3f
	rst 30h			;8e40
	ld (hl),a		;8e41
	ld (hl),a		;8e42
	ld (hl),a		;8e43
	ld (hl),a		;8e44
	ld (hl),a		;8e45
	ld (hl),a		;8e46
	ld (hl),a		;8e47
	ld (hl),a		;8e48
	ld (hl),a		;8e49
	ld (hl),a		;8e4a
	ld (hl),a		;8e4b
	ld (hl),a		;8e4c
	ld (hl),a		;8e4d
	ld (hl),a		;8e4e
	ld (hl),a		;8e4f
	ld (hl),a		;8e50
	ld (hl),a		;8e51
	ld h,a			;8e52
	ld h,(hl)		;8e53
	ld h,(hl)		;8e54
	ld (hl),a		;8e55
	ld (hl),a		;8e56
	ld (hl),a		;8e57
	ld h,(hl)		;8e58
	ld h,(hl)		;8e59
	ld (hl),a		;8e5a
	ld (hl),a		;8e5b
	ld (hl),a		;8e5c
	halt			;8e5d
	ld (hl),a		;8e5e
	ld (hl),a		;8e5f
	ld (hl),a		;8e60
	ld (hl),a		;8e61
	halt			;8e62
	ld h,(hl)		;8e63
	ld l,a			;8e64
	rst 38h			;8e65
	ld (hl),a		;8e66
	halt			;8e67
	ld l,a			;8e68
	rra			;8e69
	ld (hl),a		;8e6a
	ld (hl),a		;8e6b
	ld l,a			;8e6c
	add a,c			;8e6d
	ld (hl),a		;8e6e
	ld (hl),a		;8e6f
	ld l,a			;8e70
	adc a,b			;8e71
	ld (hl),a		;8e72
	halt			;8e73
	ld l,a			;8e74
	adc a,b			;8e75
	ld h,(hl)		;8e76
	ld h,(hl)		;8e77
	ld l,a			;8e78
	adc a,b			;8e79
	ld h,(hl)		;8e7a
	ld l,a			;8e7b
	rst 38h			;8e7c
	adc a,b			;8e7d
	halt			;8e7e
	ld l,a			;8e7f
	rst 38h			;8e80
	ret m			;8e81
	rst 38h			;8e82
	rst 38h			;8e83
	rst 38h			;8e84
	jp p,0eefeh		;8e85
	xor 0efh		;8e88
	pop hl			;8e8a
	ld de,01e11h		;8e8b
	pop hl			;8e8e
	ld de,01111h		;8e8f
	pop hl			;8e92
	ld de,01111h		;8e93
	jr l8e20h		;8e96
	adc a,b			;8e98
	adc a,b			;8e99
	rst 38h			;8e9a
	rst 38h			;8e9b
	rst 38h			;8e9c
	rst 38h			;8e9d
	pop af			;8e9e
	ld de,01111h		;8e9f
	di			;8ea2
	ccf			;8ea3
	rst 38h			;8ea4
	rst 38h			;8ea5
	di			;8ea6
	ccf			;8ea7
	rst 38h			;8ea8
	rst 38h			;8ea9
	adc a,a			;8eaa
	ccf			;8eab
	ld (l8f22h),hl		;8eac
	ccf			;8eaf
	ld (l8f22h),hl		;8eb0
	ccf			;8eb3
	ld (l8f22h),hl		;8eb4
	rst 38h			;8eb7
	ld (l8f22h),hl		;8eb8
	ld (02222h),hl		;8ebb
	rst 38h			;8ebe
	ld (02222h),hl		;8ebf
	ld h,(hl)		;8ec2
	ld h,(hl)		;8ec3
	ld h,(hl)		;8ec4
	ld h,(hl)		;8ec5
	or 066h			;8ec6
	ld h,(hl)		;8ec8
	ld h,(hl)		;8ec9
	rst 38h			;8eca
	or 066h			;8ecb
	ld h,(hl)		;8ecd
	cpl			;8ece
	rst 38h			;8ecf
	or 066h			;8ed0
	ccf			;8ed2
	rst 38h			;8ed3
	rst 38h			;8ed4
	ld h,(hl)		;8ed5
	inc hl			;8ed6
	rst 38h			;8ed7
	rst 38h			;8ed8
	rst 38h			;8ed9
	inc hl			;8eda
	rst 38h			;8edb
	rst 38h			;8edc
	rst 38h			;8edd
	inc hl			;8ede
	rst 38h			;8edf
	rst 38h			;8ee0
	rst 38h			;8ee1
	rst 28h			;8ee2
	xor d			;8ee3
	sbc a,c			;8ee4
	sbc a,c			;8ee5
	ld e,0f9h		;8ee6
	sbc a,c			;8ee8
	ld sp,hl		;8ee9
	add a,c			;8eea
	ld sp,hl		;8eeb
	sbc a,c			;8eec
	ld sp,hl		;8eed
	ret m			;8eee
	ld sp,hl		;8eef
	sbc a,c			;8ef0
	ld sp,hl		;8ef1
	ret m			;8ef2
	ld sp,hl		;8ef3
	sbc a,a			;8ef4
	ld sp,hl		;8ef5
	rst 38h			;8ef6
	ld sp,hl		;8ef7
	sbc a,c			;8ef8
	sbc a,c			;8ef9
	rst 20h			;8efa
	rst 38h			;8efb
	ld sp,hl		;8efc
	sbc a,c			;8efd
	xor 077h		;8efe
	ld a,a			;8f00
	ld sp,hl		;8f01
	sbc a,a			;8f02
	sbc a,c			;8f03
	ld sp,hl		;8f04
	sbc a,c			;8f05
	sbc a,a			;8f06
	sbc a,c			;8f07
	ld sp,hl		;8f08
	sbc a,c			;8f09
	sbc a,a			;8f0a
	sbc a,a			;8f0b
	ld sp,hl		;8f0c
	sbc a,c			;8f0d
	rst 38h			;8f0e
	sbc a,c			;8f0f
	sbc a,c			;8f10
l8f11h:
	sbc a,c			;8f11
	sbc a,a			;8f12
	sbc a,c			;8f13
	sbc a,c			;8f14
	sbc a,c			;8f15
	sbc a,c			;8f16
	sbc a,c			;8f17
l8f18h:
	sbc a,c			;8f18
	sbc a,c			;8f19
	sbc a,c			;8f1a
	sbc a,c			;8f1b
	sbc a,c			;8f1c
	sbc a,c			;8f1d
	sbc a,c			;8f1e
l8f1fh:
	sbc a,c			;8f1f
	sbc a,c			;8f20
	sbc a,c			;8f21
l8f22h:
	xor a			;8f22
	ld sp,hl		;8f23
	xor c			;8f24
	ld sp,hl		;8f25
	xor a			;8f26
	ld sp,hl		;8f27
	xor c			;8f28
	ld sp,hl		;8f29
	xor a			;8f2a
	ld sp,hl		;8f2b
	xor c			;8f2c
	ld sp,hl		;8f2d
	xor a			;8f2e
	ld sp,hl		;8f2f
	rst 38h			;8f30
	ld sp,hl		;8f31
	xor a			;8f32
	ld sp,hl		;8f33
	sbc a,c			;8f34
	sbc a,c			;8f35
	xor a			;8f36
	ld sp,hl		;8f37
	sbc a,a			;8f38
	rst 38h			;8f39
	xor a			;8f3a
	rst 38h			;8f3b
	rst 38h			;8f3c
	rst 38h			;8f3d
	rst 38h			;8f3e
	rst 38h			;8f3f
	rst 38h			;8f40
	rst 38h			;8f41
	sbc a,d			;8f42
	sbc a,a			;8f43
	sbc a,a			;8f44
	ld sp,hl		;8f45
	sbc a,a			;8f46
	rst 38h			;8f47
	sbc a,a			;8f48
	ld sp,hl		;8f49
	sbc a,c			;8f4a
	sbc a,c			;8f4b
	sbc a,a			;8f4c
	ld sp,hl		;8f4d
	sbc a,c			;8f4e
	sbc a,c			;8f4f
	rst 38h			;8f50
	rst 38h			;8f51
	sbc a,a			;8f52
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
	xor 0eeh		;8f62
	rst 20h			;8f64
	ld a,a			;8f65
	rst 20h			;8f66
	xor 0eeh		;8f67
	rst 20h			;8f69
	ld a,(hl)		;8f6a
	xor 077h		;8f6b
	xor 0eeh		;8f6d
	ld (hl),a		;8f6f
	ld a,(hl)		;8f70
	rst 20h			;8f71
	rst 20h			;8f72
	ld (hl),a		;8f73
	ld (hl),a		;8f74
	ld a,(hl)		;8f75
	ld (hl),a		;8f76
	ld h,(hl)		;8f77
	ld (hl),a		;8f78
	xor 066h		;8f79
	ld (hl),a		;8f7b
	ld (hl),a		;8f7c
	rst 20h			;8f7d
	ld h,(hl)		;8f7e
	ld (hl),a		;8f7f
	ld a,(hl)		;8f80
	ld (hl),a		;8f81
	rst 38h			;8f82
	sbc a,c			;8f83
	rst 38h			;8f84
	rst 38h			;8f85
	ld (hl),a		;8f86
	rst 38h			;8f87
l8f88h:
	rst 38h			;8f88
	rst 38h			;8f89
	xor 077h		;8f8a
	ld a,a			;8f8c
	rst 38h			;8f8d
	xor 0eeh		;8f8e
	ld (hl),a		;8f90
	ld (hl),a		;8f91
	xor 0e7h		;8f92
	ld (hl),a		;8f94
	ld (hl),a		;8f95
	rst 20h			;8f96
	ld (hl),a		;8f97
	ld (hl),a		;8f98
	ld (hl),a		;8f99
	ld (hl),a		;8f9a
	ld (hl),a		;8f9b
	ld (hl),a		;8f9c
	ld (hl),a		;8f9d
	ld (hl),a		;8f9e
	ld (hl),a		;8f9f
	ld (hl),a		;8fa0
	ld (hl),a		;8fa1
	ld h,a			;8fa2
	ld (hl),a		;8fa3
	ld (hl),a		;8fa4
	halt			;8fa5
	ld (hl),a		;8fa6
	ld (hl),a		;8fa7
	halt			;8fa8
	ld h,(hl)		;8fa9
	ld (hl),a		;8faa
	ld (hl),a		;8fab
	ld h,(hl)		;8fac
	ld h,a			;8fad
	ld (hl),a		;8fae
	halt			;8faf
	ld h,(hl)		;8fb0
	ld (hl),a		;8fb1
	ld (hl),a		;8fb2
	ld h,(hl)		;8fb3
	ld h,(hl)		;8fb4
	ld h,(hl)		;8fb5
	ld h,(hl)		;8fb6
	ld h,(hl)		;8fb7
	ld h,(hl)		;8fb8
	ld h,(hl)		;8fb9
	ld h,(hl)		;8fba
	ld h,(hl)		;8fbb
	ld h,(hl)		;8fbc
	ld h,(hl)		;8fbd
	ld h,(hl)		;8fbe
	ld h,(hl)		;8fbf
	ld h,(hl)		;8fc0
	ld h,(hl)		;8fc1
	ld h,a			;8fc2
	ld (hl),a		;8fc3
	ld (hl),a		;8fc4
	ld (hl),a		;8fc5
	ld (hl),a		;8fc6
	ld (hl),a		;8fc7
	ld (hl),a		;8fc8
	ld (hl),a		;8fc9
	ld (hl),a		;8fca
	ld (hl),a		;8fcb
	ld (hl),a		;8fcc
	ld (hl),a		;8fcd
	ld (hl),a		;8fce
	ld (hl),a		;8fcf
	ld (hl),a		;8fd0
	ld (hl),a		;8fd1
	ld h,a			;8fd2
	ld (hl),a		;8fd3
	ld (hl),a		;8fd4
	ld (hl),a		;8fd5
	ld h,(hl)		;8fd6
	ld (hl),a		;8fd7
	ld (hl),a		;8fd8
	ld (hl),a		;8fd9
	ld h,(hl)		;8fda
	ld h,a			;8fdb
	ld (hl),a		;8fdc
	ld (hl),a		;8fdd
	ld h,(hl)		;8fde
	ld h,a			;8fdf
	ld (hl),a		;8fe0
	ld (hl),a		;8fe1
	ld h,(hl)		;8fe2
	ld h,(hl)		;8fe3
	ld h,(hl)		;8fe4
	ld h,(hl)		;8fe5
	ld h,(hl)		;8fe6
	ld h,(hl)		;8fe7
	ld h,(hl)		;8fe8
	ld h,(hl)		;8fe9
	ld h,(hl)		;8fea
	ld h,(hl)		;8feb
	ld h,(hl)		;8fec
	ld h,(hl)		;8fed
	ld h,(hl)		;8fee
	ld h,(hl)		;8fef
	ld h,(hl)		;8ff0
	ld h,(hl)		;8ff1
	ld h,(hl)		;8ff2
	ld h,(hl)		;8ff3
	ld h,(hl)		;8ff4
	ld h,(hl)		;8ff5
	ld h,(hl)		;8ff6
l8ff7h:
	ld h,(hl)		;8ff7
	ld h,(hl)		;8ff8
	ld h,(hl)		;8ff9
	ld h,(hl)		;8ffa
	ld h,(hl)		;8ffb
	ld h,(hl)		;8ffc
	ld h,(hl)		;8ffd
	ld h,(hl)		;8ffe
	ld h,(hl)		;8fff
	ld h,(hl)		;9000
	ld h,(hl)		;9001
	ld h,(hl)		;9002
	ld h,(hl)		;9003
	ld h,(hl)		;9004
	ld h,(hl)		;9005
	ld h,(hl)		;9006
	ld h,(hl)		;9007
	ld h,(hl)		;9008
	ld h,(hl)		;9009
	ld h,(hl)		;900a
	ld h,(hl)		;900b
	ld h,(hl)		;900c
	ld l,a			;900d
	ld h,(hl)		;900e
	ld h,(hl)		;900f
	ld h,(hl)		;9010
	ld l,a			;9011
	ld h,(hl)		;9012
	ld h,(hl)		;9013
	ld h,(hl)		;9014
	ld h,(hl)		;9015
	ld h,(hl)		;9016
	ld h,(hl)		;9017
	ld h,(hl)		;9018
	ld h,(hl)		;9019
	ld h,(hl)		;901a
	ld h,(hl)		;901b
	ld h,(hl)		;901c
	ld h,(hl)		;901d
	ld h,(hl)		;901e
	ld h,(hl)		;901f
	ld h,(hl)		;9020
	ld h,(hl)		;9021
	ld h,(hl)		;9022
	ld h,(hl)		;9023
	ld l,a			;9024
	halt			;9025
	ld h,(hl)		;9026
	ld h,(hl)		;9027
	ld l,a			;9028
	ld d,e			;9029
	ld h,(hl)		;902a
	ld h,(hl)		;902b
	ld l,a			;902c
	ld d,e			;902d
	ld h,(hl)		;902e
	ld h,(hl)		;902f
	ld l,a			;9030
	ld d,e			;9031
	ld h,(hl)		;9032
	ld h,(hl)		;9033
	ld l,a			;9034
	ld d,e			;9035
	ld h,(hl)		;9036
	ld h,(hl)		;9037
	ld l,a			;9038
	ld d,e			;9039
	rst 38h			;903a
	ld h,(hl)		;903b
	ld l,a			;903c
	ld d,e			;903d
	rst 38h			;903e
	rst 38h			;903f
	ld l,a			;9040
	ld d,e			;9041
	ld h,(hl)		;9042
	ld h,(hl)		;9043
	ld h,a			;9044
	ld (hl),a		;9045
	or 066h			;9046
	ld h,(hl)		;9048
	ld h,(hl)		;9049
	or 066h			;904a
	ld h,(hl)		;904c
	ld h,(hl)		;904d
	rst 38h			;904e
	ld h,(hl)		;904f
	ld h,(hl)		;9050
	ld h,(hl)		;9051
	rst 38h			;9052
	or 066h			;9053
	ld h,(hl)		;9055
	rst 38h			;9056
	or 066h			;9057
	ld h,(hl)		;9059
	or 0ffh			;905a
	or 066h			;905c
	or 066h			;905e
	rst 38h			;9060
	rst 38h			;9061
	ld h,(hl)		;9062
	ld h,(hl)		;9063
	ld h,(hl)		;9064
	ld h,(hl)		;9065
	ld h,(hl)		;9066
	ld h,(hl)		;9067
	ld h,(hl)		;9068
	ld h,(hl)		;9069
	ld h,(hl)		;906a
	ld h,(hl)		;906b
	ld h,(hl)		;906c
	ld h,(hl)		;906d
	ld h,(hl)		;906e
	ld h,(hl)		;906f
	ld h,(hl)		;9070
	ld h,(hl)		;9071
	ld h,(hl)		;9072
	ld h,(hl)		;9073
	ld h,(hl)		;9074
	ld h,(hl)		;9075
	ld h,(hl)		;9076
	ld h,(hl)		;9077
	ld h,(hl)		;9078
	ld h,(hl)		;9079
	ld h,(hl)		;907a
	ld h,(hl)		;907b
	ld h,(hl)		;907c
	ld h,(hl)		;907d
	or 066h			;907e
	ld h,(hl)		;9080
	ld h,(hl)		;9081
	ld h,(hl)		;9082
	ld h,(hl)		;9083
	ld h,(hl)		;9084
	ld h,(hl)		;9085
	ld h,(hl)		;9086
	ld h,(hl)		;9087
	ld h,(hl)		;9088
	ld h,(hl)		;9089
	ld h,(hl)		;908a
	ld h,(hl)		;908b
	ld h,(hl)		;908c
	ld h,(hl)		;908d
	ld h,(hl)		;908e
	ld h,(hl)		;908f
	ld h,(hl)		;9090
	ld h,(hl)		;9091
	ld h,(hl)		;9092
	ld h,(hl)		;9093
	ld h,(hl)		;9094
	ld l,a			;9095
	ld h,(hl)		;9096
	ld h,(hl)		;9097
	ld h,(hl)		;9098
	ld l,a			;9099
	ld h,(hl)		;909a
	ld h,(hl)		;909b
	rst 38h			;909c
	rst 38h			;909d
	ld h,(hl)		;909e
	ld h,(hl)		;909f
	rst 38h			;90a0
	rst 38h			;90a1
	jr z,l90bch		;90a2
	rlca			;90a4
	inc (hl)		;90a5
	inc c			;90a6
	inc bc			;90a7
	inc de			;90a8
	rrca			;90a9
	nop			;90aa
	inc c			;90ab
	inc bc			;90ac
	nop			;90ad
	rlca			;90ae
	nop			;90af
	nop			;90b0
	nop			;90b1
	nop			;90b2
	nop			;90b3
	nop			;90b4
	nop			;90b5
	nop			;90b6
	nop			;90b7
	nop			;90b8
	nop			;90b9
	jr z,l90ech		;90ba
l90bch:
	ret nz			;90bc
	ld e,b			;90bd
	ld h,b			;90be
	add a,b			;90bf
	sub b			;90c0
	ret po			;90c1
	nop			;90c2
	ld h,b			;90c3
	add a,b			;90c4
	nop			;90c5
	ret nz			;90c6
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
	and b			;90d2
	ld h,b			;90d3
	rra			;90d4
	or b			;90d5
	ld (hl),b		;90d6
	rrca			;90d7
	ret nc			;90d8
	jr nc,l90eah		;90d9
	ld e,h			;90db
	inc a			;90dc
	inc bc			;90dd
	ld h,a			;90de
	rra			;90df
	nop			;90e0
	jr c,l90eah		;90e1
	nop			;90e3
	rrca			;90e4
	nop			;90e5
	nop			;90e6
	nop			;90e7
	nop			;90e8
	nop			;90e9
l90eah:
	ld a,(bc)		;90ea
	inc c			;90eb
l90ech:
	ret p			;90ec
	ld a,(de)		;90ed
	inc e			;90ee
	ret po			;90ef
	ld d,018h		;90f0
	ret po			;90f2
	ld (hl),h		;90f3
	ld a,b			;90f4
	add a,b			;90f5
	call z,000f0h		;90f6
	jr c,$-62		;90f9
	nop			;90fb
	ret po			;90fc
	nop			;90fd
	nop			;90fe
	nop			;90ff
	nop			;9100
	nop			;9101
	add a,b			;9102
	add a,b			;9103
	ld a,a			;9104
	add a,b			;9105
	add a,b			;9106
	ld a,a			;9107
	add a,b			;9108
	add a,b			;9109
	ld a,a			;910a
	ld b,b			;910b
	ld b,b			;910c
	ccf			;910d
	ld h,b			;910e
	ld h,b			;910f
	rra			;9110
	jr nc,l9143h		;9111
	rrca			;9113
	rrca			;9114
	rrca			;9115
	nop			;9116
	nop			;9117
	nop			;9118
	nop			;9119
	ld (bc),a		;911a
	ld (bc),a		;911b
	call m,00202h		;911c
	call m,00202h		;911f
	call m,00404h		;9122
	ret m			;9125
	inc c			;9126
	inc c			;9127
	ret p			;9128
	jr l9143h		;9129
	ret po			;912b
	ret po			;912c
	ret po			;912d
	nop			;912e
	nop			;912f
	nop			;9130
	nop			;9131
	inc a			;9132
	rst 38h			;9133
	nop			;9134
	inc a			;9135
	rst 38h			;9136
	nop			;9137
	in a,(024h)		;9138
	nop			;913a
	rst 38h			;913b
	rst 20h			;913c
	jr l9157h		;913d
	rst 38h			;913f
	nop			;9140
	jr $+1			;9141
l9143h:
	nop			;9143
	nop			;9144
	rst 38h			;9145
	nop			;9146
	add a,c			;9147
	ld a,(hl)		;9148
	nop			;9149
	add a,c			;914a
	ld a,(hl)		;914b
	nop			;914c
	jp 0003ch		;914d
	rst 20h			;9150
	jr l9153h		;9151
l9153h:
	rst 38h			;9153
	nop			;9154
	nop			;9155
	rst 38h			;9156
l9157h:
	nop			;9157
	nop			;9158
	rst 38h			;9159
	nop			;915a
	nop			;915b
	ld a,(hl)		;915c
	add a,c			;915d
	add a,c			;915e
	nop			;915f
	rst 38h			;9160
	rst 38h			;9161
	ld e,d			;9162
	rst 20h			;9163
	cp l			;9164
	jr $+1			;9165
	and l			;9167
	jr $+1			;9168
	and l			;916a
	ld e,d			;916b
	cp l			;916c
	and l			;916d
	nop			;916e
	rst 38h			;916f
	rst 20h			;9170
	nop			;9171
	rst 38h			;9172
	rst 38h			;9173
	inc a			;9174
	jp 000c3h		;9175
	rst 38h			;9178
	jp 0ff00h		;9179
	rst 38h			;917c
	rst 38h			;917d
	nop			;917e
	rst 38h			;917f
	rst 38h			;9180
	ld a,(hl)		;9181
	add a,c			;9182
	add a,c			;9183
	rst 38h			;9184
	nop			;9185
	add a,c			;9186
	rst 38h			;9187
	nop			;9188
	add a,c			;9189
	rst 38h			;918a
	nop			;918b
	add a,c			;918c
	rst 38h			;918d
	nop			;918e
	add a,c			;918f
	rst 38h			;9190
	nop			;9191
	ld a,(hl)		;9192
	add a,c			;9193
	nop			;9194
	nop			;9195
	rst 38h			;9196
	rst 38h			;9197
	nop			;9198
	rst 38h			;9199
	rst 38h			;919a
	nop			;919b
	rst 38h			;919c
	rst 38h			;919d
	nop			;919e
	rst 38h			;919f
	nop			;91a0
	rst 38h			;91a1
	rst 38h			;91a2
	nop			;91a3
	rst 38h			;91a4
	rst 38h			;91a5
	nop			;91a6
	nop			;91a7
	rst 38h			;91a8
	rst 38h			;91a9
	rst 38h			;91aa
	nop			;91ab
	rst 38h			;91ac
	rst 38h			;91ad
	rst 38h			;91ae
	nop			;91af
	rst 38h			;91b0
	rst 38h			;91b1
	nop			;91b2
	rst 38h			;91b3
	rst 38h			;91b4
	nop			;91b5
	rst 38h			;91b6
	rst 38h			;91b7
	nop			;91b8
	rst 38h			;91b9
	rst 38h			;91ba
	nop			;91bb
	rst 38h			;91bc
	rst 38h			;91bd
	nop			;91be
	rst 38h			;91bf
	rst 38h			;91c0
	nop			;91c1
	rst 38h			;91c2
	rst 38h			;91c3
	nop			;91c4
	rst 38h			;91c5
	rst 38h			;91c6
	nop			;91c7
	rst 38h			;91c8
	rst 38h			;91c9
	nop			;91ca
	rst 38h			;91cb
	rst 38h			;91cc
	nop			;91cd
	rst 38h			;91ce
	rst 38h			;91cf
	nop			;91d0
	rst 38h			;91d1
	rst 38h			;91d2
	nop			;91d3
	rst 38h			;91d4
	rst 38h			;91d5
	nop			;91d6
	rst 38h			;91d7
	rst 38h			;91d8
	nop			;91d9
	rst 38h			;91da
	rst 38h			;91db
	nop			;91dc
	rst 38h			;91dd
	rst 38h			;91de
	nop			;91df
	rst 38h			;91e0
	rst 38h			;91e1
	nop			;91e2
	rst 38h			;91e3
	rst 38h			;91e4
	nop			;91e5
	rst 38h			;91e6
	rst 38h			;91e7
	nop			;91e8
	rst 38h			;91e9
	rst 38h			;91ea
	nop			;91eb
	rst 38h			;91ec
	nop			;91ed
	nop			;91ee
	nop			;91ef
	rst 38h			;91f0
	rst 38h			;91f1
	rst 38h			;91f2
	nop			;91f3
	nop			;91f4
	nop			;91f5
	rst 38h			;91f6
	nop			;91f7
	rst 38h			;91f8
	nop			;91f9
	rst 38h			;91fa
	rst 38h			;91fb
	rst 38h			;91fc
	nop			;91fd
	rst 38h			;91fe
	rst 38h			;91ff
	nop			;9200
	rst 38h			;9201
	rst 38h			;9202
	nop			;9203
	rst 38h			;9204
	rst 38h			;9205
	nop			;9206
	nop			;9207
	rst 38h			;9208
	nop			;9209
	nop			;920a
	rst 38h			;920b
	rst 38h			;920c
	rst 38h			;920d
	rst 38h			;920e
	nop			;920f
	nop			;9210
	rst 38h			;9211
	nop			;9212
	nop			;9213
	rst 38h			;9214
	nop			;9215
	rst 38h			;9216
	nop			;9217
	nop			;9218
	nop			;9219
	rst 38h			;921a
	rst 38h			;921b
	nop			;921c
	rst 38h			;921d
	rst 38h			;921e
	nop			;921f
	rst 38h			;9220
	rst 38h			;9221
	nop			;9222
	rst 38h			;9223
	nop			;9224
	rst 38h			;9225
	nop			;9226
	nop			;9227
	nop			;9228
	rst 38h			;9229
	rst 38h			;922a
	nop			;922b
	rst 38h			;922c
	nop			;922d
	nop			;922e
	rst 38h			;922f
	rst 38h			;9230
	rst 38h			;9231
	nop			;9232
	rst 38h			;9233
	rst 38h			;9234
	rst 38h			;9235
	nop			;9236
	rst 38h			;9237
	rst 38h			;9238
	nop			;9239
	rst 38h			;923a
	rst 38h			;923b
	nop			;923c
	ret m			;923d
	ret m			;923e
	nop			;923f
	ei			;9240
	ei			;9241
	nop			;9242
	ret m			;9243
	ret m			;9244
	nop			;9245
	ei			;9246
	ei			;9247
	nop			;9248
	ret m			;9249
	ret m			;924a
	nop			;924b
	rst 38h			;924c
	ld a,a			;924d
	add a,b			;924e
	rst 38h			;924f
	ld a,a			;9250
	add a,b			;9251
	rst 38h			;9252
	rst 38h			;9253
	nop			;9254
	ld b,d			;9255
	ld b,d			;9256
	nop			;9257
	jp c,000dah		;9258
	halt			;925b
	halt			;925c
	nop			;925d
	ld l,a			;925e
	ld l,a			;925f
	nop			;9260
	ld l,(hl)		;9261
	ld l,(hl)		;9262
	nop			;9263
	rst 38h			;9264
	rst 38h			;9265
	nop			;9266
	rst 38h			;9267
	inc a			;9268
	add a,c			;9269
	cp l			;926a
	rst 38h			;926b
	ld b,d			;926c
	cp l			;926d
	rst 38h			;926e
	ld b,d			;926f
	inc a			;9270
	rst 38h			;9271
	jp 0ffffh		;9272
	nop			;9275
	nop			;9276
	rst 38h			;9277
	nop			;9278
	rst 38h			;9279
	nop			;927a
	nop			;927b
	nop			;927c
	rst 38h			;927d
	rst 38h			;927e
	rst 38h			;927f
	rst 38h			;9280
	nop			;9281
	rst 38h			;9282
	rst 38h			;9283
	nop			;9284
	rra			;9285
l9286h:
	rra			;9286
	nop			;9287
	rst 38h			;9288
	rst 38h			;9289
	nop			;928a
	rra			;928b
	rra			;928c
	nop			;928d
	rst 18h			;928e
	rst 18h			;928f
	nop			;9290
	rra			;9291
	rra			;9292
	nop			;9293
	rst 38h			;9294
	cp 001h			;9295
	rst 38h			;9297
	cp 001h			;9298
	ret po			;929a
	ld a,a			;929b
	add a,b			;929c
	add a,b			;929d
	rst 38h			;929e
	nop			;929f
	adc a,a			;92a0
	ret p			;92a1
	nop			;92a2
	and b			;92a3
	push de			;92a4
	dec d			;92a5
	and b			;92a6
	adc a,00fh		;92a7
	and b			;92a9
	rst 18h			;92aa
	rra			;92ab
	and b			;92ac
	rst 8			;92ad
	rrca			;92ae
	and e			;92af
	call c,0001ch		;92b0
	rst 38h			;92b3
	nop			;92b4
	nop			;92b5
	rst 38h			;92b6
	nop			;92b7
	rst 38h			;92b8
	nop			;92b9
	nop			;92ba
	nop			;92bb
	ld d,l			;92bc
	ld d,l			;92bd
	nop			;92be
	rst 38h			;92bf
	rst 38h			;92c0
	nop			;92c1
	rst 38h			;92c2
	rst 38h			;92c3
	nop			;92c4
	rst 38h			;92c5
	rst 38h			;92c6
	rst 38h			;92c7
	nop			;92c8
	nop			;92c9
	rlca			;92ca
	cp 001h			;92cb
	ld bc,000ffh		;92cd
	ld sp,hl		;92d0
	rlca			;92d1
	nop			;92d2
	dec b			;92d3
	ld d,e			;92d4
	ld d,b			;92d5
	dec b			;92d6
	ld a,e			;92d7
	ret m			;92d8
	dec b			;92d9
	di			;92da
l92dbh:
	ret p			;92db
	dec b			;92dc
	ei			;92dd
l92deh:
	ret m			;92de
	push bc			;92df
	inc sp			;92e0
l92e1h:
	jr nc,l9286h		;92e1
	call z,0a30ch		;92e3
	call c,0a31ch		;92e6
	call z,0a30ch		;92e9
	call c,0a31ch		;92ec
	call z,0a00ch		;92ef
	rst 18h			;92f2
	rra			;92f3
	ld b,b			;92f4
	xor 00fh		;92f5
	ld b,b			;92f7
	push af			;92f8
	dec d			;92f9
	rst 38h			;92fa
	nop			;92fb
	nop			;92fc
	nop			;92fd
	rst 38h			;92fe
	nop			;92ff
	nop			;9300
	rst 38h			;9301
	nop			;9302
	nop			;9303
	rst 38h			;9304
	nop			;9305
	rst 38h			;9306
	nop			;9307
	nop			;9308
	nop			;9309
	rst 38h			;930a
	rst 38h			;930b
	nop			;930c
	rst 38h			;930d
	rst 38h			;930e
	nop			;930f
	ld d,l			;9310
	ld d,l			;9311
	push bc			;9312
	dec sp			;9313
	jr c,l92dbh		;9314
	inc sp			;9316
	jr nc,l92deh		;9317
	dec sp			;9319
	jr c,l92e1h		;931a
	inc sp			;931c
	jr nc,$-57		;931d
	dec sp			;931f
	jr c,l9327h		;9320
	di			;9322
	ret p			;9323
	ld (bc),a		;9324
	ld a,a			;9325
	ret m			;9326
l9327h:
	ld (bc),a		;9327
	ld d,a			;9328
	ld d,b			;9329
	nop			;932a
	rst 38h			;932b
	nop			;932c
	nop			;932d
	rst 38h			;932e
	nop			;932f
	rst 38h			;9330
	nop			;9331
	nop			;9332
	nop			;9333
	rst 38h			;9334
	rst 38h			;9335
	rst 38h			;9336
	rst 38h			;9337
	nop			;9338
	nop			;9339
	rst 38h			;933a
	nop			;933b
	rst 38h			;933c
	nop			;933d
	nop			;933e
	rst 38h			;933f
	nop			;9340
	nop			;9341
	rst 38h			;9342
	nop			;9343
	nop			;9344
	rst 38h			;9345
	nop			;9346
	nop			;9347
	nop			;9348
	rst 38h			;9349
	rst 38h			;934a
	rst 38h			;934b
	rst 38h			;934c
	nop			;934d
	nop			;934e
	rst 38h			;934f
	nop			;9350
	rst 38h			;9351
	nop			;9352
	nop			;9353
	rst 38h			;9354
	nop			;9355
	nop			;9356
	rst 38h			;9357
	nop			;9358
	nop			;9359
	rst 38h			;935a
	nop			;935b
	nop			;935c
	rst 38h			;935d
	nop			;935e
	nop			;935f
	nop			;9360
	rst 38h			;9361
	nop			;9362
	add a,c			;9363
	rst 38h			;9364
	nop			;9365
	rst 38h			;9366
	rst 38h			;9367
	nop			;9368
	rst 38h			;9369
	rst 38h			;936a
	nop			;936b
	rst 38h			;936c
	rst 38h			;936d
	nop			;936e
	ld a,(hl)		;936f
	rst 38h			;9370
	add a,c			;9371
	ld a,(hl)		;9372
	rst 38h			;9373
	add a,c			;9374
	nop			;9375
	rst 38h			;9376
	add a,c			;9377
	nop			;9378
	rst 38h			;9379
	rst 38h			;937a
	ld a,(hl)		;937b
	rst 38h			;937c
	add a,c			;937d
	nop			;937e
	rst 38h			;937f
	add a,c			;9380
	nop			;9381
	rst 38h			;9382
	add a,c			;9383
	nop			;9384
	rst 38h			;9385
	add a,c			;9386
	ld a,(hl)		;9387
	add a,c			;9388
	add a,c			;9389
	nop			;938a
	rst 38h			;938b
	rst 38h			;938c
	nop			;938d
	rst 38h			;938e
	jp 0ff3ch		;938f
	jp 0e73ch		;9392
	in a,(03ch)		;9395
	rst 38h			;9397
	jp 0ff00h		;9398
	jp 000ffh		;939b
	nop			;939e
	rst 38h			;939f
	nop			;93a0
	nop			;93a1
	inc l			;93a2
	ccf			;93a3
	inc h			;93a4
	cpl			;93a5
	ccf			;93a6
	daa			;93a7
	daa			;93a8
	ccf			;93a9
	daa			;93aa
	ccf			;93ab
	ccf			;93ac
	inc a			;93ad
	inc (hl)		;93ae
	scf			;93af
	inc l			;93b0
	inc l			;93b1
	ccf			;93b2
	inc h			;93b3
	ld e,b			;93b4
	ld a,a			;93b5
	ld c,b			;93b6
	ld c,a			;93b7
	ld a,a			;93b8
	ld c,a			;93b9
	ld a,e			;93ba
	rst 38h			;93bb
	dec sp			;93bc
	rst 38h			;93bd
	rst 38h			;93be
	cp 0b2h			;93bf
	rst 30h			;93c1
	xor 02ah		;93c2
	dec sp			;93c4
	and 0aah		;93c5
	cp e			;93c7
	ld h,(hl)		;93c8
	dec hl			;93c9
	ei			;93ca
	daa			;93cb
	cp 0ffh			;93cc
	cp 0e0h			;93ce
	rst 20h			;93d0
	rst 18h			;93d1
	rst 38h			;93d2
	rst 38h			;93d3
	rst 38h			;93d4
	nop			;93d5
	nop			;93d6
	rst 38h			;93d7
	cp a			;93d8
	cp a			;93d9
	ld b,b			;93da
	cp a			;93db
	cp a			;93dc
	ld b,b			;93dd
	nop			;93de
	rst 38h			;93df
	nop			;93e0
	rst 38h			;93e1
	rst 38h			;93e2
	rst 38h			;93e3
	rst 38h			;93e4
	rst 38h			;93e5
	rst 38h			;93e6
	rrca			;93e7
	rst 18h			;93e8
	rst 28h			;93e9
	ld a,d			;93ea
	ld a,(hl)		;93eb
	ld a,c			;93ec
	ld l,l			;93ed
	ld l,a			;93ee
	ld e,b			;93ef
	ld e,c			;93f0
	ld a,a			;93f1
	ld c,b			;93f2
	ld e,c			;93f3
	ld a,a			;93f4
	ld c,b			;93f5
	ld e,c			;93f6
	ld a,a			;93f7
	ld c,b			;93f8
	ld e,c			;93f9
	ld a,a			;93fa
	ld c,b			;93fb
	ld e,c			;93fc
	ld a,a			;93fd
	ld c,b			;93fe
	ld e,c			;93ff
	ld a,a			;9400
	ld c,b			;9401
	ld e,b			;9402
	ld sp,hl		;9403
	rst 0			;9404
	ld e,b			;9405
	ld a,c			;9406
	rst 0			;9407
	ld e,b			;9408
	ld a,c			;9409
	rst 0			;940a
	ld e,b			;940b
	ld a,c			;940c
	rst 0			;940d
	ld e,b			;940e
	ld a,c			;940f
	rst 0			;9410
	ld e,b			;9411
	ld a,c			;9412
	rst 0			;9413
	ld e,b			;9414
	ld a,c			;9415
	rst 0			;9416
	ld e,b			;9417
	ld a,c			;9418
	rst 0			;9419
	cpl			;941a
	ccf			;941b
	ret z			;941c
	jr z,l945eh		;941d
	ret z			;941f
	cpl			;9420
	ccf			;9421
	rst 8			;9422
	cpl			;9423
	ccf			;9424
	ret z			;9425
	cpl			;9426
	ccf			;9427
	rst 8			;9428
	djnz l943ah		;9429
	rst 38h			;942b
	nop			;942c
	nop			;942d
	rst 38h			;942e
	nop			;942f
	nop			;9430
	rst 38h			;9431
	nop			;9432
	nop			;9433
	nop			;9434
	nop			;9435
	nop			;9436
	nop			;9437
	nop			;9438
	nop			;9439
l943ah:
	nop			;943a
	nop			;943b
	nop			;943c
	nop			;943d
	nop			;943e
	nop			;943f
	nop			;9440
	inc b			;9441
	nop			;9442
	inc b			;9443
	ld bc,00100h		;9444
	ex af,af'		;9447
	nop			;9448
	dec bc			;9449
	ld e,c			;944a
	ld a,a			;944b
	ld c,b			;944c
	ld e,c			;944d
	ld a,a			;944e
	ld c,b			;944f
	ld e,c			;9450
	ld a,a			;9451
	ld c,b			;9452
	ld e,c			;9453
	ld a,a			;9454
	ld c,b			;9455
	ld e,c			;9456
	ld a,a			;9457
	ld c,b			;9458
	ld e,c			;9459
	ld a,a			;945a
	ld c,b			;945b
	ld e,c			;945c
	ld a,a			;945d
l945eh:
	ld c,b			;945e
	ld e,c			;945f
	rst 38h			;9460
	ld c,b			;9461
	ld e,b			;9462
	ld a,c			;9463
	rst 0			;9464
	ld e,b			;9465
	ld a,c			;9466
	rst 0			;9467
	ld e,b			;9468
	ld a,c			;9469
	rst 0			;946a
	ld e,b			;946b
	ld a,c			;946c
l946dh:
	rst 0			;946d
	ld e,b			;946e
	ld a,c			;946f
	rst 0			;9470
	ld e,b			;9471
	ld a,c			;9472
	rst 0			;9473
	ld e,b			;9474
	ld a,b			;9475
	rst 0			;9476
	ld e,b			;9477
	ld a,b			;9478
	rst 0			;9479
	exx			;947a
	rst 38h			;947b
	ret z			;947c
	ld e,c			;947d
	ld a,a			;947e
	ld c,b			;947f
	ld e,c			;9480
	ld a,a			;9481
	ld c,b			;9482
	ld e,c			;9483
	ld a,a			;9484
	ld c,b			;9485
	ld e,b			;9486
	ld a,a			;9487
	ld c,b			;9488
	ld e,b			;9489
	ld a,a			;948a
	ld c,b			;948b
	ld e,b			;948c
	ld a,a			;948d
	ld c,b			;948e
	ld e,b			;948f
	ld a,a			;9490
	ld c,b			;9491
	ld c,h			;9492
	ld a,h			;9493
	jp 07c4ch		;9494
	jp 03c2ch		;9497
	ex (sp),hl		;949a
	xor h			;949b
	cp h			;949c
	ld h,e			;949d
	xor h			;949e
	cp h			;949f
	ld h,e			;94a0
	xor l			;94a1
	cp l			;94a2
	ld h,d			;94a3
	xor (hl)		;94a4
	cp a			;94a5
	ld h,b			;94a6
	xor c			;94a7
	cp a			;94a8
	ld h,c			;94a9
	add hl,hl		;94aa
	cp c			;94ab
	rst 38h			;94ac
	add hl,hl		;94ad
l94aeh:
	xor c			;94ae
	rst 38h			;94af
	add hl,sp		;94b0
	cp c			;94b1
	rst 38h			;94b2
	jr c,l946dh		;94b3
	rst 38h			;94b5
	ld a,a			;94b6
	rst 38h			;94b7
	add a,b			;94b8
	add a,b			;94b9
	rst 38h			;94ba
	nop			;94bb
	ld a,a			;94bc
	rst 38h			;94bd
	ld a,a			;94be
	add a,b			;94bf
	call p,000ffh		;94c0
	nop			;94c3
	nop			;94c4
	nop			;94c5
	nop			;94c6
	nop			;94c7
	nop			;94c8
	nop			;94c9
	nop			;94ca
	ld b,000h		;94cb
	ld b,007h		;94cd
	ld bc,00007h		;94cf
	nop			;94d2
	nop			;94d3
	nop			;94d4
	nop			;94d5
	nop			;94d6
	nop			;94d7
	nop			;94d8
	nop			;94d9
	ld bc,00101h		;94da
	ld bc,00101h		;94dd
	ld (bc),a		;94e0
	inc bc			;94e1
	inc bc			;94e2
	ld (00ff2h),a		;94e3
	rst 38h			;94e6
	rst 38h			;94e7
	cp 007h			;94e8
	rlca			;94ea
	rlca			;94eb
	jr nz,l94eeh		;94ec
l94eeh:
	jr nz,l94f0h		;94ee
l94f0h:
	nop			;94f0
	nop			;94f1
	ret c			;94f2
	rst 38h			;94f3
	ret z			;94f4
	ld e,b			;94f5
	rst 38h			;94f6
	ret z			;94f7
	ld l,h			;94f8
	rst 38h			;94f9
	call po,07f6ch		;94fa
	call po,0fffch		;94fd
	ld a,h			;9500
	defb 0fdh,0ffh,0fdh ;illegal sequence	;9501
	rst 20h			;9504
	rst 28h			;9505
	rst 38h			;9506
	and 0f6h		;9507
	rst 28h			;9509
	ld (hl),0bfh		;950a
	ld (hl),a		;950c
	jr l94aeh		;950d
	ld a,a			;950f
	inc (hl)		;9510
	push af			;9511
	dec de			;9512
	ld a,h			;9513
	call m,0d473h		;9514
	defb 0ddh,0f3h,096h ;illegal sequence	;9517
	sbc a,(hl)		;951a
	pop af			;951b
	ld d,(hl)		;951c
	ld e,(hl)		;951d
	or c			;951e
	jp pe,019eeh		;951f
	rst 20h			;9522
	rst 30h			;9523
	xor (hl)		;9524
	and (hl)		;9525
	or a			;9526
	xor 0e5h		;9527
	push af			;9529
	xor a			;952a
	push hl			;952b
	push af			;952c
	xor a			;952d
	push hl			;952e
	push af			;952f
	xor a			;9530
	push hl			;9531
	push af			;9532
	xor a			;9533
	and 0f6h		;9534
	defb 0edh ;next byte illegal after ed	;9536
	and 0f6h		;9537
	defb 0edh ;next byte illegal after ed	;9539
	ld hl,(019eeh)		;953a
	dec hl			;953d
	rst 28h			;953e
	jr l956ch		;953f
	rst 28h			;9541
	jr l956fh		;9542
	rst 28h			;9544
	jr l957ch		;9545
	rst 30h			;9547
	inc c			;9548
	dec d			;9549
	rst 30h			;954a
	inc c			;954b
	sub l			;954c
	rst 30h			;954d
	adc a,h			;954e
	sbc a,d			;954f
	ei			;9550
	add a,(hl)		;9551
	nop			;9552
	nop			;9553
	nop			;9554
	ld (bc),a		;9555
	nop			;9556
	ld (bc),a		;9557
	nop			;9558
	nop			;9559
	nop			;955a
	nop			;955b
	nop			;955c
	nop			;955d
	nop			;955e
	nop			;955f
	nop			;9560
	nop			;9561
	nop			;9562
	nop			;9563
	nop			;9564
	nop			;9565
	nop			;9566
	nop			;9567
	nop			;9568
	nop			;9569
	add hl,de		;956a
	ld a,c			;956b
l956ch:
	ld b,07fh		;956c
	ld a,a			;956e
l956fh:
	ld a,a			;956f
	nop			;9570
	nop			;9571
l9572h:
	nop			;9572
	ex af,af'		;9573
	nop			;9574
	ex af,af'		;9575
	nop			;9576
	nop			;9577
	nop			;9578
	ld bc,00101h		;9579
l957ch:
	ld bc,00101h		;957c
	ld bc,00101h		;957f
	and 0f6h		;9582
	xor l			;9584
	rst 20h			;9585
	rst 30h			;9586
	xor h			;9587
	rst 20h			;9588
	rst 30h			;9589
	xor (hl)		;958a
	rst 38h			;958b
	rst 38h			;958c
	cp (hl)			;958d
	jp p,0fef3h		;958e
	jp p,0f6fbh		;9591
	defb 0fdh,0fdh,07fh ;illegal sequence	;9594
	cp l			;9597
	cp l			;9598
	ld a,a			;9599
	adc a,d			;959a
	ei			;959b
	add a,(hl)		;959c
	ld c,l			;959d
	ld a,l			;959e
	jp 07e46h		;959f
	pop bc			;95a2
	ld b,e			;95a3
	ld a,a			;95a4
	ret nz			;95a5
	and c			;95a6
	cp a			;95a7
	ld h,b			;95a8
	and c			;95a9
	cp a			;95aa
	ld h,b			;95ab
	ld d,c			;95ac
	rst 18h			;95ad
	jr nc,$+107		;95ae
	rst 28h			;95b0
	jr l9572h		;95b1
	cp a			;95b3
	ld b,b			;95b4
	sbc a,a			;95b5
	sbc a,a			;95b6
	ld h,b			;95b7
	ret po			;95b8
	rst 38h			;95b9
	ret nz			;95ba
	ccf			;95bb
	rst 38h			;95bc
	rst 38h			;95bd
	nop			;95be
	ld (hl),b		;95bf
	rst 38h			;95c0
	rrca			;95c1
	ld c,a			;95c2
	ret p			;95c3
	jr l95e5h		;95c4
	ret po			;95c6
	jr nc,l9608h		;95c7
	ret nz			;95c9
	nop			;95ca
	nop			;95cb
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
	ld bc,00101h		;95d6
	ld (bc),a		;95d9
	ld (bc),a		;95da
	inc bc			;95db
	dec b			;95dc
	dec b			;95dd
	ld b,00ah		;95de
	ld a,(bc)		;95e0
	dec c			;95e1
	ld bc,00101h		;95e2
l95e5h:
	rlca			;95e5
	rlca			;95e6
	rlca			;95e7
	inc e			;95e8
	ld e,01dh		;95e9
	ld h,h			;95eb
	ld a,(hl)		;95ec
	ld h,l			;95ed
	add a,h			;95ee
	sbc a,(hl)		;95ef
	push hl			;95f0
	ld h,h			;95f1
	ld a,(hl)		;95f2
	add a,l			;95f3
	call p,005feh		;95f4
	ld a,03eh		;95f7
	rst 8			;95f9
	cp (hl)			;95fa
	cp (hl)			;95fb
	ld a,a			;95fc
	cp a			;95fd
	cp a			;95fe
	rst 30h			;95ff
	cp a			;9600
	cp a			;9601
	di			;9602
	rst 38h			;9603
	rst 38h			;9604
	call p,0fcfch		;9605
l9608h:
	cp a			;9608
	call m,0bffch		;9609
	call m,0fffch		;960c
	rst 38h			;960f
	rst 38h			;9610
	rst 38h			;9611
	or a			;9612
	rst 30h			;9613
	adc a,(hl)		;9614
	sbc a,c			;9615
	ld sp,hl		;9616
	add a,a			;9617
	adc a,0feh		;9618
	pop bc			;961a
	ex (sp),hl		;961b
	rst 38h			;961c
	jr nz,l9630h		;961d
	rra			;961f
	ret p			;9620
	add hl,bc		;9621
	rrca			;9622
	ret m			;9623
	dec b			;9624
	rlca			;9625
	call m,0ffffh		;9626
	cp 0a0h			;9629
	cp a			;962b
	ld b,b			;962c
	ret po			;962d
	rst 38h			;962e
	add a,b			;962f
l9630h:
	ld a,a			;9630
	rst 38h			;9631
	rst 38h			;9632
	nop			;9633
	ld h,b			;9634
	rst 38h			;9635
	rra			;9636
	ld e,a			;9637
	ret po			;9638
	jr nc,l967ah		;9639
	ret nz			;963b
	jr nz,l967dh		;963c
	ret nz			;963e
	jr nz,l9680h		;963f
	ret nz			;9641
	inc d			;9642
	inc d			;9643
	dec de			;9644
	inc d			;9645
	inc d			;9646
	dec de			;9647
	jr z,$+43		;9648
	scf			;964a
	jr z,$+45		;964b
	scf			;964d
	ld d,b			;964e
	ld d,e			;964f
	ld l,a			;9650
	ld d,b			;9651
	ld d,e			;9652
	ld l,a			;9653
	ld d,b			;9654
	ld d,c			;9655
	ld l,a			;9656
	or b			;9657
	or b			;9658
	rst 8			;9659
	ld a,(de)		;965a
	ld a,(de)		;965b
	rst 28h			;965c
	rra			;965d
	dec de			;965e
	jp pe,01f1fh		;965f
	jp pe,0bf3fh		;9662
	rst 18h			;9665
	inc sp			;9666
	or a			;9667
	defb 0ddh,03fh,0b1h ;illegal sequence	;9668
	pop de			;966b
	inc sp			;966c
	scf			;966d
	defb 0ddh,03fh,031h ;illegal sequence	;966e
	pop de			;9671
	defb 0fdh,0fdh,0ffh ;illegal sequence	;9672
	rst 38h			;9675
	rst 38h			;9676
	defb 0fdh,0ffh,0ffh ;illegal sequence	;9677
l967ah:
	rst 38h			;967a
	rst 38h			;967b
	rst 38h			;967c
l967dh:
	jp m,0fffeh		;967d
l9680h:
	jp m,0efeeh		;9680
	jp m,0dfdeh		;9683
	jp pe,0dfdeh		;9686
	jp pe,06707h		;9689
	ld sp,hl		;968c
	sbc a,c			;968d
	rst 18h			;968e
	ld h,c			;968f
	rst 38h			;9690
	rst 38h			;9691
	rst 38h			;9692
	nop			;9693
	ld a,h			;9694
	rst 38h			;9695
	ld (bc),a		;9696
	ld b,e			;9697
	call m,04302h		;9698
	call m,04302h		;969b
	call m,04302h		;969e
	call m,sub_9f90h	;96a1
	ld h,b			;96a4
	rst 8			;96a5
	rst 8			;96a6
	or a			;96a7
	rst 20h			;96a8
	push hl			;96a9
	defb 0fdh,0fdh,0fdh ;illegal sequence	;96aa
	rst 0			;96ad
	rst 20h			;96ae
	defb 0fdh,0c5h,0e5h ;illegal sequence	;96af
	defb 0fdh,0c7h,0e7h ;illegal sequence	;96b2
	rst 38h			;96b5
	rst 20h			;96b6
	ret pe			;96b7
	cp 0efh			;96b8
	or b			;96ba
	or b			;96bb
	rst 8			;96bc
	or b			;96bd
	or b			;96be
	rst 8			;96bf
	or b			;96c0
	or b			;96c1
	rst 8			;96c2
	cp b			;96c3
	cp b			;96c4
	rst 0			;96c5
	cp b			;96c6
	cp b			;96c7
	rst 0			;96c8
	cp h			;96c9
	cp h			;96ca
	jp 0bebeh		;96cb
	pop bc			;96ce
	cp a			;96cf
	cp a			;96d0
	ret nz			;96d1
	inc sp			;96d2
	scf			;96d3
	defb 0ddh,033h,037h ;illegal sequence	;96d4
	defb 0ddh,033h,037h ;illegal sequence	;96d7
	defb 0ddh,033h,037h ;illegal sequence	;96da
	defb 0ddh,033h,037h ;illegal sequence	;96dd
	add ix,sp		;96e0
	dec sp			;96e2
	push de			;96e3
	ld a,a			;96e4
	ld a,a			;96e5
	adc a,a			;96e6
	ei			;96e7
	ei			;96e8
	dec c			;96e9
	sbc a,0dfh		;96ea
	jp pe,0dfdeh		;96ec
	jp pe,0cfffh		;96ef
	set 7,a			;96f2
	rst 8			;96f4
	set 3,a			;96f5
	rst 18h			;96f7
	ex de,hl		;96f8
	cp 0ffh			;96f9
	cp 0ffh			;96fb
	rst 38h			;96fd
	rst 38h			;96fe
	ld sp,hl		;96ff
	rst 38h			;9700
	ld sp,hl		;9701
	ld (bc),a		;9702
	ld b,e			;9703
	call m,04302h		;9704
	call m,0bfbdh		;9707
	ld b,c			;970a
	rst 38h			;970b
	rst 38h			;970c
	rst 38h			;970d
	cp a			;970e
	cp a			;970f
	ld b,e			;9710
	ld bc,0fd43h		;9711
	rst 38h			;9714
	rst 38h			;9715
	rst 38h			;9716
	call m,0fffch		;9717
	ld sp,hl		;971a
	defb 0fdh,0feh,0ffh ;illegal sequence	;971b
	ret m			;971e
	ret m			;971f
	ld sp,hl		;9720
	defb 0fdh,0feh,0ffh ;illegal sequence	;9721
	ret m			;9724
	ret m			;9725
	jp (hl)			;9726
	defb 0fdh,0eeh,0c9h ;illegal sequence	;9727
	defb 0ddh,0eeh,089h ;illegal sequence	;972a
	cp l			;972d
	adc a,049h		;972e
	ld a,l			;9730
	adc a,(hl)		;9731
	ld e,a			;9732
	ld e,a			;9733
	ld h,b			;9734
	ld c,a			;9735
	ld e,a			;9736
	ld h,b			;9737
	ld c,a			;9738
	ld e,a			;9739
	ld h,b			;973a
	inc hl			;973b
	cpl			;973c
	jr nc,l975fh		;973d
	cpl			;973f
	jr nc,l9752h		;9740
	rla			;9742
	jr $+18			;9743
	rla			;9745
	jr l9750h		;9746
	dec bc			;9748
	inc c			;9749
	rst 38h			;974a
	rst 38h			;974b
	rra			;974c
	ret p			;974d
	rst 38h			;974e
	rra			;974f
l9750h:
	di			;9750
	di			;9751
l9752h:
	inc e			;9752
	adc a,h			;9753
	call m,0070fh		;9754
	rst 38h			;9757
	rlca			;9758
	rlca			;9759
	rst 38h			;975a
	rlca			;975b
	inc b			;975c
	rst 38h			;975d
	inc b			;975e
l975fh:
	inc b			;975f
	rst 38h			;9760
	inc b			;9761
	rst 38h			;9762
	rst 38h			;9763
	rst 38h			;9764
	rrca			;9765
	rst 38h			;9766
	rst 38h			;9767
	call z,03ccfh		;9768
	ccf			;976b
	ccf			;976c
	rst 38h			;976d
	ret po			;976e
	ret po			;976f
	rst 38h			;9770
	add a,c			;9771
	cp a			;9772
	pop bc			;9773
	sbc a,(hl)		;9774
	cp (hl)			;9775
	rst 18h			;9776
	sbc a,l			;9777
	cp l			;9778
	sbc a,03bh		;9779
	ei			;977b
	inc a			;977c
	ld (hl),a		;977d
	rst 30h			;977e
	ld a,b			;977f
	ld (hl),a		;9780
	rst 30h			;9781
	ld a,b			;9782
	xor 0efh		;9783
	ret p			;9785
	defb 0edh ;next byte illegal after ed	;9786
	rst 28h			;9787
	pop af			;9788
	exx			;9789
	rst 18h			;978a
l978bh:
	pop hl			;978b
	inc de			;978c
	rra			;978d
l978eh:
	jp po,0ffe3h		;978e
	ld (bc),a		;9791
	ret			;9792
	defb 0fdh,00eh,0b9h ;illegal sequence	;9793
	defb 0fdh,03eh,059h ;illegal sequence	;9796
	ld e,(iy-007h)		;9799
	sbc a,(iy+05fh)		;979c
	rst 18h			;979f
	ccf			;97a0
	sbc a,a			;97a1
	sbc a,a			;97a2
	ld a,a			;97a3
	rrca			;97a4
	ld c,a			;97a5
	ret p			;97a6
	inc e			;97a7
	ld e,a			;97a8
	ret po			;97a9
	dec b			;97aa
	ld (bc),a		;97ab
	dec b			;97ac
	dec b			;97ad
	ld (bc),a		;97ae
	dec b			;97af
	dec b			;97b0
	ld (bc),a		;97b1
	dec b			;97b2
	dec b			;97b3
	ld (bc),a		;97b4
	dec b			;97b5
	dec b			;97b6
	ld (bc),a		;97b7
	dec b			;97b8
	dec b			;97b9
	ld (bc),a		;97ba
	dec b			;97bb
	dec b			;97bc
	ld (bc),a		;97bd
	dec b			;97be
	dec b			;97bf
	ld (bc),a		;97c0
	dec b			;97c1
	call c,00833h		;97c2
	rst 18h			;97c5
	jr nc,$+14		;97c6
	rst 18h			;97c8
	jr nc,l97dah		;97c9
	cp a			;97cb
	ld h,b			;97cc
l97cdh:
	rra			;97cd
	cp (hl)			;97ce
	ld h,c			;97cf
l97d0h:
	jr l978bh		;97d0
	ld h,a			;97d2
l97d3h:
	djnz l978eh		;97d3
	ld h,a			;97d5
l97d6h:
	djnz $-63		;97d6
	ld h,b			;97d8
l97d9h:
	rra			;97d9
l97dah:
	cp (hl)			;97da
	or c			;97db
l97dch:
	ld c,b			;97dc
	ld a,0f1h		;97dd
	ex af,af'		;97df
	rst 38h			;97e0
	nop			;97e1
	ld c,0fch		;97e2
	inc bc			;97e4
	call m,0c07fh		;97e5
	inc a			;97e8
	cp a			;97e9
	add a,b			;97ea
	ld l,h			;97eb
	cp a			;97ec
	add a,b			;97ed
	ld l,h			;97ee
	rst 38h			;97ef
	nop			;97f0
	call m,00205h		;97f1
	dec b			;97f4
	dec b			;97f5
	ld (bc),a		;97f6
	dec b			;97f7
	dec b			;97f8
	ld (bc),a		;97f9
	dec b			;97fa
	dec b			;97fb
	ld (bc),a		;97fc
	dec b			;97fd
	dec b			;97fe
	ld (bc),a		;97ff
	dec b			;9800
	dec b			;9801
	ld (bc),a		;9802
	dec b			;9803
	dec bc			;9804
	inc b			;9805
	ld a,(bc)		;9806
	dec bc			;9807
	inc b			;9808
	ld a,(bc)		;9809
	cp e			;980a
	ld h,a			;980b
	djnz $-66		;980c
	ld h,e			;980e
	jr l97cdh		;980f
	ld h,e			;9811
l9812h:
	jr l97d0h		;9812
	ld h,e			;9814
l9815h:
	jr l97d3h		;9815
	ld h,e			;9817
l9818h:
	jr l97d6h		;9818
	ld h,e			;981a
l981bh:
	jr l97d9h		;981b
	ld h,e			;981d
l981eh:
	jr l97dch		;981e
	ld h,e			;9820
l9821h:
	jr $+13			;9821
	inc b			;9823
l9824h:
	jp m,0dcdfh		;9824
	ld (0dcdfh),hl		;9827
	ld (0dcdfh),hl		;982a
	ld (0dedfh),hl		;982d
	ld hl,0dedfh		;9830
	ld hl,0dedfh		;9833
	ld hl,0dfdfh		;9836
	jr nz,l9846h		;9839
	inc b			;983b
	ld a,(bc)		;983c
	dec bc			;983d
	inc b			;983e
	ld a,(bc)		;983f
	dec bc			;9840
	inc b			;9841
	ld a,(bc)		;9842
	dec bc			;9843
	inc b			;9844
	ld a,(bc)		;9845
l9846h:
	dec bc			;9846
	inc b			;9847
	ld a,(bc)		;9848
	dec bc			;9849
l984ah:
	inc b			;984a
	ld a,(bc)		;984b
	dec bc			;984c
l984dh:
	inc b			;984d
	ld a,(bc)		;984e
	dec bc			;984f
l9850h:
	inc b			;9850
	ld a,(bc)		;9851
	cp h			;9852
l9853h:
	ld h,e			;9853
	jr l9812h		;9854
l9856h:
	ld h,e			;9856
	jr l9815h		;9857
l9859h:
	ld h,e			;9859
l985ah:
	jr l9818h		;985a
l985ch:
	ld h,e			;985c
l985dh:
	jr l981bh		;985d
l985fh:
	ld h,e			;985f
l9860h:
	jr l981eh		;9860
	ld h,e			;9862
l9863h:
	jr l9821h		;9863
	ld h,e			;9865
l9866h:
	jr l9824h		;9866
	ld h,e			;9868
l9869h:
	jr l984ah		;9869
	rst 18h			;986b
	jr nz,l984dh		;986c
	rst 18h			;986e
	jr nz,l9850h		;986f
	rst 18h			;9871
	jr nz,l9853h		;9872
	rst 18h			;9874
	jr nz,l9856h		;9875
	rst 18h			;9877
	jr nz,l9859h		;9878
	rst 18h			;987a
	jr nz,l985ch		;987b
	rst 18h			;987d
	jr nz,l985fh		;987e
	rst 18h			;9880
	jr nz,l988eh		;9881
	inc b			;9883
	ld a,(bc)		;9884
	dec bc			;9885
	inc b			;9886
	ld a,(bc)		;9887
	dec bc			;9888
	inc b			;9889
	ld a,(bc)		;988a
	dec bc			;988b
	inc b			;988c
	ld a,(bc)		;988d
l988eh:
	dec bc			;988e
	inc b			;988f
	ld a,(bc)		;9890
	dec bc			;9891
	inc b			;9892
	ld a,(bc)		;9893
	dec bc			;9894
	inc b			;9895
	ld a,(bc)		;9896
	rra			;9897
	nop			;9898
	rra			;9899
	cp h			;989a
	ld h,e			;989b
	jr l985ah		;989c
	ld h,e			;989e
	jr l985dh		;989f
	ld h,e			;98a1
	jr l9860h		;98a2
	ld h,e			;98a4
	jr l9863h		;98a5
	ld h,e			;98a7
	jr l9866h		;98a8
	ld h,e			;98aa
	jr l9869h		;98ab
	ld h,e			;98ad
	jr $-2			;98ae
	inc bc			;98b0
	ret m			;98b1
	rst 18h			;98b2
	call c,0df23h		;98b3
	call c,0df23h		;98b6
	call c,0df23h		;98b9
	call c,0df23h		;98bc
l98bfh:
	call c,0df23h		;98bf
	call c,0df23h		;98c2
	call c,0df23h		;98c5
	call c,01423h		;98c8
	dec bc			;98cb
	inc d			;98cc
	rra			;98cd
	nop			;98ce
	inc d			;98cf
	rra			;98d0
	nop			;98d1
	inc d			;98d2
	rra			;98d3
	nop			;98d4
	inc d			;98d5
	rra			;98d6
	nop			;98d7
	inc d			;98d8
	rra			;98d9
	nop			;98da
	inc d			;98db
	rra			;98dc
	nop			;98dd
	inc d			;98de
	rra			;98df
	nop			;98e0
	inc d			;98e1
	cp h			;98e2
	add a,e			;98e3
	ld l,b			;98e4
	ld a,a			;98e5
	ret nz			;98e6
	inc l			;98e7
	ld a,a			;98e8
	ret nz			;98e9
	cpl			;98ea
	ld a,a			;98eb
	ret nz			;98ec
	cpl			;98ed
	ld a,(hl)		;98ee
	pop bc			;98ef
	jr z,l996bh		;98f0
	rst 0			;98f2
	jr nz,l996eh		;98f3
	rst 0			;98f5
	jr nz,l9977h		;98f6
	ret nz			;98f8
	cpl			;98f9
	rst 18h			;98fa
	call c,02323h		;98fb
	call m,0ff03h		;98fe
	nop			;9901
	ld bc,000ffh		;9902
	rst 38h			;9905
	ld a,d			;9906
	rst 0			;9907
	jr nc,l98bfh		;9908
	adc a,l			;990a
	ld h,d			;990b
	or l			;990c
	adc a,l			;990d
	ld h,d			;990e
	rst 38h			;990f
	nop			;9910
	rst 38h			;9911
	rra			;9912
	nop			;9913
	inc d			;9914
	rra			;9915
	nop			;9916
	rla			;9917
	rra			;9918
	nop			;9919
	rla			;991a
	inc e			;991b
	inc bc			;991c
	djnz l993eh		;991d
	nop			;991f
	djnz l9941h		;9920
	nop			;9922
	djnz $+33		;9923
	nop			;9925
	djnz l9947h		;9926
	nop			;9928
	rla			;9929
	or (hl)			;992a
	ld c,(hl)		;992b
	ld sp,007f9h		;992c
	ret p			;992f
	xor c			;9930
	rla			;9931
	ret po			;9932
l9933h:
	ld sp,hl		;9933
l9934h:
	rst 0			;9934
	jr nz,l99b0h		;9935
	rst 0			;9937
	jr nz,l9933h		;9938
l993ah:
	rlca			;993a
	jr nz,$-5		;993b
	rlca			;993d
l993eh:
	ret po			;993e
	ld sp,hl		;993f
	rlca			;9940
l9941h:
	ret po			;9941
	inc e			;9942
	djnz l9934h		;9943
	xor a			;9945
	or e			;9946
l9947h:
	ld c,b			;9947
	xor a			;9948
	or e			;9949
	ld c,b			;994a
	xor a			;994b
	or e			;994c
	ld c,b			;994d
	xor a			;994e
	or e			;994f
	ld c,b			;9950
	xor a			;9951
	or e			;9952
	ld c,b			;9953
	xor a			;9954
	or e			;9955
	ld c,b			;9956
	xor a			;9957
	or e			;9958
	ld c,b			;9959
	rra			;995a
	nop			;995b
	inc d			;995c
	rra			;995d
	nop			;995e
	inc d			;995f
	rra			;9960
	nop			;9961
	inc d			;9962
	rra			;9963
	nop			;9964
	inc d			;9965
	scf			;9966
	ex af,af'		;9967
	inc h			;9968
	scf			;9969
	ex af,af'		;996a
l996bh:
	inc h			;996b
	scf			;996c
	ex af,af'		;996d
l996eh:
	inc h			;996e
	scf			;996f
	ex af,af'		;9970
	inc h			;9971
	ld a,c			;9972
	rst 0			;9973
	jr nz,$+123		;9974
	rst 0			;9976
l9977h:
	jr nz,$+123		;9977
	rst 0			;9979
	jr nz,$+123		;997a
	rst 0			;997c
	jr nz,$+123		;997d
	rst 0			;997f
	jr nz,l99fbh		;9980
	rst 0			;9982
	jr nz,l99feh		;9983
	rst 0			;9985
	jr nz,l9a01h		;9986
	rst 0			;9988
	jr nz,l993ah		;9989
	or e			;998b
	ld c,b			;998c
	xor a			;998d
	or e			;998e
l998fh:
	ld c,b			;998f
	xor a			;9990
	or e			;9991
	ld c,b			;9992
	xor a			;9993
	or e			;9994
	ld c,b			;9995
	xor a			;9996
	or e			;9997
	ld c,b			;9998
	xor a			;9999
	or e			;999a
	ld c,b			;999b
	xor a			;999c
	or e			;999d
	ld c,b			;999e
	xor a			;999f
	or e			;99a0
	ld c,b			;99a1
	scf			;99a2
	ex af,af'		;99a3
	inc h			;99a4
	scf			;99a5
	ex af,af'		;99a6
	inc h			;99a7
	scf			;99a8
	ex af,af'		;99a9
	inc h			;99aa
	scf			;99ab
	ex af,af'		;99ac
	inc h			;99ad
	scf			;99ae
	ex af,af'		;99af
l99b0h:
	inc h			;99b0
	scf			;99b1
	ex af,af'		;99b2
	inc h			;99b3
	scf			;99b4
	ex af,af'		;99b5
	inc h			;99b6
	scf			;99b7
	ex af,af'		;99b8
	inc h			;99b9
	ld a,c			;99ba
	rst 0			;99bb
	jr nz,$+123		;99bc
	rst 0			;99be
	jr nz,$+123		;99bf
	rst 0			;99c1
	jr nz,l9a3dh		;99c2
	rst 0			;99c4
	jr nz,l9a40h		;99c5
	rst 0			;99c7
	jr nz,l9a43h		;99c8
	rst 0			;99ca
	jr nz,$+128		;99cb
	pop bc			;99cd
	jr z,l9a4fh		;99ce
	ret nz			;99d0
	cpl			;99d1
	xor a			;99d2
	or e			;99d3
	ld c,b			;99d4
	xor a			;99d5
	or e			;99d6
	ld c,b			;99d7
	xor a			;99d8
	or e			;99d9
	ld c,b			;99da
	xor a			;99db
	or e			;99dc
	ld c,b			;99dd
	xor a			;99de
	or e			;99df
	ld c,b			;99e0
	xor a			;99e1
	or e			;99e2
	ld c,b			;99e3
	ld e,a			;99e4
	ret po			;99e5
	inc c			;99e6
	rst 38h			;99e7
	nop			;99e8
	rst 38h			;99e9
	nop			;99ea
	inc e			;99eb
	inc d			;99ec
	ex af,af'		;99ed
	ld (hl),03ah		;99ee
	inc b			;99f0
	ld a,(01c32h)		;99f1
	ld (01c2ah),hl		;99f4
	ld (00822h),hl		;99f7
	inc (hl)		;99fa
l99fbh:
	inc a			;99fb
	nop			;99fc
	inc d			;99fd
l99feh:
	inc e			;99fe
	nop			;99ff
	inc e			;9a00
l9a01h:
	inc e			;9a01
	nop			;9a02
	nop			;9a03
	nop			;9a04
	nop			;9a05
	jr l9a20h		;9a06
	nop			;9a08
	inc a			;9a09
	inc (hl)		;9a0a
	ex af,af'		;9a0b
	halt			;9a0c
	ld l,d			;9a0d
	ex af,af'		;9a0e
	halt			;9a0f
	ld l,d			;9a10
	nop			;9a11
	ld a,(hl)		;9a12
	ld h,d			;9a13
	inc h			;9a14
	ld e,d			;9a15
	ld d,d			;9a16
	inc e			;9a17
	ld h,d			;9a18
	ld l,(hl)		;9a19
	inc h			;9a1a
	ld e,d			;9a1b
	ld e,(hl)		;9a1c
	inc e			;9a1d
	ld h,d			;9a1e
	ld l,(hl)		;9a1f
l9a20h:
	inc e			;9a20
	ld h,d			;9a21
	ld l,d			;9a22
	jr l9a49h		;9a23
	inc l			;9a25
	jr $+38			;9a26
	inc l			;9a28
	ex af,af'		;9a29
	inc (hl)		;9a2a
	inc (hl)		;9a2b
	nop			;9a2c
	inc (hl)		;9a2d
	inc a			;9a2e
	nop			;9a2f
	jr l9a4ah		;9a30
	nop			;9a32
	inc e			;9a33
	inc e			;9a34
	inc d			;9a35
	ld hl,(00022h)		;9a36
	ld a,022h		;9a39
	inc b			;9a3b
	ld a,e			;9a3c
l9a3dh:
	ld b,l			;9a3d
	inc b			;9a3e
	ld a,e			;9a3f
l9a40h:
	ld b,l			;9a40
	inc b			;9a41
	ld a,e			;9a42
l9a43h:
	ld b,l			;9a43
	ld hl,(04955h)		;9a44
	inc d			;9a47
	ld l,e			;9a48
l9a49h:
	ld h,e			;9a49
l9a4ah:
	ld (07f5dh),hl		;9a4a
	inc e			;9a4d
	ld h,e			;9a4e
l9a4fh:
	ld l,a			;9a4f
	ld (07d5dh),hl		;9a50
	ld a,041h		;9a53
	ld e,a			;9a55
	ld a,041h		;9a56
	ld b,a			;9a58
	ld l,051h		;9a59
	ld e,l			;9a5b
	ld c,071h		;9a5c
	ld a,l			;9a5e
	ld c,071h		;9a5f
	ld a,l			;9a61
	inc c			;9a62
	ld (0083ah),a		;9a63
	inc d			;9a66
	inc e			;9a67
	ex af,af'		;9a68
	inc d			;9a69
	inc e			;9a6a
	ex af,af'		;9a6b
	inc d			;9a6c
	inc e			;9a6d
	ex af,af'		;9a6e
	inc d			;9a6f
	inc e			;9a70
	ex af,af'		;9a71
	inc d			;9a72
	inc e			;9a73
	nop			;9a74
	inc d			;9a75
	inc e			;9a76
	nop			;9a77
	inc e			;9a78
	inc e			;9a79
	nop			;9a7a
	jr l9a95h		;9a7b
	jr $+38			;9a7d
	inc h			;9a7f
	inc h			;9a80
	ld e,d			;9a81
	ld b,d			;9a82
l9a83h:
	inc l			;9a83
	ld d,d			;9a84
	ld c,d			;9a85
	ld b,d			;9a86
	cp l			;9a87
	add a,c			;9a88
	ld b,(hl)		;9a89
	cp c			;9a8a
	add a,l			;9a8b
	ld b,(hl)		;9a8c
	cp c			;9a8d
	add a,l			;9a8e
	ld b,(hl)		;9a8f
	cp c			;9a90
	add a,l			;9a91
	ld b,d			;9a92
	cp l			;9a93
	add a,c			;9a94
l9a95h:
	nop			;9a95
	rst 38h			;9a96
	jp 0bd42h		;9a97
	rst 38h			;9a9a
	ld a,(hl)		;9a9b
	add a,c			;9a9c
	sbc a,a			;9a9d
	ld a,(hl)		;9a9e
l9a9fh:
	add a,c			;9a9f
	sbc a,l			;9aa0
	inc a			;9aa1
	jp 042c3h		;9aa2
	cp l			;9aa5
	rst 38h			;9aa6
	ld a,(hl)		;9aa7
	add a,c			;9aa8
	cp a			;9aa9
	ld a,(hl)		;9aaa
	add a,c			;9aab
	and a			;9aac
	ld l,(hl)		;9aad
	sub c			;9aae
	or l			;9aaf
	ld l,0d1h		;9ab0
	defb 0ddh,01eh,0e1h ;illegal sequence	;9ab2
	defb 0edh ;next byte illegal after ed	;9ab5
l9ab6h:
	ld e,0e1h		;9ab6
	defb 0edh ;next byte illegal after ed	;9ab8
	ld e,0e1h		;9ab9
	defb 0edh ;next byte illegal after ed	;9abb
	inc e			;9abc
	ld h,d			;9abd
	ld l,d			;9abe
	jr $+38			;9abf
	inc l			;9ac1
	jr $+38			;9ac2
	inc l			;9ac4
	jr l9aebh		;9ac5
	inc l			;9ac7
	jr l9aeeh		;9ac8
	inc l			;9aca
	jr l9af1h		;9acb
	inc l			;9acd
	jr l9af4h		;9ace
	inc l			;9ad0
l9ad1h:
	jr l9af7h		;9ad1
	inc l			;9ad3
	djnz l9b0ah		;9ad4
	inc l			;9ad6
	nop			;9ad7
	inc a			;9ad8
	inc a			;9ad9
	nop			;9ada
	add a,b			;9adb
	add a,b			;9adc
	add a,b			;9add
	ld b,b			;9ade
	ld b,b			;9adf
	ret nz			;9ae0
	jr nz,l9a83h		;9ae1
	ret po			;9ae3
	djnz l9ab6h		;9ae4
	ret p			;9ae6
	jr l9ad1h		;9ae7
	ret po			;9ae9
	ex af,af'		;9aea
l9aebh:
	ret m			;9aeb
	ld h,b			;9aec
	adc a,b			;9aed
l9aeeh:
	sbc a,b			;9aee
	nop			;9aef
	ret m			;9af0
l9af1h:
	ret m			;9af1
	ld a,(hl)		;9af2
	add a,c			;9af3
l9af4h:
	and a			;9af4
	ld l,(hl)		;9af5
	sub c			;9af6
l9af7h:
	or l			;9af7
	xor (hl)		;9af8
	ld d,c			;9af9
	ld e,l			;9afa
	sbc a,(hl)		;9afb
	ld h,c			;9afc
	ld l,l			;9afd
	sbc a,(hl)		;9afe
	ld h,c			;9aff
	ld l,l			;9b00
	sbc a,(hl)		;9b01
	ld h,c			;9b02
	ld l,l			;9b03
	inc e			;9b04
	ex (sp),hl		;9b05
	ex de,hl		;9b06
	jr l9b2dh		;9b07
	inc l			;9b09
l9b0ah:
	nop			;9b0a
	ld bc,00101h		;9b0b
	ld (bc),a		;9b0e
	ld (bc),a		;9b0f
	inc bc			;9b10
	inc b			;9b11
	dec b			;9b12
	rlca			;9b13
	ex af,af'		;9b14
	dec bc			;9b15
	rrca			;9b16
	jr l9b30h		;9b17
	rlca			;9b19
	djnz l9b3bh		;9b1a
	rlca			;9b1c
	djnz l9b37h		;9b1d
	nop			;9b1f
	rra			;9b20
	rra			;9b21
	nop			;9b22
	nop			;9b23
	nop			;9b24
	nop			;9b25
	nop			;9b26
	nop			;9b27
	nop			;9b28
	jr c,$+58		;9b29
	djnz l9b99h		;9b2b
l9b2dh:
	ld d,h			;9b2d
	nop			;9b2e
	ld a,h			;9b2f
l9b30h:
	ld b,h			;9b30
	ex af,af'		;9b31
	or 0cah			;9b32
	ex af,af'		;9b34
	or 0cah			;9b35
l9b37h:
	ex af,af'		;9b37
	or 0cah			;9b38
	ld b,b			;9b3a
l9b3bh:
	cp a			;9b3b
	and c			;9b3c
	ld b,b			;9b3d
	cp a			;9b3e
	and e			;9b3f
	ld h,b			;9b40
	sbc a,a			;9b41
	sbc a,a			;9b42
	ld a,(hl)		;9b43
	add a,c			;9b44
	xor a			;9b45
	ld a,0c1h		;9b46
	rst 8			;9b48
	ld e,(hl)		;9b49
	and c			;9b4a
	and c			;9b4b
	ld h,b			;9b4c
	sbc a,a			;9b4d
	cp a			;9b4e
	ld a,b			;9b4f
	add a,a			;9b50
	or a			;9b51
	nop			;9b52
	ld bc,00001h		;9b53
	inc bc			;9b56
	inc bc			;9b57
	nop			;9b58
	inc bc			;9b59
	inc bc			;9b5a
	ld bc,00606h		;9b5b
	nop			;9b5e
	ld b,007h		;9b5f
	nop			;9b61
	ld c,00fh		;9b62
l9b64h:
	ld bc,00e0bh		;9b64
	nop			;9b67
	rrca			;9b68
	rrca			;9b69
	inc sp			;9b6a
	call z,057fdh		;9b6b
l9b6eh:
	xor b			;9b6e
	cp e			;9b6f
	rst 10h			;9b70
l9b71h:
	jr z,$+125		;9b71
	rst 10h			;9b73
l9b74h:
	jr z,l9b71h		;9b74
	rst 10h			;9b76
	jr z,l9b74h		;9b77
	rst 10h			;9b79
	jr z,l9b64h		;9b7a
	add a,c			;9b7c
	ld a,(hl)		;9b7d
	ld a,(hl)		;9b7e
	nop			;9b7f
	defb 0ddh,0ddh,000h ;illegal sequence	;9b80
	add a,b			;9b83
l9b84h:
	add a,b			;9b84
	add a,b			;9b85
	ld b,b			;9b86
	ret nz			;9b87
	add a,b			;9b88
	ld b,b			;9b89
	ret nz			;9b8a
	ret nz			;9b8b
	jr nz,l9b6eh		;9b8c
	ret nz			;9b8e
	jr nz,l9b71h		;9b8f
	ret po			;9b91
	djnz l9b84h		;9b92
	ret po			;9b94
	djnz l9c07h		;9b95
	ret po			;9b97
	ex af,af'		;9b98
l9b99h:
	jr c,l9bfbh		;9b99
	adc a,b			;9b9b
	sbc a,b			;9b9c
	jr nz,$+74		;9b9d
	ld e,b			;9b9f
	nop			;9ba0
	jr z,$+58		;9ba1
	nop			;9ba3
	jr l9bbeh		;9ba4
	nop			;9ba6
	nop			;9ba7
	nop			;9ba8
	nop			;9ba9
	nop			;9baa
	nop			;9bab
	nop			;9bac
	nop			;9bad
	nop			;9bae
	nop			;9baf
	nop			;9bb0
	nop			;9bb1
	nop			;9bb2
	jr l9bcdh		;9bb3
	nop			;9bb5
	inc a			;9bb6
	inc h			;9bb7
	inc b			;9bb8
	ld a,(02026h)		;9bb9
	ld e,(hl)		;9bbc
	ld d,d			;9bbd
l9bbeh:
	inc h			;9bbe
	ld e,e			;9bbf
	ld d,l			;9bc0
	inc d			;9bc1
	ld l,e			;9bc2
	ld a,l			;9bc3
	jr z,l9c1dh		;9bc4
	ld e,a			;9bc6
	ld (hl),049h		;9bc7
	ld e,a			;9bc9
	nop			;9bca
	nop			;9bcb
	nop			;9bcc
l9bcdh:
	nop			;9bcd
	nop			;9bce
	nop			;9bcf
	nop			;9bd0
	ld bc,00101h		;9bd1
	ld (bc),a		;9bd4
	ld (bc),a		;9bd5
	ld bc,00302h		;9bd6
	inc bc			;9bd9
	ld b,004h		;9bda
	ld (bc),a		;9bdc
	rlca			;9bdd
	dec b			;9bde
	nop			;9bdf
	ld b,006h		;9be0
	jr c,l9c2bh		;9be2
	ld e,a			;9be4
	inc a			;9be5
	jp 0addfh		;9be6
	ld d,d			;9be9
	ld e,(hl)		;9bea
	sub l			;9beb
	ld l,d			;9bec
	cp 095h			;9bed
	ld c,d			;9bef
	ld a,d			;9bf0
	ld de,0feceh		;9bf1
	inc b			;9bf4
	in a,(0fbh)		;9bf5
	nop			;9bf7
	ld a,(hl)		;9bf8
	ld a,(hl)		;9bf9
	nop			;9bfa
l9bfbh:
	ret nz			;9bfb
	ret nz			;9bfc
	ret nz			;9bfd
	jr nz,l9c60h		;9bfe
	ret po			;9c00
	djnz $-14		;9c01
	ret p			;9c03
	ex af,af'		;9c04
	ld a,b			;9c05
	ld a,b			;9c06
l9c07h:
	add a,h			;9c07
	sbc a,h			;9c08
	inc e			;9c09
	jp po,004e6h		;9c0a
	add hl,de		;9c0d
	dec de			;9c0e
	nop			;9c0f
	rlca			;9c10
	rlca			;9c11
	jr c,$-55		;9c12
	rra			;9c14
	ld e,h			;9c15
	and e			;9c16
	ld e,a			;9c17
	add hl,hl		;9c18
	sub 018h		;9c19
	sub c			;9c1b
	ld l,(hl)		;9c1c
l9c1dh:
	ret m			;9c1d
	add a,c			;9c1e
	ld a,(hl)		;9c1f
	ld c,d			;9c20
	dec h			;9c21
	jp c,01ea4h		;9c22
	pop hl			;9c25
	ld e,016h		;9c26
	ld l,c			;9c28
	ld d,(hl)		;9c29
	nop			;9c2a
l9c2bh:
	ret nz			;9c2b
	ret nz			;9c2c
	ret nz			;9c2d
	jr nz,l9c90h		;9c2e
	ret po			;9c30
	djnz $-14		;9c31
	ret p			;9c33
l9c34h:
	ex af,af'		;9c34
	ld a,b			;9c35
	ld (hl),b		;9c36
	adc a,h			;9c37
	sub h			;9c38
	ex af,af'		;9c39
	or 0eah			;9c3a
	inc h			;9c3c
	exx			;9c3d
	inc hl			;9c3e
	ret po			;9c3f
	rla			;9c40
	rst 20h			;9c41
	nop			;9c42
	nop			;9c43
	nop			;9c44
	ld b,b			;9c45
	nop			;9c46
	ret po			;9c47
	nop			;9c48
	ld (hl),b		;9c49
	ex af,af'		;9c4a
	djnz l9c61h		;9c4b
	ex af,af'		;9c4d
	ret c			;9c4e
	jr nz,l9c61h		;9c4f
	ret po			;9c51
	ld bc,00400h		;9c52
	nop			;9c55
	dec b			;9c56
	nop			;9c57
	ld bc,00000h		;9c58
	nop			;9c5b
	inc bc			;9c5c
	nop			;9c5d
	inc b			;9c5e
	inc bc			;9c5f
l9c60h:
	inc bc			;9c60
l9c61h:
	nop			;9c61
	ret nz			;9c62
	ccf			;9c63
	ret nz			;9c64
	ccf			;9c65
	add a,h			;9c66
	ld a,e			;9c67
	ld h,d			;9c68
	sbc a,l			;9c69
	jp c,02524h		;9c6a
	ld (bc),a		;9c6d
	add a,l			;9c6e
	ld (bc),a		;9c6f
	ld (bc),a		;9c70
	nop			;9c71
	jr nz,l9c34h		;9c72
	ld b,b			;9c74
	add a,b			;9c75
	inc d			;9c76
	ret po			;9c77
	ld hl,(0a4c4h)		;9c78
	ld b,b			;9c7b
	ld d,b			;9c7c
	jr nz,l9ca7h		;9c7d
	djnz l9c99h		;9c7f
	nop			;9c81
	dec sp			;9c82
	nop			;9c83
	ld b,(hl)		;9c84
	add hl,sp		;9c85
	add a,e			;9c86
	ld a,h			;9c87
	add a,c			;9c88
	ld a,(hl)		;9c89
	add a,e			;9c8a
	ld a,h			;9c8b
	pop bc			;9c8c
	ld a,076h		;9c8d
	add hl,bc		;9c8f
l9c90h:
	ld e,e			;9c90
	jr nz,l9cc3h		;9c91
	nop			;9c93
	ld c,h			;9c94
	jr nc,l9c1dh		;9c95
	ld a,b			;9c97
	dec b			;9c98
l9c99h:
	ld a,d			;9c99
	ld c,(hl)		;9c9a
	jr nc,l9cc9h		;9c9b
	djnz $+22		;9c9d
	ex af,af'		;9c9f
	inc c			;9ca0
	nop			;9ca1
	jr nc,l9ca4h		;9ca2
l9ca4h:
	ld c,h			;9ca4
	jr nc,l9cf3h		;9ca5
l9ca7h:
	jr nc,l9ce1h		;9ca7
	nop			;9ca9
	djnz l9cach		;9caa
l9cach:
	nop			;9cac
	nop			;9cad
	nop			;9cae
	nop			;9caf
	nop			;9cb0
	nop			;9cb1
	jr nz,l9cb4h		;9cb2
l9cb4h:
	ld d,b			;9cb4
	jr nz,l9d27h		;9cb5
	nop			;9cb7
	nop			;9cb8
	nop			;9cb9
	nop			;9cba
	nop			;9cbb
	nop			;9cbc
	nop			;9cbd
	nop			;9cbe
	nop			;9cbf
	nop			;9cc0
	nop			;9cc1
	nop			;9cc2
l9cc3h:
	nop			;9cc3
	djnz l9cfeh		;9cc4
	djnz l9cc8h		;9cc6
l9cc8h:
	nop			;9cc8
l9cc9h:
	nop			;9cc9
	nop			;9cca
	djnz l9cddh		;9ccb
	jr c,l9cdfh		;9ccd
	djnz l9cd1h		;9ccf
l9cd1h:
	nop			;9cd1
	djnz l9ce4h		;9cd2
	djnz l9d52h		;9cd4
	djnz l9ce8h		;9cd6
	djnz l9ceah		;9cd8
	nop			;9cda
	nop			;9cdb
	nop			;9cdc
l9cddh:
	nop			;9cdd
	nop			;9cde
l9cdfh:
	ex af,af'		;9cdf
	ex af,af'		;9ce0
l9ce1h:
	ex af,af'		;9ce1
	inc e			;9ce2
	ex af,af'		;9ce3
l9ce4h:
	ex af,af'		;9ce4
	nop			;9ce5
	nop			;9ce6
	nop			;9ce7
l9ce8h:
	nop			;9ce8
	nop			;9ce9
l9ceah:
	ex af,af'		;9cea
	ex af,af'		;9ceb
	ex af,af'		;9cec
	ex af,af'		;9ced
	ex af,af'		;9cee
	ld c,c			;9cef
	ld hl,(0ff1ch)		;9cf0
l9cf3h:
	inc e			;9cf3
	ld hl,(00849h)		;9cf4
	ex af,af'		;9cf7
	ex af,af'		;9cf8
	nop			;9cf9
	nop			;9cfa
	nop			;9cfb
	nop			;9cfc
	ex af,af'		;9cfd
l9cfeh:
	ex af,af'		;9cfe
	ex af,af'		;9cff
	ex af,af'		;9d00
	ex af,af'		;9d01
	ld a,008h		;9d02
	ex af,af'		;9d04
	ex af,af'		;9d05
	ex af,af'		;9d06
	nop			;9d07
	nop			;9d08
	nop			;9d09
	nop			;9d0a
	nop			;9d0b
	nop			;9d0c
	nop			;9d0d
	nop			;9d0e
	nop			;9d0f
	ex af,af'		;9d10
	ex af,af'		;9d11
	inc e			;9d12
	ex af,af'		;9d13
	ex af,af'		;9d14
	nop			;9d15
	nop			;9d16
	nop			;9d17
	nop			;9d18
	nop			;9d19
	rst 38h			;9d1a
	rst 38h			;9d1b
	rst 38h			;9d1c
	rst 38h			;9d1d
	rst 38h			;9d1e
	rst 38h			;9d1f
	rst 38h			;9d20
	rst 38h			;9d21
	rst 38h			;9d22
	rst 38h			;9d23
	rst 38h			;9d24
	rst 38h			;9d25
	rst 38h			;9d26
l9d27h:
	rst 38h			;9d27
	rst 38h			;9d28
	rst 38h			;9d29
	rst 38h			;9d2a
	rst 38h			;9d2b
	rst 38h			;9d2c
	rst 38h			;9d2d
	rst 38h			;9d2e
	rst 38h			;9d2f
	rst 38h			;9d30
	rst 38h			;9d31
	rst 38h			;9d32
	rst 38h			;9d33
	rst 38h			;9d34
	rst 38h			;9d35
	rst 38h			;9d36
	rst 38h			;9d37
	rst 38h			;9d38
	rst 38h			;9d39
	rst 38h			;9d3a
	rst 38h			;9d3b
	rst 38h			;9d3c
	rst 38h			;9d3d
	rst 38h			;9d3e
	rst 38h			;9d3f
	rst 38h			;9d40
	rst 38h			;9d41
	rst 38h			;9d42
	rst 38h			;9d43
	rst 38h			;9d44
	rst 38h			;9d45
	rst 38h			;9d46
	rst 38h			;9d47
	rst 38h			;9d48
	rst 38h			;9d49
	rst 38h			;9d4a
	rst 38h			;9d4b
	rst 38h			;9d4c
	rst 38h			;9d4d
	rst 38h			;9d4e
	rst 38h			;9d4f
	rst 38h			;9d50
	rst 38h			;9d51
l9d52h:
	rst 38h			;9d52
	rst 38h			;9d53
	rst 38h			;9d54
	rst 38h			;9d55
	rst 38h			;9d56
	rst 38h			;9d57
	rst 38h			;9d58
	rst 38h			;9d59
	rst 38h			;9d5a
	rst 38h			;9d5b
	rst 38h			;9d5c
	rst 38h			;9d5d
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
sub_9f90h:
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
l9fa9h:
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
l9feeh:
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
l9ff8h:
	rst 38h			;9ff8
	rst 38h			;9ff9
	rst 38h			;9ffa
	rst 38h			;9ffb
	rst 38h			;9ffc
	rst 38h			;9ffd
	rst 38h			;9ffe
	rst 38h			;9fff
