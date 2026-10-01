; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank23_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank23.bin

	org 08000h

	cp 004h			;8000
	jp (hl)			;8002
	dec bc			;8003
	ret nc			;8004
	push af			;8005
	ld sp,001e9h		;8006
	ld (hl),037h		;8009
	ld (hl),0e9h		;800b
	dec bc			;800d
	ld sp,001e9h		;800e
	ld (hl),037h		;8011
	ld (hl),0e9h		;8013
	dec bc			;8015
	jr nc,l8048h		;8016
	ld sp,002fbh		;8018
	push af			;801b
	ld sp,001e9h		;801c
	ld (hl),037h		;801f
	ld (hl),0e9h		;8021
	dec bc			;8023
	ld sp,001e9h		;8024
	ld (hl),037h		;8027
	ld (hl),0e9h		;8029
	dec bc			;802b
	jr nc,l805eh		;802c
	ld sp,018fbh		;802e
	cp 010h			;8031
	sub c			;8033
	jp (hl)			;8034
	ld bc,l9796h		;8035
	sub (hl)		;8038
	jp (hl)			;8039
	dec bc			;803a
	sub c			;803b
	jp (hl)			;803c
	ld bc,l9796h		;803d
l8040h:
	sub (hl)		;8040
	jp (hl)			;8041
	dec bc			;8042
	sub b			;8043
	sub b			;8044
	sub c			;8045
	cp 010h			;8046
l8048h:
	push af			;8048
	jp (hl)			;8049
	dec bc			;804a
	sub c			;804b
	jp (hl)			;804c
	ld bc,l9796h		;804d
l8050h:
	sub (hl)		;8050
	ei			;8051
	ld (bc),a		;8052
	sub l			;8053
	sub h			;8054
	sub l			;8055
	sub h			;8056
	sub l			;8057
	sub h			;8058
	sub l			;8059
	sub h			;805a
	ld sp,hl		;805b
	ld a,e			;805c
	xor b			;805d
l805eh:
	ld sp,hl		;805e
	ld a,e			;805f
	xor b			;8060
	push af			;8061
	jp (hl)			;8062
	dec bc			;8063
	sub c			;8064
	jp (hl)			;8065
l8066h:
	ld bc,l9796h		;8066
	sub (hl)		;8069
	jp (hl)			;806a
	dec bc			;806b
l806ch:
	sub c			;806c
	jp (hl)			;806d
	ld bc,l9796h		;806e
	sub (hl)		;8071
l8072h:
	jp (hl)			;8072
	dec bc			;8073
	sub b			;8074
	sub b			;8075
	sub c			;8076
	ei			;8077
l8078h:
	ld (bc),a		;8078
	rst 38h			;8079
	cp 001h			;807a
	jp (hl)			;807c
	dec bc			;807d
l807eh:
	set 1,e			;807e
	jp pe,0f207h		;8080
	ld (bc),a		;8083
l8084h:
	pop af			;8084
	ld d,d			;8085
	defb 0ddh,006h,076h ;illegal sequence	;8086
	in a,(001h)		;8089
	push af			;808b
	pop bc			;808c
	jp nc,05020h		;808d
l8090h:
	sub b			;8090
	pop de			;8091
	jr nz,l8066h		;8092
	jr nz,l80e6h		;8094
l8096h:
	sub b			;8096
	pop de			;8097
	jr nz,l806ch		;8098
	jr nz,l80ech		;809a
l809ch:
	sub b			;809c
	pop de			;809d
	jr nz,l8072h		;809e
	jr nz,$+66		;80a0
l80a2h:
	add a,b			;80a2
	pop de			;80a3
	jr nz,l8078h		;80a4
	jr nz,$+66		;80a6
	add a,b			;80a8
	pop de			;80a9
	jr nz,l807eh		;80aa
	jr nz,$+66		;80ac
	add a,b			;80ae
	pop de			;80af
sub_80b0h:
	jr nz,l8084h		;80b0
	jr nz,l80e4h		;80b2
	ld (hl),b		;80b4
	pop de			;80b5
	jr nz,$-44		;80b6
	jr nz,$+50		;80b8
	ld (hl),b		;80ba
	pop de			;80bb
	jr nz,l8090h		;80bc
	jr nz,$+50		;80be
	ld (hl),b		;80c0
	pop de			;80c1
	jr nz,l8096h		;80c2
	jr nz,$+82		;80c4
	sub b			;80c6
	pop de			;80c7
	jr nz,l809ch		;80c8
	jr nz,$+82		;80ca
	sub b			;80cc
	pop de			;80cd
	jr nz,l80a2h		;80ce
	jr nz,l8122h		;80d0
	ei			;80d2
	ld (bc),a		;80d3
	cp 001h			;80d4
	jp p,0f102h		;80d6
	ld d,d			;80d9
	jp pe,0e909h		;80da
	dec bc			;80dd
	defb 0ddh,005h,065h ;illegal sequence	;80de
	in a,(001h)		;80e1
	push af			;80e3
l80e4h:
	pop bc			;80e4
	pop de			;80e5
l80e6h:
	ld hl,02131h		;80e6
	ld sp,03121h		;80e9
l80ech:
	ld hl,02131h		;80ec
	ld sp,03121h		;80ef
	ld hl,02151h		;80f2
	ld d,c			;80f5
	ld hl,08151h		;80f6
	sub c			;80f9
	add a,c			;80fa
	sub c			;80fb
	add a,c			;80fc
	ei			;80fd
	ld (bc),a		;80fe
	pop bc			;80ff
	jp p,0f105h		;8100
	ld h,e			;8103
	in a,(001h)		;8104
	push af			;8106
	jp pe,0eb07h		;8107
	inc bc			;810a
	inc hl			;810b
	jp (hl)			;810c
	dec bc			;810d
	jp nc,0ec9ah		;810e
	jp pe,l9002h		;8111
	jp pe,0eb07h		;8114
	inc de			;8117
	inc hl			;8118
	jp (hl)			;8119
	ld bc,09ad1h		;811a
	sbc a,d			;811d
	sub (hl)		;811e
	add a,a			;811f
	jp (hl)			;8120
	ex af,af'		;8121
l8122h:
	ld a,d			;8122
	call pe,002eah		;8123
	ld (hl),b		;8126
	ei			;8127
	ld (bc),a		;8128
	jp pe,0eb07h		;8129
	inc bc			;812c
	inc hl			;812d
	jp (hl)			;812e
	dec bc			;812f
	ld a,(bc)		;8130
	call pe,002eah		;8131
	nop			;8134
	jp pe,0eb07h		;8135
	inc bc			;8138
	inc hl			;8139
	ld a,(de)		;813a
	call pe,002eah		;813b
	djnz $-20		;813e
	rlca			;8140
	ex de,hl		;8141
	inc bc			;8142
	inc hl			;8143
	ld a,(bc)		;8144
	call pe,002eah		;8145
	nop			;8148
	jp pe,0eb07h		;8149
	inc bc			;814c
	inc hl			;814d
	add hl,de		;814e
	jp pe,0f109h		;814f
	ld h,c			;8152
	jp p,0ed05h		;8153
	ex af,af'		;8156
	ex de,hl		;8157
	adc a,c			;8158
	jr nz,$-35		;8159
	inc b			;815b
	ret nc			;815c
	push af			;815d
	ld hl,001e9h		;815e
	ld h,027h		;8161
	ld h,0e9h		;8163
	dec bc			;8165
	ld hl,001e9h		;8166
	ld h,027h		;8169
	ld h,0e9h		;816b
	dec bc			;816d
	jr nz,l8190h		;816e
	ld hl,002fbh		;8170
	call c,0feffh		;8173
	ld bc,00be9h		;8176
	push af			;8179
	jp pe,0db0bh		;817a
	dec b			;817d
	ex de,hl		;817e
	rla			;817f
	ld bc,02fd5h		;8180
	call pe,004eah		;8183
	daa			;8186
	cp 001h			;8187
	jp (hl)			;8189
	dec bc			;818a
	push af			;818b
	jp pe,0db0ch		;818c
	add hl,bc		;818f
l8190h:
	ex de,hl		;8190
	rla			;8191
	ld bc,02fd3h		;8192
	call pe,008eah		;8195
	daa			;8198
	ei			;8199
	ex af,af'		;819a
	push af			;819b
	ex de,hl		;819c
	rla			;819d
	ld bc,00ceah		;819e
	call nc,0ec9fh		;81a1
	jp pe,09708h		;81a4
l81a7h:
	ei			;81a7
	inc b			;81a8
	push af			;81a9
	ex de,hl		;81aa
	rla			;81ab
	ld bc,00deah		;81ac
	out (02fh),a		;81af
	call pe,008eah		;81b1
	daa			;81b4
	ei			;81b5
	ld b,0ffh		;81b6
	cp 001h			;81b8
	ret m			;81ba
	jr z,l81a7h		;81bb
	rrca			;81bd
	sub 0afh		;81be
	ld bc,00be9h		;81c0
	ex de,hl		;81c3
	add hl,de		;81c4
	ld d,b			;81c5
	push af			;81c6
	push de			;81c7
	ld hl,001e9h		;81c8
	ld h,027h		;81cb
	ld h,0e9h		;81cd
	dec bc			;81cf
	ld hl,001e9h		;81d0
	ld h,027h		;81d3
	ld h,0e9h		;81d5
	dec bc			;81d7
	jr nz,l81fah		;81d8
	ld hl,002fbh		;81da
	cp 001h			;81dd
	ret m			;81df
	jr z,$-20		;81e0
	inc c			;81e2
	in a,(003h)		;81e3
	sub 0afh		;81e5
	ld bc,00be9h		;81e7
	ex de,hl		;81ea
	ld (hl),e		;81eb
	ld b,h			;81ec
	push af			;81ed
	call nc,0e921h		;81ee
	ld bc,02726h		;81f1
	ld h,0e9h		;81f4
	dec bc			;81f6
	ld hl,001e9h		;81f7
l81fah:
	ld h,027h		;81fa
	ld h,0e9h		;81fc
	dec bc			;81fe
	jr nz,l8221h		;81ff
	ld hl,010fbh		;8201
	push de			;8204
	push af			;8205
	sub c			;8206
	jp (hl)			;8207
	ld bc,l9796h		;8208
	sub (hl)		;820b
	jp (hl)			;820c
	dec bc			;820d
	sub c			;820e
	jp (hl)			;820f
	ld bc,l9796h		;8210
	sub (hl)		;8213
	jp (hl)			;8214
	dec bc			;8215
	sub b			;8216
	sub b			;8217
	sub c			;8218
	ei			;8219
	ex af,af'		;821a
	jp pe,0eb0fh		;821b
	ld (hl),e		;821e
	ld (hl),h		;821f
	push af			;8220
l8221h:
	call nc,0e921h		;8221
	ld bc,02726h		;8224
	ld h,0e9h		;8227
	dec bc			;8229
	ld hl,001e9h		;822a
	ld h,027h		;822d
	ld h,0e9h		;822f
	dec bc			;8231
	jr nz,l8254h		;8232
	ld hl,00cfbh		;8234
	push de			;8237
	dec h			;8238
	ret c			;8239
	call pe,001eah		;823a
	ld (0feffh),hl		;823d
	ld bc,028f8h		;8240
	jp pe,0d60fh		;8243
	xor a			;8246
	ld bc,00be9h		;8247
	ex de,hl		;824a
	add hl,de		;824b
	ld d,b			;824c
	push af			;824d
	call nc,0e921h		;824e
	ld bc,02726h		;8251
l8254h:
	ld h,0e9h		;8254
	dec bc			;8256
	ld hl,001e9h		;8257
	ld h,027h		;825a
	ld h,0e9h		;825c
	dec bc			;825e
	jr nz,l8281h		;825f
	ld hl,002fbh		;8261
	cp 001h			;8264
	ret m			;8266
	ld (bc),a		;8267
	jp (hl)			;8268
	dec bc			;8269
	jp p,0f110h		;826a
	ld d,h			;826d
	xor 002h		;826e
	push af			;8270
	ret nz			;8271
	ex de,hl		;8272
	inc bc			;8273
	inc hl			;8274
	jp pe,0d608h		;8275
	rra			;8278
	ld (bc),a		;8279
	jp nc,0d82ah		;827a
	jp (hl)			;827d
	ld bc,0eaech		;827e
l8281h:
	ld (bc),a		;8281
	inc h			;8282
	jp pe,0eb08h		;8283
	inc bc			;8286
	inc de			;8287
	sub l			;8288
	jp (hl)			;8289
	dec bc			;828a
	adc a,d			;828b
	jp (hl)			;828c
	ld bc,0eaech		;828d
	ld (bc),a		;8290
	add a,h			;8291
	jp pe,0eb08h		;8292
	inc bc			;8295
	inc de			;8296
	dec h			;8297
	jp (hl)			;8298
	dec bc			;8299
	ld a,d			;829a
	jp (hl)			;829b
	ld bc,0eaech		;829c
	ld (bc),a		;829f
	ld (hl),h		;82a0
	jp pe,0eb08h		;82a1
	inc bc			;82a4
	inc de			;82a5
	out (095h),a		;82a6
	jp (hl)			;82a8
	dec bc			;82a9
	jp nc,0d85ah		;82aa
	ei			;82ad
	ld (bc),a		;82ae
	rst 28h			;82af
	cp 001h			;82b0
	pop af			;82b2
	ld h,d			;82b3
	jp p,0e904h		;82b4
	dec bc			;82b7
	push af			;82b8
	in a,(002h)		;82b9
	ret m			;82bb
	dec b			;82bc
	jp pe,0ed06h		;82bd
	ld (bc),a		;82c0
	defb 0ddh,085h ;add a,ixl	;82c1
	ld (021d1h),a		;82c3
	inc sp			;82c6
	ld (hl),e		;82c7
	defb 0ddh,087h,021h ;illegal sequence	;82c8
	xor h			;82cb
	call pe,002eah		;82cc
	and b			;82cf
	ret m			;82d0
	ld (bc),a		;82d1
	ret nz			;82d2
	xor 002h		;82d3
	in a,(001h)		;82d5
	ex de,hl		;82d7
	rla			;82d8
	inc de			;82d9
	jp (hl)			;82da
	ld bc,007eah		;82db
	jp nc,04796h		;82de
	ld d,(hl)		;82e1
	jp (hl)			;82e2
	dec bc			;82e3
	out (098h),a		;82e4
	call pe,002eah		;82e6
	sub b			;82e9
	jp pe,0ee07h		;82ea
	inc b			;82ed
	ex de,hl		;82ee
	rla			;82ef
	inc de			;82f0
	sub 01fh		;82f1
	ld (bc),a		;82f3
	jp nc,0ef8ah		;82f4
	ret c			;82f7
	ei			;82f8
	ld (bc),a		;82f9
	cp 001h			;82fa
	ret m			;82fc
	ld (bc),a		;82fd
	pop af			;82fe
	ld h,d			;82ff
	jp p,0f50ah		;8300
	ex de,hl		;8303
	ld b,e			;8304
	ld (hl),e		;8305
	in a,(002h)		;8306
	jp pe,0d609h		;8308
	ld b,002h		;830b
	jp (hl)			;830d
	dec bc			;830e
	jp nc,0e941h		;830f
	ld (bc),a		;8312
	ld b,e			;8313
	ld b,d			;8314
	ld b,e			;8315
	jp (hl)			;8316
	dec bc			;8317
	jp nc,0e941h		;8318
	ld (bc),a		;831b
	ld b,e			;831c
	ld b,d			;831d
	ld b,e			;831e
	jp (hl)			;831f
	dec bc			;8320
	jp nc,0e941h		;8321
	ld (bc),a		;8324
	ld b,e			;8325
	ld b,d			;8326
	ld b,e			;8327
	jp (hl)			;8328
	dec bc			;8329
	jp pe,0d109h		;832a
	sbc a,e			;832d
	ei			;832e
	ld (bc),a		;832f
	ret c			;8330
	ret m			;8331
	ld (bc),a		;8332
	jp (hl)			;8333
	ld bc,008eah		;8334
	ex de,hl		;8337
	inc bc			;8338
	inc bc			;8339
	pop af			;833a
	ld d,c			;833b
	jp p,0f504h		;833c
	call nz,0d4c5h		;833f
	sub l			;8342
	and h			;8343
	add a,l			;8344
	sub h			;8345
	out (085h),a		;8346
	sub h			;8348
	ld (hl),l		;8349
	add a,h			;834a
	sub l			;834b
	and h			;834c
	add a,l			;834d
	sub h			;834e
	jp nc,l9485h		;834f
	ld (hl),l		;8352
	add a,h			;8353
	sub l			;8354
	and h			;8355
	add a,l			;8356
	sub h			;8357
	pop de			;8358
	add a,l			;8359
	sub h			;835a
	ei			;835b
	inc b			;835c
	cp 001h			;835d
	ret m			;835f
	ld (bc),a		;8360
	pop af			;8361
	ld d,c			;8362
	jp p,0ea03h		;8363
	ld c,0e9h		;8366
	dec bc			;8368
	in a,(002h)		;8369
	sub 02fh		;836b
	ld bc,0ebf5h		;836d
	ld (hl),e		;8370
	ld h,e			;8371
	push af			;8372
	pop de			;8373
	ld hl,001e9h		;8374
	ld h,027h		;8377
	ld h,0e9h		;8379
	dec bc			;837b
	ld hl,001e9h		;837c
	ld h,027h		;837f
l8381h:
	ld h,0e9h		;8381
	dec bc			;8383
	jr nz,l83a6h		;8384
	ld hl,002fbh		;8386
	call c,0fed8h		;8389
	ld bc,002f8h		;838c
	pop af			;838f
	ld h,h			;8390
	jp p,0e905h		;8391
	dec bc			;8394
	push af			;8395
	ex de,hl		;8396
	ld (hl),e		;8397
	ld b,e			;8398
	jp pe,0db0eh		;8399
	ld (bc),a		;839c
	sub 01fh		;839d
	ld bc,0a3d2h		;839f
	add a,a			;83a2
	and e			;83a3
	add a,a			;83a4
	jp (hl)			;83a5
l83a6h:
	ld bc,0d186h		;83a6
	rlca			;83a9
	jp nc,0e9b6h		;83aa
	dec bc			;83ad
	xor a			;83ae
	ret c			;83af
	call pe,002eah		;83b0
	and l			;83b3
	ei			;83b4
	ld (bc),a		;83b5
	ex de,hl		;83b6
	ld (hl),e		;83b7
	ld b,e			;83b8
	sub 003h		;83b9
	ld bc,00feah		;83bb
	sbc a,a			;83be
	call pe,0ead8h		;83bf
	ld (bc),a		;83c2
	sub a			;83c3
	jp pe,09401h		;83c4
	rst 38h			;83c7
	cp 001h			;83c8
	ret m			;83ca
	ld (bc),a		;83cb
	pop af			;83cc
	ld d,e			;83cd
	jp p,0ea0ah		;83ce
	dec b			;83d1
	jp (hl)			;83d2
	djnz $-19		;83d3
l83d5h:
	add a,c			;83d5
	inc de			;83d6
	in a,(001h)		;83d7
	out (05fh),a		;83d9
l83dbh:
	call pe,0eaf3h		;83db
	ld bc,001e9h		;83de
l83e1h:
	ld d,a			;83e1
	cp 001h			;83e2
	ret m			;83e4
	ld (bc),a		;83e5
	jp pe,0ed08h		;83e6
	dec b			;83e9
	jp p,0f102h		;83ea
l83edh:
	ld d,d			;83ed
	jp (hl)			;83ee
	dec bc			;83ef
	add a,(ix-079h)		;83f0
l83f3h:
	in a,(001h)		;83f3
	push af			;83f5
	jp nc,05020h		;83f6
l83f9h:
	sub b			;83f9
	pop de			;83fa
	jr nz,$-44		;83fb
	jr nz,l844fh		;83fd
l83ffh:
	sub b			;83ff
	pop de			;8400
	jr nz,l83d5h		;8401
	jr nz,l8455h		;8403
l8405h:
	sub b			;8405
	pop de			;8406
	jr nz,l83dbh		;8407
	jr nz,l844bh		;8409
l840bh:
	add a,b			;840b
	pop de			;840c
	jr nz,l83e1h		;840d
	jr nz,l8451h		;840f
	add a,b			;8411
	pop de			;8412
	jr nz,$-44		;8413
	jr nz,$+66		;8415
	add a,b			;8417
	pop de			;8418
	jr nz,l83edh		;8419
	jr nz,$+50		;841b
	ld (hl),b		;841d
	pop de			;841e
	jr nz,l83f3h		;841f
	jr nz,$+50		;8421
	ld (hl),b		;8423
	pop de			;8424
	jr nz,l83f9h		;8425
	jr nz,$+50		;8427
	ld (hl),b		;8429
	pop de			;842a
	jr nz,l83ffh		;842b
	jr nz,l847fh		;842d
	sub b			;842f
	pop de			;8430
	jr nz,l8405h		;8431
	jr nz,l8485h		;8433
	sub b			;8435
	pop de			;8436
	jr nz,l840bh		;8437
	jr nz,l848bh		;8439
	sub b			;843b
	pop de			;843c
	jr nz,$-3		;843d
	ld (bc),a		;843f
	cp 001h			;8440
	ret m			;8442
	ld h,0f2h		;8443
	ld (bc),a		;8445
	pop af			;8446
	ld d,d			;8447
	jp pe,0e909h		;8448
l844bh:
	dec bc			;844b
	defb 0ddh,025h ;dec ixh	;844c
	ld h,l			;844e
l844fh:
	in a,(001h)		;844f
l8451h:
	push af			;8451
	jp nc,03121h		;8452
l8455h:
	ld hl,02131h		;8455
	ld sp,03121h		;8458
	ld hl,02131h		;845b
	ld sp,05121h		;845e
	ld hl,02151h		;8461
	ld d,c			;8464
	add a,c			;8465
	sub c			;8466
	add a,c			;8467
	sub c			;8468
	add a,c			;8469
	sub c			;846a
	ei			;846b
	ld (bc),a		;846c
	cp 001h			;846d
	ret m			;846f
	ld (bc),a		;8470
	pop af			;8471
	ld d,c			;8472
	jp p,0f504h		;8473
	ex de,hl		;8476
	ld b,e			;8477
	ld (hl),e		;8478
	in a,(002h)		;8479
	jp pe,0d609h		;847b
	inc b			;847e
l847fh:
	ld (bc),a		;847f
	jp (hl)			;8480
	dec bc			;8481
	jp nc,0e991h		;8482
l8485h:
	ld (bc),a		;8485
	sub e			;8486
	sub d			;8487
	sub e			;8488
	jp (hl)			;8489
	dec bc			;848a
l848bh:
	jp nc,0e991h		;848b
	ld (bc),a		;848e
	sub e			;848f
	sub d			;8490
	sub e			;8491
	jp (hl)			;8492
	dec bc			;8493
	jp nc,0e991h		;8494
	ld (bc),a		;8497
	sub e			;8498
	sub d			;8499
	sub e			;849a
	jp (hl)			;849b
	dec bc			;849c
	jp nc,0e991h		;849d
	ld (bc),a		;84a0
	sub e			;84a1
	sub d			;84a2
	sub e			;84a3
	jp (hl)			;84a4
	ld bc,004d6h		;84a5
	ld (bc),a		;84a8
	jp pe,0d20ah		;84a9
	sbc a,d			;84ac
	sbc a,d			;84ad
	sub (hl)		;84ae
	add a,(hl)		;84af
	jp (hl)			;84b0
	dec bc			;84b1
	ld (hl),e		;84b2
	ret c			;84b3
	call c,001e9h		;84b4
	jp pe,07702h		;84b7
	ei			;84ba
	ld (bc),a		;84bb
	ret c			;84bc
	ret m			;84bd
	ld (bc),a		;84be
	jp (hl)			;84bf
	ld bc,008eah		;84c0
	ex de,hl		;84c3
	add a,e			;84c4
	inc de			;84c5
	pop af			;84c6
	ld d,c			;84c7
	jp p,0f508h		;84c8
	defb 0edh ;next byte illegal after ed	;84cb
	dec b			;84cc
	call nc,0a495h		;84cd
	add a,l			;84d0
	sub h			;84d1
	out (085h),a		;84d2
	sub h			;84d4
	ld (hl),l		;84d5
	add a,h			;84d6
	sub l			;84d7
	and h			;84d8
	add a,l			;84d9
	sub h			;84da
	jp nc,l9485h		;84db
	ld (hl),l		;84de
	add a,h			;84df
	sub l			;84e0
	and h			;84e1
	add a,l			;84e2
	sub h			;84e3
	defb 0edh ;next byte illegal after ed	;84e4
	inc bc			;84e5
	pop de			;84e6
	add a,l			;84e7
	sub h			;84e8
	ld (hl),l		;84e9
	add a,h			;84ea
	ei			;84eb
	inc b			;84ec
	cp 001h			;84ed
	ret m			;84ef
	ld (bc),a		;84f0
	pop af			;84f1
	ld d,c			;84f2
	jp p,0ea03h		;84f3
	rrca			;84f6
	jp (hl)			;84f7
	dec bc			;84f8
	in a,(002h)		;84f9
	sub 02fh		;84fb
	ld bc,0ebf5h		;84fd
	ld (hl),e		;8500
	ld h,e			;8501
	push af			;8502
	jp nc,0e921h		;8503
	ld bc,02726h		;8506
	ld h,0e9h		;8509
	dec bc			;850b
	ld hl,001e9h		;850c
	ld h,027h		;850f
	ld h,0e9h		;8511
	dec bc			;8513
	jr nz,l8536h		;8514
	ld hl,002fbh		;8516
	call c,0fed8h		;8519
	ld bc,002f8h		;851c
	pop af			;851f
	ld d,d			;8520
	jp p,0e905h		;8521
	dec bc			;8524
	push af			;8525
	ex de,hl		;8526
	ld (hl),e		;8527
	inc sp			;8528
	jp pe,0db0eh		;8529
	ld (bc),a		;852c
	sub 003h		;852d
	ld (bc),a		;852f
	pop de			;8530
	and e			;8531
	add a,a			;8532
	and e			;8533
	add a,a			;8534
	jp (hl)			;8535
l8536h:
	ld bc,0d086h		;8536
	rlca			;8539
	pop de			;853a
	or (hl)			;853b
	jp (hl)			;853c
	dec bc			;853d
	xor a			;853e
	ret c			;853f
	call pe,002eah		;8540
	and l			;8543
	ei			;8544
	ld (bc),a		;8545
	ex de,hl		;8546
	ld (hl),e		;8547
	inc sp			;8548
	sub 005h		;8549
	ld (bc),a		;854b
	jp pe,l9f0eh		;854c
	call pe,0ead8h		;854f
	ld (bc),a		;8552
	sub a			;8553
	jp pe,09401h		;8554
	rst 38h			;8557
	cp 001h			;8558
	ret m			;855a
	ld (bc),a		;855b
	pop af			;855c
	ld d,e			;855d
	jp p,0ea0ah		;855e
	dec b			;8561
	jp (hl)			;8562
	djnz $-19		;8563
	add a,b			;8565
	inc de			;8566
	in a,(001h)		;8567
	out (09fh),a		;8569
	call pe,0eaf3h		;856b
	ld bc,001e9h		;856e
	sub a			;8571
	cp 001h			;8572
	ret m			;8574
	ld (bc),a		;8575
	jp (hl)			;8576
	dec bc			;8577
	pop af			;8578
	ld d,(hl)		;8579
	jp p,0f510h		;857a
	jp pe,0eb0dh		;857d
	inc sp			;8580
	inc hl			;8581
	sub 02fh		;8582
	ld (bc),a		;8584
	out (09ah),a		;8585
	ret c			;8587
	jp (hl)			;8588
	ld bc,0eaech		;8589
	inc b			;858c
	sub h			;858d
	jp pe,0d60dh		;858e
	rra			;8591
	ld (bc),a		;8592
	ex de,hl		;8593
	inc sp			;8594
	inc hl			;8595
	jp nc,0e955h		;8596
	dec bc			;8599
	ld c,d			;859a
	ret c			;859b
	jp (hl)			;859c
	ld bc,0eaech		;859d
	inc b			;85a0
	ld b,h			;85a1
	sub 01fh		;85a2
	ld (bc),a		;85a4
	jp pe,0eb0dh		;85a5
	inc sp			;85a8
	inc hl			;85a9
	out (095h),a		;85aa
	jp (hl)			;85ac
	dec bc			;85ad
	jp nc,0d83ah		;85ae
	jp (hl)			;85b1
	ld bc,0eaech		;85b2
	inc b			;85b5
	inc (hl)		;85b6
	jp pe,0d60dh		;85b7
	rra			;85ba
	ld (bc),a		;85bb
	ex de,hl		;85bc
	inc sp			;85bd
	inc hl			;85be
	out (055h),a		;85bf
	jp (hl)			;85c1
	dec bc			;85c2
	jp nc,0d82ah		;85c3
l85c6h:
	call pe,004eah		;85c6
	jr nz,l85c6h		;85c9
	ld (bc),a		;85cb
	cp 001h			;85cc
	pop af			;85ce
	ld h,e			;85cf
	jp p,0e904h		;85d0
	dec bc			;85d3
	in a,(001h)		;85d4
	push af			;85d6
	ret m			;85d7
	inc e			;85d8
	jp pe,0dd0dh		;85d9
	add a,h			;85dc
	ld d,h			;85dd
	jp nc,03321h		;85de
	ld (hl),e		;85e1
	defb 0ddh,087h,021h ;illegal sequence	;85e2
	xor h			;85e5
	call pe,001eah		;85e6
	and b			;85e9
	ret m			;85ea
	ld (bc),a		;85eb
	ex de,hl		;85ec
	ld (hl),a		;85ed
	inc de			;85ee
	jp (hl)			;85ef
	ld bc,00eeah		;85f0
	sub (hl)		;85f3
	ld b,a			;85f4
	ld d,(hl)		;85f5
	jp (hl)			;85f6
	dec bc			;85f7
	out (098h),a		;85f8
	call pe,002eah		;85fa
	sub b			;85fd
	jp pe,0eb0dh		;85fe
	ld (hl),a		;8601
	inc de			;8602
	sub 01fh		;8603
	ld (bc),a		;8605
	jp nc,0d889h		;8606
	call pe,002eah		;8609
	add a,c			;860c
	ei			;860d
	ld (bc),a		;860e
	cp 001h			;860f
	jp p,0f105h		;8611
	ld h,e			;8614
	in a,(004h)		;8615
	ret m			;8617
	ld (bc),a		;8618
	push af			;8619
	jp pe,0eb0ch		;861a
	ld (hl),e		;861d
	inc hl			;861e
	sub 01fh		;861f
	inc bc			;8621
	jp (hl)			;8622
	dec bc			;8623
	out (09ah),a		;8624
	ret c			;8626
	call pe,003eah		;8627
	sub b			;862a
	sub 007h		;862b
	ld (bc),a		;862d
	jp pe,0eb0ch		;862e
	ld (hl),e		;8631
	inc hl			;8632
	jp (hl)			;8633
	ld bc,09ad2h		;8634
	sbc a,d			;8637
	sub (hl)		;8638
	add a,(hl)		;8639
	jp (hl)			;863a
	dec bc			;863b
	ld (hl),a		;863c
	jp (hl)			;863d
	ld bc,0ecd8h		;863e
	jp pe,07703h		;8641
	ei			;8644
	ld (bc),a		;8645
	jp pe,0eb09h		;8646
	ld (hl),e		;8649
	inc hl			;864a
	sub 01fh		;864b
	inc bc			;864d
	jp (hl)			;864e
l864fh:
	dec bc			;864f
	ld a,(bc)		;8650
	ret c			;8651
	call pe,003eah		;8652
	nop			;8655
	jp pe,0eb0ah		;8656
	ld (hl),e		;8659
	inc hl			;865a
	sub 01fh		;865b
	inc bc			;865d
	ld a,(de)		;865e
	ret c			;865f
	call pe,003eah		;8660
	djnz l864fh		;8663
	inc c			;8665
	ex de,hl		;8666
	ld (hl),e		;8667
	inc hl			;8668
	sub 01fh		;8669
	inc bc			;866b
	ld a,(bc)		;866c
	ret c			;866d
	call pe,003eah		;866e
	nop			;8671
	jp pe,0eb0eh		;8672
	ld (hl),e		;8675
	inc hl			;8676
	sub 01fh		;8677
	inc b			;8679
	ld a,(de)		;867a
	ret c			;867b
	call pe,004eah		;867c
	djnz $-15		;867f
	ret c			;8681
	call c,001feh		;8682
	ret m			;8685
	ld (bc),a		;8686
	pop af			;8687
	ld d,c			;8688
	jp p,0ea03h		;8689
	ld c,0e9h		;868c
	dec bc			;868e
	in a,(002h)		;868f
	sub 01fh		;8691
	ld bc,0ebf5h		;8693
	ld (hl),e		;8696
	ld h,e			;8697
	push af			;8698
	jp nc,0e991h		;8699
	ld bc,l9796h		;869c
	sub (hl)		;869f
	jp (hl)			;86a0
	dec bc			;86a1
	sub c			;86a2
	jp (hl)			;86a3
	ld bc,l9796h		;86a4
	sub (hl)		;86a7
	jp (hl)			;86a8
	dec bc			;86a9
	sub b			;86aa
	sub b			;86ab
	sub c			;86ac
	ei			;86ad
	ld (bc),a		;86ae
	call c,0fed8h		;86af
	ld bc,002f8h		;86b2
	pop af			;86b5
	ld d,d			;86b6
	jp p,0e905h		;86b7
	dec bc			;86ba
	push af			;86bb
	ex de,hl		;86bc
	ld (hl),e		;86bd
	inc sp			;86be
	in a,(002h)		;86bf
	jp pe,0d60eh		;86c1
	rlca			;86c4
	ld (bc),a		;86c5
	pop de			;86c6
	ld (hl),e		;86c7
	ld d,a			;86c8
	ld (hl),e		;86c9
	ld d,a			;86ca
	jp (hl)			;86cb
	ld bc,l9756h		;86cc
	add a,(hl)		;86cf
	jp (hl)			;86d0
	dec bc			;86d1
	ld a,a			;86d2
	ret c			;86d3
	call pe,002eah		;86d4
	ld (hl),l		;86d7
	ei			;86d8
	ld (bc),a		;86d9
	sub 00fh		;86da
	ld (bc),a		;86dc
	ex de,hl		;86dd
	ld (hl),e		;86de
	inc sp			;86df
	jp pe,05f0dh		;86e0
	ret c			;86e3
l86e4h:
	call pe,002eah		;86e4
	ld d,a			;86e7
	jp pe,05401h		;86e8
	rst 38h			;86eb
	cp 001h			;86ec
	ret m			;86ee
	ld (bc),a		;86ef
	pop af			;86f0
	ld d,e			;86f1
	jp p,0ea0ah		;86f2
	dec b			;86f5
	jp (hl)			;86f6
	djnz l86e4h		;86f7
	add a,b			;86f9
	inc de			;86fa
	in a,(001h)		;86fb
	jp nc,0ec2fh		;86fd
	di			;8700
	jp pe,0e901h		;8701
	ld bc,0fe27h		;8704
	ld bc,002f8h		;8707
	jp (hl)			;870a
	dec bc			;870b
	jp p,0f110h		;870c
	ld d,l			;870f
	push af			;8710
	jp pe,0eb0dh		;8711
	inc sp			;8714
	inc hl			;8715
	sub 03fh		;8716
	ld (bc),a		;8718
	jp nc,0d82ah		;8719
	jp (hl)			;871c
	ld bc,0eaech		;871d
	inc b			;8720
	inc h			;8721
	jp pe,0eb0dh		;8722
	inc sp			;8725
	inc hl			;8726
	sub 01fh		;8727
	ld (bc),a		;8729
	sub l			;872a
	jp (hl)			;872b
	dec bc			;872c
	adc a,d			;872d
	ret c			;872e
	jp (hl)			;872f
	ld bc,0eaech		;8730
	inc b			;8733
	add a,h			;8734
	jp pe,0eb0dh		;8735
	inc sp			;8738
	inc hl			;8739
	sub 01fh		;873a
	ld (bc),a		;873c
	dec h			;873d
	jp (hl)			;873e
	dec bc			;873f
	ld a,d			;8740
	ret c			;8741
	jp (hl)			;8742
	ld bc,0eaech		;8743
	inc b			;8746
	ld (hl),h		;8747
	sub 01fh		;8748
	ld (bc),a		;874a
	jp pe,0eb0dh		;874b
	inc sp			;874e
	inc hl			;874f
	out (095h),a		;8750
	jp (hl)			;8752
	dec bc			;8753
	jp nc,0ec5ah		;8754
	jp pe,0d804h		;8757
	ld d,b			;875a
	ei			;875b
	ld (bc),a		;875c
	cp 001h			;875d
	pop af			;875f
	ld h,e			;8760
	jp p,0f504h		;8761
	jp pe,0e908h		;8764
	dec bc			;8767
	add a,(ix+033h)		;8768
	in a,(001h)		;876b
	xor 002h		;876d
	ret m			;876f
	inc e			;8770
	pop bc			;8771
	jp nc,03321h		;8772
	ld (hl),e		;8775
	xor d			;8776
	call pe,002eah		;8777
	and b			;877a
	ret m			;877b
	ld (bc),a		;877c
	ex de,hl		;877d
	ld (hl),a		;877e
	inc de			;877f
	rst 28h			;8780
	jp pe,0e90eh		;8781
	ld bc,01756h		;8784
	ld h,0e9h		;8787
	dec bc			;8789
	out (059h),a		;878a
	jp pe,0eb0eh		;878c
	ld (hl),a		;878f
	inc de			;8790
	sub 01fh		;8791
	ld (bc),a		;8793
	jp nc,0d849h		;8794
	call pe,002eah		;8797
	ld b,c			;879a
	ei			;879b
	ld (bc),a		;879c
	cp 001h			;879d
	jp p,0f105h		;879f
	ld h,e			;87a2
	in a,(004h)		;87a3
	ret m			;87a5
	ld (bc),a		;87a6
	push af			;87a7
	jp pe,0eb0ch		;87a8
	ld (hl),e		;87ab
	inc hl			;87ac
	sub 01fh		;87ad
	inc bc			;87af
	jp (hl)			;87b0
	dec bc			;87b1
	out (04ah),a		;87b2
	ret c			;87b4
	call pe,003eah		;87b5
	ld b,b			;87b8
	sub 007h		;87b9
	ld (bc),a		;87bb
	jp pe,0eb0ch		;87bc
	ld (hl),e		;87bf
	inc hl			;87c0
	jp (hl)			;87c1
	ld bc,05ad2h		;87c2
	ld e,d			;87c5
	ld d,(hl)		;87c6
	ld b,(hl)		;87c7
	jp (hl)			;87c8
	dec bc			;87c9
	scf			;87ca
	ret c			;87cb
	call pe,001e9h		;87cc
	jp pe,03703h		;87cf
	ei			;87d2
	ld (bc),a		;87d3
	jp pe,0eb09h		;87d4
	ld (hl),e		;87d7
	inc hl			;87d8
	sub 01fh		;87d9
	inc bc			;87db
	jp (hl)			;87dc
	dec bc			;87dd
	out (07ah),a		;87de
	ret c			;87e0
	call pe,003eah		;87e1
	ld (hl),b		;87e4
	jp pe,0eb0ah		;87e5
	ld (hl),e		;87e8
	inc hl			;87e9
	sub 02fh		;87ea
	inc bc			;87ec
	adc a,d			;87ed
	ret c			;87ee
	call pe,003eah		;87ef
	add a,b			;87f2
	jp pe,0eb0ch		;87f3
	ld (hl),e		;87f6
	inc hl			;87f7
	sub 01fh		;87f8
	inc bc			;87fa
	ld a,d			;87fb
	ret c			;87fc
	call pe,003eah		;87fd
	ld (hl),b		;8800
	jp pe,0eb0eh		;8801
	ld (hl),e		;8804
	inc hl			;8805
	sub 01fh		;8806
	inc b			;8808
	adc a,d			;8809
	ret c			;880a
	call pe,004eah		;880b
	add a,b			;880e
	ret c			;880f
	call c,0feefh		;8810
	ld bc,002f8h		;8813
	pop af			;8816
	ld d,c			;8817
	jp p,0ea03h		;8818
	ld c,0e9h		;881b
	dec bc			;881d
	in a,(002h)		;881e
	sub 01fh		;8820
	ld bc,0ebf5h		;8822
	ld (hl),e		;8825
	ld h,e			;8826
	push af			;8827
	out (091h),a		;8828
	jp (hl)			;882a
	ld bc,l9796h		;882b
	sub (hl)		;882e
	jp (hl)			;882f
	dec bc			;8830
	sub c			;8831
	jp (hl)			;8832
	ld bc,l9796h		;8833
	sub (hl)		;8836
	jp (hl)			;8837
	dec bc			;8838
	sub b			;8839
	sub b			;883a
	sub c			;883b
	ei			;883c
	ld (bc),a		;883d
	call c,0fed8h		;883e
	ld bc,002f8h		;8841
	pop af			;8844
	ld d,e			;8845
	jp p,0e903h		;8846
	dec bc			;8849
	push af			;884a
	sub 007h		;884b
l884dh:
	ld (bc),a		;884d
	ex de,hl		;884e
	ld (hl),e		;884f
	inc sp			;8850
	in a,(002h)		;8851
	jp pe,0d10eh		;8853
	inc sp			;8856
	rla			;8857
	inc sp			;8858
	rla			;8859
	jp (hl)			;885a
	ld bc,05716h		;885b
	ld b,(hl)		;885e
	jp (hl)			;885f
	dec bc			;8860
	ccf			;8861
	call pe,0ead8h		;8862
	ld (bc),a		;8865
	dec (hl)		;8866
	ei			;8867
	ld (bc),a		;8868
	sub 017h		;8869
	ld (bc),a		;886b
	ex de,hl		;886c
	ld (hl),e		;886d
	inc sp			;886e
	jp pe,02f0eh		;886f
	call pe,0ead8h		;8872
	ld (bc),a		;8875
	daa			;8876
	jp pe,02401h		;8877
	rst 38h			;887a
	cp 010h			;887b
	jp (hl)			;887d
	dec bc			;887e
	push af			;887f
	sub c			;8880
	jp (hl)			;8881
	ld bc,l9796h		;8882
	sub (hl)		;8885
	jp (hl)			;8886
	dec bc			;8887
	sub c			;8888
	jp (hl)			;8889
	ld bc,l9796h		;888a
	sub (hl)		;888d
	jp (hl)			;888e
	dec bc			;888f
	sub b			;8890
	sub b			;8891
	sub c			;8892
	ei			;8893
	ld (bc),a		;8894
	push af			;8895
	jp (hl)			;8896
	dec bc			;8897
	sub c			;8898
	jp (hl)			;8899
	ld bc,l9796h		;889a
	sub (hl)		;889d
	jp (hl)			;889e
	dec bc			;889f
	sub c			;88a0
	jp (hl)			;88a1
	ld bc,l9796h		;88a2
	sub (hl)		;88a5
	sbc a,d			;88a6
	sbc a,d			;88a7
	sub e			;88a8
	sub d			;88a9
	sub e			;88aa
	sub e			;88ab
	sub d			;88ac
	sub e			;88ad
	ei			;88ae
	ld (bc),a		;88af
	jp m,004feh		;88b0
	ret nc			;88b3
	jp (hl)			;88b4
	rlca			;88b5
	push af			;88b6
	sub b			;88b7
	nop			;88b8
	sub b			;88b9
	nop			;88ba
	jr nc,l884dh		;88bb
	nop			;88bd
	sub b			;88be
	nop			;88bf
	sub b			;88c0
	sub b			;88c1
	nop			;88c2
	cp 010h			;88c3
	sub c			;88c5
	cp 004h			;88c6
	ei			;88c8
	rrca			;88c9
	sub b			;88ca
	nop			;88cb
	sub b			;88cc
	nop			;88cd
	cp 010h			;88ce
	sub b			;88d0
	cp 004h			;88d1
	sub b			;88d3
	nop			;88d4
	cp 010h			;88d5
	sub b			;88d7
	cp 004h			;88d8
	sub b			;88da
	cp 010h			;88db
	sub b			;88dd
	sub b			;88de
	cp 004h			;88df
	sub b			;88e1
	cp 010h			;88e2
	sub b			;88e4
	sub b			;88e5
	defb 0fdh,0b1h,0a8h ;illegal sequence	;88e6
	cp 001h			;88e9
	jp (hl)			;88eb
	rlca			;88ec
	jp 002eeh		;88ed
	ex de,hl		;88f0
	inc b			;88f1
	ld (056f1h),a		;88f2
	jp p,0ea13h		;88f5
	add hl,bc		;88f8
	jp nc,03000h		;88f9
	ld d,b			;88fc
	and l			;88fd
	nop			;88fe
	jr nc,l8951h		;88ff
	and c			;8901
	nop			;8902
	jr nc,l8955h		;8903
	sub l			;8905
	nop			;8906
	jr nc,$+82		;8907
	sub c			;8909
	nop			;890a
	jr nc,l895dh		;890b
	and l			;890d
	jp (hl)			;890e
	ld bc,07382h		;890f
	jp (hl)			;8912
	rlca			;8913
	sub b			;8914
	and b			;8915
	pop de			;8916
	nop			;8917
	jr nc,$+3		;8918
	jp nc,0a120h		;891a
	nop			;891d
	sub c			;891e
	out (0a0h),a		;891f
	jp nc,0d371h		;8921
	sub b			;8924
	jp nc,0d350h		;8925
	ld (hl),b		;8928
	jp nc,04010h		;8929
	ld h,b			;892c
	or l			;892d
	djnz l8970h		;892e
	ld h,b			;8930
	or c			;8931
	djnz l8974h		;8932
	ld h,b			;8934
	and l			;8935
	djnz l8978h		;8936
	ld h,b			;8938
	and c			;8939
	djnz $+66		;893a
	ld h,b			;893c
	or l			;893d
	jp (hl)			;893e
	ld bc,08392h		;893f
	jp (hl)			;8942
	rlca			;8943
	and b			;8944
	or b			;8945
l8946h:
	pop de			;8946
	djnz $+66		;8947
l8949h:
	pop de			;8949
	ld h,d			;894a
	jp nc,032a1h		;894b
	ld h,c			;894e
	jp (iy)			;894f
l8951h:
	xor b			;8951
	cp 001h			;8952
l8954h:
	ret m			;8954
l8955h:
	ld d,d			;8955
	jp (hl)			;8956
	rlca			;8957
	jp pe,0eb0eh		;8958
	ld (hl),h		;895b
	nop			;895c
l895dh:
	push af			;895d
	call nc,0d300h		;895e
	nop			;8961
	call nc,0d300h		;8962
	nop			;8965
	push de			;8966
	and b			;8967
	call nc,05000h		;8968
	out (000h),a		;896b
	call nc,0d500h		;896d
l8970h:
	jr nc,l8946h		;8970
	jr nc,l8949h		;8972
l8974h:
	and b			;8974
	call nc,070a0h		;8975
l8978h:
	ei			;8978
	inc b			;8979
	push af			;897a
	call nc,0d310h		;897b
	djnz l8954h		;897e
	djnz l8955h		;8980
	djnz $-41		;8982
	or b			;8984
	call nc,06010h		;8985
l8988h:
	out (010h),a		;8988
	call nc,0d510h		;898a
	ld b,b			;898d
	call nc,0d540h		;898e
	or b			;8991
	call nc,sub_80b0h	;8992
	ei			;8995
	inc b			;8996
	defb 0fdh,052h,0a9h ;illegal sequence	;8997
	cp 001h			;899a
	ret m			;899c
	dec c			;899d
	jp (hl)			;899e
	rlca			;899f
	ex de,hl		;89a0
l89a1h:
	add hl,bc		;89a1
	ld b,b			;89a2
	jp pe,0db0fh		;89a3
	inc bc			;89a6
	call nc,000a0h		;89a7
l89aah:
	jr nc,l89ach		;89aa
l89ach:
	ld d,b			;89ac
	nop			;89ad
l89aeh:
	and b			;89ae
	nop			;89af
l89b0h:
	jr nc,l89b2h		;89b0
l89b2h:
	ld d,b			;89b2
	nop			;89b3
	and b			;89b4
l89b5h:
	nop			;89b5
l89b6h:
	out (000h),a		;89b6
	call nc,05000h		;89b8
	nop			;89bb
	ld (hl),b		;89bc
	nop			;89bd
	out (000h),a		;89be
	call nc,05000h		;89c0
	nop			;89c3
	ld (hl),b		;89c4
	nop			;89c5
	out (000h),a		;89c6
	call nc,0d300h		;89c8
	jr nc,l89a1h		;89cb
	nop			;89cd
	sub b			;89ce
	nop			;89cf
l89d0h:
	and b			;89d0
	nop			;89d1
	out (030h),a		;89d2
l89d4h:
	call nc,sub_9000h	;89d4
	nop			;89d7
l89d8h:
	and b			;89d8
	nop			;89d9
	out (030h),a		;89da
	call nc,0d300h		;89dc
	jr nz,l89b5h		;89df
	nop			;89e1
	ld (hl),b		;89e2
	nop			;89e3
	sub b			;89e4
l89e5h:
	nop			;89e5
	out (020h),a		;89e6
l89e8h:
	call nc,07000h		;89e8
	nop			;89eb
	sub b			;89ec
	nop			;89ed
	out (020h),a		;89ee
	call nc,0d400h		;89f0
	or b			;89f3
	djnz l8a36h		;89f4
	djnz $+98		;89f6
	djnz l89aah		;89f8
	djnz l8a3ch		;89fa
	djnz $+98		;89fc
	djnz l89b0h		;89fe
l8a00h:
	djnz $-43		;8a00
	djnz l89d8h		;8a02
	djnz l8a66h		;8a04
	djnz l8988h		;8a06
l8a08h:
	djnz $-43		;8a08
	djnz $-42		;8a0a
	djnz $+98		;8a0c
	djnz $-126		;8a0e
l8a10h:
	djnz l89e5h		;8a10
	djnz l89e8h		;8a12
	djnz $-43		;8a14
	ld b,b			;8a16
	call nc,0a010h		;8a17
	djnz $-78		;8a1a
	djnz $-43		;8a1c
	ld b,b			;8a1e
	call nc,0a010h		;8a1f
	djnz l89d4h		;8a22
	djnz $-43		;8a24
	ld b,b			;8a26
	call nc,0d310h		;8a27
	jr nc,l8a00h		;8a2a
	djnz l89aeh		;8a2c
	djnz l89d0h		;8a2e
	djnz $-43		;8a30
	jr nc,l8a08h		;8a32
	djnz l89b6h		;8a34
l8a36h:
	djnz l89d8h		;8a36
	djnz $-43		;8a38
	jr nc,l8a10h		;8a3a
l8a3ch:
	djnz $-1		;8a3c
	sbc a,d			;8a3e
	xor c			;8a3f
	cp 001h			;8a40
	ret m			;8a42
	ld (bc),a		;8a43
	jp (hl)			;8a44
	rlca			;8a45
	ex de,hl		;8a46
	ld b,h			;8a47
	ld (056f1h),a		;8a48
	jp p,0ea13h		;8a4b
	ld c,0d2h		;8a4e
	nop			;8a50
	jr nc,l8aa3h		;8a51
	and l			;8a53
	ret m			;8a54
	add hl,bc		;8a55
	nop			;8a56
	jr nc,l8aa9h		;8a57
	and c			;8a59
	ret m			;8a5a
	ld (bc),a		;8a5b
	nop			;8a5c
	jr nc,l8aafh		;8a5d
	sub l			;8a5f
	ret m			;8a60
	add hl,bc		;8a61
	nop			;8a62
	jr nc,l8ab5h		;8a63
	sub c			;8a65
l8a66h:
	ret m			;8a66
	ld (bc),a		;8a67
	nop			;8a68
	jr nc,l8abbh		;8a69
	and l			;8a6b
	jp (hl)			;8a6c
	ld bc,07382h		;8a6d
	jp (hl)			;8a70
	rlca			;8a71
	sub b			;8a72
	and b			;8a73
	pop de			;8a74
	nop			;8a75
	jr nc,$+3		;8a76
	jp nc,0a120h		;8a78
	nop			;8a7b
	sub c			;8a7c
	out (0a0h),a		;8a7d
	jp nc,0d371h		;8a7f
	sub b			;8a82
	jp nc,0d350h		;8a83
	ld (hl),b		;8a86
	jp nc,04010h		;8a87
	ld h,b			;8a8a
	or l			;8a8b
	ret m			;8a8c
	add hl,bc		;8a8d
	djnz l8ad0h		;8a8e
	ld h,b			;8a90
	or c			;8a91
	ret m			;8a92
	ld (bc),a		;8a93
	djnz l8ad6h		;8a94
	ld h,b			;8a96
	and l			;8a97
	ret m			;8a98
	add hl,bc		;8a99
	djnz l8adch		;8a9a
	ld h,b			;8a9c
	and c			;8a9d
	ret m			;8a9e
	ld (bc),a		;8a9f
	djnz l8ae2h		;8aa0
	ld h,b			;8aa2
l8aa3h:
	or l			;8aa3
	jp (hl)			;8aa4
	ld bc,08392h		;8aa5
	jp (hl)			;8aa8
l8aa9h:
	rlca			;8aa9
	and b			;8aaa
	or b			;8aab
	pop de			;8aac
	djnz l8aefh		;8aad
l8aafh:
	pop de			;8aaf
	ld h,d			;8ab0
	jp nc,032a1h		;8ab1
	ld h,c			;8ab4
l8ab5h:
	add a,c			;8ab5
	pop de			;8ab6
	ld sp,040fdh		;8ab7
	xor d			;8aba
l8abbh:
	cp 001h			;8abb
	ret m			;8abd
	ld (bc),a		;8abe
	jp (hl)			;8abf
	rlca			;8ac0
	jp nz,024ebh		;8ac1
	ld (056f1h),a		;8ac4
	jp p,0ea13h		;8ac7
	add hl,bc		;8aca
	jp nc,03000h		;8acb
	ld d,b			;8ace
	and l			;8acf
l8ad0h:
	ret m			;8ad0
	add hl,bc		;8ad1
	nop			;8ad2
	jr nc,l8b25h		;8ad3
	and c			;8ad5
l8ad6h:
	ret m			;8ad6
	ld (bc),a		;8ad7
	nop			;8ad8
	jr nc,l8b2bh		;8ad9
	sub l			;8adb
l8adch:
	ret m			;8adc
	add hl,bc		;8add
	nop			;8ade
	jr nc,l8b31h		;8adf
	sub c			;8ae1
l8ae2h:
	ret m			;8ae2
	ld (bc),a		;8ae3
	nop			;8ae4
	jr nc,$+82		;8ae5
	and l			;8ae7
	jp (hl)			;8ae8
	ld bc,07382h		;8ae9
	jp (hl)			;8aec
	rlca			;8aed
	sub b			;8aee
l8aefh:
	and b			;8aef
	pop de			;8af0
	nop			;8af1
	jr nc,$+3		;8af2
	jp nc,0a120h		;8af4
	nop			;8af7
	sub c			;8af8
	out (0a0h),a		;8af9
	jp nc,0d371h		;8afb
	sub b			;8afe
	jp nc,0d350h		;8aff
	ld (hl),b		;8b02
	jp nc,04010h		;8b03
	ld h,b			;8b06
	or l			;8b07
	ret m			;8b08
	add hl,bc		;8b09
	djnz l8b4ch		;8b0a
	ld h,b			;8b0c
	or c			;8b0d
	ret m			;8b0e
	ld (bc),a		;8b0f
	djnz $+66		;8b10
	ld h,b			;8b12
	and l			;8b13
	ret m			;8b14
	add hl,bc		;8b15
	djnz $+66		;8b16
	ld h,b			;8b18
	and c			;8b19
	ret m			;8b1a
	ld (bc),a		;8b1b
	djnz $+66		;8b1c
	ld h,b			;8b1e
	or l			;8b1f
	jp (hl)			;8b20
	ld bc,08392h		;8b21
	jp (hl)			;8b24
l8b25h:
	rlca			;8b25
	and b			;8b26
	or b			;8b27
	pop de			;8b28
	djnz l8b6bh		;8b29
l8b2bh:
	pop de			;8b2b
	ld h,d			;8b2c
	jp nc,032a1h		;8b2d
	ld h,c			;8b30
l8b31h:
	pop de			;8b31
	jr nc,l8b31h		;8b32
	cp e			;8b34
	xor d			;8b35
	cp 004h			;8b36
	ret nc			;8b38
	jp (hl)			;8b39
	ld b,0f5h		;8b3a
	sub c			;8b3c
	ld de,09131h		;8b3d
	nop			;8b40
	nop			;8b41
	sub b			;8b42
	nop			;8b43
	ld sp,0fb11h		;8b44
	inc bc			;8b47
	sub c			;8b48
	ld de,09131h		;8b49
l8b4ch:
	nop			;8b4c
	jr nc,l8b7fh		;8b4d
	djnz l8b81h		;8b4f
	jr nc,$+50		;8b51
	jr nc,$-9		;8b53
	sub c			;8b55
	ld de,09131h		;8b56
	nop			;8b59
	nop			;8b5a
	sub b			;8b5b
	sub b			;8b5c
	jr nc,l8b71h		;8b5d
	ei			;8b5f
	inc bc			;8b60
	sub b			;8b61
	sub b			;8b62
	ld de,03030h		;8b63
	sub b			;8b66
	nop			;8b67
	jp (hl)			;8b68
	inc bc			;8b69
	ld b,b			;8b6a
l8b6bh:
	jr nz,$+34		;8b6b
	jr nz,$-21		;8b6d
	ld b,040h		;8b6f
l8b71h:
	ld b,b			;8b71
	ld b,b			;8b72
	ld b,b			;8b73
	ld b,c			;8b74
	cp 004h			;8b75
	ret nc			;8b77
	jp (hl)			;8b78
	ld b,091h		;8b79
	ld de,00031h		;8b7b
	sub b			;8b7e
l8b7fh:
	nop			;8b7f
	nop			;8b80
l8b81h:
	sub c			;8b81
	ld sp,00000h		;8b82
	sub c			;8b85
	ld de,09131h		;8b86
	jr nc,l8b8bh		;8b89
l8b8bh:
	nop			;8b8b
	jr nc,l8b8eh		;8b8c
l8b8eh:
	nop			;8b8e
	jr nc,$+18		;8b8f
	push af			;8b91
	sub c			;8b92
	ld de,00031h		;8b93
	sub b			;8b96
	nop			;8b97
	nop			;8b98
	sub c			;8b99
l8b9ah:
	ld sp,00000h		;8b9a
	ei			;8b9d
	inc bc			;8b9e
	sub c			;8b9f
	jr nc,l8bd2h		;8ba0
	jr nc,$+50		;8ba2
	jr nc,l8bd6h		;8ba4
	jr nz,l8bc8h		;8ba6
	jr nz,l8bcah		;8ba8
	jr nc,l8bdch		;8baa
	jr nc,$+50		;8bac
	cp 004h			;8bae
	ret nc			;8bb0
	jp (hl)			;8bb1
	ld b,091h		;8bb2
	ld de,00031h		;8bb4
	sub b			;8bb7
	nop			;8bb8
	nop			;8bb9
	sub c			;8bba
l8bbbh:
	ld sp,00000h		;8bbb
	sub c			;8bbe
	ld de,09131h		;8bbf
	jr nc,l8bc4h		;8bc2
l8bc4h:
	nop			;8bc4
	jr nc,l8bc7h		;8bc5
l8bc7h:
	nop			;8bc7
l8bc8h:
	jr nc,l8bfah		;8bc8
l8bcah:
	push af			;8bca
	sub c			;8bcb
	ld de,00031h		;8bcc
	sub b			;8bcf
	nop			;8bd0
	nop			;8bd1
l8bd2h:
	sub c			;8bd2
	ld sp,00000h		;8bd3
l8bd6h:
	ei			;8bd6
	inc bc			;8bd7
	jp (hl)			;8bd8
	inc bc			;8bd9
	jr nz,l8bfch		;8bda
l8bdch:
	jp (hl)			;8bdc
	ld b,030h		;8bdd
	jr nc,$+50		;8bdf
	jr nc,l8c13h		;8be1
l8be3h:
	jr nc,l8c15h		;8be3
	jr nz,$+34		;8be5
	djnz l8c19h		;8be7
	nop			;8be9
	jr nc,l8c1ch		;8bea
	jr nc,l8be3h		;8bec
	cp 004h			;8bee
	ret nc			;8bf0
	jp (hl)			;8bf1
	ld b,091h		;8bf2
	ld de,00030h		;8bf4
	sub c			;8bf7
	nop			;8bf8
	nop			;8bf9
l8bfah:
	sub b			;8bfa
	sub b			;8bfb
l8bfch:
	cp 010h			;8bfc
	sub e			;8bfe
	ei			;8bff
	rlca			;8c00
	cp 004h			;8c01
	sub b			;8c03
	jr nc,$+50		;8c04
	jr nc,$+50		;8c06
	jr nc,l8b9ah		;8c08
	djnz $-110		;8c0a
	jr nc,$+50		;8c0c
l8c0eh:
	jr nc,l8c0eh		;8c0e
	djnz $-107		;8c10
	push af			;8c12
l8c13h:
	cp 004h			;8c13
l8c15h:
	ret nc			;8c15
	jp (hl)			;8c16
	ld b,091h		;8c17
l8c19h:
	ld de,09131h		;8c19
l8c1ch:
	nop			;8c1c
	nop			;8c1d
	sub b			;8c1e
	sub b			;8c1f
	cp 010h			;8c20
	sub e			;8c22
	cp 004h			;8c23
	ei			;8c25
	rlca			;8c26
	sub b			;8c27
	sub b			;8c28
	djnz l8bbbh		;8c29
	djnz l8c4dh		;8c2b
	jr nc,$+50		;8c2d
	jr nc,$-21		;8c2f
l8c31h:
	inc bc			;8c31
	jr nz,l8c54h		;8c32
	jp (hl)			;8c34
	ld b,030h		;8c35
l8c37h:
	jr nc,l8c37h		;8c37
	djnz $-107		;8c39
	ld (iy-055h),0feh	;8c3b
	ld bc,006e9h		;8c3f
	jp p,0f122h		;8c42
	ld d,e			;8c45
	call pe,001eeh		;8c46
	pop bc			;8c49
	jp pe,0d006h		;8c4a
l8c4dh:
	dec hl			;8c4d
	jp (hl)			;8c4e
	inc bc			;8c4f
	pop de			;8c50
	ld (hl),b		;8c51
	add a,b			;8c52
	sub b			;8c53
l8c54h:
	and b			;8c54
	or b			;8c55
	ret nc			;8c56
	nop			;8c57
	djnz l8c7ah		;8c58
	jp (hl)			;8c5a
	ld b,01bh		;8c5b
	ret nc			;8c5d
	jr nz,l8c31h		;8c5e
	or b			;8c60
	ret nc			;8c61
	dec e			;8c62
	jp (hl)			;8c63
	ld b,0ech		;8c64
	pop de			;8c66
	jp pe,0d204h		;8c67
	ld b,e			;8c6a
	jp pe,04105h		;8c6b
	jp pe,04106h		;8c6e
	jp pe,04107h		;8c71
	jp pe,04106h		;8c74
	jp pe,04105h		;8c77
l8c7ah:
	jp pe,0e907h		;8c7a
	inc bc			;8c7d
	ret nz			;8c7e
	jp nc,03040h		;8c7f
	jr nz,l8c94h		;8c82
	nop			;8c84
	out (0b0h),a		;8c85
	and b			;8c87
	cp 001h			;8c88
	jp (hl)			;8c8a
	ld b,0f2h		;8c8b
	djnz $-13		;8c8d
	ld d,l			;8c8f
	call pe,003eeh		;8c90
	pop bc			;8c93
l8c94h:
	jp pe,0d107h		;8c94
	dec hl			;8c97
	jp (hl)			;8c98
	inc bc			;8c99
	jp nc,08070h		;8c9a
	sub b			;8c9d
	and b			;8c9e
	or b			;8c9f
	pop de			;8ca0
	nop			;8ca1
	djnz l8cc4h		;8ca2
	jp (hl)			;8ca4
	ld b,01bh		;8ca5
	jp (hl)			;8ca7
	inc b			;8ca8
	jp nc,04030h		;8ca9
	ld d,b			;8cac
	ld h,b			;8cad
	ld (hl),b		;8cae
	add a,b			;8caf
	jp (hl)			;8cb0
	ld b,09fh		;8cb1
	sbc a,c			;8cb3
	jp (hl)			;8cb4
	inc b			;8cb5
	jp nc,03040h		;8cb6
	jr nz,l8ccbh		;8cb9
	out (0b0h),a		;8cbb
	and b			;8cbd
	cp 001h			;8cbe
	jp (hl)			;8cc0
	ld b,0f2h		;8cc1
	inc d			;8cc3
l8cc4h:
	pop af			;8cc4
	ld d,a			;8cc5
	ex de,hl		;8cc6
	add a,c			;8cc7
	ld hl,007eah		;8cc8
l8ccbh:
	defb 0edh ;next byte illegal after ed	;8ccb
	inc bc			;8ccc
	jp nc,0d31fh		;8ccd
l8cd0h:
	sbc a,a			;8cd0
	out (0bfh),a		;8cd1
	jp nc,0d32bh		;8cd3
l8cd6h:
	or e			;8cd6
	jp nc,0131fh		;8cd7
l8cdah:
	out (093h),a		;8cda
	ld b,e			;8cdc
	inc hl			;8cdd
	cp 001h			;8cde
	jp (hl)			;8ce0
	ld b,0f2h		;8ce1
	jr nz,l8cd6h		;8ce3
	ld d,(hl)		;8ce5
	ex de,hl		;8ce6
	add a,c			;8ce7
	ld hl,007eah		;8ce8
	defb 0edh ;next byte illegal after ed	;8ceb
	inc bc			;8cec
	jp nc,0d31fh		;8ced
	sbc a,a			;8cf0
	jp nc,02f4fh		;8cf1
	jp pe,0d009h		;8cf4
	ld b,b			;8cf7
	djnz l8ccbh		;8cf8
	sub b			;8cfa
	ld b,b			;8cfb
	djnz l8cd0h		;8cfc
	sub b			;8cfe
	ld b,b			;8cff
	djnz $-43		;8d00
	sub b			;8d02
	ld b,b			;8d03
	djnz l8cdah		;8d04
	sub b			;8d06
	ld b,b			;8d07
	djnz $-41		;8d08
	sub b			;8d0a
	ld b,b			;8d0b
	jp pe,0e906h		;8d0c
	inc b			;8d0f
	pop de			;8d10
	sub b			;8d11
	add a,b			;8d12
	ld (hl),b		;8d13
	ld h,b			;8d14
	ld d,b			;8d15
	ld b,b			;8d16
	jr nc,l8d39h		;8d17
	djnz l8d1bh		;8d19
l8d1bh:
	jp pe,0d207h		;8d1b
	or b			;8d1e
	and b			;8d1f
	sub b			;8d20
	add a,b			;8d21
	ld (hl),b		;8d22
	ld h,b			;8d23
	ld d,b			;8d24
	ld b,b			;8d25
	jr nc,l8d48h		;8d26
l8d28h:
	djnz l8d2ah		;8d28
l8d2ah:
	out (0b1h),a		;8d2a
	cp 001h			;8d2c
	jp (hl)			;8d2e
	ld b,0efh		;8d2f
	ex de,hl		;8d31
	add a,e			;8d32
	ld d,d			;8d33
	jp pe,0ed08h		;8d34
	ld b,0f5h		;8d37
l8d39h:
	pop de			;8d39
	sub b			;8d3a
	ld d,b			;8d3b
	nop			;8d3c
	sub b			;8d3d
	ld d,b			;8d3e
	nop			;8d3f
	sub b			;8d40
	ld d,b			;8d41
	ei			;8d42
	inc b			;8d43
	jp (hl)			;8d44
	ld b,0d3h		;8d45
	or b			;8d47
l8d48h:
	jp nc,04020h		;8d48
	ld (hl),b		;8d4b
	jr nz,l8d8eh		;8d4c
	ld (hl),b		;8d4e
	or b			;8d4f
	ld b,b			;8d50
	ld (hl),b		;8d51
	or b			;8d52
	pop de			;8d53
	jr nz,l8d28h		;8d54
	ld (hl),b		;8d56
	or b			;8d57
	pop de			;8d58
	jr nz,l8d9bh		;8d59
	jp nc,0d1b0h		;8d5b
	jr nz,l8da0h		;8d5e
	ld (hl),b		;8d60
	jr nz,l8da3h		;8d61
	ld (hl),b		;8d63
	or b			;8d64
	ld b,b			;8d65
	ld (hl),b		;8d66
	or b			;8d67
	ret nc			;8d68
	jr nz,$+66		;8d69
	ld (hl),b		;8d6b
	or b			;8d6c
	ret nc			;8d6d
	ld (hl),b		;8d6e
	jp (hl)			;8d6f
	ld b,0f5h		;8d70
	jp nc,09050h		;8d72
	pop de			;8d75
	nop			;8d76
	ld b,b			;8d77
	ei			;8d78
	inc b			;8d79
	push af			;8d7a
	jp nc,l9060h		;8d7b
	pop de			;8d7e
	nop			;8d7f
	ld b,b			;8d80
	ei			;8d81
	inc b			;8d82
	push af			;8d83
	jp nc,0b070h		;8d84
	pop de			;8d87
	jr nz,l8ddah		;8d88
	ei			;8d8a
	inc b			;8d8b
	jp (hl)			;8d8c
	inc bc			;8d8d
l8d8eh:
	jp pe,0d109h		;8d8e
	or b			;8d91
	and b			;8d92
	sub b			;8d93
	add a,b			;8d94
	ld (hl),b		;8d95
	ld h,b			;8d96
	ld d,b			;8d97
	ld b,b			;8d98
	jr nc,$+34		;8d99
l8d9bh:
	djnz l8d9dh		;8d9b
l8d9dh:
	jp nc,0a0b0h		;8d9d
l8da0h:
	sub b			;8da0
	add a,b			;8da1
	ld (hl),b		;8da2
l8da3h:
	ld h,b			;8da3
	ld d,b			;8da4
	ld b,b			;8da5
	jr nc,l8dc8h		;8da6
	djnz l8daah		;8da8
l8daah:
	out (0b0h),a		;8daa
	and b			;8dac
	sub b			;8dad
l8daeh:
	add a,b			;8dae
	ld (hl),b		;8daf
	ld h,b			;8db0
	ld d,b			;8db1
	ld b,b			;8db2
	cp 001h			;8db3
	jp (hl)			;8db5
	ld b,0ebh		;8db6
	add a,e			;8db8
	ld d,d			;8db9
	jp pe,0ed08h		;8dba
	ld b,0d1h		;8dbd
	push af			;8dbf
	sub b			;8dc0
	ld d,b			;8dc1
	nop			;8dc2
	sub b			;8dc3
	ld d,b			;8dc4
	nop			;8dc5
	sub b			;8dc6
	ld d,b			;8dc7
l8dc8h:
	ei			;8dc8
	inc b			;8dc9
	jp (hl)			;8dca
	ld b,0d3h		;8dcb
	or b			;8dcd
	jp nc,04020h		;8dce
	ld (hl),b		;8dd1
	jr nz,$+66		;8dd2
	ld (hl),b		;8dd4
	or b			;8dd5
	ld b,b			;8dd6
	ld (hl),b		;8dd7
	or b			;8dd8
	pop de			;8dd9
l8ddah:
	jr nz,l8daeh		;8dda
	ld (hl),b		;8ddc
	or b			;8ddd
	pop de			;8dde
	jr nz,l8e21h		;8ddf
	jp nc,0d1b0h		;8de1
	jr nz,l8e26h		;8de4
	ld (hl),b		;8de6
	jr nz,l8e29h		;8de7
	ld (hl),b		;8de9
	or b			;8dea
	ld b,b			;8deb
	ld (hl),b		;8dec
	or b			;8ded
	ret nc			;8dee
	jr nz,l8e31h		;8def
l8df1h:
	ld (hl),b		;8df1
	or b			;8df2
	ret nc			;8df3
	ld (hl),b		;8df4
	jp (hl)			;8df5
	ld b,0f5h		;8df6
	jp nc,05020h		;8df8
	sub b			;8dfb
	pop de			;8dfc
	nop			;8dfd
	ei			;8dfe
	inc b			;8dff
	push af			;8e00
	jp nc,06030h		;8e01
	sub b			;8e04
	pop de			;8e05
	nop			;8e06
	ei			;8e07
	inc b			;8e08
	push af			;8e09
	jp nc,l8040h		;8e0a
	or b			;8e0d
	pop de			;8e0e
	jr nz,$-3		;8e0f
	inc b			;8e11
	jp (hl)			;8e12
	ld b,0d4h		;8e13
	or b			;8e15
	out (020h),a		;8e16
	ld b,b			;8e18
	add a,b			;8e19
l8e1ah:
	or b			;8e1a
	jp nc,04020h		;8e1b
	add a,b			;8e1e
	or b			;8e1f
l8e20h:
	pop de			;8e20
l8e21h:
	jr nz,l8e63h		;8e21
	add a,b			;8e23
	or b			;8e24
	ret nc			;8e25
l8e26h:
	jr nz,l8e68h		;8e26
	add a,b			;8e28
l8e29h:
	defb 0fdh,03eh,0ach ;illegal sequence	;8e29
	cp 001h			;8e2c
	ret m			;8e2e
	jr z,l8e1ah		;8e2f
l8e31h:
	ld b,0ebh		;8e31
	add hl,bc		;8e33
l8e34h:
	jr nc,l8e20h		;8e34
	add hl,bc		;8e36
	in a,(003h)		;8e37
	push af			;8e39
	call nc,02040h		;8e3a
	ld (hl),b		;8e3d
	jr nz,$-110		;8e3e
	ld b,b			;8e40
	ld b,b			;8e41
	ld (hl),b		;8e42
	ei			;8e43
	inc b			;8e44
	ex de,hl		;8e45
	add hl,bc		;8e46
	ret p			;8e47
	call c,0d5f5h		;8e48
	sub b			;8e4b
	ld b,b			;8e4c
	ld (hl),b		;8e4d
	sub b			;8e4e
	ld b,b			;8e4f
	ld (hl),b		;8e50
	sub b			;8e51
	sub b			;8e52
	ei			;8e53
	inc b			;8e54
	ex de,hl		;8e55
	add hl,bc		;8e56
	jr nc,l8e34h		;8e57
	inc bc			;8e59
	push af			;8e5a
	call nc,02040h		;8e5b
	ld (hl),b		;8e5e
	jr nz,l8df1h		;8e5f
	ld b,b			;8e61
	ld b,b			;8e62
l8e63h:
	ld b,b			;8e63
	ei			;8e64
	inc b			;8e65
	ex de,hl		;8e66
	add hl,bc		;8e67
l8e68h:
	ret p			;8e68
	call c,0d5f5h		;8e69
	sub b			;8e6c
l8e6dh:
	ld b,b			;8e6d
	ld (hl),b		;8e6e
	sub b			;8e6f
	ld b,b			;8e70
	ld (hl),b		;8e71
	sub b			;8e72
	sub b			;8e73
	ei			;8e74
	inc bc			;8e75
	push de			;8e76
l8e77h:
	sub b			;8e77
	call nc,04010h		;8e78
	ld (hl),b		;8e7b
	call nc,04010h		;8e7c
	ld (hl),b		;8e7f
	sub b			;8e80
	cp 001h			;8e81
	jp (hl)			;8e83
	ld b,0ebh		;8e84
l8e86h:
	add hl,de		;8e86
	ld d,d			;8e87
	jp pe,0f50ah		;8e88
	ret m			;8e8b
	jr z,l8e63h		;8e8c
	sub b			;8e8e
	ret m			;8e8f
l8e90h:
	ld h,0d4h		;8e90
	sub b			;8e92
	out (090h),a		;8e93
	ret m			;8e95
	jr z,l8e6dh		;8e96
	sub b			;8e98
l8e99h:
	ret m			;8e99
	ld h,0d4h		;8e9a
	sub b			;8e9c
	out (090h),a		;8e9d
	ret m			;8e9f
	jr z,l8e77h		;8ea0
	sub b			;8ea2
l8ea3h:
	sub b			;8ea3
	ei			;8ea4
	inc bc			;8ea5
	push de			;8ea6
	sub b			;8ea7
	ret m			;8ea8
	ld h,0d4h		;8ea9
	sub b			;8eab
	out (090h),a		;8eac
	ret m			;8eae
	jr z,l8e86h		;8eaf
	sub b			;8eb1
	ret m			;8eb2
	ld h,0d4h		;8eb3
	sub b			;8eb5
	out (090h),a		;8eb6
	ret m			;8eb8
	jr z,l8e90h		;8eb9
	ld d,b			;8ebb
	ret m			;8ebc
l8ebdh:
	ld h,0d4h		;8ebd
	ld d,b			;8ebf
	push af			;8ec0
	ret m			;8ec1
	jr z,l8e99h		;8ec2
	ld (hl),b		;8ec4
	ret m			;8ec5
	ld h,0d4h		;8ec6
	ld (hl),b		;8ec8
	out (070h),a		;8ec9
	ret m			;8ecb
	jr z,l8ea3h		;8ecc
	ld (hl),b		;8ece
	ret m			;8ecf
	ld h,0d4h		;8ed0
	ld (hl),b		;8ed2
	out (070h),a		;8ed3
	ret m			;8ed5
	jr z,$-41		;8ed6
l8ed8h:
	ld (hl),b		;8ed8
	ld (hl),b		;8ed9
	ei			;8eda
	inc b			;8edb
	push af			;8edc
	push de			;8edd
	sub b			;8ede
	ret m			;8edf
	ld h,0d4h		;8ee0
l8ee2h:
	sub b			;8ee2
	out (090h),a		;8ee3
	ret m			;8ee5
	jr z,l8ebdh		;8ee6
	sub b			;8ee8
	ret m			;8ee9
	ld h,0d4h		;8eea
l8eech:
	sub b			;8eec
	out (090h),a		;8eed
	ret m			;8eef
	jr z,$-41		;8ef0
	sub b			;8ef2
	sub b			;8ef3
l8ef4h:
	ei			;8ef4
	inc b			;8ef5
	cp 001h			;8ef6
	jp (hl)			;8ef8
	ld b,0ebh		;8ef9
	add hl,bc		;8efb
	ld b,d			;8efc
	jp pe,0f50ah		;8efd
l8f00h:
	ret m			;8f00
	jr z,l8ed8h		;8f01
	sub b			;8f03
	ret m			;8f04
	ld h,0d4h		;8f05
	sub b			;8f07
	out (090h),a		;8f08
	ret m			;8f0a
	jr z,l8ee2h		;8f0b
	sub b			;8f0d
	ret m			;8f0e
	ld h,0d4h		;8f0f
	sub b			;8f11
	out (090h),a		;8f12
	ret m			;8f14
	jr z,l8eech		;8f15
	sub b			;8f17
	sub b			;8f18
	ei			;8f19
	ld a,(bc)		;8f1a
	push af			;8f1b
	ret m			;8f1c
	jr z,l8ef4h		;8f1d
	sub b			;8f1f
	ret m			;8f20
	ld h,0d4h		;8f21
	sub b			;8f23
	ei			;8f24
	inc b			;8f25
	jp pe,0f80bh		;8f26
	jr z,l8f00h		;8f29
	ld (hl),b		;8f2b
	call nc,0c070h		;8f2c
	ld (hl),b		;8f2f
	ret nz			;8f30
	ld (hl),b		;8f31
	ret nz			;8f32
	ld (hl),b		;8f33
	cp 001h			;8f34
	ret m			;8f36
	jr z,$-21		;8f37
	ld b,0ebh		;8f39
	add hl,bc		;8f3b
	ld d,d			;8f3c
	jp pe,0f50ah		;8f3d
	push de			;8f40
	ld d,b			;8f41
	ld d,b			;8f42
	call nc,05050h		;8f43
	ei			;8f46
	ex af,af'		;8f47
	push af			;8f48
	push de			;8f49
	ld b,b			;8f4a
	ld b,b			;8f4b
	call nc,04040h		;8f4c
	ei			;8f4f
	ex af,af'		;8f50
	push af			;8f51
	push de			;8f52
	ld d,b			;8f53
	ld d,b			;8f54
	call nc,05050h		;8f55
	ei			;8f58
	inc b			;8f59
	push af			;8f5a
	push de			;8f5b
	ld h,b			;8f5c
	ld h,b			;8f5d
	call nc,06060h		;8f5e
	ei			;8f61
	inc b			;8f62
	push af			;8f63
	push de			;8f64
	ld (hl),b		;8f65
	ld (hl),b		;8f66
	call nc,07070h		;8f67
	ei			;8f6a
	inc b			;8f6b
	ex de,hl		;8f6c
	add hl,bc		;8f6d
	ld (00beah),a		;8f6e
	push de			;8f71
	add a,c			;8f72
	call nc,0d5b0h		;8f73
	add a,c			;8f76
	call nc,0d580h		;8f77
	add a,c			;8f7a
	call nc,0d580h		;8f7b
	add a,c			;8f7e
	call nc,0d580h		;8f7f
	add a,b			;8f82
	or b			;8f83
	call nc,04020h		;8f84
	cp 001h			;8f87
	ret m			;8f89
	jr z,$-21		;8f8a
	ld b,0ebh		;8f8c
	add hl,bc		;8f8e
	ld d,d			;8f8f
	jp pe,0f50ah		;8f90
	push de			;8f93
	ld d,b			;8f94
	ld d,b			;8f95
	call nc,05050h		;8f96
	ei			;8f99
	ex af,af'		;8f9a
	push af			;8f9b
	push de			;8f9c
	ld b,b			;8f9d
	ld b,b			;8f9e
	call nc,04040h		;8f9f
	ei			;8fa2
	ex af,af'		;8fa3
	push af			;8fa4
	push de			;8fa5
	jr nz,l8fc8h		;8fa6
	call nc,02020h		;8fa8
	ei			;8fab
	inc b			;8fac
	push af			;8fad
	push de			;8fae
	jr nc,$+50		;8faf
	call nc,03030h		;8fb1
	ei			;8fb4
	inc b			;8fb5
	push af			;8fb6
	push de			;8fb7
	ld b,b			;8fb8
	ld b,b			;8fb9
	call nc,04040h		;8fba
	ei			;8fbd
	inc b			;8fbe
	jp pe,0eb0bh		;8fbf
	add hl,bc		;8fc2
	ld (0b0d5h),a		;8fc3
	or b			;8fc6
	ret nz			;8fc7
l8fc8h:
	or b			;8fc8
	ret nz			;8fc9
	or b			;8fca
	ret nz			;8fcb
	or b			;8fcc
	push de			;8fcd
	ld b,b			;8fce
l8fcfh:
	add a,b			;8fcf
	or b			;8fd0
	call nc,04020h		;8fd1
	add a,b			;8fd4
	or b			;8fd5
	out (020h),a		;8fd6
	defb 0fdh,02ch ;inc iyl	;8fd8
	xor (hl)		;8fda
	cp 001h			;8fdb
	ret m			;8fdd
	ld a,(bc)		;8fde
	jp (hl)			;8fdf
	ld b,0ebh		;8fe0
	add hl,bc		;8fe2
	jr nz,l8fcfh		;8fe3
	ex af,af'		;8fe5
	push af			;8fe6
	jp nc,07040h		;8fe7
	or b			;8fea
	pop de			;8feb
	jr nz,$-44		;8fec
	ld (hl),b		;8fee
	or b			;8fef
	ei			;8ff0
	dec b			;8ff1
	ld b,b			;8ff2
	ld (hl),b		;8ff3
l8ff4h:
	push af			;8ff4
	sub b			;8ff5
	ld b,b			;8ff6
	jr nz,l8ff4h		;8ff7
	dec b			;8ff9
l8ffah:
	push af			;8ffa
	sub b			;8ffb
	ld b,b			;8ffc
	djnz l8ffah		;8ffd
	inc b			;8fff
sub_9000h:
	out (090h),a		;9000
l9002h:
	jp nc,0b090h		;9002
	jr nz,l9077h		;9005
l9007h:
	push af			;9007
l9008h:
	jp nc,07040h		;9008
	or b			;900b
	pop de			;900c
	jr nz,$-44		;900d
	ld (hl),b		;900f
	or b			;9010
	ei			;9011
	dec b			;9012
	ld b,b			;9013
	ld (hl),b		;9014
l9015h:
	jp nc,l90f5h		;9015
	ld b,b			;9018
	jr nz,$-3		;9019
	dec b			;901b
l901ch:
	push af			;901c
	sub b			;901d
	ld b,b			;901e
	djnz l901ch		;901f
	inc bc			;9021
	cp 004h			;9022
	ret m			;9024
	dec b			;9025
	ret nc			;9026
	jp (hl)			;9027
	inc bc			;9028
	ld d,b			;9029
	ld d,b			;902a
	ld d,b			;902b
	ld d,b			;902c
	jp (hl)			;902d
	ld b,060h		;902e
	ld h,b			;9030
	ld h,b			;9031
	ld h,b			;9032
	add a,c			;9033
l9034h:
	cp 001h			;9034
	ret m			;9036
	ld a,(bc)		;9037
	jp (hl)			;9038
	ld b,0ebh		;9039
	ld a,b			;903b
	ld e,a			;903c
	jp pe,0f508h		;903d
	pop de			;9040
	djnz l9015h		;9041
	sub b			;9043
	ld b,b			;9044
	ei			;9045
	ld a,(bc)		;9046
	pop de			;9047
	djnz l901ch		;9048
	sub b			;904a
	push af			;904b
l904ch:
	jp nc,070b0h		;904c
	jr nz,l904ch		;904f
	dec b			;9051
	jp nc,0f5b0h		;9052
	jp nc,0b070h		;9055
	pop de			;9058
	jr nz,$-3		;9059
	dec b			;905b
	jp nc,0f570h		;905c
	pop de			;905f
l9060h:
	djnz l9034h		;9060
	sub b			;9062
	ld b,b			;9063
	ei			;9064
	dec b			;9065
	pop de			;9066
	djnz $-9		;9067
l9069h:
	pop de			;9069
	ld b,b			;906a
	djnz $-44		;906b
	sub b			;906d
	ei			;906e
	ld (bc),a		;906f
	pop de			;9070
	ld b,b			;9071
	djnz l9069h		;9072
l9074h:
	pop de			;9074
	ld (hl),b		;9075
	ld b,b			;9076
l9077h:
	djnz l9074h		;9077
	ld (bc),a		;9079
	ld (hl),b		;907a
	ld b,b			;907b
l907ch:
	cp 001h			;907c
	ret m			;907e
	ld a,(bc)		;907f
l9080h:
	jp (hl)			;9080
l9081h:
	ld b,0ebh		;9081
	ld a,b			;9083
	ld e,a			;9084
	jp pe,0f508h		;9085
l9088h:
	pop de			;9088
	sub b			;9089
	ld b,b			;908a
l908bh:
	djnz l9088h		;908b
	ld a,(bc)		;908d
	pop de			;908e
	sub b			;908f
l9090h:
	ld b,b			;9090
	push af			;9091
	pop de			;9092
	ld (hl),b		;9093
	jr nz,$-44		;9094
	or b			;9096
	ei			;9097
	dec b			;9098
l9099h:
	pop de			;9099
	ld (hl),b		;909a
	push af			;909b
l909ch:
	pop de			;909c
	or b			;909d
	ld (hl),b		;909e
	jr nz,l909ch		;909f
	dec b			;90a1
	pop de			;90a2
	or b			;90a3
	ret m			;90a4
	dec e			;90a5
	jp pe,0eb0ch		;90a6
	add hl,bc		;90a9
	jr nz,l907ch		;90aa
	sub b			;90ac
	ld b,b			;90ad
	djnz l9081h		;90ae
	sub b			;90b0
	ld b,b			;90b1
	djnz $-44		;90b2
	sub b			;90b4
	ld b,b			;90b5
	djnz l908bh		;90b6
	sub b			;90b8
	ld b,b			;90b9
	djnz l9090h		;90ba
	sub b			;90bc
l90bdh:
	ld b,b			;90bd
	djnz $-41		;90be
	sub b			;90c0
	ex de,hl		;90c1
	add hl,bc		;90c2
	jr nc,l90bdh		;90c3
	ld a,(bc)		;90c5
	call nc,0b090h		;90c6
	out (010h),a		;90c9
	ld b,b			;90cb
	sub b			;90cc
	or b			;90cd
	jp nc,04010h		;90ce
	ld (hl),b		;90d1
l90d2h:
	or b			;90d2
	pop de			;90d3
	djnz $+66		;90d4
	ld (hl),b		;90d6
	or b			;90d7
	ret nc			;90d8
	djnz $+66		;90d9
	cp 001h			;90db
	ret m			;90dd
	dec d			;90de
	jp (hl)			;90df
	ld b,0efh		;90e0
	jp p,0f110h		;90e2
	ld d,l			;90e5
	add a,(ix+054h)		;90e6
	in a,(001h)		;90e9
	jp pe,0ed09h		;90eb
	ld b,0d3h		;90ee
	sub l			;90f0
	jp nc,02b49h		;90f1
	inc bc			;90f4
l90f5h:
	cpl			;90f5
	ret m			;90f6
	dec e			;90f7
	jp pe,0dd0ah		;90f8
	ld b,054h		;90fb
	pop de			;90fd
	ld a,a			;90fe
	ret m			;90ff
	dec d			;9100
	jp pe,0dd0ah		;9101
l9104h:
	add a,(hl)		;9104
l9105h:
	ld d,h			;9105
l9106h:
	jp nc,0539bh		;9106
	ld l,e			;9109
l910ah:
	pop de			;910a
	inc hl			;910b
l910ch:
	jp nc,0f8bfh		;910c
	ld (bc),a		;910f
	ex de,hl		;9110
	ld b,d			;9111
	ld b,b			;9112
	in a,(002h)		;9113
	jp pe,0d30ah		;9115
	add a,d			;9118
	or d			;9119
	jp nc,05222h		;911a
	jr nz,l916fh		;911d
	add a,b			;911f
	or b			;9120
	call c,001feh		;9121
	ret m			;9124
	dec d			;9125
	jp (hl)			;9126
	ld b,0efh		;9127
	jp p,0f110h		;9129
	ld d,l			;912c
	add a,(ix+054h)		;912d
	in a,(001h)		;9130
	jp pe,0ed09h		;9132
	ld b,0d3h		;9135
	sub l			;9137
	jp nc,02b49h		;9138
	inc bc			;913b
	jp nc,0f82fh		;913c
	dec e			;913f
	jp pe,0dd0ah		;9140
	ld b,054h		;9143
	pop de			;9145
l9146h:
	ld a,a			;9146
	ret m			;9147
	dec d			;9148
	jp pe,0dd0ah		;9149
	add a,(hl)		;914c
	ld d,h			;914d
	jp nc,05995h		;914e
	ld h,l			;9151
	sbc a,c			;9152
	jp nc,0f84fh		;9153
	ld (bc),a		;9156
	jp pe,0eb0ah		;9157
	add hl,bc		;915a
	jr nz,l9146h		;915b
	ld b,0d4h		;915d
	add a,b			;915f
	or b			;9160
	out (020h),a		;9161
	ld b,b			;9163
	add a,b			;9164
	or b			;9165
	jp nc,04020h		;9166
	add a,b			;9169
	or b			;916a
	pop de			;916b
	jr nz,l91aeh		;916c
	add a,b			;916e
l916fh:
	or b			;916f
	ret nc			;9170
	jr nz,l91b3h		;9171
	defb 0fdh,0dbh,0afh ;illegal sequence	;9173
	cp 001h			;9176
	ret m			;9178
	ld (bc),a		;9179
	jp (hl)			;917a
	ld b,0f2h		;917b
	ld (054f1h),hl		;917d
	ex de,hl		;9180
	add a,a			;9181
	ld h,b			;9182
	jp pe,0ed0ah		;9183
	ex af,af'		;9186
l9187h:
	pop de			;9187
	sub 001h		;9188
	rlca			;918a
l918bh:
	sbc a,e			;918b
	ret c			;918c
	jp (hl)			;918d
	inc bc			;918e
	call pe,007eah		;918f
	jp nc,l9080h		;9192
	and b			;9195
	or b			;9196
	pop de			;9197
	nop			;9198
	djnz $+34		;9199
	jr nc,l9187h		;919b
	ex af,af'		;919d
	ex de,hl		;919e
	add a,a			;919f
	jr nc,l918bh		;91a0
	ld b,04bh		;91a2
	jp pe,0f108h		;91a4
	ld d,c			;91a7
	ret nc			;91a8
	or b			;91a9
	ld (hl),b		;91aa
	ex de,hl		;91ab
	add a,a			;91ac
	ld b,b			;91ad
l91aeh:
	sbc a,a			;91ae
	xor 001h		;91af
	pop af			;91b1
	ld d,e			;91b2
l91b3h:
	jp pe,0ec06h		;91b3
	ret m			;91b6
	dec c			;91b7
	jp (hl)			;91b8
	inc bc			;91b9
	jp nc,06050h		;91ba
	ld (hl),b		;91bd
	add a,b			;91be
	jp (hl)			;91bf
	ld b,0d2h		;91c0
	jp pe,l9105h		;91c2
	jp pe,l9106h		;91c5
	jp pe,l9106h+1		;91c8
	jp pe,l9106h+2		;91cb
	jp pe,l9106h+1		;91ce
	jp pe,l9106h		;91d1
	jp pe,l9105h		;91d4
	jp pe,l9104h		;91d7
	ret m			;91da
	ld (bc),a		;91db
	ex de,hl		;91dc
	add a,a			;91dd
	ld (hl),b		;91de
	in a,(002h)		;91df
	jp pe,0ed09h		;91e1
	inc bc			;91e4
	jp nc,09f9fh		;91e5
	ld h,a			;91e8
	daa			;91e9
l91eah:
	ex de,hl		;91ea
	add a,e			;91eb
	ld d,b			;91ec
	jp pe,01f0ah		;91ed
	cp 001h			;91f0
	ret m			;91f2
	dec d			;91f3
	jp (hl)			;91f4
	ld b,0f2h		;91f5
	jr nz,l91eah		;91f7
	ld b,l			;91f9
	ex de,hl		;91fa
	add a,d			;91fb
	ld b,c			;91fc
	jp pe,0ed0eh		;91fd
	ld a,(bc)		;9200
l9201h:
	jp nc,01020h		;9201
	jr nz,l924eh		;9204
	jp nc,0d191h		;9206
	ld hl,0d217h		;9209
	or c			;920c
	ret nz			;920d
	pop de			;920e
	ld de,021c0h		;920f
	defb 0edh ;next byte illegal after ed	;9212
	add hl,bc		;9213
	ld c,l			;9214
	defb 0edh ;next byte illegal after ed	;9215
	dec bc			;9216
	jr nz,l9229h		;9217
	daa			;9219
	ld (de),a		;921a
	ret nz			;921b
	ld (0ebc0h),hl		;921c
	add a,c			;921f
	pop bc			;9220
	ld (de),a		;9221
	jp nc,0ea92h		;9222
	ld a,(bc)		;9225
	in a,(002h)		;9226
	ex de,hl		;9228
l9229h:
	add a,a			;9229
l922ah:
	ld d,b			;922a
	jp (hl)			;922b
	inc c			;922c
	ld c,d			;922d
	call pe,001eah		;922e
	ld b,c			;9231
	cp 001h			;9232
	jp (hl)			;9234
	ld b,0f2h		;9235
	jr nz,l922ah		;9237
	ld d,l			;9239
	ex de,hl		;923a
	add a,d			;923b
	ld b,c			;923c
	ret m			;923d
	dec d			;923e
	jp pe,0ed0eh		;923f
	ld a,(bc)		;9242
	jp nc,01020h		;9243
l9246h:
	jr nz,l9290h		;9246
	sub c			;9248
l9249h:
	pop de			;9249
	ld hl,0d217h		;924a
	or c			;924d
l924eh:
	ret nz			;924e
	pop de			;924f
	ld de,021c0h		;9250
	jp pe,0ed0eh		;9253
	ld a,(bc)		;9256
	ld c,h			;9257
	ret nz			;9258
	defb 0edh ;next byte illegal after ed	;9259
	dec c			;925a
	jr nz,$+18		;925b
	daa			;925d
	jp nc,0c0b1h		;925e
	pop de			;9261
	ld hl,070c0h		;9262
	ld b,b			;9265
	ex de,hl		;9266
	add a,a			;9267
	ld (hl),b		;9268
	sbc a,a			;9269
	ret m			;926a
	dec e			;926b
	jp pe,0eb08h		;926c
	add hl,bc		;926f
	jr nz,l9246h		;9270
	djnz l9249h		;9272
	sub b			;9274
	ex de,hl		;9275
	add hl,bc		;9276
	jr nz,$-20		;9277
	ld a,(bc)		;9279
	ret m			;927a
	ld a,(bc)		;927b
	call nc,0b090h		;927c
	out (010h),a		;927f
	ld b,b			;9281
	sub b			;9282
	or b			;9283
	jp nc,04010h		;9284
	ld (hl),b		;9287
l9288h:
	or b			;9288
	pop de			;9289
	djnz $+66		;928a
	ld (hl),b		;928c
	or b			;928d
	cp 001h			;928e
l9290h:
	ret m			;9290
	ld a,(bc)		;9291
	jp (hl)			;9292
	ld b,0f2h		;9293
	jr l9288h		;9295
	ld d,h			;9297
	ex de,hl		;9298
	add a,a			;9299
	ld d,b			;929a
	jp pe,0ed0ch		;929b
	ld a,(bc)		;929e
	rst 28h			;929f
	pop de			;92a0
	nop			;92a1
	jr nz,l92e4h		;92a2
	jp nc,l9099h		;92a4
	pop de			;92a7
	jr nz,l92eah		;92a8
	sbc a,e			;92aa
	ret nc			;92ab
	nop			;92ac
	pop de			;92ad
	ld (hl),b		;92ae
	jr nz,l92b1h		;92af
l92b1h:
	out (0bfh),a		;92b1
	in a,(002h)		;92b3
	defb 0ddh,006h,054h ;illegal sequence	;92b5
	ret p			;92b8
	jp pe,0d10ah		;92b9
	cp a			;92bc
	cp 001h			;92bd
	jp (hl)			;92bf
	ld b,0f8h		;92c0
	ld a,(bc)		;92c2
	jp p,0f118h		;92c3
	ld d,h			;92c6
	ex de,hl		;92c7
	add a,a			;92c8
	ld d,b			;92c9
	jp pe,0ed0ch		;92ca
	ld a,(bc)		;92cd
	pop de			;92ce
	nop			;92cf
	jr nz,l9312h		;92d0
	jp nc,l9099h		;92d2
	pop de			;92d5
	jr nz,$+66		;92d6
	sbc a,e			;92d8
l92d9h:
	jp pe,0d00ch		;92d9
	nop			;92dc
	pop de			;92dd
	sub b			;92de
	ld h,b			;92df
	jr nz,l9322h		;92e0
	ld (hl),b		;92e2
	or b			;92e3
l92e4h:
	jp pe,0d00ah		;92e4
	pop af			;92e7
	ld d,e			;92e8
	dec hl			;92e9
l92eah:
	call pe,002eah		;92ea
	jr nz,l92d9h		;92ed
	ld a,(bc)		;92ef
	ret m			;92f0
	ld (bc),a		;92f1
	ex de,hl		;92f2
	ld b,d			;92f3
	ld b,b			;92f4
	jp nc,05222h		;92f5
	add a,d			;92f8
	or d			;92f9
	defb 0edh ;next byte illegal after ed	;92fa
l92fbh:
	ld bc,l8050h		;92fb
	or b			;92fe
	pop de			;92ff
l9300h:
	jr nz,l9300h		;9300
l9302h:
	ld bc,00af8h		;9302
	jp (hl)			;9305
	ld b,0f2h		;9306
	jr l92fbh		;9308
	ld d,h			;930a
	ex de,hl		;930b
	add a,a			;930c
	ld d,b			;930d
	jp pe,0ed0ch		;930e
	ld a,(bc)		;9311
l9312h:
	pop de			;9312
	nop			;9313
	jr nz,$+66		;9314
	jp nc,l9099h		;9316
	pop de			;9319
	jr nz,l935ch		;931a
	sbc a,e			;931c
	jp pe,0d00ch		;931d
l9320h:
	nop			;9320
	pop de			;9321
l9322h:
	ld (hl),b		;9322
	jr nz,l9325h		;9323
l9325h:
	out (0bfh),a		;9325
	defb 0ddh,006h,054h ;illegal sequence	;9327
	ret p			;932a
	jp pe,0db0ah		;932b
	ld bc,0bfd1h		;932e
	call c,001feh		;9331
	ret m			;9334
	ld a,(bc)		;9335
	jp (hl)			;9336
	ld b,0f2h		;9337
	jr $-13			;9339
	ld d,h			;933b
	ex de,hl		;933c
	add a,a			;933d
	ld d,b			;933e
	jp pe,0ed0ch		;933f
	add hl,bc		;9342
	pop de			;9343
	nop			;9344
	jr nz,l9387h		;9345
	jp nc,0d199h		;9347
	nop			;934a
	jr nc,l93adh		;934b
	sub a			;934d
	defb 0edh ;next byte illegal after ed	;934e
	ld a,(bc)		;934f
	ret nc			;9350
	nop			;9351
	pop de			;9352
	sub b			;9353
l9354h:
	ld h,b			;9354
	jr nz,l9387h		;9355
	ld h,b			;9357
	sub b			;9358
	ret nc			;9359
	nop			;935a
	pop de			;935b
l935ch:
	or b			;935c
	add a,b			;935d
	jp pe,0f20ah		;935e
	jr l9354h		;9361
	ld d,d			;9363
	ret nc			;9364
	ld c,l			;9365
	ret m			;9366
	dec bc			;9367
	ex de,hl		;9368
	add hl,bc		;9369
	jr nz,$-42		;936a
	jr nz,l93aeh		;936c
	add a,b			;936e
	or b			;936f
	out (020h),a		;9370
	ld b,b			;9372
	add a,b			;9373
	or b			;9374
	jp nc,04020h		;9375
	add a,b			;9378
	or b			;9379
	pop de			;937a
	jr nz,$+66		;937b
	add a,b			;937d
	or b			;937e
	defb 0fdh,076h,0b1h ;illegal sequence	;937f
	cp 001h			;9382
l9384h:
	ret m			;9384
	ld (bc),a		;9385
	jp (hl)			;9386
l9387h:
	ld b,0f2h		;9387
	ld (044f1h),hl		;9389
	ex de,hl		;938c
	add a,a			;938d
	ld d,b			;938e
	jp pe,0ed0ah		;938f
	inc bc			;9392
	sub 001h		;9393
	rlca			;9395
	ret nc			;9396
	dec hl			;9397
	ret c			;9398
	jp pe,0e908h		;9399
	inc bc			;939c
	call pe,070d1h		;939d
	add a,b			;93a0
l93a1h:
	sub b			;93a1
	and b			;93a2
	or b			;93a3
	ret nc			;93a4
	nop			;93a5
	djnz $+34		;93a6
	jp (hl)			;93a8
	ld b,0ebh		;93a9
	add a,a			;93ab
	ld b,c			;93ac
l93adh:
	dec de			;93ad
l93aeh:
	jp pe,0d009h		;93ae
	jr nz,l9384h		;93b1
	or b			;93b3
	ex de,hl		;93b4
	add a,a			;93b5
	ld d,c			;93b6
	jp pe,0d00ah		;93b7
	rra			;93ba
	jp (hl)			;93bb
	ld b,0ech		;93bc
	ret m			;93be
	dec c			;93bf
	jp pe,0d205h		;93c0
	ld b,c			;93c3
	jp pe,04106h		;93c4
	jp pe,04107h		;93c7
	jp pe,04108h		;93ca
	jp pe,04107h		;93cd
	jp pe,04106h		;93d0
	jp pe,04105h		;93d3
l93d6h:
	jp pe,04104h		;93d6
	jp pe,04103h		;93d9
	cp 001h			;93dc
	ret m			;93de
	ld (bc),a		;93df
	jp (hl)			;93e0
	ld b,0f2h		;93e1
	djnz l93d6h		;93e3
	ld d,l			;93e5
	ex de,hl		;93e6
	add a,a			;93e7
	ld d,b			;93e8
	jp pe,0ed0bh		;93e9
	ld b,0d6h		;93ec
	ld bc,0d104h		;93ee
	dec hl			;93f1
	ret c			;93f2
	jp pe,0e908h		;93f3
	inc bc			;93f6
	call pe,070d2h		;93f7
	add a,b			;93fa
	sub b			;93fb
	and b			;93fc
	or b			;93fd
	pop de			;93fe
	nop			;93ff
	djnz l9422h		;9400
	jp (hl)			;9402
	ld b,0eah		;9403
	ld a,(bc)		;9405
	ex de,hl		;9406
	add a,a			;9407
	ld d,b			;9408
	dec de			;9409
	jp (hl)			;940a
	inc b			;940b
	jp nc,04030h		;940c
	ld d,b			;940f
	ld h,b			;9410
	ld (hl),b		;9411
	add a,b			;9412
	jp pe,0db0ah		;9413
	ld (bc),a		;9416
	jp (hl)			;9417
	inc c			;9418
	sbc a,l			;9419
	call pe,005eah		;941a
	jp (hl)			;941d
	ld (bc),a		;941e
	sub b			;941f
	add a,b			;9420
	ld (hl),b		;9421
l9422h:
	ld h,b			;9422
	ld d,b			;9423
	ld b,b			;9424
	jp pe,03004h		;9425
	jr nz,$+18		;9428
	nop			;942a
l942bh:
	jp pe,0d303h		;942b
	or b			;942e
	and b			;942f
	cp 001h			;9430
	ret m			;9432
	dec d			;9433
	jp (hl)			;9434
	ld b,0c2h		;9435
	xor 001h		;9437
	jp p,0f120h		;9439
	ld b,h			;943c
	ex de,hl		;943d
	rlca			;943e
	jr nz,l942bh		;943f
	ex af,af'		;9441
	jp nc,01020h		;9442
	jr nz,$+74		;9445
	jp nc,0d191h		;9447
	ld hl,0d217h		;944a
	or c			;944d
	ret nz			;944e
	pop de			;944f
	ld (de),a		;9450
	ld hl,0204dh		;9451
	djnz l947dh		;9454
	inc de			;9456
	inc hl			;9457
	ld (de),a		;9458
	jp nc,0ea92h		;9459
	rlca			;945c
	jp (hl)			;945d
	inc c			;945e
	ld c,h			;945f
	cp 001h			;9460
	jp (hl)			;9462
	ld b,0eeh		;9463
	ld bc,020f2h		;9465
	pop af			;9468
	ld b,l			;9469
	ex de,hl		;946a
	rlca			;946b
	jr nz,$-6		;946c
	dec d			;946e
	jp pe,0f508h		;946f
	jp nc,01020h		;9472
	jr nz,$+74		;9475
	sub c			;9477
	pop de			;9478
	ld hl,0d217h		;9479
	or d			;947c
l947dh:
	pop de			;947d
	ld (de),a		;947e
	ld hl,008eah		;947f
	ld c,l			;9482
	jr nz,$+18		;9483
l9485h:
	daa			;9485
	jp nc,0d1b2h		;9486
	ld (04070h),hl		;9489
	sbc a,h			;948c
	jp pe,0f805h		;948d
	ld a,(bc)		;9490
	jp (hl)			;9491
l9492h:
	ld b,0c1h		;9492
	call nc,0b090h		;9494
	out (010h),a		;9497
	ld b,b			;9499
	sub b			;949a
	or b			;949b
	jp nc,04010h		;949c
	ld (hl),b		;949f
	or b			;94a0
	jp pe,0d107h		;94a1
	djnz $+66		;94a4
	ld (hl),b		;94a6
l94a7h:
	ret nz			;94a7
l94a8h:
	cp 001h			;94a8
	jp (hl)			;94aa
	ld b,0c1h		;94ab
	xor 001h		;94ad
	ret m			;94af
	ld a,(bc)		;94b0
l94b1h:
	ex de,hl		;94b1
	rlca			;94b2
	jr nz,l94a7h		;94b3
	jr l94a8h		;94b5
	ld d,h			;94b7
	jp pe,0d208h		;94b8
	or b			;94bb
	pop de			;94bc
	nop			;94bd
	jr nz,l9492h		;94be
	sbc a,c			;94c0
	sub b			;94c1
	pop de			;94c2
	jr nz,$+66		;94c3
	sbc a,e			;94c5
	ret nc			;94c6
	nop			;94c7
	jp nc,02070h		;94c8
	nop			;94cb
	out (0bdh),a		;94cc
	ret p			;94ce
	defb 0ddh,006h,054h ;illegal sequence	;94cf
	ret p			;94d2
	rst 28h			;94d3
	jp pe,0d10ah		;94d4
	in a,(001h)		;94d7
	cpl			;94d9
	call c,001feh		;94da
	jp (hl)			;94dd
	ld b,0f8h		;94de
	ld a,(bc)		;94e0
	pop bc			;94e1
	xor 001h		;94e2
	jp p,0f118h		;94e4
	ld d,h			;94e7
	ex de,hl		;94e8
	rlca			;94e9
	ld hl,008eah		;94ea
	defb 0edh ;next byte illegal after ed	;94ed
	rlca			;94ee
	pop de			;94ef
	nop			;94f0
	jr nz,l9533h		;94f1
	jp nc,l9099h		;94f3
	pop de			;94f6
	jr nz,l9539h		;94f7
	sbc a,e			;94f9
	ret nc			;94fa
	nop			;94fb
	pop de			;94fc
	sub b			;94fd
	ld b,b			;94fe
	jr nz,l94b1h		;94ff
	pop af			;9501
	ld d,d			;9502
	jp pe,0d005h		;9503
	dec hl			;9506
	call pe,001eah		;9507
	jr nz,$-6		;950a
	ld (bc),a		;950c
	ex de,hl		;950d
	ld b,d			;950e
	ld b,b			;950f
	jp pe,0ef0ah		;9510
	jp nc,08252h		;9513
	or d			;9516
	pop de			;9517
	ld (001edh),hl		;9518
	jp nc,0d1b0h		;951b
l951eh:
	jr nz,$+82		;951e
	add a,b			;9520
	cp 001h			;9521
	ret m			;9523
	ld a,(bc)		;9524
	jp (hl)			;9525
	ld b,0eeh		;9526
	ld bc,0f2c1h		;9528
	jr l951eh		;952b
	ld d,h			;952d
	ex de,hl		;952e
	rlca			;952f
	jr nz,$-20		;9530
	ex af,af'		;9532
l9533h:
	jp nc,0d1b0h		;9533
	nop			;9536
	jr nz,$-44		;9537
l9539h:
	sbc a,c			;9539
	sub b			;953a
	pop de			;953b
	jr nz,l957eh		;953c
	sbc a,e			;953e
	ret nc			;953f
	nop			;9540
	jp nc,02070h		;9541
	nop			;9544
	out (0bdh),a		;9545
	ret p			;9547
	defb 0ddh,006h,054h ;illegal sequence	;9548
	jp pe,0ef0ah		;954b
	in a,(001h)		;954e
	pop de			;9550
	cpl			;9551
	call c,001feh		;9552
	ret m			;9555
	ld a,(bc)		;9556
	jp (hl)			;9557
	ld b,0eeh		;9558
	ld bc,018f2h		;955a
	pop af			;955d
	ld d,h			;955e
l955fh:
	ex de,hl		;955f
	add a,e			;9560
	ld hl,008eah		;9561
	defb 0edh ;next byte illegal after ed	;9564
	ld b,0d1h		;9565
	pop bc			;9567
	nop			;9568
	jr nz,l95abh		;9569
	jp nc,0d199h		;956b
	nop			;956e
	jr nc,l95d1h		;956f
	sub a			;9571
	jp pe,0ed07h		;9572
	ld b,0d0h		;9575
	nop			;9577
	pop de			;9578
	sub b			;9579
	ld h,b			;957a
	jr nz,$+50		;957b
	ld h,b			;957d
l957eh:
	sub b			;957e
	ret nc			;957f
	nop			;9580
	pop de			;9581
	or b			;9582
	add a,b			;9583
	call pe,018f2h		;9584
	ret nc			;9587
	jp pe,04105h		;9588
	jp pe,04104h		;958b
	jp pe,04103h		;958e
	jp pe,04702h		;9591
	ret m			;9594
	dec bc			;9595
	rst 28h			;9596
	jp pe,0eb04h		;9597
	ex af,af'		;959a
	djnz l955fh		;959b
	call nc,04020h		;959d
	add a,b			;95a0
	or b			;95a1
	out (020h),a		;95a2
	ld b,b			;95a4
	add a,b			;95a5
	or b			;95a6
	jp nc,04020h		;95a7
	add a,b			;95aa
l95abh:
	rst 28h			;95ab
	defb 0fdh,082h,0b3h ;illegal sequence	;95ac
	cp 010h			;95af
	jp (hl)			;95b1
	rlca			;95b2
	and b			;95b3
	and b			;95b4
	sub c			;95b5
	ld hl,000a0h		;95b6
	ld hl,000a0h		;95b9
	ld hl,000a0h		;95bc
	ld hl,001e9h		;95bf
	ld b,c			;95c2
	ld b,c			;95c3
	ld d,d			;95c4
	ld d,d			;95c5
	ld d,e			;95c6
	ld d,d			;95c7
	ld d,e			;95c8
	ld d,d			;95c9
	ld d,e			;95ca
	ld d,d			;95cb
	ld d,e			;95cc
	ld d,d			;95cd
	ld d,e			;95ce
	ld h,d			;95cf
	ld h,e			;95d0
l95d1h:
	ld h,d			;95d1
	ld h,e			;95d2
	ld h,d			;95d3
	ld h,e			;95d4
	ld h,e			;95d5
	ld (hl),d		;95d6
	ld (hl),e		;95d7
	ld (hl),e		;95d8
	ld (hl),d		;95d9
	ld (hl),e		;95da
	ld (hl),d		;95db
	add a,e			;95dc
	add a,d			;95dd
	sub e			;95de
	jp (hl)			;95df
	rlca			;95e0
	sub c			;95e1
	and c			;95e2
	ld hl,000a0h		;95e3
	ld hl,000a0h		;95e6
	ld hl,000a0h		;95e9
	ld hl,000a0h		;95ec
	ld hl,000a0h		;95ef
	ld hl,004feh		;95f2
	jp (hl)			;95f5
	ld bc,04243h		;95f6
	ld b,e			;95f9
	ld b,d			;95fa
	jp (hl)			;95fb
	rlca			;95fc
	ld b,b			;95fd
	ld b,b			;95fe
	ld b,b			;95ff
	ld b,b			;9600
	ld b,b			;9601
	ld b,b			;9602
	cp 010h			;9603
	jp (hl)			;9605
	rlca			;9606
	push af			;9607
	and b			;9608
	nop			;9609
	ld hl,01181h		;960a
	and b			;960d
	nop			;960e
	ld hl,01181h		;960f
	ei			;9612
	inc bc			;9613
	and b			;9614
	nop			;9615
	ld de,01181h		;9616
	add a,c			;9619
	add a,c			;961a
	add a,b			;961b
	add a,b			;961c
	and c			;961d
	cp 010h			;961e
	jp (hl)			;9620
	rlca			;9621
	push af			;9622
	and b			;9623
	nop			;9624
	ld hl,01181h		;9625
	and b			;9628
	nop			;9629
	ld hl,01181h		;962a
	and b			;962d
	nop			;962e
	ld hl,01181h		;962f
	and b			;9632
	nop			;9633
	ld hl,0a181h		;9634
	ei			;9637
	inc b			;9638
	cp 010h			;9639
	jp (hl)			;963b
	rlca			;963c
	and a			;963d
	add a,d			;963e
	add a,d			;963f
	and b			;9640
l9641h:
	and b			;9641
	sbc a,a			;9642
l9643h:
	cp 001h			;9643
	jp 0feffh		;9645
	ld bc,007e9h		;9648
	ex de,hl		;964b
	rlca			;964c
	jr nc,l9641h		;964d
	add hl,bc		;964f
	pop af			;9650
	ld d,e			;9651
	jp pe,0d50bh		;9652
	ld b,c			;9655
	jp pe,0c208h		;9656
	xor 001h		;9659
	jp nc,07070h		;965b
	ld (hl),b		;965e
	ld (hl),c		;965f
	ld (hl),c		;9660
	ld (hl),c		;9661
	ld (hl),c		;9662
	ld (hl),b		;9663
	ld (hl),c		;9664
	ld (hl),c		;9665
	sub b			;9666
	sub c			;9667
	sub c			;9668
l9669h:
	sub b			;9669
	sbc a,b			;966a
	jp pe,0eb07h		;966b
	inc sp			;966e
	jr nc,l9643h		;966f
	ld (hl),b		;9671
	ld (hl),b		;9672
	ld (hl),b		;9673
	ld (hl),c		;9674
	ld (hl),c		;9675
	ld (hl),c		;9676
	ld (hl),c		;9677
	ld (hl),b		;9678
	ld (hl),c		;9679
	sub c			;967a
	sub b			;967b
	sub c			;967c
	sub c			;967d
	sub b			;967e
	call nc,00beah		;967f
	inc hl			;9682
	ld b,e			;9683
	cp 001h			;9684
	jp (hl)			;9686
	rlca			;9687
	jp pe,0eb0bh		;9688
	add hl,bc		;968b
	jr nz,l9669h		;968c
	inc b			;968e
	push af			;968f
	push de			;9690
	ld (hl),b		;9691
	sub b			;9692
	call nc,04000h		;9693
	ei			;9696
	inc b			;9697
	push af			;9698
	push de			;9699
	ld h,b			;969a
	sub b			;969b
	call nc,04000h		;969c
	ei			;969f
	inc b			;96a0
	push af			;96a1
	push de			;96a2
	ld h,b			;96a3
	sub b			;96a4
	call nc,02000h		;96a5
	ei			;96a8
	inc b			;96a9
	push af			;96aa
	push de			;96ab
	nop			;96ac
	jr nz,$+98		;96ad
	sub b			;96af
	ei			;96b0
	ld (bc),a		;96b1
	push de			;96b2
	jr nz,l96d5h		;96b3
	call nc,02020h		;96b5
	push de			;96b8
	ld h,b			;96b9
	ld h,b			;96ba
	call nc,06060h		;96bb
	cp 001h			;96be
	jp (hl)			;96c0
	rlca			;96c1
	ex de,hl		;96c2
	ld b,h			;96c3
	ld b,b			;96c4
	in a,(003h)		;96c5
	push af			;96c7
	jp pe,0d10ah		;96c8
	sub c			;96cb
	sub c			;96cc
	jp pe,l910ah		;96cd
	sub c			;96d0
	jp pe,l9008h+1		;96d1
	sub c			;96d4
l96d5h:
	sub b			;96d5
	sub e			;96d6
	ei			;96d7
	ld (bc),a		;96d8
	push af			;96d9
	jp pe,0b10ah		;96da
	or c			;96dd
	jp pe,0b10ah		;96de
	or c			;96e1
	jp pe,0b009h		;96e2
	or c			;96e5
	or b			;96e6
	or e			;96e7
	ei			;96e8
	ld (bc),a		;96e9
	push af			;96ea
	jp pe,l910ah		;96eb
	sub c			;96ee
	jp pe,l910ah		;96ef
	sub c			;96f2
	jp pe,l9008h+1		;96f3
	sub c			;96f6
	sub b			;96f7
	sub e			;96f8
	ei			;96f9
	ld (bc),a		;96fa
	jp pe,0510ah		;96fb
	ld d,c			;96fe
	jp pe,0510ah		;96ff
	ld d,c			;9702
	jp pe,05109h		;9703
	ld d,c			;9706
	jp pe,05108h		;9707
	ld d,c			;970a
	jp pe,0210ah		;970b
	ld hl,00aeah		;970e
	ld hl,0ea21h		;9711
	add hl,bc		;9714
	ld hl,0ea21h		;9715
	ex af,af'		;9718
	jp nc,0b1b1h		;9719
	cp 001h			;971c
	jp (hl)			;971e
	ld c,0eah		;971f
	inc b			;9721
	call pe,002d6h		;9722
	add a,b			;9725
	pop af			;9726
	ld b,c			;9727
	rst 28h			;9728
	pop bc			;9729
	ret nc			;972a
	sbc a,b			;972b
	ret c			;972c
	jp pe,09103h		;972d
	jp pe,l9302h		;9730
	jp pe,sub_9000h+1	;9733
	rst 38h			;9736
	cp 001h			;9737
	jp (hl)			;9739
	rlca			;973a
	ex de,hl		;973b
	rlca			;973c
	jr nc,$-12		;973d
	add hl,bc		;973f
	pop af			;9740
	ld d,e			;9741
	jp pe,0c108h		;9742
	jp nz,020d2h		;9745
	jr nz,l976ah		;9748
	ld hl,02121h		;974a
	ld hl,02120h		;974d
	ld hl,04140h		;9750
	ld b,c			;9753
	ld b,b			;9754
	ld c,b			;9755
l9756h:
	jp pe,0eb07h		;9756
	inc bc			;9759
	jr nc,$-44		;975a
	jr nz,$+34		;975c
	jr nz,l9781h		;975e
	ld hl,02121h		;9760
	jr nz,l9786h		;9763
	ld b,c			;9765
	ld b,b			;9766
	ld b,c			;9767
	ld b,c			;9768
	ld b,b			;9769
l976ah:
	ld d,e			;976a
l976bh:
	ld b,e			;976b
l976ch:
	cp 001h			;976c
	jp (hl)			;976e
	rlca			;976f
	ret m			;9770
	ld a,(bc)		;9771
	xor 002h		;9772
	jp nz,007ebh		;9774
	djnz l976bh		;9777
	jr z,l976ch		;9779
	ld h,(hl)		;977b
	jp pe,0d207h		;977c
	ld b,b			;977f
	sub b			;9780
l9781h:
	add a,b			;9781
	ld (hl),b		;9782
	jp (hl)			;9783
	ld c,077h		;9784
l9786h:
	call pe,0eb70h		;9786
	rlca			;9789
	djnz $-21		;978a
	rlca			;978c
	ld (hl),c		;978d
	ld b,b			;978e
	sub b			;978f
	add a,b			;9790
	ld (hl),b		;9791
	pop de			;9792
	ld bc,l90d2h		;9793
l9796h:
	jp (hl)			;9796
	ld c,0d1h		;9797
	ld l,0ech		;9799
	jp pe,0e901h		;979b
	rlca			;979e
	cp 001h			;979f
	jp (hl)			;97a1
	rlca			;97a2
	ex de,hl		;97a3
	ld b,h			;97a4
	ld b,b			;97a5
	in a,(003h)		;97a6
	push af			;97a8
	jp pe,0d10ah		;97a9
	ld d,c			;97ac
	ld d,c			;97ad
	jp pe,0510ah		;97ae
	ld d,c			;97b1
	jp pe,05009h		;97b2
	ld d,c			;97b5
	ld d,b			;97b6
	ld d,e			;97b7
	ei			;97b8
	ld (bc),a		;97b9
	push af			;97ba
	jp pe,0710ah		;97bb
	ld (hl),c		;97be
	jp pe,0710ah		;97bf
	ld (hl),c		;97c2
	jp pe,07009h		;97c3
	ld (hl),c		;97c6
	ld (hl),b		;97c7
	ld (hl),e		;97c8
	ei			;97c9
	ld (bc),a		;97ca
	push af			;97cb
	jp pe,0510ah		;97cc
	ld d,c			;97cf
	jp pe,0510ah		;97d0
	ld d,c			;97d3
	jp pe,05009h		;97d4
	ld d,c			;97d7
	ld d,b			;97d8
	ld d,e			;97d9
	ei			;97da
	ld (bc),a		;97db
	jp pe,0210ah		;97dc
	ld hl,00aeah		;97df
	ld hl,0ea21h		;97e2
	add hl,bc		;97e5
	ld hl,0ea21h		;97e6
	ex af,af'		;97e9
	ld hl,0ea21h		;97ea
	ld a,(bc)		;97ed
	jp nc,0b1b1h		;97ee
	jp pe,0b10ah		;97f1
	or c			;97f4
	jp pe,0b109h		;97f5
	or c			;97f8
	jp pe,07108h		;97f9
	ld (hl),c		;97fc
	cp 001h			;97fd
	jp (hl)			;97ff
	ld c,0eah		;9800
	inc bc			;9802
	call pe,002d6h		;9803
	add a,b			;9806
	pop af			;9807
l9808h:
	ld b,c			;9808
	rst 28h			;9809
	xor 001h		;980a
	pop de			;980c
	sbc a,e			;980d
	ret c			;980e
	jp pe,09102h		;980f
	jp pe,l9201h		;9812
	rst 38h			;9815
	cp 001h			;9816
	jp (hl)			;9818
	rlca			;9819
	ret m			;981a
	jr z,l9808h		;981b
	add hl,bc		;981d
	ld b,b			;981e
	jp pe,0d50fh		;981f
	ld b,c			;9822
	ex de,hl		;9823
	add hl,bc		;9824
	ld b,b			;9825
	sub a			;9826
	ld (hl),a		;9827
	ld e,l			;9828
	ld b,c			;9829
	sub a			;982a
	ld (hl),a		;982b
	ld d,a			;982c
	inc hl			;982d
	ld b,e			;982e
	cp 001h			;982f
	jp (hl)			;9831
	rlca			;9832
	jp pe,0eb0fh		;9833
	ld a,(bc)		;9836
	jr nc,$-35		;9837
	inc b			;9839
	push af			;983a
	ret m			;983b
	inc hl			;983c
	push de			;983d
	ld (hl),b		;983e
	sub b			;983f
	ret m			;9840
	inc e			;9841
	call nc,04000h		;9842
	ei			;9845
	inc b			;9846
	push af			;9847
	ret m			;9848
	inc hl			;9849
	push de			;984a
	ld h,b			;984b
	sub b			;984c
	ret m			;984d
	inc e			;984e
	call nc,04000h		;984f
	ei			;9852
	inc b			;9853
	push af			;9854
	ret m			;9855
	inc hl			;9856
	push de			;9857
	ld h,b			;9858
l9859h:
	sub b			;9859
	ret m			;985a
	inc e			;985b
	call nc,02000h		;985c
	ei			;985f
	inc b			;9860
	push af			;9861
	ret m			;9862
	inc hl			;9863
	push de			;9864
	nop			;9865
	jr nz,l98c8h		;9866
	sub b			;9868
	ei			;9869
	ld (bc),a		;986a
	ex de,hl		;986b
	ld a,(bc)		;986c
	jr nc,l9859h		;986d
	rrca			;986f
	ret m			;9870
	inc hl			;9871
	push de			;9872
	jr nz,l9895h		;9873
	ret m			;9875
	inc e			;9876
	call nc,02020h		;9877
	ret m			;987a
	inc hl			;987b
	push de			;987c
	ld h,b			;987d
	ld h,b			;987e
	ret m			;987f
	inc e			;9880
	call nc,06060h		;9881
	cp 001h			;9884
	jp (hl)			;9886
	rlca			;9887
	ret m			;9888
	inc hl			;9889
	ex de,hl		;988a
	ld a,(bc)		;988b
	jr nc,$-20		;988c
	rrca			;988e
	jp p,0f110h		;988f
	ld d,l			;9892
	push af			;9893
	push de			;9894
l9895h:
	ld d,b			;9895
	ld d,b			;9896
	call nc,05050h		;9897
	ei			;989a
	ex af,af'		;989b
	push af			;989c
	push de			;989d
	ld (hl),b		;989e
	ld (hl),b		;989f
	call nc,07070h		;98a0
	ei			;98a3
	ex af,af'		;98a4
	push af			;98a5
	push de			;98a6
l98a7h:
	jr nz,l98c9h		;98a7
	call nc,02020h		;98a9
	ei			;98ac
	ex af,af'		;98ad
	push af			;98ae
	push de			;98af
	ld d,b			;98b0
	ld d,b			;98b1
	call nc,05050h		;98b2
	ei			;98b5
	inc b			;98b6
l98b7h:
	push af			;98b7
	push de			;98b8
	ld b,b			;98b9
	ld b,b			;98ba
	call nc,04040h		;98bb
	ei			;98be
	inc bc			;98bf
	push de			;98c0
	ld b,b			;98c1
	call nc,0d540h		;98c2
	ld b,c			;98c5
	cp 001h			;98c6
l98c8h:
	jp (hl)			;98c8
l98c9h:
	rlca			;98c9
	ret m			;98ca
	jr z,l98b7h		;98cb
	rrca			;98cd
	ex de,hl		;98ce
	add hl,bc		;98cf
	jr nc,l98a7h		;98d0
	sbc a,a			;98d2
	call pe,004eah		;98d3
	sub a			;98d6
	jp pe,09103h		;98d7
	jp pe,l9302h		;98da
	jp pe,l9300h+1		;98dd
	rst 38h			;98e0
l98e1h:
	cp 001h			;98e1
	jp (hl)			;98e3
	rlca			;98e4
	ex de,hl		;98e5
	ld a,(bc)		;98e6
	jr nc,l98e1h		;98e7
	ld h,0eah		;98e9
	inc c			;98eb
	call nc,006eeh		;98ec
	ld b,c			;98ef
	jp pe,0eb0ch		;98f0
	ld (hl),070h		;98f3
	sub a			;98f5
	ld (hl),a		;98f6
	ld e,l			;98f7
	push de			;98f8
	ld b,c			;98f9
	call nc,07797h		;98fa
	ld d,a			;98fd
	rst 28h			;98fe
	cp 004h			;98ff
	ret nc			;9901
	ret m			;9902
	dec b			;9903
	jp (hl)			;9904
	ld bc,05253h		;9905
	ld d,e			;9908
	ld d,d			;9909
	jp (hl)			;990a
	rlca			;990b
	ld h,b			;990c
	ld h,b			;990d
	ld d,b			;990e
	ld d,b			;990f
	ld (hl),b		;9910
	ld (hl),b		;9911
	cp 001h			;9912
	jp (hl)			;9914
	rlca			;9915
	ret m			;9916
	ld (bc),a		;9917
	ex de,hl		;9918
	inc (hl)		;9919
	ld b,b			;991a
	jp p,0f114h		;991b
	ld d,l			;991e
	jp pe,0d60dh		;991f
	djnz $+5		;9922
	out (09dh),a		;9924
	call pe,004eah		;9926
	sub c			;9929
	jp pe,0eb0dh		;992a
	inc (hl)		;992d
	ld b,b			;992e
	jp nc,0d307h		;992f
	sub e			;9932
	jp nc,02d03h		;9933
	call pe,004eah		;9936
	ld hl,00deah		;9939
	ex de,hl		;993c
	inc (hl)		;993d
	jr nc,l99a7h		;993e
	sub e			;9940
	ret c			;9941
	call pe,006eah		;9942
	add a,b			;9945
	ld (hl),b		;9946
	ld h,b			;9947
	ld d,b			;9948
	cp 001h			;9949
	jp (hl)			;994b
	rlca			;994c
	rst 28h			;994d
	ret m			;994e
	ld a,(bc)		;994f
	ret c			;9950
	ex de,hl		;9951
	add a,a			;9952
	ld (hl),b		;9953
	defb 0edh ;next byte illegal after ed	;9954
	add hl,bc		;9955
	jp p,0db15h		;9956
	ld (bc),a		;9959
	pop af			;995a
	ld d,c			;995b
	jp pe,0d30ah		;995c
	sub l			;995f
l9960h:
	ld d,l			;9960
	jp pe,0d209h		;9961
	ld b,e			;9964
	daa			;9965
	jp pe,0030ah		;9966
	out (093h),a		;9969
	cp l			;996b
	call pe,006eah		;996c
	or c			;996f
	jp pe,0d207h		;9970
	nop			;9973
	djnz l9960h		;9974
	ex af,af'		;9976
	add hl,hl		;9977
	call pe,007eah		;9978
	djnz l997dh		;997b
l997dh:
	out (0b0h),a		;997d
	and b			;997f
	jp pe,0eb0bh		;9980
	add a,a			;9983
	ld (hl),b		;9984
	out (095h),a		;9985
	ld d,l			;9987
	sub e			;9988
	jp nc,0eb0fh		;9989
	add a,a			;998c
	ld b,b			;998d
	dec hl			;998e
	ex de,hl		;998f
	add a,a			;9990
	ld (hl),b		;9991
	inc bc			;9992
	jp pe,0d30ch		;9993
	or a			;9996
	ld (hl),a		;9997
	cp 001h			;9998
	jp (hl)			;999a
	ld c,0f8h		;999b
	dec b			;999d
	jp pe,0ec04h		;999e
	sub 002h		;99a1
	add a,b			;99a3
	pop af			;99a4
	ld b,c			;99a5
	rst 28h			;99a6
l99a7h:
	ret nc			;99a7
	sbc a,c			;99a8
	ret c			;99a9
	jp pe,09103h		;99aa
	jp pe,09102h		;99ad
	jp pe,l9201h		;99b0
	rst 38h			;99b3
	cp 001h			;99b4
	jp (hl)			;99b6
	rlca			;99b7
	ret m			;99b8
	inc de			;99b9
	jp p,0f109h		;99ba
l99bdh:
	ld d,e			;99bd
	ex de,hl		;99be
	add hl,de		;99bf
	jr nc,$-20		;99c0
	ld c,0c1h		;99c2
	pop bc			;99c4
	sub 020h		;99c5
	ld bc,0b0d3h		;99c7
	or b			;99ca
l99cbh:
	or b			;99cb
	or c			;99cc
	or c			;99cd
	or c			;99ce
	or c			;99cf
l99d0h:
	or b			;99d0
	or c			;99d1
	or c			;99d2
	jp nc,00100h		;99d3
	ld bc,00100h		;99d6
	call pe,007eah		;99d9
l99dch:
	sub 006h		;99dc
	jr nz,$-44		;99de
	sub a			;99e0
	ret c			;99e1
	sub 004h		;99e2
	ld bc,00eeah		;99e4
	ex de,hl		;99e7
	add hl,de		;99e8
l99e9h:
	jr nc,l99bdh		;99e9
	or b			;99eb
	or b			;99ec
	or b			;99ed
	or c			;99ee
	or c			;99ef
	or c			;99f0
	or c			;99f1
	or b			;99f2
	or c			;99f3
	jp pe,0eb0ch		;99f4
	add hl,bc		;99f7
	jr nz,l99cbh		;99f8
	ld bc,009ebh		;99fa
	jr nc,l99e9h		;99fd
	dec c			;99ff
	nop			;9a00
	ld bc,00001h		;9a01
	jp pe,0eb0eh		;9a04
	ld a,(de)		;9a07
	jr nz,l99dch		;9a08
l9a0ah:
	inc hl			;9a0a
	out (0b3h),a		;9a0b
	ret c			;9a0d
	cp 001h			;9a0e
	jp (hl)			;9a10
	rlca			;9a11
	ret m			;9a12
	ld (bc),a		;9a13
	ex de,hl		;9a14
	inc (hl)		;9a15
	jr nc,l9a0ah		;9a16
	inc d			;9a18
	pop af			;9a19
	ld d,l			;9a1a
	jp pe,0d60eh		;9a1b
	djnz l9a23h		;9a1e
	jp nc,0ec0dh		;9a20
l9a23h:
	jp pe,00104h		;9a23
	jp pe,0eb0eh		;9a26
	inc (hl)		;9a29
	jr nc,l9a73h		;9a2a
	inc bc			;9a2c
	ld b,e			;9a2d
	ld l,l			;9a2e
	jp pe,0ec04h		;9a2f
	ld h,c			;9a32
	jp pe,0eb0eh		;9a33
	inc (hl)		;9a36
	jr nc,l99d0h		;9a37
	pop de			;9a39
	inc bc			;9a3a
	ret c			;9a3b
	jp pe,0ec06h		;9a3c
	jp nc,0a0b0h		;9a3f
	sub b			;9a42
	add a,b			;9a43
	cp 001h			;9a44
	jp (hl)			;9a46
	rlca			;9a47
	rst 28h			;9a48
	ret m			;9a49
	ld a,(bc)		;9a4a
	ret c			;9a4b
	ex de,hl		;9a4c
	add a,a			;9a4d
	ld (hl),b		;9a4e
	defb 0edh ;next byte illegal after ed	;9a4f
	ex af,af'		;9a50
	jp p,0db15h		;9a51
	ld (bc),a		;9a54
	pop af			;9a55
	ld d,l			;9a56
	jp pe,0d30bh		;9a57
	ld d,l			;9a5a
	dec b			;9a5b
	jp nc,0d303h		;9a5c
	or a			;9a5f
	sub e			;9a60
	ld d,e			;9a61
	ld a,l			;9a62
	call pe,006eah		;9a63
	ld (hl),b		;9a66
	add a,b			;9a67
	jp pe,l9007h		;9a68
	and b			;9a6b
	jp pe,0b908h		;9a6c
	jp pe,0a007h		;9a6f
	sub b			;9a72
l9a73h:
	add a,b			;9a73
	ld (hl),b		;9a74
	jp pe,0eb0bh		;9a75
	add a,a			;9a78
	ld (hl),b		;9a79
	ld d,l			;9a7a
	dec b			;9a7b
	ld d,e			;9a7c
l9a7dh:
	ex de,hl		;9a7d
	add a,a			;9a7e
	ld b,b			;9a7f
	sbc a,a			;9a80
	jp nc,0435bh		;9a81
	jp pe,0270bh		;9a84
l9a87h:
	out (0b7h),a		;9a87
	cp 001h			;9a89
	jp (hl)			;9a8b
	ld bc,00df8h		;9a8c
	ex de,hl		;9a8f
	add hl,bc		;9a90
	jr nc,l9a7dh		;9a91
	dec bc			;9a93
	push af			;9a94
	push de			;9a95
	sub e			;9a96
	call nc,0fb92h		;9a97
	djnz l9a87h		;9a9a
	rlca			;9a9c
	ld (hl),b		;9a9d
	jp (hl)			;9a9e
	rlca			;9a9f
	call nc,0ea99h		;9aa0
	ld b,091h		;9aa3
	jp pe,l9105h		;9aa5
	jp pe,l9104h		;9aa8
	jp pe,09103h		;9aab
	jp pe,l9002h		;9aae
	rst 38h			;9ab1
	cp 001h			;9ab2
	jp (hl)			;9ab4
	rlca			;9ab5
	ret m			;9ab6
	ld (bc),a		;9ab7
	jp p,0f109h		;9ab8
	ld d,e			;9abb
	ex de,hl		;9abc
	add hl,de		;9abd
	jr nc,$-20		;9abe
	rrca			;9ac0
	pop bc			;9ac1
	pop bc			;9ac2
	sub 010h		;9ac3
	ld bc,020d2h		;9ac5
	jr nz,l9aeah		;9ac8
	ld hl,02121h		;9aca
	ld hl,02120h		;9acd
	ld hl,040d2h		;9ad0
	ld b,c			;9ad3
	ld b,c			;9ad4
	ld b,b			;9ad5
l9ad6h:
	ld b,c			;9ad6
	call pe,004eah		;9ad7
	ld b,b			;9ada
	jp pe,04005h		;9adb
	jp pe,04007h		;9ade
	jp pe,04109h		;9ae1
	jp pe,04007h		;9ae4
	jp pe,04005h		;9ae7
l9aeah:
	jp pe,04003h		;9aea
	jp pe,0eb0ch		;9aed
	add hl,bc		;9af0
	jr nz,$-40		;9af1
	ld (bc),a		;9af3
l9af4h:
	ld bc,020d1h		;9af4
	jr nz,l9b19h		;9af7
	ld hl,02121h		;9af9
	ld hl,02120h		;9afc
	jp pe,0eb0bh		;9aff
	add hl,bc		;9b02
	jr nz,l9ad6h		;9b03
	ld b,c			;9b05
	ex de,hl		;9b06
	add hl,bc		;9b07
	jr nc,l9af4h		;9b08
	inc c			;9b0a
	ld b,b			;9b0b
	ld b,c			;9b0c
	ld b,c			;9b0d
	ld b,b			;9b0e
	pop de			;9b0f
	ex de,hl		;9b10
	ld a,(de)		;9b11
	djnz l9b67h		;9b12
l9b14h:
	ld b,e			;9b14
	ret c			;9b15
	cp 001h			;9b16
	jp (hl)			;9b18
l9b19h:
	rlca			;9b19
	ret m			;9b1a
	ld a,(bc)		;9b1b
	jp p,0f128h		;9b1c
	ld h,l			;9b1f
	call pe,001e9h		;9b20
	jp pe,0d20fh		;9b23
	ld b,b			;9b26
	jr nc,l9b14h		;9b27
	ld (0ea30h),a		;9b29
	rrca			;9b2c
	ex de,hl		;9b2d
l9b2eh:
	inc hl			;9b2e
	jr nc,l9b75h		;9b2f
	jp (hl)			;9b31
	rlca			;9b32
	sub b			;9b33
	add a,b			;9b34
	jp (hl)			;9b35
	ld c,077h		;9b36
	jp (hl)			;9b38
	rlca			;9b39
	call pe,004eah		;9b3a
	ld (hl),b		;9b3d
	ld h,b			;9b3e
	ld d,b			;9b3f
	ld b,b			;9b40
	jr nc,l9b2eh		;9b41
	ld (0ea30h),a		;9b43
	rrca			;9b46
	jp (hl)			;9b47
	ld bc,02030h		;9b48
	ld b,h			;9b4b
	jp (hl)			;9b4c
	rlca			;9b4d
	sub b			;9b4e
	add a,b			;9b4f
	ld (hl),b		;9b50
	pop de			;9b51
	ld bc,l90d2h		;9b52
	jp pe,0e90fh		;9b55
	ld c,0d1h		;9b58
	dec l			;9b5a
	jp pe,0e907h		;9b5b
	rlca			;9b5e
	ret p			;9b5f
	call pe,00010h		;9b60
	jp nc,0a0b0h		;9b63
	sub b			;9b66
l9b67h:
	cp 001h			;9b67
	jp (hl)			;9b69
	rlca			;9b6a
	ret m			;9b6b
	ld (bc),a		;9b6c
	defb 0edh ;next byte illegal after ed	;9b6d
	ex af,af'		;9b6e
	ex de,hl		;9b6f
	add a,l			;9b70
	ld d,b			;9b71
	jp p,0f115h		;9b72
l9b75h:
	ld h,e			;9b75
	jp pe,0d10dh		;9b76
	dec b			;9b79
	jp nc,0b090h		;9b7a
	pop de			;9b7d
	dec c			;9b7e
	call pe,003eah		;9b7f
	ld bc,00deah		;9b82
	ex de,hl		;9b85
	ld de,00260h		;9b86
	ld (0ed41h),hl		;9b89
	ex af,af'		;9b8c
	ex de,hl		;9b8d
	add a,l			;9b8e
	ld d,b			;9b8f
	jp nc,075b5h		;9b90
	ex de,hl		;9b93
	add a,l			;9b94
	ld h,b			;9b95
	jp (hl)			;9b96
	ld c,0d1h		;9b97
	ld c,b			;9b99
	call pe,005eah		;9b9a
	ld b,b			;9b9d
	jp (hl)			;9b9e
	rlca			;9b9f
	ret m			;9ba0
	ld (bc),a		;9ba1
	ex de,hl		;9ba2
	add a,l			;9ba3
	ld b,b			;9ba4
	jp pe,0d20dh		;9ba5
	sub l			;9ba8
	ld d,b			;9ba9
	ld (hl),b		;9baa
	sbc a,l			;9bab
	call pe,004eah		;9bac
	sub c			;9baf
	jp pe,0ed0dh		;9bb0
	ex af,af'		;9bb3
	ex de,hl		;9bb4
	add a,l			;9bb5
	ld d,b			;9bb6
	sub e			;9bb7
	or e			;9bb8
	pop de			;9bb9
	dec b			;9bba
	jp nc,l8381h		;9bbb
	pop de			;9bbe
	ld b,e			;9bbf
	inc hl			;9bc0
	inc bc			;9bc1
	jp nc,073b3h		;9bc2
	cp 001h			;9bc5
	jp (hl)			;9bc7
	rlca			;9bc8
	ret m			;9bc9
	ld (bc),a		;9bca
	jp p,0f109h		;9bcb
	ld d,e			;9bce
	ex de,hl		;9bcf
	add hl,de		;9bd0
	jr nz,$-20		;9bd1
	ld c,0d5h		;9bd3
	sub c			;9bd5
	out (091h),a		;9bd6
	jp nc,07121h		;9bd8
	ld (0d172h),hl		;9bdb
	ld bc,007ebh		;9bde
	ld (hl),b		;9be1
	ld c,c			;9be2
	call pe,004eah		;9be3
	ld b,c			;9be6
	jp pe,04103h		;9be7
	jp pe,04102h		;9bea
	call pe,001eah		;9bed
	ld b,c			;9bf0
	rst 38h			;9bf1
	cp 001h			;9bf2
	jp (hl)			;9bf4
	rlca			;9bf5
	ret m			;9bf6
l9bf7h:
	inc e			;9bf7
	jp p,0f113h		;9bf8
	ld d,h			;9bfb
	ex de,hl		;9bfc
	ld a,(bc)		;9bfd
	ld b,b			;9bfe
	jp pe,0d50fh		;9bff
	ld b,c			;9c02
	pop bc			;9c03
	sub 002h		;9c04
	ld bc,002f8h		;9c06
	ex de,hl		;9c09
	add hl,bc		;9c0a
l9c0bh:
	jr nc,l9bf7h		;9c0b
	ld c,0d2h		;9c0d
	ld (hl),b		;9c0f
	ld (hl),b		;9c10
	ld (hl),b		;9c11
	ld (hl),c		;9c12
	ld (hl),c		;9c13
	ld (hl),c		;9c14
	ld (hl),c		;9c15
	ld (hl),b		;9c16
	ld (hl),c		;9c17
	ld (hl),c		;9c18
	sub b			;9c19
	sub c			;9c1a
	sub c			;9c1b
	sub b			;9c1c
	sub c			;9c1d
	call pe,006eah		;9c1e
	sub b			;9c21
	jp pe,l9008h		;9c22
	jp pe,l9008h+2		;9c25
	jp pe,l910ch		;9c28
	jp pe,l9008h		;9c2b
	jp pe,09006h		;9c2e
	jp pe,l9002h+2		;9c31
	jp pe,0eb0bh		;9c34
	add hl,bc		;9c37
	jr nz,l9c0bh		;9c38
	ld (hl),b		;9c3a
	ld (hl),b		;9c3b
	ld (hl),b		;9c3c
	ld (hl),c		;9c3d
	ld (hl),c		;9c3e
	ld (hl),c		;9c3f
	ld (hl),c		;9c40
	ld (hl),b		;9c41
	ld (hl),c		;9c42
	jp pe,0eb0ah		;9c43
	add hl,bc		;9c46
	jr nz,$-109		;9c47
	jp pe,0eb0bh		;9c49
	add hl,bc		;9c4c
	jr nc,$-110		;9c4d
	sub c			;9c4f
	sub c			;9c50
	sub b			;9c51
	jp p,0f110h		;9c52
	ld b,h			;9c55
	ex de,hl		;9c56
	ld (l9320h),a		;9c57
	add a,e			;9c5a
l9c5bh:
	ret c			;9c5b
l9c5ch:
	cp 001h			;9c5c
	jp (hl)			;9c5e
	rlca			;9c5f
	ret m			;9c60
	ld a,(bc)		;9c61
	xor 001h		;9c62
	pop bc			;9c64
	ex de,hl		;9c65
	rlca			;9c66
	djnz l9c5bh		;9c67
	jr z,l9c5ch		;9c69
	ld h,(hl)		;9c6b
	jp pe,0d20ah		;9c6c
l9c6fh:
	ld b,b			;9c6f
	sub b			;9c70
	add a,b			;9c71
	jp pe,0e909h		;9c72
	ld c,077h		;9c75
	jp (hl)			;9c77
	rlca			;9c78
	call pe,003eah		;9c79
	ld (hl),b		;9c7c
	ld h,b			;9c7d
	ld d,b			;9c7e
	ld b,b			;9c7f
	jr nc,$-19		;9c80
	rlca			;9c82
	djnz l9c6fh		;9c83
	add hl,bc		;9c85
	jp (hl)			;9c86
	rlca			;9c87
	ld b,b			;9c88
	sub b			;9c89
	add a,b			;9c8a
	ld (hl),b		;9c8b
	pop de			;9c8c
	ld bc,l90d2h		;9c8d
	jp pe,0e905h		;9c90
	ld c,0d1h		;9c93
	ld l,0ech		;9c95
	jp pe,0e902h		;9c97
	rlca			;9c9a
l9c9bh:
	jr nz,l9c9bh		;9c9b
	ld bc,007e9h		;9c9d
	ret m			;9ca0
	ld (bc),a		;9ca1
	xor 001h		;9ca2
	pop bc			;9ca4
	ex de,hl		;9ca5
	rlca			;9ca6
	djnz l9c9bh		;9ca7
	dec d			;9ca9
	pop af			;9caa
	ld h,e			;9cab
	jp pe,0d107h		;9cac
	dec b			;9caf
	jp nc,0b090h		;9cb0
	pop de			;9cb3
	rrca			;9cb4
	ld (bc),a		;9cb5
	ld (0d241h),hl		;9cb6
	or l			;9cb9
	ld (hl),l		;9cba
	jp (hl)			;9cbb
	ld c,0d1h		;9cbc
	ld c,c			;9cbe
	jp (hl)			;9cbf
	rlca			;9cc0
	ret m			;9cc1
	ld (bc),a		;9cc2
	jp nc,05095h		;9cc3
	ld (hl),b		;9cc6
	sbc a,a			;9cc7
	sub e			;9cc8
	or e			;9cc9
	pop de			;9cca
	dec b			;9ccb
	jp nc,l8381h		;9ccc
	pop de			;9ccf
	ld b,e			;9cd0
	inc hl			;9cd1
	inc bc			;9cd2
	jp nc,071b3h		;9cd3
	cp 001h			;9cd6
	jp (hl)			;9cd8
	rlca			;9cd9
	ret m			;9cda
	ld (bc),a		;9cdb
	jp p,0f109h		;9cdc
	ld d,e			;9cdf
	ex de,hl		;9ce0
	add hl,de		;9ce1
	jr nz,$-20		;9ce2
	dec c			;9ce4
	out (091h),a		;9ce5
	jp nc,07121h		;9ce7
	pop de			;9cea
	ld bc,072d2h		;9ceb
	pop de			;9cee
	ld (bc),a		;9cef
l9cf0h:
	ld d,c			;9cf0
	ex de,hl		;9cf1
	rlca			;9cf2
	ld (hl),b		;9cf3
	jp nc,0ec99h		;9cf4
	jp pe,l9104h		;9cf7
	jp pe,09103h		;9cfa
	jp pe,09102h		;9cfd
	call pe,001eah		;9d00
	sub c			;9d03
	rst 38h			;9d04
	cp 001h			;9d05
	jp (hl)			;9d07
	dec b			;9d08
	xor 001h		;9d09
	in a,(003h)		;9d0b
	defb 0edh ;next byte illegal after ed	;9d0d
	rlca			;9d0e
	defb 0ddh,085h ;add a,ixl	;9d0f
	ld h,l			;9d11
	jp pe,0f508h		;9d12
	pop bc			;9d15
	jp nc,0d123h		;9d16
	ld b,e			;9d19
	ld (hl),e		;9d1a
	jp nc,02323h		;9d1b
	inc hl			;9d1e
	dec h			;9d1f
	inc hl			;9d20
	pop de			;9d21
	ld b,e			;9d22
	ld (hl),e		;9d23
	jp nc,02323h		;9d24
	inc hl			;9d27
	dec h			;9d28
	jp nc,0d123h		;9d29
	ld b,e			;9d2c
	ld (hl),e		;9d2d
	jp nc,02323h		;9d2e
	rst 28h			;9d31
	cp 010h			;9d32
	ret nc			;9d34
	sub c			;9d35
	and c			;9d36
	sub c			;9d37
	and c			;9d38
	cp 004h			;9d39
	nop			;9d3b
	nop			;9d3c
	ld de,00000h		;9d3d
	ld de,010feh		;9d40
	sub c			;9d43
	and c			;9d44
	cp 004h			;9d45
	ld de,01191h		;9d47
	sub c			;9d4a
	cp 010h			;9d4b
	sub c			;9d4d
	and c			;9d4e
	sub c			;9d4f
	inc sp			;9d50
	cp 004h			;9d51
	ret nc			;9d53
	jp (hl)			;9d54
	dec b			;9d55
	sub c			;9d56
	ld de,010feh		;9d57
	sub e			;9d5a
	sub c			;9d5b
	and b			;9d5c
	djnz l9cf0h		;9d5d
	ld hl,l93a1h		;9d5f
	sub e			;9d62
	ld sp,0fe91h		;9d63
	inc b			;9d66
	ld d,(iy-043h)		;9d67
	cp 001h			;9d6a
	jp (hl)			;9d6c
	dec b			;9d6d
	xor 001h		;9d6e
	in a,(003h)		;9d70
	pop bc			;9d72
	defb 0ddh,085h ;add a,ixl	;9d73
	ld h,l			;9d75
	defb 0edh ;next byte illegal after ed	;9d76
	ex af,af'		;9d77
	jp pe,0c109h		;9d78
	pop de			;9d7b
	inc hl			;9d7c
	jp nc,0d123h		;9d7d
	ld d,e			;9d80
	inc hl			;9d81
	ld b,e			;9d82
	inc bc			;9d83
	dec b			;9d84
l9d85h:
	inc hl			;9d85
	jp nc,0d123h		;9d86
	ld d,e			;9d89
	inc hl			;9d8a
	ld b,e			;9d8b
	inc bc			;9d8c
	dec b			;9d8d
	inc hl			;9d8e
	jp nc,0d123h		;9d8f
	ld d,e			;9d92
	inc hl			;9d93
	ld b,e			;9d94
	inc bc			;9d95
	dec b			;9d96
l9d97h:
	pop de			;9d97
	inc hl			;9d98
	jp nc,0d123h		;9d99
	ld d,e			;9d9c
l9d9dh:
	inc hl			;9d9d
	ld b,e			;9d9e
	inc bc			;9d9f
	ld bc,0feefh		;9da0
	ld bc,005e9h		;9da3
	pop bc			;9da6
	xor 001h		;9da7
	ex de,hl		;9da9
	add a,a			;9daa
	djnz l9d97h		;9dab
	add hl,bc		;9dad
	defb 0edh ;next byte illegal after ed	;9dae
	rlca			;9daf
	push af			;9db0
	ret nc			;9db1
l9db2h:
	jr nz,l9d85h		;9db2
	sub b			;9db4
	jr nz,l9db2h		;9db5
	ld a,(bc)		;9db7
	push af			;9db8
	ret nc			;9db9
l9dbah:
	ld d,b			;9dba
	nop			;9dbb
	pop de			;9dbc
	jr nz,l9dbah		;9dbd
	ld a,(bc)		;9dbf
	push af			;9dc0
	ret nc			;9dc1
l9dc2h:
	ld b,b			;9dc2
	pop de			;9dc3
	or b			;9dc4
	jr nz,l9dc2h		;9dc5
	ld a,(bc)		;9dc7
	push af			;9dc8
	ret nc			;9dc9
l9dcah:
	jr nc,l9d9dh		;9dca
	and b			;9dcc
	jr nz,l9dcah		;9dcd
	add hl,bc		;9dcf
l9dd0h:
	ret nc			;9dd0
	jr nc,l9dd0h		;9dd1
	and d			;9dd3
	cp l			;9dd4
	cp 001h			;9dd5
	ret m			;9dd7
	dec b			;9dd8
	jp (hl)			;9dd9
	dec b			;9dda
	jp pe,0f50eh		;9ddb
	out (020h),a		;9dde
	jr nc,$+66		;9de0
	ld d,b			;9de2
	ld h,b			;9de3
	ld (hl),b		;9de4
	add a,b			;9de5
	sub b			;9de6
	add a,b			;9de7
	ld (hl),b		;9de8
	ld h,b			;9de9
	ld d,b			;9dea
	ld b,b			;9deb
	jr nc,l9e0eh		;9dec
	jr nc,$+66		;9dee
	ld d,b			;9df0
	ld h,b			;9df1
	ld (hl),b		;9df2
	add a,b			;9df3
	sub b			;9df4
	add a,b			;9df5
	ld (hl),b		;9df6
	ld h,b			;9df7
	ld d,b			;9df8
l9df9h:
	ld b,b			;9df9
	jr nc,$+34		;9dfa
	jr nc,l9df9h		;9dfc
	inc bc			;9dfe
	ret m			;9dff
	ld h,0eah		;9e00
	ld c,0dbh		;9e02
	ld (bc),a		;9e04
	ex de,hl		;9e05
	ld d,d			;9e06
	ld b,d			;9e07
	call nc,0e921h		;9e08
	ld (bc),a		;9e0b
	out (010h),a		;9e0c
l9e0eh:
	inc hl			;9e0e
	jp (hl)			;9e0f
	dec b			;9e10
	call nc,02121h		;9e11
	jp (hl)			;9e14
	ld (bc),a		;9e15
	out (010h),a		;9e16
	inc hl			;9e18
	jp (hl)			;9e19
	dec b			;9e1a
	call nc,02121h		;9e1b
	jp (hl)			;9e1e
	ld (bc),a		;9e1f
	call nc,02310h		;9e20
	jp (hl)			;9e23
	dec b			;9e24
	call nc,0e921h		;9e25
	ld (bc),a		;9e28
	out (010h),a		;9e29
	inc hl			;9e2b
l9e2ch:
	jp (hl)			;9e2c
	dec b			;9e2d
	call nc,02121h		;9e2e
	jp (hl)			;9e31
	ld (bc),a		;9e32
l9e33h:
	out (010h),a		;9e33
	inc hl			;9e35
	jp (hl)			;9e36
	dec b			;9e37
	call nc,0e921h		;9e38
	ld bc,07060h		;9e3b
	add a,b			;9e3e
	sub b			;9e3f
	call nc,0b0a0h		;9e40
	out (000h),a		;9e43
	djnz $+34		;9e45
	cp 001h			;9e47
	jp (hl)			;9e49
	dec b			;9e4a
	jp pe,0eb0fh		;9e4b
	add hl,bc		;9e4e
	jr nc,l9e2ch		;9e4f
l9e51h:
	inc bc			;9e51
	ret m			;9e52
	jr z,$-41		;9e53
	ld hl,052f8h		;9e55
	call nc,02010h		;9e58
	ret m			;9e5b
	jr z,l9e33h		;9e5c
	ld hl,0f821h		;9e5e
	ld d,d			;9e61
	call nc,02010h		;9e62
	ret m			;9e65
	jr z,$-41		;9e66
	ld hl,052f8h		;9e68
	call nc,02010h		;9e6b
	djnz l9e90h		;9e6e
	ret m			;9e70
	jr z,$-41		;9e71
	ld hl,052f8h		;9e73
	call nc,02010h		;9e76
	ret m			;9e79
	jr z,l9e51h		;9e7a
	ld hl,052f8h		;9e7c
	call nc,02010h		;9e7f
	ret m			;9e82
	jr z,$-41		;9e83
	sub c			;9e85
	ret m			;9e86
	ld d,d			;9e87
	call nc,02050h		;9e88
	ld d,b			;9e8b
	sub b			;9e8c
	defb 0fdh,052h,0beh ;illegal sequence	;9e8d
l9e90h:
	cp 001h			;9e90
	ret m			;9e92
	dec b			;9e93
	jp (hl)			;9e94
	dec b			;9e95
	xor 009h		;9e96
	jp pe,0c10ah		;9e98
	push af			;9e9b
	out (020h),a		;9e9c
	jr nc,l9ee0h		;9e9e
	ld d,b			;9ea0
	ld h,b			;9ea1
	ld (hl),b		;9ea2
	add a,b			;9ea3
	sub b			;9ea4
	add a,b			;9ea5
	ld (hl),b		;9ea6
	ld h,b			;9ea7
	ld d,b			;9ea8
	ld b,b			;9ea9
	jr nc,$+34		;9eaa
	jr nc,$+66		;9eac
	ld d,b			;9eae
	ld h,b			;9eaf
	ld (hl),b		;9eb0
	add a,b			;9eb1
	sub b			;9eb2
	add a,b			;9eb3
	ld (hl),b		;9eb4
	ld h,b			;9eb5
	ld d,b			;9eb6
l9eb7h:
	ld b,b			;9eb7
	jr nc,$+34		;9eb8
	djnz l9eb7h		;9eba
	ld (bc),a		;9ebc
	out (020h),a		;9ebd
	jr nc,l9f01h		;9ebf
	ld d,b			;9ec1
	ld h,b			;9ec2
	ld (hl),b		;9ec3
	add a,b			;9ec4
	sub b			;9ec5
	add a,b			;9ec6
	ld (hl),b		;9ec7
	ld h,b			;9ec8
	ld d,b			;9ec9
l9ecah:
	ld b,b			;9eca
	jr nc,l9eedh		;9ecb
	jr nc,l9f0fh		;9ecd
	ld d,b			;9ecf
	ld h,b			;9ed0
	ld (hl),b		;9ed1
	add a,b			;9ed2
	sub b			;9ed3
	add a,b			;9ed4
	ld (hl),b		;9ed5
	ld h,b			;9ed6
	ld d,b			;9ed7
	ld b,b			;9ed8
	jr nc,l9ecah		;9ed9
	ret m			;9edb
	ld h,0eah		;9edc
	ld c,0dbh		;9ede
l9ee0h:
	ld (bc),a		;9ee0
	ex de,hl		;9ee1
	ld d,d			;9ee2
	ld b,d			;9ee3
	call nc,0e991h		;9ee4
	ld (bc),a		;9ee7
	out (080h),a		;9ee8
	sub e			;9eea
	jp (hl)			;9eeb
	dec b			;9eec
l9eedh:
	call nc,09191h		;9eed
	jp (hl)			;9ef0
	ld (bc),a		;9ef1
	out (080h),a		;9ef2
	sub e			;9ef4
	jp (hl)			;9ef5
	dec b			;9ef6
	call nc,09191h		;9ef7
	jp (hl)			;9efa
	ld (bc),a		;9efb
	call nc,09380h		;9efc
	jp (hl)			;9eff
	dec b			;9f00
l9f01h:
	push de			;9f01
	sub c			;9f02
	jp (hl)			;9f03
	ld (bc),a		;9f04
l9f05h:
	call nc,09380h		;9f05
	jp (hl)			;9f08
	dec b			;9f09
	push de			;9f0a
	sub c			;9f0b
	sub c			;9f0c
l9f0dh:
	jp (hl)			;9f0d
l9f0eh:
	ld (bc),a		;9f0e
l9f0fh:
	call nc,09380h		;9f0f
	jp (hl)			;9f12
	dec b			;9f13
	push de			;9f14
	sub c			;9f15
	jp (hl)			;9f16
	ld bc,010d4h		;9f17
	jr nz,l9f4ch		;9f1a
	ld b,b			;9f1c
	ld d,b			;9f1d
	ld h,b			;9f1e
	ld (hl),b		;9f1f
	add a,b			;9f20
	sub b			;9f21
	cp 001h			;9f22
	jp (hl)			;9f24
	dec b			;9f25
	ret m			;9f26
	ld a,(bc)		;9f27
	ex de,hl		;9f28
	add hl,bc		;9f29
	ld b,b			;9f2a
	in a,(003h)		;9f2b
	jp pe,0f50dh		;9f2d
	pop de			;9f30
l9f31h:
	jr nz,l9f05h		;9f31
	sub b			;9f33
	jr nz,l9f31h		;9f34
	add hl,bc		;9f36
l9f37h:
	ret m			;9f37
l9f38h:
	dec bc			;9f38
	ret nc			;9f39
	jr nz,l9f0dh		;9f3a
	sub b			;9f3c
	jr nz,l9f37h		;9f3d
	ld a,(bc)		;9f3f
l9f40h:
	push af			;9f40
	pop de			;9f41
	ld d,b			;9f42
	nop			;9f43
	jp nc,0fb20h		;9f44
	add hl,bc		;9f47
l9f48h:
	ret m			;9f48
	dec bc			;9f49
	ret nc			;9f4a
	ld d,b			;9f4b
l9f4ch:
	nop			;9f4c
	pop de			;9f4d
	jr nz,l9f48h		;9f4e
	ld a,(bc)		;9f50
	push af			;9f51
	pop de			;9f52
	ld b,b			;9f53
	jp nc,020b0h		;9f54
	ei			;9f57
	add hl,bc		;9f58
l9f59h:
	ret m			;9f59
	dec bc			;9f5a
	ret nc			;9f5b
	ld b,b			;9f5c
	pop de			;9f5d
	or b			;9f5e
	jr nz,l9f59h		;9f5f
	ld a,(bc)		;9f61
	push af			;9f62
	pop de			;9f63
l9f64h:
	jr nc,l9f38h		;9f64
	and b			;9f66
	jr nz,l9f64h		;9f67
	add hl,bc		;9f69
	ret m			;9f6a
	dec bc			;9f6b
	ret nc			;9f6c
	jr nc,l9f40h		;9f6d
l9f6fh:
	and b			;9f6f
	jr nz,l9f6fh		;9f70
	ld (0febfh),hl		;9f72
	ld bc,005e9h		;9f75
	ret m			;9f78
	dec e			;9f79
	dec (ix+065h)		;9f7a
	jp pe,0f50ch		;9f7d
	jp nc,0d123h		;9f80
	ld b,e			;9f83
	ld (hl),e		;9f84
	jp nc,0d223h		;9f85
	inc hl			;9f88
	inc hl			;9f89
	inc hl			;9f8a
	pop de			;9f8b
	ld hl,004fbh		;9f8c
	cp 001h			;9f8f
	ret m			;9f91
	inc d			;9f92
	jp (hl)			;9f93
	dec b			;9f94
	dec (ix+065h)		;9f95
	jp pe,0f20ch		;9f98
	djnz $-13		;9f9b
	ld b,h			;9f9d
	jp nc,0d123h		;9f9e
	ld b,e			;9fa1
	ld (hl),e		;9fa2
	jp nc,0d223h		;9fa3
	inc hl			;9fa6
	inc hl			;9fa7
	inc hl			;9fa8
	pop de			;9fa9
	ld hl,09efdh		;9faa
	cp a			;9fad
	cp 001h			;9fae
	jp (hl)			;9fb0
	dec b			;9fb1
	ret m			;9fb2
	dec e			;9fb3
	dec (ix+065h)		;9fb4
	jp pe,0c10dh		;9fb7
	push af			;9fba
	pop de			;9fbb
	inc hl			;9fbc
	jp nc,0d123h		;9fbd
	ld d,e			;9fc0
	inc hl			;9fc1
	ld b,e			;9fc2
	inc bc			;9fc3
	dec b			;9fc4
	ei			;9fc5
	inc bc			;9fc6
	pop de			;9fc7
	inc hl			;9fc8
	jp nc,0d123h		;9fc9
	ld d,e			;9fcc
	inc hl			;9fcd
	ld b,e			;9fce
	inc bc			;9fcf
l9fd0h:
	inc bc			;9fd0
	cp 001h			;9fd1
	ret m			;9fd3
	inc d			;9fd4
	jp (hl)			;9fd5
	dec b			;9fd6
	dec (ix+065h)		;9fd7
	jp pe,0f20ch		;9fda
	djnz l9fd0h		;9fdd
	ld b,h			;9fdf
	pop bc			;9fe0
	pop de			;9fe1
	inc hl			;9fe2
	jp nc,0d123h		;9fe3
	ld d,e			;9fe6
	inc hl			;9fe7
	ld b,e			;9fe8
	inc bc			;9fe9
	dec b			;9fea
	pop iy			;9feb
	cp a			;9fed
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
