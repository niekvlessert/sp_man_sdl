; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank16_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank16.bin

	org 08000h

	cpl			;8000
	dec b			;8001
	ccf			;8002
	add a,e			;8003
	ret nz			;8004
	rst 38h			;8005
	nop			;8006
	rlca			;8007
	ld h,(hl)		;8008
	ld (bc),a		;8009
	rst 38h			;800a
	ex af,af'		;800b
	ret nz			;800c
	rlca			;800d
	sbc a,c			;800e
	nop			;800f
	sub h			;8010
	ret c			;8011
	ld (032e8h),a		;8012
	ret pe			;8015
	ret pe			;8016
	adc a,l			;8017
	ret nc			;8018
	ret nc			;8019
	ld hl,0218dh		;801a
	adc a,l			;801d
	adc a,l			;801e
	ret nc			;801f
	ret p			;8020
	defb 0edh ;next byte illegal after ed	;8021
	add a,b			;8022
	ret nc			;8023
	rst 18h			;8024
	inc b			;8025
	rrca			;8026
	add a,a			;8027
	jp (hl)			;8028
	add a,e			;8029
	jp nc,001d2h		;802a
	rst 38h			;802d
	ld bc,0f003h		;802e
	add a,d			;8031
	dec c			;8032
	ret c			;8033
	inc bc			;8034
	adc a,(hl)		;8035
	add a,l			;8036
	ret c			;8037
	rst 38h			;8038
	djnz l8068h		;8039
	jr c,$+5		;803b
	sbc a,(hl)		;803d
	add a,c			;803e
	jr c,l8041h		;803f
l8041h:
	ex af,af'		;8041
	cpl			;8042
	ex af,af'		;8043
	call p,01000h		;8044
	rst 20h			;8047
	nop			;8048
	ex af,af'		;8049
	jr $-122		;804a
	ld a,a			;804c
	ccf			;804d
	ccf			;804e
	ld a,a			;804f
	inc bc			;8050
	ld l,089h		;8051
	rla			;8053
	rst 38h			;8054
	inc e			;8055
	ld (01c3eh),hl		;8056
	ld (06666h),hl		;8059
	inc bc			;805c
	ret pe			;805d
	inc bc			;805e
	ccf			;805f
	adc a,d			;8060
	rst 38h			;8061
	ret pe			;8062
	nop			;8063
	rst 38h			;8064
	rst 38h			;8065
	nop			;8066
	rla			;8067
l8068h:
	rla			;8068
	rst 38h			;8069
	nop			;806a
	inc bc			;806b
	rla			;806c
	ld (bc),a		;806d
	nop			;806e
	inc bc			;806f
	ld e,h			;8070
	inc b			;8071
	dec bc			;8072
	sub h			;8073
	rra			;8074
	ret pe			;8075
	ret pe			;8076
	rra			;8077
	inc bc			;8078
	rra			;8079
	dec c			;807a
	rra			;807b
	dec c			;807c
	rra			;807d
	dec c			;807e
	nop			;807f
	ret nz			;8080
	rlca			;8081
	sbc a,a			;8082
	ret m			;8083
	sbc a,a			;8084
	ret m			;8085
	sbc a,a			;8086
	jr nz,l8089h		;8087
l8089h:
	adc a,a			;8089
	add a,e			;808a
	ret nc			;808b
	ret pe			;808c
	ret nc			;808d
	ret pe			;808e
	ret nc			;808f
	ret pe			;8090
	ret nc			;8091
	add a,e			;8092
	ret pe			;8093
	ret nc			;8094
	di			;8095
	ret nc			;8096
	defb 0edh ;next byte illegal after ed	;8097
	rrca			;8098
	inc bc			;8099
	ret pe			;809a
	ld (bc),a		;809b
	ret c			;809c
	adc a,e			;809d
	ret m			;809e
	ret c			;809f
	ret m			;80a0
	xor 0d8h		;80a1
	dec c			;80a3
	ret p			;80a4
	di			;80a5
	inc bc			;80a6
	di			;80a7
	di			;80a8
	inc bc			;80a9
	ret c			;80aa
	ld (bc),a		;80ab
	rrca			;80ac
	add a,(hl)		;80ad
	defb 0edh ;next byte illegal after ed	;80ae
	adc a,l			;80af
	cp 0feh			;80b0
	ret nc			;80b2
	ret nc			;80b3
	inc bc			;80b4
	rrca			;80b5
	sub a			;80b6
	ret nc			;80b7
	add a,b			;80b8
	rst 38h			;80b9
	ret pe			;80ba
	ret pe			;80bb
	adc a,l			;80bc
	rst 38h			;80bd
	ret nc			;80be
	ret c			;80bf
	ret c			;80c0
	ret nc			;80c1
	add a,e			;80c2
	out (080h),a		;80c3
	ret m			;80c5
	add a,b			;80c6
	defb 0fdh,0d0h,0d0h ;illegal sequence	;80c7
l80cah:
	out (030h),a		;80ca
	defb 0fdh,0f8h,003h ;illegal sequence	;80cc
	defb 0fdh,081h,0f0h ;illegal sequence	;80cf
	nop			;80d2
	inc b			;80d3
	jr nz,l80e0h		;80d4
	ret pe			;80d6
	inc bc			;80d7
	rst 38h			;80d8
	ld (bc),a		;80d9
	nop			;80da
	inc bc			;80db
	rst 38h			;80dc
	ld (bc),a		;80dd
	nop			;80de
	nop			;80df
l80e0h:
	inc b			;80e0
	ld de,07581h		;80e1
	ld b,011h		;80e4
	add a,e			;80e6
	ld (hl),l		;80e7
	ld e,(hl)		;80e8
	ld (hl),l		;80e9
	inc b			;80ea
	rla			;80eb
	dec b			;80ec
	push hl			;80ed
	add a,c			;80ee
	rst 30h			;80ef
	nop			;80f0
	inc bc			;80f1
	rst 38h			;80f2
	inc bc			;80f3
	nop			;80f4
	ld (bc),a		;80f5
	rst 38h			;80f6
	nop			;80f7
	dec b			;80f8
	call p,05702h		;80f9
	add a,c			;80fc
	call po,00200h		;80fd
sub_8100h:
	nop			;8100
l8101h:
	ld b,0ffh		;8101
	nop			;8103
	add a,e			;8104
	call po,05757h		;8105
	dec b			;8108
	rst 28h			;8109
	nop			;810a
	inc bc			;810b
	nop			;810c
	inc bc			;810d
	rst 38h			;810e
	ld (bc),a		;810f
	nop			;8110
	nop			;8111
	add a,c			;8112
	rst 28h			;8113
	inc b			;8114
	ld (hl),h		;8115
	inc bc			;8116
	ld e,(hl)		;8117
	nop			;8118
	ld (bc),a		;8119
	nop			;811a
	inc b			;811b
	rst 38h			;811c
	ld (bc),a		;811d
	nop			;811e
	nop			;811f
	inc b			;8120
	ld c,a			;8121
	inc bc			;8122
	ld (hl),l		;8123
	add a,c			;8124
	ld c,000h		;8125
	ld (bc),a		;8127
	rrca			;8128
	sbc a,a			;8129
	ld a,a			;812a
	rlca			;812b
	jr c,$+119		;812c
	ld (de),a		;812e
	ld (0f0f0h),hl		;812f
	cp 0e0h			;8132
	inc e			;8134
	xor (hl)		;8135
	ld c,b			;8136
	ld b,h			;8137
	ld (07512h),hl		;8138
	jr c,l8144h		;813b
	ld a,a			;813d
	rrca			;813e
	rrca			;813f
	ld b,h			;8140
	ld c,b			;8141
	xor (hl)		;8142
	inc e			;8143
l8144h:
	ret po			;8144
	cp 0f0h			;8145
	ret p			;8147
	add a,b			;8148
	ld b,0ffh		;8149
	inc b			;814b
l814ch:
	add a,b			;814c
	ld (bc),a		;814d
	rst 38h			;814e
	dec bc			;814f
	add a,b			;8150
	nop			;8151
	and b			;8152
	ld (01021h),a		;8153
	djnz $+50		;8156
	jr nz,l814ch		;8158
	pop af			;815a
	ld (01021h),a		;815b
	djnz $+50		;815e
	jr nz,$-12		;8160
	pop af			;8162
	pop af			;8163
	jp p,03020h		;8164
	djnz l8179h		;8167
	ld hl,0f132h		;8169
	jp p,03020h		;816c
	djnz l8181h		;816f
	ld hl,00832h		;8171
	ret pe			;8174
	add a,c			;8175
	adc a,l			;8176
	ld b,0e8h		;8177
l8179h:
	adc a,c			;8179
	adc a,l			;817a
	rst 18h			;817b
	adc a,l			;817c
	adc a,l			;817d
	ret pe			;817e
	ret pe			;817f
	adc a,l			;8180
l8181h:
	adc a,l			;8181
	rst 18h			;8182
	nop			;8183
	adc a,h			;8184
	inc bc			;8185
	rrca			;8186
	cp 043h			;8187
	ld b,c			;8189
	ld b,e			;818a
	cp 0feh			;818b
	ret po			;818d
	ret m			;818e
	call m,003fch		;818f
l8192h:
	dec h			;8192
	sub c			;8193
	cp 037h			;8194
	ld e,b			;8196
	ld e,h			;8197
	ld a,01fh		;8198
	or b			;819a
	add hl,sp		;819b
	ld c,0e0h		;819c
	call m,03e7eh		;819e
	jp z,l80cah		;81a1
	cp 000h			;81a4
	and b			;81a6
	jr nz,$+50		;81a7
	pop af			;81a9
	cp 0f3h			;81aa
	jp p,023f1h		;81ac
l81afh:
	jr nz,$+50		;81af
	jr nz,l81c3h		;81b1
	di			;81b3
	jp p,03211h		;81b4
l81b7h:
	jr nz,$-30		;81b7
	jr nc,l81ebh		;81b9
	jr nz,l81afh		;81bb
	pop af			;81bd
	di			;81be
	jr nz,l81f1h		;81bf
	jr nz,l81d3h		;81c1
l81c3h:
	di			;81c3
	jp p,032f1h		;81c4
	nop			;81c7
	sbc a,a			;81c8
	call m,0071ch		;81c9
	inc bc			;81cc
	ld b,c			;81cd
	jr nc,l81ech		;81ce
	ld e,071h		;81d0
	inc e			;81d2
l81d3h:
	rlca			;81d3
	inc bc			;81d4
	ld b,c			;81d5
	jr nc,l81f4h		;81d6
	ld e,03fh		;81d8
	rst 38h			;81da
	ld a,(hl)		;81db
	cp (hl)			;81dc
	call c,074ech		;81dd
	jr c,l81feh		;81e0
	adc a,(hl)		;81e2
	ld b,(hl)		;81e3
	inc bc			;81e4
	ld bc,0038fh		;81e5
	inc bc			;81e8
	nop			;81e9
	ld (bc),a		;81ea
l81ebh:
	inc de			;81eb
l81ech:
	sbc a,h			;81ec
	add a,b			;81ed
	ret m			;81ee
	jr nc,l820fh		;81ef
l81f1h:
	ld (hl),c		;81f1
	inc e			;81f2
	rlca			;81f3
l81f4h:
	ld bc,0b820h		;81f4
	call c,057feh		;81f7
	ld d,l			;81fa
	rst 38h			;81fb
	xor a			;81fc
	xor e			;81fd
l81feh:
	cp 058h			;81fe
l8200h:
	ret po			;8200
	add a,b			;8201
	inc a			;8202
	ld c,003h		;8203
	add a,b			;8205
	ret po			;8206
	ret m			;8207
	cp 005h			;8208
	ld bc,00302h		;820a
	add a,l			;820d
	ld a,a			;820e
l820fh:
	ld h,l			;820f
	ld a,(0ff7fh)		;8210
	inc bc			;8213
	xor c			;8214
	dec b			;8215
	rst 38h			;8216
	inc bc			;8217
	ld a,a			;8218
	adc a,c			;8219
	rst 38h			;821a
	ret m			;821b
	ret po			;821c
	rst 0			;821d
	sbc a,h			;821e
	sbc a,b			;821f
	jr nc,$+50		;8220
	ccf			;8222
	inc bc			;8223
	jp nz,0c485h		;8224
	ret m			;8227
	add a,b			;8228
	ld (hl),b		;8229
	jr c,l822fh		;822a
	jr nc,l81b7h		;822c
	sbc a,b			;822e
l822fh:
	sbc a,h			;822f
	rst 0			;8230
	ret po			;8231
	ret m			;8232
	cp 0f8h			;8233
	ret nz			;8235
	ret m			;8236
	inc b			;8237
	rst 38h			;8238
	or d			;8239
	rlca			;823a
	dec bc			;823b
	sbc a,l			;823c
	jp m,0ff87h		;823d
	rst 18h			;8240
	xor 0f1h		;8241
l8243h:
	ex (sp),hl		;8243
	ld b,(hl)		;8244
	ld l,h			;8245
	add hl,sp		;8246
	inc sp			;8247
	ld h,a			;8248
	ld a,a			;8249
	jp po,0c0feh		;824a
	ret nz			;824d
	ret po			;824e
	ret p			;824f
	call m,070ffh		;8250
	ret m			;8253
	defb 0fdh,0feh,07fh ;illegal sequence	;8254
	ccf			;8257
	rra			;8258
	rrca			;8259
	rst 38h			;825a
	ld bc,00202h		;825b
	inc b			;825e
	jr l82c1h		;825f
	add a,b			;8261
	rra			;8262
	rra			;8263
	ret nz			;8264
	rst 38h			;8265
	ld (hl),b		;8266
	ld (hl),b		;8267
	ld a,(hl)		;8268
	jp p,07f43h		;8269
	inc bc			;826c
	ld bc,00302h		;826d
	add a,e			;8270
	ld a,a			;8271
	ld bc,003fdh		;8272
	ld bc,00283h		;8275
	cp 0feh			;8278
	inc b			;827a
	ld bc,0ff98h		;827b
	inc bc			;827e
	inc bc			;827f
	ld a,a			;8280
	ld (hl),c		;8281
	xor a			;8282
	and l			;8283
	push hl			;8284
	ld h,l			;8285
	dec (hl)		;8286
	dec e			;8287
	dec c			;8288
	defb 0fdh,0f3h,0ceh ;illegal sequence	;8289
	inc a			;828c
	rrca			;828d
	nop			;828e
	ld a,(hl)		;828f
	cp l			;8290
	rlca			;8291
	ld b,0fch		;8292
	call m,00104h		;8294
	add a,e			;8297
	ld b,d			;8298
	ld a,(hl)		;8299
	ld a,(hl)		;829a
	inc b			;829b
	ld (bc),a		;829c
	add a,c			;829d
	cp 000h			;829e
	add a,c			;82a0
	jr nz,l82bfh		;82a1
	ld (02106h),a		;82a3
	add a,e			;82a6
	pop af			;82a7
	ld hl,00621h		;82a8
	ld (0f205h),a		;82ab
	ld (bc),a		;82ae
	pop af			;82af
	add a,d			;82b0
	jp p,004f1h		;82b1
	jp p,03203h		;82b4
	dec b			;82b7
	jp p,0f385h		;82b8
	jp p,0f2f1h		;82bb
	di			;82be
l82bfh:
	inc bc			;82bf
	cpl			;82c0
l82c1h:
	add a,l			;82c1
	pop af			;82c2
	jp p,0f1f2h		;82c3
	ld (de),a		;82c6
	inc c			;82c7
	pop af			;82c8
	ld (bc),a		;82c9
	jp p,0f302h		;82ca
	inc bc			;82cd
	jp p,0f105h		;82ce
	add a,h			;82d1
	ld hl,0f332h		;82d2
	jp p,0f107h		;82d5
	add a,c			;82d8
	jp p,0f10fh		;82d9
	dec b			;82dc
	jp p,0f105h		;82dd
	add a,c			;82e0
	ld (de),a		;82e1
	ex af,af'		;82e2
	pop af			;82e3
	dec b			;82e4
	jp p,0f381h		;82e5
	ld b,0f2h		;82e8
	add a,d			;82ea
	ld hl,00332h		;82eb
	pop af			;82ee
	ld (bc),a		;82ef
	jp p,0f104h		;82f0
	adc a,d			;82f3
	di			;82f4
	jp p,02ff1h		;82f5
	cpl			;82f8
	ld hl,03232h		;82f9
	ld hl,0042fh		;82fc
	pop af			;82ff
	add a,d			;8300
l8301h:
	di			;8301
	jp p,0f103h		;8302
	ld (bc),a		;8305
	cpl			;8306
	ld (bc),a		;8307
	pop af			;8308
	ld b,0f2h		;8309
	sub l			;830b
	ld hl,02131h		;830c
	ld hl,0f3f2h		;830f
	di			;8312
	ld hl,03221h		;8313
	di			;8316
	inc de			;8317
	ld (0212fh),a		;8318
	cpl			;831b
	pop af			;831c
	jp p,0f3f3h		;831d
	jp p,0f103h		;8320
	nop			;8323
	ld (bc),a		;8324
	ld d,l			;8325
	add a,c			;8326
	rst 38h			;8327
	inc bc			;8328
	nop			;8329
	ld (bc),a		;832a
	xor d			;832b
	add a,l			;832c
	inc a			;832d
	rst 38h			;832e
	inc a			;832f
	inc a			;8330
	rst 38h			;8331
	ld (de),a		;8332
	inc a			;8333
	add a,h			;8334
	cp l			;8335
	inc a			;8336
	inc a			;8337
	cp l			;8338
	add hl,bc		;8339
	inc a			;833a
	add a,l			;833b
	cp l			;833c
	inc a			;833d
	inc a			;833e
	rst 38h			;833f
l8340h:
	inc a			;8340
	inc b			;8341
	nop			;8342
	ld (bc),a		;8343
	add a,c			;8344
	add a,(hl)		;8345
	rst 38h			;8346
	nop			;8347
	nop			;8348
	ld h,(hl)		;8349
	ld h,(hl)		;834a
	nop			;834b
	inc bc			;834c
	jp 00002h		;834d
	ld (bc),a		;8350
	ld b,d			;8351
	ld (bc),a		;8352
	nop			;8353
	ld (bc),a		;8354
	inc a			;8355
	add a,d			;8356
	ld d,l			;8357
	rst 38h			;8358
	inc bc			;8359
	add a,b			;835a
	sub (hl)		;835b
	rra			;835c
	rlca			;835d
	ld bc,07effh		;835e
	jr l83c9h		;8361
l8363h:
	rst 20h			;8363
	nop			;8364
	ld a,(hl)		;8365
	ld a,(hl)		;8366
	sub e			;8367
	sub e			;8368
	rst 38h			;8369
	nop			;836a
	nop			;836b
	rst 38h			;836c
	sub e			;836d
	sub e			;836e
	ld hl,(0152ah)		;836f
	inc bc			;8372
	ld a,002h		;8373
	ld hl,01806h		;8375
	add a,l			;8378
	rst 38h			;8379
	jr l83beh		;837a
	ld l,(hl)		;837c
	djnz l8383h		;837d
	rst 10h			;837f
	add a,l			;8380
	djnz l8340h		;8381
l8383h:
	add a,c			;8383
	rst 38h			;8384
	rst 38h			;8385
	inc bc			;8386
	nop			;8387
	add a,d			;8388
	rst 38h			;8389
	cp l			;838a
	ld d,0a5h		;838b
	adc a,h			;838d
	cp l			;838e
	rst 38h			;838f
	ld d,h			;8390
	ld d,l			;8391
	ld bc,0fd01h		;8392
	ld bc,00001h		;8395
	rst 20h			;8398
	rst 20h			;8399
	inc bc			;839a
	inc a			;839b
	and l			;839c
	rst 38h			;839d
	nop			;839e
	nop			;839f
	in a,(0dbh)		;83a0
	nop			;83a2
	ld a,(hl)		;83a3
	ld a,(hl)		;83a4
	nop			;83a5
	rst 38h			;83a6
	ld bc,01f2bh		;83a7
	rrca			;83aa
	ld e,00eh		;83ab
	ld bc,00007h		;83ad
	ld a,a			;83b0
	add a,b			;83b1
	ccf			;83b2
	ld (hl),l		;83b3
	ld (hl),l		;83b4
	ld d,l			;83b5
	ld (hl),l		;83b6
	ld a,a			;83b7
	ld h,b			;83b8
	ld a,a			;83b9
	ld h,b			;83ba
	ld a,a			;83bb
	ld (hl),l		;83bc
	ld e,a			;83bd
l83beh:
	ld (hl),l		;83be
	rst 38h			;83bf
	ld d,l			;83c0
	ld d,l			;83c1
	inc bc			;83c2
	rst 38h			;83c3
	ld (bc),a		;83c4
l83c5h:
	nop			;83c5
	ld (bc),a		;83c6
	rst 38h			;83c7
	ld (bc),a		;83c8
l83c9h:
	nop			;83c9
	add a,(hl)		;83ca
	rst 38h			;83cb
	nop			;83cc
	rst 38h			;83cd
	rst 38h			;83ce
	djnz $-39		;83cf
	inc bc			;83d1
	djnz l8363h		;83d2
	jr z,l83c5h		;83d4
	rst 28h			;83d6
	rst 38h			;83d7
	nop			;83d8
	rst 38h			;83d9
	rst 38h			;83da
	nop			;83db
	nop			;83dc
	ld a,(hl)		;83dd
	cp l			;83de
	jp pe,0ffaah		;83df
	rst 38h			;83e2
	inc bc			;83e3
	ld d,l			;83e4
	add a,l			;83e5
	rst 38h			;83e6
	nop			;83e7
	nop			;83e8
	rst 38h			;83e9
	rst 38h			;83ea
	inc bc			;83eb
	ld d,l			;83ec
	ld (bc),a		;83ed
	rst 38h			;83ee
	ld b,000h		;83ef
	ld (bc),a		;83f1
	rst 38h			;83f2
	ld (bc),a		;83f3
	xor d			;83f4
	ld (bc),a		;83f5
	nop			;83f6
	ld (bc),a		;83f7
	xor d			;83f8
	ld (bc),a		;83f9
	rst 38h			;83fa
	ld (bc),a		;83fb
	xor d			;83fc
	ld (bc),a		;83fd
	nop			;83fe
	ld (bc),a		;83ff
l8400h:
	xor d			;8400
	adc a,c			;8401
	rst 38h			;8402
	inc e			;8403
	ld a,063h		;8404
	pop bc			;8406
	add a,b			;8407
	ld a,07fh		;8408
	ld a,(hl)		;840a
	ex af,af'		;840b
	ld e,b			;840c
	adc a,h			;840d
	rst 38h			;840e
	ld (hl),049h		;840f
	adc a,b			;8411
	ex af,af'		;8412
	inc e			;8413
	inc e			;8414
	ld c,c			;8415
	rst 38h			;8416
	nop			;8417
	nop			;8418
	rst 38h			;8419
	inc b			;841a
	ld de,04283h		;841b
	add a,c			;841e
	rst 38h			;841f
	inc bc			;8420
	nop			;8421
	add a,a			;8422
	ld a,(hl)		;8423
	cp l			;8424
	xor d			;8425
	xor d			;8426
	add a,b			;8427
	add a,c			;8428
	add a,c			;8429
	inc bc			;842a
	ld b,c			;842b
	adc a,d			;842c
	nop			;842d
	rra			;842e
	nop			;842f
	ccf			;8430
	ccf			;8431
	rrca			;8432
	ld a,022h		;8433
	cp 055h			;8435
	ld b,001h		;8437
	adc a,b			;8439
	nop			;843a
	rst 38h			;843b
	ex af,af'		;843c
	rst 30h			;843d
	ld d,l			;843e
	ld d,l			;843f
	rst 38h			;8440
	ld d,l			;8441
	inc b			;8442
	dec d			;8443
	ld (bc),a		;8444
	sub l			;8445
	ld (bc),a		;8446
	add a,b			;8447
	add a,d			;8448
	ld d,l			;8449
	rst 38h			;844a
	inc bc			;844b
	nop			;844c
	sub l			;844d
	rst 38h			;844e
	ld d,l			;844f
	ld d,l			;8450
	jp 0ffc3h		;8451
	jp 0ffc3h		;8454
	rst 38h			;8457
	jp 025a5h		;8458
	push bc			;845b
	add hl,bc		;845c
	di			;845d
	rlca			;845e
	call m,055ffh		;845f
	rst 38h			;8462
	inc bc			;8463
	ld bc,0f883h		;8464
	ret po			;8467
	add a,b			;8468
	inc bc			;8469
	ld de,0ff02h		;846a
	ld (bc),a		;846d
	nop			;846e
	ld b,0ffh		;846f
	add a,e			;8471
	jp 0c3ffh		;8472
	inc bc			;8475
	ld a,a			;8476
	add a,d			;8477
	rst 38h			;8478
	ld a,a			;8479
	inc bc			;847a
	rst 38h			;847b
	add a,l			;847c
	set 7,a			;847d
	adc a,(hl)		;847f
	cp a			;8480
	cp a			;8481
	inc bc			;8482
	rst 38h			;8483
	adc a,e			;8484
	rst 30h			;8485
	rst 38h			;8486
	rst 30h			;8487
	rst 30h			;8488
	djnz $+1		;8489
	ret m			;848b
	ld hl,(0ff4bh)		;848c
	add a,h			;848f
	inc bc			;8490
	cp l			;8491
	add a,e			;8492
	defb 0fdh,0ffh,0fdh ;illegal sequence	;8493
	inc bc			;8496
	cp l			;8497
	add a,a			;8498
	add a,h			;8499
	rst 38h			;849a
	ex de,hl		;849b
	ex af,af'		;849c
	ld (bc),a		;849d
	nop			;849e
	rst 28h			;849f
	inc bc			;84a0
	ex af,af'		;84a1
	inc bc			;84a2
	nop			;84a3
	add a,(hl)		;84a4
	inc h			;84a5
	nop			;84a6
	inc h			;84a7
	inc h			;84a8
	nop			;84a9
	inc h			;84aa
	inc bc			;84ab
	nop			;84ac
	inc b			;84ad
	ld e,d			;84ae
	ld (bc),a		;84af
	nop			;84b0
	ex af,af'		;84b1
	ld a,(hl)		;84b2
	ex af,af'		;84b3
	ld c,c			;84b4
	add a,c			;84b5
	nop			;84b6
	rlca			;84b7
	ld e,b			;84b8
	ex af,af'		;84b9
	add a,c			;84ba
	ex af,af'		;84bb
	add a,b			;84bc
	add a,h			;84bd
	ld bc,0015dh		;84be
	defb 0fdh,004h,081h ;illegal sequence	;84c1
	add a,e			;84c4
	nop			;84c5
	inc (hl)		;84c6
	nop			;84c7
	dec b			;84c8
	ld a,(hl)		;84c9
	add a,h			;84ca
	nop			;84cb
	rst 10h			;84cc
	nop			;84cd
	nop			;84ce
	inc b			;84cf
	ld a,a			;84d0
	ld (bc),a		;84d1
	ld b,b			;84d2
	add a,c			;84d3
	add a,b			;84d4
	dec b			;84d5
	ld a,(hl)		;84d6
	ld (bc),a		;84d7
	ld (bc),a		;84d8
	ld (bc),a		;84d9
	cp 004h			;84da
	add a,c			;84dc
	add a,e			;84dd
	rst 38h			;84de
l84dfh:
	nop			;84df
	rst 38h			;84e0
	dec b			;84e1
	add a,b			;84e2
	ld (bc),a		;84e3
	ld b,b			;84e4
	adc a,b			;84e5
	add a,b			;84e6
	ld a,(hl)		;84e7
	nop			;84e8
	nop			;84e9
	rst 38h			;84ea
	ld a,(hl)		;84eb
	ld (bc),a		;84ec
	ld (bc),a		;84ed
	inc bc			;84ee
	cp 095h			;84ef
	nop			;84f1
	cp 081h			;84f2
	rst 38h			;84f4
	nop			;84f5
	rst 38h			;84f6
	add a,b			;84f7
	rst 38h			;84f8
	nop			;84f9
	rst 38h			;84fa
	add a,b			;84fb
	nop			;84fc
	inc a			;84fd
	ld a,(hl)		;84fe
	nop			;84ff
sub_8500h:
	inc a			;8500
	ld a,(hl)		;8501
	nop			;8502
	inc a			;8503
	ld b,d			;8504
	inc a			;8505
	inc bc			;8506
	ld a,(hl)		;8507
	and h			;8508
	ld b,d			;8509
	inc a			;850a
	ld a,(hl)		;850b
	ld bc,0015dh		;850c
	pop bc			;850f
	nop			;8510
	rst 18h			;8511
	add a,c			;8512
	nop			;8513
	nop			;8514
	ld (hl),h		;8515
	nop			;8516
	ld b,000h		;8517
	ld b,07ah		;8519
	nop			;851b
	nop			;851c
	rst 38h			;851d
	add a,c			;851e
	add a,c			;851f
	rst 38h			;8520
	nop			;8521
	add a,b			;8522
	add a,b			;8523
	ld h,c			;8524
	jp 0c301h		;8525
	ld bc,001c3h		;8528
	jp 00706h		;852b
	inc a			;852e
	sub h			;852f
	ld bc,00181h		;8530
	add a,c			;8533
	ld bc,l8101h		;8534
	add a,c			;8537
	nop			;8538
	ld a,(hl)		;8539
	nop			;853a
	ld a,(hl)		;853b
	nop			;853c
	nop			;853d
	ld a,(hl)		;853e
	ld a,(hl)		;853f
	call m,l8181h		;8540
	defb 0fdh,005h,081h ;illegal sequence	;8543
	ld (bc),a		;8546
	cp a			;8547
	dec b			;8548
	ld a,(hl)		;8549
	add a,h			;854a
	push af			;854b
	add a,b			;854c
	add a,b			;854d
	rst 38h			;854e
	inc b			;854f
l8550h:
	add a,b			;8550
	sub l			;8551
	nop			;8552
	ld a,(hl)		;8553
	nop			;8554
	ld a,(hl)		;8555
	ld a,(hl)		;8556
	ld b,d			;8557
	inc a			;8558
	ld a,(hl)		;8559
	rrca			;855a
	rlca			;855b
	rlca			;855c
	inc bc			;855d
	ld b,00eh		;855e
	ld c,0ceh		;8560
	add a,b			;8562
	ret nz			;8563
	ret po			;8564
	ret po			;8565
	call pe,0ee04h		;8566
	add a,a			;8569
	and 0e0h		;856a
	ret po			;856c
	ret p			;856d
	ret po			;856e
	ret nz			;856f
	add a,b			;8570
	inc b			;8571
	and l			;8572
	sbc a,h			;8573
	xor l			;8574
	cp a			;8575
	cp a			;8576
	rst 38h			;8577
	ret nz			;8578
	ld a,a			;8579
	rst 38h			;857a
	nop			;857b
	xor 06eh		;857c
	ld b,000h		;857e
	ret nz			;8580
	ret po			;8581
	ret po			;8582
	ret m			;8583
	call m,0fffeh		;8584
	nop			;8587
	nop			;8588
	ld b,00eh		;8589
	ccf			;858b
	ccf			;858c
	ld a,a			;858d
	rst 38h			;858e
	nop			;858f
	nop			;8590
	add a,d			;8591
	jp p,003f1h		;8592
	ld hl,01f02h		;8595
	inc bc			;8598
	cpl			;8599
	and l			;859a
	ld hl,02f2fh		;859b
	ld hl,0211fh		;859e
	cpl			;85a1
	ld sp,03132h		;85a2
	cpl			;85a5
	ld sp,02132h		;85a6
	jr nz,$+35		;85a9
	cpl			;85ab
	ld sp,0323fh		;85ac
	ccf			;85af
	ld (0ef31h),a		;85b0
	ld (0efe1h),a		;85b3
	ex (sp),hl		;85b6
	ld sp,0e33fh		;85b7
	ld sp,02f21h		;85ba
	ld (02121h),a		;85bd
	ld b,0f3h		;85c0
	add a,c			;85c2
	ld (03f03h),a		;85c3
	ld (bc),a		;85c6
	ld (0f202h),a		;85c7
	add a,d			;85ca
	ld (003f2h),a		;85cb
	ld (de),a		;85ce
	add a,c			;85cf
	ld (0f203h),a		;85d0
	add a,c			;85d3
	ld sp,0f103h		;85d4
	inc bc			;85d7
	ld hl,0f204h		;85d8
	inc bc			;85db
	ld (0f202h),a		;85dc
	add a,(hl)		;85df
	ld sp,0f2f1h		;85e0
	pop af			;85e3
	ld (00332h),a		;85e4
	pop af			;85e7
	add a,a			;85e8
	jp p,02131h		;85e9
	pop af			;85ec
	ld sp,02131h		;85ed
	inc bc			;85f0
	pop af			;85f1
	add a,h			;85f2
	ld (de),a		;85f3
	inc hl			;85f4
	ld (de),a		;85f5
	ld (de),a		;85f6
	dec b			;85f7
	pop af			;85f8
	ld (bc),a		;85f9
	ld sp,02181h		;85fa
	ld b,01fh		;85fd
	ld (bc),a		;85ff
	ld (0f105h),a		;8600
	add a,h			;8603
	jp p,0f2f1h		;8604
	jp p,0f30ch		;8607
	ld (bc),a		;860a
	jp p,0f182h		;860b
	jp p,0f103h		;860e
	adc a,h			;8611
	ld sp,03121h		;8612
	ccf			;8615
	ld sp,03f31h		;8616
	ld (0f232h),a		;8619
	ld hl,00313h		;861c
	rra			;861f
	ld (bc),a		;8620
	ld (0f202h),a		;8621
	add a,c			;8624
	ld sp,0f103h		;8625
	add a,c			;8628
	jp p,02105h		;8629
	inc bc			;862c
	pop af			;862d
	ld (bc),a		;862e
	ld (0f20fh),a		;862f
	inc bc			;8632
	pop af			;8633
	ld (bc),a		;8634
	ld hl,01f02h		;8635
	ld (bc),a		;8638
	ld (0f105h),a		;8639
	add a,l			;863c
	ld hl,03232h		;863d
	ld hl,0032fh		;8640
	pop af			;8643
	inc bc			;8644
	inc hl			;8645
	ld (bc),a		;8646
	ld (de),a		;8647
	ld (bc),a		;8648
	di			;8649
	add a,d			;864a
	ld hl,004f2h		;864b
	pop af			;864e
	add a,c			;864f
	ld (de),a		;8650
	inc bc			;8651
	pop af			;8652
	ld (bc),a		;8653
	inc hl			;8654
	ld (bc),a		;8655
	pop af			;8656
	add a,e			;8657
	ld (de),a		;8658
	pop af			;8659
	pop af			;865a
	ex af,af'		;865b
	xor (hl)		;865c
	ld (bc),a		;865d
	ld l,d			;865e
	inc b			;865f
	xor (hl)		;8660
	ld (bc),a		;8661
	ld l,d			;8662
	ld (bc),a		;8663
	ld b,004h		;8664
	ld l,d			;8666
	ld (bc),a		;8667
	ld b,085h		;8668
	jp p,0f1f1h		;866a
	jp p,00cf2h		;866d
	ld (0f202h),a		;8670
	ld (bc),a		;8673
	di			;8674
	add a,l			;8675
	jp p,0f23fh		;8676
	ld (00332h),a		;8679
	pop af			;867c
	add a,c			;867d
	jp p,01304h		;867e
	inc bc			;8681
	ld hl,0f302h		;8682
	add a,a			;8685
	ld hl,01f32h		;8686
	rra			;8689
	di			;868a
	di			;868b
	jp p,0f103h		;868c
	ld (bc),a		;868f
	ld hl,0f102h		;8690
	adc a,d			;8693
	ld hl,0f1f1h		;8694
	di			;8697
	ld (03f31h),a		;8698
	ccf			;869b
	ld (00331h),a		;869c
	ccf			;869f
	ld (bc),a		;86a0
	jp p,0f381h		;86a1
	inc b			;86a4
	jp p,0f121h		;86a5
	inc bc			;86a8
	ld hl,0f205h		;86a9
	ld (bc),a		;86ac
	pop af			;86ad
	ld (bc),a		;86ae
	ld (0f102h),a		;86af
	cpl			;86b2
	inc b			;86b3
	inc bc			;86b4
	ld d,b			;86b5
	add hl,bc		;86b6
	ld b,b			;86b7
	add a,c			;86b8
	ld d,b			;86b9
	ld b,040h		;86ba
	add a,c			;86bc
	ld d,b			;86bd
	ld c,040h		;86be
	adc a,(hl)		;86c0
	ld d,h			;86c1
	ld d,b			;86c2
	ld d,b			;86c3
	ld b,b			;86c4
	ld d,b			;86c5
	ld d,h			;86c6
	ld b,b			;86c7
	ld b,b			;86c8
	ld d,h			;86c9
	nop			;86ca
	ld d,h			;86cb
	nop			;86cc
	ld d,h			;86cd
	nop			;86ce
	ld de,00354h		;86cf
	ld d,b			;86d2
	dec b			;86d3
	ld d,h			;86d4
	inc bc			;86d5
	ld b,b			;86d6
	add a,c			;86d7
	ld d,b			;86d8
	rlca			;86d9
	ld b,b			;86da
	dec b			;86db
	ld b,l			;86dc
	add a,d			;86dd
	ld b,b			;86de
	dec b			;86df
	rlca			;86e0
	ld b,b			;86e1
	ld (bc),a		;86e2
	dec b			;86e3
	add a,c			;86e4
	ld b,b			;86e5
	inc b			;86e6
l86e7h:
	ld d,h			;86e7
	inc bc			;86e8
	dec b			;86e9
	dec b			;86ea
	ld d,h			;86eb
	add a,d			;86ec
	ld b,b			;86ed
	dec b			;86ee
	inc bc			;86ef
	ld b,b			;86f0
	ld (bc),a		;86f1
	dec b			;86f2
	ld (bc),a		;86f3
	ld b,b			;86f4
	ld (bc),a		;86f5
	dec b			;86f6
	add a,c			;86f7
	ld b,b			;86f8
	inc bc			;86f9
	dec b			;86fa
	add a,c			;86fb
	ld d,h			;86fc
	inc bc			;86fd
	dec b			;86fe
	add a,c			;86ff
	ld d,h			;8700
	inc bc			;8701
	dec b			;8702
	add a,a			;8703
	ld d,h			;8704
	ld b,b			;8705
	ld b,b			;8706
	ld d,h			;8707
	ld b,b			;8708
	ld b,b			;8709
	ld d,h			;870a
	inc bc			;870b
	ld b,b			;870c
	add a,c			;870d
	ld d,b			;870e
	dec b			;870f
	ld b,b			;8710
	add a,c			;8711
	ld d,h			;8712
	dec b			;8713
	ld d,b			;8714
	ld (bc),a		;8715
	ld d,h			;8716
	inc b			;8717
	ld b,b			;8718
	ld (bc),a		;8719
	ld d,b			;871a
	add a,c			;871b
	ld d,h			;871c
	ex af,af'		;871d
	ld b,b			;871e
	ld (bc),a		;871f
	ld d,h			;8720
	sbc a,b			;8721
	ld d,b			;8722
	ld d,h			;8723
	ld b,b			;8724
	ld d,h			;8725
	ld b,b			;8726
	ld d,h			;8727
	ld b,b			;8728
	ld d,h			;8729
	ld d,b			;872a
	ld d,h			;872b
	nop			;872c
	ld d,h			;872d
	nop			;872e
	ld d,h			;872f
	nop			;8730
	ld d,h			;8731
	ld d,b			;8732
	ld d,h			;8733
	ld d,b			;8734
	ld d,h			;8735
	ld d,b			;8736
	ld d,b			;8737
	ld d,h			;8738
	ld d,h			;8739
	dec bc			;873a
	ld b,b			;873b
	dec b			;873c
	ld d,h			;873d
	inc bc			;873e
	inc b			;873f
	add a,c			;8740
	ld d,b			;8741
l8742h:
	rlca			;8742
	ld b,b			;8743
	dec b			;8744
	ld d,h			;8745
	inc bc			;8746
	ld b,b			;8747
	add a,c			;8748
	ld d,b			;8749
	inc bc			;874a
	ld b,b			;874b
	add a,a			;874c
	ld d,h			;874d
	jr nc,l8770h		;874e
	djnz l8742h		;8750
	djnz l8774h		;8752
	inc bc			;8754
	jr nc,l86e7h		;8755
	jr nz,l8769h		;8757
	ret p			;8759
	djnz $+34		;875a
	jr nc,$+51		;875c
	cpl			;875e
	jr nz,$+18		;875f
	ret p			;8761
	jr nc,l8784h		;8762
	djnz $-14		;8764
	di			;8766
	ex af,af'		;8767
	inc bc			;8768
l8769h:
	add a,c			;8769
	jr nz,$+5		;876a
	rra			;876c
l876dh:
	sub e			;876d
	jr nz,l87a0h		;876e
l8770h:
	jr nc,l8792h		;8770
	jr nz,l8784h		;8772
l8774h:
	ret p			;8774
	jr nc,$+34		;8775
	rra			;8777
	rra			;8778
	jr nz,l879bh		;8779
	djnz l876dh		;877b
	jr nc,l879fh		;877d
	rra			;877f
	rra			;8780
	nop			;8781
	ld (bc),a		;8782
	rst 38h			;8783
l8784h:
	ld (bc),a		;8784
	inc de			;8785
	add a,e			;8786
	nop			;8787
	ld a,a			;8788
	rlca			;8789
	inc b			;878a
	nop			;878b
	adc a,(hl)		;878c
	ld bc,00703h		;878d
	rrca			;8790
	rrca			;8791
l8792h:
	nop			;8792
	djnz l87cdh		;8793
	ld (hl),e		;8795
	and 0cch		;8796
	sbc a,b			;8798
	jr nc,l87bah		;8799
l879bh:
	inc bc			;879b
	ccf			;879c
	inc b			;879d
	ld a,a			;879e
l879fh:
	add a,c			;879f
l87a0h:
	sbc a,h			;87a0
	inc bc			;87a1
	nop			;87a2
	inc bc			;87a3
	add a,b			;87a4
	inc bc			;87a5
	nop			;87a6
	inc bc			;87a7
	add a,b			;87a8
	add a,e			;87a9
	add a,c			;87aa
	add a,e			;87ab
	ld a,b			;87ac
	inc bc			;87ad
	ld d,h			;87ae
	add a,l			;87af
	nop			;87b0
	ret nz			;87b1
	nop			;87b2
	ret p			;87b3
	nop			;87b4
	inc b			;87b5
	ld a,a			;87b6
l87b7h:
	inc bc			;87b7
	ccf			;87b8
	add a,c			;87b9
l87bah:
	rra			;87ba
	inc bc			;87bb
	ld bc,l8192h		;87bc
	jp 0f0e3h		;87bf
	add hl,bc		;87c2
	rra			;87c3
	rra			;87c4
	rrca			;87c5
	rlca			;87c6
	inc bc			;87c7
	nop			;87c8
	ld a,a			;87c9
	ccf			;87ca
	rra			;87cb
	rrca			;87cc
l87cdh:
	rlca			;87cd
	inc bc			;87ce
	ld bc,00003h		;87cf
	adc a,c			;87d2
	rra			;87d3
	rrca			;87d4
	rlca			;87d5
	inc bc			;87d6
	ld bc,00703h		;87d7
	rst 38h			;87da
	ccf			;87db
	inc bc			;87dc
	ld a,a			;87dd
	add a,h			;87de
	ld bc,00181h		;87df
	ld bc,00004h		;87e2
	add a,h			;87e5
	inc bc			;87e6
	rlca			;87e7
	rrca			;87e8
	rra			;87e9
	dec b			;87ea
	ld bc,00384h		;87eb
	rlca			;87ee
	rst 38h			;87ef
	nop			;87f0
	inc b			;87f1
	ld bc,0038bh		;87f2
	rlca			;87f5
	rst 38h			;87f6
	nop			;87f7
	rlca			;87f8
	ccf			;87f9
	rlca			;87fa
l87fbh:
	rra			;87fb
	ccf			;87fc
	ld a,a			;87fd
	ld b,e			;87fe
	nop			;87ff
l8800h:
	ld (bc),a		;8800
	rra			;8801
	add a,e			;8802
	ld hl,0f1f1h		;8803
l8806h:
	ex af,af'		;8806
	djnz $-120		;8807
	jr nz,l87fbh		;8809
	djnz $+18		;880b
	jr nc,$+50		;880d
	inc bc			;880f
	jr nz,$+5		;8810
	djnz $-120		;8812
	jr nz,l8806h		;8814
l8816h:
	djnz l8838h		;8816
	ret p			;8818
	djnz $+7		;8819
	ret p			;881b
	ld b,010h		;881c
	adc a,b			;881e
	jr nz,l8851h		;881f
	jr nc,$+34		;8821
	djnz l8816h		;8823
	jr nz,$+33		;8825
	rlca			;8827
	ret p			;8828
	add a,a			;8829
	djnz l884ch		;882a
	ret p			;882c
	djnz l884fh		;882d
	ret p			;882f
	djnz $+5		;8830
	jr nz,l8837h		;8832
	djnz l87b7h		;8834
	pop af			;8836
l8837h:
	rlca			;8837
l8838h:
	ld hl,0100eh		;8838
	ld b,020h		;883b
	ld (bc),a		;883d
	ld hl,03204h		;883e
	dec de			;8841
	jr nz,l8849h		;8842
	ld (09800h),a		;8844
	exx			;8847
	adc a,c			;8848
l8849h:
	sub c			;8849
	sub e			;884a
	and e			;884b
l884ch:
	and a			;884c
	and a			;884d
	ld h,a			;884e
l884fh:
	ld (bc),a		;884f
	add a,d			;8850
l8851h:
	inc a			;8851
	sbc a,(hl)		;8852
	rst 8			;8853
	rst 20h			;8854
	di			;8855
	jr l88bbh		;8856
	inc sp			;8858
	ld sp,07819h		;8859
	sbc a,a			;885c
	ret po			;885d
	ld a,a			;885e
	nop			;885f
	add a,e			;8860
	inc bc			;8861
	di			;8862
	di			;8863
	inc bc			;8864
	jp p,0f103h		;8865
	add a,c			;8868
	jp p,03105h		;8869
	add a,(hl)		;886c
	ld (0f3f2h),a		;886d
	di			;8870
	jp p,00331h		;8871
	ld (l8800h),a		;8874
	ret p			;8877
	rrca			;8878
	rra			;8879
	ld h,b			;887a
	ld a,a			;887b
	ld h,c			;887c
	ret nz			;887d
	sbc a,000h		;887e
	ld (bc),a		;8880
	ld (02181h),a		;8881
	inc bc			;8884
	pop af			;8885
	add a,d			;8886
	jp p,00021h		;8887
	add a,c			;888a
	rrca			;888b
	inc bc			;888c
	ret p			;888d
	add a,h			;888e
	inc bc			;888f
	ld sp,hl		;8890
	add a,e			;8891
	add a,e			;8892
	nop			;8893
	ld (bc),a		;8894
	ld (02181h),a		;8895
	inc bc			;8898
	rra			;8899
	add a,d			;889a
	jp p,000f1h		;889b
	adc a,b			;889e
	jp 0380ch		;889f
	ret po			;88a2
	rlca			;88a3
	ret p			;88a4
	rrca			;88a5
	ret po			;88a6
	nop			;88a7
	add a,c			;88a8
	jp p,0f103h		;88a9
	add a,h			;88ac
	ld sp,0f1f1h		;88ad
	jp p,0a000h		;88b0
	inc a			;88b3
	rrca			;88b4
	rlca			;88b5
	inc bc			;88b6
	rrca			;88b7
	rlca			;88b8
	inc bc			;88b9
	rlca			;88ba
l88bbh:
	inc bc			;88bb
	ld bc,00701h		;88bc
	ex (sp),hl		;88bf
	ld e,01eh		;88c0
	ret po			;88c2
	inc a			;88c3
	ret p			;88c4
	ret po			;88c5
	ret nz			;88c6
	ret p			;88c7
	ret po			;88c8
	ret nz			;88c9
	ret po			;88ca
	ret nz			;88cb
	add a,b			;88cc
	add a,b			;88cd
	ret po			;88ce
	rst 0			;88cf
	ld a,b			;88d0
	ld a,b			;88d1
	rlca			;88d2
	nop			;88d3
	ld (bc),a		;88d4
	ret po			;88d5
	sbc a,(hl)		;88d6
	ret nc			;88d7
	ld h,b			;88d8
	ret po			;88d9
	ret nc			;88da
	ld h,b			;88db
	ret po			;88dc
	ret nc			;88dd
	ld h,b			;88de
	jr nc,$+34		;88df
l88e1h:
	pop af			;88e1
	di			;88e2
	ld (0e032h),a		;88e3
	ret po			;88e6
	ret nc			;88e7
	ld h,b			;88e8
	ret po			;88e9
	ret nc			;88ea
	ld h,b			;88eb
	ret po			;88ec
	ret nc			;88ed
	ld h,b			;88ee
	jr nc,l8911h		;88ef
	pop af			;88f1
	di			;88f2
	ld (00032h),a		;88f3
	ld (bc),a		;88f6
	rlca			;88f7
	add a,c			;88f8
l88f9h:
	rra			;88f9
	inc bc			;88fa
	rlca			;88fb
	ld (bc),a		;88fc
	ret m			;88fd
	nop			;88fe
	add a,c			;88ff
	ld hl,03203h		;8900
	add a,h			;8903
	ld hl,01313h		;8904
	pop af			;8907
	nop			;8908
	adc a,b			;8909
	rst 38h			;890a
	inc sp			;890b
	inc hl			;890c
	ex (sp),hl		;890d
	ex af,af'		;890e
	sbc a,b			;890f
	ccf			;8910
l8911h:
	jr l8913h		;8911
l8913h:
	adc a,b			;8913
	pop af			;8914
	jp p,021f2h		;8915
	jp p,0f3f1h		;8918
	jp p,l8b00h		;891b
	jr l8951h		;891e
	sbc a,h			;8920
	add hl,sp		;8921
	ld h,e			;8922
	rst 8			;8923
	ld a,0f0h		;8924
	rra			;8926
	rra			;8927
	ret p			;8928
	dec b			;8929
	rrca			;892a
	add a,c			;892b
	ld h,b			;892c
	inc bc			;892d
	ret p			;892e
	adc a,b			;892f
	ret po			;8930
	ret nz			;8931
	cp b			;8932
	ld a,h			;8933
	ld (06e77h),a		;8934
	ld l,l			;8937
	inc bc			;8938
	ld l,e			;8939
	add a,c			;893a
	jr $+6			;893b
	cp 08ch			;893d
	call m,0e0f8h		;893f
	ret nz			;8942
	pop af			;8943
	rrca			;8944
	ld a,b			;8945
	rrca			;8946
	ret po			;8947
	inc a			;8948
	rra			;8949
	rrca			;894a
	nop			;894b
	add a,d			;894c
	pop af			;894d
	jp p,03103h		;894e
l8951h:
	inc b			;8951
	ld (02189h),a		;8952
	pop af			;8955
	pop af			;8956
	ld (de),a		;8957
	inc hl			;8958
	ccf			;8959
	pop af			;895a
	jr nz,l897dh		;895b
	inc b			;895d
	jr nc,l88e1h		;895e
	jr nz,$+5		;8960
	jr nc,$+4		;8962
	ld (03187h),a		;8964
	ld hl,0f12fh		;8967
	jr nc,l898ch		;896a
	jr nz,$+6		;896c
l896eh:
	djnz l88f9h		;896e
	ret p			;8970
	ld hl,03231h		;8971
	ld hl,0f1f1h		;8974
	jp p,000f3h		;8977
	adc a,b			;897a
	ex (sp),hl		;897b
	ret p			;897c
l897dh:
	inc bc			;897d
	ld a,h			;897e
	ld a,09ch		;897f
	ret nz			;8981
	ld a,a			;8982
	nop			;8983
	add a,h			;8984
	ld hl,0f331h		;8985
	ld (02103h),a		;8988
	add a,c			;898b
l898ch:
	pop af			;898c
	nop			;898d
	adc a,e			;898e
	ld c,080h		;898f
	ld h,b			;8991
	inc e			;8992
	add a,a			;8993
	ld a,h			;8994
	rlca			;8995
	ret p			;8996
	ccf			;8997
	nop			;8998
	rrca			;8999
	dec b			;899a
	ret p			;899b
	nop			;899c
	add a,c			;899d
	ld hl,0f105h		;899e
	adc a,d			;89a1
	ld hl,021f3h		;89a2
	ld hl,0f1f1h		;89a5
	ld (de),a		;89a8
	inc hl			;89a9
	ccf			;89aa
	pop af			;89ab
	nop			;89ac
	sbc a,b			;89ad
	rst 20h			;89ae
	ret po			;89af
	jr $+26			;89b0
	ld b,h			;89b2
	ld a,b			;89b3
	ret z			;89b4
	add a,h			;89b5
	jr nz,$+51		;89b6
	cp 097h			;89b8
	call m,07fech		;89ba
	jp 0c1ffh		;89bd
	ret nz			;89c0
	ret po			;89c1
	ret p			;89c2
	ret z			;89c3
	adc a,b			;89c4
	rra			;89c5
	nop			;89c6
	ld (bc),a		;89c7
	ld hl,0f182h		;89c8
	cpl			;89cb
	ld b,0f1h		;89cc
	ld (bc),a		;89ce
	defb 0fdh,082h,0f8h ;illegal sequence	;89cf
	defb 0fdh,003h,0f1h ;illegal sequence	;89d2
	add a,d			;89d5
	jp p,003f3h		;89d6
	jp p,0f102h		;89d9
l89dch:
	nop			;89dc
	adc a,b			;89dd
	ret nz			;89de
	ret po			;89df
	ret po			;89e0
	and 010h		;89e1
	jr nc,l8a05h		;89e3
	jr nz,l89e7h		;89e5
l89e7h:
	inc b			;89e7
	jr nc,l896eh		;89e8
	di			;89ea
	jp p,0f1f2h		;89eb
	nop			;89ee
	xor c			;89ef
	jp 0380ch		;89f0
	ex (sp),hl		;89f3
	rrca			;89f4
	cp 00fh			;89f5
	ex (sp),hl		;89f7
	rrca			;89f8
	rrca			;89f9
	ret m			;89fa
	ret nz			;89fb
	inc a			;89fc
	ld a,(hl)		;89fd
	inc a			;89fe
	ret nz			;89ff
	ret p			;8a00
	ret p			;8a01
	rra			;8a02
	inc bc			;8a03
	ret p			;8a04
l8a05h:
	call m,003f0h		;8a05
	jp 01c30h		;8a08
	rst 0			;8a0b
	ret p			;8a0c
	ld a,a			;8a0d
	ret p			;8a0e
	rst 0			;8a0f
	ret m			;8a10
	inc e			;8a11
	jp 00cf8h		;8a12
	ex (sp),hl		;8a15
	jr l89dch		;8a16
	ret m			;8a18
	inc bc			;8a19
	rrca			;8a1a
	inc bc			;8a1b
	rra			;8a1c
	add a,d			;8a1d
	ret nz			;8a1e
	rra			;8a1f
	inc bc			;8a20
	ret p			;8a21
	inc bc			;8a22
	ret m			;8a23
	add a,c			;8a24
	inc bc			;8a25
	nop			;8a26
	add a,c			;8a27
	jp p,0f104h		;8a28
	add a,a			;8a2b
l8a2ch:
	ld sp,hl		;8a2c
	pop af			;8a2d
	jp p,0f231h		;8a2e
	rst 30h			;8a31
	ld sp,hl		;8a32
	inc bc			;8a33
	jp (hl)			;8a34
	add a,l			;8a35
	ld sp,hl		;8a36
	ld sp,0f7f2h		;8a37
	rst 30h			;8a3a
	inc bc			;8a3b
	sub a			;8a3c
	add a,d			;8a3d
	rst 30h			;8a3e
	jp p,0f104h		;8a3f
	sbc a,e			;8a42
	rst 30h			;8a43
	pop af			;8a44
	jp p,0f1f3h		;8a45
	jp p,0f1f3h		;8a48
	pop af			;8a4b
	jp p,0f7f1h		;8a4c
	di			;8a4f
	ld (0f32fh),a		;8a50
	ld (02f2fh),a		;8a53
	rst 30h			;8a56
	di			;8a57
	ld (0f32fh),a		;8a58
	ld (02f2fh),a		;8a5b
	nop			;8a5e
	ld (bc),a		;8a5f
	rrca			;8a60
l8a61h:
	sub (hl)		;8a61
	jp 00cf8h		;8a62
	ex (sp),hl		;8a65
	jr l8a2ch		;8a66
	ld a,h			;8a68
	rst 38h			;8a69
	rst 38h			;8a6a
	ret nz			;8a6b
	rra			;8a6c
l8a6dh:
	dec e			;8a6d
	dec e			;8a6e
	ret nz			;8a6f
	add a,b			;8a70
	add a,b			;8a71
	rst 38h			;8a72
	inc bc			;8a73
	ret m			;8a74
	cp b			;8a75
	daa			;8a76
	call m,l8800h		;8a77
	djnz $+99		;8a7a
	jp p,0f1f3h		;8a7c
l8a7fh:
	pop af			;8a7f
	jp p,003f1h		;8a80
	ld h,d			;8a83
	adc a,l			;8a84
	or 063h			;8a85
	ld (02f2fh),a		;8a87
	jr nz,l8aeeh		;8a8a
	ld h,d			;8a8c
	or 063h			;8a8d
	ld (0f2f2h),a		;8a8f
	nop			;8a92
	adc a,b			;8a93
	call m,0c3f0h		;8a94
	rra			;8a97
	jr nc,l8a61h		;8a98
	jr l8abfh		;8a9a
	nop			;8a9c
	adc a,b			;8a9d
	nop			;8a9e
	ld h,c			;8a9f
	jp p,0f1f3h		;8aa0
	pop af			;8aa3
	jp p,000f1h		;8aa4
	add a,d			;8aa7
	nop			;8aa8
	ld bc,00304h		;8aa9
	adc a,h			;8aac
	ld bc,00100h		;8aad
	ld bc,00703h		;8ab0
	rlca			;8ab3
	rrca			;8ab4
	ccf			;8ab5
	rrca			;8ab6
	nop			;8ab7
	add a,b			;8ab8
	inc b			;8ab9
	ret nz			;8aba
	adc a,d			;8abb
	add a,b			;8abc
	nop			;8abd
	add a,b			;8abe
l8abfh:
	add a,b			;8abf
	ret nz			;8ac0
	ret po			;8ac1
	ret po			;8ac2
	ret p			;8ac3
	call m,004f0h		;8ac4
	inc bc			;8ac7
	add a,h			;8ac8
	nop			;8ac9
	ld bc,00001h		;8aca
	dec b			;8acd
	inc bc			;8ace
	inc bc			;8acf
l8ad0h:
	nop			;8ad0
	adc a,b			;8ad1
	inc bc			;8ad2
	rlca			;8ad3
	rlca			;8ad4
	ld h,a			;8ad5
	ex af,af'		;8ad6
l8ad7h:
	inc c			;8ad7
	inc b			;8ad8
l8ad9h:
	inc b			;8ad9
	nop			;8ada
	ld (bc),a		;8adb
	jr nz,l8ae0h		;8adc
	jr nc,$+7		;8ade
l8ae0h:
	jr nz,l8ae4h		;8ae0
	jr nc,l8a6dh		;8ae2
l8ae4h:
	jr nz,l8af6h		;8ae4
	jr nc,$+50		;8ae6
	ld hl,02020h		;8ae8
	jr nc,l8b1dh		;8aeb
	dec b			;8aed
l8aeeh:
	jr nz,l8af2h		;8aee
	jr nc,$-119		;8af0
l8af2h:
	jr nz,l8b04h		;8af2
	jr nc,l8b26h		;8af4
l8af6h:
	ld hl,0f010h		;8af6
	rlca			;8af9
	djnz l8a7fh		;8afa
	jr nz,l8b0eh		;8afc
	ret p			;8afe
	inc b			;8aff
l8b00h:
	djnz $+6		;8b00
	jr nc,$-122		;8b02
l8b04h:
	di			;8b04
	jp p,0f1f2h		;8b05
	nop			;8b08
	adc a,b			;8b09
	rra			;8b0a
	jr c,l8ad0h		;8b0b
	rra			;8b0d
l8b0eh:
	jr nc,l8ad7h		;8b0e
	jr l8b35h		;8b10
	nop			;8b12
	adc a,b			;8b13
	di			;8b14
	pop af			;8b15
	jp p,0f1f3h		;8b16
	pop af			;8b19
	jp p,000f1h		;8b1a
l8b1dh:
	dec b			;8b1d
l8b1eh:
	ret nz			;8b1e
	inc bc			;8b1f
	nop			;8b20
	inc b			;8b21
	ret nz			;8b22
	add a,h			;8b23
	nop			;8b24
	add a,b			;8b25
l8b26h:
	add a,b			;8b26
	nop			;8b27
	nop			;8b28
	add a,h			;8b29
	djnz l8b4ch		;8b2a
	djnz l8b1eh		;8b2c
	dec b			;8b2e
	djnz $-125		;8b2f
	ret p			;8b31
	ld b,010h		;8b32
	nop			;8b34
l8b35h:
	add a,h			;8b35
	nop			;8b36
	ld c,c			;8b37
	ld c,c			;8b38
	rst 38h			;8b39
	inc b			;8b3a
	add a,c			;8b3b
	add a,h			;8b3c
	rst 38h			;8b3d
	inc d			;8b3e
	inc d			;8b3f
	rst 38h			;8b40
	inc bc			;8b41
	add a,b			;8b42
	ld (bc),a		;8b43
	rst 38h			;8b44
	ld (bc),a		;8b45
	jr z,l8b4ah		;8b46
	rst 38h			;8b48
	ld (bc),a		;8b49
l8b4ah:
	nop			;8b4a
	ld (bc),a		;8b4b
l8b4ch:
	rst 38h			;8b4c
	ld (bc),a		;8b4d
	sub d			;8b4e
	add a,c			;8b4f
	rst 38h			;8b50
	inc b			;8b51
	pop bc			;8b52
	ret nz			;8b53
	jr c,l8ad9h		;8b54
	ld c,h			;8b56
	inc sp			;8b57
	add a,(hl)		;8b58
	call z,096bch		;8b59
	adc a,(hl)		;8b5c
	call nz,sub_8e33h	;8b5d
	ld h,e			;8b60
	jr c,$+30		;8b61
	jr z,l8aeeh		;8b63
	add a,0f1h		;8b65
	ret z			;8b67
	adc a,b			;8b68
	sbc a,h			;8b69
	cp (hl)			;8b6a
	cp a			;8b6b
	ret nc			;8b6c
	inc (hl)		;8b6d
	jp p,0f91fh		;8b6e
	defb 0fdh,07dh ;ld a,iyl	;8b71
	adc a,h			;8b73
	inc e			;8b74
	pop bc			;8b75
	ld (061cch),a		;8b76
	inc sp			;8b79
	dec a			;8b7a
	ld l,c			;8b7b
	ld (hl),c		;8b7c
	inc hl			;8b7d
	call z,0c671h		;8b7e
	inc e			;8b81
	jr c,l8b98h		;8b82
	sub c			;8b84
	ld h,e			;8b85
	adc a,a			;8b86
	inc de			;8b87
	ld de,07d39h		;8b88
	defb 0fdh,00bh,02ch ;illegal sequence	;8b8b
	ld c,a			;8b8e
	ret m			;8b8f
	sbc a,a			;8b90
	cp a			;8b91
	cp (hl)			;8b92
	ld sp,0a200h		;8b93
	rrca			;8b96
	di			;8b97
l8b98h:
	call p,0f3f4h		;8b98
	dec (hl)		;8b9b
	di			;8b9c
	ld e,c			;8b9d
	call p,0f9f4h		;8b9e
	ld sp,hl		;8ba1
	ld b,e			;8ba2
	ld d,h			;8ba3
	sub l			;8ba4
	sub l			;8ba5
	call p,0f9f4h		;8ba6
	ld sp,hl		;8ba9
	inc (hl)		;8baa
	inc (hl)		;8bab
	sub l			;8bac
	sub l			;8bad
	di			;8bae
	di			;8baf
	call p,0f3f4h		;8bb0
	dec (hl)		;8bb3
	di			;8bb4
	ld e,c			;8bb5
	di			;8bb6
	call p,0f503h		;8bb7
	add a,l			;8bba
	ld sp,hl		;8bbb
	push af			;8bbc
	call p,0f4f3h		;8bbd
	inc bc			;8bc0
	push af			;8bc1
	add a,d			;8bc2
	ld sp,hl		;8bc3
	push af			;8bc4
	dec b			;8bc5
	call p,0f502h		;8bc6
	ld (bc),a		;8bc9
	call p,0f58ah		;8bca
	call p,0f4f3h		;8bcd
	ld d,e			;8bd0
	sub e			;8bd1
	ld d,h			;8bd2
	call p,0f4f3h		;8bd3
	inc bc			;8bd6
	push af			;8bd7
	add a,l			;8bd8
	ld sp,hl		;8bd9
	push af			;8bda
	call p,0f4f3h		;8bdb
	inc bc			;8bde
	push af			;8bdf
	add a,d			;8be0
	ld sp,hl		;8be1
	push af			;8be2
	dec b			;8be3
	call p,0f502h		;8be4
	ld (bc),a		;8be7
	call p,0f588h		;8be8
	call p,0f4f3h		;8beb
	ld d,e			;8bee
	sub e			;8bef
	ld d,h			;8bf0
	call p,00300h		;8bf1
	ld c,b			;8bf4
	add a,c			;8bf5
	rst 38h			;8bf6
	inc bc			;8bf7
	ld a,(hl)		;8bf8
	sub c			;8bf9
	rst 38h			;8bfa
	sub (hl)		;8bfb
	sub h			;8bfc
	sub h			;8bfd
	rst 38h			;8bfe
	rst 38h			;8bff
	add a,b			;8c00
	add a,b			;8c01
	rst 38h			;8c02
	ld l,c			;8c03
	add hl,hl		;8c04
	add hl,hl		;8c05
	rst 38h			;8c06
	rst 38h			;8c07
	nop			;8c08
	nop			;8c09
	rst 38h			;8c0a
	inc bc			;8c0b
	sub d			;8c0c
	add a,c			;8c0d
	rst 38h			;8c0e
	inc bc			;8c0f
	ld a,089h		;8c10
	rst 38h			;8c12
	nop			;8c13
	nop			;8c14
	rst 38h			;8c15
	rst 38h			;8c16
	nop			;8c17
	jr z,l8c42h		;8c18
	rst 38h			;8c1a
	inc b			;8c1b
	ld a,089h		;8c1c
	nop			;8c1e
	sub d			;8c1f
	sub d			;8c20
	rst 38h			;8c21
	add a,a			;8c22
	adc a,(hl)		;8c23
	or l			;8c24
	or l			;8c25
	nop			;8c26
	inc bc			;8c27
	ld (hl),l		;8c28
	add a,d			;8c29
	pop hl			;8c2a
	ld (hl),c		;8c2b
	inc bc			;8c2c
	xor l			;8c2d
	inc bc			;8c2e
	xor (hl)		;8c2f
	inc b			;8c30
	ld a,(hl)		;8c31
	sub l			;8c32
	nop			;8c33
	ld c,c			;8c34
	ld c,c			;8c35
	rst 38h			;8c36
	sub h			;8c37
	sub (hl)		;8c38
	sub h			;8c39
	rst 30h			;8c3a
	sub h			;8c3b
	sub h			;8c3c
	rst 30h			;8c3d
	sub h			;8c3e
	add hl,hl		;8c3f
	ld l,c			;8c40
	add hl,hl		;8c41
l8c42h:
	rst 28h			;8c42
	xor c			;8c43
	xor c			;8c44
	rst 28h			;8c45
	add hl,hl		;8c46
	nop			;8c47
	inc bc			;8c48
	add a,b			;8c49
	adc a,b			;8c4a
	rst 38h			;8c4b
	inc d			;8c4c
	inc d			;8c4d
	rst 38h			;8c4e
	rst 38h			;8c4f
	ld a,(hl)		;8c50
	ld a,(hl)		;8c51
	nop			;8c52
	inc bc			;8c53
	ld a,(hl)		;8c54
	add a,c			;8c55
	nop			;8c56
	rlca			;8c57
	or a			;8c58
	add a,c			;8c59
	nop			;8c5a
	rlca			;8c5b
	ld l,l			;8c5c
	xor c			;8c5d
	nop			;8c5e
	ld hl,(0222ah)		;8c5f
	ld hl,(02a22h)		;8c62
	ld hl,(07e00h)		;8c65
	nop			;8c68
	ld a,(hl)		;8c69
	add a,b			;8c6a
	rst 38h			;8c6b
	ld c,b			;8c6c
	ld c,b			;8c6d
	rst 38h			;8c6e
	pop bc			;8c6f
	rst 38h			;8c70
	ld a,081h		;8c71
	rst 38h			;8c73
	sub d			;8c74
	sub d			;8c75
	rst 38h			;8c76
	rst 38h			;8c77
	nop			;8c78
	nop			;8c79
	rst 38h			;8c7a
	rst 38h			;8c7b
	nop			;8c7c
	nop			;8c7d
	rst 38h			;8c7e
	push de			;8c7f
	push de			;8c80
l8c81h:
	rst 38h			;8c81
	push de			;8c82
	push de			;8c83
	rst 38h			;8c84
	pop bc			;8c85
	ret			;8c86
	ex af,af'		;8c87
	cp l			;8c88
	add a,c			;8c89
	rst 38h			;8c8a
	inc bc			;8c8b
	nop			;8c8c
	ld (bc),a		;8c8d
	ld sp,hl		;8c8e
	ld (bc),a		;8c8f
	rst 38h			;8c90
	rlca			;8c91
	nop			;8c92
	add a,c			;8c93
	rst 38h			;8c94
	nop			;8c95
	adc a,0f5h		;8c96
	call p,0f3f3h		;8c98
	sub l			;8c9b
	ccf			;8c9c
	ld d,e			;8c9d
	push af			;8c9e
	push af			;8c9f
	call p,0f3f3h		;8ca0
	sub l			;8ca3
	sub l			;8ca4
	ld d,h			;8ca5
	push af			;8ca6
	push af			;8ca7
	call p,0f3f3h		;8ca8
	sub l			;8cab
	sub l			;8cac
	call p,0f5f4h		;8cad
	call p,0f3f3h		;8cb0
	sub l			;8cb3
	ccf			;8cb4
	ld d,e			;8cb5
	ld sp,hl		;8cb6
	ld sp,hl		;8cb7
	ld b,l			;8cb8
	ld b,l			;8cb9
	ccf			;8cba
	ccf			;8cbb
	ld sp,hl		;8cbc
	call p,sub_95f4h	;8cbd
	ccf			;8cc0
	ld d,e			;8cc1
	ccf			;8cc2
	ccf			;8cc3
	call p,0f3f3h		;8cc4
	sub h			;8cc7
	ld d,e			;8cc8
	ld d,e			;8cc9
	ld c,a			;8cca
	ld c,a			;8ccb
	sub l			;8ccc
	ld d,h			;8ccd
	ld b,e			;8cce
	sub h			;8ccf
	ld d,e			;8cd0
	ld d,e			;8cd1
	ld b,e			;8cd2
	rst 38h			;8cd3
	sub l			;8cd4
	ld d,h			;8cd5
	ld b,e			;8cd6
	sub l			;8cd7
	ccf			;8cd8
	ld d,e			;8cd9
	ccf			;8cda
	ccf			;8cdb
	call p,0f3f3h		;8cdc
	ld sp,hl		;8cdf
	ld sp,hl		;8ce0
	push af			;8ce1
	ld sp,hl		;8ce2
	ld sp,hl		;8ce3
	push af			;8ce4
	inc b			;8ce5
	ld sp,hl		;8ce6
	add a,h			;8ce7
	push af			;8ce8
	ld sp,hl		;8ce9
	ld sp,hl		;8cea
	push af			;8ceb
	inc bc			;8cec
	ld sp,hl		;8ced
	add a,l			;8cee
	sub l			;8cef
	ld d,h			;8cf0
	ld b,e			;8cf1
	ld sp,hl		;8cf2
	ld sp,hl		;8cf3
	inc bc			;8cf4
	call p,04385h		;8cf5
	ccf			;8cf8
	ccf			;8cf9
	sub l			;8cfa
	ld d,h			;8cfb
	inc bc			;8cfc
	ccf			;8cfd
	add a,c			;8cfe
	ld c,a			;8cff
	inc bc			;8d00
	ld e,a			;8d01
	add a,c			;8d02
	ld c,a			;8d03
	inc bc			;8d04
	ccf			;8d05
	add a,c			;8d06
	ld c,a			;8d07
	inc bc			;8d08
	ld e,a			;8d09
	add a,c			;8d0a
	ld c,a			;8d0b
	inc c			;8d0c
	ccf			;8d0d
	add a,c			;8d0e
sub_8d0fh:
	ld d,h			;8d0f
	inc bc			;8d10
	di			;8d11
	ld (bc),a		;8d12
	call p,0f302h		;8d13
	add a,c			;8d16
	ld d,h			;8d17
	inc bc			;8d18
	di			;8d19
	inc b			;8d1a
	call p,0f302h		;8d1b
	ld (bc),a		;8d1e
	sub l			;8d1f
	inc bc			;8d20
	di			;8d21
	ld (bc),a		;8d22
	call p,0fd86h		;8d23
	di			;8d26
	di			;8d27
	call p,sub_95f3h	;8d28
	ld b,054h		;8d2b
	add a,c			;8d2d
	ld b,e			;8d2e
	inc b			;8d2f
	sub l			;8d30
	add a,l			;8d31
	ld d,h			;8d32
	ld e,c			;8d33
	ld e,c			;8d34
	ld c,c			;8d35
	ld c,c			;8d36
	rlca			;8d37
	ld b,l			;8d38
	nop			;8d39
	rlca			;8d3a
	cpl			;8d3b
	ld (bc),a		;8d3c
	nop			;8d3d
	adc a,a			;8d3e
	rla			;8d3f
	nop			;8d40
	nop			;8d41
	rla			;8d42
	rla			;8d43
	nop			;8d44
	nop			;8d45
	halt			;8d46
	nop			;8d47
	add a,b			;8d48
	add a,b			;8d49
	rst 38h			;8d4a
	sub b			;8d4b
	sub b			;8d4c
	sub a			;8d4d
	ex af,af'		;8d4e
	cp a			;8d4f
	add a,h			;8d50
	nop			;8d51
	ld h,026h		;8d52
	nop			;8d54
	inc bc			;8d55
	ld e,a			;8d56
	add a,c			;8d57
	nop			;8d58
	dec b			;8d59
	call m,00081h		;8d5a
	inc bc			;8d5d
	or h			;8d5e
	add a,h			;8d5f
	and l			;8d60
	cp l			;8d61
	rst 0			;8d62
	or (hl)			;8d63
	inc bc			;8d64
	or h			;8d65
	sbc a,b			;8d66
	nop			;8d67
	ex (sp),hl		;8d68
	ex de,hl		;8d69
	ex de,hl		;8d6a
	inc (hl)		;8d6b
	in a,(0dbh)		;8d6c
	dec de			;8d6e
	rst 28h			;8d6f
	jp 0d5d4h		;8d70
	dec hl			;8d73
	inc de			;8d74
	daa			;8d75
	inc bc			;8d76
	call nc,02b2ah		;8d77
	inc de			;8d7a
	rst 28h			;8d7b
	ld hl,(0ff2ah)		;8d7c
	nop			;8d7f
	add a,c			;8d80
	ld b,e			;8d81
	dec bc			;8d82
	ccf			;8d83
	add a,c			;8d84
	ld b,e			;8d85
	dec b			;8d86
	ccf			;8d87
	add a,a			;8d88
	ld sp,hl		;8d89
	di			;8d8a
	di			;8d8b
	call p,0f9f5h		;8d8c
	ld d,h			;8d8f
	ld b,043h		;8d90
	ld (bc),a		;8d92
	ccf			;8d93
	xor a			;8d94
	ld b,e			;8d95
	ccf			;8d96
	ccf			;8d97
	ld d,h			;8d98
	ld b,e			;8d99
	ccf			;8d9a
	ccf			;8d9b
	ld b,e			;8d9c
	rst 38h			;8d9d
	ld d,h			;8d9e
	ld b,e			;8d9f
	ccf			;8da0
	ccf			;8da1
	ld d,h			;8da2
	ld b,e			;8da3
	ld c,a			;8da4
	di			;8da5
	call p,053f5h		;8da6
	ld b,e			;8da9
	ld b,e			;8daa
	ccf			;8dab
	ccf			;8dac
	sub e			;8dad
	ld d,e			;8dae
	ld b,e			;8daf
	di			;8db0
	sub e			;8db1
	ld d,e			;8db2
	ld b,e			;8db3
	call p,05393h		;8db4
	ld d,e			;8db7
	call p,0f553h		;8db8
	sub e			;8dbb
	ld d,e			;8dbc
	call p,053f4h		;8dbd
	push af			;8dc0
	call p,0f3f3h		;8dc1
	nop			;8dc4
	add a,d			;8dc5
	ld bc,003ffh		;8dc6
	ld bc,0ff81h		;8dc9
	inc bc			;8dcc
	ld b,l			;8dcd
	add a,e			;8dce
	rst 0			;8dcf
	ld a,l			;8dd0
	rst 0			;8dd1
	inc bc			;8dd2
	ld b,l			;8dd3
	sub c			;8dd4
	rst 38h			;8dd5
	and l			;8dd6
	cp l			;8dd7
l8dd8h:
	rst 20h			;8dd8
	and l			;8dd9
	cp l			;8dda
	rst 20h			;8ddb
	and l			;8ddc
	rst 38h			;8ddd
	sub l			;8dde
	sub l			;8ddf
	rst 38h			;8de0
	and l			;8de1
	and l			;8de2
	rst 38h			;8de3
	add a,c			;8de4
	sbc a,c			;8de5
	nop			;8de6
	ld (bc),a		;8de7
	push af			;8de8
	adc a,h			;8de9
	ld sp,hl		;8dea
	push af			;8deb
	call p,0f9f4h		;8dec
	push af			;8def
	call p,0f4f3h		;8df0
	ld sp,hl		;8df3
	push af			;8df4
	call p,0f304h		;8df5
	add a,h			;8df8
	call p,0f3f3h		;8df9
	call p,0f303h		;8dfc
	ld (bc),a		;8dff
	call p,0f885h		;8e00
	defb 0fdh,0fdh,0f4h ;illegal sequence	;8e03
	di			;8e06
	nop			;8e07
	ld (bc),a		;8e08
	ld e,a			;8e09
	adc a,(hl)		;8e0a
	nop			;8e0b
	call 0c0cdh		;8e0c
	call 06f0dh		;8e0f
	nop			;8e12
	nop			;8e13
	ld d,a			;8e14
	ld d,a			;8e15
	rlca			;8e16
	ld d,a			;8e17
	ld d,b			;8e18
	dec b			;8e19
	cpl			;8e1a
	add a,e			;8e1b
	nop			;8e1c
	add hl,bc		;8e1d
	nop			;8e1e
	dec b			;8e1f
	ld e,a			;8e20
	add a,e			;8e21
	nop			;8e22
	rst 18h			;8e23
	nop			;8e24
	inc bc			;8e25
	ld e,a			;8e26
	add a,l			;8e27
	nop			;8e28
	add hl,bc		;8e29
	nop			;8e2a
	ld e,a			;8e2b
	nop			;8e2c
	inc bc			;8e2d
	cp a			;8e2e
	add a,l			;8e2f
	nop			;8e30
	cp a			;8e31
	nop			;8e32
sub_8e33h:
	cp a			;8e33
	cp a			;8e34
	nop			;8e35
	add a,c			;8e36
	ld hl,01004h		;8e37
	add a,c			;8e3a
	jr nz,l8e44h		;8e3b
	djnz $-122		;8e3d
	jr nz,l8e51h		;8e3f
	djnz l8e64h		;8e41
	rlca			;8e43
l8e44h:
	djnz $-125		;8e44
	ld h,d			;8e46
	inc b			;8e47
	ld hl,01003h		;8e48
	add a,c			;8e4b
	ld hl,01007h		;8e4c
	add a,e			;8e4f
	ld h,d			;8e50
l8e51h:
	ld hl,00321h		;8e51
	djnz l8dd8h		;8e54
	ld hl,00000h		;8e56
	ld (bc),a		;8e59
	nop			;8e5a
	add a,e			;8e5b
	rst 38h			;8e5c
	ld a,(hl)		;8e5d
	nop			;8e5e
	inc bc			;8e5f
	ld a,(hl)		;8e60
	add a,h			;8e61
	nop			;8e62
	ld e,d			;8e63
l8e64h:
	ld e,d			;8e64
	nop			;8e65
	inc bc			;8e66
	ld e,d			;8e67
	add a,c			;8e68
	nop			;8e69
	dec b			;8e6a
	rst 38h			;8e6b
	ld (bc),a		;8e6c
	nop			;8e6d
	ld (bc),a		;8e6e
	rst 38h			;8e6f
	add a,c			;8e70
	nop			;8e71
	dec b			;8e72
	rst 38h			;8e73
	ld (bc),a		;8e74
	nop			;8e75
	inc bc			;8e76
	ld e,d			;8e77
	and e			;8e78
	nop			;8e79
	ld e,d			;8e7a
	ld e,d			;8e7b
	nop			;8e7c
l8e7dh:
	nop			;8e7d
	ld d,l			;8e7e
	ld d,c			;8e7f
	ld d,l			;8e80
	dec b			;8e81
	ld d,c			;8e82
	ld (hl),l		;8e83
	rlca			;8e84
	nop			;8e85
	jp 0c318h		;8e86
l8e89h:
	jr $-59			;8e89
	in a,(000h)		;8e8b
	ld c,060h		;8e8d
	ld c,060h		;8e8f
	ld c,06eh		;8e91
	ld l,(hl)		;8e93
	nop			;8e94
	ld (hl),b		;8e95
	ld b,070h		;8e96
	ld b,070h		;8e98
	halt			;8e9a
	halt			;8e9b
	inc bc			;8e9c
	nop			;8e9d
	add a,l			;8e9e
	ld b,000h		;8e9f
	ld b,000h		;8ea1
	ld b,003h		;8ea3
	nop			;8ea5
	adc a,(hl)		;8ea6
	ld h,b			;8ea7
	nop			;8ea8
	ld h,b			;8ea9
	nop			;8eaa
	ld h,b			;8eab
	nop			;8eac
	nop			;8ead
	ld c,c			;8eae
	add hl,bc		;8eaf
	ld c,c			;8eb0
	ld b,b			;8eb1
	add hl,bc		;8eb2
	ld c,a			;8eb3
	ret nz			;8eb4
	inc bc			;8eb5
	ld a,(hl)		;8eb6
	or l			;8eb7
	nop			;8eb8
	ld a,(hl)		;8eb9
	nop			;8eba
	nop			;8ebb
	rst 38h			;8ebc
	ret po			;8ebd
	ld c,0e0h		;8ebe
l8ec0h:
	xor 00ah		;8ec0
	ret po			;8ec2
	xor 000h		;8ec3
	ret po			;8ec5
	xor (hl)		;8ec6
	adc a,d			;8ec7
	and b			;8ec8
	xor d			;8ec9
	adc a,d			;8eca
	xor d			;8ecb
	nop			;8ecc
	inc c			;8ecd
	ld d,l			;8ece
	ld d,l			;8ecf
l8ed0h:
	ld d,h			;8ed0
	ld d,l			;8ed1
	inc c			;8ed2
	ld l,a			;8ed3
	nop			;8ed4
	inc bc			;8ed5
	jp p,00290h		;8ed6
	sub d			;8ed9
	sub b			;8eda
	sub d			;8edb
	nop			;8edc
	jr nc,l8e89h		;8edd
	xor d			;8edf
	ld hl,(030aah)		;8ee0
	or 000h			;8ee3
	rlca			;8ee5
	ld (hl),b		;8ee6
	rlca			;8ee7
	ld (hl),a		;8ee8
	ld d,b			;8ee9
	rlca			;8eea
	ld (hl),a		;8eeb
	nop			;8eec
	nop			;8eed
	add a,a			;8eee
	ld h,d			;8eef
	ld bc,02001h		;8ef0
	jr nz,l8f55h		;8ef3
	jr nz,$+5		;8ef5
	djnz l8efbh		;8ef7
	jr nz,l8e7dh		;8ef9
l8efbh:
	djnz $+34		;8efb
	inc bc			;8efd
	ld h,b			;8efe
	dec b			;8eff
	jr nz,l8f07h		;8f00
	ld bc,02605h		;8f02
	ld (bc),a		;8f05
	ld h,b			;8f06
l8f07h:
	add a,h			;8f07
	jr nz,$+18		;8f08
	djnz $+34		;8f0a
	ld b,010h		;8f0c
	add a,e			;8f0e
	jr nz,$+18		;8f0f
	djnz $+5		;8f11
	jr nz,$-122		;8f13
	djnz l8f37h		;8f15
	djnz l8f39h		;8f17
	ld h,010h		;8f19
	sbc a,b			;8f1b
	jr nz,$+18		;8f1c
	djnz $+34		;8f1e
	djnz $+34		;8f20
	ld h,b			;8f22
	ld h,b			;8f23
	jr nz,$+34		;8f24
	ld hl,02021h		;8f26
	djnz l8f4bh		;8f29
	djnz l8f3dh		;8f2b
	jr nz,l8f3fh		;8f2d
	djnz l8f51h		;8f2f
	djnz l8f43h		;8f31
	jr nz,l8f3bh		;8f33
	djnz l8f39h		;8f35
l8f37h:
	jr nz,l8f3bh		;8f37
l8f39h:
	djnz $+5		;8f39
l8f3bh:
	jr nz,l8f3fh		;8f3b
l8f3dh:
	djnz l8ec0h		;8f3d
l8f3fh:
	jr nz,l8f47h		;8f3f
	djnz l8f45h		;8f41
l8f43h:
	jr nz,l8f47h		;8f43
l8f45h:
	djnz $+5		;8f45
l8f47h:
	jr nz,l8ed0h		;8f47
	djnz l8f6bh		;8f49
l8f4bh:
	djnz $+18		;8f4b
	jr nz,l8f5fh		;8f4d
	djnz l8f51h		;8f4f
l8f51h:
	inc bc			;8f51
	dec (hl)		;8f52
	add a,c			;8f53
l8f54h:
	nop			;8f54
l8f55h:
	inc b			;8f55
	ccf			;8f56
	inc bc			;8f57
	call nc,00081h		;8f58
	inc b			;8f5b
	call m,03502h		;8f5c
l8f5fh:
	adc a,001h		;8f5f
	inc (hl)		;8f61
	dec (hl)		;8f62
	dec (hl)		;8f63
	jr nc,l8f6bh		;8f64
	nop			;8f66
	ld l,(hl)		;8f67
	ld l,(hl)		;8f68
	ld c,060h		;8f69
l8f6bh:
	ld c,060h		;8f6b
	ld c,000h		;8f6d
	halt			;8f6f
	halt			;8f70
	ld (hl),b		;8f71
	ld b,070h		;8f72
	ld b,070h		;8f74
	call nc,0c0d4h		;8f76
	inc d			;8f79
	call nc,004d4h		;8f7a
	ret nc			;8f7d
	nop			;8f7e
	sub d			;8f7f
	sub b			;8f80
	sub d			;8f81
	ld (bc),a		;8f82
	sub b			;8f83
	jp p,00003h		;8f84
	ld l,a			;8f87
	inc c			;8f88
	ld d,l			;8f89
	ld d,h			;8f8a
	ld d,l			;8f8b
	ld d,l			;8f8c
	inc c			;8f8d
	nop			;8f8e
	xor d			;8f8f
	adc a,d			;8f90
	xor d			;8f91
	and b			;8f92
	adc a,d			;8f93
	xor (hl)		;8f94
	ret po			;8f95
	nop			;8f96
	or 030h			;8f97
	xor d			;8f99
	ld hl,(0aaaah)		;8f9a
	jr nc,l8f9fh		;8f9d
l8f9fh:
	ld (hl),a		;8f9f
	rlca			;8fa0
	ld d,b			;8fa1
l8fa2h:
	ld (hl),a		;8fa2
	rlca			;8fa3
	ld (hl),b		;8fa4
	rlca			;8fa5
l8fa6h:
	nop			;8fa6
	xor 0e0h		;8fa7
	ld a,(bc)		;8fa9
	xor 0e0h		;8faa
	ld c,0e0h		;8fac
	nop			;8fae
	ld (bc),a		;8faf
	djnz l8fb4h		;8fb0
	jr nz,$+5		;8fb2
l8fb4h:
	djnz l8f3bh		;8fb4
	jr nz,$+18		;8fb6
	djnz $+34		;8fb8
	jr nz,$+5		;8fba
	djnz $-118		;8fbc
	jr nz,$+18		;8fbe
	djnz $+34		;8fc0
	djnz $+18		;8fc2
	jr nz,$+34		;8fc4
	inc de			;8fc6
	djnz $-121		;8fc7
	jr nz,l8fdbh		;8fc9
	djnz l8fedh		;8fcb
	jr nz,$+7		;8fcd
	djnz l8f54h		;8fcf
	jr nz,l8fe3h		;8fd1
	djnz $+5		;8fd3
	jr nz,l8fd9h		;8fd5
	djnz l8fdbh		;8fd7
l8fd9h:
	jr nz,l8fe1h		;8fd9
l8fdbh:
	djnz $-123		;8fdb
	jr nz,l8fefh		;8fdd
	djnz $+5		;8fdf
l8fe1h:
	jr nz,l8fe5h		;8fe1
l8fe3h:
	djnz l8fe7h		;8fe3
l8fe5h:
	jr nz,l8febh		;8fe5
l8fe7h:
	djnz $-112		;8fe7
	jr nz,l8ffbh		;8fe9
l8febh:
	djnz l900dh		;8feb
l8fedh:
	djnz l900fh		;8fed
l8fefh:
	jr nz,$+18		;8fef
	jr nz,l9003h		;8ff1
	djnz $+34		;8ff3
	djnz l9017h		;8ff5
	nop			;8ff7
	add a,e			;8ff8
	nop			;8ff9
	add hl,bc		;8ffa
l8ffbh:
	nop			;8ffb
	dec b			;8ffc
	cpl			;8ffd
	sub e			;8ffe
	ld a,(bc)		;8fff
	jp pe,0eae0h		;9000
l9003h:
	jp pe,00000h		;9003
sub_9006h:
	or 050h			;9006
	ld d,a			;9008
	rlca			;9009
	ld d,a			;900a
	ld d,a			;900b
sub_900ch:
	nop			;900c
l900dh:
	nop			;900d
	ld l,a			;900e
l900fh:
	nop			;900f
	sub b			;9010
	nop			;9011
	dec b			;9012
	call p,sub_8100h	;9013
	ret po			;9016
l9017h:
	ld b,010h		;9017
	add a,h			;9019
	ld hl,01010h		;901a
	jr nz,$+9		;901d
	djnz l8fa2h		;901f
	jr nz,l902fh		;9021
	djnz l8fa6h		;9023
	ld hl,l8400h		;9025
	nop			;9028
	rst 8			;9029
	ex (sp),hl		;902a
	rlca			;902b
	inc b			;902c
	nop			;902d
	adc a,e			;902e
l902fh:
	rrca			;902f
	ld (hl),b		;9030
	add a,b			;9031
l9032h:
	di			;9032
	pop hl			;9033
	ld c,000h		;9034
	nop			;9036
	ld bc,0c739h		;9037
	inc b			;903a
	ld b,l			;903b
	add a,c			;903c
	rst 38h			;903d
	rlca			;903e
	and l			;903f
	add a,d			;9040
	rst 38h			;9041
	ld c,c			;9042
	dec b			;9043
	ld c,b			;9044
	add a,d			;9045
	ld c,c			;9046
	rst 38h			;9047
	inc b			;9048
	cp 094h			;9049
	nop			;904b
	ld b,l			;904c
	ld b,l			;904d
	rst 38h			;904e
	ld de,l92f2h		;904f
	sub a			;9052
l9053h:
	sub h			;9053
	or 014h			;9054
	rst 38h			;9056
	cpl			;9057
	ld sp,hl		;9058
	add hl,hl		;9059
	add hl,hl		;905a
	jp (hl)			;905b
	ccf			;905c
	add hl,hl		;905d
	add hl,hl		;905e
	inc b			;905f
	ld a,a			;9060
	add a,c			;9061
	nop			;9062
	inc bc			;9063
	ld l,e			;9064
	sub b			;9065
	ld (hl),a		;9066
	ld c,a			;9067
	ld c,c			;9068
	jp (hl)			;9069
	add hl,hl		;906a
	ld l,a			;906b
	jr z,$+1		;906c
	call p,sub_949fh	;906e
	sub h			;9071
	sub a			;9072
	call m,sub_9494h	;9073
	inc b			;9076
	cp 081h			;9077
	nop			;9079
	inc bc			;907a
	sub 000h		;907b
	add a,e			;907d
	di			;907e
	ld b,e			;907f
	ld d,h			;9080
	inc b			;9081
	sub l			;9082
	adc a,a			;9083
	ld b,h			;9084
	sub e			;9085
	sub l			;9086
	sub l			;9087
	ld d,e			;9088
	ld d,h			;9089
	sub l			;908a
	sub l			;908b
	ld b,h			;908c
	di			;908d
	call p,0f5f4h		;908e
	push af			;9091
	call p,0f303h		;9092
	add a,c			;9095
	call p,0f503h		;9096
	add a,c			;9099
	call p,0f303h		;909a
	add a,c			;909d
	call p,0f503h		;909e
	adc a,c			;90a1
	call p,0f3f3h		;90a2
	sub l			;90a5
	ccf			;90a6
	ld d,e			;90a7
	ccf			;90a8
	ccf			;90a9
	call p,0f303h		;90aa
	xor a			;90ad
	call p,0f9f5h		;90ae
	ld sp,hl		;90b1
	push af			;90b2
	call p,0f3f4h		;90b3
	push af			;90b6
	call p,0f3f3h		;90b7
	call p,0f3f3h		;90ba
	ld d,h			;90bd
	ld b,e			;90be
	ld b,e			;90bf
	ccf			;90c0
	ccf			;90c1
	ld d,h			;90c2
	ld b,e			;90c3
	ccf			;90c4
	ccf			;90c5
	call p,0f9f5h		;90c6
	ld sp,hl		;90c9
	push af			;90ca
	call p,0f3f4h		;90cb
	push af			;90ce
	call p,0f3f3h		;90cf
	call p,0f3f3h		;90d2
	ld d,h			;90d5
	ld b,e			;90d6
	ld b,e			;90d7
	ccf			;90d8
sub_90d9h:
	ccf			;90d9
	ld d,h			;90da
	ld b,e			;90db
	ccf			;90dc
	nop			;90dd
	add a,l			;90de
	and (hl)		;90df
	or e			;90e0
	sub c			;90e1
	ret z			;90e2
	rst 38h			;90e3
	ld b,0a0h		;90e4
	adc a,a			;90e6
	rst 38h			;90e7
	adc a,c			;90e8
	add hl,sp		;90e9
	ld l,b			;90ea
	call pe,011ffh		;90eb
	inc hl			;90ee
	rst 20h			;90ef
	ld c,h			;90f0
	or a			;90f1
	ld d,b			;90f2
	ld d,b			;90f3
	add a,d			;90f4
	ld b,h			;90f5
	inc bc			;90f6
	add a,e			;90f7
	sbc a,e			;90f8
	jr c,l9177h		;90f9
	add a,c			;90fb
	pop af			;90fc
	pop af			;90fd
	inc bc			;90fe
	rlca			;90ff
	rst 20h			;9100
	adc a,(hl)		;9101
	rst 0			;9102
	add a,d			;9103
	cp 007h			;9104
	rrca			;9106
	ret po			;9107
	call m,0abaeh		;9108
	xor l			;910b
	inc h			;910c
	ld a,(hl)		;910d
	adc a,e			;910e
	adc a,b			;910f
	inc sp			;9110
	cp c			;9111
	ld h,a			;9112
	inc sp			;9113
	inc bc			;9114
	ret nz			;9115
	adc a,c			;9116
	jp 010f8h		;9117
	djnz $+11		;911a
	rst 38h			;911c
	exx			;911d
	exx			;911e
	rst 38h			;911f
	inc b			;9120
	ld b,b			;9121
	sbc a,l			;9122
	jp po,01c3eh		;9123
	dec h			;9126
	ld sp,00de5h		;9127
	ld e,e			;912a
	ld d,e			;912b
	ld e,c			;912c
	ld l,c			;912d
	sub e			;912e
	ret			;912f
	dec sp			;9130
	inc hl			;9131
	jr l913bh		;9132
	call m,0c0c0h		;9134
	rrca			;9137
	ret m			;9138
	add a,b			;9139
	ccf			;913a
l913bh:
	rst 38h			;913b
	rst 38h			;913c
	ret pe			;913d
	rst 38h			;913e
	rst 38h			;913f
	dec b			;9140
	ret nc			;9141
	sub (hl)		;9142
	out (0fch),a		;9143
	jr nc,$-126		;9145
	ld b,a			;9147
	cp h			;9148
	pop bc			;9149
	ld a,0ffh		;914a
	or h			;914c
	exx			;914d
	ex (sp),hl		;914e
	cp (hl)			;914f
	or h			;9150
	call 0abb9h		;9151
	sbc a,d			;9154
	jp z,0e8ffh		;9155
	ret pe			;9158
	nop			;9159
	add a,d			;915a
	push af			;915b
	call p,0f304h		;915c
	add a,(hl)		;915f
	inc (hl)		;9160
	ld b,l			;9161
	rst 38h			;9162
	inc (hl)		;9163
	di			;9164
	di			;9165
	inc bc			;9166
	call p,0f502h		;9167
	add a,c			;916a
	di			;916b
	inc bc			;916c
	call p,05399h		;916d
	push af			;9170
	ld sp,hl		;9171
	call p,0f3f3h		;9172
	inc (hl)		;9175
	ld b,l			;9176
l9177h:
	sub l			;9177
	ld d,h			;9178
	call p,sub_9554h	;9179
	sub l			;917c
	ld d,h			;917d
	ld b,e			;917e
	ld b,e			;917f
	ld sp,hl		;9180
	push af			;9181
	call p,054f5h		;9182
	call p,0f3f4h		;9185
	inc bc			;9188
l9189h:
	call p,0f385h		;9189
	call p,sub_93f5h	;918c
	sub e			;918f
	inc bc			;9190
	ld sp,hl		;9191
	add a,(hl)		;9192
	sub l			;9193
	ld d,h			;9194
	ld b,e			;9195
	ld sp,hl		;9196
	push af			;9197
	call p,0f303h		;9198
	adc a,e			;919b
	inc (hl)		;919c
	di			;919d
	di			;919e
	inc (hl)		;919f
	inc (hl)		;91a0
	ld b,l			;91a1
	di			;91a2
	ld sp,hl		;91a3
	push af			;91a4
	call p,00693h		;91a5
	ld d,e			;91a8
	ld (bc),a		;91a9
l91aah:
	push af			;91aa
	add a,c			;91ab
	ld d,e			;91ac
	inc bc			;91ad
	push af			;91ae
	add a,l			;91af
	ld sp,hl		;91b0
	push af			;91b1
	ld b,h			;91b2
	di			;91b3
	call p,0f309h		;91b4
	ld (bc),a		;91b7
	inc (hl)		;91b8
	ld (bc),a		;91b9
	di			;91ba
	add a,c			;91bb
	call p,0f313h		;91bc
	add a,c			;91bf
	inc (hl)		;91c0
	nop			;91c1
	ret c			;91c2
	nop			;91c3
	inc bc			;91c4
	nop			;91c5
	ld bc,00001h		;91c6
	inc bc			;91c9
	inc bc			;91ca
	nop			;91cb
	halt			;91cc
	nop			;91cd
	ld (hl),h		;91ce
	ld (hl),h		;91cf
	nop			;91d0
	halt			;91d1
l91d2h:
	halt			;91d2
	call pe,000eeh		;91d3
	ld l,a			;91d6
	inc c			;91d7
	ld d,l			;91d8
	ld d,h			;91d9
l91dah:
	ld d,l			;91da
	ld b,b			;91db
	ret po			;91dc
	nop			;91dd
	ld h,b			;91de
	jr nc,l9189h		;91df
	jr z,$-84		;91e1
	xor d			;91e3
l91e4h:
	di			;91e4
	ld l,a			;91e5
l91e6h:
	nop			;91e6
	rst 28h			;91e7
	rst 28h			;91e8
	nop			;91e9
	ld l,a			;91ea
	xor d			;91eb
	jr nc,l91e4h		;91ec
	nop			;91ee
	or 0f6h			;91ef
	nop			;91f1
	or 0efh			;91f2
	rst 28h			;91f4
	nop			;91f5
	ld l,a			;91f6
	inc c			;91f7
	ld d,l			;91f8
	ld d,h			;91f9
	ld d,l			;91fa
	or 0f6h			;91fb
	nop			;91fd
	or 030h			;91fe
	xor d			;9200
	ld hl,(000aah)		;9201
	rst 28h			;9204
	nop			;9205
	ld l,a			;9206
	inc c			;9207
	ld d,l			;9208
	ld d,h			;9209
	ld d,l			;920a
	nop			;920b
	or 000h			;920c
	or 030h			;920e
	xor d			;9210
	ld hl,(0aaaah)		;9211
	djnz $-122		;9214
	nop			;9216
	ret po			;9217
	ret nz			;9218
	nop			;9219
	nop			;921a
	nop			;921b
	rlca			;921c
	djnz l9221h		;921d
	jr nz,$+8		;921f
l9221h:
	djnz l91aah		;9221
	ld hl,01020h		;9223
	djnz $+34		;9226
	djnz $+18		;9228
	inc bc			;922a
	jr nz,l922fh		;922b
	djnz l91d2h		;922d
l922fh:
	jr nz,l9241h		;922f
	djnz l9253h		;9231
	jr nz,$+3		;9233
	ld bc,02020h		;9235
	ld hl,01010h		;9238
	jr nz,l924dh		;923b
	djnz l925fh		;923d
	jr nz,$+35		;923f
l9241h:
	djnz l9253h		;9241
	jr nz,$+35		;9243
	djnz l9257h		;9245
	jr nz,l9259h		;9247
	djnz l926bh		;9249
	jr nz,$+35		;924b
l924dh:
	djnz l925fh		;924d
	jr nz,l9261h		;924f
	djnz $+5		;9251
l9253h:
	jr nz,l9257h		;9253
	djnz l91dah		;9255
l9257h:
	jr nz,l9269h		;9257
l9259h:
	djnz $+5		;9259
	jr nz,l925fh		;925b
	djnz l91e6h		;925d
l925fh:
	jr nz,l9271h		;925f
l9261h:
	djnz l9283h		;9261
	jr nz,l9275h		;9263
	djnz $+5		;9265
	jr nz,l926ch		;9267
l9269h:
	djnz l926bh		;9269
l926bh:
	adc a,a			;926b
l926ch:
	add a,e			;926c
	ld b,00dh		;926d
	dec bc			;926f
	dec de			;9270
l9271h:
	rla			;9271
	ld d,006h		;9272
	ld h,l			;9274
l9275h:
	ld h,l			;9275
	jr nc,l928fh		;9276
	inc de			;9278
	dec bc			;9279
	ex (sp),hl		;927a
	dec b			;927b
	nop			;927c
	and h			;927d
	rrca			;927e
	ld a,(bc)		;927f
	nop			;9280
	rrca			;9281
	ld d,(hl)		;9282
l9283h:
	ld e,e			;9283
	ld e,l			;9284
	nop			;9285
	add hl,bc		;9286
	nop			;9287
	ld e,a			;9288
	nop			;9289
	dec e			;928a
	ld h,d			;928b
	call p,031c9h		;928c
l928fh:
	ld l,l			;928f
	ld e,b			;9290
	nop			;9291
	rlca			;9292
	rrca			;9293
	ld c,01eh		;9294
	inc e			;9296
	inc e			;9297
	inc c			;9298
	ld c,001h		;9299
	ld bc,01f00h		;929b
	rra			;929e
	rst 38h			;929f
	ret po			;92a0
	ret po			;92a1
	dec b			;92a2
	nop			;92a3
	adc a,c			;92a4
	ld bc,00703h		;92a5
	inc b			;92a8
	inc b			;92a9
	ld b,003h		;92aa
	inc bc			;92ac
	ld bc,00005h		;92ad
	ld (bc),a		;92b0
	ret po			;92b1
	add a,e			;92b2
	rst 38h			;92b3
	rra			;92b4
	rra			;92b5
	inc bc			;92b6
	nop			;92b7
	call 07cfdh		;92b8
	cp 0c2h			;92bb
	cp 01dh			;92bd
	inc bc			;92bf
	rrca			;92c0
	rrca			;92c1
	dec c			;92c2
	dec c			;92c3
l92c4h:
	ld (hl),h		;92c4
	ret m			;92c5
	dec b			;92c6
	dec a			;92c7
	dec (hl)		;92c8
	ld b,l			;92c9
	ld (hl),047h		;92ca
	sbc a,e			;92cc
	inc (hl)		;92cd
	ld l,c			;92ce
	ld d,h			;92cf
	ld d,l			;92d0
	inc l			;92d1
	dec l			;92d2
	inc c			;92d3
	dec b			;92d4
	ld a,b			;92d5
	add a,(iy+002h)		;92d6
	inc bc			;92d9
	inc bc			;92da
	ld b,00eh		;92db
	call m,07dfch		;92dd
	ld a,c			;92e0
	ld a,h			;92e1
	ccf			;92e2
	cp b			;92e3
	and c			;92e4
	add a,l			;92e5
	call c,0030dh		;92e6
	ld c,0eeh		;92e9
	ret po			;92eb
	call m,0b61dh		;92ec
	ld (hl),0b6h		;92ef
	add a,e			;92f1
l92f2h:
	add hl,sp		;92f2
	nop			;92f3
	cp a			;92f4
	nop			;92f5
	cp 0ffh			;92f6
	ld a,a			;92f8
	nop			;92f9
	dec a			;92fa
	add a,b			;92fb
	defb 0fdh,000h,055h ;illegal sequence	;92fc
	inc c			;92ff
	ld l,a			;9300
	nop			;9301
	cpl			;9302
	nop			;9303
	nop			;9304
	cpl			;9305
	nop			;9306
	ld b,010h		;9307
	inc bc			;9309
	jr nz,$-125		;930a
	djnz $+5		;930c
	jr nz,l9337h		;930e
	djnz l9315h		;9310
	ld hl,01007h		;9312
l9315h:
	rlca			;9315
	jr nz,$+9		;9316
	djnz l931dh		;9318
	ld hl,01005h		;931a
l931dh:
	inc bc			;931d
	ld hl,0100bh		;931e
	ex af,af'		;9321
l9322h:
	ld hl,06185h		;9322
	ld hl,02161h		;9325
	ld h,c			;9328
	inc bc			;9329
	ld hl,02007h		;932a
	ld (bc),a		;932d
	ld hl,02004h		;932e
	add a,(hl)		;9331
	ld h,b			;9332
	djnz $+18		;9333
	jr nz,l9357h		;9335
l9337h:
	djnz l933dh		;9337
l9339h:
	ld hl,01005h		;9339
	add a,e			;933c
l933dh:
	ld hl,02020h		;933d
	dec b			;9340
	djnz l92c4h		;9341
	ld hl,01003h		;9343
	ld (bc),a		;9346
	jr nz,$+4		;9347
	ld hl,00082h		;9349
	ld hl,0a800h		;934c
	nop			;934f
	rst 28h			;9350
	nop			;9351
	ld l,a			;9352
	inc c			;9353
	ld d,l			;9354
	ld d,h			;9355
	ld d,l			;9356
l9357h:
	nop			;9357
	jp 0c318h		;9358
	jr $-59			;935b
	in a,(000h)		;935d
	nop			;935f
	or 000h			;9360
	or 030h			;9362
	xor d			;9364
	ld hl,(0aaaah)		;9365
l9368h:
	di			;9368
	ld l,a			;9369
	nop			;936a
	rst 28h			;936b
	rst 28h			;936c
	nop			;936d
	ld l,a			;936e
	xor d			;936f
	jr nc,l9368h		;9370
	nop			;9372
	or 0f6h			;9373
	nop			;9375
	or 004h			;9376
	nop			;9378
	add a,e			;9379
	cpl			;937a
	nop			;937b
	nop			;937c
	dec b			;937d
	cpl			;937e
	sub h			;937f
	call p,00000h		;9380
	call p,00c55h		;9383
	ld l,a			;9386
	nop			;9387
	cpl			;9388
	nop			;9389
	nop			;938a
	cpl			;938b
	xor d			;938c
	jr nc,$-8		;938d
	nop			;938f
	call p,00000h		;9390
	call p,00300h		;9393
	djnz $-123		;9396
	jr nz,$+18		;9398
	djnz l93a0h		;939a
	jr nz,l9322h		;939c
	djnz $+34		;939e
l93a0h:
	djnz l93c2h		;93a0
	dec b			;93a2
	djnz l9339h		;93a3
	jr nz,l93b7h		;93a5
	djnz l93c9h		;93a7
	jr nz,$+3		;93a9
	ld bc,02020h		;93ab
	ld hl,01010h		;93ae
	jr nz,l93c3h		;93b1
	djnz $+34		;93b3
	jr nz,$+35		;93b5
l93b7h:
	djnz l93c9h		;93b7
	dec b			;93b9
	jr nz,$+4		;93ba
	ld hl,00082h		;93bc
	ld hl,00004h		;93bf
l93c2h:
	ld (bc),a		;93c2
l93c3h:
	ld hl,00092h		;93c3
	ld hl,01010h		;93c6
l93c9h:
	jr nz,l93ebh		;93c9
	ld hl,00021h		;93cb
	ld hl,01010h		;93ce
	jr nz,l93f3h		;93d1
	ld hl,00021h		;93d3
	ld hl,l8200h		;93d6
	rrca			;93d9
	inc bc			;93da
	inc bc			;93db
	ld bc,04383h		;93dc
	ex (sp),hl		;93df
	rst 30h			;93e0
	dec b			;93e1
	jp m,00090h		;93e2
	ei			;93e5
	nop			;93e6
	jp m,000fah		;93e7
	or e			;93ea
l93ebh:
	or e			;93eb
	inc bc			;93ec
	or e			;93ed
	or b			;93ee
	rst 38h			;93ef
l93f0h:
	nop			;93f0
	nop			;93f1
	ld a,(hl)		;93f2
l93f3h:
	nop			;93f3
	inc bc			;93f4
sub_93f5h:
	ld a,(hl)		;93f5
	nop			;93f6
	adc a,c			;93f7
	jr nc,l943ah		;93f8
	ret p			;93fa
	jr nc,l944dh		;93fb
	ld b,b			;93fd
	jr nc,l93f0h		;93fe
	ld h,d			;9400
	inc b			;9401
sub_9402h:
	ld hl,01003h		;9402
	add a,c			;9405
	ld hl,01004h		;9406
	add a,l			;9409
	jr nz,l941ch		;940a
	djnz l942fh		;940c
	ld hl,02003h		;940e
	add a,e			;9411
	ld h,b			;9412
	jr nz,l9425h		;9413
	nop			;9415
	adc a,e			;9416
	rst 8			;9417
	ret p			;9418
	inc a			;9419
	ld c,0c6h		;941a
l941ch:
	rst 20h			;941c
	di			;941d
	inc bc			;941e
	ei			;941f
	call m,003feh		;9420
	ld a,a			;9423
	sbc a,b			;9424
l9425h:
	ccf			;9425
	nop			;9426
	sbc a,a			;9427
	ret po			;9428
	inc a			;9429
	rrca			;942a
	rst 0			;942b
	di			;942c
	ret m			;942d
	inc b			;942e
l942fh:
	rst 30h			;942f
	ret m			;9430
	and 01eh		;9431
	ret m			;9433
	rst 30h			;9434
	rrca			;9435
	ret m			;9436
	ret m			;9437
	ld b,00eh		;9438
l943ah:
	ex (sp),hl		;943a
	inc h			;943b
	jr l9441h		;943c
	jr nc,$-91		;943e
	and h			;9440
l9441h:
	inc e			;9441
	pop af			;9442
	ex af,af'		;9443
	inc b			;9444
	inc bc			;9445
	rst 38h			;9446
	call m,007fch		;9447
	pop af			;944a
	sbc a,h			;944b
	ret m			;944c
l944dh:
	ret p			;944d
	rst 38h			;944e
	ld c,a			;944f
	ld h,a			;9450
	ld h,a			;9451
	or e			;9452
	defb 0ddh,0ffh,081h ;illegal sequence	;9453
	sbc a,c			;9456
	ex af,af'		;9457
	ret p			;9458
	inc hl			;9459
	ld b,a			;945a
	adc a,e			;945b
	sub b			;945c
	jr c,l948dh		;945d
	ld h,a			;945f
	ld b,a			;9460
	defb 0fdh,0c7h,003h ;illegal sequence	;9461
	ld b,l			;9464
	add a,d			;9465
	rst 38h			;9466
	sbc a,l			;9467
	inc b			;9468
	rlc d			;9469
	sbc a,l			;946b
	adc a,c			;946c
	dec a			;946d
	sub l			;946e
	sub l			;946f
	rst 38h			;9470
	and l			;9471
	and l			;9472
	rst 38h			;9473
	inc hl			;9474
	dec e			;9475
	nop			;9476
	inc b			;9477
	sub h			;9478
	inc b			;9479
	ld d,h			;947a
	add a,c			;947b
	sub h			;947c
	rlca			;947d
	ld d,h			;947e
	xor c			;947f
l9480h:
	sub h			;9480
	sub l			;9481
	sub h			;9482
	sub h			;9483
	ld d,h			;9484
	ld d,e			;9485
	ld d,e			;9486
	call p,05393h		;9487
	ld b,e			;948a
	ld d,e			;948b
	sub h			;948c
l948dh:
	ld d,h			;948d
	ld d,h			;948e
	call p,054f5h		;948f
	ld d,e			;9492
	push af			;9493
sub_9494h:
	ld sp,hl		;9494
sub_9495h:
	sub l			;9495
l9496h:
	sub e			;9496
	sbc a,a			;9497
	ccf			;9498
	call p,0f953h		;9499
	ld sp,hl		;949c
l949dh:
	push af			;949d
	di			;949e
sub_949fh:
	di			;949f
	call p,05345h		;94a0
	push af			;94a3
	sub e			;94a4
	sub l			;94a5
	ld d,e			;94a6
l94a7h:
	push af			;94a7
	push af			;94a8
	ld b,0f4h		;94a9
	add a,l			;94ab
	di			;94ac
	push af			;94ad
	ld sp,hl		;94ae
	ld sp,hl		;94af
	push af			;94b0
	dec b			;94b1
	call p,0f38bh		;94b2
	call p,0f5f9h		;94b5
	call p,0f3f3h		;94b8
	ld sp,hl		;94bb
	ld sp,hl		;94bc
	push af			;94bd
	push af			;94be
	inc bc			;94bf
	call p,0f302h		;94c0
	ld (bc),a		;94c3
	call p,0f885h		;94c4
	defb 0fdh,0fdh,0f4h ;illegal sequence	;94c7
	push af			;94ca
	nop			;94cb
	inc b			;94cc
	ccf			;94cd
	add a,c			;94ce
	nop			;94cf
	inc bc			;94d0
	dec (hl)		;94d1
	and b			;94d2
	dec b			;94d3
	jr nc,l950bh		;94d4
	dec (hl)		;94d6
	inc (hl)		;94d7
	ld bc,03535h		;94d8
	ret nc			;94db
	inc b			;94dc
	call nc,014d4h		;94dd
	ret nz			;94e0
	call nc,0c0d4h		;94e1
	ld c,a			;94e4
	add hl,bc		;94e5
	ld b,b			;94e6
	ld c,c			;94e7
	add hl,bc		;94e8
	ld c,c			;94e9
	nop			;94ea
	rlca			;94eb
	ld (hl),l		;94ec
	ld d,c			;94ed
	dec b			;94ee
	ld d,l			;94ef
	ld d,c			;94f0
	ld d,l			;94f1
	nop			;94f2
	inc b			;94f3
	call m,00081h		;94f4
	inc bc			;94f7
	call nc,sub_8100h	;94f8
	jr nz,l9501h		;94fb
	djnz l9480h		;94fd
	jr nz,$+5		;94ff
l9501h:
	djnz l9505h		;9501
sub_9503h:
	jr nz,l9507h		;9503
l9505h:
	djnz $-125		;9505
l9507h:
	jr nz,$+5		;9507
	djnz l950dh		;9509
l950bh:
	jr nz,l950fh		;950b
l950dh:
	djnz l9496h		;950d
l950fh:
	jr nz,$+18		;950f
	djnz l9533h		;9511
l9513h:
	djnz $+18		;9513
	jr nz,l951bh		;9515
	djnz l949dh		;9517
	jr nz,l952bh		;9519
l951bh:
	djnz l953dh		;951b
	inc b			;951d
	djnz $-125		;951e
	jr nz,l9526h		;9520
	djnz l94a7h		;9522
	jr nz,l9536h		;9524
l9526h:
	djnz l9528h		;9526
l9528h:
	sub b			;9528
	adc a,a			;9529
	add a,e			;952a
l952bh:
	ld b,a			;952b
	cpl			;952c
	rra			;952d
	di			;952e
	rlca			;952f
	rrca			;9530
	or c			;9531
	pop hl			;9532
l9533h:
	pop bc			;9533
	rst 20h			;9534
	ld sp,hl		;9535
l9536h:
	pop hl			;9536
	pop bc			;9537
	or e			;9538
	nop			;9539
	add a,l			;953a
	cp 0f9h			;953b
l953dh:
	ld sp,hl		;953d
	push af			;953e
	push af			;953f
	inc bc			;9540
	defb 0fdh,088h,0f5h ;illegal sequence	;9541
	cp 0f9h			;9544
	push af			;9546
	push af			;9547
	cp 0f9h			;9548
	push af			;954a
	nop			;954b
	inc b			;954c
	nop			;954d
	add a,(hl)		;954e
	ld (bc),a		;954f
	ld c,026h		;9550
	cp e			;9552
	ld (bc),a		;9553
sub_9554h:
	ld (bc),a		;9554
	dec c			;9555
	nop			;9556
	add a,c			;9557
	sub b			;9558
	inc b			;9559
	nop			;955a
	add a,h			;955b
	ld bc,0f703h		;955c
	ld a,e			;955f
	inc b			;9560
	nop			;9561
	add a,(hl)		;9562
	inc bc			;9563
	rlca			;9564
	rlca			;9565
	inc bc			;9566
	inc b			;9567
	ld b,003h		;9568
	rlca			;956a
	rlca			;956b
	nop			;956c
	add a,h			;956d
	ret nz			;956e
	ret p			;956f
	dec bc			;9570
	add a,a			;9571
	inc bc			;9572
	nop			;9573
	sub l			;9574
	ret nz			;9575
	ret nc			;9576
	ld b,a			;9577
	ld b,e			;9578
	adc a,a			;9579
	ex af,af'		;957a
	dec c			;957b
	add a,a			;957c
	jp 0678ch		;957d
	sbc a,a			;9580
	add hl,bc		;9581
	nop			;9582
	dec b			;9583
	jp nc,0f2e2h		;9584
	rst 18h			;9587
	add a,(hl)		;9588
	add hl,bc		;9589
	nop			;958a
	inc b			;958b
	djnz l9513h		;958c
	ld d,b			;958e
	ret po			;958f
	sub b			;9590
	push af			;9591
	add a,b			;9592
	inc e			;9593
	ret po			;9594
	add a,a			;9595
	add a,b			;9596
	ret p			;9597
	ret nc			;9598
	ret po			;9599
	ret nc			;959a
	ret p			;959b
	add a,b			;959c
	ex af,af'		;959d
	ret nc			;959e
	ld (bc),a		;959f
	ret po			;95a0
	add a,d			;95a1
	ret pe			;95a2
	ret m			;95a3
	dec b			;95a4
	ret po			;95a5
	add a,a			;95a6
	cp 0f9h			;95a7
	ld sp,hl		;95a9
	ret nc			;95aa
	add a,b			;95ab
	add a,b			;95ac
	ret nc			;95ad
	inc b			;95ae
	defb 0fdh,002h,0e0h ;illegal sequence	;95af
	ld (bc),a		;95b2
	ld sp,hl		;95b3
	add a,c			;95b4
	push af			;95b5
	inc bc			;95b6
	defb 0fdh,000h,0b8h ;illegal sequence	;95b7
	ld b,e			;95ba
	ld (04951h),hl		;95bb
	call c,00103h		;95be
	sub b			;95c1
	nop			;95c2
	nop			;95c3
	rla			;95c4
	ld a,e			;95c5
	cp e			;95c6
	ret nc			;95c7
	defb 0ddh,0e0h,0d8h ;illegal sequence	;95c8
	ret po			;95cb
	ld c,007h		;95cc
	jr $-30			;95ce
	inc bc			;95d0
	nop			;95d1
	call po,01933h		;95d2
	adc a,h			;95d5
	ld a,b			;95d6
	ld a,b			;95d7
	inc bc			;95d8
	adc a,a			;95d9
	sub c			;95da
	ret nc			;95db
	ld l,b			;95dc
	inc a			;95dd
	adc a,h			;95de
	ld h,c			;95df
	sbc a,a			;95e0
	add hl,bc		;95e1
	defb 0edh ;next byte illegal after ed	;95e2
	rla			;95e3
	rra			;95e4
	cp a			;95e5
	rst 38h			;95e6
	rst 38h			;95e7
	cp a			;95e8
	cp a			;95e9
	sbc a,a			;95ea
	jp z,0e2d2h		;95eb
	jp p,l84dfh		;95ee
	ex af,af'		;95f1
	nop			;95f2
sub_95f3h:
	add a,a			;95f3
sub_95f4h:
	defb 0fdh,0f8h,0f8h ;illegal sequence	;95f4
	cp 0feh			;95f7
	add a,b			;95f9
	ret nc			;95fa
	inc b			;95fb
	ret po			;95fc
	ld (bc),a		;95fd
	call po,0e986h		;95fe
	sub h			;9601
	sub l			;9602
	ret nc			;9603
	ret m			;9604
	ret c			;9605
	inc bc			;9606
	defb 0fdh,002h,0d0h ;illegal sequence	;9607
	adc a,e			;960a
	ret m			;960b
	cp 0f8h			;960c
	defb 0fdh,0feh,0e8h ;illegal sequence	;960e
	ret m			;9611
	ret m			;9612
	defb 0fdh,0f8h,0f8h ;illegal sequence	;9613
	dec b			;9616
	defb 0fdh,081h,053h ;illegal sequence	;9617
	dec b			;961a
	call p,0f981h		;961b
	inc bc			;961e
	cp 002h			;961f
	ld sp,hl		;9621
	add a,c			;9622
	push af			;9623
	inc bc			;9624
	defb 0fdh,000h,091h ;illegal sequence	;9625
	pop bc			;9628
	rst 20h			;9629
	add a,c			;962a
	inc e			;962b
	ld a,01ch		;962c
	nop			;962e
	add a,c			;962f
	add a,c			;9630
	nop			;9631
	inc e			;9632
	ld a,01ch		;9633
	add a,c			;9635
	rst 20h			;9636
	ld a,00dh		;9637
	inc bc			;9639
	inc b			;963a
	and h			;963b
	ld (hl),h		;963c
	adc a,h			;963d
	ld (hl),h		;963e
	call m,0ed13h		;963f
	ret m			;9642
	ld (de),a		;9643
	call z,sub_90d9h	;9644
	ld (l9032h),a		;9647
	exx			;964a
	call z,0f812h		;964b
	defb 0edh ;next byte illegal after ed	;964e
	inc de			;964f
	add a,a			;9650
	ld a,07dh		;9651
	ei			;9653
	ld a,e			;9654
	sbc a,e			;9655
	bit 4,e			;9656
	ld h,e			;9658
	res 3,e			;9659
	ld a,e			;965b
	ei			;965c
	ld a,l			;965d
	ld a,087h		;965e
	nop			;9660
	add a,e			;9661
	ld c,h			;9662
	ret			;9663
	ret			;9664
	inc b			;9665
	jp (hl)			;9666
	inc bc			;9667
	ret			;9668
	inc bc			;9669
	jp (hl)			;966a
	ld (bc),a		;966b
	ret			;966c
	add a,e			;966d
	call nz,0f330h		;966e
	inc bc			;9671
	call p,0fc04h		;9672
	add a,l			;9675
	call nz,0fcc3h		;9676
	jp 00453h		;9679
	ld b,e			;967c
	adc a,b			;967d
	ld d,e			;967e
	jp 0c3fch		;967f
	call nz,0c4fch		;9682
	jp 05303h		;9685
	ld b,043h		;9688
	inc bc			;968a
	ld d,e			;968b
	add a,d			;968c
	jp 000c4h		;968d
	inc bc			;9690
	nop			;9691
	add a,e			;9692
	ld c,007h		;9693
	ld bc,00006h		;9695
	add a,a			;9698
	ret nz			;9699
	ret p			;969a
	ld a,h			;969b
	ccf			;969c
	rrca			;969d
	inc bc			;969e
	ld bc,00005h		;969f
	adc a,b			;96a2
	add a,b			;96a3
	ret po			;96a4
	ret p			;96a5
	call m,03f7eh		;96a6
	rra			;96a9
	rra			;96aa
	ld b,000h		;96ab
	add a,d			;96ad
	add a,b			;96ae
	ret nz			;96af
	ld b,000h		;96b0
	add a,d			;96b2
	rlca			;96b3
	ccf			;96b4
	inc b			;96b5
	nop			;96b6
	add a,h			;96b7
	rra			;96b8
	rst 38h			;96b9
	inc e			;96ba
	call m,00300h		;96bb
	djnz l96cah		;96be
	ld b,b			;96c0
	ld (bc),a		;96c1
	ld d,b			;96c2
	add hl,bc		;96c3
	ret nz			;96c4
	ld e,090h		;96c5
	ld (bc),a		;96c7
	ret			;96c8
	nop			;96c9
l96cah:
	add a,(hl)		;96ca
	ld sp,hl		;96cb
	cp 07fh			;96cc
	rra			;96ce
	rlca			;96cf
	inc bc			;96d0
	inc b			;96d1
	ld bc,00386h		;96d2
	rlca			;96d5
	rra			;96d6
	ld a,a			;96d7
	cp 0f9h			;96d8
	inc b			;96da
	nop			;96db
	add a,h			;96dc
	ret p			;96dd
	rst 38h			;96de
	ld sp,hl		;96df
	ld sp,hl		;96e0
	dec b			;96e1
	nop			;96e2
	adc a,e			;96e3
	ld bc,0f8e0h		;96e4
	nop			;96e7
	nop			;96e8
	rlca			;96e9
	rra			;96ea
	ld a,a			;96eb
	jr nc,$-48		;96ec
	sbc a,l			;96ee
	inc bc			;96ef
	ld bc,00385h		;96f0
	rlca			;96f3
	rrca			;96f4
	ccf			;96f5
	ld a,000h		;96f6
	ld (bc),a		;96f8
	call nz,sub_900ch	;96f9
	ld (bc),a		;96fc
	call nz,sub_9006h	;96fd
	ld (bc),a		;9700
	ret			;9701
	ld b,040h		;9702
	add a,d			;9704
	sub h			;9705
	push bc			;9706
	dec b			;9707
	ld b,b			;9708
	adc a,e			;9709
	ld d,h			;970a
	ld d,e			;970b
	ld d,e			;970c
	ret nz			;970d
	ret nz			;970e
	jr nc,$+66		;970f
	jr nc,l9753h		;9711
	jr nc,l9758h		;9713
	nop			;9715
	call p,01704h		;9716
	scf			;9719
	djnz $+18		;971a
	ret p			;971c
	djnz l972fh		;971d
	scf			;971f
	jr c,$-14		;9720
	ret nz			;9722
	nop			;9723
	ret p			;9724
	di			;9725
	and 086h		;9726
	call 03bf9h		;9728
	defb 0ddh,0ceh,0e7h ;illegal sequence	;972b
	di			;972e
l972fh:
	ld b,006h		;972f
	ld c,01ch		;9731
	dec de			;9733
	scf			;9734
	ld b,a			;9735
	inc bc			;9736
	call z,03162h		;9737
	inc bc			;973a
	inc e			;973b
	ret m			;973c
	pop de			;973d
	inc c			;973e
	ld a,(07d78h)		;973f
	dec b			;9742
	ret m			;9743
	call m,07e38h		;9744
	ld a,a			;9747
	ld a,a			;9748
	call m,0cff3h		;9749
	cp h			;974c
	ld (hl),e		;974d
	rst 28h			;974e
	call z,03399h		;974f
	ld h,a			;9752
l9753h:
	rst 8			;9753
	ld h,b			;9754
	ld b,b			;9755
	ret nz			;9756
	add a,b			;9757
l9758h:
	add a,b			;9758
	add a,c			;9759
	pop bc			;975a
	dec e			;975b
	jp m,07b03h		;975c
	add hl,sp		;975f
	ret po			;9760
	ccf			;9761
	ld a,(hl)		;9762
	ld a,(hl)		;9763
	ld a,l			;9764
	ld a,l			;9765
	ld a,e			;9766
	ld a,e			;9767
	ld a,d			;9768
	ld (hl),074h		;9769
	inc sp			;976b
	rrca			;976c
	rst 0			;976d
	jp 03f1fh		;976e
	ccf			;9771
	rlca			;9772
	rlca			;9773
	ld h,a			;9774
	djnz $-69		;9775
	jr l97ach		;9777
	ld l,a			;9779
	rst 18h			;977a
	pop bc			;977b
	rst 38h			;977c
	ccf			;977d
	inc bc			;977e
	dec e			;977f
	dec de			;9780
	dec sp			;9781
	dec sp			;9782
	ld (hl),e		;9783
	ld (hl),c		;9784
	ld (hl),a		;9785
	ld (hl),a		;9786
	ccf			;9787
	nop			;9788
	ld a,a			;9789
	inc e			;978a
	inc bc			;978b
	ret po			;978c
	add a,c			;978d
	rra			;978e
	dec b			;978f
	ld a,a			;9790
	sub h			;9791
	ccf			;9792
	rra			;9793
	rst 8			;9794
	ccf			;9795
	ret p			;9796
	inc a			;9797
	rrca			;9798
	inc bc			;9799
	ld bc,0c0c0h		;979a
	rlca			;979d
	rra			;979e
	cp b			;979f
	ret nc			;97a0
	xor 06ch		;97a1
	ld a,l			;97a3
	pop hl			;97a4
	djnz l97aah		;97a5
	ret p			;97a7
	sub l			;97a8
	add a,b			;97a9
l97aah:
	rst 8			;97aa
	adc a,a			;97ab
l97ach:
	rrca			;97ac
	inc c			;97ad
	ret nz			;97ae
	ret p			;97af
	call m,00f3fh		;97b0
	ex (sp),hl		;97b3
	ret m			;97b4
	inc bc			;97b5
	rlca			;97b6
	rrca			;97b7
	ret po			;97b8
	ret m			;97b9
	ret po			;97ba
	inc e			;97bb
	jp po,00393h		;97bc
	cp e			;97bf
	or a			;97c0
	dec sp			;97c1
	add hl,sp		;97c2
	ld b,a			;97c3
	ld b,a			;97c4
	ld b,03bh		;97c5
	ld h,b			;97c7
	rst 0			;97c8
	sbc a,a			;97c9
	ld a,07dh		;97ca
	dec sp			;97cc
	jp nz,l8243h		;97cd
	ld b,a			;97d0
	ld a,(03887h)		;97d1
	inc bc			;97d4
	ld b,0cch		;97d5
	ld (de),a		;97d7
	cp b			;97d8
	ld h,d			;97d9
	ex (sp),hl		;97da
	and d			;97db
	jp 01ef8h		;97dc
	ld c,006h		;97df
	inc bc			;97e1
	inc bc			;97e2
	ld bc,00c01h		;97e3
	ld (hl),e		;97e6
	add a,a			;97e7
	rra			;97e8
	ret m			;97e9
	ret po			;97ea
	add a,b			;97eb
	nop			;97ec
	call z,0c7f3h		;97ed
	rra			;97f0
	ret m			;97f1
	ret po			;97f2
	add a,b			;97f3
	nop			;97f4
	sub e			;97f5
	cp e			;97f6
	cp e			;97f7
	inc bc			;97f8
	ld de,0c68bh		;97f9
	ld de,0f7f0h		;97fc
	and 0eeh		;97ff
	adc a,09eh		;9801
	cp (hl)			;9803
	dec a			;9804
	dec a			;9805
	inc bc			;9806
	ld a,l			;9807
	sbc a,c			;9808
	ld a,c			;9809
	ld (hl),b		;980a
	ld a,b			;980b
	ld (062cch),a		;980c
	ld sp,01e07h		;980f
	call m,009c3h		;9812
	rra			;9815
	ret nz			;9816
	ret nz			;9817
	rst 38h			;9818
	cp a			;9819
	ret nz			;981a
	adc a,a			;981b
	ccf			;981c
	rrca			;981d
	rrca			;981e
	inc bc			;981f
	rlca			;9820
	add a,a			;9821
	rlca			;9822
	rst 0			;9823
	ld (bc),a		;9824
	rst 10h			;9825
	ld (bc),a		;9826
	and a			;9827
	ret nz			;9828
	ld a,a			;9829
	rra			;982a
	inc c			;982b
	inc e			;982c
	ld b,b			;982d
	ret nz			;982e
	adc a,a			;982f
	ccf			;9830
	ld bc,l8301h		;9831
	rst 0			;9834
	cp 0fch			;9835
	pop af			;9837
	rlca			;9838
	inc h			;9839
	inc h			;983a
	ld h,013h		;983b
	add hl,bc		;983d
	ccf			;983e
	call m,sub_8d0fh	;983f
	ld a,e			;9842
	ei			;9843
	rst 30h			;9844
	or 06eh			;9845
	ld l,l			;9847
	ld e,l			;9848
	rlca			;9849
	add hl,sp		;984a
	ld h,b			;984b
	rst 0			;984c
	sbc a,a			;984d
	ld a,07dh		;984e
	dec sp			;9850
	call pe,0c0f8h		;9851
	ret m			;9854
	ld sp,iy		;9855
	jp p,0b2cah		;9857
	ld h,c			;985a
	call z,0409eh		;985b
	ret nz			;985e
l985fh:
	add a,b			;985f
	add a,b			;9860
	jp p,07ffbh		;9861
	ccf			;9864
	rra			;9865
	rra			;9866
	rrca			;9867
	rrca			;9868
	nop			;9869
	add a,h			;986a
	call m,054c5h		;986b
	ld sp,hl		;986e
	dec b			;986f
	call m,0c381h		;9870
	rlca			;9873
	call nz,05402h		;9874
	ld (bc),a		;9877
	ld b,e			;9878
	add a,c			;9879
	ld d,h			;987a
	inc b			;987b
	push bc			;987c
	ld (bc),a		;987d
	ld d,h			;987e
	ld b,043h		;987f
	add a,h			;9881
	ld d,e			;9882
	jp 0fc53h		;9883
	dec b			;9886
	ld d,e			;9887
	add a,e			;9888
	push af			;9889
	ld d,e			;988a
	ld d,h			;988b
	inc b			;988c
	push bc			;988d
	add a,e			;988e
	call nz,0c5c5h		;988f
	dec b			;9892
sub_9893h:
	call nz,sub_9503h	;9893
	rlca			;9896
	ret			;9897
	add a,e			;9898
	sub l			;9899
	ret			;989a
	sub l			;989b
	inc bc			;989c
	ret			;989d
	ld (bc),a		;989e
	sub l			;989f
	rlca			;98a0
	sbc a,h			;98a1
	ld (bc),a		;98a2
	push bc			;98a3
	adc a,d			;98a4
	sub l			;98a5
	ret			;98a6
	sub l			;98a7
	sub l			;98a8
	sub h			;98a9
	sbc a,h			;98aa
	sbc a,h			;98ab
	push bc			;98ac
	ld d,h			;98ad
	ld d,h			;98ae
	dec b			;98af
	ld b,e			;98b0
	ld a,(bc)		;98b1
	ld d,h			;98b2
	inc b			;98b3
	ld b,e			;98b4
	add a,h			;98b5
	push bc			;98b6
	jp (hl)			;98b7
	ret			;98b8
	ld c,h			;98b9
	inc bc			;98ba
	sub l			;98bb
	inc bc			;98bc
	sbc a,h			;98bd
	add a,c			;98be
	sub h			;98bf
	inc b			;98c0
	sub l			;98c1
	ld b,0c9h		;98c2
	adc a,d			;98c4
	ld e,c			;98c5
	ld d,e			;98c6
	jp 05353h		;98c7
	ld b,e			;98ca
	ld d,h			;98cb
	push bc			;98cc
	jp 004f3h		;98cd
	ld b,e			;98d0
	inc bc			;98d1
	jr nc,l985fh		;98d2
	di			;98d4
	ld d,e			;98d5
	jp 0c394h		;98d6
	ld d,e			;98d9
	ld b,e			;98da
	jp 054c5h		;98db
	ld b,e			;98de
	inc bc			;98df
	jp 0c485h		;98e0
	jp 0f5f4h		;98e3
	call m,0f903h		;98e6
	add a,c			;98e9
	call nz,05404h		;98ea
	ld (bc),a		;98ed
	call nz,sub_9402h	;98ee
	add a,e			;98f1
	call nz,0f5fch		;98f2
	inc bc			;98f5
	call p,0f388h		;98f6
	ld sp,hl		;98f9
	ld sp,hl		;98fa
	call m,0fcc4h		;98fb
	jp 003fch		;98fe
	ld sp,hl		;9901
	ld (bc),a		;9902
	di			;9903
	ld (bc),a		;9904
	call p,0f585h		;9905
	call m,0f4f5h		;9908
	ld d,e			;990b
	inc bc			;990c
	call nz,0c904h		;990d
	add a,c			;9910
	sub h			;9911
	inc bc			;9912
	call nz,0c908h		;9913
	add a,a			;9916
	push bc			;9917
	ld e,a			;9918
	call m,0c5f5h		;9919
	ld d,h			;991c
	ld d,h			;991d
	inc b			;991e
	ld b,e			;991f
	inc bc			;9920
	ld d,e			;9921
	add a,l			;9922
	ld d,h			;9923
	call nz,0c5c5h		;9924
	ld d,h			;9927
	inc bc			;9928
	ld b,e			;9929
	ld (bc),a		;992a
	ld d,e			;992b
	add a,d			;992c
	ld b,e			;992d
	di			;992e
	inc bc			;992f
	ld d,e			;9930
	add a,c			;9931
	jp 04c03h		;9932
	ld (bc),a		;9935
	push bc			;9936
	add a,e			;9937
	sub l			;9938
	push bc			;9939
	push bc			;993a
	dec b			;993b
	sub l			;993c
	ld b,09ch		;993d
	inc b			;993f
	sub l			;9940
	adc a,b			;9941
	push hl			;9942
	sub l			;9943
	ld d,h			;9944
	call nz,0c5c5h		;9945
	sub l			;9948
	call p,0f30dh		;9949
	add a,e			;994c
	call p,05343h		;994d
	ld a,(bc)		;9950
	ld d,h			;9951
	ld (bc),a		;9952
	call nz,sub_9402h	;9953
	inc bc			;9956
	call nz,l9501h+1	;9957
	dec b			;995a
	sub h			;995b
	inc bc			;995c
	sub l			;995d
l995eh:
	ld b,0c9h		;995e
	add a,d			;9960
	push bc			;9961
	call nz,0c303h		;9962
	add a,c			;9965
	call nz,sub_8500h	;9966
	rrca			;9969
	rlca			;996a
	inc bc			;996b
	ld bc,00301h		;996c
	nop			;996f
	inc bc			;9970
	ld bc,00303h		;9971
	ld (bc),a		;9974
	ld bc,00004h		;9975
	adc a,c			;9978
	dec a			;9979
	ld a,a			;997a
	rst 0			;997b
	or e			;997c
	nop			;997d
	ccf			;997e
	rrca			;997f
	rlca			;9980
	inc bc			;9981
	inc b			;9982
	ld bc,00304h		;9983
	inc bc			;9986
	rlca			;9987
	add a,c			;9988
	add a,b			;9989
	inc b			;998a
	ret nz			;998b
	inc bc			;998c
	ret po			;998d
	add a,e			;998e
	rra			;998f
	rrca			;9990
	rlca			;9991
	dec b			;9992
	nop			;9993
	add a,d			;9994
	ret m			;9995
	ret nz			;9996
	ld b,000h		;9997
	add a,l			;9999
	rst 38h			;999a
	call m,0e0f0h		;999b
	ret nz			;999e
	inc bc			;999f
	add a,b			;99a0
	add a,l			;99a1
	nop			;99a2
	inc bc			;99a3
	rlca			;99a4
	rrca			;99a5
	rrca			;99a6
	inc bc			;99a7
	rra			;99a8
	ld b,000h		;99a9
	add a,d			;99ab
	call m,0066ch		;99ac
	nop			;99af
	add a,a			;99b0
	ccf			;99b1
	sbc a,a			;99b2
	nop			;99b3
	nop			;99b4
	ld bc,00303h		;99b5
	inc bc			;99b8
	rlca			;99b9
	nop			;99ba
	add a,e			;99bb
	sub b			;99bc
	ret nz			;99bd
	ret nz			;99be
	ld de,l8550h		;99bf
	ld b,b			;99c2
	ld d,b			;99c3
	ld d,e			;99c4
	jp 006c3h		;99c5
	jr nc,$+20		;99c8
	ld b,b			;99ca
	ld d,030h		;99cb
	inc bc			;99cd
	ld b,b			;99ce
	ld (bc),a		;99cf
	ld d,b			;99d0
	ld (bc),a		;99d1
	ld b,b			;99d2
	add a,c			;99d3
	jr nc,l99ddh		;99d4
	ret p			;99d6
	add a,d			;99d7
	jr nc,l9a1dh		;99d8
	rlca			;99da
	jr nc,l995eh		;99db
l99ddh:
	ld b,e			;99dd
	inc bc			;99de
	jr nc,l99e3h		;99df
	ld b,b			;99e1
	add a,e			;99e2
l99e3h:
	ld d,b			;99e3
	ret nz			;99e4
	ld d,b			;99e5
	nop			;99e6
	or d			;99e7
	inc de			;99e8
	ld h,a			;99e9
	and 0cdh		;99ea
	call 0cbdbh		;99ec
	ret			;99ef
	ccf			;99f0
	nop			;99f1
	nop			;99f2
	ld a,h			;99f3
	ex (sp),hl		;99f4
	ex (sp),hl		;99f5
	ld a,0e2h		;99f6
	cp 03fh			;99f8
l99fah:
	rrca			;99fa
	rst 20h			;99fb
	di			;99fc
	ei			;99fd
	ld sp,l8c81h		;99fe
	halt			;9a01
	jp m,01901h		;9a02
	dec h			;9a05
	cp (hl)			;9a06
	rst 0			;9a07
	djnz l99fah		;9a08
	djnz l9a14h		;9a0a
	ex af,af'		;9a0c
	add a,b			;9a0d
	ret nz			;9a0e
	pop hl			;9a0f
	ret m			;9a10
	defb 0fdh,0fch,0fdh ;illegal sequence	;9a11
l9a14h:
	ld a,h			;9a14
	dec a			;9a15
	ex (sp),hl		;9a16
	jp po,04827h		;9a17
	inc bc			;9a1a
	ld d,b			;9a1b
	adc a,e			;9a1c
l9a1dh:
	ret pe			;9a1d
	dec bc			;9a1e
	rra			;9a1f
	inc bc			;9a20
	rlca			;9a21
	rrca			;9a22
	ret po			;9a23
	jr c,l9a32h		;9a24
	jp nz,00068h		;9a26
	add a,h			;9a29
	jp 05453h		;9a2a
	ld d,e			;9a2d
	ld b,043h		;9a2e
	adc a,c			;9a30
	sbc a,c			;9a31
l9a32h:
	call m,04ef4h		;9a32
	ld d,h			;9a35
	push bc			;9a36
	ld d,e			;9a37
	ld d,h			;9a38
	ld d,e			;9a39
	dec b			;9a3a
	ld b,e			;9a3b
	inc bc			;9a3c
	call m,0c303h		;9a3d
	inc b			;9a40
	call m,0f985h		;9a41
	push af			;9a44
	call m,sub_9495h	;9a45
	inc bc			;9a48
	sub e			;9a49
	ld (bc),a		;9a4a
	sub h			;9a4b
	ld (bc),a		;9a4c
	sub l			;9a4d
	ex af,af'		;9a4e
	ret			;9a4f
	adc a,d			;9a50
	push bc			;9a51
	ld d,h			;9a52
	push bc			;9a53
	ld d,h			;9a54
	ld b,e			;9a55
	sub e			;9a56
	ld d,e			;9a57
	ld d,e			;9a58
	ld b,e			;9a59
	ld d,e			;9a5a
	nop			;9a5b
	ex af,af'		;9a5c
	rst 38h			;9a5d
	ld (bc),a		;9a5e
	ld a,e			;9a5f
	adc a,d			;9a60
	ld (hl),a		;9a61
	ld c,a			;9a62
	cp a			;9a63
	ex (sp),hl		;9a64
	sbc a,l			;9a65
	ld a,(hl)		;9a66
	pop af			;9a67
	call m,03386h		;9a68
	inc bc			;9a6b
	ld a,e			;9a6c
	defb 0ddh,0b7h,09dh ;illegal sequence	;9a6d
	ld a,b			;9a70
	ret po			;9a71
	nop			;9a72
	nop			;9a73
	cp 0ffh			;9a74
	ccf			;9a76
	or a			;9a77
	in a,(00dh)		;9a78
	call p,03202h		;9a7a
	ld a,c			;9a7d
	defb 0fdh,0a5h ;and iyl	;9a7e
	call z,05848h		;9a80
	ld b,b			;9a83
	nop			;9a84
	rlca			;9a85
	dec sp			;9a86
	ret p			;9a87
	ld a,a			;9a88
	rrca			;9a89
	pop hl			;9a8a
	call z,0dedeh		;9a8b
	dec e			;9a8e
	defb 0fdh,00dh,0fdh ;illegal sequence	;9a8f
	dec c			;9a92
	ld (bc),a		;9a93
	ld (bc),a		;9a94
	rst 38h			;9a95
	rra			;9a96
	rlca			;9a97
	ccf			;9a98
	ret m			;9a99
	ret nz			;9a9a
	ret m			;9a9b
	ret nz			;9a9c
	ret m			;9a9d
	ret nz			;9a9e
	jp 0fff8h		;9a9f
	call m,07e7fh		;9aa2
	ld a,a			;9aa5
	ld a,a			;9aa6
	inc a			;9aa7
	ret po			;9aa8
	pop bc			;9aa9
	ld a,000h		;9aaa
	rrca			;9aac
	ld bc,0e3f0h		;9aad
	inc bc			;9ab0
	and 006h		;9ab1
	and 00ch		;9ab3
	nop			;9ab5
	inc bc			;9ab6
	rlca			;9ab7
	rra			;9ab8
	ccf			;9ab9
	nop			;9aba
	nop			;9abb
	ret po			;9abc
	inc a			;9abd
	add a,a			;9abe
	ret po			;9abf
	di			;9ac0
	ld bc,0fe8fh		;9ac1
l9ac4h:
	ld (hl),b		;9ac4
	ld a,a			;9ac5
	ccf			;9ac6
	ret po			;9ac7
	pop af			;9ac8
	ret po			;9ac9
	ret po			;9aca
	inc bc			;9acb
	ret nz			;9acc
	add a,c			;9acd
	ret p			;9ace
	rlca			;9acf
	rrca			;9ad0
	sub c			;9ad1
	ret po			;9ad2
	rst 8			;9ad3
	ld h,a			;9ad4
	or e			;9ad5
	ret c			;9ad6
	cpl			;9ad7
	add a,d			;9ad8
	jp po,01f76h		;9ad9
l9adch:
	rra			;9adc
	rst 38h			;9add
	rrca			;9ade
	rrca			;9adf
	ret p			;9ae0
	ret p			;9ae1
	nop			;9ae2
	nop			;9ae3
	add hl,bc		;9ae4
	sub e			;9ae5
	add a,d			;9ae6
	jp 00453h		;9ae7
	ld b,e			;9aea
	inc b			;9aeb
	ld d,e			;9aec
	add a,e			;9aed
	jp 0c393h		;9aee
	inc bc			;9af1
	ld b,e			;9af2
	add a,c			;9af3
	ld d,e			;9af4
	inc bc			;9af5
	ld d,h			;9af6
	inc b			;9af7
	ld b,e			;9af8
	add a,h			;9af9
	ld d,e			;9afa
	ld d,h			;9afb
	call nz,00653h		;9afc
	ld d,h			;9aff
	inc bc			;9b00
	ld b,e			;9b01
	ld (bc),a		;9b02
	di			;9b03
	add a,a			;9b04
	ld d,h			;9b05
	ld d,e			;9b06
	ld d,e			;9b07
	ld b,e			;9b08
	ld d,e			;9b09
	ld b,e			;9b0a
	ld b,e			;9b0b
	inc bc			;9b0c
	ld d,h			;9b0d
	ld (bc),a		;9b0e
	ld b,e			;9b0f
	inc b			;9b10
	di			;9b11
	ld (bc),a		;9b12
	ret			;9b13
	ld (bc),a		;9b14
	push bc			;9b15
	ld (bc),a		;9b16
	ld d,h			;9b17
	inc bc			;9b18
	ld b,e			;9b19
	ld (bc),a		;9b1a
	ld d,e			;9b1b
	inc bc			;9b1c
	push bc			;9b1d
	inc bc			;9b1e
	ld d,h			;9b1f
	add a,c			;9b20
	ld b,e			;9b21
	inc bc			;9b22
	ld d,h			;9b23
	ld (bc),a		;9b24
	ld b,e			;9b25
	add a,l			;9b26
	di			;9b27
	push bc			;9b28
	push bc			;9b29
	ld d,h			;9b2a
	ld d,h			;9b2b
	inc bc			;9b2c
	ld b,e			;9b2d
	inc bc			;9b2e
	jr nc,$+4		;9b2f
	call nz,05302h		;9b31
	adc a,e			;9b34
	jp l9053h		;9b35
	sub b			;9b38
	ret			;9b39
	ret			;9b3a
	push bc			;9b3b
	push bc			;9b3c
	ld d,b			;9b3d
	ld b,b			;9b3e
	ld b,e			;9b3f
	dec b			;9b40
	jr nc,l9ac4h		;9b41
	ret p			;9b43
	inc bc			;9b44
	ld b,b			;9b45
	inc bc			;9b46
	jr nc,l9adch		;9b47
	di			;9b49
	inc (hl)		;9b4a
	inc (hl)		;9b4b
	ld d,e			;9b4c
	call nz,0c454h		;9b4d
	jp 05343h		;9b50
	ld d,h			;9b53
	jr nc,l9b99h		;9b54
	ld b,e			;9b56
	ld d,h			;9b57
	push bc			;9b58
	push bc			;9b59
	ld d,h			;9b5a
	ld d,h			;9b5b
	nop			;9b5c
	add a,e			;9b5d
	call 0b798h		;9b5e
	inc bc			;9b61
	xor a			;9b62
	sub a			;9b63
	and a			;9b64
	sub e			;9b65
	ld c,h			;9b66
	ld h,(hl)		;9b67
	sbc a,b			;9b68
	rst 8			;9b69
	call m,01c98h		;9b6a
	inc a			;9b6d
	ld b,03fh		;9b6e
	rra			;9b70
	rrca			;9b71
	rlca			;9b72
	ld (hl),e		;9b73
	ret m			;9b74
	rst 38h			;9b75
	push af			;9b76
	push af			;9b77
	ret nz			;9b78
	ret m			;9b79
	xor b			;9b7a
	inc bc			;9b7b
	rrca			;9b7c
	sbc a,c			;9b7d
	rlca			;9b7e
	ccf			;9b7f
	ld a,a			;9b80
	rra			;9b81
	ccf			;9b82
	ccf			;9b83
	rra			;9b84
	ld a,a			;9b85
	rst 18h			;9b86
l9b87h:
	rst 38h			;9b87
	add a,b			;9b88
	add a,b			;9b89
	ret nz			;9b8a
	ret po			;9b8b
	ret p			;9b8c
	ret m			;9b8d
	ld c,007h		;9b8e
	inc bc			;9b90
	ld bc,07f01h		;9b91
	nop			;9b94
	add a,b			;9b95
	ld b,003h		;9b96
	inc bc			;9b98
l9b99h:
	ld (bc),a		;9b99
	ld bc,0c302h		;9b9a
	ld (bc),a		;9b9d
	rst 38h			;9b9e
	ld (bc),a		;9b9f
	cp 003h			;9ba0
	ld (bc),a		;9ba2
	and e			;9ba3
	inc bc			;9ba4
	add a,b			;9ba5
	add a,b			;9ba6
	ret nz			;9ba7
	ret nz			;9ba8
	ret p			;9ba9
	jr c,l9bebh		;9baa
	ld c,007h		;9bac
	rra			;9bae
	add a,a			;9baf
	rst 0			;9bb0
	ret nz			;9bb1
	ret p			;9bb2
	ret nz			;9bb3
	dec bc			;9bb4
	ld (de),a		;9bb5
	adc a,d			;9bb6
	jp m,04df7h		;9bb7
	jr l9befh		;9bba
	rst 30h			;9bbc
	ld (07d30h),a		;9bbd
	ld sp,03fc7h		;9bc0
	dec bc			;9bc3
	ret nz			;9bc4
	jr nz,l9b87h		;9bc5
	inc b			;9bc7
	rst 38h			;9bc8
	defb 0edh ;next byte illegal after ed	;9bc9
	ret m			;9bca
	ret nz			;9bcb
	ret po			;9bcc
	ret p			;9bcd
	defb 0fdh,0e6h,0c2h ;illegal sequence	;9bce
	ld (0e408h),a		;9bd1
	inc bc			;9bd4
	nop			;9bd5
	nop			;9bd6
	di			;9bd7
	add a,b			;9bd8
	dec sp			;9bd9
	pop af			;9bda
	push af			;9bdb
	call m,0fefch		;9bdc
	cp 0ffh			;9bdf
	rst 38h			;9be1
	ld a,a			;9be2
	ld a,a			;9be3
	rst 20h			;9be4
	ld (hl),e		;9be5
	dec sp			;9be6
	dec e			;9be7
	rrca			;9be8
	rlca			;9be9
	inc bc			;9bea
l9bebh:
	ld bc,07f01h		;9beb
	ld a,a			;9bee
l9befh:
	ccf			;9bef
	ccf			;9bf0
	rra			;9bf1
	rra			;9bf2
	adc a,a			;9bf3
l9bf4h:
	rst 0			;9bf4
	ld h,a			;9bf5
	inc sp			;9bf6
	add hl,de		;9bf7
	ld a,a			;9bf8
	ld a,07fh		;9bf9
	ccf			;9bfb
	push bc			;9bfc
	defb 0fdh,038h,000h ;illegal sequence	;9bfd
	adc a,a			;9c00
	di			;9c01
	ld (hl),d		;9c02
	ld (07f1fh),a		;9c03
	ld a,a			;9c06
	inc bc			;9c07
	nop			;9c08
	inc bc			;9c09
	rlca			;9c0a
	inc c			;9c0b
	inc de			;9c0c
	inc bc			;9c0d
	ld bc,0c080h		;9c0e
	ret po			;9c11
	ret m			;9c12
	inc a			;9c13
	call m,0ff6eh		;9c14
	ld a,e			;9c17
	scf			;9c18
	cp (hl)			;9c19
	defb 0ddh,03fh,0bfh ;illegal sequence	;9c1a
	ld a,03eh		;9c1d
	ld e,h			;9c1f
	sbc a,h			;9c20
	inc e			;9c21
	inc e			;9c22
	ld e,00ch		;9c23
	add a,e			;9c25
	ret nz			;9c26
	or b			;9c27
	call z,0c0c3h		;9c28
	ret po			;9c2b
	and (hl)		;9c2c
	inc de			;9c2d
	inc de			;9c2e
	add hl,bc		;9c2f
	add hl,bc		;9c30
	add a,h			;9c31
	ld a,h			;9c32
	ld b,027h		;9c33
	ld b,a			;9c35
	jr c,l9c3bh		;9c36
	jr l9bf4h		;9c38
	ld a,h			;9c3a
l9c3bh:
	adc a,a			;9c3b
	ei			;9c3c
	ld a,c			;9c3d
	add hl,sp		;9c3e
	add hl,de		;9c3f
	sbc a,a			;9c40
	rst 0			;9c41
	ex (sp),hl		;9c42
	ex (sp),hl		;9c43
	pop af			;9c44
	ld a,c			;9c45
	add hl,sp		;9c46
	jp po,0e60ch		;9c47
	ld h,e			;9c4a
	add hl,de		;9c4b
	inc a			;9c4c
	ld bc,00fffh		;9c4d
	add a,b			;9c50
	rra			;9c51
	inc h			;9c52
	ld c,c			;9c53
	inc (hl)		;9c54
	ld h,e			;9c55
	and c			;9c56
	and b			;9c57
	ret nc			;9c58
	ld e,c			;9c59
	cpl			;9c5a
	inc de			;9c5b
	ld h,c			;9c5c
	ld e,01eh		;9c5d
	ret nz			;9c5f
	ccf			;9c60
	nop			;9c61
	ccf			;9c62
	ccf			;9c63
	adc a,a			;9c64
	ret nz			;9c65
	ld h,b			;9c66
	ld h,b			;9c67
	jr nc,$+50		;9c68
	add hl,sp		;9c6a
	sbc a,e			;9c6b
	rra			;9c6c
	rlca			;9c6d
	ld bc,0f0c0h		;9c6e
	cp h			;9c71
	cp (hl)			;9c72
	ld l,l			;9c73
	nop			;9c74
	adc a,d			;9c75
	ld d,e			;9c76
	jp 0c353h		;9c77
	sub h			;9c7a
	sub h			;9c7b
	call nz,05354h		;9c7c
	ld b,e			;9c7f
	ld b,0f3h		;9c80
	add a,l			;9c82
	ld b,e			;9c83
	di			;9c84
	ld b,e			;9c85
	ld d,e			;9c86
	ld d,e			;9c87
	inc b			;9c88
	ld b,e			;9c89
	add a,(hl)		;9c8a
	ccf			;9c8b
	ld b,e			;9c8c
	ret			;9c8d
	ret			;9c8e
	push bc			;9c8f
	ld d,h			;9c90
	inc b			;9c91
	ld b,e			;9c92
	inc b			;9c93
	ld d,h			;9c94
	inc bc			;9c95
	ld b,e			;9c96
	rlca			;9c97
	call p,0f586h		;9c98
	call m,0f5fch		;9c9b
	ld b,e			;9c9e
	ld b,e			;9c9f
	ex af,af'		;9ca0
	di			;9ca1
	add a,c			;9ca2
	ld c,a			;9ca3
	inc b			;9ca4
	sub l			;9ca5
	add a,d			;9ca6
	ret			;9ca7
	ld e,c			;9ca8
	rlca			;9ca9
	ret			;9caa
	adc a,d			;9cab
	push bc			;9cac
	ld d,h			;9cad
	ld d,h			;9cae
	push bc			;9caf
	ld d,e			;9cb0
	ld d,e			;9cb1
	ld b,e			;9cb2
	ld d,h			;9cb3
	ld d,h			;9cb4
	sub l			;9cb5
	inc b			;9cb6
	ret			;9cb7
	inc bc			;9cb8
	push bc			;9cb9
	adc a,b			;9cba
	ld d,h			;9cbb
	ld b,e			;9cbc
	sub l			;9cbd
	ld d,h			;9cbe
	ld b,e			;9cbf
	ld b,e			;9cc0
	di			;9cc1
	di			;9cc2
l9cc3h:
	inc bc			;9cc3
	ld b,e			;9cc4
	rlca			;9cc5
	di			;9cc6
	add a,e			;9cc7
	ld b,e			;9cc8
	ld d,h			;9cc9
	push bc			;9cca
	ex af,af'		;9ccb
	ret			;9ccc
	inc bc			;9ccd
	sub l			;9cce
	add a,l			;9ccf
	push bc			;9cd0
	ld d,h			;9cd1
	sub l			;9cd2
	sub l			;9cd3
	sub h			;9cd4
	ld c,09ch		;9cd5
	dec bc			;9cd7
	push bc			;9cd8
	ld (bc),a		;9cd9
	ld d,h			;9cda
	ld b,043h		;9cdb
	ld (bc),a		;9cdd
	call p,04381h		;9cde
	inc b			;9ce1
	ld d,h			;9ce2
	ex af,af'		;9ce3
	push bc			;9ce4
	inc b			;9ce5
	push af			;9ce6
	dec b			;9ce7
	call p,0f31ch		;9ce8
	ld (bc),a		;9ceb
	sub l			;9cec
	dec b			;9ced
	ret			;9cee
	dec b			;9cef
	push bc			;9cf0
	dec b			;9cf1
	ld d,h			;9cf2
	ld (bc),a		;9cf3
	ld d,e			;9cf4
	add a,e			;9cf5
	push af			;9cf6
	ld b,e			;9cf7
	ld b,e			;9cf8
	inc bc			;9cf9
	ld d,h			;9cfa
	ld (bc),a		;9cfb
	di			;9cfc
	add a,d			;9cfd
	ld d,e			;9cfe
	call p,0f305h		;9cff
	add a,e			;9d02
	call p,0f4f5h		;9d03
	inc b			;9d06
	di			;9d07
	add a,d			;9d08
	call p,00343h		;9d09
	di			;9d0c
	dec c			;9d0d
	ld b,e			;9d0e
	dec b			;9d0f
	di			;9d10
	nop			;9d11
	add a,e			;9d12
	pop bc			;9d13
	rrca			;9d14
	inc bc			;9d15
	ld d,001h		;9d16
	ld (bc),a		;9d18
	inc bc			;9d19
	ld (bc),a		;9d1a
	rlca			;9d1b
	inc bc			;9d1c
	rrca			;9d1d
	add a,e			;9d1e
	rst 8			;9d1f
	call m,00df0h		;9d20
	add a,b			;9d23
	ld (bc),a		;9d24
	nop			;9d25
	add a,(hl)		;9d26
	inc c			;9d27
	ld e,06eh		;9d28
l9d2ah:
	ld (hl),a		;9d2a
	ld c,l			;9d2b
	ld b,l			;9d2c
	nop			;9d2d
	sub b			;9d2e
	di			;9d2f
	ld b,b			;9d30
	ld d,b			;9d31
	ld d,b			;9d32
	ld b,b			;9d33
	ld b,b			;9d34
	ret p			;9d35
	ld d,b			;9d36
	ld d,b			;9d37
	jr nc,l9d2ah		;9d38
	ld b,b			;9d3a
	ld d,b			;9d3b
	ret nz			;9d3c
	sub b			;9d3d
	ret nz			;9d3e
	inc b			;9d3f
	jr nc,l9cc3h		;9d40
	ld d,b			;9d42
l9d43h:
	inc bc			;9d43
	ret nz			;9d44
	add a,c			;9d45
	ld d,b			;9d46
	inc bc			;9d47
	ret nz			;9d48
l9d49h:
	ld (bc),a		;9d49
	ld d,b			;9d4a
	sub c			;9d4b
	ld b,b			;9d4c
	jr nc,l9d92h		;9d4d
	ld b,b			;9d4f
	ld b,b			;9d50
	jr nc,l9d43h		;9d51
	ld d,b			;9d53
	ret nz			;9d54
	ret nz			;9d55
	ld d,b			;9d56
	jr nc,l9d49h		;9d57
	ld b,b			;9d59
	ld d,b			;9d5a
	ret nz			;9d5b
	sub b			;9d5c
	inc bc			;9d5d
	ret nz			;9d5e
	add a,(hl)		;9d5f
	sub b			;9d60
	ld d,b			;9d61
	ld b,b			;9d62
	ret p			;9d63
	ld sp,hl		;9d64
	push af			;9d65
	nop			;9d66
	and b			;9d67
	nop			;9d68
	inc a			;9d69
	nop			;9d6a
	nop			;9d6b
	call po,0d4c4h		;9d6c
	sub h			;9d6f
	rst 30h			;9d70
	rst 30h			;9d71
	ei			;9d72
	call m,01c38h		;9d73
	rrca			;9d76
	inc bc			;9d77
	rlca			;9d78
	ret nz			;9d79
	ret po			;9d7a
	ld (hl),b		;9d7b
	scf			;9d7c
	inc e			;9d7d
	jr l9d98h		;9d7e
	ld a,01fh		;9d80
l9d82h:
	ld de,07030h		;9d82
	ret p			;9d85
	or b			;9d86
	or b			;9d87
	inc bc			;9d88
	jr $-55			;9d89
	adc a,h			;9d8b
	call z,07266h		;9d8c
	ld a,a			;9d8f
	or h			;9d90
	xor d			;9d91
l9d92h:
	jp (hl)			;9d92
	and h			;9d93
	cp (hl)			;9d94
	rst 20h			;9d95
	and a			;9d96
	rst 38h			;9d97
l9d98h:
	dec hl			;9d98
	ld d,b			;9d99
	sub b			;9d9a
	jr nz,l9dfeh		;9d9b
	jp 0ffffh		;9d9d
	call p,sub_9893h	;9da0
	ret m			;9da3
	inc c			;9da4
	dec b			;9da5
	rlca			;9da6
	rst 38h			;9da7
	dec bc			;9da8
	ld a,(bc)		;9da9
	ld d,027h		;9daa
	ld b,h			;9dac
	adc a,h			;9dad
	inc c			;9dae
	rra			;9daf
	rst 38h			;9db0
	nop			;9db1
	nop			;9db2
	rst 38h			;9db3
	rst 38h			;9db4
	nop			;9db5
	nop			;9db6
	rst 38h			;9db7
	jr z,l9d82h		;9db8
	jr $+129		;9dba
	ret p			;9dbc
	ret po			;9dbd
	ret po			;9dbe
	rst 38h			;9dbf
	ret nc			;9dc0
	ld d,b			;9dc1
	ld l,b			;9dc2
	inc h			;9dc3
	ld (0b0b1h),hl		;9dc4
	sbc a,b			;9dc7
	nop			;9dc8
	inc a			;9dc9
	nop			;9dca
	nop			;9dcb
	daa			;9dcc
	inc bc			;9dcd
	ld a,e			;9dce
	ld h,c			;9dcf
	inc (hl)		;9dd0
	ld (hl),h		;9dd1
	dec b			;9dd2
	dec bc			;9dd3
	sub (hl)		;9dd4
	rst 38h			;9dd5
	sub d			;9dd6
	sub d			;9dd7
	jp nc,0f2d2h		;9dd8
	pop af			;9ddb
	adc a,c			;9ddc
	sbc a,b			;9ddd
	ld c,c			;9dde
	ld c,c			;9ddf
	ld c,e			;9de0
	ld c,e			;9de1
	ld c,l			;9de2
	adc a,c			;9de3
	sbc a,h			;9de4
	ld a,(de)		;9de5
	inc hl			;9de6
	inc a			;9de7
	ld a,03fh		;9de8
	ccf			;9dea
	inc bc			;9deb
	ld a,a			;9dec
	sub e			;9ded
	ld a,08fh		;9dee
	rst 0			;9df0
	rst 20h			;9df1
	rst 20h			;9df2
	rst 28h			;9df3
	ld sp,0ff33h		;9df4
	ccf			;9df7
	ld a,a			;9df8
	inc a			;9df9
	cp 07eh			;9dfa
	in a,(099h)		;9dfc
l9dfeh:
	cp l			;9dfe
	and l			;9dff
	and l			;9e00
	dec b			;9e01
	jr $-100		;9e02
	add a,b			;9e04
	ret nz			;9e05
	ret po			;9e06
	ret m			;9e07
	cp a			;9e08
	rst 20h			;9e09
	and l			;9e0a
	rst 38h			;9e0b
	and l			;9e0c
	cp l			;9e0d
	rst 20h			;9e0e
	push hl			;9e0f
	ccf			;9e10
	rrca			;9e11
	inc bc			;9e12
	ld bc,00f15h		;9e13
	inc bc			;9e16
	nop			;9e17
	ld a,a			;9e18
	ret po			;9e19
	call m,099ffh		;9e1a
	sbc a,c			;9e1d
	inc b			;9e1e
	in a,(002h)		;9e1f
	ld a,a			;9e21
	sbc a,b			;9e22
	ccf			;9e23
	rlca			;9e24
	rrca			;9e25
	ld bc,0ff01h		;9e26
	ld b,l			;9e29
	ld b,l			;9e2a
	add a,c			;9e2b
	rst 38h			;9e2c
	add a,c			;9e2d
	add a,c			;9e2e
	ld b,c			;9e2f
	ld a,a			;9e30
	ld b,l			;9e31
	dec h			;9e32
	adc a,h			;9e33
	ret z			;9e34
	ld d,b			;9e35
	ld h,b			;9e36
	ld b,b			;9e37
	add a,b			;9e38
	ld bc,00801h		;9e39
	rst 38h			;9e3c
	adc a,b			;9e3d
	inc bc			;9e3e
	inc hl			;9e3f
	ld hl,l8770h+1		;9e40
	daa			;9e43
	ret z			;9e44
	ret z			;9e45
	nop			;9e46
	add a,e			;9e47
	inc b			;9e48
	ld b,e			;9e49
	ld b,e			;9e4a
	add hl,bc		;9e4b
	ccf			;9e4c
	dec b			;9e4d
	ld b,e			;9e4e
	inc (hl)		;9e4f
	di			;9e50
	dec b			;9e51
	call p,0f302h		;9e52
	ld (bc),a		;9e55
	sub l			;9e56
	ld b,0f3h		;9e57
	add a,d			;9e59
	push af			;9e5a
	call p,0f307h		;9e5b
	inc b			;9e5e
	call p,04302h		;9e5f
	rlca			;9e62
	ccf			;9e63
	ld (bc),a		;9e64
	call p,0f582h		;9e65
	call p,0f303h		;9e68
	add a,e			;9e6b
	call p,0f4f5h		;9e6c
	dec b			;9e6f
	di			;9e70
	add a,e			;9e71
	call p,0f4f5h		;9e72
	inc b			;9e75
	di			;9e76
	add a,c			;9e77
	sub e			;9e78
	ld b,053h		;9e79
	add a,d			;9e7b
	ld b,h			;9e7c
	jp 05305h		;9e7d
	adc a,a			;9e80
	push af			;9e81
	call p,0c5c5h		;9e82
	ld d,e			;9e85
	call nz,0fcc5h		;9e86
	call p,0fcf5h		;9e89
	call m,053f5h		;9e8c
	call nz,sub_9503h	;9e8f
	add a,c			;9e92
	call p,0f503h		;9e93
	add a,d			;9e96
	di			;9e97
	call p,0f304h		;9e98
	add a,e			;9e9b
	call p,0fcf3h		;9e9c
	inc bc			;9e9f
	ld sp,hl		;9ea0
	add a,c			;9ea1
l9ea2h:
	call p,0f503h		;9ea2
	add a,l			;9ea5
	push bc			;9ea6
	call m,0f9f9h		;9ea7
	call nz,05403h		;9eaa
	add a,c			;9ead
	ld b,e			;9eae
	dec b			;9eaf
	ccf			;9eb0
	add a,l			;9eb1
	push af			;9eb2
	call p,0f3f3h		;9eb3
	ld sp,hl		;9eb6
	inc bc			;9eb7
	push af			;9eb8
	add a,e			;9eb9
	ld sp,hl		;9eba
	push af			;9ebb
	call p,0f304h		;9ebc
	ld b,0f4h		;9ebf
	ld a,(bc)		;9ec1
	push af			;9ec2
	add a,a			;9ec3
	call m,0f5f5h		;9ec4
	ld d,e			;9ec7
	ld d,e			;9ec8
	call p,000f3h		;9ec9
	ld (bc),a		;9ecc
	rst 38h			;9ecd
	sub (hl)		;9ece
	ret m			;9ecf
	ret nz			;9ed0
	nop			;9ed1
	inc bc			;9ed2
	rrca			;9ed3
	ccf			;9ed4
	ld bc,00703h		;9ed5
	rrca			;9ed8
	rra			;9ed9
	ccf			;9eda
	ld a,a			;9edb
	ld bc,00100h		;9edc
	inc bc			;9edf
	rlca			;9ee0
	rra			;9ee1
	ccf			;9ee2
	ld a,a			;9ee3
	rst 38h			;9ee4
	inc bc			;9ee5
	nop			;9ee6
	and l			;9ee7
	ret nz			;9ee8
	ret p			;9ee9
	ret m			;9eea
	cp 0ffh			;9eeb
	add a,b			;9eed
	ret nz			;9eee
	ret po			;9eef
	ret p			;9ef0
	ret m			;9ef1
	call m,0fffeh		;9ef2
	ld bc,00703h		;9ef5
	rrca			;9ef8
	rra			;9ef9
	ccf			;9efa
	ld a,a			;9efb
	ld a,a			;9efc
	add a,b			;9efd
	ret nz			;9efe
	ret po			;9eff
	ret p			;9f00
	ret p			;9f01
	ret m			;9f02
	call m,0c0feh		;9f03
	ret po			;9f06
	ret p			;9f07
	ret m			;9f08
	ret m			;9f09
	call m,0fefch		;9f0a
	inc b			;9f0d
	nop			;9f0e
	inc b			;9f0f
	ld bc,00307h		;9f10
	ld b,000h		;9f13
	add a,e			;9f15
	inc bc			;9f16
	rrca			;9f17
	ccf			;9f18
	nop			;9f19
	dec b			;9f1a
	ld bc,02103h		;9f1b
	rlca			;9f1e
l9f1fh:
	djnz l9ea2h		;9f1f
	ld hl,0101ah		;9f21
	inc bc			;9f24
	ret p			;9f25
	dec b			;9f26
	djnz l9f2bh		;9f27
	ret p			;9f29
	adc a,e			;9f2a
l9f2bh:
	jr nz,l9f3dh		;9f2b
	djnz l9f1fh		;9f2d
	jr nc,l9f51h		;9f2f
	ret p			;9f31
	ret p			;9f32
	jr nz,l9f45h		;9f33
	ret p			;9f35
	dec b			;9f36
	jr nc,l9f43h		;9f37
	djnz $+9		;9f39
	ret p			;9f3b
	inc bc			;9f3c
l9f3dh:
	djnz l9f3fh		;9f3d
l9f3fh:
	add a,c			;9f3f
	ld bc,00303h		;9f40
l9f43h:
	inc b			;9f43
	rlca			;9f44
l9f45h:
	add a,c			;9f45
	ld bc,00305h		;9f46
	ld (bc),a		;9f49
	nop			;9f4a
	ld (bc),a		;9f4b
	rlca			;9f4c
	add a,c			;9f4d
	rrca			;9f4e
	ld b,000h		;9f4f
l9f51h:
	inc bc			;9f51
	ret po			;9f52
	add a,l			;9f53
	ccf			;9f54
	rrca			;9f55
	rlca			;9f56
	inc bc			;9f57
	rrca			;9f58
	rlca			;9f59
	nop			;9f5a
	nop			;9f5b
	dec c			;9f5c
	djnz $+5		;9f5d
	ret p			;9f5f
	add a,d			;9f60
	ld hl,0061fh		;9f61
	ret p			;9f64
	ld (bc),a		;9f65
	inc hl			;9f66
	add a,d			;9f67
	ld (de),a		;9f68
	pop af			;9f69
	inc c			;9f6a
	ret p			;9f6b
	nop			;9f6c
	sub b			;9f6d
	inc bc			;9f6e
	ld a,a			;9f6f
	rst 38h			;9f70
	rra			;9f71
	rrca			;9f72
	rrca			;9f73
	ret p			;9f74
	ld a,(hl)		;9f75
	ret po			;9f76
	call m,0ffffh		;9f77
	ret po			;9f7a
	djnz $-61		;9f7b
	ld a,003h		;9f7d
	nop			;9f7f
	xor d			;9f80
	rst 38h			;9f81
	jp 07cfch		;9f82
	jr c,l9f87h		;9f85
l9f87h:
	ld bc,00f03h		;9f87
	rra			;9f8a
	ccf			;9f8b
	ld a,(hl)		;9f8c
	inc bc			;9f8d
	ld bc,00d06h		;9f8e
	inc bc			;9f91
	ld a,a			;9f92
	ret po			;9f93
	ret po			;9f94
	inc bc			;9f95
	ret nz			;9f96
	ccf			;9f97
	ret po			;9f98
	ret po			;9f99
	inc e			;9f9a
	pop af			;9f9b
	adc a,a			;9f9c
	ret p			;9f9d
	ld a,h			;9f9e
	rst 38h			;9f9f
	ld a,(hl)		;9fa0
	inc a			;9fa1
	ld a,0fch		;9fa2
	call m,03e83h		;9fa4
	inc a			;9fa7
	cp 07ch			;9fa8
	ld a,(hl)		;9faa
	inc bc			;9fab
	ld a,0bah		;9fac
	nop			;9fae
	ld b,b			;9faf
	ld (hl),b		;9fb0
	nop			;9fb1
	ld (hl),b		;9fb2
	rlca			;9fb3
	ret p			;9fb4
	rrca			;9fb5
	ld bc,00f07h		;9fb6
	rra			;9fb9
	ccf			;9fba
	ld a,a			;9fbb
	inc bc			;9fbc
	rlca			;9fbd
	rlca			;9fbe
	rrca			;9fbf
	rra			;9fc0
	ccf			;9fc1
	ld a,a			;9fc2
	ld bc,00f03h		;9fc3
	rlca			;9fc6
	ld e,03ch		;9fc7
	ld a,(hl)		;9fc9
	rst 38h			;9fca
	rst 20h			;9fcb
	adc a,0deh		;9fcc
	rrca			;9fce
	rrca			;9fcf
	rst 38h			;9fd0
	ret po			;9fd1
	rlca			;9fd2
	rra			;9fd3
	ccf			;9fd4
	ld a,a			;9fd5
	inc bc			;9fd6
	rst 38h			;9fd7
	rst 38h			;9fd8
	inc bc			;9fd9
	ret po			;9fda
	ret m			;9fdb
	call m,0c1feh		;9fdc
	ret po			;9fdf
	ret m			;9fe0
	call m,0e6feh		;9fe1
	ld (hl),d		;9fe4
	ld a,e			;9fe5
	ret nz			;9fe6
	ret po			;9fe7
	inc b			;9fe8
	ccf			;9fe9
	ld (bc),a		;9fea
	rra			;9feb
	ld (bc),a		;9fec
	nop			;9fed
	ld (bc),a		;9fee
	rst 38h			;9fef
	add a,d			;9ff0
	ret p			;9ff1
	ret m			;9ff2
	dec b			;9ff3
	call m,0ff85h		;9ff4
	inc bc			;9ff7
	nop			;9ff8
	inc bc			;9ff9
	rlca			;9ffa
	inc b			;9ffb
	rrca			;9ffc
	add a,(hl)		;9ffd
	nop			;9ffe
	rrca			;9fff
