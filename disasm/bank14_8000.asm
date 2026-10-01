; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank14_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank14.bin

	org 08000h

	sbc a,d			;8000
sub_8001h:
	ld a,a			;8001
	ccf			;8002
	nop			;8003
	nop			;8004
	inc bc			;8005
sub_8006h:
	add a,c			;8006
	ret nz			;8007
	rst 38h			;8008
	rst 38h			;8009
	nop			;800a
	nop			;800b
	ld b,0fch		;800c
	ld a,(hl)		;800e
	rst 38h			;800f
	nop			;8010
	ret p			;8011
	rst 38h			;8012
	di			;8013
	ld sp,hl		;8014
	ret p			;8015
	rst 38h			;8016
l8017h:
	nop			;8017
	nop			;8018
	rst 38h			;8019
	ret nz			;801a
	ld b,0f0h		;801b
	nop			;801d
	inc bc			;801e
	ld hl,01f05h		;801f
	ld (bc),a		;8022
	ld (02f02h),a		;8023
	ld (bc),a		;8026
	pop af			;8027
	ld (bc),a		;8028
l8029h:
	ld hl,03190h		;8029
	jp p,0f1f2h		;802c
	di			;802f
	ld hl,00f21h		;8030
	rrca			;8033
	jr nz,l8029h		;8034
	ld (01f21h),a		;8036
	jp p,00023h		;8039
	ex af,af'		;803c
	sbc a,c			;803d
	nop			;803e
	ex af,af'		;803f
	nop			;8040
	nop			;8041
	ex af,af'		;8042
	rst 28h			;8043
	nop			;8044
	ex af,af'		;8045
	nop			;8046
	nop			;8047
	rst 38h			;8048
	rst 38h			;8049
	ret m			;804a
	rra			;804b
	ccf			;804c
	ld a,a			;804d
	adc a,a			;804e
	call m,000f8h		;804f
	ret po			;8052
	ret m			;8053
	call m,0f1feh		;8054
	rra			;8057
	rst 38h			;8058
	call m,0f8ffh		;8059
	adc a,a			;805c
	ld a,a			;805d
	ccf			;805e
	rra			;805f
	rlca			;8060
	ccf			;8061
	rra			;8062
	ccf			;8063
	pop af			;8064
	cp 0fch			;8065
	ret m			;8067
	ret po			;8068
	nop			;8069
	rlca			;806a
	rra			;806b
	ccf			;806c
	ld a,a			;806d
	adc a,a			;806e
	di			;806f
	jp p,0e000h		;8070
	ret m			;8073
	call m,0f1feh		;8074
	rst 8			;8077
	ld c,a			;8078
	jp p,0f9f8h		;8079
	adc a,a			;807c
	ld a,a			;807d
	ccf			;807e
	rra			;807f
	rlca			;8080
	ld c,a			;8081
	rra			;8082
	sbc a,a			;8083
	pop af			;8084
	cp 0fch			;8085
sub_8087h:
	ret m			;8087
	ret po			;8088
	nop			;8089
	rlca			;808a
	rra			;808b
	ccf			;808c
	ld a,a			;808d
	adc a,a			;808e
	di			;808f
	pop af			;8090
	nop			;8091
	ret po			;8092
	ret m			;8093
	call m,0f1feh		;8094
	rst 8			;8097
	adc a,a			;8098
	ret p			;8099
	jp p,l8ff3h		;809a
	ld a,a			;809d
	ccf			;809e
	rra			;809f
	rlca			;80a0
	rrca			;80a1
	ld c,a			;80a2
	rst 8			;80a3
	pop af			;80a4
	cp 0fch			;80a5
	ret m			;80a7
	ret po			;80a8
	nop			;80a9
	rlca			;80aa
	rra			;80ab
	ccf			;80ac
	ld a,a			;80ad
	adc a,a			;80ae
	call m,000f9h		;80af
	ret po			;80b2
	ret m			;80b3
	call m,0f1feh		;80b4
	ccf			;80b7
	sbc a,a			;80b8
	ld sp,hl		;80b9
	ld sp,hl		;80ba
	call m,07f8fh		;80bb
	ccf			;80be
	rra			;80bf
	rlca			;80c0
	sbc a,a			;80c1
	sbc a,a			;80c2
	ccf			;80c3
	pop af			;80c4
	cp 0fch			;80c5
	ret m			;80c7
	pop hl			;80c8
	ret po			;80c9
	nop			;80ca
	rlca			;80cb
	rra			;80cc
	ccf			;80cd
	ld a,a			;80ce
	adc a,a			;80cf
	ret p			;80d0
	add a,b			;80d1
	nop			;80d2
	ret po			;80d3
	ret m			;80d4
	call m,0f1feh		;80d5
	rrca			;80d8
	ld bc,l8017h		;80d9
	ret p			;80dc
	adc a,a			;80dd
	ld a,a			;80de
	ccf			;80df
sub_80e0h:
	rra			;80e0
	rlca			;80e1
	ret pe			;80e2
	ld bc,0f10fh		;80e3
	cp 0fch			;80e6
	ret m			;80e8
	ret po			;80e9
	nop			;80ea
	rlca			;80eb
	rra			;80ec
	ccf			;80ed
	ld a,a			;80ee
	adc a,a			;80ef
	ret p			;80f0
	add a,b			;80f1
	nop			;80f2
	ret po			;80f3
	ret m			;80f4
	call m,0f1feh		;80f5
	rrca			;80f8
	ld bc,l8017h		;80f9
	ret p			;80fc
	adc a,a			;80fd
	ld a,a			;80fe
	ccf			;80ff
	rra			;8100
	rlca			;8101
	ret pe			;8102
	ld bc,0f10fh		;8103
	cp 0fch			;8106
	ret m			;8108
	ret po			;8109
	nop			;810a
	rlca			;810b
	rra			;810c
	ccf			;810d
	ld a,a			;810e
	adc a,a			;810f
	ld sp,hl		;8110
	ret m			;8111
	nop			;8112
	ret po			;8113
	ret m			;8114
	call m,0f1feh		;8115
	sbc a,a			;8118
	sbc a,a			;8119
	ret m			;811a
	ld sp,hl		;811b
	ld sp,hl		;811c
	adc a,a			;811d
	ld a,a			;811e
	ccf			;811f
	rra			;8120
	rlca			;8121
	rra			;8122
	rra			;8123
	sbc a,a			;8124
	pop af			;8125
	cp 0fch			;8126
	ret m			;8128
	ret po			;8129
	nop			;812a
	ld (bc),a		;812b
	dec c			;812c
	adc a,h			;812d
	add a,b			;812e
	ret po			;812f
	add a,b			;8130
	defb 0fdh,0fah,0fah ;illegal sequence	;8131
	ret nc			;8134
	ret nc			;8135
	add a,b			;8136
	ret po			;8137
	add a,b			;8138
	defb 0fdh,005h,0fah ;illegal sequence	;8139
	add a,l			;813c
	defb 0fdh,080h,0e0h ;illegal sequence	;813d
	add a,b			;8140
	ret nc			;8141
	inc bc			;8142
	jp m,0fd84h		;8143
	add a,b			;8146
	ret po			;8147
	add a,b			;8148
	inc bc			;8149
	ret nc			;814a
	adc a,h			;814b
	add a,b			;814c
	ret po			;814d
	add a,b			;814e
	defb 0fdh,0fah,0fah ;illegal sequence	;814f
	ret nc			;8152
	ret nc			;8153
	add a,b			;8154
	ret po			;8155
	add a,b			;8156
	defb 0fdh,005h,0fah ;illegal sequence	;8157
	add a,l			;815a
	defb 0fdh,080h,0e0h ;illegal sequence	;815b
	add a,b			;815e
	ret nc			;815f
	inc bc			;8160
	jp m,0fd84h		;8161
	add a,b			;8164
	ret po			;8165
	add a,b			;8166
	inc bc			;8167
	ret nc			;8168
	adc a,h			;8169
	add a,b			;816a
	ret po			;816b
	add a,b			;816c
	defb 0fdh,0fah,0fah ;illegal sequence	;816d
	ret nc			;8170
	ret nc			;8171
	add a,b			;8172
	ret po			;8173
	add a,b			;8174
	defb 0fdh,005h,0fah ;illegal sequence	;8175
	add a,l			;8178
	defb 0fdh,080h,0e0h ;illegal sequence	;8179
	add a,b			;817c
	ret nc			;817d
	inc bc			;817e
	jp m,0fd84h		;817f
	add a,b			;8182
	ret po			;8183
	add a,b			;8184
	inc bc			;8185
	ret nc			;8186
	adc a,h			;8187
	add a,b			;8188
	ret po			;8189
	add a,b			;818a
	defb 0fdh,0fah,0fah ;illegal sequence	;818b
	ret nc			;818e
	ret nc			;818f
	add a,b			;8190
	ret po			;8191
	add a,b			;8192
	defb 0fdh,005h,0fah ;illegal sequence	;8193
	add a,l			;8196
	defb 0fdh,080h,0e0h ;illegal sequence	;8197
	add a,b			;819a
	ret nc			;819b
	inc bc			;819c
	jp m,0fd84h		;819d
	add a,b			;81a0
	ret po			;81a1
	add a,b			;81a2
	inc bc			;81a3
	ret nc			;81a4
	sbc a,l			;81a5
	add a,b			;81a6
	ret po			;81a7
	add a,b			;81a8
	defb 0fdh,0f7h,0f7h ;illegal sequence	;81a9
	ret nc			;81ac
	ret nc			;81ad
	add a,b			;81ae
	ret po			;81af
	add a,b			;81b0
	defb 0fdh,0f7h,0f7h ;illegal sequence	;81b1
	rst 20h			;81b4
	rst 30h			;81b5
	rst 30h			;81b6
	defb 0fdh,080h,0e0h ;illegal sequence	;81b7
	add a,b			;81ba
	ret nc			;81bb
	rst 20h			;81bc
	rst 30h			;81bd
	rst 30h			;81be
	defb 0fdh,080h,0e0h ;illegal sequence	;81bf
	add a,b			;81c2
	inc bc			;81c3
	ret nc			;81c4
	sbc a,l			;81c5
	add a,b			;81c6
	ret po			;81c7
	add a,b			;81c8
	defb 0fdh,0f6h,0f6h ;illegal sequence	;81c9
	ret nc			;81cc
	ret nc			;81cd
	add a,b			;81ce
	ret po			;81cf
	add a,b			;81d0
	defb 0fdh,0f6h,0f6h ;illegal sequence	;81d1
	and (hl)		;81d4
	or 0f6h			;81d5
	defb 0fdh,080h,0e0h ;illegal sequence	;81d7
	add a,b			;81da
	ret nc			;81db
	and (hl)		;81dc
	or 0f6h			;81dd
	defb 0fdh,080h,0e0h ;illegal sequence	;81df
l81e2h:
	add a,b			;81e2
	inc bc			;81e3
	ret nc			;81e4
	adc a,h			;81e5
	add a,b			;81e6
	ret po			;81e7
	add a,b			;81e8
	defb 0fdh,0fah,0fah ;illegal sequence	;81e9
	ret nc			;81ec
	ret nc			;81ed
	add a,b			;81ee
	ret po			;81ef
	add a,b			;81f0
	defb 0fdh,005h,0fah ;illegal sequence	;81f1
	add a,l			;81f4
	defb 0fdh,080h,0e0h ;illegal sequence	;81f5
	add a,b			;81f8
	ret nc			;81f9
	inc bc			;81fa
	jp m,0fd85h		;81fb
	add a,b			;81fe
l81ffh:
	ret po			;81ff
	add a,b			;8200
	ret nc			;8201
	nop			;8202
	ld (bc),a		;8203
	dec e			;8204
	adc a,h			;8205
	add a,c			;8206
	pop hl			;8207
	add a,c			;8208
	defb 0fdh,0fah,0fah ;illegal sequence	;8209
	pop de			;820c
	pop de			;820d
	add a,c			;820e
	pop hl			;820f
	add a,c			;8210
	defb 0fdh,005h,0fah ;illegal sequence	;8211
	add a,l			;8214
	defb 0fdh,081h,0e1h ;illegal sequence	;8215
	add a,c			;8218
	pop de			;8219
	inc bc			;821a
	jp m,0fd84h		;821b
	add a,c			;821e
	pop hl			;821f
	add a,c			;8220
	inc bc			;8221
	pop de			;8222
	adc a,h			;8223
	add a,c			;8224
	pop hl			;8225
	add a,c			;8226
	defb 0fdh,0fah,0fah ;illegal sequence	;8227
	pop de			;822a
	pop de			;822b
	add a,c			;822c
	pop hl			;822d
	add a,c			;822e
	defb 0fdh,005h,0fah ;illegal sequence	;822f
	add a,l			;8232
	defb 0fdh,081h,0e1h ;illegal sequence	;8233
	add a,c			;8236
	pop de			;8237
	inc bc			;8238
	jp m,0fd84h		;8239
	add a,c			;823c
	pop hl			;823d
	add a,c			;823e
	inc bc			;823f
	pop de			;8240
	adc a,h			;8241
	add a,c			;8242
	pop hl			;8243
	add a,c			;8244
	defb 0fdh,0fah,0fah ;illegal sequence	;8245
	pop de			;8248
	pop de			;8249
	add a,c			;824a
	pop hl			;824b
	add a,c			;824c
	defb 0fdh,005h,0fah ;illegal sequence	;824d
	add a,l			;8250
	defb 0fdh,081h,0e1h ;illegal sequence	;8251
	add a,c			;8254
	pop de			;8255
	inc bc			;8256
	jp m,0fd84h		;8257
	add a,c			;825a
	pop hl			;825b
	add a,c			;825c
	inc bc			;825d
	pop de			;825e
	adc a,h			;825f
	add a,c			;8260
	pop hl			;8261
	add a,c			;8262
	defb 0fdh,0fah,0fah ;illegal sequence	;8263
	pop de			;8266
	pop de			;8267
	add a,c			;8268
	pop hl			;8269
	add a,c			;826a
	defb 0fdh,005h,0fah ;illegal sequence	;826b
	add a,l			;826e
	defb 0fdh,081h,0e1h ;illegal sequence	;826f
	add a,c			;8272
	pop de			;8273
	inc bc			;8274
	jp m,0fd84h		;8275
	add a,c			;8278
	pop hl			;8279
	add a,c			;827a
	inc bc			;827b
	pop de			;827c
	sbc a,l			;827d
	add a,c			;827e
	pop hl			;827f
	add a,c			;8280
	defb 0fdh,0f7h,0f7h ;illegal sequence	;8281
	pop de			;8284
	pop de			;8285
	add a,c			;8286
	pop hl			;8287
	add a,c			;8288
	defb 0fdh,0f7h,0f7h ;illegal sequence	;8289
	rst 20h			;828c
	rst 30h			;828d
	rst 30h			;828e
	defb 0fdh,081h,0e1h ;illegal sequence	;828f
	add a,c			;8292
	pop de			;8293
	rst 20h			;8294
	rst 30h			;8295
	rst 30h			;8296
	defb 0fdh,081h,0e1h ;illegal sequence	;8297
	add a,c			;829a
	inc bc			;829b
	pop de			;829c
	sbc a,l			;829d
	add a,c			;829e
	pop hl			;829f
	add a,c			;82a0
	defb 0fdh,0f6h,0f6h ;illegal sequence	;82a1
	pop de			;82a4
	pop de			;82a5
	add a,c			;82a6
	pop hl			;82a7
	add a,c			;82a8
	defb 0fdh,0f6h,0f6h ;illegal sequence	;82a9
	and (hl)		;82ac
	or 0f6h			;82ad
	defb 0fdh,081h,0e1h ;illegal sequence	;82af
	add a,c			;82b2
	pop de			;82b3
	and (hl)		;82b4
	or 0f6h			;82b5
	defb 0fdh,081h,0e1h ;illegal sequence	;82b7
	add a,c			;82ba
	inc bc			;82bb
	pop de			;82bc
	adc a,h			;82bd
	add a,c			;82be
	pop hl			;82bf
	add a,c			;82c0
	defb 0fdh,0fah,0fah ;illegal sequence	;82c1
	pop de			;82c4
	pop de			;82c5
	add a,c			;82c6
	pop hl			;82c7
	add a,c			;82c8
	defb 0fdh,005h,0fah ;illegal sequence	;82c9
	add a,l			;82cc
	defb 0fdh,081h,0e1h ;illegal sequence	;82cd
	add a,c			;82d0
	pop de			;82d1
	inc bc			;82d2
	jp m,0fd85h		;82d3
	add a,c			;82d6
	pop hl			;82d7
	add a,c			;82d8
	pop de			;82d9
	nop			;82da
	ld (bc),a		;82db
	defb 0fdh,08ch ;adc a,iyh	;82dc
	adc a,a			;82de
	rst 28h			;82df
	adc a,a			;82e0
	defb 0fdh,0fah,0fah ;illegal sequence	;82e1
	rst 18h			;82e4
	rst 18h			;82e5
	adc a,a			;82e6
	rst 28h			;82e7
	adc a,a			;82e8
	defb 0fdh,005h,0fah ;illegal sequence	;82e9
	add a,l			;82ec
	defb 0fdh,08fh,0efh ;illegal sequence	;82ed
	adc a,a			;82f0
	rst 18h			;82f1
	inc bc			;82f2
	jp m,0fd84h		;82f3
	adc a,a			;82f6
	rst 28h			;82f7
	adc a,a			;82f8
	inc bc			;82f9
	rst 18h			;82fa
	adc a,h			;82fb
	adc a,a			;82fc
	rst 28h			;82fd
	adc a,a			;82fe
	defb 0fdh,0fah,0fah ;illegal sequence	;82ff
	rst 18h			;8302
	rst 18h			;8303
	adc a,a			;8304
	rst 28h			;8305
	adc a,a			;8306
	defb 0fdh,005h,0fah ;illegal sequence	;8307
	add a,l			;830a
	defb 0fdh,08fh,0efh ;illegal sequence	;830b
	adc a,a			;830e
	rst 18h			;830f
	inc bc			;8310
	jp m,0fd84h		;8311
	adc a,a			;8314
	rst 28h			;8315
	adc a,a			;8316
	inc bc			;8317
	rst 18h			;8318
	adc a,h			;8319
	adc a,a			;831a
	rst 28h			;831b
	adc a,a			;831c
	defb 0fdh,0fah,0fah ;illegal sequence	;831d
	rst 18h			;8320
	rst 18h			;8321
	adc a,a			;8322
	rst 28h			;8323
	adc a,a			;8324
	defb 0fdh,005h,0fah ;illegal sequence	;8325
	add a,l			;8328
	defb 0fdh,08fh,0efh ;illegal sequence	;8329
	adc a,a			;832c
	rst 18h			;832d
	inc bc			;832e
	jp m,0fd84h		;832f
	adc a,a			;8332
	rst 28h			;8333
	adc a,a			;8334
	inc bc			;8335
	rst 18h			;8336
	adc a,h			;8337
	adc a,a			;8338
	rst 28h			;8339
	adc a,a			;833a
	defb 0fdh,0fah,0fah ;illegal sequence	;833b
	rst 18h			;833e
	rst 18h			;833f
	adc a,a			;8340
	rst 28h			;8341
	adc a,a			;8342
	defb 0fdh,005h,0fah ;illegal sequence	;8343
	add a,l			;8346
	defb 0fdh,08fh,0efh ;illegal sequence	;8347
	adc a,a			;834a
	rst 18h			;834b
	inc bc			;834c
	jp m,0fd84h		;834d
	adc a,a			;8350
	rst 28h			;8351
	adc a,a			;8352
	inc bc			;8353
	rst 18h			;8354
	sbc a,l			;8355
	adc a,a			;8356
	rst 28h			;8357
	adc a,a			;8358
	defb 0fdh,0f7h,0f7h ;illegal sequence	;8359
	rst 18h			;835c
	rst 18h			;835d
	adc a,a			;835e
	rst 28h			;835f
	adc a,a			;8360
	defb 0fdh,0f7h,0f7h ;illegal sequence	;8361
	rst 20h			;8364
	rst 30h			;8365
	rst 30h			;8366
	defb 0fdh,08fh,0efh ;illegal sequence	;8367
	adc a,a			;836a
	rst 18h			;836b
	rst 20h			;836c
	rst 30h			;836d
	rst 30h			;836e
	defb 0fdh,08fh,0efh ;illegal sequence	;836f
	adc a,a			;8372
	inc bc			;8373
	rst 18h			;8374
	sbc a,l			;8375
	adc a,a			;8376
	rst 28h			;8377
	adc a,a			;8378
	defb 0fdh,0f6h,0f6h ;illegal sequence	;8379
	rst 18h			;837c
	rst 18h			;837d
	adc a,a			;837e
	rst 28h			;837f
	adc a,a			;8380
	defb 0fdh,0f6h,0f6h ;illegal sequence	;8381
	and (hl)		;8384
	or 0f6h			;8385
	defb 0fdh,08fh,0efh ;illegal sequence	;8387
	adc a,a			;838a
	rst 18h			;838b
	and (hl)		;838c
	or 0f6h			;838d
	defb 0fdh,08fh,0efh ;illegal sequence	;838f
	adc a,a			;8392
	inc bc			;8393
	rst 18h			;8394
	adc a,h			;8395
	adc a,a			;8396
	rst 28h			;8397
	adc a,a			;8398
	defb 0fdh,0fah,0fah ;illegal sequence	;8399
	rst 18h			;839c
	rst 18h			;839d
	adc a,a			;839e
	rst 28h			;839f
	adc a,a			;83a0
	defb 0fdh,005h,0fah ;illegal sequence	;83a1
	add a,l			;83a4
	defb 0fdh,08fh,0efh ;illegal sequence	;83a5
	adc a,a			;83a8
	rst 18h			;83a9
	inc bc			;83aa
	jp m,0fd85h		;83ab
	adc a,a			;83ae
	rst 28h			;83af
	adc a,a			;83b0
	rst 18h			;83b1
	nop			;83b2
	ex af,af'		;83b3
	rst 38h			;83b4
	nop			;83b5
	ex af,af'		;83b6
	ret p			;83b7
	nop			;83b8
	inc bc			;83b9
	rst 38h			;83ba
	add a,c			;83bb
	cp 007h			;83bc
	rst 38h			;83be
	add a,c			;83bf
	defb 0fdh,007h,0ffh ;illegal sequence	;83c0
	add a,c			;83c3
	ei			;83c4
	rlca			;83c5
	rst 38h			;83c6
	add a,c			;83c7
	rst 30h			;83c8
	rlca			;83c9
	rst 38h			;83ca
	add a,c			;83cb
	rst 28h			;83cc
	rlca			;83cd
	rst 38h			;83ce
	add a,c			;83cf
	rst 18h			;83d0
	rlca			;83d1
	rst 38h			;83d2
	add a,c			;83d3
	cp a			;83d4
	rlca			;83d5
	rst 38h			;83d6
	add a,c			;83d7
	ld a,a			;83d8
	inc b			;83d9
	rst 38h			;83da
	nop			;83db
	ld b,b			;83dc
	ret m			;83dd
	nop			;83de
	ex af,af'		;83df
	nop			;83e0
	dec b			;83e1
	rst 38h			;83e2
sub_83e3h:
	in a,(0feh)		;83e3
	adc a,(hl)		;83e5
	add a,(hl)		;83e6
	rst 38h			;83e7
	rst 38h			;83e8
	ld b,e			;83e9
l83eah:
	ld b,e			;83ea
	ld h,c			;83eb
	ld b,b			;83ec
	ld b,b			;83ed
	ld h,b			;83ee
	rst 38h			;83ef
	rst 38h			;83f0
	cp 086h			;83f1
	inc bc			;83f3
	inc bc			;83f4
	ld bc,0fffch		;83f5
	call m,0c0f0h		;83f8
	ld a,a			;83fb
	rst 38h			;83fc
	rst 38h			;83fd
	call m,0f801h		;83fe
	cp 0fch			;8401
	pop af			;8403
	jp 0f80fh		;8404
	ret p			;8407
	call m,0c1c7h		;8408
	ld b,b			;840b
	ld b,b			;840c
	ld h,b			;840d
	pop af			;840e
	add a,b			;840f
	jp 0fcffh		;8410
	ret p			;8413
	ret nz			;8414
	add a,b			;8415
	cp 0ffh			;8416
	jp 0fc01h		;8418
	ret p			;841b
	jp 0f01fh		;841c
	pop bc			;841f
	pop bc			;8420
	nop			;8421
	cp 0f8h			;8422
	add a,e			;8424
	ld a,a			;8425
	nop			;8426
	ret nz			;8427
	inc bc			;8428
	rrca			;8429
	inc a			;842a
	ret p			;842b
	ret nz			;842c
	add a,b			;842d
	cp 0f1h			;842e
	rst 0			;8430
	ld a,h			;8431
	nop			;8432
	add a,b			;8433
	pop bc			;8434
	rst 38h			;8435
	rst 38h			;8436
	add a,e			;8437
	add a,c			;8438
	add a,c			;8439
	jp 07f47h		;843a
	add a,a			;843d
	add a,a			;843e
	nop			;843f
	dec c			;8440
	ld sp,hl		;8441
	ld b,0f5h		;8442
	ld (bc),a		;8444
	ld e,l			;8445
	rlca			;8446
	push af			;8447
	inc bc			;8448
	defb 0fdh,081h,0d8h ;illegal sequence	;8449
	inc b			;844c
	defb 0fdh,003h,0d5h ;illegal sequence	;844d
	add a,d			;8450
	ret c			;8451
	ret m			;8452
	ld b,0d8h		;8453
	add a,(hl)		;8455
	push de			;8456
	push af			;8457
	push af			;8458
	ret m			;8459
	defb 0fdh,0fdh,003h ;illegal sequence	;845a
	ld e,l			;845d
	inc bc			;845e
	push af			;845f
	inc b			;8460
	defb 0fdh,081h,0d8h ;illegal sequence	;8461
	inc bc			;8464
	defb 0fdh,004h,0d8h ;illegal sequence	;8465
	add a,h			;8468
	push de			;8469
	push af			;846a
	ld e,l			;846b
	ld e,l			;846c
	inc bc			;846d
	ret c			;846e
	inc bc			;846f
	push de			;8470
	inc bc			;8471
	push af			;8472
	add a,e			;8473
	ret m			;8474
	defb 0fdh,0fdh,003h ;illegal sequence	;8475
	ret c			;8478
	ld (bc),a		;8479
	push de			;847a
	ld b,0f5h		;847b
	ld (bc),a		;847d
	defb 0fdh,003h,0f5h ;illegal sequence	;847e
	add a,c			;8481
	ld e,l			;8482
	nop			;8483
	rlca			;8484
	ld bc,0ff0bh		;8485
	add a,e			;8488
	adc a,a			;8489
	add a,c			;848a
	or c			;848b
	inc bc			;848c
	cp a			;848d
	add a,h			;848e
	rrca			;848f
	add a,c			;8490
	or b			;8491
	cp (hl)			;8492
	inc bc			;8493
	cp a			;8494
	add a,c			;8495
	rst 38h			;8496
	rlca			;8497
	add a,b			;8498
	add a,h			;8499
	rst 38h			;849a
	inc bc			;849b
	rst 38h			;849c
	rst 38h			;849d
	inc b			;849e
	ret p			;849f
	add a,(hl)		;84a0
	nop			;84a1
	ld (hl),b		;84a2
	ld (hl),b		;84a3
	ret m			;84a4
	add a,b			;84a5
	ret p			;84a6
	inc b			;84a7
	nop			;84a8
	add a,c			;84a9
	rst 38h			;84aa
	ld b,080h		;84ab
	add a,c			;84ad
	rst 38h			;84ae
	rlca			;84af
	ld bc,0f802h		;84b0
	add a,c			;84b3
	rst 38h			;84b4
	dec b			;84b5
sub_84b6h:
	ret p			;84b6
	add a,e			;84b7
	ret m			;84b8
	add a,b			;84b9
	ret p			;84ba
	inc bc			;84bb
	nop			;84bc
	ld (bc),a		;84bd
l84beh:
	ret p			;84be
	add a,c			;84bf
	nop			;84c0
	inc bc			;84c1
	add a,c			;84c2
	ld (bc),a		;84c3
	rst 38h			;84c4
	add a,c			;84c5
	add a,c			;84c6
	inc bc			;84c7
	rst 38h			;84c8
	ld b,080h		;84c9
	nop			;84cb
	jr nz,l84beh		;84cc
	rlca			;84ce
	djnz l84d5h		;84cf
	ret p			;84d1
	add a,c			;84d2
	djnz l84d9h		;84d3
l84d5h:
	rrca			;84d5
	add a,h			;84d6
	djnz l84e8h		;84d7
l84d9h:
	jp p,004f2h		;84d9
	ld hl,01f02h		;84dc
	ld b,010h		;84df
	ld (bc),a		;84e1
	pop af			;84e2
	ld b,0f0h		;84e3
	add a,h			;84e5
	pop af			;84e6
	ret p			;84e7
l84e8h:
	ret p			;84e8
	ld hl,01003h		;84e9
	add a,e			;84ec
	rrca			;84ed
	jp p,004f2h		;84ee
	ld hl,01084h		;84f1
	rrca			;84f4
	rrca			;84f5
	pop af			;84f6
	inc b			;84f7
	ret p			;84f8
	inc bc			;84f9
	pop af			;84fa
	rlca			;84fb
	rrca			;84fc
	nop			;84fd
	add a,c			;84fe
	nop			;84ff
	ld c,07fh		;8500
	dec b			;8502
	rst 38h			;8503
	add a,c			;8504
	rla			;8505
	ld b,0ffh		;8506
	add a,c			;8508
	add a,c			;8509
	ex af,af'		;850a
	rst 38h			;850b
	add a,c			;850c
	add a,c			;850d
	inc b			;850e
	rst 38h			;850f
	add a,c			;8510
	ld bc,0ff06h		;8511
	add a,c			;8514
	nop			;8515
	add hl,bc		;8516
	rst 38h			;8517
	add a,d			;8518
	nop			;8519
	ld bc,0ff05h		;851a
	add a,c			;851d
	add a,c			;851e
	inc b			;851f
	rst 38h			;8520
	add a,h			;8521
	add a,c			;8522
	rst 38h			;8523
	rst 38h			;8524
	add a,c			;8525
	rlca			;8526
	rst 38h			;8527
	add a,c			;8528
	nop			;8529
	ld b,07fh		;852a
	add a,c			;852c
	ld bc,0ff07h		;852d
	add a,l			;8530
	inc bc			;8531
	rst 38h			;8532
	rst 38h			;8533
	add a,b			;8534
	nop			;8535
	inc bc			;8536
l8537h:
	ld a,a			;8537
	adc a,b			;8538
	inc bc			;8539
	rst 38h			;853a
	call m,0fc80h		;853b
	add a,b			;853e
	nop			;853f
	nop			;8540
	inc b			;8541
	inc bc			;8542
l8543h:
	dec b			;8543
	rst 38h			;8544
	add a,e			;8545
	ret po			;8546
	nop			;8547
	ret po			;8548
	inc bc			;8549
	nop			;854a
	add a,d			;854b
	rra			;854c
	rst 38h			;854d
	inc b			;854e
	add a,b			;854f
	inc b			;8550
	nop			;8551
	inc bc			;8552
	ld a,(hl)		;8553
	inc bc			;8554
	nop			;8555
	add a,c			;8556
	inc a			;8557
	inc b			;8558
	ret pe			;8559
	ld (bc),a		;855a
	nop			;855b
	add a,e			;855c
	cp 000h			;855d
	nop			;855f
	dec b			;8560
	add a,c			;8561
	add a,a			;8562
	rst 38h			;8563
	jp l81ffh		;8564
	add a,c			;8567
	rst 38h			;8568
	rst 38h			;8569
	inc bc			;856a
	add a,c			;856b
l856ch:
	ld (bc),a		;856c
	ret pe			;856d
	inc b			;856e
	inc bc			;856f
	ld (bc),a		;8570
	rst 38h			;8571
	inc bc			;8572
	rla			;8573
	ld (bc),a		;8574
	nop			;8575
	dec b			;8576
	ret pe			;8577
	ld (bc),a		;8578
	ex de,hl		;8579
	ld (bc),a		;857a
	dec hl			;857b
	add a,(hl)		;857c
	ld hl,(03f28h)		;857d
	inc a			;8580
	inc a			;8581
	ccf			;8582
	inc bc			;8583
	rla			;8584
	add a,l			;8585
	nop			;8586
	ret pe			;8587
	ret pe			;8588
	nop			;8589
	nop			;858a
	inc b			;858b
	ret pe			;858c
	adc a,b			;858d
	call m,00707h		;858e
	rst 38h			;8591
	rla			;8592
	rla			;8593
	rst 38h			;8594
	rst 38h			;8595
	dec b			;8596
	ret pe			;8597
	add a,h			;8598
	nop			;8599
	ret p			;859a
	ret p			;859b
	rst 38h			;859c
	inc b			;859d
	rla			;859e
	add a,h			;859f
	rst 38h			;85a0
	add a,b			;85a1
	add a,b			;85a2
	rst 38h			;85a3
	inc bc			;85a4
	rla			;85a5
	add a,h			;85a6
	rst 38h			;85a7
	ret nz			;85a8
	ret nz			;85a9
	rst 38h			;85aa
	nop			;85ab
	add a,c			;85ac
	sub b			;85ad
	ld l,c			;85ae
	ret p			;85af
	ld (bc),a		;85b0
	pop af			;85b1
	inc b			;85b2
	djnz l8537h		;85b3
	jp p,007f1h		;85b5
	ret p			;85b8
	ld (bc),a		;85b9
	pop af			;85ba
	inc b			;85bb
	djnz l8543h		;85bc
	ret p			;85be
	ld hl,01021h		;85bf
	djnz l85cah		;85c2
	rra			;85c4
	ld b,00fh		;85c5
	add a,c			;85c7
	djnz l85d2h		;85c8
l85cah:
	rrca			;85ca
	add a,c			;85cb
	jp p,0f103h		;85cc
	ld (bc),a		;85cf
	ret p			;85d0
	inc bc			;85d1
l85d2h:
	pop af			;85d2
	inc bc			;85d3
	ret p			;85d4
	add a,(hl)		;85d5
	pop af			;85d6
	ret p			;85d7
	ret p			;85d8
	djnz l85eah		;85d9
	pop af			;85db
	dec b			;85dc
	ret p			;85dd
	ld (bc),a		;85de
	djnz l85e3h		;85df
	rrca			;85e1
	inc b			;85e2
l85e3h:
	ld bc,02181h		;85e3
	ld a,(bc)		;85e6
	djnz l856ch		;85e7
	ret p			;85e9
l85eah:
	djnz l85fch		;85ea
	ld b,00fh		;85ec
	add a,c			;85ee
	djnz $+5		;85ef
	rrca			;85f1
	add a,c			;85f2
	djnz l85fch		;85f3
	ret p			;85f5
	add a,c			;85f6
	ld hl,01003h		;85f7
	ld (bc),a		;85fa
	rrca			;85fb
l85fch:
	add a,d			;85fc
	ld hl,00410h		;85fd
	ld hl,01084h		;8600
	pop af			;8603
	pop af			;8604
	ret p			;8605
	rlca			;8606
	ld hl,0f981h		;8607
	nop			;860a
	adc a,b			;860b
	ld a,h			;860c
	ld b,b			;860d
	dec e			;860e
	dec a			;860f
	ld a,h			;8610
	ld b,b			;8611
	ld a,l			;8612
	ld a,l			;8613
	ld b,06fh		;8614
	adc a,b			;8616
	ld l,b			;8617
	ld h,b			;8618
	ld a,(hl)		;8619
	ld (hl),b		;861a
	ld bc,07e0fh		;861b
	ld (hl),b		;861e
	inc bc			;861f
	ld a,a			;8620
	adc a,d			;8621
	ld a,h			;8622
	ld h,b			;8623
	inc bc			;8624
	rra			;8625
	ld a,h			;8626
	ld h,b			;8627
	ld a,a			;8628
	ld a,h			;8629
	ld (hl),b		;862a
	ld b,b			;862b
	dec b			;862c
	ld a,a			;862d
	add a,e			;862e
	ld a,h			;862f
	ld (hl),b		;8630
	ld b,b			;8631
	inc bc			;8632
	ld a,a			;8633
	add a,07eh		;8634
	ld a,b			;8636
	ld l,a			;8637
	ld l,(hl)		;8638
	ld l,b			;8639
	ld b,b			;863a
	ei			;863b
	ld a,h			;863c
	or b			;863d
	ret nz			;863e
	ld h,b			;863f
	ld a,h			;8640
	jr nc,l8643h		;8641
l8643h:
	inc bc			;8643
	rrca			;8644
	ccf			;8645
	ld a,h			;8646
	ld (hl),b		;8647
	ld b,b			;8648
	ld a,h			;8649
	ld (hl),b		;864a
	ld b,b			;864b
	inc bc			;864c
	rrca			;864d
	ccf			;864e
	ld b,b			;864f
	inc bc			;8650
	rrca			;8651
	cpl			;8652
	ld l,(hl)		;8653
	ld c,b			;8654
	ld l,a			;8655
	ld l,a			;8656
	rlca			;8657
	rst 28h			;8658
	ret pe			;8659
	ret nz			;865a
	rst 28h			;865b
	rst 28h			;865c
	ret pe			;865d
	add a,b			;865e
	rlca			;865f
	rra			;8660
	ld a,b			;8661
	ld h,b			;8662
	ld a,a			;8663
	ld a,a			;8664
	ld a,b			;8665
	ld h,b			;8666
	inc bc			;8667
	rrca			;8668
	ccf			;8669
	ld a,h			;866a
	ld (hl),b		;866b
	ld b,b			;866c
	ld a,h			;866d
	ld (hl),b		;866e
	rlca			;866f
	ccf			;8670
	ret m			;8671
	ret nz			;8672
	nop			;8673
	nop			;8674
	ret m			;8675
	ret nz			;8676
	call m,0f8f8h		;8677
	nop			;867a
	inc bc			;867b
	ret pe			;867c
	ld b,0ffh		;867d
	add a,h			;867f
	cp 0f8h			;8680
	ret po			;8682
	rst 38h			;8683
	rlca			;8684
	add a,l			;8685
	ld b,009h		;8686
	add a,d			;8688
	jp (hl)			;8689
	ld sp,hl		;868a
	dec b			;868b
	add hl,bc		;868c
	sub e			;868d
	ret			;868e
	ld sp,hl		;868f
	defb 0fdh,001h,0c1h ;illegal sequence	;8690
	ld sp,hl		;8693
	ccf			;8694
	rlca			;8695
	ld a,006h		;8696
	ld bc,0c101h		;8698
	pop af			;869b
	defb 0fdh,03fh,00fh ;illegal sequence	;869c
	inc bc			;869f
	ld a,007h		;86a0
	halt			;86a2
	add a,c			;86a3
	nop			;86a4
	inc b			;86a5
	add a,b			;86a6
	add a,d			;86a7
	rst 38h			;86a8
	nop			;86a9
	ld de,00680h		;86aa
	nop			;86ad
	sbc a,a			;86ae
	ccf			;86af
	rrca			;86b0
	inc bc			;86b1
	defb 0fdh,03fh,00fh ;illegal sequence	;86b2
	dec bc			;86b5
	halt			;86b6
	ld (de),a		;86b7
	add hl,bc		;86b8
	add hl,bc		;86b9
	ld c,002h		;86ba
	pop bc			;86bc
	pop af			;86bd
	defb 0fdh,03fh,00fh ;illegal sequence	;86be
	inc bc			;86c1
	ccf			;86c2
	rrca			;86c3
	inc bc			;86c4
	ld a,00eh		;86c5
	ld (bc),a		;86c7
	pop bc			;86c8
	pop af			;86c9
	ld a,(hl)		;86ca
	ld bc,0ff01h		;86cb
	inc b			;86ce
	halt			;86cf
	inc b			;86d0
	or l			;86d1
	add a,h			;86d2
	dec (hl)		;86d3
	ld bc,07e7eh		;86d4
	inc bc			;86d7
	ld (hl),087h		;86d8
	ld b,030h		;86da
	jr nc,l8714h		;86dc
	nop			;86de
	add a,b			;86df
	rst 38h			;86e0
	inc b			;86e1
	nop			;86e2
	add a,l			;86e3
	rst 38h			;86e4
	rra			;86e5
	rrca			;86e6
	rrca			;86e7
	rst 38h			;86e8
	inc b			;86e9
	ret m			;86ea
	dec b			;86eb
	nop			;86ec
	sbc a,a			;86ed
	ld a,a			;86ee
	rst 38h			;86ef
	ccf			;86f0
	rst 28h			;86f1
	rra			;86f2
	rlca			;86f3
	ld e,006h		;86f4
	ld bc,0e101h		;86f6
	ld sp,hl		;86f9
	add a,c			;86fa
	pop af			;86fb
	ld a,a			;86fc
	rrca			;86fd
	ld a,(hl)		;86fe
	ld c,001h		;86ff
	ld bc,0fdc1h		;8701
	ld b,a			;8704
	ld b,e			;8705
	ld a,002h		;8706
	ld b,c			;8708
	ld b,c			;8709
	call m,0fffch		;870a
	dec b			;870d
	ret p			;870e
	add a,c			;870f
	nop			;8710
	inc bc			;8711
	add a,c			;8712
	add a,c			;8713
l8714h:
	rst 38h			;8714
	inc bc			;8715
	add a,c			;8716
	add a,e			;8717
	rst 38h			;8718
	pop bc			;8719
	rst 38h			;871a
	ex af,af'		;871b
	add a,c			;871c
	add a,c			;871d
	rst 38h			;871e
	inc b			;871f
	add a,c			;8720
	rlca			;8721
	cp 081h			;8722
	nop			;8724
	rlca			;8725
	ld a,(hl)		;8726
	ld (bc),a		;8727
	nop			;8728
	ld (bc),a		;8729
	rst 38h			;872a
	dec c			;872b
	add a,b			;872c
	inc b			;872d
	call z,00003h		;872e
	djnz l87b2h		;8731
	add a,c			;8733
	rst 38h			;8734
	dec c			;8735
	add a,b			;8736
	ld (bc),a		;8737
	rst 38h			;8738
	sbc a,h			;8739
	ld h,(hl)		;873a
	rra			;873b
	inc bc			;873c
	rra			;873d
	inc bc			;873e
	nop			;873f
	nop			;8740
	ret po			;8741
l8742h:
	call m,0081fh		;8742
	rla			;8745
	inc bc			;8746
	ex af,af'		;8747
	ex af,af'		;8748
	ret pe			;8749
	cp 0ffh			;874a
	ccf			;874c
	rrca			;874d
	dec bc			;874e
	halt			;874f
	ld (de),a		;8750
	add hl,bc		;8751
	add hl,bc		;8752
	ld a,00eh		;8753
	ld (bc),a		;8755
	dec b			;8756
	ld bc,00081h		;8757
	inc b			;875a
	ret m			;875b
	add a,e			;875c
	rst 38h			;875d
	call m,005fch		;875e
	halt			;8761
	add a,(hl)		;8762
	add hl,bc		;8763
	ld (hl),a		;8764
	ld bc,0c0c0h		;8765
	nop			;8768
	dec b			;8769
	ret p			;876a
	rlca			;876b
	ret pe			;876c
	dec b			;876d
	nop			;876e
	sbc a,e			;876f
	cp 0ffh			;8770
	call m,03afch		;8772
	sbc a,d			;8775
	rst 8			;8776
	ret p			;8777
	ret p			;8778
	sub b			;8779
	ret p			;877a
l877bh:
	rra			;877b
	ld bc,00703h		;877c
	rrca			;877f
l8780h:
	jr nc,l8742h		;8780
	rst 38h			;8782
	nop			;8783
	sub b			;8784
	sub b			;8785
	sub e			;8786
	sub e			;8787
	nop			;8788
	rla			;8789
	rla			;878a
	inc bc			;878b
	rst 38h			;878c
	sub (hl)		;878d
	rlca			;878e
	rst 30h			;878f
	rst 38h			;8790
	ret pe			;8791
	ret pe			;8792
	nop			;8793
	nop			;8794
	ld (hl),a		;8795
	nop			;8796
	ld (hl),a		;8797
	nop			;8798
	jp nc,l8780h		;8799
	ld bc,07d01h		;879c
	ld d,l			;879f
	ld d,l			;87a0
	rst 38h			;87a1
	rla			;87a2
	rla			;87a3
	inc bc			;87a4
	pop de			;87a5
	xor (hl)		;87a6
	rst 38h			;87a7
	ld l,02eh		;87a8
	nop			;87aa
	nop			;87ab
	ld l,d			;87ac
	nop			;87ad
	add a,c			;87ae
	add a,c			;87af
	nop			;87b0
	add a,c			;87b1
l87b2h:
	rst 38h			;87b2
	ld a,(hl)		;87b3
	rst 18h			;87b4
	djnz l87c7h		;87b5
	ld hl,0402fh		;87b7
	add a,b			;87ba
	add a,b			;87bb
	ei			;87bc
	inc c			;87bd
	inc c			;87be
	add a,(hl)		;87bf
	or 003h			;87c0
	ld bc,08301h		;87c2
	add a,b			;87c5
	ld b,b			;87c6
l87c7h:
	jr nz,$-30		;87c7
	rst 28h			;87c9
	ex af,af'		;87ca
	ret p			;87cb
	ld a,(hl)		;87cc
	jp 0c318h		;87cd
	jp 08181h		;87d0
	ld h,(hl)		;87d3
	ld h,(hl)		;87d4
	dec b			;87d5
	in a,(087h)		;87d6
	jr l8858h		;87d8
	rlca			;87da
	inc b			;87db
	inc b			;87dc
	cp 002h			;87dd
	inc bc			;87df
	cp 084h			;87e0
	ret po			;87e2
	jr nz,l8805h		;87e3
	ld b,b			;87e5
	inc b			;87e6
	ld a,a			;87e7
	ld (bc),a		;87e8
	ret nz			;87e9
	add a,c			;87ea
	rst 38h			;87eb
	inc bc			;87ec
	ret nz			;87ed
	sub b			;87ee
	ret po			;87ef
	rst 38h			;87f0
	add a,c			;87f1
	add a,c			;87f2
	cp (hl)			;87f3
	add a,b			;87f4
	add a,b			;87f5
	jr nz,l8837h		;87f6
	jr nz,l877bh		;87f8
	cp 0d7h			;87fa
	rst 10h			;87fc
	cp a			;87fd
	rst 38h			;87fe
	inc bc			;87ff
	nop			;8800
	add a,a			;8801
	cp 000h			;8802
	nop			;8804
l8805h:
	cp 0feh			;8805
	nop			;8807
	nop			;8808
	inc b			;8809
	jp m,0008ch		;880a
	sub c			;880d
	rst 38h			;880e
	ld bc,0d5ffh		;880f
	push de			;8812
	ld d,l			;8813
	ld d,l			;8814
	ld a,l			;8815
	jp 005c3h		;8816
	cp 002h			;8819
	ret m			;881b
	ld (bc),a		;881c
	rst 38h			;881d
	rlca			;881e
	sub l			;881f
	rlca			;8820
	xor c			;8821
	ld (bc),a		;8822
	rst 38h			;8823
	add a,h			;8824
	ret z			;8825
	call po,0e4c8h		;8826
	inc bc			;8829
	pop de			;882a
	add a,e			;882b
	jp 07e42h		;882c
	inc bc			;882f
	adc a,c			;8830
	add a,h			;8831
	rst 38h			;8832
	xor c			;8833
	add a,c			;8834
	add a,c			;8835
	inc bc			;8836
l8837h:
	add a,d			;8837
	add a,e			;8838
	add a,h			;8839
	call m,00704h		;883a
	add a,l			;883d
	ld (bc),a		;883e
	rst 38h			;883f
	ld (bc),a		;8840
	push hl			;8841
	add a,l			;8842
	ld (hl),l		;8843
	dec e			;8844
	dec c			;8845
	dec b			;8846
	dec b			;8847
	rlca			;8848
	push de			;8849
	sub e			;884a
	rst 38h			;884b
	cp 089h			;884c
	adc a,c			;884e
	rst 38h			;884f
	add a,a			;8850
	defb 0fdh,085h ;add a,iyl	;8851
	rst 38h			;8853
	ld a,h			;8854
	rst 38h			;8855
	rrca			;8856
	rst 20h			;8857
l8858h:
	sub e			;8858
	ret			;8859
	push hl			;885a
	push af			;885b
	sub l			;885c
	push af			;885d
	inc bc			;885e
	sub l			;885f
	sbc a,e			;8860
	push af			;8861
	sub l			;8862
	rst 38h			;8863
	sub c			;8864
	res 2,c			;8865
	res 2,c			;8867
	set 5,b			;8869
	ret pe			;886b
	pop bc			;886c
	ld bc,00603h		;886d
	rlca			;8870
	di			;8871
	di			;8872
	ret p			;8873
	ld a,a			;8874
	ccf			;8875
	rra			;8876
	ret p			;8877
	call m,0031fh		;8878
	rst 38h			;887b
	inc b			;887c
	ld bc,0ff02h		;887d
	ld (bc),a		;8880
	cp 002h			;8881
	rst 38h			;8883
	ld (bc),a		;8884
	nop			;8885
	inc bc			;8886
	ld l,e			;8887
	adc a,b			;8888
	nop			;8889
	ld d,h			;888a
	add a,e			;888b
	add hl,sp		;888c
	rst 0			;888d
	cp e			;888e
	rst 0			;888f
	rst 0			;8890
	inc bc			;8891
	rst 38h			;8892
	add a,(hl)		;8893
	cp 0f8h			;8894
	ret nc			;8896
	ld l,(hl)		;8897
	ld c,b			;8898
	ld l,a			;8899
	inc b			;889a
	rla			;889b
	ld (bc),a		;889c
	ld l,08eh		;889d
	nop			;889f
	pop de			;88a0
	ret p			;88a1
	ret p			;88a2
	ret pe			;88a3
	ret pe			;88a4
	ret po			;88a5
	call m,0e8e8h		;88a6
	nop			;88a9
	ld d,h			;88aa
	ld d,b			;88ab
	nop			;88ac
	inc bc			;88ad
	ret pe			;88ae
	add a,h			;88af
	jr z,$+1		;88b0
	nop			;88b2
	nop			;88b3
	inc b			;88b4
	sub 083h		;88b5
	nop			;88b7
	add a,b			;88b8
	rst 38h			;88b9
	inc b			;88ba
	nop			;88bb
	inc bc			;88bc
	rst 38h			;88bd
	add a,d			;88be
	rst 0			;88bf
	call m,0c404h		;88c0
	add a,e			;88c3
	rst 0			;88c4
	ccf			;88c5
	rst 38h			;88c6
	dec b			;88c7
	ret m			;88c8
	ld (bc),a		;88c9
l88cah:
	nop			;88ca
	add a,d			;88cb
	jr c,l88cah		;88cc
l88ceh:
	inc b			;88ce
	call nz,0ff02h		;88cf
	inc b			;88d2
	add a,c			;88d3
	add a,e			;88d4
	rst 38h			;88d5
	jp 006c3h		;88d6
	inc bc			;88d9
	add a,d			;88da
	rst 38h			;88db
	rra			;88dc
	dec b			;88dd
	ret po			;88de
	add a,c			;88df
	rst 38h			;88e0
	inc bc			;88e1
	ret m			;88e2
	sub b			;88e3
	djnz l88ceh		;88e4
	ret nz			;88e6
	djnz l88f9h		;88e7
	rla			;88e9
	ld a,a			;88ea
	add a,e			;88eb
	cp a			;88ec
	jp po,07cc2h		;88ed
	ld b,b			;88f0
	add a,d			;88f1
	add a,d			;88f2
	ld a,a			;88f3
	inc bc			;88f4
	cp (hl)			;88f5
	inc bc			;88f6
	ld a,002h		;88f7
l88f9h:
	nop			;88f9
	inc bc			;88fa
	or 002h			;88fb
	nop			;88fd
	ld (bc),a		;88fe
	ret nz			;88ff
	ld b,0e8h		;8900
	add a,e			;8902
	add a,b			;8903
	rst 38h			;8904
	rst 38h			;8905
	inc b			;8906
	add a,c			;8907
	add a,e			;8908
	rst 38h			;8909
	add a,c			;890a
	add a,c			;890b
	rlca			;890c
	sub c			;890d
	ld (bc),a		;890e
	rst 38h			;890f
	ld (bc),a		;8910
	add a,c			;8911
	add a,c			;8912
	cp l			;8913
	inc bc			;8914
	jp 0bd82h		;8915
	jp 07e04h		;8918
	inc bc			;891b
	inc a			;891c
	add a,c			;891d
	rst 38h			;891e
	inc bc			;891f
	nop			;8920
	adc a,d			;8921
	ld (hl),e		;8922
	nop			;8923
	nop			;8924
	cp 0ffh			;8925
	sub c			;8927
	rst 38h			;8928
	ld a,a			;8929
	ld a,a			;892a
	ccf			;892b
	inc bc			;892c
	nop			;892d
	sub a			;892e
	ld h,(hl)		;892f
	sbc a,e			;8930
	call m,0e0f0h		;8931
	ret nz			;8934
	add a,b			;8935
	ld a,(bc)		;8936
	ld (hl),l		;8937
	ld (hl),l		;8938
	nop			;8939
	ld h,e			;893a
	rst 38h			;893b
	rst 38h			;893c
	ld a,a			;893d
	rst 38h			;893e
	sbc a,c			;893f
	ld sp,hl		;8940
	ret nz			;8941
	ret p			;8942
	ret m			;8943
	call m,00d01h		;8944
	add a,b			;8947
	add a,h			;8948
	rst 38h			;8949
	adc a,b			;894a
	adc a,b			;894b
	rst 38h			;894c
	dec bc			;894d
	ld a,(hl)		;894e
	ld (bc),a		;894f
	nop			;8950
	ld (bc),a		;8951
	xor 005h		;8952
	add a,b			;8954
	inc bc			;8955
	add a,c			;8956
	add a,e			;8957
	nop			;8958
	ld a,000h		;8959
	dec b			;895b
	ld a,(hl)		;895c
	dec b			;895d
	cp 084h			;895e
	nop			;8960
	ld l,(hl)		;8961
	ld l,(hl)		;8962
	rst 38h			;8963
	inc b			;8964
	rla			;8965
	add a,e			;8966
	rst 38h			;8967
	add a,b			;8968
	add a,b			;8969
	ld b,0e8h		;896a
	ld (bc),a		;896c
	ret p			;896d
	add a,d			;896e
	ld l,(hl)		;896f
	ld l,c			;8970
	inc b			;8971
	ld l,b			;8972
	add a,d			;8973
	add a,b			;8974
	rst 38h			;8975
	ex af,af'		;8976
	ret pe			;8977
	ld (bc),a		;8978
	ld a,a			;8979
	add a,c			;897a
	nop			;897b
	dec b			;897c
	ret po			;897d
	ld (bc),a		;897e
	ccf			;897f
	add a,c			;8980
	jr z,l8987h		;8981
	ret pe			;8983
	add a,c			;8984
	nop			;8985
	inc bc			;8986
l8987h:
	ret pe			;8987
	add a,c			;8988
	nop			;8989
	inc bc			;898a
	ret pe			;898b
	add a,c			;898c
	jr z,l8992h		;898d
	ret pe			;898f
	add a,c			;8990
	nop			;8991
l8992h:
	inc b			;8992
	ret pe			;8993
	add a,c			;8994
	nop			;8995
	ld c,07bh		;8996
	ld (bc),a		;8998
	nop			;8999
	ld c,0deh		;899a
	inc bc			;899c
	nop			;899d
	ld (bc),a		;899e
	rst 38h			;899f
	add a,c			;89a0
	nop			;89a1
	ld b,080h		;89a2
	ld (bc),a		;89a4
	rst 38h			;89a5
	ld (bc),a		;89a6
	nop			;89a7
	inc bc			;89a8
	rst 38h			;89a9
	ld (bc),a		;89aa
	nop			;89ab
	add a,c			;89ac
	rst 38h			;89ad
	ld b,001h		;89ae
	ld (bc),a		;89b0
	rst 38h			;89b1
	ld (bc),a		;89b2
	nop			;89b3
	add a,h			;89b4
	rst 38h			;89b5
	ld bc,0ff01h		;89b6
	dec b			;89b9
	ret p			;89ba
	add a,d			;89bb
	rst 0			;89bc
	rst 38h			;89bd
	dec b			;89be
	ret m			;89bf
	add a,h			;89c0
	nop			;89c1
	ret m			;89c2
	ret m			;89c3
	rst 38h			;89c4
	dec b			;89c5
	ret p			;89c6
	inc bc			;89c7
	rst 38h			;89c8
	dec b			;89c9
	add a,b			;89ca
	ld (bc),a		;89cb
	ret pe			;89cc
	inc b			;89cd
	call m,00083h		;89ce
	call m,00500h		;89d1
	ld a,(hl)		;89d4
	add a,d			;89d5
	nop			;89d6
	inc a			;89d7
	inc bc			;89d8
	ld a,(hl)		;89d9
	add a,c			;89da
	nop			;89db
	inc b			;89dc
	ld a,(hl)		;89dd
	dec b			;89de
	ret pe			;89df
	add a,h			;89e0
	nop			;89e1
	ld bc,0f801h		;89e2
	inc bc			;89e5
	add a,a			;89e6
	ex af,af'		;89e7
	add a,b			;89e8
	add a,d			;89e9
	rst 38h			;89ea
	nop			;89eb
	ld a,(bc)		;89ec
	add a,b			;89ed
	inc bc			;89ee
	cp 081h			;89ef
	nop			;89f1
	inc bc			;89f2
	cp 081h			;89f3
	nop			;89f5
	dec bc			;89f6
	ret nz			;89f7
	dec b			;89f8
	ret po			;89f9
	rlca			;89fa
	ld l,(hl)		;89fb
	add a,c			;89fc
	ld de,07607h		;89fd
	add a,c			;8a00
	nop			;8a01
	ex af,af'		;8a02
	in a,(004h)		;8a03
	ld a,h			;8a05
	add a,c			;8a06
	nop			;8a07
	inc bc			;8a08
	ld a,(hl)		;8a09
	add a,c			;8a0a
	nop			;8a0b
	inc bc			;8a0c
	ld a,(hl)		;8a0d
	add a,c			;8a0e
	nop			;8a0f
	inc bc			;8a10
	ld a,(hl)		;8a11
	add a,c			;8a12
	rst 38h			;8a13
	inc bc			;8a14
	rla			;8a15
	add a,c			;8a16
	rst 38h			;8a17
	inc bc			;8a18
	ret nz			;8a19
	ld (bc),a		;8a1a
	ret pe			;8a1b
	ld (bc),a		;8a1c
	ex de,hl		;8a1d
	ld (bc),a		;8a1e
	dec hl			;8a1f
	add a,d			;8a20
l8a21h:
	ld hl,(00328h)		;8a21
	rla			;8a24
	add a,d			;8a25
	rst 38h			;8a26
	nop			;8a27
	inc bc			;8a28
	rla			;8a29
l8a2ah:
	add a,h			;8a2a
	ccf			;8a2b
	inc a			;8a2c
	inc a			;8a2d
	ret nz			;8a2e
	inc bc			;8a2f
	rla			;8a30
	add a,c			;8a31
	rst 38h			;8a32
	nop			;8a33
	ld (bc),a		;8a34
	jr nz,l8a39h		;8a35
	jr nc,$+4		;8a37
l8a39h:
	ld (0200ch),a		;8a39
	ld (bc),a		;8a3c
	jr nc,$+4		;8a3d
	ld (02005h),a		;8a3f
	ld (bc),a		;8a42
	jr nc,$+4		;8a43
	ld (02081h),a		;8a45
	inc bc			;8a48
	ld (02005h),a		;8a49
l8a4ch:
	inc bc			;8a4c
	ld (02105h),a		;8a4d
	add a,c			;8a50
	jr nz,l8a56h		;8a51
	ld hl,01004h		;8a53
l8a56h:
	add a,c			;8a56
	ld hl,01003h		;8a57
	inc bc			;8a5a
	jr nc,l8a60h		;8a5b
	ld (02003h),a		;8a5d
l8a60h:
	inc bc			;8a60
	jr nc,$-125		;8a61
	jr nz,$+5		;8a63
	jr nc,$+4		;8a65
	ld (02002h),a		;8a67
	ld (bc),a		;8a6a
	jr nc,$+4		;8a6b
	ld (02004h),a		;8a6d
	ld (bc),a		;8a70
	jr nc,$+4		;8a71
	ld (02004h),a		;8a73
	inc bc			;8a76
	jr nc,l8a7ch		;8a77
	ld (02002h),a		;8a79
l8a7ch:
	ld (bc),a		;8a7c
	jr nc,l8a83h		;8a7d
	ld (02002h),a		;8a7f
	add a,c			;8a82
l8a83h:
	ld (02003h),a		;8a83
	ld (bc),a		;8a86
	ld hl,01081h		;8a87
	dec bc			;8a8a
	di			;8a8b
	add a,c			;8a8c
	jp p,0f103h		;8a8d
	dec d			;8a90
	ret p			;8a91
	ld (bc),a		;8a92
	pop af			;8a93
	ld (bc),a		;8a94
	djnz $+7		;8a95
	ret p			;8a97
	inc bc			;8a98
	pop af			;8a99
	add a,d			;8a9a
	djnz $+34		;8a9b
	rlca			;8a9d
	djnz l8a21h		;8a9e
	ld hl,01003h		;8aa0
	ld (bc),a		;8aa3
	pop af			;8aa4
	dec b			;8aa5
	djnz l8a2ah		;8aa6
	rrca			;8aa8
	ld hl,01008h		;8aa9
	ex af,af'		;8aac
	rrca			;8aad
	inc bc			;8aae
	pop af			;8aaf
	add a,c			;8ab0
	ret p			;8ab1
	inc bc			;8ab2
	pop af			;8ab3
	ld (bc),a		;8ab4
	djnz l8ab9h		;8ab5
	ret p			;8ab7
	ld (bc),a		;8ab8
l8ab9h:
	djnz l8abeh		;8ab9
	ret p			;8abb
	ld b,0f1h		;8abc
l8abeh:
	inc bc			;8abe
	djnz l8ac3h		;8abf
	ret p			;8ac1
	add a,c			;8ac2
l8ac3h:
	djnz $+5		;8ac3
	ret p			;8ac5
	ld (bc),a		;8ac6
	jr nc,l8a4ch		;8ac7
	jr nz,$+18		;8ac9
	jr nz,$+7		;8acb
	djnz $-123		;8acd
	jr nz,l8ae1h		;8acf
	jr nz,$+5		;8ad1
	djnz l8a56h		;8ad3
	jr nz,$+5		;8ad5
	djnz $-123		;8ad7
	ld hl,00202h		;8ad9
	inc b			;8adc
	ld bc,0f087h		;8add
	pop af			;8ae0
l8ae1h:
	ret p			;8ae1
	ret p			;8ae2
	ld hl,01010h		;8ae3
	ld b,00fh		;8ae6
	inc bc			;8ae8
	push af			;8ae9
	add a,l			;8aea
	ld sp,hl		;8aeb
	pop af			;8aec
	pop af			;8aed
	djnz $+18		;8aee
	ld b,0f0h		;8af0
	ld (bc),a		;8af2
	pop af			;8af3
	ld (bc),a		;8af4
	djnz l8afbh		;8af5
	ret p			;8af7
	ld (bc),a		;8af8
	pop af			;8af9
	ld (bc),a		;8afa
l8afbh:
	djnz l8affh		;8afb
	ret p			;8afd
	add a,h			;8afe
l8affh:
	djnz l8b10h		;8aff
	rrca			;8b01
	ld hl,01003h		;8b02
	ld (bc),a		;8b05
	rrca			;8b06
	add a,l			;8b07
	jp p,0f0f1h		;8b08
	ret p			;8b0b
	jp p,0f105h		;8b0c
	add a,c			;8b0f
l8b10h:
	jp p,0f103h		;8b10
	adc a,d			;8b13
	ret p			;8b14
	pop af			;8b15
	pop af			;8b16
	ret p			;8b17
	ret p			;8b18
	jp p,0f1f1h		;8b19
	ret p			;8b1c
	ld hl,0100fh		;8b1d
	inc b			;8b20
	ld (0210bh),a		;8b21
	add a,e			;8b24
	nop			;8b25
	ld (00331h),a		;8b26
	jr nz,l8b2fh		;8b29
	inc hl			;8b2b
	ld b,012h		;8b2c
	add a,c			;8b2e
l8b2fh:
	nop			;8b2f
	dec b			;8b30
	ld (de),a		;8b31
	inc bc			;8b32
	ld bc,0f302h		;8b33
	add a,e			;8b36
	jp p,0f1f1h		;8b37
	add hl,bc		;8b3a
	ld bc,0ff84h		;8b3b
	sub h			;8b3e
	pop af			;8b3f
	pop af			;8b40
	inc b			;8b41
	djnz l8b46h		;8b42
	ret p			;8b44
	ld (bc),a		;8b45
l8b46h:
	pop af			;8b46
	ld (bc),a		;8b47
	djnz $+7		;8b48
	ret p			;8b4a
	inc bc			;8b4b
	pop af			;8b4c
	ld (bc),a		;8b4d
	djnz l8b52h		;8b4e
	ret p			;8b50
	inc bc			;8b51
l8b52h:
	djnz l8b5ah		;8b52
	ret p			;8b54
	add a,(hl)		;8b55
	ld hl,01010h		;8b56
	rrca			;8b59
l8b5ah:
	rrca			;8b5a
	ld hl,01006h		;8b5b
	inc bc			;8b5e
	ret p			;8b5f
	add a,h			;8b60
	ld hl,01010h		;8b61
	ld (02103h),a		;8b64
	rlca			;8b67
	djnz l8b70h		;8b68
	rrca			;8b6a
	inc bc			;8b6b
	defb 0fdh,004h,0f5h ;illegal sequence	;8b6c
	add a,e			;8b6f
l8b70h:
	ret m			;8b70
	defb 0fdh,0fdh,007h ;illegal sequence	;8b71
	push af			;8b74
	add a,c			;8b75
	defb 0fdh,003h,05fh ;illegal sequence	;8b76
	ld (bc),a		;8b79
	rst 18h			;8b7a
	ld (bc),a		;8b7b
	ld e,a			;8b7c
	add a,d			;8b7d
	ret c			;8b7e
	ld e,l			;8b7f
	ld b,0f5h		;8b80
	add a,c			;8b82
	push de			;8b83
	add hl,bc		;8b84
	ld e,a			;8b85
	add a,d			;8b86
	jp p,005fdh		;8b87
	push af			;8b8a
	add a,c			;8b8b
	ret c			;8b8c
	inc bc			;8b8d
	ld e,l			;8b8e
	ld (bc),a		;8b8f
	push af			;8b90
	add a,c			;8b91
	push de			;8b92
	dec b			;8b93
	ld e,a			;8b94
	add a,c			;8b95
	ret m			;8b96
	inc b			;8b97
	adc a,(hl)		;8b98
	add a,e			;8b99
	ret c			;8b9a
	ld sp,hl		;8b9b
	ret c			;8b9c
	inc bc			;8b9d
	ld e,l			;8b9e
	ld (bc),a		;8b9f
	push af			;8ba0
	add a,e			;8ba1
	push de			;8ba2
	ld sp,hl		;8ba3
	ret m			;8ba4
	inc bc			;8ba5
	ld e,l			;8ba6
	ld (bc),a		;8ba7
	push af			;8ba8
	add a,d			;8ba9
	push de			;8baa
	ret c			;8bab
	inc b			;8bac
	defb 0fdh,002h,0d5h ;illegal sequence	;8bad
	sub e			;8bb0
	push af			;8bb1
	defb 0fdh,0f8h,0e8h ;illegal sequence	;8bb2
	ret c			;8bb5
	ld d,l			;8bb6
	ret c			;8bb7
	ld d,l			;8bb8
	call p,0edf9h		;8bb9
	add a,l			;8bbc
	push de			;8bbd
	rst 18h			;8bbe
	ld e,a			;8bbf
	ld e,a			;8bc0
	defb 0fdh,0f8h,0fdh ;illegal sequence	;8bc1
	inc b			;8bc4
	push af			;8bc5
	add a,h			;8bc6
	rra			;8bc7
	ccf			;8bc8
l8bc9h:
	ret m			;8bc9
	defb 0fdh,003h,0f5h ;illegal sequence	;8bca
	adc a,b			;8bcd
	dec b			;8bce
	ld sp,02121h		;8bcf
	djnz l8bc9h		;8bd2
	push af			;8bd4
	ld e,l			;8bd5
	inc b			;8bd6
	push af			;8bd7
	add a,h			;8bd8
	ld e,b			;8bd9
	push de			;8bda
	push de			;8bdb
	rst 18h			;8bdc
	ld b,0f5h		;8bdd
	add a,h			;8bdf
	nop			;8be0
	ld (01010h),a		;8be1
	inc b			;8be4
	ld e,a			;8be5
	ld (bc),a		;8be6
	jr nc,l8bebh		;8be7
	djnz l8bedh		;8be9
l8bebh:
	ld e,a			;8beb
	add a,(hl)		;8bec
l8bedh:
	adc a,a			;8bed
	rst 18h			;8bee
	ld e,a			;8bef
	ld e,a			;8bf0
	call p,003f4h		;8bf1
	push af			;8bf4
	ld (bc),a		;8bf5
	defb 0fdh,002h,0f5h ;illegal sequence	;8bf6
	adc a,b			;8bf9
	defb 0fdh,0d8h,0fdh ;illegal sequence	;8bfa
	ret m			;8bfd
	ret m			;8bfe
	defb 0fdh,0f5h,0f8h ;illegal sequence	;8bff
	inc bc			;8c02
	defb 0fdh,081h,0f5h ;illegal sequence	;8c03
	dec bc			;8c06
	defb 0fdh,004h,0f5h ;illegal sequence	;8c07
	add a,l			;8c0a
	defb 0fdh,0f5h,0fdh ;illegal sequence	;8c0b
	push af			;8c0e
	ret c			;8c0f
	inc bc			;8c10
	ld e,l			;8c11
	ld (bc),a		;8c12
	push af			;8c13
	add a,c			;8c14
	defb 0fdh,003h,0f5h ;illegal sequence	;8c15
	inc bc			;8c18
	ret m			;8c19
	inc bc			;8c1a
	defb 0fdh,00eh,0f5h ;illegal sequence	;8c1b
	add a,a			;8c1e
	defb 0fdh,0f8h,0f8h ;illegal sequence	;8c1f
	defb 0fdh,0f5h,0f5h ;illegal sequence	;8c22
	defb 0fdh,003h,0f8h ;illegal sequence	;8c25
	add a,l			;8c28
	defb 0fdh,0f5h,0f5h ;illegal sequence	;8c29
	defb 0fdh,0d8h,003h ;illegal sequence	;8c2c
	push af			;8c2f
	add a,h			;8c30
	defb 0fdh,0f5h,0f5h ;illegal sequence	;8c31
	push de			;8c34
	inc bc			;8c35
	defb 0fdh,004h,0f8h ;illegal sequence	;8c36
	inc bc			;8c39
	defb 0fdh,005h,0f5h ;illegal sequence	;8c3a
	adc a,c			;8c3d
	defb 0fdh,0f5h,0fdh ;illegal sequence	;8c3e
	push af			;8c41
	defb 0fdh,0f5h,0d8h ;illegal sequence	;8c42
	ld e,l			;8c45
	ret c			;8c46
	inc b			;8c47
	defb 0fdh,081h,0d5h ;illegal sequence	;8c48
	inc bc			;8c4b
	ld e,a			;8c4c
	ld (bc),a		;8c4d
l8c4eh:
	ld d,b			;8c4e
	dec b			;8c4f
	push af			;8c50
	add a,d			;8c51
l8c52h:
	ret m			;8c52
	defb 0fdh,003h,0f5h ;illegal sequence	;8c53
	adc a,c			;8c56
	nop			;8c57
	ld sp,02020h		;8c58
	djnz l8c6dh		;8c5b
	ld e,a			;8c5d
	ld e,a			;8c5e
	rst 18h			;8c5f
	inc bc			;8c60
	ld e,a			;8c61
	add a,l			;8c62
	defb 0fdh,0f5h,0f4h ;illegal sequence	;8c63
	defb 0fdh,0fdh,004h ;illegal sequence	;8c66
	push af			;8c69
	inc bc			;8c6a
	di			;8c6b
	ld (bc),a		;8c6c
l8c6dh:
	ld (02090h),a		;8c6d
	ld (02132h),a		;8c70
	rst 38h			;8c73
	push de			;8c74
	ld e,a			;8c75
	ld e,a			;8c76
	ret c			;8c77
	jp p,01021h		;8c78
	djnz l8c6dh		;8c7b
	ret p			;8c7d
	push de			;8c7e
l8c7fh:
	dec b			;8c7f
	ld e,a			;8c80
	add a,c			;8c81
	ld hl,01005h		;8c82
	ld (bc),a		;8c85
	ld e,a			;8c86
	add a,a			;8c87
	adc a,a			;8c88
	rst 18h			;8c89
	ld e,a			;8c8a
	ld e,a			;8c8b
	djnz l8c7fh		;8c8c
	pop af			;8c8e
	ld b,0f0h		;8c8f
	add a,d			;8c91
	pop af			;8c92
	di			;8c93
	inc bc			;8c94
	jp p,0f181h		;8c95
	inc bc			;8c98
	ret p			;8c99
	add a,c			;8c9a
	ld hl,01003h		;8c9b
	inc b			;8c9e
	rrca			;8c9f
	add a,c			;8ca0
	jp p,0f103h		;8ca1
	inc bc			;8ca4
	ret p			;8ca5
	add a,e			;8ca6
	jp p,0f1f1h		;8ca7
	inc bc			;8caa
	ret p			;8cab
	ld (bc),a		;8cac
	pop af			;8cad
l8caeh:
	add a,d			;8cae
	ret p			;8caf
	ld (de),a		;8cb0
	inc b			;8cb1
	ld bc,0f002h		;8cb2
	add a,(hl)		;8cb5
	ld (02121h),a		;8cb6
	djnz l8caeh		;8cb9
	di			;8cbb
	inc bc			;8cbc
	jp p,02102h		;8cbd
	ld b,0f1h		;8cc0
	ld (bc),a		;8cc2
	jp p,02102h		;8cc3
	inc bc			;8cc6
	pop af			;8cc7
	ld (bc),a		;8cc8
	jr nz,l8cd1h		;8cc9
	djnz l8c4eh		;8ccb
	jr nz,$+6		;8ccd
	djnz l8c52h		;8ccf
l8cd1h:
	ld (02107h),a		;8cd1
	inc bc			;8cd4
	ret p			;8cd5
	adc a,d			;8cd6
	jp p,0f1f1h		;8cd7
	ret p			;8cda
	ret p			;8cdb
	jp p,0f2f0h		;8cdc
	jp p,006f1h		;8cdf
	ret p			;8ce2
	sub c			;8ce3
	ret m			;8ce4
	push af			;8ce5
	push af			;8ce6
	ld sp,hl		;8ce7
	call p,0f8f9h		;8ce8
	add a,l			;8ceb
	push af			;8cec
	sbc a,a			;8ced
	ld c,a			;8cee
	sbc a,a			;8cef
	ret m			;8cf0
	push de			;8cf1
	ld e,a			;8cf2
	push de			;8cf3
	push de			;8cf4
	inc b			;8cf5
	sbc a,a			;8cf6
	adc a,c			;8cf7
	nop			;8cf8
	pop af			;8cf9
	pop af			;8cfa
	ld sp,hl		;8cfb
	ld sp,hl		;8cfc
	push de			;8cfd
	adc a,l			;8cfe
	push de			;8cff
	push de			;8d00
l8d01h:
	inc bc			;8d01
	sbc a,a			;8d02
	add a,c			;8d03
	call p,0f805h		;8d04
	sub b			;8d07
	ret c			;8d08
	push de			;8d09
	ld e,a			;8d0a
	ld e,a			;8d0b
	call p,011f4h		;8d0c
	ld (0f4f4h),a		;8d0f
	ld sp,hl		;8d12
	add a,b			;8d13
	add a,d			;8d14
	add a,c			;8d15
	add a,b			;8d16
	ret m			;8d17
	inc bc			;8d18
	ld hl,01082h		;8d19
	ld (02107h),a		;8d1c
	adc a,b			;8d1f
	djnz $-5		;8d20
	ld sp,hl		;8d22
	call p,030f4h		;8d23
	jr nc,l8d48h		;8d26
	add hl,bc		;8d28
	djnz l8d2dh		;8d29
	sbc a,a			;8d2b
	add a,d			;8d2c
l8d2dh:
	ld c,a			;8d2d
	ld (02103h),a		;8d2e
	add a,h			;8d31
	nop			;8d32
	ld sp,hl		;8d33
	sub h			;8d34
	ld sp,hl		;8d35
	inc bc			;8d36
	jr nz,$-125		;8d37
	jr nc,$+5		;8d39
	jr nz,$-124		;8d3b
	djnz l8d5fh		;8d3d
	dec b			;8d3f
	djnz $-124		;8d40
	ld b,b			;8d42
	sub b			;8d43
	inc b			;8d44
	ld (02185h),a		;8d45
l8d48h:
	jp p,0f1f2h		;8d48
l8d4bh:
	ld (02103h),a		;8d4b
	add a,e			;8d4e
	djnz $+1		;8d4f
	ld (02107h),a		;8d51
	ld (bc),a		;8d54
	ret p			;8d55
	ld (bc),a		;8d56
	ld hl,01083h		;8d57
	rst 38h			;8d5a
	ld (02104h),a		;8d5b
	ld (bc),a		;8d5e
l8d5fh:
	rra			;8d5f
	adc a,b			;8d60
	ld (02121h),a		;8d61
	djnz l8d75h		;8d64
	rrca			;8d66
	jp p,00321h		;8d67
	djnz l8d6eh		;8d6a
	rrca			;8d6c
	ld (bc),a		;8d6d
l8d6eh:
	djnz l8d72h		;8d6e
	rrca			;8d70
	add a,c			;8d71
l8d72h:
	ld hl,01005h		;8d72
l8d75h:
	ld (bc),a		;8d75
	rrca			;8d76
	add a,c			;8d77
	ld hl,01004h		;8d78
	add a,c			;8d7b
	jr nz,$+17		;8d7c
	djnz l8d01h		;8d7e
	jr nz,l8d91h		;8d80
	djnz l8d86h		;8d82
l8d84h:
	ld (de),a		;8d84
	ld (bc),a		;8d85
l8d86h:
	add hl,bc		;8d86
	rlca			;8d87
	sub h			;8d88
	ld (bc),a		;8d89
	ld (bc),a		;8d8a
	inc bc			;8d8b
	ld bc,02102h		;8d8c
	ld (bc),a		;8d8f
	sub b			;8d90
l8d91h:
	rlca			;8d91
	sub h			;8d92
	ld (bc),a		;8d93
	ld (bc),a		;8d94
	inc bc			;8d95
	ld bc,0f002h		;8d96
	add a,c			;8d99
	ld hl,01003h		;8d9a
	add a,h			;8d9d
l8d9eh:
	rrca			;8d9e
	ld sp,hl		;8d9f
	ld sp,hl		;8da0
	ld hl,01003h		;8da1
	ld (bc),a		;8da4
	rrca			;8da5
	add a,h			;8da6
	jp p,0f1f1h		;8da7
	ld (02103h),a		;8daa
	ld (bc),a		;8dad
	djnz l8db3h		;8dae
	ld hl,01004h		;8db0
l8db3h:
	add a,e			;8db3
	ld hl,02010h		;8db4
	inc b			;8db7
	djnz l8dbch		;8db8
	ret p			;8dba
	add a,c			;8dbb
l8dbch:
	jr nc,$+5		;8dbc
	jr nz,l8dc2h		;8dbe
	djnz $+5		;8dc0
l8dc2h:
	jr nz,l8dc6h		;8dc2
	djnz l8d4bh		;8dc4
l8dc6h:
	jr nc,$+34		;8dc6
	jr nz,$+18		;8dc8
	ld hl,01003h		;8dca
	ld (bc),a		;8dcd
	rrca			;8dce
	add a,h			;8dcf
	pop af			;8dd0
	ret p			;8dd1
	jr nz,l8e05h		;8dd2
	inc bc			;8dd4
	ld hl,00084h		;8dd5
	ld (03221h),a		;8dd8
	inc bc			;8ddb
	ld hl,00202h		;8ddc
	ld (bc),a		;8ddf
	ld hl,03281h		;8de0
	inc b			;8de3
	ld hl,00084h		;8de4
	ld (02021h),a		;8de7
	inc bc			;8dea
	djnz l8d6eh		;8deb
	jr nz,$+5		;8ded
	djnz l8d84h		;8def
	ld (02121h),a		;8df1
	nop			;8df4
	ld (02121h),a		;8df5
	nop			;8df8
	ld (00021h),a		;8df9
	ld (02121h),a		;8dfc
	djnz l8e10h		;8dff
	jr nc,l8e33h		;8e01
	jr nz,$+6		;8e03
l8e05h:
	djnz l8d9eh		;8e05
	ret p			;8e07
	jr nz,l8e1ah		;8e08
	rrca			;8e0a
	jr nz,$+18		;8e0b
	djnz l8e1eh		;8e0d
	rrca			;8e0f
l8e10h:
	jr nc,l8e42h		;8e10
	jr nz,$+18		;8e12
	djnz l8e35h		;8e14
	rrca			;8e16
	rrca			;8e17
	jr nc,$+50		;8e18
l8e1ah:
	jr nz,l8e2ch		;8e1a
	djnz $+50		;8e1c
l8e1eh:
	inc bc			;8e1e
	jr nz,$-119		;8e1f
	jr nc,l8e43h		;8e21
	djnz l8e35h		;8e23
	jr nc,l8e47h		;8e25
	jr nz,l8e30h		;8e27
l8e29h:
	ld (00082h),a		;8e29
l8e2ch:
	ld (02107h),a		;8e2c
	ld (bc),a		;8e2f
l8e30h:
	ld (02183h),a		;8e30
l8e33h:
	di			;8e33
	di			;8e34
l8e35h:
	ld b,032h		;8e35
	add a,l			;8e37
	ld hl,03232h		;8e38
	ld hl,000f9h		;8e3b
	inc b			;8e3e
	rst 38h			;8e3f
	inc bc			;8e40
	exx			;8e41
l8e42h:
	add a,h			;8e42
l8e43h:
	ret			;8e43
	ret m			;8e44
	rst 38h			;8e45
	rst 38h			;8e46
l8e47h:
	dec b			;8e47
	defb 0fdh,000h,004h ;illegal sequence	;8e48
	push af			;8e4b
	add a,h			;8e4c
	jp p,082e3h		;8e4d
	pop af			;8e50
	inc bc			;8e51
	ret p			;8e52
	add a,l			;8e53
	jp m,0fafeh		;8e54
	di			;8e57
	jp p,08c00h		;8e58
	call pe,0f3efh		;8e5b
	call m,0ffffh		;8e5e
	ex (sp),hl		;8e61
	defb 0ddh,03fh,0cfh ;illegal sequence	;8e62
	rst 30h			;8e65
	scf			;8e66
	inc b			;8e67
	dec de			;8e68
	adc a,l			;8e69
	call pe,0f3efh		;8e6a
	call m,0dde3h		;8e6d
	or (hl)			;8e70
	xor d			;8e71
	rst 38h			;8e72
	call m,0eff3h		;8e73
	call pe,0d803h		;8e76
	add a,l			;8e79
	rst 38h			;8e7a
	ccf			;8e7b
	rst 8			;8e7c
	rst 30h			;8e7d
	scf			;8e7e
	inc bc			;8e7f
	dec de			;8e80
	adc a,h			;8e81
	scf			;8e82
	rst 30h			;8e83
	rst 8			;8e84
	ccf			;8e85
	rst 38h			;8e86
	rst 0			;8e87
	cp e			;8e88
	ld l,l			;8e89
	call m,0eff3h		;8e8a
	call pe,0d804h		;8e8d
	add a,l			;8e90
	call pe,0f3efh		;8e91
	call m,005ffh		;8e94
	ld a,a			;8e97
	adc a,b			;8e98
	add a,c			;8e99
	rst 38h			;8e9a
	rst 38h			;8e9b
	add a,c			;8e9c
	rst 38h			;8e9d
	rst 38h			;8e9e
	rst 8			;8e9f
	rst 8			;8ea0
	add hl,bc		;8ea1
	ret z			;8ea2
	ld (bc),a		;8ea3
	jr nc,l8e29h		;8ea4
	scf			;8ea6
	sub a			;8ea7
	ret m			;8ea8
	dec bc			;8ea9
	add a,e			;8eaa
	inc bc			;8eab
	rst 38h			;8eac
	add a,h			;8ead
	add a,e			;8eae
	rst 38h			;8eaf
	ld b,d			;8eb0
	rst 38h			;8eb1
	inc b			;8eb2
	add a,c			;8eb3
	add a,d			;8eb4
	rst 38h			;8eb5
	ld b,d			;8eb6
	ex af,af'		;8eb7
	defb 0fdh,085h ;add a,iyl	;8eb8
	ret m			;8eba
	ret nz			;8ebb
	rlca			;8ebc
	ccf			;8ebd
	ret m			;8ebe
	inc bc			;8ebf
	ret c			;8ec0
	sbc a,l			;8ec1
	scf			;8ec2
	rst 30h			;8ec3
	rst 8			;8ec4
	ccf			;8ec5
	rst 0			;8ec6
	cp e			;8ec7
	ld l,l			;8ec8
	ld d,l			;8ec9
	rra			;8eca
	ld b,a			;8ecb
	ld (hl),c		;8ecc
	ld a,h			;8ecd
	ld (hl),c		;8ece
	ld b,a			;8ecf
	rra			;8ed0
	rst 28h			;8ed1
	pop af			;8ed2
	push bc			;8ed3
	dec e			;8ed4
	ld a,l			;8ed5
	dec e			;8ed6
	push bc			;8ed7
	pop af			;8ed8
	xor 010h		;8ed9
	ld (hl),c		;8edb
	ld a,h			;8edc
	ld (hl),c		;8edd
	ld b,a			;8ede
	inc bc			;8edf
	rst 28h			;8ee0
	add a,l			;8ee1
	ld de,07d1dh		;8ee2
	dec e			;8ee5
	push bc			;8ee6
	inc bc			;8ee7
l8ee8h:
	xor 083h		;8ee8
	add a,b			;8eea
	rst 38h			;8eeb
	add a,b			;8eec
	inc bc			;8eed
	add a,e			;8eee
	inc bc			;8eef
	add a,b			;8ef0
	add a,c			;8ef1
	rst 38h			;8ef2
	ld b,080h		;8ef3
	ld (bc),a		;8ef5
	rst 38h			;8ef6
	ld b,000h		;8ef7
	ex af,af'		;8ef9
	dec d			;8efa
	sub b			;8efb
	rla			;8efc
	rra			;8efd
	rra			;8efe
	djnz l8f10h		;8eff
	rra			;8f01
	add a,b			;8f02
	rst 38h			;8f03
	ret c			;8f04
	ld a,b			;8f05
	jr l8ee8h		;8f06
	ret m			;8f08
	ret m			;8f09
	ld bc,008ffh		;8f0a
	ld e,b			;8f0d
	add a,h			;8f0e
	ret m			;8f0f
l8f10h:
	rst 30h			;8f10
	rst 28h			;8f11
	call pe,0d804h		;8f12
	add a,l			;8f15
	call pe,0f3efh		;8f16
	call m,003ffh		;8f19
	ld a,a			;8f1c
	add a,l			;8f1d
	scf			;8f1e
	rst 30h			;8f1f
	rst 8			;8f20
	ccf			;8f21
	rst 38h			;8f22
	inc bc			;8f23
	cp 094h			;8f24
	call pe,0f3efh		;8f26
	call m,0e3ffh		;8f29
	or (ix-001h)		;8f2c
	rst 38h			;8f2f
	call m,0eff3h		;8f30
	call pe,0d8d8h		;8f33
	scf			;8f36
	rst 30h			;8f37
	rst 8			;8f38
	ccf			;8f39
	inc bc			;8f3a
	rst 38h			;8f3b
	sbc a,h			;8f3c
	rst 0			;8f3d
	rst 38h			;8f3e
	rst 38h			;8f3f
	ccf			;8f40
	rst 8			;8f41
	rst 30h			;8f42
	scf			;8f43
	dec de			;8f44
	dec de			;8f45
	rst 38h			;8f46
	xor 018h		;8f47
	adc a,l			;8f49
	dec a			;8f4a
l8f4bh:
	adc a,l			;8f4b
	xor 010h		;8f4c
	xor b			;8f4e
	xor b			;8f4f
	xor c			;8f50
	defb 0fdh,00bh,009h ;illegal sequence	;8f51
	ld c,c			;8f54
	xor e			;8f55
	rst 38h			;8f56
	nop			;8f57
	rst 38h			;8f58
	inc bc			;8f59
	call m,00087h		;8f5a
	rst 38h			;8f5d
	rra			;8f5e
	inc bc			;8f5f
	ret po			;8f60
	call m,0031fh		;8f61
	dec de			;8f64
	add a,l			;8f65
	scf			;8f66
	rst 30h			;8f67
	rst 8			;8f68
	ccf			;8f69
	rst 38h			;8f6a
	inc bc			;8f6b
	cp 088h			;8f6c
	rst 38h			;8f6e
	ret m			;8f6f
	jr nc,$+101		;8f70
	ld a,b			;8f72
	ld h,e			;8f73
	ret m			;8f74
	ret m			;8f75
	ex af,af'		;8f76
	cp e			;8f77
	inc bc			;8f78
	rst 38h			;8f79
	dec b			;8f7a
	call m,0ff8fh		;8f7b
	ret p			;8f7e
	ret p			;8f7f
	rrca			;8f80
	rrca			;8f81
	rst 38h			;8f82
	rlca			;8f83
	nop			;8f84
	nop			;8f85
	ret p			;8f86
	ret p			;8f87
	rrca			;8f88
	rrca			;8f89
	nop			;8f8a
	ret po			;8f8b
	inc b			;8f8c
	nop			;8f8d
	ld b,0c0h		;8f8e
	inc bc			;8f90
	ret nc			;8f91
	ld (bc),a		;8f92
	rrca			;8f93
	ld (bc),a		;8f94
	nop			;8f95
	add a,e			;8f96
	cp a			;8f97
	and a			;8f98
	ld b,a			;8f99
	inc b			;8f9a
	rrca			;8f9b
	adc a,l			;8f9c
	rst 38h			;8f9d
	inc bc			;8f9e
	defb 0fdh,0fdh,001h ;illegal sequence	;8f9f
	rst 38h			;8fa2
	rst 38h			;8fa3
	nop			;8fa4
	nop			;8fa5
	ret po			;8fa6
	rst 28h			;8fa7
	rst 30h			;8fa8
	scf			;8fa9
	inc b			;8faa
	dec de			;8fab
	inc b			;8fac
	ret nc			;8fad
	adc a,h			;8fae
	call po,04444h		;8faf
	call po,000ffh		;8fb2
	nop			;8fb5
	rst 38h			;8fb6
	inc bc			;8fb7
	ld (bc),a		;8fb8
	cp 0ffh			;8fb9
	dec b			;8fbb
	inc bc			;8fbc
	inc bc			;8fbd
	add a,e			;8fbe
	dec b			;8fbf
	ccf			;8fc0
	ld (bc),a		;8fc1
	jr nc,l8f4bh		;8fc2
	scf			;8fc4
	rst 38h			;8fc5
	rst 38h			;8fc6
	cp 0f0h			;8fc7
	ld bc,0040fh		;8fc9
	rst 38h			;8fcc
	adc a,c			;8fcd
	ld a,a			;8fce
	rrca			;8fcf
	add a,b			;8fd0
	ret p			;8fd1
	rst 38h			;8fd2
	rst 38h			;8fd3
	defb 0fdh,0fdh,0ffh ;illegal sequence	;8fd4
	inc b			;8fd7
	add a,b			;8fd8
	add a,c			;8fd9
	rst 38h			;8fda
	ld b,000h		;8fdb
	ld (bc),a		;8fdd
	rst 38h			;8fde
	ld (bc),a		;8fdf
	add a,b			;8fe0
	inc bc			;8fe1
	cp 003h			;8fe2
	nop			;8fe4
	ld (bc),a		;8fe5
	rst 38h			;8fe6
	ld (bc),a		;8fe7
	nop			;8fe8
	add a,(hl)		;8fe9
	rst 38h			;8fea
	add a,b			;8feb
	add a,b			;8fec
	nop			;8fed
	cp e			;8fee
	xor d			;8fef
	inc bc			;8ff0
	ld b,h			;8ff1
	ld (bc),a		;8ff2
l8ff3h:
	nop			;8ff3
	ld (bc),a		;8ff4
	rst 38h			;8ff5
	inc bc			;8ff6
	add a,b			;8ff7
	ld (bc),a		;8ff8
	rst 38h			;8ff9
	ld (bc),a		;8ffa
	nop			;8ffb
	nop			;8ffc
	ld b,0f5h		;8ffd
	ex af,af'		;8fff
	defb 0fdh,006h,0f5h ;illegal sequence	;9000
	add hl,bc		;9003
	defb 0fdh,002h,0f8h ;illegal sequence	;9004
	ex af,af'		;9007
	defb 0fdh,006h,0f5h ;illegal sequence	;9008
	rlca			;900b
	defb 0fdh,002h,0f8h ;illegal sequence	;900c
	add a,c			;900f
	defb 0fdh,006h,0f5h ;illegal sequence	;9010
	add a,l			;9013
	ld sp,hl		;9014
	call p,044f0h		;9015
	ld b,h			;9018
	inc bc			;9019
	ret p			;901a
	add a,c			;901b
	ld sp,hl		;901c
	dec c			;901d
	ld b,b			;901e
	rla			;901f
	ret p			;9020
	add a,e			;9021
	ld sp,hl		;9022
	ld b,h			;9023
	ld b,h			;9024
	inc bc			;9025
	ret p			;9026
	add a,e			;9027
	ld sp,031e1h		;9028
	rlca			;902b
	ld hl,0f102h		;902c
	add a,e			;902f
	defb 0fdh,0f8h,0fdh ;illegal sequence	;9030
	dec b			;9033
	push af			;9034
	dec b			;9035
	defb 0fdh,002h,0f8h ;illegal sequence	;9036
	sbc a,l			;9039
	cp 0f8h			;903a
	ret m			;903c
	defb 0fdh,0e8h,0fdh ;illegal sequence	;903d
	ret m			;9040
	ret m			;9041
	cp 0f8h			;9042
	ret m			;9044
	defb 0fdh,0e8h,0d8h ;illegal sequence	;9045
	push af			;9048
	ret m			;9049
	defb 0fdh,0f5h,0d5h ;illegal sequence	;904a
	rst 38h			;904d
	rst 38h			;904e
	ret c			;904f
	push af			;9050
	ret m			;9051
	defb 0fdh,0f5h,0d5h ;illegal sequence	;9052
	rst 38h			;9055
	rst 38h			;9056
	inc bc			;9057
	ex (sp),hl		;9058
	dec b			;9059
	ld (0e303h),a		;905a
	ld b,032h		;905d
	ld (bc),a		;905f
	ex (sp),hl		;9060
	rrca			;9061
	jp p,01202h		;9062
	ld (bc),a		;9065
	ld (0f105h),a		;9066
	add a,e			;9069
	ld hl,03131h		;906a
	dec bc			;906d
	pop af			;906e
	inc bc			;906f
	defb 0fdh,002h,0f8h ;illegal sequence	;9070
	add a,c			;9073
	defb 0fdh,006h,0f5h ;illegal sequence	;9074
	add a,e			;9077
	ret p			;9078
	call p,005f9h		;9079
	push af			;907c
	add a,e			;907d
	ld sp,hl		;907e
	call p,005f0h		;907f
	push af			;9082
	add hl,bc		;9083
	defb 0fdh,002h,0f8h ;illegal sequence	;9084
	rlca			;9087
	push af			;9088
	ld a,(bc)		;9089
	defb 0fdh,002h,0e8h ;illegal sequence	;908a
	add a,(hl)		;908d
	ret m			;908e
	cp 0f8h			;908f
	ret pe			;9091
	ret c			;9092
	call p,0f003h		;9093
	add a,h			;9096
	ret m			;9097
	cp 0f8h			;9098
	push af			;909a
	inc bc			;909b
	ld a,081h		;909c
	ld sp,02106h		;909e
	ld (bc),a		;90a1
	pop af			;90a2
	add hl,bc		;90a3
	push af			;90a4
	sub c			;90a5
	ret p			;90a6
	call p,0f9f9h		;90a7
	ex (sp),hl		;90aa
	ret pe			;90ab
	ret m			;90ac
	cp 0f8h			;90ad
	ex (sp),hl		;90af
	add a,d			;90b0
	defb 0fdh,0f8h,0feh ;illegal sequence	;90b1
	cp 0f8h			;90b4
	cp 005h			;90b6
	ret m			;90b8
	add a,e			;90b9
	di			;90ba
	cp 0f3h			;90bb
	inc bc			;90bd
	pop af			;90be
	adc a,a			;90bf
	di			;90c0
	ld a,03eh		;90c1
	inc hl			;90c3
	inc hl			;90c4
	ld hl,03f21h		;90c5
	ccf			;90c8
	ex (sp),hl		;90c9
	ex (sp),hl		;90ca
	ld (02132h),a		;90cb
	ld hl,03f04h		;90ce
	add a,l			;90d1
	rst 28h			;90d2
	ccf			;90d3
	rra			;90d4
	rra			;90d5
	sub b			;90d6
	inc bc			;90d7
	sub h			;90d8
	add a,c			;90d9
	ld b,b			;90da
	inc bc			;90db
	rrca			;90dc
	add a,c			;90dd
	ld sp,hl		;90de
	rlca			;90df
	ret p			;90e0
	add a,c			;90e1
	cp 004h			;90e2
sub_90e4h:
	sub b			;90e4
	ld (bc),a		;90e5
	ld b,b			;90e6
	ld (bc),a		;90e7
	rra			;90e8
	dec b			;90e9
	defb 0fdh,002h,0f5h ;illegal sequence	;90ea
	add a,c			;90ed
	jp (hl)			;90ee
	inc bc			;90ef
	sub h			;90f0
	add a,(hl)		;90f1
	ret m			;90f2
	cp 0f8h			;90f3
	push af			;90f5
	add hl,bc		;90f6
	add hl,bc		;90f7
	inc bc			;90f8
	inc b			;90f9
	inc b			;90fa
	ret p			;90fb
	add a,e			;90fc
	inc b			;90fd
	ld c,c			;90fe
	ld c,c			;90ff
	dec b			;9100
	inc b			;9101
	add a,e			;9102
	ld c,c			;9103
	sbc a,(hl)		;9104
	sbc a,(hl)		;9105
	inc b			;9106
	ld c,c			;9107
	inc b			;9108
	ld hl,0f104h		;9109
	inc b			;910c
	ld hl,0f104h		;910d
	ld (bc),a		;9110
	ld hl,03203h		;9111
	ld (bc),a		;9114
	ld hl,0f206h		;9115
	inc bc			;9118
	pop af			;9119
	inc bc			;911a
	ld (02104h),a		;911b
	ld (bc),a		;911e
	rrca			;911f
	ld (bc),a		;9120
	sub h			;9121
	inc bc			;9122
	ld b,b			;9123
	ld (bc),a		;9124
	rrca			;9125
	adc a,b			;9126
	defb 0fdh,0f5h,0f1h ;illegal sequence	;9127
	ld (de),a		;912a
	inc hl			;912b
	inc hl			;912c
	pop af			;912d
	pop af			;912e
	inc bc			;912f
	jp (hl)			;9130
	ld (bc),a		;9131
	sub b			;9132
	ld (bc),a		;9133
	ld b,b			;9134
	add a,c			;9135
	rrca			;9136
	nop			;9137
	or d			;9138
	add a,b			;9139
	ld a,b			;913a
	rlca			;913b
	rst 38h			;913c
	rst 38h			;913d
	cp 08eh			;913e
	add a,(hl)		;9140
	ret c			;9141
	call pe,0f3efh		;9142
	call m,0ffffh		;9145
	ret m			;9148
	ret m			;9149
	defb 0fdh,043h,043h ;illegal sequence	;914a
	ld h,c			;914d
	ld b,b			;914e
	ld b,b			;914f
	ld h,b			;9150
	scf			;9151
	rst 30h			;9152
	rst 8			;9153
	ccf			;9154
	rst 38h			;9155
	rst 38h			;9156
	rrca			;9157
	ex af,af'		;9158
	ex af,af'		;9159
	ret p			;915a
	ret p			;915b
	nop			;915c
	nop			;915d
	cp 08eh			;915e
	add a,(hl)		;9160
	dec de			;9161
	scf			;9162
	rst 30h			;9163
	rst 8			;9164
	ccf			;9165
	ret m			;9166
	ex af,af'		;9167
	ret p			;9168
	sbc a,a			;9169
	cp a			;916a
	inc bc			;916b
	rst 38h			;916c
	adc a,l			;916d
	cp 08eh			;916e
	add a,(hl)		;9170
	call pe,0f3efh		;9171
	call m,0080fh		;9174
	rlca			;9177
	rlca			;9178
	ret po			;9179
	ret po			;917a
	inc bc			;917b
	nop			;917c
	ret z			;917d
	cp 08eh			;917e
	add a,(hl)		;9180
	call pe,0f3efh		;9181
	call m,0f0ffh		;9184
	add a,b			;9187
	ld (hl),b		;9188
	rrca			;9189
	rst 38h			;918a
	cp 086h			;918b
	inc bc			;918d
	inc bc			;918e
	ld bc,00ffch		;918f
	call m,0c0f0h		;9192
	ld a,a			;9195
	rst 38h			;9196
	rst 38h			;9197
	call m,03fffh		;9198
	rra			;919b
	adc a,a			;919c
	rst 0			;919d
	call po,0fcfch		;919e
	rst 38h			;91a1
	ccf			;91a2
	rra			;91a3
	adc a,a			;91a4
	rst 0			;91a5
	call po,0fcfch		;91a6
	rst 38h			;91a9
	call m,0f1f8h		;91aa
	ex (sp),hl		;91ad
	daa			;91ae
	ccf			;91af
	ccf			;91b0
	ld d,l			;91b1
	ld l,l			;91b2
	cp e			;91b3
	rst 0			;91b4
	rst 38h			;91b5
	rst 38h			;91b6
	rrca			;91b7
	ex af,af'		;91b8
	xor d			;91b9
	or (hl)			;91ba
	ex (sp),ix		;91bb
	rst 38h			;91bd
	rra			;91be
	djnz l91d0h		;91bf
	ld d,l			;91c1
	ld l,l			;91c2
	cp e			;91c3
	rst 0			;91c4
	rst 38h			;91c5
	inc bc			;91c6
	ex af,af'		;91c7
	xor (hl)		;91c8
	cp e			;91c9
	ld l,l			;91ca
	ld d,l			;91cb
	ld l,l			;91cc
	cp e			;91cd
	rst 0			;91ce
	rst 38h			;91cf
l91d0h:
	ret m			;91d0
	or (hl)			;91d1
	xor d			;91d2
	or (hl)			;91d3
	ex (sp),ix		;91d4
	rst 38h			;91d6
	add a,a			;91d7
	add a,b			;91d8
	ld l,l			;91d9
	cp e			;91da
	rst 0			;91db
	rst 38h			;91dc
	add a,a			;91dd
	add a,b			;91de
	rlca			;91df
	rlca			;91e0
	or (hl)			;91e1
	ex (sp),ix		;91e2
	rst 38h			;91e4
	rst 38h			;91e5
	ret p			;91e6
	add a,b			;91e7
	ld (hl),b		;91e8
	ret c			;91e9
	ret c			;91ea
	call pe,0f3efh		;91eb
	call m,sub_8087h	;91ee
	scf			;91f1
	rst 30h			;91f2
	rst 8			;91f3
	ccf			;91f4
	rst 0			;91f5
	add a,b			;91f6
	inc b			;91f7
	rlca			;91f8
	ld (bc),a		;91f9
	ld b,e			;91fa
	or h			;91fb
	ld h,c			;91fc
	ld b,b			;91fd
	ld b,b			;91fe
	ld h,b			;91ff
	dec de			;9200
	dec de			;9201
	scf			;9202
	rst 30h			;9203
	rst 8			;9204
	ccf			;9205
	rst 38h			;9206
	ret m			;9207
	ccf			;9208
	rra			;9209
	ccf			;920a
	rst 0			;920b
	ret nz			;920c
	ret p			;920d
	rst 38h			;920e
	rst 38h			;920f
	call m,0f8fch		;9210
	pop af			;9213
	rst 38h			;9214
	ex (sp),hl		;9215
	rst 0			;9216
	adc a,a			;9217
	xor d			;9218
	or (hl)			;9219
	ex (sp),ix		;921a
	rst 38h			;921c
l921dh:
	rst 38h			;921d
	ret p			;921e
	djnz l921dh		;921f
	ret m			;9221
	call m,sub_83e3h	;9222
	adc a,a			;9225
	rst 38h			;9226
	rst 38h			;9227
	ccf			;9228
	ccf			;9229
	rra			;922a
	adc a,a			;922b
	rst 38h			;922c
	rst 0			;922d
	ex (sp),hl		;922e
	pop af			;922f
	nop			;9230
	add a,d			;9231
	ld sp,hl		;9232
	sub b			;9233
	inc bc			;9234
	ret p			;9235
	ld a,(bc)		;9236
	push af			;9237
	inc bc			;9238
	ld sp,hl		;9239
	add a,e			;923a
	push af			;923b
	ld e,l			;923c
	ld e,l			;923d
	add hl,bc		;923e
	push af			;923f
	inc bc			;9240
	ld sp,hl		;9241
	add a,c			;9242
	sub b			;9243
	inc bc			;9244
	rrca			;9245
	ex af,af'		;9246
	push af			;9247
	ld (bc),a		;9248
	ld sp,hl		;9249
	add a,d			;924a
	sub b			;924b
	ld sp,hl		;924c
	inc b			;924d
	ret p			;924e
	rlca			;924f
	push af			;9250
	ld (bc),a		;9251
	ld sp,hl		;9252
	add a,e			;9253
	sub b			;9254
	rrca			;9255
	sub b			;9256
	inc b			;9257
	rrca			;9258
	ex af,af'		;9259
	push af			;925a
	ld (bc),a		;925b
	ld sp,hl		;925c
	add a,l			;925d
	sub b			;925e
	ret p			;925f
	ret p			;9260
	push af			;9261
	push af			;9262
	inc bc			;9263
	defb 0fdh,082h,0d8h ;illegal sequence	;9264
	ret p			;9267
	inc bc			;9268
	defb 0fdh,003h,0d5h ;illegal sequence	;9269
	adc a,b			;926c
	ret c			;926d
	ret p			;926e
	ret p			;926f
	call p,0f9f9h		;9270
	call p,003f9h		;9273
	ret p			;9276
	add a,c			;9277
	call p,0f904h		;9278
	inc bc			;927b
	ret p			;927c
	add a,a			;927d
	call p,0f9f9h		;927e
	call p,0f0f9h		;9281
	defb 0fdh,005h,0f5h ;illegal sequence	;9284
	ld (bc),a		;9287
	ld sp,hl		;9288
	add a,c			;9289
	defb 0fdh,004h,0f5h ;illegal sequence	;928a
	ld (bc),a		;928d
	ld sp,hl		;928e
	add a,d			;928f
	sub b			;9290
	defb 0fdh,004h,0f5h ;illegal sequence	;9291
	ld (bc),a		;9294
	ld sp,hl		;9295
	add a,c			;9296
	ret p			;9297
	inc bc			;9298
	defb 0fdh,004h,0f5h ;illegal sequence	;9299
	add a,e			;929c
	ld sp,hl		;929d
	defb 0fdh,0fdh,004h ;illegal sequence	;929e
	push af			;92a1
	ld (bc),a		;92a2
	ld sp,hl		;92a3
	inc b			;92a4
	push af			;92a5
	ld (bc),a		;92a6
	ld sp,hl		;92a7
	add a,d			;92a8
	sub b			;92a9
	rrca			;92aa
	dec b			;92ab
	push af			;92ac
	ld (bc),a		;92ad
	ld sp,hl		;92ae
	add a,d			;92af
	sub b			;92b0
	defb 0fdh,005h,0f5h ;illegal sequence	;92b1
	ld (bc),a		;92b4
	ld sp,hl		;92b5
	inc b			;92b6
	push af			;92b7
	ld (bc),a		;92b8
	ld sp,hl		;92b9
	add a,a			;92ba
	sub b			;92bb
	rrca			;92bc
	sub b			;92bd
	rrca			;92be
	push af			;92bf
	ld e,l			;92c0
	ld e,l			;92c1
	ld a,(bc)		;92c2
	push af			;92c3
	inc bc			;92c4
	ld sp,hl		;92c5
	ld (bc),a		;92c6
	call p,0f906h		;92c7
	add a,c			;92ca
	call p,0f003h		;92cb
	add a,e			;92ce
	call p,0fdf9h		;92cf
	dec b			;92d2
	push af			;92d3
	inc bc			;92d4
	ld sp,hl		;92d5
	add a,h			;92d6
	call p,0f0f0h		;92d7
	call p,0f905h		;92da
	add a,c			;92dd
	call p,0f003h		;92de
	add a,d			;92e1
	call p,000f9h		;92e2
	add a,c			;92e5
	ld a,a			;92e6
	ex af,af'		;92e7
	rst 38h			;92e8
	inc b			;92e9
	call m,0fe03h		;92ea
	add a,c			;92ed
	rst 38h			;92ee
	inc b			;92ef
	ccf			;92f0
	inc bc			;92f1
l92f2h:
	ld a,a			;92f2
	add a,c			;92f3
sub_92f4h:
	rst 38h			;92f4
	rlca			;92f5
	call m,0ff81h		;92f6
	rlca			;92f9
	ccf			;92fa
	add a,c			;92fb
	rst 38h			;92fc
	inc bc			;92fd
	call m,0ff81h		;92fe
	inc bc			;9301
	call m,0ff81h		;9302
	inc bc			;9305
	ccf			;9306
	add a,c			;9307
	rst 38h			;9308
	inc bc			;9309
	ccf			;930a
	inc b			;930b
	call m,0ff81h		;930c
	inc bc			;930f
	cp 004h			;9310
	ccf			;9312
	add a,c			;9313
	rst 38h			;9314
	inc bc			;9315
	ld a,a			;9316
	nop			;9317
	ld a,(bc)		;9318
	ret p			;9319
	add a,c			;931a
	call p,0f903h		;931b
	add a,c			;931e
	call p,0f003h		;931f
	add a,c			;9322
	call p,0f903h		;9323
	add a,c			;9326
	call p,0f003h		;9327
	add a,c			;932a
	call p,0f903h		;932b
	add a,c			;932e
	call p,0f003h		;932f
	add a,c			;9332
	call p,0f903h		;9333
	add a,c			;9336
	call p,0f003h		;9337
	inc bc			;933a
	call p,0f085h		;933b
	call p,0f9f9h		;933e
	ret p			;9341
	inc bc			;9342
	call p,0f082h		;9343
	call p,0f903h		;9346
	add a,c			;9349
	call p,0f003h		;934a
	add a,c			;934d
	call p,0f903h		;934e
	add a,c			;9351
	call p,0f003h		;9352
	add a,d			;9355
	call p,000f9h		;9356
	sbc a,d			;9359
	rst 38h			;935a
	cp 0f9h			;935b
	jp p,0f004h		;935d
	ret po			;9360
	ret nz			;9361
	ld bc,00080h		;9362
	ld (hl),b		;9365
	ret m			;9366
	add a,b			;9367
	ret m			;9368
	ret m			;9369
	add a,b			;936a
	ld bc,01c07h		;936b
	rst 38h			;936e
	ld e,b			;936f
	ld e,b			;9370
	rst 38h			;9371
	adc a,b			;9372
	rst 38h			;9373
	inc bc			;9374
	sub a			;9375
	ld (bc),a		;9376
	jp (hl)			;9377
	or (hl)			;9378
	nop			;9379
	adc a,0a4h		;937a
	and d			;937c
	ret			;937d
	push hl			;937e
	di			;937f
	sbc a,080h		;9380
	ld bc,04020h		;9382
	ld e,b			;9385
	cp h			;9386
	add a,b			;9387
	inc a			;9388
	inc a			;9389
	add a,c			;938a
	add a,c			;938b
	ld h,d			;938c
	ld h,d			;938d
	rst 38h			;938e
	ld e,b			;938f
	ld e,b			;9390
	rst 38h			;9391
	inc h			;9392
	rra			;9393
	jr nz,l93f6h		;9394
	rst 38h			;9396
	jp (hl)			;9397
	jp (hl)			;9398
	nop			;9399
	add a,b			;939a
	inc b			;939b
	ld (bc),a		;939c
	ld a,(de)		;939d
	dec a			;939e
	ld bc,03c3ch		;939f
	ld (hl),e		;93a2
	dec h			;93a3
	ld b,l			;93a4
	sub e			;93a5
	and a			;93a6
	rst 8			;93a7
	ld a,e			;93a8
	ld bc,0f824h		;93a9
	inc b			;93ac
	ld b,0ffh		;93ad
	inc bc			;93af
	ld e,b			;93b0
	ld (bc),a		;93b1
	add a,c			;93b2
	ld (bc),a		;93b3
	ld b,(hl)		;93b4
	sub (hl)		;93b5
	rst 38h			;93b6
	jp (hl)			;93b7
	jp (hl)			;93b8
	nop			;93b9
	add a,b			;93ba
	ld bc,00e00h		;93bb
	rra			;93be
	ld bc,01f1fh		;93bf
	rst 38h			;93c2
	ld a,a			;93c3
	sbc a,a			;93c4
	ld c,a			;93c5
	jr nz,l93d7h		;93c6
	rlca			;93c8
	inc bc			;93c9
	ld de,003ffh		;93ca
	jp (hl)			;93cd
	ld (bc),a		;93ce
	ld e,b			;93cf
	sub a			;93d0
	rst 38h			;93d1
	ld bc,0e080h		;93d2
	jr c,$+1		;93d5
l93d7h:
	jp (hl)			;93d7
	jp (hl)			;93d8
	nop			;93d9
	ccf			;93da
	ccf			;93db
	pop bc			;93dc
	inc a			;93dd
	inc a			;93de
	pop bc			;93df
	ccf			;93e0
	ccf			;93e1
	call po,0ccc4h		;93e2
	sbc a,(hl)		;93e5
	ld a,0beh		;93e6
	inc b			;93e8
	cp 08ch			;93e9
	cp (hl)			;93eb
	ld a,09eh		;93ec
	call z,0e4c4h		;93ee
	daa			;93f1
	inc hl			;93f2
	inc sp			;93f3
	ld a,c			;93f4
	ld a,h			;93f5
l93f6h:
	ld a,l			;93f6
	inc b			;93f7
	ld a,a			;93f8
	add a,(hl)		;93f9
	ld a,l			;93fa
	ld a,h			;93fb
	ld a,c			;93fc
	inc sp			;93fd
	inc hl			;93fe
	daa			;93ff
	inc bc			;9400
	ld a,b			;9401
	add a,d			;9402
l9403h:
	xor d			;9403
l9404h:
	rst 38h			;9404
	rlca			;9405
	ld a,b			;9406
	add a,c			;9407
	add a,c			;9408
	inc bc			;9409
	rst 38h			;940a
	or a			;940b
	inc bc			;940c
	ret nz			;940d
	ret p			;940e
	ret m			;940f
	ret m			;9410
	ret p			;9411
	ret nz			;9412
	inc bc			;9413
	ld sp,hl		;9414
	ld sp,hl		;9415
	pop af			;9416
	pop af			;9417
	ld (024e4h),a		;9418
	rra			;941b
	add a,b			;941c
	rlca			;941d
	rlca			;941e
	ld a,a			;941f
	rrca			;9420
	add a,b			;9421
	ret p			;9422
	add a,b			;9423
	add a,b			;9424
	ret nz			;9425
	ret po			;9426
	ret m			;9427
	xor a			;9428
	and e			;9429
	and d			;942a
	and d			;942b
	ld bc,0e0e0h		;942c
	cp 0f0h			;942f
	ld bc,0010fh		;9431
	ld bc,00703h		;9434
	rra			;9437
	push af			;9438
	push bc			;9439
	ld b,l			;943a
	ld b,l			;943b
	ret p			;943c
	jp 0acach		;943d
	ld a,b			;9440
	ret p			;9441
	rst 38h			;9442
	inc b			;9443
	ret p			;9444
	sbc a,h			;9445
	rst 38h			;9446
	ld a,a			;9447
	ld a,a			;9448
	pop de			;9449
	pop de			;944a
	rra			;944b
	ld de,0fbeah		;944c
	ei			;944f
	jp z,0cecah		;9450
	call m,0cccch		;9453
	call 0b6cdh		;9456
	add a,h			;9459
	add a,h			;945a
	rrca			;945b
	inc e			;945c
	jp z,0fecah		;945d
	ld a,a			;9460
	nop			;9461
	inc b			;9462
	ret m			;9463
	add a,e			;9464
	nop			;9465
	ld bc,004ffh		;9466
	outd			;9469
	rra			;946b
	ld de,0fbeah		;946c
	adc a,d			;946f
	adc a,d			;9470
	and e			;9471
	ld (01223h),hl		;9472
	inc de			;9475
	ld (de),a		;9476
	inc de			;9477
	call m,0ffffh		;9478
	ret m			;947b
	adc a,b			;947c
	ld d,a			;947d
	rst 18h			;947e
	ld d,c			;947f
	ld d,c			;9480
	push bc			;9481
	ld b,h			;9482
	call nz,0c848h		;9483
	ld c,b			;9486
	ret z			;9487
	ccf			;9488
	sbc a,a			;9489
	sbc a,a			;948a
	adc a,a			;948b
	rst 8			;948c
	ld c,h			;948d
	daa			;948e
	inc h			;948f
	ret m			;9490
	ld l,02eh		;9491
	rst 38h			;9493
	ld b,h			;9494
	rst 38h			;9495
	inc bc			;9496
	ld e,a			;9497
	ld (bc),a		;9498
	ret nc			;9499
	add a,e			;949a
	rst 38h			;949b
	ld (003ffh),hl		;949c
	ret pe			;949f
	sbc a,d			;94a0
	jp nz,04342h		;94a1
	ld b,a			;94a4
	ret m			;94a5
	ret po			;94a6
	ret nz			;94a7
	add a,b			;94a8
	ld b,d			;94a9
	ld b,e			;94aa
	jp 01fe3h		;94ab
	rlca			;94ae
	inc bc			;94af
	ld bc,088f8h		;94b0
	ld d,a			;94b3
	rst 18h			;94b4
	rst 18h			;94b5
	ld d,e			;94b6
	ld d,e			;94b7
	ld (hl),e		;94b8
	rst 38h			;94b9
	rst 38h			;94ba
	inc bc			;94bb
	ld a,b			;94bc
	sub e			;94bd
	xor d			;94be
	rst 38h			;94bf
	ld a,b			;94c0
	adc a,(hl)		;94c1
	call m,0cccch		;94c2
	call sub_84b6h		;94c5
	add a,(hl)		;94c8
	ld (hl),c		;94c9
	ccf			;94ca
	inc sp			;94cb
	inc sp			;94cc
	or e			;94cd
	ld l,l			;94ce
	ld hl,00021h		;94cf
	ld (bc),a		;94d2
	cp 087h			;94d3
	defb 0edh ;next byte illegal after ed	;94d5
	ret pe			;94d6
	ret pe			;94d7
	ret c			;94d8
	ret m			;94d9
	ret m			;94da
	cp 005h			;94db
	ret pe			;94dd
	adc a,c			;94de
	ret c			;94df
	ld e,b			;94e0
	ret m			;94e1
	defb 0fdh,0fdh,0f5h ;illegal sequence	;94e2
	push af			;94e5
	ret pe			;94e6
	adc a,l			;94e7
	inc bc			;94e8
	defb 0fdh,08ch ;adc a,iyh	;94e9
	ret c			;94eb
	ld e,l			;94ec
	rst 38h			;94ed
	push de			;94ee
	ld e,a			;94ef
	ld e,a			;94f0
	cp 0feh			;94f1
	ret m			;94f3
	ret m			;94f4
	defb 0fdh,0f5h,003h ;illegal sequence	;94f5
	cp 005h			;94f8
	ret pe			;94fa
	adc a,c			;94fb
	ret c			;94fc
	ld e,b			;94fd
	ret pe			;94fe
	rst 28h			;94ff
	ret m			;9500
	defb 0fdh,0fdh,0e8h ;illegal sequence	;9501
	adc a,l			;9504
	inc b			;9505
	defb 0fdh,002h,0f5h ;illegal sequence	;9506
	add a,h			;9509
	push de			;950a
	ld e,a			;950b
	ld e,a			;950c
	cp 005h			;950d
	ret pe			;950f
	adc a,d			;9510
	ret c			;9511
	ld e,b			;9512
	cp 0feh			;9513
	ret m			;9515
	ret m			;9516
	defb 0fdh,0f5h,0feh ;illegal sequence	;9517
	cp 003h			;951a
	defb 0fdh,002h,0f5h ;illegal sequence	;951c
	adc a,h			;951f
	ret pe			;9520
	adc a,l			;9521
	rst 38h			;9522
	ret pe			;9523
	rst 28h			;9524
	ret m			;9525
	defb 0fdh,0fdh,0d5h ;illegal sequence	;9526
	ld e,a			;9529
	ld e,a			;952a
	cp 005h			;952b
	ret pe			;952d
	sbc a,b			;952e
	ret c			;952f
	ld e,b			;9530
	cp 0feh			;9531
	defb 0edh ;next byte illegal after ed	;9533
	ret pe			;9534
	ret pe			;9535
	ret c			;9536
	ret m			;9537
	ret m			;9538
	defb 0fdh,0fdh,0d8h ;illegal sequence	;9539
	ld e,l			;953c
	rst 38h			;953d
	ret pe			;953e
	adc a,l			;953f
	ret m			;9540
	ret m			;9541
	defb 0fdh,0fdh,0f5h ;illegal sequence	;9542
	push af			;9545
	push de			;9546
	inc bc			;9547
	ld e,a			;9548
	adc a,c			;9549
	push de			;954a
	ret c			;954b
	ret pe			;954c
	ret pe			;954d
	ret c			;954e
	push de			;954f
	ld e,a			;9550
	pop af			;9551
	or 003h			;9552
	di			;9554
	add a,(hl)		;9555
	jp m,0faf2h		;9556
	jp m,0faf2h		;9559
	inc bc			;955c
	di			;955d
	add a,h			;955e
	or 0f1h			;955f
	pop af			;9561
	or 003h			;9562
	di			;9564
	add a,(hl)		;9565
	jp m,0faf2h		;9566
	jp m,0faf2h		;9569
	inc bc			;956c
	di			;956d
	adc a,b			;956e
	or 0f1h			;956f
	and e			;9571
	ld (0f121h),a		;9572
	pop af			;9575
	ret pe			;9576
	dec b			;9577
	adc a,l			;9578
	add a,c			;9579
	push de			;957a
	dec b			;957b
	push af			;957c
	ld b,0d5h		;957d
	sub b			;957f
	push af			;9580
	cp 0feh			;9581
	ret m			;9583
	ret m			;9584
	defb 0fdh,0fdh,0f5h ;illegal sequence	;9585
	push af			;9588
	jp m,0eaeah		;9589
	and e			;958c
	and e			;958d
	ld h,e			;958e
	ld h,e			;958f
	dec b			;9590
	or 08bh			;9591
	call p,0f4feh		;9593
	ret p			;9596
	jp m,0eaeah		;9597
	and e			;959a
	and e			;959b
	ld h,e			;959c
	ld h,e			;959d
	dec b			;959e
	or 088h			;959f
	call p,0f4feh		;95a1
	ret p			;95a4
	jp m,0f3d8h		;95a5
	or 007h			;95a8
	ret pe			;95aa
	ld (bc),a		;95ab
	push de			;95ac
	add a,(hl)		;95ad
	rst 38h			;95ae
	ret c			;95af
	rst 38h			;95b0
	pop hl			;95b1
	add a,c			;95b2
	defb 0fdh,003h,0f8h ;illegal sequence	;95b3
	add a,c			;95b6
	cp 003h			;95b7
	ret m			;95b9
	ld (bc),a		;95ba
	defb 0fdh,08bh,0f5h ;illegal sequence	;95bb
	cp 0f8h			;95be
	push af			;95c0
	di			;95c1
	push af			;95c2
	or 0f1h			;95c3
	push de			;95c5
	ret c			;95c6
	ret c			;95c7
	dec b			;95c8
	push de			;95c9
	ld (bc),a		;95ca
	push af			;95cb
	add a,c			;95cc
	push de			;95cd
	inc bc			;95ce
	rst 38h			;95cf
	add a,l			;95d0
	pop hl			;95d1
	add a,c			;95d2
	defb 0fdh,0f8h,0f8h ;illegal sequence	;95d3
	inc bc			;95d6
	cp 002h			;95d7
	ret m			;95d9
	ld (bc),a		;95da
	defb 0fdh,004h,0f5h ;illegal sequence	;95db
	add a,l			;95de
	jp po,0fd81h		;95df
	ret m			;95e2
	ret m			;95e3
	inc bc			;95e4
	cp 002h			;95e5
	ret m			;95e7
	ld (bc),a		;95e8
	defb 0fdh,002h,0f5h ;illegal sequence	;95e9
	ld (bc),a		;95ec
	cp 002h			;95ed
	ret m			;95ef
	ld (bc),a		;95f0
	defb 0fdh,002h,0f5h ;illegal sequence	;95f1
	add a,d			;95f4
	and e			;95f5
	ld (0f603h),a		;95f6
	add a,l			;95f9
	and e			;95fa
	ld (03221h),a		;95fb
	ld hl,0f603h		;95fe
	sub (hl)		;9601
	ld (01f21h),a		;9602
	ld sp,hl		;9605
	call p,0f0f0h		;9606
	or 0f3h			;9609
	di			;960b
	jp m,0f4f9h		;960c
	ret p			;960f
	ret p			;9610
	or 0f3h			;9611
	di			;9613
	jp m,l81e2h		;9614
	defb 0fdh,003h,0f8h ;illegal sequence	;9617
	add a,c			;961a
	cp 003h			;961b
	ret m			;961d
	sub (hl)		;961e
	and e			;961f
	ld (0f121h),a		;9620
	pop af			;9623
	ret pe			;9624
	ret m			;9625
	defb 0fdh,0fdh,0f5h ;illegal sequence	;9626
	push af			;9629
	ret m			;962a
	defb 0fdh,0f5h,0f8h ;illegal sequence	;962b
	defb 0fdh,0fdh,0f5h ;illegal sequence	;962e
	push af			;9631
	ret m			;9632
	defb 0fdh,0f5h,000h ;illegal sequence	;9633
	ld (bc),a		;9636
	rst 38h			;9637
	add a,c			;9638
	add a,b			;9639
	inc bc			;963a
	nop			;963b
	ex af,af'		;963c
	add a,b			;963d
	add a,a			;963e
	rst 38h			;963f
	nop			;9640
	ret p			;9641
	add a,b			;9642
	ret p			;9643
	add a,b			;9644
	add a,b			;9645
	dec b			;9646
	dec h			;9647
	add a,a			;9648
	rst 38h			;9649
	add a,e			;964a
	add a,e			;964b
	ld a,080h		;964c
	ret po			;964e
	rst 38h			;964f
	inc b			;9650
	cp 003h			;9651
	ld a,(hl)		;9653
	dec b			;9654
	push de			;9655
	adc a,e			;9656
	rst 38h			;9657
	nop			;9658
	nop			;9659
	rst 38h			;965a
	rrca			;965b
	ld c,00eh		;965c
	ret p			;965e
	cp 00eh			;965f
	cp 003h			;9661
	adc a,b			;9663
	adc a,b			;9664
	adc a,a			;9665
	adc a,b			;9666
	rst 30h			;9667
	rrca			;9668
	nop			;9669
	rst 38h			;966a
	nop			;966b
	nop			;966c
	dec b			;966d
	rst 38h			;966e
	add a,l			;966f
	add a,a			;9670
	call m,0fe86h		;9671
	inc bc			;9674
	inc bc			;9675
	ret nz			;9676
	ld (bc),a		;9677
	ld a,(hl)		;9678
	add a,c			;9679
	ld a,003h		;967a
	nop			;967c
	ld (bc),a		;967d
	rst 38h			;967e
	add a,d			;967f
	nop			;9680
	rst 38h			;9681
	ld b,0d0h		;9682
	inc b			;9684
	add a,b			;9685
	ld (bc),a		;9686
	adc a,a			;9687
	ld (bc),a		;9688
	adc a,b			;9689
	add a,l			;968a
	rst 38h			;968b
	nop			;968c
	nop			;968d
	rst 38h			;968e
	rst 38h			;968f
	inc bc			;9690
	add a,b			;9691
	add a,h			;9692
	cp 0c0h			;9693
	add a,b			;9695
	ld a,(hl)		;9696
	inc bc			;9697
	cp 081h			;9698
	nop			;969a
	inc b			;969b
	cp 005h			;969c
	ld a,(hl)		;969e
	add a,h			;969f
	ld (hl),b		;96a0
	ld bc,07f0fh		;96a1
	inc bc			;96a4
	rst 38h			;96a5
	ld (bc),a		;96a6
	ld c,b			;96a7
	add a,(hl)		;96a8
	rst 38h			;96a9
	ld h,b			;96aa
	jr nz,l96ddh		;96ab
	jr c,l972bh		;96ad
	dec b			;96af
	add a,b			;96b0
	add a,h			;96b1
	ret po			;96b2
	rst 38h			;96b3
	rst 38h			;96b4
	rrca			;96b5
	inc b			;96b6
	dec b			;96b7
	add a,e			;96b8
	rlca			;96b9
	rst 38h			;96ba
	rst 38h			;96bb
	inc bc			;96bc
	ld a,a			;96bd
	add a,c			;96be
	rst 38h			;96bf
	inc b			;96c0
	nop			;96c1
	ex af,af'		;96c2
	add a,b			;96c3
	ld (bc),a		;96c4
	ld (bc),a		;96c5
	add a,(hl)		;96c6
	call m,06effh		;96c7
	ld l,(hl)		;96ca
	nop			;96cb
	nop			;96cc
	inc bc			;96cd
	ld a,a			;96ce
	inc bc			;96cf
	ld a,d			;96d0
	ld (bc),a		;96d1
	nop			;96d2
	ld (bc),a		;96d3
	ld (bc),a		;96d4
	add a,d			;96d5
	call m,004ffh		;96d6
	nop			;96d9
	inc b			;96da
	rst 38h			;96db
	adc a,b			;96dc
l96ddh:
	cp 0f8h			;96dd
	nop			;96df
	nop			;96e0
	ccf			;96e1
	rlca			;96e2
	ld bc,005ffh		;96e3
	nop			;96e6
	rlca			;96e7
	ld a,a			;96e8
	nop			;96e9
	add a,c			;96ea
	jp p,l9404h		;96eb
	add a,e			;96ee
	nop			;96ef
	jp (hl)			;96f0
	jp (hl)			;96f1
	inc b			;96f2
	sub h			;96f3
	ld (bc),a		;96f4
	ld b,b			;96f5
	ld (bc),a		;96f6
	ret p			;96f7
	ld (bc),a		;96f8
	ld sp,hl		;96f9
	ld (bc),a		;96fa
	sub h			;96fb
	add a,(hl)		;96fc
	nop			;96fd
	sub c			;96fe
	sub d			;96ff
	sbc a,d			;9700
	ld b,e			;9701
	ld bc,l9403h		;9702
	add a,c			;9705
	ld b,b			;9706
	inc bc			;9707
	ret p			;9708
	add a,c			;9709
	sub b			;970a
	ld b,040h		;970b
	sub b			;970d
	ret po			;970e
	sbc a,a			;970f
	sbc a,a			;9710
	ld c,a			;9711
	rrca			;9712
	sub h			;9713
	sub h			;9714
	ret p			;9715
	ret p			;9716
	ld sp,hl		;9717
	sub h			;9718
	ld b,b			;9719
	sub b			;971a
	sub h			;971b
	sub h			;971c
	ld b,b			;971d
	inc bc			;971e
	sub h			;971f
	ld (bc),a		;9720
	ld b,b			;9721
	dec b			;9722
	ret p			;9723
	rlca			;9724
	inc b			;9725
	inc b			;9726
	ret p			;9727
	add a,d			;9728
	ld b,b			;9729
	sub h			;972a
l972bh:
	ld b,040h		;972b
	dec b			;972d
	rrca			;972e
	add a,c			;972f
	jp (hl)			;9730
	rrca			;9731
	sub h			;9732
	inc bc			;9733
	sub b			;9734
	dec b			;9735
	sub h			;9736
	inc bc			;9737
	sub b			;9738
	dec c			;9739
	ld b,b			;973a
	ld a,(bc)		;973b
	ret p			;973c
	add a,h			;973d
	call p,0f9f9h		;973e
	call p,0e904h		;9741
	ex af,af'		;9744
	call p,0f004h		;9745
	ld b,040h		;9748
	ld (bc),a		;974a
	rst 38h			;974b
	inc b			;974c
	sub h			;974d
	ld (bc),a		;974e
	ld b,b			;974f
	ld (bc),a		;9750
	rst 38h			;9751
	ld (bc),a		;9752
	sub h			;9753
	ld (bc),a		;9754
	ld b,b			;9755
	add a,c			;9756
	sub b			;9757
	inc bc			;9758
	rrca			;9759
	inc bc			;975a
	ld b,b			;975b
	add a,d			;975c
	call po,00390h		;975d
	rrca			;9760
	ld (bc),a		;9761
	sub h			;9762
	inc b			;9763
	ld b,b			;9764
	ld a,(bc)		;9765
	rrca			;9766
	add a,e			;9767
	call p,0f9f9h		;9768
	dec b			;976b
	ld b,b			;976c
	add a,h			;976d
	sbc a,c			;976e
	call po,sub_90e4h	;976f
	inc b			;9772
	ld b,b			;9773
	nop			;9774
	add a,c			;9775
	jr l977fh		;9776
	sbc a,b			;9778
	sbc a,e			;9779
	cp 0fch			;977a
	call m,07ff8h		;977c
l977fh:
	ld a,a			;977f
	ccf			;9780
	ccf			;9781
	ret m			;9782
	ret p			;9783
	ret p			;9784
	rra			;9785
	rra			;9786
	ccf			;9787
	ccf			;9788
	ld a,a			;9789
	ld h,b			;978a
	ld h,b			;978b
	rrca			;978c
	rrca			;978d
	add a,a			;978e
	add a,a			;978f
	inc bc			;9790
	inc bc			;9791
	ret p			;9792
	rst 38h			;9793
	ret nz			;9794
	dec b			;9795
	add a,b			;9796
	add a,h			;9797
	call m,sub_80e0h	;9798
	nop			;979b
	inc b			;979c
	add a,b			;979d
	add a,e			;979e
	nop			;979f
	ei			;97a0
	ei			;97a1
	dec b			;97a2
	ld (bc),a		;97a3
	adc a,b			;97a4
	cp a			;97a5
	adc a,a			;97a6
	add a,e			;97a7
	cp a			;97a8
	adc a,a			;97a9
	add a,e			;97aa
	add a,b			;97ab
	nop			;97ac
	ex af,af'		;97ad
	add a,b			;97ae
	add a,c			;97af
	ret p			;97b0
	inc bc			;97b1
	ret nz			;97b2
	inc bc			;97b3
	jr nz,l97b8h		;97b4
	rst 38h			;97b6
	dec b			;97b7
l97b8h:
	inc bc			;97b8
	add a,e			;97b9
	rst 38h			;97ba
	nop			;97bb
	inc e			;97bc
	rlca			;97bd
	dec e			;97be
	ld (bc),a		;97bf
	ld c,b			;97c0
	add a,(hl)		;97c1
	or (hl)			;97c2
	adc a,l			;97c3
	defb 0fdh,0fbh,0fbh ;illegal sequence	;97c4
	ld sp,hl		;97c7
	inc bc			;97c8
	ret nz			;97c9
	add a,c			;97ca
	rra			;97cb
	inc bc			;97cc
	ret nz			;97cd
	rlca			;97ce
	ld a,a			;97cf
	ld (bc),a		;97d0
l97d1h:
	ret p			;97d1
	ld (bc),a		;97d2
	ld e,l			;97d3
	ld (bc),a		;97d4
	ret p			;97d5
	add a,c			;97d6
	rst 38h			;97d7
	inc bc			;97d8
	ret po			;97d9
	add a,a			;97da
	ld h,b			;97db
	add a,b			;97dc
	jr nz,l985eh		;97dd
	ccf			;97df
	ld h,b			;97e0
	rra			;97e1
	add hl,bc		;97e2
	dec d			;97e3
	sub b			;97e4
	rla			;97e5
	rra			;97e6
	rra			;97e7
	djnz l97f9h		;97e8
	rra			;97ea
	add a,b			;97eb
	rst 38h			;97ec
	ret c			;97ed
	ld a,b			;97ee
	jr l97d1h		;97ef
	ret m			;97f1
	ret m			;97f2
	ld bc,008ffh		;97f3
	ld e,b			;97f6
	add a,l			;97f7
	rrca			;97f8
l97f9h:
	rst 38h			;97f9
	rlca			;97fa
	ld a,e			;97fb
	inc bc			;97fc
l97fdh:
	inc bc			;97fd
	dec sp			;97fe
	sub c			;97ff
	nop			;9800
	rlca			;9801
	rlca			;9802
	ex af,af'		;9803
	rrca			;9804
	rlca			;9805
	rlca			;9806
	inc bc			;9807
	nop			;9808
	ret po			;9809
	ret po			;980a
	djnz l97fdh		;980b
	ret po			;980d
	ret po			;980e
	ret nz			;980f
	ld sp,02506h		;9810
	add a,c			;9813
	rst 38h			;9814
	inc bc			;9815
	ret nz			;9816
	add a,c			;9817
	add a,b			;9818
	inc bc			;9819
	ld a,(hl)		;981a
	add a,d			;981b
	nop			;981c
	ld b,b			;981d
	rlca			;981e
	ld c,a			;981f
	ld (bc),a		;9820
	nop			;9821
	adc a,c			;9822
	rst 38h			;9823
	nop			;9824
	nop			;9825
	rst 38h			;9826
	nop			;9827
	nop			;9828
	ld a,a			;9829
	nop			;982a
	nop			;982b
	dec b			;982c
	ld a,a			;982d
	ld (bc),a		;982e
	xor b			;982f
	adc a,c			;9830
	xor c			;9831
	defb 0fdh,00bh,009h ;illegal sequence	;9832
	ld c,c			;9835
	xor e			;9836
	ret c			;9837
	rst 38h			;9838
	nop			;9839
	dec b			;983a
	ret m			;983b
	add a,d			;983c
	ld c,002h		;983d
	dec b			;983f
	ld bc,0ff82h		;9840
	ret m			;9843
	inc b			;9844
	dec b			;9845
	ld (bc),a		;9846
	rrca			;9847
	add a,h			;9848
	ld (hl),b		;9849
	rst 38h			;984a
	nop			;984b
	nop			;984c
	inc bc			;984d
	rst 38h			;984e
	dec bc			;984f
	cp e			;9850
	add a,c			;9851
	xor d			;9852
	inc bc			;9853
	ld b,h			;9854
	ld (bc),a		;9855
	nop			;9856
	add a,c			;9857
	rst 38h			;9858
	inc b			;9859
	ret po			;985a
	ld (bc),a		;985b
	ccf			;985c
	ld (bc),a		;985d
l985eh:
	ld a,a			;985e
	adc a,b			;985f
	pop bc			;9860
l9861h:
	jr c,l9861h		;9861
	ld a,h			;9863
	cp 038h			;9864
l9866h:
	jr c,l9866h		;9866
	inc bc			;9868
	ret nz			;9869
	add a,c			;986a
	ret m			;986b
	inc bc			;986c
	ret nz			;986d
	adc a,d			;986e
	cp 0fch			;986f
	ret p			;9871
	jp 0f202h		;9872
	jp nz,0ff02h		;9875
	nop			;9878
	ld b,0fah		;9879
	add a,c			;987b
	nop			;987c
	ld b,0d0h		;987d
	add a,d			;987f
	rst 38h			;9880
	add a,b			;9881
	dec b			;9882
	ld b,003h		;9883
	add hl,bc		;9885
	inc b			;9886
	ret nc			;9887
	adc a,a			;9888
	call po,04444h		;9889
	call po,07fc0h		;988c
	ld a,a			;988f
	ccf			;9890
	rra			;9891
	rrca			;9892
	rra			;9893
	jr nz,l9912h		;9894
	cp 038h			;9896
	inc bc			;9898
	nop			;9899
	sbc a,c			;989a
	rst 0			;989b
	ld a,00eh		;989c
	ld c,016h		;989e
	ld d,029h		;98a0
	rst 38h			;98a2
	add a,c			;98a3
	ld bc,00103h		;98a4
	ld bc,0f8fch		;98a7
	ret p			;98aa
	ret m			;98ab
	inc b			;98ac
	nop			;98ad
	nop			;98ae
	rst 38h			;98af
	nop			;98b0
	nop			;98b1
	call m,00506h		;98b2
	ret m			;98b5
	ld (bc),a		;98b6
	call m,0fe03h		;98b7
	adc a,a			;98ba
	ld a,(hl)		;98bb
	ld a,000h		;98bc
	ld e,08eh		;98be
	adc a,(hl)		;98c0
	ld c,0f8h		;98c1
	dec b			;98c3
	rlca			;98c4
	dec c			;98c5
	add hl,bc		;98c6
	add hl,bc		;98c7
	rrca			;98c8
	add hl,bc		;98c9
	ex af,af'		;98ca
	add a,b			;98cb
	sub b			;98cc
	ld a,a			;98cd
	ccf			;98ce
	ccf			;98cf
	cp 0feh			;98d0
	inc bc			;98d2
	inc bc			;98d3
	rlca			;98d4
	cp 0feh			;98d5
	add a,b			;98d7
	add a,b			;98d8
	ret nz			;98d9
	ret nz			;98da
	ret po			;98db
	ret po			;98dc
	nop			;98dd
	rlca			;98de
	ld b,b			;98df
	add a,c			;98e0
	rrca			;98e1
	inc bc			;98e2
	call p,0f083h		;98e3
	ld b,d			;98e6
	ld (bc),a		;98e7
	inc b			;98e8
	jp p,09282h		;98e9
	jr nz,l98f4h		;98ec
	cpl			;98ee
	add a,d			;98ef
	ld b,d			;98f0
	ld (bc),a		;98f1
	ld b,0f2h		;98f2
l98f4h:
	add a,e			;98f4
	call p,0fef9h		;98f5
	inc b			;98f8
	ld sp,hl		;98f9
	inc bc			;98fa
	cp 008h			;98fb
	jp (hl)			;98fd
	rlca			;98fe
	sub h			;98ff
	rrca			;9900
	ld b,b			;9901
	add a,d			;9902
	sub b			;9903
	ld b,b			;9904
	ld b,0f0h		;9905
	add a,c			;9907
	inc b			;9908
	inc bc			;9909
	ret p			;990a
	add hl,bc		;990b
	sbc a,(hl)		;990c
	inc bc			;990d
	ld c,c			;990e
	ld b,040h		;990f
	adc a,e			;9911
l9912h:
	jp (hl)			;9912
	sub h			;9913
	rrca			;9914
	ld b,d			;9915
	jp (hl)			;9916
	sub h			;9917
	rrca			;9918
	ld b,d			;9919
	sbc a,(hl)		;991a
	sbc a,(hl)		;991b
	ld c,c			;991c
	inc bc			;991d
	inc b			;991e
	add a,l			;991f
	ret p			;9920
	ld c,a			;9921
	and e			;9922
	rst 38h			;9923
	sub h			;9924
	ld b,0e9h		;9925
	add a,c			;9927
	sub b			;9928
	inc bc			;9929
	and e			;992a
	add a,c			;992b
	ld (0f20ch),a		;992c
	ld (bc),a		;992f
	ld (de),a		;9930
	ld (bc),a		;9931
	ld (0f105h),a		;9932
	add a,e			;9935
	ld hl,03131h		;9936
	inc c			;9939
	pop af			;993a
	ex af,af'		;993b
	ret p			;993c
	add a,c			;993d
	sub b			;993e
	rlca			;993f
	ret p			;9940
	add a,c			;9941
	ld b,b			;9942
	ld (de),a		;9943
	ret p			;9944
	add a,h			;9945
	ld c,a			;9946
	rrca			;9947
	rrca			;9948
	jp (hl)			;9949
	ld b,094h		;994a
	ld (bc),a		;994c
	ld b,b			;994d
	inc bc			;994e
	jp (hl)			;994f
	inc bc			;9950
	inc b			;9951
	dec b			;9952
	sbc a,(hl)		;9953
	inc b			;9954
	ld c,c			;9955
	add a,c			;9956
	call p,0f003h		;9957
	adc a,c			;995a
	ret m			;995b
	cp 0f8h			;995c
	push af			;995e
	ld (0f0f0h),a		;995f
	ld b,b			;9962
	sub h			;9963
	dec b			;9964
	ld b,b			;9965
	ld b,0f0h		;9966
	add a,e			;9968
	sub b			;9969
	ld sp,hl		;996a
	call p,0f003h		;996b
	add a,h			;996e
	ld c,a			;996f
	ld b,b			;9970
	sub b			;9971
	sub b			;9972
	inc bc			;9973
	and e			;9974
	sub a			;9975
	ld (0fdf5h),hl		;9976
	defb 0fdh,0f8h,0feh ;illegal sequence	;9979
	cp 0f8h			;997c
	cp 0f8h			;997e
	ret m			;9980
	defb 0fdh,0f5h,0f1h ;illegal sequence	;9981
	ld (de),a		;9984
	inc hl			;9985
	inc hl			;9986
	pop af			;9987
	pop af			;9988
	jr nz,l99c4h		;9989
	xor (hl)		;998b
	add hl,sp		;998c
	inc bc			;998d
	ld b,d			;998e
	sub c			;998f
	ld bc,04090h		;9990
	ld b,b			;9993
	sub h			;9994
	sub h			;9995
	jp (hl)			;9996
	jp (hl)			;9997
	sub h			;9998
	jp (hl)			;9999
	sub h			;999a
	rrca			;999b
	ld b,d			;999c
	jp (hl)			;999d
	sub h			;999e
	rrca			;999f
	ld b,d			;99a0
	inc b			;99a1
	sub h			;99a2
	inc bc			;99a3
	ld b,b			;99a4
	ld (bc),a		;99a5
	ret p			;99a6
	add a,e			;99a7
	sub h			;99a8
	jp (hl)			;99a9
	sub h			;99aa
	inc b			;99ab
	ld b,b			;99ac
	ld (bc),a		;99ad
	ld (l9403h),a		;99ae
	adc a,b			;99b1
	ld b,b			;99b2
	ret p			;99b3
	ret p			;99b4
	sub b			;99b5
	ret po			;99b6
	sub b			;99b7
	ld b,b			;99b8
	ld b,b			;99b9
	inc bc			;99ba
	ret p			;99bb
	add a,c			;99bc
	jp (hl)			;99bd
	inc bc			;99be
	sub h			;99bf
	adc a,l			;99c0
	ret m			;99c1
	cp 0f8h			;99c2
l99c4h:
	push af			;99c4
	sub d			;99c5
	xor c			;99c6
	inc d			;99c7
	call p,0f0f0h		;99c8
	sub b			;99cb
	ret p			;99cc
	sub h			;99cd
	dec b			;99ce
	ld b,b			;99cf
	sub e			;99d0
	ret p			;99d1
	call p,04090h		;99d2
	add a,b			;99d5
	ret nc			;99d6
	ret p			;99d7
	ret p			;99d8
	call p,sub_92f4h	;99d9
	sub d			;99dc
	ld b,c			;99dd
	call p,0f0f0h		;99de
	ld b,b			;99e1
	ret p			;99e2
	ret p			;99e3
	inc bc			;99e4
	jp (hl)			;99e5
	inc bc			;99e6
	inc b			;99e7
	add a,l			;99e8
	ret po			;99e9
	ld (bc),a		;99ea
	sub e			;99eb
	jp pe,00493h		;99ec
	ld b,d			;99ef
	adc a,h			;99f0
	sub h			;99f1
	sub b			;99f2
	ld b,b			;99f3
	ld b,b			;99f4
	ret p			;99f5
	ld b,b			;99f6
	ld b,b			;99f7
	ret p			;99f8
	sub b			;99f9
	cp 0feh			;99fa
	ld sp,hl		;99fc
	rrca			;99fd
	call p,0f383h		;99fe
	sub d			;9a01
	jr nz,l9a08h		;9a02
	cpl			;9a04
	ld b,042h		;9a05
	nop			;9a07
l9a08h:
	sub l			;9a08
	ex af,af'		;9a09
	inc e			;9a0a
	sbc a,(hl)		;9a0b
	rrca			;9a0c
	add hl,bc		;9a0d
	rrca			;9a0e
	inc e			;9a0f
	inc e			;9a10
	add a,b			;9a11
	ld (hl),e		;9a12
	rrca			;9a13
	rrca			;9a14
	xor a			;9a15
	xor a			;9a16
	ret po			;9a17
	rst 38h			;9a18
	ld a,e			;9a19
	dec e			;9a1a
	call p,0ff6eh		;9a1b
	inc bc			;9a1e
	ld e,a			;9a1f
	add a,l			;9a20
	sbc a,(hl)		;9a21
	inc a			;9a22
	ld a,h			;9a23
	di			;9a24
	rst 38h			;9a25
	inc bc			;9a26
	ret pe			;9a27
	adc a,b			;9a28
	ccf			;9a29
	inc sp			;9a2a
	inc sp			;9a2b
	or e			;9a2c
	or e			;9a2d
	ld l,l			;9a2e
	ld hl,00321h		;9a2f
	ret p			;9a32
	add a,l			;9a33
	rst 38h			;9a34
	ld a,a			;9a35
	ld a,a			;9a36
	pop de			;9a37
	pop de			;9a38
	inc bc			;9a39
	ret m			;9a3a
	add a,l			;9a3b
	nop			;9a3c
	ld bc,0edffh		;9a3d
	defb 0edh ;next byte illegal after ed	;9a40
	inc bc			;9a41
	ret p			;9a42
	add a,l			;9a43
	nop			;9a44
	ret nz			;9a45
	rst 38h			;9a46
	ret p			;9a47
	rst 38h			;9a48
	ld b,087h		;9a49
	add a,a			;9a4b
	add a,c			;9a4c
	rst 38h			;9a4d
	rst 38h			;9a4e
	ld (bc),a		;9a4f
	call m,0ff82h		;9a50
	inc bc			;9a53
	ld e,b			;9a54
	adc a,b			;9a55
	inc e			;9a56
	ret po			;9a57
	rlca			;9a58
	ld b,00fh		;9a59
	rra			;9a5b
	ld e,013h		;9a5c
	inc bc			;9a5e
	ld d,h			;9a5f
	add a,c			;9a60
	rst 38h			;9a61
	inc bc			;9a62
	ld l,08ah		;9a63
	rst 38h			;9a65
	pop bc			;9a66
	add a,e			;9a67
	rlca			;9a68
	rrca			;9a69
	sbc a,c			;9a6a
	pop af			;9a6b
	ld d,c			;9a6c
	ld d,c			;9a6d
	ret p			;9a6e
	inc bc			;9a6f
	ret nz			;9a70
	adc a,(hl)		;9a71
	call m,000feh		;9a72
	call m,0ffffh		;9a75
	rra			;9a78
	inc a			;9a79
	ret p			;9a7a
	ret nz			;9a7b
	nop			;9a7c
	nop			;9a7d
	ret p			;9a7e
	ret nz			;9a7f
	add hl,bc		;9a80
	nop			;9a81
	inc bc			;9a82
	rra			;9a83
	add a,h			;9a84
	rst 38h			;9a85
	nop			;9a86
	ret p			;9a87
	ret nz			;9a88
	inc bc			;9a89
	nop			;9a8a
	sub l			;9a8b
	ret nz			;9a8c
	ret po			;9a8d
	ret p			;9a8e
	add a,b			;9a8f
	add a,b			;9a90
	rst 38h			;9a91
	ld d,d			;9a92
	rst 38h			;9a93
	rlca			;9a94
	rlca			;9a95
	nop			;9a96
	ld bc,0ffffh		;9a97
	ld c,d			;9a9a
	rst 38h			;9a9b
	ret nc			;9a9c
	ret nc			;9a9d
	nop			;9a9e
	xor a			;9a9f
	nop			;9aa0
	inc b			;9aa1
	cp 081h			;9aa2
	nop			;9aa4
	add hl,bc		;9aa5
	ld d,b			;9aa6
	ld (bc),a		;9aa7
	ld d,c			;9aa8
	sub (hl)		;9aa9
	pop af			;9aaa
	sbc a,a			;9aab
	rrca			;9aac
	rlca			;9aad
	add a,e			;9aae
	pop bc			;9aaf
	dec b			;9ab0
	add a,l			;9ab1
	push hl			;9ab2
	rst 38h			;9ab3
	ret po			;9ab4
	rst 38h			;9ab5
	ret nz			;9ab6
	ret nz			;9ab7
	ld h,c			;9ab8
	inc sp			;9ab9
	inc c			;9aba
	inc a			;9abb
	ccf			;9abc
	nop			;9abd
	ccf			;9abe
	nop			;9abf
	inc b			;9ac0
	rst 38h			;9ac1
	inc b			;9ac2
	nop			;9ac3
	add a,d			;9ac4
	ret po			;9ac5
	ld bc,00304h		;9ac6
	sbc a,d			;9ac9
	rst 38h			;9aca
	inc e			;9acb
	rst 38h			;9acc
	ret p			;9acd
	add a,0cah		;9ace
	ei			;9ad0
	ei			;9ad1
	jp m,00f9bh		;9ad2
	ld l,a			;9ad5
	xor a			;9ad6
	cp a			;9ad7
	rst 18h			;9ad8
	ld d,e			;9ad9
	ld d,e			;9ada
	ld (hl),e		;9adb
	sbc a,(hl)		;9adc
	call m,0cdcch		;9add
	call sub_84b6h		;9ae0
	add a,h			;9ae3
	inc bc			;9ae4
	ld a,087h		;9ae5
	ld sp,hl		;9ae7
	rst 20h			;9ae8
	rst 38h			;9ae9
	rrca			;9aea
	rst 38h			;9aeb
	ld d,c			;9aec
	rst 38h			;9aed
	inc b			;9aee
	ret nz			;9aef
	adc a,b			;9af0
	rst 38h			;9af1
	ld d,c			;9af2
	call m,0c0f0h		;9af3
	ret p			;9af6
	ccf			;9af7
	rst 38h			;9af8
	dec b			;9af9
	nop			;9afa
	add a,h			;9afb
	inc bc			;9afc
	add a,b			;9afd
	nop			;9afe
	ret p			;9aff
	inc b			;9b00
	nop			;9b01
	ld (bc),a		;9b02
	rst 38h			;9b03
	inc bc			;9b04
	cp 003h			;9b05
	nop			;9b07
	xor l			;9b08
	rst 38h			;9b09
	inc a			;9b0a
	jp 04242h		;9b0b
	rst 38h			;9b0e
	nop			;9b0f
	ld a,07fh		;9b10
	nop			;9b12
	add a,b			;9b13
	inc sp			;9b14
	ld h,c			;9b15
	rst 38h			;9b16
	ld bc,0e0fch		;9b17
	cp 0f8h			;9b1a
	ret nz			;9b1c
	ld bc,0feffh		;9b1d
	ret m			;9b20
	call p,0e1e2h		;9b21
	pop de			;9b24
	adc a,b			;9b25
	rst 38h			;9b26
	ld a,a			;9b27
	rra			;9b28
	cpl			;9b29
	ld b,a			;9b2a
	add a,a			;9b2b
	adc a,e			;9b2c
	ld de,0ffffh		;9b2d
	defb 0fdh,0fdh,0d8h ;illegal sequence	;9b30
	ret z			;9b33
	call nz,00484h		;9b34
	rst 38h			;9b37
	adc a,h			;9b38
	rrca			;9b39
	inc bc			;9b3a
	ld a,a			;9b3b
	ld a,0ffh		;9b3c
	rst 38h			;9b3e
	cp a			;9b3f
	cp a			;9b40
	dec de			;9b41
	inc de			;9b42
	inc hl			;9b43
	ld hl,0ff04h		;9b44
	add a,h			;9b47
	adc a,003h		;9b48
	inc bc			;9b4a
	jr c,l9b51h		;9b4b
	rst 38h			;9b4d
	add a,h			;9b4e
	ret p			;9b4f
	ret nz			;9b50
l9b51h:
	ld a,a			;9b51
	ret p			;9b52
	inc b			;9b53
	rst 38h			;9b54
	add a,h			;9b55
	rst 30h			;9b56
	rst 8			;9b57
	rra			;9b58
	inc c			;9b59
	dec b			;9b5a
	rst 38h			;9b5b
	add a,e			;9b5c
	call m,000e0h		;9b5d
	inc bc			;9b60
	rst 38h			;9b61
	adc a,l			;9b62
	ei			;9b63
	rst 20h			;9b64
	rst 0			;9b65
	add a,b			;9b66
	rra			;9b67
	rst 38h			;9b68
	rst 38h			;9b69
	jp (hl)			;9b6a
	add a,c			;9b6b
	ld a,(hl)		;9b6c
	ld a,(hl)		;9b6d
	add a,e			;9b6e
	ld a,b			;9b6f
	inc b			;9b70
	rst 38h			;9b71
	adc a,d			;9b72
	call m,0c0f0h		;9b73
	call m,0ffffh		;9b76
	ld sp,hl		;9b79
	sbc a,0deh		;9b7a
	ld sp,hl		;9b7c
	inc b			;9b7d
	rst 38h			;9b7e
	add a,h			;9b7f
	sbc a,a			;9b80
	ld a,e			;9b81
	ld a,e			;9b82
	sbc a,a			;9b83
	ex af,af'		;9b84
	rst 38h			;9b85
	add a,h			;9b86
	add a,c			;9b87
	push de			;9b88
	rst 38h			;9b89
	cp 003h			;9b8a
	call m,0fe03h		;9b8c
	dec b			;9b8f
	rst 38h			;9b90
	add a,e			;9b91
	call m,0c0f0h		;9b92
	dec b			;9b95
	rst 38h			;9b96
	adc a,h			;9b97
	ccf			;9b98
	rrca			;9b99
	inc bc			;9b9a
	add a,b			;9b9b
	add a,b			;9b9c
	ld bc,00301h		;9b9d
	inc bc			;9ba0
	rlca			;9ba1
	rlca			;9ba2
	nop			;9ba3
	inc bc			;9ba4
	ret p			;9ba5
	ld (bc),a		;9ba6
	ret po			;9ba7
	ld (bc),a		;9ba8
	ret nz			;9ba9
	ld (bc),a		;9baa
	nop			;9bab
	inc bc			;9bac
	rst 38h			;9bad
	sbc a,h			;9bae
	ret nz			;9baf
	sbc a,a			;9bb0
	xor b			;9bb1
	ld sp,hl		;9bb2
	ret m			;9bb3
	ret m			;9bb4
	call m,000fch		;9bb5
	or a			;9bb8
	scf			;9bb9
	rst 38h			;9bba
	call m,0c0f0h		;9bbb
	call m,0c0f0h		;9bbe
	call m,03fffh		;9bc1
	rrca			;9bc4
	inc bc			;9bc5
	ld a,00eh		;9bc6
	ld (bc),a		;9bc8
	ld a,000h		;9bc9
	inc bc			;9bcb
	ret p			;9bcc
	ld (bc),a		;9bcd
	rlca			;9bce
	inc bc			;9bcf
	inc bc			;9bd0
	add a,c			;9bd1
	defb 0fdh,005h,0f8h ;illegal sequence	;9bd2
	add a,c			;9bd5
	ld e,b			;9bd6
	nop			;9bd7
	ld (bc),a		;9bd8
	jp (hl)			;9bd9
	ld (bc),a		;9bda
	sub h			;9bdb
	ld (bc),a		;9bdc
	call p,0e481h		;9bdd
	inc bc			;9be0
	sub h			;9be1
	sub b			;9be2
	sub b			;9be3
	rrca			;9be4
	ret m			;9be5
	dec e			;9be6
	ld hl,0f3f3h		;9be7
	jp p,0f6f1h		;9bea
	or 0a3h			;9bed
	ld (0f321h),a		;9bef
	jp p,0f103h		;9bf2
	adc a,e			;9bf5
	ld (01f21h),a		;9bf6
	ret m			;9bf9
	ret m			;9bfa
	defb 0fdh,0fdh,0f5h ;illegal sequence	;9bfb
	cp 0f8h			;9bfe
	push af			;9c00
	inc bc			;9c01
	ret pe			;9c02
	ld (bc),a		;9c03
	push de			;9c04
	add a,e			;9c05
	rst 38h			;9c06
	ret c			;9c07
	rst 38h			;9c08
	inc b			;9c09
	push de			;9c0a
	ld (bc),a		;9c0b
	push af			;9c0c
	add a,d			;9c0d
	push de			;9c0e
	rst 38h			;9c0f
	inc bc			;9c10
	ret c			;9c11
	dec b			;9c12
	push af			;9c13
	dec b			;9c14
	ret c			;9c15
	sbc a,e			;9c16
	ld e,l			;9c17
	push af			;9c18
	push af			;9c19
	sub h			;9c1a
	sub h			;9c1b
	ret p			;9c1c
	defb 0fdh,0fdh,032h ;illegal sequence	;9c1d
	and e			;9c20
	rst 38h			;9c21
	sub h			;9c22
	ld b,b			;9c23
	call p,sub_90e4h	;9c24
	sub b			;9c27
	ld b,b			;9c28
	ret p			;9c29
	ld sp,hl		;9c2a
	call p,0f0f0h		;9c2b
	ret c			;9c2e
	rst 38h			;9c2f
	inc b			;9c30
	inc b			;9c31
	inc b			;9c32
	ld sp,hl		;9c33
	adc a,e			;9c34
	defb 0fdh,0feh,0f8h ;illegal sequence	;9c35
	jp (iy)			;9c38
	jp (hl)			;9c3a
	nop			;9c3b
	ld (hl),010h		;9c3c
	jp (hl)			;9c3e
	jp (hl)			;9c3f
	inc bc			;9c40
	sub h			;9c41
	add a,c			;9c42
	sub b			;9c43
	rrca			;9c44
	sub h			;9c45
	inc bc			;9c46
	sbc a,(hl)		;9c47
	add a,e			;9c48
	add hl,bc		;9c49
	call p,004f4h		;9c4a
	sub h			;9c4d
	inc b			;9c4e
	ret p			;9c4f
	add a,c			;9c50
	jp p,0f104h		;9c51
	add a,e			;9c54
	ld (02121h),a		;9c55
	dec b			;9c58
	pop af			;9c59
	add a,c			;9c5a
	ld hl,01f04h		;9c5b
	sub d			;9c5e
	jp (hl)			;9c5f
	sub b			;9c60
	ld b,b			;9c61
	rrca			;9c62
	rrca			;9c63
	pop af			;9c64
	jp p,0faf3h		;9c65
	jp m,0f2f3h		;9c68
	jp p,0f8f1h		;9c6b
	defb 0fdh,0f5h,0feh ;illegal sequence	;9c6e
	dec b			;9c71
	ld sp,hl		;9c72
	add a,(hl)		;9c73
	call p,0f0f0h		;9c74
	cp 0feh			;9c77
	ld sp,hl		;9c79
	inc bc			;9c7a
	call p,0f984h		;9c7b
	jp (hl)			;9c7e
	sub h			;9c7f
	sub h			;9c80
	dec bc			;9c81
	ld b,b			;9c82
	adc a,l			;9c83
	call p,0f9feh		;9c84
	ld sp,hl		;9c87
	ret p			;9c88
	ret p			;9c89
	call po,0fefeh		;9c8a
	ret m			;9c8d
	defb 0fdh,0f8h,0f8h ;illegal sequence	;9c8e
	inc bc			;9c91
	cp 082h			;9c92
	ret m			;9c94
	defb 0fdh,003h,0f8h ;illegal sequence	;9c95
	add a,c			;9c98
	cp 004h			;9c99
	ret m			;9c9b
	add a,h			;9c9c
	defb 0fdh,0f5h,0feh ;illegal sequence	;9c9d
	ret m			;9ca0
	dec bc			;9ca1
	push af			;9ca2
	ld (bc),a		;9ca3
	cp 083h			;9ca4
	ld sp,hl		;9ca6
	call p,003f4h		;9ca7
	cp 083h			;9caa
	ret p			;9cac
	and e			;9cad
	ld h,e			;9cae
	inc bc			;9caf
	jp (hl)			;9cb0
	inc b			;9cb1
	sbc a,a			;9cb2
	ld (bc),a		;9cb3
	cp 002h			;9cb4
	jp (hl)			;9cb6
	inc b			;9cb7
	sbc a,a			;9cb8
	ld (bc),a		;9cb9
	rst 28h			;9cba
	ld b,09fh		;9cbb
	inc bc			;9cbd
	cp 003h			;9cbe
	ld sp,hl		;9cc0
	add a,l			;9cc1
	jp (hl)			;9cc2
	sub h			;9cc3
	sub h			;9cc4
	call po,003feh		;9cc5
	ld sp,hl		;9cc8
	ld (bc),a		;9cc9
	sub h			;9cca
	inc bc			;9ccb
	ld b,b			;9ccc
	ld (bc),a		;9ccd
	ret p			;9cce
	add a,c			;9ccf
	cp 003h			;9cd0
	ret m			;9cd2
	ld (bc),a		;9cd3
	defb 0fdh,002h,0f5h ;illegal sequence	;9cd4
	add a,c			;9cd7
	cp 003h			;9cd8
	ret m			;9cda
	ld (bc),a		;9cdb
	defb 0fdh,003h,0f5h ;illegal sequence	;9cdc
	add a,l			;9cdf
	cp 0f8h			;9ce0
	ret m			;9ce2
	defb 0fdh,0fdh,007h ;illegal sequence	;9ce3
	push af			;9ce6
	add a,c			;9ce7
	ret c			;9ce8
	inc bc			;9ce9
	push af			;9cea
	add a,l			;9ceb
	cp 0f8h			;9cec
	ret m			;9cee
	defb 0fdh,0fdh,006h ;illegal sequence	;9cef
	push af			;9cf2
	add a,e			;9cf3
	push de			;9cf4
	ld e,a			;9cf5
	push de			;9cf6
	ld b,0f8h		;9cf7
	add a,d			;9cf9
	ret pe			;9cfa
	ret c			;9cfb
	rlca			;9cfc
	ret m			;9cfd
	ld b,0fdh		;9cfe
	rlca			;9d00
	cp 083h			;9d01
	ret m			;9d03
	defb 0fdh,0f5h,003h ;illegal sequence	;9d04
	cp 086h			;9d07
	ret m			;9d09
	defb 0fdh,0fdh,015h ;illegal sequence	;9d0a
	sub 0e8h		;9d0d
	dec b			;9d0f
	di			;9d10
	ld (bc),a		;9d11
	cp 081h			;9d12
	jp (hl)			;9d14
	inc bc			;9d15
	jp m,03182h		;9d16
	ld h,c			;9d19
	dec b			;9d1a
	or 083h			;9d1b
	jp m,06131h		;9d1d
	add hl,bc		;9d20
	or 085h			;9d21
	ld sp,hl		;9d23
	ret po			;9d24
	ret p			;9d25
	ret p			;9d26
	cp 015h			;9d27
	ld sp,hl		;9d29
	add a,e			;9d2a
	di			;9d2b
	ld a,(00643h)		;9d2c
	ld b,d			;9d2f
	add a,(hl)		;9d30
	and e			;9d31
	ld a,(de)		;9d32
	di			;9d33
	jp p,l92f2h		;9d34
	dec b			;9d37
	ld bc,0f503h		;9d38
	add a,h			;9d3b
	ret p			;9d3c
	ld b,b			;9d3d
	sub b			;9d3e
	sub b			;9d3f
	dec b			;9d40
	ld b,b			;9d41
	inc b			;9d42
	ld sp,hl		;9d43
	inc bc			;9d44
	sub h			;9d45
	add a,c			;9d46
	ld b,b			;9d47
	inc b			;9d48
	ld sp,hl		;9d49
	inc bc			;9d4a
	sub h			;9d4b
	sub c			;9d4c
	ld b,b			;9d4d
	ld (0a132h),a		;9d4e
	ccf			;9d51
	jp p,042f2h		;9d52
	ld (bc),a		;9d55
	add hl,bc		;9d56
	add hl,bc		;9d57
	ld sp,0a1a1h		;9d58
	ld hl,0f1f1h		;9d5b
	nop			;9d5e
	inc b			;9d5f
	rst 38h			;9d60
	ld (bc),a		;9d61
	ld a,a			;9d62
	dec b			;9d63
	rst 38h			;9d64
	add a,c			;9d65
	rlca			;9d66
	inc bc			;9d67
	ld a,a			;9d68
	dec b			;9d69
	and h			;9d6a
	inc bc			;9d6b
	ld a,a			;9d6c
	add a,c			;9d6d
	ld (hl),b		;9d6e
	nop			;9d6f
	dec b			;9d70
	ld sp,hl		;9d71
	ld b,0f4h		;9d72
	adc a,l			;9d74
	ld sp,hl		;9d75
	sub h			;9d76
	ld b,b			;9d77
	rrca			;9d78
	sub c			;9d79
	sub d			;9d7a
	ld c,d			;9d7b
	inc bc			;9d7c
	ld bc,04090h		;9d7d
	rrca			;9d80
	rrca			;9d81
	nop			;9d82
	ld (bc),a		;9d83
	cp 002h			;9d84
	call m,0f802h		;9d86
	ld (bc),a		;9d89
	ret p			;9d8a
	inc bc			;9d8b
	ret po			;9d8c
	add a,h			;9d8d
	ret p			;9d8e
	ret po			;9d8f
	ret po			;9d90
	rst 38h			;9d91
	inc bc			;9d92
	ret m			;9d93
	rlca			;9d94
	ret po			;9d95
	rlca			;9d96
	add a,b			;9d97
	add a,d			;9d98
	ret p			;9d99
	nop			;9d9a
	inc b			;9d9b
	call m,00006h		;9d9c
	sub h			;9d9f
	ld bc,00300h		;9da0
	inc bc			;9da3
	ld a,a			;9da4
	rlca			;9da5
	or 0f6h			;9da6
	call pe,0f80ch		;9da8
	ret m			;9dab
	ret p			;9dac
	ret p			;9dad
	ret po			;9dae
	ret po			;9daf
	ret nz			;9db0
	ret nz			;9db1
	add a,b			;9db2
	add a,b			;9db3
	ex af,af'		;9db4
	nop			;9db5
	ld (bc),a		;9db6
	cp 081h			;9db7
	add a,003h		;9db9
	sub 085h		;9dbb
	add a,0feh		;9dbd
	ret po			;9dbf
	ret po			;9dc0
	ret nz			;9dc1
	inc bc			;9dc2
	ret po			;9dc3
	add a,c			;9dc4
	ld a,a			;9dc5
	inc bc			;9dc6
	nop			;9dc7
	adc a,(hl)		;9dc8
	ret po			;9dc9
	ld h,b			;9dca
	ret nz			;9dcb
	add a,b			;9dcc
	nop			;9dcd
	nop			;9dce
	cp 0feh			;9dcf
	ccf			;9dd1
	add a,b			;9dd2
	ld bc,0f001h		;9dd3
	ret p			;9dd6
	inc b			;9dd7
	rst 38h			;9dd8
	inc b			;9dd9
	nop			;9dda
	ld (bc),a		;9ddb
	rst 38h			;9ddc
	add a,(hl)		;9ddd
	rrca			;9dde
	sbc a,a			;9ddf
	inc (hl)		;9de0
	ld c,h			;9de1
	ld h,h			;9de2
	exx			;9de3
	ld b,0e7h		;9de4
	adc a,(hl)		;9de6
	ld a,a			;9de7
	ccf			;9de8
	ld (01913h),a		;9de9
	ld c,0f0h		;9dec
	nop			;9dee
	ret p			;9def
	rst 38h			;9df0
	ccf			;9df1
	ld a,a			;9df2
	ld a,b			;9df3
	rlca			;9df4
	inc bc			;9df5
	inc b			;9df6
	add a,c			;9df7
	call m,sub_8006h	;9df8
	add a,(hl)		;9dfb
	nop			;9dfc
	ccf			;9dfd
	rst 38h			;9dfe
	nop			;9dff
	nop			;9e00
	rst 38h			;9e01
	inc bc			;9e02
	ld h,(hl)		;9e03
	inc b			;9e04
	nop			;9e05
	add a,l			;9e06
	rst 38h			;9e07
	ld l,(hl)		;9e08
	ld l,(hl)		;9e09
	nop			;9e0a
	nop			;9e0b
	inc bc			;9e0c
	rst 38h			;9e0d
	rlca			;9e0e
	nop			;9e0f
	add a,c			;9e10
	rst 38h			;9e11
	inc bc			;9e12
	ld a,(hl)		;9e13
	ld (bc),a		;9e14
	nop			;9e15
	inc bc			;9e16
	rst 38h			;9e17
	ld (bc),a		;9e18
	nop			;9e19
	add a,h			;9e1a
	sbc a,h			;9e1b
	sub h			;9e1c
	sub h			;9e1d
	sbc a,h			;9e1e
	inc bc			;9e1f
	nop			;9e20
	dec b			;9e21
	rst 38h			;9e22
	ld b,080h		;9e23
	adc a,d			;9e25
	rst 38h			;9e26
	ld a,a			;9e27
	ld a,a			;9e28
	ccf			;9e29
	ccf			;9e2a
	rra			;9e2b
	rst 38h			;9e2c
	ret po			;9e2d
	rst 38h			;9e2e
	rst 38h			;9e2f
	inc b			;9e30
	inc h			;9e31
	ld (bc),a		;9e32
	rst 38h			;9e33
	ld (bc),a		;9e34
	nop			;9e35
	add a,a			;9e36
	cp 0fch			;9e37
	ret m			;9e39
	ret p			;9e3a
	ret po			;9e3b
	ret nz			;9e3c
	ret nz			;9e3d
	nop			;9e3e
	ld a,(bc)		;9e3f
	ld sp,hl		;9e40
	adc a,c			;9e41
	ret p			;9e42
	jp m,0f0f3h		;9e43
	sub h			;9e46
	sub h			;9e47
	add hl,bc		;9e48
	inc b			;9e49
	jp (hl)			;9e4a
	inc bc			;9e4b
	sub h			;9e4c
	add a,h			;9e4d
	ld c,a			;9e4e
	nop			;9e4f
	nop			;9e50
	jp (hl)			;9e51
	dec b			;9e52
	sub h			;9e53
	add a,h			;9e54
	nop			;9e55
	sub h			;9e56
	sub h			;9e57
	sub b			;9e58
	inc b			;9e59
	ld c,a			;9e5a
	dec bc			;9e5b
	sub b			;9e5c
	ld d,094h		;9e5d
	dec bc			;9e5f
	ld b,b			;9e60
	add a,e			;9e61
	jp (hl)			;9e62
	sub h			;9e63
	sub h			;9e64
	dec b			;9e65
	ret p			;9e66
	rlca			;9e67
	ld b,b			;9e68
	add a,l			;9e69
	ret p			;9e6a
	and e			;9e6b
	or 04fh			;9e6c
	sub h			;9e6e
	ex af,af'		;9e6f
	ld b,b			;9e70
	ld (bc),a		;9e71
	adc a,a			;9e72
	ld (bc),a		;9e73
	ret pe			;9e74
	sub b			;9e75
	add a,l			;9e76
	defb 0fdh,0d6h,0d3h ;illegal sequence	;9e77
	and l			;9e7a
	add a,e			;9e7b
	jp pe,l83eah		;9e7c
	jp nc,0d3d1h		;9e7f
	jp c,0d653h		;9e82
	add a,c			;9e85
	inc bc			;9e86
	add a,l			;9e87
	ld (bc),a		;9e88
	push af			;9e89
	add a,h			;9e8a
	out (0d6h),a		;9e8b
	ret c			;9e8d
	add a,l			;9e8e
	inc bc			;9e8f
	push de			;9e90
	adc a,c			;9e91
	push af			;9e92
	ld sp,hl		;9e93
	cp 0feh			;9e94
	ld sp,hl		;9e96
	call p,0d8f0h		;9e97
	ret c			;9e9a
	inc b			;9e9b
	sbc a,(hl)		;9e9c
	add a,d			;9e9d
	call po,00694h		;9e9e
	inc b			;9ea1
	add a,l			;9ea2
	ret po			;9ea3
	ld b,b			;9ea4
	ld b,b			;9ea5
	sbc a,a			;9ea6
	sbc a,a			;9ea7
	inc bc			;9ea8
	jp (hl)			;9ea9
	rlca			;9eaa
	inc b			;9eab
	add a,(hl)		;9eac
	ret po			;9ead
	sub b			;9eae
	ld b,b			;9eaf
	ld b,b			;9eb0
	sbc a,a			;9eb1
	sbc a,a			;9eb2
	inc bc			;9eb3
	jp (hl)			;9eb4
	dec bc			;9eb5
	inc b			;9eb6
	inc bc			;9eb7
	call p,05402h		;9eb8
	ld a,(bc)		;9ebb
	ret p			;9ebc
	add a,c			;9ebd
	ld b,b			;9ebe
	inc bc			;9ebf
	pop af			;9ec0
	add a,h			;9ec1
	or 0f3h			;9ec2
	or 0f6h			;9ec4
	inc bc			;9ec6
	rrca			;9ec7
	add a,c			;9ec8
	call p,0f906h		;9ec9
	nop			;9ecc
	adc a,d			;9ecd
	nop			;9ece
	ret p			;9ecf
	ret po			;9ed0
	ret po			;9ed1
	ret nz			;9ed2
	ret nz			;9ed3
	add a,b			;9ed4
	add a,b			;9ed5
	rst 38h			;9ed6
	rst 38h			;9ed7
	ld b,000h		;9ed8
	nop			;9eda
	ld (bc),a		;9edb
	ld b,b			;9edc
	ld b,094h		;9edd
	ex af,af'		;9edf
	inc b			;9ee0
	nop			;9ee1
	adc a,e			;9ee2
	cp 0f8h			;9ee3
	ret p			;9ee5
	ret p			;9ee6
	rst 38h			;9ee7
	ret m			;9ee8
	ret m			;9ee9
	call m,0fefch		;9eea
	cp 005h			;9eed
	rst 38h			;9eef
	add a,l			;9ef0
	cp 0c0h			;9ef1
	ret p			;9ef3
	ret m			;9ef4
	call m,0fe03h		;9ef5
	nop			;9ef8
	adc a,d			;9ef9
	ret m			;9efa
	cp 0f8h			;9efb
	push af			;9efd
	push af			;9efe
	or 0f3h			;9eff
	jp m,0f6f3h		;9f01
	ld b,0f1h		;9f04
	add a,c			;9f06
	ld b,b			;9f07
	inc b			;9f08
	call p,0f083h		;9f09
	ld sp,hl		;9f0c
	ret p			;9f0d
	nop			;9f0e
	ld (bc),a		;9f0f
	rst 38h			;9f10
	add a,e			;9f11
	add a,b			;9f12
	ret nz			;9f13
	ret po			;9f14
	inc bc			;9f15
	rrca			;9f16
	nop			;9f17
	ld (bc),a		;9f18
	ld bc,04003h		;9f19
	add a,e			;9f1c
	ret p			;9f1d
	ld c,c			;9f1e
	ret p			;9f1f
	nop			;9f20
	dec b			;9f21
	rst 38h			;9f22
	add a,e			;9f23
	call m,0c0f0h		;9f24
	nop			;9f27
	dec b			;9f28
	push af			;9f29
	inc bc			;9f2a
	ld sp,hl		;9f2b
	nop			;9f2c
	add a,d			;9f2d
	rrca			;9f2e
	nop			;9f2f
	inc b			;9f30
	ccf			;9f31
	ld (bc),a		;9f32
	nop			;9f33
	ld (bc),a		;9f34
	ret po			;9f35
	ld b,007h		;9f36
	nop			;9f38
	ld (bc),a		;9f39
	sub h			;9f3a
	add a,c			;9f3b
	sub b			;9f3c
	inc b			;9f3d
	ld c,a			;9f3e
	ld (bc),a		;9f3f
	sub b			;9f40
	add a,d			;9f41
	ld b,b			;9f42
	jp (hl)			;9f43
	inc bc			;9f44
	sub h			;9f45
	add a,d			;9f46
	ld c,a			;9f47
	nop			;9f48
	nop			;9f49
	ld (bc),a		;9f4a
	nop			;9f4b
	add a,(hl)		;9f4c
	rlca			;9f4d
	ld b,003h		;9f4e
	ld bc,00000h		;9f50
	nop			;9f53
	inc bc			;9f54
	ret p			;9f55
	dec b			;9f56
	ld b,b			;9f57
	nop			;9f58
	ld (bc),a		;9f59
	ld a,a			;9f5a
	add a,(hl)		;9f5b
	call m,sub_8001h	;9f5c
	add a,b			;9f5f
	rrca			;9f60
	rrca			;9f61
	nop			;9f62
	ld (bc),a		;9f63
	ld b,b			;9f64
	add a,(hl)		;9f65
	ret p			;9f66
	and e			;9f67
	or 04fh			;9f68
	sub h			;9f6a
	ld b,b			;9f6b
	nop			;9f6c
	add a,l			;9f6d
	ld bc,0031fh		;9f6e
	rra			;9f71
	inc bc			;9f72
	inc bc			;9f73
	ld bc,00088h		;9f74
	ccf			;9f77
	rrca			;9f78
	rlca			;9f79
	inc bc			;9f7a
	ld bc,01f3fh		;9f7b
	nop			;9f7e
	add a,e			;9f7f
	ld sp,hl		;9f80
	sub h			;9f81
	sub h			;9f82
	inc b			;9f83
	ld b,b			;9f84
	ld (bc),a		;9f85
	ld c,a			;9f86
	add a,a			;9f87
	ld sp,hl		;9f88
	cp 0feh			;9f89
	ld sp,hl		;9f8b
	ld sp,hl		;9f8c
	sub h			;9f8d
	sub h			;9f8e
	nop			;9f8f
	inc bc			;9f90
	rlca			;9f91
	add a,l			;9f92
	rrca			;9f93
	rlca			;9f94
	rlca			;9f95
	rst 38h			;9f96
	rra			;9f97
	dec b			;9f98
	rst 38h			;9f99
	add a,e			;9f9a
	ccf			;9f9b
	rrca			;9f9c
	inc bc			;9f9d
	nop			;9f9e
	ld (bc),a		;9f9f
	ld sp,hl		;9fa0
	add a,(hl)		;9fa1
	ret p			;9fa2
	jp m,0f0f3h		;9fa3
	sub h			;9fa6
	sub h			;9fa7
	ex af,af'		;9fa8
	ld sp,hl		;9fa9
	nop			;9faa
	ld (bc),a		;9fab
	ld a,a			;9fac
	ld (bc),a		;9fad
	ccf			;9fae
	ld (bc),a		;9faf
	rra			;9fb0
	ld (bc),a		;9fb1
	rrca			;9fb2
	nop			;9fb3
	ex af,af'		;9fb4
	ld sp,hl		;9fb5
	nop			;9fb6
	sub b			;9fb7
	nop			;9fb8
	rrca			;9fb9
	rlca			;9fba
	rlca			;9fbb
	inc bc			;9fbc
	inc bc			;9fbd
	ld bc,00f01h		;9fbe
	rrca			;9fc1
	rlca			;9fc2
	rlca			;9fc3
	inc bc			;9fc4
	inc bc			;9fc5
	ld bc,00401h		;9fc6
	nop			;9fc9
	adc a,h			;9fca
	add a,b			;9fcb
	nop			;9fcc
	ret nz			;9fcd
	ret nz			;9fce
	cp 0e0h			;9fcf
	ld l,a			;9fd1
	ld l,a			;9fd2
	scf			;9fd3
	jr nc,l9ff5h		;9fd4
	rra			;9fd6
	inc bc			;9fd7
	rst 38h			;9fd8
	inc b			;9fd9
	nop			;9fda
	adc a,e			;9fdb
	rst 38h			;9fdc
	nop			;9fdd
	ret p			;9fde
	ret po			;9fdf
	ret po			;9fe0
	ret nz			;9fe1
	ret nz			;9fe2
	add a,b			;9fe3
	add a,b			;9fe4
	rst 38h			;9fe5
	rst 38h			;9fe6
	ld b,000h		;9fe7
	ld (bc),a		;9fe9
	ret m			;9fea
	add a,e			;9feb
	rst 38h			;9fec
	inc bc			;9fed
	rlca			;9fee
	inc bc			;9fef
	ret p			;9ff0
	ld (bc),a		;9ff1
	ld bc,00398h		;9ff2
l9ff5h:
	rlca			;9ff5
	rrca			;9ff6
	ld a,a			;9ff7
	rst 38h			;9ff8
	ld a,a			;9ff9
	ld a,a			;9ffa
	inc bc			;9ffb
	call m,030fch		;9ffc
	defb 030h		;9fff
