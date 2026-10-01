; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank15_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank15.bin

	org 08000h

l8000h:
	rst 20h			;8000
sub_8001h:
	rst 20h			;8001
	inc a			;8002
	nop			;8003
	jp 0f00fh		;8004
	ret m			;8007
	inc c			;8008
	inc c			;8009
	rlca			;800a
	rlca			;800b
	inc b			;800c
	rst 38h			;800d
	adc a,(hl)		;800e
	ret p			;800f
	or 004h			;8010
	inc e			;8012
	inc e			;8013
	ld e,0fch		;8014
	inc c			;8016
	inc bc			;8017
	rrca			;8018
	rlca			;8019
	ret p			;801a
	rrca			;801b
	rrca			;801c
	inc bc			;801d
	rst 38h			;801e
	adc a,l			;801f
	nop			;8020
	call m,0c183h		;8021
	pop af			;8024
	rrca			;8025
l8026h:
	nop			;8026
	ld a,a			;8027
	ccf			;8028
	sbc a,a			;8029
	adc a,0e6h		;802a
	ret p			;802c
	inc b			;802d
	nop			;802e
	ld (bc),a		;802f
	ld b,002h		;8030
	add a,e			;8032
	adc a,c			;8033
	pop bc			;8034
	ld c,00fh		;8035
	nop			;8037
	rra			;8038
	rra			;8039
	rst 38h			;803a
	ret nz			;803b
	ret po			;803c
	inc bc			;803d
	rrca			;803e
	ld (bc),a		;803f
	add a,b			;8040
	sbc a,b			;8041
	ret nz			;8042
	ret po			;8043
l8044h:
	ret p			;8044
	cp 0ffh			;8045
	cp 0feh			;8047
	ret nz			;8049
	ccf			;804a
	ccf			;804b
	inc c			;804c
	inc c			;804d
	rst 20h			;804e
	rst 20h			;804f
	inc a			;8050
	nop			;8051
	jp 00ff0h		;8052
	rra			;8055
	jr nc,$+50		;8056
	ret po			;8058
	ret po			;8059
	inc b			;805a
	rst 38h			;805b
	adc a,(hl)		;805c
	rrca			;805d
	ld l,a			;805e
	jr nz,l8099h		;805f
	jr c,$+122		;8061
	ccf			;8063
	jr nc,l8026h		;8064
	ret p			;8066
	ret po			;8067
	rrca			;8068
	ret p			;8069
	ret p			;806a
	inc bc			;806b
	rst 38h			;806c
	adc a,l			;806d
	nop			;806e
	ccf			;806f
	pop bc			;8070
	add a,e			;8071
	adc a,a			;8072
	ret p			;8073
	nop			;8074
	cp 0fch			;8075
	ld sp,hl		;8077
	ld (hl),e		;8078
	ld h,a			;8079
	rrca			;807a
	inc b			;807b
	nop			;807c
	ld (bc),a		;807d
	ld h,b			;807e
	ld (bc),a		;807f
l8080h:
	pop bc			;8080
	adc a,(hl)		;8081
	add a,e			;8082
	ld (hl),b		;8083
	ret p			;8084
	nop			;8085
	nop			;8086
	ld bc,00703h		;8087
	rrca			;808a
	rra			;808b
	ccf			;808c
	ld a,a			;808d
	rrca			;808e
	nop			;808f
	inc b			;8090
	ccf			;8091
	ld (bc),a		;8092
	nop			;8093
	ld (bc),a		;8094
	ret po			;8095
	rlca			;8096
	rlca			;8097
	sbc a,d			;8098
l8099h:
	inc bc			;8099
	ccf			;809a
	rrca			;809b
	inc bc			;809c
	ld bc,0c001h		;809d
	ld bc,0c001h		;80a0
	ld a,a			;80a3
	ld a,a			;80a4
	jp 000feh		;80a5
	ld bc,00001h		;80a8
	ld a,a			;80ab
	nop			;80ac
	add a,b			;80ad
	add a,a			;80ae
	cp 07fh			;80af
	ccf			;80b1
	ccf			;80b2
	inc bc			;80b3
	rra			;80b4
	and l			;80b5
	rlca			;80b6
	inc bc			;80b7
	inc c			;80b8
	inc c			;80b9
	ld sp,hl		;80ba
	ld sp,hl		;80bb
	add a,e			;80bc
	add a,e			;80bd
	rlca			;80be
	inc bc			;80bf
	inc bc			;80c0
	ret nz			;80c1
	call m,0c0f0h		;80c2
	add a,b			;80c5
	add a,b			;80c6
	inc bc			;80c7
	add a,b			;80c8
	add a,b			;80c9
	inc bc			;80ca
	cp 0feh			;80cb
	jp 0007fh		;80cd
	add a,b			;80d0
	add a,b			;80d1
	nop			;80d2
	cp 000h			;80d3
	ld bc,07fe1h		;80d5
	cp 0fch			;80d8
	call m,0f803h		;80da
	sub d			;80dd
	ret po			;80de
	ret nz			;80df
	jr nc,l8112h		;80e0
	sbc a,a			;80e2
	sbc a,a			;80e3
	pop bc			;80e4
	pop bc			;80e5
	ret po			;80e6
	ret nz			;80e7
	ret nz			;80e8
	rra			;80e9
	adc a,a			;80ea
	ld a,(hl)		;80eb
	defb 0fdh,0fbh,00fh ;illegal sequence	;80ec
	ld l,a			;80ef
	inc bc			;80f0
	rst 38h			;80f1
	sub l			;80f2
	ccf			;80f3
	rra			;80f4
	rra			;80f5
	scf			;80f6
	ld h,d			;80f7
sub_80f8h:
	rst 38h			;80f8
	ld sp,iy		;80f9
	ld sp,hl		;80fb
	di			;80fc
	rst 8			;80fd
	add a,e			;80fe
sub_80ffh:
	ld bc,00000h		;80ff
	rlca			;8102
	ld b,003h		;8103
	ld bc,00000h		;8105
	inc bc			;8108
	ret m			;8109
	ld (bc),a		;810a
	ret p			;810b
	ld b,0e0h		;810c
	ld (bc),a		;810e
	rrca			;810f
	inc bc			;8110
	rlca			;8111
l8112h:
	adc a,(hl)		;8112
	rst 38h			;8113
	ld a,a			;8114
	ccf			;8115
	rra			;8116
	rrca			;8117
	rlca			;8118
	inc bc			;8119
	inc bc			;811a
	cp 0feh			;811b
	call m,0f8fch		;811d
	rst 38h			;8120
	inc b			;8121
	rlca			;8122
	add a,c			;8123
	inc bc			;8124
	inc bc			;8125
	rlca			;8126
	add a,c			;8127
	cp 003h			;8128
	nop			;812a
	add a,(hl)		;812b
	rst 38h			;812c
	nop			;812d
	nop			;812e
	rst 38h			;812f
	rst 38h			;8130
	nop			;8131
	ld b,066h		;8132
	sub d			;8134
	rst 38h			;8135
	nop			;8136
	ld a,a			;8137
	ld a,a			;8138
	call m,sub_8001h	;8139
	add a,b			;813c
	rrca			;813d
	rrca			;813e
	rst 30h			;813f
	rst 30h			;8140
	or e			;8141
	or e			;8142
	cp c			;8143
	sbc a,b			;8144
	cp l			;8145
	add a,003h		;8146
	rst 38h			;8148
	adc a,l			;8149
	call m,0f8f8h		;814a
	call pe,0fc46h		;814d
	ret m			;8150
	pop af			;8151
	ld a,(hl)		;8152
	cp a			;8153
	rst 18h			;8154
	ret p			;8155
	or 000h			;8156
	ld (bc),a		;8158
	ld b,b			;8159
	ld c,094h		;815a
	ld a,(bc)		;815c
	sub b			;815d
	inc c			;815e
	sub h			;815f
	inc bc			;8160
	sub b			;8161
	add a,c			;8162
	ld b,b			;8163
	ld b,094h		;8164
	ex af,af'		;8166
	inc b			;8167
	adc a,h			;8168
	pop af			;8169
	rrca			;816a
	rrca			;816b
	ld b,b			;816c
	ld b,b			;816d
	ret p			;816e
	ld c,c			;816f
	ret p			;8170
	ld sp,hl		;8171
	cp 0f9h			;8172
	call p,0f003h		;8174
	adc a,c			;8177
	pop af			;8178
	sub h			;8179
	jp (hl)			;817a
	jp (hl)			;817b
	sub h			;817c
	sub h			;817d
	sub b			;817e
	ld sp,hl		;817f
	add hl,de		;8180
	inc bc			;8181
	sub h			;8182
	ld (bc),a		;8183
	jp (hl)			;8184
	add a,h			;8185
	sub h			;8186
	sub b			;8187
	sbc a,a			;8188
	ld b,b			;8189
	inc b			;818a
	sub h			;818b
	ld (bc),a		;818c
	jp (hl)			;818d
	ld (bc),a		;818e
	sub b			;818f
l8190h:
	inc bc			;8190
	sub h			;8191
	ld (bc),a		;8192
	jp (hl)			;8193
	add a,a			;8194
	sub b			;8195
	sub h			;8196
	sub h			;8197
	ld b,b			;8198
	ld b,b			;8199
	sub h			;819a
	sub h			;819b
	inc bc			;819c
	jp (hl)			;819d
	add a,(hl)		;819e
	ld sp,hl		;819f
	sub c			;81a0
	sub (hl)		;81a1
	sub c			;81a2
	sub h			;81a3
	sub h			;81a4
	add hl,bc		;81a5
	ld b,b			;81a6
	sub l			;81a7
	rst 38h			;81a8
	sub c			;81a9
	sub (hl)		;81aa
	sub e			;81ab
	sub (hl)		;81ac
	sub c			;81ad
	ld sp,hl		;81ae
	sub h			;81af
	sub h			;81b0
	pop af			;81b1
	rrca			;81b2
	rrca			;81b3
	ld b,b			;81b4
	ld b,b			;81b5
	ret p			;81b6
	ld c,c			;81b7
	ret p			;81b8
	ld sp,hl		;81b9
	cp 0f9h			;81ba
	call p,0f003h		;81bc
	adc a,c			;81bf
	pop af			;81c0
	sub h			;81c1
	jp (hl)			;81c2
	jp (hl)			;81c3
	sub h			;81c4
	sub h			;81c5
	sub b			;81c6
	ld sp,hl		;81c7
	add hl,de		;81c8
	inc bc			;81c9
	sub h			;81ca
	ld (bc),a		;81cb
	jp (hl)			;81cc
	add a,h			;81cd
	sub h			;81ce
	sub b			;81cf
	sbc a,a			;81d0
	ld b,b			;81d1
	inc b			;81d2
	sub h			;81d3
	ld (bc),a		;81d4
	jp (hl)			;81d5
	ld (bc),a		;81d6
	sub b			;81d7
	inc bc			;81d8
	sub h			;81d9
	ld (bc),a		;81da
	jp (hl)			;81db
	add a,a			;81dc
	sub b			;81dd
	sub h			;81de
	sub h			;81df
	ld b,b			;81e0
	ld b,b			;81e1
	sub h			;81e2
	sub h			;81e3
	inc bc			;81e4
	jp (hl)			;81e5
	add a,(hl)		;81e6
	ld sp,hl		;81e7
	sub c			;81e8
	sub (hl)		;81e9
	sub c			;81ea
	sub h			;81eb
	sub h			;81ec
	add hl,bc		;81ed
	ld b,b			;81ee
	adc a,c			;81ef
	rst 38h			;81f0
	sub c			;81f1
	sub (hl)		;81f2
	sub e			;81f3
	sub (hl)		;81f4
	sub c			;81f5
	ld sp,hl		;81f6
	sub h			;81f7
	sub h			;81f8
	ex af,af'		;81f9
	and (hl)		;81fa
	ld (bc),a		;81fb
	sub h			;81fc
	add a,c			;81fd
	sub b			;81fe
	inc b			;81ff
	ld c,a			;8200
	ld (bc),a		;8201
	sub b			;8202
	add a,d			;8203
	ld b,b			;8204
	jp (hl)			;8205
	inc bc			;8206
	sub h			;8207
	add a,h			;8208
	ld c,a			;8209
	nop			;820a
	nop			;820b
	ld (02103h),a		;820c
	ld (bc),a		;820f
	ld sp,0f182h		;8210
	ld b,b			;8213
	inc bc			;8214
	ld (0f39eh),a		;8215
	rst 30h			;8218
	di			;8219
	di			;821a
	call p,0f3f3h		;821b
	and e			;821e
	and e			;821f
	ld sp,0f3f7h		;8220
	or 0f3h			;8223
	jp m,0f6f3h		;8225
	pop af			;8228
	cp 0f9h			;8229
	sub (hl)		;822b
	sub e			;822c
	xor c			;822d
	add hl,sp		;822e
	sub (hl)		;822f
	sub c			;8230
	jp (hl)			;8231
	sub h			;8232
	nop			;8233
	ld (02103h),a		;8234
	ld (bc),a		;8237
	ld sp,0f182h		;8238
	ld b,b			;823b
	inc bc			;823c
	ld (0f39eh),a		;823d
	rst 30h			;8240
	di			;8241
	di			;8242
	call p,0f3f3h		;8243
	and e			;8246
	and e			;8247
	ld sp,0f3f7h		;8248
	or 0f3h			;824b
	jp m,0f6f3h		;824d
	pop af			;8250
	cp 0f9h			;8251
	sub (hl)		;8253
	sub e			;8254
	xor c			;8255
	add hl,sp		;8256
	sub (hl)		;8257
	sub c			;8258
	jp (hl)			;8259
	sub h			;825a
	ld c,a			;825b
	ld sp,hl		;825c
	inc bc			;825d
	sub b			;825e
	ld (bc),a		;825f
	jp (hl)			;8260
	add a,c			;8261
	sub b			;8262
	dec b			;8263
	ld sp,hl		;8264
	ld (bc),a		;8265
	cp 002h			;8266
	ld sp,hl		;8268
	ld (bc),a		;8269
	ret m			;826a
	add a,l			;826b
	defb 0fdh,0f5h,0feh ;illegal sequence	;826c
	cp 0f9h			;826f
	inc bc			;8271
sub_8272h:
	ret p			;8272
	dec b			;8273
	ld b,b			;8274
	add a,h			;8275
	ret p			;8276
	jp m,0f0f6h		;8277
	inc b			;827a
	ld sp,hl		;827b
	add a,h			;827c
	rrca			;827d
	xor a			;827e
	ld l,a			;827f
	ret p			;8280
	dec b			;8281
	ld sp,hl		;8282
	add a,c			;8283
	call p,0f906h		;8284
	ld b,0f0h		;8287
	add a,d			;8289
	ld b,b			;828a
	rst 38h			;828b
	inc bc			;828c
	ld b,b			;828d
	add a,l			;828e
	jp (hl)			;828f
	sub h			;8290
	sub h			;8291
	ret p			;8292
	ret p			;8293
	inc b			;8294
	inc b			;8295
	inc b			;8296
	jp (hl)			;8297
	sub b			;8298
	ld sp,hl		;8299
	add hl,de		;829a
	ld l,c			;829b
	inc (hl)		;829c
	and h			;829d
	call p,00909h		;829e
	ld b,b			;82a1
	ld b,b			;82a2
	ret p			;82a3
	and e			;82a4
	or 04fh			;82a5
	sub h			;82a7
	ld b,b			;82a8
	inc b			;82a9
	ret m			;82aa
	ld (bc),a		;82ab
	defb 0fdh,081h,0f5h ;illegal sequence	;82ac
	ld b,0f9h		;82af
	ld (bc),a		;82b1
	cp 083h			;82b2
	ld sp,hl		;82b4
	call p,003f9h		;82b5
	sub b			;82b8
	ld (bc),a		;82b9
	jp (hl)			;82ba
	add a,c			;82bb
	sub b			;82bc
	nop			;82bd
	inc bc			;82be
	rst 38h			;82bf
	adc a,d			;82c0
	cp 0fch			;82c1
	ret m			;82c3
	rrca			;82c4
	rst 38h			;82c5
	ret nz			;82c6
	add a,b			;82c7
	ld bc,00703h		;82c8
	inc bc			;82cb
	rrca			;82cc
	adc a,b			;82cd
	ld a,a			;82ce
	ld bc,00703h		;82cf
	rrca			;82d2
	rra			;82d3
	ccf			;82d4
	ld a,a			;82d5
	ex af,af'		;82d6
	nop			;82d7
	ex af,af'		;82d8
	rrca			;82d9
	ex af,af'		;82da
	rra			;82db
	nop			;82dc
	inc bc			;82dd
	cp 003h			;82de
	ret p			;82e0
	add a,c			;82e1
	ld b,b			;82e2
	inc bc			;82e3
	ret p			;82e4
	inc b			;82e5
	ld b,b			;82e6
	add a,e			;82e7
	sub h			;82e8
	ld b,b			;82e9
	ld b,b			;82ea
	dec b			;82eb
	call p,0f982h		;82ec
	call p,04010h		;82ef
	ex af,af'		;82f2
	sub h			;82f3
	nop			;82f4
	ld b,0ffh		;82f5
	add a,d			;82f7
	jp 00330h		;82f8
	rst 38h			;82fb
	adc a,l			;82fc
	ei			;82fd
	rst 20h			;82fe
	rst 0			;82ff
	add a,b			;8300
	rra			;8301
	rst 38h			;8302
	rst 38h			;8303
	jp (hl)			;8304
	add a,c			;8305
	ld a,(hl)		;8306
	ld a,(hl)		;8307
	add a,e			;8308
	ld a,b			;8309
	inc bc			;830a
	rst 38h			;830b
	inc b			;830c
	cp 004h			;830d
	rst 38h			;830f
	inc b			;8310
	ld a,a			;8311
	add a,c			;8312
	rst 38h			;8313
	inc bc			;8314
	rlca			;8315
	adc a,b			;8316
	rrca			;8317
	rlca			;8318
	rlca			;8319
	rst 38h			;831a
	rra			;831b
	add a,b			;831c
	ret nz			;831d
	ret p			;831e
	ld b,0ffh		;831f
	ld (bc),a		;8321
	nop			;8322
	add a,d			;8323
	rlca			;8324
	call m,0fe03h		;8325
	add a,l			;8328
	rst 38h			;8329
	nop			;832a
	nop			;832b
	ret po			;832c
	ccf			;832d
	inc bc			;832e
	ld a,a			;832f
	add a,e			;8330
	ld bc,00f03h		;8331
	dec b			;8334
	rst 38h			;8335
	nop			;8336
	ld b,0fdh		;8337
	add a,d			;8339
	ld sp,hl		;833a
	jp (hl)			;833b
	inc b			;833c
	cp 083h			;833d
	ret m			;833f
	defb 0fdh,0f5h,003h ;illegal sequence	;8340
	cp 086h			;8343
	ret m			;8345
	defb 0fdh,0fdh,015h ;illegal sequence	;8346
	sub 0e8h		;8349
	dec b			;834b
	jp m,0f306h		;834c
	ld (bc),a		;834f
	jp m,0f303h		;8350
	ld (bc),a		;8353
	ld sp,hl		;8354
	adc a,b			;8355
	ret p			;8356
	jp m,0f0f3h		;8357
	sub h			;835a
	sub h			;835b
	di			;835c
	jp p,0f106h		;835d
l8360h:
	ld (bc),a		;8360
	ld hl,00f02h		;8361
	adc a,(hl)		;8364
	call p,0f9f0h		;8365
	ret p			;8368
	ld hl,00f21h		;8369
	rrca			;836c
	call p,0f9f0h		;836d
	ret p			;8370
	di			;8371
	jp p,0f106h		;8372
	nop			;8375
	push bc			;8376
	rst 38h			;8377
	rra			;8378
	rra			;8379
	ret p			;837a
	ret p			;837b
	adc a,a			;837c
	ld a,b			;837d
	jr c,$+1		;837e
	ret m			;8380
	ret m			;8381
	rrca			;8382
	rrca			;8383
	pop af			;8384
	pop hl			;8385
	ex (sp),hl		;8386
	rst 38h			;8387
	rra			;8388
	rra			;8389
	rrca			;838a
	rrca			;838b
	adc a,a			;838c
	ld a,b			;838d
	rst 0			;838e
	rst 38h			;838f
	ret m			;8390
	ret m			;8391
	rrca			;8392
	rrca			;8393
	ld c,0e1h		;8394
	ex (sp),hl		;8396
	rst 38h			;8397
	rra			;8398
	rra			;8399
	rrca			;839a
	rrca			;839b
	adc a,a			;839c
	ld a,b			;839d
	jr c,$+1		;839e
	ret m			;83a0
	ret m			;83a1
	rrca			;83a2
	rrca			;83a3
	ld c,0e1h		;83a4
	ex (sp),hl		;83a6
	rst 38h			;83a7
	rra			;83a8
	rra			;83a9
	rrca			;83aa
	rrca			;83ab
	adc a,a			;83ac
	add a,a			;83ad
	jr c,$+1		;83ae
	ret m			;83b0
	ret m			;83b1
	ret p			;83b2
	ret p			;83b3
	pop af			;83b4
	pop hl			;83b5
	ex (sp),hl		;83b6
	jr c,l8431h		;83b7
	ld (hl),b		;83b9
	rrca			;83ba
	rrca			;83bb
	inc bc			;83bc
	rra			;83bd
	add a,l			;83be
	inc e			;83bf
	ld e,0f1h		;83c0
	ret p			;83c2
	ret p			;83c3
	inc bc			;83c4
	rlca			;83c5
	add a,l			;83c6
	rst 0			;83c7
	add a,a			;83c8
	adc a,a			;83c9
	rrca			;83ca
	rrca			;83cb
	inc bc			;83cc
	rra			;83cd
	add a,l			;83ce
	ex (sp),hl		;83cf
	ld e,0f1h		;83d0
	ret p			;83d2
	ret p			;83d3
	inc bc			;83d4
	rlca			;83d5
	add a,l			;83d6
	jr c,l8360h		;83d7
	adc a,a			;83d9
	ret p			;83da
	ret p			;83db
	inc bc			;83dc
	ret po			;83dd
	add a,l			;83de
	inc e			;83df
	ld e,0f1h		;83e0
	ret p			;83e2
	ret p			;83e3
	inc bc			;83e4
	rlca			;83e5
	add a,l			;83e6
	rst 0			;83e7
	add a,a			;83e8
	ld (hl),b		;83e9
	ret p			;83ea
	ret p			;83eb
	inc bc			;83ec
	rra			;83ed
	add a,l			;83ee
	ex (sp),hl		;83ef
	ld e,00eh		;83f0
	rrca			;83f2
	rrca			;83f3
	inc b			;83f4
	ret m			;83f5
	ld (bc),a		;83f6
	add a,c			;83f7
	ld (bc),a		;83f8
	inc a			;83f9
	inc b			;83fa
	ld a,(hl)		;83fb
	add a,a			;83fc
	cp 0ffh			;83fd
	ld a,a			;83ff
	ld a,a			;8400
	rst 38h			;8401
	cp 0ffh			;8402
	nop			;8404
	ld (bc),a		;8405
	jp m,05e8ch		;8406
	defb 0edh ;next byte illegal after ed	;8409
	xor l			;840a
	out (065h),a		;840b
	ld h,l			;840d
	jp m,0fefah		;840e
	push hl			;8411
	and l			;8412
	ld d,e			;8413
	inc b			;8414
	or 08dh			;8415
	ld d,e			;8417
	jp c,0dedeh		;8418
	and l			;841b
	ld d,e			;841c
	or 0f6h			;841d
	di			;841f
	and l			;8420
	push hl			;8421
	push hl			;8422
	jp m,0f303h		;8423
	adc a,h			;8426
	ld d,(hl)		;8427
	sub 0d3h		;8428
	jp c,0e5e5h		;842a
	di			;842d
	di			;842e
	or 065h			;842f
l8431h:
	dec (hl)		;8431
	and l			;8432
	inc b			;8433
	cp 0d9h			;8434
	ld e,d			;8436
	out (0d6h),a		;8437
	sub 053h		;8439
	and l			;843b
	cp 0feh			;843c
	jp m,05653h		;843e
	ld d,(hl)		;8441
	di			;8442
sub_8443h:
	jp m,0ede5h		;8443
	xor b			;8446
	add a,e			;8447
	add a,(hl)		;8448
	sub 053h		;8449
	rst 38h			;844b
	push hl			;844c
	push hl			;844d
	jp c,0d6d3h		;844e
	ld h,l			;8451
	dec (hl)		;8452
	rst 38h			;8453
	ld d,e			;8454
	sub 086h		;8455
	add a,(hl)		;8457
	add a,e			;8458
	jp c,0ff5eh		;8459
	ld d,e			;845c
	ld h,l			;845d
	sub 0d6h		;845e
	out (0a5h),a		;8460
	push hl			;8462
	rst 38h			;8463
	ld h,l			;8464
	sub 083h		;8465
	xor b			;8467
	ret pe			;8468
	defb 0edh ;next byte illegal after ed	;8469
	and l			;846a
	rst 38h			;846b
	ld h,l			;846c
	ld h,l			;846d
	out (0dah),a		;846e
	sbc a,0e5h		;8470
	and l			;8472
	rst 38h			;8473
	ld d,e			;8474
	jp c,0e8e8h		;8475
	xor b			;8478
	out (056h),a		;8479
	rst 38h			;847b
	ld d,e			;847c
	and l			;847d
	defb 0edh ;next byte illegal after ed	;847e
	defb 0edh ;next byte illegal after ed	;847f
	xor l			;8480
	ld d,e			;8481
	ld d,(hl)		;8482
	rst 38h			;8483
	rst 38h			;8484
	ld h,e			;8485
	ld a,(0eaeah)		;8486
	and e			;8489
	ld (hl),0ffh		;848a
	rst 38h			;848c
	ld h,c			;848d
	ld h,c			;848e
	inc bc			;848f
	ld h,e			;8490
	add a,d			;8491
	ld h,c			;8492
	ret p			;8493
	nop			;8494
	inc b			;8495
	rst 38h			;8496
	inc bc			;8497
	call m,0f881h		;8498
	inc b			;849b
	rst 38h			;849c
	inc bc			;849d
	ccf			;849e
	add a,c			;849f
	rra			;84a0
	nop			;84a1
	inc b			;84a2
	ret p			;84a3
	inc c			;84a4
	ld sp,hl		;84a5
	nop			;84a6
	add a,d			;84a7
	ret m			;84a8
	call m,0ff06h		;84a9
	dec b			;84ac
	ccf			;84ad
	add a,e			;84ae
	cp a			;84af
	rst 38h			;84b0
	rst 38h			;84b1
	nop			;84b2
	add a,c			;84b3
	defb 0fdh,007h,0f5h ;illegal sequence	;84b4
	ld (bc),a		;84b7
	ret p			;84b8
	add a,c			;84b9
	call p,0f005h		;84ba
	nop			;84bd
	ld (bc),a		;84be
	ld (hl),b		;84bf
	xor d			;84c0
	ld a,h			;84c1
	add a,c			;84c2
	rst 20h			;84c3
	rst 20h			;84c4
	nop			;84c5
	rst 38h			;84c6
	ret m			;84c7
	call m,0ffffh		;84c8
	jp 001c3h		;84cb
	inc bc			;84ce
	add a,b			;84cf
	add a,b			;84d0
	ret p			;84d1
	rst 38h			;84d2
	call m,sub_80ffh	;84d3
	rst 38h			;84d6
	ld a,a			;84d7
	ccf			;84d8
	rra			;84d9
	rra			;84da
	rst 0			;84db
	rst 0			;84dc
	inc a			;84dd
	inc a			;84de
	ld a,h			;84df
	ld bc,0ff87h		;84e0
	ccf			;84e3
	rst 38h			;84e4
	dec e			;84e5
	rst 38h			;84e6
	call m,0fefch		;84e7
	cp 003h			;84ea
	add a,b			;84ec
	add a,c			;84ed
	rst 38h			;84ee
	inc b			;84ef
	add a,b			;84f0
	ld (bc),a		;84f1
	cp 081h			;84f2
	nop			;84f4
	inc bc			;84f5
	cp 086h			;84f6
	rst 38h			;84f8
	nop			;84f9
	rrca			;84fa
	rst 38h			;84fb
	ld a,a			;84fc
	ld a,a			;84fd
	inc b			;84fe
	ld a,(hl)		;84ff
	ld (bc),a		;8500
	ld a,a			;8501
	sub d			;8502
	nop			;8503
	ld a,a			;8504
	rlca			;8505
	rlca			;8506
	ld bc,0f9f9h		;8507
	pop af			;850a
	ret p			;850b
	ret p			;850c
	ret m			;850d
	inc bc			;850e
	ld a,a			;850f
l8510h:
	ld b,c			;8510
	jr nz,l8552h		;8511
	add a,b			;8513
	rst 38h			;8514
	inc bc			;8515
	rrca			;8516
	sub c			;8517
	rra			;8518
	ex (sp),hl		;8519
	add a,c			;851a
	ld a,b			;851b
	ld a,b			;851c
	rst 38h			;851d
	ld bc,0ffffh		;851e
	ccf			;8521
	ccf			;8522
	ret m			;8523
	jr $+1			;8524
	jr c,l85a0h		;8526
	ld a,b			;8528
	inc bc			;8529
	ret p			;852a
	ld (bc),a		;852b
	rst 38h			;852c
	add a,e			;852d
	nop			;852e
	rst 38h			;852f
	rst 38h			;8530
	inc b			;8531
	nop			;8532
	adc a,a			;8533
	add a,e			;8534
	call nz,0f0f8h		;8535
	ret po			;8538
	ret nz			;8539
	add a,b			;853a
	rst 38h			;853b
	pop bc			;853c
	inc hl			;853d
	rst 18h			;853e
	rst 28h			;853f
	rst 30h			;8540
	ei			;8541
	dec a			;8542
	inc bc			;8543
	rst 38h			;8544
	add a,c			;8545
	nop			;8546
	dec b			;8547
	rst 38h			;8548
	add a,h			;8549
	nop			;854a
	rst 38h			;854b
	nop			;854c
	nop			;854d
	dec b			;854e
	rst 38h			;854f
	adc a,(hl)		;8550
	add a,b			;8551
l8552h:
	rst 38h			;8552
	rst 38h			;8553
	call m,01ffch		;8554
	jr l8568h		;8557
	rrca			;8559
	rra			;855a
	ld a,03dh		;855b
	ld bc,00501h		;855d
	rst 38h			;8560
	ld (bc),a		;8561
	pop hl			;8562
	add a,d			;8563
	add a,b			;8564
	ret nz			;8565
	ex af,af'		;8566
	ld d,c			;8567
l8568h:
	ex af,af'		;8568
	ld c,h			;8569
	ex af,af'		;856a
	ld c,c			;856b
	rlca			;856c
	ld h,d			;856d
	add a,c			;856e
	rst 38h			;856f
	rlca			;8570
	ld (0ff81h),a		;8571
	rlca			;8574
	adc a,d			;8575
	add a,c			;8576
	rst 38h			;8577
	rlca			;8578
	call nz,0ff81h		;8579
	ex af,af'		;857c
	adc a,h			;857d
	ex af,af'		;857e
	jr nc,l8599h		;857f
	jr l8593h		;8581
	ld b,010h		;8583
	add a,c			;8585
	djnz l85e8h		;8586
	djnz l8510h		;8588
	djnz $+99		;858a
	nop			;858c
	add a,l			;858d
	ret pe			;858e
	adc a,l			;858f
	push de			;8590
	push af			;8591
	push af			;8592
l8593h:
	inc bc			;8593
	ld c,a			;8594
	add a,c			;8595
	defb 0fdh,003h,0f5h ;illegal sequence	;8596
l8599h:
	adc a,h			;8599
	or 0f5h			;859a
	ld sp,hl		;859c
	sub h			;859d
	ret nc			;859e
	ld d,b			;859f
l85a0h:
	ret p			;85a0
	ret p			;85a1
	push af			;85a2
	push af			;85a3
	defb 0fdh,0fdh,003h ;illegal sequence	;85a4
	ld b,b			;85a7
	add a,(hl)		;85a8
	rst 38h			;85a9
	ret c			;85aa
	rst 38h			;85ab
	ret pe			;85ac
	rst 38h			;85ad
	push de			;85ae
	rlca			;85af
	push af			;85b0
	add a,c			;85b1
	sub h			;85b2
	inc bc			;85b3
	ld b,b			;85b4
	inc bc			;85b5
	sub h			;85b6
	inc bc			;85b7
	call p,0f983h		;85b8
	call p,00740h		;85bb
	rrca			;85be
	ld (bc),a		;85bf
	push af			;85c0
	add a,a			;85c1
	ret c			;85c2
	rst 38h			;85c3
	ld b,b			;85c4
	ld b,b			;85c5
	sub h			;85c6
	ld b,b			;85c7
	ld b,b			;85c8
	ld b,00fh		;85c9
	add a,(hl)		;85cb
	push af			;85cc
	defb 0fdh,0f8h,0feh ;illegal sequence	;85cd
	ret m			;85d0
	ld b,b			;85d1
	dec b			;85d2
	ret p			;85d3
	add a,c			;85d4
	ld b,b			;85d5
	inc bc			;85d6
	ret p			;85d7
	add a,(hl)		;85d8
	inc b			;85d9
	ret p			;85da
	defb 0fdh,0f8h,0e8h ;illegal sequence	;85db
	adc a,l			;85de
	inc bc			;85df
	ret p			;85e0
	add a,e			;85e1
	xor 094h		;85e2
	sub h			;85e4
	add hl,bc		;85e5
	jp (hl)			;85e6
	inc b			;85e7
l85e8h:
	cp 005h			;85e8
	sub h			;85ea
	add a,(hl)		;85eb
	call p,0f0f0h		;85ec
	call p,0f0f4h		;85ef
	inc bc			;85f2
	call p,0f008h		;85f3
	inc bc			;85f6
	sbc a,a			;85f7
	rlca			;85f8
	ld c,a			;85f9
	dec b			;85fa
	ld c,c			;85fb
	inc bc			;85fc
	call p,0ee83h		;85fd
	sub h			;8600
	sub h			;8601
	inc bc			;8602
	jp (hl)			;8603
	add a,d			;8604
	sub h			;8605
	ld b,b			;8606
	inc bc			;8607
	sub h			;8608
	add a,c			;8609
	jp (hl)			;860a
	ld b,0f6h		;860b
	add a,h			;860d
	push af			;860e
	ld sp,hl		;860f
	sub h			;8610
	ld sp,hl		;8611
	ld b,0f4h		;8612
	add a,d			;8614
	ret p			;8615
	ld sp,hl		;8616
	ld b,0f4h		;8617
	add a,d			;8619
	ret p			;861a
	ld sp,hl		;861b
	ld b,0f4h		;861c
	add a,d			;861e
	ret p			;861f
	call p,0f007h		;8620
	add a,c			;8623
	call p,0f007h		;8624
	add a,c			;8627
	call p,0f007h		;8628
	add a,c			;862b
	call p,0f007h		;862c
	add a,c			;862f
	cp 006h			;8630
	ld sp,hl		;8632
	add a,d			;8633
	call p,006f9h		;8634
	call p,0f082h		;8637
	ld sp,hl		;863a
	ld b,0f4h		;863b
	add a,d			;863d
	ret p			;863e
	cp 006h			;863f
	ld sp,hl		;8641
	add a,c			;8642
	call p,0fe07h		;8643
	add a,c			;8646
	ld sp,hl		;8647
	rlca			;8648
	cp 082h			;8649
	ld sp,hl		;864b
	cp 006h			;864c
	ld sp,hl		;864e
	add a,c			;864f
	call p,0fe07h		;8650
	add a,d			;8653
	ld sp,hl		;8654
	cp 006h			;8655
	ld sp,hl		;8657
	add a,c			;8658
	call p,0fe07h		;8659
	add a,d			;865c
	ld sp,hl		;865d
	cp 006h			;865e
	ld sp,hl		;8660
	add a,d			;8661
	call p,006feh		;8662
	ld sp,hl		;8665
	add a,d			;8666
	call p,006f9h		;8667
	call p,0f082h		;866a
	cp 006h			;866d
	ld sp,hl		;866f
	add a,d			;8670
	call p,006f9h		;8671
	call p,0f081h		;8674
	nop			;8677
	ld (bc),a		;8678
	ret nz			;8679
	ld (bc),a		;867a
	add a,b			;867b
	adc a,c			;867c
	nop			;867d
	cp 0feh			;867e
	rst 38h			;8680
	rst 38h			;8681
	ld a,a			;8682
	ld a,a			;8683
	nop			;8684
	ld bc,0fc03h		;8685
	adc a,b			;8688
	rst 38h			;8689
	cp 0feh			;868a
	rst 38h			;868c
	ld a,a			;868d
	ld a,a			;868e
	ret nz			;868f
	ret nz			;8690
	inc bc			;8691
	inc bc			;8692
	add a,d			;8693
	cp 0ffh			;8694
	inc bc			;8696
	add a,b			;8697
	ld (bc),a		;8698
	ccf			;8699
	ld (bc),a		;869a
	ld a,a			;869b
	adc a,c			;869c
	rst 38h			;869d
	cp 0feh			;869e
	rst 38h			;86a0
	rst 38h			;86a1
	ld a,a			;86a2
	ld a,a			;86a3
	nop			;86a4
	ld bc,00303h		;86a5
	adc a,b			;86a8
	nop			;86a9
	cp 0feh			;86aa
	nop			;86ac
	add a,b			;86ad
	add a,b			;86ae
	ret nz			;86af
	ret nz			;86b0
	inc bc			;86b1
	inc bc			;86b2
	add a,d			;86b3
	ld bc,00300h		;86b4
	add a,b			;86b7
	ld (bc),a		;86b8
	ret nz			;86b9
	ld (bc),a		;86ba
	ld a,a			;86bb
	adc a,c			;86bc
	rst 38h			;86bd
	ld bc,0ff01h		;86be
	rst 38h			;86c1
	ld a,a			;86c2
	ld a,a			;86c3
	rst 38h			;86c4
	cp 003h			;86c5
	inc bc			;86c7
	adc a,l			;86c8
	nop			;86c9
	cp 0feh			;86ca
	rst 38h			;86cc
	ld a,a			;86cd
	ld a,a			;86ce
	ret nz			;86cf
	ret nz			;86d0
	inc bc			;86d1
	inc bc			;86d2
	cp 0feh			;86d3
	rst 38h			;86d5
	inc bc			;86d6
	add a,b			;86d7
	ld (bc),a		;86d8
	ccf			;86d9
	ld (bc),a		;86da
	add a,b			;86db
	adc a,c			;86dc
	nop			;86dd
	cp 0feh			;86de
	rst 38h			;86e0
	rst 38h			;86e1
	ld a,a			;86e2
	ld a,a			;86e3
	nop			;86e4
	ld bc,00303h		;86e5
	sub b			;86e8
	nop			;86e9
	cp 0feh			;86ea
	rst 38h			;86ec
	ld a,a			;86ed
	ld a,a			;86ee
	ccf			;86ef
	ccf			;86f0
	call m,001fch		;86f1
	ld bc,07f00h		;86f4
	ld a,a			;86f7
	rst 38h			;86f8
	nop			;86f9
	add a,a			;86fa
	push hl			;86fb
	ldd			;86fc
	jr c,l8738h		;86fe
	sub 053h		;8700
	inc bc			;8702
	jp m,0fe84h		;8703
	and l			;8706
	and l			;8707
	ld d,e			;8708
	inc bc			;8709
	or 091h			;870a
	jp m,0da5eh		;870c
	jp c,065d3h		;870f
	ld h,l			;8712
	push hl			;8713
	push hl			;8714
	xor l			;8715
	out (0d3h),a		;8716
	ld h,l			;8718
	dec (hl)		;8719
	rst 38h			;871a
	ld d,e			;871b
	sub 003h		;871c
	add a,(hl)		;871e
	add a,d			;871f
	jp c,0035eh		;8720
	or 081h			;8723
	di			;8725
	inc bc			;8726
	push hl			;8727
	add a,l			;8728
	xor a			;8729
	ccf			;872a
	ccf			;872b
	or 053h			;872c
	inc bc			;872e
	defb 0edh ;next byte illegal after ed	;872f
	add a,h			;8730
	and l			;8731
	dec (hl)		;8732
	dec (hl)		;8733
	ld h,l			;8734
	inc bc			;8735
	ld l,l			;8736
	adc a,d			;8737
l8738h:
	and l			;8738
	push hl			;8739
	rst 38h			;873a
	ld h,l			;873b
	ld l,l			;873c
	add a,e			;873d
	adc a,d			;873e
	adc a,d			;873f
	defb 0edh ;next byte illegal after ed	;8740
	and l			;8741
	inc bc			;8742
	di			;8743
	add a,h			;8744
	or 053h			;8745
	ld d,e			;8747
	and l			;8748
	inc bc			;8749
	rst 28h			;874a
	sub c			;874b
	di			;874c
	ld d,(hl)		;874d
	out (0d3h),a		;874e
	jp c,0e5e5h		;8750
	ld h,l			;8753
	ld h,l			;8754
	out (0dah),a		;8755
	jp c,0a5e5h		;8757
	rst 38h			;875a
	ld d,e			;875b
	jp c,0e803h		;875c
	add a,d			;875f
	out (056h),a		;8760
	inc bc			;8762
	cp 081h			;8763
	jp m,06503h		;8765
	add a,l			;8768
	ccf			;8769
	xor a			;876a
	xor a			;876b
	cp 05ah			;876c
	inc bc			;876e
	sub 084h		;876f
	ld d,e			;8771
	ld e,d			;8772
	ld d,e			;8773
	ld e,d			;8774
	inc bc			;8775
	defb 0edh ;next byte illegal after ed	;8776
	add a,e			;8777
	ld d,e			;8778
	ld d,(hl)		;8779
	ret p			;877a
	nop			;877b
	rst 38h			;877c
	rst 38h			;877d
	pop bc			;877e
	ret po			;877f
	ret p			;8780
	ret m			;8781
	call m,0fffeh		;8782
	rst 38h			;8785
	pop bc			;8786
	ret po			;8787
	ret p			;8788
	ret m			;8789
	call m,0fffeh		;878a
	rst 38h			;878d
	pop bc			;878e
	ret po			;878f
	ret p			;8790
	ret m			;8791
	call m,0fffeh		;8792
	rst 38h			;8795
	pop bc			;8796
	ret po			;8797
	ret p			;8798
	ret m			;8799
	call m,0fffeh		;879a
	rst 38h			;879d
	add a,e			;879e
	rlca			;879f
	rrca			;87a0
	rra			;87a1
	ccf			;87a2
	ld a,a			;87a3
	rst 38h			;87a4
	rst 38h			;87a5
	add a,e			;87a6
	rlca			;87a7
	rrca			;87a8
	rra			;87a9
	ccf			;87aa
	ld a,a			;87ab
	rst 38h			;87ac
	rst 38h			;87ad
	add a,e			;87ae
	rlca			;87af
	rrca			;87b0
	rra			;87b1
	ccf			;87b2
	ld a,a			;87b3
	rst 38h			;87b4
	rst 38h			;87b5
	add a,e			;87b6
	rlca			;87b7
	rrca			;87b8
	rra			;87b9
	ccf			;87ba
	ld a,a			;87bb
	rst 38h			;87bc
	rst 38h			;87bd
	cp 0fch			;87be
	ret m			;87c0
	ret p			;87c1
	ret po			;87c2
	pop bc			;87c3
	rst 38h			;87c4
	rst 38h			;87c5
	cp 0fch			;87c6
	ret m			;87c8
	ret p			;87c9
	ret po			;87ca
	ld a,0ffh		;87cb
	rst 38h			;87cd
	cp 0fch			;87ce
	ret m			;87d0
	ret p			;87d1
	ret po			;87d2
	ld a,0ffh		;87d3
	rst 38h			;87d5
	cp 0fch			;87d6
	ret m			;87d8
	ret p			;87d9
	ret po			;87da
	ld a,0ffh		;87db
	rst 38h			;87dd
	ld a,a			;87de
	ccf			;87df
	rra			;87e0
	rrca			;87e1
	rlca			;87e2
	add a,e			;87e3
	rst 38h			;87e4
	rst 38h			;87e5
	ld a,a			;87e6
	ccf			;87e7
	rra			;87e8
	rrca			;87e9
	rlca			;87ea
	ld a,h			;87eb
	rst 38h			;87ec
	rst 38h			;87ed
	ld a,a			;87ee
	ccf			;87ef
	rra			;87f0
	rrca			;87f1
	rlca			;87f2
	ld a,h			;87f3
	rst 38h			;87f4
	rst 38h			;87f5
	ld a,a			;87f6
	ccf			;87f7
	rra			;87f8
	rrca			;87f9
	rlca			;87fa
	ld a,h			;87fb
	ld (bc),a		;87fc
	rst 38h			;87fd
	add a,c			;87fe
	cp 004h			;87ff
	call m,0fe84h		;8801
	rst 38h			;8804
	rst 38h			;8805
	ld a,a			;8806
	inc b			;8807
	ccf			;8808
	add a,d			;8809
	ld a,a			;880a
	rst 38h			;880b
	nop			;880c
	add a,(hl)		;880d
	ret p			;880e
	jp m,0fefeh		;880f
	jp m,004f3h		;8812
	or 084h			;8815
	di			;8817
	jp m,0fefeh		;8818
	inc bc			;881b
	jp m,0f385h		;881c
	or 0f6h			;881f
	di			;8821
	jp m,0fe04h		;8822
	add a,h			;8825
	jp m,0f6f3h		;8826
	or 003h			;8829
	di			;882b
	add a,l			;882c
	jp m,0fefeh		;882d
	jp m,004f3h		;8830
	or 084h			;8833
	di			;8835
	jp m,0fefeh		;8836
	inc bc			;8839
	jp m,0f385h		;883a
	or 0f6h			;883d
	di			;883f
	jp m,0fe04h		;8840
	add a,h			;8843
	jp m,0f6f3h		;8844
	or 003h			;8847
	di			;8849
	add a,(hl)		;884a
	cp 0fah			;884b
	di			;884d
	or 0f6h			;884e
	ld d,e			;8850
	dec b			;8851
	or 083h			;8852
	di			;8854
	jp m,003e5h		;8855
	or 085h			;8858
	di			;885a
	jp m,0fefeh		;885b
	and l			;885e
	inc bc			;885f
	jp m,0fe02h		;8860
	add a,e			;8863
	jp m,065f3h		;8864
	inc bc			;8867
	cp 085h			;8868
	jp m,0f6f3h		;886a
	or 053h			;886d
	dec b			;886f
	or 083h			;8870
	di			;8872
	jp m,003e5h		;8873
	or 085h			;8876
	di			;8878
	jp m,0fefeh		;8879
	and l			;887c
	inc bc			;887d
	jp m,0fe02h		;887e
	add a,e			;8881
	jp m,065f3h		;8882
	ld a,(bc)		;8885
	or 007h			;8886
	pop af			;8888
	nop			;8889
	ld (bc),a		;888a
	cp 002h			;888b
	call m,0f802h		;888d
	ld (bc),a		;8890
	ret p			;8891
	inc bc			;8892
	ret po			;8893
	add a,h			;8894
	ret p			;8895
	ret po			;8896
	ret po			;8897
	rst 38h			;8898
	inc bc			;8899
	ret m			;889a
	rlca			;889b
	ret po			;889c
	rlca			;889d
	add a,b			;889e
	add a,d			;889f
	ret p			;88a0
	nop			;88a1
	inc b			;88a2
	call m,00006h		;88a3
	sub h			;88a6
	ld bc,00300h		;88a7
	inc bc			;88aa
	ld a,a			;88ab
	rlca			;88ac
	or 0f6h			;88ad
	call pe,0f80ch		;88af
	ret m			;88b2
	ret p			;88b3
	ret p			;88b4
	ret po			;88b5
	ret po			;88b6
	ret nz			;88b7
	ret nz			;88b8
	add a,b			;88b9
	add a,b			;88ba
	ex af,af'		;88bb
	nop			;88bc
	ld (bc),a		;88bd
	cp 081h			;88be
	add a,003h		;88c0
	sub 085h		;88c2
	add a,0feh		;88c4
	ret po			;88c6
	ret po			;88c7
	ret nz			;88c8
	inc bc			;88c9
	ret po			;88ca
	add a,c			;88cb
	ld a,a			;88cc
	inc bc			;88cd
	nop			;88ce
	adc a,(hl)		;88cf
	ret po			;88d0
	ld h,b			;88d1
	ret nz			;88d2
	add a,b			;88d3
	nop			;88d4
	nop			;88d5
	cp 0feh			;88d6
	ccf			;88d8
	add a,b			;88d9
	ld bc,0f001h		;88da
l88ddh:
	ret p			;88dd
	inc b			;88de
	rst 38h			;88df
	inc b			;88e0
	nop			;88e1
	nop			;88e2
	ld a,(bc)		;88e3
	ld sp,hl		;88e4
	adc a,c			;88e5
	ret p			;88e6
	jp m,0f0f3h		;88e7
	sub h			;88ea
	sub h			;88eb
	add hl,bc		;88ec
	inc b			;88ed
	jp (hl)			;88ee
	inc bc			;88ef
	sub h			;88f0
	add a,h			;88f1
	ld c,a			;88f2
	nop			;88f3
	nop			;88f4
	jp (hl)			;88f5
	dec b			;88f6
	sub h			;88f7
	add a,h			;88f8
	nop			;88f9
	sub h			;88fa
	sub h			;88fb
	sub b			;88fc
	inc b			;88fd
	ld c,a			;88fe
	dec bc			;88ff
	sub b			;8900
	ld d,094h		;8901
	dec bc			;8903
	ld b,b			;8904
	add a,e			;8905
	jp (hl)			;8906
	sub h			;8907
	sub h			;8908
	dec b			;8909
	ret p			;890a
	rlca			;890b
	ld b,b			;890c
	add a,l			;890d
	ret p			;890e
	and e			;890f
	or 04fh			;8910
	sub h			;8912
	ex af,af'		;8913
	ld b,b			;8914
	add a,c			;8915
	sbc a,a			;8916
	nop			;8917
	add a,d			;8918
	rra			;8919
	rlca			;891a
	ld b,000h		;891b
	add a,d			;891d
	rst 20h			;891e
	ret p			;891f
	ld b,000h		;8920
	add a,d			;8922
	inc bc			;8923
	ld bc,00006h		;8924
	ld (bc),a		;8927
	inc bc			;8928
	inc bc			;8929
	ld bc,00003h		;892a
	add a,e			;892d
	ret po			;892e
	ret nz			;892f
	add a,b			;8930
	dec b			;8931
	nop			;8932
	add a,h			;8933
	ret po			;8934
	ret nz			;8935
	ret nz			;8936
	add a,b			;8937
	inc b			;8938
	nop			;8939
	sub b			;893a
	dec sp			;893b
	cp 0fch			;893c
	ret m			;893e
	ret p			;893f
	ret po			;8940
	ret nz			;8941
	add a,b			;8942
	or (hl)			;8943
	call m,0e0f0h		;8944
	ret nz			;8947
	ret nz			;8948
	add a,b			;8949
	nop			;894a
	nop			;894b
	add a,c			;894c
	ld sp,03007h		;894d
	add a,d			;8950
	ld hl,01631h		;8951
	jr nc,l8958h		;8954
	djnz l895eh		;8956
l8958h:
	jr nz,l8962h		;8958
	djnz l88ddh		;895a
	pop af			;895c
	rlca			;895d
l895eh:
	ret p			;895e
	add a,c			;895f
	pop af			;8960
	rlca			;8961
l8962h:
	ret p			;8962
	nop			;8963
	cp b			;8964
	ld h,b			;8965
	ret nz			;8966
	sbc a,c			;8967
	rst 20h			;8968
	call m,0c0f0h		;8969
	nop			;896c
	sbc a,b			;896d
	ret nc			;896e
	pop hl			;896f
	ld a,a			;8970
	ccf			;8971
	rrca			;8972
	inc bc			;8973
	nop			;8974
	push hl			;8975
	call nc,0fefch		;8976
	ld a,a			;8979
	ccf			;897a
	rrca			;897b
	inc bc			;897c
	cp 07fh			;897d
	ld a,a			;897f
	ccf			;8980
	ccf			;8981
	rra			;8982
	rlca			;8983
	inc bc			;8984
	ex de,hl		;8985
	jp 0fcfeh		;8986
	call m,0f0f8h		;8989
	ret po			;898c
	inc e			;898d
	jr c,l89a0h		;898e
	jr nz,l8992h		;8990
l8992h:
	call m,0f0fch		;8992
	rra			;8995
	rra			;8996
	rrca			;8997
	rrca			;8998
	rlca			;8999
	inc bc			;899a
	cp 0e1h			;899b
	ex af,af'		;899d
	rst 38h			;899e
	rst 0			;899f
l89a0h:
	xor a			;89a0
	rst 8			;89a1
	cp 06bh			;89a2
	ld hl,01c19h		;89a4
	ld e,098h		;89a7
	ret z			;89a9
	ret z			;89aa
	adc a,h			;89ab
	call nz,0f2e6h		;89ac
	jp m,0224ch		;89af
	sub c			;89b2
	ret po			;89b3
	ld (hl),b		;89b4
	inc a			;89b5
	sbc a,(hl)		;89b6
	ld l,h			;89b7
	rlca			;89b8
	inc bc			;89b9
	ld bc,0f880h		;89ba
	call m,03f7eh		;89bd
	rst 0			;89c0
	ld a,h			;89c1
	ld a,b			;89c2
	ld a,h			;89c3
	add a,c			;89c4
	pop bc			;89c5
	ld e,00fh		;89c6
	jp 038c3h		;89c8
	ld a,h			;89cb
	add a,c			;89cc
	jp 0f1e1h		;89cd
	ld a,a			;89d0
	rlca			;89d1
	ld b,e			;89d2
	daa			;89d3
	cpl			;89d4
	sbc a,01bh		;89d5
	scf			;89d7
	pop hl			;89d8
	sbc a,b			;89d9
	ex af,af'		;89da
	ld c,b			;89db
	adc a,h			;89dc
	call nz,0f2c6h		;89dd
	ld sp,hl		;89e0
	defb 0fdh,0b8h,0cch ;illegal sequence	;89e1
	cp 0fah			;89e4
	defb 0fdh,003h,0ffh ;illegal sequence	;89e6
	ld (bc),a		;89e9
	ld a,a			;89ea
	add a,e			;89eb
	ccf			;89ec
	ret po			;89ed
	ret po			;89ee
	inc bc			;89ef
	ret p			;89f0
	ld (bc),a		;89f1
	ret m			;89f2
	inc bc			;89f3
	call m,0feffh		;89f4
	add a,b			;89f7
	ret nz			;89f8
	ret po			;89f9
	ret p			;89fa
	ret p			;89fb
	ret m			;89fc
	call m,02ffeh		;89fd
	scf			;8a00
	rrca			;8a01
	add hl,sp		;8a02
	sbc a,a			;8a03
	ld sp,hl		;8a04
	di			;8a05
	pop hl			;8a06
	ret m			;8a07
	ret m			;8a08
	call m,0fefch		;8a09
	cp 0fch			;8a0c
	ret m			;8a0e
	cpl			;8a0f
	ccf			;8a10
	rrca			;8a11
	ret m			;8a12
	jp 02fe0h		;8a13
	inc bc			;8a16
	rst 38h			;8a17
	rst 38h			;8a18
	add hl,de		;8a19
	djnz l8a82h		;8a1a
	inc bc			;8a1c
	ld a,b			;8a1d
	ld a,b			;8a1e
	ld a,a			;8a1f
	rst 38h			;8a20
	call m,0f0f8h		;8a21
	ret po			;8a24
	ret nz			;8a25
	add a,b			;8a26
	ld a,a			;8a27
	ld a,(hl)		;8a28
	call m,0f1fch		;8a29
	pop hl			;8a2c
	ex (sp),hl		;8a2d
	ret m			;8a2e
	call nz,0f828h		;8a2f
	ld a,h			;8a32
	ld a,03ch		;8a33
	ld e,00eh		;8a35
	ld sp,hl		;8a37
	defb 0fdh,0b8h,0cch ;illegal sequence	;8a38
	call po,0fcf0h		;8a3b
	jp 0df7eh		;8a3e
	sub c			;8a41
	or e			;8a42
	ld l,a			;8a43
	rst 38h			;8a44
	rst 38h			;8a45
	ld a,a			;8a46
	ld a,b			;8a47
	inc a			;8a48
	inc a			;8a49
	ld e,01eh		;8a4a
	ret po			;8a4c
	ret p			;8a4d
	ret p			;8a4e
	ld l,a			;8a4f
	daa			;8a50
	inc de			;8a51
	add a,c			;8a52
	ret p			;8a53
	jr c,$-50		;8a54
	ld l,(hl)		;8a56
	cp b			;8a57
	call m,0f6fch		;8a58
	jp m,0fcf9h		;8a5b
	cp 0d0h			;8a5e
	ld l,b			;8a60
	call p,07af6h		;8a61
	cp c			;8a64
	call c,0d0feh		;8a65
	ret pe			;8a68
	call p,0faf6h		;8a69
	defb 0fdh,0feh,07fh ;illegal sequence	;8a6c
	add hl,sp		;8a6f
	or e			;8a70
	ld d,e			;8a71
	jp po,l8044h		;8a72
	sub d			;8a75
	add a,b			;8a76
	ret nz			;8a77
	ex af,af'		;8a78
	ld de,06632h		;8a79
	call c,0c8fah		;8a7c
	sub b			;8a7f
	ret nz			;8a80
	ret p			;8a81
l8a82h:
	ret m			;8a82
	call m,0bffeh		;8a83
	ld a,a			;8a86
	ld a,a			;8a87
	inc bc			;8a88
	rst 38h			;8a89
	sub l			;8a8a
	ld sp,iy		;8a8b
	rst 20h			;8a8d
	rst 28h			;8a8e
	ld c,a			;8a8f
	add a,a			;8a90
	add a,a			;8a91
	rrca			;8a92
	inc c			;8a93
	ccf			;8a94
	rra			;8a95
	ccf			;8a96
	ccf			;8a97
	call c,0f6ech		;8a98
	or 07bh			;8a9b
	cp c			;8a9d
	defb 0ddh,0feh,004h ;illegal sequence	;8a9e
	rst 38h			;8aa1
	rst 38h			;8aa2
	cp 0fch			;8aa3
	ld sp,hl		;8aa5
	defb 0fdh,0fch,0f9h ;illegal sequence	;8aa6
	ret p			;8aa9
	ret p			;8aaa
	ret m			;8aab
	cp 07fh			;8aac
	rst 38h			;8aae
	ret p			;8aaf
	ret po			;8ab0
	jr c,l8acbh		;8ab1
	call z,07eeeh		;8ab3
	inc e			;8ab6
	inc a			;8ab7
	add hl,de		;8ab8
	sub c			;8ab9
	sub e			;8aba
	ld l,a			;8abb
	ld a,a			;8abc
	ccf			;8abd
	rra			;8abe
	rlca			;8abf
	inc bc			;8ac0
	add a,b			;8ac1
l8ac2h:
	add a,b			;8ac2
	jr nc,l8b1dh		;8ac3
l8ac5h:
	inc e			;8ac5
	adc a,h			;8ac6
	scf			;8ac7
	xor a			;8ac8
	rst 8			;8ac9
	rst 38h			;8aca
l8acbh:
	ex de,hl		;8acb
	ex (sp),hl		;8acc
	ex (sp),hl		;8acd
	rst 0			;8ace
	rst 8			;8acf
	sbc a,a			;8ad0
	rst 38h			;8ad1
	rst 28h			;8ad2
	ld b,(hl)		;8ad3
	ld c,00ch		;8ad4
	jr l8b11h		;8ad6
	or e			;8ad8
	ld d,e			;8ad9
	jp po,l8044h		;8ada
	add a,b			;8add
	jp nz,0f0f2h		;8ade
	ret m			;8ae1
	ret m			;8ae2
	call m,0fefch		;8ae3
	jp m,0c4c6h		;8ae6
	ret z			;8ae9
	ret c			;8aea
	ret p			;8aeb
	pop af			;8aec
	rst 30h			;8aed
	adc a,b			;8aee
	adc a,088h		;8aef
	call po,0b272h		;8af1
	jr l8ac2h		;8af4
	xor 0c7h		;8af6
	add a,l			;8af8
	set 0,a			;8af9
	adc a,a			;8afb
	sbc a,(hl)		;8afc
	dec de			;8afd
	scf			;8afe
	ccf			;8aff
	cp a			;8b00
	ld e,a			;8b01
	ld c,h			;8b02
	ld a,h			;8b03
	inc a			;8b04
	ld a,00eh		;8b05
	sbc a,b			;8b07
	ex af,af'		;8b08
	ld c,b			;8b09
	adc a,h			;8b0a
	call nz,0f2c6h		;8b0b
	jp m,09fcfh		;8b0e
l8b11h:
	rst 38h			;8b11
	cp 0f5h			;8b12
	rst 28h			;8b14
	jp c,0ce3ch		;8b15
	adc a,b			;8b18
	call po,sub_8272h	;8b19
	ld a,(hl)		;8b1c
l8b1dh:
	ld a,0d0h		;8b1d
	rst 30h			;8b1f
	ld sp,hl		;8b20
	call m,0fc85h		;8b21
	cp 0feh			;8b24
	rst 38h			;8b26
	rst 38h			;8b27
	nop			;8b28
	inc b			;8b29
	ld hl,02002h		;8b2a
	ld (bc),a		;8b2d
	jr nc,l8b33h		;8b2e
	ld (03005h),a		;8b30
l8b33h:
	inc b			;8b33
	ld (03004h),a		;8b34
	add a,c			;8b37
	ld (03007h),a		;8b38
	ld (bc),a		;8b3b
	pop af			;8b3c
	ld b,010h		;8b3d
	dec b			;8b3f
	pop af			;8b40
	inc bc			;8b41
	djnz l8ac5h		;8b42
	ld sp,03f05h		;8b44
	add a,c			;8b47
	pop af			;8b48
	add hl,bc		;8b49
	ret p			;8b4a
	ld (bc),a		;8b4b
	pop af			;8b4c
	add a,(hl)		;8b4d
	jp p,0f1f1h		;8b4e
	ld hl,03221h		;8b51
	rrca			;8b54
	ld hl,03281h		;8b55
	inc bc			;8b58
	ld sp,0f191h		;8b59
	ld hl,03231h		;8b5c
	ld sp,021f1h		;8b5f
	ld (0f332h),a		;8b62
	di			;8b65
	ld sp,0f131h		;8b66
	ld (de),a		;8b69
	ld (00331h),a		;8b6a
	di			;8b6d
	add a,c			;8b6e
	jp p,0f107h		;8b6f
	add a,d			;8b72
	jp p,003f1h		;8b73
	ld hl,03106h		;8b76
	add hl,bc		;8b79
	ld (03102h),a		;8b7a
	inc de			;8b7d
	di			;8b7e
	add a,e			;8b7f
	pop af			;8b80
	di			;8b81
	di			;8b82
	inc bc			;8b83
	pop af			;8b84
	ld (bc),a		;8b85
	jp p,0f306h		;8b86
	inc bc			;8b89
	pop af			;8b8a
	ld (bc),a		;8b8b
	di			;8b8c
	add a,e			;8b8d
	ld sp,0f2f3h		;8b8e
	dec b			;8b91
	pop af			;8b92
	add a,l			;8b93
	jp p,0f131h		;8b94
	ld hl,00b32h		;8b97
	pop af			;8b9a
	add a,c			;8b9b
	jp p,0f303h		;8b9c
	inc bc			;8b9f
	jp p,03281h		;8ba0
	rlca			;8ba3
	ld sp,03204h		;8ba4
	add a,c			;8ba7
	ld hl,0f109h		;8ba8
	dec b			;8bab
	ld sp,0f303h		;8bac
	inc b			;8baf
	ld sp,02104h		;8bb0
l8bb3h:
	rla			;8bb3
	ld (03181h),a		;8bb4
l8bb7h:
	dec b			;8bb7
	pop af			;8bb8
	dec bc			;8bb9
	ld hl,0f305h		;8bba
	inc de			;8bbd
	pop af			;8bbe
	ex af,af'		;8bbf
	ld (0f109h),a		;8bc0
	ld (bc),a		;8bc3
	jp p,0f302h		;8bc4
	add a,c			;8bc7
	jp p,0f103h		;8bc8
	ld (bc),a		;8bcb
	ld hl,03203h		;8bcc
	ld (bc),a		;8bcf
	ld sp,0f10ah		;8bd0
	ld b,021h		;8bd3
	dec d			;8bd5
	pop af			;8bd6
	inc bc			;8bd7
	ld hl,03106h		;8bd8
	ld (bc),a		;8bdb
	ld (02107h),a		;8bdc
	add a,d			;8bdf
	ld (00621h),a		;8be0
	ld (03181h),a		;8be3
	djnz $-13		;8be6
	inc bc			;8be8
	ld hl,03105h		;8be9
	ex af,af'		;8bec
	pop af			;8bed
	add a,c			;8bee
	ld hl,03204h		;8bef
	ld (bc),a		;8bf2
	ld hl,03204h		;8bf3
	dec b			;8bf6
	ld sp,00500h		;8bf7
	rst 38h			;8bfa
	add a,e			;8bfb
	ld a,a			;8bfc
	ccf			;8bfd
	ret po			;8bfe
	ld b,000h		;8bff
	add a,d			;8c01
	add a,b			;8c02
	ret nz			;8c03
	ld b,000h		;8c04
	add a,d			;8c06
	ld bc,00603h		;8c07
	nop			;8c0a
	add a,d			;8c0b
	rrca			;8c0c
	add a,e			;8c0d
	ld b,000h		;8c0e
	add a,d			;8c10
	rlca			;8c11
	ld e,006h		;8c12
	nop			;8c14
	sub d			;8c15
	ret p			;8c16
	ret m			;8c17
	add a,b			;8c18
	add a,b			;8c19
	ret nz			;8c1a
	ret po			;8c1b
	ret p			;8c1c
	ret m			;8c1d
	cp 03bh			;8c1e
	ld bc,00303h		;8c20
	rlca			;8c23
	rrca			;8c24
	rra			;8c25
	ccf			;8c26
	ld a,a			;8c27
	nop			;8c28
	rlca			;8c29
	inc bc			;8c2a
	rlca			;8c2b
	jr nz,l8c36h		;8c2c
	djnz l8c39h		;8c2e
	jr nc,l8bb3h		;8c30
	di			;8c32
	rlca			;8c33
	jr nc,l8bb7h		;8c34
l8c36h:
	ld sp,01007h		;8c36
l8c39h:
	ex af,af'		;8c39
	ret p			;8c3a
	add a,c			;8c3b
	pop af			;8c3c
	ex af,af'		;8c3d
	jr nc,l8c40h		;8c3e
l8c40h:
	xor b			;8c40
	ret p			;8c41
	ret m			;8c42
	call m,06cfeh		;8c43
	ld d,009h		;8c46
	nop			;8c48
	nop			;8c49
	add a,b			;8c4a
	ret po			;8c4b
	ret m			;8c4c
	cp 099h			;8c4d
	ret nz			;8c4f
	ld h,b			;8c50
	ret p			;8c51
	call m,0fefeh		;8c52
	jr nz,l8c67h		;8c55
	jr c,$+30		;8c57
	ret nz			;8c59
	ret po			;8c5a
	ret p			;8c5b
	ret m			;8c5c
	call m,0c3feh		;8c5d
	ex de,hl		;8c60
	nop			;8c61
	inc bc			;8c62
	rrca			;8c63
	ccf			;8c64
	ld a,a			;8c65
	defb 0edh ;next byte illegal after ed	;8c66
l8c67h:
	ret nc			;8c67
	sbc a,b			;8c68
	inc bc			;8c69
	nop			;8c6a
	rst 38h			;8c6b
	ld a,h			;8c6c
	rst 20h			;8c6d
	pop bc			;8c6e
l8c6fh:
	sub b			;8c6f
	sbc a,b			;8c70
	ret po			;8c71
	ret m			;8c72
	call m,0c6feh		;8c73
	pop hl			;8c76
	or b			;8c77
	sbc a,b			;8c78
	inc bc			;8c79
	rrca			;8c7a
	ccf			;8c7b
	add a,c			;8c7c
	ld bc,0d4fch		;8c7d
	push hl			;8c80
	rlca			;8c81
	rra			;8c82
	ccf			;8c83
	ld a,a			;8c84
	ld a,a			;8c85
	cp 0ech			;8c86
	exx			;8c88
	rlca			;8c89
	rrca			;8c8a
	rra			;8c8b
	ccf			;8c8c
	ccf			;8c8d
	ld a,a			;8c8e
	rst 38h			;8c8f
	cp 007h			;8c90
	rrca			;8c92
	rra			;8c93
	ccf			;8c94
	ld a,a			;8c95
	rst 38h			;8c96
	ld (hl),b		;8c97
	ld (hl),b		;8c98
	ret po			;8c99
	rrca			;8c9a
	inc bc			;8c9b
	rlca			;8c9c
	ret po			;8c9d
	ret p			;8c9e
	jr c,l8c6fh		;8c9f
	rlca			;8ca1
	ex (sp),hl		;8ca2
	pop hl			;8ca3
	pop af			;8ca4
	call m,07efch		;8ca5
	ld a,a			;8ca8
	add a,l			;8ca9
	adc a,b			;8caa
	cp d			;8cab
	call c,04b90h		;8cac
	cp a			;8caf
	ld a,a			;8cb0
	pop af			;8cb1
	pop hl			;8cb2
	jp 07c81h		;8cb3
	jr c,$+62		;8cb6
	inc a			;8cb8
	ld l,h			;8cb9
	sbc a,(hl)		;8cba
	inc a			;8cbb
	ld (hl),b		;8cbc
	ret po			;8cbd
	sub c			;8cbe
	ld (0fd4ch),hl		;8cbf
	jp m,0e9e4h		;8cc2
	ret nc			;8cc5
	ret po			;8cc6
	ret pe			;8cc7
	ret nc			;8cc8
	adc a,b			;8cc9
	rst 10h			;8cca
	pop hl			;8ccb
	ret p			;8ccc
	cp b			;8ccd
	jr l8cdch		;8cce
	ld b,0ffh		;8cd0
	defb 0fdh,0fah,0feh ;illegal sequence	;8cd2
	call z,0fdb8h		;8cd5
	ld sp,hl		;8cd8
	pop hl			;8cd9
	di			;8cda
	ret m			;8cdb
l8cdch:
	sbc a,a			;8cdc
	jr c,l8ceeh		;8cdd
	ret po			;8cdf
	add a,b			;8ce0
	ret p			;8ce1
	ret po			;8ce2
	ret po			;8ce3
	ccf			;8ce4
	ld a,a			;8ce5
	ld a,a			;8ce6
	rst 38h			;8ce7
	rst 38h			;8ce8
	ret m			;8ce9
	ret m			;8cea
	add a,l			;8ceb
	pop af			;8cec
	di			;8ced
l8ceeh:
	rst 20h			;8cee
	rst 20h			;8cef
l8cf0h:
	ld a,a			;8cf0
	add hl,bc		;8cf1
	rst 38h			;8cf2
	jp nz,0ff0fh		;8cf3
	call m,0e0f0h		;8cf6
	ret nz			;8cf9
	ret nz			;8cfa
	ld a,a			;8cfb
	ret nz			;8cfc
	ret po			;8cfd
	pop af			;8cfe
	ret m			;8cff
	call m,0fcf8h		;8d00
	rst 38h			;8d03
	pop hl			;8d04
	di			;8d05
	ld sp,hl		;8d06
	sbc a,a			;8d07
	add hl,sp		;8d08
	rrca			;8d09
	scf			;8d0a
	cpl			;8d0b
	cp a			;8d0c
	sbc a,a			;8d0d
	bit 1,l			;8d0e
	ld h,h			;8d10
	ld (0bd31h),hl		;8d11
	inc bc			;8d14
	cpl			;8d15
	ret po			;8d16
	jp 00ff8h		;8d17
	ccf			;8d1a
	cpl			;8d1b
	ccf			;8d1c
	ld a,(hl)		;8d1d
	call m,sub_80f8h	;8d1e
	ld bc,00703h		;8d21
	ld c,01eh		;8d24
	inc a			;8d26
	ld a,07ch		;8d27
	ret m			;8d29
	jr z,l8cf0h		;8d2a
	ret m			;8d2c
	ret p			;8d2d
	ret po			;8d2e
	ret nz			;8d2f
	add a,b			;8d30
	call m,0e0f8h		;8d31
	ccf			;8d34
	rra			;8d35
	inc b			;8d36
	rst 38h			;8d37
	add a,a			;8d38
	cp 0fch			;8d39
	add a,a			;8d3b
	inc bc			;8d3c
	inc bc			;8d3d
	rlca			;8d3e
	adc a,a			;8d3f
	inc bc			;8d40
	rst 38h			;8d41
	ret nz			;8d42
	rlca			;8d43
	ret po			;8d44
	jp 0cf83h		;8d45
	ccf			;8d48
	ld e,038h		;8d49
	ret p			;8d4b
	ret p			;8d4c
	ret po			;8d4d
	ld e,01eh		;8d4e
	inc a			;8d50
	inc a			;8d51
	ld a,b			;8d52
	ld l,(hl)		;8d53
	call z,0f038h		;8d54
	ret nz			;8d57
	ld bc,00703h		;8d58
	rrca			;8d5b
	ld e,0c1h		;8d5c
	add a,c			;8d5e
	ld a,h			;8d5f
	ld a,b			;8d60
	ld a,h			;8d61
	rst 0			;8d62
	ret m			;8d63
	call m,0fefeh		;8d64
	call m,0f8fch		;8d67
	ret m			;8d6a
	cp 0fch			;8d6b
	ret m			;8d6d
	ret p			;8d6e
	ret p			;8d6f
	ret po			;8d70
	ret nz			;8d71
	add a,b			;8d72
	nop			;8d73
	ei			;8d74
	jp p,0cce6h		;8d75
	or b			;8d78
	cp 0fch			;8d79
	sub b			;8d7b
	ret z			;8d7c
	jp m,066dch		;8d7d
	ld (00811h),a		;8d80
	inc bc			;8d83
	nop			;8d84
	adc a,d			;8d85
	ld b,h			;8d86
	jp po,0b152h		;8d87
	add hl,sp		;8d8a
	ld c,a			;8d8b
	rst 28h			;8d8c
	rst 20h			;8d8d
	ld sp,hl		;8d8e
	defb 0fdh,003h,0ffh ;illegal sequence	;8d8f
	ld (bc),a		;8d92
	ccf			;8d93
	sub d			;8d94
	rra			;8d95
	ccf			;8d96
	inc c			;8d97
	rrca			;8d98
	add a,a			;8d99
	add a,a			;8d9a
	cp 0fch			;8d9b
	ld sp,hl		;8d9d
	ei			;8d9e
	cp 0f6h			;8d9f
	call pe,067c8h		;8da1
	ret p			;8da4
	ret m			;8da5
	cp 005h			;8da6
	rst 38h			;8da8
	rst 38h			;8da9
	ld a,a			;8daa
	cp 0f8h			;8dab
	ret p			;8dad
	ret p			;8dae
	ld sp,hl		;8daf
	call m,07e1ch		;8db0
	xor 0cch		;8db3
	jr l8defh		;8db5
	ret po			;8db7
	ret p			;8db8
	rra			;8db9
	ccf			;8dba
	ld a,a			;8dbb
	ld l,a			;8dbc
	sub e			;8dbd
	sub c			;8dbe
	add hl,de		;8dbf
	inc a			;8dc0
	adc a,h			;8dc1
	inc e			;8dc2
	ld e,b			;8dc3
	jr nc,$-126		;8dc4
	add a,b			;8dc6
	inc bc			;8dc7
	rlca			;8dc8
	rst 0			;8dc9
	ex (sp),hl		;8dca
	ex (sp),hl		;8dcb
	ex de,hl		;8dcc
	rst 38h			;8dcd
	rst 8			;8dce
	xor a			;8dcf
	scf			;8dd0
	jr $+14			;8dd1
	ld c,046h		;8dd3
	rst 28h			;8dd5
	rst 38h			;8dd6
	sbc a,a			;8dd7
	rst 8			;8dd8
	jp nz,l8080h		;8dd9
	ld b,h			;8ddc
	jp po,0b353h		;8ddd
	add hl,sp		;8de0
	jp m,0fcfeh		;8de1
	call m,0f8f8h		;8de4
	ret p			;8de7
	jp p,0f078h		;8de8
	ret p			;8deb
	ret po			;8dec
	ret nz			;8ded
	inc bc			;8dee
l8defh:
	ccf			;8def
	rst 38h			;8df0
	xor 0cch		;8df1
	jr $-76			;8df3
	ld (hl),d		;8df5
	call po,0ce88h		;8df6
	scf			;8df9
	dec de			;8dfa
	sbc a,(hl)		;8dfb
	adc a,a			;8dfc
	rst 0			;8dfd
	res 0,l			;8dfe
	rst 0			;8e00
	ld c,03eh		;8e01
	inc a			;8e03
	ld a,h			;8e04
	ld c,h			;8e05
	ld e,a			;8e06
	cp a			;8e07
	ccf			;8e08
	jp m,0c6f2h		;8e09
	call nz,0488ch		;8e0c
	ex af,af'		;8e0f
	sbc a,b			;8e10
	xor 01fh		;8e11
	ret p			;8e13
	rst 30h			;8e14
	ei			;8e15
	defb 0fdh,0ffh,0ffh ;illegal sequence	;8e16
	cp 0dch			;8e19
	cp c			;8e1b
	ld a,d			;8e1c
	or 0f4h			;8e1d
	ret pe			;8e1f
	ret nc			;8e20
	rst 38h			;8e21
	rst 38h			;8e22
	cp 0feh			;8e23
	call m,0f9fch		;8e25
	rst 30h			;8e28
	nop			;8e29
	inc b			;8e2a
	jr nz,l8e31h		;8e2b
	ld hl,03002h		;8e2d
	inc bc			;8e30
l8e31h:
	jr nz,l8e36h		;8e31
	ld hl,01004h		;8e33
l8e36h:
	inc b			;8e36
	pop af			;8e37
	ld b,010h		;8e38
	ld (bc),a		;8e3a
	pop af			;8e3b
	dec b			;8e3c
	jr nc,l8e42h		;8e3d
	ld (03004h),a		;8e3f
l8e42h:
	inc b			;8e42
	ld (03004h),a		;8e43
	inc b			;8e46
	ld (03003h),a		;8e47
	ld (bc),a		;8e4a
	di			;8e4b
	inc bc			;8e4c
	ld (03005h),a		;8e4d
	inc bc			;8e50
	ld (03007h),a		;8e51
	add a,c			;8e54
	ld (03005h),a		;8e55
	ld (bc),a		;8e58
	ld hl,01f86h		;8e59
	djnz $-13		;8e5c
	ld sp,0f231h		;8e5e
	inc bc			;8e61
	pop af			;8e62
	add a,c			;8e63
	jr nz,$+5		;8e64
	di			;8e66
	add a,c			;8e67
	jp p,0f103h		;8e68
	inc bc			;8e6b
	ld (02102h),a		;8e6c
	inc bc			;8e6f
	pop af			;8e70
	add a,c			;8e71
	jp p,0f303h		;8e72
	add a,l			;8e75
	ld sp,02132h		;8e76
	rra			;8e79
	ld (0210fh),a		;8e7a
	add a,c			;8e7d
	ld (02107h),a		;8e7e
	ld b,032h		;8e81
	ld (bc),a		;8e83
	ld sp,0f388h		;8e84
	jp p,0f1f2h		;8e87
	pop af			;8e8a
	jp p,03131h		;8e8b
	inc bc			;8e8e
	di			;8e8f
	ld (bc),a		;8e90
	ld sp,03203h		;8e91
	ld (bc),a		;8e94
	di			;8e95
	inc bc			;8e96
	jp p,0f10dh		;8e97
	dec b			;8e9a
	di			;8e9b
	add a,l			;8e9c
	ld sp,0f3f3h		;8e9d
	jp p,004f2h		;8ea0
	pop af			;8ea3
	ld (bc),a		;8ea4
	jp p,0f103h		;8ea5
	ld (bc),a		;8ea8
	di			;8ea9
	dec bc			;8eaa
	pop af			;8eab
	adc a,e			;8eac
	jp p,031f3h		;8ead
	di			;8eb0
	di			;8eb1
	pop af			;8eb2
	ld sp,03132h		;8eb3
	ld hl,008f1h		;8eb6
	ld sp,03283h		;8eb9
	jp p,005f2h		;8ebc
	di			;8ebf
	inc bc			;8ec0
	ld (0f106h),a		;8ec1
	inc bc			;8ec4
	di			;8ec5
	add a,c			;8ec6
	jp p,0f106h		;8ec7
	add a,e			;8eca
	ld hl,0f2f2h		;8ecb
	inc bc			;8ece
	pop af			;8ecf
	dec b			;8ed0
	di			;8ed1
	dec b			;8ed2
	ld sp,02105h		;8ed3
	dec b			;8ed6
	ld sp,0f302h		;8ed7
	ld (bc),a		;8eda
	ld (02181h),a		;8edb
	inc bc			;8ede
	pop af			;8edf
	rrca			;8ee0
	di			;8ee1
	dec b			;8ee2
	ld (0210dh),a		;8ee3
	dec d			;8ee6
	pop af			;8ee7
	ex af,af'		;8ee8
	ld (0f10ah),a		;8ee9
	adc a,b			;8eec
	jp p,0f3f3h		;8eed
	jp p,0f1f2h		;8ef0
	ld sp,00331h		;8ef3
	ld (02102h),a		;8ef6
	add hl,bc		;8ef9
	pop af			;8efa
	ld b,021h		;8efb
	ld (de),a		;8efd
	pop af			;8efe
	inc bc			;8eff
	ld hl,0f105h		;8f00
	ld (bc),a		;8f03
	ld (03109h),a		;8f04
	ld (bc),a		;8f07
	ld hl,0f103h		;8f08
	add a,c			;8f0b
	ld sp,03206h		;8f0c
	add a,c			;8f0f
	ld hl,0f110h		;8f10
	dec b			;8f13
	ld sp,02105h		;8f14
	ld b,0f1h		;8f17
	ld a,(bc)		;8f19
	ld (03103h),a		;8f1a
	inc bc			;8f1d
	ld (09800h),a		;8f1e
	ret po			;8f21
	cp a			;8f22
	sbc a,c			;8f23
	call z,073c4h		;8f24
	jr l8f5ah		;8f27
	add hl,de		;8f29
	adc a,c			;8f2a
	ret			;8f2b
	ret			;8f2c
	call 0f7eeh		;8f2d
	ei			;8f30
	halt			;8f31
	call m,037d9h		;8f32
	ld a,a			;8f35
	rst 30h			;8f36
	ld (hl),e		;8f37
l8f38h:
	inc sp			;8f38
	inc b			;8f39
	nop			;8f3a
	inc b			;8f3b
	ld bc,00208h		;8f3c
	inc b			;8f3f
	ld bc,00008h		;8f40
	inc b			;8f43
	add a,b			;8f44
	ex af,af'		;8f45
	ld b,b			;8f46
	inc b			;8f47
	add a,b			;8f48
	ld b,000h		;8f49
	ld (bc),a		;8f4b
	ld bc,00302h		;8f4c
	ld (bc),a		;8f4f
	rlca			;8f50
	add a,(hl)		;8f51
	rra			;8f52
	rlca			;8f53
	inc bc			;8f54
	inc bc			;8f55
	ld bc,00401h		;8f56
	nop			;8f59
l8f5ah:
	inc bc			;8f5a
	add a,b			;8f5b
	ld (bc),a		;8f5c
	ret nz			;8f5d
	ld (bc),a		;8f5e
	ret po			;8f5f
	add a,c			;8f60
	ret nz			;8f61
	inc b			;8f62
	add a,b			;8f63
	ld (bc),a		;8f64
	nop			;8f65
	add a,e			;8f66
	ret p			;8f67
	ret po			;8f68
	ret nz			;8f69
	inc bc			;8f6a
	add a,b			;8f6b
	ld (bc),a		;8f6c
	nop			;8f6d
	and a			;8f6e
	rrca			;8f6f
	ret p			;8f70
	add a,b			;8f71
	jr c,$+9		;8f72
	ld bc,00000h		;8f74
	adc a,b			;8f77
	ld b,h			;8f78
	call c,0f00ch		;8f79
	ret po			;8f7c
	nop			;8f7d
	nop			;8f7e
	ld bc,00201h		;8f7f
	rlca			;8f82
	rlca			;8f83
	inc bc			;8f84
	ld bc,00000h		;8f85
	ret nz			;8f88
	ret po			;8f89
	ld (hl),b		;8f8a
	or b			;8f8b
	or b			;8f8c
	ld b,h			;8f8d
	inc hl			;8f8e
	nop			;8f8f
	ld bc,00001h		;8f90
	inc bc			;8f93
	inc bc			;8f94
	ld bc,00003h		;8f95
	add a,003h		;8f98
	rlca			;8f9a
	rla			;8f9b
	scf			;8f9c
	dec sp			;8f9d
	add hl,sp		;8f9e
	nop			;8f9f
	nop			;8fa0
	dec c			;8fa1
	dec de			;8fa2
	scf			;8fa3
	ld (hl),a		;8fa4
	ld a,e			;8fa5
	ld a,l			;8fa6
	add hl,de		;8fa7
	adc a,c			;8fa8
	rst 8			;8fa9
	ret p			;8faa
l8fabh:
	ret nz			;8fab
	add a,b			;8fac
	adc a,a			;8fad
	rst 38h			;8fae
	call z,02824h		;8faf
	rra			;8fb2
	rlca			;8fb3
	inc bc			;8fb4
	inc bc			;8fb5
	cp 07fh			;8fb6
	ccf			;8fb8
	ccf			;8fb9
	ret po			;8fba
	ret m			;8fbb
	adc a,a			;8fbc
	rst 20h			;8fbd
	inc sp			;8fbe
	ret p			;8fbf
	inc bc			;8fc0
	inc bc			;8fc1
	rlca			;8fc2
	rra			;8fc3
	call pe,02190h		;8fc4
	add hl,de		;8fc7
	adc a,c			;8fc8
	ret			;8fc9
	ret			;8fca
	call m,0e0f0h		;8fcb
	ret po			;8fce
	inc hl			;8fcf
	inc h			;8fd0
	jr z,l9004h		;8fd1
	ccf			;8fd3
	rrca			;8fd4
	ret m			;8fd5
	ret m			;8fd6
	or c			;8fd7
	and c			;8fd8
	and c			;8fd9
	ld hl,04743h		;8fda
	rst 0			;8fdd
	adc a,c			;8fde
	inc bc			;8fdf
	rra			;8fe0
	defb 0edh ;next byte illegal after ed	;8fe1
	call m,0780fh		;8fe2
	ex (sp),hl		;8fe5
	inc sp			;8fe6
	inc hl			;8fe7
	ld b,h			;8fe8
	adc a,b			;8fe9
	sbc a,c			;8fea
	inc sp			;8feb
	ld h,024h		;8fec
	call pe,sub_8443h	;8fee
	adc a,b			;8ff1
	sbc a,c			;8ff2
	inc sp			;8ff3
	ld h,024h		;8ff4
	call pe,0771fh		;8ff6
	call z,0de18h		;8ff9
	ld a,c			;8ffc
	inc sp			;8ffd
	rra			;8ffe
	add a,a			;8fff
	ld b,c			;9000
	jp 07e00h		;9001
l9004h:
	rst 38h			;9004
l9005h:
	ld h,e			;9005
	ld sp,0ce63h		;9006
	rst 30h			;9009
	add a,h			;900a
	add a,e			;900b
	ld b,c			;900c
	jr nc,l8fabh		;900d
	jp 02081h		;900f
	ld c,(hl)		;9012
	ld e,a			;9013
	call m,07f81h		;9014
	ld a,a			;9017
	jp 05e81h		;9018
	ld a,(hl)		;901b
	ld a,(hl)		;901c
	ld a,a			;901d
	inc sp			;901e
	inc d			;901f
	inc h			;9020
	jp p,018dfh		;9021
	call z,07bf7h		;9024
	rra			;9027
	ret p			;9028
	ret m			;9029
	ret nz			;902a
	ret po			;902b
	nop			;902c
	call m,0ca0eh		;902d
	jp (hl)			;9030
	ld h,h			;9031
	ld h,h			;9032
	inc (hl)		;9033
	ld (de),a		;9034
	nop			;9035
	ld b,018h		;9036
	nop			;9038
	jr l904bh		;9039
	or h			;903b
	and h			;903c
	jp (hl)			;903d
	jp z,03bf6h		;903e
	dec e			;9041
	adc a,011h		;9042
	ld c,c			;9044
	daa			;9045
	inc de			;9046
	ret m			;9047
	ret m			;9048
	ret p			;9049
	ret nz			;904a
l904bh:
	call nz,01873h		;904b
	ld sp,l9203h		;904e
	adc a,l			;9051
	inc sp			;9052
	inc hl			;9053
	ld h,e			;9054
	rst 0			;9055
	adc a,c			;9056
	sbc a,c			;9057
	call z,03367h		;9058
	dec e			;905b
	adc a,(hl)		;905c
	ld h,a			;905d
	ld a,c			;905e
	inc bc			;905f
	ex af,af'		;9060
	and d			;9061
	sub b			;9062
	ret po			;9063
	ld a,a			;9064
	rrca			;9065
	ld bc,003f0h		;9066
	rrca			;9069
	inc e			;906a
	dec sp			;906b
	ld (hl),a		;906c
	ld l,a			;906d
	adc a,0cch		;906e
	adc a,018h		;9070
	adc a,a			;9072
	ret nz			;9073
	ret p			;9074
	rra			;9075
	cp 0f0h			;9076
	ret p			;9078
	cp 0f0h			;9079
	ret p			;907b
	inc bc			;907c
	rra			;907d
	ret p			;907e
	ld bc,01e07h		;907f
	ld sp,hl		;9082
	ld h,b			;9083
	inc bc			;9084
	ret p			;9085
	adc a,l			;9086
	nop			;9087
	rrca			;9088
	ld a,a			;9089
	rrca			;908a
	rrca			;908b
	ret nz			;908c
	ret m			;908d
	rrca			;908e
	add a,b			;908f
	ret po			;9090
	ld a,b			;9091
	rst 38h			;9092
	ld b,003h		;9093
	rrca			;9095
	sbc a,h			;9096
	pop af			;9097
	ret p			;9098
	cp 0f0h			;9099
	rlca			;909b
	rra			;909c
	inc bc			;909d
	call z,04430h		;909e
	jr $-98			;90a1
	inc b			;90a3
	add a,b			;90a4
	add a,c			;90a5
	add a,(hl)		;90a6
	halt			;90a7
	adc a,b			;90a8
	ret z			;90a9
	ret pe			;90aa
	ld l,b			;90ab
	ld h,h			;90ac
	inc (hl)		;90ad
	or h			;90ae
	or h			;90af
	ld h,h			;90b0
	ld b,h			;90b1
	ret z			;90b2
	inc bc			;90b3
	adc a,b			;90b4
	adc a,c			;90b5
	halt			;90b6
	ret p			;90b7
	rra			;90b8
	inc bc			;90b9
	rrca			;90ba
	rrca			;90bb
	cp 0f0h			;90bc
	ret p			;90be
	inc bc			;90bf
	djnz $-89		;90c0
	add hl,bc		;90c2
	rlca			;90c3
	nop			;90c4
	call m,0f0f8h		;90c5
	rlca			;90c8
	rra			;90c9
	ld a,07dh		;90ca
	adc a,h			;90cc
	rst 20h			;90cd
	adc a,0beh		;90ce
	rst 18h			;90d0
	rst 28h			;90d1
	ld (hl),c		;90d2
	cp h			;90d3
	ld hl,0f3e7h		;90d4
	rrca			;90d7
	ret m			;90d8
	ret nz			;90d9
	ret p			;90da
	ret p			;90db
	ld a,a			;90dc
	rrca			;90dd
	nop			;90de
	ld h,a			;90df
	jp 0e607h		;90e0
	sbc a,b			;90e3
	jr nz,l90edh		;90e4
	ccf			;90e6
	ex af,af'		;90e7
	ret m			;90e8
	ex af,af'		;90e9
	rra			;90ea
	and b			;90eb
	ret z			;90ec
l90edh:
	pop de			;90ed
	jp m,0071fh		;90ee
	jp 01931h		;90f1
	inc d			;90f4
	inc h			;90f5
	jp p,018dfh		;90f6
	call z,03b77h		;90f9
	ld a,a			;90fc
	ld h,b			;90fd
	rra			;90fe
	ld bc,01e1eh		;90ff
	sbc a,b			;9102
	call z,06038h		;9103
	ld h,b			;9106
	ld b,b			;9107
	ret nz			;9108
	ret nz			;9109
	add a,d			;910a
	add a,(hl)		;910b
	ld b,000h		;910c
	add a,d			;910e
	ld bc,00503h		;910f
	nop			;9112
	adc a,c			;9113
	ld a,b			;9114
	call m,0cc86h		;9115
	call pe,00b2ch		;9118
	ex af,af'		;911b
	djnz l9127h		;911c
	nop			;911e
	sub c			;911f
	ld bc,l8000h		;9120
	ret nz			;9123
	ret nz			;9124
	ret po			;9125
	ret po			;9126
l9127h:
	ret p			;9127
	ret p			;9128
	nop			;9129
	nop			;912a
	ex af,af'		;912b
	inc a			;912c
	nop			;912d
	rra			;912e
	ret m			;912f
l9130h:
	rra			;9130
l9131h:
	inc b			;9131
	nop			;9132
	add a,h			;9133
	rlca			;9134
	ccf			;9135
	ret m			;9136
	ret nz			;9137
	dec b			;9138
	nop			;9139
	add a,e			;913a
	ret po			;913b
	set 1,(hl)		;913c
	inc bc			;913e
	nop			;913f
	rst 38h			;9140
	jr nc,l915bh		;9141
	adc a,h			;9143
	adc a,(hl)		;9144
	ld a,b			;9145
	ret p			;9146
	ret po			;9147
	ret po			;9148
	ret nz			;9149
	ret nz			;914a
	add a,b			;914b
	add a,b			;914c
	nop			;914d
	inc bc			;914e
	rlca			;914f
	rrca			;9150
	rra			;9151
	ccf			;9152
	ld a,a			;9153
	ld a,(hl)		;9154
	cp 007h			;9155
	ccf			;9157
	ret m			;9158
	ret po			;9159
	add a,b			;915a
l915bh:
	rlca			;915b
	rra			;915c
	ccf			;915d
	nop			;915e
	inc bc			;915f
	rra			;9160
	call m,003e0h		;9161
	ld e,0fch		;9164
	ret po			;9166
	ld bc,01f07h		;9167
	ld (bc),a		;916a
	inc c			;916b
	inc (hl)		;916c
	adc a,099h		;916d
	ret po			;916f
	ret m			;9170
	ret nz			;9171
	ret p			;9172
	rst 20h			;9173
	rst 8			;9174
	call c,07767h		;9175
	ld (hl),a		;9178
	jr l918bh		;9179
	jr nc,l91ddh		;917b
	ret nz			;917d
	rst 0			;917e
	rst 38h			;917f
	nop			;9180
	nop			;9181
	ret nz			;9182
	sbc a,a			;9183
	rst 8			;9184
	rst 28h			;9185
	jp c,031dfh		;9186
	rra			;9189
	nop			;918a
l918bh:
	add a,b			;918b
	ret po			;918c
	rst 38h			;918d
	rst 0			;918e
	ld h,d			;918f
	ld h,036h		;9190
	inc hl			;9192
	add a,e			;9193
	ret			;9194
	call pe,0c08eh		;9195
	pop af			;9198
	rst 8			;9199
	daa			;919a
	inc de			;919b
	ld de,l8f38h		;919c
	pop bc			;919f
	ret p			;91a0
	rst 8			;91a1
	daa			;91a2
	inc de			;91a3
	ld de,00438h		;91a4
	dec c			;91a7
	add hl,sp		;91a8
	jp po,01cc6h		;91a9
	ret m			;91ac
	ret nz			;91ad
	jr nz,l9220h		;91ae
	sbc a,b			;91b0
	ret z			;91b1
	ld h,h			;91b2
	inc h			;91b3
	ld (de),a		;91b4
	ld de,01c06h		;91b5
	ld a,c			;91b8
	rlca			;91b9
	pop hl			;91ba
	add a,(hl)		;91bb
	sbc a,b			;91bc
	ld e,001h		;91bd
	rrca			;91bf
	and (hl)		;91c0
	ld a,(hl)		;91c1
	inc bc			;91c2
	ret po			;91c3
	add a,a			;91c4
	sbc a,b			;91c5
	rra			;91c6
	ret p			;91c7
	call m,0e30eh		;91c8
	ret m			;91cb
	inc e			;91cc
	rlca			;91cd
	ret nz			;91ce
	ld (bc),a		;91cf
	ld (hl),b		;91d0
	ret m			;91d1
	adc a,h			;91d2
	inc b			;91d3
	call p,01cf8h		;91d4
	ret po			;91d7
	ld (hl),e		;91d8
	or (hl)			;91d9
	ret c			;91da
	jr l91e9h		;91db
l91ddh:
	rlca			;91dd
	nop			;91de
	rlca			;91df
	ld e,078h		;91e0
	inc bc			;91e2
	ret po			;91e3
	add a,a			;91e4
	sbc a,b			;91e5
	rra			;91e6
	nop			;91e7
	inc b			;91e8
l91e9h:
	pop af			;91e9
	add a,d			;91ea
	or 091h			;91eb
	inc bc			;91ed
	call p,0f982h		;91ee
l91f1h:
	or 006h			;91f1
	pop af			;91f3
	add a,c			;91f4
	or 005h			;91f5
	pop af			;91f7
	add a,c			;91f8
	call p,03045h		;91f9
	ld c,010h		;91fc
	dec b			;91fe
	jr nc,$+5		;91ff
	pop af			;9201
	dec b			;9202
l9203h:
	djnz $+4		;9203
	pop af			;9205
	ld b,010h		;9206
	inc b			;9208
	sub b			;9209
	dec b			;920a
	ld b,b			;920b
	inc b			;920c
	ld h,b			;920d
	add a,e			;920e
	djnz l9242h		;920f
	ld sp,l9005h		;9211
	dec b			;9214
	ld b,b			;9215
	add a,c			;9216
	ld h,b			;9217
	inc bc			;9218
	sub b			;9219
	inc b			;921a
	ld b,b			;921b
	sbc a,a			;921c
	ld h,b			;921d
	sub b			;921e
	ld b,b			;921f
l9220h:
	ld b,c			;9220
	ld b,c			;9221
	sub c			;9222
	call p,0f1f6h		;9223
	cp 0feh			;9226
	ret m			;9228
	ret c			;9229
	ret c			;922a
	sub c			;922b
	or 0f1h			;922c
	cp 0f8h			;922e
	defb 0fdh,09dh ;sbc a,iyl	;9230
	push de			;9232
	exx			;9233
	sub 051h		;9234
	push af			;9236
	push af			;9237
	or 0f9h			;9238
	call p,004d5h		;923a
	push af			;923d
	and a			;923e
	or 0f9h			;923f
	ld h,h			;9241
l9242h:
	call p,0f6f9h		;9242
	pop af			;9245
	cp 0feh			;9246
	ret m			;9248
	ld sp,iy		;9249
	or 0f1h			;924b
	pop af			;924d
	cp 0f8h			;924e
	exx			;9250
	sub 0f4h		;9251
	ld sp,hl		;9253
	ld sp,hl		;9254
l9255h:
	or 0f6h			;9255
	pop af			;9257
	or 0f1h			;9258
	exx			;925a
	ld d,(hl)		;925b
	ld d,c			;925c
	push af			;925d
	or 091h			;925e
	ld sp,hl		;9260
	call p,0f6f9h		;9261
	pop af			;9264
	or 004h			;9265
	pop af			;9267
	sub l			;9268
	call p,0f6f9h		;9269
	or 0f1h			;926c
	or 0f1h			;926e
	pop af			;9270
	jr nc,l92a5h		;9271
	ld sp,0f331h		;9273
	call p,0f9f4h		;9276
	ld sp,hl		;9279
	pop af			;927a
	sub h			;927b
	sub h			;927c
	sub c			;927d
	inc b			;927e
	ld sp,hl		;927f
	ld (bc),a		;9280
	ld b,c			;9281
	add a,a			;9282
	ld h,h			;9283
	call p,0f4f9h		;9284
	ld sp,hl		;9287
	cp 0f8h			;9288
	inc bc			;928a
	ret c			;928b
	sbc a,d			;928c
	push de			;928d
	push af			;928e
	or 0f1h			;928f
	cp 0f8h			;9291
	ret c			;9293
	push de			;9294
	ld e,a			;9295
	pop af			;9296
	call p,0f1f6h		;9297
	pop af			;929a
	jp p,03221h		;929b
	ld (03130h),a		;929e
	jp p,l91f1h		;92a1
	ld h,c			;92a4
l92a5h:
	ld h,c			;92a5
	jp p,02108h		;92a6
	inc bc			;92a9
	ld h,c			;92aa
	add a,c			;92ab
	pop af			;92ac
	add hl,bc		;92ad
	ld hl,0f104h		;92ae
	add a,c			;92b1
	ld d,c			;92b2
	inc bc			;92b3
	ld e,a			;92b4
	add a,d			;92b5
	or 091h			;92b6
	inc b			;92b8
	call p,0f903h		;92b9
	ld (bc),a		;92bc
	or 082h			;92bd
	pop af			;92bf
	ld sp,03203h		;92c0
	ld (bc),a		;92c3
	ld sp,03281h		;92c4
	inc bc			;92c7
	ld sp,03283h		;92c8
	ld sp,00431h		;92cb
	djnz l9255h		;92ce
	sub c			;92d0
	ld h,c			;92d1
	sub c			;92d2
	ld h,c			;92d3
	ld h,c			;92d4
	inc bc			;92d5
	sub c			;92d6
	add a,c			;92d7
	ld h,c			;92d8
	inc bc			;92d9
	or 002h			;92da
	pop af			;92dc
	adc a,b			;92dd
	djnz l9311h		;92de
	di			;92e0
	di			;92e1
	pop af			;92e2
	ld (de),a		;92e3
	ld (00432h),a		;92e4
	jr nc,$-125		;92e7
	ld (0f307h),a		;92e9
	add a,h			;92ec
	pop af			;92ed
	ld (de),a		;92ee
	ld (00532h),a		;92ef
	jr nc,l92f9h		;92f2
	di			;92f4
	add a,e			;92f5
	ld (02121h),a		;92f6
l92f9h:
	inc bc			;92f9
	pop af			;92fa
	inc b			;92fb
	ld hl,0f282h		;92fc
	ld hl,0f104h		;92ff
	add a,d			;9302
	ld hl,00a31h		;9303
	ld (0318ah),a		;9306
	ld hl,030f1h		;9309
	ld (02132h),a		;930c
	rra			;930f
	di			;9310
l9311h:
	di			;9311
	inc bc			;9312
	ld sp,03281h		;9313
	inc bc			;9316
	ld sp,01003h		;9317
	add a,l			;931a
	sub c			;931b
	ld h,c			;931c
	sub c			;931d
	sub c			;931e
	ld h,h			;931f
	inc b			;9320
	ld b,c			;9321
	adc a,e			;9322
	sub c			;9323
	ld b,c			;9324
	ld b,c			;9325
	sub h			;9326
	ld b,c			;9327
	sub c			;9328
	jr nc,l935dh		;9329
	ld (01f21h),a		;932b
	ld b,0f3h		;932e
	ld (bc),a		;9330
	ld sp,03281h		;9331
	inc b			;9334
	jp p,0f384h		;9335
	jp p,0f1f2h		;9338
	inc bc			;933b
	jp p,0f386h		;933c
	jp p,0f1f2h		;933f
	jp p,004f2h		;9342
	pop af			;9345
	add a,e			;9346
	or 0f1h			;9347
	or 005h			;9349
	pop af			;934b
	adc a,a			;934c
	jp p,03221h		;934d
	ld (l9130h),a		;9350
	pop af			;9353
	ld sp,hl		;9354
	ld h,h			;9355
	sub c			;9356
	rst 38h			;9357
	ld b,c			;9358
	sub c			;9359
	sub b			;935a
	sub b			;935b
	inc d			;935c
l935dh:
	ld b,b			;935d
	inc bc			;935e
	sub b			;935f
	ld (bc),a		;9360
	ld h,b			;9361
	add a,c			;9362
	sub b			;9363
	dec bc			;9364
	ld b,b			;9365
	inc b			;9366
	ret nc			;9367
	add a,e			;9368
	add a,b			;9369
	ret po			;936a
	ret po			;936b
	ld b,080h		;936c
	inc bc			;936e
	defb 0fdh,081h,0d8h ;illegal sequence	;936f
	ld b,0d0h		;9372
	ld (bc),a		;9374
	ret c			;9375
	rlca			;9376
	ret nc			;9377
	add a,c			;9378
	defb 0fdh,004h,0d0h ;illegal sequence	;9379
	adc a,b			;937c
	add a,b			;937d
	ret po			;937e
	add a,b			;937f
	defb 0fdh,0e0h,080h ;illegal sequence	;9380
	ret nc			;9383
	ret nc			;9384
	inc b			;9385
	ld d,b			;9386
	add a,e			;9387
	ret nc			;9388
	add a,b			;9389
	add a,b			;938a
	inc bc			;938b
	ret po			;938c
	rlca			;938d
	ret pe			;938e
	inc bc			;938f
	ret c			;9390
	inc bc			;9391
	ret nc			;9392
	ld (bc),a		;9393
	ret c			;9394
	inc b			;9395
	ret pe			;9396
	inc bc			;9397
	ret c			;9398
	inc b			;9399
	add a,(iy-00bh)		;939a
	defb 0fdh,0d8h,0d8h ;illegal sequence	;939d
	add a,l			;93a0
	add a,l			;93a1
	inc bc			;93a2
	push hl			;93a3
	add a,h			;93a4
	add a,l			;93a5
	adc a,a			;93a6
	defb 0fdh,0fdh,004h ;illegal sequence	;93a7
	push af			;93aa
	ld (bc),a		;93ab
	ret c			;93ac
	ld (bc),a		;93ad
	ld e,(hl)		;93ae
	add a,c			;93af
	add a,l			;93b0
	inc bc			;93b1
	push hl			;93b2
	add a,d			;93b3
	add a,l			;93b4
	ret m			;93b5
	inc bc			;93b6
	defb 0fdh,003h,0f5h ;illegal sequence	;93b7
	sbc a,b			;93ba
	defb 0fdh,0f8h,0feh ;illegal sequence	;93bb
	push hl			;93be
	add a,l			;93bf
	push hl			;93c0
	push hl			;93c1
	ld sp,hl		;93c2
	call p,0fdf9h		;93c3
	ret m			;93c6
	cp 0f8h			;93c7
	ld sp,iy		;93c9
	call p,0fdf9h		;93cb
	ret m			;93ce
	cp 0f8h			;93cf
	defb 0fdh,040h,003h ;illegal sequence	;93d1
	sub b			;93d4
	add a,(hl)		;93d5
	ld h,b			;93d6
	sub b			;93d7
	ld b,b			;93d8
	sub b			;93d9
	djnz l943ch		;93da
	inc bc			;93dc
	sub b			;93dd
	inc bc			;93de
	ld h,b			;93df
	ld (bc),a		;93e0
	ld b,b			;93e1
	sub d			;93e2
	sub c			;93e3
	ld b,c			;93e4
	ld sp,hl		;93e5
	call p,061f9h		;93e6
	ld b,b			;93e9
	ld b,b			;93ea
	sub c			;93eb
	ld b,c			;93ec
	ld sp,hl		;93ed
	call p,061f9h		;93ee
	ld b,b			;93f1
	sub b			;93f2
	sub b			;93f3
	ld b,b			;93f4
	inc bc			;93f5
	sub b			;93f6
	inc bc			;93f7
	ld b,b			;93f8
	inc bc			;93f9
	sub b			;93fa
	add a,c			;93fb
	ld b,b			;93fc
	inc b			;93fd
	sub b			;93fe
	inc bc			;93ff
	ld h,b			;9400
	add a,c			;9401
	sub b			;9402
	inc b			;9403
	ld b,b			;9404
	add a,(hl)		;9405
	sub c			;9406
	ld b,c			;9407
	ld sp,hl		;9408
	call p,061f9h		;9409
	nop			;940c
	add a,d			;940d
	jr l944ch		;940e
	inc b			;9410
	add a,c			;9411
	add a,h			;9412
	inc a			;9413
	jr $+26			;9414
	inc a			;9416
	inc b			;9417
	add a,c			;9418
	add a,h			;9419
	inc a			;941a
	jr l9435h		;941b
	inc a			;941d
	inc bc			;941e
	ld a,(hl)		;941f
	add a,l			;9420
	inc a			;9421
	jr l9424h		;9422
l9424h:
	jr l9462h		;9424
	inc bc			;9426
	ld a,(hl)		;9427
	add a,l			;9428
	inc a			;9429
	jr l942ch		;942a
l942ch:
	nop			;942c
	jr c,$+5		;942d
	ld a,h			;942f
	add a,c			;9430
	jr c,$+5		;9431
	nop			;9433
	add a,c			;9434
l9435h:
	jr c,$+5		;9435
	ld a,h			;9437
	add a,c			;9438
	jr c,l943fh		;9439
	nop			;943b
l943ch:
	inc bc			;943c
	inc a			;943d
	dec b			;943e
l943fh:
	nop			;943f
	inc bc			;9440
	inc a			;9441
	inc bc			;9442
	nop			;9443
	nop			;9444
	sub (hl)		;9445
	ret nc			;9446
	add a,b			;9447
	ret c			;9448
	adc a,(hl)		;9449
	adc a,(hl)		;944a
	ret c			;944b
l944ch:
	add a,b			;944c
	ret nc			;944d
	ret nc			;944e
	add a,b			;944f
	ret c			;9450
	adc a,(hl)		;9451
	adc a,(hl)		;9452
	ret c			;9453
	add a,b			;9454
	ret nc			;9455
	ret nc			;9456
	add a,b			;9457
	add a,b			;9458
	ret po			;9459
	add a,b			;945a
	add a,b			;945b
	inc bc			;945c
	ret nc			;945d
	ld (bc),a		;945e
	add a,b			;945f
	add a,e			;9460
	ret po			;9461
l9462h:
	add a,b			;9462
	add a,b			;9463
	inc b			;9464
	ret nc			;9465
	add a,e			;9466
	add a,b			;9467
	ret po			;9468
	add a,b			;9469
	dec b			;946a
	ret nc			;946b
	add a,e			;946c
	add a,b			;946d
	ret po			;946e
	add a,b			;946f
	dec b			;9470
	ret nc			;9471
	add a,d			;9472
	add a,b			;9473
	ret po			;9474
	rlca			;9475
	add a,b			;9476
	add a,c			;9477
	ret po			;9478
	inc b			;9479
l947ah:
	add a,b			;947a
	nop			;947b
	ld (bc),a		;947c
	dec a			;947d
	call nz,0160dh		;947e
	dec sp			;9481
l9482h:
	ld (hl),e		;9482
	ret po			;9483
	ret nz			;9484
	call c,0d8dch		;9485
	jr c,l947ah		;9488
	ret po			;948a
	nop			;948b
	nop			;948c
	ccf			;948d
	ccf			;948e
	inc de			;948f
	dec c			;9490
	ld a,(de)		;9491
	ld l,02ch		;9492
	jr l9482h		;9494
	call c,0e8dch		;9496
	ret p			;9499
	ret po			;949a
	nop			;949b
	nop			;949c
	scf			;949d
	dec sp			;949e
	dec sp			;949f
	rla			;94a0
	rrca			;94a1
	rlca			;94a2
	nop			;94a3
	nop			;94a4
	call m,0c8fch		;94a5
	or b			;94a8
	ld e,b			;94a9
	ld (hl),h		;94aa
	inc (hl)		;94ab
	jr l94e9h		;94ac
	dec sp			;94ae
	dec de			;94af
	inc e			;94b0
	rrca			;94b1
	rlca			;94b2
	nop			;94b3
	nop			;94b4
	cp h			;94b5
	cp h			;94b6
	or b			;94b7
	ld l,b			;94b8
	call c,007ceh		;94b9
	inc bc			;94bc
	nop			;94bd
	cpl			;94be
	cpl			;94bf
	rla			;94c0
	ld h,000h		;94c1
	inc bc			;94c3
	cpl			;94c4
	ld (bc),a		;94c5
	call p,0e885h		;94c6
	ld h,h			;94c9
	nop			;94ca
	call p,000f4h		;94cb
	add a,h			;94ce
	ret nc			;94cf
	ret nz			;94d0
	add a,b			;94d1
	ret nz			;94d2
	inc bc			;94d3
	add a,b			;94d4
	add a,l			;94d5
	ret po			;94d6
	ret nc			;94d7
	ret nz			;94d8
	add a,b			;94d9
	ret nz			;94da
	inc b			;94db
	ret po			;94dc
	add a,e			;94dd
	ret nc			;94de
	ret po			;94df
	add a,b			;94e0
	inc bc			;94e1
	ret nz			;94e2
	add a,(hl)		;94e3
	add a,b			;94e4
	ret po			;94e5
	ret nc			;94e6
	ret nz			;94e7
	ret po			;94e8
l94e9h:
	add a,b			;94e9
	inc b			;94ea
	ret po			;94eb
	add a,h			;94ec
	ret nc			;94ed
	ret nz			;94ee
	ret po			;94ef
	add a,b			;94f0
	inc b			;94f1
	ret po			;94f2
	add a,e			;94f3
	ret nc			;94f4
	add a,b			;94f5
	add a,b			;94f6
	inc bc			;94f7
	ret nz			;94f8
	add a,(hl)		;94f9
	add a,b			;94fa
	ret po			;94fb
	ret nc			;94fc
	ret nz			;94fd
	add a,b			;94fe
	add a,b			;94ff
	inc b			;9500
	ret po			;9501
	add a,h			;9502
	ret nc			;9503
	ret nz			;9504
	add a,b			;9505
	ret nz			;9506
	inc bc			;9507
	add a,b			;9508
	ld (bc),a		;9509
	ret po			;950a
	adc a,a			;950b
	ld sp,03100h		;950c
	ld h,b			;950f
	ld h,b			;9510
	ld sp,0008dh		;9511
	ld hl,02100h		;9514
	ld h,b			;9517
	ld h,b			;9518
	ld hl,0008dh		;9519
	ex af,af'		;951c
	ret pe			;951d
	add a,l			;951e
	ret m			;951f
	inc bc			;9520
	rrca			;9521
	cp 0feh			;9522
	dec b			;9524
	inc bc			;9525
	add a,(hl)		;9526
	inc b			;9527
	cp 003h			;9528
	ld bc,000ffh		;952a
	nop			;952d
	sbc a,b			;952e
	ret pe			;952f
	adc a,l			;9530
	push de			;9531
	rst 38h			;9532
	call po,sub_9649h	;9533
	rst 38h			;9536
	push de			;9537
	push af			;9538
	push af			;9539
	defb 0fdh,098h,086h ;illegal sequence	;953a
	add a,c			;953d
	rst 28h			;953e
	adc a,l			;953f
	push de			;9540
	push af			;9541
	push af			;9542
	ld sp,hl		;9543
	or 01fh			;9544
	rra			;9546
	nop			;9547
	add a,c			;9548
	adc a,b			;9549
	inc bc			;954a
	xor e			;954b
	add a,h			;954c
	inc sp			;954d
	call c,07f7fh		;954e
	inc b			;9551
	and d			;9552
	ld (bc),a		;9553
	cp (hl)			;9554
	ld (bc),a		;9555
	cp 004h			;9556
	ld b,l			;9558
	ld (bc),a		;9559
	ld a,l			;955a
	ld (bc),a		;955b
	ld a,a			;955c
	add a,c			;955d
	xor 003h		;955e
	ld hl,(0cc82h)		;9560
	dec sp			;9563
	dec b			;9564
	cp 082h			;9565
	ld a,a			;9567
	rra			;9568
	inc bc			;9569
	rlca			;956a
	inc bc			;956b
	ld a,a			;956c
	add a,d			;956d
	cp 0f8h			;956e
	inc bc			;9570
	ret po			;9571
	inc b			;9572
	and d			;9573
	ld (bc),a		;9574
	cp (hl)			;9575
	add a,d			;9576
	add a,e			;9577
	ld b,(hl)		;9578
	inc b			;9579
	ld b,l			;957a
	sbc a,c			;957b
	ld a,l			;957c
	ld (bc),a		;957d
	inc c			;957e
	jr nc,l9600h		;957f
	ld a,a			;9581
	ccf			;9582
	ccf			;9583
	rra			;9584
	rlca			;9585
	ld bc,0fe00h		;9586
	cp 0fch			;9589
	call m,0e0f8h		;958b
	add a,b			;958e
	nop			;958f
	ld a,a			;9590
	ld a,a			;9591
	ld a,03ch		;9592
	jr $+5			;9594
	nop			;9596
	add a,h			;9597
	jr c,l95abh		;9598
	ex de,hl		;959a
	ld c,c			;959b
	inc b			;959c
	nop			;959d
	add a,d			;959e
	rra			;959f
	inc bc			;95a0
	ld b,000h		;95a1
	ld (bc),a		;95a3
	cp 083h			;95a4
	ld a,h			;95a6
	inc e			;95a7
	ex af,af'		;95a8
	inc bc			;95a9
	nop			;95aa
l95abh:
	nop			;95ab
	ld (bc),a		;95ac
	rra			;95ad
	and c			;95ae
	ld l,a			;95af
	sbc a,a			;95b0
	call p,051f5h		;95b1
	pop de			;95b4
	pop af			;95b5
	or 0f9h			;95b6
	call p,05ffeh		;95b8
	pop de			;95bb
	add a,(hl)		;95bc
	pop af			;95bd
	or 0f9h			;95be
	call p,05ffeh		;95c0
	pop de			;95c3
	adc a,c			;95c4
	pop af			;95c5
	pop af			;95c6
	or 0f9h			;95c7
	call p,051f5h		;95c9
l95cch:
	pop de			;95cc
	jp (hl)			;95cd
	add a,h			;95ce
	sbc a,003h		;95cf
	push de			;95d1
	add a,l			;95d2
	adc a,l			;95d3
	ret pe			;95d4
	jp (hl)			;95d5
	add a,h			;95d6
	sbc a,003h		;95d7
	push de			;95d9
	sub h			;95da
	adc a,l			;95db
	ret pe			;95dc
	pop af			;95dd
	or 0f9h			;95de
	call p,05ffeh		;95e0
	defb 0fdh,0f8h,0f1h ;illegal sequence	;95e3
	or 0f9h			;95e6
	call p,0f5feh		;95e8
	defb 0fdh,0f8h,086h ;illegal sequence	;95eb
	exx			;95ee
	inc b			;95ef
	ld d,b			;95f0
	ld (bc),a		;95f1
	ret nc			;95f2
	add a,d			;95f3
	add a,(hl)		;95f4
	exx			;95f5
	inc b			;95f6
	ld d,b			;95f7
	ld (bc),a		;95f8
	ret nc			;95f9
	add a,h			;95fa
	add a,(hl)		;95fb
	exx			;95fc
	ld d,b			;95fd
	ret nc			;95fe
	inc b			;95ff
l9600h:
	add a,b			;9600
	add a,e			;9601
	cp 0f8h			;9602
	ret nc			;9604
	dec b			;9605
	add a,b			;9606
	add a,c			;9607
	ret po			;9608
	rlca			;9609
	add a,b			;960a
	add a,h			;960b
	add a,(hl)		;960c
	exx			;960d
	ld d,b			;960e
	ret nc			;960f
	inc b			;9610
	add a,b			;9611
	nop			;9612
	add a,d			;9613
	nop			;9614
	xor d			;9615
	inc b			;9616
	rst 38h			;9617
	sbc a,d			;9618
	xor d			;9619
	nop			;961a
	inc a			;961b
	ld a,(hl)		;961c
	inc a			;961d
	ld a,(hl)		;961e
	inc a			;961f
	ld a,(hl)		;9620
	inc a			;9621
	ld a,(hl)		;9622
	inc hl			;9623
	inc h			;9624
	jr z,l9698h		;9625
	rst 20h			;9627
	rst 18h			;9628
	ret p			;9629
	rla			;962a
	rra			;962b
	call p,0ff03h		;962c
	rra			;962f
	add a,a			;9630
	ex (sp),hl		;9631
	inc sp			;9632
	nop			;9633
	djnz l95cch		;9634
	add a,d			;9636
	ld sp,hl		;9637
	or 004h			;9638
	pop af			;963a
	adc a,d			;963b
	ld sp,hl		;963c
	ld h,c			;963d
	ld sp,hl		;963e
	ld h,c			;963f
	pop af			;9640
	pop af			;9641
	or 0f9h			;9642
	ld sp,hl		;9644
	call p,sub_80ffh+1	;9645
	nop			;9648
sub_9649h:
	inc b			;9649
	ld bc,0ff03h		;964a
	adc a,l			;964d
	ret nz			;964e
	sbc a,(hl)		;964f
	ld a,(hl)		;9650
	ld a,01eh		;9651
	adc a,a			;9653
	ret nz			;9654
	ret po			;9655
	rst 38h			;9656
	rst 38h			;9657
	nop			;9658
	nop			;9659
	rst 38h			;965a
	inc bc			;965b
	nop			;965c
	add a,e			;965d
	ret m			;965e
	ret po			;965f
	ret nz			;9660
	dec b			;9661
	add a,b			;9662
	adc a,e			;9663
	ld bc,0fc07h		;9664
	cp 03dh			;9667
	add hl,sp		;9669
	inc sp			;966a
	rlca			;966b
	nop			;966c
	rst 38h			;966d
	nop			;966e
	dec b			;966f
	rst 38h			;9670
	adc a,e			;9671
	inc bc			;9672
	ld a,c			;9673
	ld a,(hl)		;9674
	ld a,h			;9675
	ld a,b			;9676
	pop af			;9677
	inc bc			;9678
	rlca			;9679
	rra			;967a
	rlca			;967b
	inc bc			;967c
	ld b,001h		;967d
	add a,a			;967f
	pop bc			;9680
	pop af			;9681
	ld sp,hl		;9682
	ld sp,hl		;9683
	pop af			;9684
	pop af			;9685
	pop hl			;9686
	inc bc			;9687
	cp a			;9688
	ld (bc),a		;9689
	rst 18h			;968a
	adc a,h			;968b
	call pe,0fcf0h		;968c
	pop hl			;968f
	pop bc			;9690
	pop bc			;9691
	add a,e			;9692
	inc bc			;9693
	rlca			;9694
	rrca			;9695
	ccf			;9696
	rst 38h			;9697
l9698h:
	ld b,000h		;9698
	ld (bc),a		;969a
	rst 38h			;969b
	ld b,021h		;969c
	add a,c			;969e
	rst 38h			;969f
	rlca			;96a0
	ret m			;96a1
	dec b			;96a2
	rst 38h			;96a3
	ld (bc),a		;96a4
	adc a,e			;96a5
	ld b,0ffh		;96a6
	ld (bc),a		;96a8
	ret pe			;96a9
	ld b,0ffh		;96aa
	ld (bc),a		;96ac
	adc a,b			;96ad
	inc bc			;96ae
	rst 38h			;96af
	add a,e			;96b0
	ccf			;96b1
	rrca			;96b2
	inc bc			;96b3
	inc b			;96b4
	ld bc,0ff05h		;96b5
	add a,d			;96b8
	ccf			;96b9
	rrca			;96ba
	dec b			;96bb
	ld bc,00387h		;96bc
	rrca			;96bf
	ccf			;96c0
	rst 38h			;96c1
	ld bc,03f0fh		;96c2
	ld a,(bc)		;96c5
	rst 38h			;96c6
	add a,a			;96c7
	defb 0fdh,0f1h,081h ;illegal sequence	;96c8
	rst 38h			;96cb
	call m,0c0f0h		;96cc
	inc b			;96cf
	nop			;96d0
	add a,e			;96d1
	add a,c			;96d2
	pop af			;96d3
	defb 0fdh,006h,0ffh ;illegal sequence	;96d4
	sbc a,(hl)		;96d7
	cp 0fch			;96d8
	ret m			;96da
	ret p			;96db
	ret po			;96dc
	ret nz			;96dd
	add a,b			;96de
	rst 38h			;96df
	ld a,a			;96e0
	ccf			;96e1
	rra			;96e2
	rrca			;96e3
	rlca			;96e4
	inc bc			;96e5
	ld bc,00301h		;96e6
	rlca			;96e9
	rrca			;96ea
	rra			;96eb
	ccf			;96ec
	ld a,a			;96ed
	rst 38h			;96ee
	ld bc,0f803h		;96ef
	ret p			;96f2
	ret po			;96f3
	ret nz			;96f4
	add a,b			;96f5
	ld a,(bc)		;96f6
	nop			;96f7
	ld b,080h		;96f8
	sub (hl)		;96fa
	nop			;96fb
	inc c			;96fc
	ld b,0feh		;96fd
	call m,0f1f8h		;96ff
	ex (sp),hl		;9702
	rst 20h			;9703
	add a,b			;9704
	ret po			;9705
	ccf			;9706
	ld a,a			;9707
	cp (hl)			;9708
	sbc a,(hl)		;9709
	adc a,0e0h		;970a
	rst 38h			;970c
l970dh:
	nop			;970d
	nop			;970e
	rst 38h			;970f
	rst 38h			;9710
	ld b,000h		;9711
	add a,d			;9713
	rst 38h			;9714
	nop			;9715
	inc bc			;9716
	rst 38h			;9717
	add a,e			;9718
	nop			;9719
	rst 38h			;971a
	rst 38h			;971b
	dec b			;971c
	nop			;971d
	dec b			;971e
	rrca			;971f
	inc bc			;9720
	nop			;9721
	adc a,b			;9722
	ld a,(hl)		;9723
	jp nz,l98a3h+1		;9724
	sbc a,b			;9727
	and h			;9728
	jp nz,005ffh		;9729
	xor d			;972c
	dec b			;972d
	rst 38h			;972e
	ld (bc),a		;972f
	add a,c			;9730
	add a,l			;9731
	rst 38h			;9732
	add a,c			;9733
	add a,c			;9734
	rst 38h			;9735
	rst 38h			;9736
	inc b			;9737
	ret po			;9738
	dec b			;9739
	rst 38h			;973a
	ld d,03ch		;973b
	add a,e			;973d
	rst 38h			;973e
	nop			;973f
	rst 38h			;9740
	inc bc			;9741
	nop			;9742
	add a,e			;9743
	rst 38h			;9744
	nop			;9745
	nop			;9746
	inc bc			;9747
	ret nz			;9748
	add a,c			;9749
	nop			;974a
	djnz l970dh		;974b
	inc bc			;974d
	rst 38h			;974e
	inc bc			;974f
	add a,c			;9750
	add a,c			;9751
	rst 38h			;9752
	inc bc			;9753
	add a,c			;9754
	add a,c			;9755
	rst 38h			;9756
	inc bc			;9757
	add a,c			;9758
	add a,e			;9759
	rst 38h			;975a
	add a,c			;975b
	add a,c			;975c
	inc bc			;975d
	rst 38h			;975e
	ld (bc),a		;975f
	add a,c			;9760
	adc a,d			;9761
	rst 20h			;9762
	inc h			;9763
	inc a			;9764
	inc h			;9765
	inc a			;9766
	add a,b			;9767
	add a,e			;9768
	adc a,a			;9769
	sbc a,a			;976a
	sbc a,a			;976b
	inc bc			;976c
	cp a			;976d
	add a,e			;976e
	rst 38h			;976f
	push de			;9770
	push de			;9771
	inc b			;9772
	add a,b			;9773
	add a,c			;9774
	rst 38h			;9775
	dec b			;9776
	ret m			;9777
	add a,(hl)		;9778
	ld a,b			;9779
	or b			;977a
	ret nz			;977b
	rlca			;977c
	rlca			;977d
	inc bc			;977e
	dec b			;977f
	nop			;9780
	ld (bc),a		;9781
	ret po			;9782
	add a,c			;9783
	ret nz			;9784
	dec b			;9785
	nop			;9786
	add a,l			;9787
	ld e,040h		;9788
	add a,c			;978a
	add a,c			;978b
	pop bc			;978c
	inc b			;978d
	rst 38h			;978e
	add a,c			;978f
	nop			;9790
	inc b			;9791
	add a,b			;9792
	add a,c			;9793
	nop			;9794
	dec b			;9795
	rst 38h			;9796
	adc a,c			;9797
	nop			;9798
	rst 38h			;9799
	nop			;979a
	nop			;979b
	inc a			;979c
	rst 38h			;979d
	and l			;979e
	and l			;979f
	rst 38h			;97a0
	ex af,af'		;97a1
	inc a			;97a2
	add a,e			;97a3
	nop			;97a4
	inc a			;97a5
	nop			;97a6
	dec b			;97a7
	rst 38h			;97a8
	add a,(hl)		;97a9
	inc bc			;97aa
	rlca			;97ab
	rlca			;97ac
	inc bc			;97ad
	dec c			;97ae
	ld e,005h		;97af
	rra			;97b1
	ld (bc),a		;97b2
	cp 002h			;97b3
	call m,0f802h		;97b5
	ld a,(bc)		;97b8
	ret p			;97b9
	dec b			;97ba
	nop			;97bb
	add a,(hl)		;97bc
	ret nz			;97bd
	ret po			;97be
	ret po			;97bf
	ret nz			;97c0
	or b			;97c1
	ld a,b			;97c2
	dec b			;97c3
	ret m			;97c4
	add a,c			;97c5
	rst 38h			;97c6
	dec b			;97c7
	nop			;97c8
	ld (bc),a		;97c9
	rst 38h			;97ca
	add a,c			;97cb
	nop			;97cc
	inc b			;97cd
	cp 002h			;97ce
	nop			;97d0
	add a,c			;97d1
	rst 38h			;97d2
	inc b			;97d3
	ld bc,00303h		;97d4
	add a,l			;97d7
	rlca			;97d8
	rst 38h			;97d9
	ld l,l			;97da
	ld l,l			;97db
	rst 38h			;97dc
	dec b			;97dd
	nop			;97de
	ld (bc),a		;97df
	adc a,b			;97e0
	inc b			;97e1
	rlca			;97e2
	ld (bc),a		;97e3
	nop			;97e4
	ld (bc),a		;97e5
	cp e			;97e6
	inc bc			;97e7
	ld hl,0ff03h		;97e8
	ld (bc),a		;97eb
	and l			;97ec
	add a,c			;97ed
	rst 38h			;97ee
	inc bc			;97ef
	and l			;97f0
	add a,c			;97f1
	rst 38h			;97f2
	ld b,0aah		;97f3
	sub b			;97f5
	xor e			;97f6
	xor d			;97f7
	ret p			;97f8
	ret p			;97f9
	ret m			;97fa
	ret m			;97fb
	call m,0fefch		;97fc
	cp 00fh			;97ff
	rrca			;9801
	rra			;9802
	rra			;9803
	ccf			;9804
	ccf			;9805
	ld b,07fh		;9806
	ld (bc),a		;9808
	ret nz			;9809
	ld (bc),a		;980a
	ret po			;980b
	ld (bc),a		;980c
	ld bc,00302h		;980d
	ld (bc),a		;9810
	rlca			;9811
	add a,h			;9812
	rrca			;9813
	rst 38h			;9814
	rst 38h			;9815
	rra			;9816
	inc bc			;9817
	ccf			;9818
	ld (bc),a		;9819
	ld a,a			;981a
	ld (bc),a		;981b
	rst 38h			;981c
	add a,c			;981d
	ret m			;981e
	inc bc			;981f
	call m,0fe02h		;9820
	ld (bc),a		;9823
	rst 38h			;9824
	inc bc			;9825
	cp 003h			;9826
	call m,0ff81h		;9828
	nop			;982b
	add a,e			;982c
	rrca			;982d
l982eh:
	pop af			;982e
	pop af			;982f
	ld b,0f0h		;9830
	ld b,0f1h		;9832
	inc b			;9834
	ret p			;9835
	ld a,(bc)		;9836
	ld bc,0f104h		;9837
	add a,(hl)		;983a
	djnz l982eh		;983b
	pop af			;983d
	ret p			;983e
	pop af			;983f
	pop af			;9840
	ld a,(bc)		;9841
	ret p			;9842
	ld b,0f1h		;9843
	ld (006f0h),a		;9845
	ld bc,0f106h		;9848
	rlca			;984b
	ret p			;984c
	add a,c			;984d
	pop af			;984e
	rlca			;984f
	ret p			;9850
	add a,c			;9851
	pop af			;9852
	inc b			;9853
	ret p			;9854
	ld b,a			;9855
	ret m			;9856
	ld a,(bc)		;9857
	defb 0fdh,083h,0d1h ;illegal sequence	;9858
	jp nc,00bd1h		;985b
	jp nc,0ff85h		;985e
	ld hl,01021h		;9861
	djnz l986bh		;9864
	rrca			;9866
	dec b			;9867
	pop af			;9868
	adc a,c			;9869
	ret p			;986a
l986bh:
	pop af			;986b
	djnz $-13		;986c
	pop af			;986e
	ret p			;986f
	pop af			;9870
	pop af			;9871
	ret p			;9872
	inc b			;9873
	ld (de),a		;9874
	ld b,00fh		;9875
	dec bc			;9877
	ld hl,01004h		;9878
	ld (bc),a		;987b
	ld hl,01081h		;987c
	dec b			;987f
	rrca			;9880
	ex af,af'		;9881
	pop af			;9882
	ld (bc),a		;9883
	jp p,0f181h		;9884
	ld b,0f0h		;9887
	inc bc			;9889
	pop af			;988a
	add a,c			;988b
	jp p,0f105h		;988c
	rlca			;988f
	ret p			;9890
	add a,e			;9891
	djnz l98b5h		;9892
	djnz $+17		;9894
	ld hl,01082h		;9896
	ld hl,01007h		;9899
	inc b			;989c
	rrca			;989d
	ld (bc),a		;989e
	djnz l98a3h		;989f
	rrca			;98a1
	adc a,b			;98a2
l98a3h:
	ld hl,00f10h		;98a3
	ld bc,01212h		;98a6
	ld bc,00301h		;98a9
	ret p			;98ac
	add a,h			;98ad
	ld bc,01212h		;98ae
	ld bc,0f004h		;98b1
	adc a,c			;98b4
l98b5h:
	jp p,0f0f1h		;98b5
	ret p			;98b8
	jp p,0f0f1h		;98b9
	ret p			;98bc
	pop af			;98bd
	inc bc			;98be
	ret p			;98bf
	add a,c			;98c0
	pop af			;98c1
	inc b			;98c2
	ret p			;98c3
	add a,c			;98c4
	jp p,0f110h		;98c5
	add a,h			;98c8
	ret p			;98c9
	jp p,0f1f1h		;98ca
	inc bc			;98cd
	ret p			;98ce
	add a,d			;98cf
	add a,b			;98d0
	ret nc			;98d1
	dec d			;98d2
	sub b			;98d3
	add a,e			;98d4
	exx			;98d5
	ld sp,hl		;98d6
	ld sp,hl		;98d7
	dec b			;98d8
	add hl,bc		;98d9
	ld (bc),a		;98da
	jp p,02102h		;98db
	add a,c			;98de
	djnz $+5		;98df
	rrca			;98e1
	add hl,bc		;98e2
	ld hl,0f202h		;98e3
	ld (bc),a		;98e6
	pop af			;98e7
	add a,c			;98e8
	ld hl,01003h		;98e9
	add a,d			;98ec
	rrca			;98ed
	djnz $+12		;98ee
	rrca			;98f0
	rlca			;98f1
	ret po			;98f2
	sub c			;98f3
	add a,b			;98f4
	ret nc			;98f5
	sub b			;98f6
	ret p			;98f7
	jp p,0d292h		;98f8
	add a,d			;98fb
	jp nc,09292h		;98fc
	jp p,01201h		;98ff
	ld (de),a		;9902
	ld bc,00801h		;9903
	ret p			;9906
	inc b			;9907
	ret po			;9908
	inc b			;9909
	add a,b			;990a
	add a,l			;990b
	ret nc			;990c
	sub b			;990d
	ret p			;990e
	cpl			;990f
	cpl			;9910
	dec b			;9911
	pop af			;9912
	inc bc			;9913
	cpl			;9914
	ld (bc),a		;9915
	rra			;9916
	inc b			;9917
	rrca			;9918
	add a,a			;9919
	jp p,0d292h		;991a
	add a,d			;991d
	pop de			;991e
	sub d			;991f
	sub c			;9920
	inc bc			;9921
	pop af			;9922
	add a,c			;9923
	ret p			;9924
	inc bc			;9925
	djnz $+6		;9926
	rra			;9928
	add a,h			;9929
	rrca			;992a
l992bh:
	ld hl,01010h		;992b
	inc bc			;992e
	rrca			;992f
	add a,e			;9930
	pop af			;9931
	ret p			;9932
	pop af			;9933
	dec b			;9934
	ret p			;9935
	add a,l			;9936
	jp p,0f1f1h		;9937
	jp p,003f2h		;993a
	pop af			;993d
	ld (bc),a		;993e
	jp p,0f102h		;993f
	inc bc			;9942
	ret p			;9943
	sbc a,d			;9944
	pop af			;9945
	ret nc			;9946
	add a,c			;9947
	ret po			;9948
	add a,b			;9949
	rst 18h			;994a
	ret nc			;994b
	sub b			;994c
	pop af			;994d
	ret nc			;994e
	add a,c			;994f
	ret po			;9950
	add a,b			;9951
	rst 18h			;9952
	ret nc			;9953
	sbc a,a			;9954
	cpl			;9955
	add hl,hl		;9956
	dec l			;9957
	jr z,l992bh		;9958
	sub d			;995a
	sub c			;995b
	pop af			;995c
	ret m			;995d
	ret m			;995e
	inc bc			;995f
	defb 0fdh,005h,0f9h ;illegal sequence	;9960
	add a,e			;9963
	defb 0fdh,0f8h,0fdh ;illegal sequence	;9964
	dec b			;9967
	ld sp,hl		;9968
	add a,e			;9969
	defb 0fdh,0f8h,0fdh ;illegal sequence	;996a
	dec b			;996d
	ld sp,hl		;996e
	add a,e			;996f
	defb 0fdh,0f8h,0fdh ;illegal sequence	;9970
	inc bc			;9973
	ld sp,hl		;9974
	nop			;9975
	ret nc			;9976
	call m,0f098h		;9977
	sub b			;997a
	sub b			;997b
	ret p			;997c
	sbc a,b			;997d
	call m,0193fh		;997e
	rrca			;9981
	add hl,bc		;9982
	add hl,bc		;9983
	rrca			;9984
	add hl,de		;9985
	ccf			;9986
	ret po			;9987
	ld c,004h		;9988
	add a,d			;998a
	ld b,c			;998b
	inc hl			;998c
	cp 0ech			;998d
	xor b			;998f
	cp b			;9990
	or b			;9991
	ret p			;9992
	ret p			;9993
	or b			;9994
	cp b			;9995
	xor b			;9996
	call pe,027feh		;9997
	ld b,e			;999a
	add a,d			;999b
	call m,0f107h		;999c
	rst 20h			;999f
	inc h			;99a0
	inc h			;99a1
	ld h,(hl)		;99a2
	jp 00103h		;99a3
	ld h,b			;99a6
	ret p			;99a7
	ret p			;99a8
	ld h,b			;99a9
	ld bc,00f03h		;99aa
	ld a,a			;99ad
l99aeh:
	rst 38h			;99ae
	dec d			;99af
	dec e			;99b0
	dec c			;99b1
	rrca			;99b2
	rrca			;99b3
	dec c			;99b4
	dec e			;99b5
	dec d			;99b6
	scf			;99b7
	ld a,a			;99b8
	call po,041c2h		;99b9
	jr nz,l99aeh		;99bc
	ld (hl),b		;99be
	rlca			;99bf
	ld (hl),b		;99c0
	jr nz,l9a04h		;99c1
	add a,d			;99c3
	call nz,0377fh		;99c4
	nop			;99c7
	inc bc			;99c8
	cp 003h			;99c9
	jp m,0f502h		;99cb
	ld (bc),a		;99ce
	cp 003h			;99cf
	jp m,0f503h		;99d1
	add a,(hl)		;99d4
	defb 0edh ;next byte illegal after ed	;99d5
	sbc a,b			;99d6
	ret m			;99d7
	defb 0fdh,0fdh,0f9h ;illegal sequence	;99d8
	add hl,bc		;99db
	call p,0f603h		;99dc
	adc a,l			;99df
	ret m			;99e0
	defb 0fdh,0fdh,0d9h ;illegal sequence	;99e1
	defb 0fdh,098h,0fdh ;illegal sequence	;99e4
	ret m			;99e7
	ld sp,iy		;99e8
	or 064h			;99ea
	ld h,h			;99ec
	inc b			;99ed
	call po,06405h		;99ee
	rlca			;99f1
	or 003h			;99f2
	di			;99f4
	adc a,(hl)		;99f5
	ret m			;99f6
	defb 0fdh,0fdh,0f9h ;illegal sequence	;99f7
	ld sp,hl		;99fa
	exx			;99fb
	defb 0edh ;next byte illegal after ed	;99fc
	sbc a,b			;99fd
	ret m			;99fe
	defb 0fdh,0fdh,0f9h ;illegal sequence	;99ff
	or 0f6h			;9a02
l9a04h:
	nop			;9a04
	cp b			;9a05
	nop			;9a06
	pop hl			;9a07
	pop hl			;9a08
	ld bc,00c0ch		;9a09
	ld h,b			;9a0c
	nop			;9a0d
	nop			;9a0e
	jp 003c3h		;9a0f
	nop			;9a12
	jr l9a15h		;9a13
l9a15h:
	nop			;9a15
	jr l9a19h		;9a16
	add hl,sp		;9a18
l9a19h:
	jr c,l9a1bh		;9a19
l9a1bh:
	add a,(hl)		;9a1b
	add a,(hl)		;9a1c
	nop			;9a1d
	nop			;9a1e
	inc sp			;9a1f
	inc bc			;9a20
	nop			;9a21
	ld a,b			;9a22
	ld a,b			;9a23
	nop			;9a24
	nop			;9a25
	add a,b			;9a26
	add a,c			;9a27
	cp c			;9a28
	cp b			;9a29
	add a,b			;9a2a
	adc a,h			;9a2b
	adc a,h			;9a2c
	add a,b			;9a2d
	ld bc,00703h		;9a2e
	rrca			;9a31
	rra			;9a32
	ccf			;9a33
	ld a,a			;9a34
	ld bc,00603h		;9a35
	inc c			;9a38
	jr l9a73h		;9a39
	ld h,h			;9a3b
	jp nz,00481h		;9a3c
	rst 20h			;9a3f
	add a,c			;9a40
	inc h			;9a41
	inc bc			;9a42
	rst 20h			;9a43
	add a,e			;9a44
	add a,b			;9a45
	rst 38h			;9a46
	rst 38h			;9a47
	dec b			;9a48
	add a,b			;9a49
	adc a,b			;9a4a
	nop			;9a4b
	rst 38h			;9a4c
	rst 38h			;9a4d
	nop			;9a4e
	ld (hl),b		;9a4f
	ld (hl),b		;9a50
	nop			;9a51
	jr l9a57h		;9a52
	nop			;9a54
	inc b			;9a55
	rst 38h			;9a56
l9a57h:
	ld (bc),a		;9a57
	nop			;9a58
	ld (bc),a		;9a59
	rst 38h			;9a5a
	ld (bc),a		;9a5b
	nop			;9a5c
	ld (bc),a		;9a5d
	ld (hl),b		;9a5e
	ld (bc),a		;9a5f
	nop			;9a60
	rlca			;9a61
	cp 086h			;9a62
	nop			;9a64
	inc sp			;9a65
	inc bc			;9a66
	nop			;9a67
	ld a,b			;9a68
	ld a,b			;9a69
	inc bc			;9a6a
	nop			;9a6b
	ld (bc),a		;9a6c
	pop hl			;9a6d
	add a,(hl)		;9a6e
	ld bc,00c0ch		;9a6f
	ld h,b			;9a72
l9a73h:
	nop			;9a73
	nop			;9a74
	inc bc			;9a75
	ret nz			;9a76
	add a,l			;9a77
	ld e,000h		;9a78
	ld e,01eh		;9a7a
	nop			;9a7c
	inc bc			;9a7d
	ret p			;9a7e
	add a,h			;9a7f
	nop			;9a80
	inc bc			;9a81
	inc bc			;9a82
	nop			;9a83
	ex af,af'		;9a84
	cp 098h			;9a85
	call m,000e0h		;9a87
	jp 02466h		;9a8a
	inc h			;9a8d
	rst 20h			;9a8e
	add a,c			;9a8f
	jp 03c66h		;9a90
	jr l9aa1h		;9a93
	ld b,003h		;9a95
	ld bc,0c080h		;9a97
	ret po			;9a9a
	ret p			;9a9b
	ret m			;9a9c
	call m,005feh		;9a9d
	sbc a,h			;9aa0
l9aa1h:
	add a,e			;9aa1
	inc e			;9aa2
	pop hl			;9aa3
	nop			;9aa4
	rlca			;9aa5
	inc bc			;9aa6
	ld b,0ffh		;9aa7
	ld (bc),a		;9aa9
	nop			;9aaa
	ld (bc),a		;9aab
	rst 38h			;9aac
	ld (bc),a		;9aad
	nop			;9aae
	ld b,0ffh		;9aaf
	rrca			;9ab1
	ccf			;9ab2
	rlca			;9ab3
	ld a,a			;9ab4
	inc bc			;9ab5
	rst 38h			;9ab6
	inc d			;9ab7
	nop			;9ab8
	ld (bc),a		;9ab9
	rst 38h			;9aba
	ld b,001h		;9abb
	add a,(hl)		;9abd
	rst 38h			;9abe
	nop			;9abf
	rst 38h			;9ac0
	nop			;9ac1
l9ac2h:
	nop			;9ac2
	rst 38h			;9ac3
	inc bc			;9ac4
	nop			;9ac5
	sub l			;9ac6
	rst 38h			;9ac7
	rra			;9ac8
	ld e,01eh		;9ac9
	rra			;9acb
	inc e			;9acc
	inc e			;9acd
	rra			;9ace
	rra			;9acf
	rst 38h			;9ad0
	nop			;9ad1
	nop			;9ad2
	rst 38h			;9ad3
	rst 38h			;9ad4
	nop			;9ad5
	rst 38h			;9ad6
	nop			;9ad7
	ld c,00eh		;9ad8
	ld de,003ffh		;9ada
	add a,c			;9add
	add a,c			;9ade
	rst 38h			;9adf
	dec c			;9ae0
	ld a,a			;9ae1
	ld b,000h		;9ae2
	dec b			;9ae4
	ld a,a			;9ae5
	ld (bc),a		;9ae6
	rst 38h			;9ae7
	dec b			;9ae8
	ld a,a			;9ae9
	ld (bc),a		;9aea
	rst 38h			;9aeb
	dec b			;9aec
	ld a,a			;9aed
	ld (bc),a		;9aee
	nop			;9aef
	dec b			;9af0
	ld bc,0ff06h		;9af1
	dec b			;9af4
	ld bc,l8190h		;9af5
	jp 03c66h		;9af8
	jr l9b2dh		;9afb
	ld h,b			;9afd
	ret nz			;9afe
	add a,b			;9aff
	ld bc,00703h		;9b00
	rrca			;9b03
	rra			;9b04
	ccf			;9b05
	ld a,a			;9b06
	inc bc			;9b07
	nop			;9b08
	adc a,a			;9b09
	rst 38h			;9b0a
	adc a,a			;9b0b
	adc a,a			;9b0c
	rst 38h			;9b0d
	rst 20h			;9b0e
	rst 20h			;9b0f
	rst 38h			;9b10
	adc a,a			;9b11
	adc a,a			;9b12
	rst 38h			;9b13
	nop			;9b14
	nop			;9b15
	rst 38h			;9b16
	ld a,a			;9b17
	nop			;9b18
	inc b			;9b19
	ccf			;9b1a
	adc a,b			;9b1b
	jr l9ac2h		;9b1c
	cp 0feh			;9b1e
	rst 38h			;9b20
	add a,b			;9b21
	add a,b			;9b22
	nop			;9b23
	inc bc			;9b24
	cp 005h			;9b25
	rst 38h			;9b27
	ld (bc),a		;9b28
	cp 08bh			;9b29
	rst 38h			;9b2b
	nop			;9b2c
l9b2dh:
	nop			;9b2d
	rst 38h			;9b2e
	rst 38h			;9b2f
	adc a,a			;9b30
	adc a,a			;9b31
	rst 38h			;9b32
	rst 38h			;9b33
	adc a,a			;9b34
	adc a,a			;9b35
	inc b			;9b36
	nop			;9b37
	add a,c			;9b38
	rst 38h			;9b39
	inc bc			;9b3a
	add a,b			;9b3b
	adc a,l			;9b3c
	ret nz			;9b3d
	ret p			;9b3e
	call m,007ffh		;9b3f
	rst 38h			;9b42
	xor a			;9b43
	xor a			;9b44
	ret pe			;9b45
	add hl,hl		;9b46
	add hl,hl		;9b47
	scf			;9b48
	ret po			;9b49
	ex af,af'		;9b4a
	ret p			;9b4b
	ex af,af'		;9b4c
	ld de,04088h		;9b4d
	ld h,b			;9b50
	ld (hl),b		;9b51
	rrca			;9b52
	rrca			;9b53
	rst 38h			;9b54
	ret nz			;9b55
	ret nz			;9b56
	ld b,001h		;9b57
	inc bc			;9b59
	rst 38h			;9b5a
	add a,c			;9b5b
	nop			;9b5c
	ld b,0feh		;9b5d
	inc b			;9b5f
	ld b,d			;9b60
	adc a,c			;9b61
	jp 0e1f3h		;9b62
	ld b,b			;9b65
	rra			;9b66
	rra			;9b67
	dec b			;9b68
	dec b			;9b69
	rst 38h			;9b6a
	inc bc			;9b6b
	rra			;9b6c
	ld (bc),a		;9b6d
	rlca			;9b6e
	ld (bc),a		;9b6f
	and b			;9b70
	add a,a			;9b71
	rst 38h			;9b72
	rlca			;9b73
	rlca			;9b74
	rst 38h			;9b75
	ret po			;9b76
	ret nz			;9b77
	sbc a,005h		;9b78
	sbc a,h			;9b7a
	inc bc			;9b7b
	rst 20h			;9b7c
	add a,d			;9b7d
	inc h			;9b7e
	jr l9b84h		;9b7f
	ccf			;9b81
	dec b			;9b82
	rra			;9b83
l9b84h:
	add a,e			;9b84
	ld e,00dh		;9b85
	inc bc			;9b87
	inc bc			;9b88
	nop			;9b89
	add a,l			;9b8a
	ld a,07eh		;9b8b
	ld a,(hl)		;9b8d
	add a,b			;9b8e
	ret nz			;9b8f
	inc bc			;9b90
	nop			;9b91
	adc a,d			;9b92
	ld a,h			;9b93
	ld a,(hl)		;9b94
	ld a,(hl)		;9b95
	ld bc,08403h		;9b96
	add a,d			;9b99
	add a,c			;9b9a
	add a,c			;9b9b
	add a,e			;9b9c
	inc bc			;9b9d
	rst 38h			;9b9e
	ex af,af'		;9b9f
	ret p			;9ba0
	add a,d			;9ba1
	xor b			;9ba2
	rlca			;9ba3
	inc b			;9ba4
	rrca			;9ba5
	add a,d			;9ba6
	rlca			;9ba7
	xor b			;9ba8
	inc b			;9ba9
	ld b,d			;9baa
	add a,l			;9bab
	jp 00103h		;9bac
	ld h,b			;9baf
	rst 38h			;9bb0
	ld b,099h		;9bb1
	add a,(hl)		;9bb3
	rst 38h			;9bb4
	ld a,a			;9bb5
	ld a,a			;9bb6
	rst 38h			;9bb7
	nop			;9bb8
	nop			;9bb9
	inc bc			;9bba
	ld a,a			;9bbb
	add a,h			;9bbc
	rst 0			;9bbd
	ret po			;9bbe
	ret m			;9bbf
	rrca			;9bc0
	ex af,af'		;9bc1
	and l			;9bc2
	add a,(hl)		;9bc3
	adc a,a			;9bc4
	ret m			;9bc5
	ret po			;9bc6
	rst 0			;9bc7
	ret nz			;9bc8
	ret nz			;9bc9
	inc bc			;9bca
	ret p			;9bcb
	add a,c			;9bcc
	nop			;9bcd
	inc b			;9bce
	ret nz			;9bcf
	ld (bc),a		;9bd0
	ret p			;9bd1
	add a,h			;9bd2
	ld (hl),b		;9bd3
	ld h,b			;9bd4
	ld b,b			;9bd5
	nop			;9bd6
	rlca			;9bd7
	ld b,d			;9bd8
	add a,e			;9bd9
	rst 38h			;9bda
	add a,b			;9bdb
	rst 38h			;9bdc
	dec b			;9bdd
	add a,b			;9bde
	add a,d			;9bdf
	rst 38h			;9be0
	nop			;9be1
	dec b			;9be2
	ld bc,03182h		;9be3
	ld c,c			;9be6
	rlca			;9be7
	ret nz			;9be8
	adc a,e			;9be9
	rst 38h			;9bea
	ld hl,03f21h		;9beb
	ccf			;9bee
	ret po			;9bef
	rst 38h			;9bf0
	nop			;9bf1
	nop			;9bf2
	ret m			;9bf3
	ret m			;9bf4
	inc bc			;9bf5
	inc bc			;9bf6
	add a,c			;9bf7
	rst 38h			;9bf8
	inc bc			;9bf9
	ret m			;9bfa
	add a,h			;9bfb
	rra			;9bfc
	ret z			;9bfd
	sub b			;9bfe
	rst 38h			;9bff
	ld b,05ah		;9c00
	adc a,b			;9c02
	rst 38h			;9c03
	sub b			;9c04
	ret z			;9c05
l9c06h:
	rra			;9c06
	rlca			;9c07
	rst 38h			;9c08
	rst 38h			;9c09
	nop			;9c0a
	inc b			;9c0b
	rst 38h			;9c0c
	ld (bc),a		;9c0d
	nop			;9c0e
	rlca			;9c0f
	ret z			;9c10
	rlca			;9c11
	inc bc			;9c12
	add a,c			;9c13
	nop			;9c14
	dec b			;9c15
	rlca			;9c16
	inc bc			;9c17
	rrca			;9c18
	add a,l			;9c19
	ret po			;9c1a
	and b			;9c1b
	ret po			;9c1c
	and b			;9c1d
	ret po			;9c1e
	inc bc			;9c1f
	ret nc			;9c20
	inc bc			;9c21
	rrca			;9c22
	dec b			;9c23
	rlca			;9c24
	inc bc			;9c25
	ret nc			;9c26
	add a,a			;9c27
	ret po			;9c28
	and b			;9c29
	ret po			;9c2a
	and b			;9c2b
	ret po			;9c2c
	dec d			;9c2d
	ret po			;9c2e
	inc b			;9c2f
	ret p			;9c30
	adc a,e			;9c31
	ret po			;9c32
	dec d			;9c33
	cp l			;9c34
	ld e,d			;9c35
	ld b,d			;9c36
	nop			;9c37
	nop			;9c38
	ld b,d			;9c39
	ld e,d			;9c3a
	cp l			;9c3b
	rst 38h			;9c3c
	inc b			;9c3d
	ccf			;9c3e
	inc bc			;9c3f
	nop			;9c40
	add a,l			;9c41
	and b			;9c42
	ret m			;9c43
	adc a,e			;9c44
	add a,l			;9c45
	rst 38h			;9c46
	ld b,02fh		;9c47
	add a,(hl)		;9c49
	rst 38h			;9c4a
	add a,l			;9c4b
	adc a,e			;9c4c
	ret m			;9c4d
	ret po			;9c4e
	rst 38h			;9c4f
	ld b,0f8h		;9c50
	add a,l			;9c52
	rst 38h			;9c53
	ex (sp),hl		;9c54
	rlca			;9c55
	rra			;9c56
	ret p			;9c57
	inc bc			;9c58
	ret nc			;9c59
	add a,c			;9c5a
	nop			;9c5b
	inc b			;9c5c
	inc e			;9c5d
	add a,(hl)		;9c5e
	rra			;9c5f
	ret p			;9c60
	rra			;9c61
	nop			;9c62
	rra			;9c63
	rra			;9c64
	inc b			;9c65
	ret nz			;9c66
	add a,d			;9c67
	rra			;9c68
	rst 38h			;9c69
	inc b			;9c6a
	add a,c			;9c6b
	add a,l			;9c6c
	rst 38h			;9c6d
	add a,c			;9c6e
	add a,c			;9c6f
	rst 38h			;9c70
	rst 38h			;9c71
	dec b			;9c72
	add a,b			;9c73
	add a,(hl)		;9c74
	rst 38h			;9c75
	add a,b			;9c76
	call m,000e0h		;9c77
	jp 04204h		;9c7a
	rlca			;9c7d
	ret nz			;9c7e
	add hl,bc		;9c7f
	nop			;9c80
	inc bc			;9c81
	jr nc,l9c06h		;9c82
	ld c,c			;9c84
	ld sp,00103h		;9c85
	ex af,af'		;9c88
	add a,c			;9c89
	add a,h			;9c8a
	ld b,b			;9c8b
	pop hl			;9c8c
	rst 30h			;9c8d
	jp 04204h		;9c8e
	djnz l9c94h		;9c91
	dec b			;9c93
l9c94h:
	ld a,a			;9c94
	ld (bc),a		;9c95
	nop			;9c96
	ld (bc),a		;9c97
	ld a,a			;9c98
	inc bc			;9c99
	cpl			;9c9a
	add a,h			;9c9b
	pop af			;9c9c
	rra			;9c9d
	rlca			;9c9e
	ex (sp),hl		;9c9f
	ex af,af'		;9ca0
	ret nz			;9ca1
	nop			;9ca2
	cpl			;9ca3
	exx			;9ca4
	ld a,(bc)		;9ca5
	defb 0fdh,082h,0d8h ;illegal sequence	;9ca6
	sbc a,l			;9ca9
	inc bc			;9caa
	defb 0fdh,082h,0d9h ;illegal sequence	;9cab
	rst 38h			;9cae
	dec b			;9caf
	ret pe			;9cb0
	ex af,af'		;9cb1
	adc a,l			;9cb2
	ex af,af'		;9cb3
	exx			;9cb4
	ex af,af'		;9cb5
	adc a,l			;9cb6
	dec b			;9cb7
	exx			;9cb8
	add a,d			;9cb9
	adc a,l			;9cba
	exx			;9cbb
	inc l			;9cbc
	sbc a,a			;9cbd
	inc bc			;9cbe
	ld h,e			;9cbf
	add a,l			;9cc0
	di			;9cc1
	ret m			;9cc2
	ld sp,iy		;9cc3
	ld sp,hl		;9cc5
	add hl,bc		;9cc6
	ret m			;9cc7
	dec c			;9cc8
	sbc a,b			;9cc9
	ld (bc),a		;9cca
	exx			;9ccb
	add a,c			;9ccc
	ld h,h			;9ccd
	dec b			;9cce
	ld (hl),005h		;9ccf
	di			;9cd1
	ld a,(bc)		;9cd2
	sbc a,l			;9cd3
	dec b			;9cd4
	ld sp,hl		;9cd5
	inc d			;9cd6
	sbc a,l			;9cd7
	inc h			;9cd8
	ld sp,hl		;9cd9
	inc bc			;9cda
	adc a,l			;9cdb
	dec b			;9cdc
	ld sp,hl		;9cdd
	inc bc			;9cde
	defb 0fdh,002h,0f9h ;illegal sequence	;9cdf
	inc bc			;9ce2
	defb 0fdh,002h,0f9h ;illegal sequence	;9ce3
	dec b			;9ce6
	rst 18h			;9ce7
	add a,h			;9ce8
	adc a,l			;9ce9
	ld sp,hl		;9cea
	ld sp,hl		;9ceb
	defb 0fdh,003h,0f9h ;illegal sequence	;9cec
	add a,c			;9cef
	ret po			;9cf0
	dec b			;9cf1
	ld b,h			;9cf2
	add a,l			;9cf3
	ld h,b			;9cf4
	ret p			;9cf5
	adc a,a			;9cf6
	adc a,a			;9cf7
	rst 18h			;9cf8
	ld a,(bc)		;9cf9
	sbc a,a			;9cfa
	add a,c			;9cfb
	rst 18h			;9cfc
	inc b			;9cfd
	adc a,a			;9cfe
	add a,e			;9cff
	ret c			;9d00
	sbc a,l			;9d01
	sbc a,l			;9d02
	ld b,0f9h		;9d03
	ld (bc),a		;9d05
	sbc a,l			;9d06
	inc bc			;9d07
	ret c			;9d08
	ld (bc),a		;9d09
	ret m			;9d0a
	add a,c			;9d0b
	defb 0fdh,00ah,0f9h ;illegal sequence	;9d0c
	add a,c			;9d0f
	defb 0fdh,00bh,0f8h ;illegal sequence	;9d10
	ex af,af'		;9d13
	sbc a,b			;9d14
	inc b			;9d15
	adc a,(hl)		;9d16
	ld b,0d8h		;9d17
	dec b			;9d19
	adc a,(hl)		;9d1a
	ld b,0d8h		;9d1b
	ld (bc),a		;9d1d
	ld sp,hl		;9d1e
	add a,h			;9d1f
	sub b			;9d20
	ret p			;9d21
	exx			;9d22
	exx			;9d23
	inc bc			;9d24
	sbc a,a			;9d25
	add a,d			;9d26
	ret p			;9d27
	ld h,b			;9d28
	ld b,030h		;9d29
	add a,c			;9d2b
	ret p			;9d2c
	dec b			;9d2d
	adc a,(hl)		;9d2e
	ex af,af'		;9d2f
	ret c			;9d30
	inc bc			;9d31
	adc a,(hl)		;9d32
	rlca			;9d33
	ret m			;9d34
	inc bc			;9d35
	ld sp,hl		;9d36
	adc a,(hl)		;9d37
	ld sp,iy		;9d38
	ret m			;9d3a
	ld sp,iy		;9d3b
	ld sp,hl		;9d3d
	ret pe			;9d3e
	adc a,c			;9d3f
	adc a,c			;9d40
	sbc a,a			;9d41
	ret pe			;9d42
	adc a,c			;9d43
	adc a,c			;9d44
	sbc a,a			;9d45
	inc bc			;9d46
	cp 082h			;9d47
	ret m			;9d49
	defb 0fdh,003h,0f9h ;illegal sequence	;9d4a
	adc a,e			;9d4d
	ret nc			;9d4e
	ret p			;9d4f
	ret po			;9d50
	sbc a,b			;9d51
	defb 0fdh,0fdh,0d9h ;illegal sequence	;9d52
	rst 38h			;9d55
	ret c			;9d56
	adc a,(hl)		;9d57
	ret c			;9d58
	inc b			;9d59
	sbc a,l			;9d5a
	inc bc			;9d5b
	ld sp,hl		;9d5c
	inc bc			;9d5d
	exx			;9d5e
	sbc a,d			;9d5f
	adc a,l			;9d60
	ret pe			;9d61
	adc a,l			;9d62
	ret nc			;9d63
	add a,b			;9d64
	ret nc			;9d65
	sub b			;9d66
	di			;9d67
	jr nc,l9dcah		;9d68
	ld b,b			;9d6a
	ld h,h			;9d6b
	ccf			;9d6c
	ld sp,iy		;9d6d
	ld sp,hl		;9d6f
	ld h,h			;9d70
	ld (hl),0ffh		;9d71
	ld h,h			;9d73
	ld (hl),0f8h		;9d74
	defb 0fdh,0fdh,064h ;illegal sequence	;9d76
	ld (hl),003h		;9d79
	ld sp,hl		;9d7b
	ld b,098h		;9d7c
	adc a,(hl)		;9d7e
	defb 0fdh,0f8h,0f8h ;illegal sequence	;9d7f
	defb 0fdh,0f8h,0d8h ;illegal sequence	;9d82
	sbc a,l			;9d85
	sbc a,l			;9d86
	ret p			;9d87
	ret po			;9d88
	add a,b			;9d89
	add a,b			;9d8a
	ret nc			;9d8b
	ret nc			;9d8c
	dec b			;9d8d
	sub b			;9d8e
	ld (bc),a		;9d8f
	ret po			;9d90
	add a,e			;9d91
	rst 28h			;9d92
	ret pe			;9d93
	ret pe			;9d94
	inc b			;9d95
	ret po			;9d96
	add a,h			;9d97
	add a,b			;9d98
	adc a,a			;9d99
	ret pe			;9d9a
	defb 0edh ;next byte illegal after ed	;9d9b
	inc bc			;9d9c
	ld sp,hl		;9d9d
	dec b			;9d9e
	add hl,bc		;9d9f
	add a,d			;9da0
	ret pe			;9da1
	sbc a,a			;9da2
	inc b			;9da3
	nop			;9da4
	add a,e			;9da5
	ret pe			;9da6
	sbc a,a			;9da7
	call p,04006h		;9da8
	adc a,e			;9dab
	or 0d0h			;9dac
	add a,b			;9dae
	ret nc			;9daf
	sub b			;9db0
	or 064h			;9db1
	ld h,h			;9db3
	call po,0fafah		;9db4
	inc b			;9db7
	push af			;9db8
	ld (bc),a		;9db9
	di			;9dba
	xor c			;9dbb
	add a,b			;9dbc
	ret p			;9dbd
	ret pe			;9dbe
	ret pe			;9dbf
	defb 0ddh,0f0h,080h ;illegal sequence	;9dc0
	ret p			;9dc3
	ret m			;9dc4
	ld sp,iy		;9dc5
	cp 0d8h			;9dc7
	ret c			;9dc9
l9dcah:
	sbc a,l			;9dca
	rst 38h			;9dcb
	rst 38h			;9dcc
	adc a,(hl)		;9dcd
	ret c			;9dce
	ret c			;9dcf
	ld sp,hl		;9dd0
	cp 0feh			;9dd1
	ret m			;9dd3
	exx			;9dd4
	rst 38h			;9dd5
	defb 0edh ;next byte illegal after ed	;9dd6
	adc a,c			;9dd7
	rst 18h			;9dd8
	rst 18h			;9dd9
	exx			;9dda
	rst 38h			;9ddb
	exx			;9ddc
	rst 38h			;9ddd
	defb 0edh ;next byte illegal after ed	;9dde
	adc a,c			;9ddf
	ret nc			;9de0
	ret p			;9de1
	ret nc			;9de2
	ret nc			;9de3
	ret m			;9de4
	dec b			;9de5
	defb 0fdh,002h,0f9h ;illegal sequence	;9de6
	inc bc			;9de9
	ret pe			;9dea
	inc bc			;9deb
	adc a,l			;9dec
	add a,h			;9ded
	exx			;9dee
	defb 0fdh,0fdh,0f8h ;illegal sequence	;9def
	inc b			;9df2
	defb 0fdh,002h,0f9h ;illegal sequence	;9df3
	add a,c			;9df6
	call po,04605h		;9df7
	ld (bc),a		;9dfa
	di			;9dfb
	add a,c			;9dfc
	ret m			;9dfd
	inc bc			;9dfe
	defb 0fdh,09dh ;sbc a,iyl	;9dff
	ld sp,hl		;9e01
	adc a,l			;9e02
	adc a,l			;9e03
	exx			;9e04
	exx			;9e05
	rst 38h			;9e06
	ret c			;9e07
	sbc a,l			;9e08
	ld sp,hl		;9e09
	ld sp,hl		;9e0a
	exx			;9e0b
	rst 38h			;9e0c
	dec c			;9e0d
	add a,b			;9e0e
	cp 0f8h			;9e0f
	ret m			;9e11
	ret pe			;9e12
	adc a,l			;9e13
	exx			;9e14
	ret pe			;9e15
	adc a,l			;9e16
	exx			;9e17
	defb 0fdh,0fdh,0f9h ;illegal sequence	;9e18
	sub b			;9e1b
	ret p			;9e1c
	ret p			;9e1d
	inc b			;9e1e
	ld h,h			;9e1f
	inc b			;9e20
	ccf			;9e21
	adc a,b			;9e22
	add a,(hl)		;9e23
	call po,08686h		;9e24
	out (093h),a		;9e27
	rst 38h			;9e29
	ret po			;9e2a
	dec b			;9e2b
	ld b,b			;9e2c
	ld (bc),a		;9e2d
	ld h,b			;9e2e
	and c			;9e2f
	ret p			;9e30
	add a,b			;9e31
	ret p			;9e32
	add a,b			;9e33
	ret p			;9e34
	ret po			;9e35
	add a,b			;9e36
	ret nc			;9e37
	ret p			;9e38
	ret nc			;9e39
	ret p			;9e3a
	ret nc			;9e3b
	ret p			;9e3c
	add a,b			;9e3d
	ret nc			;9e3e
	sub b			;9e3f
	ret po			;9e40
	add a,b			;9e41
	ret nc			;9e42
	ret p			;9e43
	add a,b			;9e44
	ret p			;9e45
	add a,b			;9e46
	ret p			;9e47
	add a,b			;9e48
	ret nc			;9e49
	sub b			;9e4a
	ret p			;9e4b
	ret nc			;9e4c
	ret p			;9e4d
	ret nc			;9e4e
	ret p			;9e4f
	or 006h			;9e50
	ld h,b			;9e52
	add a,e			;9e53
	di			;9e54
	ld sp,hl		;9e55
	sub b			;9e56
	inc b			;9e57
	ret nc			;9e58
	add a,l			;9e59
	sub b			;9e5a
	ld sp,hl		;9e5b
	ld sp,hl		;9e5c
	ld h,e			;9e5d
	ld b,(hl)		;9e5e
	inc b			;9e5f
	ld h,e			;9e60
	and d			;9e61
	rst 38h			;9e62
	sub b			;9e63
	ret nc			;9e64
	ret m			;9e65
	defb 0fdh,0fdh,0d8h ;illegal sequence	;9e66
	sbc a,l			;9e69
	ld sp,hl		;9e6a
	ret c			;9e6b
	sbc a,l			;9e6c
	ld sp,hl		;9e6d
	ld sp,hl		;9e6e
	ld sp,iy		;9e6f
	sub b			;9e71
	ret p			;9e72
	ret p			;9e73
	add a,(hl)		;9e74
	call po,08686h		;9e75
	out (093h),a		;9e78
	defb 0fdh,0fdh,0f9h ;illegal sequence	;9e7a
	ld sp,hl		;9e7d
	defb 0fdh,0d9h,0d9h ;illegal sequence	;9e7e
	sbc a,a			;9e81
	sbc a,a			;9e82
	defb 0fdh,004h,0f9h ;illegal sequence	;9e83
	adc a,h			;9e86
	sbc a,b			;9e87
	exx			;9e88
	exx			;9e89
	ret c			;9e8a
	rst 38h			;9e8b
	ret pe			;9e8c
	adc a,l			;9e8d
	exx			;9e8e
	rst 38h			;9e8f
	ret c			;9e90
	defb 0fdh,0fdh,004h ;illegal sequence	;9e91
	ld sp,hl		;9e94
	add a,c			;9e95
	defb 0fdh,003h,0f9h ;illegal sequence	;9e96
	add a,c			;9e99
	exx			;9e9a
	inc bc			;9e9b
	adc a,l			;9e9c
	inc bc			;9e9d
	ret pe			;9e9e
	inc bc			;9e9f
	ld h,e			;9ea0
	add a,l			;9ea1
	di			;9ea2
	add a,b			;9ea3
	ret nc			;9ea4
	sub b			;9ea5
	sub b			;9ea6
	ex af,af'		;9ea7
	jr nc,l9eb3h		;9ea8
	rst 18h			;9eaa
	ld (bc),a		;9eab
	adc a,a			;9eac
	add a,l			;9ead
	defb 0fdh,0f8h,0fdh ;illegal sequence	;9eae
	ld sp,hl		;9eb1
l9eb2h:
	ld sp,hl		;9eb2
l9eb3h:
	inc bc			;9eb3
	ret po			;9eb4
	add a,d			;9eb5
	add a,b			;9eb6
	ret nc			;9eb7
	inc bc			;9eb8
	sub b			;9eb9
	ld (bc),a		;9eba
	ld h,b			;9ebb
	adc a,e			;9ebc
	jr nc,l9eb2h		;9ebd
	add a,b			;9ebf
	ret nc			;9ec0
	sub b			;9ec1
	sub b			;9ec2
	ret c			;9ec3
	adc a,(hl)		;9ec4
	adc a,(hl)		;9ec5
	ret c			;9ec6
	ret c			;9ec7
	ld b,09dh		;9ec8
	ld (bc),a		;9eca
	ret c			;9ecb
	ld (bc),a		;9ecc
	adc a,(hl)		;9ecd
	inc b			;9ece
	ret c			;9ecf
	dec b			;9ed0
	adc a,(hl)		;9ed1
	adc a,b			;9ed2
	rst 38h			;9ed3
	ret c			;9ed4
	sbc a,l			;9ed5
	sbc a,l			;9ed6
	ld sp,hl		;9ed7
	cp 0f8h			;9ed8
	defb 0fdh,007h,0d9h ;illegal sequence	;9eda
	add a,c			;9edd
	adc a,l			;9ede
	nop			;9edf
	ld (bc),a		;9ee0
	ld a,a			;9ee1
	add a,d			;9ee2
	ccf			;9ee3
	ld a,a			;9ee4
	inc bc			;9ee5
	ld h,b			;9ee6
	add a,a			;9ee7
	rra			;9ee8
	ld a,a			;9ee9
	ld a,a			;9eea
	ccf			;9eeb
	ccf			;9eec
	ld a,a			;9eed
	ld a,a			;9eee
	dec b			;9eef
	ld (hl),b		;9ef0
	add a,d			;9ef1
	ld a,a			;9ef2
	ccf			;9ef3
	inc bc			;9ef4
	ld a,a			;9ef5
	nop			;9ef6
	add a,e			;9ef7
	ld sp,03121h		;9ef8
	inc b			;9efb
	ld hl,03185h		;9efc
	sub d			;9eff
	ld (09292h),a		;9f00
l9f03h:
	rlca			;9f03
	ld sp,03202h		;9f04
	add a,e			;9f07
	ld hl,02f1fh		;9f08
	nop			;9f0b
	ld (bc),a		;9f0c
	ret m			;9f0d
	ld (bc),a		;9f0e
	nop			;9f0f
	sbc a,b			;9f10
	ex (sp),hl		;9f11
	inc d			;9f12
	inc d			;9f13
	ex (sp),hl		;9f14
	rra			;9f15
	rra			;9f16
	nop			;9f17
	nop			;9f18
	ex (sp),hl		;9f19
	inc d			;9f1a
	inc d			;9f1b
	ex (sp),hl		;9f1c
	rst 38h			;9f1d
	ld a,(hl)		;9f1e
	nop			;9f1f
	ld a,(hl)		;9f20
	ld b,d			;9f21
	ld b,d			;9f22
	jp 0ffffh		;9f23
	jr l9f03h		;9f26
	inc a			;9f28
	dec b			;9f29
	rst 38h			;9f2a
	inc bc			;9f2b
	add a,b			;9f2c
	add a,c			;9f2d
	rst 38h			;9f2e
	inc bc			;9f2f
	add a,b			;9f30
	add a,c			;9f31
	rst 38h			;9f32
	rlca			;9f33
	inc bc			;9f34
	nop			;9f35
	add a,l			;9f36
	ld hl,0f1f1h		;9f37
	ld (00431h),hl		;9f3a
	ld hl,0f102h		;9f3d
	add a,d			;9f40
	ld (00331h),hl		;9f41
	ld hl,0f103h		;9f44
	ld (bc),a		;9f47
	ld hl,02f81h		;9f48
	dec bc			;9f4b
	pop af			;9f4c
	add a,d			;9f4d
	ld hl,00532h		;9f4e
	sub e			;9f51
	ld (bc),a		;9f52
	pop af			;9f53
	add a,e			;9f54
	ld (de),a		;9f55
	inc hl			;9f56
	add hl,sp		;9f57
	inc bc			;9f58
	inc hl			;9f59
	nop			;9f5a
	rlca			;9f5b
	inc a			;9f5c
	adc a,c			;9f5d
	jp 03cffh		;9f5e
	nop			;9f61
	jp 000ffh		;9f62
	nop			;9f65
	add a,c			;9f66
	inc b			;9f67
	jp 0ff84h		;9f68
	jp 00081h		;9f6b
	inc bc			;9f6e
	add a,c			;9f6f
	ld (bc),a		;9f70
	cp l			;9f71
	ld (bc),a		;9f72
	add a,c			;9f73
	add a,c			;9f74
	rst 38h			;9f75
	inc bc			;9f76
	ld a,(hl)		;9f77
	ld (bc),a		;9f78
	ld b,d			;9f79
	ld (bc),a		;9f7a
	ld a,(hl)		;9f7b
	sub c			;9f7c
	nop			;9f7d
	inc a			;9f7e
	jp 03cc3h		;9f7f
	inc a			;9f82
	jp 03cc3h		;9f83
	rst 38h			;9f86
	inc a			;9f87
	nop			;9f88
	jp 000ffh		;9f89
	nop			;9f8c
	add a,c			;9f8d
	inc b			;9f8e
	jp 0ff84h		;9f8f
	inc a			;9f92
	ld a,(hl)		;9f93
	rst 38h			;9f94
	ld b,07eh		;9f95
	ld (bc),a		;9f97
	inc a			;9f98
	ld b,07eh		;9f99
	add hl,bc		;9f9b
	jp 0ff81h		;9f9c
	ld b,03ch		;9f9f
	ld (bc),a		;9fa1
	nop			;9fa2
	ex af,af'		;9fa3
	rst 38h			;9fa4
	nop			;9fa5
	adc a,b			;9fa6
	sub e			;9fa7
	add hl,hl		;9fa8
	ld (de),a		;9fa9
	ld sp,09239h		;9faa
	cpl			;9fad
	cpl			;9fae
	inc bc			;9faf
	sub e			;9fb0
	add a,e			;9fb1
	ld (01313h),a		;9fb2
	inc bc			;9fb5
	add hl,hl		;9fb6
	inc b			;9fb7
	inc hl			;9fb8
	inc bc			;9fb9
	ld hl,0f198h		;9fba
	jp p,0f3f3h		;9fbd
	inc de			;9fc0
	inc de			;9fc1
	pop af			;9fc2
	pop af			;9fc3
	ld hl,l9131h		;9fc4
	sub c			;9fc7
	sub d			;9fc8
	sub d			;9fc9
	ld hl,03121h		;9fca
	ld sp,01f1fh		;9fcd
	inc de			;9fd0
	inc de			;9fd1
	pop af			;9fd2
	pop af			;9fd3
	inc bc			;9fd4
	ld (02183h),a		;9fd5
	jp p,003f2h		;9fd8
	inc de			;9fdb
	inc b			;9fdc
	ld (de),a		;9fdd
	inc bc			;9fde
	pop af			;9fdf
	add a,c			;9fe0
	sub e			;9fe1
	dec b			;9fe2
	ld (02183h),a		;9fe3
	rra			;9fe6
	ld (02105h),a		;9fe7
	ld (bc),a		;9fea
	pop af			;9feb
	add a,c			;9fec
	inc hl			;9fed
	dec b			;9fee
	ld (de),a		;9fef
	ld (bc),a		;9ff0
	pop af			;9ff1
	add a,c			;9ff2
	ld hl,01f0fh		;9ff3
	nop			;9ff6
	add a,c			;9ff7
	add a,l			;9ff8
	ld b,03ah		;9ff9
	add a,c			;9ffb
	ld a,(de)		;9ffc
	rlca			;9ffd
	ret pe			;9ffe
	add a,c			;9fff
