; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank24_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank24.bin

	org 06000h

	cp 004h			;6000
	ret nc			;6002
	jp (hl)			;6003
	ld b,0f5h		;6004
	cp 004h			;6006
	sub b			;6008
	nop			;6009
	nop			;600a
	nop			;600b
	jr nc,l600eh		;600c
l600eh:
	nop			;600e
	nop			;600f
	sub c			;6010
sub_6011h:
	ld de,00030h		;6011
	ei			;6014
	rlca			;6015
	ld sp,03111h		;6016
	ld de,01131h		;6019
	cp 010h			;601c
	sub c			;601e
	cp 004h			;601f
	ret nc			;6021
	jp (hl)			;6022
	ld b,0f5h		;6023
	cp 004h			;6025
	sub b			;6027
	nop			;6028
	nop			;6029
	nop			;602a
	jr nc,l602dh		;602b
l602dh:
	nop			;602d
	nop			;602e
	sub b			;602f
	nop			;6030
	cp 010h			;6031
	ld sp,004feh		;6033
	jr nc,l6038h		;6036
l6038h:
	ei			;6038
	inc bc			;6039
	sub b			;603a
	nop			;603b
	nop			;603c
	nop			;603d
	jr nc,l6040h		;603e
l6040h:
	nop			;6040
	nop			;6041
	sub b			;6042
	nop			;6043
	cp 010h			;6044
	sub c			;6046
	ld sp,0fef5h		;6047
	inc b			;604a
	sub b			;604b
	nop			;604c
	nop			;604d
	nop			;604e
	jr nc,l6051h		;604f
l6051h:
	nop			;6051
	nop			;6052
	sub b			;6053
	nop			;6054
	cp 010h			;6055
	ld sp,004feh		;6057
	jr nc,l605ch		;605a
l605ch:
	ei			;605c
	inc bc			;605d
	sub b			;605e
	nop			;605f
	nop			;6060
	nop			;6061
	jr nc,l6064h		;6062
l6064h:
	nop			;6064
	nop			;6065
	sub b			;6066
	nop			;6067
	ld sp,010feh		;6068
	sub c			;606b
	defb 0fdh,01fh,0a0h ;illegal sequence	;606c
	cp 001h			;606f
	jp (hl)			;6071
	ld b,0c1h		;6072
	xor 002h		;6074
	ex de,hl		;6076
	rla			;6077
	djnz l6064h		;6078
	ld a,(bc)		;607a
	call nc,03527h		;607b
	daa			;607e
	dec (hl)		;607f
	ld d,a			;6080
	ld h,l			;6081
	ld d,a			;6082
	ld h,l			;6083
	daa			;6084
	dec (hl)		;6085
l6086h:
	daa			;6086
	dec (hl)		;6087
	ld d,a			;6088
	ld h,l			;6089
	call nc,0fe5dh		;608a
	ld bc,0e9f5h		;608d
	ld b,0c1h		;6090
	jp p,0f110h		;6092
	ld b,h			;6095
	xor 010h		;6096
	ex de,hl		;6098
	add a,(hl)		;6099
	djnz l6086h		;609a
	dec bc			;609c
	defb 0edh ;next byte illegal after ed	;609d
	ld b,0d4h		;609e
	xor l			;60a0
	adc a,l			;60a1
	jp (hl)			;60a2
	inc c			;60a3
	out (00ch),a		;60a4
	ei			;60a6
	ld (bc),a		;60a7
	defb 0fdh,08ch ;adc a,iyh	;60a8
	and b			;60aa
	cp 001h			;60ab
	jp (hl)			;60ad
	inc c			;60ae
	ret m			;60af
	add a,b			;60b0
	pop bc			;60b1
	call pe,005eah		;60b2
	in a,(001h)		;60b5
	pop af			;60b7
	ld b,h			;60b8
	push af			;60b9
	call nc,05d2dh		;60ba
	dec l			;60bd
	ld d,(hl)		;60be
	jp pe,0f807h		;60bf
	dec h			;60c2
	rst 10h			;60c3
	rrca			;60c4
	push bc			;60c5
l60c6h:
	push de			;60c6
	ld h,0d8h		;60c7
	cp 001h			;60c9
	push af			;60cb
	jp (hl)			;60cc
	ld b,0f8h		;60cd
	add a,c			;60cf
	jp nz,0eaech		;60d0
	ex af,af'		;60d3
	push de			;60d4
	xor l			;60d5
	adc a,l			;60d6
	jp (hl)			;60d7
	inc c			;60d8
	ret m			;60d9
	add a,b			;60da
	pop bc			;60db
	call nc,0fb0dh		;60dc
	ld (bc),a		;60df
	defb 0fdh,0c9h,0a0h ;illegal sequence	;60e0
	cp 001h			;60e3
	jp (hl)			;60e5
	inc c			;60e6
	xor 010h		;60e7
	ret m			;60e9
	add a,b			;60ea
	pop bc			;60eb
	call pe,005eah		;60ec
	in a,(001h)		;60ef
	pop af			;60f1
	ld b,h			;60f2
	push af			;60f3
	call nc,05d2dh		;60f4
	dec l			;60f7
	ld d,(hl)		;60f8
l60f9h:
	jp pe,0c007h		;60f9
	ret m			;60fc
	dec h			;60fd
	rst 10h			;60fe
	rrca			;60ff
	ret nz			;6100
	push de			;6101
	dec h			;6102
	ret c			;6103
	rst 28h			;6104
	cp 001h			;6105
	jp (hl)			;6107
	ld b,0f8h		;6108
	dec bc			;610a
l610bh:
	ex de,hl		;610b
	add hl,hl		;610c
	djnz l60f9h		;610d
	ex af,af'		;610f
	ld sp,hl		;6110
l6111h:
	jr nc,$-93		;6111
l6113h:
	jp pe,0eb07h		;6113
	add hl,hl		;6116
	nop			;6117
	ld sp,hl		;6118
	ld h,d			;6119
	and c			;611a
	ret m			;611b
	ccf			;611c
	ex de,hl		;611d
	add hl,hl		;611e
	jr nz,l610bh		;611f
	add hl,bc		;6121
	ld sp,hl		;6122
	jr nc,l60c6h		;6123
	jp pe,0eb08h		;6125
	add hl,hl		;6128
	djnz $-5		;6129
	ld h,d			;612b
	and c			;612c
	defb 0fdh,005h,0a1h ;illegal sequence	;612d
	push af			;6130
	out (0a0h),a		;6131
	add a,b			;6133
	jp nc,0d300h		;6134
	add a,b			;6137
	jp nc,0d320h		;6138
	add a,b			;613b
	jp nc,0d330h		;613c
l613fh:
	and b			;613f
	add a,b			;6140
	jp nc,0d300h		;6141
	add a,b			;6144
	jp nc,0d320h		;6145
	add a,b			;6148
	jp nc,0fb30h		;6149
l614ch:
	inc bc			;614c
	out (0a0h),a		;614d
	add a,b			;614f
	jp nc,0d300h		;6150
	add a,b			;6153
	jp nc,0d320h		;6154
	add a,b			;6157
	jp nc,02030h		;6158
l615bh:
	nop			;615b
	jr nc,l617eh		;615c
	ld (hl),b		;615e
	jr nc,$-126		;615f
	jp m,0d2f5h		;6161
	and b			;6164
	add a,b			;6165
	pop de			;6166
	nop			;6167
	jp nc,0d180h		;6168
	jr nz,l613fh		;616b
	add a,b			;616d
	pop de			;616e
	jr nc,$-44		;616f
	and b			;6171
	add a,b			;6172
	pop de			;6173
	nop			;6174
	jp nc,0d180h		;6175
	jr nz,l614ch		;6178
	add a,b			;617a
	pop de			;617b
	jr nc,$-3		;617c
l617eh:
	inc bc			;617e
	jp nc,080a0h		;617f
	pop de			;6182
	nop			;6183
	jp nc,0d180h		;6184
	jr nz,l615bh		;6187
	add a,b			;6189
	pop de			;618a
	jr nc,l61adh		;618b
	nop			;618d
	jr nc,l61b0h		;618e
	ld (hl),b		;6190
	jr nc,l6113h		;6191
	jp m,001feh		;6193
	jp (hl)			;6196
	ld b,0f8h		;6197
	jr z,$-19		;6199
	ld (0ea70h),hl		;619b
	dec bc			;619e
	in a,(002h)		;619f
	jp p,0f110h		;61a1
	add hl,sp		;61a4
	push de			;61a5
	daa			;61a6
	dec (hl)		;61a7
	daa			;61a8
	dec (hl)		;61a9
	ld d,a			;61aa
	ld h,l			;61ab
	ld d,a			;61ac
l61adh:
	ld h,l			;61ad
	push de			;61ae
	daa			;61af
l61b0h:
	dec (hl)		;61b0
l61b1h:
	daa			;61b1
	dec (hl)		;61b2
	ld d,a			;61b3
	ld h,l			;61b4
	call pe,009eah		;61b5
	ret m			;61b8
	add a,b			;61b9
	jp nz,05dd5h		;61ba
	cp 001h			;61bd
	jp (hl)			;61bf
	ld b,0f8h		;61c0
	dec bc			;61c2
	ex de,hl		;61c3
	add hl,hl		;61c4
	djnz l61b1h		;61c5
	ex af,af'		;61c7
	in a,(001h)		;61c8
	ld sp,hl		;61ca
	ld d,(hl)		;61cb
	and d			;61cc
l61cdh:
	jp nc,0d170h		;61cd
	nop			;61d0
	jp pe,0eb07h		;61d1
l61d4h:
	add hl,hl		;61d4
	nop			;61d5
	ld sp,hl		;61d6
	halt			;61d7
	and d			;61d8
	pop de			;61d9
	ld (hl),b		;61da
	ret nc			;61db
	nop			;61dc
	ret m			;61dd
	ccf			;61de
	ex de,hl		;61df
	add hl,hl		;61e0
	jr nz,l61cdh		;61e1
	add hl,bc		;61e3
	ld sp,hl		;61e4
	ld d,(hl)		;61e5
	and d			;61e6
	jp nc,0d170h		;61e7
l61eah:
	nop			;61ea
	jp pe,0eb08h		;61eb
l61eeh:
	add hl,hl		;61ee
	djnz l61eah		;61ef
	halt			;61f1
	and d			;61f2
	pop de			;61f3
	ld (hl),b		;61f4
	ret nc			;61f5
l61f6h:
	nop			;61f6
	defb 0fdh,0bdh ;cp iyl	;61f7
	and c			;61f9
	cp 001h			;61fa
	jp (hl)			;61fc
	ld b,0eeh		;61fd
	ex af,af'		;61ff
	ret m			;6200
	jr z,l61eeh		;6201
	ld (0ea70h),hl		;6203
	dec bc			;6206
	in a,(002h)		;6207
	jp p,0f110h		;6209
	add hl,sp		;620c
	call nc,03527h		;620d
	daa			;6210
l6211h:
	dec (hl)		;6211
	ld d,a			;6212
	ld h,l			;6213
	ld d,a			;6214
	ld h,l			;6215
	daa			;6216
	dec (hl)		;6217
	daa			;6218
	dec (hl)		;6219
l621ah:
	ld d,a			;621a
	ld h,l			;621b
	call pe,005eah		;621c
	ret m			;621f
	jr z,l61f6h		;6220
	ld e,l			;6222
	cp 001h			;6223
	jp (hl)			;6225
	ld b,0f8h		;6226
	dec bc			;6228
	pop bc			;6229
	xor 001h		;622a
	ex de,hl		;622c
	rla			;622d
	djnz l621ah		;622e
l6230h:
	ld b,0f9h		;6230
	ld d,(hl)		;6232
	and d			;6233
	jp pe,0eb05h		;6234
	rla			;6237
l6238h:
	nop			;6238
	pop bc			;6239
	ld sp,hl		;623a
	halt			;623b
	and d			;623c
	ret m			;623d
	ccf			;623e
	pop bc			;623f
	xor 001h		;6240
	ex de,hl		;6242
	rla			;6243
	djnz l6230h		;6244
	ld b,0f9h		;6246
	ld d,(hl)		;6248
	and d			;6249
	jp pe,0eb05h		;624a
	rla			;624d
	djnz l6211h		;624e
	ld sp,hl		;6250
	halt			;6251
	and d			;6252
	inc iy			;6253
	and d			;6255
	push af			;6256
	jp nc,00020h		;6257
	jr nc,l625ch		;625a
l625ch:
	ld d,b			;625c
l625dh:
	nop			;625d
	ld (hl),b		;625e
	jr nz,l6261h		;625f
l6261h:
	jr nc,l6263h		;6261
l6263h:
	ld d,b			;6263
	nop			;6264
l6265h:
	ld (hl),b		;6265
	ei			;6266
	inc bc			;6267
	jp nc,00020h		;6268
	jr nc,l626dh		;626b
l626dh:
	ld d,b			;626d
	nop			;626e
	ld (hl),b		;626f
	ld d,b			;6270
	jr nc,l62e3h		;6271
	ld d,b			;6273
	and b			;6274
	jp m,0d1f5h		;6275
	jr nz,l627ah		;6278
l627ah:
	jr nc,l627ch		;627a
l627ch:
	ld d,b			;627c
	nop			;627d
	ld (hl),b		;627e
	jr nz,l6281h		;627f
l6281h:
	jr nc,l6283h		;6281
l6283h:
	ld d,b			;6283
	nop			;6284
l6285h:
	ld (hl),b		;6285
	ei			;6286
	inc bc			;6287
	pop de			;6288
	jr nz,l628bh		;6289
l628bh:
	jr nc,l628dh		;628b
l628dh:
	ld d,b			;628d
	nop			;628e
	ld (hl),b		;628f
	ld d,b			;6290
	jr nc,l6303h		;6291
	ld d,b			;6293
	and b			;6294
	jp m,004feh		;6295
	ret nc			;6298
	jp (hl)			;6299
	ex af,af'		;629a
	push af			;629b
	sub b			;629c
	nop			;629d
	jr nc,l62a0h		;629e
l62a0h:
	sub b			;62a0
	sub b			;62a1
	jr nc,l62a4h		;62a2
l62a4h:
	sub b			;62a4
l62a5h:
	nop			;62a5
	jr nc,l6238h		;62a6
	nop			;62a8
	sub b			;62a9
	jr nc,l62ach		;62aa
l62ach:
	sub b			;62ac
	nop			;62ad
	jr nc,l62b0h		;62ae
l62b0h:
	nop			;62b0
	sub b			;62b1
	jr nc,l62e4h		;62b2
	sub b			;62b4
l62b5h:
	jr nc,l62e7h		;62b5
	sub b			;62b7
	jr nc,$+50		;62b8
	jr nc,l62a5h		;62ba
	inc b			;62bc
	jr nc,l62efh		;62bd
	jp (hl)			;62bf
	ex af,af'		;62c0
	ei			;62c1
	ld (bc),a		;62c2
	cp 004h			;62c3
	ret nc			;62c5
	jp (hl)			;62c6
	ex af,af'		;62c7
	push af			;62c8
	sub b			;62c9
	nop			;62ca
	jr nc,l625dh		;62cb
	nop			;62cd
	sub b			;62ce
	jr nc,l62e1h		;62cf
	sub b			;62d1
	nop			;62d2
	jr nc,l6265h		;62d3
	nop			;62d5
	sub b			;62d6
	djnz l6309h		;62d7
	ei			;62d9
	inc bc			;62da
	sub b			;62db
	nop			;62dc
	jr nc,l62dfh		;62dd
l62dfh:
	sub b			;62df
	nop			;62e0
l62e1h:
	jr nc,l62e3h		;62e1
l62e3h:
	sub b			;62e3
l62e4h:
	sub b			;62e4
	djnz l6317h		;62e5
l62e7h:
	djnz l6319h		;62e7
	jr nc,l631bh		;62e9
	cp 004h			;62eb
	ret nc			;62ed
	jp (hl)			;62ee
l62efh:
	ex af,af'		;62ef
	push af			;62f0
l62f1h:
	sub b			;62f1
	nop			;62f2
	jr nc,l6285h		;62f3
	nop			;62f5
	sub b			;62f6
	jr nc,l6309h		;62f7
	sub b			;62f9
	nop			;62fa
	jr nc,l628dh		;62fb
	nop			;62fd
	sub b			;62fe
	djnz l6331h		;62ff
	ei			;6301
	inc bc			;6302
l6303h:
	sub b			;6303
	nop			;6304
	jr nc,l6307h		;6305
l6307h:
	sub b			;6307
	nop			;6308
l6309h:
	jr nc,l630bh		;6309
l630bh:
	sub b			;630b
	sub b			;630c
	djnz l633fh		;630d
	djnz $+50		;630f
	jr nc,l6343h		;6311
	cp 004h			;6313
	ret nc			;6315
	jp (hl)			;6316
l6317h:
	ex af,af'		;6317
	push af			;6318
l6319h:
	sub b			;6319
	nop			;631a
l631bh:
	jr nc,l631dh		;631b
l631dh:
	sub b			;631d
	sub b			;631e
	jr nc,l6321h		;631f
l6321h:
	sub b			;6321
l6322h:
	nop			;6322
	jr nc,l62b5h		;6323
	nop			;6325
	sub b			;6326
	jr nc,l6329h		;6327
l6329h:
	sub b			;6329
	nop			;632a
	jr nc,l632dh		;632b
l632dh:
	nop			;632d
	sub b			;632e
	jr nc,l6361h		;632f
l6331h:
	sub b			;6331
	jr nc,$+50		;6332
	sub b			;6334
	jr nc,l6367h		;6335
	jr nc,l6322h		;6337
	inc b			;6339
	jr nc,l636ch		;633a
	jp (hl)			;633c
	ex af,af'		;633d
	ei			;633e
l633fh:
	ld (bc),a		;633f
	sub (iy-05eh)		;6340
l6343h:
	cp 001h			;6343
	ret m			;6345
	inc de			;6346
	ex de,hl		;6347
	add a,(hl)		;6348
	ld b,c			;6349
	jp (hl)			;634a
	ex af,af'		;634b
	jp pe,0ed08h		;634c
	dec b			;634f
	in a,(001h)		;6350
	jp p,0f116h		;6352
	ld d,(hl)		;6355
	jp nc,0270fh		;6356
	defb 0edh ;next byte illegal after ed	;6359
	ex af,af'		;635a
	jp (hl)			;635b
	inc b			;635c
	out (0a5h),a		;635d
	jp (hl)			;635f
	ex af,af'		;6360
l6361h:
	ld d,d			;6361
	and c			;6362
	jp nc,0ed07h		;6363
	dec b			;6366
l6367h:
	jp nc,004e9h		;6367
	jr nz,l63aah		;636a
l636ch:
	jp (hl)			;636c
	ex af,af'		;636d
	jp nc,0ea5bh		;636e
	ld b,0f8h		;6371
	ccf			;6373
	pop bc			;6374
	pop de			;6375
	jr nz,$+50		;6376
	cp 001h			;6378
	ex de,hl		;637a
	add hl,bc		;637b
	jr nc,l6367h		;637c
	ex af,af'		;637e
	jp pe,0f50ch		;637f
	push de			;6382
	add a,b			;6383
	add a,b			;6384
	call nc,0d580h		;6385
	add a,b			;6388
	add a,b			;6389
	call nc,0d580h		;638a
	add a,b			;638d
	call nc,0fb80h		;638e
	ld (bc),a		;6391
	push af			;6392
	push de			;6393
	ld (hl),b		;6394
	ld (hl),b		;6395
	call nc,0d570h		;6396
	ld (hl),b		;6399
	ld (hl),b		;639a
	call nc,0d570h		;639b
	ld (hl),b		;639e
	call nc,0fb70h		;639f
	ld (bc),a		;63a2
	push af			;63a3
	push de			;63a4
	ld d,b			;63a5
	ld d,b			;63a6
	call nc,0d550h		;63a7
l63aah:
	ld d,b			;63aa
	ld d,b			;63ab
	call nc,0d550h		;63ac
	ld d,b			;63af
	call nc,0fb50h		;63b0
	ld (bc),a		;63b3
	push de			;63b4
	and b			;63b5
	and b			;63b6
	call nc,0d5a0h		;63b7
	and b			;63ba
	and b			;63bb
	call nc,0d5a0h		;63bc
	and b			;63bf
l63c0h:
	call nc,0d5a0h		;63c0
	ld (hl),b		;63c3
	call nc,0d570h		;63c4
	ld (hl),b		;63c7
	ld (hl),b		;63c8
	call nc,0d570h		;63c9
	ld (hl),b		;63cc
l63cdh:
	call nc,0d570h		;63cd
	ld (hl),b		;63d0
	cp 001h			;63d1
	ex de,hl		;63d3
	add hl,bc		;63d4
	jr nc,l63c0h		;63d5
	ex af,af'		;63d7
	jp pe,0f50ch		;63d8
	push de			;63db
	add a,b			;63dc
	add a,b			;63dd
	call nc,0d580h		;63de
	add a,b			;63e1
	add a,b			;63e2
	call nc,0d580h		;63e3
	add a,b			;63e6
	call nc,0fb80h		;63e7
	ld (bc),a		;63ea
	push af			;63eb
	push de			;63ec
	jr nc,$+50		;63ed
	call nc,0d530h		;63ef
	jr nc,$+50		;63f2
	call nc,0d530h		;63f4
	jr nc,l63cdh		;63f7
	jr nc,$-3		;63f9
	ld (bc),a		;63fb
	push af			;63fc
	push de			;63fd
	nop			;63fe
	nop			;63ff
	call nc,0d500h		;6400
	nop			;6403
	nop			;6404
	call nc,0d500h		;6405
	nop			;6408
	call nc,0fb00h		;6409
	ld (bc),a		;640c
	call nc,02020h		;640d
	out (020h),a		;6410
	call nc,02020h		;6412
	out (020h),a		;6415
	call nc,0d320h		;6417
	jr nz,$-41		;641a
	ld (hl),b		;641c
	call nc,0d570h		;641d
	ld (hl),b		;6420
	ld (hl),b		;6421
	call nc,0d570h		;6422
	ld (hl),b		;6425
	call nc,0d570h		;6426
	ld (hl),b		;6429
	cp 001h			;642a
	ex de,hl		;642c
	add hl,bc		;642d
	jr nc,$-21		;642e
	ex af,af'		;6430
l6431h:
	push af			;6431
	jp pe,0d50ch		;6432
	ld d,b			;6435
	call nc,0d350h		;6436
	ld d,b			;6439
	push de			;643a
l643bh:
	ld d,b			;643b
	call nc,0d350h		;643c
	ld d,b			;643f
	push de			;6440
	ld d,b			;6441
	call nc,0fb50h		;6442
	ld (bc),a		;6445
	push af			;6446
	push de			;6447
	nop			;6448
	call nc,0d300h		;6449
l644ch:
	nop			;644c
	push de			;644d
	nop			;644e
	call nc,0d300h		;644f
	nop			;6452
	push de			;6453
	nop			;6454
	call nc,0fb00h		;6455
	ld (bc),a		;6458
	push af			;6459
	push de			;645a
	djnz l6431h		;645b
	djnz $+18		;645d
	push de			;645f
	djnz $+18		;6460
	call nc,0d510h		;6462
	djnz l643bh		;6465
	djnz $-3		;6467
	ld (bc),a		;6469
	push af			;646a
	push de			;646b
	jr nc,l649eh		;646c
l646eh:
	call nc,0d530h		;646e
	jr nc,l64a3h		;6471
	call nc,0d530h		;6473
	jr nc,l644ch		;6476
	jr nc,$-3		;6478
	ld (bc),a		;647a
	defb 0fdh,043h,0a3h ;illegal sequence	;647b
	cp 001h			;647e
	ret m			;6480
l6481h:
	jr z,l646eh		;6481
	ld b,d			;6483
	ld (hl),b		;6484
	jp (hl)			;6485
	ex af,af'		;6486
	push af			;6487
	jp pe,0d509h		;6488
	ld d,b			;648b
	call nc,0f850h		;648c
l648fh:
	dec c			;648f
	jp pe,0d30dh		;6490
	ld d,b			;6493
	ret m			;6494
	jr z,l6481h		;6495
	add hl,bc		;6497
	push de			;6498
	ld d,b			;6499
	call nc,0f850h		;649a
	dec c			;649d
l649eh:
	jp pe,0d30dh		;649e
l64a1h:
	ld d,b			;64a1
	ret m			;64a2
l64a3h:
	jr z,l648fh		;64a3
	add hl,bc		;64a5
	push de			;64a6
	ld d,b			;64a7
	call nc,0d550h		;64a8
	ld d,b			;64ab
	call nc,0f850h		;64ac
l64afh:
	dec c			;64af
	jp pe,0d30dh		;64b0
	ld d,b			;64b3
	ret m			;64b4
	jr z,l64a1h		;64b5
	add hl,bc		;64b7
	push de			;64b8
	ld d,b			;64b9
	call nc,0f850h		;64ba
	dec c			;64bd
	jp pe,0d30dh		;64be
	ld d,b			;64c1
	ret m			;64c2
	jr z,l64afh		;64c3
	add hl,bc		;64c5
	push de			;64c6
	ld d,b			;64c7
	call nc,0fb00h		;64c8
	inc bc			;64cb
	push de			;64cc
	ld d,b			;64cd
	call nc,05050h		;64ce
	push de			;64d1
	ld d,b			;64d2
	ld d,b			;64d3
	call nc,0d550h		;64d4
	ld d,b			;64d7
	call nc,0d550h		;64d8
	ld (hl),b		;64db
	ld (hl),b		;64dc
	call nc,0d570h		;64dd
	ld (hl),b		;64e0
	ld (hl),b		;64e1
	call nc,0d570h		;64e2
	ld (hl),b		;64e5
	call nc,0fe70h		;64e6
	ld bc,028f8h		;64e9
	ex de,hl		;64ec
	add hl,bc		;64ed
	jr nz,$-21		;64ee
	ex af,af'		;64f0
	jp pe,0f509h		;64f1
	push de			;64f4
	add a,b			;64f5
	add a,b			;64f6
	call nc,0d580h		;64f7
	add a,b			;64fa
	add a,b			;64fb
	call nc,0d580h		;64fc
	add a,b			;64ff
	call nc,0fb80h		;6500
	ld (bc),a		;6503
	push af			;6504
	push de			;6505
	ld (hl),b		;6506
	ld (hl),b		;6507
	call nc,0d570h		;6508
	ld (hl),b		;650b
	ld (hl),b		;650c
	call nc,0d570h		;650d
	ld (hl),b		;6510
	call nc,0fb70h		;6511
	ld (bc),a		;6514
	push af			;6515
	push de			;6516
	ld d,b			;6517
	ld d,b			;6518
	call nc,0d550h		;6519
	ld d,b			;651c
	ld d,b			;651d
	call nc,0d550h		;651e
	ld d,b			;6521
	call nc,0fb50h		;6522
	ld (bc),a		;6525
	push de			;6526
	and b			;6527
	and b			;6528
	call nc,0d5a0h		;6529
	and b			;652c
	and b			;652d
	call nc,0d5a0h		;652e
	and b			;6531
	call nc,0d5a0h		;6532
	ld (hl),b		;6535
	call nc,0d570h		;6536
	ld (hl),b		;6539
	ld (hl),b		;653a
	call nc,0d570h		;653b
	ld (hl),b		;653e
	call nc,0d570h		;653f
	ld (hl),b		;6542
	cp 001h			;6543
	ret m			;6545
	jr z,$-19		;6546
	ld b,d			;6548
	ld (hl),b		;6549
	jp (hl)			;654a
	ex af,af'		;654b
	jp pe,0f509h		;654c
	push de			;654f
	add a,b			;6550
	add a,b			;6551
	call nc,0d580h		;6552
	add a,b			;6555
	add a,b			;6556
	call nc,0d580h		;6557
	add a,b			;655a
	call nc,0fb80h		;655b
	ld (bc),a		;655e
	push af			;655f
	push de			;6560
	jr nc,$+50		;6561
	call nc,0d530h		;6563
	jr nc,$+50		;6566
	call nc,0d530h		;6568
	jr nc,$-42		;656b
	jr nc,$-3		;656d
	ld (bc),a		;656f
	push af			;6570
	push de			;6571
	nop			;6572
	nop			;6573
	call nc,0d500h		;6574
	nop			;6577
	nop			;6578
	call nc,0d500h		;6579
	nop			;657c
	call nc,0fb00h		;657d
	ld (bc),a		;6580
	call nc,02020h		;6581
	out (020h),a		;6584
	call nc,02020h		;6586
	out (020h),a		;6589
	call nc,0d320h		;658b
l658eh:
	jr nz,$-41		;658e
	ld (hl),b		;6590
	call nc,0d570h		;6591
	ld (hl),b		;6594
	ld (hl),b		;6595
	call nc,0d570h		;6596
	ld (hl),b		;6599
	call nc,0d570h		;659a
	ld (hl),b		;659d
	cp 001h			;659e
	ret m			;65a0
	jr z,l658eh		;65a1
	ld b,d			;65a3
	ld (hl),b		;65a4
	jp (hl)			;65a5
	ex af,af'		;65a6
l65a7h:
	push af			;65a7
	jp pe,0d509h		;65a8
	ld d,b			;65ab
	call nc,0d350h		;65ac
	ld d,b			;65af
	push de			;65b0
l65b1h:
	ld d,b			;65b1
	call nc,0d350h		;65b2
	ld d,b			;65b5
	push de			;65b6
	ld d,b			;65b7
	call nc,0fb50h		;65b8
	ld (bc),a		;65bb
	push af			;65bc
	push de			;65bd
	nop			;65be
	call nc,0d300h		;65bf
l65c2h:
	nop			;65c2
	push de			;65c3
	nop			;65c4
	call nc,0d300h		;65c5
	nop			;65c8
	push de			;65c9
	nop			;65ca
	call nc,0fb00h		;65cb
	ld (bc),a		;65ce
	push af			;65cf
	push de			;65d0
	djnz l65a7h		;65d1
	djnz $+18		;65d3
	push de			;65d5
	djnz $+18		;65d6
	call nc,0d510h		;65d8
	djnz l65b1h		;65db
	djnz $-3		;65dd
	ld (bc),a		;65df
	push af			;65e0
	push de			;65e1
	jr nc,l6614h		;65e2
	call nc,0d530h		;65e4
	jr nc,l6619h		;65e7
	call nc,0d530h		;65e9
	jr nc,l65c2h		;65ec
	jr nc,$-3		;65ee
	ld (bc),a		;65f0
	ld a,(iy-05ch)		;65f1
	cp 001h			;65f4
	ret m			;65f6
	dec e			;65f7
	jp (hl)			;65f8
	inc b			;65f9
	jp pe,0eb06h		;65fa
	add hl,bc		;65fd
l65feh:
	djnz l65feh		;65fe
	ld bc,004e9h		;6600
	ret nc			;6603
	ld d,b			;6604
	jr nc,$+34		;6605
	pop de			;6607
	and b			;6608
	ld d,b			;6609
l660ah:
	jr nc,$+34		;660a
	jp nc,050a0h		;660c
	jr nc,l6631h		;660f
	out (0a0h),a		;6611
	ld d,b			;6613
l6614h:
	jr nc,l6636h		;6614
	call nc,0d3a0h		;6616
l6619h:
	jr nz,l664bh		;6619
	ld d,b			;661b
	and b			;661c
	jr nc,l666fh		;661d
	and b			;661f
	jp nc,0d320h		;6620
	ld d,b			;6623
	and b			;6624
	jp nc,03020h		;6625
	out (0a0h),a		;6628
	jp nc,03020h		;662a
	ld d,b			;662d
	jr nz,$+50		;662e
	ld d,b			;6630
l6631h:
	and b			;6631
	jr nc,$+82		;6632
	and b			;6634
	pop de			;6635
l6636h:
	jr nz,l660ah		;6636
	ld d,b			;6638
	and b			;6639
	pop de			;663a
	jr nz,$+50		;663b
	jp nc,0d1a0h		;663d
	jr nz,l6672h		;6640
	ld d,b			;6642
	jr nz,$+50		;6643
	ld d,b			;6645
	and b			;6646
	jr nc,l6699h		;6647
	and b			;6649
	ret nc			;664a
l664bh:
	jr nz,$-45		;664b
	ld d,b			;664d
	and b			;664e
	ret nc			;664f
	jr nz,$+50		;6650
	pop de			;6652
	and b			;6653
	ret nc			;6654
	jr nz,$+50		;6655
	ld d,b			;6657
	jr nc,$+34		;6658
	pop de			;665a
	and b			;665b
	ld d,b			;665c
	jr nc,$+34		;665d
	jp nc,050a0h		;665f
	jr nc,$+34		;6662
	out (0a0h),a		;6664
	ld d,b			;6666
	jr nc,l6689h		;6667
	call nc,0d3a0h		;6669
	jr nz,l669eh		;666c
	ld d,b			;666e
l666fh:
	and b			;666f
	jr nc,$+82		;6670
l6672h:
	and b			;6672
	jp nc,0d320h		;6673
	ld d,b			;6676
	and b			;6677
l6678h:
	jp nc,03020h		;6678
	out (0a0h),a		;667b
	jp nc,03020h		;667d
	ld d,b			;6680
	jr nz,$-20		;6681
	ld b,0f5h		;6683
	jp nc,08050h		;6685
	pop de			;6688
l6689h:
	nop			;6689
	jr nc,$-44		;668a
	add a,b			;668c
	pop de			;668d
	nop			;668e
	jr nc,$+82		;668f
	nop			;6691
	jr nc,l66e4h		;6692
	add a,b			;6694
	jr nc,l66e7h		;6695
	add a,b			;6697
	ret nc			;6698
l6699h:
	nop			;6699
	pop de			;669a
	or b			;669b
	ld (hl),b		;669c
	ld d,b			;669d
l669eh:
	jr nz,l6672h		;669e
	or b			;66a0
	ld (hl),b		;66a1
	ld d,b			;66a2
	jr nz,l6678h		;66a3
	or b			;66a5
	jp nc,05020h		;66a6
	ld (hl),b		;66a9
	or b			;66aa
	pop de			;66ab
	jr nz,$+82		;66ac
l66aeh:
	ld (hl),b		;66ae
	cp 001h			;66af
	ex de,hl		;66b1
	ld d,040h		;66b2
	jp (hl)			;66b4
	ex af,af'		;66b5
	ret m			;66b6
	ld (bc),a		;66b7
	jp pe,0f20ah		;66b8
	djnz l66aeh		;66bb
	ld b,a			;66bd
	out (002h),a		;66be
	ld (0d281h),a		;66c0
	rlca			;66c3
	ld (0a2d3h),a		;66c4
	add a,c			;66c7
	ld (hl),a		;66c8
	out (002h),a		;66c9
	ld (0d281h),a		;66cb
	rlca			;66ce
	ret m			;66cf
	dec d			;66d0
	defb 0ddh,027h,042h ;illegal sequence	;66d1
	in a,(002h)		;66d4
	jp pe,0d20ch		;66d6
	add a,d			;66d9
	and d			;66da
	pop de			;66db
	ld bc,0fe27h		;66dc
l66dfh:
	ld bc,087ebh		;66df
	ld h,d			;66e2
	jp (hl)			;66e3
l66e4h:
	ex af,af'		;66e4
	ret m			;66e5
	ld (bc),a		;66e6
l66e7h:
	jp pe,0ed08h		;66e7
	ld b,0f2h		;66ea
	djnz l66dfh		;66ec
	ld d,e			;66ee
	out (002h),a		;66ef
	ld (0d281h),a		;66f1
	rlca			;66f4
	ld (0a2d3h),a		;66f5
	add a,c			;66f8
	ld (hl),a		;66f9
	out (002h),a		;66fa
	ld (0d271h),a		;66fc
	rlca			;66ff
	ret m			;6700
	dec d			;6701
	out (072h),a		;6702
	or h			;6704
	jp nc,0ea22h		;6705
	dec bc			;6708
	in a,(002h)		;6709
	defb 0ddh,007h,031h ;illegal sequence	;670b
	ld d,h			;670e
	cp 001h			;670f
	ret m			;6711
	daa			;6712
	ex de,hl		;6713
	add a,h			;6714
	ld h,b			;6715
	jp (hl)			;6716
	ex af,af'		;6717
	jp pe,0ed07h		;6718
	ld b,0dbh		;671b
	ld bc,052d3h		;671d
	add a,d			;6720
	jp nc,03201h		;6721
	jp nc,05182h		;6724
	out (002h),a		;6727
	ld (0d271h),a		;6729
	rlca			;672c
	out (012h),a		;672d
	ld (07251h),a		;672f
	add a,d			;6732
	and c			;6733
	jp nc,0ea02h		;6734
	rlca			;6737
	sub 008h		;6738
	ld bc,03112h		;673a
	ld d,d			;673d
	ld (hl),d		;673e
	add a,c			;673f
	ret c			;6740
	call c,0f4fdh		;6741
	and l			;6744
	cp 001h			;6745
	ret m			;6747
	dec bc			;6748
	ex de,hl		;6749
	inc h			;674a
	ld d,b			;674b
	jp (hl)			;674c
	ex af,af'		;674d
	jp pe,0db0bh		;674e
	ld (bc),a		;6751
	jp p,0f116h		;6752
	ld d,(hl)		;6755
	jp nc,010d6h		;6756
	ld (bc),a		;6759
	scf			;675a
	ret c			;675b
	jr nc,$-43		;675c
	and c			;675e
	jp nc,08131h		;675f
	and b			;6762
	ld d,a			;6763
	jp (hl)			;6764
	inc b			;6765
	djnz l678ch		;6766
	jp (hl)			;6768
	ex af,af'		;6769
	ld (051d2h),a		;676a
	add a,a			;676d
	jp nc,004e9h		;676e
	ld b,b			;6771
	ld d,h			;6772
	jp (hl)			;6773
	ex af,af'		;6774
	pop af			;6775
	ld d,d			;6776
	and d			;6777
	pop de			;6778
	ld sp,0d257h		;6779
	inc hl			;677c
	ret m			;677d
	dec d			;677e
	defb 0ddh,045h ;ld b,ixl	;677f
	ld b,d			;6781
	jp pe,0d10eh		;6782
	jr nz,$+50		;6785
	ld d,b			;6787
l6788h:
	ld (hl),b		;6788
	cp 001h			;6789
	ex de,hl		;678b
l678ch:
	add a,a			;678c
	ld h,b			;678d
	jp (hl)			;678e
	ex af,af'		;678f
	ret m			;6790
	dec d			;6791
	jp pe,0f20dh		;6792
	djnz l6788h		;6795
l6797h:
	ld d,e			;6797
	defb 0edh ;next byte illegal after ed	;6798
	inc b			;6799
	pop de			;679a
	add a,c			;679b
	call pe,002eah		;679c
	add a,b			;679f
	jp pe,0eb0dh		;67a0
	add a,a			;67a3
	ld h,b			;67a4
	defb 0edh ;next byte illegal after ed	;67a5
	inc b			;67a6
	ld sp,0eaech		;67a7
	ld (bc),a		;67aa
	jr nc,l6797h		;67ab
	dec c			;67ad
	ex de,hl		;67ae
	add a,a			;67af
	ld h,b			;67b0
	defb 0edh ;next byte illegal after ed	;67b1
	inc b			;67b2
	nop			;67b3
	ret nz			;67b4
	jp nc,0eda5h		;67b5
	ld a,(bc)		;67b8
	ld d,b			;67b9
	ld (hl),b		;67ba
	pop de			;67bb
	dec sp			;67bc
	jp nc,03020h		;67bd
	ld d,b			;67c0
	ld (hl),b		;67c1
	add a,c			;67c2
	ret nz			;67c3
	ld (0c000h),a		;67c4
	and a			;67c7
	jp pe,0d10ch		;67c8
	ld d,d			;67cb
	ld (hl),d		;67cc
	add a,c			;67cd
	jp pe,0a30bh		;67ce
	jp pe,0ed0dh		;67d1
	ld a,(bc)		;67d4
	jp (hl)			;67d5
	ex af,af'		;67d6
	pop de			;67d7
	jr nz,l680ah		;67d8
	ld d,b			;67da
	ld (hl),b		;67db
	cp 001h			;67dc
	ex de,hl		;67de
	add a,a			;67df
	ld h,b			;67e0
	jp (hl)			;67e1
	ex af,af'		;67e2
	ret m			;67e3
	dec d			;67e4
	jp pe,0ed0eh		;67e5
l67e8h:
	inc bc			;67e8
	jp p,0f110h		;67e9
	ld d,e			;67ec
	pop de			;67ed
	add a,c			;67ee
	call pe,002eah		;67ef
	add a,b			;67f2
	jp pe,0eb0dh		;67f3
	add a,a			;67f6
	ld h,b			;67f7
	ld sp,0eaech		;67f8
	ld (bc),a		;67fb
	jr nc,l67e8h		;67fc
l67feh:
	dec c			;67fe
	ex de,hl		;67ff
	add a,a			;6800
	ld h,b			;6801
	nop			;6802
	ret nz			;6803
	jp nc,0eda5h		;6804
	ld b,050h		;6807
	ld (hl),b		;6809
l680ah:
	defb 0edh ;next byte illegal after ed	;680a
	inc bc			;680b
	pop de			;680c
	dec sp			;680d
	defb 0edh ;next byte illegal after ed	;680e
	dec b			;680f
	jp nc,02000h		;6810
	jr nc,l6865h		;6813
	defb 0edh ;next byte illegal after ed	;6815
	inc bc			;6816
	ld (hl),c		;6817
l6818h:
	ret nz			;6818
	ld (0c000h),a		;6819
	and a			;681c
	pop de			;681d
	ld hl,031c0h		;681e
	ret nz			;6821
	ld d,c			;6822
	ex de,hl		;6823
	add a,a			;6824
	ld (hl),b		;6825
	ld (hl),l		;6826
	call pe,003eah		;6827
	ld (hl),c		;682a
	cp 001h			;682b
	ex de,hl		;682d
	add a,a			;682e
	ld h,d			;682f
	jp (hl)			;6830
	ex af,af'		;6831
	jp pe,0ed0bh		;6832
	ex af,af'		;6835
	ret m			;6836
	ld a,(bc)		;6837
	pop de			;6838
	nop			;6839
	jr nz,$+50		;683a
	jr nz,l67feh		;683c
	ld bc,0c080h		;683e
	ld (hl),b		;6841
	ret nz			;6842
	ld d,c			;6843
	jr nc,l6818h		;6844
	ld (hl),b		;6846
	add a,b			;6847
	pop de			;6848
	scf			;6849
	jp (hl)			;684a
	inc b			;684b
	jr nz,$+50		;684c
	jp (hl)			;684e
	ex af,af'		;684f
	jp nc,08070h		;6850
	pop de			;6853
	jr nc,l68a6h		;6854
	ld (hl),b		;6856
	add a,b			;6857
	ret nc			;6858
	jr nc,$-45		;6859
l685bh:
	ld (hl),c		;685b
	ret nz			;685c
	add a,c			;685d
	ret nz			;685e
	ret nc			;685f
	ld sp,l71d1h		;6860
	ret nz			;6863
	add a,c			;6864
l6865h:
	ret nz			;6865
	ret nc			;6866
	nop			;6867
	jr nc,l68e1h		;6868
	ret m			;686a
	ld hl,(008eah)		;686b
	ex de,hl		;686e
	add hl,bc		;686f
	djnz l685bh		;6870
	inc b			;6872
	ret nc			;6873
	ld (hl),c		;6874
	ld (hl),c		;6875
	pop de			;6876
	and c			;6877
	ld sp,l71d2h		;6878
	out (0a1h),a		;687b
	ld sp,081d4h		;687d
	defb 0fdh,045h ;ld b,iyl	;6880
	and a			;6882
	cp 001h			;6883
	ret m			;6885
	dec bc			;6886
	ex de,hl		;6887
	inc h			;6888
	ld d,b			;6889
	jp (hl)			;688a
	ex af,af'		;688b
	jp pe,0db0bh		;688c
	ld (bc),a		;688f
	jp p,0f116h		;6890
	ld d,(hl)		;6893
	jp nc,010d6h		;6894
	ld bc,0d887h		;6897
	add a,b			;689a
	ld sp,0d181h		;689b
	ld bc,0d220h		;689e
	and a			;68a1
	jp (hl)			;68a2
	inc b			;68a3
	ld b,b			;68a4
	ld d,h			;68a5
l68a6h:
	jp (hl)			;68a6
	ex af,af'		;68a7
	and d			;68a8
	pop de			;68a9
	ld hl,0d237h		;68aa
	jp (hl)			;68ad
	inc b			;68ae
	sub b			;68af
	and h			;68b0
	jp (hl)			;68b1
	ex af,af'		;68b2
	pop af			;68b3
	ld b,e			;68b4
	pop de			;68b5
	ld (0eb71h),a		;68b6
	daa			;68b9
	ld d,b			;68ba
	xor c			;68bb
	call pe,001eah		;68bc
	and c			;68bf
	ret m			;68c0
	dec d			;68c1
	in a,(001h)		;68c2
	jp nc,001eeh		;68c4
	ex de,hl		;68c7
	add a,a			;68c8
	ld h,b			;68c9
	defb 0edh ;next byte illegal after ed	;68ca
	ex af,af'		;68cb
	jp pe,0a007h		;68cc
	pop de			;68cf
	nop			;68d0
	jr nz,l6903h		;68d1
	cp 001h			;68d3
	ex de,hl		;68d5
	add a,e			;68d6
l68d7h:
	ld h,b			;68d7
	defb 0edh ;next byte illegal after ed	;68d8
	inc b			;68d9
	jp (hl)			;68da
	ex af,af'		;68db
	ret m			;68dc
	dec d			;68dd
	jp pe,0f208h		;68de
l68e1h:
	djnz $-13		;68e1
	ld d,e			;68e3
	pop de			;68e4
	ld (0d202h),a		;68e5
	add a,e			;68e8
	ex de,hl		;68e9
	rlca			;68ea
	jr nz,l68d7h		;68eb
	rlca			;68ed
	and l			;68ee
	ld d,b			;68ef
	ld (hl),b		;68f0
	jp pe,0d107h		;68f1
	dec sp			;68f4
	jp pe,0d206h		;68f5
	jr nz,l692ah		;68f8
	ld d,b			;68fa
	ld (hl),b		;68fb
	add a,d			;68fc
	ld (0a701h),a		;68fd
	pop de			;6900
	ld d,d			;6901
	ld (hl),d		;6902
l6903h:
	add a,c			;6903
	jp pe,0a306h		;6904
	jp pe,0e907h		;6907
	ex af,af'		;690a
	pop de			;690b
	jr nz,l693eh		;690c
	cp 001h			;690e
	ex de,hl		;6910
	add a,e			;6911
l6912h:
	ld h,b			;6912
	defb 0edh ;next byte illegal after ed	;6913
	inc b			;6914
	jp (hl)			;6915
	ex af,af'		;6916
	ret m			;6917
	dec d			;6918
	jp pe,0f208h		;6919
	djnz $-13		;691c
	ld d,e			;691e
	pop de			;691f
	ld (0d202h),a		;6920
	add a,c			;6923
	ex de,hl		;6924
	rlca			;6925
	jr nz,l6912h		;6926
	rlca			;6928
	and a			;6929
l692ah:
	ld d,b			;692a
l692bh:
	ld (hl),b		;692b
	pop de			;692c
	dec sp			;692d
	jp nc,02000h		;692e
l6931h:
	jr nc,l6983h		;6931
	ld (hl),d		;6933
	ld (0a701h),a		;6934
	pop de			;6937
	ld hl,031c0h		;6938
	ret nz			;693b
	ld d,c			;693c
	ld (hl),e		;693d
l693eh:
	call pe,002eah		;693e
	ld (hl),c		;6941
	cp 001h			;6942
	ex de,hl		;6944
	rlca			;6945
	jr nz,l6931h		;6946
	ex af,af'		;6948
	jp pe,0c106h		;6949
	ret m			;694c
	ld a,(bc)		;694d
	pop de			;694e
	nop			;694f
	jr nz,l6982h		;6950
	ld hl,08101h		;6952
	ld (hl),c		;6955
	ld d,c			;6956
	jr nc,l692bh		;6957
	ld (hl),b		;6959
	add a,b			;695a
	pop de			;695b
	scf			;695c
	jp (hl)			;695d
	inc b			;695e
	jr nz,l6991h		;695f
	jp (hl)			;6961
	ex af,af'		;6962
	jp nc,08070h		;6963
	pop de			;6966
	jr nc,l69b9h		;6967
	ld (hl),b		;6969
l696ah:
	add a,b			;696a
	ret nc			;696b
	jr nc,$-45		;696c
	ld (hl),d		;696e
	add a,d			;696f
	ret nc			;6970
	ld sp,l72d1h		;6971
	add a,d			;6974
	ret nc			;6975
	nop			;6976
	jr nc,l69eeh		;6977
	ret m			;6979
	ld hl,(008eah)		;697a
	ex de,hl		;697d
	add hl,bc		;697e
	djnz l696ah		;697f
	inc b			;6981
l6982h:
	ret nc			;6982
l6983h:
	ret nz			;6983
	add a,c			;6984
	ld sp,l71d1h		;6985
	jp nc,031a1h		;6988
	out (071h),a		;698b
	call nc,sub_70a1h	;698d
	rst 28h			;6990
l6991h:
	defb 0fdh,083h,0a8h ;illegal sequence	;6991
	ld sp,hl		;6994
	add hl,de		;6995
	xor d			;6996
	ld sp,hl		;6997
	add hl,de		;6998
	xor d			;6999
	cp 004h			;699a
	jp (hl)			;699c
	inc b			;699d
	push af			;699e
	ld sp,09101h		;699f
	ld bc,00191h		;69a2
	ld sp,09101h		;69a5
	nop			;69a8
	nop			;69a9
	ld de,00000h		;69aa
	sub c			;69ad
	sub c			;69ae
	ld sp,09101h		;69af
	ld bc,00191h		;69b2
	ld sp,09101h		;69b5
	nop			;69b8
l69b9h:
	nop			;69b9
	ld de,0fb91h		;69ba
	ld (bc),a		;69bd
	cp 004h			;69be
	jp (hl)			;69c0
	inc b			;69c1
	ld sp,09101h		;69c2
	ld bc,00191h		;69c5
	ld sp,09101h		;69c8
	nop			;69cb
	nop			;69cc
	ld de,00000h		;69cd
	sub c			;69d0
	sub c			;69d1
	ld sp,09101h		;69d2
	ld bc,00191h		;69d5
	ld sp,09101h		;69d8
	nop			;69db
	nop			;69dc
	ld de,03191h		;69dd
	ld bc,00191h		;69e0
	sub c			;69e3
	ld bc,00131h		;69e4
	sub c			;69e7
	nop			;69e8
	nop			;69e9
	ld de,00000h		;69ea
	sub c			;69ed
l69eeh:
	sub c			;69ee
	ld sp,03111h		;69ef
	ld de,01131h		;69f2
	ld sp,03131h		;69f5
	ld sp,010feh		;69f8
	sub c			;69fb
	sub c			;69fc
	push af			;69fd
	ld sp,hl		;69fe
	ld a,(0fbaah)		;69ff
	inc b			;6a02
	push af			;6a03
	ld sp,hl		;6a04
	ld a,(0fbaah)		;6a05
	inc bc			;6a08
	ld sp,03111h		;6a09
	ld de,01131h		;6a0c
	ld sp,03111h		;6a0f
	ld de,010feh		;6a12
	sub e			;6a15
	defb 0fdh,094h ;sub iyh	;6a16
	xor c			;6a18
	cp 004h			;6a19
	jp (hl)			;6a1b
	inc b			;6a1c
	push af			;6a1d
	ld sp,09101h		;6a1e
	ld bc,00191h		;6a21
	ld sp,09101h		;6a24
	nop			;6a27
	nop			;6a28
	ld de,0fb91h		;6a29
	inc bc			;6a2c
	ld sp,09101h		;6a2d
	ld bc,00191h		;6a30
	ld sp,03111h		;6a33
	ld de,03131h		;6a36
	jp m,004feh		;6a39
	jp (hl)			;6a3c
	inc b			;6a3d
	sub c			;6a3e
	ld bc,00031h		;6a3f
	nop			;6a42
	cp 010h			;6a43
	inc hl			;6a45
	cp 004h			;6a46
	sub c			;6a48
	ld bc,00011h		;6a49
	nop			;6a4c
	cp 010h			;6a4d
	sub e			;6a4f
	cp 004h			;6a50
	jp m,0b5f9h		;6a52
	xor d			;6a55
	ld sp,hl		;6a56
	or l			;6a57
	xor d			;6a58
	ld sp,hl		;6a59
	jp c,001aah		;6a5a
	jp nc,0d181h		;6a5d
	ld sp,081d2h		;6a60
	pop de			;6a63
	ld sp,0f9dch		;6a64
	jp c,0d2aah		;6a67
	add a,c			;6a6a
	pop de			;6a6b
	ld bc,0d231h		;6a6c
	and c			;6a6f
	pop de			;6a70
	ld hl,0f9dch		;6a71
	inc l			;6a74
	xor e			;6a75
	jp pe,0d108h		;6a76
	daa			;6a79
	jp nc,0d1a3h		;6a7a
	ld bc,04121h		;6a7d
	ld d,l			;6a80
	jp nc,0d301h		;6a81
	sub c			;6a84
	jp nc,0d321h		;6a85
	sub c			;6a88
	jp nc,02141h		;6a89
	ld d,c			;6a8c
	ld b,c			;6a8d
	ld (hl),c		;6a8e
	ld d,c			;6a8f
	sub c			;6a90
	ld sp,hl		;6a91
	inc l			;6a92
	xor e			;6a93
	jp pe,0d108h		;6a94
	nop			;6a97
	djnz l6abfh		;6a98
	jp nc,0a0a3h		;6a9a
	or b			;6a9d
	pop de			;6a9e
	dec b			;6a9f
	jp nc,0d393h		;6aa0
	ld sp,l7101h		;6aa3
	ld sp,l71a1h		;6aa6
l6aa9h:
	jp nc,0d301h		;6aa9
	and c			;6aac
	jp nc,00131h		;6aad
	ld (hl),c		;6ab0
	call c,053fdh		;6ab1
	xor d			;6ab4
	cp 001h			;6ab5
	jp (hl)			;6ab7
	inc b			;6ab8
	xor 006h		;6ab9
	ex de,hl		;6abb
	add hl,de		;6abc
	jr nz,l6aa9h		;6abd
l6abfh:
	dec bc			;6abf
l6ac0h:
	push af			;6ac0
	out (021h),a		;6ac1
	call nc,0d391h		;6ac3
	ld hl,091d4h		;6ac6
	out (091h),a		;6ac9
	call nc,0d321h		;6acb
	ld hl,0d431h		;6ace
	ld sp,031d3h		;6ad1
	call nc,sub_7191h	;6ad4
	ei			;6ad7
	inc b			;6ad8
	jp m,001feh		;6ad9
	jp (hl)			;6adc
	inc b			;6add
	pop bc			;6ade
	xor 001h		;6adf
	ex de,hl		;6ae1
	add hl,bc		;6ae2
	djnz l6ac0h		;6ae3
	inc b			;6ae5
	jp pe,0d109h		;6ae6
	ld hl,02191h		;6ae9
	and c			;6aec
	ld hl,02101h		;6aed
	jp nc,0d191h		;6af0
	ld d,c			;6af3
	jp nc,0d191h		;6af4
	ld d,c			;6af7
	jp nc,08191h		;6af8
	jp nc,0d151h		;6afb
	ld hl,02191h		;6afe
	and c			;6b01
	ld hl,02101h		;6b02
	jp nc,0d191h		;6b05
	ld d,c			;6b08
	jp nc,0d191h		;6b09
	ld d,c			;6b0c
	jp nc,0d191h		;6b0d
	ld bc,00171h		;6b10
	add a,c			;6b13
	ld bc,001a1h		;6b14
	jp nc,0d181h		;6b17
	ld sp,081d2h		;6b1a
	pop de			;6b1d
	ld sp,081d2h		;6b1e
	pop de			;6b21
	ld d,c			;6b22
	ld sp,001d1h		;6b23
	ld (hl),c		;6b26
	ld bc,00181h		;6b27
	and c			;6b2a
	jp m,001feh		;6b2b
	jp (hl)			;6b2e
	inc b			;6b2f
l6b30h:
	pop bc			;6b30
	xor 001h		;6b31
	defb 0ddh,085h ;add a,ixl	;6b33
	ld (004dbh),a		;6b35
	defb 0edh ;next byte illegal after ed	;6b38
	rlca			;6b39
	jp pe,0f208h		;6b3a
	djnz l6b30h		;6b3d
	ld b,e			;6b3f
	pop de			;6b40
	nop			;6b41
	djnz $+39		;6b42
	jp nc,0d1a3h		;6b44
	rlca			;6b47
	jp nc,0ea93h		;6b48
	inc b			;6b4b
	ret nc			;6b4c
	ld hl,091d1h		;6b4d
	ld d,c			;6b50
	ld hl,02151h		;6b51
	ld d,c			;6b54
	sub c			;6b55
	ret nc			;6b56
	ld hl,091d1h		;6b57
	ld d,c			;6b5a
	ld hl,0f9fah		;6b5b
	xor l			;6b5e
	xor e			;6b5f
	ld sp,hl		;6b60
	xor l			;6b61
	xor e			;6b62
	ld sp,hl		;6b63
	jp nc,0f8abh		;6b64
	ld d,d			;6b67
	out (001h),a		;6b68
	call nc,l7101h		;6b6a
	ld bc,00181h		;6b6d
	ld sp,hl		;6b70
	jp nc,0f8abh		;6b71
	ld h,h			;6b74
	jp pe,0d50eh		;6b75
	add a,c			;6b78
	call nc,08101h		;6b79
	push de			;6b7c
	and c			;6b7d
	call nc,0a121h		;6b7e
	push af			;6b81
	ld sp,hl		;6b82
	ld hl,0fbach		;6b83
	ld (bc),a		;6b86
	ld sp,hl		;6b87
	ld hl,0d5ach		;6b88
	and c			;6b8b
	ld d,c			;6b8c
	call nc,05121h		;6b8d
	and c			;6b90
	ld hl,001d4h		;6b91
	push de			;6b94
	ld b,c			;6b95
	ld (hl),c		;6b96
	call nc,04101h		;6b97
	ld (hl),c		;6b9a
	ld bc,0a1d5h		;6b9b
	call nc,sub_7131h	;6b9e
l6ba1h:
	and c			;6ba1
	ld (hl),c		;6ba2
	ld (hl),c		;6ba3
	ld sp,0a171h		;6ba4
	out (001h),a		;6ba7
	ld sp,05dfdh		;6ba9
	xor e			;6bac
	cp 001h			;6bad
	ret m			;6baf
	ld d,d			;6bb0
	jp (hl)			;6bb1
	inc b			;6bb2
	ex de,hl		;6bb3
	add hl,sp		;6bb4
	jr nc,l6ba1h		;6bb5
	dec c			;6bb7
	push af			;6bb8
	call nc,0d521h		;6bb9
	sub c			;6bbc
	call nc,0d521h		;6bbd
	sub c			;6bc0
	call nc,0d591h		;6bc1
l6bc4h:
	ld hl,021d4h		;6bc4
	ld sp,031d5h		;6bc7
	call nc,0d531h		;6bca
	sub c			;6bcd
	ld (hl),c		;6bce
	ei			;6bcf
	inc b			;6bd0
	jp m,001feh		;6bd1
	jp (hl)			;6bd4
	inc b			;6bd5
	ex de,hl		;6bd6
	add hl,sp		;6bd7
	jr nc,l6bc4h		;6bd8
	dec c			;6bda
	ret m			;6bdb
	inc d			;6bdc
	call nc,09121h		;6bdd
	ld hl,021a1h		;6be0
	ret m			;6be3
	ld d,d			;6be4
	out (001h),a		;6be5
	ld hl,021d4h		;6be7
	sub c			;6bea
	ld hl,021a1h		;6beb
	out (001h),a		;6bee
	call nc,0f8a1h		;6bf0
	inc d			;6bf3
	ld hl,02191h		;6bf4
	and c			;6bf7
	ld hl,052f8h		;6bf8
	out (001h),a		;6bfb
	ld hl,021d4h		;6bfd
	sub c			;6c00
	ld hl,021a1h		;6c01
	ret m			;6c04
	inc d			;6c05
	ld bc,00171h		;6c06
	add a,c			;6c09
	ld bc,0f8a1h		;6c0a
	ld d,d			;6c0d
	out (001h),a		;6c0e
	call nc,l7101h		;6c10
	ld bc,00181h		;6c13
	and c			;6c16
	add a,c			;6c17
	ret m			;6c18
	inc d			;6c19
	ld bc,00171h		;6c1a
	add a,c			;6c1d
	ld bc,0faa1h		;6c1e
	cp 001h			;6c21
	ret m			;6c23
	ld d,d			;6c24
	jp (hl)			;6c25
	inc b			;6c26
	ex de,hl		;6c27
	ld (hl),d		;6c28
	ld b,h			;6c29
	jp pe,0d50dh		;6c2a
	and c			;6c2d
	ld d,c			;6c2e
	call nc,05121h		;6c2f
	and c			;6c32
	ld hl,001d4h		;6c33
	push de			;6c36
	ld b,c			;6c37
	ld (hl),c		;6c38
	call nc,04101h		;6c39
	ld (hl),c		;6c3c
	ld hl,091d5h		;6c3d
	call nc,05121h		;6c40
	sub c			;6c43
	ld d,c			;6c44
	ld d,c			;6c45
	ld hl,09151h		;6c46
	out (021h),a		;6c49
	ld d,c			;6c4b
	jp m,0bbf9h		;6c4c
	xor h			;6c4f
	ld sp,hl		;6c50
	cp e			;6c51
	xor h			;6c52
	ld sp,hl		;6c53
	sub 0ach		;6c54
	ld bc,081d2h		;6c56
	pop de			;6c59
	ld sp,081d2h		;6c5a
	pop de			;6c5d
	ld sp,081d2h		;6c5e
	ld sp,hl		;6c61
	sub 0ach		;6c62
	ret m			;6c64
	ld (bc),a		;6c65
	jp pe,0eb0eh		;6c66
	add hl,sp		;6c69
	ld d,b			;6c6a
	in a,(001h)		;6c6b
	jp nc,0d181h		;6c6d
	ld bc,0d231h		;6c70
	and c			;6c73
	pop de			;6c74
	ld hl,0dc51h		;6c75
	ld sp,hl		;6c78
	daa			;6c79
	xor l			;6c7a
	pop de			;6c7b
	daa			;6c7c
	jp nc,0d1a3h		;6c7d
	ld bc,04121h		;6c80
	ld d,l			;6c83
	ret m			;6c84
	dec b			;6c85
	jp nc,0d301h		;6c86
	sub c			;6c89
	jp nc,0d321h		;6c8a
	sub c			;6c8d
	jp nc,02141h		;6c8e
	ld d,c			;6c91
	ld b,c			;6c92
	ld (hl),c		;6c93
	ld d,c			;6c94
	sub c			;6c95
	ld (hl),c		;6c96
	ld sp,hl		;6c97
	daa			;6c98
	xor l			;6c99
	pop de			;6c9a
	nop			;6c9b
	djnz $+39		;6c9c
	jp nc,0a0a3h		;6c9e
	or b			;6ca1
	pop de			;6ca2
	dec b			;6ca3
	jp nc,0f893h		;6ca4
	dec b			;6ca7
	out (031h),a		;6ca8
	ld bc,03171h		;6caa
	and c			;6cad
	ld (hl),c		;6cae
	jp nc,0d301h		;6caf
	and c			;6cb2
	jp nc,00131h		;6cb3
	ld (hl),c		;6cb6
	ld sp,04dfdh		;6cb7
	xor h			;6cba
	cp 001h			;6cbb
	ret m			;6cbd
	dec bc			;6cbe
	jp (hl)			;6cbf
	inc b			;6cc0
	defb 0ddh,002h,076h ;illegal sequence	;6cc1
	jp pe,0f509h		;6cc4
	jp nc,02151h		;6cc7
	ld (hl),c		;6cca
	ld hl,02191h		;6ccb
	ld d,c			;6cce
	inc hl			;6ccf
	ld hl,09171h		;6cd0
	ei			;6cd3
	inc b			;6cd4
	jp m,001feh		;6cd5
	ret m			;6cd8
	ld a,(bc)		;6cd9
	jp (hl)			;6cda
	inc b			;6cdb
	defb 0ddh,002h,076h ;illegal sequence	;6cdc
	jp pe,0db0ah		;6cdf
	ld (bc),a		;6ce2
	pop de			;6ce3
	ld hl,02191h		;6ce4
	and c			;6ce7
	ld hl,02101h		;6ce8
	jp nc,0d191h		;6ceb
	ld d,c			;6cee
	jp nc,0d191h		;6cef
	ld d,c			;6cf2
	jp nc,08191h		;6cf3
	jp nc,0d151h		;6cf6
	ld hl,02191h		;6cf9
	and c			;6cfc
	ld hl,02101h		;6cfd
	jp nc,0d191h		;6d00
	ld d,c			;6d03
	jp nc,0d191h		;6d04
	ld d,c			;6d07
	jp nc,0d191h		;6d08
	ld bc,00171h		;6d0b
	add a,c			;6d0e
	ld bc,001a1h		;6d0f
	jp nc,0d181h		;6d12
	ld sp,081d2h		;6d15
	pop de			;6d18
	ld sp,081d2h		;6d19
	pop de			;6d1c
	ld d,c			;6d1d
	ld sp,001d1h		;6d1e
	ld (hl),c		;6d21
	ld bc,00181h		;6d22
	and c			;6d25
	jp m,001feh		;6d26
	ret m			;6d29
	ld a,(bc)		;6d2a
	jp (hl)			;6d2b
	inc b			;6d2c
	dec (ix+043h)		;6d2d
	jp pe,0db0dh		;6d30
	ld bc,010f2h		;6d33
	pop af			;6d36
	ld d,e			;6d37
	push af			;6d38
	pop de			;6d39
	nop			;6d3a
	djnz l6d62h		;6d3b
	jp nc,0d1a3h		;6d3d
	rlca			;6d40
	jp nc,0f893h		;6d41
	ld hl,(009eah)		;6d44
	defb 0ddh,004h,086h ;illegal sequence	;6d47
	pop de			;6d4a
	ld hl,091d2h		;6d4b
	ld d,c			;6d4e
	ld hl,02151h		;6d4f
	ld d,c			;6d52
	sub c			;6d53
	pop de			;6d54
	ld hl,091d2h		;6d55
	ld d,c			;6d58
	ld hl,00af8h		;6d59
	dec (ix+043h)		;6d5c
	jp pe,0fa0dh		;6d5f
l6d62h:
	ld sp,hl		;6d62
	jp nz,0f9adh		;6d63
	jp nz,0f9adh		;6d66
	call m,0e9adh		;6d69
	inc b			;6d6c
	ld (hl),c		;6d6d
	ld (hl),c		;6d6e
	ld (hl),c		;6d6f
	ld (hl),l		;6d70
	ret m			;6d71
	dec c			;6d72
	jp pe,0710ch		;6d73
	ld (hl),c		;6d76
	ld (hl),c		;6d77
	and c			;6d78
	add a,c			;6d79
	ret c			;6d7a
	ld sp,hl		;6d7b
	call m,0e9adh		;6d7c
	inc b			;6d7f
	ld (hl),c		;6d80
	ld (hl),c		;6d81
	ld (hl),l		;6d82
	ret m			;6d83
	ld (bc),a		;6d84
	jp pe,0eb0dh		;6d85
	add hl,hl		;6d88
	ld d,b			;6d89
	jp nc,00101h		;6d8a
	ld bc,02121h		;6d8d
	ld hl,0dcd8h		;6d90
	ld sp,hl		;6d93
	ld h,a			;6d94
	xor (hl)		;6d95
	pop de			;6d96
	ld d,a			;6d97
	inc hl			;6d98
	ld b,c			;6d99
	ld d,c			;6d9a
	ld (hl),c		;6d9b
	sub l			;6d9c
	ret m			;6d9d
	ld d,d			;6d9e
	jp pe,0d10ah		;6d9f
	ld (hl),c		;6da2
	sub c			;6da3
	ld d,c			;6da4
	ld (hl),c		;6da5
	ld b,c			;6da6
	ld d,c			;6da7
	ld hl,00141h		;6da8
	ld hl,0a1d2h		;6dab
	pop de			;6dae
	ld bc,067f9h		;6daf
	xor (hl)		;6db2
	pop de			;6db3
	jr nc,l6df6h		;6db4
	ld d,l			;6db6
	inc hl			;6db7
	ld b,a			;6db8
	inc bc			;6db9
	djnz l6ddch		;6dba
	dec (hl)		;6dbc
	ld (hl),e		;6dbd
	xor e			;6dbe
	defb 0fdh,062h ;ld iyh,d	;6dbf
l6dc1h:
	xor l			;6dc1
	cp 001h			;6dc2
	ret m			;6dc4
	add hl,bc		;6dc5
	jp (hl)			;6dc6
	inc b			;6dc7
	ex de,hl		;6dc8
	add a,d			;6dc9
	ld b,b			;6dca
	jp pe,0f20dh		;6dcb
	djnz l6dc1h		;6dce
	ld h,(hl)		;6dd0
	defb 0edh ;next byte illegal after ed	;6dd1
	ld (bc),a		;6dd2
	jp nc,0ed9bh		;6dd3
	dec bc			;6dd6
	jp nc,01000h		;6dd7
l6ddah:
	defb 0edh ;next byte illegal after ed	;6dda
	ld (bc),a		;6ddb
l6ddch:
	add hl,hl		;6ddc
	ld a,e			;6ddd
	defb 0edh ;next byte illegal after ed	;6dde
	dec bc			;6ddf
	jp nc,04030h		;6de0
	defb 0edh ;next byte illegal after ed	;6de3
	ld (bc),a		;6de4
	ld e,c			;6de5
	sbc a,e			;6de6
	defb 0edh ;next byte illegal after ed	;6de7
	dec bc			;6de8
	pop de			;6de9
	nop			;6dea
	djnz l6ddah		;6deb
	ld (bc),a		;6ded
	add hl,hl		;6dee
	jp nc,0edabh		;6def
	dec bc			;6df2
	pop de			;6df3
	djnz l6e16h		;6df4
l6df6h:
	defb 0edh ;next byte illegal after ed	;6df6
	ld (bc),a		;6df7
	ld sp,0a373h		;6df8
	jp m,001feh		;6dfb
	ret m			;6dfe
	ld d,d			;6dff
	jp (hl)			;6e00
	inc b			;6e01
	ex de,hl		;6e02
	ld b,d			;6e03
	ld b,d			;6e04
	jp pe,0db0bh		;6e05
	ld bc,010f2h		;6e08
	pop af			;6e0b
	ld b,(hl)		;6e0c
	sub 004h		;6e0d
	inc b			;6e0f
	jp (hl)			;6e10
	ld (bc),a		;6e11
	out (070h),a		;6e12
	add a,b			;6e14
	sub c			;6e15
l6e16h:
	jp (hl)			;6e16
	inc b			;6e17
	sub c			;6e18
	sub c			;6e19
	sub c			;6e1a
	sub l			;6e1b
	ret m			;6e1c
	dec c			;6e1d
	jp pe,0d20ch		;6e1e
	ld bc,00101h		;6e21
	out (0b1h),a		;6e24
	or c			;6e26
	and c			;6e27
	and c			;6e28
	ret m			;6e29
	ld d,d			;6e2a
	jp pe,0e90bh		;6e2b
	ld (bc),a		;6e2e
	ld (hl),b		;6e2f
	add a,b			;6e30
	sub c			;6e31
	jp (hl)			;6e32
	inc b			;6e33
	sub c			;6e34
	sub c			;6e35
	sub c			;6e36
	sub l			;6e37
	ret m			;6e38
	dec c			;6e39
	jp pe,0d20ch		;6e3a
	ld bc,00101h		;6e3d
	out (0a1h),a		;6e40
	or c			;6e42
	ret m			;6e43
	ld d,d			;6e44
	jp pe,0e90bh		;6e45
	ld (bc),a		;6e48
	ld d,b			;6e49
	ld h,b			;6e4a
	ld (hl),c		;6e4b
	jp (hl)			;6e4c
	inc b			;6e4d
	ld (hl),c		;6e4e
	ld (hl),c		;6e4f
	ld (hl),c		;6e50
	ld (hl),l		;6e51
	ret m			;6e52
	dec c			;6e53
	jp pe,0710ch		;6e54
	ld (hl),c		;6e57
	ld (hl),c		;6e58
	add a,c			;6e59
	add a,c			;6e5a
	and c			;6e5b
	and c			;6e5c
	ret m			;6e5d
	ld d,d			;6e5e
	jp pe,0e90bh		;6e5f
	ld (bc),a		;6e62
	ld d,b			;6e63
	ld h,b			;6e64
	ld (hl),c		;6e65
	jp m,001feh		;6e66
	ret m			;6e69
	ld a,(bc)		;6e6a
	jp (hl)			;6e6b
	inc b			;6e6c
	dec (ix+043h)		;6e6d
	jp pe,0db0dh		;6e70
	ld bc,010f2h		;6e73
	pop af			;6e76
	ld d,e			;6e77
	pop de			;6e78
	jr nc,l6ebbh		;6e79
	ld d,l			;6e7b
	inc hl			;6e7c
	ld b,a			;6e7d
	inc bc			;6e7e
	jp nc,0d197h		;6e7f
	inc hl			;6e82
	jp nc,0fa9bh		;6e83
	ld sp,hl		;6e86
	rst 18h			;6e87
	xor (hl)		;6e88
	ld sp,hl		;6e89
	rst 18h			;6e8a
	xor (hl)		;6e8b
	ld sp,hl		;6e8c
	inc e			;6e8d
	xor a			;6e8e
	ld bc,00101h		;6e8f
	dec b			;6e92
	ret m			;6e93
	dec c			;6e94
	jp pe,0010ch		;6e95
	ld bc,03101h		;6e98
	ld de,0f9d8h		;6e9b
	inc e			;6e9e
	xor a			;6e9f
	ld bc,00501h		;6ea0
	ret m			;6ea3
	ld (bc),a		;6ea4
	jp pe,0eb0dh		;6ea5
	add hl,hl		;6ea8
	ld d,b			;6ea9
	ld sp,03131h		;6eaa
	ld d,c			;6ead
	ld d,c			;6eae
	ld d,c			;6eaf
	ret c			;6eb0
	call c,089f9h		;6eb1
	xor a			;6eb4
	pop de			;6eb5
	ld d,a			;6eb6
	inc hl			;6eb7
	ld b,c			;6eb8
	ld d,c			;6eb9
	ld (hl),c		;6eba
l6ebbh:
	sub e			;6ebb
	ret m			;6ebc
	ld d,d			;6ebd
	jp nz,006eah		;6ebe
	ld (hl),c		;6ec1
	sub c			;6ec2
	ld d,c			;6ec3
	ld (hl),c		;6ec4
	ld b,c			;6ec5
	ld d,c			;6ec6
	ld hl,00141h		;6ec7
	ld hl,0a0d2h		;6eca
	ld sp,hl		;6ecd
	adc a,c			;6ece
	xor a			;6ecf
	pop de			;6ed0
	jr nc,l6f13h		;6ed1
	ld d,l			;6ed3
	inc hl			;6ed4
	ld b,a			;6ed5
l6ed6h:
	inc bc			;6ed6
	djnz $+34		;6ed7
	dec (hl)		;6ed9
	ld (hl),e		;6eda
	xor c			;6edb
	add a,(iy-052h)		;6edc
	cp 001h			;6edf
	ret m			;6ee1
	add hl,bc		;6ee2
	jp (hl)			;6ee3
	inc b			;6ee4
	pop bc			;6ee5
	xor 001h		;6ee6
	ex de,hl		;6ee8
	add a,e			;6ee9
	jr nz,l6ed6h		;6eea
	ld a,(bc)		;6eec
	jp p,0f110h		;6eed
	ld h,(hl)		;6ef0
	defb 0edh ;next byte illegal after ed	;6ef1
	ld (bc),a		;6ef2
	jp nc,0ed9bh		;6ef3
	add hl,bc		;6ef6
	jp nc,01000h		;6ef7
l6efah:
	defb 0edh ;next byte illegal after ed	;6efa
	ld (bc),a		;6efb
	add hl,hl		;6efc
	ld a,e			;6efd
	defb 0edh ;next byte illegal after ed	;6efe
	add hl,bc		;6eff
	jp nc,04030h		;6f00
	defb 0edh ;next byte illegal after ed	;6f03
	ld (bc),a		;6f04
	ld e,c			;6f05
	sbc a,e			;6f06
	defb 0edh ;next byte illegal after ed	;6f07
	add hl,bc		;6f08
	pop de			;6f09
	nop			;6f0a
	djnz l6efah		;6f0b
	ld (bc),a		;6f0d
	add hl,hl		;6f0e
	jp nc,0edabh		;6f0f
	add hl,bc		;6f12
l6f13h:
	pop de			;6f13
	djnz $+34		;6f14
	defb 0edh ;next byte illegal after ed	;6f16
	ld (bc),a		;6f17
	ld sp,0a173h		;6f18
	jp m,001feh		;6f1b
	ret m			;6f1e
	ld d,d			;6f1f
	jp (hl)			;6f20
	inc b			;6f21
	ex de,hl		;6f22
	ld b,d			;6f23
	ld b,d			;6f24
	jp pe,0db0bh		;6f25
	ld bc,010f2h		;6f28
	pop af			;6f2b
	ld b,(hl)		;6f2c
	sub 004h		;6f2d
	inc b			;6f2f
	jp (hl)			;6f30
	ld (bc),a		;6f31
	jp nc,01000h		;6f32
	ld hl,004e9h		;6f35
	ld hl,02121h		;6f38
	dec h			;6f3b
	ret m			;6f3c
	dec c			;6f3d
	jp pe,0510ch		;6f3e
	ld d,c			;6f41
	ld d,c			;6f42
	ld b,c			;6f43
	ld b,c			;6f44
	ld sp,0f831h		;6f45
	ld d,d			;6f48
	jp pe,0e90bh		;6f49
	ld (bc),a		;6f4c
	nop			;6f4d
	djnz l6f71h		;6f4e
	jp (hl)			;6f50
	inc b			;6f51
	ld hl,02121h		;6f52
	dec h			;6f55
	ret m			;6f56
	dec c			;6f57
	jp pe,0510ch		;6f58
	ld d,c			;6f5b
	ld d,c			;6f5c
	ld sp,0f841h		;6f5d
	ld d,d			;6f60
	jp pe,0e90bh		;6f61
	ld (bc),a		;6f64
	out (0a0h),a		;6f65
	or b			;6f67
	jp nc,0e901h		;6f68
	inc b			;6f6b
	ld bc,00101h		;6f6c
	dec b			;6f6f
	ret m			;6f70
l6f71h:
	dec c			;6f71
	jp pe,0010ch		;6f72
	ld bc,01101h		;6f75
	ld de,03131h		;6f78
	ret m			;6f7b
	ld d,d			;6f7c
	jp pe,0e90bh		;6f7d
	ld (bc),a		;6f80
	out (0a0h),a		;6f81
	or b			;6f83
	jp nc,0e901h		;6f84
	inc b			;6f87
	jp m,001feh		;6f88
l6f8bh:
	ret m			;6f8b
	ld a,(bc)		;6f8c
	jp (hl)			;6f8d
	inc b			;6f8e
	xor 001h		;6f8f
	pop bc			;6f91
	defb 0ddh,005h,043h ;illegal sequence	;6f92
	jp pe,0f209h		;6f95
	djnz l6f8bh		;6f98
	ld d,e			;6f9a
	pop de			;6f9b
	jr nc,l6fdeh		;6f9c
	ld d,l			;6f9e
	inc hl			;6f9f
	ld b,a			;6fa0
	inc bc			;6fa1
	jp nc,0d197h		;6fa2
	inc hl			;6fa5
	jp nc,0fa9bh		;6fa6
	cp 004h			;6fa9
	ret nc			;6fab
	jp (hl)			;6fac
	dec b			;6fad
	push af			;6fae
	sub c			;6faf
	ld bc,00031h		;6fb0
	nop			;6fb3
	sub c			;6fb4
	ld de,09131h		;6fb5
	ld bc,00131h		;6fb8
	sub c			;6fbb
	ld sp,0fb11h		;6fbc
	inc bc			;6fbf
	sub c			;6fc0
	ld bc,00031h		;6fc1
	nop			;6fc4
	sub c			;6fc5
	ld de,03031h		;6fc6
	jr nz,$+34		;6fc9
	jr nz,$+34		;6fcb
	jr nc,$+34		;6fcd
	jr nz,l7001h		;6fcf
	jr nc,$+50		;6fd1
	jr nc,l7005h		;6fd3
	jr nc,$-9		;6fd5
	cp 004h			;6fd7
	ret nc			;6fd9
	jp (hl)			;6fda
	dec b			;6fdb
	push af			;6fdc
	sub c			;6fdd
l6fdeh:
	ld de,00031h		;6fde
	nop			;6fe1
	sub c			;6fe2
	nop			;6fe3
	nop			;6fe4
	ld sp,007fbh		;6fe5
	jr nc,$+34		;6fe8
	jr nz,l700ch		;6fea
	jr nz,$+34		;6fec
	jr nz,l7020h		;6fee
	jr nc,$+50		;6ff0
	jr nc,l7024h		;6ff2
	jr nc,l7026h		;6ff4
	jr nc,l7028h		;6ff6
	cp 004h			;6ff8
	ret nc			;6ffa
	jp (hl)			;6ffb
	dec b			;6ffc
	push af			;6ffd
	sub b			;6ffe
	nop			;6fff
	nop			;7000
l7001h:
	nop			;7001
	ld sp,00000h		;7002
l7005h:
	sub c			;7005
	jr nc,l7008h		;7006
l7008h:
	ld de,00090h		;7008
	ei			;700b
l700ch:
	inc bc			;700c
	ld sp,00090h		;700d
	nop			;7010
	sub b			;7011
	ld sp,00011h		;7012
	nop			;7015
	ld sp,03030h		;7016
	push af			;7019
	sub c			;701a
	ld de,00031h		;701b
	nop			;701e
	sub c			;701f
l7020h:
	ld de,00031h		;7020
	nop			;7023
l7024h:
	ei			;7024
	inc bc			;7025
l7026h:
	jr nc,$+34		;7026
l7028h:
	jr nz,l704ah		;7028
	jr nz,l704ch		;702a
	jr nz,$+34		;702c
	jr nc,$+50		;702e
	jr nc,$+50		;7030
	jr nc,$+50		;7032
	jr nc,l7066h		;7034
	cp 004h			;7036
	ret nc			;7038
	jp (hl)			;7039
	dec b			;703a
	push af			;703b
	sub b			;703c
	nop			;703d
	sub b			;703e
	sub b			;703f
	ld sp,00000h		;7040
	sub c			;7043
	ld sp,09031h		;7044
	ld de,03190h		;7047
l704ah:
	nop			;704a
	nop			;704b
l704ch:
	sub c			;704c
	ld sp,0fb31h		;704d
	inc bc			;7050
	sub c			;7051
	ld de,00031h		;7052
	nop			;7055
	sub c			;7056
	ld sp,09131h		;7057
	ld de,01191h		;705a
	jr nc,l708fh		;705d
	jr nc,l7091h		;705f
	jr nc,l7093h		;7061
	defb 0fdh,0a9h,0afh ;illegal sequence	;7063
l7066h:
	cp 001h			;7066
	jp (hl)			;7068
	ld a,(bc)		;7069
	pop af			;706a
	ld d,h			;706b
	jp p,0eb20h		;706c
	add a,c			;706f
	djnz $-20		;7070
	ex af,af'		;7072
	sub 003h		;7073
	cp e			;7075
	jp nc,0ea9dh		;7076
	rlca			;7079
	sbc a,l			;707a
	ret c			;707b
	cp 001h			;707c
	ex de,hl		;707e
	add a,d			;707f
	inc hl			;7080
	defb 0edh ;next byte illegal after ed	;7081
	inc b			;7082
	jp (hl)			;7083
	dec b			;7084
	jp pe,0f508h		;7085
	jp nc,0d190h		;7088
	jr nz,$+66		;708b
	ld d,b			;708d
	sub b			;708e
l708fh:
	ld d,b			;708f
	ld b,b			;7090
l7091h:
	ei			;7091
	inc b			;7092
l7093h:
	jp pe,0f505h		;7093
	jp nc,0d190h		;7096
	jr nz,$+66		;7099
	ld d,b			;709b
	sub b			;709c
	ld d,b			;709d
	ld b,b			;709e
	ei			;709f
	ld (bc),a		;70a0
sub_70a1h:
	jp pe,0d205h		;70a1
	sub b			;70a4
	pop de			;70a5
	jr nz,l70e8h		;70a6
	ld d,b			;70a8
	sub b			;70a9
	ld d,b			;70aa
l70abh:
	ld b,b			;70ab
	jp pe,0d206h		;70ac
	sub b			;70af
	pop de			;70b0
	jr nz,l70f3h		;70b1
	ld d,b			;70b3
	sub b			;70b4
	ld d,b			;70b5
	ld b,b			;70b6
	cp 001h			;70b7
	jp (hl)			;70b9
	dec b			;70ba
	xor 006h		;70bb
	ex de,hl		;70bd
	rla			;70be
	djnz l70abh		;70bf
	ld a,(bc)		;70c1
	push af			;70c2
	call nc,0d321h		;70c3
	ld hl,021d4h		;70c6
	out (021h),a		;70c9
	call nc,05121h		;70cb
	ld d,c			;70ce
	ei			;70cf
	inc b			;70d0
	push af			;70d1
	call nc,0d321h		;70d2
	ld hl,021d4h		;70d5
	out (021h),a		;70d8
	call nc,05121h		;70da
	ld d,c			;70dd
	ei			;70de
	inc bc			;70df
	call nc,0d321h		;70e0
	ld hl,021d4h		;70e3
	out (021h),a		;70e6
l70e8h:
	call nc,0d390h		;70e8
	djnz $+66		;70eb
	ld (hl),b		;70ed
	djnz $+66		;70ee
	ld (hl),b		;70f0
l70f1h:
	sub b			;70f1
	rst 28h			;70f2
l70f3h:
	cp 001h			;70f3
	jp (hl)			;70f5
	dec b			;70f6
	jp pe,0ed0bh		;70f7
	add hl,bc		;70fa
	ex de,hl		;70fb
	add a,(hl)		;70fc
	jr nz,l70f1h		;70fd
	dec bc			;70ff
	pop af			;7100
l7101h:
	ld b,h			;7101
	jp nc,02f5fh		;7102
	ld c,a			;7105
	rrca			;7106
	cpl			;7107
	cpl			;7108
	cpl			;7109
	cpl			;710a
	cp 001h			;710b
	jp pe,0eb0ah		;710d
	rla			;7110
	djnz l7101h		;7111
	ld b,0e9h		;7113
	dec b			;7115
	push af			;7116
	call nc,02121h		;7117
	ld hl,0a121h		;711a
	out (001h),a		;711d
	ld hl,003fbh		;711f
	call nc,0a1a1h		;7122
	and c			;7125
	and c			;7126
	and c			;7127
	and c			;7128
	and c			;7129
	push af			;712a
	call nc,02121h		;712b
	ld hl,0d421h		;712e
sub_7131h:
	and c			;7131
	out (001h),a		;7132
	ld hl,002fbh		;7134
	push af			;7137
	call nc,0d391h		;7138
	sub c			;713b
	call nc,0d391h		;713c
	sub c			;713f
	call nc,09191h		;7140
	sub c			;7143
	ei			;7144
	ld (bc),a		;7145
	rst 28h			;7146
	ld h,(iy-050h)		;7147
	cp 001h			;714a
	ret m			;714c
	jr z,$-20		;714d
	ld a,(bc)		;714f
	ex de,hl		;7150
	ld b,d			;7151
	ld (hl),b		;7152
	jp (hl)			;7153
	dec b			;7154
	push af			;7155
	push de			;7156
	ld hl,021d4h		;7157
	push de			;715a
	ld hl,021d4h		;715b
	push de			;715e
	ld hl,021d4h		;715f
	ld hl,004fbh		;7162
	push af			;7165
	push de			;7166
	ld hl,021d4h		;7167
	push de			;716a
	ld hl,021d4h		;716b
	push de			;716e
	ld hl,021d4h		;716f
	ld hl,003fbh		;7172
	push de			;7175
l7176h:
	ld hl,021d4h		;7176
	push de			;7179
	ld hl,021d4h		;717a
	ret m			;717d
	ld h,h			;717e
	push de			;717f
	ld (hl),b		;7180
	sub b			;7181
	call nc,04010h		;7182
	ld (hl),b		;7185
	sub b			;7186
	cp 001h			;7187
	ret m			;7189
	jr z,l7176h		;718a
	dec bc			;718c
	ex de,hl		;718d
	ld b,d			;718e
	ld (hl),b		;718f
	jp (hl)			;7190
sub_7191h:
	dec b			;7191
	push af			;7192
	push de			;7193
	ld hl,021d4h		;7194
	push de			;7197
	ld hl,021d4h		;7198
	push de			;719b
	ld hl,05151h		;719c
	ei			;719f
	inc b			;71a0
l71a1h:
	ret m			;71a1
	jr z,$-9		;71a2
	push de			;71a4
	ld hl,021d4h		;71a5
	push de			;71a8
	ld hl,021d4h		;71a9
	push de			;71ac
	ld hl,05151h		;71ad
	ei			;71b0
	inc bc			;71b1
	push de			;71b2
	ld hl,021d4h		;71b3
	push de			;71b6
	ld hl,021d4h		;71b7
	ret m			;71ba
	ld h,h			;71bb
	push de			;71bc
	sub b			;71bd
	call nc,04010h		;71be
	ld (hl),b		;71c1
	djnz l7204h		;71c2
	ld (hl),b		;71c4
	sub b			;71c5
	cp 001h			;71c6
	ret m			;71c8
	jr z,$-20		;71c9
	ld a,(bc)		;71cb
	ex de,hl		;71cc
	ld b,d			;71cd
	ld (hl),b		;71ce
	jp (hl)			;71cf
	dec b			;71d0
l71d1h:
	push af			;71d1
l71d2h:
	push de			;71d2
	and c			;71d3
	call nc,0fba1h		;71d4
	ex af,af'		;71d7
	push af			;71d8
	call nc,0d301h		;71d9
	ld bc,008fbh		;71dc
	push af			;71df
	push de			;71e0
	or c			;71e1
	call nc,0d5b1h		;71e2
	or c			;71e5
	call nc,0d5b1h		;71e6
	or c			;71e9
	call nc,0d5b1h		;71ea
	or c			;71ed
	call nc,0fbb1h		;71ee
	ld (bc),a		;71f1
	push af			;71f2
	push de			;71f3
l71f4h:
	and c			;71f4
	call nc,0d5a1h		;71f5
	and c			;71f8
	call nc,0d4a1h		;71f9
	ld hl,0a1d5h		;71fc
	call nc,0d501h		;71ff
	and c			;7202
	ei			;7203
l7204h:
	ld (bc),a		;7204
	cp 001h			;7205
	ret m			;7207
	jr z,l71f4h		;7208
	ld a,(bc)		;720a
	ex de,hl		;720b
	ld b,c			;720c
	add a,b			;720d
	jp (hl)			;720e
	dec b			;720f
	push af			;7210
	push de			;7211
	ld hl,02121h		;7212
	ld hl,0d4a1h		;7215
	ld bc,0fb21h		;7218
	inc bc			;721b
	push de			;721c
	and c			;721d
	and c			;721e
	and c			;721f
	and c			;7220
	and c			;7221
	and c			;7222
	and c			;7223
	push af			;7224
	push de			;7225
	ld hl,02121h		;7226
	ld hl,0a1d5h		;7229
	call nc,02101h		;722c
	ei			;722f
	ld (bc),a		;7230
	push af			;7231
	push de			;7232
	sub c			;7233
	call nc,0d591h		;7234
	sub c			;7237
	call nc,0d591h		;7238
	sub c			;723b
	sub c			;723c
	sub c			;723d
	ei			;723e
	ld (bc),a		;723f
	defb 0fdh,04ah,0b1h ;illegal sequence	;7240
	cp 001h			;7243
	ret m			;7245
	add a,l			;7246
	jp nz,00ae9h		;7247
	xor 008h		;724a
	jp pe,0ec06h		;724c
	call nc,02d2dh		;724f
	rst 28h			;7252
	cp 001h			;7253
	ret m			;7255
	dec b			;7256
	jp (hl)			;7257
	dec b			;7258
	jp pe,0eb07h		;7259
	ld de,0db60h		;725c
	ld (bc),a		;725f
	pop de			;7260
	jr nz,l72a3h		;7261
	ld d,b			;7263
	sub b			;7264
	jp pe,02006h		;7265
	ld b,b			;7268
	ld d,b			;7269
	sub b			;726a
	jp pe,02005h		;726b
	ld b,b			;726e
	ld d,b			;726f
	sub b			;7270
	jp pe,02004h		;7271
	ld b,b			;7274
	ld d,b			;7275
	sub b			;7276
	jp pe,02003h		;7277
	ld b,b			;727a
	ld d,b			;727b
l727ch:
	sub b			;727c
	jp pe,02002h		;727d
	ld b,b			;7280
l7281h:
	ld d,b			;7281
	sub b			;7282
	jp pe,02001h		;7283
	ld b,b			;7286
	ld d,b			;7287
	sub b			;7288
	jp pe,0d107h		;7289
l728ch:
	ld b,b			;728c
	ld d,b			;728d
	sub b			;728e
	ret nc			;728f
	jr nz,l727ch		;7290
	ld b,0d1h		;7292
l7294h:
	ld b,b			;7294
	ld d,b			;7295
	sub b			;7296
	ret nc			;7297
	jr nz,$-20		;7298
	dec b			;729a
	pop de			;729b
l729ch:
	ld b,b			;729c
	ld d,b			;729d
l729eh:
	sub b			;729e
	ret nc			;729f
	jr nz,l728ch		;72a0
	inc b			;72a2
l72a3h:
	pop de			;72a3
l72a4h:
	ld b,b			;72a4
	ld d,b			;72a5
	sub b			;72a6
	ret nc			;72a7
	jr nz,l7294h		;72a8
	inc bc			;72aa
	pop de			;72ab
	ld b,b			;72ac
	ld d,b			;72ad
	sub b			;72ae
	ret nc			;72af
	jr nz,l729ch		;72b0
	ld (bc),a		;72b2
	pop de			;72b3
	ld b,b			;72b4
	ld d,b			;72b5
	sub b			;72b6
	ret nc			;72b7
	jr nz,l72a4h		;72b8
	ld bc,040d1h		;72ba
	ld d,b			;72bd
	sub b			;72be
	ret nc			;72bf
	jr nz,l729eh		;72c0
	cp 001h			;72c2
	ret m			;72c4
	dec c			;72c5
	jp pe,0eb0ah		;72c6
	ld (hl),l		;72c9
	ld d,b			;72ca
	jp (hl)			;72cb
	dec b			;72cc
	jp p,0f110h		;72cd
	ld d,l			;72d0
l72d1h:
	out (0f5h),a		;72d1
	sub b			;72d3
	ld d,b			;72d4
	jr nz,$-110		;72d5
	ld d,b			;72d7
	jr nz,l732ah		;72d8
	ei			;72da
	inc b			;72db
	push af			;72dc
	and b			;72dd
	ld d,b			;72de
	jr nz,l7281h		;72df
	ld d,b			;72e1
	jr nz,l7334h		;72e2
	ei			;72e4
	ld (bc),a		;72e5
	push af			;72e6
	jp nc,0d300h		;72e7
	ld (hl),b		;72ea
	ld b,b			;72eb
	jp nc,0d300h		;72ec
	ld (hl),b		;72ef
	ld b,b			;72f0
	ld (hl),b		;72f1
	ei			;72f2
	ld (bc),a		;72f3
	out (0f5h),a		;72f4
	sub b			;72f6
	ld d,b			;72f7
	jr nz,$-110		;72f8
	ld d,b			;72fa
	jr nz,$+82		;72fb
	ei			;72fd
	inc b			;72fe
	push af			;72ff
	and b			;7300
	ld d,b			;7301
	jr nz,l72a4h		;7302
	ld d,b			;7304
	jr nz,l7357h		;7305
	ei			;7307
	ld (bc),a		;7308
	push af			;7309
	jp nc,0d300h		;730a
	ld (hl),b		;730d
	ld b,b			;730e
	jp nc,0d300h		;730f
	ld (hl),b		;7312
	ld b,b			;7313
	jp nc,0d300h		;7314
	ld b,b			;7317
	ei			;7318
	ld (bc),a		;7319
	cp 001h			;731a
	ret m			;731c
	dec c			;731d
	jp pe,0eb0ah		;731e
	ld (hl),l		;7321
	ld d,b			;7322
l7323h:
	jp (hl)			;7323
	dec b			;7324
	jp p,0f110h		;7325
	ld d,l			;7328
	push af			;7329
l732ah:
	out (0a0h),a		;732a
	jp nc,05020h		;732c
	out (0a0h),a		;732f
	jp nc,05020h		;7331
l7334h:
	and b			;7334
	jr nz,$-3		;7335
	inc b			;7337
	push af			;7338
	out (070h),a		;7339
	jp nc,00040h		;733b
	out (070h),a		;733e
	jp nc,00040h		;7340
	ld (hl),b		;7343
	nop			;7344
l7345h:
	ei			;7345
	inc b			;7346
	push af			;7347
	out (050h),a		;7348
	or b			;734a
	jp nc,0d320h		;734b
	ld d,b			;734e
	or b			;734f
l7350h:
	jp nc,05020h		;7350
	jr nz,l7350h		;7353
	inc b			;7355
	push af			;7356
l7357h:
	out (050h),a		;7357
	and b			;7359
	jp nc,0d320h		;735a
	ld d,b			;735d
	and b			;735e
l735fh:
	jp nc,05020h		;735f
	jr nz,l735fh		;7362
	inc b			;7364
	cp 001h			;7365
	jp (hl)			;7367
	ld a,(bc)		;7368
	xor 008h		;7369
	call pe,005eah		;736b
	ret m			;736e
	add a,b			;736f
	jp nz,02ad4h		;7370
	jp (hl)			;7373
	dec b			;7374
	ret m			;7375
	jr z,l73e9h		;7376
	ld d,c			;7378
	ld b,c			;7379
	jp (hl)			;737a
	ld a,(bc)		;737b
	ret m			;737c
	add a,b			;737d
	pop bc			;737e
	call nc,0d42dh		;737f
	ld hl,(005e9h)		;7382
	ret m			;7385
	jr z,l73f9h		;7386
	ld d,c			;7388
	ld b,c			;7389
	ret m			;738a
	add a,b			;738b
	pop bc			;738c
	jp (hl)			;738d
	ld a,(bc)		;738e
	call nc,0ef9dh		;738f
	defb 0fdh,043h,0b2h ;illegal sequence	;7392
l7395h:
	cp 001h			;7395
	ret m			;7397
	ld a,(bc)		;7398
	jp (hl)			;7399
	dec b			;739a
	jp pe,0db0eh		;739b
	ld (bc),a		;739e
	ex de,hl		;739f
	add hl,sp		;73a0
	jr nz,l7395h		;73a1
	dec bc			;73a3
	pop af			;73a4
	ld b,h			;73a5
	jp nc,0eb53h		;73a6
	add hl,de		;73a9
	jr nc,$-20		;73aa
	inc c			;73ac
	out (053h),a		;73ad
	ld (hl),l		;73af
	jp nc,0d373h		;73b0
	ld (hl),e		;73b3
	sub l			;73b4
	jp nc,0d353h		;73b5
	ld d,e			;73b8
	and l			;73b9
	jp nc,0d3a3h		;73ba
	and e			;73bd
	jp nc,0d225h		;73be
	ld d,e			;73c1
	out (053h),a		;73c2
	ld (hl),l		;73c4
	jp nc,0d373h		;73c5
	ld (hl),e		;73c8
	sub l			;73c9
	jp nc,0d353h		;73ca
	ld d,e			;73cd
	and l			;73ce
	jp nc,0d3a3h		;73cf
	sub e			;73d2
l73d3h:
	jp nc,0fe25h		;73d3
	ld bc,00bf8h		;73d6
	jp (hl)			;73d9
	dec b			;73da
	jp pe,0eb0ah		;73db
	add hl,de		;73de
	jr nz,l73d3h		;73df
	dec bc			;73e1
	pop af			;73e2
	ld b,h			;73e3
	jp nc,0d353h		;73e4
	ld d,e			;73e7
	ld (hl),e		;73e8
l73e9h:
	sub c			;73e9
	jp nc,0d373h		;73ea
	ld (hl),e		;73ed
	sub l			;73ee
	jp nc,0d353h		;73ef
	ld d,e			;73f2
	and e			;73f3
	jp nc,04321h		;73f4
	out (093h),a		;73f7
l73f9h:
	jp nc,05305h		;73f9
	out (053h),a		;73fc
	ld (hl),e		;73fe
	sub c			;73ff
	jp nc,0d373h		;7400
	ld (hl),e		;7403
	sub l			;7404
	jp nc,0d353h		;7405
	ld d,e			;7408
	and e			;7409
	jp nc,04321h		;740a
	out (093h),a		;740d
	jp pe,0d209h		;740f
l7412h:
	ld b,a			;7412
	cp 001h			;7413
	ret m			;7415
	ld (bc),a		;7416
	jp (hl)			;7417
	dec b			;7418
	jp pe,0eb0dh		;7419
	ld d,a			;741c
	jr nz,$-12		;741d
	djnz l7412h		;741f
	ld d,e			;7421
	jp nc,02252h		;7422
	ld d,c			;7425
	and d			;7426
	pop de			;7427
l7428h:
	ld (02f51h),hl		;7428
	ld (bc),a		;742b
l742ch:
	jp nc,0d172h		;742c
	ld bc,l7f47h		;742f
	jp nc,l75b5h		;7432
	pop de			;7435
	inc hl			;7436
	pop de			;7437
	ld (hl),l		;7438
	dec h			;7439
	ld (hl),e		;743a
	ld e,a			;743b
	ret m			;743c
	dec e			;743d
	ex de,hl		;743e
	ld d,(hl)		;743f
	djnz l742ch		;7440
	ex af,af'		;7442
	pop de			;7443
	and b			;7444
	ld d,b			;7445
	jr nz,$-44		;7446
	and b			;7448
	ld d,b			;7449
	jr nz,$-44		;744a
	and b			;744c
	ld d,b			;744d
	jr nz,$-43		;744e
	and b			;7450
	ld d,b			;7451
	jr nz,l7428h		;7452
	and b			;7454
	ld d,b			;7455
	jr nz,$-41		;7456
	and b			;7458
	cp 001h			;7459
	ret m			;745b
	dec bc			;745c
	jp (hl)			;745d
	dec b			;745e
	jp pe,0eb0bh		;745f
	ld b,h			;7462
	ld (hl),b		;7463
	in a,(002h)		;7464
	jp p,0f108h		;7466
	ld d,d			;7469
	jp nc,l7323h		;746a
	ld d,l			;746d
	ld d,c			;746e
	pop bc			;746f
	ld d,e			;7470
	ld d,l			;7471
	inc hl			;7472
	ld (hl),e		;7473
	ld d,l			;7474
	call pe,006eah		;7475
	jr nc,l74bah		;7478
	ld d,l			;747a
	ex de,hl		;747b
l747ch:
	ld b,h			;747c
	ld (hl),b		;747d
	jp pe,0a50bh		;747e
	jp nc,l7323h		;7481
	ld d,l			;7484
	ld d,c			;7485
	pop bc			;7486
	ld d,e			;7487
	ld d,l			;7488
	ld b,e			;7489
	sub e			;748a
	sub l			;748b
	ret m			;748c
	dec d			;748d
	ex de,hl		;748e
	ld d,a			;748f
	jr nz,l747ch		;7490
	ex af,af'		;7492
	call nc,0d390h		;7493
	djnz $+66		;7496
	ld (hl),b		;7498
	sub b			;7499
	jp nc,04010h		;749a
	ld (hl),b		;749d
	sub b			;749e
	pop de			;749f
	djnz $+66		;74a0
	ld (hl),b		;74a2
	sub b			;74a3
	ret nc			;74a4
	nop			;74a5
	defb 0fdh,095h ;sub iyl	;74a6
	or e			;74a8
l74a9h:
	cp 001h			;74a9
	ret m			;74ab
	ld a,(bc)		;74ac
	jp (hl)			;74ad
	dec b			;74ae
	jp pe,0db0eh		;74af
	ld (bc),a		;74b2
	ex de,hl		;74b3
	add hl,sp		;74b4
	jr nz,l74a9h		;74b5
	dec bc			;74b7
	pop af			;74b8
	ld b,h			;74b9
l74bah:
	jp nc,0ea93h		;74ba
	dec bc			;74bd
	out (093h),a		;74be
	or l			;74c0
	jp nc,0d3b3h		;74c1
	or e			;74c4
	jp nc,0d205h		;74c5
	and e			;74c8
	out (0a3h),a		;74c9
	jp nc,0d125h		;74cb
	inc hl			;74ce
	jp nc,05523h		;74cf
	jp nc,0d393h		;74d2
	sub e			;74d5
	or l			;74d6
	jp nc,0d3b3h		;74d7
	or e			;74da
	jp nc,0d205h		;74db
	and e			;74de
	out (0a3h),a		;74df
	jp nc,0d125h		;74e1
	inc hl			;74e4
	jp nc,05523h		;74e5
	cp 001h			;74e8
	ret m			;74ea
	dec bc			;74eb
	jp (hl)			;74ec
	dec b			;74ed
	jp pe,0eb0ah		;74ee
	add hl,de		;74f1
	jr nz,$-12		;74f2
	dec bc			;74f4
	pop af			;74f5
	ld b,h			;74f6
	jp nc,0d393h		;74f7
	sub e			;74fa
	or e			;74fb
	jp nc,0d201h		;74fc
	or e			;74ff
	out (0b3h),a		;7500
	jp nc,0d205h		;7502
	and e			;7505
	out (0a3h),a		;7506
	jp nc,0d323h		;7508
	and c			;750b
	jp nc,0d303h		;750c
	ld d,e			;750f
	sub l			;7510
	jp nc,0d393h		;7511
	sub e			;7514
	or e			;7515
	jp nc,0d221h		;7516
	or e			;7519
	out (0b3h),a		;751a
	jp nc,0d205h		;751c
	and e			;751f
	out (0a3h),a		;7520
	jp nc,0d323h		;7522
	and c			;7525
	jp nc,0d303h		;7526
	ld d,e			;7529
	jp pe,00709h		;752a
l752dh:
	cp 001h			;752d
l752fh:
	ret m			;752f
	ld (bc),a		;7530
	jp (hl)			;7531
	dec b			;7532
	xor 001h		;7533
	jp pe,0eb0bh		;7535
	ld d,a			;7538
	jr nz,l752dh		;7539
	djnz $-13		;753b
	ld d,h			;753d
	jp nc,0d322h		;753e
	and d			;7541
	jp nc,05221h		;7542
	and d			;7545
	jp nc,0eb21h		;7546
	ld d,l			;7549
	jr nc,$-20		;754a
	inc c			;754c
	out (025h),a		;754d
	ld b,e			;754f
l7550h:
	ld d,l			;7550
	ld b,d			;7551
	ld (bc),a		;7552
	ld b,c			;7553
	jp nc,0ea07h		;7554
	dec bc			;7557
	ex de,hl		;7558
	ld d,a			;7559
	jr nz,l752fh		;755a
	ld (hl),d		;755c
	ld b,d			;755d
	ld (hl),c		;755e
	jp nc,0d207h		;755f
	ld (hl),l		;7562
	dec h			;7563
	or e			;7564
	pop de			;7565
	dec h			;7566
	jp nc,0b3b5h		;7567
	xor a			;756a
	ret m			;756b
	dec e			;756c
	jp pe,0c105h		;756d
	pop de			;7570
	and b			;7571
	ld d,b			;7572
	jr nz,$-44		;7573
	and b			;7575
	ld d,b			;7576
	jr nz,$-44		;7577
	and b			;7579
	ld d,b			;757a
	jr nz,l7550h		;757b
	and b			;757d
	ld d,b			;757e
	jr nz,$-42		;757f
	and b			;7581
	ld d,b			;7582
	rst 28h			;7583
	cp 001h			;7584
	ret m			;7586
	dec bc			;7587
	jp (hl)			;7588
	dec b			;7589
	jp pe,0db0bh		;758a
	ld (bc),a		;758d
	ex de,hl		;758e
	ld b,h			;758f
	ld (hl),b		;7590
	jp p,0f108h		;7591
	ld d,d			;7594
	out (093h),a		;7595
	jp nc,0a5b3h		;7597
	and c			;759a
	pop bc			;759b
	and e			;759c
	sub l			;759d
	out (093h),a		;759e
	jp nc,0a5b3h		;75a0
	call pe,005eah		;75a3
	add a,b			;75a6
	sub b			;75a7
	and l			;75a8
	jp pe,0eb0bh		;75a9
	ld b,h			;75ac
	ld (hl),b		;75ad
	pop de			;75ae
l75afh:
	dec h			;75af
	out (093h),a		;75b0
	jp nc,0a5b3h		;75b2
l75b5h:
	and c			;75b5
	pop bc			;75b6
	and e			;75b7
	sub l			;75b8
	jp nc,0d193h		;75b9
	inc bc			;75bc
	ld b,l			;75bd
	ret m			;75be
	dec d			;75bf
	pop bc			;75c0
	ex de,hl		;75c1
	daa			;75c2
	jr nz,l75afh		;75c3
	ld a,(bc)		;75c5
	call nc,0d390h		;75c6
	djnz l760bh		;75c9
	ld (hl),b		;75cb
	sub b			;75cc
	jp nc,04010h		;75cd
	ld (hl),b		;75d0
	sub b			;75d1
	pop de			;75d2
	djnz l7615h		;75d3
	ld (hl),b		;75d5
	defb 0fdh,0a9h,0b4h ;illegal sequence	;75d6
	cp 004h			;75d9
	jp (hl)			;75db
	ld b,0d4h		;75dc
	sub a			;75de
	sub a			;75df
l75e0h:
	sub a			;75e0
	sub a			;75e1
	sub a			;75e2
	sub a			;75e3
	cp 001h			;75e4
	rst 8			;75e6
	jp nz,0feffh		;75e7
	ld bc,006e9h		;75ea
	jp 004e9h		;75ed
	xor 001h		;75f0
	ex de,hl		;75f2
	add a,a			;75f3
	djnz l75e0h		;75f4
	ld b,0edh		;75f6
	inc b			;75f8
	out (071h),a		;75f9
	jp nc,00121h		;75fb
	ld (hl),c		;75fe
	ld hl,021d1h		;75ff
	out (061h),a		;7602
	jp nc,0d311h		;7604
	or c			;7607
	jp nc,01161h		;7608
l760bh:
	ret nc			;760b
	ld de,011d1h		;760c
	or c			;760f
	ret nc			;7610
	ld de,0b161h		;7611
	ret nc			;7614
l7615h:
	ld de,01161h		;7615
	pop de			;7618
	or c			;7619
	ret nc			;761a
	ld h,c			;761b
	ld de,0b1d1h		;761c
	push af			;761f
	ret nc			;7620
	ld d,c			;7621
	ld bc,0a1d1h		;7622
	ei			;7625
	inc b			;7626
	pop af			;7627
	ld d,h			;7628
	jp p,0e90ah		;7629
l762ch:
	ld b,0d1h		;762c
	sbc a,e			;762e
	call pe,001eah		;762f
	di			;7632
	sub d			;7633
	rst 38h			;7634
	cp 001h			;7635
	jp (hl)			;7637
	ld b,0c1h		;7638
	jp (hl)			;763a
	inc b			;763b
	xor 001h		;763c
	ex de,hl		;763e
	add a,a			;763f
	djnz l762ch		;7640
	ex af,af'		;7642
	defb 0edh ;next byte illegal after ed	;7643
	dec b			;7644
	out (071h),a		;7645
	jp nc,00121h		;7647
	ld (hl),c		;764a
	ld hl,021d1h		;764b
	out (061h),a		;764e
	jp nc,0d311h		;7650
	or c			;7653
	jp nc,01161h		;7654
	ret nc			;7657
	ld de,011d1h		;7658
	or c			;765b
	ret nc			;765c
	ld de,0b161h		;765d
	ret nc			;7660
	ld de,01161h		;7661
	pop de			;7664
	or c			;7665
	ret nc			;7666
	ld h,c			;7667
	ld de,0b1d1h		;7668
	push af			;766b
	ret nc			;766c
	ld d,c			;766d
	ld bc,0a1d1h		;766e
	ei			;7671
	inc b			;7672
	jp (hl)			;7673
	ld b,0f1h		;7674
	ld b,e			;7676
	jp p,0d10ah		;7677
	sbc a,l			;767a
	call pe,001eah		;767b
	di			;767e
	sub d			;767f
	rst 38h			;7680
	cp 001h			;7681
	ret m			;7683
	inc d			;7684
	jp (hl)			;7685
	ld b,0ddh		;7686
	dec b			;7688
	ld d,e			;7689
	jp pe,0db0fh		;768a
	ld bc,007d4h		;768d
	rlca			;7690
	rlca			;7691
	rlca			;7692
	rlca			;7693
	rlca			;7694
	call pe,009eah		;7695
	ret m			;7698
	add a,b			;7699
	jp nz,00fd4h		;769a
	ret m			;769d
	ld h,0ech		;769e
	jp pe,00201h		;76a0
	rst 38h			;76a3
	cp 001h			;76a4
	ret m			;76a6
	ld d,h			;76a7
	jp (hl)			;76a8
	inc b			;76a9
	ex de,hl		;76aa
	add a,a			;76ab
	ld h,d			;76ac
	jp pe,0ed0ch		;76ad
	ld a,(bc)		;76b0
	call nc,0d371h		;76b1
	ld hl,l7101h		;76b4
	ld hl,021d2h		;76b7
	call nc,0d361h		;76ba
	ld de,0b1d4h		;76bd
	out (061h),a		;76c0
	ld de,011d2h		;76c2
	out (011h),a		;76c5
	or c			;76c7
	jp nc,l6111h		;76c8
	or c			;76cb
	pop de			;76cc
	ld de,01161h		;76cd
	jp nc,0d1b1h		;76d0
	ld h,c			;76d3
	ld de,0b1d2h		;76d4
	jp pe,0ed09h		;76d7
	rlca			;76da
	push af			;76db
	pop de			;76dc
	ld d,c			;76dd
	ld bc,0a1d2h		;76de
	ei			;76e1
	inc b			;76e2
	ret m			;76e3
	ld a,(bc)		;76e4
	jp (hl)			;76e5
	ld b,0f2h		;76e6
	dec d			;76e8
	pop af			;76e9
	ld b,h			;76ea
	jp pe,0eb0bh		;76eb
	add a,(hl)		;76ee
	ld b,b			;76ef
	sub 003h		;76f0
	inc bc			;76f2
	pop de			;76f3
	sbc a,a			;76f4
	ret c			;76f5
	di			;76f6
	call pe,001eah		;76f7
	sub d			;76fa
	rst 38h			;76fb
	cp 001h			;76fc
l76feh:
	jp (hl)			;76fe
	ld b,0eeh		;76ff
	ex af,af'		;7701
	ret m			;7702
	add a,c			;7703
	add a,0ech		;7704
	jp pe,0d403h		;7706
	inc bc			;7709
	rst 28h			;770a
	ret nz			;770b
	xor 004h		;770c
	ret m			;770e
	ld (bc),a		;770f
	ex de,hl		;7710
	daa			;7711
	jr nz,l76feh		;7712
	ex af,af'		;7714
	jp p,0f115h		;7715
	ld b,h			;7718
	sub 002h		;7719
	ld (bc),a		;771b
	jp (hl)			;771c
	inc b			;771d
	jp nc,07121h		;771e
	pop de			;7721
	ld hl,006e9h		;7722
	rla			;7725
l7726h:
	jp nc,0e9bbh		;7726
	inc b			;7729
	or e			;772a
	jp (hl)			;772b
	ld b,0afh		;772c
	call pe,004e9h		;772e
	jp pe,0a101h		;7731
	ret m			;7734
	inc d			;7735
	jp (hl)			;7736
	ld b,0ebh		;7737
	and a			;7739
	djnz l7726h		;773a
	ld b,0edh		;773c
	inc b			;773e
	jp nc,0ec9fh		;773f
	jp pe,0f301h		;7742
	ret c			;7745
	sub c			;7746
	rst 38h			;7747
	cp 001h			;7748
	jp (hl)			;774a
	ld b,0f8h		;774b
	add a,c			;774d
	add a,0ech		;774e
	jp pe,0d403h		;7750
	inc bc			;7753
	ret m			;7754
	ld (bc),a		;7755
	ex de,hl		;7756
	ld d,d			;7757
	ld b,b			;7758
	jp pe,0db0dh		;7759
	ld bc,015f2h		;775c
	pop af			;775f
	ld b,h			;7760
	sub 002h		;7761
	ld (bc),a		;7763
	jp (hl)			;7764
	inc b			;7765
	out (091h),a		;7766
	jp nc,09121h		;7768
	jp (hl)			;776b
	ld b,087h		;776c
	ld l,e			;776e
	jp (hl)			;776f
	inc b			;7770
	ld h,e			;7771
	jp nc,006e9h		;7772
	ld e,a			;7775
	call pe,002eah		;7776
	jp (hl)			;7779
	inc b			;777a
	ld d,c			;777b
	ret m			;777c
	inc d			;777d
	ex de,hl		;777e
	ld b,d			;777f
	ld b,b			;7780
	jp pe,0e90eh		;7781
	ld b,0ebh		;7784
	and (hl)		;7786
	ld b,b			;7787
	defb 0edh ;next byte illegal after ed	;7788
	dec b			;7789
l778ah:
	jp nc,0ec9fh		;778a
	jp pe,0f301h		;778d
	ret c			;7790
	sub d			;7791
	rst 38h			;7792
	cp 001h			;7793
	ret m			;7795
	ld (bc),a		;7796
	jp (hl)			;7797
	ld b,0c3h		;7798
	ex de,hl		;779a
	ld d,d			;779b
	ld b,b			;779c
	jp pe,0db0dh		;779d
l77a0h:
	ld bc,015f2h		;77a0
	pop af			;77a3
	ld b,h			;77a4
	sub 002h		;77a5
	ld (bc),a		;77a7
	jp (hl)			;77a8
	inc b			;77a9
l77aah:
	jp nc,07121h		;77aa
	pop de			;77ad
	ld hl,006e9h		;77ae
	rla			;77b1
	jp nc,0e9bbh		;77b2
	inc b			;77b5
	or e			;77b6
	jp (hl)			;77b7
	ld b,0afh		;77b8
l77bah:
	call pe,002eah		;77ba
	jp (hl)			;77bd
	inc b			;77be
	and c			;77bf
	ret m			;77c0
	inc d			;77c1
	jp (hl)			;77c2
	ld b,0eah		;77c3
	inc c			;77c5
	ex de,hl		;77c6
	and (hl)		;77c7
	ld b,b			;77c8
	jp pe,0ed0eh		;77c9
	dec b			;77cc
	jp nc,0ec2fh		;77cd
l77d0h:
	jp pe,0f301h		;77d0
	ret c			;77d3
l77d4h:
	ld (0ffffh),hl		;77d4
	cp 001h			;77d7
	pop af			;77d9
	ld h,d			;77da
l77dbh:
	jp (hl)			;77db
	add hl,bc		;77dc
	jp pe,0d002h		;77dd
	ld c,a			;77e0
	ld c,a			;77e1
	ld c,a			;77e2
	ld c,a			;77e3
	cp 001h			;77e4
l77e6h:
	jp (hl)			;77e6
	add hl,bc		;77e7
	jp nz,093ebh		;77e8
	djnz l77dbh		;77eb
	inc bc			;77ed
	jp pe,0ed05h		;77ee
	inc bc			;77f1
	push af			;77f2
	jp nc,0b090h		;77f3
	sub b			;77f6
	pop de			;77f7
	jr nz,l778ah		;77f8
	ld b,b			;77fa
	ld h,b			;77fb
	jr nz,l77d0h		;77fc
	sub b			;77fe
	or b			;77ff
	sub b			;7800
	pop de			;7801
	jr nz,$-110		;7802
	ld b,b			;7804
	ld h,b			;7805
	jr nz,$-3		;7806
	rlca			;7808
	jp nc,0b090h		;7809
	sub b			;780c
	pop de			;780d
	jr nz,l77a0h		;780e
	ld b,b			;7810
	ld h,b			;7811
	jr nz,l77e6h		;7812
	sub b			;7814
	or b			;7815
	sub b			;7816
	pop de			;7817
	jr nz,l77aah		;7818
	rst 28h			;781a
	cp 004h			;781b
	ret nc			;781d
	sub c			;781e
	sub c			;781f
	nop			;7820
	nop			;7821
	ld de,0fe91h		;7822
	djnz l77bah		;7825
	cp 004h			;7827
	nop			;7829
	nop			;782a
	sub c			;782b
	sub c			;782c
	ld bc,09111h		;782d
	cp 010h			;7830
	sub e			;7832
	sub c			;7833
	cp 004h			;7834
	ret nc			;7836
	jp (hl)			;7837
l7838h:
	add hl,bc		;7838
	push af			;7839
	sub c			;783a
	ld bc,09131h		;783b
	ld bc,0fe91h		;783e
	djnz l77d4h		;7841
	cp 004h			;7843
	ld bc,00ffbh		;7845
	sub c			;7848
	ld bc,010feh		;7849
	sub c			;784c
	cp 004h			;784d
	sub c			;784f
	ld bc,0fe91h		;7850
	djnz $-110		;7853
	sub b			;7855
	sub c			;7856
	cp 004h			;7857
	ret nc			;7859
	jp (hl)			;785a
	add hl,bc		;785b
	push af			;785c
	sub c			;785d
	ld de,010feh		;785e
	sub c			;7861
	cp 004h			;7862
	nop			;7864
	sub b			;7865
l7866h:
	ld bc,03091h		;7866
	sub b			;7869
	nop			;786a
	sub c			;786b
	nop			;786c
	ld de,010feh		;786d
l7870h:
	sub c			;7870
	cp 004h			;7871
	sub c			;7873
	sub c			;7874
	sub c			;7875
	ld sp,0fb91h		;7876
	ld (bc),a		;7879
	sub c			;787a
	ld bc,010feh		;787b
	sub c			;787e
	cp 004h			;787f
	nop			;7881
	sub b			;7882
	ld bc,03091h		;7883
l7886h:
	sub b			;7886
	nop			;7887
	sub b			;7888
	nop			;7889
	sub b			;788a
	sub c			;788b
	cp 010h			;788c
	sub c			;788e
	cp 004h			;788f
	sub c			;7891
	cp 010h			;7892
	sub c			;7894
	sub c			;7895
	sub b			;7896
	sub b			;7897
	sub c			;7898
	push af			;7899
	cp 010h			;789a
l789ch:
	jp (hl)			;789c
	add hl,bc		;789d
	sub c			;789e
	ld hl,02191h		;789f
	sub b			;78a2
	cp 004h			;78a3
	sub b			;78a5
	djnz l7838h		;78a6
	cp 010h			;78a8
	sub b			;78aa
	cp 004h			;78ab
	sub b			;78ad
	djnz $-110		;78ae
l78b0h:
	ei			;78b0
	djnz l78b0h		;78b1
l78b3h:
	call po,0feb7h		;78b3
	ld bc,l62f1h		;78b6
	jp (hl)			;78b9
	add hl,bc		;78ba
	jp pe,0d002h		;78bb
	ld l,a			;78be
	ld l,a			;78bf
	ld l,a			;78c0
	ld l,a			;78c1
l78c2h:
	jp (hl)			;78c2
	add hl,bc		;78c3
	ex de,hl		;78c4
	sub e			;78c5
	ld hl,001eeh		;78c6
	pop bc			;78c9
	jp pe,0ed07h		;78ca
	inc b			;78cd
	push af			;78ce
l78cfh:
	jp nc,0b090h		;78cf
l78d2h:
	sub b			;78d2
	pop de			;78d3
	jr nz,l7866h		;78d4
	ld b,b			;78d6
	ld h,b			;78d7
	jr nz,$-44		;78d8
	sub b			;78da
	or b			;78db
	sub b			;78dc
	pop de			;78dd
	jr nz,l7870h		;78de
	ld b,b			;78e0
	ld h,b			;78e1
	jr nz,$-3		;78e2
	add hl,bc		;78e4
	jp nc,0b090h		;78e5
	sub b			;78e8
	pop de			;78e9
	jr nz,$-110		;78ea
	ld b,b			;78ec
	ld h,b			;78ed
	jr nz,l78c2h		;78ee
	sub b			;78f0
	or b			;78f1
	sub b			;78f2
	pop de			;78f3
	jr nz,l7886h		;78f4
	ld b,b			;78f6
	rst 28h			;78f7
	jp (hl)			;78f8
	add hl,bc		;78f9
	xor 001h		;78fa
	pop bc			;78fc
	jp pe,0ed07h		;78fd
	inc b			;7900
	ex de,hl		;7901
	sub e			;7902
	ld hl,0d2f5h		;7903
	sub b			;7906
	or b			;7907
	sub b			;7908
	pop de			;7909
	jr nz,l789ch		;790a
	ld b,b			;790c
	ld h,b			;790d
	jr nz,$-3		;790e
	rrca			;7910
l7911h:
	jp nc,0b0a0h		;7911
	and b			;7914
	pop de			;7915
	jr nz,$-94		;7916
	ld b,b			;7918
	ld h,b			;7919
	jr nz,l7911h		;791a
	jp nc,0b090h		;791c
	sub b			;791f
	pop de			;7920
	jr nz,l78b3h		;7921
	ld b,b			;7923
	ld h,b			;7924
	jr nz,$-3		;7925
	rrca			;7927
	jp nc,0b0a0h		;7928
	and b			;792b
	pop de			;792c
	jr nz,l78cfh		;792d
	ld b,b			;792f
	rst 28h			;7930
	jp (hl)			;7931
	add hl,bc		;7932
	xor 001h		;7933
	pop bc			;7935
	jp pe,0ed08h		;7936
	inc b			;7939
	ex de,hl		;793a
	sub e			;793b
	ld hl,0d2f5h		;793c
	sub b			;793f
	or b			;7940
	sub b			;7941
	pop de			;7942
	jr nz,$-110		;7943
	ld b,b			;7945
	ld h,b			;7946
	jr nz,$-3		;7947
	ld b,0f5h		;7949
	jp nc,0b080h		;794b
	add a,b			;794e
	pop de			;794f
	jr nz,l78d2h		;7950
	ld b,b			;7952
	ld h,b			;7953
	jr nz,$-3		;7954
	ld (bc),a		;7956
	push af			;7957
	jp nc,0b090h		;7958
	sub b			;795b
	pop de			;795c
	jr nz,$-110		;795d
	ld b,b			;795f
	ld h,b			;7960
	jr nz,$-3		;7961
	inc bc			;7963
	jp nc,0b090h		;7964
	sub b			;7967
	pop de			;7968
	jr nz,$-110		;7969
	ld b,b			;796b
	jp (hl)			;796c
	add hl,bc		;796d
	jp pe,0ee08h		;796e
	ld bc,0ebc1h		;7971
	sub e			;7974
	ld hl,006edh		;7975
	pop de			;7978
	push af			;7979
	jr nz,l799ch		;797a
	sub b			;797c
	sub b			;797d
	ret nc			;797e
	jr nz,$+34		;797f
	pop de			;7981
	sub b			;7982
	sub b			;7983
	ei			;7984
	rra			;7985
	jr nz,l79a8h		;7986
	sub b			;7988
	sub b			;7989
	ret nc			;798a
	jr nz,l79adh		;798b
	defb 0fdh,0c2h,0b8h ;illegal sequence	;798d
	cp 001h			;7990
	pop af			;7992
	ld h,d			;7993
	jp (hl)			;7994
	add hl,bc		;7995
	jp pe,0d002h		;7996
	cpl			;7999
	cpl			;799a
	cpl			;799b
l799ch:
	cpl			;799c
	jp (hl)			;799d
	add hl,bc		;799e
	jp pe,0ed07h		;799f
	inc bc			;79a2
	ex de,hl		;79a3
	add a,d			;79a4
	ld sp,00af2h		;79a5
l79a8h:
	pop af			;79a8
	ld h,c			;79a9
	ret nc			;79aa
	dec d			;79ab
	dec h			;79ac
l79adh:
	ld h,l			;79ad
	sub l			;79ae
	call pe,004e9h		;79af
	jp pe,09803h		;79b2
l79b5h:
	jp pe,0eb07h		;79b5
l79b8h:
	add a,d			;79b8
	ld sp,009e9h		;79b9
	inc de			;79bc
	sub l			;79bd
	or l			;79be
	ld l,e			;79bf
	pop de			;79c0
	or d			;79c1
	ret nc			;79c2
	ld (095b1h),hl		;79c3
	ld h,l			;79c6
	inc hl			;79c7
	ld b,l			;79c8
	dec d			;79c9
	pop de			;79ca
	sub e			;79cb
	cp c			;79cc
	ret nc			;79cd
	ld de,09921h		;79ce
	pop de			;79d1
l79d2h:
	or d			;79d2
	ret nc			;79d3
	ld (095b1h),hl		;79d4
	ld h,l			;79d7
	inc hl			;79d8
	ld b,l			;79d9
	dec d			;79da
	ld h,e			;79db
	jp (hl)			;79dc
	add hl,bc		;79dd
l79deh:
	xor 003h		;79de
	jp nz,005eah		;79e0
	defb 0edh ;next byte illegal after ed	;79e3
	inc bc			;79e4
	ex de,hl		;79e5
	sub e			;79e6
	djnz l79deh		;79e7
	jp nc,0b090h		;79e9
	sub b			;79ec
	pop de			;79ed
	jr nz,$-110		;79ee
	ld b,b			;79f0
	ld h,b			;79f1
	jr nz,$-3		;79f2
	rrca			;79f4
l79f5h:
	jp nc,0b0a0h		;79f5
	and b			;79f8
	pop de			;79f9
	jr nz,l799ch		;79fa
	ld b,b			;79fc
	ld h,b			;79fd
	jr nz,l79f5h		;79fe
	jp nc,0b090h		;7a00
	sub b			;7a03
	pop de			;7a04
	jr nz,$-110		;7a05
	ld b,b			;7a07
	ld h,b			;7a08
	jr nz,$-3		;7a09
	rrca			;7a0b
	jp nc,0b0a0h		;7a0c
	and b			;7a0f
	pop de			;7a10
	jr nz,$-94		;7a11
	rst 28h			;7a13
	jp (hl)			;7a14
	add hl,bc		;7a15
l7a16h:
	xor 003h		;7a16
	jp nz,006eah		;7a18
	defb 0edh ;next byte illegal after ed	;7a1b
	inc bc			;7a1c
	ex de,hl		;7a1d
	sub e			;7a1e
	djnz l7a16h		;7a1f
	jp nc,0b090h		;7a21
	sub b			;7a24
	pop de			;7a25
	jr nz,l79b8h		;7a26
	ld b,b			;7a28
	ld h,b			;7a29
	jr nz,$-3		;7a2a
	ld b,0f5h		;7a2c
	jp nc,0b080h		;7a2e
	add a,b			;7a31
	pop de			;7a32
	jr nz,l79b5h		;7a33
	ld b,b			;7a35
	ld h,b			;7a36
	jr nz,$-3		;7a37
	ld (bc),a		;7a39
	push af			;7a3a
	jp nc,0b090h		;7a3b
	sub b			;7a3e
	pop de			;7a3f
	jr nz,l79d2h		;7a40
	ld b,b			;7a42
	ld h,b			;7a43
	jr nz,$-3		;7a44
l7a46h:
	inc bc			;7a46
	jp nc,0b090h		;7a47
	sub b			;7a4a
	pop de			;7a4b
	jr nz,l79deh		;7a4c
	jp (hl)			;7a4e
	add hl,bc		;7a4f
	jp pe,0ee06h		;7a50
	ld (bc),a		;7a53
	jp nz,093ebh		;7a54
	djnz l7a46h		;7a57
	inc b			;7a59
	pop de			;7a5a
	push af			;7a5b
	jr nz,l7a7eh		;7a5c
	sub b			;7a5e
	sub b			;7a5f
	ret nc			;7a60
	jr nz,l7a83h		;7a61
	pop de			;7a63
	sub b			;7a64
	sub b			;7a65
	ei			;7a66
	rra			;7a67
	jr nz,l7a8ah		;7a68
	sub b			;7a6a
	sub b			;7a6b
l7a6ch:
	ret nc			;7a6c
	jr nz,l7a6ch		;7a6d
	sbc a,l			;7a6f
	cp c			;7a70
	cp 001h			;7a71
	ret m			;7a73
	ld d,h			;7a74
	jp (hl)			;7a75
	add hl,bc		;7a76
	defb 0ddh,084h ;add a,ixh	;7a77
	and l			;7a79
	jp pe,0db0ch		;7a7a
	inc b			;7a7d
l7a7eh:
	defb 0edh ;next byte illegal after ed	;7a7e
	add hl,bc		;7a7f
	push af			;7a80
	out (090h),a		;7a81
l7a83h:
	or b			;7a83
	sub b			;7a84
	jp nc,09020h		;7a85
	ld b,b			;7a88
	ld h,b			;7a89
l7a8ah:
	jr nz,$-3		;7a8a
	ex af,af'		;7a8c
	ret m			;7a8d
	inc d			;7a8e
	jp (hl)			;7a8f
	add hl,bc		;7a90
	jp pe,0eb0fh		;7a91
	ld (0f570h),a		;7a94
	push de			;7a97
	or e			;7a98
	or e			;7a99
	jp (hl)			;7a9a
	ld (bc),a		;7a9b
	and c			;7a9c
	or (hl)			;7a9d
	jp (hl)			;7a9e
	add hl,bc		;7a9f
	ld b,c			;7aa0
	ld h,c			;7aa1
	call nc,0fb21h		;7aa2
	ld (bc),a		;7aa5
	push de			;7aa6
	ld (hl),e		;7aa7
	ld (hl),e		;7aa8
	jp (hl)			;7aa9
	ld (bc),a		;7aaa
	ld h,c			;7aab
	halt			;7aac
	jp (hl)			;7aad
	add hl,bc		;7aae
	call nc,0d521h		;7aaf
	ld (hl),c		;7ab2
	call nc,0d571h		;7ab3
	ld (hl),e		;7ab6
	ld (hl),e		;7ab7
	ld (hl),c		;7ab8
	call nc,0d571h		;7ab9
	ld h,c			;7abc
	call nc,0d561h		;7abd
	ld b,e			;7ac0
	ld b,e			;7ac1
	jp (hl)			;7ac2
	ld (bc),a		;7ac3
	ld sp,0e946h		;7ac4
	add hl,bc		;7ac7
	sub c			;7ac8
	or c			;7ac9
	ld b,c			;7aca
	ld h,e			;7acb
	ld h,e			;7acc
	jp (hl)			;7acd
	ld (bc),a		;7ace
	ld d,c			;7acf
	ld h,(hl)		;7ad0
	jp (hl)			;7ad1
	add hl,bc		;7ad2
	call nc,0d511h		;7ad3
	ld h,c			;7ad6
	call nc,0d561h		;7ad7
	or e			;7ada
	or e			;7adb
	jp (hl)			;7adc
	ld (bc),a		;7add
	and c			;7ade
	or (hl)			;7adf
	jp (hl)			;7ae0
	add hl,bc		;7ae1
	ld b,c			;7ae2
	ld h,c			;7ae3
	call nc,0d521h		;7ae4
	or e			;7ae7
	or e			;7ae8
	or c			;7ae9
	call nc,0d5b1h		;7aea
	ld h,c			;7aed
	call nc,0d561h		;7aee
	ld b,e			;7af1
	ld b,e			;7af2
	ld b,c			;7af3
	sub c			;7af4
	or c			;7af5
	ld b,c			;7af6
	ld h,e			;7af7
	ld h,e			;7af8
	jp (hl)			;7af9
	ld (bc),a		;7afa
	ld b,c			;7afb
	ld d,c			;7afc
	ld h,h			;7afd
	call nc,01601h		;7afe
	push de			;7b01
	ld b,c			;7b02
	ld d,c			;7b03
	ld h,h			;7b04
	call nc,06651h		;7b05
	ret m			;7b08
	inc hl			;7b09
	jp (hl)			;7b0a
	add hl,bc		;7b0b
	jp pe,0eb0fh		;7b0c
	ld (0f550h),a		;7b0f
	push de			;7b12
	or e			;7b13
	call nc,0d5b0h		;7b14
	or b			;7b17
	sub b			;7b18
	or b			;7b19
	jp nz,0d4b1h		;7b1a
	or b			;7b1d
	push de			;7b1e
	sub c			;7b1f
	or e			;7b20
	call nc,0d5b0h		;7b21
	or b			;7b24
	sub b			;7b25
	or b			;7b26
	jp nz,0d4b1h		;7b27
	or b			;7b2a
	push de			;7b2b
	sub c			;7b2c
	ld h,e			;7b2d
	call nc,0d560h		;7b2e
	ld h,b			;7b31
	ld b,b			;7b32
	ld h,b			;7b33
	jp nz,0d461h		;7b34
l7b37h:
	ld h,b			;7b37
	push de			;7b38
	ld b,c			;7b39
	ld h,e			;7b3a
	call nc,0d560h		;7b3b
	ld h,b			;7b3e
	ld b,b			;7b3f
	ld h,c			;7b40
l7b41h:
	sub c			;7b41
	or c			;7b42
	call nc,05160h		;7b43
	ld b,e			;7b46
	out (040h),a		;7b47
	call nc,02040h		;7b49
	ld b,b			;7b4c
	jp nz,0d341h		;7b4d
	ld b,b			;7b50
	push de			;7b51
	or c			;7b52
	sub e			;7b53
	call nc,0d590h		;7b54
	sub b			;7b57
	ld (hl),b		;7b58
	sub c			;7b59
	or c			;7b5a
	call nc,04011h		;7b5b
	ld sp,0d323h		;7b5e
	jr nz,l7b37h		;7b61
	jr nz,$+18		;7b63
	jr nz,$-60		;7b65
	ld hl,020d3h		;7b67
	push de			;7b6a
	sub c			;7b6b
	ld b,d			;7b6c
	or c			;7b6d
	call nc,0d540h		;7b6e
	or c			;7b71
	ld h,d			;7b72
	call nc,sub_6011h	;7b73
	ld de,002fbh		;7b76
	ret m			;7b79
	inc hl			;7b7a
	jp (hl)			;7b7b
	add hl,bc		;7b7c
	jp pe,0eb0fh		;7b7d
	ld d,d			;7b80
	ld h,b			;7b81
	in a,(001h)		;7b82
	call nc,0d343h		;7b84
	ld b,b			;7b87
	push de			;7b88
	or c			;7b89
	call nc,04122h		;7b8a
	push de			;7b8d
	ld b,b			;7b8e
	push de			;7b8f
	or c			;7b90
	call nc,0d561h		;7b91
	sub b			;7b94
	or c			;7b95
	call nc,l6111h		;7b96
	ld de,0d361h		;7b99
	ld de,l61d4h		;7b9c
	ld (hl),e		;7b9f
	out (070h),a		;7ba0
	call nc,06221h		;7ba2
	ld (hl),d		;7ba5
	out (070h),a		;7ba6
	call nc,08071h		;7ba8
	push de			;7bab
	add a,b			;7bac
	call nc,08121h		;7bad
	push de			;7bb0
	add a,c			;7bb1
	call nc,08121h		;7bb2
	out (021h),a		;7bb5
	call nc,0f581h		;7bb7
	push de			;7bba
	sub c			;7bbb
	call nc,0fb91h		;7bbc
	ld b,0d5h		;7bbf
	sub c			;7bc1
	sub c			;7bc2
	or c			;7bc3
	call nc,0f811h		;7bc4
	inc hl			;7bc7
	jp (hl)			;7bc8
	add hl,bc		;7bc9
	jp pe,0eb0fh		;7bca
	ld d,d			;7bcd
	ld h,b			;7bce
	in a,(002h)		;7bcf
	push af			;7bd1
	out (020h),a		;7bd2
	call nc,02021h		;7bd4
	out (020h),a		;7bd7
	call nc,02021h		;7bd9
	ld hl,l61d4h		;7bdc
	sub c			;7bdf
	out (021h),a		;7be0
	out (090h),a		;7be2
	call nc,09091h		;7be4
	out (090h),a		;7be7
	call nc,09091h		;7be9
	sub c			;7bec
	ld b,c			;7bed
	push de			;7bee
	sub c			;7bef
	call nc,0d391h		;7bf0
	ld (hl),b		;7bf3
	call nc,07071h		;7bf4
	out (070h),a		;7bf7
	call nc,07071h		;7bf9
	ld (hl),c		;7bfc
	out (071h),a		;7bfd
	call nc,0d361h		;7bff
	ld hl,0d440h		;7c02
	ld b,c			;7c05
	ld b,b			;7c06
	out (040h),a		;7c07
	call nc,04041h		;7c09
	sub b			;7c0c
	push de			;7c0d
	sub c			;7c0e
	sub b			;7c0f
	call nc,0d590h		;7c10
	sub c			;7c13
	sub b			;7c14
	ei			;7c15
	inc b			;7c16
	defb 0fdh,08dh ;adc a,iyl	;7c17
	cp d			;7c19
	cp 001h			;7c1a
	ret m			;7c1c
	ld d,h			;7c1d
	xor 005h		;7c1e
	jp (hl)			;7c20
	add hl,bc		;7c21
	pop bc			;7c22
	defb 0ddh,085h ;add a,ixl	;7c23
	ld h,l			;7c25
	jp pe,0db06h		;7c26
	ld (bc),a		;7c29
	defb 0edh ;next byte illegal after ed	;7c2a
	dec b			;7c2b
	push af			;7c2c
	out (090h),a		;7c2d
	or b			;7c2f
	sub b			;7c30
	jp nc,09020h		;7c31
	ld b,b			;7c34
	ld h,b			;7c35
	jr nz,$-3		;7c36
	rlca			;7c38
	out (090h),a		;7c39
	or b			;7c3b
	sub b			;7c3c
	jp nc,09020h		;7c3d
	ld b,b			;7c40
	rst 28h			;7c41
	call c,001feh		;7c42
	ret m			;7c45
	ld d,h			;7c46
	jp (hl)			;7c47
	add hl,bc		;7c48
	defb 0ddh,084h ;add a,ixh	;7c49
	and l			;7c4b
	jp pe,0ed0ch		;7c4c
	add hl,bc		;7c4f
	in a,(004h)		;7c50
	push af			;7c52
	out (090h),a		;7c53
	or b			;7c55
	sub b			;7c56
	jp nc,09020h		;7c57
	ld b,b			;7c5a
	ld h,b			;7c5b
	jr nz,$-3		;7c5c
	inc hl			;7c5e
l7c5fh:
	out (0a0h),a		;7c5f
	or b			;7c61
	and b			;7c62
	jp nc,0a020h		;7c63
	ld b,b			;7c66
	ld h,b			;7c67
	jr nz,l7c5fh		;7c68
	out (090h),a		;7c6a
	or b			;7c6c
	sub b			;7c6d
	jp nc,09020h		;7c6e
	ld b,b			;7c71
	ld h,b			;7c72
	jr nz,$-3		;7c73
	rrca			;7c75
l7c76h:
	out (0a0h),a		;7c76
	or b			;7c78
	and b			;7c79
	jp nc,0a020h		;7c7a
	ld b,b			;7c7d
	ld h,b			;7c7e
	jr nz,l7c76h		;7c7f
	out (090h),a		;7c81
	or b			;7c83
	sub b			;7c84
	jp nc,09020h		;7c85
	ld b,b			;7c88
	ld h,b			;7c89
	jr nz,$-3		;7c8a
	ld b,0f5h		;7c8c
	out (080h),a		;7c8e
	or b			;7c90
	add a,b			;7c91
	jp nc,08020h		;7c92
	ld b,b			;7c95
	ld h,b			;7c96
	jr nz,$-3		;7c97
	ld (bc),a		;7c99
	push af			;7c9a
	out (090h),a		;7c9b
	or b			;7c9d
	sub b			;7c9e
	jp nc,09020h		;7c9f
	ld b,b			;7ca2
	ld h,b			;7ca3
	jr nz,$-3		;7ca4
	inc b			;7ca6
	push af			;7ca7
	jp nc,02020h		;7ca8
	sub b			;7cab
	sub b			;7cac
	pop de			;7cad
	jr nz,l7cd0h		;7cae
	jp nc,09090h		;7cb0
l7cb3h:
	ei			;7cb3
	jr nz,l7cb3h		;7cb4
	ld b,e			;7cb6
	cp h			;7cb7
	cp 001h			;7cb8
	ret m			;7cba
	ld d,h			;7cbb
	xor 003h		;7cbc
	jp (hl)			;7cbe
	add hl,bc		;7cbf
	ret nz			;7cc0
	defb 0ddh,006h,065h ;illegal sequence	;7cc1
	jp pe,0db05h		;7cc4
	ld (bc),a		;7cc7
	push af			;7cc8
	out (090h),a		;7cc9
	or b			;7ccb
	sub b			;7ccc
	jp nc,09020h		;7ccd
l7cd0h:
	ld b,b			;7cd0
	ld h,b			;7cd1
	jr nz,$-3		;7cd2
	ld b,0d3h		;7cd4
	sub b			;7cd6
	or b			;7cd7
	sub b			;7cd8
	jp nc,09020h		;7cd9
	ld b,b			;7cdc
	ld h,b			;7cdd
	ret m			;7cde
	dec b			;7cdf
	rst 28h			;7ce0
	call pe,00beah		;7ce1
	jp (hl)			;7ce4
	inc b			;7ce5
	out (040h),a		;7ce6
	jr nc,$+34		;7ce8
	djnz l7cech		;7cea
l7cech:
	call nc,0a0b0h		;7cec
	sub b			;7cef
	add a,b			;7cf0
	ld (hl),b		;7cf1
	ld h,b			;7cf2
l7cf3h:
	ld d,b			;7cf3
	ld b,b			;7cf4
	jr nc,l7d17h		;7cf5
	djnz l7cf9h		;7cf7
l7cf9h:
	push de			;7cf9
	or b			;7cfa
	rst 28h			;7cfb
	cp 001h			;7cfc
	ret m			;7cfe
	add hl,bc		;7cff
	xor 001h		;7d00
	jp (hl)			;7d02
	add hl,bc		;7d03
	jp nz,082ebh		;7d04
	djnz l7cf3h		;7d07
	ld b,0edh		;7d09
	inc b			;7d0b
	jp p,0f10ah		;7d0c
	ld (hl),c		;7d0f
	pop de			;7d10
	dec d			;7d11
	dec h			;7d12
	ld h,l			;7d13
	sub h			;7d14
	jp (hl)			;7d15
	inc b			;7d16
l7d17h:
	ret nc			;7d17
	nop			;7d18
	djnz l7d41h		;7d19
	jp (hl)			;7d1b
	add hl,bc		;7d1c
	inc de			;7d1d
	pop de			;7d1e
	sub l			;7d1f
	or l			;7d20
	ld l,e			;7d21
	jp nc,0d1b2h		;7d22
	ld (095b1h),hl		;7d25
	ld h,l			;7d28
	inc hl			;7d29
	ld b,l			;7d2a
	dec d			;7d2b
	jp nc,0b993h		;7d2c
	pop de			;7d2f
	ld de,09921h		;7d30
	jp nc,0d1b2h		;7d33
	ld (095b1h),hl		;7d36
	ld h,l			;7d39
	inc hl			;7d3a
	ld b,l			;7d3b
	dec d			;7d3c
	ld h,c			;7d3d
	cp 001h			;7d3e
	ret m			;7d40
l7d41h:
	inc d			;7d41
l7d42h:
	xor 001h		;7d42
	jp (hl)			;7d44
	add hl,bc		;7d45
	push af			;7d46
	jp pe,0ed08h		;7d47
	rlca			;7d4a
	ex de,hl		;7d4b
	add a,e			;7d4c
	jr nz,l7d41h		;7d4d
	djnz l7d42h		;7d4f
	ld h,a			;7d51
	jp nz,0b9d3h		;7d52
	jp nc,02111h		;7d55
	ld l,e			;7d58
	ld b,c			;7d59
	ld h,e			;7d5a
	sub a			;7d5b
	sub c			;7d5c
	sub c			;7d5d
	or c			;7d5e
	ld c,a			;7d5f
	jp pe,0ec02h		;7d60
	ld b,c			;7d63
	jp pe,0eb08h		;7d64
	add a,e			;7d67
	jr nz,$+43		;7d68
	out (091h),a		;7d6a
	or c			;7d6c
	jp nc,0412bh		;7d6d
	ld h,c			;7d70
	dec de			;7d71
	out (0b1h),a		;7d72
	sub c			;7d74
	or l			;7d75
	jp nc,01123h		;7d76
	out (061h),a		;7d79
	and b			;7d7b
l7d7ch:
	ei			;7d7c
	ld (bc),a		;7d7d
	rst 28h			;7d7e
	cp 001h			;7d7f
	ret m			;7d81
	ld (bc),a		;7d82
	jp (hl)			;7d83
	ld (de),a		;7d84
l7d85h:
	ret nz			;7d85
	jp (hl)			;7d86
	add hl,bc		;7d87
	jp pe,0eb08h		;7d88
	rla			;7d8b
	jr nz,l7d7ch		;7d8c
	ld (bc),a		;7d8e
	sub 002h		;7d8f
	ld (bc),a		;7d91
	jp p,0f11ah		;7d92
	ld b,e			;7d95
	pop de			;7d96
	inc hl			;7d97
	inc de			;7d98
	jp nc,0d1b3h		;7d99
	ld (de),a		;7d9c
	jp nc,0d895h		;7d9d
	ret m			;7da0
	ld d,h			;7da1
	in a,(002h)		;7da2
	defb 0ddh,007h,054h ;illegal sequence	;7da4
	ld h,b			;7da7
	ld (hl),b		;7da8
	sbc a,b			;7da9
	call c,002f8h		;7daa
	sub 002h		;7dad
	ld (bc),a		;7daf
	ex de,hl		;7db0
	rla			;7db1
	jr nz,l7d85h		;7db2
	inc hl			;7db4
	jp nc,0b892h		;7db5
	pop de			;7db8
	or e			;7db9
	sub e			;7dba
	add a,e			;7dbb
	or e			;7dbc
	jp (hl)			;7dbd
	ld (de),a		;7dbe
	sbc a,(hl)		;7dbf
	rst 28h			;7dc0
	cp 001h			;7dc1
l7dc3h:
	push af			;7dc3
	ret m			;7dc4
	ld (bc),a		;7dc5
	jp (hl)			;7dc6
	add hl,bc		;7dc7
	xor 002h		;7dc8
	pop bc			;7dca
	jp pe,0eb09h		;7dcb
	rla			;7dce
	djnz l7dc3h		;7dcf
	ld a,(de)		;7dd1
	pop af			;7dd2
	ld d,(hl)		;7dd3
	jp nc,0f897h		;7dd4
	dec d			;7dd7
	ld h,b			;7dd8
	ld (hl),b		;7dd9
	sub l			;7dda
	ret m			;7ddb
	ld (bc),a		;7ddc
	ld (hl),e		;7ddd
	ld h,e			;7dde
	ld b,e			;7ddf
	ld h,e			;7de0
	cpl			;7de1
	ret m			;7de2
	dec d			;7de3
	jp pe,0eb0ah		;7de4
	ld b,h			;7de7
	ld b,b			;7de8
	out (0b2h),a		;7de9
	jp nc,02212h		;7deb
	ld b,d			;7dee
	ld h,c			;7def
	ei			;7df0
	inc b			;7df1
	rst 28h			;7df2
	ret c			;7df3
	defb 0fdh,0fch,0bch ;illegal sequence	;7df4
	cp 001h			;7df7
	ret m			;7df9
	dec b			;7dfa
	pop af			;7dfb
	ld (hl),d		;7dfc
	jp (hl)			;7dfd
	add hl,bc		;7dfe
	jp pe,0d102h		;7dff
	cp a			;7e02
	cp a			;7e03
	cp a			;7e04
	cp a			;7e05
	cp 001h			;7e06
	ret m			;7e08
	add hl,bc		;7e09
	jp (hl)			;7e0a
	add hl,bc		;7e0b
	jp pe,0ed0eh		;7e0c
	add hl,bc		;7e0f
	ex de,hl		;7e10
	add a,d			;7e11
	ld d,b			;7e12
	jp p,0f10ah		;7e13
	ld h,d			;7e16
	pop de			;7e17
	dec d			;7e18
	dec h			;7e19
	ld h,l			;7e1a
	sub l			;7e1b
	jp (hl)			;7e1c
	inc b			;7e1d
	ret nc			;7e1e
	nop			;7e1f
	djnz l7e48h		;7e20
	jp (hl)			;7e22
	add hl,bc		;7e23
	inc de			;7e24
	pop de			;7e25
	sub l			;7e26
	or l			;7e27
	ld l,e			;7e28
	jp nc,0d1b2h		;7e29
	ld (095b1h),hl		;7e2c
	ld h,l			;7e2f
	inc hl			;7e30
	ld b,l			;7e31
	dec d			;7e32
	jp nc,0b993h		;7e33
	pop de			;7e36
	ld de,09921h		;7e37
	jp nc,0d1b2h		;7e3a
	ld (095b1h),hl		;7e3d
	ld h,l			;7e40
	inc hl			;7e41
	ld b,l			;7e42
	dec d			;7e43
	ld h,e			;7e44
	cp 001h			;7e45
	ret m			;7e47
l7e48h:
	inc d			;7e48
	jp (hl)			;7e49
	add hl,bc		;7e4a
	push af			;7e4b
	jp pe,0ed0eh		;7e4c
	add hl,bc		;7e4f
	ex de,hl		;7e50
	add a,d			;7e51
	ld (hl),b		;7e52
	jp p,0f110h		;7e53
	ld h,a			;7e56
	out (0b9h),a		;7e57
	defb 0edh ;next byte illegal after ed	;7e59
	ex af,af'		;7e5a
	jp nc,02111h		;7e5b
	ld l,e			;7e5e
	ld b,c			;7e5f
	ld h,e			;7e60
	sub a			;7e61
	sub c			;7e62
	sub c			;7e63
	or c			;7e64
	ld c,a			;7e65
	jp pe,0ec03h		;7e66
	ld b,c			;7e69
	jp pe,0eb0eh		;7e6a
	add a,d			;7e6d
	ld (hl),b		;7e6e
	add hl,hl		;7e6f
	out (091h),a		;7e70
	or c			;7e72
	jp nc,0412bh		;7e73
	ld h,c			;7e76
	dec de			;7e77
	out (0b1h),a		;7e78
	sub c			;7e7a
	or l			;7e7b
	jp nc,01123h		;7e7c
	out (061h),a		;7e7f
	and c			;7e81
	jp nc,0fb61h		;7e82
	ld (bc),a		;7e85
	cp 001h			;7e86
	ret m			;7e88
	ld (bc),a		;7e89
	jp (hl)			;7e8a
	add hl,bc		;7e8b
	jp pe,0eb0fh		;7e8c
	ld (0d661h),a		;7e8f
	ld (bc),a		;7e92
	ld (bc),a		;7e93
	jp p,0f11ah		;7e94
	ld b,h			;7e97
	pop de			;7e98
	inc hl			;7e99
	inc de			;7e9a
	jp nc,0d1b3h		;7e9b
	ld (de),a		;7e9e
	jp nc,0d895h		;7e9f
	ret m			;7ea2
	ld d,h			;7ea3
	defb 0ddh,005h,065h ;illegal sequence	;7ea4
	ld h,b			;7ea7
	ld (hl),b		;7ea8
	sbc a,b			;7ea9
	ret m			;7eaa
	ld (bc),a		;7eab
	sub 002h		;7eac
	ld (bc),a		;7eae
	ex de,hl		;7eaf
	ld (0d161h),a		;7eb0
	inc hl			;7eb3
	jp nc,0b892h		;7eb4
	pop de			;7eb7
	or e			;7eb8
	sub e			;7eb9
	add a,e			;7eba
	or e			;7ebb
	jp (hl)			;7ebc
	ld (de),a		;7ebd
	sbc a,a			;7ebe
	cp 001h			;7ebf
	push af			;7ec1
	ret m			;7ec2
	ld (bc),a		;7ec3
	jp (hl)			;7ec4
	add hl,bc		;7ec5
	jp pe,0eb0fh		;7ec6
	ld (0d651h),a		;7ec9
	ld (bc),a		;7ecc
	ld (bc),a		;7ecd
	jp p,0f11ah		;7ece
	ld d,(hl)		;7ed1
	jp nc,0f897h		;7ed2
	dec d			;7ed5
	ld h,b			;7ed6
	ld (hl),b		;7ed7
	sub l			;7ed8
	ret m			;7ed9
	ld (bc),a		;7eda
	ld (hl),e		;7edb
	ld h,e			;7edc
	ld b,e			;7edd
	ld h,e			;7ede
	ld l,0ech		;7edf
	jp pe,02002h		;7ee1
	ret m			;7ee4
	dec d			;7ee5
	jp pe,0eb0fh		;7ee6
	ld b,h			;7ee9
	ld b,b			;7eea
	out (0b2h),a		;7eeb
	jp nc,02212h		;7eed
	ld b,d			;7ef0
	ld h,c			;7ef1
	ld (hl),c		;7ef2
	ei			;7ef3
	inc b			;7ef4
	ret c			;7ef5
	defb 0fdh,006h,0beh ;illegal sequence	;7ef6
	cp 001h			;7ef9
	ret m			;7efb
	dec b			;7efc
	pop af			;7efd
	ld h,d			;7efe
	xor 001h		;7eff
	jp (hl)			;7f01
	add hl,bc		;7f02
	jp pe,0d101h		;7f03
	cp a			;7f06
	cp a			;7f07
	cp a			;7f08
	cp a			;7f09
	cp 001h			;7f0a
	ret m			;7f0c
	add hl,bc		;7f0d
	jp (hl)			;7f0e
	add hl,bc		;7f0f
	jp pe,0ed0ch		;7f10
	ex af,af'		;7f13
	ex de,hl		;7f14
	add a,d			;7f15
	ld d,b			;7f16
	jp p,0f10ah		;7f17
	ld h,e			;7f1a
	jp nc,0b595h		;7f1b
	pop de			;7f1e
	dec h			;7f1f
	ld h,l			;7f20
	sub e			;7f21
	sub e			;7f22
	ld h,l			;7f23
	ld h,l			;7f24
	dec hl			;7f25
	ld (06162h),hl		;7f26
	ld h,l			;7f29
	dec h			;7f2a
	jp nc,0b593h		;7f2b
	sub l			;7f2e
	ld b,e			;7f2f
	ld l,c			;7f30
	sub c			;7f31
	or c			;7f32
	pop de			;7f33
	ld l,c			;7f34
	ld (0d062h),hl		;7f35
	ld hl,0d115h		;7f38
	sub l			;7f3b
	ld h,e			;7f3c
	sub l			;7f3d
	ld b,l			;7f3e
	sub e			;7f3f
	cp 001h			;7f40
	ret m			;7f42
	inc d			;7f43
	jp (hl)			;7f44
	add hl,bc		;7f45
	push af			;7f46
l7f47h:
	jp pe,0ed0dh		;7f47
	add hl,bc		;7f4a
	ex de,hl		;7f4b
	add a,d			;7f4c
	ld (hl),b		;7f4d
	jp p,0f110h		;7f4e
	ld l,d			;7f51
	out (069h),a		;7f52
	defb 0edh ;next byte illegal after ed	;7f54
	ld b,061h		;7f55
	sub c			;7f57
	cp e			;7f58
	or c			;7f59
	or e			;7f5a
	jp nc,01117h		;7f5b
	ld hl,0d341h		;7f5e
	sbc a,a			;7f61
	call pe,003eah		;7f62
	sub c			;7f65
	jp pe,0eb0dh		;7f66
	add a,d			;7f69
	ld (hl),b		;7f6a
	ld a,c			;7f6b
	ld hl,l7b41h		;7f6c
	ld (hl),c		;7f6f
	ld (hl),c		;7f70
	ld l,e			;7f71
	ld b,c			;7f72
	ld hl,l7345h		;7f73
	out (061h),a		;7f76
	ld de,0d261h		;7f78
	ld de,002fbh		;7f7b
	cp 001h			;7f7e
	ret m			;7f80
	ld (bc),a		;7f81
	jp (hl)			;7f82
	add hl,bc		;7f83
	jp pe,0eb0fh		;7f84
	ld (0f261h),a		;7f87
	ld a,(de)		;7f8a
	pop af			;7f8b
	ld b,l			;7f8c
	sub 002h		;7f8d
	ld (bc),a		;7f8f
	jp nc,09393h		;7f90
	ld h,e			;7f93
	sub d			;7f94
	ld b,l			;7f95
	ret c			;7f96
	ret m			;7f97
	ld d,h			;7f98
	defb 0ddh,005h,065h ;illegal sequence	;7f99
	djnz l7fbeh		;7f9c
	ld c,b			;7f9e
	ret m			;7f9f
	ld (bc),a		;7fa0
	jp pe,0eb0fh		;7fa1
	ld (0d661h),a		;7fa4
	ld (bc),a		;7fa7
	ld (bc),a		;7fa8
	sub e			;7fa9
	ld b,d			;7faa
	ld l,b			;7fab
	pop de			;7fac
	ld h,e			;7fad
	ld b,e			;7fae
	jp nc,0d1b3h		;7faf
	ld b,e			;7fb2
	cpl			;7fb3
	pop af			;7fb4
	ld c,b			;7fb5
	rra			;7fb6
	ret c			;7fb7
	cp 001h			;7fb8
	push af			;7fba
	ret m			;7fbb
	ld (bc),a		;7fbc
	jp (hl)			;7fbd
l7fbeh:
	add hl,bc		;7fbe
	jp pe,0eb0fh		;7fbf
	ld (0d651h),a		;7fc2
	ld (bc),a		;7fc5
	ld (bc),a		;7fc6
	pop af			;7fc7
	ld b,(hl)		;7fc8
	jp p,0d214h		;7fc9
	ld h,a			;7fcc
	ret m			;7fcd
	dec d			;7fce
	jr nz,$+66		;7fcf
	ld h,l			;7fd1
	ret m			;7fd2
	ld (bc),a		;7fd3
	ld b,e			;7fd4
	inc hl			;7fd5
	inc bc			;7fd6
	inc bc			;7fd7
	out (0bfh),a		;7fd8
	ret m			;7fda
	dec d			;7fdb
	jp pe,0d60ch		;7fdc
	ld (bc),a		;7fdf
	and b			;7fe0
	pop de			;7fe1
	cpl			;7fe2
	ei			;7fe3
	inc b			;7fe4
	ret c			;7fe5
	defb 0fdh,00ah,0bfh ;illegal sequence	;7fe6
	rst 38h			;7fe9
	rst 38h			;7fea
	rst 38h			;7feb
	rst 38h			;7fec
	rst 38h			;7fed
	rst 38h			;7fee
	rst 38h			;7fef
	rst 38h			;7ff0
	rst 38h			;7ff1
	rst 38h			;7ff2
	rst 38h			;7ff3
	rst 38h			;7ff4
	rst 38h			;7ff5
	rst 38h			;7ff6
	rst 38h			;7ff7
	rst 38h			;7ff8
	rst 38h			;7ff9
	rst 38h			;7ffa
	rst 38h			;7ffb
	rst 38h			;7ffc
	rst 38h			;7ffd
	rst 38h			;7ffe
	rst 38h			;7fff
