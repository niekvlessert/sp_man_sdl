; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank29_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank29.bin

	org 08000h

	nop			;8000
	ld de,011c0h		;8001
	add a,b			;8004
	ld de,01120h		;8005
	nop			;8008
	djnz $-30		;8009
	rst 38h			;800b
	cp 002h			;800c
	ret m			;800e
	ld hl,(001e2h)		;800f
	add a,c			;8012
sub_8013h:
	ld b,b			;8013
	add a,c			;8014
	ret nc			;8015
	add a,d			;8016
	jr nc,$-6		;8017
sub_8019h:
	ld d,d			;8019
	and b			;801a
	and b			;801b
	and b			;801c
	ret po			;801d
	and c			;801e
	ld b,b			;801f
	sub c			;8020
	add a,b			;8021
	sub d			;8022
	nop			;8023
	sub d			;8024
	add a,b			;8025
	ret m			;8026
	dec e			;8027
	ld sp,hl		;8028
	ld b,b			;8029
	add a,b			;802a
	rst 30h			;802b
	ld b,0f9h		;802c
	ld b,b			;802e
	add a,b			;802f
	rst 30h			;8030
	ex af,af'		;8031
	ld sp,hl		;8032
	ld b,b			;8033
	add a,b			;8034
	rst 30h			;8035
	ld a,(bc)		;8036
	ld sp,hl		;8037
	ld b,b			;8038
	add a,b			;8039
	rst 30h			;803a
	inc c			;803b
	ld sp,hl		;803c
	ld b,b			;803d
	add a,b			;803e
l803fh:
	rst 38h			;803f
	jp nz,0c100h		;8040
	ret nz			;8043
	pop bc			;8044
	add a,b			;8045
	pop bc			;8046
	jr nz,$-61		;8047
	nop			;8049
	ret nz			;804a
	ret po			;804b
	ret nz			;804c
	and b			;804d
	ret nz			;804e
l804fh:
	add a,b			;804f
	jp m,002feh		;8050
	ret po			;8053
	inc bc			;8054
	jp po,06101h		;8055
	ld h,b			;8058
	inc sp			;8059
	nop			;805a
	ld h,c			;805b
	nop			;805c
l805dh:
	ld h,c			;805d
	ld h,b			;805e
l805fh:
	ld h,c			;805f
	sub b			;8060
l8061h:
	ld h,c			;8061
l8062h:
	ret nc			;8062
	ld h,c			;8063
	ret p			;8064
	ld h,d			;8065
	ld b,b			;8066
	ld h,d			;8067
	add a,b			;8068
	ld h,d			;8069
	ret nc			;806a
	ld h,e			;806b
	nop			;806c
	ld h,e			;806d
	ld b,b			;806e
	ld l,d			;806f
	nop			;8070
	ld l,b			;8071
	nop			;8072
	ld h,(hl)		;8073
	nop			;8074
	ld h,h			;8075
	nop			;8076
	ld h,d			;8077
	nop			;8078
	ld h,c			;8079
	nop			;807a
	ld h,b			;807b
	ret nz			;807c
	djnz l803fh		;807d
	ld c,d			;807f
	nop			;8080
	ld c,b			;8081
	nop			;8082
	ld b,(hl)		;8083
	nop			;8084
	ld b,h			;8085
	nop			;8086
	ld b,d			;8087
	nop			;8088
	ld b,c			;8089
	nop			;808a
	ld b,b			;808b
	ret nz			;808c
	djnz l804fh		;808d
	ld hl,(02800h)		;808f
l8092h:
	nop			;8092
	ld h,000h		;8093
	inc h			;8095
	nop			;8096
	ld (02100h),hl		;8097
	nop			;809a
	jr nz,l805dh		;809b
	djnz l805fh		;809d
	ld a,(de)		;809f
	nop			;80a0
	jr l80a3h		;80a1
l80a3h:
	ld d,000h		;80a3
	inc d			;80a5
	nop			;80a6
	ld (de),a		;80a7
	nop			;80a8
	ld de,01000h		;80a9
	ret nz			;80ac
	nop			;80ad
	ret nz			;80ae
	ld a,(bc)		;80af
	nop			;80b0
l80b1h:
	ex af,af'		;80b1
	nop			;80b2
	ld b,000h		;80b3
	inc b			;80b5
	nop			;80b6
	rst 38h			;80b7
	cp 002h			;80b8
	ret m			;80ba
	dec bc			;80bb
	jp po,0b101h		;80bc
	ld h,b			;80bf
	ld b,e			;80c0
l80c1h:
	nop			;80c1
l80c2h:
	ret m			;80c2
	ld d,d			;80c3
l80c4h:
	or c			;80c4
	nop			;80c5
	or c			;80c6
	ld h,b			;80c7
	or c			;80c8
	sub b			;80c9
	or c			;80ca
	ret nc			;80cb
	or c			;80cc
	ret p			;80cd
	or d			;80ce
	ld b,b			;80cf
	or d			;80d0
	add a,b			;80d1
	or d			;80d2
	ret nc			;80d3
	or e			;80d4
	nop			;80d5
	or e			;80d6
	ld b,b			;80d7
	ret m			;80d8
	ld d,d			;80d9
	ld sp,hl		;80da
	call m,0f780h		;80db
	inc bc			;80de
	ld sp,hl		;80df
	call m,0f780h		;80e0
	ld b,0f9h		;80e3
l80e5h:
	call m,0f780h		;80e5
	ex af,af'		;80e8
	ld sp,hl		;80e9
	call m,0df80h		;80ea
l80edh:
	ld a,(bc)		;80ed
	nop			;80ee
	ex af,af'		;80ef
	nop			;80f0
	ld b,000h		;80f1
	inc b			;80f3
	nop			;80f4
	ld (bc),a		;80f5
	nop			;80f6
	ld bc,00000h		;80f7
	ret nz			;80fa
	rst 38h			;80fb
	xor d			;80fc
	nop			;80fd
	xor b			;80fe
	nop			;80ff
	and (hl)		;8100
l8101h:
	nop			;8101
	and h			;8102
	nop			;8103
l8104h:
	and d			;8104
	nop			;8105
l8106h:
	and c			;8106
	nop			;8107
l8108h:
	and b			;8108
	ret nz			;8109
l810ah:
	nop			;810a
	ret nz			;810b
l810ch:
	jp m,002feh		;810c
	ret po			;810f
	ld bc,001e2h		;8110
	add a,b			;8113
	ret po			;8114
	add a,c			;8115
	jr nc,$-125		;8116
	sub b			;8118
	add a,d			;8119
	nop			;811a
	add a,h			;811b
	nop			;811c
	add a,(hl)		;811d
	nop			;811e
	add a,l			;811f
l8120h:
	nop			;8120
	add a,h			;8121
	nop			;8122
	add a,d			;8123
	nop			;8124
	add a,c			;8125
l8126h:
	sub b			;8126
	add a,c			;8127
	jr nc,$-126		;8128
	ret po			;812a
	add a,b			;812b
	and b			;812c
	ld b,c			;812d
l812eh:
	sub b			;812e
	ld b,c			;812f
	jr nc,$+66		;8130
	ret po			;8132
l8133h:
	ld b,b			;8133
	and b			;8134
	ld sp,03190h		;8135
	jr nc,l816ah		;8138
	ret po			;813a
	jr nc,$-94		;813b
	ld hl,02190h		;813d
	jr nc,$+34		;8140
	ret po			;8142
	jr nz,l80e5h		;8143
	ld de,01190h		;8145
	jr nc,$+18		;8148
	ret po			;814a
	djnz l80edh		;814b
	ld bc,00190h		;814d
	jr nc,l8152h		;8150
l8152h:
	ret po			;8152
	rst 38h			;8153
	cp 002h			;8154
	ret m			;8156
	ld l,a			;8157
	jp po,0c001h		;8158
l815bh:
	ret po			;815b
	pop bc			;815c
	jr nc,l8120h		;815d
	sub b			;815f
	jp nz,0c400h		;8160
	nop			;8163
	ret m			;8164
	ld c,d			;8165
	add a,000h		;8166
	push bc			;8168
	nop			;8169
l816ah:
	call nz,0c200h		;816a
	nop			;816d
	pop bc			;816e
	sub b			;816f
	pop bc			;8170
l8171h:
	jr nc,l8133h		;8171
	ret po			;8173
	ret nz			;8174
	and b			;8175
	ld d,c			;8176
	sub b			;8177
	ld d,c			;8178
	jr nc,$+82		;8179
	ret po			;817b
	ld d,b			;817c
	and b			;817d
	ld sp,03190h		;817e
	jr nc,$+50		;8181
	ret po			;8183
	jr nc,l8126h		;8184
	ld hl,02190h		;8186
	jr nc,$+34		;8189
	ret po			;818b
	jr nz,l812eh		;818c
	ld de,01190h		;818e
	jr nc,l81a3h		;8191
	ret po			;8193
	djnz $-94		;8194
	ld bc,00190h		;8196
	jr nc,l819bh		;8199
l819bh:
	ret po			;819b
	nop			;819c
	and b			;819d
	rst 38h			;819e
	cp 002h			;819f
	ret po			;81a1
	ld (bc),a		;81a2
l81a3h:
	jp po,l9001h		;81a3
	ld h,b			;81a6
	and c			;81a7
	add a,b			;81a8
	and d			;81a9
	djnz $-91		;81aa
	ld (hl),b		;81ac
	and h			;81ad
	ret nz			;81ae
	and l			;81af
	nop			;81b0
	and (hl)		;81b1
	jr nc,l815bh		;81b2
	ld d,b			;81b4
	xor b			;81b5
	ld h,b			;81b6
	sub b			;81b7
	ld l,b			;81b8
	rst 30h			;81b9
	ld (bc),a		;81ba
	ld sp,hl		;81bb
	ld de,0f782h		;81bc
	inc b			;81bf
	ld sp,hl		;81c0
	ld de,0f782h		;81c1
	ld b,0f9h		;81c4
	ld de,0df82h		;81c6
l81c9h:
	ld sp,032a0h		;81c9
	ld d,b			;81cc
	ld (033a0h),a		;81cd
	ld d,b			;81d0
	inc (hl)		;81d1
	nop			;81d2
	inc (hl)		;81d3
	or b			;81d4
	dec (hl)		;81d5
	ld d,b			;81d6
	ld (hl),000h		;81d7
	ld (hl),080h		;81d9
	ld (hl),0f0h		;81db
l81ddh:
	scf			;81dd
	ld (hl),b		;81de
	jr c,l8171h		;81df
	rst 38h			;81e1
l81e2h:
	cp 002h			;81e2
	ret m			;81e4
	jr z,l81c9h		;81e5
l81e7h:
	ld bc,06080h		;81e7
	pop bc			;81ea
	add a,b			;81eb
l81ech:
	jp nz,0c310h		;81ec
	ld (hl),b		;81ef
	call nz,0c5c0h		;81f0
	nop			;81f3
	add a,030h		;81f4
	rst 0			;81f6
	ld d,b			;81f7
l81f8h:
	ret z			;81f8
	ld h,b			;81f9
	add a,b			;81fa
	ld l,b			;81fb
l81fch:
	ld sp,hl		;81fc
	ld de,0f882h		;81fd
	ld h,0f7h		;8200
	ld (bc),a		;8202
	ld sp,hl		;8203
	ld de,0f782h		;8204
	ld b,0f9h		;8207
	ld de,0f782h		;8209
	add hl,bc		;820c
	ld sp,hl		;820d
	ld de,0ff82h		;820e
	pop bc			;8211
	and b			;8212
	jp nz,0c250h		;8213
	ret po			;8216
	jp 0c450h		;8217
	nop			;821a
	call nz,0c5b0h		;821b
	ld d,b			;821e
	add a,000h		;821f
	add a,080h		;8221
	add a,0f0h		;8223
	rst 0			;8225
	ld (hl),b		;8226
	ret z			;8227
	sub b			;8228
	ret			;8229
	and b			;822a
	jp z,0fad0h		;822b
	cp 002h			;822e
	jp po,0b201h		;8230
	jr nz,l81e7h		;8233
	ld (hl),b		;8235
	and c			;8236
	jr nc,l81ddh		;8237
	jr nz,l81ddh		;8239
	jr nc,l81e2h		;823b
	nop			;823d
	and c			;823e
	nop			;823f
	and c			;8240
	add a,b			;8241
	and e			;8242
	nop			;8243
	and d			;8244
	add a,b			;8245
	and d			;8246
	nop			;8247
	and c			;8248
	jr nc,l81ech		;8249
	add a,b			;824b
	and d			;824c
	nop			;824d
	and e			;824e
	add a,b			;824f
	and e			;8250
	nop			;8251
	and e			;8252
	ret nz			;8253
	and h			;8254
	jr nz,l81fch		;8255
	nop			;8257
	and c			;8258
	ld b,b			;8259
	and d			;825a
	nop			;825b
	and d			;825c
	add a,b			;825d
	and e			;825e
	nop			;825f
	and c			;8260
	ret nz			;8261
	and d			;8262
	jr nc,$-91		;8263
	jr nz,$-90		;8265
	nop			;8267
	and l			;8268
	nop			;8269
	add a,c			;826a
	ret nz			;826b
	add a,d			;826c
	jr nz,$-124		;826d
	ret nz			;826f
	add a,e			;8270
	nop			;8271
	add a,e			;8272
	ld h,b			;8273
	add a,h			;8274
	nop			;8275
	add a,h			;8276
	add a,b			;8277
	add a,l			;8278
	nop			;8279
l827ah:
	add a,(hl)		;827a
	nop			;827b
	jp po,07202h		;827c
l827fh:
	nop			;827f
	ld (hl),d		;8280
	add a,b			;8281
	ld (hl),e		;8282
l8283h:
	nop			;8283
	sbc a,074h		;8284
	ld (hl),l		;8286
	halt			;8287
	ld (hl),a		;8288
	ld a,b			;8289
	ld h,h			;828a
	ld h,l			;828b
	ld h,(hl)		;828c
	ld h,a			;828d
	ld l,b			;828e
	ld b,h			;828f
	ld b,l			;8290
	ld b,(hl)		;8291
	ld b,a			;8292
	ld c,b			;8293
	inc h			;8294
	dec h			;8295
	ld h,027h		;8296
	jr z,$+43		;8298
	or 0ffh			;829a
	cp 002h			;829c
	ret m			;829e
	jr z,l8283h		;829f
	ld bc,030c1h		;82a1
	call nz,0c220h		;82a4
	jr nc,$-57		;82a7
	nop			;82a9
	ret m			;82aa
	inc hl			;82ab
	pop bc			;82ac
	nop			;82ad
	pop bc			;82ae
	add a,b			;82af
	jp 0c200h		;82b0
	add a,b			;82b3
	jp nz,0c100h		;82b4
	jr nc,l827ah		;82b7
	add a,b			;82b9
	jp nz,0c300h		;82ba
	add a,b			;82bd
	jp 0c300h		;82be
	ret nz			;82c1
	call nz,0c520h		;82c2
	nop			;82c5
	pop bc			;82c6
	ld b,b			;82c7
	jp nz,0c200h		;82c8
	add a,b			;82cb
	jp 0c100h		;82cc
	ret nz			;82cf
	jp nz,0c330h		;82d0
	jr nz,$-58		;82d3
	nop			;82d5
	push bc			;82d6
	nop			;82d7
	and c			;82d8
	ret nz			;82d9
	and d			;82da
	jr nz,l827fh		;82db
	ret nz			;82dd
	and e			;82de
	nop			;82df
	and e			;82e0
	ld h,b			;82e1
	and h			;82e2
	nop			;82e3
	and h			;82e4
	add a,b			;82e5
	and l			;82e6
	nop			;82e7
	and (hl)		;82e8
	nop			;82e9
	jp po,l9202h		;82ea
	nop			;82ed
	sub d			;82ee
	add a,b			;82ef
	sub e			;82f0
	nop			;82f1
	sbc a,094h		;82f2
	sub l			;82f4
	sub (hl)		;82f5
	sub a			;82f6
	sbc a,b			;82f7
	ld h,h			;82f8
	ld h,l			;82f9
	ld h,(hl)		;82fa
	ld h,a			;82fb
l82fch:
	ld l,b			;82fc
	ld b,h			;82fd
	ld b,l			;82fe
	ld b,(hl)		;82ff
	ld b,a			;8300
	ld c,b			;8301
	inc b			;8302
	dec b			;8303
	ld b,007h		;8304
	ex af,af'		;8306
	add hl,bc		;8307
	ld a,(bc)		;8308
	or 0ffh			;8309
	cp 002h			;830b
	jp po,07001h		;830d
	ld hl,001e3h		;8310
	call po,07005h		;8313
	jr nz,l82fch		;8316
	nop			;8318
	ld (hl),b		;8319
	ld hl,02070h		;831a
	ld h,b			;831d
	ld hl,02060h		;831e
	ld d,b			;8321
	ld (02050h),hl		;8322
	jr nc,l8348h		;8325
	jr nc,l8349h		;8327
	push af			;8329
	djnz $+35		;832a
	djnz l834eh		;832c
	ei			;832e
	ex af,af'		;832f
	jp po,0f501h		;8330
	nop			;8333
	jr nz,l8336h		;8334
l8336h:
	ld (00cfbh),hl		;8336
	rst 38h			;8339
	cp 002h			;833a
	ret m			;833c
	ld hl,(001e2h)		;833d
	add a,b			;8340
	ld hl,054f8h		;8341
	ld (hl),b		;8344
	ld b,b			;8345
	ld b,b			;8346
	ld b,d			;8347
l8348h:
	ld b,b			;8348
l8349h:
	ld b,b			;8349
	ld b,b			;834a
	ld b,e			;834b
	jr nc,$+66		;834c
l834eh:
	ld d,b			;834e
	ld b,d			;834f
	ld d,b			;8350
	ld b,b			;8351
	jr nc,l8396h		;8352
	jr nc,l8396h		;8354
	ret m			;8356
	dec b			;8357
	push af			;8358
	nop			;8359
	ld hl,02000h		;835a
	ei			;835d
	ex af,af'		;835e
	ret m			;835f
	add hl,de		;8360
	push af			;8361
	nop			;8362
	ld hl,02000h		;8363
	ei			;8366
	inc c			;8367
	rst 38h			;8368
	cp 002h			;8369
	ret po			;836b
	ld bc,001e2h		;836c
	ld h,b			;836f
	inc (hl)		;8370
	ld d,b			;8371
	ld e,000h		;8372
	ld e,020h		;8374
	ld a,(de)		;8376
	ld d,b			;8377
	ld (hl),050h		;8378
	dec (hl)		;837a
	ld b,b			;837b
	inc (hl)		;837c
	ld b,b			;837d
	inc sp			;837e
	jr nc,$+54		;837f
	jr nz,l83b6h		;8381
	djnz l83b9h		;8383
	nop			;8385
	inc sp			;8386
	jr nz,l83bfh		;8387
	jr nz,l83c0h		;8389
	djnz l83c1h		;838b
	djnz $+53		;838d
	nop			;838f
	inc (hl)		;8390
	nop			;8391
	inc sp			;8392
	rst 38h			;8393
	cp 002h			;8394
l8396h:
	jp po,0f801h		;8396
	dec h			;8399
	ld (hl),b		;839a
	ld l,b			;839b
	ld d,b			;839c
	inc a			;839d
	nop			;839e
	inc a			;839f
	jr nz,l83d7h		;83a0
	ld d,b			;83a2
	ld l,h			;83a3
	ld b,b			;83a4
	ld l,d			;83a5
	ld b,b			;83a6
	ld l,b			;83a7
	jr nc,$+105		;83a8
	jr nc,l8414h		;83aa
	jr nz,$+105		;83ac
	djnz l8418h		;83ae
	nop			;83b0
	ld h,a			;83b1
	jr nz,l8420h		;83b2
	jr nz,l8420h		;83b4
l83b6h:
	djnz l8420h		;83b6
	nop			;83b8
l83b9h:
	ld h,a			;83b9
	nop			;83ba
	ld l,b			;83bb
	nop			;83bc
	ld h,a			;83bd
	nop			;83be
l83bfh:
	ld l,b			;83bf
l83c0h:
	rst 38h			;83c0
l83c1h:
	cp 002h			;83c1
	ret po			;83c3
	ld bc,001e2h		;83c4
	sub c			;83c7
	jr nz,$-109		;83c8
	add a,b			;83ca
	sub e			;83cb
	nop			;83cc
	sub e			;83cd
	add a,b			;83ce
	sub h			;83cf
	add a,b			;83d0
	sub l			;83d1
	add a,b			;83d2
	sub d			;83d3
	add a,b			;83d4
	sub e			;83d5
	add a,b			;83d6
l83d7h:
	sub h			;83d7
	add a,b			;83d8
	sub l			;83d9
	nop			;83da
	sub l			;83db
	ld h,b			;83dc
	sub l			;83dd
	jp c,0ca95h		;83de
	add a,l			;83e1
	jp c,0ca85h		;83e2
	ld (hl),l		;83e5
	jp c,0ca75h		;83e6
	ld h,l			;83e9
	jp c,023f9h		;83ea
	add a,h			;83ed
	rst 38h			;83ee
	cp 002h			;83ef
	ret m			;83f1
	inc d			;83f2
	jp po,0c101h		;83f3
	jr nz,l83b9h		;83f6
	add a,b			;83f8
	ret m			;83f9
	ld h,h			;83fa
	jp 0c300h		;83fb
	add a,b			;83fe
	call nz,0c580h		;83ff
	add a,b			;8402
	jp nz,0c380h		;8403
	add a,b			;8406
	call nz,0f880h		;8407
	ld c,d			;840a
	push bc			;840b
	nop			;840c
	push bc			;840d
	ld h,b			;840e
	push bc			;840f
	jp c,0cac5h		;8410
	or l			;8413
l8414h:
	jp c,0caa5h		;8414
	sub l			;8417
l8418h:
	jp c,0ca85h		;8418
	ld (hl),l		;841b
	jp c,023f9h		;841c
	add a,h			;841f
l8420h:
	ret po			;8420
	ld bc,065ffh		;8421
	jp z,014f8h		;8424
	ld d,c			;8427
	jr nz,l847bh		;8428
	add a,b			;842a
	ret m			;842b
	ld h,h			;842c
	ld d,e			;842d
	nop			;842e
	ld d,e			;842f
	add a,b			;8430
	ld d,h			;8431
	add a,b			;8432
	ld d,l			;8433
	add a,b			;8434
	ld d,d			;8435
	add a,b			;8436
	ld d,e			;8437
	add a,b			;8438
	ld d,h			;8439
	add a,b			;843a
	ret m			;843b
	ld c,d			;843c
	ld b,l			;843d
	nop			;843e
	ld b,l			;843f
	ld h,b			;8440
	ld b,l			;8441
	jp c,0ca45h		;8442
	dec (hl)		;8445
	jp c,0ca25h		;8446
	dec d			;8449
	jp c,0ca05h		;844a
	dec b			;844d
	jp c,0ca05h		;844e
	jp m,002feh		;8451
	ret m			;8454
	add hl,de		;8455
	jp po,l8601h		;8456
	djnz $-121		;8459
	ld h,h			;845b
	add a,h			;845c
	push bc			;845d
	ld (hl),h		;845e
	nop			;845f
	jp po,06402h		;8460
	push bc			;8463
	ld h,h			;8464
	nop			;8465
	ld d,h			;8466
	push bc			;8467
	ld d,h			;8468
	jr nc,$+70		;8469
	push bc			;846b
	ld b,h			;846c
	jr nc,$+54		;846d
	push bc			;846f
	inc (hl)		;8470
	jr nc,l8497h		;8471
	push bc			;8473
	inc h			;8474
	jr nc,l848bh		;8475
	push bc			;8477
	inc d			;8478
	jr nc,l847fh		;8479
l847bh:
	push bc			;847b
	inc b			;847c
	jr nc,l8483h		;847d
l847fh:
	push bc			;847f
	inc b			;8480
	jr nc,l8487h		;8481
l8483h:
	push bc			;8483
	inc b			;8484
	jr nc,l848bh		;8485
l8487h:
	push bc			;8487
	rst 38h			;8488
	cp 002h			;8489
l848bh:
	ex (sp),hl		;848b
	ld bc,01ee4h		;848c
	and c			;848f
	ld b,b			;8490
	and d			;8491
	nop			;8492
	call po,07415h		;8493
	add a,b			;8496
l8497h:
	pop hl			;8497
	ld bc,00ae4h		;8498
	dec b			;849b
	call po,0040ch		;849c
	call po,00614h		;849f
	call po,0071ch		;84a2
	call po,0070bh		;84a5
	call po,0060ch		;84a8
	call po,0050dh		;84ab
	call po,0040fh		;84ae
	call po,00311h		;84b1
	call po,00213h		;84b4
	call po,00115h		;84b7
	call po,00117h		;84ba
	call po,0030ah		;84bd
	call po,0020ch		;84c0
l84c3h:
	call po,00414h		;84c3
	call po,0051ch		;84c6
	call po,0050bh		;84c9
	call po,0040ch		;84cc
	call po,0030dh		;84cf
	call po,0020fh		;84d2
	call po,00111h		;84d5
	call po,00113h		;84d8
	call po,00115h		;84db
	call po,00117h		;84de
	call po,0010ah		;84e1
	call po,0010ch		;84e4
	call po,00214h		;84e7
	call po,0031ch		;84ea
	call po,0030bh		;84ed
	call po,0020ch		;84f0
	call po,0020dh		;84f3
	call po,0010fh		;84f6
	call po,00111h		;84f9
	call po,00113h		;84fc
	call po,00015h		;84ff
	call po,00017h		;8502
	ret po			;8505
	dec bc			;8506
	rst 38h			;8507
	cp 002h			;8508
	jp po,0f801h		;850a
	ld h,h			;850d
	pop bc			;850e
	ld b,b			;850f
	push bc			;8510
	nop			;8511
	or a			;8512
	nop			;8513
	ret m			;8514
	dec h			;8515
	and l			;8516
	nop			;8517
	and e			;8518
	nop			;8519
	ret m			;851a
	inc d			;851b
	jp 0c380h		;851c
	ret nc			;851f
	call nz,0c430h		;8520
	add a,b			;8523
	call nz,0c5d0h		;8524
	jr nc,$-56		;8527
	nop			;8529
	and (hl)		;852a
	add a,b			;852b
	add a,a			;852c
	nop			;852d
	ld h,a			;852e
	add a,b			;852f
	ret m			;8530
	dec h			;8531
	ld b,l			;8532
	nop			;8533
	ld b,e			;8534
	nop			;8535
	ret m			;8536
	inc d			;8537
	add a,e			;8538
	add a,b			;8539
	add a,e			;853a
	ret nc			;853b
	add a,h			;853c
	jr nc,l84c3h		;853d
	add a,b			;853f
	add a,h			;8540
	ret nc			;8541
	add a,l			;8542
	jr nc,$-120		;8543
	nop			;8545
	add a,(hl)		;8546
	add a,b			;8547
	ld h,a			;8548
	nop			;8549
	ld b,a			;854a
	add a,b			;854b
	ret m			;854c
	dec h			;854d
	ld b,l			;854e
	nop			;854f
	ld b,e			;8550
	nop			;8551
	ret m			;8552
	inc d			;8553
	ld b,e			;8554
	add a,b			;8555
	ld b,e			;8556
	ret nc			;8557
	ld b,h			;8558
	jr nc,$+70		;8559
	add a,b			;855b
	ld b,h			;855c
	ret nc			;855d
	ld b,l			;855e
	jr nc,$+72		;855f
	nop			;8561
	ld h,080h		;8562
	rla			;8564
	nop			;8565
	rlca			;8566
	add a,b			;8567
	ret m			;8568
	dec h			;8569
	dec b			;856a
	nop			;856b
	inc bc			;856c
	nop			;856d
	ret m			;856e
	inc d			;856f
	inc bc			;8570
	add a,b			;8571
	inc bc			;8572
	ret nc			;8573
	inc b			;8574
	jr nc,l857ah		;8575
	add a,b			;8577
	inc b			;8578
	ret nc			;8579
l857ah:
	dec b			;857a
	jr nc,l8583h		;857b
	nop			;857d
	ld b,080h		;857e
	rlca			;8580
	nop			;8581
	rst 38h			;8582
l8583h:
	cp 002h			;8583
	jp po,0a601h		;8585
	nop			;8588
	and e			;8589
	ld b,b			;858a
	and l			;858b
	add a,b			;858c
	pop hl			;858d
	ld bc,019e4h		;858e
	add hl,bc		;8591
	call po,0091ah		;8592
	call po,0091bh		;8595
	call po,0091ch		;8598
	call po,0091bh		;859b
	call po,0091dh		;859e
	call po,0091eh		;85a1
	ex (sp),hl		;85a4
	rlca			;85a5
	call po,sub_901fh	;85a6
	jr c,$-10		;85a9
	scf			;85ab
	ld (hl),035h		;85ac
	inc (hl)		;85ae
l85afh:
	inc sp			;85af
l85b0h:
	ld (03031h),a		;85b0
	cpl			;85b3
	ld l,02dh		;85b4
	inc l			;85b6
	dec hl			;85b7
	ld hl,(02829h)		;85b8
	daa			;85bb
	ld h,0f6h		;85bc
	ex (sp),hl		;85be
	ld a,(bc)		;85bf
	sub b			;85c0
	dec h			;85c1
	sub b			;85c2
	inc h			;85c3
l85c4h:
	sub b			;85c4
	inc hl			;85c5
	sub b			;85c6
	ld (02190h),hl		;85c7
	sub b			;85ca
	jr nz,l85b0h		;85cb
	dec bc			;85cd
	sub b			;85ce
	rra			;85cf
	sub b			;85d0
	ld e,090h		;85d1
	dec e			;85d3
	add a,b			;85d4
	inc e			;85d5
	ld (hl),b		;85d6
	dec de			;85d7
	ld h,b			;85d8
	ld a,(de)		;85d9
	ex (sp),hl		;85da
	ld de,01950h		;85db
	ld b,b			;85de
	jr l85c4h		;85df
	inc de			;85e1
	jr nz,l85fbh		;85e2
	rst 38h			;85e4
	cp 002h			;85e5
	jp po,0f801h		;85e7
	jr z,l85afh		;85ea
	nop			;85ec
	or e			;85ed
	add a,b			;85ee
	or h			;85ef
	nop			;85f0
	or l			;85f1
	nop			;85f2
	and (hl)		;85f3
	nop			;85f4
	and a			;85f5
	nop			;85f6
	xor b			;85f7
	nop			;85f8
	xor c			;85f9
	nop			;85fa
l85fbh:
	jp po,0aa02h		;85fb
	nop			;85fe
	xor e			;85ff
	nop			;8600
l8601h:
	xor h			;8601
	nop			;8602
	xor l			;8603
	nop			;8604
	xor (hl)		;8605
	nop			;8606
	ret m			;8607
	ld (bc),a		;8608
	jp po,02007h		;8609
	ld e,e			;860c
	jr nc,l8669h		;860d
	ld b,b			;860f
	ld e,c			;8610
	call p,05758h		;8611
	ld d,(hl)		;8614
	ld d,l			;8615
	ld d,h			;8616
	ld d,e			;8617
	ld d,d			;8618
	ld d,c			;8619
	ld d,b			;861a
	ld c,a			;861b
	ld c,(hl)		;861c
	ld c,l			;861d
	ld c,h			;861e
	ld c,e			;861f
	ld c,d			;8620
	ld c,c			;8621
	ld c,b			;8622
	ld b,a			;8623
	ld b,(hl)		;8624
	or 0e2h			;8625
	ld a,(bc)		;8627
	ld b,b			;8628
	ld b,l			;8629
	ld b,b			;862a
	ld b,h			;862b
	ld b,b			;862c
	ld b,e			;862d
	ld b,b			;862e
	ld b,d			;862f
	ld b,b			;8630
	ld b,c			;8631
	ld b,b			;8632
	ld b,b			;8633
	jp po,0300bh		;8634
	ccf			;8637
	jr nz,l8678h		;8638
	djnz l8679h		;863a
	ret m			;863c
	ld a,(de)		;863d
	jp po,0100eh		;863e
	inc a			;8641
	djnz l867fh		;8642
	djnz l8680h		;8644
	jp po,0000fh		;8646
	add hl,sp		;8649
	rst 38h			;864a
	cp 002h			;864b
	ret po			;864d
	ld bc,001e2h		;864e
	push af			;8651
	ld (hl),c		;8652
	ret nz			;8653
	ld (hl),c		;8654
	add a,b			;8655
	ld (hl),c		;8656
	ld h,b			;8657
	ld (hl),c		;8658
	add a,b			;8659
	ld (hl),c		;865a
	ret nz			;865b
	ei			;865c
l865dh:
	ex af,af'		;865d
	push af			;865e
	ld b,c			;865f
	ret nz			;8660
	ld b,c			;8661
	add a,b			;8662
	ld b,c			;8663
l8664h:
	ld h,b			;8664
	ld b,c			;8665
	add a,b			;8666
	ld b,c			;8667
	ret nz			;8668
l8669h:
	ei			;8669
	ex af,af'		;866a
	rst 38h			;866b
	cp 002h			;866c
	ret m			;866e
	dec b			;866f
	jp po,0f501h		;8670
	pop bc			;8673
	ret nz			;8674
l8675h:
	pop bc			;8675
	add a,b			;8676
	pop bc			;8677
l8678h:
	ld h,b			;8678
l8679h:
	pop bc			;8679
	add a,b			;867a
	pop bc			;867b
	ret nz			;867c
	ei			;867d
	ex af,af'		;867e
l867fh:
	push af			;867f
l8680h:
	ld d,c			;8680
	ret nz			;8681
	ld d,c			;8682
	add a,b			;8683
	ld d,c			;8684
	ld h,b			;8685
	ld d,c			;8686
	add a,b			;8687
	ld d,c			;8688
	ret nz			;8689
	ei			;868a
	ex af,af'		;868b
	ret po			;868c
	ld bc,0feffh		;868d
	ld (bc),a		;8690
	ret po			;8691
	ld bc,001e2h		;8692
	ld (hl),b		;8695
	and b			;8696
	sub b			;8697
	ld l,b			;8698
	jr nc,$+54		;8699
	ld d,b			;869b
	ld l,d			;869c
	jr nz,$+55		;869d
	ret po			;869f
	ld bc,001e2h		;86a0
	jr nc,$-94		;86a3
	ld b,b			;86a5
l86a6h:
	ld l,b			;86a6
	nop			;86a7
	inc (hl)		;86a8
	jr nc,l8715h		;86a9
	nop			;86ab
	dec (hl)		;86ac
	rst 38h			;86ad
	cp 002h			;86ae
	ret m			;86b0
	ld c,d			;86b1
	jp po,06001h		;86b2
	and b			;86b5
	sub b			;86b6
	ld l,b			;86b7
	jr nz,$+54		;86b8
	ld h,b			;86ba
	ld l,d			;86bb
	djnz l86f3h		;86bc
	ret po			;86be
	ld bc,001e2h		;86bf
	jr nz,l8664h		;86c2
	jr nc,l872eh		;86c4
l86c6h:
	nop			;86c6
	inc (hl)		;86c7
	jr nc,l8734h		;86c8
	nop			;86ca
	dec (hl)		;86cb
	ret po			;86cc
	ld bc,0feffh		;86cd
	ld (bc),a		;86d0
	ret po			;86d1
	ld bc,001e2h		;86d2
	ld h,c			;86d5
	or b			;86d6
	sub l			;86d7
	and b			;86d8
	ld e,b			;86d9
	ld (hl),b		;86da
	jr z,l865dh		;86db
	ret po			;86dd
	ld bc,001e2h		;86de
	ld d,c			;86e1
	or b			;86e2
	ld h,l			;86e3
	and b			;86e4
	ld c,b			;86e5
	ld (hl),b		;86e6
	jr z,l8669h		;86e7
	ret po			;86e9
	ld bc,001e2h		;86ea
	ld hl,035b0h		;86ed
	and b			;86f0
	jr l8763h		;86f1
l86f3h:
	jr l8675h		;86f3
	ret po			;86f5
	ld bc,001e2h		;86f6
	ld bc,005b0h		;86f9
	and b			;86fc
	ex af,af'		;86fd
	ld (hl),b		;86fe
	rst 38h			;86ff
	cp 002h			;8700
	jp po,0f801h		;8702
	ld c,d			;8705
	sub c			;8706
	or b			;8707
	or l			;8708
	and b			;8709
	adc a,b			;870a
	ld (hl),b		;870b
	ld c,b			;870c
	add a,b			;870d
	ret po			;870e
	ld bc,001e2h		;870f
	ld d,c			;8712
	or b			;8713
	ld h,l			;8714
l8715h:
	and b			;8715
	ld c,b			;8716
	ld (hl),b		;8717
	jr z,$-126		;8718
	ret po			;871a
	ld bc,001e2h		;871b
	ld hl,035b0h		;871e
	and b			;8721
	jr l8794h		;8722
	jr l86a6h		;8724
	ret po			;8726
	ld bc,001e2h		;8727
	ld bc,005b0h		;872a
	and b			;872d
l872eh:
	ex af,af'		;872e
	ld (hl),b		;872f
	ret po			;8730
	ld bc,0feffh		;8731
l8734h:
	ld (bc),a		;8734
	ret po			;8735
	ld (bc),a		;8736
	jp po,l8101h		;8737
	sub b			;873a
	or l			;873b
	ld h,b			;873c
	ld l,b			;873d
	jr nc,l8748h		;873e
	jr nc,l86c6h		;8740
	nop			;8742
	add a,e			;8743
	nop			;8744
	add a,d			;8745
	add a,b			;8746
	add a,d			;8747
l8748h:
	nop			;8748
	add a,c			;8749
	add a,b			;874a
	add a,c			;874b
	ld b,b			;874c
	ld b,h			;874d
	nop			;874e
	ld b,e			;874f
	nop			;8750
	ld b,d			;8751
	add a,b			;8752
	ld b,d			;8753
	nop			;8754
	ld b,c			;8755
	add a,b			;8756
	ld b,c			;8757
	ld b,b			;8758
	dec b			;8759
	nop			;875a
	inc b			;875b
	nop			;875c
	inc bc			;875d
	nop			;875e
	ld (bc),a		;875f
	add a,b			;8760
	ld (bc),a		;8761
	nop			;8762
l8763h:
	rst 38h			;8763
	cp 002h			;8764
	jp po,0f801h		;8766
	ld c,d			;8769
	pop bc			;876a
	sub b			;876b
	push bc			;876c
	ld h,b			;876d
	ret z			;876e
	jr nc,l87b9h		;876f
	ld b,b			;8771
	ret m			;8772
	inc d			;8773
	or h			;8774
	nop			;8775
	or e			;8776
	nop			;8777
	or d			;8778
	add a,b			;8779
	or d			;877a
	nop			;877b
	or c			;877c
	add a,b			;877d
	or c			;877e
	ld b,b			;877f
	ld d,l			;8780
	nop			;8781
	ld d,h			;8782
	nop			;8783
	ld d,e			;8784
	nop			;8785
	ld d,d			;8786
	add a,b			;8787
	ld d,d			;8788
	nop			;8789
	ld d,c			;878a
	add a,b			;878b
	ld d,c			;878c
	ld b,b			;878d
	inc d			;878e
	nop			;878f
	inc de			;8790
	nop			;8791
	ld (de),a		;8792
	add a,b			;8793
l8794h:
	ld (de),a		;8794
	nop			;8795
	ld de,01180h		;8796
	ld b,b			;8799
	rst 38h			;879a
	cp 002h			;879b
	jp po,07201h		;879d
	add a,b			;87a0
	push af			;87a1
	ld sp,hl		;87a2
	or d			;87a3
	add a,a			;87a4
	ei			;87a5
	ld (bc),a		;87a6
	ld a,d			;87a7
	nop			;87a8
	rst 30h			;87a9
	inc bc			;87aa
	ld sp,hl		;87ab
	or d			;87ac
	add a,a			;87ad
	rst 18h			;87ae
	ld c,d			;87af
	nop			;87b0
	rst 38h			;87b1
	ld (hl),e		;87b2
	nop			;87b3
	ld (hl),h		;87b4
	nop			;87b5
	ld (hl),l		;87b6
	nop			;87b7
	ld (hl),l		;87b8
l87b9h:
	add a,b			;87b9
	halt			;87ba
	nop			;87bb
	halt			;87bc
	add a,b			;87bd
	ld (hl),a		;87be
	nop			;87bf
	ld (hl),a		;87c0
	add a,b			;87c1
	ld a,b			;87c2
	nop			;87c3
	ld a,b			;87c4
	add a,b			;87c5
	ld a,c			;87c6
	nop			;87c7
	jp m,002feh		;87c8
	ret m			;87cb
	inc c			;87cc
	jp po,0c101h		;87cd
	ld b,b			;87d0
	push af			;87d1
	ld sp,hl		;87d2
	jp po,0fb87h		;87d3
	ld (bc),a		;87d6
	push bc			;87d7
	nop			;87d8
	rst 30h			;87d9
	ex af,af'		;87da
	ld sp,hl		;87db
	jp po,0df87h		;87dc
	ld b,l			;87df
	nop			;87e0
	rst 38h			;87e1
	pop bc			;87e2
	add a,b			;87e3
	jp nz,0c200h		;87e4
	add a,b			;87e7
	jp nz,0c3c0h		;87e8
	nop			;87eb
	jp 0c340h		;87ec
	add a,b			;87ef
	jp 0c4c0h		;87f0
	nop			;87f3
	call nz,0c440h		;87f4
	add a,b			;87f7
	jp m,002feh		;87f8
	xor 001h		;87fb
	jp po,0a201h		;87fd
	ld b,b			;8800
	and e			;8801
	ld (hl),b		;8802
	and h			;8803
	ret nc			;8804
	and (hl)		;8805
	ret p			;8806
	xor b			;8807
	jr nz,$+21		;8808
	ld (hl),b		;880a
	inc d			;880b
	ret nc			;880c
	ld d,0f0h		;880d
	jr $+34			;880f
	sub d			;8811
	ld b,b			;8812
	sub e			;8813
	ld (hl),b		;8814
	sub h			;8815
	ret nc			;8816
	sub (hl)		;8817
	ret nz			;8818
	sub a			;8819
	ld (hl),b		;881a
	sbc a,b			;881b
	jr nz,l885eh		;881c
	rla			;881e
	ld b,b			;881f
	jr l8862h		;8820
	add hl,de		;8822
	ld b,b			;8823
	ld a,(de)		;8824
	ld b,b			;8825
l8826h:
	dec de			;8826
	ld b,b			;8827
	inc e			;8828
	ld b,b			;8829
	dec e			;882a
	ld b,b			;882b
	ld e,040h		;882c
	rra			;882e
	ld d,b			;882f
	jr nz,l8826h		;8830
	ld hl,02322h		;8832
	inc h			;8835
	dec h			;8836
	ld h,027h		;8837
	jr z,l8864h		;8839
	ld hl,(02c2bh)		;883b
	dec l			;883e
	ld l,02fh		;883f
	jr nc,$+51		;8841
	ld (03433h),a		;8843
	dec (hl)		;8846
	ld (hl),037h		;8847
	jr c,l8884h		;8849
	ld a,(03c3bh)		;884b
l884eh:
	dec a			;884e
	ld a,03fh		;884f
	ld b,b			;8851
	ld b,c			;8852
	or 040h			;8853
	ld b,d			;8855
	ld b,b			;8856
	ld b,e			;8857
	jr nc,l889eh		;8858
	jr nc,$+71		;885a
	jr nz,$+72		;885c
l885eh:
	jr nz,l88a7h		;885e
	djnz l88aah		;8860
l8862h:
	djnz l88adh		;8862
l8864h:
	ret po			;8864
	rrca			;8865
	rst 38h			;8866
	cp 002h			;8867
	ret m			;8869
	jr z,l884eh		;886a
	ld bc,040c2h		;886c
	jp 0c470h		;886f
	ret nc			;8872
	add a,0f0h		;8873
	ret z			;8875
	jr nz,l88dbh		;8876
l8878h:
	ld (hl),b		;8878
	ld h,h			;8879
	ret nc			;887a
	ld h,(hl)		;887b
	ret p			;887c
	ld l,b			;887d
	jr nz,l8878h		;887e
	add hl,bc		;8880
	jp nz,0c200h		;8881
l8884h:
	djnz $-60		;8884
	jr nz,$-60		;8886
	jr nc,$-60		;8888
	ld b,b			;888a
	jp nz,0c250h		;888b
	ld h,b			;888e
	jp nz,0c270h		;888f
l8892h:
	add a,b			;8892
	jp nz,0c2a0h		;8893
	ret nz			;8896
	jp nz,0e2e0h		;8897
	ld (bc),a		;889a
	jp 0c300h		;889b
l889eh:
	ld b,b			;889e
	jp 0c380h		;889f
	ret nz			;88a2
	call nz,0c400h		;88a3
	ld b,b			;88a6
l88a7h:
	call nz,0c480h		;88a7
l88aah:
	ret nz			;88aa
	push bc			;88ab
	nop			;88ac
l88adh:
	push bc			;88ad
	ld b,b			;88ae
	push bc			;88af
	add a,b			;88b0
	push bc			;88b1
	ret nz			;88b2
	add a,000h		;88b3
	add a,040h		;88b5
	add a,080h		;88b7
	add a,0c0h		;88b9
	rst 0			;88bb
	nop			;88bc
	rst 0			;88bd
	ld b,b			;88be
	or a			;88bf
	add a,b			;88c0
	and a			;88c1
	ret nz			;88c2
	sbc a,b			;88c3
	nop			;88c4
	adc a,b			;88c5
	ld b,b			;88c6
	ld a,b			;88c7
	add a,b			;88c8
	ld l,b			;88c9
	ret nz			;88ca
	ld e,c			;88cb
	nop			;88cc
	ld c,c			;88cd
	ld b,b			;88ce
	add hl,sp		;88cf
	add a,b			;88d0
	add hl,hl		;88d1
	ret nz			;88d2
	ld a,(de)		;88d3
	nop			;88d4
	ld a,(bc)		;88d5
	ld b,b			;88d6
	rst 38h			;88d7
	cp 002h			;88d8
	pop hl			;88da
l88dbh:
	ld bc,00ee4h		;88db
	ld a,(bc)		;88de
	call po,00911h		;88df
	call po,00814h		;88e2
	call po,00817h		;88e5
	call po,0081ah		;88e8
	call po,0081dh		;88eb
	call po,0081fh		;88ee
	call po,00708h		;88f1
	call po,0070eh		;88f4
	call po,00711h		;88f7
	call po,00714h		;88fa
	call po,00717h		;88fd
	call po,0071ah		;8900
	push af			;8903
	call po,0071ch		;8904
	call po,0071fh		;8907
	ei			;890a
	ex af,af'		;890b
	call po,0050eh		;890c
	call po,00411h		;890f
	call po,00414h		;8912
	call po,00417h		;8915
	call po,0041ah		;8918
	call po,0041dh		;891b
	call po,0041fh		;891e
	call po,00408h		;8921
	call po,0040eh		;8924
	call po,00411h		;8927
	call po,00414h		;892a
	call po,00417h		;892d
	call po,0041ah		;8930
	push af			;8933
	call po,0041ch		;8934
	call po,0041fh		;8937
	ei			;893a
	ex af,af'		;893b
	call po,0010eh		;893c
	call po,00111h		;893f
	call po,00114h		;8942
	call po,00117h		;8945
	call po,0011ah		;8948
	call po,0011dh		;894b
	call po,0011fh		;894e
	call po,00108h		;8951
	call po,0010eh		;8954
	call po,00111h		;8957
	call po,00114h		;895a
	call po,00117h		;895d
	call po,0011ah		;8960
	push af			;8963
	call po,0011ch		;8964
	call po,0011fh		;8967
	ei			;896a
	ex af,af'		;896b
	rst 38h			;896c
	cp 002h			;896d
l896fh:
	jp po,0f801h		;896f
	ld h,0c3h		;8972
	nop			;8974
	call nz,0c500h		;8975
	nop			;8978
	add a,000h		;8979
	jp 0f500h		;897b
	pop bc			;897e
	add a,b			;897f
	pop bc			;8980
	ld h,b			;8981
	pop bc			;8982
	ret po			;8983
	ei			;8984
	ex af,af'		;8985
	ld d,e			;8986
	nop			;8987
	ld d,h			;8988
	nop			;8989
	ld d,l			;898a
	nop			;898b
	ld d,(hl)		;898c
	nop			;898d
	ld d,e			;898e
	nop			;898f
	push af			;8990
	ld d,c			;8991
	add a,b			;8992
	ld d,c			;8993
	ld h,b			;8994
	ld d,c			;8995
	ret po			;8996
	ei			;8997
	ex af,af'		;8998
	inc bc			;8999
	nop			;899a
	inc b			;899b
	nop			;899c
	dec b			;899d
	nop			;899e
	ld b,000h		;899f
	inc bc			;89a1
	nop			;89a2
	push af			;89a3
	ld bc,00180h		;89a4
	ld h,b			;89a7
	ld bc,0fbe0h		;89a8
	ex af,af'		;89ab
	rst 38h			;89ac
	cp 002h			;89ad
	ret po			;89af
	ld bc,001e2h		;89b0
	ld h,h			;89b3
	ld h,b			;89b4
	sub e			;89b5
	ld d,b			;89b6
l89b7h:
	sub h			;89b7
	jr nc,$-105		;89b8
	jr nz,$-104		;89ba
	djnz l89b7h		;89bc
	in a,(089h)		;89be
	rst 38h			;89c0
	cp 002h			;89c1
	ret m			;89c3
	add hl,de		;89c4
	jp po,06401h		;89c5
	ld h,b			;89c8
	ret m			;89c9
	jr z,l896fh		;89ca
	ld d,b			;89cc
	ret m			;89cd
	inc d			;89ce
l89cfh:
	and h			;89cf
	jr nc,$-89		;89d0
	jr nz,$-88		;89d2
	djnz l89cfh		;89d4
	in a,(089h)		;89d6
	ret po			;89d8
	ld bc,0f8ffh		;89d9
	add hl,de		;89dc
	jp po,04401h		;89dd
	ld h,b			;89e0
	ret m			;89e1
	jr z,$+85		;89e2
	ld d,b			;89e4
	ret m			;89e5
l89e6h:
	inc d			;89e6
	ld d,h			;89e7
	jr nc,$+87		;89e8
	jr nz,l8a42h		;89ea
	djnz l89e6h		;89ec
	add hl,de		;89ee
	jp po,02401h		;89ef
	ld h,b			;89f2
	ret m			;89f3
	jr z,$+53		;89f4
	ld d,b			;89f6
	ret m			;89f7
l89f8h:
	inc d			;89f8
	inc (hl)		;89f9
	jr nc,$+55		;89fa
	jr nz,l8a34h		;89fc
	djnz l89f8h		;89fe
	add hl,de		;8a00
	jp po,01401h		;8a01
	ld h,b			;8a04
	ret m			;8a05
	jr z,l8a1bh		;8a06
	ld d,b			;8a08
	ret m			;8a09
	inc d			;8a0a
	inc d			;8a0b
l8a0ch:
	jr nc,$+23		;8a0c
	jr nz,l8a26h		;8a0e
	djnz l8a0ch		;8a10
	cp 002h			;8a12
	ret po			;8a14
	ld bc,001e2h		;8a15
	ld d,b			;8a18
	ld h,(hl)		;8a19
	ld d,b			;8a1a
l8a1bh:
	ld e,b			;8a1b
	ld b,b			;8a1c
	ld h,d			;8a1d
	ld b,b			;8a1e
	ld e,(hl)		;8a1f
	jr nc,$+94		;8a20
	jr nc,$+92		;8a22
	jr nc,l8a7fh		;8a24
l8a26h:
	jr nc,$+90		;8a26
	jr nc,l8a83h		;8a28
	jr nc,$+90		;8a2a
	nop			;8a2c
	ld e,c			;8a2d
	jr nc,l8a96h		;8a2e
	jr nc,l8a8ah		;8a30
	jr nz,l8a96h		;8a32
l8a34h:
	jr nz,l8a94h		;8a34
	djnz l8a94h		;8a36
	djnz l8a94h		;8a38
	djnz l8a95h		;8a3a
	djnz l8a96h		;8a3c
	djnz l8a99h		;8a3e
	djnz l8a9ah		;8a40
l8a42h:
	nop			;8a42
	ld e,c			;8a43
	djnz l8aach		;8a44
	djnz l8aa0h		;8a46
	nop			;8a48
	ld h,d			;8a49
	nop			;8a4a
	ld e,(hl)		;8a4b
	nop			;8a4c
	ld e,h			;8a4d
	nop			;8a4e
	ld e,d			;8a4f
	nop			;8a50
	ld e,c			;8a51
	nop			;8a52
	ld e,b			;8a53
	nop			;8a54
	ld e,c			;8a55
	nop			;8a56
	ld e,b			;8a57
	rst 38h			;8a58
	cp 002h			;8a59
	ret m			;8a5b
	dec h			;8a5c
	jp po,l9001h		;8a5d
	ld h,(hl)		;8a60
	sub b			;8a61
	ld e,b			;8a62
	ld h,b			;8a63
	ld h,d			;8a64
	ld h,b			;8a65
	ld e,(hl)		;8a66
	ld d,b			;8a67
	ld e,h			;8a68
	ld d,b			;8a69
	ld e,d			;8a6a
	ld d,b			;8a6b
	ld e,c			;8a6c
	ld b,b			;8a6d
	ld e,b			;8a6e
	ld b,b			;8a6f
	ld e,c			;8a70
	ld b,b			;8a71
	ld e,b			;8a72
	nop			;8a73
	ld e,c			;8a74
	ld b,b			;8a75
	ld h,(hl)		;8a76
	ld b,b			;8a77
	ld e,b			;8a78
	jr nc,l8addh		;8a79
	jr nz,$+96		;8a7b
	jr nz,$+94		;8a7d
l8a7fh:
	jr nz,$+92		;8a7f
	jr nz,l8adch		;8a81
l8a83h:
	jr nz,l8addh		;8a83
	jr nz,l8ae0h		;8a85
	jr nz,$+90		;8a87
	nop			;8a89
l8a8ah:
	ld e,c			;8a8a
	djnz l8af3h		;8a8b
	djnz l8ae7h		;8a8d
	nop			;8a8f
	ld h,d			;8a90
	nop			;8a91
	ld e,(hl)		;8a92
	nop			;8a93
l8a94h:
	ld e,h			;8a94
l8a95h:
	nop			;8a95
l8a96h:
	ld e,d			;8a96
	nop			;8a97
	ld e,c			;8a98
l8a99h:
	nop			;8a99
l8a9ah:
	ld e,b			;8a9a
	nop			;8a9b
	ld e,c			;8a9c
	nop			;8a9d
	ld e,b			;8a9e
	ret po			;8a9f
l8aa0h:
	ld bc,0feffh		;8aa0
	ld (bc),a		;8aa3
	ex (sp),hl		;8aa4
	ld bc,01fe4h		;8aa5
	sub c			;8aa8
	jr nz,$-108		;8aa9
	and b			;8aab
l8aach:
	sub h			;8aac
	add a,b			;8aad
	jp po,05201h		;8aae
	ld b,b			;8ab1
	ld (hl),l		;8ab2
	ld b,b			;8ab3
	ld a,c			;8ab4
	nop			;8ab5
	ret po			;8ab6
	add hl,de		;8ab7
	rst 38h			;8ab8
	cp 002h			;8ab9
	ret m			;8abb
	ld h,h			;8abc
l8abdh:
	jp po,0c101h		;8abd
	jr nz,$-60		;8ac0
	and b			;8ac2
	call nz,0fe80h		;8ac3
	ld bc,00feah		;8ac6
	jp (hl)			;8ac9
	ld b,0f8h		;8aca
	add a,h			;8acc
	rst 8			;8acd
	call nc,0e9b1h		;8ace
l8ad1h:
	ex af,af'		;8ad1
	jp pe,0d402h		;8ad2
	or c			;8ad5
	rst 38h			;8ad6
	cp 001h			;8ad7
	jp pe,0e90ch		;8ad9
l8adch:
	inc bc			;8adc
l8addh:
	ret nz			;8add
	jp (hl)			;8ade
	add hl,bc		;8adf
l8ae0h:
	sub 030h		;8ae0
	djnz l8ad1h		;8ae2
	ex af,af'		;8ae4
	ex de,hl		;8ae5
	add a,c			;8ae6
l8ae7h:
	djnz l8abdh		;8ae7
	add a,c			;8ae9
	jp pe,l810ah		;8aea
	jp pe,l8106h		;8aed
	jp pe,l8104h		;8af0
l8af3h:
	rst 38h			;8af3
	cp 001h			;8af4
	jp pe,0e90fh		;8af6
	add hl,bc		;8af9
	ret m			;8afa
	add a,a			;8afb
	ret z			;8afc
	sub 030h		;8afd
	djnz $-17		;8aff
	inc b			;8b01
	ex de,hl		;8b02
	add a,c			;8b03
	djnz $-42		;8b04
	add a,c			;8b06
	jp pe,l810ch		;8b07
	jp pe,l8108h		;8b0a
	jp pe,l8106h		;8b0d
	jp (hl)			;8b10
	inc bc			;8b11
	ret nz			;8b12
	rst 38h			;8b13
	cp 002h			;8b14
	call po,0e31fh		;8b16
	ld bc,l80b1h		;8b19
	or d			;8b1c
	add a,b			;8b1d
	and e			;8b1e
	add a,b			;8b1f
	add a,e			;8b20
	add a,b			;8b21
	jp po,0a801h		;8b22
	nop			;8b25
	and a			;8b26
	add a,b			;8b27
	and l			;8b28
	nop			;8b29
	ex (sp),hl		;8b2a
	ld bc,0c0b1h		;8b2b
	or d			;8b2e
	ld b,b			;8b2f
	and e			;8b30
	add a,b			;8b31
	add a,e			;8b32
	nop			;8b33
	jp po,0a601h		;8b34
	nop			;8b37
	and a			;8b38
	nop			;8b39
	and (hl)		;8b3a
	add a,b			;8b3b
	xor b			;8b3c
	nop			;8b3d
	and a			;8b3e
	add a,b			;8b3f
	xor c			;8b40
	nop			;8b41
	and a			;8b42
	add a,b			;8b43
	and a			;8b44
	nop			;8b45
	ld a,b			;8b46
	nop			;8b47
	ld e,c			;8b48
	nop			;8b49
	ld e,b			;8b4a
	nop			;8b4b
	ld d,a			;8b4c
	nop			;8b4d
	ex (sp),hl		;8b4e
	ld bc,l8061h		;8b4f
	ld h,d			;8b52
	add a,b			;8b53
	ld d,e			;8b54
	add a,b			;8b55
	inc sp			;8b56
	add a,b			;8b57
	jp po,06801h		;8b58
	nop			;8b5b
	ld h,a			;8b5c
	add a,b			;8b5d
	ld h,l			;8b5e
	nop			;8b5f
	ex (sp),hl		;8b60
	ld bc,0c061h		;8b61
	ld d,d			;8b64
	ret nz			;8b65
	ld b,e			;8b66
	add a,b			;8b67
	inc sp			;8b68
	nop			;8b69
	jp po,06601h		;8b6a
	nop			;8b6d
	ld h,a			;8b6e
	nop			;8b6f
	ld h,(hl)		;8b70
	add a,b			;8b71
	ld l,b			;8b72
	nop			;8b73
	ld h,a			;8b74
	add a,b			;8b75
	ld l,c			;8b76
	nop			;8b77
	ld h,a			;8b78
	add a,b			;8b79
	ld h,a			;8b7a
	nop			;8b7b
	ld c,b			;8b7c
	nop			;8b7d
	add hl,sp		;8b7e
	nop			;8b7f
	jr c,l8b82h		;8b80
l8b82h:
	scf			;8b82
	nop			;8b83
	ex (sp),hl		;8b84
	ld bc,08041h		;8b85
	ld b,d			;8b88
	add a,b			;8b89
	ld b,e			;8b8a
	add a,b			;8b8b
	ld b,e			;8b8c
	add a,b			;8b8d
	jp po,04701h		;8b8e
	add a,b			;8b91
	ld b,l			;8b92
	nop			;8b93
	ld c,b			;8b94
	nop			;8b95
	ex (sp),hl		;8b96
	ld bc,0c041h		;8b97
	ld b,d			;8b9a
	ret nz			;8b9b
	inc sp			;8b9c
	add a,b			;8b9d
	inc sp			;8b9e
	nop			;8b9f
	jp po,03701h		;8ba0
	nop			;8ba3
	ld (hl),080h		;8ba4
	jr c,l8ba8h		;8ba6
l8ba8h:
	scf			;8ba8
	add a,b			;8ba9
	add hl,sp		;8baa
	nop			;8bab
	scf			;8bac
	add a,b			;8bad
	scf			;8bae
	nop			;8baf
	jr z,l8bb2h		;8bb0
l8bb2h:
	add hl,bc		;8bb2
	nop			;8bb3
	ex af,af'		;8bb4
	nop			;8bb5
	rlca			;8bb6
	nop			;8bb7
	add hl,bc		;8bb8
	nop			;8bb9
	rst 38h			;8bba
	cp 002h			;8bbb
	ret m			;8bbd
	jr z,$-28		;8bbe
	ld bc,00ff9h		;8bc0
	adc a,h			;8bc3
	sbc a,b			;8bc4
	nop			;8bc5
	ld l,c			;8bc6
	nop			;8bc7
	ld l,b			;8bc8
	nop			;8bc9
	ld h,a			;8bca
	nop			;8bcb
	ld l,c			;8bcc
	nop			;8bcd
	rst 30h			;8bce
	dec b			;8bcf
	ld sp,hl		;8bd0
	rrca			;8bd1
	adc a,h			;8bd2
	rst 18h			;8bd3
	ld e,b			;8bd4
	nop			;8bd5
	add hl,sp		;8bd6
	nop			;8bd7
	jr c,l8bdah		;8bd8
l8bdah:
	scf			;8bda
l8bdbh:
	nop			;8bdb
	add hl,sp		;8bdc
	nop			;8bdd
	ret m			;8bde
	ld h,043h		;8bdf
	nop			;8be1
	ld b,l			;8be2
	djnz l8c2ch		;8be3
	nop			;8be5
	ld b,a			;8be6
	nop			;8be7
	ld b,a			;8be8
	add a,b			;8be9
	ld b,l			;8bea
	nop			;8beb
	ld c,b			;8bec
	nop			;8bed
	ld b,e			;8bee
	add a,b			;8bef
	ld b,h			;8bf0
	add a,b			;8bf1
	scf			;8bf2
	nop			;8bf3
	ld (hl),000h		;8bf4
	scf			;8bf6
	nop			;8bf7
	ld (hl),080h		;8bf8
	jr c,l8bfch		;8bfa
l8bfch:
	scf			;8bfc
	add a,b			;8bfd
	add hl,sp		;8bfe
	nop			;8bff
	scf			;8c00
	add a,b			;8c01
	scf			;8c02
	nop			;8c03
	jr z,l8c06h		;8c04
l8c06h:
	add hl,bc		;8c06
	nop			;8c07
	ex af,af'		;8c08
	nop			;8c09
	rlca			;8c0a
l8c0bh:
	nop			;8c0b
	add hl,bc		;8c0c
	nop			;8c0d
	rst 38h			;8c0e
	jp 0c500h		;8c0f
	djnz l8bdbh		;8c12
	nop			;8c14
	rst 0			;8c15
	nop			;8c16
	rst 0			;8c17
	add a,b			;8c18
	push bc			;8c19
	nop			;8c1a
	ret z			;8c1b
	nop			;8c1c
	jp 0c480h		;8c1d
	add a,b			;8c20
	rst 0			;8c21
	nop			;8c22
	add a,000h		;8c23
	rst 0			;8c25
	nop			;8c26
	add a,080h		;8c27
	ret z			;8c29
	nop			;8c2a
	rst 0			;8c2b
l8c2ch:
	add a,b			;8c2c
	ret			;8c2d
	nop			;8c2e
	rst 0			;8c2f
	add a,b			;8c30
	rst 0			;8c31
	nop			;8c32
	jp m,002feh		;8c33
	call po,0e11fh		;8c36
	ld bc,0e409h		;8c39
	inc de			;8c3c
	ex (sp),hl		;8c3d
	ld bc,04072h		;8c3e
	push af			;8c41
	call po,sub_8013h	;8c42
	ld (hl),h		;8c45
	call po,sub_8019h	;8c46
	sbc a,c			;8c49
	call po,08010h		;8c4a
	ld e,b			;8c4d
	ei			;8c4e
	dec bc			;8c4f
	push af			;8c50
	call po,04013h		;8c51
	ld (hl),h		;8c54
	call po,04019h		;8c55
	sbc a,c			;8c58
	call po,04010h		;8c59
	ld e,b			;8c5c
	ei			;8c5d
	rlca			;8c5e
l8c5fh:
	rst 38h			;8c5f
	cp 002h			;8c60
	ret m			;8c62
	jr z,$-28		;8c63
	ld bc,04062h		;8c65
	ret m			;8c68
	ld h,h			;8c69
	push af			;8c6a
	ld (hl),b		;8c6b
	jp (hl)			;8c6c
	ld h,c			;8c6d
	ld (0b050h),a		;8c6e
	ei			;8c71
	dec bc			;8c72
	push af			;8c73
l8c74h:
	jr nz,l8c5fh		;8c74
	ld hl,01032h		;8c76
	or b			;8c79
	ei			;8c7a
	rlca			;8c7b
	ret po			;8c7c
	ld bc,0feffh		;8c7d
	ld (bc),a		;8c80
	jp po,0ee01h		;8c81
	inc bc			;8c84
	ld h,c			;8c85
	nop			;8c86
	ld (hl),c		;8c87
	jr nz,l8c0bh		;8c88
	ld b,b			;8c8a
	add a,c			;8c8b
	ld h,b			;8c8c
	add a,b			;8c8d
	ld d,(hl)		;8c8e
	add a,b			;8c8f
	ld c,a			;8c90
	ld b,b			;8c91
	ld c,c			;8c92
	ret po			;8c93
	ld bc,001e2h		;8c94
	ld hl,03100h		;8c97
	jr nz,$+67		;8c9a
	ld b,b			;8c9c
	ld b,c			;8c9d
	ld h,b			;8c9e
	ld b,b			;8c9f
	ld d,(hl)		;8ca0
	ld b,b			;8ca1
	ld c,a			;8ca2
	jr nz,l8ceeh		;8ca3
	ret po			;8ca5
	ld bc,001e2h		;8ca6
	ld bc,00100h		;8ca9
	jr nz,l8cafh		;8cac
	ld b,b			;8cae
l8cafh:
	ld bc,00060h		;8caf
	ld d,(hl)		;8cb2
	nop			;8cb3
	ld c,a			;8cb4
	nop			;8cb5
	ld c,c			;8cb6
	rst 38h			;8cb7
	cp 002h			;8cb8
	jp po,0f801h		;8cba
	inc d			;8cbd
	sub c			;8cbe
	nop			;8cbf
	and c			;8cc0
	jr nz,l8c74h		;8cc1
	ld b,b			;8cc3
	or c			;8cc4
	ld h,b			;8cc5
	and b			;8cc6
	ld d,(hl)		;8cc7
	and b			;8cc8
	ld c,a			;8cc9
	ld h,b			;8cca
	ld c,c			;8ccb
	ret po			;8ccc
	ld bc,001e2h		;8ccd
	ld sp,04100h		;8cd0
	jr nz,l8d26h		;8cd3
	ld b,b			;8cd5
	ld d,c			;8cd6
	ld h,b			;8cd7
	ld d,b			;8cd8
	ld d,(hl)		;8cd9
	ld d,b			;8cda
	ld c,a			;8cdb
	jr nc,$+75		;8cdc
	ret po			;8cde
	ld bc,001e2h		;8cdf
	ld bc,00100h		;8ce2
	jr nz,l8ce8h		;8ce5
	ld b,b			;8ce7
l8ce8h:
	ld bc,00060h		;8ce8
	ld d,(hl)		;8ceb
	nop			;8cec
	ld c,a			;8ced
l8ceeh:
	nop			;8cee
	ld c,c			;8cef
	rst 38h			;8cf0
	cp 001h			;8cf1
	jp pe,0e90ah		;8cf3
	ld bc,030d6h		;8cf6
	ex af,af'		;8cf9
	defb 0edh ;next byte illegal after ed	;8cfa
	inc b			;8cfb
	ex de,hl		;8cfc
	add a,c			;8cfd
	ld de,0c1d2h		;8cfe
	inc c			;8d01
	jp nz,006eah		;8d02
	jp nc,0c20ch		;8d05
	jp pe,0d203h		;8d08
	inc c			;8d0b
	rst 38h			;8d0c
	cp 001h			;8d0d
	jp pe,0e90eh		;8d0f
	ld bc,l81f8h		;8d12
	call z,030d6h		;8d15
	ex af,af'		;8d18
	defb 0edh ;next byte illegal after ed	;8d19
	inc b			;8d1a
	ex de,hl		;8d1b
	add a,c			;8d1c
	ld de,00cd2h		;8d1d
	jp nz,006eah		;8d20
	jp nc,0c20ch		;8d23
l8d26h:
	jp pe,0d203h		;8d26
	inc c			;8d29
	pop bc			;8d2a
	rst 38h			;8d2b
	cp 002h			;8d2c
	ret po			;8d2e
	ld bc,001e2h		;8d2f
	ld h,c			;8d32
	add a,b			;8d33
	sub d			;8d34
	nop			;8d35
	sub d			;8d36
	add a,b			;8d37
	sub e			;8d38
	nop			;8d39
	sub h			;8d3a
	nop			;8d3b
	sub l			;8d3c
	nop			;8d3d
	sub (hl)		;8d3e
	nop			;8d3f
	sub a			;8d40
	nop			;8d41
	sbc a,b			;8d42
	nop			;8d43
	ld d,b			;8d44
	ld d,e			;8d45
	ld d,b			;8d46
	ld c,c			;8d47
	ret po			;8d48
	ld (bc),a		;8d49
	jp po,03101h		;8d4a
	add a,b			;8d4d
	ld d,d			;8d4e
	nop			;8d4f
	ld d,d			;8d50
	add a,b			;8d51
	ld d,e			;8d52
	nop			;8d53
	ld d,h			;8d54
	nop			;8d55
	ld d,l			;8d56
	nop			;8d57
	ld d,(hl)		;8d58
	nop			;8d59
	ld d,a			;8d5a
	nop			;8d5b
	ld e,b			;8d5c
	nop			;8d5d
	jr nz,l8db3h		;8d5e
	jr nz,l8dabh		;8d60
	ret po			;8d62
	ld (bc),a		;8d63
	jp po,00101h		;8d64
	add a,b			;8d67
	ld (bc),a		;8d68
	nop			;8d69
	ld (de),a		;8d6a
	add a,b			;8d6b
	inc de			;8d6c
	nop			;8d6d
	inc d			;8d6e
	nop			;8d6f
	dec d			;8d70
	nop			;8d71
	ld d,000h		;8d72
	rla			;8d74
	nop			;8d75
	jr l8d78h		;8d76
l8d78h:
	nop			;8d78
	ld d,e			;8d79
	nop			;8d7a
	ld c,c			;8d7b
	rst 38h			;8d7c
	cp 002h			;8d7d
	ret m			;8d7f
	ld d,d			;8d80
	jp po,l9101h		;8d81
	add a,b			;8d84
	jp nz,0c200h		;8d85
	add a,b			;8d88
	jp 0c400h		;8d89
	nop			;8d8c
	push bc			;8d8d
	nop			;8d8e
	add a,000h		;8d8f
	rst 0			;8d91
	nop			;8d92
	ret z			;8d93
	nop			;8d94
	ret m			;8d95
	inc d			;8d96
	ld d,b			;8d97
	ld d,e			;8d98
	ld d,b			;8d99
	ld c,c			;8d9a
	ret po			;8d9b
	ld (bc),a		;8d9c
	jp po,0f801h		;8d9d
	ld d,d			;8da0
	ld sp,05280h		;8da1
	nop			;8da4
	ld d,d			;8da5
l8da6h:
	add a,b			;8da6
	ld d,e			;8da7
	nop			;8da8
	ld d,h			;8da9
	nop			;8daa
l8dabh:
	ld d,l			;8dab
	nop			;8dac
l8dadh:
	ld d,(hl)		;8dad
	nop			;8dae
	ld d,a			;8daf
	nop			;8db0
	ld e,b			;8db1
	nop			;8db2
l8db3h:
	ret m			;8db3
	inc d			;8db4
	jr nz,l8e0ah		;8db5
	jr nz,l8e02h		;8db7
	ret po			;8db9
	ld (bc),a		;8dba
	jp po,0f801h		;8dbb
l8dbeh:
	ld d,d			;8dbe
	ld bc,01280h		;8dbf
	nop			;8dc2
	ld (de),a		;8dc3
	add a,b			;8dc4
	inc de			;8dc5
	nop			;8dc6
	inc d			;8dc7
	nop			;8dc8
	dec d			;8dc9
l8dcah:
	nop			;8dca
	ld d,000h		;8dcb
	rla			;8dcd
	nop			;8dce
	jr l8dd1h		;8dcf
l8dd1h:
	ret m			;8dd1
	inc d			;8dd2
	nop			;8dd3
	ld d,e			;8dd4
	nop			;8dd5
	ld c,c			;8dd6
	ret po			;8dd7
	ld bc,0feffh		;8dd8
	ld (bc),a		;8ddb
	pop hl			;8ddc
	ld bc,004e4h		;8ddd
	ld b,0e4h		;8de0
	inc c			;8de2
	rlca			;8de3
	call po,00814h		;8de4
	call po,0091ch		;8de7
	jp po,0f501h		;8dea
	ld (hl),b		;8ded
	or b			;8dee
	ld (hl),c		;8def
	ld h,b			;8df0
	ei			;8df1
	ld a,(bc)		;8df2
	push af			;8df3
	jr nc,l8da6h		;8df4
	ld sp,0fb60h		;8df6
	ld a,(bc)		;8df9
	push af			;8dfa
	djnz l8dadh		;8dfb
	ld de,0fb60h		;8dfd
	ld a,(bc)		;8e00
	rst 38h			;8e01
l8e02h:
	cp 002h			;8e02
	ret m			;8e04
	ld d,d			;8e05
	jp po,0c101h		;8e06
	ld b,b			;8e09
l8e0ah:
	jp nz,0c300h		;8e0a
	add a,b			;8e0d
	push bc			;8e0e
	nop			;8e0f
	ret m			;8e10
	dec h			;8e11
	push af			;8e12
	jp nz,0c1d0h		;8e13
	ld h,b			;8e16
	ei			;8e17
	ld a,(bc)		;8e18
	push af			;8e19
	ld b,d			;8e1a
	ret nc			;8e1b
	ld b,c			;8e1c
	ld h,b			;8e1d
	ei			;8e1e
	ld a,(bc)		;8e1f
	push af			;8e20
	ld (de),a		;8e21
	ret nc			;8e22
	ld de,0fb60h		;8e23
	ld a,(bc)		;8e26
	rst 38h			;8e27
	cp 002h			;8e28
	ret po			;8e2a
	ld bc,001e3h		;8e2b
	call po,05400h		;8e2e
	ld (hl),b		;8e31
	ld (hl),h		;8e32
	and b			;8e33
	add a,h			;8e34
	jr nz,l8dcah		;8e35
l8e37h:
	and b			;8e37
	sub e			;8e38
	jr nz,l8dbeh		;8e39
	djnz l8e90h		;8e3b
	jr nz,$+37		;8e3d
	djnz l8e41h		;8e3f
l8e41h:
	nop			;8e41
	inc h			;8e42
	ld (hl),b		;8e43
	ld d,h			;8e44
	and b			;8e45
	ld h,h			;8e46
	jr nz,l8ebch		;8e47
	and b			;8e49
	ld (hl),e		;8e4a
	jr nz,l8eb0h		;8e4b
	djnz l8e72h		;8e4d
	jr nz,l8e54h		;8e4f
	djnz l8e53h		;8e51
l8e53h:
	nop			;8e53
l8e54h:
	inc d			;8e54
	ld (hl),b		;8e55
	inc d			;8e56
	and b			;8e57
	inc d			;8e58
	jr nz,l8e6eh		;8e59
	and b			;8e5b
	inc de			;8e5c
	jr nz,l8e72h		;8e5d
	djnz l8e74h		;8e5f
	jr nz,$+21		;8e61
	djnz $+1		;8e63
	cp 002h			;8e65
	ret m			;8e67
	ld h,h			;8e68
	jp po,0c401h		;8e69
	ld (hl),b		;8e6c
	ret m			;8e6d
l8e6eh:
	inc hl			;8e6e
	call nz,0c4a0h		;8e6f
l8e72h:
	jr nz,l8e37h		;8e72
l8e74h:
	add a,b			;8e74
	jp 0c320h		;8e75
	djnz l8ecdh		;8e78
	jr nz,$+37		;8e7a
	djnz l8e7eh		;8e7c
l8e7eh:
	nop			;8e7e
	ret m			;8e7f
	ld h,h			;8e80
	ld h,h			;8e81
	ld (hl),b		;8e82
	ret m			;8e83
	inc hl			;8e84
	ld h,h			;8e85
	and b			;8e86
	ld h,h			;8e87
	jr nz,l8eedh		;8e88
l8e8ah:
	and b			;8e8a
	ld h,e			;8e8b
	jr nz,l8ef1h		;8e8c
	djnz l8eb3h		;8e8e
l8e90h:
	jr nz,l8e95h		;8e90
	djnz l8e94h		;8e92
l8e94h:
	nop			;8e94
l8e95h:
	ret m			;8e95
	ld h,h			;8e96
	inc b			;8e97
	ld (hl),b		;8e98
	ret m			;8e99
	inc hl			;8e9a
	inc b			;8e9b
	and b			;8e9c
	inc b			;8e9d
	jr nc,$+5		;8e9e
	and b			;8ea0
	inc bc			;8ea1
	jr nz,$+5		;8ea2
	djnz $+5		;8ea4
	jr nz,$+5		;8ea6
	djnz l8e8ah		;8ea8
	ld bc,0f9ffh		;8eaa
	ret po			;8ead
	adc a,(hl)		;8eae
	push af			;8eaf
l8eb0h:
	add a,c			;8eb0
	add a,b			;8eb1
	add a,c			;8eb2
l8eb3h:
	ld b,b			;8eb3
	ei			;8eb4
	ld (de),a		;8eb5
	push af			;8eb6
	ld d,c			;8eb7
	add a,b			;8eb8
	ld d,c			;8eb9
	ld b,b			;8eba
	ei			;8ebb
l8ebch:
	ex af,af'		;8ebc
	push af			;8ebd
	ld de,01180h		;8ebe
	ld b,b			;8ec1
	ei			;8ec2
	ld b,0ffh		;8ec3
	ld sp,hl		;8ec5
	adc a,(iy-00bh)		;8ec6
	jp 0c200h		;8ec9
	add a,b			;8ecc
l8ecdh:
	ei			;8ecd
	ld (de),a		;8ece
	push af			;8ecf
	ld b,e			;8ed0
	nop			;8ed1
	ld b,d			;8ed2
	add a,b			;8ed3
	ei			;8ed4
	ex af,af'		;8ed5
	push af			;8ed6
	inc bc			;8ed7
	nop			;8ed8
	ld (bc),a		;8ed9
	add a,b			;8eda
	ei			;8edb
	ld b,0e0h		;8edc
	ld bc,0feffh		;8ede
	ld (bc),a		;8ee1
	ret po			;8ee2
	ld bc,001e4h		;8ee3
	ex (sp),hl		;8ee6
	ld bc,09031h		;8ee7
	ld sp,04150h		;8eea
l8eedh:
	adc a,b			;8eed
	ld b,c			;8eee
	ld c,b			;8eef
	ld d,c			;8ef0
l8ef1h:
	add a,b			;8ef1
	ld d,c			;8ef2
	ld b,b			;8ef3
	ld h,c			;8ef4
	add a,b			;8ef5
	ld h,c			;8ef6
	ld b,b			;8ef7
	ld (hl),c		;8ef8
	add a,b			;8ef9
	ld (hl),c		;8efa
	ld b,b			;8efb
	jp m,002feh		;8efc
	ret m			;8eff
	ld h,h			;8f00
	jp po,04301h		;8f01
	jr nz,l8f48h		;8f04
	and b			;8f06
	ld d,e			;8f07
	djnz $+84		;8f08
	sub b			;8f0a
	ld (hl),e		;8f0b
	nop			;8f0c
	ld (hl),d		;8f0d
	add a,b			;8f0e
	sub e			;8f0f
	nop			;8f10
	sub d			;8f11
	add a,b			;8f12
	or e			;8f13
	nop			;8f14
	or d			;8f15
	add a,b			;8f16
	jp m,0e0f9h		;8f17
	adc a,(hl)		;8f1a
	push af			;8f1b
	add a,c			;8f1c
	add a,b			;8f1d
	add a,c			;8f1e
	ld b,b			;8f1f
	ei			;8f20
	inc c			;8f21
	ld d,c			;8f22
	add a,b			;8f23
	ld d,c			;8f24
	ld b,b			;8f25
	jp po,0a301h		;8f26
	nop			;8f29
	and h			;8f2a
	nop			;8f2b
	and l			;8f2c
	nop			;8f2d
	and (hl)		;8f2e
	nop			;8f2f
	and a			;8f30
	nop			;8f31
	ret po			;8f32
	inc bc			;8f33
	jp po,0a301h		;8f34
	add a,b			;8f37
	and h			;8f38
	add a,b			;8f39
	and l			;8f3a
	add a,b			;8f3b
	and e			;8f3c
	ld b,b			;8f3d
	and e			;8f3e
	ld h,b			;8f3f
l8f40h:
	and e			;8f40
	add a,b			;8f41
	and e			;8f42
	and b			;8f43
	and e			;8f44
	ret nz			;8f45
	and e			;8f46
	ret po			;8f47
l8f48h:
	and h			;8f48
	nop			;8f49
	and h			;8f4a
	jr nz,l8ef1h		;8f4b
	ld b,b			;8f4d
	and h			;8f4e
	ld h,b			;8f4f
	and h			;8f50
	add a,b			;8f51
	and h			;8f52
	and b			;8f53
	and h			;8f54
	ret nz			;8f55
	and h			;8f56
	ret po			;8f57
	and l			;8f58
	nop			;8f59
	and l			;8f5a
	jr nz,$-89		;8f5b
	ld b,b			;8f5d
	and l			;8f5e
	ld h,b			;8f5f
	and l			;8f60
	add a,b			;8f61
	and l			;8f62
	ret nz			;8f63
	jp po,l9603h		;8f64
	nop			;8f67
	sub (hl)		;8f68
l8f69h:
	ld b,b			;8f69
	add a,(hl)		;8f6a
	add a,b			;8f6b
	add a,(hl)		;8f6c
	ret nz			;8f6d
	ld (hl),a		;8f6e
	nop			;8f6f
	jp po,06704h		;8f70
	ld b,b			;8f73
	ld h,a			;8f74
	add a,b			;8f75
l8f76h:
	ld d,a			;8f76
	ret nz			;8f77
	ld e,b			;8f78
	nop			;8f79
	ld c,b			;8f7a
	ld b,b			;8f7b
l8f7ch:
	jr c,$-126		;8f7c
	jr z,l8f40h		;8f7e
	add hl,de		;8f80
	nop			;8f81
	rst 38h			;8f82
	ld sp,hl		;8f83
	adc a,(iy-00bh)		;8f84
	jp 0c200h		;8f87
	add a,b			;8f8a
	ei			;8f8b
l8f8ch:
	inc c			;8f8c
l8f8dh:
	ld d,e			;8f8d
	nop			;8f8e
	ld d,d			;8f8f
	add a,b			;8f90
	ret m			;8f91
	jr z,l8f76h		;8f92
	ld bc,l80c2h		;8f94
	jp 0c400h		;8f97
l8f9ah:
	nop			;8f9a
	push bc			;8f9b
	nop			;8f9c
	add a,000h		;8f9d
	or d			;8f9f
	add a,b			;8fa0
	or e			;8fa1
	nop			;8fa2
	or h			;8fa3
	nop			;8fa4
	ret m			;8fa5
	inc d			;8fa6
	jp 0c340h		;8fa7
	ld h,b			;8faa
l8fabh:
	jp 0c380h		;8fab
	and b			;8fae
	jp 0c3c0h		;8faf
	ret po			;8fb2
	call nz,0c400h		;8fb3
l8fb6h:
	jr nz,l8f7ch		;8fb6
	ld b,b			;8fb8
	call nz,0c460h		;8fb9
	add a,b			;8fbc
	call nz,0c4a0h		;8fbd
	ret nz			;8fc0
	call nz,0c5e0h		;8fc1
	nop			;8fc4
	push bc			;8fc5
	jr nz,l8f8dh		;8fc6
	ld b,b			;8fc8
	push bc			;8fc9
	ld h,b			;8fca
	push bc			;8fcb
	add a,b			;8fcc
	or l			;8fcd
l8fceh:
	ret nz			;8fce
	jp po,0b603h		;8fcf
	nop			;8fd2
	and (hl)		;8fd3
	ld b,b			;8fd4
	and (hl)		;8fd5
	add a,b			;8fd6
	sub (hl)		;8fd7
l8fd8h:
	ret nz			;8fd8
	sub a			;8fd9
	nop			;8fda
	jp po,08704h		;8fdb
	ld b,b			;8fde
	ld (hl),a		;8fdf
	add a,b			;8fe0
	ld h,a			;8fe1
	ret nz			;8fe2
	ld e,b			;8fe3
l8fe4h:
	nop			;8fe4
	ld c,b			;8fe5
	ld b,b			;8fe6
	jr c,l8f69h		;8fe7
	jr z,l8fabh		;8fe9
	add hl,de		;8feb
	nop			;8fec
	add hl,bc		;8fed
	ld b,b			;8fee
	rst 38h			;8fef
l8ff0h:
	cp 002h			;8ff0
	ret po			;8ff2
	ld bc,001e2h		;8ff3
	ld h,d			;8ff6
	sub b			;8ff7
	ld (hl),d		;8ff8
l8ff9h:
	jr nc,l8f7ch		;8ff9
	ret p			;8ffb
	sub c			;8ffc
	xor b			;8ffd
	and c			;8ffe
	ld h,b			;8fff
sub_9000h:
	and c			;9000
l9001h:
	inc a			;9001
	and c			;9002
l9003h:
	ld b,d			;9003
	and c			;9004
	inc a			;9005
	ld h,d			;9006
	sub b			;9007
	ld (hl),d		;9008
	jr nc,l8f8ch		;9009
	ret pe			;900b
	sub c			;900c
l900dh:
	and b			;900d
	and c			;900e
	ld e,b			;900f
	and c			;9010
	inc (hl)		;9011
	and c			;9012
	ld a,(l9062h)		;9013
	ld (hl),d		;9016
l9017h:
	jr nc,l8f9ah		;9017
	ret po			;9019
	sub c			;901a
	sbc a,b			;901b
	sub c			;901c
	ld d,b			;901d
	sub c			;901e
sub_901fh:
	inc l			;901f
	sub c			;9020
	ld (l8862h),a		;9021
	ld (hl),d		;9024
	jr z,$-125		;9025
	ret c			;9027
	sub c			;9028
	sub b			;9029
	sub c			;902a
	ld c,b			;902b
	sub c			;902c
	inc h			;902d
	sub c			;902e
	ld hl,(l8062h)		;902f
	ld (hl),d		;9032
l9033h:
	jr nz,l8fb6h		;9033
	ret nc			;9035
	sub c			;9036
	adc a,b			;9037
	sub c			;9038
	ld b,b			;9039
	sub c			;903a
l903bh:
	inc e			;903b
	ld h,d			;903c
	ld a,b			;903d
	ld (hl),d		;903e
	jr $-125		;903f
	ret z			;9041
	sub c			;9042
	add a,b			;9043
l9044h:
	sub c			;9044
	jr c,l8fd8h		;9045
	inc d			;9047
	ld h,d			;9048
	ld (hl),b		;9049
	ld (hl),d		;904a
	djnz l8fceh		;904b
	ret nz			;904d
	sub c			;904e
	ld a,b			;904f
	sub c			;9050
	jr nc,l8fe4h		;9051
	inc c			;9053
	ld h,d			;9054
	ld l,b			;9055
	ld (hl),d		;9056
	ex af,af'		;9057
	add a,c			;9058
	cp b			;9059
	sub c			;905a
	ld (hl),b		;905b
	sub c			;905c
	jr z,l8ff0h		;905d
	inc b			;905f
	ld h,d			;9060
	ld h,b			;9061
l9062h:
	ld (hl),c		;9062
	ret po			;9063
	add a,c			;9064
	add a,b			;9065
	sub c			;9066
	jr z,l8ff9h		;9067
	defb 0fdh,062h ;ld iyh,d	;9069
	ld e,b			;906b
	ld (hl),c		;906c
	ret c			;906d
	add a,c			;906e
	ld a,b			;906f
	sub c			;9070
	jr nz,l9003h		;9071
	call p,05062h		;9073
	ld (hl),c		;9076
	ret nc			;9077
	add a,c			;9078
	ld (hl),b		;9079
	sub c			;907a
	jr l900dh		;907b
	call pe,04862h		;907d
	ld (hl),c		;9080
	ret z			;9081
	add a,c			;9082
	ld l,b			;9083
l9084h:
	sub c			;9084
	djnz l9017h		;9085
	call po,04062h		;9087
	ld (hl),c		;908a
	ret nz			;908b
	add a,c			;908c
	ld h,b			;908d
	sub c			;908e
	ex af,af'		;908f
	sub b			;9090
	call c,03862h		;9091
	ld (hl),c		;9094
	cp b			;9095
	add a,c			;9096
	ld e,b			;9097
	sub c			;9098
	nop			;9099
	sub b			;909a
	call nc,03072h		;909b
	add a,c			;909e
	sub b			;909f
l90a0h:
	sub c			;90a0
	jr nz,l9033h		;90a1
	call z,02872h		;90a3
	add a,c			;90a6
	adc a,b			;90a7
	sub c			;90a8
	jr l903bh		;90a9
	call nz,072f5h		;90ab
l90aeh:
	jr nz,$-125		;90ae
	add a,b			;90b0
	sub c			;90b1
	djnz l9044h		;90b2
	cp b			;90b4
	ei			;90b5
	rst 38h			;90b6
	rst 38h			;90b7
	cp 002h			;90b8
l90bah:
	ret m			;90ba
	inc de			;90bb
	jp po,l91ffh+2		;90bc
	sub b			;90bf
	and d			;90c0
	jr nc,$-77		;90c1
	defb 0fdh,0c1h,0a8h ;illegal sequence	;90c3
l90c6h:
	pop bc			;90c6
	ld h,b			;90c7
	pop bc			;90c8
	inc a			;90c9
	pop bc			;90ca
	ld b,d			;90cb
	pop bc			;90cc
	inc a			;90cd
	sub d			;90ce
	sub b			;90cf
l90d0h:
	and d			;90d0
	jr nc,l9084h		;90d1
	ret pe			;90d3
	pop bc			;90d4
	and b			;90d5
	pop bc			;90d6
	ld e,b			;90d7
	pop bc			;90d8
	inc (hl)		;90d9
	pop bc			;90da
	ld a,(09092h)		;90db
	and d			;90de
	jr nc,$-77		;90df
	ret po			;90e1
	pop bc			;90e2
	sbc a,b			;90e3
	pop bc			;90e4
	ld d,b			;90e5
	pop bc			;90e6
	inc l			;90e7
l90e8h:
	pop bc			;90e8
	ld (l8892h),a		;90e9
	and d			;90ec
	jr z,l90a0h		;90ed
	ret c			;90ef
	pop bc			;90f0
l90f1h:
	sub b			;90f1
	pop bc			;90f2
	ld c,b			;90f3
	pop bc			;90f4
	inc h			;90f5
	pop bc			;90f6
	ld hl,(l8092h)		;90f7
	and d			;90fa
l90fbh:
	jr nz,l90aeh		;90fb
	ret nc			;90fd
	pop bc			;90fe
	adc a,b			;90ff
	pop bc			;9100
l9101h:
	ld b,b			;9101
	pop bc			;9102
	inc e			;9103
	sub d			;9104
l9105h:
	ld a,b			;9105
	and d			;9106
	jr l90bah		;9107
	ret z			;9109
	pop bc			;910a
	add a,b			;910b
	pop bc			;910c
	jr c,l90d0h		;910d
l910fh:
	inc d			;910f
	sub d			;9110
	ld (hl),b		;9111
	and d			;9112
	djnz l90c6h		;9113
	ret nz			;9115
	pop bc			;9116
	ld a,b			;9117
	pop bc			;9118
	jr nc,$-61		;9119
	inc c			;911b
	sub d			;911c
	ld l,b			;911d
	and d			;911e
	ex af,af'		;911f
	or c			;9120
	cp b			;9121
	pop bc			;9122
	ld (hl),b		;9123
	pop bc			;9124
	jr z,l90e8h		;9125
	inc b			;9127
	sub d			;9128
l9129h:
	ld h,b			;9129
	and c			;912a
l912bh:
	ret po			;912b
	or c			;912c
	add a,b			;912d
	pop bc			;912e
	jr z,l90f1h		;912f
	ret p			;9131
	sub d			;9132
l9133h:
	ld e,b			;9133
	and c			;9134
	ret c			;9135
	or c			;9136
	ld a,b			;9137
	pop bc			;9138
	jr nz,l90fbh		;9139
	call p,05092h		;913b
	and c			;913e
	ret nc			;913f
	or c			;9140
	ld (hl),b		;9141
	pop bc			;9142
	jr l9105h		;9143
	call pe,04892h		;9145
	and c			;9148
	ret z			;9149
	or c			;914a
	ld l,b			;914b
	pop bc			;914c
	djnz l910fh		;914d
	call po,04092h		;914f
	and c			;9152
	ret nz			;9153
	or c			;9154
	ld h,b			;9155
	pop bc			;9156
	ex af,af'		;9157
	ret nz			;9158
	call c,03892h		;9159
	and c			;915c
	cp b			;915d
	or c			;915e
	ld e,b			;915f
	pop bc			;9160
	nop			;9161
	ret nz			;9162
	call nc,03092h		;9163
	or c			;9166
	sub b			;9167
	pop bc			;9168
	jr nz,l912bh		;9169
	call z,028a2h		;916b
	or c			;916e
	adc a,b			;916f
	pop bc			;9170
	jr l9133h		;9171
	call nz,0a2f5h		;9173
	jr nz,l9129h		;9176
	add a,b			;9178
	pop bc			;9179
	djnz $-62		;917a
	cp h			;917c
	ei			;917d
	rst 38h			;917e
	rst 38h			;917f
	cp 002h			;9180
	pop hl			;9182
	ld (bc),a		;9183
	call po,0080ah		;9184
	call po,00810h		;9187
	call po,00814h		;918a
	call po,0081ah		;918d
	call po,0081fh		;9190
l9193h:
	pop hl			;9193
	ld (bc),a		;9194
	push af			;9195
	ld sp,hl		;9196
	xor c			;9197
	sub c			;9198
	ei			;9199
	inc bc			;919a
l919bh:
	rst 30h			;919b
	ld (bc),a		;919c
	ld sp,hl		;919d
	xor c			;919e
	sub c			;919f
	push af			;91a0
	rst 30h			;91a1
	inc b			;91a2
	ld sp,hl		;91a3
l91a4h:
	xor c			;91a4
	sub c			;91a5
	ei			;91a6
	ld (bc),a		;91a7
	rst 38h			;91a8
	call po,00815h		;91a9
	call po,00816h		;91ac
l91afh:
	call po,00817h		;91af
	call po,00818h		;91b2
	call po,00819h		;91b5
	call po,0081ah		;91b8
	call po,0081bh		;91bb
	call po,0081ch		;91be
	call po,0081dh		;91c1
	call po,0081eh		;91c4
	jp m,002feh		;91c7
	ret m			;91ca
	jr z,l91afh		;91cb
	ld bc,040b1h		;91cd
	or d			;91d0
l91d1h:
	jp (hl)			;91d1
	or e			;91d2
	adc a,0b5h		;91d3
	inc (hl)		;91d5
	or (hl)			;91d6
	or (hl)			;91d7
	or a			;91d8
	sbc a,(hl)		;91d9
	or d			;91da
	add a,b			;91db
	and e			;91dc
	nop			;91dd
	and e			;91de
	add a,b			;91df
	and h			;91e0
	nop			;91e1
	and h			;91e2
	add a,b			;91e3
	and l			;91e4
	nop			;91e5
	and l			;91e6
	add a,b			;91e7
	and l			;91e8
	nop			;91e9
	and h			;91ea
	nop			;91eb
	and e			;91ec
	nop			;91ed
	and d			;91ee
	add a,b			;91ef
	push af			;91f0
l91f1h:
	sub d			;91f1
	jr z,$-109		;91f2
	jr z,l91f1h		;91f4
	dec de			;91f6
	push af			;91f7
l91f8h:
	ld b,d			;91f8
	jr z,l923ch		;91f9
	jr z,l91f8h		;91fb
	ld a,(bc)		;91fd
	push af			;91fe
l91ffh:
	ld (02128h),hl		;91ff
l9202h:
	jr z,l91ffh		;9202
	ld a,(bc)		;9204
	push af			;9205
l9206h:
	ld (bc),a		;9206
	jr z,$+3		;9207
	jr z,l9206h		;9209
	add hl,bc		;920b
	rst 38h			;920c
	cp 002h			;920d
	ret po			;920f
	ld bc,001e2h		;9210
	push af			;9213
	ld h,d			;9214
	ld e,a			;9215
	ld (hl),d		;9216
	nop			;9217
	add a,e			;9218
	ld e,a			;9219
	add a,h			;921a
	sub b			;921b
	add a,e			;921c
	ld e,a			;921d
	add a,e			;921e
	jr nc,l91a4h		;921f
	ld h,b			;9221
	add a,e			;9222
	nop			;9223
	add a,d			;9224
	ld h,b			;9225
	add a,e			;9226
	rst 28h			;9227
l9228h:
	add a,h			;9228
	sub b			;9229
	add a,l			;922a
	jr nc,l9228h		;922b
	rlca			;922d
	push af			;922e
	ld b,d			;922f
	ld e,a			;9230
	ld d,d			;9231
	nop			;9232
	ld h,e			;9233
	ld e,a			;9234
	ld h,h			;9235
	sub b			;9236
	ld h,e			;9237
l9238h:
	ld e,a			;9238
	ld h,e			;9239
	jr nc,l929fh		;923a
l923ch:
	ld h,b			;923c
	ld h,e			;923d
	nop			;923e
	ld h,d			;923f
	ld h,b			;9240
	ld h,e			;9241
	rst 28h			;9242
l9243h:
	ld h,h			;9243
	sub b			;9244
	ld h,l			;9245
	jr nc,l9243h		;9246
	inc bc			;9248
	push af			;9249
	ld (bc),a		;924a
	ld e,a			;924b
	ld (de),a		;924c
	nop			;924d
	inc de			;924e
	ld e,a			;924f
	inc d			;9250
	sub b			;9251
	inc de			;9252
	ld e,a			;9253
	inc bc			;9254
	jr nc,l925ah		;9255
	ld h,b			;9257
	inc bc			;9258
	nop			;9259
l925ah:
	ld (bc),a		;925a
	ld h,b			;925b
	inc bc			;925c
	rst 28h			;925d
	inc b			;925e
	sub b			;925f
	rst 38h			;9260
	cp 002h			;9261
	ret m			;9263
	inc hl			;9264
	jp po,0f501h		;9265
	ld (hl),d		;9268
	ld e,a			;9269
	sub d			;926a
	nop			;926b
	jp 0c45fh		;926c
	sub b			;926f
	jp 0c35fh		;9270
	jr nc,l9238h		;9273
	ld h,b			;9275
	jp 0c200h		;9276
	ld h,b			;9279
	jp 0c4efh		;927a
	sub b			;927d
	push bc			;927e
	jr nc,$-3		;927f
	rlca			;9281
	push af			;9282
l9283h:
	ld b,d			;9283
	ld e,a			;9284
	ld d,d			;9285
	nop			;9286
	ld h,e			;9287
	ld e,a			;9288
	ld h,h			;9289
	sub b			;928a
	ld h,e			;928b
	ld e,a			;928c
	ld h,e			;928d
	jr nc,l92f3h		;928e
	ld h,b			;9290
	ld h,e			;9291
	nop			;9292
	ld h,d			;9293
	ld h,b			;9294
	ld h,e			;9295
l9296h:
	rst 28h			;9296
l9297h:
	ld h,h			;9297
	sub b			;9298
	ld h,l			;9299
	jr nc,l9297h		;929a
	inc bc			;929c
	push af			;929d
	ld (bc),a		;929e
l929fh:
	ld e,a			;929f
	ld (de),a		;92a0
	nop			;92a1
	inc de			;92a2
l92a3h:
	ld e,a			;92a3
	inc d			;92a4
l92a5h:
	sub b			;92a5
l92a6h:
	inc de			;92a6
	ld e,a			;92a7
	inc bc			;92a8
	jr nc,l92aeh		;92a9
	ld h,b			;92ab
	inc bc			;92ac
	nop			;92ad
l92aeh:
	ld (bc),a		;92ae
	ld h,b			;92af
	inc bc			;92b0
	rst 28h			;92b1
	inc b			;92b2
	sub b			;92b3
	dec b			;92b4
	jr nc,$+1		;92b5
	cp 002h			;92b7
	ret po			;92b9
	inc bc			;92ba
	jp po,0c201h		;92bb
	djnz l9283h		;92be
	ld b,b			;92c0
	add a,020h		;92c1
	ret z			;92c3
	inc hl			;92c4
	call nz,0c520h		;92c5
	ld (hl),b		;92c8
	rst 0			;92c9
	or b			;92ca
	call nz,0c780h		;92cb
	jr nc,l9296h		;92ce
	add a,b			;92d0
	add a,080h		;92d1
	ret z			;92d3
	nop			;92d4
	push af			;92d5
	add a,0a0h		;92d6
	ret z			;92d8
	nop			;92d9
	push bc			;92da
	jr nc,l92a6h		;92db
	jr nz,l92a3h		;92dd
	ld d,h			;92df
	add a,021h		;92e0
	ret			;92e2
	ld h,b			;92e3
	add a,020h		;92e4
	ei			;92e6
	ld (bc),a		;92e7
	or a			;92e8
	jr nz,l929fh		;92e9
	djnz l92a5h		;92eb
	ld b,e			;92ed
	dec h			;92ee
	ld h,b			;92ef
	cp c			;92f0
	ld h,b			;92f1
	or h			;92f2
l92f3h:
	nop			;92f3
	or l			;92f4
	ld h,b			;92f5
l92f6h:
	or e			;92f6
	jr nc,$-59		;92f7
	jr nc,$-58		;92f9
	ld b,b			;92fb
	push bc			;92fc
	ld d,b			;92fd
	jp 0c562h		;92fe
	nop			;9301
	and h			;9302
	ld b,b			;9303
	add a,e			;9304
	add a,b			;9305
	sub h			;9306
	nop			;9307
l9308h:
	sub l			;9308
	ld b,b			;9309
	sub e			;930a
	add a,b			;930b
l930ch:
	sub d			;930c
	ret nz			;930d
	ld sp,hl		;930e
l930fh:
	sub a			;930f
	sub e			;9310
	rst 30h			;9311
l9312h:
	inc bc			;9312
	ld sp,hl		;9313
	sub a			;9314
l9315h:
	sub e			;9315
	rst 30h			;9316
	dec b			;9317
	ld sp,hl		;9318
	sub a			;9319
	sub e			;931a
	rst 30h			;931b
	ex af,af'		;931c
	ld sp,hl		;931d
	sub a			;931e
	sub e			;931f
	rst 38h			;9320
	cp 002h			;9321
	ret m			;9323
	jr z,l9308h		;9324
	ld bc,010c1h		;9326
	jp 0c640h		;9329
	jr nz,l92f6h		;932c
	inc hl			;932e
	call nz,0c520h		;932f
l9332h:
	ld (hl),b		;9332
	pop bc			;9333
	or b			;9334
	jp nz,0c380h		;9335
	jr nc,l9332h		;9338
	ld h,h			;933a
	jp 0c680h		;933b
	add a,b			;933e
	jp 0f500h		;933f
	jp 0c8a0h		;9342
	nop			;9345
	push bc			;9346
	jr nc,l9312h		;9347
	jr nz,l930fh		;9349
	ld d,h			;934b
	ret m			;934c
	jr z,l9315h		;934d
	ld hl,060c9h		;934f
	add a,020h		;9352
	ei			;9354
	ld (bc),a		;9355
	or d			;9356
	jr nz,l930ch		;9357
	djnz l930fh		;9359
	ld b,e			;935b
	dec h			;935c
	ld h,b			;935d
	or l			;935e
	ld h,b			;935f
	or h			;9360
	nop			;9361
l9362h:
	or l			;9362
l9363h:
	ld h,b			;9363
	ret m			;9364
	ld h,h			;9365
	or e			;9366
	jr nc,$-60		;9367
	jr nc,l9363h		;9369
	jr z,$-58		;936b
	ld b,b			;936d
	push bc			;936e
	ld d,b			;936f
	jp 0c562h		;9370
	nop			;9373
l9374h:
	and h			;9374
	ld b,b			;9375
	add a,e			;9376
	add a,b			;9377
	sub h			;9378
	nop			;9379
	sub l			;937a
	ld b,b			;937b
	sub e			;937c
	add a,b			;937d
	sub d			;937e
	ret nz			;937f
	rst 30h			;9380
	ld (bc),a		;9381
	ld sp,hl		;9382
	sub a			;9383
	sub e			;9384
	rst 30h			;9385
l9386h:
	ld b,0f9h		;9386
	sub a			;9388
	sub e			;9389
	rst 30h			;938a
	ex af,af'		;938b
	ld sp,hl		;938c
	sub a			;938d
	sub e			;938e
	rst 30h			;938f
	ld a,(bc)		;9390
	ld sp,hl		;9391
	sub a			;9392
	sub e			;9393
	ret po			;9394
	inc bc			;9395
	rst 38h			;9396
	and d			;9397
	jr nz,$-91		;9398
	djnz $-90		;939a
	ld b,e			;939c
	and l			;939d
	ld h,b			;939e
	and l			;939f
	ld h,b			;93a0
	and h			;93a1
	nop			;93a2
	and l			;93a3
	ld h,b			;93a4
	and e			;93a5
	jr nc,$-92		;93a6
	jr nc,$-90		;93a8
	ld b,b			;93aa
	and l			;93ab
	ld d,b			;93ac
	and (hl)		;93ad
	ld h,d			;93ae
	and a			;93af
	nop			;93b0
	xor b			;93b1
	ld b,b			;93b2
	xor c			;93b3
	add a,b			;93b4
	xor d			;93b5
	nop			;93b6
	xor e			;93b7
	ld b,b			;93b8
	xor h			;93b9
	add a,b			;93ba
	xor l			;93bb
	ret nz			;93bc
	jp m,002feh		;93bd
	ret po			;93c0
	ld (bc),a		;93c1
	xor 001h		;93c2
	jp po,05001h		;93c4
	ld b,b			;93c7
	ld d,b			;93c8
	ld h,b			;93c9
	ld b,b			;93ca
	ld b,b			;93cb
	ld b,b			;93cc
	add a,b			;93cd
	ld b,b			;93ce
l93cfh:
	ld h,b			;93cf
	ld b,b			;93d0
	ld b,b			;93d1
	ld b,b			;93d2
	jr nc,l93d5h		;93d3
l93d5h:
	ld h,b			;93d5
	nop			;93d6
	jr nc,l93d9h		;93d7
l93d9h:
	add a,b			;93d9
	ld b,b			;93da
	jr nc,l941dh		;93db
	ld h,b			;93dd
	jr nc,$+66		;93de
	jr nc,l9362h		;93e0
	jr nc,l9444h		;93e2
	jr nc,l9426h		;93e4
	jr nc,l9418h		;93e6
	ret po			;93e8
	inc bc			;93e9
	jp po,02001h		;93ea
	ld b,b			;93ed
	jr nz,$+98		;93ee
	jr nz,l9432h		;93f0
	jr nz,l9374h		;93f2
	jr nz,l9456h		;93f4
	jr nz,l9438h		;93f6
	jr nz,l942ah		;93f8
	ret po			;93fa
	inc bc			;93fb
	jp po,01001h		;93fc
	ld b,b			;93ff
	djnz l9462h		;9400
	djnz l9444h		;9402
	djnz l9386h		;9404
	djnz l9468h		;9406
	djnz $+66		;9408
	djnz l943ch		;940a
	ret po			;940c
	inc bc			;940d
	jp po,00001h		;940e
	ld b,b			;9411
	nop			;9412
	ld h,b			;9413
	nop			;9414
	ld b,b			;9415
	nop			;9416
	add a,b			;9417
l9418h:
	nop			;9418
	ld h,b			;9419
	rst 38h			;941a
	cp 002h			;941b
l941dh:
	ret m			;941d
	dec c			;941e
	jp po,l9001h		;941f
	ld b,b			;9422
	sub b			;9423
	ld h,b			;9424
	add a,b			;9425
l9426h:
	ld b,b			;9426
	add a,b			;9427
	add a,b			;9428
	add a,b			;9429
l942ah:
	ld h,b			;942a
	add a,b			;942b
	ld b,b			;942c
	ld (hl),b		;942d
	jr nc,l9430h		;942e
l9430h:
	ld h,b			;9430
	nop			;9431
l9432h:
	ld b,b			;9432
	nop			;9433
	add a,b			;9434
	ld d,b			;9435
	ld b,b			;9436
	ld b,b			;9437
l9438h:
	ld h,b			;9438
	ld b,b			;9439
	ld b,b			;943a
	ld b,b			;943b
l943ch:
	add a,b			;943c
	ld b,b			;943d
	ld h,b			;943e
	ld b,b			;943f
	ld b,b			;9440
	jr nc,l9473h		;9441
	ret po			;9443
l9444h:
	inc bc			;9444
	jp po,02001h		;9445
	ld b,b			;9448
	jr nz,l94abh		;9449
	jr nz,l948dh		;944b
	jr nz,l93cfh		;944d
	jr nz,l94b1h		;944f
	jr nz,l9493h		;9451
	jr nz,l9485h		;9453
	ret po			;9455
l9456h:
	inc bc			;9456
	jp po,00001h		;9457
	ld b,b			;945a
	nop			;945b
	ld h,b			;945c
	nop			;945d
	ld b,b			;945e
	nop			;945f
l9460h:
	add a,b			;9460
	nop			;9461
l9462h:
	ld h,b			;9462
	nop			;9463
	ld b,b			;9464
	nop			;9465
	jr nc,l9460h		;9466
l9468h:
	add hl,de		;9468
	ret po			;9469
	inc bc			;946a
	jp po,00001h		;946b
	ld b,b			;946e
	nop			;946f
	ld h,b			;9470
	nop			;9471
	ld b,b			;9472
l9473h:
	nop			;9473
	add a,b			;9474
	nop			;9475
	ld h,b			;9476
	nop			;9477
	ld b,b			;9478
	nop			;9479
	jr nc,$+1		;947a
	cp 001h			;947c
	pop af			;947e
	ld h,d			;947f
	jp (hl)			;9480
	add hl,bc		;9481
	jp pe,0d002h		;9482
l9485h:
	ld c,a			;9485
	ld c,a			;9486
	add a,(iy-06ch)		;9487
	cp 001h			;948a
	pop af			;948c
l948dh:
	ld h,d			;948d
	jp (hl)			;948e
	add hl,bc		;948f
	jp pe,0d002h		;9490
l9493h:
	ld l,a			;9493
	ld l,a			;9494
	defb 0fdh,094h ;sub iyh	;9495
	sub h			;9497
	cp 001h			;9498
	pop af			;949a
	ld h,d			;949b
	jp (hl)			;949c
	add hl,bc		;949d
	jp pe,0d002h		;949e
	cpl			;94a1
	cpl			;94a2
	defb 0fdh,0a2h,094h ;illegal sequence	;94a3
	cp 001h			;94a6
	ret m			;94a8
	dec b			;94a9
	pop af			;94aa
l94abh:
	ld h,e			;94ab
	jp (hl)			;94ac
	add hl,bc		;94ad
	jp pe,0d201h		;94ae
l94b1h:
	sbc a,a			;94b1
	defb 0fdh,0b1h,094h ;illegal sequence	;94b2
	cp 001h			;94b5
	ret m			;94b7
	dec b			;94b8
	pop af			;94b9
	ld h,e			;94ba
	jp (hl)			;94bb
	add hl,bc		;94bc
	jp pe,0d201h		;94bd
	ld c,a			;94c0
	defb 0fdh,0c0h,094h ;illegal sequence	;94c1
	cp 001h			;94c4
	ret m			;94c6
	dec b			;94c7
	pop af			;94c8
	ld h,e			;94c9
	jp (hl)			;94ca
	add hl,bc		;94cb
	jp pe,0d201h		;94cc
	cpl			;94cf
	defb 0fdh,0cfh,094h ;illegal sequence	;94d0
	cp 001h			;94d3
	ret m			;94d5
	dec b			;94d6
	pop af			;94d7
	ld (hl),d		;94d8
	jp (hl)			;94d9
	add hl,bc		;94da
	jp pe,0d102h		;94db
	cp a			;94de
	defb 0fdh,0deh,094h ;illegal sequence	;94df
	cp 001h			;94e2
	ret m			;94e4
	dec b			;94e5
	pop af			;94e6
	ld h,d			;94e7
	xor 001h		;94e8
	jp (hl)			;94ea
	add hl,bc		;94eb
	jp pe,0d101h		;94ec
	cp a			;94ef
	defb 0fdh,0efh,094h ;illegal sequence	;94f0
	cp 002h			;94f3
	jp po,0ee01h		;94f5
	inc bc			;94f8
	and h			;94f9
	add a,b			;94fa
	and h			;94fb
	ret nz			;94fc
	and l			;94fd
	nop			;94fe
	and l			;94ff
	add a,b			;9500
	and (hl)		;9501
l9502h:
	nop			;9502
	and (hl)		;9503
	add a,b			;9504
	and a			;9505
	nop			;9506
	and a			;9507
	add a,b			;9508
	push af			;9509
	rst 30h			;950a
	ld (bc),a		;950b
	ld sp,hl		;950c
	in a,(096h)		;950d
	ei			;950f
	inc bc			;9510
	rst 30h			;9511
	dec b			;9512
	ld sp,hl		;9513
	in a,(096h)		;9514
	rst 30h			;9516
	ex af,af'		;9517
	ld sp,hl		;9518
	in a,(096h)		;9519
	rst 30h			;951b
	ld a,(bc)		;951c
	ld sp,hl		;951d
	in a,(096h)		;951e
	rst 30h			;9520
	inc c			;9521
	ld sp,hl		;9522
	in a,(096h)		;9523
	rst 38h			;9525
	cp 002h			;9526
	ret po			;9528
	ld bc,001e2h		;9529
	and h			;952c
	add a,b			;952d
	and h			;952e
	ret nz			;952f
	and l			;9530
	nop			;9531
	and l			;9532
	add a,b			;9533
	and (hl)		;9534
	nop			;9535
	and (hl)		;9536
	add a,b			;9537
	and a			;9538
	nop			;9539
	and a			;953a
	add a,b			;953b
	jp po,06002h		;953c
	rlca			;953f
	call p,00908h		;9540
	ld a,(bc)		;9543
	dec bc			;9544
	inc c			;9545
	dec c			;9546
	ld c,00fh		;9547
	djnz l955ch		;9549
	ld (de),a		;954b
	inc de			;954c
	inc d			;954d
	dec d			;954e
	ld d,017h		;954f
	jr l956ch		;9551
	ld a,(de)		;9553
	dec de			;9554
	inc e			;9555
	dec e			;9556
	or 050h			;9557
	ld e,0f4h		;9559
	rra			;955b
l955ch:
	jr nz,$+35		;955c
	ld (02423h),hl		;955e
	dec h			;9561
	ld h,027h		;9562
	jr z,$+43		;9564
	ld hl,(02c2bh)		;9566
	dec l			;9569
	ld l,02fh		;956a
l956ch:
	jr nc,$+51		;956c
	ld (03433h),a		;956e
	dec (hl)		;9571
	ld (hl),0f6h		;9572
	ld b,b			;9574
	scf			;9575
	call p,03938h		;9576
	ld a,(03c3bh)		;9579
	dec a			;957c
	ccf			;957d
	or 030h			;957e
	ld b,c			;9580
	jr nz,$+68		;9581
	djnz $+69		;9583
	nop			;9585
	ld b,h			;9586
	ret po			;9587
	ld a,(bc)		;9588
	rst 38h			;9589
	cp 002h			;958a
	pop hl			;958c
	ld bc,013e4h		;958d
	ex af,af'		;9590
	call po,00b1dh		;9591
	call po,00c1fh		;9594
	call po,00b1eh		;9597
	call po,00a1dh		;959a
	call po,00a1ch		;959d
	pop hl			;95a0
	inc bc			;95a1
	call po,00b02h		;95a2
	call po,00a03h		;95a5
	call po,00904h		;95a8
	call po,00a05h		;95ab
	call po,00906h		;95ae
	call po,00907h		;95b1
	call po,00909h		;95b4
	call po,0090bh		;95b7
	call po,0090ch		;95ba
	call po,0090dh		;95bd
	call po,0090eh		;95c0
	call po,0090fh		;95c3
	call po,00910h		;95c6
	call po,00911h		;95c9
	call po,00912h		;95cc
	call po,00913h		;95cf
	call po,00914h		;95d2
	call po,00915h		;95d5
	call po,00916h		;95d8
	call po,00917h		;95db
	call po,00918h		;95de
	call po,00919h		;95e1
	call po,0091ah		;95e4
	call po,0091bh		;95e7
	call po,0091dh		;95ea
	call po,0091fh		;95ed
	add hl,bc		;95f0
	ex af,af'		;95f1
	rlca			;95f2
	ld b,005h		;95f3
	inc b			;95f5
	inc bc			;95f6
	inc bc			;95f7
	ld (bc),a		;95f8
	ld (bc),a		;95f9
	ld bc,00001h		;95fa
	nop			;95fd
	ret po			;95fe
	rrca			;95ff
	rst 38h			;9600
	cp 002h			;9601
l9603h:
	jp po,0f801h		;9603
	ld h,b			;9606
	jp 0c300h		;9607
	ld b,b			;960a
	jp 0c480h		;960b
	nop			;960e
	call nz,0c580h		;960f
	nop			;9612
	push bc			;9613
	add a,b			;9614
	add a,000h		;9615
	jp nz,0c280h		;9617
	and b			;961a
	jp nz,0c3d0h		;961b
	nop			;961e
	jp 0c340h		;961f
	add a,b			;9622
	jp 0c4c0h		;9623
	nop			;9626
	call nz,0f940h		;9627
	ld (bc),a		;962a
	sub a			;962b
	ret po			;962c
	inc d			;962d
	rst 38h			;962e
	cp 002h			;962f
	jp po,0f801h		;9631
	ld h,b			;9634
	jp 0c380h		;9635
	ret nz			;9638
	call nz,0c400h		;9639
	add a,b			;963c
	push bc			;963d
	nop			;963e
	push bc			;963f
	add a,b			;9640
	add a,000h		;9641
	add a,080h		;9643
	jp nz,0c2c0h		;9645
	ret po			;9648
	jp 0c320h		;9649
	ld b,b			;964c
	jp 0c380h		;964d
	ret nz			;9650
	call nz,0c400h		;9651
	ld b,b			;9654
	ld sp,hl		;9655
	ld (bc),a		;9656
	sub a			;9657
	ret po			;9658
	dec d			;9659
	rst 38h			;965a
	cp 002h			;965b
	jp po,0f801h		;965d
	ld h,b			;9660
	call nz,0c480h		;9661
	ret nz			;9664
	push bc			;9665
	nop			;9666
	push bc			;9667
	add a,b			;9668
	add a,000h		;9669
	add a,080h		;966b
	rst 0			;966d
	nop			;966e
	rst 0			;966f
	add a,b			;9670
	ret m			;9671
	ld e,d			;9672
	push af			;9673
	ld sp,hl		;9674
	in a,(096h)		;9675
	ei			;9677
	inc bc			;9678
	rst 30h			;9679
	inc b			;967a
	ld sp,hl		;967b
	in a,(096h)		;967c
	rst 30h			;967e
	rlca			;967f
	ld sp,hl		;9680
	in a,(096h)		;9681
	rst 30h			;9683
	ld a,(bc)		;9684
	ld sp,hl		;9685
	in a,(096h)		;9686
	rst 30h			;9688
	inc c			;9689
	ld sp,hl		;968a
	in a,(096h)		;968b
	rst 38h			;968d
	cp 002h			;968e
	jp po,0f801h		;9690
	dec d			;9693
	call nz,0c480h		;9694
	ret nz			;9697
	push bc			;9698
	nop			;9699
	push bc			;969a
	add a,b			;969b
	add a,000h		;969c
	add a,080h		;969e
	rst 0			;96a0
	nop			;96a1
	rst 0			;96a2
l96a3h:
	add a,b			;96a3
	ld sp,hl		;96a4
	ld (bc),a		;96a5
	sub a			;96a6
	ret po			;96a7
	dec e			;96a8
	rst 38h			;96a9
	cp 002h			;96aa
	jp po,0ee01h		;96ac
	ex af,af'		;96af
	call nz,0c480h		;96b0
	ret nz			;96b3
	push bc			;96b4
	nop			;96b5
	push bc			;96b6
	add a,b			;96b7
	add a,000h		;96b8
	add a,080h		;96ba
	rst 0			;96bc
	nop			;96bd
	rst 0			;96be
	add a,b			;96bf
	push af			;96c0
	ld sp,hl		;96c1
	ld l,l			;96c2
	sub a			;96c3
	ei			;96c4
	inc bc			;96c5
	rst 30h			;96c6
	inc b			;96c7
	ld sp,hl		;96c8
	ld l,l			;96c9
	sub a			;96ca
	rst 30h			;96cb
	rlca			;96cc
	ld sp,hl		;96cd
	ld l,l			;96ce
	sub a			;96cf
	rst 30h			;96d0
	ld a,(bc)		;96d1
	ld sp,hl		;96d2
	ld l,l			;96d3
	sub a			;96d4
	rst 30h			;96d5
	inc c			;96d6
	ld sp,hl		;96d7
	ld l,l			;96d8
	sub a			;96d9
	rst 38h			;96da
	jp 0c300h		;96db
	jr nz,l96a3h		;96de
	ld h,b			;96e0
	jp 0c380h		;96e1
	ret nz			;96e4
	call nz,0c400h		;96e5
	ld b,b			;96e8
	call nz,0c480h		;96e9
	ret nz			;96ec
	push bc			;96ed
	nop			;96ee
	push bc			;96ef
	ld b,b			;96f0
	push bc			;96f1
	add a,b			;96f2
	push bc			;96f3
	ret nz			;96f4
	add a,000h		;96f5
	add a,040h		;96f7
	add a,080h		;96f9
	add a,0c0h		;96fb
	rst 0			;96fd
	nop			;96fe
	rst 0			;96ff
	ld b,b			;9700
	jp m,002e2h		;9701
	call nz,0c480h		;9704
	ret nz			;9707
	push bc			;9708
	nop			;9709
	push bc			;970a
	ld b,b			;970b
	push bc			;970c
	add a,b			;970d
	push bc			;970e
	ret nz			;970f
	add a,000h		;9710
	add a,040h		;9712
	add a,080h		;9714
	add a,0c0h		;9716
	rst 0			;9718
	nop			;9719
	rst 0			;971a
	ld b,b			;971b
	rst 0			;971c
	add a,b			;971d
	rst 0			;971e
	ret nz			;971f
	ret z			;9720
	nop			;9721
	ret z			;9722
	ld b,b			;9723
	ret z			;9724
	add a,b			;9725
	ret z			;9726
	ret nz			;9727
	ret			;9728
	nop			;9729
	ret			;972a
	ld b,b			;972b
	ret			;972c
	add a,b			;972d
	ret			;972e
	ret nz			;972f
l9730h:
	jp z,0ca00h		;9730
	ld b,b			;9733
	jp z,0ca80h		;9734
	ret nz			;9737
	rlc b			;9738
	bit 0,b			;973a
	res 0,b			;973c
l973eh:
	set 0,b			;973e
	call z,0cc00h		;9740
	ld b,b			;9743
	call z,0cc80h		;9744
	ret nz			;9747
	call 0cd00h		;9748
	ld b,b			;974b
	call 0cd80h		;974c
	ret nz			;974f
	adc a,000h		;9750
	adc a,040h		;9752
	adc a,080h		;9754
	adc a,0a0h		;9756
	adc a,0c0h		;9758
	adc a,0e0h		;975a
	rst 8			;975c
	nop			;975d
	rst 8			;975e
	jr nz,l9730h		;975f
	ld b,b			;9761
	xor a			;9762
	ld h,b			;9763
	adc a,a			;9764
	add a,b			;9765
	ld l,a			;9766
	and b			;9767
	ld c,a			;9768
	ret nz			;9769
	cpl			;976a
	ret p			;976b
	jp m,l80c1h		;976c
	pop bc			;976f
	sub b			;9770
	pop bc			;9771
	or b			;9772
	pop bc			;9773
	ret nz			;9774
	pop bc			;9775
	ret po			;9776
	jp nz,0c200h		;9777
	jr nz,l973eh		;977a
	ld b,b			;977c
	jp nz,0c260h		;977d
	add a,b			;9780
	jp nz,0c2a0h		;9781
	ret nz			;9784
	jp nz,0c3e0h		;9785
	nop			;9788
	jp 0c320h		;9789
	ld b,b			;978c
	jp 0c360h		;978d
	add a,b			;9790
	jp 0faa0h		;9791
	cp 002h			;9794
	ret po			;9796
	ld bc,001e2h		;9797
	push af			;979a
	and c			;979b
	add a,b			;979c
	and l			;979d
	nop			;979e
	and (hl)		;979f
	nop			;97a0
	and l			;97a1
	nop			;97a2
	and (hl)		;97a3
	nop			;97a4
	and a			;97a5
	nop			;97a6
	xor b			;97a7
	nop			;97a8
	xor c			;97a9
	nop			;97aa
	xor d			;97ab
	nop			;97ac
	and c			;97ad
	or b			;97ae
	and e			;97af
	nop			;97b0
	and h			;97b1
	nop			;97b2
	and l			;97b3
	nop			;97b4
	and (hl)		;97b5
	nop			;97b6
	and a			;97b7
	nop			;97b8
	xor b			;97b9
	nop			;97ba
	xor c			;97bb
	nop			;97bc
	xor d			;97bd
	nop			;97be
	xor e			;97bf
	nop			;97c0
	xor h			;97c1
	nop			;97c2
	xor l			;97c3
	nop			;97c4
	xor (hl)		;97c5
	nop			;97c6
	xor a			;97c7
	nop			;97c8
	ei			;97c9
	ld (bc),a		;97ca
	and d			;97cb
	add a,b			;97cc
	and l			;97cd
	nop			;97ce
	and (hl)		;97cf
	nop			;97d0
	and a			;97d1
	nop			;97d2
	and l			;97d3
	nop			;97d4
	and h			;97d5
	nop			;97d6
	and (hl)		;97d7
	nop			;97d8
	and a			;97d9
	nop			;97da
	and c			;97db
	add a,b			;97dc
	and h			;97dd
	nop			;97de
	and l			;97df
	nop			;97e0
	and e			;97e1
	add a,b			;97e2
	and h			;97e3
	add a,b			;97e4
	and l			;97e5
	nop			;97e6
	sub h			;97e7
	ld b,b			;97e8
	add a,e			;97e9
	add a,b			;97ea
	ld sp,hl		;97eb
	ld c,(hl)		;97ec
	sbc a,d			;97ed
	rst 30h			;97ee
	ld (bc),a		;97ef
	ld sp,hl		;97f0
	ld c,(hl)		;97f1
	sbc a,d			;97f2
	rst 30h			;97f3
	inc b			;97f4
	ld sp,hl		;97f5
	ld c,(hl)		;97f6
	sbc a,d			;97f7
	rst 30h			;97f8
	ld b,0f9h		;97f9
	ld c,(hl)		;97fb
	sbc a,d			;97fc
	rst 30h			;97fd
	add hl,bc		;97fe
	ld sp,hl		;97ff
	ld c,(hl)		;9800
	sbc a,d			;9801
	rst 38h			;9802
	cp 002h			;9803
	jp po,0f501h		;9805
	and c			;9808
	add a,b			;9809
	and d			;980a
	add a,b			;980b
	and e			;980c
	nop			;980d
	and d			;980e
	add a,b			;980f
	and e			;9810
	nop			;9811
	and e			;9812
	add a,b			;9813
	and c			;9814
l9815h:
	or b			;9815
	and d			;9816
	add a,b			;9817
	and d			;9818
	nop			;9819
	and d			;981a
	add a,b			;981b
	and e			;981c
	nop			;981d
	and e			;981e
	add a,b			;981f
	and h			;9820
	nop			;9821
	and h			;9822
	add a,b			;9823
	and l			;9824
	nop			;9825
	and l			;9826
	add a,b			;9827
	and (hl)		;9828
	nop			;9829
	and (hl)		;982a
	add a,b			;982b
	and a			;982c
	nop			;982d
	and a			;982e
	add a,b			;982f
	ei			;9830
	ld (bc),a		;9831
	push af			;9832
	ld (hl),c		;9833
	add a,b			;9834
	ld (hl),d		;9835
	add a,b			;9836
	ld (hl),e		;9837
	nop			;9838
	ld (hl),e		;9839
	add a,b			;983a
	ld (hl),c		;983b
	or b			;983c
	ld (hl),c		;983d
	add a,b			;983e
	ld (hl),d		;983f
	nop			;9840
	ld (hl),d		;9841
	add a,b			;9842
	ld (hl),e		;9843
	nop			;9844
	ld (hl),e		;9845
	add a,b			;9846
	ei			;9847
	ld (bc),a		;9848
	ld h,c			;9849
	add a,b			;984a
	ld h,c			;984b
	and b			;984c
	ld h,c			;984d
	ret nz			;984e
	jp po,06103h		;984f
	ret po			;9852
	ld h,d			;9853
	nop			;9854
	ld h,d			;9855
	jr nz,$+100		;9856
	ld b,b			;9858
	ld h,d			;9859
	ld h,b			;985a
	ld h,d			;985b
	add a,b			;985c
	ld h,d			;985d
	and b			;985e
	ld h,d			;985f
	ret nz			;9860
	ld h,d			;9861
	ret po			;9862
	ld h,e			;9863
	nop			;9864
	ld h,e			;9865
	jr nz,$+101		;9866
	ld b,b			;9868
	ld h,e			;9869
	ld h,b			;986a
	ld h,e			;986b
	add a,b			;986c
	ld h,e			;986d
	ret nz			;986e
	ld h,h			;986f
	nop			;9870
	ld h,h			;9871
	ld b,b			;9872
	ld h,h			;9873
	add a,b			;9874
	ld h,h			;9875
	ret nz			;9876
	ld h,l			;9877
	nop			;9878
	ld h,l			;9879
	ld b,b			;987a
	ld h,l			;987b
	add a,b			;987c
	ld h,l			;987d
	ret nz			;987e
	ld h,(hl)		;987f
	nop			;9880
	ld h,(hl)		;9881
	ld b,b			;9882
	ld h,(hl)		;9883
	add a,b			;9884
	ld h,(hl)		;9885
	ret nz			;9886
	ld h,a			;9887
	nop			;9888
	ld h,a			;9889
	ld b,b			;988a
	ld h,a			;988b
	add a,b			;988c
	ld h,a			;988d
	ret nz			;988e
	ld e,b			;988f
	nop			;9890
	ld c,b			;9891
	ld b,b			;9892
	jr c,l9815h		;9893
	jr z,$-62		;9895
	add hl,de		;9897
	nop			;9898
	ret po			;9899
	inc c			;989a
	rst 38h			;989b
	cp 002h			;989c
	push af			;989e
	ex (sp),hl		;989f
	ld bc,01fe4h		;98a0
	call nz,06580h		;98a3
	nop			;98a6
	pop hl			;98a7
	ld bc,01de4h		;98a8
	add hl,bc		;98ab
	add hl,bc		;98ac
	call po,0071fh		;98ad
	dec b			;98b0
	ex (sp),hl		;98b1
	ld bc,l80c4h		;98b2
	ld h,e			;98b5
	nop			;98b6
	pop hl			;98b7
	ld (bc),a		;98b8
	call po,0091bh		;98b9
	call po,0091ch		;98bc
	call po,0091dh		;98bf
	pop hl			;98c2
	ld bc,01ee4h		;98c3
	add hl,bc		;98c6
	ex af,af'		;98c7
	rlca			;98c8
	call po,0061fh		;98c9
	dec b			;98cc
	inc b			;98cd
	ei			;98ce
	ld (bc),a		;98cf
	push af			;98d0
	ex (sp),hl		;98d1
	ld bc,01fe4h		;98d2
	and h			;98d5
	add a,b			;98d6
	dec (hl)		;98d7
	nop			;98d8
	pop hl			;98d9
	ld bc,01de4h		;98da
	ld b,0e4h		;98dd
	rra			;98df
	inc bc			;98e0
	ex (sp),hl		;98e1
	ld bc,l80a3h+1		;98e2
	inc sp			;98e5
	nop			;98e6
	pop hl			;98e7
	ld bc,01be4h		;98e8
	ld b,006h		;98eb
	call po,0051ch		;98ed
	dec b			;98f0
	ei			;98f1
	ld (bc),a		;98f2
	ex (sp),hl		;98f3
	ld bc,01fe4h		;98f4
	and h			;98f7
	add a,b			;98f8
	ld h,l			;98f9
	nop			;98fa
	pop hl			;98fb
	ld (bc),a		;98fc
	call po,0091dh		;98fd
	pop hl			;9900
	ld b,009h		;9901
l9903h:
	call po,0091eh		;9903
	add hl,bc		;9906
	pop hl			;9907
	rlca			;9908
	call po,0091fh		;9909
	add hl,bc		;990c
	add hl,bc		;990d
	add hl,bc		;990e
	add hl,bc		;990f
	ex af,af'		;9910
	rlca			;9911
	ld b,005h		;9912
	inc b			;9914
	inc bc			;9915
	ld (bc),a		;9916
	ld bc,0e000h		;9917
	inc bc			;991a
	rst 38h			;991b
	cp 002h			;991c
	ret m			;991e
	jr z,l9903h		;991f
	ld bc,0c1f5h		;9921
	add a,b			;9924
	push bc			;9925
	nop			;9926
	add a,000h		;9927
	push bc			;9929
	nop			;992a
	add a,000h		;992b
	rst 0			;992d
	nop			;992e
	ld sp,hl		;992f
	ret			;9930
	sbc a,d			;9931
	ret m			;9932
	ld e,d			;9933
	ei			;9934
	ld (bc),a		;9935
	or d			;9936
	add a,b			;9937
	or l			;9938
	nop			;9939
	or (hl)			;993a
	nop			;993b
	or a			;993c
	nop			;993d
	or l			;993e
	nop			;993f
	or h			;9940
	nop			;9941
	or (hl)			;9942
	nop			;9943
	or a			;9944
	nop			;9945
	ret m			;9946
	jr z,$-61		;9947
	add a,b			;9949
	call nz,0c500h		;994a
	nop			;994d
	jp 0c580h		;994e
	nop			;9951
	and h			;9952
	ld b,b			;9953
	add a,e			;9954
	add a,b			;9955
	ld sp,hl		;9956
	ld c,(hl)		;9957
	sbc a,d			;9958
	rst 30h			;9959
	ld (bc),a		;995a
	ld sp,hl		;995b
	ld c,(hl)		;995c
	sbc a,d			;995d
	rst 30h			;995e
	inc b			;995f
	ld sp,hl		;9960
	ld c,(hl)		;9961
	sbc a,d			;9962
	rst 30h			;9963
	ld b,0f9h		;9964
	ld c,(hl)		;9966
	sbc a,d			;9967
	rst 30h			;9968
	add hl,bc		;9969
	ld sp,hl		;996a
	ld c,(hl)		;996b
	sbc a,d			;996c
	ret po			;996d
	ex af,af'		;996e
	rst 38h			;996f
	cp 002h			;9970
	ret m			;9972
	inc c			;9973
	jp po,0f501h		;9974
	pop bc			;9977
	add a,b			;9978
	push bc			;9979
	nop			;997a
	add a,000h		;997b
	push bc			;997d
	nop			;997e
	add a,000h		;997f
	rst 0			;9981
	nop			;9982
	ld sp,hl		;9983
	ret			;9984
	sbc a,d			;9985
	ei			;9986
	ld (bc),a		;9987
	ld sp,hl		;9988
	and 09ah		;9989
	add a,000h		;998b
	call nz,0c580h		;998d
	add a,b			;9990
	push bc			;9991
	nop			;9992
	or h			;9993
	nop			;9994
	or l			;9995
	add a,b			;9996
	and h			;9997
	add a,b			;9998
	sub e			;9999
	nop			;999a
	add a,e			;999b
	add a,b			;999c
	ld sp,hl		;999d
	ld c,(hl)		;999e
	sbc a,d			;999f
	rst 30h			;99a0
	ld (bc),a		;99a1
	ld sp,hl		;99a2
	ld c,(hl)		;99a3
	sbc a,d			;99a4
	rst 30h			;99a5
	inc b			;99a6
	ld sp,hl		;99a7
	ld c,(hl)		;99a8
	sbc a,d			;99a9
	rst 30h			;99aa
	ld b,0f9h		;99ab
	ld c,(hl)		;99ad
	sbc a,d			;99ae
	rst 30h			;99af
	add hl,bc		;99b0
	ld sp,hl		;99b1
	ld c,(hl)		;99b2
	sbc a,d			;99b3
	ret po			;99b4
	ld (bc),a		;99b5
	rst 38h			;99b6
	cp 002h			;99b7
	ret m			;99b9
	ld h,b			;99ba
	jp po,0f501h		;99bb
	pop bc			;99be
	add a,b			;99bf
	push bc			;99c0
	nop			;99c1
	add a,000h		;99c2
	push bc			;99c4
	nop			;99c5
	add a,000h		;99c6
	rst 0			;99c8
	nop			;99c9
	ret z			;99ca
	nop			;99cb
	ret			;99cc
	nop			;99cd
	jp z,0f900h		;99ce
	ret			;99d1
	sbc a,d			;99d2
	ei			;99d3
	ld (bc),a		;99d4
	ld sp,hl		;99d5
	and 09ah		;99d6
	call nz,0c580h		;99d8
	nop			;99db
	or h			;99dc
	nop			;99dd
	and h			;99de
	add a,b			;99df
	sub e			;99e0
	nop			;99e1
	ld sp,hl		;99e2
	ld c,(hl)		;99e3
	sbc a,d			;99e4
	rst 30h			;99e5
	ld (bc),a		;99e6
	ld sp,hl		;99e7
	ld c,(hl)		;99e8
	sbc a,d			;99e9
	rst 30h			;99ea
	inc b			;99eb
	ld sp,hl		;99ec
	ld c,(hl)		;99ed
	sbc a,d			;99ee
	rst 30h			;99ef
	ld b,0f9h		;99f0
	ld c,(hl)		;99f2
	sbc a,d			;99f3
	rst 30h			;99f4
	add hl,bc		;99f5
	ld sp,hl		;99f6
	ld c,(hl)		;99f7
	sbc a,d			;99f8
	rst 38h			;99f9
	cp 002h			;99fa
	jp po,0f803h		;99fc
	ld h,b			;99ff
	jp nz,0c280h		;9a00
	and b			;9a03
	jp nz,0c3d0h		;9a04
	nop			;9a07
	jp 0c340h		;9a08
	add a,b			;9a0b
	jp 0c2c0h		;9a0c
	add a,b			;9a0f
	jp nz,0c2a0h		;9a10
	ret nc			;9a13
	jp 0c300h		;9a14
	ld b,b			;9a17
	jp 0c380h		;9a18
	ret nz			;9a1b
	call nz,0c400h		;9a1c
	ld b,b			;9a1f
	ld sp,hl		;9a20
	ld l,l			;9a21
	sbc a,d			;9a22
	rst 38h			;9a23
	cp 002h			;9a24
	jp po,0f803h		;9a26
	ld h,b			;9a29
	jp nz,0c2c0h		;9a2a
	ret po			;9a2d
	jp 0c320h		;9a2e
	ld b,b			;9a31
	jp 0c380h		;9a32
	ret nz			;9a35
	call nz,0c200h		;9a36
	ret nz			;9a39
	jp nz,0c3e0h		;9a3a
	jr nz,$-59		;9a3d
	ld b,b			;9a3f
	jp 0c380h		;9a40
	ret nz			;9a43
	call nz,0c400h		;9a44
	ld b,b			;9a47
	ld sp,hl		;9a48
	ld l,l			;9a49
	sbc a,d			;9a4a
	ret po			;9a4b
	inc bc			;9a4c
	rst 38h			;9a4d
	jp po,09401h		;9a4e
	nop			;9a51
	sub h			;9a52
	ld b,b			;9a53
	sub h			;9a54
	add a,b			;9a55
	sub h			;9a56
	ret nz			;9a57
	jp po,l9502h		;9a58
	nop			;9a5b
	sub l			;9a5c
	ld b,b			;9a5d
	sub l			;9a5e
	add a,b			;9a5f
	sub l			;9a60
	ret nz			;9a61
	jp po,l9603h		;9a62
	nop			;9a65
	sub (hl)		;9a66
	ld b,b			;9a67
	sub (hl)		;9a68
	add a,b			;9a69
	sub (hl)		;9a6a
	ret nz			;9a6b
	jp m,l80c4h		;9a6c
	call nz,0c5c0h		;9a6f
	nop			;9a72
	push bc			;9a73
	ld b,b			;9a74
	push bc			;9a75
	add a,b			;9a76
	push bc			;9a77
	ret nz			;9a78
	add a,000h		;9a79
	add a,040h		;9a7b
	add a,080h		;9a7d
	add a,0c0h		;9a7f
	rst 0			;9a81
	nop			;9a82
	rst 0			;9a83
	ld b,b			;9a84
	rst 0			;9a85
	add a,b			;9a86
	rst 0			;9a87
	ret nz			;9a88
	ret z			;9a89
	nop			;9a8a
	ret z			;9a8b
	ld b,b			;9a8c
	ret z			;9a8d
	add a,b			;9a8e
	ret z			;9a8f
	ret nz			;9a90
	ret			;9a91
	nop			;9a92
	ret			;9a93
	ld b,b			;9a94
	ret			;9a95
	add a,b			;9a96
	ret			;9a97
	ret nz			;9a98
	jp z,0ca00h		;9a99
	ld b,b			;9a9c
	jp z,0ca80h		;9a9d
	ret nz			;9aa0
l9aa1h:
	rlc b			;9aa1
	bit 0,b			;9aa3
	res 0,b			;9aa5
	set 0,b			;9aa7
	call z,0bc00h		;9aa9
	ld b,b			;9aac
	xor h			;9aad
	add a,b			;9aae
	sbc a,h			;9aaf
	ret nz			;9ab0
	adc a,l			;9ab1
	nop			;9ab2
	ld a,l			;9ab3
	ld b,b			;9ab4
	ld l,l			;9ab5
	add a,b			;9ab6
	ld e,l			;9ab7
	ret nz			;9ab8
	ld c,(hl)		;9ab9
	nop			;9aba
	ld a,040h		;9abb
	ld l,080h		;9abd
	ld e,0a0h		;9abf
	ld c,0c0h		;9ac1
	ld c,0e0h		;9ac3
	rrca			;9ac5
	nop			;9ac6
	jp m,0c1ffh		;9ac7
	or b			;9aca
	jp 0c400h		;9acb
	nop			;9ace
	push bc			;9acf
	nop			;9ad0
	add a,000h		;9ad1
	rst 0			;9ad3
	nop			;9ad4
	ret z			;9ad5
	nop			;9ad6
	ret			;9ad7
	nop			;9ad8
	jp z,0cb00h		;9ad9
	nop			;9adc
	call z,0cd00h		;9add
	nop			;9ae0
	adc a,000h		;9ae1
	rst 8			;9ae3
	nop			;9ae4
	jp m,0000fh		;9ae5
	or d			;9ae8
	add a,b			;9ae9
	or l			;9aea
	nop			;9aeb
	or (hl)			;9aec
	nop			;9aed
	or a			;9aee
	nop			;9aef
	or l			;9af0
	nop			;9af1
	or h			;9af2
	nop			;9af3
	or (hl)			;9af4
	nop			;9af5
	jp nz,0c480h		;9af6
	nop			;9af9
	push bc			;9afa
	nop			;9afb
	jp 0fa80h		;9afc
	rst 38h			;9aff
	inc d			;9b00
	sbc a,e			;9b01
	dec de			;9b02
	sbc a,e			;9b03
	jr z,l9aa1h		;9b04
	dec a			;9b06
	sbc a,e			;9b07
	ld d,(hl)		;9b08
	sbc a,e			;9b09
	ld l,e			;9b0a
	sbc a,e			;9b0b
	add a,h			;9b0c
	sbc a,e			;9b0d
	sbc a,l			;9b0e
	sbc a,e			;9b0f
	cp b			;9b10
	sbc a,e			;9b11
	push de			;9b12
	sbc a,e			;9b13
	pop hl			;9b14
	ld bc,000e4h		;9b15
	rlca			;9b18
	dec b			;9b19
	rst 38h			;9b1a
	ex (sp),hl		;9b1b
	ld bc,000e4h		;9b1c
	adc a,d			;9b1f
	nop			;9b20
	pop hl			;9b21
	inc b			;9b22
	ld b,005h		;9b23
	inc b			;9b25
	inc bc			;9b26
	rst 38h			;9b27
	pop hl			;9b28
	ld bc,014e4h		;9b29
	rlca			;9b2c
	jp po,07201h		;9b2d
	nop			;9b30
	pop hl			;9b31
	ld (bc),a		;9b32
	call po,00310h		;9b33
	ld (bc),a		;9b36
	pop hl			;9b37
	ld bc,006e4h		;9b38
	ld (bc),a		;9b3b
	rst 38h			;9b3c
	jp po,0e501h		;9b3d
	ld a,(bc)		;9b40
	nop			;9b41
	ld b,d			;9b42
	pop bc			;9b43
	or b			;9b44
	ret pe			;9b45
	pop hl			;9b46
	ld bc,008e4h		;9b47
	ex af,af'		;9b4a
	rlca			;9b4b
	ld b,005h		;9b4c
	inc b			;9b4e
	inc bc			;9b4f
	ld (bc),a		;9b50
	ld (bc),a		;9b51
	ld bc,00001h		;9b52
	rst 38h			;9b55
	jp po,0e501h		;9b56
	ld a,(bc)		;9b59
	nop			;9b5a
	ld (hl),b		;9b5b
	nop			;9b5c
	nop			;9b5d
	ret pe			;9b5e
	pop hl			;9b5f
	ld bc,004e4h		;9b60
	rlca			;9b63
	ld b,005h		;9b64
	inc b			;9b66
	inc bc			;9b67
	ld (bc),a		;9b68
	ld bc,0e2ffh		;9b69
	ld bc,02aa1h		;9b6c
	sub c			;9b6f
	ld c,d			;9b70
	add a,c			;9b71
	ld d,l			;9b72
	ld (hl),c		;9b73
	ld h,b			;9b74
	ld h,c			;9b75
	ld l,d			;9b76
	ld d,c			;9b77
	ld (hl),l		;9b78
	ld b,c			;9b79
	add a,b			;9b7a
	ld sp,0218ah		;9b7b
	sub l			;9b7e
	ld de,001a0h		;9b7f
	or b			;9b82
	rst 38h			;9b83
	jp po,0b101h		;9b84
	ld e,d			;9b87
	sub c			;9b88
	add a,b			;9b89
	add a,c			;9b8a
	adc a,d			;9b8b
	ld (hl),c		;9b8c
	sub l			;9b8d
	ld h,c			;9b8e
	and b			;9b8f
	ld d,c			;9b90
	xor d			;9b91
	ld b,c			;9b92
	or l			;9b93
	ld sp,021c0h		;9b94
	jp z,0d511h		;9b97
	ld bc,0ffe0h		;9b9a
	jp po,0b101h		;9b9d
	sub l			;9ba0
	and c			;9ba1
	ret nz			;9ba2
	sub c			;9ba3
	jp z,0d5b1h		;9ba4
	ld (hl),c		;9ba7
	ret po			;9ba8
	ld h,c			;9ba9
	jp pe,0f551h		;9baa
	ld b,d			;9bad
	nop			;9bae
	ld (0220ah),a		;9baf
	dec d			;9bb2
	ld (de),a		;9bb3
	jr nz,l9bb8h		;9bb4
	jr nc,$+1		;9bb6
l9bb8h:
	jp po,0c101h		;9bb8
	ret po			;9bbb
	or d			;9bbc
	djnz $-92		;9bbd
	ld a,(de)		;9bbf
	sub d			;9bc0
	dec h			;9bc1
	add a,d			;9bc2
	jr nc,$+116		;9bc3
	ld a,(04562h)		;9bc5
	ld d,d			;9bc8
	ld d,b			;9bc9
	ld b,d			;9bca
	ld e,d			;9bcb
	ld (02265h),a		;9bcc
	ld (hl),b		;9bcf
	ld (de),a		;9bd0
	ld a,d			;9bd1
	ld (bc),a		;9bd2
	add a,l			;9bd3
	rst 38h			;9bd4
	jp po,0e501h		;9bd5
	ex af,af'		;9bd8
	ld bc,00000h		;9bd9
	ld bc,064e8h		;9bdc
	nop			;9bdf
	ld d,h			;9be0
	add a,b			;9be1
	ld b,l			;9be2
	nop			;9be3
	jp po,00503h		;9be4
	nop			;9be7
	jp po,00401h		;9be8
	nop			;9beb
	inc b			;9bec
	add a,b			;9bed
	dec b			;9bee
	nop			;9bef
	ld b,000h		;9bf0
	rst 38h			;9bf2
	dec bc			;9bf3
	sbc a,h			;9bf4
	ld de,0179ch		;9bf5
	sbc a,h			;9bf8
	dec hl			;9bf9
	sbc a,h			;9bfa
	ld c,d			;9bfb
	sbc a,h			;9bfc
	ld e,l			;9bfd
	sbc a,h			;9bfe
	ld (hl),b		;9bff
	sbc a,h			;9c00
	add a,l			;9c01
	sbc a,h			;9c02
	sbc a,d			;9c03
	sbc a,h			;9c04
	sbc a,d			;9c05
	sbc a,h			;9c06
	cp (hl)			;9c07
	sbc a,h			;9c08
	call c,0e19ch		;9c09
	ld bc,001e4h		;9c0c
	add hl,bc		;9c0f
	rst 38h			;9c10
	pop hl			;9c11
	ld bc,001e4h		;9c12
	rlca			;9c15
	rst 38h			;9c16
	pop hl			;9c17
	ld bc,005e4h		;9c18
	dec b			;9c1b
	call po,00702h		;9c1c
	call po,00800h		;9c1f
	pop hl			;9c22
	inc b			;9c23
	rlca			;9c24
	ld b,005h		;9c25
	inc b			;9c27
	inc bc			;9c28
	ld (bc),a		;9c29
	rst 38h			;9c2a
	ex (sp),hl		;9c2b
	ld bc,005e4h		;9c2c
	ld (hl),b		;9c2f
	dec c			;9c30
	call po,08002h		;9c31
	dec bc			;9c34
	call po,sub_9000h	;9c35
	add hl,bc		;9c38
	ex (sp),hl		;9c39
	inc b			;9c3a
	add a,b			;9c3b
	dec bc			;9c3c
	ld (hl),b		;9c3d
	dec bc			;9c3e
	ld h,b			;9c3f
	dec bc			;9c40
	ld d,b			;9c41
	dec bc			;9c42
	ld b,b			;9c43
	dec bc			;9c44
	jr nc,l9c52h		;9c45
	jr nz,l9c54h		;9c47
	rst 38h			;9c49
	pop hl			;9c4a
	ld bc,014e4h		;9c4b
	dec b			;9c4e
	jp po,05201h		;9c4f
l9c52h:
	nop			;9c52
	pop hl			;9c53
l9c54h:
	ld bc,010e4h		;9c54
	inc b			;9c57
	inc bc			;9c58
	call po,00206h		;9c59
	rst 38h			;9c5c
	pop hl			;9c5d
	ld bc,014e4h		;9c5e
	ld b,0e2h		;9c61
	ld bc,00062h		;9c63
	pop hl			;9c66
	ld bc,010e4h		;9c67
	dec b			;9c6a
l9c6bh:
	inc b			;9c6b
	call po,00206h		;9c6c
	rst 38h			;9c6f
	jp po,07201h		;9c70
	jr nc,$-29		;9c73
	ld (bc),a		;9c75
	call po,00705h		;9c76
	pop hl			;9c79
	ld (bc),a		;9c7a
	call po,00706h		;9c7b
	call po,00508h		;9c7e
	call po,00404h		;9c81
	rst 38h			;9c84
	jp po,08201h		;9c85
	jr nc,l9c6bh		;9c88
	ld (bc),a		;9c8a
	call po,00805h		;9c8b
	pop hl			;9c8e
	ld (bc),a		;9c8f
	call po,00806h		;9c90
	call po,00608h		;9c93
	call po,00504h		;9c96
	rst 38h			;9c99
	jp po,0e501h		;9c9a
	ld a,(bc)		;9c9d
	nop			;9c9e
	ld (de),a		;9c9f
	call nz,0e800h		;9ca0
	pop hl			;9ca3
	ld bc,008e4h		;9ca4
	add hl,bc		;9ca7
	ex af,af'		;9ca8
	rlca			;9ca9
	ld b,005h		;9caa
	call po,0e10ah		;9cac
	ld (bc),a		;9caf
	ld b,005h		;9cb0
	inc b			;9cb2
	inc bc			;9cb3
	ld (bc),a		;9cb4
	ld bc,0e100h		;9cb5
	ld b,0e4h		;9cb8
	dec bc			;9cba
	ld bc,0ff00h		;9cbb
	jp po,0e501h		;9cbe
	ex af,af'		;9cc1
	ld bc,00000h		;9cc2
	ld bc,064e8h		;9cc5
	nop			;9cc8
	ld d,h			;9cc9
	add a,b			;9cca
	ld b,l			;9ccb
	nop			;9ccc
	jp po,00503h		;9ccd
	nop			;9cd0
	jp po,00401h		;9cd1
	nop			;9cd4
	inc b			;9cd5
	add a,b			;9cd6
	dec b			;9cd7
	nop			;9cd8
	ld b,000h		;9cd9
	rst 38h			;9cdb
	pop hl			;9cdc
	ld bc,008e4h		;9cdd
	dec b			;9ce0
	call po,00807h		;9ce1
	call po,00706h		;9ce4
	call po,00805h		;9ce7
	call po,00804h		;9cea
	call po,00804h		;9ced
	call po,00803h		;9cf0
	call po,00802h		;9cf3
	pop hl			;9cf6
	ld bc,001e4h		;9cf7
	rlca			;9cfa
	ld b,005h		;9cfb
	inc b			;9cfd
	inc bc			;9cfe
	ld (bc),a		;9cff
	rst 38h			;9d00
	cp 001h			;9d01
	jp (hl)			;9d03
	inc b			;9d04
	xor 003h		;9d05
	ex de,hl		;9d07
	add hl,bc		;9d08
	djnz $-20		;9d09
	ex af,af'		;9d0b
	push af			;9d0c
	push bc			;9d0d
	pop de			;9d0e
	ld hl,09151h		;9d0f
	ld hl,09151h		;9d12
	ret nc			;9d15
	ld bc,l91d1h		;9d16
	ld d,c			;9d19
	or c			;9d1a
	ld (hl),c		;9d1b
	ei			;9d1c
	rlca			;9d1d
	cp 004h			;9d1e
	ret nc			;9d20
	sub c			;9d21
	sub c			;9d22
	cp 010h			;9d23
	sub c			;9d25
	cp 004h			;9d26
	sub c			;9d28
	sub c			;9d29
	cp 010h			;9d2a
	sub c			;9d2c
	cp 004h			;9d2d
	sub c			;9d2f
	cp 010h			;9d30
	sub c			;9d32
	cp 004h			;9d33
l9d35h:
	jr nc,l9d37h		;9d35
l9d37h:
	jr nc,l9d69h		;9d37
	jr nc,l9d3bh		;9d39
l9d3bh:
	cp 010h			;9d3b
	sub c			;9d3d
	sub c			;9d3e
	sub c			;9d3f
	cp 004h			;9d40
	ret nc			;9d42
	jp (hl)			;9d43
	inc b			;9d44
	push af			;9d45
	sub c			;9d46
	ld bc,00191h		;9d47
	ld sp,010feh		;9d4a
	sub c			;9d4d
	sub c			;9d4e
	cp 004h			;9d4f
	ei			;9d51
	ex af,af'		;9d52
	cp 004h			;9d53
	ret nc			;9d55
	jp (hl)			;9d56
	inc b			;9d57
	push af			;9d58
	sub c			;9d59
	ld bc,00131h		;9d5a
	sub c			;9d5d
	ld bc,00131h		;9d5e
	sub c			;9d61
	ld bc,00131h		;9d62
	ld sp,0fb31h		;9d65
	ld (bc),a		;9d68
l9d69h:
	sub c			;9d69
	ld bc,00131h		;9d6a
	sub c			;9d6d
	ld bc,00131h		;9d6e
	sub c			;9d71
	ld bc,01131h		;9d72
	sub c			;9d75
	jr nc,l9da8h		;9d76
	cp 010h			;9d78
	sub e			;9d7a
	cp 004h			;9d7b
	ret nc			;9d7d
	jp (hl)			;9d7e
	inc b			;9d7f
	push af			;9d80
	sub c			;9d81
	ld bc,00131h		;9d82
	sub c			;9d85
	ld bc,00131h		;9d86
	sub c			;9d89
	ld bc,00131h		;9d8a
	ld sp,0fb31h		;9d8d
	ld (bc),a		;9d90
	sub c			;9d91
	ld bc,00131h		;9d92
	sub c			;9d95
	ld bc,00131h		;9d96
	sub c			;9d99
	ld bc,01131h		;9d9a
	ld sp,0fe11h		;9d9d
	djnz l9d35h		;9da0
	cp 004h			;9da2
	ret nc			;9da4
	jp (hl)			;9da5
	inc b			;9da6
	sub c			;9da7
l9da8h:
	ld bc,00131h		;9da8
	sub c			;9dab
l9dach:
	ld bc,00131h		;9dac
	sub c			;9daf
	ld bc,00131h		;9db0
	sub c			;9db3
	cp 010h			;9db4
	nop			;9db6
	nop			;9db7
l9db8h:
	sub e			;9db8
	cp 004h			;9db9
	sub b			;9dbb
	nop			;9dbc
	ld de,09031h		;9dbd
	nop			;9dc0
	ld de,09031h		;9dc1
	nop			;9dc4
	ld de,09031h		;9dc5
	nop			;9dc8
	ld de,00090h		;9dc9
	ld de,0fe31h		;9dcc
	djnz $-107		;9dcf
	push af			;9dd1
	cp 004h			;9dd2
	sub c			;9dd4
	sub c			;9dd5
	ld bc,00191h		;9dd6
	ld bc,010feh		;9dd9
	sub e			;9ddc
	ei			;9ddd
	inc bc			;9dde
	cp 004h			;9ddf
	ld sp,03131h		;9de1
	ld sp,010feh		;9de4
	sub c			;9de7
	sub c			;9de8
	sub c			;9de9
	sub c			;9dea
	cp 004h			;9deb
	ret nc			;9ded
	jp (hl)			;9dee
	inc b			;9def
	sub c			;9df0
	ld bc,00131h		;9df1
	sub c			;9df4
	ld bc,00131h		;9df5
	sub c			;9df8
	ld bc,00131h		;9df9
	sub c			;9dfc
	ld bc,010feh		;9dfd
	sub e			;9e00
	cp 004h			;9e01
	sub b			;9e03
	nop			;9e04
	ld de,09031h		;9e05
	nop			;9e08
	ld de,09031h		;9e09
	nop			;9e0c
	ld de,09031h		;9e0d
	nop			;9e10
	ld de,00090h		;9e11
	ld de,0fe31h		;9e14
	djnz l9dach		;9e17
	push af			;9e19
	cp 004h			;9e1a
	sub c			;9e1c
	ld bc,l9101h		;9e1d
	ld bc,0fe01h		;9e20
	djnz l9db8h		;9e23
	ei			;9e25
	inc bc			;9e26
	cp 004h			;9e27
	ld sp,03131h		;9e29
	ld sp,010feh		;9e2c
	sub c			;9e2f
	sub c			;9e30
	sub c			;9e31
	sub c			;9e32
	defb 0fdh,040h,09dh ;illegal sequence	;9e33
	cp 001h			;9e36
	jp (hl)			;9e38
	inc b			;9e39
	xor 002h		;9e3a
	ex de,hl		;9e3c
	add hl,bc		;9e3d
	djnz $-20		;9e3e
	add hl,bc		;9e40
	push af			;9e41
	pop bc			;9e42
	pop de			;9e43
	ld hl,09151h		;9e44
	ld hl,09151h		;9e47
	ret nc			;9e4a
	ld bc,l91d1h		;9e4b
	ld d,c			;9e4e
	or c			;9e4f
	ld (hl),c		;9e50
	ld b,c			;9e51
	ld (hl),c		;9e52
	ei			;9e53
	ex af,af'		;9e54
	cp 001h			;9e55
	jp (hl)			;9e57
	inc b			;9e58
	pop bc			;9e59
	ex de,hl		;9e5a
	ld (de),a		;9e5b
	ld (00beah),hl		;9e5c
	in a,(001h)		;9e5f
	jp p,0f110h		;9e61
	ld b,l			;9e64
	push af			;9e65
	jp nc,l9193h		;9e66
	pop de			;9e69
	ld bc,0d201h		;9e6a
	or c			;9e6d
	or c			;9e6e
	ei			;9e6f
	rlca			;9e70
	jp p,0f106h		;9e71
	scf			;9e74
	jp nc,0f295h		;9e75
	djnz $-13		;9e78
	ld b,l			;9e7a
	pop de			;9e7b
	ld bc,0d201h		;9e7c
	or c			;9e7f
	cp 001h			;9e80
	jp (hl)			;9e82
	inc b			;9e83
	pop bc			;9e84
	ex de,hl		;9e85
	ld (bc),a		;9e86
	jr nc,$-20		;9e87
	ld a,(bc)		;9e89
	in a,(004h)		;9e8a
	jp p,0f105h		;9e8c
	ld b,d			;9e8f
	jp nc,0d373h		;9e90
	ld (hl),e		;9e93
	sub e			;9e94
	jp nc,05391h		;9e95
	out (053h),a		;9e98
	ld (hl),e		;9e9a
	jp nc,04371h		;9e9b
	out (043h),a		;9e9e
	ld d,e			;9ea0
	jp nc,02351h		;9ea1
	out (023h),a		;9ea4
	ld b,e			;9ea6
	jp nc,0d340h		;9ea7
	sub b			;9eaa
	and (hl)		;9eab
	sub b			;9eac
	or h			;9ead
	or b			;9eae
	jp nc,03002h		;9eaf
	ld b,d			;9eb2
	ld h,b			;9eb3
	ld (hl),a		;9eb4
	call c,001feh		;9eb5
	jp (hl)			;9eb8
	inc b			;9eb9
	pop bc			;9eba
	ex de,hl		;9ebb
	ld (bc),a		;9ebc
	jr nc,$-20		;9ebd
	ld a,(bc)		;9ebf
	in a,(004h)		;9ec0
	jp p,0f10dh		;9ec2
	ld b,l			;9ec5
	jp nc,0d373h		;9ec6
	ld (hl),e		;9ec9
	sub e			;9eca
	jp nc,05391h		;9ecb
	out (053h),a		;9ece
	ld (hl),e		;9ed0
	jp nc,04371h		;9ed1
	out (043h),a		;9ed4
	ld d,e			;9ed6
	jp nc,02351h		;9ed7
	out (023h),a		;9eda
	ld b,e			;9edc
	jp nc,0d340h		;9edd
	sub b			;9ee0
	and (hl)		;9ee1
	jp nc,02610h		;9ee2
	out (001h),a		;9ee5
	ld b,c			;9ee7
	ld (hl),c		;9ee8
	jp nc,04101h		;9ee9
	ld (hl),c		;9eec
	pop de			;9eed
	ld bc,0dc40h		;9eee
	cp 001h			;9ef1
	jp (hl)			;9ef3
	inc b			;9ef4
	pop bc			;9ef5
	ex de,hl		;9ef6
	ld (bc),a		;9ef7
	jr nz,$-20		;9ef8
	ld a,(bc)		;9efa
	jp p,0f110h		;9efb
	ld b,h			;9efe
	sub 002h		;9eff
	ld (bc),a		;9f01
	jp (hl)			;9f02
	ld (bc),a		;9f03
	jp nc,04030h		;9f04
	jp (hl)			;9f07
	inc b			;9f08
	ld d,b			;9f09
	ld b,c			;9f0a
	ld hl,02101h		;9f0b
	out (0a3h),a		;9f0e
	jp nc,04355h		;9f10
	ld d,e			;9f13
	ld (hl),e		;9f14
	jp (hl)			;9f15
	ld (bc),a		;9f16
	ld (hl),b		;9f17
	add a,b			;9f18
	jp (hl)			;9f19
	inc b			;9f1a
	sub b			;9f1b
	ld (hl),c		;9f1c
	ld d,c			;9f1d
	ld b,c			;9f1e
	ld d,c			;9f1f
	ld hl,l919bh		;9f20
	pop de			;9f23
	dec b			;9f24
	call c,0f5d8h		;9f25
	ret nc			;9f28
	nop			;9f29
	pop de			;9f2a
	ld d,b			;9f2b
	jr nz,$+82		;9f2c
	ei			;9f2e
	inc b			;9f2f
	push af			;9f30
	pop de			;9f31
	or b			;9f32
	ld d,b			;9f33
	jr nz,l9f86h		;9f34
	ei			;9f36
	inc b			;9f37
	push af			;9f38
	pop de			;9f39
	and b			;9f3a
	ld d,b			;9f3b
l9f3ch:
	jr nz,l9f8eh		;9f3c
	ei			;9f3e
	inc b			;9f3f
	push af			;9f40
	sub b			;9f41
	ld d,b			;9f42
	jr nz,$+82		;9f43
	ei			;9f45
	inc bc			;9f46
	sub b			;9f47
	ld d,b			;9f48
	cp 001h			;9f49
	jp (hl)			;9f4b
	inc b			;9f4c
	pop bc			;9f4d
	ex de,hl		;9f4e
	ld (bc),a		;9f4f
	jr nz,l9f3ch		;9f50
	ld a,(bc)		;9f52
	jp p,0f110h		;9f53
	ld b,h			;9f56
	sub 001h		;9f57
	ld bc,002e9h		;9f59
	pop de			;9f5c
	jr nc,l9f9fh		;9f5d
	jp (hl)			;9f5f
	inc b			;9f60
	ld d,b			;9f61
	ld b,c			;9f62
	ld hl,02101h		;9f63
	jp nc,0d1a3h		;9f66
	ld d,l			;9f69
	ld b,e			;9f6a
	ld d,e			;9f6b
	ld (hl),e		;9f6c
	jp (hl)			;9f6d
	ld (bc),a		;9f6e
	ld (hl),b		;9f6f
	add a,b			;9f70
	jp (hl)			;9f71
	inc b			;9f72
	sub b			;9f73
	ld (hl),c		;9f74
	ld d,c			;9f75
	ld b,c			;9f76
	ld d,c			;9f77
	ld hl,l919bh		;9f78
	ret nc			;9f7b
	dec b			;9f7c
	call c,0f5d8h		;9f7d
	ret nc			;9f80
	nop			;9f81
	pop de			;9f82
	ld d,b			;9f83
	jr nz,l9fd6h		;9f84
l9f86h:
	ei			;9f86
	inc b			;9f87
	push af			;9f88
	pop de			;9f89
	or b			;9f8a
	ld d,b			;9f8b
	jr nz,l9fdeh		;9f8c
l9f8eh:
	ei			;9f8e
	inc b			;9f8f
	push af			;9f90
	pop de			;9f91
	and b			;9f92
	ld d,b			;9f93
	jr nz,$+82		;9f94
	ei			;9f96
	inc b			;9f97
	push af			;9f98
	sub b			;9f99
	ld d,b			;9f9a
	jr nz,$+82		;9f9b
	ei			;9f9d
	inc bc			;9f9e
l9f9fh:
	sub b			;9f9f
	ld d,b			;9fa0
	defb 0fdh,055h ;ld d,iyl	;9fa1
	sbc a,(hl)		;9fa3
	cp 001h			;9fa4
	ret m			;9fa6
	ld d,h			;9fa7
	jp (hl)			;9fa8
	inc b			;9fa9
	defb 0ddh,024h ;inc ixh	;9faa
	ld h,l			;9fac
	jp pe,0db0ch		;9fad
	ld bc,0d2f5h		;9fb0
	inc hl			;9fb3
	sub e			;9fb4
	ld d,e			;9fb5
	pop de			;9fb6
	inc bc			;9fb7
	jp nc,07353h		;9fb8
	ld (hl),e		;9fbb
	ei			;9fbc
	ex af,af'		;9fbd
	cp 001h			;9fbe
	ret m			;9fc0
	add a,c			;9fc1
	jp nz,008e9h		;9fc2
	call pe,00aeah		;9fc5
	push de			;9fc8
	dec l			;9fc9
	call nc,0d52dh		;9fca
	dec l			;9fcd
	call nc,080f8h		;9fce
	pop bc			;9fd1
	inc l			;9fd2
	ret m			;9fd3
	jr z,$-21		;9fd4
l9fd6h:
	inc b			;9fd6
	ex de,hl		;9fd7
	ld (0d470h),hl		;9fd8
	ld bc,001feh		;9fdb
l9fdeh:
	ret m			;9fde
	ld h,h			;9fdf
	jp (hl)			;9fe0
	inc b			;9fe1
	ex de,hl		;9fe2
	add hl,bc		;9fe3
	ld b,b			;9fe4
	in a,(003h)		;9fe5
	jp pe,0f50fh		;9fe7
	push de			;9fea
	ld hl,021d4h		;9feb
	push de			;9fee
	ld hl,0d421h		;9fef
	ld hl,021d5h		;9ff2
	ld hl,021d4h		;9ff5
	push de			;9ff8
	ld hl,0d421h		;9ff9
	ld hl,021d5h		;9ffc
	push de			;9fff
