; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank24_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank24.bin

	org 08000h

	cp 004h			;8000
	ret nc			;8002
	jp (hl)			;8003
	ld b,0f5h		;8004
	cp 004h			;8006
	sub b			;8008
	nop			;8009
	nop			;800a
	nop			;800b
	jr nc,l800eh		;800c
l800eh:
	nop			;800e
	nop			;800f
	sub c			;8010
	ld de,00030h		;8011
	ei			;8014
	rlca			;8015
	ld sp,03111h		;8016
	ld de,01131h		;8019
	cp 010h			;801c
	sub c			;801e
	cp 004h			;801f
	ret nc			;8021
	jp (hl)			;8022
	ld b,0f5h		;8023
	cp 004h			;8025
	sub b			;8027
	nop			;8028
	nop			;8029
	nop			;802a
	jr nc,l802dh		;802b
l802dh:
	nop			;802d
	nop			;802e
	sub b			;802f
	nop			;8030
	cp 010h			;8031
	ld sp,004feh		;8033
	jr nc,l8038h		;8036
l8038h:
	ei			;8038
	inc bc			;8039
	sub b			;803a
	nop			;803b
	nop			;803c
	nop			;803d
	jr nc,l8040h		;803e
l8040h:
	nop			;8040
	nop			;8041
	sub b			;8042
	nop			;8043
	cp 010h			;8044
	sub c			;8046
	ld sp,0fef5h		;8047
	inc b			;804a
	sub b			;804b
	nop			;804c
	nop			;804d
	nop			;804e
	jr nc,l8051h		;804f
l8051h:
	nop			;8051
	nop			;8052
	sub b			;8053
	nop			;8054
	cp 010h			;8055
	ld sp,004feh		;8057
	jr nc,l805ch		;805a
l805ch:
	ei			;805c
	inc bc			;805d
	sub b			;805e
	nop			;805f
	nop			;8060
	nop			;8061
	jr nc,l8064h		;8062
l8064h:
	nop			;8064
	nop			;8065
	sub b			;8066
	nop			;8067
	ld sp,010feh		;8068
	sub c			;806b
	defb 0fdh,01fh,0a0h ;illegal sequence	;806c
	cp 001h			;806f
sub_8071h:
	jp (hl)			;8071
	ld b,0c1h		;8072
	xor 002h		;8074
	ex de,hl		;8076
	rla			;8077
	djnz l8064h		;8078
	ld a,(bc)		;807a
	call nc,03527h		;807b
	daa			;807e
	dec (hl)		;807f
	ld d,a			;8080
	ld h,l			;8081
	ld d,a			;8082
	ld h,l			;8083
	daa			;8084
	dec (hl)		;8085
l8086h:
	daa			;8086
	dec (hl)		;8087
	ld d,a			;8088
	ld h,l			;8089
	call nc,0fe5dh		;808a
	ld bc,0e9f5h		;808d
	ld b,0c1h		;8090
	jp p,0f110h		;8092
	ld b,h			;8095
	xor 010h		;8096
	ex de,hl		;8098
	add a,(hl)		;8099
	djnz l8086h		;809a
	dec bc			;809c
	defb 0edh ;next byte illegal after ed	;809d
	ld b,0d4h		;809e
l80a0h:
	xor l			;80a0
	adc a,l			;80a1
	jp (hl)			;80a2
	inc c			;80a3
	out (00ch),a		;80a4
	ei			;80a6
	ld (bc),a		;80a7
	defb 0fdh,08ch ;adc a,iyh	;80a8
	and b			;80aa
	cp 001h			;80ab
	jp (hl)			;80ad
	inc c			;80ae
	ret m			;80af
	add a,b			;80b0
	pop bc			;80b1
	call pe,005eah		;80b2
	in a,(001h)		;80b5
	pop af			;80b7
	ld b,h			;80b8
	push af			;80b9
	call nc,05d2dh		;80ba
	dec l			;80bd
	ld d,(hl)		;80be
	jp pe,0f807h		;80bf
	dec h			;80c2
	rst 10h			;80c3
	rrca			;80c4
	push bc			;80c5
l80c6h:
	push de			;80c6
	ld h,0d8h		;80c7
	cp 001h			;80c9
	push af			;80cb
	jp (hl)			;80cc
	ld b,0f8h		;80cd
	add a,c			;80cf
	jp nz,0eaech		;80d0
	ex af,af'		;80d3
	push de			;80d4
	xor l			;80d5
	adc a,l			;80d6
	jp (hl)			;80d7
	inc c			;80d8
	ret m			;80d9
	add a,b			;80da
	pop bc			;80db
	call nc,0fb0dh		;80dc
	ld (bc),a		;80df
	defb 0fdh,0c9h,0a0h ;illegal sequence	;80e0
	cp 001h			;80e3
	jp (hl)			;80e5
	inc c			;80e6
	xor 010h		;80e7
	ret m			;80e9
	add a,b			;80ea
	pop bc			;80eb
	call pe,005eah		;80ec
	in a,(001h)		;80ef
	pop af			;80f1
	ld b,h			;80f2
	push af			;80f3
	call nc,05d2dh		;80f4
	dec l			;80f7
	ld d,(hl)		;80f8
l80f9h:
	jp pe,0c007h		;80f9
	ret m			;80fc
	dec h			;80fd
	rst 10h			;80fe
	rrca			;80ff
	ret nz			;8100
l8101h:
	push de			;8101
	dec h			;8102
	ret c			;8103
	rst 28h			;8104
	cp 001h			;8105
	jp (hl)			;8107
	ld b,0f8h		;8108
	dec bc			;810a
l810bh:
	ex de,hl		;810b
	add hl,hl		;810c
	djnz l80f9h		;810d
	ex af,af'		;810f
	ld sp,hl		;8110
	jr nc,$-93		;8111
l8113h:
	jp pe,0eb07h		;8113
	add hl,hl		;8116
	nop			;8117
	ld sp,hl		;8118
	ld h,d			;8119
	and c			;811a
	ret m			;811b
	ccf			;811c
	ex de,hl		;811d
	add hl,hl		;811e
	jr nz,l810bh		;811f
sub_8121h:
	add hl,bc		;8121
	ld sp,hl		;8122
	jr nc,l80c6h		;8123
	jp pe,0eb08h		;8125
	add hl,hl		;8128
	djnz $-5		;8129
	ld h,d			;812b
	and c			;812c
	defb 0fdh,005h,0a1h ;illegal sequence	;812d
	push af			;8130
l8131h:
	out (0a0h),a		;8131
	add a,b			;8133
	jp nc,0d300h		;8134
	add a,b			;8137
	jp nc,0d320h		;8138
	add a,b			;813b
	jp nc,0d330h		;813c
l813fh:
	and b			;813f
	add a,b			;8140
	jp nc,0d300h		;8141
	add a,b			;8144
	jp nc,0d320h		;8145
	add a,b			;8148
	jp nc,0fb30h		;8149
l814ch:
	inc bc			;814c
	out (0a0h),a		;814d
	add a,b			;814f
	jp nc,0d300h		;8150
	add a,b			;8153
	jp nc,0d320h		;8154
	add a,b			;8157
	jp nc,02030h		;8158
l815bh:
	nop			;815b
	jr nc,l817eh		;815c
	ld (hl),b		;815e
	jr nc,$-126		;815f
	jp m,0d2f5h		;8161
	and b			;8164
	add a,b			;8165
	pop de			;8166
	nop			;8167
	jp nc,0d180h		;8168
	jr nz,l813fh		;816b
	add a,b			;816d
	pop de			;816e
	jr nc,$-44		;816f
	and b			;8171
	add a,b			;8172
	pop de			;8173
	nop			;8174
	jp nc,0d180h		;8175
	jr nz,l814ch		;8178
	add a,b			;817a
	pop de			;817b
	jr nc,$-3		;817c
l817eh:
	inc bc			;817e
	jp nc,l80a0h		;817f
	pop de			;8182
	nop			;8183
	jp nc,0d180h		;8184
	jr nz,l815bh		;8187
	add a,b			;8189
	pop de			;818a
	jr nc,l81adh		;818b
	nop			;818d
	jr nc,l81b0h		;818e
	ld (hl),b		;8190
l8191h:
	jr nc,l8113h		;8191
	jp m,001feh		;8193
	jp (hl)			;8196
	ld b,0f8h		;8197
	jr z,$-19		;8199
	ld (0ea70h),hl		;819b
	dec bc			;819e
	in a,(002h)		;819f
	jp p,0f110h		;81a1
	add hl,sp		;81a4
	push de			;81a5
	daa			;81a6
	dec (hl)		;81a7
	daa			;81a8
	dec (hl)		;81a9
	ld d,a			;81aa
	ld h,l			;81ab
	ld d,a			;81ac
l81adh:
	ld h,l			;81ad
	push de			;81ae
	daa			;81af
l81b0h:
	dec (hl)		;81b0
l81b1h:
	daa			;81b1
	dec (hl)		;81b2
	ld d,a			;81b3
	ld h,l			;81b4
	call pe,009eah		;81b5
	ret m			;81b8
	add a,b			;81b9
	jp nz,05dd5h		;81ba
	cp 001h			;81bd
	jp (hl)			;81bf
	ld b,0f8h		;81c0
	dec bc			;81c2
	ex de,hl		;81c3
	add hl,hl		;81c4
	djnz l81b1h		;81c5
	ex af,af'		;81c7
	in a,(001h)		;81c8
	ld sp,hl		;81ca
	ld d,(hl)		;81cb
	and d			;81cc
l81cdh:
	jp nc,0d170h		;81cd
	nop			;81d0
	jp pe,0eb07h		;81d1
l81d4h:
	add hl,hl		;81d4
	nop			;81d5
	ld sp,hl		;81d6
	halt			;81d7
	and d			;81d8
	pop de			;81d9
	ld (hl),b		;81da
	ret nc			;81db
	nop			;81dc
	ret m			;81dd
	ccf			;81de
	ex de,hl		;81df
	add hl,hl		;81e0
	jr nz,l81cdh		;81e1
	add hl,bc		;81e3
	ld sp,hl		;81e4
	ld d,(hl)		;81e5
	and d			;81e6
	jp nc,0d170h		;81e7
l81eah:
	nop			;81ea
	jp pe,0eb08h		;81eb
l81eeh:
	add hl,hl		;81ee
	djnz l81eah		;81ef
	halt			;81f1
	and d			;81f2
	pop de			;81f3
	ld (hl),b		;81f4
	ret nc			;81f5
l81f6h:
	nop			;81f6
	defb 0fdh,0bdh ;cp iyl	;81f7
	and c			;81f9
	cp 001h			;81fa
	jp (hl)			;81fc
	ld b,0eeh		;81fd
	ex af,af'		;81ff
	ret m			;8200
	jr z,l81eeh		;8201
	ld (0ea70h),hl		;8203
	dec bc			;8206
	in a,(002h)		;8207
	jp p,0f110h		;8209
	add hl,sp		;820c
	call nc,03527h		;820d
	daa			;8210
l8211h:
	dec (hl)		;8211
	ld d,a			;8212
	ld h,l			;8213
	ld d,a			;8214
	ld h,l			;8215
	daa			;8216
	dec (hl)		;8217
	daa			;8218
	dec (hl)		;8219
l821ah:
	ld d,a			;821a
	ld h,l			;821b
	call pe,005eah		;821c
	ret m			;821f
	jr z,l81f6h		;8220
	ld e,l			;8222
	cp 001h			;8223
	jp (hl)			;8225
	ld b,0f8h		;8226
	dec bc			;8228
	pop bc			;8229
	xor 001h		;822a
	ex de,hl		;822c
	rla			;822d
	djnz l821ah		;822e
l8230h:
	ld b,0f9h		;8230
	ld d,(hl)		;8232
	and d			;8233
	jp pe,0eb05h		;8234
	rla			;8237
l8238h:
	nop			;8238
	pop bc			;8239
	ld sp,hl		;823a
	halt			;823b
	and d			;823c
	ret m			;823d
	ccf			;823e
	pop bc			;823f
	xor 001h		;8240
	ex de,hl		;8242
	rla			;8243
	djnz l8230h		;8244
	ld b,0f9h		;8246
	ld d,(hl)		;8248
	and d			;8249
	jp pe,0eb05h		;824a
	rla			;824d
	djnz l8211h		;824e
	ld sp,hl		;8250
	halt			;8251
	and d			;8252
	inc iy			;8253
	and d			;8255
	push af			;8256
	jp nc,00020h		;8257
	jr nc,l825ch		;825a
l825ch:
	ld d,b			;825c
l825dh:
	nop			;825d
	ld (hl),b		;825e
	jr nz,l8261h		;825f
l8261h:
	jr nc,l8263h		;8261
l8263h:
	ld d,b			;8263
	nop			;8264
l8265h:
	ld (hl),b		;8265
	ei			;8266
	inc bc			;8267
	jp nc,00020h		;8268
	jr nc,l826dh		;826b
l826dh:
	ld d,b			;826d
	nop			;826e
	ld (hl),b		;826f
	ld d,b			;8270
	jr nc,l82e3h		;8271
	ld d,b			;8273
	and b			;8274
	jp m,0d1f5h		;8275
	jr nz,l827ah		;8278
l827ah:
	jr nc,l827ch		;827a
l827ch:
	ld d,b			;827c
	nop			;827d
	ld (hl),b		;827e
	jr nz,l8281h		;827f
l8281h:
	jr nc,l8283h		;8281
l8283h:
	ld d,b			;8283
	nop			;8284
l8285h:
	ld (hl),b		;8285
	ei			;8286
	inc bc			;8287
	pop de			;8288
	jr nz,l828bh		;8289
l828bh:
	jr nc,l828dh		;828b
l828dh:
	ld d,b			;828d
	nop			;828e
	ld (hl),b		;828f
	ld d,b			;8290
	jr nc,l8303h		;8291
	ld d,b			;8293
	and b			;8294
	jp m,004feh		;8295
	ret nc			;8298
	jp (hl)			;8299
	ex af,af'		;829a
	push af			;829b
	sub b			;829c
	nop			;829d
	jr nc,l82a0h		;829e
l82a0h:
	sub b			;82a0
	sub b			;82a1
	jr nc,l82a4h		;82a2
l82a4h:
	sub b			;82a4
l82a5h:
	nop			;82a5
	jr nc,l8238h		;82a6
	nop			;82a8
	sub b			;82a9
	jr nc,l82ach		;82aa
l82ach:
	sub b			;82ac
	nop			;82ad
	jr nc,l82b0h		;82ae
l82b0h:
	nop			;82b0
	sub b			;82b1
	jr nc,l82e4h		;82b2
	sub b			;82b4
l82b5h:
	jr nc,l82e7h		;82b5
	sub b			;82b7
	jr nc,$+50		;82b8
	jr nc,l82a5h		;82ba
	inc b			;82bc
	jr nc,l82efh		;82bd
	jp (hl)			;82bf
	ex af,af'		;82c0
	ei			;82c1
	ld (bc),a		;82c2
	cp 004h			;82c3
	ret nc			;82c5
	jp (hl)			;82c6
	ex af,af'		;82c7
	push af			;82c8
	sub b			;82c9
	nop			;82ca
	jr nc,l825dh		;82cb
	nop			;82cd
	sub b			;82ce
	jr nc,l82e1h		;82cf
	sub b			;82d1
	nop			;82d2
	jr nc,l8265h		;82d3
	nop			;82d5
	sub b			;82d6
	djnz l8309h		;82d7
	ei			;82d9
	inc bc			;82da
	sub b			;82db
	nop			;82dc
	jr nc,l82dfh		;82dd
l82dfh:
	sub b			;82df
	nop			;82e0
l82e1h:
	jr nc,l82e3h		;82e1
l82e3h:
	sub b			;82e3
l82e4h:
	sub b			;82e4
	djnz l8317h		;82e5
l82e7h:
	djnz l8319h		;82e7
	jr nc,l831bh		;82e9
l82ebh:
	cp 004h			;82eb
	ret nc			;82ed
	jp (hl)			;82ee
l82efh:
	ex af,af'		;82ef
	push af			;82f0
	sub b			;82f1
	nop			;82f2
	jr nc,l8285h		;82f3
	nop			;82f5
	sub b			;82f6
	jr nc,l8309h		;82f7
	sub b			;82f9
	nop			;82fa
	jr nc,l828dh		;82fb
	nop			;82fd
	sub b			;82fe
	djnz l8331h		;82ff
	ei			;8301
	inc bc			;8302
l8303h:
	sub b			;8303
	nop			;8304
	jr nc,l8307h		;8305
l8307h:
	sub b			;8307
	nop			;8308
l8309h:
	jr nc,l830bh		;8309
l830bh:
	sub b			;830b
	sub b			;830c
	djnz l833fh		;830d
	djnz $+50		;830f
	jr nc,l8343h		;8311
	cp 004h			;8313
	ret nc			;8315
	jp (hl)			;8316
l8317h:
	ex af,af'		;8317
	push af			;8318
l8319h:
	sub b			;8319
	nop			;831a
l831bh:
	jr nc,l831dh		;831b
l831dh:
	sub b			;831d
	sub b			;831e
	jr nc,l8321h		;831f
l8321h:
	sub b			;8321
l8322h:
	nop			;8322
	jr nc,l82b5h		;8323
	nop			;8325
	sub b			;8326
	jr nc,l8329h		;8327
l8329h:
	sub b			;8329
	nop			;832a
	jr nc,l832dh		;832b
l832dh:
	nop			;832d
	sub b			;832e
	jr nc,l8361h		;832f
l8331h:
	sub b			;8331
	jr nc,$+50		;8332
	sub b			;8334
	jr nc,l8367h		;8335
	jr nc,l8322h		;8337
	inc b			;8339
	jr nc,l836ch		;833a
	jp (hl)			;833c
	ex af,af'		;833d
	ei			;833e
l833fh:
	ld (bc),a		;833f
	sub (iy-05eh)		;8340
l8343h:
	cp 001h			;8343
	ret m			;8345
	inc de			;8346
	ex de,hl		;8347
	add a,(hl)		;8348
	ld b,c			;8349
	jp (hl)			;834a
	ex af,af'		;834b
	jp pe,0ed08h		;834c
	dec b			;834f
	in a,(001h)		;8350
	jp p,0f116h		;8352
	ld d,(hl)		;8355
	jp nc,0270fh		;8356
	defb 0edh ;next byte illegal after ed	;8359
	ex af,af'		;835a
	jp (hl)			;835b
	inc b			;835c
	out (0a5h),a		;835d
	jp (hl)			;835f
	ex af,af'		;8360
l8361h:
	ld d,d			;8361
	and c			;8362
	jp nc,0ed07h		;8363
	dec b			;8366
l8367h:
	jp nc,004e9h		;8367
	jr nz,l83aah		;836a
l836ch:
	jp (hl)			;836c
	ex af,af'		;836d
	jp nc,0ea5bh		;836e
	ld b,0f8h		;8371
	ccf			;8373
	pop bc			;8374
	pop de			;8375
	jr nz,$+50		;8376
	cp 001h			;8378
	ex de,hl		;837a
	add hl,bc		;837b
	jr nc,l8367h		;837c
	ex af,af'		;837e
	jp pe,0f50ch		;837f
	push de			;8382
	add a,b			;8383
	add a,b			;8384
	call nc,0d580h		;8385
	add a,b			;8388
	add a,b			;8389
	call nc,0d580h		;838a
	add a,b			;838d
	call nc,0fb80h		;838e
	ld (bc),a		;8391
	push af			;8392
	push de			;8393
	ld (hl),b		;8394
	ld (hl),b		;8395
	call nc,0d570h		;8396
	ld (hl),b		;8399
	ld (hl),b		;839a
	call nc,0d570h		;839b
	ld (hl),b		;839e
	call nc,0fb70h		;839f
	ld (bc),a		;83a2
	push af			;83a3
	push de			;83a4
	ld d,b			;83a5
	ld d,b			;83a6
	call nc,0d550h		;83a7
l83aah:
	ld d,b			;83aa
	ld d,b			;83ab
	call nc,0d550h		;83ac
	ld d,b			;83af
	call nc,0fb50h		;83b0
	ld (bc),a		;83b3
	push de			;83b4
	and b			;83b5
	and b			;83b6
	call nc,0d5a0h		;83b7
	and b			;83ba
	and b			;83bb
	call nc,0d5a0h		;83bc
	and b			;83bf
l83c0h:
	call nc,0d5a0h		;83c0
	ld (hl),b		;83c3
	call nc,0d570h		;83c4
	ld (hl),b		;83c7
	ld (hl),b		;83c8
	call nc,0d570h		;83c9
	ld (hl),b		;83cc
l83cdh:
	call nc,0d570h		;83cd
	ld (hl),b		;83d0
	cp 001h			;83d1
	ex de,hl		;83d3
	add hl,bc		;83d4
	jr nc,l83c0h		;83d5
	ex af,af'		;83d7
	jp pe,0f50ch		;83d8
	push de			;83db
	add a,b			;83dc
	add a,b			;83dd
	call nc,0d580h		;83de
	add a,b			;83e1
	add a,b			;83e2
	call nc,0d580h		;83e3
	add a,b			;83e6
	call nc,0fb80h		;83e7
	ld (bc),a		;83ea
	push af			;83eb
	push de			;83ec
	jr nc,$+50		;83ed
	call nc,0d530h		;83ef
	jr nc,$+50		;83f2
	call nc,0d530h		;83f4
	jr nc,l83cdh		;83f7
	jr nc,$-3		;83f9
	ld (bc),a		;83fb
	push af			;83fc
	push de			;83fd
	nop			;83fe
	nop			;83ff
	call nc,0d500h		;8400
	nop			;8403
	nop			;8404
	call nc,0d500h		;8405
	nop			;8408
	call nc,0fb00h		;8409
	ld (bc),a		;840c
	call nc,02020h		;840d
	out (020h),a		;8410
	call nc,02020h		;8412
	out (020h),a		;8415
	call nc,0d320h		;8417
	jr nz,$-41		;841a
	ld (hl),b		;841c
	call nc,0d570h		;841d
	ld (hl),b		;8420
	ld (hl),b		;8421
	call nc,0d570h		;8422
	ld (hl),b		;8425
	call nc,0d570h		;8426
	ld (hl),b		;8429
	cp 001h			;842a
	ex de,hl		;842c
	add hl,bc		;842d
	jr nc,$-21		;842e
	ex af,af'		;8430
l8431h:
	push af			;8431
	jp pe,0d50ch		;8432
	ld d,b			;8435
	call nc,0d350h		;8436
	ld d,b			;8439
	push de			;843a
l843bh:
	ld d,b			;843b
	call nc,0d350h		;843c
	ld d,b			;843f
	push de			;8440
	ld d,b			;8441
	call nc,0fb50h		;8442
	ld (bc),a		;8445
	push af			;8446
	push de			;8447
	nop			;8448
	call nc,0d300h		;8449
l844ch:
	nop			;844c
	push de			;844d
	nop			;844e
	call nc,0d300h		;844f
	nop			;8452
	push de			;8453
	nop			;8454
	call nc,0fb00h		;8455
	ld (bc),a		;8458
	push af			;8459
	push de			;845a
	djnz l8431h		;845b
	djnz $+18		;845d
	push de			;845f
	djnz $+18		;8460
	call nc,0d510h		;8462
	djnz l843bh		;8465
	djnz $-3		;8467
	ld (bc),a		;8469
	push af			;846a
	push de			;846b
	jr nc,l849eh		;846c
l846eh:
	call nc,0d530h		;846e
	jr nc,l84a3h		;8471
	call nc,0d530h		;8473
	jr nc,l844ch		;8476
	jr nc,$-3		;8478
	ld (bc),a		;847a
	defb 0fdh,043h,0a3h ;illegal sequence	;847b
	cp 001h			;847e
	ret m			;8480
l8481h:
	jr z,l846eh		;8481
	ld b,d			;8483
	ld (hl),b		;8484
	jp (hl)			;8485
	ex af,af'		;8486
	push af			;8487
	jp pe,0d509h		;8488
	ld d,b			;848b
	call nc,0f850h		;848c
l848fh:
	dec c			;848f
	jp pe,0d30dh		;8490
	ld d,b			;8493
	ret m			;8494
	jr z,l8481h		;8495
	add hl,bc		;8497
	push de			;8498
	ld d,b			;8499
	call nc,0f850h		;849a
	dec c			;849d
l849eh:
	jp pe,0d30dh		;849e
l84a1h:
	ld d,b			;84a1
	ret m			;84a2
l84a3h:
	jr z,l848fh		;84a3
	add hl,bc		;84a5
	push de			;84a6
	ld d,b			;84a7
	call nc,0d550h		;84a8
	ld d,b			;84ab
	call nc,0f850h		;84ac
l84afh:
	dec c			;84af
	jp pe,0d30dh		;84b0
	ld d,b			;84b3
	ret m			;84b4
	jr z,l84a1h		;84b5
	add hl,bc		;84b7
	push de			;84b8
	ld d,b			;84b9
	call nc,0f850h		;84ba
	dec c			;84bd
	jp pe,0d30dh		;84be
	ld d,b			;84c1
	ret m			;84c2
	jr z,l84afh		;84c3
	add hl,bc		;84c5
	push de			;84c6
	ld d,b			;84c7
	call nc,0fb00h		;84c8
	inc bc			;84cb
	push de			;84cc
	ld d,b			;84cd
	call nc,05050h		;84ce
	push de			;84d1
	ld d,b			;84d2
	ld d,b			;84d3
	call nc,0d550h		;84d4
	ld d,b			;84d7
	call nc,0d550h		;84d8
	ld (hl),b		;84db
	ld (hl),b		;84dc
	call nc,0d570h		;84dd
	ld (hl),b		;84e0
	ld (hl),b		;84e1
	call nc,0d570h		;84e2
	ld (hl),b		;84e5
	call nc,0fe70h		;84e6
	ld bc,028f8h		;84e9
	ex de,hl		;84ec
	add hl,bc		;84ed
	jr nz,$-21		;84ee
	ex af,af'		;84f0
	jp pe,0f509h		;84f1
	push de			;84f4
	add a,b			;84f5
	add a,b			;84f6
	call nc,0d580h		;84f7
	add a,b			;84fa
	add a,b			;84fb
	call nc,0d580h		;84fc
	add a,b			;84ff
	call nc,0fb80h		;8500
	ld (bc),a		;8503
	push af			;8504
	push de			;8505
	ld (hl),b		;8506
	ld (hl),b		;8507
	call nc,0d570h		;8508
	ld (hl),b		;850b
	ld (hl),b		;850c
	call nc,0d570h		;850d
	ld (hl),b		;8510
	call nc,0fb70h		;8511
	ld (bc),a		;8514
	push af			;8515
	push de			;8516
	ld d,b			;8517
	ld d,b			;8518
	call nc,0d550h		;8519
	ld d,b			;851c
	ld d,b			;851d
	call nc,0d550h		;851e
	ld d,b			;8521
	call nc,0fb50h		;8522
	ld (bc),a		;8525
	push de			;8526
	and b			;8527
	and b			;8528
	call nc,0d5a0h		;8529
	and b			;852c
	and b			;852d
	call nc,0d5a0h		;852e
	and b			;8531
	call nc,0d5a0h		;8532
	ld (hl),b		;8535
	call nc,0d570h		;8536
	ld (hl),b		;8539
	ld (hl),b		;853a
	call nc,0d570h		;853b
	ld (hl),b		;853e
	call nc,0d570h		;853f
	ld (hl),b		;8542
	cp 001h			;8543
	ret m			;8545
	jr z,$-19		;8546
	ld b,d			;8548
	ld (hl),b		;8549
	jp (hl)			;854a
	ex af,af'		;854b
	jp pe,0f509h		;854c
	push de			;854f
	add a,b			;8550
	add a,b			;8551
	call nc,0d580h		;8552
	add a,b			;8555
	add a,b			;8556
	call nc,0d580h		;8557
	add a,b			;855a
	call nc,0fb80h		;855b
	ld (bc),a		;855e
	push af			;855f
	push de			;8560
	jr nc,$+50		;8561
	call nc,0d530h		;8563
	jr nc,$+50		;8566
	call nc,0d530h		;8568
	jr nc,$-42		;856b
	jr nc,$-3		;856d
	ld (bc),a		;856f
	push af			;8570
	push de			;8571
	nop			;8572
	nop			;8573
	call nc,0d500h		;8574
	nop			;8577
	nop			;8578
	call nc,0d500h		;8579
	nop			;857c
	call nc,0fb00h		;857d
	ld (bc),a		;8580
	call nc,02020h		;8581
	out (020h),a		;8584
	call nc,02020h		;8586
	out (020h),a		;8589
	call nc,0d320h		;858b
l858eh:
	jr nz,$-41		;858e
	ld (hl),b		;8590
	call nc,0d570h		;8591
	ld (hl),b		;8594
	ld (hl),b		;8595
	call nc,0d570h		;8596
	ld (hl),b		;8599
	call nc,0d570h		;859a
	ld (hl),b		;859d
	cp 001h			;859e
	ret m			;85a0
	jr z,l858eh		;85a1
	ld b,d			;85a3
	ld (hl),b		;85a4
	jp (hl)			;85a5
	ex af,af'		;85a6
l85a7h:
	push af			;85a7
	jp pe,0d509h		;85a8
	ld d,b			;85ab
	call nc,0d350h		;85ac
	ld d,b			;85af
	push de			;85b0
l85b1h:
	ld d,b			;85b1
	call nc,0d350h		;85b2
	ld d,b			;85b5
	push de			;85b6
	ld d,b			;85b7
	call nc,0fb50h		;85b8
	ld (bc),a		;85bb
	push af			;85bc
	push de			;85bd
	nop			;85be
	call nc,0d300h		;85bf
l85c2h:
	nop			;85c2
	push de			;85c3
	nop			;85c4
	call nc,0d300h		;85c5
	nop			;85c8
	push de			;85c9
	nop			;85ca
	call nc,0fb00h		;85cb
	ld (bc),a		;85ce
	push af			;85cf
	push de			;85d0
	djnz l85a7h		;85d1
	djnz $+18		;85d3
	push de			;85d5
	djnz $+18		;85d6
	call nc,0d510h		;85d8
	djnz l85b1h		;85db
	djnz $-3		;85dd
	ld (bc),a		;85df
	push af			;85e0
	push de			;85e1
	jr nc,l8614h		;85e2
	call nc,0d530h		;85e4
	jr nc,l8619h		;85e7
	call nc,0d530h		;85e9
	jr nc,l85c2h		;85ec
	jr nc,$-3		;85ee
	ld (bc),a		;85f0
	ld a,(iy-05ch)		;85f1
	cp 001h			;85f4
	ret m			;85f6
	dec e			;85f7
	jp (hl)			;85f8
	inc b			;85f9
	jp pe,0eb06h		;85fa
	add hl,bc		;85fd
l85feh:
	djnz l85feh		;85fe
	ld bc,004e9h		;8600
	ret nc			;8603
	ld d,b			;8604
	jr nc,$+34		;8605
	pop de			;8607
	and b			;8608
	ld d,b			;8609
l860ah:
	jr nc,$+34		;860a
	jp nc,050a0h		;860c
	jr nc,l8631h		;860f
	out (0a0h),a		;8611
	ld d,b			;8613
l8614h:
	jr nc,l8636h		;8614
	call nc,0d3a0h		;8616
l8619h:
	jr nz,l864bh		;8619
	ld d,b			;861b
	and b			;861c
	jr nc,l866fh		;861d
	and b			;861f
	jp nc,0d320h		;8620
	ld d,b			;8623
	and b			;8624
	jp nc,03020h		;8625
	out (0a0h),a		;8628
	jp nc,03020h		;862a
	ld d,b			;862d
	jr nz,$+50		;862e
	ld d,b			;8630
l8631h:
	and b			;8631
	jr nc,$+82		;8632
	and b			;8634
	pop de			;8635
l8636h:
	jr nz,l860ah		;8636
	ld d,b			;8638
	and b			;8639
	pop de			;863a
	jr nz,$+50		;863b
	jp nc,0d1a0h		;863d
	jr nz,l8672h		;8640
	ld d,b			;8642
	jr nz,$+50		;8643
	ld d,b			;8645
	and b			;8646
	jr nc,l8699h		;8647
	and b			;8649
	ret nc			;864a
l864bh:
	jr nz,$-45		;864b
	ld d,b			;864d
	and b			;864e
	ret nc			;864f
	jr nz,$+50		;8650
	pop de			;8652
	and b			;8653
	ret nc			;8654
	jr nz,$+50		;8655
	ld d,b			;8657
	jr nc,$+34		;8658
	pop de			;865a
	and b			;865b
	ld d,b			;865c
	jr nc,$+34		;865d
	jp nc,050a0h		;865f
	jr nc,$+34		;8662
	out (0a0h),a		;8664
	ld d,b			;8666
	jr nc,l8689h		;8667
	call nc,0d3a0h		;8669
	jr nz,l869eh		;866c
	ld d,b			;866e
l866fh:
	and b			;866f
	jr nc,$+82		;8670
l8672h:
	and b			;8672
	jp nc,0d320h		;8673
	ld d,b			;8676
	and b			;8677
l8678h:
	jp nc,03020h		;8678
	out (0a0h),a		;867b
	jp nc,03020h		;867d
	ld d,b			;8680
	jr nz,$-20		;8681
	ld b,0f5h		;8683
	jp nc,08050h		;8685
	pop de			;8688
l8689h:
	nop			;8689
	jr nc,$-44		;868a
	add a,b			;868c
	pop de			;868d
	nop			;868e
	jr nc,$+82		;868f
	nop			;8691
	jr nc,l86e4h		;8692
	add a,b			;8694
	jr nc,l86e7h		;8695
	add a,b			;8697
	ret nc			;8698
l8699h:
	nop			;8699
	pop de			;869a
	or b			;869b
	ld (hl),b		;869c
	ld d,b			;869d
l869eh:
	jr nz,l8672h		;869e
	or b			;86a0
	ld (hl),b		;86a1
	ld d,b			;86a2
	jr nz,l8678h		;86a3
	or b			;86a5
	jp nc,05020h		;86a6
	ld (hl),b		;86a9
	or b			;86aa
	pop de			;86ab
	jr nz,$+82		;86ac
l86aeh:
	ld (hl),b		;86ae
	cp 001h			;86af
	ex de,hl		;86b1
	ld d,040h		;86b2
	jp (hl)			;86b4
	ex af,af'		;86b5
	ret m			;86b6
	ld (bc),a		;86b7
	jp pe,0f20ah		;86b8
	djnz l86aeh		;86bb
	ld b,a			;86bd
	out (002h),a		;86be
	ld (0d281h),a		;86c0
	rlca			;86c3
	ld (0a2d3h),a		;86c4
	add a,c			;86c7
	ld (hl),a		;86c8
	out (002h),a		;86c9
	ld (0d281h),a		;86cb
	rlca			;86ce
	ret m			;86cf
	dec d			;86d0
	defb 0ddh,027h,042h ;illegal sequence	;86d1
	in a,(002h)		;86d4
	jp pe,0d20ch		;86d6
	add a,d			;86d9
	and d			;86da
	pop de			;86db
	ld bc,0fe27h		;86dc
l86dfh:
	ld bc,087ebh		;86df
	ld h,d			;86e2
	jp (hl)			;86e3
l86e4h:
	ex af,af'		;86e4
	ret m			;86e5
	ld (bc),a		;86e6
l86e7h:
	jp pe,0ed08h		;86e7
	ld b,0f2h		;86ea
	djnz l86dfh		;86ec
	ld d,e			;86ee
	out (002h),a		;86ef
	ld (0d281h),a		;86f1
	rlca			;86f4
	ld (0a2d3h),a		;86f5
	add a,c			;86f8
	ld (hl),a		;86f9
	out (002h),a		;86fa
	ld (0d271h),a		;86fc
	rlca			;86ff
	ret m			;8700
	dec d			;8701
	out (072h),a		;8702
	or h			;8704
	jp nc,0ea22h		;8705
	dec bc			;8708
	in a,(002h)		;8709
	defb 0ddh,007h,031h ;illegal sequence	;870b
	ld d,h			;870e
	cp 001h			;870f
	ret m			;8711
	daa			;8712
	ex de,hl		;8713
	add a,h			;8714
	ld h,b			;8715
	jp (hl)			;8716
	ex af,af'		;8717
	jp pe,0ed07h		;8718
	ld b,0dbh		;871b
	ld bc,052d3h		;871d
	add a,d			;8720
	jp nc,03201h		;8721
	jp nc,05182h		;8724
	out (002h),a		;8727
	ld (0d271h),a		;8729
	rlca			;872c
	out (012h),a		;872d
	ld (07251h),a		;872f
	add a,d			;8732
	and c			;8733
	jp nc,0ea02h		;8734
	rlca			;8737
	sub 008h		;8738
	ld bc,03112h		;873a
	ld d,d			;873d
	ld (hl),d		;873e
	add a,c			;873f
	ret c			;8740
	call c,0f4fdh		;8741
	and l			;8744
	cp 001h			;8745
	ret m			;8747
	dec bc			;8748
	ex de,hl		;8749
	inc h			;874a
	ld d,b			;874b
	jp (hl)			;874c
	ex af,af'		;874d
	jp pe,0db0bh		;874e
	ld (bc),a		;8751
	jp p,0f116h		;8752
	ld d,(hl)		;8755
	jp nc,010d6h		;8756
	ld (bc),a		;8759
	scf			;875a
	ret c			;875b
	jr nc,$-43		;875c
	and c			;875e
	jp nc,l8131h		;875f
	and b			;8762
	ld d,a			;8763
	jp (hl)			;8764
	inc b			;8765
	djnz l878ch		;8766
	jp (hl)			;8768
	ex af,af'		;8769
	ld (051d2h),a		;876a
	add a,a			;876d
	jp nc,004e9h		;876e
	ld b,b			;8771
	ld d,h			;8772
	jp (hl)			;8773
	ex af,af'		;8774
	pop af			;8775
	ld d,d			;8776
	and d			;8777
	pop de			;8778
	ld sp,0d257h		;8779
	inc hl			;877c
	ret m			;877d
	dec d			;877e
	defb 0ddh,045h ;ld b,ixl	;877f
	ld b,d			;8781
	jp pe,0d10eh		;8782
	jr nz,$+50		;8785
	ld d,b			;8787
l8788h:
	ld (hl),b		;8788
	cp 001h			;8789
	ex de,hl		;878b
l878ch:
	add a,a			;878c
	ld h,b			;878d
	jp (hl)			;878e
	ex af,af'		;878f
	ret m			;8790
	dec d			;8791
	jp pe,0f20dh		;8792
	djnz l8788h		;8795
l8797h:
	ld d,e			;8797
	defb 0edh ;next byte illegal after ed	;8798
	inc b			;8799
	pop de			;879a
	add a,c			;879b
	call pe,002eah		;879c
	add a,b			;879f
	jp pe,0eb0dh		;87a0
	add a,a			;87a3
	ld h,b			;87a4
	defb 0edh ;next byte illegal after ed	;87a5
	inc b			;87a6
	ld sp,0eaech		;87a7
	ld (bc),a		;87aa
	jr nc,l8797h		;87ab
	dec c			;87ad
	ex de,hl		;87ae
	add a,a			;87af
	ld h,b			;87b0
	defb 0edh ;next byte illegal after ed	;87b1
	inc b			;87b2
	nop			;87b3
	ret nz			;87b4
	jp nc,0eda5h		;87b5
	ld a,(bc)		;87b8
	ld d,b			;87b9
	ld (hl),b		;87ba
	pop de			;87bb
	dec sp			;87bc
	jp nc,03020h		;87bd
	ld d,b			;87c0
	ld (hl),b		;87c1
	add a,c			;87c2
	ret nz			;87c3
	ld (0c000h),a		;87c4
	and a			;87c7
	jp pe,0d10ch		;87c8
	ld d,d			;87cb
	ld (hl),d		;87cc
	add a,c			;87cd
	jp pe,0a30bh		;87ce
	jp pe,0ed0dh		;87d1
	ld a,(bc)		;87d4
	jp (hl)			;87d5
	ex af,af'		;87d6
	pop de			;87d7
	jr nz,l880ah		;87d8
	ld d,b			;87da
	ld (hl),b		;87db
	cp 001h			;87dc
	ex de,hl		;87de
	add a,a			;87df
	ld h,b			;87e0
	jp (hl)			;87e1
	ex af,af'		;87e2
	ret m			;87e3
	dec d			;87e4
	jp pe,0ed0eh		;87e5
l87e8h:
	inc bc			;87e8
	jp p,0f110h		;87e9
	ld d,e			;87ec
	pop de			;87ed
	add a,c			;87ee
	call pe,002eah		;87ef
	add a,b			;87f2
	jp pe,0eb0dh		;87f3
	add a,a			;87f6
	ld h,b			;87f7
	ld sp,0eaech		;87f8
	ld (bc),a		;87fb
	jr nc,l87e8h		;87fc
l87feh:
	dec c			;87fe
	ex de,hl		;87ff
	add a,a			;8800
	ld h,b			;8801
	nop			;8802
	ret nz			;8803
	jp nc,0eda5h		;8804
	ld b,050h		;8807
	ld (hl),b		;8809
l880ah:
	defb 0edh ;next byte illegal after ed	;880a
	inc bc			;880b
	pop de			;880c
	dec sp			;880d
	defb 0edh ;next byte illegal after ed	;880e
	dec b			;880f
	jp nc,02000h		;8810
	jr nc,l8865h		;8813
	defb 0edh ;next byte illegal after ed	;8815
	inc bc			;8816
	ld (hl),c		;8817
l8818h:
	ret nz			;8818
	ld (0c000h),a		;8819
	and a			;881c
	pop de			;881d
	ld hl,031c0h		;881e
	ret nz			;8821
	ld d,c			;8822
	ex de,hl		;8823
	add a,a			;8824
	ld (hl),b		;8825
	ld (hl),l		;8826
	call pe,003eah		;8827
	ld (hl),c		;882a
	cp 001h			;882b
	ex de,hl		;882d
	add a,a			;882e
	ld h,d			;882f
	jp (hl)			;8830
	ex af,af'		;8831
	jp pe,0ed0bh		;8832
	ex af,af'		;8835
	ret m			;8836
	ld a,(bc)		;8837
	pop de			;8838
	nop			;8839
	jr nz,$+50		;883a
	jr nz,l87feh		;883c
	ld bc,0c080h		;883e
	ld (hl),b		;8841
	ret nz			;8842
	ld d,c			;8843
	jr nc,l8818h		;8844
	ld (hl),b		;8846
	add a,b			;8847
	pop de			;8848
	scf			;8849
	jp (hl)			;884a
	inc b			;884b
	jr nz,$+50		;884c
	jp (hl)			;884e
	ex af,af'		;884f
	jp nc,08070h		;8850
	pop de			;8853
	jr nc,l88a6h		;8854
	ld (hl),b		;8856
	add a,b			;8857
	ret nc			;8858
	jr nc,$-45		;8859
l885bh:
	ld (hl),c		;885b
	ret nz			;885c
	add a,c			;885d
	ret nz			;885e
	ret nc			;885f
	ld sp,071d1h		;8860
	ret nz			;8863
	add a,c			;8864
l8865h:
	ret nz			;8865
	ret nc			;8866
	nop			;8867
	jr nc,l88e1h		;8868
	ret m			;886a
	ld hl,(008eah)		;886b
	ex de,hl		;886e
	add hl,bc		;886f
	djnz l885bh		;8870
	inc b			;8872
	ret nc			;8873
	ld (hl),c		;8874
	ld (hl),c		;8875
	pop de			;8876
	and c			;8877
	ld sp,071d2h		;8878
	out (0a1h),a		;887b
	ld sp,l81d4h		;887d
	defb 0fdh,045h ;ld b,iyl	;8880
	and a			;8882
	cp 001h			;8883
	ret m			;8885
	dec bc			;8886
	ex de,hl		;8887
	inc h			;8888
	ld d,b			;8889
	jp (hl)			;888a
	ex af,af'		;888b
	jp pe,0db0bh		;888c
	ld (bc),a		;888f
	jp p,0f116h		;8890
	ld d,(hl)		;8893
	jp nc,010d6h		;8894
	ld bc,0d887h		;8897
	add a,b			;889a
	ld sp,0d181h		;889b
	ld bc,0d220h		;889e
	and a			;88a1
	jp (hl)			;88a2
	inc b			;88a3
	ld b,b			;88a4
	ld d,h			;88a5
l88a6h:
	jp (hl)			;88a6
	ex af,af'		;88a7
	and d			;88a8
	pop de			;88a9
	ld hl,0d237h		;88aa
	jp (hl)			;88ad
	inc b			;88ae
	sub b			;88af
	and h			;88b0
	jp (hl)			;88b1
	ex af,af'		;88b2
	pop af			;88b3
	ld b,e			;88b4
	pop de			;88b5
	ld (0eb71h),a		;88b6
	daa			;88b9
	ld d,b			;88ba
	xor c			;88bb
	call pe,001eah		;88bc
	and c			;88bf
	ret m			;88c0
	dec d			;88c1
	in a,(001h)		;88c2
	jp nc,001eeh		;88c4
	ex de,hl		;88c7
	add a,a			;88c8
	ld h,b			;88c9
	defb 0edh ;next byte illegal after ed	;88ca
	ex af,af'		;88cb
	jp pe,0a007h		;88cc
	pop de			;88cf
	nop			;88d0
	jr nz,l8903h		;88d1
	cp 001h			;88d3
	ex de,hl		;88d5
	add a,e			;88d6
l88d7h:
	ld h,b			;88d7
	defb 0edh ;next byte illegal after ed	;88d8
	inc b			;88d9
	jp (hl)			;88da
	ex af,af'		;88db
	ret m			;88dc
	dec d			;88dd
	jp pe,0f208h		;88de
l88e1h:
	djnz $-13		;88e1
	ld d,e			;88e3
	pop de			;88e4
	ld (0d202h),a		;88e5
	add a,e			;88e8
	ex de,hl		;88e9
	rlca			;88ea
	jr nz,l88d7h		;88eb
	rlca			;88ed
	and l			;88ee
	ld d,b			;88ef
	ld (hl),b		;88f0
	jp pe,0d107h		;88f1
	dec sp			;88f4
	jp pe,0d206h		;88f5
	jr nz,l892ah		;88f8
	ld d,b			;88fa
	ld (hl),b		;88fb
	add a,d			;88fc
	ld (0a701h),a		;88fd
	pop de			;8900
	ld d,d			;8901
	ld (hl),d		;8902
l8903h:
	add a,c			;8903
	jp pe,0a306h		;8904
	jp pe,0e907h		;8907
	ex af,af'		;890a
	pop de			;890b
	jr nz,l893eh		;890c
	cp 001h			;890e
	ex de,hl		;8910
	add a,e			;8911
l8912h:
	ld h,b			;8912
	defb 0edh ;next byte illegal after ed	;8913
	inc b			;8914
	jp (hl)			;8915
	ex af,af'		;8916
	ret m			;8917
	dec d			;8918
	jp pe,0f208h		;8919
	djnz $-13		;891c
	ld d,e			;891e
	pop de			;891f
	ld (0d202h),a		;8920
	add a,c			;8923
	ex de,hl		;8924
	rlca			;8925
	jr nz,l8912h		;8926
	rlca			;8928
	and a			;8929
l892ah:
	ld d,b			;892a
l892bh:
	ld (hl),b		;892b
	pop de			;892c
	dec sp			;892d
	jp nc,02000h		;892e
l8931h:
	jr nc,l8983h		;8931
	ld (hl),d		;8933
	ld (0a701h),a		;8934
	pop de			;8937
	ld hl,031c0h		;8938
	ret nz			;893b
	ld d,c			;893c
	ld (hl),e		;893d
l893eh:
	call pe,002eah		;893e
	ld (hl),c		;8941
	cp 001h			;8942
	ex de,hl		;8944
	rlca			;8945
	jr nz,l8931h		;8946
	ex af,af'		;8948
	jp pe,0c106h		;8949
	ret m			;894c
	ld a,(bc)		;894d
	pop de			;894e
	nop			;894f
	jr nz,l8982h		;8950
	ld hl,l8101h		;8952
	ld (hl),c		;8955
	ld d,c			;8956
	jr nc,l892bh		;8957
	ld (hl),b		;8959
	add a,b			;895a
	pop de			;895b
	scf			;895c
	jp (hl)			;895d
	inc b			;895e
	jr nz,l8991h		;895f
	jp (hl)			;8961
	ex af,af'		;8962
	jp nc,08070h		;8963
	pop de			;8966
	jr nc,l89b9h		;8967
	ld (hl),b		;8969
l896ah:
	add a,b			;896a
	ret nc			;896b
	jr nc,$-45		;896c
	ld (hl),d		;896e
	add a,d			;896f
	ret nc			;8970
	ld sp,072d1h		;8971
	add a,d			;8974
	ret nc			;8975
	nop			;8976
	jr nc,l89eeh		;8977
	ret m			;8979
	ld hl,(008eah)		;897a
	ex de,hl		;897d
	add hl,bc		;897e
	djnz l896ah		;897f
	inc b			;8981
l8982h:
	ret nc			;8982
l8983h:
	ret nz			;8983
	add a,c			;8984
	ld sp,071d1h		;8985
	jp nc,031a1h		;8988
	out (071h),a		;898b
	call nc,070a1h		;898d
	rst 28h			;8990
l8991h:
	defb 0fdh,083h,0a8h ;illegal sequence	;8991
	ld sp,hl		;8994
	add hl,de		;8995
	xor d			;8996
	ld sp,hl		;8997
	add hl,de		;8998
	xor d			;8999
	cp 004h			;899a
	jp (hl)			;899c
	inc b			;899d
	push af			;899e
	ld sp,l9101h		;899f
	ld bc,00191h		;89a2
	ld sp,l9101h		;89a5
	nop			;89a8
	nop			;89a9
	ld de,00000h		;89aa
	sub c			;89ad
	sub c			;89ae
	ld sp,l9101h		;89af
	ld bc,00191h		;89b2
	ld sp,l9101h		;89b5
	nop			;89b8
l89b9h:
	nop			;89b9
	ld de,0fb91h		;89ba
	ld (bc),a		;89bd
	cp 004h			;89be
	jp (hl)			;89c0
	inc b			;89c1
	ld sp,l9101h		;89c2
	ld bc,00191h		;89c5
	ld sp,l9101h		;89c8
	nop			;89cb
	nop			;89cc
	ld de,00000h		;89cd
	sub c			;89d0
	sub c			;89d1
	ld sp,l9101h		;89d2
	ld bc,00191h		;89d5
	ld sp,l9101h		;89d8
	nop			;89db
	nop			;89dc
	ld de,03191h		;89dd
	ld bc,00191h		;89e0
	sub c			;89e3
	ld bc,00131h		;89e4
	sub c			;89e7
	nop			;89e8
	nop			;89e9
	ld de,00000h		;89ea
	sub c			;89ed
l89eeh:
	sub c			;89ee
	ld sp,03111h		;89ef
	ld de,01131h		;89f2
	ld sp,03131h		;89f5
	ld sp,010feh		;89f8
	sub c			;89fb
	sub c			;89fc
	push af			;89fd
	ld sp,hl		;89fe
	ld a,(0fbaah)		;89ff
	inc b			;8a02
	push af			;8a03
	ld sp,hl		;8a04
	ld a,(0fbaah)		;8a05
	inc bc			;8a08
	ld sp,03111h		;8a09
	ld de,01131h		;8a0c
	ld sp,03111h		;8a0f
	ld de,010feh		;8a12
	sub e			;8a15
	defb 0fdh,094h ;sub iyh	;8a16
	xor c			;8a18
	cp 004h			;8a19
	jp (hl)			;8a1b
	inc b			;8a1c
	push af			;8a1d
	ld sp,l9101h		;8a1e
	ld bc,00191h		;8a21
	ld sp,l9101h		;8a24
	nop			;8a27
	nop			;8a28
	ld de,0fb91h		;8a29
	inc bc			;8a2c
	ld sp,l9101h		;8a2d
	ld bc,00191h		;8a30
	ld sp,03111h		;8a33
	ld de,03131h		;8a36
	jp m,004feh		;8a39
	jp (hl)			;8a3c
	inc b			;8a3d
	sub c			;8a3e
	ld bc,00031h		;8a3f
	nop			;8a42
	cp 010h			;8a43
	inc hl			;8a45
	cp 004h			;8a46
	sub c			;8a48
	ld bc,00011h		;8a49
	nop			;8a4c
	cp 010h			;8a4d
	sub e			;8a4f
	cp 004h			;8a50
	jp m,0b5f9h		;8a52
	xor d			;8a55
	ld sp,hl		;8a56
	or l			;8a57
	xor d			;8a58
	ld sp,hl		;8a59
	jp c,001aah		;8a5a
	jp nc,0d181h		;8a5d
	ld sp,081d2h		;8a60
	pop de			;8a63
	ld sp,0f9dch		;8a64
	jp c,0d2aah		;8a67
	add a,c			;8a6a
	pop de			;8a6b
	ld bc,0d231h		;8a6c
	and c			;8a6f
	pop de			;8a70
	ld hl,0f9dch		;8a71
	inc l			;8a74
	xor e			;8a75
	jp pe,0d108h		;8a76
	daa			;8a79
	jp nc,0d1a3h		;8a7a
	ld bc,04121h		;8a7d
	ld d,l			;8a80
	jp nc,0d301h		;8a81
	sub c			;8a84
	jp nc,0d321h		;8a85
	sub c			;8a88
	jp nc,02141h		;8a89
	ld d,c			;8a8c
	ld b,c			;8a8d
	ld (hl),c		;8a8e
	ld d,c			;8a8f
	sub c			;8a90
	ld sp,hl		;8a91
	inc l			;8a92
	xor e			;8a93
	jp pe,0d108h		;8a94
	nop			;8a97
	djnz l8abfh		;8a98
	jp nc,0a0a3h		;8a9a
	or b			;8a9d
	pop de			;8a9e
	dec b			;8a9f
	jp nc,0d393h		;8aa0
	ld sp,07101h		;8aa3
	ld sp,071a1h		;8aa6
l8aa9h:
	jp nc,0d301h		;8aa9
	and c			;8aac
	jp nc,00131h		;8aad
	ld (hl),c		;8ab0
	call c,053fdh		;8ab1
	xor d			;8ab4
	cp 001h			;8ab5
	jp (hl)			;8ab7
	inc b			;8ab8
	xor 006h		;8ab9
	ex de,hl		;8abb
	add hl,de		;8abc
	jr nz,l8aa9h		;8abd
l8abfh:
	dec bc			;8abf
l8ac0h:
	push af			;8ac0
	out (021h),a		;8ac1
	call nc,0d391h		;8ac3
	ld hl,l91d4h		;8ac6
	out (091h),a		;8ac9
	call nc,0d321h		;8acb
	ld hl,0d431h		;8ace
	ld sp,031d3h		;8ad1
	call nc,07191h		;8ad4
	ei			;8ad7
	inc b			;8ad8
	jp m,001feh		;8ad9
	jp (hl)			;8adc
	inc b			;8add
	pop bc			;8ade
	xor 001h		;8adf
	ex de,hl		;8ae1
	add hl,bc		;8ae2
	djnz l8ac0h		;8ae3
	inc b			;8ae5
	jp pe,0d109h		;8ae6
	ld hl,02191h		;8ae9
	and c			;8aec
	ld hl,02101h		;8aed
	jp nc,0d191h		;8af0
	ld d,c			;8af3
	jp nc,0d191h		;8af4
	ld d,c			;8af7
	jp nc,l8191h		;8af8
	jp nc,0d151h		;8afb
	ld hl,02191h		;8afe
	and c			;8b01
	ld hl,02101h		;8b02
	jp nc,0d191h		;8b05
	ld d,c			;8b08
	jp nc,0d191h		;8b09
	ld d,c			;8b0c
	jp nc,0d191h		;8b0d
	ld bc,00171h		;8b10
	add a,c			;8b13
	ld bc,001a1h		;8b14
	jp nc,0d181h		;8b17
	ld sp,081d2h		;8b1a
	pop de			;8b1d
	ld sp,081d2h		;8b1e
	pop de			;8b21
	ld d,c			;8b22
	ld sp,001d1h		;8b23
	ld (hl),c		;8b26
	ld bc,00181h		;8b27
	and c			;8b2a
	jp m,001feh		;8b2b
	jp (hl)			;8b2e
	inc b			;8b2f
l8b30h:
	pop bc			;8b30
	xor 001h		;8b31
	defb 0ddh,085h ;add a,ixl	;8b33
	ld (004dbh),a		;8b35
	defb 0edh ;next byte illegal after ed	;8b38
	rlca			;8b39
	jp pe,0f208h		;8b3a
	djnz l8b30h		;8b3d
	ld b,e			;8b3f
	pop de			;8b40
	nop			;8b41
	djnz $+39		;8b42
	jp nc,0d1a3h		;8b44
	rlca			;8b47
	jp nc,0ea93h		;8b48
	inc b			;8b4b
	ret nc			;8b4c
	ld hl,l91d1h		;8b4d
	ld d,c			;8b50
	ld hl,02151h		;8b51
	ld d,c			;8b54
	sub c			;8b55
	ret nc			;8b56
	ld hl,l91d1h		;8b57
	ld d,c			;8b5a
	ld hl,0f9fah		;8b5b
	xor l			;8b5e
	xor e			;8b5f
	ld sp,hl		;8b60
	xor l			;8b61
	xor e			;8b62
	ld sp,hl		;8b63
	jp nc,0f8abh		;8b64
	ld d,d			;8b67
	out (001h),a		;8b68
	call nc,07101h		;8b6a
	ld bc,00181h		;8b6d
	ld sp,hl		;8b70
	jp nc,0f8abh		;8b71
	ld h,h			;8b74
	jp pe,0d50eh		;8b75
	add a,c			;8b78
	call nc,l8101h		;8b79
	push de			;8b7c
	and c			;8b7d
	call nc,0a121h		;8b7e
	push af			;8b81
	ld sp,hl		;8b82
	ld hl,0fbach		;8b83
	ld (bc),a		;8b86
	ld sp,hl		;8b87
	ld hl,0d5ach		;8b88
	and c			;8b8b
	ld d,c			;8b8c
	call nc,05121h		;8b8d
	and c			;8b90
	ld hl,001d4h		;8b91
	push de			;8b94
	ld b,c			;8b95
	ld (hl),c		;8b96
	call nc,04101h		;8b97
	ld (hl),c		;8b9a
	ld bc,0a1d5h		;8b9b
	call nc,07131h		;8b9e
l8ba1h:
	and c			;8ba1
	ld (hl),c		;8ba2
	ld (hl),c		;8ba3
	ld sp,0a171h		;8ba4
	out (001h),a		;8ba7
	ld sp,05dfdh		;8ba9
	xor e			;8bac
	cp 001h			;8bad
	ret m			;8baf
	ld d,d			;8bb0
	jp (hl)			;8bb1
	inc b			;8bb2
	ex de,hl		;8bb3
	add hl,sp		;8bb4
	jr nc,l8ba1h		;8bb5
	dec c			;8bb7
	push af			;8bb8
	call nc,0d521h		;8bb9
	sub c			;8bbc
	call nc,0d521h		;8bbd
	sub c			;8bc0
	call nc,0d591h		;8bc1
l8bc4h:
	ld hl,021d4h		;8bc4
	ld sp,031d5h		;8bc7
	call nc,0d531h		;8bca
	sub c			;8bcd
	ld (hl),c		;8bce
	ei			;8bcf
	inc b			;8bd0
	jp m,001feh		;8bd1
	jp (hl)			;8bd4
	inc b			;8bd5
	ex de,hl		;8bd6
	add hl,sp		;8bd7
	jr nc,l8bc4h		;8bd8
	dec c			;8bda
	ret m			;8bdb
	inc d			;8bdc
	call nc,09121h		;8bdd
	ld hl,021a1h		;8be0
	ret m			;8be3
	ld d,d			;8be4
	out (001h),a		;8be5
	ld hl,021d4h		;8be7
	sub c			;8bea
	ld hl,021a1h		;8beb
	out (001h),a		;8bee
	call nc,0f8a1h		;8bf0
	inc d			;8bf3
	ld hl,02191h		;8bf4
	and c			;8bf7
	ld hl,052f8h		;8bf8
	out (001h),a		;8bfb
	ld hl,021d4h		;8bfd
	sub c			;8c00
	ld hl,021a1h		;8c01
	ret m			;8c04
	inc d			;8c05
	ld bc,00171h		;8c06
	add a,c			;8c09
	ld bc,0f8a1h		;8c0a
	ld d,d			;8c0d
	out (001h),a		;8c0e
	call nc,07101h		;8c10
	ld bc,00181h		;8c13
	and c			;8c16
	add a,c			;8c17
	ret m			;8c18
	inc d			;8c19
	ld bc,00171h		;8c1a
	add a,c			;8c1d
	ld bc,0faa1h		;8c1e
	cp 001h			;8c21
	ret m			;8c23
	ld d,d			;8c24
	jp (hl)			;8c25
	inc b			;8c26
	ex de,hl		;8c27
	ld (hl),d		;8c28
	ld b,h			;8c29
	jp pe,0d50dh		;8c2a
	and c			;8c2d
	ld d,c			;8c2e
	call nc,05121h		;8c2f
	and c			;8c32
	ld hl,001d4h		;8c33
	push de			;8c36
	ld b,c			;8c37
	ld (hl),c		;8c38
	call nc,04101h		;8c39
	ld (hl),c		;8c3c
	ld hl,l91d4h+1		;8c3d
	call nc,05121h		;8c40
	sub c			;8c43
	ld d,c			;8c44
	ld d,c			;8c45
	ld hl,l9151h		;8c46
	out (021h),a		;8c49
	ld d,c			;8c4b
	jp m,0bbf9h		;8c4c
	xor h			;8c4f
	ld sp,hl		;8c50
	cp e			;8c51
	xor h			;8c52
	ld sp,hl		;8c53
	sub 0ach		;8c54
	ld bc,081d2h		;8c56
	pop de			;8c59
	ld sp,081d2h		;8c5a
	pop de			;8c5d
	ld sp,081d2h		;8c5e
	ld sp,hl		;8c61
	sub 0ach		;8c62
	ret m			;8c64
	ld (bc),a		;8c65
	jp pe,0eb0eh		;8c66
	add hl,sp		;8c69
	ld d,b			;8c6a
	in a,(001h)		;8c6b
	jp nc,0d181h		;8c6d
	ld bc,0d231h		;8c70
	and c			;8c73
	pop de			;8c74
	ld hl,0dc51h		;8c75
	ld sp,hl		;8c78
	daa			;8c79
	xor l			;8c7a
	pop de			;8c7b
	daa			;8c7c
	jp nc,0d1a3h		;8c7d
	ld bc,04121h		;8c80
	ld d,l			;8c83
	ret m			;8c84
	dec b			;8c85
	jp nc,0d301h		;8c86
	sub c			;8c89
	jp nc,0d321h		;8c8a
	sub c			;8c8d
	jp nc,02141h		;8c8e
	ld d,c			;8c91
	ld b,c			;8c92
	ld (hl),c		;8c93
	ld d,c			;8c94
	sub c			;8c95
	ld (hl),c		;8c96
	ld sp,hl		;8c97
	daa			;8c98
	xor l			;8c99
	pop de			;8c9a
	nop			;8c9b
	djnz $+39		;8c9c
	jp nc,0a0a3h		;8c9e
	or b			;8ca1
	pop de			;8ca2
	dec b			;8ca3
	jp nc,0f893h		;8ca4
	dec b			;8ca7
	out (031h),a		;8ca8
	ld bc,03171h		;8caa
	and c			;8cad
	ld (hl),c		;8cae
	jp nc,0d301h		;8caf
	and c			;8cb2
	jp nc,00131h		;8cb3
	ld (hl),c		;8cb6
	ld sp,04dfdh		;8cb7
	xor h			;8cba
	cp 001h			;8cbb
	ret m			;8cbd
	dec bc			;8cbe
	jp (hl)			;8cbf
	inc b			;8cc0
	defb 0ddh,002h,076h ;illegal sequence	;8cc1
	jp pe,0f509h		;8cc4
	jp nc,02151h		;8cc7
	ld (hl),c		;8cca
	ld hl,02191h		;8ccb
	ld d,c			;8cce
	inc hl			;8ccf
	ld hl,09171h		;8cd0
	ei			;8cd3
	inc b			;8cd4
	jp m,001feh		;8cd5
	ret m			;8cd8
	ld a,(bc)		;8cd9
	jp (hl)			;8cda
	inc b			;8cdb
	defb 0ddh,002h,076h ;illegal sequence	;8cdc
	jp pe,0db0ah		;8cdf
	ld (bc),a		;8ce2
	pop de			;8ce3
	ld hl,02191h		;8ce4
	and c			;8ce7
	ld hl,02101h		;8ce8
	jp nc,0d191h		;8ceb
	ld d,c			;8cee
	jp nc,0d191h		;8cef
	ld d,c			;8cf2
	jp nc,l8191h		;8cf3
	jp nc,0d151h		;8cf6
	ld hl,02191h		;8cf9
	and c			;8cfc
	ld hl,02101h		;8cfd
	jp nc,0d191h		;8d00
	ld d,c			;8d03
	jp nc,0d191h		;8d04
	ld d,c			;8d07
	jp nc,0d191h		;8d08
	ld bc,00171h		;8d0b
	add a,c			;8d0e
	ld bc,001a1h		;8d0f
	jp nc,0d181h		;8d12
	ld sp,081d2h		;8d15
	pop de			;8d18
	ld sp,081d2h		;8d19
	pop de			;8d1c
	ld d,c			;8d1d
	ld sp,001d1h		;8d1e
	ld (hl),c		;8d21
	ld bc,00181h		;8d22
	and c			;8d25
	jp m,001feh		;8d26
	ret m			;8d29
	ld a,(bc)		;8d2a
	jp (hl)			;8d2b
	inc b			;8d2c
	dec (ix+043h)		;8d2d
	jp pe,0db0dh		;8d30
	ld bc,010f2h		;8d33
	pop af			;8d36
	ld d,e			;8d37
	push af			;8d38
	pop de			;8d39
	nop			;8d3a
	djnz l8d62h		;8d3b
	jp nc,0d1a3h		;8d3d
	rlca			;8d40
	jp nc,0f893h		;8d41
	ld hl,(009eah)		;8d44
	defb 0ddh,004h,086h ;illegal sequence	;8d47
	pop de			;8d4a
	ld hl,l91d2h		;8d4b
	ld d,c			;8d4e
	ld hl,02151h		;8d4f
	ld d,c			;8d52
	sub c			;8d53
	pop de			;8d54
	ld hl,l91d2h		;8d55
	ld d,c			;8d58
	ld hl,00af8h		;8d59
	dec (ix+043h)		;8d5c
	jp pe,0fa0dh		;8d5f
l8d62h:
	ld sp,hl		;8d62
	jp nz,0f9adh		;8d63
	jp nz,0f9adh		;8d66
	call m,0e9adh		;8d69
	inc b			;8d6c
	ld (hl),c		;8d6d
	ld (hl),c		;8d6e
	ld (hl),c		;8d6f
	ld (hl),l		;8d70
	ret m			;8d71
	dec c			;8d72
	jp pe,0710ch		;8d73
	ld (hl),c		;8d76
	ld (hl),c		;8d77
	and c			;8d78
	add a,c			;8d79
	ret c			;8d7a
	ld sp,hl		;8d7b
	call m,0e9adh		;8d7c
	inc b			;8d7f
	ld (hl),c		;8d80
	ld (hl),c		;8d81
	ld (hl),l		;8d82
	ret m			;8d83
	ld (bc),a		;8d84
	jp pe,0eb0dh		;8d85
	add hl,hl		;8d88
	ld d,b			;8d89
	jp nc,00101h		;8d8a
	ld bc,02121h		;8d8d
	ld hl,0dcd8h		;8d90
	ld sp,hl		;8d93
	ld h,a			;8d94
	xor (hl)		;8d95
	pop de			;8d96
	ld d,a			;8d97
	inc hl			;8d98
	ld b,c			;8d99
	ld d,c			;8d9a
	ld (hl),c		;8d9b
	sub l			;8d9c
	ret m			;8d9d
	ld d,d			;8d9e
	jp pe,0d10ah		;8d9f
	ld (hl),c		;8da2
	sub c			;8da3
	ld d,c			;8da4
	ld (hl),c		;8da5
	ld b,c			;8da6
	ld d,c			;8da7
	ld hl,00141h		;8da8
	ld hl,0a1d2h		;8dab
	pop de			;8dae
	ld bc,067f9h		;8daf
	xor (hl)		;8db2
	pop de			;8db3
	jr nc,l8df6h		;8db4
	ld d,l			;8db6
	inc hl			;8db7
	ld b,a			;8db8
	inc bc			;8db9
	djnz l8ddch		;8dba
	dec (hl)		;8dbc
	ld (hl),e		;8dbd
	xor e			;8dbe
	defb 0fdh,062h ;ld iyh,d	;8dbf
l8dc1h:
	xor l			;8dc1
	cp 001h			;8dc2
	ret m			;8dc4
	add hl,bc		;8dc5
	jp (hl)			;8dc6
	inc b			;8dc7
	ex de,hl		;8dc8
	add a,d			;8dc9
	ld b,b			;8dca
	jp pe,0f20dh		;8dcb
	djnz l8dc1h		;8dce
	ld h,(hl)		;8dd0
	defb 0edh ;next byte illegal after ed	;8dd1
	ld (bc),a		;8dd2
	jp nc,0ed9bh		;8dd3
	dec bc			;8dd6
	jp nc,01000h		;8dd7
l8ddah:
	defb 0edh ;next byte illegal after ed	;8dda
	ld (bc),a		;8ddb
l8ddch:
	add hl,hl		;8ddc
	ld a,e			;8ddd
	defb 0edh ;next byte illegal after ed	;8dde
	dec bc			;8ddf
	jp nc,04030h		;8de0
	defb 0edh ;next byte illegal after ed	;8de3
	ld (bc),a		;8de4
	ld e,c			;8de5
	sbc a,e			;8de6
	defb 0edh ;next byte illegal after ed	;8de7
	dec bc			;8de8
	pop de			;8de9
	nop			;8dea
	djnz l8ddah		;8deb
	ld (bc),a		;8ded
	add hl,hl		;8dee
	jp nc,0edabh		;8def
	dec bc			;8df2
	pop de			;8df3
	djnz l8e16h		;8df4
l8df6h:
	defb 0edh ;next byte illegal after ed	;8df6
	ld (bc),a		;8df7
	ld sp,0a373h		;8df8
	jp m,001feh		;8dfb
	ret m			;8dfe
	ld d,d			;8dff
	jp (hl)			;8e00
	inc b			;8e01
	ex de,hl		;8e02
	ld b,d			;8e03
	ld b,d			;8e04
	jp pe,0db0bh		;8e05
	ld bc,010f2h		;8e08
	pop af			;8e0b
	ld b,(hl)		;8e0c
	sub 004h		;8e0d
	inc b			;8e0f
	jp (hl)			;8e10
	ld (bc),a		;8e11
	out (070h),a		;8e12
	add a,b			;8e14
	sub c			;8e15
l8e16h:
	jp (hl)			;8e16
	inc b			;8e17
	sub c			;8e18
	sub c			;8e19
	sub c			;8e1a
	sub l			;8e1b
	ret m			;8e1c
	dec c			;8e1d
	jp pe,0d20ch		;8e1e
	ld bc,00101h		;8e21
	out (0b1h),a		;8e24
	or c			;8e26
	and c			;8e27
	and c			;8e28
	ret m			;8e29
	ld d,d			;8e2a
	jp pe,0e90bh		;8e2b
	ld (bc),a		;8e2e
	ld (hl),b		;8e2f
	add a,b			;8e30
	sub c			;8e31
	jp (hl)			;8e32
	inc b			;8e33
	sub c			;8e34
	sub c			;8e35
	sub c			;8e36
	sub l			;8e37
	ret m			;8e38
	dec c			;8e39
	jp pe,0d20ch		;8e3a
	ld bc,00101h		;8e3d
	out (0a1h),a		;8e40
	or c			;8e42
	ret m			;8e43
	ld d,d			;8e44
	jp pe,0e90bh		;8e45
	ld (bc),a		;8e48
	ld d,b			;8e49
	ld h,b			;8e4a
	ld (hl),c		;8e4b
	jp (hl)			;8e4c
	inc b			;8e4d
	ld (hl),c		;8e4e
	ld (hl),c		;8e4f
	ld (hl),c		;8e50
	ld (hl),l		;8e51
	ret m			;8e52
	dec c			;8e53
	jp pe,0710ch		;8e54
	ld (hl),c		;8e57
	ld (hl),c		;8e58
	add a,c			;8e59
	add a,c			;8e5a
	and c			;8e5b
	and c			;8e5c
	ret m			;8e5d
	ld d,d			;8e5e
	jp pe,0e90bh		;8e5f
	ld (bc),a		;8e62
	ld d,b			;8e63
	ld h,b			;8e64
	ld (hl),c		;8e65
	jp m,001feh		;8e66
	ret m			;8e69
	ld a,(bc)		;8e6a
	jp (hl)			;8e6b
	inc b			;8e6c
	dec (ix+043h)		;8e6d
	jp pe,0db0dh		;8e70
	ld bc,010f2h		;8e73
	pop af			;8e76
	ld d,e			;8e77
	pop de			;8e78
	jr nc,l8ebbh		;8e79
	ld d,l			;8e7b
	inc hl			;8e7c
	ld b,a			;8e7d
	inc bc			;8e7e
	jp nc,0d197h		;8e7f
	inc hl			;8e82
	jp nc,0fa9bh		;8e83
	ld sp,hl		;8e86
	rst 18h			;8e87
	xor (hl)		;8e88
	ld sp,hl		;8e89
	rst 18h			;8e8a
	xor (hl)		;8e8b
	ld sp,hl		;8e8c
	inc e			;8e8d
	xor a			;8e8e
	ld bc,00101h		;8e8f
	dec b			;8e92
	ret m			;8e93
	dec c			;8e94
	jp pe,0010ch		;8e95
	ld bc,03101h		;8e98
	ld de,0f9d8h		;8e9b
	inc e			;8e9e
	xor a			;8e9f
	ld bc,00501h		;8ea0
	ret m			;8ea3
	ld (bc),a		;8ea4
	jp pe,0eb0dh		;8ea5
	add hl,hl		;8ea8
	ld d,b			;8ea9
	ld sp,03131h		;8eaa
	ld d,c			;8ead
	ld d,c			;8eae
	ld d,c			;8eaf
	ret c			;8eb0
	call c,089f9h		;8eb1
	xor a			;8eb4
	pop de			;8eb5
	ld d,a			;8eb6
	inc hl			;8eb7
	ld b,c			;8eb8
	ld d,c			;8eb9
	ld (hl),c		;8eba
l8ebbh:
	sub e			;8ebb
	ret m			;8ebc
	ld d,d			;8ebd
	jp nz,006eah		;8ebe
	ld (hl),c		;8ec1
	sub c			;8ec2
	ld d,c			;8ec3
	ld (hl),c		;8ec4
	ld b,c			;8ec5
	ld d,c			;8ec6
	ld hl,00141h		;8ec7
	ld hl,0a0d2h		;8eca
	ld sp,hl		;8ecd
	adc a,c			;8ece
	xor a			;8ecf
	pop de			;8ed0
	jr nc,l8f13h		;8ed1
	ld d,l			;8ed3
	inc hl			;8ed4
	ld b,a			;8ed5
l8ed6h:
	inc bc			;8ed6
	djnz $+34		;8ed7
	dec (hl)		;8ed9
	ld (hl),e		;8eda
	xor c			;8edb
	add a,(iy-052h)		;8edc
	cp 001h			;8edf
	ret m			;8ee1
	add hl,bc		;8ee2
	jp (hl)			;8ee3
	inc b			;8ee4
	pop bc			;8ee5
	xor 001h		;8ee6
	ex de,hl		;8ee8
	add a,e			;8ee9
	jr nz,l8ed6h		;8eea
	ld a,(bc)		;8eec
	jp p,0f110h		;8eed
	ld h,(hl)		;8ef0
	defb 0edh ;next byte illegal after ed	;8ef1
	ld (bc),a		;8ef2
	jp nc,0ed9bh		;8ef3
	add hl,bc		;8ef6
	jp nc,01000h		;8ef7
l8efah:
	defb 0edh ;next byte illegal after ed	;8efa
	ld (bc),a		;8efb
	add hl,hl		;8efc
	ld a,e			;8efd
	defb 0edh ;next byte illegal after ed	;8efe
	add hl,bc		;8eff
	jp nc,04030h		;8f00
	defb 0edh ;next byte illegal after ed	;8f03
	ld (bc),a		;8f04
	ld e,c			;8f05
	sbc a,e			;8f06
	defb 0edh ;next byte illegal after ed	;8f07
	add hl,bc		;8f08
	pop de			;8f09
	nop			;8f0a
	djnz l8efah		;8f0b
	ld (bc),a		;8f0d
	add hl,hl		;8f0e
	jp nc,0edabh		;8f0f
	add hl,bc		;8f12
l8f13h:
	pop de			;8f13
	djnz $+34		;8f14
	defb 0edh ;next byte illegal after ed	;8f16
	ld (bc),a		;8f17
	ld sp,0a173h		;8f18
	jp m,001feh		;8f1b
	ret m			;8f1e
	ld d,d			;8f1f
	jp (hl)			;8f20
	inc b			;8f21
	ex de,hl		;8f22
	ld b,d			;8f23
	ld b,d			;8f24
	jp pe,0db0bh		;8f25
	ld bc,010f2h		;8f28
	pop af			;8f2b
	ld b,(hl)		;8f2c
	sub 004h		;8f2d
	inc b			;8f2f
	jp (hl)			;8f30
	ld (bc),a		;8f31
	jp nc,01000h		;8f32
	ld hl,004e9h		;8f35
	ld hl,02121h		;8f38
	dec h			;8f3b
	ret m			;8f3c
	dec c			;8f3d
	jp pe,0510ch		;8f3e
	ld d,c			;8f41
	ld d,c			;8f42
	ld b,c			;8f43
	ld b,c			;8f44
	ld sp,0f831h		;8f45
	ld d,d			;8f48
	jp pe,0e90bh		;8f49
	ld (bc),a		;8f4c
	nop			;8f4d
	djnz l8f71h		;8f4e
	jp (hl)			;8f50
	inc b			;8f51
	ld hl,02121h		;8f52
	dec h			;8f55
	ret m			;8f56
	dec c			;8f57
	jp pe,0510ch		;8f58
	ld d,c			;8f5b
	ld d,c			;8f5c
	ld sp,0f841h		;8f5d
	ld d,d			;8f60
	jp pe,0e90bh		;8f61
	ld (bc),a		;8f64
	out (0a0h),a		;8f65
	or b			;8f67
	jp nc,0e901h		;8f68
	inc b			;8f6b
	ld bc,00101h		;8f6c
	dec b			;8f6f
	ret m			;8f70
l8f71h:
	dec c			;8f71
	jp pe,0010ch		;8f72
	ld bc,01101h		;8f75
	ld de,03131h		;8f78
	ret m			;8f7b
	ld d,d			;8f7c
	jp pe,0e90bh		;8f7d
	ld (bc),a		;8f80
	out (0a0h),a		;8f81
	or b			;8f83
	jp nc,0e901h		;8f84
	inc b			;8f87
	jp m,001feh		;8f88
l8f8bh:
	ret m			;8f8b
	ld a,(bc)		;8f8c
	jp (hl)			;8f8d
	inc b			;8f8e
	xor 001h		;8f8f
	pop bc			;8f91
	defb 0ddh,005h,043h ;illegal sequence	;8f92
	jp pe,0f209h		;8f95
	djnz l8f8bh		;8f98
	ld d,e			;8f9a
	pop de			;8f9b
	jr nc,l8fdeh		;8f9c
	ld d,l			;8f9e
	inc hl			;8f9f
	ld b,a			;8fa0
	inc bc			;8fa1
	jp nc,0d197h		;8fa2
	inc hl			;8fa5
	jp nc,0fa9bh		;8fa6
	cp 004h			;8fa9
	ret nc			;8fab
	jp (hl)			;8fac
	dec b			;8fad
	push af			;8fae
	sub c			;8faf
	ld bc,00031h		;8fb0
	nop			;8fb3
	sub c			;8fb4
	ld de,l9131h		;8fb5
	ld bc,00131h		;8fb8
	sub c			;8fbb
	ld sp,0fb11h		;8fbc
	inc bc			;8fbf
	sub c			;8fc0
	ld bc,00031h		;8fc1
	nop			;8fc4
	sub c			;8fc5
	ld de,03031h		;8fc6
	jr nz,$+34		;8fc9
	jr nz,$+34		;8fcb
	jr nc,$+34		;8fcd
	jr nz,l9001h		;8fcf
	jr nc,$+50		;8fd1
	jr nc,l9005h		;8fd3
	jr nc,$-9		;8fd5
	cp 004h			;8fd7
	ret nc			;8fd9
	jp (hl)			;8fda
	dec b			;8fdb
	push af			;8fdc
	sub c			;8fdd
l8fdeh:
	ld de,00031h		;8fde
	nop			;8fe1
	sub c			;8fe2
	nop			;8fe3
	nop			;8fe4
	ld sp,007fbh		;8fe5
	jr nc,$+34		;8fe8
	jr nz,l900ch		;8fea
	jr nz,$+34		;8fec
	jr nz,l9020h		;8fee
	jr nc,$+50		;8ff0
	jr nc,l9024h		;8ff2
	jr nc,l9026h		;8ff4
	jr nc,l9028h		;8ff6
	cp 004h			;8ff8
	ret nc			;8ffa
	jp (hl)			;8ffb
	dec b			;8ffc
	push af			;8ffd
	sub b			;8ffe
	nop			;8fff
	nop			;9000
l9001h:
	nop			;9001
	ld sp,00000h		;9002
l9005h:
	sub c			;9005
	jr nc,l9008h		;9006
l9008h:
	ld de,00090h		;9008
	ei			;900b
l900ch:
	inc bc			;900c
	ld sp,00090h		;900d
	nop			;9010
	sub b			;9011
	ld sp,00011h		;9012
	nop			;9015
	ld sp,03030h		;9016
	push af			;9019
	sub c			;901a
	ld de,00031h		;901b
	nop			;901e
	sub c			;901f
l9020h:
	ld de,00031h		;9020
	nop			;9023
l9024h:
	ei			;9024
	inc bc			;9025
l9026h:
	jr nc,$+34		;9026
l9028h:
	jr nz,l904ah		;9028
	jr nz,l904ch		;902a
	jr nz,$+34		;902c
	jr nc,$+50		;902e
	jr nc,$+50		;9030
	jr nc,$+50		;9032
	jr nc,l9066h		;9034
	cp 004h			;9036
	ret nc			;9038
	jp (hl)			;9039
	dec b			;903a
	push af			;903b
	sub b			;903c
	nop			;903d
	sub b			;903e
	sub b			;903f
	ld sp,00000h		;9040
	sub c			;9043
	ld sp,09031h		;9044
	ld de,03190h		;9047
l904ah:
	nop			;904a
	nop			;904b
l904ch:
	sub c			;904c
	ld sp,0fb31h		;904d
	inc bc			;9050
	sub c			;9051
	ld de,00031h		;9052
	nop			;9055
	sub c			;9056
	ld sp,l9131h		;9057
	ld de,01191h		;905a
	jr nc,l908fh		;905d
	jr nc,l9091h		;905f
	jr nc,l9093h		;9061
	defb 0fdh,0a9h,0afh ;illegal sequence	;9063
l9066h:
	cp 001h			;9066
	jp (hl)			;9068
	ld a,(bc)		;9069
	pop af			;906a
	ld d,h			;906b
	jp p,0eb20h		;906c
	add a,c			;906f
	djnz $-20		;9070
	ex af,af'		;9072
	sub 003h		;9073
	cp e			;9075
	jp nc,0ea9dh		;9076
	rlca			;9079
	sbc a,l			;907a
	ret c			;907b
	cp 001h			;907c
	ex de,hl		;907e
	add a,d			;907f
	inc hl			;9080
	defb 0edh ;next byte illegal after ed	;9081
	inc b			;9082
	jp (hl)			;9083
	dec b			;9084
	jp pe,0f508h		;9085
	jp nc,0d190h		;9088
	jr nz,$+66		;908b
	ld d,b			;908d
	sub b			;908e
l908fh:
	ld d,b			;908f
l9090h:
	ld b,b			;9090
l9091h:
	ei			;9091
	inc b			;9092
l9093h:
	jp pe,0f505h		;9093
	jp nc,0d190h		;9096
	jr nz,$+66		;9099
	ld d,b			;909b
	sub b			;909c
	ld d,b			;909d
	ld b,b			;909e
	ei			;909f
	ld (bc),a		;90a0
	jp pe,0d205h		;90a1
	sub b			;90a4
	pop de			;90a5
	jr nz,l90e8h		;90a6
	ld d,b			;90a8
	sub b			;90a9
	ld d,b			;90aa
l90abh:
	ld b,b			;90ab
	jp pe,0d206h		;90ac
	sub b			;90af
	pop de			;90b0
	jr nz,l90f3h		;90b1
	ld d,b			;90b3
	sub b			;90b4
	ld d,b			;90b5
	ld b,b			;90b6
	cp 001h			;90b7
	jp (hl)			;90b9
	dec b			;90ba
	xor 006h		;90bb
	ex de,hl		;90bd
	rla			;90be
	djnz l90abh		;90bf
	ld a,(bc)		;90c1
	push af			;90c2
	call nc,0d321h		;90c3
	ld hl,021d4h		;90c6
	out (021h),a		;90c9
	call nc,05121h		;90cb
	ld d,c			;90ce
	ei			;90cf
	inc b			;90d0
	push af			;90d1
	call nc,0d321h		;90d2
	ld hl,021d4h		;90d5
	out (021h),a		;90d8
	call nc,05121h		;90da
	ld d,c			;90dd
	ei			;90de
	inc bc			;90df
	call nc,0d321h		;90e0
	ld hl,021d4h		;90e3
	out (021h),a		;90e6
l90e8h:
	call nc,0d390h		;90e8
	djnz $+66		;90eb
	ld (hl),b		;90ed
	djnz $+66		;90ee
	ld (hl),b		;90f0
l90f1h:
	sub b			;90f1
	rst 28h			;90f2
l90f3h:
	cp 001h			;90f3
	jp (hl)			;90f5
	dec b			;90f6
	jp pe,0ed0bh		;90f7
	add hl,bc		;90fa
	ex de,hl		;90fb
	add a,(hl)		;90fc
	jr nz,l90f1h		;90fd
	dec bc			;90ff
	pop af			;9100
l9101h:
	ld b,h			;9101
	jp nc,02f5fh		;9102
	ld c,a			;9105
	rrca			;9106
	cpl			;9107
	cpl			;9108
	cpl			;9109
	cpl			;910a
	cp 001h			;910b
	jp pe,0eb0ah		;910d
	rla			;9110
l9111h:
	djnz l9101h		;9111
	ld b,0e9h		;9113
	dec b			;9115
	push af			;9116
	call nc,02121h		;9117
	ld hl,0a121h		;911a
	out (001h),a		;911d
	ld hl,003fbh		;911f
	call nc,0a1a1h		;9122
	and c			;9125
	and c			;9126
	and c			;9127
	and c			;9128
	and c			;9129
	push af			;912a
	call nc,02121h		;912b
	ld hl,0d421h		;912e
l9131h:
	and c			;9131
	out (001h),a		;9132
	ld hl,002fbh		;9134
	push af			;9137
	call nc,0d391h		;9138
	sub c			;913b
	call nc,0d391h		;913c
	sub c			;913f
	call nc,sub_9191h	;9140
	sub c			;9143
	ei			;9144
	ld (bc),a		;9145
	rst 28h			;9146
	ld h,(iy-050h)		;9147
	cp 001h			;914a
	ret m			;914c
	jr z,$-20		;914d
	ld a,(bc)		;914f
	ex de,hl		;9150
l9151h:
	ld b,d			;9151
	ld (hl),b		;9152
	jp (hl)			;9153
	dec b			;9154
	push af			;9155
	push de			;9156
	ld hl,021d4h		;9157
	push de			;915a
	ld hl,021d4h		;915b
	push de			;915e
	ld hl,021d4h		;915f
	ld hl,004fbh		;9162
	push af			;9165
	push de			;9166
	ld hl,021d4h		;9167
	push de			;916a
	ld hl,021d4h		;916b
	push de			;916e
	ld hl,021d4h		;916f
	ld hl,003fbh		;9172
	push de			;9175
l9176h:
	ld hl,021d4h		;9176
	push de			;9179
	ld hl,021d4h		;917a
	ret m			;917d
	ld h,h			;917e
	push de			;917f
	ld (hl),b		;9180
	sub b			;9181
	call nc,04010h		;9182
	ld (hl),b		;9185
	sub b			;9186
	cp 001h			;9187
	ret m			;9189
	jr z,l9176h		;918a
	dec bc			;918c
	ex de,hl		;918d
	ld b,d			;918e
	ld (hl),b		;918f
	jp (hl)			;9190
sub_9191h:
	dec b			;9191
	push af			;9192
	push de			;9193
	ld hl,021d4h		;9194
	push de			;9197
	ld hl,021d4h		;9198
	push de			;919b
	ld hl,05151h		;919c
	ei			;919f
	inc b			;91a0
	ret m			;91a1
	jr z,$-9		;91a2
	push de			;91a4
	ld hl,021d4h		;91a5
	push de			;91a8
	ld hl,021d4h		;91a9
	push de			;91ac
	ld hl,05151h		;91ad
	ei			;91b0
	inc bc			;91b1
	push de			;91b2
	ld hl,021d4h		;91b3
	push de			;91b6
	ld hl,021d4h		;91b7
	ret m			;91ba
	ld h,h			;91bb
	push de			;91bc
	sub b			;91bd
	call nc,04010h		;91be
	ld (hl),b		;91c1
	djnz l9204h		;91c2
	ld (hl),b		;91c4
	sub b			;91c5
	cp 001h			;91c6
	ret m			;91c8
	jr z,$-20		;91c9
	ld a,(bc)		;91cb
	ex de,hl		;91cc
	ld b,d			;91cd
	ld (hl),b		;91ce
	jp (hl)			;91cf
	dec b			;91d0
l91d1h:
	push af			;91d1
l91d2h:
	push de			;91d2
	and c			;91d3
l91d4h:
	call nc,0fba1h		;91d4
	ex af,af'		;91d7
	push af			;91d8
	call nc,0d301h		;91d9
	ld bc,008fbh		;91dc
	push af			;91df
	push de			;91e0
	or c			;91e1
	call nc,0d5b1h		;91e2
	or c			;91e5
	call nc,0d5b1h		;91e6
	or c			;91e9
	call nc,0d5b1h		;91ea
	or c			;91ed
	call nc,0fbb1h		;91ee
	ld (bc),a		;91f1
	push af			;91f2
	push de			;91f3
l91f4h:
	and c			;91f4
	call nc,0d5a1h		;91f5
	and c			;91f8
	call nc,0d4a1h		;91f9
	ld hl,0a1d5h		;91fc
	call nc,0d501h		;91ff
	and c			;9202
	ei			;9203
l9204h:
	ld (bc),a		;9204
	cp 001h			;9205
	ret m			;9207
	jr z,l91f4h		;9208
	ld a,(bc)		;920a
	ex de,hl		;920b
	ld b,c			;920c
	add a,b			;920d
	jp (hl)			;920e
	dec b			;920f
	push af			;9210
	push de			;9211
	ld hl,02121h		;9212
	ld hl,0d4a1h		;9215
	ld bc,0fb21h		;9218
	inc bc			;921b
	push de			;921c
	and c			;921d
	and c			;921e
	and c			;921f
	and c			;9220
	and c			;9221
	and c			;9222
	and c			;9223
	push af			;9224
	push de			;9225
	ld hl,02121h		;9226
	ld hl,0a1d5h		;9229
	call nc,02101h		;922c
	ei			;922f
	ld (bc),a		;9230
	push af			;9231
	push de			;9232
	sub c			;9233
	call nc,0d591h		;9234
	sub c			;9237
	call nc,0d591h		;9238
	sub c			;923b
	sub c			;923c
	sub c			;923d
	ei			;923e
	ld (bc),a		;923f
	defb 0fdh,04ah,0b1h ;illegal sequence	;9240
	cp 001h			;9243
	ret m			;9245
	add a,l			;9246
	jp nz,00ae9h		;9247
	xor 008h		;924a
	jp pe,0ec06h		;924c
	call nc,02d2dh		;924f
	rst 28h			;9252
	cp 001h			;9253
	ret m			;9255
	dec b			;9256
	jp (hl)			;9257
	dec b			;9258
	jp pe,0eb07h		;9259
	ld de,0db60h		;925c
	ld (bc),a		;925f
	pop de			;9260
	jr nz,l92a3h		;9261
	ld d,b			;9263
	sub b			;9264
	jp pe,02006h		;9265
	ld b,b			;9268
	ld d,b			;9269
	sub b			;926a
	jp pe,02005h		;926b
	ld b,b			;926e
	ld d,b			;926f
	sub b			;9270
	jp pe,02004h		;9271
	ld b,b			;9274
	ld d,b			;9275
	sub b			;9276
	jp pe,02003h		;9277
	ld b,b			;927a
	ld d,b			;927b
l927ch:
	sub b			;927c
	jp pe,02002h		;927d
	ld b,b			;9280
l9281h:
	ld d,b			;9281
	sub b			;9282
	jp pe,02001h		;9283
	ld b,b			;9286
	ld d,b			;9287
	sub b			;9288
	jp pe,0d107h		;9289
l928ch:
	ld b,b			;928c
	ld d,b			;928d
	sub b			;928e
	ret nc			;928f
	jr nz,l927ch		;9290
	ld b,0d1h		;9292
l9294h:
	ld b,b			;9294
	ld d,b			;9295
	sub b			;9296
	ret nc			;9297
	jr nz,$-20		;9298
	dec b			;929a
	pop de			;929b
l929ch:
	ld b,b			;929c
	ld d,b			;929d
l929eh:
	sub b			;929e
	ret nc			;929f
	jr nz,l928ch		;92a0
	inc b			;92a2
l92a3h:
	pop de			;92a3
l92a4h:
	ld b,b			;92a4
	ld d,b			;92a5
	sub b			;92a6
	ret nc			;92a7
	jr nz,l9294h		;92a8
	inc bc			;92aa
	pop de			;92ab
	ld b,b			;92ac
	ld d,b			;92ad
	sub b			;92ae
	ret nc			;92af
	jr nz,l929ch		;92b0
	ld (bc),a		;92b2
	pop de			;92b3
	ld b,b			;92b4
	ld d,b			;92b5
	sub b			;92b6
	ret nc			;92b7
	jr nz,l92a4h		;92b8
	ld bc,040d1h		;92ba
	ld d,b			;92bd
	sub b			;92be
	ret nc			;92bf
	jr nz,l929eh		;92c0
	cp 001h			;92c2
	ret m			;92c4
	dec c			;92c5
	jp pe,0eb0ah		;92c6
	ld (hl),l		;92c9
	ld d,b			;92ca
	jp (hl)			;92cb
	dec b			;92cc
	jp p,0f110h		;92cd
	ld d,l			;92d0
	out (0f5h),a		;92d1
	sub b			;92d3
	ld d,b			;92d4
	jr nz,$-110		;92d5
	ld d,b			;92d7
	jr nz,l932ah		;92d8
	ei			;92da
	inc b			;92db
	push af			;92dc
	and b			;92dd
	ld d,b			;92de
	jr nz,l9281h		;92df
	ld d,b			;92e1
	jr nz,l9334h		;92e2
	ei			;92e4
	ld (bc),a		;92e5
	push af			;92e6
	jp nc,0d300h		;92e7
	ld (hl),b		;92ea
	ld b,b			;92eb
	jp nc,0d300h		;92ec
	ld (hl),b		;92ef
	ld b,b			;92f0
	ld (hl),b		;92f1
	ei			;92f2
	ld (bc),a		;92f3
	out (0f5h),a		;92f4
	sub b			;92f6
	ld d,b			;92f7
	jr nz,$-110		;92f8
	ld d,b			;92fa
	jr nz,$+82		;92fb
	ei			;92fd
	inc b			;92fe
	push af			;92ff
	and b			;9300
	ld d,b			;9301
	jr nz,l92a4h		;9302
	ld d,b			;9304
	jr nz,l9357h		;9305
	ei			;9307
	ld (bc),a		;9308
	push af			;9309
	jp nc,0d300h		;930a
	ld (hl),b		;930d
	ld b,b			;930e
	jp nc,0d300h		;930f
	ld (hl),b		;9312
	ld b,b			;9313
	jp nc,0d300h		;9314
	ld b,b			;9317
	ei			;9318
	ld (bc),a		;9319
	cp 001h			;931a
	ret m			;931c
	dec c			;931d
	jp pe,0eb0ah		;931e
	ld (hl),l		;9321
	ld d,b			;9322
	jp (hl)			;9323
	dec b			;9324
	jp p,0f110h		;9325
	ld d,l			;9328
	push af			;9329
l932ah:
	out (0a0h),a		;932a
	jp nc,05020h		;932c
	out (0a0h),a		;932f
	jp nc,05020h		;9331
l9334h:
	and b			;9334
	jr nz,$-3		;9335
	inc b			;9337
	push af			;9338
	out (070h),a		;9339
	jp nc,00040h		;933b
	out (070h),a		;933e
	jp nc,00040h		;9340
	ld (hl),b		;9343
	nop			;9344
	ei			;9345
	inc b			;9346
	push af			;9347
	out (050h),a		;9348
	or b			;934a
	jp nc,0d320h		;934b
	ld d,b			;934e
	or b			;934f
l9350h:
	jp nc,05020h		;9350
	jr nz,l9350h		;9353
	inc b			;9355
	push af			;9356
l9357h:
	out (050h),a		;9357
	and b			;9359
	jp nc,0d320h		;935a
	ld d,b			;935d
	and b			;935e
l935fh:
	jp nc,05020h		;935f
	jr nz,l935fh		;9362
	inc b			;9364
	cp 001h			;9365
	jp (hl)			;9367
	ld a,(bc)		;9368
	xor 008h		;9369
	call pe,005eah		;936b
	ret m			;936e
	add a,b			;936f
	jp nz,02ad4h		;9370
	jp (hl)			;9373
	dec b			;9374
	ret m			;9375
	jr z,l93e9h		;9376
	ld d,c			;9378
	ld b,c			;9379
	jp (hl)			;937a
	ld a,(bc)		;937b
	ret m			;937c
	add a,b			;937d
	pop bc			;937e
	call nc,0d42dh		;937f
	ld hl,(005e9h)		;9382
	ret m			;9385
	jr z,l93f9h		;9386
	ld d,c			;9388
	ld b,c			;9389
	ret m			;938a
	add a,b			;938b
	pop bc			;938c
	jp (hl)			;938d
	ld a,(bc)		;938e
	call nc,0ef9dh		;938f
	defb 0fdh,043h,0b2h ;illegal sequence	;9392
l9395h:
	cp 001h			;9395
	ret m			;9397
	ld a,(bc)		;9398
	jp (hl)			;9399
	dec b			;939a
	jp pe,0db0eh		;939b
	ld (bc),a		;939e
	ex de,hl		;939f
	add hl,sp		;93a0
	jr nz,l9395h		;93a1
	dec bc			;93a3
	pop af			;93a4
	ld b,h			;93a5
	jp nc,0eb53h		;93a6
	add hl,de		;93a9
	jr nc,$-20		;93aa
	inc c			;93ac
	out (053h),a		;93ad
	ld (hl),l		;93af
	jp nc,0d373h		;93b0
	ld (hl),e		;93b3
	sub l			;93b4
	jp nc,0d353h		;93b5
	ld d,e			;93b8
	and l			;93b9
	jp nc,0d3a3h		;93ba
	and e			;93bd
	jp nc,0d225h		;93be
	ld d,e			;93c1
	out (053h),a		;93c2
	ld (hl),l		;93c4
	jp nc,0d373h		;93c5
	ld (hl),e		;93c8
	sub l			;93c9
	jp nc,0d353h		;93ca
	ld d,e			;93cd
	and l			;93ce
	jp nc,0d3a3h		;93cf
	sub e			;93d2
l93d3h:
	jp nc,0fe25h		;93d3
	ld bc,00bf8h		;93d6
	jp (hl)			;93d9
	dec b			;93da
	jp pe,0eb0ah		;93db
	add hl,de		;93de
	jr nz,l93d3h		;93df
	dec bc			;93e1
	pop af			;93e2
	ld b,h			;93e3
	jp nc,0d353h		;93e4
	ld d,e			;93e7
	ld (hl),e		;93e8
l93e9h:
	sub c			;93e9
	jp nc,0d373h		;93ea
	ld (hl),e		;93ed
	sub l			;93ee
	jp nc,0d353h		;93ef
	ld d,e			;93f2
	and e			;93f3
	jp nc,04321h		;93f4
	out (093h),a		;93f7
l93f9h:
	jp nc,05305h		;93f9
	out (053h),a		;93fc
	ld (hl),e		;93fe
	sub c			;93ff
	jp nc,0d373h		;9400
	ld (hl),e		;9403
	sub l			;9404
	jp nc,0d353h		;9405
	ld d,e			;9408
	and e			;9409
	jp nc,04321h		;940a
	out (093h),a		;940d
	jp pe,0d209h		;940f
l9412h:
	ld b,a			;9412
	cp 001h			;9413
	ret m			;9415
	ld (bc),a		;9416
	jp (hl)			;9417
	dec b			;9418
	jp pe,0eb0dh		;9419
	ld d,a			;941c
	jr nz,$-12		;941d
	djnz l9412h		;941f
	ld d,e			;9421
	jp nc,02252h		;9422
	ld d,c			;9425
	and d			;9426
	pop de			;9427
l9428h:
	ld (02f51h),hl		;9428
	ld (bc),a		;942b
l942ch:
	jp nc,0d172h		;942c
	ld bc,07f47h		;942f
	jp nc,075b5h		;9432
	pop de			;9435
	inc hl			;9436
	pop de			;9437
	ld (hl),l		;9438
	dec h			;9439
	ld (hl),e		;943a
	ld e,a			;943b
	ret m			;943c
	dec e			;943d
	ex de,hl		;943e
	ld d,(hl)		;943f
	djnz l942ch		;9440
	ex af,af'		;9442
	pop de			;9443
	and b			;9444
	ld d,b			;9445
	jr nz,$-44		;9446
	and b			;9448
	ld d,b			;9449
	jr nz,$-44		;944a
	and b			;944c
	ld d,b			;944d
	jr nz,$-43		;944e
	and b			;9450
	ld d,b			;9451
	jr nz,l9428h		;9452
	and b			;9454
	ld d,b			;9455
	jr nz,$-41		;9456
	and b			;9458
	cp 001h			;9459
	ret m			;945b
	dec bc			;945c
	jp (hl)			;945d
	dec b			;945e
	jp pe,0eb0bh		;945f
	ld b,h			;9462
	ld (hl),b		;9463
	in a,(002h)		;9464
	jp p,0f108h		;9466
	ld d,d			;9469
	jp nc,07323h		;946a
	ld d,l			;946d
	ld d,c			;946e
	pop bc			;946f
	ld d,e			;9470
	ld d,l			;9471
	inc hl			;9472
	ld (hl),e		;9473
	ld d,l			;9474
	call pe,006eah		;9475
	jr nc,l94bah		;9478
	ld d,l			;947a
	ex de,hl		;947b
l947ch:
	ld b,h			;947c
	ld (hl),b		;947d
	jp pe,0a50bh		;947e
	jp nc,07323h		;9481
	ld d,l			;9484
	ld d,c			;9485
	pop bc			;9486
	ld d,e			;9487
	ld d,l			;9488
	ld b,e			;9489
	sub e			;948a
	sub l			;948b
	ret m			;948c
	dec d			;948d
	ex de,hl		;948e
	ld d,a			;948f
	jr nz,l947ch		;9490
	ex af,af'		;9492
	call nc,0d390h		;9493
	djnz $+66		;9496
	ld (hl),b		;9498
	sub b			;9499
	jp nc,04010h		;949a
	ld (hl),b		;949d
	sub b			;949e
	pop de			;949f
	djnz $+66		;94a0
	ld (hl),b		;94a2
	sub b			;94a3
	ret nc			;94a4
	nop			;94a5
	defb 0fdh,095h ;sub iyl	;94a6
	or e			;94a8
l94a9h:
	cp 001h			;94a9
	ret m			;94ab
	ld a,(bc)		;94ac
	jp (hl)			;94ad
	dec b			;94ae
	jp pe,0db0eh		;94af
	ld (bc),a		;94b2
	ex de,hl		;94b3
	add hl,sp		;94b4
	jr nz,l94a9h		;94b5
	dec bc			;94b7
	pop af			;94b8
	ld b,h			;94b9
l94bah:
	jp nc,0ea93h		;94ba
	dec bc			;94bd
	out (093h),a		;94be
	or l			;94c0
	jp nc,0d3b3h		;94c1
	or e			;94c4
	jp nc,0d205h		;94c5
	and e			;94c8
	out (0a3h),a		;94c9
	jp nc,0d125h		;94cb
	inc hl			;94ce
	jp nc,05523h		;94cf
	jp nc,0d393h		;94d2
	sub e			;94d5
	or l			;94d6
	jp nc,0d3b3h		;94d7
	or e			;94da
	jp nc,0d205h		;94db
	and e			;94de
	out (0a3h),a		;94df
	jp nc,0d125h		;94e1
	inc hl			;94e4
	jp nc,05523h		;94e5
	cp 001h			;94e8
	ret m			;94ea
	dec bc			;94eb
	jp (hl)			;94ec
	dec b			;94ed
	jp pe,0eb0ah		;94ee
	add hl,de		;94f1
	jr nz,$-12		;94f2
	dec bc			;94f4
	pop af			;94f5
	ld b,h			;94f6
	jp nc,0d393h		;94f7
	sub e			;94fa
	or e			;94fb
	jp nc,0d201h		;94fc
	or e			;94ff
	out (0b3h),a		;9500
	jp nc,0d205h		;9502
	and e			;9505
	out (0a3h),a		;9506
	jp nc,0d323h		;9508
	and c			;950b
	jp nc,0d303h		;950c
	ld d,e			;950f
	sub l			;9510
	jp nc,0d393h		;9511
	sub e			;9514
	or e			;9515
	jp nc,0d221h		;9516
	or e			;9519
	out (0b3h),a		;951a
	jp nc,0d205h		;951c
	and e			;951f
	out (0a3h),a		;9520
	jp nc,0d323h		;9522
	and c			;9525
	jp nc,0d303h		;9526
	ld d,e			;9529
	jp pe,00709h		;952a
l952dh:
	cp 001h			;952d
l952fh:
	ret m			;952f
	ld (bc),a		;9530
	jp (hl)			;9531
	dec b			;9532
	xor 001h		;9533
	jp pe,0eb0bh		;9535
	ld d,a			;9538
	jr nz,l952dh		;9539
	djnz $-13		;953b
	ld d,h			;953d
	jp nc,0d322h		;953e
	and d			;9541
	jp nc,05221h		;9542
	and d			;9545
	jp nc,0eb21h		;9546
	ld d,l			;9549
	jr nc,$-20		;954a
	inc c			;954c
	out (025h),a		;954d
	ld b,e			;954f
l9550h:
	ld d,l			;9550
	ld b,d			;9551
	ld (bc),a		;9552
	ld b,c			;9553
	jp nc,0ea07h		;9554
	dec bc			;9557
	ex de,hl		;9558
	ld d,a			;9559
	jr nz,l952fh		;955a
	ld (hl),d		;955c
	ld b,d			;955d
	ld (hl),c		;955e
	jp nc,0d207h		;955f
	ld (hl),l		;9562
	dec h			;9563
	or e			;9564
	pop de			;9565
	dec h			;9566
	jp nc,0b3b5h		;9567
	xor a			;956a
	ret m			;956b
	dec e			;956c
	jp pe,0c105h		;956d
	pop de			;9570
	and b			;9571
	ld d,b			;9572
	jr nz,$-44		;9573
	and b			;9575
	ld d,b			;9576
	jr nz,$-44		;9577
	and b			;9579
	ld d,b			;957a
	jr nz,l9550h		;957b
	and b			;957d
	ld d,b			;957e
	jr nz,$-42		;957f
	and b			;9581
	ld d,b			;9582
	rst 28h			;9583
	cp 001h			;9584
	ret m			;9586
	dec bc			;9587
	jp (hl)			;9588
	dec b			;9589
	jp pe,0db0bh		;958a
	ld (bc),a		;958d
	ex de,hl		;958e
	ld b,h			;958f
	ld (hl),b		;9590
	jp p,0f108h		;9591
	ld d,d			;9594
	out (093h),a		;9595
	jp nc,0a5b3h		;9597
	and c			;959a
	pop bc			;959b
	and e			;959c
	sub l			;959d
	out (093h),a		;959e
	jp nc,0a5b3h		;95a0
	call pe,005eah		;95a3
	add a,b			;95a6
	sub b			;95a7
	and l			;95a8
	jp pe,0eb0bh		;95a9
	ld b,h			;95ac
	ld (hl),b		;95ad
	pop de			;95ae
l95afh:
	dec h			;95af
	out (093h),a		;95b0
	jp nc,0a5b3h		;95b2
	and c			;95b5
	pop bc			;95b6
	and e			;95b7
	sub l			;95b8
	jp nc,0d193h		;95b9
	inc bc			;95bc
	ld b,l			;95bd
	ret m			;95be
	dec d			;95bf
	pop bc			;95c0
	ex de,hl		;95c1
	daa			;95c2
	jr nz,l95afh		;95c3
	ld a,(bc)		;95c5
	call nc,0d390h		;95c6
	djnz l960bh		;95c9
	ld (hl),b		;95cb
	sub b			;95cc
	jp nc,04010h		;95cd
	ld (hl),b		;95d0
	sub b			;95d1
	pop de			;95d2
	djnz l9615h		;95d3
	ld (hl),b		;95d5
	defb 0fdh,0a9h,0b4h ;illegal sequence	;95d6
	cp 004h			;95d9
	jp (hl)			;95db
	ld b,0d4h		;95dc
	sub a			;95de
	sub a			;95df
l95e0h:
	sub a			;95e0
	sub a			;95e1
	sub a			;95e2
	sub a			;95e3
	cp 001h			;95e4
	rst 8			;95e6
	jp nz,0feffh		;95e7
	ld bc,006e9h		;95ea
	jp 004e9h		;95ed
	xor 001h		;95f0
	ex de,hl		;95f2
	add a,a			;95f3
	djnz l95e0h		;95f4
	ld b,0edh		;95f6
	inc b			;95f8
	out (071h),a		;95f9
	jp nc,00121h		;95fb
	ld (hl),c		;95fe
	ld hl,021d1h		;95ff
	out (061h),a		;9602
	jp nc,0d311h		;9604
	or c			;9607
	jp nc,01161h		;9608
l960bh:
	ret nc			;960b
	ld de,011d1h		;960c
	or c			;960f
	ret nc			;9610
	ld de,0b161h		;9611
	ret nc			;9614
l9615h:
	ld de,01161h		;9615
	pop de			;9618
	or c			;9619
	ret nc			;961a
	ld h,c			;961b
	ld de,0b1d1h		;961c
	push af			;961f
	ret nc			;9620
	ld d,c			;9621
	ld bc,0a1d1h		;9622
	ei			;9625
	inc b			;9626
	pop af			;9627
	ld d,h			;9628
	jp p,0e90ah		;9629
l962ch:
	ld b,0d1h		;962c
	sbc a,e			;962e
	call pe,001eah		;962f
	di			;9632
	sub d			;9633
	rst 38h			;9634
	cp 001h			;9635
	jp (hl)			;9637
	ld b,0c1h		;9638
	jp (hl)			;963a
	inc b			;963b
	xor 001h		;963c
	ex de,hl		;963e
	add a,a			;963f
	djnz l962ch		;9640
	ex af,af'		;9642
	defb 0edh ;next byte illegal after ed	;9643
	dec b			;9644
	out (071h),a		;9645
	jp nc,00121h		;9647
	ld (hl),c		;964a
	ld hl,021d1h		;964b
	out (061h),a		;964e
	jp nc,0d311h		;9650
	or c			;9653
	jp nc,01161h		;9654
	ret nc			;9657
	ld de,011d1h		;9658
	or c			;965b
	ret nc			;965c
	ld de,0b161h		;965d
	ret nc			;9660
	ld de,01161h		;9661
	pop de			;9664
	or c			;9665
	ret nc			;9666
	ld h,c			;9667
	ld de,0b1d1h		;9668
	push af			;966b
	ret nc			;966c
	ld d,c			;966d
	ld bc,0a1d1h		;966e
	ei			;9671
	inc b			;9672
	jp (hl)			;9673
	ld b,0f1h		;9674
	ld b,e			;9676
	jp p,0d10ah		;9677
	sbc a,l			;967a
	call pe,001eah		;967b
	di			;967e
	sub d			;967f
	rst 38h			;9680
	cp 001h			;9681
	ret m			;9683
	inc d			;9684
	jp (hl)			;9685
	ld b,0ddh		;9686
	dec b			;9688
	ld d,e			;9689
	jp pe,0db0fh		;968a
	ld bc,007d4h		;968d
	rlca			;9690
	rlca			;9691
	rlca			;9692
	rlca			;9693
	rlca			;9694
	call pe,009eah		;9695
	ret m			;9698
	add a,b			;9699
	jp nz,00fd4h		;969a
	ret m			;969d
	ld h,0ech		;969e
	jp pe,00201h		;96a0
	rst 38h			;96a3
	cp 001h			;96a4
	ret m			;96a6
	ld d,h			;96a7
	jp (hl)			;96a8
	inc b			;96a9
	ex de,hl		;96aa
	add a,a			;96ab
	ld h,d			;96ac
	jp pe,0ed0ch		;96ad
	ld a,(bc)		;96b0
	call nc,0d371h		;96b1
	ld hl,07101h		;96b4
	ld hl,021d2h		;96b7
	call nc,0d361h		;96ba
	ld de,0b1d4h		;96bd
	out (061h),a		;96c0
	ld de,011d2h		;96c2
	out (011h),a		;96c5
	or c			;96c7
	jp nc,06111h		;96c8
	or c			;96cb
	pop de			;96cc
	ld de,01161h		;96cd
	jp nc,0d1b1h		;96d0
	ld h,c			;96d3
	ld de,0b1d2h		;96d4
	jp pe,0ed09h		;96d7
	rlca			;96da
	push af			;96db
	pop de			;96dc
	ld d,c			;96dd
	ld bc,0a1d2h		;96de
	ei			;96e1
	inc b			;96e2
	ret m			;96e3
	ld a,(bc)		;96e4
	jp (hl)			;96e5
	ld b,0f2h		;96e6
	dec d			;96e8
	pop af			;96e9
	ld b,h			;96ea
	jp pe,0eb0bh		;96eb
	add a,(hl)		;96ee
	ld b,b			;96ef
	sub 003h		;96f0
	inc bc			;96f2
	pop de			;96f3
	sbc a,a			;96f4
	ret c			;96f5
	di			;96f6
	call pe,001eah		;96f7
	sub d			;96fa
	rst 38h			;96fb
	cp 001h			;96fc
l96feh:
	jp (hl)			;96fe
	ld b,0eeh		;96ff
	ex af,af'		;9701
	ret m			;9702
	add a,c			;9703
	add a,0ech		;9704
	jp pe,0d403h		;9706
	inc bc			;9709
	rst 28h			;970a
	ret nz			;970b
	xor 004h		;970c
	ret m			;970e
	ld (bc),a		;970f
	ex de,hl		;9710
	daa			;9711
	jr nz,l96feh		;9712
	ex af,af'		;9714
	jp p,0f115h		;9715
	ld b,h			;9718
	sub 002h		;9719
	ld (bc),a		;971b
	jp (hl)			;971c
	inc b			;971d
	jp nc,07121h		;971e
	pop de			;9721
	ld hl,006e9h		;9722
	rla			;9725
l9726h:
	jp nc,0e9bbh		;9726
	inc b			;9729
	or e			;972a
	jp (hl)			;972b
	ld b,0afh		;972c
	call pe,004e9h		;972e
	jp pe,0a101h		;9731
	ret m			;9734
	inc d			;9735
	jp (hl)			;9736
	ld b,0ebh		;9737
	and a			;9739
	djnz l9726h		;973a
	ld b,0edh		;973c
	inc b			;973e
	jp nc,0ec9fh		;973f
	jp pe,0f301h		;9742
	ret c			;9745
	sub c			;9746
	rst 38h			;9747
	cp 001h			;9748
	jp (hl)			;974a
	ld b,0f8h		;974b
	add a,c			;974d
	add a,0ech		;974e
	jp pe,0d403h		;9750
	inc bc			;9753
	ret m			;9754
	ld (bc),a		;9755
	ex de,hl		;9756
	ld d,d			;9757
	ld b,b			;9758
	jp pe,0db0dh		;9759
	ld bc,015f2h		;975c
	pop af			;975f
	ld b,h			;9760
	sub 002h		;9761
	ld (bc),a		;9763
	jp (hl)			;9764
	inc b			;9765
	out (091h),a		;9766
	jp nc,09121h		;9768
	jp (hl)			;976b
	ld b,087h		;976c
	ld l,e			;976e
	jp (hl)			;976f
	inc b			;9770
	ld h,e			;9771
	jp nc,006e9h		;9772
	ld e,a			;9775
	call pe,002eah		;9776
	jp (hl)			;9779
	inc b			;977a
	ld d,c			;977b
	ret m			;977c
	inc d			;977d
	ex de,hl		;977e
	ld b,d			;977f
	ld b,b			;9780
	jp pe,0e90eh		;9781
	ld b,0ebh		;9784
	and (hl)		;9786
	ld b,b			;9787
	defb 0edh ;next byte illegal after ed	;9788
	dec b			;9789
l978ah:
	jp nc,0ec9fh		;978a
	jp pe,0f301h		;978d
	ret c			;9790
	sub d			;9791
	rst 38h			;9792
	cp 001h			;9793
	ret m			;9795
	ld (bc),a		;9796
	jp (hl)			;9797
	ld b,0c3h		;9798
	ex de,hl		;979a
	ld d,d			;979b
	ld b,b			;979c
	jp pe,0db0dh		;979d
l97a0h:
	ld bc,015f2h		;97a0
	pop af			;97a3
	ld b,h			;97a4
	sub 002h		;97a5
	ld (bc),a		;97a7
	jp (hl)			;97a8
	inc b			;97a9
l97aah:
	jp nc,07121h		;97aa
	pop de			;97ad
	ld hl,006e9h		;97ae
	rla			;97b1
	jp nc,0e9bbh		;97b2
	inc b			;97b5
	or e			;97b6
	jp (hl)			;97b7
	ld b,0afh		;97b8
l97bah:
	call pe,002eah		;97ba
	jp (hl)			;97bd
	inc b			;97be
	and c			;97bf
	ret m			;97c0
	inc d			;97c1
	jp (hl)			;97c2
	ld b,0eah		;97c3
	inc c			;97c5
	ex de,hl		;97c6
	and (hl)		;97c7
	ld b,b			;97c8
	jp pe,0ed0eh		;97c9
	dec b			;97cc
	jp nc,0ec2fh		;97cd
l97d0h:
	jp pe,0f301h		;97d0
	ret c			;97d3
l97d4h:
	ld (0ffffh),hl		;97d4
	cp 001h			;97d7
	pop af			;97d9
	ld h,d			;97da
l97dbh:
	jp (hl)			;97db
	add hl,bc		;97dc
	jp pe,0d002h		;97dd
	ld c,a			;97e0
	ld c,a			;97e1
	ld c,a			;97e2
	ld c,a			;97e3
	cp 001h			;97e4
l97e6h:
	jp (hl)			;97e6
	add hl,bc		;97e7
	jp nz,093ebh		;97e8
	djnz l97dbh		;97eb
	inc bc			;97ed
	jp pe,0ed05h		;97ee
	inc bc			;97f1
	push af			;97f2
	jp nc,0b090h		;97f3
	sub b			;97f6
	pop de			;97f7
	jr nz,l978ah		;97f8
	ld b,b			;97fa
	ld h,b			;97fb
	jr nz,l97d0h		;97fc
	sub b			;97fe
	or b			;97ff
	sub b			;9800
	pop de			;9801
	jr nz,$-110		;9802
	ld b,b			;9804
	ld h,b			;9805
	jr nz,$-3		;9806
	rlca			;9808
	jp nc,0b090h		;9809
	sub b			;980c
	pop de			;980d
	jr nz,l97a0h		;980e
	ld b,b			;9810
	ld h,b			;9811
	jr nz,l97e6h		;9812
	sub b			;9814
	or b			;9815
	sub b			;9816
	pop de			;9817
	jr nz,l97aah		;9818
	rst 28h			;981a
	cp 004h			;981b
	ret nc			;981d
	sub c			;981e
	sub c			;981f
	nop			;9820
	nop			;9821
	ld de,0fe91h		;9822
	djnz l97bah		;9825
	cp 004h			;9827
	nop			;9829
	nop			;982a
	sub c			;982b
	sub c			;982c
	ld bc,l9111h		;982d
	cp 010h			;9830
	sub e			;9832
	sub c			;9833
	cp 004h			;9834
	ret nc			;9836
	jp (hl)			;9837
l9838h:
	add hl,bc		;9838
	push af			;9839
	sub c			;983a
	ld bc,l9131h		;983b
	ld bc,0fe91h		;983e
	djnz l97d4h		;9841
	cp 004h			;9843
	ld bc,00ffbh		;9845
	sub c			;9848
	ld bc,010feh		;9849
	sub c			;984c
	cp 004h			;984d
	sub c			;984f
	ld bc,0fe91h		;9850
	djnz $-110		;9853
	sub b			;9855
	sub c			;9856
	cp 004h			;9857
	ret nc			;9859
	jp (hl)			;985a
	add hl,bc		;985b
	push af			;985c
	sub c			;985d
	ld de,010feh		;985e
	sub c			;9861
	cp 004h			;9862
	nop			;9864
	sub b			;9865
l9866h:
	ld bc,03091h		;9866
	sub b			;9869
	nop			;986a
	sub c			;986b
	nop			;986c
	ld de,010feh		;986d
l9870h:
	sub c			;9870
	cp 004h			;9871
	sub c			;9873
	sub c			;9874
	sub c			;9875
	ld sp,0fb91h		;9876
	ld (bc),a		;9879
	sub c			;987a
	ld bc,010feh		;987b
	sub c			;987e
	cp 004h			;987f
	nop			;9881
	sub b			;9882
	ld bc,03091h		;9883
l9886h:
	sub b			;9886
	nop			;9887
	sub b			;9888
	nop			;9889
	sub b			;988a
	sub c			;988b
	cp 010h			;988c
	sub c			;988e
	cp 004h			;988f
	sub c			;9891
	cp 010h			;9892
	sub c			;9894
	sub c			;9895
	sub b			;9896
	sub b			;9897
	sub c			;9898
	push af			;9899
	cp 010h			;989a
l989ch:
	jp (hl)			;989c
	add hl,bc		;989d
	sub c			;989e
	ld hl,02191h		;989f
	sub b			;98a2
	cp 004h			;98a3
	sub b			;98a5
	djnz l9838h		;98a6
	cp 010h			;98a8
	sub b			;98aa
	cp 004h			;98ab
	sub b			;98ad
	djnz $-110		;98ae
l98b0h:
	ei			;98b0
	djnz l98b0h		;98b1
l98b3h:
	call po,0feb7h		;98b3
	ld bc,062f1h		;98b6
	jp (hl)			;98b9
	add hl,bc		;98ba
	jp pe,0d002h		;98bb
	ld l,a			;98be
	ld l,a			;98bf
	ld l,a			;98c0
	ld l,a			;98c1
l98c2h:
	jp (hl)			;98c2
	add hl,bc		;98c3
	ex de,hl		;98c4
	sub e			;98c5
	ld hl,001eeh		;98c6
	pop bc			;98c9
	jp pe,0ed07h		;98ca
	inc b			;98cd
	push af			;98ce
l98cfh:
	jp nc,0b090h		;98cf
l98d2h:
	sub b			;98d2
	pop de			;98d3
	jr nz,l9866h		;98d4
	ld b,b			;98d6
	ld h,b			;98d7
	jr nz,$-44		;98d8
	sub b			;98da
	or b			;98db
	sub b			;98dc
	pop de			;98dd
	jr nz,l9870h		;98de
	ld b,b			;98e0
	ld h,b			;98e1
	jr nz,$-3		;98e2
	add hl,bc		;98e4
	jp nc,0b090h		;98e5
	sub b			;98e8
	pop de			;98e9
	jr nz,$-110		;98ea
	ld b,b			;98ec
	ld h,b			;98ed
	jr nz,l98c2h		;98ee
	sub b			;98f0
	or b			;98f1
	sub b			;98f2
	pop de			;98f3
	jr nz,l9886h		;98f4
	ld b,b			;98f6
	rst 28h			;98f7
	jp (hl)			;98f8
	add hl,bc		;98f9
	xor 001h		;98fa
	pop bc			;98fc
	jp pe,0ed07h		;98fd
	inc b			;9900
	ex de,hl		;9901
	sub e			;9902
	ld hl,0d2f5h		;9903
	sub b			;9906
	or b			;9907
	sub b			;9908
	pop de			;9909
	jr nz,l989ch		;990a
	ld b,b			;990c
	ld h,b			;990d
	jr nz,$-3		;990e
	rrca			;9910
l9911h:
	jp nc,0b0a0h		;9911
	and b			;9914
	pop de			;9915
	jr nz,$-94		;9916
	ld b,b			;9918
	ld h,b			;9919
	jr nz,l9911h		;991a
	jp nc,0b090h		;991c
	sub b			;991f
	pop de			;9920
l9921h:
	jr nz,l98b3h		;9921
	ld b,b			;9923
	ld h,b			;9924
	jr nz,$-3		;9925
	rrca			;9927
	jp nc,0b0a0h		;9928
	and b			;992b
	pop de			;992c
	jr nz,l98cfh		;992d
	ld b,b			;992f
	rst 28h			;9930
	jp (hl)			;9931
	add hl,bc		;9932
	xor 001h		;9933
	pop bc			;9935
	jp pe,0ed08h		;9936
	inc b			;9939
	ex de,hl		;993a
	sub e			;993b
	ld hl,0d2f5h		;993c
	sub b			;993f
	or b			;9940
	sub b			;9941
	pop de			;9942
	jr nz,$-110		;9943
	ld b,b			;9945
	ld h,b			;9946
	jr nz,$-3		;9947
	ld b,0f5h		;9949
	jp nc,0b080h		;994b
	add a,b			;994e
	pop de			;994f
	jr nz,l98d2h		;9950
	ld b,b			;9952
	ld h,b			;9953
	jr nz,$-3		;9954
	ld (bc),a		;9956
	push af			;9957
	jp nc,0b090h		;9958
	sub b			;995b
	pop de			;995c
	jr nz,$-110		;995d
	ld b,b			;995f
	ld h,b			;9960
	jr nz,$-3		;9961
	inc bc			;9963
	jp nc,0b090h		;9964
	sub b			;9967
	pop de			;9968
	jr nz,$-110		;9969
	ld b,b			;996b
	jp (hl)			;996c
	add hl,bc		;996d
	jp pe,0ee08h		;996e
	ld bc,0ebc1h		;9971
	sub e			;9974
	ld hl,006edh		;9975
	pop de			;9978
	push af			;9979
	jr nz,l999ch		;997a
	sub b			;997c
	sub b			;997d
	ret nc			;997e
	jr nz,$+34		;997f
	pop de			;9981
	sub b			;9982
	sub b			;9983
	ei			;9984
	rra			;9985
	jr nz,l99a8h		;9986
	sub b			;9988
	sub b			;9989
	ret nc			;998a
	jr nz,l99adh		;998b
	defb 0fdh,0c2h,0b8h ;illegal sequence	;998d
	cp 001h			;9990
	pop af			;9992
	ld h,d			;9993
	jp (hl)			;9994
	add hl,bc		;9995
	jp pe,0d002h		;9996
	cpl			;9999
	cpl			;999a
	cpl			;999b
l999ch:
	cpl			;999c
	jp (hl)			;999d
	add hl,bc		;999e
	jp pe,0ed07h		;999f
	inc bc			;99a2
	ex de,hl		;99a3
	add a,d			;99a4
	ld sp,00af2h		;99a5
l99a8h:
	pop af			;99a8
	ld h,c			;99a9
	ret nc			;99aa
	dec d			;99ab
	dec h			;99ac
l99adh:
	ld h,l			;99ad
	sub l			;99ae
	call pe,004e9h		;99af
	jp pe,09803h		;99b2
l99b5h:
	jp pe,0eb07h		;99b5
l99b8h:
	add a,d			;99b8
	ld sp,009e9h		;99b9
	inc de			;99bc
	sub l			;99bd
	or l			;99be
	ld l,e			;99bf
	pop de			;99c0
	or d			;99c1
	ret nc			;99c2
	ld (095b1h),hl		;99c3
	ld h,l			;99c6
	inc hl			;99c7
	ld b,l			;99c8
	dec d			;99c9
	pop de			;99ca
	sub e			;99cb
	cp c			;99cc
	ret nc			;99cd
	ld de,l9921h		;99ce
	pop de			;99d1
l99d2h:
	or d			;99d2
	ret nc			;99d3
	ld (095b1h),hl		;99d4
	ld h,l			;99d7
	inc hl			;99d8
	ld b,l			;99d9
	dec d			;99da
	ld h,e			;99db
	jp (hl)			;99dc
	add hl,bc		;99dd
l99deh:
	xor 003h		;99de
	jp nz,005eah		;99e0
	defb 0edh ;next byte illegal after ed	;99e3
	inc bc			;99e4
	ex de,hl		;99e5
	sub e			;99e6
	djnz l99deh		;99e7
	jp nc,0b090h		;99e9
	sub b			;99ec
	pop de			;99ed
	jr nz,$-110		;99ee
	ld b,b			;99f0
	ld h,b			;99f1
	jr nz,$-3		;99f2
	rrca			;99f4
l99f5h:
	jp nc,0b0a0h		;99f5
	and b			;99f8
	pop de			;99f9
	jr nz,l999ch		;99fa
	ld b,b			;99fc
	ld h,b			;99fd
	jr nz,l99f5h		;99fe
	jp nc,0b090h		;9a00
	sub b			;9a03
	pop de			;9a04
	jr nz,$-110		;9a05
	ld b,b			;9a07
	ld h,b			;9a08
	jr nz,$-3		;9a09
	rrca			;9a0b
	jp nc,0b0a0h		;9a0c
	and b			;9a0f
	pop de			;9a10
	jr nz,$-94		;9a11
	rst 28h			;9a13
	jp (hl)			;9a14
	add hl,bc		;9a15
l9a16h:
	xor 003h		;9a16
	jp nz,006eah		;9a18
	defb 0edh ;next byte illegal after ed	;9a1b
	inc bc			;9a1c
	ex de,hl		;9a1d
	sub e			;9a1e
	djnz l9a16h		;9a1f
	jp nc,0b090h		;9a21
	sub b			;9a24
	pop de			;9a25
	jr nz,l99b8h		;9a26
	ld b,b			;9a28
	ld h,b			;9a29
	jr nz,$-3		;9a2a
	ld b,0f5h		;9a2c
	jp nc,0b080h		;9a2e
	add a,b			;9a31
	pop de			;9a32
	jr nz,l99b5h		;9a33
	ld b,b			;9a35
	ld h,b			;9a36
	jr nz,$-3		;9a37
	ld (bc),a		;9a39
	push af			;9a3a
	jp nc,0b090h		;9a3b
	sub b			;9a3e
	pop de			;9a3f
	jr nz,l99d2h		;9a40
	ld b,b			;9a42
	ld h,b			;9a43
	jr nz,$-3		;9a44
l9a46h:
	inc bc			;9a46
	jp nc,0b090h		;9a47
	sub b			;9a4a
	pop de			;9a4b
	jr nz,l99deh		;9a4c
	jp (hl)			;9a4e
	add hl,bc		;9a4f
	jp pe,0ee06h		;9a50
	ld (bc),a		;9a53
	jp nz,093ebh		;9a54
	djnz l9a46h		;9a57
	inc b			;9a59
	pop de			;9a5a
	push af			;9a5b
	jr nz,l9a7eh		;9a5c
	sub b			;9a5e
	sub b			;9a5f
	ret nc			;9a60
	jr nz,l9a83h		;9a61
	pop de			;9a63
	sub b			;9a64
	sub b			;9a65
	ei			;9a66
	rra			;9a67
	jr nz,l9a8ah		;9a68
	sub b			;9a6a
	sub b			;9a6b
l9a6ch:
	ret nc			;9a6c
	jr nz,l9a6ch		;9a6d
	sbc a,l			;9a6f
	cp c			;9a70
	cp 001h			;9a71
	ret m			;9a73
	ld d,h			;9a74
	jp (hl)			;9a75
	add hl,bc		;9a76
	defb 0ddh,084h ;add a,ixh	;9a77
	and l			;9a79
	jp pe,0db0ch		;9a7a
	inc b			;9a7d
l9a7eh:
	defb 0edh ;next byte illegal after ed	;9a7e
	add hl,bc		;9a7f
	push af			;9a80
	out (090h),a		;9a81
l9a83h:
	or b			;9a83
	sub b			;9a84
	jp nc,l9020h		;9a85
	ld b,b			;9a88
	ld h,b			;9a89
l9a8ah:
	jr nz,$-3		;9a8a
	ex af,af'		;9a8c
	ret m			;9a8d
	inc d			;9a8e
	jp (hl)			;9a8f
	add hl,bc		;9a90
	jp pe,0eb0fh		;9a91
	ld (0f570h),a		;9a94
	push de			;9a97
	or e			;9a98
	or e			;9a99
	jp (hl)			;9a9a
	ld (bc),a		;9a9b
	and c			;9a9c
	or (hl)			;9a9d
	jp (hl)			;9a9e
	add hl,bc		;9a9f
	ld b,c			;9aa0
	ld h,c			;9aa1
	call nc,0fb21h		;9aa2
	ld (bc),a		;9aa5
	push de			;9aa6
	ld (hl),e		;9aa7
	ld (hl),e		;9aa8
	jp (hl)			;9aa9
	ld (bc),a		;9aaa
	ld h,c			;9aab
	halt			;9aac
	jp (hl)			;9aad
	add hl,bc		;9aae
	call nc,0d521h		;9aaf
	ld (hl),c		;9ab2
	call nc,0d571h		;9ab3
	ld (hl),e		;9ab6
	ld (hl),e		;9ab7
	ld (hl),c		;9ab8
	call nc,0d571h		;9ab9
	ld h,c			;9abc
	call nc,0d561h		;9abd
	ld b,e			;9ac0
	ld b,e			;9ac1
	jp (hl)			;9ac2
	ld (bc),a		;9ac3
	ld sp,0e946h		;9ac4
	add hl,bc		;9ac7
	sub c			;9ac8
	or c			;9ac9
	ld b,c			;9aca
	ld h,e			;9acb
	ld h,e			;9acc
	jp (hl)			;9acd
	ld (bc),a		;9ace
	ld d,c			;9acf
	ld h,(hl)		;9ad0
	jp (hl)			;9ad1
	add hl,bc		;9ad2
	call nc,0d511h		;9ad3
	ld h,c			;9ad6
	call nc,0d561h		;9ad7
	or e			;9ada
	or e			;9adb
	jp (hl)			;9adc
	ld (bc),a		;9add
	and c			;9ade
	or (hl)			;9adf
	jp (hl)			;9ae0
	add hl,bc		;9ae1
	ld b,c			;9ae2
	ld h,c			;9ae3
	call nc,0d521h		;9ae4
	or e			;9ae7
	or e			;9ae8
	or c			;9ae9
	call nc,0d5b1h		;9aea
	ld h,c			;9aed
	call nc,0d561h		;9aee
	ld b,e			;9af1
	ld b,e			;9af2
	ld b,c			;9af3
	sub c			;9af4
	or c			;9af5
	ld b,c			;9af6
	ld h,e			;9af7
	ld h,e			;9af8
	jp (hl)			;9af9
	ld (bc),a		;9afa
	ld b,c			;9afb
	ld d,c			;9afc
	ld h,h			;9afd
	call nc,01601h		;9afe
	push de			;9b01
	ld b,c			;9b02
	ld d,c			;9b03
	ld h,h			;9b04
	call nc,06651h		;9b05
	ret m			;9b08
	inc hl			;9b09
	jp (hl)			;9b0a
	add hl,bc		;9b0b
	jp pe,0eb0fh		;9b0c
	ld (0f550h),a		;9b0f
	push de			;9b12
	or e			;9b13
	call nc,0d5b0h		;9b14
	or b			;9b17
	sub b			;9b18
	or b			;9b19
	jp nz,0d4b1h		;9b1a
	or b			;9b1d
	push de			;9b1e
	sub c			;9b1f
	or e			;9b20
	call nc,0d5b0h		;9b21
	or b			;9b24
	sub b			;9b25
	or b			;9b26
	jp nz,0d4b1h		;9b27
	or b			;9b2a
	push de			;9b2b
	sub c			;9b2c
	ld h,e			;9b2d
	call nc,0d560h		;9b2e
	ld h,b			;9b31
	ld b,b			;9b32
	ld h,b			;9b33
	jp nz,0d461h		;9b34
l9b37h:
	ld h,b			;9b37
	push de			;9b38
	ld b,c			;9b39
	ld h,e			;9b3a
	call nc,0d560h		;9b3b
	ld h,b			;9b3e
	ld b,b			;9b3f
	ld h,c			;9b40
	sub c			;9b41
	or c			;9b42
	call nc,05160h		;9b43
	ld b,e			;9b46
	out (040h),a		;9b47
	call nc,02040h		;9b49
	ld b,b			;9b4c
	jp nz,0d341h		;9b4d
	ld b,b			;9b50
	push de			;9b51
	or c			;9b52
	sub e			;9b53
	call nc,0d590h		;9b54
	sub b			;9b57
	ld (hl),b		;9b58
	sub c			;9b59
	or c			;9b5a
	call nc,04011h		;9b5b
	ld sp,0d323h		;9b5e
	jr nz,l9b37h		;9b61
	jr nz,$+18		;9b63
	jr nz,$-60		;9b65
	ld hl,020d3h		;9b67
	push de			;9b6a
	sub c			;9b6b
	ld b,d			;9b6c
	or c			;9b6d
	call nc,0d540h		;9b6e
	or c			;9b71
	ld h,d			;9b72
	call nc,06011h		;9b73
	ld de,002fbh		;9b76
	ret m			;9b79
	inc hl			;9b7a
	jp (hl)			;9b7b
	add hl,bc		;9b7c
	jp pe,0eb0fh		;9b7d
	ld d,d			;9b80
	ld h,b			;9b81
	in a,(001h)		;9b82
	call nc,0d343h		;9b84
	ld b,b			;9b87
	push de			;9b88
	or c			;9b89
	call nc,04122h		;9b8a
	push de			;9b8d
	ld b,b			;9b8e
	push de			;9b8f
	or c			;9b90
	call nc,0d561h		;9b91
	sub b			;9b94
	or c			;9b95
	call nc,06111h		;9b96
	ld de,0d361h		;9b99
	ld de,061d4h		;9b9c
	ld (hl),e		;9b9f
	out (070h),a		;9ba0
	call nc,06221h		;9ba2
	ld (hl),d		;9ba5
	out (070h),a		;9ba6
	call nc,sub_8071h	;9ba8
	push de			;9bab
	add a,b			;9bac
	call nc,sub_8121h	;9bad
	push de			;9bb0
	add a,c			;9bb1
	call nc,sub_8121h	;9bb2
	out (021h),a		;9bb5
	call nc,0f581h		;9bb7
	push de			;9bba
	sub c			;9bbb
	call nc,0fb91h		;9bbc
	ld b,0d5h		;9bbf
	sub c			;9bc1
	sub c			;9bc2
	or c			;9bc3
	call nc,0f811h		;9bc4
	inc hl			;9bc7
	jp (hl)			;9bc8
	add hl,bc		;9bc9
	jp pe,0eb0fh		;9bca
	ld d,d			;9bcd
	ld h,b			;9bce
	in a,(002h)		;9bcf
	push af			;9bd1
	out (020h),a		;9bd2
	call nc,02021h		;9bd4
	out (020h),a		;9bd7
	call nc,02021h		;9bd9
	ld hl,061d4h		;9bdc
	sub c			;9bdf
	out (021h),a		;9be0
	out (090h),a		;9be2
	call nc,l9091h		;9be4
	out (090h),a		;9be7
	call nc,l9091h		;9be9
	sub c			;9bec
	ld b,c			;9bed
	push de			;9bee
	sub c			;9bef
	call nc,0d391h		;9bf0
	ld (hl),b		;9bf3
	call nc,07071h		;9bf4
	out (070h),a		;9bf7
	call nc,07071h		;9bf9
	ld (hl),c		;9bfc
	out (071h),a		;9bfd
	call nc,0d361h		;9bff
	ld hl,0d440h		;9c02
	ld b,c			;9c05
	ld b,b			;9c06
	out (040h),a		;9c07
	call nc,04041h		;9c09
	sub b			;9c0c
	push de			;9c0d
	sub c			;9c0e
	sub b			;9c0f
	call nc,0d590h		;9c10
	sub c			;9c13
	sub b			;9c14
	ei			;9c15
	inc b			;9c16
	defb 0fdh,08dh ;adc a,iyl	;9c17
	cp d			;9c19
	cp 001h			;9c1a
	ret m			;9c1c
	ld d,h			;9c1d
	xor 005h		;9c1e
	jp (hl)			;9c20
	add hl,bc		;9c21
	pop bc			;9c22
	defb 0ddh,085h ;add a,ixl	;9c23
	ld h,l			;9c25
	jp pe,0db06h		;9c26
	ld (bc),a		;9c29
	defb 0edh ;next byte illegal after ed	;9c2a
	dec b			;9c2b
	push af			;9c2c
	out (090h),a		;9c2d
	or b			;9c2f
	sub b			;9c30
	jp nc,l9020h		;9c31
	ld b,b			;9c34
	ld h,b			;9c35
	jr nz,$-3		;9c36
	rlca			;9c38
	out (090h),a		;9c39
	or b			;9c3b
	sub b			;9c3c
	jp nc,l9020h		;9c3d
	ld b,b			;9c40
	rst 28h			;9c41
	call c,001feh		;9c42
	ret m			;9c45
	ld d,h			;9c46
	jp (hl)			;9c47
	add hl,bc		;9c48
	defb 0ddh,084h ;add a,ixh	;9c49
	and l			;9c4b
	jp pe,0ed0ch		;9c4c
	add hl,bc		;9c4f
	in a,(004h)		;9c50
	push af			;9c52
	out (090h),a		;9c53
	or b			;9c55
	sub b			;9c56
	jp nc,l9020h		;9c57
	ld b,b			;9c5a
	ld h,b			;9c5b
	jr nz,$-3		;9c5c
	inc hl			;9c5e
l9c5fh:
	out (0a0h),a		;9c5f
	or b			;9c61
	and b			;9c62
	jp nc,0a020h		;9c63
	ld b,b			;9c66
	ld h,b			;9c67
	jr nz,l9c5fh		;9c68
	out (090h),a		;9c6a
	or b			;9c6c
	sub b			;9c6d
	jp nc,l9020h		;9c6e
	ld b,b			;9c71
	ld h,b			;9c72
	jr nz,$-3		;9c73
	rrca			;9c75
l9c76h:
	out (0a0h),a		;9c76
	or b			;9c78
	and b			;9c79
	jp nc,0a020h		;9c7a
	ld b,b			;9c7d
	ld h,b			;9c7e
	jr nz,l9c76h		;9c7f
	out (090h),a		;9c81
	or b			;9c83
	sub b			;9c84
	jp nc,l9020h		;9c85
	ld b,b			;9c88
	ld h,b			;9c89
	jr nz,$-3		;9c8a
	ld b,0f5h		;9c8c
	out (080h),a		;9c8e
	or b			;9c90
	add a,b			;9c91
	jp nc,08020h		;9c92
	ld b,b			;9c95
	ld h,b			;9c96
	jr nz,$-3		;9c97
	ld (bc),a		;9c99
	push af			;9c9a
	out (090h),a		;9c9b
	or b			;9c9d
	sub b			;9c9e
	jp nc,l9020h		;9c9f
	ld b,b			;9ca2
	ld h,b			;9ca3
	jr nz,$-3		;9ca4
	inc b			;9ca6
	push af			;9ca7
	jp nc,02020h		;9ca8
	sub b			;9cab
	sub b			;9cac
	pop de			;9cad
	jr nz,l9cd0h		;9cae
	jp nc,l9090h		;9cb0
l9cb3h:
	ei			;9cb3
	jr nz,l9cb3h		;9cb4
	ld b,e			;9cb6
	cp h			;9cb7
	cp 001h			;9cb8
	ret m			;9cba
	ld d,h			;9cbb
	xor 003h		;9cbc
	jp (hl)			;9cbe
	add hl,bc		;9cbf
	ret nz			;9cc0
	defb 0ddh,006h,065h ;illegal sequence	;9cc1
	jp pe,0db05h		;9cc4
	ld (bc),a		;9cc7
	push af			;9cc8
	out (090h),a		;9cc9
	or b			;9ccb
	sub b			;9ccc
	jp nc,l9020h		;9ccd
l9cd0h:
	ld b,b			;9cd0
	ld h,b			;9cd1
	jr nz,$-3		;9cd2
	ld b,0d3h		;9cd4
	sub b			;9cd6
	or b			;9cd7
	sub b			;9cd8
	jp nc,l9020h		;9cd9
	ld b,b			;9cdc
	ld h,b			;9cdd
	ret m			;9cde
	dec b			;9cdf
	rst 28h			;9ce0
	call pe,00beah		;9ce1
	jp (hl)			;9ce4
	inc b			;9ce5
	out (040h),a		;9ce6
	jr nc,$+34		;9ce8
	djnz l9cech		;9cea
l9cech:
	call nc,0a0b0h		;9cec
	sub b			;9cef
	add a,b			;9cf0
	ld (hl),b		;9cf1
	ld h,b			;9cf2
l9cf3h:
	ld d,b			;9cf3
	ld b,b			;9cf4
	jr nc,l9d17h		;9cf5
	djnz l9cf9h		;9cf7
l9cf9h:
	push de			;9cf9
	or b			;9cfa
	rst 28h			;9cfb
	cp 001h			;9cfc
	ret m			;9cfe
	add hl,bc		;9cff
	xor 001h		;9d00
	jp (hl)			;9d02
	add hl,bc		;9d03
	jp nz,l82ebh		;9d04
	djnz l9cf3h		;9d07
	ld b,0edh		;9d09
	inc b			;9d0b
	jp p,0f10ah		;9d0c
	ld (hl),c		;9d0f
	pop de			;9d10
	dec d			;9d11
	dec h			;9d12
	ld h,l			;9d13
	sub h			;9d14
	jp (hl)			;9d15
	inc b			;9d16
l9d17h:
	ret nc			;9d17
	nop			;9d18
	djnz l9d41h		;9d19
	jp (hl)			;9d1b
	add hl,bc		;9d1c
	inc de			;9d1d
	pop de			;9d1e
	sub l			;9d1f
	or l			;9d20
	ld l,e			;9d21
	jp nc,0d1b2h		;9d22
	ld (095b1h),hl		;9d25
	ld h,l			;9d28
	inc hl			;9d29
	ld b,l			;9d2a
	dec d			;9d2b
	jp nc,0b993h		;9d2c
	pop de			;9d2f
	ld de,l9921h		;9d30
	jp nc,0d1b2h		;9d33
	ld (095b1h),hl		;9d36
	ld h,l			;9d39
	inc hl			;9d3a
	ld b,l			;9d3b
	dec d			;9d3c
	ld h,c			;9d3d
	cp 001h			;9d3e
	ret m			;9d40
l9d41h:
	inc d			;9d41
l9d42h:
	xor 001h		;9d42
	jp (hl)			;9d44
	add hl,bc		;9d45
	push af			;9d46
	jp pe,0ed08h		;9d47
	rlca			;9d4a
	ex de,hl		;9d4b
	add a,e			;9d4c
	jr nz,l9d41h		;9d4d
	djnz l9d42h		;9d4f
	ld h,a			;9d51
	jp nz,0b9d3h		;9d52
	jp nc,02111h		;9d55
	ld l,e			;9d58
	ld b,c			;9d59
	ld h,e			;9d5a
	sub a			;9d5b
	sub c			;9d5c
	sub c			;9d5d
	or c			;9d5e
	ld c,a			;9d5f
	jp pe,0ec02h		;9d60
	ld b,c			;9d63
	jp pe,0eb08h		;9d64
	add a,e			;9d67
	jr nz,$+43		;9d68
	out (091h),a		;9d6a
	or c			;9d6c
	jp nc,0412bh		;9d6d
	ld h,c			;9d70
	dec de			;9d71
	out (0b1h),a		;9d72
	sub c			;9d74
	or l			;9d75
	jp nc,01123h		;9d76
	out (061h),a		;9d79
	and b			;9d7b
l9d7ch:
	ei			;9d7c
	ld (bc),a		;9d7d
	rst 28h			;9d7e
	cp 001h			;9d7f
	ret m			;9d81
	ld (bc),a		;9d82
	jp (hl)			;9d83
	ld (de),a		;9d84
l9d85h:
	ret nz			;9d85
	jp (hl)			;9d86
	add hl,bc		;9d87
	jp pe,0eb08h		;9d88
	rla			;9d8b
	jr nz,l9d7ch		;9d8c
	ld (bc),a		;9d8e
	sub 002h		;9d8f
	ld (bc),a		;9d91
	jp p,0f11ah		;9d92
	ld b,e			;9d95
	pop de			;9d96
	inc hl			;9d97
	inc de			;9d98
	jp nc,0d1b3h		;9d99
	ld (de),a		;9d9c
	jp nc,0d895h		;9d9d
	ret m			;9da0
	ld d,h			;9da1
	in a,(002h)		;9da2
	defb 0ddh,007h,054h ;illegal sequence	;9da4
	ld h,b			;9da7
	ld (hl),b		;9da8
	sbc a,b			;9da9
	call c,002f8h		;9daa
	sub 002h		;9dad
	ld (bc),a		;9daf
	ex de,hl		;9db0
	rla			;9db1
	jr nz,l9d85h		;9db2
	inc hl			;9db4
	jp nc,0b892h		;9db5
	pop de			;9db8
	or e			;9db9
	sub e			;9dba
	add a,e			;9dbb
	or e			;9dbc
	jp (hl)			;9dbd
	ld (de),a		;9dbe
	sbc a,(hl)		;9dbf
	rst 28h			;9dc0
	cp 001h			;9dc1
l9dc3h:
	push af			;9dc3
	ret m			;9dc4
	ld (bc),a		;9dc5
	jp (hl)			;9dc6
	add hl,bc		;9dc7
	xor 002h		;9dc8
	pop bc			;9dca
	jp pe,0eb09h		;9dcb
	rla			;9dce
	djnz l9dc3h		;9dcf
	ld a,(de)		;9dd1
	pop af			;9dd2
	ld d,(hl)		;9dd3
	jp nc,0f897h		;9dd4
	dec d			;9dd7
	ld h,b			;9dd8
	ld (hl),b		;9dd9
	sub l			;9dda
	ret m			;9ddb
	ld (bc),a		;9ddc
	ld (hl),e		;9ddd
	ld h,e			;9dde
	ld b,e			;9ddf
	ld h,e			;9de0
	cpl			;9de1
	ret m			;9de2
	dec d			;9de3
	jp pe,0eb0ah		;9de4
	ld b,h			;9de7
	ld b,b			;9de8
	out (0b2h),a		;9de9
	jp nc,02212h		;9deb
	ld b,d			;9dee
	ld h,c			;9def
	ei			;9df0
	inc b			;9df1
	rst 28h			;9df2
	ret c			;9df3
	defb 0fdh,0fch,0bch ;illegal sequence	;9df4
	cp 001h			;9df7
	ret m			;9df9
	dec b			;9dfa
	pop af			;9dfb
	ld (hl),d		;9dfc
	jp (hl)			;9dfd
	add hl,bc		;9dfe
	jp pe,0d102h		;9dff
	cp a			;9e02
	cp a			;9e03
	cp a			;9e04
	cp a			;9e05
	cp 001h			;9e06
	ret m			;9e08
	add hl,bc		;9e09
	jp (hl)			;9e0a
	add hl,bc		;9e0b
	jp pe,0ed0eh		;9e0c
	add hl,bc		;9e0f
	ex de,hl		;9e10
	add a,d			;9e11
	ld d,b			;9e12
	jp p,0f10ah		;9e13
	ld h,d			;9e16
	pop de			;9e17
	dec d			;9e18
	dec h			;9e19
	ld h,l			;9e1a
	sub l			;9e1b
	jp (hl)			;9e1c
	inc b			;9e1d
	ret nc			;9e1e
	nop			;9e1f
	djnz l9e48h		;9e20
	jp (hl)			;9e22
	add hl,bc		;9e23
	inc de			;9e24
	pop de			;9e25
	sub l			;9e26
	or l			;9e27
	ld l,e			;9e28
	jp nc,0d1b2h		;9e29
	ld (095b1h),hl		;9e2c
	ld h,l			;9e2f
	inc hl			;9e30
	ld b,l			;9e31
	dec d			;9e32
	jp nc,0b993h		;9e33
	pop de			;9e36
	ld de,l9921h		;9e37
	jp nc,0d1b2h		;9e3a
	ld (095b1h),hl		;9e3d
	ld h,l			;9e40
	inc hl			;9e41
	ld b,l			;9e42
	dec d			;9e43
	ld h,e			;9e44
	cp 001h			;9e45
	ret m			;9e47
l9e48h:
	inc d			;9e48
	jp (hl)			;9e49
	add hl,bc		;9e4a
	push af			;9e4b
	jp pe,0ed0eh		;9e4c
	add hl,bc		;9e4f
	ex de,hl		;9e50
	add a,d			;9e51
	ld (hl),b		;9e52
	jp p,0f110h		;9e53
	ld h,a			;9e56
	out (0b9h),a		;9e57
	defb 0edh ;next byte illegal after ed	;9e59
	ex af,af'		;9e5a
	jp nc,02111h		;9e5b
	ld l,e			;9e5e
	ld b,c			;9e5f
	ld h,e			;9e60
	sub a			;9e61
	sub c			;9e62
	sub c			;9e63
	or c			;9e64
	ld c,a			;9e65
	jp pe,0ec03h		;9e66
	ld b,c			;9e69
	jp pe,0eb0eh		;9e6a
	add a,d			;9e6d
	ld (hl),b		;9e6e
	add hl,hl		;9e6f
	out (091h),a		;9e70
	or c			;9e72
	jp nc,0412bh		;9e73
	ld h,c			;9e76
	dec de			;9e77
	out (0b1h),a		;9e78
	sub c			;9e7a
	or l			;9e7b
	jp nc,01123h		;9e7c
	out (061h),a		;9e7f
	and c			;9e81
	jp nc,0fb61h		;9e82
	ld (bc),a		;9e85
	cp 001h			;9e86
	ret m			;9e88
	ld (bc),a		;9e89
	jp (hl)			;9e8a
	add hl,bc		;9e8b
	jp pe,0eb0fh		;9e8c
	ld (0d661h),a		;9e8f
	ld (bc),a		;9e92
	ld (bc),a		;9e93
	jp p,0f11ah		;9e94
	ld b,h			;9e97
	pop de			;9e98
	inc hl			;9e99
	inc de			;9e9a
	jp nc,0d1b3h		;9e9b
	ld (de),a		;9e9e
	jp nc,0d895h		;9e9f
	ret m			;9ea2
	ld d,h			;9ea3
	defb 0ddh,005h,065h ;illegal sequence	;9ea4
	ld h,b			;9ea7
	ld (hl),b		;9ea8
	sbc a,b			;9ea9
	ret m			;9eaa
	ld (bc),a		;9eab
	sub 002h		;9eac
	ld (bc),a		;9eae
	ex de,hl		;9eaf
	ld (0d161h),a		;9eb0
	inc hl			;9eb3
	jp nc,0b892h		;9eb4
	pop de			;9eb7
	or e			;9eb8
	sub e			;9eb9
	add a,e			;9eba
	or e			;9ebb
	jp (hl)			;9ebc
	ld (de),a		;9ebd
	sbc a,a			;9ebe
	cp 001h			;9ebf
	push af			;9ec1
	ret m			;9ec2
	ld (bc),a		;9ec3
	jp (hl)			;9ec4
	add hl,bc		;9ec5
	jp pe,0eb0fh		;9ec6
	ld (0d651h),a		;9ec9
	ld (bc),a		;9ecc
	ld (bc),a		;9ecd
	jp p,0f11ah		;9ece
	ld d,(hl)		;9ed1
	jp nc,0f897h		;9ed2
	dec d			;9ed5
	ld h,b			;9ed6
	ld (hl),b		;9ed7
	sub l			;9ed8
	ret m			;9ed9
	ld (bc),a		;9eda
	ld (hl),e		;9edb
	ld h,e			;9edc
	ld b,e			;9edd
	ld h,e			;9ede
	ld l,0ech		;9edf
	jp pe,02002h		;9ee1
	ret m			;9ee4
	dec d			;9ee5
	jp pe,0eb0fh		;9ee6
	ld b,h			;9ee9
	ld b,b			;9eea
	out (0b2h),a		;9eeb
	jp nc,02212h		;9eed
	ld b,d			;9ef0
	ld h,c			;9ef1
	ld (hl),c		;9ef2
	ei			;9ef3
	inc b			;9ef4
	ret c			;9ef5
	defb 0fdh,006h,0beh ;illegal sequence	;9ef6
	cp 001h			;9ef9
	ret m			;9efb
	dec b			;9efc
	pop af			;9efd
	ld h,d			;9efe
	xor 001h		;9eff
	jp (hl)			;9f01
	add hl,bc		;9f02
	jp pe,0d101h		;9f03
	cp a			;9f06
	cp a			;9f07
	cp a			;9f08
	cp a			;9f09
	cp 001h			;9f0a
	ret m			;9f0c
	add hl,bc		;9f0d
	jp (hl)			;9f0e
	add hl,bc		;9f0f
	jp pe,0ed0ch		;9f10
	ex af,af'		;9f13
	ex de,hl		;9f14
	add a,d			;9f15
	ld d,b			;9f16
	jp p,0f10ah		;9f17
	ld h,e			;9f1a
	jp nc,0b595h		;9f1b
	pop de			;9f1e
	dec h			;9f1f
	ld h,l			;9f20
	sub e			;9f21
	sub e			;9f22
	ld h,l			;9f23
	ld h,l			;9f24
	dec hl			;9f25
	ld (06162h),hl		;9f26
	ld h,l			;9f29
	dec h			;9f2a
	jp nc,0b593h		;9f2b
	sub l			;9f2e
	ld b,e			;9f2f
	ld l,c			;9f30
	sub c			;9f31
	or c			;9f32
	pop de			;9f33
	ld l,c			;9f34
	ld (0d062h),hl		;9f35
	ld hl,0d115h		;9f38
	sub l			;9f3b
	ld h,e			;9f3c
	sub l			;9f3d
	ld b,l			;9f3e
	sub e			;9f3f
	cp 001h			;9f40
	ret m			;9f42
	inc d			;9f43
	jp (hl)			;9f44
	add hl,bc		;9f45
	push af			;9f46
	jp pe,0ed0dh		;9f47
	add hl,bc		;9f4a
	ex de,hl		;9f4b
	add a,d			;9f4c
	ld (hl),b		;9f4d
	jp p,0f110h		;9f4e
	ld l,d			;9f51
	out (069h),a		;9f52
	defb 0edh ;next byte illegal after ed	;9f54
	ld b,061h		;9f55
	sub c			;9f57
	cp e			;9f58
	or c			;9f59
	or e			;9f5a
	jp nc,01117h		;9f5b
	ld hl,0d341h		;9f5e
	sbc a,a			;9f61
	call pe,003eah		;9f62
	sub c			;9f65
	jp pe,0eb0dh		;9f66
	add a,d			;9f69
	ld (hl),b		;9f6a
	ld a,c			;9f6b
	ld hl,07b41h		;9f6c
	ld (hl),c		;9f6f
	ld (hl),c		;9f70
	ld l,e			;9f71
	ld b,c			;9f72
	ld hl,07345h		;9f73
	out (061h),a		;9f76
	ld de,0d261h		;9f78
	ld de,002fbh		;9f7b
	cp 001h			;9f7e
	ret m			;9f80
	ld (bc),a		;9f81
	jp (hl)			;9f82
	add hl,bc		;9f83
	jp pe,0eb0fh		;9f84
	ld (0f261h),a		;9f87
	ld a,(de)		;9f8a
	pop af			;9f8b
	ld b,l			;9f8c
	sub 002h		;9f8d
	ld (bc),a		;9f8f
	jp nc,09393h		;9f90
	ld h,e			;9f93
	sub d			;9f94
	ld b,l			;9f95
	ret c			;9f96
	ret m			;9f97
	ld d,h			;9f98
	defb 0ddh,005h,065h ;illegal sequence	;9f99
	djnz l9fbeh		;9f9c
	ld c,b			;9f9e
	ret m			;9f9f
	ld (bc),a		;9fa0
	jp pe,0eb0fh		;9fa1
	ld (0d661h),a		;9fa4
	ld (bc),a		;9fa7
	ld (bc),a		;9fa8
	sub e			;9fa9
	ld b,d			;9faa
	ld l,b			;9fab
	pop de			;9fac
	ld h,e			;9fad
	ld b,e			;9fae
	jp nc,0d1b3h		;9faf
	ld b,e			;9fb2
	cpl			;9fb3
	pop af			;9fb4
	ld c,b			;9fb5
	rra			;9fb6
	ret c			;9fb7
	cp 001h			;9fb8
	push af			;9fba
	ret m			;9fbb
	ld (bc),a		;9fbc
	jp (hl)			;9fbd
l9fbeh:
	add hl,bc		;9fbe
	jp pe,0eb0fh		;9fbf
	ld (0d651h),a		;9fc2
	ld (bc),a		;9fc5
	ld (bc),a		;9fc6
	pop af			;9fc7
	ld b,(hl)		;9fc8
	jp p,0d214h		;9fc9
	ld h,a			;9fcc
	ret m			;9fcd
	dec d			;9fce
	jr nz,$+66		;9fcf
	ld h,l			;9fd1
	ret m			;9fd2
	ld (bc),a		;9fd3
	ld b,e			;9fd4
	inc hl			;9fd5
	inc bc			;9fd6
	inc bc			;9fd7
	out (0bfh),a		;9fd8
	ret m			;9fda
	dec d			;9fdb
	jp pe,0d60ch		;9fdc
	ld (bc),a		;9fdf
	and b			;9fe0
	pop de			;9fe1
	cpl			;9fe2
	ei			;9fe3
	inc b			;9fe4
	ret c			;9fe5
	defb 0fdh,00ah,0bfh ;illegal sequence	;9fe6
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
